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
; shader hash: e3f76f4fb424eae96ecd3b024a9d51d5
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
;                                   cbuffer      NA          NA     CB0            cb5     1
;                                   texture  struct         r/o      T0             t0     1
;                                   texture  struct         r/o      T1             t1     1
;                                   texture  struct         r/o      T2             t2     1
;                                   texture  struct         r/o      T3             t3     1
;                                       UAV     f32     2darray      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%"class.StructuredBuffer<GfxWaveParticleSystem>" = type { %struct.GfxWaveParticleSystem }
%struct.GfxWaveParticleSystem = type { float, float, i32, float, float, float, float, i32, i32 }
%"class.StructuredBuffer<GfxWaveParticleInstance>" = type { %struct.GfxWaveParticleInstance }
%struct.GfxWaveParticleInstance = type { <2 x float>, <2 x float>, float, float }
%"class.StructuredBuffer<unsigned int>" = type { i32 }
%"class.RWTexture2DArray<vector<float, 3> >" = type { <3 x float> }
%hostlayout.waterConstants = type { %hostlayout.struct.GfxWaterConstants }
%hostlayout.struct.GfxWaterConstants = type { i32, float, float, float, float, float, float, i32, <3 x float>, float, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, float, float, float, float, i32, float, float, float, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, float, float, float, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [16 x <4 x float>], [16 x <4 x float>], <4 x float>, <4 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, [2 x <4 x i32>], [2 x <4 x i32>], [2 x <4 x i32>], [39 x <4 x i32>], [39 x <4 x i32>], [39 x <4 x i32>], <4 x i32>, <4 x float>, <4 x i32>, <4 x i32>, <4 x i32>, float, float, float, float, <3 x float>, i32, <3 x float>, i32, float, i32, i32, i32, float, float, float, float, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, i32, i32, i32, float, i32, i32, float, i32, i32, float, float, i32, float, i32, i32, i32 }

define void @cs_water_wave_particles_displacement_map() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = alloca [4 x float], align 4
  %8 = alloca [4 x float], align 4
  %9 = alloca [4 x float], align 4
  %10 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %11 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %12 = call i32 @dx.op.threadId.i32(i32 93, i32 2)  ; ThreadId(component)
  %13 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %14 = call i32 @dx.op.groupId.i32(i32 94, i32 1)  ; GroupId(component)
  %15 = call i32 @dx.op.groupId.i32(i32 94, i32 2)  ; GroupId(component)
  %16 = lshr i32 %15, 2
  %17 = and i32 %15, 3
  %18 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %16, i32 0)  ; BufferLoad(srv,index,wot)
  %19 = extractvalue %dx.types.ResRet.f32 %18, 0
  %20 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %16, i32 16)  ; BufferLoad(srv,index,wot)
  %21 = extractvalue %dx.types.ResRet.f32 %20, 0
  %22 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %16, i32 24)  ; BufferLoad(srv,index,wot)
  %23 = extractvalue %dx.types.ResRet.f32 %22, 0
  %24 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %16, i32 32)  ; BufferLoad(srv,index,wot)
  %25 = extractvalue %dx.types.ResRet.i32 %24, 0
  %26 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %27 = extractvalue %dx.types.CBufRet.i32 %26, 0
  %28 = call i32 @dx.op.tertiary.i32(i32 49, i32 %27, i32 %14, i32 %13)  ; UMad(a,b,c)
  %29 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 22)  ; CBufferLoadLegacy(handle,regIndex)
  %30 = extractvalue %dx.types.CBufRet.i32 %29, 2
  %31 = call i32 @dx.op.tertiary.i32(i32 49, i32 %15, i32 %30, i32 %28)  ; UMad(a,b,c)
  %32 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %33 = extractvalue %dx.types.CBufRet.i32 %32, 1
  %34 = extractvalue %dx.types.CBufRet.i32 %32, 0
  %35 = mul i32 %34, %28
  %36 = call i32 @dx.op.tertiary.i32(i32 49, i32 %15, i32 %33, i32 %35)  ; UMad(a,b,c)
  %37 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %31, i32 0)  ; BufferLoad(srv,index,wot)
  %38 = extractvalue %dx.types.ResRet.i32 %37, 0
  %39 = call i32 @dx.op.binary.i32(i32 40, i32 %38, i32 %34)  ; UMin(a,b)
  %40 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %41 = extractvalue %dx.types.CBufRet.f32 %40, 3
  %42 = fsub fast float -0.000000e+00, %23
  %43 = uitofp i32 %10 to float
  %44 = uitofp i32 %11 to float
  %45 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %46 = extractvalue %dx.types.CBufRet.f32 %45, 1
  %47 = fmul fast float %46, %43
  %48 = fmul fast float %46, %44
  %49 = icmp eq i32 %39, 0
  br i1 %49, label %173, label %50

