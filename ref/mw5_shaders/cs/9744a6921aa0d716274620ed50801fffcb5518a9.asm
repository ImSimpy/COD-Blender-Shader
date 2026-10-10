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
; shader hash: 2c865ce34f1364136a6a83781a69d0d0
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

@"\01?sharedFloatZMax@@3PAY03$$CAMA.1dim" = addrspace(3) global [8 x float] undef, align 4
@"\01?sharedFloatZMin@@3PAY03$$CAMA.1dim" = addrspace(3) global [8 x float] undef, align 4

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
  %13 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %14 = shl i32 %11, 1
  %15 = shl i32 %12, 1
  %16 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %10, i32 undef, i32 %14, i32 %15, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %17 = extractvalue %dx.types.ResRet.f32 %16, 0
  %18 = or i32 %15, 1
  %19 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %10, i32 undef, i32 %14, i32 %18, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %20 = extractvalue %dx.types.ResRet.f32 %19, 0
  %21 = or i32 %14, 1
  %22 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %10, i32 undef, i32 %21, i32 %15, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %23 = extractvalue %dx.types.ResRet.f32 %22, 0
  %24 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %10, i32 undef, i32 %21, i32 %18, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %25 = extractvalue %dx.types.ResRet.f32 %24, 0
  %26 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 undef, i32 %14, i32 %15, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %27 = extractvalue %dx.types.ResRet.f32 %26, 0
  %28 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 undef, i32 %14, i32 %18, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %29 = extractvalue %dx.types.ResRet.f32 %28, 0
  %30 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 undef, i32 %21, i32 %15, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %31 = extractvalue %dx.types.ResRet.f32 %30, 0
  %32 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 undef, i32 %21, i32 %18, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %33 = extractvalue %dx.types.ResRet.f32 %32, 0
  %34 = fcmp fast ole float %17, -1.000000e+00
  %35 = fcmp fast ole float %20, -1.000000e+00
  %36 = fcmp fast ole float %23, -1.000000e+00
  %37 = fcmp fast ole float %25, -1.000000e+00
  %38 = select i1 %34, float -1.000000e+00, float %17
  %39 = select i1 %35, float -1.000000e+00, float %20
  %40 = select i1 %36, float -1.000000e+00, float %23
  %41 = select i1 %37, float -1.000000e+00, float %25
  %42 = and i1 %34, %35
  %43 = and i1 %42, %36
  %44 = and i1 %43, %37
  %45 = call float @dx.op.binary.f32(i32 36, float %20, float %23)  ; FMin(a,b)
  %46 = call float @dx.op.binary.f32(i32 36, float %17, float %45)  ; FMin(a,b)
  %47 = call float @dx.op.binary.f32(i32 36, float %46, float %25)  ; FMin(a,b)
  %48 = call float @dx.op.binary.f32(i32 35, float %39, float %40)  ; FMax(a,b)
  %49 = call float @dx.op.binary.f32(i32 35, float %38, float %48)  ; FMax(a,b)
  %50 = call float @dx.op.binary.f32(i32 35, float %49, float %41)  ; FMax(a,b)
  %51 = select i1 %44, float %47, float %50
  %52 = fcmp fast ole float %27, -1.000000e+00
  %53 = fcmp fast ole float %29, -1.000000e+00
  %54 = fcmp fast ole float %31, -1.000000e+00
  %55 = fcmp fast ole float %33, -1.000000e+00
  %56 = select i1 %52, float 0x47EFFFFFE0000000, float %27
  %57 = select i1 %53, float 0x47EFFFFFE0000000, float %29
  %58 = select i1 %54, float 0x47EFFFFFE0000000, float %31
  %59 = select i1 %55, float 0x47EFFFFFE0000000, float %33
  %60 = and i1 %52, %53
  %61 = and i1 %60, %54
  %62 = and i1 %61, %55
  %63 = call float @dx.op.binary.f32(i32 35, float %29, float %31)  ; FMax(a,b)
  %64 = call float @dx.op.binary.f32(i32 35, float %27, float %63)  ; FMax(a,b)
  %65 = call float @dx.op.binary.f32(i32 35, float %64, float %33)  ; FMax(a,b)
  %66 = call float @dx.op.binary.f32(i32 36, float %57, float %58)  ; FMin(a,b)
  %67 = call float @dx.op.binary.f32(i32 36, float %56, float %66)  ; FMin(a,b)
  %68 = call float @dx.op.binary.f32(i32 36, float %67, float %59)  ; FMin(a,b)
  %69 = select i1 %62, float %65, float %68
  %70 = and i32 %11, 2147483647
  %71 = and i32 %12, 2147483647
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %8, i32 %70, i32 %71, i32 undef, float %51, float %51, float %51, float %51, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %70, i32 %71, i32 undef, float %69, float %69, float %69, float %69, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %72 = call i32 @dx.op.waveGetLaneCount(i32 112)  ; WaveGetLaneCount()
  %73 = add i32 %72, -1
  %74 = call i32 @dx.op.waveGetLaneIndex(i32 111)  ; WaveGetLaneIndex()
  %75 = and i32 %72, 1
  %76 = xor i32 %75, 1
  %77 = and i32 %73, %74
  %78 = xor i32 %76, %77
  %79 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %51, i32 %78)  ; WaveReadLaneAt(value,lane)
  %80 = fcmp fast ole float %51, -1.000000e+00
  %81 = fcmp fast ole float %79, -1.000000e+00
  %82 = select i1 %80, float -1.000000e+00, float %51
  %83 = select i1 %81, float -1.000000e+00, float %79
  %84 = and i1 %80, %81
  %85 = call float @dx.op.binary.f32(i32 36, float %51, float %79)  ; FMin(a,b)
  %86 = call float @dx.op.binary.f32(i32 35, float %82, float %83)  ; FMax(a,b)
  %87 = select i1 %84, float %85, float %86
  %88 = add i32 %72, 15
  %89 = and i32 %88, 8
  %90 = xor i32 %77, %89
  %91 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %87, i32 %90)  ; WaveReadLaneAt(value,lane)
  %92 = fcmp fast ole float %87, -1.000000e+00
  %93 = fcmp fast ole float %91, -1.000000e+00
  %94 = select i1 %92, float -1.000000e+00, float %87
  %95 = select i1 %93, float -1.000000e+00, float %91
  %96 = and i1 %92, %93
  %97 = call float @dx.op.binary.f32(i32 36, float %87, float %91)  ; FMin(a,b)
  %98 = call float @dx.op.binary.f32(i32 35, float %94, float %95)  ; FMax(a,b)
  %99 = select i1 %96, float %97, float %98
  %100 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %69, i32 %78)  ; WaveReadLaneAt(value,lane)
  %101 = fcmp fast ole float %69, -1.000000e+00
  %102 = fcmp fast ole float %100, -1.000000e+00
  %103 = select i1 %101, float 0x47EFFFFFE0000000, float %69
  %104 = select i1 %102, float 0x47EFFFFFE0000000, float %100
  %105 = and i1 %101, %102
  %106 = call float @dx.op.binary.f32(i32 35, float %69, float %100)  ; FMax(a,b)
  %107 = call float @dx.op.binary.f32(i32 36, float %103, float %104)  ; FMin(a,b)
  %108 = select i1 %105, float %106, float %107
  %109 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %108, i32 %90)  ; WaveReadLaneAt(value,lane)
  %110 = fcmp fast ole float %108, -1.000000e+00
  %111 = fcmp fast ole float %109, -1.000000e+00
  %112 = select i1 %110, float 0x47EFFFFFE0000000, float %108
  %113 = select i1 %111, float 0x47EFFFFFE0000000, float %109
  %114 = and i1 %110, %111
  %115 = call float @dx.op.binary.f32(i32 35, float %108, float %109)  ; FMax(a,b)
  %116 = call float @dx.op.binary.f32(i32 36, float %112, float %113)  ; FMin(a,b)
  %117 = select i1 %114, float %115, float %116
  %118 = lshr i32 %70, 1
  %119 = lshr i32 %71, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %7, i32 %118, i32 %119, i32 undef, float %99, float %99, float %99, float %99, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %118, i32 %119, i32 undef, float %117, float %117, float %117, float %117, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %120 = udiv i32 %13, %72
  %121 = icmp ugt i32 %72, 31
  %122 = add i32 %72, 3
  %123 = and i32 %122, 2
  %124 = xor i32 %77, %123
  %125 = fcmp fast ole float %99, -1.000000e+00
  %126 = select i1 %125, float -1.000000e+00, float %99
  %127 = fcmp fast ole float %117, -1.000000e+00
  %128 = select i1 %127, float 0x47EFFFFFE0000000, float %117
  br i1 %121, label %129, label %165, !dx.controlflow.hints !20

