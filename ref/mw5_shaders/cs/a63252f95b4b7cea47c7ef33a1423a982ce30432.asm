;
; Note: shader requires additional functionality:
;       64 UAV slots
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
; shader hash: be81a9318088314da211c9f0a1c6a622
;
; Pipeline Runtime Information: 
;
;
;
; Buffer Definitions:
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                       UAV     f32          2d      U0             u8     1
;                                       UAV     f32          2d      U1             u9     1
;                                       UAV     f32          2d      U2             u0     1
;                                       UAV     f32          2d      U3             u1     1
;                                       UAV     f32          2d      U4             u2     1
;                                       UAV     f32          2d      U5             u3     1
;                                       UAV     f32          2d      U6             u4     1
;                                       UAV     f32          2d      U7             u5     1
;                                       UAV     f32          2d      U8             u6     1
;                                       UAV     f32          2d      U9             u7     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.RWTexture2D<float>" = type { float }

@"\01?sharedFloatZMax@@3PAY07$$CAMA.1dim" = addrspace(3) global [64 x float] undef, align 4
@"\01?sharedFloatZMin@@3PAY07$$CAMA.1dim" = addrspace(3) global [64 x float] undef, align 4

define void @cs_floatz_downsample_interior() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 9, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 8, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 7, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 6, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 5, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 4, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %12 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %13 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %14 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %15 = shl i32 %11, 1
  %16 = shl i32 %12, 1
  %17 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %10, i32 undef, i32 %15, i32 %16, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %18 = extractvalue %dx.types.ResRet.f32 %17, 0
  %19 = or i32 %16, 1
  %20 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %10, i32 undef, i32 %15, i32 %19, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %21 = extractvalue %dx.types.ResRet.f32 %20, 0
  %22 = or i32 %15, 1
  %23 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %10, i32 undef, i32 %22, i32 %16, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %24 = extractvalue %dx.types.ResRet.f32 %23, 0
  %25 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %10, i32 undef, i32 %22, i32 %19, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %26 = extractvalue %dx.types.ResRet.f32 %25, 0
  %27 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 undef, i32 %15, i32 %16, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %28 = extractvalue %dx.types.ResRet.f32 %27, 0
  %29 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 undef, i32 %15, i32 %19, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %30 = extractvalue %dx.types.ResRet.f32 %29, 0
  %31 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 undef, i32 %22, i32 %16, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %32 = extractvalue %dx.types.ResRet.f32 %31, 0
  %33 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 undef, i32 %22, i32 %19, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %34 = extractvalue %dx.types.ResRet.f32 %33, 0
  %35 = fcmp fast ole float %18, -1.000000e+00
  %36 = fcmp fast ole float %21, -1.000000e+00
  %37 = fcmp fast ole float %24, -1.000000e+00
  %38 = fcmp fast ole float %26, -1.000000e+00
  %39 = select i1 %35, float -1.000000e+00, float %18
  %40 = select i1 %36, float -1.000000e+00, float %21
  %41 = select i1 %37, float -1.000000e+00, float %24
  %42 = select i1 %38, float -1.000000e+00, float %26
  %43 = and i1 %35, %36
  %44 = and i1 %43, %37
  %45 = and i1 %44, %38
  %46 = call float @dx.op.binary.f32(i32 36, float %21, float %24)  ; FMin(a,b)
  %47 = call float @dx.op.binary.f32(i32 36, float %18, float %46)  ; FMin(a,b)
  %48 = call float @dx.op.binary.f32(i32 36, float %47, float %26)  ; FMin(a,b)
  %49 = call float @dx.op.binary.f32(i32 35, float %40, float %41)  ; FMax(a,b)
  %50 = call float @dx.op.binary.f32(i32 35, float %39, float %49)  ; FMax(a,b)
  %51 = call float @dx.op.binary.f32(i32 35, float %50, float %42)  ; FMax(a,b)
  %52 = select i1 %45, float %48, float %51
  %53 = fcmp fast ole float %28, -1.000000e+00
  %54 = fcmp fast ole float %30, -1.000000e+00
  %55 = fcmp fast ole float %32, -1.000000e+00
  %56 = fcmp fast ole float %34, -1.000000e+00
  %57 = select i1 %53, float 0x47EFFFFFE0000000, float %28
  %58 = select i1 %54, float 0x47EFFFFFE0000000, float %30
  %59 = select i1 %55, float 0x47EFFFFFE0000000, float %32
  %60 = select i1 %56, float 0x47EFFFFFE0000000, float %34
  %61 = and i1 %53, %54
  %62 = and i1 %61, %55
  %63 = and i1 %62, %56
  %64 = call float @dx.op.binary.f32(i32 35, float %30, float %32)  ; FMax(a,b)
  %65 = call float @dx.op.binary.f32(i32 35, float %28, float %64)  ; FMax(a,b)
  %66 = call float @dx.op.binary.f32(i32 35, float %65, float %34)  ; FMax(a,b)
  %67 = call float @dx.op.binary.f32(i32 36, float %58, float %59)  ; FMin(a,b)
  %68 = call float @dx.op.binary.f32(i32 36, float %57, float %67)  ; FMin(a,b)
  %69 = call float @dx.op.binary.f32(i32 36, float %68, float %60)  ; FMin(a,b)
  %70 = select i1 %63, float %66, float %69
  %71 = and i32 %11, 2147483647
  %72 = and i32 %12, 2147483647
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %8, i32 %71, i32 %72, i32 undef, float %52, float %52, float %52, float %52, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %71, i32 %72, i32 undef, float %70, float %70, float %70, float %70, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %73 = mul i32 %13, 8
  %74 = add i32 %14, %73
  %75 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedFloatZMax@@3PAY07$$CAMA.1dim", i32 0, i32 %74
  store float %52, float addrspace(3)* %75, align 4, !tbaa !20
  %76 = mul i32 %13, 8
  %77 = add i32 %14, %76
  %78 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedFloatZMin@@3PAY07$$CAMA.1dim", i32 0, i32 %77
  store float %70, float addrspace(3)* %78, align 4, !tbaa !20
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %79 = xor i32 %14, 1
  %80 = xor i32 %13, 1
  %81 = mul i32 %80, 8
  %82 = add i32 %79, %81
  %83 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedFloatZMax@@3PAY07$$CAMA.1dim", i32 0, i32 %82
  %84 = load float, float addrspace(3)* %83, align 4, !tbaa !20
  %85 = mul i32 %13, 8
  %86 = add i32 %79, %85
  %87 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedFloatZMax@@3PAY07$$CAMA.1dim", i32 0, i32 %86
  %88 = load float, float addrspace(3)* %87, align 4, !tbaa !20
  %89 = mul i32 %80, 8
  %90 = add i32 %14, %89
  %91 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedFloatZMax@@3PAY07$$CAMA.1dim", i32 0, i32 %90
  %92 = load float, float addrspace(3)* %91, align 4, !tbaa !20
  %93 = fcmp fast ole float %52, -1.000000e+00
  %94 = fcmp fast ole float %92, -1.000000e+00
  %95 = fcmp fast ole float %88, -1.000000e+00
  %96 = fcmp fast ole float %84, -1.000000e+00
  %97 = select i1 %93, float -1.000000e+00, float %52
  %98 = select i1 %94, float -1.000000e+00, float %92
  %99 = select i1 %95, float -1.000000e+00, float %88
  %100 = select i1 %96, float -1.000000e+00, float %84
  %101 = and i1 %93, %94
  %102 = and i1 %95, %101
  %103 = and i1 %96, %102
  %104 = call float @dx.op.binary.f32(i32 36, float %92, float %88)  ; FMin(a,b)
  %105 = call float @dx.op.binary.f32(i32 36, float %52, float %104)  ; FMin(a,b)
  %106 = call float @dx.op.binary.f32(i32 36, float %105, float %84)  ; FMin(a,b)
  %107 = call float @dx.op.binary.f32(i32 35, float %98, float %99)  ; FMax(a,b)
  %108 = call float @dx.op.binary.f32(i32 35, float %97, float %107)  ; FMax(a,b)
  %109 = call float @dx.op.binary.f32(i32 35, float %108, float %100)  ; FMax(a,b)
  %110 = select i1 %103, float %106, float %109
  %111 = mul i32 %80, 8
  %112 = add i32 %79, %111
  %113 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedFloatZMin@@3PAY07$$CAMA.1dim", i32 0, i32 %112
  %114 = load float, float addrspace(3)* %113, align 4, !tbaa !20
  %115 = mul i32 %13, 8
  %116 = add i32 %79, %115
  %117 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedFloatZMin@@3PAY07$$CAMA.1dim", i32 0, i32 %116
  %118 = load float, float addrspace(3)* %117, align 4, !tbaa !20
  %119 = mul i32 %80, 8
  %120 = add i32 %14, %119
  %121 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedFloatZMin@@3PAY07$$CAMA.1dim", i32 0, i32 %120
  %122 = load float, float addrspace(3)* %121, align 4, !tbaa !20
  %123 = fcmp fast ole float %70, -1.000000e+00
  %124 = fcmp fast ole float %122, -1.000000e+00
  %125 = fcmp fast ole float %118, -1.000000e+00
  %126 = fcmp fast ole float %114, -1.000000e+00
  %127 = select i1 %123, float 0x47EFFFFFE0000000, float %70
  %128 = select i1 %124, float 0x47EFFFFFE0000000, float %122
  %129 = select i1 %125, float 0x47EFFFFFE0000000, float %118
  %130 = select i1 %126, float 0x47EFFFFFE0000000, float %114
  %131 = and i1 %123, %124
  %132 = and i1 %125, %131
  %133 = and i1 %126, %132
  %134 = call float @dx.op.binary.f32(i32 35, float %122, float %118)  ; FMax(a,b)
  %135 = call float @dx.op.binary.f32(i32 35, float %70, float %134)  ; FMax(a,b)
  %136 = call float @dx.op.binary.f32(i32 35, float %135, float %114)  ; FMax(a,b)
  %137 = call float @dx.op.binary.f32(i32 36, float %128, float %129)  ; FMin(a,b)
  %138 = call float @dx.op.binary.f32(i32 36, float %127, float %137)  ; FMin(a,b)
  %139 = call float @dx.op.binary.f32(i32 36, float %138, float %130)  ; FMin(a,b)
  %140 = select i1 %133, float %136, float %139
  %141 = lshr i32 %71, 1
  %142 = lshr i32 %72, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %7, i32 %141, i32 %142, i32 undef, float %110, float %110, float %110, float %110, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %141, i32 %142, i32 undef, float %140, float %140, float %140, float %140, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %143 = call i32 @dx.op.waveGetLaneCount(i32 112)  ; WaveGetLaneCount()
  store float %110, float addrspace(3)* %75, align 4, !tbaa !20
  store float %140, float addrspace(3)* %78, align 4, !tbaa !20
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %144 = xor i32 %14, 2
  %145 = xor i32 %13, 2
  %146 = mul i32 %145, 8
  %147 = add i32 %144, %146
  %148 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedFloatZMax@@3PAY07$$CAMA.1dim", i32 0, i32 %147
  %149 = load float, float addrspace(3)* %148, align 4, !tbaa !20
  %150 = mul i32 %13, 8
  %151 = add i32 %144, %150
  %152 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedFloatZMax@@3PAY07$$CAMA.1dim", i32 0, i32 %151
  %153 = load float, float addrspace(3)* %152, align 4, !tbaa !20
  %154 = mul i32 %145, 8
  %155 = add i32 %14, %154
  %156 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedFloatZMax@@3PAY07$$CAMA.1dim", i32 0, i32 %155
  %157 = load float, float addrspace(3)* %156, align 4, !tbaa !20
  %158 = fcmp fast ole float %110, -1.000000e+00
  %159 = fcmp fast ole float %157, -1.000000e+00
  %160 = fcmp fast ole float %153, -1.000000e+00
  %161 = fcmp fast ole float %149, -1.000000e+00
  %162 = select i1 %158, float -1.000000e+00, float %110
  %163 = select i1 %159, float -1.000000e+00, float %157
  %164 = select i1 %160, float -1.000000e+00, float %153
  %165 = select i1 %161, float -1.000000e+00, float %149
  %166 = and i1 %158, %159
  %167 = and i1 %160, %166
  %168 = and i1 %161, %167
  %169 = call float @dx.op.binary.f32(i32 36, float %157, float %153)  ; FMin(a,b)
  %170 = call float @dx.op.binary.f32(i32 36, float %110, float %169)  ; FMin(a,b)
  %171 = call float @dx.op.binary.f32(i32 36, float %170, float %149)  ; FMin(a,b)
  %172 = call float @dx.op.binary.f32(i32 35, float %163, float %164)  ; FMax(a,b)
  %173 = call float @dx.op.binary.f32(i32 35, float %162, float %172)  ; FMax(a,b)
  %174 = call float @dx.op.binary.f32(i32 35, float %173, float %165)  ; FMax(a,b)
  %175 = select i1 %168, float %171, float %174
  %176 = mul i32 %145, 8
  %177 = add i32 %144, %176
  %178 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedFloatZMin@@3PAY07$$CAMA.1dim", i32 0, i32 %177
  %179 = load float, float addrspace(3)* %178, align 4, !tbaa !20
  %180 = mul i32 %13, 8
  %181 = add i32 %144, %180
  %182 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedFloatZMin@@3PAY07$$CAMA.1dim", i32 0, i32 %181
  %183 = load float, float addrspace(3)* %182, align 4, !tbaa !20
  %184 = mul i32 %145, 8
  %185 = add i32 %14, %184
  %186 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedFloatZMin@@3PAY07$$CAMA.1dim", i32 0, i32 %185
  %187 = load float, float addrspace(3)* %186, align 4, !tbaa !20
  %188 = fcmp fast ole float %140, -1.000000e+00
  %189 = fcmp fast ole float %187, -1.000000e+00
  %190 = fcmp fast ole float %183, -1.000000e+00
  %191 = fcmp fast ole float %179, -1.000000e+00
  %192 = select i1 %188, float 0x47EFFFFFE0000000, float %140
  %193 = select i1 %189, float 0x47EFFFFFE0000000, float %187
  %194 = select i1 %190, float 0x47EFFFFFE0000000, float %183
  %195 = select i1 %191, float 0x47EFFFFFE0000000, float %179
  %196 = and i1 %188, %189
  %197 = and i1 %190, %196
  %198 = and i1 %191, %197
  %199 = call float @dx.op.binary.f32(i32 35, float %187, float %183)  ; FMax(a,b)
  %200 = call float @dx.op.binary.f32(i32 35, float %140, float %199)  ; FMax(a,b)
  %201 = call float @dx.op.binary.f32(i32 35, float %200, float %179)  ; FMax(a,b)
  %202 = call float @dx.op.binary.f32(i32 36, float %193, float %194)  ; FMin(a,b)
  %203 = call float @dx.op.binary.f32(i32 36, float %192, float %202)  ; FMin(a,b)
  %204 = call float @dx.op.binary.f32(i32 36, float %203, float %195)  ; FMin(a,b)
  %205 = select i1 %198, float %201, float %204
  %206 = lshr i32 %71, 2
  %207 = lshr i32 %72, 2
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %6, i32 %206, i32 %207, i32 undef, float %175, float %175, float %175, float %175, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %206, i32 %207, i32 undef, float %205, float %205, float %205, float %205, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %208 = icmp eq i32 %143, 16
  br i1 %208, label %209, label %210, !dx.controlflow.hints !24

