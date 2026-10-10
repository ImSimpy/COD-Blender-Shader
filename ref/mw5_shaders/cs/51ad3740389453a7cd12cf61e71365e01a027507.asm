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
; shader hash: bf6d4da2c7dfce6fbaed99222d9630cd
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
;                                   texture    byte         r/o      T4             t4     1
;                                   texture    byte         r/o      T5             t5     1
;                                   texture    byte         r/o      T6             t7     1
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

define void @readback_gp_stats_preocclusion() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %11 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %12 = shl i32 %10, 6
  %13 = add i32 %12, %11
  %14 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %15 = extractvalue %dx.types.CBufRet.i32 %14, 2
  %16 = icmp eq i32 %15, 0
  %17 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %18 = extractvalue %dx.types.CBufRet.i32 %17, 0
  %19 = shl i32 %18, 2
  br i1 %16, label %23, label %20, !dx.controlflow.hints !21

; <label>:20                                      ; preds = %0
  %21 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %19, i32 undef)  ; BufferLoad(srv,index,wot)
  %22 = extractvalue %dx.types.ResRet.i32 %21, 0
  br label %29

; <label>:23                                      ; preds = %0
  %24 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %19, i32 undef)  ; BufferLoad(srv,index,wot)
  %25 = extractvalue %dx.types.ResRet.i32 %24, 0
  %26 = shl i32 %25, 2
  %27 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %26, i32 undef)  ; BufferLoad(srv,index,wot)
  %28 = extractvalue %dx.types.ResRet.i32 %27, 0
  br label %29

; <label>:29                                      ; preds = %23, %20
  %30 = phi i32 [ %22, %20 ], [ %28, %23 ]
  %31 = phi i32 [ 0, %20 ], [ %25, %23 ]
  %32 = shl i32 %30, 2
  %33 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %32, i32 undef)  ; BufferLoad(srv,index,wot)
  %34 = extractvalue %dx.types.ResRet.i32 %33, 0
  %35 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %36 = extractvalue %dx.types.CBufRet.i32 %35, 3
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %159, label %38, !dx.controlflow.hints !22

; <label>:38                                      ; preds = %29
  %39 = icmp eq i32 %13, 0
  br i1 %39, label %40, label %41, !dx.controlflow.hints !23

; <label>:40                                      ; preds = %38
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 48, i32 %34, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %41

; <label>:41                                      ; preds = %40, %38
  %42 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %43 = extractvalue %dx.types.CBufRet.i32 %42, 0
  %44 = icmp ult i32 %13, %43
  br i1 %44, label %45, label %136, !dx.controlflow.hints !24

; <label>:45                                      ; preds = %41
  %46 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %47 = extractvalue %dx.types.CBufRet.i32 %46, 2
  %48 = icmp eq i32 %47, 0
  %49 = extractvalue %dx.types.CBufRet.i32 %42, 1
  %50 = extractvalue %dx.types.CBufRet.i32 %42, 2
  %51 = icmp eq i32 %50, 0
  %52 = shl i32 %13, 2
  br i1 %48, label %86, label %53, !dx.controlflow.hints !25

; <label>:53                                      ; preds = %45
  br i1 %51, label %58, label %54, !dx.controlflow.hints !26

; <label>:54                                      ; preds = %53
  %55 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %52, i32 undef)  ; BufferLoad(srv,index,wot)
  %56 = extractvalue %dx.types.ResRet.i32 %55, 0
  %57 = lshr i32 %56, 16
  br label %58

; <label>:58                                      ; preds = %54, %53
  %59 = phi i32 [ %57, %54 ], [ 1, %53 ]
  %60 = add i32 %59, %13
  %61 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %52, i32 undef)  ; BufferLoad(srv,index,wot)
  %62 = extractvalue %dx.types.ResRet.i32 %61, 0
  %63 = shl i32 %60, 2
  %64 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %63, i32 undef)  ; BufferLoad(srv,index,wot)
  %65 = extractvalue %dx.types.ResRet.i32 %64, 0
  %66 = icmp ult i32 %62, %65
  %67 = icmp ult i32 %65, 262144
  %68 = and i1 %66, %67
  br i1 %68, label %69, label %78, !dx.controlflow.hints !27

