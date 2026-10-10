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
; shader hash: b8eb76154cb30a936c37f88cd5b0a0ab
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
;   [32 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb0     1
;                                   sampler      NA          NA      S0             s1     1
;                                   texture     f32          2d      T0             t0     1
;                                   texture     f32          2d      T1             t1     1
;                                   texture     f32          2d      T2             t2     1
;                                       UAV     u32          2d      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.RWTexture2D<unsigned int>" = type { i32 }
%ConstantBufferVRS_DX12 = type { float, float, float, float, float, float, float, float }
%struct.SamplerState = type { i32 }

@"\01?shadingRateShare@@3IA" = external addrspace(3) global i32, align 4
@shadingRateEnums = internal unnamed_addr constant [16 x i32] [i32 1, i32 1, i32 3, i32 11, i32 1, i32 1, i32 3, i32 11, i32 2, i32 2, i32 4, i32 6, i32 10, i32 10, i32 5, i32 7], align 4
@shadingRateEnumsConvertToDx12 = internal unnamed_addr constant [8 x i32] [i32 0, i32 0, i32 4, i32 1, i32 5, i32 9, i32 6, i32 10], align 4
@"\01?shadingColorsBuffer@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim" = addrspace(3) global [768 x float] undef, align 4

define void @cs_vrs_dx12() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %8 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %9 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %10 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %11 = ashr i32 %9, 4
  %12 = ashr i32 %10, 4
  %13 = or i32 %8, %7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16, !dx.controlflow.hints !20

; <label>:15                                      ; preds = %0
  store i32 0, i32 addrspace(3)* @"\01?shadingRateShare@@3IA", align 4, !tbaa !21
  br label %16

; <label>:16                                      ; preds = %15, %0
  %17 = or i32 %10, %9
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %107, !dx.controlflow.hints !25

; <label>:20                                      ; preds = %16
  %21 = sitofp i32 %9 to float
  %22 = sitofp i32 %10 to float
  %23 = fadd fast float %21, 5.000000e-01
  %24 = fadd fast float %22, 5.000000e-01
  %25 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %26 = extractvalue %dx.types.CBufRet.f32 %25, 2
  %27 = extractvalue %dx.types.CBufRet.f32 %25, 3
  %28 = fmul fast float %26, %23
  %29 = fmul fast float %27, %24
  %30 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %5, float %28, float %29, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %31 = extractvalue %dx.types.ResRet.f32 %30, 0
  %32 = extractvalue %dx.types.ResRet.f32 %30, 1
  %33 = extractvalue %dx.types.ResRet.f32 %30, 2
  %34 = extractvalue %dx.types.ResRet.f32 %30, 3
  %35 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %5, float %28, float %29, float undef, float undef, i32 0, i32 0, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %36 = extractvalue %dx.types.ResRet.f32 %35, 0
  %37 = extractvalue %dx.types.ResRet.f32 %35, 1
  %38 = extractvalue %dx.types.ResRet.f32 %35, 2
  %39 = extractvalue %dx.types.ResRet.f32 %35, 3
  %40 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %5, float %28, float %29, float undef, float undef, i32 0, i32 0, i32 2)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %41 = extractvalue %dx.types.ResRet.f32 %40, 0
  %42 = extractvalue %dx.types.ResRet.f32 %40, 1
  %43 = extractvalue %dx.types.ResRet.f32 %40, 2
  %44 = extractvalue %dx.types.ResRet.f32 %40, 3
  %45 = mul i32 %8, 16
  %46 = add i32 %7, %45
  %47 = mul i32 %46, 3
  %48 = add i32 0, %47
  %49 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?shadingColorsBuffer@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %48
  store float %31, float addrspace(3)* %49, align 4
  %50 = mul i32 %8, 16
  %51 = add i32 %7, %50
  %52 = mul i32 %51, 3
  %53 = add i32 1, %52
  %54 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?shadingColorsBuffer@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %53
  store float %36, float addrspace(3)* %54, align 4
  %55 = mul i32 %8, 16
  %56 = add i32 %7, %55
  %57 = mul i32 %56, 3
  %58 = add i32 2, %57
  %59 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?shadingColorsBuffer@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %58
  store float %41, float addrspace(3)* %59, align 4
  %60 = add nsw i32 %7, 1
  %61 = mul i32 %8, 16
  %62 = add i32 %60, %61
  %63 = mul i32 %62, 3
  %64 = add i32 0, %63
  %65 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?shadingColorsBuffer@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %64
  store float %32, float addrspace(3)* %65, align 4
  %66 = mul i32 %8, 16
  %67 = add i32 %60, %66
  %68 = mul i32 %67, 3
  %69 = add i32 1, %68
  %70 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?shadingColorsBuffer@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %69
  store float %37, float addrspace(3)* %70, align 4
  %71 = mul i32 %8, 16
  %72 = add i32 %60, %71
  %73 = mul i32 %72, 3
  %74 = add i32 2, %73
  %75 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?shadingColorsBuffer@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %74
  store float %42, float addrspace(3)* %75, align 4
  %76 = add nsw i32 %8, 1
  %77 = mul i32 %76, 16
  %78 = add i32 %7, %77
  %79 = mul i32 %78, 3
  %80 = add i32 0, %79
  %81 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?shadingColorsBuffer@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %80
  store float %33, float addrspace(3)* %81, align 4
  %82 = mul i32 %76, 16
  %83 = add i32 %7, %82
  %84 = mul i32 %83, 3
  %85 = add i32 1, %84
  %86 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?shadingColorsBuffer@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %85
  store float %38, float addrspace(3)* %86, align 4
  %87 = mul i32 %76, 16
  %88 = add i32 %7, %87
  %89 = mul i32 %88, 3
  %90 = add i32 2, %89
  %91 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?shadingColorsBuffer@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %90
  store float %43, float addrspace(3)* %91, align 4
  %92 = mul i32 %76, 16
  %93 = add i32 %60, %92
  %94 = mul i32 %93, 3
  %95 = add i32 0, %94
  %96 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?shadingColorsBuffer@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %95
  store float %34, float addrspace(3)* %96, align 4
  %97 = mul i32 %76, 16
  %98 = add i32 %60, %97
  %99 = mul i32 %98, 3
  %100 = add i32 1, %99
  %101 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?shadingColorsBuffer@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %100
  store float %39, float addrspace(3)* %101, align 4
  %102 = mul i32 %76, 16
  %103 = add i32 %60, %102
  %104 = mul i32 %103, 3
  %105 = add i32 2, %104
  %106 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?shadingColorsBuffer@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %105
  store float %44, float addrspace(3)* %106, align 4
  br label %107

