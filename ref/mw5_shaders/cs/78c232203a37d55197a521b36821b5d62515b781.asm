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
; shader hash: 5999a7a39f775369edbafde0eb81edfc
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
;                                       UAV    byte         r/w      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%struct.RWByteAddressBuffer = type { i32 }
%ReflectionProbeSHConstants = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@"\01?s_shCoeffs@@3PAUSH3Vec@@A.0.1dim" = addrspace(3) global [2304 x float] undef, align 4

define void @cs_sh_reduce_offline() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %4 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %5 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  br label %6

; <label>:6                                       ; preds = %184, %0
  %7 = phi i32 [ 0, %0 ], [ %185, %184 ]
  %8 = shl i32 %5, 8
  %9 = add i32 %8, %4
  %10 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %2, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %11 = extractvalue %dx.types.CBufRet.i32 %10, 1
  %12 = icmp ult i32 %9, %11
  %13 = mul i32 %3, 9
  %14 = add i32 0, %13
  %15 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?s_shCoeffs@@3PAUSH3Vec@@A.0.1dim", i32 0, i32 %14
  %16 = mul i32 %3, 9
  %17 = add i32 1, %16
  %18 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?s_shCoeffs@@3PAUSH3Vec@@A.0.1dim", i32 0, i32 %17
  %19 = mul i32 %3, 9
  %20 = add i32 2, %19
  %21 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?s_shCoeffs@@3PAUSH3Vec@@A.0.1dim", i32 0, i32 %20
  %22 = mul i32 %3, 9
  %23 = add i32 3, %22
  %24 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?s_shCoeffs@@3PAUSH3Vec@@A.0.1dim", i32 0, i32 %23
  %25 = mul i32 %3, 9
  %26 = add i32 4, %25
  %27 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?s_shCoeffs@@3PAUSH3Vec@@A.0.1dim", i32 0, i32 %26
  %28 = mul i32 %3, 9
  %29 = add i32 5, %28
  %30 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?s_shCoeffs@@3PAUSH3Vec@@A.0.1dim", i32 0, i32 %29
  %31 = mul i32 %3, 9
  %32 = add i32 6, %31
  %33 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?s_shCoeffs@@3PAUSH3Vec@@A.0.1dim", i32 0, i32 %32
  %34 = mul i32 %3, 9
  %35 = add i32 7, %34
  %36 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?s_shCoeffs@@3PAUSH3Vec@@A.0.1dim", i32 0, i32 %35
  br i1 %12, label %37, label %67, !dx.controlflow.hints !12

; <label>:37                                      ; preds = %6
  %38 = mul i32 %11, %7
  %39 = add i32 %38, %9
  %40 = mul i32 %39, 36
  %41 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %40, i32 undef)  ; BufferLoad(srv,index,wot)
  %42 = extractvalue %dx.types.ResRet.f32 %41, 0
  store float %42, float addrspace(3)* %15, align 4
  %43 = add i32 %40, 4
  %44 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %43, i32 undef)  ; BufferLoad(srv,index,wot)
  %45 = extractvalue %dx.types.ResRet.f32 %44, 0
  store float %45, float addrspace(3)* %18, align 4
  %46 = add i32 %40, 8
  %47 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %46, i32 undef)  ; BufferLoad(srv,index,wot)
  %48 = extractvalue %dx.types.ResRet.f32 %47, 0
  store float %48, float addrspace(3)* %21, align 4
  %49 = add i32 %40, 12
  %50 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %49, i32 undef)  ; BufferLoad(srv,index,wot)
  %51 = extractvalue %dx.types.ResRet.f32 %50, 0
  store float %51, float addrspace(3)* %24, align 4
  %52 = add i32 %40, 16
  %53 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %52, i32 undef)  ; BufferLoad(srv,index,wot)
  %54 = extractvalue %dx.types.ResRet.f32 %53, 0
  store float %54, float addrspace(3)* %27, align 4
  %55 = add i32 %40, 20
  %56 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %55, i32 undef)  ; BufferLoad(srv,index,wot)
  %57 = extractvalue %dx.types.ResRet.f32 %56, 0
  store float %57, float addrspace(3)* %30, align 4
  %58 = add i32 %40, 24
  %59 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %58, i32 undef)  ; BufferLoad(srv,index,wot)
  %60 = extractvalue %dx.types.ResRet.f32 %59, 0
  store float %60, float addrspace(3)* %33, align 4
  %61 = add i32 %40, 28
  %62 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %61, i32 undef)  ; BufferLoad(srv,index,wot)
  %63 = extractvalue %dx.types.ResRet.f32 %62, 0
  store float %63, float addrspace(3)* %36, align 4
  %64 = add i32 %40, 32
  %65 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %64, i32 undef)  ; BufferLoad(srv,index,wot)
  %66 = extractvalue %dx.types.ResRet.f32 %65, 0
  br label %68

