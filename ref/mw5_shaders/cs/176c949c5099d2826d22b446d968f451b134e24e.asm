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
; shader hash: b8bf22c165dac06a17b0ba1f98473b9d
;
; Pipeline Runtime Information: 
;
;
;
; Buffer Definitions:
;
; cbuffer 
; {
;
;   [32 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb0     1
;                                   sampler      NA          NA      S0             s2     1
;                                   texture     f32          2d      T0             t0     1
;                                       UAV     f32          2d      U0             u0     1
;                                       UAV     f32          2d      U1             u1     1
;                                       UAV     f32          2d      U2             u2     1
;                                       UAV     f32          2d      U3             u3     1
;                                       UAV     f32          2d      U4             u7     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.RWTexture2D<float>" = type { float }
%FloatZDownsampleConsts = type { <4 x float>, i32, i32, i32, i32 }
%struct.SamplerState = type { i32 }

@"\01?floatZValues@@3PAY0BA@$$CAIA.1dim" = addrspace(3) global [256 x i32] undef, align 4

define void @cs_floatz_downsample_border_last_min_only() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 4, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %10 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %11 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %12 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %13 = extractvalue %dx.types.CBufRet.i32 %12, 2
  %14 = icmp ult i32 %11, %13
  %15 = extractvalue %dx.types.CBufRet.i32 %12, 0
  %16 = sub i32 %11, %13
  %17 = extractvalue %dx.types.CBufRet.i32 %12, 1
  %18 = select i1 %14, i32 %15, i32 %16
  %19 = select i1 %14, i32 %11, i32 %17
  %20 = shl i32 %18, 3
  %21 = shl i32 %19, 3
  %22 = add i32 %20, %9
  %23 = add i32 %21, %10
  %24 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %25 = extractvalue %dx.types.CBufRet.f32 %24, 0
  %26 = extractvalue %dx.types.CBufRet.f32 %24, 1
  %27 = fptoui float %25 to i32
  %28 = fptoui float %26 to i32
  %29 = icmp ult i32 %19, %17
  %30 = fcmp ule float %26, 1.600000e+01
  %31 = or i1 %29, %30
  %32 = icmp ugt i32 %10, 7
  %33 = and i1 %32, %31
  %34 = icmp ult i32 %18, %15
  %35 = fcmp ule float %25, 1.600000e+01
  %36 = or i1 %34, %35
  %37 = icmp ugt i32 %9, 7
  %38 = and i1 %37, %36
  %39 = or i1 %33, %38
  %40 = xor i1 %39, true
  %41 = lshr i32 %27, 1
  %42 = lshr i32 %28, 1
  %43 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %41)  ; UMax(a,b)
  %44 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %42)  ; UMax(a,b)
  %45 = icmp ult i32 %22, %43
  %46 = icmp ult i32 %23, %44
  %47 = and i1 %45, %46
  %48 = and i1 %47, %40
  %49 = shl i32 %22, 1
  %50 = shl i32 %23, 1
  br i1 %48, label %51, label %78, !dx.controlflow.hints !21

; <label>:51                                      ; preds = %0
  %52 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %53 = extractvalue %dx.types.CBufRet.f32 %52, 2
  %54 = extractvalue %dx.types.CBufRet.f32 %52, 3
  %55 = uitofp i32 %49 to float
  %56 = uitofp i32 %50 to float
  %57 = fadd fast float %55, 1.000000e+00
  %58 = fadd fast float %56, 1.000000e+00
  %59 = fmul fast float %53, %57
  %60 = fmul fast float %54, %58
  %61 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %7, float %59, float %60, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %62 = extractvalue %dx.types.ResRet.f32 %61, 0
  %63 = extractvalue %dx.types.ResRet.f32 %61, 1
  %64 = extractvalue %dx.types.ResRet.f32 %61, 2
  %65 = extractvalue %dx.types.ResRet.f32 %61, 3
  %66 = and i32 %27, 1
  %67 = icmp ne i32 %66, 0
  %68 = add i32 %27, -3
  %69 = icmp eq i32 %68, %49
  %70 = and i1 %67, %69
  %71 = zext i1 %70 to i32
  %72 = and i32 %28, 1
  %73 = icmp ne i32 %72, 0
  %74 = add i32 %28, -3
  %75 = icmp eq i32 %74, %50
  %76 = and i1 %73, %75
  %77 = zext i1 %76 to i32
  br label %78

; <label>:78                                      ; preds = %51, %0
  %79 = phi float [ %62, %51 ], [ 0.000000e+00, %0 ]
  %80 = phi float [ %63, %51 ], [ 0.000000e+00, %0 ]
  %81 = phi float [ %64, %51 ], [ 0.000000e+00, %0 ]
  %82 = phi float [ %65, %51 ], [ 0.000000e+00, %0 ]
  %83 = phi i32 [ %71, %51 ], [ 0, %0 ]
  %84 = phi i32 [ %77, %51 ], [ 0, %0 ]
  %85 = fcmp fast ole float %79, -1.000000e+00
  %86 = fcmp fast ole float %80, -1.000000e+00
  %87 = fcmp fast ole float %81, -1.000000e+00
  %88 = fcmp fast ole float %82, -1.000000e+00
  %89 = select i1 %85, float -1.000000e+00, float %79
  %90 = select i1 %86, float -1.000000e+00, float %80
  %91 = select i1 %87, float -1.000000e+00, float %81
  %92 = select i1 %88, float -1.000000e+00, float %82
  %93 = and i1 %85, %86
  %94 = and i1 %93, %87
  %95 = and i1 %94, %88
  %96 = call float @dx.op.binary.f32(i32 36, float %80, float %81)  ; FMin(a,b)
  %97 = call float @dx.op.binary.f32(i32 36, float %79, float %96)  ; FMin(a,b)
  %98 = call float @dx.op.binary.f32(i32 36, float %97, float %82)  ; FMin(a,b)
  %99 = call float @dx.op.binary.f32(i32 35, float %90, float %91)  ; FMax(a,b)
  %100 = call float @dx.op.binary.f32(i32 35, float %89, float %99)  ; FMax(a,b)
  %101 = call float @dx.op.binary.f32(i32 35, float %100, float %92)  ; FMax(a,b)
  %102 = select i1 %95, float %98, float %101
  %103 = icmp eq i32 %83, 0
  br i1 %103, label %124, label %104, !dx.controlflow.hints !22

; <label>:104                                     ; preds = %78
  %105 = add i32 %49, 2
  %106 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %105, i32 %50, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %107 = extractvalue %dx.types.ResRet.f32 %106, 0
  %108 = or i32 %50, 1
  %109 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %105, i32 %108, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %110 = extractvalue %dx.types.ResRet.f32 %109, 0
  %111 = fcmp fast ole float %102, -1.000000e+00
  %112 = fcmp fast ole float %107, -1.000000e+00
  %113 = fcmp fast ole float %110, -1.000000e+00
  %114 = select i1 %111, float -1.000000e+00, float %102
  %115 = select i1 %112, float -1.000000e+00, float %107
  %116 = select i1 %113, float -1.000000e+00, float %110
  %117 = and i1 %111, %112
  %118 = and i1 %117, %113
  %119 = call float @dx.op.binary.f32(i32 36, float %107, float %110)  ; FMin(a,b)
  %120 = call float @dx.op.binary.f32(i32 36, float %102, float %119)  ; FMin(a,b)
  %121 = call float @dx.op.binary.f32(i32 35, float %115, float %116)  ; FMax(a,b)
  %122 = call float @dx.op.binary.f32(i32 35, float %114, float %121)  ; FMax(a,b)
  %123 = select i1 %118, float %120, float %122
  br label %124

; <label>:124                                     ; preds = %104, %78
  %125 = phi float [ %123, %104 ], [ %102, %78 ]
  %126 = icmp eq i32 %84, 0
  br i1 %126, label %147, label %127, !dx.controlflow.hints !23

