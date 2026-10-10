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
; shader hash: 063939387a1f5f609e74e408637e4489
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
;   [16 x i8] (type annotation not present)
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
;                                   texture     f32          2d      T0             t6     1
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
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.RWTexture2D<vector<float, 2> >" = type { <2 x float> }
%WaterDownsampleConstants = type { <2 x float>, i32, i32 }
%struct.SamplerState = type { i32 }

@"\01?vpdSharedWaterDepthMaxL0@@3PAY07$$CAMA.1dim" = addrspace(3) global [64 x float] undef, align 4
@"\01?vpdSharedWaterDepthMaxL1@@3PAY03$$CAMA.1dim" = addrspace(3) global [16 x float] undef, align 4
@"\01?vpdSharedWaterDepthMaxL2@@3PAY01$$CAMA.1dim" = addrspace(3) global [4 x float] undef, align 4
@"\01?vpdSharedWaterDepthMinL0@@3PAY07$$CAMA.1dim" = addrspace(3) global [64 x float] undef, align 4
@"\01?vpdSharedWaterDepthMinL1@@3PAY03$$CAMA.1dim" = addrspace(3) global [16 x float] undef, align 4
@"\01?vpdSharedWaterDepthMinL2@@3PAY01$$CAMA.1dim" = addrspace(3) global [4 x float] undef, align 4

define void @cs_water_downsample() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %9 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %10 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %11 = call i32 @dx.op.groupId.i32(i32 94, i32 1)  ; GroupId(component)
  %12 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %13 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %14 = uitofp i32 %8 to float
  %15 = uitofp i32 %9 to float
  %16 = fadd fast float %14, 5.000000e-01
  %17 = fadd fast float %15, 5.000000e-01
  %18 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %19 = extractvalue %dx.types.CBufRet.f32 %18, 0
  %20 = extractvalue %dx.types.CBufRet.f32 %18, 1
  %21 = fmul fast float %19, %16
  %22 = fmul fast float %20, %17
  %23 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %6, float %21, float %22, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %24 = extractvalue %dx.types.ResRet.f32 %23, 0
  %25 = extractvalue %dx.types.ResRet.f32 %23, 1
  %26 = extractvalue %dx.types.ResRet.f32 %23, 2
  %27 = extractvalue %dx.types.ResRet.f32 %23, 3
  %28 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %6, float %21, float %22, float undef, float undef, i32 0, i32 0, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %29 = extractvalue %dx.types.ResRet.f32 %28, 0
  %30 = extractvalue %dx.types.ResRet.f32 %28, 1
  %31 = extractvalue %dx.types.ResRet.f32 %28, 2
  %32 = extractvalue %dx.types.ResRet.f32 %28, 3
  %33 = call float @dx.op.binary.f32(i32 35, float %25, float %26)  ; FMax(a,b)
  %34 = call float @dx.op.binary.f32(i32 35, float %24, float %33)  ; FMax(a,b)
  %35 = call float @dx.op.binary.f32(i32 35, float %34, float %27)  ; FMax(a,b)
  %36 = call float @dx.op.binary.f32(i32 36, float %30, float %31)  ; FMin(a,b)
  %37 = call float @dx.op.binary.f32(i32 36, float %29, float %36)  ; FMin(a,b)
  %38 = call float @dx.op.binary.f32(i32 36, float %37, float %32)  ; FMin(a,b)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %8, i32 %9, i32 undef, float %35, float %38, float %35, float %35, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %39 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %40 = extractvalue %dx.types.CBufRet.i32 %39, 2
  %41 = icmp ult i32 %40, 2
  br i1 %41, label %214, label %42, !dx.controlflow.hints !20

