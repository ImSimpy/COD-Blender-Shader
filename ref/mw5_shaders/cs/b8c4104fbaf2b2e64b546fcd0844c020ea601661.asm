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
; shader hash: afb5ed5968728c015e5497fa6e3e58c1
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
;   [88 x i8] (type annotation not present)
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
;                                   texture    byte         r/o      T2             t1     1
;                                   texture    byte         r/o      T3             t2     1
;                                   texture  struct         r/o      T4             t8     1
;                                   texture  struct         r/o      T5             t9     1
;                                   texture  struct         r/o      T6            t10     1
;                                   texture    byte         r/o      T7            t11     1
;                                   texture    byte         r/o      T8            t12     1
;                                       UAV    byte         r/w      U0             u0     1
;                                       UAV    byte         r/w      U1             u1     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%"class.StructuredBuffer<unsigned int>" = type { i32 }
%"class.StructuredBuffer<ReactiveMotionModelInfoGpu>" = type { %struct.ReactiveMotionModelInfoGpu }
%struct.ReactiveMotionModelInfoGpu = type { <3 x float>, float, <3 x float>, i32, <3 x float>, i32, i32, i32, i32, i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.StructuredBuffer<VectorFieldGpu>" = type { %struct.VectorFieldGpu }
%struct.VectorFieldGpu = type { <3 x float>, float, <3 x float>, float, <3 x float>, float, <3 x float>, i32, <3 x float>, <3 x float> }
%"class.StructuredBuffer<VectorSubFieldGpu>" = type { %struct.VectorSubFieldGpu }
%struct.VectorSubFieldGpu = type { <3 x float>, i32, <3 x float>, i32 }
%"class.StructuredBuffer<vector<unsigned int, 4> >" = type { <4 x i32> }
%struct.RWByteAddressBuffer = type { i32 }
%ReactiveMotionCalcConsts = type { <3 x float>, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [30 x <4 x i32>] }

define void @cs_reactivemotion_calc_models_indirect() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %14 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 0, i32 0)  ; BufferLoad(srv,index,wot)
  %15 = extractvalue %dx.types.ResRet.i32 %14, 0
  %16 = icmp ult i32 %13, %15
  br i1 %16, label %17, label %2412, !dx.controlflow.hints !28

; <label>:17                                      ; preds = %0
  %18 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 2, i32 0)  ; BufferLoad(srv,index,wot)
  %19 = extractvalue %dx.types.ResRet.i32 %18, 0
  %20 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %13, i32 12)  ; BufferLoad(srv,index,wot)
  %21 = extractvalue %dx.types.ResRet.f32 %20, 0
  %22 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %13, i32 16)  ; BufferLoad(srv,index,wot)
  %23 = extractvalue %dx.types.ResRet.f32 %22, 0
  %24 = extractvalue %dx.types.ResRet.f32 %22, 1
  %25 = extractvalue %dx.types.ResRet.f32 %22, 2
  %26 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %13, i32 28)  ; BufferLoad(srv,index,wot)
  %27 = extractvalue %dx.types.ResRet.i32 %26, 0
  %28 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %13, i32 32)  ; BufferLoad(srv,index,wot)
  %29 = extractvalue %dx.types.ResRet.f32 %28, 0
  %30 = extractvalue %dx.types.ResRet.f32 %28, 1
  %31 = extractvalue %dx.types.ResRet.f32 %28, 2
  %32 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %13, i32 44)  ; BufferLoad(srv,index,wot)
  %33 = extractvalue %dx.types.ResRet.i32 %32, 0
  %34 = and i32 %33, 536870912
  %35 = icmp ne i32 %34, 0
  %36 = and i32 %33, 1073741824
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %35, true
  %39 = icmp sgt i32 %33, -1
  %40 = and i1 %39, %38
  %41 = sub i32 %13, %19
  %42 = select i1 %37, i32 %41, i32 -1
  %43 = and i32 %33, 16777215
  %44 = icmp eq i32 %43, 16777215
  br i1 %44, label %138, label %45, !dx.controlflow.hints !29

; <label>:45                                      ; preds = %17
  %46 = icmp eq i32 %42, -1
  br i1 %46, label %60, label %47, !dx.controlflow.hints !30

; <label>:47                                      ; preds = %45
  %48 = mul i32 %42, 24
  %49 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %48, i32 undef)  ; BufferLoad(srv,index,wot)
  %50 = extractvalue %dx.types.ResRet.f32 %49, 0
  %51 = extractvalue %dx.types.ResRet.f32 %49, 1
  %52 = extractvalue %dx.types.ResRet.f32 %49, 2
  %53 = add i32 %48, 12
  %54 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %53, i32 undef)  ; BufferLoad(srv,index,wot)
  %55 = extractvalue %dx.types.ResRet.i32 %54, 0
  %56 = extractvalue %dx.types.ResRet.i32 %54, 1
  %57 = add i32 %48, 20
  %58 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %57, i32 undef)  ; BufferLoad(srv,index,wot)
  %59 = extractvalue %dx.types.ResRet.i32 %58, 0
  br label %73

; <label>:60                                      ; preds = %45
  %61 = mul nuw nsw i32 %43, 24
  %62 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %61, i32 undef)  ; BufferLoad(srv,index,wot)
  %63 = extractvalue %dx.types.ResRet.f32 %62, 0
  %64 = extractvalue %dx.types.ResRet.f32 %62, 1
  %65 = extractvalue %dx.types.ResRet.f32 %62, 2
  %66 = add nuw nsw i32 %61, 12
  %67 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %66, i32 undef)  ; BufferLoad(srv,index,wot)
  %68 = extractvalue %dx.types.ResRet.i32 %67, 0
  %69 = extractvalue %dx.types.ResRet.i32 %67, 1
  %70 = add nuw nsw i32 %61, 20
  %71 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %70, i32 undef)  ; BufferLoad(srv,index,wot)
  %72 = extractvalue %dx.types.ResRet.i32 %71, 0
  br label %73

; <label>:73                                      ; preds = %60, %47
  %74 = phi i32 [ %59, %47 ], [ %72, %60 ]
  %75 = phi i32 [ %55, %47 ], [ %68, %60 ]
  %76 = phi i32 [ %56, %47 ], [ %69, %60 ]
  %77 = phi float [ %50, %47 ], [ %63, %60 ]
  %78 = phi float [ %51, %47 ], [ %64, %60 ]
  %79 = phi float [ %52, %47 ], [ %65, %60 ]
  %80 = bitcast float %77 to i32
  %81 = bitcast float %78 to i32
  %82 = bitcast float %79 to i32
  %83 = sitofp i32 %80 to float
  %84 = sitofp i32 %81 to float
  %85 = sitofp i32 %82 to float
  %86 = fmul fast float %83, 0x3F30000000000000
  %87 = fmul fast float %84, 0x3F30000000000000
  %88 = fmul fast float %85, 0x3F30000000000000
  %89 = and i32 %75, 65535
  %90 = uitofp i32 %89 to float
  %91 = lshr i32 %75, 16
  %92 = uitofp i32 %91 to float
  %93 = and i32 %76, 65535
  %94 = uitofp i32 %93 to float
  %95 = lshr i32 %76, 16
  %96 = uitofp i32 %95 to float
  %97 = fmul fast float %90, 0x3F00001000000000
  %98 = fmul fast float %92, 0x3F00001000000000
  %99 = fmul fast float %94, 0x3F00001000000000
  %100 = fmul fast float %96, 0x3F00001000000000
  %101 = fadd fast float %97, -1.000000e+00
  %102 = fadd fast float %98, -1.000000e+00
  %103 = fadd fast float %99, -1.000000e+00
  %104 = fadd fast float %100, -1.000000e+00
  %105 = and i32 %74, 65535
  %106 = call float @dx.op.legacyF16ToF32(i32 131, i32 %105)  ; LegacyF16ToF32(value)
  %107 = fmul fast float %101, %101
  %108 = fmul fast float %102, %102
  %109 = fmul fast float %103, %103
  %110 = fmul fast float %104, %104
  %111 = fadd fast float %107, %108
  %112 = fadd fast float %111, %109
  %113 = fadd fast float %112, %110
  %114 = fdiv fast float 2.000000e+00, %113
  %115 = fmul fast float %114, %101
  %116 = fmul fast float %115, %102
  %117 = fmul fast float %115, %103
  %118 = fmul fast float %115, %104
  %119 = fmul fast float %114, %102
  %120 = fmul fast float %119, %103
  %121 = fmul fast float %119, %104
  %122 = fmul fast float %104, %103
  %123 = fmul fast float %122, %114
  %124 = fadd fast float %109, %108
  %125 = fmul fast float %124, %114
  %126 = fsub fast float 1.000000e+00, %125
  %127 = fadd fast float %116, %123
  %128 = fsub fast float %117, %121
  %129 = fsub fast float %116, %123
  %130 = fadd fast float %109, %107
  %131 = fmul fast float %130, %114
  %132 = fsub fast float 1.000000e+00, %131
  %133 = fadd fast float %120, %118
  %134 = fadd fast float %117, %121
  %135 = fsub fast float %120, %118
  %136 = fmul fast float %114, %111
  %137 = fsub fast float 1.000000e+00, %136
  br label %138

; <label>:138                                     ; preds = %73, %17
  %139 = phi float [ %126, %73 ], [ 1.000000e+00, %17 ]
  %140 = phi float [ %129, %73 ], [ 0.000000e+00, %17 ]
  %141 = phi float [ %134, %73 ], [ 0.000000e+00, %17 ]
  %142 = phi float [ %86, %73 ], [ 0.000000e+00, %17 ]
  %143 = phi float [ %127, %73 ], [ 0.000000e+00, %17 ]
  %144 = phi float [ %132, %73 ], [ 1.000000e+00, %17 ]
  %145 = phi float [ %135, %73 ], [ 0.000000e+00, %17 ]
  %146 = phi float [ %87, %73 ], [ 0.000000e+00, %17 ]
  %147 = phi float [ %128, %73 ], [ 0.000000e+00, %17 ]
  %148 = phi float [ %133, %73 ], [ 0.000000e+00, %17 ]
  %149 = phi float [ %137, %73 ], [ 1.000000e+00, %17 ]
  %150 = phi float [ %88, %73 ], [ 0.000000e+00, %17 ]
  %151 = phi float [ %106, %73 ], [ 1.000000e+00, %17 ]
  %152 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %153 = extractvalue %dx.types.CBufRet.i32 %152, 1
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %2274, label %155, !dx.controlflow.hints !31

; <label>:155                                     ; preds = %138
  br i1 %35, label %156, label %1164, !dx.controlflow.hints !32

; <label>:156                                     ; preds = %155
  %157 = call float @dx.op.binary.f32(i32 35, float %23, float %24)  ; FMax(a,b)
  %158 = call float @dx.op.binary.f32(i32 36, float %157, float %25)  ; FMin(a,b)
  %159 = call float @dx.op.binary.f32(i32 36, float %23, float %24)  ; FMin(a,b)
  %160 = call float @dx.op.binary.f32(i32 35, float %159, float %158)  ; FMax(a,b)
  %161 = call float @dx.op.binary.f32(i32 35, float %24, float %25)  ; FMax(a,b)
  %162 = call float @dx.op.binary.f32(i32 35, float %23, float %161)  ; FMax(a,b)
  %163 = fmul fast float %160, %151
  %164 = fsub fast float %162, %163
  %165 = fcmp fast oeq float %23, %162
  br i1 %165, label %166, label %169, !dx.controlflow.hints !33

; <label>:166                                     ; preds = %156
  %167 = fsub fast float %29, %164
  %168 = fadd fast float %164, %29
  br label %177

; <label>:169                                     ; preds = %156
  %170 = fcmp fast oeq float %24, %162
  br i1 %170, label %171, label %174, !dx.controlflow.hints !34

; <label>:171                                     ; preds = %169
  %172 = fsub fast float %30, %164
  %173 = fadd fast float %164, %30
  br label %177

; <label>:174                                     ; preds = %169
  %175 = fsub fast float %31, %164
  %176 = fadd fast float %164, %31
  br label %177

; <label>:177                                     ; preds = %174, %171, %166
  %178 = phi float [ %167, %166 ], [ %29, %171 ], [ %29, %174 ]
  %179 = phi float [ %30, %166 ], [ %172, %171 ], [ %30, %174 ]
  %180 = phi float [ %31, %166 ], [ %31, %171 ], [ %175, %174 ]
  %181 = phi float [ %168, %166 ], [ %29, %171 ], [ %29, %174 ]
  %182 = phi float [ %30, %166 ], [ %173, %171 ], [ %30, %174 ]
  %183 = phi float [ %31, %166 ], [ %31, %171 ], [ %176, %174 ]
  %184 = fmul fast float %178, %139
  %185 = call float @dx.op.tertiary.f32(i32 46, float %143, float %179, float %184)  ; FMad(a,b,c)
  %186 = call float @dx.op.tertiary.f32(i32 46, float %147, float %180, float %185)  ; FMad(a,b,c)
  %187 = fmul fast float %178, %140
  %188 = call float @dx.op.tertiary.f32(i32 46, float %144, float %179, float %187)  ; FMad(a,b,c)
  %189 = call float @dx.op.tertiary.f32(i32 46, float %148, float %180, float %188)  ; FMad(a,b,c)
  %190 = fmul fast float %178, %141
  %191 = call float @dx.op.tertiary.f32(i32 46, float %145, float %179, float %190)  ; FMad(a,b,c)
  %192 = call float @dx.op.tertiary.f32(i32 46, float %149, float %180, float %191)  ; FMad(a,b,c)
  %193 = fmul fast float %181, %139
  %194 = call float @dx.op.tertiary.f32(i32 46, float %143, float %182, float %193)  ; FMad(a,b,c)
  %195 = call float @dx.op.tertiary.f32(i32 46, float %147, float %183, float %194)  ; FMad(a,b,c)
  %196 = fmul fast float %181, %140
  %197 = call float @dx.op.tertiary.f32(i32 46, float %144, float %182, float %196)  ; FMad(a,b,c)
  %198 = call float @dx.op.tertiary.f32(i32 46, float %148, float %183, float %197)  ; FMad(a,b,c)
  %199 = fmul fast float %181, %141
  %200 = call float @dx.op.tertiary.f32(i32 46, float %145, float %182, float %199)  ; FMad(a,b,c)
  %201 = call float @dx.op.tertiary.f32(i32 46, float %149, float %183, float %200)  ; FMad(a,b,c)
  %202 = fsub fast float %195, %186
  %203 = fsub fast float %198, %189
  %204 = fsub fast float %201, %192
  %205 = call float @dx.op.dot3.f32(i32 55, float %202, float %203, float %204, float %202, float %203, float %204)  ; Dot3(ax,ay,az,bx,by,bz)
  %206 = fcmp fast ogt float %205, 0x3EB0C6F7C0000000
  br i1 %206, label %207, label %213, !dx.controlflow.hints !35

; <label>:207                                     ; preds = %177
  %208 = call float @dx.op.unary.f32(i32 24, float %205)  ; Sqrt(value)
  %209 = fdiv fast float 1.000000e+00, %208
  %210 = fmul fast float %209, %202
  %211 = fmul fast float %209, %203
  %212 = fmul fast float %209, %204
  br label %213

; <label>:213                                     ; preds = %207, %177
  %214 = phi float [ %210, %207 ], [ %202, %177 ]
  %215 = phi float [ %211, %207 ], [ %203, %177 ]
  %216 = phi float [ %212, %207 ], [ %204, %177 ]
  %217 = phi float [ %208, %207 ], [ %205, %177 ]
  %218 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %217)  ; FMax(a,b)
  %219 = fadd fast float %186, %142
  %220 = fadd fast float %189, %146
  %221 = fadd fast float %192, %150
  %222 = fptosi float %142 to i32
  %223 = fptosi float %146 to i32
  %224 = add i32 %222, 130048
  %225 = add i32 %223, 130048
  %226 = ashr i32 %224, 10
  %227 = ashr i32 %225, 10
  %228 = or i32 %227, %226
  %229 = icmp ult i32 %228, 256
  br i1 %229, label %230, label %1154, !dx.controlflow.hints !36

; <label>:230                                     ; preds = %213
  %231 = shl nsw i32 %226, 8
  %232 = add nsw i32 %227, %231
  %233 = and i32 %232, -4
  %234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %233, i32 undef)  ; BufferLoad(srv,index,wot)
  %235 = extractvalue %dx.types.ResRet.i32 %234, 0
  %236 = shl nsw i32 %227, 3
  %237 = and i32 %236, 24
  %238 = lshr i32 %235, %237
  %239 = and i32 %238, 255
  %240 = shl i32 %232, 3
  %241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %240, i32 undef)  ; BufferLoad(srv,index,wot)
  %242 = extractvalue %dx.types.ResRet.i32 %241, 0
  %243 = extractvalue %dx.types.ResRet.i32 %241, 1
  %244 = icmp ult i32 %239, 4
  br i1 %244, label %245, label %250, !dx.controlflow.hints !37

; <label>:245                                     ; preds = %230
  %246 = shl i32 %238, 3
  %247 = and i32 %246, 24
  %248 = shl i32 -1, %247
  %249 = or i32 %248, %242
  br label %257

; <label>:250                                     ; preds = %230
  %251 = icmp ult i32 %239, 8
  br i1 %251, label %252, label %257, !dx.controlflow.hints !38

; <label>:252                                     ; preds = %250
  %253 = shl i32 %238, 3
  %254 = and i32 %253, 24
  %255 = shl i32 -1, %254
  %256 = or i32 %255, %243
  br label %257

; <label>:257                                     ; preds = %252, %250, %245
  %258 = phi i32 [ %249, %245 ], [ %242, %252 ], [ %242, %250 ]
  %259 = phi i32 [ -1, %245 ], [ %256, %252 ], [ %243, %250 ]
  %260 = icmp eq i32 %239, 0
  br i1 %260, label %1154, label %261, !dx.controlflow.hints !39

; <label>:261                                     ; preds = %257
  br label %262

; <label>:262                                     ; preds = %673, %261
  %263 = phi i32 [ %674, %673 ], [ 0, %261 ]
  %264 = phi float [ %675, %673 ], [ 0.000000e+00, %261 ]
  %265 = phi float [ %676, %673 ], [ 0.000000e+00, %261 ]
  %266 = phi float [ %677, %673 ], [ 0.000000e+00, %261 ]
  %267 = phi float [ %678, %673 ], [ 0.000000e+00, %261 ]
  %268 = phi float [ %679, %673 ], [ 0.000000e+00, %261 ]
  %269 = phi float [ %680, %673 ], [ 0.000000e+00, %261 ]
  %270 = phi i32 [ %681, %673 ], [ 0, %261 ]
  %271 = phi i32 [ %682, %673 ], [ 0, %261 ]
  %272 = icmp ult i32 %271, %239
  br i1 %272, label %273, label %684, !dx.controlflow.hints !40

; <label>:273                                     ; preds = %262
  %274 = shl i32 %271, 3
  %275 = lshr i32 %258, %274
  %276 = and i32 %275, 255
  %277 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %276, i32 0)  ; BufferLoad(srv,index,wot)
  %278 = extractvalue %dx.types.ResRet.f32 %277, 0
  %279 = extractvalue %dx.types.ResRet.f32 %277, 1
  %280 = extractvalue %dx.types.ResRet.f32 %277, 2
  %281 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %276, i32 16)  ; BufferLoad(srv,index,wot)
  %282 = extractvalue %dx.types.ResRet.f32 %281, 0
  %283 = extractvalue %dx.types.ResRet.f32 %281, 1
  %284 = extractvalue %dx.types.ResRet.f32 %281, 2
  %285 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %276, i32 28)  ; BufferLoad(srv,index,wot)
  %286 = extractvalue %dx.types.ResRet.f32 %285, 0
  %287 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %276, i32 32)  ; BufferLoad(srv,index,wot)
  %288 = extractvalue %dx.types.ResRet.f32 %287, 0
  %289 = extractvalue %dx.types.ResRet.f32 %287, 1
  %290 = extractvalue %dx.types.ResRet.f32 %287, 2
  %291 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %276, i32 44)  ; BufferLoad(srv,index,wot)
  %292 = extractvalue %dx.types.ResRet.f32 %291, 0
  %293 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %276, i32 48)  ; BufferLoad(srv,index,wot)
  %294 = extractvalue %dx.types.ResRet.f32 %293, 0
  %295 = extractvalue %dx.types.ResRet.f32 %293, 1
  %296 = extractvalue %dx.types.ResRet.f32 %293, 2
  %297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %276, i32 60)  ; BufferLoad(srv,index,wot)
  %298 = extractvalue %dx.types.ResRet.i32 %297, 0
  %299 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %276, i32 64)  ; BufferLoad(srv,index,wot)
  %300 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %276, i32 76)  ; BufferLoad(srv,index,wot)
  %301 = and i32 %298, 16777216
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %673, label %303, !dx.controlflow.hints !41

