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
; shader hash: 59ec78c9a65900893df663cbda8305b2
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
;   [32 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb0     1
;                                   sampler      NA          NA      S0             s1     1
;                                   texture     f32          2d      T0             t0     1
;                                       UAV     u32     2darray      U0             u0     1
;                                       UAV     u32     2darray      U1             u1     1
;                                       UAV     u32     2darray      U2             u2     1
;                                       UAV     u32     2darray      U3             u3     1
;                                       UAV     u32     2darray      U4             u4     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.RWTexture2DArray<vector<unsigned int, 4> >" = type { <4 x i32> }
%ConstantBufferRuntimeCompression = type { float, i32, i32, i32, i32, i32, i32, i32 }
%struct.SamplerState = type { i32 }

define void @cs_bc3_compress_tail_mips() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %10 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %11 = alloca [16 x float], align 4
  %12 = alloca [16 x float], align 4
  %13 = alloca [16 x float], align 4
  %14 = alloca [16 x float], align 4
  %15 = icmp ult i32 %9, 4
  br i1 %15, label %16, label %22, !dx.controlflow.hints !22

; <label>:16                                      ; preds = %0
  %17 = icmp ult i32 %10, 4
  %18 = add i32 %10, -4
  %19 = select i1 %17, i32 %10, i32 %18
  %20 = select i1 %17, i32 0, i32 4
  %21 = select i1 %17, float 6.250000e-02, float 1.000000e+00
  br label %39

; <label>:22                                      ; preds = %0
  %23 = icmp ult i32 %9, 6
  br i1 %23, label %24, label %27, !dx.controlflow.hints !23

; <label>:24                                      ; preds = %22
  %25 = add i32 %9, -4
  %26 = add i32 %10, -4
  br label %39

; <label>:27                                      ; preds = %22
  %28 = icmp ult i32 %9, 7
  br i1 %28, label %29, label %31, !dx.controlflow.hints !24

; <label>:29                                      ; preds = %27
  %30 = add i32 %10, -6
  br label %39

; <label>:31                                      ; preds = %27
  %32 = icmp ult i32 %9, 8
  %33 = add i32 %9, -7
  %34 = add i32 %10, -7
  %35 = select i1 %32, i32 %33, i32 %9
  %36 = select i1 %32, i32 %34, i32 %10
  %37 = select i1 %32, i32 3, i32 0
  %38 = select i1 %32, float 5.000000e-01, float 1.000000e+00
  br label %39

; <label>:39                                      ; preds = %31, %29, %24, %16
  %40 = phi i32 [ %25, %24 ], [ 0, %29 ], [ %35, %31 ], [ %9, %16 ]
  %41 = phi i32 [ %26, %24 ], [ %30, %29 ], [ %36, %31 ], [ %19, %16 ]
  %42 = phi i32 [ 1, %24 ], [ 2, %29 ], [ %37, %31 ], [ %20, %16 ]
  %43 = phi float [ 1.250000e-01, %24 ], [ 2.500000e-01, %29 ], [ %38, %31 ], [ %21, %16 ]
  %44 = shl i32 %40, 2
  %45 = shl i32 %41, 2
  %46 = uitofp i32 %44 to float
  %47 = uitofp i32 %45 to float
  %48 = fmul fast float %43, %46
  %49 = fmul fast float %47, %43
  %50 = uitofp i32 %42 to float
  %51 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %7, float %48, float %49, float undef, float undef, i32 0, i32 0, i32 undef, float %50)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %52 = extractvalue %dx.types.ResRet.f32 %51, 0
  %53 = extractvalue %dx.types.ResRet.f32 %51, 1
  %54 = extractvalue %dx.types.ResRet.f32 %51, 2
  %55 = extractvalue %dx.types.ResRet.f32 %51, 3
  %56 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 0
  %57 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 0
  %58 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 0
  store float %52, float* %56, align 4
  store float %53, float* %57, align 4
  store float %54, float* %58, align 4
  %59 = getelementptr inbounds [16 x float], [16 x float]* %14, i32 0, i32 0
  store float %55, float* %59, align 4, !tbaa !25, !alias.scope !29, !noalias !32
  %60 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %7, float %48, float %49, float undef, float undef, i32 1, i32 0, i32 undef, float %50)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %61 = extractvalue %dx.types.ResRet.f32 %60, 0
  %62 = extractvalue %dx.types.ResRet.f32 %60, 1
  %63 = extractvalue %dx.types.ResRet.f32 %60, 2
  %64 = extractvalue %dx.types.ResRet.f32 %60, 3
  %65 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 1
  %66 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 1
  %67 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 1
  store float %61, float* %65, align 4
  store float %62, float* %66, align 4
  store float %63, float* %67, align 4
  %68 = getelementptr inbounds [16 x float], [16 x float]* %14, i32 0, i32 1
  store float %64, float* %68, align 4, !tbaa !25, !alias.scope !29, !noalias !32
  %69 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %7, float %48, float %49, float undef, float undef, i32 2, i32 0, i32 undef, float %50)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %70 = extractvalue %dx.types.ResRet.f32 %69, 0
  %71 = extractvalue %dx.types.ResRet.f32 %69, 1
  %72 = extractvalue %dx.types.ResRet.f32 %69, 2
  %73 = extractvalue %dx.types.ResRet.f32 %69, 3
  %74 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 2
  %75 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 2
  %76 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 2
  store float %70, float* %74, align 4
  store float %71, float* %75, align 4
  store float %72, float* %76, align 4
  %77 = getelementptr inbounds [16 x float], [16 x float]* %14, i32 0, i32 2
  store float %73, float* %77, align 4, !tbaa !25, !alias.scope !29, !noalias !32
  %78 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %7, float %48, float %49, float undef, float undef, i32 3, i32 0, i32 undef, float %50)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %79 = extractvalue %dx.types.ResRet.f32 %78, 0
  %80 = extractvalue %dx.types.ResRet.f32 %78, 1
  %81 = extractvalue %dx.types.ResRet.f32 %78, 2
  %82 = extractvalue %dx.types.ResRet.f32 %78, 3
  %83 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 3
  %84 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 3
  %85 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 3
  store float %79, float* %83, align 4
  store float %80, float* %84, align 4
  store float %81, float* %85, align 4
  %86 = getelementptr inbounds [16 x float], [16 x float]* %14, i32 0, i32 3
  store float %82, float* %86, align 4, !tbaa !25, !alias.scope !29, !noalias !32
  %87 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %7, float %48, float %49, float undef, float undef, i32 0, i32 1, i32 undef, float %50)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %88 = extractvalue %dx.types.ResRet.f32 %87, 0
  %89 = extractvalue %dx.types.ResRet.f32 %87, 1
  %90 = extractvalue %dx.types.ResRet.f32 %87, 2
  %91 = extractvalue %dx.types.ResRet.f32 %87, 3
  %92 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 4
  %93 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 4
  %94 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 4
  store float %88, float* %92, align 4
  store float %89, float* %93, align 4
  store float %90, float* %94, align 4
  %95 = getelementptr inbounds [16 x float], [16 x float]* %14, i32 0, i32 4
  store float %91, float* %95, align 4, !tbaa !25, !alias.scope !29, !noalias !32
  %96 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %7, float %48, float %49, float undef, float undef, i32 1, i32 1, i32 undef, float %50)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %97 = extractvalue %dx.types.ResRet.f32 %96, 0
  %98 = extractvalue %dx.types.ResRet.f32 %96, 1
  %99 = extractvalue %dx.types.ResRet.f32 %96, 2
  %100 = extractvalue %dx.types.ResRet.f32 %96, 3
  %101 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 5
  %102 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 5
  %103 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 5
  store float %97, float* %101, align 4
  store float %98, float* %102, align 4
  store float %99, float* %103, align 4
  %104 = getelementptr inbounds [16 x float], [16 x float]* %14, i32 0, i32 5
  store float %100, float* %104, align 4, !tbaa !25, !alias.scope !29, !noalias !32
  %105 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %7, float %48, float %49, float undef, float undef, i32 2, i32 1, i32 undef, float %50)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %106 = extractvalue %dx.types.ResRet.f32 %105, 0
  %107 = extractvalue %dx.types.ResRet.f32 %105, 1
  %108 = extractvalue %dx.types.ResRet.f32 %105, 2
  %109 = extractvalue %dx.types.ResRet.f32 %105, 3
  %110 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 6
  %111 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 6
  %112 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 6
  store float %106, float* %110, align 4
  store float %107, float* %111, align 4
  store float %108, float* %112, align 4
  %113 = getelementptr inbounds [16 x float], [16 x float]* %14, i32 0, i32 6
  store float %109, float* %113, align 4, !tbaa !25, !alias.scope !29, !noalias !32
  %114 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %7, float %48, float %49, float undef, float undef, i32 3, i32 1, i32 undef, float %50)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %115 = extractvalue %dx.types.ResRet.f32 %114, 0
  %116 = extractvalue %dx.types.ResRet.f32 %114, 1
  %117 = extractvalue %dx.types.ResRet.f32 %114, 2
  %118 = extractvalue %dx.types.ResRet.f32 %114, 3
  %119 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 7
  %120 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 7
  %121 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 7
  store float %115, float* %119, align 4
  store float %116, float* %120, align 4
  store float %117, float* %121, align 4
  %122 = getelementptr inbounds [16 x float], [16 x float]* %14, i32 0, i32 7
  store float %118, float* %122, align 4, !tbaa !25, !alias.scope !29, !noalias !32
  %123 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %7, float %48, float %49, float undef, float undef, i32 0, i32 2, i32 undef, float %50)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %124 = extractvalue %dx.types.ResRet.f32 %123, 0
  %125 = extractvalue %dx.types.ResRet.f32 %123, 1
  %126 = extractvalue %dx.types.ResRet.f32 %123, 2
  %127 = extractvalue %dx.types.ResRet.f32 %123, 3
  %128 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 8
  %129 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 8
  %130 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 8
  store float %124, float* %128, align 4
  store float %125, float* %129, align 4
  store float %126, float* %130, align 4
  %131 = getelementptr inbounds [16 x float], [16 x float]* %14, i32 0, i32 8
  store float %127, float* %131, align 4, !tbaa !25, !alias.scope !29, !noalias !32
  %132 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %7, float %48, float %49, float undef, float undef, i32 1, i32 2, i32 undef, float %50)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %133 = extractvalue %dx.types.ResRet.f32 %132, 0
  %134 = extractvalue %dx.types.ResRet.f32 %132, 1
  %135 = extractvalue %dx.types.ResRet.f32 %132, 2
  %136 = extractvalue %dx.types.ResRet.f32 %132, 3
  %137 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 9
  %138 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 9
  %139 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 9
  store float %133, float* %137, align 4
  store float %134, float* %138, align 4
  store float %135, float* %139, align 4
  %140 = getelementptr inbounds [16 x float], [16 x float]* %14, i32 0, i32 9
  store float %136, float* %140, align 4, !tbaa !25, !alias.scope !29, !noalias !32
  %141 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %7, float %48, float %49, float undef, float undef, i32 2, i32 2, i32 undef, float %50)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %142 = extractvalue %dx.types.ResRet.f32 %141, 0
  %143 = extractvalue %dx.types.ResRet.f32 %141, 1
  %144 = extractvalue %dx.types.ResRet.f32 %141, 2
  %145 = extractvalue %dx.types.ResRet.f32 %141, 3
  %146 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 10
  %147 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 10
  %148 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 10
  store float %142, float* %146, align 4
  store float %143, float* %147, align 4
  store float %144, float* %148, align 4
  %149 = getelementptr inbounds [16 x float], [16 x float]* %14, i32 0, i32 10
  store float %145, float* %149, align 4, !tbaa !25, !alias.scope !29, !noalias !32
  %150 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %7, float %48, float %49, float undef, float undef, i32 3, i32 2, i32 undef, float %50)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %151 = extractvalue %dx.types.ResRet.f32 %150, 0
  %152 = extractvalue %dx.types.ResRet.f32 %150, 1
  %153 = extractvalue %dx.types.ResRet.f32 %150, 2
  %154 = extractvalue %dx.types.ResRet.f32 %150, 3
  %155 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 11
  %156 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 11
  %157 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 11
  store float %151, float* %155, align 4
  store float %152, float* %156, align 4
  store float %153, float* %157, align 4
  %158 = getelementptr inbounds [16 x float], [16 x float]* %14, i32 0, i32 11
  store float %154, float* %158, align 4, !tbaa !25, !alias.scope !29, !noalias !32
  %159 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %7, float %48, float %49, float undef, float undef, i32 0, i32 3, i32 undef, float %50)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %160 = extractvalue %dx.types.ResRet.f32 %159, 0
  %161 = extractvalue %dx.types.ResRet.f32 %159, 1
  %162 = extractvalue %dx.types.ResRet.f32 %159, 2
  %163 = extractvalue %dx.types.ResRet.f32 %159, 3
  %164 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 12
  %165 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 12
  %166 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 12
  store float %160, float* %164, align 4
  store float %161, float* %165, align 4
  store float %162, float* %166, align 4
  %167 = getelementptr inbounds [16 x float], [16 x float]* %14, i32 0, i32 12
  store float %163, float* %167, align 4, !tbaa !25, !alias.scope !29, !noalias !32
  %168 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %7, float %48, float %49, float undef, float undef, i32 1, i32 3, i32 undef, float %50)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %169 = extractvalue %dx.types.ResRet.f32 %168, 0
  %170 = extractvalue %dx.types.ResRet.f32 %168, 1
  %171 = extractvalue %dx.types.ResRet.f32 %168, 2
  %172 = extractvalue %dx.types.ResRet.f32 %168, 3
  %173 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 13
  %174 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 13
  %175 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 13
  store float %169, float* %173, align 4
  store float %170, float* %174, align 4
  store float %171, float* %175, align 4
  %176 = getelementptr inbounds [16 x float], [16 x float]* %14, i32 0, i32 13
  store float %172, float* %176, align 4, !tbaa !25, !alias.scope !29, !noalias !32
  %177 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %7, float %48, float %49, float undef, float undef, i32 2, i32 3, i32 undef, float %50)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %178 = extractvalue %dx.types.ResRet.f32 %177, 0
  %179 = extractvalue %dx.types.ResRet.f32 %177, 1
  %180 = extractvalue %dx.types.ResRet.f32 %177, 2
  %181 = extractvalue %dx.types.ResRet.f32 %177, 3
  %182 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 14
  %183 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 14
  %184 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 14
  store float %178, float* %182, align 4
  store float %179, float* %183, align 4
  store float %180, float* %184, align 4
  %185 = getelementptr inbounds [16 x float], [16 x float]* %14, i32 0, i32 14
  store float %181, float* %185, align 4, !tbaa !25, !alias.scope !29, !noalias !32
  %186 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %7, float %48, float %49, float undef, float undef, i32 3, i32 3, i32 undef, float %50)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %187 = extractvalue %dx.types.ResRet.f32 %186, 0
  %188 = extractvalue %dx.types.ResRet.f32 %186, 1
  %189 = extractvalue %dx.types.ResRet.f32 %186, 2
  %190 = extractvalue %dx.types.ResRet.f32 %186, 3
  %191 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 15
  %192 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 15
  %193 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 15
  store float %187, float* %191, align 4
  store float %188, float* %192, align 4
  store float %189, float* %193, align 4
  %194 = getelementptr inbounds [16 x float], [16 x float]* %14, i32 0, i32 15
  store float %190, float* %194, align 4, !tbaa !25, !alias.scope !29, !noalias !32
  br label %195