; <label>:127                                     ; preds = %124
  %128 = add i32 %50, 2
  %129 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %49, i32 %128, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %130 = extractvalue %dx.types.ResRet.f32 %129, 0
  %131 = or i32 %49, 1
  %132 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %131, i32 %128, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %133 = extractvalue %dx.types.ResRet.f32 %132, 0
  %134 = fcmp fast ole float %125, -1.000000e+00
  %135 = fcmp fast ole float %130, -1.000000e+00
  %136 = fcmp fast ole float %133, -1.000000e+00
  %137 = select i1 %134, float -1.000000e+00, float %125
  %138 = select i1 %135, float -1.000000e+00, float %130
  %139 = select i1 %136, float -1.000000e+00, float %133
  %140 = and i1 %134, %135
  %141 = and i1 %140, %136
  %142 = call float @dx.op.binary.f32(i32 36, float %130, float %133)  ; FMin(a,b)
  %143 = call float @dx.op.binary.f32(i32 36, float %125, float %142)  ; FMin(a,b)
  %144 = call float @dx.op.binary.f32(i32 35, float %138, float %139)  ; FMax(a,b)
  %145 = call float @dx.op.binary.f32(i32 35, float %137, float %144)  ; FMax(a,b)
  %146 = select i1 %141, float %143, float %145
  br label %147

; <label>:147                                     ; preds = %127, %124
  %148 = phi float [ %146, %127 ], [ %125, %124 ]
  %149 = icmp ne i32 %83, 0
  %150 = icmp ne i32 %84, 0
  %151 = and i1 %149, %150
  br i1 %151, label %152, label %165, !dx.controlflow.hints !24

; <label>:152                                     ; preds = %147
  %153 = add i32 %49, 2
  %154 = add i32 %50, 2
  %155 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %153, i32 %154, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %156 = extractvalue %dx.types.ResRet.f32 %155, 0
  %157 = fcmp fast ole float %148, -1.000000e+00
  %158 = fcmp fast ole float %156, -1.000000e+00
  %159 = select i1 %157, float -1.000000e+00, float %148
  %160 = select i1 %158, float -1.000000e+00, float %156
  %161 = and i1 %157, %158
  %162 = call float @dx.op.binary.f32(i32 36, float %148, float %156)  ; FMin(a,b)
  %163 = call float @dx.op.binary.f32(i32 35, float %159, float %160)  ; FMax(a,b)
  %164 = select i1 %161, float %162, float %163
  br label %165

; <label>:165                                     ; preds = %152, %147
  %166 = phi float [ %164, %152 ], [ %148, %147 ]
  br i1 %48, label %167, label %177, !dx.controlflow.hints !25

; <label>:167                                     ; preds = %165
  %168 = call i32 @dx.op.legacyF32ToF16(i32 130, float %166)  ; LegacyF32ToF16(value)
  %169 = call i32 @dx.op.legacyF32ToF16(i32 130, float 0.000000e+00)  ; LegacyF32ToF16(value)
  %170 = shl i32 %169, 16
  %171 = or i32 %170, %168
  %172 = and i32 %23, 15
  %173 = and i32 %22, 15
  %174 = mul i32 %173, 16
  %175 = add i32 %172, %174
  %176 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %175
  store i32 %171, i32 addrspace(3)* %176, align 4, !tbaa !26
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %5, i32 %22, i32 %23, i32 undef, float %166, float %166, float %166, float %166, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %177

; <label>:177                                     ; preds = %167, %165
  %178 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %179 = extractvalue %dx.types.CBufRet.i32 %178, 3
  %180 = icmp ugt i32 %179, 1
  br i1 %180, label %181, label %446, !dx.controlflow.hints !30

; <label>:181                                     ; preds = %177
  %182 = lshr i32 %22, 1
  %183 = lshr i32 %23, 1
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %184 = lshr i32 %43, 1
  %185 = lshr i32 %44, 1
  %186 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %184)  ; UMax(a,b)
  %187 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %185)  ; UMax(a,b)
  %188 = icmp ult i32 %182, %186
  %189 = icmp ult i32 %183, %187
  %190 = and i1 %188, %189
  %191 = and i1 %190, %40
  %192 = shl nuw i32 %182, 1
  %193 = shl nuw i32 %183, 1
  br i1 %191, label %194, label %254, !dx.controlflow.hints !31

; <label>:194                                     ; preds = %181
  %195 = or i32 %192, 1
  %196 = or i32 %193, 1
  %197 = add i32 %43, -1
  %198 = add i32 %44, -1
  %199 = call i32 @dx.op.binary.i32(i32 40, i32 %192, i32 %197)  ; UMin(a,b)
  %200 = call i32 @dx.op.binary.i32(i32 40, i32 %193, i32 %198)  ; UMin(a,b)
  %201 = call i32 @dx.op.binary.i32(i32 40, i32 %195, i32 %197)  ; UMin(a,b)
  %202 = call i32 @dx.op.binary.i32(i32 40, i32 %196, i32 %198)  ; UMin(a,b)
  %203 = and i32 %199, 15
  %204 = and i32 %200, 15
  %205 = and i32 %201, 15
  %206 = and i32 %202, 15
  %207 = mul i32 %203, 16
  %208 = add i32 %204, %207
  %209 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %208
  %210 = load i32, i32 addrspace(3)* %209, align 4, !tbaa !26
  %211 = and i32 %210, 65535
  %212 = call float @dx.op.legacyF16ToF32(i32 131, i32 %211)  ; LegacyF16ToF32(value)
  %213 = lshr i32 %210, 16
  %214 = call float @dx.op.legacyF16ToF32(i32 131, i32 %213)  ; LegacyF16ToF32(value)
  %215 = mul i32 %205, 16
  %216 = add i32 %204, %215
  %217 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %216
  %218 = load i32, i32 addrspace(3)* %217, align 4, !tbaa !26
  %219 = and i32 %218, 65535
  %220 = call float @dx.op.legacyF16ToF32(i32 131, i32 %219)  ; LegacyF16ToF32(value)
  %221 = lshr i32 %218, 16
  %222 = call float @dx.op.legacyF16ToF32(i32 131, i32 %221)  ; LegacyF16ToF32(value)
  %223 = mul i32 %203, 16
  %224 = add i32 %206, %223
  %225 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %224
  %226 = load i32, i32 addrspace(3)* %225, align 4, !tbaa !26
  %227 = and i32 %226, 65535
  %228 = call float @dx.op.legacyF16ToF32(i32 131, i32 %227)  ; LegacyF16ToF32(value)
  %229 = lshr i32 %226, 16
  %230 = call float @dx.op.legacyF16ToF32(i32 131, i32 %229)  ; LegacyF16ToF32(value)
  %231 = mul i32 %205, 16
  %232 = add i32 %206, %231
  %233 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %232
  %234 = load i32, i32 addrspace(3)* %233, align 4, !tbaa !26
  %235 = and i32 %234, 65535
  %236 = call float @dx.op.legacyF16ToF32(i32 131, i32 %235)  ; LegacyF16ToF32(value)
  %237 = lshr i32 %234, 16
  %238 = call float @dx.op.legacyF16ToF32(i32 131, i32 %237)  ; LegacyF16ToF32(value)
  %239 = icmp ugt i32 %43, 1
  %240 = and i32 %43, 1
  %241 = icmp ne i32 %240, 0
  %242 = and i1 %239, %241
  %243 = add i32 %43, -3
  %244 = icmp eq i32 %243, %192
  %245 = and i1 %244, %242
  %246 = icmp ugt i32 %44, 1
  %247 = and i32 %44, 1
  %248 = icmp ne i32 %247, 0
  %249 = and i1 %246, %248
  %250 = add i32 %44, -3
  %251 = icmp eq i32 %250, %193
  %252 = and i1 %251, %249
  %253 = zext i1 %252 to i32
  br label %254

