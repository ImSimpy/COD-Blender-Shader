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
; shader hash: 7a05301171e04593648fb56a67a92333
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
;                                   sampler      NA          NA      S0             s4     1
;                                   texture     f32        cube      T0             t0     1
;                                       UAV    byte         r/w      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.TextureCube<vector<float, 4> >" = type { <4 x float> }
%struct.RWByteAddressBuffer = type { i32 }
%ReflectionProbeSHConstants = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.SamplerState = type { i32 }

@"\01?s_shCoeffs@@3PAUSH3Vec@@A.0.1dim" = addrspace(3) global [2304 x float] undef, align 4

define void @cs_cubemap_to_sh_offline() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %6 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %7 = call i32 @dx.op.groupId.i32(i32 94, i32 1)  ; GroupId(component)
  %8 = call i32 @dx.op.groupId.i32(i32 94, i32 2)  ; GroupId(component)
  %9 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %10 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %11 = call i32 @dx.op.threadId.i32(i32 93, i32 2)  ; ThreadId(component)
  %12 = alloca [4 x float], align 4
  %13 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %14 = extractvalue %dx.types.CBufRet.i32 %13, 0
  %15 = uitofp i32 %9 to float
  %16 = uitofp i32 %10 to float
  %17 = fadd fast float %15, 5.000000e-01
  %18 = fadd fast float %16, 5.000000e-01
  %19 = uitofp i32 %14 to float
  %20 = fdiv fast float 1.000000e+00, %19
  %21 = fmul fast float %17, 2.000000e+00
  %22 = fmul fast float %21, %20
  %23 = fmul fast float %18, 2.000000e+00
  %24 = fmul fast float %23, %20
  %25 = fadd fast float %22, -1.000000e+00
  %26 = fadd fast float %24, -1.000000e+00
  switch i32 %11, label %27 [
    i32 5, label %36
    i32 1, label %30
    i32 2, label %39
    i32 3, label %32
    i32 4, label %34
  ], !dx.controlflow.hints !17

; <label>:27                                      ; preds = %0
  %28 = fsub fast float -0.000000e+00, %26
  %29 = fsub fast float -0.000000e+00, %25
  br label %39

; <label>:30                                      ; preds = %0
  %31 = fsub fast float -0.000000e+00, %26
  br label %39

; <label>:32                                      ; preds = %0
  %33 = fsub fast float -0.000000e+00, %26
  br label %39

; <label>:34                                      ; preds = %0
  %35 = fsub fast float -0.000000e+00, %26
  br label %39

; <label>:36                                      ; preds = %0
  %37 = fsub fast float -0.000000e+00, %25
  %38 = fsub fast float -0.000000e+00, %26
  br label %39