; <label>:195                                     ; preds = %217, %39
  %196 = phi float [ %63, %39 ], [ %223, %217 ]
  %197 = phi float [ %62, %39 ], [ %221, %217 ]
  %198 = phi float [ %61, %39 ], [ %219, %217 ]
  %199 = phi float [ %52, %39 ], [ %209, %217 ]
  %200 = phi float [ %53, %39 ], [ %210, %217 ]
  %201 = phi float [ %54, %39 ], [ %211, %217 ]
  %202 = phi float [ %52, %39 ], [ %206, %217 ]
  %203 = phi float [ %53, %39 ], [ %207, %217 ]
  %204 = phi float [ %54, %39 ], [ %208, %217 ]
  %205 = phi i32 [ 1, %39 ], [ %212, %217 ]
  %206 = call float @dx.op.binary.f32(i32 36, float %202, float %198)  ; FMin(a,b)
  %207 = call float @dx.op.binary.f32(i32 36, float %203, float %197)  ; FMin(a,b)
  %208 = call float @dx.op.binary.f32(i32 36, float %204, float %196)  ; FMin(a,b)
  %209 = call float @dx.op.binary.f32(i32 35, float %199, float %198)  ; FMax(a,b)
  %210 = call float @dx.op.binary.f32(i32 35, float %200, float %197)  ; FMax(a,b)
  %211 = call float @dx.op.binary.f32(i32 35, float %201, float %196)  ; FMax(a,b)
  %212 = add nuw nsw i32 %205, 1
  %213 = icmp eq i32 %212, 16
  br i1 %213, label %214, label %217

