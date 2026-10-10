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
; shader hash: 4277ac3f300fabb7895794683801fb8d
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
;                                   texture  struct         r/o      T0             t0     1
;                                   texture  struct         r/o      T1             t5     1
;                                   texture  struct         r/o      T2             t7     1
;                                   texture  struct         r/o      T3             t4     1
;                                   texture    byte         r/o      T4             t1     1
;                                   texture    byte         r/o      T5             t2     1
;                                   texture    byte         r/o      T6             t6     1
;                                       UAV  struct         r/w      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%"class.StructuredBuffer<ReactiveMotionModelInfoGpu>" = type { %struct.ReactiveMotionModelInfoGpu }
%struct.ReactiveMotionModelInfoGpu = type { <3 x float>, float, <3 x float>, i32, <3 x float>, i32, i32, i32, i32, i32 }
%"class.StructuredBuffer<ReactiveMotionModelPart>" = type { %struct.ReactiveMotionModelPart }
%struct.ReactiveMotionModelPart = type { <3 x float>, i32, <3 x float>, i32 }
%"class.StructuredBuffer<ReactiveMotionModelPartTweaksGpu>" = type { %struct.ReactiveMotionModelPartTweaksGpu }
%struct.ReactiveMotionModelPartTweaksGpu = type { float, float }
%"class.StructuredBuffer<unsigned int>" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.RWStructuredBuffer<vector<float, 4> >" = type { <4 x float> }
%ReactiveMotionCalcConsts = type { <3 x float>, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [30 x <4 x i32>] }

define void @cs_reactivemotion_calc_modelparts() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %11 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %12 = extractvalue %dx.types.CBufRet.i32 %11, 2
  %13 = icmp ult i32 %10, %12
  br i1 %13, label %14, label %485, !dx.controlflow.hints !25

; <label>:14                                      ; preds = %0
  %15 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %10, i32 0)  ; BufferLoad(srv,index,wot)
  %16 = extractvalue %dx.types.ResRet.i32 %15, 0
  %17 = and i32 %16, 65535
  %18 = lshr i32 %16, 16
  %19 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %17, i32 0)  ; BufferLoad(srv,index,wot)
  %20 = extractvalue %dx.types.ResRet.f32 %19, 0
  %21 = extractvalue %dx.types.ResRet.f32 %19, 1
  %22 = extractvalue %dx.types.ResRet.f32 %19, 2
  %23 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %17, i32 16)  ; BufferLoad(srv,index,wot)
  %24 = extractvalue %dx.types.ResRet.f32 %23, 0
  %25 = extractvalue %dx.types.ResRet.f32 %23, 1
  %26 = extractvalue %dx.types.ResRet.f32 %23, 2
  %27 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %17, i32 28)  ; BufferLoad(srv,index,wot)
  %28 = extractvalue %dx.types.ResRet.i32 %27, 0
  %29 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %17, i32 44)  ; BufferLoad(srv,index,wot)
  %30 = extractvalue %dx.types.ResRet.i32 %29, 0
  %31 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %17, i32 52)  ; BufferLoad(srv,index,wot)
  %32 = extractvalue %dx.types.ResRet.i32 %31, 0
  %33 = and i32 %30, 268435456
  %34 = icmp eq i32 %33, 0
  %35 = and i32 %30, 16777215
  %36 = icmp eq i32 %35, 16777215
  br i1 %36, label %131, label %37, !dx.controlflow.hints !26

; <label>:37                                      ; preds = %14
  %38 = and i32 %30, 1073741824
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %53, label %40, !dx.controlflow.hints !27

; <label>:40                                      ; preds = %37
  %41 = mul nuw nsw i32 %17, 24
  %42 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %41, i32 undef)  ; BufferLoad(srv,index,wot)
  %43 = extractvalue %dx.types.ResRet.f32 %42, 0
  %44 = extractvalue %dx.types.ResRet.f32 %42, 1
  %45 = extractvalue %dx.types.ResRet.f32 %42, 2
  %46 = add nuw nsw i32 %41, 12
  %47 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %46, i32 undef)  ; BufferLoad(srv,index,wot)
  %48 = extractvalue %dx.types.ResRet.i32 %47, 0
  %49 = extractvalue %dx.types.ResRet.i32 %47, 1
  %50 = add nuw nsw i32 %41, 20
  %51 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %50, i32 undef)  ; BufferLoad(srv,index,wot)
  %52 = extractvalue %dx.types.ResRet.i32 %51, 0
  br label %66

