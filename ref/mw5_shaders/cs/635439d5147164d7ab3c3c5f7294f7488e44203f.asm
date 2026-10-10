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
; shader hash: 695a3031fc463415d1a5d29252c36f61
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
; cbuffer 
; {
;
;   [3376 x i8] (type annotation not present)
;
; }
;
; Resource bind info for 
; {
;
;   [36 x i8] (type annotation not present)
; }
;
; Resource bind info for 
; {
;
;   [24 x i8] (type annotation not present)
; }
;
; Resource bind info for 
; {
;
;   [4 x i8] (type annotation not present)
;
; }
;
; Resource bind info for 
; {
;
;   [4 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb1     1
;                                   cbuffer      NA          NA     CB1            cb5     1
;                                   texture  struct         r/o      T0             t0     1
;                                   texture  struct         r/o      T1             t1     1
;                                       UAV  struct         r/w      U0             u0     1
;                                       UAV  struct         r/w      U1             u1     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%"class.StructuredBuffer<GfxWaveParticleSystem>" = type { %struct.GfxWaveParticleSystem }
%struct.GfxWaveParticleSystem = type { float, float, i32, float, float, float, float, i32, i32 }
%"class.StructuredBuffer<GfxWaveParticleInstance>" = type { %struct.GfxWaveParticleInstance }
%struct.GfxWaveParticleInstance = type { <2 x float>, <2 x float>, float, float }
%"class.RWStructuredBuffer<unsigned int>" = type { i32 }
%waterWaveParticles = type { %struct.WaterWaveParticleCsConstants }
%struct.WaterWaveParticleCsConstants = type { i32, i32, i32, i32 }
%hostlayout.waterConstants = type { %hostlayout.struct.GfxWaterConstants }
%hostlayout.struct.GfxWaterConstants = type { i32, float, float, float, float, float, float, i32, <3 x float>, float, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, float, float, float, float, i32, float, float, float, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, float, float, float, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [16 x <4 x float>], [16 x <4 x float>], <4 x float>, <4 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, [2 x <4 x i32>], [2 x <4 x i32>], [2 x <4 x i32>], [39 x <4 x i32>], [39 x <4 x i32>], [39 x <4 x i32>], <4 x i32>, <4 x float>, <4 x i32>, <4 x i32>, <4 x i32>, float, float, float, float, <3 x float>, i32, <3 x float>, i32, float, i32, i32, i32, float, float, float, float, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, i32, i32, i32, float, i32, i32, float, i32, i32, float, float, i32, float, i32, i32, i32 }

@"\01?tiledSharedMem@@3PAIA" = external addrspace(3) global [64 x i32], align 4
@"\01?groupshared_indexToFirstItem@@3IA" = external addrspace(3) global i32, align 4

define void @cs_water_wave_particles_buckets() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = alloca [4 x float], align 4
  %8 = alloca [4 x float], align 4
  %9 = alloca [4 x float], align 4
  %10 = alloca [4 x float], align 4
  %11 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %12 = call i32 @dx.op.groupId.i32(i32 94, i32 1)  ; GroupId(component)
  %13 = call i32 @dx.op.groupId.i32(i32 94, i32 2)  ; GroupId(component)
  %14 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %15 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %16 = extractvalue %dx.types.CBufRet.i32 %15, 0
  %17 = lshr i32 %16, 2
  %18 = and i32 %16, 3
  %19 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %17, i32 28)  ; BufferLoad(srv,index,wot)
  %20 = extractvalue %dx.types.ResRet.i32 %19, 0
  %21 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %17, i32 32)  ; BufferLoad(srv,index,wot)
  %22 = extractvalue %dx.types.ResRet.i32 %21, 0
  %23 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %24 = extractvalue %dx.types.CBufRet.i32 %23, 2
  %25 = call i32 @dx.op.binary.i32(i32 40, i32 %20, i32 %24)  ; UMin(a,b)
  %26 = icmp ult i32 %11, %25
  %27 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %28 = extractvalue %dx.types.CBufRet.i32 %27, 0
  %29 = call i32 @dx.op.tertiary.i32(i32 49, i32 %13, i32 %28, i32 %12)  ; UMad(a,b,c)
  %30 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 22)  ; CBufferLoadLegacy(handle,regIndex)
  %31 = extractvalue %dx.types.CBufRet.i32 %30, 2
  %32 = call i32 @dx.op.tertiary.i32(i32 49, i32 %16, i32 %31, i32 %29)  ; UMad(a,b,c)
  %33 = extractvalue %dx.types.CBufRet.i32 %23, 1
  %34 = extractvalue %dx.types.CBufRet.i32 %23, 0
  %35 = mul i32 %34, %29
  %36 = call i32 @dx.op.tertiary.i32(i32 49, i32 %16, i32 %33, i32 %35)  ; UMad(a,b,c)
  %37 = add i32 %22, %11
  %38 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %37, i32 0)  ; BufferLoad(srv,index,wot)
  %39 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %37, i32 8)  ; BufferLoad(srv,index,wot)
  %40 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %37, i32 20)  ; BufferLoad(srv,index,wot)
  %41 = extractvalue %dx.types.ResRet.f32 %40, 0
  %42 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %43 = extractvalue %dx.types.CBufRet.f32 %42, 0
  %44 = extractvalue %dx.types.CBufRet.f32 %42, 1
  %45 = extractvalue %dx.types.CBufRet.f32 %42, 2
  %46 = extractvalue %dx.types.CBufRet.f32 %42, 3
  %47 = getelementptr inbounds [4 x float], [4 x float]* %7, i32 0, i32 0
  store float %43, float* %47, align 4
  %48 = getelementptr inbounds [4 x float], [4 x float]* %7, i32 0, i32 1
  store float %44, float* %48, align 4
  %49 = getelementptr inbounds [4 x float], [4 x float]* %7, i32 0, i32 2
  store float %45, float* %49, align 4
  %50 = getelementptr inbounds [4 x float], [4 x float]* %7, i32 0, i32 3
  store float %46, float* %50, align 4
  %51 = getelementptr inbounds [4 x float], [4 x float]* %7, i32 0, i32 %18
  %52 = load float, float* %51, align 4, !tbaa !20
  %53 = fcmp fast oge float %41, %52
  %54 = and i1 %26, %53
  %55 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %56 = extractvalue %dx.types.CBufRet.f32 %55, 0
  %57 = extractvalue %dx.types.CBufRet.f32 %55, 1
  %58 = extractvalue %dx.types.CBufRet.f32 %55, 2
  %59 = extractvalue %dx.types.CBufRet.f32 %55, 3
  %60 = getelementptr inbounds [4 x float], [4 x float]* %8, i32 0, i32 0
  store float %56, float* %60, align 4
  %61 = getelementptr inbounds [4 x float], [4 x float]* %8, i32 0, i32 1
  store float %57, float* %61, align 4
  %62 = getelementptr inbounds [4 x float], [4 x float]* %8, i32 0, i32 2
  store float %58, float* %62, align 4
  %63 = getelementptr inbounds [4 x float], [4 x float]* %8, i32 0, i32 3
  store float %59, float* %63, align 4
  %64 = getelementptr inbounds [4 x float], [4 x float]* %8, i32 0, i32 %18
  %65 = load float, float* %64, align 4, !tbaa !20
  %66 = fcmp fast ole float %41, %65
  %67 = and i1 %54, %66
  br i1 %67, label %68, label %145, !dx.controlflow.hints !24

