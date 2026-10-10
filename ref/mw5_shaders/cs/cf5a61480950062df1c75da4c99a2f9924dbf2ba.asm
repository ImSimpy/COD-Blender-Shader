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
; shader hash: 88d3e1f5dd117f8081ec860d2d76475e
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
;                                   cbuffer      NA          NA     CB0            cb2     1
;                                   sampler      NA          NA      S0             s2     1
;                                   texture     u32          2d      T0             t3     1
;                                   texture     f32          2d      T1            t36     1
;                                       UAV     f32          2d      U0             u0     1
;                                       UAV     f32          2d      U1             u1     1
;                                       UAV     f32          2d      U2             u2     1
;                                       UAV     f32          2d      U3             u3     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture2D<vector<unsigned int, 4> >" = type { <4 x i32>, %"class.Texture2D<vector<unsigned int, 4> >::mips_type" }
%"class.Texture2D<vector<unsigned int, 4> >::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.RWTexture2D<vector<float, 4> >" = type { <4 x float> }
%VolumetricDownsampleParticlesConstants = type { <2 x float>, i32, i32, <2 x float>, i32, i32, i32, i32, i32, i32 }
%struct.SamplerState = type { i32 }

@"\01?vpdSharedRedL0@@3PAY07$$CAMA.1dim" = addrspace(3) global [64 x float] undef, align 4
@"\01?vpdSharedGreenL0@@3PAY07$$CAMA.1dim" = addrspace(3) global [64 x float] undef, align 4
@"\01?vpdSharedBlueL0@@3PAY07$$CAMA.1dim" = addrspace(3) global [64 x float] undef, align 4
@"\01?vpdSharedRedL1@@3PAY03$$CAMA.1dim" = addrspace(3) global [16 x float] undef, align 4
@"\01?vpdSharedGreenL1@@3PAY03$$CAMA.1dim" = addrspace(3) global [16 x float] undef, align 4
@"\01?vpdSharedBlueL1@@3PAY03$$CAMA.1dim" = addrspace(3) global [16 x float] undef, align 4
@"\01?vpdSharedRedL2@@3PAY01$$CAMA.1dim" = addrspace(3) global [4 x float] undef, align 4
@"\01?vpdSharedGreenL2@@3PAY01$$CAMA.1dim" = addrspace(3) global [4 x float] undef, align 4
@"\01?vpdSharedBlueL2@@3PAY01$$CAMA.1dim" = addrspace(3) global [4 x float] undef, align 4

define void @cs_volumetric_downsample_particles_mips() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 36, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %10 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %11 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %12 = call i32 @dx.op.groupId.i32(i32 94, i32 1)  ; GroupId(component)
  %13 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %14 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %15 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %16 = extractvalue %dx.types.CBufRet.i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %44, !dx.controlflow.hints !22

; <label>:18                                      ; preds = %0
  %19 = lshr i32 %9, 2
  %20 = lshr i32 %9, 5
  %21 = lshr i32 %10, 5
  %22 = and i32 %19, 7
  %23 = shl i32 %10, 1
  %24 = and i32 %23, 56
  %25 = or i32 %24, %22
  %26 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %6, i32 0, i32 %20, i32 %21, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %27 = extractvalue %dx.types.ResRet.i32 %26, 0
  %28 = extractvalue %dx.types.ResRet.i32 %26, 1
  %29 = extractvalue %dx.types.ResRet.i32 %26, 2
  %30 = extractvalue %dx.types.ResRet.i32 %26, 3
  %31 = icmp ugt i32 %25, 31
  %32 = and i32 %25, 31
  %33 = shl i32 1, %32
  %34 = select i1 %31, i32 %27, i32 %28
  %35 = and i32 %34, %33
  %36 = select i1 %31, i32 %29, i32 %30
  %37 = and i32 %36, %33
  %38 = icmp ne i32 %35, 0
  %39 = icmp ne i32 %37, 0
  %40 = zext i1 %38 to i32
  %41 = select i1 %39, i32 2, i32 0
  %42 = or i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br label %44

; <label>:44                                      ; preds = %18, %0
  %45 = phi i1 [ %43, %18 ], [ true, %0 ]
  br i1 %45, label %46, label %71, !dx.controlflow.hints !23

