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
; shader hash: 0c443b870acfcdacddd1963963b3faa2
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
%"class.RWTexture2DArray<vector<unsigned int, 2> >" = type { <2 x i32> }
%ConstantBufferRuntimeCompression = type { float, i32, i32, i32, i32, i32, i32, i32 }
%struct.SamplerState = type { i32 }

define void @cs_bc1_compress_tail_mips() {
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
  %14 = icmp ult i32 %9, 4
  br i1 %14, label %15, label %21, !dx.controlflow.hints !22

; <label>:15                                      ; preds = %0
  %16 = icmp ult i32 %10, 4
  %17 = add i32 %10, -4
  %18 = select i1 %16, i32 %10, i32 %17
  %19 = select i1 %16, i32 0, i32 4
  %20 = select i1 %16, float 6.250000e-02, float 1.000000e+00
  br label %38

; <label>:21                                      ; preds = %0
  %22 = icmp ult i32 %9, 6
  br i1 %22, label %23, label %26, !dx.controlflow.hints !23

; <label>:23                                      ; preds = %21
  %24 = add i32 %9, -4
  %25 = add i32 %10, -4
  br label %38

; <label>:26                                      ; preds = %21
  %27 = icmp ult i32 %9, 7
  br i1 %27, label %28, label %30, !dx.controlflow.hints !24

; <label>:28                                      ; preds = %26
  %29 = add i32 %10, -6
  br label %38

; <label>:30                                      ; preds = %26
  %31 = icmp ult i32 %9, 8
  %32 = add i32 %9, -7
  %33 = add i32 %10, -7
  %34 = select i1 %31, i32 %32, i32 %9
  %35 = select i1 %31, i32 %33, i32 %10
  %36 = select i1 %31, i32 3, i32 0
  %37 = select i1 %31, float 5.000000e-01, float 1.000000e+00
  br label %38

; <label>:38                                      ; preds = %30, %28, %23, %15
  %39 = phi i32 [ %24, %23 ], [ 0, %28 ], [ %34, %30 ], [ %9, %15 ]
  %40 = phi i32 [ %25, %23 ], [ %29, %28 ], [ %35, %30 ], [ %18, %15 ]
  %41 = phi i32 [ 1, %23 ], [ 2, %28 ], [ %36, %30 ], [ %19, %15 ]
  %42 = phi float [ 1.250000e-01, %23 ], [ 2.500000e-01, %28 ], [ %37, %30 ], [ %20, %15 ]
  %43 = shl i32 %39, 2
  %44 = shl i32 %40, 2
  %45 = uitofp i32 %43 to float
  %46 = uitofp i32 %44 to float
  %47 = fmul fast float %42, %45
  %48 = fmul fast float %46, %42
  %49 = uitofp i32 %41 to float
  %50 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %7, float %47, float %48, float undef, float undef, i32 0, i32 0, i32 undef, float %49)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %51 = extractvalue %dx.types.ResRet.f32 %50, 0
  %52 = extractvalue %dx.types.ResRet.f32 %50, 1
  %53 = extractvalue %dx.types.ResRet.f32 %50, 2
  %54 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 0
  %55 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 0
  %56 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 0
  store float %51, float* %54, align 4
  store float %52, float* %55, align 4
  store float %53, float* %56, align 4
  %57 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %7, float %47, float %48, float undef, float undef, i32 1, i32 0, i32 undef, float %49)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %58 = extractvalue %dx.types.ResRet.f32 %57, 0
  %59 = extractvalue %dx.types.ResRet.f32 %57, 1
  %60 = extractvalue %dx.types.ResRet.f32 %57, 2
  %61 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 1
  %62 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 1
  %63 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 1
  store float %58, float* %61, align 4
  store float %59, float* %62, align 4
  store float %60, float* %63, align 4
  %64 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %7, float %47, float %48, float undef, float undef, i32 2, i32 0, i32 undef, float %49)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %65 = extractvalue %dx.types.ResRet.f32 %64, 0
  %66 = extractvalue %dx.types.ResRet.f32 %64, 1
  %67 = extractvalue %dx.types.ResRet.f32 %64, 2
  %68 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 2
  %69 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 2
  %70 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 2
  store float %65, float* %68, align 4
  store float %66, float* %69, align 4
  store float %67, float* %70, align 4
  %71 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %7, float %47, float %48, float undef, float undef, i32 3, i32 0, i32 undef, float %49)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %72 = extractvalue %dx.types.ResRet.f32 %71, 0
  %73 = extractvalue %dx.types.ResRet.f32 %71, 1
  %74 = extractvalue %dx.types.ResRet.f32 %71, 2
  %75 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 3
  %76 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 3
  %77 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 3
  store float %72, float* %75, align 4
  store float %73, float* %76, align 4
  store float %74, float* %77, align 4
  %78 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %7, float %47, float %48, float undef, float undef, i32 0, i32 1, i32 undef, float %49)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %79 = extractvalue %dx.types.ResRet.f32 %78, 0
  %80 = extractvalue %dx.types.ResRet.f32 %78, 1
  %81 = extractvalue %dx.types.ResRet.f32 %78, 2
  %82 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 4
  %83 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 4
  %84 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 4
  store float %79, float* %82, align 4
  store float %80, float* %83, align 4
  store float %81, float* %84, align 4
  %85 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %7, float %47, float %48, float undef, float undef, i32 1, i32 1, i32 undef, float %49)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %86 = extractvalue %dx.types.ResRet.f32 %85, 0
  %87 = extractvalue %dx.types.ResRet.f32 %85, 1
  %88 = extractvalue %dx.types.ResRet.f32 %85, 2
  %89 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 5
  %90 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 5
  %91 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 5
  store float %86, float* %89, align 4
  store float %87, float* %90, align 4
  store float %88, float* %91, align 4
  %92 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %7, float %47, float %48, float undef, float undef, i32 2, i32 1, i32 undef, float %49)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %93 = extractvalue %dx.types.ResRet.f32 %92, 0
  %94 = extractvalue %dx.types.ResRet.f32 %92, 1
  %95 = extractvalue %dx.types.ResRet.f32 %92, 2
  %96 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 6
  %97 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 6
  %98 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 6
  store float %93, float* %96, align 4
  store float %94, float* %97, align 4
  store float %95, float* %98, align 4
  %99 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %7, float %47, float %48, float undef, float undef, i32 3, i32 1, i32 undef, float %49)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %100 = extractvalue %dx.types.ResRet.f32 %99, 0
  %101 = extractvalue %dx.types.ResRet.f32 %99, 1
  %102 = extractvalue %dx.types.ResRet.f32 %99, 2
  %103 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 7
  %104 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 7
  %105 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 7
  store float %100, float* %103, align 4
  store float %101, float* %104, align 4
  store float %102, float* %105, align 4
  %106 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %7, float %47, float %48, float undef, float undef, i32 0, i32 2, i32 undef, float %49)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %107 = extractvalue %dx.types.ResRet.f32 %106, 0
  %108 = extractvalue %dx.types.ResRet.f32 %106, 1
  %109 = extractvalue %dx.types.ResRet.f32 %106, 2
  %110 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 8
  %111 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 8
  %112 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 8
  store float %107, float* %110, align 4
  store float %108, float* %111, align 4
  store float %109, float* %112, align 4
  %113 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %7, float %47, float %48, float undef, float undef, i32 1, i32 2, i32 undef, float %49)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %114 = extractvalue %dx.types.ResRet.f32 %113, 0
  %115 = extractvalue %dx.types.ResRet.f32 %113, 1
  %116 = extractvalue %dx.types.ResRet.f32 %113, 2
  %117 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 9
  %118 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 9
  %119 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 9
  store float %114, float* %117, align 4
  store float %115, float* %118, align 4
  store float %116, float* %119, align 4
  %120 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %7, float %47, float %48, float undef, float undef, i32 2, i32 2, i32 undef, float %49)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %121 = extractvalue %dx.types.ResRet.f32 %120, 0
  %122 = extractvalue %dx.types.ResRet.f32 %120, 1
  %123 = extractvalue %dx.types.ResRet.f32 %120, 2
  %124 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 10
  %125 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 10
  %126 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 10
  store float %121, float* %124, align 4
  store float %122, float* %125, align 4
  store float %123, float* %126, align 4
  %127 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %7, float %47, float %48, float undef, float undef, i32 3, i32 2, i32 undef, float %49)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %128 = extractvalue %dx.types.ResRet.f32 %127, 0
  %129 = extractvalue %dx.types.ResRet.f32 %127, 1
  %130 = extractvalue %dx.types.ResRet.f32 %127, 2
  %131 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 11
  %132 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 11
  %133 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 11
  store float %128, float* %131, align 4
  store float %129, float* %132, align 4
  store float %130, float* %133, align 4
  %134 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %7, float %47, float %48, float undef, float undef, i32 0, i32 3, i32 undef, float %49)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %135 = extractvalue %dx.types.ResRet.f32 %134, 0
  %136 = extractvalue %dx.types.ResRet.f32 %134, 1
  %137 = extractvalue %dx.types.ResRet.f32 %134, 2
  %138 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 12
  %139 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 12
  %140 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 12
  store float %135, float* %138, align 4
  store float %136, float* %139, align 4
  store float %137, float* %140, align 4
  %141 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %7, float %47, float %48, float undef, float undef, i32 1, i32 3, i32 undef, float %49)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %142 = extractvalue %dx.types.ResRet.f32 %141, 0
  %143 = extractvalue %dx.types.ResRet.f32 %141, 1
  %144 = extractvalue %dx.types.ResRet.f32 %141, 2
  %145 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 13
  %146 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 13
  %147 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 13
  store float %142, float* %145, align 4
  store float %143, float* %146, align 4
  store float %144, float* %147, align 4
  %148 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %7, float %47, float %48, float undef, float undef, i32 2, i32 3, i32 undef, float %49)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %149 = extractvalue %dx.types.ResRet.f32 %148, 0
  %150 = extractvalue %dx.types.ResRet.f32 %148, 1
  %151 = extractvalue %dx.types.ResRet.f32 %148, 2
  %152 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 14
  %153 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 14
  %154 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 14
  store float %149, float* %152, align 4
  store float %150, float* %153, align 4
  store float %151, float* %154, align 4
  %155 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %7, float %47, float %48, float undef, float undef, i32 3, i32 3, i32 undef, float %49)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %156 = extractvalue %dx.types.ResRet.f32 %155, 0
  %157 = extractvalue %dx.types.ResRet.f32 %155, 1
  %158 = extractvalue %dx.types.ResRet.f32 %155, 2
  %159 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 15
  %160 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 15
  %161 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 15
  store float %156, float* %159, align 4
  store float %157, float* %160, align 4
  store float %158, float* %161, align 4
  br label %162

