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
; shader hash: 40409e6ce194e818bfa2e251eb4e736d
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
;                                   texture    byte         r/o      T0             t0     1
;                                   texture    byte         r/o      T1             t1     1
;                                   texture    byte         r/o      T2             t2     1
;                                   texture    byte         r/o      T3             t3     1
;                                   texture    byte         r/o      T4             t8     1
;                                   texture    byte         r/o      T5             t4     1
;                                   texture    byte         r/o      T6             t5     1
;                                   texture    byte         r/o      T7             t6     1
;                                   texture    byte         r/o      T8             t7     1
;                                   texture    byte         r/o      T9            t13     1
;                                   texture    byte         r/o     T10            t14     1
;                                   texture    byte         r/o     T11            t15     1
;                                   texture    byte         r/o     T12            t17     1
;                                   texture     u32         buf     T13            t19     1
;                                   texture  struct         r/o     T14            t18     1
;                                       UAV     u32         buf      U0             u3     1
;                                       UAV     f32          3d      U1             u0     1
;                                       UAVunorm_f32          3d      U2             u1     1
;                                       UAV  struct         r/w      U3             u2     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%struct.ByteAddressBuffer = type { i32 }
%"class.Buffer<unsigned int>" = type { i32 }
%"class.StructuredBuffer<vector<unsigned int, 2> >" = type { <2 x i32> }
%"class.RWBuffer<unsigned int>" = type { i32 }
%"class.RWTexture3D<vector<float, 3> >" = type { <3 x float> }
%"class.RWTexture3D<vector<float, 4> >" = type { <4 x float> }
%"class.RWStructuredBuffer<vector<unsigned int, 2> >" = type { <2 x i32> }
%GfxLGBoundConsts = type { i32, i32, i32, i32 }
%GfxSampleLightGridVolumesLightingConsts = type { i32, i32, float, float, i32, i32, i32, i32, <3 x float>, i32 }
%GfxSampleLightGridVolumesLightingVoxelTreeConsts = type { i32, i32, i32, i32 }

@"\01?g_batchVolumesProbeCounts@@3PAHA" = external addrspace(3) global [64 x i32], align 4

define void @cs_sample_lightgrid_volumes_lighting() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %24 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %25 = alloca [9 x float], align 4
  %26 = alloca [9 x float], align 4
  %27 = alloca [9 x float], align 4
  %28 = alloca [4 x i32], align 4
  %29 = alloca [4 x float], align 4
  %30 = alloca [4 x i32], align 4
  %31 = alloca [4 x float], align 4
  %32 = icmp ugt i32 %23, 16383
  br i1 %32, label %1810, label %33, !dx.controlflow.hints !37

; <label>:33                                      ; preds = %0
  %34 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %35 = extractvalue %dx.types.CBufRet.i32 %34, 0
  %36 = shl nsw i32 %23, 2
  %37 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %36, i32 undef)  ; BufferLoad(srv,index,wot)
  %38 = extractvalue %dx.types.ResRet.i32 %37, 0
  %39 = lshr i32 %38, 12
  %40 = and i32 %38, 4095
  %41 = add i32 %35, -1
  %42 = add i32 %39, %24
  %43 = call i32 @dx.op.binary.i32(i32 40, i32 %42, i32 %41)  ; UMin(a,b)
  %44 = shl i32 %43, 5
  %45 = or i32 %44, 12
  %46 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %45, i32 undef)  ; BufferLoad(srv,index,wot)
  %47 = extractvalue %dx.types.ResRet.i32 %46, 0
  %48 = and i32 %47, 255
  %49 = lshr i32 %47, 8
  %50 = and i32 %49, 255
  %51 = lshr i32 %47, 16
  %52 = and i32 %51, 255
  %53 = mul nuw nsw i32 %50, %48
  %54 = mul nuw nsw i32 %53, %52
  %55 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?g_batchVolumesProbeCounts@@3PAHA", i32 0, i32 %24
  store i32 %54, i32 addrspace(3)* %55, align 4, !tbaa !38, !noalias !42
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %56 = add i32 %40, %24
  %57 = load i32, i32 addrspace(3)* getelementptr inbounds ([64 x i32], [64 x i32] addrspace(3)* @"\01?g_batchVolumesProbeCounts@@3PAHA", i32 0, i32 0), align 4, !tbaa !38, !noalias !42
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %72, label %59

; <label>:59                                      ; preds = %33
  br label %60

; <label>:60                                      ; preds = %60, %59
  %61 = phi i32 [ %68, %60 ], [ %57, %59 ]
  %62 = phi i32 [ %64, %60 ], [ %56, %59 ]
  %63 = phi i32 [ %65, %60 ], [ 0, %59 ]
  %64 = sub nsw i32 %62, %61
  %65 = add nuw nsw i32 %63, 1
  %66 = icmp slt i32 %65, 64
  %67 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?g_batchVolumesProbeCounts@@3PAHA", i32 0, i32 %65
  %68 = load i32, i32 addrspace(3)* %67, align 4, !tbaa !38, !noalias !42
  %69 = icmp sge i32 %64, %68
  %70 = and i1 %66, %69
  br i1 %70, label %60, label %71

; <label>:71                                      ; preds = %60
  br label %72

; <label>:72                                      ; preds = %71, %33
  %73 = phi i32 [ %56, %33 ], [ %64, %71 ]
  %74 = phi i32 [ 0, %33 ], [ %65, %71 ]
  %75 = add nsw i32 %74, %39
  %76 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %77 = extractvalue %dx.types.CBufRet.i32 %76, 0
  %78 = icmp slt i32 %75, %77
  br i1 %78, label %79, label %1810, !dx.controlflow.hints !46

; <label>:79                                      ; preds = %72
  %80 = shl i32 %75, 6
  %81 = or i32 %80, 48
  %82 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %81, i32 undef)  ; BufferLoad(srv,index,wot)
  %83 = extractvalue %dx.types.ResRet.i32 %82, 0
  %84 = or i32 %80, 52
  %85 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %84, i32 undef)  ; BufferLoad(srv,index,wot)
  %86 = extractvalue %dx.types.ResRet.i32 %85, 0
  %87 = or i32 %80, 56
  %88 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %87, i32 undef)  ; BufferLoad(srv,index,wot)
  %89 = extractvalue %dx.types.ResRet.i32 %88, 0
  %90 = or i32 %80, 60
  %91 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %90, i32 undef)  ; BufferLoad(srv,index,wot)
  %92 = extractvalue %dx.types.ResRet.i32 %91, 0
  %93 = shl i32 %75, 5
  %94 = or i32 %93, 12
  %95 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %94, i32 undef)  ; BufferLoad(srv,index,wot)
  %96 = extractvalue %dx.types.ResRet.i32 %95, 0
  %97 = or i32 %93, 16
  %98 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %97, i32 undef)  ; BufferLoad(srv,index,wot)
  %99 = extractvalue %dx.types.ResRet.f32 %98, 0
  %100 = extractvalue %dx.types.ResRet.f32 %98, 1
  %101 = extractvalue %dx.types.ResRet.f32 %98, 2
  %102 = or i32 %93, 28
  %103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %102, i32 undef)  ; BufferLoad(srv,index,wot)
  %104 = extractvalue %dx.types.ResRet.i32 %103, 0
  %105 = and i32 %96, 255
  %106 = lshr i32 %96, 8
  %107 = and i32 %106, 255
  %108 = lshr i32 %96, 16
  %109 = and i32 %108, 255
  %110 = mul nuw nsw i32 %107, %105
  %111 = udiv i32 %73, %110
  %112 = urem i32 %73, %110
  %113 = udiv i32 %112, %105
  %114 = urem i32 %112, %105
  %115 = and i32 %104, 1073741824
  %116 = icmp eq i32 %115, 0
  %117 = and i32 %104, -1610612736
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %1810, !dx.controlflow.hints !47

; <label>:119                                     ; preds = %79
  %120 = getelementptr inbounds [9 x float], [9 x float]* %27, i32 0, i32 0
  store float 0.000000e+00, float* %120, align 4
  %121 = getelementptr inbounds [9 x float], [9 x float]* %27, i32 0, i32 1
  store float 0.000000e+00, float* %121, align 4
  %122 = getelementptr inbounds [9 x float], [9 x float]* %27, i32 0, i32 2
  store float 0.000000e+00, float* %122, align 4
  %123 = getelementptr inbounds [9 x float], [9 x float]* %27, i32 0, i32 3
  store float 0.000000e+00, float* %123, align 4
  %124 = getelementptr inbounds [9 x float], [9 x float]* %27, i32 0, i32 4
  store float 0.000000e+00, float* %124, align 4
  %125 = getelementptr inbounds [9 x float], [9 x float]* %27, i32 0, i32 5
  store float 0.000000e+00, float* %125, align 4
  %126 = getelementptr inbounds [9 x float], [9 x float]* %27, i32 0, i32 6
  store float 0.000000e+00, float* %126, align 4
  %127 = getelementptr inbounds [9 x float], [9 x float]* %27, i32 0, i32 7
  store float 0.000000e+00, float* %127, align 4
  %128 = getelementptr inbounds [9 x float], [9 x float]* %27, i32 0, i32 8
  store float 0.000000e+00, float* %128, align 4
  %129 = getelementptr inbounds [9 x float], [9 x float]* %25, i32 0, i32 0
  store float 0.000000e+00, float* %129, align 4
  %130 = getelementptr inbounds [9 x float], [9 x float]* %25, i32 0, i32 1
  store float 0.000000e+00, float* %130, align 4
  %131 = getelementptr inbounds [9 x float], [9 x float]* %25, i32 0, i32 2
  store float 0.000000e+00, float* %131, align 4
  %132 = getelementptr inbounds [9 x float], [9 x float]* %25, i32 0, i32 3
  store float 0.000000e+00, float* %132, align 4
  %133 = getelementptr inbounds [9 x float], [9 x float]* %25, i32 0, i32 4
  store float 0.000000e+00, float* %133, align 4
  %134 = getelementptr inbounds [9 x float], [9 x float]* %25, i32 0, i32 5
  store float 0.000000e+00, float* %134, align 4
  %135 = getelementptr inbounds [9 x float], [9 x float]* %25, i32 0, i32 6
  store float 0.000000e+00, float* %135, align 4
  %136 = getelementptr inbounds [9 x float], [9 x float]* %25, i32 0, i32 7
  store float 0.000000e+00, float* %136, align 4
  %137 = getelementptr inbounds [9 x float], [9 x float]* %25, i32 0, i32 8
  store float 0.000000e+00, float* %137, align 4
  %138 = getelementptr inbounds [9 x float], [9 x float]* %26, i32 0, i32 0
  store float 0.000000e+00, float* %138, align 4
  %139 = getelementptr inbounds [9 x float], [9 x float]* %26, i32 0, i32 1
  store float 0.000000e+00, float* %139, align 4
  %140 = getelementptr inbounds [9 x float], [9 x float]* %26, i32 0, i32 2
  store float 0.000000e+00, float* %140, align 4
  %141 = getelementptr inbounds [9 x float], [9 x float]* %26, i32 0, i32 3
  store float 0.000000e+00, float* %141, align 4
  %142 = getelementptr inbounds [9 x float], [9 x float]* %26, i32 0, i32 4
  store float 0.000000e+00, float* %142, align 4
  %143 = getelementptr inbounds [9 x float], [9 x float]* %26, i32 0, i32 5
  store float 0.000000e+00, float* %143, align 4
  %144 = getelementptr inbounds [9 x float], [9 x float]* %26, i32 0, i32 6
  store float 0.000000e+00, float* %144, align 4
  %145 = getelementptr inbounds [9 x float], [9 x float]* %26, i32 0, i32 7
  store float 0.000000e+00, float* %145, align 4
  %146 = getelementptr inbounds [9 x float], [9 x float]* %26, i32 0, i32 8
  store float 0.000000e+00, float* %146, align 4
  %147 = and i32 %86, 524287
  %148 = lshr i32 %86, 19
  %149 = and i32 %148, 4095
  %150 = mul nuw nsw i32 %110, %109
  %151 = icmp eq i32 %149, %150
  %152 = icmp slt i32 %86, 0
  %153 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %154 = extractvalue %dx.types.CBufRet.i32 %153, 2
  %155 = icmp ne i32 %154, 0
  %156 = icmp ne i32 %147, 65535
  %157 = and i1 %156, %155
  %158 = and i1 %151, %157
  %159 = and i1 %152, %158
  br i1 %159, label %160, label %167, !dx.controlflow.hints !48

; <label>:160                                     ; preds = %119
  %161 = add i32 %147, %73
  %162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %161, i32 undef)  ; BufferLoad(srv,index,wot)
  %163 = extractvalue %dx.types.ResRet.i32 %162, 0
  %164 = and i32 %163, 16777215
  %165 = icmp eq i32 %164, 16777215
  %166 = select i1 %165, i32 -1, i32 %164
  br label %167

