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
; shader hash: f6ebf0899e6325fcf1f7d4b51b69cfd5
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
; Resource bind info for 
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
; Resource bind info for 
; {
;
;   [64 x i8] (type annotation not present)
; }
;
; Resource bind info for 
; {
;
;   [32 x i8] (type annotation not present)
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
;                                   cbuffer      NA          NA     CB0            cb1     1
;                                   texture  struct         r/o      T0             t4     1
;                                   texture  struct         r/o      T1             t3     1
;                                   texture  struct         r/o      T2             t0     1
;                                   texture  struct         r/o      T3             t6     1
;                                   texture  struct         r/o      T4             t5     1
;                                       UAV    byte         r/w      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.StructuredBuffer<vector<float, 4> >" = type { <4 x float> }
%"class.StructuredBuffer<unsigned int>" = type { i32 }
%"class.StructuredBuffer<ReactiveMotionModelInfoGpu>" = type { %struct.ReactiveMotionModelInfoGpu }
%struct.ReactiveMotionModelInfoGpu = type { <3 x float>, float, <3 x float>, i32, <3 x float>, i32, i32, i32, i32, i32 }
%"class.StructuredBuffer<ReactiveMotionModelPart>" = type { %struct.ReactiveMotionModelPart }
%struct.ReactiveMotionModelPart = type { <3 x float>, i32, <3 x float>, i32 }
%struct.RWByteAddressBuffer = type { i32 }
%ReactiveMotionSimConsts = type { i32, i32, i32, i32 }

define void @cs_reactivemotion_sim_indirect() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %9 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 1, i32 0)  ; BufferLoad(srv,index,wot)
  %10 = extractvalue %dx.types.ResRet.i32 %9, 0
  %11 = icmp ult i32 %8, %10
  br i1 %11, label %12, label %528, !dx.controlflow.hints !22

; <label>:12                                      ; preds = %0
  %13 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %14 = extractvalue %dx.types.CBufRet.i32 %13, 2
  %15 = add i32 %14, 16
  %16 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %15, i32 0)  ; BufferLoad(srv,index,wot)
  %17 = extractvalue %dx.types.ResRet.i32 %16, 0
  %18 = add i32 %17, %8
  %19 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %18, i32 0)  ; BufferLoad(srv,index,wot)
  %20 = extractvalue %dx.types.ResRet.i32 %19, 0
  %21 = and i32 %20, 65535
  %22 = lshr i32 %20, 16
  %23 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %21, i32 28)  ; BufferLoad(srv,index,wot)
  %24 = extractvalue %dx.types.ResRet.i32 %23, 0
  %25 = and i32 %24, 65535
  %26 = add nuw nsw i32 %25, %22
  %27 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %21, i32 52)  ; BufferLoad(srv,index,wot)
  %28 = extractvalue %dx.types.ResRet.i32 %27, 0
  %29 = add i32 %28, %22
  %30 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %29, i32 12)  ; BufferLoad(srv,index,wot)
  %31 = extractvalue %dx.types.ResRet.i32 %30, 0
  %32 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %29, i32 16)  ; BufferLoad(srv,index,wot)
  %33 = extractvalue %dx.types.ResRet.f32 %32, 0
  %34 = extractvalue %dx.types.ResRet.f32 %32, 1
  %35 = extractvalue %dx.types.ResRet.f32 %32, 2
  %36 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %29, i32 28)  ; BufferLoad(srv,index,wot)
  %37 = extractvalue %dx.types.ResRet.i32 %36, 0
  %38 = lshr i32 %31, 22
  %39 = and i32 %38, 63
  %40 = lshr i32 %31, 28
  %41 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %42 = extractvalue %dx.types.CBufRet.i32 %41, 2
  %43 = icmp eq i32 %42, %40
  br i1 %43, label %44, label %528, !dx.controlflow.hints !23

; <label>:44                                      ; preds = %12
  %45 = icmp eq i32 %39, 63
  br i1 %45, label %290, label %46, !dx.controlflow.hints !24

