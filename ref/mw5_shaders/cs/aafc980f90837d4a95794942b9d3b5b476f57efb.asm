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
; shader hash: 5e5a08722ce9bec95629b4e24652b354
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

define void @cs_bc5_compress_tail_mips() {
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
  %13 = icmp ult i32 %9, 4
  br i1 %13, label %14, label %20, !dx.controlflow.hints !22

; <label>:14                                      ; preds = %0
  %15 = icmp ult i32 %10, 4
  %16 = add i32 %10, -4
  %17 = select i1 %15, i32 %10, i32 %16
  %18 = select i1 %15, i32 0, i32 4
  %19 = select i1 %15, float 6.250000e-02, float 1.000000e+00
  br label %37

; <label>:20                                      ; preds = %0
  %21 = icmp ult i32 %9, 6
  br i1 %21, label %22, label %25, !dx.controlflow.hints !23

; <label>:22                                      ; preds = %20
  %23 = add i32 %9, -4
  %24 = add i32 %10, -4
  br label %37

; <label>:25                                      ; preds = %20
  %26 = icmp ult i32 %9, 7
  br i1 %26, label %27, label %29, !dx.controlflow.hints !24

; <label>:27                                      ; preds = %25
  %28 = add i32 %10, -6
  br label %37

; <label>:29                                      ; preds = %25
  %30 = icmp ult i32 %9, 8
  %31 = add i32 %9, -7
  %32 = add i32 %10, -7
  %33 = select i1 %30, i32 %31, i32 %9
  %34 = select i1 %30, i32 %32, i32 %10
  %35 = select i1 %30, i32 3, i32 0
  %36 = select i1 %30, float 5.000000e-01, float 1.000000e+00
  br label %37

; <label>:37                                      ; preds = %29, %27, %22, %14
  %38 = phi i32 [ %23, %22 ], [ 0, %27 ], [ %33, %29 ], [ %9, %14 ]
  %39 = phi i32 [ %24, %22 ], [ %28, %27 ], [ %34, %29 ], [ %17, %14 ]
  %40 = phi i32 [ 1, %22 ], [ 2, %27 ], [ %35, %29 ], [ %18, %14 ]
  %41 = phi float [ 1.250000e-01, %22 ], [ 2.500000e-01, %27 ], [ %36, %29 ], [ %19, %14 ]
  %42 = shl i32 %38, 2
  %43 = shl i32 %39, 2
  %44 = uitofp i32 %42 to float
  %45 = uitofp i32 %43 to float
  %46 = fmul fast float %41, %44
  %47 = fmul fast float %45, %41
  %48 = uitofp i32 %40 to float
  %49 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %7, float %46, float %47, float undef, float undef, i32 0, i32 0, i32 undef, float %48)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %50 = extractvalue %dx.types.ResRet.f32 %49, 0
  %51 = extractvalue %dx.types.ResRet.f32 %49, 1
  %52 = getelementptr inbounds [16 x float], [16 x float]* %11, i32 0, i32 0
  store float %50, float* %52, align 4, !tbaa !25, !alias.scope !29, !noalias !32
  %53 = getelementptr inbounds [16 x float], [16 x float]* %12, i32 0, i32 0
  store float %51, float* %53, align 4, !tbaa !25, !alias.scope !32, !noalias !29
  %54 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %7, float %46, float %47, float undef, float undef, i32 1, i32 0, i32 undef, float %48)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %55 = extractvalue %dx.types.ResRet.f32 %54, 0
  %56 = extractvalue %dx.types.ResRet.f32 %54, 1
  %57 = getelementptr inbounds [16 x float], [16 x float]* %11, i32 0, i32 1
  store float %55, float* %57, align 4, !tbaa !25, !alias.scope !29, !noalias !32
  %58 = getelementptr inbounds [16 x float], [16 x float]* %12, i32 0, i32 1
  store float %56, float* %58, align 4, !tbaa !25, !alias.scope !32, !noalias !29
  %59 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %7, float %46, float %47, float undef, float undef, i32 2, i32 0, i32 undef, float %48)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %60 = extractvalue %dx.types.ResRet.f32 %59, 0
  %61 = extractvalue %dx.types.ResRet.f32 %59, 1
  %62 = getelementptr inbounds [16 x float], [16 x float]* %11, i32 0, i32 2
  store float %60, float* %62, align 4, !tbaa !25, !alias.scope !29, !noalias !32
  %63 = getelementptr inbounds [16 x float], [16 x float]* %12, i32 0, i32 2
  store float %61, float* %63, align 4, !tbaa !25, !alias.scope !32, !noalias !29
  %64 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %7, float %46, float %47, float undef, float undef, i32 3, i32 0, i32 undef, float %48)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %65 = extractvalue %dx.types.ResRet.f32 %64, 0
  %66 = extractvalue %dx.types.ResRet.f32 %64, 1
  %67 = getelementptr inbounds [16 x float], [16 x float]* %11, i32 0, i32 3
  store float %65, float* %67, align 4, !tbaa !25, !alias.scope !29, !noalias !32
  %68 = getelementptr inbounds [16 x float], [16 x float]* %12, i32 0, i32 3
  store float %66, float* %68, align 4, !tbaa !25, !alias.scope !32, !noalias !29
  %69 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %7, float %46, float %47, float undef, float undef, i32 0, i32 1, i32 undef, float %48)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %70 = extractvalue %dx.types.ResRet.f32 %69, 0
  %71 = extractvalue %dx.types.ResRet.f32 %69, 1
  %72 = getelementptr inbounds [16 x float], [16 x float]* %11, i32 0, i32 4
  store float %70, float* %72, align 4, !tbaa !25, !alias.scope !29, !noalias !32
  %73 = getelementptr inbounds [16 x float], [16 x float]* %12, i32 0, i32 4
  store float %71, float* %73, align 4, !tbaa !25, !alias.scope !32, !noalias !29
  %74 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %7, float %46, float %47, float undef, float undef, i32 1, i32 1, i32 undef, float %48)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %75 = extractvalue %dx.types.ResRet.f32 %74, 0
  %76 = extractvalue %dx.types.ResRet.f32 %74, 1
  %77 = getelementptr inbounds [16 x float], [16 x float]* %11, i32 0, i32 5
  store float %75, float* %77, align 4, !tbaa !25, !alias.scope !29, !noalias !32
  %78 = getelementptr inbounds [16 x float], [16 x float]* %12, i32 0, i32 5
  store float %76, float* %78, align 4, !tbaa !25, !alias.scope !32, !noalias !29
  %79 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %7, float %46, float %47, float undef, float undef, i32 2, i32 1, i32 undef, float %48)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %80 = extractvalue %dx.types.ResRet.f32 %79, 0
  %81 = extractvalue %dx.types.ResRet.f32 %79, 1
  %82 = getelementptr inbounds [16 x float], [16 x float]* %11, i32 0, i32 6
  store float %80, float* %82, align 4, !tbaa !25, !alias.scope !29, !noalias !32
  %83 = getelementptr inbounds [16 x float], [16 x float]* %12, i32 0, i32 6
  store float %81, float* %83, align 4, !tbaa !25, !alias.scope !32, !noalias !29
  %84 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %7, float %46, float %47, float undef, float undef, i32 3, i32 1, i32 undef, float %48)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %85 = extractvalue %dx.types.ResRet.f32 %84, 0
  %86 = extractvalue %dx.types.ResRet.f32 %84, 1
  %87 = getelementptr inbounds [16 x float], [16 x float]* %11, i32 0, i32 7
  store float %85, float* %87, align 4, !tbaa !25, !alias.scope !29, !noalias !32
  %88 = getelementptr inbounds [16 x float], [16 x float]* %12, i32 0, i32 7
  store float %86, float* %88, align 4, !tbaa !25, !alias.scope !32, !noalias !29
  %89 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %7, float %46, float %47, float undef, float undef, i32 0, i32 2, i32 undef, float %48)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %90 = extractvalue %dx.types.ResRet.f32 %89, 0
  %91 = extractvalue %dx.types.ResRet.f32 %89, 1
  %92 = getelementptr inbounds [16 x float], [16 x float]* %11, i32 0, i32 8
  store float %90, float* %92, align 4, !tbaa !25, !alias.scope !29, !noalias !32
  %93 = getelementptr inbounds [16 x float], [16 x float]* %12, i32 0, i32 8
  store float %91, float* %93, align 4, !tbaa !25, !alias.scope !32, !noalias !29
  %94 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %7, float %46, float %47, float undef, float undef, i32 1, i32 2, i32 undef, float %48)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %95 = extractvalue %dx.types.ResRet.f32 %94, 0
  %96 = extractvalue %dx.types.ResRet.f32 %94, 1
  %97 = getelementptr inbounds [16 x float], [16 x float]* %11, i32 0, i32 9
  store float %95, float* %97, align 4, !tbaa !25, !alias.scope !29, !noalias !32
  %98 = getelementptr inbounds [16 x float], [16 x float]* %12, i32 0, i32 9
  store float %96, float* %98, align 4, !tbaa !25, !alias.scope !32, !noalias !29
  %99 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %7, float %46, float %47, float undef, float undef, i32 2, i32 2, i32 undef, float %48)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %100 = extractvalue %dx.types.ResRet.f32 %99, 0
  %101 = extractvalue %dx.types.ResRet.f32 %99, 1
  %102 = getelementptr inbounds [16 x float], [16 x float]* %11, i32 0, i32 10
  store float %100, float* %102, align 4, !tbaa !25, !alias.scope !29, !noalias !32
  %103 = getelementptr inbounds [16 x float], [16 x float]* %12, i32 0, i32 10
  store float %101, float* %103, align 4, !tbaa !25, !alias.scope !32, !noalias !29
  %104 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %7, float %46, float %47, float undef, float undef, i32 3, i32 2, i32 undef, float %48)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %105 = extractvalue %dx.types.ResRet.f32 %104, 0
  %106 = extractvalue %dx.types.ResRet.f32 %104, 1
  %107 = getelementptr inbounds [16 x float], [16 x float]* %11, i32 0, i32 11
  store float %105, float* %107, align 4, !tbaa !25, !alias.scope !29, !noalias !32
  %108 = getelementptr inbounds [16 x float], [16 x float]* %12, i32 0, i32 11
  store float %106, float* %108, align 4, !tbaa !25, !alias.scope !32, !noalias !29
  %109 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %7, float %46, float %47, float undef, float undef, i32 0, i32 3, i32 undef, float %48)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %110 = extractvalue %dx.types.ResRet.f32 %109, 0
  %111 = extractvalue %dx.types.ResRet.f32 %109, 1
  %112 = getelementptr inbounds [16 x float], [16 x float]* %11, i32 0, i32 12
  store float %110, float* %112, align 4, !tbaa !25, !alias.scope !29, !noalias !32
  %113 = getelementptr inbounds [16 x float], [16 x float]* %12, i32 0, i32 12
  store float %111, float* %113, align 4, !tbaa !25, !alias.scope !32, !noalias !29
  %114 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %7, float %46, float %47, float undef, float undef, i32 1, i32 3, i32 undef, float %48)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %115 = extractvalue %dx.types.ResRet.f32 %114, 0
  %116 = extractvalue %dx.types.ResRet.f32 %114, 1
  %117 = getelementptr inbounds [16 x float], [16 x float]* %11, i32 0, i32 13
  store float %115, float* %117, align 4, !tbaa !25, !alias.scope !29, !noalias !32
  %118 = getelementptr inbounds [16 x float], [16 x float]* %12, i32 0, i32 13
  store float %116, float* %118, align 4, !tbaa !25, !alias.scope !32, !noalias !29
  %119 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %7, float %46, float %47, float undef, float undef, i32 2, i32 3, i32 undef, float %48)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %120 = extractvalue %dx.types.ResRet.f32 %119, 0
  %121 = extractvalue %dx.types.ResRet.f32 %119, 1
  %122 = getelementptr inbounds [16 x float], [16 x float]* %11, i32 0, i32 14
  store float %120, float* %122, align 4, !tbaa !25, !alias.scope !29, !noalias !32
  %123 = getelementptr inbounds [16 x float], [16 x float]* %12, i32 0, i32 14
  store float %121, float* %123, align 4, !tbaa !25, !alias.scope !32, !noalias !29
  %124 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %7, float %46, float %47, float undef, float undef, i32 3, i32 3, i32 undef, float %48)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %125 = extractvalue %dx.types.ResRet.f32 %124, 0
  %126 = extractvalue %dx.types.ResRet.f32 %124, 1
  %127 = getelementptr inbounds [16 x float], [16 x float]* %11, i32 0, i32 15
  store float %125, float* %127, align 4, !tbaa !25, !alias.scope !29, !noalias !32
  %128 = getelementptr inbounds [16 x float], [16 x float]* %12, i32 0, i32 15
  store float %126, float* %128, align 4, !tbaa !25, !alias.scope !32, !noalias !29
  br label %129

