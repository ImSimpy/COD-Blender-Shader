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
; shader hash: 95bafe866c60a1c9ee008f7f6f063bf8
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

@"\01?tiledSharedMem@@3PAIA" = external addrspace(3) global [64 x i32], align 4

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
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %19 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %11
  store i32 %18, i32 addrspace(3)* %19, align 4, !tbaa !21
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %20 = and i32 %11, 63
  %21 = icmp ult i32 %20, 32
  br i1 %21, label %22, label %28, !dx.controlflow.hints !25

; <label>:22                                      ; preds = %0
  %23 = add i32 %11, 32
  %24 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %23
  %25 = load i32, i32 addrspace(3)* %24, align 4, !tbaa !21
  %26 = load i32, i32 addrspace(3)* %19, align 4, !tbaa !21
  %27 = add i32 %26, %25
  store i32 %27, i32 addrspace(3)* %19, align 4, !tbaa !21
  br label %28

; <label>:28                                      ; preds = %22, %0
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %29 = icmp ult i32 %20, 16
  br i1 %29, label %30, label %36, !dx.controlflow.hints !26

; <label>:30                                      ; preds = %28
  %31 = add i32 %11, 16
  %32 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %31
  %33 = load i32, i32 addrspace(3)* %32, align 4, !tbaa !21
  %34 = load i32, i32 addrspace(3)* %19, align 4, !tbaa !21
  %35 = add i32 %34, %33
  store i32 %35, i32 addrspace(3)* %19, align 4, !tbaa !21
  br label %36

; <label>:36                                      ; preds = %30, %28
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %37 = icmp ult i32 %20, 8
  br i1 %37, label %38, label %44, !dx.controlflow.hints !27

; <label>:38                                      ; preds = %36
  %39 = add i32 %11, 8
  %40 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %39
  %41 = load i32, i32 addrspace(3)* %40, align 4, !tbaa !21
  %42 = load i32, i32 addrspace(3)* %19, align 4, !tbaa !21
  %43 = add i32 %42, %41
  store i32 %43, i32 addrspace(3)* %19, align 4, !tbaa !21
  br label %44

; <label>:44                                      ; preds = %38, %36
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %45 = icmp ult i32 %20, 4
  br i1 %45, label %46, label %52, !dx.controlflow.hints !28

; <label>:46                                      ; preds = %44
  %47 = add i32 %11, 4
  %48 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %47
  %49 = load i32, i32 addrspace(3)* %48, align 4, !tbaa !21
  %50 = load i32, i32 addrspace(3)* %19, align 4, !tbaa !21
  %51 = add i32 %50, %49
  store i32 %51, i32 addrspace(3)* %19, align 4, !tbaa !21
  br label %52

; <label>:52                                      ; preds = %46, %44
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %53 = icmp ult i32 %20, 2
  br i1 %53, label %54, label %60, !dx.controlflow.hints !29

; <label>:54                                      ; preds = %52
  %55 = add i32 %11, 2
  %56 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %55
  %57 = load i32, i32 addrspace(3)* %56, align 4, !tbaa !21
  %58 = load i32, i32 addrspace(3)* %19, align 4, !tbaa !21
  %59 = add i32 %58, %57
  store i32 %59, i32 addrspace(3)* %19, align 4, !tbaa !21
  br label %60

; <label>:60                                      ; preds = %54, %52
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %61 = icmp eq i32 %20, 0
  br i1 %61, label %62, label %68, !dx.controlflow.hints !30

; <label>:62                                      ; preds = %60
  %63 = add i32 %11, 1
  %64 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %63
  %65 = load i32, i32 addrspace(3)* %64, align 4, !tbaa !21
  %66 = load i32, i32 addrspace(3)* %19, align 4, !tbaa !21
  %67 = add i32 %66, %65
  store i32 %67, i32 addrspace(3)* %19, align 4, !tbaa !21
  br label %68

; <label>:68                                      ; preds = %62, %60
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %69 = and i32 %11, -64
  %70 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %69
  %71 = load i32, i32 addrspace(3)* %70, align 4, !tbaa !21
  %72 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %12, i32 undef)  ; BufferLoad(srv,index,wot)
  %73 = extractvalue %dx.types.ResRet.i32 %72, 0
  %74 = select i1 %15, i32 0, i32 %73
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %74, i32 addrspace(3)* %19, align 4, !tbaa !21
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %21, label %75, label %81, !dx.controlflow.hints !25

