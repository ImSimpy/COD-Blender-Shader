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
; shader hash: 18b6774a80129dfe8c3eaa2dca54d50b
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
; Resource bind info for 
; {
;
;   [16 x i8] (type annotation not present)
; }
;
; Resource bind info for 
; {
;
;   [16 x i8] (type annotation not present)
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
;                                   cbuffer      NA          NA     CB2            cb2     1
;                                   texture  struct         r/o      T0             t0     1
;                                   texture     u32         buf      T1             t1     1
;                                   texture  struct         r/o      T2             t2     1
;                                   texture     u32         buf      T3             t3     1
;                                   texture     u32         buf      T4             t4     1
;                                   texture     u32         buf      T5             t5     1
;                                   texture     f32         buf      T6             t6     1
;                                   texture     u32         buf      T7             t7     1
;                                   texture     f32         buf      T8             t8     1
;                                   texture    byte         r/o      T9             t9     1
;                                   texture     u32         buf     T10            t10     1
;                                   texture     u32         buf     T11            t11     1
;                                   texture     u32         buf     T12            t17     1
;                                   texture     u32         buf     T13            t18     1
;                                   texture     u32         buf     T14            t19     1
;                                   texture    byte         r/o     T15            t12     1
;                                   texture    byte         r/o     T16            t13     1
;                                   texture     u32         buf     T17            t14     1
;                                   texture     u32         buf     T18            t15     1
;                                   texture     u32         buf     T19            t16     1
;                                   texture  struct         r/o     T20            t20     1
;                                       UAV  struct         r/w      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.StructuredBuffer<GfxNeuralLightGridTopLevelNode>" = type { %struct.GfxNeuralLightGridTopLevelNode }
%struct.GfxNeuralLightGridTopLevelNode = type { i32, i32, i32, i32 }
%"class.Buffer<unsigned int>" = type { i32 }
%"class.StructuredBuffer<GfxNeuralLightGridInternalNode>" = type { %struct.GfxNeuralLightGridInternalNode }
%struct.GfxNeuralLightGridInternalNode = type { <2 x i32>, <2 x i32> }
%"class.Buffer<vector<float, 4> >" = type { <4 x float> }
%struct.ByteAddressBuffer = type { i32 }
%"class.StructuredBuffer<vector<unsigned int, 2> >" = type { <2 x i32> }
%"class.RWStructuredBuffer<vector<unsigned int, 2> >" = type { <2 x i32> }
%GfxNeuralLightGridSetupConsts = type { <3 x float>, i32, <3 x float>, i32, <3 x float>, i32, <3 x i32>, i32, float, i32, i32, i32 }
%GfxSampleLightGridVolumesLightingConsts = type { i32, i32, float, float, i32, i32, i32, i32, <3 x float>, i32 }
%GfxCombineLightGridVolumesSamplingListsConsts = type { i32, i32, i32, i32 }

@"\01?g_batchVolumesProbeCounts@@3PAHA" = external addrspace(3) global [64 x i32], align 4

define void @cs_sample_per_lightgrid_volumes_lighting() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %27 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %28 = alloca [9 x float], align 4
  %29 = alloca [9 x float], align 4
  %30 = alloca [9 x float], align 4
  %31 = alloca [8 x float], align 4
  %32 = alloca [8 x i32], align 4
  %33 = alloca [8 x float], align 4
  %34 = icmp ugt i32 %26, 16383
  br i1 %34, label %1399, label %35, !dx.controlflow.hints !40

; <label>:35                                      ; preds = %0
  %36 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %37 = extractvalue %dx.types.CBufRet.i32 %36, 0
  %38 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %37, i32 undef)  ; BufferLoad(srv,index,wot)
  %39 = extractvalue %dx.types.ResRet.i32 %38, 0
  %40 = mul nsw i32 %26, 20
  %41 = add i32 %37, %40
  %42 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %41, i32 undef)  ; BufferLoad(srv,index,wot)
  %43 = extractvalue %dx.types.ResRet.i32 %42, 0
  %44 = lshr i32 %43, 12
  %45 = and i32 %43, 4095
  %46 = add i32 %44, %27
  %47 = icmp ult i32 %46, %39
  %48 = mul i32 %46, 20
  %49 = add i32 %48, %37
  %50 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %49, i32 undef)  ; BufferLoad(srv,index,wot)
  %51 = extractvalue %dx.types.ResRet.i32 %50, 0
  %52 = select i1 %47, i32 %51, i32 -1
  %53 = icmp ne i32 %52, -1
  %54 = shl i32 %52, 5
  %55 = or i32 %54, 12
  %56 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %55, i32 undef)  ; BufferLoad(srv,index,wot)
  %57 = extractvalue %dx.types.ResRet.i32 %56, 0
  %58 = and i32 %57, 255
  %59 = lshr i32 %57, 8
  %60 = and i32 %59, 255
  %61 = lshr i32 %57, 16
  %62 = and i32 %61, 255
  %63 = mul nuw nsw i32 %60, %58
  %64 = mul nuw nsw i32 %63, %62
  %65 = select i1 %53, i32 %64, i32 0
  %66 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?g_batchVolumesProbeCounts@@3PAHA", i32 0, i32 %27
  store i32 %65, i32 addrspace(3)* %66, align 4, !tbaa !41, !noalias !45
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %67 = add i32 %45, %27
  %68 = load i32, i32 addrspace(3)* getelementptr inbounds ([64 x i32], [64 x i32] addrspace(3)* @"\01?g_batchVolumesProbeCounts@@3PAHA", i32 0, i32 0), align 4, !tbaa !41, !noalias !45
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %83, label %70

; <label>:70                                      ; preds = %35
  br label %71

; <label>:71                                      ; preds = %71, %70
  %72 = phi i32 [ %79, %71 ], [ %68, %70 ]
  %73 = phi i32 [ %75, %71 ], [ %67, %70 ]
  %74 = phi i32 [ %76, %71 ], [ 0, %70 ]
  %75 = sub nsw i32 %73, %72
  %76 = add nuw nsw i32 %74, 1
  %77 = icmp slt i32 %76, 64
  %78 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?g_batchVolumesProbeCounts@@3PAHA", i32 0, i32 %76
  %79 = load i32, i32 addrspace(3)* %78, align 4, !tbaa !41, !noalias !45
  %80 = icmp sge i32 %75, %79
  %81 = and i1 %77, %80
  br i1 %81, label %71, label %82

; <label>:82                                      ; preds = %71
  br label %83

; <label>:83                                      ; preds = %82, %35
  %84 = phi i32 [ %67, %35 ], [ %75, %82 ]
  %85 = phi i32 [ 0, %35 ], [ %76, %82 ]
  %86 = add nsw i32 %85, %44
  %87 = icmp ult i32 %86, %39
  br i1 %87, label %88, label %95, !dx.controlflow.hints !49

; <label>:88                                      ; preds = %83
  %89 = mul nsw i32 %86, 20
  %90 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %91 = extractvalue %dx.types.CBufRet.i32 %90, 0
  %92 = add i32 %91, %89
  %93 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %92, i32 undef)  ; BufferLoad(srv,index,wot)
  %94 = extractvalue %dx.types.ResRet.i32 %93, 0
  br label %98

; <label>:95                                      ; preds = %83
  %96 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %97 = extractvalue %dx.types.CBufRet.i32 %96, 0
  br label %98

; <label>:98                                      ; preds = %95, %88
  %99 = phi i32 [ %94, %88 ], [ %97, %95 ]
  %100 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %101 = extractvalue %dx.types.CBufRet.i32 %100, 0
  %102 = icmp slt i32 %99, %101
  br i1 %102, label %103, label %1399, !dx.controlflow.hints !50

; <label>:103                                     ; preds = %98
  %104 = shl i32 %99, 6
  %105 = or i32 %104, 52
  %106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %105, i32 undef)  ; BufferLoad(srv,index,wot)
  %107 = extractvalue %dx.types.ResRet.i32 %106, 0
  %108 = or i32 %104, 56
  %109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %108, i32 undef)  ; BufferLoad(srv,index,wot)
  %110 = extractvalue %dx.types.ResRet.i32 %109, 0
  %111 = or i32 %104, 60
  %112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %111, i32 undef)  ; BufferLoad(srv,index,wot)
  %113 = extractvalue %dx.types.ResRet.i32 %112, 0
  %114 = shl i32 %99, 5
  %115 = or i32 %114, 12
  %116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %115, i32 undef)  ; BufferLoad(srv,index,wot)
  %117 = extractvalue %dx.types.ResRet.i32 %116, 0
  %118 = or i32 %114, 28
  %119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %118, i32 undef)  ; BufferLoad(srv,index,wot)
  %120 = extractvalue %dx.types.ResRet.i32 %119, 0
  %121 = and i32 %117, 255
  %122 = lshr i32 %117, 8
  %123 = and i32 %122, 255
  %124 = lshr i32 %117, 16
  %125 = and i32 %124, 255
  %126 = mul nuw nsw i32 %123, %121
  %127 = udiv i32 %84, %126
  %128 = urem i32 %84, %126
  %129 = udiv i32 %128, %121
  %130 = urem i32 %128, %121
  %131 = and i32 %120, -1610612736
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %1399, !dx.controlflow.hints !51

; <label>:133                                     ; preds = %103
  %134 = getelementptr inbounds [9 x float], [9 x float]* %30, i32 0, i32 0
  store float 0.000000e+00, float* %134, align 4
  %135 = getelementptr inbounds [9 x float], [9 x float]* %30, i32 0, i32 1
  store float 0.000000e+00, float* %135, align 4
  %136 = getelementptr inbounds [9 x float], [9 x float]* %30, i32 0, i32 2
  store float 0.000000e+00, float* %136, align 4
  %137 = getelementptr inbounds [9 x float], [9 x float]* %30, i32 0, i32 3
  store float 0.000000e+00, float* %137, align 4
  %138 = getelementptr inbounds [9 x float], [9 x float]* %30, i32 0, i32 4
  store float 0.000000e+00, float* %138, align 4
  %139 = getelementptr inbounds [9 x float], [9 x float]* %30, i32 0, i32 5
  store float 0.000000e+00, float* %139, align 4
  %140 = getelementptr inbounds [9 x float], [9 x float]* %30, i32 0, i32 6
  store float 0.000000e+00, float* %140, align 4
  %141 = getelementptr inbounds [9 x float], [9 x float]* %30, i32 0, i32 7
  store float 0.000000e+00, float* %141, align 4
  %142 = getelementptr inbounds [9 x float], [9 x float]* %30, i32 0, i32 8
  store float 0.000000e+00, float* %142, align 4
  %143 = getelementptr inbounds [9 x float], [9 x float]* %29, i32 0, i32 0
  store float 0.000000e+00, float* %143, align 4
  %144 = getelementptr inbounds [9 x float], [9 x float]* %29, i32 0, i32 1
  store float 0.000000e+00, float* %144, align 4
  %145 = getelementptr inbounds [9 x float], [9 x float]* %29, i32 0, i32 2
  store float 0.000000e+00, float* %145, align 4
  %146 = getelementptr inbounds [9 x float], [9 x float]* %29, i32 0, i32 3
  store float 0.000000e+00, float* %146, align 4
  %147 = getelementptr inbounds [9 x float], [9 x float]* %29, i32 0, i32 4
  store float 0.000000e+00, float* %147, align 4
  %148 = getelementptr inbounds [9 x float], [9 x float]* %29, i32 0, i32 5
  store float 0.000000e+00, float* %148, align 4
  %149 = getelementptr inbounds [9 x float], [9 x float]* %29, i32 0, i32 6
  store float 0.000000e+00, float* %149, align 4
  %150 = getelementptr inbounds [9 x float], [9 x float]* %29, i32 0, i32 7
  store float 0.000000e+00, float* %150, align 4
  %151 = getelementptr inbounds [9 x float], [9 x float]* %29, i32 0, i32 8
  store float 0.000000e+00, float* %151, align 4
  %152 = getelementptr inbounds [9 x float], [9 x float]* %28, i32 0, i32 0
  store float 0.000000e+00, float* %152, align 4
  %153 = getelementptr inbounds [9 x float], [9 x float]* %28, i32 0, i32 1
  store float 0.000000e+00, float* %153, align 4
  %154 = getelementptr inbounds [9 x float], [9 x float]* %28, i32 0, i32 2
  store float 0.000000e+00, float* %154, align 4
  %155 = getelementptr inbounds [9 x float], [9 x float]* %28, i32 0, i32 3
  store float 0.000000e+00, float* %155, align 4
  %156 = getelementptr inbounds [9 x float], [9 x float]* %28, i32 0, i32 4
  store float 0.000000e+00, float* %156, align 4
  %157 = getelementptr inbounds [9 x float], [9 x float]* %28, i32 0, i32 5
  store float 0.000000e+00, float* %157, align 4
  %158 = getelementptr inbounds [9 x float], [9 x float]* %28, i32 0, i32 6
  store float 0.000000e+00, float* %158, align 4
  %159 = getelementptr inbounds [9 x float], [9 x float]* %28, i32 0, i32 7
  store float 0.000000e+00, float* %159, align 4
  %160 = getelementptr inbounds [9 x float], [9 x float]* %28, i32 0, i32 8
  store float 0.000000e+00, float* %160, align 4
  %161 = and i32 %107, 524287
  %162 = lshr i32 %107, 19
  %163 = and i32 %162, 4095
  %164 = mul nuw nsw i32 %126, %125
  %165 = icmp eq i32 %163, %164
  %166 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %167 = extractvalue %dx.types.CBufRet.i32 %166, 2
  %168 = icmp ne i32 %167, 0
  %169 = icmp ne i32 %161, 65535
  %170 = and i1 %169, %168
  %171 = and i1 %165, %170
  %172 = zext i1 %171 to i32
  br i1 %170, label %173, label %187, !dx.controlflow.hints !52

