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
; shader hash: b695f035ea80c5850e58b7792fed1de8
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
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.RWTexture2DArray<vector<unsigned int, 4> >" = type { <4 x i32> }
%ConstantBufferRuntimeCompression = type { float, i32, i32, i32, i32, i32, i32, i32 }
%struct.SamplerState = type { i32 }

define void @cs_bc6_compress() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %6 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %7 = alloca [16 x float], align 4
  %8 = alloca [16 x float], align 4
  %9 = alloca [16 x float], align 4
  %10 = alloca [16 x i32], align 4
  %11 = uitofp i32 %5 to float
  %12 = uitofp i32 %6 to float
  %13 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %14 = extractvalue %dx.types.CBufRet.f32 %13, 0
  %15 = fmul fast float %11, 4.000000e+00
  %16 = fmul fast float %15, %14
  %17 = fmul fast float %12, 4.000000e+00
  %18 = fmul fast float %17, %14
  %19 = fsub fast float %16, %14
  %20 = fsub fast float %18, %14
  %21 = fmul fast float %14, 2.000000e+00
  %22 = fadd fast float %19, %21
  %23 = fadd fast float %21, %20
  %24 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %2, %dx.types.Handle %3, float %19, float %20, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %25 = extractvalue %dx.types.ResRet.f32 %24, 0
  %26 = extractvalue %dx.types.ResRet.f32 %24, 1
  %27 = extractvalue %dx.types.ResRet.f32 %24, 2
  %28 = extractvalue %dx.types.ResRet.f32 %24, 3
  %29 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %2, %dx.types.Handle %3, float %22, float %20, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %30 = extractvalue %dx.types.ResRet.f32 %29, 0
  %31 = extractvalue %dx.types.ResRet.f32 %29, 1
  %32 = extractvalue %dx.types.ResRet.f32 %29, 2
  %33 = extractvalue %dx.types.ResRet.f32 %29, 3
  %34 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %2, %dx.types.Handle %3, float %19, float %23, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %35 = extractvalue %dx.types.ResRet.f32 %34, 0
  %36 = extractvalue %dx.types.ResRet.f32 %34, 1
  %37 = extractvalue %dx.types.ResRet.f32 %34, 2
  %38 = extractvalue %dx.types.ResRet.f32 %34, 3
  %39 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %2, %dx.types.Handle %3, float %22, float %23, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %40 = extractvalue %dx.types.ResRet.f32 %39, 0
  %41 = extractvalue %dx.types.ResRet.f32 %39, 1
  %42 = extractvalue %dx.types.ResRet.f32 %39, 2
  %43 = extractvalue %dx.types.ResRet.f32 %39, 3
  %44 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %2, %dx.types.Handle %3, float %19, float %20, float undef, float undef, i32 0, i32 0, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %45 = extractvalue %dx.types.ResRet.f32 %44, 0
  %46 = extractvalue %dx.types.ResRet.f32 %44, 1
  %47 = extractvalue %dx.types.ResRet.f32 %44, 2
  %48 = extractvalue %dx.types.ResRet.f32 %44, 3
  %49 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %2, %dx.types.Handle %3, float %22, float %20, float undef, float undef, i32 0, i32 0, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %50 = extractvalue %dx.types.ResRet.f32 %49, 0
  %51 = extractvalue %dx.types.ResRet.f32 %49, 1
  %52 = extractvalue %dx.types.ResRet.f32 %49, 2
  %53 = extractvalue %dx.types.ResRet.f32 %49, 3
  %54 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %2, %dx.types.Handle %3, float %19, float %23, float undef, float undef, i32 0, i32 0, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %55 = extractvalue %dx.types.ResRet.f32 %54, 0
  %56 = extractvalue %dx.types.ResRet.f32 %54, 1
  %57 = extractvalue %dx.types.ResRet.f32 %54, 2
  %58 = extractvalue %dx.types.ResRet.f32 %54, 3
  %59 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %2, %dx.types.Handle %3, float %22, float %23, float undef, float undef, i32 0, i32 0, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %60 = extractvalue %dx.types.ResRet.f32 %59, 0
  %61 = extractvalue %dx.types.ResRet.f32 %59, 1
  %62 = extractvalue %dx.types.ResRet.f32 %59, 2
  %63 = extractvalue %dx.types.ResRet.f32 %59, 3
  %64 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %2, %dx.types.Handle %3, float %19, float %20, float undef, float undef, i32 0, i32 0, i32 2)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %65 = extractvalue %dx.types.ResRet.f32 %64, 0
  %66 = extractvalue %dx.types.ResRet.f32 %64, 1
  %67 = extractvalue %dx.types.ResRet.f32 %64, 2
  %68 = extractvalue %dx.types.ResRet.f32 %64, 3
  %69 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %2, %dx.types.Handle %3, float %22, float %20, float undef, float undef, i32 0, i32 0, i32 2)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %70 = extractvalue %dx.types.ResRet.f32 %69, 0
  %71 = extractvalue %dx.types.ResRet.f32 %69, 1
  %72 = extractvalue %dx.types.ResRet.f32 %69, 2
  %73 = extractvalue %dx.types.ResRet.f32 %69, 3
  %74 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %2, %dx.types.Handle %3, float %19, float %23, float undef, float undef, i32 0, i32 0, i32 2)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %75 = extractvalue %dx.types.ResRet.f32 %74, 0
  %76 = extractvalue %dx.types.ResRet.f32 %74, 1
  %77 = extractvalue %dx.types.ResRet.f32 %74, 2
  %78 = extractvalue %dx.types.ResRet.f32 %74, 3
  %79 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %2, %dx.types.Handle %3, float %22, float %23, float undef, float undef, i32 0, i32 0, i32 2)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %80 = extractvalue %dx.types.ResRet.f32 %79, 0
  %81 = extractvalue %dx.types.ResRet.f32 %79, 1
  %82 = extractvalue %dx.types.ResRet.f32 %79, 2
  %83 = extractvalue %dx.types.ResRet.f32 %79, 3
  %84 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 0
  %85 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 0
  %86 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 0
  store float %28, float* %84, align 4
  store float %48, float* %85, align 4
  store float %68, float* %86, align 4
  %87 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 1
  %88 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 1
  %89 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 1
  store float %27, float* %87, align 4
  store float %47, float* %88, align 4
  store float %67, float* %89, align 4
  %90 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 2
  %91 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 2
  %92 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 2
  store float %33, float* %90, align 4
  store float %53, float* %91, align 4
  store float %73, float* %92, align 4
  %93 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 3
  %94 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 3
  %95 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 3
  store float %32, float* %93, align 4
  store float %52, float* %94, align 4
  store float %72, float* %95, align 4
  %96 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 4
  %97 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 4
  %98 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 4
  store float %25, float* %96, align 4
  store float %45, float* %97, align 4
  store float %65, float* %98, align 4
  %99 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 5
  %100 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 5
  %101 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 5
  store float %26, float* %99, align 4
  store float %46, float* %100, align 4
  store float %66, float* %101, align 4
  %102 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 6
  %103 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 6
  %104 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 6
  store float %30, float* %102, align 4
  store float %50, float* %103, align 4
  store float %70, float* %104, align 4
  %105 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 7
  %106 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 7
  %107 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 7
  store float %31, float* %105, align 4
  store float %51, float* %106, align 4
  store float %71, float* %107, align 4
  %108 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 8
  %109 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 8
  %110 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 8
  store float %38, float* %108, align 4
  store float %58, float* %109, align 4
  store float %78, float* %110, align 4
  %111 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 9
  %112 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 9
  %113 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 9
  store float %37, float* %111, align 4
  store float %57, float* %112, align 4
  store float %77, float* %113, align 4
  %114 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 10
  %115 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 10
  %116 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 10
  store float %43, float* %114, align 4
  store float %63, float* %115, align 4
  store float %83, float* %116, align 4
  %117 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 11
  %118 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 11
  %119 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 11
  store float %42, float* %117, align 4
  store float %62, float* %118, align 4
  store float %82, float* %119, align 4
  %120 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 12
  %121 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 12
  %122 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 12
  store float %35, float* %120, align 4
  store float %55, float* %121, align 4
  store float %75, float* %122, align 4
  %123 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 13
  %124 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 13
  %125 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 13
  store float %36, float* %123, align 4
  store float %56, float* %124, align 4
  store float %76, float* %125, align 4
  %126 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 14
  %127 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 14
  %128 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 14
  store float %40, float* %126, align 4
  store float %60, float* %127, align 4
  store float %80, float* %128, align 4
  %129 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 15
  %130 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 15
  %131 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 15
  store float %41, float* %129, align 4
  store float %61, float* %130, align 4
  store float %81, float* %131, align 4
  br label %132

