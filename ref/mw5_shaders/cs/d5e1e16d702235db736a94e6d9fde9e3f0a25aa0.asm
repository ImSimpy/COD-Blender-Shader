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
; shader hash: 68960cff9348637180418440de9a2b65
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
;                                       UAVunorm_f32          2d      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.RWTexture2D<vector<float, 4> >" = type { <4 x float> }
%GfxHdrScopesProcessCBuffer = type { i32, i32, i32, i32, i32, i32, i32, i32, float, float, i32, i32 }
%struct.SamplerState = type { i32 }

@"\01?col@?1??HeatMapGradient_PQ@@YA?AV?$vector@M$02@@M@Z@3QBV2@B.v.1dim" = internal constant [24 x float] [float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00], align 4

define void @cs_hdr_scopes_process() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %6 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %7 = alloca [8 x float], align 4
  %8 = alloca [8 x float], align 4
  %9 = alloca [8 x float], align 4
  %10 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %11 = extractvalue %dx.types.CBufRet.i32 %10, 0
  %12 = icmp sge i32 %5, %11
  %13 = extractvalue %dx.types.CBufRet.i32 %10, 1
  %14 = icmp sge i32 %6, %13
  %15 = or i1 %12, %14
  br i1 %15, label %921, label %16, !dx.controlflow.hints !18

; <label>:16                                      ; preds = %0
  %17 = uitofp i32 %5 to float
  %18 = uitofp i32 %6 to float
  %19 = sitofp i32 %11 to float
  %20 = sitofp i32 %13 to float
  %21 = fdiv fast float %17, %19
  %22 = fdiv fast float %18, %20
  %23 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %24 = extractvalue %dx.types.CBufRet.i32 %23, 0
  switch i32 %24, label %768 [
    i32 0, label %25
    i32 1, label %30
  ], !dx.controlflow.hints !19

; <label>:25                                      ; preds = %16
  %26 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %3, float %21, float %22, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %27 = extractvalue %dx.types.ResRet.f32 %26, 0
  %28 = extractvalue %dx.types.ResRet.f32 %26, 1
  %29 = extractvalue %dx.types.ResRet.f32 %26, 2
  br label %768

; <label>:30                                      ; preds = %16
  %31 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %3, float %21, float %22, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %32 = extractvalue %dx.types.ResRet.f32 %31, 0
  %33 = extractvalue %dx.types.ResRet.f32 %31, 1
  %34 = extractvalue %dx.types.ResRet.f32 %31, 2
  %35 = extractvalue %dx.types.CBufRet.i32 %23, 1
  %36 = add i32 %35, -1
  %37 = icmp ult i32 %36, 2
  br i1 %37, label %38, label %385, !dx.controlflow.hints !20

; <label>:38                                      ; preds = %30
  %39 = icmp eq i32 %35, 1
  %40 = call float @dx.op.unary.f32(i32 23, float %32)  ; Log(value)
  %41 = call float @dx.op.unary.f32(i32 23, float %33)  ; Log(value)
  %42 = call float @dx.op.unary.f32(i32 23, float %34)  ; Log(value)
  %43 = fmul fast float %40, 0x3F89F9B580000000
  %44 = fmul fast float %41, 0x3F89F9B580000000
  %45 = fmul fast float %42, 0x3F89F9B580000000
  %46 = call float @dx.op.unary.f32(i32 21, float %43)  ; Exp(value)
  %47 = call float @dx.op.unary.f32(i32 21, float %44)  ; Exp(value)
  %48 = call float @dx.op.unary.f32(i32 21, float %45)  ; Exp(value)
  %49 = fmul fast float %46, 1.868750e+01
  %50 = fmul fast float %47, 1.868750e+01
  %51 = fmul fast float %48, 1.868750e+01
  %52 = fsub fast float 0x4032DA0000000000, %49
  %53 = fsub fast float 0x4032DA0000000000, %50
  %54 = fsub fast float 0x4032DA0000000000, %51
  %55 = fadd fast float %46, -8.359375e-01
  %56 = fadd fast float %47, -8.359375e-01
  %57 = fadd fast float %48, -8.359375e-01
  %58 = call float @dx.op.binary.f32(i32 35, float %55, float 0.000000e+00)  ; FMax(a,b)
  %59 = call float @dx.op.binary.f32(i32 35, float %56, float 0.000000e+00)  ; FMax(a,b)
  %60 = call float @dx.op.binary.f32(i32 35, float %57, float 0.000000e+00)  ; FMax(a,b)
  %61 = fdiv fast float %58, %52
  %62 = fdiv fast float %59, %53
  %63 = fdiv fast float %60, %54
  %64 = call float @dx.op.unary.f32(i32 23, float %61)  ; Log(value)
  %65 = call float @dx.op.unary.f32(i32 23, float %62)  ; Log(value)
  %66 = call float @dx.op.unary.f32(i32 23, float %63)  ; Log(value)
  %67 = fmul fast float %64, 0x40191C0D60000000
  %68 = fmul fast float %65, 0x40191C0D60000000
  %69 = fmul fast float %66, 0x40191C0D60000000
  %70 = call float @dx.op.unary.f32(i32 21, float %67)  ; Exp(value)
  %71 = call float @dx.op.unary.f32(i32 21, float %68)  ; Exp(value)
  %72 = call float @dx.op.unary.f32(i32 21, float %69)  ; Exp(value)
  %73 = fmul fast float %70, 1.000000e+04
  %74 = fmul fast float %71, 1.000000e+04
  %75 = fmul fast float %72, 1.000000e+04
  br i1 %39, label %76, label %78, !dx.controlflow.hints !21

; <label>:76                                      ; preds = %38
  %77 = call float @dx.op.dot3.f32(i32 55, float %73, float %74, float %75, float 0x3FD0D013A0000000, float 0x3FE5B22D00000000, float 0x3FAE5C91E0000000)  ; Dot3(ax,ay,az,bx,by,bz)
  br label %80