; <label>:254                                     ; preds = %194, %181
  %255 = phi float [ %212, %194 ], [ 0.000000e+00, %181 ]
  %256 = phi float [ %220, %194 ], [ 0.000000e+00, %181 ]
  %257 = phi float [ %228, %194 ], [ 0.000000e+00, %181 ]
  %258 = phi float [ %236, %194 ], [ 0.000000e+00, %181 ]
  %259 = phi float [ %214, %194 ], [ 0.000000e+00, %181 ]
  %260 = phi float [ %222, %194 ], [ 0.000000e+00, %181 ]
  %261 = phi float [ %230, %194 ], [ 0.000000e+00, %181 ]
  %262 = phi float [ %238, %194 ], [ 0.000000e+00, %181 ]
  %263 = phi i1 [ %245, %194 ], [ false, %181 ]
  %264 = phi i32 [ %253, %194 ], [ 0, %181 ]
  %265 = fcmp fast ole float %255, -1.000000e+00
  %266 = fcmp fast ole float %256, -1.000000e+00
  %267 = fcmp fast ole float %257, -1.000000e+00
  %268 = fcmp fast ole float %258, -1.000000e+00
  %269 = select i1 %265, float -1.000000e+00, float %255
  %270 = select i1 %266, float -1.000000e+00, float %256
  %271 = select i1 %267, float -1.000000e+00, float %257
  %272 = select i1 %268, float -1.000000e+00, float %258
  %273 = and i1 %265, %266
  %274 = and i1 %273, %267
  %275 = and i1 %274, %268
  %276 = call float @dx.op.binary.f32(i32 36, float %256, float %257)  ; FMin(a,b)
  %277 = call float @dx.op.binary.f32(i32 36, float %255, float %276)  ; FMin(a,b)
  %278 = call float @dx.op.binary.f32(i32 36, float %277, float %258)  ; FMin(a,b)
  %279 = call float @dx.op.binary.f32(i32 35, float %270, float %271)  ; FMax(a,b)
  %280 = call float @dx.op.binary.f32(i32 35, float %269, float %279)  ; FMax(a,b)
  %281 = call float @dx.op.binary.f32(i32 35, float %280, float %272)  ; FMax(a,b)
  %282 = select i1 %275, float %278, float %281
  %283 = fcmp fast ole float %259, -1.000000e+00
  %284 = fcmp fast ole float %260, -1.000000e+00
  %285 = fcmp fast ole float %261, -1.000000e+00
  %286 = fcmp fast ole float %262, -1.000000e+00
  %287 = select i1 %283, float 0x47EFFFFFE0000000, float %259
  %288 = select i1 %284, float 0x47EFFFFFE0000000, float %260
  %289 = select i1 %285, float 0x47EFFFFFE0000000, float %261
  %290 = select i1 %286, float 0x47EFFFFFE0000000, float %262
  %291 = and i1 %283, %284
  %292 = and i1 %291, %285
  %293 = and i1 %292, %286
  %294 = call float @dx.op.binary.f32(i32 35, float %260, float %261)  ; FMax(a,b)
  %295 = call float @dx.op.binary.f32(i32 35, float %259, float %294)  ; FMax(a,b)
  %296 = call float @dx.op.binary.f32(i32 35, float %295, float %262)  ; FMax(a,b)
  %297 = call float @dx.op.binary.f32(i32 36, float %288, float %289)  ; FMin(a,b)
  %298 = call float @dx.op.binary.f32(i32 36, float %287, float %297)  ; FMin(a,b)
  %299 = call float @dx.op.binary.f32(i32 36, float %298, float %290)  ; FMin(a,b)
  %300 = select i1 %293, float %296, float %299
  br i1 %263, label %301, label %348, !dx.controlflow.hints !32

; <label>:301                                     ; preds = %254
  %302 = and i32 %193, 14
  %303 = add i32 %192, 2
  %304 = and i32 %303, 14
  %305 = mul i32 %304, 16
  %306 = add i32 %302, %305
  %307 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %306
  %308 = load i32, i32 addrspace(3)* %307, align 4, !tbaa !26
  %309 = and i32 %308, 65535
  %310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %309)  ; LegacyF16ToF32(value)
  %311 = lshr i32 %308, 16
  %312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %311)  ; LegacyF16ToF32(value)
  %313 = or i32 %302, 1
  %314 = mul i32 %304, 16
  %315 = add i32 %313, %314
  %316 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %315
  %317 = load i32, i32 addrspace(3)* %316, align 4, !tbaa !26
  %318 = and i32 %317, 65535
  %319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %318)  ; LegacyF16ToF32(value)
  %320 = lshr i32 %317, 16
  %321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %320)  ; LegacyF16ToF32(value)
  %322 = fcmp fast ole float %282, -1.000000e+00
  %323 = fcmp fast ole float %310, -1.000000e+00
  %324 = fcmp fast ole float %319, -1.000000e+00
  %325 = select i1 %322, float -1.000000e+00, float %282
  %326 = select i1 %323, float -1.000000e+00, float %310
  %327 = select i1 %324, float -1.000000e+00, float %319
  %328 = and i1 %322, %323
  %329 = and i1 %328, %324
  %330 = call float @dx.op.binary.f32(i32 36, float %310, float %319)  ; FMin(a,b)
  %331 = call float @dx.op.binary.f32(i32 36, float %282, float %330)  ; FMin(a,b)
  %332 = call float @dx.op.binary.f32(i32 35, float %326, float %327)  ; FMax(a,b)
  %333 = call float @dx.op.binary.f32(i32 35, float %325, float %332)  ; FMax(a,b)
  %334 = select i1 %329, float %331, float %333
  %335 = fcmp fast ole float %300, -1.000000e+00
  %336 = fcmp fast ole float %312, -1.000000e+00
  %337 = fcmp fast ole float %321, -1.000000e+00
  %338 = select i1 %335, float 0x47EFFFFFE0000000, float %300
  %339 = select i1 %336, float 0x47EFFFFFE0000000, float %312
  %340 = select i1 %337, float 0x47EFFFFFE0000000, float %321
  %341 = and i1 %335, %336
  %342 = and i1 %341, %337
  %343 = call float @dx.op.binary.f32(i32 35, float %312, float %321)  ; FMax(a,b)
  %344 = call float @dx.op.binary.f32(i32 35, float %300, float %343)  ; FMax(a,b)
  %345 = call float @dx.op.binary.f32(i32 36, float %339, float %340)  ; FMin(a,b)
  %346 = call float @dx.op.binary.f32(i32 36, float %338, float %345)  ; FMin(a,b)
  %347 = select i1 %342, float %344, float %346
  br label %348

; <label>:348                                     ; preds = %301, %254
  %349 = phi float [ %334, %301 ], [ %282, %254 ]
  %350 = phi float [ %347, %301 ], [ %300, %254 ]
  %351 = icmp eq i32 %264, 0
  br i1 %351, label %399, label %352, !dx.controlflow.hints !33

; <label>:352                                     ; preds = %348
  %353 = add i32 %193, 2
  %354 = and i32 %353, 14
  %355 = and i32 %192, 14
  %356 = mul i32 %355, 16
  %357 = add i32 %354, %356
  %358 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %357
  %359 = load i32, i32 addrspace(3)* %358, align 4, !tbaa !26
  %360 = and i32 %359, 65535
  %361 = call float @dx.op.legacyF16ToF32(i32 131, i32 %360)  ; LegacyF16ToF32(value)
  %362 = lshr i32 %359, 16
  %363 = call float @dx.op.legacyF16ToF32(i32 131, i32 %362)  ; LegacyF16ToF32(value)
  %364 = or i32 %355, 1
  %365 = mul i32 %364, 16
  %366 = add i32 %354, %365
  %367 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %366
  %368 = load i32, i32 addrspace(3)* %367, align 4, !tbaa !26
  %369 = and i32 %368, 65535
  %370 = call float @dx.op.legacyF16ToF32(i32 131, i32 %369)  ; LegacyF16ToF32(value)
  %371 = lshr i32 %368, 16
  %372 = call float @dx.op.legacyF16ToF32(i32 131, i32 %371)  ; LegacyF16ToF32(value)
  %373 = fcmp fast ole float %349, -1.000000e+00
  %374 = fcmp fast ole float %361, -1.000000e+00
  %375 = fcmp fast ole float %370, -1.000000e+00
  %376 = select i1 %373, float -1.000000e+00, float %349
  %377 = select i1 %374, float -1.000000e+00, float %361
  %378 = select i1 %375, float -1.000000e+00, float %370
  %379 = and i1 %373, %374
  %380 = and i1 %379, %375
  %381 = call float @dx.op.binary.f32(i32 36, float %361, float %370)  ; FMin(a,b)
  %382 = call float @dx.op.binary.f32(i32 36, float %349, float %381)  ; FMin(a,b)
  %383 = call float @dx.op.binary.f32(i32 35, float %377, float %378)  ; FMax(a,b)
  %384 = call float @dx.op.binary.f32(i32 35, float %376, float %383)  ; FMax(a,b)
  %385 = select i1 %380, float %382, float %384
  %386 = fcmp fast ole float %350, -1.000000e+00
  %387 = fcmp fast ole float %363, -1.000000e+00
  %388 = fcmp fast ole float %372, -1.000000e+00
  %389 = select i1 %386, float 0x47EFFFFFE0000000, float %350
  %390 = select i1 %387, float 0x47EFFFFFE0000000, float %363
  %391 = select i1 %388, float 0x47EFFFFFE0000000, float %372
  %392 = and i1 %386, %387
  %393 = and i1 %392, %388
  %394 = call float @dx.op.binary.f32(i32 35, float %363, float %372)  ; FMax(a,b)
  %395 = call float @dx.op.binary.f32(i32 35, float %350, float %394)  ; FMax(a,b)
  %396 = call float @dx.op.binary.f32(i32 36, float %390, float %391)  ; FMin(a,b)
  %397 = call float @dx.op.binary.f32(i32 36, float %389, float %396)  ; FMin(a,b)
  %398 = select i1 %393, float %395, float %397
  br label %399

