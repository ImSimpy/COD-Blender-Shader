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
; shader hash: 1347e855084ccfa7899f4f876ca72186
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

define void @cs_optlm_blend8_to_lm() {
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
  %14 = icmp ult i32 %11, %13
  br i1 %14, label %15, label %603, !dx.controlflow.hints !24

; <label>:15                                      ; preds = %0
  %16 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %17 = extractvalue %dx.types.CBufRet.i32 %16, 1
  %18 = shl i32 %17, 3
  %19 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %18, i32 undef)  ; BufferLoad(srv,index,wot)
  %20 = extractvalue %dx.types.ResRet.i32 %19, 0
  %21 = extractvalue %dx.types.ResRet.i32 %19, 1
  %22 = add i32 %20, %11
  %23 = shl i32 %22, 3
  %24 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %23, i32 undef)  ; BufferLoad(srv,index,wot)
  %25 = extractvalue %dx.types.ResRet.i32 %24, 0
  %26 = extractvalue %dx.types.ResRet.i32 %24, 1
  %27 = shl i32 %25, 4
  %28 = and i32 %27, 32752
  %29 = call float @dx.op.legacyF16ToF32(i32 131, i32 %28)  ; LegacyF16ToF32(value)
  %30 = lshr i32 %25, 7
  %31 = and i32 %30, 32752
  %32 = call float @dx.op.legacyF16ToF32(i32 131, i32 %31)  ; LegacyF16ToF32(value)
  %33 = lshr i32 %25, 22
  %34 = shl nuw nsw i32 %33, 5
  %35 = call float @dx.op.legacyF16ToF32(i32 131, i32 %34)  ; LegacyF16ToF32(value)
  %36 = and i32 %26, 255
  %37 = uitofp i32 %36 to float
  %38 = fmul fast float %37, 0x3F80101020000000
  %39 = fadd fast float %38, -1.000000e+00
  %40 = lshr i32 %26, 8
  %41 = and i32 %40, 255
  %42 = uitofp i32 %41 to float
  %43 = fmul fast float %42, 0x3F80101020000000
  %44 = fadd fast float %43, -1.000000e+00
  %45 = fadd fast float %44, %39
  %46 = fmul fast float %45, 5.000000e-01
  %47 = fsub fast float %39, %44
  %48 = fmul fast float %47, 5.000000e-01
  %49 = call float @dx.op.unary.f32(i32 6, float %46)  ; FAbs(value)
  %50 = fsub fast float 1.000000e+00, %49
  %51 = call float @dx.op.unary.f32(i32 6, float %48)  ; FAbs(value)
  %52 = fsub fast float %50, %51
  %53 = call float @dx.op.dot3.f32(i32 55, float %46, float %48, float %52, float %46, float %48, float %52)  ; Dot3(ax,ay,az,bx,by,bz)
  %54 = call float @dx.op.unary.f32(i32 25, float %53)  ; Rsqrt(value)
  %55 = fmul fast float %46, %54
  %56 = fmul fast float %48, %54
  %57 = fmul fast float %54, %52
  %58 = lshr i32 %26, 16
  %59 = and i32 %58, 255
  %60 = uitofp i32 %59 to float
  %61 = call float @dx.op.dot3.f32(i32 55, float %29, float %32, float %35, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %62 = fmul fast float %55, %61
  %63 = fmul fast float %56, %61
  %64 = fmul fast float %57, %61
  %65 = fmul fast float %61, %60
  %66 = extractvalue %dx.types.CBufRet.i32 %16, 3
  %67 = extractvalue %dx.types.CBufRet.i32 %16, 2
  %68 = add i32 %67, %11
  %69 = and i32 %66, 7
  %70 = extractvalue %dx.types.CBufRet.i32 %16, 0
  %71 = mul i32 %70, %69
  %72 = add i32 %68, %71
  %73 = shl i32 %72, 3
  %74 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %73, i32 undef)  ; BufferLoad(srv,index,wot)
  %75 = extractvalue %dx.types.ResRet.i32 %74, 0
  %76 = extractvalue %dx.types.ResRet.i32 %74, 1
  %77 = shl i32 %75, 4
  %78 = and i32 %77, 32752
  %79 = call float @dx.op.legacyF16ToF32(i32 131, i32 %78)  ; LegacyF16ToF32(value)
  %80 = lshr i32 %75, 7
  %81 = and i32 %80, 32752
  %82 = call float @dx.op.legacyF16ToF32(i32 131, i32 %81)  ; LegacyF16ToF32(value)
  %83 = lshr i32 %75, 22
  %84 = shl nuw nsw i32 %83, 5
  %85 = call float @dx.op.legacyF16ToF32(i32 131, i32 %84)  ; LegacyF16ToF32(value)
  %86 = and i32 %76, 255
  %87 = uitofp i32 %86 to float
  %88 = fmul fast float %87, 0x3F80101020000000
  %89 = fadd fast float %88, -1.000000e+00
  %90 = lshr i32 %76, 8
  %91 = and i32 %90, 255
  %92 = uitofp i32 %91 to float
  %93 = fmul fast float %92, 0x3F80101020000000
  %94 = fadd fast float %93, -1.000000e+00
  %95 = fadd fast float %94, %89
  %96 = fmul fast float %95, 5.000000e-01
  %97 = fsub fast float %89, %94
  %98 = fmul fast float %97, 5.000000e-01
  %99 = call float @dx.op.unary.f32(i32 6, float %96)  ; FAbs(value)
  %100 = fsub fast float 1.000000e+00, %99
  %101 = call float @dx.op.unary.f32(i32 6, float %98)  ; FAbs(value)
  %102 = fsub fast float %100, %101
  %103 = call float @dx.op.dot3.f32(i32 55, float %96, float %98, float %102, float %96, float %98, float %102)  ; Dot3(ax,ay,az,bx,by,bz)
  %104 = call float @dx.op.unary.f32(i32 25, float %103)  ; Rsqrt(value)
  %105 = fmul fast float %96, %104
  %106 = fmul fast float %98, %104
  %107 = fmul fast float %104, %102
  %108 = lshr i32 %76, 16
  %109 = and i32 %108, 255
  %110 = uitofp i32 %109 to float
  %111 = lshr i32 %76, 24
  %112 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %111, i32 undef)  ; BufferLoad(srv,index,wot)
  %113 = extractvalue %dx.types.ResRet.f32 %112, 0
  %114 = extractvalue %dx.types.ResRet.f32 %112, 1
  %115 = extractvalue %dx.types.ResRet.f32 %112, 2
  %116 = fmul fast float %113, %79
  %117 = fmul fast float %114, %82
  %118 = fmul fast float %115, %85
  %119 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %120 = fmul fast float %105, %119
  %121 = fmul fast float %106, %119
  %122 = fmul fast float %107, %119
  %123 = fmul fast float %119, %110
  %124 = fadd fast float %116, %29
  %125 = fadd fast float %117, %32
  %126 = fadd fast float %118, %35
  %127 = fadd fast float %120, %62
  %128 = fadd fast float %121, %63
  %129 = fadd fast float %122, %64
  %130 = lshr i32 %66, 3
  %131 = and i32 %130, 7
  %132 = mul i32 %70, %131
  %133 = add i32 %68, %132
  %134 = shl i32 %133, 3
  %135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %134, i32 undef)  ; BufferLoad(srv,index,wot)
  %136 = extractvalue %dx.types.ResRet.i32 %135, 0
  %137 = extractvalue %dx.types.ResRet.i32 %135, 1
  %138 = shl i32 %136, 4
  %139 = and i32 %138, 32752
  %140 = call float @dx.op.legacyF16ToF32(i32 131, i32 %139)  ; LegacyF16ToF32(value)
  %141 = lshr i32 %136, 7
  %142 = and i32 %141, 32752
  %143 = call float @dx.op.legacyF16ToF32(i32 131, i32 %142)  ; LegacyF16ToF32(value)
  %144 = lshr i32 %136, 22
  %145 = shl nuw nsw i32 %144, 5
  %146 = call float @dx.op.legacyF16ToF32(i32 131, i32 %145)  ; LegacyF16ToF32(value)
  %147 = and i32 %137, 255
  %148 = uitofp i32 %147 to float
  %149 = fmul fast float %148, 0x3F80101020000000
  %150 = fadd fast float %149, -1.000000e+00
  %151 = lshr i32 %137, 8
  %152 = and i32 %151, 255
  %153 = uitofp i32 %152 to float
  %154 = fmul fast float %153, 0x3F80101020000000
  %155 = fadd fast float %154, -1.000000e+00
  %156 = fadd fast float %155, %150
  %157 = fmul fast float %156, 5.000000e-01
  %158 = fsub fast float %150, %155
  %159 = fmul fast float %158, 5.000000e-01
  %160 = call float @dx.op.unary.f32(i32 6, float %157)  ; FAbs(value)
  %161 = fsub fast float 1.000000e+00, %160
  %162 = call float @dx.op.unary.f32(i32 6, float %159)  ; FAbs(value)
  %163 = fsub fast float %161, %162
  %164 = call float @dx.op.dot3.f32(i32 55, float %157, float %159, float %163, float %157, float %159, float %163)  ; Dot3(ax,ay,az,bx,by,bz)
  %165 = call float @dx.op.unary.f32(i32 25, float %164)  ; Rsqrt(value)
  %166 = fmul fast float %157, %165
  %167 = fmul fast float %159, %165
  %168 = fmul fast float %165, %163
  %169 = lshr i32 %137, 16
  %170 = and i32 %169, 255
  %171 = uitofp i32 %170 to float
  %172 = lshr i32 %137, 24
  %173 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %172, i32 undef)  ; BufferLoad(srv,index,wot)
  %174 = extractvalue %dx.types.ResRet.f32 %173, 0
  %175 = extractvalue %dx.types.ResRet.f32 %173, 1
  %176 = extractvalue %dx.types.ResRet.f32 %173, 2
  %177 = fmul fast float %174, %140
  %178 = fmul fast float %175, %143
  %179 = fmul fast float %176, %146
  %180 = call float @dx.op.dot3.f32(i32 55, float %177, float %178, float %179, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %181 = fmul fast float %166, %180
  %182 = fmul fast float %167, %180
  %183 = fmul fast float %168, %180
  %184 = fmul fast float %180, %171
  %185 = fadd fast float %124, %177
  %186 = fadd fast float %125, %178
  %187 = fadd fast float %126, %179
  %188 = fadd fast float %127, %181
  %189 = fadd fast float %128, %182
  %190 = fadd fast float %129, %183
  %191 = lshr i32 %66, 6
  %192 = and i32 %191, 7
  %193 = mul i32 %70, %192
  %194 = add i32 %68, %193
  %195 = shl i32 %194, 3
  %196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %195, i32 undef)  ; BufferLoad(srv,index,wot)
  %197 = extractvalue %dx.types.ResRet.i32 %196, 0
  %198 = extractvalue %dx.types.ResRet.i32 %196, 1
  %199 = shl i32 %197, 4
  %200 = and i32 %199, 32752
  %201 = call float @dx.op.legacyF16ToF32(i32 131, i32 %200)  ; LegacyF16ToF32(value)
  %202 = lshr i32 %197, 7
  %203 = and i32 %202, 32752
  %204 = call float @dx.op.legacyF16ToF32(i32 131, i32 %203)  ; LegacyF16ToF32(value)
  %205 = lshr i32 %197, 22
  %206 = shl nuw nsw i32 %205, 5
  %207 = call float @dx.op.legacyF16ToF32(i32 131, i32 %206)  ; LegacyF16ToF32(value)
  %208 = and i32 %198, 255
  %209 = uitofp i32 %208 to float
  %210 = fmul fast float %209, 0x3F80101020000000
  %211 = fadd fast float %210, -1.000000e+00
  %212 = lshr i32 %198, 8
  %213 = and i32 %212, 255
  %214 = uitofp i32 %213 to float
  %215 = fmul fast float %214, 0x3F80101020000000
  %216 = fadd fast float %215, -1.000000e+00
  %217 = fadd fast float %216, %211
  %218 = fmul fast float %217, 5.000000e-01
  %219 = fsub fast float %211, %216
  %220 = fmul fast float %219, 5.000000e-01
  %221 = call float @dx.op.unary.f32(i32 6, float %218)  ; FAbs(value)
  %222 = fsub fast float 1.000000e+00, %221
  %223 = call float @dx.op.unary.f32(i32 6, float %220)  ; FAbs(value)
  %224 = fsub fast float %222, %223
  %225 = call float @dx.op.dot3.f32(i32 55, float %218, float %220, float %224, float %218, float %220, float %224)  ; Dot3(ax,ay,az,bx,by,bz)
  %226 = call float @dx.op.unary.f32(i32 25, float %225)  ; Rsqrt(value)
  %227 = fmul fast float %218, %226
  %228 = fmul fast float %220, %226
  %229 = fmul fast float %226, %224
  %230 = lshr i32 %198, 16
  %231 = and i32 %230, 255
  %232 = uitofp i32 %231 to float
  %233 = lshr i32 %198, 24
  %234 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %233, i32 undef)  ; BufferLoad(srv,index,wot)
  %235 = extractvalue %dx.types.ResRet.f32 %234, 0
  %236 = extractvalue %dx.types.ResRet.f32 %234, 1
  %237 = extractvalue %dx.types.ResRet.f32 %234, 2
  %238 = fmul fast float %235, %201
  %239 = fmul fast float %236, %204
  %240 = fmul fast float %237, %207
  %241 = call float @dx.op.dot3.f32(i32 55, float %238, float %239, float %240, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %242 = fmul fast float %227, %241
  %243 = fmul fast float %228, %241
  %244 = fmul fast float %229, %241
  %245 = fmul fast float %241, %232
  %246 = fadd fast float %185, %238
  %247 = fadd fast float %186, %239
  %248 = fadd fast float %187, %240
  %249 = fadd fast float %188, %242
  %250 = fadd fast float %189, %243
  %251 = fadd fast float %190, %244
  %252 = lshr i32 %66, 9
  %253 = and i32 %252, 7
  %254 = mul i32 %70, %253
  %255 = add i32 %68, %254
  %256 = shl i32 %255, 3
  %257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %256, i32 undef)  ; BufferLoad(srv,index,wot)
  %258 = extractvalue %dx.types.ResRet.i32 %257, 0
  %259 = extractvalue %dx.types.ResRet.i32 %257, 1
  %260 = shl i32 %258, 4
  %261 = and i32 %260, 32752
  %262 = call float @dx.op.legacyF16ToF32(i32 131, i32 %261)  ; LegacyF16ToF32(value)
  %263 = lshr i32 %258, 7
  %264 = and i32 %263, 32752
  %265 = call float @dx.op.legacyF16ToF32(i32 131, i32 %264)  ; LegacyF16ToF32(value)
  %266 = lshr i32 %258, 22
  %267 = shl nuw nsw i32 %266, 5
  %268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %267)  ; LegacyF16ToF32(value)
  %269 = and i32 %259, 255
  %270 = uitofp i32 %269 to float
  %271 = fmul fast float %270, 0x3F80101020000000
  %272 = fadd fast float %271, -1.000000e+00
  %273 = lshr i32 %259, 8
  %274 = and i32 %273, 255
  %275 = uitofp i32 %274 to float
  %276 = fmul fast float %275, 0x3F80101020000000
  %277 = fadd fast float %276, -1.000000e+00
  %278 = fadd fast float %277, %272
  %279 = fmul fast float %278, 5.000000e-01
  %280 = fsub fast float %272, %277
  %281 = fmul fast float %280, 5.000000e-01
  %282 = call float @dx.op.unary.f32(i32 6, float %279)  ; FAbs(value)
  %283 = fsub fast float 1.000000e+00, %282
  %284 = call float @dx.op.unary.f32(i32 6, float %281)  ; FAbs(value)
  %285 = fsub fast float %283, %284
  %286 = call float @dx.op.dot3.f32(i32 55, float %279, float %281, float %285, float %279, float %281, float %285)  ; Dot3(ax,ay,az,bx,by,bz)
  %287 = call float @dx.op.unary.f32(i32 25, float %286)  ; Rsqrt(value)
  %288 = fmul fast float %279, %287
  %289 = fmul fast float %281, %287
  %290 = fmul fast float %287, %285
  %291 = lshr i32 %259, 16
  %292 = and i32 %291, 255
  %293 = uitofp i32 %292 to float
  %294 = lshr i32 %259, 24
  %295 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %294, i32 undef)  ; BufferLoad(srv,index,wot)
  %296 = extractvalue %dx.types.ResRet.f32 %295, 0
  %297 = extractvalue %dx.types.ResRet.f32 %295, 1
  %298 = extractvalue %dx.types.ResRet.f32 %295, 2
  %299 = fmul fast float %296, %262
  %300 = fmul fast float %297, %265
  %301 = fmul fast float %298, %268
  %302 = call float @dx.op.dot3.f32(i32 55, float %299, float %300, float %301, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %303 = fmul fast float %288, %302
  %304 = fmul fast float %289, %302
  %305 = fmul fast float %290, %302
  %306 = fmul fast float %302, %293
  %307 = fadd fast float %246, %299
  %308 = fadd fast float %247, %300
  %309 = fadd fast float %248, %301
  %310 = fadd fast float %249, %303
  %311 = fadd fast float %250, %304
  %312 = fadd fast float %251, %305
  %313 = lshr i32 %66, 12
  %314 = and i32 %313, 7
  %315 = mul i32 %70, %314
  %316 = add i32 %68, %315
  %317 = shl i32 %316, 3
  %318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %317, i32 undef)  ; BufferLoad(srv,index,wot)
  %319 = extractvalue %dx.types.ResRet.i32 %318, 0
  %320 = extractvalue %dx.types.ResRet.i32 %318, 1
  %321 = shl i32 %319, 4
  %322 = and i32 %321, 32752
  %323 = call float @dx.op.legacyF16ToF32(i32 131, i32 %322)  ; LegacyF16ToF32(value)
  %324 = lshr i32 %319, 7
  %325 = and i32 %324, 32752
  %326 = call float @dx.op.legacyF16ToF32(i32 131, i32 %325)  ; LegacyF16ToF32(value)
  %327 = lshr i32 %319, 22
  %328 = shl nuw nsw i32 %327, 5
  %329 = call float @dx.op.legacyF16ToF32(i32 131, i32 %328)  ; LegacyF16ToF32(value)
  %330 = and i32 %320, 255
  %331 = uitofp i32 %330 to float
  %332 = fmul fast float %331, 0x3F80101020000000
  %333 = fadd fast float %332, -1.000000e+00
  %334 = lshr i32 %320, 8
  %335 = and i32 %334, 255
  %336 = uitofp i32 %335 to float
  %337 = fmul fast float %336, 0x3F80101020000000
  %338 = fadd fast float %337, -1.000000e+00
  %339 = fadd fast float %338, %333
  %340 = fmul fast float %339, 5.000000e-01
  %341 = fsub fast float %333, %338
  %342 = fmul fast float %341, 5.000000e-01
  %343 = call float @dx.op.unary.f32(i32 6, float %340)  ; FAbs(value)
  %344 = fsub fast float 1.000000e+00, %343
  %345 = call float @dx.op.unary.f32(i32 6, float %342)  ; FAbs(value)
  %346 = fsub fast float %344, %345
  %347 = call float @dx.op.dot3.f32(i32 55, float %340, float %342, float %346, float %340, float %342, float %346)  ; Dot3(ax,ay,az,bx,by,bz)
  %348 = call float @dx.op.unary.f32(i32 25, float %347)  ; Rsqrt(value)
  %349 = fmul fast float %340, %348
  %350 = fmul fast float %342, %348
  %351 = fmul fast float %348, %346
  %352 = lshr i32 %320, 16
  %353 = and i32 %352, 255
  %354 = uitofp i32 %353 to float
  %355 = lshr i32 %320, 24
  %356 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %355, i32 undef)  ; BufferLoad(srv,index,wot)
  %357 = extractvalue %dx.types.ResRet.f32 %356, 0
  %358 = extractvalue %dx.types.ResRet.f32 %356, 1
  %359 = extractvalue %dx.types.ResRet.f32 %356, 2
  %360 = fmul fast float %357, %323
  %361 = fmul fast float %358, %326
  %362 = fmul fast float %359, %329
  %363 = call float @dx.op.dot3.f32(i32 55, float %360, float %361, float %362, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %364 = fmul fast float %349, %363
  %365 = fmul fast float %350, %363
  %366 = fmul fast float %351, %363
  %367 = fmul fast float %363, %354
  %368 = fadd fast float %307, %360
  %369 = fadd fast float %308, %361
  %370 = fadd fast float %309, %362
  %371 = fadd fast float %310, %364
  %372 = fadd fast float %311, %365
  %373 = fadd fast float %312, %366
  %374 = lshr i32 %66, 15
  %375 = and i32 %374, 7
  %376 = mul i32 %70, %375
  %377 = add i32 %68, %376
  %378 = shl i32 %377, 3
  %379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %378, i32 undef)  ; BufferLoad(srv,index,wot)
  %380 = extractvalue %dx.types.ResRet.i32 %379, 0
  %381 = extractvalue %dx.types.ResRet.i32 %379, 1
  %382 = shl i32 %380, 4
  %383 = and i32 %382, 32752
  %384 = call float @dx.op.legacyF16ToF32(i32 131, i32 %383)  ; LegacyF16ToF32(value)
  %385 = lshr i32 %380, 7
  %386 = and i32 %385, 32752
  %387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %386)  ; LegacyF16ToF32(value)
  %388 = lshr i32 %380, 22
  %389 = shl nuw nsw i32 %388, 5
  %390 = call float @dx.op.legacyF16ToF32(i32 131, i32 %389)  ; LegacyF16ToF32(value)
  %391 = and i32 %381, 255
  %392 = uitofp i32 %391 to float
  %393 = fmul fast float %392, 0x3F80101020000000
  %394 = fadd fast float %393, -1.000000e+00
  %395 = lshr i32 %381, 8
  %396 = and i32 %395, 255
  %397 = uitofp i32 %396 to float
  %398 = fmul fast float %397, 0x3F80101020000000
  %399 = fadd fast float %398, -1.000000e+00
  %400 = fadd fast float %399, %394
  %401 = fmul fast float %400, 5.000000e-01
  %402 = fsub fast float %394, %399
  %403 = fmul fast float %402, 5.000000e-01
  %404 = call float @dx.op.unary.f32(i32 6, float %401)  ; FAbs(value)
  %405 = fsub fast float 1.000000e+00, %404
  %406 = call float @dx.op.unary.f32(i32 6, float %403)  ; FAbs(value)
  %407 = fsub fast float %405, %406
  %408 = call float @dx.op.dot3.f32(i32 55, float %401, float %403, float %407, float %401, float %403, float %407)  ; Dot3(ax,ay,az,bx,by,bz)
  %409 = call float @dx.op.unary.f32(i32 25, float %408)  ; Rsqrt(value)
  %410 = fmul fast float %401, %409
  %411 = fmul fast float %403, %409
  %412 = fmul fast float %409, %407
  %413 = lshr i32 %381, 16
  %414 = and i32 %413, 255
  %415 = uitofp i32 %414 to float
  %416 = lshr i32 %381, 24
  %417 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %416, i32 undef)  ; BufferLoad(srv,index,wot)
  %418 = extractvalue %dx.types.ResRet.f32 %417, 0
  %419 = extractvalue %dx.types.ResRet.f32 %417, 1
  %420 = extractvalue %dx.types.ResRet.f32 %417, 2
  %421 = fmul fast float %418, %384
  %422 = fmul fast float %419, %387
  %423 = fmul fast float %420, %390
  %424 = call float @dx.op.dot3.f32(i32 55, float %421, float %422, float %423, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %425 = fmul fast float %410, %424
  %426 = fmul fast float %411, %424
  %427 = fmul fast float %412, %424
  %428 = fmul fast float %424, %415
  %429 = fadd fast float %368, %421
  %430 = fadd fast float %369, %422
  %431 = fadd fast float %370, %423
  %432 = fadd fast float %371, %425
  %433 = fadd fast float %372, %426
  %434 = fadd fast float %373, %427
  %435 = lshr i32 %66, 18
  %436 = and i32 %435, 7
  %437 = mul i32 %70, %436
  %438 = add i32 %68, %437
  %439 = shl i32 %438, 3
  %440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %441 = extractvalue %dx.types.ResRet.i32 %440, 0
  %442 = extractvalue %dx.types.ResRet.i32 %440, 1
  %443 = shl i32 %441, 4
  %444 = and i32 %443, 32752
  %445 = call float @dx.op.legacyF16ToF32(i32 131, i32 %444)  ; LegacyF16ToF32(value)
  %446 = lshr i32 %441, 7
  %447 = and i32 %446, 32752
  %448 = call float @dx.op.legacyF16ToF32(i32 131, i32 %447)  ; LegacyF16ToF32(value)
  %449 = lshr i32 %441, 22
  %450 = shl nuw nsw i32 %449, 5
  %451 = call float @dx.op.legacyF16ToF32(i32 131, i32 %450)  ; LegacyF16ToF32(value)
  %452 = and i32 %442, 255
  %453 = uitofp i32 %452 to float
  %454 = fmul fast float %453, 0x3F80101020000000
  %455 = fadd fast float %454, -1.000000e+00
  %456 = lshr i32 %442, 8
  %457 = and i32 %456, 255
  %458 = uitofp i32 %457 to float
  %459 = fmul fast float %458, 0x3F80101020000000
  %460 = fadd fast float %459, -1.000000e+00
  %461 = fadd fast float %460, %455
  %462 = fmul fast float %461, 5.000000e-01
  %463 = fsub fast float %455, %460
  %464 = fmul fast float %463, 5.000000e-01
  %465 = call float @dx.op.unary.f32(i32 6, float %462)  ; FAbs(value)
  %466 = fsub fast float 1.000000e+00, %465
  %467 = call float @dx.op.unary.f32(i32 6, float %464)  ; FAbs(value)
  %468 = fsub fast float %466, %467
  %469 = call float @dx.op.dot3.f32(i32 55, float %462, float %464, float %468, float %462, float %464, float %468)  ; Dot3(ax,ay,az,bx,by,bz)
  %470 = call float @dx.op.unary.f32(i32 25, float %469)  ; Rsqrt(value)
  %471 = fmul fast float %462, %470
  %472 = fmul fast float %464, %470
  %473 = fmul fast float %470, %468
  %474 = lshr i32 %442, 16
  %475 = and i32 %474, 255
  %476 = uitofp i32 %475 to float
  %477 = lshr i32 %442, 24
  %478 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %477, i32 undef)  ; BufferLoad(srv,index,wot)
  %479 = extractvalue %dx.types.ResRet.f32 %478, 0
  %480 = extractvalue %dx.types.ResRet.f32 %478, 1
  %481 = extractvalue %dx.types.ResRet.f32 %478, 2
  %482 = fmul fast float %479, %445
  %483 = fmul fast float %480, %448
  %484 = fmul fast float %481, %451
  %485 = call float @dx.op.dot3.f32(i32 55, float %482, float %483, float %484, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %486 = fmul fast float %471, %485
  %487 = fmul fast float %472, %485
  %488 = fmul fast float %473, %485
  %489 = fmul fast float %485, %476
  %490 = fadd fast float %429, %482
  %491 = fadd fast float %430, %483
  %492 = fadd fast float %431, %484
  %493 = fadd fast float %432, %486
  %494 = fadd fast float %433, %487
  %495 = fadd fast float %434, %488
  %496 = lshr i32 %66, 21
  %497 = and i32 %496, 7
  %498 = mul i32 %70, %497
  %499 = add i32 %68, %498
  %500 = shl i32 %499, 3
  %501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %500, i32 undef)  ; BufferLoad(srv,index,wot)
  %502 = extractvalue %dx.types.ResRet.i32 %501, 0
  %503 = extractvalue %dx.types.ResRet.i32 %501, 1
  %504 = shl i32 %502, 4
  %505 = and i32 %504, 32752
  %506 = call float @dx.op.legacyF16ToF32(i32 131, i32 %505)  ; LegacyF16ToF32(value)
  %507 = lshr i32 %502, 7
  %508 = and i32 %507, 32752
  %509 = call float @dx.op.legacyF16ToF32(i32 131, i32 %508)  ; LegacyF16ToF32(value)
  %510 = lshr i32 %502, 22
  %511 = shl nuw nsw i32 %510, 5
  %512 = call float @dx.op.legacyF16ToF32(i32 131, i32 %511)  ; LegacyF16ToF32(value)
  %513 = and i32 %503, 255
  %514 = uitofp i32 %513 to float
  %515 = fmul fast float %514, 0x3F80101020000000
  %516 = fadd fast float %515, -1.000000e+00
  %517 = lshr i32 %503, 8
  %518 = and i32 %517, 255
  %519 = uitofp i32 %518 to float
  %520 = fmul fast float %519, 0x3F80101020000000
  %521 = fadd fast float %520, -1.000000e+00
  %522 = fadd fast float %521, %516
  %523 = fmul fast float %522, 5.000000e-01
  %524 = fsub fast float %516, %521
  %525 = fmul fast float %524, 5.000000e-01
  %526 = call float @dx.op.unary.f32(i32 6, float %523)  ; FAbs(value)
  %527 = fsub fast float 1.000000e+00, %526
  %528 = call float @dx.op.unary.f32(i32 6, float %525)  ; FAbs(value)
  %529 = fsub fast float %527, %528
  %530 = call float @dx.op.dot3.f32(i32 55, float %523, float %525, float %529, float %523, float %525, float %529)  ; Dot3(ax,ay,az,bx,by,bz)
  %531 = call float @dx.op.unary.f32(i32 25, float %530)  ; Rsqrt(value)
  %532 = fmul fast float %523, %531
  %533 = fmul fast float %525, %531
  %534 = fmul fast float %531, %529
  %535 = lshr i32 %503, 16
  %536 = and i32 %535, 255
  %537 = uitofp i32 %536 to float
  %538 = lshr i32 %503, 24
  %539 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %538, i32 undef)  ; BufferLoad(srv,index,wot)
  %540 = extractvalue %dx.types.ResRet.f32 %539, 0
  %541 = extractvalue %dx.types.ResRet.f32 %539, 1
  %542 = extractvalue %dx.types.ResRet.f32 %539, 2
  %543 = fmul fast float %540, %506
  %544 = fmul fast float %541, %509
  %545 = fmul fast float %542, %512
  %546 = call float @dx.op.dot3.f32(i32 55, float %543, float %544, float %545, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %547 = fmul fast float %532, %546
  %548 = fmul fast float %533, %546
  %549 = fmul fast float %534, %546
  %550 = fmul fast float %546, %537
  %551 = fadd fast float %490, %543
  %552 = fadd fast float %491, %544
  %553 = fadd fast float %492, %545
  %554 = fadd fast float %123, %65
  %555 = fadd fast float %554, %184
  %556 = fadd fast float %555, %245
  %557 = fadd fast float %556, %306
  %558 = fadd fast float %557, %367
  %559 = fadd fast float %558, %428
  %560 = fadd fast float %559, %489
  %561 = fadd fast float %560, %550
  %562 = fadd fast float %493, %547
  %563 = fadd fast float %494, %548
  %564 = fadd fast float %495, %549
  %565 = call float @dx.op.dot3.f32(i32 55, float %551, float %552, float %553, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %566 = fcmp fast ogt float %565, 0.000000e+00
  %567 = fdiv fast float 0x3F70101020000000, %565
  %568 = select i1 %566, float %567, float 0.000000e+00
  %569 = fmul fast float %568, %561
  %570 = call float @dx.op.dot3.f32(i32 55, float %562, float %563, float %564, float %562, float %563, float %564)  ; Dot3(ax,ay,az,bx,by,bz)
  %571 = fcmp fast ogt float %570, 0.000000e+00
  br i1 %571, label %572, label %575, !dx.controlflow.hints !25

; <label>:572                                     ; preds = %15
  %573 = call float @dx.op.unary.f32(i32 24, float %570)  ; Sqrt(value)
  %574 = fdiv fast float 1.000000e+00, %573
  br label %575

; <label>:575                                     ; preds = %572, %15
  %576 = phi float [ %574, %572 ], [ %570, %15 ]
  %577 = fmul fast float %576, %562
  %578 = fmul fast float %576, %563
  %579 = fmul fast float %576, %564
  %580 = add i32 %21, %11
  %581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %580, i32 0)  ; BufferLoad(srv,index,wot)
  %582 = extractvalue %dx.types.ResRet.i32 %581, 0
  %583 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %584 = extractvalue %dx.types.CBufRet.i32 %583, 0
  %585 = add i32 %584, %582
  %586 = and i32 %585, 65535
  %587 = lshr i32 %585, 16
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %586, i32 %587, i32 0, float %551, float %552, float %553, float %551, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %588 = call float @dx.op.unary.f32(i32 6, float %577)  ; FAbs(value)
  %589 = call float @dx.op.unary.f32(i32 6, float %578)  ; FAbs(value)
  %590 = fadd fast float %588, %579
  %591 = fadd fast float %590, %589
  %592 = fdiv fast float 1.000000e+00, %591
  %593 = fadd fast float %562, %563
  %594 = fsub fast float %562, %563
  %595 = fmul fast float %593, 5.000000e-01
  %596 = fmul fast float %595, %576
  %597 = fmul fast float %596, %592
  %598 = fadd fast float %597, 5.000000e-01
  %599 = fmul fast float %594, 5.000000e-01
  %600 = fmul fast float %599, %576
  %601 = fmul fast float %600, %592
  %602 = fadd fast float %601, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %586, i32 %587, i32 0, float %598, float %602, float %598, float %598, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %586, i32 %587, i32 0, float %569, float %569, float %569, float %569, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %603

; <label>:603                                     ; preds = %575, %0
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
!21 = !{void ()* @cs_optlm_blend8_to_lm, !"cs_optlm_blend8_to_lm", null, !4, !22}
!22 = !{i32 0, i64 272, i32 4, !23}
!23 = !{i32 64, i32 1, i32 1}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}

