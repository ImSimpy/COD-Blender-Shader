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
; shader hash: 6a3bd50dde74b1d43f3a3049a08fa585
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
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb5     1
;                                   sampler      NA          NA      S0             s3     1
;                                   texture  struct         r/o      T0             t0     1
;                                   texture     f32     2darray      T1             t6     1
;                                       UAV     f32     2darray      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%"class.StructuredBuffer<GfxWaveParticleSystem>" = type { %struct.GfxWaveParticleSystem }
%struct.GfxWaveParticleSystem = type { float, float, i32, float, float, float, float, i32, i32 }
%"class.Texture2DArray<vector<float, 3> >" = type { <3 x float>, %"class.Texture2DArray<vector<float, 3> >::mips_type" }
%"class.Texture2DArray<vector<float, 3> >::mips_type" = type { i32 }
%"class.RWTexture2DArray<vector<float, 4> >" = type { <4 x float> }
%hostlayout.waterConstants = type { %hostlayout.struct.GfxWaterConstants }
%hostlayout.struct.GfxWaterConstants = type { i32, float, float, float, float, float, float, i32, <3 x float>, float, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, float, float, float, float, i32, float, float, float, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, float, float, float, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [16 x <4 x float>], [16 x <4 x float>], <4 x float>, <4 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, [2 x <4 x i32>], [2 x <4 x i32>], [2 x <4 x i32>], [39 x <4 x i32>], [39 x <4 x i32>], [39 x <4 x i32>], <4 x i32>, <4 x float>, <4 x i32>, <4 x i32>, <4 x i32>, float, float, float, float, <3 x float>, i32, <3 x float>, i32, float, i32, i32, i32, float, float, float, float, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, i32, i32, i32, float, i32, i32, float, i32, i32, float, float, i32, float, i32, i32, i32 }
%struct.SamplerState = type { i32 }

