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
; shader hash: 782f8a68fe14460f6da2c81d8d0a19d7
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
  %115 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 0, i32 %112, i32 %114, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %116 = extractvalue %dx.types.ResRet.f32 %115, 0
  %117 = extractvalue %dx.types.ResRet.f32 %115, 1
  %118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %119 = extractvalue %dx.types.CBufRet.f32 %118, 2
  %120 = extractvalue %dx.types.CBufRet.f32 %118, 3
  %121 = fmul fast float %119, %116
  %122 = fmul fast float %120, %117
  %123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %124 = extractvalue %dx.types.CBufRet.f32 %123, 0
  %125 = extractvalue %dx.types.CBufRet.f32 %123, 1
  %126 = fsub fast float %121, %124
  %127 = fsub fast float %122, %125
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %11, i32 %12, i32 undef, float %111, float %111, float %111, float %111, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %11, i32 %12, i32 undef, float %126, float %127, float %126, float %126, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %128 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %129 = extractvalue %dx.types.CBufRet.i32 %128, 0
  %130 = extractvalue %dx.types.CBufRet.i32 %128, 1
  %131 = sitofp i32 %11 to float
  %132 = sitofp i32 %12 to float
  %133 = fadd fast float %131, 5.000000e-01
  %134 = fadd fast float %132, 5.000000e-01
  %135 = sitofp i32 %129 to float
  %136 = sitofp i32 %130 to float
  %137 = fdiv fast float %133, %135
  %138 = fdiv fast float %134, %136
  %139 = fadd fast float %137, %126
  %140 = fadd fast float %138, %127
  %141 = fmul fast float %139, %135
  %142 = fmul fast float %140, %136
  %143 = fadd fast float %141, -5.000000e-01
  %144 = fadd fast float %142, -5.000000e-01
  %145 = call float @dx.op.unary.f32(i32 27, float %143)  ; Round_ni(value)
  %146 = call float @dx.op.unary.f32(i32 27, float %144)  ; Round_ni(value)
  %147 = fptosi float %145 to i32
  %148 = fptosi float %146 to i32
  %149 = fsub fast float %143, %145
  %150 = fsub fast float %144, %146
  %151 = fsub fast float 1.000000e+00, %149
  %152 = fsub fast float 1.000000e+00, %150
  %153 = fmul fast float %152, %151
  %154 = fmul fast float %152, %149
  %155 = fmul fast float %151, %150
  %156 = fmul fast float %150, %149
  %157 = fcmp fast ogt float %153, 0x3FA99999A0000000
  br i1 %157, label %158, label %168

; <label>:158                                     ; preds = %0
  %159 = or i32 %148, %147
  %160 = icmp sgt i32 %159, -1
  %161 = icmp slt i32 %147, %129
  %162 = icmp slt i32 %148, %130
  %163 = and i1 %161, %162
  %164 = and i1 %160, %163
  br i1 %164, label %165, label %168

; <label>:165                                     ; preds = %158
  %166 = bitcast float %111 to i32
  %167 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 7, i32 %147, i32 %148, i32 undef, i32 %166)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %168

; <label>:168                                     ; preds = %165, %158, %0
  %169 = fcmp fast ogt float %154, 0x3FA99999A0000000
  br i1 %169, label %299, label %310

; <label>:170                                     ; preds = %363, %217
  %171 = phi float [ %214, %217 ], [ 1.000000e+00, %363 ]
  %172 = phi i32 [ %218, %217 ], [ -1, %363 ]
  br label %173