; <label>:167                                     ; preds = %160, %119
  %168 = phi i32 [ %166, %160 ], [ -1, %119 ]
  %169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %170 = extractvalue %dx.types.CBufRet.f32 %169, 2
  %171 = icmp ugt i32 %105, 1
  %172 = select i1 %171, float 0.000000e+00, float 5.000000e-01
  %173 = icmp ugt i32 %107, 1
  %174 = select i1 %173, float 0.000000e+00, float 5.000000e-01
  %175 = icmp ugt i32 %109, 1
  %176 = select i1 %175, float 0.000000e+00, float 5.000000e-01
  %177 = uitofp i32 %105 to float
  %178 = uitofp i32 %107 to float
  %179 = uitofp i32 %109 to float
  %180 = fadd fast float %177, -1.000000e+00
  %181 = fadd fast float %178, -1.000000e+00
  %182 = fadd fast float %179, -1.000000e+00
  %183 = call float @dx.op.binary.f32(i32 35, float 1.000000e+00, float %180)  ; FMax(a,b)
  %184 = call float @dx.op.binary.f32(i32 35, float 1.000000e+00, float %181)  ; FMax(a,b)
  %185 = call float @dx.op.binary.f32(i32 35, float 1.000000e+00, float %182)  ; FMax(a,b)
  %186 = fdiv fast float 1.000000e+00, %183
  %187 = fdiv fast float 1.000000e+00, %184
  %188 = fdiv fast float 1.000000e+00, %185
  %189 = uitofp i32 %114 to float
  %190 = uitofp i32 %113 to float
  %191 = uitofp i32 %111 to float
  %192 = fadd fast float %189, %172
  %193 = fadd fast float %190, %174
  %194 = fadd fast float %176, %191
  %195 = fmul fast float %186, %192
  %196 = fmul fast float %187, %193
  %197 = fmul fast float %188, %194
  %198 = fmul fast float %186, %170
  %199 = fsub fast float -0.000000e+00, %198
  %200 = fmul fast float %187, %170
  %201 = fsub fast float -0.000000e+00, %200
  %202 = fmul fast float %188, %170
  %203 = fsub fast float -0.000000e+00, %202
  %204 = fmul fast float %195, 5.000000e-01
  %205 = fmul fast float %196, 5.000000e-01
  %206 = fmul fast float %197, 5.000000e-01
  %207 = fsub fast float %198, %204
  %208 = fsub fast float %200, %205
  %209 = fsub fast float %202, %206
  %210 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %207)  ; FMax(a,b)
  %211 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %208)  ; FMax(a,b)
  %212 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %209)  ; FMax(a,b)
  %213 = call float @dx.op.binary.f32(i32 36, float %198, float %210)  ; FMin(a,b)
  %214 = call float @dx.op.binary.f32(i32 36, float %200, float %211)  ; FMin(a,b)
  %215 = call float @dx.op.binary.f32(i32 36, float %202, float %212)  ; FMin(a,b)
  %216 = fsub fast float 5.000000e-01, %198
  %217 = fsub fast float 5.000000e-01, %200
  %218 = fsub fast float 5.000000e-01, %202
  %219 = fsub fast float %216, %204
  %220 = fsub fast float %217, %205
  %221 = fsub fast float %218, %206
  %222 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %219)  ; FMin(a,b)
  %223 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %220)  ; FMin(a,b)
  %224 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %221)  ; FMin(a,b)
  %225 = call float @dx.op.binary.f32(i32 35, float %199, float %222)  ; FMax(a,b)
  %226 = call float @dx.op.binary.f32(i32 35, float %201, float %223)  ; FMax(a,b)
  %227 = call float @dx.op.binary.f32(i32 35, float %203, float %224)  ; FMax(a,b)
  %228 = fadd fast float %213, %195
  %229 = fadd fast float %214, %196
  %230 = fadd fast float %215, %197
  %231 = fadd fast float %228, %225
  %232 = fadd fast float %229, %226
  %233 = fadd fast float %230, %227
  %234 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %80, i32 undef)  ; BufferLoad(srv,index,wot)
  %235 = extractvalue %dx.types.ResRet.f32 %234, 0
  %236 = or i32 %80, 16
  %237 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %236, i32 undef)  ; BufferLoad(srv,index,wot)
  %238 = extractvalue %dx.types.ResRet.f32 %237, 1
  %239 = or i32 %80, 32
  %240 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %239, i32 undef)  ; BufferLoad(srv,index,wot)
  %241 = extractvalue %dx.types.ResRet.f32 %240, 2
  %242 = fmul fast float %241, %238
  %243 = extractvalue %dx.types.ResRet.f32 %237, 2
  %244 = extractvalue %dx.types.ResRet.f32 %240, 1
  %245 = fmul fast float %244, %243
  %246 = fsub fast float %242, %245
  %247 = fmul fast float %246, %235
  %248 = extractvalue %dx.types.ResRet.f32 %234, 1
  %249 = extractvalue %dx.types.ResRet.f32 %237, 0
  %250 = fmul fast float %241, %249
  %251 = extractvalue %dx.types.ResRet.f32 %240, 0
  %252 = fmul fast float %251, %243
  %253 = fsub fast float %250, %252
  %254 = fmul fast float %253, %248
  %255 = fsub fast float %247, %254
  %256 = extractvalue %dx.types.ResRet.f32 %234, 2
  %257 = fmul fast float %244, %249
  %258 = fmul fast float %251, %238
  %259 = fsub fast float %257, %258
  %260 = fmul fast float %259, %256
  %261 = fadd fast float %255, %260
  %262 = extractvalue %dx.types.ResRet.f32 %234, 3
  %263 = fmul fast float %246, %262
  %264 = extractvalue %dx.types.ResRet.f32 %237, 3
  %265 = fmul fast float %241, %248
  %266 = fmul fast float %244, %256
  %267 = fsub fast float %265, %266
  %268 = fmul fast float %267, %264
  %269 = fsub fast float %268, %263
  %270 = extractvalue %dx.types.ResRet.f32 %240, 3
  %271 = fmul fast float %243, %248
  %272 = fmul fast float %238, %256
  %273 = fsub fast float %271, %272
  %274 = fmul fast float %273, %270
  %275 = fsub fast float %269, %274
  %276 = fmul fast float %253, %262
  %277 = fmul fast float %241, %235
  %278 = fmul fast float %251, %256
  %279 = fsub fast float %277, %278
  %280 = fmul fast float %279, %264
  %281 = fsub fast float %276, %280
  %282 = fmul fast float %243, %235
  %283 = fmul fast float %249, %256
  %284 = fsub fast float %282, %283
  %285 = fmul fast float %284, %270
  %286 = fadd fast float %281, %285
  %287 = fmul fast float %259, %262
  %288 = fmul fast float %244, %235
  %289 = fmul fast float %251, %248
  %290 = fsub fast float %288, %289
  %291 = fmul fast float %290, %264
  %292 = fsub fast float %291, %287
  %293 = fmul fast float %238, %235
  %294 = fmul fast float %249, %248
  %295 = fsub fast float %293, %294
  %296 = fmul fast float %295, %270
  %297 = fsub fast float %292, %296
  %298 = fsub fast float %266, %265
  %299 = fsub fast float %252, %250
  %300 = fsub fast float %283, %282
  %301 = fsub fast float %289, %288
  %302 = fdiv fast float 1.000000e+00, %261
  %303 = fmul fast float %302, %246
  %304 = fmul fast float %302, %298
  %305 = fmul fast float %302, %273
  %306 = fmul fast float %302, %275
  %307 = fmul fast float %302, %299
  %308 = fmul fast float %302, %279
  %309 = fmul fast float %302, %300
  %310 = fmul fast float %302, %286
  %311 = fmul fast float %302, %259
  %312 = fmul fast float %302, %301
  %313 = fmul fast float %295, %302
  %314 = fmul fast float %302, %297
  %315 = call float @dx.op.dot4.f32(i32 56, float %303, float %304, float %305, float %306, float %231, float %232, float %233, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %316 = call float @dx.op.dot4.f32(i32 56, float %307, float %308, float %309, float %310, float %231, float %232, float %233, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %317 = call float @dx.op.dot4.f32(i32 56, float %311, float %312, float %313, float %314, float %231, float %232, float %233, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %318 = lshr i32 %92, 16
  %319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %318)  ; LegacyF16ToF32(value)
  %320 = and i32 %92, 65535
  %321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %320)  ; LegacyF16ToF32(value)
  %322 = and i32 %89, 65535
  %323 = call float @dx.op.legacyF16ToF32(i32 131, i32 %322)  ; LegacyF16ToF32(value)
  %324 = and i32 %89, 65536
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %339, label %326, !dx.controlflow.hints !49

; <label>:326                                     ; preds = %167
  %327 = fadd fast float %231, -5.000000e-01
  %328 = fadd fast float %232, -5.000000e-01
  %329 = fadd fast float %233, -5.000000e-01
  %330 = call float @dx.op.dot3.f32(i32 55, float %327, float %328, float %329, float %319, float %321, float %323)  ; Dot3(ax,ay,az,bx,by,bz)
  %331 = fcmp fast ogt float %330, 0.000000e+00
  %332 = select i1 %331, float 1.000000e+00, float -1.000000e+00
  %333 = call float @dx.op.dot3.f32(i32 55, float %303, float %304, float %305, float %319, float %321, float %323)  ; Dot3(ax,ay,az,bx,by,bz)
  %334 = call float @dx.op.dot3.f32(i32 55, float %307, float %308, float %309, float %319, float %321, float %323)  ; Dot3(ax,ay,az,bx,by,bz)
  %335 = call float @dx.op.dot3.f32(i32 55, float %311, float %312, float %313, float %319, float %321, float %323)  ; Dot3(ax,ay,az,bx,by,bz)
  %336 = fmul fast float %332, %333
  %337 = fmul fast float %334, %332
  %338 = fmul fast float %335, %332
  br label %339

; <label>:339                                     ; preds = %326, %167
  %340 = phi float [ %336, %326 ], [ %319, %167 ]
  %341 = phi float [ %337, %326 ], [ %321, %167 ]
  %342 = phi float [ %338, %326 ], [ %323, %167 ]
  %343 = fadd fast float %340, %315
  %344 = fadd fast float %341, %316
  %345 = fadd fast float %342, %317
  %346 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %347 = extractvalue %dx.types.CBufRet.i32 %346, 2
  %348 = extractvalue %dx.types.CBufRet.i32 %346, 1
  %349 = extractvalue %dx.types.CBufRet.i32 %346, 0
  %350 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 0
  store float 0.000000e+00, float* %350, align 4
  %351 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 1
  store float 0.000000e+00, float* %351, align 4
  %352 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 2
  store float 0.000000e+00, float* %352, align 4
  %353 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 3
  store float 0.000000e+00, float* %353, align 4
  br i1 %116, label %354, label %672, !dx.controlflow.hints !50

; <label>:354                                     ; preds = %339
  %355 = icmp eq i32 %168, -1
  br i1 %355, label %356, label %507, !dx.controlflow.hints !51

; <label>:356                                     ; preds = %354
  %357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %358 = extractvalue %dx.types.ResRet.i32 %357, 0
  %359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %360 = extractvalue %dx.types.ResRet.i32 %359, 0
  %361 = extractvalue %dx.types.ResRet.i32 %359, 1
  %362 = extractvalue %dx.types.ResRet.i32 %359, 2
  %363 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %364 = extractvalue %dx.types.ResRet.f32 %363, 0
  %365 = extractvalue %dx.types.ResRet.f32 %363, 1
  %366 = extractvalue %dx.types.ResRet.f32 %363, 2
  %367 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %368 = extractvalue %dx.types.ResRet.f32 %367, 0
  %369 = extractvalue %dx.types.ResRet.f32 %367, 1
  %370 = extractvalue %dx.types.ResRet.f32 %367, 2
  %371 = fsub fast float %343, %364
  %372 = fsub fast float %344, %365
  %373 = fsub fast float %345, %366
  %374 = fptoui float %371 to i32
  %375 = fptoui float %372 to i32
  %376 = fptoui float %373 to i32
  %377 = fcmp fast olt float %343, %364
  %378 = fcmp fast olt float %344, %365
  %379 = fcmp fast olt float %345, %366
  %380 = or i1 %377, %378
  %381 = or i1 %379, %380
  %382 = fcmp fast oge float %343, %368
  %383 = fcmp fast oge float %344, %369
  %384 = fcmp fast oge float %345, %370
  %385 = or i1 %382, %383
  %386 = or i1 %384, %385
  %387 = or i1 %381, %386
  %388 = and i32 %360, 31
  %389 = lshr i32 %374, %388
  %390 = lshr i32 %375, %388
  %391 = lshr i32 %376, %388
  %392 = mul i32 %390, %358
  %393 = add i32 %392, %389
  %394 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %395 = extractvalue %dx.types.CBufRet.i32 %394, 0
  %396 = icmp ult i32 %393, %395
  br i1 %396, label %397, label %413, !dx.controlflow.hints !52

; <label>:397                                     ; preds = %356
  %398 = mul i32 %393, 12
  %399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %398, i32 undef)  ; BufferLoad(srv,index,wot)
  %400 = extractvalue %dx.types.ResRet.i32 %399, 0
  %401 = add i32 %398, 4
  %402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %401, i32 undef)  ; BufferLoad(srv,index,wot)
  %403 = extractvalue %dx.types.ResRet.i32 %402, 0
  %404 = add i32 %398, 8
  %405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %406 = extractvalue %dx.types.ResRet.i32 %405, 0
  %407 = icmp ult i32 %391, %403
  %408 = icmp ugt i32 %391, %406
  %409 = or i1 %407, %408
  %410 = add i32 %400, %391
  %411 = sub i32 %410, %403
  %412 = select i1 %409, i32 -2147483648, i32 %411
  br label %413

; <label>:413                                     ; preds = %397, %356
  %414 = phi i32 [ %412, %397 ], [ -2147483648, %356 ]
  %415 = select i1 %387, i32 -2147483648, i32 %414
  %416 = icmp sgt i32 %415, -1
  %417 = and i32 %361, 31
  %418 = lshr i32 %374, %417
  %419 = lshr i32 %375, %417
  %420 = lshr i32 %376, %417
  %421 = and i32 %418, 3
  %422 = and i32 %420, 3
  %423 = shl nuw nsw i32 %422, 4
  %424 = shl i32 %419, 2
  %425 = and i32 %424, 12
  %426 = and i32 %423, 16
  %427 = or i32 %425, %421
  %428 = or i32 %427, %426
  %429 = shl i32 1, %428
  %430 = extractvalue %dx.types.CBufRet.i32 %394, 1
  %431 = icmp ult i32 %415, %430
  br i1 %431, label %432, label %450, !dx.controlflow.hints !53

; <label>:432                                     ; preds = %413
  %433 = lshr i32 %422, 1
  %434 = shl i32 %415, 4
  %435 = shl nuw nsw i32 %433, 2
  %436 = or i32 %434, %435
  %437 = or i32 %436, 8
  %438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %437, i32 undef)  ; BufferLoad(srv,index,wot)
  %439 = extractvalue %dx.types.ResRet.i32 %438, 0
  %440 = and i32 %439, %429
  %441 = icmp eq i32 %440, 0
  %442 = add i32 %429, -1
  %443 = and i32 %439, %442
  %444 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %443)  ; Countbits(value)
  %445 = or i32 %434, %435
  %446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %445, i32 undef)  ; BufferLoad(srv,index,wot)
  %447 = extractvalue %dx.types.ResRet.i32 %446, 0
  %448 = add i32 %447, %444
  %449 = select i1 %441, i32 -2147483648, i32 %448
  br label %450

; <label>:450                                     ; preds = %432, %413
  %451 = phi i32 [ %449, %432 ], [ -2147483648, %413 ]
  %452 = select i1 %416, i32 %451, i32 %415
  %453 = icmp sgt i32 %452, -1
  %454 = and i32 %362, 31
  %455 = lshr i32 %374, %454
  %456 = lshr i32 %375, %454
  %457 = lshr i32 %376, %454
  %458 = and i32 %455, 3
  %459 = and i32 %457, 3
  %460 = shl nuw nsw i32 %459, 4
  %461 = shl i32 %456, 2
  %462 = and i32 %461, 12
  %463 = and i32 %460, 16
  %464 = or i32 %462, %458
  %465 = or i32 %464, %463
  %466 = shl i32 1, %465
  %467 = icmp ult i32 %452, %430
  br i1 %467, label %468, label %486, !dx.controlflow.hints !53

