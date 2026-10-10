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
; shader hash: 4218664c6cdcbd3bee0a625e87eabfe0
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
  %80 = fmul fast float %79, 0x3FC9191920000000
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
  %96 = add i32 %54, %95
  %97 = getelementptr [144 x float], [144 x float] addrspace(3)* @"\01?edgeSourceData@@3PAY0M@$$CAMA.1dim", i32 0, i32 %96
  %98 = load float, float addrspace(3)* %97, align 4, !tbaa !23, !noalias !27
  %99 = mul i32 %48, 12
  %100 = add i32 %11, %99
  %101 = getelementptr [144 x float], [144 x float] addrspace(3)* @"\01?edgeSourceData@@3PAY0M@$$CAMA.1dim", i32 0, i32 %100
  %102 = load float, float addrspace(3)* %101, align 4, !tbaa !23, !noalias !27
  %103 = mul i32 %10, 12
  %104 = add i32 %49, %103
  %105 = getelementptr [144 x float], [144 x float] addrspace(3)* @"\01?edgeSourceData@@3PAY0M@$$CAMA.1dim", i32 0, i32 %104
  %106 = load float, float addrspace(3)* %105, align 4, !tbaa !23, !noalias !27
  %107 = call float @dx.op.binary.f32(i32 35, float %85, float %86)  ; FMax(a,b)
  %108 = fcmp fast une float %107, 0.000000e+00
  br i1 %108, label %109, label %348, !dx.controlflow.hints !30

