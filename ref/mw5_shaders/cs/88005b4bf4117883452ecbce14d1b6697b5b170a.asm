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
; shader hash: ee3a09fd4b89a60d52cf1a09cf31394a
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
;   [576 x i8] (type annotation not present)
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
;   [8 x i8] (type annotation not present)
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
;   [16 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb1     1
;                                   texture  struct         r/o      T0             t3     1
;                                   texture  struct         r/o      T1             t0     1
;                                   texture  struct         r/o      T2             t5     1
;                                   texture  struct         r/o      T3             t7     1
;                                   texture  struct         r/o      T4             t4     1
;                                   texture    byte         r/o      T5             t1     1
;                                   texture    byte         r/o      T6             t2     1
;                                   texture    byte         r/o      T7             t6     1
;                                       UAV  struct         r/w      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%"class.StructuredBuffer<unsigned int>" = type { i32 }
%"class.StructuredBuffer<ReactiveMotionModelInfoGpu>" = type { %struct.ReactiveMotionModelInfoGpu }
%struct.ReactiveMotionModelInfoGpu = type { <3 x float>, float, <3 x float>, i32, <3 x float>, i32, i32, i32, i32, i32 }
%"class.StructuredBuffer<ReactiveMotionModelPart>" = type { %struct.ReactiveMotionModelPart }
%struct.ReactiveMotionModelPart = type { <3 x float>, i32, <3 x float>, i32 }
%"class.StructuredBuffer<ReactiveMotionModelPartTweaksGpu>" = type { %struct.ReactiveMotionModelPartTweaksGpu }
%struct.ReactiveMotionModelPartTweaksGpu = type { float, float }
%struct.ByteAddressBuffer = type { i32 }
%"class.RWStructuredBuffer<vector<float, 4> >" = type { <4 x float> }
%ReactiveMotionCalcConsts = type { <3 x float>, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [30 x <4 x i32>] }

define void @cs_reactivemotion_calc_modelparts_indirect() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %12 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 1, i32 0)  ; BufferLoad(srv,index,wot)
  %13 = extractvalue %dx.types.ResRet.i32 %12, 0
  %14 = icmp ult i32 %11, %13
  br i1 %14, label %15, label %491, !dx.controlflow.hints !26

; <label>:15                                      ; preds = %0
  %16 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 2, i32 0)  ; BufferLoad(srv,index,wot)
  %17 = extractvalue %dx.types.ResRet.i32 %16, 0
  %18 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %11, i32 0)  ; BufferLoad(srv,index,wot)
  %19 = extractvalue %dx.types.ResRet.i32 %18, 0
  %20 = and i32 %19, 65535
  %21 = lshr i32 %19, 16
  %22 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %20, i32 0)  ; BufferLoad(srv,index,wot)
  %23 = extractvalue %dx.types.ResRet.f32 %22, 0
  %24 = extractvalue %dx.types.ResRet.f32 %22, 1
  %25 = extractvalue %dx.types.ResRet.f32 %22, 2
  %26 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %20, i32 16)  ; BufferLoad(srv,index,wot)
  %27 = extractvalue %dx.types.ResRet.f32 %26, 0
  %28 = extractvalue %dx.types.ResRet.f32 %26, 1
  %29 = extractvalue %dx.types.ResRet.f32 %26, 2
  %30 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %20, i32 28)  ; BufferLoad(srv,index,wot)
  %31 = extractvalue %dx.types.ResRet.i32 %30, 0
  %32 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %20, i32 44)  ; BufferLoad(srv,index,wot)
  %33 = extractvalue %dx.types.ResRet.i32 %32, 0
  %34 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %20, i32 52)  ; BufferLoad(srv,index,wot)
  %35 = extractvalue %dx.types.ResRet.i32 %34, 0
  %36 = and i32 %33, 268435456
  %37 = icmp eq i32 %36, 0
  %38 = and i32 %33, 1073741824
  %39 = icmp ne i32 %38, 0
  %40 = sub i32 %20, %17
  %41 = select i1 %39, i32 %40, i32 -1
  %42 = and i32 %33, 16777215
  %43 = icmp eq i32 %42, 16777215
  br i1 %43, label %137, label %44, !dx.controlflow.hints !27