; <label>:303                                     ; preds = %273
  %304 = extractvalue %dx.types.ResRet.f32 %300, 2
  %305 = extractvalue %dx.types.ResRet.f32 %300, 1
  %306 = extractvalue %dx.types.ResRet.f32 %300, 0
  %307 = extractvalue %dx.types.ResRet.f32 %299, 2
  %308 = extractvalue %dx.types.ResRet.f32 %299, 1
  %309 = extractvalue %dx.types.ResRet.f32 %299, 0
  %310 = fsub fast float %306, %309
  %311 = fsub fast float %305, %308
  %312 = fsub fast float %304, %307
  %313 = call float @dx.op.binary.f32(i32 35, float %311, float %312)  ; FMax(a,b)
  %314 = call float @dx.op.binary.f32(i32 35, float %310, float %313)  ; FMax(a,b)
  %315 = fmul fast float %292, 5.000000e-01
  %316 = fmul fast float %315, %314
  %317 = fadd fast float %316, %163
  %318 = fsub fast float %294, %219
  %319 = fsub fast float %295, %220
  %320 = fsub fast float %296, %221
  %321 = call float @dx.op.dot3.f32(i32 55, float %318, float %319, float %320, float %214, float %215, float %216)  ; Dot3(ax,ay,az,bx,by,bz)
  %322 = fsub fast float -0.000000e+00, %317
  %323 = fcmp fast olt float %321, %322
  %324 = fadd fast float %317, %218
  %325 = fcmp fast ogt float %321, %324
  %326 = or i1 %323, %325
  br i1 %326, label %336, label %327, !dx.controlflow.hints !42

; <label>:327                                     ; preds = %303
  %328 = call float @dx.op.binary.f32(i32 35, float %321, float 0.000000e+00)  ; FMax(a,b)
  %329 = call float @dx.op.binary.f32(i32 36, float %328, float %218)  ; FMin(a,b)
  %330 = fmul fast float %329, %214
  %331 = fmul fast float %329, %215
  %332 = fmul fast float %329, %216
  %333 = fadd fast float %330, %219
  %334 = fadd fast float %331, %220
  %335 = fadd fast float %332, %221
  br label %336

; <label>:336                                     ; preds = %327, %303
  %337 = phi i1 [ true, %327 ], [ false, %303 ]
  %338 = phi float [ %333, %327 ], [ 0.000000e+00, %303 ]
  %339 = phi float [ %334, %327 ], [ 0.000000e+00, %303 ]
  %340 = phi float [ %335, %327 ], [ 0.000000e+00, %303 ]
  br i1 %337, label %341, label %673, !dx.controlflow.hints !43

; <label>:341                                     ; preds = %336
  %342 = and i32 %298, 4095
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %656, label %344

; <label>:344                                     ; preds = %341
  %345 = and i32 %298, 4095
  br label %346

; <label>:346                                     ; preds = %645, %344
  %347 = phi i32 [ %646, %645 ], [ 0, %344 ]
  %348 = phi float [ %647, %645 ], [ 0.000000e+00, %344 ]
  %349 = phi float [ %648, %645 ], [ 0.000000e+00, %344 ]
  %350 = phi float [ %649, %645 ], [ 0.000000e+00, %344 ]
  %351 = phi float [ %650, %645 ], [ 0.000000e+00, %344 ]
  %352 = phi float [ %651, %645 ], [ 0.000000e+00, %344 ]
  %353 = phi float [ %652, %645 ], [ 0.000000e+00, %344 ]
  %354 = phi i32 [ %653, %645 ], [ 0, %344 ]
  %355 = lshr i32 %298, 12
  %356 = and i32 %355, 4095
  %357 = add nuw nsw i32 %354, %356
  %358 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %357, i32 0)  ; BufferLoad(srv,index,wot)
  %359 = extractvalue %dx.types.ResRet.f32 %358, 0
  %360 = extractvalue %dx.types.ResRet.f32 %358, 1
  %361 = extractvalue %dx.types.ResRet.f32 %358, 2
  %362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %357, i32 12)  ; BufferLoad(srv,index,wot)
  %363 = extractvalue %dx.types.ResRet.i32 %362, 0
  %364 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %357, i32 16)  ; BufferLoad(srv,index,wot)
  %365 = extractvalue %dx.types.ResRet.f32 %364, 0
  %366 = extractvalue %dx.types.ResRet.f32 %364, 1
  %367 = extractvalue %dx.types.ResRet.f32 %364, 2
  %368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %357, i32 28)  ; BufferLoad(srv,index,wot)
  %369 = extractvalue %dx.types.ResRet.i32 %368, 0
  %370 = icmp slt i32 %369, 0
  %371 = fsub fast float %338, %294
  %372 = fsub fast float %339, %295
  %373 = fsub fast float %340, %296
  %374 = fmul fast float %371, %278
  %375 = call float @dx.op.tertiary.f32(i32 46, float %279, float %372, float %374)  ; FMad(a,b,c)
  %376 = call float @dx.op.tertiary.f32(i32 46, float %280, float %373, float %375)  ; FMad(a,b,c)
  %377 = fmul fast float %371, %282
  %378 = call float @dx.op.tertiary.f32(i32 46, float %283, float %372, float %377)  ; FMad(a,b,c)
  %379 = call float @dx.op.tertiary.f32(i32 46, float %284, float %373, float %378)  ; FMad(a,b,c)
  %380 = fmul fast float %371, %288
  %381 = call float @dx.op.tertiary.f32(i32 46, float %289, float %372, float %380)  ; FMad(a,b,c)
  %382 = call float @dx.op.tertiary.f32(i32 46, float %290, float %373, float %381)  ; FMad(a,b,c)
  %383 = fmul fast float %359, %292
  %384 = fmul fast float %360, %292
  %385 = fmul fast float %361, %292
  %386 = fmul fast float %383, 5.000000e-01
  %387 = fmul fast float %384, 5.000000e-01
  %388 = fmul fast float %385, 5.000000e-01
  %389 = fadd fast float %386, 0xBF50624DE0000000
  %390 = fadd fast float %387, 0xBF50624DE0000000
  %391 = fadd fast float %388, 0xBF50624DE0000000
  %392 = fcmp fast ogt float %376, %389
  %393 = fcmp fast ogt float %379, %390
  %394 = fcmp fast ogt float %382, %391
  %395 = or i1 %392, %393
  %396 = or i1 %395, %394
  br i1 %370, label %397, label %424, !dx.controlflow.hints !44

; <label>:397                                     ; preds = %346
  %398 = fsub fast float 0x3F50624DE0000000, %386
  %399 = fsub fast float 0x3F50624DE0000000, %387
  %400 = fsub fast float 0x3F50624DE0000000, %388
  %401 = fcmp fast olt float %376, %398
  %402 = fcmp fast olt float %379, %399
  %403 = fcmp fast olt float %382, %400
  %404 = or i1 %401, %402
  %405 = or i1 %404, %403
  %406 = or i1 %396, %405
  br i1 %406, label %626, label %407, !dx.controlflow.hints !45

; <label>:407                                     ; preds = %397
  %408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %363, i32 0)  ; BufferLoad(srv,index,wot)
  %409 = extractvalue %dx.types.ResRet.i32 %408, 0
  %410 = extractvalue %dx.types.ResRet.i32 %408, 1
  %411 = extractvalue %dx.types.ResRet.i32 %408, 2
  %412 = bitcast i32 %409 to float
  %413 = bitcast i32 %410 to float
  %414 = bitcast i32 %411 to float
  %415 = fmul fast float %412, %278
  %416 = call float @dx.op.tertiary.f32(i32 46, float %282, float %413, float %415)  ; FMad(a,b,c)
  %417 = call float @dx.op.tertiary.f32(i32 46, float %288, float %414, float %416)  ; FMad(a,b,c)
  %418 = fmul fast float %412, %279
  %419 = call float @dx.op.tertiary.f32(i32 46, float %283, float %413, float %418)  ; FMad(a,b,c)
  %420 = call float @dx.op.tertiary.f32(i32 46, float %289, float %414, float %419)  ; FMad(a,b,c)
  %421 = fmul fast float %412, %280
  %422 = call float @dx.op.tertiary.f32(i32 46, float %284, float %413, float %421)  ; FMad(a,b,c)
  %423 = call float @dx.op.tertiary.f32(i32 46, float %290, float %414, float %422)  ; FMad(a,b,c)
  br label %626

; <label>:424                                     ; preds = %346
  %425 = fmul fast float %383, -5.000000e-01
  %426 = fmul fast float %384, -5.000000e-01
  %427 = fmul fast float %385, -5.000000e-01
  %428 = fadd fast float %425, 0x3F50624DE0000000
  %429 = fadd fast float %426, 0x3F50624DE0000000
  %430 = fadd fast float %427, 0x3F50624DE0000000
  %431 = fcmp fast olt float %376, %428
  %432 = fcmp fast olt float %379, %429
  %433 = fcmp fast olt float %382, %430
  %434 = or i1 %431, %432
  %435 = or i1 %434, %433
  %436 = or i1 %396, %435
  br i1 %436, label %626, label %437, !dx.controlflow.hints !45

; <label>:437                                     ; preds = %424
  %438 = and i32 %369, 1023
  %439 = lshr i32 %369, 10
  %440 = and i32 %439, 1023
  %441 = lshr i32 %369, 20
  %442 = and i32 %441, 1023
  %443 = add nuw nsw i32 %438, 1
  %444 = add nuw nsw i32 %440, 1
  %445 = fsub fast float %376, %425
  %446 = fsub fast float %379, %426
  %447 = fsub fast float %382, %427
  %448 = fmul fast float %365, %292
  %449 = fmul fast float %366, %292
  %450 = fmul fast float %367, %292
  %451 = fdiv fast float 1.000000e+00, %448
  %452 = fdiv fast float 1.000000e+00, %449
  %453 = fdiv fast float 1.000000e+00, %450
  %454 = fmul fast float %451, %445
  %455 = fmul fast float %452, %446
  %456 = fmul fast float %453, %447
  %457 = call float @dx.op.unary.f32(i32 27, float %454)  ; Round_ni(value)
  %458 = call float @dx.op.unary.f32(i32 27, float %455)  ; Round_ni(value)
  %459 = call float @dx.op.unary.f32(i32 27, float %456)  ; Round_ni(value)
  %460 = fptosi float %457 to i32
  %461 = fptosi float %458 to i32
  %462 = fptosi float %459 to i32
  %463 = call i32 @dx.op.binary.i32(i32 37, i32 %460, i32 0)  ; IMax(a,b)
  %464 = call i32 @dx.op.binary.i32(i32 37, i32 %461, i32 0)  ; IMax(a,b)
  %465 = call i32 @dx.op.binary.i32(i32 37, i32 %462, i32 0)  ; IMax(a,b)
  %466 = call i32 @dx.op.binary.i32(i32 38, i32 %463, i32 %438)  ; IMin(a,b)
  %467 = call i32 @dx.op.binary.i32(i32 38, i32 %464, i32 %440)  ; IMin(a,b)
  %468 = call i32 @dx.op.binary.i32(i32 38, i32 %465, i32 %442)  ; IMin(a,b)
  %469 = call float @dx.op.unary.f32(i32 22, float %454)  ; Frc(value)
  %470 = call float @dx.op.unary.f32(i32 22, float %455)  ; Frc(value)
  %471 = call float @dx.op.unary.f32(i32 22, float %456)  ; Frc(value)
  %472 = fsub fast float 1.000000e+00, %470
  %473 = fsub fast float 1.000000e+00, %471
  %474 = fmul fast float %473, %472
  %475 = fmul fast float %472, %471
  %476 = fmul fast float %473, %470
  %477 = fmul fast float %471, %470
  %478 = fsub fast float 1.000000e+00, %469
  %479 = fmul fast float %474, %478
  %480 = fmul fast float %475, %478
  %481 = fmul fast float %476, %478
  %482 = fmul fast float %477, %478
  %483 = fmul fast float %474, %469
  %484 = fmul fast float %475, %469
  %485 = fmul fast float %476, %469
  %486 = fmul fast float %477, %469
  %487 = call i32 @dx.op.binary.i32(i32 40, i32 %466, i32 %438)  ; UMin(a,b)
  %488 = call i32 @dx.op.binary.i32(i32 40, i32 %467, i32 %440)  ; UMin(a,b)
  %489 = call i32 @dx.op.binary.i32(i32 40, i32 %468, i32 %442)  ; UMin(a,b)
  %490 = mul i32 %489, %444
  %491 = add i32 %490, %488
  %492 = mul i32 %491, %443
  %493 = add i32 %487, %363
  %494 = add i32 %493, %492
  %495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %494, i32 0)  ; BufferLoad(srv,index,wot)
  %496 = extractvalue %dx.types.ResRet.i32 %495, 0
  %497 = extractvalue %dx.types.ResRet.i32 %495, 1
  %498 = extractvalue %dx.types.ResRet.i32 %495, 2
  %499 = bitcast i32 %496 to float
  %500 = bitcast i32 %497 to float
  %501 = bitcast i32 %498 to float
  %502 = add i32 %468, 1
  %503 = call i32 @dx.op.binary.i32(i32 40, i32 %502, i32 %442)  ; UMin(a,b)
  %504 = mul i32 %503, %444
  %505 = add i32 %504, %488
  %506 = mul i32 %505, %443
  %507 = add i32 %493, %506
  %508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %507, i32 0)  ; BufferLoad(srv,index,wot)
  %509 = extractvalue %dx.types.ResRet.i32 %508, 0
  %510 = extractvalue %dx.types.ResRet.i32 %508, 1
  %511 = extractvalue %dx.types.ResRet.i32 %508, 2
  %512 = bitcast i32 %509 to float
  %513 = bitcast i32 %510 to float
  %514 = bitcast i32 %511 to float
  %515 = add i32 %467, 1
  %516 = call i32 @dx.op.binary.i32(i32 40, i32 %515, i32 %440)  ; UMin(a,b)
  %517 = add i32 %490, %516
  %518 = mul i32 %517, %443
  %519 = add i32 %493, %518
  %520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %519, i32 0)  ; BufferLoad(srv,index,wot)
  %521 = extractvalue %dx.types.ResRet.i32 %520, 0
  %522 = extractvalue %dx.types.ResRet.i32 %520, 1
  %523 = extractvalue %dx.types.ResRet.i32 %520, 2
  %524 = bitcast i32 %521 to float
  %525 = bitcast i32 %522 to float
  %526 = bitcast i32 %523 to float
  %527 = add i32 %504, %516
  %528 = mul i32 %527, %443
  %529 = add i32 %493, %528
  %530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %529, i32 0)  ; BufferLoad(srv,index,wot)
  %531 = extractvalue %dx.types.ResRet.i32 %530, 0
  %532 = extractvalue %dx.types.ResRet.i32 %530, 1
  %533 = extractvalue %dx.types.ResRet.i32 %530, 2
  %534 = bitcast i32 %531 to float
  %535 = bitcast i32 %532 to float
  %536 = bitcast i32 %533 to float
  %537 = add i32 %466, 1
  %538 = call i32 @dx.op.binary.i32(i32 40, i32 %537, i32 %438)  ; UMin(a,b)
  %539 = add i32 %538, %363
  %540 = add i32 %539, %492
  %541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %540, i32 0)  ; BufferLoad(srv,index,wot)
  %542 = extractvalue %dx.types.ResRet.i32 %541, 0
  %543 = extractvalue %dx.types.ResRet.i32 %541, 1
  %544 = extractvalue %dx.types.ResRet.i32 %541, 2
  %545 = bitcast i32 %542 to float
  %546 = bitcast i32 %543 to float
  %547 = bitcast i32 %544 to float
  %548 = add i32 %539, %506
  %549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %548, i32 0)  ; BufferLoad(srv,index,wot)
  %550 = extractvalue %dx.types.ResRet.i32 %549, 0
  %551 = extractvalue %dx.types.ResRet.i32 %549, 1
  %552 = extractvalue %dx.types.ResRet.i32 %549, 2
  %553 = bitcast i32 %550 to float
  %554 = bitcast i32 %551 to float
  %555 = bitcast i32 %552 to float
  %556 = add i32 %539, %518
  %557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %556, i32 0)  ; BufferLoad(srv,index,wot)
  %558 = extractvalue %dx.types.ResRet.i32 %557, 0
  %559 = extractvalue %dx.types.ResRet.i32 %557, 1
  %560 = extractvalue %dx.types.ResRet.i32 %557, 2
  %561 = bitcast i32 %558 to float
  %562 = bitcast i32 %559 to float
  %563 = bitcast i32 %560 to float
  %564 = add i32 %539, %528
  %565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %564, i32 0)  ; BufferLoad(srv,index,wot)
  %566 = extractvalue %dx.types.ResRet.i32 %565, 0
  %567 = extractvalue %dx.types.ResRet.i32 %565, 1
  %568 = extractvalue %dx.types.ResRet.i32 %565, 2
  %569 = bitcast i32 %566 to float
  %570 = bitcast i32 %567 to float
  %571 = bitcast i32 %568 to float
  %572 = fmul fast float %499, %479
  %573 = fmul fast float %500, %479
  %574 = fmul fast float %501, %479
  %575 = fmul fast float %512, %480
  %576 = fmul fast float %513, %480
  %577 = fmul fast float %514, %480
  %578 = fadd fast float %575, %572
  %579 = fadd fast float %576, %573
  %580 = fadd fast float %577, %574
  %581 = fmul fast float %524, %481
  %582 = fmul fast float %525, %481
  %583 = fmul fast float %526, %481
  %584 = fadd fast float %578, %581
  %585 = fadd fast float %579, %582
  %586 = fadd fast float %580, %583
  %587 = fmul fast float %534, %482
  %588 = fmul fast float %535, %482
  %589 = fmul fast float %536, %482
  %590 = fadd fast float %584, %587
  %591 = fadd fast float %585, %588
  %592 = fadd fast float %586, %589
  %593 = fmul fast float %545, %483
  %594 = fmul fast float %546, %483
  %595 = fmul fast float %547, %483
  %596 = fadd fast float %590, %593
  %597 = fadd fast float %591, %594
  %598 = fadd fast float %592, %595
  %599 = fmul fast float %553, %484
  %600 = fmul fast float %554, %484
  %601 = fmul fast float %555, %484
  %602 = fadd fast float %596, %599
  %603 = fadd fast float %597, %600
  %604 = fadd fast float %598, %601
  %605 = fmul fast float %561, %485
  %606 = fmul fast float %562, %485
  %607 = fmul fast float %563, %485
  %608 = fadd fast float %602, %605
  %609 = fadd fast float %603, %606
  %610 = fadd fast float %604, %607
  %611 = fmul fast float %569, %486
  %612 = fmul fast float %570, %486
  %613 = fmul fast float %571, %486
  %614 = fadd fast float %608, %611
  %615 = fadd fast float %609, %612
  %616 = fadd fast float %610, %613
  %617 = fmul fast float %614, %278
  %618 = call float @dx.op.tertiary.f32(i32 46, float %282, float %615, float %617)  ; FMad(a,b,c)
  %619 = call float @dx.op.tertiary.f32(i32 46, float %288, float %616, float %618)  ; FMad(a,b,c)
  %620 = fmul fast float %614, %279
  %621 = call float @dx.op.tertiary.f32(i32 46, float %283, float %615, float %620)  ; FMad(a,b,c)
  %622 = call float @dx.op.tertiary.f32(i32 46, float %289, float %616, float %621)  ; FMad(a,b,c)
  %623 = fmul fast float %614, %280
  %624 = call float @dx.op.tertiary.f32(i32 46, float %284, float %615, float %623)  ; FMad(a,b,c)
  %625 = call float @dx.op.tertiary.f32(i32 46, float %290, float %616, float %624)  ; FMad(a,b,c)
  br label %626

; <label>:626                                     ; preds = %437, %424, %407, %397
  %627 = phi i1 [ true, %437 ], [ false, %424 ], [ true, %407 ], [ false, %397 ]
  %628 = phi float [ %619, %437 ], [ 0.000000e+00, %424 ], [ %417, %407 ], [ 0.000000e+00, %397 ]
  %629 = phi float [ %622, %437 ], [ 0.000000e+00, %424 ], [ %420, %407 ], [ 0.000000e+00, %397 ]
  %630 = phi float [ %625, %437 ], [ 0.000000e+00, %424 ], [ %423, %407 ], [ 0.000000e+00, %397 ]
  br i1 %627, label %631, label %645, !dx.controlflow.hints !46

; <label>:631                                     ; preds = %626
  %632 = fmul fast float %628, %286
  %633 = fmul fast float %629, %286
  %634 = fmul fast float %630, %286
  %635 = and i32 %369, 1073741824
  %636 = icmp eq i32 %635, 0
  br i1 %636, label %641, label %637, !dx.controlflow.hints !47

