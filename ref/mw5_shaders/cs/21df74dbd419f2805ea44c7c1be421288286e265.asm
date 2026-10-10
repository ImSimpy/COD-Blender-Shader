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
; shader hash: b89fec862ac28992650aa54bee7fb826
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
;                                   texture     u32         buf      T2             t2     1
;                                   texture     u32         buf      T3             t3     1
;                                   texture     u32         buf      T4             t4     1
;                                   texture     u32         buf      T5             t5     1
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

define void @cs_compact_lgv_sampling_lists() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %13 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %14 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %15 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %16 = extractvalue %dx.types.CBufRet.i32 %15, 0
  %17 = icmp uge i32 %14, %16
  %18 = shl i32 %14, 5
  %19 = or i32 %18, 12
  %20 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %19, i32 undef)  ; BufferLoad(srv,index,wot)
  %21 = extractvalue %dx.types.ResRet.i32 %20, 0
  %22 = and i32 %21, 255
  %23 = lshr i32 %21, 8
  %24 = and i32 %23, 255
  %25 = lshr i32 %21, 16
  %26 = and i32 %25, 255
  %27 = mul nuw nsw i32 %24, %22
  %28 = mul nuw nsw i32 %27, %26
  %29 = select i1 %17, i32 0, i32 %28
  %30 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %14, i32 undef)  ; BufferLoad(srv,index,wot)
  %31 = extractvalue %dx.types.ResRet.i32 %30, 0
  %32 = select i1 %17, i32 0, i32 %31
  %33 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %32)  ; Countbits(value)
  %34 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %12, i32 undef)  ; BufferLoad(srv,index,wot)
  %35 = extractvalue %dx.types.ResRet.i32 %34, 0
  %36 = mul i32 %29, %33
  %37 = call i32 @dx.op.waveGetLaneCount(i32 112)  ; WaveGetLaneCount()
  %38 = and i32 %13, 63
  %39 = udiv i32 %38, %37
  %40 = udiv i32 64, %37
  %41 = lshr i32 %13, 6
  %42 = mul i32 %40, %41
  %43 = call i32 @dx.op.wavePrefixOp.i32(i32 121, i32 %36, i8 0, i8 1)  ; WavePrefixOp(value,op,sop)
  %44 = add i32 %43, %36
  %45 = icmp eq i32 %37, 64
  br i1 %45, label %85, label %46, !dx.controlflow.hints !23

; <label>:46                                      ; preds = %0
  %47 = call i32 @dx.op.waveGetLaneIndex(i32 111)  ; WaveGetLaneIndex()
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %48 = add i32 %37, -1
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %53, !dx.controlflow.hints !24

; <label>:50                                      ; preds = %46
  %51 = add i32 %42, %39
  %52 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %51
  store i32 %44, i32 addrspace(3)* %52, align 4, !tbaa !25
  br label %53

; <label>:53                                      ; preds = %50, %46
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %54 = icmp eq i32 %37, 32
  br i1 %54, label %55, label %61, !dx.controlflow.hints !29

; <label>:55                                      ; preds = %53
  %56 = icmp ugt i32 %38, 31
  br i1 %56, label %57, label %85, !dx.controlflow.hints !30

; <label>:57                                      ; preds = %55
  %58 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %42
  %59 = load i32, i32 addrspace(3)* %58, align 4, !tbaa !25
  %60 = add i32 %59, %44
  br label %85

; <label>:61                                      ; preds = %53
  %62 = icmp eq i32 %37, 16
  br i1 %62, label %63, label %85, !dx.controlflow.hints !31

; <label>:63                                      ; preds = %61
  %64 = icmp ugt i32 %38, 15
  br i1 %64, label %65, label %69, !dx.controlflow.hints !32

; <label>:65                                      ; preds = %63
  %66 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %42
  %67 = load i32, i32 addrspace(3)* %66, align 4, !tbaa !25
  %68 = add i32 %67, %44
  br label %69

