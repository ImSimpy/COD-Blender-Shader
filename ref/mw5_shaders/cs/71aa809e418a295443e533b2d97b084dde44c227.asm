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
; shader hash: 8ea986e6d58a68a6d07abe6a55c83e3b
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
%"class.RWTexture2DArray<vector<unsigned int, 2> >" = type { <2 x i32> }
%ConstantBufferRuntimeCompression = type { float, i32, i32, i32, i32, i32, i32, i32 }
%struct.SamplerState = type { i32 }

define void @cs_bc1_compress_one_mip() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %6 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %7 = alloca [16 x float], align 4
  %8 = alloca [16 x float], align 4
  %9 = alloca [16 x float], align 4
  %10 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %11 = extractvalue %dx.types.CBufRet.f32 %10, 0
  %12 = shl i32 %5, 2
  %13 = shl i32 %6, 2
  %14 = uitofp i32 %12 to float
  %15 = uitofp i32 %13 to float
  %16 = fadd fast float %14, 1.000000e+00
  %17 = fadd fast float %15, 1.000000e+00
  %18 = fmul fast float %11, %16
  %19 = fmul fast float %11, %17
  %20 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %2, %dx.types.Handle %3, float %18, float %19, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %21 = extractvalue %dx.types.ResRet.f32 %20, 0
  %22 = extractvalue %dx.types.ResRet.f32 %20, 1
  %23 = extractvalue %dx.types.ResRet.f32 %20, 2
  %24 = extractvalue %dx.types.ResRet.f32 %20, 3
  %25 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %2, %dx.types.Handle %3, float %18, float %19, float undef, float undef, i32 0, i32 0, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %26 = extractvalue %dx.types.ResRet.f32 %25, 0
  %27 = extractvalue %dx.types.ResRet.f32 %25, 1
  %28 = extractvalue %dx.types.ResRet.f32 %25, 2
  %29 = extractvalue %dx.types.ResRet.f32 %25, 3
  %30 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %2, %dx.types.Handle %3, float %18, float %19, float undef, float undef, i32 0, i32 0, i32 2)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %31 = extractvalue %dx.types.ResRet.f32 %30, 0
  %32 = extractvalue %dx.types.ResRet.f32 %30, 1
  %33 = extractvalue %dx.types.ResRet.f32 %30, 2
  %34 = extractvalue %dx.types.ResRet.f32 %30, 3
  %35 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 0
  %36 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 0
  %37 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 0
  store float %24, float* %35, align 4
  store float %29, float* %36, align 4
  store float %34, float* %37, align 4
  %38 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 1
  %39 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 1
  %40 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 1
  store float %23, float* %38, align 4
  store float %28, float* %39, align 4
  store float %33, float* %40, align 4
  %41 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 4
  %42 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 4
  %43 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 4
  store float %21, float* %41, align 4
  store float %26, float* %42, align 4
  store float %31, float* %43, align 4
  %44 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 5
  %45 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 5
  %46 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 5
  store float %22, float* %44, align 4
  store float %27, float* %45, align 4
  store float %32, float* %46, align 4
  %47 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %2, %dx.types.Handle %3, float %18, float %19, float undef, float undef, i32 2, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %48 = extractvalue %dx.types.ResRet.f32 %47, 0
  %49 = extractvalue %dx.types.ResRet.f32 %47, 1
  %50 = extractvalue %dx.types.ResRet.f32 %47, 2
  %51 = extractvalue %dx.types.ResRet.f32 %47, 3
  %52 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %2, %dx.types.Handle %3, float %18, float %19, float undef, float undef, i32 2, i32 0, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %53 = extractvalue %dx.types.ResRet.f32 %52, 0
  %54 = extractvalue %dx.types.ResRet.f32 %52, 1
  %55 = extractvalue %dx.types.ResRet.f32 %52, 2
  %56 = extractvalue %dx.types.ResRet.f32 %52, 3
  %57 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %2, %dx.types.Handle %3, float %18, float %19, float undef, float undef, i32 2, i32 0, i32 2)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %58 = extractvalue %dx.types.ResRet.f32 %57, 0
  %59 = extractvalue %dx.types.ResRet.f32 %57, 1
  %60 = extractvalue %dx.types.ResRet.f32 %57, 2
  %61 = extractvalue %dx.types.ResRet.f32 %57, 3
  %62 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 2
  %63 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 2
  %64 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 2
  store float %51, float* %62, align 4
  store float %56, float* %63, align 4
  store float %61, float* %64, align 4
  %65 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 3
  %66 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 3
  %67 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 3
  store float %50, float* %65, align 4
  store float %55, float* %66, align 4
  store float %60, float* %67, align 4
  %68 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 6
  %69 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 6
  %70 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 6
  store float %48, float* %68, align 4
  store float %53, float* %69, align 4
  store float %58, float* %70, align 4
  %71 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 7
  %72 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 7
  %73 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 7
  store float %49, float* %71, align 4
  store float %54, float* %72, align 4
  store float %59, float* %73, align 4
  %74 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %2, %dx.types.Handle %3, float %18, float %19, float undef, float undef, i32 0, i32 2, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %75 = extractvalue %dx.types.ResRet.f32 %74, 0
  %76 = extractvalue %dx.types.ResRet.f32 %74, 1
  %77 = extractvalue %dx.types.ResRet.f32 %74, 2
  %78 = extractvalue %dx.types.ResRet.f32 %74, 3
  %79 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %2, %dx.types.Handle %3, float %18, float %19, float undef, float undef, i32 0, i32 2, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %80 = extractvalue %dx.types.ResRet.f32 %79, 0
  %81 = extractvalue %dx.types.ResRet.f32 %79, 1
  %82 = extractvalue %dx.types.ResRet.f32 %79, 2
  %83 = extractvalue %dx.types.ResRet.f32 %79, 3
  %84 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %2, %dx.types.Handle %3, float %18, float %19, float undef, float undef, i32 0, i32 2, i32 2)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %85 = extractvalue %dx.types.ResRet.f32 %84, 0
  %86 = extractvalue %dx.types.ResRet.f32 %84, 1
  %87 = extractvalue %dx.types.ResRet.f32 %84, 2
  %88 = extractvalue %dx.types.ResRet.f32 %84, 3
  %89 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 8
  %90 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 8
  %91 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 8
  store float %78, float* %89, align 4
  store float %83, float* %90, align 4
  store float %88, float* %91, align 4
  %92 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 9
  %93 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 9
  %94 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 9
  store float %77, float* %92, align 4
  store float %82, float* %93, align 4
  store float %87, float* %94, align 4
  %95 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 12
  %96 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 12
  %97 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 12
  store float %75, float* %95, align 4
  store float %80, float* %96, align 4
  store float %85, float* %97, align 4
  %98 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 13
  %99 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 13
  %100 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 13
  store float %76, float* %98, align 4
  store float %81, float* %99, align 4
  store float %86, float* %100, align 4
  %101 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %2, %dx.types.Handle %3, float %18, float %19, float undef, float undef, i32 2, i32 2, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %102 = extractvalue %dx.types.ResRet.f32 %101, 0
  %103 = extractvalue %dx.types.ResRet.f32 %101, 1
  %104 = extractvalue %dx.types.ResRet.f32 %101, 2
  %105 = extractvalue %dx.types.ResRet.f32 %101, 3
  %106 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %2, %dx.types.Handle %3, float %18, float %19, float undef, float undef, i32 2, i32 2, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %107 = extractvalue %dx.types.ResRet.f32 %106, 0
  %108 = extractvalue %dx.types.ResRet.f32 %106, 1
  %109 = extractvalue %dx.types.ResRet.f32 %106, 2
  %110 = extractvalue %dx.types.ResRet.f32 %106, 3
  %111 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %2, %dx.types.Handle %3, float %18, float %19, float undef, float undef, i32 2, i32 2, i32 2)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %112 = extractvalue %dx.types.ResRet.f32 %111, 0
  %113 = extractvalue %dx.types.ResRet.f32 %111, 1
  %114 = extractvalue %dx.types.ResRet.f32 %111, 2
  %115 = extractvalue %dx.types.ResRet.f32 %111, 3
  %116 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 10
  %117 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 10
  %118 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 10
  store float %105, float* %116, align 4
  store float %110, float* %117, align 4
  store float %115, float* %118, align 4
  %119 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 11
  %120 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 11
  %121 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 11
  store float %104, float* %119, align 4
  store float %109, float* %120, align 4
  store float %114, float* %121, align 4
  %122 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 14
  %123 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 14
  %124 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 14
  store float %102, float* %122, align 4
  store float %107, float* %123, align 4
  store float %112, float* %124, align 4
  %125 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 15
  %126 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 15
  %127 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 15
  store float %103, float* %125, align 4
  store float %108, float* %126, align 4
  store float %113, float* %127, align 4
  br label %128