; <label>:173                                     ; preds = %173, %170
  %174 = phi float [ %171, %170 ], [ %214, %173 ]
  %175 = phi i32 [ -1, %170 ], [ %215, %173 ]
  %176 = add i32 %339, -1
  %177 = add i32 %340, -1
  %178 = add i32 %175, %11
  %179 = add i32 %172, %12
  %180 = call i32 @dx.op.binary.i32(i32 37, i32 %178, i32 0)  ; IMax(a,b)
  %181 = call i32 @dx.op.binary.i32(i32 37, i32 %179, i32 0)  ; IMax(a,b)
  %182 = call i32 @dx.op.binary.i32(i32 38, i32 %180, i32 %176)  ; IMin(a,b)
  %183 = call i32 @dx.op.binary.i32(i32 38, i32 %181, i32 %177)  ; IMin(a,b)
  %184 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 0, i32 %182, i32 %183, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %185 = extractvalue %dx.types.ResRet.f32 %184, 0
  %186 = extractvalue %dx.types.ResRet.f32 %184, 1
  %187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %188 = extractvalue %dx.types.CBufRet.f32 %187, 2
  %189 = extractvalue %dx.types.CBufRet.f32 %187, 3
  %190 = fmul fast float %188, %185
  %191 = fmul fast float %189, %186
  %192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %193 = extractvalue %dx.types.CBufRet.f32 %192, 0
  %194 = extractvalue %dx.types.CBufRet.f32 %192, 1
  %195 = fsub fast float %190, %193
  %196 = fsub fast float %191, %194
  %197 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %198 = extractvalue %dx.types.CBufRet.i32 %197, 0
  %199 = extractvalue %dx.types.CBufRet.i32 %197, 1
  %200 = sitofp i32 %198 to float
  %201 = sitofp i32 %199 to float
  %202 = fmul fast float %200, %195
  %203 = fmul fast float %201, %196
  %204 = fmul fast float %202, %202
  %205 = fmul fast float %203, %203
  %206 = fadd fast float %204, %205
  %207 = call float @dx.op.unary.f32(i32 24, float %206)  ; Sqrt(value)
  %208 = call float @dx.op.binary.f32(i32 35, float %207, float %361)  ; FMax(a,b)
  %209 = fdiv fast float %356, %208
  %210 = fdiv fast float %357, %208
  %211 = fdiv fast float %202, %208
  %212 = fdiv fast float %203, %208
  %213 = call float @dx.op.dot2.f32(i32 54, float %211, float %212, float %209, float %210)  ; Dot2(ax,ay,bx,by)
  %214 = call float @dx.op.binary.f32(i32 36, float %174, float %213)  ; FMin(a,b)
  %215 = add nsw i32 %175, 1
  %216 = icmp eq i32 %215, 2
  br i1 %216, label %217, label %173

; <label>:217                                     ; preds = %173
  %218 = add nsw i32 %172, 1
  %219 = icmp eq i32 %218, 2
  br i1 %219, label %220, label %170

; <label>:220                                     ; preds = %217
  br label %221

; <label>:221                                     ; preds = %337, %220
  %222 = phi float [ 1.000000e+00, %337 ], [ %214, %220 ]
  %223 = fsub fast float 1.000000e+00, %222
  %224 = call float @dx.op.unary.f32(i32 7, float %223)  ; Saturate(value)
  %225 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %11, i32 %12, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %226 = extractvalue %dx.types.ResRet.f32 %225, 0
  %227 = extractvalue %dx.types.ResRet.f32 %225, 1
  %228 = extractvalue %dx.types.ResRet.f32 %225, 2
  br label %229

; <label>:229                                     ; preds = %295, %221
  %230 = phi float [ 0.000000e+00, %221 ], [ %291, %295 ]
  %231 = phi float [ %224, %221 ], [ %292, %295 ]
  %232 = phi i32 [ -1, %221 ], [ %296, %295 ]
  br label %233

