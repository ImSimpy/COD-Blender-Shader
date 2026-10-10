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
; shader hash: bfcde3794b647f56411b068ec6addb31
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
  br i1 %16, label %17, label %294, !dx.controlflow.hints !17

; <label>:17                                      ; preds = %0
  %18 = shl i32 %8, 3
  %19 = add i32 %18, %7
  %20 = icmp ult i32 %19, 50
  br i1 %20, label %21, label %135, !dx.controlflow.hints !18

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
  %44 = phi float [ 0.000000e+00, %21 ], [ %59, %43 ]
  %45 = phi float [ 0.000000e+00, %21 ], [ %60, %43 ]
  %46 = phi float [ 0.000000e+00, %21 ], [ %61, %43 ]
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
  %59 = fadd fast float %55, %44
  %60 = fadd fast float %56, %45
  %61 = fadd fast float %57, %46
  %62 = icmp eq i32 %53, 0
  br i1 %62, label %63, label %43

; <label>:63                                      ; preds = %43
  %64 = call float @dx.op.binary.f32(i32 35, float %58, float 0x3EE4F8B580000000)  ; FMax(a,b)
  %65 = fdiv fast float 1.000000e+00, %64
  %66 = fmul fast float %65, %59
  %67 = fmul fast float %65, %60
  %68 = fmul fast float %65, %61
  %69 = mul i32 %19, 3
  %70 = add i32 0, %69
  %71 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %70
  store float %66, float addrspace(3)* %71, align 4
  %72 = mul i32 %19, 3
  %73 = add i32 1, %72
  %74 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %73
  store float %67, float addrspace(3)* %74, align 4
  %75 = mul i32 %19, 3
  %76 = add i32 2, %75
  %77 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %76
  store float %68, float addrspace(3)* %77, align 4
  %78 = add i32 %19, 50
  %79 = urem i32 %78, 10
  %80 = udiv i32 %78, 10
  %81 = add i32 %28, %79
  %82 = add i32 %29, %80
  %83 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %2, i32 0, i32 %81, i32 %82, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %84 = extractvalue %dx.types.ResRet.i32 %83, 0
  %85 = and i32 %84, 1
  %86 = shl i32 1, %85
  %87 = and i32 %84, 2
  %88 = shl i32 1, %87
  %89 = and i32 %84, 3
  %90 = shl i32 1, %89
  %91 = or i32 %88, %86
  %92 = or i32 %91, %90
  %93 = or i32 %92, 1
  br label %94

; <label>:94                                      ; preds = %94, %63
  %95 = phi float [ 0.000000e+00, %63 ], [ %110, %94 ]
  %96 = phi float [ 0.000000e+00, %63 ], [ %111, %94 ]
  %97 = phi float [ 0.000000e+00, %63 ], [ %112, %94 ]
  %98 = phi float [ 0.000000e+00, %63 ], [ %109, %94 ]
  %99 = phi i32 [ %93, %63 ], [ %104, %94 ]
  %100 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %99)  ; FirstbitLo(value)
  %101 = and i32 %100, 31
  %102 = shl i32 1, %101
  %103 = xor i32 %102, -1
  %104 = and i32 %99, %103
  %105 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 %100, i32 %81, i32 %82, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %106 = extractvalue %dx.types.ResRet.f32 %105, 0
  %107 = extractvalue %dx.types.ResRet.f32 %105, 1
  %108 = extractvalue %dx.types.ResRet.f32 %105, 2
  %109 = fadd fast float %98, 1.000000e+00
  %110 = fadd fast float %106, %95
  %111 = fadd fast float %107, %96
  %112 = fadd fast float %108, %97
  %113 = icmp eq i32 %104, 0
  br i1 %113, label %114, label %94