; <label>:129                                     ; preds = %143, %37
  %130 = phi float [ %56, %37 ], [ %147, %143 ]
  %131 = phi float [ %55, %37 ], [ %145, %143 ]
  %132 = phi float [ %51, %37 ], [ %140, %143 ]
  %133 = phi float [ %51, %37 ], [ %139, %143 ]
  %134 = phi float [ %50, %37 ], [ %138, %143 ]
  %135 = phi float [ %50, %37 ], [ %137, %143 ]
  %136 = phi i32 [ 1, %37 ], [ %141, %143 ]
  %137 = call float @dx.op.binary.f32(i32 36, float %135, float %131)  ; FMin(a,b)
  %138 = call float @dx.op.binary.f32(i32 35, float %134, float %131)  ; FMax(a,b)
  %139 = call float @dx.op.binary.f32(i32 36, float %133, float %130)  ; FMin(a,b)
  %140 = call float @dx.op.binary.f32(i32 35, float %132, float %130)  ; FMax(a,b)
  %141 = add nuw nsw i32 %136, 1
  %142 = icmp eq i32 %141, 16
  br i1 %142, label %148, label %143

; <label>:143                                     ; preds = %129
  %144 = getelementptr inbounds [16 x float], [16 x float]* %11, i32 0, i32 %141
  %145 = load float, float* %144, align 4, !tbaa !25, !noalias !34
  %146 = getelementptr inbounds [16 x float], [16 x float]* %12, i32 0, i32 %141
  %147 = load float, float* %146, align 4, !tbaa !25, !noalias !34
  br label %129

