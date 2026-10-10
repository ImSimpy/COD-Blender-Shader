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
; shader hash: 0055ddad8a1c2b5a1a52f9cd3a2d056a
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

@"\01?tiledSharedMem@@3PAIA" = external addrspace(3) global [64 x i32], align 4

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
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %37 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %13
  store i32 %36, i32 addrspace(3)* %37, align 4, !tbaa !23
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %38 = and i32 %13, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %46, label %40, !dx.controlflow.hints !27

; <label>:40                                      ; preds = %0
  %41 = and i32 %13, -2
  %42 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %41
  %43 = load i32, i32 addrspace(3)* %42, align 4, !tbaa !23
  %44 = load i32, i32 addrspace(3)* %37, align 4, !tbaa !23
  %45 = add i32 %44, %43
  store i32 %45, i32 addrspace(3)* %37, align 4, !tbaa !23
  br label %46

; <label>:46                                      ; preds = %40, %0
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %47 = and i32 %13, 2
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %56, label %49, !dx.controlflow.hints !28

; <label>:49                                      ; preds = %46
  %50 = and i32 %13, -4
  %51 = or i32 %50, 1
  %52 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %51
  %53 = load i32, i32 addrspace(3)* %52, align 4, !tbaa !23
  %54 = load i32, i32 addrspace(3)* %37, align 4, !tbaa !23
  %55 = add i32 %54, %53
  store i32 %55, i32 addrspace(3)* %37, align 4, !tbaa !23
  br label %56

; <label>:56                                      ; preds = %49, %46
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %57 = and i32 %13, 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %66, label %59, !dx.controlflow.hints !29

; <label>:59                                      ; preds = %56
  %60 = and i32 %13, -8
  %61 = or i32 %60, 3
  %62 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %61
  %63 = load i32, i32 addrspace(3)* %62, align 4, !tbaa !23
  %64 = load i32, i32 addrspace(3)* %37, align 4, !tbaa !23
  %65 = add i32 %64, %63
  store i32 %65, i32 addrspace(3)* %37, align 4, !tbaa !23
  br label %66

; <label>:66                                      ; preds = %59, %56
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %67 = and i32 %13, 8
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %76, label %69, !dx.controlflow.hints !30

; <label>:69                                      ; preds = %66
  %70 = and i32 %13, -16
  %71 = or i32 %70, 7
  %72 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %71
  %73 = load i32, i32 addrspace(3)* %72, align 4, !tbaa !23
  %74 = load i32, i32 addrspace(3)* %37, align 4, !tbaa !23
  %75 = add i32 %74, %73
  store i32 %75, i32 addrspace(3)* %37, align 4, !tbaa !23
  br label %76

; <label>:76                                      ; preds = %69, %66
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %77 = and i32 %13, 16
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %86, label %79, !dx.controlflow.hints !31

; <label>:79                                      ; preds = %76
  %80 = and i32 %13, -32
  %81 = or i32 %80, 15
  %82 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %81
  %83 = load i32, i32 addrspace(3)* %82, align 4, !tbaa !23
  %84 = load i32, i32 addrspace(3)* %37, align 4, !tbaa !23
  %85 = add i32 %84, %83
  store i32 %85, i32 addrspace(3)* %37, align 4, !tbaa !23
  br label %86

; <label>:86                                      ; preds = %79, %76
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %87 = and i32 %13, 32
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %91, !dx.controlflow.hints !32

; <label>:89                                      ; preds = %86
  %90 = load i32, i32 addrspace(3)* %37, align 4, !tbaa !23
  br label %98

; <label>:91                                      ; preds = %86
  %92 = and i32 %13, -64
  %93 = or i32 %92, 31
  %94 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %93
  %95 = load i32, i32 addrspace(3)* %94, align 4, !tbaa !23
  %96 = load i32, i32 addrspace(3)* %37, align 4, !tbaa !23
  %97 = add i32 %96, %95
  store i32 %97, i32 addrspace(3)* %37, align 4, !tbaa !23
  br label %98

; <label>:98                                      ; preds = %91, %89
  %99 = phi i32 [ %90, %89 ], [ %97, %91 ]
  %100 = sub i32 %99, %36
  %101 = add i32 %100, %35
  br i1 %17, label %103, label %102, !dx.controlflow.hints !33

; <label>:102                                     ; preds = %98
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %4, i32 %14, i32 undef, i32 %101, i32 %101, i32 %101, i32 %101, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %103

; <label>:103                                     ; preds = %102, %98
  %104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %12, i32 undef)  ; BufferLoad(srv,index,wot)
  %105 = extractvalue %dx.types.ResRet.i32 %104, 0
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %29, i32 addrspace(3)* %37, align 4, !tbaa !23
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %39, label %112, label %106, !dx.controlflow.hints !27

