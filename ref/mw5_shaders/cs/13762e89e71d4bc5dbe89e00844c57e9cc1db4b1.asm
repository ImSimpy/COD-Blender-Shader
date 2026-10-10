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
; shader hash: 4baedb6c145b7af9293ba07803694480
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
;                                   texture    byte         r/o     T10            t13     1
;                                   texture    byte         r/o     T11            t14     1
;                                   texture    byte         r/o     T12            t15     1
;                                   texture    byte         r/o     T13            t17     1
;                                   texture  struct         r/o     T14            t18     1
;                                       UAV     f32          3d      U0             u0     1
;                                       UAVunorm_f32          3d      U1             u1     1
;                                       UAV  struct         r/w      U2             u2     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%"class.StructuredBuffer<GfxNeuralLightGridTopLevelNode>" = type { %struct.GfxNeuralLightGridTopLevelNode }
%struct.GfxNeuralLightGridTopLevelNode = type { i32, i32, i32, i32 }
%"class.Buffer<unsigned int>" = type { i32 }
%"class.StructuredBuffer<GfxNeuralLightGridInternalNode>" = type { %struct.GfxNeuralLightGridInternalNode }
%struct.GfxNeuralLightGridInternalNode = type { <2 x i32>, <2 x i32> }
%"class.Buffer<vector<float, 4> >" = type { <4 x float> }
%struct.ByteAddressBuffer = type { i32 }
%"class.StructuredBuffer<vector<unsigned int, 2> >" = type { <2 x i32> }
%"class.RWTexture3D<vector<float, 3> >" = type { <3 x float> }
%"class.RWTexture3D<vector<float, 4> >" = type { <4 x float> }
%"class.RWStructuredBuffer<vector<unsigned int, 2> >" = type { <2 x i32> }
%GfxNeuralLightGridSetupConsts = type { <3 x float>, i32, <3 x float>, i32, <3 x float>, i32, <3 x i32>, i32, float, i32, i32, i32 }
%GfxSampleLightGridVolumesLightingConsts = type { i32, i32, float, float, i32, i32, i32, i32, <3 x float>, i32 }

@"\01?g_batchVolumesProbeCounts@@3PAHA" = external addrspace(3) global [64 x i32], align 4

define void @cs_sample_neural_lightgrid() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %22 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %23 = alloca [9 x float], align 4
  %24 = alloca [9 x float], align 4
  %25 = alloca [9 x float], align 4
  %26 = alloca [8 x float], align 4
  %27 = alloca [8 x i32], align 4
  %28 = alloca [8 x float], align 4
  %29 = icmp ugt i32 %21, 16383
  br i1 %29, label %1512, label %30, !dx.controlflow.hints !36

; <label>:30                                      ; preds = %0
  %31 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %32 = extractvalue %dx.types.CBufRet.i32 %31, 0
  %33 = shl nsw i32 %21, 2
  %34 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %33, i32 undef)  ; BufferLoad(srv,index,wot)
  %35 = extractvalue %dx.types.ResRet.i32 %34, 0
  %36 = lshr i32 %35, 12
  %37 = and i32 %35, 4095
  %38 = add i32 %32, -1
  %39 = add i32 %36, %22
  %40 = call i32 @dx.op.binary.i32(i32 40, i32 %39, i32 %38)  ; UMin(a,b)
  %41 = shl i32 %40, 5
  %42 = or i32 %41, 12
  %43 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %42, i32 undef)  ; BufferLoad(srv,index,wot)
  %44 = extractvalue %dx.types.ResRet.i32 %43, 0
  %45 = and i32 %44, 255
  %46 = lshr i32 %44, 8
  %47 = and i32 %46, 255
  %48 = lshr i32 %44, 16
  %49 = and i32 %48, 255
  %50 = mul nuw nsw i32 %47, %45
  %51 = mul nuw nsw i32 %50, %49
  %52 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?g_batchVolumesProbeCounts@@3PAHA", i32 0, i32 %22
  store i32 %51, i32 addrspace(3)* %52, align 4, !tbaa !37, !noalias !41
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %53 = add i32 %37, %22
  %54 = load i32, i32 addrspace(3)* getelementptr inbounds ([64 x i32], [64 x i32] addrspace(3)* @"\01?g_batchVolumesProbeCounts@@3PAHA", i32 0, i32 0), align 4, !tbaa !37, !noalias !41
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %69, label %56

; <label>:56                                      ; preds = %30
  br label %57

; <label>:57                                      ; preds = %57, %56
  %58 = phi i32 [ %65, %57 ], [ %54, %56 ]
  %59 = phi i32 [ %61, %57 ], [ %53, %56 ]
  %60 = phi i32 [ %62, %57 ], [ 0, %56 ]
  %61 = sub nsw i32 %59, %58
  %62 = add nuw nsw i32 %60, 1
  %63 = icmp slt i32 %62, 64
  %64 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?g_batchVolumesProbeCounts@@3PAHA", i32 0, i32 %62
  %65 = load i32, i32 addrspace(3)* %64, align 4, !tbaa !37, !noalias !41
  %66 = icmp sge i32 %61, %65
  %67 = and i1 %63, %66
  br i1 %67, label %57, label %68

; <label>:68                                      ; preds = %57
  br label %69

; <label>:69                                      ; preds = %68, %30
  %70 = phi i32 [ %53, %30 ], [ %61, %68 ]
  %71 = phi i32 [ 0, %30 ], [ %62, %68 ]
  %72 = add nsw i32 %71, %36
  %73 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %74 = extractvalue %dx.types.CBufRet.i32 %73, 0
  %75 = icmp slt i32 %72, %74
  br i1 %75, label %76, label %1512, !dx.controlflow.hints !45

; <label>:76                                      ; preds = %69
  %77 = shl i32 %72, 6
  %78 = or i32 %77, 48
  %79 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %78, i32 undef)  ; BufferLoad(srv,index,wot)
  %80 = extractvalue %dx.types.ResRet.i32 %79, 0
  %81 = or i32 %77, 52
  %82 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %81, i32 undef)  ; BufferLoad(srv,index,wot)
  %83 = extractvalue %dx.types.ResRet.i32 %82, 0
  %84 = or i32 %77, 56
  %85 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %84, i32 undef)  ; BufferLoad(srv,index,wot)
  %86 = extractvalue %dx.types.ResRet.i32 %85, 0
  %87 = or i32 %77, 60
  %88 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %87, i32 undef)  ; BufferLoad(srv,index,wot)
  %89 = extractvalue %dx.types.ResRet.i32 %88, 0
  %90 = shl i32 %72, 5
  %91 = or i32 %90, 12
  %92 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %91, i32 undef)  ; BufferLoad(srv,index,wot)
  %93 = extractvalue %dx.types.ResRet.i32 %92, 0
  %94 = or i32 %90, 16
  %95 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %94, i32 undef)  ; BufferLoad(srv,index,wot)
  %96 = extractvalue %dx.types.ResRet.f32 %95, 0
  %97 = extractvalue %dx.types.ResRet.f32 %95, 1
  %98 = extractvalue %dx.types.ResRet.f32 %95, 2
  %99 = or i32 %90, 28
  %100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %99, i32 undef)  ; BufferLoad(srv,index,wot)
  %101 = extractvalue %dx.types.ResRet.i32 %100, 0
  %102 = and i32 %93, 255
  %103 = lshr i32 %93, 8
  %104 = and i32 %103, 255
  %105 = lshr i32 %93, 16
  %106 = and i32 %105, 255
  %107 = mul nuw nsw i32 %104, %102
  %108 = udiv i32 %70, %107
  %109 = urem i32 %70, %107
  %110 = udiv i32 %109, %102
  %111 = urem i32 %109, %102
  %112 = and i32 %101, -1610612736
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %1512, !dx.controlflow.hints !46

; <label>:114                                     ; preds = %76
  %115 = getelementptr inbounds [9 x float], [9 x float]* %25, i32 0, i32 0
  store float 0.000000e+00, float* %115, align 4
  %116 = getelementptr inbounds [9 x float], [9 x float]* %25, i32 0, i32 1
  store float 0.000000e+00, float* %116, align 4
  %117 = getelementptr inbounds [9 x float], [9 x float]* %25, i32 0, i32 2
  store float 0.000000e+00, float* %117, align 4
  %118 = getelementptr inbounds [9 x float], [9 x float]* %25, i32 0, i32 3
  store float 0.000000e+00, float* %118, align 4
  %119 = getelementptr inbounds [9 x float], [9 x float]* %25, i32 0, i32 4
  store float 0.000000e+00, float* %119, align 4
  %120 = getelementptr inbounds [9 x float], [9 x float]* %25, i32 0, i32 5
  store float 0.000000e+00, float* %120, align 4
  %121 = getelementptr inbounds [9 x float], [9 x float]* %25, i32 0, i32 6
  store float 0.000000e+00, float* %121, align 4
  %122 = getelementptr inbounds [9 x float], [9 x float]* %25, i32 0, i32 7
  store float 0.000000e+00, float* %122, align 4
  %123 = getelementptr inbounds [9 x float], [9 x float]* %25, i32 0, i32 8
  store float 0.000000e+00, float* %123, align 4
  %124 = getelementptr inbounds [9 x float], [9 x float]* %24, i32 0, i32 0
  store float 0.000000e+00, float* %124, align 4
  %125 = getelementptr inbounds [9 x float], [9 x float]* %24, i32 0, i32 1
  store float 0.000000e+00, float* %125, align 4
  %126 = getelementptr inbounds [9 x float], [9 x float]* %24, i32 0, i32 2
  store float 0.000000e+00, float* %126, align 4
  %127 = getelementptr inbounds [9 x float], [9 x float]* %24, i32 0, i32 3
  store float 0.000000e+00, float* %127, align 4
  %128 = getelementptr inbounds [9 x float], [9 x float]* %24, i32 0, i32 4
  store float 0.000000e+00, float* %128, align 4
  %129 = getelementptr inbounds [9 x float], [9 x float]* %24, i32 0, i32 5
  store float 0.000000e+00, float* %129, align 4
  %130 = getelementptr inbounds [9 x float], [9 x float]* %24, i32 0, i32 6
  store float 0.000000e+00, float* %130, align 4
  %131 = getelementptr inbounds [9 x float], [9 x float]* %24, i32 0, i32 7
  store float 0.000000e+00, float* %131, align 4
  %132 = getelementptr inbounds [9 x float], [9 x float]* %24, i32 0, i32 8
  store float 0.000000e+00, float* %132, align 4
  %133 = getelementptr inbounds [9 x float], [9 x float]* %23, i32 0, i32 0
  store float 0.000000e+00, float* %133, align 4
  %134 = getelementptr inbounds [9 x float], [9 x float]* %23, i32 0, i32 1
  store float 0.000000e+00, float* %134, align 4
  %135 = getelementptr inbounds [9 x float], [9 x float]* %23, i32 0, i32 2
  store float 0.000000e+00, float* %135, align 4
  %136 = getelementptr inbounds [9 x float], [9 x float]* %23, i32 0, i32 3
  store float 0.000000e+00, float* %136, align 4
  %137 = getelementptr inbounds [9 x float], [9 x float]* %23, i32 0, i32 4
  store float 0.000000e+00, float* %137, align 4
  %138 = getelementptr inbounds [9 x float], [9 x float]* %23, i32 0, i32 5
  store float 0.000000e+00, float* %138, align 4
  %139 = getelementptr inbounds [9 x float], [9 x float]* %23, i32 0, i32 6
  store float 0.000000e+00, float* %139, align 4
  %140 = getelementptr inbounds [9 x float], [9 x float]* %23, i32 0, i32 7
  store float 0.000000e+00, float* %140, align 4
  %141 = getelementptr inbounds [9 x float], [9 x float]* %23, i32 0, i32 8
  store float 0.000000e+00, float* %141, align 4
  %142 = and i32 %83, 524287
  %143 = lshr i32 %83, 19
  %144 = and i32 %143, 4095
  %145 = mul nuw nsw i32 %107, %106
  %146 = icmp eq i32 %144, %145
  %147 = icmp slt i32 %83, 0
  %148 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %149 = extractvalue %dx.types.CBufRet.i32 %148, 2
  %150 = icmp ne i32 %149, 0
  %151 = icmp ne i32 %142, 65535
  %152 = and i1 %151, %150
  %153 = and i1 %146, %152
  %154 = and i1 %147, %153
  %155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %156 = extractvalue %dx.types.CBufRet.f32 %155, 2
  %157 = icmp ugt i32 %102, 1
  %158 = select i1 %157, float 0.000000e+00, float 5.000000e-01
  %159 = icmp ugt i32 %104, 1
  %160 = select i1 %159, float 0.000000e+00, float 5.000000e-01
  %161 = icmp ugt i32 %106, 1
  %162 = select i1 %161, float 0.000000e+00, float 5.000000e-01
  %163 = uitofp i32 %102 to float
  %164 = uitofp i32 %104 to float
  %165 = uitofp i32 %106 to float
  %166 = fadd fast float %163, -1.000000e+00
  %167 = fadd fast float %164, -1.000000e+00
  %168 = fadd fast float %165, -1.000000e+00
  %169 = call float @dx.op.binary.f32(i32 35, float 1.000000e+00, float %166)  ; FMax(a,b)
  %170 = call float @dx.op.binary.f32(i32 35, float 1.000000e+00, float %167)  ; FMax(a,b)
  %171 = call float @dx.op.binary.f32(i32 35, float 1.000000e+00, float %168)  ; FMax(a,b)
  %172 = fdiv fast float 1.000000e+00, %169
  %173 = fdiv fast float 1.000000e+00, %170
  %174 = fdiv fast float 1.000000e+00, %171
  %175 = uitofp i32 %111 to float
  %176 = uitofp i32 %110 to float
  %177 = uitofp i32 %108 to float
  %178 = fadd fast float %175, %158
  %179 = fadd fast float %176, %160
  %180 = fadd fast float %162, %177
  %181 = fmul fast float %172, %178
  %182 = fmul fast float %173, %179
  %183 = fmul fast float %174, %180
  %184 = fmul fast float %172, %156
  %185 = fsub fast float -0.000000e+00, %184
  %186 = fmul fast float %173, %156
  %187 = fsub fast float -0.000000e+00, %186
  %188 = fmul fast float %174, %156
  %189 = fsub fast float -0.000000e+00, %188
  %190 = fmul fast float %181, 5.000000e-01
  %191 = fmul fast float %182, 5.000000e-01
  %192 = fmul fast float %183, 5.000000e-01
  %193 = fsub fast float %184, %190
  %194 = fsub fast float %186, %191
  %195 = fsub fast float %188, %192
  %196 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %193)  ; FMax(a,b)
  %197 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %194)  ; FMax(a,b)
  %198 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %195)  ; FMax(a,b)
  %199 = call float @dx.op.binary.f32(i32 36, float %184, float %196)  ; FMin(a,b)
  %200 = call float @dx.op.binary.f32(i32 36, float %186, float %197)  ; FMin(a,b)
  %201 = call float @dx.op.binary.f32(i32 36, float %188, float %198)  ; FMin(a,b)
  %202 = fsub fast float 5.000000e-01, %184
  %203 = fsub fast float 5.000000e-01, %186
  %204 = fsub fast float 5.000000e-01, %188
  %205 = fsub fast float %202, %190
  %206 = fsub fast float %203, %191
  %207 = fsub fast float %204, %192
  %208 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %205)  ; FMin(a,b)
  %209 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %206)  ; FMin(a,b)
  %210 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %207)  ; FMin(a,b)
  %211 = call float @dx.op.binary.f32(i32 35, float %185, float %208)  ; FMax(a,b)
  %212 = call float @dx.op.binary.f32(i32 35, float %187, float %209)  ; FMax(a,b)
  %213 = call float @dx.op.binary.f32(i32 35, float %189, float %210)  ; FMax(a,b)
  %214 = fadd fast float %199, %181
  %215 = fadd fast float %200, %182
  %216 = fadd fast float %201, %183
  %217 = fadd fast float %214, %211
  %218 = fadd fast float %215, %212
  %219 = fadd fast float %216, %213
  %220 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %77, i32 undef)  ; BufferLoad(srv,index,wot)
  %221 = extractvalue %dx.types.ResRet.f32 %220, 0
  %222 = or i32 %77, 16
  %223 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %222, i32 undef)  ; BufferLoad(srv,index,wot)
  %224 = extractvalue %dx.types.ResRet.f32 %223, 1
  %225 = or i32 %77, 32
  %226 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %225, i32 undef)  ; BufferLoad(srv,index,wot)
  %227 = extractvalue %dx.types.ResRet.f32 %226, 2
  %228 = fmul fast float %227, %224
  %229 = extractvalue %dx.types.ResRet.f32 %223, 2
  %230 = extractvalue %dx.types.ResRet.f32 %226, 1
  %231 = fmul fast float %230, %229
  %232 = fsub fast float %228, %231
  %233 = fmul fast float %232, %221
  %234 = extractvalue %dx.types.ResRet.f32 %220, 1
  %235 = extractvalue %dx.types.ResRet.f32 %223, 0
  %236 = fmul fast float %227, %235
  %237 = extractvalue %dx.types.ResRet.f32 %226, 0
  %238 = fmul fast float %237, %229
  %239 = fsub fast float %236, %238
  %240 = fmul fast float %239, %234
  %241 = fsub fast float %233, %240
  %242 = extractvalue %dx.types.ResRet.f32 %220, 2
  %243 = fmul fast float %230, %235
  %244 = fmul fast float %237, %224
  %245 = fsub fast float %243, %244
  %246 = fmul fast float %245, %242
  %247 = fadd fast float %241, %246
  %248 = extractvalue %dx.types.ResRet.f32 %220, 3
  %249 = fmul fast float %232, %248
  %250 = extractvalue %dx.types.ResRet.f32 %223, 3
  %251 = fmul fast float %227, %234
  %252 = fmul fast float %230, %242
  %253 = fsub fast float %251, %252
  %254 = fmul fast float %253, %250
  %255 = fsub fast float %254, %249
  %256 = extractvalue %dx.types.ResRet.f32 %226, 3
  %257 = fmul fast float %229, %234
  %258 = fmul fast float %224, %242
  %259 = fsub fast float %257, %258
  %260 = fmul fast float %259, %256
  %261 = fsub fast float %255, %260
  %262 = fmul fast float %239, %248
  %263 = fmul fast float %227, %221
  %264 = fmul fast float %237, %242
  %265 = fsub fast float %263, %264
  %266 = fmul fast float %265, %250
  %267 = fsub fast float %262, %266
  %268 = fmul fast float %229, %221
  %269 = fmul fast float %235, %242
  %270 = fsub fast float %268, %269
  %271 = fmul fast float %270, %256
  %272 = fadd fast float %267, %271
  %273 = fmul fast float %245, %248
  %274 = fmul fast float %230, %221
  %275 = fmul fast float %237, %234
  %276 = fsub fast float %274, %275
  %277 = fmul fast float %276, %250
  %278 = fsub fast float %277, %273
  %279 = fmul fast float %224, %221
  %280 = fmul fast float %235, %234
  %281 = fsub fast float %279, %280
  %282 = fmul fast float %281, %256
  %283 = fsub fast float %278, %282
  %284 = fsub fast float %252, %251
  %285 = fsub fast float %238, %236
  %286 = fsub fast float %269, %268
  %287 = fsub fast float %275, %274
  %288 = fdiv fast float 1.000000e+00, %247
  %289 = fmul fast float %288, %232
  %290 = fmul fast float %288, %284
  %291 = fmul fast float %288, %259
  %292 = fmul fast float %288, %261
  %293 = fmul fast float %288, %285
  %294 = fmul fast float %288, %265
  %295 = fmul fast float %288, %286
  %296 = fmul fast float %288, %272
  %297 = fmul fast float %288, %245
  %298 = fmul fast float %288, %287
  %299 = fmul fast float %281, %288
  %300 = fmul fast float %288, %283
  %301 = call float @dx.op.dot4.f32(i32 56, float %289, float %290, float %291, float %292, float %217, float %218, float %219, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %302 = call float @dx.op.dot4.f32(i32 56, float %293, float %294, float %295, float %296, float %217, float %218, float %219, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %303 = call float @dx.op.dot4.f32(i32 56, float %297, float %298, float %299, float %300, float %217, float %218, float %219, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %304 = lshr i32 %89, 16
  %305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %304)  ; LegacyF16ToF32(value)
  %306 = and i32 %89, 65535
  %307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %306)  ; LegacyF16ToF32(value)
  %308 = and i32 %86, 65535
  %309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %308)  ; LegacyF16ToF32(value)
  %310 = and i32 %86, 65536
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %325, label %312, !dx.controlflow.hints !47