; <label>:67                                      ; preds = %6
  store float 0.000000e+00, float addrspace(3)* %15, align 4
  store float 0.000000e+00, float addrspace(3)* %18, align 4
  store float 0.000000e+00, float addrspace(3)* %21, align 4
  store float 0.000000e+00, float addrspace(3)* %24, align 4
  store float 0.000000e+00, float addrspace(3)* %27, align 4
  store float 0.000000e+00, float addrspace(3)* %30, align 4
  store float 0.000000e+00, float addrspace(3)* %33, align 4
  store float 0.000000e+00, float addrspace(3)* %36, align 4
  br label %68

; <label>:68                                      ; preds = %67, %37
  %69 = phi float [ 0.000000e+00, %67 ], [ %66, %37 ]
  %70 = mul i32 %3, 9
  %71 = add i32 8, %70
  %72 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?s_shCoeffs@@3PAUSH3Vec@@A.0.1dim", i32 0, i32 %71
  store float %69, float addrspace(3)* %72, align 4
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br label %73

; <label>:73                                      ; preds = %156, %68
  %74 = phi i32 [ 128, %68 ], [ %157, %156 ]
  %75 = icmp ult i32 %3, %74
  br i1 %75, label %76, label %156, !dx.controlflow.hints !13

; <label>:76                                      ; preds = %73
  %77 = add i32 %74, %3
  %78 = mul i32 %77, 9
  %79 = add i32 0, %78
  %80 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?s_shCoeffs@@3PAUSH3Vec@@A.0.1dim", i32 0, i32 %79
  %81 = load float, float addrspace(3)* %80, align 4, !tbaa !14
  %82 = mul i32 %3, 9
  %83 = add i32 0, %82
  %84 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?s_shCoeffs@@3PAUSH3Vec@@A.0.1dim", i32 0, i32 %83
  %85 = load float, float addrspace(3)* %84, align 4, !tbaa !14
  %86 = fadd fast float %85, %81
  store float %86, float addrspace(3)* %84, align 4, !tbaa !14
  %87 = mul i32 %77, 9
  %88 = add i32 1, %87
  %89 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?s_shCoeffs@@3PAUSH3Vec@@A.0.1dim", i32 0, i32 %88
  %90 = load float, float addrspace(3)* %89, align 4, !tbaa !14
  %91 = mul i32 %3, 9
  %92 = add i32 1, %91
  %93 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?s_shCoeffs@@3PAUSH3Vec@@A.0.1dim", i32 0, i32 %92
  %94 = load float, float addrspace(3)* %93, align 4, !tbaa !14
  %95 = fadd fast float %94, %90
  store float %95, float addrspace(3)* %93, align 4, !tbaa !14
  %96 = mul i32 %77, 9
  %97 = add i32 2, %96
  %98 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?s_shCoeffs@@3PAUSH3Vec@@A.0.1dim", i32 0, i32 %97
  %99 = load float, float addrspace(3)* %98, align 4, !tbaa !14
  %100 = mul i32 %3, 9
  %101 = add i32 2, %100
  %102 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?s_shCoeffs@@3PAUSH3Vec@@A.0.1dim", i32 0, i32 %101
  %103 = load float, float addrspace(3)* %102, align 4, !tbaa !14
  %104 = fadd fast float %103, %99
  store float %104, float addrspace(3)* %102, align 4, !tbaa !14
  %105 = mul i32 %77, 9
  %106 = add i32 3, %105
  %107 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?s_shCoeffs@@3PAUSH3Vec@@A.0.1dim", i32 0, i32 %106
  %108 = load float, float addrspace(3)* %107, align 4, !tbaa !14
  %109 = mul i32 %3, 9
  %110 = add i32 3, %109
  %111 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?s_shCoeffs@@3PAUSH3Vec@@A.0.1dim", i32 0, i32 %110
  %112 = load float, float addrspace(3)* %111, align 4, !tbaa !14
  %113 = fadd fast float %112, %108
  store float %113, float addrspace(3)* %111, align 4, !tbaa !14
  %114 = mul i32 %77, 9
  %115 = add i32 4, %114
  %116 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?s_shCoeffs@@3PAUSH3Vec@@A.0.1dim", i32 0, i32 %115
  %117 = load float, float addrspace(3)* %116, align 4, !tbaa !14
  %118 = mul i32 %3, 9
  %119 = add i32 4, %118
  %120 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?s_shCoeffs@@3PAUSH3Vec@@A.0.1dim", i32 0, i32 %119
  %121 = load float, float addrspace(3)* %120, align 4, !tbaa !14
  %122 = fadd fast float %121, %117
  store float %122, float addrspace(3)* %120, align 4, !tbaa !14
  %123 = mul i32 %77, 9
  %124 = add i32 5, %123
  %125 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?s_shCoeffs@@3PAUSH3Vec@@A.0.1dim", i32 0, i32 %124
  %126 = load float, float addrspace(3)* %125, align 4, !tbaa !14
  %127 = mul i32 %3, 9
  %128 = add i32 5, %127
  %129 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?s_shCoeffs@@3PAUSH3Vec@@A.0.1dim", i32 0, i32 %128
  %130 = load float, float addrspace(3)* %129, align 4, !tbaa !14
  %131 = fadd fast float %130, %126
  store float %131, float addrspace(3)* %129, align 4, !tbaa !14
  %132 = mul i32 %77, 9
  %133 = add i32 6, %132
  %134 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?s_shCoeffs@@3PAUSH3Vec@@A.0.1dim", i32 0, i32 %133
  %135 = load float, float addrspace(3)* %134, align 4, !tbaa !14
  %136 = mul i32 %3, 9
  %137 = add i32 6, %136
  %138 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?s_shCoeffs@@3PAUSH3Vec@@A.0.1dim", i32 0, i32 %137
  %139 = load float, float addrspace(3)* %138, align 4, !tbaa !14
  %140 = fadd fast float %139, %135
  store float %140, float addrspace(3)* %138, align 4, !tbaa !14
  %141 = mul i32 %77, 9
  %142 = add i32 7, %141
  %143 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?s_shCoeffs@@3PAUSH3Vec@@A.0.1dim", i32 0, i32 %142
  %144 = load float, float addrspace(3)* %143, align 4, !tbaa !14
  %145 = mul i32 %3, 9
  %146 = add i32 7, %145
  %147 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?s_shCoeffs@@3PAUSH3Vec@@A.0.1dim", i32 0, i32 %146
  %148 = load float, float addrspace(3)* %147, align 4, !tbaa !14
  %149 = fadd fast float %148, %144
  store float %149, float addrspace(3)* %147, align 4, !tbaa !14
  %150 = mul i32 %77, 9
  %151 = add i32 8, %150
  %152 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?s_shCoeffs@@3PAUSH3Vec@@A.0.1dim", i32 0, i32 %151
  %153 = load float, float addrspace(3)* %152, align 4, !tbaa !14
  %154 = load float, float addrspace(3)* %72, align 4, !tbaa !14
  %155 = fadd fast float %154, %153
  store float %155, float addrspace(3)* %72, align 4, !tbaa !14
  br label %156