; <label>:209                                     ; preds = %0
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br label %210

; <label>:210                                     ; preds = %209, %0
  store float %175, float addrspace(3)* %75, align 4, !tbaa !20
  store float %205, float addrspace(3)* %78, align 4, !tbaa !20
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %211 = xor i32 %14, 4
  %212 = xor i32 %13, 4
  %213 = mul i32 %212, 8
  %214 = add i32 %211, %213
  %215 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedFloatZMax@@3PAY07$$CAMA.1dim", i32 0, i32 %214
  %216 = load float, float addrspace(3)* %215, align 4, !tbaa !20
  %217 = mul i32 %13, 8
  %218 = add i32 %211, %217
  %219 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedFloatZMax@@3PAY07$$CAMA.1dim", i32 0, i32 %218
  %220 = load float, float addrspace(3)* %219, align 4, !tbaa !20
  %221 = mul i32 %212, 8
  %222 = add i32 %14, %221
  %223 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedFloatZMax@@3PAY07$$CAMA.1dim", i32 0, i32 %222
  %224 = load float, float addrspace(3)* %223, align 4, !tbaa !20
  %225 = fcmp fast ole float %175, -1.000000e+00
  %226 = fcmp fast ole float %224, -1.000000e+00
  %227 = fcmp fast ole float %220, -1.000000e+00
  %228 = fcmp fast ole float %216, -1.000000e+00
  %229 = select i1 %225, float -1.000000e+00, float %175
  %230 = select i1 %226, float -1.000000e+00, float %224
  %231 = select i1 %227, float -1.000000e+00, float %220
  %232 = select i1 %228, float -1.000000e+00, float %216
  %233 = and i1 %225, %226
  %234 = and i1 %227, %233
  %235 = and i1 %228, %234
  %236 = call float @dx.op.binary.f32(i32 36, float %224, float %220)  ; FMin(a,b)
  %237 = call float @dx.op.binary.f32(i32 36, float %175, float %236)  ; FMin(a,b)
  %238 = call float @dx.op.binary.f32(i32 36, float %237, float %216)  ; FMin(a,b)
  %239 = call float @dx.op.binary.f32(i32 35, float %230, float %231)  ; FMax(a,b)
  %240 = call float @dx.op.binary.f32(i32 35, float %229, float %239)  ; FMax(a,b)
  %241 = call float @dx.op.binary.f32(i32 35, float %240, float %232)  ; FMax(a,b)
  %242 = select i1 %235, float %238, float %241
  %243 = mul i32 %212, 8
  %244 = add i32 %211, %243
  %245 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedFloatZMin@@3PAY07$$CAMA.1dim", i32 0, i32 %244
  %246 = load float, float addrspace(3)* %245, align 4, !tbaa !20
  %247 = mul i32 %13, 8
  %248 = add i32 %211, %247
  %249 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedFloatZMin@@3PAY07$$CAMA.1dim", i32 0, i32 %248
  %250 = load float, float addrspace(3)* %249, align 4, !tbaa !20
  %251 = mul i32 %212, 8
  %252 = add i32 %14, %251
  %253 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedFloatZMin@@3PAY07$$CAMA.1dim", i32 0, i32 %252
  %254 = load float, float addrspace(3)* %253, align 4, !tbaa !20
  %255 = fcmp fast ole float %205, -1.000000e+00
  %256 = fcmp fast ole float %254, -1.000000e+00
  %257 = fcmp fast ole float %250, -1.000000e+00
  %258 = fcmp fast ole float %246, -1.000000e+00
  %259 = select i1 %255, float 0x47EFFFFFE0000000, float %205
  %260 = select i1 %256, float 0x47EFFFFFE0000000, float %254
  %261 = select i1 %257, float 0x47EFFFFFE0000000, float %250
  %262 = select i1 %258, float 0x47EFFFFFE0000000, float %246
  %263 = and i1 %255, %256
  %264 = and i1 %257, %263
  %265 = and i1 %258, %264
  %266 = call float @dx.op.binary.f32(i32 35, float %254, float %250)  ; FMax(a,b)
  %267 = call float @dx.op.binary.f32(i32 35, float %205, float %266)  ; FMax(a,b)
  %268 = call float @dx.op.binary.f32(i32 35, float %267, float %246)  ; FMax(a,b)
  %269 = call float @dx.op.binary.f32(i32 36, float %260, float %261)  ; FMin(a,b)
  %270 = call float @dx.op.binary.f32(i32 36, float %259, float %269)  ; FMin(a,b)
  %271 = call float @dx.op.binary.f32(i32 36, float %270, float %262)  ; FMin(a,b)
  %272 = select i1 %265, float %268, float %271
  %273 = lshr i32 %71, 3
  %274 = lshr i32 %72, 3
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %5, i32 %273, i32 %274, i32 undef, float %242, float %242, float %242, float %242, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %273, i32 %274, i32 undef, float %272, float %272, float %272, float %272, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #3

; Function Attrs: nounwind readnone
declare i32 @dx.op.waveGetLaneCount(i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

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
!4 = !{null, !5, null, null}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16}
!6 = !{i32 0, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 8, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 9, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!9 = !{i32 2, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!10 = !{i32 3, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!11 = !{i32 4, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!12 = !{i32 5, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 3, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!13 = !{i32 6, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 4, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!14 = !{i32 7, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 5, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!15 = !{i32 8, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 6, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!16 = !{i32 9, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 7, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!17 = !{void ()* @cs_floatz_downsample_interior, !"cs_floatz_downsample_interior", null, !4, !18}
!18 = !{i32 0, i64 557312, i32 4, !19}
!19 = !{i32 8, i32 8, i32 1}
!20 = !{!21, !21, i64 0}
!21 = !{!"float", !22, i64 0}
!22 = !{!"omnipotent char", !23, i64 0}
!23 = !{!"Simple C/C++ TBAA"}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}

