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
; shader hash: 740d41f593d60cb01acdf6955d0fccc0
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
%struct.ByteAddressBuffer = type { i32 }
%"class.RWStructuredBuffer<GfxGPReadBackInfo>" = type { %struct.GfxGPReadBackInfo }
%struct.GfxGPReadBackInfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%GPBatchConsts = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@"\01?tiledSharedMem@@3PAIA" = external addrspace(3) global [64 x i32], align 4

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
  br i1 %37, label %231, label %38, !dx.controlflow.hints !22

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
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %139 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %11
  store i32 %137, i32 addrspace(3)* %139, align 4, !tbaa !31
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %140 = and i32 %11, 63
  %141 = icmp ult i32 %140, 32
  br i1 %141, label %142, label %148, !dx.controlflow.hints !35

; <label>:142                                     ; preds = %136
  %143 = add i32 %11, 32
  %144 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %143
  %145 = load i32, i32 addrspace(3)* %144, align 4, !tbaa !31
  %146 = load i32, i32 addrspace(3)* %139, align 4, !tbaa !31
  %147 = call i32 @dx.op.binary.i32(i32 39, i32 %146, i32 %145)  ; UMax(a,b)
  store i32 %147, i32 addrspace(3)* %139, align 4, !tbaa !31
  br label %148

; <label>:148                                     ; preds = %142, %136
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %149 = icmp ult i32 %140, 16
  br i1 %149, label %150, label %156, !dx.controlflow.hints !36

; <label>:150                                     ; preds = %148
  %151 = add i32 %11, 16
  %152 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %151
  %153 = load i32, i32 addrspace(3)* %152, align 4, !tbaa !31
  %154 = load i32, i32 addrspace(3)* %139, align 4, !tbaa !31
  %155 = call i32 @dx.op.binary.i32(i32 39, i32 %154, i32 %153)  ; UMax(a,b)
  store i32 %155, i32 addrspace(3)* %139, align 4, !tbaa !31
  br label %156

; <label>:156                                     ; preds = %150, %148
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %157 = icmp ult i32 %140, 8
  br i1 %157, label %158, label %164, !dx.controlflow.hints !37

; <label>:158                                     ; preds = %156
  %159 = add i32 %11, 8
  %160 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %159
  %161 = load i32, i32 addrspace(3)* %160, align 4, !tbaa !31
  %162 = load i32, i32 addrspace(3)* %139, align 4, !tbaa !31
  %163 = call i32 @dx.op.binary.i32(i32 39, i32 %162, i32 %161)  ; UMax(a,b)
  store i32 %163, i32 addrspace(3)* %139, align 4, !tbaa !31
  br label %164

; <label>:164                                     ; preds = %158, %156
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %165 = icmp ult i32 %140, 4
  br i1 %165, label %166, label %172, !dx.controlflow.hints !38

; <label>:166                                     ; preds = %164
  %167 = add i32 %11, 4
  %168 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %167
  %169 = load i32, i32 addrspace(3)* %168, align 4, !tbaa !31
  %170 = load i32, i32 addrspace(3)* %139, align 4, !tbaa !31
  %171 = call i32 @dx.op.binary.i32(i32 39, i32 %170, i32 %169)  ; UMax(a,b)
  store i32 %171, i32 addrspace(3)* %139, align 4, !tbaa !31
  br label %172

; <label>:172                                     ; preds = %166, %164
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %173 = icmp ult i32 %140, 2
  br i1 %173, label %174, label %180, !dx.controlflow.hints !39

; <label>:174                                     ; preds = %172
  %175 = add i32 %11, 2
  %176 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %175
  %177 = load i32, i32 addrspace(3)* %176, align 4, !tbaa !31
  %178 = load i32, i32 addrspace(3)* %139, align 4, !tbaa !31
  %179 = call i32 @dx.op.binary.i32(i32 39, i32 %178, i32 %177)  ; UMax(a,b)
  store i32 %179, i32 addrspace(3)* %139, align 4, !tbaa !31
  br label %180