; <label>:132                                     ; preds = %152, %0
  %133 = phi float [ %67, %0 ], [ %158, %152 ]
  %134 = phi float [ %47, %0 ], [ %156, %152 ]
  %135 = phi float [ %27, %0 ], [ %154, %152 ]
  %136 = phi float [ %28, %0 ], [ %143, %152 ]
  %137 = phi float [ %48, %0 ], [ %144, %152 ]
  %138 = phi float [ %68, %0 ], [ %145, %152 ]
  %139 = phi float [ %28, %0 ], [ %146, %152 ]
  %140 = phi float [ %48, %0 ], [ %147, %152 ]
  %141 = phi float [ %68, %0 ], [ %148, %152 ]
  %142 = phi i32 [ 1, %0 ], [ %149, %152 ]
  %143 = call float @dx.op.binary.f32(i32 36, float %136, float %135)  ; FMin(a,b)
  %144 = call float @dx.op.binary.f32(i32 36, float %137, float %134)  ; FMin(a,b)
  %145 = call float @dx.op.binary.f32(i32 36, float %138, float %133)  ; FMin(a,b)
  %146 = call float @dx.op.binary.f32(i32 35, float %139, float %135)  ; FMax(a,b)
  %147 = call float @dx.op.binary.f32(i32 35, float %140, float %134)  ; FMax(a,b)
  %148 = call float @dx.op.binary.f32(i32 35, float %141, float %133)  ; FMax(a,b)
  %149 = add nuw nsw i32 %142, 1
  %150 = icmp eq i32 %149, 16
  br i1 %150, label %151, label %152

