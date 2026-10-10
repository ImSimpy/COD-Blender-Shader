;
; Note: shader requires additional functionality:
;       Minimum-precision data types
;
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
; shader hash: b39139a3745c2deee8b1884e1a2b0ff0
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
@"\01?shCoefScaler@@3PAY05$$CA$min16f@A.1dim" = addrspace(3) global [384 x half] undef, align 4
@"\01?shCoefUSM@@3PAY05$$CA$min16f@A.1dim" = addrspace(3) global [384 x half] undef, align 4
@"\01?shEdgeMap@@3PAV?$vector@$min16f@$03@@A.v.1dim" = addrspace(3) global [4624 x half] undef, align 4

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
  br i1 %55, label %56, label %131

; <label>:56                                      ; preds = %0
  br label %57

; <label>:57                                      ; preds = %57, %56
  %58 = phi i32 [ %128, %57 ], [ %53, %56 ]
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
  %77 = fmul fast float %74, 0x3FCB367A00000000
  %78 = fmul fast float %75, 0x3FE6E2EB20000000
  %79 = fadd fast float %77, %78
  %80 = fmul fast float %76, 0x3FB27BB300000000
  %81 = fadd fast float %79, %80
  %82 = fadd fast float %66, %67
  %83 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %5, float %82, float %72, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %84 = extractvalue %dx.types.ResRet.f32 %83, 0
  %85 = extractvalue %dx.types.ResRet.f32 %83, 1
  %86 = extractvalue %dx.types.ResRet.f32 %83, 2
  %87 = fmul fast float %84, 0x3FCB367A00000000
  %88 = fmul fast float %85, 0x3FE6E2EB20000000
  %89 = fadd fast float %87, %88
  %90 = fmul fast float %86, 0x3FB27BB300000000
  %91 = fadd fast float %89, %90
  %92 = fadd fast float %71, %72
  %93 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %5, float %67, float %92, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %94 = extractvalue %dx.types.ResRet.f32 %93, 0
  %95 = extractvalue %dx.types.ResRet.f32 %93, 1
  %96 = extractvalue %dx.types.ResRet.f32 %93, 2
  %97 = fmul fast float %94, 0x3FCB367A00000000
  %98 = fmul fast float %95, 0x3FE6E2EB20000000
  %99 = fadd fast float %97, %98
  %100 = fmul fast float %96, 0x3FB27BB300000000
  %101 = fadd fast float %99, %100
  %102 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %5, float %82, float %92, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %103 = extractvalue %dx.types.ResRet.f32 %102, 0
  %104 = extractvalue %dx.types.ResRet.f32 %102, 1
  %105 = extractvalue %dx.types.ResRet.f32 %102, 2
  %106 = fmul fast float %103, 0x3FCB367A00000000
  %107 = fmul fast float %104, 0x3FE6E2EB20000000
  %108 = fadd fast float %106, %107
  %109 = fmul fast float %105, 0x3FB27BB300000000
  %110 = fadd fast float %108, %109
  %111 = mul i32 %59, 76
  %112 = add i32 %111, %61
  %113 = fptrunc float %81 to half
  %114 = fpext half %113 to float
  %115 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %112
  store float %114, float addrspace(3)* %115, align 4, !tbaa !19
  %116 = fptrunc float %91 to half
  %117 = fpext half %116 to float
  %118 = add i32 %112, 1
  %119 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %118
  store float %117, float addrspace(3)* %119, align 4, !tbaa !19
  %120 = fptrunc float %101 to half
  %121 = fpext half %120 to float
  %122 = add i32 %112, 38
  %123 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %122
  store float %121, float addrspace(3)* %123, align 4, !tbaa !19
  %124 = fptrunc float %110 to half
  %125 = fpext half %124 to float
  %126 = add i32 %112, 39
  %127 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %126
  store float %125, float addrspace(3)* %127, align 4, !tbaa !19
  %128 = add nuw i32 %58, 256
  %129 = icmp ult i32 %128, %54
  br i1 %129, label %57, label %130

; <label>:130                                     ; preds = %57
  br label %131

; <label>:131                                     ; preds = %130, %0
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %132 = lshr i32 %52, 1
  %133 = icmp ult i32 %53, %132
  br i1 %133, label %134, label %539

; <label>:134                                     ; preds = %131
  br label %135

; <label>:135                                     ; preds = %514, %134
  %136 = phi i32 [ %536, %514 ], [ %53, %134 ]
  %137 = udiv i32 %136, %50
  %138 = shl i32 %137, 1
  %139 = urem i32 %136, %50
  %140 = mul i32 %137, 68
  %141 = add i32 %140, %139
  %142 = or i32 %138, 1
  %143 = mul i32 %142, 38
  %144 = add i32 %143, %139
  %145 = add i32 %144, 1
  %146 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %145
  %147 = load float, float addrspace(3)* %146, align 4, !tbaa !19
  %148 = add i32 %144, 2
  %149 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %148
  %150 = load float, float addrspace(3)* %149, align 4, !tbaa !19
  %151 = add i32 %144, 3
  %152 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %151
  %153 = load float, float addrspace(3)* %152, align 4, !tbaa !19
  %154 = fsub fast float -0.000000e+00, %153
  %155 = add i32 %144, 4
  %156 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %155
  %157 = load float, float addrspace(3)* %156, align 4, !tbaa !19
  %158 = add i32 %144, 39
  %159 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %158
  %160 = load float, float addrspace(3)* %159, align 4, !tbaa !19
  %161 = add i32 %144, 40
  %162 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %161
  %163 = load float, float addrspace(3)* %162, align 4, !tbaa !19
  %164 = add i32 %144, 41
  %165 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %164
  %166 = load float, float addrspace(3)* %165, align 4, !tbaa !19
  %167 = fsub fast float -0.000000e+00, %166
  %168 = add i32 %144, 42
  %169 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %168
  %170 = load float, float addrspace(3)* %169, align 4, !tbaa !19
  %171 = add i32 %144, 77
  %172 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %171
  %173 = load float, float addrspace(3)* %172, align 4, !tbaa !19
  %174 = add i32 %144, 78
  %175 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %174
  %176 = load float, float addrspace(3)* %175, align 4, !tbaa !19
  %177 = add i32 %144, 79
  %178 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %177
  %179 = load float, float addrspace(3)* %178, align 4, !tbaa !19
  %180 = add i32 %144, 80
  %181 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %180
  %182 = load float, float addrspace(3)* %181, align 4, !tbaa !19
  %183 = add i32 %144, 115
  %184 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %183
  %185 = load float, float addrspace(3)* %184, align 4, !tbaa !19
  %186 = add i32 %144, 116
  %187 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %186
  %188 = load float, float addrspace(3)* %187, align 4, !tbaa !19
  %189 = add i32 %144, 117
  %190 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %189
  %191 = load float, float addrspace(3)* %190, align 4, !tbaa !19
  %192 = add i32 %144, 118
  %193 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %192
  %194 = load float, float addrspace(3)* %193, align 4, !tbaa !19
  %195 = fadd fast float %150, %147
  %196 = fadd fast float %195, %153
  %197 = fsub fast float %196, %173
  %198 = fsub fast float %197, %176
  %199 = fsub fast float %198, %179
  %200 = call float @dx.op.unary.f32(i32 6, float %199)  ; FAbs(value)
  %201 = fadd fast float %195, %160
  %202 = fsub fast float %201, %166
  %203 = fsub fast float %202, %176
  %204 = fsub fast float %203, %179
  %205 = call float @dx.op.unary.f32(i32 6, float %204)  ; FAbs(value)
  %206 = fsub fast float %147, %153
  %207 = fadd fast float %206, %160
  %208 = fsub fast float %207, %166
  %209 = fadd fast float %208, %173
  %210 = fsub fast float %209, %179
  %211 = call float @dx.op.unary.f32(i32 6, float %210)  ; FAbs(value)
  %212 = fsub fast float -0.000000e+00, %150
  %213 = fsub fast float %212, %153
  %214 = fadd fast float %213, %160
  %215 = fsub fast float %214, %166
  %216 = fadd fast float %215, %173
  %217 = fadd fast float %216, %176
  %218 = call float @dx.op.unary.f32(i32 6, float %217)  ; FAbs(value)
  %219 = call float @dx.op.binary.f32(i32 35, float %200, float %211)  ; FMax(a,b)
  %220 = call float @dx.op.binary.f32(i32 36, float %200, float %211)  ; FMin(a,b)
  %221 = call float @dx.op.binary.f32(i32 35, float %205, float %218)  ; FMax(a,b)
  %222 = call float @dx.op.binary.f32(i32 36, float %205, float %218)  ; FMin(a,b)
  %223 = fadd fast float %221, %219
  %224 = fcmp fast oeq float %223, 0.000000e+00
  br i1 %224, label %259, label %225, !dx.controlflow.hints !23

; <label>:225                                     ; preds = %135
  %226 = fdiv fast float %219, %223
  %227 = call float @dx.op.binary.f32(i32 36, float %226, float 1.000000e+00)  ; FMin(a,b)
  %228 = fsub fast float 1.000000e+00, %227
  %229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %230 = extractvalue %dx.types.CBufRet.f32 %229, 0
  %231 = fmul fast float %230, %220
  %232 = fcmp fast ogt float %219, %231
  %233 = extractvalue %dx.types.CBufRet.f32 %229, 1
  %234 = fcmp fast ogt float %219, %233
  %235 = and i1 %232, %234
  %236 = fcmp fast ogt float %219, %222
  %237 = and i1 %236, %235
  %238 = fmul fast float %230, %222
  %239 = fcmp fast ogt float %221, %238
  %240 = fcmp fast ogt float %221, %233
  %241 = and i1 %239, %240
  %242 = fcmp fast ogt float %221, %220
  %243 = and i1 %242, %241
  %244 = fcmp fast oeq float %219, %200
  %245 = fcmp fast oeq float %221, %205
  %246 = and i1 %237, %243
  %247 = select i1 %246, float %227, float 1.000000e+00
  %248 = select i1 %246, float %228, float 1.000000e+00
  %249 = and i1 %244, %237
  %250 = select i1 %249, float %247, float 0.000000e+00
  %251 = xor i1 %244, true
  %252 = and i1 %237, %251
  %253 = select i1 %252, float %247, float 0.000000e+00
  %254 = and i1 %245, %243
  %255 = select i1 %254, float %248, float 0.000000e+00
  %256 = xor i1 %245, true
  %257 = and i1 %243, %256
  %258 = select i1 %257, float %248, float 0.000000e+00
  br label %259

; <label>:259                                     ; preds = %225, %135
  %260 = phi float [ %250, %225 ], [ 0.000000e+00, %135 ]
  %261 = phi float [ %253, %225 ], [ 0.000000e+00, %135 ]
  %262 = phi float [ %255, %225 ], [ 0.000000e+00, %135 ]
  %263 = phi float [ %258, %225 ], [ 0.000000e+00, %135 ]
  %264 = fptrunc float %260 to half
  %265 = fptrunc float %261 to half
  %266 = fptrunc float %262 to half
  %267 = fptrunc float %263 to half
  %268 = mul i32 %141, 4
  %269 = add i32 0, %268
  %270 = getelementptr [4624 x half], [4624 x half] addrspace(3)* @"\01?shEdgeMap@@3PAV?$vector@$min16f@$03@@A.v.1dim", i32 0, i32 %269
  store half %264, half addrspace(3)* %270, align 4
  %271 = mul i32 %141, 4
  %272 = add i32 1, %271
  %273 = getelementptr [4624 x half], [4624 x half] addrspace(3)* @"\01?shEdgeMap@@3PAV?$vector@$min16f@$03@@A.v.1dim", i32 0, i32 %272
  store half %265, half addrspace(3)* %273, align 4
  %274 = mul i32 %141, 4
  %275 = add i32 2, %274
  %276 = getelementptr [4624 x half], [4624 x half] addrspace(3)* @"\01?shEdgeMap@@3PAV?$vector@$min16f@$03@@A.v.1dim", i32 0, i32 %275
  store half %266, half addrspace(3)* %276, align 4
  %277 = mul i32 %141, 4
  %278 = add i32 3, %277
  %279 = getelementptr [4624 x half], [4624 x half] addrspace(3)* @"\01?shEdgeMap@@3PAV?$vector@$min16f@$03@@A.v.1dim", i32 0, i32 %278
  store half %267, half addrspace(3)* %279, align 4
  %280 = fadd fast float %153, %150
  %281 = fadd fast float %280, %157
  %282 = fsub fast float %281, %176
  %283 = fsub fast float %282, %179
  %284 = fsub fast float %283, %182
  %285 = call float @dx.op.unary.f32(i32 6, float %284)  ; FAbs(value)
  %286 = fadd fast float %280, %163
  %287 = fsub fast float %286, %170
  %288 = fsub fast float %287, %179
  %289 = fsub fast float %288, %182
  %290 = call float @dx.op.unary.f32(i32 6, float %289)  ; FAbs(value)
  %291 = fsub fast float %150, %157
  %292 = fadd fast float %291, %163
  %293 = fsub fast float %292, %170
  %294 = fadd fast float %293, %176
  %295 = fsub fast float %294, %182
  %296 = call float @dx.op.unary.f32(i32 6, float %295)  ; FAbs(value)
  %297 = fsub fast float %154, %157
  %298 = fadd fast float %297, %163
  %299 = fsub fast float %298, %170
  %300 = fadd fast float %299, %176
  %301 = fadd fast float %300, %179
  %302 = call float @dx.op.unary.f32(i32 6, float %301)  ; FAbs(value)
  %303 = call float @dx.op.binary.f32(i32 35, float %285, float %296)  ; FMax(a,b)
  %304 = call float @dx.op.binary.f32(i32 36, float %285, float %296)  ; FMin(a,b)
  %305 = call float @dx.op.binary.f32(i32 35, float %290, float %302)  ; FMax(a,b)
  %306 = call float @dx.op.binary.f32(i32 36, float %290, float %302)  ; FMin(a,b)
  %307 = fadd fast float %305, %303
  %308 = fcmp fast oeq float %307, 0.000000e+00
  br i1 %308, label %343, label %309, !dx.controlflow.hints !23

