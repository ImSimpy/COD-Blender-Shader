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
; shader hash: e432573c427ccc073c2a0c7c2a04e55d
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
;   [16 x i8] (type annotation not present)
;
; }
;
; cbuffer 
; {
;
;   [48 x i8] (type annotation not present)
;
; }
;
; cbuffer 
; {
;
;   [16 x i8] (type annotation not present)
;
; }
;
; cbuffer 
; {
;
;   [16 x i8] (type annotation not present)
;
; }
;
; Resource bind info for 
; {
;
;   [8 x i8] (type annotation not present)
;
; }
;
; Resource bind info for 
; {
;
;   [8 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb4     1
;                                   cbuffer      NA          NA     CB1            cb0     1
;                                   cbuffer      NA          NA     CB2            cb1     1
;                                   cbuffer      NA          NA     CB3            cb2     1
;                                   texture    byte         r/o      T0             t0     1
;                                   texture    byte         r/o      T1             t1     1
;                                   texture    byte         r/o      T2             t2     1
;                                   texture    byte         r/o      T3             t3     1
;                                   texture    byte         r/o      T4             t8     1
;                                   texture    byte         r/o      T5             t4     1
;                                   texture    byte         r/o      T6             t5     1
;                                   texture    byte         r/o      T7             t6     1
;                                   texture    byte         r/o      T8             t7     1
;                                   texture     u32         buf      T9            t13     1
;                                   texture     u32         buf     T10            t14     1
;                                   texture    byte         r/o     T11            t15     1
;                                   texture    byte         r/o     T12            t16     1
;                                   texture     u32         buf     T13            t17     1
;                                   texture     u32         buf     T14            t18     1
;                                   texture     u32         buf     T15            t19     1
;                                   texture     u32         buf     T16            t20     1
;                                   texture     u32         buf     T17            t21     1
;                                   texture     u32         buf     T18            t22     1
;                                   texture  struct         r/o     T19            t23     1
;                                       UAV  struct         r/w      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Buffer<unsigned int>" = type { i32 }
%"class.StructuredBuffer<vector<unsigned int, 2> >" = type { <2 x i32> }
%"class.RWStructuredBuffer<vector<unsigned int, 2> >" = type { <2 x i32> }
%GfxLGBoundConsts = type { i32, i32, i32, i32 }
%GfxSampleLightGridVolumesLightingConsts = type { i32, i32, float, float, i32, i32, i32, i32, <3 x float>, i32 }
%GfxSampleLightGridVolumesLightingVoxelTreeConsts = type { i32, i32, i32, i32 }
%GfxCombineLightGridVolumesSamplingListsConsts = type { i32, i32, i32, i32 }

@"\01?g_batchVolumesProbeCounts@@3PAHA" = external addrspace(3) global [64 x i32], align 4

define void @cs_sample_per_lightgrid_volumes_lighting() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %27 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %28 = alloca [9 x float], align 4
  %29 = alloca [9 x float], align 4
  %30 = alloca [9 x float], align 4
  %31 = alloca [4 x i32], align 4
  %32 = alloca [4 x float], align 4
  %33 = alloca [4 x i32], align 4
  %34 = alloca [4 x float], align 4
  %35 = icmp ugt i32 %26, 16383
  br i1 %35, label %1718, label %36, !dx.controlflow.hints !38

; <label>:36                                      ; preds = %0
  %37 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %38 = extractvalue %dx.types.CBufRet.i32 %37, 0
  %39 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %38, i32 undef)  ; BufferLoad(srv,index,wot)
  %40 = extractvalue %dx.types.ResRet.i32 %39, 0
  %41 = mul nsw i32 %26, 20
  %42 = add i32 %38, %41
  %43 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %42, i32 undef)  ; BufferLoad(srv,index,wot)
  %44 = extractvalue %dx.types.ResRet.i32 %43, 0
  %45 = lshr i32 %44, 12
  %46 = and i32 %44, 4095
  %47 = add i32 %45, %27
  %48 = icmp ult i32 %47, %40
  %49 = mul i32 %47, 20
  %50 = add i32 %49, %38
  %51 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %50, i32 undef)  ; BufferLoad(srv,index,wot)
  %52 = extractvalue %dx.types.ResRet.i32 %51, 0
  %53 = select i1 %48, i32 %52, i32 -1
  %54 = icmp ne i32 %53, -1
  %55 = shl i32 %53, 5
  %56 = or i32 %55, 12
  %57 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %56, i32 undef)  ; BufferLoad(srv,index,wot)
  %58 = extractvalue %dx.types.ResRet.i32 %57, 0
  %59 = and i32 %58, 255
  %60 = lshr i32 %58, 8
  %61 = and i32 %60, 255
  %62 = lshr i32 %58, 16
  %63 = and i32 %62, 255
  %64 = mul nuw nsw i32 %61, %59
  %65 = mul nuw nsw i32 %64, %63
  %66 = select i1 %54, i32 %65, i32 0
  %67 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?g_batchVolumesProbeCounts@@3PAHA", i32 0, i32 %27
  store i32 %66, i32 addrspace(3)* %67, align 4, !tbaa !39, !noalias !43
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %68 = add i32 %46, %27
  %69 = load i32, i32 addrspace(3)* getelementptr inbounds ([64 x i32], [64 x i32] addrspace(3)* @"\01?g_batchVolumesProbeCounts@@3PAHA", i32 0, i32 0), align 4, !tbaa !39, !noalias !43
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %84, label %71

; <label>:71                                      ; preds = %36
  br label %72

; <label>:72                                      ; preds = %72, %71
  %73 = phi i32 [ %80, %72 ], [ %69, %71 ]
  %74 = phi i32 [ %76, %72 ], [ %68, %71 ]
  %75 = phi i32 [ %77, %72 ], [ 0, %71 ]
  %76 = sub nsw i32 %74, %73
  %77 = add nuw nsw i32 %75, 1
  %78 = icmp slt i32 %77, 64
  %79 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?g_batchVolumesProbeCounts@@3PAHA", i32 0, i32 %77
  %80 = load i32, i32 addrspace(3)* %79, align 4, !tbaa !39, !noalias !43
  %81 = icmp sge i32 %76, %80
  %82 = and i1 %78, %81
  br i1 %82, label %72, label %83

; <label>:83                                      ; preds = %72
  br label %84

; <label>:84                                      ; preds = %83, %36
  %85 = phi i32 [ %68, %36 ], [ %76, %83 ]
  %86 = phi i32 [ 0, %36 ], [ %77, %83 ]
  %87 = add nsw i32 %86, %45
  %88 = icmp ult i32 %87, %40
  br i1 %88, label %89, label %96, !dx.controlflow.hints !47

; <label>:89                                      ; preds = %84
  %90 = mul nsw i32 %87, 20
  %91 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %92 = extractvalue %dx.types.CBufRet.i32 %91, 0
  %93 = add i32 %92, %90
  %94 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %93, i32 undef)  ; BufferLoad(srv,index,wot)
  %95 = extractvalue %dx.types.ResRet.i32 %94, 0
  br label %99

; <label>:96                                      ; preds = %84
  %97 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %98 = extractvalue %dx.types.CBufRet.i32 %97, 0
  br label %99

; <label>:99                                      ; preds = %96, %89
  %100 = phi i32 [ %95, %89 ], [ %98, %96 ]
  %101 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %102 = extractvalue %dx.types.CBufRet.i32 %101, 0
  %103 = icmp slt i32 %100, %102
  br i1 %103, label %104, label %1718, !dx.controlflow.hints !48

; <label>:104                                     ; preds = %99
  %105 = shl i32 %100, 6
  %106 = or i32 %105, 52
  %107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %106, i32 undef)  ; BufferLoad(srv,index,wot)
  %108 = extractvalue %dx.types.ResRet.i32 %107, 0
  %109 = or i32 %105, 56
  %110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %109, i32 undef)  ; BufferLoad(srv,index,wot)
  %111 = extractvalue %dx.types.ResRet.i32 %110, 0
  %112 = or i32 %105, 60
  %113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %112, i32 undef)  ; BufferLoad(srv,index,wot)
  %114 = extractvalue %dx.types.ResRet.i32 %113, 0
  %115 = shl i32 %100, 5
  %116 = or i32 %115, 12
  %117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %116, i32 undef)  ; BufferLoad(srv,index,wot)
  %118 = extractvalue %dx.types.ResRet.i32 %117, 0
  %119 = or i32 %115, 28
  %120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %119, i32 undef)  ; BufferLoad(srv,index,wot)
  %121 = extractvalue %dx.types.ResRet.i32 %120, 0
  %122 = and i32 %118, 255
  %123 = lshr i32 %118, 8
  %124 = and i32 %123, 255
  %125 = lshr i32 %118, 16
  %126 = and i32 %125, 255
  %127 = mul nuw nsw i32 %124, %122
  %128 = udiv i32 %85, %127
  %129 = urem i32 %85, %127
  %130 = udiv i32 %129, %122
  %131 = urem i32 %129, %122
  %132 = and i32 %121, 1073741824
  %133 = icmp eq i32 %132, 0
  %134 = and i32 %121, -1610612736
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %1718, !dx.controlflow.hints !49

; <label>:136                                     ; preds = %104
  %137 = getelementptr inbounds [9 x float], [9 x float]* %30, i32 0, i32 0
  store float 0.000000e+00, float* %137, align 4
  %138 = getelementptr inbounds [9 x float], [9 x float]* %30, i32 0, i32 1
  store float 0.000000e+00, float* %138, align 4
  %139 = getelementptr inbounds [9 x float], [9 x float]* %30, i32 0, i32 2
  store float 0.000000e+00, float* %139, align 4
  %140 = getelementptr inbounds [9 x float], [9 x float]* %30, i32 0, i32 3
  store float 0.000000e+00, float* %140, align 4
  %141 = getelementptr inbounds [9 x float], [9 x float]* %30, i32 0, i32 4
  store float 0.000000e+00, float* %141, align 4
  %142 = getelementptr inbounds [9 x float], [9 x float]* %30, i32 0, i32 5
  store float 0.000000e+00, float* %142, align 4
  %143 = getelementptr inbounds [9 x float], [9 x float]* %30, i32 0, i32 6
  store float 0.000000e+00, float* %143, align 4
  %144 = getelementptr inbounds [9 x float], [9 x float]* %30, i32 0, i32 7
  store float 0.000000e+00, float* %144, align 4
  %145 = getelementptr inbounds [9 x float], [9 x float]* %30, i32 0, i32 8
  store float 0.000000e+00, float* %145, align 4
  %146 = getelementptr inbounds [9 x float], [9 x float]* %29, i32 0, i32 0
  store float 0.000000e+00, float* %146, align 4
  %147 = getelementptr inbounds [9 x float], [9 x float]* %29, i32 0, i32 1
  store float 0.000000e+00, float* %147, align 4
  %148 = getelementptr inbounds [9 x float], [9 x float]* %29, i32 0, i32 2
  store float 0.000000e+00, float* %148, align 4
  %149 = getelementptr inbounds [9 x float], [9 x float]* %29, i32 0, i32 3
  store float 0.000000e+00, float* %149, align 4
  %150 = getelementptr inbounds [9 x float], [9 x float]* %29, i32 0, i32 4
  store float 0.000000e+00, float* %150, align 4
  %151 = getelementptr inbounds [9 x float], [9 x float]* %29, i32 0, i32 5
  store float 0.000000e+00, float* %151, align 4
  %152 = getelementptr inbounds [9 x float], [9 x float]* %29, i32 0, i32 6
  store float 0.000000e+00, float* %152, align 4
  %153 = getelementptr inbounds [9 x float], [9 x float]* %29, i32 0, i32 7
  store float 0.000000e+00, float* %153, align 4
  %154 = getelementptr inbounds [9 x float], [9 x float]* %29, i32 0, i32 8
  store float 0.000000e+00, float* %154, align 4
  %155 = getelementptr inbounds [9 x float], [9 x float]* %28, i32 0, i32 0
  store float 0.000000e+00, float* %155, align 4
  %156 = getelementptr inbounds [9 x float], [9 x float]* %28, i32 0, i32 1
  store float 0.000000e+00, float* %156, align 4
  %157 = getelementptr inbounds [9 x float], [9 x float]* %28, i32 0, i32 2
  store float 0.000000e+00, float* %157, align 4
  %158 = getelementptr inbounds [9 x float], [9 x float]* %28, i32 0, i32 3
  store float 0.000000e+00, float* %158, align 4
  %159 = getelementptr inbounds [9 x float], [9 x float]* %28, i32 0, i32 4
  store float 0.000000e+00, float* %159, align 4
  %160 = getelementptr inbounds [9 x float], [9 x float]* %28, i32 0, i32 5
  store float 0.000000e+00, float* %160, align 4
  %161 = getelementptr inbounds [9 x float], [9 x float]* %28, i32 0, i32 6
  store float 0.000000e+00, float* %161, align 4
  %162 = getelementptr inbounds [9 x float], [9 x float]* %28, i32 0, i32 7
  store float 0.000000e+00, float* %162, align 4
  %163 = getelementptr inbounds [9 x float], [9 x float]* %28, i32 0, i32 8
  store float 0.000000e+00, float* %163, align 4
  %164 = and i32 %108, 524287
  %165 = lshr i32 %108, 19
  %166 = and i32 %165, 4095
  %167 = mul nuw nsw i32 %127, %126
  %168 = icmp eq i32 %166, %167
  %169 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %170 = extractvalue %dx.types.CBufRet.i32 %169, 2
  %171 = icmp ne i32 %170, 0
  %172 = icmp ne i32 %164, 65535
  %173 = and i1 %172, %171
  %174 = and i1 %168, %173
  %175 = zext i1 %174 to i32
  br i1 %173, label %176, label %200, !dx.controlflow.hints !50

; <label>:176                                     ; preds = %136
  %177 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %178 = extractvalue %dx.types.CBufRet.i32 %177, 0
  %179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %178, i32 undef)  ; BufferLoad(srv,index,wot)
  %180 = extractvalue %dx.types.ResRet.i32 %179, 0
  %181 = icmp eq i32 %180, -1
  br i1 %181, label %200, label %182, !dx.controlflow.hints !51

