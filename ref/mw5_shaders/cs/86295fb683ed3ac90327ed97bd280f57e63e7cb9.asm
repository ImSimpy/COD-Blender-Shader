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
; shader hash: 61c0fd68432931e5567415ded3cfd68a
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

@"\01?tiledSharedMem@@3PAIA" = external addrspace(3) global [256 x i32], align 4
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
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %11 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %5
  store i32 %10, i32 addrspace(3)* %11, align 4, !tbaa !14
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %12 = and i32 %5, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %20, label %14, !dx.controlflow.hints !18

; <label>:14                                      ; preds = %0
  %15 = and i32 %5, -2
  %16 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %15
  %17 = load i32, i32 addrspace(3)* %16, align 4, !tbaa !14
  %18 = load i32, i32 addrspace(3)* %11, align 4, !tbaa !14
  %19 = add i32 %18, %17
  store i32 %19, i32 addrspace(3)* %11, align 4, !tbaa !14
  br label %20

; <label>:20                                      ; preds = %14, %0
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %21 = and i32 %5, 2
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %30, label %23, !dx.controlflow.hints !19

; <label>:23                                      ; preds = %20
  %24 = and i32 %5, -4
  %25 = or i32 %24, 1
  %26 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %25
  %27 = load i32, i32 addrspace(3)* %26, align 4, !tbaa !14
  %28 = load i32, i32 addrspace(3)* %11, align 4, !tbaa !14
  %29 = add i32 %28, %27
  store i32 %29, i32 addrspace(3)* %11, align 4, !tbaa !14
  br label %30

; <label>:30                                      ; preds = %23, %20
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %31 = and i32 %5, 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %40, label %33, !dx.controlflow.hints !20

; <label>:33                                      ; preds = %30
  %34 = and i32 %5, -8
  %35 = or i32 %34, 3
  %36 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %35
  %37 = load i32, i32 addrspace(3)* %36, align 4, !tbaa !14
  %38 = load i32, i32 addrspace(3)* %11, align 4, !tbaa !14
  %39 = add i32 %38, %37
  store i32 %39, i32 addrspace(3)* %11, align 4, !tbaa !14
  br label %40

; <label>:40                                      ; preds = %33, %30
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %41 = and i32 %5, 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %50, label %43, !dx.controlflow.hints !21

; <label>:43                                      ; preds = %40
  %44 = and i32 %5, -16
  %45 = or i32 %44, 7
  %46 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %45
  %47 = load i32, i32 addrspace(3)* %46, align 4, !tbaa !14
  %48 = load i32, i32 addrspace(3)* %11, align 4, !tbaa !14
  %49 = add i32 %48, %47
  store i32 %49, i32 addrspace(3)* %11, align 4, !tbaa !14
  br label %50

; <label>:50                                      ; preds = %43, %40
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %51 = and i32 %5, 16
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %60, label %53, !dx.controlflow.hints !22

; <label>:53                                      ; preds = %50
  %54 = and i32 %5, -32
  %55 = or i32 %54, 15
  %56 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %55
  %57 = load i32, i32 addrspace(3)* %56, align 4, !tbaa !14
  %58 = load i32, i32 addrspace(3)* %11, align 4, !tbaa !14
  %59 = add i32 %58, %57
  store i32 %59, i32 addrspace(3)* %11, align 4, !tbaa !14
  br label %60

; <label>:60                                      ; preds = %53, %50
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %61 = and i32 %5, 32
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %65, !dx.controlflow.hints !23

; <label>:63                                      ; preds = %60
  %64 = load i32, i32 addrspace(3)* %11, align 4, !tbaa !14
  br label %72

; <label>:65                                      ; preds = %60
  %66 = and i32 %5, -64
  %67 = or i32 %66, 31
  %68 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %67
  %69 = load i32, i32 addrspace(3)* %68, align 4, !tbaa !14
  %70 = load i32, i32 addrspace(3)* %11, align 4, !tbaa !14
  %71 = add i32 %70, %69
  store i32 %71, i32 addrspace(3)* %11, align 4, !tbaa !14
  br label %72

; <label>:72                                      ; preds = %65, %63
  %73 = phi i32 [ %64, %63 ], [ %71, %65 ]
  %74 = and i32 %5, 63
  %75 = icmp eq i32 %74, 63
  br i1 %75, label %76, label %79, !dx.controlflow.hints !24

; <label>:76                                      ; preds = %72
  %77 = lshr i32 %5, 6
  %78 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 %77
  store i32 %73, i32 addrspace(3)* %78, align 4, !tbaa !14
  br label %79