; <label>:309                                     ; preds = %259
  %310 = fdiv fast float %303, %307
  %311 = call float @dx.op.binary.f32(i32 36, float %310, float 1.000000e+00)  ; FMin(a,b)
  %312 = fsub fast float 1.000000e+00, %311
  %313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %314 = extractvalue %dx.types.CBufRet.f32 %313, 0
  %315 = fmul fast float %314, %304
  %316 = fcmp fast ogt float %303, %315
  %317 = extractvalue %dx.types.CBufRet.f32 %313, 1
  %318 = fcmp fast ogt float %303, %317
  %319 = and i1 %316, %318
  %320 = fcmp fast ogt float %303, %306
  %321 = and i1 %320, %319
  %322 = fmul fast float %314, %306
  %323 = fcmp fast ogt float %305, %322
  %324 = fcmp fast ogt float %305, %317
  %325 = and i1 %323, %324
  %326 = fcmp fast ogt float %305, %304
  %327 = and i1 %326, %325
  %328 = fcmp fast oeq float %303, %285
  %329 = fcmp fast oeq float %305, %290
  %330 = and i1 %321, %327
  %331 = select i1 %330, float %311, float 1.000000e+00
  %332 = select i1 %330, float %312, float 1.000000e+00
  %333 = and i1 %328, %321
  %334 = select i1 %333, float %331, float 0.000000e+00
  %335 = xor i1 %328, true
  %336 = and i1 %321, %335
  %337 = select i1 %336, float %331, float 0.000000e+00
  %338 = and i1 %329, %327
  %339 = select i1 %338, float %332, float 0.000000e+00
  %340 = xor i1 %329, true
  %341 = and i1 %327, %340
  %342 = select i1 %341, float %332, float 0.000000e+00
  br label %343

; <label>:343                                     ; preds = %309, %259
  %344 = phi float [ %334, %309 ], [ 0.000000e+00, %259 ]
  %345 = phi float [ %337, %309 ], [ 0.000000e+00, %259 ]
  %346 = phi float [ %339, %309 ], [ 0.000000e+00, %259 ]
  %347 = phi float [ %342, %309 ], [ 0.000000e+00, %259 ]
  %348 = fptrunc float %344 to half
  %349 = fptrunc float %345 to half
  %350 = fptrunc float %346 to half
  %351 = fptrunc float %347 to half
  %352 = add i32 %141, 1
  %353 = mul i32 %352, 4
  %354 = add i32 0, %353
  %355 = getelementptr [4624 x half], [4624 x half] addrspace(3)* @"\01?shEdgeMap@@3PAV?$vector@$min16f@$03@@A.v.1dim", i32 0, i32 %354
  store half %348, half addrspace(3)* %355, align 4
  %356 = mul i32 %352, 4
  %357 = add i32 1, %356
  %358 = getelementptr [4624 x half], [4624 x half] addrspace(3)* @"\01?shEdgeMap@@3PAV?$vector@$min16f@$03@@A.v.1dim", i32 0, i32 %357
  store half %349, half addrspace(3)* %358, align 4
  %359 = mul i32 %352, 4
  %360 = add i32 2, %359
  %361 = getelementptr [4624 x half], [4624 x half] addrspace(3)* @"\01?shEdgeMap@@3PAV?$vector@$min16f@$03@@A.v.1dim", i32 0, i32 %360
  store half %350, half addrspace(3)* %361, align 4
  %362 = mul i32 %352, 4
  %363 = add i32 3, %362
  %364 = getelementptr [4624 x half], [4624 x half] addrspace(3)* @"\01?shEdgeMap@@3PAV?$vector@$min16f@$03@@A.v.1dim", i32 0, i32 %363
  store half %351, half addrspace(3)* %364, align 4
  %365 = fadd fast float %163, %160
  %366 = fadd fast float %365, %166
  %367 = fsub fast float %366, %185
  %368 = fsub fast float %367, %188
  %369 = fsub fast float %368, %191
  %370 = call float @dx.op.unary.f32(i32 6, float %369)  ; FAbs(value)
  %371 = fadd fast float %365, %173
  %372 = fsub fast float %371, %179
  %373 = fsub fast float %372, %188
  %374 = fsub fast float %373, %191
  %375 = call float @dx.op.unary.f32(i32 6, float %374)  ; FAbs(value)
  %376 = fsub fast float %160, %166
  %377 = fadd fast float %376, %173
  %378 = fsub fast float %377, %179
  %379 = fadd fast float %378, %185
  %380 = fsub fast float %379, %191
  %381 = call float @dx.op.unary.f32(i32 6, float %380)  ; FAbs(value)
  %382 = fsub fast float -0.000000e+00, %163
  %383 = fsub fast float %382, %166
  %384 = fadd fast float %383, %173
  %385 = fsub fast float %384, %179
  %386 = fadd fast float %385, %185
  %387 = fadd fast float %386, %188
  %388 = call float @dx.op.unary.f32(i32 6, float %387)  ; FAbs(value)
  %389 = call float @dx.op.binary.f32(i32 35, float %370, float %381)  ; FMax(a,b)
  %390 = call float @dx.op.binary.f32(i32 36, float %370, float %381)  ; FMin(a,b)
  %391 = call float @dx.op.binary.f32(i32 35, float %375, float %388)  ; FMax(a,b)
  %392 = call float @dx.op.binary.f32(i32 36, float %375, float %388)  ; FMin(a,b)
  %393 = fadd fast float %391, %389
  %394 = fcmp fast oeq float %393, 0.000000e+00
  br i1 %394, label %429, label %395, !dx.controlflow.hints !23

; <label>:395                                     ; preds = %343
  %396 = fdiv fast float %389, %393
  %397 = call float @dx.op.binary.f32(i32 36, float %396, float 1.000000e+00)  ; FMin(a,b)
  %398 = fsub fast float 1.000000e+00, %397
  %399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %400 = extractvalue %dx.types.CBufRet.f32 %399, 0
  %401 = fmul fast float %400, %390
  %402 = fcmp fast ogt float %389, %401
  %403 = extractvalue %dx.types.CBufRet.f32 %399, 1
  %404 = fcmp fast ogt float %389, %403
  %405 = and i1 %402, %404
  %406 = fcmp fast ogt float %389, %392
  %407 = and i1 %406, %405
  %408 = fmul fast float %400, %392
  %409 = fcmp fast ogt float %391, %408
  %410 = fcmp fast ogt float %391, %403
  %411 = and i1 %409, %410
  %412 = fcmp fast ogt float %391, %390
  %413 = and i1 %412, %411
  %414 = fcmp fast oeq float %389, %370
  %415 = fcmp fast oeq float %391, %375
  %416 = and i1 %407, %413
  %417 = select i1 %416, float %397, float 1.000000e+00
  %418 = select i1 %416, float %398, float 1.000000e+00
  %419 = and i1 %414, %407
  %420 = select i1 %419, float %417, float 0.000000e+00
  %421 = xor i1 %414, true
  %422 = and i1 %407, %421
  %423 = select i1 %422, float %417, float 0.000000e+00
  %424 = and i1 %415, %413
  %425 = select i1 %424, float %418, float 0.000000e+00
  %426 = xor i1 %415, true
  %427 = and i1 %413, %426
  %428 = select i1 %427, float %418, float 0.000000e+00
  br label %429

; <label>:429                                     ; preds = %395, %343
  %430 = phi float [ %420, %395 ], [ 0.000000e+00, %343 ]
  %431 = phi float [ %423, %395 ], [ 0.000000e+00, %343 ]
  %432 = phi float [ %425, %395 ], [ 0.000000e+00, %343 ]
  %433 = phi float [ %428, %395 ], [ 0.000000e+00, %343 ]
  %434 = fptrunc float %430 to half
  %435 = fptrunc float %431 to half
  %436 = fptrunc float %432 to half
  %437 = fptrunc float %433 to half
  %438 = add i32 %141, 34
  %439 = mul i32 %438, 4
  %440 = add i32 0, %439
  %441 = getelementptr [4624 x half], [4624 x half] addrspace(3)* @"\01?shEdgeMap@@3PAV?$vector@$min16f@$03@@A.v.1dim", i32 0, i32 %440
  store half %434, half addrspace(3)* %441, align 4
  %442 = mul i32 %438, 4
  %443 = add i32 1, %442
  %444 = getelementptr [4624 x half], [4624 x half] addrspace(3)* @"\01?shEdgeMap@@3PAV?$vector@$min16f@$03@@A.v.1dim", i32 0, i32 %443
  store half %435, half addrspace(3)* %444, align 4
  %445 = mul i32 %438, 4
  %446 = add i32 2, %445
  %447 = getelementptr [4624 x half], [4624 x half] addrspace(3)* @"\01?shEdgeMap@@3PAV?$vector@$min16f@$03@@A.v.1dim", i32 0, i32 %446
  store half %436, half addrspace(3)* %447, align 4
  %448 = mul i32 %438, 4
  %449 = add i32 3, %448
  %450 = getelementptr [4624 x half], [4624 x half] addrspace(3)* @"\01?shEdgeMap@@3PAV?$vector@$min16f@$03@@A.v.1dim", i32 0, i32 %449
  store half %437, half addrspace(3)* %450, align 4
  %451 = fadd fast float %166, %163
  %452 = fadd fast float %451, %170
  %453 = fsub fast float %452, %188
  %454 = fsub fast float %453, %191
  %455 = fsub fast float %454, %194
  %456 = call float @dx.op.unary.f32(i32 6, float %455)  ; FAbs(value)
  %457 = fadd fast float %451, %176
  %458 = fsub fast float %457, %182
  %459 = fsub fast float %458, %191
  %460 = fsub fast float %459, %194
  %461 = call float @dx.op.unary.f32(i32 6, float %460)  ; FAbs(value)
  %462 = fsub fast float %163, %170
  %463 = fadd fast float %462, %176
  %464 = fsub fast float %463, %182
  %465 = fadd fast float %464, %188
  %466 = fsub fast float %465, %194
  %467 = call float @dx.op.unary.f32(i32 6, float %466)  ; FAbs(value)
  %468 = fsub fast float %167, %170
  %469 = fadd fast float %468, %176
  %470 = fsub fast float %469, %182
  %471 = fadd fast float %470, %188
  %472 = fadd fast float %471, %191
  %473 = call float @dx.op.unary.f32(i32 6, float %472)  ; FAbs(value)
  %474 = call float @dx.op.binary.f32(i32 35, float %456, float %467)  ; FMax(a,b)
  %475 = call float @dx.op.binary.f32(i32 36, float %456, float %467)  ; FMin(a,b)
  %476 = call float @dx.op.binary.f32(i32 35, float %461, float %473)  ; FMax(a,b)
  %477 = call float @dx.op.binary.f32(i32 36, float %461, float %473)  ; FMin(a,b)
  %478 = fadd fast float %476, %474
  %479 = fcmp fast oeq float %478, 0.000000e+00
  br i1 %479, label %514, label %480, !dx.controlflow.hints !23