; <label>:69                                      ; preds = %58
  %70 = shl i32 %62, 2
  %71 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %70, i32 undef)  ; BufferLoad(srv,index,wot)
  %72 = extractvalue %dx.types.ResRet.i32 %71, 0
  %73 = mul i32 %72, 3
  %74 = shl i32 %65, 2
  %75 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %74, i32 undef)  ; BufferLoad(srv,index,wot)
  %76 = extractvalue %dx.types.ResRet.i32 %75, 0
  %77 = mul i32 %76, 3
  br label %78

; <label>:78                                      ; preds = %69, %58
  %79 = phi i32 [ %73, %69 ], [ 0, %58 ]
  %80 = phi i32 [ %77, %69 ], [ 0, %58 ]
  %81 = icmp ugt i32 %80, %79
  %82 = icmp ult i32 %80, %49
  %83 = and i1 %81, %82
  %84 = sub i32 %80, %79
  %85 = select i1 %83, i32 %84, i32 0
  br label %132

; <label>:86                                      ; preds = %45
  br i1 %51, label %91, label %87, !dx.controlflow.hints !28

; <label>:87                                      ; preds = %86
  %88 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %52, i32 undef)  ; BufferLoad(srv,index,wot)
  %89 = extractvalue %dx.types.ResRet.i32 %88, 0
  %90 = lshr i32 %89, 16
  br label %91

; <label>:91                                      ; preds = %87, %86
  %92 = phi i32 [ %90, %87 ], [ 1, %86 ]
  %93 = add i32 %92, %13
  %94 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %52, i32 undef)  ; BufferLoad(srv,index,wot)
  %95 = extractvalue %dx.types.ResRet.i32 %94, 0
  %96 = shl i32 %93, 2
  %97 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %96, i32 undef)  ; BufferLoad(srv,index,wot)
  %98 = extractvalue %dx.types.ResRet.i32 %97, 0
  %99 = icmp ult i32 %95, %98
  %100 = icmp ult i32 %98, 65536
  %101 = and i1 %99, %100
  br i1 %101, label %102, label %109, !dx.controlflow.hints !29

; <label>:102                                     ; preds = %91
  %103 = shl i32 %95, 2
  %104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %103, i32 undef)  ; BufferLoad(srv,index,wot)
  %105 = extractvalue %dx.types.ResRet.i32 %104, 0
  %106 = shl i32 %98, 2
  %107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %106, i32 undef)  ; BufferLoad(srv,index,wot)
  %108 = extractvalue %dx.types.ResRet.i32 %107, 0
  br label %109

; <label>:109                                     ; preds = %102, %91
  %110 = phi i32 [ %105, %102 ], [ 0, %91 ]
  %111 = phi i32 [ %108, %102 ], [ 0, %91 ]
  %112 = icmp ult i32 %110, %111
  %113 = icmp ult i32 %111, 262144
  %114 = and i1 %112, %113
  br i1 %114, label %115, label %124, !dx.controlflow.hints !30

; <label>:115                                     ; preds = %109
  %116 = shl i32 %110, 2
  %117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %116, i32 undef)  ; BufferLoad(srv,index,wot)
  %118 = extractvalue %dx.types.ResRet.i32 %117, 0
  %119 = mul i32 %118, 3
  %120 = shl i32 %111, 2
  %121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %120, i32 undef)  ; BufferLoad(srv,index,wot)
  %122 = extractvalue %dx.types.ResRet.i32 %121, 0
  %123 = mul i32 %122, 3
  br label %124

; <label>:124                                     ; preds = %115, %109
  %125 = phi i32 [ %119, %115 ], [ 0, %109 ]
  %126 = phi i32 [ %123, %115 ], [ 0, %109 ]
  %127 = icmp ugt i32 %126, %125
  %128 = icmp ult i32 %126, %49
  %129 = and i1 %127, %128
  %130 = sub i32 %126, %125
  %131 = select i1 %129, i32 %130, i32 0
  br label %132

; <label>:132                                     ; preds = %124, %78
  %133 = phi i32 [ %85, %78 ], [ %131, %124 ]
  %134 = icmp ne i32 %133, 0
  %135 = zext i1 %134 to i32
  br label %136

; <label>:136                                     ; preds = %132, %41
  %137 = phi i32 [ %133, %132 ], [ 0, %41 ]
  %138 = phi i32 [ %135, %132 ], [ 0, %41 ]
  %139 = call i32 @dx.op.waveGetLaneCount(i32 112)  ; WaveGetLaneCount()
  %140 = udiv i32 %11, %139
  %141 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %137, i8 3, i8 1)  ; WaveActiveOp(value,op,sop)
  %142 = icmp eq i32 %139, 64
  br i1 %142, label %148, label %143, !dx.controlflow.hints !31