; <label>:46                                      ; preds = %44
  %47 = sub i32 %18, %22
  %48 = add i32 %47, %39
  %49 = mul i32 %48, 48
  %50 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %49, i32 undef)  ; BufferLoad(srv,index,wot)
  %51 = extractvalue %dx.types.ResRet.f32 %50, 0
  %52 = extractvalue %dx.types.ResRet.f32 %50, 1
  %53 = extractvalue %dx.types.ResRet.f32 %50, 2
  %54 = add i32 %49, 16
  %55 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %54, i32 undef)  ; BufferLoad(srv,index,wot)
  %56 = extractvalue %dx.types.ResRet.f32 %55, 0
  %57 = extractvalue %dx.types.ResRet.f32 %55, 1
  %58 = extractvalue %dx.types.ResRet.f32 %55, 2
  %59 = extractvalue %dx.types.ResRet.f32 %55, 3
  %60 = add i32 %49, 32
  %61 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %60, i32 undef)  ; BufferLoad(srv,index,wot)
  %62 = extractvalue %dx.types.ResRet.f32 %61, 0
  %63 = extractvalue %dx.types.ResRet.f32 %61, 1
  %64 = extractvalue %dx.types.ResRet.f32 %61, 2
  %65 = add i32 %49, 44
  %66 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %65, i32 undef)  ; BufferLoad(srv,index,wot)
  %67 = extractvalue %dx.types.ResRet.i32 %66, 0
  %68 = lshr i32 %67, 30
  %69 = and i32 %67, 1023
  %70 = uitofp i32 %69 to float
  %71 = lshr i32 %67, 10
  %72 = and i32 %71, 1023
  %73 = uitofp i32 %72 to float
  %74 = lshr i32 %67, 20
  %75 = and i32 %74, 511
  %76 = uitofp i32 %75 to float
  %77 = fmul fast float %70, 0x3F56A64800000000
  %78 = fadd fast float %77, 0xBFE6A09E60000000
  %79 = fmul fast float %73, 0x3F56A64800000000
  %80 = fadd fast float %79, 0xBFE6A09E60000000
  %81 = fmul fast float %76, 0x3F66ABF460000000
  %82 = fadd fast float %81, 0xBFE6A09E60000000
  %83 = call float @dx.op.dot3.f32(i32 55, float %78, float %80, float %82, float %78, float %80, float %82)  ; Dot3(ax,ay,az,bx,by,bz)
  %84 = call float @dx.op.unary.f32(i32 7, float %83)  ; Saturate(value)
  %85 = fsub fast float 1.000000e+00, %84
  %86 = call float @dx.op.unary.f32(i32 24, float %85)  ; Sqrt(value)
  %87 = icmp eq i32 %68, 0
  br i1 %87, label %94, label %88, !dx.controlflow.hints !25

; <label>:88                                      ; preds = %46
  %89 = icmp eq i32 %68, 1
  br i1 %89, label %94, label %90, !dx.controlflow.hints !26

; <label>:90                                      ; preds = %88
  %91 = icmp eq i32 %68, 2
  %92 = select i1 %91, float %86, float %82
  %93 = select i1 %91, float %82, float %86
  br label %94

