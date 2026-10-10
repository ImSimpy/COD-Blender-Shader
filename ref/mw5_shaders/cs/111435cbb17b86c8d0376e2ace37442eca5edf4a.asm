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
; shader hash: 964e25d30e35fd68116c5b8edcd618d2
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
;   [176 x i8] (type annotation not present)
;
; }
;
; Resource bind info for 
; {
;
;   [32 x i8] (type annotation not present)
; }
;
; Resource bind info for 
; {
;
;   [48 x i8] (type annotation not present)
; }
;
; Resource bind info for 
; {
;
;   [132 x i8] (type annotation not present)
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb0     1
;                                   texture  struct         r/o      T0             t0     1
;                                   texture  struct         r/o      T1             t1     1
;                                       UAV  struct         r/w      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%"class.StructuredBuffer<MDAOTileBBox>" = type { %struct.MDAOTileBBox }
%struct.MDAOTileBBox = type { <4 x float>, <4 x float> }
%"class.StructuredBuffer<MDAOOccluder>" = type { %struct.MDAOOccluder }
%struct.MDAOOccluder = type { <4 x float>, <4 x float>, <4 x float> }
%"class.RWStructuredBuffer<MDAOOccluderCulling>" = type { %struct.MDAOOccluderCulling }
%struct.MDAOOccluderCulling = type { i32, [32 x i32] }
%MDAOConstants = type { <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, float, float, float, float, float, i32, i32, i32, float, float, i32, i32, <4 x float>, <4 x i32> }

@"\01?g_tileCullingResults@@3UMDAOOccluderCulling@@A.0" = addrspace(3) global i32 undef, align 4
@"\01?g_tileCullingResults@@3UMDAOOccluderCulling@@A.1" = addrspace(3) global [32 x i32] undef, align 4

define void @cs_mdao_occluder_culling() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %6 = call i32 @dx.op.groupId.i32(i32 94, i32 1)  ; GroupId(component)
  %7 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10, !dx.controlflow.hints !18

; <label>:9                                       ; preds = %0
  store i32 0, i32 addrspace(3)* @"\01?g_tileCullingResults@@3UMDAOOccluderCulling@@A.0", align 4, !tbaa !19
  store i32 0, i32 addrspace(3)* getelementptr inbounds ([32 x i32], [32 x i32] addrspace(3)* @"\01?g_tileCullingResults@@3UMDAOOccluderCulling@@A.1", i32 0, i32 0), align 4, !tbaa !19
  store i32 0, i32 addrspace(3)* getelementptr inbounds ([32 x i32], [32 x i32] addrspace(3)* @"\01?g_tileCullingResults@@3UMDAOOccluderCulling@@A.1", i32 0, i32 1), align 4, !tbaa !19
  store i32 0, i32 addrspace(3)* getelementptr inbounds ([32 x i32], [32 x i32] addrspace(3)* @"\01?g_tileCullingResults@@3UMDAOOccluderCulling@@A.1", i32 0, i32 2), align 4, !tbaa !19
  store i32 0, i32 addrspace(3)* getelementptr inbounds ([32 x i32], [32 x i32] addrspace(3)* @"\01?g_tileCullingResults@@3UMDAOOccluderCulling@@A.1", i32 0, i32 3), align 4, !tbaa !19
  store i32 0, i32 addrspace(3)* getelementptr inbounds ([32 x i32], [32 x i32] addrspace(3)* @"\01?g_tileCullingResults@@3UMDAOOccluderCulling@@A.1", i32 0, i32 4), align 4, !tbaa !19
  store i32 0, i32 addrspace(3)* getelementptr inbounds ([32 x i32], [32 x i32] addrspace(3)* @"\01?g_tileCullingResults@@3UMDAOOccluderCulling@@A.1", i32 0, i32 5), align 4, !tbaa !19
  store i32 0, i32 addrspace(3)* getelementptr inbounds ([32 x i32], [32 x i32] addrspace(3)* @"\01?g_tileCullingResults@@3UMDAOOccluderCulling@@A.1", i32 0, i32 6), align 4, !tbaa !19
  store i32 0, i32 addrspace(3)* getelementptr inbounds ([32 x i32], [32 x i32] addrspace(3)* @"\01?g_tileCullingResults@@3UMDAOOccluderCulling@@A.1", i32 0, i32 7), align 4, !tbaa !19
  store i32 0, i32 addrspace(3)* getelementptr inbounds ([32 x i32], [32 x i32] addrspace(3)* @"\01?g_tileCullingResults@@3UMDAOOccluderCulling@@A.1", i32 0, i32 8), align 4, !tbaa !19
  store i32 0, i32 addrspace(3)* getelementptr inbounds ([32 x i32], [32 x i32] addrspace(3)* @"\01?g_tileCullingResults@@3UMDAOOccluderCulling@@A.1", i32 0, i32 9), align 4, !tbaa !19
  store i32 0, i32 addrspace(3)* getelementptr inbounds ([32 x i32], [32 x i32] addrspace(3)* @"\01?g_tileCullingResults@@3UMDAOOccluderCulling@@A.1", i32 0, i32 10), align 4, !tbaa !19
  store i32 0, i32 addrspace(3)* getelementptr inbounds ([32 x i32], [32 x i32] addrspace(3)* @"\01?g_tileCullingResults@@3UMDAOOccluderCulling@@A.1", i32 0, i32 11), align 4, !tbaa !19
  store i32 0, i32 addrspace(3)* getelementptr inbounds ([32 x i32], [32 x i32] addrspace(3)* @"\01?g_tileCullingResults@@3UMDAOOccluderCulling@@A.1", i32 0, i32 12), align 4, !tbaa !19
  store i32 0, i32 addrspace(3)* getelementptr inbounds ([32 x i32], [32 x i32] addrspace(3)* @"\01?g_tileCullingResults@@3UMDAOOccluderCulling@@A.1", i32 0, i32 13), align 4, !tbaa !19
  store i32 0, i32 addrspace(3)* getelementptr inbounds ([32 x i32], [32 x i32] addrspace(3)* @"\01?g_tileCullingResults@@3UMDAOOccluderCulling@@A.1", i32 0, i32 14), align 4, !tbaa !19
  store i32 0, i32 addrspace(3)* getelementptr inbounds ([32 x i32], [32 x i32] addrspace(3)* @"\01?g_tileCullingResults@@3UMDAOOccluderCulling@@A.1", i32 0, i32 15), align 4, !tbaa !19
  br label %10

; <label>:10                                      ; preds = %9, %0
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %11 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %12 = extractvalue %dx.types.CBufRet.i32 %11, 0
  %13 = mul i32 %12, %6
  %14 = add i32 %13, %5
  %15 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %14, i32 0)  ; BufferLoad(srv,index,wot)
  %16 = extractvalue %dx.types.ResRet.f32 %15, 0
  %17 = extractvalue %dx.types.ResRet.f32 %15, 1
  %18 = extractvalue %dx.types.ResRet.f32 %15, 2
  %19 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %14, i32 16)  ; BufferLoad(srv,index,wot)
  %20 = extractvalue %dx.types.ResRet.f32 %19, 0
  %21 = extractvalue %dx.types.ResRet.f32 %19, 1
  %22 = extractvalue %dx.types.ResRet.f32 %19, 2
  %23 = add i32 %5, 1
  %24 = add i32 %6, 1
  %25 = uitofp i32 %5 to float
  %26 = uitofp i32 %6 to float
  %27 = uitofp i32 %23 to float
  %28 = uitofp i32 %24 to float
  %29 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %30 = extractvalue %dx.types.CBufRet.f32 %29, 2
  %31 = extractvalue %dx.types.CBufRet.f32 %29, 3
  %32 = fmul fast float %25, 3.200000e+01
  %33 = fmul fast float %32, %30
  %34 = fmul fast float %26, 3.200000e+01
  %35 = fmul fast float %34, %31
  %36 = fmul fast float %27, 3.200000e+01
  %37 = fmul fast float %36, %30
  %38 = fmul fast float %28, 3.200000e+01
  %39 = fmul fast float %38, %31
  %40 = fadd fast float %33, -1.000000e+00
  %41 = fadd fast float %35, -1.000000e+00
  %42 = fadd fast float %37, -1.000000e+00
  %43 = fadd fast float %39, -1.000000e+00
  %44 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %45 = extractvalue %dx.types.CBufRet.f32 %44, 0
  %46 = extractvalue %dx.types.CBufRet.f32 %44, 1
  %47 = fmul fast float %43, %46
  %48 = fmul fast float %42, %45
  %49 = fmul fast float %46, %41
  %50 = fsub fast float -0.000000e+00, %49
  %51 = fmul fast float %45, %40
  %52 = fsub fast float -0.000000e+00, %51
  %53 = call float @dx.op.dot3.f32(i32 55, float 1.000000e+00, float 0.000000e+00, float %52, float 1.000000e+00, float 0.000000e+00, float %52)  ; Dot3(ax,ay,az,bx,by,bz)
  %54 = call float @dx.op.unary.f32(i32 25, float %53)  ; Rsqrt(value)
  %55 = fmul fast float %54, %52
  %56 = call float @dx.op.dot3.f32(i32 55, float -1.000000e+00, float 0.000000e+00, float %48, float -1.000000e+00, float 0.000000e+00, float %48)  ; Dot3(ax,ay,az,bx,by,bz)
  %57 = call float @dx.op.unary.f32(i32 25, float %56)  ; Rsqrt(value)
  %58 = fsub fast float -0.000000e+00, %57
  %59 = fmul fast float %48, %57
  %60 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 1.000000e+00, float %47, float 0.000000e+00, float 1.000000e+00, float %47)  ; Dot3(ax,ay,az,bx,by,bz)
  %61 = call float @dx.op.unary.f32(i32 25, float %60)  ; Rsqrt(value)
  %62 = fmul fast float %61, %47
  %63 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float -1.000000e+00, float %50, float 0.000000e+00, float -1.000000e+00, float %50)  ; Dot3(ax,ay,az,bx,by,bz)
  %64 = call float @dx.op.unary.f32(i32 25, float %63)  ; Rsqrt(value)
  %65 = fsub fast float -0.000000e+00, %64
  %66 = fmul fast float %64, %50
  %67 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %68 = extractvalue %dx.types.CBufRet.i32 %67, 1
  %69 = icmp ult i32 %7, %68
  br i1 %69, label %70, label %131

