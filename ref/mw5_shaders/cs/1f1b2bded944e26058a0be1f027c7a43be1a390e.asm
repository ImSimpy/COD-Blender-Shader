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
; shader hash: eff753f24b56f498b4d24663169761f3
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
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
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
  %44 = fcmp fast olt float %20, %17
  %45 = and i1 %43, %44
  %46 = select i1 %45, float %20, float %17
  %47 = select i1 %45, i32 %18, i32 %11
  %48 = or i32 %21, %11
  %49 = icmp sgt i32 %48, -1
  %50 = icmp slt i32 %11, %14
  %51 = icmp slt i32 %21, %15
  %52 = and i1 %50, %51
  %53 = and i1 %49, %52
  %54 = fcmp fast olt float %23, %46
  %55 = and i1 %53, %54
  %56 = select i1 %55, float %23, float %46
  %57 = select i1 %55, i32 %21, i32 %12
  %58 = or i32 %24, %11
  %59 = icmp sgt i32 %58, -1
  %60 = icmp slt i32 %24, %15
  %61 = and i1 %50, %60
  %62 = and i1 %59, %61
  %63 = fcmp fast olt float %26, %56
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
  %74 = fcmp fast olt float %29, %65
  %75 = and i1 %73, %74
  %76 = select i1 %75, float %29, float %65
  %77 = select i1 %75, i32 %12, i32 %68
  %78 = or i32 %21, %27
  %79 = icmp sgt i32 %78, -1
  %80 = and i1 %71, %51
  %81 = and i1 %79, %80
  %82 = fcmp fast olt float %31, %76
  %83 = and i1 %81, %82
  %84 = select i1 %83, float %31, float %76
  %85 = or i1 %83, %75
  %86 = select i1 %85, i32 %27, i32 %67
  %87 = or i32 %21, %18
  %88 = icmp sgt i32 %87, -1
  %89 = and i1 %40, %51
  %90 = and i1 %88, %89
  %91 = fcmp fast olt float %33, %84
  %92 = and i1 %90, %91
  %93 = select i1 %92, float %33, float %84
  %94 = select i1 %92, i32 %18, i32 %86
  %95 = or i1 %92, %83
  %96 = select i1 %95, i32 %21, i32 %77
  %97 = or i32 %24, %27
  %98 = icmp sgt i32 %97, -1
  %99 = and i1 %71, %60
  %100 = and i1 %98, %99
  %101 = fcmp fast olt float %35, %93
  %102 = and i1 %100, %101
  %103 = select i1 %102, float %35, float %93
  %104 = select i1 %102, i32 %27, i32 %94
  %105 = or i32 %24, %18
  %106 = icmp sgt i32 %105, -1
  %107 = and i1 %40, %60
  %108 = and i1 %106, %107
  %109 = fcmp fast olt float %37, %103
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
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %11, i32 %12, i32 undef, float %111, float %111, float %111, float %111, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %11, i32 %12, i32 undef, float %162, float %163, float %162, float %162, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %164 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %165 = extractvalue %dx.types.CBufRet.i32 %164, 0
  %166 = extractvalue %dx.types.CBufRet.i32 %164, 1
  %167 = sitofp i32 %165 to float
  %168 = sitofp i32 %166 to float
  %169 = fdiv fast float %117, %167
  %170 = fdiv fast float %118, %168
  %171 = fadd fast float %169, %162
  %172 = fadd fast float %170, %163
  %173 = fmul fast float %171, %167
  %174 = fmul fast float %172, %168
  %175 = fadd fast float %173, -5.000000e-01
  %176 = fadd fast float %174, -5.000000e-01
  %177 = call float @dx.op.unary.f32(i32 27, float %175)  ; Round_ni(value)
  %178 = call float @dx.op.unary.f32(i32 27, float %176)  ; Round_ni(value)
  %179 = fptosi float %177 to i32
  %180 = fptosi float %178 to i32
  %181 = fsub fast float %175, %177
  %182 = fsub fast float %176, %178
  %183 = fsub fast float 1.000000e+00, %181
  %184 = fsub fast float 1.000000e+00, %182
  %185 = fmul fast float %184, %183
  %186 = fmul fast float %184, %181
  %187 = fmul fast float %183, %182
  %188 = fmul fast float %182, %181
  %189 = fcmp fast ogt float %185, 0x3FA99999A0000000
  br i1 %189, label %190, label %200