; <label>:182                                     ; preds = %176
  %183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %164, i32 undef)  ; BufferLoad(srv,index,wot)
  %184 = extractvalue %dx.types.ResRet.i32 %183, 0
  %185 = and i32 %180, 31
  %186 = shl i32 1, %185
  %187 = and i32 %184, %186
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %200, label %189, !dx.controlflow.hints !52

; <label>:189                                     ; preds = %182
  %190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %164, i32 undef)  ; BufferLoad(srv,index,wot)
  %191 = extractvalue %dx.types.ResRet.i32 %190, 0
  %192 = add i32 %186, -1
  %193 = and i32 %184, %192
  %194 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %193)  ; Countbits(value)
  %195 = add i32 %191, %194
  %196 = mul i32 %195, 13
  %197 = add i32 %196, 12
  %198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %197, i32 0)  ; BufferLoad(srv,index,wot)
  %199 = extractvalue %dx.types.ResRet.i32 %198, 1
  br label %200

; <label>:200                                     ; preds = %189, %182, %176, %136
  %201 = phi i32 [ %175, %189 ], [ %175, %136 ], [ 0, %176 ], [ 0, %182 ]
  %202 = phi i32 [ %199, %189 ], [ -1, %136 ], [ -1, %176 ], [ -1, %182 ]
  %203 = icmp ne i32 %201, 0
  %204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %205 = extractvalue %dx.types.CBufRet.f32 %204, 2
  %206 = icmp ugt i32 %122, 1
  %207 = select i1 %206, float 0.000000e+00, float 5.000000e-01
  %208 = icmp ugt i32 %124, 1
  %209 = select i1 %208, float 0.000000e+00, float 5.000000e-01
  %210 = icmp ugt i32 %126, 1
  %211 = select i1 %210, float 0.000000e+00, float 5.000000e-01
  %212 = uitofp i32 %122 to float
  %213 = uitofp i32 %124 to float
  %214 = uitofp i32 %126 to float
  %215 = fadd fast float %212, -1.000000e+00
  %216 = fadd fast float %213, -1.000000e+00
  %217 = fadd fast float %214, -1.000000e+00
  %218 = call float @dx.op.binary.f32(i32 35, float 1.000000e+00, float %215)  ; FMax(a,b)
  %219 = call float @dx.op.binary.f32(i32 35, float 1.000000e+00, float %216)  ; FMax(a,b)
  %220 = call float @dx.op.binary.f32(i32 35, float 1.000000e+00, float %217)  ; FMax(a,b)
  %221 = fdiv fast float 1.000000e+00, %218
  %222 = fdiv fast float 1.000000e+00, %219
  %223 = fdiv fast float 1.000000e+00, %220
  %224 = uitofp i32 %131 to float
  %225 = uitofp i32 %130 to float
  %226 = uitofp i32 %128 to float
  %227 = fadd fast float %224, %207
  %228 = fadd fast float %225, %209
  %229 = fadd fast float %211, %226
  %230 = fmul fast float %221, %227
  %231 = fmul fast float %222, %228
  %232 = fmul fast float %223, %229
  %233 = fmul fast float %221, %205
  %234 = fsub fast float -0.000000e+00, %233
  %235 = fmul fast float %222, %205
  %236 = fsub fast float -0.000000e+00, %235
  %237 = fmul fast float %223, %205
  %238 = fsub fast float -0.000000e+00, %237
  %239 = fmul fast float %230, 5.000000e-01
  %240 = fmul fast float %231, 5.000000e-01
  %241 = fmul fast float %232, 5.000000e-01
  %242 = fsub fast float %233, %239
  %243 = fsub fast float %235, %240
  %244 = fsub fast float %237, %241
  %245 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %242)  ; FMax(a,b)
  %246 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %243)  ; FMax(a,b)
  %247 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %244)  ; FMax(a,b)
  %248 = call float @dx.op.binary.f32(i32 36, float %233, float %245)  ; FMin(a,b)
  %249 = call float @dx.op.binary.f32(i32 36, float %235, float %246)  ; FMin(a,b)
  %250 = call float @dx.op.binary.f32(i32 36, float %237, float %247)  ; FMin(a,b)
  %251 = fsub fast float 5.000000e-01, %233
  %252 = fsub fast float 5.000000e-01, %235
  %253 = fsub fast float 5.000000e-01, %237
  %254 = fsub fast float %251, %239
  %255 = fsub fast float %252, %240
  %256 = fsub fast float %253, %241
  %257 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %254)  ; FMin(a,b)
  %258 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %255)  ; FMin(a,b)
  %259 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %256)  ; FMin(a,b)
  %260 = call float @dx.op.binary.f32(i32 35, float %234, float %257)  ; FMax(a,b)
  %261 = call float @dx.op.binary.f32(i32 35, float %236, float %258)  ; FMax(a,b)
  %262 = call float @dx.op.binary.f32(i32 35, float %238, float %259)  ; FMax(a,b)
  %263 = fadd fast float %248, %230
  %264 = fadd fast float %249, %231
  %265 = fadd fast float %250, %232
  %266 = fadd fast float %263, %260
  %267 = fadd fast float %264, %261
  %268 = fadd fast float %265, %262
  %269 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %105, i32 undef)  ; BufferLoad(srv,index,wot)
  %270 = extractvalue %dx.types.ResRet.f32 %269, 0
  %271 = or i32 %105, 16
  %272 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %271, i32 undef)  ; BufferLoad(srv,index,wot)
  %273 = extractvalue %dx.types.ResRet.f32 %272, 1
  %274 = or i32 %105, 32
  %275 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %274, i32 undef)  ; BufferLoad(srv,index,wot)
  %276 = extractvalue %dx.types.ResRet.f32 %275, 2
  %277 = fmul fast float %276, %273
  %278 = extractvalue %dx.types.ResRet.f32 %272, 2
  %279 = extractvalue %dx.types.ResRet.f32 %275, 1
  %280 = fmul fast float %279, %278
  %281 = fsub fast float %277, %280
  %282 = fmul fast float %281, %270
  %283 = extractvalue %dx.types.ResRet.f32 %269, 1
  %284 = extractvalue %dx.types.ResRet.f32 %272, 0
  %285 = fmul fast float %276, %284
  %286 = extractvalue %dx.types.ResRet.f32 %275, 0
  %287 = fmul fast float %286, %278
  %288 = fsub fast float %285, %287
  %289 = fmul fast float %288, %283
  %290 = fsub fast float %282, %289
  %291 = extractvalue %dx.types.ResRet.f32 %269, 2
  %292 = fmul fast float %279, %284
  %293 = fmul fast float %286, %273
  %294 = fsub fast float %292, %293
  %295 = fmul fast float %294, %291
  %296 = fadd fast float %290, %295
  %297 = extractvalue %dx.types.ResRet.f32 %269, 3
  %298 = fmul fast float %281, %297
  %299 = extractvalue %dx.types.ResRet.f32 %272, 3
  %300 = fmul fast float %276, %283
  %301 = fmul fast float %279, %291
  %302 = fsub fast float %300, %301
  %303 = fmul fast float %302, %299
  %304 = fsub fast float %303, %298
  %305 = extractvalue %dx.types.ResRet.f32 %275, 3
  %306 = fmul fast float %278, %283
  %307 = fmul fast float %273, %291
  %308 = fsub fast float %306, %307
  %309 = fmul fast float %308, %305
  %310 = fsub fast float %304, %309
  %311 = fmul fast float %288, %297
  %312 = fmul fast float %276, %270
  %313 = fmul fast float %286, %291
  %314 = fsub fast float %312, %313
  %315 = fmul fast float %314, %299
  %316 = fsub fast float %311, %315
  %317 = fmul fast float %278, %270
  %318 = fmul fast float %284, %291
  %319 = fsub fast float %317, %318
  %320 = fmul fast float %319, %305
  %321 = fadd fast float %316, %320
  %322 = fmul fast float %294, %297
  %323 = fmul fast float %279, %270
  %324 = fmul fast float %286, %283
  %325 = fsub fast float %323, %324
  %326 = fmul fast float %325, %299
  %327 = fsub fast float %326, %322
  %328 = fmul fast float %273, %270
  %329 = fmul fast float %284, %283
  %330 = fsub fast float %328, %329
  %331 = fmul fast float %330, %305
  %332 = fsub fast float %327, %331
  %333 = fsub fast float %301, %300
  %334 = fsub fast float %287, %285
  %335 = fsub fast float %318, %317
  %336 = fsub fast float %324, %323
  %337 = fdiv fast float 1.000000e+00, %296
  %338 = fmul fast float %337, %281
  %339 = fmul fast float %337, %333
  %340 = fmul fast float %337, %308
  %341 = fmul fast float %337, %310
  %342 = fmul fast float %337, %334
  %343 = fmul fast float %337, %314
  %344 = fmul fast float %337, %335
  %345 = fmul fast float %337, %321
  %346 = fmul fast float %337, %294
  %347 = fmul fast float %337, %336
  %348 = fmul fast float %330, %337
  %349 = fmul fast float %337, %332
  %350 = call float @dx.op.dot4.f32(i32 56, float %338, float %339, float %340, float %341, float %266, float %267, float %268, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %351 = call float @dx.op.dot4.f32(i32 56, float %342, float %343, float %344, float %345, float %266, float %267, float %268, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %352 = call float @dx.op.dot4.f32(i32 56, float %346, float %347, float %348, float %349, float %266, float %267, float %268, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %353 = lshr i32 %114, 16
  %354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %353)  ; LegacyF16ToF32(value)
  %355 = and i32 %114, 65535
  %356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %355)  ; LegacyF16ToF32(value)
  %357 = and i32 %111, 65535
  %358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %357)  ; LegacyF16ToF32(value)
  %359 = and i32 %111, 65536
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %374, label %361, !dx.controlflow.hints !53

; <label>:361                                     ; preds = %200
  %362 = fadd fast float %266, -5.000000e-01
  %363 = fadd fast float %267, -5.000000e-01
  %364 = fadd fast float %268, -5.000000e-01
  %365 = call float @dx.op.dot3.f32(i32 55, float %362, float %363, float %364, float %354, float %356, float %358)  ; Dot3(ax,ay,az,bx,by,bz)
  %366 = fcmp fast ogt float %365, 0.000000e+00
  %367 = select i1 %366, float 1.000000e+00, float -1.000000e+00
  %368 = call float @dx.op.dot3.f32(i32 55, float %338, float %339, float %340, float %354, float %356, float %358)  ; Dot3(ax,ay,az,bx,by,bz)
  %369 = call float @dx.op.dot3.f32(i32 55, float %342, float %343, float %344, float %354, float %356, float %358)  ; Dot3(ax,ay,az,bx,by,bz)
  %370 = call float @dx.op.dot3.f32(i32 55, float %346, float %347, float %348, float %354, float %356, float %358)  ; Dot3(ax,ay,az,bx,by,bz)
  %371 = fmul fast float %367, %368
  %372 = fmul fast float %369, %367
  %373 = fmul fast float %370, %367
  br label %374

; <label>:374                                     ; preds = %361, %200
  %375 = phi float [ %371, %361 ], [ %354, %200 ]
  %376 = phi float [ %372, %361 ], [ %356, %200 ]
  %377 = phi float [ %373, %361 ], [ %358, %200 ]
  %378 = fadd fast float %375, %350
  %379 = fadd fast float %376, %351
  %380 = fadd fast float %377, %352
  %381 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %382 = extractvalue %dx.types.CBufRet.i32 %381, 2
  %383 = extractvalue %dx.types.CBufRet.i32 %381, 1
  %384 = extractvalue %dx.types.CBufRet.i32 %381, 0
  %385 = getelementptr inbounds [4 x float], [4 x float]* %32, i32 0, i32 0
  store float 0.000000e+00, float* %385, align 4
  %386 = getelementptr inbounds [4 x float], [4 x float]* %32, i32 0, i32 1
  store float 0.000000e+00, float* %386, align 4
  %387 = getelementptr inbounds [4 x float], [4 x float]* %32, i32 0, i32 2
  store float 0.000000e+00, float* %387, align 4
  %388 = getelementptr inbounds [4 x float], [4 x float]* %32, i32 0, i32 3
  store float 0.000000e+00, float* %388, align 4
  br i1 %133, label %389, label %707, !dx.controlflow.hints !54

; <label>:389                                     ; preds = %374
  %390 = icmp eq i32 %202, -1
  br i1 %390, label %391, label %542, !dx.controlflow.hints !55

; <label>:391                                     ; preds = %389
  %392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %393 = extractvalue %dx.types.ResRet.i32 %392, 0
  %394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %395 = extractvalue %dx.types.ResRet.i32 %394, 0
  %396 = extractvalue %dx.types.ResRet.i32 %394, 1
  %397 = extractvalue %dx.types.ResRet.i32 %394, 2
  %398 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %399 = extractvalue %dx.types.ResRet.f32 %398, 0
  %400 = extractvalue %dx.types.ResRet.f32 %398, 1
  %401 = extractvalue %dx.types.ResRet.f32 %398, 2
  %402 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %403 = extractvalue %dx.types.ResRet.f32 %402, 0
  %404 = extractvalue %dx.types.ResRet.f32 %402, 1
  %405 = extractvalue %dx.types.ResRet.f32 %402, 2
  %406 = fsub fast float %378, %399
  %407 = fsub fast float %379, %400
  %408 = fsub fast float %380, %401
  %409 = fptoui float %406 to i32
  %410 = fptoui float %407 to i32
  %411 = fptoui float %408 to i32
  %412 = fcmp fast olt float %378, %399
  %413 = fcmp fast olt float %379, %400
  %414 = fcmp fast olt float %380, %401
  %415 = or i1 %412, %413
  %416 = or i1 %414, %415
  %417 = fcmp fast oge float %378, %403
  %418 = fcmp fast oge float %379, %404
  %419 = fcmp fast oge float %380, %405
  %420 = or i1 %417, %418
  %421 = or i1 %419, %420
  %422 = or i1 %416, %421
  %423 = and i32 %395, 31
  %424 = lshr i32 %409, %423
  %425 = lshr i32 %410, %423
  %426 = lshr i32 %411, %423
  %427 = mul i32 %425, %393
  %428 = add i32 %427, %424
  %429 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %430 = extractvalue %dx.types.CBufRet.i32 %429, 0
  %431 = icmp ult i32 %428, %430
  br i1 %431, label %432, label %448, !dx.controlflow.hints !56