; <label>:143                                     ; preds = %136
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %144 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %144, label %145, label %147, !dx.controlflow.hints !32

; <label>:145                                     ; preds = %143
  %146 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %140
  store i32 %141, i32 addrspace(3)* %146, align 4, !tbaa !33
  br label %147

; <label>:147                                     ; preds = %145, %143
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br label %148

; <label>:148                                     ; preds = %147, %136
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %149 = icmp ne i32 %138, 0
  %150 = call %dx.types.fouri32 @dx.op.waveActiveBallot(i32 116, i1 %149)  ; WaveActiveBallot(cond)
  %151 = extractvalue %dx.types.fouri32 %150, 0
  %152 = icmp ugt i32 %139, 63
  br i1 %152, label %158, label %153, !dx.controlflow.hints !37

; <label>:153                                     ; preds = %148
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %154 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %154, label %155, label %157, !dx.controlflow.hints !38

; <label>:155                                     ; preds = %153
  %156 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %140
  store i32 %151, i32 addrspace(3)* %156, align 4, !tbaa !33
  br label %157

; <label>:157                                     ; preds = %155, %153
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br label %158

; <label>:158                                     ; preds = %157, %148
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br label %393

; <label>:159                                     ; preds = %29
  %160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %161 = extractvalue %dx.types.ResRet.i32 %160, 0
  %162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %163 = extractvalue %dx.types.ResRet.i32 %162, 0
  %164 = extractvalue %dx.types.CBufRet.i32 %35, 1
  %165 = add i32 %164, %163
  %166 = extractvalue %dx.types.CBufRet.i32 %35, 0
  %167 = add i32 %165, %166
  %168 = icmp ult i32 %13, %167
  br i1 %168, label %169, label %187, !dx.controlflow.hints !39

; <label>:169                                     ; preds = %159
  %170 = icmp uge i32 %13, %165
  %171 = select i1 %170, i32 %165, i32 0
  %172 = sub i32 %13, %171
  br i1 %170, label %173, label %178, !dx.controlflow.hints !40

; <label>:173                                     ; preds = %169
  %174 = shl i32 %172, 3
  %175 = add i32 %174, 5242880
  %176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %175, i32 undef)  ; BufferLoad(srv,index,wot)
  %177 = extractvalue %dx.types.ResRet.i32 %176, 0
  br label %183

; <label>:178                                     ; preds = %169
  %179 = mul i32 %172, 12
  %180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %179, i32 undef)  ; BufferLoad(srv,index,wot)
  %181 = extractvalue %dx.types.ResRet.i32 %180, 1
  %182 = lshr i32 %181, 16
  br label %183

; <label>:183                                     ; preds = %178, %173
  %184 = phi i32 [ %177, %173 ], [ %182, %178 ]
  %185 = shl i32 %184, 6
  %186 = and i32 %185, 4194240
  br label %187

; <label>:187                                     ; preds = %183, %159
  %188 = phi i32 [ %186, %183 ], [ 0, %159 ]
  %189 = call i32 @dx.op.waveGetLaneCount(i32 112)  ; WaveGetLaneCount()
  %190 = udiv i32 %11, %189
  %191 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %188, i8 0, i8 1)  ; WaveActiveOp(value,op,sop)
  %192 = icmp eq i32 %189, 64
  br i1 %192, label %219, label %193, !dx.controlflow.hints !41

; <label>:193                                     ; preds = %187
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %194 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %194, label %195, label %197, !dx.controlflow.hints !42

; <label>:195                                     ; preds = %193
  %196 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %190
  store i32 %191, i32 addrspace(3)* %196, align 4, !tbaa !33
  br label %197

; <label>:197                                     ; preds = %195, %193
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %198 = icmp eq i32 %189, 32
  br i1 %198, label %199, label %204, !dx.controlflow.hints !43

; <label>:199                                     ; preds = %197
  %200 = xor i32 %190, 1
  %201 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %200
  %202 = load i32, i32 addrspace(3)* %201, align 4, !tbaa !33
  %203 = add i32 %202, %191
  br label %219

; <label>:204                                     ; preds = %197
  %205 = icmp eq i32 %189, 16
  br i1 %205, label %206, label %219, !dx.controlflow.hints !44

