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
; shader hash: 851a7af6f4c4aab3e607176d27a6f00e
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
;                                   texture     u32         buf      T1             t1     1
;                                   texture     u32         buf      T2             t2     1
;                                   texture     u32         buf      T3             t3     1
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
%"class.RWBuffer<unsigned int>" = type { i32 }
%GfxSampleLightGridVolumesLightingConsts = type { i32, i32, float, float, i32, i32, i32, i32, <3 x float>, i32 }

@"\01?gsTempData@@3PAIA" = external addrspace(3) global [4 x i32], align 4

define void @cs_compute_lightgrid_sampling_offsets_downsweep() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %11 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %12 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %13 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %14 = extractvalue %dx.types.CBufRet.i32 %13, 0
  %15 = icmp uge i32 %12, %14
  %16 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %12, i32 undef)  ; BufferLoad(srv,index,wot)
  %17 = extractvalue %dx.types.ResRet.i32 %16, 0
  %18 = select i1 %15, i32 0, i32 %17
  %19 = call i32 @dx.op.waveGetLaneCount(i32 112)  ; WaveGetLaneCount()
  %20 = udiv i32 %11, %19
  %21 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %18, i8 0, i8 1)  ; WaveActiveOp(value,op,sop)
  %22 = icmp eq i32 %19, 64
  br i1 %22, label %49, label %23, !dx.controlflow.hints !21

; <label>:23                                      ; preds = %0
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %24 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %24, label %25, label %27, !dx.controlflow.hints !22

; <label>:25                                      ; preds = %23
  %26 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %20
  store i32 %21, i32 addrspace(3)* %26, align 4, !tbaa !23
  br label %27

; <label>:27                                      ; preds = %25, %23
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %28 = icmp eq i32 %19, 32
  br i1 %28, label %29, label %34, !dx.controlflow.hints !27

; <label>:29                                      ; preds = %27
  %30 = xor i32 %20, 1
  %31 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %30
  %32 = load i32, i32 addrspace(3)* %31, align 4, !tbaa !23
  %33 = add i32 %32, %21
  br label %49

; <label>:34                                      ; preds = %27
  %35 = icmp eq i32 %19, 16
  br i1 %35, label %36, label %49, !dx.controlflow.hints !28

; <label>:36                                      ; preds = %34
  %37 = xor i32 %20, 1
  %38 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %37
  %39 = load i32, i32 addrspace(3)* %38, align 4, !tbaa !23
  %40 = add i32 %39, %21
  %41 = xor i32 %20, 2
  %42 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %41
  %43 = load i32, i32 addrspace(3)* %42, align 4, !tbaa !23
  %44 = add i32 %40, %43
  %45 = xor i32 %20, 3
  %46 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %45
  %47 = load i32, i32 addrspace(3)* %46, align 4, !tbaa !23
  %48 = add i32 %44, %47
  br label %49

; <label>:49                                      ; preds = %36, %34, %29, %0
  %50 = phi i32 [ %33, %29 ], [ %48, %36 ], [ %21, %0 ], [ 0, %34 ]
  %51 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %12, i32 undef)  ; BufferLoad(srv,index,wot)
  %52 = extractvalue %dx.types.ResRet.i32 %51, 0
  %53 = select i1 %15, i32 0, i32 %52
  %54 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %53, i8 0, i8 1)  ; WaveActiveOp(value,op,sop)
  br i1 %22, label %81, label %55, !dx.controlflow.hints !21

; <label>:55                                      ; preds = %49
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %56 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %56, label %57, label %59, !dx.controlflow.hints !22

; <label>:57                                      ; preds = %55
  %58 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %20
  store i32 %54, i32 addrspace(3)* %58, align 4, !tbaa !23
  br label %59

; <label>:59                                      ; preds = %57, %55
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %60 = icmp eq i32 %19, 32
  br i1 %60, label %61, label %66, !dx.controlflow.hints !27

; <label>:61                                      ; preds = %59
  %62 = xor i32 %20, 1
  %63 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %62
  %64 = load i32, i32 addrspace(3)* %63, align 4, !tbaa !23
  %65 = add i32 %64, %54
  br label %81

; <label>:66                                      ; preds = %59
  %67 = icmp eq i32 %19, 16
  br i1 %67, label %68, label %81, !dx.controlflow.hints !28