; <label>:180                                     ; preds = %174, %172
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %181 = icmp eq i32 %140, 0
  br i1 %181, label %182, label %188, !dx.controlflow.hints !40

; <label>:182                                     ; preds = %180
  %183 = add i32 %11, 1
  %184 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %183
  %185 = load i32, i32 addrspace(3)* %184, align 4, !tbaa !31
  %186 = load i32, i32 addrspace(3)* %139, align 4, !tbaa !31
  %187 = call i32 @dx.op.binary.i32(i32 39, i32 %186, i32 %185)  ; UMax(a,b)
  store i32 %187, i32 addrspace(3)* %139, align 4, !tbaa !31
  br label %188

; <label>:188                                     ; preds = %182, %180
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %138, i32 addrspace(3)* %139, align 4, !tbaa !31
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %141, label %189, label %195, !dx.controlflow.hints !41

; <label>:189                                     ; preds = %188
  %190 = add i32 %11, 32
  %191 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %190
  %192 = load i32, i32 addrspace(3)* %191, align 4, !tbaa !31
  %193 = load i32, i32 addrspace(3)* %139, align 4, !tbaa !31
  %194 = add i32 %193, %192
  store i32 %194, i32 addrspace(3)* %139, align 4, !tbaa !31
  br label %195

; <label>:195                                     ; preds = %189, %188
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %149, label %196, label %202, !dx.controlflow.hints !42

; <label>:196                                     ; preds = %195
  %197 = add i32 %11, 16
  %198 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %197
  %199 = load i32, i32 addrspace(3)* %198, align 4, !tbaa !31
  %200 = load i32, i32 addrspace(3)* %139, align 4, !tbaa !31
  %201 = add i32 %200, %199
  store i32 %201, i32 addrspace(3)* %139, align 4, !tbaa !31
  br label %202

; <label>:202                                     ; preds = %196, %195
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %157, label %203, label %209, !dx.controlflow.hints !43

; <label>:203                                     ; preds = %202
  %204 = add i32 %11, 8
  %205 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %204
  %206 = load i32, i32 addrspace(3)* %205, align 4, !tbaa !31
  %207 = load i32, i32 addrspace(3)* %139, align 4, !tbaa !31
  %208 = add i32 %207, %206
  store i32 %208, i32 addrspace(3)* %139, align 4, !tbaa !31
  br label %209

; <label>:209                                     ; preds = %203, %202
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %165, label %210, label %216, !dx.controlflow.hints !44

; <label>:210                                     ; preds = %209
  %211 = add i32 %11, 4
  %212 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %211
  %213 = load i32, i32 addrspace(3)* %212, align 4, !tbaa !31
  %214 = load i32, i32 addrspace(3)* %139, align 4, !tbaa !31
  %215 = add i32 %214, %213
  store i32 %215, i32 addrspace(3)* %139, align 4, !tbaa !31
  br label %216

; <label>:216                                     ; preds = %210, %209
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %173, label %217, label %223, !dx.controlflow.hints !45

; <label>:217                                     ; preds = %216
  %218 = add i32 %11, 2
  %219 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %218
  %220 = load i32, i32 addrspace(3)* %219, align 4, !tbaa !31
  %221 = load i32, i32 addrspace(3)* %139, align 4, !tbaa !31
  %222 = add i32 %221, %220
  store i32 %222, i32 addrspace(3)* %139, align 4, !tbaa !31
  br label %223

; <label>:223                                     ; preds = %217, %216
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %181, label %224, label %230, !dx.controlflow.hints !46

; <label>:224                                     ; preds = %223
  %225 = add i32 %11, 1
  %226 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %225
  %227 = load i32, i32 addrspace(3)* %226, align 4, !tbaa !31
  %228 = load i32, i32 addrspace(3)* %139, align 4, !tbaa !31
  %229 = add i32 %228, %227
  store i32 %229, i32 addrspace(3)* %139, align 4, !tbaa !31
  br label %230

; <label>:230                                     ; preds = %224, %223
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br label %512

