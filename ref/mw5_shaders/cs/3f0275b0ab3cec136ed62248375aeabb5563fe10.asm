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
; shader hash: fd94c8235bfff98cee333da4023085a5
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
;                                       UAV     u32         buf      U4             u4     1
;                                       UAV     u32         buf      U5             u5     1
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

define void @cs_compute_lightgrid_sampling_offsets_upsweep() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 5, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %13 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %14 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %15 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %16 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %17 = extractvalue %dx.types.CBufRet.i32 %16, 0
  %18 = add nsw i32 %17, -1
  %19 = call i32 @dx.op.binary.i32(i32 38, i32 %14, i32 %18)  ; IMin(a,b)
  %20 = extractvalue %dx.types.CBufRet.i32 %16, 1
  %21 = add nsw i32 %20, -1
  %22 = call i32 @dx.op.binary.i32(i32 38, i32 %12, i32 %21)  ; IMin(a,b)
  %23 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %19, i32 undef)  ; BufferLoad(srv,index,wot)
  %24 = extractvalue %dx.types.ResRet.i32 %23, 0
  %25 = icmp ne i32 %22, 0
  %26 = add i32 %22, -1
  %27 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %26, i32 undef)  ; BufferLoad(srv,index,wot)
  %28 = extractvalue %dx.types.ResRet.i32 %27, 0
  %29 = select i1 %25, i32 %28, i32 0
  %30 = call i32 @dx.op.waveGetLaneCount(i32 112)  ; WaveGetLaneCount()
  %31 = and i32 %13, 63
  %32 = udiv i32 %31, %30
  %33 = udiv i32 64, %30
  %34 = lshr i32 %13, 6
  %35 = mul i32 %33, %34
  %36 = call i32 @dx.op.wavePrefixOp.i32(i32 121, i32 %24, i8 0, i8 1)  ; WavePrefixOp(value,op,sop)
  %37 = add i32 %36, %24
  %38 = icmp eq i32 %30, 64
  br i1 %38, label %78, label %39, !dx.controlflow.hints !23

; <label>:39                                      ; preds = %0
  %40 = call i32 @dx.op.waveGetLaneIndex(i32 111)  ; WaveGetLaneIndex()
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %41 = add i32 %30, -1
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %46, !dx.controlflow.hints !24

; <label>:43                                      ; preds = %39
  %44 = add i32 %35, %32
  %45 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %44
  store i32 %37, i32 addrspace(3)* %45, align 4, !tbaa !25
  br label %46

; <label>:46                                      ; preds = %43, %39
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %47 = icmp eq i32 %30, 32
  br i1 %47, label %48, label %54, !dx.controlflow.hints !29

; <label>:48                                      ; preds = %46
  %49 = icmp ugt i32 %31, 31
  br i1 %49, label %50, label %78, !dx.controlflow.hints !30

; <label>:50                                      ; preds = %48
  %51 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %35
  %52 = load i32, i32 addrspace(3)* %51, align 4, !tbaa !25
  %53 = add i32 %52, %37
  br label %78

; <label>:54                                      ; preds = %46
  %55 = icmp eq i32 %30, 16
  br i1 %55, label %56, label %78, !dx.controlflow.hints !31

; <label>:56                                      ; preds = %54
  %57 = icmp ugt i32 %31, 15
  br i1 %57, label %58, label %62, !dx.controlflow.hints !32

; <label>:58                                      ; preds = %56
  %59 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %35
  %60 = load i32, i32 addrspace(3)* %59, align 4, !tbaa !25
  %61 = add i32 %60, %37
  br label %62

; <label>:62                                      ; preds = %58, %56
  %63 = phi i32 [ %61, %58 ], [ %37, %56 ]
  %64 = icmp ugt i32 %31, 31
  br i1 %64, label %65, label %70, !dx.controlflow.hints !33

; <label>:65                                      ; preds = %62
  %66 = add i32 %35, 1
  %67 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %66
  %68 = load i32, i32 addrspace(3)* %67, align 4, !tbaa !25
  %69 = add i32 %68, %63
  br label %70

; <label>:70                                      ; preds = %65, %62
  %71 = phi i32 [ %69, %65 ], [ %63, %62 ]
  %72 = icmp ugt i32 %31, 47
  br i1 %72, label %73, label %78, !dx.controlflow.hints !34

