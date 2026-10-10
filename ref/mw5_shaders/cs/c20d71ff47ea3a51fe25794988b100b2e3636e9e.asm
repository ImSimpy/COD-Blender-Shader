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
; shader hash: c9dd72619d5d6e4b0690f6cac3268ccc
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
; Resource bind info for 
; {
;
;   [64 x i8] (type annotation not present)
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb5     1
;                                   texture    byte         r/o      T0             t0     1
;                                   texture    byte         r/o      T1             t1     1
;                                   texture    byte         r/o      T2             t2     1
;                                   texture    byte         r/o      T3             t3     1
;                                       UAV  struct         r/w      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.RWStructuredBuffer<GfxGPReadBackInfo>" = type { %struct.GfxGPReadBackInfo }
%struct.GfxGPReadBackInfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%GPBatchConsts = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@"\01?tiledSharedMem@@3PAIA" = external addrspace(3) global [64 x i32], align 4

define void @readback_gp_stats_postocclusion() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %8 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %9 = shl i32 %7, 6
  %10 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %11 = extractvalue %dx.types.CBufRet.i32 %10, 2
  %12 = icmp eq i32 %11, 0
  %13 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %14 = extractvalue %dx.types.CBufRet.i32 %13, 0
  %15 = shl i32 %14, 2
  br i1 %12, label %19, label %16, !dx.controlflow.hints !18

; <label>:16                                      ; preds = %0
  %17 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %15, i32 undef)  ; BufferLoad(srv,index,wot)
  %18 = extractvalue %dx.types.ResRet.i32 %17, 0
  br label %25

; <label>:19                                      ; preds = %0
  %20 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %15, i32 undef)  ; BufferLoad(srv,index,wot)
  %21 = extractvalue %dx.types.ResRet.i32 %20, 0
  %22 = shl i32 %21, 2
  %23 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %22, i32 undef)  ; BufferLoad(srv,index,wot)
  %24 = extractvalue %dx.types.ResRet.i32 %23, 0
  br label %25

; <label>:25                                      ; preds = %19, %16
  %26 = phi i32 [ %18, %16 ], [ %24, %19 ]
  %27 = sub i32 0, %8
  %28 = icmp eq i32 %9, %27
  br i1 %28, label %29, label %33, !dx.controlflow.hints !19

; <label>:29                                      ; preds = %25
  %30 = shl i32 %26, 2
  %31 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %30, i32 undef)  ; BufferLoad(srv,index,wot)
  %32 = extractvalue %dx.types.ResRet.i32 %31, 0
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 16, i32 %32, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 20, i32 %26, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %33

; <label>:33                                      ; preds = %29, %25
  %34 = add i32 %9, %8
  %35 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %36 = extractvalue %dx.types.CBufRet.i32 %35, 0
  %37 = icmp ult i32 %34, %36
  br i1 %37, label %38, label %129, !dx.controlflow.hints !20

; <label>:38                                      ; preds = %33
  %39 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %40 = extractvalue %dx.types.CBufRet.i32 %39, 2
  %41 = icmp eq i32 %40, 0
  %42 = extractvalue %dx.types.CBufRet.i32 %35, 1
  %43 = extractvalue %dx.types.CBufRet.i32 %35, 2
  %44 = icmp eq i32 %43, 0
  %45 = shl i32 %34, 2
  br i1 %41, label %79, label %46, !dx.controlflow.hints !21

; <label>:46                                      ; preds = %38
  br i1 %44, label %51, label %47, !dx.controlflow.hints !22

; <label>:47                                      ; preds = %46
  %48 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %45, i32 undef)  ; BufferLoad(srv,index,wot)
  %49 = extractvalue %dx.types.ResRet.i32 %48, 0
  %50 = lshr i32 %49, 16
  br label %51

; <label>:51                                      ; preds = %47, %46
  %52 = phi i32 [ %50, %47 ], [ 1, %46 ]
  %53 = add i32 %52, %34
  %54 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %45, i32 undef)  ; BufferLoad(srv,index,wot)
  %55 = extractvalue %dx.types.ResRet.i32 %54, 0
  %56 = shl i32 %53, 2
  %57 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %56, i32 undef)  ; BufferLoad(srv,index,wot)
  %58 = extractvalue %dx.types.ResRet.i32 %57, 0
  %59 = icmp ult i32 %55, %58
  %60 = icmp ult i32 %58, 262144
  %61 = and i1 %59, %60
  br i1 %61, label %62, label %71, !dx.controlflow.hints !23