; <label>:214                                     ; preds = %195
  %215 = call float @dx.op.binary.f32(i32 36, float %55, float %64)  ; FMin(a,b)
  %216 = call float @dx.op.binary.f32(i32 35, float %55, float %64)  ; FMax(a,b)
  br label %224

; <label>:217                                     ; preds = %195
  %218 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 %212
  %219 = load float, float* %218, align 4
  %220 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 %212
  %221 = load float, float* %220, align 4
  %222 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 %212
  %223 = load float, float* %222, align 4
  br label %195

; <label>:224                                     ; preds = %224, %214
  %225 = phi i32 [ 2, %214 ], [ %232, %224 ]
  %226 = phi float [ %216, %214 ], [ %231, %224 ]
  %227 = phi float [ %215, %214 ], [ %230, %224 ]
  %228 = getelementptr inbounds [16 x float], [16 x float]* %14, i32 0, i32 %225
  %229 = load float, float* %228, align 4, !tbaa !25, !noalias !34
  %230 = call float @dx.op.binary.f32(i32 36, float %227, float %229)  ; FMin(a,b)
  %231 = call float @dx.op.binary.f32(i32 35, float %226, float %229)  ; FMax(a,b)
  %232 = add nuw nsw i32 %225, 1
  %233 = icmp eq i32 %232, 16
  br i1 %233, label %234, label %224

