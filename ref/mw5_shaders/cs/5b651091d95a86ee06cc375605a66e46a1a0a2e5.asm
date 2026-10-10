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
; shader hash: eb945746cfa294146d23db6fec040bd4
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
;   [80 x i8] (type annotation not present)
;
; }
;
; cbuffer 
; {
;
;   [32 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb2     1
;                                   cbuffer      NA          NA     CB1            cb3     1
;                                   texture    byte         r/o      T0            t14     1
;                                   texture    byte         r/o      T1            t15     1
;                                   texture    byte         r/o      T2            t16     1
;                                   texture    byte         r/o      T3            t17     1
;                                   texture    byte         r/o      T4            t18     1
;                                   texture    byte         r/o      T5            t23     1
;                                   texture    byte         r/o      T6            t26     1
;                                   texture    byte         r/o      T7            t27     1
;                                   texture    byte         r/o      T8            t39     1
;                                       UAV    byte         r/w      U0             u2     1
;                                       UAV    byte         r/w      U1             u4     1
;                                       UAV    byte         r/w      U2             u0     1
;                                       UAV    byte         r/w      U3             u1     1
;                                       UAV    byte         r/w      U4             u6     1
;                                       UAV    byte         r/w      U5             u7     1
;                                       UAV    byte         r/w      U6             u8     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%struct.ByteAddressBuffer = type { i32 }
%struct.RWByteAddressBuffer = type { i32 }
%GPLodParamsConsts = type { <3 x float>, i32, float, float, float, float, i32, i32, float, float, float, float, float, float, float, float, float, float }
%GPSModelSurfDataGenConsts = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@"\01?tiledSharedMem@@3PAIA" = external addrspace(3) global [64 x i32], align 4
@"\01?surfArgPos@@3IA" = external addrspace(3) global i32, align 4
@"\01?splinePos@@3IA" = external addrspace(3) global i32, align 4
@"\01?splineClusterPos@@3IA" = external addrspace(3) global i32, align 4

define void @smodel_surf_data_gen_pass() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 6, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 5, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 4, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 39, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 26, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %20 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %21 = shl i32 %19, 6
  %22 = add i32 %21, %20
  %23 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %24 = extractvalue %dx.types.ResRet.i32 %23, 0
  %25 = icmp ult i32 %22, %24
  br i1 %25, label %26, label %60, !dx.controlflow.hints !29

; <label>:26                                      ; preds = %0
  %27 = shl i32 %22, 3
  %28 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %27, i32 undef)  ; BufferLoad(srv,index,wot)
  %29 = extractvalue %dx.types.ResRet.i32 %28, 0
  %30 = extractvalue %dx.types.ResRet.i32 %28, 1
  %31 = lshr i32 %29, 28
  %32 = and i32 %30, 65535
  %33 = shl nuw nsw i32 %31, 16
  %34 = or i32 %33, %32
  %35 = and i32 %29, 268435455
  %36 = lshr i32 %30, 16
  %37 = and i32 %36, 255
  %38 = lshr i32 %30, 24
  %39 = shl nuw nsw i32 %34, 2
  %40 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %39, i32 undef)  ; BufferLoad(srv,index,wot)
  %41 = extractvalue %dx.types.ResRet.i32 %40, 0
  %42 = and i32 %41, 65535
  %43 = lshr i32 %41, 16
  %44 = and i32 %43, 255
  %45 = lshr i32 %41, 24
  %46 = icmp eq i32 %38, 0
  br i1 %46, label %47, label %56, !dx.controlflow.hints !30

; <label>:47                                      ; preds = %26
  %48 = and i32 %45, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %60, !dx.controlflow.hints !31

; <label>:50                                      ; preds = %47
  %51 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %52 = extractvalue %dx.types.CBufRet.i32 %51, 2
  %53 = and i32 %45, 4
  %54 = or i32 %52, %53
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %60, label %59, !dx.controlflow.hints !32

; <label>:56                                      ; preds = %26
  %57 = and i32 %45, 2
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60, !dx.controlflow.hints !33

; <label>:59                                      ; preds = %56, %50
  br label %60