; <label>:75                                      ; preds = %68
  %76 = add i32 %11, 32
  %77 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %76
  %78 = load i32, i32 addrspace(3)* %77, align 4, !tbaa !21
  %79 = load i32, i32 addrspace(3)* %19, align 4, !tbaa !21
  %80 = add i32 %79, %78
  store i32 %80, i32 addrspace(3)* %19, align 4, !tbaa !21
  br label %81

; <label>:81                                      ; preds = %75, %68
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %29, label %82, label %88, !dx.controlflow.hints !26

; <label>:82                                      ; preds = %81
  %83 = add i32 %11, 16
  %84 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %83
  %85 = load i32, i32 addrspace(3)* %84, align 4, !tbaa !21
  %86 = load i32, i32 addrspace(3)* %19, align 4, !tbaa !21
  %87 = add i32 %86, %85
  store i32 %87, i32 addrspace(3)* %19, align 4, !tbaa !21
  br label %88

; <label>:88                                      ; preds = %82, %81
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %37, label %89, label %95, !dx.controlflow.hints !27

; <label>:89                                      ; preds = %88
  %90 = add i32 %11, 8
  %91 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %90
  %92 = load i32, i32 addrspace(3)* %91, align 4, !tbaa !21
  %93 = load i32, i32 addrspace(3)* %19, align 4, !tbaa !21
  %94 = add i32 %93, %92
  store i32 %94, i32 addrspace(3)* %19, align 4, !tbaa !21
  br label %95

; <label>:95                                      ; preds = %89, %88
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %45, label %96, label %102, !dx.controlflow.hints !28

; <label>:96                                      ; preds = %95
  %97 = add i32 %11, 4
  %98 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %97
  %99 = load i32, i32 addrspace(3)* %98, align 4, !tbaa !21
  %100 = load i32, i32 addrspace(3)* %19, align 4, !tbaa !21
  %101 = add i32 %100, %99
  store i32 %101, i32 addrspace(3)* %19, align 4, !tbaa !21
  br label %102

; <label>:102                                     ; preds = %96, %95
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %53, label %103, label %109, !dx.controlflow.hints !29

; <label>:103                                     ; preds = %102
  %104 = add i32 %11, 2
  %105 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %104
  %106 = load i32, i32 addrspace(3)* %105, align 4, !tbaa !21
  %107 = load i32, i32 addrspace(3)* %19, align 4, !tbaa !21
  %108 = add i32 %107, %106
  store i32 %108, i32 addrspace(3)* %19, align 4, !tbaa !21
  br label %109

; <label>:109                                     ; preds = %103, %102
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %61, label %110, label %116, !dx.controlflow.hints !30

; <label>:110                                     ; preds = %109
  %111 = add i32 %11, 1
  %112 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %111
  %113 = load i32, i32 addrspace(3)* %112, align 4, !tbaa !21
  %114 = load i32, i32 addrspace(3)* %19, align 4, !tbaa !21
  %115 = add i32 %114, %113
  store i32 %115, i32 addrspace(3)* %19, align 4, !tbaa !21
  br label %116

; <label>:116                                     ; preds = %110, %109
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %117 = load i32, i32 addrspace(3)* %70, align 4, !tbaa !21
  %118 = icmp eq i32 %11, 0
  br i1 %118, label %119, label %120, !dx.controlflow.hints !31

; <label>:119                                     ; preds = %116
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %4, i32 %10, i32 undef, i32 %71, i32 %71, i32 %71, i32 %71, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %10, i32 undef, i32 %117, i32 %117, i32 %117, i32 %117, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %120

; <label>:120                                     ; preds = %119, %116
  %121 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %122 = extractvalue %dx.types.CBufRet.i32 %121, 1
  %123 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %124 = extractvalue %dx.types.CBufRet.i32 %123, 3
  %125 = sub i32 %122, %124
  %126 = icmp sgt i32 %125, 0
  br i1 %126, label %127, label %231