; <label>:53                                      ; preds = %37
  %54 = mul nuw nsw i32 %35, 24
  %55 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %54, i32 undef)  ; BufferLoad(srv,index,wot)
  %56 = extractvalue %dx.types.ResRet.f32 %55, 0
  %57 = extractvalue %dx.types.ResRet.f32 %55, 1
  %58 = extractvalue %dx.types.ResRet.f32 %55, 2
  %59 = add nuw nsw i32 %54, 12
  %60 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %59, i32 undef)  ; BufferLoad(srv,index,wot)
  %61 = extractvalue %dx.types.ResRet.i32 %60, 0
  %62 = extractvalue %dx.types.ResRet.i32 %60, 1
  %63 = add nuw nsw i32 %54, 20
  %64 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %63, i32 undef)  ; BufferLoad(srv,index,wot)
  %65 = extractvalue %dx.types.ResRet.i32 %64, 0
  br label %66

; <label>:66                                      ; preds = %53, %40
  %67 = phi i32 [ %52, %40 ], [ %65, %53 ]
  %68 = phi i32 [ %48, %40 ], [ %61, %53 ]
  %69 = phi i32 [ %49, %40 ], [ %62, %53 ]
  %70 = phi float [ %43, %40 ], [ %56, %53 ]
  %71 = phi float [ %44, %40 ], [ %57, %53 ]
  %72 = phi float [ %45, %40 ], [ %58, %53 ]
  %73 = bitcast float %70 to i32
  %74 = bitcast float %71 to i32
  %75 = bitcast float %72 to i32
  %76 = sitofp i32 %73 to float
  %77 = sitofp i32 %74 to float
  %78 = sitofp i32 %75 to float
  %79 = fmul fast float %76, 0x3F30000000000000
  %80 = fmul fast float %77, 0x3F30000000000000
  %81 = fmul fast float %78, 0x3F30000000000000
  %82 = and i32 %68, 65535
  %83 = uitofp i32 %82 to float
  %84 = lshr i32 %68, 16
  %85 = uitofp i32 %84 to float
  %86 = and i32 %69, 65535
  %87 = uitofp i32 %86 to float
  %88 = lshr i32 %69, 16
  %89 = uitofp i32 %88 to float
  %90 = fmul fast float %83, 0x3F00001000000000
  %91 = fmul fast float %85, 0x3F00001000000000
  %92 = fmul fast float %87, 0x3F00001000000000
  %93 = fmul fast float %89, 0x3F00001000000000
  %94 = fadd fast float %90, -1.000000e+00
  %95 = fadd fast float %91, -1.000000e+00
  %96 = fadd fast float %92, -1.000000e+00
  %97 = fadd fast float %93, -1.000000e+00
  %98 = and i32 %67, 65535
  %99 = call float @dx.op.legacyF16ToF32(i32 131, i32 %98)  ; LegacyF16ToF32(value)
  %100 = fmul fast float %94, %94
  %101 = fmul fast float %95, %95
  %102 = fmul fast float %96, %96
  %103 = fmul fast float %97, %97
  %104 = fadd fast float %100, %101
  %105 = fadd fast float %104, %102
  %106 = fadd fast float %105, %103
  %107 = fdiv fast float 2.000000e+00, %106
  %108 = fmul fast float %107, %94
  %109 = fmul fast float %108, %95
  %110 = fmul fast float %108, %96
  %111 = fmul fast float %108, %97
  %112 = fmul fast float %107, %95
  %113 = fmul fast float %112, %96
  %114 = fmul fast float %112, %97
  %115 = fmul fast float %97, %96
  %116 = fmul fast float %115, %107
  %117 = fadd fast float %102, %101
  %118 = fmul fast float %117, %107
  %119 = fsub fast float 1.000000e+00, %118
  %120 = fadd fast float %109, %116
  %121 = fsub fast float %110, %114
  %122 = fsub fast float %109, %116
  %123 = fadd fast float %102, %100
  %124 = fmul fast float %123, %107
  %125 = fsub fast float 1.000000e+00, %124
  %126 = fadd fast float %113, %111
  %127 = fadd fast float %110, %114
  %128 = fsub fast float %113, %111
  %129 = fmul fast float %107, %104
  %130 = fsub fast float 1.000000e+00, %129
  br label %131

