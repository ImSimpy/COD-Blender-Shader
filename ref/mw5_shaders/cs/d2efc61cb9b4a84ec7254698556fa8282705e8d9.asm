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
; shader hash: 1b36472a630a047d8f203b6302355964
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
;   [368 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb0     1
;                                   sampler      NA          NA      S0             s4     1
;                                   texture     f32          3d      T0             t0     8
;                                       UAVunorm_f32          3d      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%"class.RWTexture3D<vector<float, 4> >" = type { <4 x float> }
%GfxUniversalClutGenerateConsts = type { i32, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, i32, i32, i32, float, i32, i32, i32, [3 x <3 x float>], i32, %struct.GfxUniversalClut_GradingClutSet, [3 x %struct.GfxUniversalAnalyticalGradingKey], float, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, <3 x float>, i32 }
%struct.GfxUniversalClut_GradingClutSet = type { i32, float, float, i32, [2 x <4 x float>], [2 x <4 x i32>] }
%struct.GfxUniversalAnalyticalGradingKey = type { float, float, i32, i32, <3 x float>, i32 }
%struct.SamplerState = type { i32 }

@.0.hca = internal unnamed_addr constant [6 x float] [float -4.000000e+00, float -4.000000e+00, float 0xC009424EA0000000, float 0xBFDF0E5600000000, float 0x3FFD904FE0000000, float 0x3FFD904FE0000000]
@.1.hca = internal unnamed_addr constant [6 x float] [float 0xBFE6FE58E0000000, float 0x4000A5F360000000, float 0x400D585180000000, float 4.000000e+00, float 4.000000e+00, float 4.000000e+00]

define void @cs_universal_clut_generate() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %5 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %6 = call i32 @dx.op.threadId.i32(i32 93, i32 2)  ; ThreadId(component)
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %13 = extractvalue %dx.types.CBufRet.i32 %12, 0
  %14 = icmp uge i32 %4, %13
  %15 = extractvalue %dx.types.CBufRet.i32 %12, 1
  %16 = icmp uge i32 %5, %15
  %17 = or i1 %14, %16
  %18 = extractvalue %dx.types.CBufRet.i32 %12, 2
  %19 = icmp uge i32 %6, %18
  %20 = or i1 %17, %19
  br i1 %20, label %1886, label %21, !dx.controlflow.hints !18

; <label>:21                                      ; preds = %0
  %22 = uitofp i32 %4 to float
  %23 = uitofp i32 %5 to float
  %24 = uitofp i32 %6 to float
  %25 = add i32 %13, -1
  %26 = uitofp i32 %25 to float
  %27 = add i32 %15, -1
  %28 = uitofp i32 %27 to float
  %29 = add i32 %18, -1
  %30 = uitofp i32 %29 to float
  %31 = fdiv fast float %22, %26
  %32 = fdiv fast float %23, %28
  %33 = fdiv fast float %24, %30
  %34 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %35 = extractvalue %dx.types.CBufRet.i32 %34, 0
  %36 = icmp eq i32 %35, 1
  %37 = extractvalue %dx.types.CBufRet.i32 %12, 3
  br i1 %36, label %85, label %38

; <label>:38                                      ; preds = %21
  %39 = fmul fast float %31, 2.000000e+01
  %40 = fmul fast float %32, 2.000000e+01
  %41 = fmul fast float %33, 2.000000e+01
  %42 = fadd fast float %39, -1.000000e+01
  %43 = fadd fast float %40, -1.000000e+01
  %44 = fadd fast float %41, -1.000000e+01
  %45 = call float @dx.op.unary.f32(i32 21, float %42)  ; Exp(value)
  %46 = call float @dx.op.unary.f32(i32 21, float %43)  ; Exp(value)
  %47 = call float @dx.op.unary.f32(i32 21, float %44)  ; Exp(value)
  %48 = fadd fast float %45, -9.765625e-04
  %49 = fadd fast float %46, -9.765625e-04
  %50 = fadd fast float %47, -9.765625e-04
  %51 = icmp eq i32 %37, 4
  br i1 %51, label %52, label %75, !dx.controlflow.hints !19

; <label>:52                                      ; preds = %38
  %53 = fmul fast float %48, 0x3FEA519BC0000000
  %54 = call float @dx.op.tertiary.f32(i32 46, float 0x3FC6B990A0000000, float %49, float %53)  ; FMad(a,b,c)
  %55 = fmul fast float %48, 0x3FA0FED480000000
  %56 = call float @dx.op.tertiary.f32(i32 46, float 0x3FEEF012C0000000, float %49, float %55)  ; FMad(a,b,c)
  %57 = fmul fast float %48, 0x3F917E1C00000000
  %58 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB288A2E0000000, float %49, float %57)  ; FMad(a,b,c)
  %59 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED22FAA0000000, float %50, float %58)  ; FMad(a,b,c)
  %60 = call float @dx.op.binary.f32(i32 35, float %48, float %49)  ; FMax(a,b)
  %61 = call float @dx.op.binary.f32(i32 35, float %60, float %50)  ; FMax(a,b)
  %62 = fadd fast float %61, -1.000000e+00
  %63 = fmul fast float %62, 2.500000e-01
  %64 = call float @dx.op.unary.f32(i32 7, float %63)  ; Saturate(value)
  %65 = fsub fast float 1.000000e+00, %64
  %66 = fmul fast float %65, %54
  %67 = fmul fast float %65, %56
  %68 = fmul fast float %65, %59
  %69 = fmul fast float %64, %48
  %70 = fmul fast float %64, %49
  %71 = fmul fast float %64, %50
  %72 = fadd fast float %66, %69
  %73 = fadd fast float %67, %70
  %74 = fadd fast float %68, %71
  br label %125

; <label>:75                                      ; preds = %38
  %76 = fmul fast float %48, 0x3FE413A920000000
  %77 = call float @dx.op.tertiary.f32(i32 46, float 0x3FD5134040000000, float %49, float %76)  ; FMad(a,b,c)
  %78 = call float @dx.op.tertiary.f32(i32 46, float 0x3FA62B6AE0000000, float %50, float %77)  ; FMad(a,b,c)
  %79 = fmul fast float %48, 0x3FB1B089A0000000
  %80 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED6C8B40000000, float %49, float %79)  ; FMad(a,b,c)
  %81 = call float @dx.op.tertiary.f32(i32 46, float 0x3F8758E220000000, float %50, float %80)  ; FMad(a,b,c)
  %82 = fmul fast float %48, 0x3F90CB2960000000
  %83 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB6872B00000000, float %49, float %82)  ; FMad(a,b,c)
  %84 = call float @dx.op.tertiary.f32(i32 46, float 0x3FECA8C160000000, float %50, float %83)  ; FMad(a,b,c)
  br label %125

; <label>:85                                      ; preds = %21
  %86 = call float @dx.op.unary.f32(i32 7, float %31)  ; Saturate(value)
  %87 = call float @dx.op.unary.f32(i32 7, float %32)  ; Saturate(value)
  %88 = call float @dx.op.unary.f32(i32 7, float %33)  ; Saturate(value)
  %89 = call float @dx.op.unary.f32(i32 23, float %86)  ; Log(value)
  %90 = call float @dx.op.unary.f32(i32 23, float %87)  ; Log(value)
  %91 = call float @dx.op.unary.f32(i32 23, float %88)  ; Log(value)
  %92 = fmul fast float %89, 0x3F89F9B580000000
  %93 = fmul fast float %90, 0x3F89F9B580000000
  %94 = fmul fast float %91, 0x3F89F9B580000000
  %95 = call float @dx.op.unary.f32(i32 21, float %92)  ; Exp(value)
  %96 = call float @dx.op.unary.f32(i32 21, float %93)  ; Exp(value)
  %97 = call float @dx.op.unary.f32(i32 21, float %94)  ; Exp(value)
  %98 = fmul fast float %95, 1.868750e+01
  %99 = fmul fast float %96, 1.868750e+01
  %100 = fmul fast float %97, 1.868750e+01
  %101 = fsub fast float 0x4032DA0000000000, %98
  %102 = fsub fast float 0x4032DA0000000000, %99
  %103 = fsub fast float 0x4032DA0000000000, %100
  %104 = fadd fast float %95, -8.359375e-01
  %105 = fadd fast float %96, -8.359375e-01
  %106 = fadd fast float %97, -8.359375e-01
  %107 = call float @dx.op.binary.f32(i32 35, float %104, float 0.000000e+00)  ; FMax(a,b)
  %108 = call float @dx.op.binary.f32(i32 35, float %105, float 0.000000e+00)  ; FMax(a,b)
  %109 = call float @dx.op.binary.f32(i32 35, float %106, float 0.000000e+00)  ; FMax(a,b)
  %110 = fdiv fast float %107, %101
  %111 = fdiv fast float %108, %102
  %112 = fdiv fast float %109, %103
  %113 = call float @dx.op.unary.f32(i32 23, float %110)  ; Log(value)
  %114 = call float @dx.op.unary.f32(i32 23, float %111)  ; Log(value)
  %115 = call float @dx.op.unary.f32(i32 23, float %112)  ; Log(value)
  %116 = fmul fast float %113, 0x40191C0D60000000
  %117 = fmul fast float %114, 0x40191C0D60000000
  %118 = fmul fast float %115, 0x40191C0D60000000
  %119 = call float @dx.op.unary.f32(i32 21, float %116)  ; Exp(value)
  %120 = call float @dx.op.unary.f32(i32 21, float %117)  ; Exp(value)
  %121 = call float @dx.op.unary.f32(i32 21, float %118)  ; Exp(value)
  %122 = fmul fast float %119, 1.024000e+03
  %123 = fmul fast float %120, 1.024000e+03
  %124 = fmul fast float %121, 1.024000e+03
  br label %125

; <label>:125                                     ; preds = %85, %75, %52
  %126 = phi i32 [ 4, %52 ], [ %37, %75 ], [ %37, %85 ]
  %127 = phi float [ %72, %52 ], [ %78, %75 ], [ %122, %85 ]
  %128 = phi float [ %73, %52 ], [ %81, %75 ], [ %123, %85 ]
  %129 = phi float [ %74, %52 ], [ %84, %75 ], [ %124, %85 ]
  %130 = extractvalue %dx.types.CBufRet.i32 %34, 1
  %131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %132 = extractvalue %dx.types.CBufRet.f32 %131, 1
  %133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %134 = extractvalue %dx.types.CBufRet.f32 %133, 0
  %135 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %136 = extractvalue %dx.types.CBufRet.i32 %135, 0
  %137 = extractvalue %dx.types.CBufRet.f32 %133, 1
  %138 = extractvalue %dx.types.CBufRet.i32 %135, 1
  %139 = extractvalue %dx.types.CBufRet.f32 %133, 2
  %140 = extractvalue %dx.types.CBufRet.i32 %135, 2
  %141 = extractvalue %dx.types.CBufRet.f32 %133, 3
  %142 = extractvalue %dx.types.CBufRet.i32 %135, 3
  %143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %144 = extractvalue %dx.types.CBufRet.f32 %143, 0
  %145 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %146 = extractvalue %dx.types.CBufRet.i32 %145, 0
  %147 = extractvalue %dx.types.CBufRet.f32 %143, 1
  %148 = extractvalue %dx.types.CBufRet.i32 %145, 1
  %149 = extractvalue %dx.types.CBufRet.f32 %143, 2
  %150 = extractvalue %dx.types.CBufRet.i32 %145, 2
  %151 = extractvalue %dx.types.CBufRet.f32 %143, 3
  %152 = extractvalue %dx.types.CBufRet.i32 %145, 3
  %153 = getelementptr [3 x float], [3 x float]* %10, i32 0, i32 0
  %154 = getelementptr [3 x float], [3 x float]* %11, i32 0, i32 0
  %155 = getelementptr [3 x float], [3 x float]* %7, i32 0, i32 0
  %156 = getelementptr [3 x float], [3 x float]* %8, i32 0, i32 0
  %157 = getelementptr [3 x float], [3 x float]* %9, i32 0, i32 0
  %158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %159 = extractvalue %dx.types.CBufRet.f32 %158, 0
  store float %159, float* %153, align 4
  %160 = extractvalue %dx.types.CBufRet.f32 %158, 1
  store float %160, float* %154, align 4
  %161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %162 = extractvalue %dx.types.CBufRet.f32 %161, 0
  %163 = extractvalue %dx.types.CBufRet.f32 %161, 1
  %164 = extractvalue %dx.types.CBufRet.f32 %161, 2
  store float %162, float* %155, align 4
  store float %163, float* %156, align 4
  store float %164, float* %157, align 4
  %165 = getelementptr [3 x float], [3 x float]* %10, i32 0, i32 1
  %166 = getelementptr [3 x float], [3 x float]* %11, i32 0, i32 1
  %167 = getelementptr [3 x float], [3 x float]* %7, i32 0, i32 1
  %168 = getelementptr [3 x float], [3 x float]* %8, i32 0, i32 1
  %169 = getelementptr [3 x float], [3 x float]* %9, i32 0, i32 1
  %170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %171 = extractvalue %dx.types.CBufRet.f32 %170, 0
  store float %171, float* %165, align 4
  %172 = extractvalue %dx.types.CBufRet.f32 %170, 1
  store float %172, float* %166, align 4
  %173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %174 = extractvalue %dx.types.CBufRet.f32 %173, 0
  %175 = extractvalue %dx.types.CBufRet.f32 %173, 1
  %176 = extractvalue %dx.types.CBufRet.f32 %173, 2
  store float %174, float* %167, align 4
  store float %175, float* %168, align 4
  store float %176, float* %169, align 4
  %177 = getelementptr [3 x float], [3 x float]* %10, i32 0, i32 2
  %178 = getelementptr [3 x float], [3 x float]* %11, i32 0, i32 2
  %179 = getelementptr [3 x float], [3 x float]* %7, i32 0, i32 2
  %180 = getelementptr [3 x float], [3 x float]* %8, i32 0, i32 2
  %181 = getelementptr [3 x float], [3 x float]* %9, i32 0, i32 2
  %182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %183 = extractvalue %dx.types.CBufRet.f32 %182, 0
  store float %183, float* %177, align 4
  %184 = extractvalue %dx.types.CBufRet.f32 %182, 1
  store float %184, float* %178, align 4
  %185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %186 = extractvalue %dx.types.CBufRet.f32 %185, 0
  %187 = extractvalue %dx.types.CBufRet.f32 %185, 1
  %188 = extractvalue %dx.types.CBufRet.f32 %185, 2
  store float %186, float* %179, align 4
  store float %187, float* %180, align 4
  store float %188, float* %181, align 4
  %189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %190 = extractvalue %dx.types.CBufRet.f32 %189, 0
  %191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %192 = extractvalue %dx.types.CBufRet.f32 %191, 0
  %193 = extractvalue %dx.types.CBufRet.f32 %191, 1
  %194 = extractvalue %dx.types.CBufRet.f32 %191, 2
  %195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %196 = extractvalue %dx.types.CBufRet.f32 %195, 0
  %197 = extractvalue %dx.types.CBufRet.f32 %195, 1
  %198 = extractvalue %dx.types.CBufRet.f32 %195, 2
  %199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 22)  ; CBufferLoadLegacy(handle,regIndex)
  %200 = extractvalue %dx.types.CBufRet.f32 %199, 0
  %201 = extractvalue %dx.types.CBufRet.f32 %199, 1
  %202 = extractvalue %dx.types.CBufRet.f32 %199, 2
  %203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %204 = extractvalue %dx.types.CBufRet.f32 %203, 2
  %205 = extractvalue %dx.types.CBufRet.f32 %203, 3
  %206 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %207 = extractvalue %dx.types.CBufRet.i32 %206, 3
  %208 = icmp eq i32 %207, 0
  %209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %210 = extractvalue %dx.types.CBufRet.f32 %209, 0
  %211 = extractvalue %dx.types.CBufRet.f32 %209, 1
  %212 = extractvalue %dx.types.CBufRet.f32 %209, 2
  %213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %214 = extractvalue %dx.types.CBufRet.f32 %213, 0
  %215 = extractvalue %dx.types.CBufRet.f32 %213, 1
  %216 = extractvalue %dx.types.CBufRet.f32 %213, 2
  %217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %218 = extractvalue %dx.types.CBufRet.f32 %217, 0
  %219 = extractvalue %dx.types.CBufRet.f32 %217, 1
  %220 = extractvalue %dx.types.CBufRet.f32 %217, 2
  %221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %222 = extractvalue %dx.types.CBufRet.f32 %221, 0
  %223 = extractvalue %dx.types.CBufRet.f32 %221, 1
  %224 = extractvalue %dx.types.CBufRet.f32 %221, 2
  %225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %226 = extractvalue %dx.types.CBufRet.f32 %225, 0
  %227 = extractvalue %dx.types.CBufRet.f32 %221, 3
  %228 = and i32 %130, 3
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %842, label %230, !dx.controlflow.hints !20

; <label>:230                                     ; preds = %125
  %231 = and i32 %130, 1
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %534, label %233, !dx.controlflow.hints !21

