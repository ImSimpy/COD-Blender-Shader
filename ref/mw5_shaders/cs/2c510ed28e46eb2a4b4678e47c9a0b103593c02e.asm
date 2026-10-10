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
; shader hash: ae5b060a6d4e45c8106bcf4769f9d2b2
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

define void @cs_optlm_blend5_to_8() {
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
  br i1 %16, label %17, label %502, !dx.controlflow.hints !27

; <label>:17                                      ; preds = %0
  %18 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %19 = extractvalue %dx.types.CBufRet.i32 %18, 3
  %20 = lshr i32 %13, 4
  %21 = add i32 %19, %20
  %22 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %21, i32 undef)  ; BufferLoad(srv,index,wot)
  %23 = extractvalue %dx.types.ResRet.i32 %22, 0
  %24 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %21, i32 undef)  ; BufferLoad(srv,index,wot)
  %25 = extractvalue %dx.types.ResRet.i32 %24, 0
  %26 = shl i32 %13, 1
  %27 = and i32 %26, 30
  %28 = lshr i32 %25, %27
  %29 = and i32 %28, 3
  %30 = shl i32 1, %27
  %31 = add i32 %30, -1
  %32 = and i32 %25, %31
  %33 = and i32 %32, 1431655765
  %34 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %33)  ; Countbits(value)
  %35 = and i32 %32, -1431655766
  %36 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %35)  ; Countbits(value)
  %37 = shl i32 %36, 1
  %38 = extractvalue %dx.types.CBufRet.i32 %18, 2
  %39 = mul i32 %13, 5
  %40 = add i32 %23, %39
  %41 = add i32 %40, %34
  %42 = add i32 %41, %37
  %43 = add i32 %42, %38
  %44 = extractvalue %dx.types.CBufRet.i32 %18, 1
  %45 = shl i32 %44, 3
  %46 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %45, i32 undef)  ; BufferLoad(srv,index,wot)
  %47 = extractvalue %dx.types.ResRet.i32 %46, 0
  %48 = extractvalue %dx.types.ResRet.i32 %46, 1
  %49 = add i32 %47, %13
  %50 = shl i32 %49, 3
  %51 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %50, i32 undef)  ; BufferLoad(srv,index,wot)
  %52 = extractvalue %dx.types.ResRet.i32 %51, 0
  %53 = extractvalue %dx.types.ResRet.i32 %51, 1
  %54 = shl i32 %52, 4
  %55 = and i32 %54, 32752
  %56 = call float @dx.op.legacyF16ToF32(i32 131, i32 %55)  ; LegacyF16ToF32(value)
  %57 = lshr i32 %52, 7
  %58 = and i32 %57, 32752
  %59 = call float @dx.op.legacyF16ToF32(i32 131, i32 %58)  ; LegacyF16ToF32(value)
  %60 = lshr i32 %52, 22
  %61 = shl nuw nsw i32 %60, 5
  %62 = call float @dx.op.legacyF16ToF32(i32 131, i32 %61)  ; LegacyF16ToF32(value)
  %63 = and i32 %53, 255
  %64 = uitofp i32 %63 to float
  %65 = fmul fast float %64, 0x3F80101020000000
  %66 = fadd fast float %65, -1.000000e+00
  %67 = lshr i32 %53, 8
  %68 = and i32 %67, 255
  %69 = uitofp i32 %68 to float
  %70 = fmul fast float %69, 0x3F80101020000000
  %71 = fadd fast float %70, -1.000000e+00
  %72 = fadd fast float %71, %66
  %73 = fmul fast float %72, 5.000000e-01
  %74 = fsub fast float %66, %71
  %75 = fmul fast float %74, 5.000000e-01
  %76 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %77 = fsub fast float 1.000000e+00, %76
  %78 = call float @dx.op.unary.f32(i32 6, float %75)  ; FAbs(value)
  %79 = fsub fast float %77, %78
  %80 = call float @dx.op.dot3.f32(i32 55, float %73, float %75, float %79, float %73, float %75, float %79)  ; Dot3(ax,ay,az,bx,by,bz)
  %81 = call float @dx.op.unary.f32(i32 25, float %80)  ; Rsqrt(value)
  %82 = fmul fast float %73, %81
  %83 = fmul fast float %75, %81
  %84 = fmul fast float %81, %79
  %85 = lshr i32 %53, 16
  %86 = and i32 %85, 255
  %87 = uitofp i32 %86 to float
  %88 = call float @dx.op.dot3.f32(i32 55, float %56, float %59, float %62, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %89 = fmul fast float %82, %88
  %90 = fmul fast float %83, %88
  %91 = fmul fast float %84, %88
  %92 = fmul fast float %88, %87
  %93 = shl i32 %43, 3
  %94 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %93, i32 undef)  ; BufferLoad(srv,index,wot)
  %95 = extractvalue %dx.types.ResRet.i32 %94, 0
  %96 = extractvalue %dx.types.ResRet.i32 %94, 1
  %97 = extractvalue %dx.types.ResRet.i32 %94, 2
  %98 = extractvalue %dx.types.ResRet.i32 %94, 3
  %99 = shl i32 %95, 4
  %100 = and i32 %99, 32752
  %101 = call float @dx.op.legacyF16ToF32(i32 131, i32 %100)  ; LegacyF16ToF32(value)
  %102 = lshr i32 %95, 7
  %103 = and i32 %102, 32752
  %104 = call float @dx.op.legacyF16ToF32(i32 131, i32 %103)  ; LegacyF16ToF32(value)
  %105 = lshr i32 %95, 22
  %106 = shl nuw nsw i32 %105, 5
  %107 = call float @dx.op.legacyF16ToF32(i32 131, i32 %106)  ; LegacyF16ToF32(value)
  %108 = and i32 %96, 255
  %109 = uitofp i32 %108 to float
  %110 = fmul fast float %109, 0x3F80101020000000
  %111 = fadd fast float %110, -1.000000e+00
  %112 = lshr i32 %96, 8
  %113 = and i32 %112, 255
  %114 = uitofp i32 %113 to float
  %115 = fmul fast float %114, 0x3F80101020000000
  %116 = fadd fast float %115, -1.000000e+00
  %117 = fadd fast float %116, %111
  %118 = fmul fast float %117, 5.000000e-01
  %119 = fsub fast float %111, %116
  %120 = fmul fast float %119, 5.000000e-01
  %121 = call float @dx.op.unary.f32(i32 6, float %118)  ; FAbs(value)
  %122 = fsub fast float 1.000000e+00, %121
  %123 = call float @dx.op.unary.f32(i32 6, float %120)  ; FAbs(value)
  %124 = fsub fast float %122, %123
  %125 = call float @dx.op.dot3.f32(i32 55, float %118, float %120, float %124, float %118, float %120, float %124)  ; Dot3(ax,ay,az,bx,by,bz)
  %126 = call float @dx.op.unary.f32(i32 25, float %125)  ; Rsqrt(value)
  %127 = fmul fast float %118, %126
  %128 = fmul fast float %120, %126
  %129 = fmul fast float %126, %124
  %130 = lshr i32 %96, 16
  %131 = and i32 %130, 255
  %132 = uitofp i32 %131 to float
  %133 = lshr i32 %96, 24
  %134 = shl i32 %97, 4
  %135 = and i32 %134, 32752
  %136 = call float @dx.op.legacyF16ToF32(i32 131, i32 %135)  ; LegacyF16ToF32(value)
  %137 = lshr i32 %97, 7
  %138 = and i32 %137, 32752
  %139 = call float @dx.op.legacyF16ToF32(i32 131, i32 %138)  ; LegacyF16ToF32(value)
  %140 = lshr i32 %97, 22
  %141 = shl nuw nsw i32 %140, 5
  %142 = call float @dx.op.legacyF16ToF32(i32 131, i32 %141)  ; LegacyF16ToF32(value)
  %143 = and i32 %98, 255
  %144 = uitofp i32 %143 to float
  %145 = fmul fast float %144, 0x3F80101020000000
  %146 = fadd fast float %145, -1.000000e+00
  %147 = lshr i32 %98, 8
  %148 = and i32 %147, 255
  %149 = uitofp i32 %148 to float
  %150 = fmul fast float %149, 0x3F80101020000000
  %151 = fadd fast float %150, -1.000000e+00
  %152 = fadd fast float %151, %146
  %153 = fmul fast float %152, 5.000000e-01
  %154 = fsub fast float %146, %151
  %155 = fmul fast float %154, 5.000000e-01
  %156 = call float @dx.op.unary.f32(i32 6, float %153)  ; FAbs(value)
  %157 = fsub fast float 1.000000e+00, %156
  %158 = call float @dx.op.unary.f32(i32 6, float %155)  ; FAbs(value)
  %159 = fsub fast float %157, %158
  %160 = call float @dx.op.dot3.f32(i32 55, float %153, float %155, float %159, float %153, float %155, float %159)  ; Dot3(ax,ay,az,bx,by,bz)
  %161 = call float @dx.op.unary.f32(i32 25, float %160)  ; Rsqrt(value)
  %162 = fmul fast float %161, %153
  %163 = fmul fast float %161, %155
  %164 = fmul fast float %161, %159
  %165 = lshr i32 %98, 16
  %166 = and i32 %165, 255
  %167 = uitofp i32 %166 to float
  %168 = lshr i32 %98, 24
  %169 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %133, i32 undef)  ; BufferLoad(srv,index,wot)
  %170 = extractvalue %dx.types.ResRet.f32 %169, 0
  %171 = extractvalue %dx.types.ResRet.f32 %169, 1
  %172 = extractvalue %dx.types.ResRet.f32 %169, 2
  %173 = fmul fast float %170, %101
  %174 = fmul fast float %171, %104
  %175 = fmul fast float %172, %107
  %176 = call float @dx.op.dot3.f32(i32 55, float %173, float %174, float %175, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %177 = fmul fast float %127, %176
  %178 = fmul fast float %128, %176
  %179 = fmul fast float %129, %176
  %180 = fmul fast float %176, %132
  %181 = fadd fast float %173, %56
  %182 = fadd fast float %174, %59
  %183 = fadd fast float %175, %62
  %184 = fadd fast float %177, %89
  %185 = fadd fast float %178, %90
  %186 = fadd fast float %179, %91
  %187 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %168, i32 undef)  ; BufferLoad(srv,index,wot)
  %188 = extractvalue %dx.types.ResRet.f32 %187, 0
  %189 = extractvalue %dx.types.ResRet.f32 %187, 1
  %190 = extractvalue %dx.types.ResRet.f32 %187, 2
  %191 = fmul fast float %188, %136
  %192 = fmul fast float %189, %139
  %193 = fmul fast float %190, %142
  %194 = call float @dx.op.dot3.f32(i32 55, float %191, float %192, float %193, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %195 = fmul fast float %162, %194
  %196 = fmul fast float %163, %194
  %197 = fmul fast float %164, %194
  %198 = fmul fast float %194, %167
  %199 = fadd fast float %181, %191
  %200 = fadd fast float %182, %192
  %201 = fadd fast float %183, %193
  %202 = fadd fast float %184, %195
  %203 = fadd fast float %185, %196
  %204 = fadd fast float %186, %197
  %205 = add i32 %93, 16
  %206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %205, i32 undef)  ; BufferLoad(srv,index,wot)
  %207 = extractvalue %dx.types.ResRet.i32 %206, 0
  %208 = extractvalue %dx.types.ResRet.i32 %206, 1
  %209 = extractvalue %dx.types.ResRet.i32 %206, 2
  %210 = extractvalue %dx.types.ResRet.i32 %206, 3
  %211 = shl i32 %207, 4
  %212 = and i32 %211, 32752
  %213 = call float @dx.op.legacyF16ToF32(i32 131, i32 %212)  ; LegacyF16ToF32(value)
  %214 = lshr i32 %207, 7
  %215 = and i32 %214, 32752
  %216 = call float @dx.op.legacyF16ToF32(i32 131, i32 %215)  ; LegacyF16ToF32(value)
  %217 = lshr i32 %207, 22
  %218 = shl nuw nsw i32 %217, 5
  %219 = call float @dx.op.legacyF16ToF32(i32 131, i32 %218)  ; LegacyF16ToF32(value)
  %220 = and i32 %208, 255
  %221 = uitofp i32 %220 to float
  %222 = fmul fast float %221, 0x3F80101020000000
  %223 = fadd fast float %222, -1.000000e+00
  %224 = lshr i32 %208, 8
  %225 = and i32 %224, 255
  %226 = uitofp i32 %225 to float
  %227 = fmul fast float %226, 0x3F80101020000000
  %228 = fadd fast float %227, -1.000000e+00
  %229 = fadd fast float %228, %223
  %230 = fmul fast float %229, 5.000000e-01
  %231 = fsub fast float %223, %228
  %232 = fmul fast float %231, 5.000000e-01
  %233 = call float @dx.op.unary.f32(i32 6, float %230)  ; FAbs(value)
  %234 = fsub fast float 1.000000e+00, %233
  %235 = call float @dx.op.unary.f32(i32 6, float %232)  ; FAbs(value)
  %236 = fsub fast float %234, %235
  %237 = call float @dx.op.dot3.f32(i32 55, float %230, float %232, float %236, float %230, float %232, float %236)  ; Dot3(ax,ay,az,bx,by,bz)
  %238 = call float @dx.op.unary.f32(i32 25, float %237)  ; Rsqrt(value)
  %239 = fmul fast float %230, %238
  %240 = fmul fast float %232, %238
  %241 = fmul fast float %238, %236
  %242 = lshr i32 %208, 16
  %243 = and i32 %242, 255
  %244 = uitofp i32 %243 to float
  %245 = lshr i32 %208, 24
  %246 = shl i32 %209, 4
  %247 = and i32 %246, 32752
  %248 = call float @dx.op.legacyF16ToF32(i32 131, i32 %247)  ; LegacyF16ToF32(value)
  %249 = lshr i32 %209, 7
  %250 = and i32 %249, 32752
  %251 = call float @dx.op.legacyF16ToF32(i32 131, i32 %250)  ; LegacyF16ToF32(value)
  %252 = lshr i32 %209, 22
  %253 = shl nuw nsw i32 %252, 5
  %254 = call float @dx.op.legacyF16ToF32(i32 131, i32 %253)  ; LegacyF16ToF32(value)
  %255 = and i32 %210, 255
  %256 = uitofp i32 %255 to float
  %257 = fmul fast float %256, 0x3F80101020000000
  %258 = fadd fast float %257, -1.000000e+00
  %259 = lshr i32 %210, 8
  %260 = and i32 %259, 255
  %261 = uitofp i32 %260 to float
  %262 = fmul fast float %261, 0x3F80101020000000
  %263 = fadd fast float %262, -1.000000e+00
  %264 = fadd fast float %263, %258
  %265 = fmul fast float %264, 5.000000e-01
  %266 = fsub fast float %258, %263
  %267 = fmul fast float %266, 5.000000e-01
  %268 = call float @dx.op.unary.f32(i32 6, float %265)  ; FAbs(value)
  %269 = fsub fast float 1.000000e+00, %268
  %270 = call float @dx.op.unary.f32(i32 6, float %267)  ; FAbs(value)
  %271 = fsub fast float %269, %270
  %272 = call float @dx.op.dot3.f32(i32 55, float %265, float %267, float %271, float %265, float %267, float %271)  ; Dot3(ax,ay,az,bx,by,bz)
  %273 = call float @dx.op.unary.f32(i32 25, float %272)  ; Rsqrt(value)
  %274 = fmul fast float %273, %265
  %275 = fmul fast float %273, %267
  %276 = fmul fast float %273, %271
  %277 = lshr i32 %210, 16
  %278 = and i32 %277, 255
  %279 = uitofp i32 %278 to float
  %280 = lshr i32 %210, 24
  %281 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %245, i32 undef)  ; BufferLoad(srv,index,wot)
  %282 = extractvalue %dx.types.ResRet.f32 %281, 0
  %283 = extractvalue %dx.types.ResRet.f32 %281, 1
  %284 = extractvalue %dx.types.ResRet.f32 %281, 2
  %285 = fmul fast float %282, %213
  %286 = fmul fast float %283, %216
  %287 = fmul fast float %284, %219
  %288 = call float @dx.op.dot3.f32(i32 55, float %285, float %286, float %287, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %289 = fmul fast float %239, %288
  %290 = fmul fast float %240, %288
  %291 = fmul fast float %241, %288
  %292 = fmul fast float %288, %244
  %293 = fadd fast float %199, %285
  %294 = fadd fast float %200, %286
  %295 = fadd fast float %201, %287
  %296 = fadd fast float %202, %289
  %297 = fadd fast float %203, %290
  %298 = fadd fast float %204, %291
  %299 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %280, i32 undef)  ; BufferLoad(srv,index,wot)
  %300 = extractvalue %dx.types.ResRet.f32 %299, 0
  %301 = extractvalue %dx.types.ResRet.f32 %299, 1
  %302 = extractvalue %dx.types.ResRet.f32 %299, 2
  %303 = fmul fast float %300, %248
  %304 = fmul fast float %301, %251
  %305 = fmul fast float %302, %254
  %306 = call float @dx.op.dot3.f32(i32 55, float %303, float %304, float %305, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %307 = fmul fast float %274, %306
  %308 = fmul fast float %275, %306
  %309 = fmul fast float %276, %306
  %310 = fmul fast float %306, %279
  %311 = fadd fast float %293, %303
  %312 = fadd fast float %294, %304
  %313 = fadd fast float %295, %305
  %314 = fadd fast float %296, %307
  %315 = fadd fast float %297, %308
  %316 = fadd fast float %298, %309
  %317 = add i32 %93, 32
  %318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %317, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %356 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %355, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %368 = fadd fast float %311, %360
  %369 = fadd fast float %312, %361
  %370 = fadd fast float %313, %362
  %371 = fadd fast float %180, %92
  %372 = fadd fast float %371, %198
  %373 = fadd fast float %372, %292
  %374 = fadd fast float %373, %310
  %375 = fadd fast float %374, %367
  %376 = fmul fast float %375, 0x3F70101020000000
  %377 = fadd fast float %314, %364
  %378 = fadd fast float %315, %365
  %379 = fadd fast float %316, %366
  %380 = add i32 %43, 5
  %381 = icmp eq i32 %29, 0
  br i1 %381, label %456, label %382

; <label>:382                                     ; preds = %17
  %383 = and i32 %28, 3
  br label %384

; <label>:384                                     ; preds = %384, %382
  %385 = phi float [ %446, %384 ], [ %368, %382 ]
  %386 = phi float [ %447, %384 ], [ %369, %382 ]
  %387 = phi float [ %448, %384 ], [ %370, %382 ]
  %388 = phi float [ %450, %384 ], [ %377, %382 ]
  %389 = phi float [ %451, %384 ], [ %378, %382 ]
  %390 = phi float [ %452, %384 ], [ %379, %382 ]
  %391 = phi float [ %449, %384 ], [ %376, %382 ]
  %392 = phi i32 [ %453, %384 ], [ 0, %382 ]
  %393 = add i32 %380, %392
  %394 = shl i32 %393, 3
  %395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %394, i32 undef)  ; BufferLoad(srv,index,wot)
  %396 = extractvalue %dx.types.ResRet.i32 %395, 0
  %397 = extractvalue %dx.types.ResRet.i32 %395, 1
  %398 = shl i32 %396, 4
  %399 = and i32 %398, 32752
  %400 = call float @dx.op.legacyF16ToF32(i32 131, i32 %399)  ; LegacyF16ToF32(value)
  %401 = lshr i32 %396, 7
  %402 = and i32 %401, 32752
  %403 = call float @dx.op.legacyF16ToF32(i32 131, i32 %402)  ; LegacyF16ToF32(value)
  %404 = lshr i32 %396, 22
  %405 = shl nuw nsw i32 %404, 5
  %406 = call float @dx.op.legacyF16ToF32(i32 131, i32 %405)  ; LegacyF16ToF32(value)
  %407 = and i32 %397, 255
  %408 = uitofp i32 %407 to float
  %409 = fmul fast float %408, 0x3F80101020000000
  %410 = fadd fast float %409, -1.000000e+00
  %411 = lshr i32 %397, 8
  %412 = and i32 %411, 255
  %413 = uitofp i32 %412 to float
  %414 = fmul fast float %413, 0x3F80101020000000
  %415 = fadd fast float %414, -1.000000e+00
  %416 = fadd fast float %415, %410
  %417 = fmul fast float %416, 5.000000e-01
  %418 = fsub fast float %410, %415
  %419 = fmul fast float %418, 5.000000e-01
  %420 = call float @dx.op.unary.f32(i32 6, float %417)  ; FAbs(value)
  %421 = fsub fast float 1.000000e+00, %420
  %422 = call float @dx.op.unary.f32(i32 6, float %419)  ; FAbs(value)
  %423 = fsub fast float %421, %422
  %424 = call float @dx.op.dot3.f32(i32 55, float %417, float %419, float %423, float %417, float %419, float %423)  ; Dot3(ax,ay,az,bx,by,bz)
  %425 = call float @dx.op.unary.f32(i32 25, float %424)  ; Rsqrt(value)
  %426 = fmul fast float %417, %425
  %427 = fmul fast float %419, %425
  %428 = fmul fast float %425, %423
  %429 = lshr i32 %397, 16
  %430 = and i32 %429, 255
  %431 = uitofp i32 %430 to float
  %432 = fmul fast float %431, 0x3F70101020000000
  %433 = lshr i32 %397, 24
  %434 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %433, i32 undef)  ; BufferLoad(srv,index,wot)
  %435 = extractvalue %dx.types.ResRet.f32 %434, 0
  %436 = extractvalue %dx.types.ResRet.f32 %434, 1
  %437 = extractvalue %dx.types.ResRet.f32 %434, 2
  %438 = fmul fast float %435, %400
  %439 = fmul fast float %436, %403
  %440 = fmul fast float %437, %406
  %441 = call float @dx.op.dot3.f32(i32 55, float %438, float %439, float %440, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %442 = fmul fast float %426, %441
  %443 = fmul fast float %427, %441
  %444 = fmul fast float %428, %441
  %445 = fmul fast float %432, %441
  %446 = fadd fast float %438, %385
  %447 = fadd fast float %439, %386
  %448 = fadd fast float %440, %387
  %449 = fadd fast float %445, %391
  %450 = fadd fast float %442, %388
  %451 = fadd fast float %443, %389
  %452 = fadd fast float %444, %390
  %453 = add nuw nsw i32 %392, 1
  %454 = icmp eq i32 %453, %383
  br i1 %454, label %455, label %384, !llvm.loop !28

; <label>:455                                     ; preds = %384
  br label %456

; <label>:456                                     ; preds = %455, %17
  %457 = phi float [ %368, %17 ], [ %446, %455 ]
  %458 = phi float [ %369, %17 ], [ %447, %455 ]
  %459 = phi float [ %370, %17 ], [ %448, %455 ]
  %460 = phi float [ %377, %17 ], [ %450, %455 ]
  %461 = phi float [ %378, %17 ], [ %451, %455 ]
  %462 = phi float [ %379, %17 ], [ %452, %455 ]
  %463 = phi float [ %376, %17 ], [ %449, %455 ]
  %464 = call float @dx.op.dot3.f32(i32 55, float %457, float %458, float %459, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %465 = fcmp fast ogt float %464, 0.000000e+00
  %466 = fdiv fast float 1.000000e+00, %464
  %467 = select i1 %465, float %466, float 0.000000e+00
  %468 = fmul fast float %467, %463
  %469 = call float @dx.op.dot3.f32(i32 55, float %460, float %461, float %462, float %460, float %461, float %462)  ; Dot3(ax,ay,az,bx,by,bz)
  %470 = fcmp fast ogt float %469, 0.000000e+00
  br i1 %470, label %471, label %474, !dx.controlflow.hints !30

; <label>:471                                     ; preds = %456
  %472 = call float @dx.op.unary.f32(i32 24, float %469)  ; Sqrt(value)
  %473 = fdiv fast float 1.000000e+00, %472
  br label %474

; <label>:474                                     ; preds = %471, %456
  %475 = phi float [ %473, %471 ], [ %469, %456 ]
  %476 = fmul fast float %475, %460
  %477 = fmul fast float %475, %461
  %478 = fmul fast float %475, %462
  %479 = add i32 %48, %13
  %480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %479, i32 0)  ; BufferLoad(srv,index,wot)
  %481 = extractvalue %dx.types.ResRet.i32 %480, 0
  %482 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %483 = extractvalue %dx.types.CBufRet.i32 %482, 0
  %484 = add i32 %483, %481
  %485 = and i32 %484, 65535
  %486 = lshr i32 %484, 16
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %485, i32 %486, i32 0, float %457, float %458, float %459, float %457, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %487 = call float @dx.op.unary.f32(i32 6, float %476)  ; FAbs(value)
  %488 = call float @dx.op.unary.f32(i32 6, float %477)  ; FAbs(value)
  %489 = fadd fast float %487, %478
  %490 = fadd fast float %489, %488
  %491 = fdiv fast float 1.000000e+00, %490
  %492 = fadd fast float %461, %460
  %493 = fsub fast float %460, %461
  %494 = fmul fast float %492, 5.000000e-01
  %495 = fmul fast float %494, %475
  %496 = fmul fast float %495, %491
  %497 = fadd fast float %496, 5.000000e-01
  %498 = fmul fast float %493, 5.000000e-01
  %499 = fmul fast float %498, %475
  %500 = fmul fast float %499, %491
  %501 = fadd fast float %500, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %485, i32 %486, i32 0, float %497, float %501, float %497, float %497, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %485, i32 %486, i32 0, float %468, float %468, float %468, float %468, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %502

; <label>:502                                     ; preds = %474, %0
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
!24 = !{void ()* @cs_optlm_blend5_to_8, !"cs_optlm_blend5_to_8", null, !4, !25}
!25 = !{i32 0, i64 272, i32 4, !26}
!26 = !{i32 64, i32 1, i32 1}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.unroll.disable"}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}

