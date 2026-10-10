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
; shader hash: 09a2d9971fce64d38a12cdf9f4199fd9
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
;   [112 x i8] (type annotation not present)
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
;                                   texture     f32          2d      T1             t1     1
;                                   texture     f32          2d      T2             t2     1
;                                       UAV     f32          2d      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.RWTexture2D<vector<float, 4> >" = type { <4 x float> }
%cb = type { float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32, float, float }
%struct.SamplerState = type { i32 }

@"\01?shPixelsY@@3PAMA" = external addrspace(3) global [1444 x float], align 4
@"\01?shCoefScaler@@3PAY05$$CAMA.1dim" = addrspace(3) global [384 x float] undef, align 4
@"\01?shCoefUSM@@3PAY05$$CAMA.1dim" = addrspace(3) global [384 x float] undef, align 4
@"\01?shEdgeMap@@3PAV?$vector@M$03@@A.v.1dim" = addrspace(3) global [4624 x float] undef, align 4

define void @cs_nis() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %8 = call i32 @dx.op.groupId.i32(i32 94, i32 1)  ; GroupId(component)
  %9 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %10 = shl i32 %7, 5
  %11 = shl i32 %8, 5
  %12 = sitofp i32 %10 to float
  %13 = fadd fast float %12, 5.000000e-01
  %14 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %15 = extractvalue %dx.types.CBufRet.f32 %14, 0
  %16 = fmul fast float %15, %13
  %17 = fadd fast float %16, -5.000000e-01
  %18 = call float @dx.op.unary.f32(i32 27, float %17)  ; Round_ni(value)
  %19 = fptosi float %18 to i32
  %20 = sitofp i32 %11 to float
  %21 = fadd fast float %20, 5.000000e-01
  %22 = extractvalue %dx.types.CBufRet.f32 %14, 1
  %23 = fmul fast float %22, %21
  %24 = fadd fast float %23, -5.000000e-01
  %25 = call float @dx.op.unary.f32(i32 27, float %24)  ; Round_ni(value)
  %26 = fptosi float %25 to i32
  %27 = add nsw i32 %10, 32
  %28 = sitofp i32 %27 to float
  %29 = fadd fast float %28, 5.000000e-01
  %30 = fmul fast float %15, %29
  %31 = fadd fast float %30, -5.000000e-01
  %32 = call float @dx.op.unary.f32(i32 28, float %31)  ; Round_pi(value)
  %33 = fptosi float %32 to i32
  %34 = add nsw i32 %11, 32
  %35 = sitofp i32 %34 to float
  %36 = fadd fast float %35, 5.000000e-01
  %37 = fmul fast float %22, %36
  %38 = fadd fast float %37, -5.000000e-01
  %39 = call float @dx.op.unary.f32(i32 28, float %38)  ; Round_pi(value)
  %40 = fptosi float %39 to i32
  %41 = sub nsw i32 %33, %19
  %42 = add nsw i32 %41, 5
  %43 = sub nsw i32 %40, %26
  %44 = add nsw i32 %43, 5
  %45 = and i32 %42, 1
  %46 = add nsw i32 %45, %42
  %47 = and i32 %44, 1
  %48 = add nsw i32 %47, %44
  %49 = mul nsw i32 %48, %46
  %50 = add nsw i32 %46, -4
  %51 = add nsw i32 %48, -4
  %52 = mul nsw i32 %51, %50
  %53 = shl i32 %9, 1
  %54 = lshr i32 %49, 1
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %56, label %123

; <label>:56                                      ; preds = %0
  br label %57

; <label>:57                                      ; preds = %57, %56
  %58 = phi i32 [ %120, %57 ], [ %53, %56 ]
  %59 = udiv i32 %58, %46
  %60 = shl i32 %59, 1
  %61 = urem i32 %58, %46
  %62 = add i32 %61, %19
  %63 = uitofp i32 %62 to float
  %64 = fadd fast float %63, -1.500000e+00
  %65 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %66 = extractvalue %dx.types.CBufRet.f32 %65, 0
  %67 = fmul fast float %64, %66
  %68 = add i32 %60, %26
  %69 = uitofp i32 %68 to float
  %70 = fadd fast float %69, -1.500000e+00
  %71 = extractvalue %dx.types.CBufRet.f32 %65, 1
  %72 = fmul fast float %70, %71
  %73 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %5, float %67, float %72, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %74 = extractvalue %dx.types.ResRet.f32 %73, 0
  %75 = extractvalue %dx.types.ResRet.f32 %73, 1
  %76 = extractvalue %dx.types.ResRet.f32 %73, 2
  %77 = fmul fast float %74, 0x3FD0C49BA0000000
  %78 = fmul fast float %75, 0x3FE5B22D00000000
  %79 = fadd fast float %77, %78
  %80 = fmul fast float %76, 0x3FAE5C91E0000000
  %81 = fadd fast float %79, %80
  %82 = fadd fast float %66, %67
  %83 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %5, float %82, float %72, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %84 = extractvalue %dx.types.ResRet.f32 %83, 0
  %85 = extractvalue %dx.types.ResRet.f32 %83, 1
  %86 = extractvalue %dx.types.ResRet.f32 %83, 2
  %87 = fmul fast float %84, 0x3FD0C49BA0000000
  %88 = fmul fast float %85, 0x3FE5B22D00000000
  %89 = fadd fast float %87, %88
  %90 = fmul fast float %86, 0x3FAE5C91E0000000
  %91 = fadd fast float %89, %90
  %92 = fadd fast float %71, %72
  %93 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %5, float %67, float %92, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %94 = extractvalue %dx.types.ResRet.f32 %93, 0
  %95 = extractvalue %dx.types.ResRet.f32 %93, 1
  %96 = extractvalue %dx.types.ResRet.f32 %93, 2
  %97 = fmul fast float %94, 0x3FD0C49BA0000000
  %98 = fmul fast float %95, 0x3FE5B22D00000000
  %99 = fadd fast float %97, %98
  %100 = fmul fast float %96, 0x3FAE5C91E0000000
  %101 = fadd fast float %99, %100
  %102 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %5, float %82, float %92, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %103 = extractvalue %dx.types.ResRet.f32 %102, 0
  %104 = extractvalue %dx.types.ResRet.f32 %102, 1
  %105 = extractvalue %dx.types.ResRet.f32 %102, 2
  %106 = fmul fast float %103, 0x3FD0C49BA0000000
  %107 = fmul fast float %104, 0x3FE5B22D00000000
  %108 = fadd fast float %106, %107
  %109 = fmul fast float %105, 0x3FAE5C91E0000000
  %110 = fadd fast float %108, %109
  %111 = mul i32 %59, 76
  %112 = add i32 %111, %61
  %113 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %112
  store float %81, float addrspace(3)* %113, align 4, !tbaa !19
  %114 = add i32 %112, 1
  %115 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %114
  store float %91, float addrspace(3)* %115, align 4, !tbaa !19
  %116 = add i32 %112, 38
  %117 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %116
  store float %101, float addrspace(3)* %117, align 4, !tbaa !19
  %118 = add i32 %112, 39
  %119 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %118
  store float %110, float addrspace(3)* %119, align 4, !tbaa !19
  %120 = add nuw i32 %58, 256
  %121 = icmp ult i32 %120, %54
  br i1 %121, label %57, label %122

; <label>:122                                     ; preds = %57
  br label %123

; <label>:123                                     ; preds = %122, %0
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %124 = lshr i32 %52, 1
  %125 = icmp ult i32 %53, %124
  br i1 %125, label %126, label %515

; <label>:126                                     ; preds = %123
  br label %127

; <label>:127                                     ; preds = %494, %126
  %128 = phi i32 [ %512, %494 ], [ %53, %126 ]
  %129 = udiv i32 %128, %50
  %130 = shl i32 %129, 1
  %131 = urem i32 %128, %50
  %132 = mul i32 %129, 68
  %133 = add i32 %132, %131
  %134 = or i32 %130, 1
  %135 = mul i32 %134, 38
  %136 = add i32 %135, %131
  %137 = add i32 %136, 1
  %138 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %137
  %139 = load float, float addrspace(3)* %138, align 4, !tbaa !19
  %140 = add i32 %136, 2
  %141 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %140
  %142 = load float, float addrspace(3)* %141, align 4, !tbaa !19
  %143 = add i32 %136, 3
  %144 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %143
  %145 = load float, float addrspace(3)* %144, align 4, !tbaa !19
  %146 = fsub fast float -0.000000e+00, %145
  %147 = add i32 %136, 4
  %148 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %147
  %149 = load float, float addrspace(3)* %148, align 4, !tbaa !19
  %150 = add i32 %136, 39
  %151 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %150
  %152 = load float, float addrspace(3)* %151, align 4, !tbaa !19
  %153 = add i32 %136, 40
  %154 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %153
  %155 = load float, float addrspace(3)* %154, align 4, !tbaa !19
  %156 = add i32 %136, 41
  %157 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %156
  %158 = load float, float addrspace(3)* %157, align 4, !tbaa !19
  %159 = fsub fast float -0.000000e+00, %158
  %160 = add i32 %136, 42
  %161 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %160
  %162 = load float, float addrspace(3)* %161, align 4, !tbaa !19
  %163 = add i32 %136, 77
  %164 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %163
  %165 = load float, float addrspace(3)* %164, align 4, !tbaa !19
  %166 = add i32 %136, 78
  %167 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %166
  %168 = load float, float addrspace(3)* %167, align 4, !tbaa !19
  %169 = add i32 %136, 79
  %170 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %169
  %171 = load float, float addrspace(3)* %170, align 4, !tbaa !19
  %172 = add i32 %136, 80
  %173 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %172
  %174 = load float, float addrspace(3)* %173, align 4, !tbaa !19
  %175 = add i32 %136, 115
  %176 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %175
  %177 = load float, float addrspace(3)* %176, align 4, !tbaa !19
  %178 = add i32 %136, 116
  %179 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %178
  %180 = load float, float addrspace(3)* %179, align 4, !tbaa !19
  %181 = add i32 %136, 117
  %182 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %181
  %183 = load float, float addrspace(3)* %182, align 4, !tbaa !19
  %184 = add i32 %136, 118
  %185 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %184
  %186 = load float, float addrspace(3)* %185, align 4, !tbaa !19
  %187 = fadd fast float %142, %139
  %188 = fadd fast float %187, %145
  %189 = fsub fast float %188, %165
  %190 = fsub fast float %189, %168
  %191 = fsub fast float %190, %171
  %192 = call float @dx.op.unary.f32(i32 6, float %191)  ; FAbs(value)
  %193 = fadd fast float %187, %152
  %194 = fsub fast float %193, %158
  %195 = fsub fast float %194, %168
  %196 = fsub fast float %195, %171
  %197 = call float @dx.op.unary.f32(i32 6, float %196)  ; FAbs(value)
  %198 = fsub fast float %139, %145
  %199 = fadd fast float %198, %152
  %200 = fsub fast float %199, %158
  %201 = fadd fast float %200, %165
  %202 = fsub fast float %201, %171
  %203 = call float @dx.op.unary.f32(i32 6, float %202)  ; FAbs(value)
  %204 = fsub fast float -0.000000e+00, %142
  %205 = fsub fast float %204, %145
  %206 = fadd fast float %205, %152
  %207 = fsub fast float %206, %158
  %208 = fadd fast float %207, %165
  %209 = fadd fast float %208, %168
  %210 = call float @dx.op.unary.f32(i32 6, float %209)  ; FAbs(value)
  %211 = call float @dx.op.binary.f32(i32 35, float %192, float %203)  ; FMax(a,b)
  %212 = call float @dx.op.binary.f32(i32 36, float %192, float %203)  ; FMin(a,b)
  %213 = call float @dx.op.binary.f32(i32 35, float %197, float %210)  ; FMax(a,b)
  %214 = call float @dx.op.binary.f32(i32 36, float %197, float %210)  ; FMin(a,b)
  %215 = fadd fast float %213, %211
  %216 = fcmp fast oeq float %215, 0.000000e+00
  br i1 %216, label %251, label %217, !dx.controlflow.hints !23

