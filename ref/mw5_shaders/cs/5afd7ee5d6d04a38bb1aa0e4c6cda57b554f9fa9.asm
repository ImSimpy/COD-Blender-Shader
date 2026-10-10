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
; shader hash: a93e5c021cd209cd20401da262c771c3
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
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
; cbFSR2                            cbuffer      NA          NA     CB0            cb0     1
; r_motion_vectors                  texture     f32          2d      T0             t0     1
; r_depth                           texture     f32          2d      T1             t1     1
; r_reactive_mask                   texture     f32          2d      T2             t2     1
; r_transparency_and_composition_mask   texture     f32          2d      T3             t3     1
; r_prepared_input_color            texture     f32          2d      T4             t4     1
; rw_reconstructed_previous_nearest_depth       UAV     u32          2d      U0             u0     1
; rw_dilated_motion_vectors             UAV     f32          2d      U1             u1     1
; rw_dilatedDepth                       UAV     f32          2d      U2             u2     1
; rw_dilated_reactive_masks             UAVunorm_f32          2d      U3             u3     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:8-i16:16-i32:32-i64:64-f16:16-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.RWTexture2D<unsigned int>" = type { i32 }
%"class.RWTexture2D<vector<float, 2> >" = type { <2 x float> }
%"class.RWTexture2D<float>" = type { float }
%cbFSR2 = type { <2 x i32>, <2 x i32>, <2 x i32>, i32, i32, <2 x float>, <2 x float>, <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, float, float, <2 x float>, float, float, float, float, float, float }

