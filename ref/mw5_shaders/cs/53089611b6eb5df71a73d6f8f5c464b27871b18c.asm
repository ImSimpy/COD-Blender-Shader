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
; shader hash: 572c913364e437a151063d82939e9210
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
;   [80 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb0     1
;                                   texture     f32        2dMS      T0             t0     1
;                                   texture     u32          2d      T1             t2     1
;                                       UAV     f32          2d      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture2DMS<vector<float, 4>, 0>" = type { <4 x float>, %"class.Texture2DMS<vector<float, 4>, 0>::sample_type" }
%"class.Texture2DMS<vector<float, 4>, 0>::sample_type" = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%"class.RWTexture2D<vector<float, 4> >" = type { <4 x float> }
%VeilSampleConsts = type { <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float> }

@"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim" = addrspace(3) global [300 x float] undef, align 4

define void @cs_downsample_veil() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %6 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %7 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %8 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %9 = uitofp i32 %5 to float
  %10 = uitofp i32 %6 to float
  %11 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %12 = extractvalue %dx.types.CBufRet.f32 %11, 2
  %13 = extractvalue %dx.types.CBufRet.f32 %11, 3
  %14 = fcmp fast olt float %9, %12
  %15 = fcmp fast olt float %10, %13
  %16 = and i1 %14, %15
  br i1 %16, label %17, label %303, !dx.controlflow.hints !17

; <label>:17                                      ; preds = %0
  %18 = shl i32 %8, 3
  %19 = add i32 %18, %7
  %20 = icmp ult i32 %19, 50
  br i1 %20, label %21, label %141, !dx.controlflow.hints !18

; <label>:21                                      ; preds = %17
  %22 = call i32 @dx.op.groupId.i32(i32 94, i32 1)  ; GroupId(component)
  %23 = shl i32 %22, 3
  %24 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %25 = shl i32 %24, 3
  %26 = urem i32 %19, 10
  %27 = udiv i32 %19, 10
  %28 = add i32 %25, -1
  %29 = add i32 %23, -1
  %30 = add i32 %28, %26
  %31 = add i32 %29, %27
  %32 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %2, i32 0, i32 %30, i32 %31, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %33 = extractvalue %dx.types.ResRet.i32 %32, 0
  %34 = and i32 %33, 1
  %35 = shl i32 1, %34
  %36 = and i32 %33, 2
  %37 = shl i32 1, %36
  %38 = and i32 %33, 3
  %39 = shl i32 1, %38
  %40 = or i32 %37, %35
  %41 = or i32 %40, %39
  %42 = or i32 %41, 1
  br label %43

; <label>:43                                      ; preds = %43, %21
  %44 = phi float [ 0.000000e+00, %21 ], [ %62, %43 ]
  %45 = phi float [ 0.000000e+00, %21 ], [ %63, %43 ]
  %46 = phi float [ 0.000000e+00, %21 ], [ %64, %43 ]
  %47 = phi float [ 0.000000e+00, %21 ], [ %58, %43 ]
  %48 = phi i32 [ %42, %21 ], [ %53, %43 ]
  %49 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %48)  ; FirstbitLo(value)
  %50 = and i32 %49, 31
  %51 = shl i32 1, %50
  %52 = xor i32 %51, -1
  %53 = and i32 %48, %52
  %54 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 %49, i32 %30, i32 %31, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %55 = extractvalue %dx.types.ResRet.f32 %54, 0
  %56 = extractvalue %dx.types.ResRet.f32 %54, 1
  %57 = extractvalue %dx.types.ResRet.f32 %54, 2
  %58 = fadd fast float %47, 1.000000e+00
  %59 = call float @dx.op.unary.f32(i32 23, float %55)  ; Log(value)
  %60 = call float @dx.op.unary.f32(i32 23, float %56)  ; Log(value)
  %61 = call float @dx.op.unary.f32(i32 23, float %57)  ; Log(value)
  %62 = fadd fast float %59, %44
  %63 = fadd fast float %60, %45
  %64 = fadd fast float %61, %46
  %65 = icmp eq i32 %53, 0
  br i1 %65, label %66, label %43