; <label>:233                                     ; preds = %233, %229
  %234 = phi float [ %230, %229 ], [ %291, %233 ]
  %235 = phi float [ %231, %229 ], [ %292, %233 ]
  %236 = phi i32 [ -1, %229 ], [ %293, %233 ]
  %237 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %238 = extractvalue %dx.types.CBufRet.i32 %237, 0
  %239 = extractvalue %dx.types.CBufRet.i32 %237, 1
  %240 = add i32 %238, -1
  %241 = add i32 %239, -1
  %242 = add i32 %236, %11
  %243 = add i32 %232, %12
  %244 = call i32 @dx.op.binary.i32(i32 37, i32 %242, i32 0)  ; IMax(a,b)
  %245 = call i32 @dx.op.binary.i32(i32 37, i32 %243, i32 0)  ; IMax(a,b)
  %246 = call i32 @dx.op.binary.i32(i32 38, i32 %244, i32 %240)  ; IMin(a,b)
  %247 = call i32 @dx.op.binary.i32(i32 38, i32 %245, i32 %241)  ; IMin(a,b)
  %248 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %246, i32 %247, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %249 = extractvalue %dx.types.ResRet.f32 %248, 0
  %250 = extractvalue %dx.types.ResRet.f32 %248, 1
  %251 = extractvalue %dx.types.ResRet.f32 %248, 2
  %252 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %246, i32 %247, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %253 = extractvalue %dx.types.ResRet.f32 %252, 0
  %254 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %246, i32 %247, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %255 = extractvalue %dx.types.ResRet.f32 %254, 0
  %256 = call float @dx.op.dot3.f32(i32 55, float %249, float %250, float %251, float %249, float %250, float %251)  ; Dot3(ax,ay,az,bx,by,bz)
  %257 = call float @dx.op.unary.f32(i32 25, float %256)  ; Rsqrt(value)
  %258 = fmul fast float %257, %249
  %259 = fmul fast float %257, %250
  %260 = fmul fast float %257, %251
  %261 = call float @dx.op.dot3.f32(i32 55, float %226, float %227, float %228, float %226, float %227, float %228)  ; Dot3(ax,ay,az,bx,by,bz)
  %262 = call float @dx.op.unary.f32(i32 25, float %261)  ; Rsqrt(value)
  %263 = fmul fast float %262, %226
  %264 = fmul fast float %262, %227
  %265 = fmul fast float %262, %228
  %266 = call float @dx.op.dot3.f32(i32 55, float %263, float %264, float %265, float %258, float %259, float %260)  ; Dot3(ax,ay,az,bx,by,bz)
  %267 = fmul fast float %226, %226
  %268 = fmul fast float %227, %227
  %269 = fadd fast float %267, %268
  %270 = fmul fast float %228, %228
  %271 = fadd fast float %269, %270
  %272 = call float @dx.op.unary.f32(i32 24, float %271)  ; Sqrt(value)
  %273 = fmul fast float %249, %249
  %274 = fmul fast float %250, %250
  %275 = fadd fast float %273, %274
  %276 = fmul fast float %251, %251
  %277 = fadd fast float %275, %276
  %278 = call float @dx.op.unary.f32(i32 24, float %277)  ; Sqrt(value)
  %279 = fsub fast float %272, %278
  %280 = call float @dx.op.unary.f32(i32 6, float %279)  ; FAbs(value)
  %281 = fsub fast float 1.000000e+00, %280
  %282 = fmul fast float %266, 6.000000e+00
  %283 = fmul fast float %282, %281
  %284 = fsub fast float 7.000000e+00, %283
  %285 = call float @dx.op.unary.f32(i32 23, float %253)  ; Log(value)
  %286 = fmul fast float %284, %285
  %287 = call float @dx.op.unary.f32(i32 21, float %286)  ; Exp(value)
  %288 = call float @dx.op.unary.f32(i32 23, float %255)  ; Log(value)
  %289 = fmul fast float %284, %288
  %290 = call float @dx.op.unary.f32(i32 21, float %289)  ; Exp(value)
  %291 = call float @dx.op.binary.f32(i32 35, float %234, float %287)  ; FMax(a,b)
  %292 = call float @dx.op.binary.f32(i32 35, float %235, float %290)  ; FMax(a,b)
  %293 = add nsw i32 %236, 1
  %294 = icmp eq i32 %293, 2
  br i1 %294, label %295, label %233