; <label>:231                                     ; preds = %29
  %232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %233 = extractvalue %dx.types.ResRet.i32 %232, 0
  %234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %235 = extractvalue %dx.types.ResRet.i32 %234, 0
  %236 = extractvalue %dx.types.CBufRet.i32 %35, 1
  %237 = add i32 %236, %235
  %238 = extractvalue %dx.types.CBufRet.i32 %35, 0
  %239 = add i32 %237, %238
  %240 = icmp ult i32 %13, %239
  br i1 %240, label %241, label %259, !dx.controlflow.hints !47

; <label>:241                                     ; preds = %231
  %242 = icmp uge i32 %13, %237
  %243 = select i1 %242, i32 %237, i32 0
  %244 = sub i32 %13, %243
  br i1 %242, label %245, label %250, !dx.controlflow.hints !48

; <label>:245                                     ; preds = %241
  %246 = shl i32 %244, 3
  %247 = add i32 %246, 5242880
  %248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %247, i32 undef)  ; BufferLoad(srv,index,wot)
  %249 = extractvalue %dx.types.ResRet.i32 %248, 0
  br label %255

; <label>:250                                     ; preds = %241
  %251 = mul i32 %244, 12
  %252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %251, i32 undef)  ; BufferLoad(srv,index,wot)
  %253 = extractvalue %dx.types.ResRet.i32 %252, 1
  %254 = lshr i32 %253, 16
  br label %255

; <label>:255                                     ; preds = %250, %245
  %256 = phi i32 [ %249, %245 ], [ %254, %250 ]
  %257 = shl i32 %256, 6
  %258 = and i32 %257, 4194240
  br label %259

; <label>:259                                     ; preds = %255, %231
  %260 = phi i32 [ %258, %255 ], [ 0, %231 ]
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %261 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %11
  store i32 %260, i32 addrspace(3)* %261, align 4, !tbaa !31
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %262 = and i32 %11, 63
  %263 = icmp ult i32 %262, 32
  br i1 %263, label %264, label %270, !dx.controlflow.hints !41

; <label>:264                                     ; preds = %259
  %265 = add i32 %11, 32
  %266 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %265
  %267 = load i32, i32 addrspace(3)* %266, align 4, !tbaa !31
  %268 = load i32, i32 addrspace(3)* %261, align 4, !tbaa !31
  %269 = add i32 %268, %267
  store i32 %269, i32 addrspace(3)* %261, align 4, !tbaa !31
  br label %270

; <label>:270                                     ; preds = %264, %259
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %271 = icmp ult i32 %262, 16
  br i1 %271, label %272, label %278, !dx.controlflow.hints !42

; <label>:272                                     ; preds = %270
  %273 = add i32 %11, 16
  %274 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %273
  %275 = load i32, i32 addrspace(3)* %274, align 4, !tbaa !31
  %276 = load i32, i32 addrspace(3)* %261, align 4, !tbaa !31
  %277 = add i32 %276, %275
  store i32 %277, i32 addrspace(3)* %261, align 4, !tbaa !31
  br label %278

; <label>:278                                     ; preds = %272, %270
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %279 = icmp ult i32 %262, 8
  br i1 %279, label %280, label %286, !dx.controlflow.hints !43

; <label>:280                                     ; preds = %278
  %281 = add i32 %11, 8
  %282 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %281
  %283 = load i32, i32 addrspace(3)* %282, align 4, !tbaa !31
  %284 = load i32, i32 addrspace(3)* %261, align 4, !tbaa !31
  %285 = add i32 %284, %283
  store i32 %285, i32 addrspace(3)* %261, align 4, !tbaa !31
  br label %286

; <label>:286                                     ; preds = %280, %278
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %287 = icmp ult i32 %262, 4
  br i1 %287, label %288, label %294, !dx.controlflow.hints !44

; <label>:288                                     ; preds = %286
  %289 = add i32 %11, 4
  %290 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %289
  %291 = load i32, i32 addrspace(3)* %290, align 4, !tbaa !31
  %292 = load i32, i32 addrspace(3)* %261, align 4, !tbaa !31
  %293 = add i32 %292, %291
  store i32 %293, i32 addrspace(3)* %261, align 4, !tbaa !31
  br label %294