; <label>:128                                     ; preds = %147, %0
  %129 = phi float [ %33, %0 ], [ %153, %147 ]
  %130 = phi float [ %28, %0 ], [ %151, %147 ]
  %131 = phi float [ %23, %0 ], [ %149, %147 ]
  %132 = phi float [ %24, %0 ], [ %142, %147 ]
  %133 = phi float [ %29, %0 ], [ %143, %147 ]
  %134 = phi float [ %34, %0 ], [ %144, %147 ]
  %135 = phi float [ %24, %0 ], [ %139, %147 ]
  %136 = phi float [ %29, %0 ], [ %140, %147 ]
  %137 = phi float [ %34, %0 ], [ %141, %147 ]
  %138 = phi i32 [ 1, %0 ], [ %145, %147 ]
  %139 = call float @dx.op.binary.f32(i32 36, float %135, float %131)  ; FMin(a,b)
  %140 = call float @dx.op.binary.f32(i32 36, float %136, float %130)  ; FMin(a,b)
  %141 = call float @dx.op.binary.f32(i32 36, float %137, float %129)  ; FMin(a,b)
  %142 = call float @dx.op.binary.f32(i32 35, float %132, float %131)  ; FMax(a,b)
  %143 = call float @dx.op.binary.f32(i32 35, float %133, float %130)  ; FMax(a,b)
  %144 = call float @dx.op.binary.f32(i32 35, float %134, float %129)  ; FMax(a,b)
  %145 = add nuw nsw i32 %138, 1
  %146 = icmp eq i32 %145, 16
  br i1 %146, label %154, label %147