; <label>:46                                      ; preds = %44
  %47 = uitofp i32 %9 to float
  %48 = uitofp i32 %10 to float
  %49 = fadd fast float %47, 5.000000e-01
  %50 = fadd fast float %48, 5.000000e-01
  %51 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %52 = extractvalue %dx.types.CBufRet.f32 %51, 0
  %53 = extractvalue %dx.types.CBufRet.f32 %51, 1
  %54 = fmul fast float %52, %49
  %55 = fmul fast float %53, %50
  %56 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %7, float %54, float %55, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %57 = extractvalue %dx.types.ResRet.f32 %56, 0
  %58 = extractvalue %dx.types.ResRet.f32 %56, 1
  %59 = extractvalue %dx.types.ResRet.f32 %56, 2
  %60 = extractvalue %dx.types.ResRet.f32 %56, 3
  %61 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %7, float %54, float %55, float undef, float undef, i32 0, i32 0, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %62 = extractvalue %dx.types.ResRet.f32 %61, 0
  %63 = extractvalue %dx.types.ResRet.f32 %61, 1
  %64 = extractvalue %dx.types.ResRet.f32 %61, 2
  %65 = extractvalue %dx.types.ResRet.f32 %61, 3
  %66 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %7, float %54, float %55, float undef, float undef, i32 0, i32 0, i32 2)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %67 = extractvalue %dx.types.ResRet.f32 %66, 0
  %68 = extractvalue %dx.types.ResRet.f32 %66, 1
  %69 = extractvalue %dx.types.ResRet.f32 %66, 2
  %70 = extractvalue %dx.types.ResRet.f32 %66, 3
  br label %71

; <label>:71                                      ; preds = %46, %44
  %72 = phi float [ %57, %46 ], [ 0.000000e+00, %44 ]
  %73 = phi float [ %58, %46 ], [ 0.000000e+00, %44 ]
  %74 = phi float [ %59, %46 ], [ 0.000000e+00, %44 ]
  %75 = phi float [ %60, %46 ], [ 0.000000e+00, %44 ]
  %76 = phi float [ %62, %46 ], [ 0.000000e+00, %44 ]
  %77 = phi float [ %63, %46 ], [ 0.000000e+00, %44 ]
  %78 = phi float [ %64, %46 ], [ 0.000000e+00, %44 ]
  %79 = phi float [ %65, %46 ], [ 0.000000e+00, %44 ]
  %80 = phi float [ %67, %46 ], [ 0.000000e+00, %44 ]
  %81 = phi float [ %68, %46 ], [ 0.000000e+00, %44 ]
  %82 = phi float [ %69, %46 ], [ 0.000000e+00, %44 ]
  %83 = phi float [ %70, %46 ], [ 0.000000e+00, %44 ]
  %84 = fadd fast float %73, %72
  %85 = fadd fast float %84, %74
  %86 = fadd fast float %85, %75
  %87 = fmul fast float %86, 2.500000e-01
  %88 = call float @dx.op.binary.f32(i32 35, float %77, float %78)  ; FMax(a,b)
  %89 = call float @dx.op.binary.f32(i32 35, float %76, float %88)  ; FMax(a,b)
  %90 = call float @dx.op.binary.f32(i32 35, float %89, float %79)  ; FMax(a,b)
  %91 = call float @dx.op.binary.f32(i32 36, float %81, float %82)  ; FMin(a,b)
  %92 = call float @dx.op.binary.f32(i32 36, float %80, float %91)  ; FMin(a,b)
  %93 = call float @dx.op.binary.f32(i32 36, float %92, float %83)  ; FMin(a,b)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %9, i32 %10, i32 undef, float %87, float %90, float %93, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %94 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %95 = extractvalue %dx.types.CBufRet.i32 %94, 0
  %96 = icmp slt i32 %95, 2
  br i1 %96, label %338, label %97, !dx.controlflow.hints !24

