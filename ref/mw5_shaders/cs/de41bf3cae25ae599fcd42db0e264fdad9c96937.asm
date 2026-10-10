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
; shader hash: 944402c8baddf5932a5c2fdde8c7ea80
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
;                                   texture     f32          2d      T4             t6     1
;                                   texture     f32          2d      T5             t7     1
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
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %12 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %13 = uitofp i32 %11 to float
  %14 = uitofp i32 %12 to float
  %15 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %16 = extractvalue %dx.types.CBufRet.f32 %15, 2
  %17 = extractvalue %dx.types.CBufRet.f32 %15, 3
  %18 = fcmp fast olt float %13, %16
  %19 = fcmp fast olt float %14, %17
  %20 = and i1 %18, %19
  br i1 %20, label %21, label %345, !dx.controlflow.hints !23

; <label>:21                                      ; preds = %0
  %22 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %23 = extractvalue %dx.types.CBufRet.f32 %22, 2
  %24 = extractvalue %dx.types.CBufRet.f32 %22, 3
  %25 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %26 = extractvalue %dx.types.CBufRet.f32 %25, 2
  %27 = extractvalue %dx.types.CBufRet.f32 %25, 3
  %28 = fmul fast float %26, %23
  %29 = fmul fast float %27, %24
  %30 = fadd fast float %13, 5.000000e-01
  %31 = fadd fast float %14, 5.000000e-01
  %32 = fmul fast float %26, %30
  %33 = fmul fast float %27, %31
  %34 = call float @dx.op.dot2.f32(i32 54, float %30, float %31, float 0x3FB12E2860000000, float 0x3F77E8B200000000)  ; Dot2(ax,ay,bx,by)
  %35 = call float @dx.op.unary.f32(i32 22, float %34)  ; Frc(value)
  %36 = fmul fast float %35, 0x404A7DD040000000
  %37 = call float @dx.op.unary.f32(i32 22, float %36)  ; Frc(value)
  %38 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %8, float %32, float %33, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %39 = extractvalue %dx.types.ResRet.f32 %38, 0
  %40 = extractvalue %dx.types.ResRet.f32 %38, 1
  %41 = extractvalue %dx.types.ResRet.f32 %38, 2
  %42 = fmul fast float %39, 0x3FDEB71760000000
  %43 = fmul fast float %40, 0x3FDEB71760000000
  %44 = fmul fast float %41, 0x3FDEB71760000000
  %45 = fmul fast float %37, 0x3FE921FB60000000
  %46 = fadd fast float %45, 0x3FE921FB60000000
  %47 = call float @dx.op.unary.f32(i32 13, float %46)  ; Sin(value)
  %48 = call float @dx.op.unary.f32(i32 12, float %46)  ; Cos(value)
  %49 = fmul fast float %28, 0x3FFE2F0140000000
  %50 = fmul fast float %49, %47
  %51 = fmul fast float %29, 0x3FFE2F0140000000
  %52 = fmul fast float %51, %48
  %53 = fadd fast float %50, %32
  %54 = fadd fast float %52, %33
  %55 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %8, float %53, float %54, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %56 = extractvalue %dx.types.ResRet.f32 %55, 0
  %57 = extractvalue %dx.types.ResRet.f32 %55, 1
  %58 = extractvalue %dx.types.ResRet.f32 %55, 2
  %59 = fadd fast float %45, 0x4002D97C80000000
  %60 = call float @dx.op.unary.f32(i32 13, float %59)  ; Sin(value)
  %61 = call float @dx.op.unary.f32(i32 12, float %59)  ; Cos(value)
  %62 = fmul fast float %28, 0x3FEE145200000000
  %63 = fmul fast float %62, %60
  %64 = fmul fast float %29, 0x3FEE145200000000
  %65 = fmul fast float %64, %61
  %66 = fadd fast float %63, %32
  %67 = fadd fast float %65, %33
  %68 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %8, float %66, float %67, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %69 = extractvalue %dx.types.ResRet.f32 %68, 0
  %70 = extractvalue %dx.types.ResRet.f32 %68, 1
  %71 = extractvalue %dx.types.ResRet.f32 %68, 2
  %72 = fadd fast float %45, 0x400F6A7A40000000
  %73 = call float @dx.op.unary.f32(i32 13, float %72)  ; Sin(value)
  %74 = call float @dx.op.unary.f32(i32 12, float %72)  ; Cos(value)
  %75 = fmul fast float %49, %73
  %76 = fmul fast float %51, %74
  %77 = fadd fast float %75, %32
  %78 = fadd fast float %76, %33
  %79 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %8, float %77, float %78, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %80 = extractvalue %dx.types.ResRet.f32 %79, 0
  %81 = extractvalue %dx.types.ResRet.f32 %79, 1
  %82 = extractvalue %dx.types.ResRet.f32 %79, 2
  %83 = fadd fast float %45, 0x4015FDBC00000000
  %84 = call float @dx.op.unary.f32(i32 13, float %83)  ; Sin(value)
  %85 = call float @dx.op.unary.f32(i32 12, float %83)  ; Cos(value)
  %86 = fmul fast float %62, %84
  %87 = fmul fast float %64, %85
  %88 = fadd fast float %86, %32
  %89 = fadd fast float %87, %33
  %90 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %8, float %88, float %89, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %91 = extractvalue %dx.types.ResRet.f32 %90, 0
  %92 = extractvalue %dx.types.ResRet.f32 %90, 1
  %93 = extractvalue %dx.types.ResRet.f32 %90, 2
  %94 = fadd fast float %91, %69
  %95 = fmul fast float %94, 0x3FD363C320000000
  %96 = fadd fast float %80, %56
  %97 = fmul fast float %96, 0x3FB3714BA0000000
  %98 = fadd fast float %95, %42
  %99 = fadd fast float %98, %97
  %100 = fadd fast float %92, %70
  %101 = fmul fast float %100, 0x3FD363C320000000
  %102 = fadd fast float %81, %57
  %103 = fmul fast float %102, 0x3FB3714BA0000000
  %104 = fadd fast float %101, %43
  %105 = fadd fast float %104, %103
  %106 = fadd fast float %93, %71
  %107 = fmul fast float %106, 0x3FD363C320000000
  %108 = fadd fast float %82, %58
  %109 = fmul fast float %108, 0x3FB3714BA0000000
  %110 = fadd fast float %107, %44
  %111 = fadd fast float %110, %109
  %112 = fmul fast float %99, 0x3FE9DA78C0000000
  %113 = fmul fast float %105, 0x3FE9DA78C0000000
  %114 = fmul fast float %111, 0x3FE9DA78C0000000
  %115 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %9, float %32, float %33, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %116 = extractvalue %dx.types.ResRet.f32 %115, 0
  %117 = bitcast float %116 to i32
  %118 = lshr i32 %117, 11
  %119 = and i32 %117, 2047
  %120 = and i32 %118, 2047
  %121 = uitofp i32 %119 to float
  %122 = uitofp i32 %120 to float
  %123 = fmul fast float %121, 0x3F50040100000000
  %124 = fmul fast float %122, 0x3F50040100000000
  %125 = fadd fast float %123, -1.000000e+00
  %126 = fadd fast float %124, -1.000000e+00
  %127 = lshr i32 %117, 22
  %128 = shl nuw nsw i32 %127, 5
  %129 = call float @dx.op.legacyF16ToF32(i32 131, i32 %128)  ; LegacyF16ToF32(value)
  %130 = call float @dx.op.unary.f32(i32 6, float %125)  ; FAbs(value)
  %131 = call float @dx.op.unary.f32(i32 6, float %126)  ; FAbs(value)
  %132 = fadd fast float %130, -5.000000e-01
  %133 = fadd fast float %131, -5.000000e-01
  %134 = fmul fast float %132, 2.000000e+00
  %135 = fmul fast float %133, 2.000000e+00
  %136 = call float @dx.op.unary.f32(i32 7, float %134)  ; Saturate(value)
  %137 = call float @dx.op.unary.f32(i32 7, float %135)  ; Saturate(value)
  %138 = fmul fast float %130, 2.000000e+00
  %139 = fmul fast float %131, 2.000000e+00
  %140 = call float @dx.op.unary.f32(i32 7, float %138)  ; Saturate(value)
  %141 = call float @dx.op.unary.f32(i32 7, float %139)  ; Saturate(value)
  %142 = fmul fast float %136, %136
  %143 = fmul fast float %142, 0x3FA48888A0000000
  %144 = fmul fast float %137, %137
  %145 = fmul fast float %144, 0x3FB2407960000000
  %146 = fmul fast float %140, 0x3F599999A0000000
  %147 = fmul fast float %141, 0x3F66C16C20000000
  %148 = fadd fast float %146, %143
  %149 = fadd fast float %147, %145
  %150 = fsub fast float -0.000000e+00, %148
  %151 = fsub fast float -0.000000e+00, %149
  %152 = fcmp fast olt float %125, 0.000000e+00
  %153 = fcmp fast olt float %126, 0.000000e+00
  %154 = select i1 %152, float 0.000000e+00, float 1.000000e+00
  %155 = select i1 %153, float 0.000000e+00, float 1.000000e+00
  %156 = fcmp fast une float %154, 0.000000e+00
  %157 = fcmp fast une float %155, 0.000000e+00
  %158 = select i1 %156, float %148, float %150
  %159 = select i1 %157, float %149, float %151
  %160 = fsub fast float %32, %158
  %161 = fsub fast float %33, %159
  %162 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %9, float %160, float %161, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %163 = extractvalue %dx.types.ResRet.f32 %162, 0
  %164 = extractvalue %dx.types.ResRet.f32 %162, 1
  %165 = extractvalue %dx.types.ResRet.f32 %162, 2
  %166 = extractvalue %dx.types.ResRet.f32 %162, 3
  %167 = bitcast float %163 to i32
  %168 = bitcast float %164 to i32
  %169 = bitcast float %165 to i32
  %170 = bitcast float %166 to i32
  %171 = call i32 @dx.op.binary.i32(i32 40, i32 %169, i32 %170)  ; UMin(a,b)
  %172 = call i32 @dx.op.binary.i32(i32 40, i32 %168, i32 %171)  ; UMin(a,b)
  %173 = call i32 @dx.op.binary.i32(i32 40, i32 %167, i32 %172)  ; UMin(a,b)
  %174 = lshr i32 %173, 11
  %175 = and i32 %173, 2047
  %176 = and i32 %174, 2047
  %177 = uitofp i32 %175 to float
  %178 = uitofp i32 %176 to float
  %179 = fmul fast float %177, 0x3F50040100000000
  %180 = fmul fast float %178, 0x3F50040100000000
  %181 = fadd fast float %179, -1.000000e+00
  %182 = fadd fast float %180, -1.000000e+00
  %183 = lshr i32 %173, 22
  %184 = shl nuw nsw i32 %183, 5
  %185 = call float @dx.op.legacyF16ToF32(i32 131, i32 %184)  ; LegacyF16ToF32(value)
  %186 = call float @dx.op.unary.f32(i32 6, float %181)  ; FAbs(value)
  %187 = call float @dx.op.unary.f32(i32 6, float %182)  ; FAbs(value)
  %188 = fadd fast float %186, -5.000000e-01
  %189 = fadd fast float %187, -5.000000e-01
  %190 = fmul fast float %188, 2.000000e+00
  %191 = fmul fast float %189, 2.000000e+00
  %192 = call float @dx.op.unary.f32(i32 7, float %190)  ; Saturate(value)
  %193 = call float @dx.op.unary.f32(i32 7, float %191)  ; Saturate(value)
  %194 = fmul fast float %186, 2.000000e+00
  %195 = fmul fast float %187, 2.000000e+00
  %196 = call float @dx.op.unary.f32(i32 7, float %194)  ; Saturate(value)
  %197 = call float @dx.op.unary.f32(i32 7, float %195)  ; Saturate(value)
  %198 = fmul fast float %192, %192
  %199 = fmul fast float %198, 0x3FA48888A0000000
  %200 = fmul fast float %193, %193
  %201 = fmul fast float %200, 0x3FB2407960000000
  %202 = fmul fast float %196, 0x3F599999A0000000
  %203 = fmul fast float %197, 0x3F66C16C20000000
  %204 = fadd fast float %202, %199
  %205 = fadd fast float %203, %201
  %206 = fsub fast float -0.000000e+00, %204
  %207 = fsub fast float -0.000000e+00, %205
  %208 = fcmp fast olt float %181, 0.000000e+00
  %209 = fcmp fast olt float %182, 0.000000e+00
  %210 = select i1 %208, float 0.000000e+00, float 1.000000e+00
  %211 = select i1 %209, float 0.000000e+00, float 1.000000e+00
  %212 = fcmp fast une float %210, 0.000000e+00
  %213 = fcmp fast une float %211, 0.000000e+00
  %214 = select i1 %212, float %204, float %206
  %215 = select i1 %213, float %205, float %207
  %216 = fmul fast float %158, 3.000000e+00
  %217 = fmul fast float %159, 3.000000e+00
  %218 = fmul fast float %129, 0x3FA99999A0000000
  %219 = fadd fast float %185, %218
  %220 = fcmp fast olt float %129, %219
  %221 = fsub fast float %158, %214
  %222 = fsub fast float %159, %215
  %223 = fmul fast float %221, 1.920000e+03
  %224 = fmul fast float %222, 1.080000e+03
  %225 = call float @dx.op.dot2.f32(i32 54, float %223, float %224, float %223, float %224)  ; Dot2(ax,ay,bx,by)
  %226 = bitcast float %225 to i32
  %227 = ashr i32 %226, 1
  %228 = add nsw i32 %227, 532487669
  %229 = bitcast i32 %228 to float
  %230 = fmul fast float %229, 2.000000e+00
  %231 = fsub fast float 1.000000e+00, %230
  %232 = call float @dx.op.unary.f32(i32 7, float %231)  ; Saturate(value)
  %233 = select i1 %220, float 1.000000e+00, float %232
  %234 = fmul fast float %158, 1.920000e+03
  %235 = fmul fast float %159, 1.080000e+03
  %236 = call float @dx.op.unary.f32(i32 6, float %234)  ; FAbs(value)
  %237 = call float @dx.op.unary.f32(i32 6, float %235)  ; FAbs(value)
  %238 = call float @dx.op.binary.f32(i32 35, float %236, float %237)  ; FMax(a,b)
  %239 = fmul fast float %238, 0x3FB99999A0000000
  %240 = fsub fast float 8.000000e+00, %239
  %241 = call float @dx.op.unary.f32(i32 7, float %240)  ; Saturate(value)
  %242 = fmul fast float %241, %233
  %243 = fadd fast float %32, -5.000000e-01
  %244 = fsub fast float %243, %216
  %245 = fadd fast float %33, -5.000000e-01
  %246 = fsub fast float %245, %217
  %247 = call float @dx.op.unary.f32(i32 6, float %244)  ; FAbs(value)
  %248 = call float @dx.op.unary.f32(i32 6, float %246)  ; FAbs(value)
  %249 = fadd fast float %247, -5.000000e-01
  %250 = fadd fast float %248, -5.000000e-01
  %251 = call float @dx.op.binary.f32(i32 35, float %249, float %250)  ; FMax(a,b)
  %252 = fcmp fast olt float %251, 0.000000e+00
  %253 = select i1 %252, float 1.000000e+00, float 0.000000e+00
  %254 = fmul fast float %242, %253
  %255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %256 = extractvalue %dx.types.CBufRet.f32 %255, 1
  %257 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %8, float %160, float %161, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %258 = extractvalue %dx.types.ResRet.f32 %257, 0
  %259 = extractvalue %dx.types.ResRet.f32 %257, 1
  %260 = extractvalue %dx.types.ResRet.f32 %257, 2
  %261 = fmul fast float %258, %256
  %262 = fmul fast float %259, %256
  %263 = fmul fast float %260, %256
  %264 = fmul fast float %261, 0x3FDA65AF80000000
  %265 = call float @dx.op.tertiary.f32(i32 46, float 0x3FD6E286E0000000, float %262, float %264)  ; FMad(a,b,c)
  %266 = call float @dx.op.tertiary.f32(i32 46, float 0x3FC7189380000000, float %263, float %265)  ; FMad(a,b,c)
  %267 = fmul fast float %261, 0x3FCB38DDA0000000
  %268 = call float @dx.op.tertiary.f32(i32 46, float 0x3FE6E286E0000000, float %262, float %267)  ; FMad(a,b,c)
  %269 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB27A0FA0000000, float %263, float %268)  ; FMad(a,b,c)
  %270 = fmul fast float %261, 0x3F93CC4420000000
  %271 = call float @dx.op.tertiary.f32(i32 46, float 0x3FBE835DE0000000, float %262, float %270)  ; FMad(a,b,c)
  %272 = call float @dx.op.tertiary.f32(i32 46, float 0x3FEE68E420000000, float %263, float %271)  ; FMad(a,b,c)
  %273 = fmul fast float %99, 0x3FD553A980000000
  %274 = call float @dx.op.tertiary.f32(i32 46, float 0x3FD6E286E0000000, float %113, float %273)  ; FMad(a,b,c)
  %275 = call float @dx.op.tertiary.f32(i32 46, float 0x3FC7189380000000, float %114, float %274)  ; FMad(a,b,c)
  %276 = fmul fast float %99, 0x3FC5FE4740000000
  %277 = call float @dx.op.tertiary.f32(i32 46, float 0x3FE6E286E0000000, float %113, float %276)  ; FMad(a,b,c)
  %278 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB27A0FA0000000, float %114, float %277)  ; FMad(a,b,c)
  %279 = fmul fast float %99, 0x3F8FFD7F00000000
  %280 = call float @dx.op.tertiary.f32(i32 46, float 0x3FBE835DE0000000, float %113, float %279)  ; FMad(a,b,c)
  %281 = call float @dx.op.tertiary.f32(i32 46, float 0x3FEE68E420000000, float %114, float %280)  ; FMad(a,b,c)
  %282 = fadd fast float %278, %275
  %283 = fadd fast float %282, %281
  %284 = fdiv fast float 1.000000e+00, %283
  %285 = fmul fast float %284, %275
  %286 = call float @dx.op.unary.f32(i32 7, float %285)  ; Saturate(value)
  %287 = fmul fast float %284, %278
  %288 = call float @dx.op.unary.f32(i32 7, float %287)  ; Saturate(value)
  %289 = fadd fast float %269, %266
  %290 = fadd fast float %289, %272
  %291 = fdiv fast float 1.000000e+00, %290
  %292 = fmul fast float %291, %266
  %293 = call float @dx.op.unary.f32(i32 7, float %292)  ; Saturate(value)
  %294 = fmul fast float %291, %269
  %295 = call float @dx.op.unary.f32(i32 7, float %294)  ; Saturate(value)
  %296 = fsub fast float %286, %293
  %297 = fsub fast float %288, %295
  %298 = extractvalue %dx.types.CBufRet.f32 %255, 0
  %299 = call float @dx.op.dot2.f32(i32 54, float %296, float %297, float %296, float %297)  ; Dot2(ax,ay,bx,by)
  %300 = fmul fast float %298, %298
  %301 = fcmp fast olt float %299, %300
  %302 = extractvalue %dx.types.CBufRet.f32 %255, 2
  %303 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %9, float %32, float %33, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %304 = extractvalue %dx.types.ResRet.f32 %303, 0
  %305 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %9, float %160, float %161, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %306 = extractvalue %dx.types.ResRet.f32 %305, 0
  %307 = fadd fast float %306, 0xBFB1111120000000
  %308 = fmul fast float %307, 0x3FF1249240000000
  %309 = call float @dx.op.unary.f32(i32 7, float %308)  ; Saturate(value)
  %310 = fadd fast float %304, 0xBFB1111120000000
  %311 = fmul fast float %310, 0x3FF1249240000000
  %312 = call float @dx.op.unary.f32(i32 7, float %311)  ; Saturate(value)
  %313 = fsub fast float %312, %309
  %314 = call float @dx.op.unary.f32(i32 6, float %313)  ; FAbs(value)
  %315 = fadd fast float %312, %309
  %316 = fdiv fast float 1.000000e+00, %315
  %317 = fmul fast float %314, 0x4005555560000000
  %318 = fmul fast float %317, %316
  %319 = fsub fast float 1.000000e+00, %318
  %320 = call float @dx.op.unary.f32(i32 7, float %319)  ; Saturate(value)
  %321 = call float @dx.op.binary.f32(i32 36, float %312, float %309)  ; FMin(a,b)
  %322 = fmul fast float %321, 4.000000e+01
  %323 = call float @dx.op.unary.f32(i32 7, float %322)  ; Saturate(value)
  %324 = call float @dx.op.binary.f32(i32 36, float %320, float %323)  ; FMin(a,b)
  %325 = fadd fast float %302, -1.000000e+00
  %326 = select i1 %301, float %254, float 0.000000e+00
  %327 = fmul fast float %326, %325
  %328 = fmul fast float %327, %324
  %329 = fadd fast float %328, 1.000000e+00
  %330 = fsub fast float %112, %261
  %331 = fsub fast float %113, %262
  %332 = fsub fast float %114, %263
  %333 = fmul fast float %329, %330
  %334 = fmul fast float %329, %331
  %335 = fmul fast float %329, %332
  %336 = fadd fast float %333, %261
  %337 = fadd fast float %334, %262
  %338 = fadd fast float %335, %263
  %339 = call float @dx.op.binary.f32(i32 35, float %336, float -3.225500e+04)  ; FMax(a,b)
  %340 = call float @dx.op.binary.f32(i32 35, float %337, float -3.225500e+04)  ; FMax(a,b)
  %341 = call float @dx.op.binary.f32(i32 35, float %338, float -3.225500e+04)  ; FMax(a,b)
  %342 = call float @dx.op.binary.f32(i32 36, float %339, float 3.225500e+04)  ; FMin(a,b)
  %343 = call float @dx.op.binary.f32(i32 36, float %340, float 3.225500e+04)  ; FMin(a,b)
  %344 = call float @dx.op.binary.f32(i32 36, float %341, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %11, i32 %12, i32 undef, float %342, float %343, float %344, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %345

; <label>:345                                     ; preds = %21, %0
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
!dx.entryPoints = !{!20}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !13, !15, !17}
!5 = !{!6, !8, !9, !10, !11, !12}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 0, i32 5, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<float>"* undef, !"", i32 0, i32 4, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<float>"* undef, !"", i32 0, i32 3, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<float>"* undef, !"", i32 0, i32 6, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<float>"* undef, !"", i32 0, i32 7, i32 1, i32 2, i32 0, !7}
!13 = !{!14}
!14 = !{i32 0, %"class.RWTexture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!15 = !{!16}
!16 = !{i32 0, %VeilSampleConsts* undef, !"", i32 0, i32 0, i32 1, i32 80, null}
!17 = !{!18, !19}
!18 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!19 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!20 = !{void ()* @cs_downsample_veil, !"cs_downsample_veil", null, !4, !21}
!21 = !{i32 0, i64 256, i32 4, !22}
!22 = !{i32 8, i32 8, i32 1}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 1}