; <label>:173                                     ; preds = %133
  %174 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %175 = extractvalue %dx.types.CBufRet.i32 %174, 0
  %176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %175, i32 undef)  ; BufferLoad(srv,index,wot)
  %177 = extractvalue %dx.types.ResRet.i32 %176, 0
  %178 = icmp eq i32 %177, -1
  br i1 %178, label %187, label %179, !dx.controlflow.hints !53

; <label>:179                                     ; preds = %173
  %180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %161, i32 undef)  ; BufferLoad(srv,index,wot)
  %181 = extractvalue %dx.types.ResRet.i32 %180, 0
  %182 = and i32 %177, 31
  %183 = shl i32 1, %182
  %184 = and i32 %181, %183
  %185 = icmp eq i32 %184, 0
  %186 = select i1 %185, i32 0, i32 %172
  br label %187

; <label>:187                                     ; preds = %179, %173, %133
  %188 = phi i32 [ %172, %133 ], [ 0, %173 ], [ %186, %179 ]
  %189 = icmp ne i32 %188, 0
  %190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %191 = extractvalue %dx.types.CBufRet.f32 %190, 2
  %192 = icmp ugt i32 %121, 1
  %193 = select i1 %192, float 0.000000e+00, float 5.000000e-01
  %194 = icmp ugt i32 %123, 1
  %195 = select i1 %194, float 0.000000e+00, float 5.000000e-01
  %196 = icmp ugt i32 %125, 1
  %197 = select i1 %196, float 0.000000e+00, float 5.000000e-01
  %198 = uitofp i32 %121 to float
  %199 = uitofp i32 %123 to float
  %200 = uitofp i32 %125 to float
  %201 = fadd fast float %198, -1.000000e+00
  %202 = fadd fast float %199, -1.000000e+00
  %203 = fadd fast float %200, -1.000000e+00
  %204 = call float @dx.op.binary.f32(i32 35, float 1.000000e+00, float %201)  ; FMax(a,b)
  %205 = call float @dx.op.binary.f32(i32 35, float 1.000000e+00, float %202)  ; FMax(a,b)
  %206 = call float @dx.op.binary.f32(i32 35, float 1.000000e+00, float %203)  ; FMax(a,b)
  %207 = fdiv fast float 1.000000e+00, %204
  %208 = fdiv fast float 1.000000e+00, %205
  %209 = fdiv fast float 1.000000e+00, %206
  %210 = uitofp i32 %130 to float
  %211 = uitofp i32 %129 to float
  %212 = uitofp i32 %127 to float
  %213 = fadd fast float %210, %193
  %214 = fadd fast float %211, %195
  %215 = fadd fast float %197, %212
  %216 = fmul fast float %207, %213
  %217 = fmul fast float %208, %214
  %218 = fmul fast float %209, %215
  %219 = fmul fast float %207, %191
  %220 = fsub fast float -0.000000e+00, %219
  %221 = fmul fast float %208, %191
  %222 = fsub fast float -0.000000e+00, %221
  %223 = fmul fast float %209, %191
  %224 = fsub fast float -0.000000e+00, %223
  %225 = fmul fast float %216, 5.000000e-01
  %226 = fmul fast float %217, 5.000000e-01
  %227 = fmul fast float %218, 5.000000e-01
  %228 = fsub fast float %219, %225
  %229 = fsub fast float %221, %226
  %230 = fsub fast float %223, %227
  %231 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %228)  ; FMax(a,b)
  %232 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %229)  ; FMax(a,b)
  %233 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %230)  ; FMax(a,b)
  %234 = call float @dx.op.binary.f32(i32 36, float %219, float %231)  ; FMin(a,b)
  %235 = call float @dx.op.binary.f32(i32 36, float %221, float %232)  ; FMin(a,b)
  %236 = call float @dx.op.binary.f32(i32 36, float %223, float %233)  ; FMin(a,b)
  %237 = fsub fast float 5.000000e-01, %219
  %238 = fsub fast float 5.000000e-01, %221
  %239 = fsub fast float 5.000000e-01, %223
  %240 = fsub fast float %237, %225
  %241 = fsub fast float %238, %226
  %242 = fsub fast float %239, %227
  %243 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %240)  ; FMin(a,b)
  %244 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %241)  ; FMin(a,b)
  %245 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %242)  ; FMin(a,b)
  %246 = call float @dx.op.binary.f32(i32 35, float %220, float %243)  ; FMax(a,b)
  %247 = call float @dx.op.binary.f32(i32 35, float %222, float %244)  ; FMax(a,b)
  %248 = call float @dx.op.binary.f32(i32 35, float %224, float %245)  ; FMax(a,b)
  %249 = fadd fast float %234, %216
  %250 = fadd fast float %235, %217
  %251 = fadd fast float %236, %218
  %252 = fadd fast float %249, %246
  %253 = fadd fast float %250, %247
  %254 = fadd fast float %251, %248
  %255 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %104, i32 undef)  ; BufferLoad(srv,index,wot)
  %256 = extractvalue %dx.types.ResRet.f32 %255, 0
  %257 = or i32 %104, 16
  %258 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %257, i32 undef)  ; BufferLoad(srv,index,wot)
  %259 = extractvalue %dx.types.ResRet.f32 %258, 1
  %260 = or i32 %104, 32
  %261 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %260, i32 undef)  ; BufferLoad(srv,index,wot)
  %262 = extractvalue %dx.types.ResRet.f32 %261, 2
  %263 = fmul fast float %262, %259
  %264 = extractvalue %dx.types.ResRet.f32 %258, 2
  %265 = extractvalue %dx.types.ResRet.f32 %261, 1
  %266 = fmul fast float %265, %264
  %267 = fsub fast float %263, %266
  %268 = fmul fast float %267, %256
  %269 = extractvalue %dx.types.ResRet.f32 %255, 1
  %270 = extractvalue %dx.types.ResRet.f32 %258, 0
  %271 = fmul fast float %262, %270
  %272 = extractvalue %dx.types.ResRet.f32 %261, 0
  %273 = fmul fast float %272, %264
  %274 = fsub fast float %271, %273
  %275 = fmul fast float %274, %269
  %276 = fsub fast float %268, %275
  %277 = extractvalue %dx.types.ResRet.f32 %255, 2
  %278 = fmul fast float %265, %270
  %279 = fmul fast float %272, %259
  %280 = fsub fast float %278, %279
  %281 = fmul fast float %280, %277
  %282 = fadd fast float %276, %281
  %283 = extractvalue %dx.types.ResRet.f32 %255, 3
  %284 = fmul fast float %267, %283
  %285 = extractvalue %dx.types.ResRet.f32 %258, 3
  %286 = fmul fast float %262, %269
  %287 = fmul fast float %265, %277
  %288 = fsub fast float %286, %287
  %289 = fmul fast float %288, %285
  %290 = fsub fast float %289, %284
  %291 = extractvalue %dx.types.ResRet.f32 %261, 3
  %292 = fmul fast float %264, %269
  %293 = fmul fast float %259, %277
  %294 = fsub fast float %292, %293
  %295 = fmul fast float %294, %291
  %296 = fsub fast float %290, %295
  %297 = fmul fast float %274, %283
  %298 = fmul fast float %262, %256
  %299 = fmul fast float %272, %277
  %300 = fsub fast float %298, %299
  %301 = fmul fast float %300, %285
  %302 = fsub fast float %297, %301
  %303 = fmul fast float %264, %256
  %304 = fmul fast float %270, %277
  %305 = fsub fast float %303, %304
  %306 = fmul fast float %305, %291
  %307 = fadd fast float %302, %306
  %308 = fmul fast float %280, %283
  %309 = fmul fast float %265, %256
  %310 = fmul fast float %272, %269
  %311 = fsub fast float %309, %310
  %312 = fmul fast float %311, %285
  %313 = fsub fast float %312, %308
  %314 = fmul fast float %259, %256
  %315 = fmul fast float %270, %269
  %316 = fsub fast float %314, %315
  %317 = fmul fast float %316, %291
  %318 = fsub fast float %313, %317
  %319 = fsub fast float %287, %286
  %320 = fsub fast float %273, %271
  %321 = fsub fast float %304, %303
  %322 = fsub fast float %310, %309
  %323 = fdiv fast float 1.000000e+00, %282
  %324 = fmul fast float %323, %267
  %325 = fmul fast float %323, %319
  %326 = fmul fast float %323, %294
  %327 = fmul fast float %323, %296
  %328 = fmul fast float %323, %320
  %329 = fmul fast float %323, %300
  %330 = fmul fast float %323, %321
  %331 = fmul fast float %323, %307
  %332 = fmul fast float %323, %280
  %333 = fmul fast float %323, %322
  %334 = fmul fast float %316, %323
  %335 = fmul fast float %323, %318
  %336 = call float @dx.op.dot4.f32(i32 56, float %324, float %325, float %326, float %327, float %252, float %253, float %254, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %337 = call float @dx.op.dot4.f32(i32 56, float %328, float %329, float %330, float %331, float %252, float %253, float %254, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %338 = call float @dx.op.dot4.f32(i32 56, float %332, float %333, float %334, float %335, float %252, float %253, float %254, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %339 = lshr i32 %113, 16
  %340 = call float @dx.op.legacyF16ToF32(i32 131, i32 %339)  ; LegacyF16ToF32(value)
  %341 = and i32 %113, 65535
  %342 = call float @dx.op.legacyF16ToF32(i32 131, i32 %341)  ; LegacyF16ToF32(value)
  %343 = and i32 %110, 65535
  %344 = call float @dx.op.legacyF16ToF32(i32 131, i32 %343)  ; LegacyF16ToF32(value)
  %345 = and i32 %110, 65536
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %360, label %347, !dx.controlflow.hints !54

; <label>:347                                     ; preds = %187
  %348 = fadd fast float %252, -5.000000e-01
  %349 = fadd fast float %253, -5.000000e-01
  %350 = fadd fast float %254, -5.000000e-01
  %351 = call float @dx.op.dot3.f32(i32 55, float %348, float %349, float %350, float %340, float %342, float %344)  ; Dot3(ax,ay,az,bx,by,bz)
  %352 = fcmp fast ogt float %351, 0.000000e+00
  %353 = select i1 %352, float 1.000000e+00, float -1.000000e+00
  %354 = call float @dx.op.dot3.f32(i32 55, float %324, float %325, float %326, float %340, float %342, float %344)  ; Dot3(ax,ay,az,bx,by,bz)
  %355 = call float @dx.op.dot3.f32(i32 55, float %328, float %329, float %330, float %340, float %342, float %344)  ; Dot3(ax,ay,az,bx,by,bz)
  %356 = call float @dx.op.dot3.f32(i32 55, float %332, float %333, float %334, float %340, float %342, float %344)  ; Dot3(ax,ay,az,bx,by,bz)
  %357 = fmul fast float %353, %354
  %358 = fmul fast float %355, %353
  %359 = fmul fast float %356, %353
  br label %360

; <label>:360                                     ; preds = %347, %187
  %361 = phi float [ %357, %347 ], [ %340, %187 ]
  %362 = phi float [ %358, %347 ], [ %342, %187 ]
  %363 = phi float [ %359, %347 ], [ %344, %187 ]
  %364 = fadd fast float %361, %336
  %365 = fadd fast float %362, %337
  %366 = fadd fast float %363, %338
  %367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %368 = extractvalue %dx.types.CBufRet.f32 %367, 0
  %369 = extractvalue %dx.types.CBufRet.f32 %367, 1
  %370 = extractvalue %dx.types.CBufRet.f32 %367, 2
  %371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %372 = extractvalue %dx.types.CBufRet.f32 %371, 0
  %373 = extractvalue %dx.types.CBufRet.f32 %371, 1
  %374 = extractvalue %dx.types.CBufRet.f32 %371, 2
  %375 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %376 = extractvalue %dx.types.CBufRet.i32 %375, 1
  %377 = fsub fast float %364, %368
  %378 = fsub fast float %365, %369
  %379 = fsub fast float %366, %370
  %380 = fmul fast float %377, %372
  %381 = fmul fast float %378, %373
  %382 = fmul fast float %379, %374
  %383 = fcmp fast ole float %380, 0.000000e+00
  %384 = fcmp fast ole float %381, 0.000000e+00
  %385 = fcmp fast ole float %382, 0.000000e+00
  %386 = or i1 %383, %384
  %387 = or i1 %385, %386
  %388 = fcmp fast oge float %380, 1.000000e+00
  %389 = fcmp fast oge float %381, 1.000000e+00
  %390 = fcmp fast oge float %382, 1.000000e+00
  %391 = or i1 %388, %389
  %392 = or i1 %390, %391
  %393 = or i1 %387, %392
  br i1 %393, label %1109, label %394, !dx.controlflow.hints !55

; <label>:394                                     ; preds = %360
  %395 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %396 = extractvalue %dx.types.CBufRet.i32 %395, 0
  %397 = fptosi float %377 to i32
  %398 = fptosi float %378 to i32
  %399 = fptosi float %379 to i32
  %400 = and i32 %376, 31
  %401 = ashr i32 %397, %400
  %402 = ashr i32 %398, %400
  %403 = ashr i32 %399, %400
  %404 = mul i32 %396, %402
  %405 = add nsw i32 %404, %401
  %406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %405, i32 0)  ; BufferLoad(srv,index,wot)
  %407 = extractvalue %dx.types.ResRet.i32 %406, 0
  %408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %405, i32 4)  ; BufferLoad(srv,index,wot)
  %409 = extractvalue %dx.types.ResRet.i32 %408, 0
  %410 = icmp slt i32 %403, %407
  %411 = icmp sgt i32 %403, %409
  %412 = or i1 %410, %411
  br i1 %412, label %1109, label %413, !dx.controlflow.hints !56

; <label>:413                                     ; preds = %394
  %414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %405, i32 8)  ; BufferLoad(srv,index,wot)
  %415 = extractvalue %dx.types.ResRet.i32 %414, 0
  %416 = sub i32 %403, %407
  %417 = add nsw i32 %416, %415
  %418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %417, i32 undef)  ; BufferLoad(srv,index,wot)
  %419 = extractvalue %dx.types.ResRet.i32 %418, 0
  %420 = icmp eq i32 %419, -1
  br i1 %420, label %1109, label %421, !dx.controlflow.hints !57