; <label>:217                                     ; preds = %127
  %218 = fdiv fast float %211, %215
  %219 = call float @dx.op.binary.f32(i32 36, float %218, float 1.000000e+00)  ; FMin(a,b)
  %220 = fsub fast float 1.000000e+00, %219
  %221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %222 = extractvalue %dx.types.CBufRet.f32 %221, 0
  %223 = fmul fast float %222, %212
  %224 = fcmp fast ogt float %211, %223
  %225 = extractvalue %dx.types.CBufRet.f32 %221, 1
  %226 = fcmp fast ogt float %211, %225
  %227 = and i1 %224, %226
  %228 = fcmp fast ogt float %211, %214
  %229 = and i1 %228, %227
  %230 = fmul fast float %222, %214
  %231 = fcmp fast ogt float %213, %230
  %232 = fcmp fast ogt float %213, %225
  %233 = and i1 %231, %232
  %234 = fcmp fast ogt float %213, %212
  %235 = and i1 %234, %233
  %236 = fcmp fast oeq float %211, %192
  %237 = fcmp fast oeq float %213, %197
  %238 = and i1 %229, %235
  %239 = select i1 %238, float %219, float 1.000000e+00
  %240 = select i1 %238, float %220, float 1.000000e+00
  %241 = and i1 %236, %229
  %242 = select i1 %241, float %239, float 0.000000e+00
  %243 = xor i1 %236, true
  %244 = and i1 %229, %243
  %245 = select i1 %244, float %239, float 0.000000e+00
  %246 = and i1 %237, %235
  %247 = select i1 %246, float %240, float 0.000000e+00
  %248 = xor i1 %237, true
  %249 = and i1 %235, %248
  %250 = select i1 %249, float %240, float 0.000000e+00
  br label %251

; <label>:251                                     ; preds = %217, %127
  %252 = phi float [ %242, %217 ], [ 0.000000e+00, %127 ]
  %253 = phi float [ %245, %217 ], [ 0.000000e+00, %127 ]
  %254 = phi float [ %247, %217 ], [ 0.000000e+00, %127 ]
  %255 = phi float [ %250, %217 ], [ 0.000000e+00, %127 ]
  %256 = mul i32 %133, 4
  %257 = add i32 0, %256
  %258 = getelementptr [4624 x float], [4624 x float] addrspace(3)* @"\01?shEdgeMap@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %257
  store float %252, float addrspace(3)* %258, align 4
  %259 = mul i32 %133, 4
  %260 = add i32 1, %259
  %261 = getelementptr [4624 x float], [4624 x float] addrspace(3)* @"\01?shEdgeMap@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %260
  store float %253, float addrspace(3)* %261, align 4
  %262 = mul i32 %133, 4
  %263 = add i32 2, %262
  %264 = getelementptr [4624 x float], [4624 x float] addrspace(3)* @"\01?shEdgeMap@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %263
  store float %254, float addrspace(3)* %264, align 4
  %265 = mul i32 %133, 4
  %266 = add i32 3, %265
  %267 = getelementptr [4624 x float], [4624 x float] addrspace(3)* @"\01?shEdgeMap@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %266
  store float %255, float addrspace(3)* %267, align 4
  %268 = fadd fast float %145, %142
  %269 = fadd fast float %268, %149
  %270 = fsub fast float %269, %168
  %271 = fsub fast float %270, %171
  %272 = fsub fast float %271, %174
  %273 = call float @dx.op.unary.f32(i32 6, float %272)  ; FAbs(value)
  %274 = fadd fast float %268, %155
  %275 = fsub fast float %274, %162
  %276 = fsub fast float %275, %171
  %277 = fsub fast float %276, %174
  %278 = call float @dx.op.unary.f32(i32 6, float %277)  ; FAbs(value)
  %279 = fsub fast float %142, %149
  %280 = fadd fast float %279, %155
  %281 = fsub fast float %280, %162
  %282 = fadd fast float %281, %168
  %283 = fsub fast float %282, %174
  %284 = call float @dx.op.unary.f32(i32 6, float %283)  ; FAbs(value)
  %285 = fsub fast float %146, %149
  %286 = fadd fast float %285, %155
  %287 = fsub fast float %286, %162
  %288 = fadd fast float %287, %168
  %289 = fadd fast float %288, %171
  %290 = call float @dx.op.unary.f32(i32 6, float %289)  ; FAbs(value)
  %291 = call float @dx.op.binary.f32(i32 35, float %273, float %284)  ; FMax(a,b)
  %292 = call float @dx.op.binary.f32(i32 36, float %273, float %284)  ; FMin(a,b)
  %293 = call float @dx.op.binary.f32(i32 35, float %278, float %290)  ; FMax(a,b)
  %294 = call float @dx.op.binary.f32(i32 36, float %278, float %290)  ; FMin(a,b)
  %295 = fadd fast float %293, %291
  %296 = fcmp fast oeq float %295, 0.000000e+00
  br i1 %296, label %331, label %297, !dx.controlflow.hints !23

; <label>:297                                     ; preds = %251
  %298 = fdiv fast float %291, %295
  %299 = call float @dx.op.binary.f32(i32 36, float %298, float 1.000000e+00)  ; FMin(a,b)
  %300 = fsub fast float 1.000000e+00, %299
  %301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %302 = extractvalue %dx.types.CBufRet.f32 %301, 0
  %303 = fmul fast float %302, %292
  %304 = fcmp fast ogt float %291, %303
  %305 = extractvalue %dx.types.CBufRet.f32 %301, 1
  %306 = fcmp fast ogt float %291, %305
  %307 = and i1 %304, %306
  %308 = fcmp fast ogt float %291, %294
  %309 = and i1 %308, %307
  %310 = fmul fast float %302, %294
  %311 = fcmp fast ogt float %293, %310
  %312 = fcmp fast ogt float %293, %305
  %313 = and i1 %311, %312
  %314 = fcmp fast ogt float %293, %292
  %315 = and i1 %314, %313
  %316 = fcmp fast oeq float %291, %273
  %317 = fcmp fast oeq float %293, %278
  %318 = and i1 %309, %315
  %319 = select i1 %318, float %299, float 1.000000e+00
  %320 = select i1 %318, float %300, float 1.000000e+00
  %321 = and i1 %316, %309
  %322 = select i1 %321, float %319, float 0.000000e+00
  %323 = xor i1 %316, true
  %324 = and i1 %309, %323
  %325 = select i1 %324, float %319, float 0.000000e+00
  %326 = and i1 %317, %315
  %327 = select i1 %326, float %320, float 0.000000e+00
  %328 = xor i1 %317, true
  %329 = and i1 %315, %328
  %330 = select i1 %329, float %320, float 0.000000e+00
  br label %331

; <label>:331                                     ; preds = %297, %251
  %332 = phi float [ %322, %297 ], [ 0.000000e+00, %251 ]
  %333 = phi float [ %325, %297 ], [ 0.000000e+00, %251 ]
  %334 = phi float [ %327, %297 ], [ 0.000000e+00, %251 ]
  %335 = phi float [ %330, %297 ], [ 0.000000e+00, %251 ]
  %336 = add i32 %133, 1
  %337 = mul i32 %336, 4
  %338 = add i32 0, %337
  %339 = getelementptr [4624 x float], [4624 x float] addrspace(3)* @"\01?shEdgeMap@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %338
  store float %332, float addrspace(3)* %339, align 4
  %340 = mul i32 %336, 4
  %341 = add i32 1, %340
  %342 = getelementptr [4624 x float], [4624 x float] addrspace(3)* @"\01?shEdgeMap@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %341
  store float %333, float addrspace(3)* %342, align 4
  %343 = mul i32 %336, 4
  %344 = add i32 2, %343
  %345 = getelementptr [4624 x float], [4624 x float] addrspace(3)* @"\01?shEdgeMap@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %344
  store float %334, float addrspace(3)* %345, align 4
  %346 = mul i32 %336, 4
  %347 = add i32 3, %346
  %348 = getelementptr [4624 x float], [4624 x float] addrspace(3)* @"\01?shEdgeMap@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %347
  store float %335, float addrspace(3)* %348, align 4
  %349 = fadd fast float %155, %152
  %350 = fadd fast float %349, %158
  %351 = fsub fast float %350, %177
  %352 = fsub fast float %351, %180
  %353 = fsub fast float %352, %183
  %354 = call float @dx.op.unary.f32(i32 6, float %353)  ; FAbs(value)
  %355 = fadd fast float %349, %165
  %356 = fsub fast float %355, %171
  %357 = fsub fast float %356, %180
  %358 = fsub fast float %357, %183
  %359 = call float @dx.op.unary.f32(i32 6, float %358)  ; FAbs(value)
  %360 = fsub fast float %152, %158
  %361 = fadd fast float %360, %165
  %362 = fsub fast float %361, %171
  %363 = fadd fast float %362, %177
  %364 = fsub fast float %363, %183
  %365 = call float @dx.op.unary.f32(i32 6, float %364)  ; FAbs(value)
  %366 = fsub fast float -0.000000e+00, %155
  %367 = fsub fast float %366, %158
  %368 = fadd fast float %367, %165
  %369 = fsub fast float %368, %171
  %370 = fadd fast float %369, %177
  %371 = fadd fast float %370, %180
  %372 = call float @dx.op.unary.f32(i32 6, float %371)  ; FAbs(value)
  %373 = call float @dx.op.binary.f32(i32 35, float %354, float %365)  ; FMax(a,b)
  %374 = call float @dx.op.binary.f32(i32 36, float %354, float %365)  ; FMin(a,b)
  %375 = call float @dx.op.binary.f32(i32 35, float %359, float %372)  ; FMax(a,b)
  %376 = call float @dx.op.binary.f32(i32 36, float %359, float %372)  ; FMin(a,b)
  %377 = fadd fast float %375, %373
  %378 = fcmp fast oeq float %377, 0.000000e+00
  br i1 %378, label %413, label %379, !dx.controlflow.hints !23

; <label>:379                                     ; preds = %331
  %380 = fdiv fast float %373, %377
  %381 = call float @dx.op.binary.f32(i32 36, float %380, float 1.000000e+00)  ; FMin(a,b)
  %382 = fsub fast float 1.000000e+00, %381
  %383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %384 = extractvalue %dx.types.CBufRet.f32 %383, 0
  %385 = fmul fast float %384, %374
  %386 = fcmp fast ogt float %373, %385
  %387 = extractvalue %dx.types.CBufRet.f32 %383, 1
  %388 = fcmp fast ogt float %373, %387
  %389 = and i1 %386, %388
  %390 = fcmp fast ogt float %373, %376
  %391 = and i1 %390, %389
  %392 = fmul fast float %384, %376
  %393 = fcmp fast ogt float %375, %392
  %394 = fcmp fast ogt float %375, %387
  %395 = and i1 %393, %394
  %396 = fcmp fast ogt float %375, %374
  %397 = and i1 %396, %395
  %398 = fcmp fast oeq float %373, %354
  %399 = fcmp fast oeq float %375, %359
  %400 = and i1 %391, %397
  %401 = select i1 %400, float %381, float 1.000000e+00
  %402 = select i1 %400, float %382, float 1.000000e+00
  %403 = and i1 %398, %391
  %404 = select i1 %403, float %401, float 0.000000e+00
  %405 = xor i1 %398, true
  %406 = and i1 %391, %405
  %407 = select i1 %406, float %401, float 0.000000e+00
  %408 = and i1 %399, %397
  %409 = select i1 %408, float %402, float 0.000000e+00
  %410 = xor i1 %399, true
  %411 = and i1 %397, %410
  %412 = select i1 %411, float %402, float 0.000000e+00
  br label %413

