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
; shader hash: 951b2d4f754e6c652891c4fde267ed55
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
;                                       UAV     f32          2d      U1             u1     1
;                                       UAV     f32          2d      U2             u2     1
;                                       UAV     f32          2d      U3             u3     1
;                                       UAV     f32          2d      U4             u4     1
;                                       UAV     f32          2d      U5             u5     1
;                                       UAV     f32          2d      U6             u6     1
;                                       UAV     f32          2d      U7             u7     1
;                                       UAV     f32          2d      U8             u8     1
;                                       UAV     f32          2d      U9             u9     1
;                                       UAV     f32          2d     U10            u10     1
;                                       UAV     f32          2d     U11            u11     1
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

define void @cs_ssr_generate_floatz_min_max() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 11, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 10, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 9, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 8, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 7, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 6, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 5, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %15 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %16 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %17 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %18 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %19 = call i32 @dx.op.groupId.i32(i32 94, i32 1)  ; GroupId(component)
  %20 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %21 = extractvalue %dx.types.CBufRet.i32 %20, 0
  %22 = shl i32 %18, 5
  %23 = sub i32 %21, %22
  %24 = call i32 @dx.op.binary.i32(i32 40, i32 %23, i32 32)  ; UMin(a,b)
  %25 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %26 = extractvalue %dx.types.CBufRet.i32 %25, 0
  %27 = shl i32 %19, 5
  %28 = sub i32 %26, %27
  %29 = call i32 @dx.op.binary.i32(i32 40, i32 %28, i32 32)  ; UMin(a,b)
  %30 = add i32 %21, -1
  %31 = add i32 %26, -1
  %32 = add nsw i32 %24, 1
  %33 = sdiv i32 %32, 2
  %34 = add nsw i32 %29, 1
  %35 = sdiv i32 %34, 2
  %36 = icmp ugt i32 %16, %33
  %37 = icmp ugt i32 %17, %35
  %38 = or i1 %36, %37
  %39 = icmp slt i32 %32, 2
  %40 = or i1 %39, %38
  %41 = icmp slt i32 %34, 2
  %42 = or i1 %41, %40
  br i1 %42, label %81, label %43, !dx.controlflow.hints !24

; <label>:43                                      ; preds = %0
  %44 = shl i32 %14, 1
  %45 = shl i32 %15, 1
  %46 = call i32 @dx.op.binary.i32(i32 40, i32 %44, i32 %30)  ; UMin(a,b)
  %47 = call i32 @dx.op.binary.i32(i32 40, i32 %45, i32 %31)  ; UMin(a,b)
  %48 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 undef, i32 %46, i32 %47, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %49 = extractvalue %dx.types.ResRet.f32 %48, 0
  %50 = or i32 %44, 1
  %51 = call i32 @dx.op.binary.i32(i32 40, i32 %50, i32 %30)  ; UMin(a,b)
  %52 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 undef, i32 %51, i32 %47, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %53 = extractvalue %dx.types.ResRet.f32 %52, 0
  %54 = or i32 %45, 1
  %55 = call i32 @dx.op.binary.i32(i32 40, i32 %54, i32 %31)  ; UMin(a,b)
  %56 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 undef, i32 %46, i32 %55, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %57 = extractvalue %dx.types.ResRet.f32 %56, 0
  %58 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 undef, i32 %51, i32 %55, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %59 = extractvalue %dx.types.ResRet.f32 %58, 0
  %60 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 undef, i32 %46, i32 %47, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %61 = extractvalue %dx.types.ResRet.f32 %60, 0
  %62 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 undef, i32 %51, i32 %47, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %63 = extractvalue %dx.types.ResRet.f32 %62, 0
  %64 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 undef, i32 %46, i32 %55, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %65 = extractvalue %dx.types.ResRet.f32 %64, 0
  %66 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 undef, i32 %51, i32 %55, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %67 = extractvalue %dx.types.ResRet.f32 %66, 0
  %68 = call float @dx.op.binary.f32(i32 36, float %53, float %57)  ; FMin(a,b)
  %69 = call float @dx.op.binary.f32(i32 36, float %49, float %68)  ; FMin(a,b)
  %70 = call float @dx.op.binary.f32(i32 36, float %69, float %59)  ; FMin(a,b)
  %71 = call float @dx.op.binary.f32(i32 35, float %63, float %65)  ; FMax(a,b)
  %72 = call float @dx.op.binary.f32(i32 35, float %61, float %71)  ; FMax(a,b)
  %73 = call float @dx.op.binary.f32(i32 35, float %72, float %67)  ; FMax(a,b)
  %74 = call float @dx.op.binary.f32(i32 36, float %73, float 6.550000e+04)  ; FMin(a,b)
  %75 = mul i32 %16, 16
  %76 = add i32 %17, %75
  %77 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?minLevel0@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %76
  store float %70, float addrspace(3)* %77, align 4, !tbaa !25
  %78 = mul i32 %16, 16
  %79 = add i32 %17, %78
  %80 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?maxLevel0@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %79
  store float %74, float addrspace(3)* %80, align 4, !tbaa !25
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %10, i32 %14, i32 %15, i32 undef, float %70, float %70, float %70, float %70, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %9, i32 %14, i32 %15, i32 undef, float %74, float %74, float %74, float %74, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %81

