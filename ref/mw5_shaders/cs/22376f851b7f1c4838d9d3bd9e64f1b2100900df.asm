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
; shader hash: cba64869a28e31b07fdb3734fe5cbd2d
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
  %115 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 0, i32 %112, i32 %114, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %116 = extractvalue %dx.types.ResRet.f32 %115, 0
  %117 = extractvalue %dx.types.ResRet.f32 %115, 1
  %118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %119 = extractvalue %dx.types.CBufRet.f32 %118, 2
  %120 = extractvalue %dx.types.CBufRet.f32 %118, 3
  %121 = fmul fast float %119, %116
  %122 = fmul fast float %120, %117
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %11, i32 %12, i32 undef, float %111, float %111, float %111, float %111, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %11, i32 %12, i32 undef, float %121, float %122, float %121, float %121, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %123 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %124 = extractvalue %dx.types.CBufRet.i32 %123, 0
  %125 = extractvalue %dx.types.CBufRet.i32 %123, 1
  %126 = sitofp i32 %11 to float
  %127 = sitofp i32 %12 to float
  %128 = fadd fast float %126, 5.000000e-01
  %129 = fadd fast float %127, 5.000000e-01
  %130 = sitofp i32 %124 to float
  %131 = sitofp i32 %125 to float
  %132 = fdiv fast float %128, %130
  %133 = fdiv fast float %129, %131
  %134 = fadd fast float %132, %121
  %135 = fadd fast float %133, %122
  %136 = fmul fast float %134, %130
  %137 = fmul fast float %135, %131
  %138 = fadd fast float %136, -5.000000e-01
  %139 = fadd fast float %137, -5.000000e-01
  %140 = call float @dx.op.unary.f32(i32 27, float %138)  ; Round_ni(value)
  %141 = call float @dx.op.unary.f32(i32 27, float %139)  ; Round_ni(value)
  %142 = fptosi float %140 to i32
  %143 = fptosi float %141 to i32
  %144 = fsub fast float %138, %140
  %145 = fsub fast float %139, %141
  %146 = fsub fast float 1.000000e+00, %144
  %147 = fsub fast float 1.000000e+00, %145
  %148 = fmul fast float %147, %146
  %149 = fmul fast float %147, %144
  %150 = fmul fast float %146, %145
  %151 = fmul fast float %145, %144
  %152 = fcmp fast ogt float %148, 0x3FA99999A0000000
  br i1 %152, label %153, label %163

; <label>:153                                     ; preds = %0
  %154 = or i32 %143, %142
  %155 = icmp sgt i32 %154, -1
  %156 = icmp slt i32 %142, %124
  %157 = icmp slt i32 %143, %125
  %158 = and i1 %156, %157
  %159 = and i1 %155, %158
  br i1 %159, label %160, label %163

; <label>:160                                     ; preds = %153
  %161 = bitcast float %111 to i32
  %162 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 6, i32 %142, i32 %143, i32 undef, i32 %161)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %163

; <label>:163                                     ; preds = %160, %153, %0
  %164 = fcmp fast ogt float %149, 0x3FA99999A0000000
  br i1 %164, label %289, label %300

; <label>:165                                     ; preds = %348, %207
  %166 = phi float [ %204, %207 ], [ 1.000000e+00, %348 ]
  %167 = phi i32 [ %208, %207 ], [ -1, %348 ]
  br label %168

; <label>:168                                     ; preds = %168, %165
  %169 = phi float [ %166, %165 ], [ %204, %168 ]
  %170 = phi i32 [ -1, %165 ], [ %205, %168 ]
  %171 = add i32 %329, -1
  %172 = add i32 %330, -1
  %173 = add i32 %170, %11
  %174 = add i32 %167, %12
  %175 = call i32 @dx.op.binary.i32(i32 37, i32 %173, i32 0)  ; IMax(a,b)
  %176 = call i32 @dx.op.binary.i32(i32 37, i32 %174, i32 0)  ; IMax(a,b)
  %177 = call i32 @dx.op.binary.i32(i32 38, i32 %175, i32 %171)  ; IMin(a,b)
  %178 = call i32 @dx.op.binary.i32(i32 38, i32 %176, i32 %172)  ; IMin(a,b)
  %179 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 0, i32 %177, i32 %178, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %180 = extractvalue %dx.types.ResRet.f32 %179, 0
  %181 = extractvalue %dx.types.ResRet.f32 %179, 1
  %182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %183 = extractvalue %dx.types.CBufRet.f32 %182, 2
  %184 = extractvalue %dx.types.CBufRet.f32 %182, 3
  %185 = fmul fast float %183, %180
  %186 = fmul fast float %184, %181
  %187 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %188 = extractvalue %dx.types.CBufRet.i32 %187, 0
  %189 = extractvalue %dx.types.CBufRet.i32 %187, 1
  %190 = sitofp i32 %188 to float
  %191 = sitofp i32 %189 to float
  %192 = fmul fast float %185, %190
  %193 = fmul fast float %186, %191
  %194 = fmul fast float %192, %192
  %195 = fmul fast float %193, %193
  %196 = fadd fast float %194, %195
  %197 = call float @dx.op.unary.f32(i32 24, float %196)  ; Sqrt(value)
  %198 = call float @dx.op.binary.f32(i32 35, float %197, float %346)  ; FMax(a,b)
  %199 = fdiv fast float %341, %198
  %200 = fdiv fast float %342, %198
  %201 = fdiv fast float %192, %198
  %202 = fdiv fast float %193, %198
  %203 = call float @dx.op.dot2.f32(i32 54, float %201, float %202, float %199, float %200)  ; Dot2(ax,ay,bx,by)
  %204 = call float @dx.op.binary.f32(i32 36, float %169, float %203)  ; FMin(a,b)
  %205 = add nsw i32 %170, 1
  %206 = icmp eq i32 %205, 2
  br i1 %206, label %207, label %168