; <label>:50                                      ; preds = %0
  br label %51

; <label>:51                                      ; preds = %166, %50
  %52 = phi float [ %167, %166 ], [ 0.000000e+00, %50 ]
  %53 = phi float [ %168, %166 ], [ 0.000000e+00, %50 ]
  %54 = phi float [ %169, %166 ], [ %42, %50 ]
  %55 = phi i32 [ %170, %166 ], [ 0, %50 ]
  %56 = add i32 %55, %36
  %57 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %56, i32 0)  ; BufferLoad(srv,index,wot)
  %58 = extractvalue %dx.types.ResRet.i32 %57, 0
  %59 = add i32 %58, %25
  %60 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %59, i32 0)  ; BufferLoad(srv,index,wot)
  %61 = extractvalue %dx.types.ResRet.f32 %60, 0
  %62 = extractvalue %dx.types.ResRet.f32 %60, 1
  %63 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %59, i32 8)  ; BufferLoad(srv,index,wot)
  %64 = extractvalue %dx.types.ResRet.f32 %63, 0
  %65 = extractvalue %dx.types.ResRet.f32 %63, 1
  %66 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %59, i32 16)  ; BufferLoad(srv,index,wot)
  %67 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %59, i32 20)  ; BufferLoad(srv,index,wot)
  %68 = extractvalue %dx.types.ResRet.f32 %67, 0
  %69 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %70 = extractvalue %dx.types.CBufRet.f32 %69, 0
  %71 = extractvalue %dx.types.CBufRet.f32 %69, 1
  %72 = extractvalue %dx.types.CBufRet.f32 %69, 2
  %73 = extractvalue %dx.types.CBufRet.f32 %69, 3
  %74 = getelementptr inbounds [4 x float], [4 x float]* %7, i32 0, i32 0
  store float %70, float* %74, align 4
  %75 = getelementptr inbounds [4 x float], [4 x float]* %7, i32 0, i32 1
  store float %71, float* %75, align 4
  %76 = getelementptr inbounds [4 x float], [4 x float]* %7, i32 0, i32 2
  store float %72, float* %76, align 4
  %77 = getelementptr inbounds [4 x float], [4 x float]* %7, i32 0, i32 3
  store float %73, float* %77, align 4
  %78 = getelementptr inbounds [4 x float], [4 x float]* %7, i32 0, i32 %17
  %79 = load float, float* %78, align 4, !tbaa !21
  %80 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 25)  ; CBufferLoadLegacy(handle,regIndex)
  %81 = extractvalue %dx.types.CBufRet.f32 %80, 0
  %82 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %83 = extractvalue %dx.types.CBufRet.f32 %82, 3
  %84 = fmul fast float %81, %79
  %85 = fmul fast float %84, %83
  %86 = fmul fast float %85, %64
  %87 = fmul fast float %85, %65
  %88 = fadd fast float %86, %61
  %89 = fadd fast float %87, %62
  %90 = call float @dx.op.unary.f32(i32 22, float %88)  ; Frc(value)
  %91 = call float @dx.op.unary.f32(i32 22, float %89)  ; Frc(value)
  %92 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %93 = extractvalue %dx.types.CBufRet.f32 %92, 0
  %94 = extractvalue %dx.types.CBufRet.f32 %92, 1
  %95 = extractvalue %dx.types.CBufRet.f32 %92, 2
  %96 = extractvalue %dx.types.CBufRet.f32 %92, 3
  %97 = getelementptr inbounds [4 x float], [4 x float]* %8, i32 0, i32 0
  store float %93, float* %97, align 4
  %98 = getelementptr inbounds [4 x float], [4 x float]* %8, i32 0, i32 1
  store float %94, float* %98, align 4
  %99 = getelementptr inbounds [4 x float], [4 x float]* %8, i32 0, i32 2
  store float %95, float* %99, align 4
  %100 = getelementptr inbounds [4 x float], [4 x float]* %8, i32 0, i32 3
  store float %96, float* %100, align 4
  %101 = getelementptr inbounds [4 x float], [4 x float]* %8, i32 0, i32 %17
  %102 = load float, float* %101, align 4, !tbaa !21
  %103 = fmul fast float %102, %68
  %104 = fsub fast float %90, %47
  %105 = fsub fast float %91, %48
  %106 = call float @dx.op.unary.f32(i32 6, float %104)  ; FAbs(value)
  %107 = call float @dx.op.unary.f32(i32 6, float %105)  ; FAbs(value)
  %108 = fcmp fast ogt float %104, 0.000000e+00
  %109 = fcmp fast olt float %104, 0.000000e+00
  %110 = zext i1 %108 to i32
  %111 = zext i1 %109 to i32
  %112 = sub nsw i32 %110, %111
  %113 = sitofp i32 %112 to float
  %114 = fcmp fast ogt float %105, 0.000000e+00
  %115 = fcmp fast olt float %105, 0.000000e+00
  %116 = zext i1 %114 to i32
  %117 = zext i1 %115 to i32
  %118 = sub nsw i32 %116, %117
  %119 = sitofp i32 %118 to float
  %120 = fcmp fast ogt float %106, 5.000000e-01
  %121 = fcmp fast ogt float %107, 5.000000e-01
  %122 = fsub fast float 1.000000e+00, %106
  %123 = select i1 %120, float %122, float %106
  %124 = fsub fast float 1.000000e+00, %107
  %125 = select i1 %121, float %124, float %107
  %126 = fsub fast float -0.000000e+00, %113
  %127 = select i1 %120, float %126, float %113
  %128 = fsub fast float -0.000000e+00, %119
  %129 = select i1 %121, float %128, float %119
  %130 = fmul fast float %127, %123
  %131 = fmul fast float %129, %125
  %132 = call float @dx.op.unary.f32(i32 6, float %130)  ; FAbs(value)
  %133 = call float @dx.op.unary.f32(i32 6, float %131)  ; FAbs(value)
  %134 = fcmp fast une float %132, 0.000000e+00
  %135 = fcmp fast une float %133, 0.000000e+00
  %136 = or i1 %134, %135
  %137 = call float @dx.op.dot2.f32(i32 54, float %130, float %131, float %130, float %131)  ; Dot2(ax,ay,bx,by)
  %138 = call float @dx.op.unary.f32(i32 25, float %137)  ; Rsqrt(value)
  %139 = fmul fast float %123, %123
  %140 = fmul fast float %125, %125
  %141 = fadd fast float %140, %139
  %142 = fmul fast float %103, %103
  %143 = fcmp fast ugt float %141, %142
  br i1 %143, label %166, label %144, !dx.controlflow.hints !25