; <label>:234                                     ; preds = %224
  %235 = fsub fast float %209, %206
  %236 = fsub fast float %210, %207
  %237 = fsub fast float %211, %208
  %238 = fmul fast float %235, 6.250000e-02
  %239 = fmul fast float %236, 6.250000e-02
  %240 = fmul fast float %237, 6.250000e-02
  %241 = fsub fast float %209, %238
  %242 = fsub fast float %210, %239
  %243 = fsub fast float %211, %240
  %244 = fmul fast float %241, 2.550000e+02
  %245 = fmul fast float %242, 2.550000e+02
  %246 = fmul fast float %243, 2.550000e+02
  %247 = call float @dx.op.unary.f32(i32 28, float %244)  ; Round_pi(value)
  %248 = call float @dx.op.unary.f32(i32 28, float %245)  ; Round_pi(value)
  %249 = call float @dx.op.unary.f32(i32 28, float %246)  ; Round_pi(value)
  %250 = fmul fast float %247, 0x3F70101020000000
  %251 = fmul fast float %248, 0x3F70101020000000
  %252 = fmul fast float %249, 0x3F70101020000000
  %253 = fadd fast float %238, %206
  %254 = fadd fast float %239, %207
  %255 = fadd fast float %240, %208
  %256 = fmul fast float %253, 2.550000e+02
  %257 = fmul fast float %254, 2.550000e+02
  %258 = fmul fast float %255, 2.550000e+02
  %259 = call float @dx.op.unary.f32(i32 27, float %256)  ; Round_ni(value)
  %260 = call float @dx.op.unary.f32(i32 27, float %257)  ; Round_ni(value)
  %261 = call float @dx.op.unary.f32(i32 27, float %258)  ; Round_ni(value)
  %262 = fmul fast float %259, 0x3FBF1F1F40000000
  %263 = fmul fast float %260, 0x3FCF9F9FC0000000
  %264 = fmul fast float %261, 0x3FBF1F1F40000000
  %265 = call float @dx.op.unary.f32(i32 26, float %262)  ; Round_ne(value)
  %266 = call float @dx.op.unary.f32(i32 26, float %263)  ; Round_ne(value)
  %267 = call float @dx.op.unary.f32(i32 26, float %264)  ; Round_ne(value)
  %268 = fptoui float %265 to i32
  %269 = fptoui float %266 to i32
  %270 = fptoui float %267 to i32
  %271 = shl i32 %268, 11
  %272 = shl i32 %269, 5
  %273 = or i32 %272, %271
  %274 = or i32 %273, %270
  %275 = fmul fast float %247, 0x3FBF1F1F40000000
  %276 = fmul fast float %248, 0x3FCF9F9FC0000000
  %277 = fmul fast float %249, 0x3FBF1F1F40000000
  %278 = call float @dx.op.unary.f32(i32 26, float %275)  ; Round_ne(value)
  %279 = call float @dx.op.unary.f32(i32 26, float %276)  ; Round_ne(value)
  %280 = call float @dx.op.unary.f32(i32 26, float %277)  ; Round_ne(value)
  %281 = fptoui float %278 to i32
  %282 = fptoui float %279 to i32
  %283 = fptoui float %280 to i32
  %284 = shl i32 %281, 11
  %285 = shl i32 %282, 5
  %286 = or i32 %285, %284
  %287 = or i32 %286, %283
  %288 = fmul fast float %230, 2.550000e+02
  %289 = call float @dx.op.unary.f32(i32 26, float %288)  ; Round_ne(value)
  %290 = fptoui float %289 to i32
  %291 = fmul fast float %231, 2.550000e+02
  %292 = call float @dx.op.unary.f32(i32 26, float %291)  ; Round_ne(value)
  %293 = fptoui float %292 to i32
  %294 = icmp ult i32 %274, %287
  br i1 %294, label %295, label %343, !dx.controlflow.hints !38

