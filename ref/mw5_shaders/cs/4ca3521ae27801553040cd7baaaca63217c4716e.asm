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
; shader hash: 7e76b924fa8e80084b35b633aca28f01
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
;                                   sampler      NA          NA      S0             s1     1
;                                   sampler      NA          NA      S1             s2     1
;                                   texture     f32          2d      T0             t0     1
;                                   texture     f32          2d      T1             t5     1
;                                   texture     f32          2d      T2             t4     1
;                                   texture     f32          2d      T3             t3     1
;                                       UAV     f32          2d      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.RWTexture2D<vector<float, 4> >" = type { <4 x float> }
%VeilSampleConsts = type { <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }

define void @cs_downsample_veil() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %10 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %11 = uitofp i32 %9 to float
  %12 = uitofp i32 %10 to float
  %13 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %14 = extractvalue %dx.types.CBufRet.f32 %13, 2
  %15 = extractvalue %dx.types.CBufRet.f32 %13, 3
  %16 = fcmp fast olt float %11, %14
  %17 = fcmp fast olt float %12, %15
  %18 = and i1 %16, %17
  br i1 %18, label %19, label %320, !dx.controlflow.hints !21

; <label>:19                                      ; preds = %0
  %20 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %21 = extractvalue %dx.types.CBufRet.f32 %20, 2
  %22 = extractvalue %dx.types.CBufRet.f32 %20, 3
  %23 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %24 = extractvalue %dx.types.CBufRet.f32 %23, 2
  %25 = extractvalue %dx.types.CBufRet.f32 %23, 3
  %26 = fmul fast float %24, %21
  %27 = fmul fast float %25, %22
  %28 = fadd fast float %11, 5.000000e-01
  %29 = fadd fast float %12, 5.000000e-01
  %30 = fmul fast float %24, %28
  %31 = fmul fast float %25, %29
  %32 = call float @dx.op.dot2.f32(i32 54, float %28, float %29, float 0x3FB12E2860000000, float 0x3F77E8B200000000)  ; Dot2(ax,ay,bx,by)
  %33 = call float @dx.op.unary.f32(i32 22, float %32)  ; Frc(value)
  %34 = fmul fast float %33, 0x404A7DD040000000
  %35 = call float @dx.op.unary.f32(i32 22, float %34)  ; Frc(value)
  %36 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %6, float %30, float %31, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %37 = extractvalue %dx.types.ResRet.f32 %36, 0
  %38 = extractvalue %dx.types.ResRet.f32 %36, 1
  %39 = extractvalue %dx.types.ResRet.f32 %36, 2
  %40 = fmul fast float %37, 0x3FDEB71760000000
  %41 = fmul fast float %38, 0x3FDEB71760000000
  %42 = fmul fast float %39, 0x3FDEB71760000000
  %43 = fmul fast float %35, 0x3FE921FB60000000
  %44 = fadd fast float %43, 0x3FE921FB60000000
  %45 = call float @dx.op.unary.f32(i32 13, float %44)  ; Sin(value)
  %46 = call float @dx.op.unary.f32(i32 12, float %44)  ; Cos(value)
  %47 = fmul fast float %26, 0x3FFE2F0140000000
  %48 = fmul fast float %47, %45
  %49 = fmul fast float %27, 0x3FFE2F0140000000
  %50 = fmul fast float %49, %46
  %51 = fadd fast float %48, %30
  %52 = fadd fast float %50, %31
  %53 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %6, float %51, float %52, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %54 = extractvalue %dx.types.ResRet.f32 %53, 0
  %55 = extractvalue %dx.types.ResRet.f32 %53, 1
  %56 = extractvalue %dx.types.ResRet.f32 %53, 2
  %57 = fadd fast float %43, 0x4002D97C80000000
  %58 = call float @dx.op.unary.f32(i32 13, float %57)  ; Sin(value)
  %59 = call float @dx.op.unary.f32(i32 12, float %57)  ; Cos(value)
  %60 = fmul fast float %26, 0x3FEE145200000000
  %61 = fmul fast float %60, %58
  %62 = fmul fast float %27, 0x3FEE145200000000
  %63 = fmul fast float %62, %59
  %64 = fadd fast float %61, %30
  %65 = fadd fast float %63, %31
  %66 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %6, float %64, float %65, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %67 = extractvalue %dx.types.ResRet.f32 %66, 0
  %68 = extractvalue %dx.types.ResRet.f32 %66, 1
  %69 = extractvalue %dx.types.ResRet.f32 %66, 2
  %70 = fadd fast float %43, 0x400F6A7A40000000
  %71 = call float @dx.op.unary.f32(i32 13, float %70)  ; Sin(value)
  %72 = call float @dx.op.unary.f32(i32 12, float %70)  ; Cos(value)
  %73 = fmul fast float %47, %71
  %74 = fmul fast float %49, %72
  %75 = fadd fast float %73, %30
  %76 = fadd fast float %74, %31
  %77 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %6, float %75, float %76, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %78 = extractvalue %dx.types.ResRet.f32 %77, 0
  %79 = extractvalue %dx.types.ResRet.f32 %77, 1
  %80 = extractvalue %dx.types.ResRet.f32 %77, 2
  %81 = fadd fast float %43, 0x4015FDBC00000000
  %82 = call float @dx.op.unary.f32(i32 13, float %81)  ; Sin(value)
  %83 = call float @dx.op.unary.f32(i32 12, float %81)  ; Cos(value)
  %84 = fmul fast float %60, %82
  %85 = fmul fast float %62, %83
  %86 = fadd fast float %84, %30
  %87 = fadd fast float %85, %31
  %88 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %6, float %86, float %87, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %89 = extractvalue %dx.types.ResRet.f32 %88, 0
  %90 = extractvalue %dx.types.ResRet.f32 %88, 1
  %91 = extractvalue %dx.types.ResRet.f32 %88, 2
  %92 = fadd fast float %89, %67
  %93 = fmul fast float %92, 0x3FD363C320000000
  %94 = fadd fast float %78, %54
  %95 = fmul fast float %94, 0x3FB3714BA0000000
  %96 = fadd fast float %93, %40
  %97 = fadd fast float %96, %95
  %98 = fadd fast float %90, %68
  %99 = fmul fast float %98, 0x3FD363C320000000
  %100 = fadd fast float %79, %55
  %101 = fmul fast float %100, 0x3FB3714BA0000000
  %102 = fadd fast float %99, %41
  %103 = fadd fast float %102, %101
  %104 = fadd fast float %91, %69
  %105 = fmul fast float %104, 0x3FD363C320000000
  %106 = fadd fast float %80, %56
  %107 = fmul fast float %106, 0x3FB3714BA0000000
  %108 = fadd fast float %105, %42
  %109 = fadd fast float %108, %107
  %110 = fmul fast float %97, 0x3FE9DA78C0000000
  %111 = fmul fast float %103, 0x3FE9DA78C0000000
  %112 = fmul fast float %109, 0x3FE9DA78C0000000
  %113 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %7, float %30, float %31, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %114 = extractvalue %dx.types.ResRet.f32 %113, 0
  %115 = bitcast float %114 to i32
  %116 = lshr i32 %115, 11
  %117 = and i32 %115, 2047
  %118 = and i32 %116, 2047
  %119 = uitofp i32 %117 to float
  %120 = uitofp i32 %118 to float
  %121 = fmul fast float %119, 0x3F50040100000000
  %122 = fmul fast float %120, 0x3F50040100000000
  %123 = fadd fast float %121, -1.000000e+00
  %124 = fadd fast float %122, -1.000000e+00
  %125 = lshr i32 %115, 22
  %126 = shl nuw nsw i32 %125, 5
  %127 = call float @dx.op.legacyF16ToF32(i32 131, i32 %126)  ; LegacyF16ToF32(value)
  %128 = call float @dx.op.unary.f32(i32 6, float %123)  ; FAbs(value)
  %129 = call float @dx.op.unary.f32(i32 6, float %124)  ; FAbs(value)
  %130 = fadd fast float %128, -5.000000e-01
  %131 = fadd fast float %129, -5.000000e-01
  %132 = fmul fast float %130, 2.000000e+00
  %133 = fmul fast float %131, 2.000000e+00
  %134 = call float @dx.op.unary.f32(i32 7, float %132)  ; Saturate(value)
  %135 = call float @dx.op.unary.f32(i32 7, float %133)  ; Saturate(value)
  %136 = fmul fast float %128, 2.000000e+00
  %137 = fmul fast float %129, 2.000000e+00
  %138 = call float @dx.op.unary.f32(i32 7, float %136)  ; Saturate(value)
  %139 = call float @dx.op.unary.f32(i32 7, float %137)  ; Saturate(value)
  %140 = fmul fast float %134, %134
  %141 = fmul fast float %140, 0x3FA48888A0000000
  %142 = fmul fast float %135, %135
  %143 = fmul fast float %142, 0x3FB2407960000000
  %144 = fmul fast float %138, 0x3F599999A0000000
  %145 = fmul fast float %139, 0x3F66C16C20000000
  %146 = fadd fast float %144, %141
  %147 = fadd fast float %145, %143
  %148 = fsub fast float -0.000000e+00, %146
  %149 = fsub fast float -0.000000e+00, %147
  %150 = fcmp fast olt float %123, 0.000000e+00
  %151 = fcmp fast olt float %124, 0.000000e+00
  %152 = select i1 %150, float 0.000000e+00, float 1.000000e+00
  %153 = select i1 %151, float 0.000000e+00, float 1.000000e+00
  %154 = fcmp fast une float %152, 0.000000e+00
  %155 = fcmp fast une float %153, 0.000000e+00
  %156 = select i1 %154, float %146, float %148
  %157 = select i1 %155, float %147, float %149
  %158 = fsub fast float %30, %156
  %159 = fsub fast float %31, %157
  %160 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %3, %dx.types.Handle %7, float %158, float %159, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %161 = extractvalue %dx.types.ResRet.f32 %160, 0
  %162 = extractvalue %dx.types.ResRet.f32 %160, 1
  %163 = extractvalue %dx.types.ResRet.f32 %160, 2
  %164 = extractvalue %dx.types.ResRet.f32 %160, 3
  %165 = bitcast float %161 to i32
  %166 = bitcast float %162 to i32
  %167 = bitcast float %163 to i32
  %168 = bitcast float %164 to i32
  %169 = call i32 @dx.op.binary.i32(i32 40, i32 %167, i32 %168)  ; UMin(a,b)
  %170 = call i32 @dx.op.binary.i32(i32 40, i32 %166, i32 %169)  ; UMin(a,b)
  %171 = call i32 @dx.op.binary.i32(i32 40, i32 %165, i32 %170)  ; UMin(a,b)
  %172 = lshr i32 %171, 11
  %173 = and i32 %171, 2047
  %174 = and i32 %172, 2047
  %175 = uitofp i32 %173 to float
  %176 = uitofp i32 %174 to float
  %177 = fmul fast float %175, 0x3F50040100000000
  %178 = fmul fast float %176, 0x3F50040100000000
  %179 = fadd fast float %177, -1.000000e+00
  %180 = fadd fast float %178, -1.000000e+00
  %181 = lshr i32 %171, 22
  %182 = shl nuw nsw i32 %181, 5
  %183 = call float @dx.op.legacyF16ToF32(i32 131, i32 %182)  ; LegacyF16ToF32(value)
  %184 = call float @dx.op.unary.f32(i32 6, float %179)  ; FAbs(value)
  %185 = call float @dx.op.unary.f32(i32 6, float %180)  ; FAbs(value)
  %186 = fadd fast float %184, -5.000000e-01
  %187 = fadd fast float %185, -5.000000e-01
  %188 = fmul fast float %186, 2.000000e+00
  %189 = fmul fast float %187, 2.000000e+00
  %190 = call float @dx.op.unary.f32(i32 7, float %188)  ; Saturate(value)
  %191 = call float @dx.op.unary.f32(i32 7, float %189)  ; Saturate(value)
  %192 = fmul fast float %184, 2.000000e+00
  %193 = fmul fast float %185, 2.000000e+00
  %194 = call float @dx.op.unary.f32(i32 7, float %192)  ; Saturate(value)
  %195 = call float @dx.op.unary.f32(i32 7, float %193)  ; Saturate(value)
  %196 = fmul fast float %190, %190
  %197 = fmul fast float %196, 0x3FA48888A0000000
  %198 = fmul fast float %191, %191
  %199 = fmul fast float %198, 0x3FB2407960000000
  %200 = fmul fast float %194, 0x3F599999A0000000
  %201 = fmul fast float %195, 0x3F66C16C20000000
  %202 = fadd fast float %200, %197
  %203 = fadd fast float %201, %199
  %204 = fsub fast float -0.000000e+00, %202
  %205 = fsub fast float -0.000000e+00, %203
  %206 = fcmp fast olt float %179, 0.000000e+00
  %207 = fcmp fast olt float %180, 0.000000e+00
  %208 = select i1 %206, float 0.000000e+00, float 1.000000e+00
  %209 = select i1 %207, float 0.000000e+00, float 1.000000e+00
  %210 = fcmp fast une float %208, 0.000000e+00
  %211 = fcmp fast une float %209, 0.000000e+00
  %212 = select i1 %210, float %202, float %204
  %213 = select i1 %211, float %203, float %205
  %214 = fmul fast float %156, 3.000000e+00
  %215 = fmul fast float %157, 3.000000e+00
  %216 = fmul fast float %127, 0x3FA99999A0000000
  %217 = fadd fast float %183, %216
  %218 = fcmp fast olt float %127, %217
  %219 = fsub fast float %156, %212
  %220 = fsub fast float %157, %213
  %221 = fmul fast float %219, 1.920000e+03
  %222 = fmul fast float %220, 1.080000e+03
  %223 = call float @dx.op.dot2.f32(i32 54, float %221, float %222, float %221, float %222)  ; Dot2(ax,ay,bx,by)
  %224 = bitcast float %223 to i32
  %225 = ashr i32 %224, 1
  %226 = add nsw i32 %225, 532487669
  %227 = bitcast i32 %226 to float
  %228 = fmul fast float %227, 2.000000e+00
  %229 = fsub fast float 1.000000e+00, %228
  %230 = call float @dx.op.unary.f32(i32 7, float %229)  ; Saturate(value)
  %231 = select i1 %218, float 1.000000e+00, float %230
  %232 = fmul fast float %156, 1.920000e+03
  %233 = fmul fast float %157, 1.080000e+03
  %234 = call float @dx.op.unary.f32(i32 6, float %232)  ; FAbs(value)
  %235 = call float @dx.op.unary.f32(i32 6, float %233)  ; FAbs(value)
  %236 = call float @dx.op.binary.f32(i32 35, float %234, float %235)  ; FMax(a,b)
  %237 = fmul fast float %236, 0x3FB99999A0000000
  %238 = fsub fast float 8.000000e+00, %237
  %239 = call float @dx.op.unary.f32(i32 7, float %238)  ; Saturate(value)
  %240 = fmul fast float %239, %231
  %241 = fadd fast float %30, -5.000000e-01
  %242 = fsub fast float %241, %214
  %243 = fadd fast float %31, -5.000000e-01
  %244 = fsub fast float %243, %215
  %245 = call float @dx.op.unary.f32(i32 6, float %242)  ; FAbs(value)
  %246 = call float @dx.op.unary.f32(i32 6, float %244)  ; FAbs(value)
  %247 = fadd fast float %245, -5.000000e-01
  %248 = fadd fast float %246, -5.000000e-01
  %249 = call float @dx.op.binary.f32(i32 35, float %247, float %248)  ; FMax(a,b)
  %250 = fcmp fast olt float %249, 0.000000e+00
  %251 = select i1 %250, float 1.000000e+00, float 0.000000e+00
  %252 = fmul fast float %240, %251
  %253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %254 = extractvalue %dx.types.CBufRet.f32 %253, 1
  %255 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %6, float %158, float %159, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %256 = extractvalue %dx.types.ResRet.f32 %255, 0
  %257 = extractvalue %dx.types.ResRet.f32 %255, 1
  %258 = extractvalue %dx.types.ResRet.f32 %255, 2
  %259 = fmul fast float %256, %254
  %260 = fmul fast float %257, %254
  %261 = fmul fast float %258, %254
  %262 = fmul fast float %259, 0x3FDA65AF80000000
  %263 = call float @dx.op.tertiary.f32(i32 46, float 0x3FD6E286E0000000, float %260, float %262)  ; FMad(a,b,c)
  %264 = call float @dx.op.tertiary.f32(i32 46, float 0x3FC7189380000000, float %261, float %263)  ; FMad(a,b,c)
  %265 = fmul fast float %259, 0x3FCB38DDA0000000
  %266 = call float @dx.op.tertiary.f32(i32 46, float 0x3FE6E286E0000000, float %260, float %265)  ; FMad(a,b,c)
  %267 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB27A0FA0000000, float %261, float %266)  ; FMad(a,b,c)
  %268 = fmul fast float %259, 0x3F93CC4420000000
  %269 = call float @dx.op.tertiary.f32(i32 46, float 0x3FBE835DE0000000, float %260, float %268)  ; FMad(a,b,c)
  %270 = call float @dx.op.tertiary.f32(i32 46, float 0x3FEE68E420000000, float %261, float %269)  ; FMad(a,b,c)
  %271 = fmul fast float %97, 0x3FD553A980000000
  %272 = call float @dx.op.tertiary.f32(i32 46, float 0x3FD6E286E0000000, float %111, float %271)  ; FMad(a,b,c)
  %273 = call float @dx.op.tertiary.f32(i32 46, float 0x3FC7189380000000, float %112, float %272)  ; FMad(a,b,c)
  %274 = fmul fast float %97, 0x3FC5FE4740000000
  %275 = call float @dx.op.tertiary.f32(i32 46, float 0x3FE6E286E0000000, float %111, float %274)  ; FMad(a,b,c)
  %276 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB27A0FA0000000, float %112, float %275)  ; FMad(a,b,c)
  %277 = fmul fast float %97, 0x3F8FFD7F00000000
  %278 = call float @dx.op.tertiary.f32(i32 46, float 0x3FBE835DE0000000, float %111, float %277)  ; FMad(a,b,c)
  %279 = call float @dx.op.tertiary.f32(i32 46, float 0x3FEE68E420000000, float %112, float %278)  ; FMad(a,b,c)
  %280 = fadd fast float %276, %273
  %281 = fadd fast float %280, %279
  %282 = fdiv fast float 1.000000e+00, %281
  %283 = fmul fast float %282, %273
  %284 = call float @dx.op.unary.f32(i32 7, float %283)  ; Saturate(value)
  %285 = fmul fast float %282, %276
  %286 = call float @dx.op.unary.f32(i32 7, float %285)  ; Saturate(value)
  %287 = fadd fast float %267, %264
  %288 = fadd fast float %287, %270
  %289 = fdiv fast float 1.000000e+00, %288
  %290 = fmul fast float %289, %264
  %291 = call float @dx.op.unary.f32(i32 7, float %290)  ; Saturate(value)
  %292 = fmul fast float %289, %267
  %293 = call float @dx.op.unary.f32(i32 7, float %292)  ; Saturate(value)
  %294 = fsub fast float %284, %291
  %295 = fsub fast float %286, %293
  %296 = extractvalue %dx.types.CBufRet.f32 %253, 0
  %297 = call float @dx.op.dot2.f32(i32 54, float %294, float %295, float %294, float %295)  ; Dot2(ax,ay,bx,by)
  %298 = fmul fast float %296, %296
  %299 = fcmp fast olt float %297, %298
  %300 = extractvalue %dx.types.CBufRet.f32 %253, 2
  %301 = select i1 %299, float %252, float 0.000000e+00
  %302 = fadd fast float %300, -1.000000e+00
  %303 = fmul fast float %301, %302
  %304 = fadd fast float %303, 1.000000e+00
  %305 = fsub fast float %110, %259
  %306 = fsub fast float %111, %260
  %307 = fsub fast float %112, %261
  %308 = fmul fast float %304, %305
  %309 = fmul fast float %304, %306
  %310 = fmul fast float %304, %307
  %311 = fadd fast float %308, %259
  %312 = fadd fast float %309, %260
  %313 = fadd fast float %310, %261
  %314 = call float @dx.op.binary.f32(i32 35, float %311, float -3.225500e+04)  ; FMax(a,b)
  %315 = call float @dx.op.binary.f32(i32 35, float %312, float -3.225500e+04)  ; FMax(a,b)
  %316 = call float @dx.op.binary.f32(i32 35, float %313, float -3.225500e+04)  ; FMax(a,b)
  %317 = call float @dx.op.binary.f32(i32 36, float %314, float 3.225500e+04)  ; FMin(a,b)
  %318 = call float @dx.op.binary.f32(i32 36, float %315, float 3.225500e+04)  ; FMin(a,b)
  %319 = call float @dx.op.binary.f32(i32 36, float %316, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %9, i32 %10, i32 undef, float %317, float %318, float %319, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %320

; <label>:320                                     ; preds = %19, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #1

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

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
!dx.entryPoints = !{!18}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !11, !13, !15}
!5 = !{!6, !8, !9, !10}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 0, i32 5, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<float>"* undef, !"", i32 0, i32 4, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<float>"* undef, !"", i32 0, i32 3, i32 1, i32 2, i32 0, !7}
!11 = !{!12}
!12 = !{i32 0, %"class.RWTexture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!13 = !{!14}
!14 = !{i32 0, %VeilSampleConsts* undef, !"", i32 0, i32 0, i32 1, i32 80, null}
!15 = !{!16, !17}
!16 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!17 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!18 = !{void ()* @cs_downsample_veil, !"cs_downsample_veil", null, !4, !19}
!19 = !{i32 0, i64 256, i32 4, !20}
!20 = !{i32 8, i32 8, i32 1}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 1}