; <label>:97                                      ; preds = %71
  %98 = mul i32 %13, 8
  %99 = add i32 %14, %98
  %100 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?vpdSharedRedL0@@3PAY07$$CAMA.1dim", i32 0, i32 %99
  store float %87, float addrspace(3)* %100, align 4, !tbaa !25
  %101 = mul i32 %13, 8
  %102 = add i32 %14, %101
  %103 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?vpdSharedGreenL0@@3PAY07$$CAMA.1dim", i32 0, i32 %102
  store float %90, float addrspace(3)* %103, align 4, !tbaa !25
  %104 = mul i32 %13, 8
  %105 = add i32 %14, %104
  %106 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?vpdSharedBlueL0@@3PAY07$$CAMA.1dim", i32 0, i32 %105
  store float %93, float addrspace(3)* %106, align 4, !tbaa !25
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %107 = or i32 %14, %13
  %108 = icmp ult i32 %107, 4
  %109 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %110 = extractvalue %dx.types.CBufRet.i32 %109, 0
  %111 = icmp slt i32 %110, 3
  br i1 %108, label %112, label %189, !dx.controlflow.hints !29

; <label>:112                                     ; preds = %97
  %113 = shl i32 %14, 1
  %114 = shl i32 %13, 1
  %115 = or i32 %114, 1
  %116 = mul i32 %115, 8
  %117 = add i32 %113, %116
  %118 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?vpdSharedRedL0@@3PAY07$$CAMA.1dim", i32 0, i32 %117
  %119 = load float, float addrspace(3)* %118, align 4, !tbaa !25
  %120 = mul i32 %114, 8
  %121 = add i32 %113, %120
  %122 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?vpdSharedRedL0@@3PAY07$$CAMA.1dim", i32 0, i32 %121
  %123 = load float, float addrspace(3)* %122, align 4, !tbaa !25
  %124 = or i32 %113, 1
  %125 = mul i32 %115, 8
  %126 = add i32 %124, %125
  %127 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?vpdSharedRedL0@@3PAY07$$CAMA.1dim", i32 0, i32 %126
  %128 = load float, float addrspace(3)* %127, align 4, !tbaa !25
  %129 = mul i32 %114, 8
  %130 = add i32 %124, %129
  %131 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?vpdSharedRedL0@@3PAY07$$CAMA.1dim", i32 0, i32 %130
  %132 = load float, float addrspace(3)* %131, align 4, !tbaa !25
  %133 = mul i32 %115, 8
  %134 = add i32 %113, %133
  %135 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?vpdSharedGreenL0@@3PAY07$$CAMA.1dim", i32 0, i32 %134
  %136 = load float, float addrspace(3)* %135, align 4, !tbaa !25
  %137 = mul i32 %114, 8
  %138 = add i32 %113, %137
  %139 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?vpdSharedGreenL0@@3PAY07$$CAMA.1dim", i32 0, i32 %138
  %140 = load float, float addrspace(3)* %139, align 4, !tbaa !25
  %141 = mul i32 %115, 8
  %142 = add i32 %124, %141
  %143 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?vpdSharedGreenL0@@3PAY07$$CAMA.1dim", i32 0, i32 %142
  %144 = load float, float addrspace(3)* %143, align 4, !tbaa !25
  %145 = mul i32 %114, 8
  %146 = add i32 %124, %145
  %147 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?vpdSharedGreenL0@@3PAY07$$CAMA.1dim", i32 0, i32 %146
  %148 = load float, float addrspace(3)* %147, align 4, !tbaa !25
  %149 = mul i32 %115, 8
  %150 = add i32 %113, %149
  %151 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?vpdSharedBlueL0@@3PAY07$$CAMA.1dim", i32 0, i32 %150
  %152 = load float, float addrspace(3)* %151, align 4, !tbaa !25
  %153 = mul i32 %114, 8
  %154 = add i32 %113, %153
  %155 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?vpdSharedBlueL0@@3PAY07$$CAMA.1dim", i32 0, i32 %154
  %156 = load float, float addrspace(3)* %155, align 4, !tbaa !25
  %157 = mul i32 %115, 8
  %158 = add i32 %124, %157
  %159 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?vpdSharedBlueL0@@3PAY07$$CAMA.1dim", i32 0, i32 %158
  %160 = load float, float addrspace(3)* %159, align 4, !tbaa !25
  %161 = mul i32 %114, 8
  %162 = add i32 %124, %161
  %163 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?vpdSharedBlueL0@@3PAY07$$CAMA.1dim", i32 0, i32 %162
  %164 = load float, float addrspace(3)* %163, align 4, !tbaa !25
  %165 = fadd fast float %123, %119
  %166 = fadd fast float %165, %128
  %167 = fadd fast float %166, %132
  %168 = fmul fast float %167, 2.500000e-01
  %169 = call float @dx.op.binary.f32(i32 35, float %140, float %144)  ; FMax(a,b)
  %170 = call float @dx.op.binary.f32(i32 35, float %136, float %169)  ; FMax(a,b)
  %171 = call float @dx.op.binary.f32(i32 35, float %170, float %148)  ; FMax(a,b)
  %172 = call float @dx.op.binary.f32(i32 36, float %156, float %160)  ; FMin(a,b)
  %173 = call float @dx.op.binary.f32(i32 36, float %152, float %172)  ; FMin(a,b)
  %174 = call float @dx.op.binary.f32(i32 36, float %173, float %164)  ; FMin(a,b)
  %175 = shl i32 %11, 2
  %176 = shl i32 %12, 2
  %177 = add i32 %13, %175
  %178 = add i32 %14, %176
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %177, i32 %178, i32 undef, float %168, float %171, float %174, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br i1 %111, label %338, label %179, !dx.controlflow.hints !30

