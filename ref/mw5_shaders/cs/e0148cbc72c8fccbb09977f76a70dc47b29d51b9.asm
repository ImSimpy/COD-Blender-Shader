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
; shader hash: 953d54097cac533fee9be7f0c02b477c
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
;   [464 x i8] (type annotation not present)
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
;   [80 x i8] (type annotation not present)
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
;   [4 x i8] (type annotation not present)
;
; }
;
; Resource bind info for 
; {
;
;   [20 x i8] (type annotation not present)
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb0     1
;                                   cbuffer      NA          NA     CB1            cb1     1
;                                   texture    byte         r/o      T0             t1     1
;                                   texture  struct         r/o      T1             t2     1
;                                   texture  struct         r/o      T2             t3     1
;                                   texture  struct         r/o      T3             t4     1
;                                   texture  struct         r/o      T4             t6     1
;                                   texture  struct         r/o      T5             t8     1
;                                   texture  struct         r/o      T6             t0     1
;                                       UAV  struct         r/w      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%struct.ByteAddressBuffer = type { i32 }
%"class.StructuredBuffer<FxEmitterInstancePerFrameData>" = type { %struct.FxEmitterInstancePerFrameData }
%struct.FxEmitterInstancePerFrameData = type { <4 x float>, <3 x float>, i32, <3 x float>, i32, i32, float, float, i32, i32, i32, i32, i32 }
%"class.StructuredBuffer<FxEmitterDefPerFrameData>" = type { %struct.FxEmitterDefPerFrameData }
%struct.FxEmitterDefPerFrameData = type { i32, i32 }
%"class.StructuredBuffer<unsigned int>" = type { i32 }
%"class.StructuredBuffer<FxParticleCounter>" = type { %struct.FxParticleCounter }
%struct.FxParticleCounter = type { i32, i32, i32, i32 }
%"class.RWStructuredBuffer<FxParticle>" = type { %struct.FxParticle }
%struct.FxParticle = type { <2 x i32>, <2 x i32>, i32 }
%hostlayout.FxFrameConsts_decl = type { %hostlayout.struct.FxFrameConsts }
%hostlayout.struct.FxFrameConsts = type { [4 x <4 x float>], [4 x <4 x float>], <4 x i32>, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, i32, i32, i32, i32, i32, i32, float, float, <3 x float>, i32, i32, float, float, float, <4 x i32>, [12 x <4 x i32>] }
%FxEmitConsts_decl = type { %struct.FxEmitConsts }
%struct.FxEmitConsts = type { i32, i32, i32, i32 }

define void @cs_fx_emit_particles() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %12 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %13 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %14 = extractvalue %dx.types.CBufRet.i32 %13, 0
  %15 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %14, i32 0)  ; BufferLoad(srv,index,wot)
  %16 = extractvalue %dx.types.ResRet.i32 %15, 0
  %17 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %14, i32 4)  ; BufferLoad(srv,index,wot)
  %18 = extractvalue %dx.types.ResRet.i32 %17, 0
  %19 = icmp ugt i32 %16, 1
  br i1 %19, label %20, label %21

; <label>:20                                      ; preds = %0
  br label %23

; <label>:21                                      ; preds = %0
  %22 = add i32 %18, -1
  br label %42

; <label>:23                                      ; preds = %23, %20
  %24 = phi i32 [ %35, %23 ], [ 0, %20 ]
  %25 = phi i32 [ %36, %23 ], [ 0, %20 ]
  %26 = phi i32 [ %37, %23 ], [ %16, %20 ]
  %27 = sub i32 %26, %24
  %28 = lshr i32 %27, 1
  %29 = add i32 %28, %24
  %30 = add i32 %18, -1
  %31 = add i32 %30, %29
  %32 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %31, i32 0)  ; BufferLoad(srv,index,wot)
  %33 = extractvalue %dx.types.ResRet.i32 %32, 0
  %34 = icmp ult i32 %12, %33
  %35 = select i1 %34, i32 %24, i32 %29
  %36 = select i1 %34, i32 %25, i32 %33
  %37 = select i1 %34, i32 %29, i32 %26
  %38 = sub i32 %26, %29
  %39 = select i1 %34, i32 %28, i32 %38
  %40 = icmp ugt i32 %39, 1
  br i1 %40, label %23, label %41