; <label>:44                                      ; preds = %15
  %45 = icmp eq i32 %41, -1
  br i1 %45, label %59, label %46, !dx.controlflow.hints !28

; <label>:46                                      ; preds = %44
  %47 = mul i32 %41, 24
  %48 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %47, i32 undef)  ; BufferLoad(srv,index,wot)
  %49 = extractvalue %dx.types.ResRet.f32 %48, 0
  %50 = extractvalue %dx.types.ResRet.f32 %48, 1
  %51 = extractvalue %dx.types.ResRet.f32 %48, 2
  %52 = add i32 %47, 12
  %53 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %52, i32 undef)  ; BufferLoad(srv,index,wot)
  %54 = extractvalue %dx.types.ResRet.i32 %53, 0
  %55 = extractvalue %dx.types.ResRet.i32 %53, 1
  %56 = add i32 %47, 20
  %57 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %56, i32 undef)  ; BufferLoad(srv,index,wot)
  %58 = extractvalue %dx.types.ResRet.i32 %57, 0
  br label %72

; <label>:59                                      ; preds = %44
  %60 = mul nuw nsw i32 %42, 24
  %61 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %60, i32 undef)  ; BufferLoad(srv,index,wot)
  %62 = extractvalue %dx.types.ResRet.f32 %61, 0
  %63 = extractvalue %dx.types.ResRet.f32 %61, 1
  %64 = extractvalue %dx.types.ResRet.f32 %61, 2
  %65 = add nuw nsw i32 %60, 12
  %66 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %65, i32 undef)  ; BufferLoad(srv,index,wot)
  %67 = extractvalue %dx.types.ResRet.i32 %66, 0
  %68 = extractvalue %dx.types.ResRet.i32 %66, 1
  %69 = add nuw nsw i32 %60, 20
  %70 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %69, i32 undef)  ; BufferLoad(srv,index,wot)
  %71 = extractvalue %dx.types.ResRet.i32 %70, 0
  br label %72

; <label>:72                                      ; preds = %59, %46
  %73 = phi i32 [ %58, %46 ], [ %71, %59 ]
  %74 = phi i32 [ %54, %46 ], [ %67, %59 ]
  %75 = phi i32 [ %55, %46 ], [ %68, %59 ]
  %76 = phi float [ %49, %46 ], [ %62, %59 ]
  %77 = phi float [ %50, %46 ], [ %63, %59 ]
  %78 = phi float [ %51, %46 ], [ %64, %59 ]
  %79 = bitcast float %76 to i32
  %80 = bitcast float %77 to i32
  %81 = bitcast float %78 to i32
  %82 = sitofp i32 %79 to float
  %83 = sitofp i32 %80 to float
  %84 = sitofp i32 %81 to float
  %85 = fmul fast float %82, 0x3F30000000000000
  %86 = fmul fast float %83, 0x3F30000000000000
  %87 = fmul fast float %84, 0x3F30000000000000
  %88 = and i32 %74, 65535
  %89 = uitofp i32 %88 to float
  %90 = lshr i32 %74, 16
  %91 = uitofp i32 %90 to float
  %92 = and i32 %75, 65535
  %93 = uitofp i32 %92 to float
  %94 = lshr i32 %75, 16
  %95 = uitofp i32 %94 to float
  %96 = fmul fast float %89, 0x3F00001000000000
  %97 = fmul fast float %91, 0x3F00001000000000
  %98 = fmul fast float %93, 0x3F00001000000000
  %99 = fmul fast float %95, 0x3F00001000000000
  %100 = fadd fast float %96, -1.000000e+00
  %101 = fadd fast float %97, -1.000000e+00
  %102 = fadd fast float %98, -1.000000e+00
  %103 = fadd fast float %99, -1.000000e+00
  %104 = and i32 %73, 65535
  %105 = call float @dx.op.legacyF16ToF32(i32 131, i32 %104)  ; LegacyF16ToF32(value)
  %106 = fmul fast float %100, %100
  %107 = fmul fast float %101, %101
  %108 = fmul fast float %102, %102
  %109 = fmul fast float %103, %103
  %110 = fadd fast float %106, %107
  %111 = fadd fast float %110, %108
  %112 = fadd fast float %111, %109
  %113 = fdiv fast float 2.000000e+00, %112
  %114 = fmul fast float %113, %100
  %115 = fmul fast float %114, %101
  %116 = fmul fast float %114, %102
  %117 = fmul fast float %114, %103
  %118 = fmul fast float %113, %101
  %119 = fmul fast float %118, %102
  %120 = fmul fast float %118, %103
  %121 = fmul fast float %103, %102
  %122 = fmul fast float %121, %113
  %123 = fadd fast float %108, %107
  %124 = fmul fast float %123, %113
  %125 = fsub fast float 1.000000e+00, %124
  %126 = fadd fast float %115, %122
  %127 = fsub fast float %116, %120
  %128 = fsub fast float %115, %122
  %129 = fadd fast float %108, %106
  %130 = fmul fast float %129, %113
  %131 = fsub fast float 1.000000e+00, %130
  %132 = fadd fast float %119, %117
  %133 = fadd fast float %116, %120
  %134 = fsub fast float %119, %117
  %135 = fmul fast float %113, %110
  %136 = fsub fast float 1.000000e+00, %135
  br label %137