; <label>:42                                      ; preds = %0
  %43 = mul i32 %12, 8
  %44 = add i32 %13, %43
  %45 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?vpdSharedWaterDepthMaxL0@@3PAY07$$CAMA.1dim", i32 0, i32 %44
  store float %35, float addrspace(3)* %45, align 4, !tbaa !21
  %46 = mul i32 %12, 8
  %47 = add i32 %13, %46
  %48 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?vpdSharedWaterDepthMinL0@@3PAY07$$CAMA.1dim", i32 0, i32 %47
  store float %38, float addrspace(3)* %48, align 4, !tbaa !21
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %49 = or i32 %13, %12
  %50 = icmp ult i32 %49, 4
  %51 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %52 = extractvalue %dx.types.CBufRet.i32 %51, 2
  %53 = icmp ult i32 %52, 3
  br i1 %50, label %54, label %108, !dx.controlflow.hints !25

; <label>:54                                      ; preds = %42
  %55 = shl i32 %13, 1
  %56 = shl i32 %12, 1
  %57 = or i32 %56, 1
  %58 = mul i32 %57, 8
  %59 = add i32 %55, %58
  %60 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?vpdSharedWaterDepthMaxL0@@3PAY07$$CAMA.1dim", i32 0, i32 %59
  %61 = load float, float addrspace(3)* %60, align 4, !tbaa !21
  %62 = mul i32 %56, 8
  %63 = add i32 %55, %62
  %64 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?vpdSharedWaterDepthMaxL0@@3PAY07$$CAMA.1dim", i32 0, i32 %63
  %65 = load float, float addrspace(3)* %64, align 4, !tbaa !21
  %66 = or i32 %55, 1
  %67 = mul i32 %57, 8
  %68 = add i32 %66, %67
  %69 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?vpdSharedWaterDepthMaxL0@@3PAY07$$CAMA.1dim", i32 0, i32 %68
  %70 = load float, float addrspace(3)* %69, align 4, !tbaa !21
  %71 = mul i32 %56, 8
  %72 = add i32 %66, %71
  %73 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?vpdSharedWaterDepthMaxL0@@3PAY07$$CAMA.1dim", i32 0, i32 %72
  %74 = load float, float addrspace(3)* %73, align 4, !tbaa !21
  %75 = mul i32 %57, 8
  %76 = add i32 %55, %75
  %77 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?vpdSharedWaterDepthMinL0@@3PAY07$$CAMA.1dim", i32 0, i32 %76
  %78 = load float, float addrspace(3)* %77, align 4, !tbaa !21
  %79 = mul i32 %56, 8
  %80 = add i32 %55, %79
  %81 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?vpdSharedWaterDepthMinL0@@3PAY07$$CAMA.1dim", i32 0, i32 %80
  %82 = load float, float addrspace(3)* %81, align 4, !tbaa !21
  %83 = mul i32 %57, 8
  %84 = add i32 %66, %83
  %85 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?vpdSharedWaterDepthMinL0@@3PAY07$$CAMA.1dim", i32 0, i32 %84
  %86 = load float, float addrspace(3)* %85, align 4, !tbaa !21
  %87 = mul i32 %56, 8
  %88 = add i32 %66, %87
  %89 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?vpdSharedWaterDepthMinL0@@3PAY07$$CAMA.1dim", i32 0, i32 %88
  %90 = load float, float addrspace(3)* %89, align 4, !tbaa !21
  %91 = call float @dx.op.binary.f32(i32 35, float %65, float %70)  ; FMax(a,b)
  %92 = call float @dx.op.binary.f32(i32 35, float %61, float %91)  ; FMax(a,b)
  %93 = call float @dx.op.binary.f32(i32 35, float %92, float %74)  ; FMax(a,b)
  %94 = call float @dx.op.binary.f32(i32 36, float %82, float %86)  ; FMin(a,b)
  %95 = call float @dx.op.binary.f32(i32 36, float %78, float %94)  ; FMin(a,b)
  %96 = call float @dx.op.binary.f32(i32 36, float %95, float %90)  ; FMin(a,b)
  %97 = shl i32 %10, 2
  %98 = shl i32 %11, 2
  %99 = add i32 %12, %97
  %100 = add i32 %13, %98
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %99, i32 %100, i32 undef, float %93, float %96, float %93, float %93, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br i1 %53, label %214, label %101, !dx.controlflow.hints !26