; <label>:206                                     ; preds = %204
  %207 = xor i32 %190, 1
  %208 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %207
  %209 = load i32, i32 addrspace(3)* %208, align 4, !tbaa !33
  %210 = add i32 %209, %191
  %211 = xor i32 %190, 2
  %212 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %211
  %213 = load i32, i32 addrspace(3)* %212, align 4, !tbaa !33
  %214 = add i32 %210, %213
  %215 = xor i32 %190, 3
  %216 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %215
  %217 = load i32, i32 addrspace(3)* %216, align 4, !tbaa !33
  %218 = add i32 %214, %217
  br label %219

; <label>:219                                     ; preds = %206, %204, %199, %187
  %220 = phi i32 [ %203, %199 ], [ %218, %206 ], [ %191, %187 ], [ 0, %204 ]
  %221 = icmp eq i32 %11, 0
  %222 = and i1 %221, %168
  br i1 %222, label %223, label %225, !dx.controlflow.hints !45

; <label>:223                                     ; preds = %219
  %224 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 0, i32 0, i32 44, i32 undef, i32 %220)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %225

; <label>:225                                     ; preds = %223, %219
  %226 = icmp eq i32 %13, 0
  br i1 %226, label %227, label %228, !dx.controlflow.hints !46

; <label>:227                                     ; preds = %225
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 0, i32 %34, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 4, i32 %30, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 32, i32 %161, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 36, i32 %163, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 40, i32 %31, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %228

; <label>:228                                     ; preds = %227, %225
  %229 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %230 = extractvalue %dx.types.CBufRet.i32 %229, 0
  %231 = icmp ult i32 %13, %230
  br i1 %231, label %232, label %323, !dx.controlflow.hints !24

; <label>:232                                     ; preds = %228
  %233 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %234 = extractvalue %dx.types.CBufRet.i32 %233, 2
  %235 = icmp eq i32 %234, 0
  %236 = extractvalue %dx.types.CBufRet.i32 %229, 1
  %237 = extractvalue %dx.types.CBufRet.i32 %229, 2
  %238 = icmp eq i32 %237, 0
  %239 = shl i32 %13, 2
  br i1 %235, label %273, label %240, !dx.controlflow.hints !25

; <label>:240                                     ; preds = %232
  br i1 %238, label %245, label %241, !dx.controlflow.hints !26

; <label>:241                                     ; preds = %240
  %242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %239, i32 undef)  ; BufferLoad(srv,index,wot)
  %243 = extractvalue %dx.types.ResRet.i32 %242, 0
  %244 = lshr i32 %243, 16
  br label %245

; <label>:245                                     ; preds = %241, %240
  %246 = phi i32 [ %244, %241 ], [ 1, %240 ]
  %247 = add i32 %246, %13
  %248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %239, i32 undef)  ; BufferLoad(srv,index,wot)
  %249 = extractvalue %dx.types.ResRet.i32 %248, 0
  %250 = shl i32 %247, 2
  %251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %250, i32 undef)  ; BufferLoad(srv,index,wot)
  %252 = extractvalue %dx.types.ResRet.i32 %251, 0
  %253 = icmp ult i32 %249, %252
  %254 = icmp ult i32 %252, 262144
  %255 = and i1 %253, %254
  br i1 %255, label %256, label %265, !dx.controlflow.hints !27

; <label>:256                                     ; preds = %245
  %257 = shl i32 %249, 2
  %258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %257, i32 undef)  ; BufferLoad(srv,index,wot)
  %259 = extractvalue %dx.types.ResRet.i32 %258, 0
  %260 = mul i32 %259, 3
  %261 = shl i32 %252, 2
  %262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %261, i32 undef)  ; BufferLoad(srv,index,wot)
  %263 = extractvalue %dx.types.ResRet.i32 %262, 0
  %264 = mul i32 %263, 3
  br label %265

; <label>:265                                     ; preds = %256, %245
  %266 = phi i32 [ %260, %256 ], [ 0, %245 ]
  %267 = phi i32 [ %264, %256 ], [ 0, %245 ]
  %268 = icmp ugt i32 %267, %266
  %269 = icmp ult i32 %267, %236
  %270 = and i1 %268, %269
  %271 = sub i32 %267, %266
  %272 = select i1 %270, i32 %271, i32 0
  br label %319

; <label>:273                                     ; preds = %232
  br i1 %238, label %278, label %274, !dx.controlflow.hints !28

; <label>:274                                     ; preds = %273
  %275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %239, i32 undef)  ; BufferLoad(srv,index,wot)
  %276 = extractvalue %dx.types.ResRet.i32 %275, 0
  %277 = lshr i32 %276, 16
  br label %278