; <label>:413                                     ; preds = %379, %331
  %414 = phi float [ %404, %379 ], [ 0.000000e+00, %331 ]
  %415 = phi float [ %407, %379 ], [ 0.000000e+00, %331 ]
  %416 = phi float [ %409, %379 ], [ 0.000000e+00, %331 ]
  %417 = phi float [ %412, %379 ], [ 0.000000e+00, %331 ]
  %418 = add i32 %133, 34
  %419 = mul i32 %418, 4
  %420 = add i32 0, %419
  %421 = getelementptr [4624 x float], [4624 x float] addrspace(3)* @"\01?shEdgeMap@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %420
  store float %414, float addrspace(3)* %421, align 4
  %422 = mul i32 %418, 4
  %423 = add i32 1, %422
  %424 = getelementptr [4624 x float], [4624 x float] addrspace(3)* @"\01?shEdgeMap@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %423
  store float %415, float addrspace(3)* %424, align 4
  %425 = mul i32 %418, 4
  %426 = add i32 2, %425
  %427 = getelementptr [4624 x float], [4624 x float] addrspace(3)* @"\01?shEdgeMap@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %426
  store float %416, float addrspace(3)* %427, align 4
  %428 = mul i32 %418, 4
  %429 = add i32 3, %428
  %430 = getelementptr [4624 x float], [4624 x float] addrspace(3)* @"\01?shEdgeMap@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %429
  store float %417, float addrspace(3)* %430, align 4
  %431 = fadd fast float %158, %155
  %432 = fadd fast float %431, %162
  %433 = fsub fast float %432, %180
  %434 = fsub fast float %433, %183
  %435 = fsub fast float %434, %186
  %436 = call float @dx.op.unary.f32(i32 6, float %435)  ; FAbs(value)
  %437 = fadd fast float %431, %168
  %438 = fsub fast float %437, %174
  %439 = fsub fast float %438, %183
  %440 = fsub fast float %439, %186
  %441 = call float @dx.op.unary.f32(i32 6, float %440)  ; FAbs(value)
  %442 = fsub fast float %155, %162
  %443 = fadd fast float %442, %168
  %444 = fsub fast float %443, %174
  %445 = fadd fast float %444, %180
  %446 = fsub fast float %445, %186
  %447 = call float @dx.op.unary.f32(i32 6, float %446)  ; FAbs(value)
  %448 = fsub fast float %159, %162
  %449 = fadd fast float %448, %168
  %450 = fsub fast float %449, %174
  %451 = fadd fast float %450, %180
  %452 = fadd fast float %451, %183
  %453 = call float @dx.op.unary.f32(i32 6, float %452)  ; FAbs(value)
  %454 = call float @dx.op.binary.f32(i32 35, float %436, float %447)  ; FMax(a,b)
  %455 = call float @dx.op.binary.f32(i32 36, float %436, float %447)  ; FMin(a,b)
  %456 = call float @dx.op.binary.f32(i32 35, float %441, float %453)  ; FMax(a,b)
  %457 = call float @dx.op.binary.f32(i32 36, float %441, float %453)  ; FMin(a,b)
  %458 = fadd fast float %456, %454
  %459 = fcmp fast oeq float %458, 0.000000e+00
  br i1 %459, label %494, label %460, !dx.controlflow.hints !23

; <label>:460                                     ; preds = %413
  %461 = fdiv fast float %454, %458
  %462 = call float @dx.op.binary.f32(i32 36, float %461, float 1.000000e+00)  ; FMin(a,b)
  %463 = fsub fast float 1.000000e+00, %462
  %464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %465 = extractvalue %dx.types.CBufRet.f32 %464, 0
  %466 = fmul fast float %465, %455
  %467 = fcmp fast ogt float %454, %466
  %468 = extractvalue %dx.types.CBufRet.f32 %464, 1
  %469 = fcmp fast ogt float %454, %468
  %470 = and i1 %467, %469
  %471 = fcmp fast ogt float %454, %457
  %472 = and i1 %471, %470
  %473 = fmul fast float %465, %457
  %474 = fcmp fast ogt float %456, %473
  %475 = fcmp fast ogt float %456, %468
  %476 = and i1 %474, %475
  %477 = fcmp fast ogt float %456, %455
  %478 = and i1 %477, %476
  %479 = fcmp fast oeq float %454, %436
  %480 = fcmp fast oeq float %456, %441
  %481 = and i1 %472, %478
  %482 = select i1 %481, float %462, float 1.000000e+00
  %483 = select i1 %481, float %463, float 1.000000e+00
  %484 = and i1 %479, %472
  %485 = select i1 %484, float %482, float 0.000000e+00
  %486 = xor i1 %479, true
  %487 = and i1 %472, %486
  %488 = select i1 %487, float %482, float 0.000000e+00
  %489 = and i1 %480, %478
  %490 = select i1 %489, float %483, float 0.000000e+00
  %491 = xor i1 %480, true
  %492 = and i1 %478, %491
  %493 = select i1 %492, float %483, float 0.000000e+00
  br label %494

; <label>:494                                     ; preds = %460, %413
  %495 = phi float [ %485, %460 ], [ 0.000000e+00, %413 ]
  %496 = phi float [ %488, %460 ], [ 0.000000e+00, %413 ]
  %497 = phi float [ %490, %460 ], [ 0.000000e+00, %413 ]
  %498 = phi float [ %493, %460 ], [ 0.000000e+00, %413 ]
  %499 = add i32 %133, 35
  %500 = mul i32 %499, 4
  %501 = add i32 0, %500
  %502 = getelementptr [4624 x float], [4624 x float] addrspace(3)* @"\01?shEdgeMap@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %501
  store float %495, float addrspace(3)* %502, align 4
  %503 = mul i32 %499, 4
  %504 = add i32 1, %503
  %505 = getelementptr [4624 x float], [4624 x float] addrspace(3)* @"\01?shEdgeMap@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %504
  store float %496, float addrspace(3)* %505, align 4
  %506 = mul i32 %499, 4
  %507 = add i32 2, %506
  %508 = getelementptr [4624 x float], [4624 x float] addrspace(3)* @"\01?shEdgeMap@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %507
  store float %497, float addrspace(3)* %508, align 4
  %509 = mul i32 %499, 4
  %510 = add i32 3, %509
  %511 = getelementptr [4624 x float], [4624 x float] addrspace(3)* @"\01?shEdgeMap@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %510
  store float %498, float addrspace(3)* %511, align 4
  %512 = add nuw i32 %128, 256
  %513 = icmp ult i32 %512, %124
  br i1 %513, label %127, label %514

; <label>:514                                     ; preds = %494
  br label %515

; <label>:515                                     ; preds = %514, %123
  %516 = icmp slt i32 %9, 128
  br i1 %516, label %517, label %566

; <label>:517                                     ; preds = %515
  br label %518

; <label>:518                                     ; preds = %562, %517
  %519 = phi i32 [ %563, %562 ], [ %9, %517 ]
  %520 = ashr i32 %519, 1
  %521 = and i32 %519, 1
  %522 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %521, i32 %520, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %523 = extractvalue %dx.types.ResRet.f32 %522, 0
  %524 = extractvalue %dx.types.ResRet.f32 %522, 1
  %525 = shl nuw nsw i32 %521, 2
  %526 = mul i32 %520, 6
  %527 = add i32 %525, %526
  %528 = getelementptr [384 x float], [384 x float] addrspace(3)* @"\01?shCoefScaler@@3PAY05$$CAMA.1dim", i32 0, i32 %527
  store float %523, float addrspace(3)* %528, align 4, !tbaa !19
  %529 = or i32 %525, 1
  %530 = mul i32 %520, 6
  %531 = add i32 %529, %530
  %532 = getelementptr [384 x float], [384 x float] addrspace(3)* @"\01?shCoefScaler@@3PAY05$$CAMA.1dim", i32 0, i32 %531
  store float %524, float addrspace(3)* %532, align 4, !tbaa !19
  %533 = icmp eq i32 %521, 0
  br i1 %533, label %534, label %543, !dx.controlflow.hints !24

; <label>:534                                     ; preds = %518
  %535 = extractvalue %dx.types.ResRet.f32 %522, 3
  %536 = extractvalue %dx.types.ResRet.f32 %522, 2
  %537 = mul i32 %520, 6
  %538 = add i32 2, %537
  %539 = getelementptr [384 x float], [384 x float] addrspace(3)* @"\01?shCoefScaler@@3PAY05$$CAMA.1dim", i32 0, i32 %538
  store float %536, float addrspace(3)* %539, align 4, !tbaa !19
  %540 = mul i32 %520, 6
  %541 = add i32 3, %540
  %542 = getelementptr [384 x float], [384 x float] addrspace(3)* @"\01?shCoefScaler@@3PAY05$$CAMA.1dim", i32 0, i32 %541
  store float %535, float addrspace(3)* %542, align 4, !tbaa !19
  br label %543

; <label>:543                                     ; preds = %534, %518
  %544 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %521, i32 %520, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %545 = extractvalue %dx.types.ResRet.f32 %544, 0
  %546 = extractvalue %dx.types.ResRet.f32 %544, 1
  %547 = mul i32 %520, 6
  %548 = add i32 %525, %547
  %549 = getelementptr [384 x float], [384 x float] addrspace(3)* @"\01?shCoefUSM@@3PAY05$$CAMA.1dim", i32 0, i32 %548
  store float %545, float addrspace(3)* %549, align 4, !tbaa !19
  %550 = mul i32 %520, 6
  %551 = add i32 %529, %550
  %552 = getelementptr [384 x float], [384 x float] addrspace(3)* @"\01?shCoefUSM@@3PAY05$$CAMA.1dim", i32 0, i32 %551
  store float %546, float addrspace(3)* %552, align 4, !tbaa !19
  br i1 %533, label %553, label %562, !dx.controlflow.hints !25

; <label>:553                                     ; preds = %543
  %554 = extractvalue %dx.types.ResRet.f32 %544, 3
  %555 = extractvalue %dx.types.ResRet.f32 %544, 2
  %556 = mul i32 %520, 6
  %557 = add i32 2, %556
  %558 = getelementptr [384 x float], [384 x float] addrspace(3)* @"\01?shCoefUSM@@3PAY05$$CAMA.1dim", i32 0, i32 %557
  store float %555, float addrspace(3)* %558, align 4, !tbaa !19
  %559 = mul i32 %520, 6
  %560 = add i32 3, %559
  %561 = getelementptr [384 x float], [384 x float] addrspace(3)* @"\01?shCoefUSM@@3PAY05$$CAMA.1dim", i32 0, i32 %560
  store float %554, float addrspace(3)* %561, align 4, !tbaa !19
  br label %562

; <label>:562                                     ; preds = %553, %543
  %563 = add nsw i32 %519, 128
  %564 = icmp slt i32 %519, 0
  br i1 %564, label %518, label %565

; <label>:565                                     ; preds = %562
  br label %566

; <label>:566                                     ; preds = %565, %515
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %567 = and i32 %9, 31
  %568 = lshr i32 %9, 5
  %569 = or i32 %567, %10
  %570 = sitofp i32 %569 to float
  %571 = fadd fast float %570, 5.000000e-01
  %572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %573 = extractvalue %dx.types.CBufRet.f32 %572, 0
  %574 = fmul fast float %573, %571
  %575 = fadd fast float %574, -5.000000e-01
  %576 = call float @dx.op.unary.f32(i32 27, float %575)  ; Round_ni(value)
  %577 = sitofp i32 %19 to float
  %578 = fsub fast float %576, %577
  %579 = fptosi float %578 to i32
  %580 = fsub fast float %575, %576
  %581 = fmul fast float %580, 6.400000e+01
  %582 = fptosi float %581 to i32
  br label %583

