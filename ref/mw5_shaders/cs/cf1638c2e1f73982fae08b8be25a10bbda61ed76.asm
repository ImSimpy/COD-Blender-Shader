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
; shader hash: 8d45b32811c2109c0de9d253124cb239
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
;                                   texture     f32          2d      T0             t0     1
;                                       UAV     u32          2d      U0             u4     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.RWTexture2D<vector<unsigned int, 4> >" = type { <4 x i32> }
%ConstantBufferRuntimeCompressionBC7 = type { <2 x i32>, i32, i32, i32, i32, i32, i32 }

define void @cs_bc7_compress_constant_color() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %5 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %6 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %7 = extractvalue %dx.types.CBufRet.i32 %6, 0
  %8 = extractvalue %dx.types.CBufRet.i32 %6, 1
  %9 = icmp ult i32 %4, %7
  %10 = icmp ult i32 %5, %8
  %11 = and i1 %9, %10
  br i1 %11, label %12, label %74, !dx.controlflow.hints !16

; <label>:12                                      ; preds = %0
  %13 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 0, i32 0, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %14 = extractvalue %dx.types.ResRet.f32 %13, 0
  %15 = extractvalue %dx.types.ResRet.f32 %13, 1
  %16 = extractvalue %dx.types.ResRet.f32 %13, 2
  %17 = extractvalue %dx.types.ResRet.f32 %13, 3
  %18 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %19 = extractvalue %dx.types.CBufRet.i32 %18, 0
  %20 = icmp ne i32 %19, 0
  %21 = fcmp fast ole float %14, 0x3F69A5C380000000
  %22 = fcmp fast ole float %15, 0x3F69A5C380000000
  %23 = fcmp fast ole float %16, 0x3F69A5C380000000
  %24 = fmul fast float %14, 0x4029D70A40000000
  %25 = fmul fast float %15, 0x4029D70A40000000
  %26 = fmul fast float %16, 0x4029D70A40000000
  %27 = call float @dx.op.unary.f32(i32 23, float %14)  ; Log(value)
  %28 = call float @dx.op.unary.f32(i32 23, float %15)  ; Log(value)
  %29 = call float @dx.op.unary.f32(i32 23, float %16)  ; Log(value)
  %30 = fmul fast float %27, 0x3FDAAAAAA0000000
  %31 = fmul fast float %28, 0x3FDAAAAAA0000000
  %32 = fmul fast float %29, 0x3FDAAAAAA0000000
  %33 = call float @dx.op.unary.f32(i32 21, float %30)  ; Exp(value)
  %34 = call float @dx.op.unary.f32(i32 21, float %31)  ; Exp(value)
  %35 = call float @dx.op.unary.f32(i32 21, float %32)  ; Exp(value)
  %36 = fmul fast float %33, 0x3FF0E147A0000000
  %37 = fmul fast float %34, 0x3FF0E147A0000000
  %38 = fmul fast float %35, 0x3FF0E147A0000000
  %39 = fadd fast float %36, 0xBFAC28F5C0000000
  %40 = fadd fast float %37, 0xBFAC28F5C0000000
  %41 = fadd fast float %38, 0xBFAC28F5C0000000
  %42 = select i1 %21, float %24, float %39
  %43 = select i1 %22, float %25, float %40
  %44 = select i1 %23, float %26, float %41
  %45 = select i1 %20, float %42, float %14
  %46 = select i1 %20, float %43, float %15
  %47 = select i1 %20, float %44, float %16
  %48 = fmul fast float %45, 1.270000e+02
  %49 = fptoui float %48 to i32
  %50 = fmul fast float %46, 1.270000e+02
  %51 = fptoui float %50 to i32
  %52 = fmul fast float %47, 1.270000e+02
  %53 = fptoui float %52 to i32
  %54 = fmul fast float %17, 2.550000e+02
  %55 = fptoui float %54 to i32
  %56 = shl i32 %49, 8
  %57 = shl i32 %49, 15
  %58 = shl i32 %51, 22
  %59 = shl i32 %51, 29
  %60 = or i32 %57, %56
  %61 = or i32 %60, %58
  %62 = or i32 %61, %59
  %63 = or i32 %62, 32
  %64 = lshr i32 %51, 3
  %65 = shl i32 %53, 4
  %66 = shl i32 %53, 11
  %67 = shl i32 %55, 18
  %68 = shl i32 %55, 26
  %69 = or i32 %68, %67
  %70 = or i32 %69, %64
  %71 = or i32 %70, %65
  %72 = or i32 %71, %66
  %73 = lshr i32 %55, 6
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %1, i32 %4, i32 %5, i32 undef, i32 %63, i32 %72, i32 %73, i32 0, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %74

; <label>:74                                      ; preds = %12, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.textureStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32, i8) #2

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

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
!dx.entryPoints = !{!13}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !8, !11, null}
!5 = !{!6}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{!9}
!9 = !{i32 0, %"class.RWTexture2D<vector<unsigned int, 4> >"* undef, !"", i32 0, i32 4, i32 1, i32 2, i1 false, i1 false, i1 false, !10}
!10 = !{i32 0, i32 5}
!11 = !{!12}
!12 = !{i32 0, %ConstantBufferRuntimeCompressionBC7* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!13 = !{void ()* @cs_bc7_compress_constant_color, !"cs_bc7_compress_constant_color", null, !4, !14}
!14 = !{i32 0, i64 256, i32 4, !15}
!15 = !{i32 8, i32 8, i32 1}
!16 = distinct !{!16, !"dx.controlflow.hints", i32 2}

