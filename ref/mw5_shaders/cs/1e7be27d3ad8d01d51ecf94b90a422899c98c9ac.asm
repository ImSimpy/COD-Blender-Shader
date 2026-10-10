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
; shader hash: f71cd29b0e0b98d692c2182ba42aebcf
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

@"\01?tiledSharedMem@@3PAIA" = external addrspace(3) global [64 x i32], align 4

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
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %30 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %13
  store i32 %24, i32 addrspace(3)* %30, align 4, !tbaa !23
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %31 = and i32 %13, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %39, label %33, !dx.controlflow.hints !27

; <label>:33                                      ; preds = %0
  %34 = and i32 %13, -2
  %35 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %34
  %36 = load i32, i32 addrspace(3)* %35, align 4, !tbaa !23
  %37 = load i32, i32 addrspace(3)* %30, align 4, !tbaa !23
  %38 = add i32 %37, %36
  store i32 %38, i32 addrspace(3)* %30, align 4, !tbaa !23
  br label %39

; <label>:39                                      ; preds = %33, %0
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %40 = and i32 %13, 2
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %49, label %42, !dx.controlflow.hints !28

; <label>:42                                      ; preds = %39
  %43 = and i32 %13, -4
  %44 = or i32 %43, 1
  %45 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %44
  %46 = load i32, i32 addrspace(3)* %45, align 4, !tbaa !23
  %47 = load i32, i32 addrspace(3)* %30, align 4, !tbaa !23
  %48 = add i32 %47, %46
  store i32 %48, i32 addrspace(3)* %30, align 4, !tbaa !23
  br label %49

; <label>:49                                      ; preds = %42, %39
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %50 = and i32 %13, 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %59, label %52, !dx.controlflow.hints !29

; <label>:52                                      ; preds = %49
  %53 = and i32 %13, -8
  %54 = or i32 %53, 3
  %55 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %54
  %56 = load i32, i32 addrspace(3)* %55, align 4, !tbaa !23
  %57 = load i32, i32 addrspace(3)* %30, align 4, !tbaa !23
  %58 = add i32 %57, %56
  store i32 %58, i32 addrspace(3)* %30, align 4, !tbaa !23
  br label %59

; <label>:59                                      ; preds = %52, %49
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %60 = and i32 %13, 8
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %69, label %62, !dx.controlflow.hints !30

; <label>:62                                      ; preds = %59
  %63 = and i32 %13, -16
  %64 = or i32 %63, 7
  %65 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %64
  %66 = load i32, i32 addrspace(3)* %65, align 4, !tbaa !23
  %67 = load i32, i32 addrspace(3)* %30, align 4, !tbaa !23
  %68 = add i32 %67, %66
  store i32 %68, i32 addrspace(3)* %30, align 4, !tbaa !23
  br label %69

; <label>:69                                      ; preds = %62, %59
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %70 = and i32 %13, 16
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %79, label %72, !dx.controlflow.hints !31

; <label>:72                                      ; preds = %69
  %73 = and i32 %13, -32
  %74 = or i32 %73, 15
  %75 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %74
  %76 = load i32, i32 addrspace(3)* %75, align 4, !tbaa !23
  %77 = load i32, i32 addrspace(3)* %30, align 4, !tbaa !23
  %78 = add i32 %77, %76
  store i32 %78, i32 addrspace(3)* %30, align 4, !tbaa !23
  br label %79

; <label>:79                                      ; preds = %72, %69
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %80 = and i32 %13, 32
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %84, !dx.controlflow.hints !32

; <label>:82                                      ; preds = %79
  %83 = load i32, i32 addrspace(3)* %30, align 4, !tbaa !23
  br label %91

; <label>:84                                      ; preds = %79
  %85 = and i32 %13, -64
  %86 = or i32 %85, 31
  %87 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %86
  %88 = load i32, i32 addrspace(3)* %87, align 4, !tbaa !23
  %89 = load i32, i32 addrspace(3)* %30, align 4, !tbaa !23
  %90 = add i32 %89, %88
  store i32 %90, i32 addrspace(3)* %30, align 4, !tbaa !23
  br label %91