; <label>:179                                     ; preds = %112
  %180 = mul i32 %13, 4
  %181 = add i32 %14, %180
  %182 = getelementptr [16 x float], [16 x float] addrspace(3)* @"\01?vpdSharedRedL1@@3PAY03$$CAMA.1dim", i32 0, i32 %181
  store float %168, float addrspace(3)* %182, align 4, !tbaa !25
  %183 = mul i32 %13, 4
  %184 = add i32 %14, %183
  %185 = getelementptr [16 x float], [16 x float] addrspace(3)* @"\01?vpdSharedGreenL1@@3PAY03$$CAMA.1dim", i32 0, i32 %184
  store float %171, float addrspace(3)* %185, align 4, !tbaa !25
  %186 = mul i32 %13, 4
  %187 = add i32 %14, %186
  %188 = getelementptr [16 x float], [16 x float] addrspace(3)* @"\01?vpdSharedBlueL1@@3PAY03$$CAMA.1dim", i32 0, i32 %187
  store float %174, float addrspace(3)* %188, align 4, !tbaa !25
  br label %190

; <label>:189                                     ; preds = %97
  br i1 %111, label %338, label %190, !dx.controlflow.hints !31

; <label>:190                                     ; preds = %189, %179
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %191 = icmp ult i32 %107, 2
  %192 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %193 = extractvalue %dx.types.CBufRet.i32 %192, 0
  %194 = icmp slt i32 %193, 4
  br i1 %191, label %195, label %272, !dx.controlflow.hints !32