; <label>:137                                     ; preds = %72, %15
  %138 = phi float [ %125, %72 ], [ 1.000000e+00, %15 ]
  %139 = phi float [ %128, %72 ], [ 0.000000e+00, %15 ]
  %140 = phi float [ %133, %72 ], [ 0.000000e+00, %15 ]
  %141 = phi float [ %85, %72 ], [ 0.000000e+00, %15 ]
  %142 = phi float [ %126, %72 ], [ 0.000000e+00, %15 ]
  %143 = phi float [ %131, %72 ], [ 1.000000e+00, %15 ]
  %144 = phi float [ %134, %72 ], [ 0.000000e+00, %15 ]
  %145 = phi float [ %86, %72 ], [ 0.000000e+00, %15 ]
  %146 = phi float [ %127, %72 ], [ 0.000000e+00, %15 ]
  %147 = phi float [ %132, %72 ], [ 0.000000e+00, %15 ]
  %148 = phi float [ %136, %72 ], [ 1.000000e+00, %15 ]
  %149 = phi float [ %87, %72 ], [ 0.000000e+00, %15 ]
  %150 = phi float [ %105, %72 ], [ 1.000000e+00, %15 ]
  %151 = mul nuw nsw i32 %20, 12
  %152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %151, i32 undef)  ; BufferLoad(srv,index,wot)
  %153 = extractvalue %dx.types.ResRet.i32 %152, 0
  %154 = extractvalue %dx.types.ResRet.i32 %152, 1
  %155 = extractvalue %dx.types.ResRet.i32 %152, 2
  %156 = and i32 %153, 32768
  %157 = sub nsw i32 0, %156
  %158 = and i32 %153, 65535
  %159 = or i32 %158, %157
  %160 = sitofp i32 %159 to float
  %161 = fmul fast float %160, 0x3F00002000000000
  %162 = ashr i32 %153, 16
  %163 = and i32 %162, 32768
  %164 = sub nsw i32 0, %163
  %165 = and i32 %162, 65535
  %166 = or i32 %165, %164
  %167 = sitofp i32 %166 to float
  %168 = fmul fast float %167, 0x3F00002000000000
  %169 = and i32 %154, 32768
  %170 = sub nsw i32 0, %169
  %171 = and i32 %154, 65535
  %172 = or i32 %171, %170
  %173 = sitofp i32 %172 to float
  %174 = fmul fast float %173, 0x3F00002000000000
  %175 = bitcast i32 %155 to float
  %176 = lshr i32 %154, 16
  %177 = call float @dx.op.dot3.f32(i32 55, float %161, float %168, float %174, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %178 = call float @dx.op.unary.f32(i32 6, float %177)  ; FAbs(value)
  %179 = fcmp fast olt float %178, 0x3FEFF7CEE0000000
  br i1 %179, label %180, label %197, !dx.controlflow.hints !29

; <label>:180                                     ; preds = %137
  %181 = fsub fast float -0.000000e+00, %161
  %182 = call float @dx.op.dot3.f32(i32 55, float %168, float %181, float 0.000000e+00, float %168, float %181, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %183 = call float @dx.op.unary.f32(i32 25, float %182)  ; Rsqrt(value)
  %184 = fmul fast float %183, %168
  %185 = fmul fast float %183, %181
  %186 = fmul fast float %185, %174
  %187 = fmul fast float %173, 0xBF00002000000000
  %188 = fmul fast float %187, %184
  %189 = fmul fast float %184, %168
  %190 = fmul fast float %185, %161
  %191 = fsub fast float %189, %190
  %192 = call float @dx.op.dot3.f32(i32 55, float %186, float %188, float %191, float %186, float %188, float %191)  ; Dot3(ax,ay,az,bx,by,bz)
  %193 = call float @dx.op.unary.f32(i32 25, float %192)  ; Rsqrt(value)
  %194 = fmul fast float %186, %193
  %195 = fmul fast float %193, %188
  %196 = fmul fast float %191, %193
  br label %222

; <label>:197                                     ; preds = %137
  %198 = fcmp fast ogt float %177, 0.000000e+00
  %199 = fcmp fast olt float %177, 0.000000e+00
  %200 = zext i1 %198 to i32
  %201 = zext i1 %199 to i32
  %202 = sub nsw i32 %200, %201
  %203 = sitofp i32 %202 to float
  %204 = fmul fast float %174, %203
  %205 = fmul fast float %203, %168
  %206 = fsub fast float -0.000000e+00, %205
  %207 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float %204, float %206, float 0.000000e+00, float %204, float %206)  ; Dot3(ax,ay,az,bx,by,bz)
  %208 = call float @dx.op.unary.f32(i32 25, float %207)  ; Rsqrt(value)
  %209 = fmul fast float %208, %204
  %210 = fmul fast float %208, %206
  %211 = fmul fast float %209, %174
  %212 = fmul fast float %210, %168
  %213 = fsub fast float %211, %212
  %214 = fmul fast float %210, %161
  %215 = fmul fast float %160, 0xBF00002000000000
  %216 = fmul fast float %215, %209
  %217 = call float @dx.op.dot3.f32(i32 55, float %213, float %214, float %216, float %213, float %214, float %216)  ; Dot3(ax,ay,az,bx,by,bz)
  %218 = call float @dx.op.unary.f32(i32 25, float %217)  ; Rsqrt(value)
  %219 = fmul fast float %213, %218
  %220 = fmul fast float %214, %218
  %221 = fmul fast float %218, %216
  br label %222

; <label>:222                                     ; preds = %197, %180
  %223 = phi float [ %184, %180 ], [ 0.000000e+00, %197 ]
  %224 = phi float [ %194, %180 ], [ %219, %197 ]
  %225 = phi float [ %185, %180 ], [ %209, %197 ]
  %226 = phi float [ %195, %180 ], [ %220, %197 ]
  %227 = phi float [ 0.000000e+00, %180 ], [ %210, %197 ]
  %228 = phi float [ %196, %180 ], [ %221, %197 ]
  %229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %230 = extractvalue %dx.types.CBufRet.f32 %229, 0
  %231 = fmul fast float %230, %23
  %232 = extractvalue %dx.types.CBufRet.f32 %229, 1
  %233 = fmul fast float %232, %24
  %234 = extractvalue %dx.types.CBufRet.f32 %229, 2
  %235 = fmul fast float %234, %25
  %236 = fmul fast float %141, 0x3F50624DE0000000
  %237 = fmul fast float %145, 0x3F50624DE0000000
  %238 = call float @dx.op.unary.f32(i32 28, float %236)  ; Round_pi(value)
  %239 = call float @dx.op.unary.f32(i32 28, float %237)  ; Round_pi(value)
  %240 = fmul fast float %238, 1.000000e+03
  %241 = fmul fast float %239, 1.000000e+03
  %242 = fsub fast float %141, %240
  %243 = fsub fast float %145, %241
  %244 = fmul fast float %150, %27
  %245 = fmul fast float %150, %28
  %246 = fmul fast float %150, %29
  %247 = fdiv fast float 1.000000e+00, %244
  %248 = fdiv fast float 1.000000e+00, %245
  %249 = fdiv fast float 1.000000e+00, %246
  %250 = add i32 %35, %21
  %251 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %250, i32 0)  ; BufferLoad(srv,index,wot)
  %252 = extractvalue %dx.types.ResRet.f32 %251, 0
  %253 = extractvalue %dx.types.ResRet.f32 %251, 1
  %254 = extractvalue %dx.types.ResRet.f32 %251, 2
  br i1 %37, label %262, label %255, !dx.controlflow.hints !30

