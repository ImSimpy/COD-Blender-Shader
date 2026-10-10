;
; Note: shader requires additional functionality:
;       Typed UAV Load Additional Formats
;       Wave level operations
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
; shader hash: 101f64887c645e419e7d81cf9a4c3854
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
; cbuffer cbSPD
; {
;
;   struct cbSPD
;   {
;
;       uint mips;                                    ; Offset:    0
;       uint numWorkGroups;                           ; Offset:    4
;       uint2 workGroupOffset;                        ; Offset:    8
;       uint2 renderSize;                             ; Offset:   16
;   
;   } cbSPD;                                          ; Offset:    0 Size:    24
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
; cbFSR2                            cbuffer      NA          NA     CB0            cb0     1
; cbSPD                             cbuffer      NA          NA     CB1            cb1     1
; r_input_color_jittered            texture     f32          2d      T0             t0     1
; rw_img_mip_shading_change             UAV     f32          2d      U0             u1     1
; rw_img_mip_5                          UAV     f32          2d      U1             u2     1
; rw_exposure                           UAV     f32          2d      U2             u3     1
; rw_spd_global_atomic                  UAV     u32          2d      U3             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.RWTexture2D<float>" = type { float }
%"class.RWTexture2D<vector<float, 2> >" = type { <2 x float> }
%"class.RWTexture2D<unsigned int>" = type { i32 }
%cbFSR2 = type { <2 x i32>, <2 x i32>, <2 x i32>, i32, i32, <2 x float>, <2 x float>, <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, float, float, <2 x float>, float, float, float, float, float, float }
%cbSPD = type { i32, i32, <2 x i32>, <2 x i32> }

@"\01?spdCounter@@3IA" = external addrspace(3) global i32, align 4
@"\01?spdIntermediateR@@3PAY0BA@$$CAMA.1dim" = addrspace(3) global [256 x float] undef, align 4
@"\01?spdIntermediateG@@3PAY0BA@$$CAMA.1dim" = addrspace(3) global [256 x float] undef, align 4
@"\01?spdIntermediateB@@3PAY0BA@$$CAMA.1dim" = addrspace(3) global [256 x float] undef, align 4
@"\01?spdIntermediateA@@3PAY0BA@$$CAMA.1dim" = addrspace(3) global [256 x float] undef, align 4

define void @CS() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %9 = call i32 @dx.op.groupId.i32(i32 94, i32 1)  ; GroupId(component)
  %10 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %11 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %12 = extractvalue %dx.types.CBufRet.i32 %11, 2
  %13 = extractvalue %dx.types.CBufRet.i32 %11, 3
  %14 = extractvalue %dx.types.CBufRet.i32 %11, 1
  %15 = extractvalue %dx.types.CBufRet.i32 %11, 0
  %16 = add i32 %12, %8
  %17 = add i32 %13, %9
  %18 = lshr i32 %10, 2
  %19 = and i32 %10, 1
  %20 = and i32 %18, 6
  %21 = or i32 %20, %19
  %22 = lshr i32 %10, 1
  %23 = and i32 %22, 3
  %24 = lshr i32 %10, 3
  %25 = and i32 %24, 4
  %26 = or i32 %23, %25
  %27 = and i32 %24, 8
  %28 = or i32 %21, %27
  %29 = lshr i32 %10, 7
  %30 = shl nuw nsw i32 %29, 3
  %31 = or i32 %26, %30
  %32 = shl i32 %16, 6
  %33 = shl i32 %17, 6
  %34 = shl nuw nsw i32 %28, 1
  %35 = shl nuw nsw i32 %31, 1
  %36 = or i32 %34, %32
  %37 = add i32 %35, %33
  %38 = shl i32 %16, 5
  %39 = shl i32 %17, 5
  %40 = or i32 %38, %28
  %41 = add i32 %39, %31
  %42 = or i32 %36, 1
  %43 = or i32 %37, 1
  %44 = sitofp i32 %36 to float
  %45 = sitofp i32 %37 to float
  %46 = fptosi float %44 to i32
  %47 = fptosi float %45 to i32
  %48 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %46, i32 %47, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %49 = extractvalue %dx.types.ResRet.f32 %48, 0
  %50 = extractvalue %dx.types.ResRet.f32 %48, 1
  %51 = extractvalue %dx.types.ResRet.f32 %48, 2
  %52 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %53 = extractvalue %dx.types.CBufRet.f32 %52, 2
  %54 = fdiv fast float %49, %53
  %55 = fdiv fast float %50, %53
  %56 = fdiv fast float %51, %53
  %57 = call float @dx.op.dot3.f32(i32 55, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000, float %54, float %55, float %56)  ; Dot3(ax,ay,az,bx,by,bz)
  %58 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %57)  ; FMax(a,b)
  %59 = call float @dx.op.unary.f32(i32 23, float %58)  ; Log(value)
  %60 = fmul fast float %59, 0x3FE62E4300000000
  %61 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %62 = extractvalue %dx.types.CBufRet.i32 %61, 0
  %63 = extractvalue %dx.types.CBufRet.i32 %61, 1
  %64 = sitofp i32 %62 to float
  %65 = sitofp i32 %63 to float
  %66 = fcmp fast olt float %44, %64
  %67 = fcmp fast olt float %45, %65
  %68 = and i1 %66, %67
  %69 = select i1 %68, float %60, float 0.000000e+00
  %70 = sitofp i32 %43 to float
  %71 = fptosi float %70 to i32
  %72 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %46, i32 %71, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %73 = extractvalue %dx.types.ResRet.f32 %72, 0
  %74 = extractvalue %dx.types.ResRet.f32 %72, 1
  %75 = extractvalue %dx.types.ResRet.f32 %72, 2
  %76 = fdiv fast float %73, %53
  %77 = fdiv fast float %74, %53
  %78 = fdiv fast float %75, %53
  %79 = call float @dx.op.dot3.f32(i32 55, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000, float %76, float %77, float %78)  ; Dot3(ax,ay,az,bx,by,bz)
  %80 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %79)  ; FMax(a,b)
  %81 = call float @dx.op.unary.f32(i32 23, float %80)  ; Log(value)
  %82 = fmul fast float %81, 0x3FE62E4300000000
  %83 = fcmp fast olt float %70, %65
  %84 = and i1 %66, %83
  %85 = select i1 %84, float %82, float 0.000000e+00
  %86 = sitofp i32 %42 to float
  %87 = fptosi float %86 to i32
  %88 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %87, i32 %47, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %89 = extractvalue %dx.types.ResRet.f32 %88, 0
  %90 = extractvalue %dx.types.ResRet.f32 %88, 1
  %91 = extractvalue %dx.types.ResRet.f32 %88, 2
  %92 = fdiv fast float %89, %53
  %93 = fdiv fast float %90, %53
  %94 = fdiv fast float %91, %53
  %95 = call float @dx.op.dot3.f32(i32 55, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000, float %92, float %93, float %94)  ; Dot3(ax,ay,az,bx,by,bz)
  %96 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %95)  ; FMax(a,b)
  %97 = call float @dx.op.unary.f32(i32 23, float %96)  ; Log(value)
  %98 = fmul fast float %97, 0x3FE62E4300000000
  %99 = fcmp fast olt float %86, %64
  %100 = and i1 %99, %67
  %101 = select i1 %100, float %98, float 0.000000e+00
  %102 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %87, i32 %71, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %103 = extractvalue %dx.types.ResRet.f32 %102, 0
  %104 = extractvalue %dx.types.ResRet.f32 %102, 1
  %105 = extractvalue %dx.types.ResRet.f32 %102, 2
  %106 = fdiv fast float %103, %53
  %107 = fdiv fast float %104, %53
  %108 = fdiv fast float %105, %53
  %109 = call float @dx.op.dot3.f32(i32 55, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000, float %106, float %107, float %108)  ; Dot3(ax,ay,az,bx,by,bz)
  %110 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %109)  ; FMax(a,b)
  %111 = call float @dx.op.unary.f32(i32 23, float %110)  ; Log(value)
  %112 = fmul fast float %111, 0x3FE62E4300000000
  %113 = and i1 %99, %83
  %114 = select i1 %113, float %112, float 0.000000e+00
  %115 = fadd fast float %85, %69
  %116 = fadd fast float %115, %101
  %117 = fadd fast float %116, %114
  %118 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %119 = extractvalue %dx.types.CBufRet.i32 %118, 2
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %124

; <label>:121                                     ; preds = %0
  %122 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 undef, i32 %40, i32 %41, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %123 = extractvalue %dx.types.ResRet.f32 %122, 0
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %40, i32 %41, i32 undef, float %123, float %123, float %123, float %123, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %124

; <label>:124                                     ; preds = %121, %0
  %125 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %126 = extractvalue %dx.types.CBufRet.i32 %125, 0
  %127 = icmp eq i32 %126, 1
  %128 = or i32 %40, %41
  %129 = icmp eq i32 %128, 0
  %130 = and i1 %129, %127
  br i1 %130, label %131, label %158

; <label>:131                                     ; preds = %124
  %132 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 undef, i32 0, i32 0, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %133 = extractvalue %dx.types.ResRet.f32 %132, 1
  %134 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.i32 %134, 0
  %136 = extractvalue %dx.types.CBufRet.i32 %134, 1
  %137 = mul i32 %135, %136
  %138 = uitofp i32 %137 to float
  %139 = fdiv fast float %117, %138
  %140 = fcmp fast olt float %133, 1.000000e+08
  br i1 %140, label %141, label %150

; <label>:141                                     ; preds = %131
  %142 = fsub fast float %139, %133
  %143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %144 = extractvalue %dx.types.CBufRet.f32 %143, 1
  %145 = fmul fast float %144, 0xBFF7154760000000
  %146 = call float @dx.op.unary.f32(i32 21, float %145)  ; Exp(value)
  %147 = fsub fast float 1.000000e+00, %146
  %148 = fmul fast float %147, %142
  %149 = fadd fast float %148, %133
  br label %150

; <label>:150                                     ; preds = %141, %131
  %151 = phi float [ %149, %141 ], [ %139, %131 ]
  %152 = fmul fast float %151, 0x3FF7154760000000
  %153 = call float @dx.op.unary.f32(i32 21, float %152)  ; Exp(value)
  %154 = fmul fast float %153, 8.000000e+00
  %155 = call float @dx.op.unary.f32(i32 23, float %154)  ; Log(value)
  %156 = call float @dx.op.unary.f32(i32 21, float %155)  ; Exp(value)
  %157 = fdiv fast float 0x3FEAAAAAA0000000, %156
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 0, i32 0, i32 undef, float %157, float %151, float %157, float %157, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %158

; <label>:158                                     ; preds = %150, %124
  %159 = or i32 %36, 32
  %160 = or i32 %40, 16
  %161 = or i32 %36, 33
  %162 = sitofp i32 %159 to float
  %163 = fptosi float %162 to i32
  %164 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %163, i32 %47, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %165 = extractvalue %dx.types.ResRet.f32 %164, 0
  %166 = extractvalue %dx.types.ResRet.f32 %164, 1
  %167 = extractvalue %dx.types.ResRet.f32 %164, 2
  %168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %169 = extractvalue %dx.types.CBufRet.f32 %168, 2
  %170 = fdiv fast float %165, %169
  %171 = fdiv fast float %166, %169
  %172 = fdiv fast float %167, %169
  %173 = call float @dx.op.dot3.f32(i32 55, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000, float %170, float %171, float %172)  ; Dot3(ax,ay,az,bx,by,bz)
  %174 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %173)  ; FMax(a,b)
  %175 = call float @dx.op.unary.f32(i32 23, float %174)  ; Log(value)
  %176 = fmul fast float %175, 0x3FE62E4300000000
  %177 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %178 = extractvalue %dx.types.CBufRet.i32 %177, 0
  %179 = extractvalue %dx.types.CBufRet.i32 %177, 1
  %180 = sitofp i32 %178 to float
  %181 = sitofp i32 %179 to float
  %182 = fcmp fast olt float %162, %180
  %183 = fcmp fast olt float %45, %181
  %184 = and i1 %182, %183
  %185 = select i1 %184, float %176, float 0.000000e+00
  %186 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %163, i32 %71, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %187 = extractvalue %dx.types.ResRet.f32 %186, 0
  %188 = extractvalue %dx.types.ResRet.f32 %186, 1
  %189 = extractvalue %dx.types.ResRet.f32 %186, 2
  %190 = fdiv fast float %187, %169
  %191 = fdiv fast float %188, %169
  %192 = fdiv fast float %189, %169
  %193 = call float @dx.op.dot3.f32(i32 55, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000, float %190, float %191, float %192)  ; Dot3(ax,ay,az,bx,by,bz)
  %194 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %193)  ; FMax(a,b)
  %195 = call float @dx.op.unary.f32(i32 23, float %194)  ; Log(value)
  %196 = fmul fast float %195, 0x3FE62E4300000000
  %197 = fcmp fast olt float %70, %181
  %198 = and i1 %182, %197
  %199 = select i1 %198, float %196, float 0.000000e+00
  %200 = sitofp i32 %161 to float
  %201 = fptosi float %200 to i32
  %202 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %201, i32 %47, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %203 = extractvalue %dx.types.ResRet.f32 %202, 0
  %204 = extractvalue %dx.types.ResRet.f32 %202, 1
  %205 = extractvalue %dx.types.ResRet.f32 %202, 2
  %206 = fdiv fast float %203, %169
  %207 = fdiv fast float %204, %169
  %208 = fdiv fast float %205, %169
  %209 = call float @dx.op.dot3.f32(i32 55, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000, float %206, float %207, float %208)  ; Dot3(ax,ay,az,bx,by,bz)
  %210 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %209)  ; FMax(a,b)
  %211 = call float @dx.op.unary.f32(i32 23, float %210)  ; Log(value)
  %212 = fmul fast float %211, 0x3FE62E4300000000
  %213 = fcmp fast olt float %200, %180
  %214 = and i1 %213, %183
  %215 = select i1 %214, float %212, float 0.000000e+00
  %216 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %201, i32 %71, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %217 = extractvalue %dx.types.ResRet.f32 %216, 0
  %218 = extractvalue %dx.types.ResRet.f32 %216, 1
  %219 = extractvalue %dx.types.ResRet.f32 %216, 2
  %220 = fdiv fast float %217, %169
  %221 = fdiv fast float %218, %169
  %222 = fdiv fast float %219, %169
  %223 = call float @dx.op.dot3.f32(i32 55, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000, float %220, float %221, float %222)  ; Dot3(ax,ay,az,bx,by,bz)
  %224 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %223)  ; FMax(a,b)
  %225 = call float @dx.op.unary.f32(i32 23, float %224)  ; Log(value)
  %226 = fmul fast float %225, 0x3FE62E4300000000
  %227 = and i1 %213, %197
  %228 = select i1 %227, float %226, float 0.000000e+00
  %229 = fadd fast float %199, %185
  %230 = fadd fast float %229, %215
  %231 = fadd fast float %230, %228
  %232 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %233 = extractvalue %dx.types.CBufRet.i32 %232, 2
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %238