; <label>:195                                     ; preds = %190
  %196 = shl i32 %14, 1
  %197 = shl i32 %13, 1
  %198 = or i32 %197, 1
  %199 = mul i32 %198, 4
  %200 = add i32 %196, %199
  %201 = getelementptr [16 x float], [16 x float] addrspace(3)* @"\01?vpdSharedRedL1@@3PAY03$$CAMA.1dim", i32 0, i32 %200
  %202 = load float, float addrspace(3)* %201, align 4, !tbaa !25
  %203 = mul i32 %197, 4
  %204 = add i32 %196, %203
  %205 = getelementptr [16 x float], [16 x float] addrspace(3)* @"\01?vpdSharedRedL1@@3PAY03$$CAMA.1dim", i32 0, i32 %204
  %206 = load float, float addrspace(3)* %205, align 4, !tbaa !25
  %207 = or i32 %196, 1
  %208 = mul i32 %198, 4
  %209 = add i32 %207, %208
  %210 = getelementptr [16 x float], [16 x float] addrspace(3)* @"\01?vpdSharedRedL1@@3PAY03$$CAMA.1dim", i32 0, i32 %209
  %211 = load float, float addrspace(3)* %210, align 4, !tbaa !25
  %212 = mul i32 %197, 4
  %213 = add i32 %207, %212
  %214 = getelementptr [16 x float], [16 x float] addrspace(3)* @"\01?vpdSharedRedL1@@3PAY03$$CAMA.1dim", i32 0, i32 %213
  %215 = load float, float addrspace(3)* %214, align 4, !tbaa !25
  %216 = mul i32 %198, 4
  %217 = add i32 %196, %216
  %218 = getelementptr [16 x float], [16 x float] addrspace(3)* @"\01?vpdSharedGreenL1@@3PAY03$$CAMA.1dim", i32 0, i32 %217
  %219 = load float, float addrspace(3)* %218, align 4, !tbaa !25
  %220 = mul i32 %197, 4
  %221 = add i32 %196, %220
  %222 = getelementptr [16 x float], [16 x float] addrspace(3)* @"\01?vpdSharedGreenL1@@3PAY03$$CAMA.1dim", i32 0, i32 %221
  %223 = load float, float addrspace(3)* %222, align 4, !tbaa !25
  %224 = mul i32 %198, 4
  %225 = add i32 %207, %224
  %226 = getelementptr [16 x float], [16 x float] addrspace(3)* @"\01?vpdSharedGreenL1@@3PAY03$$CAMA.1dim", i32 0, i32 %225
  %227 = load float, float addrspace(3)* %226, align 4, !tbaa !25
  %228 = mul i32 %197, 4
  %229 = add i32 %207, %228
  %230 = getelementptr [16 x float], [16 x float] addrspace(3)* @"\01?vpdSharedGreenL1@@3PAY03$$CAMA.1dim", i32 0, i32 %229
  %231 = load float, float addrspace(3)* %230, align 4, !tbaa !25
  %232 = mul i32 %198, 4
  %233 = add i32 %196, %232
  %234 = getelementptr [16 x float], [16 x float] addrspace(3)* @"\01?vpdSharedBlueL1@@3PAY03$$CAMA.1dim", i32 0, i32 %233
  %235 = load float, float addrspace(3)* %234, align 4, !tbaa !25
  %236 = mul i32 %197, 4
  %237 = add i32 %196, %236
  %238 = getelementptr [16 x float], [16 x float] addrspace(3)* @"\01?vpdSharedBlueL1@@3PAY03$$CAMA.1dim", i32 0, i32 %237
  %239 = load float, float addrspace(3)* %238, align 4, !tbaa !25
  %240 = mul i32 %198, 4
  %241 = add i32 %207, %240
  %242 = getelementptr [16 x float], [16 x float] addrspace(3)* @"\01?vpdSharedBlueL1@@3PAY03$$CAMA.1dim", i32 0, i32 %241
  %243 = load float, float addrspace(3)* %242, align 4, !tbaa !25
  %244 = mul i32 %197, 4
  %245 = add i32 %207, %244
  %246 = getelementptr [16 x float], [16 x float] addrspace(3)* @"\01?vpdSharedBlueL1@@3PAY03$$CAMA.1dim", i32 0, i32 %245
  %247 = load float, float addrspace(3)* %246, align 4, !tbaa !25
  %248 = fadd fast float %206, %202
  %249 = fadd fast float %248, %211
  %250 = fadd fast float %249, %215
  %251 = fmul fast float %250, 2.500000e-01
  %252 = call float @dx.op.binary.f32(i32 35, float %223, float %227)  ; FMax(a,b)
  %253 = call float @dx.op.binary.f32(i32 35, float %219, float %252)  ; FMax(a,b)
  %254 = call float @dx.op.binary.f32(i32 35, float %253, float %231)  ; FMax(a,b)
  %255 = call float @dx.op.binary.f32(i32 36, float %239, float %243)  ; FMin(a,b)
  %256 = call float @dx.op.binary.f32(i32 36, float %235, float %255)  ; FMin(a,b)
  %257 = call float @dx.op.binary.f32(i32 36, float %256, float %247)  ; FMin(a,b)
  %258 = shl i32 %11, 1
  %259 = shl i32 %12, 1
  %260 = add i32 %13, %258
  %261 = add i32 %14, %259
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %260, i32 %261, i32 undef, float %251, float %254, float %257, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br i1 %194, label %338, label %262, !dx.controlflow.hints !33

