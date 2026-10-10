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
; shader hash: 44bc740c40910bc54fcd6d60921c45e8
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
  %37 = fptrunc float %34 to half
  %38 = fptrunc float %35 to half
  %39 = fptrunc float %36 to half
  %40 = add i32 %21, -65536
  %41 = ashr exact i32 %40, 16
  %42 = ashr exact i32 %23, 16
  %43 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %41, i32 %42, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %44 = extractvalue %dx.types.ResRet.f32 %43, 0
  %45 = extractvalue %dx.types.ResRet.f32 %43, 1
  %46 = extractvalue %dx.types.ResRet.f32 %43, 2
  %47 = fmul fast float %33, %44
  %48 = fmul fast float %33, %45
  %49 = fmul fast float %33, %46
  %50 = fptrunc float %47 to half
  %51 = fptrunc float %48 to half
  %52 = fptrunc float %49 to half
  %53 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %22, i32 %42, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %54 = extractvalue %dx.types.ResRet.f32 %53, 0
  %55 = extractvalue %dx.types.ResRet.f32 %53, 1
  %56 = extractvalue %dx.types.ResRet.f32 %53, 2
  %57 = fmul fast float %33, %54
  %58 = fmul fast float %33, %55
  %59 = fmul fast float %33, %56
  %60 = fptrunc float %57 to half
  %61 = fptrunc float %58 to half
  %62 = fptrunc float %59 to half
  %63 = add nsw i32 %21, 65536
  %64 = ashr exact i32 %63, 16
  %65 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %64, i32 %42, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %66 = extractvalue %dx.types.ResRet.f32 %65, 0
  %67 = extractvalue %dx.types.ResRet.f32 %65, 1
  %68 = extractvalue %dx.types.ResRet.f32 %65, 2
  %69 = fmul fast float %33, %66
  %70 = fmul fast float %33, %67
  %71 = fmul fast float %33, %68
  %72 = fptrunc float %69 to half
  %73 = fptrunc float %70 to half
  %74 = fptrunc float %71 to half
  %75 = add nsw i32 %23, 65536
  %76 = ashr exact i32 %75, 16
  %77 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %22, i32 %76, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %78 = extractvalue %dx.types.ResRet.f32 %77, 0
  %79 = extractvalue %dx.types.ResRet.f32 %77, 1
  %80 = extractvalue %dx.types.ResRet.f32 %77, 2
  %81 = fmul fast float %33, %78
  %82 = fmul fast float %33, %79
  %83 = fmul fast float %33, %80
  %84 = fptrunc float %81 to half
  %85 = fptrunc float %82 to half
  %86 = fptrunc float %83 to half
  %87 = fadd fast half %39, %37
  %88 = fmul fast half %87, 0xH3800
  %89 = fadd fast half %88, %38
  %90 = fadd fast half %52, %50
  %91 = fmul fast half %90, 0xH3800
  %92 = fadd fast half %91, %51
  %93 = fadd fast half %62, %60
  %94 = fmul fast half %93, 0xH3800
  %95 = fadd fast half %94, %61
  %96 = fadd fast half %74, %72
  %97 = fmul fast half %96, 0xH3800
  %98 = fadd fast half %97, %73
  %99 = fadd fast half %86, %84
  %100 = fmul fast half %99, 0xH3800
  %101 = fadd fast half %100, %85
  %102 = fadd fast half %92, %89
  %103 = fadd fast half %102, %98
  %104 = fadd fast half %103, %101
  %105 = fmul fast half %104, 0xH3400
  %106 = fsub fast half %105, %95
  %107 = call half @dx.op.unary.f16(i32 6, half %106)  ; FAbs(value)
  %108 = call half @dx.op.binary.f16(i32 35, half %92, half %95)  ; FMax(a,b)
  %109 = call half @dx.op.binary.f16(i32 35, half %89, half %108)  ; FMax(a,b)
  %110 = call half @dx.op.binary.f16(i32 35, half %98, half %101)  ; FMax(a,b)
  %111 = call half @dx.op.binary.f16(i32 35, half %109, half %110)  ; FMax(a,b)
  %112 = call half @dx.op.binary.f16(i32 36, half %92, half %95)  ; FMin(a,b)
  %113 = call half @dx.op.binary.f16(i32 36, half %89, half %112)  ; FMin(a,b)
  %114 = call half @dx.op.binary.f16(i32 36, half %98, half %101)  ; FMin(a,b)
  %115 = call half @dx.op.binary.f16(i32 36, half %113, half %114)  ; FMin(a,b)
  %116 = fsub fast half %111, %115
  %117 = bitcast half %116 to i16
  %118 = sub i16 30605, %117
  %119 = bitcast i16 %118 to half
  %120 = fmul fast half %119, %116
  %121 = fsub fast half 0xH4000, %120
  %122 = fmul fast half %119, %107
  %123 = fmul fast half %122, %121
  %124 = call half @dx.op.unary.f16(i32 7, half %123)  ; Saturate(value)
  %125 = fmul fast half %124, 0xH3800
  %126 = fsub fast half 0xH3C00, %125
  %127 = call half @dx.op.binary.f16(i32 36, half %50, half %72)  ; FMin(a,b)
  %128 = call half @dx.op.binary.f16(i32 36, half %37, half %127)  ; FMin(a,b)
  %129 = call half @dx.op.binary.f16(i32 36, half %128, half %84)  ; FMin(a,b)
  %130 = call half @dx.op.binary.f16(i32 36, half %51, half %73)  ; FMin(a,b)
  %131 = call half @dx.op.binary.f16(i32 36, half %38, half %130)  ; FMin(a,b)
  %132 = call half @dx.op.binary.f16(i32 36, half %131, half %85)  ; FMin(a,b)
  %133 = call half @dx.op.binary.f16(i32 36, half %52, half %74)  ; FMin(a,b)
  %134 = call half @dx.op.binary.f16(i32 36, half %39, half %133)  ; FMin(a,b)
  %135 = call half @dx.op.binary.f16(i32 36, half %134, half %86)  ; FMin(a,b)
  %136 = call half @dx.op.binary.f16(i32 35, half %50, half %72)  ; FMax(a,b)
  %137 = call half @dx.op.binary.f16(i32 35, half %37, half %136)  ; FMax(a,b)
  %138 = call half @dx.op.binary.f16(i32 35, half %137, half %84)  ; FMax(a,b)
  %139 = call half @dx.op.binary.f16(i32 35, half %51, half %73)  ; FMax(a,b)
  %140 = call half @dx.op.binary.f16(i32 35, half %38, half %139)  ; FMax(a,b)
  %141 = call half @dx.op.binary.f16(i32 35, half %140, half %85)  ; FMax(a,b)
  %142 = call half @dx.op.binary.f16(i32 35, half %52, half %74)  ; FMax(a,b)
  %143 = call half @dx.op.binary.f16(i32 35, half %39, half %142)  ; FMax(a,b)
  %144 = call half @dx.op.binary.f16(i32 35, half %143, half %86)  ; FMax(a,b)
  %145 = fdiv fast half 0xH3400, %138
  %146 = fdiv fast half 0xH3400, %141
  %147 = fdiv fast half 0xH3400, %144
  %148 = fsub fast half 0xH3C00, %138
  %149 = fmul fast half %129, 0xH4400
  %150 = fadd fast half %149, 0xHC400
  %151 = fdiv fast half 0xH3C00, %150
  %152 = fmul fast half %151, %148
  %153 = fsub fast half 0xH3C00, %141
  %154 = fmul fast half %132, 0xH4400
  %155 = fadd fast half %154, 0xHC400
  %156 = fdiv fast half 0xH3C00, %155
  %157 = fmul fast half %156, %153
  %158 = fsub fast half 0xH3C00, %144
  %159 = fmul fast half %135, 0xH4400
  %160 = fadd fast half %159, 0xHC400
  %161 = fdiv fast half 0xH3C00, %160
  %162 = fmul fast half %161, %158
  %163 = fmul fast half %129, %145
  %164 = fsub fast half 0xH8000, %163
  %165 = call half @dx.op.binary.f16(i32 35, half %164, half %152)  ; FMax(a,b)
  %166 = fmul fast half %132, %146
  %167 = fsub fast half 0xH8000, %166
  %168 = call half @dx.op.binary.f16(i32 35, half %167, half %157)  ; FMax(a,b)
  %169 = fmul fast half %135, %147
  %170 = fsub fast half 0xH8000, %169
  %171 = call half @dx.op.binary.f16(i32 35, half %170, half %162)  ; FMax(a,b)
  %172 = call half @dx.op.binary.f16(i32 35, half %168, half %171)  ; FMax(a,b)
  %173 = call half @dx.op.binary.f16(i32 35, half %165, half %172)  ; FMax(a,b)
  %174 = call half @dx.op.binary.f16(i32 36, half %173, half 0xH0000)  ; FMin(a,b)
  %175 = call half @dx.op.binary.f16(i32 35, half 0xHB200, half %174)  ; FMax(a,b)
  %176 = and i32 %20, 65535
  %177 = call float @dx.op.legacyF16ToF32(i32 131, i32 %176)  ; LegacyF16ToF32(value)
  %178 = fptrunc float %177 to half
  %179 = fmul fast half %175, %126
  %180 = fmul fast half %179, %178
  %181 = fmul fast half %180, 0xH4400
  %182 = fadd fast half %181, 0xH3C00
  %183 = bitcast half %182 to i16
  %184 = sub i16 30605, %183
  %185 = bitcast i16 %184 to half
  %186 = fmul fast half %185, %182
  %187 = fsub fast half 0xH4000, %186
  %188 = fmul fast half %187, %185
  %189 = fadd fast half %50, %37
  %190 = fadd fast half %189, %72
  %191 = fadd fast half %190, %84
  %192 = fmul fast half %180, %191
  %193 = fadd fast half %192, %60
  %194 = fmul fast half %188, %193
  %195 = fadd fast half %51, %38
  %196 = fadd fast half %195, %73
  %197 = fadd fast half %196, %85
  %198 = fmul fast half %180, %197
  %199 = fadd fast half %198, %61
  %200 = fmul fast half %188, %199
  %201 = fadd fast half %52, %39
  %202 = fadd fast half %201, %74
  %203 = fadd fast half %202, %86
  %204 = fmul fast half %180, %203
  %205 = fadd fast half %204, %62
  %206 = fmul fast half %188, %205
  %207 = fptrunc float %31 to half
  %208 = select i1 %32, half 0xH3C00, half %207
  %209 = fdiv fast half %194, %208
  %210 = fdiv fast half %200, %208
  %211 = fdiv fast half %206, %208
  %212 = fpext half %209 to float
  %213 = fpext half %210 to float
  %214 = fpext half %211 to float
  %215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %216 = extractvalue %dx.types.CBufRet.f32 %215, 2
  %217 = fmul fast float %216, %212
  %218 = fmul fast float %216, %213
  %219 = fmul fast float %216, %214
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %22, i32 %42, i32 undef, float %217, float %218, float %219, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %220 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %221 = extractvalue %dx.types.CBufRet.i32 %220, 1
  %222 = shl i32 %17, 16
  %223 = or i32 %222, 524288
  %224 = ashr exact i32 %223, 16
  %225 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %224, i32 %25, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %226 = extractvalue %dx.types.ResRet.f32 %225, 0
  %227 = extractvalue %dx.types.ResRet.f32 %225, 1
  %228 = extractvalue %dx.types.ResRet.f32 %225, 2
  %229 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 0, i32 0, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %230 = extractvalue %dx.types.ResRet.f32 %229, 0
  %231 = fcmp fast oeq float %230, 0.000000e+00
  %232 = select i1 %231, float 1.000000e+00, float %230
  %233 = fmul fast float %232, %226
  %234 = fmul fast float %232, %227
  %235 = fmul fast float %232, %228
  %236 = fptrunc float %233 to half
  %237 = fptrunc float %234 to half
  %238 = fptrunc float %235 to half
  %239 = add i32 %223, -65536
  %240 = ashr exact i32 %239, 16
  %241 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %240, i32 %42, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %242 = extractvalue %dx.types.ResRet.f32 %241, 0
  %243 = extractvalue %dx.types.ResRet.f32 %241, 1
  %244 = extractvalue %dx.types.ResRet.f32 %241, 2
  %245 = fmul fast float %232, %242
  %246 = fmul fast float %232, %243
  %247 = fmul fast float %232, %244
  %248 = fptrunc float %245 to half
  %249 = fptrunc float %246 to half
  %250 = fptrunc float %247 to half
  %251 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %224, i32 %42, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %252 = extractvalue %dx.types.ResRet.f32 %251, 0
  %253 = extractvalue %dx.types.ResRet.f32 %251, 1
  %254 = extractvalue %dx.types.ResRet.f32 %251, 2
  %255 = fmul fast float %232, %252
  %256 = fmul fast float %232, %253
  %257 = fmul fast float %232, %254
  %258 = fptrunc float %255 to half
  %259 = fptrunc float %256 to half
  %260 = fptrunc float %257 to half
  %261 = add i32 %223, 65536
  %262 = ashr exact i32 %261, 16
  %263 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %262, i32 %42, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %264 = extractvalue %dx.types.ResRet.f32 %263, 0
  %265 = extractvalue %dx.types.ResRet.f32 %263, 1
  %266 = extractvalue %dx.types.ResRet.f32 %263, 2
  %267 = fmul fast float %232, %264
  %268 = fmul fast float %232, %265
  %269 = fmul fast float %232, %266
  %270 = fptrunc float %267 to half
  %271 = fptrunc float %268 to half
  %272 = fptrunc float %269 to half
  %273 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %224, i32 %76, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %274 = extractvalue %dx.types.ResRet.f32 %273, 0
  %275 = extractvalue %dx.types.ResRet.f32 %273, 1
  %276 = extractvalue %dx.types.ResRet.f32 %273, 2
  %277 = fmul fast float %232, %274
  %278 = fmul fast float %232, %275
  %279 = fmul fast float %232, %276
  %280 = fptrunc float %277 to half
  %281 = fptrunc float %278 to half
  %282 = fptrunc float %279 to half
  %283 = fadd fast half %238, %236
  %284 = fmul fast half %283, 0xH3800
  %285 = fadd fast half %284, %237
  %286 = fadd fast half %250, %248
  %287 = fmul fast half %286, 0xH3800
  %288 = fadd fast half %287, %249
  %289 = fadd fast half %260, %258
  %290 = fmul fast half %289, 0xH3800
  %291 = fadd fast half %290, %259
  %292 = fadd fast half %272, %270
  %293 = fmul fast half %292, 0xH3800
  %294 = fadd fast half %293, %271
  %295 = fadd fast half %282, %280
  %296 = fmul fast half %295, 0xH3800
  %297 = fadd fast half %296, %281
  %298 = fadd fast half %288, %285
  %299 = fadd fast half %298, %294
  %300 = fadd fast half %299, %297
  %301 = fmul fast half %300, 0xH3400
  %302 = fsub fast half %301, %291
  %303 = call half @dx.op.unary.f16(i32 6, half %302)  ; FAbs(value)
  %304 = call half @dx.op.binary.f16(i32 35, half %288, half %291)  ; FMax(a,b)
  %305 = call half @dx.op.binary.f16(i32 35, half %285, half %304)  ; FMax(a,b)
  %306 = call half @dx.op.binary.f16(i32 35, half %294, half %297)  ; FMax(a,b)
  %307 = call half @dx.op.binary.f16(i32 35, half %305, half %306)  ; FMax(a,b)
  %308 = call half @dx.op.binary.f16(i32 36, half %288, half %291)  ; FMin(a,b)
  %309 = call half @dx.op.binary.f16(i32 36, half %285, half %308)  ; FMin(a,b)
  %310 = call half @dx.op.binary.f16(i32 36, half %294, half %297)  ; FMin(a,b)
  %311 = call half @dx.op.binary.f16(i32 36, half %309, half %310)  ; FMin(a,b)
  %312 = fsub fast half %307, %311
  %313 = bitcast half %312 to i16
  %314 = sub i16 30605, %313
  %315 = bitcast i16 %314 to half
  %316 = fmul fast half %315, %312
  %317 = fsub fast half 0xH4000, %316
  %318 = fmul fast half %315, %303
  %319 = fmul fast half %318, %317
  %320 = call half @dx.op.unary.f16(i32 7, half %319)  ; Saturate(value)
  %321 = fmul fast half %320, 0xH3800
  %322 = fsub fast half 0xH3C00, %321
  %323 = call half @dx.op.binary.f16(i32 36, half %248, half %270)  ; FMin(a,b)
  %324 = call half @dx.op.binary.f16(i32 36, half %236, half %323)  ; FMin(a,b)
  %325 = call half @dx.op.binary.f16(i32 36, half %324, half %280)  ; FMin(a,b)
  %326 = call half @dx.op.binary.f16(i32 36, half %249, half %271)  ; FMin(a,b)
  %327 = call half @dx.op.binary.f16(i32 36, half %237, half %326)  ; FMin(a,b)
  %328 = call half @dx.op.binary.f16(i32 36, half %327, half %281)  ; FMin(a,b)
  %329 = call half @dx.op.binary.f16(i32 36, half %250, half %272)  ; FMin(a,b)
  %330 = call half @dx.op.binary.f16(i32 36, half %238, half %329)  ; FMin(a,b)
  %331 = call half @dx.op.binary.f16(i32 36, half %330, half %282)  ; FMin(a,b)
  %332 = call half @dx.op.binary.f16(i32 35, half %248, half %270)  ; FMax(a,b)
  %333 = call half @dx.op.binary.f16(i32 35, half %236, half %332)  ; FMax(a,b)
  %334 = call half @dx.op.binary.f16(i32 35, half %333, half %280)  ; FMax(a,b)
  %335 = call half @dx.op.binary.f16(i32 35, half %249, half %271)  ; FMax(a,b)
  %336 = call half @dx.op.binary.f16(i32 35, half %237, half %335)  ; FMax(a,b)
  %337 = call half @dx.op.binary.f16(i32 35, half %336, half %281)  ; FMax(a,b)
  %338 = call half @dx.op.binary.f16(i32 35, half %250, half %272)  ; FMax(a,b)
  %339 = call half @dx.op.binary.f16(i32 35, half %238, half %338)  ; FMax(a,b)
  %340 = call half @dx.op.binary.f16(i32 35, half %339, half %282)  ; FMax(a,b)
  %341 = fdiv fast half 0xH3400, %334
  %342 = fdiv fast half 0xH3400, %337
  %343 = fdiv fast half 0xH3400, %340
  %344 = fsub fast half 0xH3C00, %334
  %345 = fmul fast half %325, 0xH4400
  %346 = fadd fast half %345, 0xHC400
  %347 = fdiv fast half 0xH3C00, %346
  %348 = fmul fast half %347, %344
  %349 = fsub fast half 0xH3C00, %337
  %350 = fmul fast half %328, 0xH4400
  %351 = fadd fast half %350, 0xHC400
  %352 = fdiv fast half 0xH3C00, %351
  %353 = fmul fast half %352, %349
  %354 = fsub fast half 0xH3C00, %340
  %355 = fmul fast half %331, 0xH4400
  %356 = fadd fast half %355, 0xHC400
  %357 = fdiv fast half 0xH3C00, %356
  %358 = fmul fast half %357, %354
  %359 = fmul fast half %325, %341
  %360 = fsub fast half 0xH8000, %359
  %361 = call half @dx.op.binary.f16(i32 35, half %360, half %348)  ; FMax(a,b)
  %362 = fmul fast half %328, %342
  %363 = fsub fast half 0xH8000, %362
  %364 = call half @dx.op.binary.f16(i32 35, half %363, half %353)  ; FMax(a,b)
  %365 = fmul fast half %331, %343
  %366 = fsub fast half 0xH8000, %365
  %367 = call half @dx.op.binary.f16(i32 35, half %366, half %358)  ; FMax(a,b)
  %368 = call half @dx.op.binary.f16(i32 35, half %364, half %367)  ; FMax(a,b)
  %369 = call half @dx.op.binary.f16(i32 35, half %361, half %368)  ; FMax(a,b)
  %370 = call half @dx.op.binary.f16(i32 36, half %369, half 0xH0000)  ; FMin(a,b)
  %371 = call half @dx.op.binary.f16(i32 35, half 0xHB200, half %370)  ; FMax(a,b)
  %372 = and i32 %221, 65535
  %373 = call float @dx.op.legacyF16ToF32(i32 131, i32 %372)  ; LegacyF16ToF32(value)
  %374 = fptrunc float %373 to half
  %375 = fmul fast half %371, %322
  %376 = fmul fast half %375, %374
  %377 = fmul fast half %376, 0xH4400
  %378 = fadd fast half %377, 0xH3C00
  %379 = bitcast half %378 to i16
  %380 = sub i16 30605, %379
  %381 = bitcast i16 %380 to half
  %382 = fmul fast half %381, %378
  %383 = fsub fast half 0xH4000, %382
  %384 = fmul fast half %383, %381
  %385 = fadd fast half %248, %236
  %386 = fadd fast half %385, %270
  %387 = fadd fast half %386, %280
  %388 = fmul fast half %376, %387
  %389 = fadd fast half %388, %258
  %390 = fmul fast half %384, %389
  %391 = fadd fast half %249, %237
  %392 = fadd fast half %391, %271
  %393 = fadd fast half %392, %281
  %394 = fmul fast half %376, %393
  %395 = fadd fast half %394, %259
  %396 = fmul fast half %384, %395
  %397 = fadd fast half %250, %238
  %398 = fadd fast half %397, %272
  %399 = fadd fast half %398, %282
  %400 = fmul fast half %376, %399
  %401 = fadd fast half %400, %260
  %402 = fmul fast half %384, %401
  %403 = fptrunc float %230 to half
  %404 = select i1 %231, half 0xH3C00, half %403
  %405 = fdiv fast half %390, %404
  %406 = fdiv fast half %396, %404
  %407 = fdiv fast half %402, %404
  %408 = fpext half %405 to float
  %409 = fpext half %406 to float
  %410 = fpext half %407 to float
  %411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %412 = extractvalue %dx.types.CBufRet.f32 %411, 2
  %413 = fmul fast float %412, %408
  %414 = fmul fast float %412, %409
  %415 = fmul fast float %412, %410
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %224, i32 %42, i32 undef, float %413, float %414, float %415, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %416 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %417 = extractvalue %dx.types.CBufRet.i32 %416, 1
  %418 = shl i32 %18, 16
  %419 = or i32 %418, 524288
  %420 = add i32 %419, -65536
  %421 = ashr exact i32 %420, 16
  %422 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %224, i32 %421, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %423 = extractvalue %dx.types.ResRet.f32 %422, 0
  %424 = extractvalue %dx.types.ResRet.f32 %422, 1
  %425 = extractvalue %dx.types.ResRet.f32 %422, 2
  %426 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 0, i32 0, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %427 = extractvalue %dx.types.ResRet.f32 %426, 0
  %428 = fcmp fast oeq float %427, 0.000000e+00
  %429 = select i1 %428, float 1.000000e+00, float %427
  %430 = fmul fast float %429, %423
  %431 = fmul fast float %429, %424
  %432 = fmul fast float %429, %425
  %433 = fptrunc float %430 to half
  %434 = fptrunc float %431 to half
  %435 = fptrunc float %432 to half
  %436 = ashr exact i32 %419, 16
  %437 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %240, i32 %436, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %438 = extractvalue %dx.types.ResRet.f32 %437, 0
  %439 = extractvalue %dx.types.ResRet.f32 %437, 1
  %440 = extractvalue %dx.types.ResRet.f32 %437, 2
  %441 = fmul fast float %429, %438
  %442 = fmul fast float %429, %439
  %443 = fmul fast float %429, %440
  %444 = fptrunc float %441 to half
  %445 = fptrunc float %442 to half
  %446 = fptrunc float %443 to half
  %447 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %224, i32 %436, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %448 = extractvalue %dx.types.ResRet.f32 %447, 0
  %449 = extractvalue %dx.types.ResRet.f32 %447, 1
  %450 = extractvalue %dx.types.ResRet.f32 %447, 2
  %451 = fmul fast float %429, %448
  %452 = fmul fast float %429, %449
  %453 = fmul fast float %429, %450
  %454 = fptrunc float %451 to half
  %455 = fptrunc float %452 to half
  %456 = fptrunc float %453 to half
  %457 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %262, i32 %436, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %458 = extractvalue %dx.types.ResRet.f32 %457, 0
  %459 = extractvalue %dx.types.ResRet.f32 %457, 1
  %460 = extractvalue %dx.types.ResRet.f32 %457, 2
  %461 = fmul fast float %429, %458
  %462 = fmul fast float %429, %459
  %463 = fmul fast float %429, %460
  %464 = fptrunc float %461 to half
  %465 = fptrunc float %462 to half
  %466 = fptrunc float %463 to half
  %467 = add i32 %419, 65536
  %468 = ashr exact i32 %467, 16
  %469 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %224, i32 %468, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %470 = extractvalue %dx.types.ResRet.f32 %469, 0
  %471 = extractvalue %dx.types.ResRet.f32 %469, 1
  %472 = extractvalue %dx.types.ResRet.f32 %469, 2
  %473 = fmul fast float %429, %470
  %474 = fmul fast float %429, %471
  %475 = fmul fast float %429, %472
  %476 = fptrunc float %473 to half
  %477 = fptrunc float %474 to half
  %478 = fptrunc float %475 to half
  %479 = fadd fast half %435, %433
  %480 = fmul fast half %479, 0xH3800
  %481 = fadd fast half %480, %434
  %482 = fadd fast half %446, %444
  %483 = fmul fast half %482, 0xH3800
  %484 = fadd fast half %483, %445
  %485 = fadd fast half %456, %454
  %486 = fmul fast half %485, 0xH3800
  %487 = fadd fast half %486, %455
  %488 = fadd fast half %466, %464
  %489 = fmul fast half %488, 0xH3800
  %490 = fadd fast half %489, %465
  %491 = fadd fast half %478, %476
  %492 = fmul fast half %491, 0xH3800
  %493 = fadd fast half %492, %477
  %494 = fadd fast half %484, %481
  %495 = fadd fast half %494, %490
  %496 = fadd fast half %495, %493
  %497 = fmul fast half %496, 0xH3400
  %498 = fsub fast half %497, %487
  %499 = call half @dx.op.unary.f16(i32 6, half %498)  ; FAbs(value)
  %500 = call half @dx.op.binary.f16(i32 35, half %484, half %487)  ; FMax(a,b)
  %501 = call half @dx.op.binary.f16(i32 35, half %481, half %500)  ; FMax(a,b)
  %502 = call half @dx.op.binary.f16(i32 35, half %490, half %493)  ; FMax(a,b)
  %503 = call half @dx.op.binary.f16(i32 35, half %501, half %502)  ; FMax(a,b)
  %504 = call half @dx.op.binary.f16(i32 36, half %484, half %487)  ; FMin(a,b)
  %505 = call half @dx.op.binary.f16(i32 36, half %481, half %504)  ; FMin(a,b)
  %506 = call half @dx.op.binary.f16(i32 36, half %490, half %493)  ; FMin(a,b)
  %507 = call half @dx.op.binary.f16(i32 36, half %505, half %506)  ; FMin(a,b)
  %508 = fsub fast half %503, %507
  %509 = bitcast half %508 to i16
  %510 = sub i16 30605, %509
  %511 = bitcast i16 %510 to half
  %512 = fmul fast half %511, %508
  %513 = fsub fast half 0xH4000, %512
  %514 = fmul fast half %511, %499
  %515 = fmul fast half %514, %513
  %516 = call half @dx.op.unary.f16(i32 7, half %515)  ; Saturate(value)
  %517 = fmul fast half %516, 0xH3800
  %518 = fsub fast half 0xH3C00, %517
  %519 = call half @dx.op.binary.f16(i32 36, half %444, half %464)  ; FMin(a,b)
  %520 = call half @dx.op.binary.f16(i32 36, half %433, half %519)  ; FMin(a,b)
  %521 = call half @dx.op.binary.f16(i32 36, half %520, half %476)  ; FMin(a,b)
  %522 = call half @dx.op.binary.f16(i32 36, half %445, half %465)  ; FMin(a,b)
  %523 = call half @dx.op.binary.f16(i32 36, half %434, half %522)  ; FMin(a,b)
  %524 = call half @dx.op.binary.f16(i32 36, half %523, half %477)  ; FMin(a,b)
  %525 = call half @dx.op.binary.f16(i32 36, half %446, half %466)  ; FMin(a,b)
  %526 = call half @dx.op.binary.f16(i32 36, half %435, half %525)  ; FMin(a,b)
  %527 = call half @dx.op.binary.f16(i32 36, half %526, half %478)  ; FMin(a,b)
  %528 = call half @dx.op.binary.f16(i32 35, half %444, half %464)  ; FMax(a,b)
  %529 = call half @dx.op.binary.f16(i32 35, half %433, half %528)  ; FMax(a,b)
  %530 = call half @dx.op.binary.f16(i32 35, half %529, half %476)  ; FMax(a,b)
  %531 = call half @dx.op.binary.f16(i32 35, half %445, half %465)  ; FMax(a,b)
  %532 = call half @dx.op.binary.f16(i32 35, half %434, half %531)  ; FMax(a,b)
  %533 = call half @dx.op.binary.f16(i32 35, half %532, half %477)  ; FMax(a,b)
  %534 = call half @dx.op.binary.f16(i32 35, half %446, half %466)  ; FMax(a,b)
  %535 = call half @dx.op.binary.f16(i32 35, half %435, half %534)  ; FMax(a,b)
  %536 = call half @dx.op.binary.f16(i32 35, half %535, half %478)  ; FMax(a,b)
  %537 = fdiv fast half 0xH3400, %530
  %538 = fdiv fast half 0xH3400, %533
  %539 = fdiv fast half 0xH3400, %536
  %540 = fsub fast half 0xH3C00, %530
  %541 = fmul fast half %521, 0xH4400
  %542 = fadd fast half %541, 0xHC400
  %543 = fdiv fast half 0xH3C00, %542
  %544 = fmul fast half %543, %540
  %545 = fsub fast half 0xH3C00, %533
  %546 = fmul fast half %524, 0xH4400
  %547 = fadd fast half %546, 0xHC400
  %548 = fdiv fast half 0xH3C00, %547
  %549 = fmul fast half %548, %545
  %550 = fsub fast half 0xH3C00, %536
  %551 = fmul fast half %527, 0xH4400
  %552 = fadd fast half %551, 0xHC400
  %553 = fdiv fast half 0xH3C00, %552
  %554 = fmul fast half %553, %550
  %555 = fmul fast half %521, %537
  %556 = fsub fast half 0xH8000, %555
  %557 = call half @dx.op.binary.f16(i32 35, half %556, half %544)  ; FMax(a,b)
  %558 = fmul fast half %524, %538
  %559 = fsub fast half 0xH8000, %558
  %560 = call half @dx.op.binary.f16(i32 35, half %559, half %549)  ; FMax(a,b)
  %561 = fmul fast half %527, %539
  %562 = fsub fast half 0xH8000, %561
  %563 = call half @dx.op.binary.f16(i32 35, half %562, half %554)  ; FMax(a,b)
  %564 = call half @dx.op.binary.f16(i32 35, half %560, half %563)  ; FMax(a,b)
  %565 = call half @dx.op.binary.f16(i32 35, half %557, half %564)  ; FMax(a,b)
  %566 = call half @dx.op.binary.f16(i32 36, half %565, half 0xH0000)  ; FMin(a,b)
  %567 = call half @dx.op.binary.f16(i32 35, half 0xHB200, half %566)  ; FMax(a,b)
  %568 = and i32 %417, 65535
  %569 = call float @dx.op.legacyF16ToF32(i32 131, i32 %568)  ; LegacyF16ToF32(value)
  %570 = fptrunc float %569 to half
  %571 = fmul fast half %567, %518
  %572 = fmul fast half %571, %570
  %573 = fmul fast half %572, 0xH4400
  %574 = fadd fast half %573, 0xH3C00
  %575 = bitcast half %574 to i16
  %576 = sub i16 30605, %575
  %577 = bitcast i16 %576 to half
  %578 = fmul fast half %577, %574
  %579 = fsub fast half 0xH4000, %578
  %580 = fmul fast half %579, %577
  %581 = fadd fast half %444, %433
  %582 = fadd fast half %581, %464
  %583 = fadd fast half %582, %476
  %584 = fmul fast half %572, %583
  %585 = fadd fast half %584, %454
  %586 = fmul fast half %580, %585
  %587 = fadd fast half %445, %434
  %588 = fadd fast half %587, %465
  %589 = fadd fast half %588, %477
  %590 = fmul fast half %572, %589
  %591 = fadd fast half %590, %455
  %592 = fmul fast half %580, %591
  %593 = fadd fast half %446, %435
  %594 = fadd fast half %593, %466
  %595 = fadd fast half %594, %478
  %596 = fmul fast half %572, %595
  %597 = fadd fast half %596, %456
  %598 = fmul fast half %580, %597
  %599 = fptrunc float %427 to half
  %600 = select i1 %428, half 0xH3C00, half %599
  %601 = fdiv fast half %586, %600
  %602 = fdiv fast half %592, %600
  %603 = fdiv fast half %598, %600
  %604 = fpext half %601 to float
  %605 = fpext half %602 to float
  %606 = fpext half %603 to float
  %607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %608 = extractvalue %dx.types.CBufRet.f32 %607, 2
  %609 = fmul fast float %608, %604
  %610 = fmul fast float %608, %605
  %611 = fmul fast float %608, %606
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %224, i32 %436, i32 undef, float %609, float %610, float %611, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %612 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %613 = extractvalue %dx.types.CBufRet.i32 %612, 1
  %614 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %22, i32 %421, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %615 = extractvalue %dx.types.ResRet.f32 %614, 0
  %616 = extractvalue %dx.types.ResRet.f32 %614, 1
  %617 = extractvalue %dx.types.ResRet.f32 %614, 2
  %618 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 0, i32 0, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %619 = extractvalue %dx.types.ResRet.f32 %618, 0
  %620 = fcmp fast oeq float %619, 0.000000e+00
  %621 = select i1 %620, float 1.000000e+00, float %619
  %622 = fmul fast float %621, %615
  %623 = fmul fast float %621, %616
  %624 = fmul fast float %621, %617
  %625 = fptrunc float %622 to half
  %626 = fptrunc float %623 to half
  %627 = fptrunc float %624 to half
  %628 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %41, i32 %436, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %629 = extractvalue %dx.types.ResRet.f32 %628, 0
  %630 = extractvalue %dx.types.ResRet.f32 %628, 1
  %631 = extractvalue %dx.types.ResRet.f32 %628, 2
  %632 = fmul fast float %621, %629
  %633 = fmul fast float %621, %630
  %634 = fmul fast float %621, %631
  %635 = fptrunc float %632 to half
  %636 = fptrunc float %633 to half
  %637 = fptrunc float %634 to half
  %638 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %22, i32 %436, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %639 = extractvalue %dx.types.ResRet.f32 %638, 0
  %640 = extractvalue %dx.types.ResRet.f32 %638, 1
  %641 = extractvalue %dx.types.ResRet.f32 %638, 2
  %642 = fmul fast float %621, %639
  %643 = fmul fast float %621, %640
  %644 = fmul fast float %621, %641
  %645 = fptrunc float %642 to half
  %646 = fptrunc float %643 to half
  %647 = fptrunc float %644 to half
  %648 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %64, i32 %436, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %649 = extractvalue %dx.types.ResRet.f32 %648, 0
  %650 = extractvalue %dx.types.ResRet.f32 %648, 1
  %651 = extractvalue %dx.types.ResRet.f32 %648, 2
  %652 = fmul fast float %621, %649
  %653 = fmul fast float %621, %650
  %654 = fmul fast float %621, %651
  %655 = fptrunc float %652 to half
  %656 = fptrunc float %653 to half
  %657 = fptrunc float %654 to half
  %658 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %22, i32 %468, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %659 = extractvalue %dx.types.ResRet.f32 %658, 0
  %660 = extractvalue %dx.types.ResRet.f32 %658, 1
  %661 = extractvalue %dx.types.ResRet.f32 %658, 2
  %662 = fmul fast float %621, %659
  %663 = fmul fast float %621, %660
  %664 = fmul fast float %621, %661
  %665 = fptrunc float %662 to half
  %666 = fptrunc float %663 to half
  %667 = fptrunc float %664 to half
  %668 = fadd fast half %627, %625
  %669 = fmul fast half %668, 0xH3800
  %670 = fadd fast half %669, %626
  %671 = fadd fast half %637, %635
  %672 = fmul fast half %671, 0xH3800
  %673 = fadd fast half %672, %636
  %674 = fadd fast half %647, %645
  %675 = fmul fast half %674, 0xH3800
  %676 = fadd fast half %675, %646
  %677 = fadd fast half %657, %655
  %678 = fmul fast half %677, 0xH3800
  %679 = fadd fast half %678, %656
  %680 = fadd fast half %667, %665
  %681 = fmul fast half %680, 0xH3800
  %682 = fadd fast half %681, %666
  %683 = fadd fast half %673, %670
  %684 = fadd fast half %683, %679
  %685 = fadd fast half %684, %682
  %686 = fmul fast half %685, 0xH3400
  %687 = fsub fast half %686, %676
  %688 = call half @dx.op.unary.f16(i32 6, half %687)  ; FAbs(value)
  %689 = call half @dx.op.binary.f16(i32 35, half %673, half %676)  ; FMax(a,b)
  %690 = call half @dx.op.binary.f16(i32 35, half %670, half %689)  ; FMax(a,b)
  %691 = call half @dx.op.binary.f16(i32 35, half %679, half %682)  ; FMax(a,b)
  %692 = call half @dx.op.binary.f16(i32 35, half %690, half %691)  ; FMax(a,b)
  %693 = call half @dx.op.binary.f16(i32 36, half %673, half %676)  ; FMin(a,b)
  %694 = call half @dx.op.binary.f16(i32 36, half %670, half %693)  ; FMin(a,b)
  %695 = call half @dx.op.binary.f16(i32 36, half %679, half %682)  ; FMin(a,b)
  %696 = call half @dx.op.binary.f16(i32 36, half %694, half %695)  ; FMin(a,b)
  %697 = fsub fast half %692, %696
  %698 = bitcast half %697 to i16
  %699 = sub i16 30605, %698
  %700 = bitcast i16 %699 to half
  %701 = fmul fast half %700, %697
  %702 = fsub fast half 0xH4000, %701
  %703 = fmul fast half %700, %688
  %704 = fmul fast half %703, %702
  %705 = call half @dx.op.unary.f16(i32 7, half %704)  ; Saturate(value)
  %706 = fmul fast half %705, 0xH3800
  %707 = fsub fast half 0xH3C00, %706
  %708 = call half @dx.op.binary.f16(i32 36, half %635, half %655)  ; FMin(a,b)
  %709 = call half @dx.op.binary.f16(i32 36, half %625, half %708)  ; FMin(a,b)
  %710 = call half @dx.op.binary.f16(i32 36, half %709, half %665)  ; FMin(a,b)
  %711 = call half @dx.op.binary.f16(i32 36, half %636, half %656)  ; FMin(a,b)
  %712 = call half @dx.op.binary.f16(i32 36, half %626, half %711)  ; FMin(a,b)
  %713 = call half @dx.op.binary.f16(i32 36, half %712, half %666)  ; FMin(a,b)
  %714 = call half @dx.op.binary.f16(i32 36, half %637, half %657)  ; FMin(a,b)
  %715 = call half @dx.op.binary.f16(i32 36, half %627, half %714)  ; FMin(a,b)
  %716 = call half @dx.op.binary.f16(i32 36, half %715, half %667)  ; FMin(a,b)
  %717 = call half @dx.op.binary.f16(i32 35, half %635, half %655)  ; FMax(a,b)
  %718 = call half @dx.op.binary.f16(i32 35, half %625, half %717)  ; FMax(a,b)
  %719 = call half @dx.op.binary.f16(i32 35, half %718, half %665)  ; FMax(a,b)
  %720 = call half @dx.op.binary.f16(i32 35, half %636, half %656)  ; FMax(a,b)
  %721 = call half @dx.op.binary.f16(i32 35, half %626, half %720)  ; FMax(a,b)
  %722 = call half @dx.op.binary.f16(i32 35, half %721, half %666)  ; FMax(a,b)
  %723 = call half @dx.op.binary.f16(i32 35, half %637, half %657)  ; FMax(a,b)
  %724 = call half @dx.op.binary.f16(i32 35, half %627, half %723)  ; FMax(a,b)
  %725 = call half @dx.op.binary.f16(i32 35, half %724, half %667)  ; FMax(a,b)
  %726 = fdiv fast half 0xH3400, %719
  %727 = fdiv fast half 0xH3400, %722
  %728 = fdiv fast half 0xH3400, %725
  %729 = fsub fast half 0xH3C00, %719
  %730 = fmul fast half %710, 0xH4400
  %731 = fadd fast half %730, 0xHC400
  %732 = fdiv fast half 0xH3C00, %731
  %733 = fmul fast half %732, %729
  %734 = fsub fast half 0xH3C00, %722
  %735 = fmul fast half %713, 0xH4400
  %736 = fadd fast half %735, 0xHC400
  %737 = fdiv fast half 0xH3C00, %736
  %738 = fmul fast half %737, %734
  %739 = fsub fast half 0xH3C00, %725
  %740 = fmul fast half %716, 0xH4400
  %741 = fadd fast half %740, 0xHC400
  %742 = fdiv fast half 0xH3C00, %741
  %743 = fmul fast half %742, %739
  %744 = fmul fast half %710, %726
  %745 = fsub fast half 0xH8000, %744
  %746 = call half @dx.op.binary.f16(i32 35, half %745, half %733)  ; FMax(a,b)
  %747 = fmul fast half %713, %727
  %748 = fsub fast half 0xH8000, %747
  %749 = call half @dx.op.binary.f16(i32 35, half %748, half %738)  ; FMax(a,b)
  %750 = fmul fast half %716, %728
  %751 = fsub fast half 0xH8000, %750
  %752 = call half @dx.op.binary.f16(i32 35, half %751, half %743)  ; FMax(a,b)
  %753 = call half @dx.op.binary.f16(i32 35, half %749, half %752)  ; FMax(a,b)
  %754 = call half @dx.op.binary.f16(i32 35, half %746, half %753)  ; FMax(a,b)
  %755 = call half @dx.op.binary.f16(i32 36, half %754, half 0xH0000)  ; FMin(a,b)
  %756 = call half @dx.op.binary.f16(i32 35, half 0xHB200, half %755)  ; FMax(a,b)
  %757 = and i32 %613, 65535
  %758 = call float @dx.op.legacyF16ToF32(i32 131, i32 %757)  ; LegacyF16ToF32(value)
  %759 = fptrunc float %758 to half
  %760 = fmul fast half %756, %707
  %761 = fmul fast half %760, %759
  %762 = fmul fast half %761, 0xH4400
  %763 = fadd fast half %762, 0xH3C00
  %764 = bitcast half %763 to i16
  %765 = sub i16 30605, %764
  %766 = bitcast i16 %765 to half
  %767 = fmul fast half %766, %763
  %768 = fsub fast half 0xH4000, %767
  %769 = fmul fast half %768, %766
  %770 = fadd fast half %635, %625
  %771 = fadd fast half %770, %655
  %772 = fadd fast half %771, %665
  %773 = fmul fast half %761, %772
  %774 = fadd fast half %773, %645
  %775 = fmul fast half %769, %774
  %776 = fadd fast half %636, %626
  %777 = fadd fast half %776, %656
  %778 = fadd fast half %777, %666
  %779 = fmul fast half %761, %778
  %780 = fadd fast half %779, %646
  %781 = fmul fast half %769, %780
  %782 = fadd fast half %637, %627
  %783 = fadd fast half %782, %657
  %784 = fadd fast half %783, %667
  %785 = fmul fast half %761, %784
  %786 = fadd fast half %785, %647
  %787 = fmul fast half %769, %786
  %788 = fptrunc float %619 to half
  %789 = select i1 %620, half 0xH3C00, half %788
  %790 = fdiv fast half %775, %789
  %791 = fdiv fast half %781, %789
  %792 = fdiv fast half %787, %789
  %793 = fpext half %790 to float
  %794 = fpext half %791 to float
  %795 = fpext half %792 to float
  %796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %797 = extractvalue %dx.types.CBufRet.f32 %796, 2
  %798 = fmul fast float %797, %793
  %799 = fmul fast float %797, %794
  %800 = fmul fast float %797, %795
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %22, i32 %436, i32 undef, float %798, float %799, float %800, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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