; <label>:162                                     ; preds = %181, %38
  %163 = phi float [ %60, %38 ], [ %187, %181 ]
  %164 = phi float [ %59, %38 ], [ %185, %181 ]
  %165 = phi float [ %58, %38 ], [ %183, %181 ]
  %166 = phi float [ %51, %38 ], [ %176, %181 ]
  %167 = phi float [ %52, %38 ], [ %177, %181 ]
  %168 = phi float [ %53, %38 ], [ %178, %181 ]
  %169 = phi float [ %51, %38 ], [ %173, %181 ]
  %170 = phi float [ %52, %38 ], [ %174, %181 ]
  %171 = phi float [ %53, %38 ], [ %175, %181 ]
  %172 = phi i32 [ 1, %38 ], [ %179, %181 ]
  %173 = call float @dx.op.binary.f32(i32 36, float %169, float %165)  ; FMin(a,b)
  %174 = call float @dx.op.binary.f32(i32 36, float %170, float %164)  ; FMin(a,b)
  %175 = call float @dx.op.binary.f32(i32 36, float %171, float %163)  ; FMin(a,b)
  %176 = call float @dx.op.binary.f32(i32 35, float %166, float %165)  ; FMax(a,b)
  %177 = call float @dx.op.binary.f32(i32 35, float %167, float %164)  ; FMax(a,b)
  %178 = call float @dx.op.binary.f32(i32 35, float %168, float %163)  ; FMax(a,b)
  %179 = add nuw nsw i32 %172, 1
  %180 = icmp eq i32 %179, 16
  br i1 %180, label %188, label %181

