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
; shader hash: e80dd231c7efb500699f47461bd9445c
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

define void @cs_bc5_compress_one_mip() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %6 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %7 = alloca [16 x float], align 4
  %8 = alloca [16 x float], align 4
  %9 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %10 = extractvalue %dx.types.CBufRet.f32 %9, 0
  %11 = shl i32 %5, 2
  %12 = shl i32 %6, 2
  %13 = uitofp i32 %11 to float
  %14 = uitofp i32 %12 to float
  %15 = fadd fast float %13, 1.000000e+00
  %16 = fadd fast float %14, 1.000000e+00
  %17 = fmul fast float %10, %15
  %18 = fmul fast float %10, %16
  %19 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %2, %dx.types.Handle %3, float %17, float %18, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %20 = extractvalue %dx.types.ResRet.f32 %19, 0
  %21 = extractvalue %dx.types.ResRet.f32 %19, 1
  %22 = extractvalue %dx.types.ResRet.f32 %19, 2
  %23 = extractvalue %dx.types.ResRet.f32 %19, 3
  %24 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %2, %dx.types.Handle %3, float %17, float %18, float undef, float undef, i32 0, i32 0, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %25 = extractvalue %dx.types.ResRet.f32 %24, 0
  %26 = extractvalue %dx.types.ResRet.f32 %24, 1
  %27 = extractvalue %dx.types.ResRet.f32 %24, 2
  %28 = extractvalue %dx.types.ResRet.f32 %24, 3
  %29 = getelementptr inbounds [16 x float], [16 x float]* %7, i32 0, i32 0
  store float %23, float* %29, align 4, !tbaa !18, !alias.scope !22, !noalias !25
  %30 = getelementptr inbounds [16 x float], [16 x float]* %8, i32 0, i32 0
  store float %28, float* %30, align 4, !tbaa !18, !alias.scope !25, !noalias !22
  %31 = getelementptr inbounds [16 x float], [16 x float]* %7, i32 0, i32 1
  store float %22, float* %31, align 4, !tbaa !18, !alias.scope !22, !noalias !25
  %32 = getelementptr inbounds [16 x float], [16 x float]* %8, i32 0, i32 1
  store float %27, float* %32, align 4, !tbaa !18, !alias.scope !25, !noalias !22
  %33 = getelementptr inbounds [16 x float], [16 x float]* %7, i32 0, i32 4
  store float %20, float* %33, align 4, !tbaa !18, !alias.scope !22, !noalias !25
  %34 = getelementptr inbounds [16 x float], [16 x float]* %8, i32 0, i32 4
  store float %25, float* %34, align 4, !tbaa !18, !alias.scope !25, !noalias !22
  %35 = getelementptr inbounds [16 x float], [16 x float]* %7, i32 0, i32 5
  store float %21, float* %35, align 4, !tbaa !18, !alias.scope !22, !noalias !25
  %36 = getelementptr inbounds [16 x float], [16 x float]* %8, i32 0, i32 5
  store float %26, float* %36, align 4, !tbaa !18, !alias.scope !25, !noalias !22
  %37 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %2, %dx.types.Handle %3, float %17, float %18, float undef, float undef, i32 2, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %38 = extractvalue %dx.types.ResRet.f32 %37, 0
  %39 = extractvalue %dx.types.ResRet.f32 %37, 1
  %40 = extractvalue %dx.types.ResRet.f32 %37, 2
  %41 = extractvalue %dx.types.ResRet.f32 %37, 3
  %42 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %2, %dx.types.Handle %3, float %17, float %18, float undef, float undef, i32 2, i32 0, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %43 = extractvalue %dx.types.ResRet.f32 %42, 0
  %44 = extractvalue %dx.types.ResRet.f32 %42, 1
  %45 = extractvalue %dx.types.ResRet.f32 %42, 2
  %46 = extractvalue %dx.types.ResRet.f32 %42, 3
  %47 = getelementptr inbounds [16 x float], [16 x float]* %7, i32 0, i32 2
  store float %41, float* %47, align 4, !tbaa !18, !alias.scope !22, !noalias !25
  %48 = getelementptr inbounds [16 x float], [16 x float]* %8, i32 0, i32 2
  store float %46, float* %48, align 4, !tbaa !18, !alias.scope !25, !noalias !22
  %49 = getelementptr inbounds [16 x float], [16 x float]* %7, i32 0, i32 3
  store float %40, float* %49, align 4, !tbaa !18, !alias.scope !22, !noalias !25
  %50 = getelementptr inbounds [16 x float], [16 x float]* %8, i32 0, i32 3
  store float %45, float* %50, align 4, !tbaa !18, !alias.scope !25, !noalias !22
  %51 = getelementptr inbounds [16 x float], [16 x float]* %7, i32 0, i32 6
  store float %38, float* %51, align 4, !tbaa !18, !alias.scope !22, !noalias !25
  %52 = getelementptr inbounds [16 x float], [16 x float]* %8, i32 0, i32 6
  store float %43, float* %52, align 4, !tbaa !18, !alias.scope !25, !noalias !22
  %53 = getelementptr inbounds [16 x float], [16 x float]* %7, i32 0, i32 7
  store float %39, float* %53, align 4, !tbaa !18, !alias.scope !22, !noalias !25
  %54 = getelementptr inbounds [16 x float], [16 x float]* %8, i32 0, i32 7
  store float %44, float* %54, align 4, !tbaa !18, !alias.scope !25, !noalias !22
  %55 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %2, %dx.types.Handle %3, float %17, float %18, float undef, float undef, i32 0, i32 2, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %56 = extractvalue %dx.types.ResRet.f32 %55, 0
  %57 = extractvalue %dx.types.ResRet.f32 %55, 1
  %58 = extractvalue %dx.types.ResRet.f32 %55, 2
  %59 = extractvalue %dx.types.ResRet.f32 %55, 3
  %60 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %2, %dx.types.Handle %3, float %17, float %18, float undef, float undef, i32 0, i32 2, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %61 = extractvalue %dx.types.ResRet.f32 %60, 0
  %62 = extractvalue %dx.types.ResRet.f32 %60, 1
  %63 = extractvalue %dx.types.ResRet.f32 %60, 2
  %64 = extractvalue %dx.types.ResRet.f32 %60, 3
  %65 = getelementptr inbounds [16 x float], [16 x float]* %7, i32 0, i32 8
  store float %59, float* %65, align 4, !tbaa !18, !alias.scope !22, !noalias !25
  %66 = getelementptr inbounds [16 x float], [16 x float]* %8, i32 0, i32 8
  store float %64, float* %66, align 4, !tbaa !18, !alias.scope !25, !noalias !22
  %67 = getelementptr inbounds [16 x float], [16 x float]* %7, i32 0, i32 9
  store float %58, float* %67, align 4, !tbaa !18, !alias.scope !22, !noalias !25
  %68 = getelementptr inbounds [16 x float], [16 x float]* %8, i32 0, i32 9
  store float %63, float* %68, align 4, !tbaa !18, !alias.scope !25, !noalias !22
  %69 = getelementptr inbounds [16 x float], [16 x float]* %7, i32 0, i32 12
  store float %56, float* %69, align 4, !tbaa !18, !alias.scope !22, !noalias !25
  %70 = getelementptr inbounds [16 x float], [16 x float]* %8, i32 0, i32 12
  store float %61, float* %70, align 4, !tbaa !18, !alias.scope !25, !noalias !22
  %71 = getelementptr inbounds [16 x float], [16 x float]* %7, i32 0, i32 13
  store float %57, float* %71, align 4, !tbaa !18, !alias.scope !22, !noalias !25
  %72 = getelementptr inbounds [16 x float], [16 x float]* %8, i32 0, i32 13
  store float %62, float* %72, align 4, !tbaa !18, !alias.scope !25, !noalias !22
  %73 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %2, %dx.types.Handle %3, float %17, float %18, float undef, float undef, i32 2, i32 2, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %74 = extractvalue %dx.types.ResRet.f32 %73, 0
  %75 = extractvalue %dx.types.ResRet.f32 %73, 1
  %76 = extractvalue %dx.types.ResRet.f32 %73, 2
  %77 = extractvalue %dx.types.ResRet.f32 %73, 3
  %78 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %2, %dx.types.Handle %3, float %17, float %18, float undef, float undef, i32 2, i32 2, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %79 = extractvalue %dx.types.ResRet.f32 %78, 0
  %80 = extractvalue %dx.types.ResRet.f32 %78, 1
  %81 = extractvalue %dx.types.ResRet.f32 %78, 2
  %82 = extractvalue %dx.types.ResRet.f32 %78, 3
  %83 = getelementptr inbounds [16 x float], [16 x float]* %7, i32 0, i32 10
  store float %77, float* %83, align 4, !tbaa !18, !alias.scope !22, !noalias !25
  %84 = getelementptr inbounds [16 x float], [16 x float]* %8, i32 0, i32 10
  store float %82, float* %84, align 4, !tbaa !18, !alias.scope !25, !noalias !22
  %85 = getelementptr inbounds [16 x float], [16 x float]* %7, i32 0, i32 11
  store float %76, float* %85, align 4, !tbaa !18, !alias.scope !22, !noalias !25
  %86 = getelementptr inbounds [16 x float], [16 x float]* %8, i32 0, i32 11
  store float %81, float* %86, align 4, !tbaa !18, !alias.scope !25, !noalias !22
  %87 = getelementptr inbounds [16 x float], [16 x float]* %7, i32 0, i32 14
  store float %74, float* %87, align 4, !tbaa !18, !alias.scope !22, !noalias !25
  %88 = getelementptr inbounds [16 x float], [16 x float]* %8, i32 0, i32 14
  store float %79, float* %88, align 4, !tbaa !18, !alias.scope !25, !noalias !22
  %89 = getelementptr inbounds [16 x float], [16 x float]* %7, i32 0, i32 15
  store float %75, float* %89, align 4, !tbaa !18, !alias.scope !22, !noalias !25
  %90 = getelementptr inbounds [16 x float], [16 x float]* %8, i32 0, i32 15
  store float %80, float* %90, align 4, !tbaa !18, !alias.scope !25, !noalias !22
  br label %91