; <label>:421                                     ; preds = %413
  %422 = getelementptr inbounds [8 x i32], [8 x i32]* %32, i32 0, i32 0
  store i32 -1, i32* %422, align 4, !tbaa !41, !noalias !58
  %423 = getelementptr inbounds [8 x i32], [8 x i32]* %32, i32 0, i32 1
  store i32 -1, i32* %423, align 4, !tbaa !41, !noalias !58
  %424 = getelementptr inbounds [8 x i32], [8 x i32]* %32, i32 0, i32 2
  store i32 -1, i32* %424, align 4, !tbaa !41, !noalias !58
  %425 = getelementptr inbounds [8 x i32], [8 x i32]* %32, i32 0, i32 3
  store i32 -1, i32* %425, align 4, !tbaa !41, !noalias !58
  %426 = getelementptr inbounds [8 x i32], [8 x i32]* %32, i32 0, i32 4
  store i32 -1, i32* %426, align 4, !tbaa !41, !noalias !58
  %427 = getelementptr inbounds [8 x i32], [8 x i32]* %32, i32 0, i32 5
  store i32 -1, i32* %427, align 4, !tbaa !41, !noalias !58
  %428 = getelementptr inbounds [8 x i32], [8 x i32]* %32, i32 0, i32 6
  store i32 -1, i32* %428, align 4, !tbaa !41, !noalias !58
  %429 = getelementptr inbounds [8 x i32], [8 x i32]* %32, i32 0, i32 7
  store i32 -1, i32* %429, align 4, !tbaa !41, !noalias !58
  br label %430

; <label>:430                                     ; preds = %534, %421
  %431 = phi i32 [ -1, %421 ], [ %531, %534 ]
  %432 = phi i32 [ -1, %421 ], [ %526, %534 ]
  %433 = phi i32 [ -1, %421 ], [ %519, %534 ]
  %434 = phi i32 [ -1, %421 ], [ %514, %534 ]
  %435 = phi i32 [ -1, %421 ], [ %505, %534 ]
  %436 = phi i32 [ -1, %421 ], [ %500, %534 ]
  %437 = phi i32 [ -1, %421 ], [ %492, %534 ]
  %438 = phi i32 [ -1, %421 ], [ %485, %534 ]
  %439 = phi i32 [ %419, %421 ], [ %554, %534 ]
  %440 = phi i32 [ %376, %421 ], [ %441, %534 ]
  %441 = add nsw i32 %440, -2
  %442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %443 = extractvalue %dx.types.ResRet.i32 %442, 0
  %444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %445 = extractvalue %dx.types.ResRet.i32 %444, 0
  %446 = and i32 %443, 31
  %447 = shl i32 1, %446
  %448 = add i32 %447, 1
  %449 = and i32 %441, 31
  %450 = ashr i32 %397, %449
  %451 = ashr i32 %398, %449
  %452 = ashr i32 %399, %449
  %453 = and i32 %450, 3
  %454 = and i32 %451, 3
  %455 = and i32 %452, 3
  br label %456

; <label>:456                                     ; preds = %456, %430
  %457 = phi i32 [ %431, %430 ], [ %531, %456 ]
  %458 = phi i32 [ %432, %430 ], [ %526, %456 ]
  %459 = phi i32 [ %433, %430 ], [ %519, %456 ]
  %460 = phi i32 [ %434, %430 ], [ %514, %456 ]
  %461 = phi i32 [ %435, %430 ], [ %505, %456 ]
  %462 = phi i32 [ %436, %430 ], [ %500, %456 ]
  %463 = phi i32 [ %437, %430 ], [ %492, %456 ]
  %464 = phi i32 [ %438, %430 ], [ %485, %456 ]
  %465 = phi i32 [ 0, %430 ], [ %532, %456 ]
  %466 = sub i32 2, %465
  %467 = and i32 %466, 31
  %468 = lshr i32 %453, %467
  %469 = lshr i32 %454, %467
  %470 = lshr i32 %455, %467
  %471 = sub i32 %443, %465
  %472 = and i32 %471, 31
  %473 = shl i32 %468, %472
  %474 = shl i32 %469, %472
  %475 = shl i32 %470, %472
  %476 = shl i32 1, %472
  %477 = mul i32 %475, %448
  %478 = add i32 %477, %474
  %479 = mul i32 %478, %448
  %480 = add i32 %473, %445
  %481 = add i32 %480, %479
  %482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %481, i32 undef)  ; BufferLoad(srv,index,wot)
  %483 = extractvalue %dx.types.ResRet.i32 %482, 0
  %484 = icmp ne i32 %483, -1
  %485 = select i1 %484, i32 %483, i32 %464
  store i32 %485, i32* %422, align 4, !tbaa !41, !noalias !58
  %486 = add i32 %476, %445
  %487 = add i32 %486, %473
  %488 = add i32 %487, %479
  %489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %488, i32 undef)  ; BufferLoad(srv,index,wot)
  %490 = extractvalue %dx.types.ResRet.i32 %489, 0
  %491 = icmp ne i32 %490, -1
  %492 = select i1 %491, i32 %490, i32 %463
  store i32 %492, i32* %423, align 4, !tbaa !41, !noalias !58
  %493 = add i32 %474, %476
  %494 = add i32 %493, %477
  %495 = mul i32 %494, %448
  %496 = add i32 %480, %495
  %497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %496, i32 undef)  ; BufferLoad(srv,index,wot)
  %498 = extractvalue %dx.types.ResRet.i32 %497, 0
  %499 = icmp ne i32 %498, -1
  %500 = select i1 %499, i32 %498, i32 %462
  store i32 %500, i32* %424, align 4, !tbaa !41, !noalias !58
  %501 = add i32 %487, %495
  %502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %501, i32 undef)  ; BufferLoad(srv,index,wot)
  %503 = extractvalue %dx.types.ResRet.i32 %502, 0
  %504 = icmp ne i32 %503, -1
  %505 = select i1 %504, i32 %503, i32 %461
  store i32 %505, i32* %425, align 4, !tbaa !41, !noalias !58
  %506 = add i32 %475, %476
  %507 = mul i32 %506, %448
  %508 = add i32 %507, %474
  %509 = mul i32 %508, %448
  %510 = add i32 %480, %509
  %511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %510, i32 undef)  ; BufferLoad(srv,index,wot)
  %512 = extractvalue %dx.types.ResRet.i32 %511, 0
  %513 = icmp ne i32 %512, -1
  %514 = select i1 %513, i32 %512, i32 %460
  store i32 %514, i32* %426, align 4, !tbaa !41, !noalias !58
  %515 = add i32 %487, %509
  %516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %515, i32 undef)  ; BufferLoad(srv,index,wot)
  %517 = extractvalue %dx.types.ResRet.i32 %516, 0
  %518 = icmp ne i32 %517, -1
  %519 = select i1 %518, i32 %517, i32 %459
  store i32 %519, i32* %427, align 4, !tbaa !41, !noalias !58
  %520 = add i32 %493, %507
  %521 = mul i32 %520, %448
  %522 = add i32 %480, %521
  %523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %522, i32 undef)  ; BufferLoad(srv,index,wot)
  %524 = extractvalue %dx.types.ResRet.i32 %523, 0
  %525 = icmp ne i32 %524, -1
  %526 = select i1 %525, i32 %524, i32 %458
  store i32 %526, i32* %428, align 4, !tbaa !41, !noalias !58
  %527 = add i32 %487, %521
  %528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %527, i32 undef)  ; BufferLoad(srv,index,wot)
  %529 = extractvalue %dx.types.ResRet.i32 %528, 0
  %530 = icmp ne i32 %529, -1
  %531 = select i1 %530, i32 %529, i32 %457
  store i32 %531, i32* %429, align 4, !tbaa !41, !noalias !58
  %532 = add i32 %465, 1
  %533 = icmp ugt i32 %532, %443
  br i1 %533, label %534, label %456

; <label>:534                                     ; preds = %456
  %535 = shl nuw nsw i32 %455, 4
  %536 = shl nuw nsw i32 %454, 2
  %537 = lshr i32 %455, 1
  %538 = and i32 %535, 16
  %539 = or i32 %536, %453
  %540 = or i32 %539, %538
  %541 = shl i32 1, %540
  %542 = shl nuw nsw i32 %537, 2
  %543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %439, i32 %542)  ; BufferLoad(srv,index,wot)
  %544 = extractvalue %dx.types.ResRet.i32 %543, 0
  %545 = and i32 %544, %541
  %546 = icmp eq i32 %545, 0
  %547 = add i32 %541, -1
  %548 = and i32 %544, %547
  %549 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %548)  ; Countbits(value)
  %550 = or i32 %542, 8
  %551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %439, i32 %550)  ; BufferLoad(srv,index,wot)
  %552 = extractvalue %dx.types.ResRet.i32 %551, 0
  %553 = add i32 %552, %549
  %554 = select i1 %546, i32 -1, i32 %553
  %555 = icmp eq i32 %554, -1
  br i1 %555, label %556, label %430

