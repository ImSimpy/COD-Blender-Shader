;
; Note: shader requires additional functionality:
;       64 UAV slots
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
; shader hash: 2adcbdb1c08a9c1de749964066ded447
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
;                                   cbuffer      NA          NA     CB0            cb1     1
;                                       UAV     f32          2d      U0             u0     1
;                                       UAV     f32          2d      U1             u2     1
;                                       UAV     f32          2d      U2             u3     1
;                                       UAV     f32          2d      U3             u4     1
;                                       UAV     f32          2d      U4             u5     1
;                                       UAV     f32          2d      U5             u6     1
;                                       UAV     f32          2d      U6             u7     1
;                                       UAV     f32          2d      U7             u8     1
;                                       UAV     f32          2d      U8             u9     1
;                                       UAV     f32          2d      U9            u10     1
;                                       UAV     f32          2d     U10            u11     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.RWTexture2D<float>" = type { float }
%ConstantBufferSSR1 = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@"\01?minLevel0@@3PAY0BA@$$CAMA.1dim" = addrspace(3) global [256 x float] undef, align 4
@"\01?minLevel1@@3PAY07$$CAMA.1dim" = addrspace(3) global [64 x float] undef, align 4
@"\01?minLevel2@@3PAY03$$CAMA.1dim" = addrspace(3) global [16 x float] undef, align 4
@"\01?minLevel3@@3PAY01$$CAMA.1dim" = addrspace(3) global [4 x float] undef, align 4
@"\01?maxLevel0@@3PAY0BA@$$CAMA.1dim" = addrspace(3) global [256 x float] undef, align 4
@"\01?maxLevel1@@3PAY07$$CAMA.1dim" = addrspace(3) global [64 x float] undef, align 4
@"\01?maxLevel2@@3PAY03$$CAMA.1dim" = addrspace(3) global [16 x float] undef, align 4
@"\01?maxLevel3@@3PAY01$$CAMA.1dim" = addrspace(3) global [4 x float] undef, align 4

define void @cs_ssr_generate_floatz_min_max_first() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 10, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 9, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 8, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 7, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 6, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 5, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 4, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %14 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %15 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %16 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %17 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %18 = call i32 @dx.op.groupId.i32(i32 94, i32 1)  ; GroupId(component)
  %19 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %20 = extractvalue %dx.types.CBufRet.i32 %19, 0
  %21 = shl i32 %17, 5
  %22 = sub i32 %20, %21
  %23 = call i32 @dx.op.binary.i32(i32 40, i32 %22, i32 32)  ; UMin(a,b)
  %24 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %25 = extractvalue %dx.types.CBufRet.i32 %24, 0
  %26 = shl i32 %18, 5
  %27 = sub i32 %25, %26
  %28 = call i32 @dx.op.binary.i32(i32 40, i32 %27, i32 32)  ; UMin(a,b)
  %29 = add i32 %20, -1
  %30 = add i32 %25, -1
  %31 = add nsw i32 %23, 1
  %32 = sdiv i32 %31, 2
  %33 = add nsw i32 %28, 1
  %34 = sdiv i32 %33, 2
  %35 = icmp ugt i32 %15, %32
  %36 = icmp ugt i32 %16, %34
  %37 = or i1 %35, %36
  %38 = icmp slt i32 %31, 2
  %39 = or i1 %38, %37
  %40 = icmp slt i32 %33, 2
  %41 = or i1 %40, %39
  br i1 %41, label %69, label %42, !dx.controlflow.hints !23

