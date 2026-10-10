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
; shader hash: ddae6c43d39081510a1e1399e4d7c38d
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
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb0     1
;                                       UAVunorm_f32          3d      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%"class.RWTexture3D<vector<float, 4> >" = type { <4 x float> }
%GfxUIClutGenerateConsts = type { i32, i32, i32, i32, float, float, float, i32 }

define void @cs_ui_clut_generate() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %4 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %5 = call i32 @dx.op.threadId.i32(i32 93, i32 2)  ; ThreadId(component)
  %6 = or i32 %4, %3
  %7 = or i32 %6, %5
  %8 = icmp ugt i32 %7, 31
  br i1 %8, label %311, label %9, !dx.controlflow.hints !13

; <label>:9                                       ; preds = %0
  %10 = uitofp i32 %3 to float
  %11 = uitofp i32 %4 to float
  %12 = uitofp i32 %5 to float
  %13 = fmul fast float %10, 0x3FA0842100000000
  %14 = fmul fast float %11, 0x3FA0842100000000
  %15 = fmul fast float %12, 0x3FA0842100000000
  %16 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %2, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %17 = extractvalue %dx.types.CBufRet.i32 %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23, !dx.controlflow.hints !14

; <label>:19                                      ; preds = %9
  %20 = fmul fast float %13, %13
  %21 = fmul fast float %14, %14
  %22 = fmul fast float %15, %15
  br label %48

; <label>:23                                      ; preds = %9
  %24 = fcmp fast ole float %13, 0x3FA4B5DCC0000000
  %25 = fcmp fast ole float %14, 0x3FA4B5DCC0000000
  %26 = fcmp fast ole float %15, 0x3FA4B5DCC0000000
  %27 = fmul fast float %10, 0x3F647412A0000000
  %28 = fmul fast float %11, 0x3F647412A0000000
  %29 = fmul fast float %12, 0x3F647412A0000000
  %30 = fmul fast float %10, 0x3F9F4F6920000000
  %31 = fadd fast float %30, 0x3FAAB12340000000
  %32 = fmul fast float %11, 0x3F9F4F6920000000
  %33 = fadd fast float %32, 0x3FAAB12340000000
  %34 = fmul fast float %12, 0x3F9F4F6920000000
  %35 = fadd fast float %34, 0x3FAAB12340000000
  %36 = call float @dx.op.unary.f32(i32 23, float %31)  ; Log(value)
  %37 = call float @dx.op.unary.f32(i32 23, float %33)  ; Log(value)
  %38 = call float @dx.op.unary.f32(i32 23, float %35)  ; Log(value)
  %39 = fmul fast float %36, 0x4003333340000000
  %40 = fmul fast float %37, 0x4003333340000000
  %41 = fmul fast float %38, 0x4003333340000000
  %42 = call float @dx.op.unary.f32(i32 21, float %39)  ; Exp(value)
  %43 = call float @dx.op.unary.f32(i32 21, float %40)  ; Exp(value)
  %44 = call float @dx.op.unary.f32(i32 21, float %41)  ; Exp(value)
  %45 = select i1 %24, float %27, float %42
  %46 = select i1 %25, float %28, float %43
  %47 = select i1 %26, float %29, float %44
  br label %48

; <label>:48                                      ; preds = %23, %19
  %49 = phi float [ %20, %19 ], [ %45, %23 ]
  %50 = phi float [ %21, %19 ], [ %46, %23 ]
  %51 = phi float [ %22, %19 ], [ %47, %23 ]
  %52 = extractvalue %dx.types.CBufRet.i32 %16, 1
  switch i32 %52, label %307 [
    i32 1, label %53
    i32 2, label %53
    i32 0, label %53
    i32 3, label %84
    i32 4, label %190
  ], !dx.controlflow.hints !15

