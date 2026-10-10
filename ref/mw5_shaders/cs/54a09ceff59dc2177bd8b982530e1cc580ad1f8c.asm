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
; shader hash: 179ad561bf8d6186773aaab4f2696271
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
;                                       UAV     f32          2d      U0             u0     1
;                                       UAV     f32          2d      U1             u1     1
;                                       UAV     f32          2d      U2             u2     1
;                                       UAV     f32          2d      U3             u3     1
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

define void @cs_floatz_downsample_interior_maxonly() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %9 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %10 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %11 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %12 = shl i32 %8, 1
  %13 = shl i32 %9, 1
  %14 = uitofp i32 %12 to float
  %15 = uitofp i32 %13 to float
  %16 = fadd fast float %14, 1.000000e+00
  %17 = fadd fast float %15, 1.000000e+00
  %18 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %19 = extractvalue %dx.types.CBufRet.f32 %18, 2
  %20 = extractvalue %dx.types.CBufRet.f32 %18, 3
  %21 = fmul fast float %19, %16
  %22 = fmul fast float %20, %17
  %23 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %6, float %21, float %22, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %24 = extractvalue %dx.types.ResRet.f32 %23, 0
  %25 = extractvalue %dx.types.ResRet.f32 %23, 1
  %26 = extractvalue %dx.types.ResRet.f32 %23, 2
  %27 = extractvalue %dx.types.ResRet.f32 %23, 3
  %28 = fcmp fast ole float %24, -1.000000e+00
  %29 = fcmp fast ole float %25, -1.000000e+00
  %30 = fcmp fast ole float %26, -1.000000e+00
  %31 = fcmp fast ole float %27, -1.000000e+00
  %32 = select i1 %28, float -1.000000e+00, float %24
  %33 = select i1 %29, float -1.000000e+00, float %25
  %34 = select i1 %30, float -1.000000e+00, float %26
  %35 = select i1 %31, float -1.000000e+00, float %27
  %36 = and i1 %28, %29
  %37 = and i1 %30, %36
  %38 = and i1 %31, %37
  %39 = call float @dx.op.binary.f32(i32 36, float %25, float %26)  ; FMin(a,b)
  %40 = call float @dx.op.binary.f32(i32 36, float %24, float %39)  ; FMin(a,b)
  %41 = call float @dx.op.binary.f32(i32 36, float %40, float %27)  ; FMin(a,b)
  %42 = call float @dx.op.binary.f32(i32 35, float %33, float %34)  ; FMax(a,b)
  %43 = call float @dx.op.binary.f32(i32 35, float %32, float %42)  ; FMax(a,b)
  %44 = call float @dx.op.binary.f32(i32 35, float %43, float %35)  ; FMax(a,b)
  %45 = select i1 %38, float %41, float %44
  %46 = and i32 %8, 2147483647
  %47 = and i32 %9, 2147483647
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %46, i32 %47, i32 undef, float %45, float %45, float %45, float %45, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %48 = mul i32 %10, 8
  %49 = add i32 %11, %48
  %50 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedFloatZMax@@3PAY07$$CAMA.1dim", i32 0, i32 %49
  store float %45, float addrspace(3)* %50, align 4, !tbaa !20
  %51 = mul i32 %10, 8
  %52 = add i32 %11, %51
  %53 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedFloatZMin@@3PAY07$$CAMA.1dim", i32 0, i32 %52
  store float 0.000000e+00, float addrspace(3)* %53, align 4, !tbaa !20
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %54 = xor i32 %11, 1
  %55 = xor i32 %10, 1
  %56 = mul i32 %55, 8
  %57 = add i32 %54, %56
  %58 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedFloatZMax@@3PAY07$$CAMA.1dim", i32 0, i32 %57
  %59 = load float, float addrspace(3)* %58, align 4, !tbaa !20
  %60 = mul i32 %10, 8
  %61 = add i32 %54, %60
  %62 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedFloatZMax@@3PAY07$$CAMA.1dim", i32 0, i32 %61
  %63 = load float, float addrspace(3)* %62, align 4, !tbaa !20
  %64 = mul i32 %55, 8
  %65 = add i32 %11, %64
  %66 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedFloatZMax@@3PAY07$$CAMA.1dim", i32 0, i32 %65
  %67 = load float, float addrspace(3)* %66, align 4, !tbaa !20
  %68 = fcmp fast ole float %45, -1.000000e+00
  %69 = fcmp fast ole float %67, -1.000000e+00
  %70 = fcmp fast ole float %63, -1.000000e+00
  %71 = fcmp fast ole float %59, -1.000000e+00
  %72 = select i1 %68, float -1.000000e+00, float %45
  %73 = select i1 %69, float -1.000000e+00, float %67
  %74 = select i1 %70, float -1.000000e+00, float %63
  %75 = select i1 %71, float -1.000000e+00, float %59
  %76 = and i1 %68, %69
  %77 = and i1 %70, %76
  %78 = and i1 %71, %77
  %79 = call float @dx.op.binary.f32(i32 36, float %67, float %63)  ; FMin(a,b)
  %80 = call float @dx.op.binary.f32(i32 36, float %45, float %79)  ; FMin(a,b)
  %81 = call float @dx.op.binary.f32(i32 36, float %80, float %59)  ; FMin(a,b)
  %82 = call float @dx.op.binary.f32(i32 35, float %73, float %74)  ; FMax(a,b)
  %83 = call float @dx.op.binary.f32(i32 35, float %72, float %82)  ; FMax(a,b)
  %84 = call float @dx.op.binary.f32(i32 35, float %83, float %75)  ; FMax(a,b)
  %85 = select i1 %78, float %81, float %84
  %86 = mul i32 %55, 8
  %87 = add i32 %54, %86
  %88 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedFloatZMin@@3PAY07$$CAMA.1dim", i32 0, i32 %87
  %89 = load float, float addrspace(3)* %88, align 4, !tbaa !20
  %90 = mul i32 %10, 8
  %91 = add i32 %54, %90
  %92 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedFloatZMin@@3PAY07$$CAMA.1dim", i32 0, i32 %91
  %93 = load float, float addrspace(3)* %92, align 4, !tbaa !20
  %94 = mul i32 %55, 8
  %95 = add i32 %11, %94
  %96 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedFloatZMin@@3PAY07$$CAMA.1dim", i32 0, i32 %95
  %97 = load float, float addrspace(3)* %96, align 4, !tbaa !20
  %98 = fcmp fast ole float %97, -1.000000e+00
  %99 = fcmp fast ole float %93, -1.000000e+00
  %100 = fcmp fast ole float %89, -1.000000e+00
  %101 = select i1 %98, float 0x47EFFFFFE0000000, float %97
  %102 = select i1 %99, float 0x47EFFFFFE0000000, float %93
  %103 = select i1 %100, float 0x47EFFFFFE0000000, float %89
  %104 = call float @dx.op.binary.f32(i32 36, float %101, float %102)  ; FMin(a,b)
  %105 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %104)  ; FMin(a,b)
  %106 = call float @dx.op.binary.f32(i32 36, float %105, float %103)  ; FMin(a,b)
  %107 = lshr i32 %46, 1
  %108 = lshr i32 %47, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %107, i32 %108, i32 undef, float %85, float %85, float %85, float %85, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %109 = call i32 @dx.op.waveGetLaneCount(i32 112)  ; WaveGetLaneCount()
  store float %85, float addrspace(3)* %50, align 4, !tbaa !20
  store float %106, float addrspace(3)* %53, align 4, !tbaa !20
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %110 = xor i32 %11, 2
  %111 = xor i32 %10, 2
  %112 = mul i32 %111, 8
  %113 = add i32 %110, %112
  %114 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedFloatZMax@@3PAY07$$CAMA.1dim", i32 0, i32 %113
  %115 = load float, float addrspace(3)* %114, align 4, !tbaa !20
  %116 = mul i32 %10, 8
  %117 = add i32 %110, %116
  %118 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedFloatZMax@@3PAY07$$CAMA.1dim", i32 0, i32 %117
  %119 = load float, float addrspace(3)* %118, align 4, !tbaa !20
  %120 = mul i32 %111, 8
  %121 = add i32 %11, %120
  %122 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedFloatZMax@@3PAY07$$CAMA.1dim", i32 0, i32 %121
  %123 = load float, float addrspace(3)* %122, align 4, !tbaa !20
  %124 = fcmp fast ole float %85, -1.000000e+00
  %125 = fcmp fast ole float %123, -1.000000e+00
  %126 = fcmp fast ole float %119, -1.000000e+00
  %127 = fcmp fast ole float %115, -1.000000e+00
  %128 = select i1 %124, float -1.000000e+00, float %85
  %129 = select i1 %125, float -1.000000e+00, float %123
  %130 = select i1 %126, float -1.000000e+00, float %119
  %131 = select i1 %127, float -1.000000e+00, float %115
  %132 = and i1 %124, %125
  %133 = and i1 %126, %132
  %134 = and i1 %127, %133
  %135 = call float @dx.op.binary.f32(i32 36, float %123, float %119)  ; FMin(a,b)
  %136 = call float @dx.op.binary.f32(i32 36, float %85, float %135)  ; FMin(a,b)
  %137 = call float @dx.op.binary.f32(i32 36, float %136, float %115)  ; FMin(a,b)
  %138 = call float @dx.op.binary.f32(i32 35, float %129, float %130)  ; FMax(a,b)
  %139 = call float @dx.op.binary.f32(i32 35, float %128, float %138)  ; FMax(a,b)
  %140 = call float @dx.op.binary.f32(i32 35, float %139, float %131)  ; FMax(a,b)
  %141 = select i1 %134, float %137, float %140
  %142 = mul i32 %111, 8
  %143 = add i32 %110, %142
  %144 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedFloatZMin@@3PAY07$$CAMA.1dim", i32 0, i32 %143
  %145 = load float, float addrspace(3)* %144, align 4, !tbaa !20
  %146 = mul i32 %10, 8
  %147 = add i32 %110, %146
  %148 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedFloatZMin@@3PAY07$$CAMA.1dim", i32 0, i32 %147
  %149 = load float, float addrspace(3)* %148, align 4, !tbaa !20
  %150 = mul i32 %111, 8
  %151 = add i32 %11, %150
  %152 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedFloatZMin@@3PAY07$$CAMA.1dim", i32 0, i32 %151
  %153 = load float, float addrspace(3)* %152, align 4, !tbaa !20
  %154 = fcmp fast ole float %106, -1.000000e+00
  %155 = fcmp fast ole float %153, -1.000000e+00
  %156 = fcmp fast ole float %149, -1.000000e+00
  %157 = fcmp fast ole float %145, -1.000000e+00
  %158 = select i1 %154, float 0x47EFFFFFE0000000, float %106
  %159 = select i1 %155, float 0x47EFFFFFE0000000, float %153
  %160 = select i1 %156, float 0x47EFFFFFE0000000, float %149
  %161 = select i1 %157, float 0x47EFFFFFE0000000, float %145
  %162 = and i1 %154, %155
  %163 = and i1 %156, %162
  %164 = and i1 %157, %163
  %165 = call float @dx.op.binary.f32(i32 35, float %153, float %149)  ; FMax(a,b)
  %166 = call float @dx.op.binary.f32(i32 35, float %106, float %165)  ; FMax(a,b)
  %167 = call float @dx.op.binary.f32(i32 35, float %166, float %145)  ; FMax(a,b)
  %168 = call float @dx.op.binary.f32(i32 36, float %159, float %160)  ; FMin(a,b)
  %169 = call float @dx.op.binary.f32(i32 36, float %158, float %168)  ; FMin(a,b)
  %170 = call float @dx.op.binary.f32(i32 36, float %169, float %161)  ; FMin(a,b)
  %171 = select i1 %164, float %167, float %170
  %172 = lshr i32 %46, 2
  %173 = lshr i32 %47, 2
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %172, i32 %173, i32 undef, float %141, float %141, float %141, float %141, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %174 = icmp eq i32 %109, 16
  br i1 %174, label %175, label %176, !dx.controlflow.hints !24