; <label>:235                                     ; preds = %158
  %236 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 undef, i32 %160, i32 %41, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %237 = extractvalue %dx.types.ResRet.f32 %236, 0
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %160, i32 %41, i32 undef, float %237, float %237, float %237, float %237, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %238

; <label>:238                                     ; preds = %235, %158
  %239 = or i32 %33, 32
  %240 = add i32 %239, %35
  %241 = add nuw nsw i32 %31, 16
  %242 = add i32 %241, %39
  %243 = or i32 %240, 1
  %244 = sitofp i32 %240 to float
  %245 = fptosi float %244 to i32
  %246 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %46, i32 %245, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %247 = extractvalue %dx.types.ResRet.f32 %246, 0
  %248 = extractvalue %dx.types.ResRet.f32 %246, 1
  %249 = extractvalue %dx.types.ResRet.f32 %246, 2
  %250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %251 = extractvalue %dx.types.CBufRet.f32 %250, 2
  %252 = fdiv fast float %247, %251
  %253 = fdiv fast float %248, %251
  %254 = fdiv fast float %249, %251
  %255 = call float @dx.op.dot3.f32(i32 55, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000, float %252, float %253, float %254)  ; Dot3(ax,ay,az,bx,by,bz)
  %256 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %255)  ; FMax(a,b)
  %257 = call float @dx.op.unary.f32(i32 23, float %256)  ; Log(value)
  %258 = fmul fast float %257, 0x3FE62E4300000000
  %259 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %260 = extractvalue %dx.types.CBufRet.i32 %259, 0
  %261 = extractvalue %dx.types.CBufRet.i32 %259, 1
  %262 = sitofp i32 %260 to float
  %263 = sitofp i32 %261 to float
  %264 = fcmp fast olt float %44, %262
  %265 = fcmp fast olt float %244, %263
  %266 = and i1 %264, %265
  %267 = select i1 %266, float %258, float 0.000000e+00
  %268 = sitofp i32 %243 to float
  %269 = fptosi float %268 to i32
  %270 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %46, i32 %269, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %271 = extractvalue %dx.types.ResRet.f32 %270, 0
  %272 = extractvalue %dx.types.ResRet.f32 %270, 1
  %273 = extractvalue %dx.types.ResRet.f32 %270, 2
  %274 = fdiv fast float %271, %251
  %275 = fdiv fast float %272, %251
  %276 = fdiv fast float %273, %251
  %277 = call float @dx.op.dot3.f32(i32 55, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000, float %274, float %275, float %276)  ; Dot3(ax,ay,az,bx,by,bz)
  %278 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %277)  ; FMax(a,b)
  %279 = call float @dx.op.unary.f32(i32 23, float %278)  ; Log(value)
  %280 = fmul fast float %279, 0x3FE62E4300000000
  %281 = fcmp fast olt float %268, %263
  %282 = and i1 %264, %281
  %283 = select i1 %282, float %280, float 0.000000e+00
  %284 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %87, i32 %245, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %285 = extractvalue %dx.types.ResRet.f32 %284, 0
  %286 = extractvalue %dx.types.ResRet.f32 %284, 1
  %287 = extractvalue %dx.types.ResRet.f32 %284, 2
  %288 = fdiv fast float %285, %251
  %289 = fdiv fast float %286, %251
  %290 = fdiv fast float %287, %251
  %291 = call float @dx.op.dot3.f32(i32 55, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000, float %288, float %289, float %290)  ; Dot3(ax,ay,az,bx,by,bz)
  %292 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %291)  ; FMax(a,b)
  %293 = call float @dx.op.unary.f32(i32 23, float %292)  ; Log(value)
  %294 = fmul fast float %293, 0x3FE62E4300000000
  %295 = fcmp fast olt float %86, %262
  %296 = and i1 %295, %265
  %297 = select i1 %296, float %294, float 0.000000e+00
  %298 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %87, i32 %269, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %299 = extractvalue %dx.types.ResRet.f32 %298, 0
  %300 = extractvalue %dx.types.ResRet.f32 %298, 1
  %301 = extractvalue %dx.types.ResRet.f32 %298, 2
  %302 = fdiv fast float %299, %251
  %303 = fdiv fast float %300, %251
  %304 = fdiv fast float %301, %251
  %305 = call float @dx.op.dot3.f32(i32 55, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000, float %302, float %303, float %304)  ; Dot3(ax,ay,az,bx,by,bz)
  %306 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %305)  ; FMax(a,b)
  %307 = call float @dx.op.unary.f32(i32 23, float %306)  ; Log(value)
  %308 = fmul fast float %307, 0x3FE62E4300000000
  %309 = and i1 %295, %281
  %310 = select i1 %309, float %308, float 0.000000e+00
  %311 = fadd fast float %283, %267
  %312 = fadd fast float %311, %297
  %313 = fadd fast float %312, %310
  %314 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %315 = extractvalue %dx.types.CBufRet.i32 %314, 2
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %317, label %320

; <label>:317                                     ; preds = %238
  %318 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 undef, i32 %40, i32 %242, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %319 = extractvalue %dx.types.ResRet.f32 %318, 0
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %40, i32 %242, i32 undef, float %319, float %319, float %319, float %319, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %320

; <label>:320                                     ; preds = %317, %238
  %321 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %322 = extractvalue %dx.types.CBufRet.i32 %321, 0
  %323 = icmp eq i32 %322, 1
  %324 = or i32 %242, %40
  %325 = icmp eq i32 %324, 0
  %326 = and i1 %325, %323
  br i1 %326, label %327, label %354

; <label>:327                                     ; preds = %320
  %328 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 undef, i32 0, i32 0, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %329 = extractvalue %dx.types.ResRet.f32 %328, 1
  %330 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %331 = extractvalue %dx.types.CBufRet.i32 %330, 0
  %332 = extractvalue %dx.types.CBufRet.i32 %330, 1
  %333 = mul i32 %331, %332
  %334 = uitofp i32 %333 to float
  %335 = fdiv fast float %313, %334
  %336 = fcmp fast olt float %329, 1.000000e+08
  br i1 %336, label %337, label %346

; <label>:337                                     ; preds = %327
  %338 = fsub fast float %335, %329
  %339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %340 = extractvalue %dx.types.CBufRet.f32 %339, 1
  %341 = fmul fast float %340, 0xBFF7154760000000
  %342 = call float @dx.op.unary.f32(i32 21, float %341)  ; Exp(value)
  %343 = fsub fast float 1.000000e+00, %342
  %344 = fmul fast float %343, %338
  %345 = fadd fast float %344, %329
  br label %346

; <label>:346                                     ; preds = %337, %327
  %347 = phi float [ %345, %337 ], [ %335, %327 ]
  %348 = fmul fast float %347, 0x3FF7154760000000
  %349 = call float @dx.op.unary.f32(i32 21, float %348)  ; Exp(value)
  %350 = fmul fast float %349, 8.000000e+00
  %351 = call float @dx.op.unary.f32(i32 23, float %350)  ; Log(value)
  %352 = call float @dx.op.unary.f32(i32 21, float %351)  ; Exp(value)
  %353 = fdiv fast float 0x3FEAAAAAA0000000, %352
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 0, i32 0, i32 undef, float %353, float %347, float %353, float %353, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %354

; <label>:354                                     ; preds = %346, %320
  %355 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %163, i32 %245, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %356 = extractvalue %dx.types.ResRet.f32 %355, 0
  %357 = extractvalue %dx.types.ResRet.f32 %355, 1
  %358 = extractvalue %dx.types.ResRet.f32 %355, 2
  %359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %360 = extractvalue %dx.types.CBufRet.f32 %359, 2
  %361 = fdiv fast float %356, %360
  %362 = fdiv fast float %357, %360
  %363 = fdiv fast float %358, %360
  %364 = call float @dx.op.dot3.f32(i32 55, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000, float %361, float %362, float %363)  ; Dot3(ax,ay,az,bx,by,bz)
  %365 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %364)  ; FMax(a,b)
  %366 = call float @dx.op.unary.f32(i32 23, float %365)  ; Log(value)
  %367 = fmul fast float %366, 0x3FE62E4300000000
  %368 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %369 = extractvalue %dx.types.CBufRet.i32 %368, 0
  %370 = extractvalue %dx.types.CBufRet.i32 %368, 1
  %371 = sitofp i32 %369 to float
  %372 = sitofp i32 %370 to float
  %373 = fcmp fast olt float %162, %371
  %374 = fcmp fast olt float %244, %372
  %375 = and i1 %373, %374
  %376 = select i1 %375, float %367, float 0.000000e+00
  %377 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %163, i32 %269, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %378 = extractvalue %dx.types.ResRet.f32 %377, 0
  %379 = extractvalue %dx.types.ResRet.f32 %377, 1
  %380 = extractvalue %dx.types.ResRet.f32 %377, 2
  %381 = fdiv fast float %378, %360
  %382 = fdiv fast float %379, %360
  %383 = fdiv fast float %380, %360
  %384 = call float @dx.op.dot3.f32(i32 55, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000, float %381, float %382, float %383)  ; Dot3(ax,ay,az,bx,by,bz)
  %385 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %384)  ; FMax(a,b)
  %386 = call float @dx.op.unary.f32(i32 23, float %385)  ; Log(value)
  %387 = fmul fast float %386, 0x3FE62E4300000000
  %388 = fcmp fast olt float %268, %372
  %389 = and i1 %373, %388
  %390 = select i1 %389, float %387, float 0.000000e+00
  %391 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %201, i32 %245, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %392 = extractvalue %dx.types.ResRet.f32 %391, 0
  %393 = extractvalue %dx.types.ResRet.f32 %391, 1
  %394 = extractvalue %dx.types.ResRet.f32 %391, 2
  %395 = fdiv fast float %392, %360
  %396 = fdiv fast float %393, %360
  %397 = fdiv fast float %394, %360
  %398 = call float @dx.op.dot3.f32(i32 55, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000, float %395, float %396, float %397)  ; Dot3(ax,ay,az,bx,by,bz)
  %399 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %398)  ; FMax(a,b)
  %400 = call float @dx.op.unary.f32(i32 23, float %399)  ; Log(value)
  %401 = fmul fast float %400, 0x3FE62E4300000000
  %402 = fcmp fast olt float %200, %371
  %403 = and i1 %402, %374
  %404 = select i1 %403, float %401, float 0.000000e+00
  %405 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %201, i32 %269, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %406 = extractvalue %dx.types.ResRet.f32 %405, 0
  %407 = extractvalue %dx.types.ResRet.f32 %405, 1
  %408 = extractvalue %dx.types.ResRet.f32 %405, 2
  %409 = fdiv fast float %406, %360
  %410 = fdiv fast float %407, %360
  %411 = fdiv fast float %408, %360
  %412 = call float @dx.op.dot3.f32(i32 55, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000, float %409, float %410, float %411)  ; Dot3(ax,ay,az,bx,by,bz)
  %413 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %412)  ; FMax(a,b)
  %414 = call float @dx.op.unary.f32(i32 23, float %413)  ; Log(value)
  %415 = fmul fast float %414, 0x3FE62E4300000000
  %416 = and i1 %402, %388
  %417 = select i1 %416, float %415, float 0.000000e+00
  %418 = fadd fast float %390, %376
  %419 = fadd fast float %418, %404
  %420 = fadd fast float %419, %417
  %421 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %422 = extractvalue %dx.types.CBufRet.i32 %421, 2
  %423 = icmp eq i32 %422, 0
  br i1 %423, label %424, label %427

; <label>:424                                     ; preds = %354
  %425 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 undef, i32 %160, i32 %242, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %426 = extractvalue %dx.types.ResRet.f32 %425, 0
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %160, i32 %242, i32 undef, float %426, float %426, float %426, float %426, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %427

; <label>:427                                     ; preds = %424, %354
  %428 = icmp ult i32 %15, 2
  br i1 %428, label %677, label %429