; <label>:432                                     ; preds = %391
  %433 = mul i32 %428, 12
  %434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %433, i32 undef)  ; BufferLoad(srv,index,wot)
  %435 = extractvalue %dx.types.ResRet.i32 %434, 0
  %436 = add i32 %433, 4
  %437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %436, i32 undef)  ; BufferLoad(srv,index,wot)
  %438 = extractvalue %dx.types.ResRet.i32 %437, 0
  %439 = add i32 %433, 8
  %440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %441 = extractvalue %dx.types.ResRet.i32 %440, 0
  %442 = icmp ult i32 %426, %438
  %443 = icmp ugt i32 %426, %441
  %444 = or i1 %442, %443
  %445 = add i32 %435, %426
  %446 = sub i32 %445, %438
  %447 = select i1 %444, i32 -2147483648, i32 %446
  br label %448

; <label>:448                                     ; preds = %432, %391
  %449 = phi i32 [ %447, %432 ], [ -2147483648, %391 ]
  %450 = select i1 %422, i32 -2147483648, i32 %449
  %451 = icmp sgt i32 %450, -1
  %452 = and i32 %396, 31
  %453 = lshr i32 %409, %452
  %454 = lshr i32 %410, %452
  %455 = lshr i32 %411, %452
  %456 = and i32 %453, 3
  %457 = and i32 %455, 3
  %458 = shl nuw nsw i32 %457, 4
  %459 = shl i32 %454, 2
  %460 = and i32 %459, 12
  %461 = and i32 %458, 16
  %462 = or i32 %460, %456
  %463 = or i32 %462, %461
  %464 = shl i32 1, %463
  %465 = extractvalue %dx.types.CBufRet.i32 %429, 1
  %466 = icmp ult i32 %450, %465
  br i1 %466, label %467, label %485, !dx.controlflow.hints !57

; <label>:467                                     ; preds = %448
  %468 = lshr i32 %457, 1
  %469 = shl i32 %450, 4
  %470 = shl nuw nsw i32 %468, 2
  %471 = or i32 %469, %470
  %472 = or i32 %471, 8
  %473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %472, i32 undef)  ; BufferLoad(srv,index,wot)
  %474 = extractvalue %dx.types.ResRet.i32 %473, 0
  %475 = and i32 %474, %464
  %476 = icmp eq i32 %475, 0
  %477 = add i32 %464, -1
  %478 = and i32 %474, %477
  %479 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %478)  ; Countbits(value)
  %480 = or i32 %469, %470
  %481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %480, i32 undef)  ; BufferLoad(srv,index,wot)
  %482 = extractvalue %dx.types.ResRet.i32 %481, 0
  %483 = add i32 %482, %479
  %484 = select i1 %476, i32 -2147483648, i32 %483
  br label %485

; <label>:485                                     ; preds = %467, %448
  %486 = phi i32 [ %484, %467 ], [ -2147483648, %448 ]
  %487 = select i1 %451, i32 %486, i32 %450
  %488 = icmp sgt i32 %487, -1
  %489 = and i32 %397, 31
  %490 = lshr i32 %409, %489
  %491 = lshr i32 %410, %489
  %492 = lshr i32 %411, %489
  %493 = and i32 %490, 3
  %494 = and i32 %492, 3
  %495 = shl nuw nsw i32 %494, 4
  %496 = shl i32 %491, 2
  %497 = and i32 %496, 12
  %498 = and i32 %495, 16
  %499 = or i32 %497, %493
  %500 = or i32 %499, %498
  %501 = shl i32 1, %500
  %502 = icmp ult i32 %487, %465
  br i1 %502, label %503, label %521, !dx.controlflow.hints !57

; <label>:503                                     ; preds = %485
  %504 = lshr i32 %494, 1
  %505 = shl i32 %487, 4
  %506 = shl nuw nsw i32 %504, 2
  %507 = or i32 %505, %506
  %508 = or i32 %507, 8
  %509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %510 = extractvalue %dx.types.ResRet.i32 %509, 0
  %511 = and i32 %510, %501
  %512 = icmp eq i32 %511, 0
  %513 = add i32 %501, -1
  %514 = and i32 %510, %513
  %515 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %514)  ; Countbits(value)
  %516 = or i32 %505, %506
  %517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %516, i32 undef)  ; BufferLoad(srv,index,wot)
  %518 = extractvalue %dx.types.ResRet.i32 %517, 0
  %519 = add i32 %518, %515
  %520 = select i1 %512, i32 -2147483648, i32 %519
  br label %521

; <label>:521                                     ; preds = %503, %485
  %522 = phi i32 [ %520, %503 ], [ -2147483648, %485 ]
  %523 = select i1 %488, i32 %522, i32 %487
  br i1 %422, label %538, label %524, !dx.controlflow.hints !58

; <label>:524                                     ; preds = %521
  %525 = icmp eq i32 %523, -2147483648
  %526 = icmp eq i32 %487, -2147483648
  %527 = select i1 %526, i32 %450, i32 %487
  %528 = select i1 %525, i32 %527, i32 %523
  %529 = icmp sgt i32 %528, -1
  %530 = icmp ne i32 %382, -1
  %531 = and i1 %530, %529
  %532 = select i1 %531, i32 %382, i32 0
  %533 = add i32 %528, %383
  %534 = add i32 %533, %532
  %535 = shl i32 %534, 2
  %536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %535, i32 undef)  ; BufferLoad(srv,index,wot)
  %537 = extractvalue %dx.types.ResRet.i32 %536, 0
  br label %538

; <label>:538                                     ; preds = %524, %521
  %539 = phi i32 [ %537, %524 ], [ -1, %521 ]
  %540 = icmp eq i32 %539, -1
  %541 = select i1 %540, i32 %384, i32 %539
  br label %542

; <label>:542                                     ; preds = %538, %389
  %543 = phi i32 [ %541, %538 ], [ %202, %389 ]
  %544 = icmp eq i32 %543, -1
  br i1 %544, label %693, label %545

; <label>:545                                     ; preds = %542
  br label %546

; <label>:546                                     ; preds = %684, %545
  %547 = phi i32 [ %685, %684 ], [ 0, %545 ]
  %548 = phi i32 [ %549, %684 ], [ -1, %545 ]
  %549 = phi i32 [ %680, %684 ], [ %543, %545 ]
  %550 = phi float [ %656, %684 ], [ 0.000000e+00, %545 ]
  %551 = phi float [ %657, %684 ], [ 0.000000e+00, %545 ]
  %552 = phi float [ %658, %684 ], [ 0.000000e+00, %545 ]
  %553 = phi float [ %661, %684 ], [ 0.000000e+00, %545 ]
  %554 = icmp ugt i32 %547, 50
  br i1 %554, label %687, label %555, !dx.controlflow.hints !59

; <label>:555                                     ; preds = %546
  %556 = shl i32 %549, 4
  %557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %556, i32 undef)  ; BufferLoad(srv,index,wot)
  %558 = extractvalue %dx.types.ResRet.i32 %557, 0
  %559 = extractvalue %dx.types.ResRet.i32 %557, 1
  %560 = extractvalue %dx.types.ResRet.i32 %557, 2
  %561 = extractvalue %dx.types.ResRet.i32 %557, 3
  %562 = and i32 %558, 2147483647
  %563 = mul nsw i32 %562, 12
  %564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %563, i32 undef)  ; BufferLoad(srv,index,wot)
  %565 = extractvalue %dx.types.ResRet.i32 %564, 0
  %566 = extractvalue %dx.types.ResRet.i32 %564, 1
  %567 = extractvalue %dx.types.ResRet.i32 %564, 2
  %568 = and i32 %559, 2147483647
  %569 = mul nsw i32 %568, 12
  %570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %569, i32 undef)  ; BufferLoad(srv,index,wot)
  %571 = extractvalue %dx.types.ResRet.i32 %570, 0
  %572 = extractvalue %dx.types.ResRet.i32 %570, 1
  %573 = extractvalue %dx.types.ResRet.i32 %570, 2
  %574 = and i32 %560, 2147483647
  %575 = mul nsw i32 %574, 12
  %576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %575, i32 undef)  ; BufferLoad(srv,index,wot)
  %577 = extractvalue %dx.types.ResRet.i32 %576, 0
  %578 = extractvalue %dx.types.ResRet.i32 %576, 1
  %579 = extractvalue %dx.types.ResRet.i32 %576, 2
  %580 = and i32 %561, 2147483647
  %581 = mul nsw i32 %580, 12
  %582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %581, i32 undef)  ; BufferLoad(srv,index,wot)
  %583 = extractvalue %dx.types.ResRet.i32 %582, 0
  %584 = extractvalue %dx.types.ResRet.i32 %582, 1
  %585 = extractvalue %dx.types.ResRet.i32 %582, 2
  %586 = bitcast i32 %565 to float
  %587 = bitcast i32 %566 to float
  %588 = bitcast i32 %567 to float
  %589 = bitcast i32 %583 to float
  %590 = bitcast i32 %584 to float
  %591 = bitcast i32 %585 to float
  %592 = fsub fast float %586, %589
  %593 = fsub fast float %587, %590
  %594 = fsub fast float %588, %591
  %595 = bitcast i32 %571 to float
  %596 = bitcast i32 %572 to float
  %597 = bitcast i32 %573 to float
  %598 = fsub fast float %595, %589
  %599 = fsub fast float %596, %590
  %600 = fsub fast float %597, %591
  %601 = bitcast i32 %577 to float
  %602 = bitcast i32 %578 to float
  %603 = bitcast i32 %579 to float
  %604 = fsub fast float %601, %589
  %605 = fsub fast float %602, %590
  %606 = fsub fast float %603, %591
  %607 = fsub fast float %378, %589
  %608 = fsub fast float %379, %590
  %609 = fsub fast float %380, %591
  %610 = fmul fast float %599, %606
  %611 = fmul fast float %605, %600
  %612 = fsub fast float %610, %611
  %613 = fmul fast float %612, %592
  %614 = fmul fast float %598, %606
  %615 = fmul fast float %600, %604
  %616 = fsub fast float %614, %615
  %617 = fmul fast float %616, %593
  %618 = fsub fast float %613, %617
  %619 = fmul fast float %598, %605
  %620 = fmul fast float %599, %604
  %621 = fsub fast float %619, %620
  %622 = fmul fast float %621, %594
  %623 = fadd fast float %618, %622
  %624 = fdiv fast float 1.000000e+00, %623
  %625 = fmul fast float %612, %624
  %626 = fmul fast float %624, %616
  %627 = fsub fast float -0.000000e+00, %626
  %628 = fmul fast float %621, %624
  %629 = fmul fast float %593, %606
  %630 = fmul fast float %594, %605
  %631 = fsub fast float %629, %630
  %632 = fmul fast float %624, %631
  %633 = fsub fast float -0.000000e+00, %632
  %634 = fmul fast float %592, %606
  %635 = fmul fast float %604, %594
  %636 = fsub fast float %634, %635
  %637 = fmul fast float %636, %624
  %638 = fmul fast float %592, %605
  %639 = fmul fast float %593, %604
  %640 = fsub fast float %638, %639
  %641 = fmul fast float %624, %640
  %642 = fsub fast float -0.000000e+00, %641
  %643 = fmul fast float %593, %600
  %644 = fmul fast float %594, %599
  %645 = fsub fast float %643, %644
  %646 = fmul fast float %645, %624
  %647 = fmul fast float %592, %600
  %648 = fmul fast float %594, %598
  %649 = fsub fast float %647, %648
  %650 = fmul fast float %624, %649
  %651 = fsub fast float -0.000000e+00, %650
  %652 = fmul fast float %592, %599
  %653 = fmul fast float %593, %598
  %654 = fsub fast float %652, %653
  %655 = fmul fast float %654, %624
  %656 = call float @dx.op.dot3.f32(i32 55, float %625, float %627, float %628, float %607, float %608, float %609)  ; Dot3(ax,ay,az,bx,by,bz)
  %657 = call float @dx.op.dot3.f32(i32 55, float %633, float %637, float %642, float %607, float %608, float %609)  ; Dot3(ax,ay,az,bx,by,bz)
  %658 = call float @dx.op.dot3.f32(i32 55, float %646, float %651, float %655, float %607, float %608, float %609)  ; Dot3(ax,ay,az,bx,by,bz)
  %659 = fsub fast float 1.000000e+00, %656
  %660 = fsub fast float %659, %657
  %661 = fsub fast float %660, %658
  %662 = call float @dx.op.binary.f32(i32 36, float %656, float %657)  ; FMin(a,b)
  %663 = call float @dx.op.binary.f32(i32 36, float %662, float %658)  ; FMin(a,b)
  %664 = call float @dx.op.binary.f32(i32 36, float %663, float %661)  ; FMin(a,b)
  %665 = call float @dx.op.binary.f32(i32 35, float %656, float %657)  ; FMax(a,b)
  %666 = call float @dx.op.binary.f32(i32 35, float %665, float %658)  ; FMax(a,b)
  %667 = call float @dx.op.binary.f32(i32 35, float %666, float %661)  ; FMax(a,b)
  %668 = fcmp fast oge float %664, 0xBF50624DE0000000
  %669 = fcmp fast olt float %667, 0x3FF00068E0000000
  %670 = and i1 %668, %669
  br i1 %670, label %687, label %671, !dx.controlflow.hints !60

; <label>:671                                     ; preds = %555
  %672 = fcmp fast oeq float %664, %656
  %673 = fcmp fast oeq float %664, %657
  %674 = fcmp fast oeq float %664, %658
  %675 = select i1 %674, i32 8, i32 12
  %676 = select i1 %673, i32 4, i32 %675
  %677 = select i1 %672, i32 0, i32 %676
  %678 = or i32 %677, %556
  %679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %678, i32 undef)  ; BufferLoad(srv,index,wot)
  %680 = extractvalue %dx.types.ResRet.i32 %679, 0
  %681 = icmp ne i32 %548, -1
  %682 = icmp eq i32 %680, %548
  %683 = and i1 %681, %682
  br i1 %683, label %687, label %684, !dx.controlflow.hints !61

