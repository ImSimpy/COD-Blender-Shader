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
; shader hash: aa072d22a9cfbb9c0c69ba7238483742
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

@"\01?sharedFloatZMax@@3PAY03$$CAMA.1dim" = addrspace(3) global [8 x float] undef, align 4
@"\01?sharedFloatZMin@@3PAY03$$CAMA.1dim" = addrspace(3) global [8 x float] undef, align 4

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
  %15 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %16 = shl i32 %13, 1
  %17 = shl i32 %14, 1
  %18 = uitofp i32 %16 to float
  %19 = uitofp i32 %17 to float
  %20 = fadd fast float %18, 1.000000e+00
  %21 = fadd fast float %19, 1.000000e+00
  %22 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %23 = extractvalue %dx.types.CBufRet.f32 %22, 2
  %24 = extractvalue %dx.types.CBufRet.f32 %22, 3
  %25 = fmul fast float %23, %20
  %26 = fmul fast float %21, %24
  %27 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %10, %dx.types.Handle %11, float %25, float %26, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %28 = extractvalue %dx.types.ResRet.f32 %27, 0
  %29 = extractvalue %dx.types.ResRet.f32 %27, 1
  %30 = extractvalue %dx.types.ResRet.f32 %27, 2
  %31 = extractvalue %dx.types.ResRet.f32 %27, 3
  %32 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %9, %dx.types.Handle %11, float %25, float %26, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %33 = extractvalue %dx.types.ResRet.f32 %32, 0
  %34 = extractvalue %dx.types.ResRet.f32 %32, 1
  %35 = extractvalue %dx.types.ResRet.f32 %32, 2
  %36 = extractvalue %dx.types.ResRet.f32 %32, 3
  %37 = fcmp fast ole float %28, -1.000000e+00
  %38 = fcmp fast ole float %29, -1.000000e+00
  %39 = fcmp fast ole float %30, -1.000000e+00
  %40 = fcmp fast ole float %31, -1.000000e+00
  %41 = select i1 %37, float -1.000000e+00, float %28
  %42 = select i1 %38, float -1.000000e+00, float %29
  %43 = select i1 %39, float -1.000000e+00, float %30
  %44 = select i1 %40, float -1.000000e+00, float %31
  %45 = and i1 %37, %38
  %46 = and i1 %39, %45
  %47 = and i1 %40, %46
  %48 = call float @dx.op.binary.f32(i32 36, float %29, float %30)  ; FMin(a,b)
  %49 = call float @dx.op.binary.f32(i32 36, float %28, float %48)  ; FMin(a,b)
  %50 = call float @dx.op.binary.f32(i32 36, float %49, float %31)  ; FMin(a,b)
  %51 = call float @dx.op.binary.f32(i32 35, float %42, float %43)  ; FMax(a,b)
  %52 = call float @dx.op.binary.f32(i32 35, float %41, float %51)  ; FMax(a,b)
  %53 = call float @dx.op.binary.f32(i32 35, float %52, float %44)  ; FMax(a,b)
  %54 = select i1 %47, float %50, float %53
  %55 = fcmp fast ole float %33, -1.000000e+00
  %56 = fcmp fast ole float %34, -1.000000e+00
  %57 = fcmp fast ole float %35, -1.000000e+00
  %58 = fcmp fast ole float %36, -1.000000e+00
  %59 = select i1 %55, float 0x47EFFFFFE0000000, float %33
  %60 = select i1 %56, float 0x47EFFFFFE0000000, float %34
  %61 = select i1 %57, float 0x47EFFFFFE0000000, float %35
  %62 = select i1 %58, float 0x47EFFFFFE0000000, float %36
  %63 = and i1 %55, %56
  %64 = and i1 %57, %63
  %65 = and i1 %58, %64
  %66 = call float @dx.op.binary.f32(i32 35, float %34, float %35)  ; FMax(a,b)
  %67 = call float @dx.op.binary.f32(i32 35, float %33, float %66)  ; FMax(a,b)
  %68 = call float @dx.op.binary.f32(i32 35, float %67, float %36)  ; FMax(a,b)
  %69 = call float @dx.op.binary.f32(i32 36, float %60, float %61)  ; FMin(a,b)
  %70 = call float @dx.op.binary.f32(i32 36, float %59, float %69)  ; FMin(a,b)
  %71 = call float @dx.op.binary.f32(i32 36, float %70, float %62)  ; FMin(a,b)
  %72 = select i1 %65, float %68, float %71
  %73 = and i32 %13, 2147483647
  %74 = and i32 %14, 2147483647
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %8, i32 %73, i32 %74, i32 undef, float %54, float %54, float %54, float %54, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %73, i32 %74, i32 undef, float %72, float %72, float %72, float %72, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %75 = call i32 @dx.op.waveGetLaneCount(i32 112)  ; WaveGetLaneCount()
  %76 = add i32 %75, -1
  %77 = call i32 @dx.op.waveGetLaneIndex(i32 111)  ; WaveGetLaneIndex()
  %78 = and i32 %75, 1
  %79 = xor i32 %78, 1
  %80 = and i32 %76, %77
  %81 = xor i32 %79, %80
  %82 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %54, i32 %81)  ; WaveReadLaneAt(value,lane)
  %83 = fcmp fast ole float %54, -1.000000e+00
  %84 = fcmp fast ole float %82, -1.000000e+00
  %85 = select i1 %83, float -1.000000e+00, float %54
  %86 = select i1 %84, float -1.000000e+00, float %82
  %87 = and i1 %83, %84
  %88 = call float @dx.op.binary.f32(i32 36, float %54, float %82)  ; FMin(a,b)
  %89 = call float @dx.op.binary.f32(i32 35, float %85, float %86)  ; FMax(a,b)
  %90 = select i1 %87, float %88, float %89
  %91 = add i32 %75, 15
  %92 = and i32 %91, 8
  %93 = xor i32 %80, %92
  %94 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %90, i32 %93)  ; WaveReadLaneAt(value,lane)
  %95 = fcmp fast ole float %90, -1.000000e+00
  %96 = fcmp fast ole float %94, -1.000000e+00
  %97 = select i1 %95, float -1.000000e+00, float %90
  %98 = select i1 %96, float -1.000000e+00, float %94
  %99 = and i1 %95, %96
  %100 = call float @dx.op.binary.f32(i32 36, float %90, float %94)  ; FMin(a,b)
  %101 = call float @dx.op.binary.f32(i32 35, float %97, float %98)  ; FMax(a,b)
  %102 = select i1 %99, float %100, float %101
  %103 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %72, i32 %81)  ; WaveReadLaneAt(value,lane)
  %104 = fcmp fast ole float %72, -1.000000e+00
  %105 = fcmp fast ole float %103, -1.000000e+00
  %106 = select i1 %104, float 0x47EFFFFFE0000000, float %72
  %107 = select i1 %105, float 0x47EFFFFFE0000000, float %103
  %108 = and i1 %104, %105
  %109 = call float @dx.op.binary.f32(i32 35, float %72, float %103)  ; FMax(a,b)
  %110 = call float @dx.op.binary.f32(i32 36, float %106, float %107)  ; FMin(a,b)
  %111 = select i1 %108, float %109, float %110
  %112 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %111, i32 %93)  ; WaveReadLaneAt(value,lane)
  %113 = fcmp fast ole float %111, -1.000000e+00
  %114 = fcmp fast ole float %112, -1.000000e+00
  %115 = select i1 %113, float 0x47EFFFFFE0000000, float %111
  %116 = select i1 %114, float 0x47EFFFFFE0000000, float %112
  %117 = and i1 %113, %114
  %118 = call float @dx.op.binary.f32(i32 35, float %111, float %112)  ; FMax(a,b)
  %119 = call float @dx.op.binary.f32(i32 36, float %115, float %116)  ; FMin(a,b)
  %120 = select i1 %117, float %118, float %119
  %121 = lshr i32 %73, 1
  %122 = lshr i32 %74, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %7, i32 %121, i32 %122, i32 undef, float %102, float %102, float %102, float %102, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %121, i32 %122, i32 undef, float %120, float %120, float %120, float %120, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %123 = udiv i32 %15, %75
  %124 = icmp ugt i32 %75, 31
  %125 = add i32 %75, 3
  %126 = and i32 %125, 2
  %127 = xor i32 %80, %126
  %128 = fcmp fast ole float %102, -1.000000e+00
  %129 = select i1 %128, float -1.000000e+00, float %102
  %130 = fcmp fast ole float %120, -1.000000e+00
  %131 = select i1 %130, float 0x47EFFFFFE0000000, float %120
  br i1 %124, label %132, label %168, !dx.controlflow.hints !25