; <label>:68                                      ; preds = %66
  %69 = xor i32 %20, 1
  %70 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %69
  %71 = load i32, i32 addrspace(3)* %70, align 4, !tbaa !23
  %72 = add i32 %71, %54
  %73 = xor i32 %20, 2
  %74 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %73
  %75 = load i32, i32 addrspace(3)* %74, align 4, !tbaa !23
  %76 = add i32 %72, %75
  %77 = xor i32 %20, 3
  %78 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %77
  %79 = load i32, i32 addrspace(3)* %78, align 4, !tbaa !23
  %80 = add i32 %76, %79
  br label %81

; <label>:81                                      ; preds = %68, %66, %61, %49
  %82 = phi i32 [ %65, %61 ], [ %80, %68 ], [ %54, %49 ], [ 0, %66 ]
  %83 = icmp eq i32 %11, 0
  br i1 %83, label %84, label %85, !dx.controlflow.hints !29

; <label>:84                                      ; preds = %81
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %4, i32 %10, i32 undef, i32 %50, i32 %50, i32 %50, i32 %50, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %10, i32 undef, i32 %82, i32 %82, i32 %82, i32 %82, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %85

; <label>:85                                      ; preds = %84, %81
  %86 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %87 = extractvalue %dx.types.CBufRet.i32 %86, 1
  %88 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %89 = extractvalue %dx.types.CBufRet.i32 %88, 3
  %90 = sub i32 %87, %89
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %168

; <label>:92                                      ; preds = %85
  br label %93

; <label>:93                                      ; preds = %164, %92
  %94 = phi i32 [ %165, %164 ], [ 0, %92 ]
  %95 = mul i32 %12, 20
  %96 = add i32 %94, %95
  %97 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %96, i32 undef)  ; BufferLoad(srv,index,wot)
  %98 = extractvalue %dx.types.ResRet.i32 %97, 0
  %99 = select i1 %15, i32 0, i32 %98
  %100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %96, i32 undef)  ; BufferLoad(srv,index,wot)
  %101 = extractvalue %dx.types.ResRet.i32 %100, 0
  %102 = select i1 %15, i32 0, i32 %101
  %103 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %99, i8 0, i8 1)  ; WaveActiveOp(value,op,sop)
  br i1 %22, label %130, label %104, !dx.controlflow.hints !21

; <label>:104                                     ; preds = %93
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %105 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %105, label %106, label %108, !dx.controlflow.hints !22

; <label>:106                                     ; preds = %104
  %107 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %20
  store i32 %103, i32 addrspace(3)* %107, align 4, !tbaa !23
  br label %108

; <label>:108                                     ; preds = %106, %104
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %109 = icmp eq i32 %19, 32
  br i1 %109, label %110, label %115, !dx.controlflow.hints !27

; <label>:110                                     ; preds = %108
  %111 = xor i32 %20, 1
  %112 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %111
  %113 = load i32, i32 addrspace(3)* %112, align 4, !tbaa !23
  %114 = add i32 %113, %103
  br label %130

; <label>:115                                     ; preds = %108
  %116 = icmp eq i32 %19, 16
  br i1 %116, label %117, label %130, !dx.controlflow.hints !28

; <label>:117                                     ; preds = %115
  %118 = xor i32 %20, 1
  %119 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %118
  %120 = load i32, i32 addrspace(3)* %119, align 4, !tbaa !23
  %121 = add i32 %120, %103
  %122 = xor i32 %20, 2
  %123 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %122
  %124 = load i32, i32 addrspace(3)* %123, align 4, !tbaa !23
  %125 = add i32 %121, %124
  %126 = xor i32 %20, 3
  %127 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %126
  %128 = load i32, i32 addrspace(3)* %127, align 4, !tbaa !23
  %129 = add i32 %125, %128
  br label %130

; <label>:130                                     ; preds = %117, %115, %110, %93
  %131 = phi i32 [ %114, %110 ], [ %129, %117 ], [ %103, %93 ], [ 0, %115 ]
  %132 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %102, i8 0, i8 1)  ; WaveActiveOp(value,op,sop)
  br i1 %22, label %159, label %133, !dx.controlflow.hints !21

