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
; shader hash: b66504134ca4ca0fa3fa23f7943d0b5a
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
;   [4208 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb0     1
;                                   sampler      NA          NA      S0             s2     1
;                                   texture     f32          2d      T0             t8     1
;                                   texture     f32          2d      T1            t10     1
;                                   texture     f32          2d      T2            t12     1
;                                       UAV     u32          2d      U0             u0     2
;                                       UAV     u32          2d      U1             u2     2
;                                       UAV     u32          2d      U2             u4     2
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.RWTexture2D<vector<unsigned int, 4> >" = type { <4 x i32> }
%GfxVirtualTexturingComposite = type { [8 x <4 x float>], [8 x <4 x float>], <3 x float>, i32, <2 x float>, float, float, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, [56 x %struct.TerrainTileDataVT], [20 x <4 x float>], [5 x <4 x i32>], [40 x <4 x i32>] }
%struct.TerrainTileDataVT = type { [2 x <4 x i32>], <2 x i32> }
%struct.SamplerState = type { i32 }

define void @cs_physical_texture_compress_mip1_from_scratch_3() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %7 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %8 = alloca [16 x float], align 4
  %9 = alloca [16 x float], align 4
  %10 = alloca [16 x float], align 4
  %11 = alloca [16 x float], align 4
  %12 = alloca [16 x float], align 4
  %13 = alloca [16 x float], align 4
  %14 = alloca [16 x float], align 4
  %15 = alloca [16 x float], align 4
  %16 = alloca [16 x float], align 4
  %17 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %18 = extractvalue %dx.types.CBufRet.i32 %17, 1
  %19 = icmp eq i32 %18, 5
  %20 = shl i32 %6, 2
  %21 = shl i32 %7, 2
  %22 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3, i32 0)  ; GetDimensions(handle,mipLevel)
  %23 = extractvalue %dx.types.Dimensions %22, 0
  %24 = extractvalue %dx.types.Dimensions %22, 1
  %25 = lshr i32 %23, 1
  %26 = uitofp i32 %25 to float
  %27 = lshr i32 %24, 1
  %28 = uitofp i32 %27 to float
  %29 = uitofp i32 %20 to float
  %30 = uitofp i32 %21 to float
  %31 = fadd fast float %29, 5.000000e-01
  %32 = fadd fast float %30, 5.000000e-01
  %33 = fdiv fast float %31, %26
  %34 = fdiv fast float %32, %28
  %35 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %33, float %34, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %36 = extractvalue %dx.types.ResRet.f32 %35, 0
  %37 = extractvalue %dx.types.ResRet.f32 %35, 1
  %38 = extractvalue %dx.types.ResRet.f32 %35, 2
  br i1 %19, label %48, label %39, !dx.controlflow.hints !22

; <label>:39                                      ; preds = %0
  %40 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %4, float %33, float %34, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %41 = extractvalue %dx.types.ResRet.f32 %40, 0
  %42 = extractvalue %dx.types.ResRet.f32 %40, 1
  %43 = extractvalue %dx.types.ResRet.f32 %40, 2
  %44 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %4, float %33, float %34, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %45 = extractvalue %dx.types.ResRet.f32 %44, 0
  %46 = extractvalue %dx.types.ResRet.f32 %44, 1
  %47 = extractvalue %dx.types.ResRet.f32 %44, 2
  br label %48

; <label>:48                                      ; preds = %39, %0
  %49 = phi float [ %45, %39 ], [ undef, %0 ]
  %50 = phi float [ %41, %39 ], [ undef, %0 ]
  %51 = phi float [ %46, %39 ], [ undef, %0 ]
  %52 = phi float [ %42, %39 ], [ undef, %0 ]
  %53 = phi float [ %47, %39 ], [ undef, %0 ]
  %54 = phi float [ %43, %39 ], [ undef, %0 ]
  %55 = getelementptr [16 x float], [16 x float]* %14, i32 0, i32 0
  %56 = getelementptr [16 x float], [16 x float]* %15, i32 0, i32 0
  %57 = getelementptr [16 x float], [16 x float]* %16, i32 0, i32 0
  store float %36, float* %55, align 4
  store float %37, float* %56, align 4
  store float %38, float* %57, align 4
  br i1 %19, label %65, label %58, !dx.controlflow.hints !23

; <label>:58                                      ; preds = %48
  %59 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 0
  %60 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 0
  %61 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 0
  store float %51, float* %59, align 4
  store float %50, float* %60, align 4
  store float %54, float* %61, align 4
  %62 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 0
  %63 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 0
  %64 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 0
  store float %49, float* %62, align 4
  store float %52, float* %63, align 4
  store float %53, float* %64, align 4
  br label %65

; <label>:65                                      ; preds = %58, %48
  %66 = or i32 %20, 1
  %67 = uitofp i32 %66 to float
  %68 = fadd fast float %67, 5.000000e-01
  %69 = fdiv fast float %68, %26
  %70 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %69, float %34, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %71 = extractvalue %dx.types.ResRet.f32 %70, 0
  %72 = extractvalue %dx.types.ResRet.f32 %70, 1
  %73 = extractvalue %dx.types.ResRet.f32 %70, 2
  br i1 %19, label %83, label %74, !dx.controlflow.hints !22

; <label>:74                                      ; preds = %65
  %75 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %4, float %69, float %34, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %76 = extractvalue %dx.types.ResRet.f32 %75, 0
  %77 = extractvalue %dx.types.ResRet.f32 %75, 1
  %78 = extractvalue %dx.types.ResRet.f32 %75, 2
  %79 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %4, float %69, float %34, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %80 = extractvalue %dx.types.ResRet.f32 %79, 0
  %81 = extractvalue %dx.types.ResRet.f32 %79, 1
  %82 = extractvalue %dx.types.ResRet.f32 %79, 2
  br label %83

; <label>:83                                      ; preds = %74, %65
  %84 = phi float [ %80, %74 ], [ %49, %65 ]
  %85 = phi float [ %76, %74 ], [ %50, %65 ]
  %86 = phi float [ %81, %74 ], [ %51, %65 ]
  %87 = phi float [ %77, %74 ], [ %52, %65 ]
  %88 = phi float [ %82, %74 ], [ %53, %65 ]
  %89 = phi float [ %78, %74 ], [ %54, %65 ]
  %90 = getelementptr [16 x float], [16 x float]* %14, i32 0, i32 1
  %91 = getelementptr [16 x float], [16 x float]* %15, i32 0, i32 1
  %92 = getelementptr [16 x float], [16 x float]* %16, i32 0, i32 1
  store float %71, float* %90, align 4
  store float %72, float* %91, align 4
  store float %73, float* %92, align 4
  br i1 %19, label %100, label %93, !dx.controlflow.hints !23

; <label>:93                                      ; preds = %83
  %94 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 1
  %95 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 1
  %96 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 1
  store float %86, float* %94, align 4
  store float %85, float* %95, align 4
  store float %89, float* %96, align 4
  %97 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 1
  %98 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 1
  %99 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 1
  store float %84, float* %97, align 4
  store float %87, float* %98, align 4
  store float %88, float* %99, align 4
  br label %100

; <label>:100                                     ; preds = %93, %83
  %101 = or i32 %20, 2
  %102 = uitofp i32 %101 to float
  %103 = fadd fast float %102, 5.000000e-01
  %104 = fdiv fast float %103, %26
  %105 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %104, float %34, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %106 = extractvalue %dx.types.ResRet.f32 %105, 0
  %107 = extractvalue %dx.types.ResRet.f32 %105, 1
  %108 = extractvalue %dx.types.ResRet.f32 %105, 2
  br i1 %19, label %118, label %109, !dx.controlflow.hints !22

; <label>:109                                     ; preds = %100
  %110 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %4, float %104, float %34, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %111 = extractvalue %dx.types.ResRet.f32 %110, 0
  %112 = extractvalue %dx.types.ResRet.f32 %110, 1
  %113 = extractvalue %dx.types.ResRet.f32 %110, 2
  %114 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %4, float %104, float %34, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %115 = extractvalue %dx.types.ResRet.f32 %114, 0
  %116 = extractvalue %dx.types.ResRet.f32 %114, 1
  %117 = extractvalue %dx.types.ResRet.f32 %114, 2
  br label %118