; <label>:91                                      ; preds = %84, %82
  %92 = phi i32 [ %83, %82 ], [ %90, %84 ]
  %93 = sub i32 %92, %24
  %94 = add i32 %93, %29
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %6, i32 %14, i32 undef, i32 %94, i32 %94, i32 %94, i32 %94, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %95 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %19, i32 undef)  ; BufferLoad(srv,index,wot)
  %96 = extractvalue %dx.types.ResRet.i32 %95, 0
  %97 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %26, i32 undef)  ; BufferLoad(srv,index,wot)
  %98 = extractvalue %dx.types.ResRet.i32 %97, 0
  %99 = select i1 %25, i32 %98, i32 0
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %96, i32 addrspace(3)* %30, align 4, !tbaa !23
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %32, label %106, label %100, !dx.controlflow.hints !27

; <label>:100                                     ; preds = %91
  %101 = and i32 %13, -2
  %102 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %101
  %103 = load i32, i32 addrspace(3)* %102, align 4, !tbaa !23
  %104 = load i32, i32 addrspace(3)* %30, align 4, !tbaa !23
  %105 = add i32 %104, %103
  store i32 %105, i32 addrspace(3)* %30, align 4, !tbaa !23
  br label %106

; <label>:106                                     ; preds = %100, %91
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %41, label %114, label %107, !dx.controlflow.hints !28

; <label>:107                                     ; preds = %106
  %108 = and i32 %13, -4
  %109 = or i32 %108, 1
  %110 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %109
  %111 = load i32, i32 addrspace(3)* %110, align 4, !tbaa !23
  %112 = load i32, i32 addrspace(3)* %30, align 4, !tbaa !23
  %113 = add i32 %112, %111
  store i32 %113, i32 addrspace(3)* %30, align 4, !tbaa !23
  br label %114

; <label>:114                                     ; preds = %107, %106
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %51, label %122, label %115, !dx.controlflow.hints !29

; <label>:115                                     ; preds = %114
  %116 = and i32 %13, -8
  %117 = or i32 %116, 3
  %118 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %117
  %119 = load i32, i32 addrspace(3)* %118, align 4, !tbaa !23
  %120 = load i32, i32 addrspace(3)* %30, align 4, !tbaa !23
  %121 = add i32 %120, %119
  store i32 %121, i32 addrspace(3)* %30, align 4, !tbaa !23
  br label %122

; <label>:122                                     ; preds = %115, %114
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %61, label %130, label %123, !dx.controlflow.hints !30

; <label>:123                                     ; preds = %122
  %124 = and i32 %13, -16
  %125 = or i32 %124, 7
  %126 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %125
  %127 = load i32, i32 addrspace(3)* %126, align 4, !tbaa !23
  %128 = load i32, i32 addrspace(3)* %30, align 4, !tbaa !23
  %129 = add i32 %128, %127
  store i32 %129, i32 addrspace(3)* %30, align 4, !tbaa !23
  br label %130

; <label>:130                                     ; preds = %123, %122
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %71, label %138, label %131, !dx.controlflow.hints !31

; <label>:131                                     ; preds = %130
  %132 = and i32 %13, -32
  %133 = or i32 %132, 15
  %134 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %133
  %135 = load i32, i32 addrspace(3)* %134, align 4, !tbaa !23
  %136 = load i32, i32 addrspace(3)* %30, align 4, !tbaa !23
  %137 = add i32 %136, %135
  store i32 %137, i32 addrspace(3)* %30, align 4, !tbaa !23
  br label %138

; <label>:138                                     ; preds = %131, %130
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %81, label %139, label %141, !dx.controlflow.hints !32

; <label>:139                                     ; preds = %138
  %140 = load i32, i32 addrspace(3)* %30, align 4, !tbaa !23
  br label %148

