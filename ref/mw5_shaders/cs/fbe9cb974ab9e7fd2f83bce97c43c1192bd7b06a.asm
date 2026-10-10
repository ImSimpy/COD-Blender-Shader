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
; shader hash: c7f82d8b167cee94a5784705a37d5618
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
;                                   texture  struct         r/o      T1             t0     1
;                                   texture  struct         r/o      T2             t6     1
;                                   texture  struct         r/o      T3             t5     1
;                                       UAV    byte         r/w      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.StructuredBuffer<vector<float, 4> >" = type { <4 x float> }
%"class.StructuredBuffer<ReactiveMotionModelInfoGpu>" = type { %struct.ReactiveMotionModelInfoGpu }
%struct.ReactiveMotionModelInfoGpu = type { <3 x float>, float, <3 x float>, i32, <3 x float>, i32, i32, i32, i32, i32 }
%"class.StructuredBuffer<ReactiveMotionModelPart>" = type { %struct.ReactiveMotionModelPart }
%struct.ReactiveMotionModelPart = type { <3 x float>, i32, <3 x float>, i32 }
%"class.StructuredBuffer<unsigned int>" = type { i32 }
%struct.RWByteAddressBuffer = type { i32 }
%ReactiveMotionSimConsts = type { i32, i32, i32, i32 }

define void @cs_reactivemotion_sim() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %8 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %9 = extractvalue %dx.types.CBufRet.i32 %8, 1
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %11, label %523, !dx.controlflow.hints !21

; <label>:11                                      ; preds = %0
  %12 = extractvalue %dx.types.CBufRet.i32 %8, 3
  %13 = add i32 %12, %7
  %14 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %13, i32 0)  ; BufferLoad(srv,index,wot)
  %15 = extractvalue %dx.types.ResRet.i32 %14, 0
  %16 = and i32 %15, 65535
  %17 = lshr i32 %15, 16
  %18 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %16, i32 28)  ; BufferLoad(srv,index,wot)
  %19 = extractvalue %dx.types.ResRet.i32 %18, 0
  %20 = and i32 %19, 65535
  %21 = add nuw nsw i32 %20, %17
  %22 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %16, i32 52)  ; BufferLoad(srv,index,wot)
  %23 = extractvalue %dx.types.ResRet.i32 %22, 0
  %24 = add i32 %23, %17
  %25 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %24, i32 12)  ; BufferLoad(srv,index,wot)
  %26 = extractvalue %dx.types.ResRet.i32 %25, 0
  %27 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %24, i32 16)  ; BufferLoad(srv,index,wot)
  %28 = extractvalue %dx.types.ResRet.f32 %27, 0
  %29 = extractvalue %dx.types.ResRet.f32 %27, 1
  %30 = extractvalue %dx.types.ResRet.f32 %27, 2
  %31 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %24, i32 28)  ; BufferLoad(srv,index,wot)
  %32 = extractvalue %dx.types.ResRet.i32 %31, 0
  %33 = lshr i32 %26, 22
  %34 = and i32 %33, 63
  %35 = lshr i32 %26, 28
  %36 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %37 = extractvalue %dx.types.CBufRet.i32 %36, 2
  %38 = icmp eq i32 %37, %35
  br i1 %38, label %39, label %523, !dx.controlflow.hints !22

; <label>:39                                      ; preds = %11
  %40 = icmp eq i32 %34, 63
  br i1 %40, label %285, label %41, !dx.controlflow.hints !23

