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
; shader hash: e7fd9e9676f851fac677a6d02ebf5515
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
;                                   texture     f32        cube      T0             t1     1
;                                       UAV     f32     2darray      U0             u2     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.TextureCube<vector<float, 4> >" = type { <4 x float> }
%"class.RWTexture2DArray<vector<float, 3> >" = type { <3 x float> }
%ReflectionProbeFilteringComputeConstants = type { i32, i32, i32, i32, i32, float, float, float }
%struct.SamplerState = type { i32 }

define void @cs_reflection_probe_filtering_octahedron_from_cube() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %6 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %7 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %8 = extractvalue %dx.types.CBufRet.f32 %7, 3
  %9 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1, i32 0)  ; GetDimensions(handle,mipLevel)
  %10 = extractvalue %dx.types.Dimensions %9, 0
  %11 = uitofp i32 %10 to float
  %12 = fdiv fast float 1.000000e+00, %11
  %13 = uitofp i32 %5 to float
  %14 = uitofp i32 %6 to float
  %15 = fadd fast float %13, 5.000000e-01
  %16 = fadd fast float %14, 5.000000e-01
  %17 = fmul fast float %12, %15
  %18 = fmul fast float %12, %16
  %19 = fptosi float %8 to i32
  %20 = add nsw i32 %19, -3
  %21 = call i32 @dx.op.binary.i32(i32 37, i32 %20, i32 0)  ; IMax(a,b)
  %22 = and i32 %21, 31
  %23 = lshr i32 4, %22
  %24 = sitofp i32 %23 to float
  %25 = fmul fast float %24, 2.000000e+00
  %26 = fsub fast float %11, %25
  %27 = fdiv fast float %11, %26
  %28 = fadd fast float %17, -5.000000e-01
  %29 = fmul fast float %27, %28
  %30 = fadd fast float %18, -5.000000e-01
  %31 = fmul fast float %27, %30
  %32 = fadd fast float %29, 5.000000e-01
  %33 = fadd fast float %31, 5.000000e-01
  %34 = call float @dx.op.unary.f32(i32 7, float %32)  ; Saturate(value)
  %35 = fcmp fast une float %34, %32
  %36 = call float @dx.op.unary.f32(i32 7, float %33)  ; Saturate(value)
  %37 = fcmp fast une float %36, %33
  %38 = or i1 %35, %37
  %39 = and i1 %35, %37
  %40 = fadd fast float %29, 1.500000e+00
  %41 = fadd fast float %31, 1.500000e+00
  %42 = call float @dx.op.unary.f32(i32 27, float %40)  ; Round_ni(value)
  %43 = call float @dx.op.unary.f32(i32 27, float %41)  ; Round_ni(value)
  %44 = fsub fast float %42, %32
  %45 = fsub fast float %43, %33
  %46 = select i1 %38, float %44, float %32
  %47 = select i1 %38, float %45, float %33
  %48 = call float @dx.op.unary.f32(i32 22, float %40)  ; Frc(value)
  %49 = call float @dx.op.unary.f32(i32 22, float %41)  ; Frc(value)
  %50 = select i1 %39, float %48, float %46
  %51 = select i1 %39, float %49, float %47
  %52 = fmul fast float %50, 2.000000e+00
  %53 = fmul fast float %51, 2.000000e+00
  %54 = fadd fast float %52, -1.000000e+00
  %55 = fadd fast float %53, -1.000000e+00
  %56 = call float @dx.op.unary.f32(i32 6, float %54)  ; FAbs(value)
  %57 = fsub fast float 1.000000e+00, %56
  %58 = call float @dx.op.unary.f32(i32 6, float %55)  ; FAbs(value)
  %59 = fsub fast float %57, %58
  %60 = fsub fast float 1.000000e+00, %58
  %61 = fcmp fast oge float %54, 0.000000e+00
  %62 = fcmp fast oge float %55, 0.000000e+00
  %63 = select i1 %61, float 1.000000e+00, float -1.000000e+00
  %64 = select i1 %62, float 1.000000e+00, float -1.000000e+00
  %65 = fcmp fast olt float %59, 0.000000e+00
  %66 = fmul fast float %60, %63
  %67 = fmul fast float %57, %64
  %68 = select i1 %65, float %66, float %54
  %69 = select i1 %65, float %67, float %55
  %70 = call float @dx.op.dot3.f32(i32 55, float %68, float %69, float %59, float %68, float %69, float %59)  ; Dot3(ax,ay,az,bx,by,bz)
  %71 = call float @dx.op.unary.f32(i32 25, float %70)  ; Rsqrt(value)
  %72 = fmul fast float %68, %71
  %73 = fmul fast float %69, %71
  %74 = fmul fast float %71, %59
  %75 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %3, float %72, float %73, float %74, float undef, i32 undef, i32 undef, i32 undef, float %8)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %76 = extractvalue %dx.types.ResRet.f32 %75, 0
  %77 = extractvalue %dx.types.ResRet.f32 %75, 1
  %78 = extractvalue %dx.types.ResRet.f32 %75, 2
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %5, i32 %6, i32 0, float %76, float %77, float %78, float %76, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }

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
!6 = !{i32 0, %"class.TextureCube<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 5, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{!9}
!9 = !{i32 0, %"class.RWTexture2DArray<vector<float, 3> >"* undef, !"", i32 0, i32 2, i32 1, i32 7, i1 false, i1 false, i1 false, !7}
!10 = !{!11}
!11 = !{i32 0, %ReflectionProbeFilteringComputeConstants* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!12 = !{!13}
!13 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!14 = !{void ()* @cs_reflection_probe_filtering_octahedron_from_cube, !"cs_reflection_probe_filtering_octahedron_from_cube", null, !4, !15}
!15 = !{i32 0, i64 256, i32 4, !16}
!16 = !{i32 8, i32 8, i32 1}