; <label>:68                                      ; preds = %0
  %69 = extractvalue %dx.types.ResRet.f32 %39, 1
  %70 = extractvalue %dx.types.ResRet.f32 %39, 0
  %71 = extractvalue %dx.types.ResRet.f32 %38, 1
  %72 = extractvalue %dx.types.ResRet.f32 %38, 0
  %73 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %74 = extractvalue %dx.types.CBufRet.f32 %73, 0
  %75 = extractvalue %dx.types.CBufRet.f32 %73, 1
  %76 = extractvalue %dx.types.CBufRet.f32 %73, 2
  %77 = extractvalue %dx.types.CBufRet.f32 %73, 3
  %78 = getelementptr inbounds [4 x float], [4 x float]* %9, i32 0, i32 0
  store float %74, float* %78, align 4
  %79 = getelementptr inbounds [4 x float], [4 x float]* %9, i32 0, i32 1
  store float %75, float* %79, align 4
  %80 = getelementptr inbounds [4 x float], [4 x float]* %9, i32 0, i32 2
  store float %76, float* %80, align 4
  %81 = getelementptr inbounds [4 x float], [4 x float]* %9, i32 0, i32 3
  store float %77, float* %81, align 4
  %82 = getelementptr inbounds [4 x float], [4 x float]* %9, i32 0, i32 %18
  %83 = load float, float* %82, align 4, !tbaa !20
  %84 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 25)  ; CBufferLoadLegacy(handle,regIndex)
  %85 = extractvalue %dx.types.CBufRet.f32 %84, 0
  %86 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %87 = extractvalue %dx.types.CBufRet.f32 %86, 3
  %88 = fmul fast float %85, %83
  %89 = fmul fast float %88, %87
  %90 = fmul fast float %89, %70
  %91 = fmul fast float %89, %69
  %92 = fadd fast float %90, %72
  %93 = fadd fast float %91, %71
  %94 = call float @dx.op.unary.f32(i32 22, float %92)  ; Frc(value)
  %95 = call float @dx.op.unary.f32(i32 22, float %93)  ; Frc(value)
  %96 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %97 = extractvalue %dx.types.CBufRet.f32 %96, 0
  %98 = extractvalue %dx.types.CBufRet.f32 %96, 1
  %99 = extractvalue %dx.types.CBufRet.f32 %96, 2
  %100 = extractvalue %dx.types.CBufRet.f32 %96, 3
  %101 = getelementptr inbounds [4 x float], [4 x float]* %10, i32 0, i32 0
  store float %97, float* %101, align 4
  %102 = getelementptr inbounds [4 x float], [4 x float]* %10, i32 0, i32 1
  store float %98, float* %102, align 4
  %103 = getelementptr inbounds [4 x float], [4 x float]* %10, i32 0, i32 2
  store float %99, float* %103, align 4
  %104 = getelementptr inbounds [4 x float], [4 x float]* %10, i32 0, i32 3
  store float %100, float* %104, align 4
  %105 = getelementptr inbounds [4 x float], [4 x float]* %10, i32 0, i32 %18
  %106 = load float, float* %105, align 4, !tbaa !20
  %107 = fmul fast float %106, %41
  %108 = uitofp i32 %12 to float
  %109 = uitofp i32 %13 to float
  %110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 22)  ; CBufferLoadLegacy(handle,regIndex)
  %111 = extractvalue %dx.types.CBufRet.f32 %110, 3
  %112 = fmul fast float %108, 2.000000e+00
  %113 = fmul fast float %112, %111
  %114 = fadd fast float %113, %111
  %115 = fmul fast float %109, 2.000000e+00
  %116 = fmul fast float %115, %111
  %117 = fadd fast float %116, %111
  %118 = fmul fast float %114, 5.000000e-01
  %119 = fmul fast float %117, 5.000000e-01
  %120 = fmul fast float %111, 5.000000e-01
  %121 = fsub fast float %94, %118
  %122 = fsub fast float %95, %119
  %123 = call float @dx.op.unary.f32(i32 6, float %121)  ; FAbs(value)
  %124 = call float @dx.op.unary.f32(i32 6, float %122)  ; FAbs(value)
  %125 = fcmp fast ogt float %123, 5.000000e-01
  %126 = fcmp fast ogt float %124, 5.000000e-01
  %127 = fsub fast float 1.000000e+00, %123
  %128 = select i1 %125, float %127, float %123
  %129 = fsub fast float 1.000000e+00, %124
  %130 = select i1 %126, float %129, float %124
  %131 = fmul fast float %128, %128
  %132 = fmul fast float %130, %130
  %133 = fadd fast float %132, %131
  %134 = fmul fast float %111, 0x3FF6A09E60000000
  %135 = fadd fast float %134, %107
  %136 = fmul fast float %135, %107
  %137 = fmul fast float %120, %111
  %138 = fadd fast float %136, %137
  %139 = fcmp fast ole float %133, %138
  %140 = fadd fast float %120, %107
  %141 = fcmp fast ole float %128, %140
  %142 = fcmp fast ole float %130, %140
  %143 = and i1 %141, %139
  %144 = and i1 %142, %143
  br label %145

