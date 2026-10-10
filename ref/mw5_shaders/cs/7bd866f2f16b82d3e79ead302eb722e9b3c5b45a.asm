;
; Note: shader requires additional functionality:
;       Minimum-precision data types
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
; shader hash: 4943f589c7f6913423593ca667a0cb10
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
;   [96 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb0     1
;                                   texture     f32          2d      T0             t0     1
;                                       UAV     f32          2d      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.RWTexture2D<vector<half, 4> >" = type { <4 x float> }
%cb = type { <4 x i32>, <4 x i32>, <4 x i32>, <4 x i32>, <4 x i32>, <4 x i32> }

define void @cs_rcas() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %5 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %6 = call i32 @dx.op.groupId.i32(i32 94, i32 1)  ; GroupId(component)
  %7 = lshr i32 %4, 1
  %8 = and i32 %7, 7
  %9 = lshr i32 %4, 3
  %10 = and i32 %4, 1
  %11 = and i32 %9, 6
  %12 = or i32 %11, %10
  %13 = shl i32 %5, 4
  %14 = shl i32 %6, 4
  %15 = or i32 %8, %13
  %16 = or i32 %12, %14
  %17 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %18 = extractvalue %dx.types.CBufRet.i32 %17, 1
  %19 = trunc i32 %15 to i16
  %20 = shl i32 %15, 16
  %21 = ashr exact i32 %20, 16
  %22 = shl i32 %16, 16
  %23 = add i32 %22, -65536
  %24 = ashr exact i32 %23, 16
  %25 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %21, i32 %24, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %26 = extractvalue %dx.types.ResRet.f32 %25, 0
  %27 = extractvalue %dx.types.ResRet.f32 %25, 1
  %28 = extractvalue %dx.types.ResRet.f32 %25, 2
  %29 = fptrunc float %26 to half
  %30 = fptrunc float %27 to half
  %31 = fptrunc float %28 to half
  %32 = add i32 %20, -65536
  %33 = ashr exact i32 %32, 16
  %34 = ashr exact i32 %22, 16
  %35 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %33, i32 %34, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %36 = extractvalue %dx.types.ResRet.f32 %35, 0
  %37 = extractvalue %dx.types.ResRet.f32 %35, 1
  %38 = extractvalue %dx.types.ResRet.f32 %35, 2
  %39 = fptrunc float %36 to half
  %40 = fptrunc float %37 to half
  %41 = fptrunc float %38 to half
  %42 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %21, i32 %34, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %43 = extractvalue %dx.types.ResRet.f32 %42, 0
  %44 = extractvalue %dx.types.ResRet.f32 %42, 1
  %45 = extractvalue %dx.types.ResRet.f32 %42, 2
  %46 = fptrunc float %43 to half
  %47 = fptrunc float %44 to half
  %48 = fptrunc float %45 to half
  %49 = add nsw i32 %20, 65536
  %50 = ashr exact i32 %49, 16
  %51 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %50, i32 %34, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %52 = extractvalue %dx.types.ResRet.f32 %51, 0
  %53 = extractvalue %dx.types.ResRet.f32 %51, 1
  %54 = extractvalue %dx.types.ResRet.f32 %51, 2
  %55 = fptrunc float %52 to half
  %56 = fptrunc float %53 to half
  %57 = fptrunc float %54 to half
  %58 = add nsw i32 %22, 65536
  %59 = ashr exact i32 %58, 16
  %60 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %21, i32 %59, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %61 = extractvalue %dx.types.ResRet.f32 %60, 0
  %62 = extractvalue %dx.types.ResRet.f32 %60, 1
  %63 = extractvalue %dx.types.ResRet.f32 %60, 2
  %64 = fptrunc float %61 to half
  %65 = fptrunc float %62 to half
  %66 = fptrunc float %63 to half
  %67 = or i16 %19, 8
  %68 = sext i16 %67 to i32
  %69 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %68, i32 %24, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %70 = extractvalue %dx.types.ResRet.f32 %69, 0
  %71 = extractvalue %dx.types.ResRet.f32 %69, 1
  %72 = extractvalue %dx.types.ResRet.f32 %69, 2
  %73 = fptrunc float %70 to half
  %74 = fptrunc float %71 to half
  %75 = fptrunc float %72 to half
  %76 = add i16 %67, -1
  %77 = sext i16 %76 to i32
  %78 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %77, i32 %34, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %79 = extractvalue %dx.types.ResRet.f32 %78, 0
  %80 = extractvalue %dx.types.ResRet.f32 %78, 1
  %81 = extractvalue %dx.types.ResRet.f32 %78, 2
  %82 = fptrunc float %79 to half
  %83 = fptrunc float %80 to half
  %84 = fptrunc float %81 to half
  %85 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %68, i32 %34, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %86 = extractvalue %dx.types.ResRet.f32 %85, 0
  %87 = extractvalue %dx.types.ResRet.f32 %85, 1
  %88 = extractvalue %dx.types.ResRet.f32 %85, 2
  %89 = fptrunc float %86 to half
  %90 = fptrunc float %87 to half
  %91 = fptrunc float %88 to half
  %92 = add i16 %67, 1
  %93 = sext i16 %92 to i32
  %94 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %93, i32 %34, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %95 = extractvalue %dx.types.ResRet.f32 %94, 0
  %96 = extractvalue %dx.types.ResRet.f32 %94, 1
  %97 = extractvalue %dx.types.ResRet.f32 %94, 2
  %98 = fptrunc float %95 to half
  %99 = fptrunc float %96 to half
  %100 = fptrunc float %97 to half
  %101 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %68, i32 %59, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %102 = extractvalue %dx.types.ResRet.f32 %101, 0
  %103 = extractvalue %dx.types.ResRet.f32 %101, 1
  %104 = extractvalue %dx.types.ResRet.f32 %101, 2
  %105 = fptrunc float %102 to half
  %106 = fptrunc float %103 to half
  %107 = fptrunc float %104 to half
  %108 = call half @dx.op.binary.f16(i32 36, half %39, half %55)  ; FMin(a,b)
  %109 = call half @dx.op.binary.f16(i32 36, half %82, half %98)  ; FMin(a,b)
  %110 = call half @dx.op.binary.f16(i32 36, half %29, half %108)  ; FMin(a,b)
  %111 = call half @dx.op.binary.f16(i32 36, half %73, half %109)  ; FMin(a,b)
  %112 = call half @dx.op.binary.f16(i32 36, half %110, half %64)  ; FMin(a,b)
  %113 = call half @dx.op.binary.f16(i32 36, half %111, half %105)  ; FMin(a,b)
  %114 = call half @dx.op.binary.f16(i32 36, half %40, half %56)  ; FMin(a,b)
  %115 = call half @dx.op.binary.f16(i32 36, half %83, half %99)  ; FMin(a,b)
  %116 = call half @dx.op.binary.f16(i32 36, half %30, half %114)  ; FMin(a,b)
  %117 = call half @dx.op.binary.f16(i32 36, half %74, half %115)  ; FMin(a,b)
  %118 = call half @dx.op.binary.f16(i32 36, half %116, half %65)  ; FMin(a,b)
  %119 = call half @dx.op.binary.f16(i32 36, half %117, half %106)  ; FMin(a,b)
  %120 = call half @dx.op.binary.f16(i32 36, half %41, half %57)  ; FMin(a,b)
  %121 = call half @dx.op.binary.f16(i32 36, half %84, half %100)  ; FMin(a,b)
  %122 = call half @dx.op.binary.f16(i32 36, half %31, half %120)  ; FMin(a,b)
  %123 = call half @dx.op.binary.f16(i32 36, half %75, half %121)  ; FMin(a,b)
  %124 = call half @dx.op.binary.f16(i32 36, half %122, half %66)  ; FMin(a,b)
  %125 = call half @dx.op.binary.f16(i32 36, half %123, half %107)  ; FMin(a,b)
  %126 = call half @dx.op.binary.f16(i32 35, half %39, half %55)  ; FMax(a,b)
  %127 = call half @dx.op.binary.f16(i32 35, half %82, half %98)  ; FMax(a,b)
  %128 = call half @dx.op.binary.f16(i32 35, half %29, half %126)  ; FMax(a,b)
  %129 = call half @dx.op.binary.f16(i32 35, half %73, half %127)  ; FMax(a,b)
  %130 = call half @dx.op.binary.f16(i32 35, half %128, half %64)  ; FMax(a,b)
  %131 = call half @dx.op.binary.f16(i32 35, half %129, half %105)  ; FMax(a,b)
  %132 = call half @dx.op.binary.f16(i32 35, half %40, half %56)  ; FMax(a,b)
  %133 = call half @dx.op.binary.f16(i32 35, half %83, half %99)  ; FMax(a,b)
  %134 = call half @dx.op.binary.f16(i32 35, half %30, half %132)  ; FMax(a,b)
  %135 = call half @dx.op.binary.f16(i32 35, half %74, half %133)  ; FMax(a,b)
  %136 = call half @dx.op.binary.f16(i32 35, half %134, half %65)  ; FMax(a,b)
  %137 = call half @dx.op.binary.f16(i32 35, half %135, half %106)  ; FMax(a,b)
  %138 = call half @dx.op.binary.f16(i32 35, half %41, half %57)  ; FMax(a,b)
  %139 = call half @dx.op.binary.f16(i32 35, half %84, half %100)  ; FMax(a,b)
  %140 = call half @dx.op.binary.f16(i32 35, half %31, half %138)  ; FMax(a,b)
  %141 = call half @dx.op.binary.f16(i32 35, half %75, half %139)  ; FMax(a,b)
  %142 = call half @dx.op.binary.f16(i32 35, half %140, half %66)  ; FMax(a,b)
  %143 = call half @dx.op.binary.f16(i32 35, half %141, half %107)  ; FMax(a,b)
  %144 = fdiv fast half 0xH3400, %130
  %145 = fdiv fast half 0xH3400, %131
  %146 = fdiv fast half 0xH3400, %136
  %147 = fdiv fast half 0xH3400, %137
  %148 = fdiv fast half 0xH3400, %142
  %149 = fdiv fast half 0xH3400, %143
  %150 = fsub fast half 0xH3C00, %130
  %151 = fsub fast half 0xH3C00, %131
  %152 = fmul fast half %112, 0xH4400
  %153 = fmul fast half %113, 0xH4400
  %154 = fadd fast half %152, 0xHC400
  %155 = fadd fast half %153, 0xHC400
  %156 = fdiv fast half 0xH3C00, %154
  %157 = fdiv fast half 0xH3C00, %155
  %158 = fmul fast half %156, %150
  %159 = fmul fast half %157, %151
  %160 = fsub fast half 0xH3C00, %136
  %161 = fsub fast half 0xH3C00, %137
  %162 = fmul fast half %118, 0xH4400
  %163 = fmul fast half %119, 0xH4400
  %164 = fadd fast half %162, 0xHC400
  %165 = fadd fast half %163, 0xHC400
  %166 = fdiv fast half 0xH3C00, %164
  %167 = fdiv fast half 0xH3C00, %165
  %168 = fmul fast half %166, %160
  %169 = fmul fast half %167, %161
  %170 = fsub fast half 0xH3C00, %142
  %171 = fsub fast half 0xH3C00, %143
  %172 = fmul fast half %124, 0xH4400
  %173 = fmul fast half %125, 0xH4400
  %174 = fadd fast half %172, 0xHC400
  %175 = fadd fast half %173, 0xHC400
  %176 = fdiv fast half 0xH3C00, %174
  %177 = fdiv fast half 0xH3C00, %175
  %178 = fmul fast half %176, %170
  %179 = fmul fast half %177, %171
  %180 = fmul fast half %112, %144
  %181 = fsub fast half 0xH8000, %180
  %182 = fmul fast half %113, %145
  %183 = fsub fast half 0xH8000, %182
  %184 = call half @dx.op.binary.f16(i32 35, half %181, half %158)  ; FMax(a,b)
  %185 = call half @dx.op.binary.f16(i32 35, half %183, half %159)  ; FMax(a,b)
  %186 = fmul fast half %118, %146
  %187 = fsub fast half 0xH8000, %186
  %188 = fmul fast half %119, %147
  %189 = fsub fast half 0xH8000, %188
  %190 = call half @dx.op.binary.f16(i32 35, half %187, half %168)  ; FMax(a,b)
  %191 = call half @dx.op.binary.f16(i32 35, half %189, half %169)  ; FMax(a,b)
  %192 = fmul fast half %124, %148
  %193 = fsub fast half 0xH8000, %192
  %194 = fmul fast half %125, %149
  %195 = fsub fast half 0xH8000, %194
  %196 = call half @dx.op.binary.f16(i32 35, half %193, half %178)  ; FMax(a,b)
  %197 = call half @dx.op.binary.f16(i32 35, half %195, half %179)  ; FMax(a,b)
  %198 = call half @dx.op.binary.f16(i32 35, half %190, half %196)  ; FMax(a,b)
  %199 = call half @dx.op.binary.f16(i32 35, half %191, half %197)  ; FMax(a,b)
  %200 = call half @dx.op.binary.f16(i32 35, half %184, half %198)  ; FMax(a,b)
  %201 = call half @dx.op.binary.f16(i32 35, half %185, half %199)  ; FMax(a,b)
  %202 = call half @dx.op.binary.f16(i32 36, half %200, half 0xH0000)  ; FMin(a,b)
  %203 = call half @dx.op.binary.f16(i32 36, half %201, half 0xH0000)  ; FMin(a,b)
  %204 = call half @dx.op.binary.f16(i32 35, half 0xHB200, half %202)  ; FMax(a,b)
  %205 = call half @dx.op.binary.f16(i32 35, half 0xHB200, half %203)  ; FMax(a,b)
  %206 = and i32 %18, 65535
  %207 = call float @dx.op.legacyF16ToF32(i32 131, i32 %206)  ; LegacyF16ToF32(value)
  %208 = fptrunc float %207 to half
  %209 = fmul fast half %208, %204
  %210 = fmul fast half %208, %205
  %211 = fmul fast half %209, 0xH4400
  %212 = fmul fast half %210, 0xH4400
  %213 = fadd fast half %211, 0xH3C00
  %214 = fadd fast half %212, 0xH3C00
  %215 = fpext half %213 to float
  %216 = call i32 @dx.op.legacyF32ToF16(i32 130, float %215)  ; LegacyF32ToF16(value)
  %217 = sub i32 30605, %216
  %218 = and i32 %217, 65535
  %219 = call float @dx.op.legacyF16ToF32(i32 131, i32 %218)  ; LegacyF16ToF32(value)
  %220 = fptrunc float %219 to half
  %221 = fpext half %214 to float
  %222 = call i32 @dx.op.legacyF32ToF16(i32 130, float %221)  ; LegacyF32ToF16(value)
  %223 = sub i32 30605, %222
  %224 = and i32 %223, 65535
  %225 = call float @dx.op.legacyF16ToF32(i32 131, i32 %224)  ; LegacyF16ToF32(value)
  %226 = fptrunc float %225 to half
  %227 = fmul fast half %213, %220
  %228 = fmul fast half %226, %214
  %229 = fsub fast half 0xH4000, %227
  %230 = fsub fast half 0xH4000, %228
  %231 = fmul fast half %229, %220
  %232 = fmul fast half %230, %226
  %233 = fadd fast half %39, %29
  %234 = fadd fast half %82, %73
  %235 = fadd fast half %233, %55
  %236 = fadd fast half %235, %64
  %237 = fmul fast half %209, %236
  %238 = fadd fast half %234, %98
  %239 = fadd fast half %238, %105
  %240 = fmul fast half %210, %239
  %241 = fadd fast half %237, %46
  %242 = fadd fast half %240, %89
  %243 = fmul fast half %231, %241
  %244 = fmul fast half %232, %242
  %245 = fadd fast half %40, %30
  %246 = fadd fast half %83, %74
  %247 = fadd fast half %245, %56
  %248 = fadd fast half %247, %65
  %249 = fmul fast half %209, %248
  %250 = fadd fast half %246, %99
  %251 = fadd fast half %250, %106
  %252 = fmul fast half %210, %251
  %253 = fadd fast half %249, %47
  %254 = fadd fast half %252, %90
  %255 = fmul fast half %231, %253
  %256 = fmul fast half %232, %254
  %257 = fadd fast half %41, %31
  %258 = fadd fast half %84, %75
  %259 = fadd fast half %257, %57
  %260 = fadd fast half %259, %66
  %261 = fmul fast half %209, %260
  %262 = fadd fast half %258, %100
  %263 = fadd fast half %262, %107
  %264 = fmul fast half %210, %263
  %265 = fadd fast half %261, %48
  %266 = fadd fast half %264, %91
  %267 = fmul fast half %231, %265
  %268 = fmul fast half %232, %266
  %269 = fpext half %243 to float
  %270 = fpext half %255 to float
  %271 = fpext half %267 to float
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %15, i32 %16, i32 undef, float %269, float %270, float %271, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %272 = fpext half %244 to float
  %273 = fpext half %256 to float
  %274 = fpext half %268 to float
  %275 = or i32 %15, 8
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %275, i32 %16, i32 undef, float %272, float %273, float %274, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %276 = or i32 %16, 8
  %277 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %278 = extractvalue %dx.types.CBufRet.i32 %277, 1
  %279 = shl i32 %276, 16
  %280 = add i32 %279, -65536
  %281 = ashr exact i32 %280, 16
  %282 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %21, i32 %281, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %283 = extractvalue %dx.types.ResRet.f32 %282, 0
  %284 = extractvalue %dx.types.ResRet.f32 %282, 1
  %285 = extractvalue %dx.types.ResRet.f32 %282, 2
  %286 = fptrunc float %283 to half
  %287 = fptrunc float %284 to half
  %288 = fptrunc float %285 to half
  %289 = ashr exact i32 %279, 16
  %290 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %33, i32 %289, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %291 = extractvalue %dx.types.ResRet.f32 %290, 0
  %292 = extractvalue %dx.types.ResRet.f32 %290, 1
  %293 = extractvalue %dx.types.ResRet.f32 %290, 2
  %294 = fptrunc float %291 to half
  %295 = fptrunc float %292 to half
  %296 = fptrunc float %293 to half
  %297 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %21, i32 %289, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %298 = extractvalue %dx.types.ResRet.f32 %297, 0
  %299 = extractvalue %dx.types.ResRet.f32 %297, 1
  %300 = extractvalue %dx.types.ResRet.f32 %297, 2
  %301 = fptrunc float %298 to half
  %302 = fptrunc float %299 to half
  %303 = fptrunc float %300 to half
  %304 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %50, i32 %289, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %305 = extractvalue %dx.types.ResRet.f32 %304, 0
  %306 = extractvalue %dx.types.ResRet.f32 %304, 1
  %307 = extractvalue %dx.types.ResRet.f32 %304, 2
  %308 = fptrunc float %305 to half
  %309 = fptrunc float %306 to half
  %310 = fptrunc float %307 to half
  %311 = add i32 %279, 65536
  %312 = ashr exact i32 %311, 16
  %313 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %21, i32 %312, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %314 = extractvalue %dx.types.ResRet.f32 %313, 0
  %315 = extractvalue %dx.types.ResRet.f32 %313, 1
  %316 = extractvalue %dx.types.ResRet.f32 %313, 2
  %317 = fptrunc float %314 to half
  %318 = fptrunc float %315 to half
  %319 = fptrunc float %316 to half
  %320 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %68, i32 %281, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %321 = extractvalue %dx.types.ResRet.f32 %320, 0
  %322 = extractvalue %dx.types.ResRet.f32 %320, 1
  %323 = extractvalue %dx.types.ResRet.f32 %320, 2
  %324 = fptrunc float %321 to half
  %325 = fptrunc float %322 to half
  %326 = fptrunc float %323 to half
  %327 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %77, i32 %289, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %328 = extractvalue %dx.types.ResRet.f32 %327, 0
  %329 = extractvalue %dx.types.ResRet.f32 %327, 1
  %330 = extractvalue %dx.types.ResRet.f32 %327, 2
  %331 = fptrunc float %328 to half
  %332 = fptrunc float %329 to half
  %333 = fptrunc float %330 to half
  %334 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %68, i32 %289, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %335 = extractvalue %dx.types.ResRet.f32 %334, 0
  %336 = extractvalue %dx.types.ResRet.f32 %334, 1
  %337 = extractvalue %dx.types.ResRet.f32 %334, 2
  %338 = fptrunc float %335 to half
  %339 = fptrunc float %336 to half
  %340 = fptrunc float %337 to half
  %341 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %93, i32 %289, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %342 = extractvalue %dx.types.ResRet.f32 %341, 0
  %343 = extractvalue %dx.types.ResRet.f32 %341, 1
  %344 = extractvalue %dx.types.ResRet.f32 %341, 2
  %345 = fptrunc float %342 to half
  %346 = fptrunc float %343 to half
  %347 = fptrunc float %344 to half
  %348 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %68, i32 %312, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %349 = extractvalue %dx.types.ResRet.f32 %348, 0
  %350 = extractvalue %dx.types.ResRet.f32 %348, 1
  %351 = extractvalue %dx.types.ResRet.f32 %348, 2
  %352 = fptrunc float %349 to half
  %353 = fptrunc float %350 to half
  %354 = fptrunc float %351 to half
  %355 = call half @dx.op.binary.f16(i32 36, half %294, half %308)  ; FMin(a,b)
  %356 = call half @dx.op.binary.f16(i32 36, half %331, half %345)  ; FMin(a,b)
  %357 = call half @dx.op.binary.f16(i32 36, half %286, half %355)  ; FMin(a,b)
  %358 = call half @dx.op.binary.f16(i32 36, half %324, half %356)  ; FMin(a,b)
  %359 = call half @dx.op.binary.f16(i32 36, half %357, half %317)  ; FMin(a,b)
  %360 = call half @dx.op.binary.f16(i32 36, half %358, half %352)  ; FMin(a,b)
  %361 = call half @dx.op.binary.f16(i32 36, half %295, half %309)  ; FMin(a,b)
  %362 = call half @dx.op.binary.f16(i32 36, half %332, half %346)  ; FMin(a,b)
  %363 = call half @dx.op.binary.f16(i32 36, half %287, half %361)  ; FMin(a,b)
  %364 = call half @dx.op.binary.f16(i32 36, half %325, half %362)  ; FMin(a,b)
  %365 = call half @dx.op.binary.f16(i32 36, half %363, half %318)  ; FMin(a,b)
  %366 = call half @dx.op.binary.f16(i32 36, half %364, half %353)  ; FMin(a,b)
  %367 = call half @dx.op.binary.f16(i32 36, half %296, half %310)  ; FMin(a,b)
  %368 = call half @dx.op.binary.f16(i32 36, half %333, half %347)  ; FMin(a,b)
  %369 = call half @dx.op.binary.f16(i32 36, half %288, half %367)  ; FMin(a,b)
  %370 = call half @dx.op.binary.f16(i32 36, half %326, half %368)  ; FMin(a,b)
  %371 = call half @dx.op.binary.f16(i32 36, half %369, half %319)  ; FMin(a,b)
  %372 = call half @dx.op.binary.f16(i32 36, half %370, half %354)  ; FMin(a,b)
  %373 = call half @dx.op.binary.f16(i32 35, half %294, half %308)  ; FMax(a,b)
  %374 = call half @dx.op.binary.f16(i32 35, half %331, half %345)  ; FMax(a,b)
  %375 = call half @dx.op.binary.f16(i32 35, half %286, half %373)  ; FMax(a,b)
  %376 = call half @dx.op.binary.f16(i32 35, half %324, half %374)  ; FMax(a,b)
  %377 = call half @dx.op.binary.f16(i32 35, half %375, half %317)  ; FMax(a,b)
  %378 = call half @dx.op.binary.f16(i32 35, half %376, half %352)  ; FMax(a,b)
  %379 = call half @dx.op.binary.f16(i32 35, half %295, half %309)  ; FMax(a,b)
  %380 = call half @dx.op.binary.f16(i32 35, half %332, half %346)  ; FMax(a,b)
  %381 = call half @dx.op.binary.f16(i32 35, half %287, half %379)  ; FMax(a,b)
  %382 = call half @dx.op.binary.f16(i32 35, half %325, half %380)  ; FMax(a,b)
  %383 = call half @dx.op.binary.f16(i32 35, half %381, half %318)  ; FMax(a,b)
  %384 = call half @dx.op.binary.f16(i32 35, half %382, half %353)  ; FMax(a,b)
  %385 = call half @dx.op.binary.f16(i32 35, half %296, half %310)  ; FMax(a,b)
  %386 = call half @dx.op.binary.f16(i32 35, half %333, half %347)  ; FMax(a,b)
  %387 = call half @dx.op.binary.f16(i32 35, half %288, half %385)  ; FMax(a,b)
  %388 = call half @dx.op.binary.f16(i32 35, half %326, half %386)  ; FMax(a,b)
  %389 = call half @dx.op.binary.f16(i32 35, half %387, half %319)  ; FMax(a,b)
  %390 = call half @dx.op.binary.f16(i32 35, half %388, half %354)  ; FMax(a,b)
  %391 = fdiv fast half 0xH3400, %377
  %392 = fdiv fast half 0xH3400, %378
  %393 = fdiv fast half 0xH3400, %383
  %394 = fdiv fast half 0xH3400, %384
  %395 = fdiv fast half 0xH3400, %389
  %396 = fdiv fast half 0xH3400, %390
  %397 = fsub fast half 0xH3C00, %377
  %398 = fsub fast half 0xH3C00, %378
  %399 = fmul fast half %359, 0xH4400
  %400 = fmul fast half %360, 0xH4400
  %401 = fadd fast half %399, 0xHC400
  %402 = fadd fast half %400, 0xHC400
  %403 = fdiv fast half 0xH3C00, %401
  %404 = fdiv fast half 0xH3C00, %402
  %405 = fmul fast half %403, %397
  %406 = fmul fast half %404, %398
  %407 = fsub fast half 0xH3C00, %383
  %408 = fsub fast half 0xH3C00, %384
  %409 = fmul fast half %365, 0xH4400
  %410 = fmul fast half %366, 0xH4400
  %411 = fadd fast half %409, 0xHC400
  %412 = fadd fast half %410, 0xHC400
  %413 = fdiv fast half 0xH3C00, %411
  %414 = fdiv fast half 0xH3C00, %412
  %415 = fmul fast half %413, %407
  %416 = fmul fast half %414, %408
  %417 = fsub fast half 0xH3C00, %389
  %418 = fsub fast half 0xH3C00, %390
  %419 = fmul fast half %371, 0xH4400
  %420 = fmul fast half %372, 0xH4400
  %421 = fadd fast half %419, 0xHC400
  %422 = fadd fast half %420, 0xHC400
  %423 = fdiv fast half 0xH3C00, %421
  %424 = fdiv fast half 0xH3C00, %422
  %425 = fmul fast half %423, %417
  %426 = fmul fast half %424, %418
  %427 = fmul fast half %359, %391
  %428 = fsub fast half 0xH8000, %427
  %429 = fmul fast half %360, %392
  %430 = fsub fast half 0xH8000, %429
  %431 = call half @dx.op.binary.f16(i32 35, half %428, half %405)  ; FMax(a,b)
  %432 = call half @dx.op.binary.f16(i32 35, half %430, half %406)  ; FMax(a,b)
  %433 = fmul fast half %365, %393
  %434 = fsub fast half 0xH8000, %433
  %435 = fmul fast half %366, %394
  %436 = fsub fast half 0xH8000, %435
  %437 = call half @dx.op.binary.f16(i32 35, half %434, half %415)  ; FMax(a,b)
  %438 = call half @dx.op.binary.f16(i32 35, half %436, half %416)  ; FMax(a,b)
  %439 = fmul fast half %371, %395
  %440 = fsub fast half 0xH8000, %439
  %441 = fmul fast half %372, %396
  %442 = fsub fast half 0xH8000, %441
  %443 = call half @dx.op.binary.f16(i32 35, half %440, half %425)  ; FMax(a,b)
  %444 = call half @dx.op.binary.f16(i32 35, half %442, half %426)  ; FMax(a,b)
  %445 = call half @dx.op.binary.f16(i32 35, half %437, half %443)  ; FMax(a,b)
  %446 = call half @dx.op.binary.f16(i32 35, half %438, half %444)  ; FMax(a,b)
  %447 = call half @dx.op.binary.f16(i32 35, half %431, half %445)  ; FMax(a,b)
  %448 = call half @dx.op.binary.f16(i32 35, half %432, half %446)  ; FMax(a,b)
  %449 = call half @dx.op.binary.f16(i32 36, half %447, half 0xH0000)  ; FMin(a,b)
  %450 = call half @dx.op.binary.f16(i32 36, half %448, half 0xH0000)  ; FMin(a,b)
  %451 = call half @dx.op.binary.f16(i32 35, half 0xHB200, half %449)  ; FMax(a,b)
  %452 = call half @dx.op.binary.f16(i32 35, half 0xHB200, half %450)  ; FMax(a,b)
  %453 = and i32 %278, 65535
  %454 = call float @dx.op.legacyF16ToF32(i32 131, i32 %453)  ; LegacyF16ToF32(value)
  %455 = fptrunc float %454 to half
  %456 = fmul fast half %455, %451
  %457 = fmul fast half %455, %452
  %458 = fmul fast half %456, 0xH4400
  %459 = fmul fast half %457, 0xH4400
  %460 = fadd fast half %458, 0xH3C00
  %461 = fadd fast half %459, 0xH3C00
  %462 = fpext half %460 to float
  %463 = call i32 @dx.op.legacyF32ToF16(i32 130, float %462)  ; LegacyF32ToF16(value)
  %464 = sub i32 30605, %463
  %465 = and i32 %464, 65535
  %466 = call float @dx.op.legacyF16ToF32(i32 131, i32 %465)  ; LegacyF16ToF32(value)
  %467 = fptrunc float %466 to half
  %468 = fpext half %461 to float
  %469 = call i32 @dx.op.legacyF32ToF16(i32 130, float %468)  ; LegacyF32ToF16(value)
  %470 = sub i32 30605, %469
  %471 = and i32 %470, 65535
  %472 = call float @dx.op.legacyF16ToF32(i32 131, i32 %471)  ; LegacyF16ToF32(value)
  %473 = fptrunc float %472 to half
  %474 = fmul fast half %460, %467
  %475 = fmul fast half %473, %461
  %476 = fsub fast half 0xH4000, %474
  %477 = fsub fast half 0xH4000, %475
  %478 = fmul fast half %476, %467
  %479 = fmul fast half %477, %473
  %480 = fadd fast half %294, %286
  %481 = fadd fast half %331, %324
  %482 = fadd fast half %480, %308
  %483 = fadd fast half %482, %317
  %484 = fmul fast half %456, %483
  %485 = fadd fast half %481, %345
  %486 = fadd fast half %485, %352
  %487 = fmul fast half %457, %486
  %488 = fadd fast half %484, %301
  %489 = fadd fast half %487, %338
  %490 = fmul fast half %478, %488
  %491 = fmul fast half %479, %489
  %492 = fadd fast half %295, %287
  %493 = fadd fast half %332, %325
  %494 = fadd fast half %492, %309
  %495 = fadd fast half %494, %318
  %496 = fmul fast half %456, %495
  %497 = fadd fast half %493, %346
  %498 = fadd fast half %497, %353
  %499 = fmul fast half %457, %498
  %500 = fadd fast half %496, %302
  %501 = fadd fast half %499, %339
  %502 = fmul fast half %478, %500
  %503 = fmul fast half %479, %501
  %504 = fadd fast half %296, %288
  %505 = fadd fast half %333, %326
  %506 = fadd fast half %504, %310
  %507 = fadd fast half %506, %319
  %508 = fmul fast half %456, %507
  %509 = fadd fast half %505, %347
  %510 = fadd fast half %509, %354
  %511 = fmul fast half %457, %510
  %512 = fadd fast half %508, %303
  %513 = fadd fast half %511, %340
  %514 = fmul fast half %478, %512
  %515 = fmul fast half %479, %513
  %516 = fpext half %490 to float
  %517 = fpext half %502 to float
  %518 = fpext half %514 to float
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %15, i32 %276, i32 undef, float %516, float %517, float %518, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %519 = fpext half %491 to float
  %520 = fpext half %503 to float
  %521 = fpext half %515 to float
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %275, i32 %276, i32 undef, float %519, float %520, float %521, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare half @dx.op.binary.f16(i32, half, half) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.legacyF32ToF16(i32, float) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

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
!dx.entryPoints = !{!12}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !8, !10, null}
!5 = !{!6}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{!9}
!9 = !{i32 0, %"class.RWTexture2D<vector<half, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!10 = !{!11}
!11 = !{i32 0, %cb* undef, !"", i32 0, i32 0, i32 1, i32 96, null}
!12 = !{void ()* @cs_rcas, !"cs_rcas", null, !4, !13}
!13 = !{i32 0, i64 288, i32 4, !14}
!14 = !{i32 64, i32 1, i32 1}

