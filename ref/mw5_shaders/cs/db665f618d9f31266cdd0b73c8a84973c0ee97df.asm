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
; shader hash: 03b42cde178b5710c1f3edf8586d9e26
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
;   [1296 x i8] (type annotation not present)
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
;                                   texture     f32          3d      T0             t0     1
;                                   texture     f32          3d      T1             t1     1
;                                       UAVunorm_f32          3d      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%"class.Texture3D<vector<float, 3> >" = type { <3 x float>, %"class.Texture3D<vector<float, 3> >::mips_type" }
%"class.Texture3D<vector<float, 3> >::mips_type" = type { i32 }
%"class.RWTexture3D<vector<float, 4> >" = type { <4 x float> }
%CsPbgUniversalClutConstants = type { i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, i32, i32, [1 x %struct.CsPbgCurveData], [1 x %struct.CsPbgColorData], [1 x %struct.CsPbgSdrTrimData] }
%struct.CsPbgCurveData = type { i32, i32, i32, i32, [16 x <4 x i32>] }
%struct.CsPbgColorData = type { i32, i32, i32, i32, [8 x <4 x i32>], [32 x <4 x float>] }
%struct.CsPbgSdrTrimData = type { i32, i32, i32, i32, [16 x <4 x i32>] }
%struct.SamplerState = type { i32 }

define void @cs_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %7 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %8 = call i32 @dx.op.threadId.i32(i32 93, i32 2)  ; ThreadId(component)
  %9 = uitofp i32 %6 to float
  %10 = uitofp i32 %7 to float
  %11 = uitofp i32 %8 to float
  %12 = fmul fast float %9, 0x3F90410420000000
  %13 = fmul fast float %10, 0x3F90410420000000
  %14 = fmul fast float %11, 0x3F90410420000000
  %15 = call float @dx.op.unary.f32(i32 23, float %12)  ; Log(value)
  %16 = call float @dx.op.unary.f32(i32 23, float %13)  ; Log(value)
  %17 = call float @dx.op.unary.f32(i32 23, float %14)  ; Log(value)
  %18 = fmul fast float %15, 0x3F89F9B580000000
  %19 = fmul fast float %16, 0x3F89F9B580000000
  %20 = fmul fast float %17, 0x3F89F9B580000000
  %21 = call float @dx.op.unary.f32(i32 21, float %18)  ; Exp(value)
  %22 = call float @dx.op.unary.f32(i32 21, float %19)  ; Exp(value)
  %23 = call float @dx.op.unary.f32(i32 21, float %20)  ; Exp(value)
  %24 = fadd fast float %21, -8.359375e-01
  %25 = fadd fast float %22, -8.359375e-01
  %26 = fadd fast float %23, -8.359375e-01
  %27 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %24)  ; FMax(a,b)
  %28 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %25)  ; FMax(a,b)
  %29 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %26)  ; FMax(a,b)
  %30 = fmul fast float %21, 1.868750e+01
  %31 = fmul fast float %22, 1.868750e+01
  %32 = fmul fast float %23, 1.868750e+01
  %33 = fsub fast float 0x4032DA0000000000, %30
  %34 = fsub fast float 0x4032DA0000000000, %31
  %35 = fsub fast float 0x4032DA0000000000, %32
  %36 = fdiv fast float %27, %33
  %37 = fdiv fast float %28, %34
  %38 = fdiv fast float %29, %35
  %39 = call float @dx.op.unary.f32(i32 23, float %36)  ; Log(value)
  %40 = call float @dx.op.unary.f32(i32 23, float %37)  ; Log(value)
  %41 = call float @dx.op.unary.f32(i32 23, float %38)  ; Log(value)
  %42 = fmul fast float %39, 0x40191C0D60000000
  %43 = fmul fast float %40, 0x40191C0D60000000
  %44 = fmul fast float %41, 0x40191C0D60000000
  %45 = call float @dx.op.unary.f32(i32 21, float %42)  ; Exp(value)
  %46 = call float @dx.op.unary.f32(i32 21, float %43)  ; Exp(value)
  %47 = call float @dx.op.unary.f32(i32 21, float %44)  ; Exp(value)
  %48 = call float @dx.op.binary.f32(i32 35, float %46, float %47)  ; FMax(a,b)
  %49 = call float @dx.op.binary.f32(i32 35, float %45, float %48)  ; FMax(a,b)
  %50 = fcmp fast ogt float %49, 0.000000e+00
  br i1 %50, label %51, label %156, !dx.controlflow.hints !19

