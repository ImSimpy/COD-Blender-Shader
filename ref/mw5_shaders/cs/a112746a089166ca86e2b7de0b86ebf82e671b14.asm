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
; shader hash: 0cee0af22a55d53fecfe5c61aa64dd67
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
;                                       UAV     f32          2d      U0             u8     1
;                                       UAV     f32          2d      U1             u0     1
;                                       UAV     f32          2d      U2             u1     1
;                                       UAV     f32          2d      U3             u2     1
;                                       UAV     f32          2d      U4             u3     1
;                                       UAV     f32          2d      U5             u7     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.RWTexture2D<float>" = type { float }
%FloatZDownsampleConsts = type { <4 x float>, i32, i32, i32, i32 }

@"\01?floatZValues@@3PAY0BA@$$CAIA.1dim" = addrspace(3) global [256 x i32] undef, align 4

define void @cs_floatz_downsample_border_last_min_only() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 5, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
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
  br i1 %47, label %50, label %73, !dx.controlflow.hints !18

; <label>:50                                      ; preds = %0
  %51 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 undef, i32 %48, i32 %49, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %52 = extractvalue %dx.types.ResRet.f32 %51, 0
  %53 = or i32 %49, 1
  %54 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 undef, i32 %48, i32 %53, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %55 = extractvalue %dx.types.ResRet.f32 %54, 0
  %56 = or i32 %48, 1
  %57 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 undef, i32 %56, i32 %49, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %58 = extractvalue %dx.types.ResRet.f32 %57, 0
  %59 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 undef, i32 %56, i32 %53, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %60 = extractvalue %dx.types.ResRet.f32 %59, 0
  %61 = and i32 %26, 1
  %62 = icmp ne i32 %61, 0
  %63 = add i32 %26, -3
  %64 = icmp eq i32 %63, %48
  %65 = and i1 %62, %64
  %66 = zext i1 %65 to i32
  %67 = and i32 %27, 1
  %68 = icmp ne i32 %67, 0
  %69 = add i32 %27, -3
  %70 = icmp eq i32 %69, %49
  %71 = and i1 %68, %70
  %72 = zext i1 %71 to i32
  br label %73

; <label>:73                                      ; preds = %50, %0
  %74 = phi float [ %52, %50 ], [ 0.000000e+00, %0 ]
  %75 = phi float [ %55, %50 ], [ 0.000000e+00, %0 ]
  %76 = phi float [ %58, %50 ], [ 0.000000e+00, %0 ]
  %77 = phi float [ %60, %50 ], [ 0.000000e+00, %0 ]
  %78 = phi i32 [ %66, %50 ], [ 0, %0 ]
  %79 = phi i32 [ %72, %50 ], [ 0, %0 ]
  %80 = fcmp fast ole float %74, -1.000000e+00
  %81 = fcmp fast ole float %75, -1.000000e+00
  %82 = fcmp fast ole float %76, -1.000000e+00
  %83 = fcmp fast ole float %77, -1.000000e+00
  %84 = select i1 %80, float -1.000000e+00, float %74
  %85 = select i1 %81, float -1.000000e+00, float %75
  %86 = select i1 %82, float -1.000000e+00, float %76
  %87 = select i1 %83, float -1.000000e+00, float %77
  %88 = and i1 %80, %81
  %89 = and i1 %88, %82
  %90 = and i1 %89, %83
  %91 = call float @dx.op.binary.f32(i32 36, float %75, float %76)  ; FMin(a,b)
  %92 = call float @dx.op.binary.f32(i32 36, float %74, float %91)  ; FMin(a,b)
  %93 = call float @dx.op.binary.f32(i32 36, float %92, float %77)  ; FMin(a,b)
  %94 = call float @dx.op.binary.f32(i32 35, float %85, float %86)  ; FMax(a,b)
  %95 = call float @dx.op.binary.f32(i32 35, float %84, float %94)  ; FMax(a,b)
  %96 = call float @dx.op.binary.f32(i32 35, float %95, float %87)  ; FMax(a,b)
  %97 = select i1 %90, float %93, float %96
  %98 = icmp eq i32 %78, 0
  br i1 %98, label %119, label %99, !dx.controlflow.hints !19

; <label>:99                                      ; preds = %73
  %100 = add i32 %48, 2
  %101 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 undef, i32 %100, i32 %49, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %102 = extractvalue %dx.types.ResRet.f32 %101, 0
  %103 = or i32 %49, 1
  %104 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 undef, i32 %100, i32 %103, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %105 = extractvalue %dx.types.ResRet.f32 %104, 0
  %106 = fcmp fast ole float %97, -1.000000e+00
  %107 = fcmp fast ole float %102, -1.000000e+00
  %108 = fcmp fast ole float %105, -1.000000e+00
  %109 = select i1 %106, float -1.000000e+00, float %97
  %110 = select i1 %107, float -1.000000e+00, float %102
  %111 = select i1 %108, float -1.000000e+00, float %105
  %112 = and i1 %106, %107
  %113 = and i1 %112, %108
  %114 = call float @dx.op.binary.f32(i32 36, float %102, float %105)  ; FMin(a,b)
  %115 = call float @dx.op.binary.f32(i32 36, float %97, float %114)  ; FMin(a,b)
  %116 = call float @dx.op.binary.f32(i32 35, float %110, float %111)  ; FMax(a,b)
  %117 = call float @dx.op.binary.f32(i32 35, float %109, float %116)  ; FMax(a,b)
  %118 = select i1 %113, float %115, float %117
  br label %119

; <label>:119                                     ; preds = %99, %73
  %120 = phi float [ %118, %99 ], [ %97, %73 ]
  %121 = icmp eq i32 %79, 0
  br i1 %121, label %142, label %122, !dx.controlflow.hints !20

; <label>:122                                     ; preds = %119
  %123 = add i32 %49, 2
  %124 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 undef, i32 %48, i32 %123, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %125 = extractvalue %dx.types.ResRet.f32 %124, 0
  %126 = or i32 %48, 1
  %127 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 undef, i32 %126, i32 %123, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %128 = extractvalue %dx.types.ResRet.f32 %127, 0
  %129 = fcmp fast ole float %120, -1.000000e+00
  %130 = fcmp fast ole float %125, -1.000000e+00
  %131 = fcmp fast ole float %128, -1.000000e+00
  %132 = select i1 %129, float -1.000000e+00, float %120
  %133 = select i1 %130, float -1.000000e+00, float %125
  %134 = select i1 %131, float -1.000000e+00, float %128
  %135 = and i1 %129, %130
  %136 = and i1 %135, %131
  %137 = call float @dx.op.binary.f32(i32 36, float %125, float %128)  ; FMin(a,b)
  %138 = call float @dx.op.binary.f32(i32 36, float %120, float %137)  ; FMin(a,b)
  %139 = call float @dx.op.binary.f32(i32 35, float %133, float %134)  ; FMax(a,b)
  %140 = call float @dx.op.binary.f32(i32 35, float %132, float %139)  ; FMax(a,b)
  %141 = select i1 %136, float %138, float %140
  br label %142

; <label>:142                                     ; preds = %122, %119
  %143 = phi float [ %141, %122 ], [ %120, %119 ]
  %144 = icmp ne i32 %78, 0
  %145 = icmp ne i32 %79, 0
  %146 = and i1 %144, %145
  br i1 %146, label %147, label %160, !dx.controlflow.hints !21

; <label>:147                                     ; preds = %142
  %148 = add i32 %48, 2
  %149 = add i32 %49, 2
  %150 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 undef, i32 %148, i32 %149, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %151 = extractvalue %dx.types.ResRet.f32 %150, 0
  %152 = fcmp fast ole float %143, -1.000000e+00
  %153 = fcmp fast ole float %151, -1.000000e+00
  %154 = select i1 %152, float -1.000000e+00, float %143
  %155 = select i1 %153, float -1.000000e+00, float %151
  %156 = and i1 %152, %153
  %157 = call float @dx.op.binary.f32(i32 36, float %143, float %151)  ; FMin(a,b)
  %158 = call float @dx.op.binary.f32(i32 35, float %154, float %155)  ; FMax(a,b)
  %159 = select i1 %156, float %157, float %158
  br label %160