; <label>:62                                      ; preds = %51
  %63 = shl i32 %55, 2
  %64 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %63, i32 undef)  ; BufferLoad(srv,index,wot)
  %65 = extractvalue %dx.types.ResRet.i32 %64, 0
  %66 = mul i32 %65, 3
  %67 = shl i32 %58, 2
  %68 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %67, i32 undef)  ; BufferLoad(srv,index,wot)
  %69 = extractvalue %dx.types.ResRet.i32 %68, 0
  %70 = mul i32 %69, 3
  br label %71

; <label>:71                                      ; preds = %62, %51
  %72 = phi i32 [ %66, %62 ], [ 0, %51 ]
  %73 = phi i32 [ %70, %62 ], [ 0, %51 ]
  %74 = icmp ugt i32 %73, %72
  %75 = icmp ult i32 %73, %42
  %76 = and i1 %74, %75
  %77 = sub i32 %73, %72
  %78 = select i1 %76, i32 %77, i32 0
  br label %125

; <label>:79                                      ; preds = %38
  br i1 %44, label %84, label %80, !dx.controlflow.hints !24

; <label>:80                                      ; preds = %79
  %81 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %45, i32 undef)  ; BufferLoad(srv,index,wot)
  %82 = extractvalue %dx.types.ResRet.i32 %81, 0
  %83 = lshr i32 %82, 16
  br label %84

; <label>:84                                      ; preds = %80, %79
  %85 = phi i32 [ %83, %80 ], [ 1, %79 ]
  %86 = add i32 %85, %34
  %87 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %45, i32 undef)  ; BufferLoad(srv,index,wot)
  %88 = extractvalue %dx.types.ResRet.i32 %87, 0
  %89 = shl i32 %86, 2
  %90 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %89, i32 undef)  ; BufferLoad(srv,index,wot)
  %91 = extractvalue %dx.types.ResRet.i32 %90, 0
  %92 = icmp ult i32 %88, %91
  %93 = icmp ult i32 %91, 65536
  %94 = and i1 %92, %93
  br i1 %94, label %95, label %102, !dx.controlflow.hints !25

; <label>:95                                      ; preds = %84
  %96 = shl i32 %88, 2
  %97 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %96, i32 undef)  ; BufferLoad(srv,index,wot)
  %98 = extractvalue %dx.types.ResRet.i32 %97, 0
  %99 = shl i32 %91, 2
  %100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %99, i32 undef)  ; BufferLoad(srv,index,wot)
  %101 = extractvalue %dx.types.ResRet.i32 %100, 0
  br label %102

; <label>:102                                     ; preds = %95, %84
  %103 = phi i32 [ %101, %95 ], [ 0, %84 ]
  %104 = phi i32 [ %98, %95 ], [ 0, %84 ]
  %105 = icmp ult i32 %104, %103
  %106 = icmp ult i32 %103, 262144
  %107 = and i1 %106, %105
  br i1 %107, label %108, label %117, !dx.controlflow.hints !26

; <label>:108                                     ; preds = %102
  %109 = shl i32 %104, 2
  %110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %109, i32 undef)  ; BufferLoad(srv,index,wot)
  %111 = extractvalue %dx.types.ResRet.i32 %110, 0
  %112 = mul i32 %111, 3
  %113 = shl i32 %103, 2
  %114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %113, i32 undef)  ; BufferLoad(srv,index,wot)
  %115 = extractvalue %dx.types.ResRet.i32 %114, 0
  %116 = mul i32 %115, 3
  br label %117

; <label>:117                                     ; preds = %108, %102
  %118 = phi i32 [ %112, %108 ], [ 0, %102 ]
  %119 = phi i32 [ %116, %108 ], [ 0, %102 ]
  %120 = icmp ugt i32 %119, %118
  %121 = icmp ult i32 %119, %42
  %122 = and i1 %120, %121
  %123 = sub i32 %119, %118
  %124 = select i1 %122, i32 %123, i32 0
  br label %125

; <label>:125                                     ; preds = %117, %71
  %126 = phi i32 [ %78, %71 ], [ %124, %117 ]
  %127 = icmp ne i32 %126, 0
  %128 = zext i1 %127 to i32
  br label %129

; <label>:129                                     ; preds = %125, %33
  %130 = phi i32 [ %126, %125 ], [ 0, %33 ]
  %131 = phi i32 [ %128, %125 ], [ 0, %33 ]
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %132 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %8
  store i32 %130, i32 addrspace(3)* %132, align 4, !tbaa !27
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %133 = and i32 %8, 63
  %134 = icmp ult i32 %133, 32
  br i1 %134, label %135, label %141, !dx.controlflow.hints !31