; <label>:60                                      ; preds = %59, %56, %50, %47, %0
  %61 = phi i32 [ 0, %0 ], [ 0, %59 ], [ 1, %47 ], [ 0, %50 ], [ 1, %56 ]
  %62 = phi i32 [ 0, %0 ], [ %38, %59 ], [ 0, %47 ], [ 0, %50 ], [ %38, %56 ]
  %63 = phi i32 [ 0, %0 ], [ %37, %59 ], [ %37, %47 ], [ %37, %50 ], [ %37, %56 ]
  %64 = phi i32 [ 0, %0 ], [ %34, %59 ], [ %34, %47 ], [ %34, %50 ], [ %34, %56 ]
  %65 = phi i32 [ 0, %0 ], [ %35, %59 ], [ %35, %47 ], [ %35, %50 ], [ %35, %56 ]
  %66 = phi i32 [ 0, %0 ], [ %44, %59 ], [ %44, %47 ], [ %44, %50 ], [ %44, %56 ]
  %67 = phi i32 [ 0, %0 ], [ %42, %59 ], [ %42, %47 ], [ %42, %50 ], [ %42, %56 ]
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %68 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %20
  store i32 %61, i32 addrspace(3)* %68, align 4, !tbaa !34, !noalias !38
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %69 = and i32 %20, 1
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %77, label %71, !dx.controlflow.hints !42

; <label>:71                                      ; preds = %60
  %72 = and i32 %20, -2
  %73 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %72
  %74 = load i32, i32 addrspace(3)* %73, align 4, !tbaa !34, !noalias !38
  %75 = load i32, i32 addrspace(3)* %68, align 4, !tbaa !34, !noalias !38
  %76 = add i32 %75, %74
  store i32 %76, i32 addrspace(3)* %68, align 4, !tbaa !34, !noalias !38
  br label %77

; <label>:77                                      ; preds = %71, %60
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %78 = and i32 %20, 2
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %87, label %80, !dx.controlflow.hints !43

; <label>:80                                      ; preds = %77
  %81 = and i32 %20, -4
  %82 = or i32 %81, 1
  %83 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %82
  %84 = load i32, i32 addrspace(3)* %83, align 4, !tbaa !34, !noalias !38
  %85 = load i32, i32 addrspace(3)* %68, align 4, !tbaa !34, !noalias !38
  %86 = add i32 %85, %84
  store i32 %86, i32 addrspace(3)* %68, align 4, !tbaa !34, !noalias !38
  br label %87

; <label>:87                                      ; preds = %80, %77
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %88 = and i32 %20, 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %97, label %90, !dx.controlflow.hints !44

; <label>:90                                      ; preds = %87
  %91 = and i32 %20, -8
  %92 = or i32 %91, 3
  %93 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %92
  %94 = load i32, i32 addrspace(3)* %93, align 4, !tbaa !34, !noalias !38
  %95 = load i32, i32 addrspace(3)* %68, align 4, !tbaa !34, !noalias !38
  %96 = add i32 %95, %94
  store i32 %96, i32 addrspace(3)* %68, align 4, !tbaa !34, !noalias !38
  br label %97

; <label>:97                                      ; preds = %90, %87
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %98 = and i32 %20, 8
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %107, label %100, !dx.controlflow.hints !45

; <label>:100                                     ; preds = %97
  %101 = and i32 %20, -16
  %102 = or i32 %101, 7
  %103 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %102
  %104 = load i32, i32 addrspace(3)* %103, align 4, !tbaa !34, !noalias !38
  %105 = load i32, i32 addrspace(3)* %68, align 4, !tbaa !34, !noalias !38
  %106 = add i32 %105, %104
  store i32 %106, i32 addrspace(3)* %68, align 4, !tbaa !34, !noalias !38
  br label %107

; <label>:107                                     ; preds = %100, %97
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %108 = and i32 %20, 16
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %117, label %110, !dx.controlflow.hints !46

; <label>:110                                     ; preds = %107
  %111 = and i32 %20, -32
  %112 = or i32 %111, 15
  %113 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %112
  %114 = load i32, i32 addrspace(3)* %113, align 4, !tbaa !34, !noalias !38
  %115 = load i32, i32 addrspace(3)* %68, align 4, !tbaa !34, !noalias !38
  %116 = add i32 %115, %114
  store i32 %116, i32 addrspace(3)* %68, align 4, !tbaa !34, !noalias !38
  br label %117

