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
; shader hash: 0e3d2c1ecd4bb94695578dc618cde5c0
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
;                                   texture     f32          2d      T0             t0     1
;                                   texture     f32          2d      T1             t1     1
;                                       UAV     u32          2d      U0             u0     1
;                                       UAV     u32          2d      U1             u1     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.RWTexture2D<unsigned int>" = type { i32 }
%TimelapseskyAdvectCsConstants = type { <2 x float>, float, float, <4 x float>, <4 x float>, <4 x float>, <4 x float> }

define void @advect() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %7 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %8 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %9 = extractvalue %dx.types.CBufRet.f32 %8, 0
  %10 = extractvalue %dx.types.CBufRet.f32 %8, 1
  %11 = fptoui float %9 to i32
  %12 = fptoui float %10 to i32
  %13 = icmp uge i32 %6, %11
  %14 = icmp uge i32 %7, %12
  %15 = or i1 %13, %14
  br i1 %15, label %268, label %16, !dx.controlflow.hints !18

; <label>:16                                      ; preds = %0
  %17 = extractvalue %dx.types.CBufRet.f32 %8, 3
  %18 = fcmp fast ogt float %17, 0.000000e+00
  %19 = uitofp i32 %6 to float
  %20 = uitofp i32 %7 to float
  %21 = fadd fast float %19, 5.000000e-01
  %22 = fadd fast float %20, 5.000000e-01
  %23 = fdiv fast float %21, %9
  %24 = fdiv fast float %22, %10
  %25 = fmul fast float %23, 2.000000e+00
  %26 = select i1 %18, float 1.000000e+00, float 2.000000e+00
  %27 = fmul fast float %25, %26
  %28 = fadd fast float %27, -2.000000e+00
  %29 = fmul fast float %24, 2.000000e+00
  %30 = fcmp fast ole float %28, 0.000000e+00
  %31 = select i1 %30, float 1.000000e+00, float -1.000000e+00
  %32 = fmul fast float %31, %28
  %33 = fadd fast float %29, -2.000000e+00
  %34 = fsub fast float %33, %32
  %35 = fmul fast float %34, 5.000000e-01
  %36 = fadd fast float %29, %32
  %37 = fmul fast float %36, 5.000000e-01
  %38 = call float @dx.op.unary.f32(i32 6, float %35)  ; FAbs(value)
  %39 = fsub fast float 1.000000e+00, %38
  %40 = call float @dx.op.unary.f32(i32 6, float %37)  ; FAbs(value)
  %41 = fsub fast float %39, %40
  %42 = fmul fast float %31, %41
  %43 = call float @dx.op.dot3.f32(i32 55, float %35, float %37, float %42, float %35, float %37, float %42)  ; Dot3(ax,ay,az,bx,by,bz)
  %44 = call float @dx.op.unary.f32(i32 25, float %43)  ; Rsqrt(value)
  %45 = fmul fast float %35, %44
  %46 = fmul fast float %37, %44
  %47 = fmul fast float %42, %44
  br i1 %18, label %48, label %50, !dx.controlflow.hints !19

; <label>:48                                      ; preds = %16
  %49 = call float @dx.op.unary.f32(i32 6, float %47)  ; FAbs(value)
  br label %50