; <label>:81                                      ; preds = %43, %0
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %82 = add nsw i32 %33, -1
  %83 = add nsw i32 %35, -1
  %84 = add nsw i32 %33, 1
  %85 = sdiv i32 %84, 2
  %86 = add nsw i32 %35, 1
  %87 = sdiv i32 %86, 2
  %88 = icmp ult i32 %16, %85
  %89 = icmp ult i32 %17, %87
  %90 = and i1 %88, %89
  br i1 %90, label %91, label %148, !dx.controlflow.hints !29

; <label>:91                                      ; preds = %81
  %92 = shl i32 %16, 1
  %93 = shl i32 %17, 1
  %94 = call i32 @dx.op.binary.i32(i32 40, i32 %92, i32 %82)  ; UMin(a,b)
  %95 = call i32 @dx.op.binary.i32(i32 40, i32 %93, i32 %83)  ; UMin(a,b)
  %96 = or i32 %92, 1
  %97 = call i32 @dx.op.binary.i32(i32 40, i32 %96, i32 %82)  ; UMin(a,b)
  %98 = or i32 %93, 1
  %99 = call i32 @dx.op.binary.i32(i32 40, i32 %98, i32 %83)  ; UMin(a,b)
  %100 = mul i32 %94, 16
  %101 = add i32 %95, %100
  %102 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?minLevel0@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %101
  %103 = load float, float addrspace(3)* %102, align 4, !tbaa !25
  %104 = mul i32 %94, 16
  %105 = add i32 %95, %104
  %106 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?maxLevel0@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %105
  %107 = load float, float addrspace(3)* %106, align 4, !tbaa !25
  %108 = mul i32 %97, 16
  %109 = add i32 %95, %108
  %110 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?minLevel0@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %109
  %111 = load float, float addrspace(3)* %110, align 4, !tbaa !25
  %112 = mul i32 %97, 16
  %113 = add i32 %95, %112
  %114 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?maxLevel0@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %113
  %115 = load float, float addrspace(3)* %114, align 4, !tbaa !25
  %116 = mul i32 %94, 16
  %117 = add i32 %99, %116
  %118 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?minLevel0@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %117
  %119 = load float, float addrspace(3)* %118, align 4, !tbaa !25
  %120 = mul i32 %94, 16
  %121 = add i32 %99, %120
  %122 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?maxLevel0@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %121
  %123 = load float, float addrspace(3)* %122, align 4, !tbaa !25
  %124 = mul i32 %97, 16
  %125 = add i32 %99, %124
  %126 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?minLevel0@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %125
  %127 = load float, float addrspace(3)* %126, align 4, !tbaa !25
  %128 = mul i32 %97, 16
  %129 = add i32 %99, %128
  %130 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?maxLevel0@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %129
  %131 = load float, float addrspace(3)* %130, align 4, !tbaa !25
  %132 = call float @dx.op.binary.f32(i32 36, float %111, float %119)  ; FMin(a,b)
  %133 = call float @dx.op.binary.f32(i32 36, float %103, float %132)  ; FMin(a,b)
  %134 = call float @dx.op.binary.f32(i32 36, float %133, float %127)  ; FMin(a,b)
  %135 = call float @dx.op.binary.f32(i32 35, float %115, float %123)  ; FMax(a,b)
  %136 = call float @dx.op.binary.f32(i32 35, float %107, float %135)  ; FMax(a,b)
  %137 = call float @dx.op.binary.f32(i32 35, float %136, float %131)  ; FMax(a,b)
  %138 = mul i32 %16, 8
  %139 = add i32 %17, %138
  %140 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?minLevel1@@3PAY07$$CAMA.1dim", i32 0, i32 %139
  store float %134, float addrspace(3)* %140, align 4, !tbaa !25
  %141 = mul i32 %16, 8
  %142 = add i32 %17, %141
  %143 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?maxLevel1@@3PAY07$$CAMA.1dim", i32 0, i32 %142
  store float %137, float addrspace(3)* %143, align 4, !tbaa !25
  %144 = shl i32 %18, 3
  %145 = shl i32 %19, 3
  %146 = add i32 %144, %16
  %147 = add i32 %145, %17
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %8, i32 %146, i32 %147, i32 undef, float %134, float %134, float %134, float %134, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %7, i32 %146, i32 %147, i32 undef, float %137, float %137, float %137, float %137, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %148

