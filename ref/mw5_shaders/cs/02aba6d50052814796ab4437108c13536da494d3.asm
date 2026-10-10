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
; shader hash: d9c3e5cc76ab80a40745c0b27f13a98c
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
;   [16 x i8] (type annotation not present)
;
; }
;
; cbuffer 
; {
;
;   [16 x i8] (type annotation not present)
;
; }
;
; Resource bind info for 
; {
;
;   [4 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb0     1
;                                   cbuffer      NA          NA     CB1            cb1     1
;                                   texture     f32         buf      T0             t3     1
;                                   texture    byte         r/o      T1             t0     1
;                                   texture    byte         r/o      T2             t4     1
;                                   texture    byte         r/o      T3             t2     1
;                                   texture  struct         r/o      T4             t1     1
;                                       UAVunorm_f32     2darray      U0             u0     1
;                                       UAV     f32     2darray      U1             u1     1
;                                       UAVunorm_f32     2darray      U2             u2     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Buffer<vector<float, 4> >" = type { <4 x float> }
%struct.ByteAddressBuffer = type { i32 }
%"class.StructuredBuffer<unsigned int>" = type { i32 }
%"class.RWTexture2DArray<float>" = type { float }
%"class.RWTexture2DArray<vector<float, 3> >" = type { <3 x float> }
%"class.RWTexture2DArray<vector<float, 2> >" = type { <2 x float> }
%GfxDynmLightLMOptShared = type { i32, i32, i32, i32 }
%GfxDynLightLMOpt = type { i32, i32, i32, i32 }

define void @cs_optlm_blend4_to_lm_tile() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %12 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %13 = extractvalue %dx.types.CBufRet.i32 %12, 0
  %14 = and i32 %13, -1610612737
  %15 = lshr i32 %13, 29
  %16 = icmp ult i32 %11, %14
  br i1 %16, label %17, label %366, !dx.controlflow.hints !24

; <label>:17                                      ; preds = %0
  %18 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %19 = extractvalue %dx.types.CBufRet.i32 %18, 1
  %20 = shl i32 %19, 3
  %21 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %20, i32 undef)  ; BufferLoad(srv,index,wot)
  %22 = extractvalue %dx.types.ResRet.i32 %21, 0
  %23 = extractvalue %dx.types.ResRet.i32 %21, 1
  %24 = add i32 %22, %11
  %25 = shl i32 %24, 3
  %26 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %25, i32 undef)  ; BufferLoad(srv,index,wot)
  %27 = extractvalue %dx.types.ResRet.i32 %26, 0
  %28 = extractvalue %dx.types.ResRet.i32 %26, 1
  %29 = shl i32 %27, 4
  %30 = and i32 %29, 32752
  %31 = call float @dx.op.legacyF16ToF32(i32 131, i32 %30)  ; LegacyF16ToF32(value)
  %32 = lshr i32 %27, 7
  %33 = and i32 %32, 32752
  %34 = call float @dx.op.legacyF16ToF32(i32 131, i32 %33)  ; LegacyF16ToF32(value)
  %35 = lshr i32 %27, 22
  %36 = shl nuw nsw i32 %35, 5
  %37 = call float @dx.op.legacyF16ToF32(i32 131, i32 %36)  ; LegacyF16ToF32(value)
  %38 = and i32 %28, 255
  %39 = uitofp i32 %38 to float
  %40 = fmul fast float %39, 0x3F80101020000000
  %41 = fadd fast float %40, -1.000000e+00
  %42 = lshr i32 %28, 8
  %43 = and i32 %42, 255
  %44 = uitofp i32 %43 to float
  %45 = fmul fast float %44, 0x3F80101020000000
  %46 = fadd fast float %45, -1.000000e+00
  %47 = fadd fast float %46, %41
  %48 = fmul fast float %47, 5.000000e-01
  %49 = fsub fast float %41, %46
  %50 = fmul fast float %49, 5.000000e-01
  %51 = call float @dx.op.unary.f32(i32 6, float %48)  ; FAbs(value)
  %52 = fsub fast float 1.000000e+00, %51
  %53 = call float @dx.op.unary.f32(i32 6, float %50)  ; FAbs(value)
  %54 = fsub fast float %52, %53
  %55 = call float @dx.op.dot3.f32(i32 55, float %48, float %50, float %54, float %48, float %50, float %54)  ; Dot3(ax,ay,az,bx,by,bz)
  %56 = call float @dx.op.unary.f32(i32 25, float %55)  ; Rsqrt(value)
  %57 = fmul fast float %48, %56
  %58 = fmul fast float %50, %56
  %59 = fmul fast float %56, %54
  %60 = lshr i32 %28, 16
  %61 = and i32 %60, 255
  %62 = uitofp i32 %61 to float
  %63 = call float @dx.op.dot3.f32(i32 55, float %31, float %34, float %37, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %64 = fmul fast float %57, %63
  %65 = fmul fast float %58, %63
  %66 = fmul fast float %59, %63
  %67 = fmul fast float %63, %62
  %68 = extractvalue %dx.types.CBufRet.i32 %18, 3
  %69 = extractvalue %dx.types.CBufRet.i32 %18, 2
  %70 = add i32 %69, %11
  %71 = and i32 %68, 7
  %72 = extractvalue %dx.types.CBufRet.i32 %18, 0
  %73 = mul i32 %72, %71
  %74 = add i32 %70, %73
  %75 = shl i32 %74, 3
  %76 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %75, i32 undef)  ; BufferLoad(srv,index,wot)
  %77 = extractvalue %dx.types.ResRet.i32 %76, 0
  %78 = extractvalue %dx.types.ResRet.i32 %76, 1
  %79 = shl i32 %77, 4
  %80 = and i32 %79, 32752
  %81 = call float @dx.op.legacyF16ToF32(i32 131, i32 %80)  ; LegacyF16ToF32(value)
  %82 = lshr i32 %77, 7
  %83 = and i32 %82, 32752
  %84 = call float @dx.op.legacyF16ToF32(i32 131, i32 %83)  ; LegacyF16ToF32(value)
  %85 = lshr i32 %77, 22
  %86 = shl nuw nsw i32 %85, 5
  %87 = call float @dx.op.legacyF16ToF32(i32 131, i32 %86)  ; LegacyF16ToF32(value)
  %88 = and i32 %78, 255
  %89 = uitofp i32 %88 to float
  %90 = fmul fast float %89, 0x3F80101020000000
  %91 = fadd fast float %90, -1.000000e+00
  %92 = lshr i32 %78, 8
  %93 = and i32 %92, 255
  %94 = uitofp i32 %93 to float
  %95 = fmul fast float %94, 0x3F80101020000000
  %96 = fadd fast float %95, -1.000000e+00
  %97 = fadd fast float %96, %91
  %98 = fmul fast float %97, 5.000000e-01
  %99 = fsub fast float %91, %96
  %100 = fmul fast float %99, 5.000000e-01
  %101 = call float @dx.op.unary.f32(i32 6, float %98)  ; FAbs(value)
  %102 = fsub fast float 1.000000e+00, %101
  %103 = call float @dx.op.unary.f32(i32 6, float %100)  ; FAbs(value)
  %104 = fsub fast float %102, %103
  %105 = call float @dx.op.dot3.f32(i32 55, float %98, float %100, float %104, float %98, float %100, float %104)  ; Dot3(ax,ay,az,bx,by,bz)
  %106 = call float @dx.op.unary.f32(i32 25, float %105)  ; Rsqrt(value)
  %107 = fmul fast float %98, %106
  %108 = fmul fast float %100, %106
  %109 = fmul fast float %106, %104
  %110 = lshr i32 %78, 16
  %111 = and i32 %110, 255
  %112 = uitofp i32 %111 to float
  %113 = lshr i32 %78, 24
  %114 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %113, i32 undef)  ; BufferLoad(srv,index,wot)
  %115 = extractvalue %dx.types.ResRet.f32 %114, 0
  %116 = extractvalue %dx.types.ResRet.f32 %114, 1
  %117 = extractvalue %dx.types.ResRet.f32 %114, 2
  %118 = fmul fast float %115, %81
  %119 = fmul fast float %116, %84
  %120 = fmul fast float %117, %87
  %121 = call float @dx.op.dot3.f32(i32 55, float %118, float %119, float %120, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %122 = fmul fast float %107, %121
  %123 = fmul fast float %108, %121
  %124 = fmul fast float %109, %121
  %125 = fmul fast float %121, %112
  %126 = fadd fast float %118, %31
  %127 = fadd fast float %119, %34
  %128 = fadd fast float %120, %37
  %129 = fadd fast float %122, %64
  %130 = fadd fast float %123, %65
  %131 = fadd fast float %124, %66
  %132 = lshr i32 %68, 3
  %133 = and i32 %132, 7
  %134 = mul i32 %72, %133
  %135 = add i32 %70, %134
  %136 = shl i32 %135, 3
  %137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %136, i32 undef)  ; BufferLoad(srv,index,wot)
  %138 = extractvalue %dx.types.ResRet.i32 %137, 0
  %139 = extractvalue %dx.types.ResRet.i32 %137, 1
  %140 = shl i32 %138, 4
  %141 = and i32 %140, 32752
  %142 = call float @dx.op.legacyF16ToF32(i32 131, i32 %141)  ; LegacyF16ToF32(value)
  %143 = lshr i32 %138, 7
  %144 = and i32 %143, 32752
  %145 = call float @dx.op.legacyF16ToF32(i32 131, i32 %144)  ; LegacyF16ToF32(value)
  %146 = lshr i32 %138, 22
  %147 = shl nuw nsw i32 %146, 5
  %148 = call float @dx.op.legacyF16ToF32(i32 131, i32 %147)  ; LegacyF16ToF32(value)
  %149 = and i32 %139, 255
  %150 = uitofp i32 %149 to float
  %151 = fmul fast float %150, 0x3F80101020000000
  %152 = fadd fast float %151, -1.000000e+00
  %153 = lshr i32 %139, 8
  %154 = and i32 %153, 255
  %155 = uitofp i32 %154 to float
  %156 = fmul fast float %155, 0x3F80101020000000
  %157 = fadd fast float %156, -1.000000e+00
  %158 = fadd fast float %157, %152
  %159 = fmul fast float %158, 5.000000e-01
  %160 = fsub fast float %152, %157
  %161 = fmul fast float %160, 5.000000e-01
  %162 = call float @dx.op.unary.f32(i32 6, float %159)  ; FAbs(value)
  %163 = fsub fast float 1.000000e+00, %162
  %164 = call float @dx.op.unary.f32(i32 6, float %161)  ; FAbs(value)
  %165 = fsub fast float %163, %164
  %166 = call float @dx.op.dot3.f32(i32 55, float %159, float %161, float %165, float %159, float %161, float %165)  ; Dot3(ax,ay,az,bx,by,bz)
  %167 = call float @dx.op.unary.f32(i32 25, float %166)  ; Rsqrt(value)
  %168 = fmul fast float %159, %167
  %169 = fmul fast float %161, %167
  %170 = fmul fast float %167, %165
  %171 = lshr i32 %139, 16
  %172 = and i32 %171, 255
  %173 = uitofp i32 %172 to float
  %174 = lshr i32 %139, 24
  %175 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %174, i32 undef)  ; BufferLoad(srv,index,wot)
  %176 = extractvalue %dx.types.ResRet.f32 %175, 0
  %177 = extractvalue %dx.types.ResRet.f32 %175, 1
  %178 = extractvalue %dx.types.ResRet.f32 %175, 2
  %179 = fmul fast float %176, %142
  %180 = fmul fast float %177, %145
  %181 = fmul fast float %178, %148
  %182 = call float @dx.op.dot3.f32(i32 55, float %179, float %180, float %181, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %183 = fmul fast float %168, %182
  %184 = fmul fast float %169, %182
  %185 = fmul fast float %170, %182
  %186 = fmul fast float %182, %173
  %187 = fadd fast float %126, %179
  %188 = fadd fast float %127, %180
  %189 = fadd fast float %128, %181
  %190 = fadd fast float %129, %183
  %191 = fadd fast float %130, %184
  %192 = fadd fast float %131, %185
  %193 = lshr i32 %68, 6
  %194 = and i32 %193, 7
  %195 = mul i32 %72, %194
  %196 = add i32 %70, %195
  %197 = shl i32 %196, 3
  %198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %197, i32 undef)  ; BufferLoad(srv,index,wot)
  %199 = extractvalue %dx.types.ResRet.i32 %198, 0
  %200 = extractvalue %dx.types.ResRet.i32 %198, 1
  %201 = shl i32 %199, 4
  %202 = and i32 %201, 32752
  %203 = call float @dx.op.legacyF16ToF32(i32 131, i32 %202)  ; LegacyF16ToF32(value)
  %204 = lshr i32 %199, 7
  %205 = and i32 %204, 32752
  %206 = call float @dx.op.legacyF16ToF32(i32 131, i32 %205)  ; LegacyF16ToF32(value)
  %207 = lshr i32 %199, 22
  %208 = shl nuw nsw i32 %207, 5
  %209 = call float @dx.op.legacyF16ToF32(i32 131, i32 %208)  ; LegacyF16ToF32(value)
  %210 = and i32 %200, 255
  %211 = uitofp i32 %210 to float
  %212 = fmul fast float %211, 0x3F80101020000000
  %213 = fadd fast float %212, -1.000000e+00
  %214 = lshr i32 %200, 8
  %215 = and i32 %214, 255
  %216 = uitofp i32 %215 to float
  %217 = fmul fast float %216, 0x3F80101020000000
  %218 = fadd fast float %217, -1.000000e+00
  %219 = fadd fast float %218, %213
  %220 = fmul fast float %219, 5.000000e-01
  %221 = fsub fast float %213, %218
  %222 = fmul fast float %221, 5.000000e-01
  %223 = call float @dx.op.unary.f32(i32 6, float %220)  ; FAbs(value)
  %224 = fsub fast float 1.000000e+00, %223
  %225 = call float @dx.op.unary.f32(i32 6, float %222)  ; FAbs(value)
  %226 = fsub fast float %224, %225
  %227 = call float @dx.op.dot3.f32(i32 55, float %220, float %222, float %226, float %220, float %222, float %226)  ; Dot3(ax,ay,az,bx,by,bz)
  %228 = call float @dx.op.unary.f32(i32 25, float %227)  ; Rsqrt(value)
  %229 = fmul fast float %220, %228
  %230 = fmul fast float %222, %228
  %231 = fmul fast float %228, %226
  %232 = lshr i32 %200, 16
  %233 = and i32 %232, 255
  %234 = uitofp i32 %233 to float
  %235 = lshr i32 %200, 24
  %236 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %235, i32 undef)  ; BufferLoad(srv,index,wot)
  %237 = extractvalue %dx.types.ResRet.f32 %236, 0
  %238 = extractvalue %dx.types.ResRet.f32 %236, 1
  %239 = extractvalue %dx.types.ResRet.f32 %236, 2
  %240 = fmul fast float %237, %203
  %241 = fmul fast float %238, %206
  %242 = fmul fast float %239, %209
  %243 = call float @dx.op.dot3.f32(i32 55, float %240, float %241, float %242, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %244 = fmul fast float %229, %243
  %245 = fmul fast float %230, %243
  %246 = fmul fast float %231, %243
  %247 = fmul fast float %243, %234
  %248 = fadd fast float %187, %240
  %249 = fadd fast float %188, %241
  %250 = fadd fast float %189, %242
  %251 = fadd fast float %190, %244
  %252 = fadd fast float %191, %245
  %253 = fadd fast float %192, %246
  %254 = lshr i32 %68, 9
  %255 = and i32 %254, 7
  %256 = mul i32 %72, %255
  %257 = add i32 %70, %256
  %258 = shl i32 %257, 3
  %259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %258, i32 undef)  ; BufferLoad(srv,index,wot)
  %260 = extractvalue %dx.types.ResRet.i32 %259, 0
  %261 = extractvalue %dx.types.ResRet.i32 %259, 1
  %262 = shl i32 %260, 4
  %263 = and i32 %262, 32752
  %264 = call float @dx.op.legacyF16ToF32(i32 131, i32 %263)  ; LegacyF16ToF32(value)
  %265 = lshr i32 %260, 7
  %266 = and i32 %265, 32752
  %267 = call float @dx.op.legacyF16ToF32(i32 131, i32 %266)  ; LegacyF16ToF32(value)
  %268 = lshr i32 %260, 22
  %269 = shl nuw nsw i32 %268, 5
  %270 = call float @dx.op.legacyF16ToF32(i32 131, i32 %269)  ; LegacyF16ToF32(value)
  %271 = and i32 %261, 255
  %272 = uitofp i32 %271 to float
  %273 = fmul fast float %272, 0x3F80101020000000
  %274 = fadd fast float %273, -1.000000e+00
  %275 = lshr i32 %261, 8
  %276 = and i32 %275, 255
  %277 = uitofp i32 %276 to float
  %278 = fmul fast float %277, 0x3F80101020000000
  %279 = fadd fast float %278, -1.000000e+00
  %280 = fadd fast float %279, %274
  %281 = fmul fast float %280, 5.000000e-01
  %282 = fsub fast float %274, %279
  %283 = fmul fast float %282, 5.000000e-01
  %284 = call float @dx.op.unary.f32(i32 6, float %281)  ; FAbs(value)
  %285 = fsub fast float 1.000000e+00, %284
  %286 = call float @dx.op.unary.f32(i32 6, float %283)  ; FAbs(value)
  %287 = fsub fast float %285, %286
  %288 = call float @dx.op.dot3.f32(i32 55, float %281, float %283, float %287, float %281, float %283, float %287)  ; Dot3(ax,ay,az,bx,by,bz)
  %289 = call float @dx.op.unary.f32(i32 25, float %288)  ; Rsqrt(value)
  %290 = fmul fast float %281, %289
  %291 = fmul fast float %283, %289
  %292 = fmul fast float %289, %287
  %293 = lshr i32 %261, 16
  %294 = and i32 %293, 255
  %295 = uitofp i32 %294 to float
  %296 = lshr i32 %261, 24
  %297 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %296, i32 undef)  ; BufferLoad(srv,index,wot)
  %298 = extractvalue %dx.types.ResRet.f32 %297, 0
  %299 = extractvalue %dx.types.ResRet.f32 %297, 1
  %300 = extractvalue %dx.types.ResRet.f32 %297, 2
  %301 = fmul fast float %298, %264
  %302 = fmul fast float %299, %267
  %303 = fmul fast float %300, %270
  %304 = call float @dx.op.dot3.f32(i32 55, float %301, float %302, float %303, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %305 = fmul fast float %290, %304
  %306 = fmul fast float %291, %304
  %307 = fmul fast float %292, %304
  %308 = fmul fast float %304, %295
  %309 = fadd fast float %248, %301
  %310 = fadd fast float %249, %302
  %311 = fadd fast float %250, %303
  %312 = fadd fast float %125, %67
  %313 = fadd fast float %312, %186
  %314 = fadd fast float %313, %247
  %315 = fadd fast float %314, %308
  %316 = fadd fast float %251, %305
  %317 = fadd fast float %252, %306
  %318 = fadd fast float %253, %307
  %319 = call float @dx.op.dot3.f32(i32 55, float %309, float %310, float %311, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %320 = fcmp fast ogt float %319, 0.000000e+00
  %321 = fdiv fast float 0x3F70101020000000, %319
  %322 = select i1 %320, float %321, float 0.000000e+00
  %323 = fmul fast float %322, %315
  %324 = call float @dx.op.dot3.f32(i32 55, float %316, float %317, float %318, float %316, float %317, float %318)  ; Dot3(ax,ay,az,bx,by,bz)
  %325 = fcmp fast ogt float %324, 0.000000e+00
  br i1 %325, label %326, label %329, !dx.controlflow.hints !25

; <label>:326                                     ; preds = %17
  %327 = call float @dx.op.unary.f32(i32 24, float %324)  ; Sqrt(value)
  %328 = fdiv fast float 1.000000e+00, %327
  br label %329

; <label>:329                                     ; preds = %326, %17
  %330 = phi float [ %328, %326 ], [ %324, %17 ]
  %331 = fmul fast float %330, %316
  %332 = fmul fast float %330, %317
  %333 = fmul fast float %330, %318
  %334 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %335 = extractvalue %dx.types.CBufRet.i32 %334, 0
  %336 = shl nuw nsw i32 %15, 1
  %337 = lshr i32 %11, %336
  %338 = add i32 %23, %337
  %339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %338, i32 0)  ; BufferLoad(srv,index,wot)
  %340 = extractvalue %dx.types.ResRet.i32 %339, 0
  %341 = add i32 %340, %335
  %342 = and i32 %341, 65535
  %343 = lshr i32 %341, 16
  %344 = shl i32 1, %15
  %345 = add i32 %344, -1
  %346 = and i32 %345, %11
  %347 = add i32 %342, %346
  %348 = lshr i32 %11, %15
  %349 = and i32 %345, %348
  %350 = add i32 %343, %349
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %347, i32 %350, i32 0, float %309, float %310, float %311, float %309, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %351 = call float @dx.op.unary.f32(i32 6, float %331)  ; FAbs(value)
  %352 = call float @dx.op.unary.f32(i32 6, float %332)  ; FAbs(value)
  %353 = fadd fast float %351, %333
  %354 = fadd fast float %353, %352
  %355 = fdiv fast float 1.000000e+00, %354
  %356 = fadd fast float %316, %317
  %357 = fsub fast float %316, %317
  %358 = fmul fast float %356, 5.000000e-01
  %359 = fmul fast float %358, %330
  %360 = fmul fast float %359, %355
  %361 = fadd fast float %360, 5.000000e-01
  %362 = fmul fast float %357, 5.000000e-01
  %363 = fmul fast float %362, %330
  %364 = fmul fast float %363, %355
  %365 = fadd fast float %364, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %347, i32 %350, i32 0, float %361, float %365, float %361, float %361, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %347, i32 %350, i32 0, float %323, float %323, float %323, float %323, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %366

; <label>:366                                     ; preds = %329, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

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
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !13, !18, null}
!5 = !{!6, !8, !9, !10, !11}
!6 = !{i32 0, %"class.Buffer<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 10, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 4, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 12, i32 0, !12}
!12 = !{i32 1, i32 4}
!13 = !{!14, !16, !17}
!14 = !{i32 0, %"class.RWTexture2DArray<float>"* undef, !"", i32 0, i32 0, i32 1, i32 7, i1 false, i1 false, i1 false, !15}
!15 = !{i32 0, i32 14}
!16 = !{i32 1, %"class.RWTexture2DArray<vector<float, 3> >"* undef, !"", i32 0, i32 1, i32 1, i32 7, i1 false, i1 false, i1 false, !7}
!17 = !{i32 2, %"class.RWTexture2DArray<vector<float, 2> >"* undef, !"", i32 0, i32 2, i32 1, i32 7, i1 false, i1 false, i1 false, !15}
!18 = !{!19, !20}
!19 = !{i32 0, %GfxDynmLightLMOptShared* undef, !"", i32 0, i32 0, i32 1, i32 16, null}
!20 = !{i32 1, %GfxDynLightLMOpt* undef, !"", i32 0, i32 1, i32 1, i32 16, null}
!21 = !{void ()* @cs_optlm_blend4_to_lm_tile, !"cs_optlm_blend4_to_lm_tile", null, !4, !22}
!22 = !{i32 0, i64 272, i32 4, !23}
!23 = !{i32 64, i32 1, i32 1}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}