; <label>:233                                     ; preds = %230
  %234 = fmul fast float %127, 9.765625e-04
  %235 = fmul fast float %128, 9.765625e-04
  %236 = fmul fast float %129, 9.765625e-04
  %237 = call float @dx.op.unary.f32(i32 23, float %234)  ; Log(value)
  %238 = call float @dx.op.unary.f32(i32 23, float %235)  ; Log(value)
  %239 = call float @dx.op.unary.f32(i32 23, float %236)  ; Log(value)
  %240 = fmul fast float %237, 0x3FC4640000000000
  %241 = fmul fast float %238, 0x3FC4640000000000
  %242 = fmul fast float %239, 0x3FC4640000000000
  %243 = call float @dx.op.unary.f32(i32 21, float %240)  ; Exp(value)
  %244 = call float @dx.op.unary.f32(i32 21, float %241)  ; Exp(value)
  %245 = call float @dx.op.unary.f32(i32 21, float %242)  ; Exp(value)
  %246 = fmul fast float %243, 0x4032DA0000000000
  %247 = fmul fast float %244, 0x4032DA0000000000
  %248 = fmul fast float %245, 0x4032DA0000000000
  %249 = fadd fast float %246, 8.359375e-01
  %250 = fadd fast float %247, 8.359375e-01
  %251 = fadd fast float %248, 8.359375e-01
  %252 = fmul fast float %243, 1.868750e+01
  %253 = fmul fast float %244, 1.868750e+01
  %254 = fmul fast float %245, 1.868750e+01
  %255 = fadd fast float %252, 1.000000e+00
  %256 = fadd fast float %253, 1.000000e+00
  %257 = fadd fast float %254, 1.000000e+00
  %258 = fdiv fast float %249, %255
  %259 = fdiv fast float %250, %256
  %260 = fdiv fast float %251, %257
  %261 = call float @dx.op.unary.f32(i32 23, float %258)  ; Log(value)
  %262 = call float @dx.op.unary.f32(i32 23, float %259)  ; Log(value)
  %263 = call float @dx.op.unary.f32(i32 23, float %260)  ; Log(value)
  %264 = fmul fast float %261, 7.884375e+01
  %265 = fmul fast float %262, 7.884375e+01
  %266 = fmul fast float %263, 7.884375e+01
  %267 = call float @dx.op.unary.f32(i32 21, float %264)  ; Exp(value)
  %268 = call float @dx.op.unary.f32(i32 21, float %265)  ; Exp(value)
  %269 = call float @dx.op.unary.f32(i32 21, float %266)  ; Exp(value)
  %270 = fmul fast float %267, 9.687500e-01
  %271 = fmul fast float %268, 9.687500e-01
  %272 = fmul fast float %269, 9.687500e-01
  %273 = fadd fast float %270, 1.562500e-02
  %274 = fadd fast float %271, 1.562500e-02
  %275 = fadd fast float %272, 1.562500e-02
  %276 = fmul fast float %127, 0x3FFA916880000000
  %277 = call float @dx.op.tertiary.f32(i32 46, float 0xBFE2CE7040000000, float %128, float %276)  ; FMad(a,b,c)
  %278 = call float @dx.op.tertiary.f32(i32 46, float 0xBFB2A30560000000, float %129, float %277)  ; FMad(a,b,c)
  %279 = fmul fast float %127, 0xBFBFE5C920000000
  %280 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF220C4A0000000, float %128, float %279)  ; FMad(a,b,c)
  %281 = call float @dx.op.tertiary.f32(i32 46, float 0xBF813404E0000000, float %129, float %280)  ; FMad(a,b,c)
  %282 = fmul fast float %127, 0xBF92A30560000000
  %283 = call float @dx.op.tertiary.f32(i32 46, float 0xBFB9C0EBE0000000, float %128, float %282)  ; FMad(a,b,c)
  %284 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF1E63200000000, float %129, float %283)  ; FMad(a,b,c)
  %285 = fmul fast float %278, 9.765625e-04
  %286 = fmul fast float %281, 9.765625e-04
  %287 = fmul fast float %284, 9.765625e-04
  %288 = call float @dx.op.unary.f32(i32 23, float %285)  ; Log(value)
  %289 = call float @dx.op.unary.f32(i32 23, float %286)  ; Log(value)
  %290 = call float @dx.op.unary.f32(i32 23, float %287)  ; Log(value)
  %291 = fmul fast float %288, 0x3FC4640000000000
  %292 = fmul fast float %289, 0x3FC4640000000000
  %293 = fmul fast float %290, 0x3FC4640000000000
  %294 = call float @dx.op.unary.f32(i32 21, float %291)  ; Exp(value)
  %295 = call float @dx.op.unary.f32(i32 21, float %292)  ; Exp(value)
  %296 = call float @dx.op.unary.f32(i32 21, float %293)  ; Exp(value)
  %297 = fmul fast float %294, 0x4032DA0000000000
  %298 = fmul fast float %295, 0x4032DA0000000000
  %299 = fmul fast float %296, 0x4032DA0000000000
  %300 = fadd fast float %297, 8.359375e-01
  %301 = fadd fast float %298, 8.359375e-01
  %302 = fadd fast float %299, 8.359375e-01
  %303 = fmul fast float %294, 1.868750e+01
  %304 = fmul fast float %295, 1.868750e+01
  %305 = fmul fast float %296, 1.868750e+01
  %306 = fadd fast float %303, 1.000000e+00
  %307 = fadd fast float %304, 1.000000e+00
  %308 = fadd fast float %305, 1.000000e+00
  %309 = fdiv fast float %300, %306
  %310 = fdiv fast float %301, %307
  %311 = fdiv fast float %302, %308
  %312 = call float @dx.op.unary.f32(i32 23, float %309)  ; Log(value)
  %313 = call float @dx.op.unary.f32(i32 23, float %310)  ; Log(value)
  %314 = call float @dx.op.unary.f32(i32 23, float %311)  ; Log(value)
  %315 = fmul fast float %312, 7.884375e+01
  %316 = fmul fast float %313, 7.884375e+01
  %317 = fmul fast float %314, 7.884375e+01
  %318 = call float @dx.op.unary.f32(i32 21, float %315)  ; Exp(value)
  %319 = call float @dx.op.unary.f32(i32 21, float %316)  ; Exp(value)
  %320 = call float @dx.op.unary.f32(i32 21, float %317)  ; Exp(value)
  %321 = fmul fast float %318, 9.687500e-01
  %322 = fmul fast float %319, 9.687500e-01
  %323 = fmul fast float %320, 9.687500e-01
  %324 = fadd fast float %321, 1.562500e-02
  %325 = fadd fast float %322, 1.562500e-02
  %326 = fadd fast float %323, 1.562500e-02
  %327 = fmul fast float %267, %132
  %328 = fmul fast float %268, %132
  %329 = fmul fast float %269, %132
  %330 = fcmp fast ogt float %134, 0.000000e+00
  br i1 %330, label %331, label %347, !dx.controlflow.hints !22

; <label>:331                                     ; preds = %233
  %332 = icmp eq i32 %136, 1
  %333 = select i1 %332, float %273, float %324
  %334 = select i1 %332, float %274, float %325
  %335 = select i1 %332, float %275, float %326
  %336 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %337 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %336, %dx.types.Handle %2, float %333, float %334, float %335, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %338 = extractvalue %dx.types.ResRet.f32 %337, 0
  %339 = extractvalue %dx.types.ResRet.f32 %337, 1
  %340 = extractvalue %dx.types.ResRet.f32 %337, 2
  %341 = fmul fast float %338, %134
  %342 = fmul fast float %339, %134
  %343 = fmul fast float %340, %134
  %344 = fadd fast float %341, %327
  %345 = fadd fast float %342, %328
  %346 = fadd fast float %343, %329
  br label %347

; <label>:347                                     ; preds = %331, %233
  %348 = phi float [ %344, %331 ], [ %327, %233 ]
  %349 = phi float [ %345, %331 ], [ %328, %233 ]
  %350 = phi float [ %346, %331 ], [ %329, %233 ]
  %351 = fcmp fast ogt float %137, 0.000000e+00
  br i1 %351, label %352, label %368, !dx.controlflow.hints !22

; <label>:352                                     ; preds = %347
  %353 = icmp eq i32 %138, 1
  %354 = select i1 %353, float %273, float %324
  %355 = select i1 %353, float %274, float %325
  %356 = select i1 %353, float %275, float %326
  %357 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %358 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %357, %dx.types.Handle %2, float %354, float %355, float %356, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %359 = extractvalue %dx.types.ResRet.f32 %358, 0
  %360 = extractvalue %dx.types.ResRet.f32 %358, 1
  %361 = extractvalue %dx.types.ResRet.f32 %358, 2
  %362 = fmul fast float %359, %137
  %363 = fmul fast float %360, %137
  %364 = fmul fast float %361, %137
  %365 = fadd fast float %362, %348
  %366 = fadd fast float %363, %349
  %367 = fadd fast float %364, %350
  br label %368

; <label>:368                                     ; preds = %352, %347
  %369 = phi float [ %365, %352 ], [ %348, %347 ]
  %370 = phi float [ %366, %352 ], [ %349, %347 ]
  %371 = phi float [ %367, %352 ], [ %350, %347 ]
  %372 = fcmp fast ogt float %139, 0.000000e+00
  br i1 %372, label %373, label %389, !dx.controlflow.hints !22

; <label>:373                                     ; preds = %368
  %374 = icmp eq i32 %140, 1
  %375 = select i1 %374, float %273, float %324
  %376 = select i1 %374, float %274, float %325
  %377 = select i1 %374, float %275, float %326
  %378 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %379 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %378, %dx.types.Handle %2, float %375, float %376, float %377, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %380 = extractvalue %dx.types.ResRet.f32 %379, 0
  %381 = extractvalue %dx.types.ResRet.f32 %379, 1
  %382 = extractvalue %dx.types.ResRet.f32 %379, 2
  %383 = fmul fast float %380, %139
  %384 = fmul fast float %381, %139
  %385 = fmul fast float %382, %139
  %386 = fadd fast float %383, %369
  %387 = fadd fast float %384, %370
  %388 = fadd fast float %385, %371
  br label %389

; <label>:389                                     ; preds = %373, %368
  %390 = phi float [ %386, %373 ], [ %369, %368 ]
  %391 = phi float [ %387, %373 ], [ %370, %368 ]
  %392 = phi float [ %388, %373 ], [ %371, %368 ]
  %393 = fcmp fast ogt float %141, 0.000000e+00
  br i1 %393, label %394, label %410, !dx.controlflow.hints !22

; <label>:394                                     ; preds = %389
  %395 = icmp eq i32 %142, 1
  %396 = select i1 %395, float %273, float %324
  %397 = select i1 %395, float %274, float %325
  %398 = select i1 %395, float %275, float %326
  %399 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %400 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %399, %dx.types.Handle %2, float %396, float %397, float %398, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %401 = extractvalue %dx.types.ResRet.f32 %400, 0
  %402 = extractvalue %dx.types.ResRet.f32 %400, 1
  %403 = extractvalue %dx.types.ResRet.f32 %400, 2
  %404 = fmul fast float %401, %141
  %405 = fmul fast float %402, %141
  %406 = fmul fast float %403, %141
  %407 = fadd fast float %404, %390
  %408 = fadd fast float %405, %391
  %409 = fadd fast float %406, %392
  br label %410

; <label>:410                                     ; preds = %394, %389
  %411 = phi float [ %407, %394 ], [ %390, %389 ]
  %412 = phi float [ %408, %394 ], [ %391, %389 ]
  %413 = phi float [ %409, %394 ], [ %392, %389 ]
  %414 = fcmp fast ogt float %144, 0.000000e+00
  br i1 %414, label %415, label %431, !dx.controlflow.hints !22

; <label>:415                                     ; preds = %410
  %416 = icmp eq i32 %146, 1
  %417 = select i1 %416, float %273, float %324
  %418 = select i1 %416, float %274, float %325
  %419 = select i1 %416, float %275, float %326
  %420 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %421 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %420, %dx.types.Handle %2, float %417, float %418, float %419, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %422 = extractvalue %dx.types.ResRet.f32 %421, 0
  %423 = extractvalue %dx.types.ResRet.f32 %421, 1
  %424 = extractvalue %dx.types.ResRet.f32 %421, 2
  %425 = fmul fast float %422, %144
  %426 = fmul fast float %423, %144
  %427 = fmul fast float %424, %144
  %428 = fadd fast float %425, %411
  %429 = fadd fast float %426, %412
  %430 = fadd fast float %427, %413
  br label %431

; <label>:431                                     ; preds = %415, %410
  %432 = phi float [ %428, %415 ], [ %411, %410 ]
  %433 = phi float [ %429, %415 ], [ %412, %410 ]
  %434 = phi float [ %430, %415 ], [ %413, %410 ]
  %435 = fcmp fast ogt float %147, 0.000000e+00
  br i1 %435, label %436, label %452, !dx.controlflow.hints !22

; <label>:436                                     ; preds = %431
  %437 = icmp eq i32 %148, 1
  %438 = select i1 %437, float %273, float %324
  %439 = select i1 %437, float %274, float %325
  %440 = select i1 %437, float %275, float %326
  %441 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %442 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %441, %dx.types.Handle %2, float %438, float %439, float %440, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %443 = extractvalue %dx.types.ResRet.f32 %442, 0
  %444 = extractvalue %dx.types.ResRet.f32 %442, 1
  %445 = extractvalue %dx.types.ResRet.f32 %442, 2
  %446 = fmul fast float %443, %147
  %447 = fmul fast float %444, %147
  %448 = fmul fast float %445, %147
  %449 = fadd fast float %446, %432
  %450 = fadd fast float %447, %433
  %451 = fadd fast float %448, %434
  br label %452

; <label>:452                                     ; preds = %436, %431
  %453 = phi float [ %449, %436 ], [ %432, %431 ]
  %454 = phi float [ %450, %436 ], [ %433, %431 ]
  %455 = phi float [ %451, %436 ], [ %434, %431 ]
  %456 = fcmp fast ogt float %149, 0.000000e+00
  br i1 %456, label %457, label %473, !dx.controlflow.hints !22

; <label>:457                                     ; preds = %452
  %458 = icmp eq i32 %150, 1
  %459 = select i1 %458, float %273, float %324
  %460 = select i1 %458, float %274, float %325
  %461 = select i1 %458, float %275, float %326
  %462 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %463 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %462, %dx.types.Handle %2, float %459, float %460, float %461, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %464 = extractvalue %dx.types.ResRet.f32 %463, 0
  %465 = extractvalue %dx.types.ResRet.f32 %463, 1
  %466 = extractvalue %dx.types.ResRet.f32 %463, 2
  %467 = fmul fast float %464, %149
  %468 = fmul fast float %465, %149
  %469 = fmul fast float %466, %149
  %470 = fadd fast float %467, %453
  %471 = fadd fast float %468, %454
  %472 = fadd fast float %469, %455
  br label %473

; <label>:473                                     ; preds = %457, %452
  %474 = phi float [ %470, %457 ], [ %453, %452 ]
  %475 = phi float [ %471, %457 ], [ %454, %452 ]
  %476 = phi float [ %472, %457 ], [ %455, %452 ]
  %477 = fcmp fast ogt float %151, 0.000000e+00
  br i1 %477, label %478, label %494, !dx.controlflow.hints !22

; <label>:478                                     ; preds = %473
  %479 = icmp eq i32 %152, 1
  %480 = select i1 %479, float %273, float %324
  %481 = select i1 %479, float %274, float %325
  %482 = select i1 %479, float %275, float %326
  %483 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %484 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %483, %dx.types.Handle %2, float %480, float %481, float %482, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %485 = extractvalue %dx.types.ResRet.f32 %484, 0
  %486 = extractvalue %dx.types.ResRet.f32 %484, 1
  %487 = extractvalue %dx.types.ResRet.f32 %484, 2
  %488 = fmul fast float %485, %151
  %489 = fmul fast float %486, %151
  %490 = fmul fast float %487, %151
  %491 = fadd fast float %488, %474
  %492 = fadd fast float %489, %475
  %493 = fadd fast float %490, %476
  br label %494

; <label>:494                                     ; preds = %478, %473
  %495 = phi float [ %491, %478 ], [ %474, %473 ]
  %496 = phi float [ %492, %478 ], [ %475, %473 ]
  %497 = phi float [ %493, %478 ], [ %476, %473 ]
  %498 = call float @dx.op.unary.f32(i32 23, float %495)  ; Log(value)
  %499 = call float @dx.op.unary.f32(i32 23, float %496)  ; Log(value)
  %500 = call float @dx.op.unary.f32(i32 23, float %497)  ; Log(value)
  %501 = fmul fast float %498, 0x3F89F9B580000000
  %502 = fmul fast float %499, 0x3F89F9B580000000
  %503 = fmul fast float %500, 0x3F89F9B580000000
  %504 = call float @dx.op.unary.f32(i32 21, float %501)  ; Exp(value)
  %505 = call float @dx.op.unary.f32(i32 21, float %502)  ; Exp(value)
  %506 = call float @dx.op.unary.f32(i32 21, float %503)  ; Exp(value)
  %507 = fmul fast float %504, 1.868750e+01
  %508 = fmul fast float %505, 1.868750e+01
  %509 = fmul fast float %506, 1.868750e+01
  %510 = fsub fast float 0x4032DA0000000000, %507
  %511 = fsub fast float 0x4032DA0000000000, %508
  %512 = fsub fast float 0x4032DA0000000000, %509
  %513 = fadd fast float %504, -8.359375e-01
  %514 = fadd fast float %505, -8.359375e-01
  %515 = fadd fast float %506, -8.359375e-01
  %516 = call float @dx.op.binary.f32(i32 35, float %513, float 0.000000e+00)  ; FMax(a,b)
  %517 = call float @dx.op.binary.f32(i32 35, float %514, float 0.000000e+00)  ; FMax(a,b)
  %518 = call float @dx.op.binary.f32(i32 35, float %515, float 0.000000e+00)  ; FMax(a,b)
  %519 = fdiv fast float %516, %510
  %520 = fdiv fast float %517, %511
  %521 = fdiv fast float %518, %512
  %522 = call float @dx.op.unary.f32(i32 23, float %519)  ; Log(value)
  %523 = call float @dx.op.unary.f32(i32 23, float %520)  ; Log(value)
  %524 = call float @dx.op.unary.f32(i32 23, float %521)  ; Log(value)
  %525 = fmul fast float %522, 0x40191C0D60000000
  %526 = fmul fast float %523, 0x40191C0D60000000
  %527 = fmul fast float %524, 0x40191C0D60000000
  %528 = call float @dx.op.unary.f32(i32 21, float %525)  ; Exp(value)
  %529 = call float @dx.op.unary.f32(i32 21, float %526)  ; Exp(value)
  %530 = call float @dx.op.unary.f32(i32 21, float %527)  ; Exp(value)
  %531 = fmul fast float %528, 1.024000e+03
  %532 = fmul fast float %529, 1.024000e+03
  %533 = fmul fast float %530, 1.024000e+03
  br label %534