; <label>:429                                     ; preds = %427
  %430 = call i32 @dx.op.waveGetLaneIndex(i32 111)  ; WaveGetLaneIndex()
  %431 = and i32 %430, -4
  %432 = or i32 %431, 1
  %433 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %117, i32 %432)  ; WaveReadLaneAt(value,lane)
  %434 = call float @dx.op.waveReadLaneAt.f32(i32 117, float 0.000000e+00, i32 %432)  ; WaveReadLaneAt(value,lane)
  %435 = call float @dx.op.waveReadLaneAt.f32(i32 117, float 0.000000e+00, i32 %432)  ; WaveReadLaneAt(value,lane)
  %436 = call float @dx.op.waveReadLaneAt.f32(i32 117, float 0.000000e+00, i32 %432)  ; WaveReadLaneAt(value,lane)
  %437 = or i32 %431, 2
  %438 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %117, i32 %437)  ; WaveReadLaneAt(value,lane)
  %439 = call float @dx.op.waveReadLaneAt.f32(i32 117, float 0.000000e+00, i32 %437)  ; WaveReadLaneAt(value,lane)
  %440 = call float @dx.op.waveReadLaneAt.f32(i32 117, float 0.000000e+00, i32 %437)  ; WaveReadLaneAt(value,lane)
  %441 = call float @dx.op.waveReadLaneAt.f32(i32 117, float 0.000000e+00, i32 %437)  ; WaveReadLaneAt(value,lane)
  %442 = or i32 %430, 3
  %443 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %117, i32 %442)  ; WaveReadLaneAt(value,lane)
  %444 = call float @dx.op.waveReadLaneAt.f32(i32 117, float 0.000000e+00, i32 %442)  ; WaveReadLaneAt(value,lane)
  %445 = call float @dx.op.waveReadLaneAt.f32(i32 117, float 0.000000e+00, i32 %442)  ; WaveReadLaneAt(value,lane)
  %446 = call float @dx.op.waveReadLaneAt.f32(i32 117, float 0.000000e+00, i32 %442)  ; WaveReadLaneAt(value,lane)
  %447 = fadd fast float %433, %117
  %448 = fadd fast float %447, %438
  %449 = fadd fast float %439, %434
  %450 = fadd fast float %440, %435
  %451 = fadd fast float %441, %436
  %452 = fadd fast float %448, %443
  %453 = fadd fast float %449, %444
  %454 = fadd fast float %450, %445
  %455 = fadd fast float %451, %446
  %456 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %231, i32 %432)  ; WaveReadLaneAt(value,lane)
  %457 = call float @dx.op.waveReadLaneAt.f32(i32 117, float 0.000000e+00, i32 %432)  ; WaveReadLaneAt(value,lane)
  %458 = call float @dx.op.waveReadLaneAt.f32(i32 117, float 0.000000e+00, i32 %432)  ; WaveReadLaneAt(value,lane)
  %459 = call float @dx.op.waveReadLaneAt.f32(i32 117, float 0.000000e+00, i32 %432)  ; WaveReadLaneAt(value,lane)
  %460 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %231, i32 %437)  ; WaveReadLaneAt(value,lane)
  %461 = call float @dx.op.waveReadLaneAt.f32(i32 117, float 0.000000e+00, i32 %437)  ; WaveReadLaneAt(value,lane)
  %462 = call float @dx.op.waveReadLaneAt.f32(i32 117, float 0.000000e+00, i32 %437)  ; WaveReadLaneAt(value,lane)
  %463 = call float @dx.op.waveReadLaneAt.f32(i32 117, float 0.000000e+00, i32 %437)  ; WaveReadLaneAt(value,lane)
  %464 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %231, i32 %442)  ; WaveReadLaneAt(value,lane)
  %465 = call float @dx.op.waveReadLaneAt.f32(i32 117, float 0.000000e+00, i32 %442)  ; WaveReadLaneAt(value,lane)
  %466 = call float @dx.op.waveReadLaneAt.f32(i32 117, float 0.000000e+00, i32 %442)  ; WaveReadLaneAt(value,lane)
  %467 = call float @dx.op.waveReadLaneAt.f32(i32 117, float 0.000000e+00, i32 %442)  ; WaveReadLaneAt(value,lane)
  %468 = fadd fast float %456, %231
  %469 = fadd fast float %468, %460
  %470 = fadd fast float %461, %457
  %471 = fadd fast float %462, %458
  %472 = fadd fast float %463, %459
  %473 = fadd fast float %469, %464
  %474 = fadd fast float %470, %465
  %475 = fadd fast float %471, %466
  %476 = fadd fast float %472, %467
  %477 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %313, i32 %432)  ; WaveReadLaneAt(value,lane)
  %478 = call float @dx.op.waveReadLaneAt.f32(i32 117, float 0.000000e+00, i32 %432)  ; WaveReadLaneAt(value,lane)
  %479 = call float @dx.op.waveReadLaneAt.f32(i32 117, float 0.000000e+00, i32 %432)  ; WaveReadLaneAt(value,lane)
  %480 = call float @dx.op.waveReadLaneAt.f32(i32 117, float 0.000000e+00, i32 %432)  ; WaveReadLaneAt(value,lane)
  %481 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %313, i32 %437)  ; WaveReadLaneAt(value,lane)
  %482 = call float @dx.op.waveReadLaneAt.f32(i32 117, float 0.000000e+00, i32 %437)  ; WaveReadLaneAt(value,lane)
  %483 = call float @dx.op.waveReadLaneAt.f32(i32 117, float 0.000000e+00, i32 %437)  ; WaveReadLaneAt(value,lane)
  %484 = call float @dx.op.waveReadLaneAt.f32(i32 117, float 0.000000e+00, i32 %437)  ; WaveReadLaneAt(value,lane)
  %485 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %313, i32 %442)  ; WaveReadLaneAt(value,lane)
  %486 = call float @dx.op.waveReadLaneAt.f32(i32 117, float 0.000000e+00, i32 %442)  ; WaveReadLaneAt(value,lane)
  %487 = call float @dx.op.waveReadLaneAt.f32(i32 117, float 0.000000e+00, i32 %442)  ; WaveReadLaneAt(value,lane)
  %488 = call float @dx.op.waveReadLaneAt.f32(i32 117, float 0.000000e+00, i32 %442)  ; WaveReadLaneAt(value,lane)
  %489 = fadd fast float %477, %313
  %490 = fadd fast float %489, %481
  %491 = fadd fast float %482, %478
  %492 = fadd fast float %483, %479
  %493 = fadd fast float %484, %480
  %494 = fadd fast float %490, %485
  %495 = fadd fast float %491, %486
  %496 = fadd fast float %492, %487
  %497 = fadd fast float %493, %488
  %498 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %420, i32 %432)  ; WaveReadLaneAt(value,lane)
  %499 = call float @dx.op.waveReadLaneAt.f32(i32 117, float 0.000000e+00, i32 %432)  ; WaveReadLaneAt(value,lane)
  %500 = call float @dx.op.waveReadLaneAt.f32(i32 117, float 0.000000e+00, i32 %432)  ; WaveReadLaneAt(value,lane)
  %501 = call float @dx.op.waveReadLaneAt.f32(i32 117, float 0.000000e+00, i32 %432)  ; WaveReadLaneAt(value,lane)
  %502 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %420, i32 %437)  ; WaveReadLaneAt(value,lane)
  %503 = call float @dx.op.waveReadLaneAt.f32(i32 117, float 0.000000e+00, i32 %437)  ; WaveReadLaneAt(value,lane)
  %504 = call float @dx.op.waveReadLaneAt.f32(i32 117, float 0.000000e+00, i32 %437)  ; WaveReadLaneAt(value,lane)
  %505 = call float @dx.op.waveReadLaneAt.f32(i32 117, float 0.000000e+00, i32 %437)  ; WaveReadLaneAt(value,lane)
  %506 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %420, i32 %442)  ; WaveReadLaneAt(value,lane)
  %507 = call float @dx.op.waveReadLaneAt.f32(i32 117, float 0.000000e+00, i32 %442)  ; WaveReadLaneAt(value,lane)
  %508 = call float @dx.op.waveReadLaneAt.f32(i32 117, float 0.000000e+00, i32 %442)  ; WaveReadLaneAt(value,lane)
  %509 = call float @dx.op.waveReadLaneAt.f32(i32 117, float 0.000000e+00, i32 %442)  ; WaveReadLaneAt(value,lane)
  %510 = fadd fast float %498, %420
  %511 = fadd fast float %510, %502
  %512 = fadd fast float %503, %499
  %513 = fadd fast float %504, %500
  %514 = fadd fast float %505, %501
  %515 = fadd fast float %511, %506
  %516 = fadd fast float %512, %507
  %517 = fadd fast float %513, %508
  %518 = fadd fast float %514, %509
  %519 = and i32 %10, 3
  %520 = icmp eq i32 %519, 0
  br i1 %520, label %521, label %677

; <label>:521                                     ; preds = %429
  %522 = shl i32 %16, 4
  %523 = shl i32 %17, 4
  %524 = lshr i32 %28, 1
  %525 = lshr i32 %31, 1
  %526 = or i32 %524, %522
  %527 = add i32 %525, %523
  %528 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %529 = extractvalue %dx.types.CBufRet.i32 %528, 2
  %530 = icmp eq i32 %529, 1
  br i1 %530, label %531, label %534

; <label>:531                                     ; preds = %521
  %532 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 undef, i32 %526, i32 %527, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %533 = extractvalue %dx.types.ResRet.f32 %532, 0
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %526, i32 %527, i32 undef, float %533, float %533, float %533, float %533, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %534

; <label>:534                                     ; preds = %531, %521
  %535 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %536 = extractvalue %dx.types.CBufRet.i32 %535, 0
  %537 = icmp eq i32 %536, 2
  %538 = or i32 %526, %527
  %539 = icmp eq i32 %538, 0
  %540 = and i1 %539, %537
  br i1 %540, label %541, label %568

; <label>:541                                     ; preds = %534
  %542 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 undef, i32 0, i32 0, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %543 = extractvalue %dx.types.ResRet.f32 %542, 1
  %544 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %545 = extractvalue %dx.types.CBufRet.i32 %544, 0
  %546 = extractvalue %dx.types.CBufRet.i32 %544, 1
  %547 = mul i32 %545, %546
  %548 = uitofp i32 %547 to float
  %549 = fdiv fast float %452, %548
  %550 = fcmp fast olt float %543, 1.000000e+08
  br i1 %550, label %551, label %560

; <label>:551                                     ; preds = %541
  %552 = fsub fast float %549, %543
  %553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %554 = extractvalue %dx.types.CBufRet.f32 %553, 1
  %555 = fmul fast float %554, 0xBFF7154760000000
  %556 = call float @dx.op.unary.f32(i32 21, float %555)  ; Exp(value)
  %557 = fsub fast float 1.000000e+00, %556
  %558 = fmul fast float %557, %552
  %559 = fadd fast float %558, %543
  br label %560

; <label>:560                                     ; preds = %551, %541
  %561 = phi float [ %559, %551 ], [ %549, %541 ]
  %562 = fmul fast float %561, 0x3FF7154760000000
  %563 = call float @dx.op.unary.f32(i32 21, float %562)  ; Exp(value)
  %564 = fmul fast float %563, 8.000000e+00
  %565 = call float @dx.op.unary.f32(i32 23, float %564)  ; Log(value)
  %566 = call float @dx.op.unary.f32(i32 21, float %565)  ; Exp(value)
  %567 = fdiv fast float 0x3FEAAAAAA0000000, %566
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 0, i32 0, i32 undef, float %567, float %561, float %567, float %567, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %568

; <label>:568                                     ; preds = %560, %534
  %569 = mul i32 %524, 16
  %570 = add i32 %525, %569
  %571 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateR@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %570
  store float %452, float addrspace(3)* %571, align 4, !tbaa !20
  %572 = mul i32 %524, 16
  %573 = add i32 %525, %572
  %574 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateG@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %573
  store float %453, float addrspace(3)* %574, align 4, !tbaa !20
  %575 = mul i32 %524, 16
  %576 = add i32 %525, %575
  %577 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateB@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %576
  store float %454, float addrspace(3)* %577, align 4, !tbaa !20
  %578 = mul i32 %524, 16
  %579 = add i32 %525, %578
  %580 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateA@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %579
  store float %455, float addrspace(3)* %580, align 4, !tbaa !20
  %581 = or i32 %526, 8
  %582 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %583 = extractvalue %dx.types.CBufRet.i32 %582, 2
  %584 = icmp eq i32 %583, 1
  br i1 %584, label %585, label %588

; <label>:585                                     ; preds = %568
  %586 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 undef, i32 %581, i32 %527, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %587 = extractvalue %dx.types.ResRet.f32 %586, 0
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %581, i32 %527, i32 undef, float %587, float %587, float %587, float %587, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %588

; <label>:588                                     ; preds = %585, %568
  %589 = or i32 %524, 8
  %590 = mul i32 %589, 16
  %591 = add i32 %525, %590
  %592 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateR@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %591
  store float %473, float addrspace(3)* %592, align 4, !tbaa !20
  %593 = mul i32 %589, 16
  %594 = add i32 %525, %593
  %595 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateG@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %594
  store float %474, float addrspace(3)* %595, align 4, !tbaa !20
  %596 = mul i32 %589, 16
  %597 = add i32 %525, %596
  %598 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateB@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %597
  store float %475, float addrspace(3)* %598, align 4, !tbaa !20
  %599 = mul i32 %589, 16
  %600 = add i32 %525, %599
  %601 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateA@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %600
  store float %476, float addrspace(3)* %601, align 4, !tbaa !20
  %602 = or i32 %523, 8
  %603 = add i32 %602, %525
  %604 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %605 = extractvalue %dx.types.CBufRet.i32 %604, 2
  %606 = icmp eq i32 %605, 1
  br i1 %606, label %607, label %610

