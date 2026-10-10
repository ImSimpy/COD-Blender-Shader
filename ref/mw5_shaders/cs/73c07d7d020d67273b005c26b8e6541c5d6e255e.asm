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
; shader hash: daf247cd355dd1bdc08df6e7d6b410fa
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
;                                   texture     f32     2darray      T0             t0     1
;                                   texture    byte         r/o      T1             t2     1
;                                       UAV     f32     2darray      U0             u2     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.RWTexture2DArray<vector<float, 3> >" = type { <3 x float> }
%ReflectionProbeFilteringComputeConstants = type { i32, i32, i32, i32, i32, float, float, float }

define void @cs_reflection_probe_filtering_octahedron_brute_force() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %6 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %7 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1, i32 0)  ; GetDimensions(handle,mipLevel)
  %8 = extractvalue %dx.types.Dimensions %7, 0
  %9 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %10 = extractvalue %dx.types.CBufRet.f32 %9, 3
  %11 = uitofp i32 %8 to float
  %12 = fdiv fast float 1.000000e+00, %11
  %13 = uitofp i32 %5 to float
  %14 = uitofp i32 %6 to float
  %15 = fadd fast float %13, 5.000000e-01
  %16 = fadd fast float %14, 5.000000e-01
  %17 = fmul fast float %12, %15
  %18 = fmul fast float %12, %16
  %19 = fptosi float %10 to i32
  %20 = add nsw i32 %19, -3
  %21 = call i32 @dx.op.binary.i32(i32 37, i32 %20, i32 0)  ; IMax(a,b)
  %22 = and i32 %21, 31
  %23 = lshr i32 4, %22
  %24 = sitofp i32 %23 to float
  %25 = fmul fast float %24, 2.000000e+00
  %26 = fsub fast float %11, %25
  %27 = fdiv fast float %11, %26
  %28 = fadd fast float %17, -5.000000e-01
  %29 = fmul fast float %27, %28
  %30 = fadd fast float %18, -5.000000e-01
  %31 = fmul fast float %27, %30
  %32 = fadd fast float %29, 5.000000e-01
  %33 = fadd fast float %31, 5.000000e-01
  %34 = call float @dx.op.unary.f32(i32 7, float %32)  ; Saturate(value)
  %35 = fcmp fast une float %34, %32
  %36 = call float @dx.op.unary.f32(i32 7, float %33)  ; Saturate(value)
  %37 = fcmp fast une float %36, %33
  %38 = or i1 %35, %37
  %39 = and i1 %35, %37
  %40 = fadd fast float %29, 1.500000e+00
  %41 = fadd fast float %31, 1.500000e+00
  %42 = call float @dx.op.unary.f32(i32 27, float %40)  ; Round_ni(value)
  %43 = call float @dx.op.unary.f32(i32 27, float %41)  ; Round_ni(value)
  %44 = fsub fast float %42, %32
  %45 = fsub fast float %43, %33
  %46 = select i1 %38, float %44, float %32
  %47 = select i1 %38, float %45, float %33
  %48 = call float @dx.op.unary.f32(i32 22, float %40)  ; Frc(value)
  %49 = call float @dx.op.unary.f32(i32 22, float %41)  ; Frc(value)
  %50 = select i1 %39, float %48, float %46
  %51 = select i1 %39, float %49, float %47
  %52 = fmul fast float %50, 2.000000e+00
  %53 = fmul fast float %51, 2.000000e+00
  %54 = fadd fast float %52, -1.000000e+00
  %55 = fadd fast float %53, -1.000000e+00
  %56 = call float @dx.op.unary.f32(i32 6, float %54)  ; FAbs(value)
  %57 = fsub fast float 1.000000e+00, %56
  %58 = call float @dx.op.unary.f32(i32 6, float %55)  ; FAbs(value)
  %59 = fsub fast float %57, %58
  %60 = fsub fast float 1.000000e+00, %58
  %61 = fcmp fast oge float %54, 0.000000e+00
  %62 = fcmp fast oge float %55, 0.000000e+00
  %63 = select i1 %61, float 1.000000e+00, float -1.000000e+00
  %64 = select i1 %62, float 1.000000e+00, float -1.000000e+00
  %65 = fcmp fast olt float %59, 0.000000e+00
  %66 = fmul fast float %60, %63
  %67 = fmul fast float %57, %64
  %68 = select i1 %65, float %66, float %54
  %69 = select i1 %65, float %67, float %55
  %70 = call float @dx.op.dot3.f32(i32 55, float %68, float %69, float %59, float %68, float %69, float %59)  ; Dot3(ax,ay,az,bx,by,bz)
  %71 = call float @dx.op.unary.f32(i32 25, float %70)  ; Rsqrt(value)
  %72 = fmul fast float %68, %71
  %73 = fmul fast float %69, %71
  %74 = fmul fast float %71, %59
  %75 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %76 = extractvalue %dx.types.CBufRet.i32 %75, 2
  %77 = extractvalue %dx.types.CBufRet.f32 %9, 1
  %78 = fsub fast float 1.000000e+00, %77
  %79 = call float @dx.op.binary.f32(i32 35, float %78, float 0x3F847AE140000000)  ; FMax(a,b)
  %80 = fmul fast float %79, %79
  %81 = fmul fast float %80, %80
  %82 = uitofp i32 %76 to float
  %83 = fdiv fast float 1.000000e+00, %82
  br label %84