; <label>:132                                     ; preds = %0
  %133 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %102, i32 %127)  ; WaveReadLaneAt(value,lane)
  %134 = fcmp fast ole float %133, -1.000000e+00
  %135 = select i1 %134, float -1.000000e+00, float %133
  %136 = and i1 %128, %134
  %137 = call float @dx.op.binary.f32(i32 36, float %102, float %133)  ; FMin(a,b)
  %138 = call float @dx.op.binary.f32(i32 35, float %129, float %135)  ; FMax(a,b)
  %139 = select i1 %136, float %137, float %138
  %140 = add i32 %75, 31
  %141 = and i32 %140, 16
  %142 = xor i32 %80, %141
  %143 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %139, i32 %142)  ; WaveReadLaneAt(value,lane)
  %144 = fcmp fast ole float %139, -1.000000e+00
  %145 = fcmp fast ole float %143, -1.000000e+00
  %146 = select i1 %144, float -1.000000e+00, float %139
  %147 = select i1 %145, float -1.000000e+00, float %143
  %148 = and i1 %144, %145
  %149 = call float @dx.op.binary.f32(i32 36, float %139, float %143)  ; FMin(a,b)
  %150 = call float @dx.op.binary.f32(i32 35, float %146, float %147)  ; FMax(a,b)
  %151 = select i1 %148, float %149, float %150
  %152 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %120, i32 %127)  ; WaveReadLaneAt(value,lane)
  %153 = fcmp fast ole float %152, -1.000000e+00
  %154 = select i1 %153, float 0x47EFFFFFE0000000, float %152
  %155 = and i1 %130, %153
  %156 = call float @dx.op.binary.f32(i32 35, float %120, float %152)  ; FMax(a,b)
  %157 = call float @dx.op.binary.f32(i32 36, float %131, float %154)  ; FMin(a,b)
  %158 = select i1 %155, float %156, float %157
  %159 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %158, i32 %142)  ; WaveReadLaneAt(value,lane)
  %160 = fcmp fast ole float %158, -1.000000e+00
  %161 = fcmp fast ole float %159, -1.000000e+00
  %162 = select i1 %160, float 0x47EFFFFFE0000000, float %158
  %163 = select i1 %161, float 0x47EFFFFFE0000000, float %159
  %164 = and i1 %160, %161
  %165 = call float @dx.op.binary.f32(i32 35, float %158, float %159)  ; FMax(a,b)
  %166 = call float @dx.op.binary.f32(i32 36, float %162, float %163)  ; FMin(a,b)
  %167 = select i1 %164, float %165, float %166
  br label %218