; <label>:145                                     ; preds = %68, %0
  %146 = phi i1 [ %144, %68 ], [ false, %0 ]
  %147 = zext i1 %146 to i32
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %148 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %14
  store i32 %147, i32 addrspace(3)* %148, align 4, !tbaa !25, !noalias !27
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %149 = and i32 %14, 1
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %157, label %151, !dx.controlflow.hints !31

; <label>:151                                     ; preds = %145
  %152 = and i32 %14, -2
  %153 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %152
  %154 = load i32, i32 addrspace(3)* %153, align 4, !tbaa !25, !noalias !27
  %155 = load i32, i32 addrspace(3)* %148, align 4, !tbaa !25, !noalias !27
  %156 = add i32 %155, %154
  store i32 %156, i32 addrspace(3)* %148, align 4, !tbaa !25, !noalias !27
  br label %157

; <label>:157                                     ; preds = %151, %145
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %158 = and i32 %14, 2
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %167, label %160, !dx.controlflow.hints !32

; <label>:160                                     ; preds = %157
  %161 = and i32 %14, -4
  %162 = or i32 %161, 1
  %163 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %162
  %164 = load i32, i32 addrspace(3)* %163, align 4, !tbaa !25, !noalias !27
  %165 = load i32, i32 addrspace(3)* %148, align 4, !tbaa !25, !noalias !27
  %166 = add i32 %165, %164
  store i32 %166, i32 addrspace(3)* %148, align 4, !tbaa !25, !noalias !27
  br label %167