; <label>:534                                     ; preds = %494, %230
  %535 = phi float [ %531, %494 ], [ %127, %230 ]
  %536 = phi float [ %532, %494 ], [ %128, %230 ]
  %537 = phi float [ %533, %494 ], [ %129, %230 ]
  %538 = and i32 %130, 2
  %539 = icmp eq i32 %538, 0
  br i1 %539, label %842, label %540, !dx.controlflow.hints !23

; <label>:540                                     ; preds = %534
  %541 = call float @dx.op.dot3.f32(i32 55, float %535, float %536, float %537, float 0x3FD0D013A0000000, float 0x3FE5B22D00000000, float 0x3FAE5C91E0000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %542 = fmul fast float %541, 9.765625e-04
  %543 = call float @dx.op.unary.f32(i32 23, float %542)  ; Log(value)
  %544 = fmul fast float %543, 0x3FC4640000000000
  %545 = call float @dx.op.unary.f32(i32 21, float %544)  ; Exp(value)
  %546 = fmul fast float %545, 0x4032DA0000000000
  %547 = fadd fast float %546, 8.359375e-01
  %548 = fmul fast float %545, 1.868750e+01
  %549 = fadd fast float %548, 1.000000e+00
  %550 = fdiv fast float %547, %549
  %551 = call float @dx.op.unary.f32(i32 23, float %550)  ; Log(value)
  %552 = fmul fast float %551, 7.884375e+01
  %553 = call float @dx.op.unary.f32(i32 21, float %552)  ; Exp(value)
  %554 = call float @dx.op.unary.f32(i32 7, float %553)  ; Saturate(value)
  %555 = fcmp fast ogt float %554, %171
  %556 = zext i1 %555 to i32
  %557 = getelementptr inbounds [3 x float], [3 x float]* %10, i32 0, i32 %556
  %558 = load float, float* %557, align 4, !tbaa !24
  %559 = select i1 %555, i32 2, i32 1
  %560 = getelementptr inbounds [3 x float], [3 x float]* %10, i32 0, i32 %559
  %561 = load float, float* %560, align 4, !tbaa !24
  %562 = fsub fast float %554, %558
  %563 = fsub fast float %561, %558
  %564 = fdiv fast float %562, %563
  %565 = call float @dx.op.unary.f32(i32 7, float %564)  ; Saturate(value)
  %566 = fmul fast float %565, 2.000000e+00
  %567 = fsub fast float 3.000000e+00, %566
  %568 = fmul fast float %565, %565
  %569 = fmul fast float %568, %567
  %570 = getelementptr inbounds [3 x float], [3 x float]* %11, i32 0, i32 %556
  %571 = load float, float* %570, align 4, !tbaa !24
  %572 = fsub fast float %535, %541
  %573 = fsub fast float %536, %541
  %574 = fsub fast float %537, %541
  %575 = fmul fast float %572, %571
  %576 = fmul fast float %573, %571
  %577 = fmul fast float %574, %571
  %578 = fadd fast float %575, %541
  %579 = fadd fast float %576, %541
  %580 = fadd fast float %577, %541
  %581 = fmul fast float %578, 9.765625e-04
  %582 = fmul fast float %579, 9.765625e-04
  %583 = fmul fast float %580, 9.765625e-04
  %584 = call float @dx.op.unary.f32(i32 23, float %581)  ; Log(value)
  %585 = call float @dx.op.unary.f32(i32 23, float %582)  ; Log(value)
  %586 = call float @dx.op.unary.f32(i32 23, float %583)  ; Log(value)
  %587 = fmul fast float %584, 0x3FC4640000000000
  %588 = fmul fast float %585, 0x3FC4640000000000
  %589 = fmul fast float %586, 0x3FC4640000000000
  %590 = call float @dx.op.unary.f32(i32 21, float %587)  ; Exp(value)
  %591 = call float @dx.op.unary.f32(i32 21, float %588)  ; Exp(value)
  %592 = call float @dx.op.unary.f32(i32 21, float %589)  ; Exp(value)
  %593 = fmul fast float %590, 0x4032DA0000000000
  %594 = fmul fast float %591, 0x4032DA0000000000
  %595 = fmul fast float %592, 0x4032DA0000000000
  %596 = fadd fast float %593, 8.359375e-01
  %597 = fadd fast float %594, 8.359375e-01
  %598 = fadd fast float %595, 8.359375e-01
  %599 = fmul fast float %590, 1.868750e+01
  %600 = fmul fast float %591, 1.868750e+01
  %601 = fmul fast float %592, 1.868750e+01
  %602 = fadd fast float %599, 1.000000e+00
  %603 = fadd fast float %600, 1.000000e+00
  %604 = fadd fast float %601, 1.000000e+00
  %605 = fdiv fast float %596, %602
  %606 = fdiv fast float %597, %603
  %607 = fdiv fast float %598, %604
  %608 = call float @dx.op.unary.f32(i32 23, float %605)  ; Log(value)
  %609 = call float @dx.op.unary.f32(i32 23, float %606)  ; Log(value)
  %610 = call float @dx.op.unary.f32(i32 23, float %607)  ; Log(value)
  %611 = fmul fast float %608, 7.884375e+01
  %612 = fmul fast float %609, 7.884375e+01
  %613 = fmul fast float %610, 7.884375e+01
  %614 = call float @dx.op.unary.f32(i32 21, float %611)  ; Exp(value)
  %615 = call float @dx.op.unary.f32(i32 21, float %612)  ; Exp(value)
  %616 = call float @dx.op.unary.f32(i32 21, float %613)  ; Exp(value)
  %617 = getelementptr [3 x float], [3 x float]* %7, i32 0, i32 %556
  %618 = getelementptr [3 x float], [3 x float]* %8, i32 0, i32 %556
  %619 = getelementptr [3 x float], [3 x float]* %9, i32 0, i32 %556
  %620 = load float, float* %617, align 4
  %621 = load float, float* %618, align 4
  %622 = load float, float* %619, align 4
  %623 = fmul fast float %620, %614
  %624 = fmul fast float %621, %615
  %625 = fmul fast float %622, %616
  %626 = call float @dx.op.unary.f32(i32 7, float %623)  ; Saturate(value)
  %627 = call float @dx.op.unary.f32(i32 7, float %624)  ; Saturate(value)
  %628 = call float @dx.op.unary.f32(i32 7, float %625)  ; Saturate(value)
  %629 = getelementptr inbounds [3 x float], [3 x float]* %11, i32 0, i32 %559
  %630 = load float, float* %629, align 4, !tbaa !24
  %631 = fmul fast float %572, %630
  %632 = fmul fast float %573, %630
  %633 = fmul fast float %574, %630
  %634 = fadd fast float %631, %541
  %635 = fadd fast float %632, %541
  %636 = fadd fast float %633, %541
  %637 = fmul fast float %634, 9.765625e-04
  %638 = fmul fast float %635, 9.765625e-04
  %639 = fmul fast float %636, 9.765625e-04
  %640 = call float @dx.op.unary.f32(i32 23, float %637)  ; Log(value)
  %641 = call float @dx.op.unary.f32(i32 23, float %638)  ; Log(value)
  %642 = call float @dx.op.unary.f32(i32 23, float %639)  ; Log(value)
  %643 = fmul fast float %640, 0x3FC4640000000000
  %644 = fmul fast float %641, 0x3FC4640000000000
  %645 = fmul fast float %642, 0x3FC4640000000000
  %646 = call float @dx.op.unary.f32(i32 21, float %643)  ; Exp(value)
  %647 = call float @dx.op.unary.f32(i32 21, float %644)  ; Exp(value)
  %648 = call float @dx.op.unary.f32(i32 21, float %645)  ; Exp(value)
  %649 = fmul fast float %646, 0x4032DA0000000000
  %650 = fmul fast float %647, 0x4032DA0000000000
  %651 = fmul fast float %648, 0x4032DA0000000000
  %652 = fadd fast float %649, 8.359375e-01
  %653 = fadd fast float %650, 8.359375e-01
  %654 = fadd fast float %651, 8.359375e-01
  %655 = fmul fast float %646, 1.868750e+01
  %656 = fmul fast float %647, 1.868750e+01
  %657 = fmul fast float %648, 1.868750e+01
  %658 = fadd fast float %655, 1.000000e+00
  %659 = fadd fast float %656, 1.000000e+00
  %660 = fadd fast float %657, 1.000000e+00
  %661 = fdiv fast float %652, %658
  %662 = fdiv fast float %653, %659
  %663 = fdiv fast float %654, %660
  %664 = call float @dx.op.unary.f32(i32 23, float %661)  ; Log(value)
  %665 = call float @dx.op.unary.f32(i32 23, float %662)  ; Log(value)
  %666 = call float @dx.op.unary.f32(i32 23, float %663)  ; Log(value)
  %667 = fmul fast float %664, 7.884375e+01
  %668 = fmul fast float %665, 7.884375e+01
  %669 = fmul fast float %666, 7.884375e+01
  %670 = call float @dx.op.unary.f32(i32 21, float %667)  ; Exp(value)
  %671 = call float @dx.op.unary.f32(i32 21, float %668)  ; Exp(value)
  %672 = call float @dx.op.unary.f32(i32 21, float %669)  ; Exp(value)
  %673 = getelementptr [3 x float], [3 x float]* %7, i32 0, i32 %559
  %674 = getelementptr [3 x float], [3 x float]* %8, i32 0, i32 %559
  %675 = getelementptr [3 x float], [3 x float]* %9, i32 0, i32 %559
  %676 = load float, float* %673, align 4
  %677 = load float, float* %674, align 4
  %678 = load float, float* %675, align 4
  %679 = fmul fast float %676, %670
  %680 = fmul fast float %677, %671
  %681 = fmul fast float %678, %672
  %682 = call float @dx.op.unary.f32(i32 7, float %679)  ; Saturate(value)
  %683 = call float @dx.op.unary.f32(i32 7, float %680)  ; Saturate(value)
  %684 = call float @dx.op.unary.f32(i32 7, float %681)  ; Saturate(value)
  %685 = fsub fast float %682, %626
  %686 = fsub fast float %683, %627
  %687 = fsub fast float %684, %628
  %688 = fmul fast float %685, %569
  %689 = fmul fast float %686, %569
  %690 = fmul fast float %687, %569
  %691 = fadd fast float %688, %626
  %692 = fadd fast float %689, %627
  %693 = fadd fast float %690, %628
  %694 = call float @dx.op.unary.f32(i32 23, float %691)  ; Log(value)
  %695 = call float @dx.op.unary.f32(i32 23, float %692)  ; Log(value)
  %696 = call float @dx.op.unary.f32(i32 23, float %693)  ; Log(value)
  %697 = fmul fast float %694, 0x3F89F9B580000000
  %698 = fmul fast float %695, 0x3F89F9B580000000
  %699 = fmul fast float %696, 0x3F89F9B580000000
  %700 = call float @dx.op.unary.f32(i32 21, float %697)  ; Exp(value)
  %701 = call float @dx.op.unary.f32(i32 21, float %698)  ; Exp(value)
  %702 = call float @dx.op.unary.f32(i32 21, float %699)  ; Exp(value)
  %703 = fmul fast float %700, 1.868750e+01
  %704 = fmul fast float %701, 1.868750e+01
  %705 = fmul fast float %702, 1.868750e+01
  %706 = fsub fast float 0x4032DA0000000000, %703
  %707 = fsub fast float 0x4032DA0000000000, %704
  %708 = fsub fast float 0x4032DA0000000000, %705
  %709 = fadd fast float %700, -8.359375e-01
  %710 = fadd fast float %701, -8.359375e-01
  %711 = fadd fast float %702, -8.359375e-01
  %712 = call float @dx.op.binary.f32(i32 35, float %709, float 0.000000e+00)  ; FMax(a,b)
  %713 = call float @dx.op.binary.f32(i32 35, float %710, float 0.000000e+00)  ; FMax(a,b)
  %714 = call float @dx.op.binary.f32(i32 35, float %711, float 0.000000e+00)  ; FMax(a,b)
  %715 = fdiv fast float %712, %706
  %716 = fdiv fast float %713, %707
  %717 = fdiv fast float %714, %708
  %718 = call float @dx.op.unary.f32(i32 23, float %715)  ; Log(value)
  %719 = call float @dx.op.unary.f32(i32 23, float %716)  ; Log(value)
  %720 = call float @dx.op.unary.f32(i32 23, float %717)  ; Log(value)
  %721 = fmul fast float %718, 0x40191C0D60000000
  %722 = fmul fast float %719, 0x40191C0D60000000
  %723 = fmul fast float %720, 0x40191C0D60000000
  %724 = call float @dx.op.unary.f32(i32 21, float %721)  ; Exp(value)
  %725 = call float @dx.op.unary.f32(i32 21, float %722)  ; Exp(value)
  %726 = call float @dx.op.unary.f32(i32 21, float %723)  ; Exp(value)
  %727 = fmul fast float %724, 1.024000e+03
  %728 = fmul fast float %725, 1.024000e+03
  %729 = fmul fast float %726, 1.024000e+03
  %730 = fcmp fast ogt float %190, 0.000000e+00
  br i1 %730, label %731, label %748, !dx.controlflow.hints !28

; <label>:731                                     ; preds = %540
  %732 = call float @dx.op.dot3.f32(i32 55, float %727, float %728, float %729, float 0x3FD0D013A0000000, float 0x3FE5B22D00000000, float 0x3FAE5C91E0000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %733 = fmul fast float %727, %541
  %734 = fmul fast float %728, %541
  %735 = fmul fast float %729, %541
  %736 = fdiv fast float %733, %732
  %737 = fdiv fast float %734, %732
  %738 = fdiv fast float %735, %732
  %739 = fsub fast float %736, %727
  %740 = fsub fast float %737, %728
  %741 = fsub fast float %738, %729
  %742 = fmul fast float %739, %190
  %743 = fmul fast float %740, %190
  %744 = fmul fast float %741, %190
  %745 = fadd fast float %742, %727
  %746 = fadd fast float %743, %728
  %747 = fadd fast float %744, %729
  br label %748

; <label>:748                                     ; preds = %731, %540
  %749 = phi float [ %745, %731 ], [ %727, %540 ]
  %750 = phi float [ %746, %731 ], [ %728, %540 ]
  %751 = phi float [ %747, %731 ], [ %729, %540 ]
  %752 = fmul fast float %749, 9.765625e-04
  %753 = fmul fast float %750, 9.765625e-04
  %754 = fmul fast float %751, 9.765625e-04
  %755 = call float @dx.op.unary.f32(i32 23, float %752)  ; Log(value)
  %756 = call float @dx.op.unary.f32(i32 23, float %753)  ; Log(value)
  %757 = call float @dx.op.unary.f32(i32 23, float %754)  ; Log(value)
  %758 = fmul fast float %755, 0x3FC4640000000000
  %759 = fmul fast float %756, 0x3FC4640000000000
  %760 = fmul fast float %757, 0x3FC4640000000000
  %761 = call float @dx.op.unary.f32(i32 21, float %758)  ; Exp(value)
  %762 = call float @dx.op.unary.f32(i32 21, float %759)  ; Exp(value)
  %763 = call float @dx.op.unary.f32(i32 21, float %760)  ; Exp(value)
  %764 = fmul fast float %761, 0x4032DA0000000000
  %765 = fmul fast float %762, 0x4032DA0000000000
  %766 = fmul fast float %763, 0x4032DA0000000000
  %767 = fadd fast float %764, 8.359375e-01
  %768 = fadd fast float %765, 8.359375e-01
  %769 = fadd fast float %766, 8.359375e-01
  %770 = fmul fast float %761, 1.868750e+01
  %771 = fmul fast float %762, 1.868750e+01
  %772 = fmul fast float %763, 1.868750e+01
  %773 = fadd fast float %770, 1.000000e+00
  %774 = fadd fast float %771, 1.000000e+00
  %775 = fadd fast float %772, 1.000000e+00
  %776 = fdiv fast float %767, %773
  %777 = fdiv fast float %768, %774
  %778 = fdiv fast float %769, %775
  %779 = call float @dx.op.unary.f32(i32 23, float %776)  ; Log(value)
  %780 = call float @dx.op.unary.f32(i32 23, float %777)  ; Log(value)
  %781 = call float @dx.op.unary.f32(i32 23, float %778)  ; Log(value)
  %782 = fmul fast float %779, 7.884375e+01
  %783 = fmul fast float %780, 7.884375e+01
  %784 = fmul fast float %781, 7.884375e+01
  %785 = call float @dx.op.unary.f32(i32 21, float %782)  ; Exp(value)
  %786 = call float @dx.op.unary.f32(i32 21, float %783)  ; Exp(value)
  %787 = call float @dx.op.unary.f32(i32 21, float %784)  ; Exp(value)
  %788 = call float @dx.op.unary.f32(i32 23, float %785)  ; Log(value)
  %789 = call float @dx.op.unary.f32(i32 23, float %786)  ; Log(value)
  %790 = call float @dx.op.unary.f32(i32 23, float %787)  ; Log(value)
  %791 = fmul fast float %788, %196
  %792 = fmul fast float %789, %197
  %793 = fmul fast float %790, %198
  %794 = call float @dx.op.unary.f32(i32 21, float %791)  ; Exp(value)
  %795 = call float @dx.op.unary.f32(i32 21, float %792)  ; Exp(value)
  %796 = call float @dx.op.unary.f32(i32 21, float %793)  ; Exp(value)
  %797 = fmul fast float %794, %200
  %798 = fmul fast float %795, %201
  %799 = fmul fast float %796, %202
  %800 = fadd fast float %797, %192
  %801 = fadd fast float %798, %193
  %802 = fadd fast float %799, %194
  %803 = call float @dx.op.unary.f32(i32 7, float %800)  ; Saturate(value)
  %804 = call float @dx.op.unary.f32(i32 7, float %801)  ; Saturate(value)
  %805 = call float @dx.op.unary.f32(i32 7, float %802)  ; Saturate(value)
  %806 = call float @dx.op.unary.f32(i32 23, float %803)  ; Log(value)
  %807 = call float @dx.op.unary.f32(i32 23, float %804)  ; Log(value)
  %808 = call float @dx.op.unary.f32(i32 23, float %805)  ; Log(value)
  %809 = fmul fast float %806, 0x3F89F9B580000000
  %810 = fmul fast float %807, 0x3F89F9B580000000
  %811 = fmul fast float %808, 0x3F89F9B580000000
  %812 = call float @dx.op.unary.f32(i32 21, float %809)  ; Exp(value)
  %813 = call float @dx.op.unary.f32(i32 21, float %810)  ; Exp(value)
  %814 = call float @dx.op.unary.f32(i32 21, float %811)  ; Exp(value)
  %815 = fmul fast float %812, 1.868750e+01
  %816 = fmul fast float %813, 1.868750e+01
  %817 = fmul fast float %814, 1.868750e+01
  %818 = fsub fast float 0x4032DA0000000000, %815
  %819 = fsub fast float 0x4032DA0000000000, %816
  %820 = fsub fast float 0x4032DA0000000000, %817
  %821 = fadd fast float %812, -8.359375e-01
  %822 = fadd fast float %813, -8.359375e-01
  %823 = fadd fast float %814, -8.359375e-01
  %824 = call float @dx.op.binary.f32(i32 35, float %821, float 0.000000e+00)  ; FMax(a,b)
  %825 = call float @dx.op.binary.f32(i32 35, float %822, float 0.000000e+00)  ; FMax(a,b)
  %826 = call float @dx.op.binary.f32(i32 35, float %823, float 0.000000e+00)  ; FMax(a,b)
  %827 = fdiv fast float %824, %818
  %828 = fdiv fast float %825, %819
  %829 = fdiv fast float %826, %820
  %830 = call float @dx.op.unary.f32(i32 23, float %827)  ; Log(value)
  %831 = call float @dx.op.unary.f32(i32 23, float %828)  ; Log(value)
  %832 = call float @dx.op.unary.f32(i32 23, float %829)  ; Log(value)
  %833 = fmul fast float %830, 0x40191C0D60000000
  %834 = fmul fast float %831, 0x40191C0D60000000
  %835 = fmul fast float %832, 0x40191C0D60000000
  %836 = call float @dx.op.unary.f32(i32 21, float %833)  ; Exp(value)
  %837 = call float @dx.op.unary.f32(i32 21, float %834)  ; Exp(value)
  %838 = call float @dx.op.unary.f32(i32 21, float %835)  ; Exp(value)
  %839 = fmul fast float %836, 1.024000e+03
  %840 = fmul fast float %837, 1.024000e+03
  %841 = fmul fast float %838, 1.024000e+03
  br label %842

; <label>:842                                     ; preds = %748, %534, %125
  %843 = phi float [ %839, %748 ], [ %535, %534 ], [ %127, %125 ]
  %844 = phi float [ %840, %748 ], [ %536, %534 ], [ %128, %125 ]
  %845 = phi float [ %841, %748 ], [ %537, %534 ], [ %129, %125 ]
  %846 = fcmp fast ogt float %204, 0.000000e+00
  br i1 %846, label %847, label %1223, !dx.controlflow.hints !29

; <label>:847                                     ; preds = %842
  %848 = fmul fast float %843, 0x3FE5BB1200000000
  %849 = call float @dx.op.tertiary.f32(i32 46, float %844, float 0x3FC42F8B20000000, float %848)  ; FMad(a,b,c)
  %850 = call float @dx.op.tertiary.f32(i32 46, float %845, float 0x3FC4E42D60000000, float %849)  ; FMad(a,b,c)
  %851 = fmul fast float %843, 0x3FA78D9140000000
  %852 = call float @dx.op.tertiary.f32(i32 46, float %844, float 0x3FEB7D5FC0000000, float %851)  ; FMad(a,b,c)
  %853 = call float @dx.op.tertiary.f32(i32 46, float %845, float 0x3FB84E3460000000, float %852)  ; FMad(a,b,c)
  %854 = fmul fast float %843, 0xBF42CE63E0000000
  %855 = call float @dx.op.tertiary.f32(i32 46, float %844, float 0x3F9D26A700000000, float %854)  ; FMad(a,b,c)
  %856 = call float @dx.op.tertiary.f32(i32 46, float %845, float 0x3FEF1B7E60000000, float %855)  ; FMad(a,b,c)
  %857 = call float @dx.op.binary.f32(i32 35, float %853, float %856)  ; FMax(a,b)
  %858 = call float @dx.op.binary.f32(i32 35, float %850, float %857)  ; FMax(a,b)
  %859 = call float @dx.op.binary.f32(i32 36, float %853, float %856)  ; FMin(a,b)
  %860 = call float @dx.op.binary.f32(i32 36, float %850, float %859)  ; FMin(a,b)
  %861 = call float @dx.op.binary.f32(i32 35, float %858, float 0x3DDB7CDFE0000000)  ; FMax(a,b)
  %862 = call float @dx.op.binary.f32(i32 35, float %860, float 0x3DDB7CDFE0000000)  ; FMax(a,b)
  %863 = fsub fast float %861, %862
  %864 = call float @dx.op.binary.f32(i32 35, float %858, float 0x3F847AE140000000)  ; FMax(a,b)
  %865 = fdiv fast float %863, %864
  %866 = fsub fast float %856, %853
  %867 = fmul fast float %866, %856
  %868 = fsub fast float %853, %850
  %869 = fmul fast float %868, %853
  %870 = fadd fast float %867, %869
  %871 = fsub fast float %850, %856
  %872 = fmul fast float %871, %850
  %873 = fadd fast float %870, %872
  %874 = call float @dx.op.unary.f32(i32 24, float %873)  ; Sqrt(value)
  %875 = fmul fast float %874, 1.750000e+00
  %876 = fadd fast float %853, %850
  %877 = fadd fast float %876, %856
  %878 = fadd fast float %877, %875
  %879 = fmul fast float %878, 0x3FD5555560000000
  %880 = fadd fast float %865, 0xBFD99999A0000000
  %881 = fmul fast float %880, 5.000000e+00
  %882 = fmul fast float %880, 2.500000e+00
  %883 = call float @dx.op.unary.f32(i32 6, float %882)  ; FAbs(value)
  %884 = fsub fast float 1.000000e+00, %883
  %885 = call float @dx.op.binary.f32(i32 35, float %884, float 0.000000e+00)  ; FMax(a,b)
  %886 = fcmp fast ogt float %881, 0.000000e+00
  %887 = fcmp fast olt float %881, 0.000000e+00
  %888 = zext i1 %886 to i32
  %889 = zext i1 %887 to i32
  %890 = sub nsw i32 %888, %889
  %891 = sitofp i32 %890 to float
  %892 = fmul fast float %885, %885
  %893 = fsub fast float 1.000000e+00, %892
  %894 = fmul fast float %891, %893
  %895 = fadd fast float %894, 1.000000e+00
  %896 = fmul fast float %895, 0x3F999999A0000000
  %897 = fcmp fast ugt float %879, 0x3FAB4E81C0000000
  br i1 %897, label %898, label %904, !dx.controlflow.hints !30

; <label>:898                                     ; preds = %847
  %899 = fcmp fast ult float %879, 0x3FC47AE140000000
  br i1 %899, label %900, label %904, !dx.controlflow.hints !31

; <label>:900                                     ; preds = %898
  %901 = fdiv fast float 0x3FCEB851E0000000, %878
  %902 = fadd fast float %901, -5.000000e-01
  %903 = fmul fast float %902, %896
  br label %904

; <label>:904                                     ; preds = %900, %898, %847
  %905 = phi float [ %903, %900 ], [ %896, %847 ], [ 0.000000e+00, %898 ]
  %906 = fadd fast float %905, 1.000000e+00
  %907 = fmul fast float %906, %850
  %908 = fmul fast float %906, %853
  %909 = fmul fast float %906, %856
  %910 = fcmp fast oeq float %907, %908
  %911 = fcmp fast oeq float %908, %909
  %912 = and i1 %910, %911
  br i1 %912, label %937, label %913, !dx.controlflow.hints !32

; <label>:913                                     ; preds = %904
  %914 = fmul fast float %907, 2.000000e+00
  %915 = fsub fast float %914, %908
  %916 = fsub fast float %915, %909
  %917 = fsub fast float %853, %856
  %918 = fmul fast float %917, 0x3FFBB67AE0000000
  %919 = fmul fast float %918, %906
  %920 = fdiv fast float %919, %916
  %921 = call float @dx.op.unary.f32(i32 17, float %920)  ; Atan(value)
  %922 = fadd fast float %921, 0x400921FB60000000
  %923 = fadd fast float %921, 0xC00921FB60000000
  %924 = fcmp fast olt float %916, 0.000000e+00
  %925 = fcmp fast oeq float %916, 0.000000e+00
  %926 = fcmp fast oge float %919, 0.000000e+00
  %927 = fcmp fast olt float %919, 0.000000e+00
  %928 = and i1 %926, %924
  %929 = select i1 %928, float %922, float %921
  %930 = and i1 %927, %924
  %931 = select i1 %930, float %923, float %929
  %932 = and i1 %927, %925
  %933 = and i1 %926, %925
  %934 = fmul fast float %931, 0x404CA5DC00000000
  %935 = select i1 %932, float -9.000000e+01, float %934
  %936 = select i1 %933, float 9.000000e+01, float %935
  br label %937

; <label>:937                                     ; preds = %913, %904
  %938 = phi float [ %936, %913 ], [ 0.000000e+00, %904 ]
  %939 = fcmp fast olt float %938, 0.000000e+00
  %940 = fadd fast float %938, 3.600000e+02
  %941 = select i1 %939, float %940, float %938
  %942 = fcmp fast olt float %941, -1.800000e+02
  br i1 %942, label %943, label %945, !dx.controlflow.hints !33

; <label>:943                                     ; preds = %937
  %944 = fadd fast float %941, 3.600000e+02
  br label %949

; <label>:945                                     ; preds = %937
  %946 = fcmp fast ogt float %941, 1.800000e+02
  br i1 %946, label %947, label %949, !dx.controlflow.hints !34

; <label>:947                                     ; preds = %945
  %948 = fadd fast float %941, -3.600000e+02
  br label %949

; <label>:949                                     ; preds = %947, %945, %943
  %950 = phi float [ %944, %943 ], [ %948, %947 ], [ %941, %945 ]
  %951 = fcmp fast ogt float %950, -6.750000e+01
  %952 = fcmp fast olt float %950, 6.750000e+01
  %953 = and i1 %951, %952
  br i1 %953, label %954, label %988, !dx.controlflow.hints !35

; <label>:954                                     ; preds = %949
  %955 = fadd fast float %950, 6.750000e+01
  %956 = fmul fast float %955, 0x3F9E573AC0000000
  %957 = fptosi float %956 to i32
  %958 = sitofp i32 %957 to float
  %959 = fsub fast float %956, %958
  %960 = fmul fast float %959, %959
  %961 = fmul fast float %960, %959
  %962 = icmp eq i32 %957, 3
  br i1 %962, label %963, label %970, !dx.controlflow.hints !36

; <label>:963                                     ; preds = %954
  %964 = fmul fast float %961, 0x3FC5555560000000
  %965 = fmul fast float %960, 5.000000e-01
  %966 = fmul fast float %959, 5.000000e-01
  %967 = fsub fast float 0x3FC5555560000000, %966
  %968 = fadd fast float %967, %965
  %969 = fsub fast float %968, %964
  br label %988

; <label>:970                                     ; preds = %954
  %971 = icmp eq i32 %957, 2
  br i1 %971, label %972, label %976, !dx.controlflow.hints !37

; <label>:972                                     ; preds = %970
  %973 = fmul fast float %961, 5.000000e-01
  %974 = fsub fast float 0x3FE5555560000000, %960
  %975 = fadd fast float %974, %973
  br label %988

; <label>:976                                     ; preds = %970
  %977 = icmp eq i32 %957, 1
  br i1 %977, label %978, label %984, !dx.controlflow.hints !38

; <label>:978                                     ; preds = %976
  %979 = fmul fast float %961, -5.000000e-01
  %980 = fadd fast float %960, %959
  %981 = fmul fast float %980, 5.000000e-01
  %982 = fadd fast float %979, 0x3FC5555560000000
  %983 = fadd fast float %982, %981
  br label %988

; <label>:984                                     ; preds = %976
  %985 = icmp eq i32 %957, 0
  %986 = fmul fast float %961, 0x3FC5555560000000
  %987 = select i1 %985, float %986, float 0.000000e+00
  br label %988

; <label>:988                                     ; preds = %984, %978, %972, %963, %949
  %989 = phi float [ %969, %963 ], [ %975, %972 ], [ %983, %978 ], [ 0.000000e+00, %949 ], [ %987, %984 ]
  %990 = fsub fast float 0x3F9EB851E0000000, %907
  %991 = fmul fast float %205, 0x3FD147AE20000000
  %992 = fmul fast float %991, %865
  %993 = fmul fast float %992, %990
  %994 = fmul fast float %993, %989
  %995 = fadd fast float %994, %907
  %996 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %995)  ; FMax(a,b)
  %997 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %908)  ; FMax(a,b)
  %998 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %909)  ; FMax(a,b)
  %999 = fmul fast float %996, 0x3FF7391880000000
  %1000 = call float @dx.op.tertiary.f32(i32 46, float %997, float 0xBFCE45FBC0000000, float %999)  ; FMad(a,b,c)
  %1001 = call float @dx.op.tertiary.f32(i32 46, float %998, float 0xBFCB82C780000000, float %1000)  ; FMad(a,b,c)
  %1002 = fmul fast float %996, 0xBFB3990700000000
  %1003 = call float @dx.op.tertiary.f32(i32 46, float %997, float 0x3FF2D1D680000000, float %1002)  ; FMad(a,b,c)
  %1004 = call float @dx.op.tertiary.f32(i32 46, float %998, float 0xBFB9845D00000000, float %1003)  ; FMad(a,b,c)
  %1005 = fmul fast float %996, 0x3F81080C20000000
  %1006 = call float @dx.op.tertiary.f32(i32 46, float %997, float 0xBF78B57B80000000, float %1005)  ; FMad(a,b,c)
  %1007 = call float @dx.op.tertiary.f32(i32 46, float %998, float 0x3FEFED4AA0000000, float %1006)  ; FMad(a,b,c)
  %1008 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1001)  ; FMax(a,b)
  %1009 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1004)  ; FMax(a,b)
  %1010 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1007)  ; FMax(a,b)
  %1011 = fmul fast float %1008, 0x3FEF118620000000
  %1012 = call float @dx.op.tertiary.f32(i32 46, float %1009, float 0x3F9B9C4320000000, float %1011)  ; FMad(a,b,c)
  %1013 = call float @dx.op.tertiary.f32(i32 46, float %1010, float 0x3F6197CD40000000, float %1012)  ; FMad(a,b,c)
  %1014 = fmul fast float %1008, 0x3F864D0E60000000
  %1015 = call float @dx.op.tertiary.f32(i32 46, float %1009, float 0x3FEF953400000000, float %1014)  ; FMad(a,b,c)
  %1016 = call float @dx.op.tertiary.f32(i32 46, float %1010, float 0x3F6197CD40000000, float %1015)  ; FMad(a,b,c)
  %1017 = call float @dx.op.tertiary.f32(i32 46, float %1009, float 0x3F9B9C4320000000, float %1014)  ; FMad(a,b,c)
  %1018 = call float @dx.op.tertiary.f32(i32 46, float %1010, float 0x3FEEC9E9A0000000, float %1017)  ; FMad(a,b,c)
  %1019 = call float @dx.op.binary.f32(i32 35, float %1013, float 0x3E70000000000000)  ; FMax(a,b)
  %1020 = call float @dx.op.unary.f32(i32 23, float %1019)  ; Log(value)
  %1021 = fmul fast float %1020, 0x3FD3441360000000
  %1022 = fcmp fast ugt float %1021, 0xC0150A6C00000000
  br i1 %1022, label %1023, label %1073, !dx.controlflow.hints !39