; <label>:556                                     ; preds = %534
  br label %557

; <label>:557                                     ; preds = %843, %556
  %558 = phi i32 [ %845, %843 ], [ %485, %556 ]
  %559 = phi float [ %840, %843 ], [ 0.000000e+00, %556 ]
  %560 = phi i32 [ %841, %843 ], [ 0, %556 ]
  %561 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %558, i32 undef)  ; BufferLoad(srv,index,wot)
  %562 = extractvalue %dx.types.ResRet.f32 %561, 0
  %563 = extractvalue %dx.types.ResRet.f32 %561, 1
  %564 = extractvalue %dx.types.ResRet.f32 %561, 2
  %565 = extractvalue %dx.types.ResRet.f32 %561, 3
  %566 = fsub fast float %364, %562
  %567 = fsub fast float %365, %563
  %568 = fsub fast float %366, %564
  %569 = fmul fast float %566, %565
  %570 = fmul fast float %567, %565
  %571 = fmul fast float %568, %565
  %572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %558, i32 undef)  ; BufferLoad(srv,index,wot)
  %573 = extractvalue %dx.types.ResRet.i32 %572, 0
  %574 = call float @dx.op.unary.f32(i32 6, float %569)  ; FAbs(value)
  %575 = call float @dx.op.unary.f32(i32 6, float %570)  ; FAbs(value)
  %576 = fsub fast float 1.000000e+00, %574
  %577 = fsub fast float 1.000000e+00, %575
  %578 = call float @dx.op.unary.f32(i32 7, float %576)  ; Saturate(value)
  %579 = call float @dx.op.unary.f32(i32 7, float %577)  ; Saturate(value)
  %580 = fmul fast float %579, %578
  %581 = mul i32 %573, 29
  %582 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %581, i32 undef)  ; BufferLoad(srv,index,wot)
  %583 = extractvalue %dx.types.ResRet.f32 %582, 0
  %584 = extractvalue %dx.types.ResRet.f32 %582, 1
  %585 = extractvalue %dx.types.ResRet.f32 %582, 2
  %586 = extractvalue %dx.types.ResRet.f32 %582, 3
  %587 = add i32 %581, 1
  %588 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %587, i32 undef)  ; BufferLoad(srv,index,wot)
  %589 = extractvalue %dx.types.ResRet.f32 %588, 0
  %590 = extractvalue %dx.types.ResRet.f32 %588, 1
  %591 = extractvalue %dx.types.ResRet.f32 %588, 2
  %592 = extractvalue %dx.types.ResRet.f32 %588, 3
  %593 = add i32 %581, 2
  %594 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %593, i32 undef)  ; BufferLoad(srv,index,wot)
  %595 = extractvalue %dx.types.ResRet.f32 %594, 0
  %596 = extractvalue %dx.types.ResRet.f32 %594, 1
  %597 = extractvalue %dx.types.ResRet.f32 %594, 2
  %598 = extractvalue %dx.types.ResRet.f32 %594, 3
  %599 = add i32 %581, 3
  %600 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %599, i32 undef)  ; BufferLoad(srv,index,wot)
  %601 = extractvalue %dx.types.ResRet.f32 %600, 0
  %602 = extractvalue %dx.types.ResRet.f32 %600, 1
  %603 = extractvalue %dx.types.ResRet.f32 %600, 2
  %604 = extractvalue %dx.types.ResRet.f32 %600, 3
  %605 = add i32 %581, 4
  %606 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %605, i32 undef)  ; BufferLoad(srv,index,wot)
  %607 = extractvalue %dx.types.ResRet.f32 %606, 0
  %608 = extractvalue %dx.types.ResRet.f32 %606, 1
  %609 = extractvalue %dx.types.ResRet.f32 %606, 2
  %610 = extractvalue %dx.types.ResRet.f32 %606, 3
  %611 = add i32 %581, 5
  %612 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %611, i32 undef)  ; BufferLoad(srv,index,wot)
  %613 = extractvalue %dx.types.ResRet.f32 %612, 0
  %614 = extractvalue %dx.types.ResRet.f32 %612, 1
  %615 = extractvalue %dx.types.ResRet.f32 %612, 2
  %616 = extractvalue %dx.types.ResRet.f32 %612, 3
  %617 = add i32 %581, 6
  %618 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %617, i32 undef)  ; BufferLoad(srv,index,wot)
  %619 = extractvalue %dx.types.ResRet.f32 %618, 0
  %620 = extractvalue %dx.types.ResRet.f32 %618, 1
  %621 = extractvalue %dx.types.ResRet.f32 %618, 2
  %622 = extractvalue %dx.types.ResRet.f32 %618, 3
  %623 = add i32 %581, 7
  %624 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %623, i32 undef)  ; BufferLoad(srv,index,wot)
  %625 = extractvalue %dx.types.ResRet.f32 %624, 0
  %626 = extractvalue %dx.types.ResRet.f32 %624, 1
  %627 = extractvalue %dx.types.ResRet.f32 %624, 2
  %628 = extractvalue %dx.types.ResRet.f32 %624, 3
  %629 = fmul fast float %583, %569
  %630 = fmul fast float %595, %570
  %631 = fadd fast float %630, %629
  %632 = fmul fast float %607, %571
  %633 = fadd fast float %631, %632
  %634 = fmul fast float %584, %569
  %635 = fmul fast float %596, %570
  %636 = fadd fast float %635, %634
  %637 = fmul fast float %608, %571
  %638 = fadd fast float %636, %637
  %639 = fmul fast float %585, %569
  %640 = fmul fast float %597, %570
  %641 = fadd fast float %640, %639
  %642 = fmul fast float %609, %571
  %643 = fadd fast float %641, %642
  %644 = fmul fast float %586, %569
  %645 = fmul fast float %598, %570
  %646 = fadd fast float %645, %644
  %647 = fmul fast float %610, %571
  %648 = fadd fast float %646, %647
  %649 = fmul fast float %589, %569
  %650 = fmul fast float %601, %570
  %651 = fadd fast float %650, %649
  %652 = fmul fast float %613, %571
  %653 = fadd fast float %651, %652
  %654 = fmul fast float %590, %569
  %655 = fmul fast float %602, %570
  %656 = fadd fast float %655, %654
  %657 = fmul fast float %614, %571
  %658 = fadd fast float %656, %657
  %659 = fmul fast float %591, %569
  %660 = fmul fast float %603, %570
  %661 = fadd fast float %660, %659
  %662 = fmul fast float %615, %571
  %663 = fadd fast float %661, %662
  %664 = fmul fast float %592, %569
  %665 = fmul fast float %604, %570
  %666 = fadd fast float %665, %664
  %667 = fmul fast float %616, %571
  %668 = fadd fast float %666, %667
  %669 = fadd fast float %633, %619
  %670 = fadd fast float %638, %620
  %671 = fadd fast float %643, %621
  %672 = fadd fast float %648, %622
  %673 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %669)  ; FMax(a,b)
  %674 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %670)  ; FMax(a,b)
  %675 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %671)  ; FMax(a,b)
  %676 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %672)  ; FMax(a,b)
  %677 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %669)  ; FMin(a,b)
  %678 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %670)  ; FMin(a,b)
  %679 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %671)  ; FMin(a,b)
  %680 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %672)  ; FMin(a,b)
  %681 = fmul fast float %677, 0x3F847AE140000000
  %682 = fmul fast float %678, 0x3F847AE140000000
  %683 = fmul fast float %679, 0x3F847AE140000000
  %684 = fmul fast float %680, 0x3F847AE140000000
  %685 = fadd fast float %681, %673
  %686 = fadd fast float %682, %674
  %687 = fadd fast float %683, %675
  %688 = fadd fast float %684, %676
  %689 = fadd fast float %653, %625
  %690 = fadd fast float %658, %626
  %691 = fadd fast float %663, %627
  %692 = fadd fast float %668, %628
  %693 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %689)  ; FMax(a,b)
  %694 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %690)  ; FMax(a,b)
  %695 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %691)  ; FMax(a,b)
  %696 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %692)  ; FMax(a,b)
  %697 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %689)  ; FMin(a,b)
  %698 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %690)  ; FMin(a,b)
  %699 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %691)  ; FMin(a,b)
  %700 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %692)  ; FMin(a,b)
  %701 = fmul fast float %697, 0x3F847AE140000000
  %702 = fmul fast float %698, 0x3F847AE140000000
  %703 = fmul fast float %699, 0x3F847AE140000000
  %704 = fmul fast float %700, 0x3F847AE140000000
  %705 = fadd fast float %701, %693
  %706 = fadd fast float %702, %694
  %707 = fadd fast float %703, %695
  %708 = fadd fast float %704, %696
  br label %709

; <label>:709                                     ; preds = %709, %557
  %710 = phi i32 [ 0, %557 ], [ %730, %709 ]
  %711 = add i32 %581, 8
  %712 = shl i32 %710, 1
  %713 = add i32 %711, %712
  %714 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %713, i32 undef)  ; BufferLoad(srv,index,wot)
  %715 = extractvalue %dx.types.ResRet.f32 %714, 0
  %716 = extractvalue %dx.types.ResRet.f32 %714, 1
  %717 = extractvalue %dx.types.ResRet.f32 %714, 2
  %718 = extractvalue %dx.types.ResRet.f32 %714, 3
  %719 = add i32 %581, 9
  %720 = add i32 %719, %712
  %721 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %720, i32 undef)  ; BufferLoad(srv,index,wot)
  %722 = extractvalue %dx.types.ResRet.f32 %721, 0
  %723 = extractvalue %dx.types.ResRet.f32 %721, 1
  %724 = extractvalue %dx.types.ResRet.f32 %721, 2
  %725 = extractvalue %dx.types.ResRet.f32 %721, 3
  %726 = call float @dx.op.dot4.f32(i32 56, float %715, float %716, float %717, float %718, float %685, float %686, float %687, float %688)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %727 = call float @dx.op.dot4.f32(i32 56, float %722, float %723, float %724, float %725, float %705, float %706, float %707, float %708)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %728 = fadd fast float %727, %726
  %729 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 %710
  store float %728, float* %729, align 4, !tbaa !64, !noalias !58
  %730 = add nuw nsw i32 %710, 1
  %731 = icmp eq i32 %730, 8
  br i1 %731, label %732, label %709