; <label>:78                                      ; preds = %38
  %79 = call float @dx.op.dot3.f32(i32 55, float %73, float %74, float %75, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  br label %80

; <label>:80                                      ; preds = %78, %76
  %81 = phi float [ %77, %76 ], [ %79, %78 ]
  %82 = fmul fast float %81, 0x3F1A36E2E0000000
  %83 = call float @dx.op.unary.f32(i32 23, float %82)  ; Log(value)
  %84 = fmul fast float %83, 0x3FC4640000000000
  %85 = call float @dx.op.unary.f32(i32 21, float %84)  ; Exp(value)
  %86 = fmul fast float %85, 0x4032DA0000000000
  %87 = fadd fast float %86, 8.359375e-01
  %88 = fmul fast float %85, 1.868750e+01
  %89 = fadd fast float %88, 1.000000e+00
  %90 = fdiv fast float %87, %89
  %91 = call float @dx.op.unary.f32(i32 23, float %90)  ; Log(value)
  %92 = fmul fast float %91, 7.884375e+01
  %93 = call float @dx.op.unary.f32(i32 21, float %92)  ; Exp(value)
  %94 = fcmp fast olt float %21, 0x3F947AE140000000
  %95 = fsub fast float 1.000000e+00, %22
  %96 = select i1 %94, float %95, float %93
  %97 = getelementptr inbounds [8 x float], [8 x float]* %9, i32 0, i32 0
  %98 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %99 = fmul fast float %98, 0x3FC4640000000000
  %100 = call float @dx.op.unary.f32(i32 21, float %99)  ; Exp(value)
  %101 = fmul fast float %100, 0x4032DA0000000000
  %102 = fadd fast float %101, 8.359375e-01
  %103 = fmul fast float %100, 1.868750e+01
  %104 = fadd fast float %103, 1.000000e+00
  %105 = fdiv fast float %102, %104
  %106 = call float @dx.op.unary.f32(i32 23, float %105)  ; Log(value)
  %107 = fmul fast float %106, 7.884375e+01
  %108 = call float @dx.op.unary.f32(i32 21, float %107)  ; Exp(value)
  store float %108, float* %97, align 4, !tbaa !22, !noalias !26
  %109 = getelementptr inbounds [8 x float], [8 x float]* %9, i32 0, i32 1
  store float 0x3FAFEA9DC0000000, float* %109, align 4, !tbaa !22, !noalias !26
  %110 = getelementptr inbounds [8 x float], [8 x float]* %9, i32 0, i32 2
  store float 0x3FC33169C0000000, float* %110, align 4, !tbaa !22, !noalias !26
  %111 = getelementptr inbounds [8 x float], [8 x float]* %9, i32 0, i32 3
  store float 0x3FDC2D91E0000000, float* %111, align 4, !tbaa !22, !noalias !26
  %112 = getelementptr inbounds [8 x float], [8 x float]* %9, i32 0, i32 4
  store float 0x3FE0422CA0000000, float* %112, align 4, !tbaa !22, !noalias !26
  %113 = getelementptr inbounds [8 x float], [8 x float]* %9, i32 0, i32 5
  store float 0x3FE80EFC80000000, float* %113, align 4, !tbaa !22, !noalias !26
  %114 = getelementptr inbounds [8 x float], [8 x float]* %9, i32 0, i32 6
  store float 0x3FEA7A3BE0000000, float* %114, align 4, !tbaa !22, !noalias !26
  %115 = getelementptr inbounds [8 x float], [8 x float]* %9, i32 0, i32 7
  store float 1.000000e+00, float* %115, align 4, !tbaa !22, !noalias !26
  %116 = fcmp fast ogt float %96, 1.000000e+00
  %117 = fcmp fast ogt float %96, 0x3FEA7A3BE0000000
  %118 = or i1 %116, %117
  br i1 %118, label %119, label %948, !dx.controlflow.hints !29

; <label>:119                                     ; preds = %960, %958, %956, %954, %952, %950, %948, %80
  %120 = phi i32 [ 7, %80 ], [ 6, %948 ], [ 5, %950 ], [ 4, %952 ], [ 3, %954 ], [ 2, %956 ], [ 1, %958 ], [ 0, %960 ]
  %121 = add nsw i32 %120, -1
  %122 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %121)  ; IMax(a,b)
  %123 = getelementptr inbounds [8 x float], [8 x float]* %9, i32 0, i32 %122
  %124 = load float, float* %123, align 4, !tbaa !22, !noalias !26
  %125 = getelementptr inbounds [8 x float], [8 x float]* %9, i32 0, i32 %120
  %126 = load float, float* %125, align 4, !tbaa !22, !noalias !26
  %127 = fsub fast float %96, %124
  %128 = fsub fast float %126, %124
  %129 = fdiv fast float %127, %128
  %130 = call float @dx.op.unary.f32(i32 7, float %129)  ; Saturate(value)
  %131 = mul i32 %120, 3
  %132 = add i32 0, %131
  %133 = getelementptr [24 x float], [24 x float]* @"\01?col@?1??HeatMapGradient_PQ@@YA?AV?$vector@M$02@@M@Z@3QBV2@B.v.1dim", i32 0, i32 %132
  %134 = load float, float* %133, align 4
  %135 = mul i32 %120, 3
  %136 = add i32 1, %135
  %137 = getelementptr [24 x float], [24 x float]* @"\01?col@?1??HeatMapGradient_PQ@@YA?AV?$vector@M$02@@M@Z@3QBV2@B.v.1dim", i32 0, i32 %136
  %138 = load float, float* %137, align 4
  %139 = mul i32 %120, 3
  %140 = add i32 2, %139
  %141 = getelementptr [24 x float], [24 x float]* @"\01?col@?1??HeatMapGradient_PQ@@YA?AV?$vector@M$02@@M@Z@3QBV2@B.v.1dim", i32 0, i32 %140
  %142 = load float, float* %141, align 4
  %143 = mul i32 %122, 3
  %144 = add i32 0, %143
  %145 = getelementptr [24 x float], [24 x float]* @"\01?col@?1??HeatMapGradient_PQ@@YA?AV?$vector@M$02@@M@Z@3QBV2@B.v.1dim", i32 0, i32 %144
  %146 = load float, float* %145, align 4
  %147 = mul i32 %122, 3
  %148 = add i32 1, %147
  %149 = getelementptr [24 x float], [24 x float]* @"\01?col@?1??HeatMapGradient_PQ@@YA?AV?$vector@M$02@@M@Z@3QBV2@B.v.1dim", i32 0, i32 %148
  %150 = load float, float* %149, align 4
  %151 = mul i32 %122, 3
  %152 = add i32 2, %151
  %153 = getelementptr [24 x float], [24 x float]* @"\01?col@?1??HeatMapGradient_PQ@@YA?AV?$vector@M$02@@M@Z@3QBV2@B.v.1dim", i32 0, i32 %152
  %154 = load float, float* %153, align 4
  %155 = fsub fast float %134, %146
  %156 = fsub fast float %138, %150
  %157 = fsub fast float %142, %154
  %158 = fmul fast float %155, %130
  %159 = fmul fast float %156, %130
  %160 = fmul fast float %157, %130
  %161 = fadd fast float %158, %146
  %162 = fadd fast float %159, %150
  %163 = fadd fast float %160, %154
  %164 = fadd fast float %21, 0xBF999999A0000000
  %165 = fmul fast float %164, 6.400000e+01
  %166 = fmul fast float %22, 3.200000e+01
  %167 = fcmp fast olt float %165, 0.000000e+00
  %168 = fcmp fast olt float %166, 0.000000e+00
  %169 = or i1 %167, %168
  %170 = fcmp fast oge float %165, 1.000000e+00
  %171 = or i1 %170, %169
  %172 = fcmp fast oge float %166, 1.000000e+00
  %173 = or i1 %172, %171
  %174 = select i1 %173, float 0.000000e+00, float 1.000000e+00
  %175 = fmul fast float %164, 5.120000e+02
  %176 = fmul fast float %22, 2.560000e+02
  %177 = call float @dx.op.unary.f32(i32 27, float %175)  ; Round_ni(value)
  %178 = call float @dx.op.unary.f32(i32 27, float %176)  ; Round_ni(value)
  %179 = fptoui float %177 to i32
  %180 = fptoui float %178 to i32
  %181 = shl i32 %180, 3
  %182 = add i32 %181, %179
  %183 = icmp ult i32 %180, 4
  %184 = select i1 %183, i32 404494336, i32 3938328
  %185 = and i32 %182, 31
  %186 = lshr i32 %184, %185
  %187 = and i32 %186, 1
  %188 = uitofp i32 %187 to float
  %189 = fmul fast float %188, %174
  %190 = fadd fast float %165, -1.000000e+00
  %191 = fcmp fast olt float %190, 0.000000e+00
  %192 = or i1 %168, %191
  %193 = fcmp fast oge float %190, 1.000000e+00
  %194 = or i1 %193, %192
  %195 = or i1 %172, %194
  %196 = select i1 %195, float 0.000000e+00, float 1.000000e+00
  %197 = fadd fast float %175, -8.000000e+00
  %198 = call float @dx.op.unary.f32(i32 27, float %197)  ; Round_ni(value)
  %199 = fptoui float %198 to i32
  %200 = add i32 %181, %199
  %201 = select i1 %183, i32 2071150080, i32 4089711
  %202 = and i32 %200, 31
  %203 = lshr i32 %201, %202
  %204 = and i32 %203, 1
  %205 = uitofp i32 %204 to float
  %206 = fmul fast float %205, %196
  %207 = fadd fast float %206, %189
  %208 = fadd fast float %165, -2.000000e+00
  %209 = fcmp fast olt float %208, 0.000000e+00
  %210 = or i1 %168, %209
  %211 = fcmp fast oge float %208, 1.000000e+00
  %212 = or i1 %211, %210
  %213 = or i1 %172, %212
  %214 = select i1 %213, float 0.000000e+00, float 1.000000e+00
  %215 = fadd fast float %175, -1.600000e+01
  %216 = call float @dx.op.unary.f32(i32 27, float %215)  ; Round_ni(value)
  %217 = fptoui float %216 to i32
  %218 = add i32 %181, %217
  %219 = and i32 %218, 31
  %220 = lshr i32 %201, %219
  %221 = and i32 %220, 1
  %222 = uitofp i32 %221 to float
  %223 = fmul fast float %222, %214
  %224 = fadd fast float %207, %223
  %225 = fadd fast float %165, -3.000000e+00
  %226 = fcmp fast olt float %225, 0.000000e+00
  %227 = or i1 %168, %226
  %228 = fcmp fast oge float %225, 1.000000e+00
  %229 = or i1 %228, %227
  %230 = or i1 %172, %229
  %231 = select i1 %230, float 0.000000e+00, float 1.000000e+00
  %232 = fadd fast float %175, -2.400000e+01
  %233 = call float @dx.op.unary.f32(i32 27, float %232)  ; Round_ni(value)
  %234 = fptoui float %233 to i32
  %235 = add i32 %181, %234
  %236 = and i32 %235, 31
  %237 = lshr i32 %201, %236
  %238 = and i32 %237, 1
  %239 = uitofp i32 %238 to float
  %240 = fmul fast float %239, %231
  %241 = fadd fast float %224, %240
  %242 = fadd fast float %165, -4.000000e+00
  %243 = fcmp fast olt float %242, 0.000000e+00
  %244 = or i1 %168, %243
  %245 = fcmp fast oge float %242, 1.000000e+00
  %246 = or i1 %245, %244
  %247 = or i1 %172, %246
  %248 = select i1 %247, float 0.000000e+00, float 1.000000e+00
  %249 = fadd fast float %175, -3.200000e+01
  %250 = call float @dx.op.unary.f32(i32 27, float %249)  ; Round_ni(value)
  %251 = fptoui float %250 to i32
  %252 = add i32 %181, %251
  %253 = and i32 %252, 31
  %254 = lshr i32 %201, %253
  %255 = and i32 %254, 1
  %256 = uitofp i32 %255 to float
  %257 = fmul fast float %256, %248
  %258 = fadd fast float %241, %257
  %259 = fcmp fast ogt float %165, -7.500000e-01
  %260 = and i1 %259, %167
  %261 = call float @dx.op.unary.f32(i32 6, float %166)  ; FAbs(value)
  %262 = fcmp fast olt float %261, 0x3FA99999A0000000
  %263 = and i1 %260, %262
  %264 = fadd fast float %258, 1.000000e+00
  %265 = select i1 %263, float %264, float %258
  %266 = fadd fast float %22, 0xBFCFC40E00000000
  %267 = fmul fast float %266, 3.200000e+01
  %268 = fcmp fast olt float %267, 0.000000e+00
  %269 = or i1 %167, %268
  %270 = or i1 %170, %269
  %271 = fcmp fast oge float %267, 1.000000e+00
  %272 = or i1 %271, %270
  %273 = select i1 %272, float 0.000000e+00, float 1.000000e+00
  %274 = fmul fast float %266, 2.560000e+02
  %275 = call float @dx.op.unary.f32(i32 27, float %274)  ; Round_ni(value)
  %276 = fptoui float %275 to i32
  %277 = shl i32 %276, 3
  %278 = add i32 %277, %179
  %279 = icmp ult i32 %276, 4
  %280 = select i1 %279, i32 404494336, i32 3938328
  %281 = and i32 %278, 31
  %282 = lshr i32 %280, %281
  %283 = and i32 %282, 1
  %284 = uitofp i32 %283 to float
  %285 = fmul fast float %284, %273
  %286 = fadd fast float %265, %285
  %287 = or i1 %191, %268
  %288 = or i1 %193, %287
  %289 = or i1 %271, %288
  %290 = select i1 %289, float 0.000000e+00, float 1.000000e+00
  %291 = add i32 %277, %199
  %292 = select i1 %279, i32 2071150080, i32 4089711
  %293 = and i32 %291, 31
  %294 = lshr i32 %292, %293
  %295 = and i32 %294, 1
  %296 = uitofp i32 %295 to float
  %297 = fmul fast float %296, %290
  %298 = fadd fast float %286, %297
  %299 = or i1 %209, %268
  %300 = or i1 %211, %299
  %301 = or i1 %271, %300
  %302 = select i1 %301, float 0.000000e+00, float 1.000000e+00
  %303 = add i32 %277, %217
  %304 = and i32 %303, 31
  %305 = lshr i32 %292, %304
  %306 = and i32 %305, 1
  %307 = uitofp i32 %306 to float
  %308 = fmul fast float %307, %302
  %309 = fadd fast float %298, %308
  %310 = or i1 %226, %268
  %311 = or i1 %228, %310
  %312 = or i1 %271, %311
  %313 = select i1 %312, float 0.000000e+00, float 1.000000e+00
  %314 = add i32 %277, %234
  %315 = and i32 %314, 31
  %316 = lshr i32 %292, %315
  %317 = and i32 %316, 1
  %318 = uitofp i32 %317 to float
  %319 = fmul fast float %318, %313
  %320 = fadd fast float %309, %319
  %321 = call float @dx.op.unary.f32(i32 6, float %267)  ; FAbs(value)
  %322 = fcmp fast olt float %321, 0x3FA99999A0000000
  %323 = and i1 %260, %322
  %324 = fadd fast float %320, 1.000000e+00
  %325 = select i1 %323, float %324, float %320
  %326 = fadd fast float %22, 0xBFDF7BA6C0000000
  %327 = fmul fast float %326, 3.200000e+01
  %328 = fcmp fast olt float %327, 0.000000e+00
  %329 = or i1 %167, %328
  %330 = or i1 %170, %329
  %331 = fcmp fast oge float %327, 1.000000e+00
  %332 = or i1 %331, %330
  %333 = select i1 %332, float 0.000000e+00, float 1.000000e+00
  %334 = fmul fast float %326, 2.560000e+02
  %335 = call float @dx.op.unary.f32(i32 27, float %334)  ; Round_ni(value)
  %336 = fptoui float %335 to i32
  %337 = shl i32 %336, 3
  %338 = add i32 %337, %179
  %339 = icmp ult i32 %336, 4
  %340 = select i1 %339, i32 404494336, i32 3938328
  %341 = and i32 %338, 31
  %342 = lshr i32 %340, %341
  %343 = and i32 %342, 1
  %344 = uitofp i32 %343 to float
  %345 = fmul fast float %344, %333
  %346 = fadd fast float %325, %345
  %347 = or i1 %191, %328
  %348 = or i1 %193, %347
  %349 = or i1 %331, %348
  %350 = select i1 %349, float 0.000000e+00, float 1.000000e+00
  %351 = add i32 %337, %199
  %352 = select i1 %339, i32 2071150080, i32 4089711
  %353 = and i32 %351, 31
  %354 = lshr i32 %352, %353
  %355 = and i32 %354, 1
  %356 = uitofp i32 %355 to float
  %357 = fmul fast float %356, %350
  %358 = fadd fast float %346, %357
  %359 = or i1 %209, %328
  %360 = or i1 %211, %359
  %361 = or i1 %331, %360
  %362 = select i1 %361, float 0.000000e+00, float 1.000000e+00
  %363 = add i32 %337, %217
  %364 = and i32 %363, 31
  %365 = lshr i32 %352, %364
  %366 = and i32 %365, 1
  %367 = uitofp i32 %366 to float
  %368 = fmul fast float %367, %362
  %369 = fadd fast float %358, %368
  %370 = call float @dx.op.unary.f32(i32 6, float %327)  ; FAbs(value)
  %371 = fcmp fast olt float %370, 0x3FA99999A0000000
  %372 = and i1 %260, %371
  %373 = fadd fast float %369, 1.000000e+00
  %374 = select i1 %372, float %373, float %369
  %375 = call float @dx.op.binary.f32(i32 36, float %374, float 1.000000e+00)  ; FMin(a,b)
  %376 = fsub fast float 1.000000e+00, %161
  %377 = fsub fast float 1.000000e+00, %162
  %378 = fsub fast float 1.000000e+00, %163
  %379 = fmul fast float %375, %376
  %380 = fmul fast float %375, %377
  %381 = fmul fast float %375, %378
  %382 = fadd fast float %379, %161
  %383 = fadd fast float %380, %162
  %384 = fadd fast float %381, %163
  br label %385