; <label>:181                                     ; preds = %162
  %182 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 %179
  %183 = load float, float* %182, align 4
  %184 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 %179
  %185 = load float, float* %184, align 4
  %186 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 %179
  %187 = load float, float* %186, align 4
  br label %162

; <label>:188                                     ; preds = %162
  %189 = fsub fast float %176, %173
  %190 = fsub fast float %177, %174
  %191 = fsub fast float %178, %175
  %192 = fmul fast float %189, 6.250000e-02
  %193 = fmul fast float %190, 6.250000e-02
  %194 = fmul fast float %191, 6.250000e-02
  %195 = fsub fast float %176, %192
  %196 = fsub fast float %177, %193
  %197 = fsub fast float %178, %194
  %198 = fmul fast float %195, 2.550000e+02
  %199 = fmul fast float %196, 2.550000e+02
  %200 = fmul fast float %197, 2.550000e+02
  %201 = call float @dx.op.unary.f32(i32 28, float %198)  ; Round_pi(value)
  %202 = call float @dx.op.unary.f32(i32 28, float %199)  ; Round_pi(value)
  %203 = call float @dx.op.unary.f32(i32 28, float %200)  ; Round_pi(value)
  %204 = fmul fast float %201, 0x3F70101020000000
  %205 = fmul fast float %202, 0x3F70101020000000
  %206 = fmul fast float %203, 0x3F70101020000000
  %207 = fadd fast float %192, %173
  %208 = fadd fast float %193, %174
  %209 = fadd fast float %194, %175
  %210 = fmul fast float %207, 2.550000e+02
  %211 = fmul fast float %208, 2.550000e+02
  %212 = fmul fast float %209, 2.550000e+02
  %213 = call float @dx.op.unary.f32(i32 27, float %210)  ; Round_ni(value)
  %214 = call float @dx.op.unary.f32(i32 27, float %211)  ; Round_ni(value)
  %215 = call float @dx.op.unary.f32(i32 27, float %212)  ; Round_ni(value)
  %216 = fmul fast float %213, 0x3FBF1F1F40000000
  %217 = fmul fast float %214, 0x3FCF9F9FC0000000
  %218 = fmul fast float %215, 0x3FBF1F1F40000000
  %219 = call float @dx.op.unary.f32(i32 26, float %216)  ; Round_ne(value)
  %220 = call float @dx.op.unary.f32(i32 26, float %217)  ; Round_ne(value)
  %221 = call float @dx.op.unary.f32(i32 26, float %218)  ; Round_ne(value)
  %222 = fptoui float %219 to i32
  %223 = fptoui float %220 to i32
  %224 = fptoui float %221 to i32
  %225 = shl i32 %222, 11
  %226 = shl i32 %223, 5
  %227 = or i32 %226, %225
  %228 = or i32 %227, %224
  %229 = fmul fast float %201, 0x3FBF1F1F40000000
  %230 = fmul fast float %202, 0x3FCF9F9FC0000000
  %231 = fmul fast float %203, 0x3FBF1F1F40000000
  %232 = call float @dx.op.unary.f32(i32 26, float %229)  ; Round_ne(value)
  %233 = call float @dx.op.unary.f32(i32 26, float %230)  ; Round_ne(value)
  %234 = call float @dx.op.unary.f32(i32 26, float %231)  ; Round_ne(value)
  %235 = fptoui float %232 to i32
  %236 = fptoui float %233 to i32
  %237 = fptoui float %234 to i32
  %238 = shl i32 %235, 11
  %239 = shl i32 %236, 5
  %240 = or i32 %239, %238
  %241 = or i32 %240, %237
  %242 = icmp ult i32 %228, %241
  br i1 %242, label %243, label %291, !dx.controlflow.hints !25