; <label>:147                                     ; preds = %128
  %148 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 %145
  %149 = load float, float* %148, align 4
  %150 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 %145
  %151 = load float, float* %150, align 4
  %152 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 %145
  %153 = load float, float* %152, align 4
  br label %128

; <label>:154                                     ; preds = %128
  %155 = fsub fast float %142, %139
  %156 = fsub fast float %143, %140
  %157 = fsub fast float %144, %141
  %158 = fmul fast float %155, 6.250000e-02
  %159 = fmul fast float %156, 6.250000e-02
  %160 = fmul fast float %157, 6.250000e-02
  %161 = fsub fast float %142, %158
  %162 = fsub fast float %143, %159
  %163 = fsub fast float %144, %160
  %164 = fmul fast float %161, 2.550000e+02
  %165 = fmul fast float %162, 2.550000e+02
  %166 = fmul fast float %163, 2.550000e+02
  %167 = call float @dx.op.unary.f32(i32 28, float %164)  ; Round_pi(value)
  %168 = call float @dx.op.unary.f32(i32 28, float %165)  ; Round_pi(value)
  %169 = call float @dx.op.unary.f32(i32 28, float %166)  ; Round_pi(value)
  %170 = fmul fast float %167, 0x3F70101020000000
  %171 = fmul fast float %168, 0x3F70101020000000
  %172 = fmul fast float %169, 0x3F70101020000000
  %173 = fadd fast float %158, %139
  %174 = fadd fast float %159, %140
  %175 = fadd fast float %160, %141
  %176 = fmul fast float %173, 2.550000e+02
  %177 = fmul fast float %174, 2.550000e+02
  %178 = fmul fast float %175, 2.550000e+02
  %179 = call float @dx.op.unary.f32(i32 27, float %176)  ; Round_ni(value)
  %180 = call float @dx.op.unary.f32(i32 27, float %177)  ; Round_ni(value)
  %181 = call float @dx.op.unary.f32(i32 27, float %178)  ; Round_ni(value)
  %182 = fmul fast float %179, 0x3FBF1F1F40000000
  %183 = fmul fast float %180, 0x3FCF9F9FC0000000
  %184 = fmul fast float %181, 0x3FBF1F1F40000000
  %185 = call float @dx.op.unary.f32(i32 26, float %182)  ; Round_ne(value)
  %186 = call float @dx.op.unary.f32(i32 26, float %183)  ; Round_ne(value)
  %187 = call float @dx.op.unary.f32(i32 26, float %184)  ; Round_ne(value)
  %188 = fptoui float %185 to i32
  %189 = fptoui float %186 to i32
  %190 = fptoui float %187 to i32
  %191 = shl i32 %188, 11
  %192 = shl i32 %189, 5
  %193 = or i32 %192, %191
  %194 = or i32 %193, %190
  %195 = fmul fast float %167, 0x3FBF1F1F40000000
  %196 = fmul fast float %168, 0x3FCF9F9FC0000000
  %197 = fmul fast float %169, 0x3FBF1F1F40000000
  %198 = call float @dx.op.unary.f32(i32 26, float %195)  ; Round_ne(value)
  %199 = call float @dx.op.unary.f32(i32 26, float %196)  ; Round_ne(value)
  %200 = call float @dx.op.unary.f32(i32 26, float %197)  ; Round_ne(value)
  %201 = fptoui float %198 to i32
  %202 = fptoui float %199 to i32
  %203 = fptoui float %200 to i32
  %204 = shl i32 %201, 11
  %205 = shl i32 %202, 5
  %206 = or i32 %205, %204
  %207 = or i32 %206, %203
  %208 = icmp ult i32 %194, %207
  br i1 %208, label %209, label %257, !dx.controlflow.hints !18