; <label>:583                                     ; preds = %1522, %566
  %584 = phi i32 [ 0, %566 ], [ %1544, %1522 ]
  %585 = add nsw i32 %568, %11
  %586 = shl nsw i32 %584, 2
  %587 = add nsw i32 %585, %586
  %588 = sitofp i32 %587 to float
  %589 = fadd fast float %588, 5.000000e-01
  %590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %591 = extractvalue %dx.types.CBufRet.f32 %590, 1
  %592 = fmul fast float %589, %591
  %593 = fadd fast float %592, -5.000000e-01
  %594 = call float @dx.op.unary.f32(i32 27, float %593)  ; Round_ni(value)
  %595 = sitofp i32 %26 to float
  %596 = fsub fast float %594, %595
  %597 = fptosi float %596 to i32
  %598 = fsub fast float %593, %594
  %599 = fmul fast float %598, 6.400000e+01
  %600 = fptosi float %599 to i32
  %601 = mul nsw i32 %597, 34
  %602 = add nsw i32 %601, %579
  %603 = mul i32 %602, 4
  %604 = add i32 0, %603
  %605 = getelementptr [4624 x float], [4624 x float] addrspace(3)* @"\01?shEdgeMap@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %604
  %606 = load float, float addrspace(3)* %605, align 4
  %607 = mul i32 %602, 4
  %608 = add i32 1, %607
  %609 = getelementptr [4624 x float], [4624 x float] addrspace(3)* @"\01?shEdgeMap@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %608
  %610 = load float, float addrspace(3)* %609, align 4
  %611 = mul i32 %602, 4
  %612 = add i32 2, %611
  %613 = getelementptr [4624 x float], [4624 x float] addrspace(3)* @"\01?shEdgeMap@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %612
  %614 = load float, float addrspace(3)* %613, align 4
  %615 = mul i32 %602, 4
  %616 = add i32 3, %615
  %617 = getelementptr [4624 x float], [4624 x float] addrspace(3)* @"\01?shEdgeMap@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %616
  %618 = load float, float addrspace(3)* %617, align 4
  %619 = add nsw i32 %602, 1
  %620 = mul i32 %619, 4
  %621 = add i32 0, %620
  %622 = getelementptr [4624 x float], [4624 x float] addrspace(3)* @"\01?shEdgeMap@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %621
  %623 = load float, float addrspace(3)* %622, align 4
  %624 = mul i32 %619, 4
  %625 = add i32 1, %624
  %626 = getelementptr [4624 x float], [4624 x float] addrspace(3)* @"\01?shEdgeMap@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %625
  %627 = load float, float addrspace(3)* %626, align 4
  %628 = mul i32 %619, 4
  %629 = add i32 2, %628
  %630 = getelementptr [4624 x float], [4624 x float] addrspace(3)* @"\01?shEdgeMap@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %629
  %631 = load float, float addrspace(3)* %630, align 4
  %632 = mul i32 %619, 4
  %633 = add i32 3, %632
  %634 = getelementptr [4624 x float], [4624 x float] addrspace(3)* @"\01?shEdgeMap@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %633
  %635 = load float, float addrspace(3)* %634, align 4
  %636 = add nsw i32 %602, 34
  %637 = mul i32 %636, 4
  %638 = add i32 0, %637
  %639 = getelementptr [4624 x float], [4624 x float] addrspace(3)* @"\01?shEdgeMap@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %638
  %640 = load float, float addrspace(3)* %639, align 4
  %641 = mul i32 %636, 4
  %642 = add i32 1, %641
  %643 = getelementptr [4624 x float], [4624 x float] addrspace(3)* @"\01?shEdgeMap@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %642
  %644 = load float, float addrspace(3)* %643, align 4
  %645 = mul i32 %636, 4
  %646 = add i32 2, %645
  %647 = getelementptr [4624 x float], [4624 x float] addrspace(3)* @"\01?shEdgeMap@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %646
  %648 = load float, float addrspace(3)* %647, align 4
  %649 = mul i32 %636, 4
  %650 = add i32 3, %649
  %651 = getelementptr [4624 x float], [4624 x float] addrspace(3)* @"\01?shEdgeMap@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %650
  %652 = load float, float addrspace(3)* %651, align 4
  %653 = add nsw i32 %602, 35
  %654 = mul i32 %653, 4
  %655 = add i32 0, %654
  %656 = getelementptr [4624 x float], [4624 x float] addrspace(3)* @"\01?shEdgeMap@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %655
  %657 = load float, float addrspace(3)* %656, align 4
  %658 = mul i32 %653, 4
  %659 = add i32 1, %658
  %660 = getelementptr [4624 x float], [4624 x float] addrspace(3)* @"\01?shEdgeMap@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %659
  %661 = load float, float addrspace(3)* %660, align 4
  %662 = mul i32 %653, 4
  %663 = add i32 2, %662
  %664 = getelementptr [4624 x float], [4624 x float] addrspace(3)* @"\01?shEdgeMap@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %663
  %665 = load float, float addrspace(3)* %664, align 4
  %666 = mul i32 %653, 4
  %667 = add i32 3, %666
  %668 = getelementptr [4624 x float], [4624 x float] addrspace(3)* @"\01?shEdgeMap@@3PAV?$vector@M$03@@A.v.1dim", i32 0, i32 %667
  %669 = load float, float addrspace(3)* %668, align 4
  %670 = fsub fast float %623, %606
  %671 = fsub fast float %627, %610
  %672 = fsub fast float %631, %614
  %673 = fsub fast float %635, %618
  %674 = fmul fast float %670, %580
  %675 = fmul fast float %671, %580
  %676 = fmul fast float %672, %580
  %677 = fmul fast float %673, %580
  %678 = fadd fast float %674, %606
  %679 = fadd fast float %675, %610
  %680 = fadd fast float %676, %614
  %681 = fadd fast float %677, %618
  %682 = fsub fast float %657, %640
  %683 = fsub fast float %661, %644
  %684 = fsub fast float %665, %648
  %685 = fsub fast float %669, %652
  %686 = fmul fast float %682, %580
  %687 = fmul fast float %683, %580
  %688 = fmul fast float %684, %580
  %689 = fmul fast float %685, %580
  %690 = fsub fast float %640, %678
  %691 = fadd fast float %690, %686
  %692 = fsub fast float %644, %679
  %693 = fadd fast float %692, %687
  %694 = fsub fast float %648, %680
  %695 = fadd fast float %694, %688
  %696 = fsub fast float %652, %681
  %697 = fadd fast float %696, %689
  %698 = fmul fast float %691, %598
  %699 = fmul fast float %693, %598
  %700 = fmul fast float %695, %598
  %701 = fmul fast float %697, %598
  %702 = fadd fast float %698, %678
  %703 = fadd fast float %699, %679
  %704 = fadd fast float %700, %680
  %705 = fadd fast float %701, %681
  %706 = mul nsw i32 %597, 38
  %707 = add nsw i32 %706, %579
  %708 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %707
  %709 = load float, float addrspace(3)* %708, align 4, !tbaa !19
  %710 = add nsw i32 %707, 1
  %711 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %710
  %712 = load float, float addrspace(3)* %711, align 4, !tbaa !19
  %713 = add nsw i32 %707, 2
  %714 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %713
  %715 = load float, float addrspace(3)* %714, align 4, !tbaa !19
  %716 = add nsw i32 %707, 3
  %717 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %716
  %718 = load float, float addrspace(3)* %717, align 4, !tbaa !19
  %719 = add nsw i32 %707, 4
  %720 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %719
  %721 = load float, float addrspace(3)* %720, align 4, !tbaa !19
  %722 = add nsw i32 %707, 5
  %723 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %722
  %724 = load float, float addrspace(3)* %723, align 4, !tbaa !19
  %725 = add nsw i32 %707, 38
  %726 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %725
  %727 = load float, float addrspace(3)* %726, align 4, !tbaa !19
  %728 = add nsw i32 %707, 39
  %729 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %728
  %730 = load float, float addrspace(3)* %729, align 4, !tbaa !19
  %731 = add nsw i32 %707, 40
  %732 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %731
  %733 = load float, float addrspace(3)* %732, align 4, !tbaa !19
  %734 = add nsw i32 %707, 41
  %735 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %734
  %736 = load float, float addrspace(3)* %735, align 4, !tbaa !19
  %737 = add nsw i32 %707, 42
  %738 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %737
  %739 = load float, float addrspace(3)* %738, align 4, !tbaa !19
  %740 = add nsw i32 %707, 43
  %741 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %740
  %742 = load float, float addrspace(3)* %741, align 4, !tbaa !19
  %743 = add nsw i32 %707, 76
  %744 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %743
  %745 = load float, float addrspace(3)* %744, align 4, !tbaa !19
  %746 = add nsw i32 %707, 77
  %747 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %746
  %748 = load float, float addrspace(3)* %747, align 4, !tbaa !19
  %749 = add nsw i32 %707, 78
  %750 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %749
  %751 = load float, float addrspace(3)* %750, align 4, !tbaa !19
  %752 = add nsw i32 %707, 79
  %753 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %752
  %754 = load float, float addrspace(3)* %753, align 4, !tbaa !19
  %755 = add nsw i32 %707, 80
  %756 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %755
  %757 = load float, float addrspace(3)* %756, align 4, !tbaa !19
  %758 = add nsw i32 %707, 81
  %759 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %758
  %760 = load float, float addrspace(3)* %759, align 4, !tbaa !19
  %761 = add nsw i32 %707, 114
  %762 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %761
  %763 = load float, float addrspace(3)* %762, align 4, !tbaa !19
  %764 = add nsw i32 %707, 115
  %765 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %764
  %766 = load float, float addrspace(3)* %765, align 4, !tbaa !19
  %767 = add nsw i32 %707, 116
  %768 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %767
  %769 = load float, float addrspace(3)* %768, align 4, !tbaa !19
  %770 = add nsw i32 %707, 117
  %771 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %770
  %772 = load float, float addrspace(3)* %771, align 4, !tbaa !19
  %773 = add nsw i32 %707, 118
  %774 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %773
  %775 = load float, float addrspace(3)* %774, align 4, !tbaa !19
  %776 = add nsw i32 %707, 119
  %777 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %776
  %778 = load float, float addrspace(3)* %777, align 4, !tbaa !19
  %779 = add nsw i32 %707, 152
  %780 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %779
  %781 = load float, float addrspace(3)* %780, align 4, !tbaa !19
  %782 = add nsw i32 %707, 153
  %783 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %782
  %784 = load float, float addrspace(3)* %783, align 4, !tbaa !19
  %785 = add nsw i32 %707, 154
  %786 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %785
  %787 = load float, float addrspace(3)* %786, align 4, !tbaa !19
  %788 = add nsw i32 %707, 155
  %789 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %788
  %790 = load float, float addrspace(3)* %789, align 4, !tbaa !19
  %791 = add nsw i32 %707, 156
  %792 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %791
  %793 = load float, float addrspace(3)* %792, align 4, !tbaa !19
  %794 = add nsw i32 %707, 157
  %795 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %794
  %796 = load float, float addrspace(3)* %795, align 4, !tbaa !19
  %797 = add nsw i32 %707, 190
  %798 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %797
  %799 = load float, float addrspace(3)* %798, align 4, !tbaa !19
  %800 = add nsw i32 %707, 191
  %801 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %800
  %802 = load float, float addrspace(3)* %801, align 4, !tbaa !19
  %803 = add nsw i32 %707, 192
  %804 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %803
  %805 = load float, float addrspace(3)* %804, align 4, !tbaa !19
  %806 = add nsw i32 %707, 193
  %807 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %806
  %808 = load float, float addrspace(3)* %807, align 4, !tbaa !19
  %809 = add nsw i32 %707, 194
  %810 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %809
  %811 = load float, float addrspace(3)* %810, align 4, !tbaa !19
  %812 = add nsw i32 %707, 195
  %813 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %812
  %814 = load float, float addrspace(3)* %813, align 4, !tbaa !19
  %815 = fsub fast float 1.000000e+00, %702
  %816 = fsub fast float %815, %703
  %817 = fsub fast float %816, %704
  %818 = fsub fast float %817, %705
  %819 = mul i32 %600, 6
  %820 = add i32 0, %819
  %821 = getelementptr [384 x float], [384 x float] addrspace(3)* @"\01?shCoefScaler@@3PAY05$$CAMA.1dim", i32 0, i32 %820
  %822 = load float, float addrspace(3)* %821, align 4, !tbaa !19
  %823 = fmul fast float %822, %709
  %824 = mul i32 %600, 6
  %825 = add i32 1, %824
  %826 = getelementptr [384 x float], [384 x float] addrspace(3)* @"\01?shCoefScaler@@3PAY05$$CAMA.1dim", i32 0, i32 %825
  %827 = load float, float addrspace(3)* %826, align 4, !tbaa !19
  %828 = fmul fast float %827, %727
  %829 = fadd fast float %828, %823
  %830 = mul i32 %600, 6
  %831 = add i32 2, %830
  %832 = getelementptr [384 x float], [384 x float] addrspace(3)* @"\01?shCoefScaler@@3PAY05$$CAMA.1dim", i32 0, i32 %831
  %833 = load float, float addrspace(3)* %832, align 4, !tbaa !19
  %834 = fmul fast float %833, %745
  %835 = fadd fast float %829, %834
  %836 = mul i32 %600, 6
  %837 = add i32 3, %836
  %838 = getelementptr [384 x float], [384 x float] addrspace(3)* @"\01?shCoefScaler@@3PAY05$$CAMA.1dim", i32 0, i32 %837
  %839 = load float, float addrspace(3)* %838, align 4, !tbaa !19
  %840 = fmul fast float %839, %763
  %841 = fadd fast float %835, %840
  %842 = mul i32 %600, 6
  %843 = add i32 4, %842
  %844 = getelementptr [384 x float], [384 x float] addrspace(3)* @"\01?shCoefScaler@@3PAY05$$CAMA.1dim", i32 0, i32 %843
  %845 = load float, float addrspace(3)* %844, align 4, !tbaa !19
  %846 = fmul fast float %845, %781
  %847 = fadd fast float %841, %846
  %848 = mul i32 %600, 6
  %849 = add i32 5, %848
  %850 = getelementptr [384 x float], [384 x float] addrspace(3)* @"\01?shCoefScaler@@3PAY05$$CAMA.1dim", i32 0, i32 %849
  %851 = load float, float addrspace(3)* %850, align 4, !tbaa !19
  %852 = fmul fast float %851, %799
  %853 = fadd fast float %847, %852
  %854 = mul i32 %582, 6
  %855 = add i32 0, %854
  %856 = getelementptr [384 x float], [384 x float] addrspace(3)* @"\01?shCoefScaler@@3PAY05$$CAMA.1dim", i32 0, i32 %855
  %857 = load float, float addrspace(3)* %856, align 4, !tbaa !19
  %858 = fmul fast float %853, %857
  %859 = fmul fast float %822, %712
  %860 = fmul fast float %827, %730
  %861 = fadd fast float %860, %859
  %862 = fmul fast float %833, %748
  %863 = fadd fast float %861, %862
  %864 = fmul fast float %839, %766
  %865 = fadd fast float %863, %864
  %866 = fmul fast float %845, %784
  %867 = fadd fast float %865, %866
  %868 = fmul fast float %851, %802
  %869 = fadd fast float %867, %868
  %870 = mul i32 %582, 6
  %871 = add i32 1, %870
  %872 = getelementptr [384 x float], [384 x float] addrspace(3)* @"\01?shCoefScaler@@3PAY05$$CAMA.1dim", i32 0, i32 %871
  %873 = load float, float addrspace(3)* %872, align 4, !tbaa !19
  %874 = fmul fast float %869, %873
  %875 = fadd fast float %874, %858
  %876 = fmul fast float %822, %715
  %877 = fmul fast float %827, %733
  %878 = fadd fast float %877, %876
  %879 = fmul fast float %833, %751
  %880 = fadd fast float %878, %879
  %881 = fmul fast float %839, %769
  %882 = fadd fast float %880, %881
  %883 = fmul fast float %845, %787
  %884 = fadd fast float %882, %883
  %885 = fmul fast float %851, %805
  %886 = fadd fast float %884, %885
  %887 = mul i32 %582, 6
  %888 = add i32 2, %887
  %889 = getelementptr [384 x float], [384 x float] addrspace(3)* @"\01?shCoefScaler@@3PAY05$$CAMA.1dim", i32 0, i32 %888
  %890 = load float, float addrspace(3)* %889, align 4, !tbaa !19
  %891 = fmul fast float %886, %890
  %892 = fadd fast float %875, %891
  %893 = fmul fast float %822, %718
  %894 = fmul fast float %827, %736
  %895 = fadd fast float %894, %893
  %896 = fmul fast float %833, %754
  %897 = fadd fast float %895, %896
  %898 = fmul fast float %839, %772
  %899 = fadd fast float %897, %898
  %900 = fmul fast float %845, %790
  %901 = fadd fast float %899, %900
  %902 = fmul fast float %851, %808
  %903 = fadd fast float %901, %902
  %904 = mul i32 %582, 6
  %905 = add i32 3, %904
  %906 = getelementptr [384 x float], [384 x float] addrspace(3)* @"\01?shCoefScaler@@3PAY05$$CAMA.1dim", i32 0, i32 %905
  %907 = load float, float addrspace(3)* %906, align 4, !tbaa !19
  %908 = fmul fast float %903, %907
  %909 = fadd fast float %892, %908
  %910 = fmul fast float %822, %721
  %911 = fmul fast float %827, %739
  %912 = fadd fast float %911, %910
  %913 = fmul fast float %833, %757
  %914 = fadd fast float %912, %913
  %915 = fmul fast float %839, %775
  %916 = fadd fast float %914, %915
  %917 = fmul fast float %845, %793
  %918 = fadd fast float %916, %917
  %919 = fmul fast float %851, %811
  %920 = fadd fast float %918, %919
  %921 = mul i32 %582, 6
  %922 = add i32 4, %921
  %923 = getelementptr [384 x float], [384 x float] addrspace(3)* @"\01?shCoefScaler@@3PAY05$$CAMA.1dim", i32 0, i32 %922
  %924 = load float, float addrspace(3)* %923, align 4, !tbaa !19
  %925 = fmul fast float %920, %924
  %926 = fadd fast float %909, %925
  %927 = fmul fast float %822, %724
  %928 = fmul fast float %827, %742
  %929 = fadd fast float %928, %927
  %930 = fmul fast float %833, %760
  %931 = fadd fast float %929, %930
  %932 = fmul fast float %839, %778
  %933 = fadd fast float %931, %932
  %934 = fmul fast float %845, %796
  %935 = fadd fast float %933, %934
  %936 = fmul fast float %851, %814
  %937 = fadd fast float %935, %936
  %938 = mul i32 %582, 6
  %939 = add i32 5, %938
  %940 = getelementptr [384 x float], [384 x float] addrspace(3)* @"\01?shCoefScaler@@3PAY05$$CAMA.1dim", i32 0, i32 %939
  %941 = load float, float addrspace(3)* %940, align 4, !tbaa !19
  %942 = fmul fast float %937, %941
  %943 = fadd fast float %926, %942
  %944 = fmul fast float %943, %818
  %945 = fcmp fast ogt float %702, 0.000000e+00
  br i1 %945, label %946, label %1062, !dx.controlflow.hints !26