; <label>:66                                      ; preds = %43
  %67 = call float @dx.op.binary.f32(i32 35, float %58, float 0x3EE4F8B580000000)  ; FMax(a,b)
  %68 = fdiv fast float 1.000000e+00, %67
  %69 = fmul fast float %68, %62
  %70 = fmul fast float %68, %63
  %71 = fmul fast float %68, %64
  %72 = mul i32 %19, 3
  %73 = add i32 0, %72
  %74 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %73
  store float %69, float addrspace(3)* %74, align 4
  %75 = mul i32 %19, 3
  %76 = add i32 1, %75
  %77 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %76
  store float %70, float addrspace(3)* %77, align 4
  %78 = mul i32 %19, 3
  %79 = add i32 2, %78
  %80 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %79
  store float %71, float addrspace(3)* %80, align 4
  %81 = add i32 %19, 50
  %82 = urem i32 %81, 10
  %83 = udiv i32 %81, 10
  %84 = add i32 %28, %82
  %85 = add i32 %29, %83
  %86 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %2, i32 0, i32 %84, i32 %85, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %87 = extractvalue %dx.types.ResRet.i32 %86, 0
  %88 = and i32 %87, 1
  %89 = shl i32 1, %88
  %90 = and i32 %87, 2
  %91 = shl i32 1, %90
  %92 = and i32 %87, 3
  %93 = shl i32 1, %92
  %94 = or i32 %91, %89
  %95 = or i32 %94, %93
  %96 = or i32 %95, 1
  br label %97

; <label>:97                                      ; preds = %97, %66
  %98 = phi float [ 0.000000e+00, %66 ], [ %116, %97 ]
  %99 = phi float [ 0.000000e+00, %66 ], [ %117, %97 ]
  %100 = phi float [ 0.000000e+00, %66 ], [ %118, %97 ]
  %101 = phi float [ 0.000000e+00, %66 ], [ %112, %97 ]
  %102 = phi i32 [ %96, %66 ], [ %107, %97 ]
  %103 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %102)  ; FirstbitLo(value)
  %104 = and i32 %103, 31
  %105 = shl i32 1, %104
  %106 = xor i32 %105, -1
  %107 = and i32 %102, %106
  %108 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 %103, i32 %84, i32 %85, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %109 = extractvalue %dx.types.ResRet.f32 %108, 0
  %110 = extractvalue %dx.types.ResRet.f32 %108, 1
  %111 = extractvalue %dx.types.ResRet.f32 %108, 2
  %112 = fadd fast float %101, 1.000000e+00
  %113 = call float @dx.op.unary.f32(i32 23, float %109)  ; Log(value)
  %114 = call float @dx.op.unary.f32(i32 23, float %110)  ; Log(value)
  %115 = call float @dx.op.unary.f32(i32 23, float %111)  ; Log(value)
  %116 = fadd fast float %113, %98
  %117 = fadd fast float %114, %99
  %118 = fadd fast float %115, %100
  %119 = icmp eq i32 %107, 0
  br i1 %119, label %120, label %97

; <label>:120                                     ; preds = %97
  %121 = call float @dx.op.binary.f32(i32 35, float %112, float 0x3EE4F8B580000000)  ; FMax(a,b)
  %122 = fdiv fast float 1.000000e+00, %121
  %123 = fmul fast float %122, %116
  %124 = fmul fast float %122, %117
  %125 = fmul fast float %122, %118
  %126 = mul i32 %81, 3
  %127 = add i32 0, %126
  %128 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %127
  store float %123, float addrspace(3)* %128, align 4
  %129 = mul i32 %81, 3
  %130 = add i32 1, %129
  %131 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %130
  store float %124, float addrspace(3)* %131, align 4
  %132 = mul i32 %81, 3
  %133 = add i32 2, %132
  %134 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %133
  store float %125, float addrspace(3)* %134, align 4
  %135 = fmul float %69, 0x3FDC496680000000
  %136 = fmul float %70, 0x3FDC496680000000
  %137 = fmul float %71, 0x3FDC496680000000
  %138 = fmul float %123, 0x3FDC496680000000
  %139 = fmul float %124, 0x3FDC496680000000
  %140 = fmul float %125, 0x3FDC496680000000
  br label %141

; <label>:141                                     ; preds = %120, %17
  %142 = phi float [ %135, %120 ], [ 0.000000e+00, %17 ]
  %143 = phi float [ %136, %120 ], [ 0.000000e+00, %17 ]
  %144 = phi float [ %137, %120 ], [ 0.000000e+00, %17 ]
  %145 = phi float [ %138, %120 ], [ 0.000000e+00, %17 ]
  %146 = phi float [ %139, %120 ], [ 0.000000e+00, %17 ]
  %147 = phi float [ %140, %120 ], [ 0.000000e+00, %17 ]
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %20, label %148, label %238, !dx.controlflow.hints !19