; <label>:118                                     ; preds = %109, %100
  %119 = phi float [ %115, %109 ], [ %84, %100 ]
  %120 = phi float [ %111, %109 ], [ %85, %100 ]
  %121 = phi float [ %116, %109 ], [ %86, %100 ]
  %122 = phi float [ %112, %109 ], [ %87, %100 ]
  %123 = phi float [ %117, %109 ], [ %88, %100 ]
  %124 = phi float [ %113, %109 ], [ %89, %100 ]
  %125 = getelementptr [16 x float], [16 x float]* %14, i32 0, i32 2
  %126 = getelementptr [16 x float], [16 x float]* %15, i32 0, i32 2
  %127 = getelementptr [16 x float], [16 x float]* %16, i32 0, i32 2
  store float %106, float* %125, align 4
  store float %107, float* %126, align 4
  store float %108, float* %127, align 4
  br i1 %19, label %135, label %128, !dx.controlflow.hints !23

; <label>:128                                     ; preds = %118
  %129 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 2
  %130 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 2
  %131 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 2
  store float %121, float* %129, align 4
  store float %120, float* %130, align 4
  store float %124, float* %131, align 4
  %132 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 2
  %133 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 2
  %134 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 2
  store float %119, float* %132, align 4
  store float %122, float* %133, align 4
  store float %123, float* %134, align 4
  br label %135

; <label>:135                                     ; preds = %128, %118
  %136 = or i32 %20, 3
  %137 = uitofp i32 %136 to float
  %138 = fadd fast float %137, 5.000000e-01
  %139 = fdiv fast float %138, %26
  %140 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %139, float %34, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %141 = extractvalue %dx.types.ResRet.f32 %140, 0
  %142 = extractvalue %dx.types.ResRet.f32 %140, 1
  %143 = extractvalue %dx.types.ResRet.f32 %140, 2
  br i1 %19, label %153, label %144, !dx.controlflow.hints !22

; <label>:144                                     ; preds = %135
  %145 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %4, float %139, float %34, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %146 = extractvalue %dx.types.ResRet.f32 %145, 0
  %147 = extractvalue %dx.types.ResRet.f32 %145, 1
  %148 = extractvalue %dx.types.ResRet.f32 %145, 2
  %149 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %4, float %139, float %34, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %150 = extractvalue %dx.types.ResRet.f32 %149, 0
  %151 = extractvalue %dx.types.ResRet.f32 %149, 1
  %152 = extractvalue %dx.types.ResRet.f32 %149, 2
  br label %153

; <label>:153                                     ; preds = %144, %135
  %154 = phi float [ %150, %144 ], [ %119, %135 ]
  %155 = phi float [ %146, %144 ], [ %120, %135 ]
  %156 = phi float [ %151, %144 ], [ %121, %135 ]
  %157 = phi float [ %147, %144 ], [ %122, %135 ]
  %158 = phi float [ %152, %144 ], [ %123, %135 ]
  %159 = phi float [ %148, %144 ], [ %124, %135 ]
  %160 = getelementptr [16 x float], [16 x float]* %14, i32 0, i32 3
  %161 = getelementptr [16 x float], [16 x float]* %15, i32 0, i32 3
  %162 = getelementptr [16 x float], [16 x float]* %16, i32 0, i32 3
  store float %141, float* %160, align 4
  store float %142, float* %161, align 4
  store float %143, float* %162, align 4
  br i1 %19, label %170, label %163, !dx.controlflow.hints !23

; <label>:163                                     ; preds = %153
  %164 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 3
  %165 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 3
  %166 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 3
  store float %156, float* %164, align 4
  store float %155, float* %165, align 4
  store float %159, float* %166, align 4
  %167 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 3
  %168 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 3
  %169 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 3
  store float %154, float* %167, align 4
  store float %157, float* %168, align 4
  store float %158, float* %169, align 4
  br label %170

; <label>:170                                     ; preds = %163, %153
  %171 = or i32 %21, 1
  %172 = uitofp i32 %171 to float
  %173 = fadd fast float %172, 5.000000e-01
  %174 = fdiv fast float %173, %28
  %175 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %33, float %174, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %176 = extractvalue %dx.types.ResRet.f32 %175, 0
  %177 = extractvalue %dx.types.ResRet.f32 %175, 1
  %178 = extractvalue %dx.types.ResRet.f32 %175, 2
  br i1 %19, label %188, label %179, !dx.controlflow.hints !22

; <label>:179                                     ; preds = %170
  %180 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %4, float %33, float %174, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %181 = extractvalue %dx.types.ResRet.f32 %180, 0
  %182 = extractvalue %dx.types.ResRet.f32 %180, 1
  %183 = extractvalue %dx.types.ResRet.f32 %180, 2
  %184 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %4, float %33, float %174, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %185 = extractvalue %dx.types.ResRet.f32 %184, 0
  %186 = extractvalue %dx.types.ResRet.f32 %184, 1
  %187 = extractvalue %dx.types.ResRet.f32 %184, 2
  br label %188

; <label>:188                                     ; preds = %179, %170
  %189 = phi float [ %185, %179 ], [ %154, %170 ]
  %190 = phi float [ %181, %179 ], [ %155, %170 ]
  %191 = phi float [ %186, %179 ], [ %156, %170 ]
  %192 = phi float [ %182, %179 ], [ %157, %170 ]
  %193 = phi float [ %187, %179 ], [ %158, %170 ]
  %194 = phi float [ %183, %179 ], [ %159, %170 ]
  %195 = getelementptr [16 x float], [16 x float]* %14, i32 0, i32 4
  %196 = getelementptr [16 x float], [16 x float]* %15, i32 0, i32 4
  %197 = getelementptr [16 x float], [16 x float]* %16, i32 0, i32 4
  store float %176, float* %195, align 4
  store float %177, float* %196, align 4
  store float %178, float* %197, align 4
  br i1 %19, label %205, label %198, !dx.controlflow.hints !23

; <label>:198                                     ; preds = %188
  %199 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 4
  %200 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 4
  %201 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 4
  store float %191, float* %199, align 4
  store float %190, float* %200, align 4
  store float %194, float* %201, align 4
  %202 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 4
  %203 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 4
  %204 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 4
  store float %189, float* %202, align 4
  store float %192, float* %203, align 4
  store float %193, float* %204, align 4
  br label %205

; <label>:205                                     ; preds = %198, %188
  %206 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %69, float %174, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %207 = extractvalue %dx.types.ResRet.f32 %206, 0
  %208 = extractvalue %dx.types.ResRet.f32 %206, 1
  %209 = extractvalue %dx.types.ResRet.f32 %206, 2
  br i1 %19, label %219, label %210, !dx.controlflow.hints !22

; <label>:210                                     ; preds = %205
  %211 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %4, float %69, float %174, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %212 = extractvalue %dx.types.ResRet.f32 %211, 0
  %213 = extractvalue %dx.types.ResRet.f32 %211, 1
  %214 = extractvalue %dx.types.ResRet.f32 %211, 2
  %215 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %4, float %69, float %174, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %216 = extractvalue %dx.types.ResRet.f32 %215, 0
  %217 = extractvalue %dx.types.ResRet.f32 %215, 1
  %218 = extractvalue %dx.types.ResRet.f32 %215, 2
  br label %219

; <label>:219                                     ; preds = %210, %205
  %220 = phi float [ %216, %210 ], [ %189, %205 ]
  %221 = phi float [ %212, %210 ], [ %190, %205 ]
  %222 = phi float [ %217, %210 ], [ %191, %205 ]
  %223 = phi float [ %213, %210 ], [ %192, %205 ]
  %224 = phi float [ %218, %210 ], [ %193, %205 ]
  %225 = phi float [ %214, %210 ], [ %194, %205 ]
  %226 = getelementptr [16 x float], [16 x float]* %14, i32 0, i32 5
  %227 = getelementptr [16 x float], [16 x float]* %15, i32 0, i32 5
  %228 = getelementptr [16 x float], [16 x float]* %16, i32 0, i32 5
  store float %207, float* %226, align 4
  store float %208, float* %227, align 4
  store float %209, float* %228, align 4
  br i1 %19, label %236, label %229, !dx.controlflow.hints !23

; <label>:229                                     ; preds = %219
  %230 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 5
  %231 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 5
  %232 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 5
  store float %222, float* %230, align 4
  store float %221, float* %231, align 4
  store float %225, float* %232, align 4
  %233 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 5
  %234 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 5
  %235 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 5
  store float %220, float* %233, align 4
  store float %223, float* %234, align 4
  store float %224, float* %235, align 4
  br label %236