; <label>:946                                     ; preds = %583
  %947 = fsub fast float %718, %715
  %948 = fmul fast float %947, %580
  %949 = fadd fast float %948, %715
  %950 = fsub fast float %736, %733
  %951 = fmul fast float %950, %580
  %952 = fadd fast float %951, %733
  %953 = fsub fast float %754, %751
  %954 = fmul fast float %953, %580
  %955 = fadd fast float %954, %751
  %956 = fsub fast float %772, %769
  %957 = fmul fast float %956, %580
  %958 = fadd fast float %957, %769
  %959 = fsub fast float %790, %787
  %960 = fmul fast float %959, %580
  %961 = fadd fast float %960, %787
  %962 = fsub fast float %808, %805
  %963 = fmul fast float %962, %580
  %964 = fadd fast float %963, %805
  %965 = fmul fast float %822, %949
  %966 = fmul fast float %827, %952
  %967 = fadd fast float %966, %965
  %968 = fmul fast float %833, %955
  %969 = fadd fast float %967, %968
  %970 = fmul fast float %839, %958
  %971 = fadd fast float %969, %970
  %972 = fmul fast float %845, %961
  %973 = fadd fast float %971, %972
  %974 = fmul fast float %851, %964
  %975 = fadd fast float %973, %974
  %976 = mul i32 %600, 6
  %977 = add i32 0, %976
  %978 = getelementptr [384 x float], [384 x float] addrspace(3)* @"\01?shCoefUSM@@3PAY05$$CAMA.1dim", i32 0, i32 %977
  %979 = load float, float addrspace(3)* %978, align 4, !tbaa !19
  %980 = fmul fast float %979, %949
  %981 = mul i32 %600, 6
  %982 = add i32 1, %981
  %983 = getelementptr [384 x float], [384 x float] addrspace(3)* @"\01?shCoefUSM@@3PAY05$$CAMA.1dim", i32 0, i32 %982
  %984 = load float, float addrspace(3)* %983, align 4, !tbaa !19
  %985 = fmul fast float %984, %952
  %986 = fadd fast float %985, %980
  %987 = mul i32 %600, 6
  %988 = add i32 2, %987
  %989 = getelementptr [384 x float], [384 x float] addrspace(3)* @"\01?shCoefUSM@@3PAY05$$CAMA.1dim", i32 0, i32 %988
  %990 = load float, float addrspace(3)* %989, align 4, !tbaa !19
  %991 = fmul fast float %990, %955
  %992 = fadd fast float %986, %991
  %993 = mul i32 %600, 6
  %994 = add i32 3, %993
  %995 = getelementptr [384 x float], [384 x float] addrspace(3)* @"\01?shCoefUSM@@3PAY05$$CAMA.1dim", i32 0, i32 %994
  %996 = load float, float addrspace(3)* %995, align 4, !tbaa !19
  %997 = fmul fast float %996, %958
  %998 = fadd fast float %992, %997
  %999 = mul i32 %600, 6
  %1000 = add i32 4, %999
  %1001 = getelementptr [384 x float], [384 x float] addrspace(3)* @"\01?shCoefUSM@@3PAY05$$CAMA.1dim", i32 0, i32 %1000
  %1002 = load float, float addrspace(3)* %1001, align 4, !tbaa !19
  %1003 = fmul fast float %1002, %961
  %1004 = fadd fast float %998, %1003
  %1005 = mul i32 %600, 6
  %1006 = add i32 5, %1005
  %1007 = getelementptr [384 x float], [384 x float] addrspace(3)* @"\01?shCoefUSM@@3PAY05$$CAMA.1dim", i32 0, i32 %1006
  %1008 = load float, float addrspace(3)* %1007, align 4, !tbaa !19
  %1009 = fmul fast float %1008, %964
  %1010 = fadd fast float %1004, %1009
  %1011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1012 = extractvalue %dx.types.CBufRet.f32 %1011, 2
  %1013 = fsub fast float %975, %1012
  %1014 = extractvalue %dx.types.CBufRet.f32 %1011, 3
  %1015 = fmul fast float %1013, %1014
  %1016 = call float @dx.op.unary.f32(i32 7, float %1015)  ; Saturate(value)
  %1017 = fsub fast float 1.000000e+00, %1016
  %1018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1019 = extractvalue %dx.types.CBufRet.f32 %1018, 1
  %1020 = fmul fast float %1019, %1017
  %1021 = extractvalue %dx.types.CBufRet.f32 %1018, 0
  %1022 = fadd fast float %1020, %1021
  %1023 = fmul fast float %1022, %1010
  %1024 = extractvalue %dx.types.CBufRet.f32 %1018, 3
  %1025 = fmul fast float %1024, %1017
  %1026 = extractvalue %dx.types.CBufRet.f32 %1018, 2
  %1027 = fadd fast float %1025, %1026
  %1028 = fmul fast float %1027, %975
  %1029 = fsub fast float -0.000000e+00, %1028
  %1030 = call float @dx.op.binary.f32(i32 35, float %1029, float %1023)  ; FMax(a,b)
  %1031 = call float @dx.op.binary.f32(i32 36, float %1028, float %1030)  ; FMin(a,b)
  %1032 = icmp slt i32 %600, 33
  %1033 = select i1 %1032, float %949, float %958
  %1034 = call float @dx.op.binary.f32(i32 36, float %952, float %955)  ; FMin(a,b)
  %1035 = call float @dx.op.binary.f32(i32 36, float %1034, float %1033)  ; FMin(a,b)
  %1036 = call float @dx.op.binary.f32(i32 35, float %952, float %955)  ; FMax(a,b)
  %1037 = call float @dx.op.binary.f32(i32 35, float %1036, float %1033)  ; FMax(a,b)
  %1038 = select i1 %1032, float %955, float %964
  %1039 = call float @dx.op.binary.f32(i32 36, float %958, float %961)  ; FMin(a,b)
  %1040 = call float @dx.op.binary.f32(i32 36, float %1039, float %1038)  ; FMin(a,b)
  %1041 = call float @dx.op.binary.f32(i32 35, float %958, float %961)  ; FMax(a,b)
  %1042 = call float @dx.op.binary.f32(i32 35, float %1041, float %1038)  ; FMax(a,b)
  %1043 = fsub fast float %1037, %1035
  %1044 = fsub fast float %1042, %1040
  %1045 = call float @dx.op.binary.f32(i32 35, float %1043, float %1044)  ; FMax(a,b)
  %1046 = call float @dx.op.binary.f32(i32 36, float %1043, float %1044)  ; FMin(a,b)
  %1047 = extractvalue %dx.types.CBufRet.f32 %1011, 1
  %1048 = fadd fast float %1047, %1046
  %1049 = fdiv fast float %1045, %1048
  %1050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1051 = extractvalue %dx.types.CBufRet.f32 %1050, 2
  %1052 = fsub fast float %1049, %1051
  %1053 = extractvalue %dx.types.CBufRet.f32 %1050, 3
  %1054 = fmul fast float %1052, %1053
  %1055 = call float @dx.op.unary.f32(i32 7, float %1054)  ; Saturate(value)
  %1056 = fsub fast float 1.000000e+00, %1055
  %1057 = extractvalue %dx.types.CBufRet.f32 %1011, 0
  %1058 = fmul fast float %1056, %1031
  %1059 = fmul fast float %1058, %1057
  %1060 = fadd fast float %1059, %975
  %1061 = fmul fast float %1060, %702
  br label %1062