; <label>:312                                     ; preds = %114
  %313 = fadd fast float %217, -5.000000e-01
  %314 = fadd fast float %218, -5.000000e-01
  %315 = fadd fast float %219, -5.000000e-01
  %316 = call float @dx.op.dot3.f32(i32 55, float %313, float %314, float %315, float %305, float %307, float %309)  ; Dot3(ax,ay,az,bx,by,bz)
  %317 = fcmp fast ogt float %316, 0.000000e+00
  %318 = select i1 %317, float 1.000000e+00, float -1.000000e+00
  %319 = call float @dx.op.dot3.f32(i32 55, float %289, float %290, float %291, float %305, float %307, float %309)  ; Dot3(ax,ay,az,bx,by,bz)
  %320 = call float @dx.op.dot3.f32(i32 55, float %293, float %294, float %295, float %305, float %307, float %309)  ; Dot3(ax,ay,az,bx,by,bz)
  %321 = call float @dx.op.dot3.f32(i32 55, float %297, float %298, float %299, float %305, float %307, float %309)  ; Dot3(ax,ay,az,bx,by,bz)
  %322 = fmul fast float %318, %319
  %323 = fmul fast float %320, %318
  %324 = fmul fast float %321, %318
  br label %325

; <label>:325                                     ; preds = %312, %114
  %326 = phi float [ %322, %312 ], [ %305, %114 ]
  %327 = phi float [ %323, %312 ], [ %307, %114 ]
  %328 = phi float [ %324, %312 ], [ %309, %114 ]
  %329 = fadd fast float %326, %301
  %330 = fadd fast float %327, %302
  %331 = fadd fast float %328, %303
  %332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %333 = extractvalue %dx.types.CBufRet.f32 %332, 0
  %334 = extractvalue %dx.types.CBufRet.f32 %332, 1
  %335 = extractvalue %dx.types.CBufRet.f32 %332, 2
  %336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %337 = extractvalue %dx.types.CBufRet.f32 %336, 0
  %338 = extractvalue %dx.types.CBufRet.f32 %336, 1
  %339 = extractvalue %dx.types.CBufRet.f32 %336, 2
  %340 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %341 = extractvalue %dx.types.CBufRet.i32 %340, 1
  %342 = fsub fast float %329, %333
  %343 = fsub fast float %330, %334
  %344 = fsub fast float %331, %335
  %345 = fmul fast float %342, %337
  %346 = fmul fast float %343, %338
  %347 = fmul fast float %344, %339
  %348 = fcmp fast ole float %345, 0.000000e+00
  %349 = fcmp fast ole float %346, 0.000000e+00
  %350 = fcmp fast ole float %347, 0.000000e+00
  %351 = or i1 %348, %349
  %352 = or i1 %350, %351
  %353 = fcmp fast oge float %345, 1.000000e+00
  %354 = fcmp fast oge float %346, 1.000000e+00
  %355 = fcmp fast oge float %347, 1.000000e+00
  %356 = or i1 %353, %354
  %357 = or i1 %355, %356
  %358 = or i1 %352, %357
  br i1 %358, label %1074, label %359, !dx.controlflow.hints !48

; <label>:359                                     ; preds = %325
  %360 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %361 = extractvalue %dx.types.CBufRet.i32 %360, 0
  %362 = fptosi float %342 to i32
  %363 = fptosi float %343 to i32
  %364 = fptosi float %344 to i32
  %365 = and i32 %341, 31
  %366 = ashr i32 %362, %365
  %367 = ashr i32 %363, %365
  %368 = ashr i32 %364, %365
  %369 = mul i32 %361, %367
  %370 = add nsw i32 %369, %366
  %371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %370, i32 0)  ; BufferLoad(srv,index,wot)
  %372 = extractvalue %dx.types.ResRet.i32 %371, 0
  %373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %370, i32 4)  ; BufferLoad(srv,index,wot)
  %374 = extractvalue %dx.types.ResRet.i32 %373, 0
  %375 = icmp slt i32 %368, %372
  %376 = icmp sgt i32 %368, %374
  %377 = or i1 %375, %376
  br i1 %377, label %1074, label %378, !dx.controlflow.hints !49

; <label>:378                                     ; preds = %359
  %379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %370, i32 8)  ; BufferLoad(srv,index,wot)
  %380 = extractvalue %dx.types.ResRet.i32 %379, 0
  %381 = sub i32 %368, %372
  %382 = add nsw i32 %381, %380
  %383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %382, i32 undef)  ; BufferLoad(srv,index,wot)
  %384 = extractvalue %dx.types.ResRet.i32 %383, 0
  %385 = icmp eq i32 %384, -1
  br i1 %385, label %1074, label %386, !dx.controlflow.hints !50

; <label>:386                                     ; preds = %378
  %387 = getelementptr inbounds [8 x i32], [8 x i32]* %27, i32 0, i32 0
  store i32 -1, i32* %387, align 4, !tbaa !37, !noalias !51
  %388 = getelementptr inbounds [8 x i32], [8 x i32]* %27, i32 0, i32 1
  store i32 -1, i32* %388, align 4, !tbaa !37, !noalias !51
  %389 = getelementptr inbounds [8 x i32], [8 x i32]* %27, i32 0, i32 2
  store i32 -1, i32* %389, align 4, !tbaa !37, !noalias !51
  %390 = getelementptr inbounds [8 x i32], [8 x i32]* %27, i32 0, i32 3
  store i32 -1, i32* %390, align 4, !tbaa !37, !noalias !51
  %391 = getelementptr inbounds [8 x i32], [8 x i32]* %27, i32 0, i32 4
  store i32 -1, i32* %391, align 4, !tbaa !37, !noalias !51
  %392 = getelementptr inbounds [8 x i32], [8 x i32]* %27, i32 0, i32 5
  store i32 -1, i32* %392, align 4, !tbaa !37, !noalias !51
  %393 = getelementptr inbounds [8 x i32], [8 x i32]* %27, i32 0, i32 6
  store i32 -1, i32* %393, align 4, !tbaa !37, !noalias !51
  %394 = getelementptr inbounds [8 x i32], [8 x i32]* %27, i32 0, i32 7
  store i32 -1, i32* %394, align 4, !tbaa !37, !noalias !51
  br label %395

; <label>:395                                     ; preds = %499, %386
  %396 = phi i32 [ -1, %386 ], [ %496, %499 ]
  %397 = phi i32 [ -1, %386 ], [ %491, %499 ]
  %398 = phi i32 [ -1, %386 ], [ %484, %499 ]
  %399 = phi i32 [ -1, %386 ], [ %479, %499 ]
  %400 = phi i32 [ -1, %386 ], [ %470, %499 ]
  %401 = phi i32 [ -1, %386 ], [ %465, %499 ]
  %402 = phi i32 [ -1, %386 ], [ %457, %499 ]
  %403 = phi i32 [ -1, %386 ], [ %450, %499 ]
  %404 = phi i32 [ %384, %386 ], [ %519, %499 ]
  %405 = phi i32 [ %341, %386 ], [ %406, %499 ]
  %406 = add nsw i32 %405, -2
  %407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %408 = extractvalue %dx.types.ResRet.i32 %407, 0
  %409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %410 = extractvalue %dx.types.ResRet.i32 %409, 0
  %411 = and i32 %408, 31
  %412 = shl i32 1, %411
  %413 = add i32 %412, 1
  %414 = and i32 %406, 31
  %415 = ashr i32 %362, %414
  %416 = ashr i32 %363, %414
  %417 = ashr i32 %364, %414
  %418 = and i32 %415, 3
  %419 = and i32 %416, 3
  %420 = and i32 %417, 3
  br label %421