; <label>:480                                     ; preds = %429
  %481 = fdiv fast float %474, %478
  %482 = call float @dx.op.binary.f32(i32 36, float %481, float 1.000000e+00)  ; FMin(a,b)
  %483 = fsub fast float 1.000000e+00, %482
  %484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %485 = extractvalue %dx.types.CBufRet.f32 %484, 0
  %486 = fmul fast float %485, %475
  %487 = fcmp fast ogt float %474, %486
  %488 = extractvalue %dx.types.CBufRet.f32 %484, 1
  %489 = fcmp fast ogt float %474, %488
  %490 = and i1 %487, %489
  %491 = fcmp fast ogt float %474, %477
  %492 = and i1 %491, %490
  %493 = fmul fast float %485, %477
  %494 = fcmp fast ogt float %476, %493
  %495 = fcmp fast ogt float %476, %488
  %496 = and i1 %494, %495
  %497 = fcmp fast ogt float %476, %475
  %498 = and i1 %497, %496
  %499 = fcmp fast oeq float %474, %456
  %500 = fcmp fast oeq float %476, %461
  %501 = and i1 %492, %498
  %502 = select i1 %501, float %482, float 1.000000e+00
  %503 = select i1 %501, float %483, float 1.000000e+00
  %504 = and i1 %499, %492
  %505 = select i1 %504, float %502, float 0.000000e+00
  %506 = xor i1 %499, true
  %507 = and i1 %492, %506
  %508 = select i1 %507, float %502, float 0.000000e+00
  %509 = and i1 %500, %498
  %510 = select i1 %509, float %503, float 0.000000e+00
  %511 = xor i1 %500, true
  %512 = and i1 %498, %511
  %513 = select i1 %512, float %503, float 0.000000e+00
  br label %514

; <label>:514                                     ; preds = %480, %429
  %515 = phi float [ %505, %480 ], [ 0.000000e+00, %429 ]
  %516 = phi float [ %508, %480 ], [ 0.000000e+00, %429 ]
  %517 = phi float [ %510, %480 ], [ 0.000000e+00, %429 ]
  %518 = phi float [ %513, %480 ], [ 0.000000e+00, %429 ]
  %519 = fptrunc float %515 to half
  %520 = fptrunc float %516 to half
  %521 = fptrunc float %517 to half
  %522 = fptrunc float %518 to half
  %523 = add i32 %141, 35
  %524 = mul i32 %523, 4
  %525 = add i32 0, %524
  %526 = getelementptr [4624 x half], [4624 x half] addrspace(3)* @"\01?shEdgeMap@@3PAV?$vector@$min16f@$03@@A.v.1dim", i32 0, i32 %525
  store half %519, half addrspace(3)* %526, align 4
  %527 = mul i32 %523, 4
  %528 = add i32 1, %527
  %529 = getelementptr [4624 x half], [4624 x half] addrspace(3)* @"\01?shEdgeMap@@3PAV?$vector@$min16f@$03@@A.v.1dim", i32 0, i32 %528
  store half %520, half addrspace(3)* %529, align 4
  %530 = mul i32 %523, 4
  %531 = add i32 2, %530
  %532 = getelementptr [4624 x half], [4624 x half] addrspace(3)* @"\01?shEdgeMap@@3PAV?$vector@$min16f@$03@@A.v.1dim", i32 0, i32 %531
  store half %521, half addrspace(3)* %532, align 4
  %533 = mul i32 %523, 4
  %534 = add i32 3, %533
  %535 = getelementptr [4624 x half], [4624 x half] addrspace(3)* @"\01?shEdgeMap@@3PAV?$vector@$min16f@$03@@A.v.1dim", i32 0, i32 %534
  store half %522, half addrspace(3)* %535, align 4
  %536 = add nuw i32 %136, 256
  %537 = icmp ult i32 %536, %132
  br i1 %537, label %135, label %538

; <label>:538                                     ; preds = %514
  br label %539

; <label>:539                                     ; preds = %538, %131
  %540 = icmp slt i32 %9, 128
  br i1 %540, label %541, label %598

; <label>:541                                     ; preds = %539
  br label %542

; <label>:542                                     ; preds = %594, %541
  %543 = phi i32 [ %595, %594 ], [ %9, %541 ]
  %544 = ashr i32 %543, 1
  %545 = and i32 %543, 1
  %546 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %545, i32 %544, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %547 = extractvalue %dx.types.ResRet.f32 %546, 0
  %548 = extractvalue %dx.types.ResRet.f32 %546, 1
  %549 = fptrunc float %547 to half
  %550 = fptrunc float %548 to half
  %551 = shl nuw nsw i32 %545, 2
  %552 = mul i32 %544, 6
  %553 = add i32 %551, %552
  %554 = getelementptr [384 x half], [384 x half] addrspace(3)* @"\01?shCoefScaler@@3PAY05$$CA$min16f@A.1dim", i32 0, i32 %553
  store half %549, half addrspace(3)* %554, align 4, !tbaa !24
  %555 = or i32 %551, 1
  %556 = mul i32 %544, 6
  %557 = add i32 %555, %556
  %558 = getelementptr [384 x half], [384 x half] addrspace(3)* @"\01?shCoefScaler@@3PAY05$$CA$min16f@A.1dim", i32 0, i32 %557
  store half %550, half addrspace(3)* %558, align 4, !tbaa !24
  %559 = icmp eq i32 %545, 0
  br i1 %559, label %560, label %571, !dx.controlflow.hints !26

; <label>:560                                     ; preds = %542
  %561 = extractvalue %dx.types.ResRet.f32 %546, 3
  %562 = fptrunc float %561 to half
  %563 = extractvalue %dx.types.ResRet.f32 %546, 2
  %564 = fptrunc float %563 to half
  %565 = mul i32 %544, 6
  %566 = add i32 2, %565
  %567 = getelementptr [384 x half], [384 x half] addrspace(3)* @"\01?shCoefScaler@@3PAY05$$CA$min16f@A.1dim", i32 0, i32 %566
  store half %564, half addrspace(3)* %567, align 4, !tbaa !24
  %568 = mul i32 %544, 6
  %569 = add i32 3, %568
  %570 = getelementptr [384 x half], [384 x half] addrspace(3)* @"\01?shCoefScaler@@3PAY05$$CA$min16f@A.1dim", i32 0, i32 %569
  store half %562, half addrspace(3)* %570, align 4, !tbaa !24
  br label %571

; <label>:571                                     ; preds = %560, %542
  %572 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %545, i32 %544, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %573 = extractvalue %dx.types.ResRet.f32 %572, 0
  %574 = extractvalue %dx.types.ResRet.f32 %572, 1
  %575 = fptrunc float %573 to half
  %576 = fptrunc float %574 to half
  %577 = mul i32 %544, 6
  %578 = add i32 %551, %577
  %579 = getelementptr [384 x half], [384 x half] addrspace(3)* @"\01?shCoefUSM@@3PAY05$$CA$min16f@A.1dim", i32 0, i32 %578
  store half %575, half addrspace(3)* %579, align 4, !tbaa !24
  %580 = mul i32 %544, 6
  %581 = add i32 %555, %580
  %582 = getelementptr [384 x half], [384 x half] addrspace(3)* @"\01?shCoefUSM@@3PAY05$$CA$min16f@A.1dim", i32 0, i32 %581
  store half %576, half addrspace(3)* %582, align 4, !tbaa !24
  br i1 %559, label %583, label %594, !dx.controlflow.hints !27

; <label>:583                                     ; preds = %571
  %584 = extractvalue %dx.types.ResRet.f32 %572, 3
  %585 = fptrunc float %584 to half
  %586 = extractvalue %dx.types.ResRet.f32 %572, 2
  %587 = fptrunc float %586 to half
  %588 = mul i32 %544, 6
  %589 = add i32 2, %588
  %590 = getelementptr [384 x half], [384 x half] addrspace(3)* @"\01?shCoefUSM@@3PAY05$$CA$min16f@A.1dim", i32 0, i32 %589
  store half %587, half addrspace(3)* %590, align 4, !tbaa !24
  %591 = mul i32 %544, 6
  %592 = add i32 3, %591
  %593 = getelementptr [384 x half], [384 x half] addrspace(3)* @"\01?shCoefUSM@@3PAY05$$CA$min16f@A.1dim", i32 0, i32 %592
  store half %585, half addrspace(3)* %593, align 4, !tbaa !24
  br label %594

; <label>:594                                     ; preds = %583, %571
  %595 = add nsw i32 %543, 128
  %596 = icmp slt i32 %543, 0
  br i1 %596, label %542, label %597

; <label>:597                                     ; preds = %594
  br label %598

; <label>:598                                     ; preds = %597, %539
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %599 = and i32 %9, 31
  %600 = lshr i32 %9, 5
  %601 = or i32 %599, %10
  %602 = sitofp i32 %601 to float
  %603 = fadd fast float %602, 5.000000e-01
  %604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %605 = extractvalue %dx.types.CBufRet.f32 %604, 0
  %606 = fmul fast float %605, %603
  %607 = fadd fast float %606, -5.000000e-01
  %608 = call float @dx.op.unary.f32(i32 27, float %607)  ; Round_ni(value)
  %609 = sitofp i32 %19 to float
  %610 = fsub fast float %608, %609
  %611 = fptosi float %610 to i32
  %612 = fsub fast float %607, %608
  %613 = fmul fast float %612, 6.400000e+01
  %614 = fptosi float %613 to i32
  br label %615