; <label>:607                                     ; preds = %588
  %608 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 undef, i32 %526, i32 %603, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %609 = extractvalue %dx.types.ResRet.f32 %608, 0
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %526, i32 %603, i32 undef, float %609, float %609, float %609, float %609, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %610

; <label>:610                                     ; preds = %607, %588
  %611 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %612 = extractvalue %dx.types.CBufRet.i32 %611, 0
  %613 = icmp eq i32 %612, 2
  %614 = or i32 %603, %526
  %615 = icmp eq i32 %614, 0
  %616 = and i1 %615, %613
  br i1 %616, label %617, label %644

; <label>:617                                     ; preds = %610
  %618 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 undef, i32 0, i32 0, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %619 = extractvalue %dx.types.ResRet.f32 %618, 1
  %620 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %621 = extractvalue %dx.types.CBufRet.i32 %620, 0
  %622 = extractvalue %dx.types.CBufRet.i32 %620, 1
  %623 = mul i32 %621, %622
  %624 = uitofp i32 %623 to float
  %625 = fdiv fast float %494, %624
  %626 = fcmp fast olt float %619, 1.000000e+08
  br i1 %626, label %627, label %636

; <label>:627                                     ; preds = %617
  %628 = fsub fast float %625, %619
  %629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %630 = extractvalue %dx.types.CBufRet.f32 %629, 1
  %631 = fmul fast float %630, 0xBFF7154760000000
  %632 = call float @dx.op.unary.f32(i32 21, float %631)  ; Exp(value)
  %633 = fsub fast float 1.000000e+00, %632
  %634 = fmul fast float %633, %628
  %635 = fadd fast float %634, %619
  br label %636

; <label>:636                                     ; preds = %627, %617
  %637 = phi float [ %635, %627 ], [ %625, %617 ]
  %638 = fmul fast float %637, 0x3FF7154760000000
  %639 = call float @dx.op.unary.f32(i32 21, float %638)  ; Exp(value)
  %640 = fmul fast float %639, 8.000000e+00
  %641 = call float @dx.op.unary.f32(i32 23, float %640)  ; Log(value)
  %642 = call float @dx.op.unary.f32(i32 21, float %641)  ; Exp(value)
  %643 = fdiv fast float 0x3FEAAAAAA0000000, %642
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 0, i32 0, i32 undef, float %643, float %637, float %643, float %643, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %644

; <label>:644                                     ; preds = %636, %610
  %645 = add nuw nsw i32 %525, 8
  %646 = mul i32 %524, 16
  %647 = add i32 %645, %646
  %648 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateR@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %647
  store float %494, float addrspace(3)* %648, align 4, !tbaa !20
  %649 = mul i32 %524, 16
  %650 = add i32 %645, %649
  %651 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateG@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %650
  store float %495, float addrspace(3)* %651, align 4, !tbaa !20
  %652 = mul i32 %524, 16
  %653 = add i32 %645, %652
  %654 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateB@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %653
  store float %496, float addrspace(3)* %654, align 4, !tbaa !20
  %655 = mul i32 %524, 16
  %656 = add i32 %645, %655
  %657 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateA@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %656
  store float %497, float addrspace(3)* %657, align 4, !tbaa !20
  %658 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %659 = extractvalue %dx.types.CBufRet.i32 %658, 2
  %660 = icmp eq i32 %659, 1
  br i1 %660, label %661, label %664

; <label>:661                                     ; preds = %644
  %662 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 undef, i32 %581, i32 %603, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %663 = extractvalue %dx.types.ResRet.f32 %662, 0
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %581, i32 %603, i32 undef, float %663, float %663, float %663, float %663, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %664

; <label>:664                                     ; preds = %661, %644
  %665 = mul i32 %589, 16
  %666 = add i32 %645, %665
  %667 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateR@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %666
  store float %515, float addrspace(3)* %667, align 4, !tbaa !20
  %668 = mul i32 %589, 16
  %669 = add i32 %645, %668
  %670 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateG@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %669
  store float %516, float addrspace(3)* %670, align 4, !tbaa !20
  %671 = mul i32 %589, 16
  %672 = add i32 %645, %671
  %673 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateB@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %672
  store float %517, float addrspace(3)* %673, align 4, !tbaa !20
  %674 = mul i32 %589, 16
  %675 = add i32 %645, %674
  %676 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateA@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %675
  store float %518, float addrspace(3)* %676, align 4, !tbaa !20
  br label %677

; <label>:677                                     ; preds = %664, %429, %427
  %678 = icmp ult i32 %15, 3
  br i1 %678, label %1074, label %679

; <label>:679                                     ; preds = %677
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %680 = mul i32 %28, 16
  %681 = add i32 %31, %680
  %682 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateR@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %681
  %683 = load float, float addrspace(3)* %682, align 4, !tbaa !20
  %684 = mul i32 %28, 16
  %685 = add i32 %31, %684
  %686 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateG@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %685
  %687 = load float, float addrspace(3)* %686, align 4, !tbaa !20
  %688 = mul i32 %28, 16
  %689 = add i32 %31, %688
  %690 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateB@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %689
  %691 = load float, float addrspace(3)* %690, align 4, !tbaa !20
  %692 = mul i32 %28, 16
  %693 = add i32 %31, %692
  %694 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateA@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %693
  %695 = load float, float addrspace(3)* %694, align 4, !tbaa !20
  %696 = call i32 @dx.op.waveGetLaneIndex(i32 111)  ; WaveGetLaneIndex()
  %697 = and i32 %696, -4
  %698 = or i32 %697, 1
  %699 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %683, i32 %698)  ; WaveReadLaneAt(value,lane)
  %700 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %687, i32 %698)  ; WaveReadLaneAt(value,lane)
  %701 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %691, i32 %698)  ; WaveReadLaneAt(value,lane)
  %702 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %695, i32 %698)  ; WaveReadLaneAt(value,lane)
  %703 = or i32 %697, 2
  %704 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %683, i32 %703)  ; WaveReadLaneAt(value,lane)
  %705 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %687, i32 %703)  ; WaveReadLaneAt(value,lane)
  %706 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %691, i32 %703)  ; WaveReadLaneAt(value,lane)
  %707 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %695, i32 %703)  ; WaveReadLaneAt(value,lane)
  %708 = or i32 %696, 3
  %709 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %683, i32 %708)  ; WaveReadLaneAt(value,lane)
  %710 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %687, i32 %708)  ; WaveReadLaneAt(value,lane)
  %711 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %691, i32 %708)  ; WaveReadLaneAt(value,lane)
  %712 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %695, i32 %708)  ; WaveReadLaneAt(value,lane)
  %713 = fadd fast float %699, %683
  %714 = fadd fast float %700, %687
  %715 = fadd fast float %701, %691
  %716 = fadd fast float %702, %695
  %717 = fadd fast float %713, %704
  %718 = fadd fast float %714, %705
  %719 = fadd fast float %715, %706
  %720 = fadd fast float %716, %707
  %721 = fadd fast float %717, %709
  %722 = fadd fast float %718, %710
  %723 = fadd fast float %719, %711
  %724 = fadd fast float %720, %712
  %725 = and i32 %10, 3
  %726 = icmp eq i32 %725, 0
  br i1 %726, label %727, label %789

; <label>:727                                     ; preds = %679
  %728 = shl i32 %16, 3
  %729 = shl i32 %17, 3
  %730 = lshr i32 %28, 1
  %731 = lshr i32 %31, 1
  %732 = or i32 %730, %728
  %733 = add i32 %731, %729
  %734 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %735 = extractvalue %dx.types.CBufRet.i32 %734, 2
  %736 = icmp eq i32 %735, 2
  br i1 %736, label %737, label %740

; <label>:737                                     ; preds = %727
  %738 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 undef, i32 %732, i32 %733, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %739 = extractvalue %dx.types.ResRet.f32 %738, 0
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %732, i32 %733, i32 undef, float %739, float %739, float %739, float %739, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %740

; <label>:740                                     ; preds = %737, %727
  %741 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %742 = extractvalue %dx.types.CBufRet.i32 %741, 0
  %743 = icmp eq i32 %742, 3
  %744 = or i32 %732, %733
  %745 = icmp eq i32 %744, 0
  %746 = and i1 %745, %743
  br i1 %746, label %747, label %774

; <label>:747                                     ; preds = %740
  %748 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 undef, i32 0, i32 0, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %749 = extractvalue %dx.types.ResRet.f32 %748, 1
  %750 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %751 = extractvalue %dx.types.CBufRet.i32 %750, 0
  %752 = extractvalue %dx.types.CBufRet.i32 %750, 1
  %753 = mul i32 %751, %752
  %754 = uitofp i32 %753 to float
  %755 = fdiv fast float %721, %754
  %756 = fcmp fast olt float %749, 1.000000e+08
  br i1 %756, label %757, label %766

; <label>:757                                     ; preds = %747
  %758 = fsub fast float %755, %749
  %759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %760 = extractvalue %dx.types.CBufRet.f32 %759, 1
  %761 = fmul fast float %760, 0xBFF7154760000000
  %762 = call float @dx.op.unary.f32(i32 21, float %761)  ; Exp(value)
  %763 = fsub fast float 1.000000e+00, %762
  %764 = fmul fast float %763, %758
  %765 = fadd fast float %764, %749
  br label %766

; <label>:766                                     ; preds = %757, %747
  %767 = phi float [ %765, %757 ], [ %755, %747 ]
  %768 = fmul fast float %767, 0x3FF7154760000000
  %769 = call float @dx.op.unary.f32(i32 21, float %768)  ; Exp(value)
  %770 = fmul fast float %769, 8.000000e+00
  %771 = call float @dx.op.unary.f32(i32 23, float %770)  ; Log(value)
  %772 = call float @dx.op.unary.f32(i32 21, float %771)  ; Exp(value)
  %773 = fdiv fast float 0x3FEAAAAAA0000000, %772
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 0, i32 0, i32 undef, float %773, float %767, float %773, float %773, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %774

; <label>:774                                     ; preds = %766, %740
  %775 = and i32 %18, 1
  %776 = add nuw nsw i32 %28, %775
  %777 = mul i32 %776, 16
  %778 = add i32 %31, %777
  %779 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateR@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %778
  store float %721, float addrspace(3)* %779, align 4, !tbaa !20
  %780 = mul i32 %776, 16
  %781 = add i32 %31, %780
  %782 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateG@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %781
  store float %722, float addrspace(3)* %782, align 4, !tbaa !20
  %783 = mul i32 %776, 16
  %784 = add i32 %31, %783
  %785 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateB@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %784
  store float %723, float addrspace(3)* %785, align 4, !tbaa !20
  %786 = mul i32 %776, 16
  %787 = add i32 %31, %786
  %788 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateA@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %787
  store float %724, float addrspace(3)* %788, align 4, !tbaa !20
  br label %789

; <label>:789                                     ; preds = %774, %679
  %790 = icmp ult i32 %15, 4
  br i1 %790, label %1074, label %791

; <label>:791                                     ; preds = %789
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %792 = icmp ult i32 %10, 64
  br i1 %792, label %793, label %897

; <label>:793                                     ; preds = %791
  %794 = and i32 %22, 1
  %795 = or i32 %34, %794
  %796 = mul i32 %795, 16
  %797 = add i32 %35, %796
  %798 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateR@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %797
  %799 = load float, float addrspace(3)* %798, align 4, !tbaa !20
  %800 = mul i32 %795, 16
  %801 = add i32 %35, %800
  %802 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateG@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %801
  %803 = load float, float addrspace(3)* %802, align 4, !tbaa !20
  %804 = mul i32 %795, 16
  %805 = add i32 %35, %804
  %806 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateB@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %805
  %807 = load float, float addrspace(3)* %806, align 4, !tbaa !20
  %808 = mul i32 %795, 16
  %809 = add i32 %35, %808
  %810 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateA@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %809
  %811 = load float, float addrspace(3)* %810, align 4, !tbaa !20
  %812 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %799, i32 %698)  ; WaveReadLaneAt(value,lane)
  %813 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %803, i32 %698)  ; WaveReadLaneAt(value,lane)
  %814 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %807, i32 %698)  ; WaveReadLaneAt(value,lane)
  %815 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %811, i32 %698)  ; WaveReadLaneAt(value,lane)
  %816 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %799, i32 %703)  ; WaveReadLaneAt(value,lane)
  %817 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %803, i32 %703)  ; WaveReadLaneAt(value,lane)
  %818 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %807, i32 %703)  ; WaveReadLaneAt(value,lane)
  %819 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %811, i32 %703)  ; WaveReadLaneAt(value,lane)
  %820 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %799, i32 %708)  ; WaveReadLaneAt(value,lane)
  %821 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %803, i32 %708)  ; WaveReadLaneAt(value,lane)
  %822 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %807, i32 %708)  ; WaveReadLaneAt(value,lane)
  %823 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %811, i32 %708)  ; WaveReadLaneAt(value,lane)
  %824 = fadd fast float %812, %799
  %825 = fadd fast float %813, %803
  %826 = fadd fast float %814, %807
  %827 = fadd fast float %815, %811
  %828 = fadd fast float %824, %816
  %829 = fadd fast float %825, %817
  %830 = fadd fast float %826, %818
  %831 = fadd fast float %827, %819
  %832 = fadd fast float %828, %820
  %833 = fadd fast float %829, %821
  %834 = fadd fast float %830, %822
  %835 = fadd fast float %831, %823
  br i1 %726, label %836, label %897

