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
; shader hash: 4fa1221b2133a5f3376c2c838e30014c
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

define void @cs_floatz_downsample_border_maxonly() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %9 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %10 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %11 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %12 = extractvalue %dx.types.CBufRet.i32 %11, 2
  %13 = icmp ult i32 %10, %12
  %14 = extractvalue %dx.types.CBufRet.i32 %11, 0
  %15 = sub i32 %10, %12
  %16 = extractvalue %dx.types.CBufRet.i32 %11, 1
  %17 = select i1 %13, i32 %14, i32 %15
  %18 = select i1 %13, i32 %10, i32 %16
  %19 = shl i32 %17, 3
  %20 = shl i32 %18, 3
  %21 = add i32 %19, %8
  %22 = add i32 %20, %9
  %23 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %24 = extractvalue %dx.types.CBufRet.f32 %23, 0
  %25 = extractvalue %dx.types.CBufRet.f32 %23, 1
  %26 = fptoui float %24 to i32
  %27 = fptoui float %25 to i32
  %28 = icmp ult i32 %18, %16
  %29 = fcmp ule float %25, 1.600000e+01
  %30 = or i1 %28, %29
  %31 = icmp ugt i32 %9, 7
  %32 = and i1 %31, %30
  %33 = icmp ult i32 %17, %14
  %34 = fcmp ule float %24, 1.600000e+01
  %35 = or i1 %33, %34
  %36 = icmp ugt i32 %8, 7
  %37 = and i1 %36, %35
  %38 = or i1 %32, %37
  %39 = xor i1 %38, true
  %40 = lshr i32 %26, 1
  %41 = lshr i32 %27, 1
  %42 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %40)  ; UMax(a,b)
  %43 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %41)  ; UMax(a,b)
  %44 = icmp ult i32 %21, %42
  %45 = icmp ult i32 %22, %43
  %46 = and i1 %44, %45
  %47 = and i1 %46, %39
  %48 = shl i32 %21, 1
  %49 = shl i32 %22, 1
  br i1 %47, label %50, label %77, !dx.controlflow.hints !20

; <label>:50                                      ; preds = %0
  %51 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %52 = extractvalue %dx.types.CBufRet.f32 %51, 2
  %53 = extractvalue %dx.types.CBufRet.f32 %51, 3
  %54 = uitofp i32 %48 to float
  %55 = uitofp i32 %49 to float
  %56 = fadd fast float %54, 1.000000e+00
  %57 = fadd fast float %55, 1.000000e+00
  %58 = fmul fast float %52, %56
  %59 = fmul fast float %53, %57
  %60 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %6, float %58, float %59, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %61 = extractvalue %dx.types.ResRet.f32 %60, 0
  %62 = extractvalue %dx.types.ResRet.f32 %60, 1
  %63 = extractvalue %dx.types.ResRet.f32 %60, 2
  %64 = extractvalue %dx.types.ResRet.f32 %60, 3
  %65 = and i32 %26, 1
  %66 = icmp ne i32 %65, 0
  %67 = add i32 %26, -3
  %68 = icmp eq i32 %67, %48
  %69 = and i1 %66, %68
  %70 = zext i1 %69 to i32
  %71 = and i32 %27, 1
  %72 = icmp ne i32 %71, 0
  %73 = add i32 %27, -3
  %74 = icmp eq i32 %73, %49
  %75 = and i1 %72, %74
  %76 = zext i1 %75 to i32
  br label %77

; <label>:77                                      ; preds = %50, %0
  %78 = phi float [ %61, %50 ], [ 0.000000e+00, %0 ]
  %79 = phi float [ %62, %50 ], [ 0.000000e+00, %0 ]
  %80 = phi float [ %63, %50 ], [ 0.000000e+00, %0 ]
  %81 = phi float [ %64, %50 ], [ 0.000000e+00, %0 ]
  %82 = phi i32 [ %70, %50 ], [ 0, %0 ]
  %83 = phi i32 [ %76, %50 ], [ 0, %0 ]
  %84 = fcmp fast ole float %78, -1.000000e+00
  %85 = fcmp fast ole float %79, -1.000000e+00
  %86 = fcmp fast ole float %80, -1.000000e+00
  %87 = fcmp fast ole float %81, -1.000000e+00
  %88 = select i1 %84, float -1.000000e+00, float %78
  %89 = select i1 %85, float -1.000000e+00, float %79
  %90 = select i1 %86, float -1.000000e+00, float %80
  %91 = select i1 %87, float -1.000000e+00, float %81
  %92 = and i1 %84, %85
  %93 = and i1 %92, %86
  %94 = and i1 %93, %87
  %95 = call float @dx.op.binary.f32(i32 36, float %79, float %80)  ; FMin(a,b)
  %96 = call float @dx.op.binary.f32(i32 36, float %78, float %95)  ; FMin(a,b)
  %97 = call float @dx.op.binary.f32(i32 36, float %96, float %81)  ; FMin(a,b)
  %98 = call float @dx.op.binary.f32(i32 35, float %89, float %90)  ; FMax(a,b)
  %99 = call float @dx.op.binary.f32(i32 35, float %88, float %98)  ; FMax(a,b)
  %100 = call float @dx.op.binary.f32(i32 35, float %99, float %91)  ; FMax(a,b)
  %101 = select i1 %94, float %97, float %100
  %102 = icmp eq i32 %82, 0
  br i1 %102, label %123, label %103, !dx.controlflow.hints !21

; <label>:103                                     ; preds = %77
  %104 = add i32 %48, 2
  %105 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %104, i32 %49, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %106 = extractvalue %dx.types.ResRet.f32 %105, 0
  %107 = or i32 %49, 1
  %108 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %104, i32 %107, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %109 = extractvalue %dx.types.ResRet.f32 %108, 0
  %110 = fcmp fast ole float %101, -1.000000e+00
  %111 = fcmp fast ole float %106, -1.000000e+00
  %112 = fcmp fast ole float %109, -1.000000e+00
  %113 = select i1 %110, float -1.000000e+00, float %101
  %114 = select i1 %111, float -1.000000e+00, float %106
  %115 = select i1 %112, float -1.000000e+00, float %109
  %116 = and i1 %110, %111
  %117 = and i1 %116, %112
  %118 = call float @dx.op.binary.f32(i32 36, float %106, float %109)  ; FMin(a,b)
  %119 = call float @dx.op.binary.f32(i32 36, float %101, float %118)  ; FMin(a,b)
  %120 = call float @dx.op.binary.f32(i32 35, float %114, float %115)  ; FMax(a,b)
  %121 = call float @dx.op.binary.f32(i32 35, float %113, float %120)  ; FMax(a,b)
  %122 = select i1 %117, float %119, float %121
  br label %123

; <label>:123                                     ; preds = %103, %77
  %124 = phi float [ %122, %103 ], [ %101, %77 ]
  %125 = icmp eq i32 %83, 0
  br i1 %125, label %146, label %126, !dx.controlflow.hints !22

; <label>:126                                     ; preds = %123
  %127 = add i32 %49, 2
  %128 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %48, i32 %127, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %129 = extractvalue %dx.types.ResRet.f32 %128, 0
  %130 = or i32 %48, 1
  %131 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %130, i32 %127, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %132 = extractvalue %dx.types.ResRet.f32 %131, 0
  %133 = fcmp fast ole float %124, -1.000000e+00
  %134 = fcmp fast ole float %129, -1.000000e+00
  %135 = fcmp fast ole float %132, -1.000000e+00
  %136 = select i1 %133, float -1.000000e+00, float %124
  %137 = select i1 %134, float -1.000000e+00, float %129
  %138 = select i1 %135, float -1.000000e+00, float %132
  %139 = and i1 %133, %134
  %140 = and i1 %139, %135
  %141 = call float @dx.op.binary.f32(i32 36, float %129, float %132)  ; FMin(a,b)
  %142 = call float @dx.op.binary.f32(i32 36, float %124, float %141)  ; FMin(a,b)
  %143 = call float @dx.op.binary.f32(i32 35, float %137, float %138)  ; FMax(a,b)
  %144 = call float @dx.op.binary.f32(i32 35, float %136, float %143)  ; FMax(a,b)
  %145 = select i1 %140, float %142, float %144
  br label %146