; <label>:114                                     ; preds = %94
  %115 = call float @dx.op.binary.f32(i32 35, float %109, float 0x3EE4F8B580000000)  ; FMax(a,b)
  %116 = fdiv fast float 1.000000e+00, %115
  %117 = fmul fast float %116, %110
  %118 = fmul fast float %116, %111
  %119 = fmul fast float %116, %112
  %120 = mul i32 %78, 3
  %121 = add i32 0, %120
  %122 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %121
  store float %117, float addrspace(3)* %122, align 4
  %123 = mul i32 %78, 3
  %124 = add i32 1, %123
  %125 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %124
  store float %118, float addrspace(3)* %125, align 4
  %126 = mul i32 %78, 3
  %127 = add i32 2, %126
  %128 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %127
  store float %119, float addrspace(3)* %128, align 4
  %129 = fmul float %66, 0x3FDC496680000000
  %130 = fmul float %67, 0x3FDC496680000000
  %131 = fmul float %68, 0x3FDC496680000000
  %132 = fmul float %117, 0x3FDC496680000000
  %133 = fmul float %118, 0x3FDC496680000000
  %134 = fmul float %119, 0x3FDC496680000000
  br label %135

; <label>:135                                     ; preds = %114, %17
  %136 = phi float [ %129, %114 ], [ 0.000000e+00, %17 ]
  %137 = phi float [ %130, %114 ], [ 0.000000e+00, %17 ]
  %138 = phi float [ %131, %114 ], [ 0.000000e+00, %17 ]
  %139 = phi float [ %132, %114 ], [ 0.000000e+00, %17 ]
  %140 = phi float [ %133, %114 ], [ 0.000000e+00, %17 ]
  %141 = phi float [ %134, %114 ], [ 0.000000e+00, %17 ]
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %20, label %142, label %232, !dx.controlflow.hints !19

; <label>:142                                     ; preds = %135
  %143 = add i32 %19, -1
  %144 = mul i32 %143, 3
  %145 = add i32 0, %144
  %146 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %145
  %147 = load float, float addrspace(3)* %146, align 4
  %148 = mul i32 %143, 3
  %149 = add i32 1, %148
  %150 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %149
  %151 = load float, float addrspace(3)* %150, align 4
  %152 = mul i32 %143, 3
  %153 = add i32 2, %152
  %154 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %153
  %155 = load float, float addrspace(3)* %154, align 4
  %156 = add i32 %19, 1
  %157 = mul i32 %156, 3
  %158 = add i32 0, %157
  %159 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %158
  %160 = load float, float addrspace(3)* %159, align 4
  %161 = mul i32 %156, 3
  %162 = add i32 1, %161
  %163 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %162
  %164 = load float, float addrspace(3)* %163, align 4
  %165 = mul i32 %156, 3
  %166 = add i32 2, %165
  %167 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %166
  %168 = load float, float addrspace(3)* %167, align 4
  %169 = fadd fast float %160, %147
  %170 = fmul fast float %169, 0x3FD1DB4CC0000000
  %171 = fadd fast float %170, %136
  %172 = fadd fast float %164, %151
  %173 = fmul fast float %172, 0x3FD1DB4CC0000000
  %174 = fadd fast float %173, %137
  %175 = fadd fast float %168, %155
  %176 = fmul fast float %175, 0x3FD1DB4CC0000000
  %177 = fadd fast float %176, %138
  %178 = mul i32 %19, 3
  %179 = add i32 0, %178
  %180 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %179
  store float %171, float addrspace(3)* %180, align 4
  %181 = mul i32 %19, 3
  %182 = add i32 1, %181
  %183 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %182
  store float %174, float addrspace(3)* %183, align 4
  %184 = mul i32 %19, 3
  %185 = add i32 2, %184
  %186 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %185
  store float %177, float addrspace(3)* %186, align 4
  %187 = add i32 %19, 50
  %188 = add i32 %19, 49
  %189 = mul i32 %188, 3
  %190 = add i32 0, %189
  %191 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %190
  %192 = load float, float addrspace(3)* %191, align 4
  %193 = mul i32 %188, 3
  %194 = add i32 1, %193
  %195 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %194
  %196 = load float, float addrspace(3)* %195, align 4
  %197 = mul i32 %188, 3
  %198 = add i32 2, %197
  %199 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %198
  %200 = load float, float addrspace(3)* %199, align 4
  %201 = add i32 %19, 51
  %202 = mul i32 %201, 3
  %203 = add i32 0, %202
  %204 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %203
  %205 = load float, float addrspace(3)* %204, align 4
  %206 = mul i32 %201, 3
  %207 = add i32 1, %206
  %208 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %207
  %209 = load float, float addrspace(3)* %208, align 4
  %210 = mul i32 %201, 3
  %211 = add i32 2, %210
  %212 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %211
  %213 = load float, float addrspace(3)* %212, align 4
  %214 = fadd fast float %205, %192
  %215 = fmul fast float %214, 0x3FD1DB4CC0000000
  %216 = fadd fast float %215, %139
  %217 = fadd fast float %209, %196
  %218 = fmul fast float %217, 0x3FD1DB4CC0000000
  %219 = fadd fast float %218, %140
  %220 = fadd fast float %213, %200
  %221 = fmul fast float %220, 0x3FD1DB4CC0000000
  %222 = fadd fast float %221, %141
  %223 = mul i32 %187, 3
  %224 = add i32 0, %223
  %225 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %224
  store float %216, float addrspace(3)* %225, align 4
  %226 = mul i32 %187, 3
  %227 = add i32 1, %226
  %228 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %227
  store float %219, float addrspace(3)* %228, align 4
  %229 = mul i32 %187, 3
  %230 = add i32 2, %229
  %231 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %230
  store float %222, float addrspace(3)* %231, align 4
  br label %232