; <label>:294                                     ; preds = %288, %286
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %295 = icmp ult i32 %262, 2
  br i1 %295, label %296, label %302, !dx.controlflow.hints !45

; <label>:296                                     ; preds = %294
  %297 = add i32 %11, 2
  %298 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %297
  %299 = load i32, i32 addrspace(3)* %298, align 4, !tbaa !31
  %300 = load i32, i32 addrspace(3)* %261, align 4, !tbaa !31
  %301 = add i32 %300, %299
  store i32 %301, i32 addrspace(3)* %261, align 4, !tbaa !31
  br label %302

; <label>:302                                     ; preds = %296, %294
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %303 = icmp eq i32 %262, 0
  br i1 %303, label %304, label %310, !dx.controlflow.hints !46

; <label>:304                                     ; preds = %302
  %305 = add i32 %11, 1
  %306 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %305
  %307 = load i32, i32 addrspace(3)* %306, align 4, !tbaa !31
  %308 = load i32, i32 addrspace(3)* %261, align 4, !tbaa !31
  %309 = add i32 %308, %307
  store i32 %309, i32 addrspace(3)* %261, align 4, !tbaa !31
  br label %310

; <label>:310                                     ; preds = %304, %302
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %311 = icmp eq i32 %11, 0
  %312 = and i1 %311, %240
  br i1 %312, label %313, label %316, !dx.controlflow.hints !49

; <label>:313                                     ; preds = %310
  %314 = load i32, i32 addrspace(3)* getelementptr inbounds ([64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 0), align 4, !tbaa !31
  %315 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 0, i32 0, i32 44, i32 undef, i32 %314)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %316

; <label>:316                                     ; preds = %313, %310
  %317 = icmp eq i32 %13, 0
  br i1 %317, label %318, label %319, !dx.controlflow.hints !50

; <label>:318                                     ; preds = %316
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 0, i32 %34, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 4, i32 %30, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 32, i32 %233, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 36, i32 %235, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 40, i32 %31, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %319

; <label>:319                                     ; preds = %318, %316
  %320 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %321 = extractvalue %dx.types.CBufRet.i32 %320, 0
  %322 = icmp ult i32 %13, %321
  br i1 %322, label %323, label %414, !dx.controlflow.hints !24

; <label>:323                                     ; preds = %319
  %324 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %325 = extractvalue %dx.types.CBufRet.i32 %324, 2
  %326 = icmp eq i32 %325, 0
  %327 = extractvalue %dx.types.CBufRet.i32 %320, 1
  %328 = extractvalue %dx.types.CBufRet.i32 %320, 2
  %329 = icmp eq i32 %328, 0
  %330 = shl i32 %13, 2
  br i1 %326, label %364, label %331, !dx.controlflow.hints !25

; <label>:331                                     ; preds = %323
  br i1 %329, label %336, label %332, !dx.controlflow.hints !26

; <label>:332                                     ; preds = %331
  %333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %330, i32 undef)  ; BufferLoad(srv,index,wot)
  %334 = extractvalue %dx.types.ResRet.i32 %333, 0
  %335 = lshr i32 %334, 16
  br label %336

; <label>:336                                     ; preds = %332, %331
  %337 = phi i32 [ %335, %332 ], [ 1, %331 ]
  %338 = add i32 %337, %13
  %339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %330, i32 undef)  ; BufferLoad(srv,index,wot)
  %340 = extractvalue %dx.types.ResRet.i32 %339, 0
  %341 = shl i32 %338, 2
  %342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %341, i32 undef)  ; BufferLoad(srv,index,wot)
  %343 = extractvalue %dx.types.ResRet.i32 %342, 0
  %344 = icmp ult i32 %340, %343
  %345 = icmp ult i32 %343, 262144
  %346 = and i1 %344, %345
  br i1 %346, label %347, label %356, !dx.controlflow.hints !27