; <label>:295                                     ; preds = %234
  %296 = fmul fast float %261, 0x3F70101020000000
  %297 = fmul fast float %260, 0x3F70101020000000
  %298 = fmul fast float %259, 0x3F70101020000000
  %299 = fsub fast float %259, %247
  %300 = fmul fast float %299, 0x3F70101020000000
  %301 = fsub fast float %260, %248
  %302 = fmul fast float %301, 0x3F70101020000000
  %303 = fsub fast float %261, %249
  %304 = fmul fast float %303, 0x3F70101020000000
  %305 = call float @dx.op.dot3.f32(i32 55, float %300, float %302, float %304, float %300, float %302, float %304)  ; Dot3(ax,ay,az,bx,by,bz)
  %306 = fdiv fast float 3.000000e+00, %305
  %307 = fmul fast float %306, %300
  %308 = fmul fast float %306, %302
  %309 = fmul fast float %306, %304
  %310 = call float @dx.op.dot3.f32(i32 55, float %250, float %251, float %252, float %250, float %251, float %252)  ; Dot3(ax,ay,az,bx,by,bz)
  %311 = call float @dx.op.dot3.f32(i32 55, float %250, float %251, float %252, float %298, float %297, float %296)  ; Dot3(ax,ay,az,bx,by,bz)
  %312 = fsub fast float %310, %311
  %313 = fmul fast float %312, %306
  br label %314