; <label>:421                                     ; preds = %421, %395
  %422 = phi i32 [ %396, %395 ], [ %496, %421 ]
  %423 = phi i32 [ %397, %395 ], [ %491, %421 ]
  %424 = phi i32 [ %398, %395 ], [ %484, %421 ]
  %425 = phi i32 [ %399, %395 ], [ %479, %421 ]
  %426 = phi i32 [ %400, %395 ], [ %470, %421 ]
  %427 = phi i32 [ %401, %395 ], [ %465, %421 ]
  %428 = phi i32 [ %402, %395 ], [ %457, %421 ]
  %429 = phi i32 [ %403, %395 ], [ %450, %421 ]
  %430 = phi i32 [ 0, %395 ], [ %497, %421 ]
  %431 = sub i32 2, %430
  %432 = and i32 %431, 31
  %433 = lshr i32 %418, %432
  %434 = lshr i32 %419, %432
  %435 = lshr i32 %420, %432
  %436 = sub i32 %408, %430
  %437 = and i32 %436, 31
  %438 = shl i32 %433, %437
  %439 = shl i32 %434, %437
  %440 = shl i32 %435, %437
  %441 = shl i32 1, %437
  %442 = mul i32 %440, %413
  %443 = add i32 %442, %439
  %444 = mul i32 %443, %413
  %445 = add i32 %438, %410
  %446 = add i32 %445, %444
  %447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %446, i32 undef)  ; BufferLoad(srv,index,wot)
  %448 = extractvalue %dx.types.ResRet.i32 %447, 0
  %449 = icmp ne i32 %448, -1
  %450 = select i1 %449, i32 %448, i32 %429
  store i32 %450, i32* %387, align 4, !tbaa !37, !noalias !51
  %451 = add i32 %441, %410
  %452 = add i32 %451, %438
  %453 = add i32 %452, %444
  %454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %453, i32 undef)  ; BufferLoad(srv,index,wot)
  %455 = extractvalue %dx.types.ResRet.i32 %454, 0
  %456 = icmp ne i32 %455, -1
  %457 = select i1 %456, i32 %455, i32 %428
  store i32 %457, i32* %388, align 4, !tbaa !37, !noalias !51
  %458 = add i32 %439, %441
  %459 = add i32 %458, %442
  %460 = mul i32 %459, %413
  %461 = add i32 %445, %460
  %462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %463 = extractvalue %dx.types.ResRet.i32 %462, 0
  %464 = icmp ne i32 %463, -1
  %465 = select i1 %464, i32 %463, i32 %427
  store i32 %465, i32* %389, align 4, !tbaa !37, !noalias !51
  %466 = add i32 %452, %460
  %467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %468 = extractvalue %dx.types.ResRet.i32 %467, 0
  %469 = icmp ne i32 %468, -1
  %470 = select i1 %469, i32 %468, i32 %426
  store i32 %470, i32* %390, align 4, !tbaa !37, !noalias !51
  %471 = add i32 %440, %441
  %472 = mul i32 %471, %413
  %473 = add i32 %472, %439
  %474 = mul i32 %473, %413
  %475 = add i32 %445, %474
  %476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %475, i32 undef)  ; BufferLoad(srv,index,wot)
  %477 = extractvalue %dx.types.ResRet.i32 %476, 0
  %478 = icmp ne i32 %477, -1
  %479 = select i1 %478, i32 %477, i32 %425
  store i32 %479, i32* %391, align 4, !tbaa !37, !noalias !51
  %480 = add i32 %452, %474
  %481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %480, i32 undef)  ; BufferLoad(srv,index,wot)
  %482 = extractvalue %dx.types.ResRet.i32 %481, 0
  %483 = icmp ne i32 %482, -1
  %484 = select i1 %483, i32 %482, i32 %424
  store i32 %484, i32* %392, align 4, !tbaa !37, !noalias !51
  %485 = add i32 %458, %472
  %486 = mul i32 %485, %413
  %487 = add i32 %445, %486
  %488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %487, i32 undef)  ; BufferLoad(srv,index,wot)
  %489 = extractvalue %dx.types.ResRet.i32 %488, 0
  %490 = icmp ne i32 %489, -1
  %491 = select i1 %490, i32 %489, i32 %423
  store i32 %491, i32* %393, align 4, !tbaa !37, !noalias !51
  %492 = add i32 %452, %486
  %493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %492, i32 undef)  ; BufferLoad(srv,index,wot)
  %494 = extractvalue %dx.types.ResRet.i32 %493, 0
  %495 = icmp ne i32 %494, -1
  %496 = select i1 %495, i32 %494, i32 %422
  store i32 %496, i32* %394, align 4, !tbaa !37, !noalias !51
  %497 = add i32 %430, 1
  %498 = icmp ugt i32 %497, %408
  br i1 %498, label %499, label %421

; <label>:499                                     ; preds = %421
  %500 = shl nuw nsw i32 %420, 4
  %501 = shl nuw nsw i32 %419, 2
  %502 = lshr i32 %420, 1
  %503 = and i32 %500, 16
  %504 = or i32 %501, %418
  %505 = or i32 %504, %503
  %506 = shl i32 1, %505
  %507 = shl nuw nsw i32 %502, 2
  %508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %404, i32 %507)  ; BufferLoad(srv,index,wot)
  %509 = extractvalue %dx.types.ResRet.i32 %508, 0
  %510 = and i32 %509, %506
  %511 = icmp eq i32 %510, 0
  %512 = add i32 %506, -1
  %513 = and i32 %509, %512
  %514 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %513)  ; Countbits(value)
  %515 = or i32 %507, 8
  %516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %404, i32 %515)  ; BufferLoad(srv,index,wot)
  %517 = extractvalue %dx.types.ResRet.i32 %516, 0
  %518 = add i32 %517, %514
  %519 = select i1 %511, i32 -1, i32 %518
  %520 = icmp eq i32 %519, -1
  br i1 %520, label %521, label %395

; <label>:521                                     ; preds = %499
  br label %522

; <label>:522                                     ; preds = %808, %521
  %523 = phi i32 [ %810, %808 ], [ %450, %521 ]
  %524 = phi float [ %805, %808 ], [ 0.000000e+00, %521 ]
  %525 = phi i32 [ %806, %808 ], [ 0, %521 ]
  %526 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %523, i32 undef)  ; BufferLoad(srv,index,wot)
  %527 = extractvalue %dx.types.ResRet.f32 %526, 0
  %528 = extractvalue %dx.types.ResRet.f32 %526, 1
  %529 = extractvalue %dx.types.ResRet.f32 %526, 2
  %530 = extractvalue %dx.types.ResRet.f32 %526, 3
  %531 = fsub fast float %329, %527
  %532 = fsub fast float %330, %528
  %533 = fsub fast float %331, %529
  %534 = fmul fast float %531, %530
  %535 = fmul fast float %532, %530
  %536 = fmul fast float %533, %530
  %537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %523, i32 undef)  ; BufferLoad(srv,index,wot)
  %538 = extractvalue %dx.types.ResRet.i32 %537, 0
  %539 = call float @dx.op.unary.f32(i32 6, float %534)  ; FAbs(value)
  %540 = call float @dx.op.unary.f32(i32 6, float %535)  ; FAbs(value)
  %541 = fsub fast float 1.000000e+00, %539
  %542 = fsub fast float 1.000000e+00, %540
  %543 = call float @dx.op.unary.f32(i32 7, float %541)  ; Saturate(value)
  %544 = call float @dx.op.unary.f32(i32 7, float %542)  ; Saturate(value)
  %545 = fmul fast float %544, %543
  %546 = mul i32 %538, 29
  %547 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %546, i32 undef)  ; BufferLoad(srv,index,wot)
  %548 = extractvalue %dx.types.ResRet.f32 %547, 0
  %549 = extractvalue %dx.types.ResRet.f32 %547, 1
  %550 = extractvalue %dx.types.ResRet.f32 %547, 2
  %551 = extractvalue %dx.types.ResRet.f32 %547, 3
  %552 = add i32 %546, 1
  %553 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %552, i32 undef)  ; BufferLoad(srv,index,wot)
  %554 = extractvalue %dx.types.ResRet.f32 %553, 0
  %555 = extractvalue %dx.types.ResRet.f32 %553, 1
  %556 = extractvalue %dx.types.ResRet.f32 %553, 2
  %557 = extractvalue %dx.types.ResRet.f32 %553, 3
  %558 = add i32 %546, 2
  %559 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %558, i32 undef)  ; BufferLoad(srv,index,wot)
  %560 = extractvalue %dx.types.ResRet.f32 %559, 0
  %561 = extractvalue %dx.types.ResRet.f32 %559, 1
  %562 = extractvalue %dx.types.ResRet.f32 %559, 2
  %563 = extractvalue %dx.types.ResRet.f32 %559, 3
  %564 = add i32 %546, 3
  %565 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %564, i32 undef)  ; BufferLoad(srv,index,wot)
  %566 = extractvalue %dx.types.ResRet.f32 %565, 0
  %567 = extractvalue %dx.types.ResRet.f32 %565, 1
  %568 = extractvalue %dx.types.ResRet.f32 %565, 2
  %569 = extractvalue %dx.types.ResRet.f32 %565, 3
  %570 = add i32 %546, 4
  %571 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %570, i32 undef)  ; BufferLoad(srv,index,wot)
  %572 = extractvalue %dx.types.ResRet.f32 %571, 0
  %573 = extractvalue %dx.types.ResRet.f32 %571, 1
  %574 = extractvalue %dx.types.ResRet.f32 %571, 2
  %575 = extractvalue %dx.types.ResRet.f32 %571, 3
  %576 = add i32 %546, 5
  %577 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %576, i32 undef)  ; BufferLoad(srv,index,wot)
  %578 = extractvalue %dx.types.ResRet.f32 %577, 0
  %579 = extractvalue %dx.types.ResRet.f32 %577, 1
  %580 = extractvalue %dx.types.ResRet.f32 %577, 2
  %581 = extractvalue %dx.types.ResRet.f32 %577, 3
  %582 = add i32 %546, 6
  %583 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %582, i32 undef)  ; BufferLoad(srv,index,wot)
  %584 = extractvalue %dx.types.ResRet.f32 %583, 0
  %585 = extractvalue %dx.types.ResRet.f32 %583, 1
  %586 = extractvalue %dx.types.ResRet.f32 %583, 2
  %587 = extractvalue %dx.types.ResRet.f32 %583, 3
  %588 = add i32 %546, 7
  %589 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %588, i32 undef)  ; BufferLoad(srv,index,wot)
  %590 = extractvalue %dx.types.ResRet.f32 %589, 0
  %591 = extractvalue %dx.types.ResRet.f32 %589, 1
  %592 = extractvalue %dx.types.ResRet.f32 %589, 2
  %593 = extractvalue %dx.types.ResRet.f32 %589, 3
  %594 = fmul fast float %548, %534
  %595 = fmul fast float %560, %535
  %596 = fadd fast float %595, %594
  %597 = fmul fast float %572, %536
  %598 = fadd fast float %596, %597
  %599 = fmul fast float %549, %534
  %600 = fmul fast float %561, %535
  %601 = fadd fast float %600, %599
  %602 = fmul fast float %573, %536
  %603 = fadd fast float %601, %602
  %604 = fmul fast float %550, %534
  %605 = fmul fast float %562, %535
  %606 = fadd fast float %605, %604
  %607 = fmul fast float %574, %536
  %608 = fadd fast float %606, %607
  %609 = fmul fast float %551, %534
  %610 = fmul fast float %563, %535
  %611 = fadd fast float %610, %609
  %612 = fmul fast float %575, %536
  %613 = fadd fast float %611, %612
  %614 = fmul fast float %554, %534
  %615 = fmul fast float %566, %535
  %616 = fadd fast float %615, %614
  %617 = fmul fast float %578, %536
  %618 = fadd fast float %616, %617
  %619 = fmul fast float %555, %534
  %620 = fmul fast float %567, %535
  %621 = fadd fast float %620, %619
  %622 = fmul fast float %579, %536
  %623 = fadd fast float %621, %622
  %624 = fmul fast float %556, %534
  %625 = fmul fast float %568, %535
  %626 = fadd fast float %625, %624
  %627 = fmul fast float %580, %536
  %628 = fadd fast float %626, %627
  %629 = fmul fast float %557, %534
  %630 = fmul fast float %569, %535
  %631 = fadd fast float %630, %629
  %632 = fmul fast float %581, %536
  %633 = fadd fast float %631, %632
  %634 = fadd fast float %598, %584
  %635 = fadd fast float %603, %585
  %636 = fadd fast float %608, %586
  %637 = fadd fast float %613, %587
  %638 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %634)  ; FMax(a,b)
  %639 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %635)  ; FMax(a,b)
  %640 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %636)  ; FMax(a,b)
  %641 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %637)  ; FMax(a,b)
  %642 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %634)  ; FMin(a,b)
  %643 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %635)  ; FMin(a,b)
  %644 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %636)  ; FMin(a,b)
  %645 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %637)  ; FMin(a,b)
  %646 = fmul fast float %642, 0x3F847AE140000000
  %647 = fmul fast float %643, 0x3F847AE140000000
  %648 = fmul fast float %644, 0x3F847AE140000000
  %649 = fmul fast float %645, 0x3F847AE140000000
  %650 = fadd fast float %646, %638
  %651 = fadd fast float %647, %639
  %652 = fadd fast float %648, %640
  %653 = fadd fast float %649, %641
  %654 = fadd fast float %618, %590
  %655 = fadd fast float %623, %591
  %656 = fadd fast float %628, %592
  %657 = fadd fast float %633, %593
  %658 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %654)  ; FMax(a,b)
  %659 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %655)  ; FMax(a,b)
  %660 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %656)  ; FMax(a,b)
  %661 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %657)  ; FMax(a,b)
  %662 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %654)  ; FMin(a,b)
  %663 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %655)  ; FMin(a,b)
  %664 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %656)  ; FMin(a,b)
  %665 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %657)  ; FMin(a,b)
  %666 = fmul fast float %662, 0x3F847AE140000000
  %667 = fmul fast float %663, 0x3F847AE140000000
  %668 = fmul fast float %664, 0x3F847AE140000000
  %669 = fmul fast float %665, 0x3F847AE140000000
  %670 = fadd fast float %666, %658
  %671 = fadd fast float %667, %659
  %672 = fadd fast float %668, %660
  %673 = fadd fast float %669, %661
  br label %674