; <label>:347                                     ; preds = %336
  %348 = shl i32 %340, 2
  %349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %348, i32 undef)  ; BufferLoad(srv,index,wot)
  %350 = extractvalue %dx.types.ResRet.i32 %349, 0
  %351 = mul i32 %350, 3
  %352 = shl i32 %343, 2
  %353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %352, i32 undef)  ; BufferLoad(srv,index,wot)
  %354 = extractvalue %dx.types.ResRet.i32 %353, 0
  %355 = mul i32 %354, 3
  br label %356

; <label>:356                                     ; preds = %347, %336
  %357 = phi i32 [ %351, %347 ], [ 0, %336 ]
  %358 = phi i32 [ %355, %347 ], [ 0, %336 ]
  %359 = icmp ugt i32 %358, %357
  %360 = icmp ult i32 %358, %327
  %361 = and i1 %359, %360
  %362 = sub i32 %358, %357
  %363 = select i1 %361, i32 %362, i32 0
  br label %410

; <label>:364                                     ; preds = %323
  br i1 %329, label %369, label %365, !dx.controlflow.hints !28

; <label>:365                                     ; preds = %364
  %366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %330, i32 undef)  ; BufferLoad(srv,index,wot)
  %367 = extractvalue %dx.types.ResRet.i32 %366, 0
  %368 = lshr i32 %367, 16
  br label %369

; <label>:369                                     ; preds = %365, %364
  %370 = phi i32 [ %368, %365 ], [ 1, %364 ]
  %371 = add i32 %370, %13
  %372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %330, i32 undef)  ; BufferLoad(srv,index,wot)
  %373 = extractvalue %dx.types.ResRet.i32 %372, 0
  %374 = shl i32 %371, 2
  %375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %374, i32 undef)  ; BufferLoad(srv,index,wot)
  %376 = extractvalue %dx.types.ResRet.i32 %375, 0
  %377 = icmp ult i32 %373, %376
  %378 = icmp ult i32 %376, 65536
  %379 = and i1 %377, %378
  br i1 %379, label %380, label %387, !dx.controlflow.hints !29

; <label>:380                                     ; preds = %369
  %381 = shl i32 %373, 2
  %382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %381, i32 undef)  ; BufferLoad(srv,index,wot)
  %383 = extractvalue %dx.types.ResRet.i32 %382, 0
  %384 = shl i32 %376, 2
  %385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %384, i32 undef)  ; BufferLoad(srv,index,wot)
  %386 = extractvalue %dx.types.ResRet.i32 %385, 0
  br label %387

; <label>:387                                     ; preds = %380, %369
  %388 = phi i32 [ %383, %380 ], [ 0, %369 ]
  %389 = phi i32 [ %386, %380 ], [ 0, %369 ]
  %390 = icmp ult i32 %388, %389
  %391 = icmp ult i32 %389, 262144
  %392 = and i1 %390, %391
  br i1 %392, label %393, label %402, !dx.controlflow.hints !30

; <label>:393                                     ; preds = %387
  %394 = shl i32 %388, 2
  %395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %394, i32 undef)  ; BufferLoad(srv,index,wot)
  %396 = extractvalue %dx.types.ResRet.i32 %395, 0
  %397 = mul i32 %396, 3
  %398 = shl i32 %389, 2
  %399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %398, i32 undef)  ; BufferLoad(srv,index,wot)
  %400 = extractvalue %dx.types.ResRet.i32 %399, 0
  %401 = mul i32 %400, 3
  br label %402

; <label>:402                                     ; preds = %393, %387
  %403 = phi i32 [ %397, %393 ], [ 0, %387 ]
  %404 = phi i32 [ %401, %393 ], [ 0, %387 ]
  %405 = icmp ugt i32 %404, %403
  %406 = icmp ult i32 %404, %327
  %407 = and i1 %405, %406
  %408 = sub i32 %404, %403
  %409 = select i1 %407, i32 %408, i32 0
  br label %410

; <label>:410                                     ; preds = %402, %356
  %411 = phi i32 [ %363, %356 ], [ %409, %402 ]
  %412 = icmp ne i32 %411, 0
  %413 = zext i1 %412 to i32
  br label %414