; <label>:131                                     ; preds = %66, %14
  %132 = phi float [ %119, %66 ], [ 1.000000e+00, %14 ]
  %133 = phi float [ %122, %66 ], [ 0.000000e+00, %14 ]
  %134 = phi float [ %127, %66 ], [ 0.000000e+00, %14 ]
  %135 = phi float [ %79, %66 ], [ 0.000000e+00, %14 ]
  %136 = phi float [ %120, %66 ], [ 0.000000e+00, %14 ]
  %137 = phi float [ %125, %66 ], [ 1.000000e+00, %14 ]
  %138 = phi float [ %128, %66 ], [ 0.000000e+00, %14 ]
  %139 = phi float [ %80, %66 ], [ 0.000000e+00, %14 ]
  %140 = phi float [ %121, %66 ], [ 0.000000e+00, %14 ]
  %141 = phi float [ %126, %66 ], [ 0.000000e+00, %14 ]
  %142 = phi float [ %130, %66 ], [ 1.000000e+00, %14 ]
  %143 = phi float [ %81, %66 ], [ 0.000000e+00, %14 ]
  %144 = phi float [ %99, %66 ], [ 1.000000e+00, %14 ]
  %145 = mul nuw nsw i32 %17, 12
  %146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %145, i32 undef)  ; BufferLoad(srv,index,wot)
  %147 = extractvalue %dx.types.ResRet.i32 %146, 0
  %148 = extractvalue %dx.types.ResRet.i32 %146, 1
  %149 = extractvalue %dx.types.ResRet.i32 %146, 2
  %150 = and i32 %147, 32768
  %151 = sub nsw i32 0, %150
  %152 = and i32 %147, 65535
  %153 = or i32 %152, %151
  %154 = sitofp i32 %153 to float
  %155 = fmul fast float %154, 0x3F00002000000000
  %156 = ashr i32 %147, 16
  %157 = and i32 %156, 32768
  %158 = sub nsw i32 0, %157
  %159 = and i32 %156, 65535
  %160 = or i32 %159, %158
  %161 = sitofp i32 %160 to float
  %162 = fmul fast float %161, 0x3F00002000000000
  %163 = and i32 %148, 32768
  %164 = sub nsw i32 0, %163
  %165 = and i32 %148, 65535
  %166 = or i32 %165, %164
  %167 = sitofp i32 %166 to float
  %168 = fmul fast float %167, 0x3F00002000000000
  %169 = bitcast i32 %149 to float
  %170 = lshr i32 %148, 16
  %171 = call float @dx.op.dot3.f32(i32 55, float %155, float %162, float %168, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %172 = call float @dx.op.unary.f32(i32 6, float %171)  ; FAbs(value)
  %173 = fcmp fast olt float %172, 0x3FEFF7CEE0000000
  br i1 %173, label %174, label %191, !dx.controlflow.hints !28

; <label>:174                                     ; preds = %131
  %175 = fsub fast float -0.000000e+00, %155
  %176 = call float @dx.op.dot3.f32(i32 55, float %162, float %175, float 0.000000e+00, float %162, float %175, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %177 = call float @dx.op.unary.f32(i32 25, float %176)  ; Rsqrt(value)
  %178 = fmul fast float %177, %162
  %179 = fmul fast float %177, %175
  %180 = fmul fast float %179, %168
  %181 = fmul fast float %167, 0xBF00002000000000
  %182 = fmul fast float %181, %178
  %183 = fmul fast float %178, %162
  %184 = fmul fast float %179, %155
  %185 = fsub fast float %183, %184
  %186 = call float @dx.op.dot3.f32(i32 55, float %180, float %182, float %185, float %180, float %182, float %185)  ; Dot3(ax,ay,az,bx,by,bz)
  %187 = call float @dx.op.unary.f32(i32 25, float %186)  ; Rsqrt(value)
  %188 = fmul fast float %180, %187
  %189 = fmul fast float %187, %182
  %190 = fmul fast float %185, %187
  br label %216

; <label>:191                                     ; preds = %131
  %192 = fcmp fast ogt float %171, 0.000000e+00
  %193 = fcmp fast olt float %171, 0.000000e+00
  %194 = zext i1 %192 to i32
  %195 = zext i1 %193 to i32
  %196 = sub nsw i32 %194, %195
  %197 = sitofp i32 %196 to float
  %198 = fmul fast float %168, %197
  %199 = fmul fast float %197, %162
  %200 = fsub fast float -0.000000e+00, %199
  %201 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float %198, float %200, float 0.000000e+00, float %198, float %200)  ; Dot3(ax,ay,az,bx,by,bz)
  %202 = call float @dx.op.unary.f32(i32 25, float %201)  ; Rsqrt(value)
  %203 = fmul fast float %202, %198
  %204 = fmul fast float %202, %200
  %205 = fmul fast float %203, %168
  %206 = fmul fast float %204, %162
  %207 = fsub fast float %205, %206
  %208 = fmul fast float %204, %155
  %209 = fmul fast float %154, 0xBF00002000000000
  %210 = fmul fast float %209, %203
  %211 = call float @dx.op.dot3.f32(i32 55, float %207, float %208, float %210, float %207, float %208, float %210)  ; Dot3(ax,ay,az,bx,by,bz)
  %212 = call float @dx.op.unary.f32(i32 25, float %211)  ; Rsqrt(value)
  %213 = fmul fast float %207, %212
  %214 = fmul fast float %208, %212
  %215 = fmul fast float %212, %210
  br label %216

; <label>:216                                     ; preds = %191, %174
  %217 = phi float [ %178, %174 ], [ 0.000000e+00, %191 ]
  %218 = phi float [ %188, %174 ], [ %213, %191 ]
  %219 = phi float [ %179, %174 ], [ %203, %191 ]
  %220 = phi float [ %189, %174 ], [ %214, %191 ]
  %221 = phi float [ 0.000000e+00, %174 ], [ %204, %191 ]
  %222 = phi float [ %190, %174 ], [ %215, %191 ]
  %223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %224 = extractvalue %dx.types.CBufRet.f32 %223, 0
  %225 = fmul fast float %224, %20
  %226 = extractvalue %dx.types.CBufRet.f32 %223, 1
  %227 = fmul fast float %226, %21
  %228 = extractvalue %dx.types.CBufRet.f32 %223, 2
  %229 = fmul fast float %228, %22
  %230 = fmul fast float %135, 0x3F50624DE0000000
  %231 = fmul fast float %139, 0x3F50624DE0000000
  %232 = call float @dx.op.unary.f32(i32 28, float %230)  ; Round_pi(value)
  %233 = call float @dx.op.unary.f32(i32 28, float %231)  ; Round_pi(value)
  %234 = fmul fast float %232, 1.000000e+03
  %235 = fmul fast float %233, 1.000000e+03
  %236 = fsub fast float %135, %234
  %237 = fsub fast float %139, %235
  %238 = fmul fast float %144, %24
  %239 = fmul fast float %144, %25
  %240 = fmul fast float %144, %26
  %241 = fdiv fast float 1.000000e+00, %238
  %242 = fdiv fast float 1.000000e+00, %239
  %243 = fdiv fast float 1.000000e+00, %240
  %244 = add i32 %32, %18
  %245 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %244, i32 0)  ; BufferLoad(srv,index,wot)
  %246 = extractvalue %dx.types.ResRet.f32 %245, 0
  %247 = extractvalue %dx.types.ResRet.f32 %245, 1
  %248 = extractvalue %dx.types.ResRet.f32 %245, 2
  br i1 %34, label %256, label %249, !dx.controlflow.hints !29