; <label>:674                                     ; preds = %674, %522
  %675 = phi i32 [ 0, %522 ], [ %695, %674 ]
  %676 = add i32 %546, 8
  %677 = shl i32 %675, 1
  %678 = add i32 %676, %677
  %679 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %678, i32 undef)  ; BufferLoad(srv,index,wot)
  %680 = extractvalue %dx.types.ResRet.f32 %679, 0
  %681 = extractvalue %dx.types.ResRet.f32 %679, 1
  %682 = extractvalue %dx.types.ResRet.f32 %679, 2
  %683 = extractvalue %dx.types.ResRet.f32 %679, 3
  %684 = add i32 %546, 9
  %685 = add i32 %684, %677
  %686 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %685, i32 undef)  ; BufferLoad(srv,index,wot)
  %687 = extractvalue %dx.types.ResRet.f32 %686, 0
  %688 = extractvalue %dx.types.ResRet.f32 %686, 1
  %689 = extractvalue %dx.types.ResRet.f32 %686, 2
  %690 = extractvalue %dx.types.ResRet.f32 %686, 3
  %691 = call float @dx.op.dot4.f32(i32 56, float %680, float %681, float %682, float %683, float %650, float %651, float %652, float %653)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %692 = call float @dx.op.dot4.f32(i32 56, float %687, float %688, float %689, float %690, float %670, float %671, float %672, float %673)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %693 = fadd fast float %692, %691
  %694 = getelementptr inbounds [8 x float], [8 x float]* %26, i32 0, i32 %675
  store float %693, float* %694, align 4, !tbaa !57, !noalias !51
  %695 = add nuw nsw i32 %675, 1
  %696 = icmp eq i32 %695, 8
  br i1 %696, label %697, label %674

; <label>:697                                     ; preds = %674
  %698 = call float @dx.op.unary.f32(i32 6, float %536)  ; FAbs(value)
  %699 = fsub fast float 1.000000e+00, %698
  %700 = call float @dx.op.unary.f32(i32 7, float %699)  ; Saturate(value)
  %701 = fmul fast float %545, %700
  %702 = add i32 %546, 24
  %703 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %702, i32 undef)  ; BufferLoad(srv,index,wot)
  %704 = extractvalue %dx.types.ResRet.f32 %703, 0
  %705 = extractvalue %dx.types.ResRet.f32 %703, 1
  %706 = extractvalue %dx.types.ResRet.f32 %703, 2
  %707 = extractvalue %dx.types.ResRet.f32 %703, 3
  %708 = add i32 %546, 25
  %709 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %708, i32 undef)  ; BufferLoad(srv,index,wot)
  %710 = extractvalue %dx.types.ResRet.f32 %709, 0
  %711 = extractvalue %dx.types.ResRet.f32 %709, 1
  %712 = extractvalue %dx.types.ResRet.f32 %709, 2
  %713 = extractvalue %dx.types.ResRet.f32 %709, 3
  %714 = getelementptr inbounds [8 x float], [8 x float]* %26, i32 0, i32 0
  %715 = load float, float* %714, align 4, !tbaa !57, !noalias !51
  %716 = fadd fast float %715, %704
  %717 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %716)  ; FMax(a,b)
  %718 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %716)  ; FMin(a,b)
  %719 = fmul fast float %718, 0x3F847AE140000000
  %720 = fadd fast float %719, %717
  store float %720, float* %714, align 4, !tbaa !57, !noalias !51
  %721 = getelementptr inbounds [8 x float], [8 x float]* %26, i32 0, i32 1
  %722 = load float, float* %721, align 4, !tbaa !57, !noalias !51
  %723 = fadd fast float %722, %705
  %724 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %723)  ; FMax(a,b)
  %725 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %723)  ; FMin(a,b)
  %726 = fmul fast float %725, 0x3F847AE140000000
  %727 = fadd fast float %726, %724
  store float %727, float* %721, align 4, !tbaa !57, !noalias !51
  %728 = getelementptr inbounds [8 x float], [8 x float]* %26, i32 0, i32 2
  %729 = load float, float* %728, align 4, !tbaa !57, !noalias !51
  %730 = fadd fast float %729, %706
  %731 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %730)  ; FMax(a,b)
  %732 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %730)  ; FMin(a,b)
  %733 = fmul fast float %732, 0x3F847AE140000000
  %734 = fadd fast float %733, %731
  store float %734, float* %728, align 4, !tbaa !57, !noalias !51
  %735 = getelementptr inbounds [8 x float], [8 x float]* %26, i32 0, i32 3
  %736 = load float, float* %735, align 4, !tbaa !57, !noalias !51
  %737 = fadd fast float %736, %707
  %738 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %737)  ; FMax(a,b)
  %739 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %737)  ; FMin(a,b)
  %740 = fmul fast float %739, 0x3F847AE140000000
  %741 = fadd fast float %740, %738
  store float %741, float* %735, align 4, !tbaa !57, !noalias !51
  %742 = getelementptr inbounds [8 x float], [8 x float]* %26, i32 0, i32 4
  %743 = load float, float* %742, align 4, !tbaa !57, !noalias !51
  %744 = fadd fast float %743, %710
  %745 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %744)  ; FMax(a,b)
  %746 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %744)  ; FMin(a,b)
  %747 = fmul fast float %746, 0x3F847AE140000000
  %748 = fadd fast float %747, %745
  store float %748, float* %742, align 4, !tbaa !57, !noalias !51
  %749 = getelementptr inbounds [8 x float], [8 x float]* %26, i32 0, i32 5
  %750 = load float, float* %749, align 4, !tbaa !57, !noalias !51
  %751 = fadd fast float %750, %711
  %752 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %751)  ; FMax(a,b)
  %753 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %751)  ; FMin(a,b)
  %754 = fmul fast float %753, 0x3F847AE140000000
  %755 = fadd fast float %754, %752
  store float %755, float* %749, align 4, !tbaa !57, !noalias !51
  %756 = getelementptr inbounds [8 x float], [8 x float]* %26, i32 0, i32 6
  %757 = load float, float* %756, align 4, !tbaa !57, !noalias !51
  %758 = fadd fast float %757, %712
  %759 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %758)  ; FMax(a,b)
  %760 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %758)  ; FMin(a,b)
  %761 = fmul fast float %760, 0x3F847AE140000000
  %762 = fadd fast float %761, %759
  store float %762, float* %756, align 4, !tbaa !57, !noalias !51
  %763 = getelementptr inbounds [8 x float], [8 x float]* %26, i32 0, i32 7
  %764 = load float, float* %763, align 4, !tbaa !57, !noalias !51
  %765 = fadd fast float %764, %713
  %766 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %765)  ; FMax(a,b)
  %767 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %765)  ; FMin(a,b)
  %768 = fmul fast float %767, 0x3F847AE140000000
  %769 = fadd fast float %768, %766
  store float %769, float* %763, align 4, !tbaa !57, !noalias !51
  %770 = add i32 %546, 26
  %771 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %770, i32 undef)  ; BufferLoad(srv,index,wot)
  %772 = extractvalue %dx.types.ResRet.f32 %771, 0
  %773 = extractvalue %dx.types.ResRet.f32 %771, 1
  %774 = extractvalue %dx.types.ResRet.f32 %771, 2
  %775 = extractvalue %dx.types.ResRet.f32 %771, 3
  %776 = add i32 %546, 27
  %777 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %776, i32 undef)  ; BufferLoad(srv,index,wot)
  %778 = extractvalue %dx.types.ResRet.f32 %777, 0
  %779 = extractvalue %dx.types.ResRet.f32 %777, 1
  %780 = extractvalue %dx.types.ResRet.f32 %777, 2
  %781 = extractvalue %dx.types.ResRet.f32 %777, 3
  %782 = fmul fast float %720, %772
  %783 = fmul fast float %727, %773
  %784 = fadd fast float %783, %782
  %785 = fmul fast float %734, %774
  %786 = fadd fast float %784, %785
  %787 = fmul fast float %741, %775
  %788 = fadd fast float %786, %787
  %789 = fmul fast float %748, %778
  %790 = fadd fast float %788, %789
  %791 = fmul fast float %755, %779
  %792 = fadd fast float %790, %791
  %793 = fmul fast float %762, %780
  %794 = fadd fast float %792, %793
  %795 = fmul fast float %769, %781
  %796 = fadd fast float %794, %795
  %797 = add i32 %546, 28
  %798 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %797, i32 undef)  ; BufferLoad(srv,index,wot)
  %799 = extractvalue %dx.types.ResRet.f32 %798, 0
  %800 = fadd fast float %796, %799
  %801 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %800)  ; FMax(a,b)
  %802 = fmul fast float %701, %801
  %803 = call float @dx.op.unary.f32(i32 7, float %802)  ; Saturate(value)
  %804 = getelementptr inbounds [8 x float], [8 x float]* %28, i32 0, i32 %525
  store float %803, float* %804, align 4, !tbaa !57, !noalias !51
  %805 = fadd fast float %803, %524
  %806 = add nuw nsw i32 %525, 1
  %807 = icmp eq i32 %806, 8
  br i1 %807, label %811, label %808

; <label>:808                                     ; preds = %697
  %809 = getelementptr inbounds [8 x i32], [8 x i32]* %27, i32 0, i32 %806
  %810 = load i32, i32* %809, align 4, !tbaa !37, !noalias !51
  br label %522

; <label>:811                                     ; preds = %697
  %812 = fcmp fast ugt float %805, 0x3EE4F8B580000000
  br i1 %812, label %813, label %1074, !dx.controlflow.hints !59

; <label>:813                                     ; preds = %811
  %814 = fcmp fast ogt float %805, 0x3EE4F8B580000000
  %815 = fdiv fast float 1.000000e+00, %805
  %816 = select i1 %814, float %815, float 1.000000e+00
  %817 = getelementptr inbounds [8 x float], [8 x float]* %28, i32 0, i32 0
  %818 = load float, float* %817, align 4, !tbaa !57, !noalias !51
  %819 = fmul fast float %818, %816
  store float %819, float* %817, align 4, !tbaa !57, !noalias !51
  %820 = getelementptr inbounds [8 x float], [8 x float]* %28, i32 0, i32 1
  %821 = load float, float* %820, align 4, !tbaa !57, !noalias !51
  %822 = fmul fast float %821, %816
  store float %822, float* %820, align 4, !tbaa !57, !noalias !51
  %823 = getelementptr inbounds [8 x float], [8 x float]* %28, i32 0, i32 2
  %824 = load float, float* %823, align 4, !tbaa !57, !noalias !51
  %825 = fmul fast float %824, %816
  store float %825, float* %823, align 4, !tbaa !57, !noalias !51
  %826 = getelementptr inbounds [8 x float], [8 x float]* %28, i32 0, i32 3
  %827 = load float, float* %826, align 4, !tbaa !57, !noalias !51
  %828 = fmul fast float %827, %816
  store float %828, float* %826, align 4, !tbaa !57, !noalias !51
  %829 = getelementptr inbounds [8 x float], [8 x float]* %28, i32 0, i32 4
  %830 = load float, float* %829, align 4, !tbaa !57, !noalias !51
  %831 = fmul fast float %830, %816
  store float %831, float* %829, align 4, !tbaa !57, !noalias !51
  %832 = getelementptr inbounds [8 x float], [8 x float]* %28, i32 0, i32 5
  %833 = load float, float* %832, align 4, !tbaa !57, !noalias !51
  %834 = fmul fast float %833, %816
  store float %834, float* %832, align 4, !tbaa !57, !noalias !51
  %835 = getelementptr inbounds [8 x float], [8 x float]* %28, i32 0, i32 6
  %836 = load float, float* %835, align 4, !tbaa !57, !noalias !51
  %837 = fmul fast float %836, %816
  store float %837, float* %835, align 4, !tbaa !57, !noalias !51
  %838 = getelementptr inbounds [8 x float], [8 x float]* %28, i32 0, i32 7
  %839 = load float, float* %838, align 4, !tbaa !57, !noalias !51
  %840 = fmul fast float %839, %816
  store float %840, float* %838, align 4, !tbaa !57, !noalias !51
  br label %841