; <label>:146                                     ; preds = %126, %123
  %147 = phi float [ %145, %126 ], [ %124, %123 ]
  %148 = icmp ne i32 %82, 0
  %149 = icmp ne i32 %83, 0
  %150 = and i1 %148, %149
  br i1 %150, label %151, label %164, !dx.controlflow.hints !23

; <label>:151                                     ; preds = %146
  %152 = add i32 %48, 2
  %153 = add i32 %49, 2
  %154 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %152, i32 %153, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %155 = extractvalue %dx.types.ResRet.f32 %154, 0
  %156 = fcmp fast ole float %147, -1.000000e+00
  %157 = fcmp fast ole float %155, -1.000000e+00
  %158 = select i1 %156, float -1.000000e+00, float %147
  %159 = select i1 %157, float -1.000000e+00, float %155
  %160 = and i1 %156, %157
  %161 = call float @dx.op.binary.f32(i32 36, float %147, float %155)  ; FMin(a,b)
  %162 = call float @dx.op.binary.f32(i32 35, float %158, float %159)  ; FMax(a,b)
  %163 = select i1 %160, float %161, float %162
  br label %164

; <label>:164                                     ; preds = %151, %146
  %165 = phi float [ %163, %151 ], [ %147, %146 ]
  br i1 %47, label %166, label %176, !dx.controlflow.hints !24

; <label>:166                                     ; preds = %164
  %167 = call i32 @dx.op.legacyF32ToF16(i32 130, float %165)  ; LegacyF32ToF16(value)
  %168 = call i32 @dx.op.legacyF32ToF16(i32 130, float 0.000000e+00)  ; LegacyF32ToF16(value)
  %169 = shl i32 %168, 16
  %170 = or i32 %169, %167
  %171 = and i32 %22, 15
  %172 = and i32 %21, 15
  %173 = mul i32 %172, 16
  %174 = add i32 %171, %173
  %175 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %174
  store i32 %170, i32 addrspace(3)* %175, align 4, !tbaa !25
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %21, i32 %22, i32 undef, float %165, float %165, float %165, float %165, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %176

; <label>:176                                     ; preds = %166, %164
  %177 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %178 = extractvalue %dx.types.CBufRet.i32 %177, 3
  %179 = icmp ugt i32 %178, 1
  br i1 %179, label %180, label %445, !dx.controlflow.hints !29

; <label>:180                                     ; preds = %176
  %181 = lshr i32 %21, 1
  %182 = lshr i32 %22, 1
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %183 = lshr i32 %42, 1
  %184 = lshr i32 %43, 1
  %185 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %183)  ; UMax(a,b)
  %186 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %184)  ; UMax(a,b)
  %187 = icmp ult i32 %181, %185
  %188 = icmp ult i32 %182, %186
  %189 = and i1 %187, %188
  %190 = and i1 %189, %39
  %191 = shl nuw i32 %181, 1
  %192 = shl nuw i32 %182, 1
  br i1 %190, label %193, label %253, !dx.controlflow.hints !30

; <label>:193                                     ; preds = %180
  %194 = or i32 %191, 1
  %195 = or i32 %192, 1
  %196 = add i32 %42, -1
  %197 = add i32 %43, -1
  %198 = call i32 @dx.op.binary.i32(i32 40, i32 %191, i32 %196)  ; UMin(a,b)
  %199 = call i32 @dx.op.binary.i32(i32 40, i32 %192, i32 %197)  ; UMin(a,b)
  %200 = call i32 @dx.op.binary.i32(i32 40, i32 %194, i32 %196)  ; UMin(a,b)
  %201 = call i32 @dx.op.binary.i32(i32 40, i32 %195, i32 %197)  ; UMin(a,b)
  %202 = and i32 %198, 15
  %203 = and i32 %199, 15
  %204 = and i32 %200, 15
  %205 = and i32 %201, 15
  %206 = mul i32 %202, 16
  %207 = add i32 %203, %206
  %208 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %207
  %209 = load i32, i32 addrspace(3)* %208, align 4, !tbaa !25
  %210 = and i32 %209, 65535
  %211 = call float @dx.op.legacyF16ToF32(i32 131, i32 %210)  ; LegacyF16ToF32(value)
  %212 = lshr i32 %209, 16
  %213 = call float @dx.op.legacyF16ToF32(i32 131, i32 %212)  ; LegacyF16ToF32(value)
  %214 = mul i32 %204, 16
  %215 = add i32 %203, %214
  %216 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %215
  %217 = load i32, i32 addrspace(3)* %216, align 4, !tbaa !25
  %218 = and i32 %217, 65535
  %219 = call float @dx.op.legacyF16ToF32(i32 131, i32 %218)  ; LegacyF16ToF32(value)
  %220 = lshr i32 %217, 16
  %221 = call float @dx.op.legacyF16ToF32(i32 131, i32 %220)  ; LegacyF16ToF32(value)
  %222 = mul i32 %202, 16
  %223 = add i32 %205, %222
  %224 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %223
  %225 = load i32, i32 addrspace(3)* %224, align 4, !tbaa !25
  %226 = and i32 %225, 65535
  %227 = call float @dx.op.legacyF16ToF32(i32 131, i32 %226)  ; LegacyF16ToF32(value)
  %228 = lshr i32 %225, 16
  %229 = call float @dx.op.legacyF16ToF32(i32 131, i32 %228)  ; LegacyF16ToF32(value)
  %230 = mul i32 %204, 16
  %231 = add i32 %205, %230
  %232 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %231
  %233 = load i32, i32 addrspace(3)* %232, align 4, !tbaa !25
  %234 = and i32 %233, 65535
  %235 = call float @dx.op.legacyF16ToF32(i32 131, i32 %234)  ; LegacyF16ToF32(value)
  %236 = lshr i32 %233, 16
  %237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %236)  ; LegacyF16ToF32(value)
  %238 = icmp ugt i32 %42, 1
  %239 = and i32 %42, 1
  %240 = icmp ne i32 %239, 0
  %241 = and i1 %238, %240
  %242 = add i32 %42, -3
  %243 = icmp eq i32 %242, %191
  %244 = and i1 %243, %241
  %245 = icmp ugt i32 %43, 1
  %246 = and i32 %43, 1
  %247 = icmp ne i32 %246, 0
  %248 = and i1 %245, %247
  %249 = add i32 %43, -3
  %250 = icmp eq i32 %249, %192
  %251 = and i1 %250, %248
  %252 = zext i1 %251 to i32
  br label %253

; <label>:253                                     ; preds = %193, %180
  %254 = phi float [ %211, %193 ], [ 0.000000e+00, %180 ]
  %255 = phi float [ %219, %193 ], [ 0.000000e+00, %180 ]
  %256 = phi float [ %227, %193 ], [ 0.000000e+00, %180 ]
  %257 = phi float [ %235, %193 ], [ 0.000000e+00, %180 ]
  %258 = phi float [ %213, %193 ], [ 0.000000e+00, %180 ]
  %259 = phi float [ %221, %193 ], [ 0.000000e+00, %180 ]
  %260 = phi float [ %229, %193 ], [ 0.000000e+00, %180 ]
  %261 = phi float [ %237, %193 ], [ 0.000000e+00, %180 ]
  %262 = phi i1 [ %244, %193 ], [ false, %180 ]
  %263 = phi i32 [ %252, %193 ], [ 0, %180 ]
  %264 = fcmp fast ole float %254, -1.000000e+00
  %265 = fcmp fast ole float %255, -1.000000e+00
  %266 = fcmp fast ole float %256, -1.000000e+00
  %267 = fcmp fast ole float %257, -1.000000e+00
  %268 = select i1 %264, float -1.000000e+00, float %254
  %269 = select i1 %265, float -1.000000e+00, float %255
  %270 = select i1 %266, float -1.000000e+00, float %256
  %271 = select i1 %267, float -1.000000e+00, float %257
  %272 = and i1 %264, %265
  %273 = and i1 %272, %266
  %274 = and i1 %273, %267
  %275 = call float @dx.op.binary.f32(i32 36, float %255, float %256)  ; FMin(a,b)
  %276 = call float @dx.op.binary.f32(i32 36, float %254, float %275)  ; FMin(a,b)
  %277 = call float @dx.op.binary.f32(i32 36, float %276, float %257)  ; FMin(a,b)
  %278 = call float @dx.op.binary.f32(i32 35, float %269, float %270)  ; FMax(a,b)
  %279 = call float @dx.op.binary.f32(i32 35, float %268, float %278)  ; FMax(a,b)
  %280 = call float @dx.op.binary.f32(i32 35, float %279, float %271)  ; FMax(a,b)
  %281 = select i1 %274, float %277, float %280
  %282 = fcmp fast ole float %258, -1.000000e+00
  %283 = fcmp fast ole float %259, -1.000000e+00
  %284 = fcmp fast ole float %260, -1.000000e+00
  %285 = fcmp fast ole float %261, -1.000000e+00
  %286 = select i1 %282, float 0x47EFFFFFE0000000, float %258
  %287 = select i1 %283, float 0x47EFFFFFE0000000, float %259
  %288 = select i1 %284, float 0x47EFFFFFE0000000, float %260
  %289 = select i1 %285, float 0x47EFFFFFE0000000, float %261
  %290 = and i1 %282, %283
  %291 = and i1 %290, %284
  %292 = and i1 %291, %285
  %293 = call float @dx.op.binary.f32(i32 35, float %259, float %260)  ; FMax(a,b)
  %294 = call float @dx.op.binary.f32(i32 35, float %258, float %293)  ; FMax(a,b)
  %295 = call float @dx.op.binary.f32(i32 35, float %294, float %261)  ; FMax(a,b)
  %296 = call float @dx.op.binary.f32(i32 36, float %287, float %288)  ; FMin(a,b)
  %297 = call float @dx.op.binary.f32(i32 36, float %286, float %296)  ; FMin(a,b)
  %298 = call float @dx.op.binary.f32(i32 36, float %297, float %289)  ; FMin(a,b)
  %299 = select i1 %292, float %295, float %298
  br i1 %262, label %300, label %347, !dx.controlflow.hints !31