; <label>:151                                     ; preds = %132
  br label %159

; <label>:152                                     ; preds = %132
  %153 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 %149
  %154 = load float, float* %153, align 4
  %155 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 %149
  %156 = load float, float* %155, align 4
  %157 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 %149
  %158 = load float, float* %157, align 4
  br label %132

; <label>:159                                     ; preds = %190, %151
  %160 = phi float [ %196, %190 ], [ %68, %151 ]
  %161 = phi float [ %194, %190 ], [ %48, %151 ]
  %162 = phi float [ %192, %190 ], [ %28, %151 ]
  %163 = phi i32 [ %188, %190 ], [ 0, %151 ]
  %164 = phi float [ %176, %190 ], [ %146, %151 ]
  %165 = phi float [ %177, %190 ], [ %147, %151 ]
  %166 = phi float [ %178, %190 ], [ %148, %151 ]
  %167 = phi float [ %185, %190 ], [ %143, %151 ]
  %168 = phi float [ %186, %190 ], [ %144, %151 ]
  %169 = phi float [ %187, %190 ], [ %145, %151 ]
  %170 = fcmp fast oeq float %162, %143
  %171 = fcmp fast oeq float %161, %144
  %172 = fcmp fast oeq float %160, %145
  %173 = select i1 %170, float %164, float %162
  %174 = select i1 %171, float %165, float %161
  %175 = select i1 %172, float %166, float %160
  %176 = call float @dx.op.binary.f32(i32 36, float %164, float %173)  ; FMin(a,b)
  %177 = call float @dx.op.binary.f32(i32 36, float %165, float %174)  ; FMin(a,b)
  %178 = call float @dx.op.binary.f32(i32 36, float %166, float %175)  ; FMin(a,b)
  %179 = fcmp fast oeq float %162, %146
  %180 = fcmp fast oeq float %161, %147
  %181 = fcmp fast oeq float %160, %148
  %182 = select i1 %179, float %167, float %162
  %183 = select i1 %180, float %168, float %161
  %184 = select i1 %181, float %169, float %160
  %185 = call float @dx.op.binary.f32(i32 35, float %167, float %182)  ; FMax(a,b)
  %186 = call float @dx.op.binary.f32(i32 35, float %168, float %183)  ; FMax(a,b)
  %187 = call float @dx.op.binary.f32(i32 35, float %169, float %184)  ; FMax(a,b)
  %188 = add nuw nsw i32 %163, 1
  %189 = icmp eq i32 %188, 16
  br i1 %189, label %197, label %190

