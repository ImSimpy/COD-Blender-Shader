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
; shader hash: 221aec2b622770523973a09941f0c1bf
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
;                                   texture  struct         r/o      T0             t0     1
;                                   texture    byte         r/o      T1             t1     1
;                                   texture    byte         r/o      T2             t2     1
;                                   texture  struct         r/o      T3             t8     1
;                                   texture  struct         r/o      T4             t9     1
;                                   texture  struct         r/o      T5            t10     1
;                                   texture    byte         r/o      T6            t11     1
;                                   texture    byte         r/o      T7            t12     1
;                                       UAV    byte         r/w      U0             u0     1
;                                       UAV    byte         r/w      U1             u1     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
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

define void @cs_reactivemotion_calc_models() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %13 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %14 = extractvalue %dx.types.CBufRet.i32 %13, 1
  %15 = icmp ult i32 %12, %14
  br i1 %15, label %16, label %2408, !dx.controlflow.hints !26

; <label>:16                                      ; preds = %0
  %17 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %12, i32 12)  ; BufferLoad(srv,index,wot)
  %18 = extractvalue %dx.types.ResRet.f32 %17, 0
  %19 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %12, i32 16)  ; BufferLoad(srv,index,wot)
  %20 = extractvalue %dx.types.ResRet.f32 %19, 0
  %21 = extractvalue %dx.types.ResRet.f32 %19, 1
  %22 = extractvalue %dx.types.ResRet.f32 %19, 2
  %23 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %12, i32 28)  ; BufferLoad(srv,index,wot)
  %24 = extractvalue %dx.types.ResRet.i32 %23, 0
  %25 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %12, i32 32)  ; BufferLoad(srv,index,wot)
  %26 = extractvalue %dx.types.ResRet.f32 %25, 0
  %27 = extractvalue %dx.types.ResRet.f32 %25, 1
  %28 = extractvalue %dx.types.ResRet.f32 %25, 2
  %29 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %12, i32 44)  ; BufferLoad(srv,index,wot)
  %30 = extractvalue %dx.types.ResRet.i32 %29, 0
  %31 = and i32 %30, 536870912
  %32 = icmp ne i32 %31, 0
  %33 = and i32 %30, 1073741824
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %32, true
  %36 = icmp sgt i32 %30, -1
  %37 = and i1 %36, %35
  %38 = select i1 %34, i32 %12, i32 -1
  %39 = and i32 %30, 16777215
  %40 = icmp eq i32 %39, 16777215
  br i1 %40, label %134, label %41, !dx.controlflow.hints !27

; <label>:41                                      ; preds = %16
  %42 = icmp eq i32 %38, -1
  br i1 %42, label %56, label %43, !dx.controlflow.hints !28

; <label>:43                                      ; preds = %41
  %44 = mul i32 %38, 24
  %45 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %44, i32 undef)  ; BufferLoad(srv,index,wot)
  %46 = extractvalue %dx.types.ResRet.f32 %45, 0
  %47 = extractvalue %dx.types.ResRet.f32 %45, 1
  %48 = extractvalue %dx.types.ResRet.f32 %45, 2
  %49 = add i32 %44, 12
  %50 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %49, i32 undef)  ; BufferLoad(srv,index,wot)
  %51 = extractvalue %dx.types.ResRet.i32 %50, 0
  %52 = extractvalue %dx.types.ResRet.i32 %50, 1
  %53 = add i32 %44, 20
  %54 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %53, i32 undef)  ; BufferLoad(srv,index,wot)
  %55 = extractvalue %dx.types.ResRet.i32 %54, 0
  br label %69

; <label>:56                                      ; preds = %41
  %57 = mul nuw nsw i32 %39, 24
  %58 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %57, i32 undef)  ; BufferLoad(srv,index,wot)
  %59 = extractvalue %dx.types.ResRet.f32 %58, 0
  %60 = extractvalue %dx.types.ResRet.f32 %58, 1
  %61 = extractvalue %dx.types.ResRet.f32 %58, 2
  %62 = add nuw nsw i32 %57, 12
  %63 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %62, i32 undef)  ; BufferLoad(srv,index,wot)
  %64 = extractvalue %dx.types.ResRet.i32 %63, 0
  %65 = extractvalue %dx.types.ResRet.i32 %63, 1
  %66 = add nuw nsw i32 %57, 20
  %67 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %66, i32 undef)  ; BufferLoad(srv,index,wot)
  %68 = extractvalue %dx.types.ResRet.i32 %67, 0
  br label %69

; <label>:69                                      ; preds = %56, %43
  %70 = phi i32 [ %55, %43 ], [ %68, %56 ]
  %71 = phi i32 [ %51, %43 ], [ %64, %56 ]
  %72 = phi i32 [ %52, %43 ], [ %65, %56 ]
  %73 = phi float [ %46, %43 ], [ %59, %56 ]
  %74 = phi float [ %47, %43 ], [ %60, %56 ]
  %75 = phi float [ %48, %43 ], [ %61, %56 ]
  %76 = bitcast float %73 to i32
  %77 = bitcast float %74 to i32
  %78 = bitcast float %75 to i32
  %79 = sitofp i32 %76 to float
  %80 = sitofp i32 %77 to float
  %81 = sitofp i32 %78 to float
  %82 = fmul fast float %79, 0x3F30000000000000
  %83 = fmul fast float %80, 0x3F30000000000000
  %84 = fmul fast float %81, 0x3F30000000000000
  %85 = and i32 %71, 65535
  %86 = uitofp i32 %85 to float
  %87 = lshr i32 %71, 16
  %88 = uitofp i32 %87 to float
  %89 = and i32 %72, 65535
  %90 = uitofp i32 %89 to float
  %91 = lshr i32 %72, 16
  %92 = uitofp i32 %91 to float
  %93 = fmul fast float %86, 0x3F00001000000000
  %94 = fmul fast float %88, 0x3F00001000000000
  %95 = fmul fast float %90, 0x3F00001000000000
  %96 = fmul fast float %92, 0x3F00001000000000
  %97 = fadd fast float %93, -1.000000e+00
  %98 = fadd fast float %94, -1.000000e+00
  %99 = fadd fast float %95, -1.000000e+00
  %100 = fadd fast float %96, -1.000000e+00
  %101 = and i32 %70, 65535
  %102 = call float @dx.op.legacyF16ToF32(i32 131, i32 %101)  ; LegacyF16ToF32(value)
  %103 = fmul fast float %97, %97
  %104 = fmul fast float %98, %98
  %105 = fmul fast float %99, %99
  %106 = fmul fast float %100, %100
  %107 = fadd fast float %103, %104
  %108 = fadd fast float %107, %105
  %109 = fadd fast float %108, %106
  %110 = fdiv fast float 2.000000e+00, %109
  %111 = fmul fast float %110, %97
  %112 = fmul fast float %111, %98
  %113 = fmul fast float %111, %99
  %114 = fmul fast float %111, %100
  %115 = fmul fast float %110, %98
  %116 = fmul fast float %115, %99
  %117 = fmul fast float %115, %100
  %118 = fmul fast float %100, %99
  %119 = fmul fast float %118, %110
  %120 = fadd fast float %105, %104
  %121 = fmul fast float %120, %110
  %122 = fsub fast float 1.000000e+00, %121
  %123 = fadd fast float %112, %119
  %124 = fsub fast float %113, %117
  %125 = fsub fast float %112, %119
  %126 = fadd fast float %105, %103
  %127 = fmul fast float %126, %110
  %128 = fsub fast float 1.000000e+00, %127
  %129 = fadd fast float %116, %114
  %130 = fadd fast float %113, %117
  %131 = fsub fast float %116, %114
  %132 = fmul fast float %110, %107
  %133 = fsub fast float 1.000000e+00, %132
  br label %134

; <label>:134                                     ; preds = %69, %16
  %135 = phi float [ %122, %69 ], [ 1.000000e+00, %16 ]
  %136 = phi float [ %125, %69 ], [ 0.000000e+00, %16 ]
  %137 = phi float [ %130, %69 ], [ 0.000000e+00, %16 ]
  %138 = phi float [ %82, %69 ], [ 0.000000e+00, %16 ]
  %139 = phi float [ %123, %69 ], [ 0.000000e+00, %16 ]
  %140 = phi float [ %128, %69 ], [ 1.000000e+00, %16 ]
  %141 = phi float [ %131, %69 ], [ 0.000000e+00, %16 ]
  %142 = phi float [ %83, %69 ], [ 0.000000e+00, %16 ]
  %143 = phi float [ %124, %69 ], [ 0.000000e+00, %16 ]
  %144 = phi float [ %129, %69 ], [ 0.000000e+00, %16 ]
  %145 = phi float [ %133, %69 ], [ 1.000000e+00, %16 ]
  %146 = phi float [ %84, %69 ], [ 0.000000e+00, %16 ]
  %147 = phi float [ %102, %69 ], [ 1.000000e+00, %16 ]
  %148 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %149 = extractvalue %dx.types.CBufRet.i32 %148, 1
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %2270, label %151, !dx.controlflow.hints !29

; <label>:151                                     ; preds = %134
  br i1 %32, label %152, label %1160, !dx.controlflow.hints !30

; <label>:152                                     ; preds = %151
  %153 = call float @dx.op.binary.f32(i32 35, float %20, float %21)  ; FMax(a,b)
  %154 = call float @dx.op.binary.f32(i32 36, float %153, float %22)  ; FMin(a,b)
  %155 = call float @dx.op.binary.f32(i32 36, float %20, float %21)  ; FMin(a,b)
  %156 = call float @dx.op.binary.f32(i32 35, float %155, float %154)  ; FMax(a,b)
  %157 = call float @dx.op.binary.f32(i32 35, float %21, float %22)  ; FMax(a,b)
  %158 = call float @dx.op.binary.f32(i32 35, float %20, float %157)  ; FMax(a,b)
  %159 = fmul fast float %156, %147
  %160 = fsub fast float %158, %159
  %161 = fcmp fast oeq float %20, %158
  br i1 %161, label %162, label %165, !dx.controlflow.hints !31

; <label>:162                                     ; preds = %152
  %163 = fsub fast float %26, %160
  %164 = fadd fast float %160, %26
  br label %173

; <label>:165                                     ; preds = %152
  %166 = fcmp fast oeq float %21, %158
  br i1 %166, label %167, label %170, !dx.controlflow.hints !32

; <label>:167                                     ; preds = %165
  %168 = fsub fast float %27, %160
  %169 = fadd fast float %160, %27
  br label %173

; <label>:170                                     ; preds = %165
  %171 = fsub fast float %28, %160
  %172 = fadd fast float %160, %28
  br label %173

; <label>:173                                     ; preds = %170, %167, %162
  %174 = phi float [ %163, %162 ], [ %26, %167 ], [ %26, %170 ]
  %175 = phi float [ %27, %162 ], [ %168, %167 ], [ %27, %170 ]
  %176 = phi float [ %28, %162 ], [ %28, %167 ], [ %171, %170 ]
  %177 = phi float [ %164, %162 ], [ %26, %167 ], [ %26, %170 ]
  %178 = phi float [ %27, %162 ], [ %169, %167 ], [ %27, %170 ]
  %179 = phi float [ %28, %162 ], [ %28, %167 ], [ %172, %170 ]
  %180 = fmul fast float %174, %135
  %181 = call float @dx.op.tertiary.f32(i32 46, float %139, float %175, float %180)  ; FMad(a,b,c)
  %182 = call float @dx.op.tertiary.f32(i32 46, float %143, float %176, float %181)  ; FMad(a,b,c)
  %183 = fmul fast float %174, %136
  %184 = call float @dx.op.tertiary.f32(i32 46, float %140, float %175, float %183)  ; FMad(a,b,c)
  %185 = call float @dx.op.tertiary.f32(i32 46, float %144, float %176, float %184)  ; FMad(a,b,c)
  %186 = fmul fast float %174, %137
  %187 = call float @dx.op.tertiary.f32(i32 46, float %141, float %175, float %186)  ; FMad(a,b,c)
  %188 = call float @dx.op.tertiary.f32(i32 46, float %145, float %176, float %187)  ; FMad(a,b,c)
  %189 = fmul fast float %177, %135
  %190 = call float @dx.op.tertiary.f32(i32 46, float %139, float %178, float %189)  ; FMad(a,b,c)
  %191 = call float @dx.op.tertiary.f32(i32 46, float %143, float %179, float %190)  ; FMad(a,b,c)
  %192 = fmul fast float %177, %136
  %193 = call float @dx.op.tertiary.f32(i32 46, float %140, float %178, float %192)  ; FMad(a,b,c)
  %194 = call float @dx.op.tertiary.f32(i32 46, float %144, float %179, float %193)  ; FMad(a,b,c)
  %195 = fmul fast float %177, %137
  %196 = call float @dx.op.tertiary.f32(i32 46, float %141, float %178, float %195)  ; FMad(a,b,c)
  %197 = call float @dx.op.tertiary.f32(i32 46, float %145, float %179, float %196)  ; FMad(a,b,c)
  %198 = fsub fast float %191, %182
  %199 = fsub fast float %194, %185
  %200 = fsub fast float %197, %188
  %201 = call float @dx.op.dot3.f32(i32 55, float %198, float %199, float %200, float %198, float %199, float %200)  ; Dot3(ax,ay,az,bx,by,bz)
  %202 = fcmp fast ogt float %201, 0x3EB0C6F7C0000000
  br i1 %202, label %203, label %209, !dx.controlflow.hints !33

; <label>:203                                     ; preds = %173
  %204 = call float @dx.op.unary.f32(i32 24, float %201)  ; Sqrt(value)
  %205 = fdiv fast float 1.000000e+00, %204
  %206 = fmul fast float %205, %198
  %207 = fmul fast float %205, %199
  %208 = fmul fast float %205, %200
  br label %209

; <label>:209                                     ; preds = %203, %173
  %210 = phi float [ %206, %203 ], [ %198, %173 ]
  %211 = phi float [ %207, %203 ], [ %199, %173 ]
  %212 = phi float [ %208, %203 ], [ %200, %173 ]
  %213 = phi float [ %204, %203 ], [ %201, %173 ]
  %214 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %213)  ; FMax(a,b)
  %215 = fadd fast float %182, %138
  %216 = fadd fast float %185, %142
  %217 = fadd fast float %188, %146
  %218 = fptosi float %138 to i32
  %219 = fptosi float %142 to i32
  %220 = add i32 %218, 130048
  %221 = add i32 %219, 130048
  %222 = ashr i32 %220, 10
  %223 = ashr i32 %221, 10
  %224 = or i32 %223, %222
  %225 = icmp ult i32 %224, 256
  br i1 %225, label %226, label %1150, !dx.controlflow.hints !34

; <label>:226                                     ; preds = %209
  %227 = shl nsw i32 %222, 8
  %228 = add nsw i32 %223, %227
  %229 = and i32 %228, -4
  %230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %229, i32 undef)  ; BufferLoad(srv,index,wot)
  %231 = extractvalue %dx.types.ResRet.i32 %230, 0
  %232 = shl nsw i32 %223, 3
  %233 = and i32 %232, 24
  %234 = lshr i32 %231, %233
  %235 = and i32 %234, 255
  %236 = shl i32 %228, 3
  %237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %236, i32 undef)  ; BufferLoad(srv,index,wot)
  %238 = extractvalue %dx.types.ResRet.i32 %237, 0
  %239 = extractvalue %dx.types.ResRet.i32 %237, 1
  %240 = icmp ult i32 %235, 4
  br i1 %240, label %241, label %246, !dx.controlflow.hints !35

; <label>:241                                     ; preds = %226
  %242 = shl i32 %234, 3
  %243 = and i32 %242, 24
  %244 = shl i32 -1, %243
  %245 = or i32 %244, %238
  br label %253

; <label>:246                                     ; preds = %226
  %247 = icmp ult i32 %235, 8
  br i1 %247, label %248, label %253, !dx.controlflow.hints !36

; <label>:248                                     ; preds = %246
  %249 = shl i32 %234, 3
  %250 = and i32 %249, 24
  %251 = shl i32 -1, %250
  %252 = or i32 %251, %239
  br label %253

; <label>:253                                     ; preds = %248, %246, %241
  %254 = phi i32 [ %245, %241 ], [ %238, %248 ], [ %238, %246 ]
  %255 = phi i32 [ -1, %241 ], [ %252, %248 ], [ %239, %246 ]
  %256 = icmp eq i32 %235, 0
  br i1 %256, label %1150, label %257, !dx.controlflow.hints !37

; <label>:257                                     ; preds = %253
  br label %258

; <label>:258                                     ; preds = %669, %257
  %259 = phi i32 [ %670, %669 ], [ 0, %257 ]
  %260 = phi float [ %671, %669 ], [ 0.000000e+00, %257 ]
  %261 = phi float [ %672, %669 ], [ 0.000000e+00, %257 ]
  %262 = phi float [ %673, %669 ], [ 0.000000e+00, %257 ]
  %263 = phi float [ %674, %669 ], [ 0.000000e+00, %257 ]
  %264 = phi float [ %675, %669 ], [ 0.000000e+00, %257 ]
  %265 = phi float [ %676, %669 ], [ 0.000000e+00, %257 ]
  %266 = phi i32 [ %677, %669 ], [ 0, %257 ]
  %267 = phi i32 [ %678, %669 ], [ 0, %257 ]
  %268 = icmp ult i32 %267, %235
  br i1 %268, label %269, label %680, !dx.controlflow.hints !38

; <label>:269                                     ; preds = %258
  %270 = shl i32 %267, 3
  %271 = lshr i32 %254, %270
  %272 = and i32 %271, 255
  %273 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %272, i32 0)  ; BufferLoad(srv,index,wot)
  %274 = extractvalue %dx.types.ResRet.f32 %273, 0
  %275 = extractvalue %dx.types.ResRet.f32 %273, 1
  %276 = extractvalue %dx.types.ResRet.f32 %273, 2
  %277 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %272, i32 16)  ; BufferLoad(srv,index,wot)
  %278 = extractvalue %dx.types.ResRet.f32 %277, 0
  %279 = extractvalue %dx.types.ResRet.f32 %277, 1
  %280 = extractvalue %dx.types.ResRet.f32 %277, 2
  %281 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %272, i32 28)  ; BufferLoad(srv,index,wot)
  %282 = extractvalue %dx.types.ResRet.f32 %281, 0
  %283 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %272, i32 32)  ; BufferLoad(srv,index,wot)
  %284 = extractvalue %dx.types.ResRet.f32 %283, 0
  %285 = extractvalue %dx.types.ResRet.f32 %283, 1
  %286 = extractvalue %dx.types.ResRet.f32 %283, 2
  %287 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %272, i32 44)  ; BufferLoad(srv,index,wot)
  %288 = extractvalue %dx.types.ResRet.f32 %287, 0
  %289 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %272, i32 48)  ; BufferLoad(srv,index,wot)
  %290 = extractvalue %dx.types.ResRet.f32 %289, 0
  %291 = extractvalue %dx.types.ResRet.f32 %289, 1
  %292 = extractvalue %dx.types.ResRet.f32 %289, 2
  %293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %272, i32 60)  ; BufferLoad(srv,index,wot)
  %294 = extractvalue %dx.types.ResRet.i32 %293, 0
  %295 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %272, i32 64)  ; BufferLoad(srv,index,wot)
  %296 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %272, i32 76)  ; BufferLoad(srv,index,wot)
  %297 = and i32 %294, 16777216
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %669, label %299, !dx.controlflow.hints !39

; <label>:299                                     ; preds = %269
  %300 = extractvalue %dx.types.ResRet.f32 %296, 2
  %301 = extractvalue %dx.types.ResRet.f32 %296, 1
  %302 = extractvalue %dx.types.ResRet.f32 %296, 0
  %303 = extractvalue %dx.types.ResRet.f32 %295, 2
  %304 = extractvalue %dx.types.ResRet.f32 %295, 1
  %305 = extractvalue %dx.types.ResRet.f32 %295, 0
  %306 = fsub fast float %302, %305
  %307 = fsub fast float %301, %304
  %308 = fsub fast float %300, %303
  %309 = call float @dx.op.binary.f32(i32 35, float %307, float %308)  ; FMax(a,b)
  %310 = call float @dx.op.binary.f32(i32 35, float %306, float %309)  ; FMax(a,b)
  %311 = fmul fast float %288, 5.000000e-01
  %312 = fmul fast float %311, %310
  %313 = fadd fast float %312, %159
  %314 = fsub fast float %290, %215
  %315 = fsub fast float %291, %216
  %316 = fsub fast float %292, %217
  %317 = call float @dx.op.dot3.f32(i32 55, float %314, float %315, float %316, float %210, float %211, float %212)  ; Dot3(ax,ay,az,bx,by,bz)
  %318 = fsub fast float -0.000000e+00, %313
  %319 = fcmp fast olt float %317, %318
  %320 = fadd fast float %313, %214
  %321 = fcmp fast ogt float %317, %320
  %322 = or i1 %319, %321
  br i1 %322, label %332, label %323, !dx.controlflow.hints !40

