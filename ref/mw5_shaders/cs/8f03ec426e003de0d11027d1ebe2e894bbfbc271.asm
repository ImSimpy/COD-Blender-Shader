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
; shader hash: d53b05db45f52611cdb3b15d92fc1bfa
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
; r_lock_status                     texture     f32          2d      T0             t1     1
; r_prepared_input_color            texture     f32          2d      T1             t2     1
; rw_lock_status                        UAV     f32          2d      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:8-i16:16-i32:32-i64:64-f16:16-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.RWTexture2D<vector<float, 3> >" = type { <3 x float> }
%cbFSR2 = type { <2 x i32>, <2 x i32>, <2 x i32>, i32, i32, <2 x float>, <2 x float>, <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, float, float, <2 x float>, float, float, float, float, float, float }

define void @CS() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %6 = call i32 @dx.op.groupId.i32(i32 94, i32 1)  ; GroupId(component)
  %7 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %8 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %9 = shl i32 %5, 3
  %10 = shl i32 %6, 3
  %11 = add i32 %7, %9
  %12 = add i32 %8, %10
  %13 = sitofp i32 %11 to float
  %14 = sitofp i32 %12 to float
  %15 = fadd fast float %13, 5.000000e-01
  %16 = fadd fast float %14, 5.000000e-01
  %17 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %18 = extractvalue %dx.types.CBufRet.f32 %17, 2
  %19 = extractvalue %dx.types.CBufRet.f32 %17, 3
  %20 = fsub fast float %15, %18
  %21 = fsub fast float %16, %19
  %22 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %23 = extractvalue %dx.types.CBufRet.i32 %22, 0
  %24 = extractvalue %dx.types.CBufRet.i32 %22, 1
  %25 = sitofp i32 %23 to float
  %26 = sitofp i32 %24 to float
  %27 = fdiv fast float %20, %25
  %28 = fdiv fast float %21, %26
  %29 = extractvalue %dx.types.CBufRet.i32 %22, 2
  %30 = extractvalue %dx.types.CBufRet.i32 %22, 3
  %31 = sitofp i32 %29 to float
  %32 = sitofp i32 %30 to float
  %33 = fmul fast float %31, %27
  %34 = fmul fast float %32, %28
  %35 = call float @dx.op.unary.f32(i32 27, float %33)  ; Round_ni(value)
  %36 = call float @dx.op.unary.f32(i32 27, float %34)  ; Round_ni(value)
  %37 = fadd fast float %35, 5.000000e-01
  %38 = fadd fast float %36, 5.000000e-01
  %39 = fptosi float %37 to i32
  %40 = fptosi float %38 to i32
  %41 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %39, i32 %40, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %42 = extractvalue %dx.types.ResRet.f32 %41, 0
  %43 = extractvalue %dx.types.ResRet.f32 %41, 1
  %44 = extractvalue %dx.types.ResRet.f32 %41, 2
  %45 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %46 = extractvalue %dx.types.CBufRet.f32 %45, 3
  %47 = fmul fast float %46, 2.000000e+00
  %48 = fsub fast float %42, %47
  %49 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %11, i32 %12, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %50 = extractvalue %dx.types.ResRet.f32 %49, 3
  %51 = add i32 %23, -1
  %52 = add i32 %24, -1
  %53 = add i32 %11, -1
  %54 = add i32 %12, -1
  %55 = call i32 @dx.op.binary.i32(i32 37, i32 %53, i32 0)  ; IMax(a,b)
  %56 = call i32 @dx.op.binary.i32(i32 37, i32 %54, i32 0)  ; IMax(a,b)
  %57 = call i32 @dx.op.binary.i32(i32 38, i32 %55, i32 %51)  ; IMin(a,b)
  %58 = call i32 @dx.op.binary.i32(i32 38, i32 %56, i32 %52)  ; IMin(a,b)
  %59 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %57, i32 %58, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %60 = extractvalue %dx.types.ResRet.f32 %59, 3
  %61 = call float @dx.op.binary.f32(i32 35, float %60, float %50)  ; FMax(a,b)
  %62 = call float @dx.op.binary.f32(i32 36, float %60, float %50)  ; FMin(a,b)
  %63 = fdiv fast float %61, %62
  %64 = fcmp fast ogt float %63, 0.000000e+00
  %65 = fcmp fast olt float %63, 0x3FF0CCCCC0000000
  %66 = and i1 %64, %65
  br i1 %66, label %70, label %67