; <label>:117                                     ; preds = %110, %107
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %118 = and i32 %20, 32
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %122, !dx.controlflow.hints !47

; <label>:120                                     ; preds = %117
  %121 = load i32, i32 addrspace(3)* %68, align 4, !tbaa !34, !noalias !38
  br label %129

; <label>:122                                     ; preds = %117
  %123 = and i32 %20, -64
  %124 = or i32 %123, 31
  %125 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %124
  %126 = load i32, i32 addrspace(3)* %125, align 4, !tbaa !34, !noalias !38
  %127 = load i32, i32 addrspace(3)* %68, align 4, !tbaa !34, !noalias !38
  %128 = add i32 %127, %126
  store i32 %128, i32 addrspace(3)* %68, align 4, !tbaa !34, !noalias !38
  br label %129

; <label>:129                                     ; preds = %122, %120
  %130 = phi i32 [ %121, %120 ], [ %128, %122 ]
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %131 = or i32 %20, 63
  %132 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %131
  %133 = load i32, i32 addrspace(3)* %132, align 4, !tbaa !34, !noalias !38
  %134 = sub i32 %130, %61
  %135 = icmp eq i32 %20, 0
  br i1 %135, label %136, label %137, !dx.controlflow.hints !48

; <label>:136                                     ; preds = %129
  store i32 0, i32 addrspace(3)* @"\01?surfArgPos@@3IA", align 4, !tbaa !34
  br label %137

; <label>:137                                     ; preds = %136, %129
  %138 = phi i1 [ %135, %136 ], [ false, %129 ]
  br i1 %138, label %139, label %141, !dx.controlflow.hints !49

; <label>:139                                     ; preds = %137
  %140 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %7, i32 0, i32 0, i32 undef, i32 undef, i32 %133)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  store i32 %140, i32 addrspace(3)* @"\01?surfArgPos@@3IA", align 4, !tbaa !34
  br label %141

; <label>:141                                     ; preds = %139, %137
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %142 = load i32, i32 addrspace(3)* @"\01?surfArgPos@@3IA", align 4, !tbaa !34
  %143 = add i32 %142, %133
  %144 = icmp ugt i32 %143, 53248
  br i1 %144, label %430, label %145, !dx.controlflow.hints !50

; <label>:145                                     ; preds = %141
  %146 = add i32 %134, %142
  %147 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %148 = extractvalue %dx.types.CBufRet.i32 %147, 0
  %149 = add i32 %146, %148
  %150 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %151 = extractvalue %dx.types.CBufRet.i32 %150, 0
  %152 = icmp ne i32 %151, 0
  %153 = icmp eq i32 %61, 0
  br i1 %153, label %160, label %154, !dx.controlflow.hints !51

; <label>:154                                     ; preds = %145
  %155 = shl nsw i32 %64, 2
  %156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %155, i32 undef)  ; BufferLoad(srv,index,wot)
  %157 = extractvalue %dx.types.ResRet.i32 %156, 0
  %158 = icmp ne i32 %157, -1
  %159 = zext i1 %158 to i32
  br label %160

; <label>:160                                     ; preds = %154, %145
  %161 = phi i32 [ %159, %154 ], [ 0, %145 ]
  %162 = phi i32 [ %157, %154 ], [ 0, %145 ]
  %163 = icmp eq i32 %161, 0
  br i1 %163, label %276, label %164, !dx.controlflow.hints !52