; <label>:468                                     ; preds = %450
  %469 = lshr i32 %459, 1
  %470 = shl i32 %452, 4
  %471 = shl nuw nsw i32 %469, 2
  %472 = or i32 %470, %471
  %473 = or i32 %472, 8
  %474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %473, i32 undef)  ; BufferLoad(srv,index,wot)
  %475 = extractvalue %dx.types.ResRet.i32 %474, 0
  %476 = and i32 %475, %466
  %477 = icmp eq i32 %476, 0
  %478 = add i32 %466, -1
  %479 = and i32 %475, %478
  %480 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %479)  ; Countbits(value)
  %481 = or i32 %470, %471
  %482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %481, i32 undef)  ; BufferLoad(srv,index,wot)
  %483 = extractvalue %dx.types.ResRet.i32 %482, 0
  %484 = add i32 %483, %480
  %485 = select i1 %477, i32 -2147483648, i32 %484
  br label %486

; <label>:486                                     ; preds = %468, %450
  %487 = phi i32 [ %485, %468 ], [ -2147483648, %450 ]
  %488 = select i1 %453, i32 %487, i32 %452
  br i1 %387, label %503, label %489, !dx.controlflow.hints !54

; <label>:489                                     ; preds = %486
  %490 = icmp eq i32 %488, -2147483648
  %491 = icmp eq i32 %452, -2147483648
  %492 = select i1 %491, i32 %415, i32 %452
  %493 = select i1 %490, i32 %492, i32 %488
  %494 = icmp sgt i32 %493, -1
  %495 = icmp ne i32 %347, -1
  %496 = and i1 %495, %494
  %497 = select i1 %496, i32 %347, i32 0
  %498 = add i32 %493, %348
  %499 = add i32 %498, %497
  %500 = shl i32 %499, 2
  %501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %500, i32 undef)  ; BufferLoad(srv,index,wot)
  %502 = extractvalue %dx.types.ResRet.i32 %501, 0
  br label %503

; <label>:503                                     ; preds = %489, %486
  %504 = phi i32 [ %502, %489 ], [ -1, %486 ]
  %505 = icmp eq i32 %504, -1
  %506 = select i1 %505, i32 %349, i32 %504
  br label %507

; <label>:507                                     ; preds = %503, %354
  %508 = phi i32 [ %506, %503 ], [ %168, %354 ]
  %509 = icmp eq i32 %508, -1
  br i1 %509, label %658, label %510

; <label>:510                                     ; preds = %507
  br label %511

; <label>:511                                     ; preds = %649, %510
  %512 = phi i32 [ %650, %649 ], [ 0, %510 ]
  %513 = phi i32 [ %514, %649 ], [ -1, %510 ]
  %514 = phi i32 [ %645, %649 ], [ %508, %510 ]
  %515 = phi float [ %621, %649 ], [ 0.000000e+00, %510 ]
  %516 = phi float [ %622, %649 ], [ 0.000000e+00, %510 ]
  %517 = phi float [ %623, %649 ], [ 0.000000e+00, %510 ]
  %518 = phi float [ %626, %649 ], [ 0.000000e+00, %510 ]
  %519 = icmp ugt i32 %512, 50
  br i1 %519, label %652, label %520, !dx.controlflow.hints !55

; <label>:520                                     ; preds = %511
  %521 = shl i32 %514, 4
  %522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %521, i32 undef)  ; BufferLoad(srv,index,wot)
  %523 = extractvalue %dx.types.ResRet.i32 %522, 0
  %524 = extractvalue %dx.types.ResRet.i32 %522, 1
  %525 = extractvalue %dx.types.ResRet.i32 %522, 2
  %526 = extractvalue %dx.types.ResRet.i32 %522, 3
  %527 = and i32 %523, 2147483647
  %528 = mul nsw i32 %527, 12
  %529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %528, i32 undef)  ; BufferLoad(srv,index,wot)
  %530 = extractvalue %dx.types.ResRet.i32 %529, 0
  %531 = extractvalue %dx.types.ResRet.i32 %529, 1
  %532 = extractvalue %dx.types.ResRet.i32 %529, 2
  %533 = and i32 %524, 2147483647
  %534 = mul nsw i32 %533, 12
  %535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %534, i32 undef)  ; BufferLoad(srv,index,wot)
  %536 = extractvalue %dx.types.ResRet.i32 %535, 0
  %537 = extractvalue %dx.types.ResRet.i32 %535, 1
  %538 = extractvalue %dx.types.ResRet.i32 %535, 2
  %539 = and i32 %525, 2147483647
  %540 = mul nsw i32 %539, 12
  %541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %540, i32 undef)  ; BufferLoad(srv,index,wot)
  %542 = extractvalue %dx.types.ResRet.i32 %541, 0
  %543 = extractvalue %dx.types.ResRet.i32 %541, 1
  %544 = extractvalue %dx.types.ResRet.i32 %541, 2
  %545 = and i32 %526, 2147483647
  %546 = mul nsw i32 %545, 12
  %547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %546, i32 undef)  ; BufferLoad(srv,index,wot)
  %548 = extractvalue %dx.types.ResRet.i32 %547, 0
  %549 = extractvalue %dx.types.ResRet.i32 %547, 1
  %550 = extractvalue %dx.types.ResRet.i32 %547, 2
  %551 = bitcast i32 %530 to float
  %552 = bitcast i32 %531 to float
  %553 = bitcast i32 %532 to float
  %554 = bitcast i32 %548 to float
  %555 = bitcast i32 %549 to float
  %556 = bitcast i32 %550 to float
  %557 = fsub fast float %551, %554
  %558 = fsub fast float %552, %555
  %559 = fsub fast float %553, %556
  %560 = bitcast i32 %536 to float
  %561 = bitcast i32 %537 to float
  %562 = bitcast i32 %538 to float
  %563 = fsub fast float %560, %554
  %564 = fsub fast float %561, %555
  %565 = fsub fast float %562, %556
  %566 = bitcast i32 %542 to float
  %567 = bitcast i32 %543 to float
  %568 = bitcast i32 %544 to float
  %569 = fsub fast float %566, %554
  %570 = fsub fast float %567, %555
  %571 = fsub fast float %568, %556
  %572 = fsub fast float %343, %554
  %573 = fsub fast float %344, %555
  %574 = fsub fast float %345, %556
  %575 = fmul fast float %564, %571
  %576 = fmul fast float %570, %565
  %577 = fsub fast float %575, %576
  %578 = fmul fast float %577, %557
  %579 = fmul fast float %563, %571
  %580 = fmul fast float %565, %569
  %581 = fsub fast float %579, %580
  %582 = fmul fast float %581, %558
  %583 = fsub fast float %578, %582
  %584 = fmul fast float %563, %570
  %585 = fmul fast float %564, %569
  %586 = fsub fast float %584, %585
  %587 = fmul fast float %586, %559
  %588 = fadd fast float %583, %587
  %589 = fdiv fast float 1.000000e+00, %588
  %590 = fmul fast float %577, %589
  %591 = fmul fast float %589, %581
  %592 = fsub fast float -0.000000e+00, %591
  %593 = fmul fast float %586, %589
  %594 = fmul fast float %558, %571
  %595 = fmul fast float %559, %570
  %596 = fsub fast float %594, %595
  %597 = fmul fast float %589, %596
  %598 = fsub fast float -0.000000e+00, %597
  %599 = fmul fast float %557, %571
  %600 = fmul fast float %569, %559
  %601 = fsub fast float %599, %600
  %602 = fmul fast float %601, %589
  %603 = fmul fast float %557, %570
  %604 = fmul fast float %558, %569
  %605 = fsub fast float %603, %604
  %606 = fmul fast float %589, %605
  %607 = fsub fast float -0.000000e+00, %606
  %608 = fmul fast float %558, %565
  %609 = fmul fast float %559, %564
  %610 = fsub fast float %608, %609
  %611 = fmul fast float %610, %589
  %612 = fmul fast float %557, %565
  %613 = fmul fast float %559, %563
  %614 = fsub fast float %612, %613
  %615 = fmul fast float %589, %614
  %616 = fsub fast float -0.000000e+00, %615
  %617 = fmul fast float %557, %564
  %618 = fmul fast float %558, %563
  %619 = fsub fast float %617, %618
  %620 = fmul fast float %619, %589
  %621 = call float @dx.op.dot3.f32(i32 55, float %590, float %592, float %593, float %572, float %573, float %574)  ; Dot3(ax,ay,az,bx,by,bz)
  %622 = call float @dx.op.dot3.f32(i32 55, float %598, float %602, float %607, float %572, float %573, float %574)  ; Dot3(ax,ay,az,bx,by,bz)
  %623 = call float @dx.op.dot3.f32(i32 55, float %611, float %616, float %620, float %572, float %573, float %574)  ; Dot3(ax,ay,az,bx,by,bz)
  %624 = fsub fast float 1.000000e+00, %621
  %625 = fsub fast float %624, %622
  %626 = fsub fast float %625, %623
  %627 = call float @dx.op.binary.f32(i32 36, float %621, float %622)  ; FMin(a,b)
  %628 = call float @dx.op.binary.f32(i32 36, float %627, float %623)  ; FMin(a,b)
  %629 = call float @dx.op.binary.f32(i32 36, float %628, float %626)  ; FMin(a,b)
  %630 = call float @dx.op.binary.f32(i32 35, float %621, float %622)  ; FMax(a,b)
  %631 = call float @dx.op.binary.f32(i32 35, float %630, float %623)  ; FMax(a,b)
  %632 = call float @dx.op.binary.f32(i32 35, float %631, float %626)  ; FMax(a,b)
  %633 = fcmp fast oge float %629, 0xBF50624DE0000000
  %634 = fcmp fast olt float %632, 0x3FF00068E0000000
  %635 = and i1 %633, %634
  br i1 %635, label %652, label %636, !dx.controlflow.hints !56

; <label>:636                                     ; preds = %520
  %637 = fcmp fast oeq float %629, %621
  %638 = fcmp fast oeq float %629, %622
  %639 = fcmp fast oeq float %629, %623
  %640 = select i1 %639, i32 8, i32 12
  %641 = select i1 %638, i32 4, i32 %640
  %642 = select i1 %637, i32 0, i32 %641
  %643 = or i32 %642, %521
  %644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %643, i32 undef)  ; BufferLoad(srv,index,wot)
  %645 = extractvalue %dx.types.ResRet.i32 %644, 0
  %646 = icmp ne i32 %513, -1
  %647 = icmp eq i32 %645, %513
  %648 = and i1 %646, %647
  br i1 %648, label %652, label %649, !dx.controlflow.hints !57

; <label>:649                                     ; preds = %636
  %650 = add nuw nsw i32 %512, 1
  %651 = icmp eq i32 %645, -1
  br i1 %651, label %652, label %511, !llvm.loop !58

; <label>:652                                     ; preds = %649, %636, %520, %511
  %653 = phi i32 [ %514, %636 ], [ %514, %520 ], [ -1, %649 ], [ -1, %511 ]
  %654 = phi float [ %621, %636 ], [ %621, %520 ], [ %621, %649 ], [ %515, %511 ]
  %655 = phi float [ %622, %636 ], [ %622, %520 ], [ %622, %649 ], [ %516, %511 ]
  %656 = phi float [ %623, %636 ], [ %623, %520 ], [ %623, %649 ], [ %517, %511 ]
  %657 = phi float [ %626, %636 ], [ %626, %520 ], [ %626, %649 ], [ %518, %511 ]
  br label %658

; <label>:658                                     ; preds = %652, %507
  %659 = phi i32 [ -1, %507 ], [ %653, %652 ]
  %660 = phi float [ 0.000000e+00, %507 ], [ %654, %652 ]
  %661 = phi float [ 0.000000e+00, %507 ], [ %655, %652 ]
  %662 = phi float [ 0.000000e+00, %507 ], [ %656, %652 ]
  %663 = phi float [ 0.000000e+00, %507 ], [ %657, %652 ]
  %664 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %660)  ; FMax(a,b)
  %665 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %661)  ; FMax(a,b)
  %666 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %662)  ; FMax(a,b)
  %667 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %663)  ; FMax(a,b)
  %668 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %664)  ; FMin(a,b)
  %669 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %665)  ; FMin(a,b)
  %670 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %666)  ; FMin(a,b)
  %671 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %667)  ; FMin(a,b)
  store float %668, float* %350, align 4
  store float %669, float* %351, align 4
  store float %670, float* %352, align 4
  store float %671, float* %353, align 4
  br label %672

; <label>:672                                     ; preds = %658, %339
  %673 = phi float [ 0.000000e+00, %339 ], [ %670, %658 ]
  %674 = phi float [ 0.000000e+00, %339 ], [ %669, %658 ]
  %675 = phi float [ 0.000000e+00, %339 ], [ %671, %658 ]
  %676 = phi float [ 0.000000e+00, %339 ], [ %668, %658 ]
  %677 = phi i32 [ -1, %339 ], [ %659, %658 ]
  %678 = icmp eq i32 %677, -1
  br i1 %678, label %679, label %754, !dx.controlflow.hints !60

