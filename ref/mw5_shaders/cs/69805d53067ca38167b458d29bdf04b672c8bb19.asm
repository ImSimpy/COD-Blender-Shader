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
; shader hash: f063f1622b0578036ccfaf4ea26bf66c
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
;   [3376 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb5     1
;                                       UAV    byte         r/w      U0             u2     1
;                                       UAV    byte         r/w      U1             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%struct.RWByteAddressBuffer = type { i32 }
%hostlayout.waterConstants = type { %hostlayout.struct.GfxWaterConstants }
%hostlayout.struct.GfxWaterConstants = type { i32, float, float, float, float, float, float, i32, <3 x float>, float, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, float, float, float, float, i32, float, float, float, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, float, float, float, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [16 x <4 x float>], [16 x <4 x float>], <4 x float>, <4 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, [2 x <4 x i32>], [2 x <4 x i32>], [2 x <4 x i32>], [39 x <4 x i32>], [39 x <4 x i32>], [39 x <4 x i32>], <4 x i32>, <4 x float>, <4 x i32>, <4 x i32>, <4 x i32>, float, float, float, float, <3 x float>, i32, <3 x float>, i32, float, i32, i32, i32, float, float, float, float, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, i32, i32, i32, float, i32, i32, float, i32, i32, float, float, i32, float, i32, i32, i32 }

@"\01?tiledSharedMem@@3PAIA" = external addrspace(3) global [64 x i32], align 4

define void @cs_water_occlusion_culling_finalize() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = alloca [4 x i32], align 4
  %5 = alloca [4 x i32], align 4
  %6 = alloca [4 x i32], align 4
  %7 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %8 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %9 = icmp ult i32 %7, 32
  br i1 %9, label %10, label %62, !dx.controlflow.hints !13

; <label>:10                                      ; preds = %0
  br label %11

; <label>:11                                      ; preds = %11, %10
  %12 = phi i32 [ %42, %11 ], [ 0, %10 ]
  %13 = phi i32 [ %54, %11 ], [ 0, %10 ]
  %14 = add i32 %7, 154
  %15 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 %14)  ; CBufferLoadLegacy(handle,regIndex)
  %16 = extractvalue %dx.types.CBufRet.i32 %15, 0
  %17 = extractvalue %dx.types.CBufRet.i32 %15, 1
  %18 = extractvalue %dx.types.CBufRet.i32 %15, 2
  %19 = extractvalue %dx.types.CBufRet.i32 %15, 3
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i32 0, i32 0
  store i32 %16, i32* %20, align 4
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i32 0, i32 1
  store i32 %17, i32* %21, align 4
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i32 0, i32 2
  store i32 %18, i32* %22, align 4
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i32 0, i32 3
  store i32 %19, i32* %23, align 4
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i32 0, i32 %13
  %25 = load i32, i32* %24, align 4, !tbaa !14, !noalias !18
  %26 = add i32 %25, 4
  %27 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %25, i32 undef)  ; BufferLoad(srv,index,wot)
  %28 = extractvalue %dx.types.ResRet.i32 %27, 0
  %29 = add i32 %7, 76
  %30 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 %29)  ; CBufferLoadLegacy(handle,regIndex)
  %31 = extractvalue %dx.types.CBufRet.i32 %30, 0
  %32 = extractvalue %dx.types.CBufRet.i32 %30, 1
  %33 = extractvalue %dx.types.CBufRet.i32 %30, 2
  %34 = extractvalue %dx.types.CBufRet.i32 %30, 3
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i32 0, i32 0
  store i32 %31, i32* %35, align 4
  %36 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i32 0, i32 1
  store i32 %32, i32* %36, align 4
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i32 0, i32 2
  store i32 %33, i32* %37, align 4
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i32 0, i32 3
  store i32 %34, i32* %38, align 4
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i32 0, i32 %13
  %40 = load i32, i32* %39, align 4, !tbaa !14, !noalias !18
  %41 = call i32 @dx.op.binary.i32(i32 40, i32 %28, i32 %40)  ; UMin(a,b)
  %42 = add i32 %41, %12
  %43 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 197)  ; CBufferLoadLegacy(handle,regIndex)
  %44 = extractvalue %dx.types.CBufRet.i32 %43, 0
  %45 = extractvalue %dx.types.CBufRet.i32 %43, 1
  %46 = extractvalue %dx.types.CBufRet.i32 %43, 2
  %47 = extractvalue %dx.types.CBufRet.i32 %43, 3
  %48 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i32 0, i32 0
  store i32 %44, i32* %48, align 4
  %49 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i32 0, i32 1
  store i32 %45, i32* %49, align 4
  %50 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i32 0, i32 2
  store i32 %46, i32* %50, align 4
  %51 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i32 0, i32 3
  store i32 %47, i32* %51, align 4
  %52 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i32 0, i32 %13
  %53 = load i32, i32* %52, align 4, !tbaa !14, !noalias !18
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %26, i32 undef, i32 %53, i32 %41, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %54 = add nuw nsw i32 %13, 1
  %55 = icmp eq i32 %54, 4
  br i1 %55, label %56, label %11