; <label>:50                                      ; preds = %48, %16
  %51 = phi float [ %49, %48 ], [ %47, %16 ]
  %52 = call float @dx.op.unary.f32(i32 6, float %46)  ; FAbs(value)
  %53 = fadd fast float %52, 0x3DDB7CDFE0000000
  %54 = fcmp fast oge float %45, 0.000000e+00
  %55 = fsub fast float -0.000000e+00, %53
  %56 = select i1 %54, float %55, float %53
  %57 = fadd fast float %56, %45
  %58 = fsub fast float -0.000000e+00, %45
  %59 = select i1 %54, float %45, float %58
  %60 = fadd fast float %53, %59
  %61 = fdiv fast float %57, %60
  %62 = select i1 %54, float 0x3FE921FB60000000, float 0x4002D97C80000000
  %63 = fmul fast float %61, %61
  %64 = fmul fast float %63, 0x3FC9205BC0000000
  %65 = fadd fast float %64, 0xBFEF6A1620000000
  %66 = fmul fast float %65, %61
  %67 = fadd fast float %66, %62
  %68 = fcmp fast oge float %46, 0.000000e+00
  %69 = fsub fast float -0.000000e+00, %67
  %70 = select i1 %68, float %67, float %69
  %71 = fmul fast float %70, 0x3FC45F3060000000
  %72 = fsub fast float 5.000000e-01, %71
  %73 = call float @dx.op.unary.f32(i32 6, float %51)  ; FAbs(value)
  %74 = fmul fast float %73, %73
  %75 = fmul fast float %73, 0x3FCB269080000000
  %76 = fsub fast float 0x3FF921B480000000, %75
  %77 = fmul fast float %74, 0x3FB302C4E0000000
  %78 = fadd fast float %77, %76
  %79 = fmul fast float %73, 0x3F932DC600000000
  %80 = fmul fast float %79, %74
  %81 = fsub fast float %78, %80
  %82 = fsub fast float 1.000000e+00, %73
  %83 = call float @dx.op.unary.f32(i32 24, float %82)  ; Sqrt(value)
  %84 = fmul fast float %81, %83
  %85 = fcmp fast oge float %51, 0.000000e+00
  %86 = fsub fast float 0x400921FB60000000, %84
  %87 = select i1 %85, float %84, float %86
  %88 = fmul fast float %87, 0x3FD45F3060000000
  %89 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %90 = extractvalue %dx.types.CBufRet.f32 %89, 2
  %91 = extractvalue %dx.types.CBufRet.f32 %89, 3
  %92 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %93 = extractvalue %dx.types.CBufRet.f32 %92, 2
  %94 = extractvalue %dx.types.CBufRet.f32 %92, 3
  %95 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %6, i32 %7, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %96 = extractvalue %dx.types.ResRet.f32 %95, 2
  %97 = extractvalue %dx.types.ResRet.f32 %95, 3
  %98 = fmul fast float %96, %93
  %99 = fmul fast float %97, %94
  %100 = fadd fast float %98, %90
  %101 = fadd fast float %99, %91
  %102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %103 = extractvalue %dx.types.CBufRet.f32 %102, 0
  %104 = extractvalue %dx.types.CBufRet.f32 %102, 1
  %105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %106 = extractvalue %dx.types.CBufRet.f32 %105, 0
  %107 = extractvalue %dx.types.CBufRet.f32 %105, 1
  %108 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %6, i32 %7, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %109 = extractvalue %dx.types.ResRet.f32 %108, 0
  %110 = extractvalue %dx.types.ResRet.f32 %108, 1
  %111 = fmul fast float %109, %106
  %112 = fmul fast float %110, %107
  %113 = fadd fast float %111, %103
  %114 = fadd fast float %112, %104
  %115 = extractvalue %dx.types.CBufRet.f32 %8, 2
  %116 = fmul fast float %115, %100
  %117 = fmul fast float %115, %101
  %118 = fadd fast float %116, %72
  %119 = fadd fast float %117, %88
  %120 = fcmp fast oge float %118, 0.000000e+00
  %121 = fcmp fast ole float %118, 1.000000e+00
  %122 = and i1 %120, %121
  %123 = fcmp fast oge float %119, 0.000000e+00
  %124 = and i1 %123, %122
  %125 = fcmp fast ole float %119, 1.000000e+00
  %126 = and i1 %125, %124
  br i1 %126, label %127, label %189, !dx.controlflow.hints !20

; <label>:127                                     ; preds = %50
  %128 = fmul fast float %118, 0x401921FB60000000
  %129 = fsub fast float 0x400921FB60000000, %128
  %130 = fmul fast float %119, 0x400921FB60000000
  %131 = call float @dx.op.unary.f32(i32 13, float %130)  ; Sin(value)
  %132 = call float @dx.op.unary.f32(i32 12, float %129)  ; Cos(value)
  %133 = fmul fast float %132, %131
  %134 = call float @dx.op.unary.f32(i32 13, float %129)  ; Sin(value)
  %135 = fmul fast float %134, %131
  %136 = call float @dx.op.unary.f32(i32 12, float %130)  ; Cos(value)
  br i1 %18, label %137, label %139, !dx.controlflow.hints !21

; <label>:137                                     ; preds = %127
  %138 = call float @dx.op.unary.f32(i32 6, float %136)  ; FAbs(value)
  br label %139