; <label>:300                                     ; preds = %253
  %301 = and i32 %192, 14
  %302 = add i32 %191, 2
  %303 = and i32 %302, 14
  %304 = mul i32 %303, 16
  %305 = add i32 %301, %304
  %306 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %305
  %307 = load i32, i32 addrspace(3)* %306, align 4, !tbaa !25
  %308 = and i32 %307, 65535
  %309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %308)  ; LegacyF16ToF32(value)
  %310 = lshr i32 %307, 16
  %311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %310)  ; LegacyF16ToF32(value)
  %312 = or i32 %301, 1
  %313 = mul i32 %303, 16
  %314 = add i32 %312, %313
  %315 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %314
  %316 = load i32, i32 addrspace(3)* %315, align 4, !tbaa !25
  %317 = and i32 %316, 65535
  %318 = call float @dx.op.legacyF16ToF32(i32 131, i32 %317)  ; LegacyF16ToF32(value)
  %319 = lshr i32 %316, 16
  %320 = call float @dx.op.legacyF16ToF32(i32 131, i32 %319)  ; LegacyF16ToF32(value)
  %321 = fcmp fast ole float %281, -1.000000e+00
  %322 = fcmp fast ole float %309, -1.000000e+00
  %323 = fcmp fast ole float %318, -1.000000e+00
  %324 = select i1 %321, float -1.000000e+00, float %281
  %325 = select i1 %322, float -1.000000e+00, float %309
  %326 = select i1 %323, float -1.000000e+00, float %318
  %327 = and i1 %321, %322
  %328 = and i1 %327, %323
  %329 = call float @dx.op.binary.f32(i32 36, float %309, float %318)  ; FMin(a,b)
  %330 = call float @dx.op.binary.f32(i32 36, float %281, float %329)  ; FMin(a,b)
  %331 = call float @dx.op.binary.f32(i32 35, float %325, float %326)  ; FMax(a,b)
  %332 = call float @dx.op.binary.f32(i32 35, float %324, float %331)  ; FMax(a,b)
  %333 = select i1 %328, float %330, float %332
  %334 = fcmp fast ole float %299, -1.000000e+00
  %335 = fcmp fast ole float %311, -1.000000e+00
  %336 = fcmp fast ole float %320, -1.000000e+00
  %337 = select i1 %334, float 0x47EFFFFFE0000000, float %299
  %338 = select i1 %335, float 0x47EFFFFFE0000000, float %311
  %339 = select i1 %336, float 0x47EFFFFFE0000000, float %320
  %340 = and i1 %334, %335
  %341 = and i1 %340, %336
  %342 = call float @dx.op.binary.f32(i32 35, float %311, float %320)  ; FMax(a,b)
  %343 = call float @dx.op.binary.f32(i32 35, float %299, float %342)  ; FMax(a,b)
  %344 = call float @dx.op.binary.f32(i32 36, float %338, float %339)  ; FMin(a,b)
  %345 = call float @dx.op.binary.f32(i32 36, float %337, float %344)  ; FMin(a,b)
  %346 = select i1 %341, float %343, float %345
  br label %347

; <label>:347                                     ; preds = %300, %253
  %348 = phi float [ %333, %300 ], [ %281, %253 ]
  %349 = phi float [ %346, %300 ], [ %299, %253 ]
  %350 = icmp eq i32 %263, 0
  br i1 %350, label %398, label %351, !dx.controlflow.hints !32

; <label>:351                                     ; preds = %347
  %352 = add i32 %192, 2
  %353 = and i32 %352, 14
  %354 = and i32 %191, 14
  %355 = mul i32 %354, 16
  %356 = add i32 %353, %355
  %357 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %356
  %358 = load i32, i32 addrspace(3)* %357, align 4, !tbaa !25
  %359 = and i32 %358, 65535
  %360 = call float @dx.op.legacyF16ToF32(i32 131, i32 %359)  ; LegacyF16ToF32(value)
  %361 = lshr i32 %358, 16
  %362 = call float @dx.op.legacyF16ToF32(i32 131, i32 %361)  ; LegacyF16ToF32(value)
  %363 = or i32 %354, 1
  %364 = mul i32 %363, 16
  %365 = add i32 %353, %364
  %366 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %365
  %367 = load i32, i32 addrspace(3)* %366, align 4, !tbaa !25
  %368 = and i32 %367, 65535
  %369 = call float @dx.op.legacyF16ToF32(i32 131, i32 %368)  ; LegacyF16ToF32(value)
  %370 = lshr i32 %367, 16
  %371 = call float @dx.op.legacyF16ToF32(i32 131, i32 %370)  ; LegacyF16ToF32(value)
  %372 = fcmp fast ole float %348, -1.000000e+00
  %373 = fcmp fast ole float %360, -1.000000e+00
  %374 = fcmp fast ole float %369, -1.000000e+00
  %375 = select i1 %372, float -1.000000e+00, float %348
  %376 = select i1 %373, float -1.000000e+00, float %360
  %377 = select i1 %374, float -1.000000e+00, float %369
  %378 = and i1 %372, %373
  %379 = and i1 %378, %374
  %380 = call float @dx.op.binary.f32(i32 36, float %360, float %369)  ; FMin(a,b)
  %381 = call float @dx.op.binary.f32(i32 36, float %348, float %380)  ; FMin(a,b)
  %382 = call float @dx.op.binary.f32(i32 35, float %376, float %377)  ; FMax(a,b)
  %383 = call float @dx.op.binary.f32(i32 35, float %375, float %382)  ; FMax(a,b)
  %384 = select i1 %379, float %381, float %383
  %385 = fcmp fast ole float %349, -1.000000e+00
  %386 = fcmp fast ole float %362, -1.000000e+00
  %387 = fcmp fast ole float %371, -1.000000e+00
  %388 = select i1 %385, float 0x47EFFFFFE0000000, float %349
  %389 = select i1 %386, float 0x47EFFFFFE0000000, float %362
  %390 = select i1 %387, float 0x47EFFFFFE0000000, float %371
  %391 = and i1 %385, %386
  %392 = and i1 %391, %387
  %393 = call float @dx.op.binary.f32(i32 35, float %362, float %371)  ; FMax(a,b)
  %394 = call float @dx.op.binary.f32(i32 35, float %349, float %393)  ; FMax(a,b)
  %395 = call float @dx.op.binary.f32(i32 36, float %389, float %390)  ; FMin(a,b)
  %396 = call float @dx.op.binary.f32(i32 36, float %388, float %395)  ; FMin(a,b)
  %397 = select i1 %392, float %394, float %396
  br label %398