; <label>:84                                      ; preds = %268, %0
  %85 = phi float [ 0.000000e+00, %0 ], [ %269, %268 ]
  %86 = phi float [ 0.000000e+00, %0 ], [ %270, %268 ]
  %87 = phi float [ 0.000000e+00, %0 ], [ %271, %268 ]
  %88 = phi float [ 0.000000e+00, %0 ], [ %272, %268 ]
  %89 = phi i32 [ 0, %0 ], [ %273, %268 ]
  %90 = icmp eq i32 %76, 0
  br i1 %90, label %268, label %91

; <label>:91                                      ; preds = %84
  br label %92

; <label>:92                                      ; preds = %264, %91
  %93 = phi float [ %258, %264 ], [ %85, %91 ]
  %94 = phi float [ %259, %264 ], [ %86, %91 ]
  %95 = phi float [ %260, %264 ], [ %87, %91 ]
  %96 = phi float [ %261, %264 ], [ %88, %91 ]
  %97 = phi i32 [ %265, %264 ], [ 0, %91 ]
  br label %98

; <label>:98                                      ; preds = %257, %92
  %99 = phi float [ %258, %257 ], [ %93, %92 ]
  %100 = phi float [ %259, %257 ], [ %94, %92 ]
  %101 = phi float [ %260, %257 ], [ %95, %92 ]
  %102 = phi float [ %261, %257 ], [ %96, %92 ]
  %103 = phi i32 [ %262, %257 ], [ 0, %92 ]
  %104 = sitofp i32 %103 to float
  %105 = sitofp i32 %97 to float
  %106 = fadd fast float %104, 5.000000e-01
  %107 = fadd fast float %105, 5.000000e-01
  %108 = fmul fast float %106, %83
  %109 = fmul fast float %107, %83
  %110 = fmul fast float %108, 2.000000e+00
  %111 = fmul fast float %109, 2.000000e+00
  %112 = fadd fast float %110, -1.000000e+00
  %113 = fadd fast float %111, -1.000000e+00
  switch i32 %89, label %114 [
    i32 5, label %123
    i32 1, label %117
    i32 2, label %126
    i32 3, label %119
    i32 4, label %121
  ], !dx.controlflow.hints !16

; <label>:114                                     ; preds = %98
  %115 = fsub fast float -0.000000e+00, %113
  %116 = fsub fast float -0.000000e+00, %112
  br label %126

; <label>:117                                     ; preds = %98
  %118 = fsub fast float -0.000000e+00, %113
  br label %126

; <label>:119                                     ; preds = %98
  %120 = fsub fast float -0.000000e+00, %113
  br label %126