; <label>:323                                     ; preds = %299
  %324 = call float @dx.op.binary.f32(i32 35, float %317, float 0.000000e+00)  ; FMax(a,b)
  %325 = call float @dx.op.binary.f32(i32 36, float %324, float %214)  ; FMin(a,b)
  %326 = fmul fast float %325, %210
  %327 = fmul fast float %325, %211
  %328 = fmul fast float %325, %212
  %329 = fadd fast float %326, %215
  %330 = fadd fast float %327, %216
  %331 = fadd fast float %328, %217
  br label %332

; <label>:332                                     ; preds = %323, %299
  %333 = phi i1 [ true, %323 ], [ false, %299 ]
  %334 = phi float [ %329, %323 ], [ 0.000000e+00, %299 ]
  %335 = phi float [ %330, %323 ], [ 0.000000e+00, %299 ]
  %336 = phi float [ %331, %323 ], [ 0.000000e+00, %299 ]
  br i1 %333, label %337, label %669, !dx.controlflow.hints !41

; <label>:337                                     ; preds = %332
  %338 = and i32 %294, 4095
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %652, label %340

; <label>:340                                     ; preds = %337
  %341 = and i32 %294, 4095
  br label %342

; <label>:342                                     ; preds = %641, %340
  %343 = phi i32 [ %642, %641 ], [ 0, %340 ]
  %344 = phi float [ %643, %641 ], [ 0.000000e+00, %340 ]
  %345 = phi float [ %644, %641 ], [ 0.000000e+00, %340 ]
  %346 = phi float [ %645, %641 ], [ 0.000000e+00, %340 ]
  %347 = phi float [ %646, %641 ], [ 0.000000e+00, %340 ]
  %348 = phi float [ %647, %641 ], [ 0.000000e+00, %340 ]
  %349 = phi float [ %648, %641 ], [ 0.000000e+00, %340 ]
  %350 = phi i32 [ %649, %641 ], [ 0, %340 ]
  %351 = lshr i32 %294, 12
  %352 = and i32 %351, 4095
  %353 = add nuw nsw i32 %350, %352
  %354 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %353, i32 0)  ; BufferLoad(srv,index,wot)
  %355 = extractvalue %dx.types.ResRet.f32 %354, 0
  %356 = extractvalue %dx.types.ResRet.f32 %354, 1
  %357 = extractvalue %dx.types.ResRet.f32 %354, 2
  %358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %353, i32 12)  ; BufferLoad(srv,index,wot)
  %359 = extractvalue %dx.types.ResRet.i32 %358, 0
  %360 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %353, i32 16)  ; BufferLoad(srv,index,wot)
  %361 = extractvalue %dx.types.ResRet.f32 %360, 0
  %362 = extractvalue %dx.types.ResRet.f32 %360, 1
  %363 = extractvalue %dx.types.ResRet.f32 %360, 2
  %364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %353, i32 28)  ; BufferLoad(srv,index,wot)
  %365 = extractvalue %dx.types.ResRet.i32 %364, 0
  %366 = icmp slt i32 %365, 0
  %367 = fsub fast float %334, %290
  %368 = fsub fast float %335, %291
  %369 = fsub fast float %336, %292
  %370 = fmul fast float %367, %274
  %371 = call float @dx.op.tertiary.f32(i32 46, float %275, float %368, float %370)  ; FMad(a,b,c)
  %372 = call float @dx.op.tertiary.f32(i32 46, float %276, float %369, float %371)  ; FMad(a,b,c)
  %373 = fmul fast float %367, %278
  %374 = call float @dx.op.tertiary.f32(i32 46, float %279, float %368, float %373)  ; FMad(a,b,c)
  %375 = call float @dx.op.tertiary.f32(i32 46, float %280, float %369, float %374)  ; FMad(a,b,c)
  %376 = fmul fast float %367, %284
  %377 = call float @dx.op.tertiary.f32(i32 46, float %285, float %368, float %376)  ; FMad(a,b,c)
  %378 = call float @dx.op.tertiary.f32(i32 46, float %286, float %369, float %377)  ; FMad(a,b,c)
  %379 = fmul fast float %355, %288
  %380 = fmul fast float %356, %288
  %381 = fmul fast float %357, %288
  %382 = fmul fast float %379, 5.000000e-01
  %383 = fmul fast float %380, 5.000000e-01
  %384 = fmul fast float %381, 5.000000e-01
  %385 = fadd fast float %382, 0xBF50624DE0000000
  %386 = fadd fast float %383, 0xBF50624DE0000000
  %387 = fadd fast float %384, 0xBF50624DE0000000
  %388 = fcmp fast ogt float %372, %385
  %389 = fcmp fast ogt float %375, %386
  %390 = fcmp fast ogt float %378, %387
  %391 = or i1 %388, %389
  %392 = or i1 %391, %390
  br i1 %366, label %393, label %420, !dx.controlflow.hints !42

; <label>:393                                     ; preds = %342
  %394 = fsub fast float 0x3F50624DE0000000, %382
  %395 = fsub fast float 0x3F50624DE0000000, %383
  %396 = fsub fast float 0x3F50624DE0000000, %384
  %397 = fcmp fast olt float %372, %394
  %398 = fcmp fast olt float %375, %395
  %399 = fcmp fast olt float %378, %396
  %400 = or i1 %397, %398
  %401 = or i1 %400, %399
  %402 = or i1 %392, %401
  br i1 %402, label %622, label %403, !dx.controlflow.hints !43

; <label>:403                                     ; preds = %393
  %404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %359, i32 0)  ; BufferLoad(srv,index,wot)
  %405 = extractvalue %dx.types.ResRet.i32 %404, 0
  %406 = extractvalue %dx.types.ResRet.i32 %404, 1
  %407 = extractvalue %dx.types.ResRet.i32 %404, 2
  %408 = bitcast i32 %405 to float
  %409 = bitcast i32 %406 to float
  %410 = bitcast i32 %407 to float
  %411 = fmul fast float %408, %274
  %412 = call float @dx.op.tertiary.f32(i32 46, float %278, float %409, float %411)  ; FMad(a,b,c)
  %413 = call float @dx.op.tertiary.f32(i32 46, float %284, float %410, float %412)  ; FMad(a,b,c)
  %414 = fmul fast float %408, %275
  %415 = call float @dx.op.tertiary.f32(i32 46, float %279, float %409, float %414)  ; FMad(a,b,c)
  %416 = call float @dx.op.tertiary.f32(i32 46, float %285, float %410, float %415)  ; FMad(a,b,c)
  %417 = fmul fast float %408, %276
  %418 = call float @dx.op.tertiary.f32(i32 46, float %280, float %409, float %417)  ; FMad(a,b,c)
  %419 = call float @dx.op.tertiary.f32(i32 46, float %286, float %410, float %418)  ; FMad(a,b,c)
  br label %622

; <label>:420                                     ; preds = %342
  %421 = fmul fast float %379, -5.000000e-01
  %422 = fmul fast float %380, -5.000000e-01
  %423 = fmul fast float %381, -5.000000e-01
  %424 = fadd fast float %421, 0x3F50624DE0000000
  %425 = fadd fast float %422, 0x3F50624DE0000000
  %426 = fadd fast float %423, 0x3F50624DE0000000
  %427 = fcmp fast olt float %372, %424
  %428 = fcmp fast olt float %375, %425
  %429 = fcmp fast olt float %378, %426
  %430 = or i1 %427, %428
  %431 = or i1 %430, %429
  %432 = or i1 %392, %431
  br i1 %432, label %622, label %433, !dx.controlflow.hints !43

; <label>:433                                     ; preds = %420
  %434 = and i32 %365, 1023
  %435 = lshr i32 %365, 10
  %436 = and i32 %435, 1023
  %437 = lshr i32 %365, 20
  %438 = and i32 %437, 1023
  %439 = add nuw nsw i32 %434, 1
  %440 = add nuw nsw i32 %436, 1
  %441 = fsub fast float %372, %421
  %442 = fsub fast float %375, %422
  %443 = fsub fast float %378, %423
  %444 = fmul fast float %361, %288
  %445 = fmul fast float %362, %288
  %446 = fmul fast float %363, %288
  %447 = fdiv fast float 1.000000e+00, %444
  %448 = fdiv fast float 1.000000e+00, %445
  %449 = fdiv fast float 1.000000e+00, %446
  %450 = fmul fast float %447, %441
  %451 = fmul fast float %448, %442
  %452 = fmul fast float %449, %443
  %453 = call float @dx.op.unary.f32(i32 27, float %450)  ; Round_ni(value)
  %454 = call float @dx.op.unary.f32(i32 27, float %451)  ; Round_ni(value)
  %455 = call float @dx.op.unary.f32(i32 27, float %452)  ; Round_ni(value)
  %456 = fptosi float %453 to i32
  %457 = fptosi float %454 to i32
  %458 = fptosi float %455 to i32
  %459 = call i32 @dx.op.binary.i32(i32 37, i32 %456, i32 0)  ; IMax(a,b)
  %460 = call i32 @dx.op.binary.i32(i32 37, i32 %457, i32 0)  ; IMax(a,b)
  %461 = call i32 @dx.op.binary.i32(i32 37, i32 %458, i32 0)  ; IMax(a,b)
  %462 = call i32 @dx.op.binary.i32(i32 38, i32 %459, i32 %434)  ; IMin(a,b)
  %463 = call i32 @dx.op.binary.i32(i32 38, i32 %460, i32 %436)  ; IMin(a,b)
  %464 = call i32 @dx.op.binary.i32(i32 38, i32 %461, i32 %438)  ; IMin(a,b)
  %465 = call float @dx.op.unary.f32(i32 22, float %450)  ; Frc(value)
  %466 = call float @dx.op.unary.f32(i32 22, float %451)  ; Frc(value)
  %467 = call float @dx.op.unary.f32(i32 22, float %452)  ; Frc(value)
  %468 = fsub fast float 1.000000e+00, %466
  %469 = fsub fast float 1.000000e+00, %467
  %470 = fmul fast float %469, %468
  %471 = fmul fast float %468, %467
  %472 = fmul fast float %469, %466
  %473 = fmul fast float %467, %466
  %474 = fsub fast float 1.000000e+00, %465
  %475 = fmul fast float %470, %474
  %476 = fmul fast float %471, %474
  %477 = fmul fast float %472, %474
  %478 = fmul fast float %473, %474
  %479 = fmul fast float %470, %465
  %480 = fmul fast float %471, %465
  %481 = fmul fast float %472, %465
  %482 = fmul fast float %473, %465
  %483 = call i32 @dx.op.binary.i32(i32 40, i32 %462, i32 %434)  ; UMin(a,b)
  %484 = call i32 @dx.op.binary.i32(i32 40, i32 %463, i32 %436)  ; UMin(a,b)
  %485 = call i32 @dx.op.binary.i32(i32 40, i32 %464, i32 %438)  ; UMin(a,b)
  %486 = mul i32 %485, %440
  %487 = add i32 %486, %484
  %488 = mul i32 %487, %439
  %489 = add i32 %483, %359
  %490 = add i32 %489, %488
  %491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %490, i32 0)  ; BufferLoad(srv,index,wot)
  %492 = extractvalue %dx.types.ResRet.i32 %491, 0
  %493 = extractvalue %dx.types.ResRet.i32 %491, 1
  %494 = extractvalue %dx.types.ResRet.i32 %491, 2
  %495 = bitcast i32 %492 to float
  %496 = bitcast i32 %493 to float
  %497 = bitcast i32 %494 to float
  %498 = add i32 %464, 1
  %499 = call i32 @dx.op.binary.i32(i32 40, i32 %498, i32 %438)  ; UMin(a,b)
  %500 = mul i32 %499, %440
  %501 = add i32 %500, %484
  %502 = mul i32 %501, %439
  %503 = add i32 %489, %502
  %504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %503, i32 0)  ; BufferLoad(srv,index,wot)
  %505 = extractvalue %dx.types.ResRet.i32 %504, 0
  %506 = extractvalue %dx.types.ResRet.i32 %504, 1
  %507 = extractvalue %dx.types.ResRet.i32 %504, 2
  %508 = bitcast i32 %505 to float
  %509 = bitcast i32 %506 to float
  %510 = bitcast i32 %507 to float
  %511 = add i32 %463, 1
  %512 = call i32 @dx.op.binary.i32(i32 40, i32 %511, i32 %436)  ; UMin(a,b)
  %513 = add i32 %486, %512
  %514 = mul i32 %513, %439
  %515 = add i32 %489, %514
  %516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %515, i32 0)  ; BufferLoad(srv,index,wot)
  %517 = extractvalue %dx.types.ResRet.i32 %516, 0
  %518 = extractvalue %dx.types.ResRet.i32 %516, 1
  %519 = extractvalue %dx.types.ResRet.i32 %516, 2
  %520 = bitcast i32 %517 to float
  %521 = bitcast i32 %518 to float
  %522 = bitcast i32 %519 to float
  %523 = add i32 %500, %512
  %524 = mul i32 %523, %439
  %525 = add i32 %489, %524
  %526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %525, i32 0)  ; BufferLoad(srv,index,wot)
  %527 = extractvalue %dx.types.ResRet.i32 %526, 0
  %528 = extractvalue %dx.types.ResRet.i32 %526, 1
  %529 = extractvalue %dx.types.ResRet.i32 %526, 2
  %530 = bitcast i32 %527 to float
  %531 = bitcast i32 %528 to float
  %532 = bitcast i32 %529 to float
  %533 = add i32 %462, 1
  %534 = call i32 @dx.op.binary.i32(i32 40, i32 %533, i32 %434)  ; UMin(a,b)
  %535 = add i32 %534, %359
  %536 = add i32 %535, %488
  %537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %536, i32 0)  ; BufferLoad(srv,index,wot)
  %538 = extractvalue %dx.types.ResRet.i32 %537, 0
  %539 = extractvalue %dx.types.ResRet.i32 %537, 1
  %540 = extractvalue %dx.types.ResRet.i32 %537, 2
  %541 = bitcast i32 %538 to float
  %542 = bitcast i32 %539 to float
  %543 = bitcast i32 %540 to float
  %544 = add i32 %535, %502
  %545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %544, i32 0)  ; BufferLoad(srv,index,wot)
  %546 = extractvalue %dx.types.ResRet.i32 %545, 0
  %547 = extractvalue %dx.types.ResRet.i32 %545, 1
  %548 = extractvalue %dx.types.ResRet.i32 %545, 2
  %549 = bitcast i32 %546 to float
  %550 = bitcast i32 %547 to float
  %551 = bitcast i32 %548 to float
  %552 = add i32 %535, %514
  %553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %552, i32 0)  ; BufferLoad(srv,index,wot)
  %554 = extractvalue %dx.types.ResRet.i32 %553, 0
  %555 = extractvalue %dx.types.ResRet.i32 %553, 1
  %556 = extractvalue %dx.types.ResRet.i32 %553, 2
  %557 = bitcast i32 %554 to float
  %558 = bitcast i32 %555 to float
  %559 = bitcast i32 %556 to float
  %560 = add i32 %535, %524
  %561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %560, i32 0)  ; BufferLoad(srv,index,wot)
  %562 = extractvalue %dx.types.ResRet.i32 %561, 0
  %563 = extractvalue %dx.types.ResRet.i32 %561, 1
  %564 = extractvalue %dx.types.ResRet.i32 %561, 2
  %565 = bitcast i32 %562 to float
  %566 = bitcast i32 %563 to float
  %567 = bitcast i32 %564 to float
  %568 = fmul fast float %495, %475
  %569 = fmul fast float %496, %475
  %570 = fmul fast float %497, %475
  %571 = fmul fast float %508, %476
  %572 = fmul fast float %509, %476
  %573 = fmul fast float %510, %476
  %574 = fadd fast float %571, %568
  %575 = fadd fast float %572, %569
  %576 = fadd fast float %573, %570
  %577 = fmul fast float %520, %477
  %578 = fmul fast float %521, %477
  %579 = fmul fast float %522, %477
  %580 = fadd fast float %574, %577
  %581 = fadd fast float %575, %578
  %582 = fadd fast float %576, %579
  %583 = fmul fast float %530, %478
  %584 = fmul fast float %531, %478
  %585 = fmul fast float %532, %478
  %586 = fadd fast float %580, %583
  %587 = fadd fast float %581, %584
  %588 = fadd fast float %582, %585
  %589 = fmul fast float %541, %479
  %590 = fmul fast float %542, %479
  %591 = fmul fast float %543, %479
  %592 = fadd fast float %586, %589
  %593 = fadd fast float %587, %590
  %594 = fadd fast float %588, %591
  %595 = fmul fast float %549, %480
  %596 = fmul fast float %550, %480
  %597 = fmul fast float %551, %480
  %598 = fadd fast float %592, %595
  %599 = fadd fast float %593, %596
  %600 = fadd fast float %594, %597
  %601 = fmul fast float %557, %481
  %602 = fmul fast float %558, %481
  %603 = fmul fast float %559, %481
  %604 = fadd fast float %598, %601
  %605 = fadd fast float %599, %602
  %606 = fadd fast float %600, %603
  %607 = fmul fast float %565, %482
  %608 = fmul fast float %566, %482
  %609 = fmul fast float %567, %482
  %610 = fadd fast float %604, %607
  %611 = fadd fast float %605, %608
  %612 = fadd fast float %606, %609
  %613 = fmul fast float %610, %274
  %614 = call float @dx.op.tertiary.f32(i32 46, float %278, float %611, float %613)  ; FMad(a,b,c)
  %615 = call float @dx.op.tertiary.f32(i32 46, float %284, float %612, float %614)  ; FMad(a,b,c)
  %616 = fmul fast float %610, %275
  %617 = call float @dx.op.tertiary.f32(i32 46, float %279, float %611, float %616)  ; FMad(a,b,c)
  %618 = call float @dx.op.tertiary.f32(i32 46, float %285, float %612, float %617)  ; FMad(a,b,c)
  %619 = fmul fast float %610, %276
  %620 = call float @dx.op.tertiary.f32(i32 46, float %280, float %611, float %619)  ; FMad(a,b,c)
  %621 = call float @dx.op.tertiary.f32(i32 46, float %286, float %612, float %620)  ; FMad(a,b,c)
  br label %622

; <label>:622                                     ; preds = %433, %420, %403, %393
  %623 = phi i1 [ true, %433 ], [ false, %420 ], [ true, %403 ], [ false, %393 ]
  %624 = phi float [ %615, %433 ], [ 0.000000e+00, %420 ], [ %413, %403 ], [ 0.000000e+00, %393 ]
  %625 = phi float [ %618, %433 ], [ 0.000000e+00, %420 ], [ %416, %403 ], [ 0.000000e+00, %393 ]
  %626 = phi float [ %621, %433 ], [ 0.000000e+00, %420 ], [ %419, %403 ], [ 0.000000e+00, %393 ]
  br i1 %623, label %627, label %641, !dx.controlflow.hints !44

; <label>:627                                     ; preds = %622
  %628 = fmul fast float %624, %282
  %629 = fmul fast float %625, %282
  %630 = fmul fast float %626, %282
  %631 = and i32 %365, 1073741824
  %632 = icmp eq i32 %631, 0
  br i1 %632, label %637, label %633, !dx.controlflow.hints !45

; <label>:633                                     ; preds = %627
  %634 = fadd fast float %628, %344
  %635 = fadd fast float %629, %345
  %636 = fadd fast float %630, %346
  br label %641

; <label>:637                                     ; preds = %627
  %638 = fadd fast float %628, %347
  %639 = fadd fast float %629, %348
  %640 = fadd fast float %630, %349
  br label %641

; <label>:641                                     ; preds = %637, %633, %622
  %642 = phi i32 [ 1, %633 ], [ %343, %637 ], [ %343, %622 ]
  %643 = phi float [ %634, %633 ], [ %344, %637 ], [ %344, %622 ]
  %644 = phi float [ %635, %633 ], [ %345, %637 ], [ %345, %622 ]
  %645 = phi float [ %636, %633 ], [ %346, %637 ], [ %346, %622 ]
  %646 = phi float [ %347, %633 ], [ %638, %637 ], [ %347, %622 ]
  %647 = phi float [ %348, %633 ], [ %639, %637 ], [ %348, %622 ]
  %648 = phi float [ %349, %633 ], [ %640, %637 ], [ %349, %622 ]
  %649 = add nuw nsw i32 %350, 1
  %650 = icmp eq i32 %649, %341
  br i1 %650, label %651, label %342