; <label>:129                                     ; preds = %0
  %130 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %99, i32 %124)  ; WaveReadLaneAt(value,lane)
  %131 = fcmp fast ole float %130, -1.000000e+00
  %132 = select i1 %131, float -1.000000e+00, float %130
  %133 = and i1 %125, %131
  %134 = call float @dx.op.binary.f32(i32 36, float %99, float %130)  ; FMin(a,b)
  %135 = call float @dx.op.binary.f32(i32 35, float %126, float %132)  ; FMax(a,b)
  %136 = select i1 %133, float %134, float %135
  %137 = add i32 %72, 31
  %138 = and i32 %137, 16
  %139 = xor i32 %77, %138
  %140 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %136, i32 %139)  ; WaveReadLaneAt(value,lane)
  %141 = fcmp fast ole float %136, -1.000000e+00
  %142 = fcmp fast ole float %140, -1.000000e+00
  %143 = select i1 %141, float -1.000000e+00, float %136
  %144 = select i1 %142, float -1.000000e+00, float %140
  %145 = and i1 %141, %142
  %146 = call float @dx.op.binary.f32(i32 36, float %136, float %140)  ; FMin(a,b)
  %147 = call float @dx.op.binary.f32(i32 35, float %143, float %144)  ; FMax(a,b)
  %148 = select i1 %145, float %146, float %147
  %149 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %117, i32 %124)  ; WaveReadLaneAt(value,lane)
  %150 = fcmp fast ole float %149, -1.000000e+00
  %151 = select i1 %150, float 0x47EFFFFFE0000000, float %149
  %152 = and i1 %127, %150
  %153 = call float @dx.op.binary.f32(i32 35, float %117, float %149)  ; FMax(a,b)
  %154 = call float @dx.op.binary.f32(i32 36, float %128, float %151)  ; FMin(a,b)
  %155 = select i1 %152, float %153, float %154
  %156 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %155, i32 %139)  ; WaveReadLaneAt(value,lane)
  %157 = fcmp fast ole float %155, -1.000000e+00
  %158 = fcmp fast ole float %156, -1.000000e+00
  %159 = select i1 %157, float 0x47EFFFFFE0000000, float %155
  %160 = select i1 %158, float 0x47EFFFFFE0000000, float %156
  %161 = and i1 %157, %158
  %162 = call float @dx.op.binary.f32(i32 35, float %155, float %156)  ; FMax(a,b)
  %163 = call float @dx.op.binary.f32(i32 36, float %159, float %160)  ; FMin(a,b)
  %164 = select i1 %161, float %162, float %163
  br label %215