; <label>:94                                      ; preds = %90, %88, %46
  %95 = phi float [ %86, %46 ], [ %78, %88 ], [ %78, %90 ]
  %96 = phi float [ %78, %46 ], [ %86, %88 ], [ %80, %90 ]
  %97 = phi float [ %80, %46 ], [ %80, %88 ], [ %92, %90 ]
  %98 = phi float [ %82, %46 ], [ %82, %88 ], [ %93, %90 ]
  %99 = lshr i32 %37, 30
  %100 = and i32 %37, 1023
  %101 = uitofp i32 %100 to float
  %102 = lshr i32 %37, 10
  %103 = and i32 %102, 1023
  %104 = uitofp i32 %103 to float
  %105 = lshr i32 %37, 20
  %106 = and i32 %105, 511
  %107 = uitofp i32 %106 to float
  %108 = fmul fast float %101, 0x3F56A64800000000
  %109 = fadd fast float %108, 0xBFE6A09E60000000
  %110 = fmul fast float %104, 0x3F56A64800000000
  %111 = fadd fast float %110, 0xBFE6A09E60000000
  %112 = fmul fast float %107, 0x3F66ABF460000000
  %113 = fadd fast float %112, 0xBFE6A09E60000000
  %114 = call float @dx.op.dot3.f32(i32 55, float %109, float %111, float %113, float %109, float %111, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %115 = call float @dx.op.unary.f32(i32 7, float %114)  ; Saturate(value)
  %116 = fsub fast float 1.000000e+00, %115
  %117 = call float @dx.op.unary.f32(i32 24, float %116)  ; Sqrt(value)
  %118 = icmp eq i32 %99, 0
  br i1 %118, label %125, label %119, !dx.controlflow.hints !25

; <label>:119                                     ; preds = %94
  %120 = icmp eq i32 %99, 1
  br i1 %120, label %125, label %121, !dx.controlflow.hints !26

; <label>:121                                     ; preds = %119
  %122 = icmp eq i32 %99, 2
  %123 = select i1 %122, float %117, float %113
  %124 = select i1 %122, float %113, float %117
  br label %125

; <label>:125                                     ; preds = %121, %119, %94
  %126 = phi float [ %117, %94 ], [ %109, %119 ], [ %109, %121 ]
  %127 = phi float [ %109, %94 ], [ %117, %119 ], [ %111, %121 ]
  %128 = phi float [ %111, %94 ], [ %111, %119 ], [ %123, %121 ]
  %129 = phi float [ %113, %94 ], [ %113, %119 ], [ %124, %121 ]
  %130 = and i32 %37, 536870912
  %131 = icmp ne i32 %130, 0
  %132 = select i1 %131, float -1.000000e+00, float 1.000000e+00
  %133 = fmul fast float %126, %59
  %134 = fmul fast float %127, %59
  %135 = fmul fast float %128, %59
  %136 = fmul fast float %129, %56
  %137 = fmul fast float %129, %57
  %138 = fmul fast float %129, %58
  %139 = fadd fast float %136, %133
  %140 = fadd fast float %137, %134
  %141 = fmul fast float %128, %57
  %142 = fmul fast float %127, %58
  %143 = fsub fast float %141, %142
  %144 = fmul fast float %126, %58
  %145 = fmul fast float %128, %56
  %146 = fsub fast float %144, %145
  %147 = fmul fast float %127, %56
  %148 = fmul fast float %126, %57
  %149 = fsub fast float %147, %148
  %150 = fadd fast float %139, %143
  %151 = fadd fast float %140, %146
  %152 = fadd fast float %149, %135
  %153 = fadd fast float %152, %138
  %154 = fmul fast float %129, %59
  %155 = call float @dx.op.dot3.f32(i32 55, float %56, float %57, float %58, float %126, float %127, float %128)  ; Dot3(ax,ay,az,bx,by,bz)
  %156 = fsub fast float %154, %155
  %157 = fmul fast float %57, %35
  %158 = fmul fast float %58, %34
  %159 = fsub fast float %157, %158
  %160 = fmul fast float %58, %33
  %161 = fmul fast float %56, %35
  %162 = fsub fast float %160, %161
  %163 = fmul fast float %56, %34
  %164 = fmul fast float %57, %33
  %165 = fsub fast float %163, %164
  %166 = fmul fast float %159, 2.000000e+00
  %167 = fmul fast float %162, 2.000000e+00
  %168 = fmul fast float %165, 2.000000e+00
  %169 = fmul fast float %166, %59
  %170 = fmul fast float %167, %59
  %171 = fmul fast float %168, %59
  %172 = fmul fast float %168, %57
  %173 = fmul fast float %167, %58
  %174 = fmul fast float %166, %58
  %175 = fmul fast float %168, %56
  %176 = fmul fast float %167, %56
  %177 = fmul fast float %166, %57
  %178 = fadd fast float %62, %33
  %179 = fadd fast float %178, %169
  %180 = fsub fast float %179, %173
  %181 = fadd fast float %180, %172
  %182 = fadd fast float %63, %34
  %183 = fadd fast float %182, %170
  %184 = fsub fast float %183, %175
  %185 = fadd fast float %184, %174
  %186 = fadd fast float %64, %35
  %187 = fadd fast float %186, %171
  %188 = fsub fast float %187, %177
  %189 = fadd fast float %188, %176
  %190 = call float @dx.op.unary.f32(i32 6, float %153)  ; FAbs(value)
  %191 = call float @dx.op.unary.f32(i32 6, float %150)  ; FAbs(value)
  %192 = fcmp fast oge float %190, %191
  %193 = call float @dx.op.unary.f32(i32 6, float %151)  ; FAbs(value)
  %194 = fcmp fast oge float %190, %193
  %195 = and i1 %192, %194
  br i1 %195, label %196, label %199, !dx.controlflow.hints !27

; <label>:196                                     ; preds = %125
  %197 = fcmp fast olt float %153, 0.000000e+00
  %198 = select i1 %197, float 5.000000e+00, float 4.000000e+00
  br label %207

; <label>:199                                     ; preds = %125
  %200 = fcmp fast ult float %193, %191
  br i1 %200, label %204, label %201, !dx.controlflow.hints !28

; <label>:201                                     ; preds = %199
  %202 = fcmp fast olt float %151, 0.000000e+00
  %203 = select i1 %202, float 3.000000e+00, float 2.000000e+00
  br label %207

; <label>:204                                     ; preds = %199
  %205 = fcmp fast olt float %150, 0.000000e+00
  %206 = select i1 %205, float 1.000000e+00, float 0.000000e+00
  br label %207

; <label>:207                                     ; preds = %204, %201, %196
  %208 = phi float [ %198, %196 ], [ %203, %201 ], [ %206, %204 ]
  %209 = fmul fast float %208, 5.000000e-01
  %210 = fptoui float %209 to i32
  %211 = call float @dx.op.unary.f32(i32 6, float %156)  ; FAbs(value)
  %212 = call float @dx.op.binary.f32(i32 35, float %193, float %190)  ; FMax(a,b)
  %213 = call float @dx.op.binary.f32(i32 35, float %191, float %212)  ; FMax(a,b)
  %214 = fcmp fast ogt float %211, %213
  %215 = select i1 %214, i32 3, i32 %210
  %216 = icmp eq i32 %215, 0
  %217 = select i1 %216, float %151, float %150
  %218 = select i1 %216, float %153, float %151
  %219 = select i1 %216, float %156, float %153
  %220 = select i1 %216, float %150, float %156
  %221 = icmp eq i32 %215, 1
  %222 = select i1 %221, float %219, float %218
  %223 = select i1 %221, float %220, float %219
  %224 = select i1 %221, float %218, float %220
  %225 = icmp eq i32 %215, 2
  %226 = select i1 %225, float %224, float %223
  %227 = select i1 %225, float %223, float %224
  %228 = fcmp fast ogt float %227, 0.000000e+00
  %229 = select i1 %228, float 0x3FF6A09E60000000, float 0xBFF6A09E60000000
  %230 = fmul fast float %229, %217
  %231 = fmul fast float %229, %222
  %232 = fmul fast float %229, %226
  %233 = fadd fast float %230, 1.000000e+00
  %234 = fmul fast float %233, 5.000000e-01
  %235 = call float @dx.op.unary.f32(i32 7, float %234)  ; Saturate(value)
  %236 = fmul fast float %235, 1.023000e+03
  %237 = fptoui float %236 to i32
  %238 = fadd fast float %231, 1.000000e+00
  %239 = fmul fast float %238, 5.000000e-01
  %240 = call float @dx.op.unary.f32(i32 7, float %239)  ; Saturate(value)
  %241 = fmul fast float %240, 1.023000e+03
  %242 = fptoui float %241 to i32
  %243 = fadd fast float %232, 1.000000e+00
  %244 = fmul fast float %243, 5.000000e-01
  %245 = call float @dx.op.unary.f32(i32 7, float %244)  ; Saturate(value)
  %246 = fmul fast float %245, 5.110000e+02
  %247 = fptoui float %246 to i32
  %248 = shl i32 %242, 10
  %249 = shl i32 %247, 20
  %250 = fcmp fast ogt float %132, 0.000000e+00
  %251 = select i1 %250, i32 0, i32 536870912
  %252 = shl i32 %215, 30
  %253 = or i32 %237, %251
  %254 = or i32 %253, %252
  %255 = or i32 %254, %248
  %256 = or i32 %255, %249
  %257 = fmul fast float %96, %35
  %258 = fmul fast float %97, %34
  %259 = fsub fast float %257, %258
  %260 = fmul fast float %97, %33
  %261 = fmul fast float %95, %35
  %262 = fsub fast float %260, %261
  %263 = fmul fast float %95, %34
  %264 = fmul fast float %96, %33
  %265 = fsub fast float %263, %264
  %266 = fmul fast float %259, 2.000000e+00
  %267 = fmul fast float %262, 2.000000e+00
  %268 = fmul fast float %265, 2.000000e+00
  %269 = fmul fast float %266, %98
  %270 = fmul fast float %267, %98
  %271 = fmul fast float %268, %98
  %272 = fmul fast float %268, %96
  %273 = fmul fast float %267, %97
  %274 = fmul fast float %266, %97
  %275 = fmul fast float %268, %95
  %276 = fmul fast float %267, %95
  %277 = fmul fast float %266, %96
  %278 = fadd fast float %51, %33
  %279 = fadd fast float %278, %272
  %280 = fadd fast float %279, %269
  %281 = fsub fast float %280, %273
  %282 = fadd fast float %52, %34
  %283 = fsub fast float %282, %275
  %284 = fadd fast float %283, %270
  %285 = fadd fast float %284, %274
  %286 = fadd fast float %53, %35
  %287 = fadd fast float %286, %271
  %288 = fsub fast float %287, %277
  %289 = fadd fast float %288, %276
  br label %290

; <label>:290                                     ; preds = %207, %44
  %291 = phi float [ %181, %207 ], [ %33, %44 ]
  %292 = phi float [ %185, %207 ], [ %34, %44 ]
  %293 = phi float [ %189, %207 ], [ %35, %44 ]
  %294 = phi i32 [ %256, %207 ], [ %37, %44 ]
  %295 = phi float [ %281, %207 ], [ %33, %44 ]
  %296 = phi float [ %285, %207 ], [ %34, %44 ]
  %297 = phi float [ %289, %207 ], [ %35, %44 ]
  %298 = shl i32 %31, 4
  %299 = and i32 %298, 32752
  %300 = call float @dx.op.legacyF16ToF32(i32 131, i32 %299)  ; LegacyF16ToF32(value)
  %301 = lshr i32 %31, 7
  %302 = and i32 %301, 32752
  %303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %302)  ; LegacyF16ToF32(value)
  %304 = lshr i32 %294, 30
  %305 = and i32 %294, 1023
  %306 = uitofp i32 %305 to float
  %307 = lshr i32 %294, 10
  %308 = and i32 %307, 1023
  %309 = uitofp i32 %308 to float
  %310 = lshr i32 %294, 20
  %311 = and i32 %310, 511
  %312 = uitofp i32 %311 to float
  %313 = fmul fast float %306, 0x3F56A64800000000
  %314 = fadd fast float %313, 0xBFE6A09E60000000
  %315 = fmul fast float %309, 0x3F56A64800000000
  %316 = fadd fast float %315, 0xBFE6A09E60000000
  %317 = fmul fast float %312, 0x3F66ABF460000000
  %318 = fadd fast float %317, 0xBFE6A09E60000000
  %319 = call float @dx.op.dot3.f32(i32 55, float %314, float %316, float %318, float %314, float %316, float %318)  ; Dot3(ax,ay,az,bx,by,bz)
  %320 = call float @dx.op.unary.f32(i32 7, float %319)  ; Saturate(value)
  %321 = fsub fast float 1.000000e+00, %320
  %322 = call float @dx.op.unary.f32(i32 24, float %321)  ; Sqrt(value)
  %323 = icmp eq i32 %304, 0
  br i1 %323, label %330, label %324, !dx.controlflow.hints !25