; <label>:255                                     ; preds = %222
  %256 = lshr i32 %31, 16
  %257 = add nuw nsw i32 %256, %21
  %258 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %257, i32 0)  ; BufferLoad(srv,index,wot)
  %259 = extractvalue %dx.types.ResRet.f32 %258, 0
  %260 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %257, i32 4)  ; BufferLoad(srv,index,wot)
  %261 = extractvalue %dx.types.ResRet.f32 %260, 0
  br label %262

; <label>:262                                     ; preds = %255, %222
  %263 = phi float [ %261, %255 ], [ 1.000000e+00, %222 ]
  %264 = phi float [ %259, %255 ], [ 1.000000e+00, %222 ]
  %265 = fmul fast float %252, %247
  %266 = fmul fast float %253, %248
  %267 = fmul fast float %254, %249
  %268 = fmul fast float %265, %138
  %269 = call float @dx.op.tertiary.f32(i32 46, float %139, float %266, float %268)  ; FMad(a,b,c)
  %270 = call float @dx.op.tertiary.f32(i32 46, float %140, float %267, float %269)  ; FMad(a,b,c)
  %271 = fmul fast float %265, %142
  %272 = call float @dx.op.tertiary.f32(i32 46, float %143, float %266, float %271)  ; FMad(a,b,c)
  %273 = call float @dx.op.tertiary.f32(i32 46, float %144, float %267, float %272)  ; FMad(a,b,c)
  %274 = fadd fast float %242, %270
  %275 = fadd fast float %243, %273
  %276 = fmul fast float %274, %231
  %277 = fmul fast float %275, %231
  %278 = fmul fast float %235, %263
  %279 = fadd fast float %278, 5.000000e-01
  %280 = fmul fast float %279, 0x40169E9560000000
  %281 = fmul fast float %279, 0x4022D97C80000000
  %282 = fmul fast float %279, 0x401E28C760000000
  %283 = call float @dx.op.unary.f32(i32 22, float %276)  ; Frc(value)
  %284 = fsub fast float 2.000000e+00, %283
  %285 = call float @dx.op.unary.f32(i32 22, float %277)  ; Frc(value)
  %286 = fsub fast float %284, %285
  %287 = fmul fast float %286, 0x400CFC02C0000000
  %288 = fmul fast float %286, 0x4020802820000000
  %289 = fmul fast float %286, 0x403393E4E0000000
  %290 = fadd fast float %287, %280
  %291 = fadd fast float %288, %281
  %292 = fadd fast float %289, %282
  %293 = call float @dx.op.unary.f32(i32 13, float %290)  ; Sin(value)
  %294 = call float @dx.op.unary.f32(i32 13, float %291)  ; Sin(value)
  %295 = call float @dx.op.unary.f32(i32 13, float %292)  ; Sin(value)
  %296 = fmul fast float %233, 7.500000e+00
  %297 = fmul fast float %296, %264
  %298 = fmul fast float %297, %293
  %299 = fmul fast float %233, 0x3FFB333340000000
  %300 = fmul fast float %299, %264
  %301 = fmul fast float %300, %294
  %302 = fmul fast float %300, %295
  %303 = extractvalue %dx.types.CBufRet.f32 %229, 3
  %304 = fmul fast float %295, %223
  %305 = fmul fast float %295, %225
  %306 = fmul fast float %295, %227
  %307 = fmul fast float %294, %224
  %308 = fmul fast float %294, %226
  %309 = fmul fast float %294, %228
  %310 = fadd fast float %304, %307
  %311 = fadd fast float %305, %308
  %312 = fadd fast float %306, %309
  %313 = fmul fast float %303, %293
  %314 = fmul fast float %313, %310
  %315 = fmul fast float %313, %311
  %316 = fmul fast float %313, %312
  %317 = fadd fast float %314, %161
  %318 = fadd fast float %315, %168
  %319 = fadd fast float %316, %174
  %320 = call float @dx.op.dot3.f32(i32 55, float %317, float %318, float %319, float %317, float %318, float %319)  ; Dot3(ax,ay,az,bx,by,bz)
  %321 = call float @dx.op.unary.f32(i32 25, float %320)  ; Rsqrt(value)
  %322 = fadd fast float %298, %175
  %323 = fmul fast float %321, %322
  %324 = fmul fast float %323, %317
  %325 = fadd fast float %301, %175
  %326 = fmul fast float %325, %321
  %327 = fmul fast float %326, %318
  %328 = fadd fast float %302, %175
  %329 = fmul fast float %328, %321
  %330 = fmul fast float %329, %319
  %331 = icmp eq i32 %176, 0
  br i1 %331, label %478, label %332, !dx.controlflow.hints !31