; <label>:164                                     ; preds = %160
  %165 = lshr i32 %162, 5
  %166 = and i32 %162, 31
  %167 = shl nuw nsw i32 %165, 2
  %168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %167, i32 undef)  ; BufferLoad(srv,index,wot)
  %169 = extractvalue %dx.types.ResRet.i32 %168, 0
  %170 = shl i32 1, %166
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  %173 = mul i32 %162, 44
  %174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %173, i32 undef)  ; BufferLoad(srv,index,wot)
  %175 = extractvalue %dx.types.ResRet.i32 %174, 0
  %176 = extractvalue %dx.types.ResRet.i32 %174, 1
  %177 = extractvalue %dx.types.ResRet.i32 %174, 2
  %178 = extractvalue %dx.types.ResRet.i32 %174, 3
  %179 = add i32 %173, 16
  %180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %179, i32 undef)  ; BufferLoad(srv,index,wot)
  %181 = extractvalue %dx.types.ResRet.i32 %180, 0
  %182 = extractvalue %dx.types.ResRet.i32 %180, 1
  %183 = extractvalue %dx.types.ResRet.i32 %180, 2
  %184 = extractvalue %dx.types.ResRet.i32 %180, 3
  %185 = add i32 %173, 32
  %186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %185, i32 undef)  ; BufferLoad(srv,index,wot)
  %187 = extractvalue %dx.types.ResRet.i32 %186, 0
  %188 = extractvalue %dx.types.ResRet.i32 %186, 1
  %189 = extractvalue %dx.types.ResRet.i32 %186, 2
  %190 = add nsw i32 %62, -4
  %191 = icmp ult i32 %190, 32
  %192 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %193 = extractvalue %dx.types.CBufRet.i32 %192, 1
  %194 = icmp ne i32 %193, 0
  %195 = and i1 %191, %194
  %196 = add nsw i32 %62, -1
  %197 = icmp ult i32 %196, 3
  %198 = extractvalue %dx.types.CBufRet.i32 %192, 0
  %199 = icmp ne i32 %198, 0
  %200 = and i1 %197, %199
  %201 = add nsw i32 %62, -37
  %202 = icmp ult i32 %201, 20
  %203 = or i1 %195, %200
  %204 = or i1 %202, %203
  %205 = icmp ne i32 %63, 255
  %206 = and i1 %205, %204
  %207 = icmp eq i32 %63, 0
  %208 = or i1 %207, %206
  %209 = or i32 %66, 16
  %210 = select i1 %208, i32 %209, i32 %66
  %211 = select i1 %172, i32 %189, i32 0
  %212 = extractvalue %dx.types.CBufRet.i32 %147, 1
  %213 = mul i32 %212, %62
  %214 = add i32 %213, %67
  %215 = shl i32 %214, 1
  %216 = and i32 %215, -4
  %217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %216, i32 undef)  ; BufferLoad(srv,index,wot)
  %218 = extractvalue %dx.types.ResRet.i32 %217, 0
  %219 = shl nuw nsw i32 %67, 4
  %220 = and i32 %219, 16
  %221 = lshr i32 %218, %220
  %222 = and i32 %221, 65535
  %223 = select i1 %172, i32 %222, i32 16384
  %224 = shl nuw nsw i32 %67, 2
  %225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %224, i32 undef)  ; BufferLoad(srv,index,wot)
  %226 = extractvalue %dx.types.ResRet.i32 %225, 0
  %227 = select i1 %172, i32 %226, i32 0
  %228 = lshr i32 %64, 16
  %229 = and i32 %64, 65535
  %230 = shl i32 %228, 28
  %231 = or i32 %230, %65
  %232 = shl i32 %211, 16
  %233 = or i32 %232, %229
  %234 = shl nuw nsw i32 %210, 8
  %235 = and i32 %234, 65280
  %236 = or i32 %235, 2
  %237 = select i1 %152, i32 %236, i32 2
  %238 = shl nuw nsw i32 %62, 8
  %239 = or i32 %63, %238
  %240 = shl nuw i32 %239, 16
  %241 = or i32 %237, %240
  %242 = mul i32 %149, 12
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %6, i32 %242, i32 undef, i32 %231, i32 %233, i32 %241, i32 undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %243 = shl nuw i32 %223, 16
  %244 = add i32 %242, 1572864
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %6, i32 %244, i32 undef, i32 %181, i32 %243, i32 %188, i32 undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %245 = add i32 %242, 786432
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %6, i32 %245, i32 undef, i32 %175, i32 0, i32 0, i32 undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %246 = shl i32 %149, 4
  %247 = add i32 %246, 2359296
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %6, i32 %247, i32 undef, i32 %176, i32 %177, i32 %178, i32 0, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %248 = shl i32 %149, 3
  %249 = add i32 %248, 3407872
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %6, i32 %249, i32 undef, i32 %227, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %250 = add i32 %248, 3932160
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %6, i32 %250, i32 undef, i32 %182, i32 %183, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %251 = shl i32 %149, 2
  %252 = add i32 %251, 4718592
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %6, i32 %252, i32 undef, i32 %184, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %253 = add i32 %251, 4980736
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %6, i32 %253, i32 undef, i32 %187, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %254 = shl i32 %22, 3
  %255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %254, i32 undef)  ; BufferLoad(srv,index,wot)
  %256 = extractvalue %dx.types.ResRet.i32 %255, 0
  %257 = extractvalue %dx.types.ResRet.i32 %255, 1
  %258 = lshr i32 %257, 1
  %259 = icmp eq i32 %256, 0
  %260 = add i32 %251, 212992
  br i1 %259, label %275, label %261, !dx.controlflow.hints !53