; <label>:148                                     ; preds = %141
  %149 = add i32 %19, -1
  %150 = mul i32 %149, 3
  %151 = add i32 0, %150
  %152 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %151
  %153 = load float, float addrspace(3)* %152, align 4
  %154 = mul i32 %149, 3
  %155 = add i32 1, %154
  %156 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %155
  %157 = load float, float addrspace(3)* %156, align 4
  %158 = mul i32 %149, 3
  %159 = add i32 2, %158
  %160 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %159
  %161 = load float, float addrspace(3)* %160, align 4
  %162 = add i32 %19, 1
  %163 = mul i32 %162, 3
  %164 = add i32 0, %163
  %165 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %164
  %166 = load float, float addrspace(3)* %165, align 4
  %167 = mul i32 %162, 3
  %168 = add i32 1, %167
  %169 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %168
  %170 = load float, float addrspace(3)* %169, align 4
  %171 = mul i32 %162, 3
  %172 = add i32 2, %171
  %173 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %172
  %174 = load float, float addrspace(3)* %173, align 4
  %175 = fadd fast float %166, %153
  %176 = fmul fast float %175, 0x3FD1DB4CC0000000
  %177 = fadd fast float %176, %142
  %178 = fadd fast float %170, %157
  %179 = fmul fast float %178, 0x3FD1DB4CC0000000
  %180 = fadd fast float %179, %143
  %181 = fadd fast float %174, %161
  %182 = fmul fast float %181, 0x3FD1DB4CC0000000
  %183 = fadd fast float %182, %144
  %184 = mul i32 %19, 3
  %185 = add i32 0, %184
  %186 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %185
  store float %177, float addrspace(3)* %186, align 4
  %187 = mul i32 %19, 3
  %188 = add i32 1, %187
  %189 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %188
  store float %180, float addrspace(3)* %189, align 4
  %190 = mul i32 %19, 3
  %191 = add i32 2, %190
  %192 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %191
  store float %183, float addrspace(3)* %192, align 4
  %193 = add i32 %19, 50
  %194 = add i32 %19, 49
  %195 = mul i32 %194, 3
  %196 = add i32 0, %195
  %197 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %196
  %198 = load float, float addrspace(3)* %197, align 4
  %199 = mul i32 %194, 3
  %200 = add i32 1, %199
  %201 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %200
  %202 = load float, float addrspace(3)* %201, align 4
  %203 = mul i32 %194, 3
  %204 = add i32 2, %203
  %205 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %204
  %206 = load float, float addrspace(3)* %205, align 4
  %207 = add i32 %19, 51
  %208 = mul i32 %207, 3
  %209 = add i32 0, %208
  %210 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %209
  %211 = load float, float addrspace(3)* %210, align 4
  %212 = mul i32 %207, 3
  %213 = add i32 1, %212
  %214 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %213
  %215 = load float, float addrspace(3)* %214, align 4
  %216 = mul i32 %207, 3
  %217 = add i32 2, %216
  %218 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %217
  %219 = load float, float addrspace(3)* %218, align 4
  %220 = fadd fast float %211, %198
  %221 = fmul fast float %220, 0x3FD1DB4CC0000000
  %222 = fadd fast float %221, %145
  %223 = fadd fast float %215, %202
  %224 = fmul fast float %223, 0x3FD1DB4CC0000000
  %225 = fadd fast float %224, %146
  %226 = fadd fast float %219, %206
  %227 = fmul fast float %226, 0x3FD1DB4CC0000000
  %228 = fadd fast float %227, %147
  %229 = mul i32 %193, 3
  %230 = add i32 0, %229
  %231 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %230
  store float %222, float addrspace(3)* %231, align 4
  %232 = mul i32 %193, 3
  %233 = add i32 1, %232
  %234 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %233
  store float %225, float addrspace(3)* %234, align 4
  %235 = mul i32 %193, 3
  %236 = add i32 2, %235
  %237 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %236
  store float %228, float addrspace(3)* %237, align 4
  br label %238

