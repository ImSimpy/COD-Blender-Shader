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
; shader hash: 6dbfe2a210bd72586530e5935a2b5ad6
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
%"class.RWTexture2D<vector<float, 4> >" = type { <4 x float> }
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
  %18 = extractvalue %dx.types.CBufRet.i32 %17, 0
  %19 = add i32 %16, -1
  %20 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %15, i32 %19, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %21 = extractvalue %dx.types.ResRet.f32 %20, 0
  %22 = extractvalue %dx.types.ResRet.f32 %20, 1
  %23 = extractvalue %dx.types.ResRet.f32 %20, 2
  %24 = add i32 %15, -1
  %25 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %24, i32 %16, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %26 = extractvalue %dx.types.ResRet.f32 %25, 0
  %27 = extractvalue %dx.types.ResRet.f32 %25, 1
  %28 = extractvalue %dx.types.ResRet.f32 %25, 2
  %29 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %15, i32 %16, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %30 = extractvalue %dx.types.ResRet.f32 %29, 0
  %31 = extractvalue %dx.types.ResRet.f32 %29, 1
  %32 = extractvalue %dx.types.ResRet.f32 %29, 2
  %33 = add nsw i32 %15, 1
  %34 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %33, i32 %16, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %35 = extractvalue %dx.types.ResRet.f32 %34, 0
  %36 = extractvalue %dx.types.ResRet.f32 %34, 1
  %37 = extractvalue %dx.types.ResRet.f32 %34, 2
  %38 = add nsw i32 %16, 1
  %39 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %15, i32 %38, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %40 = extractvalue %dx.types.ResRet.f32 %39, 0
  %41 = extractvalue %dx.types.ResRet.f32 %39, 1
  %42 = extractvalue %dx.types.ResRet.f32 %39, 2
  %43 = fmul fast float %21, %21
  %44 = fmul fast float %22, %22
  %45 = fmul fast float %23, %23
  %46 = fmul fast float %43, %43
  %47 = fmul fast float %44, %44
  %48 = fmul fast float %45, %45
  %49 = fmul fast float %26, %26
  %50 = fmul fast float %27, %27
  %51 = fmul fast float %28, %28
  %52 = fmul fast float %49, %49
  %53 = fmul fast float %50, %50
  %54 = fmul fast float %51, %51
  %55 = fmul fast float %30, %30
  %56 = fmul fast float %31, %31
  %57 = fmul fast float %32, %32
  %58 = fmul fast float %55, %55
  %59 = fmul fast float %56, %56
  %60 = fmul fast float %57, %57
  %61 = fmul fast float %35, %35
  %62 = fmul fast float %36, %36
  %63 = fmul fast float %37, %37
  %64 = fmul fast float %61, %61
  %65 = fmul fast float %62, %62
  %66 = fmul fast float %63, %63
  %67 = fmul fast float %40, %40
  %68 = fmul fast float %41, %41
  %69 = fmul fast float %42, %42
  %70 = fmul fast float %67, %67
  %71 = fmul fast float %68, %68
  %72 = fmul fast float %69, %69
  %73 = call float @dx.op.binary.f32(i32 36, float %52, float %64)  ; FMin(a,b)
  %74 = call float @dx.op.binary.f32(i32 36, float %46, float %73)  ; FMin(a,b)
  %75 = call float @dx.op.binary.f32(i32 36, float %74, float %70)  ; FMin(a,b)
  %76 = call float @dx.op.binary.f32(i32 36, float %53, float %65)  ; FMin(a,b)
  %77 = call float @dx.op.binary.f32(i32 36, float %47, float %76)  ; FMin(a,b)
  %78 = call float @dx.op.binary.f32(i32 36, float %77, float %71)  ; FMin(a,b)
  %79 = call float @dx.op.binary.f32(i32 36, float %54, float %66)  ; FMin(a,b)
  %80 = call float @dx.op.binary.f32(i32 36, float %48, float %79)  ; FMin(a,b)
  %81 = call float @dx.op.binary.f32(i32 36, float %80, float %72)  ; FMin(a,b)
  %82 = call float @dx.op.binary.f32(i32 35, float %52, float %64)  ; FMax(a,b)
  %83 = call float @dx.op.binary.f32(i32 35, float %46, float %82)  ; FMax(a,b)
  %84 = call float @dx.op.binary.f32(i32 35, float %83, float %70)  ; FMax(a,b)
  %85 = call float @dx.op.binary.f32(i32 35, float %53, float %65)  ; FMax(a,b)
  %86 = call float @dx.op.binary.f32(i32 35, float %47, float %85)  ; FMax(a,b)
  %87 = call float @dx.op.binary.f32(i32 35, float %86, float %71)  ; FMax(a,b)
  %88 = call float @dx.op.binary.f32(i32 35, float %54, float %66)  ; FMax(a,b)
  %89 = call float @dx.op.binary.f32(i32 35, float %48, float %88)  ; FMax(a,b)
  %90 = call float @dx.op.binary.f32(i32 35, float %89, float %72)  ; FMax(a,b)
  %91 = fdiv fast float 2.500000e-01, %84
  %92 = fdiv fast float 2.500000e-01, %87
  %93 = fdiv fast float 2.500000e-01, %90
  %94 = fsub fast float 1.000000e+00, %84
  %95 = fmul fast float %75, 4.000000e+00
  %96 = fadd fast float %95, -4.000000e+00
  %97 = fdiv fast float 1.000000e+00, %96
  %98 = fmul fast float %97, %94
  %99 = fsub fast float 1.000000e+00, %87
  %100 = fmul fast float %78, 4.000000e+00
  %101 = fadd fast float %100, -4.000000e+00
  %102 = fdiv fast float 1.000000e+00, %101
  %103 = fmul fast float %102, %99
  %104 = fsub fast float 1.000000e+00, %90
  %105 = fmul fast float %81, 4.000000e+00
  %106 = fadd fast float %105, -4.000000e+00
  %107 = fdiv fast float 1.000000e+00, %106
  %108 = fmul fast float %107, %104
  %109 = fmul fast float %75, %91
  %110 = fsub fast float -0.000000e+00, %109
  %111 = call float @dx.op.binary.f32(i32 35, float %110, float %98)  ; FMax(a,b)
  %112 = fmul fast float %78, %92
  %113 = fsub fast float -0.000000e+00, %112
  %114 = call float @dx.op.binary.f32(i32 35, float %113, float %103)  ; FMax(a,b)
  %115 = fmul fast float %81, %93
  %116 = fsub fast float -0.000000e+00, %115
  %117 = call float @dx.op.binary.f32(i32 35, float %116, float %108)  ; FMax(a,b)
  %118 = call float @dx.op.binary.f32(i32 35, float %114, float %117)  ; FMax(a,b)
  %119 = call float @dx.op.binary.f32(i32 35, float %111, float %118)  ; FMax(a,b)
  %120 = call float @dx.op.binary.f32(i32 36, float %119, float 0.000000e+00)  ; FMin(a,b)
  %121 = call float @dx.op.binary.f32(i32 35, float -1.875000e-01, float %120)  ; FMax(a,b)
  %122 = bitcast i32 %18 to float
  %123 = fmul fast float %121, %122
  %124 = fmul fast float %123, 4.000000e+00
  %125 = fadd fast float %124, 1.000000e+00
  %126 = bitcast float %125 to i32
  %127 = sub i32 2129764351, %126
  %128 = bitcast i32 %127 to float
  %129 = fmul fast float %128, %125
  %130 = fsub fast float 2.000000e+00, %129
  %131 = fmul fast float %130, %128
  %132 = fadd fast float %52, %46
  %133 = fadd fast float %132, %64
  %134 = fadd fast float %133, %70
  %135 = fmul fast float %123, %134
  %136 = fadd fast float %135, %58
  %137 = fmul fast float %131, %136
  %138 = fadd fast float %53, %47
  %139 = fadd fast float %138, %65
  %140 = fadd fast float %139, %71
  %141 = fmul fast float %123, %140
  %142 = fadd fast float %141, %59
  %143 = fmul fast float %131, %142
  %144 = fadd fast float %54, %48
  %145 = fadd fast float %144, %66
  %146 = fadd fast float %145, %72
  %147 = fmul fast float %123, %146
  %148 = fadd fast float %147, %60
  %149 = fmul fast float %131, %148
  %150 = call float @dx.op.unary.f32(i32 24, float %137)  ; Sqrt(value)
  %151 = call float @dx.op.unary.f32(i32 24, float %143)  ; Sqrt(value)
  %152 = call float @dx.op.unary.f32(i32 24, float %149)  ; Sqrt(value)
  %153 = call float @dx.op.unary.f32(i32 24, float %150)  ; Sqrt(value)
  %154 = call float @dx.op.unary.f32(i32 24, float %151)  ; Sqrt(value)
  %155 = call float @dx.op.unary.f32(i32 24, float %152)  ; Sqrt(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %15, i32 %16, i32 undef, float %153, float %154, float %155, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %156 = or i32 %15, 8
  %157 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %158 = extractvalue %dx.types.CBufRet.i32 %157, 0
  %159 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %156, i32 %19, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %160 = extractvalue %dx.types.ResRet.f32 %159, 0
  %161 = extractvalue %dx.types.ResRet.f32 %159, 1
  %162 = extractvalue %dx.types.ResRet.f32 %159, 2
  %163 = add i32 %156, -1
  %164 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %163, i32 %16, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %165 = extractvalue %dx.types.ResRet.f32 %164, 0
  %166 = extractvalue %dx.types.ResRet.f32 %164, 1
  %167 = extractvalue %dx.types.ResRet.f32 %164, 2
  %168 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %156, i32 %16, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %169 = extractvalue %dx.types.ResRet.f32 %168, 0
  %170 = extractvalue %dx.types.ResRet.f32 %168, 1
  %171 = extractvalue %dx.types.ResRet.f32 %168, 2
  %172 = add i32 %156, 1
  %173 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %172, i32 %16, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %174 = extractvalue %dx.types.ResRet.f32 %173, 0
  %175 = extractvalue %dx.types.ResRet.f32 %173, 1
  %176 = extractvalue %dx.types.ResRet.f32 %173, 2
  %177 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %156, i32 %38, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %178 = extractvalue %dx.types.ResRet.f32 %177, 0
  %179 = extractvalue %dx.types.ResRet.f32 %177, 1
  %180 = extractvalue %dx.types.ResRet.f32 %177, 2
  %181 = fmul fast float %160, %160
  %182 = fmul fast float %161, %161
  %183 = fmul fast float %162, %162
  %184 = fmul fast float %181, %181
  %185 = fmul fast float %182, %182
  %186 = fmul fast float %183, %183
  %187 = fmul fast float %165, %165
  %188 = fmul fast float %166, %166
  %189 = fmul fast float %167, %167
  %190 = fmul fast float %187, %187
  %191 = fmul fast float %188, %188
  %192 = fmul fast float %189, %189
  %193 = fmul fast float %169, %169
  %194 = fmul fast float %170, %170
  %195 = fmul fast float %171, %171
  %196 = fmul fast float %193, %193
  %197 = fmul fast float %194, %194
  %198 = fmul fast float %195, %195
  %199 = fmul fast float %174, %174
  %200 = fmul fast float %175, %175
  %201 = fmul fast float %176, %176
  %202 = fmul fast float %199, %199
  %203 = fmul fast float %200, %200
  %204 = fmul fast float %201, %201
  %205 = fmul fast float %178, %178
  %206 = fmul fast float %179, %179
  %207 = fmul fast float %180, %180
  %208 = fmul fast float %205, %205
  %209 = fmul fast float %206, %206
  %210 = fmul fast float %207, %207
  %211 = call float @dx.op.binary.f32(i32 36, float %190, float %202)  ; FMin(a,b)
  %212 = call float @dx.op.binary.f32(i32 36, float %184, float %211)  ; FMin(a,b)
  %213 = call float @dx.op.binary.f32(i32 36, float %212, float %208)  ; FMin(a,b)
  %214 = call float @dx.op.binary.f32(i32 36, float %191, float %203)  ; FMin(a,b)
  %215 = call float @dx.op.binary.f32(i32 36, float %185, float %214)  ; FMin(a,b)
  %216 = call float @dx.op.binary.f32(i32 36, float %215, float %209)  ; FMin(a,b)
  %217 = call float @dx.op.binary.f32(i32 36, float %192, float %204)  ; FMin(a,b)
  %218 = call float @dx.op.binary.f32(i32 36, float %186, float %217)  ; FMin(a,b)
  %219 = call float @dx.op.binary.f32(i32 36, float %218, float %210)  ; FMin(a,b)
  %220 = call float @dx.op.binary.f32(i32 35, float %190, float %202)  ; FMax(a,b)
  %221 = call float @dx.op.binary.f32(i32 35, float %184, float %220)  ; FMax(a,b)
  %222 = call float @dx.op.binary.f32(i32 35, float %221, float %208)  ; FMax(a,b)
  %223 = call float @dx.op.binary.f32(i32 35, float %191, float %203)  ; FMax(a,b)
  %224 = call float @dx.op.binary.f32(i32 35, float %185, float %223)  ; FMax(a,b)
  %225 = call float @dx.op.binary.f32(i32 35, float %224, float %209)  ; FMax(a,b)
  %226 = call float @dx.op.binary.f32(i32 35, float %192, float %204)  ; FMax(a,b)
  %227 = call float @dx.op.binary.f32(i32 35, float %186, float %226)  ; FMax(a,b)
  %228 = call float @dx.op.binary.f32(i32 35, float %227, float %210)  ; FMax(a,b)
  %229 = fdiv fast float 2.500000e-01, %222
  %230 = fdiv fast float 2.500000e-01, %225
  %231 = fdiv fast float 2.500000e-01, %228
  %232 = fsub fast float 1.000000e+00, %222
  %233 = fmul fast float %213, 4.000000e+00
  %234 = fadd fast float %233, -4.000000e+00
  %235 = fdiv fast float 1.000000e+00, %234
  %236 = fmul fast float %235, %232
  %237 = fsub fast float 1.000000e+00, %225
  %238 = fmul fast float %216, 4.000000e+00
  %239 = fadd fast float %238, -4.000000e+00
  %240 = fdiv fast float 1.000000e+00, %239
  %241 = fmul fast float %240, %237
  %242 = fsub fast float 1.000000e+00, %228
  %243 = fmul fast float %219, 4.000000e+00
  %244 = fadd fast float %243, -4.000000e+00
  %245 = fdiv fast float 1.000000e+00, %244
  %246 = fmul fast float %245, %242
  %247 = fmul fast float %213, %229
  %248 = fsub fast float -0.000000e+00, %247
  %249 = call float @dx.op.binary.f32(i32 35, float %248, float %236)  ; FMax(a,b)
  %250 = fmul fast float %216, %230
  %251 = fsub fast float -0.000000e+00, %250
  %252 = call float @dx.op.binary.f32(i32 35, float %251, float %241)  ; FMax(a,b)
  %253 = fmul fast float %219, %231
  %254 = fsub fast float -0.000000e+00, %253
  %255 = call float @dx.op.binary.f32(i32 35, float %254, float %246)  ; FMax(a,b)
  %256 = call float @dx.op.binary.f32(i32 35, float %252, float %255)  ; FMax(a,b)
  %257 = call float @dx.op.binary.f32(i32 35, float %249, float %256)  ; FMax(a,b)
  %258 = call float @dx.op.binary.f32(i32 36, float %257, float 0.000000e+00)  ; FMin(a,b)
  %259 = call float @dx.op.binary.f32(i32 35, float -1.875000e-01, float %258)  ; FMax(a,b)
  %260 = bitcast i32 %158 to float
  %261 = fmul fast float %259, %260
  %262 = fmul fast float %261, 4.000000e+00
  %263 = fadd fast float %262, 1.000000e+00
  %264 = bitcast float %263 to i32
  %265 = sub i32 2129764351, %264
  %266 = bitcast i32 %265 to float
  %267 = fmul fast float %266, %263
  %268 = fsub fast float 2.000000e+00, %267
  %269 = fmul fast float %268, %266
  %270 = fadd fast float %190, %184
  %271 = fadd fast float %270, %202
  %272 = fadd fast float %271, %208
  %273 = fmul fast float %261, %272
  %274 = fadd fast float %273, %196
  %275 = fmul fast float %269, %274
  %276 = fadd fast float %191, %185
  %277 = fadd fast float %276, %203
  %278 = fadd fast float %277, %209
  %279 = fmul fast float %261, %278
  %280 = fadd fast float %279, %197
  %281 = fmul fast float %269, %280
  %282 = fadd fast float %192, %186
  %283 = fadd fast float %282, %204
  %284 = fadd fast float %283, %210
  %285 = fmul fast float %261, %284
  %286 = fadd fast float %285, %198
  %287 = fmul fast float %269, %286
  %288 = call float @dx.op.unary.f32(i32 24, float %275)  ; Sqrt(value)
  %289 = call float @dx.op.unary.f32(i32 24, float %281)  ; Sqrt(value)
  %290 = call float @dx.op.unary.f32(i32 24, float %287)  ; Sqrt(value)
  %291 = call float @dx.op.unary.f32(i32 24, float %288)  ; Sqrt(value)
  %292 = call float @dx.op.unary.f32(i32 24, float %289)  ; Sqrt(value)
  %293 = call float @dx.op.unary.f32(i32 24, float %290)  ; Sqrt(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %156, i32 %16, i32 undef, float %291, float %292, float %293, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %294 = or i32 %16, 8
  %295 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %296 = extractvalue %dx.types.CBufRet.i32 %295, 0
  %297 = add i32 %294, -1
  %298 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %156, i32 %297, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %299 = extractvalue %dx.types.ResRet.f32 %298, 0
  %300 = extractvalue %dx.types.ResRet.f32 %298, 1
  %301 = extractvalue %dx.types.ResRet.f32 %298, 2
  %302 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %163, i32 %294, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %303 = extractvalue %dx.types.ResRet.f32 %302, 0
  %304 = extractvalue %dx.types.ResRet.f32 %302, 1
  %305 = extractvalue %dx.types.ResRet.f32 %302, 2
  %306 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %156, i32 %294, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %307 = extractvalue %dx.types.ResRet.f32 %306, 0
  %308 = extractvalue %dx.types.ResRet.f32 %306, 1
  %309 = extractvalue %dx.types.ResRet.f32 %306, 2
  %310 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %172, i32 %294, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %311 = extractvalue %dx.types.ResRet.f32 %310, 0
  %312 = extractvalue %dx.types.ResRet.f32 %310, 1
  %313 = extractvalue %dx.types.ResRet.f32 %310, 2
  %314 = add i32 %294, 1
  %315 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %156, i32 %314, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %316 = extractvalue %dx.types.ResRet.f32 %315, 0
  %317 = extractvalue %dx.types.ResRet.f32 %315, 1
  %318 = extractvalue %dx.types.ResRet.f32 %315, 2
  %319 = fmul fast float %299, %299
  %320 = fmul fast float %300, %300
  %321 = fmul fast float %301, %301
  %322 = fmul fast float %319, %319
  %323 = fmul fast float %320, %320
  %324 = fmul fast float %321, %321
  %325 = fmul fast float %303, %303
  %326 = fmul fast float %304, %304
  %327 = fmul fast float %305, %305
  %328 = fmul fast float %325, %325
  %329 = fmul fast float %326, %326
  %330 = fmul fast float %327, %327
  %331 = fmul fast float %307, %307
  %332 = fmul fast float %308, %308
  %333 = fmul fast float %309, %309
  %334 = fmul fast float %331, %331
  %335 = fmul fast float %332, %332
  %336 = fmul fast float %333, %333
  %337 = fmul fast float %311, %311
  %338 = fmul fast float %312, %312
  %339 = fmul fast float %313, %313
  %340 = fmul fast float %337, %337
  %341 = fmul fast float %338, %338
  %342 = fmul fast float %339, %339
  %343 = fmul fast float %316, %316
  %344 = fmul fast float %317, %317
  %345 = fmul fast float %318, %318
  %346 = fmul fast float %343, %343
  %347 = fmul fast float %344, %344
  %348 = fmul fast float %345, %345
  %349 = call float @dx.op.binary.f32(i32 36, float %328, float %340)  ; FMin(a,b)
  %350 = call float @dx.op.binary.f32(i32 36, float %322, float %349)  ; FMin(a,b)
  %351 = call float @dx.op.binary.f32(i32 36, float %350, float %346)  ; FMin(a,b)
  %352 = call float @dx.op.binary.f32(i32 36, float %329, float %341)  ; FMin(a,b)
  %353 = call float @dx.op.binary.f32(i32 36, float %323, float %352)  ; FMin(a,b)
  %354 = call float @dx.op.binary.f32(i32 36, float %353, float %347)  ; FMin(a,b)
  %355 = call float @dx.op.binary.f32(i32 36, float %330, float %342)  ; FMin(a,b)
  %356 = call float @dx.op.binary.f32(i32 36, float %324, float %355)  ; FMin(a,b)
  %357 = call float @dx.op.binary.f32(i32 36, float %356, float %348)  ; FMin(a,b)
  %358 = call float @dx.op.binary.f32(i32 35, float %328, float %340)  ; FMax(a,b)
  %359 = call float @dx.op.binary.f32(i32 35, float %322, float %358)  ; FMax(a,b)
  %360 = call float @dx.op.binary.f32(i32 35, float %359, float %346)  ; FMax(a,b)
  %361 = call float @dx.op.binary.f32(i32 35, float %329, float %341)  ; FMax(a,b)
  %362 = call float @dx.op.binary.f32(i32 35, float %323, float %361)  ; FMax(a,b)
  %363 = call float @dx.op.binary.f32(i32 35, float %362, float %347)  ; FMax(a,b)
  %364 = call float @dx.op.binary.f32(i32 35, float %330, float %342)  ; FMax(a,b)
  %365 = call float @dx.op.binary.f32(i32 35, float %324, float %364)  ; FMax(a,b)
  %366 = call float @dx.op.binary.f32(i32 35, float %365, float %348)  ; FMax(a,b)
  %367 = fdiv fast float 2.500000e-01, %360
  %368 = fdiv fast float 2.500000e-01, %363
  %369 = fdiv fast float 2.500000e-01, %366
  %370 = fsub fast float 1.000000e+00, %360
  %371 = fmul fast float %351, 4.000000e+00
  %372 = fadd fast float %371, -4.000000e+00
  %373 = fdiv fast float 1.000000e+00, %372
  %374 = fmul fast float %373, %370
  %375 = fsub fast float 1.000000e+00, %363
  %376 = fmul fast float %354, 4.000000e+00
  %377 = fadd fast float %376, -4.000000e+00
  %378 = fdiv fast float 1.000000e+00, %377
  %379 = fmul fast float %378, %375
  %380 = fsub fast float 1.000000e+00, %366
  %381 = fmul fast float %357, 4.000000e+00
  %382 = fadd fast float %381, -4.000000e+00
  %383 = fdiv fast float 1.000000e+00, %382
  %384 = fmul fast float %383, %380
  %385 = fmul fast float %351, %367
  %386 = fsub fast float -0.000000e+00, %385
  %387 = call float @dx.op.binary.f32(i32 35, float %386, float %374)  ; FMax(a,b)
  %388 = fmul fast float %354, %368
  %389 = fsub fast float -0.000000e+00, %388
  %390 = call float @dx.op.binary.f32(i32 35, float %389, float %379)  ; FMax(a,b)
  %391 = fmul fast float %357, %369
  %392 = fsub fast float -0.000000e+00, %391
  %393 = call float @dx.op.binary.f32(i32 35, float %392, float %384)  ; FMax(a,b)
  %394 = call float @dx.op.binary.f32(i32 35, float %390, float %393)  ; FMax(a,b)
  %395 = call float @dx.op.binary.f32(i32 35, float %387, float %394)  ; FMax(a,b)
  %396 = call float @dx.op.binary.f32(i32 36, float %395, float 0.000000e+00)  ; FMin(a,b)
  %397 = call float @dx.op.binary.f32(i32 35, float -1.875000e-01, float %396)  ; FMax(a,b)
  %398 = bitcast i32 %296 to float
  %399 = fmul fast float %397, %398
  %400 = fmul fast float %399, 4.000000e+00
  %401 = fadd fast float %400, 1.000000e+00
  %402 = bitcast float %401 to i32
  %403 = sub i32 2129764351, %402
  %404 = bitcast i32 %403 to float
  %405 = fmul fast float %404, %401
  %406 = fsub fast float 2.000000e+00, %405
  %407 = fmul fast float %406, %404
  %408 = fadd fast float %328, %322
  %409 = fadd fast float %408, %340
  %410 = fadd fast float %409, %346
  %411 = fmul fast float %399, %410
  %412 = fadd fast float %411, %334
  %413 = fmul fast float %407, %412
  %414 = fadd fast float %329, %323
  %415 = fadd fast float %414, %341
  %416 = fadd fast float %415, %347
  %417 = fmul fast float %399, %416
  %418 = fadd fast float %417, %335
  %419 = fmul fast float %407, %418
  %420 = fadd fast float %330, %324
  %421 = fadd fast float %420, %342
  %422 = fadd fast float %421, %348
  %423 = fmul fast float %399, %422
  %424 = fadd fast float %423, %336
  %425 = fmul fast float %407, %424
  %426 = call float @dx.op.unary.f32(i32 24, float %413)  ; Sqrt(value)
  %427 = call float @dx.op.unary.f32(i32 24, float %419)  ; Sqrt(value)
  %428 = call float @dx.op.unary.f32(i32 24, float %425)  ; Sqrt(value)
  %429 = call float @dx.op.unary.f32(i32 24, float %426)  ; Sqrt(value)
  %430 = call float @dx.op.unary.f32(i32 24, float %427)  ; Sqrt(value)
  %431 = call float @dx.op.unary.f32(i32 24, float %428)  ; Sqrt(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %156, i32 %294, i32 undef, float %429, float %430, float %431, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %432 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %433 = extractvalue %dx.types.CBufRet.i32 %432, 0
  %434 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %15, i32 %297, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %435 = extractvalue %dx.types.ResRet.f32 %434, 0
  %436 = extractvalue %dx.types.ResRet.f32 %434, 1
  %437 = extractvalue %dx.types.ResRet.f32 %434, 2
  %438 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %24, i32 %294, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %439 = extractvalue %dx.types.ResRet.f32 %438, 0
  %440 = extractvalue %dx.types.ResRet.f32 %438, 1
  %441 = extractvalue %dx.types.ResRet.f32 %438, 2
  %442 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %15, i32 %294, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %443 = extractvalue %dx.types.ResRet.f32 %442, 0
  %444 = extractvalue %dx.types.ResRet.f32 %442, 1
  %445 = extractvalue %dx.types.ResRet.f32 %442, 2
  %446 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %33, i32 %294, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %447 = extractvalue %dx.types.ResRet.f32 %446, 0
  %448 = extractvalue %dx.types.ResRet.f32 %446, 1
  %449 = extractvalue %dx.types.ResRet.f32 %446, 2
  %450 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %15, i32 %314, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %451 = extractvalue %dx.types.ResRet.f32 %450, 0
  %452 = extractvalue %dx.types.ResRet.f32 %450, 1
  %453 = extractvalue %dx.types.ResRet.f32 %450, 2
  %454 = fmul fast float %435, %435
  %455 = fmul fast float %436, %436
  %456 = fmul fast float %437, %437
  %457 = fmul fast float %454, %454
  %458 = fmul fast float %455, %455
  %459 = fmul fast float %456, %456
  %460 = fmul fast float %439, %439
  %461 = fmul fast float %440, %440
  %462 = fmul fast float %441, %441
  %463 = fmul fast float %460, %460
  %464 = fmul fast float %461, %461
  %465 = fmul fast float %462, %462
  %466 = fmul fast float %443, %443
  %467 = fmul fast float %444, %444
  %468 = fmul fast float %445, %445
  %469 = fmul fast float %466, %466
  %470 = fmul fast float %467, %467
  %471 = fmul fast float %468, %468
  %472 = fmul fast float %447, %447
  %473 = fmul fast float %448, %448
  %474 = fmul fast float %449, %449
  %475 = fmul fast float %472, %472
  %476 = fmul fast float %473, %473
  %477 = fmul fast float %474, %474
  %478 = fmul fast float %451, %451
  %479 = fmul fast float %452, %452
  %480 = fmul fast float %453, %453
  %481 = fmul fast float %478, %478
  %482 = fmul fast float %479, %479
  %483 = fmul fast float %480, %480
  %484 = call float @dx.op.binary.f32(i32 36, float %463, float %475)  ; FMin(a,b)
  %485 = call float @dx.op.binary.f32(i32 36, float %457, float %484)  ; FMin(a,b)
  %486 = call float @dx.op.binary.f32(i32 36, float %485, float %481)  ; FMin(a,b)
  %487 = call float @dx.op.binary.f32(i32 36, float %464, float %476)  ; FMin(a,b)
  %488 = call float @dx.op.binary.f32(i32 36, float %458, float %487)  ; FMin(a,b)
  %489 = call float @dx.op.binary.f32(i32 36, float %488, float %482)  ; FMin(a,b)
  %490 = call float @dx.op.binary.f32(i32 36, float %465, float %477)  ; FMin(a,b)
  %491 = call float @dx.op.binary.f32(i32 36, float %459, float %490)  ; FMin(a,b)
  %492 = call float @dx.op.binary.f32(i32 36, float %491, float %483)  ; FMin(a,b)
  %493 = call float @dx.op.binary.f32(i32 35, float %463, float %475)  ; FMax(a,b)
  %494 = call float @dx.op.binary.f32(i32 35, float %457, float %493)  ; FMax(a,b)
  %495 = call float @dx.op.binary.f32(i32 35, float %494, float %481)  ; FMax(a,b)
  %496 = call float @dx.op.binary.f32(i32 35, float %464, float %476)  ; FMax(a,b)
  %497 = call float @dx.op.binary.f32(i32 35, float %458, float %496)  ; FMax(a,b)
  %498 = call float @dx.op.binary.f32(i32 35, float %497, float %482)  ; FMax(a,b)
  %499 = call float @dx.op.binary.f32(i32 35, float %465, float %477)  ; FMax(a,b)
  %500 = call float @dx.op.binary.f32(i32 35, float %459, float %499)  ; FMax(a,b)
  %501 = call float @dx.op.binary.f32(i32 35, float %500, float %483)  ; FMax(a,b)
  %502 = fdiv fast float 2.500000e-01, %495
  %503 = fdiv fast float 2.500000e-01, %498
  %504 = fdiv fast float 2.500000e-01, %501
  %505 = fsub fast float 1.000000e+00, %495
  %506 = fmul fast float %486, 4.000000e+00
  %507 = fadd fast float %506, -4.000000e+00
  %508 = fdiv fast float 1.000000e+00, %507
  %509 = fmul fast float %508, %505
  %510 = fsub fast float 1.000000e+00, %498
  %511 = fmul fast float %489, 4.000000e+00
  %512 = fadd fast float %511, -4.000000e+00
  %513 = fdiv fast float 1.000000e+00, %512
  %514 = fmul fast float %513, %510
  %515 = fsub fast float 1.000000e+00, %501
  %516 = fmul fast float %492, 4.000000e+00
  %517 = fadd fast float %516, -4.000000e+00
  %518 = fdiv fast float 1.000000e+00, %517
  %519 = fmul fast float %518, %515
  %520 = fmul fast float %486, %502
  %521 = fsub fast float -0.000000e+00, %520
  %522 = call float @dx.op.binary.f32(i32 35, float %521, float %509)  ; FMax(a,b)
  %523 = fmul fast float %489, %503
  %524 = fsub fast float -0.000000e+00, %523
  %525 = call float @dx.op.binary.f32(i32 35, float %524, float %514)  ; FMax(a,b)
  %526 = fmul fast float %492, %504
  %527 = fsub fast float -0.000000e+00, %526
  %528 = call float @dx.op.binary.f32(i32 35, float %527, float %519)  ; FMax(a,b)
  %529 = call float @dx.op.binary.f32(i32 35, float %525, float %528)  ; FMax(a,b)
  %530 = call float @dx.op.binary.f32(i32 35, float %522, float %529)  ; FMax(a,b)
  %531 = call float @dx.op.binary.f32(i32 36, float %530, float 0.000000e+00)  ; FMin(a,b)
  %532 = call float @dx.op.binary.f32(i32 35, float -1.875000e-01, float %531)  ; FMax(a,b)
  %533 = bitcast i32 %433 to float
  %534 = fmul fast float %532, %533
  %535 = fmul fast float %534, 4.000000e+00
  %536 = fadd fast float %535, 1.000000e+00
  %537 = bitcast float %536 to i32
  %538 = sub i32 2129764351, %537
  %539 = bitcast i32 %538 to float
  %540 = fmul fast float %539, %536
  %541 = fsub fast float 2.000000e+00, %540
  %542 = fmul fast float %541, %539
  %543 = fadd fast float %463, %457
  %544 = fadd fast float %543, %475
  %545 = fadd fast float %544, %481
  %546 = fmul fast float %534, %545
  %547 = fadd fast float %546, %469
  %548 = fmul fast float %542, %547
  %549 = fadd fast float %464, %458
  %550 = fadd fast float %549, %476
  %551 = fadd fast float %550, %482
  %552 = fmul fast float %534, %551
  %553 = fadd fast float %552, %470
  %554 = fmul fast float %542, %553
  %555 = fadd fast float %465, %459
  %556 = fadd fast float %555, %477
  %557 = fadd fast float %556, %483
  %558 = fmul fast float %534, %557
  %559 = fadd fast float %558, %471
  %560 = fmul fast float %542, %559
  %561 = call float @dx.op.unary.f32(i32 24, float %548)  ; Sqrt(value)
  %562 = call float @dx.op.unary.f32(i32 24, float %554)  ; Sqrt(value)
  %563 = call float @dx.op.unary.f32(i32 24, float %560)  ; Sqrt(value)
  %564 = call float @dx.op.unary.f32(i32 24, float %561)  ; Sqrt(value)
  %565 = call float @dx.op.unary.f32(i32 24, float %562)  ; Sqrt(value)
  %566 = call float @dx.op.unary.f32(i32 24, float %563)  ; Sqrt(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %15, i32 %294, i32 undef, float %564, float %565, float %566, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

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
!9 = !{i32 0, %"class.RWTexture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!10 = !{!11}
!11 = !{i32 0, %cb* undef, !"", i32 0, i32 0, i32 1, i32 96, null}
!12 = !{void ()* @cs_rcas, !"cs_rcas", null, !4, !13}
!13 = !{i32 0, i64 256, i32 4, !14}
!14 = !{i32 64, i32 1, i32 1}