; <label>:148                                     ; preds = %129
  %149 = fmul fast float %137, 2.550000e+02
  %150 = call float @dx.op.unary.f32(i32 26, float %149)  ; Round_ne(value)
  %151 = fptoui float %150 to i32
  %152 = fmul fast float %138, 2.550000e+02
  %153 = call float @dx.op.unary.f32(i32 26, float %152)  ; Round_ne(value)
  %154 = fptoui float %153 to i32
  %155 = fmul fast float %139, 2.550000e+02
  %156 = call float @dx.op.unary.f32(i32 26, float %155)  ; Round_ne(value)
  %157 = fptoui float %156 to i32
  %158 = fmul fast float %140, 2.550000e+02
  %159 = call float @dx.op.unary.f32(i32 26, float %158)  ; Round_ne(value)
  %160 = fptoui float %159 to i32
  %161 = shl i32 %151, 8
  %162 = or i32 %161, %154
  %163 = shl i32 %157, 8
  %164 = or i32 %163, %160
  %165 = icmp ult i32 %151, %154
  br i1 %165, label %166, label %276, !dx.controlflow.hints !40

; <label>:166                                     ; preds = %148
  %167 = fsub fast float %137, %138
  %168 = fdiv fast float 7.000000e+00, %167
  %169 = fsub fast float %50, %138
  %170 = fmul fast float %169, %168
  %171 = call float @dx.op.unary.f32(i32 26, float %170)  ; Round_ne(value)
  %172 = fptoui float %171 to i32
  %173 = icmp ne i32 %172, 0
  %174 = zext i1 %173 to i32
  %175 = icmp eq i32 %172, 7
  %176 = select i1 %175, i32 65529, i32 0
  %177 = add i32 %176, %172
  %178 = add i32 %177, %174
  %179 = shl i32 %178, 16
  %180 = fsub fast float %55, %138
  %181 = fmul fast float %180, %168
  %182 = call float @dx.op.unary.f32(i32 26, float %181)  ; Round_ne(value)
  %183 = fptoui float %182 to i32
  %184 = icmp ne i32 %183, 0
  %185 = zext i1 %184 to i32
  %186 = icmp eq i32 %183, 7
  %187 = select i1 %186, i32 8185, i32 0
  %188 = add i32 %187, %183
  %189 = add i32 %188, %185
  %190 = shl i32 %189, 19
  %191 = fsub fast float %60, %138
  %192 = fmul fast float %191, %168
  %193 = call float @dx.op.unary.f32(i32 26, float %192)  ; Round_ne(value)
  %194 = fptoui float %193 to i32
  %195 = icmp ne i32 %194, 0
  %196 = zext i1 %195 to i32
  %197 = icmp eq i32 %194, 7
  %198 = select i1 %197, i32 1017, i32 0
  %199 = add i32 %198, %194
  %200 = add i32 %199, %196
  %201 = shl i32 %200, 22
  %202 = fsub fast float %65, %138
  %203 = fmul fast float %202, %168
  %204 = call float @dx.op.unary.f32(i32 26, float %203)  ; Round_ne(value)
  %205 = fptoui float %204 to i32
  %206 = icmp ne i32 %205, 0
  %207 = zext i1 %206 to i32
  %208 = icmp eq i32 %205, 7
  %209 = select i1 %208, i32 121, i32 0
  %210 = add i32 %209, %205
  %211 = add i32 %210, %207
  %212 = shl i32 %211, 25
  %213 = fsub fast float %70, %138
  %214 = fmul fast float %213, %168
  %215 = call float @dx.op.unary.f32(i32 26, float %214)  ; Round_ne(value)
  %216 = fptoui float %215 to i32
  %217 = icmp ne i32 %216, 0
  %218 = zext i1 %217 to i32
  %219 = icmp eq i32 %216, 7
  %220 = select i1 %219, i32 9, i32 0
  %221 = add i32 %220, %216
  %222 = add i32 %221, %218
  %223 = shl i32 %222, 28
  %224 = fsub fast float %75, %138
  %225 = fmul fast float %224, %168
  %226 = call float @dx.op.unary.f32(i32 26, float %225)  ; Round_ne(value)
  %227 = fptoui float %226 to i32
  %228 = icmp ne i32 %227, 0
  %229 = zext i1 %228 to i32
  %230 = icmp eq i32 %227, 7
  %231 = select i1 %230, i32 7, i32 0
  %232 = sub nsw i32 %229, %231
  %233 = add i32 %232, %227
  %234 = shl i32 %233, 31
  %235 = lshr i32 %233, 1
  %236 = fsub fast float %80, %138
  %237 = fmul fast float %236, %168
  %238 = call float @dx.op.unary.f32(i32 26, float %237)  ; Round_ne(value)
  %239 = fptoui float %238 to i32
  %240 = icmp ne i32 %239, 0
  %241 = zext i1 %240 to i32
  %242 = icmp eq i32 %239, 7
  %243 = select i1 %242, i32 1073741817, i32 0
  %244 = add i32 %243, %239
  %245 = add i32 %244, %241
  %246 = shl i32 %245, 2
  %247 = or i32 %246, %235
  br label %248