; <label>:651                                     ; preds = %641
  br label %652

; <label>:652                                     ; preds = %651, %337
  %653 = phi i32 [ 0, %337 ], [ %642, %651 ]
  %654 = phi float [ 0.000000e+00, %337 ], [ %643, %651 ]
  %655 = phi float [ 0.000000e+00, %337 ], [ %644, %651 ]
  %656 = phi float [ 0.000000e+00, %337 ], [ %645, %651 ]
  %657 = phi float [ 0.000000e+00, %337 ], [ %646, %651 ]
  %658 = phi float [ 0.000000e+00, %337 ], [ %647, %651 ]
  %659 = phi float [ 0.000000e+00, %337 ], [ %648, %651 ]
  %660 = or i32 %653, %259
  %661 = icmp ne i32 %660, 0
  %662 = zext i1 %661 to i32
  %663 = fadd fast float %654, %263
  %664 = fadd fast float %655, %264
  %665 = fadd fast float %656, %265
  %666 = fadd fast float %657, %260
  %667 = fadd fast float %658, %261
  %668 = fadd fast float %659, %262
  br label %669

; <label>:669                                     ; preds = %652, %332, %269
  %670 = phi i32 [ %662, %652 ], [ %259, %332 ], [ %259, %269 ]
  %671 = phi float [ %666, %652 ], [ %260, %332 ], [ %260, %269 ]
  %672 = phi float [ %667, %652 ], [ %261, %332 ], [ %261, %269 ]
  %673 = phi float [ %668, %652 ], [ %262, %332 ], [ %262, %269 ]
  %674 = phi float [ %663, %652 ], [ %263, %332 ], [ %263, %269 ]
  %675 = phi float [ %664, %652 ], [ %264, %332 ], [ %264, %269 ]
  %676 = phi float [ %665, %652 ], [ %265, %332 ], [ %265, %269 ]
  %677 = phi i32 [ 1, %652 ], [ %266, %332 ], [ %266, %269 ]
  %678 = add nuw nsw i32 %267, 1
  %679 = icmp ult i32 %678, 4
  br i1 %679, label %258, label %680

; <label>:680                                     ; preds = %669, %258
  %681 = phi i32 [ %259, %258 ], [ %670, %669 ]
  %682 = phi float [ %260, %258 ], [ %671, %669 ]
  %683 = phi float [ %261, %258 ], [ %672, %669 ]
  %684 = phi float [ %262, %258 ], [ %673, %669 ]
  %685 = phi float [ %263, %258 ], [ %674, %669 ]
  %686 = phi float [ %264, %258 ], [ %675, %669 ]
  %687 = phi float [ %265, %258 ], [ %676, %669 ]
  %688 = phi i32 [ %266, %258 ], [ %677, %669 ]
  %689 = icmp ne i32 %688, 0
  %690 = icmp ne i32 %681, 0
  %691 = zext i1 %690 to i32
  %692 = zext i1 %689 to i32
  %693 = icmp ugt i32 %235, 4
  br i1 %693, label %694, label %1139, !dx.controlflow.hints !46

; <label>:694                                     ; preds = %680
  %695 = add nsw i32 %235, -4
  br label %696

; <label>:696                                     ; preds = %1107, %694
  %697 = phi i32 [ 0, %694 ], [ %1108, %1107 ]
  %698 = phi float [ 0.000000e+00, %694 ], [ %1109, %1107 ]
  %699 = phi float [ 0.000000e+00, %694 ], [ %1110, %1107 ]
  %700 = phi float [ 0.000000e+00, %694 ], [ %1111, %1107 ]
  %701 = phi float [ 0.000000e+00, %694 ], [ %1112, %1107 ]
  %702 = phi float [ 0.000000e+00, %694 ], [ %1113, %1107 ]
  %703 = phi float [ 0.000000e+00, %694 ], [ %1114, %1107 ]
  %704 = phi i32 [ 0, %694 ], [ %1115, %1107 ]
  %705 = phi i32 [ 0, %694 ], [ %1116, %1107 ]
  %706 = icmp ult i32 %705, %695
  br i1 %706, label %707, label %1118, !dx.controlflow.hints !38

; <label>:707                                     ; preds = %696
  %708 = shl i32 %705, 3
  %709 = lshr i32 %255, %708
  %710 = and i32 %709, 255
  %711 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %710, i32 0)  ; BufferLoad(srv,index,wot)
  %712 = extractvalue %dx.types.ResRet.f32 %711, 0
  %713 = extractvalue %dx.types.ResRet.f32 %711, 1
  %714 = extractvalue %dx.types.ResRet.f32 %711, 2
  %715 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %710, i32 16)  ; BufferLoad(srv,index,wot)
  %716 = extractvalue %dx.types.ResRet.f32 %715, 0
  %717 = extractvalue %dx.types.ResRet.f32 %715, 1
  %718 = extractvalue %dx.types.ResRet.f32 %715, 2
  %719 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %710, i32 28)  ; BufferLoad(srv,index,wot)
  %720 = extractvalue %dx.types.ResRet.f32 %719, 0
  %721 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %710, i32 32)  ; BufferLoad(srv,index,wot)
  %722 = extractvalue %dx.types.ResRet.f32 %721, 0
  %723 = extractvalue %dx.types.ResRet.f32 %721, 1
  %724 = extractvalue %dx.types.ResRet.f32 %721, 2
  %725 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %710, i32 44)  ; BufferLoad(srv,index,wot)
  %726 = extractvalue %dx.types.ResRet.f32 %725, 0
  %727 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %710, i32 48)  ; BufferLoad(srv,index,wot)
  %728 = extractvalue %dx.types.ResRet.f32 %727, 0
  %729 = extractvalue %dx.types.ResRet.f32 %727, 1
  %730 = extractvalue %dx.types.ResRet.f32 %727, 2
  %731 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %710, i32 60)  ; BufferLoad(srv,index,wot)
  %732 = extractvalue %dx.types.ResRet.i32 %731, 0
  %733 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %710, i32 64)  ; BufferLoad(srv,index,wot)
  %734 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %710, i32 76)  ; BufferLoad(srv,index,wot)
  %735 = and i32 %732, 16777216
  %736 = icmp eq i32 %735, 0
  br i1 %736, label %1107, label %737, !dx.controlflow.hints !39

; <label>:737                                     ; preds = %707
  %738 = extractvalue %dx.types.ResRet.f32 %734, 2
  %739 = extractvalue %dx.types.ResRet.f32 %734, 1
  %740 = extractvalue %dx.types.ResRet.f32 %734, 0
  %741 = extractvalue %dx.types.ResRet.f32 %733, 2
  %742 = extractvalue %dx.types.ResRet.f32 %733, 1
  %743 = extractvalue %dx.types.ResRet.f32 %733, 0
  %744 = fsub fast float %740, %743
  %745 = fsub fast float %739, %742
  %746 = fsub fast float %738, %741
  %747 = call float @dx.op.binary.f32(i32 35, float %745, float %746)  ; FMax(a,b)
  %748 = call float @dx.op.binary.f32(i32 35, float %744, float %747)  ; FMax(a,b)
  %749 = fmul fast float %726, 5.000000e-01
  %750 = fmul fast float %749, %748
  %751 = fadd fast float %750, %159
  %752 = fsub fast float %728, %215
  %753 = fsub fast float %729, %216
  %754 = fsub fast float %730, %217
  %755 = call float @dx.op.dot3.f32(i32 55, float %752, float %753, float %754, float %210, float %211, float %212)  ; Dot3(ax,ay,az,bx,by,bz)
  %756 = fsub fast float -0.000000e+00, %751
  %757 = fcmp fast olt float %755, %756
  %758 = fadd fast float %751, %214
  %759 = fcmp fast ogt float %755, %758
  %760 = or i1 %757, %759
  br i1 %760, label %770, label %761, !dx.controlflow.hints !40

; <label>:761                                     ; preds = %737
  %762 = call float @dx.op.binary.f32(i32 35, float %755, float 0.000000e+00)  ; FMax(a,b)
  %763 = call float @dx.op.binary.f32(i32 36, float %762, float %214)  ; FMin(a,b)
  %764 = fmul fast float %763, %210
  %765 = fmul fast float %763, %211
  %766 = fmul fast float %763, %212
  %767 = fadd fast float %764, %215
  %768 = fadd fast float %765, %216
  %769 = fadd fast float %766, %217
  br label %770

; <label>:770                                     ; preds = %761, %737
  %771 = phi i1 [ true, %761 ], [ false, %737 ]
  %772 = phi float [ %767, %761 ], [ 0.000000e+00, %737 ]
  %773 = phi float [ %768, %761 ], [ 0.000000e+00, %737 ]
  %774 = phi float [ %769, %761 ], [ 0.000000e+00, %737 ]
  br i1 %771, label %775, label %1107, !dx.controlflow.hints !41

; <label>:775                                     ; preds = %770
  %776 = and i32 %732, 4095
  %777 = icmp eq i32 %776, 0
  br i1 %777, label %1090, label %778

; <label>:778                                     ; preds = %775
  %779 = and i32 %732, 4095
  br label %780

; <label>:780                                     ; preds = %1079, %778
  %781 = phi i32 [ %1080, %1079 ], [ 0, %778 ]
  %782 = phi float [ %1081, %1079 ], [ 0.000000e+00, %778 ]
  %783 = phi float [ %1082, %1079 ], [ 0.000000e+00, %778 ]
  %784 = phi float [ %1083, %1079 ], [ 0.000000e+00, %778 ]
  %785 = phi float [ %1084, %1079 ], [ 0.000000e+00, %778 ]
  %786 = phi float [ %1085, %1079 ], [ 0.000000e+00, %778 ]
  %787 = phi float [ %1086, %1079 ], [ 0.000000e+00, %778 ]
  %788 = phi i32 [ %1087, %1079 ], [ 0, %778 ]
  %789 = lshr i32 %732, 12
  %790 = and i32 %789, 4095
  %791 = add nuw nsw i32 %788, %790
  %792 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %791, i32 0)  ; BufferLoad(srv,index,wot)
  %793 = extractvalue %dx.types.ResRet.f32 %792, 0
  %794 = extractvalue %dx.types.ResRet.f32 %792, 1
  %795 = extractvalue %dx.types.ResRet.f32 %792, 2
  %796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %791, i32 12)  ; BufferLoad(srv,index,wot)
  %797 = extractvalue %dx.types.ResRet.i32 %796, 0
  %798 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %791, i32 16)  ; BufferLoad(srv,index,wot)
  %799 = extractvalue %dx.types.ResRet.f32 %798, 0
  %800 = extractvalue %dx.types.ResRet.f32 %798, 1
  %801 = extractvalue %dx.types.ResRet.f32 %798, 2
  %802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %791, i32 28)  ; BufferLoad(srv,index,wot)
  %803 = extractvalue %dx.types.ResRet.i32 %802, 0
  %804 = icmp slt i32 %803, 0
  %805 = fsub fast float %772, %728
  %806 = fsub fast float %773, %729
  %807 = fsub fast float %774, %730
  %808 = fmul fast float %805, %712
  %809 = call float @dx.op.tertiary.f32(i32 46, float %713, float %806, float %808)  ; FMad(a,b,c)
  %810 = call float @dx.op.tertiary.f32(i32 46, float %714, float %807, float %809)  ; FMad(a,b,c)
  %811 = fmul fast float %805, %716
  %812 = call float @dx.op.tertiary.f32(i32 46, float %717, float %806, float %811)  ; FMad(a,b,c)
  %813 = call float @dx.op.tertiary.f32(i32 46, float %718, float %807, float %812)  ; FMad(a,b,c)
  %814 = fmul fast float %805, %722
  %815 = call float @dx.op.tertiary.f32(i32 46, float %723, float %806, float %814)  ; FMad(a,b,c)
  %816 = call float @dx.op.tertiary.f32(i32 46, float %724, float %807, float %815)  ; FMad(a,b,c)
  %817 = fmul fast float %793, %726
  %818 = fmul fast float %794, %726
  %819 = fmul fast float %795, %726
  %820 = fmul fast float %817, 5.000000e-01
  %821 = fmul fast float %818, 5.000000e-01
  %822 = fmul fast float %819, 5.000000e-01
  %823 = fadd fast float %820, 0xBF50624DE0000000
  %824 = fadd fast float %821, 0xBF50624DE0000000
  %825 = fadd fast float %822, 0xBF50624DE0000000
  %826 = fcmp fast ogt float %810, %823
  %827 = fcmp fast ogt float %813, %824
  %828 = fcmp fast ogt float %816, %825
  %829 = or i1 %826, %827
  %830 = or i1 %829, %828
  br i1 %804, label %831, label %858, !dx.controlflow.hints !42

; <label>:831                                     ; preds = %780
  %832 = fsub fast float 0x3F50624DE0000000, %820
  %833 = fsub fast float 0x3F50624DE0000000, %821
  %834 = fsub fast float 0x3F50624DE0000000, %822
  %835 = fcmp fast olt float %810, %832
  %836 = fcmp fast olt float %813, %833
  %837 = fcmp fast olt float %816, %834
  %838 = or i1 %835, %836
  %839 = or i1 %838, %837
  %840 = or i1 %830, %839
  br i1 %840, label %1060, label %841, !dx.controlflow.hints !43

; <label>:841                                     ; preds = %831
  %842 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %797, i32 0)  ; BufferLoad(srv,index,wot)
  %843 = extractvalue %dx.types.ResRet.i32 %842, 0
  %844 = extractvalue %dx.types.ResRet.i32 %842, 1
  %845 = extractvalue %dx.types.ResRet.i32 %842, 2
  %846 = bitcast i32 %843 to float
  %847 = bitcast i32 %844 to float
  %848 = bitcast i32 %845 to float
  %849 = fmul fast float %846, %712
  %850 = call float @dx.op.tertiary.f32(i32 46, float %716, float %847, float %849)  ; FMad(a,b,c)
  %851 = call float @dx.op.tertiary.f32(i32 46, float %722, float %848, float %850)  ; FMad(a,b,c)
  %852 = fmul fast float %846, %713
  %853 = call float @dx.op.tertiary.f32(i32 46, float %717, float %847, float %852)  ; FMad(a,b,c)
  %854 = call float @dx.op.tertiary.f32(i32 46, float %723, float %848, float %853)  ; FMad(a,b,c)
  %855 = fmul fast float %846, %714
  %856 = call float @dx.op.tertiary.f32(i32 46, float %718, float %847, float %855)  ; FMad(a,b,c)
  %857 = call float @dx.op.tertiary.f32(i32 46, float %724, float %848, float %856)  ; FMad(a,b,c)
  br label %1060

; <label>:858                                     ; preds = %780
  %859 = fmul fast float %817, -5.000000e-01
  %860 = fmul fast float %818, -5.000000e-01
  %861 = fmul fast float %819, -5.000000e-01
  %862 = fadd fast float %859, 0x3F50624DE0000000
  %863 = fadd fast float %860, 0x3F50624DE0000000
  %864 = fadd fast float %861, 0x3F50624DE0000000
  %865 = fcmp fast olt float %810, %862
  %866 = fcmp fast olt float %813, %863
  %867 = fcmp fast olt float %816, %864
  %868 = or i1 %865, %866
  %869 = or i1 %868, %867
  %870 = or i1 %830, %869
  br i1 %870, label %1060, label %871, !dx.controlflow.hints !43

