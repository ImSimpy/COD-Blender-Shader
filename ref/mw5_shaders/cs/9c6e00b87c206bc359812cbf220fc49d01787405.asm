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
; shader hash: b2ab63a0ad1f5d1e7859abf863eeba71
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

define void @cs_optlm_copy() {
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
  %11 = icmp ult i32 %8, %10
  br i1 %11, label %12, label %81, !dx.controlflow.hints !21

; <label>:12                                      ; preds = %0
  %13 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %14 = extractvalue %dx.types.CBufRet.i32 %13, 1
  %15 = shl i32 %14, 3
  %16 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %15, i32 undef)  ; BufferLoad(srv,index,wot)
  %17 = extractvalue %dx.types.ResRet.i32 %16, 0
  %18 = extractvalue %dx.types.ResRet.i32 %16, 1
  %19 = add i32 %17, %8
  %20 = shl i32 %19, 3
  %21 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %20, i32 undef)  ; BufferLoad(srv,index,wot)
  %22 = extractvalue %dx.types.ResRet.i32 %21, 0
  %23 = extractvalue %dx.types.ResRet.i32 %21, 1
  %24 = shl i32 %22, 4
  %25 = and i32 %24, 32752
  %26 = call float @dx.op.legacyF16ToF32(i32 131, i32 %25)  ; LegacyF16ToF32(value)
  %27 = lshr i32 %22, 7
  %28 = and i32 %27, 32752
  %29 = call float @dx.op.legacyF16ToF32(i32 131, i32 %28)  ; LegacyF16ToF32(value)
  %30 = lshr i32 %22, 22
  %31 = shl nuw nsw i32 %30, 5
  %32 = call float @dx.op.legacyF16ToF32(i32 131, i32 %31)  ; LegacyF16ToF32(value)
  %33 = and i32 %23, 255
  %34 = uitofp i32 %33 to float
  %35 = fmul fast float %34, 0x3F80101020000000
  %36 = fadd fast float %35, -1.000000e+00
  %37 = lshr i32 %23, 8
  %38 = and i32 %37, 255
  %39 = uitofp i32 %38 to float
  %40 = fmul fast float %39, 0x3F80101020000000
  %41 = fadd fast float %40, -1.000000e+00
  %42 = fadd fast float %41, %36
  %43 = fmul fast float %42, 5.000000e-01
  %44 = fsub fast float %36, %41
  %45 = fmul fast float %44, 5.000000e-01
  %46 = call float @dx.op.unary.f32(i32 6, float %43)  ; FAbs(value)
  %47 = fsub fast float 1.000000e+00, %46
  %48 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %49 = fsub fast float %47, %48
  %50 = call float @dx.op.dot3.f32(i32 55, float %43, float %45, float %49, float %43, float %45, float %49)  ; Dot3(ax,ay,az,bx,by,bz)
  %51 = call float @dx.op.unary.f32(i32 25, float %50)  ; Rsqrt(value)
  %52 = fmul fast float %43, %51
  %53 = fmul fast float %45, %51
  %54 = fmul fast float %51, %49
  %55 = lshr i32 %23, 16
  %56 = and i32 %55, 255
  %57 = uitofp i32 %56 to float
  %58 = fmul fast float %57, 0x3F70101020000000
  %59 = add i32 %18, %8
  %60 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %59, i32 0)  ; BufferLoad(srv,index,wot)
  %61 = extractvalue %dx.types.ResRet.i32 %60, 0
  %62 = extractvalue %dx.types.CBufRet.i32 %13, 2
  %63 = add i32 %62, %61
  %64 = and i32 %63, 65535
  %65 = lshr i32 %63, 16
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %64, i32 %65, i32 0, float %26, float %29, float %32, float %26, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %66 = call float @dx.op.unary.f32(i32 6, float %52)  ; FAbs(value)
  %67 = call float @dx.op.unary.f32(i32 6, float %53)  ; FAbs(value)
  %68 = fadd fast float %66, %54
  %69 = fadd fast float %68, %67
  %70 = fdiv fast float 1.000000e+00, %69
  %71 = fmul fast float %34, 0x3F70101020000000
  %72 = fadd fast float %71, -5.000000e-01
  %73 = fmul fast float %72, %51
  %74 = fmul fast float %73, %70
  %75 = fadd fast float %74, 5.000000e-01
  %76 = fmul fast float %39, 0x3F70101020000000
  %77 = fadd fast float %76, -5.000000e-01
  %78 = fmul fast float %77, %51
  %79 = fmul fast float %78, %70
  %80 = fadd fast float %79, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %64, i32 %65, i32 0, float %75, float %80, float %75, float %75, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %64, i32 %65, i32 0, float %58, float %58, float %58, float %58, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %81

; <label>:81                                      ; preds = %12, %0
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
!18 = !{void ()* @cs_optlm_copy, !"cs_optlm_copy", null, !4, !19}
!19 = !{i32 0, i64 272, i32 4, !20}
!20 = !{i32 64, i32 1, i32 1}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}