; <label>:79                                      ; preds = %76, %72
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %80 = icmp eq i32 %5, 0
  br i1 %80, label %81, label %89, !dx.controlflow.hints !25

; <label>:81                                      ; preds = %79
  %82 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 0), align 4, !tbaa !14
  %83 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 1), align 4, !tbaa !14
  %84 = add i32 %83, %82
  store i32 %84, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 1), align 4, !tbaa !14
  %85 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 2), align 4, !tbaa !14
  %86 = add i32 %85, %84
  store i32 %86, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 2), align 4, !tbaa !14
  %87 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 3), align 4, !tbaa !14
  %88 = add i32 %87, %86
  store i32 %88, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 3), align 4, !tbaa !14
  br label %89

; <label>:89                                      ; preds = %81, %79
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %90 = icmp ugt i32 %5, 63
  br i1 %90, label %91, label %97, !dx.controlflow.hints !26

; <label>:91                                      ; preds = %89
  %92 = lshr i32 %5, 6
  %93 = add nsw i32 %92, -1
  %94 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 %93
  %95 = load i32, i32 addrspace(3)* %94, align 4, !tbaa !14
  %96 = add i32 %95, %73
  br label %97

; <label>:97                                      ; preds = %91, %89
  %98 = phi i32 [ %96, %91 ], [ %73, %89 ]
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %8, i32 undef, i32 %98, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br i1 %80, label %99, label %101, !dx.controlflow.hints !27

; <label>:99                                      ; preds = %97
  %100 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 0, i32 263168, i32 undef, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  store i32 %100, i32 addrspace(3)* @"\01?semaphore@@3IA", align 4, !tbaa !14
  br label %101

; <label>:101                                     ; preds = %99, %97
  call void @dx.op.barrier(i32 80, i32 11)  ; Barrier(barrierMode)
  %102 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %103 = extractvalue %dx.types.CBufRet.i32 %102, 0
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %108, !dx.controlflow.hints !28

; <label>:105                                     ; preds = %101
  %106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %107 = extractvalue %dx.types.ResRet.i32 %106, 0
  br label %108

; <label>:108                                     ; preds = %105, %101
  %109 = phi i32 [ %107, %105 ], [ %103, %101 ]
  %110 = add i32 %109, 63
  %111 = lshr i32 %110, 6
  %112 = shl nuw nsw i32 %111, 4
  %113 = add nuw nsw i32 %112, 255
  %114 = lshr i32 %113, 8
  %115 = load i32, i32 addrspace(3)* @"\01?semaphore@@3IA", align 4, !tbaa !14
  %116 = add nsw i32 %114, -1
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %201, !dx.controlflow.hints !29

; <label>:118                                     ; preds = %108
  %119 = icmp ult i32 %5, 256
  br i1 %119, label %120, label %125, !dx.controlflow.hints !30

; <label>:120                                     ; preds = %118
  %121 = shl i32 %5, 10
  %122 = or i32 %121, 1020
  %123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %122, i32 undef)  ; BufferLoad(srv,index,wot)
  %124 = extractvalue %dx.types.ResRet.i32 %123, 0
  br label %125

; <label>:125                                     ; preds = %120, %118
  %126 = phi i32 [ %124, %120 ], [ 0, %118 ]
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %126, i32 addrspace(3)* %11, align 4, !tbaa !14
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %13, label %133, label %127, !dx.controlflow.hints !18

; <label>:127                                     ; preds = %125
  %128 = and i32 %5, -2
  %129 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %128
  %130 = load i32, i32 addrspace(3)* %129, align 4, !tbaa !14
  %131 = load i32, i32 addrspace(3)* %11, align 4, !tbaa !14
  %132 = add i32 %131, %130
  store i32 %132, i32 addrspace(3)* %11, align 4, !tbaa !14
  br label %133

; <label>:133                                     ; preds = %127, %125
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %22, label %141, label %134, !dx.controlflow.hints !19

; <label>:134                                     ; preds = %133
  %135 = and i32 %5, -4
  %136 = or i32 %135, 1
  %137 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %136
  %138 = load i32, i32 addrspace(3)* %137, align 4, !tbaa !14
  %139 = load i32, i32 addrspace(3)* %11, align 4, !tbaa !14
  %140 = add i32 %139, %138
  store i32 %140, i32 addrspace(3)* %11, align 4, !tbaa !14
  br label %141

; <label>:141                                     ; preds = %134, %133
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %32, label %149, label %142, !dx.controlflow.hints !20