; <label>:121                                     ; preds = %98
  %122 = fsub fast float -0.000000e+00, %113
  br label %126

; <label>:123                                     ; preds = %98
  %124 = fsub fast float -0.000000e+00, %112
  %125 = fsub fast float -0.000000e+00, %113
  br label %126

; <label>:126                                     ; preds = %123, %121, %119, %117, %114, %98
  %127 = phi float [ 1.000000e+00, %114 ], [ %112, %121 ], [ %112, %119 ], [ -1.000000e+00, %117 ], [ %124, %123 ], [ %112, %98 ]
  %128 = phi float [ %115, %114 ], [ %122, %121 ], [ -1.000000e+00, %119 ], [ %118, %117 ], [ %125, %123 ], [ 1.000000e+00, %98 ]
  %129 = phi float [ %116, %114 ], [ 1.000000e+00, %121 ], [ %120, %119 ], [ %112, %117 ], [ -1.000000e+00, %123 ], [ %113, %98 ]
  %130 = call float @dx.op.dot3.f32(i32 55, float %127, float %128, float %129, float %127, float %128, float %129)  ; Dot3(ax,ay,az,bx,by,bz)
  %131 = call float @dx.op.unary.f32(i32 25, float %130)  ; Rsqrt(value)
  %132 = fmul fast float %131, %127
  %133 = fmul fast float %131, %128
  %134 = fmul fast float %131, %129
  %135 = call float @dx.op.dot3.f32(i32 55, float %72, float %73, float %74, float %132, float %133, float %134)  ; Dot3(ax,ay,az,bx,by,bz)
  %136 = fcmp fast ogt float %135, 0.000000e+00
  br i1 %136, label %137, label %257, !dx.controlflow.hints !17