; <label>:156                                     ; preds = %76, %73
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %157 = lshr i32 %74, 1
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %73

; <label>:159                                     ; preds = %156
  %160 = icmp eq i32 %3, 0
  br i1 %160, label %161, label %184, !dx.controlflow.hints !18

; <label>:161                                     ; preds = %159
  %162 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %2, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %163 = extractvalue %dx.types.CBufRet.i32 %162, 0
  %164 = mul i32 %163, %7
  %165 = add i32 %164, %5
  %166 = mul i32 %165, 36
  %167 = load float, float addrspace(3)* getelementptr inbounds ([2304 x float], [2304 x float] addrspace(3)* @"\01?s_shCoeffs@@3PAUSH3Vec@@A.0.1dim", i32 0, i32 0), align 4
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %166, i32 undef, float %167, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %168 = add i32 %166, 4
  %169 = load float, float addrspace(3)* getelementptr inbounds ([2304 x float], [2304 x float] addrspace(3)* @"\01?s_shCoeffs@@3PAUSH3Vec@@A.0.1dim", i32 0, i32 1), align 4
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %168, i32 undef, float %169, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %170 = add i32 %166, 8
  %171 = load float, float addrspace(3)* getelementptr inbounds ([2304 x float], [2304 x float] addrspace(3)* @"\01?s_shCoeffs@@3PAUSH3Vec@@A.0.1dim", i32 0, i32 2), align 4
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %170, i32 undef, float %171, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %172 = add i32 %166, 12
  %173 = load float, float addrspace(3)* getelementptr inbounds ([2304 x float], [2304 x float] addrspace(3)* @"\01?s_shCoeffs@@3PAUSH3Vec@@A.0.1dim", i32 0, i32 3), align 4
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %172, i32 undef, float %173, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %174 = add i32 %166, 16
  %175 = load float, float addrspace(3)* getelementptr inbounds ([2304 x float], [2304 x float] addrspace(3)* @"\01?s_shCoeffs@@3PAUSH3Vec@@A.0.1dim", i32 0, i32 4), align 4
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %174, i32 undef, float %175, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %176 = add i32 %166, 20
  %177 = load float, float addrspace(3)* getelementptr inbounds ([2304 x float], [2304 x float] addrspace(3)* @"\01?s_shCoeffs@@3PAUSH3Vec@@A.0.1dim", i32 0, i32 5), align 4
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %176, i32 undef, float %177, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %178 = add i32 %166, 24
  %179 = load float, float addrspace(3)* getelementptr inbounds ([2304 x float], [2304 x float] addrspace(3)* @"\01?s_shCoeffs@@3PAUSH3Vec@@A.0.1dim", i32 0, i32 6), align 4
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %178, i32 undef, float %179, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %180 = add i32 %166, 28
  %181 = load float, float addrspace(3)* getelementptr inbounds ([2304 x float], [2304 x float] addrspace(3)* @"\01?s_shCoeffs@@3PAUSH3Vec@@A.0.1dim", i32 0, i32 7), align 4
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %180, i32 undef, float %181, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %182 = add i32 %166, 32
  %183 = load float, float addrspace(3)* getelementptr inbounds ([2304 x float], [2304 x float] addrspace(3)* @"\01?s_shCoeffs@@3PAUSH3Vec@@A.0.1dim", i32 0, i32 8), align 4
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %182, i32 undef, float %183, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %184