; <label>:637                                     ; preds = %631
  %638 = fadd fast float %632, %348
  %639 = fadd fast float %633, %349
  %640 = fadd fast float %634, %350
  br label %645

; <label>:641                                     ; preds = %631
  %642 = fadd fast float %632, %351
  %643 = fadd fast float %633, %352
  %644 = fadd fast float %634, %353
  br label %645

; <label>:645                                     ; preds = %641, %637, %626
  %646 = phi i32 [ 1, %637 ], [ %347, %641 ], [ %347, %626 ]
  %647 = phi float [ %638, %637 ], [ %348, %641 ], [ %348, %626 ]
  %648 = phi float [ %639, %637 ], [ %349, %641 ], [ %349, %626 ]
  %649 = phi float [ %640, %637 ], [ %350, %641 ], [ %350, %626 ]
  %650 = phi float [ %351, %637 ], [ %642, %641 ], [ %351, %626 ]
  %651 = phi float [ %352, %637 ], [ %643, %641 ], [ %352, %626 ]
  %652 = phi float [ %353, %637 ], [ %644, %641 ], [ %353, %626 ]
  %653 = add nuw nsw i32 %354, 1
  %654 = icmp eq i32 %653, %345
  br i1 %654, label %655, label %346

; <label>:655                                     ; preds = %645
  br label %656

; <label>:656                                     ; preds = %655, %341
  %657 = phi i32 [ 0, %341 ], [ %646, %655 ]
  %658 = phi float [ 0.000000e+00, %341 ], [ %647, %655 ]
  %659 = phi float [ 0.000000e+00, %341 ], [ %648, %655 ]
  %660 = phi float [ 0.000000e+00, %341 ], [ %649, %655 ]
  %661 = phi float [ 0.000000e+00, %341 ], [ %650, %655 ]
  %662 = phi float [ 0.000000e+00, %341 ], [ %651, %655 ]
  %663 = phi float [ 0.000000e+00, %341 ], [ %652, %655 ]
  %664 = or i32 %657, %263
  %665 = icmp ne i32 %664, 0
  %666 = zext i1 %665 to i32
  %667 = fadd fast float %658, %267
  %668 = fadd fast float %659, %268
  %669 = fadd fast float %660, %269
  %670 = fadd fast float %661, %264
  %671 = fadd fast float %662, %265
  %672 = fadd fast float %663, %266
  br label %673

; <label>:673                                     ; preds = %656, %336, %273
  %674 = phi i32 [ %666, %656 ], [ %263, %336 ], [ %263, %273 ]
  %675 = phi float [ %670, %656 ], [ %264, %336 ], [ %264, %273 ]
  %676 = phi float [ %671, %656 ], [ %265, %336 ], [ %265, %273 ]
  %677 = phi float [ %672, %656 ], [ %266, %336 ], [ %266, %273 ]
  %678 = phi float [ %667, %656 ], [ %267, %336 ], [ %267, %273 ]
  %679 = phi float [ %668, %656 ], [ %268, %336 ], [ %268, %273 ]
  %680 = phi float [ %669, %656 ], [ %269, %336 ], [ %269, %273 ]
  %681 = phi i32 [ 1, %656 ], [ %270, %336 ], [ %270, %273 ]
  %682 = add nuw nsw i32 %271, 1
  %683 = icmp ult i32 %682, 4
  br i1 %683, label %262, label %684

; <label>:684                                     ; preds = %673, %262
  %685 = phi i32 [ %263, %262 ], [ %674, %673 ]
  %686 = phi float [ %264, %262 ], [ %675, %673 ]
  %687 = phi float [ %265, %262 ], [ %676, %673 ]
  %688 = phi float [ %266, %262 ], [ %677, %673 ]
  %689 = phi float [ %267, %262 ], [ %678, %673 ]
  %690 = phi float [ %268, %262 ], [ %679, %673 ]
  %691 = phi float [ %269, %262 ], [ %680, %673 ]
  %692 = phi i32 [ %270, %262 ], [ %681, %673 ]
  %693 = icmp ne i32 %692, 0
  %694 = icmp ne i32 %685, 0
  %695 = zext i1 %694 to i32
  %696 = zext i1 %693 to i32
  %697 = icmp ugt i32 %239, 4
  br i1 %697, label %698, label %1143, !dx.controlflow.hints !48

; <label>:698                                     ; preds = %684
  %699 = add nsw i32 %239, -4
  br label %700

; <label>:700                                     ; preds = %1111, %698
  %701 = phi i32 [ 0, %698 ], [ %1112, %1111 ]
  %702 = phi float [ 0.000000e+00, %698 ], [ %1113, %1111 ]
  %703 = phi float [ 0.000000e+00, %698 ], [ %1114, %1111 ]
  %704 = phi float [ 0.000000e+00, %698 ], [ %1115, %1111 ]
  %705 = phi float [ 0.000000e+00, %698 ], [ %1116, %1111 ]
  %706 = phi float [ 0.000000e+00, %698 ], [ %1117, %1111 ]
  %707 = phi float [ 0.000000e+00, %698 ], [ %1118, %1111 ]
  %708 = phi i32 [ 0, %698 ], [ %1119, %1111 ]
  %709 = phi i32 [ 0, %698 ], [ %1120, %1111 ]
  %710 = icmp ult i32 %709, %699
  br i1 %710, label %711, label %1122, !dx.controlflow.hints !40

; <label>:711                                     ; preds = %700
  %712 = shl i32 %709, 3
  %713 = lshr i32 %259, %712
  %714 = and i32 %713, 255
  %715 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %714, i32 0)  ; BufferLoad(srv,index,wot)
  %716 = extractvalue %dx.types.ResRet.f32 %715, 0
  %717 = extractvalue %dx.types.ResRet.f32 %715, 1
  %718 = extractvalue %dx.types.ResRet.f32 %715, 2
  %719 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %714, i32 16)  ; BufferLoad(srv,index,wot)
  %720 = extractvalue %dx.types.ResRet.f32 %719, 0
  %721 = extractvalue %dx.types.ResRet.f32 %719, 1
  %722 = extractvalue %dx.types.ResRet.f32 %719, 2
  %723 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %714, i32 28)  ; BufferLoad(srv,index,wot)
  %724 = extractvalue %dx.types.ResRet.f32 %723, 0
  %725 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %714, i32 32)  ; BufferLoad(srv,index,wot)
  %726 = extractvalue %dx.types.ResRet.f32 %725, 0
  %727 = extractvalue %dx.types.ResRet.f32 %725, 1
  %728 = extractvalue %dx.types.ResRet.f32 %725, 2
  %729 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %714, i32 44)  ; BufferLoad(srv,index,wot)
  %730 = extractvalue %dx.types.ResRet.f32 %729, 0
  %731 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %714, i32 48)  ; BufferLoad(srv,index,wot)
  %732 = extractvalue %dx.types.ResRet.f32 %731, 0
  %733 = extractvalue %dx.types.ResRet.f32 %731, 1
  %734 = extractvalue %dx.types.ResRet.f32 %731, 2
  %735 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %714, i32 60)  ; BufferLoad(srv,index,wot)
  %736 = extractvalue %dx.types.ResRet.i32 %735, 0
  %737 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %714, i32 64)  ; BufferLoad(srv,index,wot)
  %738 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %714, i32 76)  ; BufferLoad(srv,index,wot)
  %739 = and i32 %736, 16777216
  %740 = icmp eq i32 %739, 0
  br i1 %740, label %1111, label %741, !dx.controlflow.hints !41

; <label>:741                                     ; preds = %711
  %742 = extractvalue %dx.types.ResRet.f32 %738, 2
  %743 = extractvalue %dx.types.ResRet.f32 %738, 1
  %744 = extractvalue %dx.types.ResRet.f32 %738, 0
  %745 = extractvalue %dx.types.ResRet.f32 %737, 2
  %746 = extractvalue %dx.types.ResRet.f32 %737, 1
  %747 = extractvalue %dx.types.ResRet.f32 %737, 0
  %748 = fsub fast float %744, %747
  %749 = fsub fast float %743, %746
  %750 = fsub fast float %742, %745
  %751 = call float @dx.op.binary.f32(i32 35, float %749, float %750)  ; FMax(a,b)
  %752 = call float @dx.op.binary.f32(i32 35, float %748, float %751)  ; FMax(a,b)
  %753 = fmul fast float %730, 5.000000e-01
  %754 = fmul fast float %753, %752
  %755 = fadd fast float %754, %163
  %756 = fsub fast float %732, %219
  %757 = fsub fast float %733, %220
  %758 = fsub fast float %734, %221
  %759 = call float @dx.op.dot3.f32(i32 55, float %756, float %757, float %758, float %214, float %215, float %216)  ; Dot3(ax,ay,az,bx,by,bz)
  %760 = fsub fast float -0.000000e+00, %755
  %761 = fcmp fast olt float %759, %760
  %762 = fadd fast float %755, %218
  %763 = fcmp fast ogt float %759, %762
  %764 = or i1 %761, %763
  br i1 %764, label %774, label %765, !dx.controlflow.hints !42

; <label>:765                                     ; preds = %741
  %766 = call float @dx.op.binary.f32(i32 35, float %759, float 0.000000e+00)  ; FMax(a,b)
  %767 = call float @dx.op.binary.f32(i32 36, float %766, float %218)  ; FMin(a,b)
  %768 = fmul fast float %767, %214
  %769 = fmul fast float %767, %215
  %770 = fmul fast float %767, %216
  %771 = fadd fast float %768, %219
  %772 = fadd fast float %769, %220
  %773 = fadd fast float %770, %221
  br label %774

; <label>:774                                     ; preds = %765, %741
  %775 = phi i1 [ true, %765 ], [ false, %741 ]
  %776 = phi float [ %771, %765 ], [ 0.000000e+00, %741 ]
  %777 = phi float [ %772, %765 ], [ 0.000000e+00, %741 ]
  %778 = phi float [ %773, %765 ], [ 0.000000e+00, %741 ]
  br i1 %775, label %779, label %1111, !dx.controlflow.hints !43

; <label>:779                                     ; preds = %774
  %780 = and i32 %736, 4095
  %781 = icmp eq i32 %780, 0
  br i1 %781, label %1094, label %782

; <label>:782                                     ; preds = %779
  %783 = and i32 %736, 4095
  br label %784

; <label>:784                                     ; preds = %1083, %782
  %785 = phi i32 [ %1084, %1083 ], [ 0, %782 ]
  %786 = phi float [ %1085, %1083 ], [ 0.000000e+00, %782 ]
  %787 = phi float [ %1086, %1083 ], [ 0.000000e+00, %782 ]
  %788 = phi float [ %1087, %1083 ], [ 0.000000e+00, %782 ]
  %789 = phi float [ %1088, %1083 ], [ 0.000000e+00, %782 ]
  %790 = phi float [ %1089, %1083 ], [ 0.000000e+00, %782 ]
  %791 = phi float [ %1090, %1083 ], [ 0.000000e+00, %782 ]
  %792 = phi i32 [ %1091, %1083 ], [ 0, %782 ]
  %793 = lshr i32 %736, 12
  %794 = and i32 %793, 4095
  %795 = add nuw nsw i32 %792, %794
  %796 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %795, i32 0)  ; BufferLoad(srv,index,wot)
  %797 = extractvalue %dx.types.ResRet.f32 %796, 0
  %798 = extractvalue %dx.types.ResRet.f32 %796, 1
  %799 = extractvalue %dx.types.ResRet.f32 %796, 2
  %800 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %795, i32 12)  ; BufferLoad(srv,index,wot)
  %801 = extractvalue %dx.types.ResRet.i32 %800, 0
  %802 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %795, i32 16)  ; BufferLoad(srv,index,wot)
  %803 = extractvalue %dx.types.ResRet.f32 %802, 0
  %804 = extractvalue %dx.types.ResRet.f32 %802, 1
  %805 = extractvalue %dx.types.ResRet.f32 %802, 2
  %806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %795, i32 28)  ; BufferLoad(srv,index,wot)
  %807 = extractvalue %dx.types.ResRet.i32 %806, 0
  %808 = icmp slt i32 %807, 0
  %809 = fsub fast float %776, %732
  %810 = fsub fast float %777, %733
  %811 = fsub fast float %778, %734
  %812 = fmul fast float %809, %716
  %813 = call float @dx.op.tertiary.f32(i32 46, float %717, float %810, float %812)  ; FMad(a,b,c)
  %814 = call float @dx.op.tertiary.f32(i32 46, float %718, float %811, float %813)  ; FMad(a,b,c)
  %815 = fmul fast float %809, %720
  %816 = call float @dx.op.tertiary.f32(i32 46, float %721, float %810, float %815)  ; FMad(a,b,c)
  %817 = call float @dx.op.tertiary.f32(i32 46, float %722, float %811, float %816)  ; FMad(a,b,c)
  %818 = fmul fast float %809, %726
  %819 = call float @dx.op.tertiary.f32(i32 46, float %727, float %810, float %818)  ; FMad(a,b,c)
  %820 = call float @dx.op.tertiary.f32(i32 46, float %728, float %811, float %819)  ; FMad(a,b,c)
  %821 = fmul fast float %797, %730
  %822 = fmul fast float %798, %730
  %823 = fmul fast float %799, %730
  %824 = fmul fast float %821, 5.000000e-01
  %825 = fmul fast float %822, 5.000000e-01
  %826 = fmul fast float %823, 5.000000e-01
  %827 = fadd fast float %824, 0xBF50624DE0000000
  %828 = fadd fast float %825, 0xBF50624DE0000000
  %829 = fadd fast float %826, 0xBF50624DE0000000
  %830 = fcmp fast ogt float %814, %827
  %831 = fcmp fast ogt float %817, %828
  %832 = fcmp fast ogt float %820, %829
  %833 = or i1 %830, %831
  %834 = or i1 %833, %832
  br i1 %808, label %835, label %862, !dx.controlflow.hints !44

; <label>:835                                     ; preds = %784
  %836 = fsub fast float 0x3F50624DE0000000, %824
  %837 = fsub fast float 0x3F50624DE0000000, %825
  %838 = fsub fast float 0x3F50624DE0000000, %826
  %839 = fcmp fast olt float %814, %836
  %840 = fcmp fast olt float %817, %837
  %841 = fcmp fast olt float %820, %838
  %842 = or i1 %839, %840
  %843 = or i1 %842, %841
  %844 = or i1 %834, %843
  br i1 %844, label %1064, label %845, !dx.controlflow.hints !45

; <label>:845                                     ; preds = %835
  %846 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %801, i32 0)  ; BufferLoad(srv,index,wot)
  %847 = extractvalue %dx.types.ResRet.i32 %846, 0
  %848 = extractvalue %dx.types.ResRet.i32 %846, 1
  %849 = extractvalue %dx.types.ResRet.i32 %846, 2
  %850 = bitcast i32 %847 to float
  %851 = bitcast i32 %848 to float
  %852 = bitcast i32 %849 to float
  %853 = fmul fast float %850, %716
  %854 = call float @dx.op.tertiary.f32(i32 46, float %720, float %851, float %853)  ; FMad(a,b,c)
  %855 = call float @dx.op.tertiary.f32(i32 46, float %726, float %852, float %854)  ; FMad(a,b,c)
  %856 = fmul fast float %850, %717
  %857 = call float @dx.op.tertiary.f32(i32 46, float %721, float %851, float %856)  ; FMad(a,b,c)
  %858 = call float @dx.op.tertiary.f32(i32 46, float %727, float %852, float %857)  ; FMad(a,b,c)
  %859 = fmul fast float %850, %718
  %860 = call float @dx.op.tertiary.f32(i32 46, float %722, float %851, float %859)  ; FMad(a,b,c)
  %861 = call float @dx.op.tertiary.f32(i32 46, float %728, float %852, float %860)  ; FMad(a,b,c)
  br label %1064

; <label>:862                                     ; preds = %784
  %863 = fmul fast float %821, -5.000000e-01
  %864 = fmul fast float %822, -5.000000e-01
  %865 = fmul fast float %823, -5.000000e-01
  %866 = fadd fast float %863, 0x3F50624DE0000000
  %867 = fadd fast float %864, 0x3F50624DE0000000
  %868 = fadd fast float %865, 0x3F50624DE0000000
  %869 = fcmp fast olt float %814, %866
  %870 = fcmp fast olt float %817, %867
  %871 = fcmp fast olt float %820, %868
  %872 = or i1 %869, %870
  %873 = or i1 %872, %871
  %874 = or i1 %834, %873
  br i1 %874, label %1064, label %875, !dx.controlflow.hints !45