; <label>:243                                     ; preds = %188
  %244 = fmul fast float %215, 0x3F70101020000000
  %245 = fmul fast float %214, 0x3F70101020000000
  %246 = fmul fast float %213, 0x3F70101020000000
  %247 = fsub fast float %213, %201
  %248 = fmul fast float %247, 0x3F70101020000000
  %249 = fsub fast float %214, %202
  %250 = fmul fast float %249, 0x3F70101020000000
  %251 = fsub fast float %215, %203
  %252 = fmul fast float %251, 0x3F70101020000000
  %253 = call float @dx.op.dot3.f32(i32 55, float %248, float %250, float %252, float %248, float %250, float %252)  ; Dot3(ax,ay,az,bx,by,bz)
  %254 = fdiv fast float 3.000000e+00, %253
  %255 = fmul fast float %254, %248
  %256 = fmul fast float %254, %250
  %257 = fmul fast float %254, %252
  %258 = call float @dx.op.dot3.f32(i32 55, float %204, float %205, float %206, float %204, float %205, float %206)  ; Dot3(ax,ay,az,bx,by,bz)
  %259 = call float @dx.op.dot3.f32(i32 55, float %204, float %205, float %206, float %246, float %245, float %244)  ; Dot3(ax,ay,az,bx,by,bz)
  %260 = fsub fast float %258, %259
  %261 = fmul fast float %260, %254
  br label %262