; <label>:385                                     ; preds = %119, %30
  %386 = phi float [ %161, %119 ], [ %32, %30 ]
  %387 = phi float [ %162, %119 ], [ %33, %30 ]
  %388 = phi float [ %163, %119 ], [ %34, %30 ]
  %389 = phi float [ %382, %119 ], [ 0.000000e+00, %30 ]
  %390 = phi float [ %383, %119 ], [ 0.000000e+00, %30 ]
  %391 = phi float [ %384, %119 ], [ 0.000000e+00, %30 ]
  %392 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %393 = extractvalue %dx.types.CBufRet.i32 %392, 1
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %395, label %498, !dx.controlflow.hints !30

; <label>:395                                     ; preds = %385
  %396 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %397 = fmul fast float %396, 0x3FDAAAAAA0000000
  %398 = call float @dx.op.unary.f32(i32 21, float %397)  ; Exp(value)
  %399 = fsub fast float 1.000000e+00, %398
  %400 = call float @dx.op.unary.f32(i32 23, float %399)  ; Log(value)
  %401 = fmul fast float %400, 0x4003333340000000
  %402 = call float @dx.op.unary.f32(i32 21, float %401)  ; Exp(value)
  %403 = fdiv fast float %398, %399
  %404 = fadd fast float %403, %386
  %405 = fadd fast float %403, %387
  %406 = fadd fast float %403, %388
  %407 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %404)  ; FMax(a,b)
  %408 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %405)  ; FMax(a,b)
  %409 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %406)  ; FMax(a,b)
  %410 = call float @dx.op.unary.f32(i32 23, float %407)  ; Log(value)
  %411 = call float @dx.op.unary.f32(i32 23, float %408)  ; Log(value)
  %412 = call float @dx.op.unary.f32(i32 23, float %409)  ; Log(value)
  %413 = fmul fast float %410, 0x4003333340000000
  %414 = fmul fast float %411, 0x4003333340000000
  %415 = fmul fast float %412, 0x4003333340000000
  %416 = call float @dx.op.unary.f32(i32 21, float %413)  ; Exp(value)
  %417 = call float @dx.op.unary.f32(i32 21, float %414)  ; Exp(value)
  %418 = call float @dx.op.unary.f32(i32 21, float %415)  ; Exp(value)
  %419 = fmul fast float %416, %402
  %420 = fmul fast float %417, %402
  %421 = fmul fast float %418, %402
  %422 = call float @dx.op.dot3.f32(i32 55, float %419, float %420, float %421, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %423 = fdiv fast float %422, %402
  %424 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %423)  ; FMax(a,b)
  %425 = call float @dx.op.unary.f32(i32 23, float %424)  ; Log(value)
  %426 = fmul fast float %425, 0x3FDAAAAAA0000000
  %427 = call float @dx.op.unary.f32(i32 21, float %426)  ; Exp(value)
  %428 = fsub fast float %427, %403
  %429 = fcmp fast olt float %21, 0x3F947AE140000000
  %430 = fsub fast float 1.000000e+00, %22
  %431 = select i1 %429, float %430, float %428
  %432 = getelementptr inbounds [8 x float], [8 x float]* %8, i32 0, i32 0
  %433 = fmul fast float %396, 0x3FC4640000000000
  %434 = call float @dx.op.unary.f32(i32 21, float %433)  ; Exp(value)
  %435 = fmul fast float %434, 0x4032DA0000000000
  %436 = fadd fast float %435, 8.359375e-01
  %437 = fmul fast float %434, 1.868750e+01
  %438 = fadd fast float %437, 1.000000e+00
  %439 = fdiv fast float %436, %438
  %440 = call float @dx.op.unary.f32(i32 23, float %439)  ; Log(value)
  %441 = fmul fast float %440, 7.884375e+01
  %442 = call float @dx.op.unary.f32(i32 21, float %441)  ; Exp(value)
  store float %442, float* %432, align 4, !tbaa !22, !noalias !26
  %443 = getelementptr inbounds [8 x float], [8 x float]* %8, i32 0, i32 1
  store float 0x3FAFEA9DC0000000, float* %443, align 4, !tbaa !22, !noalias !26
  %444 = getelementptr inbounds [8 x float], [8 x float]* %8, i32 0, i32 2
  store float 0x3FC33169C0000000, float* %444, align 4, !tbaa !22, !noalias !26
  %445 = getelementptr inbounds [8 x float], [8 x float]* %8, i32 0, i32 3
  store float 0x3FDC2D91E0000000, float* %445, align 4, !tbaa !22, !noalias !26
  %446 = getelementptr inbounds [8 x float], [8 x float]* %8, i32 0, i32 4
  store float 0x3FE0422CA0000000, float* %446, align 4, !tbaa !22, !noalias !26
  %447 = getelementptr inbounds [8 x float], [8 x float]* %8, i32 0, i32 5
  store float 0x3FE80EFC80000000, float* %447, align 4, !tbaa !22, !noalias !26
  %448 = getelementptr inbounds [8 x float], [8 x float]* %8, i32 0, i32 6
  store float 0x3FEA7A3BE0000000, float* %448, align 4, !tbaa !22, !noalias !26
  %449 = getelementptr inbounds [8 x float], [8 x float]* %8, i32 0, i32 7
  store float 1.000000e+00, float* %449, align 4, !tbaa !22, !noalias !26
  %450 = fcmp fast ogt float %431, 1.000000e+00
  %451 = fcmp fast ogt float %431, 0x3FEA7A3BE0000000
  %452 = or i1 %450, %451
  br i1 %452, label %453, label %935, !dx.controlflow.hints !29