; <label>:238                                     ; preds = %148, %141
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %239 = add i32 %7, 1
  %240 = mul i32 %8, 10
  %241 = add i32 %240, %239
  %242 = mul i32 %241, 3
  %243 = add i32 0, %242
  %244 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %243
  %245 = load float, float addrspace(3)* %244, align 4
  %246 = mul i32 %241, 3
  %247 = add i32 1, %246
  %248 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %247
  %249 = load float, float addrspace(3)* %248, align 4
  %250 = mul i32 %241, 3
  %251 = add i32 2, %250
  %252 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %251
  %253 = load float, float addrspace(3)* %252, align 4
  %254 = add i32 %7, 11
  %255 = add i32 %254, %240
  %256 = mul i32 %255, 3
  %257 = add i32 0, %256
  %258 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %257
  %259 = load float, float addrspace(3)* %258, align 4
  %260 = mul i32 %255, 3
  %261 = add i32 1, %260
  %262 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %261
  %263 = load float, float addrspace(3)* %262, align 4
  %264 = mul i32 %255, 3
  %265 = add i32 2, %264
  %266 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %265
  %267 = load float, float addrspace(3)* %266, align 4
  %268 = fmul fast float %259, 0x3FDC496680000000
  %269 = fmul fast float %263, 0x3FDC496680000000
  %270 = fmul fast float %267, 0x3FDC496680000000
  %271 = add i32 %7, 21
  %272 = add i32 %271, %240
  %273 = mul i32 %272, 3
  %274 = add i32 0, %273
  %275 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %274
  %276 = load float, float addrspace(3)* %275, align 4
  %277 = mul i32 %272, 3
  %278 = add i32 1, %277
  %279 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %278
  %280 = load float, float addrspace(3)* %279, align 4
  %281 = mul i32 %272, 3
  %282 = add i32 2, %281
  %283 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %282
  %284 = load float, float addrspace(3)* %283, align 4
  %285 = fadd fast float %276, %245
  %286 = fmul fast float %285, 0x3FD1DB4CC0000000
  %287 = fadd fast float %286, %268
  %288 = fadd fast float %280, %249
  %289 = fmul fast float %288, 0x3FD1DB4CC0000000
  %290 = fadd fast float %289, %269
  %291 = fadd fast float %284, %253
  %292 = fmul fast float %291, 0x3FD1DB4CC0000000
  %293 = fadd fast float %292, %270
  %294 = call float @dx.op.unary.f32(i32 21, float %287)  ; Exp(value)
  %295 = call float @dx.op.unary.f32(i32 21, float %290)  ; Exp(value)
  %296 = call float @dx.op.unary.f32(i32 21, float %293)  ; Exp(value)
  %297 = call float @dx.op.binary.f32(i32 35, float %294, float -3.225500e+04)  ; FMax(a,b)
  %298 = call float @dx.op.binary.f32(i32 35, float %295, float -3.225500e+04)  ; FMax(a,b)
  %299 = call float @dx.op.binary.f32(i32 35, float %296, float -3.225500e+04)  ; FMax(a,b)
  %300 = call float @dx.op.binary.f32(i32 36, float %297, float 3.225500e+04)  ; FMin(a,b)
  %301 = call float @dx.op.binary.f32(i32 36, float %298, float 3.225500e+04)  ; FMin(a,b)
  %302 = call float @dx.op.binary.f32(i32 36, float %299, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %5, i32 %6, i32 undef, float %300, float %301, float %302, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %303

; <label>:303                                     ; preds = %238, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #3

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #3

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
!4 = !{!5, !10, !12, null}
!5 = !{!6, !8}
!6 = !{i32 0, %"class.Texture2DMS<vector<float, 4>, 0>"* undef, !"", i32 0, i32 0, i32 1, i32 3, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<unsigned int>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !9}
!9 = !{i32 0, i32 5}
!10 = !{!11}
!11 = !{i32 0, %"class.RWTexture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!12 = !{!13}
!13 = !{i32 0, %VeilSampleConsts* undef, !"", i32 0, i32 0, i32 1, i32 80, null}
!14 = !{void ()* @cs_downsample_veil, !"cs_downsample_veil", null, !4, !15}
!15 = !{i32 0, i64 256, i32 4, !16}
!16 = !{i32 8, i32 8, i32 1}
!17 = distinct !{!17, !"dx.controlflow.hints", i32 1}
!18 = distinct !{!18, !"dx.controlflow.hints", i32 2}
!19 = distinct !{!19, !"dx.controlflow.hints", i32 2}