; <label>:332                                     ; preds = %262
  %333 = fmul fast float %252, %138
  %334 = call float @dx.op.tertiary.f32(i32 46, float %253, float %139, float %333)  ; FMad(a,b,c)
  %335 = call float @dx.op.tertiary.f32(i32 46, float %254, float %140, float %334)  ; FMad(a,b,c)
  %336 = fadd fast float %335, %141
  %337 = fmul fast float %252, %142
  %338 = call float @dx.op.tertiary.f32(i32 46, float %253, float %143, float %337)  ; FMad(a,b,c)
  %339 = call float @dx.op.tertiary.f32(i32 46, float %254, float %144, float %338)  ; FMad(a,b,c)
  %340 = fadd fast float %339, %145
  %341 = fmul fast float %252, %146
  %342 = call float @dx.op.tertiary.f32(i32 46, float %253, float %147, float %341)  ; FMad(a,b,c)
  %343 = call float @dx.op.tertiary.f32(i32 46, float %254, float %148, float %342)  ; FMad(a,b,c)
  %344 = fadd fast float %343, %149
  br label %345

; <label>:345                                     ; preds = %438, %332
  %346 = phi float [ 0.000000e+00, %332 ], [ %439, %438 ]
  %347 = phi float [ 0.000000e+00, %332 ], [ %440, %438 ]
  %348 = phi float [ 0.000000e+00, %332 ], [ %441, %438 ]
  %349 = phi i32 [ %176, %332 ], [ %442, %438 ]
  %350 = phi i32 [ 0, %332 ], [ %443, %438 ]
  %351 = shl i32 1, %350
  %352 = and i32 %351, %349
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %438, label %354, !dx.controlflow.hints !32