; <label>:679                                     ; preds = %672
  %680 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %681 = extractvalue %dx.types.ResRet.i32 %680, 0
  %682 = extractvalue %dx.types.ResRet.i32 %680, 1
  %683 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %684 = extractvalue %dx.types.ResRet.i32 %683, 0
  %685 = extractvalue %dx.types.ResRet.i32 %683, 1
  %686 = extractvalue %dx.types.ResRet.i32 %683, 2
  %687 = extractvalue %dx.types.ResRet.i32 %683, 3
  %688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %689 = extractvalue %dx.types.ResRet.i32 %688, 0
  %690 = extractvalue %dx.types.ResRet.i32 %688, 1
  %691 = extractvalue %dx.types.ResRet.i32 %688, 2
  %692 = extractvalue %dx.types.ResRet.i32 %688, 3
  %693 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %694 = extractvalue %dx.types.ResRet.i32 %693, 0
  %695 = extractvalue %dx.types.ResRet.i32 %693, 1
  %696 = extractvalue %dx.types.ResRet.i32 %693, 2
  %697 = extractvalue %dx.types.ResRet.i32 %693, 3
  %698 = and i32 %694, 65535
  %699 = call float @dx.op.legacyF16ToF32(i32 131, i32 %698)  ; LegacyF16ToF32(value)
  %700 = lshr i32 %694, 16
  %701 = call float @dx.op.legacyF16ToF32(i32 131, i32 %700)  ; LegacyF16ToF32(value)
  %702 = and i32 %695, 65535
  %703 = call float @dx.op.legacyF16ToF32(i32 131, i32 %702)  ; LegacyF16ToF32(value)
  %704 = lshr i32 %695, 16
  %705 = call float @dx.op.legacyF16ToF32(i32 131, i32 %704)  ; LegacyF16ToF32(value)
  %706 = and i32 %696, 65535
  %707 = call float @dx.op.legacyF16ToF32(i32 131, i32 %706)  ; LegacyF16ToF32(value)
  %708 = lshr i32 %696, 16
  %709 = call float @dx.op.legacyF16ToF32(i32 131, i32 %708)  ; LegacyF16ToF32(value)
  %710 = and i32 %697, 65535
  %711 = call float @dx.op.legacyF16ToF32(i32 131, i32 %710)  ; LegacyF16ToF32(value)
  %712 = lshr i32 %697, 16
  %713 = call float @dx.op.legacyF16ToF32(i32 131, i32 %712)  ; LegacyF16ToF32(value)
  %714 = and i32 %689, 65535
  %715 = call float @dx.op.legacyF16ToF32(i32 131, i32 %714)  ; LegacyF16ToF32(value)
  %716 = lshr i32 %689, 16
  %717 = call float @dx.op.legacyF16ToF32(i32 131, i32 %716)  ; LegacyF16ToF32(value)
  %718 = and i32 %690, 65535
  %719 = call float @dx.op.legacyF16ToF32(i32 131, i32 %718)  ; LegacyF16ToF32(value)
  %720 = lshr i32 %690, 16
  %721 = call float @dx.op.legacyF16ToF32(i32 131, i32 %720)  ; LegacyF16ToF32(value)
  %722 = and i32 %691, 65535
  %723 = call float @dx.op.legacyF16ToF32(i32 131, i32 %722)  ; LegacyF16ToF32(value)
  %724 = lshr i32 %691, 16
  %725 = call float @dx.op.legacyF16ToF32(i32 131, i32 %724)  ; LegacyF16ToF32(value)
  %726 = and i32 %692, 65535
  %727 = call float @dx.op.legacyF16ToF32(i32 131, i32 %726)  ; LegacyF16ToF32(value)
  %728 = lshr i32 %692, 16
  %729 = call float @dx.op.legacyF16ToF32(i32 131, i32 %728)  ; LegacyF16ToF32(value)
  %730 = and i32 %684, 65535
  %731 = call float @dx.op.legacyF16ToF32(i32 131, i32 %730)  ; LegacyF16ToF32(value)
  %732 = lshr i32 %684, 16
  %733 = call float @dx.op.legacyF16ToF32(i32 131, i32 %732)  ; LegacyF16ToF32(value)
  %734 = and i32 %685, 65535
  %735 = call float @dx.op.legacyF16ToF32(i32 131, i32 %734)  ; LegacyF16ToF32(value)
  %736 = lshr i32 %685, 16
  %737 = call float @dx.op.legacyF16ToF32(i32 131, i32 %736)  ; LegacyF16ToF32(value)
  %738 = and i32 %686, 65535
  %739 = call float @dx.op.legacyF16ToF32(i32 131, i32 %738)  ; LegacyF16ToF32(value)
  %740 = lshr i32 %686, 16
  %741 = call float @dx.op.legacyF16ToF32(i32 131, i32 %740)  ; LegacyF16ToF32(value)
  %742 = and i32 %687, 65535
  %743 = call float @dx.op.legacyF16ToF32(i32 131, i32 %742)  ; LegacyF16ToF32(value)
  %744 = lshr i32 %687, 16
  %745 = call float @dx.op.legacyF16ToF32(i32 131, i32 %744)  ; LegacyF16ToF32(value)
  %746 = and i32 %681, 65535
  %747 = call float @dx.op.legacyF16ToF32(i32 131, i32 %746)  ; LegacyF16ToF32(value)
  %748 = lshr i32 %681, 16
  %749 = call float @dx.op.legacyF16ToF32(i32 131, i32 %748)  ; LegacyF16ToF32(value)
  %750 = and i32 %682, 65535
  %751 = call float @dx.op.legacyF16ToF32(i32 131, i32 %750)  ; LegacyF16ToF32(value)
  %752 = lshr i32 %682, 16
  %753 = call float @dx.op.legacyF16ToF32(i32 131, i32 %752)  ; LegacyF16ToF32(value)
  br label %1453

; <label>:754                                     ; preds = %672
  %755 = shl nsw i32 %677, 4
  %756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %755, i32 undef)  ; BufferLoad(srv,index,wot)
  %757 = extractvalue %dx.types.ResRet.i32 %756, 0
  %758 = extractvalue %dx.types.ResRet.i32 %756, 1
  %759 = extractvalue %dx.types.ResRet.i32 %756, 2
  %760 = extractvalue %dx.types.ResRet.i32 %756, 3
  %761 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 0
  store i32 %757, i32* %761, align 4
  %762 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 1
  store i32 %758, i32* %762, align 4
  %763 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 2
  store i32 %759, i32* %763, align 4
  %764 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 3
  store i32 %760, i32* %764, align 4
  %765 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 0
  store float 0.000000e+00, float* %765, align 4
  %766 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 1
  store float 0.000000e+00, float* %766, align 4
  %767 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 2
  store float 0.000000e+00, float* %767, align 4
  %768 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 3
  store float 0.000000e+00, float* %768, align 4
  %769 = icmp slt i32 %757, 0
  br i1 %769, label %770, label %860, !dx.controlflow.hints !61

; <label>:770                                     ; preds = %754
  %771 = fsub fast float 1.000000e+00, %676
  %772 = fdiv fast float 1.000000e+00, %771
  %773 = shl nsw i32 %677, 6
  %774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %773, i32 undef)  ; BufferLoad(srv,index,wot)
  %775 = extractvalue %dx.types.ResRet.i32 %774, 0
  %776 = extractvalue %dx.types.ResRet.i32 %774, 1
  %777 = extractvalue %dx.types.ResRet.i32 %774, 2
  %778 = extractvalue %dx.types.ResRet.i32 %774, 3
  %779 = fmul fast float %772, %675
  %780 = fmul fast float %772, %674
  %781 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 0
  store i32 %775, i32* %781, align 4
  %782 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 1
  store i32 %776, i32* %782, align 4
  %783 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 2
  store i32 %777, i32* %783, align 4
  %784 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 3
  store i32 %778, i32* %784, align 4
  %785 = fmul fast float %780, 4.000000e+00
  %786 = call float @dx.op.unary.f32(i32 27, float %785)  ; Round_ni(value)
  %787 = fmul fast float %779, 4.000000e+00
  %788 = call float @dx.op.unary.f32(i32 27, float %787)  ; Round_ni(value)
  %789 = fsub fast float 1.100000e+01, %786
  %790 = fmul fast float %786, 5.000000e-01
  %791 = fmul fast float %790, %789
  %792 = fadd fast float %788, 5.000000e-01
  %793 = fadd fast float %792, %791
  %794 = fptosi float %793 to i32
  %795 = fptosi float %786 to i32
  %796 = sub nsw i32 5, %795
  %797 = fmul fast float %788, 2.500000e-01
  %798 = fmul fast float %786, 2.500000e-01
  %799 = add nsw i32 %794, 1
  %800 = add nsw i32 %794, %796
  %801 = fsub fast float %779, %797
  %802 = fmul fast float %801, 4.000000e+00
  %803 = fsub fast float %780, %798
  %804 = fmul fast float %803, 4.000000e+00
  %805 = fadd fast float %801, %803
  %806 = fmul fast float %805, 4.000000e+00
  %807 = fcmp fast ogt float %806, 1.000000e+00
  br i1 %807, label %808, label %814, !dx.controlflow.hints !62

; <label>:808                                     ; preds = %770
  %809 = add nsw i32 %800, 1
  %810 = fadd fast float %804, -1.000000e+00
  %811 = fsub fast float -0.000000e+00, %810
  %812 = fadd fast float %802, -1.000000e+00
  %813 = fsub fast float -0.000000e+00, %812
  br label %814

; <label>:814                                     ; preds = %808, %770
  %815 = phi i32 [ %809, %808 ], [ %794, %770 ]
  %816 = phi i32 [ %799, %808 ], [ %800, %770 ]
  %817 = phi i32 [ %800, %808 ], [ %799, %770 ]
  %818 = phi float [ %813, %808 ], [ %804, %770 ]
  %819 = phi float [ %811, %808 ], [ %802, %770 ]
  %820 = fsub fast float 1.000000e+00, %818
  %821 = fsub fast float %820, %819
  %822 = lshr i32 %817, 2
  %823 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %822
  %824 = load i32, i32* %823, align 4, !tbaa !38, !noalias !63
  %825 = shl i32 %817, 3
  %826 = and i32 %825, 24
  %827 = lshr i32 %824, %826
  %828 = and i32 %827, 255
  %829 = sitofp i32 %828 to float
  %830 = fmul fast float %819, 0x3F70101020000000
  %831 = fmul fast float %830, %829
  %832 = lshr i32 %816, 2
  %833 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %832
  %834 = load i32, i32* %833, align 4, !tbaa !38, !noalias !63
  %835 = shl i32 %816, 3
  %836 = and i32 %835, 24
  %837 = lshr i32 %834, %836
  %838 = and i32 %837, 255
  %839 = sitofp i32 %838 to float
  %840 = fmul fast float %818, 0x3F70101020000000
  %841 = fmul fast float %840, %839
  %842 = lshr i32 %815, 2
  %843 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %842
  %844 = load i32, i32* %843, align 4, !tbaa !38, !noalias !63
  %845 = shl i32 %815, 3
  %846 = and i32 %845, 24
  %847 = lshr i32 %844, %846
  %848 = and i32 %847, 255
  %849 = sitofp i32 %848 to float
  %850 = fmul fast float %821, 0x3F70101020000000
  %851 = fmul fast float %850, %849
  %852 = fsub fast float 1.000000e+00, %831
  %853 = fsub fast float %852, %841
  %854 = fsub fast float %853, %851
  %855 = fmul fast float %676, 2.000000e+01
  %856 = fadd fast float %855, 1.000000e+00
  %857 = fmul fast float %854, 2.000000e+01
  %858 = fsub fast float %856, %857
  %859 = call float @dx.op.unary.f32(i32 7, float %858)  ; Saturate(value)
  br label %860

; <label>:860                                     ; preds = %814, %754
  %861 = phi float [ %859, %814 ], [ 1.000000e+00, %754 ]
  store float %861, float* %765, align 4, !tbaa !71, !noalias !63
  %862 = icmp slt i32 %758, 0
  br i1 %862, label %863, label %954, !dx.controlflow.hints !61

; <label>:863                                     ; preds = %860
  %864 = fsub fast float 1.000000e+00, %674
  %865 = fdiv fast float 1.000000e+00, %864
  %866 = shl i32 %677, 6
  %867 = or i32 %866, 16
  %868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %867, i32 undef)  ; BufferLoad(srv,index,wot)
  %869 = extractvalue %dx.types.ResRet.i32 %868, 0
  %870 = extractvalue %dx.types.ResRet.i32 %868, 1
  %871 = extractvalue %dx.types.ResRet.i32 %868, 2
  %872 = extractvalue %dx.types.ResRet.i32 %868, 3
  %873 = fmul fast float %865, %676
  %874 = fmul fast float %865, %675
  %875 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 0
  store i32 %869, i32* %875, align 4
  %876 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 1
  store i32 %870, i32* %876, align 4
  %877 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 2
  store i32 %871, i32* %877, align 4
  %878 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 3
  store i32 %872, i32* %878, align 4
  %879 = fmul fast float %874, 4.000000e+00
  %880 = call float @dx.op.unary.f32(i32 27, float %879)  ; Round_ni(value)
  %881 = fmul fast float %873, 4.000000e+00
  %882 = call float @dx.op.unary.f32(i32 27, float %881)  ; Round_ni(value)
  %883 = fsub fast float 1.100000e+01, %880
  %884 = fmul fast float %880, 5.000000e-01
  %885 = fmul fast float %884, %883
  %886 = fadd fast float %882, 5.000000e-01
  %887 = fadd fast float %886, %885
  %888 = fptosi float %887 to i32
  %889 = fptosi float %880 to i32
  %890 = sub nsw i32 5, %889
  %891 = fmul fast float %882, 2.500000e-01
  %892 = fmul fast float %880, 2.500000e-01
  %893 = add nsw i32 %888, 1
  %894 = add nsw i32 %888, %890
  %895 = fsub fast float %873, %891
  %896 = fmul fast float %895, 4.000000e+00
  %897 = fsub fast float %874, %892
  %898 = fmul fast float %897, 4.000000e+00
  %899 = fadd fast float %895, %897
  %900 = fmul fast float %899, 4.000000e+00
  %901 = fcmp fast ogt float %900, 1.000000e+00
  br i1 %901, label %902, label %908, !dx.controlflow.hints !62

; <label>:902                                     ; preds = %863
  %903 = add nsw i32 %894, 1
  %904 = fadd fast float %898, -1.000000e+00
  %905 = fsub fast float -0.000000e+00, %904
  %906 = fadd fast float %896, -1.000000e+00
  %907 = fsub fast float -0.000000e+00, %906
  br label %908

; <label>:908                                     ; preds = %902, %863
  %909 = phi i32 [ %903, %902 ], [ %888, %863 ]
  %910 = phi i32 [ %893, %902 ], [ %894, %863 ]
  %911 = phi i32 [ %894, %902 ], [ %893, %863 ]
  %912 = phi float [ %907, %902 ], [ %898, %863 ]
  %913 = phi float [ %905, %902 ], [ %896, %863 ]
  %914 = fsub fast float 1.000000e+00, %912
  %915 = fsub fast float %914, %913
  %916 = lshr i32 %911, 2
  %917 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %916
  %918 = load i32, i32* %917, align 4, !tbaa !38, !noalias !63
  %919 = shl i32 %911, 3
  %920 = and i32 %919, 24
  %921 = lshr i32 %918, %920
  %922 = and i32 %921, 255
  %923 = sitofp i32 %922 to float
  %924 = fmul fast float %913, 0x3F70101020000000
  %925 = fmul fast float %924, %923
  %926 = lshr i32 %910, 2
  %927 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %926
  %928 = load i32, i32* %927, align 4, !tbaa !38, !noalias !63
  %929 = shl i32 %910, 3
  %930 = and i32 %929, 24
  %931 = lshr i32 %928, %930
  %932 = and i32 %931, 255
  %933 = sitofp i32 %932 to float
  %934 = fmul fast float %912, 0x3F70101020000000
  %935 = fmul fast float %934, %933
  %936 = lshr i32 %909, 2
  %937 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %936
  %938 = load i32, i32* %937, align 4, !tbaa !38, !noalias !63
  %939 = shl i32 %909, 3
  %940 = and i32 %939, 24
  %941 = lshr i32 %938, %940
  %942 = and i32 %941, 255
  %943 = sitofp i32 %942 to float
  %944 = fmul fast float %915, 0x3F70101020000000
  %945 = fmul fast float %944, %943
  %946 = fsub fast float 1.000000e+00, %925
  %947 = fsub fast float %946, %935
  %948 = fsub fast float %947, %945
  %949 = fmul fast float %674, 2.000000e+01
  %950 = fadd fast float %949, 1.000000e+00
  %951 = fmul fast float %948, 2.000000e+01
  %952 = fsub fast float %950, %951
  %953 = call float @dx.op.unary.f32(i32 7, float %952)  ; Saturate(value)
  br label %954