; <label>:184                                     ; preds = %161, %159
  %185 = add nuw nsw i32 %7, 1
  %186 = icmp eq i32 %185, 4
  br i1 %186, label %187, label %6

; <label>:187                                     ; preds = %184
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind
declare void @dx.op.bufferStore.f32(i32, %dx.types.Handle, i32, i32, float, float, float, float, i8) #3

attributes #0 = { nounwind readnone }
attributes #1 = { noduplicate nounwind }
attributes #2 = { nounwind readonly }
attributes #3 = { nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!9}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{null, !5, !7, null}
!5 = !{!6}
!6 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!7 = !{!8}
!8 = !{i32 0, %ReflectionProbeSHConstants* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!9 = !{void ()* @cs_sh_reduce_offline, !"cs_sh_reduce_offline", null, !4, !10}
!10 = !{i32 0, i64 272, i32 4, !11}
!11 = !{i32 256, i32 1, i32 1}
!12 = distinct !{!12, !"dx.controlflow.hints", i32 2}
!13 = distinct !{!13, !"dx.controlflow.hints", i32 2}
!14 = !{!15, !15, i64 0}
!15 = !{!"float", !16, i64 0}
!16 = !{!"omnipotent char", !17, i64 0}
!17 = !{!"Simple C/C++ TBAA"}
!18 = distinct !{!18, !"dx.controlflow.hints", i32 2}