define void @CS() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %12 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %13 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %14 = extractvalue %dx.types.CBufRet.i32 %13, 0
  %15 = extractvalue %dx.types.CBufRet.i32 %13, 1
  %16 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %8, i32 0, i32 %11, i32 %12, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %17 = extractvalue %dx.types.ResRet.f32 %16, 0
  %18 = add i32 %11, 1
  %19 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %8, i32 0, i32 %18, i32 %12, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %20 = extractvalue %dx.types.ResRet.f32 %19, 0
  %21 = add i32 %12, 1
  %22 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %8, i32 0, i32 %11, i32 %21, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %23 = extractvalue %dx.types.ResRet.f32 %22, 0
  %24 = add i32 %12, -1
  %25 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %8, i32 0, i32 %11, i32 %24, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %26 = extractvalue %dx.types.ResRet.f32 %25, 0
  %27 = add i32 %11, -1
  %28 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %8, i32 0, i32 %27, i32 %12, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %29 = extractvalue %dx.types.ResRet.f32 %28, 0
  %30 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %8, i32 0, i32 %27, i32 %21, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %31 = extractvalue %dx.types.ResRet.f32 %30, 0
  %32 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %8, i32 0, i32 %18, i32 %21, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %33 = extractvalue %dx.types.ResRet.f32 %32, 0
  %34 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %8, i32 0, i32 %27, i32 %24, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %35 = extractvalue %dx.types.ResRet.f32 %34, 0
  %36 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %8, i32 0, i32 %18, i32 %24, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %37 = extractvalue %dx.types.ResRet.f32 %36, 0
  %38 = or i32 %18, %12
  %39 = icmp sgt i32 %38, -1
  %40 = icmp slt i32 %18, %14
  %41 = icmp slt i32 %12, %15
  %42 = and i1 %40, %41
  %43 = and i1 %39, %42
  %44 = fcmp fast ogt float %20, %17
  %45 = and i1 %43, %44
  %46 = select i1 %45, float %20, float %17
  %47 = select i1 %45, i32 %18, i32 %11
  %48 = or i32 %21, %11
  %49 = icmp sgt i32 %48, -1
  %50 = icmp slt i32 %11, %14
  %51 = icmp slt i32 %21, %15
  %52 = and i1 %50, %51
  %53 = and i1 %49, %52
  %54 = fcmp fast ogt float %23, %46
  %55 = and i1 %53, %54
  %56 = select i1 %55, float %23, float %46
  %57 = select i1 %55, i32 %21, i32 %12
  %58 = or i32 %24, %11
  %59 = icmp sgt i32 %58, -1
  %60 = icmp slt i32 %24, %15
  %61 = and i1 %50, %60
  %62 = and i1 %59, %61
  %63 = fcmp fast ogt float %26, %56
  %64 = and i1 %62, %63
  %65 = select i1 %64, float %26, float %56
  %66 = or i1 %55, %64
  %67 = select i1 %66, i32 %11, i32 %47
  %68 = select i1 %64, i32 %24, i32 %57
  %69 = or i32 %27, %12
  %70 = icmp sgt i32 %69, -1
  %71 = icmp slt i32 %27, %14
  %72 = and i1 %71, %41
  %73 = and i1 %70, %72
  %74 = fcmp fast ogt float %29, %65
  %75 = and i1 %73, %74
  %76 = select i1 %75, float %29, float %65
  %77 = select i1 %75, i32 %12, i32 %68
  %78 = or i32 %21, %27
  %79 = icmp sgt i32 %78, -1
  %80 = and i1 %71, %51
  %81 = and i1 %79, %80
  %82 = fcmp fast ogt float %31, %76
  %83 = and i1 %81, %82
  %84 = select i1 %83, float %31, float %76
  %85 = or i1 %83, %75
  %86 = select i1 %85, i32 %27, i32 %67
  %87 = or i32 %21, %18
  %88 = icmp sgt i32 %87, -1
  %89 = and i1 %40, %51
  %90 = and i1 %88, %89
  %91 = fcmp fast ogt float %33, %84
  %92 = and i1 %90, %91
  %93 = select i1 %92, float %33, float %84
  %94 = select i1 %92, i32 %18, i32 %86
  %95 = or i1 %92, %83
  %96 = select i1 %95, i32 %21, i32 %77
  %97 = or i32 %24, %27
  %98 = icmp sgt i32 %97, -1
  %99 = and i1 %71, %60
  %100 = and i1 %98, %99
  %101 = fcmp fast ogt float %35, %93
  %102 = and i1 %100, %101
  %103 = select i1 %102, float %35, float %93
  %104 = select i1 %102, i32 %27, i32 %94
  %105 = or i32 %24, %18
  %106 = icmp sgt i32 %105, -1
  %107 = and i1 %40, %60
  %108 = and i1 %106, %107
  %109 = fcmp fast ogt float %37, %103
  %110 = and i1 %108, %109
  %111 = select i1 %110, float %37, float %103
  %112 = select i1 %110, i32 %18, i32 %104
  %113 = or i1 %110, %102
  %114 = select i1 %113, i32 %24, i32 %96
  %115 = sitofp i32 %11 to float
  %116 = sitofp i32 %12 to float
  %117 = fadd fast float %115, 5.000000e-01
  %118 = fadd fast float %116, 5.000000e-01
  %119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %120 = extractvalue %dx.types.CBufRet.f32 %119, 2
  %121 = extractvalue %dx.types.CBufRet.f32 %119, 3
  %122 = fsub fast float %117, %120
  %123 = fsub fast float %118, %121
  %124 = sitofp i32 %14 to float
  %125 = sitofp i32 %15 to float
  %126 = fdiv fast float %122, %124
  %127 = fdiv fast float %123, %125
  %128 = extractvalue %dx.types.CBufRet.i32 %13, 2
  %129 = extractvalue %dx.types.CBufRet.i32 %13, 3
  %130 = sitofp i32 %128 to float
  %131 = sitofp i32 %129 to float
  %132 = fmul fast float %130, %126
  %133 = fmul fast float %131, %127
  %134 = call float @dx.op.unary.f32(i32 27, float %132)  ; Round_ni(value)
  %135 = call float @dx.op.unary.f32(i32 27, float %133)  ; Round_ni(value)
  %136 = fadd fast float %134, 5.000000e-01
  %137 = fadd fast float %135, 5.000000e-01
  %138 = fptosi float %136 to i32
  %139 = fptosi float %137 to i32
  %140 = sitofp i32 %112 to float
  %141 = sitofp i32 %114 to float
  %142 = fadd fast float %140, 5.000000e-01
  %143 = fadd fast float %141, 5.000000e-01
  %144 = fsub fast float %142, %120
  %145 = fsub fast float %143, %121
  %146 = fdiv fast float %144, %124
  %147 = fdiv fast float %145, %125
  %148 = fmul fast float %130, %146
  %149 = fmul fast float %131, %147
  %150 = call float @dx.op.unary.f32(i32 27, float %148)  ; Round_ni(value)
  %151 = call float @dx.op.unary.f32(i32 27, float %149)  ; Round_ni(value)
  %152 = fadd fast float %150, 5.000000e-01
  %153 = fadd fast float %151, 5.000000e-01
  %154 = fptosi float %152 to i32
  %155 = fptosi float %153 to i32
  %156 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 0, i32 %154, i32 %155, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %157 = extractvalue %dx.types.ResRet.f32 %156, 0
  %158 = extractvalue %dx.types.ResRet.f32 %156, 1
  %159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %160 = extractvalue %dx.types.CBufRet.f32 %159, 2
  %161 = extractvalue %dx.types.CBufRet.f32 %159, 3
  %162 = fmul fast float %160, %157
  %163 = fmul fast float %161, %158
  %164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %165 = extractvalue %dx.types.CBufRet.f32 %164, 0
  %166 = extractvalue %dx.types.CBufRet.f32 %164, 1
  %167 = fsub fast float %162, %165
  %168 = fsub fast float %163, %166
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %11, i32 %12, i32 undef, float %111, float %111, float %111, float %111, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %11, i32 %12, i32 undef, float %167, float %168, float %167, float %167, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %169 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %170 = extractvalue %dx.types.CBufRet.i32 %169, 0
  %171 = extractvalue %dx.types.CBufRet.i32 %169, 1
  %172 = sitofp i32 %170 to float
  %173 = sitofp i32 %171 to float
  %174 = fdiv fast float %117, %172
  %175 = fdiv fast float %118, %173
  %176 = fadd fast float %174, %167
  %177 = fadd fast float %175, %168
  %178 = fmul fast float %176, %172
  %179 = fmul fast float %177, %173
  %180 = fadd fast float %178, -5.000000e-01
  %181 = fadd fast float %179, -5.000000e-01
  %182 = call float @dx.op.unary.f32(i32 27, float %180)  ; Round_ni(value)
  %183 = call float @dx.op.unary.f32(i32 27, float %181)  ; Round_ni(value)
  %184 = fptosi float %182 to i32
  %185 = fptosi float %183 to i32
  %186 = fsub fast float %180, %182
  %187 = fsub fast float %181, %183
  %188 = fsub fast float 1.000000e+00, %186
  %189 = fsub fast float 1.000000e+00, %187
  %190 = fmul fast float %189, %188
  %191 = fmul fast float %189, %186
  %192 = fmul fast float %188, %187
  %193 = fmul fast float %187, %186
  %194 = fcmp fast ogt float %190, 0x3FA99999A0000000
  br i1 %194, label %195, label %205