; <label>:875                                     ; preds = %862
  %876 = and i32 %807, 1023
  %877 = lshr i32 %807, 10
  %878 = and i32 %877, 1023
  %879 = lshr i32 %807, 20
  %880 = and i32 %879, 1023
  %881 = add nuw nsw i32 %876, 1
  %882 = add nuw nsw i32 %878, 1
  %883 = fsub fast float %814, %863
  %884 = fsub fast float %817, %864
  %885 = fsub fast float %820, %865
  %886 = fmul fast float %803, %730
  %887 = fmul fast float %804, %730
  %888 = fmul fast float %805, %730
  %889 = fdiv fast float 1.000000e+00, %886
  %890 = fdiv fast float 1.000000e+00, %887
  %891 = fdiv fast float 1.000000e+00, %888
  %892 = fmul fast float %889, %883
  %893 = fmul fast float %890, %884
  %894 = fmul fast float %891, %885
  %895 = call float @dx.op.unary.f32(i32 27, float %892)  ; Round_ni(value)
  %896 = call float @dx.op.unary.f32(i32 27, float %893)  ; Round_ni(value)
  %897 = call float @dx.op.unary.f32(i32 27, float %894)  ; Round_ni(value)
  %898 = fptosi float %895 to i32
  %899 = fptosi float %896 to i32
  %900 = fptosi float %897 to i32
  %901 = call i32 @dx.op.binary.i32(i32 37, i32 %898, i32 0)  ; IMax(a,b)
  %902 = call i32 @dx.op.binary.i32(i32 37, i32 %899, i32 0)  ; IMax(a,b)
  %903 = call i32 @dx.op.binary.i32(i32 37, i32 %900, i32 0)  ; IMax(a,b)
  %904 = call i32 @dx.op.binary.i32(i32 38, i32 %901, i32 %876)  ; IMin(a,b)
  %905 = call i32 @dx.op.binary.i32(i32 38, i32 %902, i32 %878)  ; IMin(a,b)
  %906 = call i32 @dx.op.binary.i32(i32 38, i32 %903, i32 %880)  ; IMin(a,b)
  %907 = call float @dx.op.unary.f32(i32 22, float %892)  ; Frc(value)
  %908 = call float @dx.op.unary.f32(i32 22, float %893)  ; Frc(value)
  %909 = call float @dx.op.unary.f32(i32 22, float %894)  ; Frc(value)
  %910 = fsub fast float 1.000000e+00, %908
  %911 = fsub fast float 1.000000e+00, %909
  %912 = fmul fast float %911, %910
  %913 = fmul fast float %910, %909
  %914 = fmul fast float %911, %908
  %915 = fmul fast float %909, %908
  %916 = fsub fast float 1.000000e+00, %907
  %917 = fmul fast float %912, %916
  %918 = fmul fast float %913, %916
  %919 = fmul fast float %914, %916
  %920 = fmul fast float %915, %916
  %921 = fmul fast float %912, %907
  %922 = fmul fast float %913, %907
  %923 = fmul fast float %914, %907
  %924 = fmul fast float %915, %907
  %925 = call i32 @dx.op.binary.i32(i32 40, i32 %904, i32 %876)  ; UMin(a,b)
  %926 = call i32 @dx.op.binary.i32(i32 40, i32 %905, i32 %878)  ; UMin(a,b)
  %927 = call i32 @dx.op.binary.i32(i32 40, i32 %906, i32 %880)  ; UMin(a,b)
  %928 = mul i32 %927, %882
  %929 = add i32 %928, %926
  %930 = mul i32 %929, %881
  %931 = add i32 %925, %801
  %932 = add i32 %931, %930
  %933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %932, i32 0)  ; BufferLoad(srv,index,wot)
  %934 = extractvalue %dx.types.ResRet.i32 %933, 0
  %935 = extractvalue %dx.types.ResRet.i32 %933, 1
  %936 = extractvalue %dx.types.ResRet.i32 %933, 2
  %937 = bitcast i32 %934 to float
  %938 = bitcast i32 %935 to float
  %939 = bitcast i32 %936 to float
  %940 = add i32 %906, 1
  %941 = call i32 @dx.op.binary.i32(i32 40, i32 %940, i32 %880)  ; UMin(a,b)
  %942 = mul i32 %941, %882
  %943 = add i32 %942, %926
  %944 = mul i32 %943, %881
  %945 = add i32 %931, %944
  %946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %945, i32 0)  ; BufferLoad(srv,index,wot)
  %947 = extractvalue %dx.types.ResRet.i32 %946, 0
  %948 = extractvalue %dx.types.ResRet.i32 %946, 1
  %949 = extractvalue %dx.types.ResRet.i32 %946, 2
  %950 = bitcast i32 %947 to float
  %951 = bitcast i32 %948 to float
  %952 = bitcast i32 %949 to float
  %953 = add i32 %905, 1
  %954 = call i32 @dx.op.binary.i32(i32 40, i32 %953, i32 %878)  ; UMin(a,b)
  %955 = add i32 %928, %954
  %956 = mul i32 %955, %881
  %957 = add i32 %931, %956
  %958 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %957, i32 0)  ; BufferLoad(srv,index,wot)
  %959 = extractvalue %dx.types.ResRet.i32 %958, 0
  %960 = extractvalue %dx.types.ResRet.i32 %958, 1
  %961 = extractvalue %dx.types.ResRet.i32 %958, 2
  %962 = bitcast i32 %959 to float
  %963 = bitcast i32 %960 to float
  %964 = bitcast i32 %961 to float
  %965 = add i32 %942, %954
  %966 = mul i32 %965, %881
  %967 = add i32 %931, %966
  %968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %967, i32 0)  ; BufferLoad(srv,index,wot)
  %969 = extractvalue %dx.types.ResRet.i32 %968, 0
  %970 = extractvalue %dx.types.ResRet.i32 %968, 1
  %971 = extractvalue %dx.types.ResRet.i32 %968, 2
  %972 = bitcast i32 %969 to float
  %973 = bitcast i32 %970 to float
  %974 = bitcast i32 %971 to float
  %975 = add i32 %904, 1
  %976 = call i32 @dx.op.binary.i32(i32 40, i32 %975, i32 %876)  ; UMin(a,b)
  %977 = add i32 %976, %801
  %978 = add i32 %977, %930
  %979 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %978, i32 0)  ; BufferLoad(srv,index,wot)
  %980 = extractvalue %dx.types.ResRet.i32 %979, 0
  %981 = extractvalue %dx.types.ResRet.i32 %979, 1
  %982 = extractvalue %dx.types.ResRet.i32 %979, 2
  %983 = bitcast i32 %980 to float
  %984 = bitcast i32 %981 to float
  %985 = bitcast i32 %982 to float
  %986 = add i32 %977, %944
  %987 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %986, i32 0)  ; BufferLoad(srv,index,wot)
  %988 = extractvalue %dx.types.ResRet.i32 %987, 0
  %989 = extractvalue %dx.types.ResRet.i32 %987, 1
  %990 = extractvalue %dx.types.ResRet.i32 %987, 2
  %991 = bitcast i32 %988 to float
  %992 = bitcast i32 %989 to float
  %993 = bitcast i32 %990 to float
  %994 = add i32 %977, %956
  %995 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %994, i32 0)  ; BufferLoad(srv,index,wot)
  %996 = extractvalue %dx.types.ResRet.i32 %995, 0
  %997 = extractvalue %dx.types.ResRet.i32 %995, 1
  %998 = extractvalue %dx.types.ResRet.i32 %995, 2
  %999 = bitcast i32 %996 to float
  %1000 = bitcast i32 %997 to float
  %1001 = bitcast i32 %998 to float
  %1002 = add i32 %977, %966
  %1003 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1002, i32 0)  ; BufferLoad(srv,index,wot)
  %1004 = extractvalue %dx.types.ResRet.i32 %1003, 0
  %1005 = extractvalue %dx.types.ResRet.i32 %1003, 1
  %1006 = extractvalue %dx.types.ResRet.i32 %1003, 2
  %1007 = bitcast i32 %1004 to float
  %1008 = bitcast i32 %1005 to float
  %1009 = bitcast i32 %1006 to float
  %1010 = fmul fast float %937, %917
  %1011 = fmul fast float %938, %917
  %1012 = fmul fast float %939, %917
  %1013 = fmul fast float %950, %918
  %1014 = fmul fast float %951, %918
  %1015 = fmul fast float %952, %918
  %1016 = fadd fast float %1013, %1010
  %1017 = fadd fast float %1014, %1011
  %1018 = fadd fast float %1015, %1012
  %1019 = fmul fast float %962, %919
  %1020 = fmul fast float %963, %919
  %1021 = fmul fast float %964, %919
  %1022 = fadd fast float %1016, %1019
  %1023 = fadd fast float %1017, %1020
  %1024 = fadd fast float %1018, %1021
  %1025 = fmul fast float %972, %920
  %1026 = fmul fast float %973, %920
  %1027 = fmul fast float %974, %920
  %1028 = fadd fast float %1022, %1025
  %1029 = fadd fast float %1023, %1026
  %1030 = fadd fast float %1024, %1027
  %1031 = fmul fast float %983, %921
  %1032 = fmul fast float %984, %921
  %1033 = fmul fast float %985, %921
  %1034 = fadd fast float %1028, %1031
  %1035 = fadd fast float %1029, %1032
  %1036 = fadd fast float %1030, %1033
  %1037 = fmul fast float %991, %922
  %1038 = fmul fast float %992, %922
  %1039 = fmul fast float %993, %922
  %1040 = fadd fast float %1034, %1037
  %1041 = fadd fast float %1035, %1038
  %1042 = fadd fast float %1036, %1039
  %1043 = fmul fast float %999, %923
  %1044 = fmul fast float %1000, %923
  %1045 = fmul fast float %1001, %923
  %1046 = fadd fast float %1040, %1043
  %1047 = fadd fast float %1041, %1044
  %1048 = fadd fast float %1042, %1045
  %1049 = fmul fast float %1007, %924
  %1050 = fmul fast float %1008, %924
  %1051 = fmul fast float %1009, %924
  %1052 = fadd fast float %1046, %1049
  %1053 = fadd fast float %1047, %1050
  %1054 = fadd fast float %1048, %1051
  %1055 = fmul fast float %1052, %716
  %1056 = call float @dx.op.tertiary.f32(i32 46, float %720, float %1053, float %1055)  ; FMad(a,b,c)
  %1057 = call float @dx.op.tertiary.f32(i32 46, float %726, float %1054, float %1056)  ; FMad(a,b,c)
  %1058 = fmul fast float %1052, %717
  %1059 = call float @dx.op.tertiary.f32(i32 46, float %721, float %1053, float %1058)  ; FMad(a,b,c)
  %1060 = call float @dx.op.tertiary.f32(i32 46, float %727, float %1054, float %1059)  ; FMad(a,b,c)
  %1061 = fmul fast float %1052, %718
  %1062 = call float @dx.op.tertiary.f32(i32 46, float %722, float %1053, float %1061)  ; FMad(a,b,c)
  %1063 = call float @dx.op.tertiary.f32(i32 46, float %728, float %1054, float %1062)  ; FMad(a,b,c)
  br label %1064

; <label>:1064                                    ; preds = %875, %862, %845, %835
  %1065 = phi i1 [ true, %875 ], [ false, %862 ], [ true, %845 ], [ false, %835 ]
  %1066 = phi float [ %1057, %875 ], [ 0.000000e+00, %862 ], [ %855, %845 ], [ 0.000000e+00, %835 ]
  %1067 = phi float [ %1060, %875 ], [ 0.000000e+00, %862 ], [ %858, %845 ], [ 0.000000e+00, %835 ]
  %1068 = phi float [ %1063, %875 ], [ 0.000000e+00, %862 ], [ %861, %845 ], [ 0.000000e+00, %835 ]
  br i1 %1065, label %1069, label %1083, !dx.controlflow.hints !46

; <label>:1069                                    ; preds = %1064
  %1070 = fmul fast float %1066, %724
  %1071 = fmul fast float %1067, %724
  %1072 = fmul fast float %1068, %724
  %1073 = and i32 %807, 1073741824
  %1074 = icmp eq i32 %1073, 0
  br i1 %1074, label %1079, label %1075, !dx.controlflow.hints !47

; <label>:1075                                    ; preds = %1069
  %1076 = fadd fast float %1070, %786
  %1077 = fadd fast float %1071, %787
  %1078 = fadd fast float %1072, %788
  br label %1083

; <label>:1079                                    ; preds = %1069
  %1080 = fadd fast float %1070, %789
  %1081 = fadd fast float %1071, %790
  %1082 = fadd fast float %1072, %791
  br label %1083

; <label>:1083                                    ; preds = %1079, %1075, %1064
  %1084 = phi i32 [ 1, %1075 ], [ %785, %1079 ], [ %785, %1064 ]
  %1085 = phi float [ %1076, %1075 ], [ %786, %1079 ], [ %786, %1064 ]
  %1086 = phi float [ %1077, %1075 ], [ %787, %1079 ], [ %787, %1064 ]
  %1087 = phi float [ %1078, %1075 ], [ %788, %1079 ], [ %788, %1064 ]
  %1088 = phi float [ %789, %1075 ], [ %1080, %1079 ], [ %789, %1064 ]
  %1089 = phi float [ %790, %1075 ], [ %1081, %1079 ], [ %790, %1064 ]
  %1090 = phi float [ %791, %1075 ], [ %1082, %1079 ], [ %791, %1064 ]
  %1091 = add nuw nsw i32 %792, 1
  %1092 = icmp eq i32 %1091, %783
  br i1 %1092, label %1093, label %784

; <label>:1093                                    ; preds = %1083
  br label %1094

; <label>:1094                                    ; preds = %1093, %779
  %1095 = phi i32 [ 0, %779 ], [ %1084, %1093 ]
  %1096 = phi float [ 0.000000e+00, %779 ], [ %1085, %1093 ]
  %1097 = phi float [ 0.000000e+00, %779 ], [ %1086, %1093 ]
  %1098 = phi float [ 0.000000e+00, %779 ], [ %1087, %1093 ]
  %1099 = phi float [ 0.000000e+00, %779 ], [ %1088, %1093 ]
  %1100 = phi float [ 0.000000e+00, %779 ], [ %1089, %1093 ]
  %1101 = phi float [ 0.000000e+00, %779 ], [ %1090, %1093 ]
  %1102 = or i32 %1095, %701
  %1103 = icmp ne i32 %1102, 0
  %1104 = zext i1 %1103 to i32
  %1105 = fadd fast float %1096, %705
  %1106 = fadd fast float %1097, %706
  %1107 = fadd fast float %1098, %707
  %1108 = fadd fast float %1099, %702
  %1109 = fadd fast float %1100, %703
  %1110 = fadd fast float %1101, %704
  br label %1111

; <label>:1111                                    ; preds = %1094, %774, %711
  %1112 = phi i32 [ %1104, %1094 ], [ %701, %774 ], [ %701, %711 ]
  %1113 = phi float [ %1108, %1094 ], [ %702, %774 ], [ %702, %711 ]
  %1114 = phi float [ %1109, %1094 ], [ %703, %774 ], [ %703, %711 ]
  %1115 = phi float [ %1110, %1094 ], [ %704, %774 ], [ %704, %711 ]
  %1116 = phi float [ %1105, %1094 ], [ %705, %774 ], [ %705, %711 ]
  %1117 = phi float [ %1106, %1094 ], [ %706, %774 ], [ %706, %711 ]
  %1118 = phi float [ %1107, %1094 ], [ %707, %774 ], [ %707, %711 ]
  %1119 = phi i32 [ 1, %1094 ], [ %708, %774 ], [ %708, %711 ]
  %1120 = add nuw nsw i32 %709, 1
  %1121 = icmp ult i32 %1120, 4
  br i1 %1121, label %700, label %1122

; <label>:1122                                    ; preds = %1111, %700
  %1123 = phi i32 [ %701, %700 ], [ %1112, %1111 ]
  %1124 = phi float [ %702, %700 ], [ %1113, %1111 ]
  %1125 = phi float [ %703, %700 ], [ %1114, %1111 ]
  %1126 = phi float [ %704, %700 ], [ %1115, %1111 ]
  %1127 = phi float [ %705, %700 ], [ %1116, %1111 ]
  %1128 = phi float [ %706, %700 ], [ %1117, %1111 ]
  %1129 = phi float [ %707, %700 ], [ %1118, %1111 ]
  %1130 = phi i32 [ %708, %700 ], [ %1119, %1111 ]
  %1131 = or i32 %1130, %692
  %1132 = icmp ne i32 %1131, 0
  %1133 = zext i1 %1132 to i32
  %1134 = or i32 %1123, %685
  %1135 = icmp ne i32 %1134, 0
  %1136 = zext i1 %1135 to i32
  %1137 = fadd fast float %1127, %689
  %1138 = fadd fast float %1128, %690
  %1139 = fadd fast float %1129, %691
  %1140 = fadd fast float %1124, %686
  %1141 = fadd fast float %1125, %687
  %1142 = fadd fast float %1126, %688
  br label %1143

; <label>:1143                                    ; preds = %1122, %684
  %1144 = phi i32 [ %1136, %1122 ], [ %695, %684 ]
  %1145 = phi float [ %1140, %1122 ], [ %686, %684 ]
  %1146 = phi float [ %1141, %1122 ], [ %687, %684 ]
  %1147 = phi float [ %1142, %1122 ], [ %688, %684 ]
  %1148 = phi float [ %1137, %1122 ], [ %689, %684 ]
  %1149 = phi float [ %1138, %1122 ], [ %690, %684 ]
  %1150 = phi float [ %1139, %1122 ], [ %691, %684 ]
  %1151 = phi i32 [ %1133, %1122 ], [ %696, %684 ]
  %1152 = icmp ne i32 %1151, 0
  %1153 = icmp ne i32 %1144, 0
  br label %1154

; <label>:1154                                    ; preds = %1143, %257, %213
  %1155 = phi float [ %1148, %1143 ], [ 0.000000e+00, %257 ], [ 0.000000e+00, %213 ]
  %1156 = phi float [ %1149, %1143 ], [ 0.000000e+00, %257 ], [ 0.000000e+00, %213 ]
  %1157 = phi float [ %1150, %1143 ], [ 0.000000e+00, %257 ], [ 0.000000e+00, %213 ]
  %1158 = phi float [ %1145, %1143 ], [ 0.000000e+00, %257 ], [ 0.000000e+00, %213 ]
  %1159 = phi float [ %1146, %1143 ], [ 0.000000e+00, %257 ], [ 0.000000e+00, %213 ]
  %1160 = phi float [ %1147, %1143 ], [ 0.000000e+00, %257 ], [ 0.000000e+00, %213 ]
  %1161 = phi i1 [ %1153, %1143 ], [ false, %257 ], [ false, %213 ]
  %1162 = phi i1 [ %1152, %1143 ], [ false, %257 ], [ false, %213 ]
  %1163 = zext i1 %1161 to i32
  br label %2274

; <label>:1164                                    ; preds = %155
  %1165 = fsub fast float %142, %21
  %1166 = fsub fast float %146, %21
  %1167 = fadd fast float %142, %21
  %1168 = fadd fast float %146, %21
  %1169 = fptosi float %1165 to i32
  %1170 = fptosi float %1166 to i32
  %1171 = add i32 %1169, 130048
  %1172 = add i32 %1170, 130048
  %1173 = call i32 @dx.op.binary.i32(i32 37, i32 %1171, i32 0)  ; IMax(a,b)
  %1174 = call i32 @dx.op.binary.i32(i32 37, i32 %1172, i32 0)  ; IMax(a,b)
  %1175 = call i32 @dx.op.binary.i32(i32 38, i32 %1173, i32 262144)  ; IMin(a,b)
  %1176 = call i32 @dx.op.binary.i32(i32 38, i32 %1174, i32 262144)  ; IMin(a,b)
  %1177 = fptosi float %1167 to i32
  %1178 = fptosi float %1168 to i32
  %1179 = add i32 %1177, 130048
  %1180 = add i32 %1178, 130048
  %1181 = call i32 @dx.op.binary.i32(i32 37, i32 %1179, i32 0)  ; IMax(a,b)
  %1182 = call i32 @dx.op.binary.i32(i32 37, i32 %1180, i32 0)  ; IMax(a,b)
  %1183 = call i32 @dx.op.binary.i32(i32 38, i32 %1181, i32 262144)  ; IMin(a,b)
  %1184 = call i32 @dx.op.binary.i32(i32 38, i32 %1182, i32 262144)  ; IMin(a,b)
  %1185 = lshr i32 %1175, 10
  %1186 = lshr i32 %1176, 10
  %1187 = lshr i32 %1183, 10
  %1188 = lshr i32 %1184, 10
  %1189 = icmp ugt i32 %1185, %1187
  br i1 %1189, label %1500, label %1190

; <label>:1190                                    ; preds = %1164
  br label %1191

; <label>:1191                                    ; preds = %1491, %1190
  %1192 = phi i32 [ %1492, %1491 ], [ -1, %1190 ]
  %1193 = phi i32 [ %1493, %1491 ], [ -1, %1190 ]
  %1194 = phi i32 [ %1494, %1491 ], [ 0, %1190 ]
  %1195 = phi i32 [ %1495, %1491 ], [ %1185, %1190 ]
  %1196 = icmp ugt i32 %1186, %1188
  br i1 %1196, label %1491, label %1197

; <label>:1197                                    ; preds = %1191
  br label %1198

; <label>:1198                                    ; preds = %1484, %1197
  %1199 = phi i32 [ %1485, %1484 ], [ %1192, %1197 ]
  %1200 = phi i32 [ %1486, %1484 ], [ %1193, %1197 ]
  %1201 = phi i32 [ %1487, %1484 ], [ %1194, %1197 ]
  %1202 = phi i32 [ %1488, %1484 ], [ %1186, %1197 ]
  %1203 = or i32 %1202, %1195
  %1204 = icmp ult i32 %1203, 256
  br i1 %1204, label %1205, label %1484, !dx.controlflow.hints !49

; <label>:1205                                    ; preds = %1198
  %1206 = shl i32 %1195, 8
  %1207 = add i32 %1202, %1206
  %1208 = and i32 %1207, -4
  %1209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1208, i32 undef)  ; BufferLoad(srv,index,wot)
  %1210 = extractvalue %dx.types.ResRet.i32 %1209, 0
  %1211 = shl i32 %1202, 3
  %1212 = and i32 %1211, 24
  %1213 = lshr i32 %1210, %1212
  %1214 = and i32 %1213, 255
  %1215 = shl i32 %1207, 3
  %1216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1215, i32 undef)  ; BufferLoad(srv,index,wot)
  %1217 = extractvalue %dx.types.ResRet.i32 %1216, 0
  %1218 = extractvalue %dx.types.ResRet.i32 %1216, 1
  %1219 = icmp ult i32 %1214, 4
  br i1 %1219, label %1220, label %1225, !dx.controlflow.hints !37

; <label>:1220                                    ; preds = %1205
  %1221 = shl i32 %1213, 3
  %1222 = and i32 %1221, 24
  %1223 = shl i32 -1, %1222
  %1224 = or i32 %1223, %1217
  br label %1232

; <label>:1225                                    ; preds = %1205
  %1226 = icmp ult i32 %1214, 8
  br i1 %1226, label %1227, label %1232, !dx.controlflow.hints !38

; <label>:1227                                    ; preds = %1225
  %1228 = shl i32 %1213, 3
  %1229 = and i32 %1228, 24
  %1230 = shl i32 -1, %1229
  %1231 = or i32 %1230, %1218
  br label %1232

; <label>:1232                                    ; preds = %1227, %1225, %1220
  %1233 = phi i32 [ %1224, %1220 ], [ %1217, %1227 ], [ %1217, %1225 ]
  %1234 = phi i32 [ -1, %1220 ], [ %1231, %1227 ], [ %1218, %1225 ]
  br label %1235

; <label>:1235                                    ; preds = %1349, %1232
  %1236 = phi i32 [ %1199, %1232 ], [ %1350, %1349 ]
  %1237 = phi i32 [ %1200, %1232 ], [ %1351, %1349 ]
  %1238 = phi i32 [ %1201, %1232 ], [ %1352, %1349 ]
  %1239 = phi i32 [ 0, %1232 ], [ %1353, %1349 ]
  %1240 = icmp ult i32 %1239, %1214
  br i1 %1240, label %1241, label %1355, !dx.controlflow.hints !50

; <label>:1241                                    ; preds = %1235
  %1242 = shl i32 %1239, 3
  %1243 = lshr i32 %1233, %1242
  %1244 = and i32 %1243, 255
  %1245 = icmp eq i32 %1244, 255
  br i1 %1245, label %1355, label %1246, !dx.controlflow.hints !51