; <label>:160                                     ; preds = %147, %142
  %161 = phi float [ %159, %147 ], [ %143, %142 ]
  br i1 %47, label %162, label %172, !dx.controlflow.hints !22

; <label>:162                                     ; preds = %160
  %163 = call i32 @dx.op.legacyF32ToF16(i32 130, float %161)  ; LegacyF32ToF16(value)
  %164 = call i32 @dx.op.legacyF32ToF16(i32 130, float 0.000000e+00)  ; LegacyF32ToF16(value)
  %165 = shl i32 %164, 16
  %166 = or i32 %165, %163
  %167 = and i32 %22, 15
  %168 = and i32 %21, 15
  %169 = mul i32 %168, 16
  %170 = add i32 %167, %169
  %171 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %170
  store i32 %166, i32 addrspace(3)* %171, align 4, !tbaa !23
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %5, i32 %21, i32 %22, i32 undef, float %161, float %161, float %161, float %161, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %172

; <label>:172                                     ; preds = %162, %160
  %173 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %174 = extractvalue %dx.types.CBufRet.i32 %173, 3
  %175 = icmp ugt i32 %174, 1
  br i1 %175, label %176, label %441, !dx.controlflow.hints !27

; <label>:176                                     ; preds = %172
  %177 = lshr i32 %21, 1
  %178 = lshr i32 %22, 1
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %179 = lshr i32 %42, 1
  %180 = lshr i32 %43, 1
  %181 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %179)  ; UMax(a,b)
  %182 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %180)  ; UMax(a,b)
  %183 = icmp ult i32 %177, %181
  %184 = icmp ult i32 %178, %182
  %185 = and i1 %183, %184
  %186 = and i1 %185, %39
  %187 = shl nuw i32 %177, 1
  %188 = shl nuw i32 %178, 1
  br i1 %186, label %189, label %249, !dx.controlflow.hints !28

; <label>:189                                     ; preds = %176
  %190 = or i32 %187, 1
  %191 = or i32 %188, 1
  %192 = add i32 %42, -1
  %193 = add i32 %43, -1
  %194 = call i32 @dx.op.binary.i32(i32 40, i32 %187, i32 %192)  ; UMin(a,b)
  %195 = call i32 @dx.op.binary.i32(i32 40, i32 %188, i32 %193)  ; UMin(a,b)
  %196 = call i32 @dx.op.binary.i32(i32 40, i32 %190, i32 %192)  ; UMin(a,b)
  %197 = call i32 @dx.op.binary.i32(i32 40, i32 %191, i32 %193)  ; UMin(a,b)
  %198 = and i32 %194, 15
  %199 = and i32 %195, 15
  %200 = and i32 %196, 15
  %201 = and i32 %197, 15
  %202 = mul i32 %198, 16
  %203 = add i32 %199, %202
  %204 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %203
  %205 = load i32, i32 addrspace(3)* %204, align 4, !tbaa !23
  %206 = and i32 %205, 65535
  %207 = call float @dx.op.legacyF16ToF32(i32 131, i32 %206)  ; LegacyF16ToF32(value)
  %208 = lshr i32 %205, 16
  %209 = call float @dx.op.legacyF16ToF32(i32 131, i32 %208)  ; LegacyF16ToF32(value)
  %210 = mul i32 %200, 16
  %211 = add i32 %199, %210
  %212 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %211
  %213 = load i32, i32 addrspace(3)* %212, align 4, !tbaa !23
  %214 = and i32 %213, 65535
  %215 = call float @dx.op.legacyF16ToF32(i32 131, i32 %214)  ; LegacyF16ToF32(value)
  %216 = lshr i32 %213, 16
  %217 = call float @dx.op.legacyF16ToF32(i32 131, i32 %216)  ; LegacyF16ToF32(value)
  %218 = mul i32 %198, 16
  %219 = add i32 %201, %218
  %220 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %219
  %221 = load i32, i32 addrspace(3)* %220, align 4, !tbaa !23
  %222 = and i32 %221, 65535
  %223 = call float @dx.op.legacyF16ToF32(i32 131, i32 %222)  ; LegacyF16ToF32(value)
  %224 = lshr i32 %221, 16
  %225 = call float @dx.op.legacyF16ToF32(i32 131, i32 %224)  ; LegacyF16ToF32(value)
  %226 = mul i32 %200, 16
  %227 = add i32 %201, %226
  %228 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %227
  %229 = load i32, i32 addrspace(3)* %228, align 4, !tbaa !23
  %230 = and i32 %229, 65535
  %231 = call float @dx.op.legacyF16ToF32(i32 131, i32 %230)  ; LegacyF16ToF32(value)
  %232 = lshr i32 %229, 16
  %233 = call float @dx.op.legacyF16ToF32(i32 131, i32 %232)  ; LegacyF16ToF32(value)
  %234 = icmp ugt i32 %42, 1
  %235 = and i32 %42, 1
  %236 = icmp ne i32 %235, 0
  %237 = and i1 %234, %236
  %238 = add i32 %42, -3
  %239 = icmp eq i32 %238, %187
  %240 = and i1 %239, %237
  %241 = icmp ugt i32 %43, 1
  %242 = and i32 %43, 1
  %243 = icmp ne i32 %242, 0
  %244 = and i1 %241, %243
  %245 = add i32 %43, -3
  %246 = icmp eq i32 %245, %188
  %247 = and i1 %246, %244
  %248 = zext i1 %247 to i32
  br label %249

; <label>:249                                     ; preds = %189, %176
  %250 = phi float [ %207, %189 ], [ 0.000000e+00, %176 ]
  %251 = phi float [ %215, %189 ], [ 0.000000e+00, %176 ]
  %252 = phi float [ %223, %189 ], [ 0.000000e+00, %176 ]
  %253 = phi float [ %231, %189 ], [ 0.000000e+00, %176 ]
  %254 = phi float [ %209, %189 ], [ 0.000000e+00, %176 ]
  %255 = phi float [ %217, %189 ], [ 0.000000e+00, %176 ]
  %256 = phi float [ %225, %189 ], [ 0.000000e+00, %176 ]
  %257 = phi float [ %233, %189 ], [ 0.000000e+00, %176 ]
  %258 = phi i1 [ %240, %189 ], [ false, %176 ]
  %259 = phi i32 [ %248, %189 ], [ 0, %176 ]
  %260 = fcmp fast ole float %250, -1.000000e+00
  %261 = fcmp fast ole float %251, -1.000000e+00
  %262 = fcmp fast ole float %252, -1.000000e+00
  %263 = fcmp fast ole float %253, -1.000000e+00
  %264 = select i1 %260, float -1.000000e+00, float %250
  %265 = select i1 %261, float -1.000000e+00, float %251
  %266 = select i1 %262, float -1.000000e+00, float %252
  %267 = select i1 %263, float -1.000000e+00, float %253
  %268 = and i1 %260, %261
  %269 = and i1 %268, %262
  %270 = and i1 %269, %263
  %271 = call float @dx.op.binary.f32(i32 36, float %251, float %252)  ; FMin(a,b)
  %272 = call float @dx.op.binary.f32(i32 36, float %250, float %271)  ; FMin(a,b)
  %273 = call float @dx.op.binary.f32(i32 36, float %272, float %253)  ; FMin(a,b)
  %274 = call float @dx.op.binary.f32(i32 35, float %265, float %266)  ; FMax(a,b)
  %275 = call float @dx.op.binary.f32(i32 35, float %264, float %274)  ; FMax(a,b)
  %276 = call float @dx.op.binary.f32(i32 35, float %275, float %267)  ; FMax(a,b)
  %277 = select i1 %270, float %273, float %276
  %278 = fcmp fast ole float %254, -1.000000e+00
  %279 = fcmp fast ole float %255, -1.000000e+00
  %280 = fcmp fast ole float %256, -1.000000e+00
  %281 = fcmp fast ole float %257, -1.000000e+00
  %282 = select i1 %278, float 0x47EFFFFFE0000000, float %254
  %283 = select i1 %279, float 0x47EFFFFFE0000000, float %255
  %284 = select i1 %280, float 0x47EFFFFFE0000000, float %256
  %285 = select i1 %281, float 0x47EFFFFFE0000000, float %257
  %286 = and i1 %278, %279
  %287 = and i1 %286, %280
  %288 = and i1 %287, %281
  %289 = call float @dx.op.binary.f32(i32 35, float %255, float %256)  ; FMax(a,b)
  %290 = call float @dx.op.binary.f32(i32 35, float %254, float %289)  ; FMax(a,b)
  %291 = call float @dx.op.binary.f32(i32 35, float %290, float %257)  ; FMax(a,b)
  %292 = call float @dx.op.binary.f32(i32 36, float %283, float %284)  ; FMin(a,b)
  %293 = call float @dx.op.binary.f32(i32 36, float %282, float %292)  ; FMin(a,b)
  %294 = call float @dx.op.binary.f32(i32 36, float %293, float %285)  ; FMin(a,b)
  %295 = select i1 %288, float %291, float %294
  br i1 %258, label %296, label %343, !dx.controlflow.hints !29