; <label>:167                                     ; preds = %160, %157
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %168 = and i32 %14, 4
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %177, label %170, !dx.controlflow.hints !33

; <label>:170                                     ; preds = %167
  %171 = and i32 %14, -8
  %172 = or i32 %171, 3
  %173 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %172
  %174 = load i32, i32 addrspace(3)* %173, align 4, !tbaa !25, !noalias !27
  %175 = load i32, i32 addrspace(3)* %148, align 4, !tbaa !25, !noalias !27
  %176 = add i32 %175, %174
  store i32 %176, i32 addrspace(3)* %148, align 4, !tbaa !25, !noalias !27
  br label %177

; <label>:177                                     ; preds = %170, %167
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %178 = and i32 %14, 8
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %187, label %180, !dx.controlflow.hints !34

; <label>:180                                     ; preds = %177
  %181 = and i32 %14, -16
  %182 = or i32 %181, 7
  %183 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %182
  %184 = load i32, i32 addrspace(3)* %183, align 4, !tbaa !25, !noalias !27
  %185 = load i32, i32 addrspace(3)* %148, align 4, !tbaa !25, !noalias !27
  %186 = add i32 %185, %184
  store i32 %186, i32 addrspace(3)* %148, align 4, !tbaa !25, !noalias !27
  br label %187

; <label>:187                                     ; preds = %180, %177
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %188 = and i32 %14, 16
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %197, label %190, !dx.controlflow.hints !35

; <label>:190                                     ; preds = %187
  %191 = and i32 %14, -32
  %192 = or i32 %191, 15
  %193 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %192
  %194 = load i32, i32 addrspace(3)* %193, align 4, !tbaa !25, !noalias !27
  %195 = load i32, i32 addrspace(3)* %148, align 4, !tbaa !25, !noalias !27
  %196 = add i32 %195, %194
  store i32 %196, i32 addrspace(3)* %148, align 4, !tbaa !25, !noalias !27
  br label %197

; <label>:197                                     ; preds = %190, %187
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %198 = and i32 %14, 32
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %202, !dx.controlflow.hints !36