; <label>:249                                     ; preds = %216
  %250 = lshr i32 %28, 16
  %251 = add nuw nsw i32 %250, %18
  %252 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %251, i32 0)  ; BufferLoad(srv,index,wot)
  %253 = extractvalue %dx.types.ResRet.f32 %252, 0
  %254 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %251, i32 4)  ; BufferLoad(srv,index,wot)
  %255 = extractvalue %dx.types.ResRet.f32 %254, 0
  br label %256

; <label>:256                                     ; preds = %249, %216
  %257 = phi float [ %255, %249 ], [ 1.000000e+00, %216 ]
  %258 = phi float [ %253, %249 ], [ 1.000000e+00, %216 ]
  %259 = fmul fast float %246, %241
  %260 = fmul fast float %247, %242
  %261 = fmul fast float %248, %243
  %262 = fmul fast float %259, %132
  %263 = call float @dx.op.tertiary.f32(i32 46, float %133, float %260, float %262)  ; FMad(a,b,c)
  %264 = call float @dx.op.tertiary.f32(i32 46, float %134, float %261, float %263)  ; FMad(a,b,c)
  %265 = fmul fast float %259, %136
  %266 = call float @dx.op.tertiary.f32(i32 46, float %137, float %260, float %265)  ; FMad(a,b,c)
  %267 = call float @dx.op.tertiary.f32(i32 46, float %138, float %261, float %266)  ; FMad(a,b,c)
  %268 = fadd fast float %236, %264
  %269 = fadd fast float %237, %267
  %270 = fmul fast float %268, %225
  %271 = fmul fast float %269, %225
  %272 = fmul fast float %229, %257
  %273 = fadd fast float %272, 5.000000e-01
  %274 = fmul fast float %273, 0x40169E9560000000
  %275 = fmul fast float %273, 0x4022D97C80000000
  %276 = fmul fast float %273, 0x401E28C760000000
  %277 = call float @dx.op.unary.f32(i32 22, float %270)  ; Frc(value)
  %278 = fsub fast float 2.000000e+00, %277
  %279 = call float @dx.op.unary.f32(i32 22, float %271)  ; Frc(value)
  %280 = fsub fast float %278, %279
  %281 = fmul fast float %280, 0x400CFC02C0000000
  %282 = fmul fast float %280, 0x4020802820000000
  %283 = fmul fast float %280, 0x403393E4E0000000
  %284 = fadd fast float %281, %274
  %285 = fadd fast float %282, %275
  %286 = fadd fast float %283, %276
  %287 = call float @dx.op.unary.f32(i32 13, float %284)  ; Sin(value)
  %288 = call float @dx.op.unary.f32(i32 13, float %285)  ; Sin(value)
  %289 = call float @dx.op.unary.f32(i32 13, float %286)  ; Sin(value)
  %290 = fmul fast float %227, 7.500000e+00
  %291 = fmul fast float %290, %258
  %292 = fmul fast float %291, %287
  %293 = fmul fast float %227, 0x3FFB333340000000
  %294 = fmul fast float %293, %258
  %295 = fmul fast float %294, %288
  %296 = fmul fast float %294, %289
  %297 = extractvalue %dx.types.CBufRet.f32 %223, 3
  %298 = fmul fast float %289, %217
  %299 = fmul fast float %289, %219
  %300 = fmul fast float %289, %221
  %301 = fmul fast float %288, %218
  %302 = fmul fast float %288, %220
  %303 = fmul fast float %288, %222
  %304 = fadd fast float %298, %301
  %305 = fadd fast float %299, %302
  %306 = fadd fast float %300, %303
  %307 = fmul fast float %297, %287
  %308 = fmul fast float %307, %304
  %309 = fmul fast float %307, %305
  %310 = fmul fast float %307, %306
  %311 = fadd fast float %308, %155
  %312 = fadd fast float %309, %162
  %313 = fadd fast float %310, %168
  %314 = call float @dx.op.dot3.f32(i32 55, float %311, float %312, float %313, float %311, float %312, float %313)  ; Dot3(ax,ay,az,bx,by,bz)
  %315 = call float @dx.op.unary.f32(i32 25, float %314)  ; Rsqrt(value)
  %316 = fadd fast float %292, %169
  %317 = fmul fast float %315, %316
  %318 = fmul fast float %317, %311
  %319 = fadd fast float %295, %169
  %320 = fmul fast float %319, %315
  %321 = fmul fast float %320, %312
  %322 = fadd fast float %296, %169
  %323 = fmul fast float %322, %315
  %324 = fmul fast float %323, %313
  %325 = icmp eq i32 %170, 0
  br i1 %325, label %472, label %326, !dx.controlflow.hints !30

