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
; shader hash: c57f592fe8cf8d40424ac1d5293587b7
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
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
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
  %20 = extractvalue %dx.types.CBufRet.i32 %19, 0
  %21 = add i32 %18, -1
  %22 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %17, i32 %21, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %23 = extractvalue %dx.types.ResRet.f32 %22, 0
  %24 = extractvalue %dx.types.ResRet.f32 %22, 1
  %25 = extractvalue %dx.types.ResRet.f32 %22, 2
  %26 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 0, i32 0, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %27 = extractvalue %dx.types.ResRet.f32 %26, 0
  %28 = fcmp fast oeq float %27, 0.000000e+00
  %29 = select i1 %28, float 1.000000e+00, float %27
  %30 = fmul fast float %29, %23
  %31 = fmul fast float %29, %24
  %32 = fmul fast float %29, %25
  %33 = call float @dx.op.binary.f32(i32 35, float %31, float %32)  ; FMax(a,b)
  %34 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %30)  ; FMax(a,b)
  %35 = call float @dx.op.binary.f32(i32 35, float %34, float %33)  ; FMax(a,b)
  %36 = fadd fast float %35, 1.000000e+00
  %37 = fdiv fast float %30, %36
  %38 = fdiv fast float %31, %36
  %39 = fdiv fast float %32, %36
  %40 = add i32 %17, -1
  %41 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %40, i32 %18, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %42 = extractvalue %dx.types.ResRet.f32 %41, 0
  %43 = extractvalue %dx.types.ResRet.f32 %41, 1
  %44 = extractvalue %dx.types.ResRet.f32 %41, 2
  %45 = fmul fast float %29, %42
  %46 = fmul fast float %29, %43
  %47 = fmul fast float %29, %44
  %48 = call float @dx.op.binary.f32(i32 35, float %46, float %47)  ; FMax(a,b)
  %49 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %45)  ; FMax(a,b)
  %50 = call float @dx.op.binary.f32(i32 35, float %49, float %48)  ; FMax(a,b)
  %51 = fadd fast float %50, 1.000000e+00
  %52 = fdiv fast float %45, %51
  %53 = fdiv fast float %46, %51
  %54 = fdiv fast float %47, %51
  %55 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %17, i32 %18, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %56 = extractvalue %dx.types.ResRet.f32 %55, 0
  %57 = extractvalue %dx.types.ResRet.f32 %55, 1
  %58 = extractvalue %dx.types.ResRet.f32 %55, 2
  %59 = fmul fast float %29, %56
  %60 = fmul fast float %29, %57
  %61 = fmul fast float %29, %58
  %62 = call float @dx.op.binary.f32(i32 35, float %60, float %61)  ; FMax(a,b)
  %63 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %59)  ; FMax(a,b)
  %64 = call float @dx.op.binary.f32(i32 35, float %63, float %62)  ; FMax(a,b)
  %65 = fadd fast float %64, 1.000000e+00
  %66 = fdiv fast float %59, %65
  %67 = fdiv fast float %60, %65
  %68 = fdiv fast float %61, %65
  %69 = add nsw i32 %17, 1
  %70 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %69, i32 %18, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %71 = extractvalue %dx.types.ResRet.f32 %70, 0
  %72 = extractvalue %dx.types.ResRet.f32 %70, 1
  %73 = extractvalue %dx.types.ResRet.f32 %70, 2
  %74 = fmul fast float %29, %71
  %75 = fmul fast float %29, %72
  %76 = fmul fast float %29, %73
  %77 = call float @dx.op.binary.f32(i32 35, float %75, float %76)  ; FMax(a,b)
  %78 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %74)  ; FMax(a,b)
  %79 = call float @dx.op.binary.f32(i32 35, float %78, float %77)  ; FMax(a,b)
  %80 = fadd fast float %79, 1.000000e+00
  %81 = fdiv fast float %74, %80
  %82 = fdiv fast float %75, %80
  %83 = fdiv fast float %76, %80
  %84 = add nsw i32 %18, 1
  %85 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %17, i32 %84, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %86 = extractvalue %dx.types.ResRet.f32 %85, 0
  %87 = extractvalue %dx.types.ResRet.f32 %85, 1
  %88 = extractvalue %dx.types.ResRet.f32 %85, 2
  %89 = fmul fast float %29, %86
  %90 = fmul fast float %29, %87
  %91 = fmul fast float %29, %88
  %92 = call float @dx.op.binary.f32(i32 35, float %90, float %91)  ; FMax(a,b)
  %93 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %89)  ; FMax(a,b)
  %94 = call float @dx.op.binary.f32(i32 35, float %93, float %92)  ; FMax(a,b)
  %95 = fadd fast float %94, 1.000000e+00
  %96 = fdiv fast float %89, %95
  %97 = fdiv fast float %90, %95
  %98 = fdiv fast float %91, %95
  %99 = fadd fast float %25, %23
  %100 = fmul fast float %29, %99
  %101 = fdiv fast float %100, %36
  %102 = fmul fast float %101, 5.000000e-01
  %103 = fadd fast float %102, %38
  %104 = fadd fast float %44, %42
  %105 = fmul fast float %29, %104
  %106 = fdiv fast float %105, %51
  %107 = fmul fast float %106, 5.000000e-01
  %108 = fadd fast float %107, %53
  %109 = fadd fast float %58, %56
  %110 = fmul fast float %29, %109
  %111 = fdiv fast float %110, %65
  %112 = fmul fast float %111, 5.000000e-01
  %113 = fadd fast float %112, %67
  %114 = fadd fast float %73, %71
  %115 = fmul fast float %29, %114
  %116 = fdiv fast float %115, %80
  %117 = fmul fast float %116, 5.000000e-01
  %118 = fadd fast float %117, %82
  %119 = fadd fast float %88, %86
  %120 = fmul fast float %29, %119
  %121 = fdiv fast float %120, %95
  %122 = fmul fast float %121, 5.000000e-01
  %123 = fadd fast float %122, %97
  %124 = fadd fast float %108, %103
  %125 = fadd fast float %124, %118
  %126 = fadd fast float %125, %123
  %127 = fmul fast float %126, 2.500000e-01
  %128 = fsub fast float %127, %113
  %129 = call float @dx.op.unary.f32(i32 6, float %128)  ; FAbs(value)
  %130 = call float @dx.op.binary.f32(i32 35, float %108, float %113)  ; FMax(a,b)
  %131 = call float @dx.op.binary.f32(i32 35, float %103, float %130)  ; FMax(a,b)
  %132 = call float @dx.op.binary.f32(i32 35, float %118, float %123)  ; FMax(a,b)
  %133 = call float @dx.op.binary.f32(i32 35, float %131, float %132)  ; FMax(a,b)
  %134 = call float @dx.op.binary.f32(i32 36, float %108, float %113)  ; FMin(a,b)
  %135 = call float @dx.op.binary.f32(i32 36, float %103, float %134)  ; FMin(a,b)
  %136 = call float @dx.op.binary.f32(i32 36, float %118, float %123)  ; FMin(a,b)
  %137 = call float @dx.op.binary.f32(i32 36, float %135, float %136)  ; FMin(a,b)
  %138 = fsub fast float %133, %137
  %139 = bitcast float %138 to i32
  %140 = sub i32 2129764351, %139
  %141 = bitcast i32 %140 to float
  %142 = fmul fast float %141, %138
  %143 = fsub fast float 2.000000e+00, %142
  %144 = fmul fast float %141, %129
  %145 = fmul fast float %144, %143
  %146 = call float @dx.op.unary.f32(i32 7, float %145)  ; Saturate(value)
  %147 = fmul fast float %146, 5.000000e-01
  %148 = fsub fast float 1.000000e+00, %147
  %149 = call float @dx.op.binary.f32(i32 36, float %52, float %81)  ; FMin(a,b)
  %150 = call float @dx.op.binary.f32(i32 36, float %37, float %149)  ; FMin(a,b)
  %151 = call float @dx.op.binary.f32(i32 36, float %150, float %96)  ; FMin(a,b)
  %152 = call float @dx.op.binary.f32(i32 36, float %53, float %82)  ; FMin(a,b)
  %153 = call float @dx.op.binary.f32(i32 36, float %38, float %152)  ; FMin(a,b)
  %154 = call float @dx.op.binary.f32(i32 36, float %153, float %97)  ; FMin(a,b)
  %155 = call float @dx.op.binary.f32(i32 36, float %54, float %83)  ; FMin(a,b)
  %156 = call float @dx.op.binary.f32(i32 36, float %39, float %155)  ; FMin(a,b)
  %157 = call float @dx.op.binary.f32(i32 36, float %156, float %98)  ; FMin(a,b)
  %158 = call float @dx.op.binary.f32(i32 35, float %52, float %81)  ; FMax(a,b)
  %159 = call float @dx.op.binary.f32(i32 35, float %37, float %158)  ; FMax(a,b)
  %160 = call float @dx.op.binary.f32(i32 35, float %159, float %96)  ; FMax(a,b)
  %161 = call float @dx.op.binary.f32(i32 35, float %53, float %82)  ; FMax(a,b)
  %162 = call float @dx.op.binary.f32(i32 35, float %38, float %161)  ; FMax(a,b)
  %163 = call float @dx.op.binary.f32(i32 35, float %162, float %97)  ; FMax(a,b)
  %164 = call float @dx.op.binary.f32(i32 35, float %54, float %83)  ; FMax(a,b)
  %165 = call float @dx.op.binary.f32(i32 35, float %39, float %164)  ; FMax(a,b)
  %166 = call float @dx.op.binary.f32(i32 35, float %165, float %98)  ; FMax(a,b)
  %167 = fdiv fast float 2.500000e-01, %160
  %168 = fdiv fast float 2.500000e-01, %163
  %169 = fdiv fast float 2.500000e-01, %166
  %170 = fsub fast float 1.000000e+00, %160
  %171 = fmul fast float %151, 4.000000e+00
  %172 = fadd fast float %171, -4.000000e+00
  %173 = fdiv fast float 1.000000e+00, %172
  %174 = fmul fast float %173, %170
  %175 = fsub fast float 1.000000e+00, %163
  %176 = fmul fast float %154, 4.000000e+00
  %177 = fadd fast float %176, -4.000000e+00
  %178 = fdiv fast float 1.000000e+00, %177
  %179 = fmul fast float %178, %175
  %180 = fsub fast float 1.000000e+00, %166
  %181 = fmul fast float %157, 4.000000e+00
  %182 = fadd fast float %181, -4.000000e+00
  %183 = fdiv fast float 1.000000e+00, %182
  %184 = fmul fast float %183, %180
  %185 = fmul fast float %151, %167
  %186 = fsub fast float -0.000000e+00, %185
  %187 = call float @dx.op.binary.f32(i32 35, float %186, float %174)  ; FMax(a,b)
  %188 = fmul fast float %154, %168
  %189 = fsub fast float -0.000000e+00, %188
  %190 = call float @dx.op.binary.f32(i32 35, float %189, float %179)  ; FMax(a,b)
  %191 = fmul fast float %157, %169
  %192 = fsub fast float -0.000000e+00, %191
  %193 = call float @dx.op.binary.f32(i32 35, float %192, float %184)  ; FMax(a,b)
  %194 = call float @dx.op.binary.f32(i32 35, float %190, float %193)  ; FMax(a,b)
  %195 = call float @dx.op.binary.f32(i32 35, float %187, float %194)  ; FMax(a,b)
  %196 = call float @dx.op.binary.f32(i32 36, float %195, float 0.000000e+00)  ; FMin(a,b)
  %197 = call float @dx.op.binary.f32(i32 35, float -1.875000e-01, float %196)  ; FMax(a,b)
  %198 = bitcast i32 %20 to float
  %199 = fmul fast float %148, %198
  %200 = fmul fast float %199, %197
  %201 = fmul fast float %200, 4.000000e+00
  %202 = fadd fast float %201, 1.000000e+00
  %203 = bitcast float %202 to i32
  %204 = sub i32 2129764351, %203
  %205 = bitcast i32 %204 to float
  %206 = fmul fast float %205, %202
  %207 = fsub fast float 2.000000e+00, %206
  %208 = fmul fast float %207, %205
  %209 = fadd fast float %52, %37
  %210 = fadd fast float %209, %81
  %211 = fadd fast float %210, %96
  %212 = fmul fast float %200, %211
  %213 = fadd fast float %212, %66
  %214 = fmul fast float %208, %213
  %215 = fadd fast float %53, %38
  %216 = fadd fast float %215, %82
  %217 = fadd fast float %216, %97
  %218 = fmul fast float %200, %217
  %219 = fadd fast float %218, %67
  %220 = fmul fast float %208, %219
  %221 = fadd fast float %54, %39
  %222 = fadd fast float %221, %83
  %223 = fadd fast float %222, %98
  %224 = fmul fast float %200, %223
  %225 = fadd fast float %224, %68
  %226 = fmul fast float %208, %225
  %227 = call float @dx.op.binary.f32(i32 35, float %220, float %226)  ; FMax(a,b)
  %228 = call float @dx.op.binary.f32(i32 35, float %214, float %227)  ; FMax(a,b)
  %229 = fsub fast float 1.000000e+00, %228
  %230 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %229)  ; FMax(a,b)
  %231 = fmul fast float %29, %230
  %232 = fdiv fast float %214, %231
  %233 = fdiv fast float %220, %231
  %234 = fdiv fast float %226, %231
  %235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %236 = extractvalue %dx.types.CBufRet.f32 %235, 2
  %237 = fmul fast float %236, %232
  %238 = fmul fast float %236, %233
  %239 = fmul fast float %236, %234
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %17, i32 %18, i32 undef, float %237, float %238, float %239, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %240 = or i32 %17, 8
  %241 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %242 = extractvalue %dx.types.CBufRet.i32 %241, 0
  %243 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %240, i32 %21, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %244 = extractvalue %dx.types.ResRet.f32 %243, 0
  %245 = extractvalue %dx.types.ResRet.f32 %243, 1
  %246 = extractvalue %dx.types.ResRet.f32 %243, 2
  %247 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 0, i32 0, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %248 = extractvalue %dx.types.ResRet.f32 %247, 0
  %249 = fcmp fast oeq float %248, 0.000000e+00
  %250 = select i1 %249, float 1.000000e+00, float %248
  %251 = fmul fast float %250, %244
  %252 = fmul fast float %250, %245
  %253 = fmul fast float %250, %246
  %254 = call float @dx.op.binary.f32(i32 35, float %252, float %253)  ; FMax(a,b)
  %255 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %251)  ; FMax(a,b)
  %256 = call float @dx.op.binary.f32(i32 35, float %255, float %254)  ; FMax(a,b)
  %257 = fadd fast float %256, 1.000000e+00
  %258 = fdiv fast float %251, %257
  %259 = fdiv fast float %252, %257
  %260 = fdiv fast float %253, %257
  %261 = add i32 %240, -1
  %262 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %261, i32 %18, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %263 = extractvalue %dx.types.ResRet.f32 %262, 0
  %264 = extractvalue %dx.types.ResRet.f32 %262, 1
  %265 = extractvalue %dx.types.ResRet.f32 %262, 2
  %266 = fmul fast float %250, %263
  %267 = fmul fast float %250, %264
  %268 = fmul fast float %250, %265
  %269 = call float @dx.op.binary.f32(i32 35, float %267, float %268)  ; FMax(a,b)
  %270 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %266)  ; FMax(a,b)
  %271 = call float @dx.op.binary.f32(i32 35, float %270, float %269)  ; FMax(a,b)
  %272 = fadd fast float %271, 1.000000e+00
  %273 = fdiv fast float %266, %272
  %274 = fdiv fast float %267, %272
  %275 = fdiv fast float %268, %272
  %276 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %240, i32 %18, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %277 = extractvalue %dx.types.ResRet.f32 %276, 0
  %278 = extractvalue %dx.types.ResRet.f32 %276, 1
  %279 = extractvalue %dx.types.ResRet.f32 %276, 2
  %280 = fmul fast float %250, %277
  %281 = fmul fast float %250, %278
  %282 = fmul fast float %250, %279
  %283 = call float @dx.op.binary.f32(i32 35, float %281, float %282)  ; FMax(a,b)
  %284 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %280)  ; FMax(a,b)
  %285 = call float @dx.op.binary.f32(i32 35, float %284, float %283)  ; FMax(a,b)
  %286 = fadd fast float %285, 1.000000e+00
  %287 = fdiv fast float %280, %286
  %288 = fdiv fast float %281, %286
  %289 = fdiv fast float %282, %286
  %290 = add i32 %240, 1
  %291 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %290, i32 %18, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %292 = extractvalue %dx.types.ResRet.f32 %291, 0
  %293 = extractvalue %dx.types.ResRet.f32 %291, 1
  %294 = extractvalue %dx.types.ResRet.f32 %291, 2
  %295 = fmul fast float %250, %292
  %296 = fmul fast float %250, %293
  %297 = fmul fast float %250, %294
  %298 = call float @dx.op.binary.f32(i32 35, float %296, float %297)  ; FMax(a,b)
  %299 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %295)  ; FMax(a,b)
  %300 = call float @dx.op.binary.f32(i32 35, float %299, float %298)  ; FMax(a,b)
  %301 = fadd fast float %300, 1.000000e+00
  %302 = fdiv fast float %295, %301
  %303 = fdiv fast float %296, %301
  %304 = fdiv fast float %297, %301
  %305 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %240, i32 %84, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %306 = extractvalue %dx.types.ResRet.f32 %305, 0
  %307 = extractvalue %dx.types.ResRet.f32 %305, 1
  %308 = extractvalue %dx.types.ResRet.f32 %305, 2
  %309 = fmul fast float %250, %306
  %310 = fmul fast float %250, %307
  %311 = fmul fast float %250, %308
  %312 = call float @dx.op.binary.f32(i32 35, float %310, float %311)  ; FMax(a,b)
  %313 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %309)  ; FMax(a,b)
  %314 = call float @dx.op.binary.f32(i32 35, float %313, float %312)  ; FMax(a,b)
  %315 = fadd fast float %314, 1.000000e+00
  %316 = fdiv fast float %309, %315
  %317 = fdiv fast float %310, %315
  %318 = fdiv fast float %311, %315
  %319 = fadd fast float %246, %244
  %320 = fmul fast float %250, %319
  %321 = fdiv fast float %320, %257
  %322 = fmul fast float %321, 5.000000e-01
  %323 = fadd fast float %322, %259
  %324 = fadd fast float %265, %263
  %325 = fmul fast float %250, %324
  %326 = fdiv fast float %325, %272
  %327 = fmul fast float %326, 5.000000e-01
  %328 = fadd fast float %327, %274
  %329 = fadd fast float %279, %277
  %330 = fmul fast float %250, %329
  %331 = fdiv fast float %330, %286
  %332 = fmul fast float %331, 5.000000e-01
  %333 = fadd fast float %332, %288
  %334 = fadd fast float %294, %292
  %335 = fmul fast float %250, %334
  %336 = fdiv fast float %335, %301
  %337 = fmul fast float %336, 5.000000e-01
  %338 = fadd fast float %337, %303
  %339 = fadd fast float %308, %306
  %340 = fmul fast float %250, %339
  %341 = fdiv fast float %340, %315
  %342 = fmul fast float %341, 5.000000e-01
  %343 = fadd fast float %342, %317
  %344 = fadd fast float %328, %323
  %345 = fadd fast float %344, %338
  %346 = fadd fast float %345, %343
  %347 = fmul fast float %346, 2.500000e-01
  %348 = fsub fast float %347, %333
  %349 = call float @dx.op.unary.f32(i32 6, float %348)  ; FAbs(value)
  %350 = call float @dx.op.binary.f32(i32 35, float %328, float %333)  ; FMax(a,b)
  %351 = call float @dx.op.binary.f32(i32 35, float %323, float %350)  ; FMax(a,b)
  %352 = call float @dx.op.binary.f32(i32 35, float %338, float %343)  ; FMax(a,b)
  %353 = call float @dx.op.binary.f32(i32 35, float %351, float %352)  ; FMax(a,b)
  %354 = call float @dx.op.binary.f32(i32 36, float %328, float %333)  ; FMin(a,b)
  %355 = call float @dx.op.binary.f32(i32 36, float %323, float %354)  ; FMin(a,b)
  %356 = call float @dx.op.binary.f32(i32 36, float %338, float %343)  ; FMin(a,b)
  %357 = call float @dx.op.binary.f32(i32 36, float %355, float %356)  ; FMin(a,b)
  %358 = fsub fast float %353, %357
  %359 = bitcast float %358 to i32
  %360 = sub i32 2129764351, %359
  %361 = bitcast i32 %360 to float
  %362 = fmul fast float %361, %358
  %363 = fsub fast float 2.000000e+00, %362
  %364 = fmul fast float %361, %349
  %365 = fmul fast float %364, %363
  %366 = call float @dx.op.unary.f32(i32 7, float %365)  ; Saturate(value)
  %367 = fmul fast float %366, 5.000000e-01
  %368 = fsub fast float 1.000000e+00, %367
  %369 = call float @dx.op.binary.f32(i32 36, float %273, float %302)  ; FMin(a,b)
  %370 = call float @dx.op.binary.f32(i32 36, float %258, float %369)  ; FMin(a,b)
  %371 = call float @dx.op.binary.f32(i32 36, float %370, float %316)  ; FMin(a,b)
  %372 = call float @dx.op.binary.f32(i32 36, float %274, float %303)  ; FMin(a,b)
  %373 = call float @dx.op.binary.f32(i32 36, float %259, float %372)  ; FMin(a,b)
  %374 = call float @dx.op.binary.f32(i32 36, float %373, float %317)  ; FMin(a,b)
  %375 = call float @dx.op.binary.f32(i32 36, float %275, float %304)  ; FMin(a,b)
  %376 = call float @dx.op.binary.f32(i32 36, float %260, float %375)  ; FMin(a,b)
  %377 = call float @dx.op.binary.f32(i32 36, float %376, float %318)  ; FMin(a,b)
  %378 = call float @dx.op.binary.f32(i32 35, float %273, float %302)  ; FMax(a,b)
  %379 = call float @dx.op.binary.f32(i32 35, float %258, float %378)  ; FMax(a,b)
  %380 = call float @dx.op.binary.f32(i32 35, float %379, float %316)  ; FMax(a,b)
  %381 = call float @dx.op.binary.f32(i32 35, float %274, float %303)  ; FMax(a,b)
  %382 = call float @dx.op.binary.f32(i32 35, float %259, float %381)  ; FMax(a,b)
  %383 = call float @dx.op.binary.f32(i32 35, float %382, float %317)  ; FMax(a,b)
  %384 = call float @dx.op.binary.f32(i32 35, float %275, float %304)  ; FMax(a,b)
  %385 = call float @dx.op.binary.f32(i32 35, float %260, float %384)  ; FMax(a,b)
  %386 = call float @dx.op.binary.f32(i32 35, float %385, float %318)  ; FMax(a,b)
  %387 = fdiv fast float 2.500000e-01, %380
  %388 = fdiv fast float 2.500000e-01, %383
  %389 = fdiv fast float 2.500000e-01, %386
  %390 = fsub fast float 1.000000e+00, %380
  %391 = fmul fast float %371, 4.000000e+00
  %392 = fadd fast float %391, -4.000000e+00
  %393 = fdiv fast float 1.000000e+00, %392
  %394 = fmul fast float %393, %390
  %395 = fsub fast float 1.000000e+00, %383
  %396 = fmul fast float %374, 4.000000e+00
  %397 = fadd fast float %396, -4.000000e+00
  %398 = fdiv fast float 1.000000e+00, %397
  %399 = fmul fast float %398, %395
  %400 = fsub fast float 1.000000e+00, %386
  %401 = fmul fast float %377, 4.000000e+00
  %402 = fadd fast float %401, -4.000000e+00
  %403 = fdiv fast float 1.000000e+00, %402
  %404 = fmul fast float %403, %400
  %405 = fmul fast float %371, %387
  %406 = fsub fast float -0.000000e+00, %405
  %407 = call float @dx.op.binary.f32(i32 35, float %406, float %394)  ; FMax(a,b)
  %408 = fmul fast float %374, %388
  %409 = fsub fast float -0.000000e+00, %408
  %410 = call float @dx.op.binary.f32(i32 35, float %409, float %399)  ; FMax(a,b)
  %411 = fmul fast float %377, %389
  %412 = fsub fast float -0.000000e+00, %411
  %413 = call float @dx.op.binary.f32(i32 35, float %412, float %404)  ; FMax(a,b)
  %414 = call float @dx.op.binary.f32(i32 35, float %410, float %413)  ; FMax(a,b)
  %415 = call float @dx.op.binary.f32(i32 35, float %407, float %414)  ; FMax(a,b)
  %416 = call float @dx.op.binary.f32(i32 36, float %415, float 0.000000e+00)  ; FMin(a,b)
  %417 = call float @dx.op.binary.f32(i32 35, float -1.875000e-01, float %416)  ; FMax(a,b)
  %418 = bitcast i32 %242 to float
  %419 = fmul fast float %368, %418
  %420 = fmul fast float %419, %417
  %421 = fmul fast float %420, 4.000000e+00
  %422 = fadd fast float %421, 1.000000e+00
  %423 = bitcast float %422 to i32
  %424 = sub i32 2129764351, %423
  %425 = bitcast i32 %424 to float
  %426 = fmul fast float %425, %422
  %427 = fsub fast float 2.000000e+00, %426
  %428 = fmul fast float %427, %425
  %429 = fadd fast float %273, %258
  %430 = fadd fast float %429, %302
  %431 = fadd fast float %430, %316
  %432 = fmul fast float %420, %431
  %433 = fadd fast float %432, %287
  %434 = fmul fast float %428, %433
  %435 = fadd fast float %274, %259
  %436 = fadd fast float %435, %303
  %437 = fadd fast float %436, %317
  %438 = fmul fast float %420, %437
  %439 = fadd fast float %438, %288
  %440 = fmul fast float %428, %439
  %441 = fadd fast float %275, %260
  %442 = fadd fast float %441, %304
  %443 = fadd fast float %442, %318
  %444 = fmul fast float %420, %443
  %445 = fadd fast float %444, %289
  %446 = fmul fast float %428, %445
  %447 = call float @dx.op.binary.f32(i32 35, float %440, float %446)  ; FMax(a,b)
  %448 = call float @dx.op.binary.f32(i32 35, float %434, float %447)  ; FMax(a,b)
  %449 = fsub fast float 1.000000e+00, %448
  %450 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %449)  ; FMax(a,b)
  %451 = fmul fast float %250, %450
  %452 = fdiv fast float %434, %451
  %453 = fdiv fast float %440, %451
  %454 = fdiv fast float %446, %451
  %455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %456 = extractvalue %dx.types.CBufRet.f32 %455, 2
  %457 = fmul fast float %456, %452
  %458 = fmul fast float %456, %453
  %459 = fmul fast float %456, %454
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %240, i32 %18, i32 undef, float %457, float %458, float %459, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %460 = or i32 %18, 8
  %461 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %462 = extractvalue %dx.types.CBufRet.i32 %461, 0
  %463 = add i32 %460, -1
  %464 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %240, i32 %463, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %465 = extractvalue %dx.types.ResRet.f32 %464, 0
  %466 = extractvalue %dx.types.ResRet.f32 %464, 1
  %467 = extractvalue %dx.types.ResRet.f32 %464, 2
  %468 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 0, i32 0, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %469 = extractvalue %dx.types.ResRet.f32 %468, 0
  %470 = fcmp fast oeq float %469, 0.000000e+00
  %471 = select i1 %470, float 1.000000e+00, float %469
  %472 = fmul fast float %471, %465
  %473 = fmul fast float %471, %466
  %474 = fmul fast float %471, %467
  %475 = call float @dx.op.binary.f32(i32 35, float %473, float %474)  ; FMax(a,b)
  %476 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %472)  ; FMax(a,b)
  %477 = call float @dx.op.binary.f32(i32 35, float %476, float %475)  ; FMax(a,b)
  %478 = fadd fast float %477, 1.000000e+00
  %479 = fdiv fast float %472, %478
  %480 = fdiv fast float %473, %478
  %481 = fdiv fast float %474, %478
  %482 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %261, i32 %460, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %483 = extractvalue %dx.types.ResRet.f32 %482, 0
  %484 = extractvalue %dx.types.ResRet.f32 %482, 1
  %485 = extractvalue %dx.types.ResRet.f32 %482, 2
  %486 = fmul fast float %471, %483
  %487 = fmul fast float %471, %484
  %488 = fmul fast float %471, %485
  %489 = call float @dx.op.binary.f32(i32 35, float %487, float %488)  ; FMax(a,b)
  %490 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %486)  ; FMax(a,b)
  %491 = call float @dx.op.binary.f32(i32 35, float %490, float %489)  ; FMax(a,b)
  %492 = fadd fast float %491, 1.000000e+00
  %493 = fdiv fast float %486, %492
  %494 = fdiv fast float %487, %492
  %495 = fdiv fast float %488, %492
  %496 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %240, i32 %460, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %497 = extractvalue %dx.types.ResRet.f32 %496, 0
  %498 = extractvalue %dx.types.ResRet.f32 %496, 1
  %499 = extractvalue %dx.types.ResRet.f32 %496, 2
  %500 = fmul fast float %471, %497
  %501 = fmul fast float %471, %498
  %502 = fmul fast float %471, %499
  %503 = call float @dx.op.binary.f32(i32 35, float %501, float %502)  ; FMax(a,b)
  %504 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %500)  ; FMax(a,b)
  %505 = call float @dx.op.binary.f32(i32 35, float %504, float %503)  ; FMax(a,b)
  %506 = fadd fast float %505, 1.000000e+00
  %507 = fdiv fast float %500, %506
  %508 = fdiv fast float %501, %506
  %509 = fdiv fast float %502, %506
  %510 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %290, i32 %460, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %511 = extractvalue %dx.types.ResRet.f32 %510, 0
  %512 = extractvalue %dx.types.ResRet.f32 %510, 1
  %513 = extractvalue %dx.types.ResRet.f32 %510, 2
  %514 = fmul fast float %471, %511
  %515 = fmul fast float %471, %512
  %516 = fmul fast float %471, %513
  %517 = call float @dx.op.binary.f32(i32 35, float %515, float %516)  ; FMax(a,b)
  %518 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %514)  ; FMax(a,b)
  %519 = call float @dx.op.binary.f32(i32 35, float %518, float %517)  ; FMax(a,b)
  %520 = fadd fast float %519, 1.000000e+00
  %521 = fdiv fast float %514, %520
  %522 = fdiv fast float %515, %520
  %523 = fdiv fast float %516, %520
  %524 = add i32 %460, 1
  %525 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %240, i32 %524, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %526 = extractvalue %dx.types.ResRet.f32 %525, 0
  %527 = extractvalue %dx.types.ResRet.f32 %525, 1
  %528 = extractvalue %dx.types.ResRet.f32 %525, 2
  %529 = fmul fast float %471, %526
  %530 = fmul fast float %471, %527
  %531 = fmul fast float %471, %528
  %532 = call float @dx.op.binary.f32(i32 35, float %530, float %531)  ; FMax(a,b)
  %533 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %529)  ; FMax(a,b)
  %534 = call float @dx.op.binary.f32(i32 35, float %533, float %532)  ; FMax(a,b)
  %535 = fadd fast float %534, 1.000000e+00
  %536 = fdiv fast float %529, %535
  %537 = fdiv fast float %530, %535
  %538 = fdiv fast float %531, %535
  %539 = fadd fast float %467, %465
  %540 = fmul fast float %471, %539
  %541 = fdiv fast float %540, %478
  %542 = fmul fast float %541, 5.000000e-01
  %543 = fadd fast float %542, %480
  %544 = fadd fast float %485, %483
  %545 = fmul fast float %471, %544
  %546 = fdiv fast float %545, %492
  %547 = fmul fast float %546, 5.000000e-01
  %548 = fadd fast float %547, %494
  %549 = fadd fast float %499, %497
  %550 = fmul fast float %471, %549
  %551 = fdiv fast float %550, %506
  %552 = fmul fast float %551, 5.000000e-01
  %553 = fadd fast float %552, %508
  %554 = fadd fast float %513, %511
  %555 = fmul fast float %471, %554
  %556 = fdiv fast float %555, %520
  %557 = fmul fast float %556, 5.000000e-01
  %558 = fadd fast float %557, %522
  %559 = fadd fast float %528, %526
  %560 = fmul fast float %471, %559
  %561 = fdiv fast float %560, %535
  %562 = fmul fast float %561, 5.000000e-01
  %563 = fadd fast float %562, %537
  %564 = fadd fast float %548, %543
  %565 = fadd fast float %564, %558
  %566 = fadd fast float %565, %563
  %567 = fmul fast float %566, 2.500000e-01
  %568 = fsub fast float %567, %553
  %569 = call float @dx.op.unary.f32(i32 6, float %568)  ; FAbs(value)
  %570 = call float @dx.op.binary.f32(i32 35, float %548, float %553)  ; FMax(a,b)
  %571 = call float @dx.op.binary.f32(i32 35, float %543, float %570)  ; FMax(a,b)
  %572 = call float @dx.op.binary.f32(i32 35, float %558, float %563)  ; FMax(a,b)
  %573 = call float @dx.op.binary.f32(i32 35, float %571, float %572)  ; FMax(a,b)
  %574 = call float @dx.op.binary.f32(i32 36, float %548, float %553)  ; FMin(a,b)
  %575 = call float @dx.op.binary.f32(i32 36, float %543, float %574)  ; FMin(a,b)
  %576 = call float @dx.op.binary.f32(i32 36, float %558, float %563)  ; FMin(a,b)
  %577 = call float @dx.op.binary.f32(i32 36, float %575, float %576)  ; FMin(a,b)
  %578 = fsub fast float %573, %577
  %579 = bitcast float %578 to i32
  %580 = sub i32 2129764351, %579
  %581 = bitcast i32 %580 to float
  %582 = fmul fast float %581, %578
  %583 = fsub fast float 2.000000e+00, %582
  %584 = fmul fast float %581, %569
  %585 = fmul fast float %584, %583
  %586 = call float @dx.op.unary.f32(i32 7, float %585)  ; Saturate(value)
  %587 = fmul fast float %586, 5.000000e-01
  %588 = fsub fast float 1.000000e+00, %587
  %589 = call float @dx.op.binary.f32(i32 36, float %493, float %521)  ; FMin(a,b)
  %590 = call float @dx.op.binary.f32(i32 36, float %479, float %589)  ; FMin(a,b)
  %591 = call float @dx.op.binary.f32(i32 36, float %590, float %536)  ; FMin(a,b)
  %592 = call float @dx.op.binary.f32(i32 36, float %494, float %522)  ; FMin(a,b)
  %593 = call float @dx.op.binary.f32(i32 36, float %480, float %592)  ; FMin(a,b)
  %594 = call float @dx.op.binary.f32(i32 36, float %593, float %537)  ; FMin(a,b)
  %595 = call float @dx.op.binary.f32(i32 36, float %495, float %523)  ; FMin(a,b)
  %596 = call float @dx.op.binary.f32(i32 36, float %481, float %595)  ; FMin(a,b)
  %597 = call float @dx.op.binary.f32(i32 36, float %596, float %538)  ; FMin(a,b)
  %598 = call float @dx.op.binary.f32(i32 35, float %493, float %521)  ; FMax(a,b)
  %599 = call float @dx.op.binary.f32(i32 35, float %479, float %598)  ; FMax(a,b)
  %600 = call float @dx.op.binary.f32(i32 35, float %599, float %536)  ; FMax(a,b)
  %601 = call float @dx.op.binary.f32(i32 35, float %494, float %522)  ; FMax(a,b)
  %602 = call float @dx.op.binary.f32(i32 35, float %480, float %601)  ; FMax(a,b)
  %603 = call float @dx.op.binary.f32(i32 35, float %602, float %537)  ; FMax(a,b)
  %604 = call float @dx.op.binary.f32(i32 35, float %495, float %523)  ; FMax(a,b)
  %605 = call float @dx.op.binary.f32(i32 35, float %481, float %604)  ; FMax(a,b)
  %606 = call float @dx.op.binary.f32(i32 35, float %605, float %538)  ; FMax(a,b)
  %607 = fdiv fast float 2.500000e-01, %600
  %608 = fdiv fast float 2.500000e-01, %603
  %609 = fdiv fast float 2.500000e-01, %606
  %610 = fsub fast float 1.000000e+00, %600
  %611 = fmul fast float %591, 4.000000e+00
  %612 = fadd fast float %611, -4.000000e+00
  %613 = fdiv fast float 1.000000e+00, %612
  %614 = fmul fast float %613, %610
  %615 = fsub fast float 1.000000e+00, %603
  %616 = fmul fast float %594, 4.000000e+00
  %617 = fadd fast float %616, -4.000000e+00
  %618 = fdiv fast float 1.000000e+00, %617
  %619 = fmul fast float %618, %615
  %620 = fsub fast float 1.000000e+00, %606
  %621 = fmul fast float %597, 4.000000e+00
  %622 = fadd fast float %621, -4.000000e+00
  %623 = fdiv fast float 1.000000e+00, %622
  %624 = fmul fast float %623, %620
  %625 = fmul fast float %591, %607
  %626 = fsub fast float -0.000000e+00, %625
  %627 = call float @dx.op.binary.f32(i32 35, float %626, float %614)  ; FMax(a,b)
  %628 = fmul fast float %594, %608
  %629 = fsub fast float -0.000000e+00, %628
  %630 = call float @dx.op.binary.f32(i32 35, float %629, float %619)  ; FMax(a,b)
  %631 = fmul fast float %597, %609
  %632 = fsub fast float -0.000000e+00, %631
  %633 = call float @dx.op.binary.f32(i32 35, float %632, float %624)  ; FMax(a,b)
  %634 = call float @dx.op.binary.f32(i32 35, float %630, float %633)  ; FMax(a,b)
  %635 = call float @dx.op.binary.f32(i32 35, float %627, float %634)  ; FMax(a,b)
  %636 = call float @dx.op.binary.f32(i32 36, float %635, float 0.000000e+00)  ; FMin(a,b)
  %637 = call float @dx.op.binary.f32(i32 35, float -1.875000e-01, float %636)  ; FMax(a,b)
  %638 = bitcast i32 %462 to float
  %639 = fmul fast float %588, %638
  %640 = fmul fast float %639, %637
  %641 = fmul fast float %640, 4.000000e+00
  %642 = fadd fast float %641, 1.000000e+00
  %643 = bitcast float %642 to i32
  %644 = sub i32 2129764351, %643
  %645 = bitcast i32 %644 to float
  %646 = fmul fast float %645, %642
  %647 = fsub fast float 2.000000e+00, %646
  %648 = fmul fast float %647, %645
  %649 = fadd fast float %493, %479
  %650 = fadd fast float %649, %521
  %651 = fadd fast float %650, %536
  %652 = fmul fast float %640, %651
  %653 = fadd fast float %652, %507
  %654 = fmul fast float %648, %653
  %655 = fadd fast float %494, %480
  %656 = fadd fast float %655, %522
  %657 = fadd fast float %656, %537
  %658 = fmul fast float %640, %657
  %659 = fadd fast float %658, %508
  %660 = fmul fast float %648, %659
  %661 = fadd fast float %495, %481
  %662 = fadd fast float %661, %523
  %663 = fadd fast float %662, %538
  %664 = fmul fast float %640, %663
  %665 = fadd fast float %664, %509
  %666 = fmul fast float %648, %665
  %667 = call float @dx.op.binary.f32(i32 35, float %660, float %666)  ; FMax(a,b)
  %668 = call float @dx.op.binary.f32(i32 35, float %654, float %667)  ; FMax(a,b)
  %669 = fsub fast float 1.000000e+00, %668
  %670 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %669)  ; FMax(a,b)
  %671 = fmul fast float %471, %670
  %672 = fdiv fast float %654, %671
  %673 = fdiv fast float %660, %671
  %674 = fdiv fast float %666, %671
  %675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %676 = extractvalue %dx.types.CBufRet.f32 %675, 2
  %677 = fmul fast float %676, %672
  %678 = fmul fast float %676, %673
  %679 = fmul fast float %676, %674
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %240, i32 %460, i32 undef, float %677, float %678, float %679, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %680 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %681 = extractvalue %dx.types.CBufRet.i32 %680, 0
  %682 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %17, i32 %463, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %683 = extractvalue %dx.types.ResRet.f32 %682, 0
  %684 = extractvalue %dx.types.ResRet.f32 %682, 1
  %685 = extractvalue %dx.types.ResRet.f32 %682, 2
  %686 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 0, i32 0, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %687 = extractvalue %dx.types.ResRet.f32 %686, 0
  %688 = fcmp fast oeq float %687, 0.000000e+00
  %689 = select i1 %688, float 1.000000e+00, float %687
  %690 = fmul fast float %689, %683
  %691 = fmul fast float %689, %684
  %692 = fmul fast float %689, %685
  %693 = call float @dx.op.binary.f32(i32 35, float %691, float %692)  ; FMax(a,b)
  %694 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %690)  ; FMax(a,b)
  %695 = call float @dx.op.binary.f32(i32 35, float %694, float %693)  ; FMax(a,b)
  %696 = fadd fast float %695, 1.000000e+00
  %697 = fdiv fast float %690, %696
  %698 = fdiv fast float %691, %696
  %699 = fdiv fast float %692, %696
  %700 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %40, i32 %460, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %701 = extractvalue %dx.types.ResRet.f32 %700, 0
  %702 = extractvalue %dx.types.ResRet.f32 %700, 1
  %703 = extractvalue %dx.types.ResRet.f32 %700, 2
  %704 = fmul fast float %689, %701
  %705 = fmul fast float %689, %702
  %706 = fmul fast float %689, %703
  %707 = call float @dx.op.binary.f32(i32 35, float %705, float %706)  ; FMax(a,b)
  %708 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %704)  ; FMax(a,b)
  %709 = call float @dx.op.binary.f32(i32 35, float %708, float %707)  ; FMax(a,b)
  %710 = fadd fast float %709, 1.000000e+00
  %711 = fdiv fast float %704, %710
  %712 = fdiv fast float %705, %710
  %713 = fdiv fast float %706, %710
  %714 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %17, i32 %460, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %715 = extractvalue %dx.types.ResRet.f32 %714, 0
  %716 = extractvalue %dx.types.ResRet.f32 %714, 1
  %717 = extractvalue %dx.types.ResRet.f32 %714, 2
  %718 = fmul fast float %689, %715
  %719 = fmul fast float %689, %716
  %720 = fmul fast float %689, %717
  %721 = call float @dx.op.binary.f32(i32 35, float %719, float %720)  ; FMax(a,b)
  %722 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %718)  ; FMax(a,b)
  %723 = call float @dx.op.binary.f32(i32 35, float %722, float %721)  ; FMax(a,b)
  %724 = fadd fast float %723, 1.000000e+00
  %725 = fdiv fast float %718, %724
  %726 = fdiv fast float %719, %724
  %727 = fdiv fast float %720, %724
  %728 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %69, i32 %460, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %729 = extractvalue %dx.types.ResRet.f32 %728, 0
  %730 = extractvalue %dx.types.ResRet.f32 %728, 1
  %731 = extractvalue %dx.types.ResRet.f32 %728, 2
  %732 = fmul fast float %689, %729
  %733 = fmul fast float %689, %730
  %734 = fmul fast float %689, %731
  %735 = call float @dx.op.binary.f32(i32 35, float %733, float %734)  ; FMax(a,b)
  %736 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %732)  ; FMax(a,b)
  %737 = call float @dx.op.binary.f32(i32 35, float %736, float %735)  ; FMax(a,b)
  %738 = fadd fast float %737, 1.000000e+00
  %739 = fdiv fast float %732, %738
  %740 = fdiv fast float %733, %738
  %741 = fdiv fast float %734, %738
  %742 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %17, i32 %524, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %743 = extractvalue %dx.types.ResRet.f32 %742, 0
  %744 = extractvalue %dx.types.ResRet.f32 %742, 1
  %745 = extractvalue %dx.types.ResRet.f32 %742, 2
  %746 = fmul fast float %689, %743
  %747 = fmul fast float %689, %744
  %748 = fmul fast float %689, %745
  %749 = call float @dx.op.binary.f32(i32 35, float %747, float %748)  ; FMax(a,b)
  %750 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %746)  ; FMax(a,b)
  %751 = call float @dx.op.binary.f32(i32 35, float %750, float %749)  ; FMax(a,b)
  %752 = fadd fast float %751, 1.000000e+00
  %753 = fdiv fast float %746, %752
  %754 = fdiv fast float %747, %752
  %755 = fdiv fast float %748, %752
  %756 = fadd fast float %685, %683
  %757 = fmul fast float %689, %756
  %758 = fdiv fast float %757, %696
  %759 = fmul fast float %758, 5.000000e-01
  %760 = fadd fast float %759, %698
  %761 = fadd fast float %703, %701
  %762 = fmul fast float %689, %761
  %763 = fdiv fast float %762, %710
  %764 = fmul fast float %763, 5.000000e-01
  %765 = fadd fast float %764, %712
  %766 = fadd fast float %717, %715
  %767 = fmul fast float %689, %766
  %768 = fdiv fast float %767, %724
  %769 = fmul fast float %768, 5.000000e-01
  %770 = fadd fast float %769, %726
  %771 = fadd fast float %731, %729
  %772 = fmul fast float %689, %771
  %773 = fdiv fast float %772, %738
  %774 = fmul fast float %773, 5.000000e-01
  %775 = fadd fast float %774, %740
  %776 = fadd fast float %745, %743
  %777 = fmul fast float %689, %776
  %778 = fdiv fast float %777, %752
  %779 = fmul fast float %778, 5.000000e-01
  %780 = fadd fast float %779, %754
  %781 = fadd fast float %765, %760
  %782 = fadd fast float %781, %775
  %783 = fadd fast float %782, %780
  %784 = fmul fast float %783, 2.500000e-01
  %785 = fsub fast float %784, %770
  %786 = call float @dx.op.unary.f32(i32 6, float %785)  ; FAbs(value)
  %787 = call float @dx.op.binary.f32(i32 35, float %765, float %770)  ; FMax(a,b)
  %788 = call float @dx.op.binary.f32(i32 35, float %760, float %787)  ; FMax(a,b)
  %789 = call float @dx.op.binary.f32(i32 35, float %775, float %780)  ; FMax(a,b)
  %790 = call float @dx.op.binary.f32(i32 35, float %788, float %789)  ; FMax(a,b)
  %791 = call float @dx.op.binary.f32(i32 36, float %765, float %770)  ; FMin(a,b)
  %792 = call float @dx.op.binary.f32(i32 36, float %760, float %791)  ; FMin(a,b)
  %793 = call float @dx.op.binary.f32(i32 36, float %775, float %780)  ; FMin(a,b)
  %794 = call float @dx.op.binary.f32(i32 36, float %792, float %793)  ; FMin(a,b)
  %795 = fsub fast float %790, %794
  %796 = bitcast float %795 to i32
  %797 = sub i32 2129764351, %796
  %798 = bitcast i32 %797 to float
  %799 = fmul fast float %798, %795
  %800 = fsub fast float 2.000000e+00, %799
  %801 = fmul fast float %798, %786
  %802 = fmul fast float %801, %800
  %803 = call float @dx.op.unary.f32(i32 7, float %802)  ; Saturate(value)
  %804 = fmul fast float %803, 5.000000e-01
  %805 = fsub fast float 1.000000e+00, %804
  %806 = call float @dx.op.binary.f32(i32 36, float %711, float %739)  ; FMin(a,b)
  %807 = call float @dx.op.binary.f32(i32 36, float %697, float %806)  ; FMin(a,b)
  %808 = call float @dx.op.binary.f32(i32 36, float %807, float %753)  ; FMin(a,b)
  %809 = call float @dx.op.binary.f32(i32 36, float %712, float %740)  ; FMin(a,b)
  %810 = call float @dx.op.binary.f32(i32 36, float %698, float %809)  ; FMin(a,b)
  %811 = call float @dx.op.binary.f32(i32 36, float %810, float %754)  ; FMin(a,b)
  %812 = call float @dx.op.binary.f32(i32 36, float %713, float %741)  ; FMin(a,b)
  %813 = call float @dx.op.binary.f32(i32 36, float %699, float %812)  ; FMin(a,b)
  %814 = call float @dx.op.binary.f32(i32 36, float %813, float %755)  ; FMin(a,b)
  %815 = call float @dx.op.binary.f32(i32 35, float %711, float %739)  ; FMax(a,b)
  %816 = call float @dx.op.binary.f32(i32 35, float %697, float %815)  ; FMax(a,b)
  %817 = call float @dx.op.binary.f32(i32 35, float %816, float %753)  ; FMax(a,b)
  %818 = call float @dx.op.binary.f32(i32 35, float %712, float %740)  ; FMax(a,b)
  %819 = call float @dx.op.binary.f32(i32 35, float %698, float %818)  ; FMax(a,b)
  %820 = call float @dx.op.binary.f32(i32 35, float %819, float %754)  ; FMax(a,b)
  %821 = call float @dx.op.binary.f32(i32 35, float %713, float %741)  ; FMax(a,b)
  %822 = call float @dx.op.binary.f32(i32 35, float %699, float %821)  ; FMax(a,b)
  %823 = call float @dx.op.binary.f32(i32 35, float %822, float %755)  ; FMax(a,b)
  %824 = fdiv fast float 2.500000e-01, %817
  %825 = fdiv fast float 2.500000e-01, %820
  %826 = fdiv fast float 2.500000e-01, %823
  %827 = fsub fast float 1.000000e+00, %817
  %828 = fmul fast float %808, 4.000000e+00
  %829 = fadd fast float %828, -4.000000e+00
  %830 = fdiv fast float 1.000000e+00, %829
  %831 = fmul fast float %830, %827
  %832 = fsub fast float 1.000000e+00, %820
  %833 = fmul fast float %811, 4.000000e+00
  %834 = fadd fast float %833, -4.000000e+00
  %835 = fdiv fast float 1.000000e+00, %834
  %836 = fmul fast float %835, %832
  %837 = fsub fast float 1.000000e+00, %823
  %838 = fmul fast float %814, 4.000000e+00
  %839 = fadd fast float %838, -4.000000e+00
  %840 = fdiv fast float 1.000000e+00, %839
  %841 = fmul fast float %840, %837
  %842 = fmul fast float %808, %824
  %843 = fsub fast float -0.000000e+00, %842
  %844 = call float @dx.op.binary.f32(i32 35, float %843, float %831)  ; FMax(a,b)
  %845 = fmul fast float %811, %825
  %846 = fsub fast float -0.000000e+00, %845
  %847 = call float @dx.op.binary.f32(i32 35, float %846, float %836)  ; FMax(a,b)
  %848 = fmul fast float %814, %826
  %849 = fsub fast float -0.000000e+00, %848
  %850 = call float @dx.op.binary.f32(i32 35, float %849, float %841)  ; FMax(a,b)
  %851 = call float @dx.op.binary.f32(i32 35, float %847, float %850)  ; FMax(a,b)
  %852 = call float @dx.op.binary.f32(i32 35, float %844, float %851)  ; FMax(a,b)
  %853 = call float @dx.op.binary.f32(i32 36, float %852, float 0.000000e+00)  ; FMin(a,b)
  %854 = call float @dx.op.binary.f32(i32 35, float -1.875000e-01, float %853)  ; FMax(a,b)
  %855 = bitcast i32 %681 to float
  %856 = fmul fast float %805, %855
  %857 = fmul fast float %856, %854
  %858 = fmul fast float %857, 4.000000e+00
  %859 = fadd fast float %858, 1.000000e+00
  %860 = bitcast float %859 to i32
  %861 = sub i32 2129764351, %860
  %862 = bitcast i32 %861 to float
  %863 = fmul fast float %862, %859
  %864 = fsub fast float 2.000000e+00, %863
  %865 = fmul fast float %864, %862
  %866 = fadd fast float %711, %697
  %867 = fadd fast float %866, %739
  %868 = fadd fast float %867, %753
  %869 = fmul fast float %857, %868
  %870 = fadd fast float %869, %725
  %871 = fmul fast float %865, %870
  %872 = fadd fast float %712, %698
  %873 = fadd fast float %872, %740
  %874 = fadd fast float %873, %754
  %875 = fmul fast float %857, %874
  %876 = fadd fast float %875, %726
  %877 = fmul fast float %865, %876
  %878 = fadd fast float %713, %699
  %879 = fadd fast float %878, %741
  %880 = fadd fast float %879, %755
  %881 = fmul fast float %857, %880
  %882 = fadd fast float %881, %727
  %883 = fmul fast float %865, %882
  %884 = call float @dx.op.binary.f32(i32 35, float %877, float %883)  ; FMax(a,b)
  %885 = call float @dx.op.binary.f32(i32 35, float %871, float %884)  ; FMax(a,b)
  %886 = fsub fast float 1.000000e+00, %885
  %887 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %886)  ; FMax(a,b)
  %888 = fmul fast float %689, %887
  %889 = fdiv fast float %871, %888
  %890 = fdiv fast float %877, %888
  %891 = fdiv fast float %883, %888
  %892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %893 = extractvalue %dx.types.CBufRet.f32 %892, 2
  %894 = fmul fast float %893, %889
  %895 = fmul fast float %893, %890
  %896 = fmul fast float %893, %891
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %17, i32 %460, i32 undef, float %894, float %895, float %896, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

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
!15 = !{i32 4, !16}
!16 = !{i32 64, i32 1, i32 1}