; <label>:190                                     ; preds = %0
  %191 = or i32 %180, %179
  %192 = icmp sgt i32 %191, -1
  %193 = icmp slt i32 %179, %165
  %194 = icmp slt i32 %180, %166
  %195 = and i1 %193, %194
  %196 = and i1 %192, %195
  br i1 %196, label %197, label %200

; <label>:197                                     ; preds = %190
  %198 = bitcast float %111 to i32
  %199 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 6, i32 %179, i32 %180, i32 undef, i32 %198)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %200

; <label>:200                                     ; preds = %197, %190, %0
  %201 = fcmp fast ogt float %186, 0x3FA99999A0000000
  br i1 %201, label %326, label %337

; <label>:202                                     ; preds = %387, %244
  %203 = phi float [ %241, %244 ], [ 1.000000e+00, %387 ]
  %204 = phi i32 [ %245, %244 ], [ -1, %387 ]
  br label %205

; <label>:205                                     ; preds = %205, %202
  %206 = phi float [ %203, %202 ], [ %241, %205 ]
  %207 = phi i32 [ -1, %202 ], [ %242, %205 ]
  %208 = add i32 %366, -1
  %209 = add i32 %367, -1
  %210 = add i32 %207, %138
  %211 = add i32 %204, %139
  %212 = call i32 @dx.op.binary.i32(i32 37, i32 %210, i32 0)  ; IMax(a,b)
  %213 = call i32 @dx.op.binary.i32(i32 37, i32 %211, i32 0)  ; IMax(a,b)
  %214 = call i32 @dx.op.binary.i32(i32 38, i32 %212, i32 %208)  ; IMin(a,b)
  %215 = call i32 @dx.op.binary.i32(i32 38, i32 %213, i32 %209)  ; IMin(a,b)
  %216 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 0, i32 %214, i32 %215, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %217 = extractvalue %dx.types.ResRet.f32 %216, 0
  %218 = extractvalue %dx.types.ResRet.f32 %216, 1
  %219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %220 = extractvalue %dx.types.CBufRet.f32 %219, 2
  %221 = extractvalue %dx.types.CBufRet.f32 %219, 3
  %222 = fmul fast float %220, %217
  %223 = fmul fast float %221, %218
  %224 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %225 = extractvalue %dx.types.CBufRet.i32 %224, 0
  %226 = extractvalue %dx.types.CBufRet.i32 %224, 1
  %227 = sitofp i32 %225 to float
  %228 = sitofp i32 %226 to float
  %229 = fmul fast float %222, %227
  %230 = fmul fast float %223, %228
  %231 = fmul fast float %229, %229
  %232 = fmul fast float %230, %230
  %233 = fadd fast float %231, %232
  %234 = call float @dx.op.unary.f32(i32 24, float %233)  ; Sqrt(value)
  %235 = call float @dx.op.binary.f32(i32 35, float %234, float %385)  ; FMax(a,b)
  %236 = fdiv fast float %380, %235
  %237 = fdiv fast float %381, %235
  %238 = fdiv fast float %229, %235
  %239 = fdiv fast float %230, %235
  %240 = call float @dx.op.dot2.f32(i32 54, float %238, float %239, float %236, float %237)  ; Dot2(ax,ay,bx,by)
  %241 = call float @dx.op.binary.f32(i32 36, float %206, float %240)  ; FMin(a,b)
  %242 = add nsw i32 %207, 1
  %243 = icmp eq i32 %242, 2
  br i1 %243, label %244, label %205

; <label>:244                                     ; preds = %205
  %245 = add nsw i32 %204, 1
  %246 = icmp eq i32 %245, 2
  br i1 %246, label %247, label %202

; <label>:247                                     ; preds = %244
  br label %248

; <label>:248                                     ; preds = %364, %247
  %249 = phi float [ 1.000000e+00, %364 ], [ %241, %247 ]
  %250 = fsub fast float 1.000000e+00, %249
  %251 = call float @dx.op.unary.f32(i32 7, float %250)  ; Saturate(value)
  %252 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %11, i32 %12, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %253 = extractvalue %dx.types.ResRet.f32 %252, 0
  %254 = extractvalue %dx.types.ResRet.f32 %252, 1
  %255 = extractvalue %dx.types.ResRet.f32 %252, 2
  br label %256