; <label>:195                                     ; preds = %0
  %196 = or i32 %185, %184
  %197 = icmp sgt i32 %196, -1
  %198 = icmp slt i32 %184, %170
  %199 = icmp slt i32 %185, %171
  %200 = and i1 %198, %199
  %201 = and i1 %197, %200
  br i1 %201, label %202, label %205

; <label>:202                                     ; preds = %195
  %203 = bitcast float %111 to i32
  %204 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 7, i32 %184, i32 %185, i32 undef, i32 %203)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %205

; <label>:205                                     ; preds = %202, %195, %0
  %206 = fcmp fast ogt float %191, 0x3FA99999A0000000
  br i1 %206, label %336, label %347

; <label>:207                                     ; preds = %402, %254
  %208 = phi float [ %251, %254 ], [ 1.000000e+00, %402 ]
  %209 = phi i32 [ %255, %254 ], [ -1, %402 ]
  br label %210

; <label>:210                                     ; preds = %210, %207
  %211 = phi float [ %208, %207 ], [ %251, %210 ]
  %212 = phi i32 [ -1, %207 ], [ %252, %210 ]
  %213 = add i32 %376, -1
  %214 = add i32 %377, -1
  %215 = add i32 %212, %138
  %216 = add i32 %209, %139
  %217 = call i32 @dx.op.binary.i32(i32 37, i32 %215, i32 0)  ; IMax(a,b)
  %218 = call i32 @dx.op.binary.i32(i32 37, i32 %216, i32 0)  ; IMax(a,b)
  %219 = call i32 @dx.op.binary.i32(i32 38, i32 %217, i32 %213)  ; IMin(a,b)
  %220 = call i32 @dx.op.binary.i32(i32 38, i32 %218, i32 %214)  ; IMin(a,b)
  %221 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 0, i32 %219, i32 %220, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %222 = extractvalue %dx.types.ResRet.f32 %221, 0
  %223 = extractvalue %dx.types.ResRet.f32 %221, 1
  %224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %225 = extractvalue %dx.types.CBufRet.f32 %224, 2
  %226 = extractvalue %dx.types.CBufRet.f32 %224, 3
  %227 = fmul fast float %225, %222
  %228 = fmul fast float %226, %223
  %229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %230 = extractvalue %dx.types.CBufRet.f32 %229, 0
  %231 = extractvalue %dx.types.CBufRet.f32 %229, 1
  %232 = fsub fast float %227, %230
  %233 = fsub fast float %228, %231
  %234 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %235 = extractvalue %dx.types.CBufRet.i32 %234, 0
  %236 = extractvalue %dx.types.CBufRet.i32 %234, 1
  %237 = sitofp i32 %235 to float
  %238 = sitofp i32 %236 to float
  %239 = fmul fast float %237, %232
  %240 = fmul fast float %238, %233
  %241 = fmul fast float %239, %239
  %242 = fmul fast float %240, %240
  %243 = fadd fast float %241, %242
  %244 = call float @dx.op.unary.f32(i32 24, float %243)  ; Sqrt(value)
  %245 = call float @dx.op.binary.f32(i32 35, float %244, float %400)  ; FMax(a,b)
  %246 = fdiv fast float %395, %245
  %247 = fdiv fast float %396, %245
  %248 = fdiv fast float %239, %245
  %249 = fdiv fast float %240, %245
  %250 = call float @dx.op.dot2.f32(i32 54, float %248, float %249, float %246, float %247)  ; Dot2(ax,ay,bx,by)
  %251 = call float @dx.op.binary.f32(i32 36, float %211, float %250)  ; FMin(a,b)
  %252 = add nsw i32 %212, 1
  %253 = icmp eq i32 %252, 2
  br i1 %253, label %254, label %210