; <label>:296                                     ; preds = %249
  %297 = and i32 %188, 14
  %298 = add i32 %187, 2
  %299 = and i32 %298, 14
  %300 = mul i32 %299, 16
  %301 = add i32 %297, %300
  %302 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %301
  %303 = load i32, i32 addrspace(3)* %302, align 4, !tbaa !23
  %304 = and i32 %303, 65535
  %305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %304)  ; LegacyF16ToF32(value)
  %306 = lshr i32 %303, 16
  %307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %306)  ; LegacyF16ToF32(value)
  %308 = or i32 %297, 1
  %309 = mul i32 %299, 16
  %310 = add i32 %308, %309
  %311 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %310
  %312 = load i32, i32 addrspace(3)* %311, align 4, !tbaa !23
  %313 = and i32 %312, 65535
  %314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %313)  ; LegacyF16ToF32(value)
  %315 = lshr i32 %312, 16
  %316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %315)  ; LegacyF16ToF32(value)
  %317 = fcmp fast ole float %277, -1.000000e+00
  %318 = fcmp fast ole float %305, -1.000000e+00
  %319 = fcmp fast ole float %314, -1.000000e+00
  %320 = select i1 %317, float -1.000000e+00, float %277
  %321 = select i1 %318, float -1.000000e+00, float %305
  %322 = select i1 %319, float -1.000000e+00, float %314
  %323 = and i1 %317, %318
  %324 = and i1 %323, %319
  %325 = call float @dx.op.binary.f32(i32 36, float %305, float %314)  ; FMin(a,b)
  %326 = call float @dx.op.binary.f32(i32 36, float %277, float %325)  ; FMin(a,b)
  %327 = call float @dx.op.binary.f32(i32 35, float %321, float %322)  ; FMax(a,b)
  %328 = call float @dx.op.binary.f32(i32 35, float %320, float %327)  ; FMax(a,b)
  %329 = select i1 %324, float %326, float %328
  %330 = fcmp fast ole float %295, -1.000000e+00
  %331 = fcmp fast ole float %307, -1.000000e+00
  %332 = fcmp fast ole float %316, -1.000000e+00
  %333 = select i1 %330, float 0x47EFFFFFE0000000, float %295
  %334 = select i1 %331, float 0x47EFFFFFE0000000, float %307
  %335 = select i1 %332, float 0x47EFFFFFE0000000, float %316
  %336 = and i1 %330, %331
  %337 = and i1 %336, %332
  %338 = call float @dx.op.binary.f32(i32 35, float %307, float %316)  ; FMax(a,b)
  %339 = call float @dx.op.binary.f32(i32 35, float %295, float %338)  ; FMax(a,b)
  %340 = call float @dx.op.binary.f32(i32 36, float %334, float %335)  ; FMin(a,b)
  %341 = call float @dx.op.binary.f32(i32 36, float %333, float %340)  ; FMin(a,b)
  %342 = select i1 %337, float %339, float %341
  br label %343

; <label>:343                                     ; preds = %296, %249
  %344 = phi float [ %329, %296 ], [ %277, %249 ]
  %345 = phi float [ %342, %296 ], [ %295, %249 ]
  %346 = icmp eq i32 %259, 0
  br i1 %346, label %394, label %347, !dx.controlflow.hints !30

; <label>:347                                     ; preds = %343
  %348 = add i32 %188, 2
  %349 = and i32 %348, 14
  %350 = and i32 %187, 14
  %351 = mul i32 %350, 16
  %352 = add i32 %349, %351
  %353 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %352
  %354 = load i32, i32 addrspace(3)* %353, align 4, !tbaa !23
  %355 = and i32 %354, 65535
  %356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %355)  ; LegacyF16ToF32(value)
  %357 = lshr i32 %354, 16
  %358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %357)  ; LegacyF16ToF32(value)
  %359 = or i32 %350, 1
  %360 = mul i32 %359, 16
  %361 = add i32 %349, %360
  %362 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %361
  %363 = load i32, i32 addrspace(3)* %362, align 4, !tbaa !23
  %364 = and i32 %363, 65535
  %365 = call float @dx.op.legacyF16ToF32(i32 131, i32 %364)  ; LegacyF16ToF32(value)
  %366 = lshr i32 %363, 16
  %367 = call float @dx.op.legacyF16ToF32(i32 131, i32 %366)  ; LegacyF16ToF32(value)
  %368 = fcmp fast ole float %344, -1.000000e+00
  %369 = fcmp fast ole float %356, -1.000000e+00
  %370 = fcmp fast ole float %365, -1.000000e+00
  %371 = select i1 %368, float -1.000000e+00, float %344
  %372 = select i1 %369, float -1.000000e+00, float %356
  %373 = select i1 %370, float -1.000000e+00, float %365
  %374 = and i1 %368, %369
  %375 = and i1 %374, %370
  %376 = call float @dx.op.binary.f32(i32 36, float %356, float %365)  ; FMin(a,b)
  %377 = call float @dx.op.binary.f32(i32 36, float %344, float %376)  ; FMin(a,b)
  %378 = call float @dx.op.binary.f32(i32 35, float %372, float %373)  ; FMax(a,b)
  %379 = call float @dx.op.binary.f32(i32 35, float %371, float %378)  ; FMax(a,b)
  %380 = select i1 %375, float %377, float %379
  %381 = fcmp fast ole float %345, -1.000000e+00
  %382 = fcmp fast ole float %358, -1.000000e+00
  %383 = fcmp fast ole float %367, -1.000000e+00
  %384 = select i1 %381, float 0x47EFFFFFE0000000, float %345
  %385 = select i1 %382, float 0x47EFFFFFE0000000, float %358
  %386 = select i1 %383, float 0x47EFFFFFE0000000, float %367
  %387 = and i1 %381, %382
  %388 = and i1 %387, %383
  %389 = call float @dx.op.binary.f32(i32 35, float %358, float %367)  ; FMax(a,b)
  %390 = call float @dx.op.binary.f32(i32 35, float %345, float %389)  ; FMax(a,b)
  %391 = call float @dx.op.binary.f32(i32 36, float %385, float %386)  ; FMin(a,b)
  %392 = call float @dx.op.binary.f32(i32 36, float %384, float %391)  ; FMin(a,b)
  %393 = select i1 %388, float %390, float %392
  br label %394

; <label>:394                                     ; preds = %347, %343
  %395 = phi float [ %380, %347 ], [ %344, %343 ]
  %396 = phi float [ %393, %347 ], [ %345, %343 ]
  %397 = icmp ne i32 %259, 0
  %398 = and i1 %258, %397
  br i1 %398, label %399, label %428, !dx.controlflow.hints !31