; <label>:324                                     ; preds = %290
  %325 = icmp eq i32 %304, 1
  br i1 %325, label %330, label %326, !dx.controlflow.hints !26

; <label>:326                                     ; preds = %324
  %327 = icmp eq i32 %304, 2
  %328 = select i1 %327, float %322, float %318
  %329 = select i1 %327, float %318, float %322
  br label %330

; <label>:330                                     ; preds = %326, %324, %290
  %331 = phi float [ %322, %290 ], [ %314, %324 ], [ %314, %326 ]
  %332 = phi float [ %314, %290 ], [ %322, %324 ], [ %316, %326 ]
  %333 = phi float [ %316, %290 ], [ %316, %324 ], [ %328, %326 ]
  %334 = phi float [ %318, %290 ], [ %318, %324 ], [ %329, %326 ]
  br i1 %323, label %341, label %335, !dx.controlflow.hints !25

; <label>:335                                     ; preds = %330
  %336 = icmp eq i32 %304, 1
  br i1 %336, label %341, label %337, !dx.controlflow.hints !26

; <label>:337                                     ; preds = %335
  %338 = icmp eq i32 %304, 2
  %339 = select i1 %338, float %322, float %318
  %340 = select i1 %338, float %318, float %322
  br label %341

; <label>:341                                     ; preds = %337, %335, %330
  %342 = phi float [ %322, %330 ], [ %314, %335 ], [ %314, %337 ]
  %343 = phi float [ %314, %330 ], [ %322, %335 ], [ %316, %337 ]
  %344 = phi float [ %316, %330 ], [ %316, %335 ], [ %339, %337 ]
  %345 = phi float [ %318, %330 ], [ %318, %335 ], [ %340, %337 ]
  %346 = fmul fast float %344, %342
  %347 = fmul fast float %345, %343
  %348 = fadd fast float %347, %346
  %349 = fmul fast float %348, 2.000000e+00
  %350 = fmul fast float %343, 2.000000e+00
  %351 = fmul fast float %350, %344
  %352 = fmul fast float %342, 2.000000e+00
  %353 = fmul fast float %352, %345
  %354 = fsub fast float %351, %353
  %355 = fmul fast float %342, %342
  %356 = fmul fast float %355, 2.000000e+00
  %357 = fsub fast float 1.000000e+00, %356
  %358 = fmul fast float %343, %343
  %359 = fmul fast float %358, 2.000000e+00
  %360 = fsub fast float %357, %359
  %361 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %26, i32 0)  ; BufferLoad(srv,index,wot)
  %362 = extractvalue %dx.types.ResRet.f32 %361, 0
  %363 = extractvalue %dx.types.ResRet.f32 %361, 1
  %364 = extractvalue %dx.types.ResRet.f32 %361, 2
  %365 = fmul fast float %362, %362
  %366 = fmul fast float %363, %363
  %367 = fadd fast float %365, %366
  %368 = fmul fast float %364, %364
  %369 = fadd fast float %367, %368
  %370 = call float @dx.op.unary.f32(i32 24, float %369)  ; Sqrt(value)
  %371 = call float @dx.op.dot3.f32(i32 55, float %362, float %363, float %364, float %362, float %363, float %364)  ; Dot3(ax,ay,az,bx,by,bz)
  %372 = call float @dx.op.unary.f32(i32 25, float %371)  ; Rsqrt(value)
  %373 = fmul fast float %372, %362
  %374 = fmul fast float %372, %363
  %375 = fmul fast float %372, %364
  %376 = call float @dx.op.dot3.f32(i32 55, float %349, float %354, float %360, float %373, float %374, float %375)  ; Dot3(ax,ay,az,bx,by,bz)
  %377 = call float @dx.op.unary.f32(i32 6, float %376)  ; FAbs(value)
  %378 = call float @dx.op.dot3.f32(i32 55, float %373, float %374, float %375, float %349, float %354, float %360)  ; Dot3(ax,ay,az,bx,by,bz)
  %379 = fmul fast float %378, %349
  %380 = fmul fast float %378, %354
  %381 = fmul fast float %378, %360
  %382 = fsub fast float %373, %379
  %383 = fsub fast float %374, %380
  %384 = fsub fast float %375, %381
  %385 = call float @dx.op.dot3.f32(i32 55, float %382, float %383, float %384, float %382, float %383, float %384)  ; Dot3(ax,ay,az,bx,by,bz)
  %386 = call float @dx.op.unary.f32(i32 25, float %385)  ; Rsqrt(value)
  %387 = fmul fast float %382, %386
  %388 = fmul fast float %383, %386
  %389 = fmul fast float %384, %386
  %390 = fsub fast float -0.000000e+00, %331
  %391 = fsub fast float -0.000000e+00, %332
  %392 = fsub fast float -0.000000e+00, %333
  %393 = fmul fast float %389, %391
  %394 = fmul fast float %388, %392
  %395 = fsub fast float %393, %394
  %396 = fmul fast float %387, %392
  %397 = fmul fast float %389, %390
  %398 = fsub fast float %396, %397
  %399 = fmul fast float %388, %390
  %400 = fmul fast float %387, %391
  %401 = fsub fast float %399, %400
  %402 = fmul fast float %395, 2.000000e+00
  %403 = fmul fast float %398, 2.000000e+00
  %404 = fmul fast float %401, 2.000000e+00
  %405 = fmul fast float %402, %334
  %406 = fmul fast float %403, %334
  %407 = fmul fast float %404, %334
  %408 = fadd fast float %407, %389
  %409 = fmul fast float %404, %391
  %410 = fmul fast float %403, %392
  %411 = fmul fast float %402, %392
  %412 = fmul fast float %404, %390
  %413 = fmul fast float %403, %390
  %414 = fmul fast float %402, %391
  %415 = fsub fast float %413, %414
  %416 = fadd fast float %405, %387
  %417 = fsub fast float %416, %410
  %418 = fadd fast float %417, %409
  %419 = fadd fast float %406, %388
  %420 = fsub fast float %419, %412
  %421 = fadd fast float %420, %411
  %422 = fadd fast float %408, %415
  %423 = fmul fast float %418, %300
  %424 = fmul fast float %421, %303
  %425 = fmul fast float %422, %332
  %426 = fmul fast float %424, %333
  %427 = fsub fast float %425, %426
  %428 = fmul fast float %423, %333
  %429 = fmul fast float %422, %331
  %430 = fsub fast float %428, %429
  %431 = fmul fast float %424, %331
  %432 = fmul fast float %423, %332
  %433 = fsub fast float %431, %432
  %434 = fmul fast float %427, 2.000000e+00
  %435 = fmul fast float %430, 2.000000e+00
  %436 = fmul fast float %433, 2.000000e+00
  %437 = fmul fast float %434, %334
  %438 = fmul fast float %435, %334
  %439 = fmul fast float %436, %334
  %440 = fadd fast float %437, %423
  %441 = fadd fast float %438, %424
  %442 = fadd fast float %439, %422
  %443 = fmul fast float %436, %332
  %444 = fmul fast float %435, %333
  %445 = fsub fast float %443, %444
  %446 = fmul fast float %434, %333
  %447 = fmul fast float %436, %331
  %448 = fsub fast float %446, %447
  %449 = fmul fast float %435, %331
  %450 = fmul fast float %434, %332
  %451 = fsub fast float %449, %450
  %452 = fadd fast float %440, %445
  %453 = fadd fast float %441, %448
  %454 = fadd fast float %442, %451
  %455 = fmul fast float %452, %452
  %456 = fmul fast float %453, %453
  %457 = fadd fast float %455, %456
  %458 = fmul fast float %454, %454
  %459 = fadd fast float %457, %458
  %460 = call float @dx.op.unary.f32(i32 24, float %459)  ; Sqrt(value)
  %461 = fsub fast float 1.000000e+00, %377
  %462 = fmul fast float %461, %370
  %463 = fmul fast float %462, %460
  %464 = call float @dx.op.dot3.f32(i32 55, float %452, float %453, float %454, float %452, float %453, float %454)  ; Dot3(ax,ay,az,bx,by,bz)
  %465 = call float @dx.op.unary.f32(i32 25, float %464)  ; Rsqrt(value)
  %466 = fmul fast float %452, %465
  %467 = fmul fast float %453, %465
  %468 = fmul fast float %454, %465
  %469 = fmul fast float %468, %354
  %470 = fmul fast float %467, %360
  %471 = fsub fast float %469, %470
  %472 = fmul fast float %466, %360
  %473 = fmul fast float %468, %349
  %474 = fsub fast float %472, %473
  %475 = fmul fast float %467, %349
  %476 = fmul fast float %466, %354
  %477 = fsub fast float %475, %476
  %478 = call float @dx.op.dot3.f32(i32 55, float %471, float %474, float %477, float %471, float %474, float %477)  ; Dot3(ax,ay,az,bx,by,bz)
  %479 = call float @dx.op.unary.f32(i32 25, float %478)  ; Rsqrt(value)
  %480 = call float @dx.op.binary.f32(i32 36, float %463, float 0x3FF0BD0840000000)  ; FMin(a,b)
  %481 = fmul fast float %480, 5.000000e-01
  %482 = call float @dx.op.unary.f32(i32 13, float %481)  ; Sin(value)
  %483 = call float @dx.op.unary.f32(i32 12, float %481)  ; Cos(value)
  %484 = fmul fast float %482, %479
  %485 = fmul fast float %484, %471
  %486 = fmul fast float %484, %474
  %487 = fmul fast float %484, %477
  br i1 %323, label %494, label %488, !dx.controlflow.hints !25