; <label>:165                                     ; preds = %0
  %166 = lshr i32 %74, 2
  %167 = and i32 %166, 1
  %168 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %99, i32 %124)  ; WaveReadLaneAt(value,lane)
  %169 = fcmp fast ole float %168, -1.000000e+00
  %170 = select i1 %169, float -1.000000e+00, float %168
  %171 = and i1 %125, %169
  %172 = call float @dx.op.binary.f32(i32 36, float %99, float %168)  ; FMin(a,b)
  %173 = call float @dx.op.binary.f32(i32 35, float %126, float %170)  ; FMax(a,b)
  %174 = select i1 %171, float %172, float %173
  %175 = mul i32 %167, 4
  %176 = add i32 %120, %175
  %177 = getelementptr [8 x float], [8 x float] addrspace(3)* @"\01?sharedFloatZMax@@3PAY03$$CAMA.1dim", i32 0, i32 %176
  store float %174, float addrspace(3)* %177, align 4, !tbaa !21
  %178 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %117, i32 %124)  ; WaveReadLaneAt(value,lane)
  %179 = fcmp fast ole float %178, -1.000000e+00
  %180 = select i1 %179, float 0x47EFFFFFE0000000, float %178
  %181 = and i1 %127, %179
  %182 = call float @dx.op.binary.f32(i32 35, float %117, float %178)  ; FMax(a,b)
  %183 = call float @dx.op.binary.f32(i32 36, float %128, float %180)  ; FMin(a,b)
  %184 = select i1 %181, float %182, float %183
  %185 = mul i32 %167, 4
  %186 = add i32 %120, %185
  %187 = getelementptr [8 x float], [8 x float] addrspace(3)* @"\01?sharedFloatZMin@@3PAY03$$CAMA.1dim", i32 0, i32 %186
  store float %184, float addrspace(3)* %187, align 4, !tbaa !21
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %188 = xor i32 %120, 2
  %189 = mul i32 %167, 4
  %190 = add i32 %188, %189
  %191 = getelementptr [8 x float], [8 x float] addrspace(3)* @"\01?sharedFloatZMax@@3PAY03$$CAMA.1dim", i32 0, i32 %190
  %192 = load float, float addrspace(3)* %191, align 4, !tbaa !21
  %193 = load float, float addrspace(3)* %177, align 4, !tbaa !21
  %194 = fcmp fast ole float %193, -1.000000e+00
  %195 = fcmp fast ole float %192, -1.000000e+00
  %196 = select i1 %194, float -1.000000e+00, float %193
  %197 = select i1 %195, float -1.000000e+00, float %192
  %198 = and i1 %195, %194
  %199 = call float @dx.op.binary.f32(i32 36, float %193, float %192)  ; FMin(a,b)
  %200 = call float @dx.op.binary.f32(i32 35, float %196, float %197)  ; FMax(a,b)
  %201 = select i1 %198, float %199, float %200
  %202 = mul i32 %167, 4
  %203 = add i32 %188, %202
  %204 = getelementptr [8 x float], [8 x float] addrspace(3)* @"\01?sharedFloatZMin@@3PAY03$$CAMA.1dim", i32 0, i32 %203
  %205 = load float, float addrspace(3)* %204, align 4, !tbaa !21
  %206 = load float, float addrspace(3)* %187, align 4, !tbaa !21
  %207 = fcmp fast ole float %206, -1.000000e+00
  %208 = fcmp fast ole float %205, -1.000000e+00
  %209 = select i1 %207, float 0x47EFFFFFE0000000, float %206
  %210 = select i1 %208, float 0x47EFFFFFE0000000, float %205
  %211 = and i1 %208, %207
  %212 = call float @dx.op.binary.f32(i32 35, float %206, float %205)  ; FMax(a,b)
  %213 = call float @dx.op.binary.f32(i32 36, float %209, float %210)  ; FMin(a,b)
  %214 = select i1 %211, float %212, float %213
  br label %215