; <label>:399                                     ; preds = %352, %348
  %400 = phi float [ %385, %352 ], [ %349, %348 ]
  %401 = phi float [ %398, %352 ], [ %350, %348 ]
  %402 = icmp ne i32 %264, 0
  %403 = and i1 %263, %402
  br i1 %403, label %404, label %433, !dx.controlflow.hints !34

; <label>:404                                     ; preds = %399
  %405 = add i32 %193, 2
  %406 = and i32 %405, 14
  %407 = add i32 %192, 2
  %408 = and i32 %407, 14
  %409 = mul i32 %408, 16
  %410 = add i32 %406, %409
  %411 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %410
  %412 = load i32, i32 addrspace(3)* %411, align 4, !tbaa !26
  %413 = and i32 %412, 65535
  %414 = call float @dx.op.legacyF16ToF32(i32 131, i32 %413)  ; LegacyF16ToF32(value)
  %415 = lshr i32 %412, 16
  %416 = call float @dx.op.legacyF16ToF32(i32 131, i32 %415)  ; LegacyF16ToF32(value)
  %417 = fcmp fast ole float %400, -1.000000e+00
  %418 = fcmp fast ole float %414, -1.000000e+00
  %419 = select i1 %417, float -1.000000e+00, float %400
  %420 = select i1 %418, float -1.000000e+00, float %414
  %421 = and i1 %417, %418
  %422 = call float @dx.op.binary.f32(i32 36, float %400, float %414)  ; FMin(a,b)
  %423 = call float @dx.op.binary.f32(i32 35, float %419, float %420)  ; FMax(a,b)
  %424 = select i1 %421, float %422, float %423
  %425 = fcmp fast ole float %401, -1.000000e+00
  %426 = fcmp fast ole float %416, -1.000000e+00
  %427 = select i1 %425, float 0x47EFFFFFE0000000, float %401
  %428 = select i1 %426, float 0x47EFFFFFE0000000, float %416
  %429 = and i1 %425, %426
  %430 = call float @dx.op.binary.f32(i32 35, float %401, float %416)  ; FMax(a,b)
  %431 = call float @dx.op.binary.f32(i32 36, float %427, float %428)  ; FMin(a,b)
  %432 = select i1 %429, float %430, float %431
  br label %433

; <label>:433                                     ; preds = %404, %399
  %434 = phi float [ %424, %404 ], [ %400, %399 ]
  %435 = phi float [ %432, %404 ], [ %401, %399 ]
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %191, label %436, label %446, !dx.controlflow.hints !35

; <label>:436                                     ; preds = %433
  %437 = call i32 @dx.op.legacyF32ToF16(i32 130, float %434)  ; LegacyF32ToF16(value)
  %438 = call i32 @dx.op.legacyF32ToF16(i32 130, float %435)  ; LegacyF32ToF16(value)
  %439 = shl i32 %438, 16
  %440 = or i32 %439, %437
  %441 = and i32 %183, 15
  %442 = and i32 %182, 15
  %443 = mul i32 %442, 16
  %444 = add i32 %441, %443
  %445 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %444
  store i32 %440, i32 addrspace(3)* %445, align 4, !tbaa !26
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %182, i32 %183, i32 undef, float %434, float %434, float %434, float %434, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %446

; <label>:446                                     ; preds = %436, %433, %177
  %447 = phi i32 [ %27, %177 ], [ %43, %436 ], [ %43, %433 ]
  %448 = phi i32 [ %28, %177 ], [ %44, %436 ], [ %44, %433 ]
  %449 = phi i32 [ %22, %177 ], [ %182, %436 ], [ %182, %433 ]
  %450 = phi i32 [ %23, %177 ], [ %183, %436 ], [ %183, %433 ]
  %451 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %452 = extractvalue %dx.types.CBufRet.i32 %451, 3
  %453 = icmp ugt i32 %452, 2
  br i1 %453, label %454, label %723, !dx.controlflow.hints !36

; <label>:454                                     ; preds = %446
  %455 = lshr i32 %447, 1
  %456 = lshr i32 %448, 1
  %457 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %455)  ; UMax(a,b)
  %458 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %456)  ; UMax(a,b)
  %459 = lshr i32 %449, 1
  %460 = lshr i32 %450, 1
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %461 = lshr i32 %457, 1
  %462 = lshr i32 %458, 1
  %463 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %461)  ; UMax(a,b)
  %464 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %462)  ; UMax(a,b)
  %465 = icmp ult i32 %459, %463
  %466 = icmp ult i32 %460, %464
  %467 = and i1 %465, %466
  %468 = and i1 %467, %40
  %469 = shl nuw i32 %459, 1
  %470 = shl nuw i32 %460, 1
  br i1 %468, label %471, label %531, !dx.controlflow.hints !31

; <label>:471                                     ; preds = %454
  %472 = or i32 %469, 1
  %473 = or i32 %470, 1
  %474 = add i32 %457, -1
  %475 = add i32 %458, -1
  %476 = call i32 @dx.op.binary.i32(i32 40, i32 %469, i32 %474)  ; UMin(a,b)
  %477 = call i32 @dx.op.binary.i32(i32 40, i32 %470, i32 %475)  ; UMin(a,b)
  %478 = call i32 @dx.op.binary.i32(i32 40, i32 %472, i32 %474)  ; UMin(a,b)
  %479 = call i32 @dx.op.binary.i32(i32 40, i32 %473, i32 %475)  ; UMin(a,b)
  %480 = and i32 %476, 15
  %481 = and i32 %477, 15
  %482 = and i32 %478, 15
  %483 = and i32 %479, 15
  %484 = mul i32 %480, 16
  %485 = add i32 %481, %484
  %486 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %485
  %487 = load i32, i32 addrspace(3)* %486, align 4, !tbaa !26
  %488 = and i32 %487, 65535
  %489 = call float @dx.op.legacyF16ToF32(i32 131, i32 %488)  ; LegacyF16ToF32(value)
  %490 = lshr i32 %487, 16
  %491 = call float @dx.op.legacyF16ToF32(i32 131, i32 %490)  ; LegacyF16ToF32(value)
  %492 = mul i32 %482, 16
  %493 = add i32 %481, %492
  %494 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %493
  %495 = load i32, i32 addrspace(3)* %494, align 4, !tbaa !26
  %496 = and i32 %495, 65535
  %497 = call float @dx.op.legacyF16ToF32(i32 131, i32 %496)  ; LegacyF16ToF32(value)
  %498 = lshr i32 %495, 16
  %499 = call float @dx.op.legacyF16ToF32(i32 131, i32 %498)  ; LegacyF16ToF32(value)
  %500 = mul i32 %480, 16
  %501 = add i32 %483, %500
  %502 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %501
  %503 = load i32, i32 addrspace(3)* %502, align 4, !tbaa !26
  %504 = and i32 %503, 65535
  %505 = call float @dx.op.legacyF16ToF32(i32 131, i32 %504)  ; LegacyF16ToF32(value)
  %506 = lshr i32 %503, 16
  %507 = call float @dx.op.legacyF16ToF32(i32 131, i32 %506)  ; LegacyF16ToF32(value)
  %508 = mul i32 %482, 16
  %509 = add i32 %483, %508
  %510 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %509
  %511 = load i32, i32 addrspace(3)* %510, align 4, !tbaa !26
  %512 = and i32 %511, 65535
  %513 = call float @dx.op.legacyF16ToF32(i32 131, i32 %512)  ; LegacyF16ToF32(value)
  %514 = lshr i32 %511, 16
  %515 = call float @dx.op.legacyF16ToF32(i32 131, i32 %514)  ; LegacyF16ToF32(value)
  %516 = icmp ugt i32 %457, 1
  %517 = and i32 %457, 1
  %518 = icmp ne i32 %517, 0
  %519 = and i1 %516, %518
  %520 = add i32 %457, -3
  %521 = icmp eq i32 %520, %469
  %522 = and i1 %521, %519
  %523 = icmp ugt i32 %458, 1
  %524 = and i32 %458, 1
  %525 = icmp ne i32 %524, 0
  %526 = and i1 %523, %525
  %527 = add i32 %458, -3
  %528 = icmp eq i32 %527, %470
  %529 = and i1 %528, %526
  %530 = zext i1 %529 to i32
  br label %531