; <label>:615                                     ; preds = %1618, %598
  %616 = phi i32 [ 0, %598 ], [ %1640, %1618 ]
  %617 = add nsw i32 %600, %11
  %618 = shl nsw i32 %616, 2
  %619 = add nsw i32 %617, %618
  %620 = sitofp i32 %619 to float
  %621 = fadd fast float %620, 5.000000e-01
  %622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %623 = extractvalue %dx.types.CBufRet.f32 %622, 1
  %624 = fmul fast float %621, %623
  %625 = fadd fast float %624, -5.000000e-01
  %626 = call float @dx.op.unary.f32(i32 27, float %625)  ; Round_ni(value)
  %627 = sitofp i32 %26 to float
  %628 = fsub fast float %626, %627
  %629 = fptosi float %628 to i32
  %630 = fsub fast float %625, %626
  %631 = fmul fast float %630, 6.400000e+01
  %632 = fptosi float %631 to i32
  %633 = mul nsw i32 %629, 34
  %634 = add nsw i32 %633, %611
  %635 = mul i32 %634, 4
  %636 = add i32 0, %635
  %637 = getelementptr [4624 x half], [4624 x half] addrspace(3)* @"\01?shEdgeMap@@3PAV?$vector@$min16f@$03@@A.v.1dim", i32 0, i32 %636
  %638 = load half, half addrspace(3)* %637, align 4
  %639 = mul i32 %634, 4
  %640 = add i32 1, %639
  %641 = getelementptr [4624 x half], [4624 x half] addrspace(3)* @"\01?shEdgeMap@@3PAV?$vector@$min16f@$03@@A.v.1dim", i32 0, i32 %640
  %642 = load half, half addrspace(3)* %641, align 4
  %643 = mul i32 %634, 4
  %644 = add i32 2, %643
  %645 = getelementptr [4624 x half], [4624 x half] addrspace(3)* @"\01?shEdgeMap@@3PAV?$vector@$min16f@$03@@A.v.1dim", i32 0, i32 %644
  %646 = load half, half addrspace(3)* %645, align 4
  %647 = mul i32 %634, 4
  %648 = add i32 3, %647
  %649 = getelementptr [4624 x half], [4624 x half] addrspace(3)* @"\01?shEdgeMap@@3PAV?$vector@$min16f@$03@@A.v.1dim", i32 0, i32 %648
  %650 = load half, half addrspace(3)* %649, align 4
  %651 = fpext half %638 to float
  %652 = fpext half %642 to float
  %653 = fpext half %646 to float
  %654 = fpext half %650 to float
  %655 = add nsw i32 %634, 1
  %656 = mul i32 %655, 4
  %657 = add i32 0, %656
  %658 = getelementptr [4624 x half], [4624 x half] addrspace(3)* @"\01?shEdgeMap@@3PAV?$vector@$min16f@$03@@A.v.1dim", i32 0, i32 %657
  %659 = load half, half addrspace(3)* %658, align 4
  %660 = mul i32 %655, 4
  %661 = add i32 1, %660
  %662 = getelementptr [4624 x half], [4624 x half] addrspace(3)* @"\01?shEdgeMap@@3PAV?$vector@$min16f@$03@@A.v.1dim", i32 0, i32 %661
  %663 = load half, half addrspace(3)* %662, align 4
  %664 = mul i32 %655, 4
  %665 = add i32 2, %664
  %666 = getelementptr [4624 x half], [4624 x half] addrspace(3)* @"\01?shEdgeMap@@3PAV?$vector@$min16f@$03@@A.v.1dim", i32 0, i32 %665
  %667 = load half, half addrspace(3)* %666, align 4
  %668 = mul i32 %655, 4
  %669 = add i32 3, %668
  %670 = getelementptr [4624 x half], [4624 x half] addrspace(3)* @"\01?shEdgeMap@@3PAV?$vector@$min16f@$03@@A.v.1dim", i32 0, i32 %669
  %671 = load half, half addrspace(3)* %670, align 4
  %672 = fpext half %659 to float
  %673 = fpext half %663 to float
  %674 = fpext half %667 to float
  %675 = fpext half %671 to float
  %676 = add nsw i32 %634, 34
  %677 = mul i32 %676, 4
  %678 = add i32 0, %677
  %679 = getelementptr [4624 x half], [4624 x half] addrspace(3)* @"\01?shEdgeMap@@3PAV?$vector@$min16f@$03@@A.v.1dim", i32 0, i32 %678
  %680 = load half, half addrspace(3)* %679, align 4
  %681 = mul i32 %676, 4
  %682 = add i32 1, %681
  %683 = getelementptr [4624 x half], [4624 x half] addrspace(3)* @"\01?shEdgeMap@@3PAV?$vector@$min16f@$03@@A.v.1dim", i32 0, i32 %682
  %684 = load half, half addrspace(3)* %683, align 4
  %685 = mul i32 %676, 4
  %686 = add i32 2, %685
  %687 = getelementptr [4624 x half], [4624 x half] addrspace(3)* @"\01?shEdgeMap@@3PAV?$vector@$min16f@$03@@A.v.1dim", i32 0, i32 %686
  %688 = load half, half addrspace(3)* %687, align 4
  %689 = mul i32 %676, 4
  %690 = add i32 3, %689
  %691 = getelementptr [4624 x half], [4624 x half] addrspace(3)* @"\01?shEdgeMap@@3PAV?$vector@$min16f@$03@@A.v.1dim", i32 0, i32 %690
  %692 = load half, half addrspace(3)* %691, align 4
  %693 = fpext half %680 to float
  %694 = fpext half %684 to float
  %695 = fpext half %688 to float
  %696 = fpext half %692 to float
  %697 = add nsw i32 %634, 35
  %698 = mul i32 %697, 4
  %699 = add i32 0, %698
  %700 = getelementptr [4624 x half], [4624 x half] addrspace(3)* @"\01?shEdgeMap@@3PAV?$vector@$min16f@$03@@A.v.1dim", i32 0, i32 %699
  %701 = load half, half addrspace(3)* %700, align 4
  %702 = mul i32 %697, 4
  %703 = add i32 1, %702
  %704 = getelementptr [4624 x half], [4624 x half] addrspace(3)* @"\01?shEdgeMap@@3PAV?$vector@$min16f@$03@@A.v.1dim", i32 0, i32 %703
  %705 = load half, half addrspace(3)* %704, align 4
  %706 = mul i32 %697, 4
  %707 = add i32 2, %706
  %708 = getelementptr [4624 x half], [4624 x half] addrspace(3)* @"\01?shEdgeMap@@3PAV?$vector@$min16f@$03@@A.v.1dim", i32 0, i32 %707
  %709 = load half, half addrspace(3)* %708, align 4
  %710 = mul i32 %697, 4
  %711 = add i32 3, %710
  %712 = getelementptr [4624 x half], [4624 x half] addrspace(3)* @"\01?shEdgeMap@@3PAV?$vector@$min16f@$03@@A.v.1dim", i32 0, i32 %711
  %713 = load half, half addrspace(3)* %712, align 4
  %714 = fpext half %701 to float
  %715 = fpext half %705 to float
  %716 = fpext half %709 to float
  %717 = fpext half %713 to float
  %718 = fsub fast float %672, %651
  %719 = fsub fast float %673, %652
  %720 = fsub fast float %674, %653
  %721 = fsub fast float %675, %654
  %722 = fmul fast float %718, %612
  %723 = fmul fast float %719, %612
  %724 = fmul fast float %720, %612
  %725 = fmul fast float %721, %612
  %726 = fadd fast float %722, %651
  %727 = fadd fast float %723, %652
  %728 = fadd fast float %724, %653
  %729 = fadd fast float %725, %654
  %730 = fsub fast float %714, %693
  %731 = fsub fast float %715, %694
  %732 = fsub fast float %716, %695
  %733 = fsub fast float %717, %696
  %734 = fmul fast float %730, %612
  %735 = fmul fast float %731, %612
  %736 = fmul fast float %732, %612
  %737 = fmul fast float %733, %612
  %738 = fsub fast float %693, %726
  %739 = fadd fast float %738, %734
  %740 = fsub fast float %694, %727
  %741 = fadd fast float %740, %735
  %742 = fsub fast float %695, %728
  %743 = fadd fast float %742, %736
  %744 = fsub fast float %696, %729
  %745 = fadd fast float %744, %737
  %746 = fmul fast float %739, %630
  %747 = fmul fast float %741, %630
  %748 = fmul fast float %743, %630
  %749 = fmul fast float %745, %630
  %750 = fadd fast float %746, %726
  %751 = fadd fast float %747, %727
  %752 = fadd fast float %748, %728
  %753 = fadd fast float %749, %729
  %754 = mul nsw i32 %629, 38
  %755 = add nsw i32 %754, %611
  %756 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %755
  %757 = load float, float addrspace(3)* %756, align 4, !tbaa !19
  %758 = add nsw i32 %755, 1
  %759 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %758
  %760 = load float, float addrspace(3)* %759, align 4, !tbaa !19
  %761 = add nsw i32 %755, 2
  %762 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %761
  %763 = load float, float addrspace(3)* %762, align 4, !tbaa !19
  %764 = add nsw i32 %755, 3
  %765 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %764
  %766 = load float, float addrspace(3)* %765, align 4, !tbaa !19
  %767 = add nsw i32 %755, 4
  %768 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %767
  %769 = load float, float addrspace(3)* %768, align 4, !tbaa !19
  %770 = add nsw i32 %755, 5
  %771 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %770
  %772 = load float, float addrspace(3)* %771, align 4, !tbaa !19
  %773 = add nsw i32 %755, 38
  %774 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %773
  %775 = load float, float addrspace(3)* %774, align 4, !tbaa !19
  %776 = add nsw i32 %755, 39
  %777 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %776
  %778 = load float, float addrspace(3)* %777, align 4, !tbaa !19
  %779 = add nsw i32 %755, 40
  %780 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %779
  %781 = load float, float addrspace(3)* %780, align 4, !tbaa !19
  %782 = add nsw i32 %755, 41
  %783 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %782
  %784 = load float, float addrspace(3)* %783, align 4, !tbaa !19
  %785 = add nsw i32 %755, 42
  %786 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %785
  %787 = load float, float addrspace(3)* %786, align 4, !tbaa !19
  %788 = add nsw i32 %755, 43
  %789 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %788
  %790 = load float, float addrspace(3)* %789, align 4, !tbaa !19
  %791 = add nsw i32 %755, 76
  %792 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %791
  %793 = load float, float addrspace(3)* %792, align 4, !tbaa !19
  %794 = add nsw i32 %755, 77
  %795 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %794
  %796 = load float, float addrspace(3)* %795, align 4, !tbaa !19
  %797 = add nsw i32 %755, 78
  %798 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %797
  %799 = load float, float addrspace(3)* %798, align 4, !tbaa !19
  %800 = add nsw i32 %755, 79
  %801 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %800
  %802 = load float, float addrspace(3)* %801, align 4, !tbaa !19
  %803 = add nsw i32 %755, 80
  %804 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %803
  %805 = load float, float addrspace(3)* %804, align 4, !tbaa !19
  %806 = add nsw i32 %755, 81
  %807 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %806
  %808 = load float, float addrspace(3)* %807, align 4, !tbaa !19
  %809 = add nsw i32 %755, 114
  %810 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %809
  %811 = load float, float addrspace(3)* %810, align 4, !tbaa !19
  %812 = add nsw i32 %755, 115
  %813 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %812
  %814 = load float, float addrspace(3)* %813, align 4, !tbaa !19
  %815 = add nsw i32 %755, 116
  %816 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %815
  %817 = load float, float addrspace(3)* %816, align 4, !tbaa !19
  %818 = add nsw i32 %755, 117
  %819 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %818
  %820 = load float, float addrspace(3)* %819, align 4, !tbaa !19
  %821 = add nsw i32 %755, 118
  %822 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %821
  %823 = load float, float addrspace(3)* %822, align 4, !tbaa !19
  %824 = add nsw i32 %755, 119
  %825 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %824
  %826 = load float, float addrspace(3)* %825, align 4, !tbaa !19
  %827 = add nsw i32 %755, 152
  %828 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %827
  %829 = load float, float addrspace(3)* %828, align 4, !tbaa !19
  %830 = add nsw i32 %755, 153
  %831 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %830
  %832 = load float, float addrspace(3)* %831, align 4, !tbaa !19
  %833 = add nsw i32 %755, 154
  %834 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %833
  %835 = load float, float addrspace(3)* %834, align 4, !tbaa !19
  %836 = add nsw i32 %755, 155
  %837 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %836
  %838 = load float, float addrspace(3)* %837, align 4, !tbaa !19
  %839 = add nsw i32 %755, 156
  %840 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %839
  %841 = load float, float addrspace(3)* %840, align 4, !tbaa !19
  %842 = add nsw i32 %755, 157
  %843 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %842
  %844 = load float, float addrspace(3)* %843, align 4, !tbaa !19
  %845 = add nsw i32 %755, 190
  %846 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %845
  %847 = load float, float addrspace(3)* %846, align 4, !tbaa !19
  %848 = add nsw i32 %755, 191
  %849 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %848
  %850 = load float, float addrspace(3)* %849, align 4, !tbaa !19
  %851 = add nsw i32 %755, 192
  %852 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %851
  %853 = load float, float addrspace(3)* %852, align 4, !tbaa !19
  %854 = add nsw i32 %755, 193
  %855 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %854
  %856 = load float, float addrspace(3)* %855, align 4, !tbaa !19
  %857 = add nsw i32 %755, 194
  %858 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %857
  %859 = load float, float addrspace(3)* %858, align 4, !tbaa !19
  %860 = add nsw i32 %755, 195
  %861 = getelementptr [1444 x float], [1444 x float] addrspace(3)* @"\01?shPixelsY@@3PAMA", i32 0, i32 %860
  %862 = load float, float addrspace(3)* %861, align 4, !tbaa !19
  %863 = fsub fast float 1.000000e+00, %750
  %864 = fsub fast float %863, %751
  %865 = fsub fast float %864, %752
  %866 = fsub fast float %865, %753
  %867 = mul i32 %632, 6
  %868 = add i32 0, %867
  %869 = getelementptr [384 x half], [384 x half] addrspace(3)* @"\01?shCoefScaler@@3PAY05$$CA$min16f@A.1dim", i32 0, i32 %868
  %870 = load half, half addrspace(3)* %869, align 4, !tbaa !24
  %871 = fpext half %870 to float
  %872 = fmul fast float %871, %757
  %873 = mul i32 %632, 6
  %874 = add i32 1, %873
  %875 = getelementptr [384 x half], [384 x half] addrspace(3)* @"\01?shCoefScaler@@3PAY05$$CA$min16f@A.1dim", i32 0, i32 %874
  %876 = load half, half addrspace(3)* %875, align 4, !tbaa !24
  %877 = fpext half %876 to float
  %878 = fmul fast float %877, %775
  %879 = fadd fast float %878, %872
  %880 = mul i32 %632, 6
  %881 = add i32 2, %880
  %882 = getelementptr [384 x half], [384 x half] addrspace(3)* @"\01?shCoefScaler@@3PAY05$$CA$min16f@A.1dim", i32 0, i32 %881
  %883 = load half, half addrspace(3)* %882, align 4, !tbaa !24
  %884 = fpext half %883 to float
  %885 = fmul fast float %884, %793
  %886 = fadd fast float %879, %885
  %887 = mul i32 %632, 6
  %888 = add i32 3, %887
  %889 = getelementptr [384 x half], [384 x half] addrspace(3)* @"\01?shCoefScaler@@3PAY05$$CA$min16f@A.1dim", i32 0, i32 %888
  %890 = load half, half addrspace(3)* %889, align 4, !tbaa !24
  %891 = fpext half %890 to float
  %892 = fmul fast float %891, %811
  %893 = fadd fast float %886, %892
  %894 = mul i32 %632, 6
  %895 = add i32 4, %894
  %896 = getelementptr [384 x half], [384 x half] addrspace(3)* @"\01?shCoefScaler@@3PAY05$$CA$min16f@A.1dim", i32 0, i32 %895
  %897 = load half, half addrspace(3)* %896, align 4, !tbaa !24
  %898 = fpext half %897 to float
  %899 = fmul fast float %898, %829
  %900 = fadd fast float %893, %899
  %901 = mul i32 %632, 6
  %902 = add i32 5, %901
  %903 = getelementptr [384 x half], [384 x half] addrspace(3)* @"\01?shCoefScaler@@3PAY05$$CA$min16f@A.1dim", i32 0, i32 %902
  %904 = load half, half addrspace(3)* %903, align 4, !tbaa !24
  %905 = fpext half %904 to float
  %906 = fmul fast float %905, %847
  %907 = fadd fast float %900, %906
  %908 = mul i32 %614, 6
  %909 = add i32 0, %908
  %910 = getelementptr [384 x half], [384 x half] addrspace(3)* @"\01?shCoefScaler@@3PAY05$$CA$min16f@A.1dim", i32 0, i32 %909
  %911 = load half, half addrspace(3)* %910, align 4, !tbaa !24
  %912 = fpext half %911 to float
  %913 = fmul fast float %907, %912
  %914 = fmul fast float %871, %760
  %915 = fmul fast float %877, %778
  %916 = fadd fast float %915, %914
  %917 = fmul fast float %884, %796
  %918 = fadd fast float %916, %917
  %919 = fmul fast float %891, %814
  %920 = fadd fast float %918, %919
  %921 = fmul fast float %898, %832
  %922 = fadd fast float %920, %921
  %923 = fmul fast float %905, %850
  %924 = fadd fast float %922, %923
  %925 = mul i32 %614, 6
  %926 = add i32 1, %925
  %927 = getelementptr [384 x half], [384 x half] addrspace(3)* @"\01?shCoefScaler@@3PAY05$$CA$min16f@A.1dim", i32 0, i32 %926
  %928 = load half, half addrspace(3)* %927, align 4, !tbaa !24
  %929 = fpext half %928 to float
  %930 = fmul fast float %924, %929
  %931 = fadd fast float %930, %913
  %932 = fmul fast float %871, %763
  %933 = fmul fast float %877, %781
  %934 = fadd fast float %933, %932
  %935 = fmul fast float %884, %799
  %936 = fadd fast float %934, %935
  %937 = fmul fast float %891, %817
  %938 = fadd fast float %936, %937
  %939 = fmul fast float %898, %835
  %940 = fadd fast float %938, %939
  %941 = fmul fast float %905, %853
  %942 = fadd fast float %940, %941
  %943 = mul i32 %614, 6
  %944 = add i32 2, %943
  %945 = getelementptr [384 x half], [384 x half] addrspace(3)* @"\01?shCoefScaler@@3PAY05$$CA$min16f@A.1dim", i32 0, i32 %944
  %946 = load half, half addrspace(3)* %945, align 4, !tbaa !24
  %947 = fpext half %946 to float
  %948 = fmul fast float %942, %947
  %949 = fadd fast float %931, %948
  %950 = fmul fast float %871, %766
  %951 = fmul fast float %877, %784
  %952 = fadd fast float %951, %950
  %953 = fmul fast float %884, %802
  %954 = fadd fast float %952, %953
  %955 = fmul fast float %891, %820
  %956 = fadd fast float %954, %955
  %957 = fmul fast float %898, %838
  %958 = fadd fast float %956, %957
  %959 = fmul fast float %905, %856
  %960 = fadd fast float %958, %959
  %961 = mul i32 %614, 6
  %962 = add i32 3, %961
  %963 = getelementptr [384 x half], [384 x half] addrspace(3)* @"\01?shCoefScaler@@3PAY05$$CA$min16f@A.1dim", i32 0, i32 %962
  %964 = load half, half addrspace(3)* %963, align 4, !tbaa !24
  %965 = fpext half %964 to float
  %966 = fmul fast float %960, %965
  %967 = fadd fast float %949, %966
  %968 = fmul fast float %871, %769
  %969 = fmul fast float %877, %787
  %970 = fadd fast float %969, %968
  %971 = fmul fast float %884, %805
  %972 = fadd fast float %970, %971
  %973 = fmul fast float %891, %823
  %974 = fadd fast float %972, %973
  %975 = fmul fast float %898, %841
  %976 = fadd fast float %974, %975
  %977 = fmul fast float %905, %859
  %978 = fadd fast float %976, %977
  %979 = mul i32 %614, 6
  %980 = add i32 4, %979
  %981 = getelementptr [384 x half], [384 x half] addrspace(3)* @"\01?shCoefScaler@@3PAY05$$CA$min16f@A.1dim", i32 0, i32 %980
  %982 = load half, half addrspace(3)* %981, align 4, !tbaa !24
  %983 = fpext half %982 to float
  %984 = fmul fast float %978, %983
  %985 = fadd fast float %967, %984
  %986 = fmul fast float %871, %772
  %987 = fmul fast float %877, %790
  %988 = fadd fast float %987, %986
  %989 = fmul fast float %884, %808
  %990 = fadd fast float %988, %989
  %991 = fmul fast float %891, %826
  %992 = fadd fast float %990, %991
  %993 = fmul fast float %898, %844
  %994 = fadd fast float %992, %993
  %995 = fmul fast float %905, %862
  %996 = fadd fast float %994, %995
  %997 = mul i32 %614, 6
  %998 = add i32 5, %997
  %999 = getelementptr [384 x half], [384 x half] addrspace(3)* @"\01?shCoefScaler@@3PAY05$$CA$min16f@A.1dim", i32 0, i32 %998
  %1000 = load half, half addrspace(3)* %999, align 4, !tbaa !24
  %1001 = fpext half %1000 to float
  %1002 = fmul fast float %996, %1001
  %1003 = fadd fast float %985, %1002
  %1004 = fmul fast float %1003, %866
  %1005 = fcmp fast ogt float %750, 0.000000e+00
  br i1 %1005, label %1006, label %1128, !dx.controlflow.hints !28