; <label>:109                                     ; preds = %47
  %110 = mul i32 %69, 12
  %111 = add i32 %64, %110
  %112 = getelementptr [144 x float], [144 x float] addrspace(3)* @"\01?edgeSourceData@@3PAY0M@$$CAMA.1dim", i32 0, i32 %111
  %113 = load float, float addrspace(3)* %112, align 4, !tbaa !23, !noalias !27
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
  %138 = fsub fast float %73, %98
  %139 = call float @dx.op.unary.f32(i32 6, float %138)  ; FAbs(value)
  %140 = fsub fast float %63, %94
  %141 = call float @dx.op.unary.f32(i32 6, float %140)  ; FAbs(value)
  %142 = fsub fast float %58, %102
  %143 = call float @dx.op.unary.f32(i32 6, float %142)  ; FAbs(value)
  %144 = fsub fast float %58, %90
  %145 = call float @dx.op.unary.f32(i32 6, float %144)  ; FAbs(value)
  %146 = fsub fast float %68, %94
  %147 = call float @dx.op.unary.f32(i32 6, float %146)  ; FAbs(value)
  %148 = fsub fast float %58, %98
  %149 = call float @dx.op.unary.f32(i32 6, float %148)  ; FAbs(value)
  %150 = fsub fast float %63, %106
  %151 = call float @dx.op.unary.f32(i32 6, float %150)  ; FAbs(value)
  %152 = fsub fast float %145, %137
  %153 = fsub fast float %152, %77
  %154 = fsub fast float %147, %141
  %155 = fsub fast float %154, %115
  %156 = fsub fast float %137, %77
  %157 = fsub fast float %141, %115
  %158 = fsub fast float %145, %75
  %159 = fsub fast float %147, %75
  %160 = fadd fast float %153, %145
  %161 = fadd fast float %155, %147
  %162 = fsub fast float %156, %157
  %163 = call float @dx.op.unary.f32(i32 6, float %162)  ; FAbs(value)
  %164 = fsub fast float %163, %151
  %165 = fsub fast float %161, %156
  %166 = fsub fast float %160, %157
  %167 = call float @dx.op.binary.f32(i32 35, float %166, float %165)  ; FMax(a,b)
  %168 = call float @dx.op.binary.f32(i32 35, float %167, float %164)  ; FMax(a,b)
  %169 = fsub fast float %168, %117
  %170 = fadd fast float %160, %157
  %171 = fsub fast float %170, %151
  %172 = fsub fast float %156, %151
  %173 = fadd fast float %172, %161
  %174 = call float @dx.op.binary.f32(i32 35, float %173, float %171)  ; FMax(a,b)
  %175 = call float @dx.op.binary.f32(i32 35, float %174, float %169)  ; FMax(a,b)
  %176 = fadd fast float %157, %156
  %177 = call float @dx.op.unary.f32(i32 6, float %176)  ; FAbs(value)
  %178 = call float @dx.op.binary.f32(i32 35, float %177, float %175)  ; FMax(a,b)
  %179 = fsub fast float -0.000000e+00, %158
  %180 = fsub fast float %179, %147
  %181 = fadd fast float %180, %178
  %182 = fadd fast float %153, %75
  %183 = fadd fast float %182, %155
  %184 = call float @dx.op.binary.f32(i32 35, float %183, float %181)  ; FMax(a,b)
  %185 = call float @dx.op.unary.f32(i32 6, float %157)  ; FAbs(value)
  %186 = fadd fast float %159, %185
  %187 = call float @dx.op.unary.f32(i32 6, float %156)  ; FAbs(value)
  %188 = fadd fast float %187, %158
  %189 = call float @dx.op.binary.f32(i32 35, float %188, float %186)  ; FMax(a,b)
  %190 = fsub fast float -0.000000e+00, %155
  %191 = fsub fast float -0.000000e+00, %153
  %192 = call float @dx.op.binary.f32(i32 35, float %191, float %190)  ; FMax(a,b)
  %193 = fsub fast float %192, %75
  %194 = call float @dx.op.binary.f32(i32 35, float %193, float %189)  ; FMax(a,b)
  %195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %196 = extractvalue %dx.types.CBufRet.f32 %195, 3
  %197 = fmul fast float %196, 0x3FD9191920000000
  %198 = call float @dx.op.binary.f32(i32 35, float %197, float %194)  ; FMax(a,b)
  %199 = fcmp fast olt float %198, %184
  %200 = and i1 %118, %199
  %201 = select i1 %200, float %85, float 0.000000e+00
  %202 = fsub fast float %137, %145
  %203 = fsub fast float %202, %75
  %204 = fsub fast float %139, %149
  %205 = fsub fast float %204, %117
  %206 = fsub fast float %149, %117
  %207 = fsub fast float %139, %77
  %208 = fadd fast float %203, %137
  %209 = fadd fast float %205, %139
  %210 = fsub fast float %158, %206
  %211 = call float @dx.op.unary.f32(i32 6, float %210)  ; FAbs(value)
  %212 = fsub fast float %211, %143
  %213 = fsub fast float %209, %158
  %214 = fsub fast float %208, %206
  %215 = call float @dx.op.binary.f32(i32 35, float %214, float %213)  ; FMax(a,b)
  %216 = call float @dx.op.binary.f32(i32 35, float %215, float %212)  ; FMax(a,b)
  %217 = fsub fast float %216, %115
  %218 = fsub fast float %208, %143
  %219 = fadd fast float %218, %206
  %220 = fsub fast float %158, %143
  %221 = fadd fast float %220, %209
  %222 = call float @dx.op.binary.f32(i32 35, float %221, float %219)  ; FMax(a,b)
  %223 = call float @dx.op.binary.f32(i32 35, float %222, float %217)  ; FMax(a,b)
  %224 = fadd fast float %206, %158
  %225 = call float @dx.op.unary.f32(i32 6, float %224)  ; FAbs(value)
  %226 = call float @dx.op.binary.f32(i32 35, float %225, float %223)  ; FMax(a,b)
  %227 = fsub fast float -0.000000e+00, %156
  %228 = fsub fast float %227, %139
  %229 = fadd fast float %228, %226
  %230 = fadd fast float %203, %77
  %231 = fadd fast float %230, %205
  %232 = call float @dx.op.binary.f32(i32 35, float %231, float %229)  ; FMax(a,b)
  %233 = call float @dx.op.unary.f32(i32 6, float %206)  ; FAbs(value)
  %234 = fadd fast float %207, %233
  %235 = call float @dx.op.unary.f32(i32 6, float %158)  ; FAbs(value)
  %236 = fadd fast float %235, %156
  %237 = call float @dx.op.binary.f32(i32 35, float %236, float %234)  ; FMax(a,b)
  %238 = fsub fast float -0.000000e+00, %205
  %239 = fsub fast float -0.000000e+00, %203
  %240 = call float @dx.op.binary.f32(i32 35, float %239, float %238)  ; FMax(a,b)
  %241 = fsub fast float %240, %77
  %242 = call float @dx.op.binary.f32(i32 35, float %241, float %237)  ; FMax(a,b)
  %243 = call float @dx.op.binary.f32(i32 35, float %197, float %242)  ; FMax(a,b)
  %244 = fcmp fast olt float %243, %232
  %245 = and i1 %119, %244
  %246 = select i1 %245, float %86, float 0.000000e+00
  %247 = fmul fast float %58, 2.000000e+00
  %248 = fmul fast float %53, 4.000000e+00
  %249 = fsub fast float %248, %247
  %250 = fsub fast float %249, %90
  %251 = fsub fast float %250, %98
  %252 = call float @dx.op.unary.f32(i32 6, float %251)  ; FAbs(value)
  %253 = fmul fast float %63, 2.000000e+00
  %254 = fsub fast float %248, %253
  %255 = fsub fast float %254, %90
  %256 = fsub fast float %255, %94
  %257 = call float @dx.op.unary.f32(i32 6, float %256)  ; FAbs(value)
  %258 = fmul fast float %73, 2.000000e+00
  %259 = fsub fast float %248, %258
  %260 = fsub fast float %259, %98
  %261 = fsub fast float %260, %113
  %262 = call float @dx.op.unary.f32(i32 6, float %261)  ; FAbs(value)
  %263 = fmul fast float %102, 2.000000e+00
  %264 = fmul fast float %58, 4.000000e+00
  %265 = fsub fast float %264, %263
  %266 = fsub fast float %265, %123
  %267 = fsub fast float %266, %127
  %268 = call float @dx.op.unary.f32(i32 6, float %267)  ; FAbs(value)
  %269 = fmul fast float %106, 2.000000e+00
  %270 = fmul fast float %63, 4.000000e+00
  %271 = fsub fast float %270, %269
  %272 = fsub fast float %271, %131
  %273 = fsub fast float %272, %135
  %274 = call float @dx.op.unary.f32(i32 6, float %273)  ; FAbs(value)
  %275 = fmul fast float %53, 2.000000e+00
  %276 = fmul fast float %68, 4.000000e+00
  %277 = fsub fast float -0.000000e+00, %275
  %278 = fsub fast float %277, %63
  %279 = fsub fast float %278, %73
  %280 = fadd fast float %279, %276
  %281 = call float @dx.op.unary.f32(i32 6, float %280)  ; FAbs(value)
  %282 = fmul fast float %73, 4.000000e+00
  %283 = fmul fast float %53, -2.000000e+00
  %284 = fsub fast float %283, %58
  %285 = fsub fast float %284, %68
  %286 = fadd fast float %285, %282
  %287 = call float @dx.op.unary.f32(i32 6, float %286)  ; FAbs(value)
  %288 = call float @dx.op.binary.f32(i32 35, float %274, float %287)  ; FMax(a,b)
  %289 = fcmp fast olt float %288, %257
  %290 = select i1 %289, i32 8, i32 0
  %291 = call float @dx.op.binary.f32(i32 35, float %262, float %268)  ; FMax(a,b)
  %292 = call float @dx.op.binary.f32(i32 35, float %291, float %281)  ; FMax(a,b)
  %293 = call float @dx.op.binary.f32(i32 35, float %257, float %292)  ; FMax(a,b)
  %294 = fcmp fast olt float %293, %252
  %295 = select i1 %294, i32 2, i32 %290
  %296 = lshr exact i32 %295, 1
  %297 = and i32 %296, 1
  %298 = lshr i32 %295, 3
  %299 = sub i32 %8, %298
  %300 = sub i32 %9, %297
  %301 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %299, i32 %300, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %302 = extractvalue %dx.types.ResRet.f32 %301, 0
  %303 = extractvalue %dx.types.ResRet.f32 %301, 1
  %304 = extractvalue %dx.types.ResRet.f32 %301, 2
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %8, i32 %9, i32 undef, float %201, float %246, float %201, float %201, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %305 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %8, i32 %9, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %306 = extractvalue %dx.types.ResRet.f32 %305, 0
  %307 = extractvalue %dx.types.ResRet.f32 %305, 1
  %308 = extractvalue %dx.types.ResRet.f32 %305, 2
  %309 = shl nuw nsw i32 %295, 24
  %310 = shl i32 %9, 12
  %311 = or i32 %310, %8
  %312 = or i32 %311, %309
  %313 = call i32 @dx.op.legacyF32ToF16(i32 130, float %306)  ; LegacyF32ToF16(value)
  %314 = call i32 @dx.op.legacyF32ToF16(i32 130, float %307)  ; LegacyF32ToF16(value)
  %315 = call i32 @dx.op.legacyF32ToF16(i32 130, float %308)  ; LegacyF32ToF16(value)
  %316 = lshr i32 %313, 4
  %317 = and i32 %316, 2047
  %318 = shl i32 %314, 7
  %319 = and i32 %318, 4192256
  %320 = or i32 %319, %317
  %321 = shl i32 %315, 17
  %322 = and i32 %321, -4194304
  %323 = or i32 %320, %322
  %324 = call i32 @dx.op.legacyF32ToF16(i32 130, float %302)  ; LegacyF32ToF16(value)
  %325 = call i32 @dx.op.legacyF32ToF16(i32 130, float %303)  ; LegacyF32ToF16(value)
  %326 = call i32 @dx.op.legacyF32ToF16(i32 130, float %304)  ; LegacyF32ToF16(value)
  %327 = lshr i32 %324, 4
  %328 = and i32 %327, 2047
  %329 = shl i32 %325, 7
  %330 = and i32 %329, 4192256
  %331 = or i32 %330, %328
  %332 = shl i32 %326, 17
  %333 = and i32 %332, -4194304
  %334 = or i32 %331, %333
  %335 = and i32 %295, 8
  %336 = icmp ne i32 %335, 0
  %337 = fcmp fast ogt float %201, 5.000000e-01
  %338 = and i1 %337, %336
  br i1 %338, label %339, label %341, !dx.controlflow.hints !31

; <label>:339                                     ; preds = %109
  %340 = call i32 @dx.op.bufferUpdateCounter(i32 70, %dx.types.Handle %1, i8 1)  ; BufferUpdateCounter(uav,inc)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %340, i32 0, i32 %312, i32 %323, i32 %334, i32 undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %341

; <label>:341                                     ; preds = %339, %109
  %342 = and i32 %295, 2
  %343 = icmp ne i32 %342, 0
  %344 = fcmp fast ogt float %246, 5.000000e-01
  %345 = and i1 %344, %343
  br i1 %345, label %346, label %348, !dx.controlflow.hints !32

; <label>:346                                     ; preds = %341
  %347 = call i32 @dx.op.bufferUpdateCounter(i32 70, %dx.types.Handle %2, i8 1)  ; BufferUpdateCounter(uav,inc)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %347, i32 0, i32 %312, i32 %323, i32 %334, i32 undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %348

; <label>:348                                     ; preds = %346, %341, %47
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