; <label>:314                                     ; preds = %335, %295
  %315 = phi float [ %189, %295 ], [ %341, %335 ]
  %316 = phi float [ %188, %295 ], [ %339, %335 ]
  %317 = phi float [ %187, %295 ], [ %337, %335 ]
  %318 = phi i32 [ 15, %295 ], [ %333, %335 ]
  %319 = phi i32 [ 0, %295 ], [ %332, %335 ]
  %320 = call float @dx.op.dot3.f32(i32 55, float %317, float %316, float %315, float %307, float %308, float %309)  ; Dot3(ax,ay,az,bx,by,bz)
  %321 = fadd fast float %320, %313
  %322 = call float @dx.op.unary.f32(i32 26, float %321)  ; Round_ne(value)
  %323 = fptoui float %322 to i32
  %324 = and i32 %323, 1
  %325 = lshr i32 %323, 1
  %326 = xor i32 %324, %325
  %327 = shl nuw i32 %326, 1
  %328 = or i32 %325, %319
  %329 = or i32 %328, %327
  %330 = icmp ne i32 %318, 0
  %331 = shl i32 %329, 2
  %332 = select i1 %330, i32 %331, i32 %329
  %333 = add nsw i32 %318, -1
  %334 = icmp sgt i32 %318, 0
  br i1 %334, label %335, label %342

; <label>:335                                     ; preds = %314
  %336 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 %333
  %337 = load float, float* %336, align 4
  %338 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 %333
  %339 = load float, float* %338, align 4
  %340 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 %333
  %341 = load float, float* %340, align 4
  br label %314

; <label>:342                                     ; preds = %314
  br label %343

; <label>:343                                     ; preds = %342, %234
  %344 = phi i32 [ 0, %234 ], [ %332, %342 ]
  %345 = shl i32 %290, 8
  %346 = or i32 %345, %293
  %347 = icmp ult i32 %290, %293
  br i1 %347, label %348, label %458, !dx.controlflow.hints !39