; <label>:836                                     ; preds = %793
  %837 = shl i32 %16, 2
  %838 = shl i32 %17, 2
  %839 = lshr i32 %28, 1
  %840 = lshr i32 %31, 1
  %841 = add i32 %839, %837
  %842 = add i32 %840, %838
  %843 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %844 = extractvalue %dx.types.CBufRet.i32 %843, 2
  %845 = icmp eq i32 %844, 3
  br i1 %845, label %846, label %849

; <label>:846                                     ; preds = %836
  %847 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 undef, i32 %841, i32 %842, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %848 = extractvalue %dx.types.ResRet.f32 %847, 0
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %841, i32 %842, i32 undef, float %848, float %848, float %848, float %848, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %849

; <label>:849                                     ; preds = %846, %836
  %850 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %851 = extractvalue %dx.types.CBufRet.i32 %850, 0
  %852 = icmp eq i32 %851, 4
  %853 = or i32 %841, %842
  %854 = icmp eq i32 %853, 0
  %855 = and i1 %854, %852
  br i1 %855, label %856, label %883

; <label>:856                                     ; preds = %849
  %857 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 undef, i32 0, i32 0, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %858 = extractvalue %dx.types.ResRet.f32 %857, 1
  %859 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %860 = extractvalue %dx.types.CBufRet.i32 %859, 0
  %861 = extractvalue %dx.types.CBufRet.i32 %859, 1
  %862 = mul i32 %860, %861
  %863 = uitofp i32 %862 to float
  %864 = fdiv fast float %832, %863
  %865 = fcmp fast olt float %858, 1.000000e+08
  br i1 %865, label %866, label %875

; <label>:866                                     ; preds = %856
  %867 = fsub fast float %864, %858
  %868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %869 = extractvalue %dx.types.CBufRet.f32 %868, 1
  %870 = fmul fast float %869, 0xBFF7154760000000
  %871 = call float @dx.op.unary.f32(i32 21, float %870)  ; Exp(value)
  %872 = fsub fast float 1.000000e+00, %871
  %873 = fmul fast float %872, %867
  %874 = fadd fast float %873, %858
  br label %875

; <label>:875                                     ; preds = %866, %856
  %876 = phi float [ %874, %866 ], [ %864, %856 ]
  %877 = fmul fast float %876, 0x3FF7154760000000
  %878 = call float @dx.op.unary.f32(i32 21, float %877)  ; Exp(value)
  %879 = fmul fast float %878, 8.000000e+00
  %880 = call float @dx.op.unary.f32(i32 23, float %879)  ; Log(value)
  %881 = call float @dx.op.unary.f32(i32 21, float %880)  ; Exp(value)
  %882 = fdiv fast float 0x3FEAAAAAA0000000, %881
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 0, i32 0, i32 undef, float %882, float %876, float %882, float %882, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %883

; <label>:883                                     ; preds = %875, %849
  %884 = add nuw nsw i32 %34, %840
  %885 = mul i32 %884, 16
  %886 = add i32 %35, %885
  %887 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateR@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %886
  store float %832, float addrspace(3)* %887, align 4, !tbaa !20
  %888 = mul i32 %884, 16
  %889 = add i32 %35, %888
  %890 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateG@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %889
  store float %833, float addrspace(3)* %890, align 4, !tbaa !20
  %891 = mul i32 %884, 16
  %892 = add i32 %35, %891
  %893 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateB@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %892
  store float %834, float addrspace(3)* %893, align 4, !tbaa !20
  %894 = mul i32 %884, 16
  %895 = add i32 %35, %894
  %896 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateA@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %895
  store float %835, float addrspace(3)* %896, align 4, !tbaa !20
  br label %897

; <label>:897                                     ; preds = %883, %793, %791
  %898 = icmp ult i32 %15, 5
  br i1 %898, label %1074, label %899

; <label>:899                                     ; preds = %897
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %900 = icmp ult i32 %10, 16
  br i1 %900, label %901, label %1004

; <label>:901                                     ; preds = %899
  %902 = shl nuw nsw i32 %31, 2
  %903 = shl nuw nsw i32 %28, 2
  %904 = add nuw nsw i32 %903, %31
  %905 = mul i32 %904, 16
  %906 = add i32 %902, %905
  %907 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateR@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %906
  %908 = load float, float addrspace(3)* %907, align 4, !tbaa !20
  %909 = mul i32 %904, 16
  %910 = add i32 %902, %909
  %911 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateG@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %910
  %912 = load float, float addrspace(3)* %911, align 4, !tbaa !20
  %913 = mul i32 %904, 16
  %914 = add i32 %902, %913
  %915 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateB@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %914
  %916 = load float, float addrspace(3)* %915, align 4, !tbaa !20
  %917 = mul i32 %904, 16
  %918 = add i32 %902, %917
  %919 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateA@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %918
  %920 = load float, float addrspace(3)* %919, align 4, !tbaa !20
  %921 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %908, i32 %698)  ; WaveReadLaneAt(value,lane)
  %922 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %912, i32 %698)  ; WaveReadLaneAt(value,lane)
  %923 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %916, i32 %698)  ; WaveReadLaneAt(value,lane)
  %924 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %920, i32 %698)  ; WaveReadLaneAt(value,lane)
  %925 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %908, i32 %703)  ; WaveReadLaneAt(value,lane)
  %926 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %912, i32 %703)  ; WaveReadLaneAt(value,lane)
  %927 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %916, i32 %703)  ; WaveReadLaneAt(value,lane)
  %928 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %920, i32 %703)  ; WaveReadLaneAt(value,lane)
  %929 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %908, i32 %708)  ; WaveReadLaneAt(value,lane)
  %930 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %912, i32 %708)  ; WaveReadLaneAt(value,lane)
  %931 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %916, i32 %708)  ; WaveReadLaneAt(value,lane)
  %932 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %920, i32 %708)  ; WaveReadLaneAt(value,lane)
  %933 = fadd fast float %921, %908
  %934 = fadd fast float %922, %912
  %935 = fadd fast float %923, %916
  %936 = fadd fast float %924, %920
  %937 = fadd fast float %933, %925
  %938 = fadd fast float %934, %926
  %939 = fadd fast float %935, %927
  %940 = fadd fast float %936, %928
  %941 = fadd fast float %937, %929
  %942 = fadd fast float %938, %930
  %943 = fadd fast float %939, %931
  %944 = fadd fast float %940, %932
  br i1 %726, label %945, label %1004

; <label>:945                                     ; preds = %901
  %946 = shl i32 %16, 1
  %947 = shl i32 %17, 1
  %948 = lshr i32 %28, 1
  %949 = lshr i32 %31, 1
  %950 = add i32 %948, %946
  %951 = add i32 %949, %947
  %952 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %953 = extractvalue %dx.types.CBufRet.i32 %952, 2
  %954 = icmp eq i32 %953, 4
  br i1 %954, label %955, label %956

; <label>:955                                     ; preds = %945
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %950, i32 %951, i32 undef, float %941, float %941, float %941, float %941, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %956

; <label>:956                                     ; preds = %955, %945
  %957 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %958 = extractvalue %dx.types.CBufRet.i32 %957, 0
  %959 = icmp eq i32 %958, 5
  %960 = or i32 %950, %951
  %961 = icmp eq i32 %960, 0
  %962 = and i1 %961, %959
  br i1 %962, label %963, label %990

; <label>:963                                     ; preds = %956
  %964 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 undef, i32 0, i32 0, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %965 = extractvalue %dx.types.ResRet.f32 %964, 1
  %966 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %967 = extractvalue %dx.types.CBufRet.i32 %966, 0
  %968 = extractvalue %dx.types.CBufRet.i32 %966, 1
  %969 = mul i32 %967, %968
  %970 = uitofp i32 %969 to float
  %971 = fdiv fast float %941, %970
  %972 = fcmp fast olt float %965, 1.000000e+08
  br i1 %972, label %973, label %982

; <label>:973                                     ; preds = %963
  %974 = fsub fast float %971, %965
  %975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %976 = extractvalue %dx.types.CBufRet.f32 %975, 1
  %977 = fmul fast float %976, 0xBFF7154760000000
  %978 = call float @dx.op.unary.f32(i32 21, float %977)  ; Exp(value)
  %979 = fsub fast float 1.000000e+00, %978
  %980 = fmul fast float %979, %974
  %981 = fadd fast float %980, %965
  br label %982

; <label>:982                                     ; preds = %973, %963
  %983 = phi float [ %981, %973 ], [ %971, %963 ]
  %984 = fmul fast float %983, 0x3FF7154760000000
  %985 = call float @dx.op.unary.f32(i32 21, float %984)  ; Exp(value)
  %986 = fmul fast float %985, 8.000000e+00
  %987 = call float @dx.op.unary.f32(i32 23, float %986)  ; Log(value)
  %988 = call float @dx.op.unary.f32(i32 21, float %987)  ; Exp(value)
  %989 = fdiv fast float 0x3FEAAAAAA0000000, %988
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 0, i32 0, i32 undef, float %989, float %983, float %989, float %989, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %990

; <label>:990                                     ; preds = %982, %956
  %991 = add nuw nsw i32 %948, %31
  %992 = mul i32 %991, 16
  %993 = add i32 0, %992
  %994 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateR@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %993
  store float %941, float addrspace(3)* %994, align 4, !tbaa !20
  %995 = mul i32 %991, 16
  %996 = add i32 0, %995
  %997 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateG@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %996
  store float %942, float addrspace(3)* %997, align 4, !tbaa !20
  %998 = mul i32 %991, 16
  %999 = add i32 0, %998
  %1000 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateB@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %999
  store float %943, float addrspace(3)* %1000, align 4, !tbaa !20
  %1001 = mul i32 %991, 16
  %1002 = add i32 0, %1001
  %1003 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateA@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %1002
  store float %944, float addrspace(3)* %1003, align 4, !tbaa !20
  br label %1004

; <label>:1004                                    ; preds = %990, %901, %899
  %1005 = icmp ult i32 %15, 6
  br i1 %1005, label %1074, label %1006

; <label>:1006                                    ; preds = %1004
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1007 = icmp ult i32 %10, 4
  br i1 %1007, label %1008, label %1074

; <label>:1008                                    ; preds = %1006
  %1009 = mul i32 %10, 16
  %1010 = add i32 0, %1009
  %1011 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateR@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %1010
  %1012 = load float, float addrspace(3)* %1011, align 4, !tbaa !20
  %1013 = mul i32 %10, 16
  %1014 = add i32 0, %1013
  %1015 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateG@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %1014
  %1016 = load float, float addrspace(3)* %1015, align 4, !tbaa !20
  %1017 = mul i32 %10, 16
  %1018 = add i32 0, %1017
  %1019 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateB@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %1018
  %1020 = load float, float addrspace(3)* %1019, align 4, !tbaa !20
  %1021 = mul i32 %10, 16
  %1022 = add i32 0, %1021
  %1023 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateA@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %1022
  %1024 = load float, float addrspace(3)* %1023, align 4, !tbaa !20
  %1025 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1012, i32 %698)  ; WaveReadLaneAt(value,lane)
  %1026 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1016, i32 %698)  ; WaveReadLaneAt(value,lane)
  %1027 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1020, i32 %698)  ; WaveReadLaneAt(value,lane)
  %1028 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1024, i32 %698)  ; WaveReadLaneAt(value,lane)
  %1029 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1012, i32 %703)  ; WaveReadLaneAt(value,lane)
  %1030 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1016, i32 %703)  ; WaveReadLaneAt(value,lane)
  %1031 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1020, i32 %703)  ; WaveReadLaneAt(value,lane)
  %1032 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1024, i32 %703)  ; WaveReadLaneAt(value,lane)
  %1033 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1012, i32 %708)  ; WaveReadLaneAt(value,lane)
  %1034 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1016, i32 %708)  ; WaveReadLaneAt(value,lane)
  %1035 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1020, i32 %708)  ; WaveReadLaneAt(value,lane)
  %1036 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1024, i32 %708)  ; WaveReadLaneAt(value,lane)
  %1037 = fadd fast float %1025, %1012
  %1038 = fadd fast float %1037, %1029
  %1039 = fadd fast float %1038, %1033
  br i1 %726, label %1040, label %1074

; <label>:1040                                    ; preds = %1008
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %16, i32 %17, i32 undef, float %1039, float %1039, float %1039, float %1039, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1041 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1042 = extractvalue %dx.types.CBufRet.i32 %1041, 0
  %1043 = icmp eq i32 %1042, 6
  %1044 = or i32 %16, %17
  %1045 = icmp eq i32 %1044, 0
  %1046 = and i1 %1045, %1043
  br i1 %1046, label %1047, label %1074

; <label>:1047                                    ; preds = %1040
  %1048 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 undef, i32 0, i32 0, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1049 = extractvalue %dx.types.ResRet.f32 %1048, 1
  %1050 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1051 = extractvalue %dx.types.CBufRet.i32 %1050, 0
  %1052 = extractvalue %dx.types.CBufRet.i32 %1050, 1
  %1053 = mul i32 %1051, %1052
  %1054 = uitofp i32 %1053 to float
  %1055 = fdiv fast float %1039, %1054
  %1056 = fcmp fast olt float %1049, 1.000000e+08
  br i1 %1056, label %1057, label %1066

