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
; shader hash: d8db3a6e9b0f860ebee0c4024956d208
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
;                                       UAV    byte         r/w      U0             u1     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%struct.ByteAddressBuffer = type { i32 }
%struct.RWByteAddressBuffer = type { i32 }
%RadixSortConsts = type { i32, i32, i32, i32 }

@"\01?gsTempData@@3PAIA" = external addrspace(3) global [16 x i32], align 4
@"\01?tiledOffsets256@@3PAIA" = external addrspace(3) global [4 x i32], align 4
@"\01?semaphore@@3IA" = external addrspace(3) global i32, align 4

define void @radix_sort_gen_radix_offsets() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %5 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %6 = shl i32 %4, 8
  %7 = add i32 %6, %5
  %8 = shl i32 %7, 2
  %9 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %8, i32 undef)  ; BufferLoad(srv,index,wot)
  %10 = extractvalue %dx.types.ResRet.i32 %9, 0
  %11 = call i32 @dx.op.waveGetLaneCount(i32 112)  ; WaveGetLaneCount()
  %12 = and i32 %5, 63
  %13 = udiv i32 %12, %11
  %14 = udiv i32 64, %11
  %15 = lshr i32 %5, 6
  %16 = mul i32 %14, %15
  %17 = call i32 @dx.op.wavePrefixOp.i32(i32 121, i32 %10, i8 0, i8 1)  ; WavePrefixOp(value,op,sop)
  %18 = add i32 %17, %10
  %19 = icmp eq i32 %11, 64
  br i1 %19, label %59, label %20, !dx.controlflow.hints !14

; <label>:20                                      ; preds = %0
  %21 = call i32 @dx.op.waveGetLaneIndex(i32 111)  ; WaveGetLaneIndex()
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %22 = add i32 %11, -1
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %27, !dx.controlflow.hints !15

; <label>:24                                      ; preds = %20
  %25 = add i32 %16, %13
  %26 = getelementptr [16 x i32], [16 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %25
  store i32 %18, i32 addrspace(3)* %26, align 4, !tbaa !16
  br label %27

; <label>:27                                      ; preds = %24, %20
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %28 = icmp eq i32 %11, 32
  br i1 %28, label %29, label %35, !dx.controlflow.hints !20

; <label>:29                                      ; preds = %27
  %30 = icmp ugt i32 %12, 31
  br i1 %30, label %31, label %59, !dx.controlflow.hints !21

; <label>:31                                      ; preds = %29
  %32 = getelementptr [16 x i32], [16 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %16
  %33 = load i32, i32 addrspace(3)* %32, align 4, !tbaa !16
  %34 = add i32 %33, %18
  br label %59

; <label>:35                                      ; preds = %27
  %36 = icmp eq i32 %11, 16
  br i1 %36, label %37, label %59, !dx.controlflow.hints !22

; <label>:37                                      ; preds = %35
  %38 = icmp ugt i32 %12, 15
  br i1 %38, label %39, label %43, !dx.controlflow.hints !23

; <label>:39                                      ; preds = %37
  %40 = getelementptr [16 x i32], [16 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %16
  %41 = load i32, i32 addrspace(3)* %40, align 4, !tbaa !16
  %42 = add i32 %41, %18
  br label %43

; <label>:43                                      ; preds = %39, %37
  %44 = phi i32 [ %42, %39 ], [ %18, %37 ]
  %45 = icmp ugt i32 %12, 31
  br i1 %45, label %46, label %51, !dx.controlflow.hints !24

; <label>:46                                      ; preds = %43
  %47 = add i32 %16, 1
  %48 = getelementptr [16 x i32], [16 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %47
  %49 = load i32, i32 addrspace(3)* %48, align 4, !tbaa !16
  %50 = add i32 %49, %44
  br label %51

; <label>:51                                      ; preds = %46, %43
  %52 = phi i32 [ %50, %46 ], [ %44, %43 ]
  %53 = icmp ugt i32 %12, 47
  br i1 %53, label %54, label %59, !dx.controlflow.hints !25

; <label>:54                                      ; preds = %51
  %55 = add i32 %16, 2
  %56 = getelementptr [16 x i32], [16 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %55
  %57 = load i32, i32 addrspace(3)* %56, align 4, !tbaa !16
  %58 = add i32 %57, %52
  br label %59

; <label>:59                                      ; preds = %54, %51, %35, %31, %29, %0
  %60 = phi i32 [ %18, %0 ], [ %34, %31 ], [ %18, %29 ], [ %58, %54 ], [ %52, %51 ], [ 0, %35 ]
  %61 = icmp eq i32 %12, 63
  br i1 %61, label %62, label %64, !dx.controlflow.hints !26

; <label>:62                                      ; preds = %59
  %63 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 %15
  store i32 %60, i32 addrspace(3)* %63, align 4, !tbaa !16
  br label %64

; <label>:64                                      ; preds = %62, %59
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %65 = icmp eq i32 %5, 0
  br i1 %65, label %66, label %74, !dx.controlflow.hints !27

; <label>:66                                      ; preds = %64
  %67 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 0), align 4, !tbaa !16
  %68 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 1), align 4, !tbaa !16
  %69 = add i32 %68, %67
  store i32 %69, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 1), align 4, !tbaa !16
  %70 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 2), align 4, !tbaa !16
  %71 = add i32 %70, %69
  store i32 %71, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 2), align 4, !tbaa !16
  %72 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 3), align 4, !tbaa !16
  %73 = add i32 %72, %71
  store i32 %73, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 3), align 4, !tbaa !16
  br label %74