; <label>:236                                     ; preds = %229, %219
  %237 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %104, float %174, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %238 = extractvalue %dx.types.ResRet.f32 %237, 0
  %239 = extractvalue %dx.types.ResRet.f32 %237, 1
  %240 = extractvalue %dx.types.ResRet.f32 %237, 2
  br i1 %19, label %250, label %241, !dx.controlflow.hints !22

; <label>:241                                     ; preds = %236
  %242 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %4, float %104, float %174, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %243 = extractvalue %dx.types.ResRet.f32 %242, 0
  %244 = extractvalue %dx.types.ResRet.f32 %242, 1
  %245 = extractvalue %dx.types.ResRet.f32 %242, 2
  %246 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %4, float %104, float %174, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %247 = extractvalue %dx.types.ResRet.f32 %246, 0
  %248 = extractvalue %dx.types.ResRet.f32 %246, 1
  %249 = extractvalue %dx.types.ResRet.f32 %246, 2
  br label %250

; <label>:250                                     ; preds = %241, %236
  %251 = phi float [ %247, %241 ], [ %220, %236 ]
  %252 = phi float [ %243, %241 ], [ %221, %236 ]
  %253 = phi float [ %248, %241 ], [ %222, %236 ]
  %254 = phi float [ %244, %241 ], [ %223, %236 ]
  %255 = phi float [ %249, %241 ], [ %224, %236 ]
  %256 = phi float [ %245, %241 ], [ %225, %236 ]
  %257 = getelementptr [16 x float], [16 x float]* %14, i32 0, i32 6
  %258 = getelementptr [16 x float], [16 x float]* %15, i32 0, i32 6
  %259 = getelementptr [16 x float], [16 x float]* %16, i32 0, i32 6
  store float %238, float* %257, align 4
  store float %239, float* %258, align 4
  store float %240, float* %259, align 4
  br i1 %19, label %267, label %260, !dx.controlflow.hints !23

; <label>:260                                     ; preds = %250
  %261 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 6
  %262 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 6
  %263 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 6
  store float %253, float* %261, align 4
  store float %252, float* %262, align 4
  store float %256, float* %263, align 4
  %264 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 6
  %265 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 6
  %266 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 6
  store float %251, float* %264, align 4
  store float %254, float* %265, align 4
  store float %255, float* %266, align 4
  br label %267

; <label>:267                                     ; preds = %260, %250
  %268 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %139, float %174, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %269 = extractvalue %dx.types.ResRet.f32 %268, 0
  %270 = extractvalue %dx.types.ResRet.f32 %268, 1
  %271 = extractvalue %dx.types.ResRet.f32 %268, 2
  br i1 %19, label %281, label %272, !dx.controlflow.hints !22

; <label>:272                                     ; preds = %267
  %273 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %4, float %139, float %174, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %274 = extractvalue %dx.types.ResRet.f32 %273, 0
  %275 = extractvalue %dx.types.ResRet.f32 %273, 1
  %276 = extractvalue %dx.types.ResRet.f32 %273, 2
  %277 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %4, float %139, float %174, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %278 = extractvalue %dx.types.ResRet.f32 %277, 0
  %279 = extractvalue %dx.types.ResRet.f32 %277, 1
  %280 = extractvalue %dx.types.ResRet.f32 %277, 2
  br label %281

; <label>:281                                     ; preds = %272, %267
  %282 = phi float [ %278, %272 ], [ %251, %267 ]
  %283 = phi float [ %274, %272 ], [ %252, %267 ]
  %284 = phi float [ %279, %272 ], [ %253, %267 ]
  %285 = phi float [ %275, %272 ], [ %254, %267 ]
  %286 = phi float [ %280, %272 ], [ %255, %267 ]
  %287 = phi float [ %276, %272 ], [ %256, %267 ]
  %288 = getelementptr [16 x float], [16 x float]* %14, i32 0, i32 7
  %289 = getelementptr [16 x float], [16 x float]* %15, i32 0, i32 7
  %290 = getelementptr [16 x float], [16 x float]* %16, i32 0, i32 7
  store float %269, float* %288, align 4
  store float %270, float* %289, align 4
  store float %271, float* %290, align 4
  br i1 %19, label %298, label %291, !dx.controlflow.hints !23

; <label>:291                                     ; preds = %281
  %292 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 7
  %293 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 7
  %294 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 7
  store float %284, float* %292, align 4
  store float %283, float* %293, align 4
  store float %287, float* %294, align 4
  %295 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 7
  %296 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 7
  %297 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 7
  store float %282, float* %295, align 4
  store float %285, float* %296, align 4
  store float %286, float* %297, align 4
  br label %298

; <label>:298                                     ; preds = %291, %281
  %299 = or i32 %21, 2
  %300 = uitofp i32 %299 to float
  %301 = fadd fast float %300, 5.000000e-01
  %302 = fdiv fast float %301, %28
  %303 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %33, float %302, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %304 = extractvalue %dx.types.ResRet.f32 %303, 0
  %305 = extractvalue %dx.types.ResRet.f32 %303, 1
  %306 = extractvalue %dx.types.ResRet.f32 %303, 2
  br i1 %19, label %316, label %307, !dx.controlflow.hints !22

; <label>:307                                     ; preds = %298
  %308 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %4, float %33, float %302, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %309 = extractvalue %dx.types.ResRet.f32 %308, 0
  %310 = extractvalue %dx.types.ResRet.f32 %308, 1
  %311 = extractvalue %dx.types.ResRet.f32 %308, 2
  %312 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %4, float %33, float %302, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %313 = extractvalue %dx.types.ResRet.f32 %312, 0
  %314 = extractvalue %dx.types.ResRet.f32 %312, 1
  %315 = extractvalue %dx.types.ResRet.f32 %312, 2
  br label %316

; <label>:316                                     ; preds = %307, %298
  %317 = phi float [ %313, %307 ], [ %282, %298 ]
  %318 = phi float [ %309, %307 ], [ %283, %298 ]
  %319 = phi float [ %314, %307 ], [ %284, %298 ]
  %320 = phi float [ %310, %307 ], [ %285, %298 ]
  %321 = phi float [ %315, %307 ], [ %286, %298 ]
  %322 = phi float [ %311, %307 ], [ %287, %298 ]
  %323 = getelementptr [16 x float], [16 x float]* %14, i32 0, i32 8
  %324 = getelementptr [16 x float], [16 x float]* %15, i32 0, i32 8
  %325 = getelementptr [16 x float], [16 x float]* %16, i32 0, i32 8
  store float %304, float* %323, align 4
  store float %305, float* %324, align 4
  store float %306, float* %325, align 4
  br i1 %19, label %333, label %326, !dx.controlflow.hints !23

; <label>:326                                     ; preds = %316
  %327 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 8
  %328 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 8
  %329 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 8
  store float %319, float* %327, align 4
  store float %318, float* %328, align 4
  store float %322, float* %329, align 4
  %330 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 8
  %331 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 8
  %332 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 8
  store float %317, float* %330, align 4
  store float %320, float* %331, align 4
  store float %321, float* %332, align 4
  br label %333

; <label>:333                                     ; preds = %326, %316
  %334 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %69, float %302, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %335 = extractvalue %dx.types.ResRet.f32 %334, 0
  %336 = extractvalue %dx.types.ResRet.f32 %334, 1
  %337 = extractvalue %dx.types.ResRet.f32 %334, 2
  br i1 %19, label %347, label %338, !dx.controlflow.hints !22

; <label>:338                                     ; preds = %333
  %339 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %4, float %69, float %302, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %340 = extractvalue %dx.types.ResRet.f32 %339, 0
  %341 = extractvalue %dx.types.ResRet.f32 %339, 1
  %342 = extractvalue %dx.types.ResRet.f32 %339, 2
  %343 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %4, float %69, float %302, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %344 = extractvalue %dx.types.ResRet.f32 %343, 0
  %345 = extractvalue %dx.types.ResRet.f32 %343, 1
  %346 = extractvalue %dx.types.ResRet.f32 %343, 2
  br label %347

; <label>:347                                     ; preds = %338, %333
  %348 = phi float [ %344, %338 ], [ %317, %333 ]
  %349 = phi float [ %340, %338 ], [ %318, %333 ]
  %350 = phi float [ %345, %338 ], [ %319, %333 ]
  %351 = phi float [ %341, %338 ], [ %320, %333 ]
  %352 = phi float [ %346, %338 ], [ %321, %333 ]
  %353 = phi float [ %342, %338 ], [ %322, %333 ]
  %354 = getelementptr [16 x float], [16 x float]* %14, i32 0, i32 9
  %355 = getelementptr [16 x float], [16 x float]* %15, i32 0, i32 9
  %356 = getelementptr [16 x float], [16 x float]* %16, i32 0, i32 9
  store float %335, float* %354, align 4
  store float %336, float* %355, align 4
  store float %337, float* %356, align 4
  br i1 %19, label %364, label %357, !dx.controlflow.hints !23