; <label>:101                                     ; preds = %54
  %102 = mul i32 %12, 4
  %103 = add i32 %13, %102
  %104 = getelementptr [16 x float], [16 x float] addrspace(3)* @"\01?vpdSharedWaterDepthMaxL1@@3PAY03$$CAMA.1dim", i32 0, i32 %103
  store float %93, float addrspace(3)* %104, align 4, !tbaa !21
  %105 = mul i32 %12, 4
  %106 = add i32 %13, %105
  %107 = getelementptr [16 x float], [16 x float] addrspace(3)* @"\01?vpdSharedWaterDepthMinL1@@3PAY03$$CAMA.1dim", i32 0, i32 %106
  store float %96, float addrspace(3)* %107, align 4, !tbaa !21
  br label %109

; <label>:108                                     ; preds = %42
  br i1 %53, label %214, label %109, !dx.controlflow.hints !27

; <label>:109                                     ; preds = %108, %101
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %110 = icmp ult i32 %49, 2
  %111 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %112 = extractvalue %dx.types.CBufRet.i32 %111, 2
  %113 = icmp ult i32 %112, 4
  br i1 %110, label %114, label %168, !dx.controlflow.hints !28

; <label>:114                                     ; preds = %109
  %115 = shl i32 %13, 1
  %116 = shl i32 %12, 1
  %117 = or i32 %116, 1
  %118 = mul i32 %117, 4
  %119 = add i32 %115, %118
  %120 = getelementptr [16 x float], [16 x float] addrspace(3)* @"\01?vpdSharedWaterDepthMaxL1@@3PAY03$$CAMA.1dim", i32 0, i32 %119
  %121 = load float, float addrspace(3)* %120, align 4, !tbaa !21
  %122 = mul i32 %116, 4
  %123 = add i32 %115, %122
  %124 = getelementptr [16 x float], [16 x float] addrspace(3)* @"\01?vpdSharedWaterDepthMaxL1@@3PAY03$$CAMA.1dim", i32 0, i32 %123
  %125 = load float, float addrspace(3)* %124, align 4, !tbaa !21
  %126 = or i32 %115, 1
  %127 = mul i32 %117, 4
  %128 = add i32 %126, %127
  %129 = getelementptr [16 x float], [16 x float] addrspace(3)* @"\01?vpdSharedWaterDepthMaxL1@@3PAY03$$CAMA.1dim", i32 0, i32 %128
  %130 = load float, float addrspace(3)* %129, align 4, !tbaa !21
  %131 = mul i32 %116, 4
  %132 = add i32 %126, %131
  %133 = getelementptr [16 x float], [16 x float] addrspace(3)* @"\01?vpdSharedWaterDepthMaxL1@@3PAY03$$CAMA.1dim", i32 0, i32 %132
  %134 = load float, float addrspace(3)* %133, align 4, !tbaa !21
  %135 = mul i32 %117, 4
  %136 = add i32 %115, %135
  %137 = getelementptr [16 x float], [16 x float] addrspace(3)* @"\01?vpdSharedWaterDepthMinL1@@3PAY03$$CAMA.1dim", i32 0, i32 %136
  %138 = load float, float addrspace(3)* %137, align 4, !tbaa !21
  %139 = mul i32 %116, 4
  %140 = add i32 %115, %139
  %141 = getelementptr [16 x float], [16 x float] addrspace(3)* @"\01?vpdSharedWaterDepthMinL1@@3PAY03$$CAMA.1dim", i32 0, i32 %140
  %142 = load float, float addrspace(3)* %141, align 4, !tbaa !21
  %143 = mul i32 %117, 4
  %144 = add i32 %126, %143
  %145 = getelementptr [16 x float], [16 x float] addrspace(3)* @"\01?vpdSharedWaterDepthMinL1@@3PAY03$$CAMA.1dim", i32 0, i32 %144
  %146 = load float, float addrspace(3)* %145, align 4, !tbaa !21
  %147 = mul i32 %116, 4
  %148 = add i32 %126, %147
  %149 = getelementptr [16 x float], [16 x float] addrspace(3)* @"\01?vpdSharedWaterDepthMinL1@@3PAY03$$CAMA.1dim", i32 0, i32 %148
  %150 = load float, float addrspace(3)* %149, align 4, !tbaa !21
  %151 = call float @dx.op.binary.f32(i32 35, float %125, float %130)  ; FMax(a,b)
  %152 = call float @dx.op.binary.f32(i32 35, float %121, float %151)  ; FMax(a,b)
  %153 = call float @dx.op.binary.f32(i32 35, float %152, float %134)  ; FMax(a,b)
  %154 = call float @dx.op.binary.f32(i32 36, float %142, float %146)  ; FMin(a,b)
  %155 = call float @dx.op.binary.f32(i32 36, float %138, float %154)  ; FMin(a,b)
  %156 = call float @dx.op.binary.f32(i32 36, float %155, float %150)  ; FMin(a,b)
  %157 = shl i32 %10, 1
  %158 = shl i32 %11, 1
  %159 = add i32 %12, %157
  %160 = add i32 %13, %158
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %159, i32 %160, i32 undef, float %153, float %156, float %153, float %153, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br i1 %113, label %214, label %161, !dx.controlflow.hints !29

