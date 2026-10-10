;
; Note: shader requires additional functionality:
;       Wave level operations
;
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
; shader hash: 4e5bf4f255f1af8ac1ad2f534bcd2a74
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
;   [48 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb0     1
;                                   texture     u32         buf      T0             t0     1
;                                   texture    byte         r/o      T1             t1     1
;                                       UAV     u32         buf      U0             u0     1
;                                       UAV     u32         buf      U1             u1     1
;                                       UAV     u32         buf      U2             u2     1
;                                       UAV     u32         buf      U3             u3     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%"class.Buffer<unsigned int>" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.RWBuffer<unsigned int>" = type { i32 }
%GfxSampleLightGridVolumesLightingConsts = type { i32, i32, float, float, i32, i32, i32, i32, <3 x float>, i32 }

@"\01?gsTempData@@3PAIA" = external addrspace(3) global [4 x i32], align 4

define void @cs_compute_lightgrid_sampling_offsets_base() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %9 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %10 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %11 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %12 = extractvalue %dx.types.CBufRet.i32 %11, 0
  %13 = icmp uge i32 %10, %12
  %14 = shl i32 %10, 5
  %15 = or i32 %14, 12
  %16 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %15, i32 undef)  ; BufferLoad(srv,index,wot)
  %17 = extractvalue %dx.types.ResRet.i32 %16, 0
  %18 = and i32 %17, 255
  %19 = lshr i32 %17, 8
  %20 = and i32 %19, 255
  %21 = lshr i32 %17, 16
  %22 = and i32 %21, 255
  %23 = mul nuw nsw i32 %20, %18
  %24 = mul nuw nsw i32 %23, %22
  %25 = select i1 %13, i32 0, i32 %24
  %26 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %10, i32 undef)  ; BufferLoad(srv,index,wot)
  %27 = extractvalue %dx.types.ResRet.i32 %26, 0
  %28 = select i1 %13, i32 0, i32 %27
  %29 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %28)  ; Countbits(value)
  %30 = mul i32 %25, %29
  %31 = call i32 @dx.op.waveGetLaneCount(i32 112)  ; WaveGetLaneCount()
  %32 = udiv i32 %9, %31
  %33 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %30, i8 0, i8 1)  ; WaveActiveOp(value,op,sop)
  %34 = icmp eq i32 %31, 64
  br i1 %34, label %61, label %35, !dx.controlflow.hints !19

; <label>:35                                      ; preds = %0
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %36 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %36, label %37, label %39, !dx.controlflow.hints !20

; <label>:37                                      ; preds = %35
  %38 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %32
  store i32 %33, i32 addrspace(3)* %38, align 4, !tbaa !21
  br label %39

; <label>:39                                      ; preds = %37, %35
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %40 = icmp eq i32 %31, 32
  br i1 %40, label %41, label %46, !dx.controlflow.hints !25

; <label>:41                                      ; preds = %39
  %42 = xor i32 %32, 1
  %43 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %42
  %44 = load i32, i32 addrspace(3)* %43, align 4, !tbaa !21
  %45 = add i32 %44, %33
  br label %61

; <label>:46                                      ; preds = %39
  %47 = icmp eq i32 %31, 16
  br i1 %47, label %48, label %61, !dx.controlflow.hints !26

; <label>:48                                      ; preds = %46
  %49 = xor i32 %32, 1
  %50 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %49
  %51 = load i32, i32 addrspace(3)* %50, align 4, !tbaa !21
  %52 = add i32 %51, %33
  %53 = xor i32 %32, 2
  %54 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %53
  %55 = load i32, i32 addrspace(3)* %54, align 4, !tbaa !21
  %56 = add i32 %52, %55
  %57 = xor i32 %32, 3
  %58 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %57
  %59 = load i32, i32 addrspace(3)* %58, align 4, !tbaa !21
  %60 = add i32 %56, %59
  br label %61

; <label>:61                                      ; preds = %48, %46, %41, %0
  %62 = phi i32 [ %45, %41 ], [ %60, %48 ], [ %33, %0 ], [ 0, %46 ]
  %63 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %25, i8 0, i8 1)  ; WaveActiveOp(value,op,sop)
  br i1 %34, label %90, label %64, !dx.controlflow.hints !19

; <label>:64                                      ; preds = %61
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %65 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %65, label %66, label %68, !dx.controlflow.hints !20

; <label>:66                                      ; preds = %64
  %67 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %32
  store i32 %63, i32 addrspace(3)* %67, align 4, !tbaa !21
  br label %68

