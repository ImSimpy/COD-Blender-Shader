;
; Note: shader requires additional functionality:
;       Wave level operations
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
; shader hash: 33072f3af770ee2192983006969a0704
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
;                                   sampler      NA          NA      S0             s2     1
;                                   texture     f32          2d      T0             t0     1
;                                   texture     f32          2d      T1             t1     1
;                                       UAV     f32          2d      U0             u0     1
;                                       UAV     f32          2d      U1             u1     1
;                                       UAV     f32          2d      U2             u2     1
;                                       UAV     f32          2d      U3             u3     1
;                                       UAV     f32          2d      U4             u4     1
;                                       UAV     f32          2d      U5             u5     1
;                                       UAV     f32          2d      U6             u6     1
;                                       UAV     f32          2d      U7             u7     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.RWTexture2D<float>" = type { float }
%FloatZDownsampleConsts = type { <4 x float>, i32, i32, i32, i32 }
%struct.SamplerState = type { i32 }

@"\01?sharedFloatZMax@@3PAY07$$CAMA.1dim" = addrspace(3) global [64 x float] undef, align 4
@"\01?sharedFloatZMin@@3PAY07$$CAMA.1dim" = addrspace(3) global [64 x float] undef, align 4

define void @cs_floatz_downsample_interior() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 7, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 6, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 5, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %14 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %15 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %16 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %17 = shl i32 %13, 1
  %18 = shl i32 %14, 1
  %19 = uitofp i32 %17 to float
  %20 = uitofp i32 %18 to float
  %21 = fadd fast float %19, 1.000000e+00
  %22 = fadd fast float %20, 1.000000e+00
  %23 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %24 = extractvalue %dx.types.CBufRet.f32 %23, 2
  %25 = extractvalue %dx.types.CBufRet.f32 %23, 3
  %26 = fmul fast float %24, %21
  %27 = fmul fast float %25, %22
  %28 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %10, %dx.types.Handle %11, float %26, float %27, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %29 = extractvalue %dx.types.ResRet.f32 %28, 0
  %30 = extractvalue %dx.types.ResRet.f32 %28, 1
  %31 = extractvalue %dx.types.ResRet.f32 %28, 2
  %32 = extractvalue %dx.types.ResRet.f32 %28, 3
  %33 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %9, %dx.types.Handle %11, float %26, float %27, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %34 = extractvalue %dx.types.ResRet.f32 %33, 0
  %35 = extractvalue %dx.types.ResRet.f32 %33, 1
  %36 = extractvalue %dx.types.ResRet.f32 %33, 2
  %37 = extractvalue %dx.types.ResRet.f32 %33, 3
  %38 = fcmp fast ole float %29, -1.000000e+00
  %39 = fcmp fast ole float %30, -1.000000e+00
  %40 = fcmp fast ole float %31, -1.000000e+00
  %41 = fcmp fast ole float %32, -1.000000e+00
  %42 = select i1 %38, float -1.000000e+00, float %29
  %43 = select i1 %39, float -1.000000e+00, float %30
  %44 = select i1 %40, float -1.000000e+00, float %31
  %45 = select i1 %41, float -1.000000e+00, float %32
  %46 = and i1 %38, %39
  %47 = and i1 %40, %46
  %48 = and i1 %41, %47
  %49 = call float @dx.op.binary.f32(i32 36, float %30, float %31)  ; FMin(a,b)
  %50 = call float @dx.op.binary.f32(i32 36, float %29, float %49)  ; FMin(a,b)
  %51 = call float @dx.op.binary.f32(i32 36, float %50, float %32)  ; FMin(a,b)
  %52 = call float @dx.op.binary.f32(i32 35, float %43, float %44)  ; FMax(a,b)
  %53 = call float @dx.op.binary.f32(i32 35, float %42, float %52)  ; FMax(a,b)
  %54 = call float @dx.op.binary.f32(i32 35, float %53, float %45)  ; FMax(a,b)
  %55 = select i1 %48, float %51, float %54
  %56 = fcmp fast ole float %34, -1.000000e+00
  %57 = fcmp fast ole float %35, -1.000000e+00
  %58 = fcmp fast ole float %36, -1.000000e+00
  %59 = fcmp fast ole float %37, -1.000000e+00
  %60 = select i1 %56, float 0x47EFFFFFE0000000, float %34
  %61 = select i1 %57, float 0x47EFFFFFE0000000, float %35
  %62 = select i1 %58, float 0x47EFFFFFE0000000, float %36
  %63 = select i1 %59, float 0x47EFFFFFE0000000, float %37
  %64 = and i1 %56, %57
  %65 = and i1 %58, %64
  %66 = and i1 %59, %65
  %67 = call float @dx.op.binary.f32(i32 35, float %35, float %36)  ; FMax(a,b)
  %68 = call float @dx.op.binary.f32(i32 35, float %34, float %67)  ; FMax(a,b)
  %69 = call float @dx.op.binary.f32(i32 35, float %68, float %37)  ; FMax(a,b)
  %70 = call float @dx.op.binary.f32(i32 36, float %61, float %62)  ; FMin(a,b)
  %71 = call float @dx.op.binary.f32(i32 36, float %60, float %70)  ; FMin(a,b)
  %72 = call float @dx.op.binary.f32(i32 36, float %71, float %63)  ; FMin(a,b)
  %73 = select i1 %66, float %69, float %72
  %74 = and i32 %13, 2147483647
  %75 = and i32 %14, 2147483647
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %8, i32 %74, i32 %75, i32 undef, float %55, float %55, float %55, float %55, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %74, i32 %75, i32 undef, float %73, float %73, float %73, float %73, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %76 = mul i32 %15, 8
  %77 = add i32 %16, %76
  %78 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedFloatZMax@@3PAY07$$CAMA.1dim", i32 0, i32 %77
  store float %55, float addrspace(3)* %78, align 4, !tbaa !25
  %79 = mul i32 %15, 8
  %80 = add i32 %16, %79
  %81 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedFloatZMin@@3PAY07$$CAMA.1dim", i32 0, i32 %80
  store float %73, float addrspace(3)* %81, align 4, !tbaa !25
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %82 = xor i32 %16, 1
  %83 = xor i32 %15, 1
  %84 = mul i32 %83, 8
  %85 = add i32 %82, %84
  %86 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedFloatZMax@@3PAY07$$CAMA.1dim", i32 0, i32 %85
  %87 = load float, float addrspace(3)* %86, align 4, !tbaa !25
  %88 = mul i32 %15, 8
  %89 = add i32 %82, %88
  %90 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedFloatZMax@@3PAY07$$CAMA.1dim", i32 0, i32 %89
  %91 = load float, float addrspace(3)* %90, align 4, !tbaa !25
  %92 = mul i32 %83, 8
  %93 = add i32 %16, %92
  %94 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedFloatZMax@@3PAY07$$CAMA.1dim", i32 0, i32 %93
  %95 = load float, float addrspace(3)* %94, align 4, !tbaa !25
  %96 = fcmp fast ole float %55, -1.000000e+00
  %97 = fcmp fast ole float %95, -1.000000e+00
  %98 = fcmp fast ole float %91, -1.000000e+00
  %99 = fcmp fast ole float %87, -1.000000e+00
  %100 = select i1 %96, float -1.000000e+00, float %55
  %101 = select i1 %97, float -1.000000e+00, float %95
  %102 = select i1 %98, float -1.000000e+00, float %91
  %103 = select i1 %99, float -1.000000e+00, float %87
  %104 = and i1 %96, %97
  %105 = and i1 %98, %104
  %106 = and i1 %99, %105
  %107 = call float @dx.op.binary.f32(i32 36, float %95, float %91)  ; FMin(a,b)
  %108 = call float @dx.op.binary.f32(i32 36, float %55, float %107)  ; FMin(a,b)
  %109 = call float @dx.op.binary.f32(i32 36, float %108, float %87)  ; FMin(a,b)
  %110 = call float @dx.op.binary.f32(i32 35, float %101, float %102)  ; FMax(a,b)
  %111 = call float @dx.op.binary.f32(i32 35, float %100, float %110)  ; FMax(a,b)
  %112 = call float @dx.op.binary.f32(i32 35, float %111, float %103)  ; FMax(a,b)
  %113 = select i1 %106, float %109, float %112
  %114 = mul i32 %83, 8
  %115 = add i32 %82, %114
  %116 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedFloatZMin@@3PAY07$$CAMA.1dim", i32 0, i32 %115
  %117 = load float, float addrspace(3)* %116, align 4, !tbaa !25
  %118 = mul i32 %15, 8
  %119 = add i32 %82, %118
  %120 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedFloatZMin@@3PAY07$$CAMA.1dim", i32 0, i32 %119
  %121 = load float, float addrspace(3)* %120, align 4, !tbaa !25
  %122 = mul i32 %83, 8
  %123 = add i32 %16, %122
  %124 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedFloatZMin@@3PAY07$$CAMA.1dim", i32 0, i32 %123
  %125 = load float, float addrspace(3)* %124, align 4, !tbaa !25
  %126 = fcmp fast ole float %73, -1.000000e+00
  %127 = fcmp fast ole float %125, -1.000000e+00
  %128 = fcmp fast ole float %121, -1.000000e+00
  %129 = fcmp fast ole float %117, -1.000000e+00
  %130 = select i1 %126, float 0x47EFFFFFE0000000, float %73
  %131 = select i1 %127, float 0x47EFFFFFE0000000, float %125
  %132 = select i1 %128, float 0x47EFFFFFE0000000, float %121
  %133 = select i1 %129, float 0x47EFFFFFE0000000, float %117
  %134 = and i1 %126, %127
  %135 = and i1 %128, %134
  %136 = and i1 %129, %135
  %137 = call float @dx.op.binary.f32(i32 35, float %125, float %121)  ; FMax(a,b)
  %138 = call float @dx.op.binary.f32(i32 35, float %73, float %137)  ; FMax(a,b)
  %139 = call float @dx.op.binary.f32(i32 35, float %138, float %117)  ; FMax(a,b)
  %140 = call float @dx.op.binary.f32(i32 36, float %131, float %132)  ; FMin(a,b)
  %141 = call float @dx.op.binary.f32(i32 36, float %130, float %140)  ; FMin(a,b)
  %142 = call float @dx.op.binary.f32(i32 36, float %141, float %133)  ; FMin(a,b)
  %143 = select i1 %136, float %139, float %142
  %144 = lshr i32 %74, 1
  %145 = lshr i32 %75, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %7, i32 %144, i32 %145, i32 undef, float %113, float %113, float %113, float %113, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %144, i32 %145, i32 undef, float %143, float %143, float %143, float %143, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %146 = call i32 @dx.op.waveGetLaneCount(i32 112)  ; WaveGetLaneCount()
  store float %113, float addrspace(3)* %78, align 4, !tbaa !25
  store float %143, float addrspace(3)* %81, align 4, !tbaa !25
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %147 = xor i32 %16, 2
  %148 = xor i32 %15, 2
  %149 = mul i32 %148, 8
  %150 = add i32 %147, %149
  %151 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedFloatZMax@@3PAY07$$CAMA.1dim", i32 0, i32 %150
  %152 = load float, float addrspace(3)* %151, align 4, !tbaa !25
  %153 = mul i32 %15, 8
  %154 = add i32 %147, %153
  %155 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedFloatZMax@@3PAY07$$CAMA.1dim", i32 0, i32 %154
  %156 = load float, float addrspace(3)* %155, align 4, !tbaa !25
  %157 = mul i32 %148, 8
  %158 = add i32 %16, %157
  %159 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedFloatZMax@@3PAY07$$CAMA.1dim", i32 0, i32 %158
  %160 = load float, float addrspace(3)* %159, align 4, !tbaa !25
  %161 = fcmp fast ole float %113, -1.000000e+00
  %162 = fcmp fast ole float %160, -1.000000e+00
  %163 = fcmp fast ole float %156, -1.000000e+00
  %164 = fcmp fast ole float %152, -1.000000e+00
  %165 = select i1 %161, float -1.000000e+00, float %113
  %166 = select i1 %162, float -1.000000e+00, float %160
  %167 = select i1 %163, float -1.000000e+00, float %156
  %168 = select i1 %164, float -1.000000e+00, float %152
  %169 = and i1 %161, %162
  %170 = and i1 %163, %169
  %171 = and i1 %164, %170
  %172 = call float @dx.op.binary.f32(i32 36, float %160, float %156)  ; FMin(a,b)
  %173 = call float @dx.op.binary.f32(i32 36, float %113, float %172)  ; FMin(a,b)
  %174 = call float @dx.op.binary.f32(i32 36, float %173, float %152)  ; FMin(a,b)
  %175 = call float @dx.op.binary.f32(i32 35, float %166, float %167)  ; FMax(a,b)
  %176 = call float @dx.op.binary.f32(i32 35, float %165, float %175)  ; FMax(a,b)
  %177 = call float @dx.op.binary.f32(i32 35, float %176, float %168)  ; FMax(a,b)
  %178 = select i1 %171, float %174, float %177
  %179 = mul i32 %148, 8
  %180 = add i32 %147, %179
  %181 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedFloatZMin@@3PAY07$$CAMA.1dim", i32 0, i32 %180
  %182 = load float, float addrspace(3)* %181, align 4, !tbaa !25
  %183 = mul i32 %15, 8
  %184 = add i32 %147, %183
  %185 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedFloatZMin@@3PAY07$$CAMA.1dim", i32 0, i32 %184
  %186 = load float, float addrspace(3)* %185, align 4, !tbaa !25
  %187 = mul i32 %148, 8
  %188 = add i32 %16, %187
  %189 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedFloatZMin@@3PAY07$$CAMA.1dim", i32 0, i32 %188
  %190 = load float, float addrspace(3)* %189, align 4, !tbaa !25
  %191 = fcmp fast ole float %143, -1.000000e+00
  %192 = fcmp fast ole float %190, -1.000000e+00
  %193 = fcmp fast ole float %186, -1.000000e+00
  %194 = fcmp fast ole float %182, -1.000000e+00
  %195 = select i1 %191, float 0x47EFFFFFE0000000, float %143
  %196 = select i1 %192, float 0x47EFFFFFE0000000, float %190
  %197 = select i1 %193, float 0x47EFFFFFE0000000, float %186
  %198 = select i1 %194, float 0x47EFFFFFE0000000, float %182
  %199 = and i1 %191, %192
  %200 = and i1 %193, %199
  %201 = and i1 %194, %200
  %202 = call float @dx.op.binary.f32(i32 35, float %190, float %186)  ; FMax(a,b)
  %203 = call float @dx.op.binary.f32(i32 35, float %143, float %202)  ; FMax(a,b)
  %204 = call float @dx.op.binary.f32(i32 35, float %203, float %182)  ; FMax(a,b)
  %205 = call float @dx.op.binary.f32(i32 36, float %196, float %197)  ; FMin(a,b)
  %206 = call float @dx.op.binary.f32(i32 36, float %195, float %205)  ; FMin(a,b)
  %207 = call float @dx.op.binary.f32(i32 36, float %206, float %198)  ; FMin(a,b)
  %208 = select i1 %201, float %204, float %207
  %209 = lshr i32 %74, 2
  %210 = lshr i32 %75, 2
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %6, i32 %209, i32 %210, i32 undef, float %178, float %178, float %178, float %178, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %209, i32 %210, i32 undef, float %208, float %208, float %208, float %208, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %211 = icmp eq i32 %146, 16
  br i1 %211, label %212, label %213, !dx.controlflow.hints !29