; <label>:453                                     ; preds = %947, %945, %943, %941, %939, %937, %935, %395
  %454 = phi i32 [ 7, %395 ], [ 6, %935 ], [ 5, %937 ], [ 4, %939 ], [ 3, %941 ], [ 2, %943 ], [ 1, %945 ], [ 0, %947 ]
  %455 = add nsw i32 %454, -1
  %456 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %455)  ; IMax(a,b)
  %457 = getelementptr inbounds [8 x float], [8 x float]* %8, i32 0, i32 %456
  %458 = load float, float* %457, align 4, !tbaa !22, !noalias !26
  %459 = getelementptr inbounds [8 x float], [8 x float]* %8, i32 0, i32 %454
  %460 = load float, float* %459, align 4, !tbaa !22, !noalias !26
  %461 = fsub fast float %431, %458
  %462 = fsub fast float %460, %458
  %463 = fdiv fast float %461, %462
  %464 = call float @dx.op.unary.f32(i32 7, float %463)  ; Saturate(value)
  %465 = mul i32 %454, 3
  %466 = add i32 0, %465
  %467 = getelementptr [24 x float], [24 x float]* @"\01?col@?1??HeatMapGradient_PQ@@YA?AV?$vector@M$02@@M@Z@3QBV2@B.v.1dim", i32 0, i32 %466
  %468 = load float, float* %467, align 4
  %469 = mul i32 %454, 3
  %470 = add i32 1, %469
  %471 = getelementptr [24 x float], [24 x float]* @"\01?col@?1??HeatMapGradient_PQ@@YA?AV?$vector@M$02@@M@Z@3QBV2@B.v.1dim", i32 0, i32 %470
  %472 = load float, float* %471, align 4
  %473 = mul i32 %454, 3
  %474 = add i32 2, %473
  %475 = getelementptr [24 x float], [24 x float]* @"\01?col@?1??HeatMapGradient_PQ@@YA?AV?$vector@M$02@@M@Z@3QBV2@B.v.1dim", i32 0, i32 %474
  %476 = load float, float* %475, align 4
  %477 = mul i32 %456, 3
  %478 = add i32 0, %477
  %479 = getelementptr [24 x float], [24 x float]* @"\01?col@?1??HeatMapGradient_PQ@@YA?AV?$vector@M$02@@M@Z@3QBV2@B.v.1dim", i32 0, i32 %478
  %480 = load float, float* %479, align 4
  %481 = mul i32 %456, 3
  %482 = add i32 1, %481
  %483 = getelementptr [24 x float], [24 x float]* @"\01?col@?1??HeatMapGradient_PQ@@YA?AV?$vector@M$02@@M@Z@3QBV2@B.v.1dim", i32 0, i32 %482
  %484 = load float, float* %483, align 4
  %485 = mul i32 %456, 3
  %486 = add i32 2, %485
  %487 = getelementptr [24 x float], [24 x float]* @"\01?col@?1??HeatMapGradient_PQ@@YA?AV?$vector@M$02@@M@Z@3QBV2@B.v.1dim", i32 0, i32 %486
  %488 = load float, float* %487, align 4
  %489 = fsub fast float %468, %480
  %490 = fsub fast float %472, %484
  %491 = fsub fast float %476, %488
  %492 = fmul fast float %489, %464
  %493 = fmul fast float %490, %464
  %494 = fmul fast float %491, %464
  %495 = fadd fast float %492, %480
  %496 = fadd fast float %493, %484
  %497 = fadd fast float %494, %488
  br label %498