; <label>:148                                     ; preds = %91, %81
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %149 = add nsw i32 %85, -1
  %150 = add nsw i32 %87, -1
  %151 = add nsw i32 %85, 1
  %152 = sdiv i32 %151, 2
  %153 = add nsw i32 %87, 1
  %154 = sdiv i32 %153, 2
  %155 = icmp ult i32 %16, %152
  %156 = icmp ult i32 %17, %154
  %157 = and i1 %155, %156
  br i1 %157, label %158, label %215, !dx.controlflow.hints !30

; <label>:158                                     ; preds = %148
  %159 = shl i32 %16, 1
  %160 = shl i32 %17, 1
  %161 = call i32 @dx.op.binary.i32(i32 40, i32 %159, i32 %149)  ; UMin(a,b)
  %162 = call i32 @dx.op.binary.i32(i32 40, i32 %160, i32 %150)  ; UMin(a,b)
  %163 = or i32 %159, 1
  %164 = call i32 @dx.op.binary.i32(i32 40, i32 %163, i32 %149)  ; UMin(a,b)
  %165 = or i32 %160, 1
  %166 = call i32 @dx.op.binary.i32(i32 40, i32 %165, i32 %150)  ; UMin(a,b)
  %167 = mul i32 %161, 8
  %168 = add i32 %162, %167
  %169 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?minLevel1@@3PAY07$$CAMA.1dim", i32 0, i32 %168
  %170 = load float, float addrspace(3)* %169, align 4, !tbaa !25
  %171 = mul i32 %161, 8
  %172 = add i32 %162, %171
  %173 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?maxLevel1@@3PAY07$$CAMA.1dim", i32 0, i32 %172
  %174 = load float, float addrspace(3)* %173, align 4, !tbaa !25
  %175 = mul i32 %164, 8
  %176 = add i32 %162, %175
  %177 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?minLevel1@@3PAY07$$CAMA.1dim", i32 0, i32 %176
  %178 = load float, float addrspace(3)* %177, align 4, !tbaa !25
  %179 = mul i32 %164, 8
  %180 = add i32 %162, %179
  %181 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?maxLevel1@@3PAY07$$CAMA.1dim", i32 0, i32 %180
  %182 = load float, float addrspace(3)* %181, align 4, !tbaa !25
  %183 = mul i32 %161, 8
  %184 = add i32 %166, %183
  %185 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?minLevel1@@3PAY07$$CAMA.1dim", i32 0, i32 %184
  %186 = load float, float addrspace(3)* %185, align 4, !tbaa !25
  %187 = mul i32 %161, 8
  %188 = add i32 %166, %187
  %189 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?maxLevel1@@3PAY07$$CAMA.1dim", i32 0, i32 %188
  %190 = load float, float addrspace(3)* %189, align 4, !tbaa !25
  %191 = mul i32 %164, 8
  %192 = add i32 %166, %191
  %193 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?minLevel1@@3PAY07$$CAMA.1dim", i32 0, i32 %192
  %194 = load float, float addrspace(3)* %193, align 4, !tbaa !25
  %195 = mul i32 %164, 8
  %196 = add i32 %166, %195
  %197 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?maxLevel1@@3PAY07$$CAMA.1dim", i32 0, i32 %196
  %198 = load float, float addrspace(3)* %197, align 4, !tbaa !25
  %199 = call float @dx.op.binary.f32(i32 36, float %178, float %186)  ; FMin(a,b)
  %200 = call float @dx.op.binary.f32(i32 36, float %170, float %199)  ; FMin(a,b)
  %201 = call float @dx.op.binary.f32(i32 36, float %200, float %194)  ; FMin(a,b)
  %202 = call float @dx.op.binary.f32(i32 35, float %182, float %190)  ; FMax(a,b)
  %203 = call float @dx.op.binary.f32(i32 35, float %174, float %202)  ; FMax(a,b)
  %204 = call float @dx.op.binary.f32(i32 35, float %203, float %198)  ; FMax(a,b)
  %205 = mul i32 %16, 4
  %206 = add i32 %17, %205
  %207 = getelementptr [16 x float], [16 x float] addrspace(3)* @"\01?minLevel2@@3PAY03$$CAMA.1dim", i32 0, i32 %206
  store float %201, float addrspace(3)* %207, align 4, !tbaa !25
  %208 = mul i32 %16, 4
  %209 = add i32 %17, %208
  %210 = getelementptr [16 x float], [16 x float] addrspace(3)* @"\01?maxLevel2@@3PAY03$$CAMA.1dim", i32 0, i32 %209
  store float %204, float addrspace(3)* %210, align 4, !tbaa !25
  %211 = shl i32 %18, 2
  %212 = shl i32 %19, 2
  %213 = add i32 %211, %16
  %214 = add i32 %212, %17
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %6, i32 %213, i32 %214, i32 undef, float %201, float %201, float %201, float %201, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %5, i32 %213, i32 %214, i32 undef, float %204, float %204, float %204, float %204, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %215