; <label>:732                                     ; preds = %709
  %733 = call float @dx.op.unary.f32(i32 6, float %571)  ; FAbs(value)
  %734 = fsub fast float 1.000000e+00, %733
  %735 = call float @dx.op.unary.f32(i32 7, float %734)  ; Saturate(value)
  %736 = fmul fast float %580, %735
  %737 = add i32 %581, 24
  %738 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %737, i32 undef)  ; BufferLoad(srv,index,wot)
  %739 = extractvalue %dx.types.ResRet.f32 %738, 0
  %740 = extractvalue %dx.types.ResRet.f32 %738, 1
  %741 = extractvalue %dx.types.ResRet.f32 %738, 2
  %742 = extractvalue %dx.types.ResRet.f32 %738, 3
  %743 = add i32 %581, 25
  %744 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %743, i32 undef)  ; BufferLoad(srv,index,wot)
  %745 = extractvalue %dx.types.ResRet.f32 %744, 0
  %746 = extractvalue %dx.types.ResRet.f32 %744, 1
  %747 = extractvalue %dx.types.ResRet.f32 %744, 2
  %748 = extractvalue %dx.types.ResRet.f32 %744, 3
  %749 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 0
  %750 = load float, float* %749, align 4, !tbaa !64, !noalias !58
  %751 = fadd fast float %750, %739
  %752 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %751)  ; FMax(a,b)
  %753 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %751)  ; FMin(a,b)
  %754 = fmul fast float %753, 0x3F847AE140000000
  %755 = fadd fast float %754, %752
  store float %755, float* %749, align 4, !tbaa !64, !noalias !58
  %756 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 1
  %757 = load float, float* %756, align 4, !tbaa !64, !noalias !58
  %758 = fadd fast float %757, %740
  %759 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %758)  ; FMax(a,b)
  %760 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %758)  ; FMin(a,b)
  %761 = fmul fast float %760, 0x3F847AE140000000
  %762 = fadd fast float %761, %759
  store float %762, float* %756, align 4, !tbaa !64, !noalias !58
  %763 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 2
  %764 = load float, float* %763, align 4, !tbaa !64, !noalias !58
  %765 = fadd fast float %764, %741
  %766 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %765)  ; FMax(a,b)
  %767 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %765)  ; FMin(a,b)
  %768 = fmul fast float %767, 0x3F847AE140000000
  %769 = fadd fast float %768, %766
  store float %769, float* %763, align 4, !tbaa !64, !noalias !58
  %770 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 3
  %771 = load float, float* %770, align 4, !tbaa !64, !noalias !58
  %772 = fadd fast float %771, %742
  %773 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %772)  ; FMax(a,b)
  %774 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %772)  ; FMin(a,b)
  %775 = fmul fast float %774, 0x3F847AE140000000
  %776 = fadd fast float %775, %773
  store float %776, float* %770, align 4, !tbaa !64, !noalias !58
  %777 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 4
  %778 = load float, float* %777, align 4, !tbaa !64, !noalias !58
  %779 = fadd fast float %778, %745
  %780 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %779)  ; FMax(a,b)
  %781 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %779)  ; FMin(a,b)
  %782 = fmul fast float %781, 0x3F847AE140000000
  %783 = fadd fast float %782, %780
  store float %783, float* %777, align 4, !tbaa !64, !noalias !58
  %784 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 5
  %785 = load float, float* %784, align 4, !tbaa !64, !noalias !58
  %786 = fadd fast float %785, %746
  %787 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %786)  ; FMax(a,b)
  %788 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %786)  ; FMin(a,b)
  %789 = fmul fast float %788, 0x3F847AE140000000
  %790 = fadd fast float %789, %787
  store float %790, float* %784, align 4, !tbaa !64, !noalias !58
  %791 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 6
  %792 = load float, float* %791, align 4, !tbaa !64, !noalias !58
  %793 = fadd fast float %792, %747
  %794 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %793)  ; FMax(a,b)
  %795 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %793)  ; FMin(a,b)
  %796 = fmul fast float %795, 0x3F847AE140000000
  %797 = fadd fast float %796, %794
  store float %797, float* %791, align 4, !tbaa !64, !noalias !58
  %798 = getelementptr inbounds [8 x float], [8 x float]* %31, i32 0, i32 7
  %799 = load float, float* %798, align 4, !tbaa !64, !noalias !58
  %800 = fadd fast float %799, %748
  %801 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %800)  ; FMax(a,b)
  %802 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %800)  ; FMin(a,b)
  %803 = fmul fast float %802, 0x3F847AE140000000
  %804 = fadd fast float %803, %801
  store float %804, float* %798, align 4, !tbaa !64, !noalias !58
  %805 = add i32 %581, 26
  %806 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %805, i32 undef)  ; BufferLoad(srv,index,wot)
  %807 = extractvalue %dx.types.ResRet.f32 %806, 0
  %808 = extractvalue %dx.types.ResRet.f32 %806, 1
  %809 = extractvalue %dx.types.ResRet.f32 %806, 2
  %810 = extractvalue %dx.types.ResRet.f32 %806, 3
  %811 = add i32 %581, 27
  %812 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %811, i32 undef)  ; BufferLoad(srv,index,wot)
  %813 = extractvalue %dx.types.ResRet.f32 %812, 0
  %814 = extractvalue %dx.types.ResRet.f32 %812, 1
  %815 = extractvalue %dx.types.ResRet.f32 %812, 2
  %816 = extractvalue %dx.types.ResRet.f32 %812, 3
  %817 = fmul fast float %755, %807
  %818 = fmul fast float %762, %808
  %819 = fadd fast float %818, %817
  %820 = fmul fast float %769, %809
  %821 = fadd fast float %819, %820
  %822 = fmul fast float %776, %810
  %823 = fadd fast float %821, %822
  %824 = fmul fast float %783, %813
  %825 = fadd fast float %823, %824
  %826 = fmul fast float %790, %814
  %827 = fadd fast float %825, %826
  %828 = fmul fast float %797, %815
  %829 = fadd fast float %827, %828
  %830 = fmul fast float %804, %816
  %831 = fadd fast float %829, %830
  %832 = add i32 %581, 28
  %833 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %832, i32 undef)  ; BufferLoad(srv,index,wot)
  %834 = extractvalue %dx.types.ResRet.f32 %833, 0
  %835 = fadd fast float %831, %834
  %836 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %835)  ; FMax(a,b)
  %837 = fmul fast float %736, %836
  %838 = call float @dx.op.unary.f32(i32 7, float %837)  ; Saturate(value)
  %839 = getelementptr inbounds [8 x float], [8 x float]* %33, i32 0, i32 %560
  store float %838, float* %839, align 4, !tbaa !64, !noalias !58
  %840 = fadd fast float %838, %559
  %841 = add nuw nsw i32 %560, 1
  %842 = icmp eq i32 %841, 8
  br i1 %842, label %846, label %843

; <label>:843                                     ; preds = %732
  %844 = getelementptr inbounds [8 x i32], [8 x i32]* %32, i32 0, i32 %841
  %845 = load i32, i32* %844, align 4, !tbaa !41, !noalias !58
  br label %557

; <label>:846                                     ; preds = %732
  %847 = fcmp fast ugt float %840, 0x3EE4F8B580000000
  br i1 %847, label %848, label %1109, !dx.controlflow.hints !66

; <label>:848                                     ; preds = %846
  %849 = fcmp fast ogt float %840, 0x3EE4F8B580000000
  %850 = fdiv fast float 1.000000e+00, %840
  %851 = select i1 %849, float %850, float 1.000000e+00
  %852 = getelementptr inbounds [8 x float], [8 x float]* %33, i32 0, i32 0
  %853 = load float, float* %852, align 4, !tbaa !64, !noalias !58
  %854 = fmul fast float %853, %851
  store float %854, float* %852, align 4, !tbaa !64, !noalias !58
  %855 = getelementptr inbounds [8 x float], [8 x float]* %33, i32 0, i32 1
  %856 = load float, float* %855, align 4, !tbaa !64, !noalias !58
  %857 = fmul fast float %856, %851
  store float %857, float* %855, align 4, !tbaa !64, !noalias !58
  %858 = getelementptr inbounds [8 x float], [8 x float]* %33, i32 0, i32 2
  %859 = load float, float* %858, align 4, !tbaa !64, !noalias !58
  %860 = fmul fast float %859, %851
  store float %860, float* %858, align 4, !tbaa !64, !noalias !58
  %861 = getelementptr inbounds [8 x float], [8 x float]* %33, i32 0, i32 3
  %862 = load float, float* %861, align 4, !tbaa !64, !noalias !58
  %863 = fmul fast float %862, %851
  store float %863, float* %861, align 4, !tbaa !64, !noalias !58
  %864 = getelementptr inbounds [8 x float], [8 x float]* %33, i32 0, i32 4
  %865 = load float, float* %864, align 4, !tbaa !64, !noalias !58
  %866 = fmul fast float %865, %851
  store float %866, float* %864, align 4, !tbaa !64, !noalias !58
  %867 = getelementptr inbounds [8 x float], [8 x float]* %33, i32 0, i32 5
  %868 = load float, float* %867, align 4, !tbaa !64, !noalias !58
  %869 = fmul fast float %868, %851
  store float %869, float* %867, align 4, !tbaa !64, !noalias !58
  %870 = getelementptr inbounds [8 x float], [8 x float]* %33, i32 0, i32 6
  %871 = load float, float* %870, align 4, !tbaa !64, !noalias !58
  %872 = fmul fast float %871, %851
  store float %872, float* %870, align 4, !tbaa !64, !noalias !58
  %873 = getelementptr inbounds [8 x float], [8 x float]* %33, i32 0, i32 7
  %874 = load float, float* %873, align 4, !tbaa !64, !noalias !58
  %875 = fmul fast float %874, %851
  store float %875, float* %873, align 4, !tbaa !64, !noalias !58
  br label %876