; <label>:254                                     ; preds = %210
  %255 = add nsw i32 %209, 1
  %256 = icmp eq i32 %255, 2
  br i1 %256, label %257, label %207

; <label>:257                                     ; preds = %254
  br label %258

; <label>:258                                     ; preds = %374, %257
  %259 = phi float [ 1.000000e+00, %374 ], [ %251, %257 ]
  %260 = fsub fast float 1.000000e+00, %259
  %261 = call float @dx.op.unary.f32(i32 7, float %260)  ; Saturate(value)
  %262 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %11, i32 %12, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %263 = extractvalue %dx.types.ResRet.f32 %262, 0
  %264 = extractvalue %dx.types.ResRet.f32 %262, 1
  %265 = extractvalue %dx.types.ResRet.f32 %262, 2
  br label %266

; <label>:266                                     ; preds = %332, %258
  %267 = phi float [ 0.000000e+00, %258 ], [ %328, %332 ]
  %268 = phi float [ %261, %258 ], [ %329, %332 ]
  %269 = phi i32 [ -1, %258 ], [ %333, %332 ]
  br label %270

; <label>:270                                     ; preds = %270, %266
  %271 = phi float [ %267, %266 ], [ %328, %270 ]
  %272 = phi float [ %268, %266 ], [ %329, %270 ]
  %273 = phi i32 [ -1, %266 ], [ %330, %270 ]
  %274 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %275 = extractvalue %dx.types.CBufRet.i32 %274, 0
  %276 = extractvalue %dx.types.CBufRet.i32 %274, 1
  %277 = add i32 %275, -1
  %278 = add i32 %276, -1
  %279 = add i32 %273, %11
  %280 = add i32 %269, %12
  %281 = call i32 @dx.op.binary.i32(i32 37, i32 %279, i32 0)  ; IMax(a,b)
  %282 = call i32 @dx.op.binary.i32(i32 37, i32 %280, i32 0)  ; IMax(a,b)
  %283 = call i32 @dx.op.binary.i32(i32 38, i32 %281, i32 %277)  ; IMin(a,b)
  %284 = call i32 @dx.op.binary.i32(i32 38, i32 %282, i32 %278)  ; IMin(a,b)
  %285 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %283, i32 %284, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %286 = extractvalue %dx.types.ResRet.f32 %285, 0
  %287 = extractvalue %dx.types.ResRet.f32 %285, 1
  %288 = extractvalue %dx.types.ResRet.f32 %285, 2
  %289 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %283, i32 %284, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %290 = extractvalue %dx.types.ResRet.f32 %289, 0
  %291 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %283, i32 %284, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %292 = extractvalue %dx.types.ResRet.f32 %291, 0
  %293 = call float @dx.op.dot3.f32(i32 55, float %286, float %287, float %288, float %286, float %287, float %288)  ; Dot3(ax,ay,az,bx,by,bz)
  %294 = call float @dx.op.unary.f32(i32 25, float %293)  ; Rsqrt(value)
  %295 = fmul fast float %294, %286
  %296 = fmul fast float %294, %287
  %297 = fmul fast float %294, %288
  %298 = call float @dx.op.dot3.f32(i32 55, float %263, float %264, float %265, float %263, float %264, float %265)  ; Dot3(ax,ay,az,bx,by,bz)
  %299 = call float @dx.op.unary.f32(i32 25, float %298)  ; Rsqrt(value)
  %300 = fmul fast float %299, %263
  %301 = fmul fast float %299, %264
  %302 = fmul fast float %299, %265
  %303 = call float @dx.op.dot3.f32(i32 55, float %300, float %301, float %302, float %295, float %296, float %297)  ; Dot3(ax,ay,az,bx,by,bz)
  %304 = fmul fast float %263, %263
  %305 = fmul fast float %264, %264
  %306 = fadd fast float %304, %305
  %307 = fmul fast float %265, %265
  %308 = fadd fast float %306, %307
  %309 = call float @dx.op.unary.f32(i32 24, float %308)  ; Sqrt(value)
  %310 = fmul fast float %286, %286
  %311 = fmul fast float %287, %287
  %312 = fadd fast float %310, %311
  %313 = fmul fast float %288, %288
  %314 = fadd fast float %312, %313
  %315 = call float @dx.op.unary.f32(i32 24, float %314)  ; Sqrt(value)
  %316 = fsub fast float %309, %315
  %317 = call float @dx.op.unary.f32(i32 6, float %316)  ; FAbs(value)
  %318 = fsub fast float 1.000000e+00, %317
  %319 = fmul fast float %303, 6.000000e+00
  %320 = fmul fast float %319, %318
  %321 = fsub fast float 7.000000e+00, %320
  %322 = call float @dx.op.unary.f32(i32 23, float %290)  ; Log(value)
  %323 = fmul fast float %321, %322
  %324 = call float @dx.op.unary.f32(i32 21, float %323)  ; Exp(value)
  %325 = call float @dx.op.unary.f32(i32 23, float %292)  ; Log(value)
  %326 = fmul fast float %321, %325
  %327 = call float @dx.op.unary.f32(i32 21, float %326)  ; Exp(value)
  %328 = call float @dx.op.binary.f32(i32 35, float %271, float %324)  ; FMax(a,b)
  %329 = call float @dx.op.binary.f32(i32 35, float %272, float %327)  ; FMax(a,b)
  %330 = add nsw i32 %273, 1
  %331 = icmp eq i32 %330, 2
  br i1 %331, label %332, label %270

