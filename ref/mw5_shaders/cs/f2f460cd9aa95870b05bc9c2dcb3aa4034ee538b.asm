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
; shader hash: 699328d722e7c2f949723ef0f21ca263
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
;                                       UAV    byte         r/w      U0             u1     1
;                                       UAV    byte         r/w      U1             u2     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%struct.RWByteAddressBuffer = type { i32 }
%hostlayout.waterConstants = type { %hostlayout.struct.GfxWaterConstants }
%hostlayout.struct.GfxWaterConstants = type { i32, float, float, float, float, float, float, i32, <3 x float>, float, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, float, float, float, float, i32, float, float, float, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, float, float, float, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [16 x <4 x float>], [16 x <4 x float>], <4 x float>, <4 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, [2 x <4 x i32>], [2 x <4 x i32>], [2 x <4 x i32>], [39 x <4 x i32>], [39 x <4 x i32>], [39 x <4 x i32>], <4 x i32>, <4 x float>, <4 x i32>, <4 x i32>, <4 x i32>, float, float, float, float, <3 x float>, i32, <3 x float>, i32, float, i32, i32, i32, float, float, float, float, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, i32, i32, i32, float, i32, i32, float, i32, i32, float, float, i32, float, i32, i32, i32 }

define void @cs_water_tile_generate_underwater_mesh_finalize() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 112, i32 undef)  ; BufferLoad(srv,index,wot)
  %5 = extractvalue %dx.types.ResRet.i32 %4, 0
  %6 = mul i32 %5, 3
  %7 = lshr i32 %6, 1
  %8 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %9 = extractvalue %dx.types.CBufRet.f32 %8, 1
  %10 = icmp ne i32 %7, 0
  %11 = add nuw i32 %7, 4
  %12 = icmp ult i32 %11, 30720
  %13 = and i1 %10, %12
  br i1 %13, label %14, label %21, !dx.controlflow.hints !13

; <label>:14                                      ; preds = %0
  %15 = add nuw i32 %7, 6
  %16 = fsub fast float -0.000000e+00, %9
  %17 = mul i32 %5, 12
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %17, i32 undef, float %16, float %16, float %16, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %18 = add i32 %17, 12
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %18, i32 undef, float %9, float %16, float %16, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %19 = add i32 %17, 24
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %19, i32 undef, float %16, float %9, float %16, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %20 = add i32 %17, 36
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %20, i32 undef, float %9, float %9, float %16, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %21

; <label>:21                                      ; preds = %14, %0
  %22 = phi i32 [ %15, %14 ], [ %7, %0 ]
  %23 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %24 = extractvalue %dx.types.ResRet.i32 %23, 0
  %25 = xor i32 %24, -1
  %26 = uitofp i32 %25 to float
  %27 = fmul fast float %26, 1.562500e-02
  %28 = fsub fast float %27, %9
  %29 = icmp ne i32 %24, 0
  %30 = fcmp fast ogt float %28, %9
  %31 = and i1 %29, %30
  %32 = icmp ne i32 %22, 0
  %33 = and i1 %32, %31
  %34 = add i32 %22, 4
  %35 = icmp ult i32 %34, 30720
  %36 = and i1 %35, %33
  br i1 %36, label %37, label %45, !dx.controlflow.hints !14

; <label>:37                                      ; preds = %21
  %38 = add i32 %22, 6
  %39 = fsub fast float -0.000000e+00, %9
  %40 = mul i32 %5, 12
  %41 = add i32 %40, 48
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %41, i32 undef, float %39, float %39, float %9, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %42 = add i32 %40, 60
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %42, i32 undef, float %9, float %39, float %9, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %43 = add i32 %40, 72
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %43, i32 undef, float %39, float %9, float %9, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %44 = add i32 %40, 84
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %44, i32 undef, float %9, float %9, float %9, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %45

; <label>:45                                      ; preds = %37, %21
  %46 = phi i32 [ %38, %37 ], [ %22, %21 ]
  %47 = call i32 @dx.op.binary.i32(i32 40, i32 %46, i32 46080)  ; UMin(a,b)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 112, i32 undef, i32 %47, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 116, i32 undef, i32 1, i32 0, i32 0, i32 0, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %48 = icmp ugt i32 %46, 32
  %49 = zext i1 %48 to i32
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 156, i32 undef, i32 %49, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.bufferStore.f32(i32, %dx.types.Handle, i32, i32, float, float, float, float, i8) #2

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }

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
!5 = !{!6, !7}
!6 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!7 = !{i32 1, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!8 = !{!9}
!9 = !{i32 0, %hostlayout.waterConstants* undef, !"", i32 0, i32 5, i32 1, i32 3376, null}
!10 = !{void ()* @cs_water_tile_generate_underwater_mesh_finalize, !"cs_water_tile_generate_underwater_mesh_finalize", null, !4, !11}
!11 = !{i32 0, i64 272, i32 4, !12}
!12 = !{i32 1, i32 1, i32 1}
!13 = distinct !{!13, !"dx.controlflow.hints", i32 2}
!14 = distinct !{!14, !"dx.controlflow.hints", i32 2}