; <label>:256                                     ; preds = %322, %248
  %257 = phi float [ 0.000000e+00, %248 ], [ %318, %322 ]
  %258 = phi float [ %251, %248 ], [ %319, %322 ]
  %259 = phi i32 [ -1, %248 ], [ %323, %322 ]
  br label %260

; <label>:260                                     ; preds = %260, %256
  %261 = phi float [ %257, %256 ], [ %318, %260 ]
  %262 = phi float [ %258, %256 ], [ %319, %260 ]
  %263 = phi i32 [ -1, %256 ], [ %320, %260 ]
  %264 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %265 = extractvalue %dx.types.CBufRet.i32 %264, 0
  %266 = extractvalue %dx.types.CBufRet.i32 %264, 1
  %267 = add i32 %265, -1
  %268 = add i32 %266, -1
  %269 = add i32 %263, %11
  %270 = add i32 %259, %12
  %271 = call i32 @dx.op.binary.i32(i32 37, i32 %269, i32 0)  ; IMax(a,b)
  %272 = call i32 @dx.op.binary.i32(i32 37, i32 %270, i32 0)  ; IMax(a,b)
  %273 = call i32 @dx.op.binary.i32(i32 38, i32 %271, i32 %267)  ; IMin(a,b)
  %274 = call i32 @dx.op.binary.i32(i32 38, i32 %272, i32 %268)  ; IMin(a,b)
  %275 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %273, i32 %274, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %276 = extractvalue %dx.types.ResRet.f32 %275, 0
  %277 = extractvalue %dx.types.ResRet.f32 %275, 1
  %278 = extractvalue %dx.types.ResRet.f32 %275, 2
  %279 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %273, i32 %274, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %280 = extractvalue %dx.types.ResRet.f32 %279, 0
  %281 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %273, i32 %274, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %282 = extractvalue %dx.types.ResRet.f32 %281, 0
  %283 = call float @dx.op.dot3.f32(i32 55, float %276, float %277, float %278, float %276, float %277, float %278)  ; Dot3(ax,ay,az,bx,by,bz)
  %284 = call float @dx.op.unary.f32(i32 25, float %283)  ; Rsqrt(value)
  %285 = fmul fast float %284, %276
  %286 = fmul fast float %284, %277
  %287 = fmul fast float %284, %278
  %288 = call float @dx.op.dot3.f32(i32 55, float %253, float %254, float %255, float %253, float %254, float %255)  ; Dot3(ax,ay,az,bx,by,bz)
  %289 = call float @dx.op.unary.f32(i32 25, float %288)  ; Rsqrt(value)
  %290 = fmul fast float %289, %253
  %291 = fmul fast float %289, %254
  %292 = fmul fast float %289, %255
  %293 = call float @dx.op.dot3.f32(i32 55, float %290, float %291, float %292, float %285, float %286, float %287)  ; Dot3(ax,ay,az,bx,by,bz)
  %294 = fmul fast float %253, %253
  %295 = fmul fast float %254, %254
  %296 = fadd fast float %294, %295
  %297 = fmul fast float %255, %255
  %298 = fadd fast float %296, %297
  %299 = call float @dx.op.unary.f32(i32 24, float %298)  ; Sqrt(value)
  %300 = fmul fast float %276, %276
  %301 = fmul fast float %277, %277
  %302 = fadd fast float %300, %301
  %303 = fmul fast float %278, %278
  %304 = fadd fast float %302, %303
  %305 = call float @dx.op.unary.f32(i32 24, float %304)  ; Sqrt(value)
  %306 = fsub fast float %299, %305
  %307 = call float @dx.op.unary.f32(i32 6, float %306)  ; FAbs(value)
  %308 = fsub fast float 1.000000e+00, %307
  %309 = fmul fast float %293, 6.000000e+00
  %310 = fmul fast float %309, %308
  %311 = fsub fast float 7.000000e+00, %310
  %312 = call float @dx.op.unary.f32(i32 23, float %280)  ; Log(value)
  %313 = fmul fast float %311, %312
  %314 = call float @dx.op.unary.f32(i32 21, float %313)  ; Exp(value)
  %315 = call float @dx.op.unary.f32(i32 23, float %282)  ; Log(value)
  %316 = fmul fast float %311, %315
  %317 = call float @dx.op.unary.f32(i32 21, float %316)  ; Exp(value)
  %318 = call float @dx.op.binary.f32(i32 35, float %261, float %314)  ; FMax(a,b)
  %319 = call float @dx.op.binary.f32(i32 35, float %262, float %317)  ; FMax(a,b)
  %320 = add nsw i32 %263, 1
  %321 = icmp eq i32 %320, 2
  br i1 %321, label %322, label %260