; <label>:871                                     ; preds = %858
  %872 = and i32 %803, 1023
  %873 = lshr i32 %803, 10
  %874 = and i32 %873, 1023
  %875 = lshr i32 %803, 20
  %876 = and i32 %875, 1023
  %877 = add nuw nsw i32 %872, 1
  %878 = add nuw nsw i32 %874, 1
  %879 = fsub fast float %810, %859
  %880 = fsub fast float %813, %860
  %881 = fsub fast float %816, %861
  %882 = fmul fast float %799, %726
  %883 = fmul fast float %800, %726
  %884 = fmul fast float %801, %726
  %885 = fdiv fast float 1.000000e+00, %882
  %886 = fdiv fast float 1.000000e+00, %883
  %887 = fdiv fast float 1.000000e+00, %884
  %888 = fmul fast float %885, %879
  %889 = fmul fast float %886, %880
  %890 = fmul fast float %887, %881
  %891 = call float @dx.op.unary.f32(i32 27, float %888)  ; Round_ni(value)
  %892 = call float @dx.op.unary.f32(i32 27, float %889)  ; Round_ni(value)
  %893 = call float @dx.op.unary.f32(i32 27, float %890)  ; Round_ni(value)
  %894 = fptosi float %891 to i32
  %895 = fptosi float %892 to i32
  %896 = fptosi float %893 to i32
  %897 = call i32 @dx.op.binary.i32(i32 37, i32 %894, i32 0)  ; IMax(a,b)
  %898 = call i32 @dx.op.binary.i32(i32 37, i32 %895, i32 0)  ; IMax(a,b)
  %899 = call i32 @dx.op.binary.i32(i32 37, i32 %896, i32 0)  ; IMax(a,b)
  %900 = call i32 @dx.op.binary.i32(i32 38, i32 %897, i32 %872)  ; IMin(a,b)
  %901 = call i32 @dx.op.binary.i32(i32 38, i32 %898, i32 %874)  ; IMin(a,b)
  %902 = call i32 @dx.op.binary.i32(i32 38, i32 %899, i32 %876)  ; IMin(a,b)
  %903 = call float @dx.op.unary.f32(i32 22, float %888)  ; Frc(value)
  %904 = call float @dx.op.unary.f32(i32 22, float %889)  ; Frc(value)
  %905 = call float @dx.op.unary.f32(i32 22, float %890)  ; Frc(value)
  %906 = fsub fast float 1.000000e+00, %904
  %907 = fsub fast float 1.000000e+00, %905
  %908 = fmul fast float %907, %906
  %909 = fmul fast float %906, %905
  %910 = fmul fast float %907, %904
  %911 = fmul fast float %905, %904
  %912 = fsub fast float 1.000000e+00, %903
  %913 = fmul fast float %908, %912
  %914 = fmul fast float %909, %912
  %915 = fmul fast float %910, %912
  %916 = fmul fast float %911, %912
  %917 = fmul fast float %908, %903
  %918 = fmul fast float %909, %903
  %919 = fmul fast float %910, %903
  %920 = fmul fast float %911, %903
  %921 = call i32 @dx.op.binary.i32(i32 40, i32 %900, i32 %872)  ; UMin(a,b)
  %922 = call i32 @dx.op.binary.i32(i32 40, i32 %901, i32 %874)  ; UMin(a,b)
  %923 = call i32 @dx.op.binary.i32(i32 40, i32 %902, i32 %876)  ; UMin(a,b)
  %924 = mul i32 %923, %878
  %925 = add i32 %924, %922
  %926 = mul i32 %925, %877
  %927 = add i32 %921, %797
  %928 = add i32 %927, %926
  %929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %928, i32 0)  ; BufferLoad(srv,index,wot)
  %930 = extractvalue %dx.types.ResRet.i32 %929, 0
  %931 = extractvalue %dx.types.ResRet.i32 %929, 1
  %932 = extractvalue %dx.types.ResRet.i32 %929, 2
  %933 = bitcast i32 %930 to float
  %934 = bitcast i32 %931 to float
  %935 = bitcast i32 %932 to float
  %936 = add i32 %902, 1
  %937 = call i32 @dx.op.binary.i32(i32 40, i32 %936, i32 %876)  ; UMin(a,b)
  %938 = mul i32 %937, %878
  %939 = add i32 %938, %922
  %940 = mul i32 %939, %877
  %941 = add i32 %927, %940
  %942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %941, i32 0)  ; BufferLoad(srv,index,wot)
  %943 = extractvalue %dx.types.ResRet.i32 %942, 0
  %944 = extractvalue %dx.types.ResRet.i32 %942, 1
  %945 = extractvalue %dx.types.ResRet.i32 %942, 2
  %946 = bitcast i32 %943 to float
  %947 = bitcast i32 %944 to float
  %948 = bitcast i32 %945 to float
  %949 = add i32 %901, 1
  %950 = call i32 @dx.op.binary.i32(i32 40, i32 %949, i32 %874)  ; UMin(a,b)
  %951 = add i32 %924, %950
  %952 = mul i32 %951, %877
  %953 = add i32 %927, %952
  %954 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %953, i32 0)  ; BufferLoad(srv,index,wot)
  %955 = extractvalue %dx.types.ResRet.i32 %954, 0
  %956 = extractvalue %dx.types.ResRet.i32 %954, 1
  %957 = extractvalue %dx.types.ResRet.i32 %954, 2
  %958 = bitcast i32 %955 to float
  %959 = bitcast i32 %956 to float
  %960 = bitcast i32 %957 to float
  %961 = add i32 %938, %950
  %962 = mul i32 %961, %877
  %963 = add i32 %927, %962
  %964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %963, i32 0)  ; BufferLoad(srv,index,wot)
  %965 = extractvalue %dx.types.ResRet.i32 %964, 0
  %966 = extractvalue %dx.types.ResRet.i32 %964, 1
  %967 = extractvalue %dx.types.ResRet.i32 %964, 2
  %968 = bitcast i32 %965 to float
  %969 = bitcast i32 %966 to float
  %970 = bitcast i32 %967 to float
  %971 = add i32 %900, 1
  %972 = call i32 @dx.op.binary.i32(i32 40, i32 %971, i32 %872)  ; UMin(a,b)
  %973 = add i32 %972, %797
  %974 = add i32 %973, %926
  %975 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %974, i32 0)  ; BufferLoad(srv,index,wot)
  %976 = extractvalue %dx.types.ResRet.i32 %975, 0
  %977 = extractvalue %dx.types.ResRet.i32 %975, 1
  %978 = extractvalue %dx.types.ResRet.i32 %975, 2
  %979 = bitcast i32 %976 to float
  %980 = bitcast i32 %977 to float
  %981 = bitcast i32 %978 to float
  %982 = add i32 %973, %940
  %983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %982, i32 0)  ; BufferLoad(srv,index,wot)
  %984 = extractvalue %dx.types.ResRet.i32 %983, 0
  %985 = extractvalue %dx.types.ResRet.i32 %983, 1
  %986 = extractvalue %dx.types.ResRet.i32 %983, 2
  %987 = bitcast i32 %984 to float
  %988 = bitcast i32 %985 to float
  %989 = bitcast i32 %986 to float
  %990 = add i32 %973, %952
  %991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %990, i32 0)  ; BufferLoad(srv,index,wot)
  %992 = extractvalue %dx.types.ResRet.i32 %991, 0
  %993 = extractvalue %dx.types.ResRet.i32 %991, 1
  %994 = extractvalue %dx.types.ResRet.i32 %991, 2
  %995 = bitcast i32 %992 to float
  %996 = bitcast i32 %993 to float
  %997 = bitcast i32 %994 to float
  %998 = add i32 %973, %962
  %999 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %998, i32 0)  ; BufferLoad(srv,index,wot)
  %1000 = extractvalue %dx.types.ResRet.i32 %999, 0
  %1001 = extractvalue %dx.types.ResRet.i32 %999, 1
  %1002 = extractvalue %dx.types.ResRet.i32 %999, 2
  %1003 = bitcast i32 %1000 to float
  %1004 = bitcast i32 %1001 to float
  %1005 = bitcast i32 %1002 to float
  %1006 = fmul fast float %933, %913
  %1007 = fmul fast float %934, %913
  %1008 = fmul fast float %935, %913
  %1009 = fmul fast float %946, %914
  %1010 = fmul fast float %947, %914
  %1011 = fmul fast float %948, %914
  %1012 = fadd fast float %1009, %1006
  %1013 = fadd fast float %1010, %1007
  %1014 = fadd fast float %1011, %1008
  %1015 = fmul fast float %958, %915
  %1016 = fmul fast float %959, %915
  %1017 = fmul fast float %960, %915
  %1018 = fadd fast float %1012, %1015
  %1019 = fadd fast float %1013, %1016
  %1020 = fadd fast float %1014, %1017
  %1021 = fmul fast float %968, %916
  %1022 = fmul fast float %969, %916
  %1023 = fmul fast float %970, %916
  %1024 = fadd fast float %1018, %1021
  %1025 = fadd fast float %1019, %1022
  %1026 = fadd fast float %1020, %1023
  %1027 = fmul fast float %979, %917
  %1028 = fmul fast float %980, %917
  %1029 = fmul fast float %981, %917
  %1030 = fadd fast float %1024, %1027
  %1031 = fadd fast float %1025, %1028
  %1032 = fadd fast float %1026, %1029
  %1033 = fmul fast float %987, %918
  %1034 = fmul fast float %988, %918
  %1035 = fmul fast float %989, %918
  %1036 = fadd fast float %1030, %1033
  %1037 = fadd fast float %1031, %1034
  %1038 = fadd fast float %1032, %1035
  %1039 = fmul fast float %995, %919
  %1040 = fmul fast float %996, %919
  %1041 = fmul fast float %997, %919
  %1042 = fadd fast float %1036, %1039
  %1043 = fadd fast float %1037, %1040
  %1044 = fadd fast float %1038, %1041
  %1045 = fmul fast float %1003, %920
  %1046 = fmul fast float %1004, %920
  %1047 = fmul fast float %1005, %920
  %1048 = fadd fast float %1042, %1045
  %1049 = fadd fast float %1043, %1046
  %1050 = fadd fast float %1044, %1047
  %1051 = fmul fast float %1048, %712
  %1052 = call float @dx.op.tertiary.f32(i32 46, float %716, float %1049, float %1051)  ; FMad(a,b,c)
  %1053 = call float @dx.op.tertiary.f32(i32 46, float %722, float %1050, float %1052)  ; FMad(a,b,c)
  %1054 = fmul fast float %1048, %713
  %1055 = call float @dx.op.tertiary.f32(i32 46, float %717, float %1049, float %1054)  ; FMad(a,b,c)
  %1056 = call float @dx.op.tertiary.f32(i32 46, float %723, float %1050, float %1055)  ; FMad(a,b,c)
  %1057 = fmul fast float %1048, %714
  %1058 = call float @dx.op.tertiary.f32(i32 46, float %718, float %1049, float %1057)  ; FMad(a,b,c)
  %1059 = call float @dx.op.tertiary.f32(i32 46, float %724, float %1050, float %1058)  ; FMad(a,b,c)
  br label %1060

; <label>:1060                                    ; preds = %871, %858, %841, %831
  %1061 = phi i1 [ true, %871 ], [ false, %858 ], [ true, %841 ], [ false, %831 ]
  %1062 = phi float [ %1053, %871 ], [ 0.000000e+00, %858 ], [ %851, %841 ], [ 0.000000e+00, %831 ]
  %1063 = phi float [ %1056, %871 ], [ 0.000000e+00, %858 ], [ %854, %841 ], [ 0.000000e+00, %831 ]
  %1064 = phi float [ %1059, %871 ], [ 0.000000e+00, %858 ], [ %857, %841 ], [ 0.000000e+00, %831 ]
  br i1 %1061, label %1065, label %1079, !dx.controlflow.hints !44

; <label>:1065                                    ; preds = %1060
  %1066 = fmul fast float %1062, %720
  %1067 = fmul fast float %1063, %720
  %1068 = fmul fast float %1064, %720
  %1069 = and i32 %803, 1073741824
  %1070 = icmp eq i32 %1069, 0
  br i1 %1070, label %1075, label %1071, !dx.controlflow.hints !45

; <label>:1071                                    ; preds = %1065
  %1072 = fadd fast float %1066, %782
  %1073 = fadd fast float %1067, %783
  %1074 = fadd fast float %1068, %784
  br label %1079

; <label>:1075                                    ; preds = %1065
  %1076 = fadd fast float %1066, %785
  %1077 = fadd fast float %1067, %786
  %1078 = fadd fast float %1068, %787
  br label %1079

; <label>:1079                                    ; preds = %1075, %1071, %1060
  %1080 = phi i32 [ 1, %1071 ], [ %781, %1075 ], [ %781, %1060 ]
  %1081 = phi float [ %1072, %1071 ], [ %782, %1075 ], [ %782, %1060 ]
  %1082 = phi float [ %1073, %1071 ], [ %783, %1075 ], [ %783, %1060 ]
  %1083 = phi float [ %1074, %1071 ], [ %784, %1075 ], [ %784, %1060 ]
  %1084 = phi float [ %785, %1071 ], [ %1076, %1075 ], [ %785, %1060 ]
  %1085 = phi float [ %786, %1071 ], [ %1077, %1075 ], [ %786, %1060 ]
  %1086 = phi float [ %787, %1071 ], [ %1078, %1075 ], [ %787, %1060 ]
  %1087 = add nuw nsw i32 %788, 1
  %1088 = icmp eq i32 %1087, %779
  br i1 %1088, label %1089, label %780

; <label>:1089                                    ; preds = %1079
  br label %1090

; <label>:1090                                    ; preds = %1089, %775
  %1091 = phi i32 [ 0, %775 ], [ %1080, %1089 ]
  %1092 = phi float [ 0.000000e+00, %775 ], [ %1081, %1089 ]
  %1093 = phi float [ 0.000000e+00, %775 ], [ %1082, %1089 ]
  %1094 = phi float [ 0.000000e+00, %775 ], [ %1083, %1089 ]
  %1095 = phi float [ 0.000000e+00, %775 ], [ %1084, %1089 ]
  %1096 = phi float [ 0.000000e+00, %775 ], [ %1085, %1089 ]
  %1097 = phi float [ 0.000000e+00, %775 ], [ %1086, %1089 ]
  %1098 = or i32 %1091, %697
  %1099 = icmp ne i32 %1098, 0
  %1100 = zext i1 %1099 to i32
  %1101 = fadd fast float %1092, %701
  %1102 = fadd fast float %1093, %702
  %1103 = fadd fast float %1094, %703
  %1104 = fadd fast float %1095, %698
  %1105 = fadd fast float %1096, %699
  %1106 = fadd fast float %1097, %700
  br label %1107

; <label>:1107                                    ; preds = %1090, %770, %707
  %1108 = phi i32 [ %1100, %1090 ], [ %697, %770 ], [ %697, %707 ]
  %1109 = phi float [ %1104, %1090 ], [ %698, %770 ], [ %698, %707 ]
  %1110 = phi float [ %1105, %1090 ], [ %699, %770 ], [ %699, %707 ]
  %1111 = phi float [ %1106, %1090 ], [ %700, %770 ], [ %700, %707 ]
  %1112 = phi float [ %1101, %1090 ], [ %701, %770 ], [ %701, %707 ]
  %1113 = phi float [ %1102, %1090 ], [ %702, %770 ], [ %702, %707 ]
  %1114 = phi float [ %1103, %1090 ], [ %703, %770 ], [ %703, %707 ]
  %1115 = phi i32 [ 1, %1090 ], [ %704, %770 ], [ %704, %707 ]
  %1116 = add nuw nsw i32 %705, 1
  %1117 = icmp ult i32 %1116, 4
  br i1 %1117, label %696, label %1118

; <label>:1118                                    ; preds = %1107, %696
  %1119 = phi i32 [ %697, %696 ], [ %1108, %1107 ]
  %1120 = phi float [ %698, %696 ], [ %1109, %1107 ]
  %1121 = phi float [ %699, %696 ], [ %1110, %1107 ]
  %1122 = phi float [ %700, %696 ], [ %1111, %1107 ]
  %1123 = phi float [ %701, %696 ], [ %1112, %1107 ]
  %1124 = phi float [ %702, %696 ], [ %1113, %1107 ]
  %1125 = phi float [ %703, %696 ], [ %1114, %1107 ]
  %1126 = phi i32 [ %704, %696 ], [ %1115, %1107 ]
  %1127 = or i32 %1126, %688
  %1128 = icmp ne i32 %1127, 0
  %1129 = zext i1 %1128 to i32
  %1130 = or i32 %1119, %681
  %1131 = icmp ne i32 %1130, 0
  %1132 = zext i1 %1131 to i32
  %1133 = fadd fast float %1123, %685
  %1134 = fadd fast float %1124, %686
  %1135 = fadd fast float %1125, %687
  %1136 = fadd fast float %1120, %682
  %1137 = fadd fast float %1121, %683
  %1138 = fadd fast float %1122, %684
  br label %1139

; <label>:1139                                    ; preds = %1118, %680
  %1140 = phi i32 [ %1132, %1118 ], [ %691, %680 ]
  %1141 = phi float [ %1136, %1118 ], [ %682, %680 ]
  %1142 = phi float [ %1137, %1118 ], [ %683, %680 ]
  %1143 = phi float [ %1138, %1118 ], [ %684, %680 ]
  %1144 = phi float [ %1133, %1118 ], [ %685, %680 ]
  %1145 = phi float [ %1134, %1118 ], [ %686, %680 ]
  %1146 = phi float [ %1135, %1118 ], [ %687, %680 ]
  %1147 = phi i32 [ %1129, %1118 ], [ %692, %680 ]
  %1148 = icmp ne i32 %1147, 0
  %1149 = icmp ne i32 %1140, 0
  br label %1150

; <label>:1150                                    ; preds = %1139, %253, %209
  %1151 = phi float [ %1144, %1139 ], [ 0.000000e+00, %253 ], [ 0.000000e+00, %209 ]
  %1152 = phi float [ %1145, %1139 ], [ 0.000000e+00, %253 ], [ 0.000000e+00, %209 ]
  %1153 = phi float [ %1146, %1139 ], [ 0.000000e+00, %253 ], [ 0.000000e+00, %209 ]
  %1154 = phi float [ %1141, %1139 ], [ 0.000000e+00, %253 ], [ 0.000000e+00, %209 ]
  %1155 = phi float [ %1142, %1139 ], [ 0.000000e+00, %253 ], [ 0.000000e+00, %209 ]
  %1156 = phi float [ %1143, %1139 ], [ 0.000000e+00, %253 ], [ 0.000000e+00, %209 ]
  %1157 = phi i1 [ %1149, %1139 ], [ false, %253 ], [ false, %209 ]
  %1158 = phi i1 [ %1148, %1139 ], [ false, %253 ], [ false, %209 ]
  %1159 = zext i1 %1157 to i32
  br label %2270

; <label>:1160                                    ; preds = %151
  %1161 = fsub fast float %138, %18
  %1162 = fsub fast float %142, %18
  %1163 = fadd fast float %138, %18
  %1164 = fadd fast float %142, %18
  %1165 = fptosi float %1161 to i32
  %1166 = fptosi float %1162 to i32
  %1167 = add i32 %1165, 130048
  %1168 = add i32 %1166, 130048
  %1169 = call i32 @dx.op.binary.i32(i32 37, i32 %1167, i32 0)  ; IMax(a,b)
  %1170 = call i32 @dx.op.binary.i32(i32 37, i32 %1168, i32 0)  ; IMax(a,b)
  %1171 = call i32 @dx.op.binary.i32(i32 38, i32 %1169, i32 262144)  ; IMin(a,b)
  %1172 = call i32 @dx.op.binary.i32(i32 38, i32 %1170, i32 262144)  ; IMin(a,b)
  %1173 = fptosi float %1163 to i32
  %1174 = fptosi float %1164 to i32
  %1175 = add i32 %1173, 130048
  %1176 = add i32 %1174, 130048
  %1177 = call i32 @dx.op.binary.i32(i32 37, i32 %1175, i32 0)  ; IMax(a,b)
  %1178 = call i32 @dx.op.binary.i32(i32 37, i32 %1176, i32 0)  ; IMax(a,b)
  %1179 = call i32 @dx.op.binary.i32(i32 38, i32 %1177, i32 262144)  ; IMin(a,b)
  %1180 = call i32 @dx.op.binary.i32(i32 38, i32 %1178, i32 262144)  ; IMin(a,b)
  %1181 = lshr i32 %1171, 10
  %1182 = lshr i32 %1172, 10
  %1183 = lshr i32 %1179, 10
  %1184 = lshr i32 %1180, 10
  %1185 = icmp ugt i32 %1181, %1183
  br i1 %1185, label %1496, label %1186

; <label>:1186                                    ; preds = %1160
  br label %1187

; <label>:1187                                    ; preds = %1487, %1186
  %1188 = phi i32 [ %1488, %1487 ], [ -1, %1186 ]
  %1189 = phi i32 [ %1489, %1487 ], [ -1, %1186 ]
  %1190 = phi i32 [ %1490, %1487 ], [ 0, %1186 ]
  %1191 = phi i32 [ %1491, %1487 ], [ %1181, %1186 ]
  %1192 = icmp ugt i32 %1182, %1184
  br i1 %1192, label %1487, label %1193

; <label>:1193                                    ; preds = %1187
  br label %1194

; <label>:1194                                    ; preds = %1480, %1193
  %1195 = phi i32 [ %1481, %1480 ], [ %1188, %1193 ]
  %1196 = phi i32 [ %1482, %1480 ], [ %1189, %1193 ]
  %1197 = phi i32 [ %1483, %1480 ], [ %1190, %1193 ]
  %1198 = phi i32 [ %1484, %1480 ], [ %1182, %1193 ]
  %1199 = or i32 %1198, %1191
  %1200 = icmp ult i32 %1199, 256
  br i1 %1200, label %1201, label %1480, !dx.controlflow.hints !47

; <label>:1201                                    ; preds = %1194
  %1202 = shl i32 %1191, 8
  %1203 = add i32 %1198, %1202
  %1204 = and i32 %1203, -4
  %1205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1204, i32 undef)  ; BufferLoad(srv,index,wot)
  %1206 = extractvalue %dx.types.ResRet.i32 %1205, 0
  %1207 = shl i32 %1198, 3
  %1208 = and i32 %1207, 24
  %1209 = lshr i32 %1206, %1208
  %1210 = and i32 %1209, 255
  %1211 = shl i32 %1203, 3
  %1212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1211, i32 undef)  ; BufferLoad(srv,index,wot)
  %1213 = extractvalue %dx.types.ResRet.i32 %1212, 0
  %1214 = extractvalue %dx.types.ResRet.i32 %1212, 1
  %1215 = icmp ult i32 %1210, 4
  br i1 %1215, label %1216, label %1221, !dx.controlflow.hints !35

; <label>:1216                                    ; preds = %1201
  %1217 = shl i32 %1209, 3
  %1218 = and i32 %1217, 24
  %1219 = shl i32 -1, %1218
  %1220 = or i32 %1219, %1213
  br label %1228

; <label>:1221                                    ; preds = %1201
  %1222 = icmp ult i32 %1210, 8
  br i1 %1222, label %1223, label %1228, !dx.controlflow.hints !36

; <label>:1223                                    ; preds = %1221
  %1224 = shl i32 %1209, 3
  %1225 = and i32 %1224, 24
  %1226 = shl i32 -1, %1225
  %1227 = or i32 %1226, %1214
  br label %1228

; <label>:1228                                    ; preds = %1223, %1221, %1216
  %1229 = phi i32 [ %1220, %1216 ], [ %1213, %1223 ], [ %1213, %1221 ]
  %1230 = phi i32 [ -1, %1216 ], [ %1227, %1223 ], [ %1214, %1221 ]
  br label %1231

; <label>:1231                                    ; preds = %1345, %1228
  %1232 = phi i32 [ %1195, %1228 ], [ %1346, %1345 ]
  %1233 = phi i32 [ %1196, %1228 ], [ %1347, %1345 ]
  %1234 = phi i32 [ %1197, %1228 ], [ %1348, %1345 ]
  %1235 = phi i32 [ 0, %1228 ], [ %1349, %1345 ]
  %1236 = icmp ult i32 %1235, %1210
  br i1 %1236, label %1237, label %1351, !dx.controlflow.hints !48

; <label>:1237                                    ; preds = %1231
  %1238 = shl i32 %1235, 3
  %1239 = lshr i32 %1229, %1238
  %1240 = and i32 %1239, 255
  %1241 = icmp eq i32 %1240, 255
  br i1 %1241, label %1351, label %1242, !dx.controlflow.hints !49

; <label>:1242                                    ; preds = %1237
  %1243 = shl nuw nsw i32 %1240, 8
  %1244 = or i32 %1243, %1240
  %1245 = shl nuw i32 %1244, 16
  %1246 = or i32 %1245, %1244
  %1247 = xor i32 %1246, %1232
  %1248 = xor i32 %1246, %1233
  %1249 = and i32 %1247, 255
  %1250 = and i32 %1247, 65280
  %1251 = and i32 %1247, 16711680
  %1252 = and i32 %1248, 255
  %1253 = and i32 %1248, 65280
  %1254 = and i32 %1248, 16711680
  %1255 = icmp eq i32 %1249, 0
  %1256 = icmp eq i32 %1250, 0
  %1257 = icmp eq i32 %1251, 0
  %1258 = icmp ult i32 %1247, 16777216
  %1259 = or i1 %1255, %1256
  %1260 = or i1 %1257, %1259
  %1261 = or i1 %1258, %1260
  %1262 = icmp eq i32 %1252, 0
  %1263 = icmp eq i32 %1253, 0
  %1264 = icmp eq i32 %1254, 0
  %1265 = icmp ult i32 %1248, 16777216
  %1266 = or i1 %1262, %1263
  %1267 = or i1 %1264, %1266
  %1268 = or i1 %1265, %1267
  %1269 = or i1 %1261, %1268
  br i1 %1269, label %1345, label %1270, !dx.controlflow.hints !50