; <label>:91                                      ; preds = %105, %0
  %92 = phi float [ %27, %0 ], [ %109, %105 ]
  %93 = phi float [ %22, %0 ], [ %107, %105 ]
  %94 = phi float [ %28, %0 ], [ %102, %105 ]
  %95 = phi float [ %28, %0 ], [ %101, %105 ]
  %96 = phi float [ %23, %0 ], [ %100, %105 ]
  %97 = phi float [ %23, %0 ], [ %99, %105 ]
  %98 = phi i32 [ 1, %0 ], [ %103, %105 ]
  %99 = call float @dx.op.binary.f32(i32 36, float %97, float %93)  ; FMin(a,b)
  %100 = call float @dx.op.binary.f32(i32 35, float %96, float %93)  ; FMax(a,b)
  %101 = call float @dx.op.binary.f32(i32 36, float %95, float %92)  ; FMin(a,b)
  %102 = call float @dx.op.binary.f32(i32 35, float %94, float %92)  ; FMax(a,b)
  %103 = add nuw nsw i32 %98, 1
  %104 = icmp eq i32 %103, 16
  br i1 %104, label %110, label %105

; <label>:105                                     ; preds = %91
  %106 = getelementptr inbounds [16 x float], [16 x float]* %7, i32 0, i32 %103
  %107 = load float, float* %106, align 4, !tbaa !18, !noalias !27
  %108 = getelementptr inbounds [16 x float], [16 x float]* %8, i32 0, i32 %103
  %109 = load float, float* %108, align 4, !tbaa !18, !noalias !27
  br label %91