; <label>:144                                     ; preds = %51
  %145 = fmul fast float %138, %131
  %146 = select i1 %136, float %145, float 0.000000e+00
  %147 = fmul fast float %138, %130
  %148 = select i1 %136, float %147, float 0.000000e+00
  %149 = extractvalue %dx.types.ResRet.f32 %66, 0
  %150 = fdiv fast float 0x400921FB60000000, %103
  %151 = call float @dx.op.unary.f32(i32 24, float %141)  ; Sqrt(value)
  %152 = fmul fast float %151, %150
  %153 = call float @dx.op.unary.f32(i32 12, float %152)  ; Cos(value)
  %154 = fadd fast float %153, 1.000000e+00
  %155 = fmul fast float %154, %149
  %156 = call float @dx.op.unary.f32(i32 13, float %152)  ; Sin(value)
  %157 = fmul fast float %21, 0x3FD45F3060000000
  %158 = fmul fast float %157, %41
  %159 = fmul fast float %158, %103
  %160 = fmul fast float %159, %156
  %161 = fmul fast float %160, %148
  %162 = fmul fast float %160, %146
  %163 = fadd fast float %161, %52
  %164 = fadd fast float %162, %53
  %165 = fadd fast float %155, %54
  br label %166

; <label>:166                                     ; preds = %144, %51
  %167 = phi float [ %163, %144 ], [ %52, %51 ]
  %168 = phi float [ %164, %144 ], [ %53, %51 ]
  %169 = phi float [ %165, %144 ], [ %54, %51 ]
  %170 = add nuw i32 %55, 1
  %171 = icmp eq i32 %170, %39
  br i1 %171, label %172, label %51