; <label>:498                                     ; preds = %453, %385
  %499 = phi float [ %495, %453 ], [ %389, %385 ]
  %500 = phi float [ %496, %453 ], [ %390, %385 ]
  %501 = phi float [ %497, %453 ], [ %391, %385 ]
  %502 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %503 = extractvalue %dx.types.CBufRet.i32 %502, 1
  %504 = icmp eq i32 %503, 3
  br i1 %504, label %505, label %768, !dx.controlflow.hints !31

; <label>:505                                     ; preds = %498
  %506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %507 = extractvalue %dx.types.CBufRet.f32 %506, 0
  %508 = fdiv fast float %386, %507
  %509 = fdiv fast float %387, %507
  %510 = fdiv fast float %388, %507
  %511 = call float @dx.op.dot3.f32(i32 55, float %508, float %509, float %510, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %512 = fcmp fast olt float %21, 0x3F947AE140000000
  br i1 %512, label %513, label %527, !dx.controlflow.hints !32

; <label>:513                                     ; preds = %505
  %514 = fsub fast float 1.000000e+00, %22
  %515 = call float @dx.op.unary.f32(i32 23, float %514)  ; Log(value)
  %516 = fmul fast float %515, 0x3F89F9B580000000
  %517 = call float @dx.op.unary.f32(i32 21, float %516)  ; Exp(value)
  %518 = fmul fast float %517, 1.868750e+01
  %519 = fsub fast float 0x4032DA0000000000, %518
  %520 = fadd fast float %517, -8.359375e-01
  %521 = call float @dx.op.binary.f32(i32 35, float %520, float 0.000000e+00)  ; FMax(a,b)
  %522 = fdiv fast float %521, %519
  %523 = call float @dx.op.unary.f32(i32 23, float %522)  ; Log(value)
  %524 = fmul fast float %523, 0x40191C0D60000000
  %525 = call float @dx.op.unary.f32(i32 21, float %524)  ; Exp(value)
  %526 = fmul fast float %525, 2.500000e+03
  br label %527

; <label>:527                                     ; preds = %513, %505
  %528 = phi float [ %526, %513 ], [ %511, %505 ]
  %529 = fmul fast float %528, 0x3F3A36E2E0000000
  %530 = call float @dx.op.unary.f32(i32 23, float %529)  ; Log(value)
  %531 = fmul fast float %530, 0x3FC4640000000000
  %532 = call float @dx.op.unary.f32(i32 21, float %531)  ; Exp(value)
  %533 = fmul fast float %532, 0x4032DA0000000000
  %534 = fadd fast float %533, 8.359375e-01
  %535 = fmul fast float %532, 1.868750e+01
  %536 = fadd fast float %535, 1.000000e+00
  %537 = fdiv fast float %534, %536
  %538 = call float @dx.op.unary.f32(i32 23, float %537)  ; Log(value)
  %539 = fmul fast float %538, 7.884375e+01
  %540 = call float @dx.op.unary.f32(i32 21, float %539)  ; Exp(value)
  %541 = getelementptr inbounds [8 x float], [8 x float]* %7, i32 0, i32 0
  %542 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %543 = fmul fast float %542, 0x3FC4640000000000
  %544 = call float @dx.op.unary.f32(i32 21, float %543)  ; Exp(value)
  %545 = fmul fast float %544, 0x4032DA0000000000
  %546 = fadd fast float %545, 8.359375e-01
  %547 = fmul fast float %544, 1.868750e+01
  %548 = fadd fast float %547, 1.000000e+00
  %549 = fdiv fast float %546, %548
  %550 = call float @dx.op.unary.f32(i32 23, float %549)  ; Log(value)
  %551 = fmul fast float %550, 7.884375e+01
  %552 = call float @dx.op.unary.f32(i32 21, float %551)  ; Exp(value)
  store float %552, float* %541, align 4, !tbaa !22, !noalias !26
  %553 = getelementptr inbounds [8 x float], [8 x float]* %7, i32 0, i32 1
  store float 0x3FAFEA9DC0000000, float* %553, align 4, !tbaa !22, !noalias !26
  %554 = getelementptr inbounds [8 x float], [8 x float]* %7, i32 0, i32 2
  store float 0x3FC33169C0000000, float* %554, align 4, !tbaa !22, !noalias !26
  %555 = getelementptr inbounds [8 x float], [8 x float]* %7, i32 0, i32 3
  store float 0x3FDC2D91E0000000, float* %555, align 4, !tbaa !22, !noalias !26
  %556 = getelementptr inbounds [8 x float], [8 x float]* %7, i32 0, i32 4
  store float 0x3FE0422CA0000000, float* %556, align 4, !tbaa !22, !noalias !26
  %557 = getelementptr inbounds [8 x float], [8 x float]* %7, i32 0, i32 5
  store float 0x3FE80EFC80000000, float* %557, align 4, !tbaa !22, !noalias !26
  %558 = getelementptr inbounds [8 x float], [8 x float]* %7, i32 0, i32 6
  store float 0x3FEA7A3BE0000000, float* %558, align 4, !tbaa !22, !noalias !26
  %559 = getelementptr inbounds [8 x float], [8 x float]* %7, i32 0, i32 7
  store float 1.000000e+00, float* %559, align 4, !tbaa !22, !noalias !26
  %560 = fcmp fast ogt float %540, 1.000000e+00
  %561 = fcmp fast ogt float %540, 0x3FEA7A3BE0000000
  %562 = or i1 %560, %561
  br i1 %562, label %563, label %922, !dx.controlflow.hints !29

; <label>:563                                     ; preds = %934, %932, %930, %928, %926, %924, %922, %527
  %564 = phi i32 [ 7, %527 ], [ 6, %922 ], [ 5, %924 ], [ 4, %926 ], [ 3, %928 ], [ 2, %930 ], [ 1, %932 ], [ 0, %934 ]
  %565 = add nsw i32 %564, -1
  %566 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %565)  ; IMax(a,b)
  %567 = getelementptr inbounds [8 x float], [8 x float]* %7, i32 0, i32 %566
  %568 = load float, float* %567, align 4, !tbaa !22, !noalias !26
  %569 = getelementptr inbounds [8 x float], [8 x float]* %7, i32 0, i32 %564
  %570 = load float, float* %569, align 4, !tbaa !22, !noalias !26
  %571 = fsub fast float %540, %568
  %572 = fsub fast float %570, %568
  %573 = fdiv fast float %571, %572
  %574 = call float @dx.op.unary.f32(i32 7, float %573)  ; Saturate(value)
  %575 = mul i32 %564, 3
  %576 = add i32 0, %575
  %577 = getelementptr [24 x float], [24 x float]* @"\01?col@?1??HeatMapGradient_PQ@@YA?AV?$vector@M$02@@M@Z@3QBV2@B.v.1dim", i32 0, i32 %576
  %578 = load float, float* %577, align 4
  %579 = mul i32 %564, 3
  %580 = add i32 1, %579
  %581 = getelementptr [24 x float], [24 x float]* @"\01?col@?1??HeatMapGradient_PQ@@YA?AV?$vector@M$02@@M@Z@3QBV2@B.v.1dim", i32 0, i32 %580
  %582 = load float, float* %581, align 4
  %583 = mul i32 %564, 3
  %584 = add i32 2, %583
  %585 = getelementptr [24 x float], [24 x float]* @"\01?col@?1??HeatMapGradient_PQ@@YA?AV?$vector@M$02@@M@Z@3QBV2@B.v.1dim", i32 0, i32 %584
  %586 = load float, float* %585, align 4
  %587 = mul i32 %566, 3
  %588 = add i32 0, %587
  %589 = getelementptr [24 x float], [24 x float]* @"\01?col@?1??HeatMapGradient_PQ@@YA?AV?$vector@M$02@@M@Z@3QBV2@B.v.1dim", i32 0, i32 %588
  %590 = load float, float* %589, align 4
  %591 = mul i32 %566, 3
  %592 = add i32 1, %591
  %593 = getelementptr [24 x float], [24 x float]* @"\01?col@?1??HeatMapGradient_PQ@@YA?AV?$vector@M$02@@M@Z@3QBV2@B.v.1dim", i32 0, i32 %592
  %594 = load float, float* %593, align 4
  %595 = mul i32 %566, 3
  %596 = add i32 2, %595
  %597 = getelementptr [24 x float], [24 x float]* @"\01?col@?1??HeatMapGradient_PQ@@YA?AV?$vector@M$02@@M@Z@3QBV2@B.v.1dim", i32 0, i32 %596
  %598 = load float, float* %597, align 4
  %599 = fsub fast float %578, %590
  %600 = fsub fast float %582, %594
  %601 = fsub fast float %586, %598
  %602 = fmul fast float %599, %574
  %603 = fmul fast float %600, %574
  %604 = fmul fast float %601, %574
  %605 = fadd fast float %602, %590
  %606 = fadd fast float %603, %594
  %607 = fadd fast float %604, %598
  %608 = fadd fast float %21, 0xBF999999A0000000
  %609 = fadd fast float %22, 0xBFEC0DAF80000000
  %610 = fmul fast float %608, 6.400000e+01
  %611 = fmul fast float %609, 3.200000e+01
  %612 = fcmp fast olt float %610, 0.000000e+00
  %613 = fcmp fast olt float %611, 0.000000e+00
  %614 = or i1 %612, %613
  %615 = fcmp fast oge float %610, 1.000000e+00
  %616 = or i1 %615, %614
  %617 = fcmp fast oge float %611, 1.000000e+00
  %618 = or i1 %617, %616
  %619 = select i1 %618, float 0.000000e+00, float 1.000000e+00
  %620 = fmul fast float %608, 5.120000e+02
  %621 = fmul fast float %609, 2.560000e+02
  %622 = call float @dx.op.unary.f32(i32 27, float %620)  ; Round_ni(value)
  %623 = call float @dx.op.unary.f32(i32 27, float %621)  ; Round_ni(value)
  %624 = fptoui float %622 to i32
  %625 = fptoui float %623 to i32
  %626 = shl i32 %625, 3
  %627 = add i32 %626, %624
  %628 = icmp ult i32 %625, 4
  %629 = select i1 %628, i32 404494336, i32 3938328
  %630 = and i32 %627, 31
  %631 = lshr i32 %629, %630
  %632 = and i32 %631, 1
  %633 = uitofp i32 %632 to float
  %634 = fmul fast float %633, %619
  %635 = fadd fast float %610, -1.000000e+00
  %636 = fcmp fast olt float %635, 0.000000e+00
  %637 = or i1 %636, %613
  %638 = fcmp fast oge float %635, 1.000000e+00
  %639 = or i1 %638, %637
  %640 = or i1 %617, %639
  %641 = select i1 %640, float 0.000000e+00, float 1.000000e+00
  %642 = fadd fast float %620, -8.000000e+00
  %643 = call float @dx.op.unary.f32(i32 27, float %642)  ; Round_ni(value)
  %644 = fptoui float %643 to i32
  %645 = add i32 %626, %644
  %646 = select i1 %628, i32 2071150080, i32 4089711
  %647 = and i32 %645, 31
  %648 = lshr i32 %646, %647
  %649 = and i32 %648, 1
  %650 = uitofp i32 %649 to float
  %651 = fmul fast float %650, %641
  %652 = fadd fast float %651, %634
  %653 = fadd fast float %610, -3.000000e+00
  %654 = fcmp fast olt float %653, 0.000000e+00
  %655 = or i1 %654, %613
  %656 = fcmp fast oge float %653, 1.000000e+00
  %657 = or i1 %656, %655
  %658 = or i1 %617, %657
  %659 = select i1 %658, float 0.000000e+00, float 1.000000e+00
  %660 = fadd fast float %620, -2.400000e+01
  %661 = call float @dx.op.unary.f32(i32 27, float %660)  ; Round_ni(value)
  %662 = fptoui float %661 to i32
  %663 = add i32 %626, %662
  %664 = select i1 %628, i32 1057193728, i32 8323843
  %665 = and i32 %663, 31
  %666 = lshr i32 %664, %665
  %667 = and i32 %666, 1
  %668 = uitofp i32 %667 to float
  %669 = fmul fast float %668, %659
  %670 = fadd fast float %652, %669
  %671 = fadd fast float %610, -4.000000e+00
  %672 = fcmp fast olt float %671, 0.000000e+00
  %673 = or i1 %672, %613
  %674 = fcmp fast oge float %671, 1.000000e+00
  %675 = or i1 %674, %673
  %676 = or i1 %617, %675
  %677 = select i1 %676, float 0.000000e+00, float 1.000000e+00
  %678 = fadd fast float %620, -3.200000e+01
  %679 = call float @dx.op.unary.f32(i32 27, float %678)  ; Round_ni(value)
  %680 = fptoui float %679 to i32
  %681 = add i32 %626, %680
  %682 = select i1 %628, i32 1667457792, i32 1848931
  %683 = and i32 %681, 31
  %684 = lshr i32 %682, %683
  %685 = and i32 %684, 1
  %686 = uitofp i32 %685 to float
  %687 = fmul fast float %686, %677
  %688 = fadd fast float %670, %687
  %689 = fcmp fast ogt float %610, -7.500000e-01
  %690 = and i1 %689, %612
  %691 = call float @dx.op.unary.f32(i32 6, float %611)  ; FAbs(value)
  %692 = fcmp fast olt float %691, 0x3FA99999A0000000
  %693 = and i1 %690, %692
  %694 = fadd fast float %688, 1.000000e+00
  %695 = select i1 %693, float %694, float %688
  %696 = fadd fast float %22, 0xBFD39A7D40000000
  %697 = fmul fast float %696, 3.200000e+01
  %698 = fcmp fast olt float %697, 0.000000e+00
  %699 = or i1 %612, %698
  %700 = or i1 %615, %699
  %701 = fcmp fast oge float %697, 1.000000e+00
  %702 = or i1 %701, %700
  %703 = select i1 %702, float 0.000000e+00, float 1.000000e+00
  %704 = fmul fast float %696, 2.560000e+02
  %705 = call float @dx.op.unary.f32(i32 27, float %704)  ; Round_ni(value)
  %706 = fptoui float %705 to i32
  %707 = shl i32 %706, 3
  %708 = add i32 %707, %624
  %709 = icmp ult i32 %706, 4
  %710 = select i1 %709, i32 1617116672, i32 8323902
  %711 = and i32 %708, 31
  %712 = lshr i32 %710, %711
  %713 = and i32 %712, 1
  %714 = uitofp i32 %713 to float
  %715 = fmul fast float %714, %703
  %716 = fadd fast float %695, %715
  %717 = or i1 %636, %698
  %718 = or i1 %638, %717
  %719 = or i1 %701, %718
  %720 = select i1 %719, float 0.000000e+00, float 1.000000e+00
  %721 = add i32 %707, %644
  %722 = select i1 %709, i32 2071150080, i32 4089711
  %723 = and i32 %721, 31
  %724 = lshr i32 %722, %723
  %725 = and i32 %724, 1
  %726 = uitofp i32 %725 to float
  %727 = fmul fast float %726, %720
  %728 = fadd fast float %716, %727
  %729 = or i1 %654, %698
  %730 = or i1 %656, %729
  %731 = or i1 %701, %730
  %732 = select i1 %731, float 0.000000e+00, float 1.000000e+00
  %733 = add i32 %707, %662
  %734 = select i1 %709, i32 1057193728, i32 8323843
  %735 = and i32 %733, 31
  %736 = lshr i32 %734, %735
  %737 = and i32 %736, 1
  %738 = uitofp i32 %737 to float
  %739 = fmul fast float %738, %732
  %740 = fadd fast float %728, %739
  %741 = or i1 %672, %698
  %742 = or i1 %674, %741
  %743 = or i1 %701, %742
  %744 = select i1 %743, float 0.000000e+00, float 1.000000e+00
  %745 = add i32 %707, %680
  %746 = select i1 %709, i32 1667457792, i32 1848931
  %747 = and i32 %745, 31
  %748 = lshr i32 %746, %747
  %749 = and i32 %748, 1
  %750 = uitofp i32 %749 to float
  %751 = fmul fast float %750, %744
  %752 = fadd fast float %740, %751
  %753 = call float @dx.op.unary.f32(i32 6, float %697)  ; FAbs(value)
  %754 = fcmp fast olt float %753, 0x3FA99999A0000000
  %755 = and i1 %690, %754
  %756 = fadd fast float %752, 1.000000e+00
  %757 = select i1 %755, float %756, float %752
  %758 = call float @dx.op.binary.f32(i32 36, float %757, float 1.000000e+00)  ; FMin(a,b)
  %759 = fsub fast float 1.000000e+00, %605
  %760 = fsub fast float 1.000000e+00, %606
  %761 = fsub fast float 1.000000e+00, %607
  %762 = fmul fast float %758, %759
  %763 = fmul fast float %758, %760
  %764 = fmul fast float %758, %761
  %765 = fadd fast float %762, %605
  %766 = fadd fast float %763, %606
  %767 = fadd fast float %764, %607
  br label %768