; <label>:190                                     ; preds = %159
  %191 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 %188
  %192 = load float, float* %191, align 4
  %193 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 %188
  %194 = load float, float* %193, align 4
  %195 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 %188
  %196 = load float, float* %195, align 4
  br label %159

; <label>:197                                     ; preds = %159
  %198 = fadd fast float %146, 1.000000e+00
  %199 = fadd fast float %147, 1.000000e+00
  %200 = fadd fast float %148, 1.000000e+00
  %201 = call float @dx.op.unary.f32(i32 23, float %198)  ; Log(value)
  %202 = call float @dx.op.unary.f32(i32 23, float %199)  ; Log(value)
  %203 = call float @dx.op.unary.f32(i32 23, float %200)  ; Log(value)
  %204 = fadd fast float %143, 1.000000e+00
  %205 = fadd fast float %144, 1.000000e+00
  %206 = fadd fast float %145, 1.000000e+00
  %207 = call float @dx.op.unary.f32(i32 23, float %204)  ; Log(value)
  %208 = call float @dx.op.unary.f32(i32 23, float %205)  ; Log(value)
  %209 = call float @dx.op.unary.f32(i32 23, float %206)  ; Log(value)
  %210 = fadd fast float %185, 1.000000e+00
  %211 = fadd fast float %186, 1.000000e+00
  %212 = fadd fast float %187, 1.000000e+00
  %213 = call float @dx.op.unary.f32(i32 23, float %210)  ; Log(value)
  %214 = call float @dx.op.unary.f32(i32 23, float %211)  ; Log(value)
  %215 = call float @dx.op.unary.f32(i32 23, float %212)  ; Log(value)
  %216 = fadd fast float %176, 1.000000e+00
  %217 = fadd fast float %177, 1.000000e+00
  %218 = fadd fast float %178, 1.000000e+00
  %219 = call float @dx.op.unary.f32(i32 23, float %216)  ; Log(value)
  %220 = call float @dx.op.unary.f32(i32 23, float %217)  ; Log(value)
  %221 = call float @dx.op.unary.f32(i32 23, float %218)  ; Log(value)
  %222 = fsub fast float %201, %207
  %223 = fsub fast float %202, %208
  %224 = fsub fast float %203, %209
  %225 = fmul fast float %222, 3.125000e-02
  %226 = fmul fast float %223, 3.125000e-02
  %227 = fmul fast float %224, 3.125000e-02
  %228 = fsub fast float %219, %207
  %229 = fsub fast float %220, %208
  %230 = fsub fast float %221, %209
  %231 = call float @dx.op.binary.f32(i32 36, float %228, float %225)  ; FMin(a,b)
  %232 = call float @dx.op.binary.f32(i32 36, float %229, float %226)  ; FMin(a,b)
  %233 = call float @dx.op.binary.f32(i32 36, float %230, float %227)  ; FMin(a,b)
  %234 = fadd fast float %231, %207
  %235 = fadd fast float %232, %208
  %236 = fadd fast float %233, %209
  %237 = fsub fast float %201, %213
  %238 = fsub fast float %202, %214
  %239 = fsub fast float %203, %215
  %240 = call float @dx.op.binary.f32(i32 36, float %237, float %225)  ; FMin(a,b)
  %241 = call float @dx.op.binary.f32(i32 36, float %238, float %226)  ; FMin(a,b)
  %242 = call float @dx.op.binary.f32(i32 36, float %239, float %227)  ; FMin(a,b)
  %243 = fsub fast float %201, %240
  %244 = fsub fast float %202, %241
  %245 = fsub fast float %203, %242
  %246 = call float @dx.op.unary.f32(i32 21, float %234)  ; Exp(value)
  %247 = call float @dx.op.unary.f32(i32 21, float %235)  ; Exp(value)
  %248 = call float @dx.op.unary.f32(i32 21, float %236)  ; Exp(value)
  %249 = fadd fast float %246, -1.000000e+00
  %250 = fadd fast float %247, -1.000000e+00
  %251 = fadd fast float %248, -1.000000e+00
  %252 = call float @dx.op.unary.f32(i32 21, float %243)  ; Exp(value)
  %253 = call float @dx.op.unary.f32(i32 21, float %244)  ; Exp(value)
  %254 = call float @dx.op.unary.f32(i32 21, float %245)  ; Exp(value)
  %255 = fadd fast float %252, -1.000000e+00
  %256 = fadd fast float %253, -1.000000e+00
  %257 = fadd fast float %254, -1.000000e+00
  %258 = fsub fast float %255, %249
  %259 = fsub fast float %256, %250
  %260 = fsub fast float %257, %251
  %261 = fadd fast float %259, %258
  %262 = fadd fast float %261, %260
  %263 = fdiv fast float %258, %262
  %264 = fdiv fast float %259, %262
  %265 = fdiv fast float %260, %262
  %266 = call i32 @dx.op.legacyF32ToF16(i32 130, float %249)  ; LegacyF32ToF16(value)
  %267 = call i32 @dx.op.legacyF32ToF16(i32 130, float %250)  ; LegacyF32ToF16(value)
  %268 = call i32 @dx.op.legacyF32ToF16(i32 130, float %251)  ; LegacyF32ToF16(value)
  %269 = uitofp i32 %266 to float
  %270 = uitofp i32 %267 to float
  %271 = uitofp i32 %268 to float
  %272 = fmul fast float %269, 0x3FA0842100000000
  %273 = fmul fast float %270, 0x3FA0842100000000
  %274 = fmul fast float %271, 0x3FA0842100000000
  %275 = call i32 @dx.op.legacyF32ToF16(i32 130, float %255)  ; LegacyF32ToF16(value)
  %276 = call i32 @dx.op.legacyF32ToF16(i32 130, float %256)  ; LegacyF32ToF16(value)
  %277 = call i32 @dx.op.legacyF32ToF16(i32 130, float %257)  ; LegacyF32ToF16(value)
  %278 = uitofp i32 %275 to float
  %279 = uitofp i32 %276 to float
  %280 = uitofp i32 %277 to float
  %281 = fmul fast float %278, 0x3FA0842100000000
  %282 = fmul fast float %279, 0x3FA0842100000000
  %283 = fmul fast float %280, 0x3FA0842100000000
  %284 = call float @dx.op.dot3.f32(i32 55, float %249, float %250, float %251, float %263, float %264, float %265)  ; Dot3(ax,ay,az,bx,by,bz)
  %285 = call i32 @dx.op.legacyF32ToF16(i32 130, float %284)  ; LegacyF32ToF16(value)
  %286 = uitofp i32 %285 to float
  %287 = call float @dx.op.dot3.f32(i32 55, float %255, float %256, float %257, float %263, float %264, float %265)  ; Dot3(ax,ay,az,bx,by,bz)
  %288 = call i32 @dx.op.legacyF32ToF16(i32 130, float %287)  ; LegacyF32ToF16(value)
  %289 = uitofp i32 %288 to float
  %290 = call float @dx.op.dot3.f32(i32 55, float %28, float %48, float %68, float %263, float %264, float %265)  ; Dot3(ax,ay,az,bx,by,bz)
  %291 = call i32 @dx.op.legacyF32ToF16(i32 130, float %290)  ; LegacyF32ToF16(value)
  %292 = uitofp i32 %291 to float
  %293 = fsub fast float %292, %286
  %294 = fsub fast float %289, %286
  %295 = fdiv fast float %293, %294
  %296 = fmul fast float %295, 0x402DDDDD60000000
  %297 = fadd fast float %296, 0x3FE1110A20000000
  %298 = call float @dx.op.binary.f32(i32 35, float %297, float 0.000000e+00)  ; FMax(a,b)
  %299 = call float @dx.op.binary.f32(i32 36, float %298, float 1.500000e+01)  ; FMin(a,b)
  %300 = fptoui float %299 to i32
  %301 = icmp ugt i32 %300, 7
  %302 = select i1 %301, float %281, float %272
  %303 = select i1 %301, float %283, float %274
  %304 = select i1 %301, float %273, float %282
  %305 = select i1 %301, float %289, float %286
  %306 = select i1 %301, float %286, float %289
  %307 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i32 0, i32 0
  store i32 0, i32* %307, align 4, !tbaa !18, !noalias !22
  %308 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i32 0, i32 1
  store i32 0, i32* %308, align 4, !tbaa !18, !noalias !22
  %309 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i32 0, i32 2
  store i32 0, i32* %309, align 4, !tbaa !18, !noalias !22
  %310 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i32 0, i32 3
  store i32 0, i32* %310, align 4, !tbaa !18, !noalias !22
  %311 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i32 0, i32 4
  store i32 0, i32* %311, align 4, !tbaa !18, !noalias !22
  %312 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i32 0, i32 5
  store i32 0, i32* %312, align 4, !tbaa !18, !noalias !22
  %313 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i32 0, i32 6
  store i32 0, i32* %313, align 4, !tbaa !18, !noalias !26
  %314 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i32 0, i32 7
  store i32 0, i32* %314, align 4, !tbaa !18, !noalias !26
  %315 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i32 0, i32 8
  store i32 0, i32* %315, align 4, !tbaa !18, !noalias !26
  %316 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i32 0, i32 9
  store i32 0, i32* %316, align 4, !tbaa !18, !noalias !26
  %317 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i32 0, i32 10
  store i32 0, i32* %317, align 4, !tbaa !18, !noalias !26
  %318 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i32 0, i32 11
  store i32 0, i32* %318, align 4, !tbaa !18, !noalias !26
  %319 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i32 0, i32 12
  store i32 0, i32* %319, align 4, !tbaa !18, !noalias !26
  %320 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i32 0, i32 13
  store i32 0, i32* %320, align 4, !tbaa !18, !noalias !26
  %321 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i32 0, i32 14
  store i32 0, i32* %321, align 4, !tbaa !18, !noalias !26
  %322 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i32 0, i32 15
  store i32 0, i32* %322, align 4, !tbaa !18, !noalias !26
  br label %323