; <label>:1246                                    ; preds = %1241
  %1247 = shl nuw nsw i32 %1244, 8
  %1248 = or i32 %1247, %1244
  %1249 = shl nuw i32 %1248, 16
  %1250 = or i32 %1249, %1248
  %1251 = xor i32 %1250, %1236
  %1252 = xor i32 %1250, %1237
  %1253 = and i32 %1251, 255
  %1254 = and i32 %1251, 65280
  %1255 = and i32 %1251, 16711680
  %1256 = and i32 %1252, 255
  %1257 = and i32 %1252, 65280
  %1258 = and i32 %1252, 16711680
  %1259 = icmp eq i32 %1253, 0
  %1260 = icmp eq i32 %1254, 0
  %1261 = icmp eq i32 %1255, 0
  %1262 = icmp ult i32 %1251, 16777216
  %1263 = or i1 %1259, %1260
  %1264 = or i1 %1261, %1263
  %1265 = or i1 %1262, %1264
  %1266 = icmp eq i32 %1256, 0
  %1267 = icmp eq i32 %1257, 0
  %1268 = icmp eq i32 %1258, 0
  %1269 = icmp ult i32 %1252, 16777216
  %1270 = or i1 %1266, %1267
  %1271 = or i1 %1268, %1270
  %1272 = or i1 %1269, %1271
  %1273 = or i1 %1265, %1272
  br i1 %1273, label %1349, label %1274, !dx.controlflow.hints !52

; <label>:1274                                    ; preds = %1246
  %1275 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1244, i32 0)  ; BufferLoad(srv,index,wot)
  %1276 = extractvalue %dx.types.ResRet.f32 %1275, 0
  %1277 = extractvalue %dx.types.ResRet.f32 %1275, 1
  %1278 = extractvalue %dx.types.ResRet.f32 %1275, 2
  %1279 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1244, i32 16)  ; BufferLoad(srv,index,wot)
  %1280 = extractvalue %dx.types.ResRet.f32 %1279, 0
  %1281 = extractvalue %dx.types.ResRet.f32 %1279, 1
  %1282 = extractvalue %dx.types.ResRet.f32 %1279, 2
  %1283 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1244, i32 32)  ; BufferLoad(srv,index,wot)
  %1284 = extractvalue %dx.types.ResRet.f32 %1283, 0
  %1285 = extractvalue %dx.types.ResRet.f32 %1283, 1
  %1286 = extractvalue %dx.types.ResRet.f32 %1283, 2
  %1287 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1244, i32 44)  ; BufferLoad(srv,index,wot)
  %1288 = extractvalue %dx.types.ResRet.f32 %1287, 0
  %1289 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1244, i32 48)  ; BufferLoad(srv,index,wot)
  %1290 = extractvalue %dx.types.ResRet.f32 %1289, 0
  %1291 = extractvalue %dx.types.ResRet.f32 %1289, 1
  %1292 = extractvalue %dx.types.ResRet.f32 %1289, 2
  %1293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1244, i32 60)  ; BufferLoad(srv,index,wot)
  %1294 = extractvalue %dx.types.ResRet.i32 %1293, 0
  %1295 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1244, i32 64)  ; BufferLoad(srv,index,wot)
  %1296 = extractvalue %dx.types.ResRet.f32 %1295, 0
  %1297 = extractvalue %dx.types.ResRet.f32 %1295, 1
  %1298 = extractvalue %dx.types.ResRet.f32 %1295, 2
  %1299 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1244, i32 76)  ; BufferLoad(srv,index,wot)
  %1300 = extractvalue %dx.types.ResRet.f32 %1299, 0
  %1301 = extractvalue %dx.types.ResRet.f32 %1299, 1
  %1302 = extractvalue %dx.types.ResRet.f32 %1299, 2
  %1303 = and i32 %1294, 16777216
  %1304 = icmp ne i32 %1303, 0
  %1305 = fsub fast float %142, %1290
  %1306 = fsub fast float %146, %1291
  %1307 = fsub fast float %150, %1292
  %1308 = fmul fast float %1305, %1276
  %1309 = call float @dx.op.tertiary.f32(i32 46, float %1280, float %1306, float %1308)  ; FMad(a,b,c)
  %1310 = call float @dx.op.tertiary.f32(i32 46, float %1284, float %1307, float %1309)  ; FMad(a,b,c)
  %1311 = fmul fast float %1305, %1277
  %1312 = call float @dx.op.tertiary.f32(i32 46, float %1281, float %1306, float %1311)  ; FMad(a,b,c)
  %1313 = call float @dx.op.tertiary.f32(i32 46, float %1285, float %1307, float %1312)  ; FMad(a,b,c)
  %1314 = fmul fast float %1305, %1278
  %1315 = call float @dx.op.tertiary.f32(i32 46, float %1282, float %1306, float %1314)  ; FMad(a,b,c)
  %1316 = call float @dx.op.tertiary.f32(i32 46, float %1286, float %1307, float %1315)  ; FMad(a,b,c)
  %1317 = fmul fast float %1300, %1288
  %1318 = fmul fast float %1301, %1288
  %1319 = fmul fast float %1302, %1288
  %1320 = fadd fast float %1317, %21
  %1321 = fadd fast float %1318, %21
  %1322 = fadd fast float %1319, %21
  %1323 = fmul fast float %1296, %1288
  %1324 = fmul fast float %1297, %1288
  %1325 = fmul fast float %1298, %1288
  %1326 = fsub fast float %1323, %21
  %1327 = fsub fast float %1324, %21
  %1328 = fsub fast float %1325, %21
  %1329 = fcmp fast olt float %1310, %1320
  %1330 = fcmp fast olt float %1313, %1321
  %1331 = fcmp fast olt float %1316, %1322
  %1332 = and i1 %1329, %1330
  %1333 = and i1 %1332, %1331
  %1334 = fcmp fast ogt float %1310, %1326
  %1335 = fcmp fast ogt float %1313, %1327
  %1336 = fcmp fast ogt float %1316, %1328
  %1337 = and i1 %1334, %1335
  %1338 = and i1 %1337, %1336
  %1339 = and i1 %1333, %1338
  %1340 = and i1 %1304, %1339
  br i1 %1340, label %1341, label %1349, !dx.controlflow.hints !53

; <label>:1341                                    ; preds = %1274
  %1342 = shl i32 %1237, 8
  %1343 = lshr i32 %1236, 24
  %1344 = or i32 %1342, %1343
  %1345 = shl i32 %1236, 8
  %1346 = or i32 %1244, %1345
  %1347 = add i32 %1238, 1
  %1348 = icmp ugt i32 %1347, 7
  br i1 %1348, label %1498, label %1349, !dx.controlflow.hints !54

; <label>:1349                                    ; preds = %1341, %1274, %1246
  %1350 = phi i32 [ %1236, %1246 ], [ %1346, %1341 ], [ %1236, %1274 ]
  %1351 = phi i32 [ %1237, %1246 ], [ %1344, %1341 ], [ %1237, %1274 ]
  %1352 = phi i32 [ %1238, %1246 ], [ %1347, %1341 ], [ %1238, %1274 ]
  %1353 = add nuw nsw i32 %1239, 1
  %1354 = icmp ult i32 %1353, 4
  br i1 %1354, label %1235, label %1355

; <label>:1355                                    ; preds = %1349, %1241, %1235
  %1356 = phi i32 [ %1350, %1349 ], [ %1236, %1235 ], [ %1236, %1241 ]
  %1357 = phi i32 [ %1351, %1349 ], [ %1237, %1235 ], [ %1237, %1241 ]
  %1358 = phi i32 [ %1352, %1349 ], [ %1238, %1235 ], [ %1238, %1241 ]
  br label %1359

; <label>:1359                                    ; preds = %1474, %1355
  %1360 = phi i32 [ %1475, %1474 ], [ %1356, %1355 ]
  %1361 = phi i32 [ %1476, %1474 ], [ %1357, %1355 ]
  %1362 = phi i32 [ %1477, %1474 ], [ %1358, %1355 ]
  %1363 = phi i32 [ %1478, %1474 ], [ 4, %1355 ]
  %1364 = icmp ult i32 %1363, %1214
  br i1 %1364, label %1365, label %1480, !dx.controlflow.hints !55

; <label>:1365                                    ; preds = %1359
  %1366 = shl i32 %1363, 3
  %1367 = and i32 %1366, 24
  %1368 = lshr i32 %1234, %1367
  %1369 = and i32 %1368, 255
  %1370 = icmp eq i32 %1369, 255
  br i1 %1370, label %1480, label %1371, !dx.controlflow.hints !56

; <label>:1371                                    ; preds = %1365
  %1372 = shl nuw nsw i32 %1369, 8
  %1373 = or i32 %1372, %1369
  %1374 = shl nuw i32 %1373, 16
  %1375 = or i32 %1374, %1373
  %1376 = xor i32 %1375, %1360
  %1377 = xor i32 %1375, %1361
  %1378 = and i32 %1376, 255
  %1379 = and i32 %1376, 65280
  %1380 = and i32 %1376, 16711680
  %1381 = and i32 %1377, 255
  %1382 = and i32 %1377, 65280
  %1383 = and i32 %1377, 16711680
  %1384 = icmp eq i32 %1378, 0
  %1385 = icmp eq i32 %1379, 0
  %1386 = icmp eq i32 %1380, 0
  %1387 = icmp ult i32 %1376, 16777216
  %1388 = or i1 %1384, %1385
  %1389 = or i1 %1386, %1388
  %1390 = or i1 %1387, %1389
  %1391 = icmp eq i32 %1381, 0
  %1392 = icmp eq i32 %1382, 0
  %1393 = icmp eq i32 %1383, 0
  %1394 = icmp ult i32 %1377, 16777216
  %1395 = or i1 %1391, %1392
  %1396 = or i1 %1393, %1395
  %1397 = or i1 %1394, %1396
  %1398 = or i1 %1390, %1397
  br i1 %1398, label %1474, label %1399, !dx.controlflow.hints !57

; <label>:1399                                    ; preds = %1371
  %1400 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1369, i32 0)  ; BufferLoad(srv,index,wot)
  %1401 = extractvalue %dx.types.ResRet.f32 %1400, 0
  %1402 = extractvalue %dx.types.ResRet.f32 %1400, 1
  %1403 = extractvalue %dx.types.ResRet.f32 %1400, 2
  %1404 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1369, i32 16)  ; BufferLoad(srv,index,wot)
  %1405 = extractvalue %dx.types.ResRet.f32 %1404, 0
  %1406 = extractvalue %dx.types.ResRet.f32 %1404, 1
  %1407 = extractvalue %dx.types.ResRet.f32 %1404, 2
  %1408 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1369, i32 32)  ; BufferLoad(srv,index,wot)
  %1409 = extractvalue %dx.types.ResRet.f32 %1408, 0
  %1410 = extractvalue %dx.types.ResRet.f32 %1408, 1
  %1411 = extractvalue %dx.types.ResRet.f32 %1408, 2
  %1412 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1369, i32 44)  ; BufferLoad(srv,index,wot)
  %1413 = extractvalue %dx.types.ResRet.f32 %1412, 0
  %1414 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1369, i32 48)  ; BufferLoad(srv,index,wot)
  %1415 = extractvalue %dx.types.ResRet.f32 %1414, 0
  %1416 = extractvalue %dx.types.ResRet.f32 %1414, 1
  %1417 = extractvalue %dx.types.ResRet.f32 %1414, 2
  %1418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1369, i32 60)  ; BufferLoad(srv,index,wot)
  %1419 = extractvalue %dx.types.ResRet.i32 %1418, 0
  %1420 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1369, i32 64)  ; BufferLoad(srv,index,wot)
  %1421 = extractvalue %dx.types.ResRet.f32 %1420, 0
  %1422 = extractvalue %dx.types.ResRet.f32 %1420, 1
  %1423 = extractvalue %dx.types.ResRet.f32 %1420, 2
  %1424 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1369, i32 76)  ; BufferLoad(srv,index,wot)
  %1425 = extractvalue %dx.types.ResRet.f32 %1424, 0
  %1426 = extractvalue %dx.types.ResRet.f32 %1424, 1
  %1427 = extractvalue %dx.types.ResRet.f32 %1424, 2
  %1428 = and i32 %1419, 16777216
  %1429 = icmp ne i32 %1428, 0
  %1430 = fsub fast float %142, %1415
  %1431 = fsub fast float %146, %1416
  %1432 = fsub fast float %150, %1417
  %1433 = fmul fast float %1430, %1401
  %1434 = call float @dx.op.tertiary.f32(i32 46, float %1405, float %1431, float %1433)  ; FMad(a,b,c)
  %1435 = call float @dx.op.tertiary.f32(i32 46, float %1409, float %1432, float %1434)  ; FMad(a,b,c)
  %1436 = fmul fast float %1430, %1402
  %1437 = call float @dx.op.tertiary.f32(i32 46, float %1406, float %1431, float %1436)  ; FMad(a,b,c)
  %1438 = call float @dx.op.tertiary.f32(i32 46, float %1410, float %1432, float %1437)  ; FMad(a,b,c)
  %1439 = fmul fast float %1430, %1403
  %1440 = call float @dx.op.tertiary.f32(i32 46, float %1407, float %1431, float %1439)  ; FMad(a,b,c)
  %1441 = call float @dx.op.tertiary.f32(i32 46, float %1411, float %1432, float %1440)  ; FMad(a,b,c)
  %1442 = fmul fast float %1425, %1413
  %1443 = fmul fast float %1426, %1413
  %1444 = fmul fast float %1427, %1413
  %1445 = fadd fast float %1442, %21
  %1446 = fadd fast float %1443, %21
  %1447 = fadd fast float %1444, %21
  %1448 = fmul fast float %1421, %1413
  %1449 = fmul fast float %1422, %1413
  %1450 = fmul fast float %1423, %1413
  %1451 = fsub fast float %1448, %21
  %1452 = fsub fast float %1449, %21
  %1453 = fsub fast float %1450, %21
  %1454 = fcmp fast olt float %1435, %1445
  %1455 = fcmp fast olt float %1438, %1446
  %1456 = fcmp fast olt float %1441, %1447
  %1457 = and i1 %1454, %1455
  %1458 = and i1 %1457, %1456
  %1459 = fcmp fast ogt float %1435, %1451
  %1460 = fcmp fast ogt float %1438, %1452
  %1461 = fcmp fast ogt float %1441, %1453
  %1462 = and i1 %1459, %1460
  %1463 = and i1 %1462, %1461
  %1464 = and i1 %1458, %1463
  %1465 = and i1 %1429, %1464
  br i1 %1465, label %1466, label %1474, !dx.controlflow.hints !58

; <label>:1466                                    ; preds = %1399
  %1467 = shl i32 %1361, 8
  %1468 = lshr i32 %1360, 24
  %1469 = or i32 %1467, %1468
  %1470 = shl i32 %1360, 8
  %1471 = or i32 %1369, %1470
  %1472 = add i32 %1362, 1
  %1473 = icmp ugt i32 %1472, 7
  br i1 %1473, label %1497, label %1474, !dx.controlflow.hints !59

; <label>:1474                                    ; preds = %1466, %1399, %1371
  %1475 = phi i32 [ %1360, %1371 ], [ %1471, %1466 ], [ %1360, %1399 ]
  %1476 = phi i32 [ %1361, %1371 ], [ %1469, %1466 ], [ %1361, %1399 ]
  %1477 = phi i32 [ %1362, %1371 ], [ %1472, %1466 ], [ %1362, %1399 ]
  %1478 = add nuw nsw i32 %1363, 1
  %1479 = icmp ult i32 %1478, 8
  br i1 %1479, label %1359, label %1480

; <label>:1480                                    ; preds = %1474, %1365, %1359
  %1481 = phi i32 [ %1360, %1365 ], [ %1360, %1359 ], [ %1475, %1474 ]
  %1482 = phi i32 [ %1361, %1365 ], [ %1361, %1359 ], [ %1476, %1474 ]
  %1483 = phi i32 [ %1362, %1365 ], [ %1362, %1359 ], [ %1477, %1474 ]
  br label %1484

; <label>:1484                                    ; preds = %1480, %1198
  %1485 = phi i32 [ %1199, %1198 ], [ %1481, %1480 ]
  %1486 = phi i32 [ %1200, %1198 ], [ %1482, %1480 ]
  %1487 = phi i32 [ %1201, %1198 ], [ %1483, %1480 ]
  %1488 = add nuw nsw i32 %1202, 1
  %1489 = icmp ugt i32 %1488, %1188
  br i1 %1489, label %1490, label %1198

; <label>:1490                                    ; preds = %1484
  br label %1491

; <label>:1491                                    ; preds = %1490, %1191
  %1492 = phi i32 [ %1192, %1191 ], [ %1485, %1490 ]
  %1493 = phi i32 [ %1193, %1191 ], [ %1486, %1490 ]
  %1494 = phi i32 [ %1194, %1191 ], [ %1487, %1490 ]
  %1495 = add nuw nsw i32 %1195, 1
  %1496 = icmp ugt i32 %1495, %1187
  br i1 %1496, label %1499, label %1191

; <label>:1497                                    ; preds = %1466
  br label %1500

; <label>:1498                                    ; preds = %1341
  br label %1500

; <label>:1499                                    ; preds = %1491
  br label %1500

; <label>:1500                                    ; preds = %1499, %1498, %1497, %1164
  %1501 = phi i32 [ -1, %1164 ], [ %1471, %1497 ], [ %1346, %1498 ], [ %1492, %1499 ]
  %1502 = phi i32 [ -1, %1164 ], [ %1469, %1497 ], [ %1344, %1498 ], [ %1493, %1499 ]
  %1503 = phi i32 [ 0, %1164 ], [ %1472, %1497 ], [ %1347, %1498 ], [ %1494, %1499 ]
  %1504 = icmp eq i32 %1503, 0
  br i1 %1504, label %2274, label %1505, !dx.controlflow.hints !60

; <label>:1505                                    ; preds = %1500
  br label %1506

; <label>:1506                                    ; preds = %1856, %1505
  %1507 = phi i32 [ %1866, %1856 ], [ 0, %1505 ]
  %1508 = phi float [ %1870, %1856 ], [ 0.000000e+00, %1505 ]
  %1509 = phi float [ %1871, %1856 ], [ 0.000000e+00, %1505 ]
  %1510 = phi float [ %1872, %1856 ], [ 0.000000e+00, %1505 ]
  %1511 = phi float [ %1867, %1856 ], [ 0.000000e+00, %1505 ]
  %1512 = phi float [ %1868, %1856 ], [ 0.000000e+00, %1505 ]
  %1513 = phi float [ %1869, %1856 ], [ 0.000000e+00, %1505 ]
  %1514 = phi i32 [ %1873, %1856 ], [ 0, %1505 ]
  %1515 = icmp ult i32 %1514, %1503
  br i1 %1515, label %1516, label %1875, !dx.controlflow.hints !61

; <label>:1516                                    ; preds = %1506
  %1517 = shl i32 %1514, 3
  %1518 = lshr i32 %1501, %1517
  %1519 = and i32 %1518, 255
  %1520 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1519, i32 0)  ; BufferLoad(srv,index,wot)
  %1521 = extractvalue %dx.types.ResRet.f32 %1520, 0
  %1522 = extractvalue %dx.types.ResRet.f32 %1520, 1
  %1523 = extractvalue %dx.types.ResRet.f32 %1520, 2
  %1524 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1519, i32 16)  ; BufferLoad(srv,index,wot)
  %1525 = extractvalue %dx.types.ResRet.f32 %1524, 0
  %1526 = extractvalue %dx.types.ResRet.f32 %1524, 1
  %1527 = extractvalue %dx.types.ResRet.f32 %1524, 2
  %1528 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1519, i32 28)  ; BufferLoad(srv,index,wot)
  %1529 = extractvalue %dx.types.ResRet.f32 %1528, 0
  %1530 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1519, i32 32)  ; BufferLoad(srv,index,wot)
  %1531 = extractvalue %dx.types.ResRet.f32 %1530, 0
  %1532 = extractvalue %dx.types.ResRet.f32 %1530, 1
  %1533 = extractvalue %dx.types.ResRet.f32 %1530, 2
  %1534 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1519, i32 44)  ; BufferLoad(srv,index,wot)
  %1535 = extractvalue %dx.types.ResRet.f32 %1534, 0
  %1536 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1519, i32 48)  ; BufferLoad(srv,index,wot)
  %1537 = extractvalue %dx.types.ResRet.f32 %1536, 0
  %1538 = extractvalue %dx.types.ResRet.f32 %1536, 1
  %1539 = extractvalue %dx.types.ResRet.f32 %1536, 2
  %1540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1519, i32 60)  ; BufferLoad(srv,index,wot)
  %1541 = extractvalue %dx.types.ResRet.i32 %1540, 0
  %1542 = and i32 %1541, 4095
  %1543 = icmp eq i32 %1542, 0
  br i1 %1543, label %1856, label %1544

; <label>:1544                                    ; preds = %1516
  %1545 = and i32 %1541, 4095
  br label %1546