; <label>:876                                     ; preds = %1103, %848
  %877 = phi float [ %1107, %1103 ], [ %854, %848 ]
  %878 = phi i32 [ %1105, %1103 ], [ %485, %848 ]
  %879 = phi float [ %1058, %1103 ], [ 0.000000e+00, %848 ]
  %880 = phi float [ %1056, %1103 ], [ 0.000000e+00, %848 ]
  %881 = phi float [ %1054, %1103 ], [ 0.000000e+00, %848 ]
  %882 = phi float [ %1050, %1103 ], [ 0.000000e+00, %848 ]
  %883 = phi float [ %1048, %1103 ], [ 0.000000e+00, %848 ]
  %884 = phi float [ %1044, %1103 ], [ 0.000000e+00, %848 ]
  %885 = phi float [ %1042, %1103 ], [ 0.000000e+00, %848 ]
  %886 = phi float [ %1040, %1103 ], [ 0.000000e+00, %848 ]
  %887 = phi float [ %1036, %1103 ], [ 0.000000e+00, %848 ]
  %888 = phi float [ %1079, %1103 ], [ 0.000000e+00, %848 ]
  %889 = phi float [ %1077, %1103 ], [ 0.000000e+00, %848 ]
  %890 = phi float [ %1075, %1103 ], [ 0.000000e+00, %848 ]
  %891 = phi float [ %1072, %1103 ], [ 0.000000e+00, %848 ]
  %892 = phi float [ %1070, %1103 ], [ 0.000000e+00, %848 ]
  %893 = phi float [ %1067, %1103 ], [ 0.000000e+00, %848 ]
  %894 = phi float [ %1065, %1103 ], [ 0.000000e+00, %848 ]
  %895 = phi float [ %1063, %1103 ], [ 0.000000e+00, %848 ]
  %896 = phi float [ %1060, %1103 ], [ 0.000000e+00, %848 ]
  %897 = phi float [ %1100, %1103 ], [ 0.000000e+00, %848 ]
  %898 = phi float [ %1098, %1103 ], [ 0.000000e+00, %848 ]
  %899 = phi float [ %1096, %1103 ], [ 0.000000e+00, %848 ]
  %900 = phi float [ %1093, %1103 ], [ 0.000000e+00, %848 ]
  %901 = phi float [ %1091, %1103 ], [ 0.000000e+00, %848 ]
  %902 = phi float [ %1088, %1103 ], [ 0.000000e+00, %848 ]
  %903 = phi float [ %1086, %1103 ], [ 0.000000e+00, %848 ]
  %904 = phi float [ %1084, %1103 ], [ 0.000000e+00, %848 ]
  %905 = phi float [ %1081, %1103 ], [ 0.000000e+00, %848 ]
  %906 = phi i32 [ %1101, %1103 ], [ 0, %848 ]
  %907 = shl i32 %878, 5
  %908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %907, i32 undef)  ; BufferLoad(srv,index,wot)
  %909 = extractvalue %dx.types.ResRet.i32 %908, 0
  %910 = extractvalue %dx.types.ResRet.i32 %908, 1
  %911 = extractvalue %dx.types.ResRet.i32 %908, 2
  %912 = extractvalue %dx.types.ResRet.i32 %908, 3
  %913 = or i32 %907, 16
  %914 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %913, i32 undef)  ; BufferLoad(srv,index,wot)
  %915 = extractvalue %dx.types.ResRet.i32 %914, 0
  %916 = extractvalue %dx.types.ResRet.i32 %914, 1
  %917 = extractvalue %dx.types.ResRet.i32 %914, 2
  %918 = shl i32 %909, 4
  %919 = and i32 %918, 32752
  %920 = call float @dx.op.legacyF16ToF32(i32 131, i32 %919)  ; LegacyF16ToF32(value)
  %921 = lshr i32 %909, 7
  %922 = and i32 %921, 32752
  %923 = call float @dx.op.legacyF16ToF32(i32 131, i32 %922)  ; LegacyF16ToF32(value)
  %924 = lshr i32 %909, 22
  %925 = shl nuw nsw i32 %924, 5
  %926 = call float @dx.op.legacyF16ToF32(i32 131, i32 %925)  ; LegacyF16ToF32(value)
  %927 = and i32 %910, 255
  %928 = uitofp i32 %927 to float
  %929 = fmul fast float %928, 0x3F80204080000000
  %930 = fadd fast float %929, -1.000000e+00
  %931 = lshr i32 %910, 8
  %932 = and i32 %931, 255
  %933 = uitofp i32 %932 to float
  %934 = fmul fast float %933, 0x3F80204080000000
  %935 = fadd fast float %934, -1.000000e+00
  %936 = lshr i32 %910, 16
  %937 = and i32 %936, 255
  %938 = uitofp i32 %937 to float
  %939 = fmul fast float %938, 0x3F80204080000000
  %940 = fadd fast float %939, -1.000000e+00
  %941 = lshr i32 %910, 24
  %942 = uitofp i32 %941 to float
  %943 = fmul fast float %942, 0x3F80204080000000
  %944 = fadd fast float %943, -1.000000e+00
  %945 = and i32 %911, 255
  %946 = uitofp i32 %945 to float
  %947 = fmul fast float %946, 0x3F80204080000000
  %948 = fadd fast float %947, -1.000000e+00
  %949 = lshr i32 %911, 8
  %950 = and i32 %949, 255
  %951 = uitofp i32 %950 to float
  %952 = fmul fast float %951, 0x3F80204080000000
  %953 = fadd fast float %952, -1.000000e+00
  %954 = lshr i32 %911, 16
  %955 = and i32 %954, 255
  %956 = uitofp i32 %955 to float
  %957 = fmul fast float %956, 0x3F80204080000000
  %958 = fadd fast float %957, -1.000000e+00
  %959 = lshr i32 %911, 24
  %960 = uitofp i32 %959 to float
  %961 = fmul fast float %960, 0x3F80204080000000
  %962 = fadd fast float %961, -1.000000e+00
  %963 = and i32 %912, 255
  %964 = uitofp i32 %963 to float
  %965 = fmul fast float %964, 0x3F80204080000000
  %966 = fadd fast float %965, -1.000000e+00
  %967 = lshr i32 %912, 8
  %968 = and i32 %967, 255
  %969 = uitofp i32 %968 to float
  %970 = fmul fast float %969, 0x3F80204080000000
  %971 = fadd fast float %970, -1.000000e+00
  %972 = lshr i32 %912, 16
  %973 = and i32 %972, 255
  %974 = uitofp i32 %973 to float
  %975 = fmul fast float %974, 0x3F80204080000000
  %976 = fadd fast float %975, -1.000000e+00
  %977 = lshr i32 %912, 24
  %978 = uitofp i32 %977 to float
  %979 = fmul fast float %978, 0x3F80204080000000
  %980 = fadd fast float %979, -1.000000e+00
  %981 = and i32 %915, 255
  %982 = uitofp i32 %981 to float
  %983 = fmul fast float %982, 0x3F80204080000000
  %984 = fadd fast float %983, -1.000000e+00
  %985 = lshr i32 %915, 8
  %986 = and i32 %985, 255
  %987 = uitofp i32 %986 to float
  %988 = fmul fast float %987, 0x3F80204080000000
  %989 = fadd fast float %988, -1.000000e+00
  %990 = lshr i32 %915, 16
  %991 = and i32 %990, 255
  %992 = uitofp i32 %991 to float
  %993 = fmul fast float %992, 0x3F80204080000000
  %994 = fadd fast float %993, -1.000000e+00
  %995 = lshr i32 %915, 24
  %996 = uitofp i32 %995 to float
  %997 = fmul fast float %996, 0x3F80204080000000
  %998 = fadd fast float %997, -1.000000e+00
  %999 = and i32 %916, 255
  %1000 = uitofp i32 %999 to float
  %1001 = fmul fast float %1000, 0x3F80204080000000
  %1002 = fadd fast float %1001, -1.000000e+00
  %1003 = lshr i32 %916, 8
  %1004 = and i32 %1003, 255
  %1005 = uitofp i32 %1004 to float
  %1006 = fmul fast float %1005, 0x3F80204080000000
  %1007 = fadd fast float %1006, -1.000000e+00
  %1008 = lshr i32 %916, 16
  %1009 = and i32 %1008, 255
  %1010 = uitofp i32 %1009 to float
  %1011 = fmul fast float %1010, 0x3F80204080000000
  %1012 = fadd fast float %1011, -1.000000e+00
  %1013 = lshr i32 %916, 24
  %1014 = uitofp i32 %1013 to float
  %1015 = fmul fast float %1014, 0x3F80204080000000
  %1016 = fadd fast float %1015, -1.000000e+00
  %1017 = and i32 %917, 255
  %1018 = uitofp i32 %1017 to float
  %1019 = fmul fast float %1018, 0x3F80204080000000
  %1020 = fadd fast float %1019, -1.000000e+00
  %1021 = lshr i32 %917, 8
  %1022 = and i32 %1021, 255
  %1023 = uitofp i32 %1022 to float
  %1024 = fmul fast float %1023, 0x3F80204080000000
  %1025 = fadd fast float %1024, -1.000000e+00
  %1026 = lshr i32 %917, 16
  %1027 = and i32 %1026, 255
  %1028 = uitofp i32 %1027 to float
  %1029 = fmul fast float %1028, 0x3F80204080000000
  %1030 = fadd fast float %1029, -1.000000e+00
  %1031 = lshr i32 %917, 24
  %1032 = uitofp i32 %1031 to float
  %1033 = fmul fast float %1032, 0x3F80204080000000
  %1034 = fadd fast float %1033, -1.000000e+00
  %1035 = fmul fast float %920, %877
  %1036 = fadd fast float %1035, %887
  %1037 = fmul fast float %877, 0x3FFBB67AE0000000
  %1038 = fmul fast float %1037, %920
  %1039 = fmul fast float %1038, %930
  %1040 = fadd fast float %1039, %886
  %1041 = fmul fast float %1038, %935
  %1042 = fadd fast float %1041, %885
  %1043 = fmul fast float %1038, %940
  %1044 = fadd fast float %1043, %884
  %1045 = fmul fast float %877, 0x3FFEFBDEC0000000
  %1046 = fmul fast float %1045, %920
  %1047 = fmul fast float %1046, %944
  %1048 = fadd fast float %1047, %883
  %1049 = fmul fast float %1046, %948
  %1050 = fadd fast float %1049, %882
  %1051 = fmul fast float %877, 0x4001E377A0000000
  %1052 = fmul fast float %1051, %920
  %1053 = fmul fast float %1052, %953
  %1054 = fadd fast float %1053, %881
  %1055 = fmul fast float %1046, %958
  %1056 = fadd fast float %1055, %880
  %1057 = fmul fast float %1046, %962
  %1058 = fadd fast float %1057, %879
  %1059 = fmul fast float %923, %877
  %1060 = fadd fast float %1059, %896
  %1061 = fmul fast float %1037, %923
  %1062 = fmul fast float %1061, %966
  %1063 = fadd fast float %1062, %895
  %1064 = fmul fast float %1061, %971
  %1065 = fadd fast float %1064, %894
  %1066 = fmul fast float %1061, %976
  %1067 = fadd fast float %1066, %893
  %1068 = fmul fast float %1045, %923
  %1069 = fmul fast float %1068, %980
  %1070 = fadd fast float %1069, %892
  %1071 = fmul fast float %1068, %984
  %1072 = fadd fast float %1071, %891
  %1073 = fmul fast float %1051, %923
  %1074 = fmul fast float %1073, %989
  %1075 = fadd fast float %1074, %890
  %1076 = fmul fast float %1068, %994
  %1077 = fadd fast float %1076, %889
  %1078 = fmul fast float %1068, %998
  %1079 = fadd fast float %1078, %888
  %1080 = fmul fast float %926, %877
  %1081 = fadd fast float %1080, %905
  %1082 = fmul fast float %1037, %926
  %1083 = fmul fast float %1082, %1002
  %1084 = fadd fast float %1083, %904
  %1085 = fmul fast float %1082, %1007
  %1086 = fadd fast float %1085, %903
  %1087 = fmul fast float %1082, %1012
  %1088 = fadd fast float %1087, %902
  %1089 = fmul fast float %1045, %926
  %1090 = fmul fast float %1089, %1016
  %1091 = fadd fast float %1090, %901
  %1092 = fmul fast float %1089, %1020
  %1093 = fadd fast float %1092, %900
  %1094 = fmul fast float %1051, %926
  %1095 = fmul fast float %1094, %1025
  %1096 = fadd fast float %1095, %899
  %1097 = fmul fast float %1089, %1030
  %1098 = fadd fast float %1097, %898
  %1099 = fmul fast float %1089, %1034
  %1100 = fadd fast float %1099, %897
  %1101 = add nuw nsw i32 %906, 1
  %1102 = icmp eq i32 %1101, 8
  br i1 %1102, label %1108, label %1103

; <label>:1103                                    ; preds = %876
  %1104 = getelementptr inbounds [8 x i32], [8 x i32]* %32, i32 0, i32 %1101
  %1105 = load i32, i32* %1104, align 4, !tbaa !41, !noalias !58
  %1106 = getelementptr inbounds [8 x float], [8 x float]* %33, i32 0, i32 %1101
  %1107 = load float, float* %1106, align 4, !tbaa !64, !noalias !58
  br label %876

; <label>:1108                                    ; preds = %876
  br label %1109