; <label>:141                                     ; preds = %138
  %142 = and i32 %13, -64
  %143 = or i32 %142, 31
  %144 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %143
  %145 = load i32, i32 addrspace(3)* %144, align 4, !tbaa !23
  %146 = load i32, i32 addrspace(3)* %30, align 4, !tbaa !23
  %147 = add i32 %146, %145
  store i32 %147, i32 addrspace(3)* %30, align 4, !tbaa !23
  br label %148

; <label>:148                                     ; preds = %141, %139
  %149 = phi i32 [ %140, %139 ], [ %147, %141 ]
  %150 = sub i32 %149, %96
  %151 = add i32 %150, %99
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %5, i32 %14, i32 undef, i32 %151, i32 %151, i32 %151, i32 %151, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %152 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %153 = extractvalue %dx.types.CBufRet.i32 %152, 1
  %154 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %155 = extractvalue %dx.types.CBufRet.i32 %154, 3
  %156 = sub i32 %153, %155
  %157 = icmp sgt i32 %156, 0
  br i1 %157, label %158, label %285

; <label>:158                                     ; preds = %148
  br label %159

; <label>:159                                     ; preds = %276, %158
  %160 = phi i32 [ %282, %276 ], [ 0, %158 ]
  %161 = mul i32 %22, 20
  %162 = add i32 %161, -20
  %163 = add i32 %162, %160
  %164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %163, i32 undef)  ; BufferLoad(srv,index,wot)
  %165 = extractvalue %dx.types.ResRet.i32 %164, 0
  %166 = select i1 %25, i32 %165, i32 0
  %167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %163, i32 undef)  ; BufferLoad(srv,index,wot)
  %168 = extractvalue %dx.types.ResRet.i32 %167, 0
  %169 = select i1 %25, i32 %168, i32 0
  %170 = mul i32 %19, 20
  %171 = add i32 %160, %170
  %172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %171, i32 undef)  ; BufferLoad(srv,index,wot)
  %173 = extractvalue %dx.types.ResRet.i32 %172, 0
  %174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %171, i32 undef)  ; BufferLoad(srv,index,wot)
  %175 = extractvalue %dx.types.ResRet.i32 %174, 0
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %173, i32 addrspace(3)* %30, align 4, !tbaa !23
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %32, label %182, label %176, !dx.controlflow.hints !27

; <label>:176                                     ; preds = %159
  %177 = and i32 %13, -2
  %178 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %177
  %179 = load i32, i32 addrspace(3)* %178, align 4, !tbaa !23
  %180 = load i32, i32 addrspace(3)* %30, align 4, !tbaa !23
  %181 = add i32 %180, %179
  store i32 %181, i32 addrspace(3)* %30, align 4, !tbaa !23
  br label %182

; <label>:182                                     ; preds = %176, %159
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %41, label %190, label %183, !dx.controlflow.hints !28

; <label>:183                                     ; preds = %182
  %184 = and i32 %13, -4
  %185 = or i32 %184, 1
  %186 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %185
  %187 = load i32, i32 addrspace(3)* %186, align 4, !tbaa !23
  %188 = load i32, i32 addrspace(3)* %30, align 4, !tbaa !23
  %189 = add i32 %188, %187
  store i32 %189, i32 addrspace(3)* %30, align 4, !tbaa !23
  br label %190

; <label>:190                                     ; preds = %183, %182
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %51, label %198, label %191, !dx.controlflow.hints !29

; <label>:191                                     ; preds = %190
  %192 = and i32 %13, -8
  %193 = or i32 %192, 3
  %194 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %193
  %195 = load i32, i32 addrspace(3)* %194, align 4, !tbaa !23
  %196 = load i32, i32 addrspace(3)* %30, align 4, !tbaa !23
  %197 = add i32 %196, %195
  store i32 %197, i32 addrspace(3)* %30, align 4, !tbaa !23
  br label %198

; <label>:198                                     ; preds = %191, %190
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %61, label %206, label %199, !dx.controlflow.hints !30