; <label>:51                                      ; preds = %0
  %52 = fdiv fast float %45, %49
  %53 = fdiv fast float %46, %49
  %54 = fdiv fast float %47, %49
  %55 = fmul fast float %49, 1.000000e+02
  %56 = call float @dx.op.unary.f32(i32 23, float %55)  ; Log(value)
  %57 = fadd fast float %56, 0x402CF2A720000000
  %58 = fmul fast float %57, 0x3FA5555560000000
  %59 = fmul fast float %57, 0x3FB5555560000000
  %60 = call float @dx.op.unary.f32(i32 7, float %59)  ; Saturate(value)
  %61 = fmul fast float %60, %60
  %62 = fmul fast float %60, 2.000000e+00
  %63 = fsub fast float 3.000000e+00, %62
  %64 = fmul fast float %61, %63
  %65 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %66 = extractvalue %dx.types.CBufRet.f32 %65, 0
  %67 = fsub fast float 1.000000e+00, %66
  %68 = fmul fast float %64, %67
  %69 = fadd fast float %68, %66
  %70 = call float @dx.op.unary.f32(i32 23, float %58)  ; Log(value)
  %71 = fmul fast float %69, %70
  %72 = call float @dx.op.unary.f32(i32 21, float %71)  ; Exp(value)
  %73 = fmul fast float %57, 0x3FAC71C720000000
  %74 = call float @dx.op.unary.f32(i32 7, float %73)  ; Saturate(value)
  %75 = fmul fast float %74, %74
  %76 = fmul fast float %74, 2.000000e+00
  %77 = fsub fast float 3.000000e+00, %76
  %78 = fmul fast float %75, %77
  %79 = extractvalue %dx.types.CBufRet.f32 %65, 1
  %80 = fsub fast float 1.000000e+00, %79
  %81 = fmul fast float %78, %80
  %82 = fadd fast float %81, %79
  %83 = call float @dx.op.unary.f32(i32 23, float %72)  ; Log(value)
  %84 = fmul fast float %82, %83
  %85 = call float @dx.op.unary.f32(i32 21, float %84)  ; Exp(value)
  %86 = fmul fast float %57, 0x3FAC71C740000000
  %87 = fadd fast float %86, 0xBFD5555560000000
  %88 = call float @dx.op.unary.f32(i32 7, float %87)  ; Saturate(value)
  %89 = fmul fast float %88, %88
  %90 = fmul fast float %88, 2.000000e+00
  %91 = fsub fast float 3.000000e+00, %90
  %92 = fmul fast float %89, %91
  %93 = extractvalue %dx.types.CBufRet.f32 %65, 2
  %94 = fadd fast float %93, -1.000000e+00
  %95 = fmul fast float %92, %94
  %96 = fadd fast float %95, 1.000000e+00
  %97 = fsub fast float 1.000000e+00, %85
  %98 = call float @dx.op.unary.f32(i32 23, float %97)  ; Log(value)
  %99 = fmul fast float %96, %98
  %100 = call float @dx.op.unary.f32(i32 21, float %99)  ; Exp(value)
  %101 = fadd fast float %59, -1.000000e+00
  %102 = call float @dx.op.unary.f32(i32 7, float %101)  ; Saturate(value)
  %103 = fmul fast float %102, %102
  %104 = fmul fast float %102, 2.000000e+00
  %105 = fsub fast float 3.000000e+00, %104
  %106 = fmul fast float %103, %105
  %107 = extractvalue %dx.types.CBufRet.f32 %65, 3
  %108 = fadd fast float %107, -1.000000e+00
  %109 = fmul fast float %106, %108
  %110 = fadd fast float %109, 1.000000e+00
  %111 = call float @dx.op.unary.f32(i32 23, float %100)  ; Log(value)
  %112 = fmul fast float %110, %111
  %113 = call float @dx.op.unary.f32(i32 21, float %112)  ; Exp(value)
  %114 = fsub fast float 1.000000e+00, %113
  %115 = call float @dx.op.unary.f32(i32 7, float %114)  ; Saturate(value)
  %116 = fmul fast float %115, 2.400000e+01
  %117 = fadd fast float %116, 0xC02CF2A720000000
  %118 = call float @dx.op.unary.f32(i32 21, float %117)  ; Exp(value)
  %119 = fmul fast float %118, 0x3F847AE140000000
  %120 = fmul fast float %119, %52
  %121 = fmul fast float %119, %53
  %122 = fmul fast float %119, %54
  %123 = call float @dx.op.unary.f32(i32 23, float %120)  ; Log(value)
  %124 = call float @dx.op.unary.f32(i32 23, float %121)  ; Log(value)
  %125 = call float @dx.op.unary.f32(i32 23, float %122)  ; Log(value)
  %126 = fmul fast float %123, 0x3FC4640000000000
  %127 = fmul fast float %124, 0x3FC4640000000000
  %128 = fmul fast float %125, 0x3FC4640000000000
  %129 = call float @dx.op.unary.f32(i32 21, float %126)  ; Exp(value)
  %130 = call float @dx.op.unary.f32(i32 21, float %127)  ; Exp(value)
  %131 = call float @dx.op.unary.f32(i32 21, float %128)  ; Exp(value)
  %132 = fmul fast float %129, 0x4032DA0000000000
  %133 = fmul fast float %130, 0x4032DA0000000000
  %134 = fmul fast float %131, 0x4032DA0000000000
  %135 = fadd fast float %132, 8.359375e-01
  %136 = fadd fast float %133, 8.359375e-01
  %137 = fadd fast float %134, 8.359375e-01
  %138 = fmul fast float %129, 1.868750e+01
  %139 = fmul fast float %130, 1.868750e+01
  %140 = fmul fast float %131, 1.868750e+01
  %141 = fadd fast float %138, 1.000000e+00
  %142 = fadd fast float %139, 1.000000e+00
  %143 = fadd fast float %140, 1.000000e+00
  %144 = fdiv fast float %135, %141
  %145 = fdiv fast float %136, %142
  %146 = fdiv fast float %137, %143
  %147 = call float @dx.op.unary.f32(i32 23, float %144)  ; Log(value)
  %148 = call float @dx.op.unary.f32(i32 23, float %145)  ; Log(value)
  %149 = call float @dx.op.unary.f32(i32 23, float %146)  ; Log(value)
  %150 = fmul fast float %147, 7.884375e+01
  %151 = fmul fast float %148, 7.884375e+01
  %152 = fmul fast float %149, 7.884375e+01
  %153 = call float @dx.op.unary.f32(i32 21, float %150)  ; Exp(value)
  %154 = call float @dx.op.unary.f32(i32 21, float %151)  ; Exp(value)
  %155 = call float @dx.op.unary.f32(i32 21, float %152)  ; Exp(value)
  br label %156