; <label>:56                                      ; preds = %11
  %57 = and i32 %7, -8
  %58 = icmp eq i32 %57, 16
  %59 = icmp ult i32 %7, 16
  %60 = select i1 %58, i32 %42, i32 0
  %61 = select i1 %59, i32 %42, i32 0
  br label %62

; <label>:62                                      ; preds = %56, %0
  %63 = phi i32 [ %60, %56 ], [ 0, %0 ]
  %64 = phi i32 [ %61, %56 ], [ 0, %0 ]
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %65 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %8
  store i32 %63, i32 addrspace(3)* %65, align 4, !tbaa !14
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %66 = and i32 %8, 63
  %67 = icmp ult i32 %66, 32
  br i1 %67, label %68, label %74, !dx.controlflow.hints !21

; <label>:68                                      ; preds = %62
  %69 = add i32 %8, 32
  %70 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %69
  %71 = load i32, i32 addrspace(3)* %70, align 4, !tbaa !14
  %72 = load i32, i32 addrspace(3)* %65, align 4, !tbaa !14
  %73 = add i32 %72, %71
  store i32 %73, i32 addrspace(3)* %65, align 4, !tbaa !14
  br label %74

; <label>:74                                      ; preds = %68, %62
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %75 = icmp ult i32 %66, 16
  br i1 %75, label %76, label %82, !dx.controlflow.hints !22

; <label>:76                                      ; preds = %74
  %77 = add i32 %8, 16
  %78 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %77
  %79 = load i32, i32 addrspace(3)* %78, align 4, !tbaa !14
  %80 = load i32, i32 addrspace(3)* %65, align 4, !tbaa !14
  %81 = add i32 %80, %79
  store i32 %81, i32 addrspace(3)* %65, align 4, !tbaa !14
  br label %82

; <label>:82                                      ; preds = %76, %74
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %83 = icmp ult i32 %66, 8
  br i1 %83, label %84, label %90, !dx.controlflow.hints !23

; <label>:84                                      ; preds = %82
  %85 = add i32 %8, 8
  %86 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %85
  %87 = load i32, i32 addrspace(3)* %86, align 4, !tbaa !14
  %88 = load i32, i32 addrspace(3)* %65, align 4, !tbaa !14
  %89 = add i32 %88, %87
  store i32 %89, i32 addrspace(3)* %65, align 4, !tbaa !14
  br label %90

; <label>:90                                      ; preds = %84, %82
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %91 = icmp ult i32 %66, 4
  br i1 %91, label %92, label %98, !dx.controlflow.hints !24

; <label>:92                                      ; preds = %90
  %93 = add i32 %8, 4
  %94 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %93
  %95 = load i32, i32 addrspace(3)* %94, align 4, !tbaa !14
  %96 = load i32, i32 addrspace(3)* %65, align 4, !tbaa !14
  %97 = add i32 %96, %95
  store i32 %97, i32 addrspace(3)* %65, align 4, !tbaa !14
  br label %98