; <label>:142                                     ; preds = %141
  %143 = and i32 %5, -8
  %144 = or i32 %143, 3
  %145 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %144
  %146 = load i32, i32 addrspace(3)* %145, align 4, !tbaa !14
  %147 = load i32, i32 addrspace(3)* %11, align 4, !tbaa !14
  %148 = add i32 %147, %146
  store i32 %148, i32 addrspace(3)* %11, align 4, !tbaa !14
  br label %149

; <label>:149                                     ; preds = %142, %141
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %42, label %157, label %150, !dx.controlflow.hints !21

; <label>:150                                     ; preds = %149
  %151 = and i32 %5, -16
  %152 = or i32 %151, 7
  %153 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %152
  %154 = load i32, i32 addrspace(3)* %153, align 4, !tbaa !14
  %155 = load i32, i32 addrspace(3)* %11, align 4, !tbaa !14
  %156 = add i32 %155, %154
  store i32 %156, i32 addrspace(3)* %11, align 4, !tbaa !14
  br label %157

; <label>:157                                     ; preds = %150, %149
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %52, label %165, label %158, !dx.controlflow.hints !22

; <label>:158                                     ; preds = %157
  %159 = and i32 %5, -32
  %160 = or i32 %159, 15
  %161 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %160
  %162 = load i32, i32 addrspace(3)* %161, align 4, !tbaa !14
  %163 = load i32, i32 addrspace(3)* %11, align 4, !tbaa !14
  %164 = add i32 %163, %162
  store i32 %164, i32 addrspace(3)* %11, align 4, !tbaa !14
  br label %165

; <label>:165                                     ; preds = %158, %157
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %62, label %166, label %168, !dx.controlflow.hints !23

; <label>:166                                     ; preds = %165
  %167 = load i32, i32 addrspace(3)* %11, align 4, !tbaa !14
  br label %175

; <label>:168                                     ; preds = %165
  %169 = and i32 %5, -64
  %170 = or i32 %169, 31
  %171 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %170
  %172 = load i32, i32 addrspace(3)* %171, align 4, !tbaa !14
  %173 = load i32, i32 addrspace(3)* %11, align 4, !tbaa !14
  %174 = add i32 %173, %172
  store i32 %174, i32 addrspace(3)* %11, align 4, !tbaa !14
  br label %175

; <label>:175                                     ; preds = %168, %166
  %176 = phi i32 [ %167, %166 ], [ %174, %168 ]
  br i1 %75, label %177, label %180, !dx.controlflow.hints !24

; <label>:177                                     ; preds = %175
  %178 = lshr i32 %5, 6
  %179 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 %178
  store i32 %176, i32 addrspace(3)* %179, align 4, !tbaa !14
  br label %180

; <label>:180                                     ; preds = %177, %175
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %80, label %181, label %189, !dx.controlflow.hints !25

; <label>:181                                     ; preds = %180
  %182 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 0), align 4, !tbaa !14
  %183 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 1), align 4, !tbaa !14
  %184 = add i32 %183, %182
  store i32 %184, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 1), align 4, !tbaa !14
  %185 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 2), align 4, !tbaa !14
  %186 = add i32 %185, %184
  store i32 %186, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 2), align 4, !tbaa !14
  %187 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 3), align 4, !tbaa !14
  %188 = add i32 %187, %186
  store i32 %188, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 3), align 4, !tbaa !14
  br label %189

; <label>:189                                     ; preds = %181, %180
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %90, label %190, label %196, !dx.controlflow.hints !26

; <label>:190                                     ; preds = %189
  %191 = lshr i32 %5, 6
  %192 = add nsw i32 %191, -1
  %193 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 %192
  %194 = load i32, i32 addrspace(3)* %193, align 4, !tbaa !14
  %195 = add i32 %194, %176
  br label %196

; <label>:196                                     ; preds = %190, %189
  %197 = phi i32 [ %195, %190 ], [ %176, %189 ]
  br i1 %119, label %198, label %201, !dx.controlflow.hints !31

; <label>:198                                     ; preds = %196
  %199 = shl i32 %5, 2
  %200 = add i32 %199, 262144
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %200, i32 undef, i32 %197, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %201

; <label>:201                                     ; preds = %198, %196, %108
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
!12 = !{i32 0, i64 272, i32 4, !13}
!13 = !{i32 256, i32 1, i32 1}
!14 = !{!15, !15, i64 0}
!15 = !{!"int", !16, i64 0}
!16 = !{!"omnipotent char", !17, i64 0}
!17 = !{!"Simple C/C++ TBAA"}
!18 = distinct !{!18, !"dx.controlflow.hints", i32 2}
!19 = distinct !{!19, !"dx.controlflow.hints", i32 2}
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