; <label>:42                                      ; preds = %0
  %43 = shl i32 %13, 1
  %44 = shl i32 %14, 1
  %45 = call i32 @dx.op.binary.i32(i32 40, i32 %43, i32 %29)  ; UMin(a,b)
  %46 = call i32 @dx.op.binary.i32(i32 40, i32 %44, i32 %30)  ; UMin(a,b)
  %47 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 undef, i32 %45, i32 %46, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %48 = extractvalue %dx.types.ResRet.f32 %47, 0
  %49 = or i32 %44, 1
  %50 = call i32 @dx.op.binary.i32(i32 40, i32 %49, i32 %30)  ; UMin(a,b)
  %51 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 undef, i32 %45, i32 %50, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %52 = extractvalue %dx.types.ResRet.f32 %51, 0
  %53 = or i32 %43, 1
  %54 = call i32 @dx.op.binary.i32(i32 40, i32 %53, i32 %29)  ; UMin(a,b)
  %55 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 undef, i32 %54, i32 %46, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %56 = extractvalue %dx.types.ResRet.f32 %55, 0
  %57 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 undef, i32 %54, i32 %50, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %58 = extractvalue %dx.types.ResRet.f32 %57, 0
  %59 = call float @dx.op.binary.f32(i32 36, float %52, float %56)  ; FMin(a,b)
  %60 = call float @dx.op.binary.f32(i32 36, float %48, float %59)  ; FMin(a,b)
  %61 = call float @dx.op.binary.f32(i32 36, float %60, float %58)  ; FMin(a,b)
  %62 = call float @dx.op.binary.f32(i32 36, float %61, float 6.550000e+04)  ; FMin(a,b)
  %63 = mul i32 %15, 16
  %64 = add i32 %16, %63
  %65 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?minLevel0@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %64
  store float %61, float addrspace(3)* %65, align 4, !tbaa !24
  %66 = mul i32 %15, 16
  %67 = add i32 %16, %66
  %68 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?maxLevel0@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %67
  store float %62, float addrspace(3)* %68, align 4, !tbaa !24
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %10, i32 %13, i32 %14, i32 undef, float %61, float %61, float %61, float %61, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %9, i32 %13, i32 %14, i32 undef, float %62, float %62, float %62, float %62, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %69

; <label>:69                                      ; preds = %42, %0
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %70 = add nsw i32 %32, -1
  %71 = add nsw i32 %34, -1
  %72 = add nsw i32 %32, 1
  %73 = sdiv i32 %72, 2
  %74 = add nsw i32 %34, 1
  %75 = sdiv i32 %74, 2
  %76 = icmp ult i32 %15, %73
  %77 = icmp ult i32 %16, %75
  %78 = and i1 %76, %77
  br i1 %78, label %79, label %136, !dx.controlflow.hints !28

; <label>:79                                      ; preds = %69
  %80 = shl i32 %15, 1
  %81 = shl i32 %16, 1
  %82 = call i32 @dx.op.binary.i32(i32 40, i32 %80, i32 %70)  ; UMin(a,b)
  %83 = call i32 @dx.op.binary.i32(i32 40, i32 %81, i32 %71)  ; UMin(a,b)
  %84 = or i32 %80, 1
  %85 = call i32 @dx.op.binary.i32(i32 40, i32 %84, i32 %70)  ; UMin(a,b)
  %86 = or i32 %81, 1
  %87 = call i32 @dx.op.binary.i32(i32 40, i32 %86, i32 %71)  ; UMin(a,b)
  %88 = mul i32 %82, 16
  %89 = add i32 %83, %88
  %90 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?minLevel0@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %89
  %91 = load float, float addrspace(3)* %90, align 4, !tbaa !24
  %92 = mul i32 %82, 16
  %93 = add i32 %83, %92
  %94 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?maxLevel0@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %93
  %95 = load float, float addrspace(3)* %94, align 4, !tbaa !24
  %96 = mul i32 %85, 16
  %97 = add i32 %83, %96
  %98 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?minLevel0@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %97
  %99 = load float, float addrspace(3)* %98, align 4, !tbaa !24
  %100 = mul i32 %85, 16
  %101 = add i32 %83, %100
  %102 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?maxLevel0@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %101
  %103 = load float, float addrspace(3)* %102, align 4, !tbaa !24
  %104 = mul i32 %82, 16
  %105 = add i32 %87, %104
  %106 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?minLevel0@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %105
  %107 = load float, float addrspace(3)* %106, align 4, !tbaa !24
  %108 = mul i32 %82, 16
  %109 = add i32 %87, %108
  %110 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?maxLevel0@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %109
  %111 = load float, float addrspace(3)* %110, align 4, !tbaa !24
  %112 = mul i32 %85, 16
  %113 = add i32 %87, %112
  %114 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?minLevel0@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %113
  %115 = load float, float addrspace(3)* %114, align 4, !tbaa !24
  %116 = mul i32 %85, 16
  %117 = add i32 %87, %116
  %118 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?maxLevel0@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %117
  %119 = load float, float addrspace(3)* %118, align 4, !tbaa !24
  %120 = call float @dx.op.binary.f32(i32 36, float %99, float %107)  ; FMin(a,b)
  %121 = call float @dx.op.binary.f32(i32 36, float %91, float %120)  ; FMin(a,b)
  %122 = call float @dx.op.binary.f32(i32 36, float %121, float %115)  ; FMin(a,b)
  %123 = call float @dx.op.binary.f32(i32 35, float %103, float %111)  ; FMax(a,b)
  %124 = call float @dx.op.binary.f32(i32 35, float %95, float %123)  ; FMax(a,b)
  %125 = call float @dx.op.binary.f32(i32 35, float %124, float %119)  ; FMax(a,b)
  %126 = mul i32 %15, 8
  %127 = add i32 %16, %126
  %128 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?minLevel1@@3PAY07$$CAMA.1dim", i32 0, i32 %127
  store float %122, float addrspace(3)* %128, align 4, !tbaa !24
  %129 = mul i32 %15, 8
  %130 = add i32 %16, %129
  %131 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?maxLevel1@@3PAY07$$CAMA.1dim", i32 0, i32 %130
  store float %125, float addrspace(3)* %131, align 4, !tbaa !24
  %132 = shl i32 %17, 3
  %133 = shl i32 %18, 3
  %134 = add i32 %132, %15
  %135 = add i32 %133, %16
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %8, i32 %134, i32 %135, i32 undef, float %122, float %122, float %122, float %122, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %7, i32 %134, i32 %135, i32 undef, float %125, float %125, float %125, float %125, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %136