; <label>:69                                      ; preds = %65, %63
  %70 = phi i32 [ %68, %65 ], [ %44, %63 ]
  %71 = icmp ugt i32 %38, 31
  br i1 %71, label %72, label %77, !dx.controlflow.hints !33

; <label>:72                                      ; preds = %69
  %73 = add i32 %42, 1
  %74 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %73
  %75 = load i32, i32 addrspace(3)* %74, align 4, !tbaa !25
  %76 = add i32 %75, %70
  br label %77

; <label>:77                                      ; preds = %72, %69
  %78 = phi i32 [ %76, %72 ], [ %70, %69 ]
  %79 = icmp ugt i32 %38, 47
  br i1 %79, label %80, label %85, !dx.controlflow.hints !34

; <label>:80                                      ; preds = %77
  %81 = add i32 %42, 2
  %82 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %81
  %83 = load i32, i32 addrspace(3)* %82, align 4, !tbaa !25
  %84 = add i32 %83, %78
  br label %85

; <label>:85                                      ; preds = %80, %77, %61, %57, %55, %0
  %86 = phi i32 [ %44, %0 ], [ %60, %57 ], [ %44, %55 ], [ %84, %80 ], [ %78, %77 ], [ 0, %61 ]
  %87 = sub i32 %86, %36
  %88 = add i32 %87, %35
  br i1 %17, label %90, label %89, !dx.controlflow.hints !35

; <label>:89                                      ; preds = %85
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %4, i32 %14, i32 undef, i32 %88, i32 %88, i32 %88, i32 %88, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %90

; <label>:90                                      ; preds = %89, %85
  %91 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %12, i32 undef)  ; BufferLoad(srv,index,wot)
  %92 = extractvalue %dx.types.ResRet.i32 %91, 0
  %93 = call i32 @dx.op.wavePrefixOp.i32(i32 121, i32 %29, i8 0, i8 1)  ; WavePrefixOp(value,op,sop)
  %94 = add i32 %93, %29
  br i1 %45, label %134, label %95, !dx.controlflow.hints !23

; <label>:95                                      ; preds = %90
  %96 = call i32 @dx.op.waveGetLaneIndex(i32 111)  ; WaveGetLaneIndex()
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %97 = add i32 %37, -1
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %102, !dx.controlflow.hints !24

; <label>:99                                      ; preds = %95
  %100 = add i32 %42, %39
  %101 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %100
  store i32 %94, i32 addrspace(3)* %101, align 4, !tbaa !25
  br label %102

; <label>:102                                     ; preds = %99, %95
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %103 = icmp eq i32 %37, 32
  br i1 %103, label %104, label %110, !dx.controlflow.hints !29

; <label>:104                                     ; preds = %102
  %105 = icmp ugt i32 %38, 31
  br i1 %105, label %106, label %134, !dx.controlflow.hints !30

; <label>:106                                     ; preds = %104
  %107 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %42
  %108 = load i32, i32 addrspace(3)* %107, align 4, !tbaa !25
  %109 = add i32 %108, %94
  br label %134

; <label>:110                                     ; preds = %102
  %111 = icmp eq i32 %37, 16
  br i1 %111, label %112, label %134, !dx.controlflow.hints !31

; <label>:112                                     ; preds = %110
  %113 = icmp ugt i32 %38, 15
  br i1 %113, label %114, label %118, !dx.controlflow.hints !32

; <label>:114                                     ; preds = %112
  %115 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %42
  %116 = load i32, i32 addrspace(3)* %115, align 4, !tbaa !25
  %117 = add i32 %116, %94
  br label %118

; <label>:118                                     ; preds = %114, %112
  %119 = phi i32 [ %117, %114 ], [ %94, %112 ]
  %120 = icmp ugt i32 %38, 31
  br i1 %120, label %121, label %126, !dx.controlflow.hints !33