; <label>:1006                                    ; preds = %615
  %1007 = fsub fast float %766, %763
  %1008 = fmul fast float %1007, %612
  %1009 = fadd fast float %1008, %763
  %1010 = fsub fast float %784, %781
  %1011 = fmul fast float %1010, %612
  %1012 = fadd fast float %1011, %781
  %1013 = fsub fast float %802, %799
  %1014 = fmul fast float %1013, %612
  %1015 = fadd fast float %1014, %799
  %1016 = fsub fast float %820, %817
  %1017 = fmul fast float %1016, %612
  %1018 = fadd fast float %1017, %817
  %1019 = fsub fast float %838, %835
  %1020 = fmul fast float %1019, %612
  %1021 = fadd fast float %1020, %835
  %1022 = fsub fast float %856, %853
  %1023 = fmul fast float %1022, %612
  %1024 = fadd fast float %1023, %853
  %1025 = fmul fast float %871, %1009
  %1026 = fmul fast float %877, %1012
  %1027 = fadd fast float %1026, %1025
  %1028 = fmul fast float %884, %1015
  %1029 = fadd fast float %1027, %1028
  %1030 = fmul fast float %891, %1018
  %1031 = fadd fast float %1029, %1030
  %1032 = fmul fast float %898, %1021
  %1033 = fadd fast float %1031, %1032
  %1034 = fmul fast float %905, %1024
  %1035 = fadd fast float %1033, %1034
  %1036 = mul i32 %632, 6
  %1037 = add i32 0, %1036
  %1038 = getelementptr [384 x half], [384 x half] addrspace(3)* @"\01?shCoefUSM@@3PAY05$$CA$min16f@A.1dim", i32 0, i32 %1037
  %1039 = load half, half addrspace(3)* %1038, align 4, !tbaa !24
  %1040 = fpext half %1039 to float
  %1041 = fmul fast float %1040, %1009
  %1042 = mul i32 %632, 6
  %1043 = add i32 1, %1042
  %1044 = getelementptr [384 x half], [384 x half] addrspace(3)* @"\01?shCoefUSM@@3PAY05$$CA$min16f@A.1dim", i32 0, i32 %1043
  %1045 = load half, half addrspace(3)* %1044, align 4, !tbaa !24
  %1046 = fpext half %1045 to float
  %1047 = fmul fast float %1046, %1012
  %1048 = fadd fast float %1047, %1041
  %1049 = mul i32 %632, 6
  %1050 = add i32 2, %1049
  %1051 = getelementptr [384 x half], [384 x half] addrspace(3)* @"\01?shCoefUSM@@3PAY05$$CA$min16f@A.1dim", i32 0, i32 %1050
  %1052 = load half, half addrspace(3)* %1051, align 4, !tbaa !24
  %1053 = fpext half %1052 to float
  %1054 = fmul fast float %1053, %1015
  %1055 = fadd fast float %1048, %1054
  %1056 = mul i32 %632, 6
  %1057 = add i32 3, %1056
  %1058 = getelementptr [384 x half], [384 x half] addrspace(3)* @"\01?shCoefUSM@@3PAY05$$CA$min16f@A.1dim", i32 0, i32 %1057
  %1059 = load half, half addrspace(3)* %1058, align 4, !tbaa !24
  %1060 = fpext half %1059 to float
  %1061 = fmul fast float %1060, %1018
  %1062 = fadd fast float %1055, %1061
  %1063 = mul i32 %632, 6
  %1064 = add i32 4, %1063
  %1065 = getelementptr [384 x half], [384 x half] addrspace(3)* @"\01?shCoefUSM@@3PAY05$$CA$min16f@A.1dim", i32 0, i32 %1064
  %1066 = load half, half addrspace(3)* %1065, align 4, !tbaa !24
  %1067 = fpext half %1066 to float
  %1068 = fmul fast float %1067, %1021
  %1069 = fadd fast float %1062, %1068
  %1070 = mul i32 %632, 6
  %1071 = add i32 5, %1070
  %1072 = getelementptr [384 x half], [384 x half] addrspace(3)* @"\01?shCoefUSM@@3PAY05$$CA$min16f@A.1dim", i32 0, i32 %1071
  %1073 = load half, half addrspace(3)* %1072, align 4, !tbaa !24
  %1074 = fpext half %1073 to float
  %1075 = fmul fast float %1074, %1024
  %1076 = fadd fast float %1069, %1075
  %1077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1078 = extractvalue %dx.types.CBufRet.f32 %1077, 2
  %1079 = fsub fast float %1035, %1078
  %1080 = extractvalue %dx.types.CBufRet.f32 %1077, 3
  %1081 = fmul fast float %1079, %1080
  %1082 = call float @dx.op.unary.f32(i32 7, float %1081)  ; Saturate(value)
  %1083 = fsub fast float 1.000000e+00, %1082
  %1084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1085 = extractvalue %dx.types.CBufRet.f32 %1084, 1
  %1086 = fmul fast float %1085, %1083
  %1087 = extractvalue %dx.types.CBufRet.f32 %1084, 0
  %1088 = fadd fast float %1086, %1087
  %1089 = fmul fast float %1088, %1076
  %1090 = extractvalue %dx.types.CBufRet.f32 %1084, 3
  %1091 = fmul fast float %1090, %1083
  %1092 = extractvalue %dx.types.CBufRet.f32 %1084, 2
  %1093 = fadd fast float %1091, %1092
  %1094 = fmul fast float %1093, %1035
  %1095 = fsub fast float -0.000000e+00, %1094
  %1096 = call float @dx.op.binary.f32(i32 35, float %1095, float %1089)  ; FMax(a,b)
  %1097 = call float @dx.op.binary.f32(i32 36, float %1094, float %1096)  ; FMin(a,b)
  %1098 = icmp slt i32 %632, 33
  %1099 = select i1 %1098, float %1009, float %1018
  %1100 = call float @dx.op.binary.f32(i32 36, float %1012, float %1015)  ; FMin(a,b)
  %1101 = call float @dx.op.binary.f32(i32 36, float %1100, float %1099)  ; FMin(a,b)
  %1102 = call float @dx.op.binary.f32(i32 35, float %1012, float %1015)  ; FMax(a,b)
  %1103 = call float @dx.op.binary.f32(i32 35, float %1102, float %1099)  ; FMax(a,b)
  %1104 = select i1 %1098, float %1015, float %1024
  %1105 = call float @dx.op.binary.f32(i32 36, float %1018, float %1021)  ; FMin(a,b)
  %1106 = call float @dx.op.binary.f32(i32 36, float %1105, float %1104)  ; FMin(a,b)
  %1107 = call float @dx.op.binary.f32(i32 35, float %1018, float %1021)  ; FMax(a,b)
  %1108 = call float @dx.op.binary.f32(i32 35, float %1107, float %1104)  ; FMax(a,b)
  %1109 = fsub fast float %1103, %1101
  %1110 = fsub fast float %1108, %1106
  %1111 = call float @dx.op.binary.f32(i32 35, float %1109, float %1110)  ; FMax(a,b)
  %1112 = call float @dx.op.binary.f32(i32 36, float %1109, float %1110)  ; FMin(a,b)
  %1113 = extractvalue %dx.types.CBufRet.f32 %1077, 1
  %1114 = fadd fast float %1113, %1112
  %1115 = fdiv fast float %1111, %1114
  %1116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1117 = extractvalue %dx.types.CBufRet.f32 %1116, 2
  %1118 = fsub fast float %1115, %1117
  %1119 = extractvalue %dx.types.CBufRet.f32 %1116, 3
  %1120 = fmul fast float %1118, %1119
  %1121 = call float @dx.op.unary.f32(i32 7, float %1120)  ; Saturate(value)
  %1122 = fsub fast float 1.000000e+00, %1121
  %1123 = extractvalue %dx.types.CBufRet.f32 %1077, 0
  %1124 = fmul fast float %1122, %1097
  %1125 = fmul fast float %1124, %1123
  %1126 = fadd fast float %1125, %1035
  %1127 = fmul fast float %1126, %750
  br label %1128