; <label>:684                                     ; preds = %671
  %685 = add nuw nsw i32 %547, 1
  %686 = icmp eq i32 %680, -1
  br i1 %686, label %687, label %546, !llvm.loop !62

; <label>:687                                     ; preds = %684, %671, %555, %546
  %688 = phi i32 [ %549, %671 ], [ %549, %555 ], [ -1, %684 ], [ -1, %546 ]
  %689 = phi float [ %656, %671 ], [ %656, %555 ], [ %656, %684 ], [ %550, %546 ]
  %690 = phi float [ %657, %671 ], [ %657, %555 ], [ %657, %684 ], [ %551, %546 ]
  %691 = phi float [ %658, %671 ], [ %658, %555 ], [ %658, %684 ], [ %552, %546 ]
  %692 = phi float [ %661, %671 ], [ %661, %555 ], [ %661, %684 ], [ %553, %546 ]
  br label %693

; <label>:693                                     ; preds = %687, %542
  %694 = phi i32 [ -1, %542 ], [ %688, %687 ]
  %695 = phi float [ 0.000000e+00, %542 ], [ %689, %687 ]
  %696 = phi float [ 0.000000e+00, %542 ], [ %690, %687 ]
  %697 = phi float [ 0.000000e+00, %542 ], [ %691, %687 ]
  %698 = phi float [ 0.000000e+00, %542 ], [ %692, %687 ]
  %699 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %695)  ; FMax(a,b)
  %700 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %696)  ; FMax(a,b)
  %701 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %697)  ; FMax(a,b)
  %702 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %698)  ; FMax(a,b)
  %703 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %699)  ; FMin(a,b)
  %704 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %700)  ; FMin(a,b)
  %705 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %701)  ; FMin(a,b)
  %706 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %702)  ; FMin(a,b)
  store float %703, float* %385, align 4
  store float %704, float* %386, align 4
  store float %705, float* %387, align 4
  store float %706, float* %388, align 4
  br label %707

; <label>:707                                     ; preds = %693, %374
  %708 = phi float [ 0.000000e+00, %374 ], [ %705, %693 ]
  %709 = phi float [ 0.000000e+00, %374 ], [ %704, %693 ]
  %710 = phi float [ 0.000000e+00, %374 ], [ %706, %693 ]
  %711 = phi float [ 0.000000e+00, %374 ], [ %703, %693 ]
  %712 = phi i32 [ -1, %374 ], [ %694, %693 ]
  %713 = icmp eq i32 %712, -1
  br i1 %713, label %714, label %716, !dx.controlflow.hints !64

; <label>:714                                     ; preds = %707
  %715 = call float @dx.op.legacyF16ToF32(i32 131, i32 0)  ; LegacyF16ToF32(value)
  br label %1422

; <label>:716                                     ; preds = %707
  %717 = shl nsw i32 %712, 4
  %718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %717, i32 undef)  ; BufferLoad(srv,index,wot)
  %719 = extractvalue %dx.types.ResRet.i32 %718, 0
  %720 = extractvalue %dx.types.ResRet.i32 %718, 1
  %721 = extractvalue %dx.types.ResRet.i32 %718, 2
  %722 = extractvalue %dx.types.ResRet.i32 %718, 3
  %723 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i32 0, i32 0
  store i32 %719, i32* %723, align 4
  %724 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i32 0, i32 1
  store i32 %720, i32* %724, align 4
  %725 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i32 0, i32 2
  store i32 %721, i32* %725, align 4
  %726 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i32 0, i32 3
  store i32 %722, i32* %726, align 4
  %727 = getelementptr inbounds [4 x float], [4 x float]* %34, i32 0, i32 0
  store float 0.000000e+00, float* %727, align 4
  %728 = getelementptr inbounds [4 x float], [4 x float]* %34, i32 0, i32 1
  store float 0.000000e+00, float* %728, align 4
  %729 = getelementptr inbounds [4 x float], [4 x float]* %34, i32 0, i32 2
  store float 0.000000e+00, float* %729, align 4
  %730 = getelementptr inbounds [4 x float], [4 x float]* %34, i32 0, i32 3
  store float 0.000000e+00, float* %730, align 4
  %731 = icmp slt i32 %719, 0
  br i1 %731, label %732, label %822, !dx.controlflow.hints !65

; <label>:732                                     ; preds = %716
  %733 = fsub fast float 1.000000e+00, %711
  %734 = fdiv fast float 1.000000e+00, %733
  %735 = shl nsw i32 %712, 6
  %736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %735, i32 undef)  ; BufferLoad(srv,index,wot)
  %737 = extractvalue %dx.types.ResRet.i32 %736, 0
  %738 = extractvalue %dx.types.ResRet.i32 %736, 1
  %739 = extractvalue %dx.types.ResRet.i32 %736, 2
  %740 = extractvalue %dx.types.ResRet.i32 %736, 3
  %741 = fmul fast float %734, %710
  %742 = fmul fast float %734, %709
  %743 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 0
  store i32 %737, i32* %743, align 4
  %744 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 1
  store i32 %738, i32* %744, align 4
  %745 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 2
  store i32 %739, i32* %745, align 4
  %746 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 3
  store i32 %740, i32* %746, align 4
  %747 = fmul fast float %742, 4.000000e+00
  %748 = call float @dx.op.unary.f32(i32 27, float %747)  ; Round_ni(value)
  %749 = fmul fast float %741, 4.000000e+00
  %750 = call float @dx.op.unary.f32(i32 27, float %749)  ; Round_ni(value)
  %751 = fsub fast float 1.100000e+01, %748
  %752 = fmul fast float %748, 5.000000e-01
  %753 = fmul fast float %752, %751
  %754 = fadd fast float %750, 5.000000e-01
  %755 = fadd fast float %754, %753
  %756 = fptosi float %755 to i32
  %757 = fptosi float %748 to i32
  %758 = sub nsw i32 5, %757
  %759 = fmul fast float %750, 2.500000e-01
  %760 = fmul fast float %748, 2.500000e-01
  %761 = add nsw i32 %756, 1
  %762 = add nsw i32 %756, %758
  %763 = fsub fast float %741, %759
  %764 = fmul fast float %763, 4.000000e+00
  %765 = fsub fast float %742, %760
  %766 = fmul fast float %765, 4.000000e+00
  %767 = fadd fast float %763, %765
  %768 = fmul fast float %767, 4.000000e+00
  %769 = fcmp fast ogt float %768, 1.000000e+00
  br i1 %769, label %770, label %776, !dx.controlflow.hints !66

; <label>:770                                     ; preds = %732
  %771 = add nsw i32 %762, 1
  %772 = fadd fast float %766, -1.000000e+00
  %773 = fsub fast float -0.000000e+00, %772
  %774 = fadd fast float %764, -1.000000e+00
  %775 = fsub fast float -0.000000e+00, %774
  br label %776

; <label>:776                                     ; preds = %770, %732
  %777 = phi i32 [ %771, %770 ], [ %756, %732 ]
  %778 = phi i32 [ %761, %770 ], [ %762, %732 ]
  %779 = phi i32 [ %762, %770 ], [ %761, %732 ]
  %780 = phi float [ %775, %770 ], [ %766, %732 ]
  %781 = phi float [ %773, %770 ], [ %764, %732 ]
  %782 = fsub fast float 1.000000e+00, %780
  %783 = fsub fast float %782, %781
  %784 = lshr i32 %779, 2
  %785 = getelementptr [4 x i32], [4 x i32]* %31, i32 0, i32 %784
  %786 = load i32, i32* %785, align 4, !tbaa !39, !noalias !67
  %787 = shl i32 %779, 3
  %788 = and i32 %787, 24
  %789 = lshr i32 %786, %788
  %790 = and i32 %789, 255
  %791 = sitofp i32 %790 to float
  %792 = fmul fast float %781, 0x3F70101020000000
  %793 = fmul fast float %792, %791
  %794 = lshr i32 %778, 2
  %795 = getelementptr [4 x i32], [4 x i32]* %31, i32 0, i32 %794
  %796 = load i32, i32* %795, align 4, !tbaa !39, !noalias !67
  %797 = shl i32 %778, 3
  %798 = and i32 %797, 24
  %799 = lshr i32 %796, %798
  %800 = and i32 %799, 255
  %801 = sitofp i32 %800 to float
  %802 = fmul fast float %780, 0x3F70101020000000
  %803 = fmul fast float %802, %801
  %804 = lshr i32 %777, 2
  %805 = getelementptr [4 x i32], [4 x i32]* %31, i32 0, i32 %804
  %806 = load i32, i32* %805, align 4, !tbaa !39, !noalias !67
  %807 = shl i32 %777, 3
  %808 = and i32 %807, 24
  %809 = lshr i32 %806, %808
  %810 = and i32 %809, 255
  %811 = sitofp i32 %810 to float
  %812 = fmul fast float %783, 0x3F70101020000000
  %813 = fmul fast float %812, %811
  %814 = fsub fast float 1.000000e+00, %793
  %815 = fsub fast float %814, %803
  %816 = fsub fast float %815, %813
  %817 = fmul fast float %711, 2.000000e+01
  %818 = fadd fast float %817, 1.000000e+00
  %819 = fmul fast float %816, 2.000000e+01
  %820 = fsub fast float %818, %819
  %821 = call float @dx.op.unary.f32(i32 7, float %820)  ; Saturate(value)
  br label %822

; <label>:822                                     ; preds = %776, %716
  %823 = phi float [ %821, %776 ], [ 1.000000e+00, %716 ]
  store float %823, float* %727, align 4, !tbaa !75, !noalias !67
  %824 = icmp slt i32 %720, 0
  br i1 %824, label %825, label %916, !dx.controlflow.hints !65

; <label>:825                                     ; preds = %822
  %826 = fsub fast float 1.000000e+00, %709
  %827 = fdiv fast float 1.000000e+00, %826
  %828 = shl i32 %712, 6
  %829 = or i32 %828, 16
  %830 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %829, i32 undef)  ; BufferLoad(srv,index,wot)
  %831 = extractvalue %dx.types.ResRet.i32 %830, 0
  %832 = extractvalue %dx.types.ResRet.i32 %830, 1
  %833 = extractvalue %dx.types.ResRet.i32 %830, 2
  %834 = extractvalue %dx.types.ResRet.i32 %830, 3
  %835 = fmul fast float %827, %711
  %836 = fmul fast float %827, %710
  %837 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 0
  store i32 %831, i32* %837, align 4
  %838 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 1
  store i32 %832, i32* %838, align 4
  %839 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 2
  store i32 %833, i32* %839, align 4
  %840 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 3
  store i32 %834, i32* %840, align 4
  %841 = fmul fast float %836, 4.000000e+00
  %842 = call float @dx.op.unary.f32(i32 27, float %841)  ; Round_ni(value)
  %843 = fmul fast float %835, 4.000000e+00
  %844 = call float @dx.op.unary.f32(i32 27, float %843)  ; Round_ni(value)
  %845 = fsub fast float 1.100000e+01, %842
  %846 = fmul fast float %842, 5.000000e-01
  %847 = fmul fast float %846, %845
  %848 = fadd fast float %844, 5.000000e-01
  %849 = fadd fast float %848, %847
  %850 = fptosi float %849 to i32
  %851 = fptosi float %842 to i32
  %852 = sub nsw i32 5, %851
  %853 = fmul fast float %844, 2.500000e-01
  %854 = fmul fast float %842, 2.500000e-01
  %855 = add nsw i32 %850, 1
  %856 = add nsw i32 %850, %852
  %857 = fsub fast float %835, %853
  %858 = fmul fast float %857, 4.000000e+00
  %859 = fsub fast float %836, %854
  %860 = fmul fast float %859, 4.000000e+00
  %861 = fadd fast float %857, %859
  %862 = fmul fast float %861, 4.000000e+00
  %863 = fcmp fast ogt float %862, 1.000000e+00
  br i1 %863, label %864, label %870, !dx.controlflow.hints !66

; <label>:864                                     ; preds = %825
  %865 = add nsw i32 %856, 1
  %866 = fadd fast float %860, -1.000000e+00
  %867 = fsub fast float -0.000000e+00, %866
  %868 = fadd fast float %858, -1.000000e+00
  %869 = fsub fast float -0.000000e+00, %868
  br label %870

; <label>:870                                     ; preds = %864, %825
  %871 = phi i32 [ %865, %864 ], [ %850, %825 ]
  %872 = phi i32 [ %855, %864 ], [ %856, %825 ]
  %873 = phi i32 [ %856, %864 ], [ %855, %825 ]
  %874 = phi float [ %869, %864 ], [ %860, %825 ]
  %875 = phi float [ %867, %864 ], [ %858, %825 ]
  %876 = fsub fast float 1.000000e+00, %874
  %877 = fsub fast float %876, %875
  %878 = lshr i32 %873, 2
  %879 = getelementptr [4 x i32], [4 x i32]* %31, i32 0, i32 %878
  %880 = load i32, i32* %879, align 4, !tbaa !39, !noalias !67
  %881 = shl i32 %873, 3
  %882 = and i32 %881, 24
  %883 = lshr i32 %880, %882
  %884 = and i32 %883, 255
  %885 = sitofp i32 %884 to float
  %886 = fmul fast float %875, 0x3F70101020000000
  %887 = fmul fast float %886, %885
  %888 = lshr i32 %872, 2
  %889 = getelementptr [4 x i32], [4 x i32]* %31, i32 0, i32 %888
  %890 = load i32, i32* %889, align 4, !tbaa !39, !noalias !67
  %891 = shl i32 %872, 3
  %892 = and i32 %891, 24
  %893 = lshr i32 %890, %892
  %894 = and i32 %893, 255
  %895 = sitofp i32 %894 to float
  %896 = fmul fast float %874, 0x3F70101020000000
  %897 = fmul fast float %896, %895
  %898 = lshr i32 %871, 2
  %899 = getelementptr [4 x i32], [4 x i32]* %31, i32 0, i32 %898
  %900 = load i32, i32* %899, align 4, !tbaa !39, !noalias !67
  %901 = shl i32 %871, 3
  %902 = and i32 %901, 24
  %903 = lshr i32 %900, %902
  %904 = and i32 %903, 255
  %905 = sitofp i32 %904 to float
  %906 = fmul fast float %877, 0x3F70101020000000
  %907 = fmul fast float %906, %905
  %908 = fsub fast float 1.000000e+00, %887
  %909 = fsub fast float %908, %897
  %910 = fsub fast float %909, %907
  %911 = fmul fast float %709, 2.000000e+01
  %912 = fadd fast float %911, 1.000000e+00
  %913 = fmul fast float %910, 2.000000e+01
  %914 = fsub fast float %912, %913
  %915 = call float @dx.op.unary.f32(i32 7, float %914)  ; Saturate(value)
  br label %916