; <label>:323                                     ; preds = %342, %197
  %324 = phi float [ %68, %197 ], [ %348, %342 ]
  %325 = phi float [ %48, %197 ], [ %346, %342 ]
  %326 = phi float [ %28, %197 ], [ %344, %342 ]
  %327 = phi i32 [ 0, %197 ], [ %340, %342 ]
  %328 = call float @dx.op.dot3.f32(i32 55, float %326, float %325, float %324, float %263, float %264, float %265)  ; Dot3(ax,ay,az,bx,by,bz)
  %329 = call i32 @dx.op.legacyF32ToF16(i32 130, float %328)  ; LegacyF32ToF16(value)
  %330 = uitofp i32 %329 to float
  %331 = fsub fast float %330, %305
  %332 = fsub fast float %306, %305
  %333 = fdiv fast float %331, %332
  %334 = fmul fast float %333, 0x402DDDDD60000000
  %335 = fadd fast float %334, 0x3FE1110A20000000
  %336 = call float @dx.op.binary.f32(i32 35, float %335, float 0.000000e+00)  ; FMax(a,b)
  %337 = call float @dx.op.binary.f32(i32 36, float %336, float 1.500000e+01)  ; FMin(a,b)
  %338 = fptoui float %337 to i32
  %339 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i32 0, i32 %327
  store i32 %338, i32* %339, align 4, !tbaa !18, !noalias !22
  %340 = add nuw nsw i32 %327, 1
  %341 = icmp eq i32 %340, 16
  br i1 %341, label %349, label %342