; <label>:1128                                    ; preds = %1006, %615
  %1129 = phi float [ %1127, %1006 ], [ 0.000000e+00, %615 ]
  %1130 = fcmp fast ogt float %751, 0.000000e+00
  br i1 %1130, label %1131, label %1254, !dx.controlflow.hints !29

; <label>:1131                                    ; preds = %1128
  %1132 = fsub fast float %811, %793
  %1133 = fmul fast float %1132, %630
  %1134 = fadd fast float %1133, %793
  %1135 = fsub fast float %814, %796
  %1136 = fmul fast float %1135, %630
  %1137 = fadd fast float %1136, %796
  %1138 = fsub fast float %817, %799
  %1139 = fmul fast float %1138, %630
  %1140 = fadd fast float %1139, %799
  %1141 = fsub fast float %820, %802
  %1142 = fmul fast float %1141, %630
  %1143 = fadd fast float %1142, %802
  %1144 = fsub fast float %823, %805
  %1145 = fmul fast float %1144, %630
  %1146 = fadd fast float %1145, %805
  %1147 = fsub fast float %826, %808
  %1148 = fmul fast float %1147, %630
  %1149 = fadd fast float %1148, %808
  %1150 = fmul fast float %912, %1134
  %1151 = fmul fast float %929, %1137
  %1152 = fadd fast float %1151, %1150
  %1153 = fmul fast float %947, %1140
  %1154 = fadd fast float %1152, %1153
  %1155 = fmul fast float %965, %1143
  %1156 = fadd fast float %1154, %1155
  %1157 = fmul fast float %983, %1146
  %1158 = fadd fast float %1156, %1157
  %1159 = fmul fast float %1001, %1149
  %1160 = fadd fast float %1158, %1159
  %1161 = mul i32 %614, 6
  %1162 = add i32 0, %1161
  %1163 = getelementptr [384 x half], [384 x half] addrspace(3)* @"\01?shCoefUSM@@3PAY05$$CA$min16f@A.1dim", i32 0, i32 %1162
  %1164 = load half, half addrspace(3)* %1163, align 4, !tbaa !24
  %1165 = fpext half %1164 to float
  %1166 = fmul fast float %1165, %1134
  %1167 = mul i32 %614, 6
  %1168 = add i32 1, %1167
  %1169 = getelementptr [384 x half], [384 x half] addrspace(3)* @"\01?shCoefUSM@@3PAY05$$CA$min16f@A.1dim", i32 0, i32 %1168
  %1170 = load half, half addrspace(3)* %1169, align 4, !tbaa !24
  %1171 = fpext half %1170 to float
  %1172 = fmul fast float %1171, %1137
  %1173 = fadd fast float %1172, %1166
  %1174 = mul i32 %614, 6
  %1175 = add i32 2, %1174
  %1176 = getelementptr [384 x half], [384 x half] addrspace(3)* @"\01?shCoefUSM@@3PAY05$$CA$min16f@A.1dim", i32 0, i32 %1175
  %1177 = load half, half addrspace(3)* %1176, align 4, !tbaa !24
  %1178 = fpext half %1177 to float
  %1179 = fmul fast float %1178, %1140
  %1180 = fadd fast float %1173, %1179
  %1181 = mul i32 %614, 6
  %1182 = add i32 3, %1181
  %1183 = getelementptr [384 x half], [384 x half] addrspace(3)* @"\01?shCoefUSM@@3PAY05$$CA$min16f@A.1dim", i32 0, i32 %1182
  %1184 = load half, half addrspace(3)* %1183, align 4, !tbaa !24
  %1185 = fpext half %1184 to float
  %1186 = fmul fast float %1185, %1143
  %1187 = fadd fast float %1180, %1186
  %1188 = mul i32 %614, 6
  %1189 = add i32 4, %1188
  %1190 = getelementptr [384 x half], [384 x half] addrspace(3)* @"\01?shCoefUSM@@3PAY05$$CA$min16f@A.1dim", i32 0, i32 %1189
  %1191 = load half, half addrspace(3)* %1190, align 4, !tbaa !24
  %1192 = fpext half %1191 to float
  %1193 = fmul fast float %1192, %1146
  %1194 = fadd fast float %1187, %1193
  %1195 = mul i32 %614, 6
  %1196 = add i32 5, %1195
  %1197 = getelementptr [384 x half], [384 x half] addrspace(3)* @"\01?shCoefUSM@@3PAY05$$CA$min16f@A.1dim", i32 0, i32 %1196
  %1198 = load half, half addrspace(3)* %1197, align 4, !tbaa !24
  %1199 = fpext half %1198 to float
  %1200 = fmul fast float %1199, %1149
  %1201 = fadd fast float %1194, %1200
  %1202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1203 = extractvalue %dx.types.CBufRet.f32 %1202, 2
  %1204 = fsub fast float %1160, %1203
  %1205 = extractvalue %dx.types.CBufRet.f32 %1202, 3
  %1206 = fmul fast float %1204, %1205
  %1207 = call float @dx.op.unary.f32(i32 7, float %1206)  ; Saturate(value)
  %1208 = fsub fast float 1.000000e+00, %1207
  %1209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1210 = extractvalue %dx.types.CBufRet.f32 %1209, 1
  %1211 = fmul fast float %1210, %1208
  %1212 = extractvalue %dx.types.CBufRet.f32 %1209, 0
  %1213 = fadd fast float %1211, %1212
  %1214 = fmul fast float %1213, %1201
  %1215 = extractvalue %dx.types.CBufRet.f32 %1209, 3
  %1216 = fmul fast float %1215, %1208
  %1217 = extractvalue %dx.types.CBufRet.f32 %1209, 2
  %1218 = fadd fast float %1216, %1217
  %1219 = fmul fast float %1218, %1160
  %1220 = fsub fast float -0.000000e+00, %1219
  %1221 = call float @dx.op.binary.f32(i32 35, float %1220, float %1214)  ; FMax(a,b)
  %1222 = call float @dx.op.binary.f32(i32 36, float %1219, float %1221)  ; FMin(a,b)
  %1223 = icmp slt i32 %614, 33
  %1224 = select i1 %1223, float %1134, float %1143
  %1225 = call float @dx.op.binary.f32(i32 36, float %1137, float %1140)  ; FMin(a,b)
  %1226 = call float @dx.op.binary.f32(i32 36, float %1225, float %1224)  ; FMin(a,b)
  %1227 = call float @dx.op.binary.f32(i32 35, float %1137, float %1140)  ; FMax(a,b)
  %1228 = call float @dx.op.binary.f32(i32 35, float %1227, float %1224)  ; FMax(a,b)
  %1229 = select i1 %1223, float %1140, float %1149
  %1230 = call float @dx.op.binary.f32(i32 36, float %1143, float %1146)  ; FMin(a,b)
  %1231 = call float @dx.op.binary.f32(i32 36, float %1230, float %1229)  ; FMin(a,b)
  %1232 = call float @dx.op.binary.f32(i32 35, float %1143, float %1146)  ; FMax(a,b)
  %1233 = call float @dx.op.binary.f32(i32 35, float %1232, float %1229)  ; FMax(a,b)
  %1234 = fsub fast float %1228, %1226
  %1235 = fsub fast float %1233, %1231
  %1236 = call float @dx.op.binary.f32(i32 35, float %1234, float %1235)  ; FMax(a,b)
  %1237 = call float @dx.op.binary.f32(i32 36, float %1234, float %1235)  ; FMin(a,b)
  %1238 = extractvalue %dx.types.CBufRet.f32 %1202, 1
  %1239 = fadd fast float %1238, %1237
  %1240 = fdiv fast float %1236, %1239
  %1241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1242 = extractvalue %dx.types.CBufRet.f32 %1241, 2
  %1243 = fsub fast float %1240, %1242
  %1244 = extractvalue %dx.types.CBufRet.f32 %1241, 3
  %1245 = fmul fast float %1243, %1244
  %1246 = call float @dx.op.unary.f32(i32 7, float %1245)  ; Saturate(value)
  %1247 = fsub fast float 1.000000e+00, %1246
  %1248 = extractvalue %dx.types.CBufRet.f32 %1202, 0
  %1249 = fmul fast float %1247, %1222
  %1250 = fmul fast float %1249, %1248
  %1251 = fadd fast float %1250, %1160
  %1252 = fmul fast float %1251, %751
  %1253 = fadd fast float %1252, %1129
  br label %1254

; <label>:1254                                    ; preds = %1131, %1128
  %1255 = phi float [ %1253, %1131 ], [ %1129, %1128 ]
  %1256 = fcmp fast ogt float %752, 0.000000e+00
  br i1 %1256, label %1257, label %1436, !dx.controlflow.hints !30

; <label>:1257                                    ; preds = %1254
  %1258 = fsub fast float %612, %630
  %1259 = fmul fast float %1258, 5.000000e-01
  %1260 = fadd fast float %1259, 5.000000e-01
  %1261 = fsub fast float %781, %796
  %1262 = fmul fast float %1261, %1260
  %1263 = fadd fast float %1262, %796
  %1264 = fsub fast float %802, %817
  %1265 = fmul fast float %1264, %1260
  %1266 = fadd fast float %1265, %817
  %1267 = fsub fast float %823, %838
  %1268 = fmul fast float %1267, %1260
  %1269 = fadd fast float %1268, %838
  %1270 = fcmp fast oge float %1259, 0.000000e+00
  %1271 = select i1 %1270, float %763, float %793
  %1272 = select i1 %1270, float %784, float %814
  %1273 = select i1 %1270, float %805, float %835
  %1274 = call float @dx.op.unary.f32(i32 6, float %1259)  ; FAbs(value)
  %1275 = fsub fast float %1271, %778
  %1276 = fmul fast float %1274, %1275
  %1277 = fadd fast float %1276, %778
  %1278 = fsub fast float %1272, %799
  %1279 = fmul fast float %1274, %1278
  %1280 = fadd fast float %1279, %799
  %1281 = fsub fast float %1273, %820
  %1282 = fmul fast float %1274, %1281
  %1283 = fadd fast float %1282, %820
  %1284 = fadd fast float %630, %612
  %1285 = fcmp fast ult float %1284, 1.000000e+00
  br i1 %1285, label %1292, label %1286, !dx.controlflow.hints !31

; <label>:1286                                    ; preds = %1257
  %1287 = select i1 %1270, float %826, float %856
  %1288 = fsub fast float %1287, %841
  %1289 = fmul fast float %1274, %1288
  %1290 = fadd fast float %1289, %841
  %1291 = fadd fast float %1284, -1.000000e+00
  br label %1292