; <label>:156                                     ; preds = %51, %0
  %157 = phi float [ %153, %51 ], [ %45, %0 ]
  %158 = phi float [ %154, %51 ], [ %46, %0 ]
  %159 = phi float [ %155, %51 ], [ %47, %0 ]
  %160 = fmul fast float %157, 9.687500e-01
  %161 = fmul fast float %158, 9.687500e-01
  %162 = fmul fast float %159, 9.687500e-01
  %163 = fadd fast float %160, 1.562500e-02
  %164 = fadd fast float %161, 1.562500e-02
  %165 = fadd fast float %162, 1.562500e-02
  %166 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %163, float %164, float %165, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %167 = extractvalue %dx.types.ResRet.f32 %166, 0
  %168 = extractvalue %dx.types.ResRet.f32 %166, 1
  %169 = extractvalue %dx.types.ResRet.f32 %166, 2
  %170 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %171 = extractvalue %dx.types.CBufRet.i32 %170, 2
  switch i32 %171, label %529 [
    i32 0, label %172
    i32 1, label %381
    i32 2, label %431
  ], !dx.controlflow.hints !20

; <label>:172                                     ; preds = %156
  %173 = extractvalue %dx.types.CBufRet.i32 %170, 3
  %174 = and i32 %173, 1
  %175 = icmp eq i32 %174, 0
  %176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %177 = extractvalue %dx.types.CBufRet.f32 %176, 0
  %178 = extractvalue %dx.types.CBufRet.f32 %176, 2
  %179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %180 = extractvalue %dx.types.CBufRet.f32 %179, 0
  %181 = extractvalue %dx.types.CBufRet.f32 %179, 1
  %182 = extractvalue %dx.types.CBufRet.f32 %176, 3
  %183 = extractvalue %dx.types.CBufRet.f32 %176, 1
  %184 = extractvalue %dx.types.CBufRet.f32 %179, 2
  br i1 %175, label %214, label %185, !dx.controlflow.hints !21