; <label>:348                                     ; preds = %343
  %349 = fsub fast float %230, %231
  %350 = fdiv fast float 7.000000e+00, %349
  %351 = fsub fast float %55, %231
  %352 = fmul fast float %351, %350
  %353 = call float @dx.op.unary.f32(i32 26, float %352)  ; Round_ne(value)
  %354 = fptoui float %353 to i32
  %355 = icmp ne i32 %354, 0
  %356 = zext i1 %355 to i32
  %357 = icmp eq i32 %354, 7
  %358 = select i1 %357, i32 65529, i32 0
  %359 = add i32 %358, %354
  %360 = add i32 %359, %356
  %361 = shl i32 %360, 16
  %362 = fsub fast float %64, %231
  %363 = fmul fast float %362, %350
  %364 = call float @dx.op.unary.f32(i32 26, float %363)  ; Round_ne(value)
  %365 = fptoui float %364 to i32
  %366 = icmp ne i32 %365, 0
  %367 = zext i1 %366 to i32
  %368 = icmp eq i32 %365, 7
  %369 = select i1 %368, i32 8185, i32 0
  %370 = add i32 %369, %365
  %371 = add i32 %370, %367
  %372 = shl i32 %371, 19
  %373 = fsub fast float %73, %231
  %374 = fmul fast float %373, %350
  %375 = call float @dx.op.unary.f32(i32 26, float %374)  ; Round_ne(value)
  %376 = fptoui float %375 to i32
  %377 = icmp ne i32 %376, 0
  %378 = zext i1 %377 to i32
  %379 = icmp eq i32 %376, 7
  %380 = select i1 %379, i32 1017, i32 0
  %381 = add i32 %380, %376
  %382 = add i32 %381, %378
  %383 = shl i32 %382, 22
  %384 = fsub fast float %82, %231
  %385 = fmul fast float %384, %350
  %386 = call float @dx.op.unary.f32(i32 26, float %385)  ; Round_ne(value)
  %387 = fptoui float %386 to i32
  %388 = icmp ne i32 %387, 0
  %389 = zext i1 %388 to i32
  %390 = icmp eq i32 %387, 7
  %391 = select i1 %390, i32 121, i32 0
  %392 = add i32 %391, %387
  %393 = add i32 %392, %389
  %394 = shl i32 %393, 25
  %395 = fsub fast float %91, %231
  %396 = fmul fast float %395, %350
  %397 = call float @dx.op.unary.f32(i32 26, float %396)  ; Round_ne(value)
  %398 = fptoui float %397 to i32
  %399 = icmp ne i32 %398, 0
  %400 = zext i1 %399 to i32
  %401 = icmp eq i32 %398, 7
  %402 = select i1 %401, i32 9, i32 0
  %403 = add i32 %402, %398
  %404 = add i32 %403, %400
  %405 = shl i32 %404, 28
  %406 = fsub fast float %100, %231
  %407 = fmul fast float %406, %350
  %408 = call float @dx.op.unary.f32(i32 26, float %407)  ; Round_ne(value)
  %409 = fptoui float %408 to i32
  %410 = icmp ne i32 %409, 0
  %411 = zext i1 %410 to i32
  %412 = icmp eq i32 %409, 7
  %413 = select i1 %412, i32 7, i32 0
  %414 = sub nsw i32 %411, %413
  %415 = add i32 %414, %409
  %416 = shl i32 %415, 31
  %417 = lshr i32 %415, 1
  %418 = fsub fast float %109, %231
  %419 = fmul fast float %418, %350
  %420 = call float @dx.op.unary.f32(i32 26, float %419)  ; Round_ne(value)
  %421 = fptoui float %420 to i32
  %422 = icmp ne i32 %421, 0
  %423 = zext i1 %422 to i32
  %424 = icmp eq i32 %421, 7
  %425 = select i1 %424, i32 1073741817, i32 0
  %426 = add i32 %425, %421
  %427 = add i32 %426, %423
  %428 = shl i32 %427, 2
  %429 = or i32 %428, %417
  br label %430

; <label>:430                                     ; preds = %430, %348
  %431 = phi i32 [ 7, %348 ], [ %449, %430 ]
  %432 = phi i32 [ %429, %348 ], [ %448, %430 ]
  %433 = phi i32 [ 2, %348 ], [ %434, %430 ]
  %434 = add nuw nsw i32 %433, 3
  %435 = getelementptr inbounds [16 x float], [16 x float]* %14, i32 0, i32 %431
  %436 = load float, float* %435, align 4, !tbaa !25, !noalias !40
  %437 = fsub fast float %436, %231
  %438 = fmul fast float %437, %350
  %439 = call float @dx.op.unary.f32(i32 26, float %438)  ; Round_ne(value)
  %440 = fptoui float %439 to i32
  %441 = icmp ne i32 %440, 0
  %442 = zext i1 %441 to i32
  %443 = icmp eq i32 %440, 7
  %444 = select i1 %443, i32 -7, i32 0
  %445 = add i32 %444, %440
  %446 = add i32 %445, %442
  %447 = shl i32 %446, %434
  %448 = or i32 %447, %432
  %449 = add nuw nsw i32 %431, 1
  %450 = icmp eq i32 %449, 16
  br i1 %450, label %451, label %430

; <label>:451                                     ; preds = %430
  %452 = or i32 %361, %346
  %453 = or i32 %452, %372
  %454 = or i32 %453, %383
  %455 = or i32 %454, %394
  %456 = or i32 %455, %405
  %457 = or i32 %456, %416
  br label %458

; <label>:458                                     ; preds = %451, %343
  %459 = phi i32 [ %346, %343 ], [ %457, %451 ]
  %460 = phi i32 [ 0, %343 ], [ %448, %451 ]
  %461 = shl i32 %274, 16
  %462 = or i32 %287, %461
  %463 = icmp eq i32 %42, 0
  br i1 %463, label %464, label %467, !dx.controlflow.hints !43

; <label>:464                                     ; preds = %458
  %465 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %466 = extractvalue %dx.types.CBufRet.i32 %465, 0
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %5, i32 %40, i32 %41, i32 %466, i32 %459, i32 %460, i32 %462, i32 %344, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %487

; <label>:467                                     ; preds = %458
  %468 = icmp eq i32 %42, 1
  br i1 %468, label %469, label %472, !dx.controlflow.hints !44

; <label>:469                                     ; preds = %467
  %470 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %471 = extractvalue %dx.types.CBufRet.i32 %470, 0
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %4, i32 %40, i32 %41, i32 %471, i32 %459, i32 %460, i32 %462, i32 %344, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %487