; <label>:67                                      ; preds = %0
  %68 = call float @dx.op.binary.f32(i32 36, float 0x47EFFFFFE0000000, float %60)  ; FMin(a,b)
  %69 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %60)  ; FMax(a,b)
  br label %70

; <label>:70                                      ; preds = %67, %0
  %71 = phi float [ %68, %67 ], [ 0x47EFFFFFE0000000, %0 ]
  %72 = phi float [ %69, %67 ], [ 0.000000e+00, %0 ]
  %73 = phi i32 [ 16, %67 ], [ 17, %0 ]
  %74 = call i32 @dx.op.binary.i32(i32 37, i32 %11, i32 0)  ; IMax(a,b)
  %75 = call i32 @dx.op.binary.i32(i32 38, i32 %74, i32 %51)  ; IMin(a,b)
  %76 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %75, i32 %58, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %77 = extractvalue %dx.types.ResRet.f32 %76, 3
  %78 = call float @dx.op.binary.f32(i32 35, float %77, float %50)  ; FMax(a,b)
  %79 = call float @dx.op.binary.f32(i32 36, float %77, float %50)  ; FMin(a,b)
  %80 = fdiv fast float %78, %79
  %81 = fcmp fast ogt float %80, 0.000000e+00
  %82 = fcmp fast olt float %80, 0x3FF0CCCCC0000000
  %83 = and i1 %81, %82
  br i1 %83, label %87, label %84

; <label>:84                                      ; preds = %70
  %85 = call float @dx.op.binary.f32(i32 36, float %71, float %77)  ; FMin(a,b)
  %86 = call float @dx.op.binary.f32(i32 35, float %72, float %77)  ; FMax(a,b)
  br label %89

; <label>:87                                      ; preds = %70
  %88 = or i32 %73, 2
  br label %89

; <label>:89                                      ; preds = %87, %84
  %90 = phi float [ %71, %87 ], [ %85, %84 ]
  %91 = phi float [ %72, %87 ], [ %86, %84 ]
  %92 = phi i32 [ %88, %87 ], [ %73, %84 ]
  %93 = add i32 %11, 1
  %94 = call i32 @dx.op.binary.i32(i32 37, i32 %93, i32 0)  ; IMax(a,b)
  %95 = call i32 @dx.op.binary.i32(i32 38, i32 %94, i32 %51)  ; IMin(a,b)
  %96 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %95, i32 %58, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %97 = extractvalue %dx.types.ResRet.f32 %96, 3
  %98 = call float @dx.op.binary.f32(i32 35, float %97, float %50)  ; FMax(a,b)
  %99 = call float @dx.op.binary.f32(i32 36, float %97, float %50)  ; FMin(a,b)
  %100 = fdiv fast float %98, %99
  %101 = fcmp fast ogt float %100, 0.000000e+00
  %102 = fcmp fast olt float %100, 0x3FF0CCCCC0000000
  %103 = and i1 %101, %102
  br i1 %103, label %107, label %104

; <label>:104                                     ; preds = %89
  %105 = call float @dx.op.binary.f32(i32 36, float %90, float %97)  ; FMin(a,b)
  %106 = call float @dx.op.binary.f32(i32 35, float %91, float %97)  ; FMax(a,b)
  br label %109

; <label>:107                                     ; preds = %89
  %108 = or i32 %92, 4
  br label %109

; <label>:109                                     ; preds = %107, %104
  %110 = phi float [ %90, %107 ], [ %105, %104 ]
  %111 = phi float [ %91, %107 ], [ %106, %104 ]
  %112 = phi i32 [ %108, %107 ], [ %92, %104 ]
  %113 = call i32 @dx.op.binary.i32(i32 37, i32 %12, i32 0)  ; IMax(a,b)
  %114 = call i32 @dx.op.binary.i32(i32 38, i32 %113, i32 %52)  ; IMin(a,b)
  %115 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %57, i32 %114, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %116 = extractvalue %dx.types.ResRet.f32 %115, 3
  %117 = call float @dx.op.binary.f32(i32 35, float %116, float %50)  ; FMax(a,b)
  %118 = call float @dx.op.binary.f32(i32 36, float %116, float %50)  ; FMin(a,b)
  %119 = fdiv fast float %117, %118
  %120 = fcmp fast ogt float %119, 0.000000e+00
  %121 = fcmp fast olt float %119, 0x3FF0CCCCC0000000
  %122 = and i1 %120, %121
  br i1 %122, label %126, label %123