; <label>:1546                                    ; preds = %1845, %1544
  %1547 = phi i32 [ %1846, %1845 ], [ 0, %1544 ]
  %1548 = phi float [ %1847, %1845 ], [ 0.000000e+00, %1544 ]
  %1549 = phi float [ %1848, %1845 ], [ 0.000000e+00, %1544 ]
  %1550 = phi float [ %1849, %1845 ], [ 0.000000e+00, %1544 ]
  %1551 = phi float [ %1850, %1845 ], [ 0.000000e+00, %1544 ]
  %1552 = phi float [ %1851, %1845 ], [ 0.000000e+00, %1544 ]
  %1553 = phi float [ %1852, %1845 ], [ 0.000000e+00, %1544 ]
  %1554 = phi i32 [ %1853, %1845 ], [ 0, %1544 ]
  %1555 = lshr i32 %1541, 12
  %1556 = and i32 %1555, 4095
  %1557 = add nuw nsw i32 %1554, %1556
  %1558 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %1557, i32 0)  ; BufferLoad(srv,index,wot)
  %1559 = extractvalue %dx.types.ResRet.f32 %1558, 0
  %1560 = extractvalue %dx.types.ResRet.f32 %1558, 1
  %1561 = extractvalue %dx.types.ResRet.f32 %1558, 2
  %1562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1557, i32 12)  ; BufferLoad(srv,index,wot)
  %1563 = extractvalue %dx.types.ResRet.i32 %1562, 0
  %1564 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %1557, i32 16)  ; BufferLoad(srv,index,wot)
  %1565 = extractvalue %dx.types.ResRet.f32 %1564, 0
  %1566 = extractvalue %dx.types.ResRet.f32 %1564, 1
  %1567 = extractvalue %dx.types.ResRet.f32 %1564, 2
  %1568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1557, i32 28)  ; BufferLoad(srv,index,wot)
  %1569 = extractvalue %dx.types.ResRet.i32 %1568, 0
  %1570 = icmp slt i32 %1569, 0
  %1571 = fsub fast float %142, %1537
  %1572 = fsub fast float %146, %1538
  %1573 = fsub fast float %150, %1539
  %1574 = fmul fast float %1571, %1521
  %1575 = call float @dx.op.tertiary.f32(i32 46, float %1522, float %1572, float %1574)  ; FMad(a,b,c)
  %1576 = call float @dx.op.tertiary.f32(i32 46, float %1523, float %1573, float %1575)  ; FMad(a,b,c)
  %1577 = fmul fast float %1571, %1525
  %1578 = call float @dx.op.tertiary.f32(i32 46, float %1526, float %1572, float %1577)  ; FMad(a,b,c)
  %1579 = call float @dx.op.tertiary.f32(i32 46, float %1527, float %1573, float %1578)  ; FMad(a,b,c)
  %1580 = fmul fast float %1571, %1531
  %1581 = call float @dx.op.tertiary.f32(i32 46, float %1532, float %1572, float %1580)  ; FMad(a,b,c)
  %1582 = call float @dx.op.tertiary.f32(i32 46, float %1533, float %1573, float %1581)  ; FMad(a,b,c)
  %1583 = fmul fast float %1559, %1535
  %1584 = fmul fast float %1560, %1535
  %1585 = fmul fast float %1561, %1535
  %1586 = fmul fast float %1583, 5.000000e-01
  %1587 = fmul fast float %1584, 5.000000e-01
  %1588 = fmul fast float %1585, 5.000000e-01
  %1589 = fadd fast float %1586, 0xBF50624DE0000000
  %1590 = fadd fast float %1587, 0xBF50624DE0000000
  %1591 = fadd fast float %1588, 0xBF50624DE0000000
  %1592 = fcmp fast ogt float %1576, %1589
  %1593 = fcmp fast ogt float %1579, %1590
  %1594 = fcmp fast ogt float %1582, %1591
  %1595 = or i1 %1592, %1593
  %1596 = or i1 %1595, %1594
  br i1 %1570, label %1597, label %1624, !dx.controlflow.hints !44

; <label>:1597                                    ; preds = %1546
  %1598 = fsub fast float 0x3F50624DE0000000, %1586
  %1599 = fsub fast float 0x3F50624DE0000000, %1587
  %1600 = fsub fast float 0x3F50624DE0000000, %1588
  %1601 = fcmp fast olt float %1576, %1598
  %1602 = fcmp fast olt float %1579, %1599
  %1603 = fcmp fast olt float %1582, %1600
  %1604 = or i1 %1601, %1602
  %1605 = or i1 %1604, %1603
  %1606 = or i1 %1596, %1605
  br i1 %1606, label %1826, label %1607, !dx.controlflow.hints !45

; <label>:1607                                    ; preds = %1597
  %1608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1563, i32 0)  ; BufferLoad(srv,index,wot)
  %1609 = extractvalue %dx.types.ResRet.i32 %1608, 0
  %1610 = extractvalue %dx.types.ResRet.i32 %1608, 1
  %1611 = extractvalue %dx.types.ResRet.i32 %1608, 2
  %1612 = bitcast i32 %1609 to float
  %1613 = bitcast i32 %1610 to float
  %1614 = bitcast i32 %1611 to float
  %1615 = fmul fast float %1612, %1521
  %1616 = call float @dx.op.tertiary.f32(i32 46, float %1525, float %1613, float %1615)  ; FMad(a,b,c)
  %1617 = call float @dx.op.tertiary.f32(i32 46, float %1531, float %1614, float %1616)  ; FMad(a,b,c)
  %1618 = fmul fast float %1612, %1522
  %1619 = call float @dx.op.tertiary.f32(i32 46, float %1526, float %1613, float %1618)  ; FMad(a,b,c)
  %1620 = call float @dx.op.tertiary.f32(i32 46, float %1532, float %1614, float %1619)  ; FMad(a,b,c)
  %1621 = fmul fast float %1612, %1523
  %1622 = call float @dx.op.tertiary.f32(i32 46, float %1527, float %1613, float %1621)  ; FMad(a,b,c)
  %1623 = call float @dx.op.tertiary.f32(i32 46, float %1533, float %1614, float %1622)  ; FMad(a,b,c)
  br label %1826

; <label>:1624                                    ; preds = %1546
  %1625 = fmul fast float %1583, -5.000000e-01
  %1626 = fmul fast float %1584, -5.000000e-01
  %1627 = fmul fast float %1585, -5.000000e-01
  %1628 = fadd fast float %1625, 0x3F50624DE0000000
  %1629 = fadd fast float %1626, 0x3F50624DE0000000
  %1630 = fadd fast float %1627, 0x3F50624DE0000000
  %1631 = fcmp fast olt float %1576, %1628
  %1632 = fcmp fast olt float %1579, %1629
  %1633 = fcmp fast olt float %1582, %1630
  %1634 = or i1 %1631, %1632
  %1635 = or i1 %1634, %1633
  %1636 = or i1 %1596, %1635
  br i1 %1636, label %1826, label %1637, !dx.controlflow.hints !45

; <label>:1637                                    ; preds = %1624
  %1638 = and i32 %1569, 1023
  %1639 = lshr i32 %1569, 10
  %1640 = and i32 %1639, 1023
  %1641 = lshr i32 %1569, 20
  %1642 = and i32 %1641, 1023
  %1643 = add nuw nsw i32 %1638, 1
  %1644 = add nuw nsw i32 %1640, 1
  %1645 = fsub fast float %1576, %1625
  %1646 = fsub fast float %1579, %1626
  %1647 = fsub fast float %1582, %1627
  %1648 = fmul fast float %1565, %1535
  %1649 = fmul fast float %1566, %1535
  %1650 = fmul fast float %1567, %1535
  %1651 = fdiv fast float 1.000000e+00, %1648
  %1652 = fdiv fast float 1.000000e+00, %1649
  %1653 = fdiv fast float 1.000000e+00, %1650
  %1654 = fmul fast float %1651, %1645
  %1655 = fmul fast float %1652, %1646
  %1656 = fmul fast float %1653, %1647
  %1657 = call float @dx.op.unary.f32(i32 27, float %1654)  ; Round_ni(value)
  %1658 = call float @dx.op.unary.f32(i32 27, float %1655)  ; Round_ni(value)
  %1659 = call float @dx.op.unary.f32(i32 27, float %1656)  ; Round_ni(value)
  %1660 = fptosi float %1657 to i32
  %1661 = fptosi float %1658 to i32
  %1662 = fptosi float %1659 to i32
  %1663 = call i32 @dx.op.binary.i32(i32 37, i32 %1660, i32 0)  ; IMax(a,b)
  %1664 = call i32 @dx.op.binary.i32(i32 37, i32 %1661, i32 0)  ; IMax(a,b)
  %1665 = call i32 @dx.op.binary.i32(i32 37, i32 %1662, i32 0)  ; IMax(a,b)
  %1666 = call i32 @dx.op.binary.i32(i32 38, i32 %1663, i32 %1638)  ; IMin(a,b)
  %1667 = call i32 @dx.op.binary.i32(i32 38, i32 %1664, i32 %1640)  ; IMin(a,b)
  %1668 = call i32 @dx.op.binary.i32(i32 38, i32 %1665, i32 %1642)  ; IMin(a,b)
  %1669 = call float @dx.op.unary.f32(i32 22, float %1654)  ; Frc(value)
  %1670 = call float @dx.op.unary.f32(i32 22, float %1655)  ; Frc(value)
  %1671 = call float @dx.op.unary.f32(i32 22, float %1656)  ; Frc(value)
  %1672 = fsub fast float 1.000000e+00, %1670
  %1673 = fsub fast float 1.000000e+00, %1671
  %1674 = fmul fast float %1673, %1672
  %1675 = fmul fast float %1672, %1671
  %1676 = fmul fast float %1673, %1670
  %1677 = fmul fast float %1671, %1670
  %1678 = fsub fast float 1.000000e+00, %1669
  %1679 = fmul fast float %1674, %1678
  %1680 = fmul fast float %1675, %1678
  %1681 = fmul fast float %1676, %1678
  %1682 = fmul fast float %1677, %1678
  %1683 = fmul fast float %1674, %1669
  %1684 = fmul fast float %1675, %1669
  %1685 = fmul fast float %1676, %1669
  %1686 = fmul fast float %1677, %1669
  %1687 = call i32 @dx.op.binary.i32(i32 40, i32 %1666, i32 %1638)  ; UMin(a,b)
  %1688 = call i32 @dx.op.binary.i32(i32 40, i32 %1667, i32 %1640)  ; UMin(a,b)
  %1689 = call i32 @dx.op.binary.i32(i32 40, i32 %1668, i32 %1642)  ; UMin(a,b)
  %1690 = mul i32 %1689, %1644
  %1691 = add i32 %1690, %1688
  %1692 = mul i32 %1691, %1643
  %1693 = add i32 %1687, %1563
  %1694 = add i32 %1693, %1692
  %1695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1694, i32 0)  ; BufferLoad(srv,index,wot)
  %1696 = extractvalue %dx.types.ResRet.i32 %1695, 0
  %1697 = extractvalue %dx.types.ResRet.i32 %1695, 1
  %1698 = extractvalue %dx.types.ResRet.i32 %1695, 2
  %1699 = bitcast i32 %1696 to float
  %1700 = bitcast i32 %1697 to float
  %1701 = bitcast i32 %1698 to float
  %1702 = add i32 %1668, 1
  %1703 = call i32 @dx.op.binary.i32(i32 40, i32 %1702, i32 %1642)  ; UMin(a,b)
  %1704 = mul i32 %1703, %1644
  %1705 = add i32 %1704, %1688
  %1706 = mul i32 %1705, %1643
  %1707 = add i32 %1693, %1706
  %1708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1707, i32 0)  ; BufferLoad(srv,index,wot)
  %1709 = extractvalue %dx.types.ResRet.i32 %1708, 0
  %1710 = extractvalue %dx.types.ResRet.i32 %1708, 1
  %1711 = extractvalue %dx.types.ResRet.i32 %1708, 2
  %1712 = bitcast i32 %1709 to float
  %1713 = bitcast i32 %1710 to float
  %1714 = bitcast i32 %1711 to float
  %1715 = add i32 %1667, 1
  %1716 = call i32 @dx.op.binary.i32(i32 40, i32 %1715, i32 %1640)  ; UMin(a,b)
  %1717 = add i32 %1690, %1716
  %1718 = mul i32 %1717, %1643
  %1719 = add i32 %1693, %1718
  %1720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1719, i32 0)  ; BufferLoad(srv,index,wot)
  %1721 = extractvalue %dx.types.ResRet.i32 %1720, 0
  %1722 = extractvalue %dx.types.ResRet.i32 %1720, 1
  %1723 = extractvalue %dx.types.ResRet.i32 %1720, 2
  %1724 = bitcast i32 %1721 to float
  %1725 = bitcast i32 %1722 to float
  %1726 = bitcast i32 %1723 to float
  %1727 = add i32 %1704, %1716
  %1728 = mul i32 %1727, %1643
  %1729 = add i32 %1693, %1728
  %1730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1729, i32 0)  ; BufferLoad(srv,index,wot)
  %1731 = extractvalue %dx.types.ResRet.i32 %1730, 0
  %1732 = extractvalue %dx.types.ResRet.i32 %1730, 1
  %1733 = extractvalue %dx.types.ResRet.i32 %1730, 2
  %1734 = bitcast i32 %1731 to float
  %1735 = bitcast i32 %1732 to float
  %1736 = bitcast i32 %1733 to float
  %1737 = add i32 %1666, 1
  %1738 = call i32 @dx.op.binary.i32(i32 40, i32 %1737, i32 %1638)  ; UMin(a,b)
  %1739 = add i32 %1738, %1563
  %1740 = add i32 %1739, %1692
  %1741 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1740, i32 0)  ; BufferLoad(srv,index,wot)
  %1742 = extractvalue %dx.types.ResRet.i32 %1741, 0
  %1743 = extractvalue %dx.types.ResRet.i32 %1741, 1
  %1744 = extractvalue %dx.types.ResRet.i32 %1741, 2
  %1745 = bitcast i32 %1742 to float
  %1746 = bitcast i32 %1743 to float
  %1747 = bitcast i32 %1744 to float
  %1748 = add i32 %1739, %1706
  %1749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1748, i32 0)  ; BufferLoad(srv,index,wot)
  %1750 = extractvalue %dx.types.ResRet.i32 %1749, 0
  %1751 = extractvalue %dx.types.ResRet.i32 %1749, 1
  %1752 = extractvalue %dx.types.ResRet.i32 %1749, 2
  %1753 = bitcast i32 %1750 to float
  %1754 = bitcast i32 %1751 to float
  %1755 = bitcast i32 %1752 to float
  %1756 = add i32 %1739, %1718
  %1757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1756, i32 0)  ; BufferLoad(srv,index,wot)
  %1758 = extractvalue %dx.types.ResRet.i32 %1757, 0
  %1759 = extractvalue %dx.types.ResRet.i32 %1757, 1
  %1760 = extractvalue %dx.types.ResRet.i32 %1757, 2
  %1761 = bitcast i32 %1758 to float
  %1762 = bitcast i32 %1759 to float
  %1763 = bitcast i32 %1760 to float
  %1764 = add i32 %1739, %1728
  %1765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1764, i32 0)  ; BufferLoad(srv,index,wot)
  %1766 = extractvalue %dx.types.ResRet.i32 %1765, 0
  %1767 = extractvalue %dx.types.ResRet.i32 %1765, 1
  %1768 = extractvalue %dx.types.ResRet.i32 %1765, 2
  %1769 = bitcast i32 %1766 to float
  %1770 = bitcast i32 %1767 to float
  %1771 = bitcast i32 %1768 to float
  %1772 = fmul fast float %1699, %1679
  %1773 = fmul fast float %1700, %1679
  %1774 = fmul fast float %1701, %1679
  %1775 = fmul fast float %1712, %1680
  %1776 = fmul fast float %1713, %1680
  %1777 = fmul fast float %1714, %1680
  %1778 = fadd fast float %1775, %1772
  %1779 = fadd fast float %1776, %1773
  %1780 = fadd fast float %1777, %1774
  %1781 = fmul fast float %1724, %1681
  %1782 = fmul fast float %1725, %1681
  %1783 = fmul fast float %1726, %1681
  %1784 = fadd fast float %1778, %1781
  %1785 = fadd fast float %1779, %1782
  %1786 = fadd fast float %1780, %1783
  %1787 = fmul fast float %1734, %1682
  %1788 = fmul fast float %1735, %1682
  %1789 = fmul fast float %1736, %1682
  %1790 = fadd fast float %1784, %1787
  %1791 = fadd fast float %1785, %1788
  %1792 = fadd fast float %1786, %1789
  %1793 = fmul fast float %1745, %1683
  %1794 = fmul fast float %1746, %1683
  %1795 = fmul fast float %1747, %1683
  %1796 = fadd fast float %1790, %1793
  %1797 = fadd fast float %1791, %1794
  %1798 = fadd fast float %1792, %1795
  %1799 = fmul fast float %1753, %1684
  %1800 = fmul fast float %1754, %1684
  %1801 = fmul fast float %1755, %1684
  %1802 = fadd fast float %1796, %1799
  %1803 = fadd fast float %1797, %1800
  %1804 = fadd fast float %1798, %1801
  %1805 = fmul fast float %1761, %1685
  %1806 = fmul fast float %1762, %1685
  %1807 = fmul fast float %1763, %1685
  %1808 = fadd fast float %1802, %1805
  %1809 = fadd fast float %1803, %1806
  %1810 = fadd fast float %1804, %1807
  %1811 = fmul fast float %1769, %1686
  %1812 = fmul fast float %1770, %1686
  %1813 = fmul fast float %1771, %1686
  %1814 = fadd fast float %1808, %1811
  %1815 = fadd fast float %1809, %1812
  %1816 = fadd fast float %1810, %1813
  %1817 = fmul fast float %1814, %1521
  %1818 = call float @dx.op.tertiary.f32(i32 46, float %1525, float %1815, float %1817)  ; FMad(a,b,c)
  %1819 = call float @dx.op.tertiary.f32(i32 46, float %1531, float %1816, float %1818)  ; FMad(a,b,c)
  %1820 = fmul fast float %1814, %1522
  %1821 = call float @dx.op.tertiary.f32(i32 46, float %1526, float %1815, float %1820)  ; FMad(a,b,c)
  %1822 = call float @dx.op.tertiary.f32(i32 46, float %1532, float %1816, float %1821)  ; FMad(a,b,c)
  %1823 = fmul fast float %1814, %1523
  %1824 = call float @dx.op.tertiary.f32(i32 46, float %1527, float %1815, float %1823)  ; FMad(a,b,c)
  %1825 = call float @dx.op.tertiary.f32(i32 46, float %1533, float %1816, float %1824)  ; FMad(a,b,c)
  br label %1826

; <label>:1826                                    ; preds = %1637, %1624, %1607, %1597
  %1827 = phi i1 [ true, %1637 ], [ false, %1624 ], [ true, %1607 ], [ false, %1597 ]
  %1828 = phi float [ %1819, %1637 ], [ 0.000000e+00, %1624 ], [ %1617, %1607 ], [ 0.000000e+00, %1597 ]
  %1829 = phi float [ %1822, %1637 ], [ 0.000000e+00, %1624 ], [ %1620, %1607 ], [ 0.000000e+00, %1597 ]
  %1830 = phi float [ %1825, %1637 ], [ 0.000000e+00, %1624 ], [ %1623, %1607 ], [ 0.000000e+00, %1597 ]
  br i1 %1827, label %1831, label %1845, !dx.controlflow.hints !46

; <label>:1831                                    ; preds = %1826
  %1832 = fmul fast float %1828, %1529
  %1833 = fmul fast float %1829, %1529
  %1834 = fmul fast float %1830, %1529
  %1835 = and i32 %1569, 1073741824
  %1836 = icmp eq i32 %1835, 0
  br i1 %1836, label %1841, label %1837, !dx.controlflow.hints !47

; <label>:1837                                    ; preds = %1831
  %1838 = fadd fast float %1832, %1548
  %1839 = fadd fast float %1833, %1549
  %1840 = fadd fast float %1834, %1550
  br label %1845

; <label>:1841                                    ; preds = %1831
  %1842 = fadd fast float %1832, %1551
  %1843 = fadd fast float %1833, %1552
  %1844 = fadd fast float %1834, %1553
  br label %1845

; <label>:1845                                    ; preds = %1841, %1837, %1826
  %1846 = phi i32 [ 1, %1837 ], [ %1547, %1841 ], [ %1547, %1826 ]
  %1847 = phi float [ %1838, %1837 ], [ %1548, %1841 ], [ %1548, %1826 ]
  %1848 = phi float [ %1839, %1837 ], [ %1549, %1841 ], [ %1549, %1826 ]
  %1849 = phi float [ %1840, %1837 ], [ %1550, %1841 ], [ %1550, %1826 ]
  %1850 = phi float [ %1551, %1837 ], [ %1842, %1841 ], [ %1551, %1826 ]
  %1851 = phi float [ %1552, %1837 ], [ %1843, %1841 ], [ %1552, %1826 ]
  %1852 = phi float [ %1553, %1837 ], [ %1844, %1841 ], [ %1553, %1826 ]
  %1853 = add nuw nsw i32 %1554, 1
  %1854 = icmp eq i32 %1853, %1545
  br i1 %1854, label %1855, label %1546