; <label>:110                                     ; preds = %91
  %111 = fmul fast float %99, 2.550000e+02
  %112 = call float @dx.op.unary.f32(i32 26, float %111)  ; Round_ne(value)
  %113 = fptoui float %112 to i32
  %114 = fmul fast float %100, 2.550000e+02
  %115 = call float @dx.op.unary.f32(i32 26, float %114)  ; Round_ne(value)
  %116 = fptoui float %115 to i32
  %117 = fmul fast float %101, 2.550000e+02
  %118 = call float @dx.op.unary.f32(i32 26, float %117)  ; Round_ne(value)
  %119 = fptoui float %118 to i32
  %120 = fmul fast float %102, 2.550000e+02
  %121 = call float @dx.op.unary.f32(i32 26, float %120)  ; Round_ne(value)
  %122 = fptoui float %121 to i32
  %123 = shl i32 %113, 8
  %124 = or i32 %123, %116
  %125 = shl i32 %119, 8
  %126 = or i32 %125, %122
  %127 = icmp ult i32 %113, %116
  br i1 %127, label %128, label %238, !dx.controlflow.hints !33

; <label>:128                                     ; preds = %110
  %129 = fsub fast float %99, %100
  %130 = fdiv fast float 7.000000e+00, %129
  %131 = fsub fast float %23, %100
  %132 = fmul fast float %131, %130
  %133 = call float @dx.op.unary.f32(i32 26, float %132)  ; Round_ne(value)
  %134 = fptoui float %133 to i32
  %135 = icmp ne i32 %134, 0
  %136 = zext i1 %135 to i32
  %137 = icmp eq i32 %134, 7
  %138 = select i1 %137, i32 65529, i32 0
  %139 = add i32 %138, %134
  %140 = add i32 %139, %136
  %141 = shl i32 %140, 16
  %142 = fsub fast float %22, %100
  %143 = fmul fast float %142, %130
  %144 = call float @dx.op.unary.f32(i32 26, float %143)  ; Round_ne(value)
  %145 = fptoui float %144 to i32
  %146 = icmp ne i32 %145, 0
  %147 = zext i1 %146 to i32
  %148 = icmp eq i32 %145, 7
  %149 = select i1 %148, i32 8185, i32 0
  %150 = add i32 %149, %145
  %151 = add i32 %150, %147
  %152 = shl i32 %151, 19
  %153 = fsub fast float %41, %100
  %154 = fmul fast float %153, %130
  %155 = call float @dx.op.unary.f32(i32 26, float %154)  ; Round_ne(value)
  %156 = fptoui float %155 to i32
  %157 = icmp ne i32 %156, 0
  %158 = zext i1 %157 to i32
  %159 = icmp eq i32 %156, 7
  %160 = select i1 %159, i32 1017, i32 0
  %161 = add i32 %160, %156
  %162 = add i32 %161, %158
  %163 = shl i32 %162, 22
  %164 = fsub fast float %40, %100
  %165 = fmul fast float %164, %130
  %166 = call float @dx.op.unary.f32(i32 26, float %165)  ; Round_ne(value)
  %167 = fptoui float %166 to i32
  %168 = icmp ne i32 %167, 0
  %169 = zext i1 %168 to i32
  %170 = icmp eq i32 %167, 7
  %171 = select i1 %170, i32 121, i32 0
  %172 = add i32 %171, %167
  %173 = add i32 %172, %169
  %174 = shl i32 %173, 25
  %175 = fsub fast float %20, %100
  %176 = fmul fast float %175, %130
  %177 = call float @dx.op.unary.f32(i32 26, float %176)  ; Round_ne(value)
  %178 = fptoui float %177 to i32
  %179 = icmp ne i32 %178, 0
  %180 = zext i1 %179 to i32
  %181 = icmp eq i32 %178, 7
  %182 = select i1 %181, i32 9, i32 0
  %183 = add i32 %182, %178
  %184 = add i32 %183, %180
  %185 = shl i32 %184, 28
  %186 = fsub fast float %21, %100
  %187 = fmul fast float %186, %130
  %188 = call float @dx.op.unary.f32(i32 26, float %187)  ; Round_ne(value)
  %189 = fptoui float %188 to i32
  %190 = icmp ne i32 %189, 0
  %191 = zext i1 %190 to i32
  %192 = icmp eq i32 %189, 7
  %193 = select i1 %192, i32 7, i32 0
  %194 = sub nsw i32 %191, %193
  %195 = add i32 %194, %189
  %196 = shl i32 %195, 31
  %197 = lshr i32 %195, 1
  %198 = fsub fast float %38, %100
  %199 = fmul fast float %198, %130
  %200 = call float @dx.op.unary.f32(i32 26, float %199)  ; Round_ne(value)
  %201 = fptoui float %200 to i32
  %202 = icmp ne i32 %201, 0
  %203 = zext i1 %202 to i32
  %204 = icmp eq i32 %201, 7
  %205 = select i1 %204, i32 1073741817, i32 0
  %206 = add i32 %205, %201
  %207 = add i32 %206, %203
  %208 = shl i32 %207, 2
  %209 = or i32 %208, %197
  br label %210