; <label>:73                                      ; preds = %70
  %74 = add i32 %35, 2
  %75 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %74
  %76 = load i32, i32 addrspace(3)* %75, align 4, !tbaa !25
  %77 = add i32 %76, %71
  br label %78

; <label>:78                                      ; preds = %73, %70, %54, %50, %48, %0
  %79 = phi i32 [ %37, %0 ], [ %53, %50 ], [ %37, %48 ], [ %77, %73 ], [ %71, %70 ], [ 0, %54 ]
  %80 = sub i32 %79, %24
  %81 = add i32 %80, %29
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %6, i32 %14, i32 undef, i32 %81, i32 %81, i32 %81, i32 %81, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %82 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %19, i32 undef)  ; BufferLoad(srv,index,wot)
  %83 = extractvalue %dx.types.ResRet.i32 %82, 0
  %84 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %26, i32 undef)  ; BufferLoad(srv,index,wot)
  %85 = extractvalue %dx.types.ResRet.i32 %84, 0
  %86 = select i1 %25, i32 %85, i32 0
  %87 = call i32 @dx.op.wavePrefixOp.i32(i32 121, i32 %83, i8 0, i8 1)  ; WavePrefixOp(value,op,sop)
  %88 = add i32 %87, %83
  br i1 %38, label %128, label %89, !dx.controlflow.hints !23

; <label>:89                                      ; preds = %78
  %90 = call i32 @dx.op.waveGetLaneIndex(i32 111)  ; WaveGetLaneIndex()
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %91 = add i32 %30, -1
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %96, !dx.controlflow.hints !24

; <label>:93                                      ; preds = %89
  %94 = add i32 %35, %32
  %95 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %94
  store i32 %88, i32 addrspace(3)* %95, align 4, !tbaa !25
  br label %96

; <label>:96                                      ; preds = %93, %89
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %97 = icmp eq i32 %30, 32
  br i1 %97, label %98, label %104, !dx.controlflow.hints !29

; <label>:98                                      ; preds = %96
  %99 = icmp ugt i32 %31, 31
  br i1 %99, label %100, label %128, !dx.controlflow.hints !30

; <label>:100                                     ; preds = %98
  %101 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %35
  %102 = load i32, i32 addrspace(3)* %101, align 4, !tbaa !25
  %103 = add i32 %102, %88
  br label %128

; <label>:104                                     ; preds = %96
  %105 = icmp eq i32 %30, 16
  br i1 %105, label %106, label %128, !dx.controlflow.hints !31

; <label>:106                                     ; preds = %104
  %107 = icmp ugt i32 %31, 15
  br i1 %107, label %108, label %112, !dx.controlflow.hints !32

; <label>:108                                     ; preds = %106
  %109 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %35
  %110 = load i32, i32 addrspace(3)* %109, align 4, !tbaa !25
  %111 = add i32 %110, %88
  br label %112

; <label>:112                                     ; preds = %108, %106
  %113 = phi i32 [ %111, %108 ], [ %88, %106 ]
  %114 = icmp ugt i32 %31, 31
  br i1 %114, label %115, label %120, !dx.controlflow.hints !33

; <label>:115                                     ; preds = %112
  %116 = add i32 %35, 1
  %117 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %116
  %118 = load i32, i32 addrspace(3)* %117, align 4, !tbaa !25
  %119 = add i32 %118, %113
  br label %120

; <label>:120                                     ; preds = %115, %112
  %121 = phi i32 [ %119, %115 ], [ %113, %112 ]
  %122 = icmp ugt i32 %31, 47
  br i1 %122, label %123, label %128, !dx.controlflow.hints !34

; <label>:123                                     ; preds = %120
  %124 = add i32 %35, 2
  %125 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %124
  %126 = load i32, i32 addrspace(3)* %125, align 4, !tbaa !25
  %127 = add i32 %126, %121
  br label %128

; <label>:128                                     ; preds = %123, %120, %104, %100, %98, %78
  %129 = phi i32 [ %88, %78 ], [ %103, %100 ], [ %88, %98 ], [ %127, %123 ], [ %121, %120 ], [ 0, %104 ]
  %130 = sub i32 %129, %83
  %131 = add i32 %130, %86
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %5, i32 %14, i32 undef, i32 %131, i32 %131, i32 %131, i32 %131, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %132 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %133 = extractvalue %dx.types.CBufRet.i32 %132, 1
  %134 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.i32 %134, 3
  %136 = sub i32 %133, %135
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %251