; <label>:295                                     ; preds = %233
  %296 = add nsw i32 %232, 1
  %297 = icmp eq i32 %296, 2
  br i1 %297, label %298, label %229

; <label>:298                                     ; preds = %295
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %11, i32 %12, i32 undef, float %291, float %292, float %291, float %291, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void

; <label>:299                                     ; preds = %168
  %300 = add i32 %147, 1
  %301 = or i32 %300, %148
  %302 = icmp sgt i32 %301, -1
  %303 = icmp slt i32 %300, %129
  %304 = icmp slt i32 %148, %130
  %305 = and i1 %303, %304
  %306 = and i1 %302, %305
  br i1 %306, label %307, label %310

; <label>:307                                     ; preds = %299
  %308 = bitcast float %111 to i32
  %309 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 7, i32 %300, i32 %148, i32 undef, i32 %308)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %310

; <label>:310                                     ; preds = %307, %299, %168
  %311 = fcmp fast ogt float %155, 0x3FA99999A0000000
  br i1 %311, label %312, label %323

; <label>:312                                     ; preds = %310
  %313 = add i32 %148, 1
  %314 = or i32 %313, %147
  %315 = icmp sgt i32 %314, -1
  %316 = icmp slt i32 %147, %129
  %317 = icmp slt i32 %313, %130
  %318 = and i1 %316, %317
  %319 = and i1 %315, %318
  br i1 %319, label %320, label %323

; <label>:320                                     ; preds = %312
  %321 = bitcast float %111 to i32
  %322 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 7, i32 %147, i32 %313, i32 undef, i32 %321)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %323

; <label>:323                                     ; preds = %320, %312, %310
  %324 = fcmp fast ogt float %156, 0x3FA99999A0000000
  br i1 %324, label %325, label %337

; <label>:325                                     ; preds = %323
  %326 = add i32 %147, 1
  %327 = add i32 %148, 1
  %328 = or i32 %327, %326
  %329 = icmp sgt i32 %328, -1
  %330 = icmp slt i32 %326, %129
  %331 = icmp slt i32 %327, %130
  %332 = and i1 %330, %331
  %333 = and i1 %329, %332
  br i1 %333, label %334, label %337

; <label>:334                                     ; preds = %325
  %335 = bitcast float %111 to i32
  %336 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 7, i32 %326, i32 %327, i32 undef, i32 %335)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %337

; <label>:337                                     ; preds = %334, %325, %323
  %338 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %339 = extractvalue %dx.types.CBufRet.i32 %338, 0
  %340 = extractvalue %dx.types.CBufRet.i32 %338, 1
  %341 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 0, i32 %11, i32 %12, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %342 = extractvalue %dx.types.ResRet.f32 %341, 0
  %343 = extractvalue %dx.types.ResRet.f32 %341, 1
  %344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %345 = extractvalue %dx.types.CBufRet.f32 %344, 2
  %346 = extractvalue %dx.types.CBufRet.f32 %344, 3
  %347 = fmul fast float %345, %342
  %348 = fmul fast float %346, %343
  %349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %350 = extractvalue %dx.types.CBufRet.f32 %349, 0
  %351 = extractvalue %dx.types.CBufRet.f32 %349, 1
  %352 = fsub fast float %347, %350
  %353 = fsub fast float %348, %351
  %354 = sitofp i32 %339 to float
  %355 = sitofp i32 %340 to float
  %356 = fmul fast float %354, %352
  %357 = fmul fast float %355, %353
  %358 = fmul fast float %356, %356
  %359 = fmul fast float %357, %357
  %360 = fadd fast float %358, %359
  %361 = call float @dx.op.unary.f32(i32 24, float %360)  ; Sqrt(value)
  %362 = fcmp fast ogt float %361, 0x3F847AE140000000
  br i1 %362, label %363, label %221

; <label>:363                                     ; preds = %337
  br label %170
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