; <label>:326                                     ; preds = %256
  %327 = fmul fast float %246, %132
  %328 = call float @dx.op.tertiary.f32(i32 46, float %247, float %133, float %327)  ; FMad(a,b,c)
  %329 = call float @dx.op.tertiary.f32(i32 46, float %248, float %134, float %328)  ; FMad(a,b,c)
  %330 = fadd fast float %329, %135
  %331 = fmul fast float %246, %136
  %332 = call float @dx.op.tertiary.f32(i32 46, float %247, float %137, float %331)  ; FMad(a,b,c)
  %333 = call float @dx.op.tertiary.f32(i32 46, float %248, float %138, float %332)  ; FMad(a,b,c)
  %334 = fadd fast float %333, %139
  %335 = fmul fast float %246, %140
  %336 = call float @dx.op.tertiary.f32(i32 46, float %247, float %141, float %335)  ; FMad(a,b,c)
  %337 = call float @dx.op.tertiary.f32(i32 46, float %248, float %142, float %336)  ; FMad(a,b,c)
  %338 = fadd fast float %337, %143
  br label %339

; <label>:339                                     ; preds = %432, %326
  %340 = phi float [ 0.000000e+00, %326 ], [ %433, %432 ]
  %341 = phi float [ 0.000000e+00, %326 ], [ %434, %432 ]
  %342 = phi float [ 0.000000e+00, %326 ], [ %435, %432 ]
  %343 = phi i32 [ %170, %326 ], [ %436, %432 ]
  %344 = phi i32 [ 0, %326 ], [ %437, %432 ]
  %345 = shl i32 1, %344
  %346 = and i32 %345, %343
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %432, label %348, !dx.controlflow.hints !31