; <label>:472                                     ; preds = %467
  %473 = icmp eq i32 %42, 2
  br i1 %473, label %474, label %477, !dx.controlflow.hints !45

; <label>:474                                     ; preds = %472
  %475 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %476 = extractvalue %dx.types.CBufRet.i32 %475, 0
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %3, i32 %40, i32 %41, i32 %476, i32 %459, i32 %460, i32 %462, i32 %344, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %487

; <label>:477                                     ; preds = %472
  %478 = icmp eq i32 %42, 3
  br i1 %478, label %479, label %482, !dx.controlflow.hints !46

; <label>:479                                     ; preds = %477
  %480 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %481 = extractvalue %dx.types.CBufRet.i32 %480, 0
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %2, i32 %40, i32 %41, i32 %481, i32 %459, i32 %460, i32 %462, i32 %344, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %487

; <label>:482                                     ; preds = %477
  %483 = icmp eq i32 %42, 4
  br i1 %483, label %484, label %487, !dx.controlflow.hints !47

; <label>:484                                     ; preds = %482
  %485 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %486 = extractvalue %dx.types.CBufRet.i32 %485, 0
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %1, i32 %40, i32 %41, i32 %486, i32 %459, i32 %460, i32 %462, i32 %344, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %487

; <label>:487                                     ; preds = %484, %482, %479, %474, %469, %464
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32, i8) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!19}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !8, !15, !17}
!5 = !{!6}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{!9, !11, !12, !13, !14}
!9 = !{i32 0, %"class.RWTexture2DArray<vector<unsigned int, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 7, i1 false, i1 false, i1 false, !10}
!10 = !{i32 0, i32 5}
!11 = !{i32 1, %"class.RWTexture2DArray<vector<unsigned int, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 7, i1 false, i1 false, i1 false, !10}
!12 = !{i32 2, %"class.RWTexture2DArray<vector<unsigned int, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 7, i1 false, i1 false, i1 false, !10}
!13 = !{i32 3, %"class.RWTexture2DArray<vector<unsigned int, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 7, i1 false, i1 false, i1 false, !10}
!14 = !{i32 4, %"class.RWTexture2DArray<vector<unsigned int, 4> >"* undef, !"", i32 0, i32 4, i32 1, i32 7, i1 false, i1 false, i1 false, !10}
!15 = !{!16}
!16 = !{i32 0, %ConstantBufferRuntimeCompression* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!17 = !{!18}
!18 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!19 = !{void ()* @cs_bc3_compress_tail_mips, !"cs_bc3_compress_tail_mips", null, !4, !20}
!20 = !{i32 0, i64 256, i32 4, !21}
!21 = !{i32 8, i32 8, i32 1}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = !{!26, !26, i64 0}
!26 = !{!"float", !27, i64 0}
!27 = !{!"omnipotent char", !28, i64 0}
!28 = !{!"Simple C/C++ TBAA"}
!29 = !{!30}
!30 = distinct !{!30, !31, !"\01?LoadTexelsRGBABias@@YAXV?$Texture2D@V?$vector@M$03@@@@USamplerState@@MV?$vector@I$01@@IY0BA@$$CAV?$vector@M$02@@Y0BA@$$CAM@Z: %blockA"}
!31 = distinct !{!31, !"\01?LoadTexelsRGBABias@@YAXV?$Texture2D@V?$vector@M$03@@@@USamplerState@@MV?$vector@I$01@@IY0BA@$$CAV?$vector@M$02@@Y0BA@$$CAM@Z"}
!32 = !{!33}
!33 = distinct !{!33, !31, !"\01?LoadTexelsRGBABias@@YAXV?$Texture2D@V?$vector@M$03@@@@USamplerState@@MV?$vector@I$01@@IY0BA@$$CAV?$vector@M$02@@Y0BA@$$CAM@Z: %blockRGB"}
!34 = !{!35, !37}
!35 = distinct !{!35, !36, !"\01?GetMinMaxChannel@@YAXY0BA@MAIAM1@Z: %minC"}
!36 = distinct !{!36, !"\01?GetMinMaxChannel@@YAXY0BA@MAIAM1@Z"}
!37 = distinct !{!37, !36, !"\01?GetMinMaxChannel@@YAXY0BA@MAIAM1@Z: %maxC"}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = !{!41}
!41 = distinct !{!41, !42, !"\01?GetIndicesAlpha@@YAXY0BA@MMMAIAV?$vector@I$01@@@Z: %inoutPacked"}
!42 = distinct !{!42, !"\01?GetIndicesAlpha@@YAXY0BA@MMMAIAV?$vector@I$01@@@Z"}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}