; <label>:199                                     ; preds = %198
  %200 = and i32 %13, -16
  %201 = or i32 %200, 7
  %202 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %201
  %203 = load i32, i32 addrspace(3)* %202, align 4, !tbaa !23
  %204 = load i32, i32 addrspace(3)* %30, align 4, !tbaa !23
  %205 = add i32 %204, %203
  store i32 %205, i32 addrspace(3)* %30, align 4, !tbaa !23
  br label %206

; <label>:206                                     ; preds = %199, %198
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %71, label %214, label %207, !dx.controlflow.hints !31

; <label>:207                                     ; preds = %206
  %208 = and i32 %13, -32
  %209 = or i32 %208, 15
  %210 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %209
  %211 = load i32, i32 addrspace(3)* %210, align 4, !tbaa !23
  %212 = load i32, i32 addrspace(3)* %30, align 4, !tbaa !23
  %213 = add i32 %212, %211
  store i32 %213, i32 addrspace(3)* %30, align 4, !tbaa !23
  br label %214

; <label>:214                                     ; preds = %207, %206
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %81, label %215, label %217, !dx.controlflow.hints !32

; <label>:215                                     ; preds = %214
  %216 = load i32, i32 addrspace(3)* %30, align 4, !tbaa !23
  br label %224

; <label>:217                                     ; preds = %214
  %218 = and i32 %13, -64
  %219 = or i32 %218, 31
  %220 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %219
  %221 = load i32, i32 addrspace(3)* %220, align 4, !tbaa !23
  %222 = load i32, i32 addrspace(3)* %30, align 4, !tbaa !23
  %223 = add i32 %222, %221
  store i32 %223, i32 addrspace(3)* %30, align 4, !tbaa !23
  br label %224

; <label>:224                                     ; preds = %217, %215
  %225 = phi i32 [ %216, %215 ], [ %223, %217 ]
  %226 = sub i32 %225, %173
  %227 = add i32 %226, %166
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %175, i32 addrspace(3)* %30, align 4, !tbaa !23
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %32, label %234, label %228, !dx.controlflow.hints !27

; <label>:228                                     ; preds = %224
  %229 = and i32 %13, -2
  %230 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %229
  %231 = load i32, i32 addrspace(3)* %230, align 4, !tbaa !23
  %232 = load i32, i32 addrspace(3)* %30, align 4, !tbaa !23
  %233 = add i32 %232, %231
  store i32 %233, i32 addrspace(3)* %30, align 4, !tbaa !23
  br label %234

; <label>:234                                     ; preds = %228, %224
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %41, label %242, label %235, !dx.controlflow.hints !28

; <label>:235                                     ; preds = %234
  %236 = and i32 %13, -4
  %237 = or i32 %236, 1
  %238 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %237
  %239 = load i32, i32 addrspace(3)* %238, align 4, !tbaa !23
  %240 = load i32, i32 addrspace(3)* %30, align 4, !tbaa !23
  %241 = add i32 %240, %239
  store i32 %241, i32 addrspace(3)* %30, align 4, !tbaa !23
  br label %242

; <label>:242                                     ; preds = %235, %234
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %51, label %250, label %243, !dx.controlflow.hints !29

; <label>:243                                     ; preds = %242
  %244 = and i32 %13, -8
  %245 = or i32 %244, 3
  %246 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %245
  %247 = load i32, i32 addrspace(3)* %246, align 4, !tbaa !23
  %248 = load i32, i32 addrspace(3)* %30, align 4, !tbaa !23
  %249 = add i32 %248, %247
  store i32 %249, i32 addrspace(3)* %30, align 4, !tbaa !23
  br label %250

; <label>:250                                     ; preds = %243, %242
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %61, label %258, label %251, !dx.controlflow.hints !30

; <label>:251                                     ; preds = %250
  %252 = and i32 %13, -16
  %253 = or i32 %252, 7
  %254 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %253
  %255 = load i32, i32 addrspace(3)* %254, align 4, !tbaa !23
  %256 = load i32, i32 addrspace(3)* %30, align 4, !tbaa !23
  %257 = add i32 %256, %255
  store i32 %257, i32 addrspace(3)* %30, align 4, !tbaa !23
  br label %258

