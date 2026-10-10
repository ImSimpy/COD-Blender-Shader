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
; shader hash: e1517a070e9144958a53d12b3cc8310a
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

define void @cs_compute_lightgrid_sampling_offsets_base() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %9 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %10 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %11 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %12 = extractvalue %dx.types.CBufRet.i32 %11, 0
  %13 = icmp uge i32 %10, %12
  %14 = shl i32 %10, 5
  %15 = or i32 %14, 12
  %16 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %15, i32 undef)  ; BufferLoad(srv,index,wot)
  %17 = extractvalue %dx.types.ResRet.i32 %16, 0
  %18 = and i32 %17, 255
  %19 = lshr i32 %17, 8
  %20 = and i32 %19, 255
  %21 = lshr i32 %17, 16
  %22 = and i32 %21, 255
  %23 = mul nuw nsw i32 %20, %18
  %24 = mul nuw nsw i32 %23, %22
  %25 = select i1 %13, i32 0, i32 %24
  %26 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %10, i32 undef)  ; BufferLoad(srv,index,wot)
  %27 = extractvalue %dx.types.ResRet.i32 %26, 0
  %28 = select i1 %13, i32 0, i32 %27
  %29 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %28)  ; Countbits(value)
  %30 = mul i32 %25, %29
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %31 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %9
  store i32 %30, i32 addrspace(3)* %31, align 4, !tbaa !19
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %32 = and i32 %9, 63
  %33 = icmp ult i32 %32, 32
  br i1 %33, label %34, label %40, !dx.controlflow.hints !23

; <label>:34                                      ; preds = %0
  %35 = add i32 %9, 32
  %36 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %35
  %37 = load i32, i32 addrspace(3)* %36, align 4, !tbaa !19
  %38 = load i32, i32 addrspace(3)* %31, align 4, !tbaa !19
  %39 = add i32 %38, %37
  store i32 %39, i32 addrspace(3)* %31, align 4, !tbaa !19
  br label %40

; <label>:40                                      ; preds = %34, %0
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %41 = icmp ult i32 %32, 16
  br i1 %41, label %42, label %48, !dx.controlflow.hints !24

; <label>:42                                      ; preds = %40
  %43 = add i32 %9, 16
  %44 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %43
  %45 = load i32, i32 addrspace(3)* %44, align 4, !tbaa !19
  %46 = load i32, i32 addrspace(3)* %31, align 4, !tbaa !19
  %47 = add i32 %46, %45
  store i32 %47, i32 addrspace(3)* %31, align 4, !tbaa !19
  br label %48

; <label>:48                                      ; preds = %42, %40
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %49 = icmp ult i32 %32, 8
  br i1 %49, label %50, label %56, !dx.controlflow.hints !25

; <label>:50                                      ; preds = %48
  %51 = add i32 %9, 8
  %52 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %51
  %53 = load i32, i32 addrspace(3)* %52, align 4, !tbaa !19
  %54 = load i32, i32 addrspace(3)* %31, align 4, !tbaa !19
  %55 = add i32 %54, %53
  store i32 %55, i32 addrspace(3)* %31, align 4, !tbaa !19
  br label %56

; <label>:56                                      ; preds = %50, %48
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %57 = icmp ult i32 %32, 4
  br i1 %57, label %58, label %64, !dx.controlflow.hints !26

; <label>:58                                      ; preds = %56
  %59 = add i32 %9, 4
  %60 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %59
  %61 = load i32, i32 addrspace(3)* %60, align 4, !tbaa !19
  %62 = load i32, i32 addrspace(3)* %31, align 4, !tbaa !19
  %63 = add i32 %62, %61
  store i32 %63, i32 addrspace(3)* %31, align 4, !tbaa !19
  br label %64

; <label>:64                                      ; preds = %58, %56
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %65 = icmp ult i32 %32, 2
  br i1 %65, label %66, label %72, !dx.controlflow.hints !27

; <label>:66                                      ; preds = %64
  %67 = add i32 %9, 2
  %68 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %67
  %69 = load i32, i32 addrspace(3)* %68, align 4, !tbaa !19
  %70 = load i32, i32 addrspace(3)* %31, align 4, !tbaa !19
  %71 = add i32 %70, %69
  store i32 %71, i32 addrspace(3)* %31, align 4, !tbaa !19
  br label %72

; <label>:72                                      ; preds = %66, %64
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %73 = icmp eq i32 %32, 0
  br i1 %73, label %74, label %80, !dx.controlflow.hints !28