; <label>:215                                     ; preds = %165, %129
  %216 = phi float [ %148, %129 ], [ %201, %165 ]
  %217 = phi float [ %164, %129 ], [ %214, %165 ]
  %218 = lshr i32 %70, 2
  %219 = lshr i32 %71, 2
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %6, i32 %218, i32 %219, i32 undef, float %216, float %216, float %216, float %216, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %218, i32 %219, i32 undef, float %217, float %217, float %217, float %217, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %220 = icmp eq i32 %72, 16
  br i1 %220, label %221, label %222, !dx.controlflow.hints !25

; <label>:221                                     ; preds = %215
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br label %222

; <label>:222                                     ; preds = %221, %215
  %223 = icmp eq i32 %72, 64
  %224 = fcmp fast ole float %216, -1.000000e+00
  %225 = select i1 %224, float -1.000000e+00, float %216
  %226 = fcmp fast ole float %217, -1.000000e+00
  %227 = select i1 %226, float 0x47EFFFFFE0000000, float %217
  br i1 %223, label %228, label %265, !dx.controlflow.hints !26

; <label>:228                                     ; preds = %222
  %229 = and i32 %74, 63
  %230 = xor i32 %229, 4
  %231 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %216, i32 %230)  ; WaveReadLaneAt(value,lane)
  %232 = fcmp fast ole float %231, -1.000000e+00
  %233 = select i1 %232, float -1.000000e+00, float %231
  %234 = and i1 %224, %232
  %235 = call float @dx.op.binary.f32(i32 36, float %216, float %231)  ; FMin(a,b)
  %236 = call float @dx.op.binary.f32(i32 35, float %225, float %233)  ; FMax(a,b)
  %237 = select i1 %234, float %235, float %236
  %238 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %237, i32 32)  ; WaveReadLaneAt(value,lane)
  %239 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %237, i32 0)  ; WaveReadLaneAt(value,lane)
  %240 = fcmp fast ole float %239, -1.000000e+00
  %241 = fcmp fast ole float %238, -1.000000e+00
  %242 = select i1 %240, float -1.000000e+00, float %239
  %243 = select i1 %241, float -1.000000e+00, float %238
  %244 = and i1 %241, %240
  %245 = call float @dx.op.binary.f32(i32 36, float %239, float %238)  ; FMin(a,b)
  %246 = call float @dx.op.binary.f32(i32 35, float %242, float %243)  ; FMax(a,b)
  %247 = select i1 %244, float %245, float %246
  %248 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %217, i32 %230)  ; WaveReadLaneAt(value,lane)
  %249 = fcmp fast ole float %248, -1.000000e+00
  %250 = select i1 %249, float 0x47EFFFFFE0000000, float %248
  %251 = and i1 %226, %249
  %252 = call float @dx.op.binary.f32(i32 35, float %217, float %248)  ; FMax(a,b)
  %253 = call float @dx.op.binary.f32(i32 36, float %227, float %250)  ; FMin(a,b)
  %254 = select i1 %251, float %252, float %253
  %255 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %254, i32 32)  ; WaveReadLaneAt(value,lane)
  %256 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %254, i32 0)  ; WaveReadLaneAt(value,lane)
  %257 = fcmp fast ole float %256, -1.000000e+00
  %258 = fcmp fast ole float %255, -1.000000e+00
  %259 = select i1 %257, float 0x47EFFFFFE0000000, float %256
  %260 = select i1 %258, float 0x47EFFFFFE0000000, float %255
  %261 = and i1 %258, %257
  %262 = call float @dx.op.binary.f32(i32 35, float %256, float %255)  ; FMax(a,b)
  %263 = call float @dx.op.binary.f32(i32 36, float %259, float %260)  ; FMin(a,b)
  %264 = select i1 %261, float %262, float %263
  br label %310