; <label>:107                                     ; preds = %20, %16
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %108 = mul nsw i32 %8, %7
  %109 = icmp ult i32 %108, 128
  %110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %111 = extractvalue %dx.types.CBufRet.f32 %110, 0
  br i1 %109, label %112, label %201, !dx.controlflow.hints !26

; <label>:112                                     ; preds = %107
  %113 = lshr i32 %108, 3
  %114 = shl i32 %108, 1
  %115 = and i32 %114, 14
  %116 = mul i32 %113, 16
  %117 = add i32 %115, %116
  %118 = mul i32 %117, 3
  %119 = add i32 0, %118
  %120 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?shadingColorsBuffer@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %119
  %121 = load float, float addrspace(3)* %120, align 4
  %122 = mul i32 %113, 16
  %123 = add i32 %115, %122
  %124 = mul i32 %123, 3
  %125 = add i32 1, %124
  %126 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?shadingColorsBuffer@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %125
  %127 = load float, float addrspace(3)* %126, align 4
  %128 = mul i32 %113, 16
  %129 = add i32 %115, %128
  %130 = mul i32 %129, 3
  %131 = add i32 2, %130
  %132 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?shadingColorsBuffer@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %131
  %133 = load float, float addrspace(3)* %132, align 4
  %134 = or i32 %115, 1
  %135 = mul i32 %113, 16
  %136 = add i32 %134, %135
  %137 = mul i32 %136, 3
  %138 = add i32 0, %137
  %139 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?shadingColorsBuffer@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %138
  %140 = load float, float addrspace(3)* %139, align 4
  %141 = mul i32 %113, 16
  %142 = add i32 %134, %141
  %143 = mul i32 %142, 3
  %144 = add i32 1, %143
  %145 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?shadingColorsBuffer@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %144
  %146 = load float, float addrspace(3)* %145, align 4
  %147 = mul i32 %113, 16
  %148 = add i32 %134, %147
  %149 = mul i32 %148, 3
  %150 = add i32 2, %149
  %151 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?shadingColorsBuffer@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %150
  %152 = load float, float addrspace(3)* %151, align 4
  %153 = add nuw nsw i32 %115, 2
  %154 = call i32 @dx.op.binary.i32(i32 38, i32 %153, i32 15)  ; IMin(a,b)
  %155 = mul i32 %113, 16
  %156 = add i32 %154, %155
  %157 = mul i32 %156, 3
  %158 = add i32 0, %157
  %159 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?shadingColorsBuffer@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %158
  %160 = load float, float addrspace(3)* %159, align 4
  %161 = mul i32 %113, 16
  %162 = add i32 %154, %161
  %163 = mul i32 %162, 3
  %164 = add i32 1, %163
  %165 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?shadingColorsBuffer@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %164
  %166 = load float, float addrspace(3)* %165, align 4
  %167 = mul i32 %113, 16
  %168 = add i32 %154, %167
  %169 = mul i32 %168, 3
  %170 = add i32 2, %169
  %171 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?shadingColorsBuffer@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %170
  %172 = load float, float addrspace(3)* %171, align 4
  %173 = fsub fast float %140, %160
  %174 = fsub fast float %146, %166
  %175 = fsub fast float %152, %172
  %176 = call float @dx.op.unary.f32(i32 6, float %173)  ; FAbs(value)
  %177 = call float @dx.op.unary.f32(i32 6, float %174)  ; FAbs(value)
  %178 = call float @dx.op.unary.f32(i32 6, float %175)  ; FAbs(value)
  %179 = fsub fast float %121, %140
  %180 = fsub fast float %127, %146
  %181 = fsub fast float %133, %152
  %182 = call float @dx.op.unary.f32(i32 6, float %179)  ; FAbs(value)
  %183 = call float @dx.op.unary.f32(i32 6, float %180)  ; FAbs(value)
  %184 = call float @dx.op.unary.f32(i32 6, float %181)  ; FAbs(value)
  %185 = call float @dx.op.binary.f32(i32 35, float %182, float %176)  ; FMax(a,b)
  %186 = call float @dx.op.binary.f32(i32 35, float %183, float %177)  ; FMax(a,b)
  %187 = call float @dx.op.binary.f32(i32 35, float %184, float %178)  ; FMax(a,b)
  %188 = fcmp fast ogt float %185, %111
  %189 = fcmp fast ogt float %186, %111
  %190 = fcmp fast ogt float %187, %111
  %191 = or i1 %188, %189
  %192 = or i1 %190, %191
  br i1 %192, label %291, label %193, !dx.controlflow.hints !27

