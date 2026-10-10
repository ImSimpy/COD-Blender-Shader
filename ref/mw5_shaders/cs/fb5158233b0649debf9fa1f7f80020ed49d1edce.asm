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
; shader hash: 6cba58aa965d21bdd535103979e70b9f
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
;                                   texture     u32         buf      T5             t5     1
;                                   texture     u32         buf      T6             t6     1
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
%"class.Buffer<unsigned int>" = type { i32 }
%"class.RWTexture2DArray<float>" = type { float }
%"class.RWTexture2DArray<vector<float, 3> >" = type { <3 x float> }
%"class.RWTexture2DArray<vector<float, 2> >" = type { <2 x float> }
%GfxDynmLightLMOptShared = type { i32, i32, i32, i32 }
%GfxDynLightLMOpt = type { i32, i32, i32, i32 }

define void @cs_optlm_blend9_to_16() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %14 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %15 = extractvalue %dx.types.CBufRet.i32 %14, 0
  %16 = icmp ult i32 %13, %15
  br i1 %16, label %17, label %734, !dx.controlflow.hints !27

; <label>:17                                      ; preds = %0
  %18 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %19 = extractvalue %dx.types.CBufRet.i32 %18, 3
  %20 = lshr i32 %13, 3
  %21 = add i32 %19, %20
  %22 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %21, i32 undef)  ; BufferLoad(srv,index,wot)
  %23 = extractvalue %dx.types.ResRet.i32 %22, 0
  %24 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %21, i32 undef)  ; BufferLoad(srv,index,wot)
  %25 = extractvalue %dx.types.ResRet.i32 %24, 0
  %26 = shl i32 %13, 2
  %27 = and i32 %26, 28
  %28 = lshr i32 %25, %27
  %29 = and i32 %28, 7
  %30 = shl i32 1, %27
  %31 = add i32 %30, -1
  %32 = and i32 %25, %31
  %33 = and i32 %32, 286331153
  %34 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %33)  ; Countbits(value)
  %35 = and i32 %32, 572662306
  %36 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %35)  ; Countbits(value)
  %37 = shl i32 %36, 1
  %38 = and i32 %32, 1145324612
  %39 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %38)  ; Countbits(value)
  %40 = shl i32 %39, 2
  %41 = extractvalue %dx.types.CBufRet.i32 %18, 2
  %42 = mul i32 %13, 9
  %43 = add i32 %23, %42
  %44 = add i32 %43, %34
  %45 = add i32 %44, %37
  %46 = add i32 %45, %40
  %47 = add i32 %46, %41
  %48 = extractvalue %dx.types.CBufRet.i32 %18, 1
  %49 = shl i32 %48, 3
  %50 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %49, i32 undef)  ; BufferLoad(srv,index,wot)
  %51 = extractvalue %dx.types.ResRet.i32 %50, 0
  %52 = extractvalue %dx.types.ResRet.i32 %50, 1
  %53 = add i32 %51, %13
  %54 = shl i32 %53, 3
  %55 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %54, i32 undef)  ; BufferLoad(srv,index,wot)
  %56 = extractvalue %dx.types.ResRet.i32 %55, 0
  %57 = extractvalue %dx.types.ResRet.i32 %55, 1
  %58 = shl i32 %56, 4
  %59 = and i32 %58, 32752
  %60 = call float @dx.op.legacyF16ToF32(i32 131, i32 %59)  ; LegacyF16ToF32(value)
  %61 = lshr i32 %56, 7
  %62 = and i32 %61, 32752
  %63 = call float @dx.op.legacyF16ToF32(i32 131, i32 %62)  ; LegacyF16ToF32(value)
  %64 = lshr i32 %56, 22
  %65 = shl nuw nsw i32 %64, 5
  %66 = call float @dx.op.legacyF16ToF32(i32 131, i32 %65)  ; LegacyF16ToF32(value)
  %67 = and i32 %57, 255
  %68 = uitofp i32 %67 to float
  %69 = fmul fast float %68, 0x3F80101020000000
  %70 = fadd fast float %69, -1.000000e+00
  %71 = lshr i32 %57, 8
  %72 = and i32 %71, 255
  %73 = uitofp i32 %72 to float
  %74 = fmul fast float %73, 0x3F80101020000000
  %75 = fadd fast float %74, -1.000000e+00
  %76 = fadd fast float %75, %70
  %77 = fmul fast float %76, 5.000000e-01
  %78 = fsub fast float %70, %75
  %79 = fmul fast float %78, 5.000000e-01
  %80 = call float @dx.op.unary.f32(i32 6, float %77)  ; FAbs(value)
  %81 = fsub fast float 1.000000e+00, %80
  %82 = call float @dx.op.unary.f32(i32 6, float %79)  ; FAbs(value)
  %83 = fsub fast float %81, %82
  %84 = call float @dx.op.dot3.f32(i32 55, float %77, float %79, float %83, float %77, float %79, float %83)  ; Dot3(ax,ay,az,bx,by,bz)
  %85 = call float @dx.op.unary.f32(i32 25, float %84)  ; Rsqrt(value)
  %86 = fmul fast float %77, %85
  %87 = fmul fast float %79, %85
  %88 = fmul fast float %85, %83
  %89 = lshr i32 %57, 16
  %90 = and i32 %89, 255
  %91 = uitofp i32 %90 to float
  %92 = call float @dx.op.dot3.f32(i32 55, float %60, float %63, float %66, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %93 = fmul fast float %86, %92
  %94 = fmul fast float %87, %92
  %95 = fmul fast float %88, %92
  %96 = fmul fast float %92, %91
  %97 = shl i32 %47, 3
  %98 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %97, i32 undef)  ; BufferLoad(srv,index,wot)
  %99 = extractvalue %dx.types.ResRet.i32 %98, 0
  %100 = extractvalue %dx.types.ResRet.i32 %98, 1
  %101 = extractvalue %dx.types.ResRet.i32 %98, 2
  %102 = extractvalue %dx.types.ResRet.i32 %98, 3
  %103 = shl i32 %99, 4
  %104 = and i32 %103, 32752
  %105 = call float @dx.op.legacyF16ToF32(i32 131, i32 %104)  ; LegacyF16ToF32(value)
  %106 = lshr i32 %99, 7
  %107 = and i32 %106, 32752
  %108 = call float @dx.op.legacyF16ToF32(i32 131, i32 %107)  ; LegacyF16ToF32(value)
  %109 = lshr i32 %99, 22
  %110 = shl nuw nsw i32 %109, 5
  %111 = call float @dx.op.legacyF16ToF32(i32 131, i32 %110)  ; LegacyF16ToF32(value)
  %112 = and i32 %100, 255
  %113 = uitofp i32 %112 to float
  %114 = fmul fast float %113, 0x3F80101020000000
  %115 = fadd fast float %114, -1.000000e+00
  %116 = lshr i32 %100, 8
  %117 = and i32 %116, 255
  %118 = uitofp i32 %117 to float
  %119 = fmul fast float %118, 0x3F80101020000000
  %120 = fadd fast float %119, -1.000000e+00
  %121 = fadd fast float %120, %115
  %122 = fmul fast float %121, 5.000000e-01
  %123 = fsub fast float %115, %120
  %124 = fmul fast float %123, 5.000000e-01
  %125 = call float @dx.op.unary.f32(i32 6, float %122)  ; FAbs(value)
  %126 = fsub fast float 1.000000e+00, %125
  %127 = call float @dx.op.unary.f32(i32 6, float %124)  ; FAbs(value)
  %128 = fsub fast float %126, %127
  %129 = call float @dx.op.dot3.f32(i32 55, float %122, float %124, float %128, float %122, float %124, float %128)  ; Dot3(ax,ay,az,bx,by,bz)
  %130 = call float @dx.op.unary.f32(i32 25, float %129)  ; Rsqrt(value)
  %131 = fmul fast float %122, %130
  %132 = fmul fast float %124, %130
  %133 = fmul fast float %130, %128
  %134 = lshr i32 %100, 16
  %135 = and i32 %134, 255
  %136 = uitofp i32 %135 to float
  %137 = lshr i32 %100, 24
  %138 = shl i32 %101, 4
  %139 = and i32 %138, 32752
  %140 = call float @dx.op.legacyF16ToF32(i32 131, i32 %139)  ; LegacyF16ToF32(value)
  %141 = lshr i32 %101, 7
  %142 = and i32 %141, 32752
  %143 = call float @dx.op.legacyF16ToF32(i32 131, i32 %142)  ; LegacyF16ToF32(value)
  %144 = lshr i32 %101, 22
  %145 = shl nuw nsw i32 %144, 5
  %146 = call float @dx.op.legacyF16ToF32(i32 131, i32 %145)  ; LegacyF16ToF32(value)
  %147 = and i32 %102, 255
  %148 = uitofp i32 %147 to float
  %149 = fmul fast float %148, 0x3F80101020000000
  %150 = fadd fast float %149, -1.000000e+00
  %151 = lshr i32 %102, 8
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
  %166 = fmul fast float %165, %157
  %167 = fmul fast float %165, %159
  %168 = fmul fast float %165, %163
  %169 = lshr i32 %102, 16
  %170 = and i32 %169, 255
  %171 = uitofp i32 %170 to float
  %172 = lshr i32 %102, 24
  %173 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %137, i32 undef)  ; BufferLoad(srv,index,wot)
  %174 = extractvalue %dx.types.ResRet.f32 %173, 0
  %175 = extractvalue %dx.types.ResRet.f32 %173, 1
  %176 = extractvalue %dx.types.ResRet.f32 %173, 2
  %177 = fmul fast float %174, %105
  %178 = fmul fast float %175, %108
  %179 = fmul fast float %176, %111
  %180 = call float @dx.op.dot3.f32(i32 55, float %177, float %178, float %179, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %181 = fmul fast float %131, %180
  %182 = fmul fast float %132, %180
  %183 = fmul fast float %133, %180
  %184 = fmul fast float %180, %136
  %185 = fadd fast float %177, %60
  %186 = fadd fast float %178, %63
  %187 = fadd fast float %179, %66
  %188 = fadd fast float %181, %93
  %189 = fadd fast float %182, %94
  %190 = fadd fast float %183, %95
  %191 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %172, i32 undef)  ; BufferLoad(srv,index,wot)
  %192 = extractvalue %dx.types.ResRet.f32 %191, 0
  %193 = extractvalue %dx.types.ResRet.f32 %191, 1
  %194 = extractvalue %dx.types.ResRet.f32 %191, 2
  %195 = fmul fast float %192, %140
  %196 = fmul fast float %193, %143
  %197 = fmul fast float %194, %146
  %198 = call float @dx.op.dot3.f32(i32 55, float %195, float %196, float %197, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %199 = fmul fast float %166, %198
  %200 = fmul fast float %167, %198
  %201 = fmul fast float %168, %198
  %202 = fmul fast float %198, %171
  %203 = fadd fast float %185, %195
  %204 = fadd fast float %186, %196
  %205 = fadd fast float %187, %197
  %206 = fadd fast float %188, %199
  %207 = fadd fast float %189, %200
  %208 = fadd fast float %190, %201
  %209 = add i32 %97, 16
  %210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %209, i32 undef)  ; BufferLoad(srv,index,wot)
  %211 = extractvalue %dx.types.ResRet.i32 %210, 0
  %212 = extractvalue %dx.types.ResRet.i32 %210, 1
  %213 = extractvalue %dx.types.ResRet.i32 %210, 2
  %214 = extractvalue %dx.types.ResRet.i32 %210, 3
  %215 = shl i32 %211, 4
  %216 = and i32 %215, 32752
  %217 = call float @dx.op.legacyF16ToF32(i32 131, i32 %216)  ; LegacyF16ToF32(value)
  %218 = lshr i32 %211, 7
  %219 = and i32 %218, 32752
  %220 = call float @dx.op.legacyF16ToF32(i32 131, i32 %219)  ; LegacyF16ToF32(value)
  %221 = lshr i32 %211, 22
  %222 = shl nuw nsw i32 %221, 5
  %223 = call float @dx.op.legacyF16ToF32(i32 131, i32 %222)  ; LegacyF16ToF32(value)
  %224 = and i32 %212, 255
  %225 = uitofp i32 %224 to float
  %226 = fmul fast float %225, 0x3F80101020000000
  %227 = fadd fast float %226, -1.000000e+00
  %228 = lshr i32 %212, 8
  %229 = and i32 %228, 255
  %230 = uitofp i32 %229 to float
  %231 = fmul fast float %230, 0x3F80101020000000
  %232 = fadd fast float %231, -1.000000e+00
  %233 = fadd fast float %232, %227
  %234 = fmul fast float %233, 5.000000e-01
  %235 = fsub fast float %227, %232
  %236 = fmul fast float %235, 5.000000e-01
  %237 = call float @dx.op.unary.f32(i32 6, float %234)  ; FAbs(value)
  %238 = fsub fast float 1.000000e+00, %237
  %239 = call float @dx.op.unary.f32(i32 6, float %236)  ; FAbs(value)
  %240 = fsub fast float %238, %239
  %241 = call float @dx.op.dot3.f32(i32 55, float %234, float %236, float %240, float %234, float %236, float %240)  ; Dot3(ax,ay,az,bx,by,bz)
  %242 = call float @dx.op.unary.f32(i32 25, float %241)  ; Rsqrt(value)
  %243 = fmul fast float %234, %242
  %244 = fmul fast float %236, %242
  %245 = fmul fast float %242, %240
  %246 = lshr i32 %212, 16
  %247 = and i32 %246, 255
  %248 = uitofp i32 %247 to float
  %249 = lshr i32 %212, 24
  %250 = shl i32 %213, 4
  %251 = and i32 %250, 32752
  %252 = call float @dx.op.legacyF16ToF32(i32 131, i32 %251)  ; LegacyF16ToF32(value)
  %253 = lshr i32 %213, 7
  %254 = and i32 %253, 32752
  %255 = call float @dx.op.legacyF16ToF32(i32 131, i32 %254)  ; LegacyF16ToF32(value)
  %256 = lshr i32 %213, 22
  %257 = shl nuw nsw i32 %256, 5
  %258 = call float @dx.op.legacyF16ToF32(i32 131, i32 %257)  ; LegacyF16ToF32(value)
  %259 = and i32 %214, 255
  %260 = uitofp i32 %259 to float
  %261 = fmul fast float %260, 0x3F80101020000000
  %262 = fadd fast float %261, -1.000000e+00
  %263 = lshr i32 %214, 8
  %264 = and i32 %263, 255
  %265 = uitofp i32 %264 to float
  %266 = fmul fast float %265, 0x3F80101020000000
  %267 = fadd fast float %266, -1.000000e+00
  %268 = fadd fast float %267, %262
  %269 = fmul fast float %268, 5.000000e-01
  %270 = fsub fast float %262, %267
  %271 = fmul fast float %270, 5.000000e-01
  %272 = call float @dx.op.unary.f32(i32 6, float %269)  ; FAbs(value)
  %273 = fsub fast float 1.000000e+00, %272
  %274 = call float @dx.op.unary.f32(i32 6, float %271)  ; FAbs(value)
  %275 = fsub fast float %273, %274
  %276 = call float @dx.op.dot3.f32(i32 55, float %269, float %271, float %275, float %269, float %271, float %275)  ; Dot3(ax,ay,az,bx,by,bz)
  %277 = call float @dx.op.unary.f32(i32 25, float %276)  ; Rsqrt(value)
  %278 = fmul fast float %277, %269
  %279 = fmul fast float %277, %271
  %280 = fmul fast float %277, %275
  %281 = lshr i32 %214, 16
  %282 = and i32 %281, 255
  %283 = uitofp i32 %282 to float
  %284 = lshr i32 %214, 24
  %285 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %249, i32 undef)  ; BufferLoad(srv,index,wot)
  %286 = extractvalue %dx.types.ResRet.f32 %285, 0
  %287 = extractvalue %dx.types.ResRet.f32 %285, 1
  %288 = extractvalue %dx.types.ResRet.f32 %285, 2
  %289 = fmul fast float %286, %217
  %290 = fmul fast float %287, %220
  %291 = fmul fast float %288, %223
  %292 = call float @dx.op.dot3.f32(i32 55, float %289, float %290, float %291, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %293 = fmul fast float %243, %292
  %294 = fmul fast float %244, %292
  %295 = fmul fast float %245, %292
  %296 = fmul fast float %292, %248
  %297 = fadd fast float %203, %289
  %298 = fadd fast float %204, %290
  %299 = fadd fast float %205, %291
  %300 = fadd fast float %206, %293
  %301 = fadd fast float %207, %294
  %302 = fadd fast float %208, %295
  %303 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %284, i32 undef)  ; BufferLoad(srv,index,wot)
  %304 = extractvalue %dx.types.ResRet.f32 %303, 0
  %305 = extractvalue %dx.types.ResRet.f32 %303, 1
  %306 = extractvalue %dx.types.ResRet.f32 %303, 2
  %307 = fmul fast float %304, %252
  %308 = fmul fast float %305, %255
  %309 = fmul fast float %306, %258
  %310 = call float @dx.op.dot3.f32(i32 55, float %307, float %308, float %309, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %311 = fmul fast float %278, %310
  %312 = fmul fast float %279, %310
  %313 = fmul fast float %280, %310
  %314 = fmul fast float %310, %283
  %315 = fadd fast float %297, %307
  %316 = fadd fast float %298, %308
  %317 = fadd fast float %299, %309
  %318 = fadd fast float %300, %311
  %319 = fadd fast float %301, %312
  %320 = fadd fast float %302, %313
  %321 = add i32 %97, 32
  %322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %321, i32 undef)  ; BufferLoad(srv,index,wot)
  %323 = extractvalue %dx.types.ResRet.i32 %322, 0
  %324 = extractvalue %dx.types.ResRet.i32 %322, 1
  %325 = extractvalue %dx.types.ResRet.i32 %322, 2
  %326 = extractvalue %dx.types.ResRet.i32 %322, 3
  %327 = shl i32 %323, 4
  %328 = and i32 %327, 32752
  %329 = call float @dx.op.legacyF16ToF32(i32 131, i32 %328)  ; LegacyF16ToF32(value)
  %330 = lshr i32 %323, 7
  %331 = and i32 %330, 32752
  %332 = call float @dx.op.legacyF16ToF32(i32 131, i32 %331)  ; LegacyF16ToF32(value)
  %333 = lshr i32 %323, 22
  %334 = shl nuw nsw i32 %333, 5
  %335 = call float @dx.op.legacyF16ToF32(i32 131, i32 %334)  ; LegacyF16ToF32(value)
  %336 = and i32 %324, 255
  %337 = uitofp i32 %336 to float
  %338 = fmul fast float %337, 0x3F80101020000000
  %339 = fadd fast float %338, -1.000000e+00
  %340 = lshr i32 %324, 8
  %341 = and i32 %340, 255
  %342 = uitofp i32 %341 to float
  %343 = fmul fast float %342, 0x3F80101020000000
  %344 = fadd fast float %343, -1.000000e+00
  %345 = fadd fast float %344, %339
  %346 = fmul fast float %345, 5.000000e-01
  %347 = fsub fast float %339, %344
  %348 = fmul fast float %347, 5.000000e-01
  %349 = call float @dx.op.unary.f32(i32 6, float %346)  ; FAbs(value)
  %350 = fsub fast float 1.000000e+00, %349
  %351 = call float @dx.op.unary.f32(i32 6, float %348)  ; FAbs(value)
  %352 = fsub fast float %350, %351
  %353 = call float @dx.op.dot3.f32(i32 55, float %346, float %348, float %352, float %346, float %348, float %352)  ; Dot3(ax,ay,az,bx,by,bz)
  %354 = call float @dx.op.unary.f32(i32 25, float %353)  ; Rsqrt(value)
  %355 = fmul fast float %346, %354
  %356 = fmul fast float %348, %354
  %357 = fmul fast float %354, %352
  %358 = lshr i32 %324, 16
  %359 = and i32 %358, 255
  %360 = uitofp i32 %359 to float
  %361 = lshr i32 %324, 24
  %362 = shl i32 %325, 4
  %363 = and i32 %362, 32752
  %364 = call float @dx.op.legacyF16ToF32(i32 131, i32 %363)  ; LegacyF16ToF32(value)
  %365 = lshr i32 %325, 7
  %366 = and i32 %365, 32752
  %367 = call float @dx.op.legacyF16ToF32(i32 131, i32 %366)  ; LegacyF16ToF32(value)
  %368 = lshr i32 %325, 22
  %369 = shl nuw nsw i32 %368, 5
  %370 = call float @dx.op.legacyF16ToF32(i32 131, i32 %369)  ; LegacyF16ToF32(value)
  %371 = and i32 %326, 255
  %372 = uitofp i32 %371 to float
  %373 = fmul fast float %372, 0x3F80101020000000
  %374 = fadd fast float %373, -1.000000e+00
  %375 = lshr i32 %326, 8
  %376 = and i32 %375, 255
  %377 = uitofp i32 %376 to float
  %378 = fmul fast float %377, 0x3F80101020000000
  %379 = fadd fast float %378, -1.000000e+00
  %380 = fadd fast float %379, %374
  %381 = fmul fast float %380, 5.000000e-01
  %382 = fsub fast float %374, %379
  %383 = fmul fast float %382, 5.000000e-01
  %384 = call float @dx.op.unary.f32(i32 6, float %381)  ; FAbs(value)
  %385 = fsub fast float 1.000000e+00, %384
  %386 = call float @dx.op.unary.f32(i32 6, float %383)  ; FAbs(value)
  %387 = fsub fast float %385, %386
  %388 = call float @dx.op.dot3.f32(i32 55, float %381, float %383, float %387, float %381, float %383, float %387)  ; Dot3(ax,ay,az,bx,by,bz)
  %389 = call float @dx.op.unary.f32(i32 25, float %388)  ; Rsqrt(value)
  %390 = fmul fast float %389, %381
  %391 = fmul fast float %389, %383
  %392 = fmul fast float %389, %387
  %393 = lshr i32 %326, 16
  %394 = and i32 %393, 255
  %395 = uitofp i32 %394 to float
  %396 = lshr i32 %326, 24
  %397 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %361, i32 undef)  ; BufferLoad(srv,index,wot)
  %398 = extractvalue %dx.types.ResRet.f32 %397, 0
  %399 = extractvalue %dx.types.ResRet.f32 %397, 1
  %400 = extractvalue %dx.types.ResRet.f32 %397, 2
  %401 = fmul fast float %398, %329
  %402 = fmul fast float %399, %332
  %403 = fmul fast float %400, %335
  %404 = call float @dx.op.dot3.f32(i32 55, float %401, float %402, float %403, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %405 = fmul fast float %355, %404
  %406 = fmul fast float %356, %404
  %407 = fmul fast float %357, %404
  %408 = fmul fast float %404, %360
  %409 = fadd fast float %315, %401
  %410 = fadd fast float %316, %402
  %411 = fadd fast float %317, %403
  %412 = fadd fast float %318, %405
  %413 = fadd fast float %319, %406
  %414 = fadd fast float %320, %407
  %415 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %396, i32 undef)  ; BufferLoad(srv,index,wot)
  %416 = extractvalue %dx.types.ResRet.f32 %415, 0
  %417 = extractvalue %dx.types.ResRet.f32 %415, 1
  %418 = extractvalue %dx.types.ResRet.f32 %415, 2
  %419 = fmul fast float %416, %364
  %420 = fmul fast float %417, %367
  %421 = fmul fast float %418, %370
  %422 = call float @dx.op.dot3.f32(i32 55, float %419, float %420, float %421, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %423 = fmul fast float %390, %422
  %424 = fmul fast float %391, %422
  %425 = fmul fast float %392, %422
  %426 = fmul fast float %422, %395
  %427 = fadd fast float %409, %419
  %428 = fadd fast float %410, %420
  %429 = fadd fast float %411, %421
  %430 = fadd fast float %412, %423
  %431 = fadd fast float %413, %424
  %432 = fadd fast float %414, %425
  %433 = add i32 %97, 48
  %434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %433, i32 undef)  ; BufferLoad(srv,index,wot)
  %435 = extractvalue %dx.types.ResRet.i32 %434, 0
  %436 = extractvalue %dx.types.ResRet.i32 %434, 1
  %437 = extractvalue %dx.types.ResRet.i32 %434, 2
  %438 = extractvalue %dx.types.ResRet.i32 %434, 3
  %439 = shl i32 %435, 4
  %440 = and i32 %439, 32752
  %441 = call float @dx.op.legacyF16ToF32(i32 131, i32 %440)  ; LegacyF16ToF32(value)
  %442 = lshr i32 %435, 7
  %443 = and i32 %442, 32752
  %444 = call float @dx.op.legacyF16ToF32(i32 131, i32 %443)  ; LegacyF16ToF32(value)
  %445 = lshr i32 %435, 22
  %446 = shl nuw nsw i32 %445, 5
  %447 = call float @dx.op.legacyF16ToF32(i32 131, i32 %446)  ; LegacyF16ToF32(value)
  %448 = and i32 %436, 255
  %449 = uitofp i32 %448 to float
  %450 = fmul fast float %449, 0x3F80101020000000
  %451 = fadd fast float %450, -1.000000e+00
  %452 = lshr i32 %436, 8
  %453 = and i32 %452, 255
  %454 = uitofp i32 %453 to float
  %455 = fmul fast float %454, 0x3F80101020000000
  %456 = fadd fast float %455, -1.000000e+00
  %457 = fadd fast float %456, %451
  %458 = fmul fast float %457, 5.000000e-01
  %459 = fsub fast float %451, %456
  %460 = fmul fast float %459, 5.000000e-01
  %461 = call float @dx.op.unary.f32(i32 6, float %458)  ; FAbs(value)
  %462 = fsub fast float 1.000000e+00, %461
  %463 = call float @dx.op.unary.f32(i32 6, float %460)  ; FAbs(value)
  %464 = fsub fast float %462, %463
  %465 = call float @dx.op.dot3.f32(i32 55, float %458, float %460, float %464, float %458, float %460, float %464)  ; Dot3(ax,ay,az,bx,by,bz)
  %466 = call float @dx.op.unary.f32(i32 25, float %465)  ; Rsqrt(value)
  %467 = fmul fast float %458, %466
  %468 = fmul fast float %460, %466
  %469 = fmul fast float %466, %464
  %470 = lshr i32 %436, 16
  %471 = and i32 %470, 255
  %472 = uitofp i32 %471 to float
  %473 = lshr i32 %436, 24
  %474 = shl i32 %437, 4
  %475 = and i32 %474, 32752
  %476 = call float @dx.op.legacyF16ToF32(i32 131, i32 %475)  ; LegacyF16ToF32(value)
  %477 = lshr i32 %437, 7
  %478 = and i32 %477, 32752
  %479 = call float @dx.op.legacyF16ToF32(i32 131, i32 %478)  ; LegacyF16ToF32(value)
  %480 = lshr i32 %437, 22
  %481 = shl nuw nsw i32 %480, 5
  %482 = call float @dx.op.legacyF16ToF32(i32 131, i32 %481)  ; LegacyF16ToF32(value)
  %483 = and i32 %438, 255
  %484 = uitofp i32 %483 to float
  %485 = fmul fast float %484, 0x3F80101020000000
  %486 = fadd fast float %485, -1.000000e+00
  %487 = lshr i32 %438, 8
  %488 = and i32 %487, 255
  %489 = uitofp i32 %488 to float
  %490 = fmul fast float %489, 0x3F80101020000000
  %491 = fadd fast float %490, -1.000000e+00
  %492 = fadd fast float %491, %486
  %493 = fmul fast float %492, 5.000000e-01
  %494 = fsub fast float %486, %491
  %495 = fmul fast float %494, 5.000000e-01
  %496 = call float @dx.op.unary.f32(i32 6, float %493)  ; FAbs(value)
  %497 = fsub fast float 1.000000e+00, %496
  %498 = call float @dx.op.unary.f32(i32 6, float %495)  ; FAbs(value)
  %499 = fsub fast float %497, %498
  %500 = call float @dx.op.dot3.f32(i32 55, float %493, float %495, float %499, float %493, float %495, float %499)  ; Dot3(ax,ay,az,bx,by,bz)
  %501 = call float @dx.op.unary.f32(i32 25, float %500)  ; Rsqrt(value)
  %502 = fmul fast float %501, %493
  %503 = fmul fast float %501, %495
  %504 = fmul fast float %501, %499
  %505 = lshr i32 %438, 16
  %506 = and i32 %505, 255
  %507 = uitofp i32 %506 to float
  %508 = lshr i32 %438, 24
  %509 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %473, i32 undef)  ; BufferLoad(srv,index,wot)
  %510 = extractvalue %dx.types.ResRet.f32 %509, 0
  %511 = extractvalue %dx.types.ResRet.f32 %509, 1
  %512 = extractvalue %dx.types.ResRet.f32 %509, 2
  %513 = fmul fast float %510, %441
  %514 = fmul fast float %511, %444
  %515 = fmul fast float %512, %447
  %516 = call float @dx.op.dot3.f32(i32 55, float %513, float %514, float %515, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %517 = fmul fast float %467, %516
  %518 = fmul fast float %468, %516
  %519 = fmul fast float %469, %516
  %520 = fmul fast float %516, %472
  %521 = fadd fast float %427, %513
  %522 = fadd fast float %428, %514
  %523 = fadd fast float %429, %515
  %524 = fadd fast float %430, %517
  %525 = fadd fast float %431, %518
  %526 = fadd fast float %432, %519
  %527 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %528 = extractvalue %dx.types.ResRet.f32 %527, 0
  %529 = extractvalue %dx.types.ResRet.f32 %527, 1
  %530 = extractvalue %dx.types.ResRet.f32 %527, 2
  %531 = fmul fast float %528, %476
  %532 = fmul fast float %529, %479
  %533 = fmul fast float %530, %482
  %534 = call float @dx.op.dot3.f32(i32 55, float %531, float %532, float %533, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %535 = fmul fast float %502, %534
  %536 = fmul fast float %503, %534
  %537 = fmul fast float %504, %534
  %538 = fmul fast float %534, %507
  %539 = fadd fast float %521, %531
  %540 = fadd fast float %522, %532
  %541 = fadd fast float %523, %533
  %542 = fadd fast float %524, %535
  %543 = fadd fast float %525, %536
  %544 = fadd fast float %526, %537
  %545 = add i32 %97, 64
  %546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %545, i32 undef)  ; BufferLoad(srv,index,wot)
  %547 = extractvalue %dx.types.ResRet.i32 %546, 0
  %548 = extractvalue %dx.types.ResRet.i32 %546, 1
  %549 = shl i32 %547, 4
  %550 = and i32 %549, 32752
  %551 = call float @dx.op.legacyF16ToF32(i32 131, i32 %550)  ; LegacyF16ToF32(value)
  %552 = lshr i32 %547, 7
  %553 = and i32 %552, 32752
  %554 = call float @dx.op.legacyF16ToF32(i32 131, i32 %553)  ; LegacyF16ToF32(value)
  %555 = lshr i32 %547, 22
  %556 = shl nuw nsw i32 %555, 5
  %557 = call float @dx.op.legacyF16ToF32(i32 131, i32 %556)  ; LegacyF16ToF32(value)
  %558 = and i32 %548, 255
  %559 = uitofp i32 %558 to float
  %560 = fmul fast float %559, 0x3F80101020000000
  %561 = fadd fast float %560, -1.000000e+00
  %562 = lshr i32 %548, 8
  %563 = and i32 %562, 255
  %564 = uitofp i32 %563 to float
  %565 = fmul fast float %564, 0x3F80101020000000
  %566 = fadd fast float %565, -1.000000e+00
  %567 = fadd fast float %566, %561
  %568 = fmul fast float %567, 5.000000e-01
  %569 = fsub fast float %561, %566
  %570 = fmul fast float %569, 5.000000e-01
  %571 = call float @dx.op.unary.f32(i32 6, float %568)  ; FAbs(value)
  %572 = fsub fast float 1.000000e+00, %571
  %573 = call float @dx.op.unary.f32(i32 6, float %570)  ; FAbs(value)
  %574 = fsub fast float %572, %573
  %575 = call float @dx.op.dot3.f32(i32 55, float %568, float %570, float %574, float %568, float %570, float %574)  ; Dot3(ax,ay,az,bx,by,bz)
  %576 = call float @dx.op.unary.f32(i32 25, float %575)  ; Rsqrt(value)
  %577 = fmul fast float %568, %576
  %578 = fmul fast float %570, %576
  %579 = fmul fast float %576, %574
  %580 = lshr i32 %548, 16
  %581 = and i32 %580, 255
  %582 = uitofp i32 %581 to float
  %583 = lshr i32 %548, 24
  %584 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %583, i32 undef)  ; BufferLoad(srv,index,wot)
  %585 = extractvalue %dx.types.ResRet.f32 %584, 0
  %586 = extractvalue %dx.types.ResRet.f32 %584, 1
  %587 = extractvalue %dx.types.ResRet.f32 %584, 2
  %588 = fmul fast float %585, %551
  %589 = fmul fast float %586, %554
  %590 = fmul fast float %587, %557
  %591 = call float @dx.op.dot3.f32(i32 55, float %588, float %589, float %590, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %592 = fmul fast float %577, %591
  %593 = fmul fast float %578, %591
  %594 = fmul fast float %579, %591
  %595 = fmul fast float %591, %582
  %596 = fadd fast float %539, %588
  %597 = fadd fast float %540, %589
  %598 = fadd fast float %541, %590
  %599 = fadd fast float %184, %96
  %600 = fadd fast float %599, %202
  %601 = fadd fast float %600, %296
  %602 = fadd fast float %601, %314
  %603 = fadd fast float %602, %408
  %604 = fadd fast float %603, %426
  %605 = fadd fast float %604, %520
  %606 = fadd fast float %605, %538
  %607 = fadd fast float %606, %595
  %608 = fmul fast float %607, 0x3F70101020000000
  %609 = fadd fast float %542, %592
  %610 = fadd fast float %543, %593
  %611 = fadd fast float %544, %594
  %612 = add i32 %47, 9
  %613 = icmp eq i32 %29, 0
  br i1 %613, label %688, label %614

; <label>:614                                     ; preds = %17
  %615 = and i32 %28, 7
  br label %616

; <label>:616                                     ; preds = %616, %614
  %617 = phi float [ %678, %616 ], [ %596, %614 ]
  %618 = phi float [ %679, %616 ], [ %597, %614 ]
  %619 = phi float [ %680, %616 ], [ %598, %614 ]
  %620 = phi float [ %682, %616 ], [ %609, %614 ]
  %621 = phi float [ %683, %616 ], [ %610, %614 ]
  %622 = phi float [ %684, %616 ], [ %611, %614 ]
  %623 = phi float [ %681, %616 ], [ %608, %614 ]
  %624 = phi i32 [ %685, %616 ], [ 0, %614 ]
  %625 = add i32 %612, %624
  %626 = shl i32 %625, 3
  %627 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %626, i32 undef)  ; BufferLoad(srv,index,wot)
  %628 = extractvalue %dx.types.ResRet.i32 %627, 0
  %629 = extractvalue %dx.types.ResRet.i32 %627, 1
  %630 = shl i32 %628, 4
  %631 = and i32 %630, 32752
  %632 = call float @dx.op.legacyF16ToF32(i32 131, i32 %631)  ; LegacyF16ToF32(value)
  %633 = lshr i32 %628, 7
  %634 = and i32 %633, 32752
  %635 = call float @dx.op.legacyF16ToF32(i32 131, i32 %634)  ; LegacyF16ToF32(value)
  %636 = lshr i32 %628, 22
  %637 = shl nuw nsw i32 %636, 5
  %638 = call float @dx.op.legacyF16ToF32(i32 131, i32 %637)  ; LegacyF16ToF32(value)
  %639 = and i32 %629, 255
  %640 = uitofp i32 %639 to float
  %641 = fmul fast float %640, 0x3F80101020000000
  %642 = fadd fast float %641, -1.000000e+00
  %643 = lshr i32 %629, 8
  %644 = and i32 %643, 255
  %645 = uitofp i32 %644 to float
  %646 = fmul fast float %645, 0x3F80101020000000
  %647 = fadd fast float %646, -1.000000e+00
  %648 = fadd fast float %647, %642
  %649 = fmul fast float %648, 5.000000e-01
  %650 = fsub fast float %642, %647
  %651 = fmul fast float %650, 5.000000e-01
  %652 = call float @dx.op.unary.f32(i32 6, float %649)  ; FAbs(value)
  %653 = fsub fast float 1.000000e+00, %652
  %654 = call float @dx.op.unary.f32(i32 6, float %651)  ; FAbs(value)
  %655 = fsub fast float %653, %654
  %656 = call float @dx.op.dot3.f32(i32 55, float %649, float %651, float %655, float %649, float %651, float %655)  ; Dot3(ax,ay,az,bx,by,bz)
  %657 = call float @dx.op.unary.f32(i32 25, float %656)  ; Rsqrt(value)
  %658 = fmul fast float %649, %657
  %659 = fmul fast float %651, %657
  %660 = fmul fast float %657, %655
  %661 = lshr i32 %629, 16
  %662 = and i32 %661, 255
  %663 = uitofp i32 %662 to float
  %664 = fmul fast float %663, 0x3F70101020000000
  %665 = lshr i32 %629, 24
  %666 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %665, i32 undef)  ; BufferLoad(srv,index,wot)
  %667 = extractvalue %dx.types.ResRet.f32 %666, 0
  %668 = extractvalue %dx.types.ResRet.f32 %666, 1
  %669 = extractvalue %dx.types.ResRet.f32 %666, 2
  %670 = fmul fast float %667, %632
  %671 = fmul fast float %668, %635
  %672 = fmul fast float %669, %638
  %673 = call float @dx.op.dot3.f32(i32 55, float %670, float %671, float %672, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %674 = fmul fast float %658, %673
  %675 = fmul fast float %659, %673
  %676 = fmul fast float %660, %673
  %677 = fmul fast float %664, %673
  %678 = fadd fast float %670, %617
  %679 = fadd fast float %671, %618
  %680 = fadd fast float %672, %619
  %681 = fadd fast float %677, %623
  %682 = fadd fast float %674, %620
  %683 = fadd fast float %675, %621
  %684 = fadd fast float %676, %622
  %685 = add nuw nsw i32 %624, 1
  %686 = icmp eq i32 %685, %615
  br i1 %686, label %687, label %616, !llvm.loop !28

; <label>:687                                     ; preds = %616
  br label %688

; <label>:688                                     ; preds = %687, %17
  %689 = phi float [ %596, %17 ], [ %678, %687 ]
  %690 = phi float [ %597, %17 ], [ %679, %687 ]
  %691 = phi float [ %598, %17 ], [ %680, %687 ]
  %692 = phi float [ %609, %17 ], [ %682, %687 ]
  %693 = phi float [ %610, %17 ], [ %683, %687 ]
  %694 = phi float [ %611, %17 ], [ %684, %687 ]
  %695 = phi float [ %608, %17 ], [ %681, %687 ]
  %696 = call float @dx.op.dot3.f32(i32 55, float %689, float %690, float %691, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %697 = fcmp fast ogt float %696, 0.000000e+00
  %698 = fdiv fast float 1.000000e+00, %696
  %699 = select i1 %697, float %698, float 0.000000e+00
  %700 = fmul fast float %699, %695
  %701 = call float @dx.op.dot3.f32(i32 55, float %692, float %693, float %694, float %692, float %693, float %694)  ; Dot3(ax,ay,az,bx,by,bz)
  %702 = fcmp fast ogt float %701, 0.000000e+00
  br i1 %702, label %703, label %706, !dx.controlflow.hints !30

; <label>:703                                     ; preds = %688
  %704 = call float @dx.op.unary.f32(i32 24, float %701)  ; Sqrt(value)
  %705 = fdiv fast float 1.000000e+00, %704
  br label %706

; <label>:706                                     ; preds = %703, %688
  %707 = phi float [ %705, %703 ], [ %701, %688 ]
  %708 = fmul fast float %707, %692
  %709 = fmul fast float %707, %693
  %710 = fmul fast float %707, %694
  %711 = add i32 %52, %13
  %712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %711, i32 0)  ; BufferLoad(srv,index,wot)
  %713 = extractvalue %dx.types.ResRet.i32 %712, 0
  %714 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %715 = extractvalue %dx.types.CBufRet.i32 %714, 0
  %716 = add i32 %715, %713
  %717 = and i32 %716, 65535
  %718 = lshr i32 %716, 16
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %717, i32 %718, i32 0, float %689, float %690, float %691, float %689, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %719 = call float @dx.op.unary.f32(i32 6, float %708)  ; FAbs(value)
  %720 = call float @dx.op.unary.f32(i32 6, float %709)  ; FAbs(value)
  %721 = fadd fast float %719, %710
  %722 = fadd fast float %721, %720
  %723 = fdiv fast float 1.000000e+00, %722
  %724 = fadd fast float %693, %692
  %725 = fsub fast float %692, %693
  %726 = fmul fast float %724, 5.000000e-01
  %727 = fmul fast float %726, %707
  %728 = fmul fast float %727, %723
  %729 = fadd fast float %728, 5.000000e-01
  %730 = fmul fast float %725, 5.000000e-01
  %731 = fmul fast float %730, %707
  %732 = fmul fast float %731, %723
  %733 = fadd fast float %732, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %717, i32 %718, i32 0, float %729, float %733, float %729, float %729, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %717, i32 %718, i32 0, float %700, float %700, float %700, float %700, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %734

; <label>:734                                     ; preds = %706, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

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

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!24}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !16, !21, null}
!5 = !{!6, !8, !9, !10, !11, !13, !15}
!6 = !{i32 0, %"class.Buffer<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 10, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 4, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 12, i32 0, !12}
!12 = !{i32 1, i32 4}
!13 = !{i32 5, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 5, i32 1, i32 10, i32 0, !14}
!14 = !{i32 0, i32 5}
!15 = !{i32 6, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 6, i32 1, i32 10, i32 0, !14}
!16 = !{!17, !19, !20}
!17 = !{i32 0, %"class.RWTexture2DArray<float>"* undef, !"", i32 0, i32 0, i32 1, i32 7, i1 false, i1 false, i1 false, !18}
!18 = !{i32 0, i32 14}
!19 = !{i32 1, %"class.RWTexture2DArray<vector<float, 3> >"* undef, !"", i32 0, i32 1, i32 1, i32 7, i1 false, i1 false, i1 false, !7}
!20 = !{i32 2, %"class.RWTexture2DArray<vector<float, 2> >"* undef, !"", i32 0, i32 2, i32 1, i32 7, i1 false, i1 false, i1 false, !18}
!21 = !{!22, !23}
!22 = !{i32 0, %GfxDynmLightLMOptShared* undef, !"", i32 0, i32 0, i32 1, i32 16, null}
!23 = !{i32 1, %GfxDynLightLMOpt* undef, !"", i32 0, i32 1, i32 1, i32 16, null}
!24 = !{void ()* @cs_optlm_blend9_to_16, !"cs_optlm_blend9_to_16", null, !4, !25}
!25 = !{i32 0, i64 272, i32 4, !26}
!26 = !{i32 64, i32 1, i32 1}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.unroll.disable"}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}