; <label>:768                                     ; preds = %563, %498, %25, %16
  %769 = phi i1 [ false, %16 ], [ false, %25 ], [ true, %498 ], [ true, %563 ]
  %770 = phi float [ 0.000000e+00, %16 ], [ %27, %25 ], [ %499, %498 ], [ %765, %563 ]
  %771 = phi float [ 0.000000e+00, %16 ], [ %28, %25 ], [ %500, %498 ], [ %766, %563 ]
  %772 = phi float [ 0.000000e+00, %16 ], [ %29, %25 ], [ %501, %498 ], [ %767, %563 ]
  %773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %774 = extractvalue %dx.types.CBufRet.f32 %773, 1
  %775 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %776 = extractvalue %dx.types.CBufRet.i32 %775, 2
  br i1 %769, label %777, label %917, !dx.controlflow.hints !33

; <label>:777                                     ; preds = %768
  %778 = icmp eq i32 %776, 0
  br i1 %778, label %779, label %806, !dx.controlflow.hints !34

; <label>:779                                     ; preds = %777
  %780 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %781 = fmul fast float %780, 0x3FDAAAAAA0000000
  %782 = call float @dx.op.unary.f32(i32 21, float %781)  ; Exp(value)
  %783 = fsub fast float 1.000000e+00, %782
  %784 = call float @dx.op.unary.f32(i32 23, float %783)  ; Log(value)
  %785 = fmul fast float %784, 0x4003333340000000
  %786 = call float @dx.op.unary.f32(i32 21, float %785)  ; Exp(value)
  %787 = fdiv fast float %782, %783
  %788 = fdiv fast float %770, %786
  %789 = fdiv fast float %771, %786
  %790 = fdiv fast float %772, %786
  %791 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %788)  ; FMax(a,b)
  %792 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %789)  ; FMax(a,b)
  %793 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %790)  ; FMax(a,b)
  %794 = call float @dx.op.unary.f32(i32 23, float %791)  ; Log(value)
  %795 = call float @dx.op.unary.f32(i32 23, float %792)  ; Log(value)
  %796 = call float @dx.op.unary.f32(i32 23, float %793)  ; Log(value)
  %797 = fmul fast float %794, 0x3FDAAAAAA0000000
  %798 = fmul fast float %795, 0x3FDAAAAAA0000000
  %799 = fmul fast float %796, 0x3FDAAAAAA0000000
  %800 = call float @dx.op.unary.f32(i32 21, float %797)  ; Exp(value)
  %801 = call float @dx.op.unary.f32(i32 21, float %798)  ; Exp(value)
  %802 = call float @dx.op.unary.f32(i32 21, float %799)  ; Exp(value)
  %803 = fsub fast float %800, %787
  %804 = fsub fast float %801, %787
  %805 = fsub fast float %802, %787
  br label %917