; <label>:248                                     ; preds = %248, %166
  %249 = phi i32 [ 7, %166 ], [ %267, %248 ]
  %250 = phi i32 [ %247, %166 ], [ %266, %248 ]
  %251 = phi i32 [ 2, %166 ], [ %252, %248 ]
  %252 = add nuw nsw i32 %251, 3
  %253 = getelementptr inbounds [16 x float], [16 x float]* %11, i32 0, i32 %249
  %254 = load float, float* %253, align 4, !tbaa !25, !noalias !41
  %255 = fsub fast float %254, %138
  %256 = fmul fast float %255, %168
  %257 = call float @dx.op.unary.f32(i32 26, float %256)  ; Round_ne(value)
  %258 = fptoui float %257 to i32
  %259 = icmp ne i32 %258, 0
  %260 = zext i1 %259 to i32
  %261 = icmp eq i32 %258, 7
  %262 = select i1 %261, i32 -7, i32 0
  %263 = add i32 %262, %258
  %264 = add i32 %263, %260
  %265 = shl i32 %264, %252
  %266 = or i32 %265, %250
  %267 = add nuw nsw i32 %249, 1
  %268 = icmp eq i32 %267, 16
  br i1 %268, label %269, label %248

; <label>:269                                     ; preds = %248
  %270 = or i32 %179, %162
  %271 = or i32 %270, %190
  %272 = or i32 %271, %201
  %273 = or i32 %272, %212
  %274 = or i32 %273, %223
  %275 = or i32 %274, %234
  br label %276