; <label>:106                                     ; preds = %103
  %107 = and i32 %13, -2
  %108 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %107
  %109 = load i32, i32 addrspace(3)* %108, align 4, !tbaa !23
  %110 = load i32, i32 addrspace(3)* %37, align 4, !tbaa !23
  %111 = add i32 %110, %109
  store i32 %111, i32 addrspace(3)* %37, align 4, !tbaa !23
  br label %112

; <label>:112                                     ; preds = %106, %103
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %48, label %120, label %113, !dx.controlflow.hints !28

; <label>:113                                     ; preds = %112
  %114 = and i32 %13, -4
  %115 = or i32 %114, 1
  %116 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %115
  %117 = load i32, i32 addrspace(3)* %116, align 4, !tbaa !23
  %118 = load i32, i32 addrspace(3)* %37, align 4, !tbaa !23
  %119 = add i32 %118, %117
  store i32 %119, i32 addrspace(3)* %37, align 4, !tbaa !23
  br label %120

; <label>:120                                     ; preds = %113, %112
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %58, label %128, label %121, !dx.controlflow.hints !29

; <label>:121                                     ; preds = %120
  %122 = and i32 %13, -8
  %123 = or i32 %122, 3
  %124 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %123
  %125 = load i32, i32 addrspace(3)* %124, align 4, !tbaa !23
  %126 = load i32, i32 addrspace(3)* %37, align 4, !tbaa !23
  %127 = add i32 %126, %125
  store i32 %127, i32 addrspace(3)* %37, align 4, !tbaa !23
  br label %128

; <label>:128                                     ; preds = %121, %120
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %68, label %136, label %129, !dx.controlflow.hints !30

; <label>:129                                     ; preds = %128
  %130 = and i32 %13, -16
  %131 = or i32 %130, 7
  %132 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %131
  %133 = load i32, i32 addrspace(3)* %132, align 4, !tbaa !23
  %134 = load i32, i32 addrspace(3)* %37, align 4, !tbaa !23
  %135 = add i32 %134, %133
  store i32 %135, i32 addrspace(3)* %37, align 4, !tbaa !23
  br label %136

; <label>:136                                     ; preds = %129, %128
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %78, label %144, label %137, !dx.controlflow.hints !31

; <label>:137                                     ; preds = %136
  %138 = and i32 %13, -32
  %139 = or i32 %138, 15
  %140 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %139
  %141 = load i32, i32 addrspace(3)* %140, align 4, !tbaa !23
  %142 = load i32, i32 addrspace(3)* %37, align 4, !tbaa !23
  %143 = add i32 %142, %141
  store i32 %143, i32 addrspace(3)* %37, align 4, !tbaa !23
  br label %144

; <label>:144                                     ; preds = %137, %136
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %88, label %145, label %147, !dx.controlflow.hints !32

; <label>:145                                     ; preds = %144
  %146 = load i32, i32 addrspace(3)* %37, align 4, !tbaa !23
  br label %154

; <label>:147                                     ; preds = %144
  %148 = and i32 %13, -64
  %149 = or i32 %148, 31
  %150 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %149
  %151 = load i32, i32 addrspace(3)* %150, align 4, !tbaa !23
  %152 = load i32, i32 addrspace(3)* %37, align 4, !tbaa !23
  %153 = add i32 %152, %151
  store i32 %153, i32 addrspace(3)* %37, align 4, !tbaa !23
  br label %154

; <label>:154                                     ; preds = %147, %145
  %155 = phi i32 [ %146, %145 ], [ %153, %147 ]
  %156 = sub i32 %155, %29
  %157 = add i32 %156, %105
  br i1 %17, label %159, label %158, !dx.controlflow.hints !34

; <label>:158                                     ; preds = %154
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %14, i32 undef, i32 %157, i32 %157, i32 %157, i32 %157, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %159

; <label>:159                                     ; preds = %158, %154
  %160 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %161 = extractvalue %dx.types.CBufRet.i32 %160, 1
  %162 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %163 = extractvalue %dx.types.CBufRet.i32 %162, 3
  %164 = sub i32 %161, %163
  %165 = icmp sgt i32 %164, 0
  br i1 %165, label %166, label %298

; <label>:166                                     ; preds = %159
  br label %167