; <label>:1292                                    ; preds = %1286, %1257
  %1293 = phi float [ %1290, %1286 ], [ %1269, %1257 ]
  %1294 = phi float [ %1269, %1286 ], [ %1283, %1257 ]
  %1295 = phi float [ %1283, %1286 ], [ %1266, %1257 ]
  %1296 = phi float [ %1266, %1286 ], [ %1280, %1257 ]
  %1297 = phi float [ %1280, %1286 ], [ %1263, %1257 ]
  %1298 = phi float [ %1263, %1286 ], [ %1277, %1257 ]
  %1299 = phi float [ %1291, %1286 ], [ %1284, %1257 ]
  %1300 = fmul fast float %1299, 6.400000e+01
  %1301 = fptosi float %1300 to i32
  %1302 = mul i32 %1301, 6
  %1303 = add i32 0, %1302
  %1304 = getelementptr [384 x half], [384 x half] addrspace(3)* @"\01?shCoefScaler@@3PAY05$$CA$min16f@A.1dim", i32 0, i32 %1303
  %1305 = load half, half addrspace(3)* %1304, align 4, !tbaa !24
  %1306 = fpext half %1305 to float
  %1307 = fmul fast float %1306, %1298
  %1308 = mul i32 %1301, 6
  %1309 = add i32 1, %1308
  %1310 = getelementptr [384 x half], [384 x half] addrspace(3)* @"\01?shCoefScaler@@3PAY05$$CA$min16f@A.1dim", i32 0, i32 %1309
  %1311 = load half, half addrspace(3)* %1310, align 4, !tbaa !24
  %1312 = fpext half %1311 to float
  %1313 = fmul fast float %1312, %1297
  %1314 = fadd fast float %1313, %1307
  %1315 = mul i32 %1301, 6
  %1316 = add i32 2, %1315
  %1317 = getelementptr [384 x half], [384 x half] addrspace(3)* @"\01?shCoefScaler@@3PAY05$$CA$min16f@A.1dim", i32 0, i32 %1316
  %1318 = load half, half addrspace(3)* %1317, align 4, !tbaa !24
  %1319 = fpext half %1318 to float
  %1320 = fmul fast float %1319, %1296
  %1321 = fadd fast float %1314, %1320
  %1322 = mul i32 %1301, 6
  %1323 = add i32 3, %1322
  %1324 = getelementptr [384 x half], [384 x half] addrspace(3)* @"\01?shCoefScaler@@3PAY05$$CA$min16f@A.1dim", i32 0, i32 %1323
  %1325 = load half, half addrspace(3)* %1324, align 4, !tbaa !24
  %1326 = fpext half %1325 to float
  %1327 = fmul fast float %1326, %1295
  %1328 = fadd fast float %1321, %1327
  %1329 = mul i32 %1301, 6
  %1330 = add i32 4, %1329
  %1331 = getelementptr [384 x half], [384 x half] addrspace(3)* @"\01?shCoefScaler@@3PAY05$$CA$min16f@A.1dim", i32 0, i32 %1330
  %1332 = load half, half addrspace(3)* %1331, align 4, !tbaa !24
  %1333 = fpext half %1332 to float
  %1334 = fmul fast float %1333, %1294
  %1335 = fadd fast float %1328, %1334
  %1336 = mul i32 %1301, 6
  %1337 = add i32 5, %1336
  %1338 = getelementptr [384 x half], [384 x half] addrspace(3)* @"\01?shCoefScaler@@3PAY05$$CA$min16f@A.1dim", i32 0, i32 %1337
  %1339 = load half, half addrspace(3)* %1338, align 4, !tbaa !24
  %1340 = fpext half %1339 to float
  %1341 = fmul fast float %1340, %1293
  %1342 = fadd fast float %1335, %1341
  %1343 = mul i32 %1301, 6
  %1344 = add i32 0, %1343
  %1345 = getelementptr [384 x half], [384 x half] addrspace(3)* @"\01?shCoefUSM@@3PAY05$$CA$min16f@A.1dim", i32 0, i32 %1344
  %1346 = load half, half addrspace(3)* %1345, align 4, !tbaa !24
  %1347 = fpext half %1346 to float
  %1348 = fmul fast float %1347, %1298
  %1349 = mul i32 %1301, 6
  %1350 = add i32 1, %1349
  %1351 = getelementptr [384 x half], [384 x half] addrspace(3)* @"\01?shCoefUSM@@3PAY05$$CA$min16f@A.1dim", i32 0, i32 %1350
  %1352 = load half, half addrspace(3)* %1351, align 4, !tbaa !24
  %1353 = fpext half %1352 to float
  %1354 = fmul fast float %1353, %1297
  %1355 = fadd fast float %1354, %1348
  %1356 = mul i32 %1301, 6
  %1357 = add i32 2, %1356
  %1358 = getelementptr [384 x half], [384 x half] addrspace(3)* @"\01?shCoefUSM@@3PAY05$$CA$min16f@A.1dim", i32 0, i32 %1357
  %1359 = load half, half addrspace(3)* %1358, align 4, !tbaa !24
  %1360 = fpext half %1359 to float
  %1361 = fmul fast float %1360, %1296
  %1362 = fadd fast float %1355, %1361
  %1363 = mul i32 %1301, 6
  %1364 = add i32 3, %1363
  %1365 = getelementptr [384 x half], [384 x half] addrspace(3)* @"\01?shCoefUSM@@3PAY05$$CA$min16f@A.1dim", i32 0, i32 %1364
  %1366 = load half, half addrspace(3)* %1365, align 4, !tbaa !24
  %1367 = fpext half %1366 to float
  %1368 = fmul fast float %1367, %1295
  %1369 = fadd fast float %1362, %1368
  %1370 = mul i32 %1301, 6
  %1371 = add i32 4, %1370
  %1372 = getelementptr [384 x half], [384 x half] addrspace(3)* @"\01?shCoefUSM@@3PAY05$$CA$min16f@A.1dim", i32 0, i32 %1371
  %1373 = load half, half addrspace(3)* %1372, align 4, !tbaa !24
  %1374 = fpext half %1373 to float
  %1375 = fmul fast float %1374, %1294
  %1376 = fadd fast float %1369, %1375
  %1377 = mul i32 %1301, 6
  %1378 = add i32 5, %1377
  %1379 = getelementptr [384 x half], [384 x half] addrspace(3)* @"\01?shCoefUSM@@3PAY05$$CA$min16f@A.1dim", i32 0, i32 %1378
  %1380 = load half, half addrspace(3)* %1379, align 4, !tbaa !24
  %1381 = fpext half %1380 to float
  %1382 = fmul fast float %1381, %1293
  %1383 = fadd fast float %1376, %1382
  %1384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1385 = extractvalue %dx.types.CBufRet.f32 %1384, 2
  %1386 = fsub fast float %1342, %1385
  %1387 = extractvalue %dx.types.CBufRet.f32 %1384, 3
  %1388 = fmul fast float %1386, %1387
  %1389 = call float @dx.op.unary.f32(i32 7, float %1388)  ; Saturate(value)
  %1390 = fsub fast float 1.000000e+00, %1389
  %1391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1392 = extractvalue %dx.types.CBufRet.f32 %1391, 1
  %1393 = fmul fast float %1392, %1390
  %1394 = extractvalue %dx.types.CBufRet.f32 %1391, 0
  %1395 = fadd fast float %1393, %1394
  %1396 = fmul fast float %1395, %1383
  %1397 = extractvalue %dx.types.CBufRet.f32 %1391, 3
  %1398 = fmul fast float %1397, %1390
  %1399 = extractvalue %dx.types.CBufRet.f32 %1391, 2
  %1400 = fadd fast float %1398, %1399
  %1401 = fmul fast float %1400, %1342
  %1402 = fsub fast float -0.000000e+00, %1401
  %1403 = call float @dx.op.binary.f32(i32 35, float %1402, float %1396)  ; FMax(a,b)
  %1404 = call float @dx.op.binary.f32(i32 36, float %1401, float %1403)  ; FMin(a,b)
  %1405 = icmp slt i32 %1301, 33
  %1406 = select i1 %1405, float %1298, float %1295
  %1407 = call float @dx.op.binary.f32(i32 36, float %1297, float %1296)  ; FMin(a,b)
  %1408 = call float @dx.op.binary.f32(i32 36, float %1407, float %1406)  ; FMin(a,b)
  %1409 = call float @dx.op.binary.f32(i32 35, float %1297, float %1296)  ; FMax(a,b)
  %1410 = call float @dx.op.binary.f32(i32 35, float %1409, float %1406)  ; FMax(a,b)
  %1411 = select i1 %1405, float %1296, float %1293
  %1412 = call float @dx.op.binary.f32(i32 36, float %1295, float %1294)  ; FMin(a,b)
  %1413 = call float @dx.op.binary.f32(i32 36, float %1412, float %1411)  ; FMin(a,b)
  %1414 = call float @dx.op.binary.f32(i32 35, float %1295, float %1294)  ; FMax(a,b)
  %1415 = call float @dx.op.binary.f32(i32 35, float %1414, float %1411)  ; FMax(a,b)
  %1416 = fsub fast float %1410, %1408
  %1417 = fsub fast float %1415, %1413
  %1418 = call float @dx.op.binary.f32(i32 35, float %1416, float %1417)  ; FMax(a,b)
  %1419 = call float @dx.op.binary.f32(i32 36, float %1416, float %1417)  ; FMin(a,b)
  %1420 = extractvalue %dx.types.CBufRet.f32 %1384, 1
  %1421 = fadd fast float %1420, %1419
  %1422 = fdiv fast float %1418, %1421
  %1423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1424 = extractvalue %dx.types.CBufRet.f32 %1423, 2
  %1425 = fsub fast float %1422, %1424
  %1426 = extractvalue %dx.types.CBufRet.f32 %1423, 3
  %1427 = fmul fast float %1425, %1426
  %1428 = call float @dx.op.unary.f32(i32 7, float %1427)  ; Saturate(value)
  %1429 = fsub fast float 1.000000e+00, %1428
  %1430 = extractvalue %dx.types.CBufRet.f32 %1384, 0
  %1431 = fmul fast float %1429, %1404
  %1432 = fmul fast float %1431, %1430
  %1433 = fadd fast float %1432, %1342
  %1434 = fmul fast float %1433, %752
  %1435 = fadd fast float %1434, %1255
  br label %1436

; <label>:1436                                    ; preds = %1292, %1254
  %1437 = phi float [ %1435, %1292 ], [ %1255, %1254 ]
  %1438 = fcmp fast ogt float %753, 0.000000e+00
  br i1 %1438, label %1439, label %1618, !dx.controlflow.hints !32

; <label>:1439                                    ; preds = %1436
  %1440 = fadd fast float %630, %612
  %1441 = fmul fast float %1440, 5.000000e-01
  %1442 = fsub fast float %835, %814
  %1443 = fmul fast float %1442, %1441
  %1444 = fadd fast float %1443, %814
  %1445 = fsub fast float %820, %799
  %1446 = fmul fast float %1445, %1441
  %1447 = fadd fast float %1446, %799
  %1448 = fsub fast float %805, %784
  %1449 = fmul fast float %1448, %1441
  %1450 = fadd fast float %1449, %784
  %1451 = fadd fast float %1441, -5.000000e-01
  %1452 = fcmp fast oge float %1451, 0.000000e+00
  %1453 = select i1 %1452, float %838, float %796
  %1454 = select i1 %1452, float %823, float %781
  %1455 = select i1 %1452, float %808, float %766
  %1456 = call float @dx.op.unary.f32(i32 6, float %1451)  ; FAbs(value)
  %1457 = fsub fast float %1453, %817
  %1458 = fmul fast float %1456, %1457
  %1459 = fadd fast float %1458, %817
  %1460 = fsub fast float %1454, %802
  %1461 = fmul fast float %1456, %1460
  %1462 = fadd fast float %1461, %802
  %1463 = fsub fast float %1455, %787
  %1464 = fmul fast float %1456, %1463
  %1465 = fadd fast float %1464, %787
  %1466 = fsub fast float %612, %630
  %1467 = fadd fast float %1466, 1.000000e+00
  %1468 = fcmp fast ult float %1467, 1.000000e+00
  br i1 %1468, label %1469, label %1474, !dx.controlflow.hints !33