; <label>:399                                     ; preds = %394
  %400 = add i32 %188, 2
  %401 = and i32 %400, 14
  %402 = add i32 %187, 2
  %403 = and i32 %402, 14
  %404 = mul i32 %403, 16
  %405 = add i32 %401, %404
  %406 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %405
  %407 = load i32, i32 addrspace(3)* %406, align 4, !tbaa !23
  %408 = and i32 %407, 65535
  %409 = call float @dx.op.legacyF16ToF32(i32 131, i32 %408)  ; LegacyF16ToF32(value)
  %410 = lshr i32 %407, 16
  %411 = call float @dx.op.legacyF16ToF32(i32 131, i32 %410)  ; LegacyF16ToF32(value)
  %412 = fcmp fast ole float %395, -1.000000e+00
  %413 = fcmp fast ole float %409, -1.000000e+00
  %414 = select i1 %412, float -1.000000e+00, float %395
  %415 = select i1 %413, float -1.000000e+00, float %409
  %416 = and i1 %412, %413
  %417 = call float @dx.op.binary.f32(i32 36, float %395, float %409)  ; FMin(a,b)
  %418 = call float @dx.op.binary.f32(i32 35, float %414, float %415)  ; FMax(a,b)
  %419 = select i1 %416, float %417, float %418
  %420 = fcmp fast ole float %396, -1.000000e+00
  %421 = fcmp fast ole float %411, -1.000000e+00
  %422 = select i1 %420, float 0x47EFFFFFE0000000, float %396
  %423 = select i1 %421, float 0x47EFFFFFE0000000, float %411
  %424 = and i1 %420, %421
  %425 = call float @dx.op.binary.f32(i32 35, float %396, float %411)  ; FMax(a,b)
  %426 = call float @dx.op.binary.f32(i32 36, float %422, float %423)  ; FMin(a,b)
  %427 = select i1 %424, float %425, float %426
  br label %428

; <label>:428                                     ; preds = %399, %394
  %429 = phi float [ %419, %399 ], [ %395, %394 ]
  %430 = phi float [ %427, %399 ], [ %396, %394 ]
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %186, label %431, label %441, !dx.controlflow.hints !32

; <label>:431                                     ; preds = %428
  %432 = call i32 @dx.op.legacyF32ToF16(i32 130, float %429)  ; LegacyF32ToF16(value)
  %433 = call i32 @dx.op.legacyF32ToF16(i32 130, float %430)  ; LegacyF32ToF16(value)
  %434 = shl i32 %433, 16
  %435 = or i32 %434, %432
  %436 = and i32 %178, 15
  %437 = and i32 %177, 15
  %438 = mul i32 %437, 16
  %439 = add i32 %436, %438
  %440 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %439
  store i32 %435, i32 addrspace(3)* %440, align 4, !tbaa !23
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %177, i32 %178, i32 undef, float %429, float %429, float %429, float %429, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %441

; <label>:441                                     ; preds = %431, %428, %172
  %442 = phi i32 [ %26, %172 ], [ %42, %431 ], [ %42, %428 ]
  %443 = phi i32 [ %27, %172 ], [ %43, %431 ], [ %43, %428 ]
  %444 = phi i32 [ %21, %172 ], [ %177, %431 ], [ %177, %428 ]
  %445 = phi i32 [ %22, %172 ], [ %178, %431 ], [ %178, %428 ]
  %446 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %447 = extractvalue %dx.types.CBufRet.i32 %446, 3
  %448 = icmp ugt i32 %447, 2
  br i1 %448, label %449, label %718, !dx.controlflow.hints !33

; <label>:449                                     ; preds = %441
  %450 = lshr i32 %442, 1
  %451 = lshr i32 %443, 1
  %452 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %450)  ; UMax(a,b)
  %453 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %451)  ; UMax(a,b)
  %454 = lshr i32 %444, 1
  %455 = lshr i32 %445, 1
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %456 = lshr i32 %452, 1
  %457 = lshr i32 %453, 1
  %458 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %456)  ; UMax(a,b)
  %459 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %457)  ; UMax(a,b)
  %460 = icmp ult i32 %454, %458
  %461 = icmp ult i32 %455, %459
  %462 = and i1 %460, %461
  %463 = and i1 %462, %39
  %464 = shl nuw i32 %454, 1
  %465 = shl nuw i32 %455, 1
  br i1 %463, label %466, label %526, !dx.controlflow.hints !28

; <label>:466                                     ; preds = %449
  %467 = or i32 %464, 1
  %468 = or i32 %465, 1
  %469 = add i32 %452, -1
  %470 = add i32 %453, -1
  %471 = call i32 @dx.op.binary.i32(i32 40, i32 %464, i32 %469)  ; UMin(a,b)
  %472 = call i32 @dx.op.binary.i32(i32 40, i32 %465, i32 %470)  ; UMin(a,b)
  %473 = call i32 @dx.op.binary.i32(i32 40, i32 %467, i32 %469)  ; UMin(a,b)
  %474 = call i32 @dx.op.binary.i32(i32 40, i32 %468, i32 %470)  ; UMin(a,b)
  %475 = and i32 %471, 15
  %476 = and i32 %472, 15
  %477 = and i32 %473, 15
  %478 = and i32 %474, 15
  %479 = mul i32 %475, 16
  %480 = add i32 %476, %479
  %481 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %480
  %482 = load i32, i32 addrspace(3)* %481, align 4, !tbaa !23
  %483 = and i32 %482, 65535
  %484 = call float @dx.op.legacyF16ToF32(i32 131, i32 %483)  ; LegacyF16ToF32(value)
  %485 = lshr i32 %482, 16
  %486 = call float @dx.op.legacyF16ToF32(i32 131, i32 %485)  ; LegacyF16ToF32(value)
  %487 = mul i32 %477, 16
  %488 = add i32 %476, %487
  %489 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %488
  %490 = load i32, i32 addrspace(3)* %489, align 4, !tbaa !23
  %491 = and i32 %490, 65535
  %492 = call float @dx.op.legacyF16ToF32(i32 131, i32 %491)  ; LegacyF16ToF32(value)
  %493 = lshr i32 %490, 16
  %494 = call float @dx.op.legacyF16ToF32(i32 131, i32 %493)  ; LegacyF16ToF32(value)
  %495 = mul i32 %475, 16
  %496 = add i32 %478, %495
  %497 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %496
  %498 = load i32, i32 addrspace(3)* %497, align 4, !tbaa !23
  %499 = and i32 %498, 65535
  %500 = call float @dx.op.legacyF16ToF32(i32 131, i32 %499)  ; LegacyF16ToF32(value)
  %501 = lshr i32 %498, 16
  %502 = call float @dx.op.legacyF16ToF32(i32 131, i32 %501)  ; LegacyF16ToF32(value)
  %503 = mul i32 %477, 16
  %504 = add i32 %478, %503
  %505 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %504
  %506 = load i32, i32 addrspace(3)* %505, align 4, !tbaa !23
  %507 = and i32 %506, 65535
  %508 = call float @dx.op.legacyF16ToF32(i32 131, i32 %507)  ; LegacyF16ToF32(value)
  %509 = lshr i32 %506, 16
  %510 = call float @dx.op.legacyF16ToF32(i32 131, i32 %509)  ; LegacyF16ToF32(value)
  %511 = icmp ugt i32 %452, 1
  %512 = and i32 %452, 1
  %513 = icmp ne i32 %512, 0
  %514 = and i1 %511, %513
  %515 = add i32 %452, -3
  %516 = icmp eq i32 %515, %464
  %517 = and i1 %516, %514
  %518 = icmp ugt i32 %453, 1
  %519 = and i32 %453, 1
  %520 = icmp ne i32 %519, 0
  %521 = and i1 %518, %520
  %522 = add i32 %453, -3
  %523 = icmp eq i32 %522, %465
  %524 = and i1 %523, %521
  %525 = zext i1 %524 to i32
  br label %526