; <label>:276                                     ; preds = %269, %148
  %277 = phi i32 [ %162, %148 ], [ %275, %269 ]
  %278 = phi i32 [ 0, %148 ], [ %266, %269 ]
  %279 = icmp ult i32 %157, %160
  br i1 %279, label %280, label %390, !dx.controlflow.hints !44

; <label>:280                                     ; preds = %276
  %281 = fsub fast float %139, %140
  %282 = fdiv fast float 7.000000e+00, %281
  %283 = fsub fast float %51, %140
  %284 = fmul fast float %283, %282
  %285 = call float @dx.op.unary.f32(i32 26, float %284)  ; Round_ne(value)
  %286 = fptoui float %285 to i32
  %287 = icmp ne i32 %286, 0
  %288 = zext i1 %287 to i32
  %289 = icmp eq i32 %286, 7
  %290 = select i1 %289, i32 65529, i32 0
  %291 = add i32 %290, %286
  %292 = add i32 %291, %288
  %293 = shl i32 %292, 16
  %294 = fsub fast float %56, %140
  %295 = fmul fast float %294, %282
  %296 = call float @dx.op.unary.f32(i32 26, float %295)  ; Round_ne(value)
  %297 = fptoui float %296 to i32
  %298 = icmp ne i32 %297, 0
  %299 = zext i1 %298 to i32
  %300 = icmp eq i32 %297, 7
  %301 = select i1 %300, i32 8185, i32 0
  %302 = add i32 %301, %297
  %303 = add i32 %302, %299
  %304 = shl i32 %303, 19
  %305 = fsub fast float %61, %140
  %306 = fmul fast float %305, %282
  %307 = call float @dx.op.unary.f32(i32 26, float %306)  ; Round_ne(value)
  %308 = fptoui float %307 to i32
  %309 = icmp ne i32 %308, 0
  %310 = zext i1 %309 to i32
  %311 = icmp eq i32 %308, 7
  %312 = select i1 %311, i32 1017, i32 0
  %313 = add i32 %312, %308
  %314 = add i32 %313, %310
  %315 = shl i32 %314, 22
  %316 = fsub fast float %66, %140
  %317 = fmul fast float %316, %282
  %318 = call float @dx.op.unary.f32(i32 26, float %317)  ; Round_ne(value)
  %319 = fptoui float %318 to i32
  %320 = icmp ne i32 %319, 0
  %321 = zext i1 %320 to i32
  %322 = icmp eq i32 %319, 7
  %323 = select i1 %322, i32 121, i32 0
  %324 = add i32 %323, %319
  %325 = add i32 %324, %321
  %326 = shl i32 %325, 25
  %327 = fsub fast float %71, %140
  %328 = fmul fast float %327, %282
  %329 = call float @dx.op.unary.f32(i32 26, float %328)  ; Round_ne(value)
  %330 = fptoui float %329 to i32
  %331 = icmp ne i32 %330, 0
  %332 = zext i1 %331 to i32
  %333 = icmp eq i32 %330, 7
  %334 = select i1 %333, i32 9, i32 0
  %335 = add i32 %334, %330
  %336 = add i32 %335, %332
  %337 = shl i32 %336, 28
  %338 = fsub fast float %76, %140
  %339 = fmul fast float %338, %282
  %340 = call float @dx.op.unary.f32(i32 26, float %339)  ; Round_ne(value)
  %341 = fptoui float %340 to i32
  %342 = icmp ne i32 %341, 0
  %343 = zext i1 %342 to i32
  %344 = icmp eq i32 %341, 7
  %345 = select i1 %344, i32 7, i32 0
  %346 = sub nsw i32 %343, %345
  %347 = add i32 %346, %341
  %348 = shl i32 %347, 31
  %349 = lshr i32 %347, 1
  %350 = fsub fast float %81, %140
  %351 = fmul fast float %350, %282
  %352 = call float @dx.op.unary.f32(i32 26, float %351)  ; Round_ne(value)
  %353 = fptoui float %352 to i32
  %354 = icmp ne i32 %353, 0
  %355 = zext i1 %354 to i32
  %356 = icmp eq i32 %353, 7
  %357 = select i1 %356, i32 1073741817, i32 0
  %358 = add i32 %357, %353
  %359 = add i32 %358, %355
  %360 = shl i32 %359, 2
  %361 = or i32 %360, %349
  br label %362