; <label>:278                                     ; preds = %274, %273
  %279 = phi i32 [ %277, %274 ], [ 1, %273 ]
  %280 = add i32 %279, %13
  %281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %239, i32 undef)  ; BufferLoad(srv,index,wot)
  %282 = extractvalue %dx.types.ResRet.i32 %281, 0
  %283 = shl i32 %280, 2
  %284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %285 = extractvalue %dx.types.ResRet.i32 %284, 0
  %286 = icmp ult i32 %282, %285
  %287 = icmp ult i32 %285, 65536
  %288 = and i1 %286, %287
  br i1 %288, label %289, label %296, !dx.controlflow.hints !29

; <label>:289                                     ; preds = %278
  %290 = shl i32 %282, 2
  %291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %290, i32 undef)  ; BufferLoad(srv,index,wot)
  %292 = extractvalue %dx.types.ResRet.i32 %291, 0
  %293 = shl i32 %285, 2
  %294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %293, i32 undef)  ; BufferLoad(srv,index,wot)
  %295 = extractvalue %dx.types.ResRet.i32 %294, 0
  br label %296

; <label>:296                                     ; preds = %289, %278
  %297 = phi i32 [ %292, %289 ], [ 0, %278 ]
  %298 = phi i32 [ %295, %289 ], [ 0, %278 ]
  %299 = icmp ult i32 %297, %298
  %300 = icmp ult i32 %298, 262144
  %301 = and i1 %299, %300
  br i1 %301, label %302, label %311, !dx.controlflow.hints !30

; <label>:302                                     ; preds = %296
  %303 = shl i32 %297, 2
  %304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %303, i32 undef)  ; BufferLoad(srv,index,wot)
  %305 = extractvalue %dx.types.ResRet.i32 %304, 0
  %306 = mul i32 %305, 3
  %307 = shl i32 %298, 2
  %308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %307, i32 undef)  ; BufferLoad(srv,index,wot)
  %309 = extractvalue %dx.types.ResRet.i32 %308, 0
  %310 = mul i32 %309, 3
  br label %311

; <label>:311                                     ; preds = %302, %296
  %312 = phi i32 [ %306, %302 ], [ 0, %296 ]
  %313 = phi i32 [ %310, %302 ], [ 0, %296 ]
  %314 = icmp ugt i32 %313, %312
  %315 = icmp ult i32 %313, %236
  %316 = and i1 %314, %315
  %317 = sub i32 %313, %312
  %318 = select i1 %316, i32 %317, i32 0
  br label %319

; <label>:319                                     ; preds = %311, %265
  %320 = phi i32 [ %272, %265 ], [ %318, %311 ]
  %321 = icmp ne i32 %320, 0
  %322 = zext i1 %321 to i32
  br label %323

; <label>:323                                     ; preds = %319, %228
  %324 = phi i32 [ %320, %319 ], [ 0, %228 ]
  %325 = phi i32 [ %322, %319 ], [ 0, %228 ]
  %326 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %324, i8 3, i8 1)  ; WaveActiveOp(value,op,sop)
  br i1 %192, label %353, label %327, !dx.controlflow.hints !31

; <label>:327                                     ; preds = %323
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %328 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %328, label %329, label %331, !dx.controlflow.hints !32

; <label>:329                                     ; preds = %327
  %330 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %190
  store i32 %326, i32 addrspace(3)* %330, align 4, !tbaa !33
  br label %331

; <label>:331                                     ; preds = %329, %327
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %332 = icmp eq i32 %189, 32
  br i1 %332, label %333, label %338, !dx.controlflow.hints !47

; <label>:333                                     ; preds = %331
  %334 = xor i32 %190, 1
  %335 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %334
  %336 = load i32, i32 addrspace(3)* %335, align 4, !tbaa !33
  %337 = call i32 @dx.op.binary.i32(i32 39, i32 %326, i32 %336)  ; UMax(a,b)
  br label %353

; <label>:338                                     ; preds = %331
  %339 = icmp eq i32 %189, 16
  br i1 %339, label %340, label %353, !dx.controlflow.hints !48

