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
; shader hash: 625438ddb211f72f4d01ac9ecb34a910
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
; Resource bind info for 
; {
;
;   [12 x i8] (type annotation not present)
;
; }
;
; Resource bind info for 
; {
;
;   [12 x i8] (type annotation not present)
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
;                                   texture     f32          2d      T0             t1     1
;                                   texture     f32          2d      T1             t2     1
;                                       UAVunorm_f32          2d      U0             u1     1
;                                       UAV  struct     r/w+cnt      U1             u4     1
;                                       UAV  struct     r/w+cnt      U2             u5     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.RWTexture2D<vector<float, 2> >" = type { <2 x float> }
%"class.RWStructuredBuffer<vector<unsigned int, 3> >" = type { <3 x i32> }
%PostConstantBuffer = type { <4 x float>, <4 x float>, float, float, float, float, float, float, float, float, i32, float, float, i32, <4 x i32>, <4 x i32> }
%struct.SamplerState = type { i32 }

@"\01?edgeSourceData@@3PAY0M@$$CAMA.1dim" = addrspace(3) global [144 x float] undef, align 4

define void @smaa_edge_detection() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %9 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %10 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %11 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %12 = shl i32 %10, 1
  %13 = shl i32 %11, 1
  %14 = call i32 @dx.op.binary.i32(i32 39, i32 %12, i32 %13)  ; UMax(a,b)
  %15 = icmp ult i32 %14, 12
  br i1 %15, label %16, label %47, !dx.controlflow.hints !22

; <label>:16                                      ; preds = %0
  %17 = add i32 %8, -1
  %18 = add i32 %17, %10
  %19 = add i32 %9, -1
  %20 = add i32 %19, %11
  %21 = sitofp i32 %18 to float
  %22 = sitofp i32 %20 to float
  %23 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %24 = extractvalue %dx.types.CBufRet.f32 %23, 2
  %25 = extractvalue %dx.types.CBufRet.f32 %23, 3
  %26 = fmul fast float %24, %21
  %27 = fmul fast float %25, %22
  %28 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %6, float %26, float %27, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %29 = extractvalue %dx.types.ResRet.f32 %28, 0
  %30 = extractvalue %dx.types.ResRet.f32 %28, 1
  %31 = extractvalue %dx.types.ResRet.f32 %28, 2
  %32 = extractvalue %dx.types.ResRet.f32 %28, 3
  %33 = mul i32 %12, 12
  %34 = add i32 %13, %33
  %35 = getelementptr [144 x float], [144 x float] addrspace(3)* @"\01?edgeSourceData@@3PAY0M@$$CAMA.1dim", i32 0, i32 %34
  store float %32, float addrspace(3)* %35, align 4, !tbaa !23, !noalias !27
  %36 = or i32 %12, 1
  %37 = mul i32 %36, 12
  %38 = add i32 %13, %37
  %39 = getelementptr [144 x float], [144 x float] addrspace(3)* @"\01?edgeSourceData@@3PAY0M@$$CAMA.1dim", i32 0, i32 %38
  store float %31, float addrspace(3)* %39, align 4, !tbaa !23, !noalias !27
  %40 = or i32 %13, 1
  %41 = mul i32 %12, 12
  %42 = add i32 %40, %41
  %43 = getelementptr [144 x float], [144 x float] addrspace(3)* @"\01?edgeSourceData@@3PAY0M@$$CAMA.1dim", i32 0, i32 %42
  store float %29, float addrspace(3)* %43, align 4, !tbaa !23, !noalias !27
  %44 = mul i32 %36, 12
  %45 = add i32 %40, %44
  %46 = getelementptr [144 x float], [144 x float] addrspace(3)* @"\01?edgeSourceData@@3PAY0M@$$CAMA.1dim", i32 0, i32 %45
  store float %30, float addrspace(3)* %46, align 4, !tbaa !23, !noalias !27
  br label %47

; <label>:47                                      ; preds = %16, %0
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %48 = add i32 %10, 2
  %49 = add i32 %11, 2
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %8, i32 %9, i32 undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %50 = mul i32 %48, 12
  %51 = add i32 %49, %50
  %52 = getelementptr [144 x float], [144 x float] addrspace(3)* @"\01?edgeSourceData@@3PAY0M@$$CAMA.1dim", i32 0, i32 %51
  %53 = load float, float addrspace(3)* %52, align 4, !tbaa !23, !noalias !27
  %54 = add i32 %11, 1
  %55 = mul i32 %48, 12
  %56 = add i32 %54, %55
  %57 = getelementptr [144 x float], [144 x float] addrspace(3)* @"\01?edgeSourceData@@3PAY0M@$$CAMA.1dim", i32 0, i32 %56
  %58 = load float, float addrspace(3)* %57, align 4, !tbaa !23, !noalias !27
  %59 = add i32 %10, 1
  %60 = mul i32 %59, 12
  %61 = add i32 %49, %60
  %62 = getelementptr [144 x float], [144 x float] addrspace(3)* @"\01?edgeSourceData@@3PAY0M@$$CAMA.1dim", i32 0, i32 %61
  %63 = load float, float addrspace(3)* %62, align 4, !tbaa !23, !noalias !27
  %64 = add i32 %11, 3
  %65 = mul i32 %48, 12
  %66 = add i32 %64, %65
  %67 = getelementptr [144 x float], [144 x float] addrspace(3)* @"\01?edgeSourceData@@3PAY0M@$$CAMA.1dim", i32 0, i32 %66
  %68 = load float, float addrspace(3)* %67, align 4, !tbaa !23, !noalias !27
  %69 = add i32 %10, 3
  %70 = mul i32 %69, 12
  %71 = add i32 %49, %70
  %72 = getelementptr [144 x float], [144 x float] addrspace(3)* @"\01?edgeSourceData@@3PAY0M@$$CAMA.1dim", i32 0, i32 %71
  %73 = load float, float addrspace(3)* %72, align 4, !tbaa !23, !noalias !27
  %74 = fsub fast float %53, %63
  %75 = call float @dx.op.unary.f32(i32 6, float %74)  ; FAbs(value)
  %76 = fsub fast float %53, %58
  %77 = call float @dx.op.unary.f32(i32 6, float %76)  ; FAbs(value)
  %78 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %79 = extractvalue %dx.types.CBufRet.f32 %78, 3
  %80 = fmul fast float %79, 0x3FA8181820000000
  %81 = fsub fast float %75, %80
  %82 = fsub fast float %77, %80
  %83 = fcmp fast olt float %81, 0.000000e+00
  %84 = fcmp fast olt float %82, 0.000000e+00
  %85 = select i1 %83, float 0.000000e+00, float 1.000000e+00
  %86 = select i1 %84, float 0.000000e+00, float 1.000000e+00
  %87 = mul i32 %59, 12
  %88 = add i32 %54, %87
  %89 = getelementptr [144 x float], [144 x float] addrspace(3)* @"\01?edgeSourceData@@3PAY0M@$$CAMA.1dim", i32 0, i32 %88
  %90 = load float, float addrspace(3)* %89, align 4, !tbaa !23, !noalias !27
  %91 = mul i32 %59, 12
  %92 = add i32 %64, %91
  %93 = getelementptr [144 x float], [144 x float] addrspace(3)* @"\01?edgeSourceData@@3PAY0M@$$CAMA.1dim", i32 0, i32 %92
  %94 = load float, float addrspace(3)* %93, align 4, !tbaa !23, !noalias !27
  %95 = mul i32 %69, 12
  %96 = add i32 %64, %95
  %97 = getelementptr [144 x float], [144 x float] addrspace(3)* @"\01?edgeSourceData@@3PAY0M@$$CAMA.1dim", i32 0, i32 %96
  %98 = load float, float addrspace(3)* %97, align 4, !tbaa !23, !noalias !27
  %99 = mul i32 %69, 12
  %100 = add i32 %54, %99
  %101 = getelementptr [144 x float], [144 x float] addrspace(3)* @"\01?edgeSourceData@@3PAY0M@$$CAMA.1dim", i32 0, i32 %100
  %102 = load float, float addrspace(3)* %101, align 4, !tbaa !23, !noalias !27
  %103 = mul i32 %48, 12
  %104 = add i32 %11, %103
  %105 = getelementptr [144 x float], [144 x float] addrspace(3)* @"\01?edgeSourceData@@3PAY0M@$$CAMA.1dim", i32 0, i32 %104
  %106 = load float, float addrspace(3)* %105, align 4, !tbaa !23, !noalias !27
  %107 = mul i32 %10, 12
  %108 = add i32 %49, %107
  %109 = getelementptr [144 x float], [144 x float] addrspace(3)* @"\01?edgeSourceData@@3PAY0M@$$CAMA.1dim", i32 0, i32 %108
  %110 = load float, float addrspace(3)* %109, align 4, !tbaa !23, !noalias !27
  %111 = call float @dx.op.binary.f32(i32 35, float %85, float %86)  ; FMax(a,b)
  %112 = fcmp fast une float %111, 0.000000e+00
  br i1 %112, label %113, label %420, !dx.controlflow.hints !30

; <label>:113                                     ; preds = %47
  %114 = fsub fast float %53, %68
  %115 = call float @dx.op.unary.f32(i32 6, float %114)  ; FAbs(value)
  %116 = fsub fast float %53, %73
  %117 = call float @dx.op.unary.f32(i32 6, float %116)  ; FAbs(value)
  %118 = icmp sgt i32 %8, 0
  %119 = icmp sgt i32 %9, 0
  %120 = mul i32 %59, 12
  %121 = add i32 %11, %120
  %122 = getelementptr [144 x float], [144 x float] addrspace(3)* @"\01?edgeSourceData@@3PAY0M@$$CAMA.1dim", i32 0, i32 %121
  %123 = load float, float addrspace(3)* %122, align 4, !tbaa !23, !noalias !27
  %124 = mul i32 %69, 12
  %125 = add i32 %11, %124
  %126 = getelementptr [144 x float], [144 x float] addrspace(3)* @"\01?edgeSourceData@@3PAY0M@$$CAMA.1dim", i32 0, i32 %125
  %127 = load float, float addrspace(3)* %126, align 4, !tbaa !23, !noalias !27
  %128 = mul i32 %10, 12
  %129 = add i32 %54, %128
  %130 = getelementptr [144 x float], [144 x float] addrspace(3)* @"\01?edgeSourceData@@3PAY0M@$$CAMA.1dim", i32 0, i32 %129
  %131 = load float, float addrspace(3)* %130, align 4, !tbaa !23, !noalias !27
  %132 = mul i32 %10, 12
  %133 = add i32 %64, %132
  %134 = getelementptr [144 x float], [144 x float] addrspace(3)* @"\01?edgeSourceData@@3PAY0M@$$CAMA.1dim", i32 0, i32 %133
  %135 = load float, float addrspace(3)* %134, align 4, !tbaa !23, !noalias !27
  %136 = fsub fast float %63, %90
  %137 = call float @dx.op.unary.f32(i32 6, float %136)  ; FAbs(value)
  %138 = fsub fast float %73, %102
  %139 = call float @dx.op.unary.f32(i32 6, float %138)  ; FAbs(value)
  %140 = fsub fast float %63, %94
  %141 = call float @dx.op.unary.f32(i32 6, float %140)  ; FAbs(value)
  %142 = fsub fast float %73, %98
  %143 = call float @dx.op.unary.f32(i32 6, float %142)  ; FAbs(value)
  %144 = fsub fast float %90, %123
  %145 = call float @dx.op.unary.f32(i32 6, float %144)  ; FAbs(value)
  %146 = fsub fast float %58, %106
  %147 = call float @dx.op.unary.f32(i32 6, float %146)  ; FAbs(value)
  %148 = fsub fast float %102, %127
  %149 = call float @dx.op.unary.f32(i32 6, float %148)  ; FAbs(value)
  %150 = fsub fast float %58, %90
  %151 = call float @dx.op.unary.f32(i32 6, float %150)  ; FAbs(value)
  %152 = fsub fast float %68, %94
  %153 = call float @dx.op.unary.f32(i32 6, float %152)  ; FAbs(value)
  %154 = fsub fast float %58, %102
  %155 = call float @dx.op.unary.f32(i32 6, float %154)  ; FAbs(value)
  %156 = fsub fast float %68, %98
  %157 = call float @dx.op.unary.f32(i32 6, float %156)  ; FAbs(value)
  %158 = fsub fast float %90, %131
  %159 = call float @dx.op.unary.f32(i32 6, float %158)  ; FAbs(value)
  %160 = fsub fast float %63, %110
  %161 = call float @dx.op.unary.f32(i32 6, float %160)  ; FAbs(value)
  %162 = fsub fast float %94, %135
  %163 = call float @dx.op.unary.f32(i32 6, float %162)  ; FAbs(value)
  %164 = fsub fast float %151, %137
  %165 = fsub fast float %164, %77
  %166 = fsub fast float %153, %141
  %167 = fsub fast float %166, %115
  %168 = fsub fast float %137, %77
  %169 = fsub fast float %141, %115
  %170 = fsub fast float %151, %75
  %171 = fsub fast float %153, %75
  %172 = fadd fast float %165, %151
  %173 = fadd fast float %167, %153
  %174 = fsub fast float %168, %169
  %175 = call float @dx.op.unary.f32(i32 6, float %174)  ; FAbs(value)
  %176 = fsub fast float %175, %161
  %177 = fsub fast float %173, %168
  %178 = fsub fast float %172, %169
  %179 = call float @dx.op.binary.f32(i32 35, float %178, float %177)  ; FMax(a,b)
  %180 = call float @dx.op.binary.f32(i32 35, float %179, float %176)  ; FMax(a,b)
  %181 = fsub fast float %180, %117
  %182 = fadd fast float %172, %169
  %183 = fsub fast float %182, %161
  %184 = fadd fast float %173, %168
  %185 = fsub fast float %184, %161
  %186 = call float @dx.op.binary.f32(i32 35, float %185, float %183)  ; FMax(a,b)
  %187 = call float @dx.op.binary.f32(i32 35, float %186, float %181)  ; FMax(a,b)
  %188 = fadd fast float %169, %168
  %189 = call float @dx.op.unary.f32(i32 6, float %188)  ; FAbs(value)
  %190 = call float @dx.op.binary.f32(i32 35, float %189, float %187)  ; FMax(a,b)
  %191 = fsub fast float -0.000000e+00, %170
  %192 = fsub fast float %191, %153
  %193 = fadd fast float %192, %190
  %194 = fadd fast float %165, %75
  %195 = fadd fast float %194, %167
  %196 = call float @dx.op.binary.f32(i32 35, float %195, float %193)  ; FMax(a,b)
  %197 = fsub fast float %171, %169
  %198 = fsub fast float %197, %157
  %199 = fadd fast float %171, %169
  %200 = fsub fast float %199, %163
  %201 = fsub fast float %170, %168
  %202 = fsub fast float %201, %155
  %203 = call float @dx.op.binary.f32(i32 35, float %202, float %200)  ; FMax(a,b)
  %204 = call float @dx.op.binary.f32(i32 35, float %203, float %198)  ; FMax(a,b)
  %205 = fadd fast float %170, %168
  %206 = fsub fast float %205, %159
  %207 = fsub fast float -0.000000e+00, %167
  %208 = fsub fast float -0.000000e+00, %165
  %209 = call float @dx.op.binary.f32(i32 35, float %208, float %207)  ; FMax(a,b)
  %210 = fsub fast float %209, %75
  %211 = call float @dx.op.binary.f32(i32 35, float %210, float %206)  ; FMax(a,b)
  %212 = call float @dx.op.binary.f32(i32 35, float %211, float %204)  ; FMax(a,b)
  %213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %214 = extractvalue %dx.types.CBufRet.f32 %213, 3
  %215 = fmul fast float %214, 0x3FB8181820000000
  %216 = call float @dx.op.binary.f32(i32 35, float %215, float %212)  ; FMax(a,b)
  %217 = fcmp fast olt float %216, %196
  %218 = call float @dx.op.binary.f32(i32 36, float %77, float %117)  ; FMin(a,b)
  %219 = call float @dx.op.binary.f32(i32 36, float %218, float %115)  ; FMin(a,b)
  %220 = call float @dx.op.binary.f32(i32 36, float %137, float %161)  ; FMin(a,b)
  %221 = call float @dx.op.binary.f32(i32 36, float %220, float %141)  ; FMin(a,b)
  %222 = call float @dx.op.binary.f32(i32 35, float %221, float %219)  ; FMax(a,b)
  %223 = fmul fast float %214, 0x3FA8181820000000
  %224 = fcmp fast olt float %222, %223
  %225 = fcmp fast ogt float %75, %215
  %226 = or i1 %224, %225
  %227 = fcmp fast olt float %222, %215
  %228 = fmul fast float %214, 0x3FC8181820000000
  %229 = fcmp fast ogt float %75, %228
  %230 = or i1 %227, %229
  %231 = and i1 %226, %230
  %232 = and i1 %217, %231
  %233 = and i1 %118, %232
  %234 = select i1 %233, float %85, float 0.000000e+00
  %235 = fsub fast float %137, %151
  %236 = fsub fast float %235, %75
  %237 = fsub fast float %139, %155
  %238 = fsub fast float %237, %117
  %239 = fsub fast float %155, %117
  %240 = fsub fast float %139, %77
  %241 = fadd fast float %236, %137
  %242 = fadd fast float %238, %139
  %243 = fsub fast float %170, %239
  %244 = call float @dx.op.unary.f32(i32 6, float %243)  ; FAbs(value)
  %245 = fsub fast float %244, %147
  %246 = fsub fast float %242, %170
  %247 = fsub fast float %241, %239
  %248 = call float @dx.op.binary.f32(i32 35, float %247, float %246)  ; FMax(a,b)
  %249 = call float @dx.op.binary.f32(i32 35, float %248, float %245)  ; FMax(a,b)
  %250 = fsub fast float %249, %115
  %251 = fsub fast float %241, %147
  %252 = fadd fast float %251, %239
  %253 = fsub fast float %170, %147
  %254 = fadd fast float %253, %242
  %255 = call float @dx.op.binary.f32(i32 35, float %254, float %252)  ; FMax(a,b)
  %256 = call float @dx.op.binary.f32(i32 35, float %255, float %250)  ; FMax(a,b)
  %257 = fadd fast float %239, %170
  %258 = call float @dx.op.unary.f32(i32 6, float %257)  ; FAbs(value)
  %259 = call float @dx.op.binary.f32(i32 35, float %258, float %256)  ; FMax(a,b)
  %260 = fsub fast float -0.000000e+00, %168
  %261 = fsub fast float %260, %139
  %262 = fadd fast float %261, %259
  %263 = fadd fast float %236, %77
  %264 = fadd fast float %263, %238
  %265 = call float @dx.op.binary.f32(i32 35, float %264, float %262)  ; FMax(a,b)
  %266 = fsub fast float %240, %143
  %267 = fsub fast float %266, %239
  %268 = fsub fast float %240, %149
  %269 = fadd fast float %268, %239
  %270 = fsub fast float %168, %141
  %271 = fsub fast float %270, %170
  %272 = call float @dx.op.binary.f32(i32 35, float %271, float %269)  ; FMax(a,b)
  %273 = call float @dx.op.binary.f32(i32 35, float %272, float %267)  ; FMax(a,b)
  %274 = fsub fast float %168, %145
  %275 = fadd fast float %274, %170
  %276 = fsub fast float -0.000000e+00, %238
  %277 = fsub fast float -0.000000e+00, %236
  %278 = call float @dx.op.binary.f32(i32 35, float %277, float %276)  ; FMax(a,b)
  %279 = fsub fast float %278, %77
  %280 = call float @dx.op.binary.f32(i32 35, float %279, float %275)  ; FMax(a,b)
  %281 = call float @dx.op.binary.f32(i32 35, float %280, float %273)  ; FMax(a,b)
  %282 = call float @dx.op.binary.f32(i32 35, float %215, float %281)  ; FMax(a,b)
  %283 = fcmp fast olt float %282, %265
  %284 = call float @dx.op.binary.f32(i32 36, float %75, float %115)  ; FMin(a,b)
  %285 = call float @dx.op.binary.f32(i32 36, float %284, float %117)  ; FMin(a,b)
  %286 = call float @dx.op.binary.f32(i32 36, float %151, float %147)  ; FMin(a,b)
  %287 = call float @dx.op.binary.f32(i32 36, float %286, float %155)  ; FMin(a,b)
  %288 = call float @dx.op.binary.f32(i32 35, float %287, float %285)  ; FMax(a,b)
  %289 = fcmp fast olt float %288, %223
  %290 = fcmp fast ogt float %77, %215
  %291 = or i1 %289, %290
  %292 = fcmp fast olt float %288, %215
  %293 = fcmp fast ogt float %77, %228
  %294 = or i1 %292, %293
  %295 = and i1 %291, %294
  %296 = and i1 %283, %295
  %297 = and i1 %119, %296
  %298 = select i1 %297, float %86, float 0.000000e+00
  %299 = fmul fast float %58, 2.000000e+00
  %300 = fmul fast float %53, 4.000000e+00
  %301 = fsub fast float %300, %299
  %302 = fsub fast float %301, %90
  %303 = fsub fast float %302, %102
  %304 = call float @dx.op.unary.f32(i32 6, float %303)  ; FAbs(value)
  %305 = fmul fast float %63, 2.000000e+00
  %306 = fsub fast float %300, %305
  %307 = fsub fast float %306, %90
  %308 = fsub fast float %307, %94
  %309 = call float @dx.op.unary.f32(i32 6, float %308)  ; FAbs(value)
  %310 = fmul fast float %73, 2.000000e+00
  %311 = fsub fast float %300, %310
  %312 = fsub fast float %311, %98
  %313 = fsub fast float %312, %102
  %314 = call float @dx.op.unary.f32(i32 6, float %313)  ; FAbs(value)
  %315 = fmul fast float %106, 2.000000e+00
  %316 = fmul fast float %58, 4.000000e+00
  %317 = fsub fast float %316, %315
  %318 = fsub fast float %317, %123
  %319 = fsub fast float %318, %127
  %320 = call float @dx.op.unary.f32(i32 6, float %319)  ; FAbs(value)
  %321 = fmul fast float %110, 2.000000e+00
  %322 = fmul fast float %63, 4.000000e+00
  %323 = fsub fast float %322, %321
  %324 = fsub fast float %323, %131
  %325 = fsub fast float %324, %135
  %326 = call float @dx.op.unary.f32(i32 6, float %325)  ; FAbs(value)
  %327 = fmul fast float %53, 2.000000e+00
  %328 = fmul fast float %68, 4.000000e+00
  %329 = fsub fast float -0.000000e+00, %327
  %330 = fsub fast float %329, %63
  %331 = fsub fast float %330, %73
  %332 = fadd fast float %331, %328
  %333 = call float @dx.op.unary.f32(i32 6, float %332)  ; FAbs(value)
  %334 = fmul fast float %73, 4.000000e+00
  %335 = fmul fast float %53, -2.000000e+00
  %336 = fsub fast float %335, %58
  %337 = fsub fast float %336, %68
  %338 = fadd fast float %337, %334
  %339 = call float @dx.op.unary.f32(i32 6, float %338)  ; FAbs(value)
  %340 = call float @dx.op.binary.f32(i32 35, float %326, float %339)  ; FMax(a,b)
  %341 = fcmp fast olt float %340, %309
  %342 = select i1 %341, i32 8, i32 0
  %343 = call float @dx.op.binary.f32(i32 35, float %314, float %320)  ; FMax(a,b)
  %344 = call float @dx.op.binary.f32(i32 35, float %343, float %333)  ; FMax(a,b)
  %345 = call float @dx.op.binary.f32(i32 35, float %309, float %344)  ; FMax(a,b)
  %346 = fcmp fast olt float %345, %304
  %347 = select i1 %346, i32 2, i32 %342
  %348 = call float @dx.op.binary.f32(i32 35, float %333, float %320)  ; FMax(a,b)
  %349 = fcmp fast olt float %348, %304
  %350 = select i1 %349, i32 32, i32 0
  %351 = lshr exact i32 %347, 1
  %352 = and i32 %351, 1
  %353 = lshr i32 %347, 3
  %354 = or i32 %350, %347
  %355 = sub i32 %8, %353
  %356 = sub i32 %9, %352
  %357 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %355, i32 %356, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %8, i32 %9, i32 undef, float %234, float %298, float %234, float %234, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %358 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %8, i32 %9, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %359 = extractvalue %dx.types.ResRet.f32 %358, 0
  %360 = extractvalue %dx.types.ResRet.f32 %358, 1
  %361 = extractvalue %dx.types.ResRet.f32 %358, 2
  %362 = shl nuw nsw i32 %354, 24
  %363 = shl i32 %9, 12
  %364 = or i32 %363, %8
  %365 = or i32 %364, %362
  %366 = call i32 @dx.op.legacyF32ToF16(i32 130, float %359)  ; LegacyF32ToF16(value)
  %367 = call i32 @dx.op.legacyF32ToF16(i32 130, float %360)  ; LegacyF32ToF16(value)
  %368 = call i32 @dx.op.legacyF32ToF16(i32 130, float %361)  ; LegacyF32ToF16(value)
  %369 = lshr i32 %366, 4
  %370 = and i32 %369, 2047
  %371 = shl i32 %367, 7
  %372 = and i32 %371, 4192256
  %373 = or i32 %372, %370
  %374 = shl i32 %368, 17
  %375 = and i32 %374, -4194304
  %376 = or i32 %373, %375
  %377 = and i32 %347, 8
  %378 = icmp ne i32 %377, 0
  %379 = fcmp fast ogt float %234, 5.000000e-01
  %380 = and i1 %379, %378
  br i1 %380, label %381, label %397, !dx.controlflow.hints !31

; <label>:381                                     ; preds = %113
  %382 = extractvalue %dx.types.ResRet.f32 %357, 0
  %383 = call i32 @dx.op.legacyF32ToF16(i32 130, float %382)  ; LegacyF32ToF16(value)
  %384 = lshr i32 %383, 4
  %385 = and i32 %384, 2047
  %386 = extractvalue %dx.types.ResRet.f32 %357, 1
  %387 = call i32 @dx.op.legacyF32ToF16(i32 130, float %386)  ; LegacyF32ToF16(value)
  %388 = shl i32 %387, 7
  %389 = and i32 %388, 4192256
  %390 = or i32 %389, %385
  %391 = extractvalue %dx.types.ResRet.f32 %357, 2
  %392 = call i32 @dx.op.legacyF32ToF16(i32 130, float %391)  ; LegacyF32ToF16(value)
  %393 = shl i32 %392, 17
  %394 = and i32 %393, -4194304
  %395 = or i32 %390, %394
  %396 = call i32 @dx.op.bufferUpdateCounter(i32 70, %dx.types.Handle %1, i8 1)  ; BufferUpdateCounter(uav,inc)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %396, i32 0, i32 %365, i32 %376, i32 %395, i32 undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %397

; <label>:397                                     ; preds = %381, %113
  %398 = and i32 %354, 34
  %399 = icmp ne i32 %398, 0
  %400 = fcmp fast ogt float %298, 5.000000e-01
  %401 = and i1 %400, %399
  br i1 %401, label %402, label %420, !dx.controlflow.hints !32

; <label>:402                                     ; preds = %397
  %403 = add i32 %9, -1
  %404 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %8, i32 %403, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %405 = extractvalue %dx.types.ResRet.f32 %404, 0
  %406 = extractvalue %dx.types.ResRet.f32 %404, 1
  %407 = extractvalue %dx.types.ResRet.f32 %404, 2
  %408 = call i32 @dx.op.legacyF32ToF16(i32 130, float %405)  ; LegacyF32ToF16(value)
  %409 = call i32 @dx.op.legacyF32ToF16(i32 130, float %406)  ; LegacyF32ToF16(value)
  %410 = call i32 @dx.op.legacyF32ToF16(i32 130, float %407)  ; LegacyF32ToF16(value)
  %411 = lshr i32 %408, 4
  %412 = and i32 %411, 2047
  %413 = shl i32 %409, 7
  %414 = and i32 %413, 4192256
  %415 = or i32 %414, %412
  %416 = shl i32 %410, 17
  %417 = and i32 %416, -4194304
  %418 = or i32 %415, %417
  %419 = call i32 @dx.op.bufferUpdateCounter(i32 70, %dx.types.Handle %2, i8 1)  ; BufferUpdateCounter(uav,inc)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %419, i32 0, i32 %365, i32 %376, i32 %418, i32 undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %420

; <label>:420                                     ; preds = %402, %397, %47
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #2

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #3

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind
declare i32 @dx.op.bufferUpdateCounter(i32, %dx.types.Handle, i8) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.legacyF32ToF16(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }
attributes #3 = { noduplicate nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!19}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !9, !15, !17}
!5 = !{!6, !8}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!9 = !{!10, !12, !14}
!10 = !{i32 0, %"class.RWTexture2D<vector<float, 2> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !11}
!11 = !{i32 0, i32 14}
!12 = !{i32 1, %"class.RWStructuredBuffer<vector<unsigned int, 3> >"* undef, !"", i32 0, i32 4, i32 1, i32 12, i1 false, i1 true, i1 false, !13}
!13 = !{i32 1, i32 12}
!14 = !{i32 2, %"class.RWStructuredBuffer<vector<unsigned int, 3> >"* undef, !"", i32 0, i32 5, i32 1, i32 12, i1 false, i1 true, i1 false, !13}
!15 = !{!16}
!16 = !{i32 0, %PostConstantBuffer* undef, !"", i32 0, i32 0, i32 1, i32 112, null}
!17 = !{!18}
!18 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!19 = !{void ()* @smaa_edge_detection, !"smaa_edge_detection", null, !4, !20}
!20 = !{i32 0, i64 272, i32 4, !21}
!21 = !{i32 8, i32 8, i32 1}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 1}
!23 = !{!24, !24, i64 0}
!24 = !{!"float", !25, i64 0}
!25 = !{!"omnipotent char", !26, i64 0}
!26 = !{!"Simple C/C++ TBAA"}
!27 = !{!28}
!28 = distinct !{!28, !29, !"\01?SMAAEdgeDetectionCS@@YA?AUSMAAEdgeDetectionResult@@V?$Texture2D@V?$vector@M$03@@@@0V?$RWTexture2D@V?$vector@M$01@@@@V?$RWStructuredBuffer@V?$vector@I$02@@@@2V?$vector@I$01@@3M@Z: %agg.result"}
!29 = distinct !{!29, !"\01?SMAAEdgeDetectionCS@@YA?AUSMAAEdgeDetectionResult@@V?$Texture2D@V?$vector@M$03@@@@0V?$RWTexture2D@V?$vector@M$01@@@@V?$RWStructuredBuffer@V?$vector@I$02@@@@2V?$vector@I$01@@3M@Z"}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}