; <label>:357                                     ; preds = %347
  %358 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 9
  %359 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 9
  %360 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 9
  store float %350, float* %358, align 4
  store float %349, float* %359, align 4
  store float %353, float* %360, align 4
  %361 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 9
  %362 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 9
  %363 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 9
  store float %348, float* %361, align 4
  store float %351, float* %362, align 4
  store float %352, float* %363, align 4
  br label %364

; <label>:364                                     ; preds = %357, %347
  %365 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %104, float %302, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %366 = extractvalue %dx.types.ResRet.f32 %365, 0
  %367 = extractvalue %dx.types.ResRet.f32 %365, 1
  %368 = extractvalue %dx.types.ResRet.f32 %365, 2
  br i1 %19, label %378, label %369, !dx.controlflow.hints !22

; <label>:369                                     ; preds = %364
  %370 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %4, float %104, float %302, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %371 = extractvalue %dx.types.ResRet.f32 %370, 0
  %372 = extractvalue %dx.types.ResRet.f32 %370, 1
  %373 = extractvalue %dx.types.ResRet.f32 %370, 2
  %374 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %4, float %104, float %302, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %375 = extractvalue %dx.types.ResRet.f32 %374, 0
  %376 = extractvalue %dx.types.ResRet.f32 %374, 1
  %377 = extractvalue %dx.types.ResRet.f32 %374, 2
  br label %378

; <label>:378                                     ; preds = %369, %364
  %379 = phi float [ %375, %369 ], [ %348, %364 ]
  %380 = phi float [ %371, %369 ], [ %349, %364 ]
  %381 = phi float [ %376, %369 ], [ %350, %364 ]
  %382 = phi float [ %372, %369 ], [ %351, %364 ]
  %383 = phi float [ %377, %369 ], [ %352, %364 ]
  %384 = phi float [ %373, %369 ], [ %353, %364 ]
  %385 = getelementptr [16 x float], [16 x float]* %14, i32 0, i32 10
  %386 = getelementptr [16 x float], [16 x float]* %15, i32 0, i32 10
  %387 = getelementptr [16 x float], [16 x float]* %16, i32 0, i32 10
  store float %366, float* %385, align 4
  store float %367, float* %386, align 4
  store float %368, float* %387, align 4
  br i1 %19, label %395, label %388, !dx.controlflow.hints !23

; <label>:388                                     ; preds = %378
  %389 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 10
  %390 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 10
  %391 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 10
  store float %381, float* %389, align 4
  store float %380, float* %390, align 4
  store float %384, float* %391, align 4
  %392 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 10
  %393 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 10
  %394 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 10
  store float %379, float* %392, align 4
  store float %382, float* %393, align 4
  store float %383, float* %394, align 4
  br label %395

; <label>:395                                     ; preds = %388, %378
  %396 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %139, float %302, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %397 = extractvalue %dx.types.ResRet.f32 %396, 0
  %398 = extractvalue %dx.types.ResRet.f32 %396, 1
  %399 = extractvalue %dx.types.ResRet.f32 %396, 2
  br i1 %19, label %409, label %400, !dx.controlflow.hints !22

; <label>:400                                     ; preds = %395
  %401 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %4, float %139, float %302, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %402 = extractvalue %dx.types.ResRet.f32 %401, 0
  %403 = extractvalue %dx.types.ResRet.f32 %401, 1
  %404 = extractvalue %dx.types.ResRet.f32 %401, 2
  %405 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %4, float %139, float %302, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %406 = extractvalue %dx.types.ResRet.f32 %405, 0
  %407 = extractvalue %dx.types.ResRet.f32 %405, 1
  %408 = extractvalue %dx.types.ResRet.f32 %405, 2
  br label %409

; <label>:409                                     ; preds = %400, %395
  %410 = phi float [ %406, %400 ], [ %379, %395 ]
  %411 = phi float [ %402, %400 ], [ %380, %395 ]
  %412 = phi float [ %407, %400 ], [ %381, %395 ]
  %413 = phi float [ %403, %400 ], [ %382, %395 ]
  %414 = phi float [ %408, %400 ], [ %383, %395 ]
  %415 = phi float [ %404, %400 ], [ %384, %395 ]
  %416 = getelementptr [16 x float], [16 x float]* %14, i32 0, i32 11
  %417 = getelementptr [16 x float], [16 x float]* %15, i32 0, i32 11
  %418 = getelementptr [16 x float], [16 x float]* %16, i32 0, i32 11
  store float %397, float* %416, align 4
  store float %398, float* %417, align 4
  store float %399, float* %418, align 4
  br i1 %19, label %426, label %419, !dx.controlflow.hints !23

; <label>:419                                     ; preds = %409
  %420 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 11
  %421 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 11
  %422 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 11
  store float %412, float* %420, align 4
  store float %411, float* %421, align 4
  store float %415, float* %422, align 4
  %423 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 11
  %424 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 11
  %425 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 11
  store float %410, float* %423, align 4
  store float %413, float* %424, align 4
  store float %414, float* %425, align 4
  br label %426

; <label>:426                                     ; preds = %419, %409
  %427 = or i32 %21, 3
  %428 = uitofp i32 %427 to float
  %429 = fadd fast float %428, 5.000000e-01
  %430 = fdiv fast float %429, %28
  %431 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %33, float %430, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %432 = extractvalue %dx.types.ResRet.f32 %431, 0
  %433 = extractvalue %dx.types.ResRet.f32 %431, 1
  %434 = extractvalue %dx.types.ResRet.f32 %431, 2
  br i1 %19, label %444, label %435, !dx.controlflow.hints !22

; <label>:435                                     ; preds = %426
  %436 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %4, float %33, float %430, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %437 = extractvalue %dx.types.ResRet.f32 %436, 0
  %438 = extractvalue %dx.types.ResRet.f32 %436, 1
  %439 = extractvalue %dx.types.ResRet.f32 %436, 2
  %440 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %4, float %33, float %430, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %441 = extractvalue %dx.types.ResRet.f32 %440, 0
  %442 = extractvalue %dx.types.ResRet.f32 %440, 1
  %443 = extractvalue %dx.types.ResRet.f32 %440, 2
  br label %444

; <label>:444                                     ; preds = %435, %426
  %445 = phi float [ %441, %435 ], [ %410, %426 ]
  %446 = phi float [ %437, %435 ], [ %411, %426 ]
  %447 = phi float [ %442, %435 ], [ %412, %426 ]
  %448 = phi float [ %438, %435 ], [ %413, %426 ]
  %449 = phi float [ %443, %435 ], [ %414, %426 ]
  %450 = phi float [ %439, %435 ], [ %415, %426 ]
  %451 = getelementptr [16 x float], [16 x float]* %14, i32 0, i32 12
  %452 = getelementptr [16 x float], [16 x float]* %15, i32 0, i32 12
  %453 = getelementptr [16 x float], [16 x float]* %16, i32 0, i32 12
  store float %432, float* %451, align 4
  store float %433, float* %452, align 4
  store float %434, float* %453, align 4
  br i1 %19, label %461, label %454, !dx.controlflow.hints !23

; <label>:454                                     ; preds = %444
  %455 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 12
  %456 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 12
  %457 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 12
  store float %447, float* %455, align 4
  store float %446, float* %456, align 4
  store float %450, float* %457, align 4
  %458 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 12
  %459 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 12
  %460 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 12
  store float %445, float* %458, align 4
  store float %448, float* %459, align 4
  store float %449, float* %460, align 4
  br label %461

; <label>:461                                     ; preds = %454, %444
  %462 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %69, float %430, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %463 = extractvalue %dx.types.ResRet.f32 %462, 0
  %464 = extractvalue %dx.types.ResRet.f32 %462, 1
  %465 = extractvalue %dx.types.ResRet.f32 %462, 2
  br i1 %19, label %475, label %466, !dx.controlflow.hints !22

; <label>:466                                     ; preds = %461
  %467 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %4, float %69, float %430, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %468 = extractvalue %dx.types.ResRet.f32 %467, 0
  %469 = extractvalue %dx.types.ResRet.f32 %467, 1
  %470 = extractvalue %dx.types.ResRet.f32 %467, 2
  %471 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %4, float %69, float %430, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %472 = extractvalue %dx.types.ResRet.f32 %471, 0
  %473 = extractvalue %dx.types.ResRet.f32 %471, 1
  %474 = extractvalue %dx.types.ResRet.f32 %471, 2
  br label %475