; <label>:74                                      ; preds = %66, %64
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %75 = icmp ugt i32 %5, 63
  br i1 %75, label %76, label %81, !dx.controlflow.hints !28

; <label>:76                                      ; preds = %74
  %77 = add nsw i32 %15, -1
  %78 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 %77
  %79 = load i32, i32 addrspace(3)* %78, align 4, !tbaa !16
  %80 = add i32 %79, %60
  br label %81

; <label>:81                                      ; preds = %76, %74
  %82 = phi i32 [ %80, %76 ], [ %60, %74 ]
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %8, i32 undef, i32 %82, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br i1 %65, label %83, label %85, !dx.controlflow.hints !29

; <label>:83                                      ; preds = %81
  %84 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 0, i32 263168, i32 undef, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  store i32 %84, i32 addrspace(3)* @"\01?semaphore@@3IA", align 4, !tbaa !16
  br label %85

; <label>:85                                      ; preds = %83, %81
  call void @dx.op.barrier(i32 80, i32 11)  ; Barrier(barrierMode)
  %86 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %87 = extractvalue %dx.types.CBufRet.i32 %86, 0
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %92, !dx.controlflow.hints !30

; <label>:89                                      ; preds = %85
  %90 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %91 = extractvalue %dx.types.ResRet.i32 %90, 0
  br label %92

; <label>:92                                      ; preds = %89, %85
  %93 = phi i32 [ %91, %89 ], [ %87, %85 ]
  %94 = add i32 %93, 63
  %95 = lshr i32 %94, 6
  %96 = shl nuw nsw i32 %95, 4
  %97 = add nuw nsw i32 %96, 255
  %98 = lshr i32 %97, 8
  %99 = load i32, i32 addrspace(3)* @"\01?semaphore@@3IA", align 4, !tbaa !16
  %100 = add nsw i32 %98, -1
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %176, !dx.controlflow.hints !31

; <label>:102                                     ; preds = %92
  %103 = icmp ult i32 %5, 256
  br i1 %103, label %104, label %109, !dx.controlflow.hints !32

; <label>:104                                     ; preds = %102
  %105 = shl i32 %5, 10
  %106 = or i32 %105, 1020
  %107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %106, i32 undef)  ; BufferLoad(srv,index,wot)
  %108 = extractvalue %dx.types.ResRet.i32 %107, 0
  br label %109

; <label>:109                                     ; preds = %104, %102
  %110 = phi i32 [ %108, %104 ], [ 0, %102 ]
  %111 = call i32 @dx.op.wavePrefixOp.i32(i32 121, i32 %110, i8 0, i8 1)  ; WavePrefixOp(value,op,sop)
  %112 = add i32 %111, %110
  br i1 %19, label %152, label %113, !dx.controlflow.hints !14

; <label>:113                                     ; preds = %109
  %114 = call i32 @dx.op.waveGetLaneIndex(i32 111)  ; WaveGetLaneIndex()
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %115 = add i32 %11, -1
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %120, !dx.controlflow.hints !15