; <label>:136                                     ; preds = %79, %69
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %137 = add nsw i32 %73, -1
  %138 = add nsw i32 %75, -1
  %139 = add nsw i32 %73, 1
  %140 = sdiv i32 %139, 2
  %141 = add nsw i32 %75, 1
  %142 = sdiv i32 %141, 2
  %143 = icmp ult i32 %15, %140
  %144 = icmp ult i32 %16, %142
  %145 = and i1 %143, %144
  br i1 %145, label %146, label %203, !dx.controlflow.hints !29

; <label>:146                                     ; preds = %136
  %147 = shl i32 %15, 1
  %148 = shl i32 %16, 1
  %149 = call i32 @dx.op.binary.i32(i32 40, i32 %147, i32 %137)  ; UMin(a,b)
  %150 = call i32 @dx.op.binary.i32(i32 40, i32 %148, i32 %138)  ; UMin(a,b)
  %151 = or i32 %147, 1
  %152 = call i32 @dx.op.binary.i32(i32 40, i32 %151, i32 %137)  ; UMin(a,b)
  %153 = or i32 %148, 1
  %154 = call i32 @dx.op.binary.i32(i32 40, i32 %153, i32 %138)  ; UMin(a,b)
  %155 = mul i32 %149, 8
  %156 = add i32 %150, %155
  %157 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?minLevel1@@3PAY07$$CAMA.1dim", i32 0, i32 %156
  %158 = load float, float addrspace(3)* %157, align 4, !tbaa !24
  %159 = mul i32 %149, 8
  %160 = add i32 %150, %159
  %161 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?maxLevel1@@3PAY07$$CAMA.1dim", i32 0, i32 %160
  %162 = load float, float addrspace(3)* %161, align 4, !tbaa !24
  %163 = mul i32 %152, 8
  %164 = add i32 %150, %163
  %165 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?minLevel1@@3PAY07$$CAMA.1dim", i32 0, i32 %164
  %166 = load float, float addrspace(3)* %165, align 4, !tbaa !24
  %167 = mul i32 %152, 8
  %168 = add i32 %150, %167
  %169 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?maxLevel1@@3PAY07$$CAMA.1dim", i32 0, i32 %168
  %170 = load float, float addrspace(3)* %169, align 4, !tbaa !24
  %171 = mul i32 %149, 8
  %172 = add i32 %154, %171
  %173 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?minLevel1@@3PAY07$$CAMA.1dim", i32 0, i32 %172
  %174 = load float, float addrspace(3)* %173, align 4, !tbaa !24
  %175 = mul i32 %149, 8
  %176 = add i32 %154, %175
  %177 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?maxLevel1@@3PAY07$$CAMA.1dim", i32 0, i32 %176
  %178 = load float, float addrspace(3)* %177, align 4, !tbaa !24
  %179 = mul i32 %152, 8
  %180 = add i32 %154, %179
  %181 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?minLevel1@@3PAY07$$CAMA.1dim", i32 0, i32 %180
  %182 = load float, float addrspace(3)* %181, align 4, !tbaa !24
  %183 = mul i32 %152, 8
  %184 = add i32 %154, %183
  %185 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?maxLevel1@@3PAY07$$CAMA.1dim", i32 0, i32 %184
  %186 = load float, float addrspace(3)* %185, align 4, !tbaa !24
  %187 = call float @dx.op.binary.f32(i32 36, float %166, float %174)  ; FMin(a,b)
  %188 = call float @dx.op.binary.f32(i32 36, float %158, float %187)  ; FMin(a,b)
  %189 = call float @dx.op.binary.f32(i32 36, float %188, float %182)  ; FMin(a,b)
  %190 = call float @dx.op.binary.f32(i32 35, float %170, float %178)  ; FMax(a,b)
  %191 = call float @dx.op.binary.f32(i32 35, float %162, float %190)  ; FMax(a,b)
  %192 = call float @dx.op.binary.f32(i32 35, float %191, float %186)  ; FMax(a,b)
  %193 = mul i32 %15, 4
  %194 = add i32 %16, %193
  %195 = getelementptr [16 x float], [16 x float] addrspace(3)* @"\01?minLevel2@@3PAY03$$CAMA.1dim", i32 0, i32 %194
  store float %189, float addrspace(3)* %195, align 4, !tbaa !24
  %196 = mul i32 %15, 4
  %197 = add i32 %16, %196
  %198 = getelementptr [16 x float], [16 x float] addrspace(3)* @"\01?maxLevel2@@3PAY03$$CAMA.1dim", i32 0, i32 %197
  store float %192, float addrspace(3)* %198, align 4, !tbaa !24
  %199 = shl i32 %17, 2
  %200 = shl i32 %18, 2
  %201 = add i32 %199, %15
  %202 = add i32 %200, %16
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %6, i32 %201, i32 %202, i32 undef, float %189, float %189, float %189, float %189, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %5, i32 %201, i32 %202, i32 undef, float %192, float %192, float %192, float %192, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %203