; <label>:193                                     ; preds = %112
  %194 = fmul fast float %111, 5.000000e-01
  %195 = fcmp fast ogt float %185, %194
  %196 = fcmp fast ogt float %186, %194
  %197 = fcmp fast ogt float %187, %194
  %198 = or i1 %195, %196
  %199 = or i1 %197, %198
  %200 = select i1 %199, i32 4, i32 0
  br label %291

; <label>:201                                     ; preds = %107
  %202 = add i32 %108, -128
  %203 = lshr i32 %202, 4
  %204 = shl nuw nsw i32 %203, 1
  %205 = and i32 %202, 15
  %206 = mul i32 %204, 16
  %207 = add i32 %205, %206
  %208 = mul i32 %207, 3
  %209 = add i32 0, %208
  %210 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?shadingColorsBuffer@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %209
  %211 = load float, float addrspace(3)* %210, align 4
  %212 = mul i32 %204, 16
  %213 = add i32 %205, %212
  %214 = mul i32 %213, 3
  %215 = add i32 1, %214
  %216 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?shadingColorsBuffer@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %215
  %217 = load float, float addrspace(3)* %216, align 4
  %218 = mul i32 %204, 16
  %219 = add i32 %205, %218
  %220 = mul i32 %219, 3
  %221 = add i32 2, %220
  %222 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?shadingColorsBuffer@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %221
  %223 = load float, float addrspace(3)* %222, align 4
  %224 = or i32 %204, 1
  %225 = mul i32 %224, 16
  %226 = add i32 %205, %225
  %227 = mul i32 %226, 3
  %228 = add i32 0, %227
  %229 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?shadingColorsBuffer@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %228
  %230 = load float, float addrspace(3)* %229, align 4
  %231 = mul i32 %224, 16
  %232 = add i32 %205, %231
  %233 = mul i32 %232, 3
  %234 = add i32 1, %233
  %235 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?shadingColorsBuffer@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %234
  %236 = load float, float addrspace(3)* %235, align 4
  %237 = mul i32 %224, 16
  %238 = add i32 %205, %237
  %239 = mul i32 %238, 3
  %240 = add i32 2, %239
  %241 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?shadingColorsBuffer@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %240
  %242 = load float, float addrspace(3)* %241, align 4
  %243 = add nuw nsw i32 %204, 2
  %244 = call i32 @dx.op.binary.i32(i32 38, i32 %243, i32 15)  ; IMin(a,b)
  %245 = mul i32 %244, 16
  %246 = add i32 %205, %245
  %247 = mul i32 %246, 3
  %248 = add i32 0, %247
  %249 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?shadingColorsBuffer@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %248
  %250 = load float, float addrspace(3)* %249, align 4
  %251 = mul i32 %244, 16
  %252 = add i32 %205, %251
  %253 = mul i32 %252, 3
  %254 = add i32 1, %253
  %255 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?shadingColorsBuffer@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %254
  %256 = load float, float addrspace(3)* %255, align 4
  %257 = mul i32 %244, 16
  %258 = add i32 %205, %257
  %259 = mul i32 %258, 3
  %260 = add i32 2, %259
  %261 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?shadingColorsBuffer@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %260
  %262 = load float, float addrspace(3)* %261, align 4
  %263 = fsub fast float %230, %250
  %264 = fsub fast float %236, %256
  %265 = fsub fast float %242, %262
  %266 = call float @dx.op.unary.f32(i32 6, float %263)  ; FAbs(value)
  %267 = call float @dx.op.unary.f32(i32 6, float %264)  ; FAbs(value)
  %268 = call float @dx.op.unary.f32(i32 6, float %265)  ; FAbs(value)
  %269 = fsub fast float %211, %230
  %270 = fsub fast float %217, %236
  %271 = fsub fast float %223, %242
  %272 = call float @dx.op.unary.f32(i32 6, float %269)  ; FAbs(value)
  %273 = call float @dx.op.unary.f32(i32 6, float %270)  ; FAbs(value)
  %274 = call float @dx.op.unary.f32(i32 6, float %271)  ; FAbs(value)
  %275 = call float @dx.op.binary.f32(i32 35, float %272, float %266)  ; FMax(a,b)
  %276 = call float @dx.op.binary.f32(i32 35, float %273, float %267)  ; FMax(a,b)
  %277 = call float @dx.op.binary.f32(i32 35, float %274, float %268)  ; FMax(a,b)
  %278 = fcmp fast ogt float %275, %111
  %279 = fcmp fast ogt float %276, %111
  %280 = fcmp fast ogt float %277, %111
  %281 = or i1 %278, %279
  %282 = or i1 %280, %281
  br i1 %282, label %291, label %283, !dx.controlflow.hints !28