; <label>:332                                     ; preds = %270
  %333 = add nsw i32 %269, 1
  %334 = icmp eq i32 %333, 2
  br i1 %334, label %335, label %266

; <label>:335                                     ; preds = %332
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %11, i32 %12, i32 undef, float %328, float %329, float %328, float %328, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void

; <label>:336                                     ; preds = %205
  %337 = add i32 %184, 1
  %338 = or i32 %337, %185
  %339 = icmp sgt i32 %338, -1
  %340 = icmp slt i32 %337, %170
  %341 = icmp slt i32 %185, %171
  %342 = and i1 %340, %341
  %343 = and i1 %339, %342
  br i1 %343, label %344, label %347

; <label>:344                                     ; preds = %336
  %345 = bitcast float %111 to i32
  %346 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 7, i32 %337, i32 %185, i32 undef, i32 %345)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %347

; <label>:347                                     ; preds = %344, %336, %205
  %348 = fcmp fast ogt float %192, 0x3FA99999A0000000
  br i1 %348, label %349, label %360

; <label>:349                                     ; preds = %347
  %350 = add i32 %185, 1
  %351 = or i32 %350, %184
  %352 = icmp sgt i32 %351, -1
  %353 = icmp slt i32 %184, %170
  %354 = icmp slt i32 %350, %171
  %355 = and i1 %353, %354
  %356 = and i1 %352, %355
  br i1 %356, label %357, label %360