; <label>:841                                     ; preds = %1068, %813
  %842 = phi float [ %1072, %1068 ], [ %819, %813 ]
  %843 = phi i32 [ %1070, %1068 ], [ %450, %813 ]
  %844 = phi float [ %1065, %1068 ], [ 0.000000e+00, %813 ]
  %845 = phi float [ %1063, %1068 ], [ 0.000000e+00, %813 ]
  %846 = phi float [ %1061, %1068 ], [ 0.000000e+00, %813 ]
  %847 = phi float [ %1058, %1068 ], [ 0.000000e+00, %813 ]
  %848 = phi float [ %1056, %1068 ], [ 0.000000e+00, %813 ]
  %849 = phi float [ %1053, %1068 ], [ 0.000000e+00, %813 ]
  %850 = phi float [ %1051, %1068 ], [ 0.000000e+00, %813 ]
  %851 = phi float [ %1049, %1068 ], [ 0.000000e+00, %813 ]
  %852 = phi float [ %1046, %1068 ], [ 0.000000e+00, %813 ]
  %853 = phi float [ %1023, %1068 ], [ 0.000000e+00, %813 ]
  %854 = phi float [ %1021, %1068 ], [ 0.000000e+00, %813 ]
  %855 = phi float [ %1019, %1068 ], [ 0.000000e+00, %813 ]
  %856 = phi float [ %1015, %1068 ], [ 0.000000e+00, %813 ]
  %857 = phi float [ %1013, %1068 ], [ 0.000000e+00, %813 ]
  %858 = phi float [ %1009, %1068 ], [ 0.000000e+00, %813 ]
  %859 = phi float [ %1007, %1068 ], [ 0.000000e+00, %813 ]
  %860 = phi float [ %1005, %1068 ], [ 0.000000e+00, %813 ]
  %861 = phi float [ %1001, %1068 ], [ 0.000000e+00, %813 ]
  %862 = phi float [ %1044, %1068 ], [ 0.000000e+00, %813 ]
  %863 = phi float [ %1042, %1068 ], [ 0.000000e+00, %813 ]
  %864 = phi float [ %1040, %1068 ], [ 0.000000e+00, %813 ]
  %865 = phi float [ %1037, %1068 ], [ 0.000000e+00, %813 ]
  %866 = phi float [ %1035, %1068 ], [ 0.000000e+00, %813 ]
  %867 = phi float [ %1032, %1068 ], [ 0.000000e+00, %813 ]
  %868 = phi float [ %1030, %1068 ], [ 0.000000e+00, %813 ]
  %869 = phi float [ %1028, %1068 ], [ 0.000000e+00, %813 ]
  %870 = phi float [ %1025, %1068 ], [ 0.000000e+00, %813 ]
  %871 = phi i32 [ %1066, %1068 ], [ 0, %813 ]
  %872 = shl i32 %843, 5
  %873 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %872, i32 undef)  ; BufferLoad(srv,index,wot)
  %874 = extractvalue %dx.types.ResRet.i32 %873, 0
  %875 = extractvalue %dx.types.ResRet.i32 %873, 1
  %876 = extractvalue %dx.types.ResRet.i32 %873, 2
  %877 = extractvalue %dx.types.ResRet.i32 %873, 3
  %878 = or i32 %872, 16
  %879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %878, i32 undef)  ; BufferLoad(srv,index,wot)
  %880 = extractvalue %dx.types.ResRet.i32 %879, 0
  %881 = extractvalue %dx.types.ResRet.i32 %879, 1
  %882 = extractvalue %dx.types.ResRet.i32 %879, 2
  %883 = shl i32 %874, 4
  %884 = and i32 %883, 32752
  %885 = call float @dx.op.legacyF16ToF32(i32 131, i32 %884)  ; LegacyF16ToF32(value)
  %886 = lshr i32 %874, 7
  %887 = and i32 %886, 32752
  %888 = call float @dx.op.legacyF16ToF32(i32 131, i32 %887)  ; LegacyF16ToF32(value)
  %889 = lshr i32 %874, 22
  %890 = shl nuw nsw i32 %889, 5
  %891 = call float @dx.op.legacyF16ToF32(i32 131, i32 %890)  ; LegacyF16ToF32(value)
  %892 = and i32 %875, 255
  %893 = uitofp i32 %892 to float
  %894 = fmul fast float %893, 0x3F80204080000000
  %895 = fadd fast float %894, -1.000000e+00
  %896 = lshr i32 %875, 8
  %897 = and i32 %896, 255
  %898 = uitofp i32 %897 to float
  %899 = fmul fast float %898, 0x3F80204080000000
  %900 = fadd fast float %899, -1.000000e+00
  %901 = lshr i32 %875, 16
  %902 = and i32 %901, 255
  %903 = uitofp i32 %902 to float
  %904 = fmul fast float %903, 0x3F80204080000000
  %905 = fadd fast float %904, -1.000000e+00
  %906 = lshr i32 %875, 24
  %907 = uitofp i32 %906 to float
  %908 = fmul fast float %907, 0x3F80204080000000
  %909 = fadd fast float %908, -1.000000e+00
  %910 = and i32 %876, 255
  %911 = uitofp i32 %910 to float
  %912 = fmul fast float %911, 0x3F80204080000000
  %913 = fadd fast float %912, -1.000000e+00
  %914 = lshr i32 %876, 8
  %915 = and i32 %914, 255
  %916 = uitofp i32 %915 to float
  %917 = fmul fast float %916, 0x3F80204080000000
  %918 = fadd fast float %917, -1.000000e+00
  %919 = lshr i32 %876, 16
  %920 = and i32 %919, 255
  %921 = uitofp i32 %920 to float
  %922 = fmul fast float %921, 0x3F80204080000000
  %923 = fadd fast float %922, -1.000000e+00
  %924 = lshr i32 %876, 24
  %925 = uitofp i32 %924 to float
  %926 = fmul fast float %925, 0x3F80204080000000
  %927 = fadd fast float %926, -1.000000e+00
  %928 = and i32 %877, 255
  %929 = uitofp i32 %928 to float
  %930 = fmul fast float %929, 0x3F80204080000000
  %931 = fadd fast float %930, -1.000000e+00
  %932 = lshr i32 %877, 8
  %933 = and i32 %932, 255
  %934 = uitofp i32 %933 to float
  %935 = fmul fast float %934, 0x3F80204080000000
  %936 = fadd fast float %935, -1.000000e+00
  %937 = lshr i32 %877, 16
  %938 = and i32 %937, 255
  %939 = uitofp i32 %938 to float
  %940 = fmul fast float %939, 0x3F80204080000000
  %941 = fadd fast float %940, -1.000000e+00
  %942 = lshr i32 %877, 24
  %943 = uitofp i32 %942 to float
  %944 = fmul fast float %943, 0x3F80204080000000
  %945 = fadd fast float %944, -1.000000e+00
  %946 = and i32 %880, 255
  %947 = uitofp i32 %946 to float
  %948 = fmul fast float %947, 0x3F80204080000000
  %949 = fadd fast float %948, -1.000000e+00
  %950 = lshr i32 %880, 8
  %951 = and i32 %950, 255
  %952 = uitofp i32 %951 to float
  %953 = fmul fast float %952, 0x3F80204080000000
  %954 = fadd fast float %953, -1.000000e+00
  %955 = lshr i32 %880, 16
  %956 = and i32 %955, 255
  %957 = uitofp i32 %956 to float
  %958 = fmul fast float %957, 0x3F80204080000000
  %959 = fadd fast float %958, -1.000000e+00
  %960 = lshr i32 %880, 24
  %961 = uitofp i32 %960 to float
  %962 = fmul fast float %961, 0x3F80204080000000
  %963 = fadd fast float %962, -1.000000e+00
  %964 = and i32 %881, 255
  %965 = uitofp i32 %964 to float
  %966 = fmul fast float %965, 0x3F80204080000000
  %967 = fadd fast float %966, -1.000000e+00
  %968 = lshr i32 %881, 8
  %969 = and i32 %968, 255
  %970 = uitofp i32 %969 to float
  %971 = fmul fast float %970, 0x3F80204080000000
  %972 = fadd fast float %971, -1.000000e+00
  %973 = lshr i32 %881, 16
  %974 = and i32 %973, 255
  %975 = uitofp i32 %974 to float
  %976 = fmul fast float %975, 0x3F80204080000000
  %977 = fadd fast float %976, -1.000000e+00
  %978 = lshr i32 %881, 24
  %979 = uitofp i32 %978 to float
  %980 = fmul fast float %979, 0x3F80204080000000
  %981 = fadd fast float %980, -1.000000e+00
  %982 = and i32 %882, 255
  %983 = uitofp i32 %982 to float
  %984 = fmul fast float %983, 0x3F80204080000000
  %985 = fadd fast float %984, -1.000000e+00
  %986 = lshr i32 %882, 8
  %987 = and i32 %986, 255
  %988 = uitofp i32 %987 to float
  %989 = fmul fast float %988, 0x3F80204080000000
  %990 = fadd fast float %989, -1.000000e+00
  %991 = lshr i32 %882, 16
  %992 = and i32 %991, 255
  %993 = uitofp i32 %992 to float
  %994 = fmul fast float %993, 0x3F80204080000000
  %995 = fadd fast float %994, -1.000000e+00
  %996 = lshr i32 %882, 24
  %997 = uitofp i32 %996 to float
  %998 = fmul fast float %997, 0x3F80204080000000
  %999 = fadd fast float %998, -1.000000e+00
  %1000 = fmul fast float %885, %842
  %1001 = fadd fast float %1000, %861
  %1002 = fmul fast float %842, 0x3FFBB67AE0000000
  %1003 = fmul fast float %1002, %885
  %1004 = fmul fast float %1003, %895
  %1005 = fadd fast float %1004, %860
  %1006 = fmul fast float %1003, %900
  %1007 = fadd fast float %1006, %859
  %1008 = fmul fast float %1003, %905
  %1009 = fadd fast float %1008, %858
  %1010 = fmul fast float %842, 0x3FFEFBDEC0000000
  %1011 = fmul fast float %1010, %885
  %1012 = fmul fast float %1011, %909
  %1013 = fadd fast float %1012, %857
  %1014 = fmul fast float %1011, %913
  %1015 = fadd fast float %1014, %856
  %1016 = fmul fast float %842, 0x4001E377A0000000
  %1017 = fmul fast float %1016, %885
  %1018 = fmul fast float %1017, %918
  %1019 = fadd fast float %1018, %855
  %1020 = fmul fast float %1011, %923
  %1021 = fadd fast float %1020, %854
  %1022 = fmul fast float %1011, %927
  %1023 = fadd fast float %1022, %853
  %1024 = fmul fast float %888, %842
  %1025 = fadd fast float %1024, %870
  %1026 = fmul fast float %1002, %888
  %1027 = fmul fast float %1026, %931
  %1028 = fadd fast float %1027, %869
  %1029 = fmul fast float %1026, %936
  %1030 = fadd fast float %1029, %868
  %1031 = fmul fast float %1026, %941
  %1032 = fadd fast float %1031, %867
  %1033 = fmul fast float %1010, %888
  %1034 = fmul fast float %1033, %945
  %1035 = fadd fast float %1034, %866
  %1036 = fmul fast float %1033, %949
  %1037 = fadd fast float %1036, %865
  %1038 = fmul fast float %1016, %888
  %1039 = fmul fast float %1038, %954
  %1040 = fadd fast float %1039, %864
  %1041 = fmul fast float %1033, %959
  %1042 = fadd fast float %1041, %863
  %1043 = fmul fast float %1033, %963
  %1044 = fadd fast float %1043, %862
  %1045 = fmul fast float %891, %842
  %1046 = fadd fast float %1045, %852
  %1047 = fmul fast float %1002, %891
  %1048 = fmul fast float %1047, %967
  %1049 = fadd fast float %1048, %851
  %1050 = fmul fast float %1047, %972
  %1051 = fadd fast float %1050, %850
  %1052 = fmul fast float %1047, %977
  %1053 = fadd fast float %1052, %849
  %1054 = fmul fast float %1010, %891
  %1055 = fmul fast float %1054, %981
  %1056 = fadd fast float %1055, %848
  %1057 = fmul fast float %1054, %985
  %1058 = fadd fast float %1057, %847
  %1059 = fmul fast float %1016, %891
  %1060 = fmul fast float %1059, %990
  %1061 = fadd fast float %1060, %846
  %1062 = fmul fast float %1054, %995
  %1063 = fadd fast float %1062, %845
  %1064 = fmul fast float %1054, %999
  %1065 = fadd fast float %1064, %844
  %1066 = add nuw nsw i32 %871, 1
  %1067 = icmp eq i32 %1066, 8
  br i1 %1067, label %1073, label %1068

; <label>:1068                                    ; preds = %841
  %1069 = getelementptr inbounds [8 x i32], [8 x i32]* %27, i32 0, i32 %1066
  %1070 = load i32, i32* %1069, align 4, !tbaa !37, !noalias !51
  %1071 = getelementptr inbounds [8 x float], [8 x float]* %28, i32 0, i32 %1066
  %1072 = load float, float* %1071, align 4, !tbaa !57, !noalias !51
  br label %841

; <label>:1073                                    ; preds = %841
  br label %1074

; <label>:1074                                    ; preds = %1073, %811, %378, %359, %325
  %1075 = phi float [ 0.000000e+00, %325 ], [ 0.000000e+00, %359 ], [ 0.000000e+00, %378 ], [ 0.000000e+00, %811 ], [ %1065, %1073 ]
  %1076 = phi float [ 0.000000e+00, %325 ], [ 0.000000e+00, %359 ], [ 0.000000e+00, %378 ], [ 0.000000e+00, %811 ], [ %1063, %1073 ]
  %1077 = phi float [ 0.000000e+00, %325 ], [ 0.000000e+00, %359 ], [ 0.000000e+00, %378 ], [ 0.000000e+00, %811 ], [ %1061, %1073 ]
  %1078 = phi float [ 0.000000e+00, %325 ], [ 0.000000e+00, %359 ], [ 0.000000e+00, %378 ], [ 0.000000e+00, %811 ], [ %1058, %1073 ]
  %1079 = phi float [ 0.000000e+00, %325 ], [ 0.000000e+00, %359 ], [ 0.000000e+00, %378 ], [ 0.000000e+00, %811 ], [ %1056, %1073 ]
  %1080 = phi float [ 0.000000e+00, %325 ], [ 0.000000e+00, %359 ], [ 0.000000e+00, %378 ], [ 0.000000e+00, %811 ], [ %1053, %1073 ]
  %1081 = phi float [ 0.000000e+00, %325 ], [ 0.000000e+00, %359 ], [ 0.000000e+00, %378 ], [ 0.000000e+00, %811 ], [ %1051, %1073 ]
  %1082 = phi float [ 0.000000e+00, %325 ], [ 0.000000e+00, %359 ], [ 0.000000e+00, %378 ], [ 0.000000e+00, %811 ], [ %1049, %1073 ]
  %1083 = phi float [ 0.000000e+00, %325 ], [ 0.000000e+00, %359 ], [ 0.000000e+00, %378 ], [ 0.000000e+00, %811 ], [ %1046, %1073 ]
  %1084 = phi float [ 0.000000e+00, %325 ], [ 0.000000e+00, %359 ], [ 0.000000e+00, %378 ], [ 0.000000e+00, %811 ], [ %1023, %1073 ]
  %1085 = phi float [ 0.000000e+00, %325 ], [ 0.000000e+00, %359 ], [ 0.000000e+00, %378 ], [ 0.000000e+00, %811 ], [ %1021, %1073 ]
  %1086 = phi float [ 0.000000e+00, %325 ], [ 0.000000e+00, %359 ], [ 0.000000e+00, %378 ], [ 0.000000e+00, %811 ], [ %1019, %1073 ]
  %1087 = phi float [ 0.000000e+00, %325 ], [ 0.000000e+00, %359 ], [ 0.000000e+00, %378 ], [ 0.000000e+00, %811 ], [ %1015, %1073 ]
  %1088 = phi float [ 0.000000e+00, %325 ], [ 0.000000e+00, %359 ], [ 0.000000e+00, %378 ], [ 0.000000e+00, %811 ], [ %1013, %1073 ]
  %1089 = phi float [ 0.000000e+00, %325 ], [ 0.000000e+00, %359 ], [ 0.000000e+00, %378 ], [ 0.000000e+00, %811 ], [ %1009, %1073 ]
  %1090 = phi float [ 0.000000e+00, %325 ], [ 0.000000e+00, %359 ], [ 0.000000e+00, %378 ], [ 0.000000e+00, %811 ], [ %1007, %1073 ]
  %1091 = phi float [ 0.000000e+00, %325 ], [ 0.000000e+00, %359 ], [ 0.000000e+00, %378 ], [ 0.000000e+00, %811 ], [ %1005, %1073 ]
  %1092 = phi float [ 0.000000e+00, %325 ], [ 0.000000e+00, %359 ], [ 0.000000e+00, %378 ], [ 0.000000e+00, %811 ], [ %1001, %1073 ]
  %1093 = phi float [ 0.000000e+00, %325 ], [ 0.000000e+00, %359 ], [ 0.000000e+00, %378 ], [ 0.000000e+00, %811 ], [ %1044, %1073 ]
  %1094 = phi float [ 0.000000e+00, %325 ], [ 0.000000e+00, %359 ], [ 0.000000e+00, %378 ], [ 0.000000e+00, %811 ], [ %1042, %1073 ]
  %1095 = phi float [ 0.000000e+00, %325 ], [ 0.000000e+00, %359 ], [ 0.000000e+00, %378 ], [ 0.000000e+00, %811 ], [ %1040, %1073 ]
  %1096 = phi float [ 0.000000e+00, %325 ], [ 0.000000e+00, %359 ], [ 0.000000e+00, %378 ], [ 0.000000e+00, %811 ], [ %1037, %1073 ]
  %1097 = phi float [ 0.000000e+00, %325 ], [ 0.000000e+00, %359 ], [ 0.000000e+00, %378 ], [ 0.000000e+00, %811 ], [ %1035, %1073 ]
  %1098 = phi float [ 0.000000e+00, %325 ], [ 0.000000e+00, %359 ], [ 0.000000e+00, %378 ], [ 0.000000e+00, %811 ], [ %1032, %1073 ]
  %1099 = phi float [ 0.000000e+00, %325 ], [ 0.000000e+00, %359 ], [ 0.000000e+00, %378 ], [ 0.000000e+00, %811 ], [ %1030, %1073 ]
  %1100 = phi float [ 0.000000e+00, %325 ], [ 0.000000e+00, %359 ], [ 0.000000e+00, %378 ], [ 0.000000e+00, %811 ], [ %1028, %1073 ]
  %1101 = phi float [ 0.000000e+00, %325 ], [ 0.000000e+00, %359 ], [ 0.000000e+00, %378 ], [ 0.000000e+00, %811 ], [ %1025, %1073 ]
  %1102 = phi i1 [ false, %325 ], [ false, %359 ], [ false, %378 ], [ false, %811 ], [ true, %1073 ]
  store float %1092, float* %115, align 4
  store float %1091, float* %116, align 4
  store float %1090, float* %117, align 4
  store float %1089, float* %118, align 4
  store float %1088, float* %119, align 4
  store float %1087, float* %120, align 4
  store float %1086, float* %121, align 4
  store float %1085, float* %122, align 4
  store float %1084, float* %123, align 4
  store float %1101, float* %124, align 4
  store float %1100, float* %125, align 4
  store float %1099, float* %126, align 4
  store float %1098, float* %127, align 4
  store float %1097, float* %128, align 4
  store float %1096, float* %129, align 4
  store float %1095, float* %130, align 4
  store float %1094, float* %131, align 4
  store float %1093, float* %132, align 4
  store float %1083, float* %133, align 4
  store float %1082, float* %134, align 4
  store float %1081, float* %135, align 4
  store float %1080, float* %136, align 4
  store float %1079, float* %137, align 4
  store float %1078, float* %138, align 4
  store float %1077, float* %139, align 4
  store float %1076, float* %140, align 4
  store float %1075, float* %141, align 4
  br i1 %1102, label %1176, label %1103, !dx.controlflow.hints !60