; <label>:127                                     ; preds = %120
  br label %128

; <label>:128                                     ; preds = %227, %127
  %129 = phi i32 [ %228, %227 ], [ 0, %127 ]
  %130 = mul i32 %12, 20
  %131 = add i32 %129, %130
  %132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %131, i32 undef)  ; BufferLoad(srv,index,wot)
  %133 = extractvalue %dx.types.ResRet.i32 %132, 0
  %134 = select i1 %15, i32 0, i32 %133
  %135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %131, i32 undef)  ; BufferLoad(srv,index,wot)
  %136 = extractvalue %dx.types.ResRet.i32 %135, 0
  %137 = select i1 %15, i32 0, i32 %136
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %134, i32 addrspace(3)* %19, align 4, !tbaa !21
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %21, label %138, label %144, !dx.controlflow.hints !25

; <label>:138                                     ; preds = %128
  %139 = add i32 %11, 32
  %140 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %139
  %141 = load i32, i32 addrspace(3)* %140, align 4, !tbaa !21
  %142 = load i32, i32 addrspace(3)* %19, align 4, !tbaa !21
  %143 = add i32 %142, %141
  store i32 %143, i32 addrspace(3)* %19, align 4, !tbaa !21
  br label %144

; <label>:144                                     ; preds = %138, %128
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %29, label %145, label %151, !dx.controlflow.hints !26

; <label>:145                                     ; preds = %144
  %146 = add i32 %11, 16
  %147 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %146
  %148 = load i32, i32 addrspace(3)* %147, align 4, !tbaa !21
  %149 = load i32, i32 addrspace(3)* %19, align 4, !tbaa !21
  %150 = add i32 %149, %148
  store i32 %150, i32 addrspace(3)* %19, align 4, !tbaa !21
  br label %151

; <label>:151                                     ; preds = %145, %144
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %37, label %152, label %158, !dx.controlflow.hints !27

; <label>:152                                     ; preds = %151
  %153 = add i32 %11, 8
  %154 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %153
  %155 = load i32, i32 addrspace(3)* %154, align 4, !tbaa !21
  %156 = load i32, i32 addrspace(3)* %19, align 4, !tbaa !21
  %157 = add i32 %156, %155
  store i32 %157, i32 addrspace(3)* %19, align 4, !tbaa !21
  br label %158

; <label>:158                                     ; preds = %152, %151
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %45, label %159, label %165, !dx.controlflow.hints !28

; <label>:159                                     ; preds = %158
  %160 = add i32 %11, 4
  %161 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %160
  %162 = load i32, i32 addrspace(3)* %161, align 4, !tbaa !21
  %163 = load i32, i32 addrspace(3)* %19, align 4, !tbaa !21
  %164 = add i32 %163, %162
  store i32 %164, i32 addrspace(3)* %19, align 4, !tbaa !21
  br label %165

; <label>:165                                     ; preds = %159, %158
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %53, label %166, label %172, !dx.controlflow.hints !29

; <label>:166                                     ; preds = %165
  %167 = add i32 %11, 2
  %168 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %167
  %169 = load i32, i32 addrspace(3)* %168, align 4, !tbaa !21
  %170 = load i32, i32 addrspace(3)* %19, align 4, !tbaa !21
  %171 = add i32 %170, %169
  store i32 %171, i32 addrspace(3)* %19, align 4, !tbaa !21
  br label %172

; <label>:172                                     ; preds = %166, %165
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %61, label %173, label %179, !dx.controlflow.hints !30

; <label>:173                                     ; preds = %172
  %174 = add i32 %11, 1
  %175 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %174
  %176 = load i32, i32 addrspace(3)* %175, align 4, !tbaa !21
  %177 = load i32, i32 addrspace(3)* %19, align 4, !tbaa !21
  %178 = add i32 %177, %176
  store i32 %178, i32 addrspace(3)* %19, align 4, !tbaa !21
  br label %179

; <label>:179                                     ; preds = %173, %172
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %180 = load i32, i32 addrspace(3)* %70, align 4, !tbaa !21
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %137, i32 addrspace(3)* %19, align 4, !tbaa !21
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %21, label %181, label %187, !dx.controlflow.hints !25