; <label>:207                                     ; preds = %168
  %208 = add nsw i32 %167, 1
  %209 = icmp eq i32 %208, 2
  br i1 %209, label %210, label %165

; <label>:210                                     ; preds = %207
  br label %211

; <label>:211                                     ; preds = %327, %210
  %212 = phi float [ 1.000000e+00, %327 ], [ %204, %210 ]
  %213 = fsub fast float 1.000000e+00, %212
  %214 = call float @dx.op.unary.f32(i32 7, float %213)  ; Saturate(value)
  %215 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %11, i32 %12, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %216 = extractvalue %dx.types.ResRet.f32 %215, 0
  %217 = extractvalue %dx.types.ResRet.f32 %215, 1
  %218 = extractvalue %dx.types.ResRet.f32 %215, 2
  br label %219

; <label>:219                                     ; preds = %285, %211
  %220 = phi float [ 0.000000e+00, %211 ], [ %281, %285 ]
  %221 = phi float [ %214, %211 ], [ %282, %285 ]
  %222 = phi i32 [ -1, %211 ], [ %286, %285 ]
  br label %223

; <label>:223                                     ; preds = %223, %219
  %224 = phi float [ %220, %219 ], [ %281, %223 ]
  %225 = phi float [ %221, %219 ], [ %282, %223 ]
  %226 = phi i32 [ -1, %219 ], [ %283, %223 ]
  %227 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %228 = extractvalue %dx.types.CBufRet.i32 %227, 0
  %229 = extractvalue %dx.types.CBufRet.i32 %227, 1
  %230 = add i32 %228, -1
  %231 = add i32 %229, -1
  %232 = add i32 %226, %11
  %233 = add i32 %222, %12
  %234 = call i32 @dx.op.binary.i32(i32 37, i32 %232, i32 0)  ; IMax(a,b)
  %235 = call i32 @dx.op.binary.i32(i32 37, i32 %233, i32 0)  ; IMax(a,b)
  %236 = call i32 @dx.op.binary.i32(i32 38, i32 %234, i32 %230)  ; IMin(a,b)
  %237 = call i32 @dx.op.binary.i32(i32 38, i32 %235, i32 %231)  ; IMin(a,b)
  %238 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %236, i32 %237, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %239 = extractvalue %dx.types.ResRet.f32 %238, 0
  %240 = extractvalue %dx.types.ResRet.f32 %238, 1
  %241 = extractvalue %dx.types.ResRet.f32 %238, 2
  %242 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %236, i32 %237, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %243 = extractvalue %dx.types.ResRet.f32 %242, 0
  %244 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %236, i32 %237, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %245 = extractvalue %dx.types.ResRet.f32 %244, 0
  %246 = call float @dx.op.dot3.f32(i32 55, float %239, float %240, float %241, float %239, float %240, float %241)  ; Dot3(ax,ay,az,bx,by,bz)
  %247 = call float @dx.op.unary.f32(i32 25, float %246)  ; Rsqrt(value)
  %248 = fmul fast float %247, %239
  %249 = fmul fast float %247, %240
  %250 = fmul fast float %247, %241
  %251 = call float @dx.op.dot3.f32(i32 55, float %216, float %217, float %218, float %216, float %217, float %218)  ; Dot3(ax,ay,az,bx,by,bz)
  %252 = call float @dx.op.unary.f32(i32 25, float %251)  ; Rsqrt(value)
  %253 = fmul fast float %252, %216
  %254 = fmul fast float %252, %217
  %255 = fmul fast float %252, %218
  %256 = call float @dx.op.dot3.f32(i32 55, float %253, float %254, float %255, float %248, float %249, float %250)  ; Dot3(ax,ay,az,bx,by,bz)
  %257 = fmul fast float %216, %216
  %258 = fmul fast float %217, %217
  %259 = fadd fast float %257, %258
  %260 = fmul fast float %218, %218
  %261 = fadd fast float %259, %260
  %262 = call float @dx.op.unary.f32(i32 24, float %261)  ; Sqrt(value)
  %263 = fmul fast float %239, %239
  %264 = fmul fast float %240, %240
  %265 = fadd fast float %263, %264
  %266 = fmul fast float %241, %241
  %267 = fadd fast float %265, %266
  %268 = call float @dx.op.unary.f32(i32 24, float %267)  ; Sqrt(value)
  %269 = fsub fast float %262, %268
  %270 = call float @dx.op.unary.f32(i32 6, float %269)  ; FAbs(value)
  %271 = fsub fast float 1.000000e+00, %270
  %272 = fmul fast float %256, 6.000000e+00
  %273 = fmul fast float %272, %271
  %274 = fsub fast float 7.000000e+00, %273
  %275 = call float @dx.op.unary.f32(i32 23, float %243)  ; Log(value)
  %276 = fmul fast float %274, %275
  %277 = call float @dx.op.unary.f32(i32 21, float %276)  ; Exp(value)
  %278 = call float @dx.op.unary.f32(i32 23, float %245)  ; Log(value)
  %279 = fmul fast float %274, %278
  %280 = call float @dx.op.unary.f32(i32 21, float %279)  ; Exp(value)
  %281 = call float @dx.op.binary.f32(i32 35, float %224, float %277)  ; FMax(a,b)
  %282 = call float @dx.op.binary.f32(i32 35, float %225, float %280)  ; FMax(a,b)
  %283 = add nsw i32 %226, 1
  %284 = icmp eq i32 %283, 2
  br i1 %284, label %285, label %223