; <label>:139                                     ; preds = %137, %127
  %140 = phi float [ %138, %137 ], [ %136, %127 ]
  %141 = call float @dx.op.unary.f32(i32 6, float %133)  ; FAbs(value)
  %142 = call float @dx.op.unary.f32(i32 6, float %135)  ; FAbs(value)
  %143 = fadd fast float %142, %141
  %144 = call float @dx.op.unary.f32(i32 6, float %140)  ; FAbs(value)
  %145 = fadd fast float %143, %144
  %146 = fdiv fast float 1.000000e+00, %145
  %147 = fmul fast float %146, %140
  %148 = fcmp fast oge float %147, 0.000000e+00
  %149 = fsub fast float %134, %132
  %150 = fmul fast float %149, %131
  %151 = fmul fast float %150, %146
  %152 = fadd fast float %151, -1.000000e+00
  %153 = fsub fast float %132, %134
  %154 = fmul fast float %153, %131
  %155 = fmul fast float %154, %146
  %156 = fadd fast float %155, 1.000000e+00
  %157 = select i1 %148, float %152, float %156
  %158 = fadd fast float %134, %132
  %159 = fmul fast float %157, 5.000000e-01
  %160 = fadd fast float %159, 1.000000e+00
  %161 = fmul fast float %157, 2.500000e-01
  %162 = fadd fast float %161, 5.000000e-01
  %163 = select i1 %18, float %160, float %162
  %164 = fmul fast float %131, 5.000000e-01
  %165 = fmul fast float %164, %158
  %166 = fmul fast float %165, %146
  %167 = fadd fast float %166, 5.000000e-01
  %168 = fmul fast float %163, %9
  %169 = fadd fast float %9, -1.000000e+00
  %170 = call float @dx.op.binary.f32(i32 36, float %169, float %168)  ; FMin(a,b)
  %171 = fptoui float %170 to i32
  %172 = fmul fast float %167, %10
  %173 = fadd fast float %10, -1.000000e+00
  %174 = call float @dx.op.binary.f32(i32 36, float %173, float %172)  ; FMin(a,b)
  %175 = fptoui float %174 to i32
  %176 = fadd fast float %100, 5.000000e-01
  %177 = call float @dx.op.unary.f32(i32 7, float %176)  ; Saturate(value)
  %178 = fmul fast float %177, 4.096000e+03
  %179 = fadd fast float %178, 5.000000e-01
  %180 = fptoui float %179 to i32
  %181 = or i32 %180, 4194304
  %182 = fadd fast float %101, 5.000000e-01
  %183 = call float @dx.op.unary.f32(i32 7, float %182)  ; Saturate(value)
  %184 = fmul fast float %183, 4.096000e+03
  %185 = fadd fast float %184, 5.000000e-01
  %186 = fptoui float %185 to i32
  %187 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 %171, i32 %175, i32 undef, i32 %181)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %188 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 0, i32 %171, i32 %175, i32 undef, i32 %186)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %189

; <label>:189                                     ; preds = %139, %50
  %190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %191 = extractvalue %dx.types.CBufRet.f32 %190, 0
  %192 = extractvalue %dx.types.CBufRet.f32 %190, 1
  %193 = extractvalue %dx.types.CBufRet.f32 %190, 2
  %194 = fsub fast float 1.000000e+00, %193
  %195 = fmul fast float %194, %113
  %196 = fmul fast float %194, %114
  %197 = fadd fast float %195, %72
  %198 = fadd fast float %196, %88
  %199 = fcmp fast oge float %197, 0.000000e+00
  %200 = fcmp fast ole float %197, 1.000000e+00
  %201 = and i1 %199, %200
  %202 = fcmp fast oge float %198, 0.000000e+00
  %203 = and i1 %202, %201
  %204 = fcmp fast ole float %198, 1.000000e+00
  %205 = and i1 %204, %203
  br i1 %205, label %206, label %268, !dx.controlflow.hints !20

; <label>:206                                     ; preds = %189
  %207 = fmul fast float %197, 0x401921FB60000000
  %208 = fsub fast float 0x400921FB60000000, %207
  %209 = fmul fast float %198, 0x400921FB60000000
  %210 = call float @dx.op.unary.f32(i32 13, float %209)  ; Sin(value)
  %211 = call float @dx.op.unary.f32(i32 12, float %208)  ; Cos(value)
  %212 = fmul fast float %211, %210
  %213 = call float @dx.op.unary.f32(i32 13, float %208)  ; Sin(value)
  %214 = fmul fast float %213, %210
  %215 = call float @dx.op.unary.f32(i32 12, float %209)  ; Cos(value)
  br i1 %18, label %216, label %218, !dx.controlflow.hints !21