; <label>:1057                                    ; preds = %1047
  %1058 = fsub fast float %1055, %1049
  %1059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %1060 = extractvalue %dx.types.CBufRet.f32 %1059, 1
  %1061 = fmul fast float %1060, 0xBFF7154760000000
  %1062 = call float @dx.op.unary.f32(i32 21, float %1061)  ; Exp(value)
  %1063 = fsub fast float 1.000000e+00, %1062
  %1064 = fmul fast float %1063, %1058
  %1065 = fadd fast float %1064, %1049
  br label %1066

; <label>:1066                                    ; preds = %1057, %1047
  %1067 = phi float [ %1065, %1057 ], [ %1055, %1047 ]
  %1068 = fmul fast float %1067, 0x3FF7154760000000
  %1069 = call float @dx.op.unary.f32(i32 21, float %1068)  ; Exp(value)
  %1070 = fmul fast float %1069, 8.000000e+00
  %1071 = call float @dx.op.unary.f32(i32 23, float %1070)  ; Log(value)
  %1072 = call float @dx.op.unary.f32(i32 21, float %1071)  ; Exp(value)
  %1073 = fdiv fast float 0x3FEAAAAAA0000000, %1072
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 0, i32 0, i32 undef, float %1073, float %1067, float %1073, float %1073, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1074

; <label>:1074                                    ; preds = %1066, %1040, %1008, %1006, %1004, %897, %789, %677
  %1075 = icmp ult i32 %15, 7
  br i1 %1075, label %1646, label %1076

; <label>:1076                                    ; preds = %1074
  %1077 = icmp eq i32 %10, 0
  br i1 %1077, label %1078, label %1080

; <label>:1078                                    ; preds = %1076
  %1079 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 0, i32 0, i32 0, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  store i32 %1079, i32 addrspace(3)* @"\01?spdCounter@@3IA", align 4, !tbaa !24
  br label %1080

; <label>:1080                                    ; preds = %1078, %1076
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1081 = load i32, i32 addrspace(3)* @"\01?spdCounter@@3IA", align 4, !tbaa !24
  %1082 = add i32 %14, -1
  %1083 = icmp eq i32 %1081, %1082
  br i1 %1083, label %1084, label %1646

; <label>:1084                                    ; preds = %1080
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %1, i32 0, i32 0, i32 undef, i32 0, i32 0, i32 0, i32 0, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1085 = shl nuw nsw i32 %28, 2
  %1086 = shl nuw nsw i32 %31, 2
  %1087 = or i32 %1085, 1
  %1088 = or i32 %1086, 1
  %1089 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 undef, i32 %1085, i32 %1086, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1090 = extractvalue %dx.types.ResRet.f32 %1089, 0
  %1091 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 undef, i32 %1085, i32 %1088, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1092 = extractvalue %dx.types.ResRet.f32 %1091, 0
  %1093 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 undef, i32 %1087, i32 %1086, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1094 = extractvalue %dx.types.ResRet.f32 %1093, 0
  %1095 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 undef, i32 %1087, i32 %1088, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1096 = extractvalue %dx.types.ResRet.f32 %1095, 0
  %1097 = fadd fast float %1092, %1090
  %1098 = fadd fast float %1097, %1094
  %1099 = fadd fast float %1098, %1096
  %1100 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1101 = extractvalue %dx.types.CBufRet.i32 %1100, 2
  %1102 = icmp eq i32 %1101, 6
  br i1 %1102, label %1103, label %1106

; <label>:1103                                    ; preds = %1084
  %1104 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 undef, i32 %34, i32 %35, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1105 = extractvalue %dx.types.ResRet.f32 %1104, 0
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %34, i32 %35, i32 undef, float %1105, float %1105, float %1105, float %1105, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1106

; <label>:1106                                    ; preds = %1103, %1084
  %1107 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1108 = extractvalue %dx.types.CBufRet.i32 %1107, 0
  %1109 = icmp eq i32 %1108, 7
  %1110 = or i32 %28, %31
  %1111 = icmp eq i32 %1110, 0
  %1112 = and i1 %1111, %1109
  br i1 %1112, label %1113, label %1140

; <label>:1113                                    ; preds = %1106
  %1114 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 undef, i32 0, i32 0, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1115 = extractvalue %dx.types.ResRet.f32 %1114, 1
  %1116 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1117 = extractvalue %dx.types.CBufRet.i32 %1116, 0
  %1118 = extractvalue %dx.types.CBufRet.i32 %1116, 1
  %1119 = mul i32 %1117, %1118
  %1120 = uitofp i32 %1119 to float
  %1121 = fdiv fast float %1099, %1120
  %1122 = fcmp fast olt float %1115, 1.000000e+08
  br i1 %1122, label %1123, label %1132

; <label>:1123                                    ; preds = %1113
  %1124 = fsub fast float %1121, %1115
  %1125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %1126 = extractvalue %dx.types.CBufRet.f32 %1125, 1
  %1127 = fmul fast float %1126, 0xBFF7154760000000
  %1128 = call float @dx.op.unary.f32(i32 21, float %1127)  ; Exp(value)
  %1129 = fsub fast float 1.000000e+00, %1128
  %1130 = fmul fast float %1129, %1124
  %1131 = fadd fast float %1130, %1115
  br label %1132

; <label>:1132                                    ; preds = %1123, %1113
  %1133 = phi float [ %1131, %1123 ], [ %1121, %1113 ]
  %1134 = fmul fast float %1133, 0x3FF7154760000000
  %1135 = call float @dx.op.unary.f32(i32 21, float %1134)  ; Exp(value)
  %1136 = fmul fast float %1135, 8.000000e+00
  %1137 = call float @dx.op.unary.f32(i32 23, float %1136)  ; Log(value)
  %1138 = call float @dx.op.unary.f32(i32 21, float %1137)  ; Exp(value)
  %1139 = fdiv fast float 0x3FEAAAAAA0000000, %1138
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 0, i32 0, i32 undef, float %1139, float %1133, float %1139, float %1139, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1140

; <label>:1140                                    ; preds = %1132, %1106
  %1141 = or i32 %1085, 2
  %1142 = or i32 %34, 1
  %1143 = or i32 %1085, 3
  %1144 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 undef, i32 %1141, i32 %1086, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1145 = extractvalue %dx.types.ResRet.f32 %1144, 0
  %1146 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 undef, i32 %1141, i32 %1088, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1147 = extractvalue %dx.types.ResRet.f32 %1146, 0
  %1148 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 undef, i32 %1143, i32 %1086, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1149 = extractvalue %dx.types.ResRet.f32 %1148, 0
  %1150 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 undef, i32 %1143, i32 %1088, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1151 = extractvalue %dx.types.ResRet.f32 %1150, 0
  %1152 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1153 = extractvalue %dx.types.CBufRet.i32 %1152, 2
  %1154 = icmp eq i32 %1153, 6
  br i1 %1154, label %1155, label %1158

; <label>:1155                                    ; preds = %1140
  %1156 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 undef, i32 %1142, i32 %35, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1157 = extractvalue %dx.types.ResRet.f32 %1156, 0
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %1142, i32 %35, i32 undef, float %1157, float %1157, float %1157, float %1157, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1158

; <label>:1158                                    ; preds = %1155, %1140
  %1159 = or i32 %1086, 2
  %1160 = or i32 %35, 1
  %1161 = or i32 %1086, 3
  %1162 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 undef, i32 %1085, i32 %1159, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1163 = extractvalue %dx.types.ResRet.f32 %1162, 0
  %1164 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 undef, i32 %1085, i32 %1161, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1165 = extractvalue %dx.types.ResRet.f32 %1164, 0
  %1166 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 undef, i32 %1087, i32 %1159, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1167 = extractvalue %dx.types.ResRet.f32 %1166, 0
  %1168 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 undef, i32 %1087, i32 %1161, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1169 = extractvalue %dx.types.ResRet.f32 %1168, 0
  %1170 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1171 = extractvalue %dx.types.CBufRet.i32 %1170, 2
  %1172 = icmp eq i32 %1171, 6
  br i1 %1172, label %1173, label %1176

; <label>:1173                                    ; preds = %1158
  %1174 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 undef, i32 %34, i32 %1160, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1175 = extractvalue %dx.types.ResRet.f32 %1174, 0
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %34, i32 %1160, i32 undef, float %1175, float %1175, float %1175, float %1175, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1176

; <label>:1176                                    ; preds = %1173, %1158
  %1177 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 undef, i32 %1141, i32 %1159, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1178 = extractvalue %dx.types.ResRet.f32 %1177, 0
  %1179 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 undef, i32 %1141, i32 %1161, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1180 = extractvalue %dx.types.ResRet.f32 %1179, 0
  %1181 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 undef, i32 %1143, i32 %1159, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1182 = extractvalue %dx.types.ResRet.f32 %1181, 0
  %1183 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 undef, i32 %1143, i32 %1161, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1184 = extractvalue %dx.types.ResRet.f32 %1183, 0
  %1185 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1186 = extractvalue %dx.types.CBufRet.i32 %1185, 2
  %1187 = icmp eq i32 %1186, 6
  br i1 %1187, label %1188, label %1191

; <label>:1188                                    ; preds = %1176
  %1189 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 undef, i32 %1142, i32 %1160, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1190 = extractvalue %dx.types.ResRet.f32 %1189, 0
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %1142, i32 %1160, i32 undef, float %1190, float %1190, float %1190, float %1190, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1191

; <label>:1191                                    ; preds = %1188, %1176
  %1192 = icmp ult i32 %15, 8
  br i1 %1192, label %1257, label %1193

; <label>:1193                                    ; preds = %1191
  %1194 = fadd fast float %1145, %1099
  %1195 = fadd fast float %1194, %1147
  %1196 = fadd fast float %1195, %1149
  %1197 = fadd fast float %1196, %1151
  %1198 = fadd fast float %1197, %1163
  %1199 = fadd fast float %1198, %1165
  %1200 = fadd fast float %1199, %1167
  %1201 = fadd fast float %1200, %1169
  %1202 = fadd fast float %1201, %1178
  %1203 = fadd fast float %1202, %1180
  %1204 = fadd fast float %1203, %1182
  %1205 = fadd fast float %1204, %1184
  %1206 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1207 = extractvalue %dx.types.CBufRet.i32 %1206, 2
  %1208 = icmp eq i32 %1207, 7
  br i1 %1208, label %1209, label %1212

; <label>:1209                                    ; preds = %1193
  %1210 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 undef, i32 %28, i32 %31, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1211 = extractvalue %dx.types.ResRet.f32 %1210, 0
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %28, i32 %31, i32 undef, float %1211, float %1211, float %1211, float %1211, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1212

; <label>:1212                                    ; preds = %1209, %1193
  %1213 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1214 = extractvalue %dx.types.CBufRet.i32 %1213, 0
  %1215 = icmp eq i32 %1214, 8
  %1216 = and i1 %1111, %1215
  br i1 %1216, label %1217, label %1244

; <label>:1217                                    ; preds = %1212
  %1218 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 undef, i32 0, i32 0, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1219 = extractvalue %dx.types.ResRet.f32 %1218, 1
  %1220 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1221 = extractvalue %dx.types.CBufRet.i32 %1220, 0
  %1222 = extractvalue %dx.types.CBufRet.i32 %1220, 1
  %1223 = mul i32 %1221, %1222
  %1224 = uitofp i32 %1223 to float
  %1225 = fdiv fast float %1205, %1224
  %1226 = fcmp fast olt float %1219, 1.000000e+08
  br i1 %1226, label %1227, label %1236

; <label>:1227                                    ; preds = %1217
  %1228 = fsub fast float %1225, %1219
  %1229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %1230 = extractvalue %dx.types.CBufRet.f32 %1229, 1
  %1231 = fmul fast float %1230, 0xBFF7154760000000
  %1232 = call float @dx.op.unary.f32(i32 21, float %1231)  ; Exp(value)
  %1233 = fsub fast float 1.000000e+00, %1232
  %1234 = fmul fast float %1233, %1228
  %1235 = fadd fast float %1234, %1219
  br label %1236

; <label>:1236                                    ; preds = %1227, %1217
  %1237 = phi float [ %1235, %1227 ], [ %1225, %1217 ]
  %1238 = fmul fast float %1237, 0x3FF7154760000000
  %1239 = call float @dx.op.unary.f32(i32 21, float %1238)  ; Exp(value)
  %1240 = fmul fast float %1239, 8.000000e+00
  %1241 = call float @dx.op.unary.f32(i32 23, float %1240)  ; Log(value)
  %1242 = call float @dx.op.unary.f32(i32 21, float %1241)  ; Exp(value)
  %1243 = fdiv fast float 0x3FEAAAAAA0000000, %1242
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 0, i32 0, i32 undef, float %1243, float %1237, float %1243, float %1243, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1244

; <label>:1244                                    ; preds = %1236, %1212
  %1245 = mul i32 %28, 16
  %1246 = add i32 %31, %1245
  %1247 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateR@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %1246
  store float %1205, float addrspace(3)* %1247, align 4, !tbaa !20
  %1248 = mul i32 %28, 16
  %1249 = add i32 %31, %1248
  %1250 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateG@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %1249
  store float 0.000000e+00, float addrspace(3)* %1250, align 4, !tbaa !20
  %1251 = mul i32 %28, 16
  %1252 = add i32 %31, %1251
  %1253 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateB@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %1252
  store float 0.000000e+00, float addrspace(3)* %1253, align 4, !tbaa !20
  %1254 = mul i32 %28, 16
  %1255 = add i32 %31, %1254
  %1256 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateA@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %1255
  store float 0.000000e+00, float addrspace(3)* %1256, align 4, !tbaa !20
  br label %1257

; <label>:1257                                    ; preds = %1244, %1191
  %1258 = icmp ult i32 %15, 9
  br i1 %1258, label %1646, label %1259