; <label>:41                                      ; preds = %23
  br label %42

; <label>:42                                      ; preds = %41, %21
  %43 = phi i32 [ %22, %21 ], [ %30, %41 ]
  %44 = phi i32 [ 0, %21 ], [ %35, %41 ]
  %45 = phi i32 [ 0, %21 ], [ %36, %41 ]
  %46 = phi i32 [ %16, %21 ], [ %37, %41 ]
  %47 = icmp eq i32 %44, 0
  %48 = shl i32 %45, 6
  %49 = select i1 %47, i32 0, i32 %48
  %50 = sub i32 %11, %49
  %51 = add i32 %43, %46
  %52 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %51, i32 0)  ; BufferLoad(srv,index,wot)
  %53 = extractvalue %dx.types.ResRet.i32 %52, 0
  %54 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %53, i32 0)  ; BufferLoad(srv,index,wot)
  %55 = extractvalue %dx.types.ResRet.f32 %54, 0
  %56 = extractvalue %dx.types.ResRet.f32 %54, 1
  %57 = extractvalue %dx.types.ResRet.f32 %54, 2
  %58 = extractvalue %dx.types.ResRet.f32 %54, 3
  %59 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %53, i32 16)  ; BufferLoad(srv,index,wot)
  %60 = extractvalue %dx.types.ResRet.f32 %59, 0
  %61 = extractvalue %dx.types.ResRet.f32 %59, 1
  %62 = extractvalue %dx.types.ResRet.f32 %59, 2
  %63 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %53, i32 32)  ; BufferLoad(srv,index,wot)
  %64 = extractvalue %dx.types.ResRet.f32 %63, 0
  %65 = extractvalue %dx.types.ResRet.f32 %63, 1
  %66 = extractvalue %dx.types.ResRet.f32 %63, 2
  %67 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %53, i32 4)  ; BufferLoad(srv,index,wot)
  %68 = extractvalue %dx.types.ResRet.i32 %67, 0
  %69 = icmp ult i32 %50, %68
  br i1 %69, label %70, label %490, !dx.controlflow.hints !26