; <label>:212                                     ; preds = %0
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br label %213

; <label>:213                                     ; preds = %212, %0
  store float %178, float addrspace(3)* %78, align 4, !tbaa !25
  store float %208, float addrspace(3)* %81, align 4, !tbaa !25
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %214 = xor i32 %16, 4
  %215 = xor i32 %15, 4
  %216 = mul i32 %215, 8
  %217 = add i32 %214, %216
  %218 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedFloatZMax@@3PAY07$$CAMA.1dim", i32 0, i32 %217
  %219 = load float, float addrspace(3)* %218, align 4, !tbaa !25
  %220 = mul i32 %15, 8
  %221 = add i32 %214, %220
  %222 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedFloatZMax@@3PAY07$$CAMA.1dim", i32 0, i32 %221
  %223 = load float, float addrspace(3)* %222, align 4, !tbaa !25
  %224 = mul i32 %215, 8
  %225 = add i32 %16, %224
  %226 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedFloatZMax@@3PAY07$$CAMA.1dim", i32 0, i32 %225
  %227 = load float, float addrspace(3)* %226, align 4, !tbaa !25
  %228 = fcmp fast ole float %178, -1.000000e+00
  %229 = fcmp fast ole float %227, -1.000000e+00
  %230 = fcmp fast ole float %223, -1.000000e+00
  %231 = fcmp fast ole float %219, -1.000000e+00
  %232 = select i1 %228, float -1.000000e+00, float %178
  %233 = select i1 %229, float -1.000000e+00, float %227
  %234 = select i1 %230, float -1.000000e+00, float %223
  %235 = select i1 %231, float -1.000000e+00, float %219
  %236 = and i1 %228, %229
  %237 = and i1 %230, %236
  %238 = and i1 %231, %237
  %239 = call float @dx.op.binary.f32(i32 36, float %227, float %223)  ; FMin(a,b)
  %240 = call float @dx.op.binary.f32(i32 36, float %178, float %239)  ; FMin(a,b)
  %241 = call float @dx.op.binary.f32(i32 36, float %240, float %219)  ; FMin(a,b)
  %242 = call float @dx.op.binary.f32(i32 35, float %233, float %234)  ; FMax(a,b)
  %243 = call float @dx.op.binary.f32(i32 35, float %232, float %242)  ; FMax(a,b)
  %244 = call float @dx.op.binary.f32(i32 35, float %243, float %235)  ; FMax(a,b)
  %245 = select i1 %238, float %241, float %244
  %246 = mul i32 %215, 8
  %247 = add i32 %214, %246
  %248 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedFloatZMin@@3PAY07$$CAMA.1dim", i32 0, i32 %247
  %249 = load float, float addrspace(3)* %248, align 4, !tbaa !25
  %250 = mul i32 %15, 8
  %251 = add i32 %214, %250
  %252 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedFloatZMin@@3PAY07$$CAMA.1dim", i32 0, i32 %251
  %253 = load float, float addrspace(3)* %252, align 4, !tbaa !25
  %254 = mul i32 %215, 8
  %255 = add i32 %16, %254
  %256 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedFloatZMin@@3PAY07$$CAMA.1dim", i32 0, i32 %255
  %257 = load float, float addrspace(3)* %256, align 4, !tbaa !25
  %258 = fcmp fast ole float %208, -1.000000e+00
  %259 = fcmp fast ole float %257, -1.000000e+00
  %260 = fcmp fast ole float %253, -1.000000e+00
  %261 = fcmp fast ole float %249, -1.000000e+00
  %262 = select i1 %258, float 0x47EFFFFFE0000000, float %208
  %263 = select i1 %259, float 0x47EFFFFFE0000000, float %257
  %264 = select i1 %260, float 0x47EFFFFFE0000000, float %253
  %265 = select i1 %261, float 0x47EFFFFFE0000000, float %249
  %266 = and i1 %258, %259
  %267 = and i1 %260, %266
  %268 = and i1 %261, %267
  %269 = call float @dx.op.binary.f32(i32 35, float %257, float %253)  ; FMax(a,b)
  %270 = call float @dx.op.binary.f32(i32 35, float %208, float %269)  ; FMax(a,b)
  %271 = call float @dx.op.binary.f32(i32 35, float %270, float %249)  ; FMax(a,b)
  %272 = call float @dx.op.binary.f32(i32 36, float %263, float %264)  ; FMin(a,b)
  %273 = call float @dx.op.binary.f32(i32 36, float %262, float %272)  ; FMin(a,b)
  %274 = call float @dx.op.binary.f32(i32 36, float %273, float %265)  ; FMin(a,b)
  %275 = select i1 %268, float %271, float %274
  %276 = lshr i32 %74, 3
  %277 = lshr i32 %75, 3
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %5, i32 %276, i32 %277, i32 undef, float %245, float %245, float %245, float %245, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %276, i32 %277, i32 undef, float %275, float %275, float %275, float %275, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #3

; Function Attrs: nounwind readnone
declare i32 @dx.op.waveGetLaneCount(i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }
attributes #3 = { noduplicate nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!22}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !9, !18, !20}
!5 = !{!6, !8}
!6 = !{i32 0, %"class.Texture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!9 = !{!10, !11, !12, !13, !14, !15, !16, !17}
!10 = !{i32 0, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!11 = !{i32 1, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!12 = !{i32 2, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!13 = !{i32 3, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 3, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!14 = !{i32 4, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 4, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!15 = !{i32 5, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 5, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!16 = !{i32 6, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 6, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!17 = !{i32 7, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 7, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!18 = !{!19}
!19 = !{i32 0, %FloatZDownsampleConsts* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!20 = !{!21}
!21 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!22 = !{void ()* @cs_floatz_downsample_interior, !"cs_floatz_downsample_interior", null, !4, !23}
!23 = !{i32 0, i64 524544, i32 4, !24}
!24 = !{i32 8, i32 8, i32 1}
!25 = !{!26, !26, i64 0}
!26 = !{!"float", !27, i64 0}
!27 = !{!"omnipotent char", !28, i64 0}
!28 = !{!"Simple C/C++ TBAA"}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}