; <label>:354                                     ; preds = %345
  %355 = xor i32 %351, -1
  %356 = and i32 %349, %355
  %357 = shl i32 %350, 1
  %358 = add nuw nsw i32 %357, 6
  %359 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 %358)  ; CBufferLoadLegacy(handle,regIndex)
  %360 = extractvalue %dx.types.CBufRet.i32 %359, 0
  %361 = extractvalue %dx.types.CBufRet.i32 %359, 1
  %362 = extractvalue %dx.types.CBufRet.i32 %359, 2
  %363 = extractvalue %dx.types.CBufRet.i32 %359, 3
  %364 = or i32 %357, 1
  %365 = add nuw nsw i32 %364, 6
  %366 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 %365)  ; CBufferLoadLegacy(handle,regIndex)
  %367 = extractvalue %dx.types.CBufRet.i32 %366, 0
  %368 = extractvalue %dx.types.CBufRet.i32 %366, 1
  %369 = extractvalue %dx.types.CBufRet.i32 %366, 2
  %370 = extractvalue %dx.types.CBufRet.i32 %366, 3
  %371 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %372 = extractvalue %dx.types.CBufRet.i32 %371, 2
  %373 = extractvalue %dx.types.CBufRet.i32 %371, 3
  %374 = shl i32 %350, 5
  %375 = add i32 %373, %374
  %376 = xor i32 %362, %361
  %377 = xor i32 %376, %372
  %378 = xor i32 %377, %375
  %379 = extractvalue %dx.types.CBufRet.i32 %371, 1
  %380 = xor i32 %361, %360
  %381 = xor i32 %380, %379
  %382 = xor i32 %381, %375
  %383 = extractvalue %dx.types.CBufRet.i32 %371, 0
  %384 = xor i32 %360, -1
  %385 = xor i32 %383, %384
  %386 = xor i32 %385, %375
  %387 = bitcast i32 %386 to float
  %388 = bitcast i32 %382 to float
  %389 = bitcast i32 %378 to float
  %390 = bitcast i32 %363 to float
  %391 = fmul fast float %390, %390
  %392 = fdiv fast float 1.000000e+00, %391
  %393 = fsub fast float %336, %387
  %394 = fsub fast float %340, %388
  %395 = fsub fast float %344, %389
  %396 = fcmp fast ogt float %395, 0.000000e+00
  %397 = fcmp fast olt float %395, 0.000000e+00
  %398 = zext i1 %396 to i32
  %399 = zext i1 %397 to i32
  %400 = sub nsw i32 %398, %399
  %401 = sitofp i32 %400 to float
  %402 = fmul fast float %395, -5.000000e-01
  %403 = fmul fast float %402, %401
  %404 = call float @dx.op.dot3.f32(i32 55, float %393, float %394, float %403, float %393, float %394, float %403)  ; Dot3(ax,ay,az,bx,by,bz)
  %405 = call float @dx.op.unary.f32(i32 25, float %404)  ; Rsqrt(value)
  %406 = fmul fast float %393, %405
  %407 = fmul fast float %394, %405
  %408 = fmul fast float %403, %405
  %409 = fsub fast float %391, %404
  %410 = fmul fast float %409, %392
  %411 = call float @dx.op.binary.f32(i32 35, float %410, float 0.000000e+00)  ; FMax(a,b)
  %412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %413 = extractvalue %dx.types.CBufRet.f32 %412, 0
  %414 = bitcast i32 %367 to float
  %415 = bitcast i32 %368 to float
  %416 = bitcast i32 %369 to float
  %417 = bitcast i32 %370 to float
  %418 = call float @dx.op.dot3.f32(i32 55, float %414, float %415, float %416, float %406, float %407, float %408)  ; Dot3(ax,ay,az,bx,by,bz)
  %419 = call float @dx.op.binary.f32(i32 36, float %418, float 0.000000e+00)  ; FMin(a,b)
  %420 = fmul fast float %419, %419
  %421 = fmul fast float %417, %390
  %422 = fmul fast float %421, %413
  %423 = fadd fast float %422, %390
  %424 = fmul fast float %423, %423
  %425 = fdiv fast float 1.000000e+00, %424
  %426 = fsub fast float %424, %404
  %427 = fmul fast float %426, %425
  %428 = call float @dx.op.binary.f32(i32 35, float %427, float 0.000000e+00)  ; FMax(a,b)
  %429 = fsub fast float %428, %411
  %430 = fmul fast float %420, %429
  %431 = fadd fast float %430, %411
  %432 = fmul fast float %431, %406
  %433 = fmul fast float %431, %407
  %434 = fmul fast float %431, %408
  %435 = fadd fast float %432, %346
  %436 = fadd fast float %433, %347
  %437 = fadd fast float %434, %348
  br label %438