; <label>:70                                      ; preds = %42
  %71 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %72 = extractvalue %dx.types.ResRet.f32 %71, 0
  %73 = extractvalue %dx.types.ResRet.f32 %71, 1
  %74 = extractvalue %dx.types.ResRet.f32 %71, 2
  %75 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %76 = extractvalue %dx.types.ResRet.i32 %75, 0
  %77 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %78 = extractvalue %dx.types.ResRet.f32 %77, 0
  %79 = extractvalue %dx.types.ResRet.f32 %77, 1
  %80 = extractvalue %dx.types.ResRet.f32 %77, 2
  %81 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 36, i32 undef)  ; BufferLoad(srv,index,wot)
  %82 = extractvalue %dx.types.ResRet.f32 %81, 0
  %83 = extractvalue %dx.types.ResRet.f32 %81, 1
  %84 = extractvalue %dx.types.ResRet.f32 %81, 2
  %85 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 244, i32 undef)  ; BufferLoad(srv,index,wot)
  %86 = extractvalue %dx.types.ResRet.f32 %85, 0
  %87 = extractvalue %dx.types.ResRet.f32 %85, 1
  %88 = extractvalue %dx.types.ResRet.f32 %85, 2
  %89 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 260, i32 undef)  ; BufferLoad(srv,index,wot)
  %90 = extractvalue %dx.types.ResRet.f32 %89, 0
  %91 = extractvalue %dx.types.ResRet.f32 %89, 1
  %92 = extractvalue %dx.types.ResRet.f32 %89, 2
  %93 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 272, i32 undef)  ; BufferLoad(srv,index,wot)
  %94 = extractvalue %dx.types.ResRet.i32 %93, 0
  %95 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 276, i32 undef)  ; BufferLoad(srv,index,wot)
  %96 = extractvalue %dx.types.ResRet.f32 %95, 0
  %97 = extractvalue %dx.types.ResRet.f32 %95, 1
  %98 = extractvalue %dx.types.ResRet.f32 %95, 2
  %99 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 288, i32 undef)  ; BufferLoad(srv,index,wot)
  %100 = extractvalue %dx.types.ResRet.i32 %99, 0
  %101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %53, i32 0)  ; BufferLoad(srv,index,wot)
  %102 = extractvalue %dx.types.ResRet.i32 %101, 0
  %103 = add i32 %102, %50
  %104 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %105 = extractvalue %dx.types.CBufRet.i32 %104, 1
  %106 = xor i32 %103, 61
  %107 = lshr i32 %103, 16
  %108 = xor i32 %106, %107
  %109 = mul i32 %108, 9
  %110 = lshr i32 %109, 4
  %111 = xor i32 %110, %109
  %112 = mul i32 %111, 668265261
  %113 = lshr i32 %112, 15
  %114 = xor i32 %105, %94
  %115 = xor i32 %114, %112
  %116 = xor i32 %115, %113
  %117 = xor i32 %116, 61
  %118 = lshr i32 %116, 16
  %119 = xor i32 %117, %118
  %120 = mul i32 %119, 9
  %121 = lshr i32 %120, 4
  %122 = xor i32 %121, %120
  %123 = mul i32 %122, 668265261
  %124 = lshr i32 %123, 15
  %125 = xor i32 %124, %123
  %126 = shl i32 %125, 7
  %127 = and i32 %126, 8388480
  %128 = xor i32 %127, %125
  %129 = lshr i32 %128, 9
  %130 = and i32 %129, 127
  %131 = and i32 %128, 65535
  %132 = xor i32 %130, %131
  %133 = shl nuw nsw i32 %132, 8
  %134 = and i32 %133, 65280
  %135 = xor i32 %134, %132
  %136 = uitofp i32 %135 to float
  %137 = shl nuw nsw i32 %135, 7
  %138 = and i32 %137, 65408
  %139 = xor i32 %138, %135
  %140 = lshr i32 %139, 9
  %141 = xor i32 %140, %139
  %142 = shl nuw nsw i32 %141, 8
  %143 = and i32 %142, 65280
  %144 = xor i32 %143, %141
  %145 = uitofp i32 %144 to float
  %146 = shl nuw nsw i32 %144, 7
  %147 = xor i32 %146, %144
  %148 = lshr i32 %147, 9
  %149 = and i32 %148, 127
  %150 = and i32 %147, 65535
  %151 = xor i32 %149, %150
  %152 = shl nuw nsw i32 %151, 8
  %153 = and i32 %152, 65280
  %154 = xor i32 %153, %151
  %155 = uitofp i32 %154 to float
  %156 = shl nuw nsw i32 %154, 7
  %157 = and i32 %156, 65408
  %158 = xor i32 %157, %154
  %159 = lshr i32 %158, 9
  %160 = xor i32 %159, %158
  %161 = shl nuw nsw i32 %160, 8
  %162 = and i32 %161, 65280
  %163 = xor i32 %162, %160
  %164 = fmul fast float %78, 0x3EF0001000000000
  %165 = fmul fast float %164, %136
  %166 = fmul fast float %79, 0x3EF0001000000000
  %167 = fmul fast float %166, %145
  %168 = fmul fast float %80, 0x3EF0001000000000
  %169 = fmul fast float %168, %155
  %170 = fadd fast float %165, %72
  %171 = fadd fast float %167, %73
  %172 = fadd fast float %169, %74
  %173 = and i32 %100, 512
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %208, !dx.controlflow.hints !27