; <label>:916                                     ; preds = %870, %822
  %917 = phi float [ %915, %870 ], [ 1.000000e+00, %822 ]
  store float %917, float* %728, align 4, !tbaa !75, !noalias !67
  %918 = fadd fast float %917, %823
  %919 = icmp slt i32 %721, 0
  br i1 %919, label %920, label %1011, !dx.controlflow.hints !65

; <label>:920                                     ; preds = %916
  %921 = fsub fast float 1.000000e+00, %708
  %922 = fdiv fast float 1.000000e+00, %921
  %923 = shl i32 %712, 6
  %924 = or i32 %923, 32
  %925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %924, i32 undef)  ; BufferLoad(srv,index,wot)
  %926 = extractvalue %dx.types.ResRet.i32 %925, 0
  %927 = extractvalue %dx.types.ResRet.i32 %925, 1
  %928 = extractvalue %dx.types.ResRet.i32 %925, 2
  %929 = extractvalue %dx.types.ResRet.i32 %925, 3
  %930 = fmul fast float %922, %711
  %931 = fmul fast float %922, %709
  %932 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 0
  store i32 %926, i32* %932, align 4
  %933 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 1
  store i32 %927, i32* %933, align 4
  %934 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 2
  store i32 %928, i32* %934, align 4
  %935 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 3
  store i32 %929, i32* %935, align 4
  %936 = fmul fast float %931, 4.000000e+00
  %937 = call float @dx.op.unary.f32(i32 27, float %936)  ; Round_ni(value)
  %938 = fmul fast float %930, 4.000000e+00
  %939 = call float @dx.op.unary.f32(i32 27, float %938)  ; Round_ni(value)
  %940 = fsub fast float 1.100000e+01, %937
  %941 = fmul fast float %937, 5.000000e-01
  %942 = fmul fast float %941, %940
  %943 = fadd fast float %939, 5.000000e-01
  %944 = fadd fast float %943, %942
  %945 = fptosi float %944 to i32
  %946 = fptosi float %937 to i32
  %947 = sub nsw i32 5, %946
  %948 = fmul fast float %939, 2.500000e-01
  %949 = fmul fast float %937, 2.500000e-01
  %950 = add nsw i32 %945, 1
  %951 = add nsw i32 %945, %947
  %952 = fsub fast float %930, %948
  %953 = fmul fast float %952, 4.000000e+00
  %954 = fsub fast float %931, %949
  %955 = fmul fast float %954, 4.000000e+00
  %956 = fadd fast float %952, %954
  %957 = fmul fast float %956, 4.000000e+00
  %958 = fcmp fast ogt float %957, 1.000000e+00
  br i1 %958, label %959, label %965, !dx.controlflow.hints !66

; <label>:959                                     ; preds = %920
  %960 = add nsw i32 %951, 1
  %961 = fadd fast float %955, -1.000000e+00
  %962 = fsub fast float -0.000000e+00, %961
  %963 = fadd fast float %953, -1.000000e+00
  %964 = fsub fast float -0.000000e+00, %963
  br label %965

; <label>:965                                     ; preds = %959, %920
  %966 = phi i32 [ %960, %959 ], [ %945, %920 ]
  %967 = phi i32 [ %950, %959 ], [ %951, %920 ]
  %968 = phi i32 [ %951, %959 ], [ %950, %920 ]
  %969 = phi float [ %964, %959 ], [ %955, %920 ]
  %970 = phi float [ %962, %959 ], [ %953, %920 ]
  %971 = fsub fast float 1.000000e+00, %969
  %972 = fsub fast float %971, %970
  %973 = lshr i32 %968, 2
  %974 = getelementptr [4 x i32], [4 x i32]* %31, i32 0, i32 %973
  %975 = load i32, i32* %974, align 4, !tbaa !39, !noalias !67
  %976 = shl i32 %968, 3
  %977 = and i32 %976, 24
  %978 = lshr i32 %975, %977
  %979 = and i32 %978, 255
  %980 = sitofp i32 %979 to float
  %981 = fmul fast float %970, 0x3F70101020000000
  %982 = fmul fast float %981, %980
  %983 = lshr i32 %967, 2
  %984 = getelementptr [4 x i32], [4 x i32]* %31, i32 0, i32 %983
  %985 = load i32, i32* %984, align 4, !tbaa !39, !noalias !67
  %986 = shl i32 %967, 3
  %987 = and i32 %986, 24
  %988 = lshr i32 %985, %987
  %989 = and i32 %988, 255
  %990 = sitofp i32 %989 to float
  %991 = fmul fast float %969, 0x3F70101020000000
  %992 = fmul fast float %991, %990
  %993 = lshr i32 %966, 2
  %994 = getelementptr [4 x i32], [4 x i32]* %31, i32 0, i32 %993
  %995 = load i32, i32* %994, align 4, !tbaa !39, !noalias !67
  %996 = shl i32 %966, 3
  %997 = and i32 %996, 24
  %998 = lshr i32 %995, %997
  %999 = and i32 %998, 255
  %1000 = sitofp i32 %999 to float
  %1001 = fmul fast float %972, 0x3F70101020000000
  %1002 = fmul fast float %1001, %1000
  %1003 = fsub fast float 1.000000e+00, %982
  %1004 = fsub fast float %1003, %992
  %1005 = fsub fast float %1004, %1002
  %1006 = fmul fast float %708, 2.000000e+01
  %1007 = fadd fast float %1006, 1.000000e+00
  %1008 = fmul fast float %1005, 2.000000e+01
  %1009 = fsub fast float %1007, %1008
  %1010 = call float @dx.op.unary.f32(i32 7, float %1009)  ; Saturate(value)
  br label %1011

; <label>:1011                                    ; preds = %965, %916
  %1012 = phi float [ %1010, %965 ], [ 1.000000e+00, %916 ]
  store float %1012, float* %729, align 4, !tbaa !75, !noalias !67
  %1013 = fadd fast float %918, %1012
  %1014 = icmp slt i32 %722, 0
  br i1 %1014, label %1015, label %1106, !dx.controlflow.hints !65

; <label>:1015                                    ; preds = %1011
  %1016 = fsub fast float 1.000000e+00, %710
  %1017 = fdiv fast float 1.000000e+00, %1016
  %1018 = shl i32 %712, 6
  %1019 = or i32 %1018, 48
  %1020 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1019, i32 undef)  ; BufferLoad(srv,index,wot)
  %1021 = extractvalue %dx.types.ResRet.i32 %1020, 0
  %1022 = extractvalue %dx.types.ResRet.i32 %1020, 1
  %1023 = extractvalue %dx.types.ResRet.i32 %1020, 2
  %1024 = extractvalue %dx.types.ResRet.i32 %1020, 3
  %1025 = fmul fast float %1017, %711
  %1026 = fmul fast float %1017, %709
  %1027 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 0
  store i32 %1021, i32* %1027, align 4
  %1028 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 1
  store i32 %1022, i32* %1028, align 4
  %1029 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 2
  store i32 %1023, i32* %1029, align 4
  %1030 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 3
  store i32 %1024, i32* %1030, align 4
  %1031 = fmul fast float %1026, 4.000000e+00
  %1032 = call float @dx.op.unary.f32(i32 27, float %1031)  ; Round_ni(value)
  %1033 = fmul fast float %1025, 4.000000e+00
  %1034 = call float @dx.op.unary.f32(i32 27, float %1033)  ; Round_ni(value)
  %1035 = fsub fast float 1.100000e+01, %1032
  %1036 = fmul fast float %1032, 5.000000e-01
  %1037 = fmul fast float %1036, %1035
  %1038 = fadd fast float %1034, 5.000000e-01
  %1039 = fadd fast float %1038, %1037
  %1040 = fptosi float %1039 to i32
  %1041 = fptosi float %1032 to i32
  %1042 = sub nsw i32 5, %1041
  %1043 = fmul fast float %1034, 2.500000e-01
  %1044 = fmul fast float %1032, 2.500000e-01
  %1045 = add nsw i32 %1040, 1
  %1046 = add nsw i32 %1040, %1042
  %1047 = fsub fast float %1025, %1043
  %1048 = fmul fast float %1047, 4.000000e+00
  %1049 = fsub fast float %1026, %1044
  %1050 = fmul fast float %1049, 4.000000e+00
  %1051 = fadd fast float %1047, %1049
  %1052 = fmul fast float %1051, 4.000000e+00
  %1053 = fcmp fast ogt float %1052, 1.000000e+00
  br i1 %1053, label %1054, label %1060, !dx.controlflow.hints !66

; <label>:1054                                    ; preds = %1015
  %1055 = add nsw i32 %1046, 1
  %1056 = fadd fast float %1050, -1.000000e+00
  %1057 = fsub fast float -0.000000e+00, %1056
  %1058 = fadd fast float %1048, -1.000000e+00
  %1059 = fsub fast float -0.000000e+00, %1058
  br label %1060

; <label>:1060                                    ; preds = %1054, %1015
  %1061 = phi i32 [ %1055, %1054 ], [ %1040, %1015 ]
  %1062 = phi i32 [ %1045, %1054 ], [ %1046, %1015 ]
  %1063 = phi i32 [ %1046, %1054 ], [ %1045, %1015 ]
  %1064 = phi float [ %1059, %1054 ], [ %1050, %1015 ]
  %1065 = phi float [ %1057, %1054 ], [ %1048, %1015 ]
  %1066 = fsub fast float 1.000000e+00, %1064
  %1067 = fsub fast float %1066, %1065
  %1068 = lshr i32 %1063, 2
  %1069 = getelementptr [4 x i32], [4 x i32]* %31, i32 0, i32 %1068
  %1070 = load i32, i32* %1069, align 4, !tbaa !39, !noalias !67
  %1071 = shl i32 %1063, 3
  %1072 = and i32 %1071, 24
  %1073 = lshr i32 %1070, %1072
  %1074 = and i32 %1073, 255
  %1075 = sitofp i32 %1074 to float
  %1076 = fmul fast float %1065, 0x3F70101020000000
  %1077 = fmul fast float %1076, %1075
  %1078 = lshr i32 %1062, 2
  %1079 = getelementptr [4 x i32], [4 x i32]* %31, i32 0, i32 %1078
  %1080 = load i32, i32* %1079, align 4, !tbaa !39, !noalias !67
  %1081 = shl i32 %1062, 3
  %1082 = and i32 %1081, 24
  %1083 = lshr i32 %1080, %1082
  %1084 = and i32 %1083, 255
  %1085 = sitofp i32 %1084 to float
  %1086 = fmul fast float %1064, 0x3F70101020000000
  %1087 = fmul fast float %1086, %1085
  %1088 = lshr i32 %1061, 2
  %1089 = getelementptr [4 x i32], [4 x i32]* %31, i32 0, i32 %1088
  %1090 = load i32, i32* %1089, align 4, !tbaa !39, !noalias !67
  %1091 = shl i32 %1061, 3
  %1092 = and i32 %1091, 24
  %1093 = lshr i32 %1090, %1092
  %1094 = and i32 %1093, 255
  %1095 = sitofp i32 %1094 to float
  %1096 = fmul fast float %1067, 0x3F70101020000000
  %1097 = fmul fast float %1096, %1095
  %1098 = fsub fast float 1.000000e+00, %1077
  %1099 = fsub fast float %1098, %1087
  %1100 = fsub fast float %1099, %1097
  %1101 = fmul fast float %710, 2.000000e+01
  %1102 = fadd fast float %1101, 1.000000e+00
  %1103 = fmul fast float %1100, 2.000000e+01
  %1104 = fsub fast float %1102, %1103
  %1105 = call float @dx.op.unary.f32(i32 7, float %1104)  ; Saturate(value)
  br label %1106

; <label>:1106                                    ; preds = %1060, %1011
  %1107 = phi float [ %1105, %1060 ], [ 1.000000e+00, %1011 ]
  store float %1107, float* %730, align 4, !tbaa !75, !noalias !67
  %1108 = fadd fast float %1013, %1107
  %1109 = fcmp fast oeq float %1108, 0.000000e+00
  br i1 %1109, label %1110, label %1111, !dx.controlflow.hints !77

; <label>:1110                                    ; preds = %1106
  store float 2.500000e-01, float* %727, align 4
  store float 2.500000e-01, float* %728, align 4
  store float 2.500000e-01, float* %729, align 4
  store float 2.500000e-01, float* %730, align 4
  br label %1111

; <label>:1111                                    ; preds = %1110, %1106
  %1112 = phi float [ 2.500000e-01, %1110 ], [ %823, %1106 ]
  %1113 = phi i32 [ 0, %1110 ], [ 1, %1106 ]
  br label %1114

