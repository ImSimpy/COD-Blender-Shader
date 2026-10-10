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
; shader hash: 7c032ca383c81c4cf30cba1ea25f0d42
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
;   [4112 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb2     1
;                                       UAV     f32          2d      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%"class.RWTexture2D<vector<float, 4> >" = type { <4 x float> }
%TransShadowUsedAreas = type { i32, i32, i32, i32, [256 x <4 x i32>] }

define void @cs_sunvis_trans_shadow_clear_translucent() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = alloca [4 x i32], align 4
  %4 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %5 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %6 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %7 = call i32 @dx.op.groupId.i32(i32 94, i32 1)  ; GroupId(component)
  %8 = call i32 @dx.op.groupId.i32(i32 94, i32 2)  ; GroupId(component)
  %9 = and i32 %8, 3
  %10 = lshr i32 %8, 2
  %11 = add nuw nsw i32 %10, 1
  %12 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %2, i32 %11)  ; CBufferLoadLegacy(handle,regIndex)
  %13 = extractvalue %dx.types.CBufRet.i32 %12, 0
  %14 = extractvalue %dx.types.CBufRet.i32 %12, 1
  %15 = extractvalue %dx.types.CBufRet.i32 %12, 2
  %16 = extractvalue %dx.types.CBufRet.i32 %12, 3
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i32 0, i32 0
  store i32 %13, i32* %17, align 4
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i32 0, i32 1
  store i32 %14, i32* %18, align 4
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i32 0, i32 2
  store i32 %15, i32* %19, align 4
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i32 0, i32 3
  store i32 %16, i32* %20, align 4
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i32 0, i32 %9
  %22 = load i32, i32* %21, align 4, !tbaa !13
  %23 = lshr i32 %22, 16
  %24 = and i32 %22, 65535
  %25 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6, i32 8, i32 %4)  ; UMad(a,b,c)
  %26 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7, i32 8, i32 %5)  ; UMad(a,b,c)
  %27 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %2, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %28 = extractvalue %dx.types.CBufRet.i32 %27, 0
  %29 = call i32 @dx.op.tertiary.i32(i32 49, i32 %23, i32 %28, i32 %25)  ; UMad(a,b,c)
  %30 = call i32 @dx.op.tertiary.i32(i32 49, i32 %24, i32 %28, i32 %26)  ; UMad(a,b,c)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %29, i32 %30, i32 undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!10}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{null, !5, !8, null}
!5 = !{!6}
!6 = !{i32 0, %"class.RWTexture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!7 = !{i32 0, i32 9}
!8 = !{!9}
!9 = !{i32 0, %TransShadowUsedAreas* undef, !"", i32 0, i32 2, i32 1, i32 4112, null}
!10 = !{void ()* @cs_sunvis_trans_shadow_clear_translucent, !"cs_sunvis_trans_shadow_clear_translucent", null, !4, !11}
!11 = !{i32 0, i64 256, i32 4, !12}
!12 = !{i32 8, i32 8, i32 1}
!13 = !{!14, !14, i64 0}
!14 = !{!"int", !15, i64 0}
!15 = !{!"omnipotent char", !16, i64 0}
!16 = !{!"Simple C/C++ TBAA"}