; <label>:209                                     ; preds = %154
  %210 = fmul fast float %181, 0x3F70101020000000
  %211 = fmul fast float %180, 0x3F70101020000000
  %212 = fmul fast float %179, 0x3F70101020000000
  %213 = fsub fast float %179, %167
  %214 = fmul fast float %213, 0x3F70101020000000
  %215 = fsub fast float %180, %168
  %216 = fmul fast float %215, 0x3F70101020000000
  %217 = fsub fast float %181, %169
  %218 = fmul fast float %217, 0x3F70101020000000
  %219 = call float @dx.op.dot3.f32(i32 55, float %214, float %216, float %218, float %214, float %216, float %218)  ; Dot3(ax,ay,az,bx,by,bz)
  %220 = fdiv fast float 3.000000e+00, %219
  %221 = fmul fast float %220, %214
  %222 = fmul fast float %220, %216
  %223 = fmul fast float %220, %218
  %224 = call float @dx.op.dot3.f32(i32 55, float %170, float %171, float %172, float %170, float %171, float %172)  ; Dot3(ax,ay,az,bx,by,bz)
  %225 = call float @dx.op.dot3.f32(i32 55, float %170, float %171, float %172, float %212, float %211, float %210)  ; Dot3(ax,ay,az,bx,by,bz)
  %226 = fsub fast float %224, %225
  %227 = fmul fast float %226, %220
  br label %228

; <label>:228                                     ; preds = %249, %209
  %229 = phi float [ %113, %209 ], [ %255, %249 ]
  %230 = phi float [ %108, %209 ], [ %253, %249 ]
  %231 = phi float [ %103, %209 ], [ %251, %249 ]
  %232 = phi i32 [ 15, %209 ], [ %247, %249 ]
  %233 = phi i32 [ 0, %209 ], [ %246, %249 ]
  %234 = call float @dx.op.dot3.f32(i32 55, float %231, float %230, float %229, float %221, float %222, float %223)  ; Dot3(ax,ay,az,bx,by,bz)
  %235 = fadd fast float %234, %227
  %236 = call float @dx.op.unary.f32(i32 26, float %235)  ; Round_ne(value)
  %237 = fptoui float %236 to i32
  %238 = and i32 %237, 1
  %239 = lshr i32 %237, 1
  %240 = xor i32 %238, %239
  %241 = shl nuw i32 %240, 1
  %242 = or i32 %239, %233
  %243 = or i32 %242, %241
  %244 = icmp ne i32 %232, 0
  %245 = shl i32 %243, 2
  %246 = select i1 %244, i32 %245, i32 %243
  %247 = add nsw i32 %232, -1
  %248 = icmp sgt i32 %232, 0
  br i1 %248, label %249, label %256

; <label>:249                                     ; preds = %228
  %250 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 %247
  %251 = load float, float* %250, align 4
  %252 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 %247
  %253 = load float, float* %252, align 4
  %254 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 %247
  %255 = load float, float* %254, align 4
  br label %228

; <label>:256                                     ; preds = %228
  br label %257

; <label>:257                                     ; preds = %256, %154
  %258 = phi i32 [ 0, %154 ], [ %246, %256 ]
  %259 = shl i32 %194, 16
  %260 = or i32 %207, %259
  %261 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %262 = extractvalue %dx.types.CBufRet.i32 %261, 0
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %1, i32 %5, i32 %6, i32 %262, i32 %260, i32 %258, i32 %260, i32 %260, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32, i8) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

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
!9 = !{i32 0, %"class.RWTexture2DArray<vector<unsigned int, 2> >"* undef, !"", i32 0, i32 0, i32 1, i32 7, i1 false, i1 false, i1 false, !10}
!10 = !{i32 0, i32 5}
!11 = !{!12}
!12 = !{i32 0, %ConstantBufferRuntimeCompression* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!13 = !{!14}
!14 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!15 = !{void ()* @cs_bc1_compress_one_mip, !"cs_bc1_compress_one_mip", null, !4, !16}
!16 = !{i32 0, i64 256, i32 4, !17}
!17 = !{i32 8, i32 8, i32 1}
!18 = distinct !{!18, !"dx.controlflow.hints", i32 2}