; <label>:185                                     ; preds = %172
  %186 = call float @dx.op.binary.f32(i32 35, float %168, float %169)  ; FMax(a,b)
  %187 = call float @dx.op.binary.f32(i32 35, float %167, float %186)  ; FMax(a,b)
  %188 = fcmp fast ogt float %187, %177
  %189 = fsub fast float %187, %182
  %190 = fdiv fast float %181, %189
  %191 = fsub fast float %180, %190
  %192 = call float @dx.op.unary.f32(i32 23, float %191)  ; Log(value)
  %193 = fmul fast float %192, %178
  %194 = call float @dx.op.unary.f32(i32 21, float %193)  ; Exp(value)
  %195 = fmul fast float %183, %187
  %196 = call float @dx.op.unary.f32(i32 23, float %195)  ; Log(value)
  %197 = fmul fast float %196, %178
  %198 = call float @dx.op.unary.f32(i32 21, float %197)  ; Exp(value)
  %199 = select i1 %188, float %194, float %198
  %200 = fcmp fast ogt float %199, 0.000000e+00
  %201 = fmul fast float %199, %199
  %202 = fdiv fast float %201, %199
  %203 = select i1 %200, float %202, float %199
  %204 = fdiv fast float %203, %184
  %205 = fmul fast float %204, %184
  %206 = fcmp fast ogt float %187, 0.000000e+00
  %207 = fdiv fast float %205, %187
  %208 = fmul fast float %207, %167
  %209 = fmul fast float %207, %168
  %210 = fmul fast float %207, %169
  %211 = select i1 %206, float %208, float 0.000000e+00
  %212 = select i1 %206, float %209, float 0.000000e+00
  %213 = select i1 %206, float %210, float 0.000000e+00
  br label %269

; <label>:214                                     ; preds = %172
  %215 = fcmp fast ogt float %167, %177
  %216 = fcmp fast ogt float %168, %177
  %217 = fcmp fast ogt float %169, %177
  %218 = fsub fast float %167, %182
  %219 = fsub fast float %168, %182
  %220 = fsub fast float %169, %182
  %221 = fdiv fast float %181, %218
  %222 = fdiv fast float %181, %219
  %223 = fdiv fast float %181, %220
  %224 = fsub fast float %180, %221
  %225 = fsub fast float %180, %222
  %226 = fsub fast float %180, %223
  %227 = call float @dx.op.unary.f32(i32 23, float %224)  ; Log(value)
  %228 = call float @dx.op.unary.f32(i32 23, float %225)  ; Log(value)
  %229 = call float @dx.op.unary.f32(i32 23, float %226)  ; Log(value)
  %230 = fmul fast float %227, %178
  %231 = fmul fast float %228, %178
  %232 = fmul fast float %229, %178
  %233 = call float @dx.op.unary.f32(i32 21, float %230)  ; Exp(value)
  %234 = call float @dx.op.unary.f32(i32 21, float %231)  ; Exp(value)
  %235 = call float @dx.op.unary.f32(i32 21, float %232)  ; Exp(value)
  %236 = fmul fast float %183, %167
  %237 = fmul fast float %183, %168
  %238 = fmul fast float %183, %169
  %239 = call float @dx.op.unary.f32(i32 23, float %236)  ; Log(value)
  %240 = call float @dx.op.unary.f32(i32 23, float %237)  ; Log(value)
  %241 = call float @dx.op.unary.f32(i32 23, float %238)  ; Log(value)
  %242 = fmul fast float %239, %178
  %243 = fmul fast float %240, %178
  %244 = fmul fast float %241, %178
  %245 = call float @dx.op.unary.f32(i32 21, float %242)  ; Exp(value)
  %246 = call float @dx.op.unary.f32(i32 21, float %243)  ; Exp(value)
  %247 = call float @dx.op.unary.f32(i32 21, float %244)  ; Exp(value)
  %248 = select i1 %215, float %233, float %245
  %249 = select i1 %216, float %234, float %246
  %250 = select i1 %217, float %235, float %247
  %251 = fcmp fast ogt float %248, 0.000000e+00
  %252 = fcmp fast ogt float %249, 0.000000e+00
  %253 = fcmp fast ogt float %250, 0.000000e+00
  %254 = fmul fast float %248, %248
  %255 = fmul fast float %249, %249
  %256 = fmul fast float %250, %250
  %257 = fdiv fast float %254, %248
  %258 = fdiv fast float %255, %249
  %259 = fdiv fast float %256, %250
  %260 = select i1 %251, float %257, float %248
  %261 = select i1 %252, float %258, float %249
  %262 = select i1 %253, float %259, float %250
  %263 = fdiv fast float %260, %184
  %264 = fdiv fast float %261, %184
  %265 = fdiv fast float %262, %184
  %266 = fmul fast float %263, %184
  %267 = fmul fast float %264, %184
  %268 = fmul fast float %265, %184
  br label %269

