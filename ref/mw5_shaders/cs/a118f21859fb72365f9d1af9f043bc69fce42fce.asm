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
; shader hash: cf1b14a41f1957384e50c1976c82dbc7
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
;                                   texture    byte         r/o      T0             t0     1
;                                   texture    byte         r/o      T1             t3     1
;                                   texture    byte         r/o      T2             t4     1
;                                   texture    byte         r/o      T3             t8     1
;                                   texture    byte         r/o      T4             t9     1
;                                   texture    byte         r/o      T5            t10     1
;                                   texture    byte         r/o      T6             t1     1
;                                       UAV    byte         r/w      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%struct.ByteAddressBuffer = type { i32 }
%struct.RWByteAddressBuffer = type { i32 }
%BlendMapDataTrackConsts_decl = type { %struct.BlendMapDataTrackConsts }
%struct.BlendMapDataTrackConsts = type { i32, i32, i32, i32 }

define void @cs_skinning_blend_map_data_tracks() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %11 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %12 = alloca [4 x float], align 4
  %13 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %14 = extractvalue %dx.types.CBufRet.i32 %13, 1
  %15 = add i32 %14, %10
  %16 = shl i32 %15, 3
  %17 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %16, i32 undef)  ; BufferLoad(srv,index,wot)
  %18 = extractvalue %dx.types.ResRet.i32 %17, 0
  %19 = extractvalue %dx.types.ResRet.i32 %17, 1
  %20 = lshr i32 %18, 16
  %21 = icmp ult i32 %11, %20
  br i1 %21, label %22, label %130, !dx.controlflow.hints !20

; <label>:22                                      ; preds = %0
  %23 = and i32 %18, 65535
  %24 = mul nuw nsw i32 %23, 144
  %25 = and i32 %19, 65535
  %26 = lshr i32 %19, 16
  %27 = add i32 %26, %11
  %28 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %24, i32 undef)  ; BufferLoad(srv,index,wot)
  %29 = extractvalue %dx.types.ResRet.i32 %28, 3
  %30 = shl nuw nsw i32 %25, 3
  %31 = add nuw nsw i32 %30, 72
  %32 = add nuw nsw i32 %31, %24
  %33 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %32, i32 undef)  ; BufferLoad(srv,index,wot)
  %34 = extractvalue %dx.types.ResRet.i32 %33, 0
  %35 = extractvalue %dx.types.ResRet.i32 %33, 1
  %36 = icmp eq i32 %25, 0
  br i1 %36, label %121, label %37

; <label>:37                                      ; preds = %22
  %38 = and i32 %19, 65535
  br label %39

; <label>:39                                      ; preds = %101, %37
  %40 = phi float [ %110, %101 ], [ 0.000000e+00, %37 ]
  %41 = phi float [ %111, %101 ], [ 0.000000e+00, %37 ]
  %42 = phi float [ %112, %101 ], [ 0.000000e+00, %37 ]
  %43 = phi float [ %113, %101 ], [ 0.000000e+00, %37 ]
  %44 = phi i32 [ %114, %101 ], [ 0, %37 ]
  %45 = mul i32 %44, %34
  %46 = add i32 %35, %27
  %47 = add i32 %46, %45
  %48 = shl i32 %47, 2
  %49 = lshr i32 %47, 8
  %50 = and i32 %49, 4194303
  %51 = add i32 %50, %29
  %52 = shl i32 %51, 2
  %53 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %52, i32 undef)  ; BufferLoad(srv,index,wot)
  %54 = extractvalue %dx.types.ResRet.i32 %53, 0
  %55 = shl i32 %54, 10
  %56 = and i32 %48, 1020
  %57 = or i32 %55, %56
  %58 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %57, i32 undef)  ; BufferLoad(srv,index,wot)
  %59 = extractvalue %dx.types.ResRet.i32 %58, 0
  %60 = and i32 %59, 65535
  %61 = lshr i32 %59, 16
  %62 = uitofp i32 %61 to float
  %63 = fmul fast float %62, 0x3EF0000000000000
  %64 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %65 = extractvalue %dx.types.CBufRet.i32 %64, 2
  %66 = mul i32 %65, %60
  %67 = getelementptr inbounds [4 x float], [4 x float]* %12, i32 0, i32 0
  store float 0.000000e+00, float* %67, align 4
  %68 = getelementptr inbounds [4 x float], [4 x float]* %12, i32 0, i32 1
  store float 0.000000e+00, float* %68, align 4
  %69 = getelementptr inbounds [4 x float], [4 x float]* %12, i32 0, i32 2
  store float 0.000000e+00, float* %69, align 4
  %70 = getelementptr inbounds [4 x float], [4 x float]* %12, i32 0, i32 3
  store float 0.000000e+00, float* %70, align 4
  %71 = icmp eq i32 %65, 0
  br i1 %71, label %101, label %72