; <label>:68                                      ; preds = %66, %64
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %69 = icmp eq i32 %31, 32
  br i1 %69, label %70, label %75, !dx.controlflow.hints !25

; <label>:70                                      ; preds = %68
  %71 = xor i32 %32, 1
  %72 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %71
  %73 = load i32, i32 addrspace(3)* %72, align 4, !tbaa !21
  %74 = add i32 %73, %63
  br label %90

; <label>:75                                      ; preds = %68
  %76 = icmp eq i32 %31, 16
  br i1 %76, label %77, label %90, !dx.controlflow.hints !26

; <label>:77                                      ; preds = %75
  %78 = xor i32 %32, 1
  %79 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %78
  %80 = load i32, i32 addrspace(3)* %79, align 4, !tbaa !21
  %81 = add i32 %80, %63
  %82 = xor i32 %32, 2
  %83 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %82
  %84 = load i32, i32 addrspace(3)* %83, align 4, !tbaa !21
  %85 = add i32 %81, %84
  %86 = xor i32 %32, 3
  %87 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %86
  %88 = load i32, i32 addrspace(3)* %87, align 4, !tbaa !21
  %89 = add i32 %85, %88
  br label %90

; <label>:90                                      ; preds = %77, %75, %70, %61
  %91 = phi i32 [ %74, %70 ], [ %89, %77 ], [ %63, %61 ], [ 0, %75 ]
  %92 = icmp eq i32 %9, 0
  br i1 %92, label %93, label %94, !dx.controlflow.hints !27

; <label>:93                                      ; preds = %90
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %4, i32 %8, i32 undef, i32 %62, i32 %62, i32 %62, i32 %62, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %8, i32 undef, i32 %91, i32 %91, i32 %91, i32 %91, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %94

; <label>:94                                      ; preds = %93, %90
  %95 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %96 = extractvalue %dx.types.CBufRet.i32 %95, 1
  %97 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %98 = extractvalue %dx.types.CBufRet.i32 %97, 3
  %99 = sub i32 %96, %98
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %101, label %175

; <label>:101                                     ; preds = %94
  br label %102

; <label>:102                                     ; preds = %171, %101
  %103 = phi i32 [ %172, %171 ], [ 0, %101 ]
  %104 = and i32 %103, 31
  %105 = shl i32 1, %104
  %106 = and i32 %105, %28
  %107 = icmp ne i32 %106, 0
  %108 = select i1 %107, i32 %25, i32 0
  %109 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %108, i8 0, i8 1)  ; WaveActiveOp(value,op,sop)
  br i1 %34, label %136, label %110, !dx.controlflow.hints !19

; <label>:110                                     ; preds = %102
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %111 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %111, label %112, label %114, !dx.controlflow.hints !20

; <label>:112                                     ; preds = %110
  %113 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %32
  store i32 %109, i32 addrspace(3)* %113, align 4, !tbaa !21
  br label %114

; <label>:114                                     ; preds = %112, %110
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %115 = icmp eq i32 %31, 32
  br i1 %115, label %116, label %121, !dx.controlflow.hints !25

; <label>:116                                     ; preds = %114
  %117 = xor i32 %32, 1
  %118 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %117
  %119 = load i32, i32 addrspace(3)* %118, align 4, !tbaa !21
  %120 = add i32 %119, %109
  br label %136

; <label>:121                                     ; preds = %114
  %122 = icmp eq i32 %31, 16
  br i1 %122, label %123, label %136, !dx.controlflow.hints !26

; <label>:123                                     ; preds = %121
  %124 = xor i32 %32, 1
  %125 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %124
  %126 = load i32, i32 addrspace(3)* %125, align 4, !tbaa !21
  %127 = add i32 %126, %109
  %128 = xor i32 %32, 2
  %129 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %128
  %130 = load i32, i32 addrspace(3)* %129, align 4, !tbaa !21
  %131 = add i32 %127, %130
  %132 = xor i32 %32, 3
  %133 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %132
  %134 = load i32, i32 addrspace(3)* %133, align 4, !tbaa !21
  %135 = add i32 %131, %134
  br label %136

; <label>:136                                     ; preds = %123, %121, %116, %102
  %137 = phi i32 [ %120, %116 ], [ %135, %123 ], [ %109, %102 ], [ 0, %121 ]
  %138 = zext i1 %107 to i32
  %139 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %138, i8 0, i8 1)  ; WaveActiveOp(value,op,sop)
  br i1 %34, label %166, label %140, !dx.controlflow.hints !19