; <label>:438                                     ; preds = %354, %345
  %439 = phi float [ %346, %345 ], [ %435, %354 ]
  %440 = phi float [ %347, %345 ], [ %436, %354 ]
  %441 = phi float [ %348, %345 ], [ %437, %354 ]
  %442 = phi i32 [ %349, %345 ], [ %356, %354 ]
  %443 = add nuw nsw i32 %350, 1
  %444 = icmp ne i32 %442, 0
  %445 = icmp slt i32 %443, 15
  %446 = and i1 %445, %444
  br i1 %446, label %345, label %447

; <label>:447                                     ; preds = %438
  %448 = call float @dx.op.dot3.f32(i32 55, float %439, float %440, float %441, float %439, float %440, float %441)  ; Dot3(ax,ay,az,bx,by,bz)
  %449 = fcmp fast ogt float %448, 0.000000e+00
  br i1 %449, label %450, label %458, !dx.controlflow.hints !33

; <label>:450                                     ; preds = %447
  %451 = call float @dx.op.binary.f32(i32 36, float %448, float 1.000000e+00)  ; FMin(a,b)
  %452 = call float @dx.op.unary.f32(i32 24, float %451)  ; Sqrt(value)
  %453 = call float @dx.op.unary.f32(i32 25, float %448)  ; Rsqrt(value)
  %454 = fmul fast float %453, %439
  %455 = fmul fast float %453, %440
  %456 = fmul fast float %453, %441
  %457 = fmul fast float %452, %452
  br label %458