; <label>:531                                     ; preds = %471, %454
  %532 = phi float [ %489, %471 ], [ 0.000000e+00, %454 ]
  %533 = phi float [ %497, %471 ], [ 0.000000e+00, %454 ]
  %534 = phi float [ %505, %471 ], [ 0.000000e+00, %454 ]
  %535 = phi float [ %513, %471 ], [ 0.000000e+00, %454 ]
  %536 = phi float [ %491, %471 ], [ 0.000000e+00, %454 ]
  %537 = phi float [ %499, %471 ], [ 0.000000e+00, %454 ]
  %538 = phi float [ %507, %471 ], [ 0.000000e+00, %454 ]
  %539 = phi float [ %515, %471 ], [ 0.000000e+00, %454 ]
  %540 = phi i1 [ %522, %471 ], [ false, %454 ]
  %541 = phi i32 [ %530, %471 ], [ 0, %454 ]
  %542 = fcmp fast ole float %532, -1.000000e+00
  %543 = fcmp fast ole float %533, -1.000000e+00
  %544 = fcmp fast ole float %534, -1.000000e+00
  %545 = fcmp fast ole float %535, -1.000000e+00
  %546 = select i1 %542, float -1.000000e+00, float %532
  %547 = select i1 %543, float -1.000000e+00, float %533
  %548 = select i1 %544, float -1.000000e+00, float %534
  %549 = select i1 %545, float -1.000000e+00, float %535
  %550 = and i1 %542, %543
  %551 = and i1 %550, %544
  %552 = and i1 %551, %545
  %553 = call float @dx.op.binary.f32(i32 36, float %533, float %534)  ; FMin(a,b)
  %554 = call float @dx.op.binary.f32(i32 36, float %532, float %553)  ; FMin(a,b)
  %555 = call float @dx.op.binary.f32(i32 36, float %554, float %535)  ; FMin(a,b)
  %556 = call float @dx.op.binary.f32(i32 35, float %547, float %548)  ; FMax(a,b)
  %557 = call float @dx.op.binary.f32(i32 35, float %546, float %556)  ; FMax(a,b)
  %558 = call float @dx.op.binary.f32(i32 35, float %557, float %549)  ; FMax(a,b)
  %559 = select i1 %552, float %555, float %558
  %560 = fcmp fast ole float %536, -1.000000e+00
  %561 = fcmp fast ole float %537, -1.000000e+00
  %562 = fcmp fast ole float %538, -1.000000e+00
  %563 = fcmp fast ole float %539, -1.000000e+00
  %564 = select i1 %560, float 0x47EFFFFFE0000000, float %536
  %565 = select i1 %561, float 0x47EFFFFFE0000000, float %537
  %566 = select i1 %562, float 0x47EFFFFFE0000000, float %538
  %567 = select i1 %563, float 0x47EFFFFFE0000000, float %539
  %568 = and i1 %560, %561
  %569 = and i1 %568, %562
  %570 = and i1 %569, %563
  %571 = call float @dx.op.binary.f32(i32 35, float %537, float %538)  ; FMax(a,b)
  %572 = call float @dx.op.binary.f32(i32 35, float %536, float %571)  ; FMax(a,b)
  %573 = call float @dx.op.binary.f32(i32 35, float %572, float %539)  ; FMax(a,b)
  %574 = call float @dx.op.binary.f32(i32 36, float %565, float %566)  ; FMin(a,b)
  %575 = call float @dx.op.binary.f32(i32 36, float %564, float %574)  ; FMin(a,b)
  %576 = call float @dx.op.binary.f32(i32 36, float %575, float %567)  ; FMin(a,b)
  %577 = select i1 %570, float %573, float %576
  br i1 %540, label %578, label %625, !dx.controlflow.hints !32

; <label>:578                                     ; preds = %531
  %579 = and i32 %470, 14
  %580 = add i32 %469, 2
  %581 = and i32 %580, 14
  %582 = mul i32 %581, 16
  %583 = add i32 %579, %582
  %584 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %583
  %585 = load i32, i32 addrspace(3)* %584, align 4, !tbaa !26
  %586 = and i32 %585, 65535
  %587 = call float @dx.op.legacyF16ToF32(i32 131, i32 %586)  ; LegacyF16ToF32(value)
  %588 = lshr i32 %585, 16
  %589 = call float @dx.op.legacyF16ToF32(i32 131, i32 %588)  ; LegacyF16ToF32(value)
  %590 = or i32 %579, 1
  %591 = mul i32 %581, 16
  %592 = add i32 %590, %591
  %593 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %592
  %594 = load i32, i32 addrspace(3)* %593, align 4, !tbaa !26
  %595 = and i32 %594, 65535
  %596 = call float @dx.op.legacyF16ToF32(i32 131, i32 %595)  ; LegacyF16ToF32(value)
  %597 = lshr i32 %594, 16
  %598 = call float @dx.op.legacyF16ToF32(i32 131, i32 %597)  ; LegacyF16ToF32(value)
  %599 = fcmp fast ole float %559, -1.000000e+00
  %600 = fcmp fast ole float %587, -1.000000e+00
  %601 = fcmp fast ole float %596, -1.000000e+00
  %602 = select i1 %599, float -1.000000e+00, float %559
  %603 = select i1 %600, float -1.000000e+00, float %587
  %604 = select i1 %601, float -1.000000e+00, float %596
  %605 = and i1 %599, %600
  %606 = and i1 %605, %601
  %607 = call float @dx.op.binary.f32(i32 36, float %587, float %596)  ; FMin(a,b)
  %608 = call float @dx.op.binary.f32(i32 36, float %559, float %607)  ; FMin(a,b)
  %609 = call float @dx.op.binary.f32(i32 35, float %603, float %604)  ; FMax(a,b)
  %610 = call float @dx.op.binary.f32(i32 35, float %602, float %609)  ; FMax(a,b)
  %611 = select i1 %606, float %608, float %610
  %612 = fcmp fast ole float %577, -1.000000e+00
  %613 = fcmp fast ole float %589, -1.000000e+00
  %614 = fcmp fast ole float %598, -1.000000e+00
  %615 = select i1 %612, float 0x47EFFFFFE0000000, float %577
  %616 = select i1 %613, float 0x47EFFFFFE0000000, float %589
  %617 = select i1 %614, float 0x47EFFFFFE0000000, float %598
  %618 = and i1 %612, %613
  %619 = and i1 %618, %614
  %620 = call float @dx.op.binary.f32(i32 35, float %589, float %598)  ; FMax(a,b)
  %621 = call float @dx.op.binary.f32(i32 35, float %577, float %620)  ; FMax(a,b)
  %622 = call float @dx.op.binary.f32(i32 36, float %616, float %617)  ; FMin(a,b)
  %623 = call float @dx.op.binary.f32(i32 36, float %615, float %622)  ; FMin(a,b)
  %624 = select i1 %619, float %621, float %623
  br label %625

; <label>:625                                     ; preds = %578, %531
  %626 = phi float [ %611, %578 ], [ %559, %531 ]
  %627 = phi float [ %624, %578 ], [ %577, %531 ]
  %628 = icmp eq i32 %541, 0
  br i1 %628, label %676, label %629, !dx.controlflow.hints !33