; <label>:1855                                    ; preds = %1845
  br label %1856

; <label>:1856                                    ; preds = %1855, %1516
  %1857 = phi i32 [ 0, %1516 ], [ %1846, %1855 ]
  %1858 = phi float [ 0.000000e+00, %1516 ], [ %1847, %1855 ]
  %1859 = phi float [ 0.000000e+00, %1516 ], [ %1848, %1855 ]
  %1860 = phi float [ 0.000000e+00, %1516 ], [ %1849, %1855 ]
  %1861 = phi float [ 0.000000e+00, %1516 ], [ %1850, %1855 ]
  %1862 = phi float [ 0.000000e+00, %1516 ], [ %1851, %1855 ]
  %1863 = phi float [ 0.000000e+00, %1516 ], [ %1852, %1855 ]
  %1864 = or i32 %1857, %1507
  %1865 = icmp ne i32 %1864, 0
  %1866 = zext i1 %1865 to i32
  %1867 = fadd fast float %1858, %1511
  %1868 = fadd fast float %1859, %1512
  %1869 = fadd fast float %1860, %1513
  %1870 = fadd fast float %1861, %1508
  %1871 = fadd fast float %1862, %1509
  %1872 = fadd fast float %1863, %1510
  %1873 = add nuw nsw i32 %1514, 1
  %1874 = icmp ult i32 %1873, 4
  br i1 %1874, label %1506, label %1875

; <label>:1875                                    ; preds = %1856, %1506
  %1876 = phi i32 [ %1507, %1506 ], [ %1866, %1856 ]
  %1877 = phi float [ %1508, %1506 ], [ %1870, %1856 ]
  %1878 = phi float [ %1509, %1506 ], [ %1871, %1856 ]
  %1879 = phi float [ %1510, %1506 ], [ %1872, %1856 ]
  %1880 = phi float [ %1511, %1506 ], [ %1867, %1856 ]
  %1881 = phi float [ %1512, %1506 ], [ %1868, %1856 ]
  %1882 = phi float [ %1513, %1506 ], [ %1869, %1856 ]
  %1883 = icmp ne i32 %1876, 0
  %1884 = zext i1 %1883 to i32
  %1885 = icmp ugt i32 %1503, 4
  br i1 %1885, label %1886, label %2274, !dx.controlflow.hints !62

; <label>:1886                                    ; preds = %1875
  %1887 = add i32 %1503, -4
  br label %1888

; <label>:1888                                    ; preds = %2238, %1886
  %1889 = phi i32 [ 0, %1886 ], [ %2248, %2238 ]
  %1890 = phi float [ 0.000000e+00, %1886 ], [ %2252, %2238 ]
  %1891 = phi float [ 0.000000e+00, %1886 ], [ %2253, %2238 ]
  %1892 = phi float [ 0.000000e+00, %1886 ], [ %2254, %2238 ]
  %1893 = phi float [ 0.000000e+00, %1886 ], [ %2249, %2238 ]
  %1894 = phi float [ 0.000000e+00, %1886 ], [ %2250, %2238 ]
  %1895 = phi float [ 0.000000e+00, %1886 ], [ %2251, %2238 ]
  %1896 = phi i32 [ 0, %1886 ], [ %2255, %2238 ]
  %1897 = icmp ult i32 %1896, %1887
  br i1 %1897, label %1898, label %2257, !dx.controlflow.hints !61

; <label>:1898                                    ; preds = %1888
  %1899 = shl i32 %1896, 3
  %1900 = lshr i32 %1502, %1899
  %1901 = and i32 %1900, 255
  %1902 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1901, i32 0)  ; BufferLoad(srv,index,wot)
  %1903 = extractvalue %dx.types.ResRet.f32 %1902, 0
  %1904 = extractvalue %dx.types.ResRet.f32 %1902, 1
  %1905 = extractvalue %dx.types.ResRet.f32 %1902, 2
  %1906 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1901, i32 16)  ; BufferLoad(srv,index,wot)
  %1907 = extractvalue %dx.types.ResRet.f32 %1906, 0
  %1908 = extractvalue %dx.types.ResRet.f32 %1906, 1
  %1909 = extractvalue %dx.types.ResRet.f32 %1906, 2
  %1910 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1901, i32 28)  ; BufferLoad(srv,index,wot)
  %1911 = extractvalue %dx.types.ResRet.f32 %1910, 0
  %1912 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1901, i32 32)  ; BufferLoad(srv,index,wot)
  %1913 = extractvalue %dx.types.ResRet.f32 %1912, 0
  %1914 = extractvalue %dx.types.ResRet.f32 %1912, 1
  %1915 = extractvalue %dx.types.ResRet.f32 %1912, 2
  %1916 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1901, i32 44)  ; BufferLoad(srv,index,wot)
  %1917 = extractvalue %dx.types.ResRet.f32 %1916, 0
  %1918 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1901, i32 48)  ; BufferLoad(srv,index,wot)
  %1919 = extractvalue %dx.types.ResRet.f32 %1918, 0
  %1920 = extractvalue %dx.types.ResRet.f32 %1918, 1
  %1921 = extractvalue %dx.types.ResRet.f32 %1918, 2
  %1922 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1901, i32 60)  ; BufferLoad(srv,index,wot)
  %1923 = extractvalue %dx.types.ResRet.i32 %1922, 0
  %1924 = and i32 %1923, 4095
  %1925 = icmp eq i32 %1924, 0
  br i1 %1925, label %2238, label %1926

; <label>:1926                                    ; preds = %1898
  %1927 = and i32 %1923, 4095
  br label %1928

; <label>:1928                                    ; preds = %2227, %1926
  %1929 = phi i32 [ %2228, %2227 ], [ 0, %1926 ]
  %1930 = phi float [ %2229, %2227 ], [ 0.000000e+00, %1926 ]
  %1931 = phi float [ %2230, %2227 ], [ 0.000000e+00, %1926 ]
  %1932 = phi float [ %2231, %2227 ], [ 0.000000e+00, %1926 ]
  %1933 = phi float [ %2232, %2227 ], [ 0.000000e+00, %1926 ]
  %1934 = phi float [ %2233, %2227 ], [ 0.000000e+00, %1926 ]
  %1935 = phi float [ %2234, %2227 ], [ 0.000000e+00, %1926 ]
  %1936 = phi i32 [ %2235, %2227 ], [ 0, %1926 ]
  %1937 = lshr i32 %1923, 12
  %1938 = and i32 %1937, 4095
  %1939 = add nuw nsw i32 %1936, %1938
  %1940 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %1939, i32 0)  ; BufferLoad(srv,index,wot)
  %1941 = extractvalue %dx.types.ResRet.f32 %1940, 0
  %1942 = extractvalue %dx.types.ResRet.f32 %1940, 1
  %1943 = extractvalue %dx.types.ResRet.f32 %1940, 2
  %1944 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1939, i32 12)  ; BufferLoad(srv,index,wot)
  %1945 = extractvalue %dx.types.ResRet.i32 %1944, 0
  %1946 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %1939, i32 16)  ; BufferLoad(srv,index,wot)
  %1947 = extractvalue %dx.types.ResRet.f32 %1946, 0
  %1948 = extractvalue %dx.types.ResRet.f32 %1946, 1
  %1949 = extractvalue %dx.types.ResRet.f32 %1946, 2
  %1950 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1939, i32 28)  ; BufferLoad(srv,index,wot)
  %1951 = extractvalue %dx.types.ResRet.i32 %1950, 0
  %1952 = icmp slt i32 %1951, 0
  %1953 = fsub fast float %142, %1919
  %1954 = fsub fast float %146, %1920
  %1955 = fsub fast float %150, %1921
  %1956 = fmul fast float %1953, %1903
  %1957 = call float @dx.op.tertiary.f32(i32 46, float %1904, float %1954, float %1956)  ; FMad(a,b,c)
  %1958 = call float @dx.op.tertiary.f32(i32 46, float %1905, float %1955, float %1957)  ; FMad(a,b,c)
  %1959 = fmul fast float %1953, %1907
  %1960 = call float @dx.op.tertiary.f32(i32 46, float %1908, float %1954, float %1959)  ; FMad(a,b,c)
  %1961 = call float @dx.op.tertiary.f32(i32 46, float %1909, float %1955, float %1960)  ; FMad(a,b,c)
  %1962 = fmul fast float %1953, %1913
  %1963 = call float @dx.op.tertiary.f32(i32 46, float %1914, float %1954, float %1962)  ; FMad(a,b,c)
  %1964 = call float @dx.op.tertiary.f32(i32 46, float %1915, float %1955, float %1963)  ; FMad(a,b,c)
  %1965 = fmul fast float %1941, %1917
  %1966 = fmul fast float %1942, %1917
  %1967 = fmul fast float %1943, %1917
  %1968 = fmul fast float %1965, 5.000000e-01
  %1969 = fmul fast float %1966, 5.000000e-01
  %1970 = fmul fast float %1967, 5.000000e-01
  %1971 = fadd fast float %1968, 0xBF50624DE0000000
  %1972 = fadd fast float %1969, 0xBF50624DE0000000
  %1973 = fadd fast float %1970, 0xBF50624DE0000000
  %1974 = fcmp fast ogt float %1958, %1971
  %1975 = fcmp fast ogt float %1961, %1972
  %1976 = fcmp fast ogt float %1964, %1973
  %1977 = or i1 %1974, %1975
  %1978 = or i1 %1977, %1976
  br i1 %1952, label %1979, label %2006, !dx.controlflow.hints !44

; <label>:1979                                    ; preds = %1928
  %1980 = fsub fast float 0x3F50624DE0000000, %1968
  %1981 = fsub fast float 0x3F50624DE0000000, %1969
  %1982 = fsub fast float 0x3F50624DE0000000, %1970
  %1983 = fcmp fast olt float %1958, %1980
  %1984 = fcmp fast olt float %1961, %1981
  %1985 = fcmp fast olt float %1964, %1982
  %1986 = or i1 %1983, %1984
  %1987 = or i1 %1986, %1985
  %1988 = or i1 %1978, %1987
  br i1 %1988, label %2208, label %1989, !dx.controlflow.hints !45

; <label>:1989                                    ; preds = %1979
  %1990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1945, i32 0)  ; BufferLoad(srv,index,wot)
  %1991 = extractvalue %dx.types.ResRet.i32 %1990, 0
  %1992 = extractvalue %dx.types.ResRet.i32 %1990, 1
  %1993 = extractvalue %dx.types.ResRet.i32 %1990, 2
  %1994 = bitcast i32 %1991 to float
  %1995 = bitcast i32 %1992 to float
  %1996 = bitcast i32 %1993 to float
  %1997 = fmul fast float %1994, %1903
  %1998 = call float @dx.op.tertiary.f32(i32 46, float %1907, float %1995, float %1997)  ; FMad(a,b,c)
  %1999 = call float @dx.op.tertiary.f32(i32 46, float %1913, float %1996, float %1998)  ; FMad(a,b,c)
  %2000 = fmul fast float %1994, %1904
  %2001 = call float @dx.op.tertiary.f32(i32 46, float %1908, float %1995, float %2000)  ; FMad(a,b,c)
  %2002 = call float @dx.op.tertiary.f32(i32 46, float %1914, float %1996, float %2001)  ; FMad(a,b,c)
  %2003 = fmul fast float %1994, %1905
  %2004 = call float @dx.op.tertiary.f32(i32 46, float %1909, float %1995, float %2003)  ; FMad(a,b,c)
  %2005 = call float @dx.op.tertiary.f32(i32 46, float %1915, float %1996, float %2004)  ; FMad(a,b,c)
  br label %2208

; <label>:2006                                    ; preds = %1928
  %2007 = fmul fast float %1965, -5.000000e-01
  %2008 = fmul fast float %1966, -5.000000e-01
  %2009 = fmul fast float %1967, -5.000000e-01
  %2010 = fadd fast float %2007, 0x3F50624DE0000000
  %2011 = fadd fast float %2008, 0x3F50624DE0000000
  %2012 = fadd fast float %2009, 0x3F50624DE0000000
  %2013 = fcmp fast olt float %1958, %2010
  %2014 = fcmp fast olt float %1961, %2011
  %2015 = fcmp fast olt float %1964, %2012
  %2016 = or i1 %2013, %2014
  %2017 = or i1 %2016, %2015
  %2018 = or i1 %1978, %2017
  br i1 %2018, label %2208, label %2019, !dx.controlflow.hints !45

; <label>:2019                                    ; preds = %2006
  %2020 = and i32 %1951, 1023
  %2021 = lshr i32 %1951, 10
  %2022 = and i32 %2021, 1023
  %2023 = lshr i32 %1951, 20
  %2024 = and i32 %2023, 1023
  %2025 = add nuw nsw i32 %2020, 1
  %2026 = add nuw nsw i32 %2022, 1
  %2027 = fsub fast float %1958, %2007
  %2028 = fsub fast float %1961, %2008
  %2029 = fsub fast float %1964, %2009
  %2030 = fmul fast float %1947, %1917
  %2031 = fmul fast float %1948, %1917
  %2032 = fmul fast float %1949, %1917
  %2033 = fdiv fast float 1.000000e+00, %2030
  %2034 = fdiv fast float 1.000000e+00, %2031
  %2035 = fdiv fast float 1.000000e+00, %2032
  %2036 = fmul fast float %2033, %2027
  %2037 = fmul fast float %2034, %2028
  %2038 = fmul fast float %2035, %2029
  %2039 = call float @dx.op.unary.f32(i32 27, float %2036)  ; Round_ni(value)
  %2040 = call float @dx.op.unary.f32(i32 27, float %2037)  ; Round_ni(value)
  %2041 = call float @dx.op.unary.f32(i32 27, float %2038)  ; Round_ni(value)
  %2042 = fptosi float %2039 to i32
  %2043 = fptosi float %2040 to i32
  %2044 = fptosi float %2041 to i32
  %2045 = call i32 @dx.op.binary.i32(i32 37, i32 %2042, i32 0)  ; IMax(a,b)
  %2046 = call i32 @dx.op.binary.i32(i32 37, i32 %2043, i32 0)  ; IMax(a,b)
  %2047 = call i32 @dx.op.binary.i32(i32 37, i32 %2044, i32 0)  ; IMax(a,b)
  %2048 = call i32 @dx.op.binary.i32(i32 38, i32 %2045, i32 %2020)  ; IMin(a,b)
  %2049 = call i32 @dx.op.binary.i32(i32 38, i32 %2046, i32 %2022)  ; IMin(a,b)
  %2050 = call i32 @dx.op.binary.i32(i32 38, i32 %2047, i32 %2024)  ; IMin(a,b)
  %2051 = call float @dx.op.unary.f32(i32 22, float %2036)  ; Frc(value)
  %2052 = call float @dx.op.unary.f32(i32 22, float %2037)  ; Frc(value)
  %2053 = call float @dx.op.unary.f32(i32 22, float %2038)  ; Frc(value)
  %2054 = fsub fast float 1.000000e+00, %2052
  %2055 = fsub fast float 1.000000e+00, %2053
  %2056 = fmul fast float %2055, %2054
  %2057 = fmul fast float %2054, %2053
  %2058 = fmul fast float %2055, %2052
  %2059 = fmul fast float %2053, %2052
  %2060 = fsub fast float 1.000000e+00, %2051
  %2061 = fmul fast float %2056, %2060
  %2062 = fmul fast float %2057, %2060
  %2063 = fmul fast float %2058, %2060
  %2064 = fmul fast float %2059, %2060
  %2065 = fmul fast float %2056, %2051
  %2066 = fmul fast float %2057, %2051
  %2067 = fmul fast float %2058, %2051
  %2068 = fmul fast float %2059, %2051
  %2069 = call i32 @dx.op.binary.i32(i32 40, i32 %2048, i32 %2020)  ; UMin(a,b)
  %2070 = call i32 @dx.op.binary.i32(i32 40, i32 %2049, i32 %2022)  ; UMin(a,b)
  %2071 = call i32 @dx.op.binary.i32(i32 40, i32 %2050, i32 %2024)  ; UMin(a,b)
  %2072 = mul i32 %2071, %2026
  %2073 = add i32 %2072, %2070
  %2074 = mul i32 %2073, %2025
  %2075 = add i32 %2069, %1945
  %2076 = add i32 %2075, %2074
  %2077 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %2076, i32 0)  ; BufferLoad(srv,index,wot)
  %2078 = extractvalue %dx.types.ResRet.i32 %2077, 0
  %2079 = extractvalue %dx.types.ResRet.i32 %2077, 1
  %2080 = extractvalue %dx.types.ResRet.i32 %2077, 2
  %2081 = bitcast i32 %2078 to float
  %2082 = bitcast i32 %2079 to float
  %2083 = bitcast i32 %2080 to float
  %2084 = add i32 %2050, 1
  %2085 = call i32 @dx.op.binary.i32(i32 40, i32 %2084, i32 %2024)  ; UMin(a,b)
  %2086 = mul i32 %2085, %2026
  %2087 = add i32 %2086, %2070
  %2088 = mul i32 %2087, %2025
  %2089 = add i32 %2075, %2088
  %2090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %2089, i32 0)  ; BufferLoad(srv,index,wot)
  %2091 = extractvalue %dx.types.ResRet.i32 %2090, 0
  %2092 = extractvalue %dx.types.ResRet.i32 %2090, 1
  %2093 = extractvalue %dx.types.ResRet.i32 %2090, 2
  %2094 = bitcast i32 %2091 to float
  %2095 = bitcast i32 %2092 to float
  %2096 = bitcast i32 %2093 to float
  %2097 = add i32 %2049, 1
  %2098 = call i32 @dx.op.binary.i32(i32 40, i32 %2097, i32 %2022)  ; UMin(a,b)
  %2099 = add i32 %2072, %2098
  %2100 = mul i32 %2099, %2025
  %2101 = add i32 %2075, %2100
  %2102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %2101, i32 0)  ; BufferLoad(srv,index,wot)
  %2103 = extractvalue %dx.types.ResRet.i32 %2102, 0
  %2104 = extractvalue %dx.types.ResRet.i32 %2102, 1
  %2105 = extractvalue %dx.types.ResRet.i32 %2102, 2
  %2106 = bitcast i32 %2103 to float
  %2107 = bitcast i32 %2104 to float
  %2108 = bitcast i32 %2105 to float
  %2109 = add i32 %2086, %2098
  %2110 = mul i32 %2109, %2025
  %2111 = add i32 %2075, %2110
  %2112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %2111, i32 0)  ; BufferLoad(srv,index,wot)
  %2113 = extractvalue %dx.types.ResRet.i32 %2112, 0
  %2114 = extractvalue %dx.types.ResRet.i32 %2112, 1
  %2115 = extractvalue %dx.types.ResRet.i32 %2112, 2
  %2116 = bitcast i32 %2113 to float
  %2117 = bitcast i32 %2114 to float
  %2118 = bitcast i32 %2115 to float
  %2119 = add i32 %2048, 1
  %2120 = call i32 @dx.op.binary.i32(i32 40, i32 %2119, i32 %2020)  ; UMin(a,b)
  %2121 = add i32 %2120, %1945
  %2122 = add i32 %2121, %2074
  %2123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %2122, i32 0)  ; BufferLoad(srv,index,wot)
  %2124 = extractvalue %dx.types.ResRet.i32 %2123, 0
  %2125 = extractvalue %dx.types.ResRet.i32 %2123, 1
  %2126 = extractvalue %dx.types.ResRet.i32 %2123, 2
  %2127 = bitcast i32 %2124 to float
  %2128 = bitcast i32 %2125 to float
  %2129 = bitcast i32 %2126 to float
  %2130 = add i32 %2121, %2088
  %2131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %2130, i32 0)  ; BufferLoad(srv,index,wot)
  %2132 = extractvalue %dx.types.ResRet.i32 %2131, 0
  %2133 = extractvalue %dx.types.ResRet.i32 %2131, 1
  %2134 = extractvalue %dx.types.ResRet.i32 %2131, 2
  %2135 = bitcast i32 %2132 to float
  %2136 = bitcast i32 %2133 to float
  %2137 = bitcast i32 %2134 to float
  %2138 = add i32 %2121, %2100
  %2139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %2138, i32 0)  ; BufferLoad(srv,index,wot)
  %2140 = extractvalue %dx.types.ResRet.i32 %2139, 0
  %2141 = extractvalue %dx.types.ResRet.i32 %2139, 1
  %2142 = extractvalue %dx.types.ResRet.i32 %2139, 2
  %2143 = bitcast i32 %2140 to float
  %2144 = bitcast i32 %2141 to float
  %2145 = bitcast i32 %2142 to float
  %2146 = add i32 %2121, %2110
  %2147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %2146, i32 0)  ; BufferLoad(srv,index,wot)
  %2148 = extractvalue %dx.types.ResRet.i32 %2147, 0
  %2149 = extractvalue %dx.types.ResRet.i32 %2147, 1
  %2150 = extractvalue %dx.types.ResRet.i32 %2147, 2
  %2151 = bitcast i32 %2148 to float
  %2152 = bitcast i32 %2149 to float
  %2153 = bitcast i32 %2150 to float
  %2154 = fmul fast float %2081, %2061
  %2155 = fmul fast float %2082, %2061
  %2156 = fmul fast float %2083, %2061
  %2157 = fmul fast float %2094, %2062
  %2158 = fmul fast float %2095, %2062
  %2159 = fmul fast float %2096, %2062
  %2160 = fadd fast float %2157, %2154
  %2161 = fadd fast float %2158, %2155
  %2162 = fadd fast float %2159, %2156
  %2163 = fmul fast float %2106, %2063
  %2164 = fmul fast float %2107, %2063
  %2165 = fmul fast float %2108, %2063
  %2166 = fadd fast float %2160, %2163
  %2167 = fadd fast float %2161, %2164
  %2168 = fadd fast float %2162, %2165
  %2169 = fmul fast float %2116, %2064
  %2170 = fmul fast float %2117, %2064
  %2171 = fmul fast float %2118, %2064
  %2172 = fadd fast float %2166, %2169
  %2173 = fadd fast float %2167, %2170
  %2174 = fadd fast float %2168, %2171
  %2175 = fmul fast float %2127, %2065
  %2176 = fmul fast float %2128, %2065
  %2177 = fmul fast float %2129, %2065
  %2178 = fadd fast float %2172, %2175
  %2179 = fadd fast float %2173, %2176
  %2180 = fadd fast float %2174, %2177
  %2181 = fmul fast float %2135, %2066
  %2182 = fmul fast float %2136, %2066
  %2183 = fmul fast float %2137, %2066
  %2184 = fadd fast float %2178, %2181
  %2185 = fadd fast float %2179, %2182
  %2186 = fadd fast float %2180, %2183
  %2187 = fmul fast float %2143, %2067
  %2188 = fmul fast float %2144, %2067
  %2189 = fmul fast float %2145, %2067
  %2190 = fadd fast float %2184, %2187
  %2191 = fadd fast float %2185, %2188
  %2192 = fadd fast float %2186, %2189
  %2193 = fmul fast float %2151, %2068
  %2194 = fmul fast float %2152, %2068
  %2195 = fmul fast float %2153, %2068
  %2196 = fadd fast float %2190, %2193
  %2197 = fadd fast float %2191, %2194
  %2198 = fadd fast float %2192, %2195
  %2199 = fmul fast float %2196, %1903
  %2200 = call float @dx.op.tertiary.f32(i32 46, float %1907, float %2197, float %2199)  ; FMad(a,b,c)
  %2201 = call float @dx.op.tertiary.f32(i32 46, float %1913, float %2198, float %2200)  ; FMad(a,b,c)
  %2202 = fmul fast float %2196, %1904
  %2203 = call float @dx.op.tertiary.f32(i32 46, float %1908, float %2197, float %2202)  ; FMad(a,b,c)
  %2204 = call float @dx.op.tertiary.f32(i32 46, float %1914, float %2198, float %2203)  ; FMad(a,b,c)
  %2205 = fmul fast float %2196, %1905
  %2206 = call float @dx.op.tertiary.f32(i32 46, float %1909, float %2197, float %2205)  ; FMad(a,b,c)
  %2207 = call float @dx.op.tertiary.f32(i32 46, float %1915, float %2198, float %2206)  ; FMad(a,b,c)
  br label %2208