; <label>:137                                     ; preds = %126
  %138 = fadd fast float %132, %72
  %139 = fadd fast float %133, %73
  %140 = fadd fast float %134, %74
  %141 = call float @dx.op.dot3.f32(i32 55, float %138, float %139, float %140, float %138, float %139, float %140)  ; Dot3(ax,ay,az,bx,by,bz)
  %142 = call float @dx.op.unary.f32(i32 25, float %141)  ; Rsqrt(value)
  %143 = fmul fast float %142, %138
  %144 = fmul fast float %142, %139
  %145 = fmul fast float %142, %140
  %146 = call float @dx.op.dot3.f32(i32 55, float %72, float %73, float %74, float %143, float %144, float %145)  ; Dot3(ax,ay,az,bx,by,bz)
  %147 = call float @dx.op.unary.f32(i32 7, float %146)  ; Saturate(value)
  %148 = fadd fast float %81, -1.000000e+00
  %149 = fmul fast float %147, %147
  %150 = fmul fast float %149, %148
  %151 = fadd fast float %150, 1.000000e+00
  %152 = fmul fast float %151, %151
  %153 = fdiv fast float %81, %152
  %154 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %103, i32 %97, i32 %89, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %155 = extractvalue %dx.types.ResRet.f32 %154, 0
  %156 = extractvalue %dx.types.ResRet.f32 %154, 1
  %157 = extractvalue %dx.types.ResRet.f32 %154, 2
  %158 = fsub fast float %112, %83
  %159 = fsub fast float %113, %83
  %160 = fadd fast float %112, %83
  %161 = fadd fast float %113, %83
  %162 = fmul fast float %158, %158
  %163 = fmul fast float %159, %159
  %164 = fadd fast float %163, 1.000000e+00
  %165 = fadd fast float %164, %162
  %166 = call float @dx.op.unary.f32(i32 24, float %165)  ; Sqrt(value)
  %167 = fmul fast float %158, %159
  %168 = fdiv fast float %167, %166
  %169 = call float @dx.op.unary.f32(i32 17, float %168)  ; Atan(value)
  %170 = fadd fast float %169, 0x400921FB60000000
  %171 = fadd fast float %169, 0xC00921FB60000000
  %172 = fcmp fast olt float %166, 0.000000e+00
  %173 = fcmp fast oeq float %166, 0.000000e+00
  %174 = fcmp fast oge float %167, 0.000000e+00
  %175 = fcmp fast olt float %167, 0.000000e+00
  %176 = and i1 %174, %172
  %177 = select i1 %176, float %170, float %169
  %178 = and i1 %175, %172
  %179 = select i1 %178, float %171, float %177
  %180 = and i1 %175, %173
  %181 = select i1 %180, float 0xBFF921FB60000000, float %179
  %182 = and i1 %174, %173
  %183 = select i1 %182, float 0x3FF921FB60000000, float %181
  %184 = fmul fast float %160, %160
  %185 = fadd fast float %164, %184
  %186 = call float @dx.op.unary.f32(i32 24, float %185)  ; Sqrt(value)
  %187 = fmul fast float %160, %159
  %188 = fdiv fast float %187, %186
  %189 = call float @dx.op.unary.f32(i32 17, float %188)  ; Atan(value)
  %190 = fadd fast float %189, 0x400921FB60000000
  %191 = fadd fast float %189, 0xC00921FB60000000
  %192 = fcmp fast olt float %186, 0.000000e+00
  %193 = fcmp fast oeq float %186, 0.000000e+00
  %194 = fcmp fast oge float %187, 0.000000e+00
  %195 = fcmp fast olt float %187, 0.000000e+00
  %196 = and i1 %194, %192
  %197 = select i1 %196, float %190, float %189
  %198 = and i1 %195, %192
  %199 = select i1 %198, float %191, float %197
  %200 = and i1 %195, %193
  %201 = and i1 %194, %193
  %202 = fmul fast float %161, %161
  %203 = fadd fast float %202, 1.000000e+00
  %204 = fadd fast float %203, %162
  %205 = call float @dx.op.unary.f32(i32 24, float %204)  ; Sqrt(value)
  %206 = fmul fast float %158, %161
  %207 = fdiv fast float %206, %205
  %208 = call float @dx.op.unary.f32(i32 17, float %207)  ; Atan(value)
  %209 = fadd fast float %208, 0x400921FB60000000
  %210 = fadd fast float %208, 0xC00921FB60000000
  %211 = fcmp fast olt float %205, 0.000000e+00
  %212 = fcmp fast oeq float %205, 0.000000e+00
  %213 = fcmp fast oge float %206, 0.000000e+00
  %214 = fcmp fast olt float %206, 0.000000e+00
  %215 = and i1 %213, %211
  %216 = select i1 %215, float %209, float %208
  %217 = and i1 %214, %211
  %218 = select i1 %217, float %210, float %216
  %219 = and i1 %214, %212
  %220 = and i1 %213, %212
  %221 = fadd fast float %203, %184
  %222 = call float @dx.op.unary.f32(i32 24, float %221)  ; Sqrt(value)
  %223 = fmul fast float %160, %161
  %224 = fdiv fast float %223, %222
  %225 = call float @dx.op.unary.f32(i32 17, float %224)  ; Atan(value)
  %226 = fadd fast float %225, 0x400921FB60000000
  %227 = fadd fast float %225, 0xC00921FB60000000
  %228 = fcmp fast olt float %222, 0.000000e+00
  %229 = fcmp fast oeq float %222, 0.000000e+00
  %230 = fcmp fast oge float %223, 0.000000e+00
  %231 = fcmp fast olt float %223, 0.000000e+00
  %232 = and i1 %230, %228
  %233 = select i1 %232, float %226, float %225
  %234 = and i1 %231, %228
  %235 = select i1 %234, float %227, float %233
  %236 = and i1 %231, %229
  %237 = select i1 %236, float 0xBFF921FB60000000, float %235
  %238 = and i1 %230, %229
  %239 = select i1 %238, float 0x3FF921FB60000000, float %237
  %240 = fsub fast float -0.000000e+00, %199
  %241 = select i1 %200, float 0x3FF921FB60000000, float %240
  %242 = select i1 %201, float 0xBFF921FB60000000, float %241
  %243 = fadd fast float %242, %183
  %244 = fsub fast float -0.000000e+00, %218
  %245 = select i1 %219, float 0x3FF921FB60000000, float %244
  %246 = select i1 %220, float 0xBFF921FB60000000, float %245
  %247 = fadd fast float %243, %246
  %248 = fadd fast float %247, %239
  %249 = fmul fast float %248, %153
  %250 = fmul fast float %249, %155
  %251 = fmul fast float %249, %156
  %252 = fmul fast float %249, %157
  %253 = fadd fast float %250, %99
  %254 = fadd fast float %251, %100
  %255 = fadd fast float %252, %101
  %256 = fadd fast float %249, %102
  br label %257

