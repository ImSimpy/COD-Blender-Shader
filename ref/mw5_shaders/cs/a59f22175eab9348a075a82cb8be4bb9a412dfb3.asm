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
; shader hash: 7e620da2d218a753e28f29e8c16670ce
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
%dx.types.fouri32 = type { i32, i32, i32, i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.RWStructuredBuffer<GfxGPReadBackInfo>" = type { %struct.GfxGPReadBackInfo }
%struct.GfxGPReadBackInfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%GPBatchConsts = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@"\01?gsTempData@@3PAIA" = external addrspace(3) global [4 x i32], align 4

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
  %103 = phi i32 [ %98, %95 ], [ 0, %84 ]
  %104 = phi i32 [ %101, %95 ], [ 0, %84 ]
  %105 = icmp ult i32 %103, %104
  %106 = icmp ult i32 %104, 262144
  %107 = and i1 %105, %106
  br i1 %107, label %108, label %117, !dx.controlflow.hints !26

; <label>:108                                     ; preds = %102
  %109 = shl i32 %103, 2
  %110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %109, i32 undef)  ; BufferLoad(srv,index,wot)
  %111 = extractvalue %dx.types.ResRet.i32 %110, 0
  %112 = mul i32 %111, 3
  %113 = shl i32 %104, 2
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
  %132 = call i32 @dx.op.waveGetLaneCount(i32 112)  ; WaveGetLaneCount()
  %133 = udiv i32 %8, %132
  %134 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %130, i8 3, i8 1)  ; WaveActiveOp(value,op,sop)
  %135 = icmp eq i32 %132, 64
  br i1 %135, label %162, label %136, !dx.controlflow.hints !27

; <label>:136                                     ; preds = %129
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %137 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %137, label %138, label %140, !dx.controlflow.hints !28

; <label>:138                                     ; preds = %136
  %139 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %133
  store i32 %134, i32 addrspace(3)* %139, align 4, !tbaa !29
  br label %140

; <label>:140                                     ; preds = %138, %136
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %141 = icmp eq i32 %132, 32
  br i1 %141, label %142, label %147, !dx.controlflow.hints !33

; <label>:142                                     ; preds = %140
  %143 = xor i32 %133, 1
  %144 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %143
  %145 = load i32, i32 addrspace(3)* %144, align 4, !tbaa !29
  %146 = call i32 @dx.op.binary.i32(i32 39, i32 %134, i32 %145)  ; UMax(a,b)
  br label %162

; <label>:147                                     ; preds = %140
  %148 = icmp eq i32 %132, 16
  br i1 %148, label %149, label %162, !dx.controlflow.hints !34

; <label>:149                                     ; preds = %147
  %150 = xor i32 %133, 3
  %151 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %150
  %152 = load i32, i32 addrspace(3)* %151, align 4, !tbaa !29
  %153 = xor i32 %133, 2
  %154 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %153
  %155 = load i32, i32 addrspace(3)* %154, align 4, !tbaa !29
  %156 = call i32 @dx.op.binary.i32(i32 39, i32 %155, i32 %152)  ; UMax(a,b)
  %157 = xor i32 %133, 1
  %158 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %157
  %159 = load i32, i32 addrspace(3)* %158, align 4, !tbaa !29
  %160 = call i32 @dx.op.binary.i32(i32 39, i32 %134, i32 %159)  ; UMax(a,b)
  %161 = call i32 @dx.op.binary.i32(i32 39, i32 %160, i32 %156)  ; UMax(a,b)
  br label %162

; <label>:162                                     ; preds = %149, %147, %142, %129
  %163 = phi i32 [ %146, %142 ], [ %161, %149 ], [ %134, %129 ], [ 0, %147 ]
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %164 = icmp ne i32 %131, 0
  %165 = call %dx.types.fouri32 @dx.op.waveActiveBallot(i32 116, i1 %164)  ; WaveActiveBallot(cond)
  %166 = extractvalue %dx.types.fouri32 %165, 0
  %167 = extractvalue %dx.types.fouri32 %165, 1
  %168 = icmp ugt i32 %132, 63
  br i1 %168, label %189, label %169, !dx.controlflow.hints !35

; <label>:169                                     ; preds = %162
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %170 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %170, label %171, label %173, !dx.controlflow.hints !36

; <label>:171                                     ; preds = %169
  %172 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %133
  store i32 %166, i32 addrspace(3)* %172, align 4, !tbaa !29
  br label %173

; <label>:173                                     ; preds = %171, %169
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %174 = icmp eq i32 %132, 32
  br i1 %174, label %175, label %178, !dx.controlflow.hints !37

; <label>:175                                     ; preds = %173
  %176 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 0), align 4, !tbaa !29
  %177 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 1), align 4, !tbaa !29
  br label %189

; <label>:178                                     ; preds = %173
  %179 = icmp eq i32 %132, 16
  br i1 %179, label %180, label %189, !dx.controlflow.hints !38

; <label>:180                                     ; preds = %178
  %181 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 0), align 4, !tbaa !29
  %182 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 1), align 4, !tbaa !29
  %183 = shl i32 %182, 16
  %184 = or i32 %183, %181
  %185 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 2), align 4, !tbaa !29
  %186 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 3), align 4, !tbaa !29
  %187 = shl i32 %186, 16
  %188 = or i32 %187, %185
  br label %189

; <label>:189                                     ; preds = %180, %178, %175, %162
  %190 = phi i32 [ %176, %175 ], [ %184, %180 ], [ 0, %178 ], [ %166, %162 ]
  %191 = phi i32 [ %177, %175 ], [ %188, %180 ], [ 0, %178 ], [ %167, %162 ]
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %192 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %193 = extractvalue %dx.types.CBufRet.i32 %192, 0
  %194 = icmp ult i32 %34, %193
  %195 = icmp eq i32 %8, 0
  %196 = and i1 %195, %194
  br i1 %196, label %197, label %203, !dx.controlflow.hints !39

; <label>:197                                     ; preds = %189
  %198 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %190)  ; Countbits(value)
  %199 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %191)  ; Countbits(value)
  %200 = add i32 %199, %198
  %201 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 7, i32 0, i32 24, i32 undef, i32 %163)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %202 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 0, i32 0, i32 28, i32 undef, i32 %200)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %203

; <label>:203                                     ; preds = %197, %189
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
declare i32 @dx.op.waveGetLaneCount(i32) #0

; Function Attrs: nounwind
declare i32 @dx.op.waveActiveOp.i32(i32, i32, i8, i8) #1

; Function Attrs: nounwind
declare i1 @dx.op.waveIsFirstLane(i32) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind
declare %dx.types.fouri32 @dx.op.waveActiveBallot(i32, i1) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

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
!16 = !{i32 0, i64 524560, i32 4, !17}
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
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = !{!30, !30, i64 0}
!30 = !{!"int", !31, i64 0}
!31 = !{!"omnipotent char", !32, i64 0}
!32 = !{!"Simple C/C++ TBAA"}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}