; <label>:283                                     ; preds = %201
  %284 = fmul fast float %111, 5.000000e-01
  %285 = fcmp fast ogt float %275, %284
  %286 = fcmp fast ogt float %276, %284
  %287 = fcmp fast ogt float %277, %284
  %288 = or i1 %285, %286
  %289 = or i1 %287, %288
  %290 = zext i1 %289 to i32
  br label %291

; <label>:291                                     ; preds = %283, %201, %193, %112
  %292 = phi i32 [ 8, %112 ], [ %200, %193 ], [ 2, %201 ], [ %290, %283 ]
  %293 = mul i32 %8, 16
  %294 = add i32 %7, %293
  %295 = mul i32 %294, 3
  %296 = add i32 0, %295
  %297 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?shadingColorsBuffer@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %296
  %298 = load float, float addrspace(3)* %297, align 4
  %299 = mul i32 %8, 16
  %300 = add i32 %7, %299
  %301 = mul i32 %300, 3
  %302 = add i32 1, %301
  %303 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?shadingColorsBuffer@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %302
  %304 = load float, float addrspace(3)* %303, align 4
  %305 = mul i32 %8, 16
  %306 = add i32 %7, %305
  %307 = mul i32 %306, 3
  %308 = add i32 2, %307
  %309 = getelementptr [768 x float], [768 x float] addrspace(3)* @"\01?shadingColorsBuffer@@3PAY0BA@$$CAV?$vector@M$02@@A.v.1dim", i32 0, i32 %308
  %310 = load float, float addrspace(3)* %309, align 4
  %311 = fmul fast float %298, 5.000000e-01
  %312 = fmul fast float %304, 5.000000e-01
  %313 = fmul fast float %310, 5.000000e-01
  %314 = fmul fast float %298, %298
  %315 = fmul fast float %314, 5.000000e-01
  %316 = fmul fast float %304, %304
  %317 = fmul fast float %316, 5.000000e-01
  %318 = fmul fast float %310, %310
  %319 = fmul fast float %318, 5.000000e-01
  %320 = fmul fast float %311, %311
  %321 = fmul fast float %312, %312
  %322 = fmul fast float %313, %313
  %323 = fsub fast float %315, %320
  %324 = fsub fast float %317, %321
  %325 = fsub fast float %319, %322
  %326 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %323)  ; FMax(a,b)
  %327 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %324)  ; FMax(a,b)
  %328 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %325)  ; FMax(a,b)
  %329 = call float @dx.op.unary.f32(i32 24, float %326)  ; Sqrt(value)
  %330 = call float @dx.op.unary.f32(i32 24, float %327)  ; Sqrt(value)
  %331 = call float @dx.op.unary.f32(i32 24, float %328)  ; Sqrt(value)
  %332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %333 = extractvalue %dx.types.CBufRet.f32 %332, 1
  %334 = fcmp fast ogt float %329, %333
  %335 = fcmp fast ogt float %330, %333
  %336 = fcmp fast ogt float %331, %333
  %337 = or i1 %334, %335
  %338 = or i1 %336, %337
  %339 = or i32 %292, 5
  %340 = select i1 %338, i32 %339, i32 %292
  %341 = icmp eq i32 %340, 2
  %342 = icmp eq i32 %340, 8
  %343 = zext i1 %342 to i32
  %344 = or i32 %343, %340
  %345 = select i1 %341, i32 6, i32 %344
  %346 = atomicrmw or i32 addrspace(3)* @"\01?shadingRateShare@@3IA", i32 %345 seq_cst
  %347 = load i32, i32 addrspace(3)* @"\01?shadingRateShare@@3IA", align 4, !tbaa !21
  %348 = sub i32 15, %347
  %349 = and i32 %348, 15
  %350 = getelementptr inbounds [16 x i32], [16 x i32]* @shadingRateEnums, i32 0, i32 %349
  %351 = load i32, i32* %350, align 4, !tbaa !21
  %352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %353 = extractvalue %dx.types.CBufRet.f32 %352, 0
  %354 = fcmp fast une float %353, 0.000000e+00
  br i1 %354, label %355, label %368, !dx.controlflow.hints !29