; <label>:1469                                    ; preds = %1439
  %1470 = select i1 %1452, float %853, float %811
  %1471 = fsub fast float %1470, %832
  %1472 = fmul fast float %1456, %1471
  %1473 = fadd fast float %1472, %832
  br label %1474

; <label>:1474                                    ; preds = %1469, %1439
  %1475 = phi float [ %1450, %1469 ], [ %1465, %1439 ]
  %1476 = phi float [ %1462, %1469 ], [ %1450, %1439 ]
  %1477 = phi float [ %1447, %1469 ], [ %1462, %1439 ]
  %1478 = phi float [ %1459, %1469 ], [ %1447, %1439 ]
  %1479 = phi float [ %1444, %1469 ], [ %1459, %1439 ]
  %1480 = phi float [ %1473, %1469 ], [ %1444, %1439 ]
  %1481 = phi float [ %1467, %1469 ], [ %1466, %1439 ]
  %1482 = fmul fast float %1481, 6.400000e+01
  %1483 = fptosi float %1482 to i32
  %1484 = mul i32 %1483, 6
  %1485 = add i32 0, %1484
  %1486 = getelementptr [384 x half], [384 x half] addrspace(3)* @"\01?shCoefScaler@@3PAY05$$CA$min16f@A.1dim", i32 0, i32 %1485
  %1487 = load half, half addrspace(3)* %1486, align 4, !tbaa !24
  %1488 = fpext half %1487 to float
  %1489 = fmul fast float %1488, %1480
  %1490 = mul i32 %1483, 6
  %1491 = add i32 1, %1490
  %1492 = getelementptr [384 x half], [384 x half] addrspace(3)* @"\01?shCoefScaler@@3PAY05$$CA$min16f@A.1dim", i32 0, i32 %1491
  %1493 = load half, half addrspace(3)* %1492, align 4, !tbaa !24
  %1494 = fpext half %1493 to float
  %1495 = fmul fast float %1494, %1479
  %1496 = fadd fast float %1495, %1489
  %1497 = mul i32 %1483, 6
  %1498 = add i32 2, %1497
  %1499 = getelementptr [384 x half], [384 x half] addrspace(3)* @"\01?shCoefScaler@@3PAY05$$CA$min16f@A.1dim", i32 0, i32 %1498
  %1500 = load half, half addrspace(3)* %1499, align 4, !tbaa !24
  %1501 = fpext half %1500 to float
  %1502 = fmul fast float %1501, %1478
  %1503 = fadd fast float %1496, %1502
  %1504 = mul i32 %1483, 6
  %1505 = add i32 3, %1504
  %1506 = getelementptr [384 x half], [384 x half] addrspace(3)* @"\01?shCoefScaler@@3PAY05$$CA$min16f@A.1dim", i32 0, i32 %1505
  %1507 = load half, half addrspace(3)* %1506, align 4, !tbaa !24
  %1508 = fpext half %1507 to float
  %1509 = fmul fast float %1508, %1477
  %1510 = fadd fast float %1503, %1509
  %1511 = mul i32 %1483, 6
  %1512 = add i32 4, %1511
  %1513 = getelementptr [384 x half], [384 x half] addrspace(3)* @"\01?shCoefScaler@@3PAY05$$CA$min16f@A.1dim", i32 0, i32 %1512
  %1514 = load half, half addrspace(3)* %1513, align 4, !tbaa !24
  %1515 = fpext half %1514 to float
  %1516 = fmul fast float %1515, %1476
  %1517 = fadd fast float %1510, %1516
  %1518 = mul i32 %1483, 6
  %1519 = add i32 5, %1518
  %1520 = getelementptr [384 x half], [384 x half] addrspace(3)* @"\01?shCoefScaler@@3PAY05$$CA$min16f@A.1dim", i32 0, i32 %1519
  %1521 = load half, half addrspace(3)* %1520, align 4, !tbaa !24
  %1522 = fpext half %1521 to float
  %1523 = fmul fast float %1522, %1475
  %1524 = fadd fast float %1517, %1523
  %1525 = mul i32 %1483, 6
  %1526 = add i32 0, %1525
  %1527 = getelementptr [384 x half], [384 x half] addrspace(3)* @"\01?shCoefUSM@@3PAY05$$CA$min16f@A.1dim", i32 0, i32 %1526
  %1528 = load half, half addrspace(3)* %1527, align 4, !tbaa !24
  %1529 = fpext half %1528 to float
  %1530 = fmul fast float %1529, %1480
  %1531 = mul i32 %1483, 6
  %1532 = add i32 1, %1531
  %1533 = getelementptr [384 x half], [384 x half] addrspace(3)* @"\01?shCoefUSM@@3PAY05$$CA$min16f@A.1dim", i32 0, i32 %1532
  %1534 = load half, half addrspace(3)* %1533, align 4, !tbaa !24
  %1535 = fpext half %1534 to float
  %1536 = fmul fast float %1535, %1479
  %1537 = fadd fast float %1536, %1530
  %1538 = mul i32 %1483, 6
  %1539 = add i32 2, %1538
  %1540 = getelementptr [384 x half], [384 x half] addrspace(3)* @"\01?shCoefUSM@@3PAY05$$CA$min16f@A.1dim", i32 0, i32 %1539
  %1541 = load half, half addrspace(3)* %1540, align 4, !tbaa !24
  %1542 = fpext half %1541 to float
  %1543 = fmul fast float %1542, %1478
  %1544 = fadd fast float %1537, %1543
  %1545 = mul i32 %1483, 6
  %1546 = add i32 3, %1545
  %1547 = getelementptr [384 x half], [384 x half] addrspace(3)* @"\01?shCoefUSM@@3PAY05$$CA$min16f@A.1dim", i32 0, i32 %1546
  %1548 = load half, half addrspace(3)* %1547, align 4, !tbaa !24
  %1549 = fpext half %1548 to float
  %1550 = fmul fast float %1549, %1477
  %1551 = fadd fast float %1544, %1550
  %1552 = mul i32 %1483, 6
  %1553 = add i32 4, %1552
  %1554 = getelementptr [384 x half], [384 x half] addrspace(3)* @"\01?shCoefUSM@@3PAY05$$CA$min16f@A.1dim", i32 0, i32 %1553
  %1555 = load half, half addrspace(3)* %1554, align 4, !tbaa !24
  %1556 = fpext half %1555 to float
  %1557 = fmul fast float %1556, %1476
  %1558 = fadd fast float %1551, %1557
  %1559 = mul i32 %1483, 6
  %1560 = add i32 5, %1559
  %1561 = getelementptr [384 x half], [384 x half] addrspace(3)* @"\01?shCoefUSM@@3PAY05$$CA$min16f@A.1dim", i32 0, i32 %1560
  %1562 = load half, half addrspace(3)* %1561, align 4, !tbaa !24
  %1563 = fpext half %1562 to float
  %1564 = fmul fast float %1563, %1475
  %1565 = fadd fast float %1558, %1564
  %1566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1567 = extractvalue %dx.types.CBufRet.f32 %1566, 2
  %1568 = fsub fast float %1524, %1567
  %1569 = extractvalue %dx.types.CBufRet.f32 %1566, 3
  %1570 = fmul fast float %1568, %1569
  %1571 = call float @dx.op.unary.f32(i32 7, float %1570)  ; Saturate(value)
  %1572 = fsub fast float 1.000000e+00, %1571
  %1573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1574 = extractvalue %dx.types.CBufRet.f32 %1573, 1
  %1575 = fmul fast float %1574, %1572
  %1576 = extractvalue %dx.types.CBufRet.f32 %1573, 0
  %1577 = fadd fast float %1575, %1576
  %1578 = fmul fast float %1577, %1565
  %1579 = extractvalue %dx.types.CBufRet.f32 %1573, 3
  %1580 = fmul fast float %1579, %1572
  %1581 = extractvalue %dx.types.CBufRet.f32 %1573, 2
  %1582 = fadd fast float %1580, %1581
  %1583 = fmul fast float %1582, %1524
  %1584 = fsub fast float -0.000000e+00, %1583
  %1585 = call float @dx.op.binary.f32(i32 35, float %1584, float %1578)  ; FMax(a,b)
  %1586 = call float @dx.op.binary.f32(i32 36, float %1583, float %1585)  ; FMin(a,b)
  %1587 = icmp slt i32 %1483, 33
  %1588 = select i1 %1587, float %1480, float %1477
  %1589 = call float @dx.op.binary.f32(i32 36, float %1479, float %1478)  ; FMin(a,b)
  %1590 = call float @dx.op.binary.f32(i32 36, float %1589, float %1588)  ; FMin(a,b)
  %1591 = call float @dx.op.binary.f32(i32 35, float %1479, float %1478)  ; FMax(a,b)
  %1592 = call float @dx.op.binary.f32(i32 35, float %1591, float %1588)  ; FMax(a,b)
  %1593 = select i1 %1587, float %1478, float %1475
  %1594 = call float @dx.op.binary.f32(i32 36, float %1477, float %1476)  ; FMin(a,b)
  %1595 = call float @dx.op.binary.f32(i32 36, float %1594, float %1593)  ; FMin(a,b)
  %1596 = call float @dx.op.binary.f32(i32 35, float %1477, float %1476)  ; FMax(a,b)
  %1597 = call float @dx.op.binary.f32(i32 35, float %1596, float %1593)  ; FMax(a,b)
  %1598 = fsub fast float %1592, %1590
  %1599 = fsub fast float %1597, %1595
  %1600 = call float @dx.op.binary.f32(i32 35, float %1598, float %1599)  ; FMax(a,b)
  %1601 = call float @dx.op.binary.f32(i32 36, float %1598, float %1599)  ; FMin(a,b)
  %1602 = extractvalue %dx.types.CBufRet.f32 %1566, 1
  %1603 = fadd fast float %1602, %1601
  %1604 = fdiv fast float %1600, %1603
  %1605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1606 = extractvalue %dx.types.CBufRet.f32 %1605, 2
  %1607 = fsub fast float %1604, %1606
  %1608 = extractvalue %dx.types.CBufRet.f32 %1605, 3
  %1609 = fmul fast float %1607, %1608
  %1610 = call float @dx.op.unary.f32(i32 7, float %1609)  ; Saturate(value)
  %1611 = fsub fast float 1.000000e+00, %1610
  %1612 = extractvalue %dx.types.CBufRet.f32 %1566, 0
  %1613 = fmul fast float %1611, %1586
  %1614 = fmul fast float %1613, %1612
  %1615 = fadd fast float %1614, %1524
  %1616 = fmul fast float %1615, %753
  %1617 = fadd fast float %1616, %1437
  br label %1618

; <label>:1618                                    ; preds = %1474, %1436
  %1619 = phi float [ %1617, %1474 ], [ %1437, %1436 ]
  %1620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1621 = extractvalue %dx.types.CBufRet.f32 %1620, 0
  %1622 = fmul fast float %1621, %606
  %1623 = extractvalue %dx.types.CBufRet.f32 %1620, 1
  %1624 = fmul fast float %1623, %624
  %1625 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %5, float %1622, float %1624, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1626 = extractvalue %dx.types.ResRet.f32 %1625, 0
  %1627 = extractvalue %dx.types.ResRet.f32 %1625, 1
  %1628 = extractvalue %dx.types.ResRet.f32 %1625, 2
  %1629 = extractvalue %dx.types.ResRet.f32 %1625, 3
  %1630 = fmul fast float %1626, 0x3FCB367A00000000
  %1631 = fmul fast float %1627, 0x3FE6E2EB20000000
  %1632 = fmul fast float %1628, 0x3FB27BB300000000
  %1633 = fadd fast float %1619, %1004
  %1634 = fsub fast float %1633, %1631
  %1635 = fsub fast float %1634, %1630
  %1636 = fsub fast float %1635, %1632
  %1637 = fadd fast float %1636, %1626
  %1638 = fadd fast float %1636, %1627
  %1639 = fadd fast float %1636, %1628
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %601, i32 %619, i32 undef, float %1637, float %1638, float %1639, float %1629, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1640 = add nuw nsw i32 %616, 1
  %1641 = icmp eq i32 %1640, 8
  br i1 %1641, label %1642, label %615

; <label>:1642                                    ; preds = %1618
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
!17 = !{i32 0, i64 288, i32 4, !18}
!18 = !{i32 128, i32 1, i32 1}
!19 = !{!20, !20, i64 0}
!20 = !{!"float", !21, i64 0}
!21 = !{!"omnipotent char", !22, i64 0}
!22 = !{!"Simple C/C++ TBAA"}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = !{!25, !25, i64 0}
!25 = !{!"min16float", !21, i64 0}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}