; <label>:41                                      ; preds = %39
  %42 = sub i32 %13, %17
  %43 = add i32 %42, %34
  %44 = mul i32 %43, 48
  %45 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %44, i32 undef)  ; BufferLoad(srv,index,wot)
  %46 = extractvalue %dx.types.ResRet.f32 %45, 0
  %47 = extractvalue %dx.types.ResRet.f32 %45, 1
  %48 = extractvalue %dx.types.ResRet.f32 %45, 2
  %49 = add i32 %44, 16
  %50 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %49, i32 undef)  ; BufferLoad(srv,index,wot)
  %51 = extractvalue %dx.types.ResRet.f32 %50, 0
  %52 = extractvalue %dx.types.ResRet.f32 %50, 1
  %53 = extractvalue %dx.types.ResRet.f32 %50, 2
  %54 = extractvalue %dx.types.ResRet.f32 %50, 3
  %55 = add i32 %44, 32
  %56 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %55, i32 undef)  ; BufferLoad(srv,index,wot)
  %57 = extractvalue %dx.types.ResRet.f32 %56, 0
  %58 = extractvalue %dx.types.ResRet.f32 %56, 1
  %59 = extractvalue %dx.types.ResRet.f32 %56, 2
  %60 = add i32 %44, 44
  %61 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %60, i32 undef)  ; BufferLoad(srv,index,wot)
  %62 = extractvalue %dx.types.ResRet.i32 %61, 0
  %63 = lshr i32 %62, 30
  %64 = and i32 %62, 1023
  %65 = uitofp i32 %64 to float
  %66 = lshr i32 %62, 10
  %67 = and i32 %66, 1023
  %68 = uitofp i32 %67 to float
  %69 = lshr i32 %62, 20
  %70 = and i32 %69, 511
  %71 = uitofp i32 %70 to float
  %72 = fmul fast float %65, 0x3F56A64800000000
  %73 = fadd fast float %72, 0xBFE6A09E60000000
  %74 = fmul fast float %68, 0x3F56A64800000000
  %75 = fadd fast float %74, 0xBFE6A09E60000000
  %76 = fmul fast float %71, 0x3F66ABF460000000
  %77 = fadd fast float %76, 0xBFE6A09E60000000
  %78 = call float @dx.op.dot3.f32(i32 55, float %73, float %75, float %77, float %73, float %75, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %79 = call float @dx.op.unary.f32(i32 7, float %78)  ; Saturate(value)
  %80 = fsub fast float 1.000000e+00, %79
  %81 = call float @dx.op.unary.f32(i32 24, float %80)  ; Sqrt(value)
  %82 = icmp eq i32 %63, 0
  br i1 %82, label %89, label %83, !dx.controlflow.hints !24

; <label>:83                                      ; preds = %41
  %84 = icmp eq i32 %63, 1
  br i1 %84, label %89, label %85, !dx.controlflow.hints !25

; <label>:85                                      ; preds = %83
  %86 = icmp eq i32 %63, 2
  %87 = select i1 %86, float %81, float %77
  %88 = select i1 %86, float %77, float %81
  br label %89

; <label>:89                                      ; preds = %85, %83, %41
  %90 = phi float [ %81, %41 ], [ %73, %83 ], [ %73, %85 ]
  %91 = phi float [ %73, %41 ], [ %81, %83 ], [ %75, %85 ]
  %92 = phi float [ %75, %41 ], [ %75, %83 ], [ %87, %85 ]
  %93 = phi float [ %77, %41 ], [ %77, %83 ], [ %88, %85 ]
  %94 = lshr i32 %32, 30
  %95 = and i32 %32, 1023
  %96 = uitofp i32 %95 to float
  %97 = lshr i32 %32, 10
  %98 = and i32 %97, 1023
  %99 = uitofp i32 %98 to float
  %100 = lshr i32 %32, 20
  %101 = and i32 %100, 511
  %102 = uitofp i32 %101 to float
  %103 = fmul fast float %96, 0x3F56A64800000000
  %104 = fadd fast float %103, 0xBFE6A09E60000000
  %105 = fmul fast float %99, 0x3F56A64800000000
  %106 = fadd fast float %105, 0xBFE6A09E60000000
  %107 = fmul fast float %102, 0x3F66ABF460000000
  %108 = fadd fast float %107, 0xBFE6A09E60000000
  %109 = call float @dx.op.dot3.f32(i32 55, float %104, float %106, float %108, float %104, float %106, float %108)  ; Dot3(ax,ay,az,bx,by,bz)
  %110 = call float @dx.op.unary.f32(i32 7, float %109)  ; Saturate(value)
  %111 = fsub fast float 1.000000e+00, %110
  %112 = call float @dx.op.unary.f32(i32 24, float %111)  ; Sqrt(value)
  %113 = icmp eq i32 %94, 0
  br i1 %113, label %120, label %114, !dx.controlflow.hints !24

; <label>:114                                     ; preds = %89
  %115 = icmp eq i32 %94, 1
  br i1 %115, label %120, label %116, !dx.controlflow.hints !25

; <label>:116                                     ; preds = %114
  %117 = icmp eq i32 %94, 2
  %118 = select i1 %117, float %112, float %108
  %119 = select i1 %117, float %108, float %112
  br label %120

; <label>:120                                     ; preds = %116, %114, %89
  %121 = phi float [ %112, %89 ], [ %104, %114 ], [ %104, %116 ]
  %122 = phi float [ %104, %89 ], [ %112, %114 ], [ %106, %116 ]
  %123 = phi float [ %106, %89 ], [ %106, %114 ], [ %118, %116 ]
  %124 = phi float [ %108, %89 ], [ %108, %114 ], [ %119, %116 ]
  %125 = and i32 %32, 536870912
  %126 = icmp ne i32 %125, 0
  %127 = select i1 %126, float -1.000000e+00, float 1.000000e+00
  %128 = fmul fast float %121, %54
  %129 = fmul fast float %122, %54
  %130 = fmul fast float %123, %54
  %131 = fmul fast float %124, %51
  %132 = fmul fast float %124, %52
  %133 = fmul fast float %124, %53
  %134 = fadd fast float %131, %128
  %135 = fadd fast float %132, %129
  %136 = fmul fast float %123, %52
  %137 = fmul fast float %122, %53
  %138 = fsub fast float %136, %137
  %139 = fmul fast float %121, %53
  %140 = fmul fast float %123, %51
  %141 = fsub fast float %139, %140
  %142 = fmul fast float %122, %51
  %143 = fmul fast float %121, %52
  %144 = fsub fast float %142, %143
  %145 = fadd fast float %134, %138
  %146 = fadd fast float %135, %141
  %147 = fadd fast float %144, %130
  %148 = fadd fast float %147, %133
  %149 = fmul fast float %124, %54
  %150 = call float @dx.op.dot3.f32(i32 55, float %51, float %52, float %53, float %121, float %122, float %123)  ; Dot3(ax,ay,az,bx,by,bz)
  %151 = fsub fast float %149, %150
  %152 = fmul fast float %52, %30
  %153 = fmul fast float %53, %29
  %154 = fsub fast float %152, %153
  %155 = fmul fast float %53, %28
  %156 = fmul fast float %51, %30
  %157 = fsub fast float %155, %156
  %158 = fmul fast float %51, %29
  %159 = fmul fast float %52, %28
  %160 = fsub fast float %158, %159
  %161 = fmul fast float %154, 2.000000e+00
  %162 = fmul fast float %157, 2.000000e+00
  %163 = fmul fast float %160, 2.000000e+00
  %164 = fmul fast float %161, %54
  %165 = fmul fast float %162, %54
  %166 = fmul fast float %163, %54
  %167 = fmul fast float %163, %52
  %168 = fmul fast float %162, %53
  %169 = fmul fast float %161, %53
  %170 = fmul fast float %163, %51
  %171 = fmul fast float %162, %51
  %172 = fmul fast float %161, %52
  %173 = fadd fast float %57, %28
  %174 = fadd fast float %173, %164
  %175 = fsub fast float %174, %168
  %176 = fadd fast float %175, %167
  %177 = fadd fast float %58, %29
  %178 = fadd fast float %177, %165
  %179 = fsub fast float %178, %170
  %180 = fadd fast float %179, %169
  %181 = fadd fast float %59, %30
  %182 = fadd fast float %181, %166
  %183 = fsub fast float %182, %172
  %184 = fadd fast float %183, %171
  %185 = call float @dx.op.unary.f32(i32 6, float %148)  ; FAbs(value)
  %186 = call float @dx.op.unary.f32(i32 6, float %145)  ; FAbs(value)
  %187 = fcmp fast oge float %185, %186
  %188 = call float @dx.op.unary.f32(i32 6, float %146)  ; FAbs(value)
  %189 = fcmp fast oge float %185, %188
  %190 = and i1 %187, %189
  br i1 %190, label %191, label %194, !dx.controlflow.hints !26

; <label>:191                                     ; preds = %120
  %192 = fcmp fast olt float %148, 0.000000e+00
  %193 = select i1 %192, float 5.000000e+00, float 4.000000e+00
  br label %202

; <label>:194                                     ; preds = %120
  %195 = fcmp fast ult float %188, %186
  br i1 %195, label %199, label %196, !dx.controlflow.hints !27

; <label>:196                                     ; preds = %194
  %197 = fcmp fast olt float %146, 0.000000e+00
  %198 = select i1 %197, float 3.000000e+00, float 2.000000e+00
  br label %202

; <label>:199                                     ; preds = %194
  %200 = fcmp fast olt float %145, 0.000000e+00
  %201 = select i1 %200, float 1.000000e+00, float 0.000000e+00
  br label %202

; <label>:202                                     ; preds = %199, %196, %191
  %203 = phi float [ %193, %191 ], [ %198, %196 ], [ %201, %199 ]
  %204 = fmul fast float %203, 5.000000e-01
  %205 = fptoui float %204 to i32
  %206 = call float @dx.op.unary.f32(i32 6, float %151)  ; FAbs(value)
  %207 = call float @dx.op.binary.f32(i32 35, float %188, float %185)  ; FMax(a,b)
  %208 = call float @dx.op.binary.f32(i32 35, float %186, float %207)  ; FMax(a,b)
  %209 = fcmp fast ogt float %206, %208
  %210 = select i1 %209, i32 3, i32 %205
  %211 = icmp eq i32 %210, 0
  %212 = select i1 %211, float %146, float %145
  %213 = select i1 %211, float %148, float %146
  %214 = select i1 %211, float %151, float %148
  %215 = select i1 %211, float %145, float %151
  %216 = icmp eq i32 %210, 1
  %217 = select i1 %216, float %214, float %213
  %218 = select i1 %216, float %215, float %214
  %219 = select i1 %216, float %213, float %215
  %220 = icmp eq i32 %210, 2
  %221 = select i1 %220, float %219, float %218
  %222 = select i1 %220, float %218, float %219
  %223 = fcmp fast ogt float %222, 0.000000e+00
  %224 = select i1 %223, float 0x3FF6A09E60000000, float 0xBFF6A09E60000000
  %225 = fmul fast float %224, %212
  %226 = fmul fast float %224, %217
  %227 = fmul fast float %224, %221
  %228 = fadd fast float %225, 1.000000e+00
  %229 = fmul fast float %228, 5.000000e-01
  %230 = call float @dx.op.unary.f32(i32 7, float %229)  ; Saturate(value)
  %231 = fmul fast float %230, 1.023000e+03
  %232 = fptoui float %231 to i32
  %233 = fadd fast float %226, 1.000000e+00
  %234 = fmul fast float %233, 5.000000e-01
  %235 = call float @dx.op.unary.f32(i32 7, float %234)  ; Saturate(value)
  %236 = fmul fast float %235, 1.023000e+03
  %237 = fptoui float %236 to i32
  %238 = fadd fast float %227, 1.000000e+00
  %239 = fmul fast float %238, 5.000000e-01
  %240 = call float @dx.op.unary.f32(i32 7, float %239)  ; Saturate(value)
  %241 = fmul fast float %240, 5.110000e+02
  %242 = fptoui float %241 to i32
  %243 = shl i32 %237, 10
  %244 = shl i32 %242, 20
  %245 = fcmp fast ogt float %127, 0.000000e+00
  %246 = select i1 %245, i32 0, i32 536870912
  %247 = shl i32 %210, 30
  %248 = or i32 %232, %246
  %249 = or i32 %248, %247
  %250 = or i32 %249, %243
  %251 = or i32 %250, %244
  %252 = fmul fast float %91, %30
  %253 = fmul fast float %92, %29
  %254 = fsub fast float %252, %253
  %255 = fmul fast float %92, %28
  %256 = fmul fast float %90, %30
  %257 = fsub fast float %255, %256
  %258 = fmul fast float %90, %29
  %259 = fmul fast float %91, %28
  %260 = fsub fast float %258, %259
  %261 = fmul fast float %254, 2.000000e+00
  %262 = fmul fast float %257, 2.000000e+00
  %263 = fmul fast float %260, 2.000000e+00
  %264 = fmul fast float %261, %93
  %265 = fmul fast float %262, %93
  %266 = fmul fast float %263, %93
  %267 = fmul fast float %263, %91
  %268 = fmul fast float %262, %92
  %269 = fmul fast float %261, %92
  %270 = fmul fast float %263, %90
  %271 = fmul fast float %262, %90
  %272 = fmul fast float %261, %91
  %273 = fadd fast float %46, %28
  %274 = fadd fast float %273, %267
  %275 = fadd fast float %274, %264
  %276 = fsub fast float %275, %268
  %277 = fadd fast float %47, %29
  %278 = fsub fast float %277, %270
  %279 = fadd fast float %278, %265
  %280 = fadd fast float %279, %269
  %281 = fadd fast float %48, %30
  %282 = fadd fast float %281, %266
  %283 = fsub fast float %282, %272
  %284 = fadd fast float %283, %271
  br label %285

; <label>:285                                     ; preds = %202, %39
  %286 = phi float [ %176, %202 ], [ %28, %39 ]
  %287 = phi float [ %180, %202 ], [ %29, %39 ]
  %288 = phi float [ %184, %202 ], [ %30, %39 ]
  %289 = phi i32 [ %251, %202 ], [ %32, %39 ]
  %290 = phi float [ %276, %202 ], [ %28, %39 ]
  %291 = phi float [ %280, %202 ], [ %29, %39 ]
  %292 = phi float [ %284, %202 ], [ %30, %39 ]
  %293 = shl i32 %26, 4
  %294 = and i32 %293, 32752
  %295 = call float @dx.op.legacyF16ToF32(i32 131, i32 %294)  ; LegacyF16ToF32(value)
  %296 = lshr i32 %26, 7
  %297 = and i32 %296, 32752
  %298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %297)  ; LegacyF16ToF32(value)
  %299 = lshr i32 %289, 30
  %300 = and i32 %289, 1023
  %301 = uitofp i32 %300 to float
  %302 = lshr i32 %289, 10
  %303 = and i32 %302, 1023
  %304 = uitofp i32 %303 to float
  %305 = lshr i32 %289, 20
  %306 = and i32 %305, 511
  %307 = uitofp i32 %306 to float
  %308 = fmul fast float %301, 0x3F56A64800000000
  %309 = fadd fast float %308, 0xBFE6A09E60000000
  %310 = fmul fast float %304, 0x3F56A64800000000
  %311 = fadd fast float %310, 0xBFE6A09E60000000
  %312 = fmul fast float %307, 0x3F66ABF460000000
  %313 = fadd fast float %312, 0xBFE6A09E60000000
  %314 = call float @dx.op.dot3.f32(i32 55, float %309, float %311, float %313, float %309, float %311, float %313)  ; Dot3(ax,ay,az,bx,by,bz)
  %315 = call float @dx.op.unary.f32(i32 7, float %314)  ; Saturate(value)
  %316 = fsub fast float 1.000000e+00, %315
  %317 = call float @dx.op.unary.f32(i32 24, float %316)  ; Sqrt(value)
  %318 = icmp eq i32 %299, 0
  br i1 %318, label %325, label %319, !dx.controlflow.hints !24