; <label>:1023                                    ; preds = %988
  %1024 = fcmp fast ogt float %1021, 0xC0150A6C00000000
  %1025 = fcmp fast olt float %1021, 0xBFE7D4CEC0000000
  %1026 = and i1 %1024, %1025
  br i1 %1026, label %1027, label %1048, !dx.controlflow.hints !40

; <label>:1027                                    ; preds = %1023
  %1028 = fmul fast float %1020, 0x3FC9999980000000
  %1029 = fadd fast float %1028, 0x400BF55280000000
  %1030 = fptosi float %1029 to i32
  %1031 = sitofp i32 %1030 to float
  %1032 = fsub fast float %1029, %1031
  %1033 = getelementptr inbounds [6 x float], [6 x float]* @.0.hca, i32 0, i32 %1030
  %1034 = load float, float* %1033, align 4, !tbaa !24
  %1035 = add nsw i32 %1030, 1
  %1036 = getelementptr inbounds [6 x float], [6 x float]* @.0.hca, i32 0, i32 %1035
  %1037 = load float, float* %1036, align 4, !tbaa !24
  %1038 = add nsw i32 %1030, 2
  %1039 = getelementptr inbounds [6 x float], [6 x float]* @.0.hca, i32 0, i32 %1038
  %1040 = load float, float* %1039, align 4, !tbaa !24
  %1041 = fmul fast float %1032, %1032
  %1042 = fmul fast float %1034, 5.000000e-01
  %1043 = call float @dx.op.tertiary.f32(i32 46, float %1037, float -1.000000e+00, float %1042)  ; FMad(a,b,c)
  %1044 = call float @dx.op.tertiary.f32(i32 46, float %1040, float 5.000000e-01, float %1043)  ; FMad(a,b,c)
  %1045 = fsub fast float %1037, %1034
  %1046 = call float @dx.op.tertiary.f32(i32 46, float %1037, float 5.000000e-01, float %1042)  ; FMad(a,b,c)
  %1047 = call float @dx.op.dot3.f32(i32 55, float %1041, float %1032, float 1.000000e+00, float %1044, float %1045, float %1046)  ; Dot3(ax,ay,az,bx,by,bz)
  br label %1073