; <label>:1062                                    ; preds = %946, %583
  %1063 = phi float [ %1061, %946 ], [ 0.000000e+00, %583 ]
  %1064 = fcmp fast ogt float %703, 0.000000e+00
  br i1 %1064, label %1065, label %1182, !dx.controlflow.hints !27

; <label>:1065                                    ; preds = %1062
  %1066 = fsub fast float %763, %745
  %1067 = fmul fast float %1066, %598
  %1068 = fadd fast float %1067, %745
  %1069 = fsub fast float %766, %748
  %1070 = fmul fast float %1069, %598
  %1071 = fadd fast float %1070, %748
  %1072 = fsub fast float %769, %751
  %1073 = fmul fast float %1072, %598
  %1074 = fadd fast float %1073, %751
  %1075 = fsub fast float %772, %754
  %1076 = fmul fast float %1075, %598
  %1077 = fadd fast float %1076, %754
  %1078 = fsub fast float %775, %757
  %1079 = fmul fast float %1078, %598
  %1080 = fadd fast float %1079, %757
  %1081 = fsub fast float %778, %760
  %1082 = fmul fast float %1081, %598
  %1083 = fadd fast float %1082, %760
  %1084 = fmul fast float %857, %1068
  %1085 = fmul fast float %873, %1071
  %1086 = fadd fast float %1085, %1084
  %1087 = fmul fast float %890, %1074
  %1088 = fadd fast float %1086, %1087
  %1089 = fmul fast float %907, %1077
  %1090 = fadd fast float %1088, %1089
  %1091 = fmul fast float %924, %1080
  %1092 = fadd fast float %1090, %1091
  %1093 = fmul fast float %941, %1083
  %1094 = fadd fast float %1092, %1093
  %1095 = mul i32 %582, 6
  %1096 = add i32 0, %1095
  %1097 = getelementptr [384 x float], [384 x float] addrspace(3)* @"\01?shCoefUSM@@3PAY05$$CAMA.1dim", i32 0, i32 %1096
  %1098 = load float, float addrspace(3)* %1097, align 4, !tbaa !19
  %1099 = fmul fast float %1098, %1068
  %1100 = mul i32 %582, 6
  %1101 = add i32 1, %1100
  %1102 = getelementptr [384 x float], [384 x float] addrspace(3)* @"\01?shCoefUSM@@3PAY05$$CAMA.1dim", i32 0, i32 %1101
  %1103 = load float, float addrspace(3)* %1102, align 4, !tbaa !19
  %1104 = fmul fast float %1103, %1071
  %1105 = fadd fast float %1104, %1099
  %1106 = mul i32 %582, 6
  %1107 = add i32 2, %1106
  %1108 = getelementptr [384 x float], [384 x float] addrspace(3)* @"\01?shCoefUSM@@3PAY05$$CAMA.1dim", i32 0, i32 %1107
  %1109 = load float, float addrspace(3)* %1108, align 4, !tbaa !19
  %1110 = fmul fast float %1109, %1074
  %1111 = fadd fast float %1105, %1110
  %1112 = mul i32 %582, 6
  %1113 = add i32 3, %1112
  %1114 = getelementptr [384 x float], [384 x float] addrspace(3)* @"\01?shCoefUSM@@3PAY05$$CAMA.1dim", i32 0, i32 %1113
  %1115 = load float, float addrspace(3)* %1114, align 4, !tbaa !19
  %1116 = fmul fast float %1115, %1077
  %1117 = fadd fast float %1111, %1116
  %1118 = mul i32 %582, 6
  %1119 = add i32 4, %1118
  %1120 = getelementptr [384 x float], [384 x float] addrspace(3)* @"\01?shCoefUSM@@3PAY05$$CAMA.1dim", i32 0, i32 %1119
  %1121 = load float, float addrspace(3)* %1120, align 4, !tbaa !19
  %1122 = fmul fast float %1121, %1080
  %1123 = fadd fast float %1117, %1122
  %1124 = mul i32 %582, 6
  %1125 = add i32 5, %1124
  %1126 = getelementptr [384 x float], [384 x float] addrspace(3)* @"\01?shCoefUSM@@3PAY05$$CAMA.1dim", i32 0, i32 %1125
  %1127 = load float, float addrspace(3)* %1126, align 4, !tbaa !19
  %1128 = fmul fast float %1127, %1083
  %1129 = fadd fast float %1123, %1128
  %1130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1131 = extractvalue %dx.types.CBufRet.f32 %1130, 2
  %1132 = fsub fast float %1094, %1131
  %1133 = extractvalue %dx.types.CBufRet.f32 %1130, 3
  %1134 = fmul fast float %1132, %1133
  %1135 = call float @dx.op.unary.f32(i32 7, float %1134)  ; Saturate(value)
  %1136 = fsub fast float 1.000000e+00, %1135
  %1137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1138 = extractvalue %dx.types.CBufRet.f32 %1137, 1
  %1139 = fmul fast float %1138, %1136
  %1140 = extractvalue %dx.types.CBufRet.f32 %1137, 0
  %1141 = fadd fast float %1139, %1140
  %1142 = fmul fast float %1141, %1129
  %1143 = extractvalue %dx.types.CBufRet.f32 %1137, 3
  %1144 = fmul fast float %1143, %1136
  %1145 = extractvalue %dx.types.CBufRet.f32 %1137, 2
  %1146 = fadd fast float %1144, %1145
  %1147 = fmul fast float %1146, %1094
  %1148 = fsub fast float -0.000000e+00, %1147
  %1149 = call float @dx.op.binary.f32(i32 35, float %1148, float %1142)  ; FMax(a,b)
  %1150 = call float @dx.op.binary.f32(i32 36, float %1147, float %1149)  ; FMin(a,b)
  %1151 = icmp slt i32 %582, 33
  %1152 = select i1 %1151, float %1068, float %1077
  %1153 = call float @dx.op.binary.f32(i32 36, float %1071, float %1074)  ; FMin(a,b)
  %1154 = call float @dx.op.binary.f32(i32 36, float %1153, float %1152)  ; FMin(a,b)
  %1155 = call float @dx.op.binary.f32(i32 35, float %1071, float %1074)  ; FMax(a,b)
  %1156 = call float @dx.op.binary.f32(i32 35, float %1155, float %1152)  ; FMax(a,b)
  %1157 = select i1 %1151, float %1074, float %1083
  %1158 = call float @dx.op.binary.f32(i32 36, float %1077, float %1080)  ; FMin(a,b)
  %1159 = call float @dx.op.binary.f32(i32 36, float %1158, float %1157)  ; FMin(a,b)
  %1160 = call float @dx.op.binary.f32(i32 35, float %1077, float %1080)  ; FMax(a,b)
  %1161 = call float @dx.op.binary.f32(i32 35, float %1160, float %1157)  ; FMax(a,b)
  %1162 = fsub fast float %1156, %1154
  %1163 = fsub fast float %1161, %1159
  %1164 = call float @dx.op.binary.f32(i32 35, float %1162, float %1163)  ; FMax(a,b)
  %1165 = call float @dx.op.binary.f32(i32 36, float %1162, float %1163)  ; FMin(a,b)
  %1166 = extractvalue %dx.types.CBufRet.f32 %1130, 1
  %1167 = fadd fast float %1166, %1165
  %1168 = fdiv fast float %1164, %1167
  %1169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1170 = extractvalue %dx.types.CBufRet.f32 %1169, 2
  %1171 = fsub fast float %1168, %1170
  %1172 = extractvalue %dx.types.CBufRet.f32 %1169, 3
  %1173 = fmul fast float %1171, %1172
  %1174 = call float @dx.op.unary.f32(i32 7, float %1173)  ; Saturate(value)
  %1175 = fsub fast float 1.000000e+00, %1174
  %1176 = extractvalue %dx.types.CBufRet.f32 %1130, 0
  %1177 = fmul fast float %1175, %1150
  %1178 = fmul fast float %1177, %1176
  %1179 = fadd fast float %1178, %1094
  %1180 = fmul fast float %1179, %703
  %1181 = fadd fast float %1180, %1063
  br label %1182

; <label>:1182                                    ; preds = %1065, %1062
  %1183 = phi float [ %1181, %1065 ], [ %1063, %1062 ]
  %1184 = fcmp fast ogt float %704, 0.000000e+00
  br i1 %1184, label %1185, label %1352, !dx.controlflow.hints !28

; <label>:1185                                    ; preds = %1182
  %1186 = fsub fast float %580, %598
  %1187 = fmul fast float %1186, 5.000000e-01
  %1188 = fadd fast float %1187, 5.000000e-01
  %1189 = fsub fast float %733, %748
  %1190 = fmul fast float %1189, %1188
  %1191 = fadd fast float %1190, %748
  %1192 = fsub fast float %754, %769
  %1193 = fmul fast float %1192, %1188
  %1194 = fadd fast float %1193, %769
  %1195 = fsub fast float %775, %790
  %1196 = fmul fast float %1195, %1188
  %1197 = fadd fast float %1196, %790
  %1198 = fcmp fast oge float %1187, 0.000000e+00
  %1199 = select i1 %1198, float %715, float %745
  %1200 = select i1 %1198, float %736, float %766
  %1201 = select i1 %1198, float %757, float %787
  %1202 = call float @dx.op.unary.f32(i32 6, float %1187)  ; FAbs(value)
  %1203 = fsub fast float %1199, %730
  %1204 = fmul fast float %1202, %1203
  %1205 = fadd fast float %1204, %730
  %1206 = fsub fast float %1200, %751
  %1207 = fmul fast float %1202, %1206
  %1208 = fadd fast float %1207, %751
  %1209 = fsub fast float %1201, %772
  %1210 = fmul fast float %1202, %1209
  %1211 = fadd fast float %1210, %772
  %1212 = fadd fast float %598, %580
  %1213 = fcmp fast ult float %1212, 1.000000e+00
  br i1 %1213, label %1220, label %1214, !dx.controlflow.hints !29

; <label>:1214                                    ; preds = %1185
  %1215 = select i1 %1198, float %778, float %808
  %1216 = fsub fast float %1215, %793
  %1217 = fmul fast float %1202, %1216
  %1218 = fadd fast float %1217, %793
  %1219 = fadd fast float %1212, -1.000000e+00
  br label %1220