; <label>:210                                     ; preds = %210, %128
  %211 = phi i32 [ 7, %128 ], [ %229, %210 ]
  %212 = phi i32 [ %209, %128 ], [ %228, %210 ]
  %213 = phi i32 [ 2, %128 ], [ %214, %210 ]
  %214 = add nuw nsw i32 %213, 3
  %215 = getelementptr inbounds [16 x float], [16 x float]* %7, i32 0, i32 %211
  %216 = load float, float* %215, align 4, !tbaa !18, !noalias !34
  %217 = fsub fast float %216, %100
  %218 = fmul fast float %217, %130
  %219 = call float @dx.op.unary.f32(i32 26, float %218)  ; Round_ne(value)
  %220 = fptoui float %219 to i32
  %221 = icmp ne i32 %220, 0
  %222 = zext i1 %221 to i32
  %223 = icmp eq i32 %220, 7
  %224 = select i1 %223, i32 -7, i32 0
  %225 = add i32 %224, %220
  %226 = add i32 %225, %222
  %227 = shl i32 %226, %214
  %228 = or i32 %227, %212
  %229 = add nuw nsw i32 %211, 1
  %230 = icmp eq i32 %229, 16
  br i1 %230, label %231, label %210

; <label>:231                                     ; preds = %210
  %232 = or i32 %141, %124
  %233 = or i32 %232, %152
  %234 = or i32 %233, %163
  %235 = or i32 %234, %174
  %236 = or i32 %235, %185
  %237 = or i32 %236, %196
  br label %238