; <label>:53                                      ; preds = %48, %48, %48
  %54 = call float @dx.op.unary.f32(i32 7, float %49)  ; Saturate(value)
  %55 = call float @dx.op.unary.f32(i32 7, float %50)  ; Saturate(value)
  %56 = call float @dx.op.unary.f32(i32 7, float %51)  ; Saturate(value)
  %57 = call float @dx.op.unary.f32(i32 23, float %54)  ; Log(value)
  %58 = call float @dx.op.unary.f32(i32 23, float %55)  ; Log(value)
  %59 = call float @dx.op.unary.f32(i32 23, float %56)  ; Log(value)
  %60 = fmul fast float %57, 0x3FDAAAAAA0000000
  %61 = fmul fast float %58, 0x3FDAAAAAA0000000
  %62 = fmul fast float %59, 0x3FDAAAAAA0000000
  %63 = call float @dx.op.unary.f32(i32 21, float %60)  ; Exp(value)
  %64 = call float @dx.op.unary.f32(i32 21, float %61)  ; Exp(value)
  %65 = call float @dx.op.unary.f32(i32 21, float %62)  ; Exp(value)
  %66 = fmul fast float %63, 0x3FF0E147A0000000
  %67 = fmul fast float %64, 0x3FF0E147A0000000
  %68 = fmul fast float %65, 0x3FF0E147A0000000
  %69 = fadd fast float %66, 0xBFAC28F5C0000000
  %70 = fadd fast float %67, 0xBFAC28F5C0000000
  %71 = fadd fast float %68, 0xBFAC28F5C0000000
  %72 = call float @dx.op.unary.f32(i32 7, float %69)  ; Saturate(value)
  %73 = call float @dx.op.unary.f32(i32 7, float %70)  ; Saturate(value)
  %74 = call float @dx.op.unary.f32(i32 7, float %71)  ; Saturate(value)
  %75 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %2, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %76 = extractvalue %dx.types.CBufRet.f32 %75, 1
  %77 = fmul fast float %76, %72
  %78 = fmul fast float %76, %73
  %79 = fmul fast float %76, %74
  %80 = extractvalue %dx.types.CBufRet.f32 %75, 2
  %81 = fadd fast float %77, %80
  %82 = fadd fast float %78, %80
  %83 = fadd fast float %79, %80
  br label %307