; <label>:121                                     ; preds = %118
  %122 = add i32 %42, 1
  %123 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %122
  %124 = load i32, i32 addrspace(3)* %123, align 4, !tbaa !25
  %125 = add i32 %124, %119
  br label %126

; <label>:126                                     ; preds = %121, %118
  %127 = phi i32 [ %125, %121 ], [ %119, %118 ]
  %128 = icmp ugt i32 %38, 47
  br i1 %128, label %129, label %134, !dx.controlflow.hints !34

; <label>:129                                     ; preds = %126
  %130 = add i32 %42, 2
  %131 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %130
  %132 = load i32, i32 addrspace(3)* %131, align 4, !tbaa !25
  %133 = add i32 %132, %127
  br label %134

; <label>:134                                     ; preds = %129, %126, %110, %106, %104, %90
  %135 = phi i32 [ %94, %90 ], [ %109, %106 ], [ %94, %104 ], [ %133, %129 ], [ %127, %126 ], [ 0, %110 ]
  %136 = sub i32 %135, %29
  %137 = add i32 %136, %92
  br i1 %17, label %139, label %138, !dx.controlflow.hints !36

; <label>:138                                     ; preds = %134
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %14, i32 undef, i32 %137, i32 %137, i32 %137, i32 %137, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %139

; <label>:139                                     ; preds = %138, %134
  %140 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %141 = extractvalue %dx.types.CBufRet.i32 %140, 1
  %142 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %143 = extractvalue %dx.types.CBufRet.i32 %142, 3
  %144 = sub i32 %141, %143
  %145 = icmp sgt i32 %144, 0
  br i1 %145, label %146, label %264

; <label>:146                                     ; preds = %139
  br label %147

; <label>:147                                     ; preds = %260, %146
  %148 = phi i32 [ %261, %260 ], [ 0, %146 ]
  %149 = and i32 %148, 31
  %150 = shl i32 1, %149
  %151 = and i32 %150, %32
  %152 = icmp ne i32 %151, 0
  %153 = zext i1 %152 to i32
  %154 = mul i32 %12, 20
  %155 = add i32 %148, %154
  %156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %155, i32 undef)  ; BufferLoad(srv,index,wot)
  %157 = extractvalue %dx.types.ResRet.i32 %156, 0
  %158 = call i32 @dx.op.wavePrefixOp.i32(i32 121, i32 %153, i8 0, i8 1)  ; WavePrefixOp(value,op,sop)
  %159 = add i32 %158, %153
  br i1 %45, label %199, label %160, !dx.controlflow.hints !23

; <label>:160                                     ; preds = %147
  %161 = call i32 @dx.op.waveGetLaneIndex(i32 111)  ; WaveGetLaneIndex()
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %162 = add i32 %37, -1
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %167, !dx.controlflow.hints !24

; <label>:164                                     ; preds = %160
  %165 = add i32 %42, %39
  %166 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %165
  store i32 %159, i32 addrspace(3)* %166, align 4, !tbaa !25
  br label %167

; <label>:167                                     ; preds = %164, %160
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %168 = icmp eq i32 %37, 32
  br i1 %168, label %169, label %175, !dx.controlflow.hints !29

; <label>:169                                     ; preds = %167
  %170 = icmp ugt i32 %38, 31
  br i1 %170, label %171, label %199, !dx.controlflow.hints !30

; <label>:171                                     ; preds = %169
  %172 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %42
  %173 = load i32, i32 addrspace(3)* %172, align 4, !tbaa !25
  %174 = add i32 %173, %159
  br label %199

; <label>:175                                     ; preds = %167
  %176 = icmp eq i32 %37, 16
  br i1 %176, label %177, label %199, !dx.controlflow.hints !31

; <label>:177                                     ; preds = %175
  %178 = icmp ugt i32 %38, 15
  br i1 %178, label %179, label %183, !dx.controlflow.hints !32

; <label>:179                                     ; preds = %177
  %180 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %42
  %181 = load i32, i32 addrspace(3)* %180, align 4, !tbaa !25
  %182 = add i32 %181, %159
  br label %183