; <label>:362                                     ; preds = %362, %280
  %363 = phi i32 [ 7, %280 ], [ %381, %362 ]
  %364 = phi i32 [ %361, %280 ], [ %380, %362 ]
  %365 = phi i32 [ 2, %280 ], [ %366, %362 ]
  %366 = add nuw nsw i32 %365, 3
  %367 = getelementptr inbounds [16 x float], [16 x float]* %12, i32 0, i32 %363
  %368 = load float, float* %367, align 4, !tbaa !25, !noalias !45
  %369 = fsub fast float %368, %140
  %370 = fmul fast float %369, %282
  %371 = call float @dx.op.unary.f32(i32 26, float %370)  ; Round_ne(value)
  %372 = fptoui float %371 to i32
  %373 = icmp ne i32 %372, 0
  %374 = zext i1 %373 to i32
  %375 = icmp eq i32 %372, 7
  %376 = select i1 %375, i32 -7, i32 0
  %377 = add i32 %376, %372
  %378 = add i32 %377, %374
  %379 = shl i32 %378, %366
  %380 = or i32 %379, %364
  %381 = add nuw nsw i32 %363, 1
  %382 = icmp eq i32 %381, 16
  br i1 %382, label %383, label %362

; <label>:383                                     ; preds = %362
  %384 = or i32 %293, %164
  %385 = or i32 %384, %304
  %386 = or i32 %385, %315
  %387 = or i32 %386, %326
  %388 = or i32 %387, %337
  %389 = or i32 %388, %348
  br label %390