; <label>:1109                                    ; preds = %1108, %846, %413, %394, %360
  %1110 = phi float [ 0.000000e+00, %360 ], [ 0.000000e+00, %394 ], [ 0.000000e+00, %413 ], [ 0.000000e+00, %846 ], [ %1058, %1108 ]
  %1111 = phi float [ 0.000000e+00, %360 ], [ 0.000000e+00, %394 ], [ 0.000000e+00, %413 ], [ 0.000000e+00, %846 ], [ %1056, %1108 ]
  %1112 = phi float [ 0.000000e+00, %360 ], [ 0.000000e+00, %394 ], [ 0.000000e+00, %413 ], [ 0.000000e+00, %846 ], [ %1054, %1108 ]
  %1113 = phi float [ 0.000000e+00, %360 ], [ 0.000000e+00, %394 ], [ 0.000000e+00, %413 ], [ 0.000000e+00, %846 ], [ %1050, %1108 ]
  %1114 = phi float [ 0.000000e+00, %360 ], [ 0.000000e+00, %394 ], [ 0.000000e+00, %413 ], [ 0.000000e+00, %846 ], [ %1048, %1108 ]
  %1115 = phi float [ 0.000000e+00, %360 ], [ 0.000000e+00, %394 ], [ 0.000000e+00, %413 ], [ 0.000000e+00, %846 ], [ %1044, %1108 ]
  %1116 = phi float [ 0.000000e+00, %360 ], [ 0.000000e+00, %394 ], [ 0.000000e+00, %413 ], [ 0.000000e+00, %846 ], [ %1042, %1108 ]
  %1117 = phi float [ 0.000000e+00, %360 ], [ 0.000000e+00, %394 ], [ 0.000000e+00, %413 ], [ 0.000000e+00, %846 ], [ %1040, %1108 ]
  %1118 = phi float [ 0.000000e+00, %360 ], [ 0.000000e+00, %394 ], [ 0.000000e+00, %413 ], [ 0.000000e+00, %846 ], [ %1036, %1108 ]
  %1119 = phi float [ 0.000000e+00, %360 ], [ 0.000000e+00, %394 ], [ 0.000000e+00, %413 ], [ 0.000000e+00, %846 ], [ %1079, %1108 ]
  %1120 = phi float [ 0.000000e+00, %360 ], [ 0.000000e+00, %394 ], [ 0.000000e+00, %413 ], [ 0.000000e+00, %846 ], [ %1077, %1108 ]
  %1121 = phi float [ 0.000000e+00, %360 ], [ 0.000000e+00, %394 ], [ 0.000000e+00, %413 ], [ 0.000000e+00, %846 ], [ %1075, %1108 ]
  %1122 = phi float [ 0.000000e+00, %360 ], [ 0.000000e+00, %394 ], [ 0.000000e+00, %413 ], [ 0.000000e+00, %846 ], [ %1072, %1108 ]
  %1123 = phi float [ 0.000000e+00, %360 ], [ 0.000000e+00, %394 ], [ 0.000000e+00, %413 ], [ 0.000000e+00, %846 ], [ %1070, %1108 ]
  %1124 = phi float [ 0.000000e+00, %360 ], [ 0.000000e+00, %394 ], [ 0.000000e+00, %413 ], [ 0.000000e+00, %846 ], [ %1067, %1108 ]
  %1125 = phi float [ 0.000000e+00, %360 ], [ 0.000000e+00, %394 ], [ 0.000000e+00, %413 ], [ 0.000000e+00, %846 ], [ %1065, %1108 ]
  %1126 = phi float [ 0.000000e+00, %360 ], [ 0.000000e+00, %394 ], [ 0.000000e+00, %413 ], [ 0.000000e+00, %846 ], [ %1063, %1108 ]
  %1127 = phi float [ 0.000000e+00, %360 ], [ 0.000000e+00, %394 ], [ 0.000000e+00, %413 ], [ 0.000000e+00, %846 ], [ %1060, %1108 ]
  %1128 = phi float [ 0.000000e+00, %360 ], [ 0.000000e+00, %394 ], [ 0.000000e+00, %413 ], [ 0.000000e+00, %846 ], [ %1100, %1108 ]
  %1129 = phi float [ 0.000000e+00, %360 ], [ 0.000000e+00, %394 ], [ 0.000000e+00, %413 ], [ 0.000000e+00, %846 ], [ %1098, %1108 ]
  %1130 = phi float [ 0.000000e+00, %360 ], [ 0.000000e+00, %394 ], [ 0.000000e+00, %413 ], [ 0.000000e+00, %846 ], [ %1096, %1108 ]
  %1131 = phi float [ 0.000000e+00, %360 ], [ 0.000000e+00, %394 ], [ 0.000000e+00, %413 ], [ 0.000000e+00, %846 ], [ %1093, %1108 ]
  %1132 = phi float [ 0.000000e+00, %360 ], [ 0.000000e+00, %394 ], [ 0.000000e+00, %413 ], [ 0.000000e+00, %846 ], [ %1091, %1108 ]
  %1133 = phi float [ 0.000000e+00, %360 ], [ 0.000000e+00, %394 ], [ 0.000000e+00, %413 ], [ 0.000000e+00, %846 ], [ %1088, %1108 ]
  %1134 = phi float [ 0.000000e+00, %360 ], [ 0.000000e+00, %394 ], [ 0.000000e+00, %413 ], [ 0.000000e+00, %846 ], [ %1086, %1108 ]
  %1135 = phi float [ 0.000000e+00, %360 ], [ 0.000000e+00, %394 ], [ 0.000000e+00, %413 ], [ 0.000000e+00, %846 ], [ %1084, %1108 ]
  %1136 = phi float [ 0.000000e+00, %360 ], [ 0.000000e+00, %394 ], [ 0.000000e+00, %413 ], [ 0.000000e+00, %846 ], [ %1081, %1108 ]
  %1137 = phi i1 [ false, %360 ], [ false, %394 ], [ false, %413 ], [ false, %846 ], [ true, %1108 ]
  %1138 = phi float [ 1.000000e+00, %360 ], [ 1.000000e+00, %394 ], [ 1.000000e+00, %413 ], [ 0.000000e+00, %846 ], [ 1.000000e+00, %1108 ]
  store float %1118, float* %134, align 4
  store float %1117, float* %135, align 4
  store float %1116, float* %136, align 4
  store float %1115, float* %137, align 4
  store float %1114, float* %138, align 4
  store float %1113, float* %139, align 4
  store float %1112, float* %140, align 4
  store float %1111, float* %141, align 4
  store float %1110, float* %142, align 4
  store float %1127, float* %143, align 4
  store float %1126, float* %144, align 4
  store float %1125, float* %145, align 4
  store float %1124, float* %146, align 4
  store float %1123, float* %147, align 4
  store float %1122, float* %148, align 4
  store float %1121, float* %149, align 4
  store float %1120, float* %150, align 4
  store float %1119, float* %151, align 4
  store float %1136, float* %152, align 4
  store float %1135, float* %153, align 4
  store float %1134, float* %154, align 4
  store float %1133, float* %155, align 4
  store float %1132, float* %156, align 4
  store float %1131, float* %157, align 4
  store float %1130, float* %158, align 4
  store float %1129, float* %159, align 4
  store float %1128, float* %160, align 4
  %1139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1140 = extractvalue %dx.types.CBufRet.f32 %1139, 3
  %1141 = fcmp fast ogt float %1140, 0.000000e+00
  %1142 = and i1 %189, %1141
  br i1 %1142, label %1143, label %1347, !dx.controlflow.hints !67

; <label>:1143                                    ; preds = %1109
  %1144 = call i32 @dx.op.binary.i32(i32 40, i32 %161, i32 49151)  ; UMin(a,b)
  %1145 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1146 = extractvalue %dx.types.CBufRet.i32 %1145, 0
  %1147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %1146, i32 undef)  ; BufferLoad(srv,index,wot)
  %1148 = extractvalue %dx.types.ResRet.i32 %1147, 0
  %1149 = icmp eq i32 %1148, -1
  br i1 %1149, label %1347, label %1150, !dx.controlflow.hints !68

; <label>:1150                                    ; preds = %1143
  %1151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %1144, i32 undef)  ; BufferLoad(srv,index,wot)
  %1152 = extractvalue %dx.types.ResRet.i32 %1151, 0
  %1153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %1144, i32 undef)  ; BufferLoad(srv,index,wot)
  %1154 = extractvalue %dx.types.ResRet.i32 %1153, 0
  %1155 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1154)  ; Countbits(value)
  %1156 = and i32 %1148, 31
  %1157 = shl i32 1, %1156
  %1158 = add i32 %1157, -1
  %1159 = and i32 %1154, %1158
  %1160 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1159)  ; Countbits(value)
  %1161 = mul i32 %1155, %84
  %1162 = add i32 %1161, %1152
  %1163 = add i32 %1162, %1160
  %1164 = mul i32 %1163, 13
  %1165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1164, i32 0)  ; BufferLoad(srv,index,wot)
  %1166 = extractvalue %dx.types.ResRet.i32 %1165, 0
  %1167 = extractvalue %dx.types.ResRet.i32 %1165, 1
  %1168 = and i32 %1166, 65535
  %1169 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1168)  ; LegacyF16ToF32(value)
  %1170 = lshr i32 %1166, 16
  %1171 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1170)  ; LegacyF16ToF32(value)
  %1172 = and i32 %1167, 65535
  %1173 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1172)  ; LegacyF16ToF32(value)
  %1174 = add i32 %1164, 1
  %1175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1174, i32 0)  ; BufferLoad(srv,index,wot)
  %1176 = extractvalue %dx.types.ResRet.i32 %1175, 0
  %1177 = extractvalue %dx.types.ResRet.i32 %1175, 1
  %1178 = and i32 %1176, 65535
  %1179 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1178)  ; LegacyF16ToF32(value)
  %1180 = lshr i32 %1176, 16
  %1181 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1180)  ; LegacyF16ToF32(value)
  %1182 = and i32 %1177, 65535
  %1183 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1182)  ; LegacyF16ToF32(value)
  %1184 = add i32 %1164, 2
  %1185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1184, i32 0)  ; BufferLoad(srv,index,wot)
  %1186 = extractvalue %dx.types.ResRet.i32 %1185, 0
  %1187 = extractvalue %dx.types.ResRet.i32 %1185, 1
  %1188 = and i32 %1186, 65535
  %1189 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1188)  ; LegacyF16ToF32(value)
  %1190 = lshr i32 %1186, 16
  %1191 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1190)  ; LegacyF16ToF32(value)
  %1192 = and i32 %1187, 65535
  %1193 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1192)  ; LegacyF16ToF32(value)
  %1194 = add i32 %1164, 3
  %1195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1194, i32 0)  ; BufferLoad(srv,index,wot)
  %1196 = extractvalue %dx.types.ResRet.i32 %1195, 0
  %1197 = extractvalue %dx.types.ResRet.i32 %1195, 1
  %1198 = and i32 %1196, 65535
  %1199 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1198)  ; LegacyF16ToF32(value)
  %1200 = lshr i32 %1196, 16
  %1201 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1200)  ; LegacyF16ToF32(value)
  %1202 = and i32 %1197, 65535
  %1203 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1202)  ; LegacyF16ToF32(value)
  %1204 = add i32 %1164, 4
  %1205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1204, i32 0)  ; BufferLoad(srv,index,wot)
  %1206 = extractvalue %dx.types.ResRet.i32 %1205, 0
  %1207 = extractvalue %dx.types.ResRet.i32 %1205, 1
  %1208 = and i32 %1206, 65535
  %1209 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1208)  ; LegacyF16ToF32(value)
  %1210 = lshr i32 %1206, 16
  %1211 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1210)  ; LegacyF16ToF32(value)
  %1212 = and i32 %1207, 65535
  %1213 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1212)  ; LegacyF16ToF32(value)
  %1214 = add i32 %1164, 5
  %1215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1214, i32 0)  ; BufferLoad(srv,index,wot)
  %1216 = extractvalue %dx.types.ResRet.i32 %1215, 0
  %1217 = extractvalue %dx.types.ResRet.i32 %1215, 1
  %1218 = and i32 %1216, 65535
  %1219 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1218)  ; LegacyF16ToF32(value)
  %1220 = lshr i32 %1216, 16
  %1221 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1220)  ; LegacyF16ToF32(value)
  %1222 = and i32 %1217, 65535
  %1223 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1222)  ; LegacyF16ToF32(value)
  %1224 = add i32 %1164, 6
  %1225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1224, i32 0)  ; BufferLoad(srv,index,wot)
  %1226 = extractvalue %dx.types.ResRet.i32 %1225, 0
  %1227 = extractvalue %dx.types.ResRet.i32 %1225, 1
  %1228 = and i32 %1226, 65535
  %1229 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1228)  ; LegacyF16ToF32(value)
  %1230 = lshr i32 %1226, 16
  %1231 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1230)  ; LegacyF16ToF32(value)
  %1232 = and i32 %1227, 65535
  %1233 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1232)  ; LegacyF16ToF32(value)
  %1234 = add i32 %1164, 7
  %1235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1234, i32 0)  ; BufferLoad(srv,index,wot)
  %1236 = extractvalue %dx.types.ResRet.i32 %1235, 0
  %1237 = extractvalue %dx.types.ResRet.i32 %1235, 1
  %1238 = and i32 %1236, 65535
  %1239 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1238)  ; LegacyF16ToF32(value)
  %1240 = lshr i32 %1236, 16
  %1241 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1240)  ; LegacyF16ToF32(value)
  %1242 = and i32 %1237, 65535
  %1243 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1242)  ; LegacyF16ToF32(value)
  %1244 = add i32 %1164, 8
  %1245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1244, i32 0)  ; BufferLoad(srv,index,wot)
  %1246 = extractvalue %dx.types.ResRet.i32 %1245, 0
  %1247 = extractvalue %dx.types.ResRet.i32 %1245, 1
  %1248 = and i32 %1246, 65535
  %1249 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1248)  ; LegacyF16ToF32(value)
  %1250 = lshr i32 %1246, 16
  %1251 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1250)  ; LegacyF16ToF32(value)
  %1252 = and i32 %1247, 65535
  %1253 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1252)  ; LegacyF16ToF32(value)
  br i1 %1137, label %1254, label %1264, !dx.controlflow.hints !69

; <label>:1254                                    ; preds = %1150
  %1255 = add i32 %1164, 12
  %1256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1255, i32 0)  ; BufferLoad(srv,index,wot)
  %1257 = extractvalue %dx.types.ResRet.i32 %1256, 0
  %1258 = lshr i32 %1257, 16
  %1259 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1258)  ; LegacyF16ToF32(value)
  %1260 = fcmp fast ogt float %1138, 0.000000e+00
  %1261 = fcmp fast oeq float %1259, 0.000000e+00
  %1262 = and i1 %1260, %1261
  %1263 = select i1 %1262, float 0.000000e+00, float %1140
  br label %1264