; <label>:398                                     ; preds = %351, %347
  %399 = phi float [ %384, %351 ], [ %348, %347 ]
  %400 = phi float [ %397, %351 ], [ %349, %347 ]
  %401 = icmp ne i32 %263, 0
  %402 = and i1 %262, %401
  br i1 %402, label %403, label %432, !dx.controlflow.hints !33

; <label>:403                                     ; preds = %398
  %404 = add i32 %192, 2
  %405 = and i32 %404, 14
  %406 = add i32 %191, 2
  %407 = and i32 %406, 14
  %408 = mul i32 %407, 16
  %409 = add i32 %405, %408
  %410 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %409
  %411 = load i32, i32 addrspace(3)* %410, align 4, !tbaa !25
  %412 = and i32 %411, 65535
  %413 = call float @dx.op.legacyF16ToF32(i32 131, i32 %412)  ; LegacyF16ToF32(value)
  %414 = lshr i32 %411, 16
  %415 = call float @dx.op.legacyF16ToF32(i32 131, i32 %414)  ; LegacyF16ToF32(value)
  %416 = fcmp fast ole float %399, -1.000000e+00
  %417 = fcmp fast ole float %413, -1.000000e+00
  %418 = select i1 %416, float -1.000000e+00, float %399
  %419 = select i1 %417, float -1.000000e+00, float %413
  %420 = and i1 %416, %417
  %421 = call float @dx.op.binary.f32(i32 36, float %399, float %413)  ; FMin(a,b)
  %422 = call float @dx.op.binary.f32(i32 35, float %418, float %419)  ; FMax(a,b)
  %423 = select i1 %420, float %421, float %422
  %424 = fcmp fast ole float %400, -1.000000e+00
  %425 = fcmp fast ole float %415, -1.000000e+00
  %426 = select i1 %424, float 0x47EFFFFFE0000000, float %400
  %427 = select i1 %425, float 0x47EFFFFFE0000000, float %415
  %428 = and i1 %424, %425
  %429 = call float @dx.op.binary.f32(i32 35, float %400, float %415)  ; FMax(a,b)
  %430 = call float @dx.op.binary.f32(i32 36, float %426, float %427)  ; FMin(a,b)
  %431 = select i1 %428, float %429, float %430
  br label %432

; <label>:432                                     ; preds = %403, %398
  %433 = phi float [ %423, %403 ], [ %399, %398 ]
  %434 = phi float [ %431, %403 ], [ %400, %398 ]
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %190, label %435, label %445, !dx.controlflow.hints !34

; <label>:435                                     ; preds = %432
  %436 = call i32 @dx.op.legacyF32ToF16(i32 130, float %433)  ; LegacyF32ToF16(value)
  %437 = call i32 @dx.op.legacyF32ToF16(i32 130, float %434)  ; LegacyF32ToF16(value)
  %438 = shl i32 %437, 16
  %439 = or i32 %438, %436
  %440 = and i32 %182, 15
  %441 = and i32 %181, 15
  %442 = mul i32 %441, 16
  %443 = add i32 %440, %442
  %444 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %443
  store i32 %439, i32 addrspace(3)* %444, align 4, !tbaa !25
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %181, i32 %182, i32 undef, float %433, float %433, float %433, float %433, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %445

; <label>:445                                     ; preds = %435, %432, %176
  %446 = phi i32 [ %26, %176 ], [ %42, %435 ], [ %42, %432 ]
  %447 = phi i32 [ %27, %176 ], [ %43, %435 ], [ %43, %432 ]
  %448 = phi i32 [ %21, %176 ], [ %181, %435 ], [ %181, %432 ]
  %449 = phi i32 [ %22, %176 ], [ %182, %435 ], [ %182, %432 ]
  %450 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %451 = extractvalue %dx.types.CBufRet.i32 %450, 3
  %452 = icmp ugt i32 %451, 2
  br i1 %452, label %453, label %722, !dx.controlflow.hints !35

; <label>:453                                     ; preds = %445
  %454 = lshr i32 %446, 1
  %455 = lshr i32 %447, 1
  %456 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %454)  ; UMax(a,b)
  %457 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %455)  ; UMax(a,b)
  %458 = lshr i32 %448, 1
  %459 = lshr i32 %449, 1
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %460 = lshr i32 %456, 1
  %461 = lshr i32 %457, 1
  %462 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %460)  ; UMax(a,b)
  %463 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %461)  ; UMax(a,b)
  %464 = icmp ult i32 %458, %462
  %465 = icmp ult i32 %459, %463
  %466 = and i1 %464, %465
  %467 = and i1 %466, %39
  %468 = shl nuw i32 %458, 1
  %469 = shl nuw i32 %459, 1
  br i1 %467, label %470, label %530, !dx.controlflow.hints !30

; <label>:470                                     ; preds = %453
  %471 = or i32 %468, 1
  %472 = or i32 %469, 1
  %473 = add i32 %456, -1
  %474 = add i32 %457, -1
  %475 = call i32 @dx.op.binary.i32(i32 40, i32 %468, i32 %473)  ; UMin(a,b)
  %476 = call i32 @dx.op.binary.i32(i32 40, i32 %469, i32 %474)  ; UMin(a,b)
  %477 = call i32 @dx.op.binary.i32(i32 40, i32 %471, i32 %473)  ; UMin(a,b)
  %478 = call i32 @dx.op.binary.i32(i32 40, i32 %472, i32 %474)  ; UMin(a,b)
  %479 = and i32 %475, 15
  %480 = and i32 %476, 15
  %481 = and i32 %477, 15
  %482 = and i32 %478, 15
  %483 = mul i32 %479, 16
  %484 = add i32 %480, %483
  %485 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %484
  %486 = load i32, i32 addrspace(3)* %485, align 4, !tbaa !25
  %487 = and i32 %486, 65535
  %488 = call float @dx.op.legacyF16ToF32(i32 131, i32 %487)  ; LegacyF16ToF32(value)
  %489 = lshr i32 %486, 16
  %490 = call float @dx.op.legacyF16ToF32(i32 131, i32 %489)  ; LegacyF16ToF32(value)
  %491 = mul i32 %481, 16
  %492 = add i32 %480, %491
  %493 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %492
  %494 = load i32, i32 addrspace(3)* %493, align 4, !tbaa !25
  %495 = and i32 %494, 65535
  %496 = call float @dx.op.legacyF16ToF32(i32 131, i32 %495)  ; LegacyF16ToF32(value)
  %497 = lshr i32 %494, 16
  %498 = call float @dx.op.legacyF16ToF32(i32 131, i32 %497)  ; LegacyF16ToF32(value)
  %499 = mul i32 %479, 16
  %500 = add i32 %482, %499
  %501 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %500
  %502 = load i32, i32 addrspace(3)* %501, align 4, !tbaa !25
  %503 = and i32 %502, 65535
  %504 = call float @dx.op.legacyF16ToF32(i32 131, i32 %503)  ; LegacyF16ToF32(value)
  %505 = lshr i32 %502, 16
  %506 = call float @dx.op.legacyF16ToF32(i32 131, i32 %505)  ; LegacyF16ToF32(value)
  %507 = mul i32 %481, 16
  %508 = add i32 %482, %507
  %509 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %508
  %510 = load i32, i32 addrspace(3)* %509, align 4, !tbaa !25
  %511 = and i32 %510, 65535
  %512 = call float @dx.op.legacyF16ToF32(i32 131, i32 %511)  ; LegacyF16ToF32(value)
  %513 = lshr i32 %510, 16
  %514 = call float @dx.op.legacyF16ToF32(i32 131, i32 %513)  ; LegacyF16ToF32(value)
  %515 = icmp ugt i32 %456, 1
  %516 = and i32 %456, 1
  %517 = icmp ne i32 %516, 0
  %518 = and i1 %515, %517
  %519 = add i32 %456, -3
  %520 = icmp eq i32 %519, %468
  %521 = and i1 %520, %518
  %522 = icmp ugt i32 %457, 1
  %523 = and i32 %457, 1
  %524 = icmp ne i32 %523, 0
  %525 = and i1 %522, %524
  %526 = add i32 %457, -3
  %527 = icmp eq i32 %526, %469
  %528 = and i1 %527, %525
  %529 = zext i1 %528 to i32
  br label %530