; <label>:1220                                    ; preds = %1214, %1185
  %1221 = phi float [ %1218, %1214 ], [ %1197, %1185 ]
  %1222 = phi float [ %1197, %1214 ], [ %1211, %1185 ]
  %1223 = phi float [ %1211, %1214 ], [ %1194, %1185 ]
  %1224 = phi float [ %1194, %1214 ], [ %1208, %1185 ]
  %1225 = phi float [ %1208, %1214 ], [ %1191, %1185 ]
  %1226 = phi float [ %1191, %1214 ], [ %1205, %1185 ]
  %1227 = phi float [ %1219, %1214 ], [ %1212, %1185 ]
  %1228 = fmul fast float %1227, 6.400000e+01
  %1229 = fptosi float %1228 to i32
  %1230 = mul i32 %1229, 6
  %1231 = add i32 0, %1230
  %1232 = getelementptr [384 x float], [384 x float] addrspace(3)* @"\01?shCoefScaler@@3PAY05$$CAMA.1dim", i32 0, i32 %1231
  %1233 = load float, float addrspace(3)* %1232, align 4, !tbaa !19
  %1234 = fmul fast float %1233, %1226
  %1235 = mul i32 %1229, 6
  %1236 = add i32 1, %1235
  %1237 = getelementptr [384 x float], [384 x float] addrspace(3)* @"\01?shCoefScaler@@3PAY05$$CAMA.1dim", i32 0, i32 %1236
  %1238 = load float, float addrspace(3)* %1237, align 4, !tbaa !19
  %1239 = fmul fast float %1238, %1225
  %1240 = fadd fast float %1239, %1234
  %1241 = mul i32 %1229, 6
  %1242 = add i32 2, %1241
  %1243 = getelementptr [384 x float], [384 x float] addrspace(3)* @"\01?shCoefScaler@@3PAY05$$CAMA.1dim", i32 0, i32 %1242
  %1244 = load float, float addrspace(3)* %1243, align 4, !tbaa !19
  %1245 = fmul fast float %1244, %1224
  %1246 = fadd fast float %1240, %1245
  %1247 = mul i32 %1229, 6
  %1248 = add i32 3, %1247
  %1249 = getelementptr [384 x float], [384 x float] addrspace(3)* @"\01?shCoefScaler@@3PAY05$$CAMA.1dim", i32 0, i32 %1248
  %1250 = load float, float addrspace(3)* %1249, align 4, !tbaa !19
  %1251 = fmul fast float %1250, %1223
  %1252 = fadd fast float %1246, %1251
  %1253 = mul i32 %1229, 6
  %1254 = add i32 4, %1253
  %1255 = getelementptr [384 x float], [384 x float] addrspace(3)* @"\01?shCoefScaler@@3PAY05$$CAMA.1dim", i32 0, i32 %1254
  %1256 = load float, float addrspace(3)* %1255, align 4, !tbaa !19
  %1257 = fmul fast float %1256, %1222
  %1258 = fadd fast float %1252, %1257
  %1259 = mul i32 %1229, 6
  %1260 = add i32 5, %1259
  %1261 = getelementptr [384 x float], [384 x float] addrspace(3)* @"\01?shCoefScaler@@3PAY05$$CAMA.1dim", i32 0, i32 %1260
  %1262 = load float, float addrspace(3)* %1261, align 4, !tbaa !19
  %1263 = fmul fast float %1262, %1221
  %1264 = fadd fast float %1258, %1263
  %1265 = mul i32 %1229, 6
  %1266 = add i32 0, %1265
  %1267 = getelementptr [384 x float], [384 x float] addrspace(3)* @"\01?shCoefUSM@@3PAY05$$CAMA.1dim", i32 0, i32 %1266
  %1268 = load float, float addrspace(3)* %1267, align 4, !tbaa !19
  %1269 = fmul fast float %1268, %1226
  %1270 = mul i32 %1229, 6
  %1271 = add i32 1, %1270
  %1272 = getelementptr [384 x float], [384 x float] addrspace(3)* @"\01?shCoefUSM@@3PAY05$$CAMA.1dim", i32 0, i32 %1271
  %1273 = load float, float addrspace(3)* %1272, align 4, !tbaa !19
  %1274 = fmul fast float %1273, %1225
  %1275 = fadd fast float %1274, %1269
  %1276 = mul i32 %1229, 6
  %1277 = add i32 2, %1276
  %1278 = getelementptr [384 x float], [384 x float] addrspace(3)* @"\01?shCoefUSM@@3PAY05$$CAMA.1dim", i32 0, i32 %1277
  %1279 = load float, float addrspace(3)* %1278, align 4, !tbaa !19
  %1280 = fmul fast float %1279, %1224
  %1281 = fadd fast float %1275, %1280
  %1282 = mul i32 %1229, 6
  %1283 = add i32 3, %1282
  %1284 = getelementptr [384 x float], [384 x float] addrspace(3)* @"\01?shCoefUSM@@3PAY05$$CAMA.1dim", i32 0, i32 %1283
  %1285 = load float, float addrspace(3)* %1284, align 4, !tbaa !19
  %1286 = fmul fast float %1285, %1223
  %1287 = fadd fast float %1281, %1286
  %1288 = mul i32 %1229, 6
  %1289 = add i32 4, %1288
  %1290 = getelementptr [384 x float], [384 x float] addrspace(3)* @"\01?shCoefUSM@@3PAY05$$CAMA.1dim", i32 0, i32 %1289
  %1291 = load float, float addrspace(3)* %1290, align 4, !tbaa !19
  %1292 = fmul fast float %1291, %1222
  %1293 = fadd fast float %1287, %1292
  %1294 = mul i32 %1229, 6
  %1295 = add i32 5, %1294
  %1296 = getelementptr [384 x float], [384 x float] addrspace(3)* @"\01?shCoefUSM@@3PAY05$$CAMA.1dim", i32 0, i32 %1295
  %1297 = load float, float addrspace(3)* %1296, align 4, !tbaa !19
  %1298 = fmul fast float %1297, %1221
  %1299 = fadd fast float %1293, %1298
  %1300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1301 = extractvalue %dx.types.CBufRet.f32 %1300, 2
  %1302 = fsub fast float %1264, %1301
  %1303 = extractvalue %dx.types.CBufRet.f32 %1300, 3
  %1304 = fmul fast float %1302, %1303
  %1305 = call float @dx.op.unary.f32(i32 7, float %1304)  ; Saturate(value)
  %1306 = fsub fast float 1.000000e+00, %1305
  %1307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1308 = extractvalue %dx.types.CBufRet.f32 %1307, 1
  %1309 = fmul fast float %1308, %1306
  %1310 = extractvalue %dx.types.CBufRet.f32 %1307, 0
  %1311 = fadd fast float %1309, %1310
  %1312 = fmul fast float %1311, %1299
  %1313 = extractvalue %dx.types.CBufRet.f32 %1307, 3
  %1314 = fmul fast float %1313, %1306
  %1315 = extractvalue %dx.types.CBufRet.f32 %1307, 2
  %1316 = fadd fast float %1314, %1315
  %1317 = fmul fast float %1316, %1264
  %1318 = fsub fast float -0.000000e+00, %1317
  %1319 = call float @dx.op.binary.f32(i32 35, float %1318, float %1312)  ; FMax(a,b)
  %1320 = call float @dx.op.binary.f32(i32 36, float %1317, float %1319)  ; FMin(a,b)
  %1321 = icmp slt i32 %1229, 33
  %1322 = select i1 %1321, float %1226, float %1223
  %1323 = call float @dx.op.binary.f32(i32 36, float %1225, float %1224)  ; FMin(a,b)
  %1324 = call float @dx.op.binary.f32(i32 36, float %1323, float %1322)  ; FMin(a,b)
  %1325 = call float @dx.op.binary.f32(i32 35, float %1225, float %1224)  ; FMax(a,b)
  %1326 = call float @dx.op.binary.f32(i32 35, float %1325, float %1322)  ; FMax(a,b)
  %1327 = select i1 %1321, float %1224, float %1221
  %1328 = call float @dx.op.binary.f32(i32 36, float %1223, float %1222)  ; FMin(a,b)
  %1329 = call float @dx.op.binary.f32(i32 36, float %1328, float %1327)  ; FMin(a,b)
  %1330 = call float @dx.op.binary.f32(i32 35, float %1223, float %1222)  ; FMax(a,b)
  %1331 = call float @dx.op.binary.f32(i32 35, float %1330, float %1327)  ; FMax(a,b)
  %1332 = fsub fast float %1326, %1324
  %1333 = fsub fast float %1331, %1329
  %1334 = call float @dx.op.binary.f32(i32 35, float %1332, float %1333)  ; FMax(a,b)
  %1335 = call float @dx.op.binary.f32(i32 36, float %1332, float %1333)  ; FMin(a,b)
  %1336 = extractvalue %dx.types.CBufRet.f32 %1300, 1
  %1337 = fadd fast float %1336, %1335
  %1338 = fdiv fast float %1334, %1337
  %1339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1340 = extractvalue %dx.types.CBufRet.f32 %1339, 2
  %1341 = fsub fast float %1338, %1340
  %1342 = extractvalue %dx.types.CBufRet.f32 %1339, 3
  %1343 = fmul fast float %1341, %1342
  %1344 = call float @dx.op.unary.f32(i32 7, float %1343)  ; Saturate(value)
  %1345 = fsub fast float 1.000000e+00, %1344
  %1346 = extractvalue %dx.types.CBufRet.f32 %1300, 0
  %1347 = fmul fast float %1345, %1320
  %1348 = fmul fast float %1347, %1346
  %1349 = fadd fast float %1348, %1264
  %1350 = fmul fast float %1349, %704
  %1351 = fadd fast float %1350, %1183
  br label %1352

; <label>:1352                                    ; preds = %1220, %1182
  %1353 = phi float [ %1351, %1220 ], [ %1183, %1182 ]
  %1354 = fcmp fast ogt float %705, 0.000000e+00
  br i1 %1354, label %1355, label %1522, !dx.controlflow.hints !30

; <label>:1355                                    ; preds = %1352
  %1356 = fadd fast float %598, %580
  %1357 = fmul fast float %1356, 5.000000e-01
  %1358 = fsub fast float %787, %766
  %1359 = fmul fast float %1358, %1357
  %1360 = fadd fast float %1359, %766
  %1361 = fsub fast float %772, %751
  %1362 = fmul fast float %1361, %1357
  %1363 = fadd fast float %1362, %751
  %1364 = fsub fast float %757, %736
  %1365 = fmul fast float %1364, %1357
  %1366 = fadd fast float %1365, %736
  %1367 = fadd fast float %1357, -5.000000e-01
  %1368 = fcmp fast oge float %1367, 0.000000e+00
  %1369 = select i1 %1368, float %790, float %748
  %1370 = select i1 %1368, float %775, float %733
  %1371 = select i1 %1368, float %760, float %718
  %1372 = call float @dx.op.unary.f32(i32 6, float %1367)  ; FAbs(value)
  %1373 = fsub fast float %1369, %769
  %1374 = fmul fast float %1372, %1373
  %1375 = fadd fast float %1374, %769
  %1376 = fsub fast float %1370, %754
  %1377 = fmul fast float %1372, %1376
  %1378 = fadd fast float %1377, %754
  %1379 = fsub fast float %1371, %739
  %1380 = fmul fast float %1372, %1379
  %1381 = fadd fast float %1380, %739
  %1382 = fsub fast float %580, %598
  %1383 = fadd fast float %1382, 1.000000e+00
  %1384 = fcmp fast ult float %1383, 1.000000e+00
  br i1 %1384, label %1385, label %1390, !dx.controlflow.hints !31

; <label>:1385                                    ; preds = %1355
  %1386 = select i1 %1368, float %805, float %763
  %1387 = fsub fast float %1386, %784
  %1388 = fmul fast float %1372, %1387
  %1389 = fadd fast float %1388, %784
  br label %1390