; <label>:1048                                    ; preds = %1023
  %1049 = fcmp fast oge float %1021, 0xBFE7D4CEC0000000
  %1050 = fcmp fast olt float %1021, 0x4012B1FBE0000000
  %1051 = and i1 %1049, %1050
  br i1 %1051, label %1052, label %1073, !dx.controlflow.hints !41

; <label>:1052                                    ; preds = %1048
  %1053 = fmul fast float %1020, 0x3FC5555540000000
  %1054 = fadd fast float %1053, 0x3FDA637B20000000
  %1055 = fptosi float %1054 to i32
  %1056 = sitofp i32 %1055 to float
  %1057 = fsub fast float %1054, %1056
  %1058 = getelementptr inbounds [6 x float], [6 x float]* @.1.hca, i32 0, i32 %1055
  %1059 = load float, float* %1058, align 4, !tbaa !24
  %1060 = add nsw i32 %1055, 1
  %1061 = getelementptr inbounds [6 x float], [6 x float]* @.1.hca, i32 0, i32 %1060
  %1062 = load float, float* %1061, align 4, !tbaa !24
  %1063 = add nsw i32 %1055, 2
  %1064 = getelementptr inbounds [6 x float], [6 x float]* @.1.hca, i32 0, i32 %1063
  %1065 = load float, float* %1064, align 4, !tbaa !24
  %1066 = fmul fast float %1057, %1057
  %1067 = fmul fast float %1059, 5.000000e-01
  %1068 = call float @dx.op.tertiary.f32(i32 46, float %1062, float -1.000000e+00, float %1067)  ; FMad(a,b,c)
  %1069 = call float @dx.op.tertiary.f32(i32 46, float %1065, float 5.000000e-01, float %1068)  ; FMad(a,b,c)
  %1070 = fsub fast float %1062, %1059
  %1071 = call float @dx.op.tertiary.f32(i32 46, float %1062, float 5.000000e-01, float %1067)  ; FMad(a,b,c)
  %1072 = call float @dx.op.dot3.f32(i32 55, float %1066, float %1057, float 1.000000e+00, float %1069, float %1070, float %1071)  ; Dot3(ax,ay,az,bx,by,bz)
  br label %1073

; <label>:1073                                    ; preds = %1052, %1048, %1027, %988
  %1074 = phi float [ %1047, %1027 ], [ %1072, %1052 ], [ -4.000000e+00, %988 ], [ 4.000000e+00, %1048 ]
  %1075 = fmul fast float %1074, 0x400A934F00000000
  %1076 = call float @dx.op.unary.f32(i32 21, float %1075)  ; Exp(value)
  %1077 = call float @dx.op.binary.f32(i32 35, float %1016, float 0x3E70000000000000)  ; FMax(a,b)
  %1078 = call float @dx.op.unary.f32(i32 23, float %1077)  ; Log(value)
  %1079 = fmul fast float %1078, 0x3FD3441360000000
  %1080 = fcmp fast ugt float %1079, 0xC0150A6C00000000
  br i1 %1080, label %1081, label %1131, !dx.controlflow.hints !39

; <label>:1081                                    ; preds = %1073
  %1082 = fcmp fast ogt float %1079, 0xC0150A6C00000000
  %1083 = fcmp fast olt float %1079, 0xBFE7D4CEC0000000
  %1084 = and i1 %1082, %1083
  br i1 %1084, label %1085, label %1106, !dx.controlflow.hints !40

; <label>:1085                                    ; preds = %1081
  %1086 = fmul fast float %1078, 0x3FC9999980000000
  %1087 = fadd fast float %1086, 0x400BF55280000000
  %1088 = fptosi float %1087 to i32
  %1089 = sitofp i32 %1088 to float
  %1090 = fsub fast float %1087, %1089
  %1091 = getelementptr inbounds [6 x float], [6 x float]* @.0.hca, i32 0, i32 %1088
  %1092 = load float, float* %1091, align 4, !tbaa !24
  %1093 = add nsw i32 %1088, 1
  %1094 = getelementptr inbounds [6 x float], [6 x float]* @.0.hca, i32 0, i32 %1093
  %1095 = load float, float* %1094, align 4, !tbaa !24
  %1096 = add nsw i32 %1088, 2
  %1097 = getelementptr inbounds [6 x float], [6 x float]* @.0.hca, i32 0, i32 %1096
  %1098 = load float, float* %1097, align 4, !tbaa !24
  %1099 = fmul fast float %1090, %1090
  %1100 = fmul fast float %1092, 5.000000e-01
  %1101 = call float @dx.op.tertiary.f32(i32 46, float %1095, float -1.000000e+00, float %1100)  ; FMad(a,b,c)
  %1102 = call float @dx.op.tertiary.f32(i32 46, float %1098, float 5.000000e-01, float %1101)  ; FMad(a,b,c)
  %1103 = fsub fast float %1095, %1092
  %1104 = call float @dx.op.tertiary.f32(i32 46, float %1095, float 5.000000e-01, float %1100)  ; FMad(a,b,c)
  %1105 = call float @dx.op.dot3.f32(i32 55, float %1099, float %1090, float 1.000000e+00, float %1102, float %1103, float %1104)  ; Dot3(ax,ay,az,bx,by,bz)
  br label %1131

; <label>:1106                                    ; preds = %1081
  %1107 = fcmp fast oge float %1079, 0xBFE7D4CEC0000000
  %1108 = fcmp fast olt float %1079, 0x4012B1FBE0000000
  %1109 = and i1 %1107, %1108
  br i1 %1109, label %1110, label %1131, !dx.controlflow.hints !41

; <label>:1110                                    ; preds = %1106
  %1111 = fmul fast float %1078, 0x3FC5555540000000
  %1112 = fadd fast float %1111, 0x3FDA637B20000000
  %1113 = fptosi float %1112 to i32
  %1114 = sitofp i32 %1113 to float
  %1115 = fsub fast float %1112, %1114
  %1116 = getelementptr inbounds [6 x float], [6 x float]* @.1.hca, i32 0, i32 %1113
  %1117 = load float, float* %1116, align 4, !tbaa !24
  %1118 = add nsw i32 %1113, 1
  %1119 = getelementptr inbounds [6 x float], [6 x float]* @.1.hca, i32 0, i32 %1118
  %1120 = load float, float* %1119, align 4, !tbaa !24
  %1121 = add nsw i32 %1113, 2
  %1122 = getelementptr inbounds [6 x float], [6 x float]* @.1.hca, i32 0, i32 %1121
  %1123 = load float, float* %1122, align 4, !tbaa !24
  %1124 = fmul fast float %1115, %1115
  %1125 = fmul fast float %1117, 5.000000e-01
  %1126 = call float @dx.op.tertiary.f32(i32 46, float %1120, float -1.000000e+00, float %1125)  ; FMad(a,b,c)
  %1127 = call float @dx.op.tertiary.f32(i32 46, float %1123, float 5.000000e-01, float %1126)  ; FMad(a,b,c)
  %1128 = fsub fast float %1120, %1117
  %1129 = call float @dx.op.tertiary.f32(i32 46, float %1120, float 5.000000e-01, float %1125)  ; FMad(a,b,c)
  %1130 = call float @dx.op.dot3.f32(i32 55, float %1124, float %1115, float 1.000000e+00, float %1127, float %1128, float %1129)  ; Dot3(ax,ay,az,bx,by,bz)
  br label %1131

; <label>:1131                                    ; preds = %1110, %1106, %1085, %1073
  %1132 = phi float [ %1105, %1085 ], [ %1130, %1110 ], [ -4.000000e+00, %1073 ], [ 4.000000e+00, %1106 ]
  %1133 = fmul fast float %1132, 0x400A934F00000000
  %1134 = call float @dx.op.unary.f32(i32 21, float %1133)  ; Exp(value)
  %1135 = call float @dx.op.binary.f32(i32 35, float %1018, float 0x3E70000000000000)  ; FMax(a,b)
  %1136 = call float @dx.op.unary.f32(i32 23, float %1135)  ; Log(value)
  %1137 = fmul fast float %1136, 0x3FD3441360000000
  %1138 = fcmp fast ugt float %1137, 0xC0150A6C00000000
  br i1 %1138, label %1139, label %1189, !dx.controlflow.hints !39

; <label>:1139                                    ; preds = %1131
  %1140 = fcmp fast ogt float %1137, 0xC0150A6C00000000
  %1141 = fcmp fast olt float %1137, 0xBFE7D4CEC0000000
  %1142 = and i1 %1140, %1141
  br i1 %1142, label %1143, label %1164, !dx.controlflow.hints !40

; <label>:1143                                    ; preds = %1139
  %1144 = fmul fast float %1136, 0x3FC9999980000000
  %1145 = fadd fast float %1144, 0x400BF55280000000
  %1146 = fptosi float %1145 to i32
  %1147 = sitofp i32 %1146 to float
  %1148 = fsub fast float %1145, %1147
  %1149 = getelementptr inbounds [6 x float], [6 x float]* @.0.hca, i32 0, i32 %1146
  %1150 = load float, float* %1149, align 4, !tbaa !24
  %1151 = add nsw i32 %1146, 1
  %1152 = getelementptr inbounds [6 x float], [6 x float]* @.0.hca, i32 0, i32 %1151
  %1153 = load float, float* %1152, align 4, !tbaa !24
  %1154 = add nsw i32 %1146, 2
  %1155 = getelementptr inbounds [6 x float], [6 x float]* @.0.hca, i32 0, i32 %1154
  %1156 = load float, float* %1155, align 4, !tbaa !24
  %1157 = fmul fast float %1148, %1148
  %1158 = fmul fast float %1150, 5.000000e-01
  %1159 = call float @dx.op.tertiary.f32(i32 46, float %1153, float -1.000000e+00, float %1158)  ; FMad(a,b,c)
  %1160 = call float @dx.op.tertiary.f32(i32 46, float %1156, float 5.000000e-01, float %1159)  ; FMad(a,b,c)
  %1161 = fsub fast float %1153, %1150
  %1162 = call float @dx.op.tertiary.f32(i32 46, float %1153, float 5.000000e-01, float %1158)  ; FMad(a,b,c)
  %1163 = call float @dx.op.dot3.f32(i32 55, float %1157, float %1148, float 1.000000e+00, float %1160, float %1161, float %1162)  ; Dot3(ax,ay,az,bx,by,bz)
  br label %1189

; <label>:1164                                    ; preds = %1139
  %1165 = fcmp fast oge float %1137, 0xBFE7D4CEC0000000
  %1166 = fcmp fast olt float %1137, 0x4012B1FBE0000000
  %1167 = and i1 %1165, %1166
  br i1 %1167, label %1168, label %1189, !dx.controlflow.hints !41

; <label>:1168                                    ; preds = %1164
  %1169 = fmul fast float %1136, 0x3FC5555540000000
  %1170 = fadd fast float %1169, 0x3FDA637B20000000
  %1171 = fptosi float %1170 to i32
  %1172 = sitofp i32 %1171 to float
  %1173 = fsub fast float %1170, %1172
  %1174 = getelementptr inbounds [6 x float], [6 x float]* @.1.hca, i32 0, i32 %1171
  %1175 = load float, float* %1174, align 4, !tbaa !24
  %1176 = add nsw i32 %1171, 1
  %1177 = getelementptr inbounds [6 x float], [6 x float]* @.1.hca, i32 0, i32 %1176
  %1178 = load float, float* %1177, align 4, !tbaa !24
  %1179 = add nsw i32 %1171, 2
  %1180 = getelementptr inbounds [6 x float], [6 x float]* @.1.hca, i32 0, i32 %1179
  %1181 = load float, float* %1180, align 4, !tbaa !24
  %1182 = fmul fast float %1173, %1173
  %1183 = fmul fast float %1175, 5.000000e-01
  %1184 = call float @dx.op.tertiary.f32(i32 46, float %1178, float -1.000000e+00, float %1183)  ; FMad(a,b,c)
  %1185 = call float @dx.op.tertiary.f32(i32 46, float %1181, float 5.000000e-01, float %1184)  ; FMad(a,b,c)
  %1186 = fsub fast float %1178, %1175
  %1187 = call float @dx.op.tertiary.f32(i32 46, float %1178, float 5.000000e-01, float %1183)  ; FMad(a,b,c)
  %1188 = call float @dx.op.dot3.f32(i32 55, float %1182, float %1173, float 1.000000e+00, float %1185, float %1186, float %1187)  ; Dot3(ax,ay,az,bx,by,bz)
  br label %1189

; <label>:1189                                    ; preds = %1168, %1164, %1143, %1131
  %1190 = phi float [ %1163, %1143 ], [ %1188, %1168 ], [ -4.000000e+00, %1131 ], [ 4.000000e+00, %1164 ]
  %1191 = fmul fast float %1190, 0x400A934F00000000
  %1192 = call float @dx.op.unary.f32(i32 21, float %1191)  ; Exp(value)
  %1193 = fmul fast float %1076, 0x3FE64124E0000000
  %1194 = call float @dx.op.tertiary.f32(i32 46, float %1134, float 0x3FC201C200000000, float %1193)  ; FMad(a,b,c)
  %1195 = call float @dx.op.tertiary.f32(i32 46, float %1192, float 0x3FC4F9A940000000, float %1194)  ; FMad(a,b,c)
  %1196 = fmul fast float %1076, 0x3FA6EF4FA0000000
  %1197 = call float @dx.op.tertiary.f32(i32 46, float %1134, float 0x3FEB826CA0000000, float %1196)  ; FMad(a,b,c)
  %1198 = call float @dx.op.tertiary.f32(i32 46, float %1192, float 0x3FB874EFE0000000, float %1197)  ; FMad(a,b,c)
  %1199 = fmul fast float %1076, 0xBF76A24B60000000
  %1200 = call float @dx.op.tertiary.f32(i32 46, float %1134, float 0x3F707CBD20000000, float %1199)  ; FMad(a,b,c)
  %1201 = call float @dx.op.tertiary.f32(i32 46, float %1192, float 0x3FF00625A0000000, float %1200)  ; FMad(a,b,c)
  %1202 = fmul fast float %1195, 0x3FF7D8B7A0000000
  %1203 = call float @dx.op.tertiary.f32(i32 46, float %1198, float 0xBFD108F1A0000000, float %1202)  ; FMad(a,b,c)
  %1204 = call float @dx.op.tertiary.f32(i32 46, float %1201, float 0xBFCCB3D900000000, float %1203)  ; FMad(a,b,c)
  %1205 = fmul fast float %1195, 0xBFB485DB80000000
  %1206 = call float @dx.op.tertiary.f32(i32 46, float %1198, float 0x3FF2EA2820000000, float %1205)  ; FMad(a,b,c)
  %1207 = call float @dx.op.tertiary.f32(i32 46, float %1201, float 0xBFBA1CA680000000, float %1206)  ; FMad(a,b,c)
  %1208 = fmul fast float %1195, 0x3F6A70BF20000000
  %1209 = call float @dx.op.tertiary.f32(i32 46, float %1198, float 0xBFA1CE3860000000, float %1208)  ; FMad(a,b,c)
  %1210 = call float @dx.op.tertiary.f32(i32 46, float %1201, float 0x3FF0813960000000, float %1209)  ; FMad(a,b,c)
  %1211 = fmul fast float %843, 3.200000e+01
  %1212 = fmul fast float %844, 3.200000e+01
  %1213 = fmul fast float %845, 3.200000e+01
  %1214 = fsub fast float %1204, %1211
  %1215 = fsub fast float %1207, %1212
  %1216 = fsub fast float %1210, %1213
  %1217 = fmul fast float %1214, %204
  %1218 = fmul fast float %1215, %204
  %1219 = fmul fast float %1216, %204
  %1220 = fadd fast float %1217, %1211
  %1221 = fadd fast float %1218, %1212
  %1222 = fadd fast float %1219, %1213
  br label %1227

; <label>:1223                                    ; preds = %842
  %1224 = fmul fast float %843, 3.200000e+01
  %1225 = fmul fast float %844, 3.200000e+01
  %1226 = fmul fast float %845, 3.200000e+01
  br label %1227

; <label>:1227                                    ; preds = %1223, %1189
  %1228 = phi float [ %1220, %1189 ], [ %1224, %1223 ]
  %1229 = phi float [ %1221, %1189 ], [ %1225, %1223 ]
  %1230 = phi float [ %1222, %1189 ], [ %1226, %1223 ]
  br i1 %208, label %1241, label %1231, !dx.controlflow.hints !42