; <label>:232                                     ; preds = %142, %135
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %233 = add i32 %7, 1
  %234 = mul i32 %8, 10
  %235 = add i32 %234, %233
  %236 = mul i32 %235, 3
  %237 = add i32 0, %236
  %238 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %237
  %239 = load float, float addrspace(3)* %238, align 4
  %240 = mul i32 %235, 3
  %241 = add i32 1, %240
  %242 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %241
  %243 = load float, float addrspace(3)* %242, align 4
  %244 = mul i32 %235, 3
  %245 = add i32 2, %244
  %246 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %245
  %247 = load float, float addrspace(3)* %246, align 4
  %248 = add i32 %7, 11
  %249 = add i32 %248, %234
  %250 = mul i32 %249, 3
  %251 = add i32 0, %250
  %252 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %251
  %253 = load float, float addrspace(3)* %252, align 4
  %254 = mul i32 %249, 3
  %255 = add i32 1, %254
  %256 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %255
  %257 = load float, float addrspace(3)* %256, align 4
  %258 = mul i32 %249, 3
  %259 = add i32 2, %258
  %260 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %259
  %261 = load float, float addrspace(3)* %260, align 4
  %262 = fmul fast float %253, 0x3FDC496680000000
  %263 = fmul fast float %257, 0x3FDC496680000000
  %264 = fmul fast float %261, 0x3FDC496680000000
  %265 = add i32 %7, 21
  %266 = add i32 %265, %234
  %267 = mul i32 %266, 3
  %268 = add i32 0, %267
  %269 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %268
  %270 = load float, float addrspace(3)* %269, align 4
  %271 = mul i32 %266, 3
  %272 = add i32 1, %271
  %273 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %272
  %274 = load float, float addrspace(3)* %273, align 4
  %275 = mul i32 %266, 3
  %276 = add i32 2, %275
  %277 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %276
  %278 = load float, float addrspace(3)* %277, align 4
  %279 = fadd fast float %270, %239
  %280 = fmul fast float %279, 0x3FD1DB4CC0000000
  %281 = fadd fast float %280, %262
  %282 = fadd fast float %274, %243
  %283 = fmul fast float %282, 0x3FD1DB4CC0000000
  %284 = fadd fast float %283, %263
  %285 = fadd fast float %278, %247
  %286 = fmul fast float %285, 0x3FD1DB4CC0000000
  %287 = fadd fast float %286, %264
  %288 = call float @dx.op.binary.f32(i32 35, float %281, float -3.225500e+04)  ; FMax(a,b)
  %289 = call float @dx.op.binary.f32(i32 35, float %284, float -3.225500e+04)  ; FMax(a,b)
  %290 = call float @dx.op.binary.f32(i32 35, float %287, float -3.225500e+04)  ; FMax(a,b)
  %291 = call float @dx.op.binary.f32(i32 36, float %288, float 3.225500e+04)  ; FMin(a,b)
  %292 = call float @dx.op.binary.f32(i32 36, float %289, float 3.225500e+04)  ; FMin(a,b)
  %293 = call float @dx.op.binary.f32(i32 36, float %290, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %5, i32 %6, i32 undef, float %291, float %292, float %293, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %294

; <label>:294                                     ; preds = %232, %0
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