; <label>:530                                     ; preds = %470, %453
  %531 = phi float [ %488, %470 ], [ 0.000000e+00, %453 ]
  %532 = phi float [ %496, %470 ], [ 0.000000e+00, %453 ]
  %533 = phi float [ %504, %470 ], [ 0.000000e+00, %453 ]
  %534 = phi float [ %512, %470 ], [ 0.000000e+00, %453 ]
  %535 = phi float [ %490, %470 ], [ 0.000000e+00, %453 ]
  %536 = phi float [ %498, %470 ], [ 0.000000e+00, %453 ]
  %537 = phi float [ %506, %470 ], [ 0.000000e+00, %453 ]
  %538 = phi float [ %514, %470 ], [ 0.000000e+00, %453 ]
  %539 = phi i1 [ %521, %470 ], [ false, %453 ]
  %540 = phi i32 [ %529, %470 ], [ 0, %453 ]
  %541 = fcmp fast ole float %531, -1.000000e+00
  %542 = fcmp fast ole float %532, -1.000000e+00
  %543 = fcmp fast ole float %533, -1.000000e+00
  %544 = fcmp fast ole float %534, -1.000000e+00
  %545 = select i1 %541, float -1.000000e+00, float %531
  %546 = select i1 %542, float -1.000000e+00, float %532
  %547 = select i1 %543, float -1.000000e+00, float %533
  %548 = select i1 %544, float -1.000000e+00, float %534
  %549 = and i1 %541, %542
  %550 = and i1 %549, %543
  %551 = and i1 %550, %544
  %552 = call float @dx.op.binary.f32(i32 36, float %532, float %533)  ; FMin(a,b)
  %553 = call float @dx.op.binary.f32(i32 36, float %531, float %552)  ; FMin(a,b)
  %554 = call float @dx.op.binary.f32(i32 36, float %553, float %534)  ; FMin(a,b)
  %555 = call float @dx.op.binary.f32(i32 35, float %546, float %547)  ; FMax(a,b)
  %556 = call float @dx.op.binary.f32(i32 35, float %545, float %555)  ; FMax(a,b)
  %557 = call float @dx.op.binary.f32(i32 35, float %556, float %548)  ; FMax(a,b)
  %558 = select i1 %551, float %554, float %557
  %559 = fcmp fast ole float %535, -1.000000e+00
  %560 = fcmp fast ole float %536, -1.000000e+00
  %561 = fcmp fast ole float %537, -1.000000e+00
  %562 = fcmp fast ole float %538, -1.000000e+00
  %563 = select i1 %559, float 0x47EFFFFFE0000000, float %535
  %564 = select i1 %560, float 0x47EFFFFFE0000000, float %536
  %565 = select i1 %561, float 0x47EFFFFFE0000000, float %537
  %566 = select i1 %562, float 0x47EFFFFFE0000000, float %538
  %567 = and i1 %559, %560
  %568 = and i1 %567, %561
  %569 = and i1 %568, %562
  %570 = call float @dx.op.binary.f32(i32 35, float %536, float %537)  ; FMax(a,b)
  %571 = call float @dx.op.binary.f32(i32 35, float %535, float %570)  ; FMax(a,b)
  %572 = call float @dx.op.binary.f32(i32 35, float %571, float %538)  ; FMax(a,b)
  %573 = call float @dx.op.binary.f32(i32 36, float %564, float %565)  ; FMin(a,b)
  %574 = call float @dx.op.binary.f32(i32 36, float %563, float %573)  ; FMin(a,b)
  %575 = call float @dx.op.binary.f32(i32 36, float %574, float %566)  ; FMin(a,b)
  %576 = select i1 %569, float %572, float %575
  br i1 %539, label %577, label %624, !dx.controlflow.hints !31

; <label>:577                                     ; preds = %530
  %578 = and i32 %469, 14
  %579 = add i32 %468, 2
  %580 = and i32 %579, 14
  %581 = mul i32 %580, 16
  %582 = add i32 %578, %581
  %583 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %582
  %584 = load i32, i32 addrspace(3)* %583, align 4, !tbaa !25
  %585 = and i32 %584, 65535
  %586 = call float @dx.op.legacyF16ToF32(i32 131, i32 %585)  ; LegacyF16ToF32(value)
  %587 = lshr i32 %584, 16
  %588 = call float @dx.op.legacyF16ToF32(i32 131, i32 %587)  ; LegacyF16ToF32(value)
  %589 = or i32 %578, 1
  %590 = mul i32 %580, 16
  %591 = add i32 %589, %590
  %592 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %591
  %593 = load i32, i32 addrspace(3)* %592, align 4, !tbaa !25
  %594 = and i32 %593, 65535
  %595 = call float @dx.op.legacyF16ToF32(i32 131, i32 %594)  ; LegacyF16ToF32(value)
  %596 = lshr i32 %593, 16
  %597 = call float @dx.op.legacyF16ToF32(i32 131, i32 %596)  ; LegacyF16ToF32(value)
  %598 = fcmp fast ole float %558, -1.000000e+00
  %599 = fcmp fast ole float %586, -1.000000e+00
  %600 = fcmp fast ole float %595, -1.000000e+00
  %601 = select i1 %598, float -1.000000e+00, float %558
  %602 = select i1 %599, float -1.000000e+00, float %586
  %603 = select i1 %600, float -1.000000e+00, float %595
  %604 = and i1 %598, %599
  %605 = and i1 %604, %600
  %606 = call float @dx.op.binary.f32(i32 36, float %586, float %595)  ; FMin(a,b)
  %607 = call float @dx.op.binary.f32(i32 36, float %558, float %606)  ; FMin(a,b)
  %608 = call float @dx.op.binary.f32(i32 35, float %602, float %603)  ; FMax(a,b)
  %609 = call float @dx.op.binary.f32(i32 35, float %601, float %608)  ; FMax(a,b)
  %610 = select i1 %605, float %607, float %609
  %611 = fcmp fast ole float %576, -1.000000e+00
  %612 = fcmp fast ole float %588, -1.000000e+00
  %613 = fcmp fast ole float %597, -1.000000e+00
  %614 = select i1 %611, float 0x47EFFFFFE0000000, float %576
  %615 = select i1 %612, float 0x47EFFFFFE0000000, float %588
  %616 = select i1 %613, float 0x47EFFFFFE0000000, float %597
  %617 = and i1 %611, %612
  %618 = and i1 %617, %613
  %619 = call float @dx.op.binary.f32(i32 35, float %588, float %597)  ; FMax(a,b)
  %620 = call float @dx.op.binary.f32(i32 35, float %576, float %619)  ; FMax(a,b)
  %621 = call float @dx.op.binary.f32(i32 36, float %615, float %616)  ; FMin(a,b)
  %622 = call float @dx.op.binary.f32(i32 36, float %614, float %621)  ; FMin(a,b)
  %623 = select i1 %618, float %620, float %622
  br label %624

; <label>:624                                     ; preds = %577, %530
  %625 = phi float [ %610, %577 ], [ %558, %530 ]
  %626 = phi float [ %623, %577 ], [ %576, %530 ]
  %627 = icmp eq i32 %540, 0
  br i1 %627, label %675, label %628, !dx.controlflow.hints !32