; <label>:175                                     ; preds = %0
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br label %176

; <label>:176                                     ; preds = %175, %0
  store float %141, float addrspace(3)* %50, align 4, !tbaa !20
  store float %171, float addrspace(3)* %53, align 4, !tbaa !20
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %177 = xor i32 %11, 4
  %178 = xor i32 %10, 4
  %179 = mul i32 %178, 8
  %180 = add i32 %177, %179
  %181 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedFloatZMax@@3PAY07$$CAMA.1dim", i32 0, i32 %180
  %182 = load float, float addrspace(3)* %181, align 4, !tbaa !20
  %183 = mul i32 %10, 8
  %184 = add i32 %177, %183
  %185 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedFloatZMax@@3PAY07$$CAMA.1dim", i32 0, i32 %184
  %186 = load float, float addrspace(3)* %185, align 4, !tbaa !20
  %187 = mul i32 %178, 8
  %188 = add i32 %11, %187
  %189 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedFloatZMax@@3PAY07$$CAMA.1dim", i32 0, i32 %188
  %190 = load float, float addrspace(3)* %189, align 4, !tbaa !20
  %191 = fcmp fast ole float %141, -1.000000e+00
  %192 = fcmp fast ole float %190, -1.000000e+00
  %193 = fcmp fast ole float %186, -1.000000e+00
  %194 = fcmp fast ole float %182, -1.000000e+00
  %195 = select i1 %191, float -1.000000e+00, float %141
  %196 = select i1 %192, float -1.000000e+00, float %190
  %197 = select i1 %193, float -1.000000e+00, float %186
  %198 = select i1 %194, float -1.000000e+00, float %182
  %199 = and i1 %191, %192
  %200 = and i1 %193, %199
  %201 = and i1 %194, %200
  %202 = call float @dx.op.binary.f32(i32 36, float %190, float %186)  ; FMin(a,b)
  %203 = call float @dx.op.binary.f32(i32 36, float %141, float %202)  ; FMin(a,b)
  %204 = call float @dx.op.binary.f32(i32 36, float %203, float %182)  ; FMin(a,b)
  %205 = call float @dx.op.binary.f32(i32 35, float %196, float %197)  ; FMax(a,b)
  %206 = call float @dx.op.binary.f32(i32 35, float %195, float %205)  ; FMax(a,b)
  %207 = call float @dx.op.binary.f32(i32 35, float %206, float %198)  ; FMax(a,b)
  %208 = select i1 %201, float %204, float %207
  %209 = lshr i32 %46, 3
  %210 = lshr i32 %47, 3
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %209, i32 %210, i32 undef, float %208, float %208, float %208, float %208, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!dx.entryPoints = !{!17}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !8, !13, !15}
!5 = !{!6}
!6 = !{i32 0, %"class.Texture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{!9, !10, !11, !12}
!9 = !{i32 0, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!10 = !{i32 1, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!11 = !{i32 2, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!12 = !{i32 3, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 3, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!13 = !{!14}
!14 = !{i32 0, %FloatZDownsampleConsts* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!15 = !{!16}
!16 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!17 = !{void ()* @cs_floatz_downsample_interior_maxonly, !"cs_floatz_downsample_interior_maxonly", null, !4, !18}
!18 = !{i32 0, i64 524544, i32 4, !19}
!19 = !{i32 8, i32 8, i32 1}
!20 = !{!21, !21, i64 0}
!21 = !{!"float", !22, i64 0}
!22 = !{!"omnipotent char", !23, i64 0}
!23 = !{!"Simple C/C++ TBAA"}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}