; <label>:1114                                    ; preds = %1387, %1111
  %1115 = phi float [ %1112, %1111 ], [ %1389, %1387 ]
  %1116 = phi float [ 0.000000e+00, %1111 ], [ %1356, %1387 ]
  %1117 = phi float [ 0.000000e+00, %1111 ], [ %1357, %1387 ]
  %1118 = phi float [ 0.000000e+00, %1111 ], [ %1358, %1387 ]
  %1119 = phi float [ 0.000000e+00, %1111 ], [ %1359, %1387 ]
  %1120 = phi float [ 0.000000e+00, %1111 ], [ %1360, %1387 ]
  %1121 = phi float [ 0.000000e+00, %1111 ], [ %1361, %1387 ]
  %1122 = phi float [ 0.000000e+00, %1111 ], [ %1362, %1387 ]
  %1123 = phi float [ 0.000000e+00, %1111 ], [ %1363, %1387 ]
  %1124 = phi float [ 0.000000e+00, %1111 ], [ %1364, %1387 ]
  %1125 = phi float [ 0.000000e+00, %1111 ], [ %1365, %1387 ]
  %1126 = phi float [ 0.000000e+00, %1111 ], [ %1366, %1387 ]
  %1127 = phi float [ 0.000000e+00, %1111 ], [ %1367, %1387 ]
  %1128 = phi float [ 0.000000e+00, %1111 ], [ %1368, %1387 ]
  %1129 = phi float [ 0.000000e+00, %1111 ], [ %1369, %1387 ]
  %1130 = phi float [ 0.000000e+00, %1111 ], [ %1370, %1387 ]
  %1131 = phi float [ 0.000000e+00, %1111 ], [ %1371, %1387 ]
  %1132 = phi float [ 0.000000e+00, %1111 ], [ %1372, %1387 ]
  %1133 = phi float [ 0.000000e+00, %1111 ], [ %1373, %1387 ]
  %1134 = phi float [ 0.000000e+00, %1111 ], [ %1374, %1387 ]
  %1135 = phi float [ 0.000000e+00, %1111 ], [ %1375, %1387 ]
  %1136 = phi float [ 0.000000e+00, %1111 ], [ %1376, %1387 ]
  %1137 = phi float [ 0.000000e+00, %1111 ], [ %1377, %1387 ]
  %1138 = phi float [ 0.000000e+00, %1111 ], [ %1378, %1387 ]
  %1139 = phi float [ 0.000000e+00, %1111 ], [ %1379, %1387 ]
  %1140 = phi float [ 0.000000e+00, %1111 ], [ %1380, %1387 ]
  %1141 = phi float [ 0.000000e+00, %1111 ], [ %1381, %1387 ]
  %1142 = phi float [ 0.000000e+00, %1111 ], [ %1382, %1387 ]
  %1143 = phi float [ 0.000000e+00, %1111 ], [ %1383, %1387 ]
  %1144 = phi float [ 0.000000e+00, %1111 ], [ %1384, %1387 ]
  %1145 = phi i32 [ 0, %1111 ], [ %1385, %1387 ]
  %1146 = fcmp fast ogt float %1115, 0.000000e+00
  br i1 %1146, label %1147, label %1355, !dx.controlflow.hints !78

; <label>:1147                                    ; preds = %1114
  %1148 = getelementptr [4 x float], [4 x float]* %32, i32 0, i32 %1145
  %1149 = load float, float* %1148, align 4, !tbaa !75, !noalias !67
  %1150 = getelementptr [4 x i32], [4 x i32]* %33, i32 0, i32 %1145
  %1151 = load i32, i32* %1150, align 4, !tbaa !39, !noalias !67
  %1152 = fmul fast float %1149, %1115
  %1153 = shl i32 %1151, 5
  %1154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1153, i32 undef)  ; BufferLoad(srv,index,wot)
  %1155 = extractvalue %dx.types.ResRet.i32 %1154, 0
  %1156 = extractvalue %dx.types.ResRet.i32 %1154, 1
  %1157 = extractvalue %dx.types.ResRet.i32 %1154, 2
  %1158 = extractvalue %dx.types.ResRet.i32 %1154, 3
  %1159 = or i32 %1153, 16
  %1160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1159, i32 undef)  ; BufferLoad(srv,index,wot)
  %1161 = extractvalue %dx.types.ResRet.i32 %1160, 0
  %1162 = extractvalue %dx.types.ResRet.i32 %1160, 1
  %1163 = extractvalue %dx.types.ResRet.i32 %1160, 2
  %1164 = extractvalue %dx.types.ResRet.i32 %1160, 3
  %1165 = shl i32 %1155, 4
  %1166 = and i32 %1165, 32752
  %1167 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1166)  ; LegacyF16ToF32(value)
  %1168 = lshr i32 %1155, 7
  %1169 = and i32 %1168, 32752
  %1170 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1169)  ; LegacyF16ToF32(value)
  %1171 = lshr i32 %1155, 22
  %1172 = shl nuw nsw i32 %1171, 5
  %1173 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1172)  ; LegacyF16ToF32(value)
  %1174 = and i32 %1156, 255
  %1175 = uitofp i32 %1174 to float
  %1176 = fmul fast float %1175, 0x3F80204080000000
  %1177 = fadd fast float %1176, -1.000000e+00
  %1178 = lshr i32 %1156, 8
  %1179 = and i32 %1178, 255
  %1180 = uitofp i32 %1179 to float
  %1181 = fmul fast float %1180, 0x3F80204080000000
  %1182 = fadd fast float %1181, -1.000000e+00
  %1183 = lshr i32 %1156, 16
  %1184 = and i32 %1183, 255
  %1185 = uitofp i32 %1184 to float
  %1186 = fmul fast float %1185, 0x3F80204080000000
  %1187 = fadd fast float %1186, -1.000000e+00
  %1188 = lshr i32 %1156, 24
  %1189 = uitofp i32 %1188 to float
  %1190 = fmul fast float %1189, 0x3F80204080000000
  %1191 = fadd fast float %1190, -1.000000e+00
  %1192 = and i32 %1157, 255
  %1193 = uitofp i32 %1192 to float
  %1194 = fmul fast float %1193, 0x3F80204080000000
  %1195 = fadd fast float %1194, -1.000000e+00
  %1196 = lshr i32 %1157, 8
  %1197 = and i32 %1196, 255
  %1198 = uitofp i32 %1197 to float
  %1199 = fmul fast float %1198, 0x3F80204080000000
  %1200 = fadd fast float %1199, -1.000000e+00
  %1201 = lshr i32 %1157, 16
  %1202 = and i32 %1201, 255
  %1203 = uitofp i32 %1202 to float
  %1204 = fmul fast float %1203, 0x3F80204080000000
  %1205 = fadd fast float %1204, -1.000000e+00
  %1206 = lshr i32 %1157, 24
  %1207 = uitofp i32 %1206 to float
  %1208 = fmul fast float %1207, 0x3F80204080000000
  %1209 = fadd fast float %1208, -1.000000e+00
  %1210 = and i32 %1158, 255
  %1211 = uitofp i32 %1210 to float
  %1212 = fmul fast float %1211, 0x3F80204080000000
  %1213 = fadd fast float %1212, -1.000000e+00
  %1214 = lshr i32 %1158, 8
  %1215 = and i32 %1214, 255
  %1216 = uitofp i32 %1215 to float
  %1217 = fmul fast float %1216, 0x3F80204080000000
  %1218 = fadd fast float %1217, -1.000000e+00
  %1219 = lshr i32 %1158, 16
  %1220 = and i32 %1219, 255
  %1221 = uitofp i32 %1220 to float
  %1222 = fmul fast float %1221, 0x3F80204080000000
  %1223 = fadd fast float %1222, -1.000000e+00
  %1224 = lshr i32 %1158, 24
  %1225 = uitofp i32 %1224 to float
  %1226 = fmul fast float %1225, 0x3F80204080000000
  %1227 = fadd fast float %1226, -1.000000e+00
  %1228 = and i32 %1161, 255
  %1229 = uitofp i32 %1228 to float
  %1230 = fmul fast float %1229, 0x3F80204080000000
  %1231 = fadd fast float %1230, -1.000000e+00
  %1232 = lshr i32 %1161, 8
  %1233 = and i32 %1232, 255
  %1234 = uitofp i32 %1233 to float
  %1235 = fmul fast float %1234, 0x3F80204080000000
  %1236 = fadd fast float %1235, -1.000000e+00
  %1237 = lshr i32 %1161, 16
  %1238 = and i32 %1237, 255
  %1239 = uitofp i32 %1238 to float
  %1240 = fmul fast float %1239, 0x3F80204080000000
  %1241 = fadd fast float %1240, -1.000000e+00
  %1242 = lshr i32 %1161, 24
  %1243 = uitofp i32 %1242 to float
  %1244 = fmul fast float %1243, 0x3F80204080000000
  %1245 = fadd fast float %1244, -1.000000e+00
  %1246 = and i32 %1162, 255
  %1247 = uitofp i32 %1246 to float
  %1248 = fmul fast float %1247, 0x3F80204080000000
  %1249 = fadd fast float %1248, -1.000000e+00
  %1250 = lshr i32 %1162, 8
  %1251 = and i32 %1250, 255
  %1252 = uitofp i32 %1251 to float
  %1253 = fmul fast float %1252, 0x3F80204080000000
  %1254 = fadd fast float %1253, -1.000000e+00
  %1255 = lshr i32 %1162, 16
  %1256 = and i32 %1255, 255
  %1257 = uitofp i32 %1256 to float
  %1258 = fmul fast float %1257, 0x3F80204080000000
  %1259 = fadd fast float %1258, -1.000000e+00
  %1260 = lshr i32 %1162, 24
  %1261 = uitofp i32 %1260 to float
  %1262 = fmul fast float %1261, 0x3F80204080000000
  %1263 = fadd fast float %1262, -1.000000e+00
  %1264 = and i32 %1163, 255
  %1265 = uitofp i32 %1264 to float
  %1266 = fmul fast float %1265, 0x3F80204080000000
  %1267 = fadd fast float %1266, -1.000000e+00
  %1268 = lshr i32 %1163, 8
  %1269 = and i32 %1268, 255
  %1270 = uitofp i32 %1269 to float
  %1271 = fmul fast float %1270, 0x3F80204080000000
  %1272 = fadd fast float %1271, -1.000000e+00
  %1273 = lshr i32 %1163, 16
  %1274 = and i32 %1273, 255
  %1275 = uitofp i32 %1274 to float
  %1276 = fmul fast float %1275, 0x3F80204080000000
  %1277 = fadd fast float %1276, -1.000000e+00
  %1278 = lshr i32 %1163, 24
  %1279 = uitofp i32 %1278 to float
  %1280 = fmul fast float %1279, 0x3F80204080000000
  %1281 = fadd fast float %1280, -1.000000e+00
  %1282 = lshr i32 %1164, 8
  %1283 = and i32 %1282, 255
  %1284 = uitofp i32 %1283 to float
  %1285 = fmul fast float %1167, %1152
  %1286 = fadd fast float %1285, %1124
  %1287 = fmul fast float %1152, 0x3FFBB67AE0000000
  %1288 = fmul fast float %1287, %1167
  %1289 = fmul fast float %1288, %1177
  %1290 = fadd fast float %1289, %1123
  %1291 = fmul fast float %1288, %1182
  %1292 = fadd fast float %1291, %1122
  %1293 = fmul fast float %1288, %1187
  %1294 = fadd fast float %1293, %1121
  %1295 = fmul fast float %1152, 0x3FFEFBDEC0000000
  %1296 = fmul fast float %1295, %1167
  %1297 = fmul fast float %1296, %1191
  %1298 = fadd fast float %1297, %1120
  %1299 = fmul fast float %1296, %1195
  %1300 = fadd fast float %1299, %1119
  %1301 = fmul fast float %1152, 0x4001E377A0000000
  %1302 = fmul fast float %1301, %1167
  %1303 = fmul fast float %1302, %1200
  %1304 = fadd fast float %1303, %1118
  %1305 = fmul fast float %1296, %1205
  %1306 = fadd fast float %1305, %1117
  %1307 = fmul fast float %1296, %1209
  %1308 = fadd fast float %1307, %1116
  %1309 = fmul fast float %1170, %1152
  %1310 = fadd fast float %1309, %1133
  %1311 = fmul fast float %1287, %1170
  %1312 = fmul fast float %1311, %1213
  %1313 = fadd fast float %1312, %1132
  %1314 = fmul fast float %1311, %1218
  %1315 = fadd fast float %1314, %1131
  %1316 = fmul fast float %1311, %1223
  %1317 = fadd fast float %1316, %1130
  %1318 = fmul fast float %1295, %1170
  %1319 = fmul fast float %1318, %1227
  %1320 = fadd fast float %1319, %1129
  %1321 = fmul fast float %1318, %1231
  %1322 = fadd fast float %1321, %1128
  %1323 = fmul fast float %1301, %1170
  %1324 = fmul fast float %1323, %1236
  %1325 = fadd fast float %1324, %1127
  %1326 = fmul fast float %1318, %1241
  %1327 = fadd fast float %1326, %1126
  %1328 = fmul fast float %1318, %1245
  %1329 = fadd fast float %1328, %1125
  %1330 = fmul fast float %1173, %1152
  %1331 = fadd fast float %1330, %1142
  %1332 = fmul fast float %1287, %1173
  %1333 = fmul fast float %1332, %1249
  %1334 = fadd fast float %1333, %1141
  %1335 = fmul fast float %1332, %1254
  %1336 = fadd fast float %1335, %1140
  %1337 = fmul fast float %1332, %1259
  %1338 = fadd fast float %1337, %1139
  %1339 = fmul fast float %1295, %1173
  %1340 = fmul fast float %1339, %1263
  %1341 = fadd fast float %1340, %1138
  %1342 = fmul fast float %1339, %1267
  %1343 = fadd fast float %1342, %1137
  %1344 = fmul fast float %1301, %1173
  %1345 = fmul fast float %1344, %1272
  %1346 = fadd fast float %1345, %1136
  %1347 = fmul fast float %1339, %1277
  %1348 = fadd fast float %1347, %1135
  %1349 = fmul fast float %1339, %1281
  %1350 = fadd fast float %1349, %1134
  %1351 = fmul fast float %1152, 0x3F70101020000000
  %1352 = fmul fast float %1351, %1284
  %1353 = fadd fast float %1352, %1143
  %1354 = fadd fast float %1152, %1144
  br label %1355