; <label>:475                                     ; preds = %466, %461
  %476 = phi float [ %472, %466 ], [ %445, %461 ]
  %477 = phi float [ %468, %466 ], [ %446, %461 ]
  %478 = phi float [ %473, %466 ], [ %447, %461 ]
  %479 = phi float [ %469, %466 ], [ %448, %461 ]
  %480 = phi float [ %474, %466 ], [ %449, %461 ]
  %481 = phi float [ %470, %466 ], [ %450, %461 ]
  %482 = getelementptr [16 x float], [16 x float]* %14, i32 0, i32 13
  %483 = getelementptr [16 x float], [16 x float]* %15, i32 0, i32 13
  %484 = getelementptr [16 x float], [16 x float]* %16, i32 0, i32 13
  store float %463, float* %482, align 4
  store float %464, float* %483, align 4
  store float %465, float* %484, align 4
  br i1 %19, label %492, label %485, !dx.controlflow.hints !23

; <label>:485                                     ; preds = %475
  %486 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 13
  %487 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 13
  %488 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 13
  store float %478, float* %486, align 4
  store float %477, float* %487, align 4
  store float %481, float* %488, align 4
  %489 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 13
  %490 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 13
  %491 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 13
  store float %476, float* %489, align 4
  store float %479, float* %490, align 4
  store float %480, float* %491, align 4
  br label %492

; <label>:492                                     ; preds = %485, %475
  %493 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %104, float %430, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %494 = extractvalue %dx.types.ResRet.f32 %493, 0
  %495 = extractvalue %dx.types.ResRet.f32 %493, 1
  %496 = extractvalue %dx.types.ResRet.f32 %493, 2
  br i1 %19, label %506, label %497, !dx.controlflow.hints !22

; <label>:497                                     ; preds = %492
  %498 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %4, float %104, float %430, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %499 = extractvalue %dx.types.ResRet.f32 %498, 0
  %500 = extractvalue %dx.types.ResRet.f32 %498, 1
  %501 = extractvalue %dx.types.ResRet.f32 %498, 2
  %502 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %4, float %104, float %430, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %503 = extractvalue %dx.types.ResRet.f32 %502, 0
  %504 = extractvalue %dx.types.ResRet.f32 %502, 1
  %505 = extractvalue %dx.types.ResRet.f32 %502, 2
  br label %506

; <label>:506                                     ; preds = %497, %492
  %507 = phi float [ %503, %497 ], [ %476, %492 ]
  %508 = phi float [ %499, %497 ], [ %477, %492 ]
  %509 = phi float [ %504, %497 ], [ %478, %492 ]
  %510 = phi float [ %500, %497 ], [ %479, %492 ]
  %511 = phi float [ %505, %497 ], [ %480, %492 ]
  %512 = phi float [ %501, %497 ], [ %481, %492 ]
  %513 = getelementptr [16 x float], [16 x float]* %14, i32 0, i32 14
  %514 = getelementptr [16 x float], [16 x float]* %15, i32 0, i32 14
  %515 = getelementptr [16 x float], [16 x float]* %16, i32 0, i32 14
  store float %494, float* %513, align 4
  store float %495, float* %514, align 4
  store float %496, float* %515, align 4
  br i1 %19, label %523, label %516, !dx.controlflow.hints !23

; <label>:516                                     ; preds = %506
  %517 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 14
  %518 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 14
  %519 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 14
  store float %509, float* %517, align 4
  store float %508, float* %518, align 4
  store float %512, float* %519, align 4
  %520 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 14
  %521 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 14
  %522 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 14
  store float %507, float* %520, align 4
  store float %510, float* %521, align 4
  store float %511, float* %522, align 4
  br label %523

; <label>:523                                     ; preds = %516, %506
  %524 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %139, float %430, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %525 = extractvalue %dx.types.ResRet.f32 %524, 0
  %526 = extractvalue %dx.types.ResRet.f32 %524, 1
  %527 = extractvalue %dx.types.ResRet.f32 %524, 2
  br i1 %19, label %537, label %528, !dx.controlflow.hints !22

; <label>:528                                     ; preds = %523
  %529 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %4, float %139, float %430, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %530 = extractvalue %dx.types.ResRet.f32 %529, 0
  %531 = extractvalue %dx.types.ResRet.f32 %529, 1
  %532 = extractvalue %dx.types.ResRet.f32 %529, 2
  %533 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %4, float %139, float %430, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %534 = extractvalue %dx.types.ResRet.f32 %533, 0
  %535 = extractvalue %dx.types.ResRet.f32 %533, 1
  %536 = extractvalue %dx.types.ResRet.f32 %533, 2
  br label %537

; <label>:537                                     ; preds = %528, %523
  %538 = phi float [ %534, %528 ], [ %507, %523 ]
  %539 = phi float [ %530, %528 ], [ %508, %523 ]
  %540 = phi float [ %535, %528 ], [ %509, %523 ]
  %541 = phi float [ %531, %528 ], [ %510, %523 ]
  %542 = phi float [ %536, %528 ], [ %511, %523 ]
  %543 = phi float [ %532, %528 ], [ %512, %523 ]
  %544 = getelementptr [16 x float], [16 x float]* %14, i32 0, i32 15
  %545 = getelementptr [16 x float], [16 x float]* %15, i32 0, i32 15
  %546 = getelementptr [16 x float], [16 x float]* %16, i32 0, i32 15
  store float %525, float* %544, align 4
  store float %526, float* %545, align 4
  store float %527, float* %546, align 4
  br i1 %19, label %554, label %547, !dx.controlflow.hints !23

; <label>:547                                     ; preds = %537
  %548 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 15
  %549 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 15
  %550 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 15
  store float %540, float* %548, align 4
  store float %539, float* %549, align 4
  store float %543, float* %550, align 4
  %551 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 15
  %552 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 15
  %553 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 15
  store float %538, float* %551, align 4
  store float %541, float* %552, align 4
  store float %542, float* %553, align 4
  br label %554

; <label>:554                                     ; preds = %547, %537
  br label %555

; <label>:555                                     ; preds = %574, %554
  %556 = phi float [ %580, %574 ], [ %73, %554 ]
  %557 = phi float [ %578, %574 ], [ %72, %554 ]
  %558 = phi float [ %576, %574 ], [ %71, %554 ]
  %559 = phi float [ %569, %574 ], [ %36, %554 ]
  %560 = phi float [ %570, %574 ], [ %37, %554 ]
  %561 = phi float [ %571, %574 ], [ %38, %554 ]
  %562 = phi float [ %566, %574 ], [ %36, %554 ]
  %563 = phi float [ %567, %574 ], [ %37, %554 ]
  %564 = phi float [ %568, %574 ], [ %38, %554 ]
  %565 = phi i32 [ %572, %574 ], [ 1, %554 ]
  %566 = call float @dx.op.binary.f32(i32 36, float %562, float %558)  ; FMin(a,b)
  %567 = call float @dx.op.binary.f32(i32 36, float %563, float %557)  ; FMin(a,b)
  %568 = call float @dx.op.binary.f32(i32 36, float %564, float %556)  ; FMin(a,b)
  %569 = call float @dx.op.binary.f32(i32 35, float %559, float %558)  ; FMax(a,b)
  %570 = call float @dx.op.binary.f32(i32 35, float %560, float %557)  ; FMax(a,b)
  %571 = call float @dx.op.binary.f32(i32 35, float %561, float %556)  ; FMax(a,b)
  %572 = add nuw nsw i32 %565, 1
  %573 = icmp eq i32 %572, 16
  br i1 %573, label %581, label %574

; <label>:574                                     ; preds = %555
  %575 = getelementptr [16 x float], [16 x float]* %14, i32 0, i32 %572
  %576 = load float, float* %575, align 4
  %577 = getelementptr [16 x float], [16 x float]* %15, i32 0, i32 %572
  %578 = load float, float* %577, align 4
  %579 = getelementptr [16 x float], [16 x float]* %16, i32 0, i32 %572
  %580 = load float, float* %579, align 4
  br label %555