; <label>:285                                     ; preds = %223
  %286 = add nsw i32 %222, 1
  %287 = icmp eq i32 %286, 2
  br i1 %287, label %288, label %219

; <label>:288                                     ; preds = %285
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %11, i32 %12, i32 undef, float %281, float %282, float %281, float %281, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void

; <label>:289                                     ; preds = %163
  %290 = add i32 %142, 1
  %291 = or i32 %290, %143
  %292 = icmp sgt i32 %291, -1
  %293 = icmp slt i32 %290, %124
  %294 = icmp slt i32 %143, %125
  %295 = and i1 %293, %294
  %296 = and i1 %292, %295
  br i1 %296, label %297, label %300

; <label>:297                                     ; preds = %289
  %298 = bitcast float %111 to i32
  %299 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 6, i32 %290, i32 %143, i32 undef, i32 %298)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %300

; <label>:300                                     ; preds = %297, %289, %163
  %301 = fcmp fast ogt float %150, 0x3FA99999A0000000
  br i1 %301, label %302, label %313

; <label>:302                                     ; preds = %300
  %303 = add i32 %143, 1
  %304 = or i32 %303, %142
  %305 = icmp sgt i32 %304, -1
  %306 = icmp slt i32 %142, %124
  %307 = icmp slt i32 %303, %125
  %308 = and i1 %306, %307
  %309 = and i1 %305, %308
  br i1 %309, label %310, label %313

; <label>:310                                     ; preds = %302
  %311 = bitcast float %111 to i32
  %312 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 6, i32 %142, i32 %303, i32 undef, i32 %311)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %313

; <label>:313                                     ; preds = %310, %302, %300
  %314 = fcmp fast ogt float %151, 0x3FA99999A0000000
  br i1 %314, label %315, label %327

; <label>:315                                     ; preds = %313
  %316 = add i32 %142, 1
  %317 = add i32 %143, 1
  %318 = or i32 %317, %316
  %319 = icmp sgt i32 %318, -1
  %320 = icmp slt i32 %316, %124
  %321 = icmp slt i32 %317, %125
  %322 = and i1 %320, %321
  %323 = and i1 %319, %322
  br i1 %323, label %324, label %327

; <label>:324                                     ; preds = %315
  %325 = bitcast float %111 to i32
  %326 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 6, i32 %316, i32 %317, i32 undef, i32 %325)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %327

; <label>:327                                     ; preds = %324, %315, %313
  %328 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %329 = extractvalue %dx.types.CBufRet.i32 %328, 0
  %330 = extractvalue %dx.types.CBufRet.i32 %328, 1
  %331 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 0, i32 %11, i32 %12, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %332 = extractvalue %dx.types.ResRet.f32 %331, 0
  %333 = extractvalue %dx.types.ResRet.f32 %331, 1
  %334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %335 = extractvalue %dx.types.CBufRet.f32 %334, 2
  %336 = extractvalue %dx.types.CBufRet.f32 %334, 3
  %337 = fmul fast float %335, %332
  %338 = fmul fast float %336, %333
  %339 = sitofp i32 %329 to float
  %340 = sitofp i32 %330 to float
  %341 = fmul fast float %337, %339
  %342 = fmul fast float %338, %340
  %343 = fmul fast float %341, %341
  %344 = fmul fast float %342, %342
  %345 = fadd fast float %343, %344
  %346 = call float @dx.op.unary.f32(i32 24, float %345)  ; Sqrt(value)
  %347 = fcmp fast ogt float %346, 0x3F847AE140000000
  br i1 %347, label %348, label %211

; <label>:348                                     ; preds = %327
  br label %165
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