; <label>:261                                     ; preds = %164
  %262 = and i32 %257, 1
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %260, i32 undef, i32 %256, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %263 = xor i32 %262, 1
  %264 = shl i32 %256, 2
  %265 = add i32 %264, -4
  %266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %265, i32 undef)  ; BufferLoad(srv,index,wot)
  %267 = extractvalue %dx.types.ResRet.i32 %266, 1
  %268 = extractvalue %dx.types.ResRet.i32 %266, 2
  %269 = icmp ne i32 %268, %258
  %270 = icmp ne i32 %267, %64
  %271 = or i1 %269, %270
  %272 = select i1 %271, i32 1, i32 %263
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %276, label %274, !dx.controlflow.hints !54

; <label>:274                                     ; preds = %261
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %265, i32 undef, i32 %65, i32 %64, i32 %258, i32 undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %276

; <label>:275                                     ; preds = %164
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %260, i32 undef, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %276

; <label>:276                                     ; preds = %275, %274, %261, %160
  %277 = phi i32 [ %211, %274 ], [ %211, %261 ], [ %211, %275 ], [ 0, %160 ]
  %278 = phi i32 [ %223, %274 ], [ %223, %261 ], [ %223, %275 ], [ 65535, %160 ]
  %279 = phi i32 [ %272, %274 ], [ 0, %261 ], [ 0, %275 ], [ 0, %160 ]
  %280 = phi i32 [ %256, %274 ], [ %256, %261 ], [ 0, %275 ], [ undef, %160 ]
  %281 = icmp ne i32 %279, 0
  %282 = lshr i32 %277, 6
  %283 = add nuw nsw i32 %282, 1
  %284 = select i1 %281, i32 %277, i32 0
  %285 = select i1 %281, i32 %283, i32 0
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %285, i32 addrspace(3)* %68, align 4, !tbaa !34, !noalias !55
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %70, label %292, label %286, !dx.controlflow.hints !42

; <label>:286                                     ; preds = %276
  %287 = and i32 %20, -2
  %288 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %287
  %289 = load i32, i32 addrspace(3)* %288, align 4, !tbaa !34, !noalias !55
  %290 = load i32, i32 addrspace(3)* %68, align 4, !tbaa !34, !noalias !55
  %291 = add i32 %290, %289
  store i32 %291, i32 addrspace(3)* %68, align 4, !tbaa !34, !noalias !55
  br label %292

; <label>:292                                     ; preds = %286, %276
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %79, label %300, label %293, !dx.controlflow.hints !43

; <label>:293                                     ; preds = %292
  %294 = and i32 %20, -4
  %295 = or i32 %294, 1
  %296 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %295
  %297 = load i32, i32 addrspace(3)* %296, align 4, !tbaa !34, !noalias !55
  %298 = load i32, i32 addrspace(3)* %68, align 4, !tbaa !34, !noalias !55
  %299 = add i32 %298, %297
  store i32 %299, i32 addrspace(3)* %68, align 4, !tbaa !34, !noalias !55
  br label %300

; <label>:300                                     ; preds = %293, %292
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %89, label %308, label %301, !dx.controlflow.hints !44

; <label>:301                                     ; preds = %300
  %302 = and i32 %20, -8
  %303 = or i32 %302, 3
  %304 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %303
  %305 = load i32, i32 addrspace(3)* %304, align 4, !tbaa !34, !noalias !55
  %306 = load i32, i32 addrspace(3)* %68, align 4, !tbaa !34, !noalias !55
  %307 = add i32 %306, %305
  store i32 %307, i32 addrspace(3)* %68, align 4, !tbaa !34, !noalias !55
  br label %308