; <label>:258                                     ; preds = %251, %250
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %71, label %266, label %259, !dx.controlflow.hints !31

; <label>:259                                     ; preds = %258
  %260 = and i32 %13, -32
  %261 = or i32 %260, 15
  %262 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %261
  %263 = load i32, i32 addrspace(3)* %262, align 4, !tbaa !23
  %264 = load i32, i32 addrspace(3)* %30, align 4, !tbaa !23
  %265 = add i32 %264, %263
  store i32 %265, i32 addrspace(3)* %30, align 4, !tbaa !23
  br label %266

; <label>:266                                     ; preds = %259, %258
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %81, label %267, label %269, !dx.controlflow.hints !32

; <label>:267                                     ; preds = %266
  %268 = load i32, i32 addrspace(3)* %30, align 4, !tbaa !23
  br label %276

; <label>:269                                     ; preds = %266
  %270 = and i32 %13, -64
  %271 = or i32 %270, 31
  %272 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %271
  %273 = load i32, i32 addrspace(3)* %272, align 4, !tbaa !23
  %274 = load i32, i32 addrspace(3)* %30, align 4, !tbaa !23
  %275 = add i32 %274, %273
  store i32 %275, i32 addrspace(3)* %30, align 4, !tbaa !23
  br label %276

; <label>:276                                     ; preds = %269, %267
  %277 = phi i32 [ %268, %267 ], [ %275, %269 ]
  %278 = sub i32 %277, %175
  %279 = add i32 %278, %169
  %280 = mul i32 %14, 20
  %281 = add i32 %160, %280
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %4, i32 %281, i32 undef, i32 %227, i32 %227, i32 %227, i32 %227, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %281, i32 undef, i32 %279, i32 %279, i32 %279, i32 %279, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %282 = add nuw nsw i32 %160, 1
  %283 = icmp eq i32 %282, %156
  br i1 %283, label %284, label %159

; <label>:284                                     ; preds = %276
  br label %285

; <label>:285                                     ; preds = %284, %148
  %286 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %287 = extractvalue %dx.types.CBufRet.i32 %286, 1
  %288 = icmp uge i32 %15, %287
  br i1 %157, label %289, label %417

; <label>:289                                     ; preds = %285
  br label %290

; <label>:290                                     ; preds = %413, %289
  %291 = phi i32 [ %414, %413 ], [ 0, %289 ]
  %292 = mul i32 %15, 20
  %293 = add i32 %291, %292
  %294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %293, i32 undef)  ; BufferLoad(srv,index,wot)
  %295 = extractvalue %dx.types.ResRet.i32 %294, 0
  %296 = select i1 %288, i32 0, i32 %295
  %297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %293, i32 undef)  ; BufferLoad(srv,index,wot)
  %298 = extractvalue %dx.types.ResRet.i32 %297, 0
  %299 = select i1 %288, i32 0, i32 %298
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %296, i32 addrspace(3)* %30, align 4, !tbaa !23
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %300 = and i32 %13, 63
  %301 = icmp ult i32 %300, 32
  br i1 %301, label %302, label %308, !dx.controlflow.hints !33

; <label>:302                                     ; preds = %290
  %303 = add i32 %13, 32
  %304 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %303
  %305 = load i32, i32 addrspace(3)* %304, align 4, !tbaa !23
  %306 = load i32, i32 addrspace(3)* %30, align 4, !tbaa !23
  %307 = add i32 %306, %305
  store i32 %307, i32 addrspace(3)* %30, align 4, !tbaa !23
  br label %308

; <label>:308                                     ; preds = %302, %290
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %309 = icmp ult i32 %300, 16
  br i1 %309, label %310, label %316, !dx.controlflow.hints !34

; <label>:310                                     ; preds = %308
  %311 = add i32 %13, 16
  %312 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %311
  %313 = load i32, i32 addrspace(3)* %312, align 4, !tbaa !23
  %314 = load i32, i32 addrspace(3)* %30, align 4, !tbaa !23
  %315 = add i32 %314, %313
  store i32 %315, i32 addrspace(3)* %30, align 4, !tbaa !23
  br label %316