; <label>:238                                     ; preds = %231, %110
  %239 = phi i32 [ %124, %110 ], [ %237, %231 ]
  %240 = phi i32 [ 0, %110 ], [ %228, %231 ]
  %241 = icmp ult i32 %119, %122
  br i1 %241, label %242, label %352, !dx.controlflow.hints !37

; <label>:242                                     ; preds = %238
  %243 = fsub fast float %101, %102
  %244 = fdiv fast float 7.000000e+00, %243
  %245 = fsub fast float %28, %102
  %246 = fmul fast float %245, %244
  %247 = call float @dx.op.unary.f32(i32 26, float %246)  ; Round_ne(value)
  %248 = fptoui float %247 to i32
  %249 = icmp ne i32 %248, 0
  %250 = zext i1 %249 to i32
  %251 = icmp eq i32 %248, 7
  %252 = select i1 %251, i32 65529, i32 0
  %253 = add i32 %252, %248
  %254 = add i32 %253, %250
  %255 = shl i32 %254, 16
  %256 = fsub fast float %27, %102
  %257 = fmul fast float %256, %244
  %258 = call float @dx.op.unary.f32(i32 26, float %257)  ; Round_ne(value)
  %259 = fptoui float %258 to i32
  %260 = icmp ne i32 %259, 0
  %261 = zext i1 %260 to i32
  %262 = icmp eq i32 %259, 7
  %263 = select i1 %262, i32 8185, i32 0
  %264 = add i32 %263, %259
  %265 = add i32 %264, %261
  %266 = shl i32 %265, 19
  %267 = fsub fast float %46, %102
  %268 = fmul fast float %267, %244
  %269 = call float @dx.op.unary.f32(i32 26, float %268)  ; Round_ne(value)
  %270 = fptoui float %269 to i32
  %271 = icmp ne i32 %270, 0
  %272 = zext i1 %271 to i32
  %273 = icmp eq i32 %270, 7
  %274 = select i1 %273, i32 1017, i32 0
  %275 = add i32 %274, %270
  %276 = add i32 %275, %272
  %277 = shl i32 %276, 22
  %278 = fsub fast float %45, %102
  %279 = fmul fast float %278, %244
  %280 = call float @dx.op.unary.f32(i32 26, float %279)  ; Round_ne(value)
  %281 = fptoui float %280 to i32
  %282 = icmp ne i32 %281, 0
  %283 = zext i1 %282 to i32
  %284 = icmp eq i32 %281, 7
  %285 = select i1 %284, i32 121, i32 0
  %286 = add i32 %285, %281
  %287 = add i32 %286, %283
  %288 = shl i32 %287, 25
  %289 = fsub fast float %25, %102
  %290 = fmul fast float %289, %244
  %291 = call float @dx.op.unary.f32(i32 26, float %290)  ; Round_ne(value)
  %292 = fptoui float %291 to i32
  %293 = icmp ne i32 %292, 0
  %294 = zext i1 %293 to i32
  %295 = icmp eq i32 %292, 7
  %296 = select i1 %295, i32 9, i32 0
  %297 = add i32 %296, %292
  %298 = add i32 %297, %294
  %299 = shl i32 %298, 28
  %300 = fsub fast float %26, %102
  %301 = fmul fast float %300, %244
  %302 = call float @dx.op.unary.f32(i32 26, float %301)  ; Round_ne(value)
  %303 = fptoui float %302 to i32
  %304 = icmp ne i32 %303, 0
  %305 = zext i1 %304 to i32
  %306 = icmp eq i32 %303, 7
  %307 = select i1 %306, i32 7, i32 0
  %308 = sub nsw i32 %305, %307
  %309 = add i32 %308, %303
  %310 = shl i32 %309, 31
  %311 = lshr i32 %309, 1
  %312 = fsub fast float %43, %102
  %313 = fmul fast float %312, %244
  %314 = call float @dx.op.unary.f32(i32 26, float %313)  ; Round_ne(value)
  %315 = fptoui float %314 to i32
  %316 = icmp ne i32 %315, 0
  %317 = zext i1 %316 to i32
  %318 = icmp eq i32 %315, 7
  %319 = select i1 %318, i32 1073741817, i32 0
  %320 = add i32 %319, %315
  %321 = add i32 %320, %317
  %322 = shl i32 %321, 2
  %323 = or i32 %322, %311
  br label %324