; <label>:138                                     ; preds = %128
  br label %139

; <label>:139                                     ; preds = %242, %138
  %140 = phi i32 [ %248, %242 ], [ 0, %138 ]
  %141 = mul i32 %22, 20
  %142 = add i32 %141, -20
  %143 = add i32 %142, %140
  %144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %143, i32 undef)  ; BufferLoad(srv,index,wot)
  %145 = extractvalue %dx.types.ResRet.i32 %144, 0
  %146 = select i1 %25, i32 %145, i32 0
  %147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %143, i32 undef)  ; BufferLoad(srv,index,wot)
  %148 = extractvalue %dx.types.ResRet.i32 %147, 0
  %149 = select i1 %25, i32 %148, i32 0
  %150 = mul i32 %19, 20
  %151 = add i32 %140, %150
  %152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %151, i32 undef)  ; BufferLoad(srv,index,wot)
  %153 = extractvalue %dx.types.ResRet.i32 %152, 0
  %154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %151, i32 undef)  ; BufferLoad(srv,index,wot)
  %155 = extractvalue %dx.types.ResRet.i32 %154, 0
  %156 = call i32 @dx.op.wavePrefixOp.i32(i32 121, i32 %153, i8 0, i8 1)  ; WavePrefixOp(value,op,sop)
  %157 = add i32 %156, %153
  br i1 %38, label %197, label %158, !dx.controlflow.hints !23

; <label>:158                                     ; preds = %139
  %159 = call i32 @dx.op.waveGetLaneIndex(i32 111)  ; WaveGetLaneIndex()
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %160 = add i32 %30, -1
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %165, !dx.controlflow.hints !24

; <label>:162                                     ; preds = %158
  %163 = add i32 %35, %32
  %164 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %163
  store i32 %157, i32 addrspace(3)* %164, align 4, !tbaa !25
  br label %165

; <label>:165                                     ; preds = %162, %158
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %166 = icmp eq i32 %30, 32
  br i1 %166, label %167, label %173, !dx.controlflow.hints !29

; <label>:167                                     ; preds = %165
  %168 = icmp ugt i32 %31, 31
  br i1 %168, label %169, label %197, !dx.controlflow.hints !30

; <label>:169                                     ; preds = %167
  %170 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %35
  %171 = load i32, i32 addrspace(3)* %170, align 4, !tbaa !25
  %172 = add i32 %171, %157
  br label %197

; <label>:173                                     ; preds = %165
  %174 = icmp eq i32 %30, 16
  br i1 %174, label %175, label %197, !dx.controlflow.hints !31

; <label>:175                                     ; preds = %173
  %176 = icmp ugt i32 %31, 15
  br i1 %176, label %177, label %181, !dx.controlflow.hints !32

; <label>:177                                     ; preds = %175
  %178 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %35
  %179 = load i32, i32 addrspace(3)* %178, align 4, !tbaa !25
  %180 = add i32 %179, %157
  br label %181

; <label>:181                                     ; preds = %177, %175
  %182 = phi i32 [ %180, %177 ], [ %157, %175 ]
  %183 = icmp ugt i32 %31, 31
  br i1 %183, label %184, label %189, !dx.controlflow.hints !33

; <label>:184                                     ; preds = %181
  %185 = add i32 %35, 1
  %186 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %185
  %187 = load i32, i32 addrspace(3)* %186, align 4, !tbaa !25
  %188 = add i32 %187, %182
  br label %189

; <label>:189                                     ; preds = %184, %181
  %190 = phi i32 [ %188, %184 ], [ %182, %181 ]
  %191 = icmp ugt i32 %31, 47
  br i1 %191, label %192, label %197, !dx.controlflow.hints !34

; <label>:192                                     ; preds = %189
  %193 = add i32 %35, 2
  %194 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %193
  %195 = load i32, i32 addrspace(3)* %194, align 4, !tbaa !25
  %196 = add i32 %195, %190
  br label %197