; <label>:257                                     ; preds = %137, %126
  %258 = phi float [ %253, %137 ], [ %99, %126 ]
  %259 = phi float [ %254, %137 ], [ %100, %126 ]
  %260 = phi float [ %255, %137 ], [ %101, %126 ]
  %261 = phi float [ %256, %137 ], [ %102, %126 ]
  %262 = add nuw i32 %103, 1
  %263 = icmp eq i32 %262, %76
  br i1 %263, label %264, label %98

; <label>:264                                     ; preds = %257
  %265 = add nuw i32 %97, 1
  %266 = icmp eq i32 %265, %76
  br i1 %266, label %267, label %92

; <label>:267                                     ; preds = %264
  br label %268

; <label>:268                                     ; preds = %267, %84
  %269 = phi float [ %85, %84 ], [ %258, %267 ]
  %270 = phi float [ %86, %84 ], [ %259, %267 ]
  %271 = phi float [ %87, %84 ], [ %260, %267 ]
  %272 = phi float [ %88, %84 ], [ %261, %267 ]
  %273 = add nuw nsw i32 %89, 1
  %274 = icmp eq i32 %273, 6
  br i1 %274, label %275, label %84

; <label>:275                                     ; preds = %268
  %276 = fcmp fast ogt float %272, 0.000000e+00
  %277 = fdiv fast float 1.000000e+00, %272
  %278 = select i1 %276, float %277, float 1.000000e+00
  %279 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %280 = extractvalue %dx.types.CBufRet.i32 %279, 0
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %290, label %282, !dx.controlflow.hints !18

; <label>:282                                     ; preds = %275
  %283 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %284 = extractvalue %dx.types.ResRet.f32 %283, 0
  %285 = fmul fast float %284, 0x3FD20DD760000000
  %286 = extractvalue %dx.types.CBufRet.f32 %9, 2
  %287 = call float @dx.op.binary.f32(i32 35, float %285, float %286)  ; FMax(a,b)
  %288 = fdiv fast float 1.000000e+00, %287
  %289 = fmul fast float %288, %278
  br label %290

; <label>:290                                     ; preds = %282, %275
  %291 = phi float [ %289, %282 ], [ %278, %275 ]
  %292 = fmul fast float %291, %269
  %293 = fmul fast float %291, %270
  %294 = fmul fast float %291, %271
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %5, i32 %6, i32 0, float %292, float %293, float %294, float %292, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #1

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!13}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !9, !11, null}
!5 = !{!6, !8}
!6 = !{i32 0, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 7, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!9 = !{!10}
!10 = !{i32 0, %"class.RWTexture2DArray<vector<float, 3> >"* undef, !"", i32 0, i32 2, i32 1, i32 7, i1 false, i1 false, i1 false, !7}
!11 = !{!12}
!12 = !{i32 0, %ReflectionProbeFilteringComputeConstants* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!13 = !{void ()* @cs_reflection_probe_filtering_octahedron_brute_force, !"cs_reflection_probe_filtering_octahedron_brute_force", null, !4, !14}
!14 = !{i32 0, i64 272, i32 4, !15}
!15 = !{i32 8, i32 8, i32 1}
!16 = distinct !{!16, !"dx.controlflow.hints", i32 2}
!17 = distinct !{!17, !"dx.controlflow.hints", i32 2}
!18 = distinct !{!18, !"dx.controlflow.hints", i32 2}