; <label>:316                                     ; preds = %310, %308
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %317 = icmp ult i32 %300, 8
  br i1 %317, label %318, label %324, !dx.controlflow.hints !35

; <label>:318                                     ; preds = %316
  %319 = add i32 %13, 8
  %320 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %319
  %321 = load i32, i32 addrspace(3)* %320, align 4, !tbaa !23
  %322 = load i32, i32 addrspace(3)* %30, align 4, !tbaa !23
  %323 = add i32 %322, %321
  store i32 %323, i32 addrspace(3)* %30, align 4, !tbaa !23
  br label %324

; <label>:324                                     ; preds = %318, %316
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %325 = icmp ult i32 %300, 4
  br i1 %325, label %326, label %332, !dx.controlflow.hints !36

; <label>:326                                     ; preds = %324
  %327 = add i32 %13, 4
  %328 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %327
  %329 = load i32, i32 addrspace(3)* %328, align 4, !tbaa !23
  %330 = load i32, i32 addrspace(3)* %30, align 4, !tbaa !23
  %331 = add i32 %330, %329
  store i32 %331, i32 addrspace(3)* %30, align 4, !tbaa !23
  br label %332

; <label>:332                                     ; preds = %326, %324
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %333 = icmp ult i32 %300, 2
  br i1 %333, label %334, label %340, !dx.controlflow.hints !37

; <label>:334                                     ; preds = %332
  %335 = add i32 %13, 2
  %336 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %335
  %337 = load i32, i32 addrspace(3)* %336, align 4, !tbaa !23
  %338 = load i32, i32 addrspace(3)* %30, align 4, !tbaa !23
  %339 = add i32 %338, %337
  store i32 %339, i32 addrspace(3)* %30, align 4, !tbaa !23
  br label %340

; <label>:340                                     ; preds = %334, %332
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %341 = icmp eq i32 %300, 0
  br i1 %341, label %342, label %348, !dx.controlflow.hints !38

; <label>:342                                     ; preds = %340
  %343 = add i32 %13, 1
  %344 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %343
  %345 = load i32, i32 addrspace(3)* %344, align 4, !tbaa !23
  %346 = load i32, i32 addrspace(3)* %30, align 4, !tbaa !23
  %347 = add i32 %346, %345
  store i32 %347, i32 addrspace(3)* %30, align 4, !tbaa !23
  br label %348

; <label>:348                                     ; preds = %342, %340
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %349 = and i32 %13, -64
  %350 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %349
  %351 = load i32, i32 addrspace(3)* %350, align 4, !tbaa !23
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %299, i32 addrspace(3)* %30, align 4, !tbaa !23
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %301, label %352, label %358, !dx.controlflow.hints !33

; <label>:352                                     ; preds = %348
  %353 = add i32 %13, 32
  %354 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %353
  %355 = load i32, i32 addrspace(3)* %354, align 4, !tbaa !23
  %356 = load i32, i32 addrspace(3)* %30, align 4, !tbaa !23
  %357 = add i32 %356, %355
  store i32 %357, i32 addrspace(3)* %30, align 4, !tbaa !23
  br label %358

; <label>:358                                     ; preds = %352, %348
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %309, label %359, label %365, !dx.controlflow.hints !34

; <label>:359                                     ; preds = %358
  %360 = add i32 %13, 16
  %361 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %360
  %362 = load i32, i32 addrspace(3)* %361, align 4, !tbaa !23
  %363 = load i32, i32 addrspace(3)* %30, align 4, !tbaa !23
  %364 = add i32 %363, %362
  store i32 %364, i32 addrspace(3)* %30, align 4, !tbaa !23
  br label %365

; <label>:365                                     ; preds = %359, %358
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %317, label %366, label %372, !dx.controlflow.hints !35