; <label>:488                                     ; preds = %341
  %489 = icmp eq i32 %304, 1
  br i1 %489, label %494, label %490, !dx.controlflow.hints !26

; <label>:490                                     ; preds = %488
  %491 = icmp eq i32 %304, 2
  %492 = select i1 %491, float %322, float %318
  %493 = select i1 %491, float %318, float %322
  br label %494

; <label>:494                                     ; preds = %490, %488, %341
  %495 = phi float [ %322, %341 ], [ %314, %488 ], [ %314, %490 ]
  %496 = phi float [ %314, %341 ], [ %322, %488 ], [ %316, %490 ]
  %497 = phi float [ %316, %341 ], [ %316, %488 ], [ %492, %490 ]
  %498 = phi float [ %318, %341 ], [ %318, %488 ], [ %493, %490 ]
  %499 = fmul fast float %495, %483
  %500 = fmul fast float %496, %483
  %501 = fmul fast float %497, %483
  %502 = fmul fast float %498, %485
  %503 = fmul fast float %498, %486
  %504 = fmul fast float %498, %487
  %505 = fmul fast float %497, %486
  %506 = fmul fast float %496, %487
  %507 = fmul fast float %495, %487
  %508 = fmul fast float %497, %485
  %509 = fmul fast float %496, %485
  %510 = fmul fast float %495, %486
  %511 = fsub fast float %499, %506
  %512 = fadd fast float %511, %505
  %513 = fadd fast float %512, %502
  %514 = fadd fast float %500, %507
  %515 = fsub fast float %514, %508
  %516 = fadd fast float %515, %503
  %517 = fsub fast float %509, %510
  %518 = fadd fast float %517, %501
  %519 = fadd fast float %518, %504
  %520 = fmul fast float %498, %483
  %521 = call float @dx.op.dot3.f32(i32 55, float %485, float %486, float %487, float %495, float %496, float %497)  ; Dot3(ax,ay,az,bx,by,bz)
  %522 = fsub fast float %520, %521
  %523 = mul i32 %18, 48
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %523, i32 undef, float %295, float %296, float %297, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %524 = or i32 %523, 12
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %524, i32 undef, float 0.000000e+00, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %525 = add i32 %523, 16
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %525, i32 undef, float %513, float %516, float %519, float %522, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %526 = add i32 %523, 32
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %526, i32 undef, float %291, float %292, float %293, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %527 = add i32 %523, 44
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %527, i32 undef, i32 %294, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %528