; <label>:324                                     ; preds = %324, %242
  %325 = phi i32 [ 7, %242 ], [ %343, %324 ]
  %326 = phi i32 [ %323, %242 ], [ %342, %324 ]
  %327 = phi i32 [ 2, %242 ], [ %328, %324 ]
  %328 = add nuw nsw i32 %327, 3
  %329 = getelementptr inbounds [16 x float], [16 x float]* %8, i32 0, i32 %325
  %330 = load float, float* %329, align 4, !tbaa !18, !noalias !38
  %331 = fsub fast float %330, %102
  %332 = fmul fast float %331, %244
  %333 = call float @dx.op.unary.f32(i32 26, float %332)  ; Round_ne(value)
  %334 = fptoui float %333 to i32
  %335 = icmp ne i32 %334, 0
  %336 = zext i1 %335 to i32
  %337 = icmp eq i32 %334, 7
  %338 = select i1 %337, i32 -7, i32 0
  %339 = add i32 %338, %334
  %340 = add i32 %339, %336
  %341 = shl i32 %340, %328
  %342 = or i32 %341, %326
  %343 = add nuw nsw i32 %325, 1
  %344 = icmp eq i32 %343, 16
  br i1 %344, label %345, label %324

; <label>:345                                     ; preds = %324
  %346 = or i32 %255, %126
  %347 = or i32 %346, %266
  %348 = or i32 %347, %277
  %349 = or i32 %348, %288
  %350 = or i32 %349, %299
  %351 = or i32 %350, %310
  br label %352