; <label>:628                                     ; preds = %624
  %629 = add i32 %469, 2
  %630 = and i32 %629, 14
  %631 = and i32 %468, 14
  %632 = mul i32 %631, 16
  %633 = add i32 %630, %632
  %634 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %633
  %635 = load i32, i32 addrspace(3)* %634, align 4, !tbaa !25
  %636 = and i32 %635, 65535
  %637 = call float @dx.op.legacyF16ToF32(i32 131, i32 %636)  ; LegacyF16ToF32(value)
  %638 = lshr i32 %635, 16
  %639 = call float @dx.op.legacyF16ToF32(i32 131, i32 %638)  ; LegacyF16ToF32(value)
  %640 = or i32 %631, 1
  %641 = mul i32 %640, 16
  %642 = add i32 %630, %641
  %643 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %642
  %644 = load i32, i32 addrspace(3)* %643, align 4, !tbaa !25
  %645 = and i32 %644, 65535
  %646 = call float @dx.op.legacyF16ToF32(i32 131, i32 %645)  ; LegacyF16ToF32(value)
  %647 = lshr i32 %644, 16
  %648 = call float @dx.op.legacyF16ToF32(i32 131, i32 %647)  ; LegacyF16ToF32(value)
  %649 = fcmp fast ole float %625, -1.000000e+00
  %650 = fcmp fast ole float %637, -1.000000e+00
  %651 = fcmp fast ole float %646, -1.000000e+00
  %652 = select i1 %649, float -1.000000e+00, float %625
  %653 = select i1 %650, float -1.000000e+00, float %637
  %654 = select i1 %651, float -1.000000e+00, float %646
  %655 = and i1 %649, %650
  %656 = and i1 %655, %651
  %657 = call float @dx.op.binary.f32(i32 36, float %637, float %646)  ; FMin(a,b)
  %658 = call float @dx.op.binary.f32(i32 36, float %625, float %657)  ; FMin(a,b)
  %659 = call float @dx.op.binary.f32(i32 35, float %653, float %654)  ; FMax(a,b)
  %660 = call float @dx.op.binary.f32(i32 35, float %652, float %659)  ; FMax(a,b)
  %661 = select i1 %656, float %658, float %660
  %662 = fcmp fast ole float %626, -1.000000e+00
  %663 = fcmp fast ole float %639, -1.000000e+00
  %664 = fcmp fast ole float %648, -1.000000e+00
  %665 = select i1 %662, float 0x47EFFFFFE0000000, float %626
  %666 = select i1 %663, float 0x47EFFFFFE0000000, float %639
  %667 = select i1 %664, float 0x47EFFFFFE0000000, float %648
  %668 = and i1 %662, %663
  %669 = and i1 %668, %664
  %670 = call float @dx.op.binary.f32(i32 35, float %639, float %648)  ; FMax(a,b)
  %671 = call float @dx.op.binary.f32(i32 35, float %626, float %670)  ; FMax(a,b)
  %672 = call float @dx.op.binary.f32(i32 36, float %666, float %667)  ; FMin(a,b)
  %673 = call float @dx.op.binary.f32(i32 36, float %665, float %672)  ; FMin(a,b)
  %674 = select i1 %669, float %671, float %673
  br label %675

; <label>:675                                     ; preds = %628, %624
  %676 = phi float [ %661, %628 ], [ %625, %624 ]
  %677 = phi float [ %674, %628 ], [ %626, %624 ]
  %678 = icmp ne i32 %540, 0
  %679 = and i1 %539, %678
  br i1 %679, label %680, label %709, !dx.controlflow.hints !33

; <label>:680                                     ; preds = %675
  %681 = add i32 %469, 2
  %682 = and i32 %681, 14
  %683 = add i32 %468, 2
  %684 = and i32 %683, 14
  %685 = mul i32 %684, 16
  %686 = add i32 %682, %685
  %687 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %686
  %688 = load i32, i32 addrspace(3)* %687, align 4, !tbaa !25
  %689 = and i32 %688, 65535
  %690 = call float @dx.op.legacyF16ToF32(i32 131, i32 %689)  ; LegacyF16ToF32(value)
  %691 = lshr i32 %688, 16
  %692 = call float @dx.op.legacyF16ToF32(i32 131, i32 %691)  ; LegacyF16ToF32(value)
  %693 = fcmp fast ole float %676, -1.000000e+00
  %694 = fcmp fast ole float %690, -1.000000e+00
  %695 = select i1 %693, float -1.000000e+00, float %676
  %696 = select i1 %694, float -1.000000e+00, float %690
  %697 = and i1 %693, %694
  %698 = call float @dx.op.binary.f32(i32 36, float %676, float %690)  ; FMin(a,b)
  %699 = call float @dx.op.binary.f32(i32 35, float %695, float %696)  ; FMax(a,b)
  %700 = select i1 %697, float %698, float %699
  %701 = fcmp fast ole float %677, -1.000000e+00
  %702 = fcmp fast ole float %692, -1.000000e+00
  %703 = select i1 %701, float 0x47EFFFFFE0000000, float %677
  %704 = select i1 %702, float 0x47EFFFFFE0000000, float %692
  %705 = and i1 %701, %702
  %706 = call float @dx.op.binary.f32(i32 35, float %677, float %692)  ; FMax(a,b)
  %707 = call float @dx.op.binary.f32(i32 36, float %703, float %704)  ; FMin(a,b)
  %708 = select i1 %705, float %706, float %707
  br label %709

; <label>:709                                     ; preds = %680, %675
  %710 = phi float [ %700, %680 ], [ %676, %675 ]
  %711 = phi float [ %708, %680 ], [ %677, %675 ]
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %467, label %712, label %722, !dx.controlflow.hints !34

; <label>:712                                     ; preds = %709
  %713 = call i32 @dx.op.legacyF32ToF16(i32 130, float %710)  ; LegacyF32ToF16(value)
  %714 = call i32 @dx.op.legacyF32ToF16(i32 130, float %711)  ; LegacyF32ToF16(value)
  %715 = shl i32 %714, 16
  %716 = or i32 %715, %713
  %717 = and i32 %459, 15
  %718 = and i32 %458, 15
  %719 = mul i32 %718, 16
  %720 = add i32 %717, %719
  %721 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %720
  store i32 %716, i32 addrspace(3)* %721, align 4, !tbaa !25
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %458, i32 %459, i32 undef, float %710, float %710, float %710, float %710, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %722

; <label>:722                                     ; preds = %712, %709, %445
  %723 = phi i32 [ %446, %445 ], [ %456, %712 ], [ %456, %709 ]
  %724 = phi i32 [ %447, %445 ], [ %457, %712 ], [ %457, %709 ]
  %725 = phi i32 [ %448, %445 ], [ %458, %712 ], [ %458, %709 ]
  %726 = phi i32 [ %449, %445 ], [ %459, %712 ], [ %459, %709 ]
  %727 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %728 = extractvalue %dx.types.CBufRet.i32 %727, 3
  %729 = icmp ugt i32 %728, 3
  br i1 %729, label %730, label %999, !dx.controlflow.hints !36

; <label>:730                                     ; preds = %722
  %731 = lshr i32 %723, 1
  %732 = lshr i32 %724, 1
  %733 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %731)  ; UMax(a,b)
  %734 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %732)  ; UMax(a,b)
  %735 = lshr i32 %725, 1
  %736 = lshr i32 %726, 1
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %737 = lshr i32 %733, 1
  %738 = lshr i32 %734, 1
  %739 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %737)  ; UMax(a,b)
  %740 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %738)  ; UMax(a,b)
  %741 = icmp ult i32 %735, %739
  %742 = icmp ult i32 %736, %740
  %743 = and i1 %741, %742
  %744 = and i1 %743, %39
  %745 = shl nuw i32 %735, 1
  %746 = shl nuw i32 %736, 1
  br i1 %744, label %747, label %807, !dx.controlflow.hints !30