; <label>:167                                     ; preds = %294, %166
  %168 = phi i32 [ %295, %294 ], [ 0, %166 ]
  %169 = and i32 %168, 31
  %170 = shl i32 1, %169
  %171 = and i32 %170, %32
  %172 = icmp ne i32 %171, 0
  %173 = zext i1 %172 to i32
  %174 = mul i32 %12, 20
  %175 = add i32 %168, %174
  %176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %175, i32 undef)  ; BufferLoad(srv,index,wot)
  %177 = extractvalue %dx.types.ResRet.i32 %176, 0
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %173, i32 addrspace(3)* %37, align 4, !tbaa !23
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %39, label %184, label %178, !dx.controlflow.hints !27

; <label>:178                                     ; preds = %167
  %179 = and i32 %13, -2
  %180 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %179
  %181 = load i32, i32 addrspace(3)* %180, align 4, !tbaa !23
  %182 = load i32, i32 addrspace(3)* %37, align 4, !tbaa !23
  %183 = add i32 %182, %181
  store i32 %183, i32 addrspace(3)* %37, align 4, !tbaa !23
  br label %184

; <label>:184                                     ; preds = %178, %167
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %48, label %192, label %185, !dx.controlflow.hints !28

; <label>:185                                     ; preds = %184
  %186 = and i32 %13, -4
  %187 = or i32 %186, 1
  %188 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %187
  %189 = load i32, i32 addrspace(3)* %188, align 4, !tbaa !23
  %190 = load i32, i32 addrspace(3)* %37, align 4, !tbaa !23
  %191 = add i32 %190, %189
  store i32 %191, i32 addrspace(3)* %37, align 4, !tbaa !23
  br label %192

; <label>:192                                     ; preds = %185, %184
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %58, label %200, label %193, !dx.controlflow.hints !29

; <label>:193                                     ; preds = %192
  %194 = and i32 %13, -8
  %195 = or i32 %194, 3
  %196 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %195
  %197 = load i32, i32 addrspace(3)* %196, align 4, !tbaa !23
  %198 = load i32, i32 addrspace(3)* %37, align 4, !tbaa !23
  %199 = add i32 %198, %197
  store i32 %199, i32 addrspace(3)* %37, align 4, !tbaa !23
  br label %200

; <label>:200                                     ; preds = %193, %192
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %68, label %208, label %201, !dx.controlflow.hints !30

; <label>:201                                     ; preds = %200
  %202 = and i32 %13, -16
  %203 = or i32 %202, 7
  %204 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %203
  %205 = load i32, i32 addrspace(3)* %204, align 4, !tbaa !23
  %206 = load i32, i32 addrspace(3)* %37, align 4, !tbaa !23
  %207 = add i32 %206, %205
  store i32 %207, i32 addrspace(3)* %37, align 4, !tbaa !23
  br label %208

; <label>:208                                     ; preds = %201, %200
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %78, label %216, label %209, !dx.controlflow.hints !31

; <label>:209                                     ; preds = %208
  %210 = and i32 %13, -32
  %211 = or i32 %210, 15
  %212 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %211
  %213 = load i32, i32 addrspace(3)* %212, align 4, !tbaa !23
  %214 = load i32, i32 addrspace(3)* %37, align 4, !tbaa !23
  %215 = add i32 %214, %213
  store i32 %215, i32 addrspace(3)* %37, align 4, !tbaa !23
  br label %216

; <label>:216                                     ; preds = %209, %208
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %88, label %217, label %219, !dx.controlflow.hints !32

; <label>:217                                     ; preds = %216
  %218 = load i32, i32 addrspace(3)* %37, align 4, !tbaa !23
  br label %226

; <label>:219                                     ; preds = %216
  %220 = and i32 %13, -64
  %221 = or i32 %220, 31
  %222 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %221
  %223 = load i32, i32 addrspace(3)* %222, align 4, !tbaa !23
  %224 = load i32, i32 addrspace(3)* %37, align 4, !tbaa !23
  %225 = add i32 %224, %223
  store i32 %225, i32 addrspace(3)* %37, align 4, !tbaa !23
  br label %226

; <label>:226                                     ; preds = %219, %217
  %227 = phi i32 [ %218, %217 ], [ %225, %219 ]
  %228 = sub i32 %227, %173
  %229 = add i32 %228, %177
  %230 = xor i1 %17, true
  %231 = and i1 %172, %230
  br i1 %231, label %232, label %235, !dx.controlflow.hints !35

; <label>:232                                     ; preds = %226
  %233 = mul i32 %229, 20
  %234 = add i32 %233, %168
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %234, i32 undef, i32 %14, i32 %14, i32 %14, i32 %14, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %235

; <label>:235                                     ; preds = %232, %226
  %236 = select i1 %172, i32 %29, i32 0
  %237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %175, i32 undef)  ; BufferLoad(srv,index,wot)
  %238 = extractvalue %dx.types.ResRet.i32 %237, 0
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %236, i32 addrspace(3)* %37, align 4, !tbaa !23
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %39, label %245, label %239, !dx.controlflow.hints !27