; <label>:123                                     ; preds = %109
  %124 = call float @dx.op.binary.f32(i32 36, float %110, float %116)  ; FMin(a,b)
  %125 = call float @dx.op.binary.f32(i32 35, float %111, float %116)  ; FMax(a,b)
  br label %128

; <label>:126                                     ; preds = %109
  %127 = or i32 %112, 8
  br label %128

; <label>:128                                     ; preds = %126, %123
  %129 = phi float [ %110, %126 ], [ %124, %123 ]
  %130 = phi float [ %111, %126 ], [ %125, %123 ]
  %131 = phi i32 [ %127, %126 ], [ %112, %123 ]
  %132 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %95, i32 %114, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %133 = extractvalue %dx.types.ResRet.f32 %132, 3
  %134 = call float @dx.op.binary.f32(i32 35, float %133, float %50)  ; FMax(a,b)
  %135 = call float @dx.op.binary.f32(i32 36, float %133, float %50)  ; FMin(a,b)
  %136 = fdiv fast float %134, %135
  %137 = fcmp fast ogt float %136, 0.000000e+00
  %138 = fcmp fast olt float %136, 0x3FF0CCCCC0000000
  %139 = and i1 %137, %138
  br i1 %139, label %143, label %140

; <label>:140                                     ; preds = %128
  %141 = call float @dx.op.binary.f32(i32 36, float %129, float %133)  ; FMin(a,b)
  %142 = call float @dx.op.binary.f32(i32 35, float %130, float %133)  ; FMax(a,b)
  br label %145

; <label>:143                                     ; preds = %128
  %144 = or i32 %131, 32
  br label %145

; <label>:145                                     ; preds = %143, %140
  %146 = phi float [ %129, %143 ], [ %141, %140 ]
  %147 = phi float [ %130, %143 ], [ %142, %140 ]
  %148 = phi i32 [ %144, %143 ], [ %131, %140 ]
  %149 = add i32 %12, 1
  %150 = call i32 @dx.op.binary.i32(i32 37, i32 %149, i32 0)  ; IMax(a,b)
  %151 = call i32 @dx.op.binary.i32(i32 38, i32 %150, i32 %52)  ; IMin(a,b)
  %152 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %57, i32 %151, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %153 = extractvalue %dx.types.ResRet.f32 %152, 3
  %154 = call float @dx.op.binary.f32(i32 35, float %153, float %50)  ; FMax(a,b)
  %155 = call float @dx.op.binary.f32(i32 36, float %153, float %50)  ; FMin(a,b)
  %156 = fdiv fast float %154, %155
  %157 = fcmp fast ogt float %156, 0.000000e+00
  %158 = fcmp fast olt float %156, 0x3FF0CCCCC0000000
  %159 = and i1 %157, %158
  br i1 %159, label %163, label %160

; <label>:160                                     ; preds = %145
  %161 = call float @dx.op.binary.f32(i32 36, float %146, float %153)  ; FMin(a,b)
  %162 = call float @dx.op.binary.f32(i32 35, float %147, float %153)  ; FMax(a,b)
  br label %165

; <label>:163                                     ; preds = %145
  %164 = or i32 %148, 64
  br label %165

; <label>:165                                     ; preds = %163, %160
  %166 = phi float [ %146, %163 ], [ %161, %160 ]
  %167 = phi float [ %147, %163 ], [ %162, %160 ]
  %168 = phi i32 [ %164, %163 ], [ %148, %160 ]
  %169 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %75, i32 %151, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %170 = extractvalue %dx.types.ResRet.f32 %169, 3
  %171 = call float @dx.op.binary.f32(i32 35, float %170, float %50)  ; FMax(a,b)
  %172 = call float @dx.op.binary.f32(i32 36, float %170, float %50)  ; FMin(a,b)
  %173 = fdiv fast float %171, %172
  %174 = fcmp fast ogt float %173, 0.000000e+00
  %175 = fcmp fast olt float %173, 0x3FF0CCCCC0000000
  %176 = and i1 %174, %175
  br i1 %176, label %180, label %177