; <label>:747                                     ; preds = %730
  %748 = or i32 %745, 1
  %749 = or i32 %746, 1
  %750 = add i32 %733, -1
  %751 = add i32 %734, -1
  %752 = call i32 @dx.op.binary.i32(i32 40, i32 %745, i32 %750)  ; UMin(a,b)
  %753 = call i32 @dx.op.binary.i32(i32 40, i32 %746, i32 %751)  ; UMin(a,b)
  %754 = call i32 @dx.op.binary.i32(i32 40, i32 %748, i32 %750)  ; UMin(a,b)
  %755 = call i32 @dx.op.binary.i32(i32 40, i32 %749, i32 %751)  ; UMin(a,b)
  %756 = and i32 %752, 15
  %757 = and i32 %753, 15
  %758 = and i32 %754, 15
  %759 = and i32 %755, 15
  %760 = mul i32 %756, 16
  %761 = add i32 %757, %760
  %762 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %761
  %763 = load i32, i32 addrspace(3)* %762, align 4, !tbaa !25
  %764 = and i32 %763, 65535
  %765 = call float @dx.op.legacyF16ToF32(i32 131, i32 %764)  ; LegacyF16ToF32(value)
  %766 = lshr i32 %763, 16
  %767 = call float @dx.op.legacyF16ToF32(i32 131, i32 %766)  ; LegacyF16ToF32(value)
  %768 = mul i32 %758, 16
  %769 = add i32 %757, %768
  %770 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %769
  %771 = load i32, i32 addrspace(3)* %770, align 4, !tbaa !25
  %772 = and i32 %771, 65535
  %773 = call float @dx.op.legacyF16ToF32(i32 131, i32 %772)  ; LegacyF16ToF32(value)
  %774 = lshr i32 %771, 16
  %775 = call float @dx.op.legacyF16ToF32(i32 131, i32 %774)  ; LegacyF16ToF32(value)
  %776 = mul i32 %756, 16
  %777 = add i32 %759, %776
  %778 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %777
  %779 = load i32, i32 addrspace(3)* %778, align 4, !tbaa !25
  %780 = and i32 %779, 65535
  %781 = call float @dx.op.legacyF16ToF32(i32 131, i32 %780)  ; LegacyF16ToF32(value)
  %782 = lshr i32 %779, 16
  %783 = call float @dx.op.legacyF16ToF32(i32 131, i32 %782)  ; LegacyF16ToF32(value)
  %784 = mul i32 %758, 16
  %785 = add i32 %759, %784
  %786 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %785
  %787 = load i32, i32 addrspace(3)* %786, align 4, !tbaa !25
  %788 = and i32 %787, 65535
  %789 = call float @dx.op.legacyF16ToF32(i32 131, i32 %788)  ; LegacyF16ToF32(value)
  %790 = lshr i32 %787, 16
  %791 = call float @dx.op.legacyF16ToF32(i32 131, i32 %790)  ; LegacyF16ToF32(value)
  %792 = icmp ugt i32 %733, 1
  %793 = and i32 %733, 1
  %794 = icmp ne i32 %793, 0
  %795 = and i1 %792, %794
  %796 = add i32 %733, -3
  %797 = icmp eq i32 %796, %745
  %798 = and i1 %797, %795
  %799 = icmp ugt i32 %734, 1
  %800 = and i32 %734, 1
  %801 = icmp ne i32 %800, 0
  %802 = and i1 %799, %801
  %803 = add i32 %734, -3
  %804 = icmp eq i32 %803, %746
  %805 = and i1 %804, %802
  %806 = zext i1 %805 to i32
  br label %807

; <label>:807                                     ; preds = %747, %730
  %808 = phi float [ %765, %747 ], [ 0.000000e+00, %730 ]
  %809 = phi float [ %773, %747 ], [ 0.000000e+00, %730 ]
  %810 = phi float [ %781, %747 ], [ 0.000000e+00, %730 ]
  %811 = phi float [ %789, %747 ], [ 0.000000e+00, %730 ]
  %812 = phi float [ %767, %747 ], [ 0.000000e+00, %730 ]
  %813 = phi float [ %775, %747 ], [ 0.000000e+00, %730 ]
  %814 = phi float [ %783, %747 ], [ 0.000000e+00, %730 ]
  %815 = phi float [ %791, %747 ], [ 0.000000e+00, %730 ]
  %816 = phi i1 [ %798, %747 ], [ false, %730 ]
  %817 = phi i32 [ %806, %747 ], [ 0, %730 ]
  %818 = fcmp fast ole float %808, -1.000000e+00
  %819 = fcmp fast ole float %809, -1.000000e+00
  %820 = fcmp fast ole float %810, -1.000000e+00
  %821 = fcmp fast ole float %811, -1.000000e+00
  %822 = select i1 %818, float -1.000000e+00, float %808
  %823 = select i1 %819, float -1.000000e+00, float %809
  %824 = select i1 %820, float -1.000000e+00, float %810
  %825 = select i1 %821, float -1.000000e+00, float %811
  %826 = and i1 %818, %819
  %827 = and i1 %826, %820
  %828 = and i1 %827, %821
  %829 = call float @dx.op.binary.f32(i32 36, float %809, float %810)  ; FMin(a,b)
  %830 = call float @dx.op.binary.f32(i32 36, float %808, float %829)  ; FMin(a,b)
  %831 = call float @dx.op.binary.f32(i32 36, float %830, float %811)  ; FMin(a,b)
  %832 = call float @dx.op.binary.f32(i32 35, float %823, float %824)  ; FMax(a,b)
  %833 = call float @dx.op.binary.f32(i32 35, float %822, float %832)  ; FMax(a,b)
  %834 = call float @dx.op.binary.f32(i32 35, float %833, float %825)  ; FMax(a,b)
  %835 = select i1 %828, float %831, float %834
  %836 = fcmp fast ole float %812, -1.000000e+00
  %837 = fcmp fast ole float %813, -1.000000e+00
  %838 = fcmp fast ole float %814, -1.000000e+00
  %839 = fcmp fast ole float %815, -1.000000e+00
  %840 = select i1 %836, float 0x47EFFFFFE0000000, float %812
  %841 = select i1 %837, float 0x47EFFFFFE0000000, float %813
  %842 = select i1 %838, float 0x47EFFFFFE0000000, float %814
  %843 = select i1 %839, float 0x47EFFFFFE0000000, float %815
  %844 = and i1 %836, %837
  %845 = and i1 %844, %838
  %846 = and i1 %845, %839
  %847 = call float @dx.op.binary.f32(i32 35, float %813, float %814)  ; FMax(a,b)
  %848 = call float @dx.op.binary.f32(i32 35, float %812, float %847)  ; FMax(a,b)
  %849 = call float @dx.op.binary.f32(i32 35, float %848, float %815)  ; FMax(a,b)
  %850 = call float @dx.op.binary.f32(i32 36, float %841, float %842)  ; FMin(a,b)
  %851 = call float @dx.op.binary.f32(i32 36, float %840, float %850)  ; FMin(a,b)
  %852 = call float @dx.op.binary.f32(i32 36, float %851, float %843)  ; FMin(a,b)
  %853 = select i1 %846, float %849, float %852
  br i1 %816, label %854, label %901, !dx.controlflow.hints !31

; <label>:854                                     ; preds = %807
  %855 = and i32 %746, 14
  %856 = add i32 %745, 2
  %857 = and i32 %856, 14
  %858 = mul i32 %857, 16
  %859 = add i32 %855, %858
  %860 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %859
  %861 = load i32, i32 addrspace(3)* %860, align 4, !tbaa !25
  %862 = and i32 %861, 65535
  %863 = call float @dx.op.legacyF16ToF32(i32 131, i32 %862)  ; LegacyF16ToF32(value)
  %864 = lshr i32 %861, 16
  %865 = call float @dx.op.legacyF16ToF32(i32 131, i32 %864)  ; LegacyF16ToF32(value)
  %866 = or i32 %855, 1
  %867 = mul i32 %857, 16
  %868 = add i32 %866, %867
  %869 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %868
  %870 = load i32, i32 addrspace(3)* %869, align 4, !tbaa !25
  %871 = and i32 %870, 65535
  %872 = call float @dx.op.legacyF16ToF32(i32 131, i32 %871)  ; LegacyF16ToF32(value)
  %873 = lshr i32 %870, 16
  %874 = call float @dx.op.legacyF16ToF32(i32 131, i32 %873)  ; LegacyF16ToF32(value)
  %875 = fcmp fast ole float %835, -1.000000e+00
  %876 = fcmp fast ole float %863, -1.000000e+00
  %877 = fcmp fast ole float %872, -1.000000e+00
  %878 = select i1 %875, float -1.000000e+00, float %835
  %879 = select i1 %876, float -1.000000e+00, float %863
  %880 = select i1 %877, float -1.000000e+00, float %872
  %881 = and i1 %875, %876
  %882 = and i1 %881, %877
  %883 = call float @dx.op.binary.f32(i32 36, float %863, float %872)  ; FMin(a,b)
  %884 = call float @dx.op.binary.f32(i32 36, float %835, float %883)  ; FMin(a,b)
  %885 = call float @dx.op.binary.f32(i32 35, float %879, float %880)  ; FMax(a,b)
  %886 = call float @dx.op.binary.f32(i32 35, float %878, float %885)  ; FMax(a,b)
  %887 = select i1 %882, float %884, float %886
  %888 = fcmp fast ole float %853, -1.000000e+00
  %889 = fcmp fast ole float %865, -1.000000e+00
  %890 = fcmp fast ole float %874, -1.000000e+00
  %891 = select i1 %888, float 0x47EFFFFFE0000000, float %853
  %892 = select i1 %889, float 0x47EFFFFFE0000000, float %865
  %893 = select i1 %890, float 0x47EFFFFFE0000000, float %874
  %894 = and i1 %888, %889
  %895 = and i1 %894, %890
  %896 = call float @dx.op.binary.f32(i32 35, float %865, float %874)  ; FMax(a,b)
  %897 = call float @dx.op.binary.f32(i32 35, float %853, float %896)  ; FMax(a,b)
  %898 = call float @dx.op.binary.f32(i32 36, float %892, float %893)  ; FMin(a,b)
  %899 = call float @dx.op.binary.f32(i32 36, float %891, float %898)  ; FMin(a,b)
  %900 = select i1 %895, float %897, float %899
  br label %901