; <label>:269                                     ; preds = %214, %185
  %270 = phi float [ %211, %185 ], [ %266, %214 ]
  %271 = phi float [ %212, %185 ], [ %267, %214 ]
  %272 = phi float [ %213, %185 ], [ %268, %214 ]
  %273 = call float @dx.op.binary.f32(i32 35, float %271, float %272)  ; FMax(a,b)
  %274 = call float @dx.op.binary.f32(i32 35, float %270, float %273)  ; FMax(a,b)
  %275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %276 = extractvalue %dx.types.CBufRet.f32 %275, 1
  %277 = extractvalue %dx.types.CBufRet.f32 %275, 0
  %278 = fmul fast float %274, 0x3F1A36E2E0000000
  %279 = call float @dx.op.unary.f32(i32 7, float %278)  ; Saturate(value)
  %280 = call float @dx.op.unary.f32(i32 23, float %279)  ; Log(value)
  %281 = fmul fast float %280, 0x3FC4640000000000
  %282 = call float @dx.op.unary.f32(i32 21, float %281)  ; Exp(value)
  %283 = fmul fast float %282, 0x4032DA0000000000
  %284 = fadd fast float %283, 8.359375e-01
  %285 = fmul fast float %282, 1.868750e+01
  %286 = fadd fast float %285, 1.000000e+00
  %287 = fdiv fast float %284, %286
  %288 = call float @dx.op.unary.f32(i32 23, float %287)  ; Log(value)
  %289 = fmul fast float %288, 7.884375e+01
  %290 = call float @dx.op.unary.f32(i32 21, float %289)  ; Exp(value)
  %291 = fmul fast float %276, 1.500000e+00
  %292 = fadd fast float %291, -5.000000e-01
  %293 = fcmp fast ogt float %290, %292
  br i1 %293, label %294, label %314, !dx.controlflow.hints !22

; <label>:294                                     ; preds = %269
  %295 = fsub fast float %290, %292
  %296 = fsub fast float 1.500000e+00, %291
  %297 = fdiv fast float %295, %296
  %298 = fmul fast float %297, %297
  %299 = fmul fast float %298, %297
  %300 = fsub fast float %298, %297
  %301 = fmul fast float %300, %297
  %302 = fsub fast float 1.000000e+00, %297
  %303 = fadd fast float %302, %301
  %304 = fmul fast float %303, %292
  %305 = fmul fast float %298, 2.000000e+00
  %306 = fmul fast float %299, 2.000000e+00
  %307 = fmul fast float %298, 3.000000e+00
  %308 = fsub fast float %307, %306
  %309 = fmul fast float %308, %276
  %310 = fsub fast float %297, %305
  %311 = fadd fast float %310, %299
  %312 = fadd fast float %311, %309
  %313 = fadd fast float %312, %304
  br label %314

; <label>:314                                     ; preds = %294, %269
  %315 = phi float [ %313, %294 ], [ %290, %269 ]
  %316 = fsub fast float 1.000000e+00, %315
  %317 = call float @dx.op.unary.f32(i32 23, float %316)  ; Log(value)
  %318 = fmul fast float %317, 4.000000e+00
  %319 = call float @dx.op.unary.f32(i32 21, float %318)  ; Exp(value)
  %320 = fmul fast float %319, %277
  %321 = fadd fast float %320, %315
  %322 = call float @dx.op.unary.f32(i32 23, float %321)  ; Log(value)
  %323 = fmul fast float %322, 0x3F89F9B580000000
  %324 = call float @dx.op.unary.f32(i32 21, float %323)  ; Exp(value)
  %325 = fadd fast float %324, -8.359375e-01
  %326 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %325)  ; FMax(a,b)
  %327 = fmul fast float %324, 1.868750e+01
  %328 = fsub fast float 0x4032DA0000000000, %327
  %329 = fdiv fast float %326, %328
  %330 = call float @dx.op.unary.f32(i32 23, float %329)  ; Log(value)
  %331 = fmul fast float %330, 0x40191C0D60000000
  %332 = call float @dx.op.unary.f32(i32 21, float %331)  ; Exp(value)
  %333 = fmul fast float %332, 1.000000e+04
  %334 = fcmp fast ogt float %274, 0.000000e+00
  %335 = fdiv fast float %333, %274
  %336 = fmul fast float %335, %270
  %337 = fmul fast float %335, %271
  %338 = fmul fast float %335, %272
  %339 = select i1 %334, float %336, float %333
  %340 = select i1 %334, float %337, float %333
  %341 = select i1 %334, float %338, float %333
  %342 = fmul fast float %339, 0x3F1A36E2E0000000
  %343 = fmul fast float %340, 0x3F1A36E2E0000000
  %344 = fmul fast float %341, 0x3F1A36E2E0000000
  %345 = call float @dx.op.unary.f32(i32 7, float %342)  ; Saturate(value)
  %346 = call float @dx.op.unary.f32(i32 7, float %343)  ; Saturate(value)
  %347 = call float @dx.op.unary.f32(i32 7, float %344)  ; Saturate(value)
  %348 = call float @dx.op.unary.f32(i32 23, float %345)  ; Log(value)
  %349 = call float @dx.op.unary.f32(i32 23, float %346)  ; Log(value)
  %350 = call float @dx.op.unary.f32(i32 23, float %347)  ; Log(value)
  %351 = fmul fast float %348, 0x3FC4640000000000
  %352 = fmul fast float %349, 0x3FC4640000000000
  %353 = fmul fast float %350, 0x3FC4640000000000
  %354 = call float @dx.op.unary.f32(i32 21, float %351)  ; Exp(value)
  %355 = call float @dx.op.unary.f32(i32 21, float %352)  ; Exp(value)
  %356 = call float @dx.op.unary.f32(i32 21, float %353)  ; Exp(value)
  %357 = fmul fast float %354, 0x4032DA0000000000
  %358 = fmul fast float %355, 0x4032DA0000000000
  %359 = fmul fast float %356, 0x4032DA0000000000
  %360 = fadd fast float %357, 8.359375e-01
  %361 = fadd fast float %358, 8.359375e-01
  %362 = fadd fast float %359, 8.359375e-01
  %363 = fmul fast float %354, 1.868750e+01
  %364 = fmul fast float %355, 1.868750e+01
  %365 = fmul fast float %356, 1.868750e+01
  %366 = fadd fast float %363, 1.000000e+00
  %367 = fadd fast float %364, 1.000000e+00
  %368 = fadd fast float %365, 1.000000e+00
  %369 = fdiv fast float %360, %366
  %370 = fdiv fast float %361, %367
  %371 = fdiv fast float %362, %368
  %372 = call float @dx.op.unary.f32(i32 23, float %369)  ; Log(value)
  %373 = call float @dx.op.unary.f32(i32 23, float %370)  ; Log(value)
  %374 = call float @dx.op.unary.f32(i32 23, float %371)  ; Log(value)
  %375 = fmul fast float %372, 7.884375e+01
  %376 = fmul fast float %373, 7.884375e+01
  %377 = fmul fast float %374, 7.884375e+01
  %378 = call float @dx.op.unary.f32(i32 21, float %375)  ; Exp(value)
  %379 = call float @dx.op.unary.f32(i32 21, float %376)  ; Exp(value)
  %380 = call float @dx.op.unary.f32(i32 21, float %377)  ; Exp(value)
  br label %529