; <label>:526                                     ; preds = %466, %449
  %527 = phi float [ %484, %466 ], [ 0.000000e+00, %449 ]
  %528 = phi float [ %492, %466 ], [ 0.000000e+00, %449 ]
  %529 = phi float [ %500, %466 ], [ 0.000000e+00, %449 ]
  %530 = phi float [ %508, %466 ], [ 0.000000e+00, %449 ]
  %531 = phi float [ %486, %466 ], [ 0.000000e+00, %449 ]
  %532 = phi float [ %494, %466 ], [ 0.000000e+00, %449 ]
  %533 = phi float [ %502, %466 ], [ 0.000000e+00, %449 ]
  %534 = phi float [ %510, %466 ], [ 0.000000e+00, %449 ]
  %535 = phi i1 [ %517, %466 ], [ false, %449 ]
  %536 = phi i32 [ %525, %466 ], [ 0, %449 ]
  %537 = fcmp fast ole float %527, -1.000000e+00
  %538 = fcmp fast ole float %528, -1.000000e+00
  %539 = fcmp fast ole float %529, -1.000000e+00
  %540 = fcmp fast ole float %530, -1.000000e+00
  %541 = select i1 %537, float -1.000000e+00, float %527
  %542 = select i1 %538, float -1.000000e+00, float %528
  %543 = select i1 %539, float -1.000000e+00, float %529
  %544 = select i1 %540, float -1.000000e+00, float %530
  %545 = and i1 %537, %538
  %546 = and i1 %545, %539
  %547 = and i1 %546, %540
  %548 = call float @dx.op.binary.f32(i32 36, float %528, float %529)  ; FMin(a,b)
  %549 = call float @dx.op.binary.f32(i32 36, float %527, float %548)  ; FMin(a,b)
  %550 = call float @dx.op.binary.f32(i32 36, float %549, float %530)  ; FMin(a,b)
  %551 = call float @dx.op.binary.f32(i32 35, float %542, float %543)  ; FMax(a,b)
  %552 = call float @dx.op.binary.f32(i32 35, float %541, float %551)  ; FMax(a,b)
  %553 = call float @dx.op.binary.f32(i32 35, float %552, float %544)  ; FMax(a,b)
  %554 = select i1 %547, float %550, float %553
  %555 = fcmp fast ole float %531, -1.000000e+00
  %556 = fcmp fast ole float %532, -1.000000e+00
  %557 = fcmp fast ole float %533, -1.000000e+00
  %558 = fcmp fast ole float %534, -1.000000e+00
  %559 = select i1 %555, float 0x47EFFFFFE0000000, float %531
  %560 = select i1 %556, float 0x47EFFFFFE0000000, float %532
  %561 = select i1 %557, float 0x47EFFFFFE0000000, float %533
  %562 = select i1 %558, float 0x47EFFFFFE0000000, float %534
  %563 = and i1 %555, %556
  %564 = and i1 %563, %557
  %565 = and i1 %564, %558
  %566 = call float @dx.op.binary.f32(i32 35, float %532, float %533)  ; FMax(a,b)
  %567 = call float @dx.op.binary.f32(i32 35, float %531, float %566)  ; FMax(a,b)
  %568 = call float @dx.op.binary.f32(i32 35, float %567, float %534)  ; FMax(a,b)
  %569 = call float @dx.op.binary.f32(i32 36, float %560, float %561)  ; FMin(a,b)
  %570 = call float @dx.op.binary.f32(i32 36, float %559, float %569)  ; FMin(a,b)
  %571 = call float @dx.op.binary.f32(i32 36, float %570, float %562)  ; FMin(a,b)
  %572 = select i1 %565, float %568, float %571
  br i1 %535, label %573, label %620, !dx.controlflow.hints !29

; <label>:573                                     ; preds = %526
  %574 = and i32 %465, 14
  %575 = add i32 %464, 2
  %576 = and i32 %575, 14
  %577 = mul i32 %576, 16
  %578 = add i32 %574, %577
  %579 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %578
  %580 = load i32, i32 addrspace(3)* %579, align 4, !tbaa !23
  %581 = and i32 %580, 65535
  %582 = call float @dx.op.legacyF16ToF32(i32 131, i32 %581)  ; LegacyF16ToF32(value)
  %583 = lshr i32 %580, 16
  %584 = call float @dx.op.legacyF16ToF32(i32 131, i32 %583)  ; LegacyF16ToF32(value)
  %585 = or i32 %574, 1
  %586 = mul i32 %576, 16
  %587 = add i32 %585, %586
  %588 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %587
  %589 = load i32, i32 addrspace(3)* %588, align 4, !tbaa !23
  %590 = and i32 %589, 65535
  %591 = call float @dx.op.legacyF16ToF32(i32 131, i32 %590)  ; LegacyF16ToF32(value)
  %592 = lshr i32 %589, 16
  %593 = call float @dx.op.legacyF16ToF32(i32 131, i32 %592)  ; LegacyF16ToF32(value)
  %594 = fcmp fast ole float %554, -1.000000e+00
  %595 = fcmp fast ole float %582, -1.000000e+00
  %596 = fcmp fast ole float %591, -1.000000e+00
  %597 = select i1 %594, float -1.000000e+00, float %554
  %598 = select i1 %595, float -1.000000e+00, float %582
  %599 = select i1 %596, float -1.000000e+00, float %591
  %600 = and i1 %594, %595
  %601 = and i1 %600, %596
  %602 = call float @dx.op.binary.f32(i32 36, float %582, float %591)  ; FMin(a,b)
  %603 = call float @dx.op.binary.f32(i32 36, float %554, float %602)  ; FMin(a,b)
  %604 = call float @dx.op.binary.f32(i32 35, float %598, float %599)  ; FMax(a,b)
  %605 = call float @dx.op.binary.f32(i32 35, float %597, float %604)  ; FMax(a,b)
  %606 = select i1 %601, float %603, float %605
  %607 = fcmp fast ole float %572, -1.000000e+00
  %608 = fcmp fast ole float %584, -1.000000e+00
  %609 = fcmp fast ole float %593, -1.000000e+00
  %610 = select i1 %607, float 0x47EFFFFFE0000000, float %572
  %611 = select i1 %608, float 0x47EFFFFFE0000000, float %584
  %612 = select i1 %609, float 0x47EFFFFFE0000000, float %593
  %613 = and i1 %607, %608
  %614 = and i1 %613, %609
  %615 = call float @dx.op.binary.f32(i32 35, float %584, float %593)  ; FMax(a,b)
  %616 = call float @dx.op.binary.f32(i32 35, float %572, float %615)  ; FMax(a,b)
  %617 = call float @dx.op.binary.f32(i32 36, float %611, float %612)  ; FMin(a,b)
  %618 = call float @dx.op.binary.f32(i32 36, float %610, float %617)  ; FMin(a,b)
  %619 = select i1 %614, float %616, float %618
  br label %620

; <label>:620                                     ; preds = %573, %526
  %621 = phi float [ %606, %573 ], [ %554, %526 ]
  %622 = phi float [ %619, %573 ], [ %572, %526 ]
  %623 = icmp eq i32 %536, 0
  br i1 %623, label %671, label %624, !dx.controlflow.hints !30

; <label>:624                                     ; preds = %620
  %625 = add i32 %465, 2
  %626 = and i32 %625, 14
  %627 = and i32 %464, 14
  %628 = mul i32 %627, 16
  %629 = add i32 %626, %628
  %630 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %629
  %631 = load i32, i32 addrspace(3)* %630, align 4, !tbaa !23
  %632 = and i32 %631, 65535
  %633 = call float @dx.op.legacyF16ToF32(i32 131, i32 %632)  ; LegacyF16ToF32(value)
  %634 = lshr i32 %631, 16
  %635 = call float @dx.op.legacyF16ToF32(i32 131, i32 %634)  ; LegacyF16ToF32(value)
  %636 = or i32 %627, 1
  %637 = mul i32 %636, 16
  %638 = add i32 %626, %637
  %639 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %638
  %640 = load i32, i32 addrspace(3)* %639, align 4, !tbaa !23
  %641 = and i32 %640, 65535
  %642 = call float @dx.op.legacyF16ToF32(i32 131, i32 %641)  ; LegacyF16ToF32(value)
  %643 = lshr i32 %640, 16
  %644 = call float @dx.op.legacyF16ToF32(i32 131, i32 %643)  ; LegacyF16ToF32(value)
  %645 = fcmp fast ole float %621, -1.000000e+00
  %646 = fcmp fast ole float %633, -1.000000e+00
  %647 = fcmp fast ole float %642, -1.000000e+00
  %648 = select i1 %645, float -1.000000e+00, float %621
  %649 = select i1 %646, float -1.000000e+00, float %633
  %650 = select i1 %647, float -1.000000e+00, float %642
  %651 = and i1 %645, %646
  %652 = and i1 %651, %647
  %653 = call float @dx.op.binary.f32(i32 36, float %633, float %642)  ; FMin(a,b)
  %654 = call float @dx.op.binary.f32(i32 36, float %621, float %653)  ; FMin(a,b)
  %655 = call float @dx.op.binary.f32(i32 35, float %649, float %650)  ; FMax(a,b)
  %656 = call float @dx.op.binary.f32(i32 35, float %648, float %655)  ; FMax(a,b)
  %657 = select i1 %652, float %654, float %656
  %658 = fcmp fast ole float %622, -1.000000e+00
  %659 = fcmp fast ole float %635, -1.000000e+00
  %660 = fcmp fast ole float %644, -1.000000e+00
  %661 = select i1 %658, float 0x47EFFFFFE0000000, float %622
  %662 = select i1 %659, float 0x47EFFFFFE0000000, float %635
  %663 = select i1 %660, float 0x47EFFFFFE0000000, float %644
  %664 = and i1 %658, %659
  %665 = and i1 %664, %660
  %666 = call float @dx.op.binary.f32(i32 35, float %635, float %644)  ; FMax(a,b)
  %667 = call float @dx.op.binary.f32(i32 35, float %622, float %666)  ; FMax(a,b)
  %668 = call float @dx.op.binary.f32(i32 36, float %662, float %663)  ; FMin(a,b)
  %669 = call float @dx.op.binary.f32(i32 36, float %661, float %668)  ; FMin(a,b)
  %670 = select i1 %665, float %667, float %669
  br label %671