; <label>:322                                     ; preds = %260
  %323 = add nsw i32 %259, 1
  %324 = icmp eq i32 %323, 2
  br i1 %324, label %325, label %256

; <label>:325                                     ; preds = %322
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %11, i32 %12, i32 undef, float %318, float %319, float %318, float %318, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void

; <label>:326                                     ; preds = %200
  %327 = add i32 %179, 1
  %328 = or i32 %327, %180
  %329 = icmp sgt i32 %328, -1
  %330 = icmp slt i32 %327, %165
  %331 = icmp slt i32 %180, %166
  %332 = and i1 %330, %331
  %333 = and i1 %329, %332
  br i1 %333, label %334, label %337

; <label>:334                                     ; preds = %326
  %335 = bitcast float %111 to i32
  %336 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 6, i32 %327, i32 %180, i32 undef, i32 %335)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %337

; <label>:337                                     ; preds = %334, %326, %200
  %338 = fcmp fast ogt float %187, 0x3FA99999A0000000
  br i1 %338, label %339, label %350

; <label>:339                                     ; preds = %337
  %340 = add i32 %180, 1
  %341 = or i32 %340, %179
  %342 = icmp sgt i32 %341, -1
  %343 = icmp slt i32 %179, %165
  %344 = icmp slt i32 %340, %166
  %345 = and i1 %343, %344
  %346 = and i1 %342, %345
  br i1 %346, label %347, label %350

; <label>:347                                     ; preds = %339
  %348 = bitcast float %111 to i32
  %349 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 6, i32 %179, i32 %340, i32 undef, i32 %348)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %350

; <label>:350                                     ; preds = %347, %339, %337
  %351 = fcmp fast ogt float %188, 0x3FA99999A0000000
  br i1 %351, label %352, label %364

; <label>:352                                     ; preds = %350
  %353 = add i32 %179, 1
  %354 = add i32 %180, 1
  %355 = or i32 %354, %353
  %356 = icmp sgt i32 %355, -1
  %357 = icmp slt i32 %353, %165
  %358 = icmp slt i32 %354, %166
  %359 = and i1 %357, %358
  %360 = and i1 %356, %359
  br i1 %360, label %361, label %364

; <label>:361                                     ; preds = %352
  %362 = bitcast float %111 to i32
  %363 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 6, i32 %353, i32 %354, i32 undef, i32 %362)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %364

; <label>:364                                     ; preds = %361, %352, %350
  %365 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %366 = extractvalue %dx.types.CBufRet.i32 %365, 2
  %367 = extractvalue %dx.types.CBufRet.i32 %365, 3
  %368 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 0, i32 %138, i32 %139, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %369 = extractvalue %dx.types.ResRet.f32 %368, 0
  %370 = extractvalue %dx.types.ResRet.f32 %368, 1
  %371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %372 = extractvalue %dx.types.CBufRet.f32 %371, 2
  %373 = extractvalue %dx.types.CBufRet.f32 %371, 3
  %374 = fmul fast float %372, %369
  %375 = fmul fast float %373, %370
  %376 = extractvalue %dx.types.CBufRet.i32 %365, 0
  %377 = extractvalue %dx.types.CBufRet.i32 %365, 1
  %378 = sitofp i32 %376 to float
  %379 = sitofp i32 %377 to float
  %380 = fmul fast float %374, %378
  %381 = fmul fast float %375, %379
  %382 = fmul fast float %380, %380
  %383 = fmul fast float %381, %381
  %384 = fadd fast float %382, %383
  %385 = call float @dx.op.unary.f32(i32 24, float %384)  ; Sqrt(value)
  %386 = fcmp fast ogt float %385, 0x3F847AE140000000
  br i1 %386, label %387, label %248

; <label>:387                                     ; preds = %364
  br label %202
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
!22 = !{i32 4, !23}
!23 = !{i32 8, i32 8, i32 1}

