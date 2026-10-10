;
; Note: shader requires additional functionality:
;       Use native low precision
;
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
; shader hash: fb271dbdff7650ac26ddbef8369044e1
;
; Pipeline Runtime Information: 
;
;
;
; Buffer Definitions:
;
; cbuffer cbFSR2
; {
;
;   struct cbFSR2
;   {
;
;       int2 uRenderSize;                             ; Offset:    0
;       int2 uDisplaySize;                            ; Offset:    8
;       int2 uLumaMipDimensions;                      ; Offset:   16
;       int uLumaMipLevelToUse;                       ; Offset:   24
;       uint uFrameIndex;                             ; Offset:   28
;       float2 fDisplaySizeRcp;                       ; Offset:   32
;       float2 fJitter;                               ; Offset:   40
;       float4 fDeviceToViewDepth;                    ; Offset:   48
;       float2 depthclip_uv_scale;                    ; Offset:   64
;       float2 postprocessed_lockstatus_uv_scale;     ; Offset:   72
;       float2 reactive_mask_dim_rcp;                 ; Offset:   80
;       float2 MotionVectorScale;                     ; Offset:   88
;       float2 fDownscaleFactor;                      ; Offset:   96
;       float fPreExposure;                           ; Offset:  104
;       float fTanHalfFOV;                            ; Offset:  108
;       float2 fMotionVectorJitterCancellation;       ; Offset:  112
;       float fJitterSequenceLength;                  ; Offset:  120
;       float fLockInitialLifetime;                   ; Offset:  124
;       float fLockTickDelta;                         ; Offset:  128
;       float fDeltaTime;                             ; Offset:  132
;       float fDynamicResChangeFactor;                ; Offset:  136
;       float fLumaMipRcp;                            ; Offset:  140
;   
;   } cbFSR2;                                         ; Offset:    0 Size:   144
;
; }
;
; cbuffer cbRCAS
; {
;
;   struct cbRCAS
;   {
;
;       uint4 rcasConfig;                             ; Offset:    0
;   
;   } cbRCAS;                                         ; Offset:    0 Size:    16
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
; cbFSR2                            cbuffer      NA          NA     CB0            cb0     1
; cbRCAS                            cbuffer      NA          NA     CB1            cb1     1
; r_exposure                        texture     f32          2d      T0             t0     1
; r_rcas_input                      texture     f32          2d      T1             t1     1
; rw_upscaled_output                    UAV     f32          2d      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:8-i16:16-i32:32-i64:64-f16:16-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%"class.Texture2D<vector<float, 2> >" = type { <2 x float>, %"class.Texture2D<vector<float, 2> >::mips_type" }
%"class.Texture2D<vector<float, 2> >::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.RWTexture2D<vector<float, 4> >" = type { <4 x float> }
%cbFSR2 = type { <2 x i32>, <2 x i32>, <2 x i32>, i32, i32, <2 x float>, <2 x float>, <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, float, float, <2 x float>, float, float, float, float, float, float }
%cbRCAS = type { <4 x i32> }

define void @CS() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %7 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %8 = call i32 @dx.op.groupId.i32(i32 94, i32 1)  ; GroupId(component)
  %9 = lshr i32 %6, 1
  %10 = and i32 %9, 7
  %11 = lshr i32 %6, 3
  %12 = and i32 %6, 1
  %13 = and i32 %11, 6
  %14 = or i32 %13, %12
  %15 = shl i32 %7, 4
  %16 = shl i32 %8, 4
  %17 = or i32 %10, %15
  %18 = or i32 %14, %16
  %19 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %20 = extractvalue %dx.types.CBufRet.i32 %19, 1
  %21 = shl i32 %17, 16
  %22 = ashr exact i32 %21, 16
  %23 = shl i32 %18, 16
  %24 = add i32 %23, -65536
  %25 = ashr exact i32 %24, 16
  %26 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %22, i32 %25, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %27 = extractvalue %dx.types.ResRet.f32 %26, 0
  %28 = extractvalue %dx.types.ResRet.f32 %26, 1
  %29 = extractvalue %dx.types.ResRet.f32 %26, 2
  %30 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 0, i32 0, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %31 = extractvalue %dx.types.ResRet.f32 %30, 0
  %32 = fcmp fast oeq float %31, 0.000000e+00
  %33 = select i1 %32, float 1.000000e+00, float %31
  %34 = fmul fast float %33, %27
  %35 = fmul fast float %33, %28
  %36 = fmul fast float %33, %29
  %37 = call float @dx.op.binary.f32(i32 35, float %35, float %36)  ; FMax(a,b)
  %38 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %34)  ; FMax(a,b)
  %39 = call float @dx.op.binary.f32(i32 35, float %38, float %37)  ; FMax(a,b)
  %40 = fadd fast float %39, 1.000000e+00
  %41 = fdiv fast float %34, %40
  %42 = fdiv fast float %35, %40
  %43 = fdiv fast float %36, %40
  %44 = fptrunc float %41 to half
  %45 = fptrunc float %42 to half
  %46 = fptrunc float %43 to half
  %47 = add i32 %21, -65536
  %48 = ashr exact i32 %47, 16
  %49 = ashr exact i32 %23, 16
  %50 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %48, i32 %49, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %51 = extractvalue %dx.types.ResRet.f32 %50, 0
  %52 = extractvalue %dx.types.ResRet.f32 %50, 1
  %53 = extractvalue %dx.types.ResRet.f32 %50, 2
  %54 = fmul fast float %33, %51
  %55 = fmul fast float %33, %52
  %56 = fmul fast float %33, %53
  %57 = call float @dx.op.binary.f32(i32 35, float %55, float %56)  ; FMax(a,b)
  %58 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %54)  ; FMax(a,b)
  %59 = call float @dx.op.binary.f32(i32 35, float %58, float %57)  ; FMax(a,b)
  %60 = fadd fast float %59, 1.000000e+00
  %61 = fdiv fast float %54, %60
  %62 = fdiv fast float %55, %60
  %63 = fdiv fast float %56, %60
  %64 = fptrunc float %61 to half
  %65 = fptrunc float %62 to half
  %66 = fptrunc float %63 to half
  %67 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %22, i32 %49, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %68 = extractvalue %dx.types.ResRet.f32 %67, 0
  %69 = extractvalue %dx.types.ResRet.f32 %67, 1
  %70 = extractvalue %dx.types.ResRet.f32 %67, 2
  %71 = fmul fast float %33, %68
  %72 = fmul fast float %33, %69
  %73 = fmul fast float %33, %70
  %74 = call float @dx.op.binary.f32(i32 35, float %72, float %73)  ; FMax(a,b)
  %75 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %71)  ; FMax(a,b)
  %76 = call float @dx.op.binary.f32(i32 35, float %75, float %74)  ; FMax(a,b)
  %77 = fadd fast float %76, 1.000000e+00
  %78 = fdiv fast float %71, %77
  %79 = fdiv fast float %72, %77
  %80 = fdiv fast float %73, %77
  %81 = fptrunc float %78 to half
  %82 = fptrunc float %79 to half
  %83 = fptrunc float %80 to half
  %84 = add nsw i32 %21, 65536
  %85 = ashr exact i32 %84, 16
  %86 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %85, i32 %49, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %87 = extractvalue %dx.types.ResRet.f32 %86, 0
  %88 = extractvalue %dx.types.ResRet.f32 %86, 1
  %89 = extractvalue %dx.types.ResRet.f32 %86, 2
  %90 = fmul fast float %33, %87
  %91 = fmul fast float %33, %88
  %92 = fmul fast float %33, %89
  %93 = call float @dx.op.binary.f32(i32 35, float %91, float %92)  ; FMax(a,b)
  %94 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %90)  ; FMax(a,b)
  %95 = call float @dx.op.binary.f32(i32 35, float %94, float %93)  ; FMax(a,b)
  %96 = fadd fast float %95, 1.000000e+00
  %97 = fdiv fast float %90, %96
  %98 = fdiv fast float %91, %96
  %99 = fdiv fast float %92, %96
  %100 = fptrunc float %97 to half
  %101 = fptrunc float %98 to half
  %102 = fptrunc float %99 to half
  %103 = add nsw i32 %23, 65536
  %104 = ashr exact i32 %103, 16
  %105 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %22, i32 %104, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %106 = extractvalue %dx.types.ResRet.f32 %105, 0
  %107 = extractvalue %dx.types.ResRet.f32 %105, 1
  %108 = extractvalue %dx.types.ResRet.f32 %105, 2
  %109 = fmul fast float %33, %106
  %110 = fmul fast float %33, %107
  %111 = fmul fast float %33, %108
  %112 = call float @dx.op.binary.f32(i32 35, float %110, float %111)  ; FMax(a,b)
  %113 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %109)  ; FMax(a,b)
  %114 = call float @dx.op.binary.f32(i32 35, float %113, float %112)  ; FMax(a,b)
  %115 = fadd fast float %114, 1.000000e+00
  %116 = fdiv fast float %109, %115
  %117 = fdiv fast float %110, %115
  %118 = fdiv fast float %111, %115
  %119 = fptrunc float %116 to half
  %120 = fptrunc float %117 to half
  %121 = fptrunc float %118 to half
  %122 = fadd fast half %46, %44
  %123 = fmul fast half %122, 0xH3800
  %124 = fadd fast half %123, %45
  %125 = fadd fast half %66, %64
  %126 = fmul fast half %125, 0xH3800
  %127 = fadd fast half %126, %65
  %128 = fadd fast half %83, %81
  %129 = fmul fast half %128, 0xH3800
  %130 = fadd fast half %129, %82
  %131 = fadd fast half %102, %100
  %132 = fmul fast half %131, 0xH3800
  %133 = fadd fast half %132, %101
  %134 = fadd fast half %121, %119
  %135 = fmul fast half %134, 0xH3800
  %136 = fadd fast half %135, %120
  %137 = fadd fast half %127, %124
  %138 = fadd fast half %137, %133
  %139 = fadd fast half %138, %136
  %140 = fmul fast half %139, 0xH3400
  %141 = fsub fast half %140, %130
  %142 = call half @dx.op.unary.f16(i32 6, half %141)  ; FAbs(value)
  %143 = call half @dx.op.binary.f16(i32 35, half %127, half %130)  ; FMax(a,b)
  %144 = call half @dx.op.binary.f16(i32 35, half %124, half %143)  ; FMax(a,b)
  %145 = call half @dx.op.binary.f16(i32 35, half %133, half %136)  ; FMax(a,b)
  %146 = call half @dx.op.binary.f16(i32 35, half %144, half %145)  ; FMax(a,b)
  %147 = call half @dx.op.binary.f16(i32 36, half %127, half %130)  ; FMin(a,b)
  %148 = call half @dx.op.binary.f16(i32 36, half %124, half %147)  ; FMin(a,b)
  %149 = call half @dx.op.binary.f16(i32 36, half %133, half %136)  ; FMin(a,b)
  %150 = call half @dx.op.binary.f16(i32 36, half %148, half %149)  ; FMin(a,b)
  %151 = fsub fast half %146, %150
  %152 = bitcast half %151 to i16
  %153 = sub i16 30605, %152
  %154 = bitcast i16 %153 to half
  %155 = fmul fast half %154, %151
  %156 = fsub fast half 0xH4000, %155
  %157 = fmul fast half %154, %142
  %158 = fmul fast half %157, %156
  %159 = call half @dx.op.unary.f16(i32 7, half %158)  ; Saturate(value)
  %160 = fmul fast half %159, 0xH3800
  %161 = fsub fast half 0xH3C00, %160
  %162 = call half @dx.op.binary.f16(i32 36, half %64, half %100)  ; FMin(a,b)
  %163 = call half @dx.op.binary.f16(i32 36, half %44, half %162)  ; FMin(a,b)
  %164 = call half @dx.op.binary.f16(i32 36, half %163, half %119)  ; FMin(a,b)
  %165 = call half @dx.op.binary.f16(i32 36, half %65, half %101)  ; FMin(a,b)
  %166 = call half @dx.op.binary.f16(i32 36, half %45, half %165)  ; FMin(a,b)
  %167 = call half @dx.op.binary.f16(i32 36, half %166, half %120)  ; FMin(a,b)
  %168 = call half @dx.op.binary.f16(i32 36, half %66, half %102)  ; FMin(a,b)
  %169 = call half @dx.op.binary.f16(i32 36, half %46, half %168)  ; FMin(a,b)
  %170 = call half @dx.op.binary.f16(i32 36, half %169, half %121)  ; FMin(a,b)
  %171 = call half @dx.op.binary.f16(i32 35, half %64, half %100)  ; FMax(a,b)
  %172 = call half @dx.op.binary.f16(i32 35, half %44, half %171)  ; FMax(a,b)
  %173 = call half @dx.op.binary.f16(i32 35, half %172, half %119)  ; FMax(a,b)
  %174 = call half @dx.op.binary.f16(i32 35, half %65, half %101)  ; FMax(a,b)
  %175 = call half @dx.op.binary.f16(i32 35, half %45, half %174)  ; FMax(a,b)
  %176 = call half @dx.op.binary.f16(i32 35, half %175, half %120)  ; FMax(a,b)
  %177 = call half @dx.op.binary.f16(i32 35, half %66, half %102)  ; FMax(a,b)
  %178 = call half @dx.op.binary.f16(i32 35, half %46, half %177)  ; FMax(a,b)
  %179 = call half @dx.op.binary.f16(i32 35, half %178, half %121)  ; FMax(a,b)
  %180 = fdiv fast half 0xH3400, %173
  %181 = fdiv fast half 0xH3400, %176
  %182 = fdiv fast half 0xH3400, %179
  %183 = fsub fast half 0xH3C00, %173
  %184 = fmul fast half %164, 0xH4400
  %185 = fadd fast half %184, 0xHC400
  %186 = fdiv fast half 0xH3C00, %185
  %187 = fmul fast half %186, %183
  %188 = fsub fast half 0xH3C00, %176
  %189 = fmul fast half %167, 0xH4400
  %190 = fadd fast half %189, 0xHC400
  %191 = fdiv fast half 0xH3C00, %190
  %192 = fmul fast half %191, %188
  %193 = fsub fast half 0xH3C00, %179
  %194 = fmul fast half %170, 0xH4400
  %195 = fadd fast half %194, 0xHC400
  %196 = fdiv fast half 0xH3C00, %195
  %197 = fmul fast half %196, %193
  %198 = fmul fast half %164, %180
  %199 = fsub fast half 0xH8000, %198
  %200 = call half @dx.op.binary.f16(i32 35, half %199, half %187)  ; FMax(a,b)
  %201 = fmul fast half %167, %181
  %202 = fsub fast half 0xH8000, %201
  %203 = call half @dx.op.binary.f16(i32 35, half %202, half %192)  ; FMax(a,b)
  %204 = fmul fast half %170, %182
  %205 = fsub fast half 0xH8000, %204
  %206 = call half @dx.op.binary.f16(i32 35, half %205, half %197)  ; FMax(a,b)
  %207 = call half @dx.op.binary.f16(i32 35, half %203, half %206)  ; FMax(a,b)
  %208 = call half @dx.op.binary.f16(i32 35, half %200, half %207)  ; FMax(a,b)
  %209 = call half @dx.op.binary.f16(i32 36, half %208, half 0xH0000)  ; FMin(a,b)
  %210 = call half @dx.op.binary.f16(i32 35, half 0xHB200, half %209)  ; FMax(a,b)
  %211 = and i32 %20, 65535
  %212 = call float @dx.op.legacyF16ToF32(i32 131, i32 %211)  ; LegacyF16ToF32(value)
  %213 = fptrunc float %212 to half
  %214 = fmul fast half %210, %161
  %215 = fmul fast half %214, %213
  %216 = fmul fast half %215, 0xH4400
  %217 = fadd fast half %216, 0xH3C00
  %218 = bitcast half %217 to i16
  %219 = sub i16 30605, %218
  %220 = bitcast i16 %219 to half
  %221 = fmul fast half %220, %217
  %222 = fsub fast half 0xH4000, %221
  %223 = fmul fast half %222, %220
  %224 = fadd fast half %64, %44
  %225 = fadd fast half %224, %100
  %226 = fadd fast half %225, %119
  %227 = fmul fast half %215, %226
  %228 = fadd fast half %227, %81
  %229 = fmul fast half %223, %228
  %230 = fadd fast half %65, %45
  %231 = fadd fast half %230, %101
  %232 = fadd fast half %231, %120
  %233 = fmul fast half %215, %232
  %234 = fadd fast half %233, %82
  %235 = fmul fast half %223, %234
  %236 = fadd fast half %66, %46
  %237 = fadd fast half %236, %102
  %238 = fadd fast half %237, %121
  %239 = fmul fast half %215, %238
  %240 = fadd fast half %239, %83
  %241 = fmul fast half %223, %240
  %242 = call half @dx.op.binary.f16(i32 35, half %235, half %241)  ; FMax(a,b)
  %243 = call half @dx.op.binary.f16(i32 35, half %229, half %242)  ; FMax(a,b)
  %244 = fsub fast half 0xH3C00, %243
  %245 = call half @dx.op.binary.f16(i32 35, half 0xH1419, half %244)  ; FMax(a,b)
  %246 = fptrunc float %31 to half
  %247 = select i1 %32, half 0xH3C00, half %246
  %248 = fmul fast half %247, %245
  %249 = fdiv fast half %229, %248
  %250 = fdiv fast half %235, %248
  %251 = fdiv fast half %241, %248
  %252 = fpext half %249 to float
  %253 = fpext half %250 to float
  %254 = fpext half %251 to float
  %255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %256 = extractvalue %dx.types.CBufRet.f32 %255, 2
  %257 = fmul fast float %256, %252
  %258 = fmul fast float %256, %253
  %259 = fmul fast float %256, %254
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %22, i32 %49, i32 undef, float %257, float %258, float %259, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %260 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %261 = extractvalue %dx.types.CBufRet.i32 %260, 1
  %262 = shl i32 %17, 16
  %263 = or i32 %262, 524288
  %264 = ashr exact i32 %263, 16
  %265 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %264, i32 %25, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %266 = extractvalue %dx.types.ResRet.f32 %265, 0
  %267 = extractvalue %dx.types.ResRet.f32 %265, 1
  %268 = extractvalue %dx.types.ResRet.f32 %265, 2
  %269 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 0, i32 0, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %270 = extractvalue %dx.types.ResRet.f32 %269, 0
  %271 = fcmp fast oeq float %270, 0.000000e+00
  %272 = select i1 %271, float 1.000000e+00, float %270
  %273 = fmul fast float %272, %266
  %274 = fmul fast float %272, %267
  %275 = fmul fast float %272, %268
  %276 = call float @dx.op.binary.f32(i32 35, float %274, float %275)  ; FMax(a,b)
  %277 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %273)  ; FMax(a,b)
  %278 = call float @dx.op.binary.f32(i32 35, float %277, float %276)  ; FMax(a,b)
  %279 = fadd fast float %278, 1.000000e+00
  %280 = fdiv fast float %273, %279
  %281 = fdiv fast float %274, %279
  %282 = fdiv fast float %275, %279
  %283 = fptrunc float %280 to half
  %284 = fptrunc float %281 to half
  %285 = fptrunc float %282 to half
  %286 = add i32 %263, -65536
  %287 = ashr exact i32 %286, 16
  %288 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %287, i32 %49, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %289 = extractvalue %dx.types.ResRet.f32 %288, 0
  %290 = extractvalue %dx.types.ResRet.f32 %288, 1
  %291 = extractvalue %dx.types.ResRet.f32 %288, 2
  %292 = fmul fast float %272, %289
  %293 = fmul fast float %272, %290
  %294 = fmul fast float %272, %291
  %295 = call float @dx.op.binary.f32(i32 35, float %293, float %294)  ; FMax(a,b)
  %296 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %292)  ; FMax(a,b)
  %297 = call float @dx.op.binary.f32(i32 35, float %296, float %295)  ; FMax(a,b)
  %298 = fadd fast float %297, 1.000000e+00
  %299 = fdiv fast float %292, %298
  %300 = fdiv fast float %293, %298
  %301 = fdiv fast float %294, %298
  %302 = fptrunc float %299 to half
  %303 = fptrunc float %300 to half
  %304 = fptrunc float %301 to half
  %305 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %264, i32 %49, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %306 = extractvalue %dx.types.ResRet.f32 %305, 0
  %307 = extractvalue %dx.types.ResRet.f32 %305, 1
  %308 = extractvalue %dx.types.ResRet.f32 %305, 2
  %309 = fmul fast float %272, %306
  %310 = fmul fast float %272, %307
  %311 = fmul fast float %272, %308
  %312 = call float @dx.op.binary.f32(i32 35, float %310, float %311)  ; FMax(a,b)
  %313 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %309)  ; FMax(a,b)
  %314 = call float @dx.op.binary.f32(i32 35, float %313, float %312)  ; FMax(a,b)
  %315 = fadd fast float %314, 1.000000e+00
  %316 = fdiv fast float %309, %315
  %317 = fdiv fast float %310, %315
  %318 = fdiv fast float %311, %315
  %319 = fptrunc float %316 to half
  %320 = fptrunc float %317 to half
  %321 = fptrunc float %318 to half
  %322 = add i32 %263, 65536
  %323 = ashr exact i32 %322, 16
  %324 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %323, i32 %49, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %325 = extractvalue %dx.types.ResRet.f32 %324, 0
  %326 = extractvalue %dx.types.ResRet.f32 %324, 1
  %327 = extractvalue %dx.types.ResRet.f32 %324, 2
  %328 = fmul fast float %272, %325
  %329 = fmul fast float %272, %326
  %330 = fmul fast float %272, %327
  %331 = call float @dx.op.binary.f32(i32 35, float %329, float %330)  ; FMax(a,b)
  %332 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %328)  ; FMax(a,b)
  %333 = call float @dx.op.binary.f32(i32 35, float %332, float %331)  ; FMax(a,b)
  %334 = fadd fast float %333, 1.000000e+00
  %335 = fdiv fast float %328, %334
  %336 = fdiv fast float %329, %334
  %337 = fdiv fast float %330, %334
  %338 = fptrunc float %335 to half
  %339 = fptrunc float %336 to half
  %340 = fptrunc float %337 to half
  %341 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %264, i32 %104, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %342 = extractvalue %dx.types.ResRet.f32 %341, 0
  %343 = extractvalue %dx.types.ResRet.f32 %341, 1
  %344 = extractvalue %dx.types.ResRet.f32 %341, 2
  %345 = fmul fast float %272, %342
  %346 = fmul fast float %272, %343
  %347 = fmul fast float %272, %344
  %348 = call float @dx.op.binary.f32(i32 35, float %346, float %347)  ; FMax(a,b)
  %349 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %345)  ; FMax(a,b)
  %350 = call float @dx.op.binary.f32(i32 35, float %349, float %348)  ; FMax(a,b)
  %351 = fadd fast float %350, 1.000000e+00
  %352 = fdiv fast float %345, %351
  %353 = fdiv fast float %346, %351
  %354 = fdiv fast float %347, %351
  %355 = fptrunc float %352 to half
  %356 = fptrunc float %353 to half
  %357 = fptrunc float %354 to half
  %358 = fadd fast half %285, %283
  %359 = fmul fast half %358, 0xH3800
  %360 = fadd fast half %359, %284
  %361 = fadd fast half %304, %302
  %362 = fmul fast half %361, 0xH3800
  %363 = fadd fast half %362, %303
  %364 = fadd fast half %321, %319
  %365 = fmul fast half %364, 0xH3800
  %366 = fadd fast half %365, %320
  %367 = fadd fast half %340, %338
  %368 = fmul fast half %367, 0xH3800
  %369 = fadd fast half %368, %339
  %370 = fadd fast half %357, %355
  %371 = fmul fast half %370, 0xH3800
  %372 = fadd fast half %371, %356
  %373 = fadd fast half %363, %360
  %374 = fadd fast half %373, %369
  %375 = fadd fast half %374, %372
  %376 = fmul fast half %375, 0xH3400
  %377 = fsub fast half %376, %366
  %378 = call half @dx.op.unary.f16(i32 6, half %377)  ; FAbs(value)
  %379 = call half @dx.op.binary.f16(i32 35, half %363, half %366)  ; FMax(a,b)
  %380 = call half @dx.op.binary.f16(i32 35, half %360, half %379)  ; FMax(a,b)
  %381 = call half @dx.op.binary.f16(i32 35, half %369, half %372)  ; FMax(a,b)
  %382 = call half @dx.op.binary.f16(i32 35, half %380, half %381)  ; FMax(a,b)
  %383 = call half @dx.op.binary.f16(i32 36, half %363, half %366)  ; FMin(a,b)
  %384 = call half @dx.op.binary.f16(i32 36, half %360, half %383)  ; FMin(a,b)
  %385 = call half @dx.op.binary.f16(i32 36, half %369, half %372)  ; FMin(a,b)
  %386 = call half @dx.op.binary.f16(i32 36, half %384, half %385)  ; FMin(a,b)
  %387 = fsub fast half %382, %386
  %388 = bitcast half %387 to i16
  %389 = sub i16 30605, %388
  %390 = bitcast i16 %389 to half
  %391 = fmul fast half %390, %387
  %392 = fsub fast half 0xH4000, %391
  %393 = fmul fast half %390, %378
  %394 = fmul fast half %393, %392
  %395 = call half @dx.op.unary.f16(i32 7, half %394)  ; Saturate(value)
  %396 = fmul fast half %395, 0xH3800
  %397 = fsub fast half 0xH3C00, %396
  %398 = call half @dx.op.binary.f16(i32 36, half %302, half %338)  ; FMin(a,b)
  %399 = call half @dx.op.binary.f16(i32 36, half %283, half %398)  ; FMin(a,b)
  %400 = call half @dx.op.binary.f16(i32 36, half %399, half %355)  ; FMin(a,b)
  %401 = call half @dx.op.binary.f16(i32 36, half %303, half %339)  ; FMin(a,b)
  %402 = call half @dx.op.binary.f16(i32 36, half %284, half %401)  ; FMin(a,b)
  %403 = call half @dx.op.binary.f16(i32 36, half %402, half %356)  ; FMin(a,b)
  %404 = call half @dx.op.binary.f16(i32 36, half %304, half %340)  ; FMin(a,b)
  %405 = call half @dx.op.binary.f16(i32 36, half %285, half %404)  ; FMin(a,b)
  %406 = call half @dx.op.binary.f16(i32 36, half %405, half %357)  ; FMin(a,b)
  %407 = call half @dx.op.binary.f16(i32 35, half %302, half %338)  ; FMax(a,b)
  %408 = call half @dx.op.binary.f16(i32 35, half %283, half %407)  ; FMax(a,b)
  %409 = call half @dx.op.binary.f16(i32 35, half %408, half %355)  ; FMax(a,b)
  %410 = call half @dx.op.binary.f16(i32 35, half %303, half %339)  ; FMax(a,b)
  %411 = call half @dx.op.binary.f16(i32 35, half %284, half %410)  ; FMax(a,b)
  %412 = call half @dx.op.binary.f16(i32 35, half %411, half %356)  ; FMax(a,b)
  %413 = call half @dx.op.binary.f16(i32 35, half %304, half %340)  ; FMax(a,b)
  %414 = call half @dx.op.binary.f16(i32 35, half %285, half %413)  ; FMax(a,b)
  %415 = call half @dx.op.binary.f16(i32 35, half %414, half %357)  ; FMax(a,b)
  %416 = fdiv fast half 0xH3400, %409
  %417 = fdiv fast half 0xH3400, %412
  %418 = fdiv fast half 0xH3400, %415
  %419 = fsub fast half 0xH3C00, %409
  %420 = fmul fast half %400, 0xH4400
  %421 = fadd fast half %420, 0xHC400
  %422 = fdiv fast half 0xH3C00, %421
  %423 = fmul fast half %422, %419
  %424 = fsub fast half 0xH3C00, %412
  %425 = fmul fast half %403, 0xH4400
  %426 = fadd fast half %425, 0xHC400
  %427 = fdiv fast half 0xH3C00, %426
  %428 = fmul fast half %427, %424
  %429 = fsub fast half 0xH3C00, %415
  %430 = fmul fast half %406, 0xH4400
  %431 = fadd fast half %430, 0xHC400
  %432 = fdiv fast half 0xH3C00, %431
  %433 = fmul fast half %432, %429
  %434 = fmul fast half %400, %416
  %435 = fsub fast half 0xH8000, %434
  %436 = call half @dx.op.binary.f16(i32 35, half %435, half %423)  ; FMax(a,b)
  %437 = fmul fast half %403, %417
  %438 = fsub fast half 0xH8000, %437
  %439 = call half @dx.op.binary.f16(i32 35, half %438, half %428)  ; FMax(a,b)
  %440 = fmul fast half %406, %418
  %441 = fsub fast half 0xH8000, %440
  %442 = call half @dx.op.binary.f16(i32 35, half %441, half %433)  ; FMax(a,b)
  %443 = call half @dx.op.binary.f16(i32 35, half %439, half %442)  ; FMax(a,b)
  %444 = call half @dx.op.binary.f16(i32 35, half %436, half %443)  ; FMax(a,b)
  %445 = call half @dx.op.binary.f16(i32 36, half %444, half 0xH0000)  ; FMin(a,b)
  %446 = call half @dx.op.binary.f16(i32 35, half 0xHB200, half %445)  ; FMax(a,b)
  %447 = and i32 %261, 65535
  %448 = call float @dx.op.legacyF16ToF32(i32 131, i32 %447)  ; LegacyF16ToF32(value)
  %449 = fptrunc float %448 to half
  %450 = fmul fast half %446, %397
  %451 = fmul fast half %450, %449
  %452 = fmul fast half %451, 0xH4400
  %453 = fadd fast half %452, 0xH3C00
  %454 = bitcast half %453 to i16
  %455 = sub i16 30605, %454
  %456 = bitcast i16 %455 to half
  %457 = fmul fast half %456, %453
  %458 = fsub fast half 0xH4000, %457
  %459 = fmul fast half %458, %456
  %460 = fadd fast half %302, %283
  %461 = fadd fast half %460, %338
  %462 = fadd fast half %461, %355
  %463 = fmul fast half %451, %462
  %464 = fadd fast half %463, %319
  %465 = fmul fast half %459, %464
  %466 = fadd fast half %303, %284
  %467 = fadd fast half %466, %339
  %468 = fadd fast half %467, %356
  %469 = fmul fast half %451, %468
  %470 = fadd fast half %469, %320
  %471 = fmul fast half %459, %470
  %472 = fadd fast half %304, %285
  %473 = fadd fast half %472, %340
  %474 = fadd fast half %473, %357
  %475 = fmul fast half %451, %474
  %476 = fadd fast half %475, %321
  %477 = fmul fast half %459, %476
  %478 = call half @dx.op.binary.f16(i32 35, half %471, half %477)  ; FMax(a,b)
  %479 = call half @dx.op.binary.f16(i32 35, half %465, half %478)  ; FMax(a,b)
  %480 = fsub fast half 0xH3C00, %479
  %481 = call half @dx.op.binary.f16(i32 35, half 0xH1419, half %480)  ; FMax(a,b)
  %482 = fptrunc float %270 to half
  %483 = select i1 %271, half 0xH3C00, half %482
  %484 = fmul fast half %483, %481
  %485 = fdiv fast half %465, %484
  %486 = fdiv fast half %471, %484
  %487 = fdiv fast half %477, %484
  %488 = fpext half %485 to float
  %489 = fpext half %486 to float
  %490 = fpext half %487 to float
  %491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %492 = extractvalue %dx.types.CBufRet.f32 %491, 2
  %493 = fmul fast float %492, %488
  %494 = fmul fast float %492, %489
  %495 = fmul fast float %492, %490
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %264, i32 %49, i32 undef, float %493, float %494, float %495, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %496 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %497 = extractvalue %dx.types.CBufRet.i32 %496, 1
  %498 = shl i32 %18, 16
  %499 = or i32 %498, 524288
  %500 = add i32 %499, -65536
  %501 = ashr exact i32 %500, 16
  %502 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %264, i32 %501, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %503 = extractvalue %dx.types.ResRet.f32 %502, 0
  %504 = extractvalue %dx.types.ResRet.f32 %502, 1
  %505 = extractvalue %dx.types.ResRet.f32 %502, 2
  %506 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 0, i32 0, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %507 = extractvalue %dx.types.ResRet.f32 %506, 0
  %508 = fcmp fast oeq float %507, 0.000000e+00
  %509 = select i1 %508, float 1.000000e+00, float %507
  %510 = fmul fast float %509, %503
  %511 = fmul fast float %509, %504
  %512 = fmul fast float %509, %505
  %513 = call float @dx.op.binary.f32(i32 35, float %511, float %512)  ; FMax(a,b)
  %514 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %510)  ; FMax(a,b)
  %515 = call float @dx.op.binary.f32(i32 35, float %514, float %513)  ; FMax(a,b)
  %516 = fadd fast float %515, 1.000000e+00
  %517 = fdiv fast float %510, %516
  %518 = fdiv fast float %511, %516
  %519 = fdiv fast float %512, %516
  %520 = fptrunc float %517 to half
  %521 = fptrunc float %518 to half
  %522 = fptrunc float %519 to half
  %523 = ashr exact i32 %499, 16
  %524 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %287, i32 %523, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %525 = extractvalue %dx.types.ResRet.f32 %524, 0
  %526 = extractvalue %dx.types.ResRet.f32 %524, 1
  %527 = extractvalue %dx.types.ResRet.f32 %524, 2
  %528 = fmul fast float %509, %525
  %529 = fmul fast float %509, %526
  %530 = fmul fast float %509, %527
  %531 = call float @dx.op.binary.f32(i32 35, float %529, float %530)  ; FMax(a,b)
  %532 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %528)  ; FMax(a,b)
  %533 = call float @dx.op.binary.f32(i32 35, float %532, float %531)  ; FMax(a,b)
  %534 = fadd fast float %533, 1.000000e+00
  %535 = fdiv fast float %528, %534
  %536 = fdiv fast float %529, %534
  %537 = fdiv fast float %530, %534
  %538 = fptrunc float %535 to half
  %539 = fptrunc float %536 to half
  %540 = fptrunc float %537 to half
  %541 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %264, i32 %523, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %542 = extractvalue %dx.types.ResRet.f32 %541, 0
  %543 = extractvalue %dx.types.ResRet.f32 %541, 1
  %544 = extractvalue %dx.types.ResRet.f32 %541, 2
  %545 = fmul fast float %509, %542
  %546 = fmul fast float %509, %543
  %547 = fmul fast float %509, %544
  %548 = call float @dx.op.binary.f32(i32 35, float %546, float %547)  ; FMax(a,b)
  %549 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %545)  ; FMax(a,b)
  %550 = call float @dx.op.binary.f32(i32 35, float %549, float %548)  ; FMax(a,b)
  %551 = fadd fast float %550, 1.000000e+00
  %552 = fdiv fast float %545, %551
  %553 = fdiv fast float %546, %551
  %554 = fdiv fast float %547, %551
  %555 = fptrunc float %552 to half
  %556 = fptrunc float %553 to half
  %557 = fptrunc float %554 to half
  %558 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %323, i32 %523, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %559 = extractvalue %dx.types.ResRet.f32 %558, 0
  %560 = extractvalue %dx.types.ResRet.f32 %558, 1
  %561 = extractvalue %dx.types.ResRet.f32 %558, 2
  %562 = fmul fast float %509, %559
  %563 = fmul fast float %509, %560
  %564 = fmul fast float %509, %561
  %565 = call float @dx.op.binary.f32(i32 35, float %563, float %564)  ; FMax(a,b)
  %566 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %562)  ; FMax(a,b)
  %567 = call float @dx.op.binary.f32(i32 35, float %566, float %565)  ; FMax(a,b)
  %568 = fadd fast float %567, 1.000000e+00
  %569 = fdiv fast float %562, %568
  %570 = fdiv fast float %563, %568
  %571 = fdiv fast float %564, %568
  %572 = fptrunc float %569 to half
  %573 = fptrunc float %570 to half
  %574 = fptrunc float %571 to half
  %575 = add i32 %499, 65536
  %576 = ashr exact i32 %575, 16
  %577 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %264, i32 %576, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %578 = extractvalue %dx.types.ResRet.f32 %577, 0
  %579 = extractvalue %dx.types.ResRet.f32 %577, 1
  %580 = extractvalue %dx.types.ResRet.f32 %577, 2
  %581 = fmul fast float %509, %578
  %582 = fmul fast float %509, %579
  %583 = fmul fast float %509, %580
  %584 = call float @dx.op.binary.f32(i32 35, float %582, float %583)  ; FMax(a,b)
  %585 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %581)  ; FMax(a,b)
  %586 = call float @dx.op.binary.f32(i32 35, float %585, float %584)  ; FMax(a,b)
  %587 = fadd fast float %586, 1.000000e+00
  %588 = fdiv fast float %581, %587
  %589 = fdiv fast float %582, %587
  %590 = fdiv fast float %583, %587
  %591 = fptrunc float %588 to half
  %592 = fptrunc float %589 to half
  %593 = fptrunc float %590 to half
  %594 = fadd fast half %522, %520
  %595 = fmul fast half %594, 0xH3800
  %596 = fadd fast half %595, %521
  %597 = fadd fast half %540, %538
  %598 = fmul fast half %597, 0xH3800
  %599 = fadd fast half %598, %539
  %600 = fadd fast half %557, %555
  %601 = fmul fast half %600, 0xH3800
  %602 = fadd fast half %601, %556
  %603 = fadd fast half %574, %572
  %604 = fmul fast half %603, 0xH3800
  %605 = fadd fast half %604, %573
  %606 = fadd fast half %593, %591
  %607 = fmul fast half %606, 0xH3800
  %608 = fadd fast half %607, %592
  %609 = fadd fast half %599, %596
  %610 = fadd fast half %609, %605
  %611 = fadd fast half %610, %608
  %612 = fmul fast half %611, 0xH3400
  %613 = fsub fast half %612, %602
  %614 = call half @dx.op.unary.f16(i32 6, half %613)  ; FAbs(value)
  %615 = call half @dx.op.binary.f16(i32 35, half %599, half %602)  ; FMax(a,b)
  %616 = call half @dx.op.binary.f16(i32 35, half %596, half %615)  ; FMax(a,b)
  %617 = call half @dx.op.binary.f16(i32 35, half %605, half %608)  ; FMax(a,b)
  %618 = call half @dx.op.binary.f16(i32 35, half %616, half %617)  ; FMax(a,b)
  %619 = call half @dx.op.binary.f16(i32 36, half %599, half %602)  ; FMin(a,b)
  %620 = call half @dx.op.binary.f16(i32 36, half %596, half %619)  ; FMin(a,b)
  %621 = call half @dx.op.binary.f16(i32 36, half %605, half %608)  ; FMin(a,b)
  %622 = call half @dx.op.binary.f16(i32 36, half %620, half %621)  ; FMin(a,b)
  %623 = fsub fast half %618, %622
  %624 = bitcast half %623 to i16
  %625 = sub i16 30605, %624
  %626 = bitcast i16 %625 to half
  %627 = fmul fast half %626, %623
  %628 = fsub fast half 0xH4000, %627
  %629 = fmul fast half %626, %614
  %630 = fmul fast half %629, %628
  %631 = call half @dx.op.unary.f16(i32 7, half %630)  ; Saturate(value)
  %632 = fmul fast half %631, 0xH3800
  %633 = fsub fast half 0xH3C00, %632
  %634 = call half @dx.op.binary.f16(i32 36, half %538, half %572)  ; FMin(a,b)
  %635 = call half @dx.op.binary.f16(i32 36, half %520, half %634)  ; FMin(a,b)
  %636 = call half @dx.op.binary.f16(i32 36, half %635, half %591)  ; FMin(a,b)
  %637 = call half @dx.op.binary.f16(i32 36, half %539, half %573)  ; FMin(a,b)
  %638 = call half @dx.op.binary.f16(i32 36, half %521, half %637)  ; FMin(a,b)
  %639 = call half @dx.op.binary.f16(i32 36, half %638, half %592)  ; FMin(a,b)
  %640 = call half @dx.op.binary.f16(i32 36, half %540, half %574)  ; FMin(a,b)
  %641 = call half @dx.op.binary.f16(i32 36, half %522, half %640)  ; FMin(a,b)
  %642 = call half @dx.op.binary.f16(i32 36, half %641, half %593)  ; FMin(a,b)
  %643 = call half @dx.op.binary.f16(i32 35, half %538, half %572)  ; FMax(a,b)
  %644 = call half @dx.op.binary.f16(i32 35, half %520, half %643)  ; FMax(a,b)
  %645 = call half @dx.op.binary.f16(i32 35, half %644, half %591)  ; FMax(a,b)
  %646 = call half @dx.op.binary.f16(i32 35, half %539, half %573)  ; FMax(a,b)
  %647 = call half @dx.op.binary.f16(i32 35, half %521, half %646)  ; FMax(a,b)
  %648 = call half @dx.op.binary.f16(i32 35, half %647, half %592)  ; FMax(a,b)
  %649 = call half @dx.op.binary.f16(i32 35, half %540, half %574)  ; FMax(a,b)
  %650 = call half @dx.op.binary.f16(i32 35, half %522, half %649)  ; FMax(a,b)
  %651 = call half @dx.op.binary.f16(i32 35, half %650, half %593)  ; FMax(a,b)
  %652 = fdiv fast half 0xH3400, %645
  %653 = fdiv fast half 0xH3400, %648
  %654 = fdiv fast half 0xH3400, %651
  %655 = fsub fast half 0xH3C00, %645
  %656 = fmul fast half %636, 0xH4400
  %657 = fadd fast half %656, 0xHC400
  %658 = fdiv fast half 0xH3C00, %657
  %659 = fmul fast half %658, %655
  %660 = fsub fast half 0xH3C00, %648
  %661 = fmul fast half %639, 0xH4400
  %662 = fadd fast half %661, 0xHC400
  %663 = fdiv fast half 0xH3C00, %662
  %664 = fmul fast half %663, %660
  %665 = fsub fast half 0xH3C00, %651
  %666 = fmul fast half %642, 0xH4400
  %667 = fadd fast half %666, 0xHC400
  %668 = fdiv fast half 0xH3C00, %667
  %669 = fmul fast half %668, %665
  %670 = fmul fast half %636, %652
  %671 = fsub fast half 0xH8000, %670
  %672 = call half @dx.op.binary.f16(i32 35, half %671, half %659)  ; FMax(a,b)
  %673 = fmul fast half %639, %653
  %674 = fsub fast half 0xH8000, %673
  %675 = call half @dx.op.binary.f16(i32 35, half %674, half %664)  ; FMax(a,b)
  %676 = fmul fast half %642, %654
  %677 = fsub fast half 0xH8000, %676
  %678 = call half @dx.op.binary.f16(i32 35, half %677, half %669)  ; FMax(a,b)
  %679 = call half @dx.op.binary.f16(i32 35, half %675, half %678)  ; FMax(a,b)
  %680 = call half @dx.op.binary.f16(i32 35, half %672, half %679)  ; FMax(a,b)
  %681 = call half @dx.op.binary.f16(i32 36, half %680, half 0xH0000)  ; FMin(a,b)
  %682 = call half @dx.op.binary.f16(i32 35, half 0xHB200, half %681)  ; FMax(a,b)
  %683 = and i32 %497, 65535
  %684 = call float @dx.op.legacyF16ToF32(i32 131, i32 %683)  ; LegacyF16ToF32(value)
  %685 = fptrunc float %684 to half
  %686 = fmul fast half %682, %633
  %687 = fmul fast half %686, %685
  %688 = fmul fast half %687, 0xH4400
  %689 = fadd fast half %688, 0xH3C00
  %690 = bitcast half %689 to i16
  %691 = sub i16 30605, %690
  %692 = bitcast i16 %691 to half
  %693 = fmul fast half %692, %689
  %694 = fsub fast half 0xH4000, %693
  %695 = fmul fast half %694, %692
  %696 = fadd fast half %538, %520
  %697 = fadd fast half %696, %572
  %698 = fadd fast half %697, %591
  %699 = fmul fast half %687, %698
  %700 = fadd fast half %699, %555
  %701 = fmul fast half %695, %700
  %702 = fadd fast half %539, %521
  %703 = fadd fast half %702, %573
  %704 = fadd fast half %703, %592
  %705 = fmul fast half %687, %704
  %706 = fadd fast half %705, %556
  %707 = fmul fast half %695, %706
  %708 = fadd fast half %540, %522
  %709 = fadd fast half %708, %574
  %710 = fadd fast half %709, %593
  %711 = fmul fast half %687, %710
  %712 = fadd fast half %711, %557
  %713 = fmul fast half %695, %712
  %714 = call half @dx.op.binary.f16(i32 35, half %707, half %713)  ; FMax(a,b)
  %715 = call half @dx.op.binary.f16(i32 35, half %701, half %714)  ; FMax(a,b)
  %716 = fsub fast half 0xH3C00, %715
  %717 = call half @dx.op.binary.f16(i32 35, half 0xH1419, half %716)  ; FMax(a,b)
  %718 = fptrunc float %507 to half
  %719 = select i1 %508, half 0xH3C00, half %718
  %720 = fmul fast half %719, %717
  %721 = fdiv fast half %701, %720
  %722 = fdiv fast half %707, %720
  %723 = fdiv fast half %713, %720
  %724 = fpext half %721 to float
  %725 = fpext half %722 to float
  %726 = fpext half %723 to float
  %727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %728 = extractvalue %dx.types.CBufRet.f32 %727, 2
  %729 = fmul fast float %728, %724
  %730 = fmul fast float %728, %725
  %731 = fmul fast float %728, %726
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %264, i32 %523, i32 undef, float %729, float %730, float %731, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %732 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %733 = extractvalue %dx.types.CBufRet.i32 %732, 1
  %734 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %22, i32 %501, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %735 = extractvalue %dx.types.ResRet.f32 %734, 0
  %736 = extractvalue %dx.types.ResRet.f32 %734, 1
  %737 = extractvalue %dx.types.ResRet.f32 %734, 2
  %738 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 0, i32 0, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %739 = extractvalue %dx.types.ResRet.f32 %738, 0
  %740 = fcmp fast oeq float %739, 0.000000e+00
  %741 = select i1 %740, float 1.000000e+00, float %739
  %742 = fmul fast float %741, %735
  %743 = fmul fast float %741, %736
  %744 = fmul fast float %741, %737
  %745 = call float @dx.op.binary.f32(i32 35, float %743, float %744)  ; FMax(a,b)
  %746 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %742)  ; FMax(a,b)
  %747 = call float @dx.op.binary.f32(i32 35, float %746, float %745)  ; FMax(a,b)
  %748 = fadd fast float %747, 1.000000e+00
  %749 = fdiv fast float %742, %748
  %750 = fdiv fast float %743, %748
  %751 = fdiv fast float %744, %748
  %752 = fptrunc float %749 to half
  %753 = fptrunc float %750 to half
  %754 = fptrunc float %751 to half
  %755 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %48, i32 %523, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %756 = extractvalue %dx.types.ResRet.f32 %755, 0
  %757 = extractvalue %dx.types.ResRet.f32 %755, 1
  %758 = extractvalue %dx.types.ResRet.f32 %755, 2
  %759 = fmul fast float %741, %756
  %760 = fmul fast float %741, %757
  %761 = fmul fast float %741, %758
  %762 = call float @dx.op.binary.f32(i32 35, float %760, float %761)  ; FMax(a,b)
  %763 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %759)  ; FMax(a,b)
  %764 = call float @dx.op.binary.f32(i32 35, float %763, float %762)  ; FMax(a,b)
  %765 = fadd fast float %764, 1.000000e+00
  %766 = fdiv fast float %759, %765
  %767 = fdiv fast float %760, %765
  %768 = fdiv fast float %761, %765
  %769 = fptrunc float %766 to half
  %770 = fptrunc float %767 to half
  %771 = fptrunc float %768 to half
  %772 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %22, i32 %523, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %773 = extractvalue %dx.types.ResRet.f32 %772, 0
  %774 = extractvalue %dx.types.ResRet.f32 %772, 1
  %775 = extractvalue %dx.types.ResRet.f32 %772, 2
  %776 = fmul fast float %741, %773
  %777 = fmul fast float %741, %774
  %778 = fmul fast float %741, %775
  %779 = call float @dx.op.binary.f32(i32 35, float %777, float %778)  ; FMax(a,b)
  %780 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %776)  ; FMax(a,b)
  %781 = call float @dx.op.binary.f32(i32 35, float %780, float %779)  ; FMax(a,b)
  %782 = fadd fast float %781, 1.000000e+00
  %783 = fdiv fast float %776, %782
  %784 = fdiv fast float %777, %782
  %785 = fdiv fast float %778, %782
  %786 = fptrunc float %783 to half
  %787 = fptrunc float %784 to half
  %788 = fptrunc float %785 to half
  %789 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %85, i32 %523, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %790 = extractvalue %dx.types.ResRet.f32 %789, 0
  %791 = extractvalue %dx.types.ResRet.f32 %789, 1
  %792 = extractvalue %dx.types.ResRet.f32 %789, 2
  %793 = fmul fast float %741, %790
  %794 = fmul fast float %741, %791
  %795 = fmul fast float %741, %792
  %796 = call float @dx.op.binary.f32(i32 35, float %794, float %795)  ; FMax(a,b)
  %797 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %793)  ; FMax(a,b)
  %798 = call float @dx.op.binary.f32(i32 35, float %797, float %796)  ; FMax(a,b)
  %799 = fadd fast float %798, 1.000000e+00
  %800 = fdiv fast float %793, %799
  %801 = fdiv fast float %794, %799
  %802 = fdiv fast float %795, %799
  %803 = fptrunc float %800 to half
  %804 = fptrunc float %801 to half
  %805 = fptrunc float %802 to half
  %806 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %22, i32 %576, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %807 = extractvalue %dx.types.ResRet.f32 %806, 0
  %808 = extractvalue %dx.types.ResRet.f32 %806, 1
  %809 = extractvalue %dx.types.ResRet.f32 %806, 2
  %810 = fmul fast float %741, %807
  %811 = fmul fast float %741, %808
  %812 = fmul fast float %741, %809
  %813 = call float @dx.op.binary.f32(i32 35, float %811, float %812)  ; FMax(a,b)
  %814 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %810)  ; FMax(a,b)
  %815 = call float @dx.op.binary.f32(i32 35, float %814, float %813)  ; FMax(a,b)
  %816 = fadd fast float %815, 1.000000e+00
  %817 = fdiv fast float %810, %816
  %818 = fdiv fast float %811, %816
  %819 = fdiv fast float %812, %816
  %820 = fptrunc float %817 to half
  %821 = fptrunc float %818 to half
  %822 = fptrunc float %819 to half
  %823 = fadd fast half %754, %752
  %824 = fmul fast half %823, 0xH3800
  %825 = fadd fast half %824, %753
  %826 = fadd fast half %771, %769
  %827 = fmul fast half %826, 0xH3800
  %828 = fadd fast half %827, %770
  %829 = fadd fast half %788, %786
  %830 = fmul fast half %829, 0xH3800
  %831 = fadd fast half %830, %787
  %832 = fadd fast half %805, %803
  %833 = fmul fast half %832, 0xH3800
  %834 = fadd fast half %833, %804
  %835 = fadd fast half %822, %820
  %836 = fmul fast half %835, 0xH3800
  %837 = fadd fast half %836, %821
  %838 = fadd fast half %828, %825
  %839 = fadd fast half %838, %834
  %840 = fadd fast half %839, %837
  %841 = fmul fast half %840, 0xH3400
  %842 = fsub fast half %841, %831
  %843 = call half @dx.op.unary.f16(i32 6, half %842)  ; FAbs(value)
  %844 = call half @dx.op.binary.f16(i32 35, half %828, half %831)  ; FMax(a,b)
  %845 = call half @dx.op.binary.f16(i32 35, half %825, half %844)  ; FMax(a,b)
  %846 = call half @dx.op.binary.f16(i32 35, half %834, half %837)  ; FMax(a,b)
  %847 = call half @dx.op.binary.f16(i32 35, half %845, half %846)  ; FMax(a,b)
  %848 = call half @dx.op.binary.f16(i32 36, half %828, half %831)  ; FMin(a,b)
  %849 = call half @dx.op.binary.f16(i32 36, half %825, half %848)  ; FMin(a,b)
  %850 = call half @dx.op.binary.f16(i32 36, half %834, half %837)  ; FMin(a,b)
  %851 = call half @dx.op.binary.f16(i32 36, half %849, half %850)  ; FMin(a,b)
  %852 = fsub fast half %847, %851
  %853 = bitcast half %852 to i16
  %854 = sub i16 30605, %853
  %855 = bitcast i16 %854 to half
  %856 = fmul fast half %855, %852
  %857 = fsub fast half 0xH4000, %856
  %858 = fmul fast half %855, %843
  %859 = fmul fast half %858, %857
  %860 = call half @dx.op.unary.f16(i32 7, half %859)  ; Saturate(value)
  %861 = fmul fast half %860, 0xH3800
  %862 = fsub fast half 0xH3C00, %861
  %863 = call half @dx.op.binary.f16(i32 36, half %769, half %803)  ; FMin(a,b)
  %864 = call half @dx.op.binary.f16(i32 36, half %752, half %863)  ; FMin(a,b)
  %865 = call half @dx.op.binary.f16(i32 36, half %864, half %820)  ; FMin(a,b)
  %866 = call half @dx.op.binary.f16(i32 36, half %770, half %804)  ; FMin(a,b)
  %867 = call half @dx.op.binary.f16(i32 36, half %753, half %866)  ; FMin(a,b)
  %868 = call half @dx.op.binary.f16(i32 36, half %867, half %821)  ; FMin(a,b)
  %869 = call half @dx.op.binary.f16(i32 36, half %771, half %805)  ; FMin(a,b)
  %870 = call half @dx.op.binary.f16(i32 36, half %754, half %869)  ; FMin(a,b)
  %871 = call half @dx.op.binary.f16(i32 36, half %870, half %822)  ; FMin(a,b)
  %872 = call half @dx.op.binary.f16(i32 35, half %769, half %803)  ; FMax(a,b)
  %873 = call half @dx.op.binary.f16(i32 35, half %752, half %872)  ; FMax(a,b)
  %874 = call half @dx.op.binary.f16(i32 35, half %873, half %820)  ; FMax(a,b)
  %875 = call half @dx.op.binary.f16(i32 35, half %770, half %804)  ; FMax(a,b)
  %876 = call half @dx.op.binary.f16(i32 35, half %753, half %875)  ; FMax(a,b)
  %877 = call half @dx.op.binary.f16(i32 35, half %876, half %821)  ; FMax(a,b)
  %878 = call half @dx.op.binary.f16(i32 35, half %771, half %805)  ; FMax(a,b)
  %879 = call half @dx.op.binary.f16(i32 35, half %754, half %878)  ; FMax(a,b)
  %880 = call half @dx.op.binary.f16(i32 35, half %879, half %822)  ; FMax(a,b)
  %881 = fdiv fast half 0xH3400, %874
  %882 = fdiv fast half 0xH3400, %877
  %883 = fdiv fast half 0xH3400, %880
  %884 = fsub fast half 0xH3C00, %874
  %885 = fmul fast half %865, 0xH4400
  %886 = fadd fast half %885, 0xHC400
  %887 = fdiv fast half 0xH3C00, %886
  %888 = fmul fast half %887, %884
  %889 = fsub fast half 0xH3C00, %877
  %890 = fmul fast half %868, 0xH4400
  %891 = fadd fast half %890, 0xHC400
  %892 = fdiv fast half 0xH3C00, %891
  %893 = fmul fast half %892, %889
  %894 = fsub fast half 0xH3C00, %880
  %895 = fmul fast half %871, 0xH4400
  %896 = fadd fast half %895, 0xHC400
  %897 = fdiv fast half 0xH3C00, %896
  %898 = fmul fast half %897, %894
  %899 = fmul fast half %865, %881
  %900 = fsub fast half 0xH8000, %899
  %901 = call half @dx.op.binary.f16(i32 35, half %900, half %888)  ; FMax(a,b)
  %902 = fmul fast half %868, %882
  %903 = fsub fast half 0xH8000, %902
  %904 = call half @dx.op.binary.f16(i32 35, half %903, half %893)  ; FMax(a,b)
  %905 = fmul fast half %871, %883
  %906 = fsub fast half 0xH8000, %905
  %907 = call half @dx.op.binary.f16(i32 35, half %906, half %898)  ; FMax(a,b)
  %908 = call half @dx.op.binary.f16(i32 35, half %904, half %907)  ; FMax(a,b)
  %909 = call half @dx.op.binary.f16(i32 35, half %901, half %908)  ; FMax(a,b)
  %910 = call half @dx.op.binary.f16(i32 36, half %909, half 0xH0000)  ; FMin(a,b)
  %911 = call half @dx.op.binary.f16(i32 35, half 0xHB200, half %910)  ; FMax(a,b)
  %912 = and i32 %733, 65535
  %913 = call float @dx.op.legacyF16ToF32(i32 131, i32 %912)  ; LegacyF16ToF32(value)
  %914 = fptrunc float %913 to half
  %915 = fmul fast half %911, %862
  %916 = fmul fast half %915, %914
  %917 = fmul fast half %916, 0xH4400
  %918 = fadd fast half %917, 0xH3C00
  %919 = bitcast half %918 to i16
  %920 = sub i16 30605, %919
  %921 = bitcast i16 %920 to half
  %922 = fmul fast half %921, %918
  %923 = fsub fast half 0xH4000, %922
  %924 = fmul fast half %923, %921
  %925 = fadd fast half %769, %752
  %926 = fadd fast half %925, %803
  %927 = fadd fast half %926, %820
  %928 = fmul fast half %916, %927
  %929 = fadd fast half %928, %786
  %930 = fmul fast half %924, %929
  %931 = fadd fast half %770, %753
  %932 = fadd fast half %931, %804
  %933 = fadd fast half %932, %821
  %934 = fmul fast half %916, %933
  %935 = fadd fast half %934, %787
  %936 = fmul fast half %924, %935
  %937 = fadd fast half %771, %754
  %938 = fadd fast half %937, %805
  %939 = fadd fast half %938, %822
  %940 = fmul fast half %916, %939
  %941 = fadd fast half %940, %788
  %942 = fmul fast half %924, %941
  %943 = call half @dx.op.binary.f16(i32 35, half %936, half %942)  ; FMax(a,b)
  %944 = call half @dx.op.binary.f16(i32 35, half %930, half %943)  ; FMax(a,b)
  %945 = fsub fast half 0xH3C00, %944
  %946 = call half @dx.op.binary.f16(i32 35, half 0xH1419, half %945)  ; FMax(a,b)
  %947 = fptrunc float %739 to half
  %948 = select i1 %740, half 0xH3C00, half %947
  %949 = fmul fast half %948, %946
  %950 = fdiv fast half %930, %949
  %951 = fdiv fast half %936, %949
  %952 = fdiv fast half %942, %949
  %953 = fpext half %950 to float
  %954 = fpext half %951 to float
  %955 = fpext half %952 to float
  %956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %957 = extractvalue %dx.types.CBufRet.f32 %956, 2
  %958 = fmul fast float %957, %953
  %959 = fmul fast float %957, %954
  %960 = fmul fast float %957, %955
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %22, i32 %523, i32 undef, float %958, float %959, float %960, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare half @dx.op.unary.f16(i32, half) #0

; Function Attrs: nounwind readnone
declare half @dx.op.binary.f16(i32, half, half) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

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
!dx.entryPoints = !{!14}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 2}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 2}
!4 = !{!5, !9, !11, null}
!5 = !{!6, !8}
!6 = !{i32 0, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!9 = !{!10}
!10 = !{i32 0, %"class.RWTexture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!11 = !{!12, !13}
!12 = !{i32 0, %cbFSR2* undef, !"", i32 0, i32 0, i32 1, i32 144, null}
!13 = !{i32 1, %cbRCAS* undef, !"", i32 0, i32 1, i32 1, i32 16, null}
!14 = !{void ()* @CS, !"CS", null, !4, !15}
!15 = !{i32 0, i64 8388640, i32 4, !16}
!16 = !{i32 64, i32 1, i32 1}