; <label>:806                                     ; preds = %777
  %807 = icmp eq i32 %776, 1
  br i1 %807, label %808, label %855, !dx.controlflow.hints !35

; <label>:808                                     ; preds = %806
  %809 = fmul fast float %770, 0x3FE413A920000000
  %810 = call float @dx.op.tertiary.f32(i32 46, float 0x3FD5134040000000, float %771, float %809)  ; FMad(a,b,c)
  %811 = call float @dx.op.tertiary.f32(i32 46, float 0x3FA62B6AE0000000, float %772, float %810)  ; FMad(a,b,c)
  %812 = fmul fast float %770, 0x3FB1B089A0000000
  %813 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED6C8B40000000, float %771, float %812)  ; FMad(a,b,c)
  %814 = call float @dx.op.tertiary.f32(i32 46, float 0x3F8758E220000000, float %772, float %813)  ; FMad(a,b,c)
  %815 = fmul fast float %770, 0x3F90CB2960000000
  %816 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB6872B00000000, float %771, float %815)  ; FMad(a,b,c)
  %817 = call float @dx.op.tertiary.f32(i32 46, float 0x3FECA8C160000000, float %772, float %816)  ; FMad(a,b,c)
  %818 = fmul fast float %774, 0x3F1A36E2E0000000
  %819 = fmul fast float %818, %811
  %820 = fmul fast float %818, %814
  %821 = fmul fast float %818, %817
  %822 = call float @dx.op.unary.f32(i32 23, float %819)  ; Log(value)
  %823 = call float @dx.op.unary.f32(i32 23, float %820)  ; Log(value)
  %824 = call float @dx.op.unary.f32(i32 23, float %821)  ; Log(value)
  %825 = fmul fast float %822, 0x3FC4640000000000
  %826 = fmul fast float %823, 0x3FC4640000000000
  %827 = fmul fast float %824, 0x3FC4640000000000
  %828 = call float @dx.op.unary.f32(i32 21, float %825)  ; Exp(value)
  %829 = call float @dx.op.unary.f32(i32 21, float %826)  ; Exp(value)
  %830 = call float @dx.op.unary.f32(i32 21, float %827)  ; Exp(value)
  %831 = fmul fast float %828, 0x4032DA0000000000
  %832 = fmul fast float %829, 0x4032DA0000000000
  %833 = fmul fast float %830, 0x4032DA0000000000
  %834 = fadd fast float %831, 8.359375e-01
  %835 = fadd fast float %832, 8.359375e-01
  %836 = fadd fast float %833, 8.359375e-01
  %837 = fmul fast float %828, 1.868750e+01
  %838 = fmul fast float %829, 1.868750e+01
  %839 = fmul fast float %830, 1.868750e+01
  %840 = fadd fast float %837, 1.000000e+00
  %841 = fadd fast float %838, 1.000000e+00
  %842 = fadd fast float %839, 1.000000e+00
  %843 = fdiv fast float %834, %840
  %844 = fdiv fast float %835, %841
  %845 = fdiv fast float %836, %842
  %846 = call float @dx.op.unary.f32(i32 23, float %843)  ; Log(value)
  %847 = call float @dx.op.unary.f32(i32 23, float %844)  ; Log(value)
  %848 = call float @dx.op.unary.f32(i32 23, float %845)  ; Log(value)
  %849 = fmul fast float %846, 7.884375e+01
  %850 = fmul fast float %847, 7.884375e+01
  %851 = fmul fast float %848, 7.884375e+01
  %852 = call float @dx.op.unary.f32(i32 21, float %849)  ; Exp(value)
  %853 = call float @dx.op.unary.f32(i32 21, float %850)  ; Exp(value)
  %854 = call float @dx.op.unary.f32(i32 21, float %851)  ; Exp(value)
  br label %917

; <label>:855                                     ; preds = %806
  %856 = icmp eq i32 %776, 2
  br i1 %856, label %857, label %917, !dx.controlflow.hints !36