; <label>:262                                     ; preds = %283, %243
  %263 = phi float [ %158, %243 ], [ %289, %283 ]
  %264 = phi float [ %157, %243 ], [ %287, %283 ]
  %265 = phi float [ %156, %243 ], [ %285, %283 ]
  %266 = phi i32 [ 0, %243 ], [ %280, %283 ]
  %267 = phi i32 [ 15, %243 ], [ %281, %283 ]
  %268 = call float @dx.op.dot3.f32(i32 55, float %265, float %264, float %263, float %255, float %256, float %257)  ; Dot3(ax,ay,az,bx,by,bz)
  %269 = fadd fast float %268, %261
  %270 = call float @dx.op.unary.f32(i32 26, float %269)  ; Round_ne(value)
  %271 = fptoui float %270 to i32
  %272 = and i32 %271, 1
  %273 = lshr i32 %271, 1
  %274 = xor i32 %272, %273
  %275 = shl nuw i32 %274, 1
  %276 = or i32 %273, %266
  %277 = or i32 %276, %275
  %278 = icmp ne i32 %267, 0
  %279 = shl i32 %277, 2
  %280 = select i1 %278, i32 %279, i32 %277
  %281 = add nsw i32 %267, -1
  %282 = icmp sgt i32 %267, 0
  br i1 %282, label %283, label %290

; <label>:283                                     ; preds = %262
  %284 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 %281
  %285 = load float, float* %284, align 4
  %286 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 %281
  %287 = load float, float* %286, align 4
  %288 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 %281
  %289 = load float, float* %288, align 4
  br label %262

; <label>:290                                     ; preds = %262
  br label %291