; <label>:84                                      ; preds = %48
  %85 = call float @dx.op.unary.f32(i32 7, float %49)  ; Saturate(value)
  %86 = call float @dx.op.unary.f32(i32 7, float %50)  ; Saturate(value)
  %87 = call float @dx.op.unary.f32(i32 7, float %51)  ; Saturate(value)
  %88 = call float @dx.op.unary.f32(i32 23, float %85)  ; Log(value)
  %89 = call float @dx.op.unary.f32(i32 23, float %86)  ; Log(value)
  %90 = call float @dx.op.unary.f32(i32 23, float %87)  ; Log(value)
  %91 = fmul fast float %88, 0x3FDAAAAAA0000000
  %92 = fmul fast float %89, 0x3FDAAAAAA0000000
  %93 = fmul fast float %90, 0x3FDAAAAAA0000000
  %94 = call float @dx.op.unary.f32(i32 21, float %91)  ; Exp(value)
  %95 = call float @dx.op.unary.f32(i32 21, float %92)  ; Exp(value)
  %96 = call float @dx.op.unary.f32(i32 21, float %93)  ; Exp(value)
  %97 = fmul fast float %94, 0x3FF0E147A0000000
  %98 = fmul fast float %95, 0x3FF0E147A0000000
  %99 = fmul fast float %96, 0x3FF0E147A0000000
  %100 = fadd fast float %97, 0xBFAC28F5C0000000
  %101 = fadd fast float %98, 0xBFAC28F5C0000000
  %102 = fadd fast float %99, 0xBFAC28F5C0000000
  %103 = call float @dx.op.unary.f32(i32 7, float %100)  ; Saturate(value)
  %104 = call float @dx.op.unary.f32(i32 7, float %101)  ; Saturate(value)
  %105 = call float @dx.op.unary.f32(i32 7, float %102)  ; Saturate(value)
  %106 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %107 = fmul fast float %106, 0x3FDAAAAAA0000000
  %108 = call float @dx.op.unary.f32(i32 21, float %107)  ; Exp(value)
  %109 = fsub fast float 1.000000e+00, %108
  %110 = call float @dx.op.unary.f32(i32 23, float %109)  ; Log(value)
  %111 = fmul fast float %110, 0x4003333340000000
  %112 = call float @dx.op.unary.f32(i32 21, float %111)  ; Exp(value)
  %113 = fdiv fast float %108, %109
  %114 = fadd fast float %113, %103
  %115 = fadd fast float %113, %104
  %116 = fadd fast float %113, %105
  %117 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %114)  ; FMax(a,b)
  %118 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %115)  ; FMax(a,b)
  %119 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %116)  ; FMax(a,b)
  %120 = call float @dx.op.unary.f32(i32 23, float %117)  ; Log(value)
  %121 = call float @dx.op.unary.f32(i32 23, float %118)  ; Log(value)
  %122 = call float @dx.op.unary.f32(i32 23, float %119)  ; Log(value)
  %123 = fmul fast float %120, 0x4003333340000000
  %124 = fmul fast float %121, 0x4003333340000000
  %125 = fmul fast float %122, 0x4003333340000000
  %126 = call float @dx.op.unary.f32(i32 21, float %123)  ; Exp(value)
  %127 = call float @dx.op.unary.f32(i32 21, float %124)  ; Exp(value)
  %128 = call float @dx.op.unary.f32(i32 21, float %125)  ; Exp(value)
  %129 = fmul fast float %126, %112
  %130 = fmul fast float %127, %112
  %131 = fmul fast float %128, %112
  %132 = fmul fast float %129, 0x3FE413A920000000
  %133 = call float @dx.op.tertiary.f32(i32 46, float 0x3FD5134040000000, float %130, float %132)  ; FMad(a,b,c)
  %134 = call float @dx.op.tertiary.f32(i32 46, float 0x3FA62B6AE0000000, float %131, float %133)  ; FMad(a,b,c)
  %135 = fmul fast float %129, 0x3FB1B089A0000000
  %136 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED6C8B40000000, float %130, float %135)  ; FMad(a,b,c)
  %137 = call float @dx.op.tertiary.f32(i32 46, float 0x3F8758E220000000, float %131, float %136)  ; FMad(a,b,c)
  %138 = fmul fast float %129, 0x3F90CB2960000000
  %139 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB6872B00000000, float %130, float %138)  ; FMad(a,b,c)
  %140 = call float @dx.op.tertiary.f32(i32 46, float 0x3FECA8C160000000, float %131, float %139)  ; FMad(a,b,c)
  %141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %2, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %142 = extractvalue %dx.types.CBufRet.f32 %141, 0
  %143 = fmul fast float %134, 0x3F1A36E2E0000000
  %144 = fmul fast float %143, %142
  %145 = fmul fast float %137, 0x3F1A36E2E0000000
  %146 = fmul fast float %145, %142
  %147 = fmul fast float %140, 0x3F1A36E2E0000000
  %148 = fmul fast float %147, %142
  %149 = call float @dx.op.unary.f32(i32 23, float %144)  ; Log(value)
  %150 = call float @dx.op.unary.f32(i32 23, float %146)  ; Log(value)
  %151 = call float @dx.op.unary.f32(i32 23, float %148)  ; Log(value)
  %152 = fmul fast float %149, 0x3FC4640000000000
  %153 = fmul fast float %150, 0x3FC4640000000000
  %154 = fmul fast float %151, 0x3FC4640000000000
  %155 = call float @dx.op.unary.f32(i32 21, float %152)  ; Exp(value)
  %156 = call float @dx.op.unary.f32(i32 21, float %153)  ; Exp(value)
  %157 = call float @dx.op.unary.f32(i32 21, float %154)  ; Exp(value)
  %158 = fmul fast float %155, 0x4032DA0000000000
  %159 = fmul fast float %156, 0x4032DA0000000000
  %160 = fmul fast float %157, 0x4032DA0000000000
  %161 = fadd fast float %158, 8.359375e-01
  %162 = fadd fast float %159, 8.359375e-01
  %163 = fadd fast float %160, 8.359375e-01
  %164 = fmul fast float %155, 1.868750e+01
  %165 = fmul fast float %156, 1.868750e+01
  %166 = fmul fast float %157, 1.868750e+01
  %167 = fadd fast float %164, 1.000000e+00
  %168 = fadd fast float %165, 1.000000e+00
  %169 = fadd fast float %166, 1.000000e+00
  %170 = fdiv fast float %161, %167
  %171 = fdiv fast float %162, %168
  %172 = fdiv fast float %163, %169
  %173 = call float @dx.op.unary.f32(i32 23, float %170)  ; Log(value)
  %174 = call float @dx.op.unary.f32(i32 23, float %171)  ; Log(value)
  %175 = call float @dx.op.unary.f32(i32 23, float %172)  ; Log(value)
  %176 = fmul fast float %173, 7.884375e+01
  %177 = fmul fast float %174, 7.884375e+01
  %178 = fmul fast float %175, 7.884375e+01
  %179 = call float @dx.op.unary.f32(i32 21, float %176)  ; Exp(value)
  %180 = call float @dx.op.unary.f32(i32 21, float %177)  ; Exp(value)
  %181 = call float @dx.op.unary.f32(i32 21, float %178)  ; Exp(value)
  %182 = extractvalue %dx.types.CBufRet.f32 %141, 1
  %183 = fmul fast float %182, %179
  %184 = fmul fast float %182, %180
  %185 = fmul fast float %182, %181
  %186 = extractvalue %dx.types.CBufRet.f32 %141, 2
  %187 = fadd fast float %183, %186
  %188 = fadd fast float %184, %186
  %189 = fadd fast float %185, %186
  br label %307