; <label>:74                                      ; preds = %72
  %75 = add i32 %9, 1
  %76 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %75
  %77 = load i32, i32 addrspace(3)* %76, align 4, !tbaa !19
  %78 = load i32, i32 addrspace(3)* %31, align 4, !tbaa !19
  %79 = add i32 %78, %77
  store i32 %79, i32 addrspace(3)* %31, align 4, !tbaa !19
  br label %80

; <label>:80                                      ; preds = %74, %72
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %81 = and i32 %9, -64
  %82 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %81
  %83 = load i32, i32 addrspace(3)* %82, align 4, !tbaa !19
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %25, i32 addrspace(3)* %31, align 4, !tbaa !19
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %33, label %84, label %90, !dx.controlflow.hints !23

; <label>:84                                      ; preds = %80
  %85 = add i32 %9, 32
  %86 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %85
  %87 = load i32, i32 addrspace(3)* %86, align 4, !tbaa !19
  %88 = load i32, i32 addrspace(3)* %31, align 4, !tbaa !19
  %89 = add i32 %88, %87
  store i32 %89, i32 addrspace(3)* %31, align 4, !tbaa !19
  br label %90

; <label>:90                                      ; preds = %84, %80
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %41, label %91, label %97, !dx.controlflow.hints !24

; <label>:91                                      ; preds = %90
  %92 = add i32 %9, 16
  %93 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %92
  %94 = load i32, i32 addrspace(3)* %93, align 4, !tbaa !19
  %95 = load i32, i32 addrspace(3)* %31, align 4, !tbaa !19
  %96 = add i32 %95, %94
  store i32 %96, i32 addrspace(3)* %31, align 4, !tbaa !19
  br label %97

; <label>:97                                      ; preds = %91, %90
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %49, label %98, label %104, !dx.controlflow.hints !25

; <label>:98                                      ; preds = %97
  %99 = add i32 %9, 8
  %100 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %99
  %101 = load i32, i32 addrspace(3)* %100, align 4, !tbaa !19
  %102 = load i32, i32 addrspace(3)* %31, align 4, !tbaa !19
  %103 = add i32 %102, %101
  store i32 %103, i32 addrspace(3)* %31, align 4, !tbaa !19
  br label %104

; <label>:104                                     ; preds = %98, %97
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %57, label %105, label %111, !dx.controlflow.hints !26

; <label>:105                                     ; preds = %104
  %106 = add i32 %9, 4
  %107 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %106
  %108 = load i32, i32 addrspace(3)* %107, align 4, !tbaa !19
  %109 = load i32, i32 addrspace(3)* %31, align 4, !tbaa !19
  %110 = add i32 %109, %108
  store i32 %110, i32 addrspace(3)* %31, align 4, !tbaa !19
  br label %111

; <label>:111                                     ; preds = %105, %104
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %65, label %112, label %118, !dx.controlflow.hints !27

; <label>:112                                     ; preds = %111
  %113 = add i32 %9, 2
  %114 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %113
  %115 = load i32, i32 addrspace(3)* %114, align 4, !tbaa !19
  %116 = load i32, i32 addrspace(3)* %31, align 4, !tbaa !19
  %117 = add i32 %116, %115
  store i32 %117, i32 addrspace(3)* %31, align 4, !tbaa !19
  br label %118

; <label>:118                                     ; preds = %112, %111
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %73, label %119, label %125, !dx.controlflow.hints !28

; <label>:119                                     ; preds = %118
  %120 = add i32 %9, 1
  %121 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %120
  %122 = load i32, i32 addrspace(3)* %121, align 4, !tbaa !19
  %123 = load i32, i32 addrspace(3)* %31, align 4, !tbaa !19
  %124 = add i32 %123, %122
  store i32 %124, i32 addrspace(3)* %31, align 4, !tbaa !19
  br label %125

; <label>:125                                     ; preds = %119, %118
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %126 = load i32, i32 addrspace(3)* %82, align 4, !tbaa !19
  %127 = icmp eq i32 %9, 0
  br i1 %127, label %128, label %129, !dx.controlflow.hints !29

; <label>:128                                     ; preds = %125
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %4, i32 %8, i32 undef, i32 %83, i32 %83, i32 %83, i32 %83, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %8, i32 undef, i32 %126, i32 %126, i32 %126, i32 %126, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %129

; <label>:129                                     ; preds = %128, %125
  %130 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %131 = extractvalue %dx.types.CBufRet.i32 %130, 1
  %132 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %133 = extractvalue %dx.types.CBufRet.i32 %132, 3
  %134 = sub i32 %131, %133
  %135 = icmp sgt i32 %134, 0
  br i1 %135, label %136, label %238

; <label>:136                                     ; preds = %129
  br label %137