; <label>:265                                     ; preds = %222
  %266 = lshr i32 %72, 4
  %267 = mul i32 %266, %120
  %268 = lshr i32 %267, 1
  %269 = add i32 %72, 7
  %270 = and i32 %269, 4
  %271 = xor i32 %77, %270
  %272 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %216, i32 %271)  ; WaveReadLaneAt(value,lane)
  %273 = fcmp fast ole float %272, -1.000000e+00
  %274 = select i1 %273, float -1.000000e+00, float %272
  %275 = and i1 %224, %273
  %276 = call float @dx.op.binary.f32(i32 36, float %216, float %272)  ; FMin(a,b)
  %277 = call float @dx.op.binary.f32(i32 35, float %225, float %274)  ; FMax(a,b)
  %278 = select i1 %275, float %276, float %277
  %279 = add i32 %268, 0
  %280 = getelementptr [8 x float], [8 x float] addrspace(3)* @"\01?sharedFloatZMax@@3PAY03$$CAMA.1dim", i32 0, i32 %279
  store float %278, float addrspace(3)* %280, align 4, !tbaa !21
  %281 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %217, i32 %271)  ; WaveReadLaneAt(value,lane)
  %282 = fcmp fast ole float %281, -1.000000e+00
  %283 = select i1 %282, float 0x47EFFFFFE0000000, float %281
  %284 = and i1 %226, %282
  %285 = call float @dx.op.binary.f32(i32 35, float %217, float %281)  ; FMax(a,b)
  %286 = call float @dx.op.binary.f32(i32 36, float %227, float %283)  ; FMin(a,b)
  %287 = select i1 %284, float %285, float %286
  %288 = add i32 %268, 0
  %289 = getelementptr [8 x float], [8 x float] addrspace(3)* @"\01?sharedFloatZMin@@3PAY03$$CAMA.1dim", i32 0, i32 %288
  store float %287, float addrspace(3)* %289, align 4, !tbaa !21
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %290 = load float, float addrspace(3)* getelementptr inbounds ([8 x float], [8 x float] addrspace(3)* @"\01?sharedFloatZMax@@3PAY03$$CAMA.1dim", i32 0, i32 1), align 4, !tbaa !21
  %291 = load float, float addrspace(3)* getelementptr inbounds ([8 x float], [8 x float] addrspace(3)* @"\01?sharedFloatZMax@@3PAY03$$CAMA.1dim", i32 0, i32 0), align 4, !tbaa !21
  %292 = fcmp fast ole float %291, -1.000000e+00
  %293 = fcmp fast ole float %290, -1.000000e+00
  %294 = select i1 %292, float -1.000000e+00, float %291
  %295 = select i1 %293, float -1.000000e+00, float %290
  %296 = and i1 %293, %292
  %297 = call float @dx.op.binary.f32(i32 36, float %291, float %290)  ; FMin(a,b)
  %298 = call float @dx.op.binary.f32(i32 35, float %294, float %295)  ; FMax(a,b)
  %299 = select i1 %296, float %297, float %298
  %300 = load float, float addrspace(3)* getelementptr inbounds ([8 x float], [8 x float] addrspace(3)* @"\01?sharedFloatZMin@@3PAY03$$CAMA.1dim", i32 0, i32 1), align 4, !tbaa !21
  %301 = load float, float addrspace(3)* getelementptr inbounds ([8 x float], [8 x float] addrspace(3)* @"\01?sharedFloatZMin@@3PAY03$$CAMA.1dim", i32 0, i32 0), align 4, !tbaa !21
  %302 = fcmp fast ole float %301, -1.000000e+00
  %303 = fcmp fast ole float %300, -1.000000e+00
  %304 = select i1 %302, float 0x47EFFFFFE0000000, float %301
  %305 = select i1 %303, float 0x47EFFFFFE0000000, float %300
  %306 = and i1 %303, %302
  %307 = call float @dx.op.binary.f32(i32 35, float %301, float %300)  ; FMax(a,b)
  %308 = call float @dx.op.binary.f32(i32 36, float %304, float %305)  ; FMin(a,b)
  %309 = select i1 %306, float %307, float %308
  br label %310

; <label>:310                                     ; preds = %265, %228
  %311 = phi float [ %247, %228 ], [ %299, %265 ]
  %312 = phi float [ %264, %228 ], [ %309, %265 ]
  %313 = lshr i32 %70, 3
  %314 = lshr i32 %71, 3
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %5, i32 %313, i32 %314, i32 undef, float %311, float %311, float %311, float %311, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %313, i32 %314, i32 undef, float %312, float %312, float %312, float %312, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

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
!20 = distinct !{!20, !"dx.controlflow.hints", i32 2}
!21 = !{!22, !22, i64 0}
!22 = !{!"float", !23, i64 0}
!23 = !{!"omnipotent char", !24, i64 0}
!24 = !{!"Simple C/C++ TBAA"}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}