; <label>:168                                     ; preds = %0
  %169 = lshr i32 %77, 2
  %170 = and i32 %169, 1
  %171 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %102, i32 %127)  ; WaveReadLaneAt(value,lane)
  %172 = fcmp fast ole float %171, -1.000000e+00
  %173 = select i1 %172, float -1.000000e+00, float %171
  %174 = and i1 %128, %172
  %175 = call float @dx.op.binary.f32(i32 36, float %102, float %171)  ; FMin(a,b)
  %176 = call float @dx.op.binary.f32(i32 35, float %129, float %173)  ; FMax(a,b)
  %177 = select i1 %174, float %175, float %176
  %178 = mul i32 %170, 4
  %179 = add i32 %123, %178
  %180 = getelementptr [8 x float], [8 x float] addrspace(3)* @"\01?sharedFloatZMax@@3PAY03$$CAMA.1dim", i32 0, i32 %179
  store float %177, float addrspace(3)* %180, align 4, !tbaa !26
  %181 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %120, i32 %127)  ; WaveReadLaneAt(value,lane)
  %182 = fcmp fast ole float %181, -1.000000e+00
  %183 = select i1 %182, float 0x47EFFFFFE0000000, float %181
  %184 = and i1 %130, %182
  %185 = call float @dx.op.binary.f32(i32 35, float %120, float %181)  ; FMax(a,b)
  %186 = call float @dx.op.binary.f32(i32 36, float %131, float %183)  ; FMin(a,b)
  %187 = select i1 %184, float %185, float %186
  %188 = mul i32 %170, 4
  %189 = add i32 %123, %188
  %190 = getelementptr [8 x float], [8 x float] addrspace(3)* @"\01?sharedFloatZMin@@3PAY03$$CAMA.1dim", i32 0, i32 %189
  store float %187, float addrspace(3)* %190, align 4, !tbaa !26
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %191 = xor i32 %123, 2
  %192 = mul i32 %170, 4
  %193 = add i32 %191, %192
  %194 = getelementptr [8 x float], [8 x float] addrspace(3)* @"\01?sharedFloatZMax@@3PAY03$$CAMA.1dim", i32 0, i32 %193
  %195 = load float, float addrspace(3)* %194, align 4, !tbaa !26
  %196 = load float, float addrspace(3)* %180, align 4, !tbaa !26
  %197 = fcmp fast ole float %196, -1.000000e+00
  %198 = fcmp fast ole float %195, -1.000000e+00
  %199 = select i1 %197, float -1.000000e+00, float %196
  %200 = select i1 %198, float -1.000000e+00, float %195
  %201 = and i1 %198, %197
  %202 = call float @dx.op.binary.f32(i32 36, float %196, float %195)  ; FMin(a,b)
  %203 = call float @dx.op.binary.f32(i32 35, float %199, float %200)  ; FMax(a,b)
  %204 = select i1 %201, float %202, float %203
  %205 = mul i32 %170, 4
  %206 = add i32 %191, %205
  %207 = getelementptr [8 x float], [8 x float] addrspace(3)* @"\01?sharedFloatZMin@@3PAY03$$CAMA.1dim", i32 0, i32 %206
  %208 = load float, float addrspace(3)* %207, align 4, !tbaa !26
  %209 = load float, float addrspace(3)* %190, align 4, !tbaa !26
  %210 = fcmp fast ole float %209, -1.000000e+00
  %211 = fcmp fast ole float %208, -1.000000e+00
  %212 = select i1 %210, float 0x47EFFFFFE0000000, float %209
  %213 = select i1 %211, float 0x47EFFFFFE0000000, float %208
  %214 = and i1 %211, %210
  %215 = call float @dx.op.binary.f32(i32 35, float %209, float %208)  ; FMax(a,b)
  %216 = call float @dx.op.binary.f32(i32 36, float %212, float %213)  ; FMin(a,b)
  %217 = select i1 %214, float %215, float %216
  br label %218