; <label>:857                                     ; preds = %855
  %858 = fmul fast float %770, 0x3FEA519BC0000000
  %859 = call float @dx.op.tertiary.f32(i32 46, float 0x3FC6B990A0000000, float %771, float %858)  ; FMad(a,b,c)
  %860 = fmul fast float %770, 0x3FA0FED480000000
  %861 = call float @dx.op.tertiary.f32(i32 46, float 0x3FEEF012C0000000, float %771, float %860)  ; FMad(a,b,c)
  %862 = fmul fast float %770, 0x3F917E1C00000000
  %863 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB288A2E0000000, float %771, float %862)  ; FMad(a,b,c)
  %864 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED22FAA0000000, float %772, float %863)  ; FMad(a,b,c)
  %865 = call float @dx.op.binary.f32(i32 35, float %770, float %771)  ; FMax(a,b)
  %866 = call float @dx.op.binary.f32(i32 35, float %865, float %772)  ; FMax(a,b)
  %867 = fadd fast float %866, -1.000000e+00
  %868 = fmul fast float %867, 2.500000e-01
  %869 = call float @dx.op.unary.f32(i32 7, float %868)  ; Saturate(value)
  %870 = fsub fast float 1.000000e+00, %869
  %871 = fmul fast float %870, %859
  %872 = fmul fast float %870, %861
  %873 = fmul fast float %870, %864
  %874 = fmul fast float %869, %770
  %875 = fmul fast float %869, %771
  %876 = fmul fast float %869, %772
  %877 = fadd fast float %871, %874
  %878 = fadd fast float %872, %875
  %879 = fadd fast float %873, %876
  %880 = fmul fast float %774, 0x3F1A36E2E0000000
  %881 = fmul fast float %880, %877
  %882 = fmul fast float %880, %878
  %883 = fmul fast float %880, %879
  %884 = call float @dx.op.unary.f32(i32 23, float %881)  ; Log(value)
  %885 = call float @dx.op.unary.f32(i32 23, float %882)  ; Log(value)
  %886 = call float @dx.op.unary.f32(i32 23, float %883)  ; Log(value)
  %887 = fmul fast float %884, 0x3FC4640000000000
  %888 = fmul fast float %885, 0x3FC4640000000000
  %889 = fmul fast float %886, 0x3FC4640000000000
  %890 = call float @dx.op.unary.f32(i32 21, float %887)  ; Exp(value)
  %891 = call float @dx.op.unary.f32(i32 21, float %888)  ; Exp(value)
  %892 = call float @dx.op.unary.f32(i32 21, float %889)  ; Exp(value)
  %893 = fmul fast float %890, 0x4032DA0000000000
  %894 = fmul fast float %891, 0x4032DA0000000000
  %895 = fmul fast float %892, 0x4032DA0000000000
  %896 = fadd fast float %893, 8.359375e-01
  %897 = fadd fast float %894, 8.359375e-01
  %898 = fadd fast float %895, 8.359375e-01
  %899 = fmul fast float %890, 1.868750e+01
  %900 = fmul fast float %891, 1.868750e+01
  %901 = fmul fast float %892, 1.868750e+01
  %902 = fadd fast float %899, 1.000000e+00
  %903 = fadd fast float %900, 1.000000e+00
  %904 = fadd fast float %901, 1.000000e+00
  %905 = fdiv fast float %896, %902
  %906 = fdiv fast float %897, %903
  %907 = fdiv fast float %898, %904
  %908 = call float @dx.op.unary.f32(i32 23, float %905)  ; Log(value)
  %909 = call float @dx.op.unary.f32(i32 23, float %906)  ; Log(value)
  %910 = call float @dx.op.unary.f32(i32 23, float %907)  ; Log(value)
  %911 = fmul fast float %908, 7.884375e+01
  %912 = fmul fast float %909, 7.884375e+01
  %913 = fmul fast float %910, 7.884375e+01
  %914 = call float @dx.op.unary.f32(i32 21, float %911)  ; Exp(value)
  %915 = call float @dx.op.unary.f32(i32 21, float %912)  ; Exp(value)
  %916 = call float @dx.op.unary.f32(i32 21, float %913)  ; Exp(value)
  br label %917

; <label>:917                                     ; preds = %857, %855, %808, %779, %768
  %918 = phi float [ %803, %779 ], [ %852, %808 ], [ %914, %857 ], [ %770, %855 ], [ %770, %768 ]
  %919 = phi float [ %804, %779 ], [ %853, %808 ], [ %915, %857 ], [ %771, %855 ], [ %771, %768 ]
  %920 = phi float [ %805, %779 ], [ %854, %808 ], [ %916, %857 ], [ %772, %855 ], [ %772, %768 ]
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %5, i32 %6, i32 undef, float %918, float %919, float %920, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %921

; <label>:921                                     ; preds = %917, %0
  ret void

; <label>:922                                     ; preds = %527
  %923 = fcmp fast ogt float %540, 0x3FE80EFC80000000
  br i1 %923, label %563, label %924, !dx.controlflow.hints !29

; <label>:924                                     ; preds = %922
  %925 = fcmp fast ogt float %540, 0x3FE0422CA0000000
  br i1 %925, label %563, label %926, !dx.controlflow.hints !29

; <label>:926                                     ; preds = %924
  %927 = fcmp fast ogt float %540, 0x3FDC2D91E0000000
  br i1 %927, label %563, label %928, !dx.controlflow.hints !29

; <label>:928                                     ; preds = %926
  %929 = fcmp fast ogt float %540, 0x3FC33169C0000000
  br i1 %929, label %563, label %930, !dx.controlflow.hints !29

; <label>:930                                     ; preds = %928
  %931 = fcmp fast ogt float %540, 0x3FAFEA9DC0000000
  br i1 %931, label %563, label %932, !dx.controlflow.hints !29

; <label>:932                                     ; preds = %930
  %933 = fcmp fast ogt float %540, %552
  br i1 %933, label %563, label %934, !dx.controlflow.hints !29

; <label>:934                                     ; preds = %932
  br label %563

; <label>:935                                     ; preds = %395
  %936 = fcmp fast ogt float %431, 0x3FE80EFC80000000
  br i1 %936, label %453, label %937, !dx.controlflow.hints !29

; <label>:937                                     ; preds = %935
  %938 = fcmp fast ogt float %431, 0x3FE0422CA0000000
  br i1 %938, label %453, label %939, !dx.controlflow.hints !29

; <label>:939                                     ; preds = %937
  %940 = fcmp fast ogt float %431, 0x3FDC2D91E0000000
  br i1 %940, label %453, label %941, !dx.controlflow.hints !29

; <label>:941                                     ; preds = %939
  %942 = fcmp fast ogt float %431, 0x3FC33169C0000000
  br i1 %942, label %453, label %943, !dx.controlflow.hints !29

; <label>:943                                     ; preds = %941
  %944 = fcmp fast ogt float %431, 0x3FAFEA9DC0000000
  br i1 %944, label %453, label %945, !dx.controlflow.hints !29

; <label>:945                                     ; preds = %943
  %946 = fcmp fast ogt float %431, %442
  br i1 %946, label %453, label %947, !dx.controlflow.hints !29

; <label>:947                                     ; preds = %945
  br label %453

; <label>:948                                     ; preds = %80
  %949 = fcmp fast ogt float %96, 0x3FE80EFC80000000
  br i1 %949, label %119, label %950, !dx.controlflow.hints !29

; <label>:950                                     ; preds = %948
  %951 = fcmp fast ogt float %96, 0x3FE0422CA0000000
  br i1 %951, label %119, label %952, !dx.controlflow.hints !29

; <label>:952                                     ; preds = %950
  %953 = fcmp fast ogt float %96, 0x3FDC2D91E0000000
  br i1 %953, label %119, label %954, !dx.controlflow.hints !29

; <label>:954                                     ; preds = %952
  %955 = fcmp fast ogt float %96, 0x3FC33169C0000000
  br i1 %955, label %119, label %956, !dx.controlflow.hints !29

; <label>:956                                     ; preds = %954
  %957 = fcmp fast ogt float %96, 0x3FAFEA9DC0000000
  br i1 %957, label %119, label %958, !dx.controlflow.hints !29

; <label>:958                                     ; preds = %956
  %959 = fcmp fast ogt float %96, %108
  br i1 %959, label %119, label %960, !dx.controlflow.hints !29

; <label>:960                                     ; preds = %958
  br label %119
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!15}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !8, !11, !13}
!5 = !{!6}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{!9}
!9 = !{i32 0, %"class.RWTexture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !10}
!10 = !{i32 0, i32 14}
!11 = !{!12}
!12 = !{i32 0, %GfxHdrScopesProcessCBuffer* undef, !"", i32 0, i32 0, i32 1, i32 48, null}
!13 = !{!14}
!14 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!15 = !{void ()* @cs_hdr_scopes_process, !"cs_hdr_scopes_process", null, !4, !16}
!16 = !{i32 0, i64 256, i32 4, !17}
!17 = !{i32 8, i32 8, i32 1}
!18 = distinct !{!18, !"dx.controlflow.hints", i32 2}
!19 = distinct !{!19, !"dx.controlflow.hints", i32 2}
!20 = distinct !{!20, !"dx.controlflow.hints", i32 2}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}
!22 = !{!23, !23, i64 0}
!23 = !{!"float", !24, i64 0}
!24 = !{!"omnipotent char", !25, i64 0}
!25 = !{!"Simple C/C++ TBAA"}
!26 = !{!27}
!27 = distinct !{!27, !28, !"\01?HDRScope_HeatMap@@YA?AUHDRScopeResult@@V?$vector@M$01@@@Z: %agg.result"}
!28 = distinct !{!28, !"\01?HDRScope_HeatMap@@YA?AUHDRScopeResult@@V?$vector@M$01@@@Z"}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}