; <label>:1355                                    ; preds = %1147, %1114
  %1356 = phi float [ %1308, %1147 ], [ %1116, %1114 ]
  %1357 = phi float [ %1306, %1147 ], [ %1117, %1114 ]
  %1358 = phi float [ %1304, %1147 ], [ %1118, %1114 ]
  %1359 = phi float [ %1300, %1147 ], [ %1119, %1114 ]
  %1360 = phi float [ %1298, %1147 ], [ %1120, %1114 ]
  %1361 = phi float [ %1294, %1147 ], [ %1121, %1114 ]
  %1362 = phi float [ %1292, %1147 ], [ %1122, %1114 ]
  %1363 = phi float [ %1290, %1147 ], [ %1123, %1114 ]
  %1364 = phi float [ %1286, %1147 ], [ %1124, %1114 ]
  %1365 = phi float [ %1329, %1147 ], [ %1125, %1114 ]
  %1366 = phi float [ %1327, %1147 ], [ %1126, %1114 ]
  %1367 = phi float [ %1325, %1147 ], [ %1127, %1114 ]
  %1368 = phi float [ %1322, %1147 ], [ %1128, %1114 ]
  %1369 = phi float [ %1320, %1147 ], [ %1129, %1114 ]
  %1370 = phi float [ %1317, %1147 ], [ %1130, %1114 ]
  %1371 = phi float [ %1315, %1147 ], [ %1131, %1114 ]
  %1372 = phi float [ %1313, %1147 ], [ %1132, %1114 ]
  %1373 = phi float [ %1310, %1147 ], [ %1133, %1114 ]
  %1374 = phi float [ %1350, %1147 ], [ %1134, %1114 ]
  %1375 = phi float [ %1348, %1147 ], [ %1135, %1114 ]
  %1376 = phi float [ %1346, %1147 ], [ %1136, %1114 ]
  %1377 = phi float [ %1343, %1147 ], [ %1137, %1114 ]
  %1378 = phi float [ %1341, %1147 ], [ %1138, %1114 ]
  %1379 = phi float [ %1338, %1147 ], [ %1139, %1114 ]
  %1380 = phi float [ %1336, %1147 ], [ %1140, %1114 ]
  %1381 = phi float [ %1334, %1147 ], [ %1141, %1114 ]
  %1382 = phi float [ %1331, %1147 ], [ %1142, %1114 ]
  %1383 = phi float [ %1353, %1147 ], [ %1143, %1114 ]
  %1384 = phi float [ %1354, %1147 ], [ %1144, %1114 ]
  %1385 = add nuw nsw i32 %1145, 1
  %1386 = icmp eq i32 %1385, 4
  br i1 %1386, label %1390, label %1387

; <label>:1387                                    ; preds = %1355
  %1388 = getelementptr [4 x float], [4 x float]* %34, i32 0, i32 %1385
  %1389 = load float, float* %1388, align 4, !tbaa !75, !noalias !67
  br label %1114

; <label>:1390                                    ; preds = %1355
  %1391 = fcmp fast ogt float %1384, 0.000000e+00
  %1392 = fdiv fast float 1.000000e+00, %1384
  %1393 = select i1 %1391, float %1392, float 1.000000e+00
  %1394 = fmul fast float %1393, %1364
  %1395 = fmul fast float %1393, %1363
  %1396 = fmul fast float %1393, %1362
  %1397 = fmul fast float %1393, %1361
  %1398 = fmul fast float %1393, %1360
  %1399 = fmul fast float %1393, %1359
  %1400 = fmul fast float %1393, %1358
  %1401 = fmul fast float %1393, %1357
  %1402 = fmul fast float %1393, %1356
  %1403 = fmul fast float %1393, %1373
  %1404 = fmul fast float %1393, %1372
  %1405 = fmul fast float %1393, %1371
  %1406 = fmul fast float %1393, %1370
  %1407 = fmul fast float %1393, %1369
  %1408 = fmul fast float %1393, %1368
  %1409 = fmul fast float %1393, %1367
  %1410 = fmul fast float %1393, %1366
  %1411 = fmul fast float %1393, %1365
  %1412 = fmul fast float %1393, %1382
  %1413 = fmul fast float %1393, %1381
  %1414 = fmul fast float %1393, %1380
  %1415 = fmul fast float %1393, %1379
  %1416 = fmul fast float %1393, %1378
  %1417 = fmul fast float %1393, %1377
  %1418 = fmul fast float %1393, %1376
  %1419 = fmul fast float %1393, %1375
  %1420 = fmul fast float %1393, %1374
  %1421 = fmul fast float %1393, %1383
  br label %1422

; <label>:1422                                    ; preds = %1390, %714
  %1423 = phi float [ %715, %714 ], [ %1402, %1390 ]
  %1424 = phi float [ %715, %714 ], [ %1401, %1390 ]
  %1425 = phi float [ %715, %714 ], [ %1400, %1390 ]
  %1426 = phi float [ %715, %714 ], [ %1399, %1390 ]
  %1427 = phi float [ %715, %714 ], [ %1398, %1390 ]
  %1428 = phi float [ %715, %714 ], [ %1397, %1390 ]
  %1429 = phi float [ %715, %714 ], [ %1396, %1390 ]
  %1430 = phi float [ %715, %714 ], [ %1395, %1390 ]
  %1431 = phi float [ %715, %714 ], [ %1394, %1390 ]
  %1432 = phi float [ %715, %714 ], [ %1411, %1390 ]
  %1433 = phi float [ %715, %714 ], [ %1410, %1390 ]
  %1434 = phi float [ %715, %714 ], [ %1409, %1390 ]
  %1435 = phi float [ %715, %714 ], [ %1408, %1390 ]
  %1436 = phi float [ %715, %714 ], [ %1407, %1390 ]
  %1437 = phi float [ %715, %714 ], [ %1406, %1390 ]
  %1438 = phi float [ %715, %714 ], [ %1405, %1390 ]
  %1439 = phi float [ %715, %714 ], [ %1404, %1390 ]
  %1440 = phi float [ %715, %714 ], [ %1403, %1390 ]
  %1441 = phi float [ %715, %714 ], [ %1420, %1390 ]
  %1442 = phi float [ %715, %714 ], [ %1419, %1390 ]
  %1443 = phi float [ %715, %714 ], [ %1418, %1390 ]
  %1444 = phi float [ %715, %714 ], [ %1417, %1390 ]
  %1445 = phi float [ %715, %714 ], [ %1416, %1390 ]
  %1446 = phi float [ %715, %714 ], [ %1415, %1390 ]
  %1447 = phi float [ %715, %714 ], [ %1414, %1390 ]
  %1448 = phi float [ %715, %714 ], [ %1413, %1390 ]
  %1449 = phi float [ %715, %714 ], [ %1412, %1390 ]
  %1450 = phi float [ 0.000000e+00, %714 ], [ %1421, %1390 ]
  %1451 = phi i32 [ 1, %714 ], [ %1113, %1390 ]
  %1452 = phi i32 [ -1, %714 ], [ %712, %1390 ]
  %1453 = icmp ne i32 %1451, 0
  store float %1431, float* %137, align 4
  store float %1430, float* %138, align 4
  store float %1429, float* %139, align 4
  store float %1428, float* %140, align 4
  store float %1427, float* %141, align 4
  store float %1426, float* %142, align 4
  store float %1425, float* %143, align 4
  store float %1424, float* %144, align 4
  store float %1423, float* %145, align 4
  store float %1440, float* %146, align 4
  store float %1439, float* %147, align 4
  store float %1438, float* %148, align 4
  store float %1437, float* %149, align 4
  store float %1436, float* %150, align 4
  store float %1435, float* %151, align 4
  store float %1434, float* %152, align 4
  store float %1433, float* %153, align 4
  store float %1432, float* %154, align 4
  store float %1449, float* %155, align 4
  store float %1448, float* %156, align 4
  store float %1447, float* %157, align 4
  store float %1446, float* %158, align 4
  store float %1445, float* %159, align 4
  store float %1444, float* %160, align 4
  store float %1443, float* %161, align 4
  store float %1442, float* %162, align 4
  store float %1441, float* %163, align 4
  %1454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1455 = extractvalue %dx.types.CBufRet.f32 %1454, 3
  %1456 = fcmp fast ogt float %1455, 0.000000e+00
  %1457 = and i1 %203, %1456
  br i1 %1457, label %1458, label %1665, !dx.controlflow.hints !79

; <label>:1458                                    ; preds = %1422
  %1459 = call i32 @dx.op.binary.i32(i32 40, i32 %164, i32 49151)  ; UMin(a,b)
  %1460 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1461 = extractvalue %dx.types.CBufRet.i32 %1460, 0
  %1462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1461, i32 undef)  ; BufferLoad(srv,index,wot)
  %1463 = extractvalue %dx.types.ResRet.i32 %1462, 0
  %1464 = icmp eq i32 %1463, -1
  br i1 %1464, label %1665, label %1465, !dx.controlflow.hints !80

; <label>:1465                                    ; preds = %1458
  %1466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1459, i32 undef)  ; BufferLoad(srv,index,wot)
  %1467 = extractvalue %dx.types.ResRet.i32 %1466, 0
  %1468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1459, i32 undef)  ; BufferLoad(srv,index,wot)
  %1469 = extractvalue %dx.types.ResRet.i32 %1468, 0
  %1470 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1469)  ; Countbits(value)
  %1471 = and i32 %1463, 31
  %1472 = shl i32 1, %1471
  %1473 = add i32 %1472, -1
  %1474 = and i32 %1469, %1473
  %1475 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1474)  ; Countbits(value)
  %1476 = mul i32 %1470, %85
  %1477 = add i32 %1476, %1467
  %1478 = add i32 %1477, %1475
  %1479 = mul i32 %1478, 13
  %1480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1479, i32 0)  ; BufferLoad(srv,index,wot)
  %1481 = extractvalue %dx.types.ResRet.i32 %1480, 0
  %1482 = extractvalue %dx.types.ResRet.i32 %1480, 1
  %1483 = and i32 %1481, 65535
  %1484 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1483)  ; LegacyF16ToF32(value)
  %1485 = lshr i32 %1481, 16
  %1486 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1485)  ; LegacyF16ToF32(value)
  %1487 = and i32 %1482, 65535
  %1488 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1487)  ; LegacyF16ToF32(value)
  %1489 = add i32 %1479, 1
  %1490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1489, i32 0)  ; BufferLoad(srv,index,wot)
  %1491 = extractvalue %dx.types.ResRet.i32 %1490, 0
  %1492 = extractvalue %dx.types.ResRet.i32 %1490, 1
  %1493 = and i32 %1491, 65535
  %1494 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1493)  ; LegacyF16ToF32(value)
  %1495 = lshr i32 %1491, 16
  %1496 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1495)  ; LegacyF16ToF32(value)
  %1497 = and i32 %1492, 65535
  %1498 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1497)  ; LegacyF16ToF32(value)
  %1499 = add i32 %1479, 2
  %1500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1499, i32 0)  ; BufferLoad(srv,index,wot)
  %1501 = extractvalue %dx.types.ResRet.i32 %1500, 0
  %1502 = extractvalue %dx.types.ResRet.i32 %1500, 1
  %1503 = and i32 %1501, 65535
  %1504 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1503)  ; LegacyF16ToF32(value)
  %1505 = lshr i32 %1501, 16
  %1506 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1505)  ; LegacyF16ToF32(value)
  %1507 = and i32 %1502, 65535
  %1508 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1507)  ; LegacyF16ToF32(value)
  %1509 = add i32 %1479, 3
  %1510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1509, i32 0)  ; BufferLoad(srv,index,wot)
  %1511 = extractvalue %dx.types.ResRet.i32 %1510, 0
  %1512 = extractvalue %dx.types.ResRet.i32 %1510, 1
  %1513 = and i32 %1511, 65535
  %1514 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1513)  ; LegacyF16ToF32(value)
  %1515 = lshr i32 %1511, 16
  %1516 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1515)  ; LegacyF16ToF32(value)
  %1517 = and i32 %1512, 65535
  %1518 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1517)  ; LegacyF16ToF32(value)
  %1519 = add i32 %1479, 4
  %1520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1519, i32 0)  ; BufferLoad(srv,index,wot)
  %1521 = extractvalue %dx.types.ResRet.i32 %1520, 0
  %1522 = extractvalue %dx.types.ResRet.i32 %1520, 1
  %1523 = and i32 %1521, 65535
  %1524 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1523)  ; LegacyF16ToF32(value)
  %1525 = lshr i32 %1521, 16
  %1526 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1525)  ; LegacyF16ToF32(value)
  %1527 = and i32 %1522, 65535
  %1528 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1527)  ; LegacyF16ToF32(value)
  %1529 = add i32 %1479, 5
  %1530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1529, i32 0)  ; BufferLoad(srv,index,wot)
  %1531 = extractvalue %dx.types.ResRet.i32 %1530, 0
  %1532 = extractvalue %dx.types.ResRet.i32 %1530, 1
  %1533 = and i32 %1531, 65535
  %1534 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1533)  ; LegacyF16ToF32(value)
  %1535 = lshr i32 %1531, 16
  %1536 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1535)  ; LegacyF16ToF32(value)
  %1537 = and i32 %1532, 65535
  %1538 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1537)  ; LegacyF16ToF32(value)
  %1539 = add i32 %1479, 6
  %1540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1539, i32 0)  ; BufferLoad(srv,index,wot)
  %1541 = extractvalue %dx.types.ResRet.i32 %1540, 0
  %1542 = extractvalue %dx.types.ResRet.i32 %1540, 1
  %1543 = and i32 %1541, 65535
  %1544 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1543)  ; LegacyF16ToF32(value)
  %1545 = lshr i32 %1541, 16
  %1546 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1545)  ; LegacyF16ToF32(value)
  %1547 = and i32 %1542, 65535
  %1548 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1547)  ; LegacyF16ToF32(value)
  %1549 = add i32 %1479, 7
  %1550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1549, i32 0)  ; BufferLoad(srv,index,wot)
  %1551 = extractvalue %dx.types.ResRet.i32 %1550, 0
  %1552 = extractvalue %dx.types.ResRet.i32 %1550, 1
  %1553 = and i32 %1551, 65535
  %1554 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1553)  ; LegacyF16ToF32(value)
  %1555 = lshr i32 %1551, 16
  %1556 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1555)  ; LegacyF16ToF32(value)
  %1557 = and i32 %1552, 65535
  %1558 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1557)  ; LegacyF16ToF32(value)
  %1559 = add i32 %1479, 8
  %1560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1559, i32 0)  ; BufferLoad(srv,index,wot)
  %1561 = extractvalue %dx.types.ResRet.i32 %1560, 0
  %1562 = extractvalue %dx.types.ResRet.i32 %1560, 1
  %1563 = and i32 %1561, 65535
  %1564 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1563)  ; LegacyF16ToF32(value)
  %1565 = lshr i32 %1561, 16
  %1566 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1565)  ; LegacyF16ToF32(value)
  %1567 = and i32 %1562, 65535
  %1568 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1567)  ; LegacyF16ToF32(value)
  %1569 = add i32 %1479, 12
  %1570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1569, i32 0)  ; BufferLoad(srv,index,wot)
  %1571 = extractvalue %dx.types.ResRet.i32 %1570, 0
  %1572 = lshr i32 %1571, 16
  %1573 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1572)  ; LegacyF16ToF32(value)
  br i1 %1453, label %1574, label %1579, !dx.controlflow.hints !81