; <label>:348                                     ; preds = %339
  %349 = xor i32 %345, -1
  %350 = and i32 %343, %349
  %351 = shl i32 %344, 1
  %352 = add nuw nsw i32 %351, 6
  %353 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 %352)  ; CBufferLoadLegacy(handle,regIndex)
  %354 = extractvalue %dx.types.CBufRet.i32 %353, 0
  %355 = extractvalue %dx.types.CBufRet.i32 %353, 1
  %356 = extractvalue %dx.types.CBufRet.i32 %353, 2
  %357 = extractvalue %dx.types.CBufRet.i32 %353, 3
  %358 = or i32 %351, 1
  %359 = add nuw nsw i32 %358, 6
  %360 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 %359)  ; CBufferLoadLegacy(handle,regIndex)
  %361 = extractvalue %dx.types.CBufRet.i32 %360, 0
  %362 = extractvalue %dx.types.CBufRet.i32 %360, 1
  %363 = extractvalue %dx.types.CBufRet.i32 %360, 2
  %364 = extractvalue %dx.types.CBufRet.i32 %360, 3
  %365 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %366 = extractvalue %dx.types.CBufRet.i32 %365, 2
  %367 = extractvalue %dx.types.CBufRet.i32 %365, 3
  %368 = shl i32 %344, 5
  %369 = add i32 %367, %368
  %370 = xor i32 %356, %355
  %371 = xor i32 %370, %366
  %372 = xor i32 %371, %369
  %373 = extractvalue %dx.types.CBufRet.i32 %365, 1
  %374 = xor i32 %355, %354
  %375 = xor i32 %374, %373
  %376 = xor i32 %375, %369
  %377 = extractvalue %dx.types.CBufRet.i32 %365, 0
  %378 = xor i32 %354, -1
  %379 = xor i32 %377, %378
  %380 = xor i32 %379, %369
  %381 = bitcast i32 %380 to float
  %382 = bitcast i32 %376 to float
  %383 = bitcast i32 %372 to float
  %384 = bitcast i32 %357 to float
  %385 = fmul fast float %384, %384
  %386 = fdiv fast float 1.000000e+00, %385
  %387 = fsub fast float %330, %381
  %388 = fsub fast float %334, %382
  %389 = fsub fast float %338, %383
  %390 = fcmp fast ogt float %389, 0.000000e+00
  %391 = fcmp fast olt float %389, 0.000000e+00
  %392 = zext i1 %390 to i32
  %393 = zext i1 %391 to i32
  %394 = sub nsw i32 %392, %393
  %395 = sitofp i32 %394 to float
  %396 = fmul fast float %389, -5.000000e-01
  %397 = fmul fast float %396, %395
  %398 = call float @dx.op.dot3.f32(i32 55, float %387, float %388, float %397, float %387, float %388, float %397)  ; Dot3(ax,ay,az,bx,by,bz)
  %399 = call float @dx.op.unary.f32(i32 25, float %398)  ; Rsqrt(value)
  %400 = fmul fast float %387, %399
  %401 = fmul fast float %388, %399
  %402 = fmul fast float %397, %399
  %403 = fsub fast float %385, %398
  %404 = fmul fast float %403, %386
  %405 = call float @dx.op.binary.f32(i32 35, float %404, float 0.000000e+00)  ; FMax(a,b)
  %406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %407 = extractvalue %dx.types.CBufRet.f32 %406, 0
  %408 = bitcast i32 %361 to float
  %409 = bitcast i32 %362 to float
  %410 = bitcast i32 %363 to float
  %411 = bitcast i32 %364 to float
  %412 = call float @dx.op.dot3.f32(i32 55, float %408, float %409, float %410, float %400, float %401, float %402)  ; Dot3(ax,ay,az,bx,by,bz)
  %413 = call float @dx.op.binary.f32(i32 36, float %412, float 0.000000e+00)  ; FMin(a,b)
  %414 = fmul fast float %413, %413
  %415 = fmul fast float %411, %384
  %416 = fmul fast float %415, %407
  %417 = fadd fast float %416, %384
  %418 = fmul fast float %417, %417
  %419 = fdiv fast float 1.000000e+00, %418
  %420 = fsub fast float %418, %398
  %421 = fmul fast float %420, %419
  %422 = call float @dx.op.binary.f32(i32 35, float %421, float 0.000000e+00)  ; FMax(a,b)
  %423 = fsub fast float %422, %405
  %424 = fmul fast float %414, %423
  %425 = fadd fast float %424, %405
  %426 = fmul fast float %425, %400
  %427 = fmul fast float %425, %401
  %428 = fmul fast float %425, %402
  %429 = fadd fast float %426, %340
  %430 = fadd fast float %427, %341
  %431 = fadd fast float %428, %342
  br label %432

