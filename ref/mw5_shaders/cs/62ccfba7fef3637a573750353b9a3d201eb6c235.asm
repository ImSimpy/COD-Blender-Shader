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
; shader hash: ce761009e188ec642b291e9114450c31
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
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb0     1
;                                       UAV     u32          3d      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%"class.RWTexture3D<unsigned int>" = type { i32 }
%ConstantBufferWriteBitmask = type { <2 x i32>, <2 x i32> }

define void @cs_frustum_lights_clear_volume() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %4 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %5 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %2, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %6 = extractvalue %dx.types.CBufRet.i32 %5, 0
  %7 = extractvalue %dx.types.CBufRet.i32 %5, 1
  %8 = icmp ult i32 %3, %6
  %9 = icmp ult i32 %4, %7
  %10 = and i1 %8, %9
  br i1 %10, label %11, label %20, !dx.controlflow.hints !13

; <label>:11                                      ; preds = %0
  %12 = extractvalue %dx.types.CBufRet.i32 %5, 3
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %20, label %14

; <label>:14                                      ; preds = %11
  br label %15

; <label>:15                                      ; preds = %15, %14
  %16 = phi i32 [ %17, %15 ], [ 0, %14 ]
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %1, i32 %3, i32 %4, i32 %16, i32 0, i32 0, i32 0, i32 0, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %17 = add nuw i32 %16, 1
  %18 = icmp eq i32 %17, %12
  br i1 %18, label %19, label %15

; <label>:19                                      ; preds = %15
  br label %20

; <label>:20                                      ; preds = %19, %11, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32, i8) #1

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
!6 = !{i32 0, %"class.RWTexture3D<unsigned int>"* undef, !"", i32 0, i32 0, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!7 = !{i32 0, i32 5}
!8 = !{!9}
!9 = !{i32 0, %ConstantBufferWriteBitmask* undef, !"", i32 0, i32 0, i32 1, i32 16, null}
!10 = !{void ()* @cs_frustum_lights_clear_volume, !"cs_frustum_lights_clear_volume", null, !4, !11}
!11 = !{i32 0, i64 256, i32 4, !12}
!12 = !{i32 8, i32 8, i32 1}
!13 = distinct !{!13, !"dx.controlflow.hints", i32 2}