; <label>:117                                     ; preds = %113
  %118 = add i32 %16, %13
  %119 = getelementptr [16 x i32], [16 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %118
  store i32 %112, i32 addrspace(3)* %119, align 4, !tbaa !16
  br label %120

; <label>:120                                     ; preds = %117, %113
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %121 = icmp eq i32 %11, 32
  br i1 %121, label %122, label %128, !dx.controlflow.hints !20

; <label>:122                                     ; preds = %120
  %123 = icmp ugt i32 %12, 31
  br i1 %123, label %124, label %152, !dx.controlflow.hints !21

; <label>:124                                     ; preds = %122
  %125 = getelementptr [16 x i32], [16 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %16
  %126 = load i32, i32 addrspace(3)* %125, align 4, !tbaa !16
  %127 = add i32 %126, %112
  br label %152

; <label>:128                                     ; preds = %120
  %129 = icmp eq i32 %11, 16
  br i1 %129, label %130, label %152, !dx.controlflow.hints !22

; <label>:130                                     ; preds = %128
  %131 = icmp ugt i32 %12, 15
  br i1 %131, label %132, label %136, !dx.controlflow.hints !23

; <label>:132                                     ; preds = %130
  %133 = getelementptr [16 x i32], [16 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %16
  %134 = load i32, i32 addrspace(3)* %133, align 4, !tbaa !16
  %135 = add i32 %134, %112
  br label %136

; <label>:136                                     ; preds = %132, %130
  %137 = phi i32 [ %135, %132 ], [ %112, %130 ]
  %138 = icmp ugt i32 %12, 31
  br i1 %138, label %139, label %144, !dx.controlflow.hints !24

; <label>:139                                     ; preds = %136
  %140 = add i32 %16, 1
  %141 = getelementptr [16 x i32], [16 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %140
  %142 = load i32, i32 addrspace(3)* %141, align 4, !tbaa !16
  %143 = add i32 %142, %137
  br label %144

; <label>:144                                     ; preds = %139, %136
  %145 = phi i32 [ %143, %139 ], [ %137, %136 ]
  %146 = icmp ugt i32 %12, 47
  br i1 %146, label %147, label %152, !dx.controlflow.hints !25

; <label>:147                                     ; preds = %144
  %148 = add i32 %16, 2
  %149 = getelementptr [16 x i32], [16 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %148
  %150 = load i32, i32 addrspace(3)* %149, align 4, !tbaa !16
  %151 = add i32 %150, %145
  br label %152

; <label>:152                                     ; preds = %147, %144, %128, %124, %122, %109
  %153 = phi i32 [ %112, %109 ], [ %127, %124 ], [ %112, %122 ], [ %151, %147 ], [ %145, %144 ], [ 0, %128 ]
  br i1 %61, label %154, label %156, !dx.controlflow.hints !26

; <label>:154                                     ; preds = %152
  %155 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 %15
  store i32 %153, i32 addrspace(3)* %155, align 4, !tbaa !16
  br label %156

; <label>:156                                     ; preds = %154, %152
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %65, label %157, label %165, !dx.controlflow.hints !27

; <label>:157                                     ; preds = %156
  %158 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 0), align 4, !tbaa !16
  %159 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 1), align 4, !tbaa !16
  %160 = add i32 %159, %158
  store i32 %160, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 1), align 4, !tbaa !16
  %161 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 2), align 4, !tbaa !16
  %162 = add i32 %161, %160
  store i32 %162, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 2), align 4, !tbaa !16
  %163 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 3), align 4, !tbaa !16
  %164 = add i32 %163, %162
  store i32 %164, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 3), align 4, !tbaa !16
  br label %165

; <label>:165                                     ; preds = %157, %156
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %75, label %166, label %171, !dx.controlflow.hints !28

; <label>:166                                     ; preds = %165
  %167 = add nsw i32 %15, -1
  %168 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 %167
  %169 = load i32, i32 addrspace(3)* %168, align 4, !tbaa !16
  %170 = add i32 %169, %153
  br label %171

; <label>:171                                     ; preds = %166, %165
  %172 = phi i32 [ %170, %166 ], [ %153, %165 ]
  br i1 %103, label %173, label %176, !dx.controlflow.hints !33

; <label>:173                                     ; preds = %171
  %174 = shl i32 %5, 2
  %175 = add i32 %174, 262144
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %175, i32 undef, i32 %172, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %176

; <label>:176                                     ; preds = %173, %171, %92
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind
declare i32 @dx.op.atomicBinOp.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32) #1

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.waveGetLaneIndex(i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.waveGetLaneCount(i32) #0

; Function Attrs: nounwind
declare i32 @dx.op.wavePrefixOp.i32(i32, i32, i8, i8) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #3

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #3

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #3

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { noduplicate nounwind }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!11}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !7, !9, null}
!5 = !{!6}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!7 = !{!8}
!8 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i1 true, i1 false, i1 false, null}
!9 = !{!10}
!10 = !{i32 0, %RadixSortConsts* undef, !"", i32 0, i32 0, i32 1, i32 16, null}
!11 = !{void ()* @radix_sort_gen_radix_offsets, !"radix_sort_gen_radix_offsets", null, !4, !12}
!12 = !{i32 0, i64 524560, i32 4, !13}
!13 = !{i32 256, i32 1, i32 1}
!14 = distinct !{!14, !"dx.controlflow.hints", i32 2}
!15 = distinct !{!15, !"dx.controlflow.hints", i32 2}
!16 = !{!17, !17, i64 0}
!17 = !{!"int", !18, i64 0}
!18 = !{!"omnipotent char", !19, i64 0}
!19 = !{!"Simple C/C++ TBAA"}
!20 = distinct !{!20, !"dx.controlflow.hints", i32 2}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}