define void @cs_water_wave_particles_normal_map() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = alloca [4 x float], align 4
  %7 = alloca [4 x float], align 4
  %8 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %9 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %10 = call i32 @dx.op.threadId.i32(i32 93, i32 2)  ; ThreadId(component)
  %11 = call i32 @dx.op.groupId.i32(i32 94, i32 2)  ; GroupId(component)
  %12 = lshr i32 %11, 2
  %13 = and i32 %11, 3
  %14 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %12, i32 0)  ; BufferLoad(srv,index,wot)
  %15 = extractvalue %dx.types.ResRet.f32 %14, 0
  %16 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %17 = extractvalue %dx.types.CBufRet.f32 %16, 1
  %18 = uitofp i32 %8 to float
  %19 = uitofp i32 %9 to float
  %20 = fadd fast float %18, 5.000000e-01
  %21 = fmul fast float %17, %20
  %22 = fadd fast float %19, 5.000000e-01
  %23 = fmul fast float %17, %22
  %24 = fmul fast float %17, %18
  %25 = fadd fast float %18, 1.000000e+00
  %26 = fmul fast float %17, %25
  %27 = fmul fast float %17, %19
  %28 = fadd fast float %19, 1.000000e+00
  %29 = fmul fast float %17, %28
  %30 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %31 = extractvalue %dx.types.CBufRet.f32 %30, 0
  %32 = extractvalue %dx.types.CBufRet.f32 %30, 1
  %33 = extractvalue %dx.types.CBufRet.f32 %30, 2
  %34 = extractvalue %dx.types.CBufRet.f32 %30, 3
  %35 = getelementptr inbounds [4 x float], [4 x float]* %6, i32 0, i32 0
  store float %31, float* %35, align 4
  %36 = getelementptr inbounds [4 x float], [4 x float]* %6, i32 0, i32 1
  store float %32, float* %36, align 4
  %37 = getelementptr inbounds [4 x float], [4 x float]* %6, i32 0, i32 2
  store float %33, float* %37, align 4
  %38 = getelementptr inbounds [4 x float], [4 x float]* %6, i32 0, i32 3
  store float %34, float* %38, align 4
  %39 = getelementptr inbounds [4 x float], [4 x float]* %6, i32 0, i32 %13
  %40 = load float, float* %39, align 4, !tbaa !19
  %41 = fmul fast float %40, %15
  %42 = fmul fast float %41, %24
  %43 = fmul fast float %41, %23
  %44 = fmul fast float %41, %26
  %45 = fmul fast float %41, %21
  %46 = fmul fast float %41, %27
  %47 = fmul fast float %41, %29
  %48 = uitofp i32 %11 to float
  %49 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %4, float %24, float %23, float %48, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %50 = extractvalue %dx.types.ResRet.f32 %49, 0
  %51 = extractvalue %dx.types.ResRet.f32 %49, 1
  %52 = extractvalue %dx.types.ResRet.f32 %49, 2
  %53 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %4, float %26, float %23, float %48, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %54 = extractvalue %dx.types.ResRet.f32 %53, 0
  %55 = extractvalue %dx.types.ResRet.f32 %53, 1
  %56 = extractvalue %dx.types.ResRet.f32 %53, 2
  %57 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %4, float %21, float %27, float %48, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %58 = extractvalue %dx.types.ResRet.f32 %57, 0
  %59 = extractvalue %dx.types.ResRet.f32 %57, 1
  %60 = extractvalue %dx.types.ResRet.f32 %57, 2
  %61 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %4, float %21, float %29, float %48, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %62 = extractvalue %dx.types.ResRet.f32 %61, 0
  %63 = extractvalue %dx.types.ResRet.f32 %61, 1
  %64 = extractvalue %dx.types.ResRet.f32 %61, 2
  %65 = fadd fast float %50, %42
  %66 = fadd fast float %51, %43
  %67 = fadd fast float %54, %44
  %68 = fadd fast float %55, %43
  %69 = fadd fast float %58, %45
  %70 = fadd fast float %59, %46
  %71 = fadd fast float %62, %45
  %72 = fadd fast float %63, %47
  %73 = fsub fast float %67, %65
  %74 = fsub fast float %55, %51
  %75 = fsub fast float %56, %52
  %76 = fsub fast float %62, %58
  %77 = fsub fast float %72, %70
  %78 = fsub fast float %64, %60
  %79 = fmul fast float %78, %74
  %80 = fmul fast float %77, %75
  %81 = fsub fast float %79, %80
  %82 = fmul fast float %76, %75
  %83 = fmul fast float %78, %73
  %84 = fsub fast float %82, %83
  %85 = fmul fast float %77, %73
  %86 = fmul fast float %76, %74
  %87 = fsub fast float %85, %86
  %88 = call float @dx.op.dot3.f32(i32 55, float %81, float %84, float %87, float %81, float %84, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %89 = call float @dx.op.unary.f32(i32 25, float %88)  ; Rsqrt(value)
  %90 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %91 = extractvalue %dx.types.CBufRet.f32 %90, 0
  %92 = extractvalue %dx.types.CBufRet.f32 %90, 1
  %93 = extractvalue %dx.types.CBufRet.f32 %90, 2
  %94 = extractvalue %dx.types.CBufRet.f32 %90, 3
  %95 = getelementptr inbounds [4 x float], [4 x float]* %7, i32 0, i32 0
  store float %91, float* %95, align 4
  %96 = getelementptr inbounds [4 x float], [4 x float]* %7, i32 0, i32 1
  store float %92, float* %96, align 4
  %97 = getelementptr inbounds [4 x float], [4 x float]* %7, i32 0, i32 2
  store float %93, float* %97, align 4
  %98 = getelementptr inbounds [4 x float], [4 x float]* %7, i32 0, i32 3
  store float %94, float* %98, align 4
  %99 = getelementptr inbounds [4 x float], [4 x float]* %7, i32 0, i32 %13
  %100 = load float, float* %99, align 4, !tbaa !19
  %101 = fmul fast float %89, 5.000000e-01
  %102 = fmul fast float %101, %100
  %103 = fmul fast float %102, %81
  %104 = fmul fast float %102, %84
  %105 = fmul fast float %101, %87
  %106 = fadd fast float %103, 5.000000e-01
  %107 = fadd fast float %104, 5.000000e-01
  %108 = fadd fast float %105, 5.000000e-01
  %109 = call float @dx.op.unary.f32(i32 7, float %106)  ; Saturate(value)
  %110 = call float @dx.op.unary.f32(i32 7, float %107)  ; Saturate(value)
  %111 = call float @dx.op.unary.f32(i32 7, float %108)  ; Saturate(value)
  %112 = fsub fast float %69, %65
  %113 = fsub fast float %70, %66
  %114 = fsub fast float %60, %52
  %115 = fsub fast float %71, %65
  %116 = fsub fast float %72, %66
  %117 = fsub fast float %64, %52
  %118 = fsub fast float %71, %67
  %119 = fsub fast float %72, %68
  %120 = fsub fast float %64, %56
  %121 = fsub fast float %69, %67
  %122 = fsub fast float %70, %68
  %123 = fsub fast float %60, %56
  %124 = fmul fast float %117, %113
  %125 = fmul fast float %116, %114
  %126 = fsub fast float %124, %125
  %127 = fmul fast float %115, %114
  %128 = fmul fast float %117, %112
  %129 = fsub fast float %127, %128
  %130 = fmul fast float %116, %112
  %131 = fmul fast float %115, %113
  %132 = fsub fast float %130, %131
  %133 = fmul fast float %126, %126
  %134 = fmul fast float %129, %129
  %135 = fadd fast float %133, %134
  %136 = fmul fast float %132, %132
  %137 = fadd fast float %135, %136
  %138 = call float @dx.op.unary.f32(i32 24, float %137)  ; Sqrt(value)
  %139 = fmul fast float %119, %123
  %140 = fmul fast float %120, %122
  %141 = fsub fast float %139, %140
  %142 = fmul fast float %120, %121
  %143 = fmul fast float %118, %123
  %144 = fsub fast float %142, %143
  %145 = fmul fast float %118, %122
  %146 = fmul fast float %119, %121
  %147 = fsub fast float %145, %146
  %148 = fmul fast float %141, %141
  %149 = fmul fast float %144, %144
  %150 = fadd fast float %148, %149
  %151 = fmul fast float %147, %147
  %152 = fadd fast float %150, %151
  %153 = call float @dx.op.unary.f32(i32 24, float %152)  ; Sqrt(value)
  %154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 25)  ; CBufferLoadLegacy(handle,regIndex)
  %155 = extractvalue %dx.types.CBufRet.f32 %154, 1
  %156 = fmul float %17, %41
  %157 = fmul float %156, %156
  %158 = fadd fast float %153, %138
  %159 = fmul fast float %155, %158
  %160 = fdiv fast float %159, %157
  %161 = fsub fast float 1.000000e+00, %160
  %162 = call float @dx.op.unary.f32(i32 7, float %161)  ; Saturate(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %8, i32 %9, i32 %10, float %109, float %110, float %111, float %162, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!16}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !10, !12, !14}
!5 = !{!6, !8}
!6 = !{i32 0, %"class.StructuredBuffer<GfxWaveParticleSystem>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i32 0, !7}
!7 = !{i32 1, i32 36}
!8 = !{i32 1, %"class.Texture2DArray<vector<float, 3> >"* undef, !"", i32 0, i32 6, i32 1, i32 7, i32 0, !9}
!9 = !{i32 0, i32 9}
!10 = !{!11}
!11 = !{i32 0, %"class.RWTexture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 7, i1 false, i1 false, i1 false, !9}
!12 = !{!13}
!13 = !{i32 0, %hostlayout.waterConstants* undef, !"", i32 0, i32 5, i32 1, i32 3376, null}
!14 = !{!15}
!15 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!16 = !{void ()* @cs_water_wave_particles_normal_map, !"cs_water_wave_particles_normal_map", null, !4, !17}
!17 = !{i32 0, i64 272, i32 4, !18}
!18 = !{i32 8, i32 8, i32 1}
!19 = !{!20, !20, i64 0}
!20 = !{!"float", !21, i64 0}
!21 = !{!"omnipotent char", !22, i64 0}
!22 = !{!"Simple C/C++ TBAA"}