; <label>:183                                     ; preds = %179, %177
  %184 = phi i32 [ %182, %179 ], [ %159, %177 ]
  %185 = icmp ugt i32 %38, 31
  br i1 %185, label %186, label %191, !dx.controlflow.hints !33

; <label>:186                                     ; preds = %183
  %187 = add i32 %42, 1
  %188 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %187
  %189 = load i32, i32 addrspace(3)* %188, align 4, !tbaa !25
  %190 = add i32 %189, %184
  br label %191

; <label>:191                                     ; preds = %186, %183
  %192 = phi i32 [ %190, %186 ], [ %184, %183 ]
  %193 = icmp ugt i32 %38, 47
  br i1 %193, label %194, label %199, !dx.controlflow.hints !34

; <label>:194                                     ; preds = %191
  %195 = add i32 %42, 2
  %196 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %195
  %197 = load i32, i32 addrspace(3)* %196, align 4, !tbaa !25
  %198 = add i32 %197, %192
  br label %199

; <label>:199                                     ; preds = %194, %191, %175, %171, %169, %147
  %200 = phi i32 [ %159, %147 ], [ %174, %171 ], [ %159, %169 ], [ %198, %194 ], [ %192, %191 ], [ 0, %175 ]
  %201 = sub i32 %200, %153
  %202 = add i32 %201, %157
  %203 = xor i1 %17, true
  %204 = and i1 %152, %203
  br i1 %204, label %205, label %208, !dx.controlflow.hints !37

; <label>:205                                     ; preds = %199
  %206 = mul i32 %202, 20
  %207 = add i32 %206, %148
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %207, i32 undef, i32 %14, i32 %14, i32 %14, i32 %14, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %208

; <label>:208                                     ; preds = %205, %199
  %209 = select i1 %152, i32 %29, i32 0
  %210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %155, i32 undef)  ; BufferLoad(srv,index,wot)
  %211 = extractvalue %dx.types.ResRet.i32 %210, 0
  %212 = call i32 @dx.op.wavePrefixOp.i32(i32 121, i32 %209, i8 0, i8 1)  ; WavePrefixOp(value,op,sop)
  %213 = add i32 %212, %209
  br i1 %45, label %253, label %214, !dx.controlflow.hints !23

; <label>:214                                     ; preds = %208
  %215 = call i32 @dx.op.waveGetLaneIndex(i32 111)  ; WaveGetLaneIndex()
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %216 = add i32 %37, -1
  %217 = icmp eq i32 %215, %216
  br i1 %217, label %218, label %221, !dx.controlflow.hints !24

; <label>:218                                     ; preds = %214
  %219 = add i32 %42, %39
  %220 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %219
  store i32 %213, i32 addrspace(3)* %220, align 4, !tbaa !25
  br label %221

; <label>:221                                     ; preds = %218, %214
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %222 = icmp eq i32 %37, 32
  br i1 %222, label %223, label %229, !dx.controlflow.hints !29

; <label>:223                                     ; preds = %221
  %224 = icmp ugt i32 %38, 31
  br i1 %224, label %225, label %253, !dx.controlflow.hints !30

; <label>:225                                     ; preds = %223
  %226 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %42
  %227 = load i32, i32 addrspace(3)* %226, align 4, !tbaa !25
  %228 = add i32 %227, %213
  br label %253

; <label>:229                                     ; preds = %221
  %230 = icmp eq i32 %37, 16
  br i1 %230, label %231, label %253, !dx.controlflow.hints !31

; <label>:231                                     ; preds = %229
  %232 = icmp ugt i32 %38, 15
  br i1 %232, label %233, label %237, !dx.controlflow.hints !32

; <label>:233                                     ; preds = %231
  %234 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %42
  %235 = load i32, i32 addrspace(3)* %234, align 4, !tbaa !25
  %236 = add i32 %235, %213
  br label %237