; <label>:414                                     ; preds = %410, %319
  %415 = phi i32 [ %411, %410 ], [ 0, %319 ]
  %416 = phi i32 [ %413, %410 ], [ 0, %319 ]
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %415, i32 addrspace(3)* %261, align 4, !tbaa !31
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %263, label %417, label %423, !dx.controlflow.hints !35

; <label>:417                                     ; preds = %414
  %418 = add i32 %11, 32
  %419 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %418
  %420 = load i32, i32 addrspace(3)* %419, align 4, !tbaa !31
  %421 = load i32, i32 addrspace(3)* %261, align 4, !tbaa !31
  %422 = call i32 @dx.op.binary.i32(i32 39, i32 %421, i32 %420)  ; UMax(a,b)
  store i32 %422, i32 addrspace(3)* %261, align 4, !tbaa !31
  br label %423

; <label>:423                                     ; preds = %417, %414
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %271, label %424, label %430, !dx.controlflow.hints !36

; <label>:424                                     ; preds = %423
  %425 = add i32 %11, 16
  %426 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %425
  %427 = load i32, i32 addrspace(3)* %426, align 4, !tbaa !31
  %428 = load i32, i32 addrspace(3)* %261, align 4, !tbaa !31
  %429 = call i32 @dx.op.binary.i32(i32 39, i32 %428, i32 %427)  ; UMax(a,b)
  store i32 %429, i32 addrspace(3)* %261, align 4, !tbaa !31
  br label %430

; <label>:430                                     ; preds = %424, %423
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %279, label %431, label %437, !dx.controlflow.hints !37

; <label>:431                                     ; preds = %430
  %432 = add i32 %11, 8
  %433 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %432
  %434 = load i32, i32 addrspace(3)* %433, align 4, !tbaa !31
  %435 = load i32, i32 addrspace(3)* %261, align 4, !tbaa !31
  %436 = call i32 @dx.op.binary.i32(i32 39, i32 %435, i32 %434)  ; UMax(a,b)
  store i32 %436, i32 addrspace(3)* %261, align 4, !tbaa !31
  br label %437

; <label>:437                                     ; preds = %431, %430
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %287, label %438, label %444, !dx.controlflow.hints !38

; <label>:438                                     ; preds = %437
  %439 = add i32 %11, 4
  %440 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %439
  %441 = load i32, i32 addrspace(3)* %440, align 4, !tbaa !31
  %442 = load i32, i32 addrspace(3)* %261, align 4, !tbaa !31
  %443 = call i32 @dx.op.binary.i32(i32 39, i32 %442, i32 %441)  ; UMax(a,b)
  store i32 %443, i32 addrspace(3)* %261, align 4, !tbaa !31
  br label %444

; <label>:444                                     ; preds = %438, %437
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %295, label %445, label %451, !dx.controlflow.hints !39

; <label>:445                                     ; preds = %444
  %446 = add i32 %11, 2
  %447 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %446
  %448 = load i32, i32 addrspace(3)* %447, align 4, !tbaa !31
  %449 = load i32, i32 addrspace(3)* %261, align 4, !tbaa !31
  %450 = call i32 @dx.op.binary.i32(i32 39, i32 %449, i32 %448)  ; UMax(a,b)
  store i32 %450, i32 addrspace(3)* %261, align 4, !tbaa !31
  br label %451

; <label>:451                                     ; preds = %445, %444
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %303, label %452, label %458, !dx.controlflow.hints !40

; <label>:452                                     ; preds = %451
  %453 = add i32 %11, 1
  %454 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %453
  %455 = load i32, i32 addrspace(3)* %454, align 4, !tbaa !31
  %456 = load i32, i32 addrspace(3)* %261, align 4, !tbaa !31
  %457 = call i32 @dx.op.binary.i32(i32 39, i32 %456, i32 %455)  ; UMax(a,b)
  store i32 %457, i32 addrspace(3)* %261, align 4, !tbaa !31
  br label %458

; <label>:458                                     ; preds = %452, %451
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %459 = and i32 %11, -64
  %460 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %459
  %461 = load i32, i32 addrspace(3)* %460, align 4, !tbaa !31
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %416, i32 addrspace(3)* %261, align 4, !tbaa !31
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %263, label %462, label %468, !dx.controlflow.hints !41