; <label>:175                                     ; preds = %70
  %176 = shl nuw nsw i32 %163, 7
  %177 = xor i32 %176, %163
  %178 = lshr i32 %177, 9
  %179 = and i32 %178, 127
  %180 = and i32 %177, 65535
  %181 = xor i32 %179, %180
  %182 = shl nuw nsw i32 %181, 8
  %183 = and i32 %182, 65280
  %184 = xor i32 %183, %181
  %185 = uitofp i32 %184 to float
  %186 = shl nuw nsw i32 %184, 7
  %187 = and i32 %186, 65408
  %188 = xor i32 %187, %184
  %189 = lshr i32 %188, 9
  %190 = xor i32 %189, %188
  %191 = shl nuw nsw i32 %190, 8
  %192 = and i32 %191, 65280
  %193 = xor i32 %192, %190
  %194 = uitofp i32 %193 to float
  %195 = fmul fast float %185, 0x3F00001000000000
  %196 = fadd fast float %195, -1.000000e+00
  %197 = fmul fast float %196, %196
  %198 = fsub fast float 1.000000e+00, %197
  %199 = call float @dx.op.unary.f32(i32 24, float %198)  ; Sqrt(value)
  %200 = fmul fast float %194, 0x3F19221480000000
  %201 = call float @dx.op.unary.f32(i32 13, float %200)  ; Sin(value)
  %202 = call float @dx.op.unary.f32(i32 12, float %200)  ; Cos(value)
  %203 = fmul fast float %199, %170
  %204 = fmul fast float %203, %202
  %205 = fmul fast float %199, %171
  %206 = fmul fast float %205, %201
  %207 = fmul fast float %196, %172
  br label %208

; <label>:208                                     ; preds = %175, %70
  %209 = phi i32 [ %163, %70 ], [ %193, %175 ]
  %210 = phi float [ %170, %70 ], [ %204, %175 ]
  %211 = phi float [ %171, %70 ], [ %206, %175 ]
  %212 = phi float [ %172, %70 ], [ %207, %175 ]
  %213 = and i32 %100, 3
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %226, label %215, !dx.controlflow.hints !28

; <label>:215                                     ; preds = %208
  %216 = and i32 %100, 2
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %220, !dx.controlflow.hints !29

; <label>:218                                     ; preds = %215
  %219 = call float @dx.op.unary.f32(i32 6, float %210)  ; FAbs(value)
  br label %226

; <label>:220                                     ; preds = %215
  %221 = and i32 %100, 1
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %226, !dx.controlflow.hints !30

; <label>:223                                     ; preds = %220
  %224 = call float @dx.op.unary.f32(i32 6, float %210)  ; FAbs(value)
  %225 = fsub fast float -0.000000e+00, %224
  br label %226

; <label>:226                                     ; preds = %223, %220, %218, %208
  %227 = phi float [ %210, %220 ], [ %225, %223 ], [ %219, %218 ], [ 0.000000e+00, %208 ]
  %228 = and i32 %100, 12
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %241, label %230, !dx.controlflow.hints !31

; <label>:230                                     ; preds = %226
  %231 = and i32 %100, 8
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %235, !dx.controlflow.hints !32

; <label>:233                                     ; preds = %230
  %234 = call float @dx.op.unary.f32(i32 6, float %211)  ; FAbs(value)
  br label %241

; <label>:235                                     ; preds = %230
  %236 = and i32 %100, 4
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %241, !dx.controlflow.hints !33

; <label>:238                                     ; preds = %235
  %239 = call float @dx.op.unary.f32(i32 6, float %211)  ; FAbs(value)
  %240 = fsub fast float -0.000000e+00, %239
  br label %241

; <label>:241                                     ; preds = %238, %235, %233, %226
  %242 = phi float [ %211, %235 ], [ %240, %238 ], [ %234, %233 ], [ 0.000000e+00, %226 ]
  %243 = and i32 %100, 48
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %256, label %245, !dx.controlflow.hints !34

; <label>:245                                     ; preds = %241
  %246 = and i32 %100, 32
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %250, !dx.controlflow.hints !35

; <label>:248                                     ; preds = %245
  %249 = call float @dx.op.unary.f32(i32 6, float %212)  ; FAbs(value)
  br label %256

; <label>:250                                     ; preds = %245
  %251 = and i32 %100, 16
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %256, !dx.controlflow.hints !36