; <label>:1103                                    ; preds = %1074
  %1104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %1105 = extractvalue %dx.types.ResRet.i32 %1104, 0
  %1106 = extractvalue %dx.types.ResRet.i32 %1104, 1
  %1107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %1108 = extractvalue %dx.types.ResRet.i32 %1107, 0
  %1109 = extractvalue %dx.types.ResRet.i32 %1107, 1
  %1110 = extractvalue %dx.types.ResRet.i32 %1107, 2
  %1111 = extractvalue %dx.types.ResRet.i32 %1107, 3
  %1112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %1113 = extractvalue %dx.types.ResRet.i32 %1112, 0
  %1114 = extractvalue %dx.types.ResRet.i32 %1112, 1
  %1115 = extractvalue %dx.types.ResRet.i32 %1112, 2
  %1116 = extractvalue %dx.types.ResRet.i32 %1112, 3
  %1117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %1118 = extractvalue %dx.types.ResRet.i32 %1117, 0
  %1119 = extractvalue %dx.types.ResRet.i32 %1117, 1
  %1120 = extractvalue %dx.types.ResRet.i32 %1117, 2
  %1121 = extractvalue %dx.types.ResRet.i32 %1117, 3
  %1122 = and i32 %1118, 65535
  %1123 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1122)  ; LegacyF16ToF32(value)
  %1124 = lshr i32 %1118, 16
  %1125 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1124)  ; LegacyF16ToF32(value)
  store float %1123, float* %115, align 4, !tbaa !57, !alias.scope !61, !noalias !66
  store float %1125, float* %116, align 4, !tbaa !57, !alias.scope !72, !noalias !73
  %1126 = and i32 %1119, 65535
  %1127 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1126)  ; LegacyF16ToF32(value)
  %1128 = lshr i32 %1119, 16
  %1129 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1128)  ; LegacyF16ToF32(value)
  store float %1127, float* %117, align 4, !tbaa !57, !alias.scope !74, !noalias !77
  store float %1129, float* %118, align 4, !tbaa !57, !alias.scope !79, !noalias !80
  %1130 = and i32 %1120, 65535
  %1131 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1130)  ; LegacyF16ToF32(value)
  %1132 = lshr i32 %1120, 16
  %1133 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1132)  ; LegacyF16ToF32(value)
  store float %1131, float* %119, align 4, !tbaa !57, !alias.scope !81, !noalias !84
  store float %1133, float* %120, align 4, !tbaa !57, !alias.scope !86, !noalias !87
  %1134 = and i32 %1121, 65535
  %1135 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1134)  ; LegacyF16ToF32(value)
  %1136 = lshr i32 %1121, 16
  %1137 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1136)  ; LegacyF16ToF32(value)
  store float %1135, float* %121, align 4, !tbaa !57, !alias.scope !88, !noalias !91
  store float %1137, float* %122, align 4, !tbaa !57, !alias.scope !93, !noalias !94
  %1138 = and i32 %1113, 65535
  %1139 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1138)  ; LegacyF16ToF32(value)
  %1140 = lshr i32 %1113, 16
  %1141 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1140)  ; LegacyF16ToF32(value)
  store float %1139, float* %123, align 4, !tbaa !57, !alias.scope !95, !noalias !98
  store float %1141, float* %124, align 4, !tbaa !57, !alias.scope !100, !noalias !101
  %1142 = and i32 %1114, 65535
  %1143 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1142)  ; LegacyF16ToF32(value)
  %1144 = lshr i32 %1114, 16
  %1145 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1144)  ; LegacyF16ToF32(value)
  store float %1143, float* %125, align 4, !tbaa !57, !alias.scope !102, !noalias !105
  store float %1145, float* %126, align 4, !tbaa !57, !alias.scope !107, !noalias !108
  %1146 = and i32 %1115, 65535
  %1147 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1146)  ; LegacyF16ToF32(value)
  %1148 = lshr i32 %1115, 16
  %1149 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1148)  ; LegacyF16ToF32(value)
  store float %1147, float* %127, align 4, !tbaa !57, !alias.scope !109, !noalias !112
  store float %1149, float* %128, align 4, !tbaa !57, !alias.scope !114, !noalias !115
  %1150 = and i32 %1116, 65535
  %1151 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1150)  ; LegacyF16ToF32(value)
  %1152 = lshr i32 %1116, 16
  %1153 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1152)  ; LegacyF16ToF32(value)
  store float %1151, float* %129, align 4, !tbaa !57, !alias.scope !116, !noalias !119
  store float %1153, float* %130, align 4, !tbaa !57, !alias.scope !121, !noalias !122
  %1154 = and i32 %1108, 65535
  %1155 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1154)  ; LegacyF16ToF32(value)
  %1156 = lshr i32 %1108, 16
  %1157 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1156)  ; LegacyF16ToF32(value)
  store float %1155, float* %131, align 4, !tbaa !57, !alias.scope !123, !noalias !126
  store float %1157, float* %132, align 4, !tbaa !57, !alias.scope !128, !noalias !129
  %1158 = and i32 %1109, 65535
  %1159 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1158)  ; LegacyF16ToF32(value)
  %1160 = lshr i32 %1109, 16
  %1161 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1160)  ; LegacyF16ToF32(value)
  store float %1159, float* %133, align 4, !tbaa !57, !alias.scope !130, !noalias !133
  store float %1161, float* %134, align 4, !tbaa !57, !alias.scope !135, !noalias !136
  %1162 = and i32 %1110, 65535
  %1163 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1162)  ; LegacyF16ToF32(value)
  %1164 = lshr i32 %1110, 16
  %1165 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1164)  ; LegacyF16ToF32(value)
  store float %1163, float* %135, align 4, !tbaa !57, !alias.scope !137, !noalias !140
  store float %1165, float* %136, align 4, !tbaa !57, !alias.scope !142, !noalias !143
  %1166 = and i32 %1111, 65535
  %1167 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1166)  ; LegacyF16ToF32(value)
  %1168 = lshr i32 %1111, 16
  %1169 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1168)  ; LegacyF16ToF32(value)
  store float %1167, float* %137, align 4, !tbaa !57, !alias.scope !144, !noalias !147
  store float %1169, float* %138, align 4, !tbaa !57, !alias.scope !149, !noalias !150
  %1170 = and i32 %1105, 65535
  %1171 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1170)  ; LegacyF16ToF32(value)
  %1172 = lshr i32 %1105, 16
  %1173 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1172)  ; LegacyF16ToF32(value)
  store float %1171, float* %139, align 4, !tbaa !57, !alias.scope !151, !noalias !154
  store float %1173, float* %140, align 4, !tbaa !57, !alias.scope !156, !noalias !157
  %1174 = and i32 %1106, 65535
  %1175 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1174)  ; LegacyF16ToF32(value)
  store float %1175, float* %141, align 4, !tbaa !57, !alias.scope !158, !noalias !161
  br label %1176

; <label>:1176                                    ; preds = %1103, %1074
  %1177 = phi float [ %1175, %1103 ], [ %1075, %1074 ]
  %1178 = phi float [ %1173, %1103 ], [ %1076, %1074 ]
  %1179 = phi float [ %1171, %1103 ], [ %1077, %1074 ]
  %1180 = phi float [ %1169, %1103 ], [ %1078, %1074 ]
  %1181 = phi float [ %1167, %1103 ], [ %1079, %1074 ]
  %1182 = phi float [ %1165, %1103 ], [ %1080, %1074 ]
  %1183 = phi float [ %1163, %1103 ], [ %1081, %1074 ]
  %1184 = phi float [ %1161, %1103 ], [ %1082, %1074 ]
  %1185 = phi float [ %1159, %1103 ], [ %1083, %1074 ]
  %1186 = phi float [ %1157, %1103 ], [ %1093, %1074 ]
  %1187 = phi float [ %1155, %1103 ], [ %1094, %1074 ]
  %1188 = phi float [ %1153, %1103 ], [ %1095, %1074 ]
  %1189 = phi float [ %1151, %1103 ], [ %1096, %1074 ]
  %1190 = phi float [ %1149, %1103 ], [ %1097, %1074 ]
  %1191 = phi float [ %1147, %1103 ], [ %1098, %1074 ]
  %1192 = phi float [ %1145, %1103 ], [ %1099, %1074 ]
  %1193 = phi float [ %1143, %1103 ], [ %1100, %1074 ]
  %1194 = phi float [ %1141, %1103 ], [ %1101, %1074 ]
  %1195 = phi float [ %1139, %1103 ], [ %1084, %1074 ]
  %1196 = phi float [ %1137, %1103 ], [ %1085, %1074 ]
  %1197 = phi float [ %1135, %1103 ], [ %1086, %1074 ]
  %1198 = phi float [ %1133, %1103 ], [ %1087, %1074 ]
  %1199 = phi float [ %1131, %1103 ], [ %1088, %1074 ]
  %1200 = phi float [ %1129, %1103 ], [ %1089, %1074 ]
  %1201 = phi float [ %1127, %1103 ], [ %1090, %1074 ]
  %1202 = phi float [ %1125, %1103 ], [ %1091, %1074 ]
  %1203 = phi float [ %1123, %1103 ], [ %1092, %1074 ]
  %1204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1205 = extractvalue %dx.types.CBufRet.f32 %1204, 3
  %1206 = fcmp fast ogt float %1205, 0.000000e+00
  %1207 = and i1 %154, %1206
  br i1 %1207, label %1208, label %1382, !dx.controlflow.hints !163