; <label>:203                                     ; preds = %146, %136
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %204 = add nsw i32 %140, -1
  %205 = add nsw i32 %142, -1
  %206 = add nsw i32 %140, 1
  %207 = sdiv i32 %206, 2
  %208 = add nsw i32 %142, 1
  %209 = sdiv i32 %208, 2
  %210 = icmp ult i32 %15, %207
  %211 = icmp ult i32 %16, %209
  %212 = and i1 %210, %211
  br i1 %212, label %213, label %270, !dx.controlflow.hints !30

; <label>:213                                     ; preds = %203
  %214 = shl i32 %15, 1
  %215 = shl i32 %16, 1
  %216 = call i32 @dx.op.binary.i32(i32 40, i32 %214, i32 %204)  ; UMin(a,b)
  %217 = call i32 @dx.op.binary.i32(i32 40, i32 %215, i32 %205)  ; UMin(a,b)
  %218 = or i32 %214, 1
  %219 = call i32 @dx.op.binary.i32(i32 40, i32 %218, i32 %204)  ; UMin(a,b)
  %220 = or i32 %215, 1
  %221 = call i32 @dx.op.binary.i32(i32 40, i32 %220, i32 %205)  ; UMin(a,b)
  %222 = mul i32 %216, 4
  %223 = add i32 %217, %222
  %224 = getelementptr [16 x float], [16 x float] addrspace(3)* @"\01?minLevel2@@3PAY03$$CAMA.1dim", i32 0, i32 %223
  %225 = load float, float addrspace(3)* %224, align 4, !tbaa !24
  %226 = mul i32 %216, 4
  %227 = add i32 %217, %226
  %228 = getelementptr [16 x float], [16 x float] addrspace(3)* @"\01?maxLevel2@@3PAY03$$CAMA.1dim", i32 0, i32 %227
  %229 = load float, float addrspace(3)* %228, align 4, !tbaa !24
  %230 = mul i32 %219, 4
  %231 = add i32 %217, %230
  %232 = getelementptr [16 x float], [16 x float] addrspace(3)* @"\01?minLevel2@@3PAY03$$CAMA.1dim", i32 0, i32 %231
  %233 = load float, float addrspace(3)* %232, align 4, !tbaa !24
  %234 = mul i32 %219, 4
  %235 = add i32 %217, %234
  %236 = getelementptr [16 x float], [16 x float] addrspace(3)* @"\01?maxLevel2@@3PAY03$$CAMA.1dim", i32 0, i32 %235
  %237 = load float, float addrspace(3)* %236, align 4, !tbaa !24
  %238 = mul i32 %216, 4
  %239 = add i32 %221, %238
  %240 = getelementptr [16 x float], [16 x float] addrspace(3)* @"\01?minLevel2@@3PAY03$$CAMA.1dim", i32 0, i32 %239
  %241 = load float, float addrspace(3)* %240, align 4, !tbaa !24
  %242 = mul i32 %216, 4
  %243 = add i32 %221, %242
  %244 = getelementptr [16 x float], [16 x float] addrspace(3)* @"\01?maxLevel2@@3PAY03$$CAMA.1dim", i32 0, i32 %243
  %245 = load float, float addrspace(3)* %244, align 4, !tbaa !24
  %246 = mul i32 %219, 4
  %247 = add i32 %221, %246
  %248 = getelementptr [16 x float], [16 x float] addrspace(3)* @"\01?minLevel2@@3PAY03$$CAMA.1dim", i32 0, i32 %247
  %249 = load float, float addrspace(3)* %248, align 4, !tbaa !24
  %250 = mul i32 %219, 4
  %251 = add i32 %221, %250
  %252 = getelementptr [16 x float], [16 x float] addrspace(3)* @"\01?maxLevel2@@3PAY03$$CAMA.1dim", i32 0, i32 %251
  %253 = load float, float addrspace(3)* %252, align 4, !tbaa !24
  %254 = call float @dx.op.binary.f32(i32 36, float %233, float %241)  ; FMin(a,b)
  %255 = call float @dx.op.binary.f32(i32 36, float %225, float %254)  ; FMin(a,b)
  %256 = call float @dx.op.binary.f32(i32 36, float %255, float %249)  ; FMin(a,b)
  %257 = call float @dx.op.binary.f32(i32 35, float %237, float %245)  ; FMax(a,b)
  %258 = call float @dx.op.binary.f32(i32 35, float %229, float %257)  ; FMax(a,b)
  %259 = call float @dx.op.binary.f32(i32 35, float %258, float %253)  ; FMax(a,b)
  %260 = mul i32 %15, 2
  %261 = add i32 %16, %260
  %262 = getelementptr [4 x float], [4 x float] addrspace(3)* @"\01?minLevel3@@3PAY01$$CAMA.1dim", i32 0, i32 %261
  store float %256, float addrspace(3)* %262, align 4, !tbaa !24
  %263 = mul i32 %15, 2
  %264 = add i32 %16, %263
  %265 = getelementptr [4 x float], [4 x float] addrspace(3)* @"\01?maxLevel3@@3PAY01$$CAMA.1dim", i32 0, i32 %264
  store float %259, float addrspace(3)* %265, align 4, !tbaa !24
  %266 = shl i32 %17, 1
  %267 = shl i32 %18, 1
  %268 = add i32 %266, %15
  %269 = add i32 %267, %16
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %268, i32 %269, i32 undef, float %256, float %256, float %256, float %256, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %268, i32 %269, i32 undef, float %259, float %259, float %259, float %259, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %270