; <label>:629                                     ; preds = %625
  %630 = add i32 %470, 2
  %631 = and i32 %630, 14
  %632 = and i32 %469, 14
  %633 = mul i32 %632, 16
  %634 = add i32 %631, %633
  %635 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %634
  %636 = load i32, i32 addrspace(3)* %635, align 4, !tbaa !26
  %637 = and i32 %636, 65535
  %638 = call float @dx.op.legacyF16ToF32(i32 131, i32 %637)  ; LegacyF16ToF32(value)
  %639 = lshr i32 %636, 16
  %640 = call float @dx.op.legacyF16ToF32(i32 131, i32 %639)  ; LegacyF16ToF32(value)
  %641 = or i32 %632, 1
  %642 = mul i32 %641, 16
  %643 = add i32 %631, %642
  %644 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %643
  %645 = load i32, i32 addrspace(3)* %644, align 4, !tbaa !26
  %646 = and i32 %645, 65535
  %647 = call float @dx.op.legacyF16ToF32(i32 131, i32 %646)  ; LegacyF16ToF32(value)
  %648 = lshr i32 %645, 16
  %649 = call float @dx.op.legacyF16ToF32(i32 131, i32 %648)  ; LegacyF16ToF32(value)
  %650 = fcmp fast ole float %626, -1.000000e+00
  %651 = fcmp fast ole float %638, -1.000000e+00
  %652 = fcmp fast ole float %647, -1.000000e+00
  %653 = select i1 %650, float -1.000000e+00, float %626
  %654 = select i1 %651, float -1.000000e+00, float %638
  %655 = select i1 %652, float -1.000000e+00, float %647
  %656 = and i1 %650, %651
  %657 = and i1 %656, %652
  %658 = call float @dx.op.binary.f32(i32 36, float %638, float %647)  ; FMin(a,b)
  %659 = call float @dx.op.binary.f32(i32 36, float %626, float %658)  ; FMin(a,b)
  %660 = call float @dx.op.binary.f32(i32 35, float %654, float %655)  ; FMax(a,b)
  %661 = call float @dx.op.binary.f32(i32 35, float %653, float %660)  ; FMax(a,b)
  %662 = select i1 %657, float %659, float %661
  %663 = fcmp fast ole float %627, -1.000000e+00
  %664 = fcmp fast ole float %640, -1.000000e+00
  %665 = fcmp fast ole float %649, -1.000000e+00
  %666 = select i1 %663, float 0x47EFFFFFE0000000, float %627
  %667 = select i1 %664, float 0x47EFFFFFE0000000, float %640
  %668 = select i1 %665, float 0x47EFFFFFE0000000, float %649
  %669 = and i1 %663, %664
  %670 = and i1 %669, %665
  %671 = call float @dx.op.binary.f32(i32 35, float %640, float %649)  ; FMax(a,b)
  %672 = call float @dx.op.binary.f32(i32 35, float %627, float %671)  ; FMax(a,b)
  %673 = call float @dx.op.binary.f32(i32 36, float %667, float %668)  ; FMin(a,b)
  %674 = call float @dx.op.binary.f32(i32 36, float %666, float %673)  ; FMin(a,b)
  %675 = select i1 %670, float %672, float %674
  br label %676

; <label>:676                                     ; preds = %629, %625
  %677 = phi float [ %662, %629 ], [ %626, %625 ]
  %678 = phi float [ %675, %629 ], [ %627, %625 ]
  %679 = icmp ne i32 %541, 0
  %680 = and i1 %540, %679
  br i1 %680, label %681, label %710, !dx.controlflow.hints !34

; <label>:681                                     ; preds = %676
  %682 = add i32 %470, 2
  %683 = and i32 %682, 14
  %684 = add i32 %469, 2
  %685 = and i32 %684, 14
  %686 = mul i32 %685, 16
  %687 = add i32 %683, %686
  %688 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %687
  %689 = load i32, i32 addrspace(3)* %688, align 4, !tbaa !26
  %690 = and i32 %689, 65535
  %691 = call float @dx.op.legacyF16ToF32(i32 131, i32 %690)  ; LegacyF16ToF32(value)
  %692 = lshr i32 %689, 16
  %693 = call float @dx.op.legacyF16ToF32(i32 131, i32 %692)  ; LegacyF16ToF32(value)
  %694 = fcmp fast ole float %677, -1.000000e+00
  %695 = fcmp fast ole float %691, -1.000000e+00
  %696 = select i1 %694, float -1.000000e+00, float %677
  %697 = select i1 %695, float -1.000000e+00, float %691
  %698 = and i1 %694, %695
  %699 = call float @dx.op.binary.f32(i32 36, float %677, float %691)  ; FMin(a,b)
  %700 = call float @dx.op.binary.f32(i32 35, float %696, float %697)  ; FMax(a,b)
  %701 = select i1 %698, float %699, float %700
  %702 = fcmp fast ole float %678, -1.000000e+00
  %703 = fcmp fast ole float %693, -1.000000e+00
  %704 = select i1 %702, float 0x47EFFFFFE0000000, float %678
  %705 = select i1 %703, float 0x47EFFFFFE0000000, float %693
  %706 = and i1 %702, %703
  %707 = call float @dx.op.binary.f32(i32 35, float %678, float %693)  ; FMax(a,b)
  %708 = call float @dx.op.binary.f32(i32 36, float %704, float %705)  ; FMin(a,b)
  %709 = select i1 %706, float %707, float %708
  br label %710

; <label>:710                                     ; preds = %681, %676
  %711 = phi float [ %701, %681 ], [ %677, %676 ]
  %712 = phi float [ %709, %681 ], [ %678, %676 ]
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %468, label %713, label %723, !dx.controlflow.hints !35

; <label>:713                                     ; preds = %710
  %714 = call i32 @dx.op.legacyF32ToF16(i32 130, float %711)  ; LegacyF32ToF16(value)
  %715 = call i32 @dx.op.legacyF32ToF16(i32 130, float %712)  ; LegacyF32ToF16(value)
  %716 = shl i32 %715, 16
  %717 = or i32 %716, %714
  %718 = and i32 %460, 15
  %719 = and i32 %459, 15
  %720 = mul i32 %719, 16
  %721 = add i32 %718, %720
  %722 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %721
  store i32 %717, i32 addrspace(3)* %722, align 4, !tbaa !26
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %459, i32 %460, i32 undef, float %711, float %711, float %711, float %711, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %723

; <label>:723                                     ; preds = %713, %710, %446
  %724 = phi i32 [ %447, %446 ], [ %457, %713 ], [ %457, %710 ]
  %725 = phi i32 [ %448, %446 ], [ %458, %713 ], [ %458, %710 ]
  %726 = phi i32 [ %449, %446 ], [ %459, %713 ], [ %459, %710 ]
  %727 = phi i32 [ %450, %446 ], [ %460, %713 ], [ %460, %710 ]
  %728 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %729 = extractvalue %dx.types.CBufRet.i32 %728, 3
  %730 = icmp ugt i32 %729, 3
  br i1 %730, label %731, label %1000, !dx.controlflow.hints !37

; <label>:731                                     ; preds = %723
  %732 = lshr i32 %724, 1
  %733 = lshr i32 %725, 1
  %734 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %732)  ; UMax(a,b)
  %735 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %733)  ; UMax(a,b)
  %736 = lshr i32 %726, 1
  %737 = lshr i32 %727, 1
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %738 = lshr i32 %734, 1
  %739 = lshr i32 %735, 1
  %740 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %738)  ; UMax(a,b)
  %741 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %739)  ; UMax(a,b)
  %742 = icmp ult i32 %736, %740
  %743 = icmp ult i32 %737, %741
  %744 = and i1 %742, %743
  %745 = and i1 %744, %40
  %746 = shl nuw i32 %736, 1
  %747 = shl nuw i32 %737, 1
  br i1 %745, label %748, label %808, !dx.controlflow.hints !31