; <label>:340                                     ; preds = %338
  %341 = xor i32 %190, 3
  %342 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %341
  %343 = load i32, i32 addrspace(3)* %342, align 4, !tbaa !33
  %344 = xor i32 %190, 2
  %345 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %344
  %346 = load i32, i32 addrspace(3)* %345, align 4, !tbaa !33
  %347 = call i32 @dx.op.binary.i32(i32 39, i32 %346, i32 %343)  ; UMax(a,b)
  %348 = xor i32 %190, 1
  %349 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %348
  %350 = load i32, i32 addrspace(3)* %349, align 4, !tbaa !33
  %351 = call i32 @dx.op.binary.i32(i32 39, i32 %326, i32 %350)  ; UMax(a,b)
  %352 = call i32 @dx.op.binary.i32(i32 39, i32 %351, i32 %347)  ; UMax(a,b)
  br label %353

; <label>:353                                     ; preds = %340, %338, %333, %323
  %354 = phi i32 [ %337, %333 ], [ %352, %340 ], [ %326, %323 ], [ 0, %338 ]
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %355 = icmp ne i32 %325, 0
  %356 = call %dx.types.fouri32 @dx.op.waveActiveBallot(i32 116, i1 %355)  ; WaveActiveBallot(cond)
  %357 = extractvalue %dx.types.fouri32 %356, 0
  %358 = extractvalue %dx.types.fouri32 %356, 1
  %359 = icmp ugt i32 %189, 63
  br i1 %359, label %380, label %360, !dx.controlflow.hints !37

; <label>:360                                     ; preds = %353
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %361 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %361, label %362, label %364, !dx.controlflow.hints !38

; <label>:362                                     ; preds = %360
  %363 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %190
  store i32 %357, i32 addrspace(3)* %363, align 4, !tbaa !33
  br label %364

; <label>:364                                     ; preds = %362, %360
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %365 = icmp eq i32 %189, 32
  br i1 %365, label %366, label %369, !dx.controlflow.hints !49

; <label>:366                                     ; preds = %364
  %367 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 0), align 4, !tbaa !33
  %368 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 1), align 4, !tbaa !33
  br label %380

; <label>:369                                     ; preds = %364
  %370 = icmp eq i32 %189, 16
  br i1 %370, label %371, label %380, !dx.controlflow.hints !50

; <label>:371                                     ; preds = %369
  %372 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 0), align 4, !tbaa !33
  %373 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 1), align 4, !tbaa !33
  %374 = shl i32 %373, 16
  %375 = or i32 %374, %372
  %376 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 2), align 4, !tbaa !33
  %377 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 3), align 4, !tbaa !33
  %378 = shl i32 %377, 16
  %379 = or i32 %378, %376
  br label %380

; <label>:380                                     ; preds = %371, %369, %366, %353
  %381 = phi i32 [ %367, %366 ], [ %375, %371 ], [ 0, %369 ], [ %357, %353 ]
  %382 = phi i32 [ %368, %366 ], [ %379, %371 ], [ 0, %369 ], [ %358, %353 ]
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %383 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %384 = extractvalue %dx.types.CBufRet.i32 %383, 0
  %385 = icmp ult i32 %13, %384
  %386 = and i1 %221, %385
  br i1 %386, label %387, label %393, !dx.controlflow.hints !51

; <label>:387                                     ; preds = %380
  %388 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %381)  ; Countbits(value)
  %389 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %382)  ; Countbits(value)
  %390 = add i32 %389, %388
  %391 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 7, i32 0, i32 8, i32 undef, i32 %354)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %392 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 0, i32 0, i32 12, i32 undef, i32 %390)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %393

; <label>:393                                     ; preds = %387, %380, %158
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
!dx.entryPoints = !{!18}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !13, !16, null}
!5 = !{!6, !7, !8, !9, !10, !11, !12}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!8 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!9 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 3, i32 1, i32 11, i32 0, null}
!10 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 4, i32 1, i32 11, i32 0, null}
!11 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 5, i32 1, i32 11, i32 0, null}
!12 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 7, i32 1, i32 11, i32 0, null}
!13 = !{!14}
!14 = !{i32 0, %"class.RWStructuredBuffer<GfxGPReadBackInfo>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i1 false, i1 false, i1 false, !15}
!15 = !{i32 1, i32 64}
!16 = !{!17}
!17 = !{i32 0, %GPBatchConsts* undef, !"", i32 0, i32 5, i32 1, i32 48, null}
!18 = !{void ()* @readback_gp_stats_preocclusion, !"readback_gp_stats_preocclusion", null, !4, !19}
!19 = !{i32 0, i64 524560, i32 4, !20}
!20 = !{i32 64, i32 1, i32 1}
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
!33 = !{!34, !34, i64 0}
!34 = !{!"int", !35, i64 0}
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}