; <label>:70                                      ; preds = %10
  br label %71

; <label>:71                                      ; preds = %125, %70
  %72 = phi i32 [ %126, %125 ], [ %7, %70 ]
  %73 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %72, i32 0)  ; BufferLoad(srv,index,wot)
  %74 = extractvalue %dx.types.ResRet.f32 %73, 0
  %75 = extractvalue %dx.types.ResRet.f32 %73, 1
  %76 = extractvalue %dx.types.ResRet.f32 %73, 2
  %77 = extractvalue %dx.types.ResRet.f32 %73, 3
  %78 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %72, i32 16)  ; BufferLoad(srv,index,wot)
  %79 = extractvalue %dx.types.ResRet.f32 %78, 3
  %80 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %81 = extractvalue %dx.types.CBufRet.f32 %80, 0
  %82 = fadd fast float %81, %79
  %83 = fmul fast float %82, %77
  %84 = call float @dx.op.dot4.f32(i32 56, float %54, float 0.000000e+00, float %55, float %83, float %74, float %75, float %76, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %85 = call float @dx.op.dot4.f32(i32 56, float %58, float 0.000000e+00, float %59, float %83, float %74, float %75, float %76, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %86 = call float @dx.op.dot4.f32(i32 56, float 0.000000e+00, float %61, float %62, float %83, float %74, float %75, float %76, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %87 = call float @dx.op.dot4.f32(i32 56, float 0.000000e+00, float %65, float %66, float %83, float %74, float %75, float %76, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %88 = fcmp fast ogt float %84, 0.000000e+00
  %89 = fcmp fast ogt float %85, 0.000000e+00
  %90 = and i1 %88, %89
  %91 = fcmp fast ogt float %86, 0.000000e+00
  %92 = and i1 %90, %91
  %93 = fcmp fast ogt float %87, 0.000000e+00
  %94 = and i1 %92, %93
  %95 = fsub fast float %76, %83
  %96 = fcmp fast olt float %95, %22
  %97 = and i1 %96, %94
  %98 = fadd fast float %83, %76
  %99 = fcmp fast ogt float %98, %18
  %100 = and i1 %99, %97
  %101 = fsub fast float %16, %74
  %102 = fsub fast float %17, %75
  %103 = fsub fast float %18, %76
  %104 = fsub fast float %74, %20
  %105 = fsub fast float %75, %21
  %106 = fsub fast float %76, %22
  %107 = call float @dx.op.binary.f32(i32 35, float %104, float %101)  ; FMax(a,b)
  %108 = call float @dx.op.binary.f32(i32 35, float %105, float %102)  ; FMax(a,b)
  %109 = call float @dx.op.binary.f32(i32 35, float %106, float %103)  ; FMax(a,b)
  %110 = call float @dx.op.binary.f32(i32 35, float %107, float 0.000000e+00)  ; FMax(a,b)
  %111 = call float @dx.op.binary.f32(i32 35, float %108, float 0.000000e+00)  ; FMax(a,b)
  %112 = call float @dx.op.binary.f32(i32 35, float %109, float 0.000000e+00)  ; FMax(a,b)
  %113 = call float @dx.op.dot3.f32(i32 55, float %110, float %111, float %112, float %110, float %111, float %112)  ; Dot3(ax,ay,az,bx,by,bz)
  %114 = fmul fast float %83, %83
  %115 = fcmp fast olt float %113, %114
  %116 = and i1 %100, %115
  br i1 %116, label %117, label %125, !dx.controlflow.hints !23

; <label>:117                                     ; preds = %71
  %118 = lshr i32 %72, 5
  %119 = and i32 %72, 31
  %120 = shl i32 1, %119
  %121 = getelementptr [32 x i32], [32 x i32] addrspace(3)* @"\01?g_tileCullingResults@@3UMDAOOccluderCulling@@A.1", i32 0, i32 %118
  %122 = atomicrmw or i32 addrspace(3)* %121, i32 %120 seq_cst
  %123 = add i32 %72, 1
  %124 = atomicrmw umax i32 addrspace(3)* @"\01?g_tileCullingResults@@3UMDAOOccluderCulling@@A.0", i32 %123 seq_cst
  br label %125

; <label>:125                                     ; preds = %117, %71
  %126 = add i32 %72, 64
  %127 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %128 = extractvalue %dx.types.CBufRet.i32 %127, 1
  %129 = icmp ult i32 %126, %128
  br i1 %129, label %71, label %130

; <label>:130                                     ; preds = %125
  br label %131

; <label>:131                                     ; preds = %130, %10
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %8, label %132, label %170, !dx.controlflow.hints !24

; <label>:132                                     ; preds = %131
  %133 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %134 = extractvalue %dx.types.CBufRet.i32 %133, 0
  %135 = mul i32 %134, %6
  %136 = add i32 %135, %5
  %137 = load i32, i32 addrspace(3)* @"\01?g_tileCullingResults@@3UMDAOOccluderCulling@@A.0", align 4
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %136, i32 0, i32 %137, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %138 = load i32, i32 addrspace(3)* getelementptr inbounds ([32 x i32], [32 x i32] addrspace(3)* @"\01?g_tileCullingResults@@3UMDAOOccluderCulling@@A.1", i32 0, i32 0), align 4
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %136, i32 4, i32 %138, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %139 = load i32, i32 addrspace(3)* getelementptr inbounds ([32 x i32], [32 x i32] addrspace(3)* @"\01?g_tileCullingResults@@3UMDAOOccluderCulling@@A.1", i32 0, i32 1), align 4
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %136, i32 8, i32 %139, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %140 = load i32, i32 addrspace(3)* getelementptr inbounds ([32 x i32], [32 x i32] addrspace(3)* @"\01?g_tileCullingResults@@3UMDAOOccluderCulling@@A.1", i32 0, i32 2), align 4
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %136, i32 12, i32 %140, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %141 = load i32, i32 addrspace(3)* getelementptr inbounds ([32 x i32], [32 x i32] addrspace(3)* @"\01?g_tileCullingResults@@3UMDAOOccluderCulling@@A.1", i32 0, i32 3), align 4
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %136, i32 16, i32 %141, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %142 = load i32, i32 addrspace(3)* getelementptr inbounds ([32 x i32], [32 x i32] addrspace(3)* @"\01?g_tileCullingResults@@3UMDAOOccluderCulling@@A.1", i32 0, i32 4), align 4
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %136, i32 20, i32 %142, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %143 = load i32, i32 addrspace(3)* getelementptr inbounds ([32 x i32], [32 x i32] addrspace(3)* @"\01?g_tileCullingResults@@3UMDAOOccluderCulling@@A.1", i32 0, i32 5), align 4
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %136, i32 24, i32 %143, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %144 = load i32, i32 addrspace(3)* getelementptr inbounds ([32 x i32], [32 x i32] addrspace(3)* @"\01?g_tileCullingResults@@3UMDAOOccluderCulling@@A.1", i32 0, i32 6), align 4
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %136, i32 28, i32 %144, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %145 = load i32, i32 addrspace(3)* getelementptr inbounds ([32 x i32], [32 x i32] addrspace(3)* @"\01?g_tileCullingResults@@3UMDAOOccluderCulling@@A.1", i32 0, i32 7), align 4
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %136, i32 32, i32 %145, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %146 = load i32, i32 addrspace(3)* getelementptr inbounds ([32 x i32], [32 x i32] addrspace(3)* @"\01?g_tileCullingResults@@3UMDAOOccluderCulling@@A.1", i32 0, i32 8), align 4
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %136, i32 36, i32 %146, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %147 = load i32, i32 addrspace(3)* getelementptr inbounds ([32 x i32], [32 x i32] addrspace(3)* @"\01?g_tileCullingResults@@3UMDAOOccluderCulling@@A.1", i32 0, i32 9), align 4
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %136, i32 40, i32 %147, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %148 = load i32, i32 addrspace(3)* getelementptr inbounds ([32 x i32], [32 x i32] addrspace(3)* @"\01?g_tileCullingResults@@3UMDAOOccluderCulling@@A.1", i32 0, i32 10), align 4
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %136, i32 44, i32 %148, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %149 = load i32, i32 addrspace(3)* getelementptr inbounds ([32 x i32], [32 x i32] addrspace(3)* @"\01?g_tileCullingResults@@3UMDAOOccluderCulling@@A.1", i32 0, i32 11), align 4
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %136, i32 48, i32 %149, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %150 = load i32, i32 addrspace(3)* getelementptr inbounds ([32 x i32], [32 x i32] addrspace(3)* @"\01?g_tileCullingResults@@3UMDAOOccluderCulling@@A.1", i32 0, i32 12), align 4
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %136, i32 52, i32 %150, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %151 = load i32, i32 addrspace(3)* getelementptr inbounds ([32 x i32], [32 x i32] addrspace(3)* @"\01?g_tileCullingResults@@3UMDAOOccluderCulling@@A.1", i32 0, i32 13), align 4
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %136, i32 56, i32 %151, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %152 = load i32, i32 addrspace(3)* getelementptr inbounds ([32 x i32], [32 x i32] addrspace(3)* @"\01?g_tileCullingResults@@3UMDAOOccluderCulling@@A.1", i32 0, i32 14), align 4
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %136, i32 60, i32 %152, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %153 = load i32, i32 addrspace(3)* getelementptr inbounds ([32 x i32], [32 x i32] addrspace(3)* @"\01?g_tileCullingResults@@3UMDAOOccluderCulling@@A.1", i32 0, i32 15), align 4
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %136, i32 64, i32 %153, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %154 = load i32, i32 addrspace(3)* getelementptr inbounds ([32 x i32], [32 x i32] addrspace(3)* @"\01?g_tileCullingResults@@3UMDAOOccluderCulling@@A.1", i32 0, i32 16), align 4
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %136, i32 68, i32 %154, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %155 = load i32, i32 addrspace(3)* getelementptr inbounds ([32 x i32], [32 x i32] addrspace(3)* @"\01?g_tileCullingResults@@3UMDAOOccluderCulling@@A.1", i32 0, i32 17), align 4
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %136, i32 72, i32 %155, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %156 = load i32, i32 addrspace(3)* getelementptr inbounds ([32 x i32], [32 x i32] addrspace(3)* @"\01?g_tileCullingResults@@3UMDAOOccluderCulling@@A.1", i32 0, i32 18), align 4
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %136, i32 76, i32 %156, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %157 = load i32, i32 addrspace(3)* getelementptr inbounds ([32 x i32], [32 x i32] addrspace(3)* @"\01?g_tileCullingResults@@3UMDAOOccluderCulling@@A.1", i32 0, i32 19), align 4
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %136, i32 80, i32 %157, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %158 = load i32, i32 addrspace(3)* getelementptr inbounds ([32 x i32], [32 x i32] addrspace(3)* @"\01?g_tileCullingResults@@3UMDAOOccluderCulling@@A.1", i32 0, i32 20), align 4
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %136, i32 84, i32 %158, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %159 = load i32, i32 addrspace(3)* getelementptr inbounds ([32 x i32], [32 x i32] addrspace(3)* @"\01?g_tileCullingResults@@3UMDAOOccluderCulling@@A.1", i32 0, i32 21), align 4
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %136, i32 88, i32 %159, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %160 = load i32, i32 addrspace(3)* getelementptr inbounds ([32 x i32], [32 x i32] addrspace(3)* @"\01?g_tileCullingResults@@3UMDAOOccluderCulling@@A.1", i32 0, i32 22), align 4
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %136, i32 92, i32 %160, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %161 = load i32, i32 addrspace(3)* getelementptr inbounds ([32 x i32], [32 x i32] addrspace(3)* @"\01?g_tileCullingResults@@3UMDAOOccluderCulling@@A.1", i32 0, i32 23), align 4
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %136, i32 96, i32 %161, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %162 = load i32, i32 addrspace(3)* getelementptr inbounds ([32 x i32], [32 x i32] addrspace(3)* @"\01?g_tileCullingResults@@3UMDAOOccluderCulling@@A.1", i32 0, i32 24), align 4
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %136, i32 100, i32 %162, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %163 = load i32, i32 addrspace(3)* getelementptr inbounds ([32 x i32], [32 x i32] addrspace(3)* @"\01?g_tileCullingResults@@3UMDAOOccluderCulling@@A.1", i32 0, i32 25), align 4
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %136, i32 104, i32 %163, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %164 = load i32, i32 addrspace(3)* getelementptr inbounds ([32 x i32], [32 x i32] addrspace(3)* @"\01?g_tileCullingResults@@3UMDAOOccluderCulling@@A.1", i32 0, i32 26), align 4
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %136, i32 108, i32 %164, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %165 = load i32, i32 addrspace(3)* getelementptr inbounds ([32 x i32], [32 x i32] addrspace(3)* @"\01?g_tileCullingResults@@3UMDAOOccluderCulling@@A.1", i32 0, i32 27), align 4
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %136, i32 112, i32 %165, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %166 = load i32, i32 addrspace(3)* getelementptr inbounds ([32 x i32], [32 x i32] addrspace(3)* @"\01?g_tileCullingResults@@3UMDAOOccluderCulling@@A.1", i32 0, i32 28), align 4
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %136, i32 116, i32 %166, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %167 = load i32, i32 addrspace(3)* getelementptr inbounds ([32 x i32], [32 x i32] addrspace(3)* @"\01?g_tileCullingResults@@3UMDAOOccluderCulling@@A.1", i32 0, i32 29), align 4
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %136, i32 120, i32 %167, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %168 = load i32, i32 addrspace(3)* getelementptr inbounds ([32 x i32], [32 x i32] addrspace(3)* @"\01?g_tileCullingResults@@3UMDAOOccluderCulling@@A.1", i32 0, i32 30), align 4
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %136, i32 124, i32 %168, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %169 = load i32, i32 addrspace(3)* getelementptr inbounds ([32 x i32], [32 x i32] addrspace(3)* @"\01?g_tileCullingResults@@3UMDAOOccluderCulling@@A.1", i32 0, i32 31), align 4
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %136, i32 128, i32 %169, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %170

; <label>:170                                     ; preds = %132, %131
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #2

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
!dx.entryPoints = !{!15}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !10, !13, null}
!5 = !{!6, !8}
!6 = !{i32 0, %"class.StructuredBuffer<MDAOTileBBox>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i32 0, !7}
!7 = !{i32 1, i32 32}
!8 = !{i32 1, %"class.StructuredBuffer<MDAOOccluder>"* undef, !"", i32 0, i32 1, i32 1, i32 12, i32 0, !9}
!9 = !{i32 1, i32 48}
!10 = !{!11}
!11 = !{i32 0, %"class.RWStructuredBuffer<MDAOOccluderCulling>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i1 false, i1 false, i1 false, !12}
!12 = !{i32 1, i32 132}
!13 = !{!14}
!14 = !{i32 0, %MDAOConstants* undef, !"", i32 0, i32 0, i32 1, i32 176, null}
!15 = !{void ()* @cs_mdao_occluder_culling, !"cs_mdao_occluder_culling", null, !4, !16}
!16 = !{i32 0, i64 272, i32 4, !17}
!17 = !{i32 64, i32 1, i32 1}
!18 = distinct !{!18, !"dx.controlflow.hints", i32 2}
!19 = !{!20, !20, i64 0}
!20 = !{!"int", !21, i64 0}
!21 = !{!"omnipotent char", !22, i64 0}
!22 = !{!"Simple C/C++ TBAA"}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}