; <label>:748                                     ; preds = %731
  %749 = or i32 %746, 1
  %750 = or i32 %747, 1
  %751 = add i32 %734, -1
  %752 = add i32 %735, -1
  %753 = call i32 @dx.op.binary.i32(i32 40, i32 %746, i32 %751)  ; UMin(a,b)
  %754 = call i32 @dx.op.binary.i32(i32 40, i32 %747, i32 %752)  ; UMin(a,b)
  %755 = call i32 @dx.op.binary.i32(i32 40, i32 %749, i32 %751)  ; UMin(a,b)
  %756 = call i32 @dx.op.binary.i32(i32 40, i32 %750, i32 %752)  ; UMin(a,b)
  %757 = and i32 %753, 15
  %758 = and i32 %754, 15
  %759 = and i32 %755, 15
  %760 = and i32 %756, 15
  %761 = mul i32 %757, 16
  %762 = add i32 %758, %761
  %763 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %762
  %764 = load i32, i32 addrspace(3)* %763, align 4, !tbaa !26
  %765 = and i32 %764, 65535
  %766 = call float @dx.op.legacyF16ToF32(i32 131, i32 %765)  ; LegacyF16ToF32(value)
  %767 = lshr i32 %764, 16
  %768 = call float @dx.op.legacyF16ToF32(i32 131, i32 %767)  ; LegacyF16ToF32(value)
  %769 = mul i32 %759, 16
  %770 = add i32 %758, %769
  %771 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %770
  %772 = load i32, i32 addrspace(3)* %771, align 4, !tbaa !26
  %773 = and i32 %772, 65535
  %774 = call float @dx.op.legacyF16ToF32(i32 131, i32 %773)  ; LegacyF16ToF32(value)
  %775 = lshr i32 %772, 16
  %776 = call float @dx.op.legacyF16ToF32(i32 131, i32 %775)  ; LegacyF16ToF32(value)
  %777 = mul i32 %757, 16
  %778 = add i32 %760, %777
  %779 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %778
  %780 = load i32, i32 addrspace(3)* %779, align 4, !tbaa !26
  %781 = and i32 %780, 65535
  %782 = call float @dx.op.legacyF16ToF32(i32 131, i32 %781)  ; LegacyF16ToF32(value)
  %783 = lshr i32 %780, 16
  %784 = call float @dx.op.legacyF16ToF32(i32 131, i32 %783)  ; LegacyF16ToF32(value)
  %785 = mul i32 %759, 16
  %786 = add i32 %760, %785
  %787 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %786
  %788 = load i32, i32 addrspace(3)* %787, align 4, !tbaa !26
  %789 = and i32 %788, 65535
  %790 = call float @dx.op.legacyF16ToF32(i32 131, i32 %789)  ; LegacyF16ToF32(value)
  %791 = lshr i32 %788, 16
  %792 = call float @dx.op.legacyF16ToF32(i32 131, i32 %791)  ; LegacyF16ToF32(value)
  %793 = icmp ugt i32 %734, 1
  %794 = and i32 %734, 1
  %795 = icmp ne i32 %794, 0
  %796 = and i1 %793, %795
  %797 = add i32 %734, -3
  %798 = icmp eq i32 %797, %746
  %799 = and i1 %798, %796
  %800 = icmp ugt i32 %735, 1
  %801 = and i32 %735, 1
  %802 = icmp ne i32 %801, 0
  %803 = and i1 %800, %802
  %804 = add i32 %735, -3
  %805 = icmp eq i32 %804, %747
  %806 = and i1 %805, %803
  %807 = zext i1 %806 to i32
  br label %808

; <label>:808                                     ; preds = %748, %731
  %809 = phi float [ %766, %748 ], [ 0.000000e+00, %731 ]
  %810 = phi float [ %774, %748 ], [ 0.000000e+00, %731 ]
  %811 = phi float [ %782, %748 ], [ 0.000000e+00, %731 ]
  %812 = phi float [ %790, %748 ], [ 0.000000e+00, %731 ]
  %813 = phi float [ %768, %748 ], [ 0.000000e+00, %731 ]
  %814 = phi float [ %776, %748 ], [ 0.000000e+00, %731 ]
  %815 = phi float [ %784, %748 ], [ 0.000000e+00, %731 ]
  %816 = phi float [ %792, %748 ], [ 0.000000e+00, %731 ]
  %817 = phi i1 [ %799, %748 ], [ false, %731 ]
  %818 = phi i32 [ %807, %748 ], [ 0, %731 ]
  %819 = fcmp fast ole float %809, -1.000000e+00
  %820 = fcmp fast ole float %810, -1.000000e+00
  %821 = fcmp fast ole float %811, -1.000000e+00
  %822 = fcmp fast ole float %812, -1.000000e+00
  %823 = select i1 %819, float -1.000000e+00, float %809
  %824 = select i1 %820, float -1.000000e+00, float %810
  %825 = select i1 %821, float -1.000000e+00, float %811
  %826 = select i1 %822, float -1.000000e+00, float %812
  %827 = and i1 %819, %820
  %828 = and i1 %827, %821
  %829 = and i1 %828, %822
  %830 = call float @dx.op.binary.f32(i32 36, float %810, float %811)  ; FMin(a,b)
  %831 = call float @dx.op.binary.f32(i32 36, float %809, float %830)  ; FMin(a,b)
  %832 = call float @dx.op.binary.f32(i32 36, float %831, float %812)  ; FMin(a,b)
  %833 = call float @dx.op.binary.f32(i32 35, float %824, float %825)  ; FMax(a,b)
  %834 = call float @dx.op.binary.f32(i32 35, float %823, float %833)  ; FMax(a,b)
  %835 = call float @dx.op.binary.f32(i32 35, float %834, float %826)  ; FMax(a,b)
  %836 = select i1 %829, float %832, float %835
  %837 = fcmp fast ole float %813, -1.000000e+00
  %838 = fcmp fast ole float %814, -1.000000e+00
  %839 = fcmp fast ole float %815, -1.000000e+00
  %840 = fcmp fast ole float %816, -1.000000e+00
  %841 = select i1 %837, float 0x47EFFFFFE0000000, float %813
  %842 = select i1 %838, float 0x47EFFFFFE0000000, float %814
  %843 = select i1 %839, float 0x47EFFFFFE0000000, float %815
  %844 = select i1 %840, float 0x47EFFFFFE0000000, float %816
  %845 = and i1 %837, %838
  %846 = and i1 %845, %839
  %847 = and i1 %846, %840
  %848 = call float @dx.op.binary.f32(i32 35, float %814, float %815)  ; FMax(a,b)
  %849 = call float @dx.op.binary.f32(i32 35, float %813, float %848)  ; FMax(a,b)
  %850 = call float @dx.op.binary.f32(i32 35, float %849, float %816)  ; FMax(a,b)
  %851 = call float @dx.op.binary.f32(i32 36, float %842, float %843)  ; FMin(a,b)
  %852 = call float @dx.op.binary.f32(i32 36, float %841, float %851)  ; FMin(a,b)
  %853 = call float @dx.op.binary.f32(i32 36, float %852, float %844)  ; FMin(a,b)
  %854 = select i1 %847, float %850, float %853
  br i1 %817, label %855, label %902, !dx.controlflow.hints !32

; <label>:855                                     ; preds = %808
  %856 = and i32 %747, 14
  %857 = add i32 %746, 2
  %858 = and i32 %857, 14
  %859 = mul i32 %858, 16
  %860 = add i32 %856, %859
  %861 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %860
  %862 = load i32, i32 addrspace(3)* %861, align 4, !tbaa !26
  %863 = and i32 %862, 65535
  %864 = call float @dx.op.legacyF16ToF32(i32 131, i32 %863)  ; LegacyF16ToF32(value)
  %865 = lshr i32 %862, 16
  %866 = call float @dx.op.legacyF16ToF32(i32 131, i32 %865)  ; LegacyF16ToF32(value)
  %867 = or i32 %856, 1
  %868 = mul i32 %858, 16
  %869 = add i32 %867, %868
  %870 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %869
  %871 = load i32, i32 addrspace(3)* %870, align 4, !tbaa !26
  %872 = and i32 %871, 65535
  %873 = call float @dx.op.legacyF16ToF32(i32 131, i32 %872)  ; LegacyF16ToF32(value)
  %874 = lshr i32 %871, 16
  %875 = call float @dx.op.legacyF16ToF32(i32 131, i32 %874)  ; LegacyF16ToF32(value)
  %876 = fcmp fast ole float %836, -1.000000e+00
  %877 = fcmp fast ole float %864, -1.000000e+00
  %878 = fcmp fast ole float %873, -1.000000e+00
  %879 = select i1 %876, float -1.000000e+00, float %836
  %880 = select i1 %877, float -1.000000e+00, float %864
  %881 = select i1 %878, float -1.000000e+00, float %873
  %882 = and i1 %876, %877
  %883 = and i1 %882, %878
  %884 = call float @dx.op.binary.f32(i32 36, float %864, float %873)  ; FMin(a,b)
  %885 = call float @dx.op.binary.f32(i32 36, float %836, float %884)  ; FMin(a,b)
  %886 = call float @dx.op.binary.f32(i32 35, float %880, float %881)  ; FMax(a,b)
  %887 = call float @dx.op.binary.f32(i32 35, float %879, float %886)  ; FMax(a,b)
  %888 = select i1 %883, float %885, float %887
  %889 = fcmp fast ole float %854, -1.000000e+00
  %890 = fcmp fast ole float %866, -1.000000e+00
  %891 = fcmp fast ole float %875, -1.000000e+00
  %892 = select i1 %889, float 0x47EFFFFFE0000000, float %854
  %893 = select i1 %890, float 0x47EFFFFFE0000000, float %866
  %894 = select i1 %891, float 0x47EFFFFFE0000000, float %875
  %895 = and i1 %889, %890
  %896 = and i1 %895, %891
  %897 = call float @dx.op.binary.f32(i32 35, float %866, float %875)  ; FMax(a,b)
  %898 = call float @dx.op.binary.f32(i32 35, float %854, float %897)  ; FMax(a,b)
  %899 = call float @dx.op.binary.f32(i32 36, float %893, float %894)  ; FMin(a,b)
  %900 = call float @dx.op.binary.f32(i32 36, float %892, float %899)  ; FMin(a,b)
  %901 = select i1 %896, float %898, float %900
  br label %902