; <label>:98                                      ; preds = %92, %90
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %99 = icmp ult i32 %66, 2
  br i1 %99, label %100, label %106, !dx.controlflow.hints !25

; <label>:100                                     ; preds = %98
  %101 = add i32 %8, 2
  %102 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %101
  %103 = load i32, i32 addrspace(3)* %102, align 4, !tbaa !14
  %104 = load i32, i32 addrspace(3)* %65, align 4, !tbaa !14
  %105 = add i32 %104, %103
  store i32 %105, i32 addrspace(3)* %65, align 4, !tbaa !14
  br label %106

; <label>:106                                     ; preds = %100, %98
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %107 = icmp eq i32 %66, 0
  br i1 %107, label %108, label %114, !dx.controlflow.hints !26

; <label>:108                                     ; preds = %106
  %109 = add i32 %8, 1
  %110 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %109
  %111 = load i32, i32 addrspace(3)* %110, align 4, !tbaa !14
  %112 = load i32, i32 addrspace(3)* %65, align 4, !tbaa !14
  %113 = add i32 %112, %111
  store i32 %113, i32 addrspace(3)* %65, align 4, !tbaa !14
  br label %114

; <label>:114                                     ; preds = %108, %106
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %115 = and i32 %8, -64
  %116 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %115
  %117 = load i32, i32 addrspace(3)* %116, align 4, !tbaa !14
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %64, i32 addrspace(3)* %65, align 4, !tbaa !14
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %67, label %118, label %124, !dx.controlflow.hints !21

; <label>:118                                     ; preds = %114
  %119 = add i32 %8, 32
  %120 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %119
  %121 = load i32, i32 addrspace(3)* %120, align 4, !tbaa !14
  %122 = load i32, i32 addrspace(3)* %65, align 4, !tbaa !14
  %123 = add i32 %122, %121
  store i32 %123, i32 addrspace(3)* %65, align 4, !tbaa !14
  br label %124

; <label>:124                                     ; preds = %118, %114
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %75, label %125, label %131, !dx.controlflow.hints !22

; <label>:125                                     ; preds = %124
  %126 = add i32 %8, 16
  %127 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %126
  %128 = load i32, i32 addrspace(3)* %127, align 4, !tbaa !14
  %129 = load i32, i32 addrspace(3)* %65, align 4, !tbaa !14
  %130 = add i32 %129, %128
  store i32 %130, i32 addrspace(3)* %65, align 4, !tbaa !14
  br label %131

; <label>:131                                     ; preds = %125, %124
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %83, label %132, label %138, !dx.controlflow.hints !23

; <label>:132                                     ; preds = %131
  %133 = add i32 %8, 8
  %134 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %133
  %135 = load i32, i32 addrspace(3)* %134, align 4, !tbaa !14
  %136 = load i32, i32 addrspace(3)* %65, align 4, !tbaa !14
  %137 = add i32 %136, %135
  store i32 %137, i32 addrspace(3)* %65, align 4, !tbaa !14
  br label %138

; <label>:138                                     ; preds = %132, %131
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %91, label %139, label %145, !dx.controlflow.hints !24

; <label>:139                                     ; preds = %138
  %140 = add i32 %8, 4
  %141 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %140
  %142 = load i32, i32 addrspace(3)* %141, align 4, !tbaa !14
  %143 = load i32, i32 addrspace(3)* %65, align 4, !tbaa !14
  %144 = add i32 %143, %142
  store i32 %144, i32 addrspace(3)* %65, align 4, !tbaa !14
  br label %145

; <label>:145                                     ; preds = %139, %138
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %99, label %146, label %152, !dx.controlflow.hints !25

; <label>:146                                     ; preds = %145
  %147 = add i32 %8, 2
  %148 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %147
  %149 = load i32, i32 addrspace(3)* %148, align 4, !tbaa !14
  %150 = load i32, i32 addrspace(3)* %65, align 4, !tbaa !14
  %151 = add i32 %150, %149
  store i32 %151, i32 addrspace(3)* %65, align 4, !tbaa !14
  br label %152