; <label>:1270                                    ; preds = %1242
  %1271 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1240, i32 0)  ; BufferLoad(srv,index,wot)
  %1272 = extractvalue %dx.types.ResRet.f32 %1271, 0
  %1273 = extractvalue %dx.types.ResRet.f32 %1271, 1
  %1274 = extractvalue %dx.types.ResRet.f32 %1271, 2
  %1275 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1240, i32 16)  ; BufferLoad(srv,index,wot)
  %1276 = extractvalue %dx.types.ResRet.f32 %1275, 0
  %1277 = extractvalue %dx.types.ResRet.f32 %1275, 1
  %1278 = extractvalue %dx.types.ResRet.f32 %1275, 2
  %1279 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1240, i32 32)  ; BufferLoad(srv,index,wot)
  %1280 = extractvalue %dx.types.ResRet.f32 %1279, 0
  %1281 = extractvalue %dx.types.ResRet.f32 %1279, 1
  %1282 = extractvalue %dx.types.ResRet.f32 %1279, 2
  %1283 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1240, i32 44)  ; BufferLoad(srv,index,wot)
  %1284 = extractvalue %dx.types.ResRet.f32 %1283, 0
  %1285 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1240, i32 48)  ; BufferLoad(srv,index,wot)
  %1286 = extractvalue %dx.types.ResRet.f32 %1285, 0
  %1287 = extractvalue %dx.types.ResRet.f32 %1285, 1
  %1288 = extractvalue %dx.types.ResRet.f32 %1285, 2
  %1289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1240, i32 60)  ; BufferLoad(srv,index,wot)
  %1290 = extractvalue %dx.types.ResRet.i32 %1289, 0
  %1291 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1240, i32 64)  ; BufferLoad(srv,index,wot)
  %1292 = extractvalue %dx.types.ResRet.f32 %1291, 0
  %1293 = extractvalue %dx.types.ResRet.f32 %1291, 1
  %1294 = extractvalue %dx.types.ResRet.f32 %1291, 2
  %1295 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1240, i32 76)  ; BufferLoad(srv,index,wot)
  %1296 = extractvalue %dx.types.ResRet.f32 %1295, 0
  %1297 = extractvalue %dx.types.ResRet.f32 %1295, 1
  %1298 = extractvalue %dx.types.ResRet.f32 %1295, 2
  %1299 = and i32 %1290, 16777216
  %1300 = icmp ne i32 %1299, 0
  %1301 = fsub fast float %138, %1286
  %1302 = fsub fast float %142, %1287
  %1303 = fsub fast float %146, %1288
  %1304 = fmul fast float %1301, %1272
  %1305 = call float @dx.op.tertiary.f32(i32 46, float %1276, float %1302, float %1304)  ; FMad(a,b,c)
  %1306 = call float @dx.op.tertiary.f32(i32 46, float %1280, float %1303, float %1305)  ; FMad(a,b,c)
  %1307 = fmul fast float %1301, %1273
  %1308 = call float @dx.op.tertiary.f32(i32 46, float %1277, float %1302, float %1307)  ; FMad(a,b,c)
  %1309 = call float @dx.op.tertiary.f32(i32 46, float %1281, float %1303, float %1308)  ; FMad(a,b,c)
  %1310 = fmul fast float %1301, %1274
  %1311 = call float @dx.op.tertiary.f32(i32 46, float %1278, float %1302, float %1310)  ; FMad(a,b,c)
  %1312 = call float @dx.op.tertiary.f32(i32 46, float %1282, float %1303, float %1311)  ; FMad(a,b,c)
  %1313 = fmul fast float %1296, %1284
  %1314 = fmul fast float %1297, %1284
  %1315 = fmul fast float %1298, %1284
  %1316 = fadd fast float %1313, %18
  %1317 = fadd fast float %1314, %18
  %1318 = fadd fast float %1315, %18
  %1319 = fmul fast float %1292, %1284
  %1320 = fmul fast float %1293, %1284
  %1321 = fmul fast float %1294, %1284
  %1322 = fsub fast float %1319, %18
  %1323 = fsub fast float %1320, %18
  %1324 = fsub fast float %1321, %18
  %1325 = fcmp fast olt float %1306, %1316
  %1326 = fcmp fast olt float %1309, %1317
  %1327 = fcmp fast olt float %1312, %1318
  %1328 = and i1 %1325, %1326
  %1329 = and i1 %1328, %1327
  %1330 = fcmp fast ogt float %1306, %1322
  %1331 = fcmp fast ogt float %1309, %1323
  %1332 = fcmp fast ogt float %1312, %1324
  %1333 = and i1 %1330, %1331
  %1334 = and i1 %1333, %1332
  %1335 = and i1 %1329, %1334
  %1336 = and i1 %1300, %1335
  br i1 %1336, label %1337, label %1345, !dx.controlflow.hints !51

; <label>:1337                                    ; preds = %1270
  %1338 = shl i32 %1233, 8
  %1339 = lshr i32 %1232, 24
  %1340 = or i32 %1338, %1339
  %1341 = shl i32 %1232, 8
  %1342 = or i32 %1240, %1341
  %1343 = add i32 %1234, 1
  %1344 = icmp ugt i32 %1343, 7
  br i1 %1344, label %1494, label %1345, !dx.controlflow.hints !52

; <label>:1345                                    ; preds = %1337, %1270, %1242
  %1346 = phi i32 [ %1232, %1242 ], [ %1342, %1337 ], [ %1232, %1270 ]
  %1347 = phi i32 [ %1233, %1242 ], [ %1340, %1337 ], [ %1233, %1270 ]
  %1348 = phi i32 [ %1234, %1242 ], [ %1343, %1337 ], [ %1234, %1270 ]
  %1349 = add nuw nsw i32 %1235, 1
  %1350 = icmp ult i32 %1349, 4
  br i1 %1350, label %1231, label %1351

; <label>:1351                                    ; preds = %1345, %1237, %1231
  %1352 = phi i32 [ %1346, %1345 ], [ %1232, %1231 ], [ %1232, %1237 ]
  %1353 = phi i32 [ %1347, %1345 ], [ %1233, %1231 ], [ %1233, %1237 ]
  %1354 = phi i32 [ %1348, %1345 ], [ %1234, %1231 ], [ %1234, %1237 ]
  br label %1355

; <label>:1355                                    ; preds = %1470, %1351
  %1356 = phi i32 [ %1471, %1470 ], [ %1352, %1351 ]
  %1357 = phi i32 [ %1472, %1470 ], [ %1353, %1351 ]
  %1358 = phi i32 [ %1473, %1470 ], [ %1354, %1351 ]
  %1359 = phi i32 [ %1474, %1470 ], [ 4, %1351 ]
  %1360 = icmp ult i32 %1359, %1210
  br i1 %1360, label %1361, label %1476, !dx.controlflow.hints !53

; <label>:1361                                    ; preds = %1355
  %1362 = shl i32 %1359, 3
  %1363 = and i32 %1362, 24
  %1364 = lshr i32 %1230, %1363
  %1365 = and i32 %1364, 255
  %1366 = icmp eq i32 %1365, 255
  br i1 %1366, label %1476, label %1367, !dx.controlflow.hints !54

; <label>:1367                                    ; preds = %1361
  %1368 = shl nuw nsw i32 %1365, 8
  %1369 = or i32 %1368, %1365
  %1370 = shl nuw i32 %1369, 16
  %1371 = or i32 %1370, %1369
  %1372 = xor i32 %1371, %1356
  %1373 = xor i32 %1371, %1357
  %1374 = and i32 %1372, 255
  %1375 = and i32 %1372, 65280
  %1376 = and i32 %1372, 16711680
  %1377 = and i32 %1373, 255
  %1378 = and i32 %1373, 65280
  %1379 = and i32 %1373, 16711680
  %1380 = icmp eq i32 %1374, 0
  %1381 = icmp eq i32 %1375, 0
  %1382 = icmp eq i32 %1376, 0
  %1383 = icmp ult i32 %1372, 16777216
  %1384 = or i1 %1380, %1381
  %1385 = or i1 %1382, %1384
  %1386 = or i1 %1383, %1385
  %1387 = icmp eq i32 %1377, 0
  %1388 = icmp eq i32 %1378, 0
  %1389 = icmp eq i32 %1379, 0
  %1390 = icmp ult i32 %1373, 16777216
  %1391 = or i1 %1387, %1388
  %1392 = or i1 %1389, %1391
  %1393 = or i1 %1390, %1392
  %1394 = or i1 %1386, %1393
  br i1 %1394, label %1470, label %1395, !dx.controlflow.hints !55

; <label>:1395                                    ; preds = %1367
  %1396 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1365, i32 0)  ; BufferLoad(srv,index,wot)
  %1397 = extractvalue %dx.types.ResRet.f32 %1396, 0
  %1398 = extractvalue %dx.types.ResRet.f32 %1396, 1
  %1399 = extractvalue %dx.types.ResRet.f32 %1396, 2
  %1400 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1365, i32 16)  ; BufferLoad(srv,index,wot)
  %1401 = extractvalue %dx.types.ResRet.f32 %1400, 0
  %1402 = extractvalue %dx.types.ResRet.f32 %1400, 1
  %1403 = extractvalue %dx.types.ResRet.f32 %1400, 2
  %1404 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1365, i32 32)  ; BufferLoad(srv,index,wot)
  %1405 = extractvalue %dx.types.ResRet.f32 %1404, 0
  %1406 = extractvalue %dx.types.ResRet.f32 %1404, 1
  %1407 = extractvalue %dx.types.ResRet.f32 %1404, 2
  %1408 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1365, i32 44)  ; BufferLoad(srv,index,wot)
  %1409 = extractvalue %dx.types.ResRet.f32 %1408, 0
  %1410 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1365, i32 48)  ; BufferLoad(srv,index,wot)
  %1411 = extractvalue %dx.types.ResRet.f32 %1410, 0
  %1412 = extractvalue %dx.types.ResRet.f32 %1410, 1
  %1413 = extractvalue %dx.types.ResRet.f32 %1410, 2
  %1414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1365, i32 60)  ; BufferLoad(srv,index,wot)
  %1415 = extractvalue %dx.types.ResRet.i32 %1414, 0
  %1416 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1365, i32 64)  ; BufferLoad(srv,index,wot)
  %1417 = extractvalue %dx.types.ResRet.f32 %1416, 0
  %1418 = extractvalue %dx.types.ResRet.f32 %1416, 1
  %1419 = extractvalue %dx.types.ResRet.f32 %1416, 2
  %1420 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1365, i32 76)  ; BufferLoad(srv,index,wot)
  %1421 = extractvalue %dx.types.ResRet.f32 %1420, 0
  %1422 = extractvalue %dx.types.ResRet.f32 %1420, 1
  %1423 = extractvalue %dx.types.ResRet.f32 %1420, 2
  %1424 = and i32 %1415, 16777216
  %1425 = icmp ne i32 %1424, 0
  %1426 = fsub fast float %138, %1411
  %1427 = fsub fast float %142, %1412
  %1428 = fsub fast float %146, %1413
  %1429 = fmul fast float %1426, %1397
  %1430 = call float @dx.op.tertiary.f32(i32 46, float %1401, float %1427, float %1429)  ; FMad(a,b,c)
  %1431 = call float @dx.op.tertiary.f32(i32 46, float %1405, float %1428, float %1430)  ; FMad(a,b,c)
  %1432 = fmul fast float %1426, %1398
  %1433 = call float @dx.op.tertiary.f32(i32 46, float %1402, float %1427, float %1432)  ; FMad(a,b,c)
  %1434 = call float @dx.op.tertiary.f32(i32 46, float %1406, float %1428, float %1433)  ; FMad(a,b,c)
  %1435 = fmul fast float %1426, %1399
  %1436 = call float @dx.op.tertiary.f32(i32 46, float %1403, float %1427, float %1435)  ; FMad(a,b,c)
  %1437 = call float @dx.op.tertiary.f32(i32 46, float %1407, float %1428, float %1436)  ; FMad(a,b,c)
  %1438 = fmul fast float %1421, %1409
  %1439 = fmul fast float %1422, %1409
  %1440 = fmul fast float %1423, %1409
  %1441 = fadd fast float %1438, %18
  %1442 = fadd fast float %1439, %18
  %1443 = fadd fast float %1440, %18
  %1444 = fmul fast float %1417, %1409
  %1445 = fmul fast float %1418, %1409
  %1446 = fmul fast float %1419, %1409
  %1447 = fsub fast float %1444, %18
  %1448 = fsub fast float %1445, %18
  %1449 = fsub fast float %1446, %18
  %1450 = fcmp fast olt float %1431, %1441
  %1451 = fcmp fast olt float %1434, %1442
  %1452 = fcmp fast olt float %1437, %1443
  %1453 = and i1 %1450, %1451
  %1454 = and i1 %1453, %1452
  %1455 = fcmp fast ogt float %1431, %1447
  %1456 = fcmp fast ogt float %1434, %1448
  %1457 = fcmp fast ogt float %1437, %1449
  %1458 = and i1 %1455, %1456
  %1459 = and i1 %1458, %1457
  %1460 = and i1 %1454, %1459
  %1461 = and i1 %1425, %1460
  br i1 %1461, label %1462, label %1470, !dx.controlflow.hints !56

; <label>:1462                                    ; preds = %1395
  %1463 = shl i32 %1357, 8
  %1464 = lshr i32 %1356, 24
  %1465 = or i32 %1463, %1464
  %1466 = shl i32 %1356, 8
  %1467 = or i32 %1365, %1466
  %1468 = add i32 %1358, 1
  %1469 = icmp ugt i32 %1468, 7
  br i1 %1469, label %1493, label %1470, !dx.controlflow.hints !57

; <label>:1470                                    ; preds = %1462, %1395, %1367
  %1471 = phi i32 [ %1356, %1367 ], [ %1467, %1462 ], [ %1356, %1395 ]
  %1472 = phi i32 [ %1357, %1367 ], [ %1465, %1462 ], [ %1357, %1395 ]
  %1473 = phi i32 [ %1358, %1367 ], [ %1468, %1462 ], [ %1358, %1395 ]
  %1474 = add nuw nsw i32 %1359, 1
  %1475 = icmp ult i32 %1474, 8
  br i1 %1475, label %1355, label %1476

; <label>:1476                                    ; preds = %1470, %1361, %1355
  %1477 = phi i32 [ %1356, %1361 ], [ %1356, %1355 ], [ %1471, %1470 ]
  %1478 = phi i32 [ %1357, %1361 ], [ %1357, %1355 ], [ %1472, %1470 ]
  %1479 = phi i32 [ %1358, %1361 ], [ %1358, %1355 ], [ %1473, %1470 ]
  br label %1480

; <label>:1480                                    ; preds = %1476, %1194
  %1481 = phi i32 [ %1195, %1194 ], [ %1477, %1476 ]
  %1482 = phi i32 [ %1196, %1194 ], [ %1478, %1476 ]
  %1483 = phi i32 [ %1197, %1194 ], [ %1479, %1476 ]
  %1484 = add nuw nsw i32 %1198, 1
  %1485 = icmp ugt i32 %1484, %1184
  br i1 %1485, label %1486, label %1194

; <label>:1486                                    ; preds = %1480
  br label %1487

; <label>:1487                                    ; preds = %1486, %1187
  %1488 = phi i32 [ %1188, %1187 ], [ %1481, %1486 ]
  %1489 = phi i32 [ %1189, %1187 ], [ %1482, %1486 ]
  %1490 = phi i32 [ %1190, %1187 ], [ %1483, %1486 ]
  %1491 = add nuw nsw i32 %1191, 1
  %1492 = icmp ugt i32 %1491, %1183
  br i1 %1492, label %1495, label %1187

; <label>:1493                                    ; preds = %1462
  br label %1496

; <label>:1494                                    ; preds = %1337
  br label %1496

; <label>:1495                                    ; preds = %1487
  br label %1496

; <label>:1496                                    ; preds = %1495, %1494, %1493, %1160
  %1497 = phi i32 [ -1, %1160 ], [ %1467, %1493 ], [ %1342, %1494 ], [ %1488, %1495 ]
  %1498 = phi i32 [ -1, %1160 ], [ %1465, %1493 ], [ %1340, %1494 ], [ %1489, %1495 ]
  %1499 = phi i32 [ 0, %1160 ], [ %1468, %1493 ], [ %1343, %1494 ], [ %1490, %1495 ]
  %1500 = icmp eq i32 %1499, 0
  br i1 %1500, label %2270, label %1501, !dx.controlflow.hints !58

; <label>:1501                                    ; preds = %1496
  br label %1502

; <label>:1502                                    ; preds = %1852, %1501
  %1503 = phi i32 [ %1862, %1852 ], [ 0, %1501 ]
  %1504 = phi float [ %1866, %1852 ], [ 0.000000e+00, %1501 ]
  %1505 = phi float [ %1867, %1852 ], [ 0.000000e+00, %1501 ]
  %1506 = phi float [ %1868, %1852 ], [ 0.000000e+00, %1501 ]
  %1507 = phi float [ %1863, %1852 ], [ 0.000000e+00, %1501 ]
  %1508 = phi float [ %1864, %1852 ], [ 0.000000e+00, %1501 ]
  %1509 = phi float [ %1865, %1852 ], [ 0.000000e+00, %1501 ]
  %1510 = phi i32 [ %1869, %1852 ], [ 0, %1501 ]
  %1511 = icmp ult i32 %1510, %1499
  br i1 %1511, label %1512, label %1871, !dx.controlflow.hints !59

; <label>:1512                                    ; preds = %1502
  %1513 = shl i32 %1510, 3
  %1514 = lshr i32 %1497, %1513
  %1515 = and i32 %1514, 255
  %1516 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1515, i32 0)  ; BufferLoad(srv,index,wot)
  %1517 = extractvalue %dx.types.ResRet.f32 %1516, 0
  %1518 = extractvalue %dx.types.ResRet.f32 %1516, 1
  %1519 = extractvalue %dx.types.ResRet.f32 %1516, 2
  %1520 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1515, i32 16)  ; BufferLoad(srv,index,wot)
  %1521 = extractvalue %dx.types.ResRet.f32 %1520, 0
  %1522 = extractvalue %dx.types.ResRet.f32 %1520, 1
  %1523 = extractvalue %dx.types.ResRet.f32 %1520, 2
  %1524 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1515, i32 28)  ; BufferLoad(srv,index,wot)
  %1525 = extractvalue %dx.types.ResRet.f32 %1524, 0
  %1526 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1515, i32 32)  ; BufferLoad(srv,index,wot)
  %1527 = extractvalue %dx.types.ResRet.f32 %1526, 0
  %1528 = extractvalue %dx.types.ResRet.f32 %1526, 1
  %1529 = extractvalue %dx.types.ResRet.f32 %1526, 2
  %1530 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1515, i32 44)  ; BufferLoad(srv,index,wot)
  %1531 = extractvalue %dx.types.ResRet.f32 %1530, 0
  %1532 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1515, i32 48)  ; BufferLoad(srv,index,wot)
  %1533 = extractvalue %dx.types.ResRet.f32 %1532, 0
  %1534 = extractvalue %dx.types.ResRet.f32 %1532, 1
  %1535 = extractvalue %dx.types.ResRet.f32 %1532, 2
  %1536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1515, i32 60)  ; BufferLoad(srv,index,wot)
  %1537 = extractvalue %dx.types.ResRet.i32 %1536, 0
  %1538 = and i32 %1537, 4095
  %1539 = icmp eq i32 %1538, 0
  br i1 %1539, label %1852, label %1540

; <label>:1540                                    ; preds = %1512
  %1541 = and i32 %1537, 4095
  br label %1542