; <label>:237                                     ; preds = %233, %231
  %238 = phi i32 [ %236, %233 ], [ %213, %231 ]
  %239 = icmp ugt i32 %38, 31
  br i1 %239, label %240, label %245, !dx.controlflow.hints !33

; <label>:240                                     ; preds = %237
  %241 = add i32 %42, 1
  %242 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %241
  %243 = load i32, i32 addrspace(3)* %242, align 4, !tbaa !25
  %244 = add i32 %243, %238
  br label %245

; <label>:245                                     ; preds = %240, %237
  %246 = phi i32 [ %244, %240 ], [ %238, %237 ]
  %247 = icmp ugt i32 %38, 47
  br i1 %247, label %248, label %253, !dx.controlflow.hints !34

; <label>:248                                     ; preds = %245
  %249 = add i32 %42, 2
  %250 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %249
  %251 = load i32, i32 addrspace(3)* %250, align 4, !tbaa !25
  %252 = add i32 %251, %246
  br label %253

; <label>:253                                     ; preds = %248, %245, %229, %225, %223, %208
  %254 = phi i32 [ %213, %208 ], [ %228, %225 ], [ %213, %223 ], [ %252, %248 ], [ %246, %245 ], [ 0, %229 ]
  %255 = sub i32 %254, %209
  %256 = add i32 %255, %211
  br i1 %204, label %257, label %260, !dx.controlflow.hints !38

; <label>:257                                     ; preds = %253
  %258 = mul i32 %202, 20
  %259 = add i32 %258, %148
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %259, i32 undef, i32 %256, i32 %256, i32 %256, i32 %256, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %260

; <label>:260                                     ; preds = %257, %253
  %261 = add nuw nsw i32 %148, 1
  %262 = icmp eq i32 %261, %144
  br i1 %262, label %263, label %147

; <label>:263                                     ; preds = %260
  br label %264

; <label>:264                                     ; preds = %263, %139
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
declare i32 @dx.op.waveGetLaneIndex(i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.waveGetLaneCount(i32) #0

; Function Attrs: nounwind
declare i32 @dx.op.wavePrefixOp.i32(i32, i32, i8, i8) #1

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #3

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
!dx.entryPoints = !{!20}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !13, !18, null}
!5 = !{!6, !8, !9, !10, !11, !12}
!6 = !{i32 0, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 0, i32 1, i32 10, i32 0, !7}
!7 = !{i32 0, i32 5}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!9 = !{i32 2, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 2, i32 1, i32 10, i32 0, !7}
!10 = !{i32 3, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 3, i32 1, i32 10, i32 0, !7}
!11 = !{i32 4, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 4, i32 1, i32 10, i32 0, !7}
!12 = !{i32 5, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 5, i32 1, i32 10, i32 0, !7}
!13 = !{!14, !15, !16, !17}
!14 = !{i32 0, %"class.RWBuffer<unsigned int>"* undef, !"", i32 0, i32 0, i32 1, i32 10, i1 false, i1 false, i1 false, !7}
!15 = !{i32 1, %"class.RWBuffer<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 10, i1 false, i1 false, i1 false, !7}
!16 = !{i32 2, %"class.RWBuffer<unsigned int>"* undef, !"", i32 0, i32 2, i32 1, i32 10, i1 false, i1 false, i1 false, !7}
!17 = !{i32 3, %"class.RWBuffer<unsigned int>"* undef, !"", i32 0, i32 3, i32 1, i32 10, i1 false, i1 false, i1 false, !7}
!18 = !{!19}
!19 = !{i32 0, %GfxSampleLightGridVolumesLightingConsts* undef, !"", i32 0, i32 0, i32 1, i32 48, null}
!20 = !{void ()* @cs_compact_lgv_sampling_lists, !"cs_compact_lgv_sampling_lists", null, !4, !21}
!21 = !{i32 0, i64 524560, i32 4, !22}
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