; <label>:954                                     ; preds = %908, %860
  %955 = phi float [ %953, %908 ], [ 1.000000e+00, %860 ]
  store float %955, float* %766, align 4, !tbaa !71, !noalias !63
  %956 = fadd fast float %955, %861
  %957 = icmp slt i32 %759, 0
  br i1 %957, label %958, label %1049, !dx.controlflow.hints !61

; <label>:958                                     ; preds = %954
  %959 = fsub fast float 1.000000e+00, %673
  %960 = fdiv fast float 1.000000e+00, %959
  %961 = shl i32 %677, 6
  %962 = or i32 %961, 32
  %963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %962, i32 undef)  ; BufferLoad(srv,index,wot)
  %964 = extractvalue %dx.types.ResRet.i32 %963, 0
  %965 = extractvalue %dx.types.ResRet.i32 %963, 1
  %966 = extractvalue %dx.types.ResRet.i32 %963, 2
  %967 = extractvalue %dx.types.ResRet.i32 %963, 3
  %968 = fmul fast float %960, %676
  %969 = fmul fast float %960, %674
  %970 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 0
  store i32 %964, i32* %970, align 4
  %971 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 1
  store i32 %965, i32* %971, align 4
  %972 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 2
  store i32 %966, i32* %972, align 4
  %973 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 3
  store i32 %967, i32* %973, align 4
  %974 = fmul fast float %969, 4.000000e+00
  %975 = call float @dx.op.unary.f32(i32 27, float %974)  ; Round_ni(value)
  %976 = fmul fast float %968, 4.000000e+00
  %977 = call float @dx.op.unary.f32(i32 27, float %976)  ; Round_ni(value)
  %978 = fsub fast float 1.100000e+01, %975
  %979 = fmul fast float %975, 5.000000e-01
  %980 = fmul fast float %979, %978
  %981 = fadd fast float %977, 5.000000e-01
  %982 = fadd fast float %981, %980
  %983 = fptosi float %982 to i32
  %984 = fptosi float %975 to i32
  %985 = sub nsw i32 5, %984
  %986 = fmul fast float %977, 2.500000e-01
  %987 = fmul fast float %975, 2.500000e-01
  %988 = add nsw i32 %983, 1
  %989 = add nsw i32 %983, %985
  %990 = fsub fast float %968, %986
  %991 = fmul fast float %990, 4.000000e+00
  %992 = fsub fast float %969, %987
  %993 = fmul fast float %992, 4.000000e+00
  %994 = fadd fast float %990, %992
  %995 = fmul fast float %994, 4.000000e+00
  %996 = fcmp fast ogt float %995, 1.000000e+00
  br i1 %996, label %997, label %1003, !dx.controlflow.hints !62

; <label>:997                                     ; preds = %958
  %998 = add nsw i32 %989, 1
  %999 = fadd fast float %993, -1.000000e+00
  %1000 = fsub fast float -0.000000e+00, %999
  %1001 = fadd fast float %991, -1.000000e+00
  %1002 = fsub fast float -0.000000e+00, %1001
  br label %1003

; <label>:1003                                    ; preds = %997, %958
  %1004 = phi i32 [ %998, %997 ], [ %983, %958 ]
  %1005 = phi i32 [ %988, %997 ], [ %989, %958 ]
  %1006 = phi i32 [ %989, %997 ], [ %988, %958 ]
  %1007 = phi float [ %1002, %997 ], [ %993, %958 ]
  %1008 = phi float [ %1000, %997 ], [ %991, %958 ]
  %1009 = fsub fast float 1.000000e+00, %1007
  %1010 = fsub fast float %1009, %1008
  %1011 = lshr i32 %1006, 2
  %1012 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %1011
  %1013 = load i32, i32* %1012, align 4, !tbaa !38, !noalias !63
  %1014 = shl i32 %1006, 3
  %1015 = and i32 %1014, 24
  %1016 = lshr i32 %1013, %1015
  %1017 = and i32 %1016, 255
  %1018 = sitofp i32 %1017 to float
  %1019 = fmul fast float %1008, 0x3F70101020000000
  %1020 = fmul fast float %1019, %1018
  %1021 = lshr i32 %1005, 2
  %1022 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %1021
  %1023 = load i32, i32* %1022, align 4, !tbaa !38, !noalias !63
  %1024 = shl i32 %1005, 3
  %1025 = and i32 %1024, 24
  %1026 = lshr i32 %1023, %1025
  %1027 = and i32 %1026, 255
  %1028 = sitofp i32 %1027 to float
  %1029 = fmul fast float %1007, 0x3F70101020000000
  %1030 = fmul fast float %1029, %1028
  %1031 = lshr i32 %1004, 2
  %1032 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %1031
  %1033 = load i32, i32* %1032, align 4, !tbaa !38, !noalias !63
  %1034 = shl i32 %1004, 3
  %1035 = and i32 %1034, 24
  %1036 = lshr i32 %1033, %1035
  %1037 = and i32 %1036, 255
  %1038 = sitofp i32 %1037 to float
  %1039 = fmul fast float %1010, 0x3F70101020000000
  %1040 = fmul fast float %1039, %1038
  %1041 = fsub fast float 1.000000e+00, %1020
  %1042 = fsub fast float %1041, %1030
  %1043 = fsub fast float %1042, %1040
  %1044 = fmul fast float %673, 2.000000e+01
  %1045 = fadd fast float %1044, 1.000000e+00
  %1046 = fmul fast float %1043, 2.000000e+01
  %1047 = fsub fast float %1045, %1046
  %1048 = call float @dx.op.unary.f32(i32 7, float %1047)  ; Saturate(value)
  br label %1049

; <label>:1049                                    ; preds = %1003, %954
  %1050 = phi float [ %1048, %1003 ], [ 1.000000e+00, %954 ]
  store float %1050, float* %767, align 4, !tbaa !71, !noalias !63
  %1051 = fadd fast float %956, %1050
  %1052 = icmp slt i32 %760, 0
  br i1 %1052, label %1053, label %1144, !dx.controlflow.hints !61

; <label>:1053                                    ; preds = %1049
  %1054 = fsub fast float 1.000000e+00, %675
  %1055 = fdiv fast float 1.000000e+00, %1054
  %1056 = shl i32 %677, 6
  %1057 = or i32 %1056, 48
  %1058 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1057, i32 undef)  ; BufferLoad(srv,index,wot)
  %1059 = extractvalue %dx.types.ResRet.i32 %1058, 0
  %1060 = extractvalue %dx.types.ResRet.i32 %1058, 1
  %1061 = extractvalue %dx.types.ResRet.i32 %1058, 2
  %1062 = extractvalue %dx.types.ResRet.i32 %1058, 3
  %1063 = fmul fast float %1055, %676
  %1064 = fmul fast float %1055, %674
  %1065 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 0
  store i32 %1059, i32* %1065, align 4
  %1066 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 1
  store i32 %1060, i32* %1066, align 4
  %1067 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 2
  store i32 %1061, i32* %1067, align 4
  %1068 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 3
  store i32 %1062, i32* %1068, align 4
  %1069 = fmul fast float %1064, 4.000000e+00
  %1070 = call float @dx.op.unary.f32(i32 27, float %1069)  ; Round_ni(value)
  %1071 = fmul fast float %1063, 4.000000e+00
  %1072 = call float @dx.op.unary.f32(i32 27, float %1071)  ; Round_ni(value)
  %1073 = fsub fast float 1.100000e+01, %1070
  %1074 = fmul fast float %1070, 5.000000e-01
  %1075 = fmul fast float %1074, %1073
  %1076 = fadd fast float %1072, 5.000000e-01
  %1077 = fadd fast float %1076, %1075
  %1078 = fptosi float %1077 to i32
  %1079 = fptosi float %1070 to i32
  %1080 = sub nsw i32 5, %1079
  %1081 = fmul fast float %1072, 2.500000e-01
  %1082 = fmul fast float %1070, 2.500000e-01
  %1083 = add nsw i32 %1078, 1
  %1084 = add nsw i32 %1078, %1080
  %1085 = fsub fast float %1063, %1081
  %1086 = fmul fast float %1085, 4.000000e+00
  %1087 = fsub fast float %1064, %1082
  %1088 = fmul fast float %1087, 4.000000e+00
  %1089 = fadd fast float %1085, %1087
  %1090 = fmul fast float %1089, 4.000000e+00
  %1091 = fcmp fast ogt float %1090, 1.000000e+00
  br i1 %1091, label %1092, label %1098, !dx.controlflow.hints !62

; <label>:1092                                    ; preds = %1053
  %1093 = add nsw i32 %1084, 1
  %1094 = fadd fast float %1088, -1.000000e+00
  %1095 = fsub fast float -0.000000e+00, %1094
  %1096 = fadd fast float %1086, -1.000000e+00
  %1097 = fsub fast float -0.000000e+00, %1096
  br label %1098

; <label>:1098                                    ; preds = %1092, %1053
  %1099 = phi i32 [ %1093, %1092 ], [ %1078, %1053 ]
  %1100 = phi i32 [ %1083, %1092 ], [ %1084, %1053 ]
  %1101 = phi i32 [ %1084, %1092 ], [ %1083, %1053 ]
  %1102 = phi float [ %1097, %1092 ], [ %1088, %1053 ]
  %1103 = phi float [ %1095, %1092 ], [ %1086, %1053 ]
  %1104 = fsub fast float 1.000000e+00, %1102
  %1105 = fsub fast float %1104, %1103
  %1106 = lshr i32 %1101, 2
  %1107 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %1106
  %1108 = load i32, i32* %1107, align 4, !tbaa !38, !noalias !63
  %1109 = shl i32 %1101, 3
  %1110 = and i32 %1109, 24
  %1111 = lshr i32 %1108, %1110
  %1112 = and i32 %1111, 255
  %1113 = sitofp i32 %1112 to float
  %1114 = fmul fast float %1103, 0x3F70101020000000
  %1115 = fmul fast float %1114, %1113
  %1116 = lshr i32 %1100, 2
  %1117 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %1116
  %1118 = load i32, i32* %1117, align 4, !tbaa !38, !noalias !63
  %1119 = shl i32 %1100, 3
  %1120 = and i32 %1119, 24
  %1121 = lshr i32 %1118, %1120
  %1122 = and i32 %1121, 255
  %1123 = sitofp i32 %1122 to float
  %1124 = fmul fast float %1102, 0x3F70101020000000
  %1125 = fmul fast float %1124, %1123
  %1126 = lshr i32 %1099, 2
  %1127 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %1126
  %1128 = load i32, i32* %1127, align 4, !tbaa !38, !noalias !63
  %1129 = shl i32 %1099, 3
  %1130 = and i32 %1129, 24
  %1131 = lshr i32 %1128, %1130
  %1132 = and i32 %1131, 255
  %1133 = sitofp i32 %1132 to float
  %1134 = fmul fast float %1105, 0x3F70101020000000
  %1135 = fmul fast float %1134, %1133
  %1136 = fsub fast float 1.000000e+00, %1115
  %1137 = fsub fast float %1136, %1125
  %1138 = fsub fast float %1137, %1135
  %1139 = fmul fast float %675, 2.000000e+01
  %1140 = fadd fast float %1139, 1.000000e+00
  %1141 = fmul fast float %1138, 2.000000e+01
  %1142 = fsub fast float %1140, %1141
  %1143 = call float @dx.op.unary.f32(i32 7, float %1142)  ; Saturate(value)
  br label %1144

; <label>:1144                                    ; preds = %1098, %1049
  %1145 = phi float [ %1143, %1098 ], [ 1.000000e+00, %1049 ]
  store float %1145, float* %768, align 4, !tbaa !71, !noalias !63
  %1146 = fadd fast float %1051, %1145
  %1147 = fcmp fast oeq float %1146, 0.000000e+00
  br i1 %1147, label %1148, label %1149, !dx.controlflow.hints !73

; <label>:1148                                    ; preds = %1144
  store float 2.500000e-01, float* %765, align 4
  store float 2.500000e-01, float* %766, align 4
  store float 2.500000e-01, float* %767, align 4
  store float 2.500000e-01, float* %768, align 4
  br label %1149

; <label>:1149                                    ; preds = %1148, %1144
  %1150 = phi float [ 2.500000e-01, %1148 ], [ %861, %1144 ]
  %1151 = phi i32 [ 0, %1148 ], [ 1, %1144 ]
  br label %1152

; <label>:1152                                    ; preds = %1419, %1149
  %1153 = phi float [ %1150, %1149 ], [ %1421, %1419 ]
  %1154 = phi float [ 0.000000e+00, %1149 ], [ %1388, %1419 ]
  %1155 = phi float [ 0.000000e+00, %1149 ], [ %1389, %1419 ]
  %1156 = phi float [ 0.000000e+00, %1149 ], [ %1390, %1419 ]
  %1157 = phi float [ 0.000000e+00, %1149 ], [ %1391, %1419 ]
  %1158 = phi float [ 0.000000e+00, %1149 ], [ %1392, %1419 ]
  %1159 = phi float [ 0.000000e+00, %1149 ], [ %1393, %1419 ]
  %1160 = phi float [ 0.000000e+00, %1149 ], [ %1394, %1419 ]
  %1161 = phi float [ 0.000000e+00, %1149 ], [ %1395, %1419 ]
  %1162 = phi float [ 0.000000e+00, %1149 ], [ %1396, %1419 ]
  %1163 = phi float [ 0.000000e+00, %1149 ], [ %1397, %1419 ]
  %1164 = phi float [ 0.000000e+00, %1149 ], [ %1398, %1419 ]
  %1165 = phi float [ 0.000000e+00, %1149 ], [ %1399, %1419 ]
  %1166 = phi float [ 0.000000e+00, %1149 ], [ %1400, %1419 ]
  %1167 = phi float [ 0.000000e+00, %1149 ], [ %1401, %1419 ]
  %1168 = phi float [ 0.000000e+00, %1149 ], [ %1402, %1419 ]
  %1169 = phi float [ 0.000000e+00, %1149 ], [ %1403, %1419 ]
  %1170 = phi float [ 0.000000e+00, %1149 ], [ %1404, %1419 ]
  %1171 = phi float [ 0.000000e+00, %1149 ], [ %1405, %1419 ]
  %1172 = phi float [ 0.000000e+00, %1149 ], [ %1406, %1419 ]
  %1173 = phi float [ 0.000000e+00, %1149 ], [ %1407, %1419 ]
  %1174 = phi float [ 0.000000e+00, %1149 ], [ %1408, %1419 ]
  %1175 = phi float [ 0.000000e+00, %1149 ], [ %1409, %1419 ]
  %1176 = phi float [ 0.000000e+00, %1149 ], [ %1410, %1419 ]
  %1177 = phi float [ 0.000000e+00, %1149 ], [ %1411, %1419 ]
  %1178 = phi float [ 0.000000e+00, %1149 ], [ %1412, %1419 ]
  %1179 = phi float [ 0.000000e+00, %1149 ], [ %1413, %1419 ]
  %1180 = phi float [ 0.000000e+00, %1149 ], [ %1414, %1419 ]
  %1181 = phi float [ 0.000000e+00, %1149 ], [ %1415, %1419 ]
  %1182 = phi float [ 0.000000e+00, %1149 ], [ %1416, %1419 ]
  %1183 = phi i32 [ 0, %1149 ], [ %1417, %1419 ]
  %1184 = fcmp fast ogt float %1153, 0.000000e+00
  br i1 %1184, label %1185, label %1387, !dx.controlflow.hints !74