; <label>:1542                                    ; preds = %1841, %1540
  %1543 = phi i32 [ %1842, %1841 ], [ 0, %1540 ]
  %1544 = phi float [ %1843, %1841 ], [ 0.000000e+00, %1540 ]
  %1545 = phi float [ %1844, %1841 ], [ 0.000000e+00, %1540 ]
  %1546 = phi float [ %1845, %1841 ], [ 0.000000e+00, %1540 ]
  %1547 = phi float [ %1846, %1841 ], [ 0.000000e+00, %1540 ]
  %1548 = phi float [ %1847, %1841 ], [ 0.000000e+00, %1540 ]
  %1549 = phi float [ %1848, %1841 ], [ 0.000000e+00, %1540 ]
  %1550 = phi i32 [ %1849, %1841 ], [ 0, %1540 ]
  %1551 = lshr i32 %1537, 12
  %1552 = and i32 %1551, 4095
  %1553 = add nuw nsw i32 %1550, %1552
  %1554 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %1553, i32 0)  ; BufferLoad(srv,index,wot)
  %1555 = extractvalue %dx.types.ResRet.f32 %1554, 0
  %1556 = extractvalue %dx.types.ResRet.f32 %1554, 1
  %1557 = extractvalue %dx.types.ResRet.f32 %1554, 2
  %1558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1553, i32 12)  ; BufferLoad(srv,index,wot)
  %1559 = extractvalue %dx.types.ResRet.i32 %1558, 0
  %1560 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %1553, i32 16)  ; BufferLoad(srv,index,wot)
  %1561 = extractvalue %dx.types.ResRet.f32 %1560, 0
  %1562 = extractvalue %dx.types.ResRet.f32 %1560, 1
  %1563 = extractvalue %dx.types.ResRet.f32 %1560, 2
  %1564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1553, i32 28)  ; BufferLoad(srv,index,wot)
  %1565 = extractvalue %dx.types.ResRet.i32 %1564, 0
  %1566 = icmp slt i32 %1565, 0
  %1567 = fsub fast float %138, %1533
  %1568 = fsub fast float %142, %1534
  %1569 = fsub fast float %146, %1535
  %1570 = fmul fast float %1567, %1517
  %1571 = call float @dx.op.tertiary.f32(i32 46, float %1518, float %1568, float %1570)  ; FMad(a,b,c)
  %1572 = call float @dx.op.tertiary.f32(i32 46, float %1519, float %1569, float %1571)  ; FMad(a,b,c)
  %1573 = fmul fast float %1567, %1521
  %1574 = call float @dx.op.tertiary.f32(i32 46, float %1522, float %1568, float %1573)  ; FMad(a,b,c)
  %1575 = call float @dx.op.tertiary.f32(i32 46, float %1523, float %1569, float %1574)  ; FMad(a,b,c)
  %1576 = fmul fast float %1567, %1527
  %1577 = call float @dx.op.tertiary.f32(i32 46, float %1528, float %1568, float %1576)  ; FMad(a,b,c)
  %1578 = call float @dx.op.tertiary.f32(i32 46, float %1529, float %1569, float %1577)  ; FMad(a,b,c)
  %1579 = fmul fast float %1555, %1531
  %1580 = fmul fast float %1556, %1531
  %1581 = fmul fast float %1557, %1531
  %1582 = fmul fast float %1579, 5.000000e-01
  %1583 = fmul fast float %1580, 5.000000e-01
  %1584 = fmul fast float %1581, 5.000000e-01
  %1585 = fadd fast float %1582, 0xBF50624DE0000000
  %1586 = fadd fast float %1583, 0xBF50624DE0000000
  %1587 = fadd fast float %1584, 0xBF50624DE0000000
  %1588 = fcmp fast ogt float %1572, %1585
  %1589 = fcmp fast ogt float %1575, %1586
  %1590 = fcmp fast ogt float %1578, %1587
  %1591 = or i1 %1588, %1589
  %1592 = or i1 %1591, %1590
  br i1 %1566, label %1593, label %1620, !dx.controlflow.hints !42

; <label>:1593                                    ; preds = %1542
  %1594 = fsub fast float 0x3F50624DE0000000, %1582
  %1595 = fsub fast float 0x3F50624DE0000000, %1583
  %1596 = fsub fast float 0x3F50624DE0000000, %1584
  %1597 = fcmp fast olt float %1572, %1594
  %1598 = fcmp fast olt float %1575, %1595
  %1599 = fcmp fast olt float %1578, %1596
  %1600 = or i1 %1597, %1598
  %1601 = or i1 %1600, %1599
  %1602 = or i1 %1592, %1601
  br i1 %1602, label %1822, label %1603, !dx.controlflow.hints !43

; <label>:1603                                    ; preds = %1593
  %1604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1559, i32 0)  ; BufferLoad(srv,index,wot)
  %1605 = extractvalue %dx.types.ResRet.i32 %1604, 0
  %1606 = extractvalue %dx.types.ResRet.i32 %1604, 1
  %1607 = extractvalue %dx.types.ResRet.i32 %1604, 2
  %1608 = bitcast i32 %1605 to float
  %1609 = bitcast i32 %1606 to float
  %1610 = bitcast i32 %1607 to float
  %1611 = fmul fast float %1608, %1517
  %1612 = call float @dx.op.tertiary.f32(i32 46, float %1521, float %1609, float %1611)  ; FMad(a,b,c)
  %1613 = call float @dx.op.tertiary.f32(i32 46, float %1527, float %1610, float %1612)  ; FMad(a,b,c)
  %1614 = fmul fast float %1608, %1518
  %1615 = call float @dx.op.tertiary.f32(i32 46, float %1522, float %1609, float %1614)  ; FMad(a,b,c)
  %1616 = call float @dx.op.tertiary.f32(i32 46, float %1528, float %1610, float %1615)  ; FMad(a,b,c)
  %1617 = fmul fast float %1608, %1519
  %1618 = call float @dx.op.tertiary.f32(i32 46, float %1523, float %1609, float %1617)  ; FMad(a,b,c)
  %1619 = call float @dx.op.tertiary.f32(i32 46, float %1529, float %1610, float %1618)  ; FMad(a,b,c)
  br label %1822

; <label>:1620                                    ; preds = %1542
  %1621 = fmul fast float %1579, -5.000000e-01
  %1622 = fmul fast float %1580, -5.000000e-01
  %1623 = fmul fast float %1581, -5.000000e-01
  %1624 = fadd fast float %1621, 0x3F50624DE0000000
  %1625 = fadd fast float %1622, 0x3F50624DE0000000
  %1626 = fadd fast float %1623, 0x3F50624DE0000000
  %1627 = fcmp fast olt float %1572, %1624
  %1628 = fcmp fast olt float %1575, %1625
  %1629 = fcmp fast olt float %1578, %1626
  %1630 = or i1 %1627, %1628
  %1631 = or i1 %1630, %1629
  %1632 = or i1 %1592, %1631
  br i1 %1632, label %1822, label %1633, !dx.controlflow.hints !43

; <label>:1633                                    ; preds = %1620
  %1634 = and i32 %1565, 1023
  %1635 = lshr i32 %1565, 10
  %1636 = and i32 %1635, 1023
  %1637 = lshr i32 %1565, 20
  %1638 = and i32 %1637, 1023
  %1639 = add nuw nsw i32 %1634, 1
  %1640 = add nuw nsw i32 %1636, 1
  %1641 = fsub fast float %1572, %1621
  %1642 = fsub fast float %1575, %1622
  %1643 = fsub fast float %1578, %1623
  %1644 = fmul fast float %1561, %1531
  %1645 = fmul fast float %1562, %1531
  %1646 = fmul fast float %1563, %1531
  %1647 = fdiv fast float 1.000000e+00, %1644
  %1648 = fdiv fast float 1.000000e+00, %1645
  %1649 = fdiv fast float 1.000000e+00, %1646
  %1650 = fmul fast float %1647, %1641
  %1651 = fmul fast float %1648, %1642
  %1652 = fmul fast float %1649, %1643
  %1653 = call float @dx.op.unary.f32(i32 27, float %1650)  ; Round_ni(value)
  %1654 = call float @dx.op.unary.f32(i32 27, float %1651)  ; Round_ni(value)
  %1655 = call float @dx.op.unary.f32(i32 27, float %1652)  ; Round_ni(value)
  %1656 = fptosi float %1653 to i32
  %1657 = fptosi float %1654 to i32
  %1658 = fptosi float %1655 to i32
  %1659 = call i32 @dx.op.binary.i32(i32 37, i32 %1656, i32 0)  ; IMax(a,b)
  %1660 = call i32 @dx.op.binary.i32(i32 37, i32 %1657, i32 0)  ; IMax(a,b)
  %1661 = call i32 @dx.op.binary.i32(i32 37, i32 %1658, i32 0)  ; IMax(a,b)
  %1662 = call i32 @dx.op.binary.i32(i32 38, i32 %1659, i32 %1634)  ; IMin(a,b)
  %1663 = call i32 @dx.op.binary.i32(i32 38, i32 %1660, i32 %1636)  ; IMin(a,b)
  %1664 = call i32 @dx.op.binary.i32(i32 38, i32 %1661, i32 %1638)  ; IMin(a,b)
  %1665 = call float @dx.op.unary.f32(i32 22, float %1650)  ; Frc(value)
  %1666 = call float @dx.op.unary.f32(i32 22, float %1651)  ; Frc(value)
  %1667 = call float @dx.op.unary.f32(i32 22, float %1652)  ; Frc(value)
  %1668 = fsub fast float 1.000000e+00, %1666
  %1669 = fsub fast float 1.000000e+00, %1667
  %1670 = fmul fast float %1669, %1668
  %1671 = fmul fast float %1668, %1667
  %1672 = fmul fast float %1669, %1666
  %1673 = fmul fast float %1667, %1666
  %1674 = fsub fast float 1.000000e+00, %1665
  %1675 = fmul fast float %1670, %1674
  %1676 = fmul fast float %1671, %1674
  %1677 = fmul fast float %1672, %1674
  %1678 = fmul fast float %1673, %1674
  %1679 = fmul fast float %1670, %1665
  %1680 = fmul fast float %1671, %1665
  %1681 = fmul fast float %1672, %1665
  %1682 = fmul fast float %1673, %1665
  %1683 = call i32 @dx.op.binary.i32(i32 40, i32 %1662, i32 %1634)  ; UMin(a,b)
  %1684 = call i32 @dx.op.binary.i32(i32 40, i32 %1663, i32 %1636)  ; UMin(a,b)
  %1685 = call i32 @dx.op.binary.i32(i32 40, i32 %1664, i32 %1638)  ; UMin(a,b)
  %1686 = mul i32 %1685, %1640
  %1687 = add i32 %1686, %1684
  %1688 = mul i32 %1687, %1639
  %1689 = add i32 %1683, %1559
  %1690 = add i32 %1689, %1688
  %1691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1690, i32 0)  ; BufferLoad(srv,index,wot)
  %1692 = extractvalue %dx.types.ResRet.i32 %1691, 0
  %1693 = extractvalue %dx.types.ResRet.i32 %1691, 1
  %1694 = extractvalue %dx.types.ResRet.i32 %1691, 2
  %1695 = bitcast i32 %1692 to float
  %1696 = bitcast i32 %1693 to float
  %1697 = bitcast i32 %1694 to float
  %1698 = add i32 %1664, 1
  %1699 = call i32 @dx.op.binary.i32(i32 40, i32 %1698, i32 %1638)  ; UMin(a,b)
  %1700 = mul i32 %1699, %1640
  %1701 = add i32 %1700, %1684
  %1702 = mul i32 %1701, %1639
  %1703 = add i32 %1689, %1702
  %1704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1703, i32 0)  ; BufferLoad(srv,index,wot)
  %1705 = extractvalue %dx.types.ResRet.i32 %1704, 0
  %1706 = extractvalue %dx.types.ResRet.i32 %1704, 1
  %1707 = extractvalue %dx.types.ResRet.i32 %1704, 2
  %1708 = bitcast i32 %1705 to float
  %1709 = bitcast i32 %1706 to float
  %1710 = bitcast i32 %1707 to float
  %1711 = add i32 %1663, 1
  %1712 = call i32 @dx.op.binary.i32(i32 40, i32 %1711, i32 %1636)  ; UMin(a,b)
  %1713 = add i32 %1686, %1712
  %1714 = mul i32 %1713, %1639
  %1715 = add i32 %1689, %1714
  %1716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1715, i32 0)  ; BufferLoad(srv,index,wot)
  %1717 = extractvalue %dx.types.ResRet.i32 %1716, 0
  %1718 = extractvalue %dx.types.ResRet.i32 %1716, 1
  %1719 = extractvalue %dx.types.ResRet.i32 %1716, 2
  %1720 = bitcast i32 %1717 to float
  %1721 = bitcast i32 %1718 to float
  %1722 = bitcast i32 %1719 to float
  %1723 = add i32 %1700, %1712
  %1724 = mul i32 %1723, %1639
  %1725 = add i32 %1689, %1724
  %1726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1725, i32 0)  ; BufferLoad(srv,index,wot)
  %1727 = extractvalue %dx.types.ResRet.i32 %1726, 0
  %1728 = extractvalue %dx.types.ResRet.i32 %1726, 1
  %1729 = extractvalue %dx.types.ResRet.i32 %1726, 2
  %1730 = bitcast i32 %1727 to float
  %1731 = bitcast i32 %1728 to float
  %1732 = bitcast i32 %1729 to float
  %1733 = add i32 %1662, 1
  %1734 = call i32 @dx.op.binary.i32(i32 40, i32 %1733, i32 %1634)  ; UMin(a,b)
  %1735 = add i32 %1734, %1559
  %1736 = add i32 %1735, %1688
  %1737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1736, i32 0)  ; BufferLoad(srv,index,wot)
  %1738 = extractvalue %dx.types.ResRet.i32 %1737, 0
  %1739 = extractvalue %dx.types.ResRet.i32 %1737, 1
  %1740 = extractvalue %dx.types.ResRet.i32 %1737, 2
  %1741 = bitcast i32 %1738 to float
  %1742 = bitcast i32 %1739 to float
  %1743 = bitcast i32 %1740 to float
  %1744 = add i32 %1735, %1702
  %1745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1744, i32 0)  ; BufferLoad(srv,index,wot)
  %1746 = extractvalue %dx.types.ResRet.i32 %1745, 0
  %1747 = extractvalue %dx.types.ResRet.i32 %1745, 1
  %1748 = extractvalue %dx.types.ResRet.i32 %1745, 2
  %1749 = bitcast i32 %1746 to float
  %1750 = bitcast i32 %1747 to float
  %1751 = bitcast i32 %1748 to float
  %1752 = add i32 %1735, %1714
  %1753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1752, i32 0)  ; BufferLoad(srv,index,wot)
  %1754 = extractvalue %dx.types.ResRet.i32 %1753, 0
  %1755 = extractvalue %dx.types.ResRet.i32 %1753, 1
  %1756 = extractvalue %dx.types.ResRet.i32 %1753, 2
  %1757 = bitcast i32 %1754 to float
  %1758 = bitcast i32 %1755 to float
  %1759 = bitcast i32 %1756 to float
  %1760 = add i32 %1735, %1724
  %1761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1760, i32 0)  ; BufferLoad(srv,index,wot)
  %1762 = extractvalue %dx.types.ResRet.i32 %1761, 0
  %1763 = extractvalue %dx.types.ResRet.i32 %1761, 1
  %1764 = extractvalue %dx.types.ResRet.i32 %1761, 2
  %1765 = bitcast i32 %1762 to float
  %1766 = bitcast i32 %1763 to float
  %1767 = bitcast i32 %1764 to float
  %1768 = fmul fast float %1695, %1675
  %1769 = fmul fast float %1696, %1675
  %1770 = fmul fast float %1697, %1675
  %1771 = fmul fast float %1708, %1676
  %1772 = fmul fast float %1709, %1676
  %1773 = fmul fast float %1710, %1676
  %1774 = fadd fast float %1771, %1768
  %1775 = fadd fast float %1772, %1769
  %1776 = fadd fast float %1773, %1770
  %1777 = fmul fast float %1720, %1677
  %1778 = fmul fast float %1721, %1677
  %1779 = fmul fast float %1722, %1677
  %1780 = fadd fast float %1774, %1777
  %1781 = fadd fast float %1775, %1778
  %1782 = fadd fast float %1776, %1779
  %1783 = fmul fast float %1730, %1678
  %1784 = fmul fast float %1731, %1678
  %1785 = fmul fast float %1732, %1678
  %1786 = fadd fast float %1780, %1783
  %1787 = fadd fast float %1781, %1784
  %1788 = fadd fast float %1782, %1785
  %1789 = fmul fast float %1741, %1679
  %1790 = fmul fast float %1742, %1679
  %1791 = fmul fast float %1743, %1679
  %1792 = fadd fast float %1786, %1789
  %1793 = fadd fast float %1787, %1790
  %1794 = fadd fast float %1788, %1791
  %1795 = fmul fast float %1749, %1680
  %1796 = fmul fast float %1750, %1680
  %1797 = fmul fast float %1751, %1680
  %1798 = fadd fast float %1792, %1795
  %1799 = fadd fast float %1793, %1796
  %1800 = fadd fast float %1794, %1797
  %1801 = fmul fast float %1757, %1681
  %1802 = fmul fast float %1758, %1681
  %1803 = fmul fast float %1759, %1681
  %1804 = fadd fast float %1798, %1801
  %1805 = fadd fast float %1799, %1802
  %1806 = fadd fast float %1800, %1803
  %1807 = fmul fast float %1765, %1682
  %1808 = fmul fast float %1766, %1682
  %1809 = fmul fast float %1767, %1682
  %1810 = fadd fast float %1804, %1807
  %1811 = fadd fast float %1805, %1808
  %1812 = fadd fast float %1806, %1809
  %1813 = fmul fast float %1810, %1517
  %1814 = call float @dx.op.tertiary.f32(i32 46, float %1521, float %1811, float %1813)  ; FMad(a,b,c)
  %1815 = call float @dx.op.tertiary.f32(i32 46, float %1527, float %1812, float %1814)  ; FMad(a,b,c)
  %1816 = fmul fast float %1810, %1518
  %1817 = call float @dx.op.tertiary.f32(i32 46, float %1522, float %1811, float %1816)  ; FMad(a,b,c)
  %1818 = call float @dx.op.tertiary.f32(i32 46, float %1528, float %1812, float %1817)  ; FMad(a,b,c)
  %1819 = fmul fast float %1810, %1519
  %1820 = call float @dx.op.tertiary.f32(i32 46, float %1523, float %1811, float %1819)  ; FMad(a,b,c)
  %1821 = call float @dx.op.tertiary.f32(i32 46, float %1529, float %1812, float %1820)  ; FMad(a,b,c)
  br label %1822

; <label>:1822                                    ; preds = %1633, %1620, %1603, %1593
  %1823 = phi i1 [ true, %1633 ], [ false, %1620 ], [ true, %1603 ], [ false, %1593 ]
  %1824 = phi float [ %1815, %1633 ], [ 0.000000e+00, %1620 ], [ %1613, %1603 ], [ 0.000000e+00, %1593 ]
  %1825 = phi float [ %1818, %1633 ], [ 0.000000e+00, %1620 ], [ %1616, %1603 ], [ 0.000000e+00, %1593 ]
  %1826 = phi float [ %1821, %1633 ], [ 0.000000e+00, %1620 ], [ %1619, %1603 ], [ 0.000000e+00, %1593 ]
  br i1 %1823, label %1827, label %1841, !dx.controlflow.hints !44

; <label>:1827                                    ; preds = %1822
  %1828 = fmul fast float %1824, %1525
  %1829 = fmul fast float %1825, %1525
  %1830 = fmul fast float %1826, %1525
  %1831 = and i32 %1565, 1073741824
  %1832 = icmp eq i32 %1831, 0
  br i1 %1832, label %1837, label %1833, !dx.controlflow.hints !45

; <label>:1833                                    ; preds = %1827
  %1834 = fadd fast float %1828, %1544
  %1835 = fadd fast float %1829, %1545
  %1836 = fadd fast float %1830, %1546
  br label %1841

; <label>:1837                                    ; preds = %1827
  %1838 = fadd fast float %1828, %1547
  %1839 = fadd fast float %1829, %1548
  %1840 = fadd fast float %1830, %1549
  br label %1841

; <label>:1841                                    ; preds = %1837, %1833, %1822
  %1842 = phi i32 [ 1, %1833 ], [ %1543, %1837 ], [ %1543, %1822 ]
  %1843 = phi float [ %1834, %1833 ], [ %1544, %1837 ], [ %1544, %1822 ]
  %1844 = phi float [ %1835, %1833 ], [ %1545, %1837 ], [ %1545, %1822 ]
  %1845 = phi float [ %1836, %1833 ], [ %1546, %1837 ], [ %1546, %1822 ]
  %1846 = phi float [ %1547, %1833 ], [ %1838, %1837 ], [ %1547, %1822 ]
  %1847 = phi float [ %1548, %1833 ], [ %1839, %1837 ], [ %1548, %1822 ]
  %1848 = phi float [ %1549, %1833 ], [ %1840, %1837 ], [ %1549, %1822 ]
  %1849 = add nuw nsw i32 %1550, 1
  %1850 = icmp eq i32 %1849, %1541
  br i1 %1850, label %1851, label %1542