; <label>:291                                     ; preds = %290, %188
  %292 = phi i32 [ 0, %188 ], [ %280, %290 ]
  %293 = shl i32 %228, 16
  %294 = or i32 %241, %293
  %295 = icmp eq i32 %41, 0
  br i1 %295, label %296, label %299, !dx.controlflow.hints !26

; <label>:296                                     ; preds = %291
  %297 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %298 = extractvalue %dx.types.CBufRet.i32 %297, 0
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %5, i32 %39, i32 %40, i32 %298, i32 %294, i32 %292, i32 %294, i32 %294, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %319

; <label>:299                                     ; preds = %291
  %300 = icmp eq i32 %41, 1
  br i1 %300, label %301, label %304, !dx.controlflow.hints !27

; <label>:301                                     ; preds = %299
  %302 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %303 = extractvalue %dx.types.CBufRet.i32 %302, 0
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %4, i32 %39, i32 %40, i32 %303, i32 %294, i32 %292, i32 %294, i32 %294, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %319

; <label>:304                                     ; preds = %299
  %305 = icmp eq i32 %41, 2
  br i1 %305, label %306, label %309, !dx.controlflow.hints !28

; <label>:306                                     ; preds = %304
  %307 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %308 = extractvalue %dx.types.CBufRet.i32 %307, 0
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %3, i32 %39, i32 %40, i32 %308, i32 %294, i32 %292, i32 %294, i32 %294, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %319

; <label>:309                                     ; preds = %304
  %310 = icmp eq i32 %41, 3
  br i1 %310, label %311, label %314, !dx.controlflow.hints !29

; <label>:311                                     ; preds = %309
  %312 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %313 = extractvalue %dx.types.CBufRet.i32 %312, 0
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %2, i32 %39, i32 %40, i32 %313, i32 %294, i32 %292, i32 %294, i32 %294, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %319

; <label>:314                                     ; preds = %309
  %315 = icmp eq i32 %41, 4
  br i1 %315, label %316, label %319, !dx.controlflow.hints !30

; <label>:316                                     ; preds = %314
  %317 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %318 = extractvalue %dx.types.CBufRet.i32 %317, 0
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %1, i32 %39, i32 %40, i32 %318, i32 %294, i32 %292, i32 %294, i32 %294, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %319

; <label>:319                                     ; preds = %316, %314, %311, %306, %301, %296
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32, i8) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

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
!9 = !{i32 0, %"class.RWTexture2DArray<vector<unsigned int, 2> >"* undef, !"", i32 0, i32 0, i32 1, i32 7, i1 false, i1 false, i1 false, !10}
!10 = !{i32 0, i32 5}
!11 = !{i32 1, %"class.RWTexture2DArray<vector<unsigned int, 2> >"* undef, !"", i32 0, i32 1, i32 1, i32 7, i1 false, i1 false, i1 false, !10}
!12 = !{i32 2, %"class.RWTexture2DArray<vector<unsigned int, 2> >"* undef, !"", i32 0, i32 2, i32 1, i32 7, i1 false, i1 false, i1 false, !10}
!13 = !{i32 3, %"class.RWTexture2DArray<vector<unsigned int, 2> >"* undef, !"", i32 0, i32 3, i32 1, i32 7, i1 false, i1 false, i1 false, !10}
!14 = !{i32 4, %"class.RWTexture2DArray<vector<unsigned int, 2> >"* undef, !"", i32 0, i32 4, i32 1, i32 7, i1 false, i1 false, i1 false, !10}
!15 = !{!16}
!16 = !{i32 0, %ConstantBufferRuntimeCompression* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!17 = !{!18}
!18 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!19 = !{void ()* @cs_bc1_compress_tail_mips, !"cs_bc1_compress_tail_mips", null, !4, !20}
!20 = !{i32 0, i64 256, i32 4, !21}
!21 = !{i32 8, i32 8, i32 1}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}