; <label>:390                                     ; preds = %383, %276
  %391 = phi i32 [ %164, %276 ], [ %389, %383 ]
  %392 = phi i32 [ 0, %276 ], [ %380, %383 ]
  %393 = icmp eq i32 %40, 0
  br i1 %393, label %394, label %397, !dx.controlflow.hints !48

; <label>:394                                     ; preds = %390
  %395 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %396 = extractvalue %dx.types.CBufRet.i32 %395, 0
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %5, i32 %38, i32 %39, i32 %396, i32 %277, i32 %278, i32 %391, i32 %392, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %417

; <label>:397                                     ; preds = %390
  %398 = icmp eq i32 %40, 1
  br i1 %398, label %399, label %402, !dx.controlflow.hints !49

; <label>:399                                     ; preds = %397
  %400 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %401 = extractvalue %dx.types.CBufRet.i32 %400, 0
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %4, i32 %38, i32 %39, i32 %401, i32 %277, i32 %278, i32 %391, i32 %392, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %417

; <label>:402                                     ; preds = %397
  %403 = icmp eq i32 %40, 2
  br i1 %403, label %404, label %407, !dx.controlflow.hints !50

; <label>:404                                     ; preds = %402
  %405 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %406 = extractvalue %dx.types.CBufRet.i32 %405, 0
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %3, i32 %38, i32 %39, i32 %406, i32 %277, i32 %278, i32 %391, i32 %392, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %417