; <label>:581                                     ; preds = %555
  %582 = fsub fast float %569, %566
  %583 = fsub fast float %570, %567
  %584 = fsub fast float %571, %568
  %585 = fmul fast float %582, 6.250000e-02
  %586 = fmul fast float %583, 6.250000e-02
  %587 = fmul fast float %584, 6.250000e-02
  %588 = fsub fast float %569, %585
  %589 = fsub fast float %570, %586
  %590 = fsub fast float %571, %587
  %591 = fmul fast float %588, 2.550000e+02
  %592 = fmul fast float %589, 2.550000e+02
  %593 = fmul fast float %590, 2.550000e+02
  %594 = call float @dx.op.unary.f32(i32 28, float %591)  ; Round_pi(value)
  %595 = call float @dx.op.unary.f32(i32 28, float %592)  ; Round_pi(value)
  %596 = call float @dx.op.unary.f32(i32 28, float %593)  ; Round_pi(value)
  %597 = fmul fast float %594, 0x3F70101020000000
  %598 = fmul fast float %595, 0x3F70101020000000
  %599 = fmul fast float %596, 0x3F70101020000000
  %600 = fadd fast float %585, %566
  %601 = fadd fast float %586, %567
  %602 = fadd fast float %587, %568
  %603 = fmul fast float %600, 2.550000e+02
  %604 = fmul fast float %601, 2.550000e+02
  %605 = fmul fast float %602, 2.550000e+02
  %606 = call float @dx.op.unary.f32(i32 27, float %603)  ; Round_ni(value)
  %607 = call float @dx.op.unary.f32(i32 27, float %604)  ; Round_ni(value)
  %608 = call float @dx.op.unary.f32(i32 27, float %605)  ; Round_ni(value)
  %609 = fmul fast float %606, 0x3FBF1F1F40000000
  %610 = fmul fast float %607, 0x3FCF9F9FC0000000
  %611 = fmul fast float %608, 0x3FBF1F1F40000000
  %612 = call float @dx.op.unary.f32(i32 26, float %609)  ; Round_ne(value)
  %613 = call float @dx.op.unary.f32(i32 26, float %610)  ; Round_ne(value)
  %614 = call float @dx.op.unary.f32(i32 26, float %611)  ; Round_ne(value)
  %615 = fptoui float %612 to i32
  %616 = fptoui float %613 to i32
  %617 = fptoui float %614 to i32
  %618 = shl i32 %615, 11
  %619 = shl i32 %616, 5
  %620 = or i32 %619, %618
  %621 = or i32 %620, %617
  %622 = fmul fast float %594, 0x3FBF1F1F40000000
  %623 = fmul fast float %595, 0x3FCF9F9FC0000000
  %624 = fmul fast float %596, 0x3FBF1F1F40000000
  %625 = call float @dx.op.unary.f32(i32 26, float %622)  ; Round_ne(value)
  %626 = call float @dx.op.unary.f32(i32 26, float %623)  ; Round_ne(value)
  %627 = call float @dx.op.unary.f32(i32 26, float %624)  ; Round_ne(value)
  %628 = fptoui float %625 to i32
  %629 = fptoui float %626 to i32
  %630 = fptoui float %627 to i32
  %631 = shl i32 %628, 11
  %632 = shl i32 %629, 5
  %633 = or i32 %632, %631
  %634 = or i32 %633, %630
  %635 = icmp ult i32 %621, %634
  br i1 %635, label %636, label %684, !dx.controlflow.hints !24

; <label>:636                                     ; preds = %581
  %637 = fmul fast float %608, 0x3F70101020000000
  %638 = fmul fast float %607, 0x3F70101020000000
  %639 = fmul fast float %606, 0x3F70101020000000
  %640 = fsub fast float %606, %594
  %641 = fmul fast float %640, 0x3F70101020000000
  %642 = fsub fast float %607, %595
  %643 = fmul fast float %642, 0x3F70101020000000
  %644 = fsub fast float %608, %596
  %645 = fmul fast float %644, 0x3F70101020000000
  %646 = call float @dx.op.dot3.f32(i32 55, float %641, float %643, float %645, float %641, float %643, float %645)  ; Dot3(ax,ay,az,bx,by,bz)
  %647 = fdiv fast float 3.000000e+00, %646
  %648 = fmul fast float %647, %641
  %649 = fmul fast float %647, %643
  %650 = fmul fast float %647, %645
  %651 = call float @dx.op.dot3.f32(i32 55, float %597, float %598, float %599, float %597, float %598, float %599)  ; Dot3(ax,ay,az,bx,by,bz)
  %652 = call float @dx.op.dot3.f32(i32 55, float %597, float %598, float %599, float %639, float %638, float %637)  ; Dot3(ax,ay,az,bx,by,bz)
  %653 = fsub fast float %651, %652
  %654 = fmul fast float %653, %647
  br label %655

; <label>:655                                     ; preds = %676, %636
  %656 = phi float [ %527, %636 ], [ %682, %676 ]
  %657 = phi float [ %526, %636 ], [ %680, %676 ]
  %658 = phi float [ %525, %636 ], [ %678, %676 ]
  %659 = phi i32 [ 0, %636 ], [ %673, %676 ]
  %660 = phi i32 [ 15, %636 ], [ %674, %676 ]
  %661 = call float @dx.op.dot3.f32(i32 55, float %658, float %657, float %656, float %648, float %649, float %650)  ; Dot3(ax,ay,az,bx,by,bz)
  %662 = fadd fast float %661, %654
  %663 = call float @dx.op.unary.f32(i32 26, float %662)  ; Round_ne(value)
  %664 = fptoui float %663 to i32
  %665 = and i32 %664, 1
  %666 = lshr i32 %664, 1
  %667 = xor i32 %665, %666
  %668 = shl nuw i32 %667, 1
  %669 = or i32 %666, %659
  %670 = or i32 %669, %668
  %671 = icmp ne i32 %660, 0
  %672 = shl i32 %670, 2
  %673 = select i1 %671, i32 %672, i32 %670
  %674 = add nsw i32 %660, -1
  %675 = icmp sgt i32 %660, 0
  br i1 %675, label %676, label %683

; <label>:676                                     ; preds = %655
  %677 = getelementptr [16 x float], [16 x float]* %14, i32 0, i32 %674
  %678 = load float, float* %677, align 4
  %679 = getelementptr [16 x float], [16 x float]* %15, i32 0, i32 %674
  %680 = load float, float* %679, align 4
  %681 = getelementptr [16 x float], [16 x float]* %16, i32 0, i32 %674
  %682 = load float, float* %681, align 4
  br label %655

; <label>:683                                     ; preds = %655
  br label %684

; <label>:684                                     ; preds = %683, %581
  %685 = phi i32 [ 0, %581 ], [ %673, %683 ]
  %686 = shl i32 %621, 16
  %687 = or i32 %634, %686
  %688 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %688, i32 %6, i32 %7, i32 undef, i32 %687, i32 %685, i32 0, i32 0, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br i1 %19, label %958, label %689, !dx.controlflow.hints !25

; <label>:689                                     ; preds = %684
  br label %690

; <label>:690                                     ; preds = %709, %689
  %691 = phi float [ %715, %709 ], [ %89, %689 ]
  %692 = phi float [ %713, %709 ], [ %85, %689 ]
  %693 = phi float [ %711, %709 ], [ %86, %689 ]
  %694 = phi i32 [ %707, %709 ], [ 1, %689 ]
  %695 = phi float [ %701, %709 ], [ %51, %689 ]
  %696 = phi float [ %702, %709 ], [ %50, %689 ]
  %697 = phi float [ %703, %709 ], [ %54, %689 ]
  %698 = phi float [ %704, %709 ], [ %51, %689 ]
  %699 = phi float [ %705, %709 ], [ %50, %689 ]
  %700 = phi float [ %706, %709 ], [ %54, %689 ]
  %701 = call float @dx.op.binary.f32(i32 36, float %695, float %693)  ; FMin(a,b)
  %702 = call float @dx.op.binary.f32(i32 36, float %696, float %692)  ; FMin(a,b)
  %703 = call float @dx.op.binary.f32(i32 36, float %697, float %691)  ; FMin(a,b)
  %704 = call float @dx.op.binary.f32(i32 35, float %698, float %693)  ; FMax(a,b)
  %705 = call float @dx.op.binary.f32(i32 35, float %699, float %692)  ; FMax(a,b)
  %706 = call float @dx.op.binary.f32(i32 35, float %700, float %691)  ; FMax(a,b)
  %707 = add nuw nsw i32 %694, 1
  %708 = icmp eq i32 %707, 16
  br i1 %708, label %716, label %709