; <label>:215                                     ; preds = %158, %148
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %216 = add nsw i32 %152, -1
  %217 = add nsw i32 %154, -1
  %218 = add nsw i32 %152, 1
  %219 = sdiv i32 %218, 2
  %220 = add nsw i32 %154, 1
  %221 = sdiv i32 %220, 2
  %222 = icmp ult i32 %16, %219
  %223 = icmp ult i32 %17, %221
  %224 = and i1 %222, %223
  br i1 %224, label %225, label %282, !dx.controlflow.hints !31

; <label>:225                                     ; preds = %215
  %226 = shl i32 %16, 1
  %227 = shl i32 %17, 1
  %228 = call i32 @dx.op.binary.i32(i32 40, i32 %226, i32 %216)  ; UMin(a,b)
  %229 = call i32 @dx.op.binary.i32(i32 40, i32 %227, i32 %217)  ; UMin(a,b)
  %230 = or i32 %226, 1
  %231 = call i32 @dx.op.binary.i32(i32 40, i32 %230, i32 %216)  ; UMin(a,b)
  %232 = or i32 %227, 1
  %233 = call i32 @dx.op.binary.i32(i32 40, i32 %232, i32 %217)  ; UMin(a,b)
  %234 = mul i32 %228, 4
  %235 = add i32 %229, %234
  %236 = getelementptr [16 x float], [16 x float] addrspace(3)* @"\01?minLevel2@@3PAY03$$CAMA.1dim", i32 0, i32 %235
  %237 = load float, float addrspace(3)* %236, align 4, !tbaa !25
  %238 = mul i32 %228, 4
  %239 = add i32 %229, %238
  %240 = getelementptr [16 x float], [16 x float] addrspace(3)* @"\01?maxLevel2@@3PAY03$$CAMA.1dim", i32 0, i32 %239
  %241 = load float, float addrspace(3)* %240, align 4, !tbaa !25
  %242 = mul i32 %231, 4
  %243 = add i32 %229, %242
  %244 = getelementptr [16 x float], [16 x float] addrspace(3)* @"\01?minLevel2@@3PAY03$$CAMA.1dim", i32 0, i32 %243
  %245 = load float, float addrspace(3)* %244, align 4, !tbaa !25
  %246 = mul i32 %231, 4
  %247 = add i32 %229, %246
  %248 = getelementptr [16 x float], [16 x float] addrspace(3)* @"\01?maxLevel2@@3PAY03$$CAMA.1dim", i32 0, i32 %247
  %249 = load float, float addrspace(3)* %248, align 4, !tbaa !25
  %250 = mul i32 %228, 4
  %251 = add i32 %233, %250
  %252 = getelementptr [16 x float], [16 x float] addrspace(3)* @"\01?minLevel2@@3PAY03$$CAMA.1dim", i32 0, i32 %251
  %253 = load float, float addrspace(3)* %252, align 4, !tbaa !25
  %254 = mul i32 %228, 4
  %255 = add i32 %233, %254
  %256 = getelementptr [16 x float], [16 x float] addrspace(3)* @"\01?maxLevel2@@3PAY03$$CAMA.1dim", i32 0, i32 %255
  %257 = load float, float addrspace(3)* %256, align 4, !tbaa !25
  %258 = mul i32 %231, 4
  %259 = add i32 %233, %258
  %260 = getelementptr [16 x float], [16 x float] addrspace(3)* @"\01?minLevel2@@3PAY03$$CAMA.1dim", i32 0, i32 %259
  %261 = load float, float addrspace(3)* %260, align 4, !tbaa !25
  %262 = mul i32 %231, 4
  %263 = add i32 %233, %262
  %264 = getelementptr [16 x float], [16 x float] addrspace(3)* @"\01?maxLevel2@@3PAY03$$CAMA.1dim", i32 0, i32 %263
  %265 = load float, float addrspace(3)* %264, align 4, !tbaa !25
  %266 = call float @dx.op.binary.f32(i32 36, float %245, float %253)  ; FMin(a,b)
  %267 = call float @dx.op.binary.f32(i32 36, float %237, float %266)  ; FMin(a,b)
  %268 = call float @dx.op.binary.f32(i32 36, float %267, float %261)  ; FMin(a,b)
  %269 = call float @dx.op.binary.f32(i32 35, float %249, float %257)  ; FMax(a,b)
  %270 = call float @dx.op.binary.f32(i32 35, float %241, float %269)  ; FMax(a,b)
  %271 = call float @dx.op.binary.f32(i32 35, float %270, float %265)  ; FMax(a,b)
  %272 = mul i32 %16, 2
  %273 = add i32 %17, %272
  %274 = getelementptr [4 x float], [4 x float] addrspace(3)* @"\01?minLevel3@@3PAY01$$CAMA.1dim", i32 0, i32 %273
  store float %268, float addrspace(3)* %274, align 4, !tbaa !25
  %275 = mul i32 %16, 2
  %276 = add i32 %17, %275
  %277 = getelementptr [4 x float], [4 x float] addrspace(3)* @"\01?maxLevel3@@3PAY01$$CAMA.1dim", i32 0, i32 %276
  store float %271, float addrspace(3)* %277, align 4, !tbaa !25
  %278 = shl i32 %18, 1
  %279 = shl i32 %19, 1
  %280 = add i32 %278, %16
  %281 = add i32 %279, %17
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %280, i32 %281, i32 undef, float %268, float %268, float %268, float %268, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %280, i32 %281, i32 undef, float %271, float %271, float %271, float %271, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %282