; <label>:319                                     ; preds = %285
  %320 = icmp eq i32 %299, 1
  br i1 %320, label %325, label %321, !dx.controlflow.hints !25

; <label>:321                                     ; preds = %319
  %322 = icmp eq i32 %299, 2
  %323 = select i1 %322, float %317, float %313
  %324 = select i1 %322, float %313, float %317
  br label %325

; <label>:325                                     ; preds = %321, %319, %285
  %326 = phi float [ %317, %285 ], [ %309, %319 ], [ %309, %321 ]
  %327 = phi float [ %309, %285 ], [ %317, %319 ], [ %311, %321 ]
  %328 = phi float [ %311, %285 ], [ %311, %319 ], [ %323, %321 ]
  %329 = phi float [ %313, %285 ], [ %313, %319 ], [ %324, %321 ]
  br i1 %318, label %336, label %330, !dx.controlflow.hints !24

; <label>:330                                     ; preds = %325
  %331 = icmp eq i32 %299, 1
  br i1 %331, label %336, label %332, !dx.controlflow.hints !25

; <label>:332                                     ; preds = %330
  %333 = icmp eq i32 %299, 2
  %334 = select i1 %333, float %317, float %313
  %335 = select i1 %333, float %313, float %317
  br label %336

; <label>:336                                     ; preds = %332, %330, %325
  %337 = phi float [ %317, %325 ], [ %309, %330 ], [ %309, %332 ]
  %338 = phi float [ %309, %325 ], [ %317, %330 ], [ %311, %332 ]
  %339 = phi float [ %311, %325 ], [ %311, %330 ], [ %334, %332 ]
  %340 = phi float [ %313, %325 ], [ %313, %330 ], [ %335, %332 ]
  %341 = fmul fast float %339, %337
  %342 = fmul fast float %340, %338
  %343 = fadd fast float %342, %341
  %344 = fmul fast float %343, 2.000000e+00
  %345 = fmul fast float %338, 2.000000e+00
  %346 = fmul fast float %345, %339
  %347 = fmul fast float %337, 2.000000e+00
  %348 = fmul fast float %347, %340
  %349 = fsub fast float %346, %348
  %350 = fmul fast float %337, %337
  %351 = fmul fast float %350, 2.000000e+00
  %352 = fsub fast float 1.000000e+00, %351
  %353 = fmul fast float %338, %338
  %354 = fmul fast float %353, 2.000000e+00
  %355 = fsub fast float %352, %354
  %356 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %21, i32 0)  ; BufferLoad(srv,index,wot)
  %357 = extractvalue %dx.types.ResRet.f32 %356, 0
  %358 = extractvalue %dx.types.ResRet.f32 %356, 1
  %359 = extractvalue %dx.types.ResRet.f32 %356, 2
  %360 = fmul fast float %357, %357
  %361 = fmul fast float %358, %358
  %362 = fadd fast float %360, %361
  %363 = fmul fast float %359, %359
  %364 = fadd fast float %362, %363
  %365 = call float @dx.op.unary.f32(i32 24, float %364)  ; Sqrt(value)
  %366 = call float @dx.op.dot3.f32(i32 55, float %357, float %358, float %359, float %357, float %358, float %359)  ; Dot3(ax,ay,az,bx,by,bz)
  %367 = call float @dx.op.unary.f32(i32 25, float %366)  ; Rsqrt(value)
  %368 = fmul fast float %367, %357
  %369 = fmul fast float %367, %358
  %370 = fmul fast float %367, %359
  %371 = call float @dx.op.dot3.f32(i32 55, float %344, float %349, float %355, float %368, float %369, float %370)  ; Dot3(ax,ay,az,bx,by,bz)
  %372 = call float @dx.op.unary.f32(i32 6, float %371)  ; FAbs(value)
  %373 = call float @dx.op.dot3.f32(i32 55, float %368, float %369, float %370, float %344, float %349, float %355)  ; Dot3(ax,ay,az,bx,by,bz)
  %374 = fmul fast float %373, %344
  %375 = fmul fast float %373, %349
  %376 = fmul fast float %373, %355
  %377 = fsub fast float %368, %374
  %378 = fsub fast float %369, %375
  %379 = fsub fast float %370, %376
  %380 = call float @dx.op.dot3.f32(i32 55, float %377, float %378, float %379, float %377, float %378, float %379)  ; Dot3(ax,ay,az,bx,by,bz)
  %381 = call float @dx.op.unary.f32(i32 25, float %380)  ; Rsqrt(value)
  %382 = fmul fast float %377, %381
  %383 = fmul fast float %378, %381
  %384 = fmul fast float %379, %381
  %385 = fsub fast float -0.000000e+00, %326
  %386 = fsub fast float -0.000000e+00, %327
  %387 = fsub fast float -0.000000e+00, %328
  %388 = fmul fast float %384, %386
  %389 = fmul fast float %383, %387
  %390 = fsub fast float %388, %389
  %391 = fmul fast float %382, %387
  %392 = fmul fast float %384, %385
  %393 = fsub fast float %391, %392
  %394 = fmul fast float %383, %385
  %395 = fmul fast float %382, %386
  %396 = fsub fast float %394, %395
  %397 = fmul fast float %390, 2.000000e+00
  %398 = fmul fast float %393, 2.000000e+00
  %399 = fmul fast float %396, 2.000000e+00
  %400 = fmul fast float %397, %329
  %401 = fmul fast float %398, %329
  %402 = fmul fast float %399, %329
  %403 = fadd fast float %402, %384
  %404 = fmul fast float %399, %386
  %405 = fmul fast float %398, %387
  %406 = fmul fast float %397, %387
  %407 = fmul fast float %399, %385
  %408 = fmul fast float %398, %385
  %409 = fmul fast float %397, %386
  %410 = fsub fast float %408, %409
  %411 = fadd fast float %400, %382
  %412 = fsub fast float %411, %405
  %413 = fadd fast float %412, %404
  %414 = fadd fast float %401, %383
  %415 = fsub fast float %414, %407
  %416 = fadd fast float %415, %406
  %417 = fadd fast float %403, %410
  %418 = fmul fast float %413, %295
  %419 = fmul fast float %416, %298
  %420 = fmul fast float %417, %327
  %421 = fmul fast float %419, %328
  %422 = fsub fast float %420, %421
  %423 = fmul fast float %418, %328
  %424 = fmul fast float %417, %326
  %425 = fsub fast float %423, %424
  %426 = fmul fast float %419, %326
  %427 = fmul fast float %418, %327
  %428 = fsub fast float %426, %427
  %429 = fmul fast float %422, 2.000000e+00
  %430 = fmul fast float %425, 2.000000e+00
  %431 = fmul fast float %428, 2.000000e+00
  %432 = fmul fast float %429, %329
  %433 = fmul fast float %430, %329
  %434 = fmul fast float %431, %329
  %435 = fadd fast float %432, %418
  %436 = fadd fast float %433, %419
  %437 = fadd fast float %434, %417
  %438 = fmul fast float %431, %327
  %439 = fmul fast float %430, %328
  %440 = fsub fast float %438, %439
  %441 = fmul fast float %429, %328
  %442 = fmul fast float %431, %326
  %443 = fsub fast float %441, %442
  %444 = fmul fast float %430, %326
  %445 = fmul fast float %429, %327
  %446 = fsub fast float %444, %445
  %447 = fadd fast float %435, %440
  %448 = fadd fast float %436, %443
  %449 = fadd fast float %437, %446
  %450 = fmul fast float %447, %447
  %451 = fmul fast float %448, %448
  %452 = fadd fast float %450, %451
  %453 = fmul fast float %449, %449
  %454 = fadd fast float %452, %453
  %455 = call float @dx.op.unary.f32(i32 24, float %454)  ; Sqrt(value)
  %456 = fsub fast float 1.000000e+00, %372
  %457 = fmul fast float %456, %365
  %458 = fmul fast float %457, %455
  %459 = call float @dx.op.dot3.f32(i32 55, float %447, float %448, float %449, float %447, float %448, float %449)  ; Dot3(ax,ay,az,bx,by,bz)
  %460 = call float @dx.op.unary.f32(i32 25, float %459)  ; Rsqrt(value)
  %461 = fmul fast float %447, %460
  %462 = fmul fast float %448, %460
  %463 = fmul fast float %449, %460
  %464 = fmul fast float %463, %349
  %465 = fmul fast float %462, %355
  %466 = fsub fast float %464, %465
  %467 = fmul fast float %461, %355
  %468 = fmul fast float %463, %344
  %469 = fsub fast float %467, %468
  %470 = fmul fast float %462, %344
  %471 = fmul fast float %461, %349
  %472 = fsub fast float %470, %471
  %473 = call float @dx.op.dot3.f32(i32 55, float %466, float %469, float %472, float %466, float %469, float %472)  ; Dot3(ax,ay,az,bx,by,bz)
  %474 = call float @dx.op.unary.f32(i32 25, float %473)  ; Rsqrt(value)
  %475 = call float @dx.op.binary.f32(i32 36, float %458, float 0x3FF0BD0840000000)  ; FMin(a,b)
  %476 = fmul fast float %475, 5.000000e-01
  %477 = call float @dx.op.unary.f32(i32 13, float %476)  ; Sin(value)
  %478 = call float @dx.op.unary.f32(i32 12, float %476)  ; Cos(value)
  %479 = fmul fast float %477, %474
  %480 = fmul fast float %479, %466
  %481 = fmul fast float %479, %469
  %482 = fmul fast float %479, %472
  br i1 %318, label %489, label %483, !dx.controlflow.hints !24