; <label>:197                                     ; preds = %192, %189, %173, %169, %167, %139
  %198 = phi i32 [ %157, %139 ], [ %172, %169 ], [ %157, %167 ], [ %196, %192 ], [ %190, %189 ], [ 0, %173 ]
  %199 = sub i32 %198, %153
  %200 = add i32 %199, %146
  %201 = call i32 @dx.op.wavePrefixOp.i32(i32 121, i32 %155, i8 0, i8 1)  ; WavePrefixOp(value,op,sop)
  %202 = add i32 %201, %155
  br i1 %38, label %242, label %203, !dx.controlflow.hints !23

; <label>:203                                     ; preds = %197
  %204 = call i32 @dx.op.waveGetLaneIndex(i32 111)  ; WaveGetLaneIndex()
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %205 = add i32 %30, -1
  %206 = icmp eq i32 %204, %205
  br i1 %206, label %207, label %210, !dx.controlflow.hints !24

; <label>:207                                     ; preds = %203
  %208 = add i32 %35, %32
  %209 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %208
  store i32 %202, i32 addrspace(3)* %209, align 4, !tbaa !25
  br label %210

; <label>:210                                     ; preds = %207, %203
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %211 = icmp eq i32 %30, 32
  br i1 %211, label %212, label %218, !dx.controlflow.hints !29

; <label>:212                                     ; preds = %210
  %213 = icmp ugt i32 %31, 31
  br i1 %213, label %214, label %242, !dx.controlflow.hints !30

; <label>:214                                     ; preds = %212
  %215 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %35
  %216 = load i32, i32 addrspace(3)* %215, align 4, !tbaa !25
  %217 = add i32 %216, %202
  br label %242

; <label>:218                                     ; preds = %210
  %219 = icmp eq i32 %30, 16
  br i1 %219, label %220, label %242, !dx.controlflow.hints !31

; <label>:220                                     ; preds = %218
  %221 = icmp ugt i32 %31, 15
  br i1 %221, label %222, label %226, !dx.controlflow.hints !32

; <label>:222                                     ; preds = %220
  %223 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %35
  %224 = load i32, i32 addrspace(3)* %223, align 4, !tbaa !25
  %225 = add i32 %224, %202
  br label %226

; <label>:226                                     ; preds = %222, %220
  %227 = phi i32 [ %225, %222 ], [ %202, %220 ]
  %228 = icmp ugt i32 %31, 31
  br i1 %228, label %229, label %234, !dx.controlflow.hints !33

; <label>:229                                     ; preds = %226
  %230 = add i32 %35, 1
  %231 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %230
  %232 = load i32, i32 addrspace(3)* %231, align 4, !tbaa !25
  %233 = add i32 %232, %227
  br label %234

; <label>:234                                     ; preds = %229, %226
  %235 = phi i32 [ %233, %229 ], [ %227, %226 ]
  %236 = icmp ugt i32 %31, 47
  br i1 %236, label %237, label %242, !dx.controlflow.hints !34

; <label>:237                                     ; preds = %234
  %238 = add i32 %35, 2
  %239 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %238
  %240 = load i32, i32 addrspace(3)* %239, align 4, !tbaa !25
  %241 = add i32 %240, %235
  br label %242

; <label>:242                                     ; preds = %237, %234, %218, %214, %212, %197
  %243 = phi i32 [ %202, %197 ], [ %217, %214 ], [ %202, %212 ], [ %241, %237 ], [ %235, %234 ], [ 0, %218 ]
  %244 = sub i32 %243, %155
  %245 = add i32 %244, %149
  %246 = mul i32 %14, 20
  %247 = add i32 %140, %246
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %4, i32 %247, i32 undef, i32 %200, i32 %200, i32 %200, i32 %200, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %247, i32 undef, i32 %245, i32 %245, i32 %245, i32 %245, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %248 = add nuw nsw i32 %140, 1
  %249 = icmp eq i32 %248, %136
  br i1 %249, label %250, label %139

; <label>:250                                     ; preds = %242
  br label %251

; <label>:251                                     ; preds = %250, %128
  %252 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %253 = extractvalue %dx.types.CBufRet.i32 %252, 1
  %254 = icmp uge i32 %15, %253
  br i1 %137, label %255, label %347

; <label>:255                                     ; preds = %251
  br label %256