; <label>:902                                     ; preds = %855, %808
  %903 = phi float [ %888, %855 ], [ %836, %808 ]
  %904 = phi float [ %901, %855 ], [ %854, %808 ]
  %905 = icmp eq i32 %818, 0
  br i1 %905, label %953, label %906, !dx.controlflow.hints !33

; <label>:906                                     ; preds = %902
  %907 = add i32 %747, 2
  %908 = and i32 %907, 14
  %909 = and i32 %746, 14
  %910 = mul i32 %909, 16
  %911 = add i32 %908, %910
  %912 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %911
  %913 = load i32, i32 addrspace(3)* %912, align 4, !tbaa !26
  %914 = and i32 %913, 65535
  %915 = call float @dx.op.legacyF16ToF32(i32 131, i32 %914)  ; LegacyF16ToF32(value)
  %916 = lshr i32 %913, 16
  %917 = call float @dx.op.legacyF16ToF32(i32 131, i32 %916)  ; LegacyF16ToF32(value)
  %918 = or i32 %909, 1
  %919 = mul i32 %918, 16
  %920 = add i32 %908, %919
  %921 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %920
  %922 = load i32, i32 addrspace(3)* %921, align 4, !tbaa !26
  %923 = and i32 %922, 65535
  %924 = call float @dx.op.legacyF16ToF32(i32 131, i32 %923)  ; LegacyF16ToF32(value)
  %925 = lshr i32 %922, 16
  %926 = call float @dx.op.legacyF16ToF32(i32 131, i32 %925)  ; LegacyF16ToF32(value)
  %927 = fcmp fast ole float %903, -1.000000e+00
  %928 = fcmp fast ole float %915, -1.000000e+00
  %929 = fcmp fast ole float %924, -1.000000e+00
  %930 = select i1 %927, float -1.000000e+00, float %903
  %931 = select i1 %928, float -1.000000e+00, float %915
  %932 = select i1 %929, float -1.000000e+00, float %924
  %933 = and i1 %927, %928
  %934 = and i1 %933, %929
  %935 = call float @dx.op.binary.f32(i32 36, float %915, float %924)  ; FMin(a,b)
  %936 = call float @dx.op.binary.f32(i32 36, float %903, float %935)  ; FMin(a,b)
  %937 = call float @dx.op.binary.f32(i32 35, float %931, float %932)  ; FMax(a,b)
  %938 = call float @dx.op.binary.f32(i32 35, float %930, float %937)  ; FMax(a,b)
  %939 = select i1 %934, float %936, float %938
  %940 = fcmp fast ole float %904, -1.000000e+00
  %941 = fcmp fast ole float %917, -1.000000e+00
  %942 = fcmp fast ole float %926, -1.000000e+00
  %943 = select i1 %940, float 0x47EFFFFFE0000000, float %904
  %944 = select i1 %941, float 0x47EFFFFFE0000000, float %917
  %945 = select i1 %942, float 0x47EFFFFFE0000000, float %926
  %946 = and i1 %940, %941
  %947 = and i1 %946, %942
  %948 = call float @dx.op.binary.f32(i32 35, float %917, float %926)  ; FMax(a,b)
  %949 = call float @dx.op.binary.f32(i32 35, float %904, float %948)  ; FMax(a,b)
  %950 = call float @dx.op.binary.f32(i32 36, float %944, float %945)  ; FMin(a,b)
  %951 = call float @dx.op.binary.f32(i32 36, float %943, float %950)  ; FMin(a,b)
  %952 = select i1 %947, float %949, float %951
  br label %953

; <label>:953                                     ; preds = %906, %902
  %954 = phi float [ %939, %906 ], [ %903, %902 ]
  %955 = phi float [ %952, %906 ], [ %904, %902 ]
  %956 = icmp ne i32 %818, 0
  %957 = and i1 %817, %956
  br i1 %957, label %958, label %987, !dx.controlflow.hints !34

; <label>:958                                     ; preds = %953
  %959 = add i32 %747, 2
  %960 = and i32 %959, 14
  %961 = add i32 %746, 2
  %962 = and i32 %961, 14
  %963 = mul i32 %962, 16
  %964 = add i32 %960, %963
  %965 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %964
  %966 = load i32, i32 addrspace(3)* %965, align 4, !tbaa !26
  %967 = and i32 %966, 65535
  %968 = call float @dx.op.legacyF16ToF32(i32 131, i32 %967)  ; LegacyF16ToF32(value)
  %969 = lshr i32 %966, 16
  %970 = call float @dx.op.legacyF16ToF32(i32 131, i32 %969)  ; LegacyF16ToF32(value)
  %971 = fcmp fast ole float %954, -1.000000e+00
  %972 = fcmp fast ole float %968, -1.000000e+00
  %973 = select i1 %971, float -1.000000e+00, float %954
  %974 = select i1 %972, float -1.000000e+00, float %968
  %975 = and i1 %971, %972
  %976 = call float @dx.op.binary.f32(i32 36, float %954, float %968)  ; FMin(a,b)
  %977 = call float @dx.op.binary.f32(i32 35, float %973, float %974)  ; FMax(a,b)
  %978 = select i1 %975, float %976, float %977
  %979 = fcmp fast ole float %955, -1.000000e+00
  %980 = fcmp fast ole float %970, -1.000000e+00
  %981 = select i1 %979, float 0x47EFFFFFE0000000, float %955
  %982 = select i1 %980, float 0x47EFFFFFE0000000, float %970
  %983 = and i1 %979, %980
  %984 = call float @dx.op.binary.f32(i32 35, float %955, float %970)  ; FMax(a,b)
  %985 = call float @dx.op.binary.f32(i32 36, float %981, float %982)  ; FMin(a,b)
  %986 = select i1 %983, float %984, float %985
  br label %987

; <label>:987                                     ; preds = %958, %953
  %988 = phi float [ %978, %958 ], [ %954, %953 ]
  %989 = phi float [ %986, %958 ], [ %955, %953 ]
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %745, label %990, label %1000, !dx.controlflow.hints !35

; <label>:990                                     ; preds = %987
  %991 = call i32 @dx.op.legacyF32ToF16(i32 130, float %988)  ; LegacyF32ToF16(value)
  %992 = call i32 @dx.op.legacyF32ToF16(i32 130, float %989)  ; LegacyF32ToF16(value)
  %993 = shl i32 %992, 16
  %994 = or i32 %993, %991
  %995 = and i32 %737, 15
  %996 = and i32 %736, 15
  %997 = mul i32 %996, 16
  %998 = add i32 %995, %997
  %999 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %998
  store i32 %994, i32 addrspace(3)* %999, align 4, !tbaa !26
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %736, i32 %737, i32 undef, float %988, float %988, float %988, float %988, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %736, i32 %737, i32 undef, float %989, float %989, float %989, float %989, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1000

; <label>:1000                                    ; preds = %990, %987, %723
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #3

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.legacyF32ToF16(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

attributes #0 = { nounwind readnone }
attributes #1 = { noduplicate nounwind }
attributes #2 = { nounwind readonly }
attributes #3 = { nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!18}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !8, !14, !16}
!5 = !{!6}
!6 = !{i32 0, %"class.Texture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{!9, !10, !11, !12, !13}
!9 = !{i32 0, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!10 = !{i32 1, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!11 = !{i32 2, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!12 = !{i32 3, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 3, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!13 = !{i32 4, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 7, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!14 = !{!15}
!15 = !{i32 0, %FloatZDownsampleConsts* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!16 = !{!17}
!17 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!18 = !{void ()* @cs_floatz_downsample_border_last_min_only, !"cs_floatz_downsample_border_last_min_only", null, !4, !19}
!19 = !{i32 0, i64 256, i32 4, !20}
!20 = !{i32 16, i32 16, i32 1}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = !{!27, !27, i64 0}
!27 = !{!"int", !28, i64 0}
!28 = !{!"omnipotent char", !29, i64 0}
!29 = !{!"Simple C/C++ TBAA"}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}