; <label>:39                                      ; preds = %36, %34, %32, %30, %27, %0
  %40 = phi float [ 1.000000e+00, %27 ], [ %25, %34 ], [ %25, %32 ], [ -1.000000e+00, %30 ], [ %37, %36 ], [ %25, %0 ]
  %41 = phi float [ %28, %27 ], [ %35, %34 ], [ -1.000000e+00, %32 ], [ %31, %30 ], [ %38, %36 ], [ 1.000000e+00, %0 ]
  %42 = phi float [ %29, %27 ], [ 1.000000e+00, %34 ], [ %33, %32 ], [ %25, %30 ], [ -1.000000e+00, %36 ], [ %26, %0 ]
  %43 = call float @dx.op.dot3.f32(i32 55, float %40, float %41, float %42, float %40, float %41, float %42)  ; Dot3(ax,ay,az,bx,by,bz)
  %44 = call float @dx.op.unary.f32(i32 25, float %43)  ; Rsqrt(value)
  %45 = fmul fast float %44, %40
  %46 = fmul fast float %44, %41
  %47 = fmul fast float %44, %42
  %48 = fmul fast float %25, %25
  %49 = fadd fast float %48, 1.000000e+00
  %50 = fmul fast float %26, %26
  %51 = fadd fast float %49, %50
  %52 = call float @dx.op.unary.f32(i32 24, float %51)  ; Sqrt(value)
  %53 = fmul fast float %51, %52
  %54 = fdiv fast float 1.000000e+00, %53
  %55 = fmul fast float %47, 0x3FDF454380000000
  %56 = fmul fast float %47, %47
  %57 = fmul fast float %56, 0x3FEE471020000000
  %58 = fadd fast float %57, 0xBFD42F6020000000
  %59 = fmul fast float %45, 0xBFDF454380000000
  %60 = fmul fast float %46, 0xBFDF454380000000
  %61 = fmul fast float %47, 0xBFF17B1420000000
  %62 = fmul fast float %61, %45
  %63 = fmul fast float %61, %46
  %64 = fmul fast float %45, %45
  %65 = fmul fast float %46, %46
  %66 = fsub fast float %64, %65
  %67 = fmul fast float %66, 0x3FE17B1420000000
  %68 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %3, float %45, float %46, float %47, float undef, i32 undef, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %69 = extractvalue %dx.types.ResRet.f32 %68, 0
  %70 = extractvalue %dx.types.ResRet.f32 %68, 1
  %71 = extractvalue %dx.types.ResRet.f32 %68, 2
  %72 = call float @dx.op.dot3.f32(i32 55, float %69, float %70, float %71, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %73 = getelementptr inbounds [4 x float], [4 x float]* %12, i32 0, i32 0
  store float %72, float* %73, align 4, !tbaa !18, !alias.scope !22
  %74 = getelementptr inbounds [4 x float], [4 x float]* %12, i32 0, i32 1
  store float %69, float* %74, align 4, !tbaa !18, !alias.scope !22
  %75 = getelementptr inbounds [4 x float], [4 x float]* %12, i32 0, i32 2
  store float %70, float* %75, align 4, !tbaa !18, !alias.scope !22
  %76 = getelementptr inbounds [4 x float], [4 x float]* %12, i32 0, i32 3
  store float %71, float* %76, align 4, !tbaa !18, !alias.scope !22
  br label %77

; <label>:77                                      ; preds = %219, %39
  %78 = phi float [ %72, %39 ], [ %221, %219 ]
  %79 = phi i32 [ 0, %39 ], [ %217, %219 ]
  %80 = fmul fast float %20, %20
  %81 = fmul fast float %80, 4.000000e+00
  %82 = fmul fast float %81, %54
  %83 = fmul fast float %82, %78
  %84 = fmul fast float %83, 0x3FD20DD760000000
  %85 = mul i32 %5, 9
  %86 = add i32 0, %85
  %87 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?s_shCoeffs@@3PAUSH3Vec@@A.0.1dim", i32 0, i32 %86
  store float %84, float addrspace(3)* %87, align 4, !tbaa !18
  %88 = fmul fast float %60, %83
  %89 = mul i32 %5, 9
  %90 = add i32 1, %89
  %91 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?s_shCoeffs@@3PAUSH3Vec@@A.0.1dim", i32 0, i32 %90
  store float %88, float addrspace(3)* %91, align 4, !tbaa !18
  %92 = fmul fast float %55, %83
  %93 = mul i32 %5, 9
  %94 = add i32 2, %93
  %95 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?s_shCoeffs@@3PAUSH3Vec@@A.0.1dim", i32 0, i32 %94
  store float %92, float addrspace(3)* %95, align 4, !tbaa !18
  %96 = fmul fast float %59, %83
  %97 = mul i32 %5, 9
  %98 = add i32 3, %97
  %99 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?s_shCoeffs@@3PAUSH3Vec@@A.0.1dim", i32 0, i32 %98
  store float %96, float addrspace(3)* %99, align 4, !tbaa !18
  %100 = fmul fast float %41, 0x3FF17B1420000000
  %101 = fmul fast float %100, %44
  %102 = fmul fast float %101, %45
  %103 = fmul fast float %102, %83
  %104 = mul i32 %5, 9
  %105 = add i32 4, %104
  %106 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?s_shCoeffs@@3PAUSH3Vec@@A.0.1dim", i32 0, i32 %105
  store float %103, float addrspace(3)* %106, align 4, !tbaa !18
  %107 = fmul fast float %63, %83
  %108 = mul i32 %5, 9
  %109 = add i32 5, %108
  %110 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?s_shCoeffs@@3PAUSH3Vec@@A.0.1dim", i32 0, i32 %109
  store float %107, float addrspace(3)* %110, align 4, !tbaa !18
  %111 = fmul fast float %83, %58
  %112 = mul i32 %5, 9
  %113 = add i32 6, %112
  %114 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?s_shCoeffs@@3PAUSH3Vec@@A.0.1dim", i32 0, i32 %113
  store float %111, float addrspace(3)* %114, align 4, !tbaa !18
  %115 = fmul fast float %62, %83
  %116 = mul i32 %5, 9
  %117 = add i32 7, %116
  %118 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?s_shCoeffs@@3PAUSH3Vec@@A.0.1dim", i32 0, i32 %117
  store float %115, float addrspace(3)* %118, align 4, !tbaa !18
  %119 = fmul fast float %67, %83
  %120 = mul i32 %5, 9
  %121 = add i32 8, %120
  %122 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?s_shCoeffs@@3PAUSH3Vec@@A.0.1dim", i32 0, i32 %121
  store float %119, float addrspace(3)* %122, align 4, !tbaa !18
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br label %123

; <label>:123                                     ; preds = %182, %77
  %124 = phi i32 [ 128, %77 ], [ %183, %182 ]
  %125 = icmp ult i32 %5, %124
  br i1 %125, label %126, label %182, !dx.controlflow.hints !25

; <label>:126                                     ; preds = %123
  %127 = add i32 %124, %5
  %128 = mul i32 %127, 9
  %129 = add i32 0, %128
  %130 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?s_shCoeffs@@3PAUSH3Vec@@A.0.1dim", i32 0, i32 %129
  %131 = load float, float addrspace(3)* %130, align 4, !tbaa !18
  %132 = load float, float addrspace(3)* %87, align 4, !tbaa !18
  %133 = fadd fast float %132, %131
  store float %133, float addrspace(3)* %87, align 4, !tbaa !18
  %134 = mul i32 %127, 9
  %135 = add i32 1, %134
  %136 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?s_shCoeffs@@3PAUSH3Vec@@A.0.1dim", i32 0, i32 %135
  %137 = load float, float addrspace(3)* %136, align 4, !tbaa !18
  %138 = load float, float addrspace(3)* %91, align 4, !tbaa !18
  %139 = fadd fast float %138, %137
  store float %139, float addrspace(3)* %91, align 4, !tbaa !18
  %140 = mul i32 %127, 9
  %141 = add i32 2, %140
  %142 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?s_shCoeffs@@3PAUSH3Vec@@A.0.1dim", i32 0, i32 %141
  %143 = load float, float addrspace(3)* %142, align 4, !tbaa !18
  %144 = load float, float addrspace(3)* %95, align 4, !tbaa !18
  %145 = fadd fast float %144, %143
  store float %145, float addrspace(3)* %95, align 4, !tbaa !18
  %146 = mul i32 %127, 9
  %147 = add i32 3, %146
  %148 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?s_shCoeffs@@3PAUSH3Vec@@A.0.1dim", i32 0, i32 %147
  %149 = load float, float addrspace(3)* %148, align 4, !tbaa !18
  %150 = load float, float addrspace(3)* %99, align 4, !tbaa !18
  %151 = fadd fast float %150, %149
  store float %151, float addrspace(3)* %99, align 4, !tbaa !18
  %152 = mul i32 %127, 9
  %153 = add i32 4, %152
  %154 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?s_shCoeffs@@3PAUSH3Vec@@A.0.1dim", i32 0, i32 %153
  %155 = load float, float addrspace(3)* %154, align 4, !tbaa !18
  %156 = load float, float addrspace(3)* %106, align 4, !tbaa !18
  %157 = fadd fast float %156, %155
  store float %157, float addrspace(3)* %106, align 4, !tbaa !18
  %158 = mul i32 %127, 9
  %159 = add i32 5, %158
  %160 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?s_shCoeffs@@3PAUSH3Vec@@A.0.1dim", i32 0, i32 %159
  %161 = load float, float addrspace(3)* %160, align 4, !tbaa !18
  %162 = load float, float addrspace(3)* %110, align 4, !tbaa !18
  %163 = fadd fast float %162, %161
  store float %163, float addrspace(3)* %110, align 4, !tbaa !18
  %164 = mul i32 %127, 9
  %165 = add i32 6, %164
  %166 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?s_shCoeffs@@3PAUSH3Vec@@A.0.1dim", i32 0, i32 %165
  %167 = load float, float addrspace(3)* %166, align 4, !tbaa !18
  %168 = load float, float addrspace(3)* %114, align 4, !tbaa !18
  %169 = fadd fast float %168, %167
  store float %169, float addrspace(3)* %114, align 4, !tbaa !18
  %170 = mul i32 %127, 9
  %171 = add i32 7, %170
  %172 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?s_shCoeffs@@3PAUSH3Vec@@A.0.1dim", i32 0, i32 %171
  %173 = load float, float addrspace(3)* %172, align 4, !tbaa !18
  %174 = load float, float addrspace(3)* %118, align 4, !tbaa !18
  %175 = fadd fast float %174, %173
  store float %175, float addrspace(3)* %118, align 4, !tbaa !18
  %176 = mul i32 %127, 9
  %177 = add i32 8, %176
  %178 = getelementptr [2304 x float], [2304 x float] addrspace(3)* @"\01?s_shCoeffs@@3PAUSH3Vec@@A.0.1dim", i32 0, i32 %177
  %179 = load float, float addrspace(3)* %178, align 4, !tbaa !18
  %180 = load float, float addrspace(3)* %122, align 4, !tbaa !18
  %181 = fadd fast float %180, %179
  store float %181, float addrspace(3)* %122, align 4, !tbaa !18
  br label %182

; <label>:182                                     ; preds = %126, %123
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %183 = lshr i32 %124, 1
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %123

; <label>:185                                     ; preds = %182
  %186 = icmp eq i32 %5, 0
  br i1 %186, label %187, label %216, !dx.controlflow.hints !26

; <label>:187                                     ; preds = %185
  %188 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %189 = extractvalue %dx.types.CBufRet.i32 %188, 2
  %190 = mul i32 %189, %8
  %191 = add i32 %190, %7
  %192 = extractvalue %dx.types.CBufRet.i32 %188, 1
  %193 = mul i32 %191, %192
  %194 = add i32 %193, %6
  %195 = extractvalue %dx.types.CBufRet.i32 %188, 0
  %196 = mul i32 %195, %79
  %197 = add i32 %194, %196
  %198 = mul i32 %197, 36
  %199 = load float, float addrspace(3)* getelementptr inbounds ([2304 x float], [2304 x float] addrspace(3)* @"\01?s_shCoeffs@@3PAUSH3Vec@@A.0.1dim", i32 0, i32 0), align 4
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %198, i32 undef, float %199, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %200 = add i32 %198, 4
  %201 = load float, float addrspace(3)* getelementptr inbounds ([2304 x float], [2304 x float] addrspace(3)* @"\01?s_shCoeffs@@3PAUSH3Vec@@A.0.1dim", i32 0, i32 1), align 4
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %200, i32 undef, float %201, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %202 = add i32 %198, 8
  %203 = load float, float addrspace(3)* getelementptr inbounds ([2304 x float], [2304 x float] addrspace(3)* @"\01?s_shCoeffs@@3PAUSH3Vec@@A.0.1dim", i32 0, i32 2), align 4
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %202, i32 undef, float %203, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %204 = add i32 %198, 12
  %205 = load float, float addrspace(3)* getelementptr inbounds ([2304 x float], [2304 x float] addrspace(3)* @"\01?s_shCoeffs@@3PAUSH3Vec@@A.0.1dim", i32 0, i32 3), align 4
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %204, i32 undef, float %205, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %206 = add i32 %198, 16
  %207 = load float, float addrspace(3)* getelementptr inbounds ([2304 x float], [2304 x float] addrspace(3)* @"\01?s_shCoeffs@@3PAUSH3Vec@@A.0.1dim", i32 0, i32 4), align 4
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %206, i32 undef, float %207, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %208 = add i32 %198, 20
  %209 = load float, float addrspace(3)* getelementptr inbounds ([2304 x float], [2304 x float] addrspace(3)* @"\01?s_shCoeffs@@3PAUSH3Vec@@A.0.1dim", i32 0, i32 5), align 4
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %208, i32 undef, float %209, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %210 = add i32 %198, 24
  %211 = load float, float addrspace(3)* getelementptr inbounds ([2304 x float], [2304 x float] addrspace(3)* @"\01?s_shCoeffs@@3PAUSH3Vec@@A.0.1dim", i32 0, i32 6), align 4
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %210, i32 undef, float %211, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %212 = add i32 %198, 28
  %213 = load float, float addrspace(3)* getelementptr inbounds ([2304 x float], [2304 x float] addrspace(3)* @"\01?s_shCoeffs@@3PAUSH3Vec@@A.0.1dim", i32 0, i32 7), align 4
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %212, i32 undef, float %213, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %214 = add i32 %198, 32
  %215 = load float, float addrspace(3)* getelementptr inbounds ([2304 x float], [2304 x float] addrspace(3)* @"\01?s_shCoeffs@@3PAUSH3Vec@@A.0.1dim", i32 0, i32 8), align 4
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %214, i32 undef, float %215, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %216

; <label>:216                                     ; preds = %187, %185
  %217 = add nuw nsw i32 %79, 1
  %218 = icmp eq i32 %217, 4
  br i1 %218, label %222, label %219

; <label>:219                                     ; preds = %216
  %220 = getelementptr inbounds [4 x float], [4 x float]* %12, i32 0, i32 %217
  %221 = load float, float* %220, align 4, !tbaa !18
  br label %77

; <label>:222                                     ; preds = %216
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

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
!dx.entryPoints = !{!14}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !8, !10, !12}
!5 = !{!6}
!6 = !{i32 0, %"class.TextureCube<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 5, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{!9}
!9 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!10 = !{!11}
!11 = !{i32 0, %ReflectionProbeSHConstants* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!12 = !{!13}
!13 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!14 = !{void ()* @cs_cubemap_to_sh_offline, !"cs_cubemap_to_sh_offline", null, !4, !15}
!15 = !{i32 0, i64 272, i32 4, !16}
!16 = !{i32 16, i32 16, i32 1}
!17 = distinct !{!17, !"dx.controlflow.hints", i32 2}
!18 = !{!19, !19, i64 0}
!19 = !{!"float", !20, i64 0}
!20 = !{!"omnipotent char", !21, i64 0}
!21 = !{!"Simple C/C++ TBAA"}
!22 = !{!23}
!23 = distinct !{!23, !24, !"\01?LoadRadiance@@YAXV?$TextureCube@V?$vector@M$03@@@@V?$vector@M$02@@Y03$$CAM@Z: %radiance"}
!24 = distinct !{!24, !"\01?LoadRadiance@@YAXV?$TextureCube@V?$vector@M$03@@@@V?$vector@M$02@@Y03$$CAM@Z"}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}