; <label>:357                                     ; preds = %349
  %358 = bitcast float %111 to i32
  %359 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 7, i32 %184, i32 %350, i32 undef, i32 %358)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %360

; <label>:360                                     ; preds = %357, %349, %347
  %361 = fcmp fast ogt float %193, 0x3FA99999A0000000
  br i1 %361, label %362, label %374

; <label>:362                                     ; preds = %360
  %363 = add i32 %184, 1
  %364 = add i32 %185, 1
  %365 = or i32 %364, %363
  %366 = icmp sgt i32 %365, -1
  %367 = icmp slt i32 %363, %170
  %368 = icmp slt i32 %364, %171
  %369 = and i1 %367, %368
  %370 = and i1 %366, %369
  br i1 %370, label %371, label %374

; <label>:371                                     ; preds = %362
  %372 = bitcast float %111 to i32
  %373 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 7, i32 %363, i32 %364, i32 undef, i32 %372)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %374

; <label>:374                                     ; preds = %371, %362, %360
  %375 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %376 = extractvalue %dx.types.CBufRet.i32 %375, 2
  %377 = extractvalue %dx.types.CBufRet.i32 %375, 3
  %378 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 0, i32 %138, i32 %139, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %379 = extractvalue %dx.types.ResRet.f32 %378, 0
  %380 = extractvalue %dx.types.ResRet.f32 %378, 1
  %381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %382 = extractvalue %dx.types.CBufRet.f32 %381, 2
  %383 = extractvalue %dx.types.CBufRet.f32 %381, 3
  %384 = fmul fast float %382, %379
  %385 = fmul fast float %383, %380
  %386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %387 = extractvalue %dx.types.CBufRet.f32 %386, 0
  %388 = extractvalue %dx.types.CBufRet.f32 %386, 1
  %389 = fsub fast float %384, %387
  %390 = fsub fast float %385, %388
  %391 = extractvalue %dx.types.CBufRet.i32 %375, 0
  %392 = extractvalue %dx.types.CBufRet.i32 %375, 1
  %393 = sitofp i32 %391 to float
  %394 = sitofp i32 %392 to float
  %395 = fmul fast float %393, %389
  %396 = fmul fast float %394, %390
  %397 = fmul fast float %395, %395
  %398 = fmul fast float %396, %396
  %399 = fadd fast float %397, %398
  %400 = call float @dx.op.unary.f32(i32 24, float %399)  ; Sqrt(value)
  %401 = fcmp fast ogt float %400, 0x3F847AE140000000
  br i1 %401, label %402, label %258

; <label>:402                                     ; preds = %374
  br label %207
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind
declare i32 @dx.op.atomicBinOp.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

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
!dx.entryPoints = !{!21}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 2}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 2}
!4 = !{!5, !12, !19, null}
!5 = !{!6, !8, !9, !10, !11}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<float>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<float>"* undef, !"", i32 0, i32 3, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 4, i32 1, i32 2, i32 0, !7}
!12 = !{!13, !15, !16, !17}
!13 = !{i32 0, %"class.RWTexture2D<unsigned int>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !14}
!14 = !{i32 0, i32 5}
!15 = !{i32 1, %"class.RWTexture2D<vector<float, 2> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!16 = !{i32 2, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!17 = !{i32 3, %"class.RWTexture2D<vector<float, 2> >"* undef, !"", i32 0, i32 3, i32 1, i32 2, i1 false, i1 false, i1 false, !18}
!18 = !{i32 0, i32 14}
!19 = !{!20}
!20 = !{i32 0, %cbFSR2* undef, !"", i32 0, i32 0, i32 1, i32 144, null}
!21 = !{void ()* @CS, !"CS", null, !4, !22}
!22 = !{i32 0, i64 8388608, i32 4, !23}
!23 = !{i32 8, i32 8, i32 1}