; <label>:137                                     ; preds = %234, %136
  %138 = phi i32 [ %235, %234 ], [ 0, %136 ]
  %139 = and i32 %138, 31
  %140 = shl i32 1, %139
  %141 = and i32 %140, %28
  %142 = icmp ne i32 %141, 0
  %143 = select i1 %142, i32 %25, i32 0
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %143, i32 addrspace(3)* %31, align 4, !tbaa !19
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %33, label %144, label %150, !dx.controlflow.hints !23

; <label>:144                                     ; preds = %137
  %145 = add i32 %9, 32
  %146 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %145
  %147 = load i32, i32 addrspace(3)* %146, align 4, !tbaa !19
  %148 = load i32, i32 addrspace(3)* %31, align 4, !tbaa !19
  %149 = add i32 %148, %147
  store i32 %149, i32 addrspace(3)* %31, align 4, !tbaa !19
  br label %150

; <label>:150                                     ; preds = %144, %137
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %41, label %151, label %157, !dx.controlflow.hints !24

; <label>:151                                     ; preds = %150
  %152 = add i32 %9, 16
  %153 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %152
  %154 = load i32, i32 addrspace(3)* %153, align 4, !tbaa !19
  %155 = load i32, i32 addrspace(3)* %31, align 4, !tbaa !19
  %156 = add i32 %155, %154
  store i32 %156, i32 addrspace(3)* %31, align 4, !tbaa !19
  br label %157

; <label>:157                                     ; preds = %151, %150
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %49, label %158, label %164, !dx.controlflow.hints !25

; <label>:158                                     ; preds = %157
  %159 = add i32 %9, 8
  %160 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %159
  %161 = load i32, i32 addrspace(3)* %160, align 4, !tbaa !19
  %162 = load i32, i32 addrspace(3)* %31, align 4, !tbaa !19
  %163 = add i32 %162, %161
  store i32 %163, i32 addrspace(3)* %31, align 4, !tbaa !19
  br label %164

; <label>:164                                     ; preds = %158, %157
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %57, label %165, label %171, !dx.controlflow.hints !26

; <label>:165                                     ; preds = %164
  %166 = add i32 %9, 4
  %167 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %166
  %168 = load i32, i32 addrspace(3)* %167, align 4, !tbaa !19
  %169 = load i32, i32 addrspace(3)* %31, align 4, !tbaa !19
  %170 = add i32 %169, %168
  store i32 %170, i32 addrspace(3)* %31, align 4, !tbaa !19
  br label %171

; <label>:171                                     ; preds = %165, %164
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %65, label %172, label %178, !dx.controlflow.hints !27

; <label>:172                                     ; preds = %171
  %173 = add i32 %9, 2
  %174 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %173
  %175 = load i32, i32 addrspace(3)* %174, align 4, !tbaa !19
  %176 = load i32, i32 addrspace(3)* %31, align 4, !tbaa !19
  %177 = add i32 %176, %175
  store i32 %177, i32 addrspace(3)* %31, align 4, !tbaa !19
  br label %178

; <label>:178                                     ; preds = %172, %171
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %73, label %179, label %185, !dx.controlflow.hints !28

; <label>:179                                     ; preds = %178
  %180 = add i32 %9, 1
  %181 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %180
  %182 = load i32, i32 addrspace(3)* %181, align 4, !tbaa !19
  %183 = load i32, i32 addrspace(3)* %31, align 4, !tbaa !19
  %184 = add i32 %183, %182
  store i32 %184, i32 addrspace(3)* %31, align 4, !tbaa !19
  br label %185

; <label>:185                                     ; preds = %179, %178
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %186 = load i32, i32 addrspace(3)* %82, align 4, !tbaa !19
  %187 = zext i1 %142 to i32
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %187, i32 addrspace(3)* %31, align 4, !tbaa !19
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %33, label %188, label %194, !dx.controlflow.hints !23

; <label>:188                                     ; preds = %185
  %189 = add i32 %9, 32
  %190 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %189
  %191 = load i32, i32 addrspace(3)* %190, align 4, !tbaa !19
  %192 = load i32, i32 addrspace(3)* %31, align 4, !tbaa !19
  %193 = add i32 %192, %191
  store i32 %193, i32 addrspace(3)* %31, align 4, !tbaa !19
  br label %194

; <label>:194                                     ; preds = %188, %185
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %41, label %195, label %201, !dx.controlflow.hints !24

; <label>:195                                     ; preds = %194
  %196 = add i32 %9, 16
  %197 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %196
  %198 = load i32, i32 addrspace(3)* %197, align 4, !tbaa !19
  %199 = load i32, i32 addrspace(3)* %31, align 4, !tbaa !19
  %200 = add i32 %199, %198
  store i32 %200, i32 addrspace(3)* %31, align 4, !tbaa !19
  br label %201