; <label>:366                                     ; preds = %365
  %367 = add i32 %13, 8
  %368 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %367
  %369 = load i32, i32 addrspace(3)* %368, align 4, !tbaa !23
  %370 = load i32, i32 addrspace(3)* %30, align 4, !tbaa !23
  %371 = add i32 %370, %369
  store i32 %371, i32 addrspace(3)* %30, align 4, !tbaa !23
  br label %372

; <label>:372                                     ; preds = %366, %365
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %325, label %373, label %379, !dx.controlflow.hints !36

; <label>:373                                     ; preds = %372
  %374 = add i32 %13, 4
  %375 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %374
  %376 = load i32, i32 addrspace(3)* %375, align 4, !tbaa !23
  %377 = load i32, i32 addrspace(3)* %30, align 4, !tbaa !23
  %378 = add i32 %377, %376
  store i32 %378, i32 addrspace(3)* %30, align 4, !tbaa !23
  br label %379

; <label>:379                                     ; preds = %373, %372
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %333, label %380, label %386, !dx.controlflow.hints !37

; <label>:380                                     ; preds = %379
  %381 = add i32 %13, 2
  %382 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %381
  %383 = load i32, i32 addrspace(3)* %382, align 4, !tbaa !23
  %384 = load i32, i32 addrspace(3)* %30, align 4, !tbaa !23
  %385 = add i32 %384, %383
  store i32 %385, i32 addrspace(3)* %30, align 4, !tbaa !23
  br label %386

; <label>:386                                     ; preds = %380, %379
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %341, label %387, label %393, !dx.controlflow.hints !38

; <label>:387                                     ; preds = %386
  %388 = add i32 %13, 1
  %389 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %388
  %390 = load i32, i32 addrspace(3)* %389, align 4, !tbaa !23
  %391 = load i32, i32 addrspace(3)* %30, align 4, !tbaa !23
  %392 = add i32 %391, %390
  store i32 %392, i32 addrspace(3)* %30, align 4, !tbaa !23
  br label %393

; <label>:393                                     ; preds = %387, %386
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %394 = load i32, i32 addrspace(3)* %350, align 4, !tbaa !23
  %395 = or i32 %15, %13
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %397, label %413, !dx.controlflow.hints !39

; <label>:397                                     ; preds = %393
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %291, i32 undef, i32 %394, i32 %394, i32 %394, i32 %394, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %398 = add i32 %351, 63
  %399 = lshr i32 %398, 6
  %400 = mul i32 %291, 24
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %400, i32 undef, i32 %399, i32 %399, i32 %399, i32 %399, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %401 = or i32 %400, 1
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %401, i32 undef, i32 1, i32 1, i32 1, i32 1, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %402 = or i32 %400, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %402, i32 undef, i32 1, i32 1, i32 1, i32 1, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %403 = add i32 %394, 63
  %404 = lshr i32 %403, 6
  %405 = add i32 %400, 8
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %405, i32 undef, i32 %404, i32 %404, i32 %404, i32 %404, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %406 = add i32 %400, 9
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %406, i32 undef, i32 1, i32 1, i32 1, i32 1, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %407 = add i32 %400, 10
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %407, i32 undef, i32 1, i32 1, i32 1, i32 1, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %408 = add nuw nsw i32 %399, 63
  %409 = lshr i32 %408, 6
  %410 = add i32 %400, 16
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %410, i32 undef, i32 %409, i32 %409, i32 %409, i32 %409, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %411 = add i32 %400, 17
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %411, i32 undef, i32 1, i32 1, i32 1, i32 1, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %412 = add i32 %400, 18
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %412, i32 undef, i32 1, i32 1, i32 1, i32 1, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %413

; <label>:413                                     ; preds = %397, %393
  %414 = add nuw nsw i32 %291, 1
  %415 = icmp eq i32 %414, %156
  br i1 %415, label %416, label %290

; <label>:416                                     ; preds = %413
  br label %417

; <label>:417                                     ; preds = %416, %285
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

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #3

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
!21 = !{i32 0, i64 256, i32 4, !22}
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
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}

