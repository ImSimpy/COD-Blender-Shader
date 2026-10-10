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
; shader hash: 6d4130b23ae2698eb41c878b26aaaafe
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
;                                   cbuffer      NA          NA     CB0            cb0     1
;                                   texture    byte         r/o      T0             t0     1
;                                   texture    byte         r/o      T1             t2     1
;                                   texture  struct         r/o      T2             t1     1
;                                       UAVunorm_f32     2darray      U0             u0     1
;                                       UAV     f32     2darray      U1             u1     1
;                                       UAVunorm_f32     2darray      U2             u2     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.StructuredBuffer<unsigned int>" = type { i32 }
%"class.RWTexture2DArray<float>" = type { float }
%"class.RWTexture2DArray<vector<float, 3> >" = type { <3 x float> }
%"class.RWTexture2DArray<vector<float, 2> >" = type { <2 x float> }
%GfxDynLightLMOptCopy = type { i32, i32, i32, i32 }

define void @cs_optlm_copy_tile() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %9 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %10 = extractvalue %dx.types.CBufRet.i32 %9, 0
  %11 = and i32 %10, -1610612737
  %12 = lshr i32 %10, 29
  %13 = icmp ult i32 %8, %11
  br i1 %13, label %14, label %92, !dx.controlflow.hints !21

; <label>:14                                      ; preds = %0
  %15 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %16 = extractvalue %dx.types.CBufRet.i32 %15, 1
  %17 = shl i32 %16, 3
  %18 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %17, i32 undef)  ; BufferLoad(srv,index,wot)
  %19 = extractvalue %dx.types.ResRet.i32 %18, 0
  %20 = extractvalue %dx.types.ResRet.i32 %18, 1
  %21 = add i32 %19, %8
  %22 = shl i32 %21, 3
  %23 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %22, i32 undef)  ; BufferLoad(srv,index,wot)
  %24 = extractvalue %dx.types.ResRet.i32 %23, 0
  %25 = extractvalue %dx.types.ResRet.i32 %23, 1
  %26 = shl i32 %24, 4
  %27 = and i32 %26, 32752
  %28 = call float @dx.op.legacyF16ToF32(i32 131, i32 %27)  ; LegacyF16ToF32(value)
  %29 = lshr i32 %24, 7
  %30 = and i32 %29, 32752
  %31 = call float @dx.op.legacyF16ToF32(i32 131, i32 %30)  ; LegacyF16ToF32(value)
  %32 = lshr i32 %24, 22
  %33 = shl nuw nsw i32 %32, 5
  %34 = call float @dx.op.legacyF16ToF32(i32 131, i32 %33)  ; LegacyF16ToF32(value)
  %35 = and i32 %25, 255
  %36 = uitofp i32 %35 to float
  %37 = fmul fast float %36, 0x3F80101020000000
  %38 = fadd fast float %37, -1.000000e+00
  %39 = lshr i32 %25, 8
  %40 = and i32 %39, 255
  %41 = uitofp i32 %40 to float
  %42 = fmul fast float %41, 0x3F80101020000000
  %43 = fadd fast float %42, -1.000000e+00
  %44 = fadd fast float %43, %38
  %45 = fmul fast float %44, 5.000000e-01
  %46 = fsub fast float %38, %43
  %47 = fmul fast float %46, 5.000000e-01
  %48 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %49 = fsub fast float 1.000000e+00, %48
  %50 = call float @dx.op.unary.f32(i32 6, float %47)  ; FAbs(value)
  %51 = fsub fast float %49, %50
  %52 = call float @dx.op.dot3.f32(i32 55, float %45, float %47, float %51, float %45, float %47, float %51)  ; Dot3(ax,ay,az,bx,by,bz)
  %53 = call float @dx.op.unary.f32(i32 25, float %52)  ; Rsqrt(value)
  %54 = fmul fast float %45, %53
  %55 = fmul fast float %47, %53
  %56 = fmul fast float %53, %51
  %57 = lshr i32 %25, 16
  %58 = and i32 %57, 255
  %59 = uitofp i32 %58 to float
  %60 = fmul fast float %59, 0x3F70101020000000
  %61 = extractvalue %dx.types.CBufRet.i32 %15, 2
  %62 = shl nuw nsw i32 %12, 1
  %63 = lshr i32 %8, %62
  %64 = add i32 %20, %63
  %65 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %64, i32 0)  ; BufferLoad(srv,index,wot)
  %66 = extractvalue %dx.types.ResRet.i32 %65, 0
  %67 = add i32 %66, %61
  %68 = and i32 %67, 65535
  %69 = lshr i32 %67, 16
  %70 = shl i32 1, %12
  %71 = add i32 %70, -1
  %72 = and i32 %71, %8
  %73 = add i32 %68, %72
  %74 = lshr i32 %8, %12
  %75 = and i32 %71, %74
  %76 = add i32 %69, %75
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %73, i32 %76, i32 0, float %28, float %31, float %34, float %28, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %77 = call float @dx.op.unary.f32(i32 6, float %54)  ; FAbs(value)
  %78 = call float @dx.op.unary.f32(i32 6, float %55)  ; FAbs(value)
  %79 = fadd fast float %77, %56
  %80 = fadd fast float %79, %78
  %81 = fdiv fast float 1.000000e+00, %80
  %82 = fmul fast float %36, 0x3F70101020000000
  %83 = fadd fast float %82, -5.000000e-01
  %84 = fmul fast float %83, %53
  %85 = fmul fast float %84, %81
  %86 = fadd fast float %85, 5.000000e-01
  %87 = fmul fast float %41, 0x3F70101020000000
  %88 = fadd fast float %87, -5.000000e-01
  %89 = fmul fast float %88, %53
  %90 = fmul fast float %89, %81
  %91 = fadd fast float %90, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %73, i32 %76, i32 0, float %86, float %91, float %86, float %86, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %73, i32 %76, i32 0, float %60, float %60, float %60, float %60, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %92

; <label>:92                                      ; preds = %14, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

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
!4 = !{!5, !10, !16, null}
!5 = !{!6, !7, !8}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!8 = !{i32 2, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 12, i32 0, !9}
!9 = !{i32 1, i32 4}
!10 = !{!11, !13, !15}
!11 = !{i32 0, %"class.RWTexture2DArray<float>"* undef, !"", i32 0, i32 0, i32 1, i32 7, i1 false, i1 false, i1 false, !12}
!12 = !{i32 0, i32 14}
!13 = !{i32 1, %"class.RWTexture2DArray<vector<float, 3> >"* undef, !"", i32 0, i32 1, i32 1, i32 7, i1 false, i1 false, i1 false, !14}
!14 = !{i32 0, i32 9}
!15 = !{i32 2, %"class.RWTexture2DArray<vector<float, 2> >"* undef, !"", i32 0, i32 2, i32 1, i32 7, i1 false, i1 false, i1 false, !12}
!16 = !{!17}
!17 = !{i32 0, %GfxDynLightLMOptCopy* undef, !"", i32 0, i32 0, i32 1, i32 16, null}
!18 = !{void ()* @cs_optlm_copy_tile, !"cs_optlm_copy_tile", null, !4, !19}
!19 = !{i32 0, i64 272, i32 4, !20}
!20 = !{i32 64, i32 1, i32 1}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}