; <label>:483                                     ; preds = %336
  %484 = icmp eq i32 %299, 1
  br i1 %484, label %489, label %485, !dx.controlflow.hints !25

; <label>:485                                     ; preds = %483
  %486 = icmp eq i32 %299, 2
  %487 = select i1 %486, float %317, float %313
  %488 = select i1 %486, float %313, float %317
  br label %489

; <label>:489                                     ; preds = %485, %483, %336
  %490 = phi float [ %317, %336 ], [ %309, %483 ], [ %309, %485 ]
  %491 = phi float [ %309, %336 ], [ %317, %483 ], [ %311, %485 ]
  %492 = phi float [ %311, %336 ], [ %311, %483 ], [ %487, %485 ]
  %493 = phi float [ %313, %336 ], [ %313, %483 ], [ %488, %485 ]
  %494 = fmul fast float %490, %478
  %495 = fmul fast float %491, %478
  %496 = fmul fast float %492, %478
  %497 = fmul fast float %493, %480
  %498 = fmul fast float %493, %481
  %499 = fmul fast float %493, %482
  %500 = fmul fast float %492, %481
  %501 = fmul fast float %491, %482
  %502 = fmul fast float %490, %482
  %503 = fmul fast float %492, %480
  %504 = fmul fast float %491, %480
  %505 = fmul fast float %490, %481
  %506 = fsub fast float %494, %501
  %507 = fadd fast float %506, %500
  %508 = fadd fast float %507, %497
  %509 = fadd fast float %495, %502
  %510 = fsub fast float %509, %503
  %511 = fadd fast float %510, %498
  %512 = fsub fast float %504, %505
  %513 = fadd fast float %512, %496
  %514 = fadd fast float %513, %499
  %515 = fmul fast float %493, %478
  %516 = call float @dx.op.dot3.f32(i32 55, float %480, float %481, float %482, float %490, float %491, float %492)  ; Dot3(ax,ay,az,bx,by,bz)
  %517 = fsub fast float %515, %516
  %518 = mul i32 %13, 48
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %518, i32 undef, float %290, float %291, float %292, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %519 = or i32 %518, 12
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %519, i32 undef, float 0.000000e+00, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %520 = add i32 %518, 16
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %520, i32 undef, float %508, float %511, float %514, float %517, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %521 = add i32 %518, 32
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %521, i32 undef, float %286, float %287, float %288, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %522 = add i32 %518, 44
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %522, i32 undef, i32 %289, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %523