; <label>:709                                     ; preds = %690
  %710 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 %707
  %711 = load float, float* %710, align 4
  %712 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 %707
  %713 = load float, float* %712, align 4
  %714 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 %707
  %715 = load float, float* %714, align 4
  br label %690

; <label>:716                                     ; preds = %690
  %717 = fsub fast float %704, %701
  %718 = fsub fast float %705, %702
  %719 = fsub fast float %706, %703
  %720 = fmul fast float %717, 6.250000e-02
  %721 = fmul fast float %718, 6.250000e-02
  %722 = fmul fast float %719, 6.250000e-02
  %723 = fsub fast float %704, %720
  %724 = fsub fast float %705, %721
  %725 = fsub fast float %706, %722
  %726 = fmul fast float %723, 2.550000e+02
  %727 = fmul fast float %724, 2.550000e+02
  %728 = fmul fast float %725, 2.550000e+02
  %729 = call float @dx.op.unary.f32(i32 28, float %726)  ; Round_pi(value)
  %730 = call float @dx.op.unary.f32(i32 28, float %727)  ; Round_pi(value)
  %731 = call float @dx.op.unary.f32(i32 28, float %728)  ; Round_pi(value)
  %732 = fmul fast float %729, 0x3F70101020000000
  %733 = fmul fast float %730, 0x3F70101020000000
  %734 = fmul fast float %731, 0x3F70101020000000
  %735 = fadd fast float %720, %701
  %736 = fadd fast float %721, %702
  %737 = fadd fast float %722, %703
  %738 = fmul fast float %735, 2.550000e+02
  %739 = fmul fast float %736, 2.550000e+02
  %740 = fmul fast float %737, 2.550000e+02
  %741 = call float @dx.op.unary.f32(i32 27, float %738)  ; Round_ni(value)
  %742 = call float @dx.op.unary.f32(i32 27, float %739)  ; Round_ni(value)
  %743 = call float @dx.op.unary.f32(i32 27, float %740)  ; Round_ni(value)
  %744 = fmul fast float %741, 0x3FBF1F1F40000000
  %745 = fmul fast float %742, 0x3FCF9F9FC0000000
  %746 = fmul fast float %743, 0x3FBF1F1F40000000
  %747 = call float @dx.op.unary.f32(i32 26, float %744)  ; Round_ne(value)
  %748 = call float @dx.op.unary.f32(i32 26, float %745)  ; Round_ne(value)
  %749 = call float @dx.op.unary.f32(i32 26, float %746)  ; Round_ne(value)
  %750 = fptoui float %747 to i32
  %751 = fptoui float %748 to i32
  %752 = fptoui float %749 to i32
  %753 = shl i32 %750, 11
  %754 = shl i32 %751, 5
  %755 = or i32 %754, %753
  %756 = or i32 %755, %752
  %757 = fmul fast float %729, 0x3FBF1F1F40000000
  %758 = fmul fast float %730, 0x3FCF9F9FC0000000
  %759 = fmul fast float %731, 0x3FBF1F1F40000000
  %760 = call float @dx.op.unary.f32(i32 26, float %757)  ; Round_ne(value)
  %761 = call float @dx.op.unary.f32(i32 26, float %758)  ; Round_ne(value)
  %762 = call float @dx.op.unary.f32(i32 26, float %759)  ; Round_ne(value)
  %763 = fptoui float %760 to i32
  %764 = fptoui float %761 to i32
  %765 = fptoui float %762 to i32
  %766 = shl i32 %763, 11
  %767 = shl i32 %764, 5
  %768 = or i32 %767, %766
  %769 = or i32 %768, %765
  %770 = icmp ult i32 %756, %769
  br i1 %770, label %771, label %819, !dx.controlflow.hints !24

; <label>:771                                     ; preds = %716
  %772 = fmul fast float %743, 0x3F70101020000000
  %773 = fmul fast float %742, 0x3F70101020000000
  %774 = fmul fast float %741, 0x3F70101020000000
  %775 = fsub fast float %741, %729
  %776 = fmul fast float %775, 0x3F70101020000000
  %777 = fsub fast float %742, %730
  %778 = fmul fast float %777, 0x3F70101020000000
  %779 = fsub fast float %743, %731
  %780 = fmul fast float %779, 0x3F70101020000000
  %781 = call float @dx.op.dot3.f32(i32 55, float %776, float %778, float %780, float %776, float %778, float %780)  ; Dot3(ax,ay,az,bx,by,bz)
  %782 = fdiv fast float 3.000000e+00, %781
  %783 = fmul fast float %782, %776
  %784 = fmul fast float %782, %778
  %785 = fmul fast float %782, %780
  %786 = call float @dx.op.dot3.f32(i32 55, float %732, float %733, float %734, float %732, float %733, float %734)  ; Dot3(ax,ay,az,bx,by,bz)
  %787 = call float @dx.op.dot3.f32(i32 55, float %732, float %733, float %734, float %774, float %773, float %772)  ; Dot3(ax,ay,az,bx,by,bz)
  %788 = fsub fast float %786, %787
  %789 = fmul fast float %788, %782
  br label %790

; <label>:790                                     ; preds = %811, %771
  %791 = phi float [ %543, %771 ], [ %817, %811 ]
  %792 = phi float [ %539, %771 ], [ %815, %811 ]
  %793 = phi float [ %540, %771 ], [ %813, %811 ]
  %794 = phi i32 [ 15, %771 ], [ %809, %811 ]
  %795 = phi i32 [ 0, %771 ], [ %808, %811 ]
  %796 = call float @dx.op.dot3.f32(i32 55, float %793, float %792, float %791, float %783, float %784, float %785)  ; Dot3(ax,ay,az,bx,by,bz)
  %797 = fadd fast float %796, %789
  %798 = call float @dx.op.unary.f32(i32 26, float %797)  ; Round_ne(value)
  %799 = fptoui float %798 to i32
  %800 = and i32 %799, 1
  %801 = lshr i32 %799, 1
  %802 = xor i32 %800, %801
  %803 = shl nuw i32 %802, 1
  %804 = or i32 %801, %795
  %805 = or i32 %804, %803
  %806 = icmp ne i32 %794, 0
  %807 = shl i32 %805, 2
  %808 = select i1 %806, i32 %807, i32 %805
  %809 = add nsw i32 %794, -1
  %810 = icmp sgt i32 %794, 0
  br i1 %810, label %811, label %818

; <label>:811                                     ; preds = %790
  %812 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 %809
  %813 = load float, float* %812, align 4
  %814 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 %809
  %815 = load float, float* %814, align 4
  %816 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 %809
  %817 = load float, float* %816, align 4
  br label %790

; <label>:818                                     ; preds = %790
  br label %819

; <label>:819                                     ; preds = %818, %716
  %820 = phi i32 [ 0, %716 ], [ %808, %818 ]
  %821 = shl i32 %756, 16
  %822 = or i32 %769, %821
  %823 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %823, i32 %6, i32 %7, i32 undef, i32 %822, i32 %820, i32 0, i32 0, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %824

; <label>:824                                     ; preds = %843, %819
  %825 = phi float [ %88, %819 ], [ %849, %843 ]
  %826 = phi float [ %87, %819 ], [ %847, %843 ]
  %827 = phi float [ %84, %819 ], [ %845, %843 ]
  %828 = phi float [ %49, %819 ], [ %838, %843 ]
  %829 = phi float [ %52, %819 ], [ %839, %843 ]
  %830 = phi float [ %53, %819 ], [ %840, %843 ]
  %831 = phi float [ %49, %819 ], [ %835, %843 ]
  %832 = phi float [ %52, %819 ], [ %836, %843 ]
  %833 = phi float [ %53, %819 ], [ %837, %843 ]
  %834 = phi i32 [ 1, %819 ], [ %841, %843 ]
  %835 = call float @dx.op.binary.f32(i32 36, float %831, float %827)  ; FMin(a,b)
  %836 = call float @dx.op.binary.f32(i32 36, float %832, float %826)  ; FMin(a,b)
  %837 = call float @dx.op.binary.f32(i32 36, float %833, float %825)  ; FMin(a,b)
  %838 = call float @dx.op.binary.f32(i32 35, float %828, float %827)  ; FMax(a,b)
  %839 = call float @dx.op.binary.f32(i32 35, float %829, float %826)  ; FMax(a,b)
  %840 = call float @dx.op.binary.f32(i32 35, float %830, float %825)  ; FMax(a,b)
  %841 = add nuw nsw i32 %834, 1
  %842 = icmp eq i32 %841, 16
  br i1 %842, label %850, label %843