; <label>:462                                     ; preds = %458
  %463 = add i32 %11, 32
  %464 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %463
  %465 = load i32, i32 addrspace(3)* %464, align 4, !tbaa !31
  %466 = load i32, i32 addrspace(3)* %261, align 4, !tbaa !31
  %467 = add i32 %466, %465
  store i32 %467, i32 addrspace(3)* %261, align 4, !tbaa !31
  br label %468

; <label>:468                                     ; preds = %462, %458
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %271, label %469, label %475, !dx.controlflow.hints !42

; <label>:469                                     ; preds = %468
  %470 = add i32 %11, 16
  %471 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %470
  %472 = load i32, i32 addrspace(3)* %471, align 4, !tbaa !31
  %473 = load i32, i32 addrspace(3)* %261, align 4, !tbaa !31
  %474 = add i32 %473, %472
  store i32 %474, i32 addrspace(3)* %261, align 4, !tbaa !31
  br label %475

; <label>:475                                     ; preds = %469, %468
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %279, label %476, label %482, !dx.controlflow.hints !43

; <label>:476                                     ; preds = %475
  %477 = add i32 %11, 8
  %478 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %477
  %479 = load i32, i32 addrspace(3)* %478, align 4, !tbaa !31
  %480 = load i32, i32 addrspace(3)* %261, align 4, !tbaa !31
  %481 = add i32 %480, %479
  store i32 %481, i32 addrspace(3)* %261, align 4, !tbaa !31
  br label %482

; <label>:482                                     ; preds = %476, %475
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %287, label %483, label %489, !dx.controlflow.hints !44

; <label>:483                                     ; preds = %482
  %484 = add i32 %11, 4
  %485 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %484
  %486 = load i32, i32 addrspace(3)* %485, align 4, !tbaa !31
  %487 = load i32, i32 addrspace(3)* %261, align 4, !tbaa !31
  %488 = add i32 %487, %486
  store i32 %488, i32 addrspace(3)* %261, align 4, !tbaa !31
  br label %489

; <label>:489                                     ; preds = %483, %482
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %295, label %490, label %496, !dx.controlflow.hints !45

; <label>:490                                     ; preds = %489
  %491 = add i32 %11, 2
  %492 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %491
  %493 = load i32, i32 addrspace(3)* %492, align 4, !tbaa !31
  %494 = load i32, i32 addrspace(3)* %261, align 4, !tbaa !31
  %495 = add i32 %494, %493
  store i32 %495, i32 addrspace(3)* %261, align 4, !tbaa !31
  br label %496

; <label>:496                                     ; preds = %490, %489
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %303, label %497, label %503, !dx.controlflow.hints !46

; <label>:497                                     ; preds = %496
  %498 = add i32 %11, 1
  %499 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %498
  %500 = load i32, i32 addrspace(3)* %499, align 4, !tbaa !31
  %501 = load i32, i32 addrspace(3)* %261, align 4, !tbaa !31
  %502 = add i32 %501, %500
  store i32 %502, i32 addrspace(3)* %261, align 4, !tbaa !31
  br label %503

; <label>:503                                     ; preds = %497, %496
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %504 = load i32, i32 addrspace(3)* %460, align 4, !tbaa !31
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %505 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %506 = extractvalue %dx.types.CBufRet.i32 %505, 0
  %507 = icmp ult i32 %13, %506
  %508 = and i1 %311, %507
  br i1 %508, label %509, label %512, !dx.controlflow.hints !51

; <label>:509                                     ; preds = %503
  %510 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 7, i32 0, i32 8, i32 undef, i32 %461)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %511 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 0, i32 0, i32 12, i32 undef, i32 %504)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %512

; <label>:512                                     ; preds = %509, %503, %230
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
!19 = !{i32 0, i64 272, i32 4, !20}
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
!31 = !{!32, !32, i64 0}
!32 = !{!"int", !33, i64 0}
!33 = !{!"omnipotent char", !34, i64 0}
!34 = !{!"Simple C/C++ TBAA"}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
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