; <label>:1185                                    ; preds = %1152
  %1186 = getelementptr [4 x float], [4 x float]* %29, i32 0, i32 %1183
  %1187 = load float, float* %1186, align 4, !tbaa !71, !noalias !63
  %1188 = getelementptr [4 x i32], [4 x i32]* %30, i32 0, i32 %1183
  %1189 = load i32, i32* %1188, align 4, !tbaa !38, !noalias !63
  %1190 = fmul fast float %1187, %1153
  %1191 = shl i32 %1189, 5
  %1192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1191, i32 undef)  ; BufferLoad(srv,index,wot)
  %1193 = extractvalue %dx.types.ResRet.i32 %1192, 0
  %1194 = extractvalue %dx.types.ResRet.i32 %1192, 1
  %1195 = extractvalue %dx.types.ResRet.i32 %1192, 2
  %1196 = extractvalue %dx.types.ResRet.i32 %1192, 3
  %1197 = or i32 %1191, 16
  %1198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1197, i32 undef)  ; BufferLoad(srv,index,wot)
  %1199 = extractvalue %dx.types.ResRet.i32 %1198, 0
  %1200 = extractvalue %dx.types.ResRet.i32 %1198, 1
  %1201 = extractvalue %dx.types.ResRet.i32 %1198, 2
  %1202 = shl i32 %1193, 4
  %1203 = and i32 %1202, 32752
  %1204 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1203)  ; LegacyF16ToF32(value)
  %1205 = lshr i32 %1193, 7
  %1206 = and i32 %1205, 32752
  %1207 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1206)  ; LegacyF16ToF32(value)
  %1208 = lshr i32 %1193, 22
  %1209 = shl nuw nsw i32 %1208, 5
  %1210 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1209)  ; LegacyF16ToF32(value)
  %1211 = and i32 %1194, 255
  %1212 = uitofp i32 %1211 to float
  %1213 = fmul fast float %1212, 0x3F80204080000000
  %1214 = fadd fast float %1213, -1.000000e+00
  %1215 = lshr i32 %1194, 8
  %1216 = and i32 %1215, 255
  %1217 = uitofp i32 %1216 to float
  %1218 = fmul fast float %1217, 0x3F80204080000000
  %1219 = fadd fast float %1218, -1.000000e+00
  %1220 = lshr i32 %1194, 16
  %1221 = and i32 %1220, 255
  %1222 = uitofp i32 %1221 to float
  %1223 = fmul fast float %1222, 0x3F80204080000000
  %1224 = fadd fast float %1223, -1.000000e+00
  %1225 = lshr i32 %1194, 24
  %1226 = uitofp i32 %1225 to float
  %1227 = fmul fast float %1226, 0x3F80204080000000
  %1228 = fadd fast float %1227, -1.000000e+00
  %1229 = and i32 %1195, 255
  %1230 = uitofp i32 %1229 to float
  %1231 = fmul fast float %1230, 0x3F80204080000000
  %1232 = fadd fast float %1231, -1.000000e+00
  %1233 = lshr i32 %1195, 8
  %1234 = and i32 %1233, 255
  %1235 = uitofp i32 %1234 to float
  %1236 = fmul fast float %1235, 0x3F80204080000000
  %1237 = fadd fast float %1236, -1.000000e+00
  %1238 = lshr i32 %1195, 16
  %1239 = and i32 %1238, 255
  %1240 = uitofp i32 %1239 to float
  %1241 = fmul fast float %1240, 0x3F80204080000000
  %1242 = fadd fast float %1241, -1.000000e+00
  %1243 = lshr i32 %1195, 24
  %1244 = uitofp i32 %1243 to float
  %1245 = fmul fast float %1244, 0x3F80204080000000
  %1246 = fadd fast float %1245, -1.000000e+00
  %1247 = and i32 %1196, 255
  %1248 = uitofp i32 %1247 to float
  %1249 = fmul fast float %1248, 0x3F80204080000000
  %1250 = fadd fast float %1249, -1.000000e+00
  %1251 = lshr i32 %1196, 8
  %1252 = and i32 %1251, 255
  %1253 = uitofp i32 %1252 to float
  %1254 = fmul fast float %1253, 0x3F80204080000000
  %1255 = fadd fast float %1254, -1.000000e+00
  %1256 = lshr i32 %1196, 16
  %1257 = and i32 %1256, 255
  %1258 = uitofp i32 %1257 to float
  %1259 = fmul fast float %1258, 0x3F80204080000000
  %1260 = fadd fast float %1259, -1.000000e+00
  %1261 = lshr i32 %1196, 24
  %1262 = uitofp i32 %1261 to float
  %1263 = fmul fast float %1262, 0x3F80204080000000
  %1264 = fadd fast float %1263, -1.000000e+00
  %1265 = and i32 %1199, 255
  %1266 = uitofp i32 %1265 to float
  %1267 = fmul fast float %1266, 0x3F80204080000000
  %1268 = fadd fast float %1267, -1.000000e+00
  %1269 = lshr i32 %1199, 8
  %1270 = and i32 %1269, 255
  %1271 = uitofp i32 %1270 to float
  %1272 = fmul fast float %1271, 0x3F80204080000000
  %1273 = fadd fast float %1272, -1.000000e+00
  %1274 = lshr i32 %1199, 16
  %1275 = and i32 %1274, 255
  %1276 = uitofp i32 %1275 to float
  %1277 = fmul fast float %1276, 0x3F80204080000000
  %1278 = fadd fast float %1277, -1.000000e+00
  %1279 = lshr i32 %1199, 24
  %1280 = uitofp i32 %1279 to float
  %1281 = fmul fast float %1280, 0x3F80204080000000
  %1282 = fadd fast float %1281, -1.000000e+00
  %1283 = and i32 %1200, 255
  %1284 = uitofp i32 %1283 to float
  %1285 = fmul fast float %1284, 0x3F80204080000000
  %1286 = fadd fast float %1285, -1.000000e+00
  %1287 = lshr i32 %1200, 8
  %1288 = and i32 %1287, 255
  %1289 = uitofp i32 %1288 to float
  %1290 = fmul fast float %1289, 0x3F80204080000000
  %1291 = fadd fast float %1290, -1.000000e+00
  %1292 = lshr i32 %1200, 16
  %1293 = and i32 %1292, 255
  %1294 = uitofp i32 %1293 to float
  %1295 = fmul fast float %1294, 0x3F80204080000000
  %1296 = fadd fast float %1295, -1.000000e+00
  %1297 = lshr i32 %1200, 24
  %1298 = uitofp i32 %1297 to float
  %1299 = fmul fast float %1298, 0x3F80204080000000
  %1300 = fadd fast float %1299, -1.000000e+00
  %1301 = and i32 %1201, 255
  %1302 = uitofp i32 %1301 to float
  %1303 = fmul fast float %1302, 0x3F80204080000000
  %1304 = fadd fast float %1303, -1.000000e+00
  %1305 = lshr i32 %1201, 8
  %1306 = and i32 %1305, 255
  %1307 = uitofp i32 %1306 to float
  %1308 = fmul fast float %1307, 0x3F80204080000000
  %1309 = fadd fast float %1308, -1.000000e+00
  %1310 = lshr i32 %1201, 16
  %1311 = and i32 %1310, 255
  %1312 = uitofp i32 %1311 to float
  %1313 = fmul fast float %1312, 0x3F80204080000000
  %1314 = fadd fast float %1313, -1.000000e+00
  %1315 = lshr i32 %1201, 24
  %1316 = uitofp i32 %1315 to float
  %1317 = fmul fast float %1316, 0x3F80204080000000
  %1318 = fadd fast float %1317, -1.000000e+00
  %1319 = fmul fast float %1204, %1190
  %1320 = fadd fast float %1319, %1162
  %1321 = fmul fast float %1190, 0x3FFBB67AE0000000
  %1322 = fmul fast float %1321, %1204
  %1323 = fmul fast float %1322, %1214
  %1324 = fadd fast float %1323, %1161
  %1325 = fmul fast float %1322, %1219
  %1326 = fadd fast float %1325, %1160
  %1327 = fmul fast float %1322, %1224
  %1328 = fadd fast float %1327, %1159
  %1329 = fmul fast float %1190, 0x3FFEFBDEC0000000
  %1330 = fmul fast float %1329, %1204
  %1331 = fmul fast float %1330, %1228
  %1332 = fadd fast float %1331, %1158
  %1333 = fmul fast float %1330, %1232
  %1334 = fadd fast float %1333, %1157
  %1335 = fmul fast float %1190, 0x4001E377A0000000
  %1336 = fmul fast float %1335, %1204
  %1337 = fmul fast float %1336, %1237
  %1338 = fadd fast float %1337, %1156
  %1339 = fmul fast float %1330, %1242
  %1340 = fadd fast float %1339, %1155
  %1341 = fmul fast float %1330, %1246
  %1342 = fadd fast float %1341, %1154
  %1343 = fmul fast float %1207, %1190
  %1344 = fadd fast float %1343, %1171
  %1345 = fmul fast float %1321, %1207
  %1346 = fmul fast float %1345, %1250
  %1347 = fadd fast float %1346, %1170
  %1348 = fmul fast float %1345, %1255
  %1349 = fadd fast float %1348, %1169
  %1350 = fmul fast float %1345, %1260
  %1351 = fadd fast float %1350, %1168
  %1352 = fmul fast float %1329, %1207
  %1353 = fmul fast float %1352, %1264
  %1354 = fadd fast float %1353, %1167
  %1355 = fmul fast float %1352, %1268
  %1356 = fadd fast float %1355, %1166
  %1357 = fmul fast float %1335, %1207
  %1358 = fmul fast float %1357, %1273
  %1359 = fadd fast float %1358, %1165
  %1360 = fmul fast float %1352, %1278
  %1361 = fadd fast float %1360, %1164
  %1362 = fmul fast float %1352, %1282
  %1363 = fadd fast float %1362, %1163
  %1364 = fmul fast float %1210, %1190
  %1365 = fadd fast float %1364, %1180
  %1366 = fmul fast float %1321, %1210
  %1367 = fmul fast float %1366, %1286
  %1368 = fadd fast float %1367, %1179
  %1369 = fmul fast float %1366, %1291
  %1370 = fadd fast float %1369, %1178
  %1371 = fmul fast float %1366, %1296
  %1372 = fadd fast float %1371, %1177
  %1373 = fmul fast float %1329, %1210
  %1374 = fmul fast float %1373, %1300
  %1375 = fadd fast float %1374, %1176
  %1376 = fmul fast float %1373, %1304
  %1377 = fadd fast float %1376, %1175
  %1378 = fmul fast float %1335, %1210
  %1379 = fmul fast float %1378, %1309
  %1380 = fadd fast float %1379, %1174
  %1381 = fmul fast float %1373, %1314
  %1382 = fadd fast float %1381, %1173
  %1383 = fmul fast float %1373, %1318
  %1384 = fadd fast float %1383, %1172
  %1385 = fadd fast float %1190, %1181
  %1386 = fadd fast float %1190, %1182
  br label %1387

; <label>:1387                                    ; preds = %1185, %1152
  %1388 = phi float [ %1342, %1185 ], [ %1154, %1152 ]
  %1389 = phi float [ %1340, %1185 ], [ %1155, %1152 ]
  %1390 = phi float [ %1338, %1185 ], [ %1156, %1152 ]
  %1391 = phi float [ %1334, %1185 ], [ %1157, %1152 ]
  %1392 = phi float [ %1332, %1185 ], [ %1158, %1152 ]
  %1393 = phi float [ %1328, %1185 ], [ %1159, %1152 ]
  %1394 = phi float [ %1326, %1185 ], [ %1160, %1152 ]
  %1395 = phi float [ %1324, %1185 ], [ %1161, %1152 ]
  %1396 = phi float [ %1320, %1185 ], [ %1162, %1152 ]
  %1397 = phi float [ %1363, %1185 ], [ %1163, %1152 ]
  %1398 = phi float [ %1361, %1185 ], [ %1164, %1152 ]
  %1399 = phi float [ %1359, %1185 ], [ %1165, %1152 ]
  %1400 = phi float [ %1356, %1185 ], [ %1166, %1152 ]
  %1401 = phi float [ %1354, %1185 ], [ %1167, %1152 ]
  %1402 = phi float [ %1351, %1185 ], [ %1168, %1152 ]
  %1403 = phi float [ %1349, %1185 ], [ %1169, %1152 ]
  %1404 = phi float [ %1347, %1185 ], [ %1170, %1152 ]
  %1405 = phi float [ %1344, %1185 ], [ %1171, %1152 ]
  %1406 = phi float [ %1384, %1185 ], [ %1172, %1152 ]
  %1407 = phi float [ %1382, %1185 ], [ %1173, %1152 ]
  %1408 = phi float [ %1380, %1185 ], [ %1174, %1152 ]
  %1409 = phi float [ %1377, %1185 ], [ %1175, %1152 ]
  %1410 = phi float [ %1375, %1185 ], [ %1176, %1152 ]
  %1411 = phi float [ %1372, %1185 ], [ %1177, %1152 ]
  %1412 = phi float [ %1370, %1185 ], [ %1178, %1152 ]
  %1413 = phi float [ %1368, %1185 ], [ %1179, %1152 ]
  %1414 = phi float [ %1365, %1185 ], [ %1180, %1152 ]
  %1415 = phi float [ %1385, %1185 ], [ %1181, %1152 ]
  %1416 = phi float [ %1386, %1185 ], [ %1182, %1152 ]
  %1417 = add nuw nsw i32 %1183, 1
  %1418 = icmp eq i32 %1417, 4
  br i1 %1418, label %1422, label %1419

; <label>:1419                                    ; preds = %1387
  %1420 = getelementptr [4 x float], [4 x float]* %31, i32 0, i32 %1417
  %1421 = load float, float* %1420, align 4, !tbaa !71, !noalias !63
  br label %1152