; <label>:1851                                    ; preds = %1841
  br label %1852

; <label>:1852                                    ; preds = %1851, %1512
  %1853 = phi i32 [ 0, %1512 ], [ %1842, %1851 ]
  %1854 = phi float [ 0.000000e+00, %1512 ], [ %1843, %1851 ]
  %1855 = phi float [ 0.000000e+00, %1512 ], [ %1844, %1851 ]
  %1856 = phi float [ 0.000000e+00, %1512 ], [ %1845, %1851 ]
  %1857 = phi float [ 0.000000e+00, %1512 ], [ %1846, %1851 ]
  %1858 = phi float [ 0.000000e+00, %1512 ], [ %1847, %1851 ]
  %1859 = phi float [ 0.000000e+00, %1512 ], [ %1848, %1851 ]
  %1860 = or i32 %1853, %1503
  %1861 = icmp ne i32 %1860, 0
  %1862 = zext i1 %1861 to i32
  %1863 = fadd fast float %1854, %1507
  %1864 = fadd fast float %1855, %1508
  %1865 = fadd fast float %1856, %1509
  %1866 = fadd fast float %1857, %1504
  %1867 = fadd fast float %1858, %1505
  %1868 = fadd fast float %1859, %1506
  %1869 = add nuw nsw i32 %1510, 1
  %1870 = icmp ult i32 %1869, 4
  br i1 %1870, label %1502, label %1871

; <label>:1871                                    ; preds = %1852, %1502
  %1872 = phi i32 [ %1503, %1502 ], [ %1862, %1852 ]
  %1873 = phi float [ %1504, %1502 ], [ %1866, %1852 ]
  %1874 = phi float [ %1505, %1502 ], [ %1867, %1852 ]
  %1875 = phi float [ %1506, %1502 ], [ %1868, %1852 ]
  %1876 = phi float [ %1507, %1502 ], [ %1863, %1852 ]
  %1877 = phi float [ %1508, %1502 ], [ %1864, %1852 ]
  %1878 = phi float [ %1509, %1502 ], [ %1865, %1852 ]
  %1879 = icmp ne i32 %1872, 0
  %1880 = zext i1 %1879 to i32
  %1881 = icmp ugt i32 %1499, 4
  br i1 %1881, label %1882, label %2270, !dx.controlflow.hints !60

; <label>:1882                                    ; preds = %1871
  %1883 = add i32 %1499, -4
  br label %1884

; <label>:1884                                    ; preds = %2234, %1882
  %1885 = phi i32 [ 0, %1882 ], [ %2244, %2234 ]
  %1886 = phi float [ 0.000000e+00, %1882 ], [ %2248, %2234 ]
  %1887 = phi float [ 0.000000e+00, %1882 ], [ %2249, %2234 ]
  %1888 = phi float [ 0.000000e+00, %1882 ], [ %2250, %2234 ]
  %1889 = phi float [ 0.000000e+00, %1882 ], [ %2245, %2234 ]
  %1890 = phi float [ 0.000000e+00, %1882 ], [ %2246, %2234 ]
  %1891 = phi float [ 0.000000e+00, %1882 ], [ %2247, %2234 ]
  %1892 = phi i32 [ 0, %1882 ], [ %2251, %2234 ]
  %1893 = icmp ult i32 %1892, %1883
  br i1 %1893, label %1894, label %2253, !dx.controlflow.hints !59

; <label>:1894                                    ; preds = %1884
  %1895 = shl i32 %1892, 3
  %1896 = lshr i32 %1498, %1895
  %1897 = and i32 %1896, 255
  %1898 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1897, i32 0)  ; BufferLoad(srv,index,wot)
  %1899 = extractvalue %dx.types.ResRet.f32 %1898, 0
  %1900 = extractvalue %dx.types.ResRet.f32 %1898, 1
  %1901 = extractvalue %dx.types.ResRet.f32 %1898, 2
  %1902 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1897, i32 16)  ; BufferLoad(srv,index,wot)
  %1903 = extractvalue %dx.types.ResRet.f32 %1902, 0
  %1904 = extractvalue %dx.types.ResRet.f32 %1902, 1
  %1905 = extractvalue %dx.types.ResRet.f32 %1902, 2
  %1906 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1897, i32 28)  ; BufferLoad(srv,index,wot)
  %1907 = extractvalue %dx.types.ResRet.f32 %1906, 0
  %1908 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1897, i32 32)  ; BufferLoad(srv,index,wot)
  %1909 = extractvalue %dx.types.ResRet.f32 %1908, 0
  %1910 = extractvalue %dx.types.ResRet.f32 %1908, 1
  %1911 = extractvalue %dx.types.ResRet.f32 %1908, 2
  %1912 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1897, i32 44)  ; BufferLoad(srv,index,wot)
  %1913 = extractvalue %dx.types.ResRet.f32 %1912, 0
  %1914 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1897, i32 48)  ; BufferLoad(srv,index,wot)
  %1915 = extractvalue %dx.types.ResRet.f32 %1914, 0
  %1916 = extractvalue %dx.types.ResRet.f32 %1914, 1
  %1917 = extractvalue %dx.types.ResRet.f32 %1914, 2
  %1918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1897, i32 60)  ; BufferLoad(srv,index,wot)
  %1919 = extractvalue %dx.types.ResRet.i32 %1918, 0
  %1920 = and i32 %1919, 4095
  %1921 = icmp eq i32 %1920, 0
  br i1 %1921, label %2234, label %1922

; <label>:1922                                    ; preds = %1894
  %1923 = and i32 %1919, 4095
  br label %1924

; <label>:1924                                    ; preds = %2223, %1922
  %1925 = phi i32 [ %2224, %2223 ], [ 0, %1922 ]
  %1926 = phi float [ %2225, %2223 ], [ 0.000000e+00, %1922 ]
  %1927 = phi float [ %2226, %2223 ], [ 0.000000e+00, %1922 ]
  %1928 = phi float [ %2227, %2223 ], [ 0.000000e+00, %1922 ]
  %1929 = phi float [ %2228, %2223 ], [ 0.000000e+00, %1922 ]
  %1930 = phi float [ %2229, %2223 ], [ 0.000000e+00, %1922 ]
  %1931 = phi float [ %2230, %2223 ], [ 0.000000e+00, %1922 ]
  %1932 = phi i32 [ %2231, %2223 ], [ 0, %1922 ]
  %1933 = lshr i32 %1919, 12
  %1934 = and i32 %1933, 4095
  %1935 = add nuw nsw i32 %1932, %1934
  %1936 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %1935, i32 0)  ; BufferLoad(srv,index,wot)
  %1937 = extractvalue %dx.types.ResRet.f32 %1936, 0
  %1938 = extractvalue %dx.types.ResRet.f32 %1936, 1
  %1939 = extractvalue %dx.types.ResRet.f32 %1936, 2
  %1940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1935, i32 12)  ; BufferLoad(srv,index,wot)
  %1941 = extractvalue %dx.types.ResRet.i32 %1940, 0
  %1942 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %1935, i32 16)  ; BufferLoad(srv,index,wot)
  %1943 = extractvalue %dx.types.ResRet.f32 %1942, 0
  %1944 = extractvalue %dx.types.ResRet.f32 %1942, 1
  %1945 = extractvalue %dx.types.ResRet.f32 %1942, 2
  %1946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1935, i32 28)  ; BufferLoad(srv,index,wot)
  %1947 = extractvalue %dx.types.ResRet.i32 %1946, 0
  %1948 = icmp slt i32 %1947, 0
  %1949 = fsub fast float %138, %1915
  %1950 = fsub fast float %142, %1916
  %1951 = fsub fast float %146, %1917
  %1952 = fmul fast float %1949, %1899
  %1953 = call float @dx.op.tertiary.f32(i32 46, float %1900, float %1950, float %1952)  ; FMad(a,b,c)
  %1954 = call float @dx.op.tertiary.f32(i32 46, float %1901, float %1951, float %1953)  ; FMad(a,b,c)
  %1955 = fmul fast float %1949, %1903
  %1956 = call float @dx.op.tertiary.f32(i32 46, float %1904, float %1950, float %1955)  ; FMad(a,b,c)
  %1957 = call float @dx.op.tertiary.f32(i32 46, float %1905, float %1951, float %1956)  ; FMad(a,b,c)
  %1958 = fmul fast float %1949, %1909
  %1959 = call float @dx.op.tertiary.f32(i32 46, float %1910, float %1950, float %1958)  ; FMad(a,b,c)
  %1960 = call float @dx.op.tertiary.f32(i32 46, float %1911, float %1951, float %1959)  ; FMad(a,b,c)
  %1961 = fmul fast float %1937, %1913
  %1962 = fmul fast float %1938, %1913
  %1963 = fmul fast float %1939, %1913
  %1964 = fmul fast float %1961, 5.000000e-01
  %1965 = fmul fast float %1962, 5.000000e-01
  %1966 = fmul fast float %1963, 5.000000e-01
  %1967 = fadd fast float %1964, 0xBF50624DE0000000
  %1968 = fadd fast float %1965, 0xBF50624DE0000000
  %1969 = fadd fast float %1966, 0xBF50624DE0000000
  %1970 = fcmp fast ogt float %1954, %1967
  %1971 = fcmp fast ogt float %1957, %1968
  %1972 = fcmp fast ogt float %1960, %1969
  %1973 = or i1 %1970, %1971
  %1974 = or i1 %1973, %1972
  br i1 %1948, label %1975, label %2002, !dx.controlflow.hints !42

; <label>:1975                                    ; preds = %1924
  %1976 = fsub fast float 0x3F50624DE0000000, %1964
  %1977 = fsub fast float 0x3F50624DE0000000, %1965
  %1978 = fsub fast float 0x3F50624DE0000000, %1966
  %1979 = fcmp fast olt float %1954, %1976
  %1980 = fcmp fast olt float %1957, %1977
  %1981 = fcmp fast olt float %1960, %1978
  %1982 = or i1 %1979, %1980
  %1983 = or i1 %1982, %1981
  %1984 = or i1 %1974, %1983
  br i1 %1984, label %2204, label %1985, !dx.controlflow.hints !43

; <label>:1985                                    ; preds = %1975
  %1986 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1941, i32 0)  ; BufferLoad(srv,index,wot)
  %1987 = extractvalue %dx.types.ResRet.i32 %1986, 0
  %1988 = extractvalue %dx.types.ResRet.i32 %1986, 1
  %1989 = extractvalue %dx.types.ResRet.i32 %1986, 2
  %1990 = bitcast i32 %1987 to float
  %1991 = bitcast i32 %1988 to float
  %1992 = bitcast i32 %1989 to float
  %1993 = fmul fast float %1990, %1899
  %1994 = call float @dx.op.tertiary.f32(i32 46, float %1903, float %1991, float %1993)  ; FMad(a,b,c)
  %1995 = call float @dx.op.tertiary.f32(i32 46, float %1909, float %1992, float %1994)  ; FMad(a,b,c)
  %1996 = fmul fast float %1990, %1900
  %1997 = call float @dx.op.tertiary.f32(i32 46, float %1904, float %1991, float %1996)  ; FMad(a,b,c)
  %1998 = call float @dx.op.tertiary.f32(i32 46, float %1910, float %1992, float %1997)  ; FMad(a,b,c)
  %1999 = fmul fast float %1990, %1901
  %2000 = call float @dx.op.tertiary.f32(i32 46, float %1905, float %1991, float %1999)  ; FMad(a,b,c)
  %2001 = call float @dx.op.tertiary.f32(i32 46, float %1911, float %1992, float %2000)  ; FMad(a,b,c)
  br label %2204

; <label>:2002                                    ; preds = %1924
  %2003 = fmul fast float %1961, -5.000000e-01
  %2004 = fmul fast float %1962, -5.000000e-01
  %2005 = fmul fast float %1963, -5.000000e-01
  %2006 = fadd fast float %2003, 0x3F50624DE0000000
  %2007 = fadd fast float %2004, 0x3F50624DE0000000
  %2008 = fadd fast float %2005, 0x3F50624DE0000000
  %2009 = fcmp fast olt float %1954, %2006
  %2010 = fcmp fast olt float %1957, %2007
  %2011 = fcmp fast olt float %1960, %2008
  %2012 = or i1 %2009, %2010
  %2013 = or i1 %2012, %2011
  %2014 = or i1 %1974, %2013
  br i1 %2014, label %2204, label %2015, !dx.controlflow.hints !43

; <label>:2015                                    ; preds = %2002
  %2016 = and i32 %1947, 1023
  %2017 = lshr i32 %1947, 10
  %2018 = and i32 %2017, 1023
  %2019 = lshr i32 %1947, 20
  %2020 = and i32 %2019, 1023
  %2021 = add nuw nsw i32 %2016, 1
  %2022 = add nuw nsw i32 %2018, 1
  %2023 = fsub fast float %1954, %2003
  %2024 = fsub fast float %1957, %2004
  %2025 = fsub fast float %1960, %2005
  %2026 = fmul fast float %1943, %1913
  %2027 = fmul fast float %1944, %1913
  %2028 = fmul fast float %1945, %1913
  %2029 = fdiv fast float 1.000000e+00, %2026
  %2030 = fdiv fast float 1.000000e+00, %2027
  %2031 = fdiv fast float 1.000000e+00, %2028
  %2032 = fmul fast float %2029, %2023
  %2033 = fmul fast float %2030, %2024
  %2034 = fmul fast float %2031, %2025
  %2035 = call float @dx.op.unary.f32(i32 27, float %2032)  ; Round_ni(value)
  %2036 = call float @dx.op.unary.f32(i32 27, float %2033)  ; Round_ni(value)
  %2037 = call float @dx.op.unary.f32(i32 27, float %2034)  ; Round_ni(value)
  %2038 = fptosi float %2035 to i32
  %2039 = fptosi float %2036 to i32
  %2040 = fptosi float %2037 to i32
  %2041 = call i32 @dx.op.binary.i32(i32 37, i32 %2038, i32 0)  ; IMax(a,b)
  %2042 = call i32 @dx.op.binary.i32(i32 37, i32 %2039, i32 0)  ; IMax(a,b)
  %2043 = call i32 @dx.op.binary.i32(i32 37, i32 %2040, i32 0)  ; IMax(a,b)
  %2044 = call i32 @dx.op.binary.i32(i32 38, i32 %2041, i32 %2016)  ; IMin(a,b)
  %2045 = call i32 @dx.op.binary.i32(i32 38, i32 %2042, i32 %2018)  ; IMin(a,b)
  %2046 = call i32 @dx.op.binary.i32(i32 38, i32 %2043, i32 %2020)  ; IMin(a,b)
  %2047 = call float @dx.op.unary.f32(i32 22, float %2032)  ; Frc(value)
  %2048 = call float @dx.op.unary.f32(i32 22, float %2033)  ; Frc(value)
  %2049 = call float @dx.op.unary.f32(i32 22, float %2034)  ; Frc(value)
  %2050 = fsub fast float 1.000000e+00, %2048
  %2051 = fsub fast float 1.000000e+00, %2049
  %2052 = fmul fast float %2051, %2050
  %2053 = fmul fast float %2050, %2049
  %2054 = fmul fast float %2051, %2048
  %2055 = fmul fast float %2049, %2048
  %2056 = fsub fast float 1.000000e+00, %2047
  %2057 = fmul fast float %2052, %2056
  %2058 = fmul fast float %2053, %2056
  %2059 = fmul fast float %2054, %2056
  %2060 = fmul fast float %2055, %2056
  %2061 = fmul fast float %2052, %2047
  %2062 = fmul fast float %2053, %2047
  %2063 = fmul fast float %2054, %2047
  %2064 = fmul fast float %2055, %2047
  %2065 = call i32 @dx.op.binary.i32(i32 40, i32 %2044, i32 %2016)  ; UMin(a,b)
  %2066 = call i32 @dx.op.binary.i32(i32 40, i32 %2045, i32 %2018)  ; UMin(a,b)
  %2067 = call i32 @dx.op.binary.i32(i32 40, i32 %2046, i32 %2020)  ; UMin(a,b)
  %2068 = mul i32 %2067, %2022
  %2069 = add i32 %2068, %2066
  %2070 = mul i32 %2069, %2021
  %2071 = add i32 %2065, %1941
  %2072 = add i32 %2071, %2070
  %2073 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %2072, i32 0)  ; BufferLoad(srv,index,wot)
  %2074 = extractvalue %dx.types.ResRet.i32 %2073, 0
  %2075 = extractvalue %dx.types.ResRet.i32 %2073, 1
  %2076 = extractvalue %dx.types.ResRet.i32 %2073, 2
  %2077 = bitcast i32 %2074 to float
  %2078 = bitcast i32 %2075 to float
  %2079 = bitcast i32 %2076 to float
  %2080 = add i32 %2046, 1
  %2081 = call i32 @dx.op.binary.i32(i32 40, i32 %2080, i32 %2020)  ; UMin(a,b)
  %2082 = mul i32 %2081, %2022
  %2083 = add i32 %2082, %2066
  %2084 = mul i32 %2083, %2021
  %2085 = add i32 %2071, %2084
  %2086 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %2085, i32 0)  ; BufferLoad(srv,index,wot)
  %2087 = extractvalue %dx.types.ResRet.i32 %2086, 0
  %2088 = extractvalue %dx.types.ResRet.i32 %2086, 1
  %2089 = extractvalue %dx.types.ResRet.i32 %2086, 2
  %2090 = bitcast i32 %2087 to float
  %2091 = bitcast i32 %2088 to float
  %2092 = bitcast i32 %2089 to float
  %2093 = add i32 %2045, 1
  %2094 = call i32 @dx.op.binary.i32(i32 40, i32 %2093, i32 %2018)  ; UMin(a,b)
  %2095 = add i32 %2068, %2094
  %2096 = mul i32 %2095, %2021
  %2097 = add i32 %2071, %2096
  %2098 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %2097, i32 0)  ; BufferLoad(srv,index,wot)
  %2099 = extractvalue %dx.types.ResRet.i32 %2098, 0
  %2100 = extractvalue %dx.types.ResRet.i32 %2098, 1
  %2101 = extractvalue %dx.types.ResRet.i32 %2098, 2
  %2102 = bitcast i32 %2099 to float
  %2103 = bitcast i32 %2100 to float
  %2104 = bitcast i32 %2101 to float
  %2105 = add i32 %2082, %2094
  %2106 = mul i32 %2105, %2021
  %2107 = add i32 %2071, %2106
  %2108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %2107, i32 0)  ; BufferLoad(srv,index,wot)
  %2109 = extractvalue %dx.types.ResRet.i32 %2108, 0
  %2110 = extractvalue %dx.types.ResRet.i32 %2108, 1
  %2111 = extractvalue %dx.types.ResRet.i32 %2108, 2
  %2112 = bitcast i32 %2109 to float
  %2113 = bitcast i32 %2110 to float
  %2114 = bitcast i32 %2111 to float
  %2115 = add i32 %2044, 1
  %2116 = call i32 @dx.op.binary.i32(i32 40, i32 %2115, i32 %2016)  ; UMin(a,b)
  %2117 = add i32 %2116, %1941
  %2118 = add i32 %2117, %2070
  %2119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %2118, i32 0)  ; BufferLoad(srv,index,wot)
  %2120 = extractvalue %dx.types.ResRet.i32 %2119, 0
  %2121 = extractvalue %dx.types.ResRet.i32 %2119, 1
  %2122 = extractvalue %dx.types.ResRet.i32 %2119, 2
  %2123 = bitcast i32 %2120 to float
  %2124 = bitcast i32 %2121 to float
  %2125 = bitcast i32 %2122 to float
  %2126 = add i32 %2117, %2084
  %2127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %2126, i32 0)  ; BufferLoad(srv,index,wot)
  %2128 = extractvalue %dx.types.ResRet.i32 %2127, 0
  %2129 = extractvalue %dx.types.ResRet.i32 %2127, 1
  %2130 = extractvalue %dx.types.ResRet.i32 %2127, 2
  %2131 = bitcast i32 %2128 to float
  %2132 = bitcast i32 %2129 to float
  %2133 = bitcast i32 %2130 to float
  %2134 = add i32 %2117, %2096
  %2135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %2134, i32 0)  ; BufferLoad(srv,index,wot)
  %2136 = extractvalue %dx.types.ResRet.i32 %2135, 0
  %2137 = extractvalue %dx.types.ResRet.i32 %2135, 1
  %2138 = extractvalue %dx.types.ResRet.i32 %2135, 2
  %2139 = bitcast i32 %2136 to float
  %2140 = bitcast i32 %2137 to float
  %2141 = bitcast i32 %2138 to float
  %2142 = add i32 %2117, %2106
  %2143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %2142, i32 0)  ; BufferLoad(srv,index,wot)
  %2144 = extractvalue %dx.types.ResRet.i32 %2143, 0
  %2145 = extractvalue %dx.types.ResRet.i32 %2143, 1
  %2146 = extractvalue %dx.types.ResRet.i32 %2143, 2
  %2147 = bitcast i32 %2144 to float
  %2148 = bitcast i32 %2145 to float
  %2149 = bitcast i32 %2146 to float
  %2150 = fmul fast float %2077, %2057
  %2151 = fmul fast float %2078, %2057
  %2152 = fmul fast float %2079, %2057
  %2153 = fmul fast float %2090, %2058
  %2154 = fmul fast float %2091, %2058
  %2155 = fmul fast float %2092, %2058
  %2156 = fadd fast float %2153, %2150
  %2157 = fadd fast float %2154, %2151
  %2158 = fadd fast float %2155, %2152
  %2159 = fmul fast float %2102, %2059
  %2160 = fmul fast float %2103, %2059
  %2161 = fmul fast float %2104, %2059
  %2162 = fadd fast float %2156, %2159
  %2163 = fadd fast float %2157, %2160
  %2164 = fadd fast float %2158, %2161
  %2165 = fmul fast float %2112, %2060
  %2166 = fmul fast float %2113, %2060
  %2167 = fmul fast float %2114, %2060
  %2168 = fadd fast float %2162, %2165
  %2169 = fadd fast float %2163, %2166
  %2170 = fadd fast float %2164, %2167
  %2171 = fmul fast float %2123, %2061
  %2172 = fmul fast float %2124, %2061
  %2173 = fmul fast float %2125, %2061
  %2174 = fadd fast float %2168, %2171
  %2175 = fadd fast float %2169, %2172
  %2176 = fadd fast float %2170, %2173
  %2177 = fmul fast float %2131, %2062
  %2178 = fmul fast float %2132, %2062
  %2179 = fmul fast float %2133, %2062
  %2180 = fadd fast float %2174, %2177
  %2181 = fadd fast float %2175, %2178
  %2182 = fadd fast float %2176, %2179
  %2183 = fmul fast float %2139, %2063
  %2184 = fmul fast float %2140, %2063
  %2185 = fmul fast float %2141, %2063
  %2186 = fadd fast float %2180, %2183
  %2187 = fadd fast float %2181, %2184
  %2188 = fadd fast float %2182, %2185
  %2189 = fmul fast float %2147, %2064
  %2190 = fmul fast float %2148, %2064
  %2191 = fmul fast float %2149, %2064
  %2192 = fadd fast float %2186, %2189
  %2193 = fadd fast float %2187, %2190
  %2194 = fadd fast float %2188, %2191
  %2195 = fmul fast float %2192, %1899
  %2196 = call float @dx.op.tertiary.f32(i32 46, float %1903, float %2193, float %2195)  ; FMad(a,b,c)
  %2197 = call float @dx.op.tertiary.f32(i32 46, float %1909, float %2194, float %2196)  ; FMad(a,b,c)
  %2198 = fmul fast float %2192, %1900
  %2199 = call float @dx.op.tertiary.f32(i32 46, float %1904, float %2193, float %2198)  ; FMad(a,b,c)
  %2200 = call float @dx.op.tertiary.f32(i32 46, float %1910, float %2194, float %2199)  ; FMad(a,b,c)
  %2201 = fmul fast float %2192, %1901
  %2202 = call float @dx.op.tertiary.f32(i32 46, float %1905, float %2193, float %2201)  ; FMad(a,b,c)
  %2203 = call float @dx.op.tertiary.f32(i32 46, float %1911, float %2194, float %2202)  ; FMad(a,b,c)
  br label %2204