; <label>:671                                     ; preds = %624, %620
  %672 = phi float [ %657, %624 ], [ %621, %620 ]
  %673 = phi float [ %670, %624 ], [ %622, %620 ]
  %674 = icmp ne i32 %536, 0
  %675 = and i1 %535, %674
  br i1 %675, label %676, label %705, !dx.controlflow.hints !31

; <label>:676                                     ; preds = %671
  %677 = add i32 %465, 2
  %678 = and i32 %677, 14
  %679 = add i32 %464, 2
  %680 = and i32 %679, 14
  %681 = mul i32 %680, 16
  %682 = add i32 %678, %681
  %683 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %682
  %684 = load i32, i32 addrspace(3)* %683, align 4, !tbaa !23
  %685 = and i32 %684, 65535
  %686 = call float @dx.op.legacyF16ToF32(i32 131, i32 %685)  ; LegacyF16ToF32(value)
  %687 = lshr i32 %684, 16
  %688 = call float @dx.op.legacyF16ToF32(i32 131, i32 %687)  ; LegacyF16ToF32(value)
  %689 = fcmp fast ole float %672, -1.000000e+00
  %690 = fcmp fast ole float %686, -1.000000e+00
  %691 = select i1 %689, float -1.000000e+00, float %672
  %692 = select i1 %690, float -1.000000e+00, float %686
  %693 = and i1 %689, %690
  %694 = call float @dx.op.binary.f32(i32 36, float %672, float %686)  ; FMin(a,b)
  %695 = call float @dx.op.binary.f32(i32 35, float %691, float %692)  ; FMax(a,b)
  %696 = select i1 %693, float %694, float %695
  %697 = fcmp fast ole float %673, -1.000000e+00
  %698 = fcmp fast ole float %688, -1.000000e+00
  %699 = select i1 %697, float 0x47EFFFFFE0000000, float %673
  %700 = select i1 %698, float 0x47EFFFFFE0000000, float %688
  %701 = and i1 %697, %698
  %702 = call float @dx.op.binary.f32(i32 35, float %673, float %688)  ; FMax(a,b)
  %703 = call float @dx.op.binary.f32(i32 36, float %699, float %700)  ; FMin(a,b)
  %704 = select i1 %701, float %702, float %703
  br label %705

; <label>:705                                     ; preds = %676, %671
  %706 = phi float [ %696, %676 ], [ %672, %671 ]
  %707 = phi float [ %704, %676 ], [ %673, %671 ]
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %463, label %708, label %718, !dx.controlflow.hints !32

; <label>:708                                     ; preds = %705
  %709 = call i32 @dx.op.legacyF32ToF16(i32 130, float %706)  ; LegacyF32ToF16(value)
  %710 = call i32 @dx.op.legacyF32ToF16(i32 130, float %707)  ; LegacyF32ToF16(value)
  %711 = shl i32 %710, 16
  %712 = or i32 %711, %709
  %713 = and i32 %455, 15
  %714 = and i32 %454, 15
  %715 = mul i32 %714, 16
  %716 = add i32 %713, %715
  %717 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %716
  store i32 %712, i32 addrspace(3)* %717, align 4, !tbaa !23
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %454, i32 %455, i32 undef, float %706, float %706, float %706, float %706, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %718

; <label>:718                                     ; preds = %708, %705, %441
  %719 = phi i32 [ %442, %441 ], [ %452, %708 ], [ %452, %705 ]
  %720 = phi i32 [ %443, %441 ], [ %453, %708 ], [ %453, %705 ]
  %721 = phi i32 [ %444, %441 ], [ %454, %708 ], [ %454, %705 ]
  %722 = phi i32 [ %445, %441 ], [ %455, %708 ], [ %455, %705 ]
  %723 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %724 = extractvalue %dx.types.CBufRet.i32 %723, 3
  %725 = icmp ugt i32 %724, 3
  br i1 %725, label %726, label %995, !dx.controlflow.hints !34

; <label>:726                                     ; preds = %718
  %727 = lshr i32 %719, 1
  %728 = lshr i32 %720, 1
  %729 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %727)  ; UMax(a,b)
  %730 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %728)  ; UMax(a,b)
  %731 = lshr i32 %721, 1
  %732 = lshr i32 %722, 1
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %733 = lshr i32 %729, 1
  %734 = lshr i32 %730, 1
  %735 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %733)  ; UMax(a,b)
  %736 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %734)  ; UMax(a,b)
  %737 = icmp ult i32 %731, %735
  %738 = icmp ult i32 %732, %736
  %739 = and i1 %737, %738
  %740 = and i1 %739, %39
  %741 = shl nuw i32 %731, 1
  %742 = shl nuw i32 %732, 1
  br i1 %740, label %743, label %803, !dx.controlflow.hints !28

; <label>:743                                     ; preds = %726
  %744 = or i32 %741, 1
  %745 = or i32 %742, 1
  %746 = add i32 %729, -1
  %747 = add i32 %730, -1
  %748 = call i32 @dx.op.binary.i32(i32 40, i32 %741, i32 %746)  ; UMin(a,b)
  %749 = call i32 @dx.op.binary.i32(i32 40, i32 %742, i32 %747)  ; UMin(a,b)
  %750 = call i32 @dx.op.binary.i32(i32 40, i32 %744, i32 %746)  ; UMin(a,b)
  %751 = call i32 @dx.op.binary.i32(i32 40, i32 %745, i32 %747)  ; UMin(a,b)
  %752 = and i32 %748, 15
  %753 = and i32 %749, 15
  %754 = and i32 %750, 15
  %755 = and i32 %751, 15
  %756 = mul i32 %752, 16
  %757 = add i32 %753, %756
  %758 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %757
  %759 = load i32, i32 addrspace(3)* %758, align 4, !tbaa !23
  %760 = and i32 %759, 65535
  %761 = call float @dx.op.legacyF16ToF32(i32 131, i32 %760)  ; LegacyF16ToF32(value)
  %762 = lshr i32 %759, 16
  %763 = call float @dx.op.legacyF16ToF32(i32 131, i32 %762)  ; LegacyF16ToF32(value)
  %764 = mul i32 %754, 16
  %765 = add i32 %753, %764
  %766 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %765
  %767 = load i32, i32 addrspace(3)* %766, align 4, !tbaa !23
  %768 = and i32 %767, 65535
  %769 = call float @dx.op.legacyF16ToF32(i32 131, i32 %768)  ; LegacyF16ToF32(value)
  %770 = lshr i32 %767, 16
  %771 = call float @dx.op.legacyF16ToF32(i32 131, i32 %770)  ; LegacyF16ToF32(value)
  %772 = mul i32 %752, 16
  %773 = add i32 %755, %772
  %774 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %773
  %775 = load i32, i32 addrspace(3)* %774, align 4, !tbaa !23
  %776 = and i32 %775, 65535
  %777 = call float @dx.op.legacyF16ToF32(i32 131, i32 %776)  ; LegacyF16ToF32(value)
  %778 = lshr i32 %775, 16
  %779 = call float @dx.op.legacyF16ToF32(i32 131, i32 %778)  ; LegacyF16ToF32(value)
  %780 = mul i32 %754, 16
  %781 = add i32 %755, %780
  %782 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %781
  %783 = load i32, i32 addrspace(3)* %782, align 4, !tbaa !23
  %784 = and i32 %783, 65535
  %785 = call float @dx.op.legacyF16ToF32(i32 131, i32 %784)  ; LegacyF16ToF32(value)
  %786 = lshr i32 %783, 16
  %787 = call float @dx.op.legacyF16ToF32(i32 131, i32 %786)  ; LegacyF16ToF32(value)
  %788 = icmp ugt i32 %729, 1
  %789 = and i32 %729, 1
  %790 = icmp ne i32 %789, 0
  %791 = and i1 %788, %790
  %792 = add i32 %729, -3
  %793 = icmp eq i32 %792, %741
  %794 = and i1 %793, %791
  %795 = icmp ugt i32 %730, 1
  %796 = and i32 %730, 1
  %797 = icmp ne i32 %796, 0
  %798 = and i1 %795, %797
  %799 = add i32 %730, -3
  %800 = icmp eq i32 %799, %742
  %801 = and i1 %800, %798
  %802 = zext i1 %801 to i32
  br label %803

