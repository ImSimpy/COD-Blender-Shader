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
; shader hash: a8c8fd74606d31f23d2e48788d7386f7
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
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb5     1
;                                   texture     f32          2d      T0             t0     1
;                                       UAV     f32          2d      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.RWTexture2D<vector<float, 2> >" = type { <2 x float> }
%hostlayout.waterConstants = type { %hostlayout.struct.GfxWaterConstants }
%hostlayout.struct.GfxWaterConstants = type { i32, float, float, float, float, float, float, i32, <3 x float>, float, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, float, float, float, float, i32, float, float, float, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, float, float, float, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [16 x <4 x float>], [16 x <4 x float>], <4 x float>, <4 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, [2 x <4 x i32>], [2 x <4 x i32>], [2 x <4 x i32>], [39 x <4 x i32>], [39 x <4 x i32>], [39 x <4 x i32>], <4 x i32>, <4 x float>, <4 x i32>, <4 x i32>, <4 x i32>, float, float, float, float, <3 x float>, i32, <3 x float>, i32, float, i32, i32, i32, float, float, float, float, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, i32, i32, i32, float, i32, i32, float, i32, i32, float, float, i32, float, i32, i32, i32 }

define void @cs_water_dilate() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %5 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %6 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2, i32 0)  ; GetDimensions(handle,mipLevel)
  %7 = extractvalue %dx.types.Dimensions %6, 0
  %8 = sitofp i32 %7 to float
  %9 = extractvalue %dx.types.Dimensions %6, 1
  %10 = sitofp i32 %9 to float
  %11 = fptosi float %8 to i32
  %12 = add nsw i32 %11, -1
  %13 = fptosi float %10 to i32
  %14 = add nsw i32 %13, -1
  %15 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %4, i32 %5, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %16 = extractvalue %dx.types.ResRet.f32 %15, 0
  %17 = fcmp fast ole float %16, 0.000000e+00
  %18 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %19 = extractvalue %dx.types.CBufRet.i32 %18, 0
  %20 = and i32 %19, 1
  %21 = icmp ne i32 %20, 0
  %22 = and i1 %17, %21
  br i1 %22, label %23, label %47, !dx.controlflow.hints !15

; <label>:23                                      ; preds = %0
  br label %24

; <label>:24                                      ; preds = %65, %23
  %25 = phi float [ %66, %65 ], [ 0.000000e+00, %23 ]
  %26 = phi float [ %67, %65 ], [ 0.000000e+00, %23 ]
  %27 = phi i32 [ %68, %65 ], [ -1, %23 ]
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %49, label %29, !dx.controlflow.hints !16

; <label>:29                                      ; preds = %24
  %30 = add i32 %4, -1
  %31 = add i32 %27, %5
  %32 = call i32 @dx.op.binary.i32(i32 37, i32 %30, i32 0)  ; IMax(a,b)
  %33 = call i32 @dx.op.binary.i32(i32 37, i32 %31, i32 0)  ; IMax(a,b)
  %34 = call i32 @dx.op.binary.i32(i32 38, i32 %32, i32 %12)  ; IMin(a,b)
  %35 = call i32 @dx.op.binary.i32(i32 38, i32 %33, i32 %14)  ; IMin(a,b)
  %36 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %34, i32 %35, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %37 = extractvalue %dx.types.ResRet.f32 %36, 0
  %38 = fadd fast float %37, %25
  %39 = fcmp fast ogt float %37, 0.000000e+00
  %40 = uitofp i1 %39 to float
  %41 = fadd fast float %40, %26
  br label %49

; <label>:42                                      ; preds = %65
  %43 = fcmp fast ogt float %67, 0.000000e+00
  %44 = fdiv fast float 1.000000e+00, %67
  %45 = fmul fast float %44, %66
  %46 = select i1 %43, float %45, float %16
  br label %47

; <label>:47                                      ; preds = %42, %0
  %48 = phi float [ %46, %42 ], [ %16, %0 ]
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %4, i32 %5, i32 undef, float %48, float %48, float %48, float %48, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void

; <label>:49                                      ; preds = %29, %24
  %50 = phi float [ %38, %29 ], [ %25, %24 ]
  %51 = phi float [ %41, %29 ], [ %26, %24 ]
  br i1 %28, label %65, label %52, !dx.controlflow.hints !16

; <label>:52                                      ; preds = %49
  %53 = add i32 %4, 1
  %54 = add i32 %27, %5
  %55 = call i32 @dx.op.binary.i32(i32 37, i32 %53, i32 0)  ; IMax(a,b)
  %56 = call i32 @dx.op.binary.i32(i32 37, i32 %54, i32 0)  ; IMax(a,b)
  %57 = call i32 @dx.op.binary.i32(i32 38, i32 %55, i32 %12)  ; IMin(a,b)
  %58 = call i32 @dx.op.binary.i32(i32 38, i32 %56, i32 %14)  ; IMin(a,b)
  %59 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %57, i32 %58, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %60 = extractvalue %dx.types.ResRet.f32 %59, 0
  %61 = fadd fast float %60, %50
  %62 = fcmp fast ogt float %60, 0.000000e+00
  %63 = uitofp i1 %62 to float
  %64 = fadd fast float %63, %51
  br label %65

; <label>:65                                      ; preds = %52, %49
  %66 = phi float [ %61, %52 ], [ %50, %49 ]
  %67 = phi float [ %64, %52 ], [ %51, %49 ]
  %68 = add nsw i32 %27, 1
  %69 = icmp eq i32 %68, 2
  br i1 %69, label %42, label %24
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

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
!dx.entryPoints = !{!12}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !8, !10, null}
!5 = !{!6}
!6 = !{i32 0, %"class.Texture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{!9}
!9 = !{i32 0, %"class.RWTexture2D<vector<float, 2> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!10 = !{!11}
!11 = !{i32 0, %hostlayout.waterConstants* undef, !"", i32 0, i32 5, i32 1, i32 3376, null}
!12 = !{void ()* @cs_water_dilate, !"cs_water_dilate", null, !4, !13}
!13 = !{i32 0, i64 256, i32 4, !14}
!14 = !{i32 8, i32 8, i32 1}
!15 = distinct !{!15, !"dx.controlflow.hints", i32 2}
!16 = distinct !{!16, !"dx.controlflow.hints", i32 2}