; <label>:1259                                    ; preds = %1257
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1260 = mul i32 %28, 16
  %1261 = add i32 %31, %1260
  %1262 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateR@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %1261
  %1263 = load float, float addrspace(3)* %1262, align 4, !tbaa !20
  %1264 = mul i32 %28, 16
  %1265 = add i32 %31, %1264
  %1266 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateG@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %1265
  %1267 = load float, float addrspace(3)* %1266, align 4, !tbaa !20
  %1268 = mul i32 %28, 16
  %1269 = add i32 %31, %1268
  %1270 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateB@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %1269
  %1271 = load float, float addrspace(3)* %1270, align 4, !tbaa !20
  %1272 = mul i32 %28, 16
  %1273 = add i32 %31, %1272
  %1274 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateA@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %1273
  %1275 = load float, float addrspace(3)* %1274, align 4, !tbaa !20
  %1276 = call i32 @dx.op.waveGetLaneIndex(i32 111)  ; WaveGetLaneIndex()
  %1277 = and i32 %1276, -4
  %1278 = or i32 %1277, 1
  %1279 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1263, i32 %1278)  ; WaveReadLaneAt(value,lane)
  %1280 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1267, i32 %1278)  ; WaveReadLaneAt(value,lane)
  %1281 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1271, i32 %1278)  ; WaveReadLaneAt(value,lane)
  %1282 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1275, i32 %1278)  ; WaveReadLaneAt(value,lane)
  %1283 = or i32 %1277, 2
  %1284 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1263, i32 %1283)  ; WaveReadLaneAt(value,lane)
  %1285 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1267, i32 %1283)  ; WaveReadLaneAt(value,lane)
  %1286 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1271, i32 %1283)  ; WaveReadLaneAt(value,lane)
  %1287 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1275, i32 %1283)  ; WaveReadLaneAt(value,lane)
  %1288 = or i32 %1276, 3
  %1289 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1263, i32 %1288)  ; WaveReadLaneAt(value,lane)
  %1290 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1267, i32 %1288)  ; WaveReadLaneAt(value,lane)
  %1291 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1271, i32 %1288)  ; WaveReadLaneAt(value,lane)
  %1292 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1275, i32 %1288)  ; WaveReadLaneAt(value,lane)
  %1293 = fadd fast float %1279, %1263
  %1294 = fadd fast float %1280, %1267
  %1295 = fadd fast float %1281, %1271
  %1296 = fadd fast float %1282, %1275
  %1297 = fadd fast float %1293, %1284
  %1298 = fadd fast float %1294, %1285
  %1299 = fadd fast float %1295, %1286
  %1300 = fadd fast float %1296, %1287
  %1301 = fadd fast float %1297, %1289
  %1302 = fadd fast float %1298, %1290
  %1303 = fadd fast float %1299, %1291
  %1304 = fadd fast float %1300, %1292
  %1305 = and i32 %10, 3
  %1306 = icmp eq i32 %1305, 0
  br i1 %1306, label %1307, label %1365

; <label>:1307                                    ; preds = %1259
  %1308 = lshr i32 %28, 1
  %1309 = lshr i32 %31, 1
  %1310 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1311 = extractvalue %dx.types.CBufRet.i32 %1310, 2
  %1312 = icmp eq i32 %1311, 8
  br i1 %1312, label %1313, label %1316

; <label>:1313                                    ; preds = %1307
  %1314 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 undef, i32 %1308, i32 %1309, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1315 = extractvalue %dx.types.ResRet.f32 %1314, 0
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %1308, i32 %1309, i32 undef, float %1315, float %1315, float %1315, float %1315, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1316

; <label>:1316                                    ; preds = %1313, %1307
  %1317 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1318 = extractvalue %dx.types.CBufRet.i32 %1317, 0
  %1319 = icmp eq i32 %1318, 9
  %1320 = or i32 %1308, %1309
  %1321 = icmp eq i32 %1320, 0
  %1322 = and i1 %1321, %1319
  br i1 %1322, label %1323, label %1350

; <label>:1323                                    ; preds = %1316
  %1324 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 undef, i32 0, i32 0, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1325 = extractvalue %dx.types.ResRet.f32 %1324, 1
  %1326 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1327 = extractvalue %dx.types.CBufRet.i32 %1326, 0
  %1328 = extractvalue %dx.types.CBufRet.i32 %1326, 1
  %1329 = mul i32 %1327, %1328
  %1330 = uitofp i32 %1329 to float
  %1331 = fdiv fast float %1301, %1330
  %1332 = fcmp fast olt float %1325, 1.000000e+08
  br i1 %1332, label %1333, label %1342

; <label>:1333                                    ; preds = %1323
  %1334 = fsub fast float %1331, %1325
  %1335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %1336 = extractvalue %dx.types.CBufRet.f32 %1335, 1
  %1337 = fmul fast float %1336, 0xBFF7154760000000
  %1338 = call float @dx.op.unary.f32(i32 21, float %1337)  ; Exp(value)
  %1339 = fsub fast float 1.000000e+00, %1338
  %1340 = fmul fast float %1339, %1334
  %1341 = fadd fast float %1340, %1325
  br label %1342

; <label>:1342                                    ; preds = %1333, %1323
  %1343 = phi float [ %1341, %1333 ], [ %1331, %1323 ]
  %1344 = fmul fast float %1343, 0x3FF7154760000000
  %1345 = call float @dx.op.unary.f32(i32 21, float %1344)  ; Exp(value)
  %1346 = fmul fast float %1345, 8.000000e+00
  %1347 = call float @dx.op.unary.f32(i32 23, float %1346)  ; Log(value)
  %1348 = call float @dx.op.unary.f32(i32 21, float %1347)  ; Exp(value)
  %1349 = fdiv fast float 0x3FEAAAAAA0000000, %1348
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 0, i32 0, i32 undef, float %1349, float %1343, float %1349, float %1349, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1350

; <label>:1350                                    ; preds = %1342, %1316
  %1351 = and i32 %18, 1
  %1352 = add nuw nsw i32 %28, %1351
  %1353 = mul i32 %1352, 16
  %1354 = add i32 %31, %1353
  %1355 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateR@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %1354
  store float %1301, float addrspace(3)* %1355, align 4, !tbaa !20
  %1356 = mul i32 %1352, 16
  %1357 = add i32 %31, %1356
  %1358 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateG@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %1357
  store float %1302, float addrspace(3)* %1358, align 4, !tbaa !20
  %1359 = mul i32 %1352, 16
  %1360 = add i32 %31, %1359
  %1361 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateB@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %1360
  store float %1303, float addrspace(3)* %1361, align 4, !tbaa !20
  %1362 = mul i32 %1352, 16
  %1363 = add i32 %31, %1362
  %1364 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateA@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %1363
  store float %1304, float addrspace(3)* %1364, align 4, !tbaa !20
  br label %1365

; <label>:1365                                    ; preds = %1350, %1259
  %1366 = icmp ult i32 %15, 10
  br i1 %1366, label %1646, label %1367

; <label>:1367                                    ; preds = %1365
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1368 = icmp ult i32 %10, 64
  br i1 %1368, label %1369, label %1469

; <label>:1369                                    ; preds = %1367
  %1370 = and i32 %22, 1
  %1371 = or i32 %34, %1370
  %1372 = mul i32 %1371, 16
  %1373 = add i32 %35, %1372
  %1374 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateR@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %1373
  %1375 = load float, float addrspace(3)* %1374, align 4, !tbaa !20
  %1376 = mul i32 %1371, 16
  %1377 = add i32 %35, %1376
  %1378 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateG@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %1377
  %1379 = load float, float addrspace(3)* %1378, align 4, !tbaa !20
  %1380 = mul i32 %1371, 16
  %1381 = add i32 %35, %1380
  %1382 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateB@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %1381
  %1383 = load float, float addrspace(3)* %1382, align 4, !tbaa !20
  %1384 = mul i32 %1371, 16
  %1385 = add i32 %35, %1384
  %1386 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateA@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %1385
  %1387 = load float, float addrspace(3)* %1386, align 4, !tbaa !20
  %1388 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1375, i32 %1278)  ; WaveReadLaneAt(value,lane)
  %1389 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1379, i32 %1278)  ; WaveReadLaneAt(value,lane)
  %1390 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1383, i32 %1278)  ; WaveReadLaneAt(value,lane)
  %1391 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1387, i32 %1278)  ; WaveReadLaneAt(value,lane)
  %1392 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1375, i32 %1283)  ; WaveReadLaneAt(value,lane)
  %1393 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1379, i32 %1283)  ; WaveReadLaneAt(value,lane)
  %1394 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1383, i32 %1283)  ; WaveReadLaneAt(value,lane)
  %1395 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1387, i32 %1283)  ; WaveReadLaneAt(value,lane)
  %1396 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1375, i32 %1288)  ; WaveReadLaneAt(value,lane)
  %1397 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1379, i32 %1288)  ; WaveReadLaneAt(value,lane)
  %1398 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1383, i32 %1288)  ; WaveReadLaneAt(value,lane)
  %1399 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1387, i32 %1288)  ; WaveReadLaneAt(value,lane)
  %1400 = fadd fast float %1388, %1375
  %1401 = fadd fast float %1389, %1379
  %1402 = fadd fast float %1390, %1383
  %1403 = fadd fast float %1391, %1387
  %1404 = fadd fast float %1400, %1392
  %1405 = fadd fast float %1401, %1393
  %1406 = fadd fast float %1402, %1394
  %1407 = fadd fast float %1403, %1395
  %1408 = fadd fast float %1404, %1396
  %1409 = fadd fast float %1405, %1397
  %1410 = fadd fast float %1406, %1398
  %1411 = fadd fast float %1407, %1399
  br i1 %1306, label %1412, label %1469

; <label>:1412                                    ; preds = %1369
  %1413 = lshr i32 %28, 1
  %1414 = lshr i32 %31, 1
  %1415 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1416 = extractvalue %dx.types.CBufRet.i32 %1415, 2
  %1417 = icmp eq i32 %1416, 9
  br i1 %1417, label %1418, label %1421

; <label>:1418                                    ; preds = %1412
  %1419 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 undef, i32 %1413, i32 %1414, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1420 = extractvalue %dx.types.ResRet.f32 %1419, 0
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %1413, i32 %1414, i32 undef, float %1420, float %1420, float %1420, float %1420, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1421

; <label>:1421                                    ; preds = %1418, %1412
  %1422 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1423 = extractvalue %dx.types.CBufRet.i32 %1422, 0
  %1424 = icmp eq i32 %1423, 10
  %1425 = or i32 %1413, %1414
  %1426 = icmp eq i32 %1425, 0
  %1427 = and i1 %1426, %1424
  br i1 %1427, label %1428, label %1455

; <label>:1428                                    ; preds = %1421
  %1429 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 undef, i32 0, i32 0, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1430 = extractvalue %dx.types.ResRet.f32 %1429, 1
  %1431 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1432 = extractvalue %dx.types.CBufRet.i32 %1431, 0
  %1433 = extractvalue %dx.types.CBufRet.i32 %1431, 1
  %1434 = mul i32 %1432, %1433
  %1435 = uitofp i32 %1434 to float
  %1436 = fdiv fast float %1408, %1435
  %1437 = fcmp fast olt float %1430, 1.000000e+08
  br i1 %1437, label %1438, label %1447

; <label>:1438                                    ; preds = %1428
  %1439 = fsub fast float %1436, %1430
  %1440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %1441 = extractvalue %dx.types.CBufRet.f32 %1440, 1
  %1442 = fmul fast float %1441, 0xBFF7154760000000
  %1443 = call float @dx.op.unary.f32(i32 21, float %1442)  ; Exp(value)
  %1444 = fsub fast float 1.000000e+00, %1443
  %1445 = fmul fast float %1444, %1439
  %1446 = fadd fast float %1445, %1430
  br label %1447

; <label>:1447                                    ; preds = %1438, %1428
  %1448 = phi float [ %1446, %1438 ], [ %1436, %1428 ]
  %1449 = fmul fast float %1448, 0x3FF7154760000000
  %1450 = call float @dx.op.unary.f32(i32 21, float %1449)  ; Exp(value)
  %1451 = fmul fast float %1450, 8.000000e+00
  %1452 = call float @dx.op.unary.f32(i32 23, float %1451)  ; Log(value)
  %1453 = call float @dx.op.unary.f32(i32 21, float %1452)  ; Exp(value)
  %1454 = fdiv fast float 0x3FEAAAAAA0000000, %1453
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 0, i32 0, i32 undef, float %1454, float %1448, float %1454, float %1454, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1455

; <label>:1455                                    ; preds = %1447, %1421
  %1456 = add nuw nsw i32 %34, %1414
  %1457 = mul i32 %1456, 16
  %1458 = add i32 %35, %1457
  %1459 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateR@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %1458
  store float %1408, float addrspace(3)* %1459, align 4, !tbaa !20
  %1460 = mul i32 %1456, 16
  %1461 = add i32 %35, %1460
  %1462 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateG@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %1461
  store float %1409, float addrspace(3)* %1462, align 4, !tbaa !20
  %1463 = mul i32 %1456, 16
  %1464 = add i32 %35, %1463
  %1465 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateB@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %1464
  store float %1410, float addrspace(3)* %1465, align 4, !tbaa !20
  %1466 = mul i32 %1456, 16
  %1467 = add i32 %35, %1466
  %1468 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateA@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %1467
  store float %1411, float addrspace(3)* %1468, align 4, !tbaa !20
  br label %1469