; <label>:181                                     ; preds = %179
  %182 = add i32 %11, 32
  %183 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %182
  %184 = load i32, i32 addrspace(3)* %183, align 4, !tbaa !21
  %185 = load i32, i32 addrspace(3)* %19, align 4, !tbaa !21
  %186 = add i32 %185, %184
  store i32 %186, i32 addrspace(3)* %19, align 4, !tbaa !21
  br label %187

; <label>:187                                     ; preds = %181, %179
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %29, label %188, label %194, !dx.controlflow.hints !26

; <label>:188                                     ; preds = %187
  %189 = add i32 %11, 16
  %190 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %189
  %191 = load i32, i32 addrspace(3)* %190, align 4, !tbaa !21
  %192 = load i32, i32 addrspace(3)* %19, align 4, !tbaa !21
  %193 = add i32 %192, %191
  store i32 %193, i32 addrspace(3)* %19, align 4, !tbaa !21
  br label %194

; <label>:194                                     ; preds = %188, %187
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %37, label %195, label %201, !dx.controlflow.hints !27

; <label>:195                                     ; preds = %194
  %196 = add i32 %11, 8
  %197 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %196
  %198 = load i32, i32 addrspace(3)* %197, align 4, !tbaa !21
  %199 = load i32, i32 addrspace(3)* %19, align 4, !tbaa !21
  %200 = add i32 %199, %198
  store i32 %200, i32 addrspace(3)* %19, align 4, !tbaa !21
  br label %201

; <label>:201                                     ; preds = %195, %194
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %45, label %202, label %208, !dx.controlflow.hints !28

; <label>:202                                     ; preds = %201
  %203 = add i32 %11, 4
  %204 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %203
  %205 = load i32, i32 addrspace(3)* %204, align 4, !tbaa !21
  %206 = load i32, i32 addrspace(3)* %19, align 4, !tbaa !21
  %207 = add i32 %206, %205
  store i32 %207, i32 addrspace(3)* %19, align 4, !tbaa !21
  br label %208

; <label>:208                                     ; preds = %202, %201
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %53, label %209, label %215, !dx.controlflow.hints !29

; <label>:209                                     ; preds = %208
  %210 = add i32 %11, 2
  %211 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %210
  %212 = load i32, i32 addrspace(3)* %211, align 4, !tbaa !21
  %213 = load i32, i32 addrspace(3)* %19, align 4, !tbaa !21
  %214 = add i32 %213, %212
  store i32 %214, i32 addrspace(3)* %19, align 4, !tbaa !21
  br label %215

; <label>:215                                     ; preds = %209, %208
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %61, label %216, label %222, !dx.controlflow.hints !30

; <label>:216                                     ; preds = %215
  %217 = add i32 %11, 1
  %218 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %217
  %219 = load i32, i32 addrspace(3)* %218, align 4, !tbaa !21
  %220 = load i32, i32 addrspace(3)* %19, align 4, !tbaa !21
  %221 = add i32 %220, %219
  store i32 %221, i32 addrspace(3)* %19, align 4, !tbaa !21
  br label %222

; <label>:222                                     ; preds = %216, %215
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %223 = load i32, i32 addrspace(3)* %70, align 4, !tbaa !21
  br i1 %118, label %224, label %227, !dx.controlflow.hints !32

; <label>:224                                     ; preds = %222
  %225 = mul i32 %10, 20
  %226 = add i32 %129, %225
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %226, i32 undef, i32 %180, i32 %180, i32 %180, i32 %180, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %226, i32 undef, i32 %223, i32 %223, i32 %223, i32 %223, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %227

; <label>:227                                     ; preds = %224, %222
  %228 = add nuw nsw i32 %129, 1
  %229 = icmp eq i32 %228, %125
  br i1 %229, label %230, label %128

; <label>:230                                     ; preds = %227
  br label %231

; <label>:231                                     ; preds = %230, %120
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
!19 = !{i32 0, i64 256, i32 4, !20}
!20 = !{i32 64, i32 1, i32 1}
!21 = !{!22, !22, i64 0}
!22 = !{!"int", !23, i64 0}
!23 = !{!"omnipotent char", !24, i64 0}
!24 = !{!"Simple C/C++ TBAA"}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}