; <label>:218                                     ; preds = %168, %132
  %219 = phi float [ %151, %132 ], [ %204, %168 ]
  %220 = phi float [ %167, %132 ], [ %217, %168 ]
  %221 = lshr i32 %73, 2
  %222 = lshr i32 %74, 2
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %6, i32 %221, i32 %222, i32 undef, float %219, float %219, float %219, float %219, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %221, i32 %222, i32 undef, float %220, float %220, float %220, float %220, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %223 = icmp eq i32 %75, 16
  br i1 %223, label %224, label %225, !dx.controlflow.hints !30

; <label>:224                                     ; preds = %218
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br label %225

; <label>:225                                     ; preds = %224, %218
  %226 = icmp eq i32 %75, 64
  %227 = fcmp fast ole float %219, -1.000000e+00
  %228 = select i1 %227, float -1.000000e+00, float %219
  %229 = fcmp fast ole float %220, -1.000000e+00
  %230 = select i1 %229, float 0x47EFFFFFE0000000, float %220
  br i1 %226, label %231, label %268, !dx.controlflow.hints !31

; <label>:231                                     ; preds = %225
  %232 = and i32 %77, 63
  %233 = xor i32 %232, 4
  %234 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %219, i32 %233)  ; WaveReadLaneAt(value,lane)
  %235 = fcmp fast ole float %234, -1.000000e+00
  %236 = select i1 %235, float -1.000000e+00, float %234
  %237 = and i1 %227, %235
  %238 = call float @dx.op.binary.f32(i32 36, float %219, float %234)  ; FMin(a,b)
  %239 = call float @dx.op.binary.f32(i32 35, float %228, float %236)  ; FMax(a,b)
  %240 = select i1 %237, float %238, float %239
  %241 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %240, i32 32)  ; WaveReadLaneAt(value,lane)
  %242 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %240, i32 0)  ; WaveReadLaneAt(value,lane)
  %243 = fcmp fast ole float %242, -1.000000e+00
  %244 = fcmp fast ole float %241, -1.000000e+00
  %245 = select i1 %243, float -1.000000e+00, float %242
  %246 = select i1 %244, float -1.000000e+00, float %241
  %247 = and i1 %244, %243
  %248 = call float @dx.op.binary.f32(i32 36, float %242, float %241)  ; FMin(a,b)
  %249 = call float @dx.op.binary.f32(i32 35, float %245, float %246)  ; FMax(a,b)
  %250 = select i1 %247, float %248, float %249
  %251 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %220, i32 %233)  ; WaveReadLaneAt(value,lane)
  %252 = fcmp fast ole float %251, -1.000000e+00
  %253 = select i1 %252, float 0x47EFFFFFE0000000, float %251
  %254 = and i1 %229, %252
  %255 = call float @dx.op.binary.f32(i32 35, float %220, float %251)  ; FMax(a,b)
  %256 = call float @dx.op.binary.f32(i32 36, float %230, float %253)  ; FMin(a,b)
  %257 = select i1 %254, float %255, float %256
  %258 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %257, i32 32)  ; WaveReadLaneAt(value,lane)
  %259 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %257, i32 0)  ; WaveReadLaneAt(value,lane)
  %260 = fcmp fast ole float %259, -1.000000e+00
  %261 = fcmp fast ole float %258, -1.000000e+00
  %262 = select i1 %260, float 0x47EFFFFFE0000000, float %259
  %263 = select i1 %261, float 0x47EFFFFFE0000000, float %258
  %264 = and i1 %261, %260
  %265 = call float @dx.op.binary.f32(i32 35, float %259, float %258)  ; FMax(a,b)
  %266 = call float @dx.op.binary.f32(i32 36, float %262, float %263)  ; FMin(a,b)
  %267 = select i1 %264, float %265, float %266
  br label %313