; <label>:2204                                    ; preds = %2015, %2002, %1985, %1975
  %2205 = phi i1 [ true, %2015 ], [ false, %2002 ], [ true, %1985 ], [ false, %1975 ]
  %2206 = phi float [ %2197, %2015 ], [ 0.000000e+00, %2002 ], [ %1995, %1985 ], [ 0.000000e+00, %1975 ]
  %2207 = phi float [ %2200, %2015 ], [ 0.000000e+00, %2002 ], [ %1998, %1985 ], [ 0.000000e+00, %1975 ]
  %2208 = phi float [ %2203, %2015 ], [ 0.000000e+00, %2002 ], [ %2001, %1985 ], [ 0.000000e+00, %1975 ]
  br i1 %2205, label %2209, label %2223, !dx.controlflow.hints !44

; <label>:2209                                    ; preds = %2204
  %2210 = fmul fast float %2206, %1907
  %2211 = fmul fast float %2207, %1907
  %2212 = fmul fast float %2208, %1907
  %2213 = and i32 %1947, 1073741824
  %2214 = icmp eq i32 %2213, 0
  br i1 %2214, label %2219, label %2215, !dx.controlflow.hints !45

; <label>:2215                                    ; preds = %2209
  %2216 = fadd fast float %2210, %1926
  %2217 = fadd fast float %2211, %1927
  %2218 = fadd fast float %2212, %1928
  br label %2223

; <label>:2219                                    ; preds = %2209
  %2220 = fadd fast float %2210, %1929
  %2221 = fadd fast float %2211, %1930
  %2222 = fadd fast float %2212, %1931
  br label %2223

; <label>:2223                                    ; preds = %2219, %2215, %2204
  %2224 = phi i32 [ 1, %2215 ], [ %1925, %2219 ], [ %1925, %2204 ]
  %2225 = phi float [ %2216, %2215 ], [ %1926, %2219 ], [ %1926, %2204 ]
  %2226 = phi float [ %2217, %2215 ], [ %1927, %2219 ], [ %1927, %2204 ]
  %2227 = phi float [ %2218, %2215 ], [ %1928, %2219 ], [ %1928, %2204 ]
  %2228 = phi float [ %1929, %2215 ], [ %2220, %2219 ], [ %1929, %2204 ]
  %2229 = phi float [ %1930, %2215 ], [ %2221, %2219 ], [ %1930, %2204 ]
  %2230 = phi float [ %1931, %2215 ], [ %2222, %2219 ], [ %1931, %2204 ]
  %2231 = add nuw nsw i32 %1932, 1
  %2232 = icmp eq i32 %2231, %1923
  br i1 %2232, label %2233, label %1924

; <label>:2233                                    ; preds = %2223
  br label %2234

; <label>:2234                                    ; preds = %2233, %1894
  %2235 = phi i32 [ 0, %1894 ], [ %2224, %2233 ]
  %2236 = phi float [ 0.000000e+00, %1894 ], [ %2225, %2233 ]
  %2237 = phi float [ 0.000000e+00, %1894 ], [ %2226, %2233 ]
  %2238 = phi float [ 0.000000e+00, %1894 ], [ %2227, %2233 ]
  %2239 = phi float [ 0.000000e+00, %1894 ], [ %2228, %2233 ]
  %2240 = phi float [ 0.000000e+00, %1894 ], [ %2229, %2233 ]
  %2241 = phi float [ 0.000000e+00, %1894 ], [ %2230, %2233 ]
  %2242 = or i32 %2235, %1885
  %2243 = icmp ne i32 %2242, 0
  %2244 = zext i1 %2243 to i32
  %2245 = fadd fast float %2236, %1889
  %2246 = fadd fast float %2237, %1890
  %2247 = fadd fast float %2238, %1891
  %2248 = fadd fast float %2239, %1886
  %2249 = fadd fast float %2240, %1887
  %2250 = fadd fast float %2241, %1888
  %2251 = add nuw nsw i32 %1892, 1
  %2252 = icmp ult i32 %2251, 4
  br i1 %2252, label %1884, label %2253

; <label>:2253                                    ; preds = %2234, %1884
  %2254 = phi i32 [ %1885, %1884 ], [ %2244, %2234 ]
  %2255 = phi float [ %1886, %1884 ], [ %2248, %2234 ]
  %2256 = phi float [ %1887, %1884 ], [ %2249, %2234 ]
  %2257 = phi float [ %1888, %1884 ], [ %2250, %2234 ]
  %2258 = phi float [ %1889, %1884 ], [ %2245, %2234 ]
  %2259 = phi float [ %1890, %1884 ], [ %2246, %2234 ]
  %2260 = phi float [ %1891, %1884 ], [ %2247, %2234 ]
  %2261 = or i32 %2254, %1872
  %2262 = icmp ne i32 %2261, 0
  %2263 = zext i1 %2262 to i32
  %2264 = fadd fast float %2258, %1876
  %2265 = fadd fast float %2259, %1877
  %2266 = fadd fast float %2260, %1878
  %2267 = fadd fast float %2255, %1873
  %2268 = fadd fast float %2256, %1874
  %2269 = fadd fast float %2257, %1875
  br label %2270

; <label>:2270                                    ; preds = %2253, %1871, %1496, %1150, %134
  %2271 = phi float [ %1151, %1150 ], [ 0.000000e+00, %1496 ], [ 0.000000e+00, %134 ], [ %2264, %2253 ], [ %1876, %1871 ]
  %2272 = phi float [ %1152, %1150 ], [ 0.000000e+00, %1496 ], [ 0.000000e+00, %134 ], [ %2265, %2253 ], [ %1877, %1871 ]
  %2273 = phi float [ %1153, %1150 ], [ 0.000000e+00, %1496 ], [ 0.000000e+00, %134 ], [ %2266, %2253 ], [ %1878, %1871 ]
  %2274 = phi float [ %1154, %1150 ], [ 0.000000e+00, %1496 ], [ 0.000000e+00, %134 ], [ %2267, %2253 ], [ %1873, %1871 ]
  %2275 = phi float [ %1155, %1150 ], [ 0.000000e+00, %1496 ], [ 0.000000e+00, %134 ], [ %2268, %2253 ], [ %1874, %1871 ]
  %2276 = phi float [ %1156, %1150 ], [ 0.000000e+00, %1496 ], [ 0.000000e+00, %134 ], [ %2269, %2253 ], [ %1875, %1871 ]
  %2277 = phi i1 [ %1158, %1150 ], [ false, %1496 ], [ false, %134 ], [ true, %2253 ], [ true, %1871 ]
  %2278 = phi i32 [ %1159, %1150 ], [ 0, %1496 ], [ 0, %134 ], [ %2263, %2253 ], [ %1880, %1871 ]
  br i1 %2277, label %2279, label %2305, !dx.controlflow.hints !61

; <label>:2279                                    ; preds = %2270
  %2280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %2281 = icmp eq i32 %2278, 0
  br i1 %2281, label %2282, label %2290, !dx.controlflow.hints !62

; <label>:2282                                    ; preds = %2279
  %2283 = extractvalue %dx.types.CBufRet.f32 %2280, 2
  %2284 = extractvalue %dx.types.CBufRet.f32 %2280, 1
  %2285 = extractvalue %dx.types.CBufRet.f32 %2280, 0
  %2286 = extractvalue %dx.types.CBufRet.f32 %2280, 3
  %2287 = fmul fast float %2286, %2285
  %2288 = fmul fast float %2286, %2284
  %2289 = fmul fast float %2286, %2283
  br label %2290

; <label>:2290                                    ; preds = %2282, %2279
  %2291 = phi float [ %2287, %2282 ], [ %2271, %2279 ]
  %2292 = phi float [ %2288, %2282 ], [ %2272, %2279 ]
  %2293 = phi float [ %2289, %2282 ], [ %2273, %2279 ]
  %2294 = fadd fast float %2291, %2274
  %2295 = fadd fast float %2292, %2275
  %2296 = fadd fast float %2293, %2276
  %2297 = call float @dx.op.dot3.f32(i32 55, float %2294, float %2295, float %2296, float %2294, float %2295, float %2296)  ; Dot3(ax,ay,az,bx,by,bz)
  %2298 = fcmp fast ogt float %2297, 0x3EB0C6F7C0000000
  br i1 %2298, label %2299, label %2305, !dx.controlflow.hints !63

; <label>:2299                                    ; preds = %2290
  %2300 = call float @dx.op.unary.f32(i32 24, float %2297)  ; Sqrt(value)
  %2301 = fdiv fast float 1.000000e+00, %2300
  %2302 = fmul fast float %2301, %2294
  %2303 = fmul fast float %2301, %2295
  %2304 = fmul fast float %2301, %2296
  br label %2311

; <label>:2305                                    ; preds = %2290, %2270
  %2306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %2307 = extractvalue %dx.types.CBufRet.f32 %2306, 0
  %2308 = extractvalue %dx.types.CBufRet.f32 %2306, 1
  %2309 = extractvalue %dx.types.CBufRet.f32 %2306, 2
  %2310 = extractvalue %dx.types.CBufRet.f32 %2306, 3
  br label %2311

; <label>:2311                                    ; preds = %2305, %2299
  %2312 = phi float [ %2300, %2299 ], [ %2310, %2305 ]
  %2313 = phi float [ %2302, %2299 ], [ %2307, %2305 ]
  %2314 = phi float [ %2303, %2299 ], [ %2308, %2305 ]
  %2315 = phi float [ %2304, %2299 ], [ %2309, %2305 ]
  %2316 = fmul fast float %2312, 0x3F91111120000000
  br i1 %37, label %2317, label %2381, !dx.controlflow.hints !64

; <label>:2317                                    ; preds = %2311
  %2318 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2319 = extractvalue %dx.types.CBufRet.i32 %2318, 0
  %2320 = icmp eq i32 %2319, 0
  br i1 %2320, label %2381, label %2321

; <label>:2321                                    ; preds = %2317
  br label %2322

; <label>:2322                                    ; preds = %2322, %2321
  %2323 = phi i32 [ %2373, %2322 ], [ 0, %2321 ]
  %2324 = phi i32 [ %2375, %2322 ], [ 1, %2321 ]
  %2325 = phi i32 [ %2374, %2322 ], [ 0, %2321 ]
  %2326 = shl i32 %2325, 1
  %2327 = add i32 %2326, 6
  %2328 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 %2327)  ; CBufferLoadLegacy(handle,regIndex)
  %2329 = extractvalue %dx.types.CBufRet.i32 %2328, 0
  %2330 = extractvalue %dx.types.CBufRet.i32 %2328, 1
  %2331 = extractvalue %dx.types.CBufRet.i32 %2328, 2
  %2332 = extractvalue %dx.types.CBufRet.i32 %2328, 3
  %2333 = or i32 %2326, 1
  %2334 = add i32 %2333, 6
  %2335 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 %2334)  ; CBufferLoadLegacy(handle,regIndex)
  %2336 = extractvalue %dx.types.CBufRet.i32 %2335, 3
  %2337 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %2338 = extractvalue %dx.types.CBufRet.i32 %2337, 2
  %2339 = extractvalue %dx.types.CBufRet.i32 %2337, 3
  %2340 = shl i32 %2325, 5
  %2341 = add i32 %2339, %2340
  %2342 = xor i32 %2331, %2330
  %2343 = xor i32 %2342, %2338
  %2344 = xor i32 %2343, %2341
  %2345 = extractvalue %dx.types.CBufRet.i32 %2337, 1
  %2346 = xor i32 %2330, %2329
  %2347 = xor i32 %2346, %2345
  %2348 = xor i32 %2347, %2341
  %2349 = extractvalue %dx.types.CBufRet.i32 %2337, 0
  %2350 = xor i32 %2329, -1
  %2351 = xor i32 %2349, %2350
  %2352 = xor i32 %2351, %2341
  %2353 = bitcast i32 %2352 to float
  %2354 = bitcast i32 %2348 to float
  %2355 = bitcast i32 %2344 to float
  %2356 = bitcast i32 %2332 to float
  %2357 = bitcast i32 %2336 to float
  %2358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %2359 = extractvalue %dx.types.CBufRet.f32 %2358, 0
  %2360 = fmul fast float %2359, %2357
  %2361 = fadd fast float %2360, 1.000000e+00
  %2362 = fsub fast float %138, %2353
  %2363 = fsub fast float %142, %2354
  %2364 = fsub fast float %146, %2355
  %2365 = fmul fast float %2361, %2356
  %2366 = fadd fast float %2365, %20
  %2367 = fadd fast float %2365, %21
  %2368 = fadd fast float %2365, %22
  %2369 = call float @dx.op.dot3.f32(i32 55, float %2366, float %2367, float %2368, float %2366, float %2367, float %2368)  ; Dot3(ax,ay,az,bx,by,bz)
  %2370 = call float @dx.op.dot3.f32(i32 55, float %2362, float %2363, float %2364, float %2362, float %2363, float %2364)  ; Dot3(ax,ay,az,bx,by,bz)
  %2371 = fcmp fast ogt float %2369, %2370
  %2372 = select i1 %2371, i32 %2324, i32 0
  %2373 = or i32 %2372, %2323
  %2374 = add i32 %2325, 1
  %2375 = shl i32 %2324, 1
  %2376 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2377 = extractvalue %dx.types.CBufRet.i32 %2376, 0
  %2378 = icmp ult i32 %2374, %2377
  br i1 %2378, label %2322, label %2379

; <label>:2379                                    ; preds = %2322
  %2380 = shl i32 %2373, 16
  br label %2381

; <label>:2381                                    ; preds = %2379, %2317, %2311
  %2382 = phi i32 [ 0, %2311 ], [ 0, %2317 ], [ %2380, %2379 ]
  %2383 = fmul fast float %2313, 3.276700e+04
  %2384 = call float @dx.op.unary.f32(i32 26, float %2383)  ; Round_ne(value)
  %2385 = fptosi float %2384 to i32
  %2386 = call i32 @dx.op.binary.i32(i32 37, i32 %2385, i32 -32767)  ; IMax(a,b)
  %2387 = call i32 @dx.op.binary.i32(i32 38, i32 %2386, i32 32767)  ; IMin(a,b)
  %2388 = and i32 %2387, 65535
  %2389 = fmul fast float %2314, 3.276700e+04
  %2390 = call float @dx.op.unary.f32(i32 26, float %2389)  ; Round_ne(value)
  %2391 = fptosi float %2390 to i32
  %2392 = call i32 @dx.op.binary.i32(i32 37, i32 %2391, i32 -32767)  ; IMax(a,b)
  %2393 = call i32 @dx.op.binary.i32(i32 38, i32 %2392, i32 32767)  ; IMin(a,b)
  %2394 = shl i32 %2393, 16
  %2395 = or i32 %2394, %2388
  %2396 = fmul fast float %2315, 3.276700e+04
  %2397 = call float @dx.op.unary.f32(i32 26, float %2396)  ; Round_ne(value)
  %2398 = fptosi float %2397 to i32
  %2399 = call i32 @dx.op.binary.i32(i32 37, i32 %2398, i32 -32767)  ; IMax(a,b)
  %2400 = call i32 @dx.op.binary.i32(i32 38, i32 %2399, i32 32767)  ; IMin(a,b)
  %2401 = and i32 %2400, 65535
  %2402 = or i32 %2401, %2382
  %2403 = bitcast float %2316 to i32
  %2404 = mul i32 %12, 12
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %2404, i32 undef, i32 %2395, i32 %2402, i32 %2403, i32 undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %2405 = and i32 %24, 65535
  %2406 = shl i32 %30, 2
  %2407 = and i32 %2406, 67108860
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %2407, i32 undef, i32 %2405, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %2408

; <label>:2408                                    ; preds = %2381, %0
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

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

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
!dx.entryPoints = !{!23}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !18, !21, null}
!5 = !{!6, !8, !9, !10, !12, !14, !16, !17}
!6 = !{i32 0, %"class.StructuredBuffer<ReactiveMotionModelInfoGpu>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i32 0, !7}
!7 = !{i32 1, i32 64}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %"class.StructuredBuffer<VectorFieldGpu>"* undef, !"", i32 0, i32 8, i32 1, i32 12, i32 0, !11}
!11 = !{i32 1, i32 88}
!12 = !{i32 4, %"class.StructuredBuffer<VectorSubFieldGpu>"* undef, !"", i32 0, i32 9, i32 1, i32 12, i32 0, !13}
!13 = !{i32 1, i32 32}
!14 = !{i32 5, %"class.StructuredBuffer<vector<unsigned int, 4> >"* undef, !"", i32 0, i32 10, i32 1, i32 12, i32 0, !15}
!15 = !{i32 1, i32 16}
!16 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 11, i32 1, i32 11, i32 0, null}
!17 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 12, i32 1, i32 11, i32 0, null}
!18 = !{!19, !20}
!19 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!20 = !{i32 1, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!21 = !{!22}
!22 = !{i32 0, %ReactiveMotionCalcConsts* undef, !"", i32 0, i32 1, i32 1, i32 576, null}
!23 = !{void ()* @cs_reactivemotion_calc_models, !"cs_reactivemotion_calc_models", null, !4, !24}
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