; <label>:1574                                    ; preds = %1465
  %1575 = fcmp fast ogt float %1450, 0.000000e+00
  %1576 = fcmp fast oeq float %1573, 0.000000e+00
  %1577 = and i1 %1575, %1576
  %1578 = select i1 %1577, float 0.000000e+00, float %1455
  br label %1579

; <label>:1579                                    ; preds = %1574, %1465
  %1580 = phi float [ 1.000000e+00, %1465 ], [ %1578, %1574 ]
  %1581 = fsub fast float %1484, %1431
  %1582 = fmul fast float %1581, %1580
  %1583 = fadd fast float %1582, %1431
  %1584 = fsub fast float %1494, %1430
  %1585 = fmul fast float %1584, %1580
  %1586 = fadd fast float %1585, %1430
  %1587 = fsub fast float %1504, %1429
  %1588 = fmul fast float %1587, %1580
  %1589 = fadd fast float %1588, %1429
  %1590 = fsub fast float %1514, %1428
  %1591 = fmul fast float %1590, %1580
  %1592 = fadd fast float %1591, %1428
  %1593 = fsub fast float %1524, %1427
  %1594 = fmul fast float %1593, %1580
  %1595 = fadd fast float %1594, %1427
  %1596 = fsub fast float %1534, %1426
  %1597 = fmul fast float %1596, %1580
  %1598 = fadd fast float %1597, %1426
  %1599 = fsub fast float %1544, %1425
  %1600 = fmul fast float %1599, %1580
  %1601 = fadd fast float %1600, %1425
  %1602 = fsub fast float %1554, %1424
  %1603 = fmul fast float %1602, %1580
  %1604 = fadd fast float %1603, %1424
  %1605 = fsub fast float %1564, %1423
  %1606 = fmul fast float %1605, %1580
  %1607 = fadd fast float %1606, %1423
  store float %1583, float* %137, align 4
  store float %1586, float* %138, align 4
  store float %1589, float* %139, align 4
  store float %1592, float* %140, align 4
  store float %1595, float* %141, align 4
  store float %1598, float* %142, align 4
  store float %1601, float* %143, align 4
  store float %1604, float* %144, align 4
  store float %1607, float* %145, align 4
  %1608 = fsub fast float %1486, %1440
  %1609 = fmul fast float %1608, %1580
  %1610 = fadd fast float %1609, %1440
  %1611 = fsub fast float %1496, %1439
  %1612 = fmul fast float %1611, %1580
  %1613 = fadd fast float %1612, %1439
  %1614 = fsub fast float %1506, %1438
  %1615 = fmul fast float %1614, %1580
  %1616 = fadd fast float %1615, %1438
  %1617 = fsub fast float %1516, %1437
  %1618 = fmul fast float %1617, %1580
  %1619 = fadd fast float %1618, %1437
  %1620 = fsub fast float %1526, %1436
  %1621 = fmul fast float %1620, %1580
  %1622 = fadd fast float %1621, %1436
  %1623 = fsub fast float %1536, %1435
  %1624 = fmul fast float %1623, %1580
  %1625 = fadd fast float %1624, %1435
  %1626 = fsub fast float %1546, %1434
  %1627 = fmul fast float %1626, %1580
  %1628 = fadd fast float %1627, %1434
  %1629 = fsub fast float %1556, %1433
  %1630 = fmul fast float %1629, %1580
  %1631 = fadd fast float %1630, %1433
  %1632 = fsub fast float %1566, %1432
  %1633 = fmul fast float %1632, %1580
  %1634 = fadd fast float %1633, %1432
  store float %1610, float* %146, align 4
  store float %1613, float* %147, align 4
  store float %1616, float* %148, align 4
  store float %1619, float* %149, align 4
  store float %1622, float* %150, align 4
  store float %1625, float* %151, align 4
  store float %1628, float* %152, align 4
  store float %1631, float* %153, align 4
  store float %1634, float* %154, align 4
  %1635 = fsub fast float %1488, %1449
  %1636 = fmul fast float %1635, %1580
  %1637 = fadd fast float %1636, %1449
  %1638 = fsub fast float %1498, %1448
  %1639 = fmul fast float %1638, %1580
  %1640 = fadd fast float %1639, %1448
  %1641 = fsub fast float %1508, %1447
  %1642 = fmul fast float %1641, %1580
  %1643 = fadd fast float %1642, %1447
  %1644 = fsub fast float %1518, %1446
  %1645 = fmul fast float %1644, %1580
  %1646 = fadd fast float %1645, %1446
  %1647 = fsub fast float %1528, %1445
  %1648 = fmul fast float %1647, %1580
  %1649 = fadd fast float %1648, %1445
  %1650 = fsub fast float %1538, %1444
  %1651 = fmul fast float %1650, %1580
  %1652 = fadd fast float %1651, %1444
  %1653 = fsub fast float %1548, %1443
  %1654 = fmul fast float %1653, %1580
  %1655 = fadd fast float %1654, %1443
  %1656 = fsub fast float %1558, %1442
  %1657 = fmul fast float %1656, %1580
  %1658 = fadd fast float %1657, %1442
  %1659 = fsub fast float %1568, %1441
  %1660 = fmul fast float %1659, %1580
  %1661 = fadd fast float %1660, %1441
  store float %1637, float* %155, align 4
  store float %1640, float* %156, align 4
  store float %1643, float* %157, align 4
  store float %1646, float* %158, align 4
  store float %1649, float* %159, align 4
  store float %1652, float* %160, align 4
  store float %1655, float* %161, align 4
  store float %1658, float* %162, align 4
  store float %1661, float* %163, align 4
  %1662 = fsub fast float %1573, %1450
  %1663 = fmul fast float %1580, %1662
  %1664 = fadd fast float %1663, %1450
  br label %1665

; <label>:1665                                    ; preds = %1579, %1458, %1422
  %1666 = phi float [ %1449, %1422 ], [ %1449, %1458 ], [ %1637, %1579 ]
  %1667 = phi float [ %1440, %1422 ], [ %1440, %1458 ], [ %1610, %1579 ]
  %1668 = phi float [ %1431, %1422 ], [ %1431, %1458 ], [ %1583, %1579 ]
  %1669 = phi float [ %1450, %1422 ], [ %1450, %1458 ], [ %1664, %1579 ]
  %1670 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %100, i32 undef)  ; BufferLoad(srv,index,wot)
  %1671 = extractvalue %dx.types.ResRet.i32 %1670, 0
  %1672 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1671)  ; Countbits(value)
  %1673 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1674 = extractvalue %dx.types.CBufRet.i32 %1673, 0
  %1675 = and i32 %1674, 31
  %1676 = shl i32 1, %1675
  %1677 = add i32 %1676, -1
  %1678 = and i32 %1677, %1671
  %1679 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1678)  ; Countbits(value)
  %1680 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %100, i32 undef)  ; BufferLoad(srv,index,wot)
  %1681 = extractvalue %dx.types.ResRet.i32 %1680, 0
  %1682 = mul i32 %1672, %85
  %1683 = add i32 %1679, %1682
  %1684 = add i32 %1683, %1681
  %1685 = mul i32 %1684, 13
  br label %1686

; <label>:1686                                    ; preds = %1704, %1665
  %1687 = phi float [ %1666, %1665 ], [ %1710, %1704 ]
  %1688 = phi float [ %1667, %1665 ], [ %1708, %1704 ]
  %1689 = phi float [ %1668, %1665 ], [ %1706, %1704 ]
  %1690 = phi i32 [ 0, %1665 ], [ %1702, %1704 ]
  %1691 = sitofp i32 %1690 to float
  %1692 = fmul fast float %1691, 0x3FB99999A0000000
  %1693 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1689)  ; LegacyF32ToF16(value)
  %1694 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1688)  ; LegacyF32ToF16(value)
  %1695 = shl i32 %1694, 16
  %1696 = or i32 %1695, %1693
  %1697 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1687)  ; LegacyF32ToF16(value)
  %1698 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1692)  ; LegacyF32ToF16(value)
  %1699 = shl i32 %1698, 16
  %1700 = or i32 %1699, %1697
  %1701 = add i32 %1690, %1685
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1701, i32 0, i32 %1696, i32 %1700, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1702 = add nuw nsw i32 %1690, 1
  %1703 = icmp eq i32 %1702, 9
  br i1 %1703, label %1711, label %1704

; <label>:1704                                    ; preds = %1686
  %1705 = getelementptr inbounds [9 x float], [9 x float]* %30, i32 0, i32 %1702
  %1706 = load float, float* %1705, align 4, !tbaa !75
  %1707 = getelementptr inbounds [9 x float], [9 x float]* %29, i32 0, i32 %1702
  %1708 = load float, float* %1707, align 4, !tbaa !75
  %1709 = getelementptr inbounds [9 x float], [9 x float]* %28, i32 0, i32 %1702
  %1710 = load float, float* %1709, align 4, !tbaa !75
  br label %1686

; <label>:1711                                    ; preds = %1686
  %1712 = select i1 %1453, float 1.000000e+00, float 9.765625e-04
  %1713 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1712)  ; LegacyF32ToF16(value)
  %1714 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1669)  ; LegacyF32ToF16(value)
  %1715 = shl i32 %1714, 16
  %1716 = or i32 %1715, %1713
  %1717 = add i32 %1685, 12
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1717, i32 0, i32 %1716, i32 %1452, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1718

; <label>:1718                                    ; preds = %1711, %104, %99, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.legacyF32ToF16(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #3

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { noduplicate nounwind }
attributes #3 = { nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!35}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !28, !30, null}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!8 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!9 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 3, i32 1, i32 11, i32 0, null}
!10 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 8, i32 1, i32 11, i32 0, null}
!11 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 4, i32 1, i32 11, i32 0, null}
!12 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 5, i32 1, i32 11, i32 0, null}
!13 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 6, i32 1, i32 11, i32 0, null}
!14 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 7, i32 1, i32 11, i32 0, null}
!15 = !{i32 9, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 13, i32 1, i32 10, i32 0, !16}
!16 = !{i32 0, i32 5}
!17 = !{i32 10, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 14, i32 1, i32 10, i32 0, !16}
!18 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 15, i32 1, i32 11, i32 0, null}
!19 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 16, i32 1, i32 11, i32 0, null}
!20 = !{i32 13, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 17, i32 1, i32 10, i32 0, !16}
!21 = !{i32 14, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 18, i32 1, i32 10, i32 0, !16}
!22 = !{i32 15, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 19, i32 1, i32 10, i32 0, !16}
!23 = !{i32 16, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 20, i32 1, i32 10, i32 0, !16}
!24 = !{i32 17, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 21, i32 1, i32 10, i32 0, !16}
!25 = !{i32 18, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 22, i32 1, i32 10, i32 0, !16}
!26 = !{i32 19, %"class.StructuredBuffer<vector<unsigned int, 2> >"* undef, !"", i32 0, i32 23, i32 1, i32 12, i32 0, !27}
!27 = !{i32 1, i32 8}
!28 = !{!29}
!29 = !{i32 0, %"class.RWStructuredBuffer<vector<unsigned int, 2> >"* undef, !"", i32 0, i32 0, i32 1, i32 12, i1 false, i1 false, i1 false, !27}
!30 = !{!31, !32, !33, !34}
!31 = !{i32 0, %GfxLGBoundConsts* undef, !"", i32 0, i32 4, i32 1, i32 16, null}
!32 = !{i32 1, %GfxSampleLightGridVolumesLightingConsts* undef, !"", i32 0, i32 0, i32 1, i32 48, null}
!33 = !{i32 2, %GfxSampleLightGridVolumesLightingVoxelTreeConsts* undef, !"", i32 0, i32 1, i32 1, i32 16, null}
!34 = !{i32 3, %GfxCombineLightGridVolumesSamplingListsConsts* undef, !"", i32 0, i32 2, i32 1, i32 16, null}
!35 = !{void ()* @cs_sample_per_lightgrid_volumes_lighting, !"cs_sample_per_lightgrid_volumes_lighting", null, !4, !36}
!36 = !{i32 0, i64 272, i32 4, !37}
!37 = !{i32 64, i32 1, i32 1}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = !{!40, !40, i64 0}
!40 = !{!"int", !41, i64 0}
!41 = !{!"omnipotent char", !42, i64 0}
!42 = !{!"Simple C/C++ TBAA"}
!43 = !{!44, !46}
!44 = distinct !{!44, !45, !"\01?FindProbeToProcess@@YAXHHIAIAH0@Z: %volumeIndex"}
!45 = distinct !{!45, !"\01?FindProbeToProcess@@YAXHHIAIAH0@Z"}
!46 = distinct !{!46, !45, !"\01?FindProbeToProcess@@YAXHHIAIAH0@Z: %volumeProbeIndex"}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 1}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !63}
!63 = !{!"llvm.loop.unroll.disable"}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = !{!68, !70, !71, !72, !73, !74}
!68 = distinct !{!68, !69, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %probeR"}
!69 = distinct !{!69, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z"}
!70 = distinct !{!70, !69, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %probeG"}
!71 = distinct !{!71, !69, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %probeB"}
!72 = distinct !{!72, !69, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %probeA"}
!73 = distinct !{!73, !69, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %primaryVisibility"}
!74 = distinct !{!74, !69, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %usedTet"}
!75 = !{!76, !76, i64 0}
!76 = !{!"float", !41, i64 0}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 2}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 2}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 1}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 2}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 2}