; <label>:432                                     ; preds = %348, %339
  %433 = phi float [ %340, %339 ], [ %429, %348 ]
  %434 = phi float [ %341, %339 ], [ %430, %348 ]
  %435 = phi float [ %342, %339 ], [ %431, %348 ]
  %436 = phi i32 [ %343, %339 ], [ %350, %348 ]
  %437 = add nuw nsw i32 %344, 1
  %438 = icmp ne i32 %436, 0
  %439 = icmp slt i32 %437, 15
  %440 = and i1 %439, %438
  br i1 %440, label %339, label %441

; <label>:441                                     ; preds = %432
  %442 = call float @dx.op.dot3.f32(i32 55, float %433, float %434, float %435, float %433, float %434, float %435)  ; Dot3(ax,ay,az,bx,by,bz)
  %443 = fcmp fast ogt float %442, 0.000000e+00
  br i1 %443, label %444, label %452, !dx.controlflow.hints !32

; <label>:444                                     ; preds = %441
  %445 = call float @dx.op.binary.f32(i32 36, float %442, float 1.000000e+00)  ; FMin(a,b)
  %446 = call float @dx.op.unary.f32(i32 24, float %445)  ; Sqrt(value)
  %447 = call float @dx.op.unary.f32(i32 25, float %442)  ; Rsqrt(value)
  %448 = fmul fast float %447, %433
  %449 = fmul fast float %447, %434
  %450 = fmul fast float %447, %435
  %451 = fmul fast float %446, %446
  br label %452