; <label>:1231                                    ; preds = %1227
  %1232 = fmul fast float %1228, %210
  %1233 = call float @dx.op.tertiary.f32(i32 46, float %211, float %1229, float %1232)  ; FMad(a,b,c)
  %1234 = call float @dx.op.tertiary.f32(i32 46, float %212, float %1230, float %1233)  ; FMad(a,b,c)
  %1235 = fmul fast float %1228, %214
  %1236 = call float @dx.op.tertiary.f32(i32 46, float %215, float %1229, float %1235)  ; FMad(a,b,c)
  %1237 = call float @dx.op.tertiary.f32(i32 46, float %216, float %1230, float %1236)  ; FMad(a,b,c)
  %1238 = fmul fast float %1228, %218
  %1239 = call float @dx.op.tertiary.f32(i32 46, float %219, float %1229, float %1238)  ; FMad(a,b,c)
  %1240 = call float @dx.op.tertiary.f32(i32 46, float %220, float %1230, float %1239)  ; FMad(a,b,c)
  br label %1241

; <label>:1241                                    ; preds = %1231, %1227
  %1242 = phi float [ %1234, %1231 ], [ %1228, %1227 ]
  %1243 = phi float [ %1237, %1231 ], [ %1229, %1227 ]
  %1244 = phi float [ %1240, %1231 ], [ %1230, %1227 ]
  %1245 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1242)  ; FMax(a,b)
  %1246 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1243)  ; FMax(a,b)
  %1247 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1244)  ; FMax(a,b)
  %1248 = fmul fast float %1245, 0x3F1A36E2E0000000
  %1249 = fmul fast float %1246, 0x3F1A36E2E0000000
  %1250 = fmul fast float %1247, 0x3F1A36E2E0000000
  %1251 = call float @dx.op.unary.f32(i32 23, float %1248)  ; Log(value)
  %1252 = call float @dx.op.unary.f32(i32 23, float %1249)  ; Log(value)
  %1253 = call float @dx.op.unary.f32(i32 23, float %1250)  ; Log(value)
  %1254 = fmul fast float %1251, %224
  %1255 = fmul fast float %1252, %224
  %1256 = fmul fast float %1253, %224
  %1257 = call float @dx.op.unary.f32(i32 21, float %1254)  ; Exp(value)
  %1258 = call float @dx.op.unary.f32(i32 21, float %1255)  ; Exp(value)
  %1259 = call float @dx.op.unary.f32(i32 21, float %1256)  ; Exp(value)
  %1260 = fmul fast float %1257, 1.000000e+04
  %1261 = fmul fast float %1258, 1.000000e+04
  %1262 = fmul fast float %1259, 1.000000e+04
  %1263 = fdiv fast float 1.000000e+00, %226
  %1264 = fmul fast float %1260, %1263
  %1265 = fmul fast float %1263, %1261
  %1266 = fmul fast float %1262, %1263
  %1267 = fcmp fast olt float %1264, 0x3FC3333340000000
  %1268 = fadd fast float %1264, 0xBFC3333340000000
  %1269 = fmul fast float %1268, 0xBFFB2817A0000000
  %1270 = call float @dx.op.unary.f32(i32 21, float %1269)  ; Exp(value)
  %1271 = fsub fast float 1.000000e+00, %1270
  %1272 = fmul fast float %1271, 0x3FEB333340000000
  %1273 = fadd fast float %1272, 0x3FC3333340000000
  %1274 = select i1 %1267, float %1264, float %1273
  %1275 = fcmp fast olt float %1265, 0x3FC3333340000000
  %1276 = fadd fast float %1265, 0xBFC3333340000000
  %1277 = fmul fast float %1276, 0xBFFB2817A0000000
  %1278 = call float @dx.op.unary.f32(i32 21, float %1277)  ; Exp(value)
  %1279 = fsub fast float 1.000000e+00, %1278
  %1280 = fmul fast float %1279, 0x3FEB333340000000
  %1281 = fadd fast float %1280, 0x3FC3333340000000
  %1282 = select i1 %1275, float %1265, float %1281
  %1283 = fcmp fast olt float %1266, 0x3FC3333340000000
  %1284 = fadd fast float %1266, 0xBFC3333340000000
  %1285 = fmul fast float %1284, 0xBFFB2817A0000000
  %1286 = call float @dx.op.unary.f32(i32 21, float %1285)  ; Exp(value)
  %1287 = fsub fast float 1.000000e+00, %1286
  %1288 = fmul fast float %1287, 0x3FEB333340000000
  %1289 = fadd fast float %1288, 0x3FC3333340000000
  %1290 = select i1 %1283, float %1266, float %1289
  %1291 = call float @dx.op.dot3.f32(i32 55, float %1264, float %1265, float %1266, float 0x3FD0D013A0000000, float 0x3FE5B22D00000000, float 0x3FAE5C91E0000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1292 = call float @dx.op.dot3.f32(i32 55, float %1274, float %1282, float %1290, float 0x3FD0D013A0000000, float 0x3FE5B22D00000000, float 0x3FAE5C91E0000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1293 = fmul fast float %1292, %1264
  %1294 = fmul fast float %1292, %1265
  %1295 = fmul fast float %1292, %1266
  %1296 = fdiv fast float %1293, %1291
  %1297 = fdiv fast float %1294, %1291
  %1298 = fdiv fast float %1295, %1291
  %1299 = call float @dx.op.dot3.f32(i32 55, float %1296, float %1297, float %1298, float 0x3FD0D013A0000000, float 0x3FE5B22D00000000, float 0x3FAE5C91E0000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1300 = fmul fast float %1291, 0x3FC99999A0000000
  %1301 = fcmp fast olt float %1300, 5.000000e-01
  %1302 = fmul fast float %1291, 0x3FE2776C60000000
  %1303 = fsub fast float 0x3FF7154760000000, %1302
  %1304 = call float @dx.op.unary.f32(i32 21, float %1303)  ; Exp(value)
  %1305 = fsub fast float 1.000000e+00, %1304
  %1306 = fmul fast float %1305, 5.000000e-01
  %1307 = fadd fast float %1306, 5.000000e-01
  %1308 = select i1 %1301, float %1300, float %1307
  %1309 = fmul fast float %1308, 0x3FEC28F5E0000000
  %1310 = fadd fast float %1309, 0xBFB47AE160000000
  %1311 = fmul fast float %1296, 0x3FFA916880000000
  %1312 = call float @dx.op.tertiary.f32(i32 46, float 0xBFE2CE7040000000, float %1297, float %1311)  ; FMad(a,b,c)
  %1313 = call float @dx.op.tertiary.f32(i32 46, float 0xBFB2A30560000000, float %1298, float %1312)  ; FMad(a,b,c)
  %1314 = fmul fast float %1296, 0xBFBFE5C920000000
  %1315 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF220C4A0000000, float %1297, float %1314)  ; FMad(a,b,c)
  %1316 = call float @dx.op.tertiary.f32(i32 46, float 0xBF813404E0000000, float %1298, float %1315)  ; FMad(a,b,c)
  %1317 = fmul fast float %1296, 0xBF92A30560000000
  %1318 = call float @dx.op.tertiary.f32(i32 46, float 0xBFB9C0EBE0000000, float %1297, float %1317)  ; FMad(a,b,c)
  %1319 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF1E63200000000, float %1298, float %1318)  ; FMad(a,b,c)
  %1320 = fcmp fast ult float %1299, 1.000000e+00
  br i1 %1320, label %1321, label %1345, !dx.controlflow.hints !43

; <label>:1321                                    ; preds = %1241
  %1322 = fcmp fast ugt float %1299, 0.000000e+00
  br i1 %1322, label %1323, label %1345, !dx.controlflow.hints !44

; <label>:1323                                    ; preds = %1321
  %1324 = call float @dx.op.binary.f32(i32 35, float %1313, float 1.000000e+00)  ; FMax(a,b)
  %1325 = call float @dx.op.binary.f32(i32 35, float %1316, float 1.000000e+00)  ; FMax(a,b)
  %1326 = call float @dx.op.binary.f32(i32 35, float %1319, float 1.000000e+00)  ; FMax(a,b)
  %1327 = fadd fast float %1324, -1.000000e+00
  %1328 = fadd fast float %1325, -1.000000e+00
  %1329 = fadd fast float %1326, -1.000000e+00
  %1330 = fsub fast float %1313, %1299
  %1331 = fsub fast float %1316, %1299
  %1332 = fsub fast float %1319, %1299
  %1333 = fcmp fast ogt float %1330, 0.000000e+00
  %1334 = fdiv fast float %1327, %1330
  %1335 = select i1 %1333, float %1334, float 0.000000e+00
  %1336 = fcmp fast ogt float %1331, 0.000000e+00
  %1337 = fdiv fast float %1328, %1331
  %1338 = select i1 %1336, float %1337, float 0.000000e+00
  %1339 = fcmp fast ogt float %1332, 0.000000e+00
  %1340 = fdiv fast float %1329, %1332
  %1341 = select i1 %1339, float %1340, float 0.000000e+00
  %1342 = call float @dx.op.binary.f32(i32 35, float %1338, float %1341)  ; FMax(a,b)
  %1343 = call float @dx.op.binary.f32(i32 35, float %1335, float %1342)  ; FMax(a,b)
  %1344 = fmul float %1343, 5.000000e-01
  br label %1345

; <label>:1345                                    ; preds = %1323, %1321, %1241
  %1346 = phi float [ %1344, %1323 ], [ 5.000000e-01, %1241 ], [ 0.000000e+00, %1321 ]
  %1347 = call float @dx.op.binary.f32(i32 35, float %1310, float %1346)  ; FMax(a,b)
  %1348 = fsub fast float %1299, %1296
  %1349 = fsub fast float %1299, %1297
  %1350 = fsub fast float %1299, %1298
  %1351 = fmul fast float %1347, %1348
  %1352 = fmul fast float %1347, %1349
  %1353 = fmul fast float %1347, %1350
  %1354 = fadd fast float %1351, %1296
  %1355 = fadd fast float %1352, %1297
  %1356 = fadd fast float %1353, %1298
  switch i32 %126, label %1357 [
    i32 4, label %1649
    i32 3, label %1429
  ], !dx.controlflow.hints !45

; <label>:1357                                    ; preds = %1345
  %1358 = fmul fast float %1354, 0x3FFA916880000000
  %1359 = call float @dx.op.tertiary.f32(i32 46, float 0xBFE2CE7040000000, float %1355, float %1358)  ; FMad(a,b,c)
  %1360 = call float @dx.op.tertiary.f32(i32 46, float 0xBFB2A30560000000, float %1356, float %1359)  ; FMad(a,b,c)
  %1361 = fmul fast float %1354, 0xBFBFE5C920000000
  %1362 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF220C4A0000000, float %1355, float %1361)  ; FMad(a,b,c)
  %1363 = call float @dx.op.tertiary.f32(i32 46, float 0xBF813404E0000000, float %1356, float %1362)  ; FMad(a,b,c)
  %1364 = fmul fast float %1354, 0xBF92A30560000000
  %1365 = call float @dx.op.tertiary.f32(i32 46, float 0xBFB9C0EBE0000000, float %1355, float %1364)  ; FMad(a,b,c)
  %1366 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF1E63200000000, float %1356, float %1365)  ; FMad(a,b,c)
  %1367 = call float @dx.op.unary.f32(i32 7, float %1360)  ; Saturate(value)
  %1368 = call float @dx.op.unary.f32(i32 7, float %1363)  ; Saturate(value)
  %1369 = call float @dx.op.unary.f32(i32 7, float %1366)  ; Saturate(value)
  switch i32 %126, label %1415 [
    i32 0, label %1370
    i32 2, label %1380
    i32 1, label %1405
  ], !dx.controlflow.hints !46

; <label>:1370                                    ; preds = %1357
  %1371 = call float @dx.op.unary.f32(i32 23, float %1367)  ; Log(value)
  %1372 = call float @dx.op.unary.f32(i32 23, float %1368)  ; Log(value)
  %1373 = call float @dx.op.unary.f32(i32 23, float %1369)  ; Log(value)
  %1374 = fmul fast float %1371, 0x3FDD1745C0000000
  %1375 = fmul fast float %1372, 0x3FDD1745C0000000
  %1376 = fmul fast float %1373, 0x3FDD1745C0000000
  %1377 = call float @dx.op.unary.f32(i32 21, float %1374)  ; Exp(value)
  %1378 = call float @dx.op.unary.f32(i32 21, float %1375)  ; Exp(value)
  %1379 = call float @dx.op.unary.f32(i32 21, float %1376)  ; Exp(value)
  br label %1415

; <label>:1380                                    ; preds = %1357
  %1381 = fcmp fast olt float %1367, 0x3F926E9780000000
  %1382 = fcmp fast olt float %1368, 0x3F926E9780000000
  %1383 = fcmp fast olt float %1369, 0x3F926E9780000000
  %1384 = fmul fast float %1367, 4.500000e+00
  %1385 = fmul fast float %1368, 4.500000e+00
  %1386 = fmul fast float %1369, 4.500000e+00
  %1387 = call float @dx.op.unary.f32(i32 23, float %1367)  ; Log(value)
  %1388 = call float @dx.op.unary.f32(i32 23, float %1368)  ; Log(value)
  %1389 = call float @dx.op.unary.f32(i32 23, float %1369)  ; Log(value)
  %1390 = fmul fast float %1387, 0x3FDCCCCCC0000000
  %1391 = fmul fast float %1388, 0x3FDCCCCCC0000000
  %1392 = fmul fast float %1389, 0x3FDCCCCCC0000000
  %1393 = call float @dx.op.unary.f32(i32 21, float %1390)  ; Exp(value)
  %1394 = call float @dx.op.unary.f32(i32 21, float %1391)  ; Exp(value)
  %1395 = call float @dx.op.unary.f32(i32 21, float %1392)  ; Exp(value)
  %1396 = fmul fast float %1393, 0x3FF1958100000000
  %1397 = fmul fast float %1394, 0x3FF1958100000000
  %1398 = fmul fast float %1395, 0x3FF1958100000000
  %1399 = fadd fast float %1396, 0xBFB9581060000000
  %1400 = fadd fast float %1397, 0xBFB9581060000000
  %1401 = fadd fast float %1398, 0xBFB9581060000000
  %1402 = select i1 %1381, float %1384, float %1399
  %1403 = select i1 %1382, float %1385, float %1400
  %1404 = select i1 %1383, float %1386, float %1401
  br label %1415

; <label>:1405                                    ; preds = %1357
  %1406 = call float @dx.op.unary.f32(i32 23, float %1367)  ; Log(value)
  %1407 = call float @dx.op.unary.f32(i32 23, float %1368)  ; Log(value)
  %1408 = call float @dx.op.unary.f32(i32 23, float %1369)  ; Log(value)
  %1409 = fmul fast float %1406, 0x3FDAAAAAA0000000
  %1410 = fmul fast float %1407, 0x3FDAAAAAA0000000
  %1411 = fmul fast float %1408, 0x3FDAAAAAA0000000
  %1412 = call float @dx.op.unary.f32(i32 21, float %1409)  ; Exp(value)
  %1413 = call float @dx.op.unary.f32(i32 21, float %1410)  ; Exp(value)
  %1414 = call float @dx.op.unary.f32(i32 21, float %1411)  ; Exp(value)
  br label %1415

; <label>:1415                                    ; preds = %1405, %1380, %1370, %1357
  %1416 = phi float [ %1412, %1405 ], [ %1402, %1380 ], [ %1377, %1370 ], [ %1367, %1357 ]
  %1417 = phi float [ %1413, %1405 ], [ %1403, %1380 ], [ %1378, %1370 ], [ %1368, %1357 ]
  %1418 = phi float [ %1414, %1405 ], [ %1404, %1380 ], [ %1379, %1370 ], [ %1369, %1357 ]
  %1419 = fsub fast float %223, %222
  %1420 = fmul fast float %1416, %1419
  %1421 = fmul fast float %1417, %1419
  %1422 = fmul fast float %1418, %1419
  %1423 = fadd fast float %1420, %222
  %1424 = fadd fast float %1421, %222
  %1425 = fadd fast float %1422, %222
  %1426 = call float @dx.op.unary.f32(i32 7, float %1423)  ; Saturate(value)
  %1427 = call float @dx.op.unary.f32(i32 7, float %1424)  ; Saturate(value)
  %1428 = call float @dx.op.unary.f32(i32 7, float %1425)  ; Saturate(value)
  br label %1882