; <label>:72                                      ; preds = %39
  br label %73

; <label>:73                                      ; preds = %73, %72
  %74 = phi i32 [ %93, %73 ], [ 0, %72 ]
  %75 = add i32 %74, %66
  %76 = shl i32 %75, 2
  %77 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %76, i32 undef)  ; BufferLoad(srv,index,wot)
  %78 = extractvalue %dx.types.ResRet.i32 %77, 0
  %79 = bitcast i32 %78 to float
  %80 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %81 = extractvalue %dx.types.CBufRet.i32 %80, 3
  %82 = shl i32 %74, 2
  %83 = add i32 %81, %82
  %84 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %83, i32 undef)  ; BufferLoad(srv,index,wot)
  %85 = extractvalue %dx.types.ResRet.i32 %84, 0
  %86 = bitcast i32 %85 to float
  %87 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %82, i32 undef)  ; BufferLoad(srv,index,wot)
  %88 = extractvalue %dx.types.ResRet.i32 %87, 0
  %89 = fmul fast float %86, %79
  %90 = getelementptr [4 x float], [4 x float]* %12, i32 0, i32 %88
  %91 = load float, float* %90, align 4, !tbaa !21
  %92 = fadd fast float %91, %89
  store float %92, float* %90, align 4, !tbaa !21
  %93 = add i32 %74, 1
  %94 = extractvalue %dx.types.CBufRet.i32 %80, 2
  %95 = icmp ult i32 %93, %94
  br i1 %95, label %73, label %96

; <label>:96                                      ; preds = %73
  %97 = load float, float* %67, align 4
  %98 = load float, float* %68, align 4
  %99 = load float, float* %69, align 4
  %100 = load float, float* %70, align 4
  br label %101

; <label>:101                                     ; preds = %96, %39
  %102 = phi float [ %100, %96 ], [ 0.000000e+00, %39 ]
  %103 = phi float [ %99, %96 ], [ 0.000000e+00, %39 ]
  %104 = phi float [ %98, %96 ], [ 0.000000e+00, %39 ]
  %105 = phi float [ %97, %96 ], [ 0.000000e+00, %39 ]
  %106 = fmul fast float %105, %63
  %107 = fmul fast float %104, %63
  %108 = fmul fast float %103, %63
  %109 = fmul fast float %102, %63
  %110 = fadd fast float %106, %40
  %111 = fadd fast float %107, %41
  %112 = fadd fast float %108, %42
  %113 = fadd fast float %109, %43
  %114 = add nuw nsw i32 %44, 1
  %115 = icmp eq i32 %114, %38
  br i1 %115, label %116, label %39, !llvm.loop !25

; <label>:116                                     ; preds = %101
  %117 = bitcast float %110 to i32
  %118 = bitcast float %111 to i32
  %119 = bitcast float %112 to i32
  %120 = bitcast float %113 to i32
  br label %121

; <label>:121                                     ; preds = %116, %22
  %122 = phi i32 [ 0, %22 ], [ %117, %116 ]
  %123 = phi i32 [ 0, %22 ], [ %118, %116 ]
  %124 = phi i32 [ 0, %22 ], [ %119, %116 ]
  %125 = phi i32 [ 0, %22 ], [ %120, %116 ]
  %126 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %127 = extractvalue %dx.types.CBufRet.i32 %126, 0
  %128 = shl i32 %27, 4
  %129 = add i32 %127, %128
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %129, i32 undef, i32 %122, i32 %123, i32 %124, i32 %125, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %130

; <label>:130                                     ; preds = %121, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

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
!dx.entryPoints = !{!17}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !13, !15, null}
!5 = !{!6, !7, !8, !9, !10, !11, !12}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 3, i32 1, i32 11, i32 0, null}
!8 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 4, i32 1, i32 11, i32 0, null}
!9 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 8, i32 1, i32 11, i32 0, null}
!10 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 9, i32 1, i32 11, i32 0, null}
!11 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 10, i32 1, i32 11, i32 0, null}
!12 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!13 = !{!14}
!14 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!15 = !{!16}
!16 = !{i32 0, %BlendMapDataTrackConsts_decl* undef, !"", i32 0, i32 0, i32 1, i32 16, null}
!17 = !{void ()* @cs_skinning_blend_map_data_tracks, !"cs_skinning_blend_map_data_tracks", null, !4, !18}
!18 = !{i32 0, i64 272, i32 4, !19}
!19 = !{i32 64, i32 1, i32 1}
!20 = distinct !{!20, !"dx.controlflow.hints", i32 2}
!21 = !{!22, !22, i64 0}
!22 = !{!"float", !23, i64 0}
!23 = !{!"omnipotent char", !24, i64 0}
!24 = !{!"Simple C/C++ TBAA"}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.unroll.disable"}