; <label>:256                                     ; preds = %343, %255
  %257 = phi i32 [ %344, %343 ], [ 0, %255 ]
  %258 = mul i32 %15, 20
  %259 = add i32 %257, %258
  %260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %259, i32 undef)  ; BufferLoad(srv,index,wot)
  %261 = extractvalue %dx.types.ResRet.i32 %260, 0
  %262 = select i1 %254, i32 0, i32 %261
  %263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %259, i32 undef)  ; BufferLoad(srv,index,wot)
  %264 = extractvalue %dx.types.ResRet.i32 %263, 0
  %265 = select i1 %254, i32 0, i32 %264
  %266 = udiv i32 %13, %30
  %267 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %262, i8 0, i8 1)  ; WaveActiveOp(value,op,sop)
  br i1 %38, label %294, label %268, !dx.controlflow.hints !35

; <label>:268                                     ; preds = %256
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %269 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %269, label %270, label %272, !dx.controlflow.hints !36

; <label>:270                                     ; preds = %268
  %271 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %266
  store i32 %267, i32 addrspace(3)* %271, align 4, !tbaa !25
  br label %272

; <label>:272                                     ; preds = %270, %268
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %273 = icmp eq i32 %30, 32
  br i1 %273, label %274, label %279, !dx.controlflow.hints !37

; <label>:274                                     ; preds = %272
  %275 = xor i32 %266, 1
  %276 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %275
  %277 = load i32, i32 addrspace(3)* %276, align 4, !tbaa !25
  %278 = add i32 %277, %267
  br label %294

; <label>:279                                     ; preds = %272
  %280 = icmp eq i32 %30, 16
  br i1 %280, label %281, label %294, !dx.controlflow.hints !38

; <label>:281                                     ; preds = %279
  %282 = xor i32 %266, 1
  %283 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %282
  %284 = load i32, i32 addrspace(3)* %283, align 4, !tbaa !25
  %285 = add i32 %284, %267
  %286 = xor i32 %266, 2
  %287 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %286
  %288 = load i32, i32 addrspace(3)* %287, align 4, !tbaa !25
  %289 = add i32 %285, %288
  %290 = xor i32 %266, 3
  %291 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %290
  %292 = load i32, i32 addrspace(3)* %291, align 4, !tbaa !25
  %293 = add i32 %289, %292
  br label %294

; <label>:294                                     ; preds = %281, %279, %274, %256
  %295 = phi i32 [ %278, %274 ], [ %293, %281 ], [ %267, %256 ], [ 0, %279 ]
  %296 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %265, i8 0, i8 1)  ; WaveActiveOp(value,op,sop)
  br i1 %38, label %323, label %297, !dx.controlflow.hints !35

; <label>:297                                     ; preds = %294
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %298 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %298, label %299, label %301, !dx.controlflow.hints !36

; <label>:299                                     ; preds = %297
  %300 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %266
  store i32 %296, i32 addrspace(3)* %300, align 4, !tbaa !25
  br label %301

; <label>:301                                     ; preds = %299, %297
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %302 = icmp eq i32 %30, 32
  br i1 %302, label %303, label %308, !dx.controlflow.hints !37

; <label>:303                                     ; preds = %301
  %304 = xor i32 %266, 1
  %305 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %304
  %306 = load i32, i32 addrspace(3)* %305, align 4, !tbaa !25
  %307 = add i32 %306, %296
  br label %323

; <label>:308                                     ; preds = %301
  %309 = icmp eq i32 %30, 16
  br i1 %309, label %310, label %323, !dx.controlflow.hints !38

; <label>:310                                     ; preds = %308
  %311 = xor i32 %266, 1
  %312 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %311
  %313 = load i32, i32 addrspace(3)* %312, align 4, !tbaa !25
  %314 = add i32 %313, %296
  %315 = xor i32 %266, 2
  %316 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %315
  %317 = load i32, i32 addrspace(3)* %316, align 4, !tbaa !25
  %318 = add i32 %314, %317
  %319 = xor i32 %266, 3
  %320 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %319
  %321 = load i32, i32 addrspace(3)* %320, align 4, !tbaa !25
  %322 = add i32 %318, %321
  br label %323

; <label>:323                                     ; preds = %310, %308, %303, %294
  %324 = phi i32 [ %307, %303 ], [ %322, %310 ], [ %296, %294 ], [ 0, %308 ]
  %325 = or i32 %15, %13
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %327, label %343, !dx.controlflow.hints !39