; <label>:253                                     ; preds = %250
  %254 = call float @dx.op.unary.f32(i32 6, float %212)  ; FAbs(value)
  %255 = fsub fast float -0.000000e+00, %254
  br label %256

; <label>:256                                     ; preds = %253, %250, %248, %241
  %257 = phi float [ %212, %250 ], [ %255, %253 ], [ %249, %248 ], [ 0.000000e+00, %241 ]
  %258 = fadd fast float %227, %82
  %259 = fadd fast float %242, %83
  %260 = fadd fast float %257, %84
  %261 = shl i32 %209, 7
  %262 = and i32 %261, 65408
  %263 = and i32 %209, 65535
  %264 = xor i32 %262, %263
  %265 = lshr i32 %264, 9
  %266 = xor i32 %265, %264
  %267 = shl nuw nsw i32 %266, 8
  %268 = and i32 %267, 65280
  %269 = xor i32 %268, %266
  %270 = uitofp i32 %269 to float
  %271 = shl nuw nsw i32 %269, 7
  %272 = and i32 %271, 65408
  %273 = xor i32 %272, %269
  %274 = lshr i32 %273, 9
  %275 = and i32 %274, 65535
  %276 = xor i32 %275, %273
  %277 = shl nuw nsw i32 %276, 8
  %278 = xor i32 %277, %276
  %279 = and i32 %278, 65535
  %280 = uitofp i32 %279 to float
  %281 = shl nuw nsw i32 %279, 7
  %282 = xor i32 %281, %278
  %283 = lshr i32 %282, 9
  %284 = and i32 %283, 127
  %285 = and i32 %282, 65535
  %286 = xor i32 %284, %285
  %287 = shl nuw nsw i32 %286, 8
  %288 = and i32 %287, 65280
  %289 = xor i32 %288, %286
  %290 = uitofp i32 %289 to float
  %291 = shl nuw nsw i32 %289, 7
  %292 = and i32 %291, 65408
  %293 = xor i32 %292, %289
  %294 = lshr i32 %293, 9
  %295 = xor i32 %294, %293
  %296 = shl nuw nsw i32 %295, 8
  %297 = and i32 %296, 65280
  %298 = xor i32 %297, %295
  %299 = fmul fast float %90, 0x3EF0001000000000
  %300 = fmul fast float %299, %270
  %301 = fmul fast float %91, 0x3EF0001000000000
  %302 = fmul fast float %301, %280
  %303 = fmul fast float %92, 0x3EF0001000000000
  %304 = fmul fast float %303, %290
  %305 = fadd fast float %86, %64
  %306 = fadd fast float %305, %300
  %307 = fadd fast float %87, %65
  %308 = fadd fast float %307, %302
  %309 = fadd fast float %88, %66
  %310 = fadd fast float %309, %304
  %311 = and i32 %100, 64
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %380, label %313, !dx.controlflow.hints !37

; <label>:313                                     ; preds = %256
  %314 = fadd fast float %258, %96
  %315 = fadd fast float %259, %97
  %316 = fadd fast float %260, %98
  %317 = call float @dx.op.unary.f32(i32 6, float %314)  ; FAbs(value)
  %318 = call float @dx.op.unary.f32(i32 6, float %315)  ; FAbs(value)
  %319 = call float @dx.op.unary.f32(i32 6, float %316)  ; FAbs(value)
  %320 = fcmp fast ogt float %317, 0x3F50624DE0000000
  %321 = fcmp fast ogt float %318, 0x3F50624DE0000000
  %322 = fcmp fast ogt float %319, 0x3F50624DE0000000
  %323 = or i1 %320, %321
  %324 = or i1 %323, %322
  br i1 %324, label %325, label %361, !dx.controlflow.hints !38