; <label>:1422                                    ; preds = %1387
  %1423 = fcmp fast ogt float %1416, 0.000000e+00
  %1424 = fdiv fast float 1.000000e+00, %1416
  %1425 = select i1 %1423, float %1424, float 1.000000e+00
  %1426 = fmul fast float %1425, %1396
  %1427 = fmul fast float %1425, %1395
  %1428 = fmul fast float %1425, %1394
  %1429 = fmul fast float %1425, %1393
  %1430 = fmul fast float %1425, %1392
  %1431 = fmul fast float %1425, %1391
  %1432 = fmul fast float %1425, %1390
  %1433 = fmul fast float %1425, %1389
  %1434 = fmul fast float %1425, %1388
  %1435 = fmul fast float %1425, %1405
  %1436 = fmul fast float %1425, %1404
  %1437 = fmul fast float %1425, %1403
  %1438 = fmul fast float %1425, %1402
  %1439 = fmul fast float %1425, %1401
  %1440 = fmul fast float %1425, %1400
  %1441 = fmul fast float %1425, %1399
  %1442 = fmul fast float %1425, %1398
  %1443 = fmul fast float %1425, %1397
  %1444 = fmul fast float %1425, %1414
  %1445 = fmul fast float %1425, %1413
  %1446 = fmul fast float %1425, %1412
  %1447 = fmul fast float %1425, %1411
  %1448 = fmul fast float %1425, %1410
  %1449 = fmul fast float %1425, %1409
  %1450 = fmul fast float %1425, %1408
  %1451 = fmul fast float %1425, %1407
  %1452 = fmul fast float %1425, %1406
  br label %1453

; <label>:1453                                    ; preds = %1422, %679
  %1454 = phi float [ %715, %679 ], [ %1434, %1422 ]
  %1455 = phi float [ %713, %679 ], [ %1433, %1422 ]
  %1456 = phi float [ %711, %679 ], [ %1432, %1422 ]
  %1457 = phi float [ %709, %679 ], [ %1431, %1422 ]
  %1458 = phi float [ %707, %679 ], [ %1430, %1422 ]
  %1459 = phi float [ %705, %679 ], [ %1429, %1422 ]
  %1460 = phi float [ %703, %679 ], [ %1428, %1422 ]
  %1461 = phi float [ %701, %679 ], [ %1427, %1422 ]
  %1462 = phi float [ %699, %679 ], [ %1426, %1422 ]
  %1463 = phi float [ %733, %679 ], [ %1443, %1422 ]
  %1464 = phi float [ %731, %679 ], [ %1442, %1422 ]
  %1465 = phi float [ %729, %679 ], [ %1441, %1422 ]
  %1466 = phi float [ %727, %679 ], [ %1440, %1422 ]
  %1467 = phi float [ %725, %679 ], [ %1439, %1422 ]
  %1468 = phi float [ %723, %679 ], [ %1438, %1422 ]
  %1469 = phi float [ %721, %679 ], [ %1437, %1422 ]
  %1470 = phi float [ %719, %679 ], [ %1436, %1422 ]
  %1471 = phi float [ %717, %679 ], [ %1435, %1422 ]
  %1472 = phi float [ %751, %679 ], [ %1452, %1422 ]
  %1473 = phi float [ %749, %679 ], [ %1451, %1422 ]
  %1474 = phi float [ %747, %679 ], [ %1450, %1422 ]
  %1475 = phi float [ %745, %679 ], [ %1449, %1422 ]
  %1476 = phi float [ %743, %679 ], [ %1448, %1422 ]
  %1477 = phi float [ %741, %679 ], [ %1447, %1422 ]
  %1478 = phi float [ %739, %679 ], [ %1446, %1422 ]
  %1479 = phi float [ %737, %679 ], [ %1445, %1422 ]
  %1480 = phi float [ %735, %679 ], [ %1444, %1422 ]
  %1481 = phi float [ %753, %679 ], [ %1415, %1422 ]
  %1482 = phi i32 [ 1, %679 ], [ %1151, %1422 ]
  %1483 = phi i32 [ -1, %679 ], [ %677, %1422 ]
  store float %1462, float* %120, align 4
  store float %1461, float* %121, align 4
  store float %1460, float* %122, align 4
  store float %1459, float* %123, align 4
  store float %1458, float* %124, align 4
  store float %1457, float* %125, align 4
  store float %1456, float* %126, align 4
  store float %1455, float* %127, align 4
  store float %1454, float* %128, align 4
  store float %1471, float* %129, align 4
  store float %1470, float* %130, align 4
  store float %1469, float* %131, align 4
  store float %1468, float* %132, align 4
  store float %1467, float* %133, align 4
  store float %1466, float* %134, align 4
  store float %1465, float* %135, align 4
  store float %1464, float* %136, align 4
  store float %1463, float* %137, align 4
  store float %1480, float* %138, align 4
  store float %1479, float* %139, align 4
  store float %1478, float* %140, align 4
  store float %1477, float* %141, align 4
  store float %1476, float* %142, align 4
  store float %1475, float* %143, align 4
  store float %1474, float* %144, align 4
  store float %1473, float* %145, align 4
  store float %1472, float* %146, align 4
  %1484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1485 = extractvalue %dx.types.CBufRet.f32 %1484, 3
  %1486 = fcmp fast ogt float %1485, 0.000000e+00
  %1487 = and i1 %159, %1486
  br i1 %1487, label %1488, label %1672, !dx.controlflow.hints !75

; <label>:1488                                    ; preds = %1453
  %1489 = icmp ne i32 %1482, 0
  %1490 = add i32 %147, %73
  %1491 = call i32 @dx.op.binary.i32(i32 40, i32 %1490, i32 49151)  ; UMin(a,b)
  %1492 = mul i32 %1491, 12
  %1493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1492, i32 0)  ; BufferLoad(srv,index,wot)
  %1494 = extractvalue %dx.types.ResRet.i32 %1493, 0
  %1495 = extractvalue %dx.types.ResRet.i32 %1493, 1
  %1496 = and i32 %1494, 65535
  %1497 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1496)  ; LegacyF16ToF32(value)
  %1498 = lshr i32 %1494, 16
  %1499 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1498)  ; LegacyF16ToF32(value)
  %1500 = and i32 %1495, 65535
  %1501 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1500)  ; LegacyF16ToF32(value)
  %1502 = or i32 %1492, 1
  %1503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1502, i32 0)  ; BufferLoad(srv,index,wot)
  %1504 = extractvalue %dx.types.ResRet.i32 %1503, 0
  %1505 = extractvalue %dx.types.ResRet.i32 %1503, 1
  %1506 = and i32 %1504, 65535
  %1507 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1506)  ; LegacyF16ToF32(value)
  %1508 = lshr i32 %1504, 16
  %1509 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1508)  ; LegacyF16ToF32(value)
  %1510 = and i32 %1505, 65535
  %1511 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1510)  ; LegacyF16ToF32(value)
  %1512 = or i32 %1492, 2
  %1513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1512, i32 0)  ; BufferLoad(srv,index,wot)
  %1514 = extractvalue %dx.types.ResRet.i32 %1513, 0
  %1515 = extractvalue %dx.types.ResRet.i32 %1513, 1
  %1516 = and i32 %1514, 65535
  %1517 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1516)  ; LegacyF16ToF32(value)
  %1518 = lshr i32 %1514, 16
  %1519 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1518)  ; LegacyF16ToF32(value)
  %1520 = and i32 %1515, 65535
  %1521 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1520)  ; LegacyF16ToF32(value)
  %1522 = or i32 %1492, 3
  %1523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1522, i32 0)  ; BufferLoad(srv,index,wot)
  %1524 = extractvalue %dx.types.ResRet.i32 %1523, 0
  %1525 = extractvalue %dx.types.ResRet.i32 %1523, 1
  %1526 = and i32 %1524, 65535
  %1527 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1526)  ; LegacyF16ToF32(value)
  %1528 = lshr i32 %1524, 16
  %1529 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1528)  ; LegacyF16ToF32(value)
  %1530 = and i32 %1525, 65535
  %1531 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1530)  ; LegacyF16ToF32(value)
  %1532 = add nsw i32 %1492, 4
  %1533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1532, i32 0)  ; BufferLoad(srv,index,wot)
  %1534 = extractvalue %dx.types.ResRet.i32 %1533, 0
  %1535 = extractvalue %dx.types.ResRet.i32 %1533, 1
  %1536 = and i32 %1534, 65535
  %1537 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1536)  ; LegacyF16ToF32(value)
  %1538 = lshr i32 %1534, 16
  %1539 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1538)  ; LegacyF16ToF32(value)
  %1540 = and i32 %1535, 65535
  %1541 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1540)  ; LegacyF16ToF32(value)
  %1542 = add nsw i32 %1492, 5
  %1543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1542, i32 0)  ; BufferLoad(srv,index,wot)
  %1544 = extractvalue %dx.types.ResRet.i32 %1543, 0
  %1545 = extractvalue %dx.types.ResRet.i32 %1543, 1
  %1546 = and i32 %1544, 65535
  %1547 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1546)  ; LegacyF16ToF32(value)
  %1548 = lshr i32 %1544, 16
  %1549 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1548)  ; LegacyF16ToF32(value)
  %1550 = and i32 %1545, 65535
  %1551 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1550)  ; LegacyF16ToF32(value)
  %1552 = add nsw i32 %1492, 6
  %1553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1552, i32 0)  ; BufferLoad(srv,index,wot)
  %1554 = extractvalue %dx.types.ResRet.i32 %1553, 0
  %1555 = extractvalue %dx.types.ResRet.i32 %1553, 1
  %1556 = and i32 %1554, 65535
  %1557 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1556)  ; LegacyF16ToF32(value)
  %1558 = lshr i32 %1554, 16
  %1559 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1558)  ; LegacyF16ToF32(value)
  %1560 = and i32 %1555, 65535
  %1561 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1560)  ; LegacyF16ToF32(value)
  %1562 = add nsw i32 %1492, 7
  %1563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1562, i32 0)  ; BufferLoad(srv,index,wot)
  %1564 = extractvalue %dx.types.ResRet.i32 %1563, 0
  %1565 = extractvalue %dx.types.ResRet.i32 %1563, 1
  %1566 = and i32 %1564, 65535
  %1567 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1566)  ; LegacyF16ToF32(value)
  %1568 = lshr i32 %1564, 16
  %1569 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1568)  ; LegacyF16ToF32(value)
  %1570 = and i32 %1565, 65535
  %1571 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1570)  ; LegacyF16ToF32(value)
  %1572 = add nsw i32 %1492, 8
  %1573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1572, i32 0)  ; BufferLoad(srv,index,wot)
  %1574 = extractvalue %dx.types.ResRet.i32 %1573, 0
  %1575 = extractvalue %dx.types.ResRet.i32 %1573, 1
  %1576 = and i32 %1574, 65535
  %1577 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1576)  ; LegacyF16ToF32(value)
  %1578 = lshr i32 %1574, 16
  %1579 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1578)  ; LegacyF16ToF32(value)
  %1580 = and i32 %1575, 65535
  %1581 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1580)  ; LegacyF16ToF32(value)
  %1582 = select i1 %1489, float %1485, float 1.000000e+00
  %1583 = fsub fast float %1497, %1462
  %1584 = fmul fast float %1583, %1582
  %1585 = fadd fast float %1584, %1462
  %1586 = fsub fast float %1507, %1461
  %1587 = fmul fast float %1586, %1582
  %1588 = fadd fast float %1587, %1461
  %1589 = fsub fast float %1517, %1460
  %1590 = fmul fast float %1589, %1582
  %1591 = fadd fast float %1590, %1460
  %1592 = fsub fast float %1527, %1459
  %1593 = fmul fast float %1592, %1582
  %1594 = fadd fast float %1593, %1459
  %1595 = fsub fast float %1537, %1458
  %1596 = fmul fast float %1595, %1582
  %1597 = fadd fast float %1596, %1458
  %1598 = fsub fast float %1547, %1457
  %1599 = fmul fast float %1598, %1582
  %1600 = fadd fast float %1599, %1457
  %1601 = fsub fast float %1557, %1456
  %1602 = fmul fast float %1601, %1582
  %1603 = fadd fast float %1602, %1456
  %1604 = fsub fast float %1567, %1455
  %1605 = fmul fast float %1604, %1582
  %1606 = fadd fast float %1605, %1455
  %1607 = fsub fast float %1577, %1454
  %1608 = fmul fast float %1607, %1582
  %1609 = fadd fast float %1608, %1454
  store float %1585, float* %120, align 4
  store float %1588, float* %121, align 4
  store float %1591, float* %122, align 4
  store float %1594, float* %123, align 4
  store float %1597, float* %124, align 4
  store float %1600, float* %125, align 4
  store float %1603, float* %126, align 4
  store float %1606, float* %127, align 4
  store float %1609, float* %128, align 4
  %1610 = fsub fast float %1499, %1471
  %1611 = fmul fast float %1610, %1582
  %1612 = fadd fast float %1611, %1471
  %1613 = fsub fast float %1509, %1470
  %1614 = fmul fast float %1613, %1582
  %1615 = fadd fast float %1614, %1470
  %1616 = fsub fast float %1519, %1469
  %1617 = fmul fast float %1616, %1582
  %1618 = fadd fast float %1617, %1469
  %1619 = fsub fast float %1529, %1468
  %1620 = fmul fast float %1619, %1582
  %1621 = fadd fast float %1620, %1468
  %1622 = fsub fast float %1539, %1467
  %1623 = fmul fast float %1622, %1582
  %1624 = fadd fast float %1623, %1467
  %1625 = fsub fast float %1549, %1466
  %1626 = fmul fast float %1625, %1582
  %1627 = fadd fast float %1626, %1466
  %1628 = fsub fast float %1559, %1465
  %1629 = fmul fast float %1628, %1582
  %1630 = fadd fast float %1629, %1465
  %1631 = fsub fast float %1569, %1464
  %1632 = fmul fast float %1631, %1582
  %1633 = fadd fast float %1632, %1464
  %1634 = fsub fast float %1579, %1463
  %1635 = fmul fast float %1634, %1582
  %1636 = fadd fast float %1635, %1463
  store float %1612, float* %129, align 4
  store float %1615, float* %130, align 4
  store float %1618, float* %131, align 4
  store float %1621, float* %132, align 4
  store float %1624, float* %133, align 4
  store float %1627, float* %134, align 4
  store float %1630, float* %135, align 4
  store float %1633, float* %136, align 4
  store float %1636, float* %137, align 4
  %1637 = fsub fast float %1501, %1480
  %1638 = fmul fast float %1637, %1582
  %1639 = fadd fast float %1638, %1480
  %1640 = fsub fast float %1511, %1479
  %1641 = fmul fast float %1640, %1582
  %1642 = fadd fast float %1641, %1479
  %1643 = fsub fast float %1521, %1478
  %1644 = fmul fast float %1643, %1582
  %1645 = fadd fast float %1644, %1478
  %1646 = fsub fast float %1531, %1477
  %1647 = fmul fast float %1646, %1582
  %1648 = fadd fast float %1647, %1477
  %1649 = fsub fast float %1541, %1476
  %1650 = fmul fast float %1649, %1582
  %1651 = fadd fast float %1650, %1476
  %1652 = fsub fast float %1551, %1475
  %1653 = fmul fast float %1652, %1582
  %1654 = fadd fast float %1653, %1475
  %1655 = fsub fast float %1561, %1474
  %1656 = fmul fast float %1655, %1582
  %1657 = fadd fast float %1656, %1474
  %1658 = fsub fast float %1571, %1473
  %1659 = fmul fast float %1658, %1582
  %1660 = fadd fast float %1659, %1473
  %1661 = fsub fast float %1581, %1472
  %1662 = fmul fast float %1661, %1582
  %1663 = fadd fast float %1662, %1472
  store float %1639, float* %138, align 4
  store float %1642, float* %139, align 4
  store float %1645, float* %140, align 4
  store float %1648, float* %141, align 4
  store float %1651, float* %142, align 4
  store float %1654, float* %143, align 4
  store float %1657, float* %144, align 4
  store float %1660, float* %145, align 4
  store float %1663, float* %146, align 4
  %1664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1491, i32 undef)  ; BufferLoad(srv,index,wot)
  %1665 = extractvalue %dx.types.ResRet.i32 %1664, 0
  %1666 = lshr i32 %1665, 24
  %1667 = uitofp i32 %1666 to float
  %1668 = fmul fast float %1667, 0x3F70101020000000
  %1669 = fsub fast float %1668, %1481
  %1670 = fmul fast float %1669, %1485
  %1671 = fadd fast float %1670, %1481
  br label %1672