; <label>:381                                     ; preds = %156
  %382 = fmul fast float %167, 0x3F847AE140000000
  %383 = fmul fast float %168, 0x3F847AE140000000
  %384 = fmul fast float %169, 0x3F847AE140000000
  %385 = call float @dx.op.unary.f32(i32 7, float %382)  ; Saturate(value)
  %386 = call float @dx.op.unary.f32(i32 7, float %383)  ; Saturate(value)
  %387 = call float @dx.op.unary.f32(i32 7, float %384)  ; Saturate(value)
  %388 = call float @dx.op.unary.f32(i32 23, float %385)  ; Log(value)
  %389 = call float @dx.op.unary.f32(i32 23, float %386)  ; Log(value)
  %390 = call float @dx.op.unary.f32(i32 23, float %387)  ; Log(value)
  %391 = fmul fast float %388, 0x3FC4640000000000
  %392 = fmul fast float %389, 0x3FC4640000000000
  %393 = fmul fast float %390, 0x3FC4640000000000
  %394 = call float @dx.op.unary.f32(i32 21, float %391)  ; Exp(value)
  %395 = call float @dx.op.unary.f32(i32 21, float %392)  ; Exp(value)
  %396 = call float @dx.op.unary.f32(i32 21, float %393)  ; Exp(value)
  %397 = fmul fast float %394, 0x4032DA0000000000
  %398 = fmul fast float %395, 0x4032DA0000000000
  %399 = fmul fast float %396, 0x4032DA0000000000
  %400 = fadd fast float %397, 8.359375e-01
  %401 = fadd fast float %398, 8.359375e-01
  %402 = fadd fast float %399, 8.359375e-01
  %403 = fmul fast float %394, 1.868750e+01
  %404 = fmul fast float %395, 1.868750e+01
  %405 = fmul fast float %396, 1.868750e+01
  %406 = fadd fast float %403, 1.000000e+00
  %407 = fadd fast float %404, 1.000000e+00
  %408 = fadd fast float %405, 1.000000e+00
  %409 = fdiv fast float %400, %406
  %410 = fdiv fast float %401, %407
  %411 = fdiv fast float %402, %408
  %412 = call float @dx.op.unary.f32(i32 23, float %409)  ; Log(value)
  %413 = call float @dx.op.unary.f32(i32 23, float %410)  ; Log(value)
  %414 = call float @dx.op.unary.f32(i32 23, float %411)  ; Log(value)
  %415 = fmul fast float %412, 7.884375e+01
  %416 = fmul fast float %413, 7.884375e+01
  %417 = fmul fast float %414, 7.884375e+01
  %418 = call float @dx.op.unary.f32(i32 21, float %415)  ; Exp(value)
  %419 = call float @dx.op.unary.f32(i32 21, float %416)  ; Exp(value)
  %420 = call float @dx.op.unary.f32(i32 21, float %417)  ; Exp(value)
  %421 = fmul fast float %418, 9.687500e-01
  %422 = fmul fast float %419, 9.687500e-01
  %423 = fmul fast float %420, 9.687500e-01
  %424 = fadd fast float %421, 1.562500e-02
  %425 = fadd fast float %422, 1.562500e-02
  %426 = fadd fast float %423, 1.562500e-02
  %427 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %4, float %424, float %425, float %426, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %428 = extractvalue %dx.types.ResRet.f32 %427, 0
  %429 = extractvalue %dx.types.ResRet.f32 %427, 1
  %430 = extractvalue %dx.types.ResRet.f32 %427, 2
  br label %529