; <label>:1469                                    ; preds = %1455, %1369, %1367
  %1470 = icmp ult i32 %15, 11
  br i1 %1470, label %1646, label %1471

; <label>:1471                                    ; preds = %1469
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1472 = icmp ult i32 %10, 16
  br i1 %1472, label %1473, label %1572

; <label>:1473                                    ; preds = %1471
  %1474 = add nuw nsw i32 %1085, %31
  %1475 = mul i32 %1474, 16
  %1476 = add i32 %1086, %1475
  %1477 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateR@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %1476
  %1478 = load float, float addrspace(3)* %1477, align 4, !tbaa !20
  %1479 = mul i32 %1474, 16
  %1480 = add i32 %1086, %1479
  %1481 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateG@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %1480
  %1482 = load float, float addrspace(3)* %1481, align 4, !tbaa !20
  %1483 = mul i32 %1474, 16
  %1484 = add i32 %1086, %1483
  %1485 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateB@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %1484
  %1486 = load float, float addrspace(3)* %1485, align 4, !tbaa !20
  %1487 = mul i32 %1474, 16
  %1488 = add i32 %1086, %1487
  %1489 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateA@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %1488
  %1490 = load float, float addrspace(3)* %1489, align 4, !tbaa !20
  %1491 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1478, i32 %1278)  ; WaveReadLaneAt(value,lane)
  %1492 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1482, i32 %1278)  ; WaveReadLaneAt(value,lane)
  %1493 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1486, i32 %1278)  ; WaveReadLaneAt(value,lane)
  %1494 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1490, i32 %1278)  ; WaveReadLaneAt(value,lane)
  %1495 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1478, i32 %1283)  ; WaveReadLaneAt(value,lane)
  %1496 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1482, i32 %1283)  ; WaveReadLaneAt(value,lane)
  %1497 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1486, i32 %1283)  ; WaveReadLaneAt(value,lane)
  %1498 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1490, i32 %1283)  ; WaveReadLaneAt(value,lane)
  %1499 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1478, i32 %1288)  ; WaveReadLaneAt(value,lane)
  %1500 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1482, i32 %1288)  ; WaveReadLaneAt(value,lane)
  %1501 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1486, i32 %1288)  ; WaveReadLaneAt(value,lane)
  %1502 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1490, i32 %1288)  ; WaveReadLaneAt(value,lane)
  %1503 = fadd fast float %1491, %1478
  %1504 = fadd fast float %1492, %1482
  %1505 = fadd fast float %1493, %1486
  %1506 = fadd fast float %1494, %1490
  %1507 = fadd fast float %1503, %1495
  %1508 = fadd fast float %1504, %1496
  %1509 = fadd fast float %1505, %1497
  %1510 = fadd fast float %1506, %1498
  %1511 = fadd fast float %1507, %1499
  %1512 = fadd fast float %1508, %1500
  %1513 = fadd fast float %1509, %1501
  %1514 = fadd fast float %1510, %1502
  br i1 %1306, label %1515, label %1572

; <label>:1515                                    ; preds = %1473
  %1516 = lshr i32 %28, 1
  %1517 = lshr i32 %31, 1
  %1518 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1519 = extractvalue %dx.types.CBufRet.i32 %1518, 2
  %1520 = icmp eq i32 %1519, 10
  br i1 %1520, label %1521, label %1524

; <label>:1521                                    ; preds = %1515
  %1522 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 undef, i32 %1516, i32 %1517, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1523 = extractvalue %dx.types.ResRet.f32 %1522, 0
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %1516, i32 %1517, i32 undef, float %1523, float %1523, float %1523, float %1523, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1524

; <label>:1524                                    ; preds = %1521, %1515
  %1525 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1526 = extractvalue %dx.types.CBufRet.i32 %1525, 0
  %1527 = icmp eq i32 %1526, 11
  %1528 = or i32 %1516, %1517
  %1529 = icmp eq i32 %1528, 0
  %1530 = and i1 %1529, %1527
  br i1 %1530, label %1531, label %1558

; <label>:1531                                    ; preds = %1524
  %1532 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 undef, i32 0, i32 0, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1533 = extractvalue %dx.types.ResRet.f32 %1532, 1
  %1534 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1535 = extractvalue %dx.types.CBufRet.i32 %1534, 0
  %1536 = extractvalue %dx.types.CBufRet.i32 %1534, 1
  %1537 = mul i32 %1535, %1536
  %1538 = uitofp i32 %1537 to float
  %1539 = fdiv fast float %1511, %1538
  %1540 = fcmp fast olt float %1533, 1.000000e+08
  br i1 %1540, label %1541, label %1550

; <label>:1541                                    ; preds = %1531
  %1542 = fsub fast float %1539, %1533
  %1543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %1544 = extractvalue %dx.types.CBufRet.f32 %1543, 1
  %1545 = fmul fast float %1544, 0xBFF7154760000000
  %1546 = call float @dx.op.unary.f32(i32 21, float %1545)  ; Exp(value)
  %1547 = fsub fast float 1.000000e+00, %1546
  %1548 = fmul fast float %1547, %1542
  %1549 = fadd fast float %1548, %1533
  br label %1550

; <label>:1550                                    ; preds = %1541, %1531
  %1551 = phi float [ %1549, %1541 ], [ %1539, %1531 ]
  %1552 = fmul fast float %1551, 0x3FF7154760000000
  %1553 = call float @dx.op.unary.f32(i32 21, float %1552)  ; Exp(value)
  %1554 = fmul fast float %1553, 8.000000e+00
  %1555 = call float @dx.op.unary.f32(i32 23, float %1554)  ; Log(value)
  %1556 = call float @dx.op.unary.f32(i32 21, float %1555)  ; Exp(value)
  %1557 = fdiv fast float 0x3FEAAAAAA0000000, %1556
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 0, i32 0, i32 undef, float %1557, float %1551, float %1557, float %1557, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1558

; <label>:1558                                    ; preds = %1550, %1524
  %1559 = add nuw nsw i32 %1516, %31
  %1560 = mul i32 %1559, 16
  %1561 = add i32 0, %1560
  %1562 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateR@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %1561
  store float %1511, float addrspace(3)* %1562, align 4, !tbaa !20
  %1563 = mul i32 %1559, 16
  %1564 = add i32 0, %1563
  %1565 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateG@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %1564
  store float %1512, float addrspace(3)* %1565, align 4, !tbaa !20
  %1566 = mul i32 %1559, 16
  %1567 = add i32 0, %1566
  %1568 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateB@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %1567
  store float %1513, float addrspace(3)* %1568, align 4, !tbaa !20
  %1569 = mul i32 %1559, 16
  %1570 = add i32 0, %1569
  %1571 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateA@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %1570
  store float %1514, float addrspace(3)* %1571, align 4, !tbaa !20
  br label %1572

; <label>:1572                                    ; preds = %1558, %1473, %1471
  %1573 = icmp ult i32 %15, 12
  br i1 %1573, label %1646, label %1574

; <label>:1574                                    ; preds = %1572
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1575 = icmp ult i32 %10, 4
  br i1 %1575, label %1576, label %1646

; <label>:1576                                    ; preds = %1574
  %1577 = mul i32 %10, 16
  %1578 = add i32 0, %1577
  %1579 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateR@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %1578
  %1580 = load float, float addrspace(3)* %1579, align 4, !tbaa !20
  %1581 = mul i32 %10, 16
  %1582 = add i32 0, %1581
  %1583 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateG@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %1582
  %1584 = load float, float addrspace(3)* %1583, align 4, !tbaa !20
  %1585 = mul i32 %10, 16
  %1586 = add i32 0, %1585
  %1587 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateB@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %1586
  %1588 = load float, float addrspace(3)* %1587, align 4, !tbaa !20
  %1589 = mul i32 %10, 16
  %1590 = add i32 0, %1589
  %1591 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?spdIntermediateA@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %1590
  %1592 = load float, float addrspace(3)* %1591, align 4, !tbaa !20
  %1593 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1580, i32 %1278)  ; WaveReadLaneAt(value,lane)
  %1594 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1584, i32 %1278)  ; WaveReadLaneAt(value,lane)
  %1595 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1588, i32 %1278)  ; WaveReadLaneAt(value,lane)
  %1596 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1592, i32 %1278)  ; WaveReadLaneAt(value,lane)
  %1597 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1580, i32 %1283)  ; WaveReadLaneAt(value,lane)
  %1598 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1584, i32 %1283)  ; WaveReadLaneAt(value,lane)
  %1599 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1588, i32 %1283)  ; WaveReadLaneAt(value,lane)
  %1600 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1592, i32 %1283)  ; WaveReadLaneAt(value,lane)
  %1601 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1580, i32 %1288)  ; WaveReadLaneAt(value,lane)
  %1602 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1584, i32 %1288)  ; WaveReadLaneAt(value,lane)
  %1603 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1588, i32 %1288)  ; WaveReadLaneAt(value,lane)
  %1604 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1592, i32 %1288)  ; WaveReadLaneAt(value,lane)
  %1605 = fadd fast float %1593, %1580
  %1606 = fadd fast float %1605, %1597
  %1607 = fadd fast float %1606, %1601
  br i1 %1306, label %1608, label %1646

; <label>:1608                                    ; preds = %1576
  %1609 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1610 = extractvalue %dx.types.CBufRet.i32 %1609, 2
  %1611 = icmp eq i32 %1610, 11
  br i1 %1611, label %1612, label %1615

; <label>:1612                                    ; preds = %1608
  %1613 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 undef, i32 0, i32 0, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1614 = extractvalue %dx.types.ResRet.f32 %1613, 0
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 0, i32 0, i32 undef, float %1614, float %1614, float %1614, float %1614, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1615

; <label>:1615                                    ; preds = %1612, %1608
  %1616 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1617 = extractvalue %dx.types.CBufRet.i32 %1616, 0
  %1618 = icmp eq i32 %1617, 12
  br i1 %1618, label %1619, label %1646

; <label>:1619                                    ; preds = %1615
  %1620 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 undef, i32 0, i32 0, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1621 = extractvalue %dx.types.ResRet.f32 %1620, 1
  %1622 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1623 = extractvalue %dx.types.CBufRet.i32 %1622, 0
  %1624 = extractvalue %dx.types.CBufRet.i32 %1622, 1
  %1625 = mul i32 %1623, %1624
  %1626 = uitofp i32 %1625 to float
  %1627 = fdiv fast float %1607, %1626
  %1628 = fcmp fast olt float %1621, 1.000000e+08
  br i1 %1628, label %1629, label %1638

; <label>:1629                                    ; preds = %1619
  %1630 = fsub fast float %1627, %1621
  %1631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %1632 = extractvalue %dx.types.CBufRet.f32 %1631, 1
  %1633 = fmul fast float %1632, 0xBFF7154760000000
  %1634 = call float @dx.op.unary.f32(i32 21, float %1633)  ; Exp(value)
  %1635 = fsub fast float 1.000000e+00, %1634
  %1636 = fmul fast float %1635, %1630
  %1637 = fadd fast float %1636, %1621
  br label %1638

; <label>:1638                                    ; preds = %1629, %1619
  %1639 = phi float [ %1637, %1629 ], [ %1627, %1619 ]
  %1640 = fmul fast float %1639, 0x3FF7154760000000
  %1641 = call float @dx.op.unary.f32(i32 21, float %1640)  ; Exp(value)
  %1642 = fmul fast float %1641, 8.000000e+00
  %1643 = call float @dx.op.unary.f32(i32 23, float %1642)  ; Log(value)
  %1644 = call float @dx.op.unary.f32(i32 21, float %1643)  ; Exp(value)
  %1645 = fdiv fast float 0x3FEAAAAAA0000000, %1644
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 0, i32 0, i32 undef, float %1645, float %1639, float %1645, float %1645, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1646

; <label>:1646                                    ; preds = %1638, %1615, %1576, %1574, %1572, %1469, %1365, %1257, %1080, %1074
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.waveGetLaneIndex(i32) #0

; Function Attrs: nounwind
declare float @dx.op.waveReadLaneAt.f32(i32, float, i32) #2

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #3

; Function Attrs: nounwind
declare i32 @dx.op.atomicBinOp.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @dx.op.textureStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32, i8) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }
attributes #3 = { noduplicate nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!17}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 2}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 2}
!4 = !{!5, !8, !14, null}
!5 = !{!6}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{!9, !10, !11, !12}
!9 = !{i32 0, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 true, i1 false, i1 false, !7}
!10 = !{i32 1, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 true, i1 false, i1 false, !7}
!11 = !{i32 2, %"class.RWTexture2D<vector<float, 2> >"* undef, !"", i32 0, i32 3, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!12 = !{i32 3, %"class.RWTexture2D<unsigned int>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 true, i1 false, i1 false, !13}
!13 = !{i32 0, i32 5}
!14 = !{!15, !16}
!15 = !{i32 0, %cbFSR2* undef, !"", i32 0, i32 0, i32 1, i32 144, null}
!16 = !{i32 1, %cbSPD* undef, !"", i32 0, i32 1, i32 1, i32 24, null}
!17 = !{void ()* @CS, !"CS", null, !4, !18}
!18 = !{i32 0, i64 532480, i32 4, !19}
!19 = !{i32 256, i32 1, i32 1}
!20 = !{!21, !21, i64 0}
!21 = !{!"float", !22, i64 0}
!22 = !{!"omnipotent char", !23, i64 0}
!23 = !{!"Simple C/C++ TBAA"}
!24 = !{!25, !25, i64 0}
!25 = !{!"int", !22, i64 0}