; <label>:216                                     ; preds = %206
  %217 = call float @dx.op.unary.f32(i32 6, float %215)  ; FAbs(value)
  br label %218

; <label>:218                                     ; preds = %216, %206
  %219 = phi float [ %217, %216 ], [ %215, %206 ]
  %220 = call float @dx.op.unary.f32(i32 6, float %212)  ; FAbs(value)
  %221 = call float @dx.op.unary.f32(i32 6, float %214)  ; FAbs(value)
  %222 = fadd fast float %221, %220
  %223 = call float @dx.op.unary.f32(i32 6, float %219)  ; FAbs(value)
  %224 = fadd fast float %222, %223
  %225 = fdiv fast float 1.000000e+00, %224
  %226 = fmul fast float %225, %219
  %227 = fcmp fast oge float %226, 0.000000e+00
  %228 = fsub fast float %213, %211
  %229 = fmul fast float %228, %210
  %230 = fmul fast float %229, %225
  %231 = fadd fast float %230, -1.000000e+00
  %232 = fsub fast float %211, %213
  %233 = fmul fast float %232, %210
  %234 = fmul fast float %233, %225
  %235 = fadd fast float %234, 1.000000e+00
  %236 = select i1 %227, float %231, float %235
  %237 = fadd fast float %213, %211
  %238 = fmul fast float %236, 5.000000e-01
  %239 = fadd fast float %238, 1.000000e+00
  %240 = fmul fast float %236, 2.500000e-01
  %241 = fadd fast float %240, 5.000000e-01
  %242 = select i1 %18, float %239, float %241
  %243 = fmul fast float %210, 5.000000e-01
  %244 = fmul fast float %243, %237
  %245 = fmul fast float %244, %225
  %246 = fadd fast float %245, 5.000000e-01
  %247 = fmul fast float %242, %191
  %248 = fadd fast float %191, -1.000000e+00
  %249 = call float @dx.op.binary.f32(i32 36, float %248, float %247)  ; FMin(a,b)
  %250 = fptoui float %249 to i32
  %251 = fmul fast float %246, %192
  %252 = fadd fast float %192, -1.000000e+00
  %253 = call float @dx.op.binary.f32(i32 36, float %252, float %251)  ; FMin(a,b)
  %254 = fptoui float %253 to i32
  %255 = fsub fast float 5.000000e-01, %113
  %256 = call float @dx.op.unary.f32(i32 7, float %255)  ; Saturate(value)
  %257 = fmul fast float %256, 4.096000e+03
  %258 = fadd fast float %257, 5.000000e-01
  %259 = fptoui float %258 to i32
  %260 = or i32 %259, 4194304
  %261 = fsub fast float 5.000000e-01, %114
  %262 = call float @dx.op.unary.f32(i32 7, float %261)  ; Saturate(value)
  %263 = fmul fast float %262, 4.096000e+03
  %264 = fadd fast float %263, 5.000000e-01
  %265 = fptoui float %264 to i32
  %266 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 %250, i32 %254, i32 undef, i32 %260)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %267 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 0, i32 %250, i32 %254, i32 undef, i32 %265)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %268

; <label>:268                                     ; preds = %218, %189, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare i32 @dx.op.atomicBinOp.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32) #2

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
!4 = !{!5, !9, !13, null}
!5 = !{!6, !8}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!9 = !{!10, !12}
!10 = !{i32 0, %"class.RWTexture2D<unsigned int>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 true, i1 false, i1 false, !11}
!11 = !{i32 0, i32 5}
!12 = !{i32 1, %"class.RWTexture2D<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 true, i1 false, i1 false, !11}
!13 = !{!14}
!14 = !{i32 0, %TimelapseskyAdvectCsConstants* undef, !"", i32 0, i32 0, i32 1, i32 80, null}
!15 = !{void ()* @advect, !"advect", null, !4, !16}
!16 = !{i32 0, i64 256, i32 4, !17}
!17 = !{i32 8, i32 8, i32 1}
!18 = distinct !{!18, !"dx.controlflow.hints", i32 2}
!19 = distinct !{!19, !"dx.controlflow.hints", i32 2}
!20 = distinct !{!20, !"dx.controlflow.hints", i32 2}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}