; <label>:1390                                    ; preds = %1385, %1355
  %1391 = phi float [ %1366, %1385 ], [ %1381, %1355 ]
  %1392 = phi float [ %1378, %1385 ], [ %1366, %1355 ]
  %1393 = phi float [ %1363, %1385 ], [ %1378, %1355 ]
  %1394 = phi float [ %1375, %1385 ], [ %1363, %1355 ]
  %1395 = phi float [ %1360, %1385 ], [ %1375, %1355 ]
  %1396 = phi float [ %1389, %1385 ], [ %1360, %1355 ]
  %1397 = phi float [ %1383, %1385 ], [ %1382, %1355 ]
  %1398 = fmul fast float %1397, 6.400000e+01
  %1399 = fptosi float %1398 to i32
  %1400 = mul i32 %1399, 6
  %1401 = add i32 0, %1400
  %1402 = getelementptr [384 x float], [384 x float] addrspace(3)* @"\01?shCoefScaler@@3PAY05$$CAMA.1dim", i32 0, i32 %1401
  %1403 = load float, float addrspace(3)* %1402, align 4, !tbaa !19
  %1404 = fmul fast float %1403, %1396
  %1405 = mul i32 %1399, 6
  %1406 = add i32 1, %1405
  %1407 = getelementptr [384 x float], [384 x float] addrspace(3)* @"\01?shCoefScaler@@3PAY05$$CAMA.1dim", i32 0, i32 %1406
  %1408 = load float, float addrspace(3)* %1407, align 4, !tbaa !19
  %1409 = fmul fast float %1408, %1395
  %1410 = fadd fast float %1409, %1404
  %1411 = mul i32 %1399, 6
  %1412 = add i32 2, %1411
  %1413 = getelementptr [384 x float], [384 x float] addrspace(3)* @"\01?shCoefScaler@@3PAY05$$CAMA.1dim", i32 0, i32 %1412
  %1414 = load float, float addrspace(3)* %1413, align 4, !tbaa !19
  %1415 = fmul fast float %1414, %1394
  %1416 = fadd fast float %1410, %1415
  %1417 = mul i32 %1399, 6
  %1418 = add i32 3, %1417
  %1419 = getelementptr [384 x float], [384 x float] addrspace(3)* @"\01?shCoefScaler@@3PAY05$$CAMA.1dim", i32 0, i32 %1418
  %1420 = load float, float addrspace(3)* %1419, align 4, !tbaa !19
  %1421 = fmul fast float %1420, %1393
  %1422 = fadd fast float %1416, %1421
  %1423 = mul i32 %1399, 6
  %1424 = add i32 4, %1423
  %1425 = getelementptr [384 x float], [384 x float] addrspace(3)* @"\01?shCoefScaler@@3PAY05$$CAMA.1dim", i32 0, i32 %1424
  %1426 = load float, float addrspace(3)* %1425, align 4, !tbaa !19
  %1427 = fmul fast float %1426, %1392
  %1428 = fadd fast float %1422, %1427
  %1429 = mul i32 %1399, 6
  %1430 = add i32 5, %1429
  %1431 = getelementptr [384 x float], [384 x float] addrspace(3)* @"\01?shCoefScaler@@3PAY05$$CAMA.1dim", i32 0, i32 %1430
  %1432 = load float, float addrspace(3)* %1431, align 4, !tbaa !19
  %1433 = fmul fast float %1432, %1391
  %1434 = fadd fast float %1428, %1433
  %1435 = mul i32 %1399, 6
  %1436 = add i32 0, %1435
  %1437 = getelementptr [384 x float], [384 x float] addrspace(3)* @"\01?shCoefUSM@@3PAY05$$CAMA.1dim", i32 0, i32 %1436
  %1438 = load float, float addrspace(3)* %1437, align 4, !tbaa !19
  %1439 = fmul fast float %1438, %1396
  %1440 = mul i32 %1399, 6
  %1441 = add i32 1, %1440
  %1442 = getelementptr [384 x float], [384 x float] addrspace(3)* @"\01?shCoefUSM@@3PAY05$$CAMA.1dim", i32 0, i32 %1441
  %1443 = load float, float addrspace(3)* %1442, align 4, !tbaa !19
  %1444 = fmul fast float %1443, %1395
  %1445 = fadd fast float %1444, %1439
  %1446 = mul i32 %1399, 6
  %1447 = add i32 2, %1446
  %1448 = getelementptr [384 x float], [384 x float] addrspace(3)* @"\01?shCoefUSM@@3PAY05$$CAMA.1dim", i32 0, i32 %1447
  %1449 = load float, float addrspace(3)* %1448, align 4, !tbaa !19
  %1450 = fmul fast float %1449, %1394
  %1451 = fadd fast float %1445, %1450
  %1452 = mul i32 %1399, 6
  %1453 = add i32 3, %1452
  %1454 = getelementptr [384 x float], [384 x float] addrspace(3)* @"\01?shCoefUSM@@3PAY05$$CAMA.1dim", i32 0, i32 %1453
  %1455 = load float, float addrspace(3)* %1454, align 4, !tbaa !19
  %1456 = fmul fast float %1455, %1393
  %1457 = fadd fast float %1451, %1456
  %1458 = mul i32 %1399, 6
  %1459 = add i32 4, %1458
  %1460 = getelementptr [384 x float], [384 x float] addrspace(3)* @"\01?shCoefUSM@@3PAY05$$CAMA.1dim", i32 0, i32 %1459
  %1461 = load float, float addrspace(3)* %1460, align 4, !tbaa !19
  %1462 = fmul fast float %1461, %1392
  %1463 = fadd fast float %1457, %1462
  %1464 = mul i32 %1399, 6
  %1465 = add i32 5, %1464
  %1466 = getelementptr [384 x float], [384 x float] addrspace(3)* @"\01?shCoefUSM@@3PAY05$$CAMA.1dim", i32 0, i32 %1465
  %1467 = load float, float addrspace(3)* %1466, align 4, !tbaa !19
  %1468 = fmul fast float %1467, %1391
  %1469 = fadd fast float %1463, %1468
  %1470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1471 = extractvalue %dx.types.CBufRet.f32 %1470, 2
  %1472 = fsub fast float %1434, %1471
  %1473 = extractvalue %dx.types.CBufRet.f32 %1470, 3
  %1474 = fmul fast float %1472, %1473
  %1475 = call float @dx.op.unary.f32(i32 7, float %1474)  ; Saturate(value)
  %1476 = fsub fast float 1.000000e+00, %1475
  %1477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1478 = extractvalue %dx.types.CBufRet.f32 %1477, 1
  %1479 = fmul fast float %1478, %1476
  %1480 = extractvalue %dx.types.CBufRet.f32 %1477, 0
  %1481 = fadd fast float %1479, %1480
  %1482 = fmul fast float %1481, %1469
  %1483 = extractvalue %dx.types.CBufRet.f32 %1477, 3
  %1484 = fmul fast float %1483, %1476
  %1485 = extractvalue %dx.types.CBufRet.f32 %1477, 2
  %1486 = fadd fast float %1484, %1485
  %1487 = fmul fast float %1486, %1434
  %1488 = fsub fast float -0.000000e+00, %1487
  %1489 = call float @dx.op.binary.f32(i32 35, float %1488, float %1482)  ; FMax(a,b)
  %1490 = call float @dx.op.binary.f32(i32 36, float %1487, float %1489)  ; FMin(a,b)
  %1491 = icmp slt i32 %1399, 33
  %1492 = select i1 %1491, float %1396, float %1393
  %1493 = call float @dx.op.binary.f32(i32 36, float %1395, float %1394)  ; FMin(a,b)
  %1494 = call float @dx.op.binary.f32(i32 36, float %1493, float %1492)  ; FMin(a,b)
  %1495 = call float @dx.op.binary.f32(i32 35, float %1395, float %1394)  ; FMax(a,b)
  %1496 = call float @dx.op.binary.f32(i32 35, float %1495, float %1492)  ; FMax(a,b)
  %1497 = select i1 %1491, float %1394, float %1391
  %1498 = call float @dx.op.binary.f32(i32 36, float %1393, float %1392)  ; FMin(a,b)
  %1499 = call float @dx.op.binary.f32(i32 36, float %1498, float %1497)  ; FMin(a,b)
  %1500 = call float @dx.op.binary.f32(i32 35, float %1393, float %1392)  ; FMax(a,b)
  %1501 = call float @dx.op.binary.f32(i32 35, float %1500, float %1497)  ; FMax(a,b)
  %1502 = fsub fast float %1496, %1494
  %1503 = fsub fast float %1501, %1499
  %1504 = call float @dx.op.binary.f32(i32 35, float %1502, float %1503)  ; FMax(a,b)
  %1505 = call float @dx.op.binary.f32(i32 36, float %1502, float %1503)  ; FMin(a,b)
  %1506 = extractvalue %dx.types.CBufRet.f32 %1470, 1
  %1507 = fadd fast float %1506, %1505
  %1508 = fdiv fast float %1504, %1507
  %1509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1510 = extractvalue %dx.types.CBufRet.f32 %1509, 2
  %1511 = fsub fast float %1508, %1510
  %1512 = extractvalue %dx.types.CBufRet.f32 %1509, 3
  %1513 = fmul fast float %1511, %1512
  %1514 = call float @dx.op.unary.f32(i32 7, float %1513)  ; Saturate(value)
  %1515 = fsub fast float 1.000000e+00, %1514
  %1516 = extractvalue %dx.types.CBufRet.f32 %1470, 0
  %1517 = fmul fast float %1515, %1490
  %1518 = fmul fast float %1517, %1516
  %1519 = fadd fast float %1518, %1434
  %1520 = fmul fast float %1519, %705
  %1521 = fadd fast float %1520, %1353
  br label %1522

; <label>:1522                                    ; preds = %1390, %1352
  %1523 = phi float [ %1521, %1390 ], [ %1353, %1352 ]
  %1524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1525 = extractvalue %dx.types.CBufRet.f32 %1524, 0
  %1526 = fmul fast float %1525, %574
  %1527 = extractvalue %dx.types.CBufRet.f32 %1524, 1
  %1528 = fmul fast float %1527, %592
  %1529 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %5, float %1526, float %1528, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1530 = extractvalue %dx.types.ResRet.f32 %1529, 0
  %1531 = extractvalue %dx.types.ResRet.f32 %1529, 1
  %1532 = extractvalue %dx.types.ResRet.f32 %1529, 2
  %1533 = extractvalue %dx.types.ResRet.f32 %1529, 3
  %1534 = fmul fast float %1530, 0x3FD0C49BA0000000
  %1535 = fmul fast float %1531, 0x3FE5B22D00000000
  %1536 = fmul fast float %1532, 0x3FAE5C91E0000000
  %1537 = fadd fast float %1523, %944
  %1538 = fsub fast float %1537, %1535
  %1539 = fsub fast float %1538, %1534
  %1540 = fsub fast float %1539, %1536
  %1541 = fadd fast float %1540, %1530
  %1542 = fadd fast float %1540, %1531
  %1543 = fadd fast float %1540, %1532
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %569, i32 %587, i32 undef, float %1541, float %1542, float %1543, float %1533, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1544 = add nuw nsw i32 %584, 1
  %1545 = icmp eq i32 %1544, 8
  br i1 %1545, label %1546, label %583

; <label>:1546                                    ; preds = %1522
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #3

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { noduplicate nounwind }
attributes #3 = { nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!16}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !10, !12, !14}
!5 = !{!6, !8, !9}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!10 = !{!11}
!11 = !{i32 0, %"class.RWTexture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!12 = !{!13}
!13 = !{i32 0, %cb* undef, !"", i32 0, i32 0, i32 1, i32 112, null}
!14 = !{!15}
!15 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!16 = !{void ()* @cs_nis, !"cs_nis", null, !4, !17}
!17 = !{i32 0, i64 256, i32 4, !18}
!18 = !{i32 128, i32 1, i32 1}
!19 = !{!20, !20, i64 0}
!20 = !{!"float", !21, i64 0}
!21 = !{!"omnipotent char", !22, i64 0}
!22 = !{!"Simple C/C++ TBAA"}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}