; <label>:407                                     ; preds = %402
  %408 = icmp eq i32 %40, 3
  br i1 %408, label %409, label %412, !dx.controlflow.hints !51

; <label>:409                                     ; preds = %407
  %410 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %411 = extractvalue %dx.types.CBufRet.i32 %410, 0
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %2, i32 %38, i32 %39, i32 %411, i32 %277, i32 %278, i32 %391, i32 %392, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %417

; <label>:412                                     ; preds = %407
  %413 = icmp eq i32 %40, 4
  br i1 %413, label %414, label %417, !dx.controlflow.hints !52

; <label>:414                                     ; preds = %412
  %415 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %416 = extractvalue %dx.types.CBufRet.i32 %415, 0
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %1, i32 %38, i32 %39, i32 %416, i32 %277, i32 %278, i32 %391, i32 %392, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %417

; <label>:417                                     ; preds = %414, %412, %409, %404, %399, %394
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
!19 = !{void ()* @cs_bc5_compress_tail_mips, !"cs_bc5_compress_tail_mips", null, !4, !20}
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
!30 = distinct !{!30, !31, !"\01?LoadTexelsUVBias@@YAXV?$Texture2D@V?$vector@M$03@@@@USamplerState@@MV?$vector@I$01@@IY0BA@$$CAM3@Z: %blockU"}
!31 = distinct !{!31, !"\01?LoadTexelsUVBias@@YAXV?$Texture2D@V?$vector@M$03@@@@USamplerState@@MV?$vector@I$01@@IY0BA@$$CAM3@Z"}
!32 = !{!33}
!33 = distinct !{!33, !31, !"\01?LoadTexelsUVBias@@YAXV?$Texture2D@V?$vector@M$03@@@@USamplerState@@MV?$vector@I$01@@IY0BA@$$CAM3@Z: %blockV"}
!34 = !{!35, !37, !38, !39}
!35 = distinct !{!35, !36, !"\01?GetMinMaxUV@@YAXY0BA@M0AIAM111@Z: %minU"}
!36 = distinct !{!36, !"\01?GetMinMaxUV@@YAXY0BA@M0AIAM111@Z"}
!37 = distinct !{!37, !36, !"\01?GetMinMaxUV@@YAXY0BA@M0AIAM111@Z: %maxU"}
!38 = distinct !{!38, !36, !"\01?GetMinMaxUV@@YAXY0BA@M0AIAM111@Z: %minV"}
!39 = distinct !{!39, !36, !"\01?GetMinMaxUV@@YAXY0BA@M0AIAM111@Z: %maxV"}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = !{!42}
!42 = distinct !{!42, !43, !"\01?GetIndicesAlpha@@YAXY0BA@MMMAIAV?$vector@I$01@@@Z: %inoutPacked"}
!43 = distinct !{!43, !"\01?GetIndicesAlpha@@YAXY0BA@MMMAIAV?$vector@I$01@@@Z"}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = !{!46}
!46 = distinct !{!46, !47, !"\01?GetIndicesAlpha@@YAXY0BA@MMMAIAV?$vector@I$01@@@Z: %inoutPacked"}
!47 = distinct !{!47, !"\01?GetIndicesAlpha@@YAXY0BA@MMMAIAV?$vector@I$01@@@Z"}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}