; <label>:803                                     ; preds = %743, %726
  %804 = phi float [ %761, %743 ], [ 0.000000e+00, %726 ]
  %805 = phi float [ %769, %743 ], [ 0.000000e+00, %726 ]
  %806 = phi float [ %777, %743 ], [ 0.000000e+00, %726 ]
  %807 = phi float [ %785, %743 ], [ 0.000000e+00, %726 ]
  %808 = phi float [ %763, %743 ], [ 0.000000e+00, %726 ]
  %809 = phi float [ %771, %743 ], [ 0.000000e+00, %726 ]
  %810 = phi float [ %779, %743 ], [ 0.000000e+00, %726 ]
  %811 = phi float [ %787, %743 ], [ 0.000000e+00, %726 ]
  %812 = phi i1 [ %794, %743 ], [ false, %726 ]
  %813 = phi i32 [ %802, %743 ], [ 0, %726 ]
  %814 = fcmp fast ole float %804, -1.000000e+00
  %815 = fcmp fast ole float %805, -1.000000e+00
  %816 = fcmp fast ole float %806, -1.000000e+00
  %817 = fcmp fast ole float %807, -1.000000e+00
  %818 = select i1 %814, float -1.000000e+00, float %804
  %819 = select i1 %815, float -1.000000e+00, float %805
  %820 = select i1 %816, float -1.000000e+00, float %806
  %821 = select i1 %817, float -1.000000e+00, float %807
  %822 = and i1 %814, %815
  %823 = and i1 %822, %816
  %824 = and i1 %823, %817
  %825 = call float @dx.op.binary.f32(i32 36, float %805, float %806)  ; FMin(a,b)
  %826 = call float @dx.op.binary.f32(i32 36, float %804, float %825)  ; FMin(a,b)
  %827 = call float @dx.op.binary.f32(i32 36, float %826, float %807)  ; FMin(a,b)
  %828 = call float @dx.op.binary.f32(i32 35, float %819, float %820)  ; FMax(a,b)
  %829 = call float @dx.op.binary.f32(i32 35, float %818, float %828)  ; FMax(a,b)
  %830 = call float @dx.op.binary.f32(i32 35, float %829, float %821)  ; FMax(a,b)
  %831 = select i1 %824, float %827, float %830
  %832 = fcmp fast ole float %808, -1.000000e+00
  %833 = fcmp fast ole float %809, -1.000000e+00
  %834 = fcmp fast ole float %810, -1.000000e+00
  %835 = fcmp fast ole float %811, -1.000000e+00
  %836 = select i1 %832, float 0x47EFFFFFE0000000, float %808
  %837 = select i1 %833, float 0x47EFFFFFE0000000, float %809
  %838 = select i1 %834, float 0x47EFFFFFE0000000, float %810
  %839 = select i1 %835, float 0x47EFFFFFE0000000, float %811
  %840 = and i1 %832, %833
  %841 = and i1 %840, %834
  %842 = and i1 %841, %835
  %843 = call float @dx.op.binary.f32(i32 35, float %809, float %810)  ; FMax(a,b)
  %844 = call float @dx.op.binary.f32(i32 35, float %808, float %843)  ; FMax(a,b)
  %845 = call float @dx.op.binary.f32(i32 35, float %844, float %811)  ; FMax(a,b)
  %846 = call float @dx.op.binary.f32(i32 36, float %837, float %838)  ; FMin(a,b)
  %847 = call float @dx.op.binary.f32(i32 36, float %836, float %846)  ; FMin(a,b)
  %848 = call float @dx.op.binary.f32(i32 36, float %847, float %839)  ; FMin(a,b)
  %849 = select i1 %842, float %845, float %848
  br i1 %812, label %850, label %897, !dx.controlflow.hints !29

; <label>:850                                     ; preds = %803
  %851 = and i32 %742, 14
  %852 = add i32 %741, 2
  %853 = and i32 %852, 14
  %854 = mul i32 %853, 16
  %855 = add i32 %851, %854
  %856 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %855
  %857 = load i32, i32 addrspace(3)* %856, align 4, !tbaa !23
  %858 = and i32 %857, 65535
  %859 = call float @dx.op.legacyF16ToF32(i32 131, i32 %858)  ; LegacyF16ToF32(value)
  %860 = lshr i32 %857, 16
  %861 = call float @dx.op.legacyF16ToF32(i32 131, i32 %860)  ; LegacyF16ToF32(value)
  %862 = or i32 %851, 1
  %863 = mul i32 %853, 16
  %864 = add i32 %862, %863
  %865 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %864
  %866 = load i32, i32 addrspace(3)* %865, align 4, !tbaa !23
  %867 = and i32 %866, 65535
  %868 = call float @dx.op.legacyF16ToF32(i32 131, i32 %867)  ; LegacyF16ToF32(value)
  %869 = lshr i32 %866, 16
  %870 = call float @dx.op.legacyF16ToF32(i32 131, i32 %869)  ; LegacyF16ToF32(value)
  %871 = fcmp fast ole float %831, -1.000000e+00
  %872 = fcmp fast ole float %859, -1.000000e+00
  %873 = fcmp fast ole float %868, -1.000000e+00
  %874 = select i1 %871, float -1.000000e+00, float %831
  %875 = select i1 %872, float -1.000000e+00, float %859
  %876 = select i1 %873, float -1.000000e+00, float %868
  %877 = and i1 %871, %872
  %878 = and i1 %877, %873
  %879 = call float @dx.op.binary.f32(i32 36, float %859, float %868)  ; FMin(a,b)
  %880 = call float @dx.op.binary.f32(i32 36, float %831, float %879)  ; FMin(a,b)
  %881 = call float @dx.op.binary.f32(i32 35, float %875, float %876)  ; FMax(a,b)
  %882 = call float @dx.op.binary.f32(i32 35, float %874, float %881)  ; FMax(a,b)
  %883 = select i1 %878, float %880, float %882
  %884 = fcmp fast ole float %849, -1.000000e+00
  %885 = fcmp fast ole float %861, -1.000000e+00
  %886 = fcmp fast ole float %870, -1.000000e+00
  %887 = select i1 %884, float 0x47EFFFFFE0000000, float %849
  %888 = select i1 %885, float 0x47EFFFFFE0000000, float %861
  %889 = select i1 %886, float 0x47EFFFFFE0000000, float %870
  %890 = and i1 %884, %885
  %891 = and i1 %890, %886
  %892 = call float @dx.op.binary.f32(i32 35, float %861, float %870)  ; FMax(a,b)
  %893 = call float @dx.op.binary.f32(i32 35, float %849, float %892)  ; FMax(a,b)
  %894 = call float @dx.op.binary.f32(i32 36, float %888, float %889)  ; FMin(a,b)
  %895 = call float @dx.op.binary.f32(i32 36, float %887, float %894)  ; FMin(a,b)
  %896 = select i1 %891, float %893, float %895
  br label %897