; <label>:270                                     ; preds = %213, %203
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %271 = add nsw i32 %207, -1
  %272 = add nsw i32 %209, -1
  %273 = add nsw i32 %207, 1
  %274 = sdiv i32 %273, 2
  %275 = add nsw i32 %209, 1
  %276 = sdiv i32 %275, 2
  %277 = icmp ult i32 %15, %274
  %278 = icmp ult i32 %16, %276
  %279 = and i1 %277, %278
  br i1 %279, label %280, label %329, !dx.controlflow.hints !31

; <label>:280                                     ; preds = %270
  %281 = shl i32 %15, 1
  %282 = shl i32 %16, 1
  %283 = call i32 @dx.op.binary.i32(i32 40, i32 %281, i32 %271)  ; UMin(a,b)
  %284 = call i32 @dx.op.binary.i32(i32 40, i32 %282, i32 %272)  ; UMin(a,b)
  %285 = or i32 %281, 1
  %286 = call i32 @dx.op.binary.i32(i32 40, i32 %285, i32 %271)  ; UMin(a,b)
  %287 = or i32 %282, 1
  %288 = call i32 @dx.op.binary.i32(i32 40, i32 %287, i32 %272)  ; UMin(a,b)
  %289 = mul i32 %283, 2
  %290 = add i32 %284, %289
  %291 = getelementptr [4 x float], [4 x float] addrspace(3)* @"\01?minLevel3@@3PAY01$$CAMA.1dim", i32 0, i32 %290
  %292 = load float, float addrspace(3)* %291, align 4, !tbaa !24
  %293 = mul i32 %283, 2
  %294 = add i32 %284, %293
  %295 = getelementptr [4 x float], [4 x float] addrspace(3)* @"\01?maxLevel3@@3PAY01$$CAMA.1dim", i32 0, i32 %294
  %296 = load float, float addrspace(3)* %295, align 4, !tbaa !24
  %297 = mul i32 %286, 2
  %298 = add i32 %284, %297
  %299 = getelementptr [4 x float], [4 x float] addrspace(3)* @"\01?minLevel3@@3PAY01$$CAMA.1dim", i32 0, i32 %298
  %300 = load float, float addrspace(3)* %299, align 4, !tbaa !24
  %301 = mul i32 %286, 2
  %302 = add i32 %284, %301
  %303 = getelementptr [4 x float], [4 x float] addrspace(3)* @"\01?maxLevel3@@3PAY01$$CAMA.1dim", i32 0, i32 %302
  %304 = load float, float addrspace(3)* %303, align 4, !tbaa !24
  %305 = mul i32 %283, 2
  %306 = add i32 %288, %305
  %307 = getelementptr [4 x float], [4 x float] addrspace(3)* @"\01?minLevel3@@3PAY01$$CAMA.1dim", i32 0, i32 %306
  %308 = load float, float addrspace(3)* %307, align 4, !tbaa !24
  %309 = mul i32 %283, 2
  %310 = add i32 %288, %309
  %311 = getelementptr [4 x float], [4 x float] addrspace(3)* @"\01?maxLevel3@@3PAY01$$CAMA.1dim", i32 0, i32 %310
  %312 = load float, float addrspace(3)* %311, align 4, !tbaa !24
  %313 = mul i32 %286, 2
  %314 = add i32 %288, %313
  %315 = getelementptr [4 x float], [4 x float] addrspace(3)* @"\01?minLevel3@@3PAY01$$CAMA.1dim", i32 0, i32 %314
  %316 = load float, float addrspace(3)* %315, align 4, !tbaa !24
  %317 = mul i32 %286, 2
  %318 = add i32 %288, %317
  %319 = getelementptr [4 x float], [4 x float] addrspace(3)* @"\01?maxLevel3@@3PAY01$$CAMA.1dim", i32 0, i32 %318
  %320 = load float, float addrspace(3)* %319, align 4, !tbaa !24
  %321 = call float @dx.op.binary.f32(i32 36, float %300, float %308)  ; FMin(a,b)
  %322 = call float @dx.op.binary.f32(i32 36, float %292, float %321)  ; FMin(a,b)
  %323 = call float @dx.op.binary.f32(i32 36, float %322, float %316)  ; FMin(a,b)
  %324 = call float @dx.op.binary.f32(i32 35, float %304, float %312)  ; FMax(a,b)
  %325 = call float @dx.op.binary.f32(i32 35, float %296, float %324)  ; FMax(a,b)
  %326 = call float @dx.op.binary.f32(i32 35, float %325, float %320)  ; FMax(a,b)
  %327 = add i32 %17, %15
  %328 = add i32 %18, %16
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %327, i32 %328, i32 undef, float %323, float %323, float %323, float %323, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %327, i32 %328, i32 undef, float %326, float %326, float %326, float %326, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %329

; <label>:329                                     ; preds = %280, %270
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #3

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

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
!dx.entryPoints = !{!20}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{null, !5, !18, null}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17}
!6 = !{i32 0, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!9 = !{i32 2, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 3, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!10 = !{i32 3, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 4, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!11 = !{i32 4, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 5, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!12 = !{i32 5, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 6, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!13 = !{i32 6, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 7, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!14 = !{i32 7, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 8, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!15 = !{i32 8, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 9, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!16 = !{i32 9, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 10, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!17 = !{i32 10, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 11, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!18 = !{!19}
!19 = !{i32 0, %ConstantBufferSSR1* undef, !"", i32 0, i32 1, i32 1, i32 32, null}
!20 = !{void ()* @cs_ssr_generate_floatz_min_max_first, !"cs_ssr_generate_floatz_min_max_first", null, !4, !21}
!21 = !{i32 0, i64 33024, i32 4, !22}
!22 = !{i32 16, i32 16, i32 1}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = !{!25, !25, i64 0}
!25 = !{!"float", !26, i64 0}
!26 = !{!"omnipotent char", !27, i64 0}
!27 = !{!"Simple C/C++ TBAA"}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}