; <label>:523                                     ; preds = %489, %11, %0
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
!dx.entryPoints = !{!18}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !14, !16, null}
!5 = !{!6, !8, !10, !12}
!6 = !{i32 0, %"class.StructuredBuffer<vector<float, 4> >"* undef, !"", i32 0, i32 4, i32 1, i32 12, i32 0, !7}
!7 = !{i32 1, i32 16}
!8 = !{i32 1, %"class.StructuredBuffer<ReactiveMotionModelInfoGpu>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i32 0, !9}
!9 = !{i32 1, i32 64}
!10 = !{i32 2, %"class.StructuredBuffer<ReactiveMotionModelPart>"* undef, !"", i32 0, i32 6, i32 1, i32 12, i32 0, !11}
!11 = !{i32 1, i32 32}
!12 = !{i32 3, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 5, i32 1, i32 12, i32 0, !13}
!13 = !{i32 1, i32 4}
!14 = !{!15}
!15 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!16 = !{!17}
!17 = !{i32 0, %ReactiveMotionSimConsts* undef, !"", i32 0, i32 1, i32 1, i32 16, null}
!18 = !{void ()* @cs_reactivemotion_sim, !"cs_reactivemotion_sim", null, !4, !19}
!19 = !{i32 0, i64 272, i32 4, !20}
!20 = !{i32 64, i32 1, i32 1}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}