; <label>:308                                     ; preds = %301, %300
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %99, label %316, label %309, !dx.controlflow.hints !45

; <label>:309                                     ; preds = %308
  %310 = and i32 %20, -16
  %311 = or i32 %310, 7
  %312 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %311
  %313 = load i32, i32 addrspace(3)* %312, align 4, !tbaa !34, !noalias !55
  %314 = load i32, i32 addrspace(3)* %68, align 4, !tbaa !34, !noalias !55
  %315 = add i32 %314, %313
  store i32 %315, i32 addrspace(3)* %68, align 4, !tbaa !34, !noalias !55
  br label %316

; <label>:316                                     ; preds = %309, %308
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %109, label %324, label %317, !dx.controlflow.hints !46

; <label>:317                                     ; preds = %316
  %318 = and i32 %20, -32
  %319 = or i32 %318, 15
  %320 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %319
  %321 = load i32, i32 addrspace(3)* %320, align 4, !tbaa !34, !noalias !55
  %322 = load i32, i32 addrspace(3)* %68, align 4, !tbaa !34, !noalias !55
  %323 = add i32 %322, %321
  store i32 %323, i32 addrspace(3)* %68, align 4, !tbaa !34, !noalias !55
  br label %324

; <label>:324                                     ; preds = %317, %316
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %119, label %325, label %327, !dx.controlflow.hints !47

; <label>:325                                     ; preds = %324
  %326 = load i32, i32 addrspace(3)* %68, align 4, !tbaa !34, !noalias !55
  br label %334

; <label>:327                                     ; preds = %324
  %328 = and i32 %20, -64
  %329 = or i32 %328, 31
  %330 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %329
  %331 = load i32, i32 addrspace(3)* %330, align 4, !tbaa !34, !noalias !55
  %332 = load i32, i32 addrspace(3)* %68, align 4, !tbaa !34, !noalias !55
  %333 = add i32 %332, %331
  store i32 %333, i32 addrspace(3)* %68, align 4, !tbaa !34, !noalias !55
  br label %334

; <label>:334                                     ; preds = %327, %325
  %335 = phi i32 [ %326, %325 ], [ %333, %327 ]
  %336 = sub i32 %335, %285
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %337 = load i32, i32 addrspace(3)* %132, align 4, !tbaa !34, !noalias !55
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %284, i32 addrspace(3)* %68, align 4, !tbaa !34, !noalias !59
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %70, label %344, label %338, !dx.controlflow.hints !42

; <label>:338                                     ; preds = %334
  %339 = and i32 %20, -2
  %340 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %339
  %341 = load i32, i32 addrspace(3)* %340, align 4, !tbaa !34, !noalias !59
  %342 = load i32, i32 addrspace(3)* %68, align 4, !tbaa !34, !noalias !59
  %343 = add i32 %342, %341
  store i32 %343, i32 addrspace(3)* %68, align 4, !tbaa !34, !noalias !59
  br label %344

; <label>:344                                     ; preds = %338, %334
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %79, label %352, label %345, !dx.controlflow.hints !43

; <label>:345                                     ; preds = %344
  %346 = and i32 %20, -4
  %347 = or i32 %346, 1
  %348 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %347
  %349 = load i32, i32 addrspace(3)* %348, align 4, !tbaa !34, !noalias !59
  %350 = load i32, i32 addrspace(3)* %68, align 4, !tbaa !34, !noalias !59
  %351 = add i32 %350, %349
  store i32 %351, i32 addrspace(3)* %68, align 4, !tbaa !34, !noalias !59
  br label %352

; <label>:352                                     ; preds = %345, %344
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %89, label %360, label %353, !dx.controlflow.hints !44

; <label>:353                                     ; preds = %352
  %354 = and i32 %20, -8
  %355 = or i32 %354, 3
  %356 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %355
  %357 = load i32, i32 addrspace(3)* %356, align 4, !tbaa !34, !noalias !59
  %358 = load i32, i32 addrspace(3)* %68, align 4, !tbaa !34, !noalias !59
  %359 = add i32 %358, %357
  store i32 %359, i32 addrspace(3)* %68, align 4, !tbaa !34, !noalias !59
  br label %360

