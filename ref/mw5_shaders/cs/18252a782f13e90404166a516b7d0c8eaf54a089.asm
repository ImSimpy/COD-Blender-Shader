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
; shader hash: 9fe486708fc28306f9bfcc0b88ed3caf
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
;   [48 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb0     1
;                                   sampler      NA          NA      S0             s2     1
;                                   texture     f32          2d      T0             t0     1
;                                       UAV     f32          2d      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.RWTexture2D<vector<float, 4> >" = type { <4 x float> }
%BlurFiltersKawaseConsts_decl = type { %struct.BlurFiltersKawaseConsts }
%struct.BlurFiltersKawaseConsts = type { <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.SamplerState = type { i32 }

@"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim" = addrspace(3) global [768 x float] undef, align 4

define void @cs_kawase_blur_double_step() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %6 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %7 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %8 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %9 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %10 = call i32 @dx.op.groupId.i32(i32 94, i32 1)  ; GroupId(component)
  %11 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %12 = shl i32 %9, 3
  %13 = shl i32 %10, 3
  %14 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %15 = extractvalue %dx.types.CBufRet.i32 %14, 0
  %16 = call i32 @dx.op.binary.i32(i32 40, i32 %11, i32 %15)  ; UMin(a,b)
  %17 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %18 = extractvalue %dx.types.CBufRet.i32 %17, 3
  %19 = mul i32 %18, %11
  %20 = add i32 %19, %16
  %21 = icmp eq i32 %18, 0
  br i1 %21, label %108, label %22

; <label>:22                                      ; preds = %0
  br label %23

; <label>:23                                      ; preds = %23, %22
  %24 = phi i32 [ %102, %23 ], [ %20, %22 ]
  %25 = phi i32 [ %103, %23 ], [ 0, %22 ]
  %26 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %27 = extractvalue %dx.types.CBufRet.i32 %26, 2
  %28 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %29 = extractvalue %dx.types.CBufRet.f32 %28, 2
  %30 = extractvalue %dx.types.CBufRet.f32 %28, 3
  %31 = urem i32 %24, %27
  %32 = udiv i32 %24, %27
  %33 = extractvalue %dx.types.CBufRet.i32 %26, 1
  %34 = extractvalue %dx.types.CBufRet.f32 %28, 0
  %35 = fadd fast float %34, -1.000000e+00
  %36 = fptosi float %35 to i32
  %37 = extractvalue %dx.types.CBufRet.f32 %28, 1
  %38 = fadd fast float %37, -1.000000e+00
  %39 = fptosi float %38 to i32
  %40 = add i32 %12, -1
  %41 = add i32 %40, %31
  %42 = sub i32 %41, %33
  %43 = add i32 %13, -1
  %44 = add i32 %43, %32
  %45 = sub i32 %44, %33
  %46 = call i32 @dx.op.binary.i32(i32 37, i32 %42, i32 0)  ; IMax(a,b)
  %47 = call i32 @dx.op.binary.i32(i32 37, i32 %45, i32 0)  ; IMax(a,b)
  %48 = call i32 @dx.op.binary.i32(i32 38, i32 %46, i32 %36)  ; IMin(a,b)
  %49 = call i32 @dx.op.binary.i32(i32 38, i32 %47, i32 %39)  ; IMin(a,b)
  %50 = uitofp i32 %48 to float
  %51 = uitofp i32 %49 to float
  %52 = fadd fast float %50, 5.000000e-01
  %53 = fadd fast float %51, 5.000000e-01
  %54 = extractvalue %dx.types.CBufRet.i32 %26, 0
  %55 = uitofp i32 %54 to float
  %56 = fadd fast float %55, 5.000000e-01
  %57 = fadd fast float %56, %52
  %58 = fmul fast float %57, %29
  %59 = fadd fast float %56, %53
  %60 = fmul fast float %59, %30
  %61 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %3, float %58, float %60, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %62 = extractvalue %dx.types.ResRet.f32 %61, 0
  %63 = extractvalue %dx.types.ResRet.f32 %61, 1
  %64 = extractvalue %dx.types.ResRet.f32 %61, 2
  %65 = fsub fast float %52, %56
  %66 = fmul fast float %65, %29
  %67 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %3, float %66, float %60, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %68 = extractvalue %dx.types.ResRet.f32 %67, 0
  %69 = extractvalue %dx.types.ResRet.f32 %67, 1
  %70 = extractvalue %dx.types.ResRet.f32 %67, 2
  %71 = fadd fast float %68, %62
  %72 = fadd fast float %69, %63
  %73 = fadd fast float %70, %64
  %74 = fsub fast float %53, %56
  %75 = fmul fast float %74, %30
  %76 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %3, float %58, float %75, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %77 = extractvalue %dx.types.ResRet.f32 %76, 0
  %78 = extractvalue %dx.types.ResRet.f32 %76, 1
  %79 = extractvalue %dx.types.ResRet.f32 %76, 2
  %80 = fadd fast float %71, %77
  %81 = fadd fast float %72, %78
  %82 = fadd fast float %73, %79
  %83 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %3, float %66, float %75, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %84 = extractvalue %dx.types.ResRet.f32 %83, 0
  %85 = extractvalue %dx.types.ResRet.f32 %83, 1
  %86 = extractvalue %dx.types.ResRet.f32 %83, 2
  %87 = fadd fast float %80, %84
  %88 = fadd fast float %81, %85
  %89 = fadd fast float %82, %86
  %90 = fmul fast float %87, 2.500000e-01
  %91 = fmul fast float %88, 2.500000e-01
  %92 = fmul fast float %89, 2.500000e-01
  %93 = mul i32 %24, 3
  %94 = add i32 0, %93
  %95 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %94
  store float %90, float addrspace(3)* %95, align 4
  %96 = mul i32 %24, 3
  %97 = add i32 1, %96
  %98 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %97
  store float %91, float addrspace(3)* %98, align 4
  %99 = mul i32 %24, 3
  %100 = add i32 2, %99
  %101 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %100
  store float %92, float addrspace(3)* %101, align 4
  %102 = add i32 %24, 1
  %103 = add i32 %25, 1
  %104 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %105 = extractvalue %dx.types.CBufRet.i32 %104, 3
  %106 = icmp ult i32 %103, %105
  br i1 %106, label %23, label %107

; <label>:107                                     ; preds = %23
  br label %108

; <label>:108                                     ; preds = %107, %0
  %109 = phi i32 [ %20, %0 ], [ %102, %107 ]
  %110 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %111 = extractvalue %dx.types.CBufRet.i32 %110, 0
  %112 = icmp ult i32 %11, %111
  br i1 %112, label %113, label %190, !dx.controlflow.hints !17

; <label>:113                                     ; preds = %108
  %114 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %115 = extractvalue %dx.types.CBufRet.i32 %114, 2
  %116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %117 = extractvalue %dx.types.CBufRet.f32 %116, 2
  %118 = extractvalue %dx.types.CBufRet.f32 %116, 3
  %119 = urem i32 %109, %115
  %120 = udiv i32 %109, %115
  %121 = extractvalue %dx.types.CBufRet.i32 %114, 1
  %122 = extractvalue %dx.types.CBufRet.f32 %116, 0
  %123 = fadd fast float %122, -1.000000e+00
  %124 = fptosi float %123 to i32
  %125 = extractvalue %dx.types.CBufRet.f32 %116, 1
  %126 = fadd fast float %125, -1.000000e+00
  %127 = fptosi float %126 to i32
  %128 = add i32 %12, -1
  %129 = add i32 %128, %119
  %130 = sub i32 %129, %121
  %131 = add i32 %13, -1
  %132 = add i32 %131, %120
  %133 = sub i32 %132, %121
  %134 = call i32 @dx.op.binary.i32(i32 37, i32 %130, i32 0)  ; IMax(a,b)
  %135 = call i32 @dx.op.binary.i32(i32 37, i32 %133, i32 0)  ; IMax(a,b)
  %136 = call i32 @dx.op.binary.i32(i32 38, i32 %134, i32 %124)  ; IMin(a,b)
  %137 = call i32 @dx.op.binary.i32(i32 38, i32 %135, i32 %127)  ; IMin(a,b)
  %138 = uitofp i32 %136 to float
  %139 = uitofp i32 %137 to float
  %140 = fadd fast float %138, 5.000000e-01
  %141 = fadd fast float %139, 5.000000e-01
  %142 = extractvalue %dx.types.CBufRet.i32 %114, 0
  %143 = uitofp i32 %142 to float
  %144 = fadd fast float %143, 5.000000e-01
  %145 = fadd fast float %144, %140
  %146 = fmul fast float %145, %117
  %147 = fadd fast float %144, %141
  %148 = fmul fast float %147, %118
  %149 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %3, float %146, float %148, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %150 = extractvalue %dx.types.ResRet.f32 %149, 0
  %151 = extractvalue %dx.types.ResRet.f32 %149, 1
  %152 = extractvalue %dx.types.ResRet.f32 %149, 2
  %153 = fsub fast float %140, %144
  %154 = fmul fast float %153, %117
  %155 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %3, float %154, float %148, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %156 = extractvalue %dx.types.ResRet.f32 %155, 0
  %157 = extractvalue %dx.types.ResRet.f32 %155, 1
  %158 = extractvalue %dx.types.ResRet.f32 %155, 2
  %159 = fadd fast float %156, %150
  %160 = fadd fast float %157, %151
  %161 = fadd fast float %158, %152
  %162 = fsub fast float %141, %144
  %163 = fmul fast float %162, %118
  %164 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %3, float %146, float %163, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %165 = extractvalue %dx.types.ResRet.f32 %164, 0
  %166 = extractvalue %dx.types.ResRet.f32 %164, 1
  %167 = extractvalue %dx.types.ResRet.f32 %164, 2
  %168 = fadd fast float %159, %165
  %169 = fadd fast float %160, %166
  %170 = fadd fast float %161, %167
  %171 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %3, float %154, float %163, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %172 = extractvalue %dx.types.ResRet.f32 %171, 0
  %173 = extractvalue %dx.types.ResRet.f32 %171, 1
  %174 = extractvalue %dx.types.ResRet.f32 %171, 2
  %175 = fadd fast float %168, %172
  %176 = fadd fast float %169, %173
  %177 = fadd fast float %170, %174
  %178 = fmul fast float %175, 2.500000e-01
  %179 = fmul fast float %176, 2.500000e-01
  %180 = fmul fast float %177, 2.500000e-01
  %181 = mul i32 %109, 3
  %182 = add i32 0, %181
  %183 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %182
  store float %178, float addrspace(3)* %183, align 4
  %184 = mul i32 %109, 3
  %185 = add i32 1, %184
  %186 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %185
  store float %179, float addrspace(3)* %186, align 4
  %187 = mul i32 %109, 3
  %188 = add i32 2, %187
  %189 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %188
  store float %180, float addrspace(3)* %189, align 4
  br label %190

; <label>:190                                     ; preds = %113, %108
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %191 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %192 = extractvalue %dx.types.CBufRet.i32 %191, 1
  %193 = add i32 %7, 1
  %194 = add i32 %193, %192
  %195 = add i32 %8, 1
  %196 = add i32 %195, %192
  %197 = add i32 %192, %194
  %198 = add i32 %192, %196
  %199 = shl i32 %195, 4
  %200 = add i32 %199, %193
  %201 = mul i32 %200, 3
  %202 = add i32 0, %201
  %203 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %202
  %204 = load float, float addrspace(3)* %203, align 4
  %205 = mul i32 %200, 3
  %206 = add i32 1, %205
  %207 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %206
  %208 = load float, float addrspace(3)* %207, align 4
  %209 = mul i32 %200, 3
  %210 = add i32 2, %209
  %211 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %210
  %212 = load float, float addrspace(3)* %211, align 4
  %213 = add i32 %7, %199
  %214 = mul i32 %213, 3
  %215 = add i32 0, %214
  %216 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %215
  %217 = load float, float addrspace(3)* %216, align 4
  %218 = mul i32 %213, 3
  %219 = add i32 1, %218
  %220 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %219
  %221 = load float, float addrspace(3)* %220, align 4
  %222 = mul i32 %213, 3
  %223 = add i32 2, %222
  %224 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %223
  %225 = load float, float addrspace(3)* %224, align 4
  %226 = add i32 %7, -15
  %227 = add i32 %226, %199
  %228 = mul i32 %227, 3
  %229 = add i32 0, %228
  %230 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %229
  %231 = load float, float addrspace(3)* %230, align 4
  %232 = mul i32 %227, 3
  %233 = add i32 1, %232
  %234 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %233
  %235 = load float, float addrspace(3)* %234, align 4
  %236 = mul i32 %227, 3
  %237 = add i32 2, %236
  %238 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %237
  %239 = load float, float addrspace(3)* %238, align 4
  %240 = add i32 %7, -16
  %241 = add i32 %240, %199
  %242 = mul i32 %241, 3
  %243 = add i32 0, %242
  %244 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %243
  %245 = load float, float addrspace(3)* %244, align 4
  %246 = mul i32 %241, 3
  %247 = add i32 1, %246
  %248 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %247
  %249 = load float, float addrspace(3)* %248, align 4
  %250 = mul i32 %241, 3
  %251 = add i32 2, %250
  %252 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %251
  %253 = load float, float addrspace(3)* %252, align 4
  %254 = add i32 %199, %197
  %255 = mul i32 %254, 3
  %256 = add i32 0, %255
  %257 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %256
  %258 = load float, float addrspace(3)* %257, align 4
  %259 = mul i32 %254, 3
  %260 = add i32 1, %259
  %261 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %260
  %262 = load float, float addrspace(3)* %261, align 4
  %263 = mul i32 %254, 3
  %264 = add i32 2, %263
  %265 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %264
  %266 = load float, float addrspace(3)* %265, align 4
  %267 = add i32 %197, 1
  %268 = add i32 %267, %199
  %269 = mul i32 %268, 3
  %270 = add i32 0, %269
  %271 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %270
  %272 = load float, float addrspace(3)* %271, align 4
  %273 = mul i32 %268, 3
  %274 = add i32 1, %273
  %275 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %274
  %276 = load float, float addrspace(3)* %275, align 4
  %277 = mul i32 %268, 3
  %278 = add i32 2, %277
  %279 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %278
  %280 = load float, float addrspace(3)* %279, align 4
  %281 = add i32 %197, -16
  %282 = add i32 %281, %199
  %283 = mul i32 %282, 3
  %284 = add i32 0, %283
  %285 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %284
  %286 = load float, float addrspace(3)* %285, align 4
  %287 = mul i32 %282, 3
  %288 = add i32 1, %287
  %289 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %288
  %290 = load float, float addrspace(3)* %289, align 4
  %291 = mul i32 %282, 3
  %292 = add i32 2, %291
  %293 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %292
  %294 = load float, float addrspace(3)* %293, align 4
  %295 = add i32 %197, -15
  %296 = add i32 %295, %199
  %297 = mul i32 %296, 3
  %298 = add i32 0, %297
  %299 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %298
  %300 = load float, float addrspace(3)* %299, align 4
  %301 = mul i32 %296, 3
  %302 = add i32 1, %301
  %303 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %302
  %304 = load float, float addrspace(3)* %303, align 4
  %305 = mul i32 %296, 3
  %306 = add i32 2, %305
  %307 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %306
  %308 = load float, float addrspace(3)* %307, align 4
  %309 = shl i32 %198, 4
  %310 = add i32 %309, %193
  %311 = mul i32 %310, 3
  %312 = add i32 0, %311
  %313 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %312
  %314 = load float, float addrspace(3)* %313, align 4
  %315 = mul i32 %310, 3
  %316 = add i32 1, %315
  %317 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %316
  %318 = load float, float addrspace(3)* %317, align 4
  %319 = mul i32 %310, 3
  %320 = add i32 2, %319
  %321 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %320
  %322 = load float, float addrspace(3)* %321, align 4
  %323 = add i32 %7, %309
  %324 = mul i32 %323, 3
  %325 = add i32 0, %324
  %326 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %325
  %327 = load float, float addrspace(3)* %326, align 4
  %328 = mul i32 %323, 3
  %329 = add i32 1, %328
  %330 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %329
  %331 = load float, float addrspace(3)* %330, align 4
  %332 = mul i32 %323, 3
  %333 = add i32 2, %332
  %334 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %333
  %335 = load float, float addrspace(3)* %334, align 4
  %336 = add i32 %7, 17
  %337 = add i32 %336, %309
  %338 = mul i32 %337, 3
  %339 = add i32 0, %338
  %340 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %339
  %341 = load float, float addrspace(3)* %340, align 4
  %342 = mul i32 %337, 3
  %343 = add i32 1, %342
  %344 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %343
  %345 = load float, float addrspace(3)* %344, align 4
  %346 = mul i32 %337, 3
  %347 = add i32 2, %346
  %348 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %347
  %349 = load float, float addrspace(3)* %348, align 4
  %350 = add i32 %7, 16
  %351 = add i32 %350, %309
  %352 = mul i32 %351, 3
  %353 = add i32 0, %352
  %354 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %353
  %355 = load float, float addrspace(3)* %354, align 4
  %356 = mul i32 %351, 3
  %357 = add i32 1, %356
  %358 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %357
  %359 = load float, float addrspace(3)* %358, align 4
  %360 = mul i32 %351, 3
  %361 = add i32 2, %360
  %362 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %361
  %363 = load float, float addrspace(3)* %362, align 4
  %364 = add i32 %309, %197
  %365 = mul i32 %364, 3
  %366 = add i32 0, %365
  %367 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %366
  %368 = load float, float addrspace(3)* %367, align 4
  %369 = mul i32 %364, 3
  %370 = add i32 1, %369
  %371 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %370
  %372 = load float, float addrspace(3)* %371, align 4
  %373 = mul i32 %364, 3
  %374 = add i32 2, %373
  %375 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %374
  %376 = load float, float addrspace(3)* %375, align 4
  %377 = add i32 %267, %309
  %378 = mul i32 %377, 3
  %379 = add i32 0, %378
  %380 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %379
  %381 = load float, float addrspace(3)* %380, align 4
  %382 = mul i32 %377, 3
  %383 = add i32 1, %382
  %384 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %383
  %385 = load float, float addrspace(3)* %384, align 4
  %386 = mul i32 %377, 3
  %387 = add i32 2, %386
  %388 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %387
  %389 = load float, float addrspace(3)* %388, align 4
  %390 = add i32 %197, 16
  %391 = add i32 %390, %309
  %392 = mul i32 %391, 3
  %393 = add i32 0, %392
  %394 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %393
  %395 = load float, float addrspace(3)* %394, align 4
  %396 = mul i32 %391, 3
  %397 = add i32 1, %396
  %398 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %397
  %399 = load float, float addrspace(3)* %398, align 4
  %400 = mul i32 %391, 3
  %401 = add i32 2, %400
  %402 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %401
  %403 = load float, float addrspace(3)* %402, align 4
  %404 = add i32 %197, 17
  %405 = add i32 %404, %309
  %406 = mul i32 %405, 3
  %407 = add i32 0, %406
  %408 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %407
  %409 = load float, float addrspace(3)* %408, align 4
  %410 = mul i32 %405, 3
  %411 = add i32 1, %410
  %412 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %411
  %413 = load float, float addrspace(3)* %412, align 4
  %414 = mul i32 %405, 3
  %415 = add i32 2, %414
  %416 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %415
  %417 = load float, float addrspace(3)* %416, align 4
  %418 = fadd fast float %217, %204
  %419 = fadd fast float %418, %231
  %420 = fadd fast float %419, %245
  %421 = fadd fast float %420, %258
  %422 = fadd fast float %421, %272
  %423 = fadd fast float %422, %286
  %424 = fadd fast float %423, %300
  %425 = fadd fast float %424, %314
  %426 = fadd fast float %425, %327
  %427 = fadd fast float %426, %341
  %428 = fadd fast float %427, %355
  %429 = fadd fast float %428, %368
  %430 = fadd fast float %429, %381
  %431 = fadd fast float %430, %395
  %432 = fadd fast float %431, %409
  %433 = fadd fast float %221, %208
  %434 = fadd fast float %433, %235
  %435 = fadd fast float %434, %249
  %436 = fadd fast float %435, %262
  %437 = fadd fast float %436, %276
  %438 = fadd fast float %437, %290
  %439 = fadd fast float %438, %304
  %440 = fadd fast float %439, %318
  %441 = fadd fast float %440, %331
  %442 = fadd fast float %441, %345
  %443 = fadd fast float %442, %359
  %444 = fadd fast float %443, %372
  %445 = fadd fast float %444, %385
  %446 = fadd fast float %445, %399
  %447 = fadd fast float %446, %413
  %448 = fadd fast float %225, %212
  %449 = fadd fast float %448, %239
  %450 = fadd fast float %449, %253
  %451 = fadd fast float %450, %266
  %452 = fadd fast float %451, %280
  %453 = fadd fast float %452, %294
  %454 = fadd fast float %453, %308
  %455 = fadd fast float %454, %322
  %456 = fadd fast float %455, %335
  %457 = fadd fast float %456, %349
  %458 = fadd fast float %457, %363
  %459 = fadd fast float %458, %376
  %460 = fadd fast float %459, %389
  %461 = fadd fast float %460, %403
  %462 = fadd fast float %461, %417
  %463 = fmul fast float %432, 6.250000e-02
  %464 = fmul fast float %447, 6.250000e-02
  %465 = fmul fast float %462, 6.250000e-02
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %5, i32 %6, i32 undef, float %463, float %464, float %465, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #3

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #3

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #3

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #3

attributes #0 = { nounwind readnone }
attributes #1 = { noduplicate nounwind }
attributes #2 = { nounwind }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!14}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !8, !10, !12}
!5 = !{!6}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{!9}
!9 = !{i32 0, %"class.RWTexture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!10 = !{!11}
!11 = !{i32 0, %BlurFiltersKawaseConsts_decl* undef, !"", i32 0, i32 0, i32 1, i32 48, null}
!12 = !{!13}
!13 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!14 = !{void ()* @cs_kawase_blur_double_step, !"cs_kawase_blur_double_step", null, !4, !15}
!15 = !{i32 0, i64 256, i32 4, !16}
!16 = !{i32 8, i32 8, i32 1}
!17 = distinct !{!17, !"dx.controlflow.hints", i32 2}