; <label>:177                                     ; preds = %165
  %178 = call float @dx.op.binary.f32(i32 36, float %166, float %170)  ; FMin(a,b)
  %179 = call float @dx.op.binary.f32(i32 35, float %167, float %170)  ; FMax(a,b)
  br label %182

; <label>:180                                     ; preds = %165
  %181 = or i32 %168, 128
  br label %182

; <label>:182                                     ; preds = %180, %177
  %183 = phi float [ %166, %180 ], [ %178, %177 ]
  %184 = phi float [ %167, %180 ], [ %179, %177 ]
  %185 = phi i32 [ %181, %180 ], [ %168, %177 ]
  %186 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %95, i32 %151, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %187 = extractvalue %dx.types.ResRet.f32 %186, 3
  %188 = call float @dx.op.binary.f32(i32 35, float %187, float %50)  ; FMax(a,b)
  %189 = call float @dx.op.binary.f32(i32 36, float %187, float %50)  ; FMin(a,b)
  %190 = fdiv fast float %188, %189
  %191 = fcmp fast ogt float %190, 0.000000e+00
  %192 = fcmp fast olt float %190, 0x3FF0CCCCC0000000
  %193 = and i1 %191, %192
  br i1 %193, label %197, label %194

; <label>:194                                     ; preds = %182
  %195 = call float @dx.op.binary.f32(i32 36, float %183, float %187)  ; FMin(a,b)
  %196 = call float @dx.op.binary.f32(i32 35, float %184, float %187)  ; FMax(a,b)
  br label %199

; <label>:197                                     ; preds = %182
  %198 = or i32 %185, 256
  br label %199

; <label>:199                                     ; preds = %197, %194
  %200 = phi float [ %183, %197 ], [ %195, %194 ]
  %201 = phi float [ %184, %197 ], [ %196, %194 ]
  %202 = phi i32 [ %198, %197 ], [ %185, %194 ]
  %203 = fcmp fast ogt float %50, %201
  %204 = fcmp fast olt float %50, %200
  %205 = or i1 %204, %203
  br i1 %205, label %206, label %220

; <label>:206                                     ; preds = %199
  %207 = and i32 %202, 27
  %208 = icmp eq i32 %207, 27
  %209 = and i32 %202, 54
  %210 = icmp eq i32 %209, 54
  %211 = or i1 %208, %210
  %212 = and i32 %202, 216
  %213 = icmp eq i32 %212, 216
  %214 = or i1 %213, %211
  br i1 %214, label %220, label %215

; <label>:215                                     ; preds = %206
  %216 = and i32 %202, 432
  %217 = icmp eq i32 %216, 432
  %218 = select i1 %217, float 0.000000e+00, float 1.000000e+00
  %219 = fcmp ogt float %218, 0.000000e+00
  br label %220

; <label>:220                                     ; preds = %215, %206, %199
  %221 = phi i1 [ false, %199 ], [ false, %206 ], [ %219, %215 ]
  br i1 %221, label %222, label %226

; <label>:222                                     ; preds = %220
  %223 = fcmp fast oeq float %48, 0.000000e+00
  %224 = select i1 %223, float %46, float %47
  %225 = fsub float -0.000000e+00, %224
  br label %226

; <label>:226                                     ; preds = %222, %220
  %227 = phi float [ %225, %222 ], [ %48, %220 ]
  %228 = phi i1 [ true, %222 ], [ false, %220 ]
  br i1 %228, label %229, label %231

; <label>:229                                     ; preds = %226
  %230 = fadd fast float %47, %227
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %39, i32 %40, i32 undef, float %230, float %43, float %44, float %230, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %231

; <label>:231                                     ; preds = %229, %226
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

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
!dx.entryPoints = !{!13}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 2}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 2}
!4 = !{!5, !9, !11, null}
!5 = !{!6, !8}
!6 = !{i32 0, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!9 = !{!10}
!10 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!11 = !{!12}
!12 = !{i32 0, %cbFSR2* undef, !"", i32 0, i32 0, i32 1, i32 144, null}
!13 = !{void ()* @CS, !"CS", null, !4, !14}
!14 = !{i32 0, i64 8388608, i32 4, !15}
!15 = !{i32 8, i32 8, i32 1}