; <label>:458                                     ; preds = %450, %447
  %459 = phi float [ %454, %450 ], [ 0.000000e+00, %447 ]
  %460 = phi float [ %455, %450 ], [ 0.000000e+00, %447 ]
  %461 = phi float [ %456, %450 ], [ 0.000000e+00, %447 ]
  %462 = phi float [ %457, %450 ], [ 0.000000e+00, %447 ]
  %463 = fsub fast float 1.000000e+00, %462
  %464 = fmul fast float %463, %324
  %465 = fmul fast float %463, %327
  %466 = fmul fast float %463, %330
  %467 = fmul fast float %462, %459
  %468 = fmul fast float %462, %460
  %469 = fmul fast float %462, %461
  %470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %471 = extractvalue %dx.types.CBufRet.f32 %470, 1
  %472 = fmul fast float %467, %471
  %473 = fmul fast float %468, %471
  %474 = fmul fast float %469, %471
  %475 = fadd fast float %472, %464
  %476 = fadd fast float %473, %465
  %477 = fadd fast float %474, %466
  br label %478

; <label>:478                                     ; preds = %458, %262
  %479 = phi float [ %475, %458 ], [ %324, %262 ]
  %480 = phi float [ %476, %458 ], [ %327, %262 ]
  %481 = phi float [ %477, %458 ], [ %330, %262 ]
  %482 = fmul fast float %479, %138
  %483 = call float @dx.op.tertiary.f32(i32 46, float %142, float %480, float %482)  ; FMad(a,b,c)
  %484 = call float @dx.op.tertiary.f32(i32 46, float %146, float %481, float %483)  ; FMad(a,b,c)
  %485 = fmul fast float %479, %139
  %486 = call float @dx.op.tertiary.f32(i32 46, float %143, float %480, float %485)  ; FMad(a,b,c)
  %487 = call float @dx.op.tertiary.f32(i32 46, float %147, float %481, float %486)  ; FMad(a,b,c)
  %488 = fmul fast float %479, %140
  %489 = call float @dx.op.tertiary.f32(i32 46, float %144, float %480, float %488)  ; FMad(a,b,c)
  %490 = call float @dx.op.tertiary.f32(i32 46, float %148, float %481, float %489)  ; FMad(a,b,c)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %11, i32 0, float %484, float %487, float %490, float 0.000000e+00, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %491

; <label>:491                                     ; preds = %478, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.bufferStore.f32(i32, %dx.types.Handle, i32, i32, float, float, float, float, i8) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!23}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !18, !21, null}
!5 = !{!6, !8, !10, !12, !14, !15, !16, !17}
!6 = !{i32 0, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 3, i32 1, i32 12, i32 0, !7}
!7 = !{i32 1, i32 4}
!8 = !{i32 1, %"class.StructuredBuffer<ReactiveMotionModelInfoGpu>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i32 0, !9}
!9 = !{i32 1, i32 64}
!10 = !{i32 2, %"class.StructuredBuffer<ReactiveMotionModelPart>"* undef, !"", i32 0, i32 5, i32 1, i32 12, i32 0, !11}
!11 = !{i32 1, i32 32}
!12 = !{i32 3, %"class.StructuredBuffer<ReactiveMotionModelPartTweaksGpu>"* undef, !"", i32 0, i32 7, i32 1, i32 12, i32 0, !13}
!13 = !{i32 1, i32 8}
!14 = !{i32 4, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 4, i32 1, i32 12, i32 0, !7}
!15 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!16 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!17 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 6, i32 1, i32 11, i32 0, null}
!18 = !{!19}
!19 = !{i32 0, %"class.RWStructuredBuffer<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 12, i1 false, i1 false, i1 false, !20}
!20 = !{i32 1, i32 16}
!21 = !{!22}
!22 = !{i32 0, %ReactiveMotionCalcConsts* undef, !"", i32 0, i32 1, i32 1, i32 576, null}
!23 = !{void ()* @cs_reactivemotion_calc_modelparts_indirect, !"cs_reactivemotion_calc_modelparts_indirect", null, !4, !24}
!24 = !{i32 0, i64 272, i32 4, !25}
!25 = !{i32 64, i32 1, i32 1}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}