; <label>:452                                     ; preds = %444, %441
  %453 = phi float [ %448, %444 ], [ 0.000000e+00, %441 ]
  %454 = phi float [ %449, %444 ], [ 0.000000e+00, %441 ]
  %455 = phi float [ %450, %444 ], [ 0.000000e+00, %441 ]
  %456 = phi float [ %451, %444 ], [ 0.000000e+00, %441 ]
  %457 = fsub fast float 1.000000e+00, %456
  %458 = fmul fast float %457, %318
  %459 = fmul fast float %457, %321
  %460 = fmul fast float %457, %324
  %461 = fmul fast float %456, %453
  %462 = fmul fast float %456, %454
  %463 = fmul fast float %456, %455
  %464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %465 = extractvalue %dx.types.CBufRet.f32 %464, 1
  %466 = fmul fast float %461, %465
  %467 = fmul fast float %462, %465
  %468 = fmul fast float %463, %465
  %469 = fadd fast float %466, %458
  %470 = fadd fast float %467, %459
  %471 = fadd fast float %468, %460
  br label %472

; <label>:472                                     ; preds = %452, %256
  %473 = phi float [ %469, %452 ], [ %318, %256 ]
  %474 = phi float [ %470, %452 ], [ %321, %256 ]
  %475 = phi float [ %471, %452 ], [ %324, %256 ]
  %476 = fmul fast float %473, %132
  %477 = call float @dx.op.tertiary.f32(i32 46, float %136, float %474, float %476)  ; FMad(a,b,c)
  %478 = call float @dx.op.tertiary.f32(i32 46, float %140, float %475, float %477)  ; FMad(a,b,c)
  %479 = fmul fast float %473, %133
  %480 = call float @dx.op.tertiary.f32(i32 46, float %137, float %474, float %479)  ; FMad(a,b,c)
  %481 = call float @dx.op.tertiary.f32(i32 46, float %141, float %475, float %480)  ; FMad(a,b,c)
  %482 = fmul fast float %473, %134
  %483 = call float @dx.op.tertiary.f32(i32 46, float %138, float %474, float %482)  ; FMad(a,b,c)
  %484 = call float @dx.op.tertiary.f32(i32 46, float %142, float %475, float %483)  ; FMad(a,b,c)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %10, i32 0, float %478, float %481, float %484, float 0.000000e+00, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %485

; <label>:485                                     ; preds = %472, %0
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
!dx.entryPoints = !{!22}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !17, !20, null}
!5 = !{!6, !8, !10, !12, !14, !15, !16}
!6 = !{i32 0, %"class.StructuredBuffer<ReactiveMotionModelInfoGpu>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i32 0, !7}
!7 = !{i32 1, i32 64}
!8 = !{i32 1, %"class.StructuredBuffer<ReactiveMotionModelPart>"* undef, !"", i32 0, i32 5, i32 1, i32 12, i32 0, !9}
!9 = !{i32 1, i32 32}
!10 = !{i32 2, %"class.StructuredBuffer<ReactiveMotionModelPartTweaksGpu>"* undef, !"", i32 0, i32 7, i32 1, i32 12, i32 0, !11}
!11 = !{i32 1, i32 8}
!12 = !{i32 3, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 4, i32 1, i32 12, i32 0, !13}
!13 = !{i32 1, i32 4}
!14 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!15 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!16 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 6, i32 1, i32 11, i32 0, null}
!17 = !{!18}
!18 = !{i32 0, %"class.RWStructuredBuffer<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 12, i1 false, i1 false, i1 false, !19}
!19 = !{i32 1, i32 16}
!20 = !{!21}
!21 = !{i32 0, %ReactiveMotionCalcConsts* undef, !"", i32 0, i32 1, i32 1, i32 576, null}
!22 = !{void ()* @cs_reactivemotion_calc_modelparts, !"cs_reactivemotion_calc_modelparts", null, !4, !23}
!23 = !{i32 0, i64 272, i32 4, !24}
!24 = !{i32 64, i32 1, i32 1}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}