; <label>:190                                     ; preds = %48
  %191 = call float @dx.op.unary.f32(i32 7, float %49)  ; Saturate(value)
  %192 = call float @dx.op.unary.f32(i32 7, float %50)  ; Saturate(value)
  %193 = call float @dx.op.unary.f32(i32 7, float %51)  ; Saturate(value)
  %194 = call float @dx.op.unary.f32(i32 23, float %191)  ; Log(value)
  %195 = call float @dx.op.unary.f32(i32 23, float %192)  ; Log(value)
  %196 = call float @dx.op.unary.f32(i32 23, float %193)  ; Log(value)
  %197 = fmul fast float %194, 0x3FDAAAAAA0000000
  %198 = fmul fast float %195, 0x3FDAAAAAA0000000
  %199 = fmul fast float %196, 0x3FDAAAAAA0000000
  %200 = call float @dx.op.unary.f32(i32 21, float %197)  ; Exp(value)
  %201 = call float @dx.op.unary.f32(i32 21, float %198)  ; Exp(value)
  %202 = call float @dx.op.unary.f32(i32 21, float %199)  ; Exp(value)
  %203 = fmul fast float %200, 0x3FF0E147A0000000
  %204 = fmul fast float %201, 0x3FF0E147A0000000
  %205 = fmul fast float %202, 0x3FF0E147A0000000
  %206 = fadd fast float %203, 0xBFAC28F5C0000000
  %207 = fadd fast float %204, 0xBFAC28F5C0000000
  %208 = fadd fast float %205, 0xBFAC28F5C0000000
  %209 = call float @dx.op.unary.f32(i32 7, float %206)  ; Saturate(value)
  %210 = call float @dx.op.unary.f32(i32 7, float %207)  ; Saturate(value)
  %211 = call float @dx.op.unary.f32(i32 7, float %208)  ; Saturate(value)
  %212 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %213 = fmul fast float %212, 0x3FDAAAAAA0000000
  %214 = call float @dx.op.unary.f32(i32 21, float %213)  ; Exp(value)
  %215 = fsub fast float 1.000000e+00, %214
  %216 = call float @dx.op.unary.f32(i32 23, float %215)  ; Log(value)
  %217 = fmul fast float %216, 0x4003333340000000
  %218 = call float @dx.op.unary.f32(i32 21, float %217)  ; Exp(value)
  %219 = fdiv fast float %214, %215
  %220 = fadd fast float %219, %209
  %221 = fadd fast float %219, %210
  %222 = fadd fast float %219, %211
  %223 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %220)  ; FMax(a,b)
  %224 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %221)  ; FMax(a,b)
  %225 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %222)  ; FMax(a,b)
  %226 = call float @dx.op.unary.f32(i32 23, float %223)  ; Log(value)
  %227 = call float @dx.op.unary.f32(i32 23, float %224)  ; Log(value)
  %228 = call float @dx.op.unary.f32(i32 23, float %225)  ; Log(value)
  %229 = fmul fast float %226, 0x4003333340000000
  %230 = fmul fast float %227, 0x4003333340000000
  %231 = fmul fast float %228, 0x4003333340000000
  %232 = call float @dx.op.unary.f32(i32 21, float %229)  ; Exp(value)
  %233 = call float @dx.op.unary.f32(i32 21, float %230)  ; Exp(value)
  %234 = call float @dx.op.unary.f32(i32 21, float %231)  ; Exp(value)
  %235 = fmul fast float %232, %218
  %236 = fmul fast float %233, %218
  %237 = fmul fast float %234, %218
  %238 = fmul fast float %235, 0x3FEA519BC0000000
  %239 = call float @dx.op.tertiary.f32(i32 46, float 0x3FC6B990A0000000, float %236, float %238)  ; FMad(a,b,c)
  %240 = fmul fast float %235, 0x3FA0FED480000000
  %241 = call float @dx.op.tertiary.f32(i32 46, float 0x3FEEF012C0000000, float %236, float %240)  ; FMad(a,b,c)
  %242 = fmul fast float %235, 0x3F917E1C00000000
  %243 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB288A2E0000000, float %236, float %242)  ; FMad(a,b,c)
  %244 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED22FAA0000000, float %237, float %243)  ; FMad(a,b,c)
  %245 = call float @dx.op.binary.f32(i32 35, float %235, float %236)  ; FMax(a,b)
  %246 = call float @dx.op.binary.f32(i32 35, float %245, float %237)  ; FMax(a,b)
  %247 = fadd fast float %246, -1.000000e+00
  %248 = fmul fast float %247, 2.500000e-01
  %249 = call float @dx.op.unary.f32(i32 7, float %248)  ; Saturate(value)
  %250 = fsub fast float 1.000000e+00, %249
  %251 = fmul fast float %250, %239
  %252 = fmul fast float %250, %241
  %253 = fmul fast float %250, %244
  %254 = fmul fast float %249, %235
  %255 = fmul fast float %249, %236
  %256 = fmul fast float %249, %237
  %257 = fadd fast float %251, %254
  %258 = fadd fast float %252, %255
  %259 = fadd fast float %253, %256
  %260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %2, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %261 = extractvalue %dx.types.CBufRet.f32 %260, 0
  %262 = fmul fast float %261, 0x3F1A36E2E0000000
  %263 = fmul fast float %262, %257
  %264 = fmul fast float %262, %258
  %265 = fmul fast float %262, %259
  %266 = call float @dx.op.unary.f32(i32 23, float %263)  ; Log(value)
  %267 = call float @dx.op.unary.f32(i32 23, float %264)  ; Log(value)
  %268 = call float @dx.op.unary.f32(i32 23, float %265)  ; Log(value)
  %269 = fmul fast float %266, 0x3FC4640000000000
  %270 = fmul fast float %267, 0x3FC4640000000000
  %271 = fmul fast float %268, 0x3FC4640000000000
  %272 = call float @dx.op.unary.f32(i32 21, float %269)  ; Exp(value)
  %273 = call float @dx.op.unary.f32(i32 21, float %270)  ; Exp(value)
  %274 = call float @dx.op.unary.f32(i32 21, float %271)  ; Exp(value)
  %275 = fmul fast float %272, 0x4032DA0000000000
  %276 = fmul fast float %273, 0x4032DA0000000000
  %277 = fmul fast float %274, 0x4032DA0000000000
  %278 = fadd fast float %275, 8.359375e-01
  %279 = fadd fast float %276, 8.359375e-01
  %280 = fadd fast float %277, 8.359375e-01
  %281 = fmul fast float %272, 1.868750e+01
  %282 = fmul fast float %273, 1.868750e+01
  %283 = fmul fast float %274, 1.868750e+01
  %284 = fadd fast float %281, 1.000000e+00
  %285 = fadd fast float %282, 1.000000e+00
  %286 = fadd fast float %283, 1.000000e+00
  %287 = fdiv fast float %278, %284
  %288 = fdiv fast float %279, %285
  %289 = fdiv fast float %280, %286
  %290 = call float @dx.op.unary.f32(i32 23, float %287)  ; Log(value)
  %291 = call float @dx.op.unary.f32(i32 23, float %288)  ; Log(value)
  %292 = call float @dx.op.unary.f32(i32 23, float %289)  ; Log(value)
  %293 = fmul fast float %290, 7.884375e+01
  %294 = fmul fast float %291, 7.884375e+01
  %295 = fmul fast float %292, 7.884375e+01
  %296 = call float @dx.op.unary.f32(i32 21, float %293)  ; Exp(value)
  %297 = call float @dx.op.unary.f32(i32 21, float %294)  ; Exp(value)
  %298 = call float @dx.op.unary.f32(i32 21, float %295)  ; Exp(value)
  %299 = extractvalue %dx.types.CBufRet.f32 %260, 1
  %300 = fmul fast float %299, %296
  %301 = fmul fast float %299, %297
  %302 = fmul fast float %299, %298
  %303 = extractvalue %dx.types.CBufRet.f32 %260, 2
  %304 = fadd fast float %300, %303
  %305 = fadd fast float %301, %303
  %306 = fadd fast float %302, %303
  br label %307