; <label>:133                                     ; preds = %130
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %134 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %134, label %135, label %137, !dx.controlflow.hints !22

; <label>:135                                     ; preds = %133
  %136 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %20
  store i32 %132, i32 addrspace(3)* %136, align 4, !tbaa !23
  br label %137

; <label>:137                                     ; preds = %135, %133
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %138 = icmp eq i32 %19, 32
  br i1 %138, label %139, label %144, !dx.controlflow.hints !27

; <label>:139                                     ; preds = %137
  %140 = xor i32 %20, 1
  %141 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %140
  %142 = load i32, i32 addrspace(3)* %141, align 4, !tbaa !23
  %143 = add i32 %142, %132
  br label %159

; <label>:144                                     ; preds = %137
  %145 = icmp eq i32 %19, 16
  br i1 %145, label %146, label %159, !dx.controlflow.hints !28

; <label>:146                                     ; preds = %144
  %147 = xor i32 %20, 1
  %148 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %147
  %149 = load i32, i32 addrspace(3)* %148, align 4, !tbaa !23
  %150 = add i32 %149, %132
  %151 = xor i32 %20, 2
  %152 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %151
  %153 = load i32, i32 addrspace(3)* %152, align 4, !tbaa !23
  %154 = add i32 %150, %153
  %155 = xor i32 %20, 3
  %156 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %155
  %157 = load i32, i32 addrspace(3)* %156, align 4, !tbaa !23
  %158 = add i32 %154, %157
  br label %159

; <label>:159                                     ; preds = %146, %144, %139, %130
  %160 = phi i32 [ %143, %139 ], [ %158, %146 ], [ %132, %130 ], [ 0, %144 ]
  br i1 %83, label %161, label %164, !dx.controlflow.hints !30

; <label>:161                                     ; preds = %159
  %162 = mul i32 %10, 20
  %163 = add i32 %94, %162
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %163, i32 undef, i32 %131, i32 %131, i32 %131, i32 %131, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %163, i32 undef, i32 %160, i32 %160, i32 %160, i32 %160, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %164

; <label>:164                                     ; preds = %161, %159
  %165 = add nuw nsw i32 %94, 1
  %166 = icmp eq i32 %165, %90
  br i1 %166, label %167, label %93

; <label>:167                                     ; preds = %164
  br label %168

; <label>:168                                     ; preds = %167, %85
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
!dx.entryPoints = !{!18}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !11, !16, null}
!5 = !{!6, !8, !9, !10}
!6 = !{i32 0, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 0, i32 1, i32 10, i32 0, !7}
!7 = !{i32 0, i32 5}
!8 = !{i32 1, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 10, i32 0, !7}
!9 = !{i32 2, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 2, i32 1, i32 10, i32 0, !7}
!10 = !{i32 3, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 3, i32 1, i32 10, i32 0, !7}
!11 = !{!12, !13, !14, !15}
!12 = !{i32 0, %"class.RWBuffer<unsigned int>"* undef, !"", i32 0, i32 0, i32 1, i32 10, i1 false, i1 false, i1 false, !7}
!13 = !{i32 1, %"class.RWBuffer<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 10, i1 false, i1 false, i1 false, !7}
!14 = !{i32 2, %"class.RWBuffer<unsigned int>"* undef, !"", i32 0, i32 2, i32 1, i32 10, i1 false, i1 false, i1 false, !7}
!15 = !{i32 3, %"class.RWBuffer<unsigned int>"* undef, !"", i32 0, i32 3, i32 1, i32 10, i1 false, i1 false, i1 false, !7}
!16 = !{!17}
!17 = !{i32 0, %GfxSampleLightGridVolumesLightingConsts* undef, !"", i32 0, i32 0, i32 1, i32 48, null}
!18 = !{void ()* @cs_compute_lightgrid_sampling_offsets_downsweep, !"cs_compute_lightgrid_sampling_offsets_downsweep", null, !4, !19}
!19 = !{i32 0, i64 524544, i32 4, !20}
!20 = !{i32 64, i32 1, i32 1}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = !{!24, !24, i64 0}
!24 = !{!"int", !25, i64 0}
!25 = !{!"omnipotent char", !26, i64 0}
!26 = !{!"Simple C/C++ TBAA"}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}

