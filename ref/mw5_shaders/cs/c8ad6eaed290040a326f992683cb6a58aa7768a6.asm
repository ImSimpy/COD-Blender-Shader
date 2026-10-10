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
; shader hash: 4f9044c715e44a931b04126142519351
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
  %33 = add i32 %17, -1
  %34 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %33, i32 %18, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %35 = extractvalue %dx.types.ResRet.f32 %34, 0
  %36 = extractvalue %dx.types.ResRet.f32 %34, 1
  %37 = extractvalue %dx.types.ResRet.f32 %34, 2
  %38 = fmul fast float %29, %35
  %39 = fmul fast float %29, %36
  %40 = fmul fast float %29, %37
  %41 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %17, i32 %18, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %42 = extractvalue %dx.types.ResRet.f32 %41, 0
  %43 = extractvalue %dx.types.ResRet.f32 %41, 1
  %44 = extractvalue %dx.types.ResRet.f32 %41, 2
  %45 = fmul fast float %29, %42
  %46 = fmul fast float %29, %43
  %47 = fmul fast float %29, %44
  %48 = add nsw i32 %17, 1
  %49 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %48, i32 %18, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %50 = extractvalue %dx.types.ResRet.f32 %49, 0
  %51 = extractvalue %dx.types.ResRet.f32 %49, 1
  %52 = extractvalue %dx.types.ResRet.f32 %49, 2
  %53 = fmul fast float %29, %50
  %54 = fmul fast float %29, %51
  %55 = fmul fast float %29, %52
  %56 = add nsw i32 %18, 1
  %57 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %17, i32 %56, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %58 = extractvalue %dx.types.ResRet.f32 %57, 0
  %59 = extractvalue %dx.types.ResRet.f32 %57, 1
  %60 = extractvalue %dx.types.ResRet.f32 %57, 2
  %61 = fmul fast float %29, %58
  %62 = fmul fast float %29, %59
  %63 = fmul fast float %29, %60
  %64 = fadd fast float %25, %23
  %65 = fmul fast float %29, %64
  %66 = fmul fast float %65, 5.000000e-01
  %67 = fadd fast float %66, %31
  %68 = fadd fast float %37, %35
  %69 = fmul fast float %29, %68
  %70 = fmul fast float %69, 5.000000e-01
  %71 = fadd fast float %70, %39
  %72 = fadd fast float %44, %42
  %73 = fmul fast float %29, %72
  %74 = fmul fast float %73, 5.000000e-01
  %75 = fadd fast float %74, %46
  %76 = fadd fast float %52, %50
  %77 = fmul fast float %29, %76
  %78 = fmul fast float %77, 5.000000e-01
  %79 = fadd fast float %78, %54
  %80 = fadd fast float %60, %58
  %81 = fmul fast float %29, %80
  %82 = fmul fast float %81, 5.000000e-01
  %83 = fadd fast float %82, %62
  %84 = fadd fast float %71, %67
  %85 = fadd fast float %84, %79
  %86 = fadd fast float %85, %83
  %87 = fmul fast float %86, 2.500000e-01
  %88 = fsub fast float %87, %75
  %89 = call float @dx.op.unary.f32(i32 6, float %88)  ; FAbs(value)
  %90 = call float @dx.op.binary.f32(i32 35, float %71, float %75)  ; FMax(a,b)
  %91 = call float @dx.op.binary.f32(i32 35, float %67, float %90)  ; FMax(a,b)
  %92 = call float @dx.op.binary.f32(i32 35, float %79, float %83)  ; FMax(a,b)
  %93 = call float @dx.op.binary.f32(i32 35, float %91, float %92)  ; FMax(a,b)
  %94 = call float @dx.op.binary.f32(i32 36, float %71, float %75)  ; FMin(a,b)
  %95 = call float @dx.op.binary.f32(i32 36, float %67, float %94)  ; FMin(a,b)
  %96 = call float @dx.op.binary.f32(i32 36, float %79, float %83)  ; FMin(a,b)
  %97 = call float @dx.op.binary.f32(i32 36, float %95, float %96)  ; FMin(a,b)
  %98 = fsub fast float %93, %97
  %99 = bitcast float %98 to i32
  %100 = sub i32 2129764351, %99
  %101 = bitcast i32 %100 to float
  %102 = fmul fast float %101, %98
  %103 = fsub fast float 2.000000e+00, %102
  %104 = fmul fast float %101, %89
  %105 = fmul fast float %104, %103
  %106 = call float @dx.op.unary.f32(i32 7, float %105)  ; Saturate(value)
  %107 = fmul fast float %106, 5.000000e-01
  %108 = fsub fast float 1.000000e+00, %107
  %109 = call float @dx.op.binary.f32(i32 36, float %38, float %53)  ; FMin(a,b)
  %110 = call float @dx.op.binary.f32(i32 36, float %30, float %109)  ; FMin(a,b)
  %111 = call float @dx.op.binary.f32(i32 36, float %110, float %61)  ; FMin(a,b)
  %112 = call float @dx.op.binary.f32(i32 36, float %39, float %54)  ; FMin(a,b)
  %113 = call float @dx.op.binary.f32(i32 36, float %31, float %112)  ; FMin(a,b)
  %114 = call float @dx.op.binary.f32(i32 36, float %113, float %62)  ; FMin(a,b)
  %115 = call float @dx.op.binary.f32(i32 36, float %40, float %55)  ; FMin(a,b)
  %116 = call float @dx.op.binary.f32(i32 36, float %32, float %115)  ; FMin(a,b)
  %117 = call float @dx.op.binary.f32(i32 36, float %116, float %63)  ; FMin(a,b)
  %118 = call float @dx.op.binary.f32(i32 35, float %38, float %53)  ; FMax(a,b)
  %119 = call float @dx.op.binary.f32(i32 35, float %30, float %118)  ; FMax(a,b)
  %120 = call float @dx.op.binary.f32(i32 35, float %119, float %61)  ; FMax(a,b)
  %121 = call float @dx.op.binary.f32(i32 35, float %39, float %54)  ; FMax(a,b)
  %122 = call float @dx.op.binary.f32(i32 35, float %31, float %121)  ; FMax(a,b)
  %123 = call float @dx.op.binary.f32(i32 35, float %122, float %62)  ; FMax(a,b)
  %124 = call float @dx.op.binary.f32(i32 35, float %40, float %55)  ; FMax(a,b)
  %125 = call float @dx.op.binary.f32(i32 35, float %32, float %124)  ; FMax(a,b)
  %126 = call float @dx.op.binary.f32(i32 35, float %125, float %63)  ; FMax(a,b)
  %127 = fdiv fast float 2.500000e-01, %120
  %128 = fdiv fast float 2.500000e-01, %123
  %129 = fdiv fast float 2.500000e-01, %126
  %130 = fsub fast float 1.000000e+00, %120
  %131 = fmul fast float %111, 4.000000e+00
  %132 = fadd fast float %131, -4.000000e+00
  %133 = fdiv fast float 1.000000e+00, %132
  %134 = fmul fast float %133, %130
  %135 = fsub fast float 1.000000e+00, %123
  %136 = fmul fast float %114, 4.000000e+00
  %137 = fadd fast float %136, -4.000000e+00
  %138 = fdiv fast float 1.000000e+00, %137
  %139 = fmul fast float %138, %135
  %140 = fsub fast float 1.000000e+00, %126
  %141 = fmul fast float %117, 4.000000e+00
  %142 = fadd fast float %141, -4.000000e+00
  %143 = fdiv fast float 1.000000e+00, %142
  %144 = fmul fast float %143, %140
  %145 = fmul fast float %111, %127
  %146 = fsub fast float -0.000000e+00, %145
  %147 = call float @dx.op.binary.f32(i32 35, float %146, float %134)  ; FMax(a,b)
  %148 = fmul fast float %114, %128
  %149 = fsub fast float -0.000000e+00, %148
  %150 = call float @dx.op.binary.f32(i32 35, float %149, float %139)  ; FMax(a,b)
  %151 = fmul fast float %117, %129
  %152 = fsub fast float -0.000000e+00, %151
  %153 = call float @dx.op.binary.f32(i32 35, float %152, float %144)  ; FMax(a,b)
  %154 = call float @dx.op.binary.f32(i32 35, float %150, float %153)  ; FMax(a,b)
  %155 = call float @dx.op.binary.f32(i32 35, float %147, float %154)  ; FMax(a,b)
  %156 = call float @dx.op.binary.f32(i32 36, float %155, float 0.000000e+00)  ; FMin(a,b)
  %157 = call float @dx.op.binary.f32(i32 35, float -1.875000e-01, float %156)  ; FMax(a,b)
  %158 = bitcast i32 %20 to float
  %159 = fmul fast float %108, %158
  %160 = fmul fast float %159, %157
  %161 = fmul fast float %160, 4.000000e+00
  %162 = fadd fast float %161, 1.000000e+00
  %163 = bitcast float %162 to i32
  %164 = sub i32 2129764351, %163
  %165 = bitcast i32 %164 to float
  %166 = fmul fast float %165, %162
  %167 = fsub fast float 2.000000e+00, %166
  %168 = fmul fast float %167, %165
  %169 = fadd fast float %35, %23
  %170 = fadd fast float %169, %50
  %171 = fadd fast float %170, %58
  %172 = fmul fast float %29, %171
  %173 = fmul fast float %160, %172
  %174 = fadd fast float %173, %45
  %175 = fmul fast float %168, %174
  %176 = fadd fast float %36, %24
  %177 = fadd fast float %176, %51
  %178 = fadd fast float %177, %59
  %179 = fmul fast float %29, %178
  %180 = fmul fast float %160, %179
  %181 = fadd fast float %180, %46
  %182 = fmul fast float %168, %181
  %183 = fadd fast float %37, %25
  %184 = fadd fast float %183, %52
  %185 = fadd fast float %184, %60
  %186 = fmul fast float %29, %185
  %187 = fmul fast float %160, %186
  %188 = fadd fast float %187, %47
  %189 = fmul fast float %168, %188
  %190 = fdiv fast float %175, %29
  %191 = fdiv fast float %182, %29
  %192 = fdiv fast float %189, %29
  %193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %194 = extractvalue %dx.types.CBufRet.f32 %193, 2
  %195 = fmul fast float %194, %190
  %196 = fmul fast float %194, %191
  %197 = fmul fast float %194, %192
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %17, i32 %18, i32 undef, float %195, float %196, float %197, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %198 = or i32 %17, 8
  %199 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %200 = extractvalue %dx.types.CBufRet.i32 %199, 0
  %201 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %198, i32 %21, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %202 = extractvalue %dx.types.ResRet.f32 %201, 0
  %203 = extractvalue %dx.types.ResRet.f32 %201, 1
  %204 = extractvalue %dx.types.ResRet.f32 %201, 2
  %205 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 0, i32 0, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %206 = extractvalue %dx.types.ResRet.f32 %205, 0
  %207 = fcmp fast oeq float %206, 0.000000e+00
  %208 = select i1 %207, float 1.000000e+00, float %206
  %209 = fmul fast float %208, %202
  %210 = fmul fast float %208, %203
  %211 = fmul fast float %208, %204
  %212 = add i32 %198, -1
  %213 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %212, i32 %18, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %214 = extractvalue %dx.types.ResRet.f32 %213, 0
  %215 = extractvalue %dx.types.ResRet.f32 %213, 1
  %216 = extractvalue %dx.types.ResRet.f32 %213, 2
  %217 = fmul fast float %208, %214
  %218 = fmul fast float %208, %215
  %219 = fmul fast float %208, %216
  %220 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %198, i32 %18, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %221 = extractvalue %dx.types.ResRet.f32 %220, 0
  %222 = extractvalue %dx.types.ResRet.f32 %220, 1
  %223 = extractvalue %dx.types.ResRet.f32 %220, 2
  %224 = fmul fast float %208, %221
  %225 = fmul fast float %208, %222
  %226 = fmul fast float %208, %223
  %227 = add i32 %198, 1
  %228 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %227, i32 %18, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %229 = extractvalue %dx.types.ResRet.f32 %228, 0
  %230 = extractvalue %dx.types.ResRet.f32 %228, 1
  %231 = extractvalue %dx.types.ResRet.f32 %228, 2
  %232 = fmul fast float %208, %229
  %233 = fmul fast float %208, %230
  %234 = fmul fast float %208, %231
  %235 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %198, i32 %56, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %236 = extractvalue %dx.types.ResRet.f32 %235, 0
  %237 = extractvalue %dx.types.ResRet.f32 %235, 1
  %238 = extractvalue %dx.types.ResRet.f32 %235, 2
  %239 = fmul fast float %208, %236
  %240 = fmul fast float %208, %237
  %241 = fmul fast float %208, %238
  %242 = fadd fast float %204, %202
  %243 = fmul fast float %208, %242
  %244 = fmul fast float %243, 5.000000e-01
  %245 = fadd fast float %244, %210
  %246 = fadd fast float %216, %214
  %247 = fmul fast float %208, %246
  %248 = fmul fast float %247, 5.000000e-01
  %249 = fadd fast float %248, %218
  %250 = fadd fast float %223, %221
  %251 = fmul fast float %208, %250
  %252 = fmul fast float %251, 5.000000e-01
  %253 = fadd fast float %252, %225
  %254 = fadd fast float %231, %229
  %255 = fmul fast float %208, %254
  %256 = fmul fast float %255, 5.000000e-01
  %257 = fadd fast float %256, %233
  %258 = fadd fast float %238, %236
  %259 = fmul fast float %208, %258
  %260 = fmul fast float %259, 5.000000e-01
  %261 = fadd fast float %260, %240
  %262 = fadd fast float %249, %245
  %263 = fadd fast float %262, %257
  %264 = fadd fast float %263, %261
  %265 = fmul fast float %264, 2.500000e-01
  %266 = fsub fast float %265, %253
  %267 = call float @dx.op.unary.f32(i32 6, float %266)  ; FAbs(value)
  %268 = call float @dx.op.binary.f32(i32 35, float %249, float %253)  ; FMax(a,b)
  %269 = call float @dx.op.binary.f32(i32 35, float %245, float %268)  ; FMax(a,b)
  %270 = call float @dx.op.binary.f32(i32 35, float %257, float %261)  ; FMax(a,b)
  %271 = call float @dx.op.binary.f32(i32 35, float %269, float %270)  ; FMax(a,b)
  %272 = call float @dx.op.binary.f32(i32 36, float %249, float %253)  ; FMin(a,b)
  %273 = call float @dx.op.binary.f32(i32 36, float %245, float %272)  ; FMin(a,b)
  %274 = call float @dx.op.binary.f32(i32 36, float %257, float %261)  ; FMin(a,b)
  %275 = call float @dx.op.binary.f32(i32 36, float %273, float %274)  ; FMin(a,b)
  %276 = fsub fast float %271, %275
  %277 = bitcast float %276 to i32
  %278 = sub i32 2129764351, %277
  %279 = bitcast i32 %278 to float
  %280 = fmul fast float %279, %276
  %281 = fsub fast float 2.000000e+00, %280
  %282 = fmul fast float %279, %267
  %283 = fmul fast float %282, %281
  %284 = call float @dx.op.unary.f32(i32 7, float %283)  ; Saturate(value)
  %285 = fmul fast float %284, 5.000000e-01
  %286 = fsub fast float 1.000000e+00, %285
  %287 = call float @dx.op.binary.f32(i32 36, float %217, float %232)  ; FMin(a,b)
  %288 = call float @dx.op.binary.f32(i32 36, float %209, float %287)  ; FMin(a,b)
  %289 = call float @dx.op.binary.f32(i32 36, float %288, float %239)  ; FMin(a,b)
  %290 = call float @dx.op.binary.f32(i32 36, float %218, float %233)  ; FMin(a,b)
  %291 = call float @dx.op.binary.f32(i32 36, float %210, float %290)  ; FMin(a,b)
  %292 = call float @dx.op.binary.f32(i32 36, float %291, float %240)  ; FMin(a,b)
  %293 = call float @dx.op.binary.f32(i32 36, float %219, float %234)  ; FMin(a,b)
  %294 = call float @dx.op.binary.f32(i32 36, float %211, float %293)  ; FMin(a,b)
  %295 = call float @dx.op.binary.f32(i32 36, float %294, float %241)  ; FMin(a,b)
  %296 = call float @dx.op.binary.f32(i32 35, float %217, float %232)  ; FMax(a,b)
  %297 = call float @dx.op.binary.f32(i32 35, float %209, float %296)  ; FMax(a,b)
  %298 = call float @dx.op.binary.f32(i32 35, float %297, float %239)  ; FMax(a,b)
  %299 = call float @dx.op.binary.f32(i32 35, float %218, float %233)  ; FMax(a,b)
  %300 = call float @dx.op.binary.f32(i32 35, float %210, float %299)  ; FMax(a,b)
  %301 = call float @dx.op.binary.f32(i32 35, float %300, float %240)  ; FMax(a,b)
  %302 = call float @dx.op.binary.f32(i32 35, float %219, float %234)  ; FMax(a,b)
  %303 = call float @dx.op.binary.f32(i32 35, float %211, float %302)  ; FMax(a,b)
  %304 = call float @dx.op.binary.f32(i32 35, float %303, float %241)  ; FMax(a,b)
  %305 = fdiv fast float 2.500000e-01, %298
  %306 = fdiv fast float 2.500000e-01, %301
  %307 = fdiv fast float 2.500000e-01, %304
  %308 = fsub fast float 1.000000e+00, %298
  %309 = fmul fast float %289, 4.000000e+00
  %310 = fadd fast float %309, -4.000000e+00
  %311 = fdiv fast float 1.000000e+00, %310
  %312 = fmul fast float %311, %308
  %313 = fsub fast float 1.000000e+00, %301
  %314 = fmul fast float %292, 4.000000e+00
  %315 = fadd fast float %314, -4.000000e+00
  %316 = fdiv fast float 1.000000e+00, %315
  %317 = fmul fast float %316, %313
  %318 = fsub fast float 1.000000e+00, %304
  %319 = fmul fast float %295, 4.000000e+00
  %320 = fadd fast float %319, -4.000000e+00
  %321 = fdiv fast float 1.000000e+00, %320
  %322 = fmul fast float %321, %318
  %323 = fmul fast float %289, %305
  %324 = fsub fast float -0.000000e+00, %323
  %325 = call float @dx.op.binary.f32(i32 35, float %324, float %312)  ; FMax(a,b)
  %326 = fmul fast float %292, %306
  %327 = fsub fast float -0.000000e+00, %326
  %328 = call float @dx.op.binary.f32(i32 35, float %327, float %317)  ; FMax(a,b)
  %329 = fmul fast float %295, %307
  %330 = fsub fast float -0.000000e+00, %329
  %331 = call float @dx.op.binary.f32(i32 35, float %330, float %322)  ; FMax(a,b)
  %332 = call float @dx.op.binary.f32(i32 35, float %328, float %331)  ; FMax(a,b)
  %333 = call float @dx.op.binary.f32(i32 35, float %325, float %332)  ; FMax(a,b)
  %334 = call float @dx.op.binary.f32(i32 36, float %333, float 0.000000e+00)  ; FMin(a,b)
  %335 = call float @dx.op.binary.f32(i32 35, float -1.875000e-01, float %334)  ; FMax(a,b)
  %336 = bitcast i32 %200 to float
  %337 = fmul fast float %286, %336
  %338 = fmul fast float %337, %335
  %339 = fmul fast float %338, 4.000000e+00
  %340 = fadd fast float %339, 1.000000e+00
  %341 = bitcast float %340 to i32
  %342 = sub i32 2129764351, %341
  %343 = bitcast i32 %342 to float
  %344 = fmul fast float %343, %340
  %345 = fsub fast float 2.000000e+00, %344
  %346 = fmul fast float %345, %343
  %347 = fadd fast float %214, %202
  %348 = fadd fast float %347, %229
  %349 = fadd fast float %348, %236
  %350 = fmul fast float %208, %349
  %351 = fmul fast float %338, %350
  %352 = fadd fast float %351, %224
  %353 = fmul fast float %346, %352
  %354 = fadd fast float %215, %203
  %355 = fadd fast float %354, %230
  %356 = fadd fast float %355, %237
  %357 = fmul fast float %208, %356
  %358 = fmul fast float %338, %357
  %359 = fadd fast float %358, %225
  %360 = fmul fast float %346, %359
  %361 = fadd fast float %216, %204
  %362 = fadd fast float %361, %231
  %363 = fadd fast float %362, %238
  %364 = fmul fast float %208, %363
  %365 = fmul fast float %338, %364
  %366 = fadd fast float %365, %226
  %367 = fmul fast float %346, %366
  %368 = fdiv fast float %353, %208
  %369 = fdiv fast float %360, %208
  %370 = fdiv fast float %367, %208
  %371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %372 = extractvalue %dx.types.CBufRet.f32 %371, 2
  %373 = fmul fast float %372, %368
  %374 = fmul fast float %372, %369
  %375 = fmul fast float %372, %370
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %198, i32 %18, i32 undef, float %373, float %374, float %375, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %376 = or i32 %18, 8
  %377 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %378 = extractvalue %dx.types.CBufRet.i32 %377, 0
  %379 = add i32 %376, -1
  %380 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %198, i32 %379, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %381 = extractvalue %dx.types.ResRet.f32 %380, 0
  %382 = extractvalue %dx.types.ResRet.f32 %380, 1
  %383 = extractvalue %dx.types.ResRet.f32 %380, 2
  %384 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 0, i32 0, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %385 = extractvalue %dx.types.ResRet.f32 %384, 0
  %386 = fcmp fast oeq float %385, 0.000000e+00
  %387 = select i1 %386, float 1.000000e+00, float %385
  %388 = fmul fast float %387, %381
  %389 = fmul fast float %387, %382
  %390 = fmul fast float %387, %383
  %391 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %212, i32 %376, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %392 = extractvalue %dx.types.ResRet.f32 %391, 0
  %393 = extractvalue %dx.types.ResRet.f32 %391, 1
  %394 = extractvalue %dx.types.ResRet.f32 %391, 2
  %395 = fmul fast float %387, %392
  %396 = fmul fast float %387, %393
  %397 = fmul fast float %387, %394
  %398 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %198, i32 %376, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %399 = extractvalue %dx.types.ResRet.f32 %398, 0
  %400 = extractvalue %dx.types.ResRet.f32 %398, 1
  %401 = extractvalue %dx.types.ResRet.f32 %398, 2
  %402 = fmul fast float %387, %399
  %403 = fmul fast float %387, %400
  %404 = fmul fast float %387, %401
  %405 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %227, i32 %376, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %406 = extractvalue %dx.types.ResRet.f32 %405, 0
  %407 = extractvalue %dx.types.ResRet.f32 %405, 1
  %408 = extractvalue %dx.types.ResRet.f32 %405, 2
  %409 = fmul fast float %387, %406
  %410 = fmul fast float %387, %407
  %411 = fmul fast float %387, %408
  %412 = add i32 %376, 1
  %413 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %198, i32 %412, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %414 = extractvalue %dx.types.ResRet.f32 %413, 0
  %415 = extractvalue %dx.types.ResRet.f32 %413, 1
  %416 = extractvalue %dx.types.ResRet.f32 %413, 2
  %417 = fmul fast float %387, %414
  %418 = fmul fast float %387, %415
  %419 = fmul fast float %387, %416
  %420 = fadd fast float %383, %381
  %421 = fmul fast float %387, %420
  %422 = fmul fast float %421, 5.000000e-01
  %423 = fadd fast float %422, %389
  %424 = fadd fast float %394, %392
  %425 = fmul fast float %387, %424
  %426 = fmul fast float %425, 5.000000e-01
  %427 = fadd fast float %426, %396
  %428 = fadd fast float %401, %399
  %429 = fmul fast float %387, %428
  %430 = fmul fast float %429, 5.000000e-01
  %431 = fadd fast float %430, %403
  %432 = fadd fast float %408, %406
  %433 = fmul fast float %387, %432
  %434 = fmul fast float %433, 5.000000e-01
  %435 = fadd fast float %434, %410
  %436 = fadd fast float %416, %414
  %437 = fmul fast float %387, %436
  %438 = fmul fast float %437, 5.000000e-01
  %439 = fadd fast float %438, %418
  %440 = fadd fast float %427, %423
  %441 = fadd fast float %440, %435
  %442 = fadd fast float %441, %439
  %443 = fmul fast float %442, 2.500000e-01
  %444 = fsub fast float %443, %431
  %445 = call float @dx.op.unary.f32(i32 6, float %444)  ; FAbs(value)
  %446 = call float @dx.op.binary.f32(i32 35, float %427, float %431)  ; FMax(a,b)
  %447 = call float @dx.op.binary.f32(i32 35, float %423, float %446)  ; FMax(a,b)
  %448 = call float @dx.op.binary.f32(i32 35, float %435, float %439)  ; FMax(a,b)
  %449 = call float @dx.op.binary.f32(i32 35, float %447, float %448)  ; FMax(a,b)
  %450 = call float @dx.op.binary.f32(i32 36, float %427, float %431)  ; FMin(a,b)
  %451 = call float @dx.op.binary.f32(i32 36, float %423, float %450)  ; FMin(a,b)
  %452 = call float @dx.op.binary.f32(i32 36, float %435, float %439)  ; FMin(a,b)
  %453 = call float @dx.op.binary.f32(i32 36, float %451, float %452)  ; FMin(a,b)
  %454 = fsub fast float %449, %453
  %455 = bitcast float %454 to i32
  %456 = sub i32 2129764351, %455
  %457 = bitcast i32 %456 to float
  %458 = fmul fast float %457, %454
  %459 = fsub fast float 2.000000e+00, %458
  %460 = fmul fast float %457, %445
  %461 = fmul fast float %460, %459
  %462 = call float @dx.op.unary.f32(i32 7, float %461)  ; Saturate(value)
  %463 = fmul fast float %462, 5.000000e-01
  %464 = fsub fast float 1.000000e+00, %463
  %465 = call float @dx.op.binary.f32(i32 36, float %395, float %409)  ; FMin(a,b)
  %466 = call float @dx.op.binary.f32(i32 36, float %388, float %465)  ; FMin(a,b)
  %467 = call float @dx.op.binary.f32(i32 36, float %466, float %417)  ; FMin(a,b)
  %468 = call float @dx.op.binary.f32(i32 36, float %396, float %410)  ; FMin(a,b)
  %469 = call float @dx.op.binary.f32(i32 36, float %389, float %468)  ; FMin(a,b)
  %470 = call float @dx.op.binary.f32(i32 36, float %469, float %418)  ; FMin(a,b)
  %471 = call float @dx.op.binary.f32(i32 36, float %397, float %411)  ; FMin(a,b)
  %472 = call float @dx.op.binary.f32(i32 36, float %390, float %471)  ; FMin(a,b)
  %473 = call float @dx.op.binary.f32(i32 36, float %472, float %419)  ; FMin(a,b)
  %474 = call float @dx.op.binary.f32(i32 35, float %395, float %409)  ; FMax(a,b)
  %475 = call float @dx.op.binary.f32(i32 35, float %388, float %474)  ; FMax(a,b)
  %476 = call float @dx.op.binary.f32(i32 35, float %475, float %417)  ; FMax(a,b)
  %477 = call float @dx.op.binary.f32(i32 35, float %396, float %410)  ; FMax(a,b)
  %478 = call float @dx.op.binary.f32(i32 35, float %389, float %477)  ; FMax(a,b)
  %479 = call float @dx.op.binary.f32(i32 35, float %478, float %418)  ; FMax(a,b)
  %480 = call float @dx.op.binary.f32(i32 35, float %397, float %411)  ; FMax(a,b)
  %481 = call float @dx.op.binary.f32(i32 35, float %390, float %480)  ; FMax(a,b)
  %482 = call float @dx.op.binary.f32(i32 35, float %481, float %419)  ; FMax(a,b)
  %483 = fdiv fast float 2.500000e-01, %476
  %484 = fdiv fast float 2.500000e-01, %479
  %485 = fdiv fast float 2.500000e-01, %482
  %486 = fsub fast float 1.000000e+00, %476
  %487 = fmul fast float %467, 4.000000e+00
  %488 = fadd fast float %487, -4.000000e+00
  %489 = fdiv fast float 1.000000e+00, %488
  %490 = fmul fast float %489, %486
  %491 = fsub fast float 1.000000e+00, %479
  %492 = fmul fast float %470, 4.000000e+00
  %493 = fadd fast float %492, -4.000000e+00
  %494 = fdiv fast float 1.000000e+00, %493
  %495 = fmul fast float %494, %491
  %496 = fsub fast float 1.000000e+00, %482
  %497 = fmul fast float %473, 4.000000e+00
  %498 = fadd fast float %497, -4.000000e+00
  %499 = fdiv fast float 1.000000e+00, %498
  %500 = fmul fast float %499, %496
  %501 = fmul fast float %467, %483
  %502 = fsub fast float -0.000000e+00, %501
  %503 = call float @dx.op.binary.f32(i32 35, float %502, float %490)  ; FMax(a,b)
  %504 = fmul fast float %470, %484
  %505 = fsub fast float -0.000000e+00, %504
  %506 = call float @dx.op.binary.f32(i32 35, float %505, float %495)  ; FMax(a,b)
  %507 = fmul fast float %473, %485
  %508 = fsub fast float -0.000000e+00, %507
  %509 = call float @dx.op.binary.f32(i32 35, float %508, float %500)  ; FMax(a,b)
  %510 = call float @dx.op.binary.f32(i32 35, float %506, float %509)  ; FMax(a,b)
  %511 = call float @dx.op.binary.f32(i32 35, float %503, float %510)  ; FMax(a,b)
  %512 = call float @dx.op.binary.f32(i32 36, float %511, float 0.000000e+00)  ; FMin(a,b)
  %513 = call float @dx.op.binary.f32(i32 35, float -1.875000e-01, float %512)  ; FMax(a,b)
  %514 = bitcast i32 %378 to float
  %515 = fmul fast float %464, %514
  %516 = fmul fast float %515, %513
  %517 = fmul fast float %516, 4.000000e+00
  %518 = fadd fast float %517, 1.000000e+00
  %519 = bitcast float %518 to i32
  %520 = sub i32 2129764351, %519
  %521 = bitcast i32 %520 to float
  %522 = fmul fast float %521, %518
  %523 = fsub fast float 2.000000e+00, %522
  %524 = fmul fast float %523, %521
  %525 = fadd fast float %392, %381
  %526 = fadd fast float %525, %406
  %527 = fadd fast float %526, %414
  %528 = fmul fast float %387, %527
  %529 = fmul fast float %516, %528
  %530 = fadd fast float %529, %402
  %531 = fmul fast float %524, %530
  %532 = fadd fast float %393, %382
  %533 = fadd fast float %532, %407
  %534 = fadd fast float %533, %415
  %535 = fmul fast float %387, %534
  %536 = fmul fast float %516, %535
  %537 = fadd fast float %536, %403
  %538 = fmul fast float %524, %537
  %539 = fadd fast float %394, %383
  %540 = fadd fast float %539, %408
  %541 = fadd fast float %540, %416
  %542 = fmul fast float %387, %541
  %543 = fmul fast float %516, %542
  %544 = fadd fast float %543, %404
  %545 = fmul fast float %524, %544
  %546 = fdiv fast float %531, %387
  %547 = fdiv fast float %538, %387
  %548 = fdiv fast float %545, %387
  %549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %550 = extractvalue %dx.types.CBufRet.f32 %549, 2
  %551 = fmul fast float %550, %546
  %552 = fmul fast float %550, %547
  %553 = fmul fast float %550, %548
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %198, i32 %376, i32 undef, float %551, float %552, float %553, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %554 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %555 = extractvalue %dx.types.CBufRet.i32 %554, 0
  %556 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %17, i32 %379, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %557 = extractvalue %dx.types.ResRet.f32 %556, 0
  %558 = extractvalue %dx.types.ResRet.f32 %556, 1
  %559 = extractvalue %dx.types.ResRet.f32 %556, 2
  %560 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 0, i32 0, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %561 = extractvalue %dx.types.ResRet.f32 %560, 0
  %562 = fcmp fast oeq float %561, 0.000000e+00
  %563 = select i1 %562, float 1.000000e+00, float %561
  %564 = fmul fast float %563, %557
  %565 = fmul fast float %563, %558
  %566 = fmul fast float %563, %559
  %567 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %33, i32 %376, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %568 = extractvalue %dx.types.ResRet.f32 %567, 0
  %569 = extractvalue %dx.types.ResRet.f32 %567, 1
  %570 = extractvalue %dx.types.ResRet.f32 %567, 2
  %571 = fmul fast float %563, %568
  %572 = fmul fast float %563, %569
  %573 = fmul fast float %563, %570
  %574 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %17, i32 %376, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %575 = extractvalue %dx.types.ResRet.f32 %574, 0
  %576 = extractvalue %dx.types.ResRet.f32 %574, 1
  %577 = extractvalue %dx.types.ResRet.f32 %574, 2
  %578 = fmul fast float %563, %575
  %579 = fmul fast float %563, %576
  %580 = fmul fast float %563, %577
  %581 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %48, i32 %376, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %582 = extractvalue %dx.types.ResRet.f32 %581, 0
  %583 = extractvalue %dx.types.ResRet.f32 %581, 1
  %584 = extractvalue %dx.types.ResRet.f32 %581, 2
  %585 = fmul fast float %563, %582
  %586 = fmul fast float %563, %583
  %587 = fmul fast float %563, %584
  %588 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %17, i32 %412, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %589 = extractvalue %dx.types.ResRet.f32 %588, 0
  %590 = extractvalue %dx.types.ResRet.f32 %588, 1
  %591 = extractvalue %dx.types.ResRet.f32 %588, 2
  %592 = fmul fast float %563, %589
  %593 = fmul fast float %563, %590
  %594 = fmul fast float %563, %591
  %595 = fadd fast float %559, %557
  %596 = fmul fast float %563, %595
  %597 = fmul fast float %596, 5.000000e-01
  %598 = fadd fast float %597, %565
  %599 = fadd fast float %570, %568
  %600 = fmul fast float %563, %599
  %601 = fmul fast float %600, 5.000000e-01
  %602 = fadd fast float %601, %572
  %603 = fadd fast float %577, %575
  %604 = fmul fast float %563, %603
  %605 = fmul fast float %604, 5.000000e-01
  %606 = fadd fast float %605, %579
  %607 = fadd fast float %584, %582
  %608 = fmul fast float %563, %607
  %609 = fmul fast float %608, 5.000000e-01
  %610 = fadd fast float %609, %586
  %611 = fadd fast float %591, %589
  %612 = fmul fast float %563, %611
  %613 = fmul fast float %612, 5.000000e-01
  %614 = fadd fast float %613, %593
  %615 = fadd fast float %602, %598
  %616 = fadd fast float %615, %610
  %617 = fadd fast float %616, %614
  %618 = fmul fast float %617, 2.500000e-01
  %619 = fsub fast float %618, %606
  %620 = call float @dx.op.unary.f32(i32 6, float %619)  ; FAbs(value)
  %621 = call float @dx.op.binary.f32(i32 35, float %602, float %606)  ; FMax(a,b)
  %622 = call float @dx.op.binary.f32(i32 35, float %598, float %621)  ; FMax(a,b)
  %623 = call float @dx.op.binary.f32(i32 35, float %610, float %614)  ; FMax(a,b)
  %624 = call float @dx.op.binary.f32(i32 35, float %622, float %623)  ; FMax(a,b)
  %625 = call float @dx.op.binary.f32(i32 36, float %602, float %606)  ; FMin(a,b)
  %626 = call float @dx.op.binary.f32(i32 36, float %598, float %625)  ; FMin(a,b)
  %627 = call float @dx.op.binary.f32(i32 36, float %610, float %614)  ; FMin(a,b)
  %628 = call float @dx.op.binary.f32(i32 36, float %626, float %627)  ; FMin(a,b)
  %629 = fsub fast float %624, %628
  %630 = bitcast float %629 to i32
  %631 = sub i32 2129764351, %630
  %632 = bitcast i32 %631 to float
  %633 = fmul fast float %632, %629
  %634 = fsub fast float 2.000000e+00, %633
  %635 = fmul fast float %632, %620
  %636 = fmul fast float %635, %634
  %637 = call float @dx.op.unary.f32(i32 7, float %636)  ; Saturate(value)
  %638 = fmul fast float %637, 5.000000e-01
  %639 = fsub fast float 1.000000e+00, %638
  %640 = call float @dx.op.binary.f32(i32 36, float %571, float %585)  ; FMin(a,b)
  %641 = call float @dx.op.binary.f32(i32 36, float %564, float %640)  ; FMin(a,b)
  %642 = call float @dx.op.binary.f32(i32 36, float %641, float %592)  ; FMin(a,b)
  %643 = call float @dx.op.binary.f32(i32 36, float %572, float %586)  ; FMin(a,b)
  %644 = call float @dx.op.binary.f32(i32 36, float %565, float %643)  ; FMin(a,b)
  %645 = call float @dx.op.binary.f32(i32 36, float %644, float %593)  ; FMin(a,b)
  %646 = call float @dx.op.binary.f32(i32 36, float %573, float %587)  ; FMin(a,b)
  %647 = call float @dx.op.binary.f32(i32 36, float %566, float %646)  ; FMin(a,b)
  %648 = call float @dx.op.binary.f32(i32 36, float %647, float %594)  ; FMin(a,b)
  %649 = call float @dx.op.binary.f32(i32 35, float %571, float %585)  ; FMax(a,b)
  %650 = call float @dx.op.binary.f32(i32 35, float %564, float %649)  ; FMax(a,b)
  %651 = call float @dx.op.binary.f32(i32 35, float %650, float %592)  ; FMax(a,b)
  %652 = call float @dx.op.binary.f32(i32 35, float %572, float %586)  ; FMax(a,b)
  %653 = call float @dx.op.binary.f32(i32 35, float %565, float %652)  ; FMax(a,b)
  %654 = call float @dx.op.binary.f32(i32 35, float %653, float %593)  ; FMax(a,b)
  %655 = call float @dx.op.binary.f32(i32 35, float %573, float %587)  ; FMax(a,b)
  %656 = call float @dx.op.binary.f32(i32 35, float %566, float %655)  ; FMax(a,b)
  %657 = call float @dx.op.binary.f32(i32 35, float %656, float %594)  ; FMax(a,b)
  %658 = fdiv fast float 2.500000e-01, %651
  %659 = fdiv fast float 2.500000e-01, %654
  %660 = fdiv fast float 2.500000e-01, %657
  %661 = fsub fast float 1.000000e+00, %651
  %662 = fmul fast float %642, 4.000000e+00
  %663 = fadd fast float %662, -4.000000e+00
  %664 = fdiv fast float 1.000000e+00, %663
  %665 = fmul fast float %664, %661
  %666 = fsub fast float 1.000000e+00, %654
  %667 = fmul fast float %645, 4.000000e+00
  %668 = fadd fast float %667, -4.000000e+00
  %669 = fdiv fast float 1.000000e+00, %668
  %670 = fmul fast float %669, %666
  %671 = fsub fast float 1.000000e+00, %657
  %672 = fmul fast float %648, 4.000000e+00
  %673 = fadd fast float %672, -4.000000e+00
  %674 = fdiv fast float 1.000000e+00, %673
  %675 = fmul fast float %674, %671
  %676 = fmul fast float %642, %658
  %677 = fsub fast float -0.000000e+00, %676
  %678 = call float @dx.op.binary.f32(i32 35, float %677, float %665)  ; FMax(a,b)
  %679 = fmul fast float %645, %659
  %680 = fsub fast float -0.000000e+00, %679
  %681 = call float @dx.op.binary.f32(i32 35, float %680, float %670)  ; FMax(a,b)
  %682 = fmul fast float %648, %660
  %683 = fsub fast float -0.000000e+00, %682
  %684 = call float @dx.op.binary.f32(i32 35, float %683, float %675)  ; FMax(a,b)
  %685 = call float @dx.op.binary.f32(i32 35, float %681, float %684)  ; FMax(a,b)
  %686 = call float @dx.op.binary.f32(i32 35, float %678, float %685)  ; FMax(a,b)
  %687 = call float @dx.op.binary.f32(i32 36, float %686, float 0.000000e+00)  ; FMin(a,b)
  %688 = call float @dx.op.binary.f32(i32 35, float -1.875000e-01, float %687)  ; FMax(a,b)
  %689 = bitcast i32 %555 to float
  %690 = fmul fast float %639, %689
  %691 = fmul fast float %690, %688
  %692 = fmul fast float %691, 4.000000e+00
  %693 = fadd fast float %692, 1.000000e+00
  %694 = bitcast float %693 to i32
  %695 = sub i32 2129764351, %694
  %696 = bitcast i32 %695 to float
  %697 = fmul fast float %696, %693
  %698 = fsub fast float 2.000000e+00, %697
  %699 = fmul fast float %698, %696
  %700 = fadd fast float %568, %557
  %701 = fadd fast float %700, %582
  %702 = fadd fast float %701, %589
  %703 = fmul fast float %563, %702
  %704 = fmul fast float %691, %703
  %705 = fadd fast float %704, %578
  %706 = fmul fast float %699, %705
  %707 = fadd fast float %569, %558
  %708 = fadd fast float %707, %583
  %709 = fadd fast float %708, %590
  %710 = fmul fast float %563, %709
  %711 = fmul fast float %691, %710
  %712 = fadd fast float %711, %579
  %713 = fmul fast float %699, %712
  %714 = fadd fast float %570, %559
  %715 = fadd fast float %714, %584
  %716 = fadd fast float %715, %591
  %717 = fmul fast float %563, %716
  %718 = fmul fast float %691, %717
  %719 = fadd fast float %718, %580
  %720 = fmul fast float %699, %719
  %721 = fdiv fast float %706, %563
  %722 = fdiv fast float %713, %563
  %723 = fdiv fast float %720, %563
  %724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %725 = extractvalue %dx.types.CBufRet.f32 %724, 2
  %726 = fmul fast float %725, %721
  %727 = fmul fast float %725, %722
  %728 = fmul fast float %725, %723
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %17, i32 %376, i32 undef, float %726, float %727, float %728, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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