; <label>:2208                                    ; preds = %2019, %2006, %1989, %1979
  %2209 = phi i1 [ true, %2019 ], [ false, %2006 ], [ true, %1989 ], [ false, %1979 ]
  %2210 = phi float [ %2201, %2019 ], [ 0.000000e+00, %2006 ], [ %1999, %1989 ], [ 0.000000e+00, %1979 ]
  %2211 = phi float [ %2204, %2019 ], [ 0.000000e+00, %2006 ], [ %2002, %1989 ], [ 0.000000e+00, %1979 ]
  %2212 = phi float [ %2207, %2019 ], [ 0.000000e+00, %2006 ], [ %2005, %1989 ], [ 0.000000e+00, %1979 ]
  br i1 %2209, label %2213, label %2227, !dx.controlflow.hints !46

; <label>:2213                                    ; preds = %2208
  %2214 = fmul fast float %2210, %1911
  %2215 = fmul fast float %2211, %1911
  %2216 = fmul fast float %2212, %1911
  %2217 = and i32 %1951, 1073741824
  %2218 = icmp eq i32 %2217, 0
  br i1 %2218, label %2223, label %2219, !dx.controlflow.hints !47

; <label>:2219                                    ; preds = %2213
  %2220 = fadd fast float %2214, %1930
  %2221 = fadd fast float %2215, %1931
  %2222 = fadd fast float %2216, %1932
  br label %2227

; <label>:2223                                    ; preds = %2213
  %2224 = fadd fast float %2214, %1933
  %2225 = fadd fast float %2215, %1934
  %2226 = fadd fast float %2216, %1935
  br label %2227

; <label>:2227                                    ; preds = %2223, %2219, %2208
  %2228 = phi i32 [ 1, %2219 ], [ %1929, %2223 ], [ %1929, %2208 ]
  %2229 = phi float [ %2220, %2219 ], [ %1930, %2223 ], [ %1930, %2208 ]
  %2230 = phi float [ %2221, %2219 ], [ %1931, %2223 ], [ %1931, %2208 ]
  %2231 = phi float [ %2222, %2219 ], [ %1932, %2223 ], [ %1932, %2208 ]
  %2232 = phi float [ %1933, %2219 ], [ %2224, %2223 ], [ %1933, %2208 ]
  %2233 = phi float [ %1934, %2219 ], [ %2225, %2223 ], [ %1934, %2208 ]
  %2234 = phi float [ %1935, %2219 ], [ %2226, %2223 ], [ %1935, %2208 ]
  %2235 = add nuw nsw i32 %1936, 1
  %2236 = icmp eq i32 %2235, %1927
  br i1 %2236, label %2237, label %1928

; <label>:2237                                    ; preds = %2227
  br label %2238

; <label>:2238                                    ; preds = %2237, %1898
  %2239 = phi i32 [ 0, %1898 ], [ %2228, %2237 ]
  %2240 = phi float [ 0.000000e+00, %1898 ], [ %2229, %2237 ]
  %2241 = phi float [ 0.000000e+00, %1898 ], [ %2230, %2237 ]
  %2242 = phi float [ 0.000000e+00, %1898 ], [ %2231, %2237 ]
  %2243 = phi float [ 0.000000e+00, %1898 ], [ %2232, %2237 ]
  %2244 = phi float [ 0.000000e+00, %1898 ], [ %2233, %2237 ]
  %2245 = phi float [ 0.000000e+00, %1898 ], [ %2234, %2237 ]
  %2246 = or i32 %2239, %1889
  %2247 = icmp ne i32 %2246, 0
  %2248 = zext i1 %2247 to i32
  %2249 = fadd fast float %2240, %1893
  %2250 = fadd fast float %2241, %1894
  %2251 = fadd fast float %2242, %1895
  %2252 = fadd fast float %2243, %1890
  %2253 = fadd fast float %2244, %1891
  %2254 = fadd fast float %2245, %1892
  %2255 = add nuw nsw i32 %1896, 1
  %2256 = icmp ult i32 %2255, 4
  br i1 %2256, label %1888, label %2257

; <label>:2257                                    ; preds = %2238, %1888
  %2258 = phi i32 [ %1889, %1888 ], [ %2248, %2238 ]
  %2259 = phi float [ %1890, %1888 ], [ %2252, %2238 ]
  %2260 = phi float [ %1891, %1888 ], [ %2253, %2238 ]
  %2261 = phi float [ %1892, %1888 ], [ %2254, %2238 ]
  %2262 = phi float [ %1893, %1888 ], [ %2249, %2238 ]
  %2263 = phi float [ %1894, %1888 ], [ %2250, %2238 ]
  %2264 = phi float [ %1895, %1888 ], [ %2251, %2238 ]
  %2265 = or i32 %2258, %1876
  %2266 = icmp ne i32 %2265, 0
  %2267 = zext i1 %2266 to i32
  %2268 = fadd fast float %2262, %1880
  %2269 = fadd fast float %2263, %1881
  %2270 = fadd fast float %2264, %1882
  %2271 = fadd fast float %2259, %1877
  %2272 = fadd fast float %2260, %1878
  %2273 = fadd fast float %2261, %1879
  br label %2274

; <label>:2274                                    ; preds = %2257, %1875, %1500, %1154, %138
  %2275 = phi float [ %1155, %1154 ], [ 0.000000e+00, %1500 ], [ 0.000000e+00, %138 ], [ %2268, %2257 ], [ %1880, %1875 ]
  %2276 = phi float [ %1156, %1154 ], [ 0.000000e+00, %1500 ], [ 0.000000e+00, %138 ], [ %2269, %2257 ], [ %1881, %1875 ]
  %2277 = phi float [ %1157, %1154 ], [ 0.000000e+00, %1500 ], [ 0.000000e+00, %138 ], [ %2270, %2257 ], [ %1882, %1875 ]
  %2278 = phi float [ %1158, %1154 ], [ 0.000000e+00, %1500 ], [ 0.000000e+00, %138 ], [ %2271, %2257 ], [ %1877, %1875 ]
  %2279 = phi float [ %1159, %1154 ], [ 0.000000e+00, %1500 ], [ 0.000000e+00, %138 ], [ %2272, %2257 ], [ %1878, %1875 ]
  %2280 = phi float [ %1160, %1154 ], [ 0.000000e+00, %1500 ], [ 0.000000e+00, %138 ], [ %2273, %2257 ], [ %1879, %1875 ]
  %2281 = phi i1 [ %1162, %1154 ], [ false, %1500 ], [ false, %138 ], [ true, %2257 ], [ true, %1875 ]
  %2282 = phi i32 [ %1163, %1154 ], [ 0, %1500 ], [ 0, %138 ], [ %2267, %2257 ], [ %1884, %1875 ]
  br i1 %2281, label %2283, label %2309, !dx.controlflow.hints !63

; <label>:2283                                    ; preds = %2274
  %2284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %2285 = icmp eq i32 %2282, 0
  br i1 %2285, label %2286, label %2294, !dx.controlflow.hints !64

; <label>:2286                                    ; preds = %2283
  %2287 = extractvalue %dx.types.CBufRet.f32 %2284, 2
  %2288 = extractvalue %dx.types.CBufRet.f32 %2284, 1
  %2289 = extractvalue %dx.types.CBufRet.f32 %2284, 0
  %2290 = extractvalue %dx.types.CBufRet.f32 %2284, 3
  %2291 = fmul fast float %2290, %2289
  %2292 = fmul fast float %2290, %2288
  %2293 = fmul fast float %2290, %2287
  br label %2294

; <label>:2294                                    ; preds = %2286, %2283
  %2295 = phi float [ %2291, %2286 ], [ %2275, %2283 ]
  %2296 = phi float [ %2292, %2286 ], [ %2276, %2283 ]
  %2297 = phi float [ %2293, %2286 ], [ %2277, %2283 ]
  %2298 = fadd fast float %2295, %2278
  %2299 = fadd fast float %2296, %2279
  %2300 = fadd fast float %2297, %2280
  %2301 = call float @dx.op.dot3.f32(i32 55, float %2298, float %2299, float %2300, float %2298, float %2299, float %2300)  ; Dot3(ax,ay,az,bx,by,bz)
  %2302 = fcmp fast ogt float %2301, 0x3EB0C6F7C0000000
  br i1 %2302, label %2303, label %2309, !dx.controlflow.hints !65

; <label>:2303                                    ; preds = %2294
  %2304 = call float @dx.op.unary.f32(i32 24, float %2301)  ; Sqrt(value)
  %2305 = fdiv fast float 1.000000e+00, %2304
  %2306 = fmul fast float %2305, %2298
  %2307 = fmul fast float %2305, %2299
  %2308 = fmul fast float %2305, %2300
  br label %2315

; <label>:2309                                    ; preds = %2294, %2274
  %2310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %2311 = extractvalue %dx.types.CBufRet.f32 %2310, 0
  %2312 = extractvalue %dx.types.CBufRet.f32 %2310, 1
  %2313 = extractvalue %dx.types.CBufRet.f32 %2310, 2
  %2314 = extractvalue %dx.types.CBufRet.f32 %2310, 3
  br label %2315

; <label>:2315                                    ; preds = %2309, %2303
  %2316 = phi float [ %2304, %2303 ], [ %2314, %2309 ]
  %2317 = phi float [ %2306, %2303 ], [ %2311, %2309 ]
  %2318 = phi float [ %2307, %2303 ], [ %2312, %2309 ]
  %2319 = phi float [ %2308, %2303 ], [ %2313, %2309 ]
  %2320 = fmul fast float %2316, 0x3F91111120000000
  br i1 %40, label %2321, label %2385, !dx.controlflow.hints !66

; <label>:2321                                    ; preds = %2315
  %2322 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2323 = extractvalue %dx.types.CBufRet.i32 %2322, 0
  %2324 = icmp eq i32 %2323, 0
  br i1 %2324, label %2385, label %2325

; <label>:2325                                    ; preds = %2321
  br label %2326

; <label>:2326                                    ; preds = %2326, %2325
  %2327 = phi i32 [ %2377, %2326 ], [ 0, %2325 ]
  %2328 = phi i32 [ %2379, %2326 ], [ 1, %2325 ]
  %2329 = phi i32 [ %2378, %2326 ], [ 0, %2325 ]
  %2330 = shl i32 %2329, 1
  %2331 = add i32 %2330, 6
  %2332 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 %2331)  ; CBufferLoadLegacy(handle,regIndex)
  %2333 = extractvalue %dx.types.CBufRet.i32 %2332, 0
  %2334 = extractvalue %dx.types.CBufRet.i32 %2332, 1
  %2335 = extractvalue %dx.types.CBufRet.i32 %2332, 2
  %2336 = extractvalue %dx.types.CBufRet.i32 %2332, 3
  %2337 = or i32 %2330, 1
  %2338 = add i32 %2337, 6
  %2339 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 %2338)  ; CBufferLoadLegacy(handle,regIndex)
  %2340 = extractvalue %dx.types.CBufRet.i32 %2339, 3
  %2341 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %2342 = extractvalue %dx.types.CBufRet.i32 %2341, 2
  %2343 = extractvalue %dx.types.CBufRet.i32 %2341, 3
  %2344 = shl i32 %2329, 5
  %2345 = add i32 %2343, %2344
  %2346 = xor i32 %2335, %2334
  %2347 = xor i32 %2346, %2342
  %2348 = xor i32 %2347, %2345
  %2349 = extractvalue %dx.types.CBufRet.i32 %2341, 1
  %2350 = xor i32 %2334, %2333
  %2351 = xor i32 %2350, %2349
  %2352 = xor i32 %2351, %2345
  %2353 = extractvalue %dx.types.CBufRet.i32 %2341, 0
  %2354 = xor i32 %2333, -1
  %2355 = xor i32 %2353, %2354
  %2356 = xor i32 %2355, %2345
  %2357 = bitcast i32 %2356 to float
  %2358 = bitcast i32 %2352 to float
  %2359 = bitcast i32 %2348 to float
  %2360 = bitcast i32 %2336 to float
  %2361 = bitcast i32 %2340 to float
  %2362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %2363 = extractvalue %dx.types.CBufRet.f32 %2362, 0
  %2364 = fmul fast float %2363, %2361
  %2365 = fadd fast float %2364, 1.000000e+00
  %2366 = fsub fast float %142, %2357
  %2367 = fsub fast float %146, %2358
  %2368 = fsub fast float %150, %2359
  %2369 = fmul fast float %2365, %2360
  %2370 = fadd fast float %2369, %23
  %2371 = fadd fast float %2369, %24
  %2372 = fadd fast float %2369, %25
  %2373 = call float @dx.op.dot3.f32(i32 55, float %2370, float %2371, float %2372, float %2370, float %2371, float %2372)  ; Dot3(ax,ay,az,bx,by,bz)
  %2374 = call float @dx.op.dot3.f32(i32 55, float %2366, float %2367, float %2368, float %2366, float %2367, float %2368)  ; Dot3(ax,ay,az,bx,by,bz)
  %2375 = fcmp fast ogt float %2373, %2374
  %2376 = select i1 %2375, i32 %2328, i32 0
  %2377 = or i32 %2376, %2327
  %2378 = add i32 %2329, 1
  %2379 = shl i32 %2328, 1
  %2380 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2381 = extractvalue %dx.types.CBufRet.i32 %2380, 0
  %2382 = icmp ult i32 %2378, %2381
  br i1 %2382, label %2326, label %2383

; <label>:2383                                    ; preds = %2326
  %2384 = shl i32 %2377, 16
  br label %2385

; <label>:2385                                    ; preds = %2383, %2321, %2315
  %2386 = phi i32 [ 0, %2315 ], [ 0, %2321 ], [ %2384, %2383 ]
  %2387 = fmul fast float %2317, 3.276700e+04
  %2388 = call float @dx.op.unary.f32(i32 26, float %2387)  ; Round_ne(value)
  %2389 = fptosi float %2388 to i32
  %2390 = call i32 @dx.op.binary.i32(i32 37, i32 %2389, i32 -32767)  ; IMax(a,b)
  %2391 = call i32 @dx.op.binary.i32(i32 38, i32 %2390, i32 32767)  ; IMin(a,b)
  %2392 = and i32 %2391, 65535
  %2393 = fmul fast float %2318, 3.276700e+04
  %2394 = call float @dx.op.unary.f32(i32 26, float %2393)  ; Round_ne(value)
  %2395 = fptosi float %2394 to i32
  %2396 = call i32 @dx.op.binary.i32(i32 37, i32 %2395, i32 -32767)  ; IMax(a,b)
  %2397 = call i32 @dx.op.binary.i32(i32 38, i32 %2396, i32 32767)  ; IMin(a,b)
  %2398 = shl i32 %2397, 16
  %2399 = or i32 %2398, %2392
  %2400 = fmul fast float %2319, 3.276700e+04
  %2401 = call float @dx.op.unary.f32(i32 26, float %2400)  ; Round_ne(value)
  %2402 = fptosi float %2401 to i32
  %2403 = call i32 @dx.op.binary.i32(i32 37, i32 %2402, i32 -32767)  ; IMax(a,b)
  %2404 = call i32 @dx.op.binary.i32(i32 38, i32 %2403, i32 32767)  ; IMin(a,b)
  %2405 = and i32 %2404, 65535
  %2406 = or i32 %2405, %2386
  %2407 = bitcast float %2320 to i32
  %2408 = mul i32 %13, 12
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %2408, i32 undef, i32 %2399, i32 %2406, i32 %2407, i32 undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %2409 = and i32 %27, 65535
  %2410 = shl i32 %33, 2
  %2411 = and i32 %2410, 67108860
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %2411, i32 undef, i32 %2409, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %2412

; <label>:2412                                    ; preds = %2385, %0
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

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!25}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !20, !23, null}
!5 = !{!6, !8, !10, !11, !12, !14, !16, !18, !19}
!6 = !{i32 0, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 3, i32 1, i32 12, i32 0, !7}
!7 = !{i32 1, i32 4}
!8 = !{i32 1, %"class.StructuredBuffer<ReactiveMotionModelInfoGpu>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i32 0, !9}
!9 = !{i32 1, i32 64}
!10 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!11 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!12 = !{i32 4, %"class.StructuredBuffer<VectorFieldGpu>"* undef, !"", i32 0, i32 8, i32 1, i32 12, i32 0, !13}
!13 = !{i32 1, i32 88}
!14 = !{i32 5, %"class.StructuredBuffer<VectorSubFieldGpu>"* undef, !"", i32 0, i32 9, i32 1, i32 12, i32 0, !15}
!15 = !{i32 1, i32 32}
!16 = !{i32 6, %"class.StructuredBuffer<vector<unsigned int, 4> >"* undef, !"", i32 0, i32 10, i32 1, i32 12, i32 0, !17}
!17 = !{i32 1, i32 16}
!18 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 11, i32 1, i32 11, i32 0, null}
!19 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 12, i32 1, i32 11, i32 0, null}
!20 = !{!21, !22}
!21 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!22 = !{i32 1, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!23 = !{!24}
!24 = !{i32 0, %ReactiveMotionCalcConsts* undef, !"", i32 0, i32 1, i32 1, i32 576, null}
!25 = !{void ()* @cs_reactivemotion_calc_models_indirect, !"cs_reactivemotion_calc_models_indirect", null, !4, !26}
!26 = !{i32 0, i64 272, i32 4, !27}
!27 = !{i32 64, i32 1, i32 1}
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
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}

