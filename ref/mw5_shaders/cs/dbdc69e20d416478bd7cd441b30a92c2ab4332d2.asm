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
; shader hash: 06588467642ceee1c9af866e23bd8cd5
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

define void @cs_optlm_blend5_to_lm() {
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
  br i1 %14, label %15, label %417, !dx.controlflow.hints !24

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
  %371 = fadd fast float %123, %65
  %372 = fadd fast float %371, %184
  %373 = fadd fast float %372, %245
  %374 = fadd fast float %373, %306
  %375 = fadd fast float %374, %367
  %376 = fadd fast float %310, %364
  %377 = fadd fast float %311, %365
  %378 = fadd fast float %312, %366
  %379 = call float @dx.op.dot3.f32(i32 55, float %368, float %369, float %370, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %380 = fcmp fast ogt float %379, 0.000000e+00
  %381 = fdiv fast float 0x3F70101020000000, %379
  %382 = select i1 %380, float %381, float 0.000000e+00
  %383 = fmul fast float %382, %375
  %384 = call float @dx.op.dot3.f32(i32 55, float %376, float %377, float %378, float %376, float %377, float %378)  ; Dot3(ax,ay,az,bx,by,bz)
  %385 = fcmp fast ogt float %384, 0.000000e+00
  br i1 %385, label %386, label %389, !dx.controlflow.hints !25

; <label>:386                                     ; preds = %15
  %387 = call float @dx.op.unary.f32(i32 24, float %384)  ; Sqrt(value)
  %388 = fdiv fast float 1.000000e+00, %387
  br label %389

; <label>:389                                     ; preds = %386, %15
  %390 = phi float [ %388, %386 ], [ %384, %15 ]
  %391 = fmul fast float %390, %376
  %392 = fmul fast float %390, %377
  %393 = fmul fast float %390, %378
  %394 = add i32 %21, %11
  %395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %394, i32 0)  ; BufferLoad(srv,index,wot)
  %396 = extractvalue %dx.types.ResRet.i32 %395, 0
  %397 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %398 = extractvalue %dx.types.CBufRet.i32 %397, 0
  %399 = add i32 %398, %396
  %400 = and i32 %399, 65535
  %401 = lshr i32 %399, 16
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %400, i32 %401, i32 0, float %368, float %369, float %370, float %368, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %402 = call float @dx.op.unary.f32(i32 6, float %391)  ; FAbs(value)
  %403 = call float @dx.op.unary.f32(i32 6, float %392)  ; FAbs(value)
  %404 = fadd fast float %402, %393
  %405 = fadd fast float %404, %403
  %406 = fdiv fast float 1.000000e+00, %405
  %407 = fadd fast float %376, %377
  %408 = fsub fast float %376, %377
  %409 = fmul fast float %407, 5.000000e-01
  %410 = fmul fast float %409, %390
  %411 = fmul fast float %410, %406
  %412 = fadd fast float %411, 5.000000e-01
  %413 = fmul fast float %408, 5.000000e-01
  %414 = fmul fast float %413, %390
  %415 = fmul fast float %414, %406
  %416 = fadd fast float %415, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %400, i32 %401, i32 0, float %412, float %416, float %412, float %412, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %400, i32 %401, i32 0, float %383, float %383, float %383, float %383, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %417

; <label>:417                                     ; preds = %389, %0
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
!21 = !{void ()* @cs_optlm_blend5_to_lm, !"cs_optlm_blend5_to_lm", null, !4, !22}
!22 = !{i32 0, i64 272, i32 4, !23}
!23 = !{i32 64, i32 1, i32 1}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}