; <label>:1429                                    ; preds = %1345
  %1430 = fmul fast float %1257, 0x40B0191700000000
  %1431 = call float @dx.op.tertiary.f32(i32 46, float 0x3FE0C40080000000, float %1261, float %1430)  ; FMad(a,b,c)
  %1432 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB05FFF40000000, float %1262, float %1431)  ; FMad(a,b,c)
  %1433 = fmul fast float %1257, 0x409A0DEB80000000
  %1434 = call float @dx.op.tertiary.f32(i32 46, float 0x3FE70E0000000000, float %1261, float %1433)  ; FMad(a,b,c)
  %1435 = call float @dx.op.tertiary.f32(i32 46, float 0x3FBCE00080000000, float %1262, float %1434)  ; FMad(a,b,c)
  %1436 = fmul fast float %1257, 0x406E365E20000000
  %1437 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB35000C0000000, float %1261, float %1436)  ; FMad(a,b,c)
  %1438 = call float @dx.op.tertiary.f32(i32 46, float 0x3FECD000C0000000, float %1262, float %1437)  ; FMad(a,b,c)
  %1439 = fmul fast float %1432, 0x3F1A36E2E0000000
  %1440 = fmul fast float %1435, 0x3F1A36E2E0000000
  %1441 = fmul fast float %1438, 0x3F1A36E2E0000000
  %1442 = call float @dx.op.unary.f32(i32 23, float %1439)  ; Log(value)
  %1443 = call float @dx.op.unary.f32(i32 23, float %1440)  ; Log(value)
  %1444 = call float @dx.op.unary.f32(i32 23, float %1441)  ; Log(value)
  %1445 = fmul fast float %1442, 0x3FC4640000000000
  %1446 = fmul fast float %1443, 0x3FC4640000000000
  %1447 = fmul fast float %1444, 0x3FC4640000000000
  %1448 = call float @dx.op.unary.f32(i32 21, float %1445)  ; Exp(value)
  %1449 = call float @dx.op.unary.f32(i32 21, float %1446)  ; Exp(value)
  %1450 = call float @dx.op.unary.f32(i32 21, float %1447)  ; Exp(value)
  %1451 = fmul fast float %1448, 0x4032DA0000000000
  %1452 = fmul fast float %1449, 0x4032DA0000000000
  %1453 = fmul fast float %1450, 0x4032DA0000000000
  %1454 = fadd fast float %1451, 8.359375e-01
  %1455 = fadd fast float %1452, 8.359375e-01
  %1456 = fadd fast float %1453, 8.359375e-01
  %1457 = fmul fast float %1448, 1.868750e+01
  %1458 = fmul fast float %1449, 1.868750e+01
  %1459 = fmul fast float %1450, 1.868750e+01
  %1460 = fadd fast float %1457, 1.000000e+00
  %1461 = fadd fast float %1458, 1.000000e+00
  %1462 = fadd fast float %1459, 1.000000e+00
  %1463 = fdiv fast float %1454, %1460
  %1464 = fdiv fast float %1455, %1461
  %1465 = fdiv fast float %1456, %1462
  %1466 = call float @dx.op.unary.f32(i32 23, float %1463)  ; Log(value)
  %1467 = call float @dx.op.unary.f32(i32 23, float %1464)  ; Log(value)
  %1468 = call float @dx.op.unary.f32(i32 23, float %1465)  ; Log(value)
  %1469 = fmul fast float %1466, 7.884375e+01
  %1470 = fmul fast float %1467, 7.884375e+01
  %1471 = fmul fast float %1468, 7.884375e+01
  %1472 = call float @dx.op.unary.f32(i32 21, float %1469)  ; Exp(value)
  %1473 = call float @dx.op.unary.f32(i32 21, float %1470)  ; Exp(value)
  %1474 = call float @dx.op.unary.f32(i32 21, float %1471)  ; Exp(value)
  %1475 = fadd fast float %1473, %1472
  %1476 = fmul fast float %1475, 5.000000e-01
  %1477 = fmul fast float %1472, 0x3FF9D20000000000
  %1478 = fmul fast float %1473, 0x400A968000000000
  %1479 = fsub fast float %1477, %1478
  %1480 = fmul fast float %1474, 0x3FFB5B0000000000
  %1481 = fadd fast float %1479, %1480
  %1482 = fmul fast float %1472, 0x4011834000000000
  %1483 = fmul fast float %1473, 0x4010FB8000000000
  %1484 = fsub fast float %1482, %1483
  %1485 = fmul fast float %1474, 0x3FC0F80000000000
  %1486 = fsub fast float %1484, %1485
  %1487 = fmul fast float %223, 1.500000e+00
  %1488 = fadd fast float %1487, -5.000000e-01
  %1489 = fcmp fast ugt float %1476, 0.000000e+00
  br i1 %1489, label %1490, label %1521, !dx.controlflow.hints !47

; <label>:1490                                    ; preds = %1429
  %1491 = fcmp fast ult float %1476, 1.000000e+00
  br i1 %1491, label %1492, label %1521, !dx.controlflow.hints !48

; <label>:1492                                    ; preds = %1490
  %1493 = call float @dx.op.unary.f32(i32 7, float %1476)  ; Saturate(value)
  %1494 = fcmp fast ult float %1493, %1488
  br i1 %1494, label %1514, label %1495, !dx.controlflow.hints !49

; <label>:1495                                    ; preds = %1492
  %1496 = fsub fast float %1476, %1488
  %1497 = fsub fast float 1.500000e+00, %1487
  %1498 = fdiv fast float %1496, %1497
  %1499 = fmul fast float %1498, %1498
  %1500 = fmul fast float %1499, %1498
  %1501 = fmul fast float %1500, 2.000000e+00
  %1502 = fmul fast float %1499, 3.000000e+00
  %1503 = fsub fast float 1.000000e+00, %1502
  %1504 = fadd fast float %1503, %1501
  %1505 = fmul fast float %1504, %1488
  %1506 = fadd fast float %1498, -2.000000e+00
  %1507 = fmul fast float %1499, %1506
  %1508 = fadd fast float %1507, %1498
  %1509 = fmul fast float %1508, %1497
  %1510 = fsub fast float %1502, %1501
  %1511 = fmul fast float %1510, %223
  %1512 = fadd fast float %1511, %1509
  %1513 = fadd fast float %1512, %1505
  br label %1514

; <label>:1514                                    ; preds = %1495, %1492
  %1515 = phi float [ %1513, %1495 ], [ %1493, %1492 ]
  %1516 = fsub fast float 1.000000e+00, %1515
  %1517 = fmul fast float %1516, %1516
  %1518 = fmul fast float %1517, %1517
  %1519 = fmul fast float %1518, %222
  %1520 = fadd fast float %1519, %1515
  br label %1521

; <label>:1521                                    ; preds = %1514, %1490, %1429
  %1522 = phi float [ %1520, %1514 ], [ %222, %1429 ], [ %223, %1490 ]
  %1523 = fdiv fast float %1522, %1476
  %1524 = fdiv fast float %1476, %1522
  %1525 = call float @dx.op.binary.f32(i32 36, float %1524, float %1523)  ; FMin(a,b)
  %1526 = fmul fast float %1525, %1525
  %1527 = fmul fast float %1526, %1481
  %1528 = fmul fast float %1526, %1486
  %1529 = fmul fast float %1527, 0x3F81A19D60000000
  %1530 = fadd fast float %1529, %1522
  %1531 = fmul fast float %1528, 0x3FBC6C7000000000
  %1532 = fadd fast float %1530, %1531
  %1533 = fsub fast float %1522, %1529
  %1534 = fsub fast float %1533, %1531
  %1535 = fmul fast float %1527, 0x3FE1EBC6E0000000
  %1536 = fadd fast float %1535, %1522
  %1537 = fmul fast float %1528, 0x3FD48527E0000000
  %1538 = fsub fast float %1536, %1537
  %1539 = call float @dx.op.unary.f32(i32 23, float %1532)  ; Log(value)
  %1540 = call float @dx.op.unary.f32(i32 23, float %1534)  ; Log(value)
  %1541 = call float @dx.op.unary.f32(i32 23, float %1538)  ; Log(value)
  %1542 = fmul fast float %1539, 0x3F89F9B580000000
  %1543 = fmul fast float %1540, 0x3F89F9B580000000
  %1544 = fmul fast float %1541, 0x3F89F9B580000000
  %1545 = call float @dx.op.unary.f32(i32 21, float %1542)  ; Exp(value)
  %1546 = call float @dx.op.unary.f32(i32 21, float %1543)  ; Exp(value)
  %1547 = call float @dx.op.unary.f32(i32 21, float %1544)  ; Exp(value)
  %1548 = fmul fast float %1545, 1.868750e+01
  %1549 = fmul fast float %1546, 1.868750e+01
  %1550 = fmul fast float %1547, 1.868750e+01
  %1551 = fsub fast float 0x4032DA0000000000, %1548
  %1552 = fsub fast float 0x4032DA0000000000, %1549
  %1553 = fsub fast float 0x4032DA0000000000, %1550
  %1554 = fadd fast float %1545, -8.359375e-01
  %1555 = fadd fast float %1546, -8.359375e-01
  %1556 = fadd fast float %1547, -8.359375e-01
  %1557 = call float @dx.op.binary.f32(i32 35, float %1554, float 0.000000e+00)  ; FMax(a,b)
  %1558 = call float @dx.op.binary.f32(i32 35, float %1555, float 0.000000e+00)  ; FMax(a,b)
  %1559 = call float @dx.op.binary.f32(i32 35, float %1556, float 0.000000e+00)  ; FMax(a,b)
  %1560 = fdiv fast float %1557, %1551
  %1561 = fdiv fast float %1558, %1552
  %1562 = fdiv fast float %1559, %1553
  %1563 = call float @dx.op.unary.f32(i32 23, float %1560)  ; Log(value)
  %1564 = call float @dx.op.unary.f32(i32 23, float %1561)  ; Log(value)
  %1565 = call float @dx.op.unary.f32(i32 23, float %1562)  ; Log(value)
  %1566 = fmul fast float %1563, 0x40191C0D60000000
  %1567 = fmul fast float %1564, 0x40191C0D60000000
  %1568 = fmul fast float %1565, 0x40191C0D60000000
  %1569 = call float @dx.op.unary.f32(i32 21, float %1566)  ; Exp(value)
  %1570 = call float @dx.op.unary.f32(i32 21, float %1567)  ; Exp(value)
  %1571 = call float @dx.op.unary.f32(i32 21, float %1568)  ; Exp(value)
  %1572 = fmul fast float %1570, 1.000000e+04
  %1573 = fmul fast float %1571, 1.000000e+04
  %1574 = fmul fast float %1569, 0x40E0C7C340000000
  %1575 = call float @dx.op.tertiary.f32(i32 46, float 0xC0040D35A0000000, float %1572, float %1574)  ; FMad(a,b,c)
  %1576 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB1E16360000000, float %1573, float %1575)  ; FMad(a,b,c)
  %1577 = fmul fast float %1569, 0xC0BEE94CC0000000
  %1578 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFFBCD360000000, float %1572, float %1577)  ; FMad(a,b,c)
  %1579 = call float @dx.op.tertiary.f32(i32 46, float 0xBFC89C5600000000, float %1573, float %1578)  ; FMad(a,b,c)
  %1580 = fmul fast float %1569, 0xC07037FBE0000000
  %1581 = call float @dx.op.tertiary.f32(i32 46, float 0xBFB9526880000000, float %1572, float %1580)  ; FMad(a,b,c)
  %1582 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF1FF6D40000000, float %1573, float %1581)  ; FMad(a,b,c)
  %1583 = fcmp fast ogt float %227, 0.000000e+00
  br i1 %1583, label %1584, label %1609, !dx.controlflow.hints !50

; <label>:1584                                    ; preds = %1521
  %1585 = fmul fast float %1354, 0x3FFA916880000000
  %1586 = call float @dx.op.tertiary.f32(i32 46, float 0xBFE2CE7040000000, float %1355, float %1585)  ; FMad(a,b,c)
  %1587 = call float @dx.op.tertiary.f32(i32 46, float 0xBFB2A30560000000, float %1356, float %1586)  ; FMad(a,b,c)
  %1588 = fmul fast float %1354, 0xBFBFE5C920000000
  %1589 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF220C4A0000000, float %1355, float %1588)  ; FMad(a,b,c)
  %1590 = call float @dx.op.tertiary.f32(i32 46, float 0xBF813404E0000000, float %1356, float %1589)  ; FMad(a,b,c)
  %1591 = fmul fast float %1354, 0xBF92A30560000000
  %1592 = call float @dx.op.tertiary.f32(i32 46, float 0xBFB9C0EBE0000000, float %1355, float %1591)  ; FMad(a,b,c)
  %1593 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF1E63200000000, float %1356, float %1592)  ; FMad(a,b,c)
  %1594 = call float @dx.op.unary.f32(i32 7, float %1587)  ; Saturate(value)
  %1595 = call float @dx.op.unary.f32(i32 7, float %1590)  ; Saturate(value)
  %1596 = call float @dx.op.unary.f32(i32 7, float %1593)  ; Saturate(value)
  %1597 = fmul fast float %1594, 0x3FE413A920000000
  %1598 = call float @dx.op.tertiary.f32(i32 46, float 0x3FD5134040000000, float %1595, float %1597)  ; FMad(a,b,c)
  %1599 = call float @dx.op.tertiary.f32(i32 46, float 0x3FA62B6AE0000000, float %1596, float %1598)  ; FMad(a,b,c)
  %1600 = fmul fast float %1594, 0x3FB1B089A0000000
  %1601 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED6C8B40000000, float %1595, float %1600)  ; FMad(a,b,c)
  %1602 = call float @dx.op.tertiary.f32(i32 46, float 0x3F8758E220000000, float %1596, float %1601)  ; FMad(a,b,c)
  %1603 = fmul fast float %1594, 0x3F90CB2960000000
  %1604 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB6872B00000000, float %1595, float %1603)  ; FMad(a,b,c)
  %1605 = call float @dx.op.tertiary.f32(i32 46, float 0x3FECA8C160000000, float %1596, float %1604)  ; FMad(a,b,c)
  %1606 = fmul fast float %1599, %227
  %1607 = fmul fast float %1602, %227
  %1608 = fmul fast float %1605, %227
  br label %1609

; <label>:1609                                    ; preds = %1584, %1521
  %1610 = phi float [ %1606, %1584 ], [ %1576, %1521 ]
  %1611 = phi float [ %1607, %1584 ], [ %1579, %1521 ]
  %1612 = phi float [ %1608, %1584 ], [ %1582, %1521 ]
  %1613 = fmul fast float %1610, 0x3F1A36E2E0000000
  %1614 = fmul fast float %1611, 0x3F1A36E2E0000000
  %1615 = fmul fast float %1612, 0x3F1A36E2E0000000
  %1616 = call float @dx.op.unary.f32(i32 23, float %1613)  ; Log(value)
  %1617 = call float @dx.op.unary.f32(i32 23, float %1614)  ; Log(value)
  %1618 = call float @dx.op.unary.f32(i32 23, float %1615)  ; Log(value)
  %1619 = fmul fast float %1616, 0x3FC4640000000000
  %1620 = fmul fast float %1617, 0x3FC4640000000000
  %1621 = fmul fast float %1618, 0x3FC4640000000000
  %1622 = call float @dx.op.unary.f32(i32 21, float %1619)  ; Exp(value)
  %1623 = call float @dx.op.unary.f32(i32 21, float %1620)  ; Exp(value)
  %1624 = call float @dx.op.unary.f32(i32 21, float %1621)  ; Exp(value)
  %1625 = fmul fast float %1622, 0x4032DA0000000000
  %1626 = fmul fast float %1623, 0x4032DA0000000000
  %1627 = fmul fast float %1624, 0x4032DA0000000000
  %1628 = fadd fast float %1625, 8.359375e-01
  %1629 = fadd fast float %1626, 8.359375e-01
  %1630 = fadd fast float %1627, 8.359375e-01
  %1631 = fmul fast float %1622, 1.868750e+01
  %1632 = fmul fast float %1623, 1.868750e+01
  %1633 = fmul fast float %1624, 1.868750e+01
  %1634 = fadd fast float %1631, 1.000000e+00
  %1635 = fadd fast float %1632, 1.000000e+00
  %1636 = fadd fast float %1633, 1.000000e+00
  %1637 = fdiv fast float %1628, %1634
  %1638 = fdiv fast float %1629, %1635
  %1639 = fdiv fast float %1630, %1636
  %1640 = call float @dx.op.unary.f32(i32 23, float %1637)  ; Log(value)
  %1641 = call float @dx.op.unary.f32(i32 23, float %1638)  ; Log(value)
  %1642 = call float @dx.op.unary.f32(i32 23, float %1639)  ; Log(value)
  %1643 = fmul fast float %1640, 7.884375e+01
  %1644 = fmul fast float %1641, 7.884375e+01
  %1645 = fmul fast float %1642, 7.884375e+01
  %1646 = call float @dx.op.unary.f32(i32 21, float %1643)  ; Exp(value)
  %1647 = call float @dx.op.unary.f32(i32 21, float %1644)  ; Exp(value)
  %1648 = call float @dx.op.unary.f32(i32 21, float %1645)  ; Exp(value)
  br label %1882