; <label>:140                                     ; preds = %136
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %141 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %141, label %142, label %144, !dx.controlflow.hints !20

; <label>:142                                     ; preds = %140
  %143 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %32
  store i32 %139, i32 addrspace(3)* %143, align 4, !tbaa !21
  br label %144

; <label>:144                                     ; preds = %142, %140
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %145 = icmp eq i32 %31, 32
  br i1 %145, label %146, label %151, !dx.controlflow.hints !25

; <label>:146                                     ; preds = %144
  %147 = xor i32 %32, 1
  %148 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %147
  %149 = load i32, i32 addrspace(3)* %148, align 4, !tbaa !21
  %150 = add i32 %149, %139
  br label %166

; <label>:151                                     ; preds = %144
  %152 = icmp eq i32 %31, 16
  br i1 %152, label %153, label %166, !dx.controlflow.hints !26

; <label>:153                                     ; preds = %151
  %154 = xor i32 %32, 1
  %155 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %154
  %156 = load i32, i32 addrspace(3)* %155, align 4, !tbaa !21
  %157 = add i32 %156, %139
  %158 = xor i32 %32, 2
  %159 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %158
  %160 = load i32, i32 addrspace(3)* %159, align 4, !tbaa !21
  %161 = add i32 %157, %160
  %162 = xor i32 %32, 3
  %163 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %162
  %164 = load i32, i32 addrspace(3)* %163, align 4, !tbaa !21
  %165 = add i32 %161, %164
  br label %166

; <label>:166                                     ; preds = %153, %151, %146, %136
  %167 = phi i32 [ %150, %146 ], [ %165, %153 ], [ %139, %136 ], [ 0, %151 ]
  br i1 %92, label %168, label %171, !dx.controlflow.hints !28

; <label>:168                                     ; preds = %166
  %169 = mul i32 %8, 20
  %170 = add i32 %103, %169
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %170, i32 undef, i32 %137, i32 %137, i32 %137, i32 %137, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %170, i32 undef, i32 %167, i32 %167, i32 %167, i32 %167, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %171

; <label>:171                                     ; preds = %168, %166
  %172 = add nuw nsw i32 %103, 1
  %173 = icmp eq i32 %172, %99
  br i1 %173, label %174, label %102

; <label>:174                                     ; preds = %171
  br label %175

; <label>:175                                     ; preds = %174, %94
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.waveGetLaneCount(i32) #0

; Function Attrs: nounwind
declare i32 @dx.op.waveActiveOp.i32(i32, i32, i8, i8) #1

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #3

; Function Attrs: nounwind
declare i1 @dx.op.waveIsFirstLane(i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }
attributes #3 = { noduplicate nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!16}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !9, !14, null}
!5 = !{!6, !8}
!6 = !{i32 0, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 0, i32 1, i32 10, i32 0, !7}
!7 = !{i32 0, i32 5}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!9 = !{!10, !11, !12, !13}
!10 = !{i32 0, %"class.RWBuffer<unsigned int>"* undef, !"", i32 0, i32 0, i32 1, i32 10, i1 false, i1 false, i1 false, !7}
!11 = !{i32 1, %"class.RWBuffer<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 10, i1 false, i1 false, i1 false, !7}
!12 = !{i32 2, %"class.RWBuffer<unsigned int>"* undef, !"", i32 0, i32 2, i32 1, i32 10, i1 false, i1 false, i1 false, !7}
!13 = !{i32 3, %"class.RWBuffer<unsigned int>"* undef, !"", i32 0, i32 3, i32 1, i32 10, i1 false, i1 false, i1 false, !7}
!14 = !{!15}
!15 = !{i32 0, %GfxSampleLightGridVolumesLightingConsts* undef, !"", i32 0, i32 0, i32 1, i32 48, null}
!16 = !{void ()* @cs_compute_lightgrid_sampling_offsets_base, !"cs_compute_lightgrid_sampling_offsets_base", null, !4, !17}
!17 = !{i32 0, i64 524560, i32 4, !18}
!18 = !{i32 64, i32 1, i32 1}
!19 = distinct !{!19, !"dx.controlflow.hints", i32 2}
!20 = distinct !{!20, !"dx.controlflow.hints", i32 2}
!21 = !{!22, !22, i64 0}
!22 = !{!"int", !23, i64 0}
!23 = !{!"omnipotent char", !24, i64 0}
!24 = !{!"Simple C/C++ TBAA"}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}