; <label>:200                                     ; preds = %197
  %201 = load i32, i32 addrspace(3)* %148, align 4, !tbaa !25, !noalias !27
  br label %209

; <label>:202                                     ; preds = %197
  %203 = and i32 %14, -64
  %204 = or i32 %203, 31
  %205 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %204
  %206 = load i32, i32 addrspace(3)* %205, align 4, !tbaa !25, !noalias !27
  %207 = load i32, i32 addrspace(3)* %148, align 4, !tbaa !25, !noalias !27
  %208 = add i32 %207, %206
  store i32 %208, i32 addrspace(3)* %148, align 4, !tbaa !25, !noalias !27
  br label %209

; <label>:209                                     ; preds = %202, %200
  %210 = phi i32 [ %201, %200 ], [ %208, %202 ]
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %211 = sext i1 %146 to i32
  %212 = icmp eq i32 %14, 0
  br i1 %212, label %213, label %216, !dx.controlflow.hints !37

; <label>:213                                     ; preds = %209
  %214 = load i32, i32 addrspace(3)* getelementptr inbounds ([64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 63), align 4, !tbaa !25, !noalias !27
  %215 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 %32, i32 0, i32 undef, i32 %214)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  store i32 %215, i32 addrspace(3)* @"\01?groupshared_indexToFirstItem@@3IA", align 4, !tbaa !25
  br label %216

; <label>:216                                     ; preds = %213, %209
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %146, label %217, label %222, !dx.controlflow.hints !38

; <label>:217                                     ; preds = %216
  %218 = load i32, i32 addrspace(3)* @"\01?groupshared_indexToFirstItem@@3IA", align 4, !tbaa !25
  %219 = add i32 %211, %36
  %220 = add i32 %219, %210
  %221 = add i32 %220, %218
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %221, i32 0, i32 %11, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %222

; <label>:222                                     ; preds = %217, %216
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind
declare i32 @dx.op.atomicBinOp.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32) #1

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #3

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #3

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #3

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #3

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #3

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { noduplicate nounwind }
attributes #3 = { nounwind readonly }

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
!4 = !{!5, !10, !14, null}
!5 = !{!6, !8}
!6 = !{i32 0, %"class.StructuredBuffer<GfxWaveParticleSystem>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i32 0, !7}
!7 = !{i32 1, i32 36}
!8 = !{i32 1, %"class.StructuredBuffer<GfxWaveParticleInstance>"* undef, !"", i32 0, i32 1, i32 1, i32 12, i32 0, !9}
!9 = !{i32 1, i32 24}
!10 = !{!11, !13}
!11 = !{i32 0, %"class.RWStructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i1 false, i1 false, i1 false, !12}
!12 = !{i32 1, i32 4}
!13 = !{i32 1, %"class.RWStructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 12, i1 false, i1 false, i1 false, !12}
!14 = !{!15, !16}
!15 = !{i32 0, %waterWaveParticles* undef, !"", i32 0, i32 1, i32 1, i32 16, null}
!16 = !{i32 1, %hostlayout.waterConstants* undef, !"", i32 0, i32 5, i32 1, i32 3376, null}
!17 = !{void ()* @cs_water_wave_particles_buckets, !"cs_water_wave_particles_buckets", null, !4, !18}
!18 = !{i32 0, i64 272, i32 4, !19}
!19 = !{i32 64, i32 1, i32 1}
!20 = !{!21, !21, i64 0}
!21 = !{!"float", !22, i64 0}
!22 = !{!"omnipotent char", !23, i64 0}
!23 = !{!"Simple C/C++ TBAA"}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = !{!26, !26, i64 0}
!26 = !{!"int", !22, i64 0}
!27 = !{!28, !30}
!28 = distinct !{!28, !29, !"\01?TiledBitCountAndStreamCompact64@@YAXI_NAIAI1@Z: %outStreamIndex"}
!29 = distinct !{!29, !"\01?TiledBitCountAndStreamCompact64@@YAXI_NAIAI1@Z"}
!30 = distinct !{!30, !29, !"\01?TiledBitCountAndStreamCompact64@@YAXI_NAIAI1@Z: %outBitCount"}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}