; <label>:1649                                    ; preds = %1345
  %1650 = fmul fast float %1257, 0x40B0191700000000
  %1651 = call float @dx.op.tertiary.f32(i32 46, float 0x3FE0C40080000000, float %1261, float %1650)  ; FMad(a,b,c)
  %1652 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB05FFF40000000, float %1262, float %1651)  ; FMad(a,b,c)
  %1653 = fmul fast float %1257, 0x409A0DEB80000000
  %1654 = call float @dx.op.tertiary.f32(i32 46, float 0x3FE70E0000000000, float %1261, float %1653)  ; FMad(a,b,c)
  %1655 = call float @dx.op.tertiary.f32(i32 46, float 0x3FBCE00080000000, float %1262, float %1654)  ; FMad(a,b,c)
  %1656 = fmul fast float %1257, 0x406E365E20000000
  %1657 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB35000C0000000, float %1261, float %1656)  ; FMad(a,b,c)
  %1658 = call float @dx.op.tertiary.f32(i32 46, float 0x3FECD000C0000000, float %1262, float %1657)  ; FMad(a,b,c)
  %1659 = fmul fast float %1652, 0x3F1A36E2E0000000
  %1660 = fmul fast float %1655, 0x3F1A36E2E0000000
  %1661 = fmul fast float %1658, 0x3F1A36E2E0000000
  %1662 = call float @dx.op.unary.f32(i32 23, float %1659)  ; Log(value)
  %1663 = call float @dx.op.unary.f32(i32 23, float %1660)  ; Log(value)
  %1664 = call float @dx.op.unary.f32(i32 23, float %1661)  ; Log(value)
  %1665 = fmul fast float %1662, 0x3FC4640000000000
  %1666 = fmul fast float %1663, 0x3FC4640000000000
  %1667 = fmul fast float %1664, 0x3FC4640000000000
  %1668 = call float @dx.op.unary.f32(i32 21, float %1665)  ; Exp(value)
  %1669 = call float @dx.op.unary.f32(i32 21, float %1666)  ; Exp(value)
  %1670 = call float @dx.op.unary.f32(i32 21, float %1667)  ; Exp(value)
  %1671 = fmul fast float %1668, 0x4032DA0000000000
  %1672 = fmul fast float %1669, 0x4032DA0000000000
  %1673 = fmul fast float %1670, 0x4032DA0000000000
  %1674 = fadd fast float %1671, 8.359375e-01
  %1675 = fadd fast float %1672, 8.359375e-01
  %1676 = fadd fast float %1673, 8.359375e-01
  %1677 = fmul fast float %1668, 1.868750e+01
  %1678 = fmul fast float %1669, 1.868750e+01
  %1679 = fmul fast float %1670, 1.868750e+01
  %1680 = fadd fast float %1677, 1.000000e+00
  %1681 = fadd fast float %1678, 1.000000e+00
  %1682 = fadd fast float %1679, 1.000000e+00
  %1683 = fdiv fast float %1674, %1680
  %1684 = fdiv fast float %1675, %1681
  %1685 = fdiv fast float %1676, %1682
  %1686 = call float @dx.op.unary.f32(i32 23, float %1683)  ; Log(value)
  %1687 = call float @dx.op.unary.f32(i32 23, float %1684)  ; Log(value)
  %1688 = call float @dx.op.unary.f32(i32 23, float %1685)  ; Log(value)
  %1689 = fmul fast float %1686, 7.884375e+01
  %1690 = fmul fast float %1687, 7.884375e+01
  %1691 = fmul fast float %1688, 7.884375e+01
  %1692 = call float @dx.op.unary.f32(i32 21, float %1689)  ; Exp(value)
  %1693 = call float @dx.op.unary.f32(i32 21, float %1690)  ; Exp(value)
  %1694 = call float @dx.op.unary.f32(i32 21, float %1691)  ; Exp(value)
  %1695 = fadd fast float %1693, %1692
  %1696 = fmul fast float %1695, 5.000000e-01
  %1697 = fmul fast float %1692, 0x3FF9D20000000000
  %1698 = fmul fast float %1693, 0x400A968000000000
  %1699 = fsub fast float %1697, %1698
  %1700 = fmul fast float %1694, 0x3FFB5B0000000000
  %1701 = fadd fast float %1699, %1700
  %1702 = fmul fast float %1692, 0x4011834000000000
  %1703 = fmul fast float %1693, 0x4010FB8000000000
  %1704 = fsub fast float %1702, %1703
  %1705 = fmul fast float %1694, 0x3FC0F80000000000
  %1706 = fsub fast float %1704, %1705
  %1707 = fmul fast float %223, 1.500000e+00
  %1708 = fadd fast float %1707, -5.000000e-01
  %1709 = fcmp fast ugt float %1696, 0.000000e+00
  br i1 %1709, label %1710, label %1741, !dx.controlflow.hints !47

; <label>:1710                                    ; preds = %1649
  %1711 = fcmp fast ult float %1696, 1.000000e+00
  br i1 %1711, label %1712, label %1741, !dx.controlflow.hints !48

; <label>:1712                                    ; preds = %1710
  %1713 = call float @dx.op.unary.f32(i32 7, float %1696)  ; Saturate(value)
  %1714 = fcmp fast ult float %1713, %1708
  br i1 %1714, label %1734, label %1715, !dx.controlflow.hints !49

; <label>:1715                                    ; preds = %1712
  %1716 = fsub fast float %1696, %1708
  %1717 = fsub fast float 1.500000e+00, %1707
  %1718 = fdiv fast float %1716, %1717
  %1719 = fmul fast float %1718, %1718
  %1720 = fmul fast float %1719, %1718
  %1721 = fmul fast float %1720, 2.000000e+00
  %1722 = fmul fast float %1719, 3.000000e+00
  %1723 = fsub fast float 1.000000e+00, %1722
  %1724 = fadd fast float %1723, %1721
  %1725 = fmul fast float %1724, %1708
  %1726 = fadd fast float %1718, -2.000000e+00
  %1727 = fmul fast float %1719, %1726
  %1728 = fadd fast float %1727, %1718
  %1729 = fmul fast float %1728, %1717
  %1730 = fsub fast float %1722, %1721
  %1731 = fmul fast float %1730, %223
  %1732 = fadd fast float %1731, %1729
  %1733 = fadd fast float %1732, %1725
  br label %1734

; <label>:1734                                    ; preds = %1715, %1712
  %1735 = phi float [ %1733, %1715 ], [ %1713, %1712 ]
  %1736 = fsub fast float 1.000000e+00, %1735
  %1737 = fmul fast float %1736, %1736
  %1738 = fmul fast float %1737, %1737
  %1739 = fmul fast float %1738, %222
  %1740 = fadd fast float %1739, %1735
  br label %1741

; <label>:1741                                    ; preds = %1734, %1710, %1649
  %1742 = phi float [ %1740, %1734 ], [ %222, %1649 ], [ %223, %1710 ]
  %1743 = fdiv fast float %1742, %1696
  %1744 = fdiv fast float %1696, %1742
  %1745 = call float @dx.op.binary.f32(i32 36, float %1744, float %1743)  ; FMin(a,b)
  %1746 = fmul fast float %1745, %1745
  %1747 = fmul fast float %1746, %1701
  %1748 = fmul fast float %1746, %1706
  %1749 = fmul fast float %1747, 0x3F81A19D60000000
  %1750 = fadd fast float %1749, %1742
  %1751 = fmul fast float %1748, 0x3FBC6C7000000000
  %1752 = fadd fast float %1750, %1751
  %1753 = fsub fast float %1742, %1749
  %1754 = fsub fast float %1753, %1751
  %1755 = fmul fast float %1747, 0x3FE1EBC6E0000000
  %1756 = fadd fast float %1755, %1742
  %1757 = fmul fast float %1748, 0x3FD48527E0000000
  %1758 = fsub fast float %1756, %1757
  %1759 = call float @dx.op.unary.f32(i32 23, float %1752)  ; Log(value)
  %1760 = call float @dx.op.unary.f32(i32 23, float %1754)  ; Log(value)
  %1761 = call float @dx.op.unary.f32(i32 23, float %1758)  ; Log(value)
  %1762 = fmul fast float %1759, 0x3F89F9B580000000
  %1763 = fmul fast float %1760, 0x3F89F9B580000000
  %1764 = fmul fast float %1761, 0x3F89F9B580000000
  %1765 = call float @dx.op.unary.f32(i32 21, float %1762)  ; Exp(value)
  %1766 = call float @dx.op.unary.f32(i32 21, float %1763)  ; Exp(value)
  %1767 = call float @dx.op.unary.f32(i32 21, float %1764)  ; Exp(value)
  %1768 = fmul fast float %1765, 1.868750e+01
  %1769 = fmul fast float %1766, 1.868750e+01
  %1770 = fmul fast float %1767, 1.868750e+01
  %1771 = fsub fast float 0x4032DA0000000000, %1768
  %1772 = fsub fast float 0x4032DA0000000000, %1769
  %1773 = fsub fast float 0x4032DA0000000000, %1770
  %1774 = fadd fast float %1765, -8.359375e-01
  %1775 = fadd fast float %1766, -8.359375e-01
  %1776 = fadd fast float %1767, -8.359375e-01
  %1777 = call float @dx.op.binary.f32(i32 35, float %1774, float 0.000000e+00)  ; FMax(a,b)
  %1778 = call float @dx.op.binary.f32(i32 35, float %1775, float 0.000000e+00)  ; FMax(a,b)
  %1779 = call float @dx.op.binary.f32(i32 35, float %1776, float 0.000000e+00)  ; FMax(a,b)
  %1780 = fdiv fast float %1777, %1771
  %1781 = fdiv fast float %1778, %1772
  %1782 = fdiv fast float %1779, %1773
  %1783 = call float @dx.op.unary.f32(i32 23, float %1780)  ; Log(value)
  %1784 = call float @dx.op.unary.f32(i32 23, float %1781)  ; Log(value)
  %1785 = call float @dx.op.unary.f32(i32 23, float %1782)  ; Log(value)
  %1786 = fmul fast float %1783, 0x40191C0D60000000
  %1787 = fmul fast float %1784, 0x40191C0D60000000
  %1788 = fmul fast float %1785, 0x40191C0D60000000
  %1789 = call float @dx.op.unary.f32(i32 21, float %1786)  ; Exp(value)
  %1790 = call float @dx.op.unary.f32(i32 21, float %1787)  ; Exp(value)
  %1791 = call float @dx.op.unary.f32(i32 21, float %1788)  ; Exp(value)
  %1792 = fmul fast float %1790, 1.000000e+04
  %1793 = fmul fast float %1791, 1.000000e+04
  %1794 = fmul fast float %1789, 0x40E0C7C340000000
  %1795 = call float @dx.op.tertiary.f32(i32 46, float 0xC0040D35A0000000, float %1792, float %1794)  ; FMad(a,b,c)
  %1796 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB1E16360000000, float %1793, float %1795)  ; FMad(a,b,c)
  %1797 = fmul fast float %1789, 0xC0BEE94CC0000000
  %1798 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFFBCD360000000, float %1792, float %1797)  ; FMad(a,b,c)
  %1799 = call float @dx.op.tertiary.f32(i32 46, float 0xBFC89C5600000000, float %1793, float %1798)  ; FMad(a,b,c)
  %1800 = fmul fast float %1789, 0xC07037FBE0000000
  %1801 = call float @dx.op.tertiary.f32(i32 46, float 0xBFB9526880000000, float %1792, float %1800)  ; FMad(a,b,c)
  %1802 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF1FF6D40000000, float %1793, float %1801)  ; FMad(a,b,c)
  %1803 = fcmp fast ogt float %227, 0.000000e+00
  br i1 %1803, label %1804, label %1842, !dx.controlflow.hints !51

; <label>:1804                                    ; preds = %1741
  %1805 = fmul fast float %1354, 0x3FFA916880000000
  %1806 = call float @dx.op.tertiary.f32(i32 46, float 0xBFE2CE7040000000, float %1355, float %1805)  ; FMad(a,b,c)
  %1807 = call float @dx.op.tertiary.f32(i32 46, float 0xBFB2A30560000000, float %1356, float %1806)  ; FMad(a,b,c)
  %1808 = fmul fast float %1354, 0xBFBFE5C920000000
  %1809 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF220C4A0000000, float %1355, float %1808)  ; FMad(a,b,c)
  %1810 = call float @dx.op.tertiary.f32(i32 46, float 0xBF813404E0000000, float %1356, float %1809)  ; FMad(a,b,c)
  %1811 = fmul fast float %1354, 0xBF92A30560000000
  %1812 = call float @dx.op.tertiary.f32(i32 46, float 0xBFB9C0EBE0000000, float %1355, float %1811)  ; FMad(a,b,c)
  %1813 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF1E63200000000, float %1356, float %1812)  ; FMad(a,b,c)
  %1814 = call float @dx.op.unary.f32(i32 7, float %1807)  ; Saturate(value)
  %1815 = call float @dx.op.unary.f32(i32 7, float %1810)  ; Saturate(value)
  %1816 = call float @dx.op.unary.f32(i32 7, float %1813)  ; Saturate(value)
  %1817 = fmul fast float %1814, 0x3FEA519BC0000000
  %1818 = call float @dx.op.tertiary.f32(i32 46, float 0x3FC6B990A0000000, float %1815, float %1817)  ; FMad(a,b,c)
  %1819 = fmul fast float %1814, 0x3FA0FED480000000
  %1820 = call float @dx.op.tertiary.f32(i32 46, float 0x3FEEF012C0000000, float %1815, float %1819)  ; FMad(a,b,c)
  %1821 = fmul fast float %1814, 0x3F917E1C00000000
  %1822 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB288A2E0000000, float %1815, float %1821)  ; FMad(a,b,c)
  %1823 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED22FAA0000000, float %1816, float %1822)  ; FMad(a,b,c)
  %1824 = call float @dx.op.binary.f32(i32 35, float %1814, float %1815)  ; FMax(a,b)
  %1825 = call float @dx.op.binary.f32(i32 35, float %1824, float %1816)  ; FMax(a,b)
  %1826 = fadd fast float %1825, -1.000000e+00
  %1827 = fmul fast float %1826, 2.500000e-01
  %1828 = call float @dx.op.unary.f32(i32 7, float %1827)  ; Saturate(value)
  %1829 = fsub fast float 1.000000e+00, %1828
  %1830 = fmul fast float %1829, %1818
  %1831 = fmul fast float %1829, %1820
  %1832 = fmul fast float %1829, %1823
  %1833 = fmul fast float %1828, %1814
  %1834 = fmul fast float %1828, %1815
  %1835 = fmul fast float %1828, %1816
  %1836 = fadd fast float %1830, %1833
  %1837 = fadd fast float %1831, %1834
  %1838 = fadd fast float %1832, %1835
  %1839 = fmul fast float %1836, %227
  %1840 = fmul fast float %1837, %227
  %1841 = fmul fast float %1838, %227
  br label %1842

; <label>:1842                                    ; preds = %1804, %1741
  %1843 = phi float [ %1839, %1804 ], [ %1796, %1741 ]
  %1844 = phi float [ %1840, %1804 ], [ %1799, %1741 ]
  %1845 = phi float [ %1841, %1804 ], [ %1802, %1741 ]
  %1846 = fmul fast float %1843, 0x3F1A36E2E0000000
  %1847 = fmul fast float %1844, 0x3F1A36E2E0000000
  %1848 = fmul fast float %1845, 0x3F1A36E2E0000000
  %1849 = call float @dx.op.unary.f32(i32 23, float %1846)  ; Log(value)
  %1850 = call float @dx.op.unary.f32(i32 23, float %1847)  ; Log(value)
  %1851 = call float @dx.op.unary.f32(i32 23, float %1848)  ; Log(value)
  %1852 = fmul fast float %1849, 0x3FC4640000000000
  %1853 = fmul fast float %1850, 0x3FC4640000000000
  %1854 = fmul fast float %1851, 0x3FC4640000000000
  %1855 = call float @dx.op.unary.f32(i32 21, float %1852)  ; Exp(value)
  %1856 = call float @dx.op.unary.f32(i32 21, float %1853)  ; Exp(value)
  %1857 = call float @dx.op.unary.f32(i32 21, float %1854)  ; Exp(value)
  %1858 = fmul fast float %1855, 0x4032DA0000000000
  %1859 = fmul fast float %1856, 0x4032DA0000000000
  %1860 = fmul fast float %1857, 0x4032DA0000000000
  %1861 = fadd fast float %1858, 8.359375e-01
  %1862 = fadd fast float %1859, 8.359375e-01
  %1863 = fadd fast float %1860, 8.359375e-01
  %1864 = fmul fast float %1855, 1.868750e+01
  %1865 = fmul fast float %1856, 1.868750e+01
  %1866 = fmul fast float %1857, 1.868750e+01
  %1867 = fadd fast float %1864, 1.000000e+00
  %1868 = fadd fast float %1865, 1.000000e+00
  %1869 = fadd fast float %1866, 1.000000e+00
  %1870 = fdiv fast float %1861, %1867
  %1871 = fdiv fast float %1862, %1868
  %1872 = fdiv fast float %1863, %1869
  %1873 = call float @dx.op.unary.f32(i32 23, float %1870)  ; Log(value)
  %1874 = call float @dx.op.unary.f32(i32 23, float %1871)  ; Log(value)
  %1875 = call float @dx.op.unary.f32(i32 23, float %1872)  ; Log(value)
  %1876 = fmul fast float %1873, 7.884375e+01
  %1877 = fmul fast float %1874, 7.884375e+01
  %1878 = fmul fast float %1875, 7.884375e+01
  %1879 = call float @dx.op.unary.f32(i32 21, float %1876)  ; Exp(value)
  %1880 = call float @dx.op.unary.f32(i32 21, float %1877)  ; Exp(value)
  %1881 = call float @dx.op.unary.f32(i32 21, float %1878)  ; Exp(value)
  br label %1882

; <label>:1882                                    ; preds = %1842, %1609, %1415
  %1883 = phi float [ %1426, %1415 ], [ %1646, %1609 ], [ %1879, %1842 ]
  %1884 = phi float [ %1427, %1415 ], [ %1647, %1609 ], [ %1880, %1842 ]
  %1885 = phi float [ %1428, %1415 ], [ %1648, %1609 ], [ %1881, %1842 ]
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %4, i32 %5, i32 %6, float %1883, float %1884, float %1885, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1886

; <label>:1886                                    ; preds = %1882, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #1

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

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
!dx.entryPoints = !{!15}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !8, !11, !13}
!5 = !{!6}
!6 = !{i32 0, [8 x %"class.Texture3D<vector<float, 4> >"]* undef, !"", i32 0, i32 0, i32 8, i32 4, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{!9}
!9 = !{i32 0, %"class.RWTexture3D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 4, i1 false, i1 false, i1 false, !10}
!10 = !{i32 0, i32 14}
!11 = !{!12}
!12 = !{i32 0, %GfxUniversalClutGenerateConsts* undef, !"", i32 0, i32 0, i32 1, i32 368, null}
!13 = !{!14}
!14 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!15 = !{void ()* @cs_universal_clut_generate, !"cs_universal_clut_generate", null, !4, !16}
!16 = !{i32 0, i64 256, i32 4, !17}
!17 = !{i32 8, i32 8, i32 1}
!18 = distinct !{!18, !"dx.controlflow.hints", i32 2}
!19 = distinct !{!19, !"dx.controlflow.hints", i32 2}
!20 = distinct !{!20, !"dx.controlflow.hints", i32 2}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = !{!25, !25, i64 0}
!25 = !{!"float", !26, i64 0}
!26 = !{!"omnipotent char", !27, i64 0}
!27 = !{!"Simple C/C++ TBAA"}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}

