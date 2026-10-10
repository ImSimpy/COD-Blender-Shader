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
; shader hash: cb3eb2af5a6018d0e6eabcb9efe5dfc9
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
;   [80 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb0     1
;                                   texture     f32        2dMS      T0             t0     1
;                                   texture     u32          2d      T1             t2     1
;                                       UAV     f32          2d      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture2DMS<vector<float, 4>, 0>" = type { <4 x float>, %"class.Texture2DMS<vector<float, 4>, 0>::sample_type" }
%"class.Texture2DMS<vector<float, 4>, 0>::sample_type" = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%"class.RWTexture2D<vector<float, 4> >" = type { <4 x float> }
%VeilSampleConsts = type { <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float> }

define void @cs_downsample_veil() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %6 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %7 = uitofp i32 %5 to float
  %8 = uitofp i32 %6 to float
  %9 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %10 = extractvalue %dx.types.CBufRet.f32 %9, 2
  %11 = extractvalue %dx.types.CBufRet.f32 %9, 3
  %12 = fcmp fast olt float %7, %10
  %13 = fcmp fast olt float %8, %11
  %14 = and i1 %12, %13
  br i1 %14, label %15, label %59, !dx.controlflow.hints !17

; <label>:15                                      ; preds = %0
  %16 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %2, i32 0, i32 %5, i32 %6, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %17 = extractvalue %dx.types.ResRet.i32 %16, 0
  %18 = and i32 %17, 1
  %19 = shl i32 1, %18
  %20 = and i32 %17, 2
  %21 = shl i32 1, %20
  %22 = and i32 %17, 3
  %23 = shl i32 1, %22
  %24 = or i32 %21, %19
  %25 = or i32 %24, %23
  %26 = or i32 %25, 1
  br label %27

; <label>:27                                      ; preds = %27, %15
  %28 = phi float [ 0.000000e+00, %15 ], [ %43, %27 ]
  %29 = phi float [ 0.000000e+00, %15 ], [ %44, %27 ]
  %30 = phi float [ 0.000000e+00, %15 ], [ %45, %27 ]
  %31 = phi float [ 0.000000e+00, %15 ], [ %42, %27 ]
  %32 = phi i32 [ %26, %15 ], [ %37, %27 ]
  %33 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %32)  ; FirstbitLo(value)
  %34 = and i32 %33, 31
  %35 = shl i32 1, %34
  %36 = xor i32 %35, -1
  %37 = and i32 %32, %36
  %38 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 %33, i32 %5, i32 %6, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %39 = extractvalue %dx.types.ResRet.f32 %38, 0
  %40 = extractvalue %dx.types.ResRet.f32 %38, 1
  %41 = extractvalue %dx.types.ResRet.f32 %38, 2
  %42 = fadd fast float %31, 1.000000e+00
  %43 = fadd fast float %39, %28
  %44 = fadd fast float %40, %29
  %45 = fadd fast float %41, %30
  %46 = icmp eq i32 %37, 0
  br i1 %46, label %47, label %27

; <label>:47                                      ; preds = %27
  %48 = call float @dx.op.binary.f32(i32 35, float %42, float 0x3EE4F8B580000000)  ; FMax(a,b)
  %49 = fdiv fast float 1.000000e+00, %48
  %50 = fmul fast float %49, %43
  %51 = fmul fast float %49, %44
  %52 = fmul fast float %49, %45
  %53 = call float @dx.op.binary.f32(i32 35, float %50, float -3.225500e+04)  ; FMax(a,b)
  %54 = call float @dx.op.binary.f32(i32 35, float %51, float -3.225500e+04)  ; FMax(a,b)
  %55 = call float @dx.op.binary.f32(i32 35, float %52, float -3.225500e+04)  ; FMax(a,b)
  %56 = call float @dx.op.binary.f32(i32 36, float %53, float 3.225500e+04)  ; FMin(a,b)
  %57 = call float @dx.op.binary.f32(i32 36, float %54, float 3.225500e+04)  ; FMin(a,b)
  %58 = call float @dx.op.binary.f32(i32 36, float %55, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %5, i32 %6, i32 undef, float %56, float %57, float %58, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %59

; <label>:59                                      ; preds = %47, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

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
!4 = !{!5, !10, !12, null}
!5 = !{!6, !8}
!6 = !{i32 0, %"class.Texture2DMS<vector<float, 4>, 0>"* undef, !"", i32 0, i32 0, i32 1, i32 3, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<unsigned int>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !9}
!9 = !{i32 0, i32 5}
!10 = !{!11}
!11 = !{i32 0, %"class.RWTexture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!12 = !{!13}
!13 = !{i32 0, %VeilSampleConsts* undef, !"", i32 0, i32 0, i32 1, i32 80, null}
!14 = !{void ()* @cs_downsample_veil, !"cs_downsample_veil", null, !4, !15}
!15 = !{i32 0, i64 256, i32 4, !16}
!16 = !{i32 8, i32 8, i32 1}
!17 = distinct !{!17, !"dx.controlflow.hints", i32 1}