; <label>:1208                                    ; preds = %1176
  %1209 = add i32 %142, %70
  %1210 = call i32 @dx.op.binary.i32(i32 40, i32 %1209, i32 49151)  ; UMin(a,b)
  %1211 = mul i32 %1210, 12
  %1212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1211, i32 0)  ; BufferLoad(srv,index,wot)
  %1213 = extractvalue %dx.types.ResRet.i32 %1212, 0
  %1214 = extractvalue %dx.types.ResRet.i32 %1212, 1
  %1215 = and i32 %1213, 65535
  %1216 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1215)  ; LegacyF16ToF32(value)
  %1217 = lshr i32 %1213, 16
  %1218 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1217)  ; LegacyF16ToF32(value)
  %1219 = and i32 %1214, 65535
  %1220 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1219)  ; LegacyF16ToF32(value)
  %1221 = or i32 %1211, 1
  %1222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1221, i32 0)  ; BufferLoad(srv,index,wot)
  %1223 = extractvalue %dx.types.ResRet.i32 %1222, 0
  %1224 = extractvalue %dx.types.ResRet.i32 %1222, 1
  %1225 = and i32 %1223, 65535
  %1226 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1225)  ; LegacyF16ToF32(value)
  %1227 = lshr i32 %1223, 16
  %1228 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1227)  ; LegacyF16ToF32(value)
  %1229 = and i32 %1224, 65535
  %1230 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1229)  ; LegacyF16ToF32(value)
  %1231 = or i32 %1211, 2
  %1232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1231, i32 0)  ; BufferLoad(srv,index,wot)
  %1233 = extractvalue %dx.types.ResRet.i32 %1232, 0
  %1234 = extractvalue %dx.types.ResRet.i32 %1232, 1
  %1235 = and i32 %1233, 65535
  %1236 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1235)  ; LegacyF16ToF32(value)
  %1237 = lshr i32 %1233, 16
  %1238 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1237)  ; LegacyF16ToF32(value)
  %1239 = and i32 %1234, 65535
  %1240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1239)  ; LegacyF16ToF32(value)
  %1241 = or i32 %1211, 3
  %1242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1241, i32 0)  ; BufferLoad(srv,index,wot)
  %1243 = extractvalue %dx.types.ResRet.i32 %1242, 0
  %1244 = extractvalue %dx.types.ResRet.i32 %1242, 1
  %1245 = and i32 %1243, 65535
  %1246 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1245)  ; LegacyF16ToF32(value)
  %1247 = lshr i32 %1243, 16
  %1248 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1247)  ; LegacyF16ToF32(value)
  %1249 = and i32 %1244, 65535
  %1250 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1249)  ; LegacyF16ToF32(value)
  %1251 = add nsw i32 %1211, 4
  %1252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1251, i32 0)  ; BufferLoad(srv,index,wot)
  %1253 = extractvalue %dx.types.ResRet.i32 %1252, 0
  %1254 = extractvalue %dx.types.ResRet.i32 %1252, 1
  %1255 = and i32 %1253, 65535
  %1256 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1255)  ; LegacyF16ToF32(value)
  %1257 = lshr i32 %1253, 16
  %1258 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1257)  ; LegacyF16ToF32(value)
  %1259 = and i32 %1254, 65535
  %1260 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1259)  ; LegacyF16ToF32(value)
  %1261 = add nsw i32 %1211, 5
  %1262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1261, i32 0)  ; BufferLoad(srv,index,wot)
  %1263 = extractvalue %dx.types.ResRet.i32 %1262, 0
  %1264 = extractvalue %dx.types.ResRet.i32 %1262, 1
  %1265 = and i32 %1263, 65535
  %1266 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1265)  ; LegacyF16ToF32(value)
  %1267 = lshr i32 %1263, 16
  %1268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1267)  ; LegacyF16ToF32(value)
  %1269 = and i32 %1264, 65535
  %1270 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1269)  ; LegacyF16ToF32(value)
  %1271 = add nsw i32 %1211, 6
  %1272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1271, i32 0)  ; BufferLoad(srv,index,wot)
  %1273 = extractvalue %dx.types.ResRet.i32 %1272, 0
  %1274 = extractvalue %dx.types.ResRet.i32 %1272, 1
  %1275 = and i32 %1273, 65535
  %1276 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1275)  ; LegacyF16ToF32(value)
  %1277 = lshr i32 %1273, 16
  %1278 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1277)  ; LegacyF16ToF32(value)
  %1279 = and i32 %1274, 65535
  %1280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1279)  ; LegacyF16ToF32(value)
  %1281 = add nsw i32 %1211, 7
  %1282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1281, i32 0)  ; BufferLoad(srv,index,wot)
  %1283 = extractvalue %dx.types.ResRet.i32 %1282, 0
  %1284 = extractvalue %dx.types.ResRet.i32 %1282, 1
  %1285 = and i32 %1283, 65535
  %1286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1285)  ; LegacyF16ToF32(value)
  %1287 = lshr i32 %1283, 16
  %1288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1287)  ; LegacyF16ToF32(value)
  %1289 = and i32 %1284, 65535
  %1290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1289)  ; LegacyF16ToF32(value)
  %1291 = add nsw i32 %1211, 8
  %1292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1291, i32 0)  ; BufferLoad(srv,index,wot)
  %1293 = extractvalue %dx.types.ResRet.i32 %1292, 0
  %1294 = extractvalue %dx.types.ResRet.i32 %1292, 1
  %1295 = and i32 %1293, 65535
  %1296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1295)  ; LegacyF16ToF32(value)
  %1297 = lshr i32 %1293, 16
  %1298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1297)  ; LegacyF16ToF32(value)
  %1299 = and i32 %1294, 65535
  %1300 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1299)  ; LegacyF16ToF32(value)
  %1301 = fsub fast float %1216, %1203
  %1302 = fmul fast float %1301, %1205
  %1303 = fadd fast float %1302, %1203
  %1304 = fsub fast float %1226, %1202
  %1305 = fmul fast float %1304, %1205
  %1306 = fadd fast float %1305, %1202
  %1307 = fsub fast float %1236, %1201
  %1308 = fmul fast float %1307, %1205
  %1309 = fadd fast float %1308, %1201
  %1310 = fsub fast float %1246, %1200
  %1311 = fmul fast float %1310, %1205
  %1312 = fadd fast float %1311, %1200
  %1313 = fsub fast float %1256, %1199
  %1314 = fmul fast float %1313, %1205
  %1315 = fadd fast float %1314, %1199
  %1316 = fsub fast float %1266, %1198
  %1317 = fmul fast float %1316, %1205
  %1318 = fadd fast float %1317, %1198
  %1319 = fsub fast float %1276, %1197
  %1320 = fmul fast float %1319, %1205
  %1321 = fadd fast float %1320, %1197
  %1322 = fsub fast float %1286, %1196
  %1323 = fmul fast float %1322, %1205
  %1324 = fadd fast float %1323, %1196
  %1325 = fsub fast float %1296, %1195
  %1326 = fmul fast float %1325, %1205
  %1327 = fadd fast float %1326, %1195
  store float %1303, float* %115, align 4
  store float %1306, float* %116, align 4
  store float %1309, float* %117, align 4
  store float %1312, float* %118, align 4
  store float %1315, float* %119, align 4
  store float %1318, float* %120, align 4
  store float %1321, float* %121, align 4
  store float %1324, float* %122, align 4
  store float %1327, float* %123, align 4
  %1328 = fsub fast float %1218, %1194
  %1329 = fmul fast float %1328, %1205
  %1330 = fadd fast float %1329, %1194
  %1331 = fsub fast float %1228, %1193
  %1332 = fmul fast float %1331, %1205
  %1333 = fadd fast float %1332, %1193
  %1334 = fsub fast float %1238, %1192
  %1335 = fmul fast float %1334, %1205
  %1336 = fadd fast float %1335, %1192
  %1337 = fsub fast float %1248, %1191
  %1338 = fmul fast float %1337, %1205
  %1339 = fadd fast float %1338, %1191
  %1340 = fsub fast float %1258, %1190
  %1341 = fmul fast float %1340, %1205
  %1342 = fadd fast float %1341, %1190
  %1343 = fsub fast float %1268, %1189
  %1344 = fmul fast float %1343, %1205
  %1345 = fadd fast float %1344, %1189
  %1346 = fsub fast float %1278, %1188
  %1347 = fmul fast float %1346, %1205
  %1348 = fadd fast float %1347, %1188
  %1349 = fsub fast float %1288, %1187
  %1350 = fmul fast float %1349, %1205
  %1351 = fadd fast float %1350, %1187
  %1352 = fsub fast float %1298, %1186
  %1353 = fmul fast float %1352, %1205
  %1354 = fadd fast float %1353, %1186
  store float %1330, float* %124, align 4
  store float %1333, float* %125, align 4
  store float %1336, float* %126, align 4
  store float %1339, float* %127, align 4
  store float %1342, float* %128, align 4
  store float %1345, float* %129, align 4
  store float %1348, float* %130, align 4
  store float %1351, float* %131, align 4
  store float %1354, float* %132, align 4
  %1355 = fsub fast float %1220, %1185
  %1356 = fmul fast float %1355, %1205
  %1357 = fadd fast float %1356, %1185
  %1358 = fsub fast float %1230, %1184
  %1359 = fmul fast float %1358, %1205
  %1360 = fadd fast float %1359, %1184
  %1361 = fsub fast float %1240, %1183
  %1362 = fmul fast float %1361, %1205
  %1363 = fadd fast float %1362, %1183
  %1364 = fsub fast float %1250, %1182
  %1365 = fmul fast float %1364, %1205
  %1366 = fadd fast float %1365, %1182
  %1367 = fsub fast float %1260, %1181
  %1368 = fmul fast float %1367, %1205
  %1369 = fadd fast float %1368, %1181
  %1370 = fsub fast float %1270, %1180
  %1371 = fmul fast float %1370, %1205
  %1372 = fadd fast float %1371, %1180
  %1373 = fsub fast float %1280, %1179
  %1374 = fmul fast float %1373, %1205
  %1375 = fadd fast float %1374, %1179
  %1376 = fsub fast float %1290, %1178
  %1377 = fmul fast float %1376, %1205
  %1378 = fadd fast float %1377, %1178
  %1379 = fsub fast float %1300, %1177
  %1380 = fmul fast float %1379, %1205
  %1381 = fadd fast float %1380, %1177
  store float %1357, float* %133, align 4
  store float %1360, float* %134, align 4
  store float %1363, float* %135, align 4
  store float %1366, float* %136, align 4
  store float %1369, float* %137, align 4
  store float %1372, float* %138, align 4
  store float %1375, float* %139, align 4
  store float %1378, float* %140, align 4
  store float %1381, float* %141, align 4
  br label %1382

; <label>:1382                                    ; preds = %1208, %1176
  %1383 = phi float [ %1369, %1208 ], [ %1181, %1176 ]
  %1384 = phi float [ %1342, %1208 ], [ %1190, %1176 ]
  %1385 = phi float [ %1315, %1208 ], [ %1199, %1176 ]
  %1386 = phi float [ %1381, %1208 ], [ %1177, %1176 ]
  %1387 = phi float [ %1354, %1208 ], [ %1186, %1176 ]
  %1388 = phi float [ %1327, %1208 ], [ %1195, %1176 ]
  %1389 = phi float [ %1372, %1208 ], [ %1180, %1176 ]
  %1390 = phi float [ %1345, %1208 ], [ %1189, %1176 ]
  %1391 = phi float [ %1318, %1208 ], [ %1198, %1176 ]
  %1392 = phi float [ %1378, %1208 ], [ %1178, %1176 ]
  %1393 = phi float [ %1351, %1208 ], [ %1187, %1176 ]
  %1394 = phi float [ %1324, %1208 ], [ %1196, %1176 ]
  %1395 = phi float [ %1366, %1208 ], [ %1182, %1176 ]
  %1396 = phi float [ %1339, %1208 ], [ %1191, %1176 ]
  %1397 = phi float [ %1312, %1208 ], [ %1200, %1176 ]
  %1398 = phi float [ %1360, %1208 ], [ %1184, %1176 ]
  %1399 = phi float [ %1333, %1208 ], [ %1193, %1176 ]
  %1400 = phi float [ %1306, %1208 ], [ %1202, %1176 ]
  %1401 = phi float [ %1375, %1208 ], [ %1179, %1176 ]
  %1402 = phi float [ %1348, %1208 ], [ %1188, %1176 ]
  %1403 = phi float [ %1321, %1208 ], [ %1197, %1176 ]
  %1404 = phi float [ %1363, %1208 ], [ %1183, %1176 ]
  %1405 = phi float [ %1336, %1208 ], [ %1192, %1176 ]
  %1406 = phi float [ %1309, %1208 ], [ %1201, %1176 ]
  %1407 = phi float [ %1357, %1208 ], [ %1185, %1176 ]
  %1408 = phi float [ %1330, %1208 ], [ %1194, %1176 ]
  %1409 = phi float [ %1303, %1208 ], [ %1203, %1176 ]
  %1410 = icmp eq i32 %80, 65535
  br i1 %1410, label %1439, label %1411, !dx.controlflow.hints !164

; <label>:1411                                    ; preds = %1382
  %1412 = add i32 %80, %70
  %1413 = call i32 @dx.op.binary.i32(i32 40, i32 %1412, i32 49151)  ; UMin(a,b)
  %1414 = mul i32 %1413, 12
  br label %1415

; <label>:1415                                    ; preds = %1431, %1411
  %1416 = phi float [ %1407, %1411 ], [ %1437, %1431 ]
  %1417 = phi float [ %1408, %1411 ], [ %1435, %1431 ]
  %1418 = phi float [ %1409, %1411 ], [ %1433, %1431 ]
  %1419 = phi i32 [ 0, %1411 ], [ %1429, %1431 ]
  %1420 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1418)  ; LegacyF32ToF16(value)
  %1421 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1417)  ; LegacyF32ToF16(value)
  %1422 = shl i32 %1421, 16
  %1423 = or i32 %1422, %1420
  %1424 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1416)  ; LegacyF32ToF16(value)
  %1425 = call i32 @dx.op.legacyF32ToF16(i32 130, float 1.000000e+00)  ; LegacyF32ToF16(value)
  %1426 = shl i32 %1425, 16
  %1427 = or i32 %1426, %1424
  %1428 = add nsw i32 %1419, %1414
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1428, i32 0, i32 %1423, i32 %1427, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1429 = add nuw nsw i32 %1419, 1
  %1430 = icmp eq i32 %1429, 9
  br i1 %1430, label %1438, label %1431

; <label>:1431                                    ; preds = %1415
  %1432 = getelementptr inbounds [9 x float], [9 x float]* %25, i32 0, i32 %1429
  %1433 = load float, float* %1432, align 4, !tbaa !57
  %1434 = getelementptr inbounds [9 x float], [9 x float]* %24, i32 0, i32 %1429
  %1435 = load float, float* %1434, align 4, !tbaa !57
  %1436 = getelementptr inbounds [9 x float], [9 x float]* %23, i32 0, i32 %1429
  %1437 = load float, float* %1436, align 4, !tbaa !57
  br label %1415

; <label>:1438                                    ; preds = %1415
  br label %1439