; <label>:431                                     ; preds = %156
  %432 = fmul fast float %167, 0x3F847AE140000000
  %433 = fmul fast float %168, 0x3F847AE140000000
  %434 = fmul fast float %169, 0x3F847AE140000000
  %435 = call float @dx.op.unary.f32(i32 7, float %432)  ; Saturate(value)
  %436 = call float @dx.op.unary.f32(i32 7, float %433)  ; Saturate(value)
  %437 = call float @dx.op.unary.f32(i32 7, float %434)  ; Saturate(value)
  %438 = call float @dx.op.unary.f32(i32 23, float %435)  ; Log(value)
  %439 = call float @dx.op.unary.f32(i32 23, float %436)  ; Log(value)
  %440 = call float @dx.op.unary.f32(i32 23, float %437)  ; Log(value)
  %441 = fmul fast float %438, 0x3FC4640000000000
  %442 = fmul fast float %439, 0x3FC4640000000000
  %443 = fmul fast float %440, 0x3FC4640000000000
  %444 = call float @dx.op.unary.f32(i32 21, float %441)  ; Exp(value)
  %445 = call float @dx.op.unary.f32(i32 21, float %442)  ; Exp(value)
  %446 = call float @dx.op.unary.f32(i32 21, float %443)  ; Exp(value)
  %447 = fmul fast float %444, 0x4032DA0000000000
  %448 = fmul fast float %445, 0x4032DA0000000000
  %449 = fmul fast float %446, 0x4032DA0000000000
  %450 = fadd fast float %447, 8.359375e-01
  %451 = fadd fast float %448, 8.359375e-01
  %452 = fadd fast float %449, 8.359375e-01
  %453 = fmul fast float %444, 1.868750e+01
  %454 = fmul fast float %445, 1.868750e+01
  %455 = fmul fast float %446, 1.868750e+01
  %456 = fadd fast float %453, 1.000000e+00
  %457 = fadd fast float %454, 1.000000e+00
  %458 = fadd fast float %455, 1.000000e+00
  %459 = fdiv fast float %450, %456
  %460 = fdiv fast float %451, %457
  %461 = fdiv fast float %452, %458
  %462 = call float @dx.op.unary.f32(i32 23, float %459)  ; Log(value)
  %463 = call float @dx.op.unary.f32(i32 23, float %460)  ; Log(value)
  %464 = call float @dx.op.unary.f32(i32 23, float %461)  ; Log(value)
  %465 = fmul fast float %462, 7.884375e+01
  %466 = fmul fast float %463, 7.884375e+01
  %467 = fmul fast float %464, 7.884375e+01
  %468 = call float @dx.op.unary.f32(i32 21, float %465)  ; Exp(value)
  %469 = call float @dx.op.unary.f32(i32 21, float %466)  ; Exp(value)
  %470 = call float @dx.op.unary.f32(i32 21, float %467)  ; Exp(value)
  %471 = fmul fast float %468, 9.687500e-01
  %472 = fmul fast float %469, 9.687500e-01
  %473 = fmul fast float %470, 9.687500e-01
  %474 = fadd fast float %471, 1.562500e-02
  %475 = fadd fast float %472, 1.562500e-02
  %476 = fadd fast float %473, 1.562500e-02
  %477 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %4, float %474, float %475, float %476, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %478 = extractvalue %dx.types.ResRet.f32 %477, 0
  %479 = extractvalue %dx.types.ResRet.f32 %477, 1
  %480 = extractvalue %dx.types.ResRet.f32 %477, 2
  %481 = fcmp fast ole float %478, 0x3FB4D9E840000000
  %482 = fcmp fast ole float %479, 0x3FB4D9E840000000
  %483 = fcmp fast ole float %480, 0x3FB4D9E840000000
  %484 = fmul fast float %478, 0x3FCC71C720000000
  %485 = fmul fast float %479, 0x3FCC71C720000000
  %486 = fmul fast float %480, 0x3FCC71C720000000
  %487 = fadd fast float %478, 0x3FB96BB980000000
  %488 = fadd fast float %479, 0x3FB96BB980000000
  %489 = fadd fast float %480, 0x3FB96BB980000000
  %490 = fmul fast float %487, 0x3FED1C03C0000000
  %491 = fmul fast float %488, 0x3FED1C03C0000000
  %492 = fmul fast float %489, 0x3FED1C03C0000000
  %493 = call float @dx.op.unary.f32(i32 23, float %490)  ; Log(value)
  %494 = call float @dx.op.unary.f32(i32 23, float %491)  ; Log(value)
  %495 = call float @dx.op.unary.f32(i32 23, float %492)  ; Log(value)
  %496 = fmul fast float %493, 0x4001C71C80000000
  %497 = fmul fast float %494, 0x4001C71C80000000
  %498 = fmul fast float %495, 0x4001C71C80000000
  %499 = call float @dx.op.unary.f32(i32 21, float %496)  ; Exp(value)
  %500 = call float @dx.op.unary.f32(i32 21, float %497)  ; Exp(value)
  %501 = call float @dx.op.unary.f32(i32 21, float %498)  ; Exp(value)
  %502 = select i1 %481, float %484, float %499
  %503 = select i1 %482, float %485, float %500
  %504 = select i1 %483, float %486, float %501
  %505 = fcmp fast ole float %502, 0x3F69A5C380000000
  %506 = fcmp fast ole float %503, 0x3F69A5C380000000
  %507 = fcmp fast ole float %504, 0x3F69A5C380000000
  %508 = fmul fast float %502, 0x4029D70A40000000
  %509 = fmul fast float %503, 0x4029D70A40000000
  %510 = fmul fast float %504, 0x4029D70A40000000
  %511 = call float @dx.op.unary.f32(i32 23, float %502)  ; Log(value)
  %512 = call float @dx.op.unary.f32(i32 23, float %503)  ; Log(value)
  %513 = call float @dx.op.unary.f32(i32 23, float %504)  ; Log(value)
  %514 = fmul fast float %511, 0x3FDAAAAAA0000000
  %515 = fmul fast float %512, 0x3FDAAAAAA0000000
  %516 = fmul fast float %513, 0x3FDAAAAAA0000000
  %517 = call float @dx.op.unary.f32(i32 21, float %514)  ; Exp(value)
  %518 = call float @dx.op.unary.f32(i32 21, float %515)  ; Exp(value)
  %519 = call float @dx.op.unary.f32(i32 21, float %516)  ; Exp(value)
  %520 = fmul fast float %517, 0x3FF0E147A0000000
  %521 = fmul fast float %518, 0x3FF0E147A0000000
  %522 = fmul fast float %519, 0x3FF0E147A0000000
  %523 = fadd fast float %520, 0xBFAC28F5C0000000
  %524 = fadd fast float %521, 0xBFAC28F5C0000000
  %525 = fadd fast float %522, 0xBFAC28F5C0000000
  %526 = select i1 %505, float %508, float %523
  %527 = select i1 %506, float %509, float %524
  %528 = select i1 %507, float %510, float %525
  br label %529