; <label>:355                                     ; preds = %291
  %356 = sdiv i32 %9, 16
  %357 = sdiv i32 %10, 16
  %358 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %356, i32 %357, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %359 = extractvalue %dx.types.ResRet.f32 %358, 0
  %360 = fcmp fast ogt float %359, 0x3FC99999A0000000
  br i1 %360, label %361, label %368, !dx.controlflow.hints !30

; <label>:361                                     ; preds = %355
  %362 = extractvalue %dx.types.CBufRet.f32 %352, 1
  %363 = fmul fast float %362, %359
  %364 = fptoui float %363 to i32
  %365 = add i32 %364, %351
  %366 = icmp ugt i32 %365, 7
  %367 = select i1 %366, i32 7, i32 %365
  br label %368

; <label>:368                                     ; preds = %361, %355, %291
  %369 = phi i32 [ %367, %361 ], [ %351, %355 ], [ %351, %291 ]
  %370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %371 = extractvalue %dx.types.CBufRet.f32 %370, 2
  %372 = fcmp fast une float %371, 0.000000e+00
  br i1 %372, label %373, label %417, !dx.controlflow.hints !31

; <label>:373                                     ; preds = %368
  %374 = sdiv i32 %9, 2
  %375 = sdiv i32 %10, 2
  %376 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %374, i32 %375, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %377 = extractvalue %dx.types.ResRet.f32 %376, 0
  %378 = fmul fast float %377, 2.000000e+00
  %379 = fadd fast float %378, -1.000000e+00
  %380 = call float @dx.op.unary.f32(i32 6, float %379)  ; FAbs(value)
  %381 = fcmp fast oge float %380, 0.000000e+00
  %382 = fcmp fast olt float %380, 0x3FC99999A0000000
  %383 = and i1 %381, %382
  br i1 %383, label %413, label %384, !dx.controlflow.hints !32