; <label>:262                                     ; preds = %195
  %263 = mul i32 %13, 2
  %264 = add i32 %14, %263
  %265 = getelementptr [4 x float], [4 x float] addrspace(3)* @"\01?vpdSharedRedL2@@3PAY01$$CAMA.1dim", i32 0, i32 %264
  store float %251, float addrspace(3)* %265, align 4, !tbaa !25
  %266 = mul i32 %13, 2
  %267 = add i32 %14, %266
  %268 = getelementptr [4 x float], [4 x float] addrspace(3)* @"\01?vpdSharedGreenL2@@3PAY01$$CAMA.1dim", i32 0, i32 %267
  store float %254, float addrspace(3)* %268, align 4, !tbaa !25
  %269 = mul i32 %13, 2
  %270 = add i32 %14, %269
  %271 = getelementptr [4 x float], [4 x float] addrspace(3)* @"\01?vpdSharedBlueL2@@3PAY01$$CAMA.1dim", i32 0, i32 %270
  store float %257, float addrspace(3)* %271, align 4, !tbaa !25
  br label %273

; <label>:272                                     ; preds = %190
  br i1 %194, label %338, label %273, !dx.controlflow.hints !34

; <label>:273                                     ; preds = %272, %262
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %274 = icmp eq i32 %107, 0
  br i1 %274, label %275, label %338, !dx.controlflow.hints !35