; <label>:529                                     ; preds = %431, %381, %314, %156
  %530 = phi float [ undef, %156 ], [ %526, %431 ], [ %428, %381 ], [ %378, %314 ]
  %531 = phi float [ undef, %156 ], [ %527, %431 ], [ %429, %381 ], [ %379, %314 ]
  %532 = phi float [ undef, %156 ], [ %528, %431 ], [ %430, %381 ], [ %380, %314 ]
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %6, i32 %7, i32 %8, float %530, float %531, float %532, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

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
!dx.entryPoints = !{!16}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !9, !12, !14}
!5 = !{!6, !8}
!6 = !{i32 0, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 4, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 0, i32 1, i32 1, i32 4, i32 0, !7}
!9 = !{!10}
!10 = !{i32 0, %"class.RWTexture3D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 4, i1 false, i1 false, i1 false, !11}
!11 = !{i32 0, i32 14}
!12 = !{!13}
!13 = !{i32 0, %CsPbgUniversalClutConstants* undef, !"", i32 0, i32 0, i32 1, i32 1296, null}
!14 = !{!15}
!15 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!16 = !{void ()* @cs_main, !"cs_main", null, !4, !17}
!17 = !{i32 0, i64 256, i32 4, !18}
!18 = !{i32 4, i32 4, i32 4}
!19 = distinct !{!19, !"dx.controlflow.hints", i32 1}
!20 = distinct !{!20, !"dx.controlflow.hints", i32 2}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}