; <label>:172                                     ; preds = %166
  br label %173

; <label>:173                                     ; preds = %172, %0
  %174 = phi float [ 0.000000e+00, %0 ], [ %167, %172 ]
  %175 = phi float [ 0.000000e+00, %0 ], [ %168, %172 ]
  %176 = phi float [ %42, %0 ], [ %169, %172 ]
  %177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %178 = extractvalue %dx.types.CBufRet.f32 %177, 0
  %179 = extractvalue %dx.types.CBufRet.f32 %177, 1
  %180 = extractvalue %dx.types.CBufRet.f32 %177, 2
  %181 = extractvalue %dx.types.CBufRet.f32 %177, 3
  %182 = getelementptr inbounds [4 x float], [4 x float]* %9, i32 0, i32 0
  store float %178, float* %182, align 4
  %183 = getelementptr inbounds [4 x float], [4 x float]* %9, i32 0, i32 1
  store float %179, float* %183, align 4
  %184 = getelementptr inbounds [4 x float], [4 x float]* %9, i32 0, i32 2
  store float %180, float* %184, align 4
  %185 = getelementptr inbounds [4 x float], [4 x float]* %9, i32 0, i32 3
  store float %181, float* %185, align 4
  %186 = getelementptr inbounds [4 x float], [4 x float]* %9, i32 0, i32 %17
  %187 = load float, float* %186, align 4, !tbaa !21
  %188 = fmul fast float %187, %19
  %189 = fmul fast float %188, %174
  %190 = fmul fast float %188, %175
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %10, i32 %11, i32 %12, float %189, float %190, float %176, float %189, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!18}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !13, !16, null}
!5 = !{!6, !8, !10, !12}
!6 = !{i32 0, %"class.StructuredBuffer<GfxWaveParticleSystem>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i32 0, !7}
!7 = !{i32 1, i32 36}
!8 = !{i32 1, %"class.StructuredBuffer<GfxWaveParticleInstance>"* undef, !"", i32 0, i32 1, i32 1, i32 12, i32 0, !9}
!9 = !{i32 1, i32 24}
!10 = !{i32 2, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 2, i32 1, i32 12, i32 0, !11}
!11 = !{i32 1, i32 4}
!12 = !{i32 3, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 3, i32 1, i32 12, i32 0, !11}
!13 = !{!14}
!14 = !{i32 0, %"class.RWTexture2DArray<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 7, i1 false, i1 false, i1 false, !15}
!15 = !{i32 0, i32 9}
!16 = !{!17}
!17 = !{i32 0, %hostlayout.waterConstants* undef, !"", i32 0, i32 5, i32 1, i32 3376, null}
!18 = !{void ()* @cs_water_wave_particles_displacement_map, !"cs_water_wave_particles_displacement_map", null, !4, !19}
!19 = !{i32 0, i64 272, i32 4, !20}
!20 = !{i32 8, i32 8, i32 1}
!21 = !{!22, !22, i64 0}
!22 = !{!"float", !23, i64 0}
!23 = !{!"omnipotent char", !24, i64 0}
!24 = !{!"Simple C/C++ TBAA"}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}