; <label>:201                                     ; preds = %195, %194
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %49, label %202, label %208, !dx.controlflow.hints !25

; <label>:202                                     ; preds = %201
  %203 = add i32 %9, 8
  %204 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %203
  %205 = load i32, i32 addrspace(3)* %204, align 4, !tbaa !19
  %206 = load i32, i32 addrspace(3)* %31, align 4, !tbaa !19
  %207 = add i32 %206, %205
  store i32 %207, i32 addrspace(3)* %31, align 4, !tbaa !19
  br label %208

; <label>:208                                     ; preds = %202, %201
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %57, label %209, label %215, !dx.controlflow.hints !26

; <label>:209                                     ; preds = %208
  %210 = add i32 %9, 4
  %211 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %210
  %212 = load i32, i32 addrspace(3)* %211, align 4, !tbaa !19
  %213 = load i32, i32 addrspace(3)* %31, align 4, !tbaa !19
  %214 = add i32 %213, %212
  store i32 %214, i32 addrspace(3)* %31, align 4, !tbaa !19
  br label %215

; <label>:215                                     ; preds = %209, %208
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %65, label %216, label %222, !dx.controlflow.hints !27

; <label>:216                                     ; preds = %215
  %217 = add i32 %9, 2
  %218 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %217
  %219 = load i32, i32 addrspace(3)* %218, align 4, !tbaa !19
  %220 = load i32, i32 addrspace(3)* %31, align 4, !tbaa !19
  %221 = add i32 %220, %219
  store i32 %221, i32 addrspace(3)* %31, align 4, !tbaa !19
  br label %222

; <label>:222                                     ; preds = %216, %215
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %73, label %223, label %229, !dx.controlflow.hints !28

; <label>:223                                     ; preds = %222
  %224 = add i32 %9, 1
  %225 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %224
  %226 = load i32, i32 addrspace(3)* %225, align 4, !tbaa !19
  %227 = load i32, i32 addrspace(3)* %31, align 4, !tbaa !19
  %228 = add i32 %227, %226
  store i32 %228, i32 addrspace(3)* %31, align 4, !tbaa !19
  br label %229

; <label>:229                                     ; preds = %223, %222
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %230 = load i32, i32 addrspace(3)* %82, align 4, !tbaa !19
  br i1 %127, label %231, label %234, !dx.controlflow.hints !30

; <label>:231                                     ; preds = %229
  %232 = mul i32 %8, 20
  %233 = add i32 %138, %232
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %233, i32 undef, i32 %186, i32 %186, i32 %186, i32 %186, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %233, i32 undef, i32 %230, i32 %230, i32 %230, i32 %230, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %234

; <label>:234                                     ; preds = %231, %229
  %235 = add nuw nsw i32 %138, 1
  %236 = icmp eq i32 %235, %134
  br i1 %236, label %237, label %137

; <label>:237                                     ; preds = %234
  br label %238

; <label>:238                                     ; preds = %237, %129
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
!dx.entryPoints = !{!16}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !9, !14, null}
!5 = !{!6, !8}
!6 = !{i32 0, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 0, i32 1, i32 10, i32 0, !7}
!7 = !{i32 0, i32 5}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!9 = !{!10, !11, !12, !13}
!10 = !{i32 0, %"class.RWBuffer<unsigned int>"* undef, !"", i32 0, i32 0, i32 1, i32 10, i1 false, i1 false, i1 false, !7}
!11 = !{i32 1, %"class.RWBuffer<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 10, i1 false, i1 false, i1 false, !7}
!12 = !{i32 2, %"class.RWBuffer<unsigned int>"* undef, !"", i32 0, i32 2, i32 1, i32 10, i1 false, i1 false, i1 false, !7}
!13 = !{i32 3, %"class.RWBuffer<unsigned int>"* undef, !"", i32 0, i32 3, i32 1, i32 10, i1 false, i1 false, i1 false, !7}
!14 = !{!15}
!15 = !{i32 0, %GfxSampleLightGridVolumesLightingConsts* undef, !"", i32 0, i32 0, i32 1, i32 48, null}
!16 = !{void ()* @cs_compute_lightgrid_sampling_offsets_base, !"cs_compute_lightgrid_sampling_offsets_base", null, !4, !17}
!17 = !{i32 0, i64 272, i32 4, !18}
!18 = !{i32 64, i32 1, i32 1}
!19 = !{!20, !20, i64 0}
!20 = !{!"int", !21, i64 0}
!21 = !{!"omnipotent char", !22, i64 0}
!22 = !{!"Simple C/C++ TBAA"}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}