; <label>:161                                     ; preds = %114
  %162 = mul i32 %12, 2
  %163 = add i32 %13, %162
  %164 = getelementptr [4 x float], [4 x float] addrspace(3)* @"\01?vpdSharedWaterDepthMaxL2@@3PAY01$$CAMA.1dim", i32 0, i32 %163
  store float %153, float addrspace(3)* %164, align 4, !tbaa !21
  %165 = mul i32 %12, 2
  %166 = add i32 %13, %165
  %167 = getelementptr [4 x float], [4 x float] addrspace(3)* @"\01?vpdSharedWaterDepthMinL2@@3PAY01$$CAMA.1dim", i32 0, i32 %166
  store float %156, float addrspace(3)* %167, align 4, !tbaa !21
  br label %169

; <label>:168                                     ; preds = %109
  br i1 %113, label %214, label %169, !dx.controlflow.hints !30

; <label>:169                                     ; preds = %168, %161
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %170 = icmp eq i32 %49, 0
  br i1 %170, label %171, label %214, !dx.controlflow.hints !31

; <label>:171                                     ; preds = %169
  %172 = shl i32 %13, 1
  %173 = shl i32 %12, 1
  %174 = or i32 %173, 1
  %175 = mul i32 %174, 2
  %176 = add i32 %172, %175
  %177 = getelementptr [4 x float], [4 x float] addrspace(3)* @"\01?vpdSharedWaterDepthMaxL2@@3PAY01$$CAMA.1dim", i32 0, i32 %176
  %178 = load float, float addrspace(3)* %177, align 4, !tbaa !21
  %179 = mul i32 %173, 2
  %180 = add i32 %172, %179
  %181 = getelementptr [4 x float], [4 x float] addrspace(3)* @"\01?vpdSharedWaterDepthMaxL2@@3PAY01$$CAMA.1dim", i32 0, i32 %180
  %182 = load float, float addrspace(3)* %181, align 4, !tbaa !21
  %183 = or i32 %172, 1
  %184 = mul i32 %174, 2
  %185 = add i32 %183, %184
  %186 = getelementptr [4 x float], [4 x float] addrspace(3)* @"\01?vpdSharedWaterDepthMaxL2@@3PAY01$$CAMA.1dim", i32 0, i32 %185
  %187 = load float, float addrspace(3)* %186, align 4, !tbaa !21
  %188 = mul i32 %173, 2
  %189 = add i32 %183, %188
  %190 = getelementptr [4 x float], [4 x float] addrspace(3)* @"\01?vpdSharedWaterDepthMaxL2@@3PAY01$$CAMA.1dim", i32 0, i32 %189
  %191 = load float, float addrspace(3)* %190, align 4, !tbaa !21
  %192 = mul i32 %174, 2
  %193 = add i32 %172, %192
  %194 = getelementptr [4 x float], [4 x float] addrspace(3)* @"\01?vpdSharedWaterDepthMinL2@@3PAY01$$CAMA.1dim", i32 0, i32 %193
  %195 = load float, float addrspace(3)* %194, align 4, !tbaa !21
  %196 = mul i32 %173, 2
  %197 = add i32 %172, %196
  %198 = getelementptr [4 x float], [4 x float] addrspace(3)* @"\01?vpdSharedWaterDepthMinL2@@3PAY01$$CAMA.1dim", i32 0, i32 %197
  %199 = load float, float addrspace(3)* %198, align 4, !tbaa !21
  %200 = mul i32 %174, 2
  %201 = add i32 %183, %200
  %202 = getelementptr [4 x float], [4 x float] addrspace(3)* @"\01?vpdSharedWaterDepthMinL2@@3PAY01$$CAMA.1dim", i32 0, i32 %201
  %203 = load float, float addrspace(3)* %202, align 4, !tbaa !21
  %204 = mul i32 %173, 2
  %205 = add i32 %183, %204
  %206 = getelementptr [4 x float], [4 x float] addrspace(3)* @"\01?vpdSharedWaterDepthMinL2@@3PAY01$$CAMA.1dim", i32 0, i32 %205
  %207 = load float, float addrspace(3)* %206, align 4, !tbaa !21
  %208 = call float @dx.op.binary.f32(i32 35, float %182, float %187)  ; FMax(a,b)
  %209 = call float @dx.op.binary.f32(i32 35, float %178, float %208)  ; FMax(a,b)
  %210 = call float @dx.op.binary.f32(i32 35, float %209, float %191)  ; FMax(a,b)
  %211 = call float @dx.op.binary.f32(i32 36, float %199, float %203)  ; FMin(a,b)
  %212 = call float @dx.op.binary.f32(i32 36, float %195, float %211)  ; FMin(a,b)
  %213 = call float @dx.op.binary.f32(i32 36, float %212, float %207)  ; FMin(a,b)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %10, i32 %11, i32 undef, float %210, float %213, float %210, float %210, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %214

; <label>:214                                     ; preds = %171, %169, %168, %114, %108, %54, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #3

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

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
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 6, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{!9, !10, !11, !12}
!9 = !{i32 0, %"class.RWTexture2D<vector<float, 2> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!10 = !{i32 1, %"class.RWTexture2D<vector<float, 2> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!11 = !{i32 2, %"class.RWTexture2D<vector<float, 2> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!12 = !{i32 3, %"class.RWTexture2D<vector<float, 2> >"* undef, !"", i32 0, i32 3, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!13 = !{!14}
!14 = !{i32 0, %WaterDownsampleConstants* undef, !"", i32 0, i32 0, i32 1, i32 16, null}
!15 = !{!16}
!16 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!17 = !{void ()* @cs_water_downsample, !"cs_water_downsample", null, !4, !18}
!18 = !{i32 0, i64 256, i32 4, !19}
!19 = !{i32 8, i32 8, i32 1}
!20 = distinct !{!20, !"dx.controlflow.hints", i32 2}
!21 = !{!22, !22, i64 0}
!22 = !{!"float", !23, i64 0}
!23 = !{!"omnipotent char", !24, i64 0}
!24 = !{!"Simple C/C++ TBAA"}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}