; <label>:384                                     ; preds = %373
  %385 = fcmp fast oge float %380, 0x3FC99999A0000000
  %386 = fcmp fast olt float %380, 0x3FD99999A0000000
  %387 = and i1 %385, %386
  %388 = extractvalue %dx.types.CBufRet.f32 %370, 3
  br i1 %387, label %389, label %393, !dx.controlflow.hints !33

; <label>:389                                     ; preds = %384
  %390 = fadd fast float %388, 1.000000e+00
  %391 = fptoui float %390 to i32
  %392 = add i32 %391, %369
  br label %413

; <label>:393                                     ; preds = %384
  %394 = fcmp fast oge float %380, 0x3FD99999A0000000
  %395 = fcmp fast olt float %380, 0x3FE3333340000000
  %396 = and i1 %394, %395
  br i1 %396, label %397, label %401, !dx.controlflow.hints !34

; <label>:397                                     ; preds = %393
  %398 = fadd fast float %388, 2.000000e+00
  %399 = fptoui float %398 to i32
  %400 = add i32 %399, %369
  br label %413

; <label>:401                                     ; preds = %393
  %402 = fcmp fast oge float %380, 0x3FE3333340000000
  %403 = fcmp fast olt float %380, 0x3FE99999A0000000
  %404 = and i1 %402, %403
  br i1 %404, label %405, label %409, !dx.controlflow.hints !35

; <label>:405                                     ; preds = %401
  %406 = fadd fast float %388, 3.000000e+00
  %407 = fptoui float %406 to i32
  %408 = add i32 %407, %369
  br label %413

; <label>:409                                     ; preds = %401
  %410 = fadd fast float %388, 4.000000e+00
  %411 = fptoui float %410 to i32
  %412 = add i32 %411, %369
  br label %413

; <label>:413                                     ; preds = %409, %405, %397, %389, %373
  %414 = phi i32 [ %392, %389 ], [ %400, %397 ], [ %408, %405 ], [ %412, %409 ], [ %369, %373 ]
  %415 = icmp ugt i32 %414, 7
  %416 = select i1 %415, i32 7, i32 %414
  br label %417

; <label>:417                                     ; preds = %413, %368
  %418 = phi i32 [ %369, %368 ], [ %416, %413 ]
  %419 = getelementptr inbounds [8 x i32], [8 x i32]* @shadingRateEnumsConvertToDx12, i32 0, i32 %418
  %420 = load i32, i32* %419, align 4, !tbaa !21
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %1, i32 %11, i32 %12, i32 undef, i32 %420, i32 %420, i32 %420, i32 %420, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @dx.op.textureStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32, i8) #3

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

attributes #0 = { nounwind readnone }
attributes #1 = { noduplicate nounwind }
attributes #2 = { nounwind readonly }
attributes #3 = { nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!17}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !10, !13, !15}
!5 = !{!6, !8, !9}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!10 = !{!11}
!11 = !{i32 0, %"class.RWTexture2D<unsigned int>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !12}
!12 = !{i32 0, i32 5}
!13 = !{!14}
!14 = !{i32 0, %ConstantBufferVRS_DX12* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!15 = !{!16}
!16 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!17 = !{void ()* @cs_vrs_dx12, !"cs_vrs_dx12", null, !4, !18}
!18 = !{i32 0, i64 256, i32 4, !19}
!19 = !{i32 16, i32 16, i32 1}
!20 = distinct !{!20, !"dx.controlflow.hints", i32 2}
!21 = !{!22, !22, i64 0}
!22 = !{!"int", !23, i64 0}
!23 = !{!"omnipotent char", !24, i64 0}
!24 = !{!"Simple C/C++ TBAA"}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
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