; <label>:528                                     ; preds = %494, %12, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.bufferStore.f32(i32, %dx.types.Handle, i32, i32, float, float, float, float, i8) #2

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!19}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !15, !17, null}
!5 = !{!6, !8, !10, !12, !14}
!6 = !{i32 0, %"class.StructuredBuffer<vector<float, 4> >"* undef, !"", i32 0, i32 4, i32 1, i32 12, i32 0, !7}
!7 = !{i32 1, i32 16}
!8 = !{i32 1, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 3, i32 1, i32 12, i32 0, !9}
!9 = !{i32 1, i32 4}
!10 = !{i32 2, %"class.StructuredBuffer<ReactiveMotionModelInfoGpu>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i32 0, !11}
!11 = !{i32 1, i32 64}
!12 = !{i32 3, %"class.StructuredBuffer<ReactiveMotionModelPart>"* undef, !"", i32 0, i32 6, i32 1, i32 12, i32 0, !13}
!13 = !{i32 1, i32 32}
!14 = !{i32 4, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 5, i32 1, i32 12, i32 0, !9}
!15 = !{!16}
!16 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!17 = !{!18}
!18 = !{i32 0, %ReactiveMotionSimConsts* undef, !"", i32 0, i32 1, i32 1, i32 16, null}
!19 = !{void ()* @cs_reactivemotion_sim_indirect, !"cs_reactivemotion_sim_indirect", null, !4, !20}
!20 = !{i32 0, i64 272, i32 4, !21}
!21 = !{i32 64, i32 1, i32 1}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}