; <label>:1672                                    ; preds = %1488, %1453
  %1673 = phi float [ %1651, %1488 ], [ %1476, %1453 ]
  %1674 = phi float [ %1624, %1488 ], [ %1467, %1453 ]
  %1675 = phi float [ %1597, %1488 ], [ %1458, %1453 ]
  %1676 = phi float [ %1663, %1488 ], [ %1472, %1453 ]
  %1677 = phi float [ %1636, %1488 ], [ %1463, %1453 ]
  %1678 = phi float [ %1609, %1488 ], [ %1454, %1453 ]
  %1679 = phi float [ %1654, %1488 ], [ %1475, %1453 ]
  %1680 = phi float [ %1627, %1488 ], [ %1466, %1453 ]
  %1681 = phi float [ %1600, %1488 ], [ %1457, %1453 ]
  %1682 = phi float [ %1660, %1488 ], [ %1473, %1453 ]
  %1683 = phi float [ %1633, %1488 ], [ %1464, %1453 ]
  %1684 = phi float [ %1606, %1488 ], [ %1455, %1453 ]
  %1685 = phi float [ %1648, %1488 ], [ %1477, %1453 ]
  %1686 = phi float [ %1621, %1488 ], [ %1468, %1453 ]
  %1687 = phi float [ %1594, %1488 ], [ %1459, %1453 ]
  %1688 = phi float [ %1642, %1488 ], [ %1479, %1453 ]
  %1689 = phi float [ %1615, %1488 ], [ %1470, %1453 ]
  %1690 = phi float [ %1588, %1488 ], [ %1461, %1453 ]
  %1691 = phi float [ %1657, %1488 ], [ %1474, %1453 ]
  %1692 = phi float [ %1630, %1488 ], [ %1465, %1453 ]
  %1693 = phi float [ %1603, %1488 ], [ %1456, %1453 ]
  %1694 = phi float [ %1645, %1488 ], [ %1478, %1453 ]
  %1695 = phi float [ %1618, %1488 ], [ %1469, %1453 ]
  %1696 = phi float [ %1591, %1488 ], [ %1460, %1453 ]
  %1697 = phi float [ %1639, %1488 ], [ %1480, %1453 ]
  %1698 = phi float [ %1612, %1488 ], [ %1471, %1453 ]
  %1699 = phi float [ %1585, %1488 ], [ %1462, %1453 ]
  %1700 = phi float [ %1671, %1488 ], [ %1481, %1453 ]
  %1701 = icmp eq i32 %83, 65535
  br i1 %1701, label %1737, label %1702, !dx.controlflow.hints !76

; <label>:1702                                    ; preds = %1672
  %1703 = add i32 %83, %73
  %1704 = call i32 @dx.op.binary.i32(i32 40, i32 %1703, i32 49151)  ; UMin(a,b)
  %1705 = mul i32 %1704, 12
  br label %1706

; <label>:1706                                    ; preds = %1722, %1702
  %1707 = phi float [ %1697, %1702 ], [ %1728, %1722 ]
  %1708 = phi float [ %1698, %1702 ], [ %1726, %1722 ]
  %1709 = phi float [ %1699, %1702 ], [ %1724, %1722 ]
  %1710 = phi i32 [ 0, %1702 ], [ %1720, %1722 ]
  %1711 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1709)  ; LegacyF32ToF16(value)
  %1712 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1708)  ; LegacyF32ToF16(value)
  %1713 = shl i32 %1712, 16
  %1714 = or i32 %1713, %1711
  %1715 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1707)  ; LegacyF32ToF16(value)
  %1716 = call i32 @dx.op.legacyF32ToF16(i32 130, float 1.000000e+00)  ; LegacyF32ToF16(value)
  %1717 = shl i32 %1716, 16
  %1718 = or i32 %1717, %1715
  %1719 = add nsw i32 %1710, %1705
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1719, i32 0, i32 %1714, i32 %1718, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1720 = add nuw nsw i32 %1710, 1
  %1721 = icmp eq i32 %1720, 9
  br i1 %1721, label %1729, label %1722

; <label>:1722                                    ; preds = %1706
  %1723 = getelementptr inbounds [9 x float], [9 x float]* %27, i32 0, i32 %1720
  %1724 = load float, float* %1723, align 4, !tbaa !71
  %1725 = getelementptr inbounds [9 x float], [9 x float]* %25, i32 0, i32 %1720
  %1726 = load float, float* %1725, align 4, !tbaa !71
  %1727 = getelementptr inbounds [9 x float], [9 x float]* %26, i32 0, i32 %1720
  %1728 = load float, float* %1727, align 4, !tbaa !71
  br label %1706

; <label>:1729                                    ; preds = %1706
  %1730 = call float @dx.op.unary.f32(i32 7, float %1700)  ; Saturate(value)
  %1731 = fmul fast float %1730, 2.550000e+02
  %1732 = fadd fast float %1731, 5.000000e-01
  %1733 = fptosi float %1732 to i32
  %1734 = shl i32 %1733, 24
  %1735 = and i32 %1483, 16777215
  %1736 = or i32 %1734, %1735
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %4, i32 %1704, i32 undef, i32 %1736, i32 %1736, i32 %1736, i32 %1736, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1737

; <label>:1737                                    ; preds = %1729, %1672
  %1738 = fmul fast float %99, 6.400000e+01
  %1739 = fmul fast float %100, 6.400000e+01
  %1740 = fmul fast float %101, 1.600000e+01
  %1741 = fptosi float %1738 to i32
  %1742 = fptosi float %1739 to i32
  %1743 = fptosi float %1740 to i32
  %1744 = add i32 %114, %1741
  %1745 = add i32 %113, %1742
  %1746 = add i32 %1743, %111
  %1747 = fdiv fast float 1.000000e+00, %1699
  %1748 = fdiv fast float 1.000000e+00, %1698
  %1749 = fdiv fast float 1.000000e+00, %1697
  %1750 = fmul fast float %1747, 0x3FD279A740000000
  %1751 = fmul fast float %1750, %1696
  %1752 = fmul fast float %1748, 0x3FD279A740000000
  %1753 = fmul fast float %1752, %1695
  %1754 = fmul fast float %1749, 0x3FD279A740000000
  %1755 = fmul fast float %1754, %1694
  %1756 = fmul fast float %1747, 0x3FCC9F25C0000000
  %1757 = fmul fast float %1756, %1693
  %1758 = fadd fast float %1751, 5.000000e-01
  %1759 = fadd fast float %1753, 5.000000e-01
  %1760 = fadd fast float %1755, 5.000000e-01
  %1761 = fadd fast float %1757, 5.000000e-01
  %1762 = fmul fast float %1748, 0x3FCC9F25C0000000
  %1763 = fmul fast float %1762, %1692
  %1764 = fmul fast float %1749, 0x3FCC9F25C0000000
  %1765 = fmul fast float %1764, %1691
  %1766 = fmul fast float %1750, %1690
  %1767 = fmul fast float %1752, %1689
  %1768 = fadd fast float %1763, 5.000000e-01
  %1769 = fadd fast float %1765, 5.000000e-01
  %1770 = fadd fast float %1766, 5.000000e-01
  %1771 = fadd fast float %1767, 5.000000e-01
  %1772 = fmul fast float %1754, %1688
  %1773 = fmul fast float %1750, %1687
  %1774 = fmul fast float %1752, %1686
  %1775 = fmul fast float %1754, %1685
  %1776 = fadd fast float %1772, 5.000000e-01
  %1777 = fadd fast float %1773, 5.000000e-01
  %1778 = fadd fast float %1774, 5.000000e-01
  %1779 = fadd fast float %1775, 5.000000e-01
  %1780 = fmul fast float %1747, 0x3FD08654A0000000
  %1781 = fmul fast float %1780, %1684
  %1782 = fmul fast float %1748, 0x3FD08654A0000000
  %1783 = fmul fast float %1782, %1683
  %1784 = fmul fast float %1749, 0x3FD08654A0000000
  %1785 = fmul fast float %1784, %1682
  %1786 = fmul fast float %1780, %1681
  %1787 = fadd fast float %1781, 5.000000e-01
  %1788 = fadd fast float %1783, 5.000000e-01
  %1789 = fadd fast float %1785, 5.000000e-01
  %1790 = fadd fast float %1786, 5.000000e-01
  %1791 = fmul fast float %1782, %1680
  %1792 = fmul fast float %1784, %1679
  %1793 = fmul fast float %1780, %1678
  %1794 = fmul fast float %1782, %1677
  %1795 = fadd fast float %1791, 5.000000e-01
  %1796 = fadd fast float %1792, 5.000000e-01
  %1797 = fadd fast float %1793, 5.000000e-01
  %1798 = fadd fast float %1794, 5.000000e-01
  %1799 = fmul fast float %1784, %1676
  %1800 = fmul fast float %1780, %1675
  %1801 = fmul fast float %1782, %1674
  %1802 = fmul fast float %1784, %1673
  %1803 = fadd fast float %1799, 5.000000e-01
  %1804 = fadd fast float %1800, 5.000000e-01
  %1805 = fadd fast float %1801, 5.000000e-01
  %1806 = fadd fast float %1802, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %1744, i32 %1745, i32 %1746, float %1699, float %1698, float %1697, float %1699, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %1744, i32 %1745, i32 %1746, float %1758, float %1759, float %1760, float %1761, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1807 = add i32 %1744, 64
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %1807, i32 %1745, i32 %1746, float %1768, float %1769, float %1770, float %1771, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1808 = add i32 %1745, 64
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %1744, i32 %1808, i32 %1746, float %1776, float %1777, float %1778, float %1779, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %1807, i32 %1808, i32 %1746, float %1787, float %1788, float %1789, float %1790, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1809 = add i32 %1745, 128
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %1744, i32 %1809, i32 %1746, float %1795, float %1796, float %1797, float %1798, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %1807, i32 %1809, i32 %1746, float %1803, float %1804, float %1805, float %1806, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1810

; <label>:1810                                    ; preds = %1737, %79, %72, %0
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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #3

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #2

attributes #0 = { nounwind readnone }
attributes #1 = { noduplicate nounwind }
attributes #2 = { nounwind readonly }
attributes #3 = { nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!34}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !23, !30, null}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !21}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!8 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!9 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 3, i32 1, i32 11, i32 0, null}
!10 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 8, i32 1, i32 11, i32 0, null}
!11 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 4, i32 1, i32 11, i32 0, null}
!12 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 5, i32 1, i32 11, i32 0, null}
!13 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 6, i32 1, i32 11, i32 0, null}
!14 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 7, i32 1, i32 11, i32 0, null}
!15 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 13, i32 1, i32 11, i32 0, null}
!16 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 14, i32 1, i32 11, i32 0, null}
!17 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 15, i32 1, i32 11, i32 0, null}
!18 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 17, i32 1, i32 11, i32 0, null}
!19 = !{i32 13, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 19, i32 1, i32 10, i32 0, !20}
!20 = !{i32 0, i32 5}
!21 = !{i32 14, %"class.StructuredBuffer<vector<unsigned int, 2> >"* undef, !"", i32 0, i32 18, i32 1, i32 12, i32 0, !22}
!22 = !{i32 1, i32 8}
!23 = !{!24, !25, !27, !29}
!24 = !{i32 0, %"class.RWBuffer<unsigned int>"* undef, !"", i32 0, i32 3, i32 1, i32 10, i1 false, i1 false, i1 false, !20}
!25 = !{i32 1, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 4, i1 false, i1 false, i1 false, !26}
!26 = !{i32 0, i32 9}
!27 = !{i32 2, %"class.RWTexture3D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 4, i1 false, i1 false, i1 false, !28}
!28 = !{i32 0, i32 14}
!29 = !{i32 3, %"class.RWStructuredBuffer<vector<unsigned int, 2> >"* undef, !"", i32 0, i32 2, i32 1, i32 12, i1 false, i1 false, i1 false, !22}
!30 = !{!31, !32, !33}
!31 = !{i32 0, %GfxLGBoundConsts* undef, !"", i32 0, i32 4, i32 1, i32 16, null}
!32 = !{i32 1, %GfxSampleLightGridVolumesLightingConsts* undef, !"", i32 0, i32 0, i32 1, i32 48, null}
!33 = !{i32 2, %GfxSampleLightGridVolumesLightingVoxelTreeConsts* undef, !"", i32 0, i32 1, i32 1, i32 16, null}
!34 = !{void ()* @cs_sample_lightgrid_volumes_lighting, !"cs_sample_lightgrid_volumes_lighting", null, !4, !35}
!35 = !{i32 0, i64 272, i32 4, !36}
!36 = !{i32 64, i32 1, i32 1}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = !{!39, !39, i64 0}
!39 = !{!"int", !40, i64 0}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C/C++ TBAA"}
!42 = !{!43, !45}
!43 = distinct !{!43, !44, !"\01?FindProbeToProcess@@YAXHHIAIAH0@Z: %volumeIndex"}
!44 = distinct !{!44, !"\01?FindProbeToProcess@@YAXHHIAIAH0@Z"}
!45 = distinct !{!45, !44, !"\01?FindProbeToProcess@@YAXHHIAIAH0@Z: %volumeProbeIndex"}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 1}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !59}
!59 = !{!"llvm.loop.unroll.disable"}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = !{!64, !66, !67, !68, !69, !70}
!64 = distinct !{!64, !65, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %probeR"}
!65 = distinct !{!65, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z"}
!66 = distinct !{!66, !65, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %probeG"}
!67 = distinct !{!67, !65, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %probeB"}
!68 = distinct !{!68, !65, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %probeA"}
!69 = distinct !{!69, !65, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %primaryVisibility"}
!70 = distinct !{!70, !65, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %usedTet"}
!71 = !{!72, !72, i64 0}
!72 = !{!"float", !40, i64 0}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 1}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}