; <label>:1439                                    ; preds = %1438, %1382
  %1440 = fmul fast float %96, 6.400000e+01
  %1441 = fmul fast float %97, 6.400000e+01
  %1442 = fmul fast float %98, 1.600000e+01
  %1443 = fptosi float %1440 to i32
  %1444 = fptosi float %1441 to i32
  %1445 = fptosi float %1442 to i32
  %1446 = add i32 %111, %1443
  %1447 = add i32 %110, %1444
  %1448 = add i32 %1445, %108
  %1449 = fdiv fast float 1.000000e+00, %1409
  %1450 = fdiv fast float 1.000000e+00, %1408
  %1451 = fdiv fast float 1.000000e+00, %1407
  %1452 = fmul fast float %1449, 0x3FD279A740000000
  %1453 = fmul fast float %1452, %1406
  %1454 = fmul fast float %1450, 0x3FD279A740000000
  %1455 = fmul fast float %1454, %1405
  %1456 = fmul fast float %1451, 0x3FD279A740000000
  %1457 = fmul fast float %1456, %1404
  %1458 = fmul fast float %1449, 0x3FCC9F25C0000000
  %1459 = fmul fast float %1458, %1403
  %1460 = fadd fast float %1453, 5.000000e-01
  %1461 = fadd fast float %1455, 5.000000e-01
  %1462 = fadd fast float %1457, 5.000000e-01
  %1463 = fadd fast float %1459, 5.000000e-01
  %1464 = fmul fast float %1450, 0x3FCC9F25C0000000
  %1465 = fmul fast float %1464, %1402
  %1466 = fmul fast float %1451, 0x3FCC9F25C0000000
  %1467 = fmul fast float %1466, %1401
  %1468 = fmul fast float %1452, %1400
  %1469 = fmul fast float %1454, %1399
  %1470 = fadd fast float %1465, 5.000000e-01
  %1471 = fadd fast float %1467, 5.000000e-01
  %1472 = fadd fast float %1468, 5.000000e-01
  %1473 = fadd fast float %1469, 5.000000e-01
  %1474 = fmul fast float %1456, %1398
  %1475 = fmul fast float %1452, %1397
  %1476 = fmul fast float %1454, %1396
  %1477 = fmul fast float %1456, %1395
  %1478 = fadd fast float %1474, 5.000000e-01
  %1479 = fadd fast float %1475, 5.000000e-01
  %1480 = fadd fast float %1476, 5.000000e-01
  %1481 = fadd fast float %1477, 5.000000e-01
  %1482 = fmul fast float %1449, 0x3FD08654A0000000
  %1483 = fmul fast float %1482, %1394
  %1484 = fmul fast float %1450, 0x3FD08654A0000000
  %1485 = fmul fast float %1484, %1393
  %1486 = fmul fast float %1451, 0x3FD08654A0000000
  %1487 = fmul fast float %1486, %1392
  %1488 = fmul fast float %1482, %1391
  %1489 = fadd fast float %1483, 5.000000e-01
  %1490 = fadd fast float %1485, 5.000000e-01
  %1491 = fadd fast float %1487, 5.000000e-01
  %1492 = fadd fast float %1488, 5.000000e-01
  %1493 = fmul fast float %1484, %1390
  %1494 = fmul fast float %1486, %1389
  %1495 = fmul fast float %1482, %1388
  %1496 = fmul fast float %1484, %1387
  %1497 = fadd fast float %1493, 5.000000e-01
  %1498 = fadd fast float %1494, 5.000000e-01
  %1499 = fadd fast float %1495, 5.000000e-01
  %1500 = fadd fast float %1496, 5.000000e-01
  %1501 = fmul fast float %1486, %1386
  %1502 = fmul fast float %1482, %1385
  %1503 = fmul fast float %1484, %1384
  %1504 = fmul fast float %1486, %1383
  %1505 = fadd fast float %1501, 5.000000e-01
  %1506 = fadd fast float %1502, 5.000000e-01
  %1507 = fadd fast float %1503, 5.000000e-01
  %1508 = fadd fast float %1504, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %1446, i32 %1447, i32 %1448, float %1409, float %1408, float %1407, float %1409, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %1446, i32 %1447, i32 %1448, float %1460, float %1461, float %1462, float %1463, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1509 = add i32 %1446, 64
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %1509, i32 %1447, i32 %1448, float %1470, float %1471, float %1472, float %1473, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1510 = add i32 %1447, 64
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %1446, i32 %1510, i32 %1448, float %1478, float %1479, float %1480, float %1481, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %1509, i32 %1510, i32 %1448, float %1489, float %1490, float %1491, float %1492, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1511 = add i32 %1447, 128
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %1446, i32 %1511, i32 %1448, float %1497, float %1498, float %1499, float %1500, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %1509, i32 %1511, i32 %1448, float %1505, float %1506, float %1507, float %1508, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1512

; <label>:1512                                    ; preds = %1439, %76, %69, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #1

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
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.legacyF32ToF16(i32, float) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #3

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

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
!dx.entryPoints = !{!33}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !25, !30, null}
!5 = !{!6, !8, !10, !11, !12, !13, !14, !16, !17, !18, !19, !20, !21, !22, !23}
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
!19 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 13, i32 1, i32 11, i32 0, null}
!20 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 14, i32 1, i32 11, i32 0, null}
!21 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 15, i32 1, i32 11, i32 0, null}
!22 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 17, i32 1, i32 11, i32 0, null}
!23 = !{i32 14, %"class.StructuredBuffer<vector<unsigned int, 2> >"* undef, !"", i32 0, i32 18, i32 1, i32 12, i32 0, !24}
!24 = !{i32 1, i32 8}
!25 = !{!26, !27, !29}
!26 = !{i32 0, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 4, i1 false, i1 false, i1 false, !15}
!27 = !{i32 1, %"class.RWTexture3D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 4, i1 false, i1 false, i1 false, !28}
!28 = !{i32 0, i32 14}
!29 = !{i32 2, %"class.RWStructuredBuffer<vector<unsigned int, 2> >"* undef, !"", i32 0, i32 2, i32 1, i32 12, i1 false, i1 false, i1 false, !24}
!30 = !{!31, !32}
!31 = !{i32 0, %GfxNeuralLightGridSetupConsts* undef, !"", i32 0, i32 4, i32 1, i32 80, null}
!32 = !{i32 1, %GfxSampleLightGridVolumesLightingConsts* undef, !"", i32 0, i32 0, i32 1, i32 48, null}
!33 = !{void ()* @cs_sample_neural_lightgrid, !"cs_sample_neural_lightgrid", null, !4, !34}
!34 = !{i32 0, i64 272, i32 4, !35}
!35 = !{i32 64, i32 1, i32 1}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = !{!38, !38, i64 0}
!38 = !{!"int", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !{!42, !44}
!42 = distinct !{!42, !43, !"\01?FindProbeToProcess@@YAXHHIAIAH0@Z: %volumeIndex"}
!43 = distinct !{!43, !"\01?FindProbeToProcess@@YAXHHIAIAH0@Z"}
!44 = distinct !{!44, !43, !"\01?FindProbeToProcess@@YAXHHIAIAH0@Z: %volumeProbeIndex"}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 1}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = !{!52, !54, !55, !56}
!52 = distinct !{!52, !53, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z: %probeR"}
!53 = distinct !{!53, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z"}
!54 = distinct !{!54, !53, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z: %probeG"}
!55 = distinct !{!55, !53, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z: %probeB"}
!56 = distinct !{!56, !53, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z: %probeA"}
!57 = !{!58, !58, i64 0}
!58 = !{!"float", !39, i64 0}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = !{!62, !64}
!62 = distinct !{!62, !63, !"\01?UnpackHalf2FromUInt@@YAXIAIAM0@Z: %v0"}
!63 = distinct !{!63, !"\01?UnpackHalf2FromUInt@@YAXIAIAM0@Z"}
!64 = distinct !{!64, !65, !"\01?UnpackSHProbe@@YAXV?$vector@I$03@@00V?$vector@I$02@@USH3Vec@@22AIAM3@Z: %rCoeffs"}
!65 = distinct !{!65, !"\01?UnpackSHProbe@@YAXV?$vector@I$03@@00V?$vector@I$02@@USH3Vec@@22AIAM3@Z"}
!66 = !{!67, !68, !69, !70, !71}
!67 = distinct !{!67, !63, !"\01?UnpackHalf2FromUInt@@YAXIAIAM0@Z: %v1"}
!68 = distinct !{!68, !65, !"\01?UnpackSHProbe@@YAXV?$vector@I$03@@00V?$vector@I$02@@USH3Vec@@22AIAM3@Z: %gCoeffs"}
!69 = distinct !{!69, !65, !"\01?UnpackSHProbe@@YAXV?$vector@I$03@@00V?$vector@I$02@@USH3Vec@@22AIAM3@Z: %bCoeffs"}
!70 = distinct !{!70, !65, !"\01?UnpackSHProbe@@YAXV?$vector@I$03@@00V?$vector@I$02@@USH3Vec@@22AIAM3@Z: %alpha"}
!71 = distinct !{!71, !65, !"\01?UnpackSHProbe@@YAXV?$vector@I$03@@00V?$vector@I$02@@USH3Vec@@22AIAM3@Z: %primaryVisibility"}
!72 = !{!67, !64}
!73 = !{!62, !68, !69, !70, !71}
!74 = !{!75, !64}
!75 = distinct !{!75, !76, !"\01?UnpackHalf2FromUInt@@YAXIAIAM0@Z: %v0"}
!76 = distinct !{!76, !"\01?UnpackHalf2FromUInt@@YAXIAIAM0@Z"}
!77 = !{!78, !68, !69, !70, !71}
!78 = distinct !{!78, !76, !"\01?UnpackHalf2FromUInt@@YAXIAIAM0@Z: %v1"}
!79 = !{!78, !64}
!80 = !{!75, !68, !69, !70, !71}
!81 = !{!82, !64}
!82 = distinct !{!82, !83, !"\01?UnpackHalf2FromUInt@@YAXIAIAM0@Z: %v0"}
!83 = distinct !{!83, !"\01?UnpackHalf2FromUInt@@YAXIAIAM0@Z"}
!84 = !{!85, !68, !69, !70, !71}
!85 = distinct !{!85, !83, !"\01?UnpackHalf2FromUInt@@YAXIAIAM0@Z: %v1"}
!86 = !{!85, !64}
!87 = !{!82, !68, !69, !70, !71}
!88 = !{!89, !64}
!89 = distinct !{!89, !90, !"\01?UnpackHalf2FromUInt@@YAXIAIAM0@Z: %v0"}
!90 = distinct !{!90, !"\01?UnpackHalf2FromUInt@@YAXIAIAM0@Z"}
!91 = !{!92, !68, !69, !70, !71}
!92 = distinct !{!92, !90, !"\01?UnpackHalf2FromUInt@@YAXIAIAM0@Z: %v1"}
!93 = !{!92, !64}
!94 = !{!89, !68, !69, !70, !71}
!95 = !{!96, !64}
!96 = distinct !{!96, !97, !"\01?UnpackHalf2FromUInt@@YAXIAIAM0@Z: %v0"}
!97 = distinct !{!97, !"\01?UnpackHalf2FromUInt@@YAXIAIAM0@Z"}
!98 = !{!99, !68, !69, !70, !71}
!99 = distinct !{!99, !97, !"\01?UnpackHalf2FromUInt@@YAXIAIAM0@Z: %v1"}
!100 = !{!99, !68}
!101 = !{!96, !64, !69, !70, !71}
!102 = !{!103, !68}
!103 = distinct !{!103, !104, !"\01?UnpackHalf2FromUInt@@YAXIAIAM0@Z: %v0"}
!104 = distinct !{!104, !"\01?UnpackHalf2FromUInt@@YAXIAIAM0@Z"}
!105 = !{!106, !64, !69, !70, !71}
!106 = distinct !{!106, !104, !"\01?UnpackHalf2FromUInt@@YAXIAIAM0@Z: %v1"}
!107 = !{!106, !68}
!108 = !{!103, !64, !69, !70, !71}
!109 = !{!110, !68}
!110 = distinct !{!110, !111, !"\01?UnpackHalf2FromUInt@@YAXIAIAM0@Z: %v0"}
!111 = distinct !{!111, !"\01?UnpackHalf2FromUInt@@YAXIAIAM0@Z"}
!112 = !{!113, !64, !69, !70, !71}
!113 = distinct !{!113, !111, !"\01?UnpackHalf2FromUInt@@YAXIAIAM0@Z: %v1"}
!114 = !{!113, !68}
!115 = !{!110, !64, !69, !70, !71}
!116 = !{!117, !68}
!117 = distinct !{!117, !118, !"\01?UnpackHalf2FromUInt@@YAXIAIAM0@Z: %v0"}
!118 = distinct !{!118, !"\01?UnpackHalf2FromUInt@@YAXIAIAM0@Z"}
!119 = !{!120, !64, !69, !70, !71}
!120 = distinct !{!120, !118, !"\01?UnpackHalf2FromUInt@@YAXIAIAM0@Z: %v1"}
!121 = !{!120, !68}
!122 = !{!117, !64, !69, !70, !71}
!123 = !{!124, !68}
!124 = distinct !{!124, !125, !"\01?UnpackHalf2FromUInt@@YAXIAIAM0@Z: %v0"}
!125 = distinct !{!125, !"\01?UnpackHalf2FromUInt@@YAXIAIAM0@Z"}
!126 = !{!127, !64, !69, !70, !71}
!127 = distinct !{!127, !125, !"\01?UnpackHalf2FromUInt@@YAXIAIAM0@Z: %v1"}
!128 = !{!127, !68}
!129 = !{!124, !64, !69, !70, !71}
!130 = !{!131, !69}
!131 = distinct !{!131, !132, !"\01?UnpackHalf2FromUInt@@YAXIAIAM0@Z: %v0"}
!132 = distinct !{!132, !"\01?UnpackHalf2FromUInt@@YAXIAIAM0@Z"}
!133 = !{!134, !64, !68, !70, !71}
!134 = distinct !{!134, !132, !"\01?UnpackHalf2FromUInt@@YAXIAIAM0@Z: %v1"}
!135 = !{!134, !69}
!136 = !{!131, !64, !68, !70, !71}
!137 = !{!138, !69}
!138 = distinct !{!138, !139, !"\01?UnpackHalf2FromUInt@@YAXIAIAM0@Z: %v0"}
!139 = distinct !{!139, !"\01?UnpackHalf2FromUInt@@YAXIAIAM0@Z"}
!140 = !{!141, !64, !68, !70, !71}
!141 = distinct !{!141, !139, !"\01?UnpackHalf2FromUInt@@YAXIAIAM0@Z: %v1"}
!142 = !{!141, !69}
!143 = !{!138, !64, !68, !70, !71}
!144 = !{!145, !69}
!145 = distinct !{!145, !146, !"\01?UnpackHalf2FromUInt@@YAXIAIAM0@Z: %v0"}
!146 = distinct !{!146, !"\01?UnpackHalf2FromUInt@@YAXIAIAM0@Z"}
!147 = !{!148, !64, !68, !70, !71}
!148 = distinct !{!148, !146, !"\01?UnpackHalf2FromUInt@@YAXIAIAM0@Z: %v1"}
!149 = !{!148, !69}
!150 = !{!145, !64, !68, !70, !71}
!151 = !{!152, !69}
!152 = distinct !{!152, !153, !"\01?UnpackHalf2FromUInt@@YAXIAIAM0@Z: %v0"}
!153 = distinct !{!153, !"\01?UnpackHalf2FromUInt@@YAXIAIAM0@Z"}
!154 = !{!155, !64, !68, !70, !71}
!155 = distinct !{!155, !153, !"\01?UnpackHalf2FromUInt@@YAXIAIAM0@Z: %v1"}
!156 = !{!155, !69}
!157 = !{!152, !64, !68, !70, !71}
!158 = !{!159, !69}
!159 = distinct !{!159, !160, !"\01?UnpackHalf2FromUInt@@YAXIAIAM0@Z: %v0"}
!160 = distinct !{!160, !"\01?UnpackHalf2FromUInt@@YAXIAIAM0@Z"}
!161 = !{!162, !64, !68, !70, !71}
!162 = distinct !{!162, !160, !"\01?UnpackHalf2FromUInt@@YAXIAIAM0@Z: %v1"}
!163 = distinct !{!163, !"dx.controlflow.hints", i32 2}
!164 = distinct !{!164, !"dx.controlflow.hints", i32 2}