; <label>:275                                     ; preds = %273
  %276 = shl i32 %14, 1
  %277 = shl i32 %13, 1
  %278 = or i32 %277, 1
  %279 = mul i32 %278, 2
  %280 = add i32 %276, %279
  %281 = getelementptr [4 x float], [4 x float] addrspace(3)* @"\01?vpdSharedRedL2@@3PAY01$$CAMA.1dim", i32 0, i32 %280
  %282 = load float, float addrspace(3)* %281, align 4, !tbaa !25
  %283 = mul i32 %277, 2
  %284 = add i32 %276, %283
  %285 = getelementptr [4 x float], [4 x float] addrspace(3)* @"\01?vpdSharedRedL2@@3PAY01$$CAMA.1dim", i32 0, i32 %284
  %286 = load float, float addrspace(3)* %285, align 4, !tbaa !25
  %287 = or i32 %276, 1
  %288 = mul i32 %278, 2
  %289 = add i32 %287, %288
  %290 = getelementptr [4 x float], [4 x float] addrspace(3)* @"\01?vpdSharedRedL2@@3PAY01$$CAMA.1dim", i32 0, i32 %289
  %291 = load float, float addrspace(3)* %290, align 4, !tbaa !25
  %292 = mul i32 %277, 2
  %293 = add i32 %287, %292
  %294 = getelementptr [4 x float], [4 x float] addrspace(3)* @"\01?vpdSharedRedL2@@3PAY01$$CAMA.1dim", i32 0, i32 %293
  %295 = load float, float addrspace(3)* %294, align 4, !tbaa !25
  %296 = mul i32 %278, 2
  %297 = add i32 %276, %296
  %298 = getelementptr [4 x float], [4 x float] addrspace(3)* @"\01?vpdSharedGreenL2@@3PAY01$$CAMA.1dim", i32 0, i32 %297
  %299 = load float, float addrspace(3)* %298, align 4, !tbaa !25
  %300 = mul i32 %277, 2
  %301 = add i32 %276, %300
  %302 = getelementptr [4 x float], [4 x float] addrspace(3)* @"\01?vpdSharedGreenL2@@3PAY01$$CAMA.1dim", i32 0, i32 %301
  %303 = load float, float addrspace(3)* %302, align 4, !tbaa !25
  %304 = mul i32 %278, 2
  %305 = add i32 %287, %304
  %306 = getelementptr [4 x float], [4 x float] addrspace(3)* @"\01?vpdSharedGreenL2@@3PAY01$$CAMA.1dim", i32 0, i32 %305
  %307 = load float, float addrspace(3)* %306, align 4, !tbaa !25
  %308 = mul i32 %277, 2
  %309 = add i32 %287, %308
  %310 = getelementptr [4 x float], [4 x float] addrspace(3)* @"\01?vpdSharedGreenL2@@3PAY01$$CAMA.1dim", i32 0, i32 %309
  %311 = load float, float addrspace(3)* %310, align 4, !tbaa !25
  %312 = mul i32 %278, 2
  %313 = add i32 %276, %312
  %314 = getelementptr [4 x float], [4 x float] addrspace(3)* @"\01?vpdSharedBlueL2@@3PAY01$$CAMA.1dim", i32 0, i32 %313
  %315 = load float, float addrspace(3)* %314, align 4, !tbaa !25
  %316 = mul i32 %277, 2
  %317 = add i32 %276, %316
  %318 = getelementptr [4 x float], [4 x float] addrspace(3)* @"\01?vpdSharedBlueL2@@3PAY01$$CAMA.1dim", i32 0, i32 %317
  %319 = load float, float addrspace(3)* %318, align 4, !tbaa !25
  %320 = mul i32 %278, 2
  %321 = add i32 %287, %320
  %322 = getelementptr [4 x float], [4 x float] addrspace(3)* @"\01?vpdSharedBlueL2@@3PAY01$$CAMA.1dim", i32 0, i32 %321
  %323 = load float, float addrspace(3)* %322, align 4, !tbaa !25
  %324 = mul i32 %277, 2
  %325 = add i32 %287, %324
  %326 = getelementptr [4 x float], [4 x float] addrspace(3)* @"\01?vpdSharedBlueL2@@3PAY01$$CAMA.1dim", i32 0, i32 %325
  %327 = load float, float addrspace(3)* %326, align 4, !tbaa !25
  %328 = fadd fast float %286, %282
  %329 = fadd fast float %328, %291
  %330 = fadd fast float %329, %295
  %331 = fmul fast float %330, 2.500000e-01
  %332 = call float @dx.op.binary.f32(i32 35, float %303, float %307)  ; FMax(a,b)
  %333 = call float @dx.op.binary.f32(i32 35, float %299, float %332)  ; FMax(a,b)
  %334 = call float @dx.op.binary.f32(i32 35, float %333, float %311)  ; FMax(a,b)
  %335 = call float @dx.op.binary.f32(i32 36, float %319, float %323)  ; FMin(a,b)
  %336 = call float @dx.op.binary.f32(i32 36, float %315, float %335)  ; FMin(a,b)
  %337 = call float @dx.op.binary.f32(i32 36, float %336, float %327)  ; FMin(a,b)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %11, i32 %12, i32 undef, float %331, float %334, float %337, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %338

; <label>:338                                     ; preds = %275, %273, %272, %195, %189, %112, %71
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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

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
!dx.entryPoints = !{!19}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !10, !15, !17}
!5 = !{!6, !8}
!6 = !{i32 0, %"class.Texture2D<vector<unsigned int, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 5}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 36, i32 1, i32 2, i32 0, !9}
!9 = !{i32 0, i32 9}
!10 = !{!11, !12, !13, !14}
!11 = !{i32 0, %"class.RWTexture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !9}
!12 = !{i32 1, %"class.RWTexture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !9}
!13 = !{i32 2, %"class.RWTexture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !9}
!14 = !{i32 3, %"class.RWTexture2D<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 2, i1 false, i1 false, i1 false, !9}
!15 = !{!16}
!16 = !{i32 0, %VolumetricDownsampleParticlesConstants* undef, !"", i32 0, i32 2, i32 1, i32 48, null}
!17 = !{!18}
!18 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!19 = !{void ()* @cs_volumetric_downsample_particles_mips, !"cs_volumetric_downsample_particles_mips", null, !4, !20}
!20 = !{i32 0, i64 256, i32 4, !21}
!21 = !{i32 8, i32 8, i32 1}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = !{!26, !26, i64 0}
!26 = !{!"float", !27, i64 0}
!27 = !{!"omnipotent char", !28, i64 0}
!28 = !{!"Simple C/C++ TBAA"}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}