; <label>:327                                     ; preds = %323
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %257, i32 undef, i32 %324, i32 %324, i32 %324, i32 %324, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %328 = add i32 %295, 63
  %329 = lshr i32 %328, 6
  %330 = mul i32 %257, 24
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %330, i32 undef, i32 %329, i32 %329, i32 %329, i32 %329, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %331 = or i32 %330, 1
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %331, i32 undef, i32 1, i32 1, i32 1, i32 1, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %332 = or i32 %330, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %332, i32 undef, i32 1, i32 1, i32 1, i32 1, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %333 = add i32 %324, 63
  %334 = lshr i32 %333, 6
  %335 = add i32 %330, 8
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %335, i32 undef, i32 %334, i32 %334, i32 %334, i32 %334, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %336 = add i32 %330, 9
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %336, i32 undef, i32 1, i32 1, i32 1, i32 1, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %337 = add i32 %330, 10
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %337, i32 undef, i32 1, i32 1, i32 1, i32 1, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %338 = add nuw nsw i32 %329, 63
  %339 = lshr i32 %338, 6
  %340 = add i32 %330, 16
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %340, i32 undef, i32 %339, i32 %339, i32 %339, i32 %339, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %341 = add i32 %330, 17
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %341, i32 undef, i32 1, i32 1, i32 1, i32 1, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %342 = add i32 %330, 18
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %342, i32 undef, i32 1, i32 1, i32 1, i32 1, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %343

; <label>:343                                     ; preds = %327, %323
  %344 = add nuw nsw i32 %257, 1
  %345 = icmp eq i32 %344, %136
  br i1 %345, label %346, label %256

; <label>:346                                     ; preds = %343
  br label %347

; <label>:347                                     ; preds = %346, %251
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.waveGetLaneCount(i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.waveGetLaneIndex(i32) #0

; Function Attrs: nounwind
declare i32 @dx.op.waveActiveOp.i32(i32, i32, i8, i8) #2

; Function Attrs: nounwind
declare i32 @dx.op.wavePrefixOp.i32(i32, i32, i8, i8) #2

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #3

; Function Attrs: nounwind
declare i1 @dx.op.waveIsFirstLane(i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }
attributes #3 = { noduplicate nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!20}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !11, !18, null}
!5 = !{!6, !8, !9, !10}
!6 = !{i32 0, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 0, i32 1, i32 10, i32 0, !7}
!7 = !{i32 0, i32 5}
!8 = !{i32 1, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 10, i32 0, !7}
!9 = !{i32 2, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 2, i32 1, i32 10, i32 0, !7}
!10 = !{i32 3, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 3, i32 1, i32 10, i32 0, !7}
!11 = !{!12, !13, !14, !15, !16, !17}
!12 = !{i32 0, %"class.RWBuffer<unsigned int>"* undef, !"", i32 0, i32 0, i32 1, i32 10, i1 false, i1 false, i1 false, !7}
!13 = !{i32 1, %"class.RWBuffer<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 10, i1 false, i1 false, i1 false, !7}
!14 = !{i32 2, %"class.RWBuffer<unsigned int>"* undef, !"", i32 0, i32 2, i32 1, i32 10, i1 false, i1 false, i1 false, !7}
!15 = !{i32 3, %"class.RWBuffer<unsigned int>"* undef, !"", i32 0, i32 3, i32 1, i32 10, i1 false, i1 false, i1 false, !7}
!16 = !{i32 4, %"class.RWBuffer<unsigned int>"* undef, !"", i32 0, i32 4, i32 1, i32 10, i1 false, i1 false, i1 false, !7}
!17 = !{i32 5, %"class.RWBuffer<unsigned int>"* undef, !"", i32 0, i32 5, i32 1, i32 10, i1 false, i1 false, i1 false, !7}
!18 = !{!19}
!19 = !{i32 0, %GfxSampleLightGridVolumesLightingConsts* undef, !"", i32 0, i32 0, i32 1, i32 48, null}
!20 = !{void ()* @cs_compute_lightgrid_sampling_offsets_upsweep, !"cs_compute_lightgrid_sampling_offsets_upsweep", null, !4, !21}
!21 = !{i32 0, i64 524544, i32 4, !22}
!22 = !{i32 64, i32 1, i32 1}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = !{!26, !26, i64 0}
!26 = !{!"int", !27, i64 0}
!27 = !{!"omnipotent char", !28, i64 0}
!28 = !{!"Simple C/C++ TBAA"}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}