; <label>:307                                     ; preds = %190, %84, %53, %48
  %308 = phi float [ %49, %48 ], [ %304, %190 ], [ %187, %84 ], [ %81, %53 ]
  %309 = phi float [ %50, %48 ], [ %305, %190 ], [ %188, %84 ], [ %82, %53 ]
  %310 = phi float [ %51, %48 ], [ %306, %190 ], [ %189, %84 ], [ %83, %53 ]
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %3, i32 %4, i32 %5, float %308, float %309, float %310, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %311

; <label>:311                                     ; preds = %307, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

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
!dx.entryPoints = !{!10}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{null, !5, !8, null}
!5 = !{!6}
!6 = !{i32 0, %"class.RWTexture3D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!7 = !{i32 0, i32 14}
!8 = !{!9}
!9 = !{i32 0, %GfxUIClutGenerateConsts* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!10 = !{void ()* @cs_ui_clut_generate, !"cs_ui_clut_generate", null, !4, !11}
!11 = !{i32 0, i64 256, i32 4, !12}
!12 = !{i32 8, i32 8, i32 1}
!13 = distinct !{!13, !"dx.controlflow.hints", i32 2}
!14 = distinct !{!14, !"dx.controlflow.hints", i32 2}
!15 = distinct !{!15, !"dx.controlflow.hints", i32 2}