; <label>:360                                     ; preds = %353, %352
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %99, label %368, label %361, !dx.controlflow.hints !45

; <label>:361                                     ; preds = %360
  %362 = and i32 %20, -16
  %363 = or i32 %362, 7
  %364 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %363
  %365 = load i32, i32 addrspace(3)* %364, align 4, !tbaa !34, !noalias !59
  %366 = load i32, i32 addrspace(3)* %68, align 4, !tbaa !34, !noalias !59
  %367 = add i32 %366, %365
  store i32 %367, i32 addrspace(3)* %68, align 4, !tbaa !34, !noalias !59
  br label %368

; <label>:368                                     ; preds = %361, %360
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %109, label %376, label %369, !dx.controlflow.hints !46

; <label>:369                                     ; preds = %368
  %370 = and i32 %20, -32
  %371 = or i32 %370, 15
  %372 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %371
  %373 = load i32, i32 addrspace(3)* %372, align 4, !tbaa !34, !noalias !59
  %374 = load i32, i32 addrspace(3)* %68, align 4, !tbaa !34, !noalias !59
  %375 = add i32 %374, %373
  store i32 %375, i32 addrspace(3)* %68, align 4, !tbaa !34, !noalias !59
  br label %376

; <label>:376                                     ; preds = %369, %368
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %119, label %377, label %379, !dx.controlflow.hints !47

; <label>:377                                     ; preds = %376
  %378 = load i32, i32 addrspace(3)* %68, align 4, !tbaa !34, !noalias !59
  br label %386

; <label>:379                                     ; preds = %376
  %380 = and i32 %20, -64
  %381 = or i32 %380, 31
  %382 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %381
  %383 = load i32, i32 addrspace(3)* %382, align 4, !tbaa !34, !noalias !59
  %384 = load i32, i32 addrspace(3)* %68, align 4, !tbaa !34, !noalias !59
  %385 = add i32 %384, %383
  store i32 %385, i32 addrspace(3)* %68, align 4, !tbaa !34, !noalias !59
  br label %386

; <label>:386                                     ; preds = %379, %377
  %387 = phi i32 [ %378, %377 ], [ %385, %379 ]
  %388 = sub i32 %387, %284
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %135, label %389, label %393, !dx.controlflow.hints !63

; <label>:389                                     ; preds = %386
  %390 = load i32, i32 addrspace(3)* getelementptr inbounds ([64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 63), align 4, !tbaa !34, !noalias !59
  store i32 0, i32 addrspace(3)* @"\01?splinePos@@3IA", align 4, !tbaa !34
  store i32 0, i32 addrspace(3)* @"\01?splineClusterPos@@3IA", align 4, !tbaa !34
  %391 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 0, i32 undef, i32 undef, i32 %337)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  store i32 %391, i32 addrspace(3)* @"\01?splinePos@@3IA", align 4, !tbaa !34
  %392 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 32, i32 undef, i32 undef, i32 %390)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  store i32 %392, i32 addrspace(3)* @"\01?splineClusterPos@@3IA", align 4, !tbaa !34
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 4, i32 undef, i32 1, i32 1, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 36, i32 undef, i32 1, i32 1, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %393

; <label>:393                                     ; preds = %389, %386
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %394 = icmp eq i32 %279, 0
  br i1 %394, label %416, label %395, !dx.controlflow.hints !64

; <label>:395                                     ; preds = %393
  br label %396

; <label>:396                                     ; preds = %396, %395
  %397 = phi i32 [ %412, %396 ], [ %284, %395 ]
  %398 = phi i32 [ %411, %396 ], [ %388, %395 ]
  %399 = phi i32 [ %413, %396 ], [ 0, %395 ]
  %400 = icmp ugt i32 %397, 64
  %401 = select i1 %400, i32 64, i32 %397
  %402 = shl i32 %399, 22
  %403 = or i32 %402, %401
  %404 = add i32 %280, -1
  %405 = load i32, i32 addrspace(3)* @"\01?splineClusterPos@@3IA", align 4, !tbaa !34
  %406 = add i32 %405, %398
  %407 = load i32, i32 addrspace(3)* @"\01?splinePos@@3IA", align 4, !tbaa !34
  %408 = add i32 %336, %399
  %409 = add i32 %408, %407
  %410 = shl i32 %409, 4
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %410, i32 undef, i32 %149, i32 %404, i32 %406, i32 %403, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %411 = add i32 %401, %398
  %412 = sub i32 %397, %401
  %413 = add nuw nsw i32 %399, 1
  %414 = icmp ult i32 %413, %285
  br i1 %414, label %396, label %415