; <label>:152                                     ; preds = %146, %145
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %107, label %153, label %159, !dx.controlflow.hints !26

; <label>:153                                     ; preds = %152
  %154 = add i32 %8, 1
  %155 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %154
  %156 = load i32, i32 addrspace(3)* %155, align 4, !tbaa !14
  %157 = load i32, i32 addrspace(3)* %65, align 4, !tbaa !14
  %158 = add i32 %157, %156
  store i32 %158, i32 addrspace(3)* %65, align 4, !tbaa !14
  br label %159

; <label>:159                                     ; preds = %153, %152
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %160 = load i32, i32 addrspace(3)* %116, align 4, !tbaa !14
  %161 = icmp eq i32 %7, 0
  br i1 %161, label %162, label %194, !dx.controlflow.hints !27

; <label>:162                                     ; preds = %159
  %163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 112, i32 undef)  ; BufferLoad(srv,index,wot)
  %164 = extractvalue %dx.types.ResRet.i32 %163, 0
  %165 = icmp ne i32 %117, 0
  %166 = icmp ne i32 %160, 0
  %167 = or i32 %160, %117
  %168 = icmp ne i32 %167, 0
  %169 = or i32 %164, %160
  %170 = icmp ne i32 %169, 0
  %171 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %172 = extractvalue %dx.types.CBufRet.i32 %171, 0
  %173 = and i32 %172, 32
  %174 = icmp eq i32 %173, 0
  %175 = or i1 %170, %174
  %176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %177 = extractvalue %dx.types.ResRet.i32 %176, 0
  %178 = select i1 %166, i32 -1, i32 -16385
  %179 = and i32 %177, %178
  %180 = select i1 %175, i32 -1, i32 -98305
  %181 = and i32 %179, %180
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 0, i32 undef, i32 %181, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %182 = sext i1 %165 to i32
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 56, i32 undef, i32 %182, i32 %182, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %183 = sext i1 %166 to i32
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 64, i32 undef, i32 %183, i32 %183, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %184 = sext i1 %168 to i32
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 72, i32 undef, i32 %184, i32 %184, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %185 = or i1 %166, %175
  %186 = sext i1 %185 to i32
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 80, i32 undef, i32 %186, i32 %186, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %187 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %188 = extractvalue %dx.types.CBufRet.i32 %187, 0
  %189 = and i32 %188, 128
  %190 = icmp eq i32 %189, 0
  %191 = or i1 %166, %190
  %192 = sext i1 %191 to i32
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 88, i32 undef, i32 %192, i32 %192, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br i1 %175, label %194, label %193, !dx.controlflow.hints !28

; <label>:193                                     ; preds = %162
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 96, i32 undef, i32 0, i32 0, i32 0, i32 undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %194

; <label>:194                                     ; preds = %193, %162, %159
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #3

attributes #0 = { nounwind readnone }
attributes #1 = { noduplicate nounwind }
attributes #2 = { nounwind readonly }
attributes #3 = { nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!10}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{null, !5, !8, null}
!5 = !{!6, !7}
!6 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!7 = !{i32 1, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!8 = !{!9}
!9 = !{i32 0, %hostlayout.waterConstants* undef, !"", i32 0, i32 5, i32 1, i32 3376, null}
!10 = !{void ()* @cs_water_occlusion_culling_finalize, !"cs_water_occlusion_culling_finalize", null, !4, !11}
!11 = !{i32 0, i64 272, i32 4, !12}
!12 = !{i32 64, i32 1, i32 1}
!13 = distinct !{!13, !"dx.controlflow.hints", i32 2}
!14 = !{!15, !15, i64 0}
!15 = !{!"int", !16, i64 0}
!16 = !{!"omnipotent char", !17, i64 0}
!17 = !{!"Simple C/C++ TBAA"}
!18 = !{!19}
!19 = distinct !{!19, !20, !"\01?Water_WriteBucketIndirectArgs@@YAXI_NAIAI@Z: %outTotalSubTileCount"}
!20 = distinct !{!20, !"\01?Water_WriteBucketIndirectArgs@@YAXI_NAIAI@Z"}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}