; <label>:135                                     ; preds = %129
  %136 = add i32 %8, 32
  %137 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %136
  %138 = load i32, i32 addrspace(3)* %137, align 4, !tbaa !27
  %139 = load i32, i32 addrspace(3)* %132, align 4, !tbaa !27
  %140 = call i32 @dx.op.binary.i32(i32 39, i32 %139, i32 %138)  ; UMax(a,b)
  store i32 %140, i32 addrspace(3)* %132, align 4, !tbaa !27
  br label %141

; <label>:141                                     ; preds = %135, %129
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %142 = icmp ult i32 %133, 16
  br i1 %142, label %143, label %149, !dx.controlflow.hints !32

; <label>:143                                     ; preds = %141
  %144 = add i32 %8, 16
  %145 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %144
  %146 = load i32, i32 addrspace(3)* %145, align 4, !tbaa !27
  %147 = load i32, i32 addrspace(3)* %132, align 4, !tbaa !27
  %148 = call i32 @dx.op.binary.i32(i32 39, i32 %147, i32 %146)  ; UMax(a,b)
  store i32 %148, i32 addrspace(3)* %132, align 4, !tbaa !27
  br label %149

; <label>:149                                     ; preds = %143, %141
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %150 = icmp ult i32 %133, 8
  br i1 %150, label %151, label %157, !dx.controlflow.hints !33

; <label>:151                                     ; preds = %149
  %152 = add i32 %8, 8
  %153 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %152
  %154 = load i32, i32 addrspace(3)* %153, align 4, !tbaa !27
  %155 = load i32, i32 addrspace(3)* %132, align 4, !tbaa !27
  %156 = call i32 @dx.op.binary.i32(i32 39, i32 %155, i32 %154)  ; UMax(a,b)
  store i32 %156, i32 addrspace(3)* %132, align 4, !tbaa !27
  br label %157

; <label>:157                                     ; preds = %151, %149
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %158 = icmp ult i32 %133, 4
  br i1 %158, label %159, label %165, !dx.controlflow.hints !34

; <label>:159                                     ; preds = %157
  %160 = add i32 %8, 4
  %161 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %160
  %162 = load i32, i32 addrspace(3)* %161, align 4, !tbaa !27
  %163 = load i32, i32 addrspace(3)* %132, align 4, !tbaa !27
  %164 = call i32 @dx.op.binary.i32(i32 39, i32 %163, i32 %162)  ; UMax(a,b)
  store i32 %164, i32 addrspace(3)* %132, align 4, !tbaa !27
  br label %165

; <label>:165                                     ; preds = %159, %157
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %166 = icmp ult i32 %133, 2
  br i1 %166, label %167, label %173, !dx.controlflow.hints !35

; <label>:167                                     ; preds = %165
  %168 = add i32 %8, 2
  %169 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %168
  %170 = load i32, i32 addrspace(3)* %169, align 4, !tbaa !27
  %171 = load i32, i32 addrspace(3)* %132, align 4, !tbaa !27
  %172 = call i32 @dx.op.binary.i32(i32 39, i32 %171, i32 %170)  ; UMax(a,b)
  store i32 %172, i32 addrspace(3)* %132, align 4, !tbaa !27
  br label %173

; <label>:173                                     ; preds = %167, %165
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %174 = icmp eq i32 %133, 0
  br i1 %174, label %175, label %181, !dx.controlflow.hints !36

; <label>:175                                     ; preds = %173
  %176 = add i32 %8, 1
  %177 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %176
  %178 = load i32, i32 addrspace(3)* %177, align 4, !tbaa !27
  %179 = load i32, i32 addrspace(3)* %132, align 4, !tbaa !27
  %180 = call i32 @dx.op.binary.i32(i32 39, i32 %179, i32 %178)  ; UMax(a,b)
  store i32 %180, i32 addrspace(3)* %132, align 4, !tbaa !27
  br label %181

; <label>:181                                     ; preds = %175, %173
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %182 = and i32 %8, -64
  %183 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %182
  %184 = load i32, i32 addrspace(3)* %183, align 4, !tbaa !27
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %131, i32 addrspace(3)* %132, align 4, !tbaa !27
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %134, label %185, label %191, !dx.controlflow.hints !37

; <label>:185                                     ; preds = %181
  %186 = add i32 %8, 32
  %187 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %186
  %188 = load i32, i32 addrspace(3)* %187, align 4, !tbaa !27
  %189 = load i32, i32 addrspace(3)* %132, align 4, !tbaa !27
  %190 = add i32 %189, %188
  store i32 %190, i32 addrspace(3)* %132, align 4, !tbaa !27
  br label %191