; <label>:415                                     ; preds = %396
  br label %416

; <label>:416                                     ; preds = %415, %393
  %417 = icmp ne i32 %161, 0
  %418 = xor i1 %417, true
  %419 = icmp eq i32 %278, 16384
  %420 = or i1 %419, %418
  br i1 %420, label %426, label %421, !dx.controlflow.hints !65

; <label>:421                                     ; preds = %416
  %422 = add i32 %277, 63
  %423 = lshr i32 %422, 6
  %424 = shl nsw i32 %278, 2
  %425 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %5, i32 0, i32 %424, i32 undef, i32 undef, i32 %423)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %426

; <label>:426                                     ; preds = %421, %416
  %427 = phi i32 [ %425, %421 ], [ 0, %416 ]
  br i1 %417, label %428, label %430, !dx.controlflow.hints !66

; <label>:428                                     ; preds = %426
  %429 = shl i32 %149, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %4, i32 %429, i32 undef, i32 %427, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %430

; <label>:430                                     ; preds = %428, %426, %141
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

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #3

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #3

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #3

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { noduplicate nounwind }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!26}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !15, !23, null}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 14, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 15, i32 1, i32 11, i32 0, null}
!8 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 16, i32 1, i32 11, i32 0, null}
!9 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 17, i32 1, i32 11, i32 0, null}
!10 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 18, i32 1, i32 11, i32 0, null}
!11 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 23, i32 1, i32 11, i32 0, null}
!12 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 26, i32 1, i32 11, i32 0, null}
!13 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 27, i32 1, i32 11, i32 0, null}
!14 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 39, i32 1, i32 11, i32 0, null}
!15 = !{!16, !17, !18, !19, !20, !21, !22}
!16 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!17 = !{i32 1, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 4, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!18 = !{i32 2, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!19 = !{i32 3, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!20 = !{i32 4, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 6, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!21 = !{i32 5, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 7, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!22 = !{i32 6, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 8, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!23 = !{!24, !25}
!24 = !{i32 0, %GPLodParamsConsts* undef, !"", i32 0, i32 2, i32 1, i32 80, null}
!25 = !{i32 1, %GPSModelSurfDataGenConsts* undef, !"", i32 0, i32 3, i32 1, i32 32, null}
!26 = !{void ()* @smodel_surf_data_gen_pass, !"smodel_surf_data_gen_pass", null, !4, !27}
!27 = !{i32 0, i64 272, i32 4, !28}
!28 = !{i32 64, i32 1, i32 1}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = !{!35, !35, i64 0}
!35 = !{!"int", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !41}
!39 = distinct !{!39, !40, !"\01?TiledBitCountAndStreamCompact64@@YAXI_NAIAI1@Z: %outStreamIndex"}
!40 = distinct !{!40, !"\01?TiledBitCountAndStreamCompact64@@YAXI_NAIAI1@Z"}
!41 = distinct !{!41, !40, !"\01?TiledBitCountAndStreamCompact64@@YAXI_NAIAI1@Z: %outBitCount"}
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
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = !{!56, !58}
!56 = distinct !{!56, !57, !"\01?TiledSumAndOffsets64@@YAXIIAIAI0@Z: %outOffset"}
!57 = distinct !{!57, !"\01?TiledSumAndOffsets64@@YAXIIAIAI0@Z"}
!58 = distinct !{!58, !57, !"\01?TiledSumAndOffsets64@@YAXIIAIAI0@Z: %outTotalSum"}
!59 = !{!60, !62}
!60 = distinct !{!60, !61, !"\01?TiledSumAndOffsets64@@YAXIIAIAI0@Z: %outOffset"}
!61 = distinct !{!61, !"\01?TiledSumAndOffsets64@@YAXIIAIAI0@Z"}
!62 = distinct !{!62, !61, !"\01?TiledSumAndOffsets64@@YAXIIAIAI0@Z: %outTotalSum"}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}