; <label>:282                                     ; preds = %225, %215
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %283 = add nsw i32 %219, -1
  %284 = add nsw i32 %221, -1
  %285 = add nsw i32 %219, 1
  %286 = sdiv i32 %285, 2
  %287 = add nsw i32 %221, 1
  %288 = sdiv i32 %287, 2
  %289 = icmp ult i32 %16, %286
  %290 = icmp ult i32 %17, %288
  %291 = and i1 %289, %290
  br i1 %291, label %292, label %341, !dx.controlflow.hints !32

; <label>:292                                     ; preds = %282
  %293 = shl i32 %16, 1
  %294 = shl i32 %17, 1
  %295 = call i32 @dx.op.binary.i32(i32 40, i32 %293, i32 %283)  ; UMin(a,b)
  %296 = call i32 @dx.op.binary.i32(i32 40, i32 %294, i32 %284)  ; UMin(a,b)
  %297 = or i32 %293, 1
  %298 = call i32 @dx.op.binary.i32(i32 40, i32 %297, i32 %283)  ; UMin(a,b)
  %299 = or i32 %294, 1
  %300 = call i32 @dx.op.binary.i32(i32 40, i32 %299, i32 %284)  ; UMin(a,b)
  %301 = mul i32 %295, 2
  %302 = add i32 %296, %301
  %303 = getelementptr [4 x float], [4 x float] addrspace(3)* @"\01?minLevel3@@3PAY01$$CAMA.1dim", i32 0, i32 %302
  %304 = load float, float addrspace(3)* %303, align 4, !tbaa !25
  %305 = mul i32 %295, 2
  %306 = add i32 %296, %305
  %307 = getelementptr [4 x float], [4 x float] addrspace(3)* @"\01?maxLevel3@@3PAY01$$CAMA.1dim", i32 0, i32 %306
  %308 = load float, float addrspace(3)* %307, align 4, !tbaa !25
  %309 = mul i32 %298, 2
  %310 = add i32 %296, %309
  %311 = getelementptr [4 x float], [4 x float] addrspace(3)* @"\01?minLevel3@@3PAY01$$CAMA.1dim", i32 0, i32 %310
  %312 = load float, float addrspace(3)* %311, align 4, !tbaa !25
  %313 = mul i32 %298, 2
  %314 = add i32 %296, %313
  %315 = getelementptr [4 x float], [4 x float] addrspace(3)* @"\01?maxLevel3@@3PAY01$$CAMA.1dim", i32 0, i32 %314
  %316 = load float, float addrspace(3)* %315, align 4, !tbaa !25
  %317 = mul i32 %295, 2
  %318 = add i32 %300, %317
  %319 = getelementptr [4 x float], [4 x float] addrspace(3)* @"\01?minLevel3@@3PAY01$$CAMA.1dim", i32 0, i32 %318
  %320 = load float, float addrspace(3)* %319, align 4, !tbaa !25
  %321 = mul i32 %295, 2
  %322 = add i32 %300, %321
  %323 = getelementptr [4 x float], [4 x float] addrspace(3)* @"\01?maxLevel3@@3PAY01$$CAMA.1dim", i32 0, i32 %322
  %324 = load float, float addrspace(3)* %323, align 4, !tbaa !25
  %325 = mul i32 %298, 2
  %326 = add i32 %300, %325
  %327 = getelementptr [4 x float], [4 x float] addrspace(3)* @"\01?minLevel3@@3PAY01$$CAMA.1dim", i32 0, i32 %326
  %328 = load float, float addrspace(3)* %327, align 4, !tbaa !25
  %329 = mul i32 %298, 2
  %330 = add i32 %300, %329
  %331 = getelementptr [4 x float], [4 x float] addrspace(3)* @"\01?maxLevel3@@3PAY01$$CAMA.1dim", i32 0, i32 %330
  %332 = load float, float addrspace(3)* %331, align 4, !tbaa !25
  %333 = call float @dx.op.binary.f32(i32 36, float %312, float %320)  ; FMin(a,b)
  %334 = call float @dx.op.binary.f32(i32 36, float %304, float %333)  ; FMin(a,b)
  %335 = call float @dx.op.binary.f32(i32 36, float %334, float %328)  ; FMin(a,b)
  %336 = call float @dx.op.binary.f32(i32 35, float %316, float %324)  ; FMax(a,b)
  %337 = call float @dx.op.binary.f32(i32 35, float %308, float %336)  ; FMax(a,b)
  %338 = call float @dx.op.binary.f32(i32 35, float %337, float %332)  ; FMax(a,b)
  %339 = add i32 %18, %16
  %340 = add i32 %19, %17
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %339, i32 %340, i32 undef, float %335, float %335, float %335, float %335, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %339, i32 %340, i32 undef, float %338, float %338, float %338, float %338, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %341

; <label>:341                                     ; preds = %292, %282
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

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #3

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }
attributes #3 = { noduplicate nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!21}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{null, !5, !19, null}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18}
!6 = !{i32 0, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!9 = !{i32 2, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!10 = !{i32 3, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 3, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!11 = !{i32 4, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 4, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!12 = !{i32 5, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 5, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!13 = !{i32 6, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 6, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!14 = !{i32 7, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 7, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!15 = !{i32 8, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 8, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!16 = !{i32 9, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 9, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!17 = !{i32 10, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 10, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!18 = !{i32 11, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 11, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!19 = !{!20}
!20 = !{i32 0, %ConstantBufferSSR1* undef, !"", i32 0, i32 1, i32 1, i32 32, null}
!21 = !{void ()* @cs_ssr_generate_floatz_min_max, !"cs_ssr_generate_floatz_min_max", null, !4, !22}
!22 = !{i32 0, i64 33024, i32 4, !23}
!23 = !{i32 16, i32 16, i32 1}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = !{!26, !26, i64 0}
!26 = !{!"float", !27, i64 0}
!27 = !{!"omnipotent char", !28, i64 0}
!28 = !{!"Simple C/C++ TBAA"}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}