; <label>:239                                     ; preds = %235
  %240 = and i32 %13, -2
  %241 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %240
  %242 = load i32, i32 addrspace(3)* %241, align 4, !tbaa !23
  %243 = load i32, i32 addrspace(3)* %37, align 4, !tbaa !23
  %244 = add i32 %243, %242
  store i32 %244, i32 addrspace(3)* %37, align 4, !tbaa !23
  br label %245

; <label>:245                                     ; preds = %239, %235
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %48, label %253, label %246, !dx.controlflow.hints !28

; <label>:246                                     ; preds = %245
  %247 = and i32 %13, -4
  %248 = or i32 %247, 1
  %249 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %248
  %250 = load i32, i32 addrspace(3)* %249, align 4, !tbaa !23
  %251 = load i32, i32 addrspace(3)* %37, align 4, !tbaa !23
  %252 = add i32 %251, %250
  store i32 %252, i32 addrspace(3)* %37, align 4, !tbaa !23
  br label %253

; <label>:253                                     ; preds = %246, %245
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %58, label %261, label %254, !dx.controlflow.hints !29

; <label>:254                                     ; preds = %253
  %255 = and i32 %13, -8
  %256 = or i32 %255, 3
  %257 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %256
  %258 = load i32, i32 addrspace(3)* %257, align 4, !tbaa !23
  %259 = load i32, i32 addrspace(3)* %37, align 4, !tbaa !23
  %260 = add i32 %259, %258
  store i32 %260, i32 addrspace(3)* %37, align 4, !tbaa !23
  br label %261

; <label>:261                                     ; preds = %254, %253
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %68, label %269, label %262, !dx.controlflow.hints !30

; <label>:262                                     ; preds = %261
  %263 = and i32 %13, -16
  %264 = or i32 %263, 7
  %265 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %264
  %266 = load i32, i32 addrspace(3)* %265, align 4, !tbaa !23
  %267 = load i32, i32 addrspace(3)* %37, align 4, !tbaa !23
  %268 = add i32 %267, %266
  store i32 %268, i32 addrspace(3)* %37, align 4, !tbaa !23
  br label %269

; <label>:269                                     ; preds = %262, %261
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %78, label %277, label %270, !dx.controlflow.hints !31

; <label>:270                                     ; preds = %269
  %271 = and i32 %13, -32
  %272 = or i32 %271, 15
  %273 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %272
  %274 = load i32, i32 addrspace(3)* %273, align 4, !tbaa !23
  %275 = load i32, i32 addrspace(3)* %37, align 4, !tbaa !23
  %276 = add i32 %275, %274
  store i32 %276, i32 addrspace(3)* %37, align 4, !tbaa !23
  br label %277

; <label>:277                                     ; preds = %270, %269
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %88, label %278, label %280, !dx.controlflow.hints !32

; <label>:278                                     ; preds = %277
  %279 = load i32, i32 addrspace(3)* %37, align 4, !tbaa !23
  br label %287

; <label>:280                                     ; preds = %277
  %281 = and i32 %13, -64
  %282 = or i32 %281, 31
  %283 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %282
  %284 = load i32, i32 addrspace(3)* %283, align 4, !tbaa !23
  %285 = load i32, i32 addrspace(3)* %37, align 4, !tbaa !23
  %286 = add i32 %285, %284
  store i32 %286, i32 addrspace(3)* %37, align 4, !tbaa !23
  br label %287

; <label>:287                                     ; preds = %280, %278
  %288 = phi i32 [ %279, %278 ], [ %286, %280 ]
  %289 = sub i32 %288, %236
  %290 = add i32 %289, %238
  br i1 %231, label %291, label %294, !dx.controlflow.hints !36

; <label>:291                                     ; preds = %287
  %292 = mul i32 %229, 20
  %293 = add i32 %292, %168
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %293, i32 undef, i32 %290, i32 %290, i32 %290, i32 %290, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %294

; <label>:294                                     ; preds = %291, %287
  %295 = add nuw nsw i32 %168, 1
  %296 = icmp eq i32 %295, %164
  br i1 %296, label %297, label %167

; <label>:297                                     ; preds = %294
  br label %298

; <label>:298                                     ; preds = %297, %159
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
!21 = !{i32 0, i64 272, i32 4, !22}
!22 = !{i32 64, i32 1, i32 1}
!23 = !{!24, !24, i64 0}
!24 = !{!"int", !25, i64 0}
!25 = !{!"omnipotent char", !26, i64 0}
!26 = !{!"Simple C/C++ TBAA"}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}