; <label>:897                                     ; preds = %850, %803
  %898 = phi float [ %883, %850 ], [ %831, %803 ]
  %899 = phi float [ %896, %850 ], [ %849, %803 ]
  %900 = icmp eq i32 %813, 0
  br i1 %900, label %948, label %901, !dx.controlflow.hints !30

; <label>:901                                     ; preds = %897
  %902 = add i32 %742, 2
  %903 = and i32 %902, 14
  %904 = and i32 %741, 14
  %905 = mul i32 %904, 16
  %906 = add i32 %903, %905
  %907 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %906
  %908 = load i32, i32 addrspace(3)* %907, align 4, !tbaa !23
  %909 = and i32 %908, 65535
  %910 = call float @dx.op.legacyF16ToF32(i32 131, i32 %909)  ; LegacyF16ToF32(value)
  %911 = lshr i32 %908, 16
  %912 = call float @dx.op.legacyF16ToF32(i32 131, i32 %911)  ; LegacyF16ToF32(value)
  %913 = or i32 %904, 1
  %914 = mul i32 %913, 16
  %915 = add i32 %903, %914
  %916 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %915
  %917 = load i32, i32 addrspace(3)* %916, align 4, !tbaa !23
  %918 = and i32 %917, 65535
  %919 = call float @dx.op.legacyF16ToF32(i32 131, i32 %918)  ; LegacyF16ToF32(value)
  %920 = lshr i32 %917, 16
  %921 = call float @dx.op.legacyF16ToF32(i32 131, i32 %920)  ; LegacyF16ToF32(value)
  %922 = fcmp fast ole float %898, -1.000000e+00
  %923 = fcmp fast ole float %910, -1.000000e+00
  %924 = fcmp fast ole float %919, -1.000000e+00
  %925 = select i1 %922, float -1.000000e+00, float %898
  %926 = select i1 %923, float -1.000000e+00, float %910
  %927 = select i1 %924, float -1.000000e+00, float %919
  %928 = and i1 %922, %923
  %929 = and i1 %928, %924
  %930 = call float @dx.op.binary.f32(i32 36, float %910, float %919)  ; FMin(a,b)
  %931 = call float @dx.op.binary.f32(i32 36, float %898, float %930)  ; FMin(a,b)
  %932 = call float @dx.op.binary.f32(i32 35, float %926, float %927)  ; FMax(a,b)
  %933 = call float @dx.op.binary.f32(i32 35, float %925, float %932)  ; FMax(a,b)
  %934 = select i1 %929, float %931, float %933
  %935 = fcmp fast ole float %899, -1.000000e+00
  %936 = fcmp fast ole float %912, -1.000000e+00
  %937 = fcmp fast ole float %921, -1.000000e+00
  %938 = select i1 %935, float 0x47EFFFFFE0000000, float %899
  %939 = select i1 %936, float 0x47EFFFFFE0000000, float %912
  %940 = select i1 %937, float 0x47EFFFFFE0000000, float %921
  %941 = and i1 %935, %936
  %942 = and i1 %941, %937
  %943 = call float @dx.op.binary.f32(i32 35, float %912, float %921)  ; FMax(a,b)
  %944 = call float @dx.op.binary.f32(i32 35, float %899, float %943)  ; FMax(a,b)
  %945 = call float @dx.op.binary.f32(i32 36, float %939, float %940)  ; FMin(a,b)
  %946 = call float @dx.op.binary.f32(i32 36, float %938, float %945)  ; FMin(a,b)
  %947 = select i1 %942, float %944, float %946
  br label %948

; <label>:948                                     ; preds = %901, %897
  %949 = phi float [ %934, %901 ], [ %898, %897 ]
  %950 = phi float [ %947, %901 ], [ %899, %897 ]
  %951 = icmp ne i32 %813, 0
  %952 = and i1 %812, %951
  br i1 %952, label %953, label %982, !dx.controlflow.hints !31

; <label>:953                                     ; preds = %948
  %954 = add i32 %742, 2
  %955 = and i32 %954, 14
  %956 = add i32 %741, 2
  %957 = and i32 %956, 14
  %958 = mul i32 %957, 16
  %959 = add i32 %955, %958
  %960 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %959
  %961 = load i32, i32 addrspace(3)* %960, align 4, !tbaa !23
  %962 = and i32 %961, 65535
  %963 = call float @dx.op.legacyF16ToF32(i32 131, i32 %962)  ; LegacyF16ToF32(value)
  %964 = lshr i32 %961, 16
  %965 = call float @dx.op.legacyF16ToF32(i32 131, i32 %964)  ; LegacyF16ToF32(value)
  %966 = fcmp fast ole float %949, -1.000000e+00
  %967 = fcmp fast ole float %963, -1.000000e+00
  %968 = select i1 %966, float -1.000000e+00, float %949
  %969 = select i1 %967, float -1.000000e+00, float %963
  %970 = and i1 %966, %967
  %971 = call float @dx.op.binary.f32(i32 36, float %949, float %963)  ; FMin(a,b)
  %972 = call float @dx.op.binary.f32(i32 35, float %968, float %969)  ; FMax(a,b)
  %973 = select i1 %970, float %971, float %972
  %974 = fcmp fast ole float %950, -1.000000e+00
  %975 = fcmp fast ole float %965, -1.000000e+00
  %976 = select i1 %974, float 0x47EFFFFFE0000000, float %950
  %977 = select i1 %975, float 0x47EFFFFFE0000000, float %965
  %978 = and i1 %974, %975
  %979 = call float @dx.op.binary.f32(i32 35, float %950, float %965)  ; FMax(a,b)
  %980 = call float @dx.op.binary.f32(i32 36, float %976, float %977)  ; FMin(a,b)
  %981 = select i1 %978, float %979, float %980
  br label %982

; <label>:982                                     ; preds = %953, %948
  %983 = phi float [ %973, %953 ], [ %949, %948 ]
  %984 = phi float [ %981, %953 ], [ %950, %948 ]
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %740, label %985, label %995, !dx.controlflow.hints !32

; <label>:985                                     ; preds = %982
  %986 = call i32 @dx.op.legacyF32ToF16(i32 130, float %983)  ; LegacyF32ToF16(value)
  %987 = call i32 @dx.op.legacyF32ToF16(i32 130, float %984)  ; LegacyF32ToF16(value)
  %988 = shl i32 %987, 16
  %989 = or i32 %988, %986
  %990 = and i32 %732, 15
  %991 = and i32 %731, 15
  %992 = mul i32 %991, 16
  %993 = add i32 %990, %992
  %994 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %993
  store i32 %989, i32 addrspace(3)* %994, align 4, !tbaa !23
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %731, i32 %732, i32 undef, float %983, float %983, float %983, float %983, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %731, i32 %732, i32 undef, float %984, float %984, float %984, float %984, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %995

; <label>:995                                     ; preds = %985, %982, %718
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
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

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
!dx.entryPoints = !{!15}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{null, !5, !13, null}
!5 = !{!6, !8, !9, !10, !11, !12}
!6 = !{i32 0, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 8, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!9 = !{i32 2, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!10 = !{i32 3, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!11 = !{i32 4, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 3, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!12 = !{i32 5, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 7, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!13 = !{!14}
!14 = !{i32 0, %FloatZDownsampleConsts* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!15 = !{void ()* @cs_floatz_downsample_border_last_min_only, !"cs_floatz_downsample_border_last_min_only", null, !4, !16}
!16 = !{i32 0, i64 256, i32 4, !17}
!17 = !{i32 16, i32 16, i32 1}
!18 = distinct !{!18, !"dx.controlflow.hints", i32 2}
!19 = distinct !{!19, !"dx.controlflow.hints", i32 2}
!20 = distinct !{!20, !"dx.controlflow.hints", i32 2}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = !{!24, !24, i64 0}
!24 = !{!"int", !25, i64 0}
!25 = !{!"omnipotent char", !26, i64 0}
!26 = !{!"Simple C/C++ TBAA"}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}