; <label>:901                                     ; preds = %854, %807
  %902 = phi float [ %887, %854 ], [ %835, %807 ]
  %903 = phi float [ %900, %854 ], [ %853, %807 ]
  %904 = icmp eq i32 %817, 0
  br i1 %904, label %952, label %905, !dx.controlflow.hints !32

; <label>:905                                     ; preds = %901
  %906 = add i32 %746, 2
  %907 = and i32 %906, 14
  %908 = and i32 %745, 14
  %909 = mul i32 %908, 16
  %910 = add i32 %907, %909
  %911 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %910
  %912 = load i32, i32 addrspace(3)* %911, align 4, !tbaa !25
  %913 = and i32 %912, 65535
  %914 = call float @dx.op.legacyF16ToF32(i32 131, i32 %913)  ; LegacyF16ToF32(value)
  %915 = lshr i32 %912, 16
  %916 = call float @dx.op.legacyF16ToF32(i32 131, i32 %915)  ; LegacyF16ToF32(value)
  %917 = or i32 %908, 1
  %918 = mul i32 %917, 16
  %919 = add i32 %907, %918
  %920 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %919
  %921 = load i32, i32 addrspace(3)* %920, align 4, !tbaa !25
  %922 = and i32 %921, 65535
  %923 = call float @dx.op.legacyF16ToF32(i32 131, i32 %922)  ; LegacyF16ToF32(value)
  %924 = lshr i32 %921, 16
  %925 = call float @dx.op.legacyF16ToF32(i32 131, i32 %924)  ; LegacyF16ToF32(value)
  %926 = fcmp fast ole float %902, -1.000000e+00
  %927 = fcmp fast ole float %914, -1.000000e+00
  %928 = fcmp fast ole float %923, -1.000000e+00
  %929 = select i1 %926, float -1.000000e+00, float %902
  %930 = select i1 %927, float -1.000000e+00, float %914
  %931 = select i1 %928, float -1.000000e+00, float %923
  %932 = and i1 %926, %927
  %933 = and i1 %932, %928
  %934 = call float @dx.op.binary.f32(i32 36, float %914, float %923)  ; FMin(a,b)
  %935 = call float @dx.op.binary.f32(i32 36, float %902, float %934)  ; FMin(a,b)
  %936 = call float @dx.op.binary.f32(i32 35, float %930, float %931)  ; FMax(a,b)
  %937 = call float @dx.op.binary.f32(i32 35, float %929, float %936)  ; FMax(a,b)
  %938 = select i1 %933, float %935, float %937
  %939 = fcmp fast ole float %903, -1.000000e+00
  %940 = fcmp fast ole float %916, -1.000000e+00
  %941 = fcmp fast ole float %925, -1.000000e+00
  %942 = select i1 %939, float 0x47EFFFFFE0000000, float %903
  %943 = select i1 %940, float 0x47EFFFFFE0000000, float %916
  %944 = select i1 %941, float 0x47EFFFFFE0000000, float %925
  %945 = and i1 %939, %940
  %946 = and i1 %945, %941
  %947 = call float @dx.op.binary.f32(i32 35, float %916, float %925)  ; FMax(a,b)
  %948 = call float @dx.op.binary.f32(i32 35, float %903, float %947)  ; FMax(a,b)
  %949 = call float @dx.op.binary.f32(i32 36, float %943, float %944)  ; FMin(a,b)
  %950 = call float @dx.op.binary.f32(i32 36, float %942, float %949)  ; FMin(a,b)
  %951 = select i1 %946, float %948, float %950
  br label %952

; <label>:952                                     ; preds = %905, %901
  %953 = phi float [ %938, %905 ], [ %902, %901 ]
  %954 = phi float [ %951, %905 ], [ %903, %901 ]
  %955 = icmp ne i32 %817, 0
  %956 = and i1 %816, %955
  br i1 %956, label %957, label %986, !dx.controlflow.hints !33

; <label>:957                                     ; preds = %952
  %958 = add i32 %746, 2
  %959 = and i32 %958, 14
  %960 = add i32 %745, 2
  %961 = and i32 %960, 14
  %962 = mul i32 %961, 16
  %963 = add i32 %959, %962
  %964 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %963
  %965 = load i32, i32 addrspace(3)* %964, align 4, !tbaa !25
  %966 = and i32 %965, 65535
  %967 = call float @dx.op.legacyF16ToF32(i32 131, i32 %966)  ; LegacyF16ToF32(value)
  %968 = lshr i32 %965, 16
  %969 = call float @dx.op.legacyF16ToF32(i32 131, i32 %968)  ; LegacyF16ToF32(value)
  %970 = fcmp fast ole float %953, -1.000000e+00
  %971 = fcmp fast ole float %967, -1.000000e+00
  %972 = select i1 %970, float -1.000000e+00, float %953
  %973 = select i1 %971, float -1.000000e+00, float %967
  %974 = and i1 %970, %971
  %975 = call float @dx.op.binary.f32(i32 36, float %953, float %967)  ; FMin(a,b)
  %976 = call float @dx.op.binary.f32(i32 35, float %972, float %973)  ; FMax(a,b)
  %977 = select i1 %974, float %975, float %976
  %978 = fcmp fast ole float %954, -1.000000e+00
  %979 = fcmp fast ole float %969, -1.000000e+00
  %980 = select i1 %978, float 0x47EFFFFFE0000000, float %954
  %981 = select i1 %979, float 0x47EFFFFFE0000000, float %969
  %982 = and i1 %978, %979
  %983 = call float @dx.op.binary.f32(i32 35, float %954, float %969)  ; FMax(a,b)
  %984 = call float @dx.op.binary.f32(i32 36, float %980, float %981)  ; FMin(a,b)
  %985 = select i1 %982, float %983, float %984
  br label %986

; <label>:986                                     ; preds = %957, %952
  %987 = phi float [ %977, %957 ], [ %953, %952 ]
  %988 = phi float [ %985, %957 ], [ %954, %952 ]
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %744, label %989, label %999, !dx.controlflow.hints !34

; <label>:989                                     ; preds = %986
  %990 = call i32 @dx.op.legacyF32ToF16(i32 130, float %987)  ; LegacyF32ToF16(value)
  %991 = call i32 @dx.op.legacyF32ToF16(i32 130, float %988)  ; LegacyF32ToF16(value)
  %992 = shl i32 %991, 16
  %993 = or i32 %992, %990
  %994 = and i32 %736, 15
  %995 = and i32 %735, 15
  %996 = mul i32 %995, 16
  %997 = add i32 %994, %996
  %998 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %997
  store i32 %993, i32 addrspace(3)* %998, align 4, !tbaa !25
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %735, i32 %736, i32 undef, float %987, float %987, float %987, float %987, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %999

; <label>:999                                     ; preds = %989, %986, %722
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
!dx.entryPoints = !{!17}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !8, !13, !15}
!5 = !{!6}
!6 = !{i32 0, %"class.Texture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{!9, !10, !11, !12}
!9 = !{i32 0, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!10 = !{i32 1, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!11 = !{i32 2, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!12 = !{i32 3, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 3, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!13 = !{!14}
!14 = !{i32 0, %FloatZDownsampleConsts* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!15 = !{!16}
!16 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!17 = !{void ()* @cs_floatz_downsample_border_maxonly, !"cs_floatz_downsample_border_maxonly", null, !4, !18}
!18 = !{i32 0, i64 256, i32 4, !19}
!19 = !{i32 16, i32 16, i32 1}
!20 = distinct !{!20, !"dx.controlflow.hints", i32 2}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = !{!26, !26, i64 0}
!26 = !{!"int", !27, i64 0}
!27 = !{!"omnipotent char", !28, i64 0}
!28 = !{!"Simple C/C++ TBAA"}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}