; <label>:191                                     ; preds = %185, %181
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %142, label %192, label %198, !dx.controlflow.hints !38

; <label>:192                                     ; preds = %191
  %193 = add i32 %8, 16
  %194 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %193
  %195 = load i32, i32 addrspace(3)* %194, align 4, !tbaa !27
  %196 = load i32, i32 addrspace(3)* %132, align 4, !tbaa !27
  %197 = add i32 %196, %195
  store i32 %197, i32 addrspace(3)* %132, align 4, !tbaa !27
  br label %198

; <label>:198                                     ; preds = %192, %191
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %150, label %199, label %205, !dx.controlflow.hints !39

; <label>:199                                     ; preds = %198
  %200 = add i32 %8, 8
  %201 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %200
  %202 = load i32, i32 addrspace(3)* %201, align 4, !tbaa !27
  %203 = load i32, i32 addrspace(3)* %132, align 4, !tbaa !27
  %204 = add i32 %203, %202
  store i32 %204, i32 addrspace(3)* %132, align 4, !tbaa !27
  br label %205

; <label>:205                                     ; preds = %199, %198
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %158, label %206, label %212, !dx.controlflow.hints !40

; <label>:206                                     ; preds = %205
  %207 = add i32 %8, 4
  %208 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %207
  %209 = load i32, i32 addrspace(3)* %208, align 4, !tbaa !27
  %210 = load i32, i32 addrspace(3)* %132, align 4, !tbaa !27
  %211 = add i32 %210, %209
  store i32 %211, i32 addrspace(3)* %132, align 4, !tbaa !27
  br label %212

; <label>:212                                     ; preds = %206, %205
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %166, label %213, label %219, !dx.controlflow.hints !41

; <label>:213                                     ; preds = %212
  %214 = add i32 %8, 2
  %215 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %214
  %216 = load i32, i32 addrspace(3)* %215, align 4, !tbaa !27
  %217 = load i32, i32 addrspace(3)* %132, align 4, !tbaa !27
  %218 = add i32 %217, %216
  store i32 %218, i32 addrspace(3)* %132, align 4, !tbaa !27
  br label %219

; <label>:219                                     ; preds = %213, %212
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %174, label %220, label %226, !dx.controlflow.hints !42

; <label>:220                                     ; preds = %219
  %221 = add i32 %8, 1
  %222 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %221
  %223 = load i32, i32 addrspace(3)* %222, align 4, !tbaa !27
  %224 = load i32, i32 addrspace(3)* %132, align 4, !tbaa !27
  %225 = add i32 %224, %223
  store i32 %225, i32 addrspace(3)* %132, align 4, !tbaa !27
  br label %226

; <label>:226                                     ; preds = %220, %219
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %227 = load i32, i32 addrspace(3)* %183, align 4, !tbaa !27
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %228 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %229 = extractvalue %dx.types.CBufRet.i32 %228, 0
  %230 = icmp ult i32 %34, %229
  %231 = icmp eq i32 %8, 0
  %232 = and i1 %231, %230
  br i1 %232, label %233, label %236, !dx.controlflow.hints !43

; <label>:233                                     ; preds = %226
  %234 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 7, i32 0, i32 24, i32 undef, i32 %184)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %235 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 0, i32 0, i32 28, i32 undef, i32 %227)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %236

; <label>:236                                     ; preds = %233, %226
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
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #3

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #3

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #3

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { noduplicate nounwind }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!15}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !10, !13, null}
!5 = !{!6, !7, !8, !9}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!8 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!9 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 3, i32 1, i32 11, i32 0, null}
!10 = !{!11}
!11 = !{i32 0, %"class.RWStructuredBuffer<GfxGPReadBackInfo>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i1 false, i1 false, i1 false, !12}
!12 = !{i32 1, i32 64}
!13 = !{!14}
!14 = !{i32 0, %GPBatchConsts* undef, !"", i32 0, i32 5, i32 1, i32 48, null}
!15 = !{void ()* @readback_gp_stats_postocclusion, !"readback_gp_stats_postocclusion", null, !4, !16}
!16 = !{i32 0, i64 272, i32 4, !17}
!17 = !{i32 64, i32 1, i32 1}
!18 = distinct !{!18, !"dx.controlflow.hints", i32 2}
!19 = distinct !{!19, !"dx.controlflow.hints", i32 2}
!20 = distinct !{!20, !"dx.controlflow.hints", i32 2}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = !{!28, !28, i64 0}
!28 = !{!"int", !29, i64 0}
!29 = !{!"omnipotent char", !30, i64 0}
!30 = !{!"Simple C/C++ TBAA"}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}