; <label>:1264                                    ; preds = %1254, %1150
  %1265 = phi float [ 1.000000e+00, %1150 ], [ %1263, %1254 ]
  %1266 = fsub fast float %1169, %1118
  %1267 = fmul fast float %1266, %1265
  %1268 = fadd fast float %1267, %1118
  %1269 = fsub fast float %1179, %1117
  %1270 = fmul fast float %1269, %1265
  %1271 = fadd fast float %1270, %1117
  %1272 = fsub fast float %1189, %1116
  %1273 = fmul fast float %1272, %1265
  %1274 = fadd fast float %1273, %1116
  %1275 = fsub fast float %1199, %1115
  %1276 = fmul fast float %1275, %1265
  %1277 = fadd fast float %1276, %1115
  %1278 = fsub fast float %1209, %1114
  %1279 = fmul fast float %1278, %1265
  %1280 = fadd fast float %1279, %1114
  %1281 = fsub fast float %1219, %1113
  %1282 = fmul fast float %1281, %1265
  %1283 = fadd fast float %1282, %1113
  %1284 = fsub fast float %1229, %1112
  %1285 = fmul fast float %1284, %1265
  %1286 = fadd fast float %1285, %1112
  %1287 = fsub fast float %1239, %1111
  %1288 = fmul fast float %1287, %1265
  %1289 = fadd fast float %1288, %1111
  %1290 = fsub fast float %1249, %1110
  %1291 = fmul fast float %1290, %1265
  %1292 = fadd fast float %1291, %1110
  store float %1268, float* %134, align 4
  store float %1271, float* %135, align 4
  store float %1274, float* %136, align 4
  store float %1277, float* %137, align 4
  store float %1280, float* %138, align 4
  store float %1283, float* %139, align 4
  store float %1286, float* %140, align 4
  store float %1289, float* %141, align 4
  store float %1292, float* %142, align 4
  %1293 = fsub fast float %1171, %1127
  %1294 = fmul fast float %1293, %1265
  %1295 = fadd fast float %1294, %1127
  %1296 = fsub fast float %1181, %1126
  %1297 = fmul fast float %1296, %1265
  %1298 = fadd fast float %1297, %1126
  %1299 = fsub fast float %1191, %1125
  %1300 = fmul fast float %1299, %1265
  %1301 = fadd fast float %1300, %1125
  %1302 = fsub fast float %1201, %1124
  %1303 = fmul fast float %1302, %1265
  %1304 = fadd fast float %1303, %1124
  %1305 = fsub fast float %1211, %1123
  %1306 = fmul fast float %1305, %1265
  %1307 = fadd fast float %1306, %1123
  %1308 = fsub fast float %1221, %1122
  %1309 = fmul fast float %1308, %1265
  %1310 = fadd fast float %1309, %1122
  %1311 = fsub fast float %1231, %1121
  %1312 = fmul fast float %1311, %1265
  %1313 = fadd fast float %1312, %1121
  %1314 = fsub fast float %1241, %1120
  %1315 = fmul fast float %1314, %1265
  %1316 = fadd fast float %1315, %1120
  %1317 = fsub fast float %1251, %1119
  %1318 = fmul fast float %1317, %1265
  %1319 = fadd fast float %1318, %1119
  store float %1295, float* %143, align 4
  store float %1298, float* %144, align 4
  store float %1301, float* %145, align 4
  store float %1304, float* %146, align 4
  store float %1307, float* %147, align 4
  store float %1310, float* %148, align 4
  store float %1313, float* %149, align 4
  store float %1316, float* %150, align 4
  store float %1319, float* %151, align 4
  %1320 = fsub fast float %1173, %1136
  %1321 = fmul fast float %1320, %1265
  %1322 = fadd fast float %1321, %1136
  %1323 = fsub fast float %1183, %1135
  %1324 = fmul fast float %1323, %1265
  %1325 = fadd fast float %1324, %1135
  %1326 = fsub fast float %1193, %1134
  %1327 = fmul fast float %1326, %1265
  %1328 = fadd fast float %1327, %1134
  %1329 = fsub fast float %1203, %1133
  %1330 = fmul fast float %1329, %1265
  %1331 = fadd fast float %1330, %1133
  %1332 = fsub fast float %1213, %1132
  %1333 = fmul fast float %1332, %1265
  %1334 = fadd fast float %1333, %1132
  %1335 = fsub fast float %1223, %1131
  %1336 = fmul fast float %1335, %1265
  %1337 = fadd fast float %1336, %1131
  %1338 = fsub fast float %1233, %1130
  %1339 = fmul fast float %1338, %1265
  %1340 = fadd fast float %1339, %1130
  %1341 = fsub fast float %1243, %1129
  %1342 = fmul fast float %1341, %1265
  %1343 = fadd fast float %1342, %1129
  %1344 = fsub fast float %1253, %1128
  %1345 = fmul fast float %1344, %1265
  %1346 = fadd fast float %1345, %1128
  store float %1322, float* %152, align 4
  store float %1325, float* %153, align 4
  store float %1328, float* %154, align 4
  store float %1331, float* %155, align 4
  store float %1334, float* %156, align 4
  store float %1337, float* %157, align 4
  store float %1340, float* %158, align 4
  store float %1343, float* %159, align 4
  store float %1346, float* %160, align 4
  br label %1347

; <label>:1347                                    ; preds = %1264, %1143, %1109
  %1348 = phi float [ %1322, %1264 ], [ %1136, %1143 ], [ %1136, %1109 ]
  %1349 = phi float [ %1295, %1264 ], [ %1127, %1143 ], [ %1127, %1109 ]
  %1350 = phi float [ %1268, %1264 ], [ %1118, %1143 ], [ %1118, %1109 ]
  %1351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %99, i32 undef)  ; BufferLoad(srv,index,wot)
  %1352 = extractvalue %dx.types.ResRet.i32 %1351, 0
  %1353 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1352)  ; Countbits(value)
  %1354 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1355 = extractvalue %dx.types.CBufRet.i32 %1354, 0
  %1356 = and i32 %1355, 31
  %1357 = shl i32 1, %1356
  %1358 = add i32 %1357, -1
  %1359 = and i32 %1358, %1352
  %1360 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1359)  ; Countbits(value)
  %1361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %99, i32 undef)  ; BufferLoad(srv,index,wot)
  %1362 = extractvalue %dx.types.ResRet.i32 %1361, 0
  %1363 = mul i32 %1353, %84
  %1364 = add i32 %1360, %1363
  %1365 = add i32 %1364, %1362
  %1366 = mul i32 %1365, 13
  br label %1367

; <label>:1367                                    ; preds = %1385, %1347
  %1368 = phi float [ %1348, %1347 ], [ %1391, %1385 ]
  %1369 = phi float [ %1349, %1347 ], [ %1389, %1385 ]
  %1370 = phi float [ %1350, %1347 ], [ %1387, %1385 ]
  %1371 = phi i32 [ 0, %1347 ], [ %1383, %1385 ]
  %1372 = sitofp i32 %1371 to float
  %1373 = fmul fast float %1372, 0x3FB99999A0000000
  %1374 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1370)  ; LegacyF32ToF16(value)
  %1375 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1369)  ; LegacyF32ToF16(value)
  %1376 = shl i32 %1375, 16
  %1377 = or i32 %1376, %1374
  %1378 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1368)  ; LegacyF32ToF16(value)
  %1379 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1373)  ; LegacyF32ToF16(value)
  %1380 = shl i32 %1379, 16
  %1381 = or i32 %1380, %1378
  %1382 = add i32 %1371, %1366
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1382, i32 0, i32 %1377, i32 %1381, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1383 = add nuw nsw i32 %1371, 1
  %1384 = icmp eq i32 %1383, 9
  br i1 %1384, label %1392, label %1385

; <label>:1385                                    ; preds = %1367
  %1386 = getelementptr inbounds [9 x float], [9 x float]* %30, i32 0, i32 %1383
  %1387 = load float, float* %1386, align 4, !tbaa !64
  %1388 = getelementptr inbounds [9 x float], [9 x float]* %29, i32 0, i32 %1383
  %1389 = load float, float* %1388, align 4, !tbaa !64
  %1390 = getelementptr inbounds [9 x float], [9 x float]* %28, i32 0, i32 %1383
  %1391 = load float, float* %1390, align 4, !tbaa !64
  br label %1367

; <label>:1392                                    ; preds = %1367
  %1393 = select i1 %1137, float 1.000000e+00, float 0.000000e+00
  %1394 = call i32 @dx.op.legacyF32ToF16(i32 130, float 1.000000e+00)  ; LegacyF32ToF16(value)
  %1395 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1393)  ; LegacyF32ToF16(value)
  %1396 = shl i32 %1395, 16
  %1397 = or i32 %1396, %1394
  %1398 = add i32 %1366, 12
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1398, i32 0, i32 %1397, i32 0, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1399

; <label>:1399                                    ; preds = %1392, %103, %98, %0
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
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #1

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
!dx.entryPoints = !{!37}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !31, !33, null}
!5 = !{!6, !8, !10, !11, !12, !13, !14, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29}
!6 = !{i32 0, %"class.StructuredBuffer<GfxNeuralLightGridTopLevelNode>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i32 0, !7}
!7 = !{i32 1, i32 16}
!8 = !{i32 1, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 10, i32 0, !9}
!9 = !{i32 0, i32 5}
!10 = !{i32 2, %"class.StructuredBuffer<GfxNeuralLightGridInternalNode>"* undef, !"", i32 0, i32 2, i32 1, i32 12, i32 0, !7}
!11 = !{i32 3, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 3, i32 1, i32 10, i32 0, !9}
!12 = !{i32 4, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 4, i32 1, i32 10, i32 0, !9}
!13 = !{i32 5, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 5, i32 1, i32 10, i32 0, !9}
!14 = !{i32 6, %"class.Buffer<vector<float, 4> >"* undef, !"", i32 0, i32 6, i32 1, i32 10, i32 0, !15}
!15 = !{i32 0, i32 9}
!16 = !{i32 7, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 7, i32 1, i32 10, i32 0, !9}
!17 = !{i32 8, %"class.Buffer<vector<float, 4> >"* undef, !"", i32 0, i32 8, i32 1, i32 10, i32 0, !15}
!18 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 9, i32 1, i32 11, i32 0, null}
!19 = !{i32 10, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 10, i32 1, i32 10, i32 0, !9}
!20 = !{i32 11, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 11, i32 1, i32 10, i32 0, !9}
!21 = !{i32 12, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 17, i32 1, i32 10, i32 0, !9}
!22 = !{i32 13, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 18, i32 1, i32 10, i32 0, !9}
!23 = !{i32 14, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 19, i32 1, i32 10, i32 0, !9}
!24 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 12, i32 1, i32 11, i32 0, null}
!25 = !{i32 16, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 13, i32 1, i32 11, i32 0, null}
!26 = !{i32 17, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 14, i32 1, i32 10, i32 0, !9}
!27 = !{i32 18, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 15, i32 1, i32 10, i32 0, !9}
!28 = !{i32 19, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 16, i32 1, i32 10, i32 0, !9}
!29 = !{i32 20, %"class.StructuredBuffer<vector<unsigned int, 2> >"* undef, !"", i32 0, i32 20, i32 1, i32 12, i32 0, !30}
!30 = !{i32 1, i32 8}
!31 = !{!32}
!32 = !{i32 0, %"class.RWStructuredBuffer<vector<unsigned int, 2> >"* undef, !"", i32 0, i32 0, i32 1, i32 12, i1 false, i1 false, i1 false, !30}
!33 = !{!34, !35, !36}
!34 = !{i32 0, %GfxNeuralLightGridSetupConsts* undef, !"", i32 0, i32 4, i32 1, i32 80, null}
!35 = !{i32 1, %GfxSampleLightGridVolumesLightingConsts* undef, !"", i32 0, i32 0, i32 1, i32 48, null}
!36 = !{i32 2, %GfxCombineLightGridVolumesSamplingListsConsts* undef, !"", i32 0, i32 2, i32 1, i32 16, null}
!37 = !{void ()* @cs_sample_per_lightgrid_volumes_lighting, !"cs_sample_per_lightgrid_volumes_lighting", null, !4, !38}
!38 = !{i32 0, i64 272, i32 4, !39}
!39 = !{i32 64, i32 1, i32 1}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = !{!42, !42, i64 0}
!42 = !{!"int", !43, i64 0}
!43 = !{!"omnipotent char", !44, i64 0}
!44 = !{!"Simple C/C++ TBAA"}
!45 = !{!46, !48}
!46 = distinct !{!46, !47, !"\01?FindProbeToProcess@@YAXHHIAIAH0@Z: %volumeIndex"}
!47 = distinct !{!47, !"\01?FindProbeToProcess@@YAXHHIAIAH0@Z"}
!48 = distinct !{!48, !47, !"\01?FindProbeToProcess@@YAXHHIAIAH0@Z: %volumeProbeIndex"}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 1}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = !{!59, !61, !62, !63}
!59 = distinct !{!59, !60, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z: %probeR"}
!60 = distinct !{!60, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z"}
!61 = distinct !{!61, !60, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z: %probeG"}
!62 = distinct !{!62, !60, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z: %probeB"}
!63 = distinct !{!63, !60, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z: %probeA"}
!64 = !{!65, !65, i64 0}
!65 = !{!"float", !43, i64 0}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 1}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}