; <label>:843                                     ; preds = %824
  %844 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 %841
  %845 = load float, float* %844, align 4
  %846 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 %841
  %847 = load float, float* %846, align 4
  %848 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 %841
  %849 = load float, float* %848, align 4
  br label %824

; <label>:850                                     ; preds = %824
  %851 = fsub fast float %838, %835
  %852 = fsub fast float %839, %836
  %853 = fsub fast float %840, %837
  %854 = fmul fast float %851, 6.250000e-02
  %855 = fmul fast float %852, 6.250000e-02
  %856 = fmul fast float %853, 6.250000e-02
  %857 = fsub fast float %838, %854
  %858 = fsub fast float %839, %855
  %859 = fsub fast float %840, %856
  %860 = fmul fast float %857, 2.550000e+02
  %861 = fmul fast float %858, 2.550000e+02
  %862 = fmul fast float %859, 2.550000e+02
  %863 = call float @dx.op.unary.f32(i32 28, float %860)  ; Round_pi(value)
  %864 = call float @dx.op.unary.f32(i32 28, float %861)  ; Round_pi(value)
  %865 = call float @dx.op.unary.f32(i32 28, float %862)  ; Round_pi(value)
  %866 = fmul fast float %863, 0x3F70101020000000
  %867 = fmul fast float %864, 0x3F70101020000000
  %868 = fmul fast float %865, 0x3F70101020000000
  %869 = fadd fast float %854, %835
  %870 = fadd fast float %855, %836
  %871 = fadd fast float %856, %837
  %872 = fmul fast float %869, 2.550000e+02
  %873 = fmul fast float %870, 2.550000e+02
  %874 = fmul fast float %871, 2.550000e+02
  %875 = call float @dx.op.unary.f32(i32 27, float %872)  ; Round_ni(value)
  %876 = call float @dx.op.unary.f32(i32 27, float %873)  ; Round_ni(value)
  %877 = call float @dx.op.unary.f32(i32 27, float %874)  ; Round_ni(value)
  %878 = fmul fast float %875, 0x3FBF1F1F40000000
  %879 = fmul fast float %876, 0x3FCF9F9FC0000000
  %880 = fmul fast float %877, 0x3FBF1F1F40000000
  %881 = call float @dx.op.unary.f32(i32 26, float %878)  ; Round_ne(value)
  %882 = call float @dx.op.unary.f32(i32 26, float %879)  ; Round_ne(value)
  %883 = call float @dx.op.unary.f32(i32 26, float %880)  ; Round_ne(value)
  %884 = fptoui float %881 to i32
  %885 = fptoui float %882 to i32
  %886 = fptoui float %883 to i32
  %887 = shl i32 %884, 11
  %888 = shl i32 %885, 5
  %889 = or i32 %888, %887
  %890 = or i32 %889, %886
  %891 = fmul fast float %863, 0x3FBF1F1F40000000
  %892 = fmul fast float %864, 0x3FCF9F9FC0000000
  %893 = fmul fast float %865, 0x3FBF1F1F40000000
  %894 = call float @dx.op.unary.f32(i32 26, float %891)  ; Round_ne(value)
  %895 = call float @dx.op.unary.f32(i32 26, float %892)  ; Round_ne(value)
  %896 = call float @dx.op.unary.f32(i32 26, float %893)  ; Round_ne(value)
  %897 = fptoui float %894 to i32
  %898 = fptoui float %895 to i32
  %899 = fptoui float %896 to i32
  %900 = shl i32 %897, 11
  %901 = shl i32 %898, 5
  %902 = or i32 %901, %900
  %903 = or i32 %902, %899
  %904 = icmp ult i32 %890, %903
  br i1 %904, label %905, label %953, !dx.controlflow.hints !24

; <label>:905                                     ; preds = %850
  %906 = fmul fast float %877, 0x3F70101020000000
  %907 = fmul fast float %876, 0x3F70101020000000
  %908 = fmul fast float %875, 0x3F70101020000000
  %909 = fsub fast float %875, %863
  %910 = fmul fast float %909, 0x3F70101020000000
  %911 = fsub fast float %876, %864
  %912 = fmul fast float %911, 0x3F70101020000000
  %913 = fsub fast float %877, %865
  %914 = fmul fast float %913, 0x3F70101020000000
  %915 = call float @dx.op.dot3.f32(i32 55, float %910, float %912, float %914, float %910, float %912, float %914)  ; Dot3(ax,ay,az,bx,by,bz)
  %916 = fdiv fast float 3.000000e+00, %915
  %917 = fmul fast float %916, %910
  %918 = fmul fast float %916, %912
  %919 = fmul fast float %916, %914
  %920 = call float @dx.op.dot3.f32(i32 55, float %866, float %867, float %868, float %866, float %867, float %868)  ; Dot3(ax,ay,az,bx,by,bz)
  %921 = call float @dx.op.dot3.f32(i32 55, float %866, float %867, float %868, float %908, float %907, float %906)  ; Dot3(ax,ay,az,bx,by,bz)
  %922 = fsub fast float %920, %921
  %923 = fmul fast float %922, %916
  br label %924

; <label>:924                                     ; preds = %945, %905
  %925 = phi float [ %542, %905 ], [ %951, %945 ]
  %926 = phi float [ %541, %905 ], [ %949, %945 ]
  %927 = phi float [ %538, %905 ], [ %947, %945 ]
  %928 = phi i32 [ 0, %905 ], [ %942, %945 ]
  %929 = phi i32 [ 15, %905 ], [ %943, %945 ]
  %930 = call float @dx.op.dot3.f32(i32 55, float %927, float %926, float %925, float %917, float %918, float %919)  ; Dot3(ax,ay,az,bx,by,bz)
  %931 = fadd fast float %930, %923
  %932 = call float @dx.op.unary.f32(i32 26, float %931)  ; Round_ne(value)
  %933 = fptoui float %932 to i32
  %934 = and i32 %933, 1
  %935 = lshr i32 %933, 1
  %936 = xor i32 %934, %935
  %937 = shl nuw i32 %936, 1
  %938 = or i32 %935, %928
  %939 = or i32 %938, %937
  %940 = icmp ne i32 %929, 0
  %941 = shl i32 %939, 2
  %942 = select i1 %940, i32 %941, i32 %939
  %943 = add nsw i32 %929, -1
  %944 = icmp sgt i32 %929, 0
  br i1 %944, label %945, label %952

; <label>:945                                     ; preds = %924
  %946 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 %943
  %947 = load float, float* %946, align 4
  %948 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 %943
  %949 = load float, float* %948, align 4
  %950 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 %943
  %951 = load float, float* %950, align 4
  br label %924

; <label>:952                                     ; preds = %924
  br label %953

; <label>:953                                     ; preds = %952, %850
  %954 = phi i32 [ 0, %850 ], [ %942, %952 ]
  %955 = shl i32 %890, 16
  %956 = or i32 %903, %955
  %957 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %957, i32 %6, i32 %7, i32 undef, i32 %956, i32 %954, i32 0, i32 0, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %958

; <label>:958                                     ; preds = %953, %684
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32, i8) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }

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
!4 = !{!5, !10, !15, !17}
!5 = !{!6, !8, !9}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 8, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 10, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 12, i32 1, i32 2, i32 0, !7}
!10 = !{!11, !13, !14}
!11 = !{i32 0, [2 x %"class.RWTexture2D<vector<unsigned int, 4> >"]* undef, !"", i32 0, i32 0, i32 2, i32 2, i1 false, i1 false, i1 false, !12}
!12 = !{i32 0, i32 5}
!13 = !{i32 1, [2 x %"class.RWTexture2D<vector<unsigned int, 4> >"]* undef, !"", i32 0, i32 2, i32 2, i32 2, i1 false, i1 false, i1 false, !12}
!14 = !{i32 2, [2 x %"class.RWTexture2D<vector<unsigned int, 4> >"]* undef, !"", i32 0, i32 4, i32 2, i32 2, i1 false, i1 false, i1 false, !12}
!15 = !{!16}
!16 = !{i32 0, %GfxVirtualTexturingComposite* undef, !"", i32 0, i32 0, i32 1, i32 4208, null}
!17 = !{!18}
!18 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!19 = !{void ()* @cs_physical_texture_compress_mip1_from_scratch_3, !"cs_physical_texture_compress_mip1_from_scratch_3", null, !4, !20}
!20 = !{i32 0, i64 256, i32 4, !21}
!21 = !{i32 8, i32 8, i32 1}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 1}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 1}