; <label>:325                                     ; preds = %313
  %326 = call float @dx.op.dot3.f32(i32 55, float %314, float %315, float %316, float %314, float %315, float %316)  ; Dot3(ax,ay,az,bx,by,bz)
  %327 = call float @dx.op.unary.f32(i32 25, float %326)  ; Rsqrt(value)
  %328 = fmul fast float %327, %314
  %329 = fmul fast float %327, %315
  %330 = fmul fast float %327, %316
  %331 = call float @dx.op.dot3.f32(i32 55, float %328, float %329, float %330, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %332 = fcmp fast olt float %331, 0xBFEFF7CEE0000000
  br i1 %332, label %341, label %333, !dx.controlflow.hints !39

; <label>:333                                     ; preds = %325
  %334 = fcmp fast olt float %331, 0x3FEFF7CEE0000000
  br i1 %334, label %335, label %341, !dx.controlflow.hints !40

; <label>:335                                     ; preds = %333
  %336 = fsub fast float -0.000000e+00, %328
  %337 = call float @dx.op.dot3.f32(i32 55, float %329, float %336, float 0.000000e+00, float %329, float %336, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %338 = call float @dx.op.unary.f32(i32 25, float %337)  ; Rsqrt(value)
  %339 = fmul fast float %338, %329
  %340 = fmul fast float %338, %336
  br label %341

; <label>:341                                     ; preds = %335, %333, %325
  %342 = phi float [ %339, %335 ], [ 1.000000e+00, %333 ], [ -1.000000e+00, %325 ]
  %343 = phi float [ %340, %335 ], [ 0.000000e+00, %333 ], [ 0.000000e+00, %325 ]
  %344 = fmul fast float %343, %330
  %345 = fmul fast float %342, %330
  %346 = fsub fast float -0.000000e+00, %345
  %347 = fmul fast float %342, %329
  %348 = fmul fast float %343, %328
  %349 = fsub fast float %347, %348
  %350 = and i32 %100, 128
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %355, label %352, !dx.controlflow.hints !41

; <label>:352                                     ; preds = %341
  %353 = fsub fast float -0.000000e+00, %342
  %354 = fsub fast float -0.000000e+00, %343
  br label %361

; <label>:355                                     ; preds = %341
  %356 = and i32 %100, 256
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %361, label %358, !dx.controlflow.hints !42

; <label>:358                                     ; preds = %355
  %359 = fsub fast float -0.000000e+00, %344
  %360 = fsub fast float -0.000000e+00, %349
  br label %361

; <label>:361                                     ; preds = %358, %355, %352, %313
  %362 = phi float [ %328, %352 ], [ %342, %358 ], [ %342, %355 ], [ 1.000000e+00, %313 ]
  %363 = phi float [ %353, %352 ], [ %359, %358 ], [ %328, %355 ], [ 0.000000e+00, %313 ]
  %364 = phi float [ %344, %352 ], [ %328, %358 ], [ %344, %355 ], [ 0.000000e+00, %313 ]
  %365 = phi float [ %329, %352 ], [ %343, %358 ], [ %343, %355 ], [ 0.000000e+00, %313 ]
  %366 = phi float [ %354, %352 ], [ %345, %358 ], [ %329, %355 ], [ 1.000000e+00, %313 ]
  %367 = phi float [ %346, %352 ], [ %329, %358 ], [ %346, %355 ], [ 0.000000e+00, %313 ]
  %368 = phi float [ %330, %352 ], [ 0.000000e+00, %358 ], [ 0.000000e+00, %355 ], [ 0.000000e+00, %313 ]
  %369 = phi float [ -0.000000e+00, %352 ], [ %360, %358 ], [ %330, %355 ], [ 0.000000e+00, %313 ]
  %370 = phi float [ %349, %352 ], [ %330, %358 ], [ %349, %355 ], [ 1.000000e+00, %313 ]
  %371 = fmul fast float %362, %306
  %372 = call float @dx.op.tertiary.f32(i32 46, float %308, float %363, float %371)  ; FMad(a,b,c)
  %373 = call float @dx.op.tertiary.f32(i32 46, float %310, float %364, float %372)  ; FMad(a,b,c)
  %374 = fmul fast float %365, %306
  %375 = call float @dx.op.tertiary.f32(i32 46, float %308, float %366, float %374)  ; FMad(a,b,c)
  %376 = call float @dx.op.tertiary.f32(i32 46, float %310, float %367, float %375)  ; FMad(a,b,c)
  %377 = fmul fast float %368, %306
  %378 = call float @dx.op.tertiary.f32(i32 46, float %308, float %369, float %377)  ; FMad(a,b,c)
  %379 = call float @dx.op.tertiary.f32(i32 46, float %310, float %370, float %378)  ; FMad(a,b,c)
  br label %380

; <label>:380                                     ; preds = %361, %256
  %381 = phi float [ %373, %361 ], [ %306, %256 ]
  %382 = phi float [ %376, %361 ], [ %308, %256 ]
  %383 = phi float [ %379, %361 ], [ %310, %256 ]
  %384 = and i32 %76, 4194304
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %386, label %450, !dx.controlflow.hints !43

; <label>:386                                     ; preds = %380
  %387 = fmul fast float %260, %56
  %388 = fmul fast float %259, %57
  %389 = fsub fast float %387, %388
  %390 = fmul fast float %258, %57
  %391 = fmul fast float %260, %55
  %392 = fsub fast float %390, %391
  %393 = fmul fast float %259, %55
  %394 = fmul fast float %258, %56
  %395 = fsub fast float %393, %394
  %396 = fmul fast float %389, 2.000000e+00
  %397 = fmul fast float %392, 2.000000e+00
  %398 = fmul fast float %395, 2.000000e+00
  %399 = fmul fast float %396, %58
  %400 = fmul fast float %397, %58
  %401 = fmul fast float %398, %58
  %402 = fmul fast float %398, %56
  %403 = fmul fast float %397, %57
  %404 = fmul fast float %396, %57
  %405 = fmul fast float %398, %55
  %406 = fmul fast float %397, %55
  %407 = fmul fast float %396, %56
  %408 = fadd fast float %258, %60
  %409 = fadd fast float %408, %402
  %410 = fadd fast float %409, %399
  %411 = fsub fast float %410, %403
  %412 = fadd fast float %259, %61
  %413 = fsub fast float %412, %405
  %414 = fadd fast float %413, %400
  %415 = fadd fast float %414, %404
  %416 = fadd fast float %401, %62
  %417 = fadd fast float %416, %260
  %418 = fsub fast float %417, %407
  %419 = fadd fast float %418, %406
  %420 = fmul fast float %383, %56
  %421 = fmul fast float %382, %57
  %422 = fsub fast float %420, %421
  %423 = fmul fast float %381, %57
  %424 = fmul fast float %383, %55
  %425 = fsub fast float %423, %424
  %426 = fmul fast float %382, %55
  %427 = fmul fast float %381, %56
  %428 = fsub fast float %426, %427
  %429 = fmul fast float %422, 2.000000e+00
  %430 = fmul fast float %425, 2.000000e+00
  %431 = fmul fast float %428, 2.000000e+00
  %432 = fmul fast float %429, %58
  %433 = fmul fast float %430, %58
  %434 = fmul fast float %431, %58
  %435 = fmul fast float %431, %56
  %436 = fmul fast float %430, %57
  %437 = fmul fast float %429, %57
  %438 = fmul fast float %431, %55
  %439 = fmul fast float %430, %55
  %440 = fmul fast float %429, %56
  %441 = fadd fast float %435, %381
  %442 = fadd fast float %441, %432
  %443 = fsub fast float %442, %436
  %444 = fsub fast float %382, %438
  %445 = fadd fast float %444, %433
  %446 = fadd fast float %445, %437
  %447 = fadd fast float %434, %383
  %448 = fsub fast float %447, %440
  %449 = fadd fast float %448, %439
  br label %450

; <label>:450                                     ; preds = %386, %380
  %451 = phi float [ %381, %380 ], [ %443, %386 ]
  %452 = phi float [ %382, %380 ], [ %446, %386 ]
  %453 = phi float [ %383, %380 ], [ %449, %386 ]
  %454 = phi float [ %258, %380 ], [ %411, %386 ]
  %455 = phi float [ %259, %380 ], [ %415, %386 ]
  %456 = phi float [ %260, %380 ], [ %419, %386 ]
  br i1 %385, label %457, label %465, !dx.controlflow.hints !44

; <label>:457                                     ; preds = %450
  %458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %459 = extractvalue %dx.types.CBufRet.f32 %458, 0
  %460 = extractvalue %dx.types.CBufRet.f32 %458, 1
  %461 = extractvalue %dx.types.CBufRet.f32 %458, 2
  %462 = fsub fast float %454, %459
  %463 = fsub fast float %455, %460
  %464 = fsub fast float %456, %461
  br label %465

; <label>:465                                     ; preds = %457, %450
  %466 = phi float [ %454, %450 ], [ %462, %457 ]
  %467 = phi float [ %455, %450 ], [ %463, %457 ]
  %468 = phi float [ %456, %450 ], [ %464, %457 ]
  %469 = bitcast float %466 to i32
  %470 = and i32 %469, -2048
  %471 = bitcast float %467 to i32
  %472 = lshr i32 %471, 21
  %473 = or i32 %472, %470
  %474 = shl i32 %471, 11
  %475 = and i32 %474, -4194304
  %476 = bitcast float %468 to i32
  %477 = lshr i32 %476, 10
  %478 = and i32 %477, 4194302
  %479 = or i32 %478, %475
  %480 = call i32 @dx.op.legacyF32ToF16(i32 130, float 0.000000e+00)  ; LegacyF32ToF16(value)
  %481 = call i32 @dx.op.legacyF32ToF16(i32 130, float %451)  ; LegacyF32ToF16(value)
  %482 = shl i32 %481, 16
  %483 = or i32 %482, %480
  %484 = call i32 @dx.op.legacyF32ToF16(i32 130, float %452)  ; LegacyF32ToF16(value)
  %485 = call i32 @dx.op.legacyF32ToF16(i32 130, float %453)  ; LegacyF32ToF16(value)
  %486 = shl i32 %485, 16
  %487 = or i32 %486, %484
  %488 = shl i32 %125, 16
  %489 = or i32 %298, %488
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %103, i32 0, i32 %473, i32 %479, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %103, i32 8, i32 %483, i32 %487, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %103, i32 16, i32 %489, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %490

; <label>:490                                     ; preds = %465, %42
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.legacyF32ToF16(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #1

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
!dx.entryPoints = !{!23}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !17, !20, null}
!5 = !{!6, !7, !9, !11, !13, !15, !16}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %"class.StructuredBuffer<FxEmitterInstancePerFrameData>"* undef, !"", i32 0, i32 2, i32 1, i32 12, i32 0, !8}
!8 = !{i32 1, i32 80}
!9 = !{i32 2, %"class.StructuredBuffer<FxEmitterDefPerFrameData>"* undef, !"", i32 0, i32 3, i32 1, i32 12, i32 0, !10}
!10 = !{i32 1, i32 8}
!11 = !{i32 3, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 4, i32 1, i32 12, i32 0, !12}
!12 = !{i32 1, i32 4}
!13 = !{i32 4, %"class.StructuredBuffer<FxParticleCounter>"* undef, !"", i32 0, i32 6, i32 1, i32 12, i32 0, !14}
!14 = !{i32 1, i32 16}
!15 = !{i32 5, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 8, i32 1, i32 12, i32 0, !12}
!16 = !{i32 6, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i32 0, !12}
!17 = !{!18}
!18 = !{i32 0, %"class.RWStructuredBuffer<FxParticle>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i1 false, i1 false, i1 false, !19}
!19 = !{i32 1, i32 20}
!20 = !{!21, !22}
!21 = !{i32 0, %hostlayout.FxFrameConsts_decl* undef, !"", i32 0, i32 0, i32 1, i32 464, null}
!22 = !{i32 1, %FxEmitConsts_decl* undef, !"", i32 0, i32 1, i32 1, i32 16, null}
!23 = !{void ()* @cs_fx_emit_particles, !"cs_fx_emit_particles", null, !4, !24}
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
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}