; <label>:342                                     ; preds = %323
  %343 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 %340
  %344 = load float, float* %343, align 4
  %345 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 %340
  %346 = load float, float* %345, align 4
  %347 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 %340
  %348 = load float, float* %347, align 4
  br label %323

; <label>:349                                     ; preds = %323
  %350 = select i1 %301, float %282, float %273
  %351 = select i1 %301, float %272, float %281
  %352 = select i1 %301, float %274, float %283
  %353 = fptoui float %302 to i32
  %354 = shl i32 %353, 5
  %355 = fptoui float %350 to i32
  %356 = shl i32 %355, 15
  %357 = fptoui float %303 to i32
  %358 = shl i32 %357, 25
  %359 = or i32 %356, %354
  %360 = or i32 %359, %358
  %361 = or i32 %360, 3
  %362 = lshr i32 %357, 7
  %363 = fptoui float %351 to i32
  %364 = shl i32 %363, 3
  %365 = or i32 %362, %364
  %366 = fptoui float %304 to i32
  %367 = shl i32 %366, 13
  %368 = or i32 %365, %367
  %369 = fptoui float %352 to i32
  %370 = shl i32 %369, 23
  %371 = or i32 %368, %370
  %372 = lshr i32 %369, 9
  %373 = load i32, i32* %307, align 4, !tbaa !18, !noalias !22
  %374 = shl i32 %373, 1
  %375 = or i32 %374, %372
  %376 = load i32, i32* %308, align 4, !tbaa !18, !noalias !22
  %377 = shl i32 %376, 4
  %378 = or i32 %375, %377
  %379 = load i32, i32* %309, align 4, !tbaa !18, !noalias !22
  %380 = shl i32 %379, 8
  %381 = or i32 %378, %380
  %382 = load i32, i32* %310, align 4, !tbaa !18, !noalias !22
  %383 = shl i32 %382, 12
  %384 = or i32 %381, %383
  %385 = load i32, i32* %311, align 4, !tbaa !18, !noalias !22
  %386 = shl i32 %385, 16
  %387 = or i32 %384, %386
  %388 = load i32, i32* %312, align 4, !tbaa !18, !noalias !22
  %389 = shl i32 %388, 20
  %390 = or i32 %387, %389
  %391 = load i32, i32* %313, align 4, !tbaa !18, !noalias !22
  %392 = shl i32 %391, 24
  %393 = or i32 %390, %392
  %394 = load i32, i32* %314, align 4, !tbaa !18, !noalias !22
  %395 = shl i32 %394, 28
  %396 = or i32 %393, %395
  %397 = load i32, i32* %315, align 4, !tbaa !18, !noalias !22
  %398 = load i32, i32* %316, align 4, !tbaa !18, !noalias !22
  %399 = shl i32 %398, 4
  %400 = or i32 %399, %397
  %401 = load i32, i32* %317, align 4, !tbaa !18, !noalias !22
  %402 = shl i32 %401, 8
  %403 = or i32 %400, %402
  %404 = load i32, i32* %318, align 4, !tbaa !18, !noalias !22
  %405 = shl i32 %404, 12
  %406 = or i32 %403, %405
  %407 = load i32, i32* %319, align 4, !tbaa !18, !noalias !22
  %408 = shl i32 %407, 16
  %409 = or i32 %406, %408
  %410 = load i32, i32* %320, align 4, !tbaa !18, !noalias !22
  %411 = shl i32 %410, 20
  %412 = or i32 %409, %411
  %413 = load i32, i32* %321, align 4, !tbaa !18, !noalias !22
  %414 = shl i32 %413, 24
  %415 = or i32 %412, %414
  %416 = load i32, i32* %322, align 4, !tbaa !18, !noalias !22
  %417 = shl i32 %416, 28
  %418 = or i32 %415, %417
  %419 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %420 = extractvalue %dx.types.CBufRet.i32 %419, 0
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %1, i32 %5, i32 %6, i32 %420, i32 %361, i32 %371, i32 %396, i32 %418, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.textureStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32, i8) #2

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.legacyF32ToF16(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

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
!dx.entryPoints = !{!15}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !8, !11, !13}
!5 = !{!6}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{!9}
!9 = !{i32 0, %"class.RWTexture2DArray<vector<unsigned int, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 7, i1 false, i1 false, i1 false, !10}
!10 = !{i32 0, i32 5}
!11 = !{!12}
!12 = !{i32 0, %ConstantBufferRuntimeCompression* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!13 = !{!14}
!14 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!15 = !{void ()* @cs_bc6_compress, !"cs_bc6_compress", null, !4, !16}
!16 = !{i32 0, i64 256, i32 4, !17}
!17 = !{i32 8, i32 8, i32 1}
!18 = !{!19, !19, i64 0}
!19 = !{!"int", !20, i64 0}
!20 = !{!"omnipotent char", !21, i64 0}
!21 = !{!"Simple C/C++ TBAA"}
!22 = !{!23, !25}
!23 = distinct !{!23, !24, !"\01?EncodeP1@@YAXAIAV?$vector@I$03@@AIAMY0BA@V?$vector@M$02@@@Z: %block"}
!24 = distinct !{!24, !"\01?EncodeP1@@YAXAIAV?$vector@I$03@@AIAMY0BA@V?$vector@M$02@@@Z"}
!25 = distinct !{!25, !24, !"\01?EncodeP1@@YAXAIAV?$vector@I$03@@AIAMY0BA@V?$vector@M$02@@@Z: %blockMSLE"}
!26 = !{!25}