; <label>:268                                     ; preds = %225
  %269 = lshr i32 %75, 4
  %270 = mul i32 %269, %123
  %271 = lshr i32 %270, 1
  %272 = add i32 %75, 7
  %273 = and i32 %272, 4
  %274 = xor i32 %80, %273
  %275 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %219, i32 %274)  ; WaveReadLaneAt(value,lane)
  %276 = fcmp fast ole float %275, -1.000000e+00
  %277 = select i1 %276, float -1.000000e+00, float %275
  %278 = and i1 %227, %276
  %279 = call float @dx.op.binary.f32(i32 36, float %219, float %275)  ; FMin(a,b)
  %280 = call float @dx.op.binary.f32(i32 35, float %228, float %277)  ; FMax(a,b)
  %281 = select i1 %278, float %279, float %280
  %282 = add i32 %271, 0
  %283 = getelementptr [8 x float], [8 x float] addrspace(3)* @"\01?sharedFloatZMax@@3PAY03$$CAMA.1dim", i32 0, i32 %282
  store float %281, float addrspace(3)* %283, align 4, !tbaa !26
  %284 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %220, i32 %274)  ; WaveReadLaneAt(value,lane)
  %285 = fcmp fast ole float %284, -1.000000e+00
  %286 = select i1 %285, float 0x47EFFFFFE0000000, float %284
  %287 = and i1 %229, %285
  %288 = call float @dx.op.binary.f32(i32 35, float %220, float %284)  ; FMax(a,b)
  %289 = call float @dx.op.binary.f32(i32 36, float %230, float %286)  ; FMin(a,b)
  %290 = select i1 %287, float %288, float %289
  %291 = add i32 %271, 0
  %292 = getelementptr [8 x float], [8 x float] addrspace(3)* @"\01?sharedFloatZMin@@3PAY03$$CAMA.1dim", i32 0, i32 %291
  store float %290, float addrspace(3)* %292, align 4, !tbaa !26
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %293 = load float, float addrspace(3)* getelementptr inbounds ([8 x float], [8 x float] addrspace(3)* @"\01?sharedFloatZMax@@3PAY03$$CAMA.1dim", i32 0, i32 1), align 4, !tbaa !26
  %294 = load float, float addrspace(3)* getelementptr inbounds ([8 x float], [8 x float] addrspace(3)* @"\01?sharedFloatZMax@@3PAY03$$CAMA.1dim", i32 0, i32 0), align 4, !tbaa !26
  %295 = fcmp fast ole float %294, -1.000000e+00
  %296 = fcmp fast ole float %293, -1.000000e+00
  %297 = select i1 %295, float -1.000000e+00, float %294
  %298 = select i1 %296, float -1.000000e+00, float %293
  %299 = and i1 %296, %295
  %300 = call float @dx.op.binary.f32(i32 36, float %294, float %293)  ; FMin(a,b)
  %301 = call float @dx.op.binary.f32(i32 35, float %297, float %298)  ; FMax(a,b)
  %302 = select i1 %299, float %300, float %301
  %303 = load float, float addrspace(3)* getelementptr inbounds ([8 x float], [8 x float] addrspace(3)* @"\01?sharedFloatZMin@@3PAY03$$CAMA.1dim", i32 0, i32 1), align 4, !tbaa !26
  %304 = load float, float addrspace(3)* getelementptr inbounds ([8 x float], [8 x float] addrspace(3)* @"\01?sharedFloatZMin@@3PAY03$$CAMA.1dim", i32 0, i32 0), align 4, !tbaa !26
  %305 = fcmp fast ole float %304, -1.000000e+00
  %306 = fcmp fast ole float %303, -1.000000e+00
  %307 = select i1 %305, float 0x47EFFFFFE0000000, float %304
  %308 = select i1 %306, float 0x47EFFFFFE0000000, float %303
  %309 = and i1 %306, %305
  %310 = call float @dx.op.binary.f32(i32 35, float %304, float %303)  ; FMax(a,b)
  %311 = call float @dx.op.binary.f32(i32 36, float %307, float %308)  ; FMin(a,b)
  %312 = select i1 %309, float %310, float %311
  br label %313

; <label>:313                                     ; preds = %268, %231
  %314 = phi float [ %250, %231 ], [ %302, %268 ]
  %315 = phi float [ %267, %231 ], [ %312, %268 ]
  %316 = lshr i32 %73, 3
  %317 = lshr i32 %74, 3
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %5, i32 %316, i32 %317, i32 undef, float %314, float %314, float %314, float %314, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %316, i32 %317, i32 undef, float %315, float %315, float %315, float %315, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.waveGetLaneIndex(i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.waveGetLaneCount(i32) #0

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #3

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind
declare float @dx.op.waveReadLaneAt.f32(i32, float, i32) #2

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
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = !{!27, !27, i64 0}
!27 = !{!"float", !28, i64 0}
!28 = !{!"omnipotent char", !29, i64 0}
!29 = !{!"Simple C/C++ TBAA"}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}