; <label>:352                                     ; preds = %345, %238
  %353 = phi i32 [ %126, %238 ], [ %351, %345 ]
  %354 = phi i32 [ 0, %238 ], [ %342, %345 ]
  %355 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %356 = extractvalue %dx.types.CBufRet.i32 %355, 0
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %1, i32 %5, i32 %6, i32 %356, i32 %239, i32 %240, i32 %353, i32 %354, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32, i8) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

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
!9 = !{i32 0, %"class.RWTexture2DArray<vector<unsigned int, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 7, i1 false, i1 false, i1 false, !10}
!10 = !{i32 0, i32 5}
!11 = !{!12}
!12 = !{i32 0, %ConstantBufferRuntimeCompression* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!13 = !{!14}
!14 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!15 = !{void ()* @cs_bc5_compress_one_mip, !"cs_bc5_compress_one_mip", null, !4, !16}
!16 = !{i32 0, i64 256, i32 4, !17}
!17 = !{i32 8, i32 8, i32 1}
!18 = !{!19, !19, i64 0}
!19 = !{!"float", !20, i64 0}
!20 = !{!"omnipotent char", !21, i64 0}
!21 = !{!"Simple C/C++ TBAA"}
!22 = !{!23}
!23 = distinct !{!23, !24, !"\01?LoadTexelsUV@@YAXV?$Texture2D@V?$vector@M$03@@@@USamplerState@@MV?$vector@I$01@@Y0BA@$$CAM3@Z: %blockU"}
!24 = distinct !{!24, !"\01?LoadTexelsUV@@YAXV?$Texture2D@V?$vector@M$03@@@@USamplerState@@MV?$vector@I$01@@Y0BA@$$CAM3@Z"}
!25 = !{!26}
!26 = distinct !{!26, !24, !"\01?LoadTexelsUV@@YAXV?$Texture2D@V?$vector@M$03@@@@USamplerState@@MV?$vector@I$01@@Y0BA@$$CAM3@Z: %blockV"}
!27 = !{!28, !30, !31, !32}
!28 = distinct !{!28, !29, !"\01?GetMinMaxUV@@YAXY0BA@M0AIAM111@Z: %minU"}
!29 = distinct !{!29, !"\01?GetMinMaxUV@@YAXY0BA@M0AIAM111@Z"}
!30 = distinct !{!30, !29, !"\01?GetMinMaxUV@@YAXY0BA@M0AIAM111@Z: %maxU"}
!31 = distinct !{!31, !29, !"\01?GetMinMaxUV@@YAXY0BA@M0AIAM111@Z: %minV"}
!32 = distinct !{!32, !29, !"\01?GetMinMaxUV@@YAXY0BA@M0AIAM111@Z: %maxV"}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = !{!35}
!35 = distinct !{!35, !36, !"\01?GetIndicesAlpha@@YAXY0BA@MMMAIAV?$vector@I$01@@@Z: %inoutPacked"}
!36 = distinct !{!36, !"\01?GetIndicesAlpha@@YAXY0BA@MMMAIAV?$vector@I$01@@@Z"}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = !{!39}
!39 = distinct !{!39, !40, !"\01?GetIndicesAlpha@@YAXY0BA@MMMAIAV?$vector@I$01@@@Z: %inoutPacked"}
!40 = distinct !{!40, !"\01?GetIndicesAlpha@@YAXY0BA@MMMAIAV?$vector@I$01@@@Z"}

