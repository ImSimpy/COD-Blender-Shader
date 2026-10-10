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
; shader hash: eef740a039730d8b4e9533c48d40992e
;
; Pipeline Runtime Information: 
;
;
;
; Buffer Definitions:
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   texture     f32     2darray      T0             t0     1
;                                       UAV     u32     2darray      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%"class.RWTexture2DArray<vector<unsigned int, 4> >" = type { <4 x i32> }

define void @cs_bc6_compress_array_hq() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %4 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %5 = call i32 @dx.op.threadId.i32(i32 93, i32 2)  ; ThreadId(component)
  %6 = alloca [16 x float], align 4
  %7 = alloca [16 x float], align 4
  %8 = alloca [16 x float], align 4
  %9 = alloca [16 x i32], align 4
  %10 = alloca [16 x i32], align 4
  %11 = shl i32 %3, 2
  %12 = shl i32 %4, 2
  %13 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %11, i32 %12, i32 %5, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %14 = extractvalue %dx.types.ResRet.f32 %13, 0
  %15 = extractvalue %dx.types.ResRet.f32 %13, 1
  %16 = extractvalue %dx.types.ResRet.f32 %13, 2
  %17 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 0
  %18 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 0
  %19 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 0
  store float %14, float* %17, align 4
  store float %15, float* %18, align 4
  store float %16, float* %19, align 4
  %20 = or i32 %11, 1
  %21 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %20, i32 %12, i32 %5, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %22 = extractvalue %dx.types.ResRet.f32 %21, 0
  %23 = extractvalue %dx.types.ResRet.f32 %21, 1
  %24 = extractvalue %dx.types.ResRet.f32 %21, 2
  %25 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 1
  %26 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 1
  %27 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 1
  store float %22, float* %25, align 4
  store float %23, float* %26, align 4
  store float %24, float* %27, align 4
  %28 = or i32 %11, 2
  %29 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %28, i32 %12, i32 %5, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %30 = extractvalue %dx.types.ResRet.f32 %29, 0
  %31 = extractvalue %dx.types.ResRet.f32 %29, 1
  %32 = extractvalue %dx.types.ResRet.f32 %29, 2
  %33 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 2
  %34 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 2
  %35 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 2
  store float %30, float* %33, align 4
  store float %31, float* %34, align 4
  store float %32, float* %35, align 4
  %36 = or i32 %11, 3
  %37 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %36, i32 %12, i32 %5, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %38 = extractvalue %dx.types.ResRet.f32 %37, 0
  %39 = extractvalue %dx.types.ResRet.f32 %37, 1
  %40 = extractvalue %dx.types.ResRet.f32 %37, 2
  %41 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 3
  %42 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 3
  %43 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 3
  store float %38, float* %41, align 4
  store float %39, float* %42, align 4
  store float %40, float* %43, align 4
  %44 = or i32 %12, 1
  %45 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %11, i32 %44, i32 %5, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %46 = extractvalue %dx.types.ResRet.f32 %45, 0
  %47 = extractvalue %dx.types.ResRet.f32 %45, 1
  %48 = extractvalue %dx.types.ResRet.f32 %45, 2
  %49 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 4
  %50 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 4
  %51 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 4
  store float %46, float* %49, align 4
  store float %47, float* %50, align 4
  store float %48, float* %51, align 4
  %52 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %20, i32 %44, i32 %5, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %53 = extractvalue %dx.types.ResRet.f32 %52, 0
  %54 = extractvalue %dx.types.ResRet.f32 %52, 1
  %55 = extractvalue %dx.types.ResRet.f32 %52, 2
  %56 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 5
  %57 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 5
  %58 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 5
  store float %53, float* %56, align 4
  store float %54, float* %57, align 4
  store float %55, float* %58, align 4
  %59 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %28, i32 %44, i32 %5, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %60 = extractvalue %dx.types.ResRet.f32 %59, 0
  %61 = extractvalue %dx.types.ResRet.f32 %59, 1
  %62 = extractvalue %dx.types.ResRet.f32 %59, 2
  %63 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 6
  %64 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 6
  %65 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 6
  store float %60, float* %63, align 4
  store float %61, float* %64, align 4
  store float %62, float* %65, align 4
  %66 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %36, i32 %44, i32 %5, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %67 = extractvalue %dx.types.ResRet.f32 %66, 0
  %68 = extractvalue %dx.types.ResRet.f32 %66, 1
  %69 = extractvalue %dx.types.ResRet.f32 %66, 2
  %70 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 7
  %71 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 7
  %72 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 7
  store float %67, float* %70, align 4
  store float %68, float* %71, align 4
  store float %69, float* %72, align 4
  %73 = or i32 %12, 2
  %74 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %11, i32 %73, i32 %5, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %75 = extractvalue %dx.types.ResRet.f32 %74, 0
  %76 = extractvalue %dx.types.ResRet.f32 %74, 1
  %77 = extractvalue %dx.types.ResRet.f32 %74, 2
  %78 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 8
  %79 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 8
  %80 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 8
  store float %75, float* %78, align 4
  store float %76, float* %79, align 4
  store float %77, float* %80, align 4
  %81 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %20, i32 %73, i32 %5, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %82 = extractvalue %dx.types.ResRet.f32 %81, 0
  %83 = extractvalue %dx.types.ResRet.f32 %81, 1
  %84 = extractvalue %dx.types.ResRet.f32 %81, 2
  %85 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 9
  %86 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 9
  %87 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 9
  store float %82, float* %85, align 4
  store float %83, float* %86, align 4
  store float %84, float* %87, align 4
  %88 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %28, i32 %73, i32 %5, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %89 = extractvalue %dx.types.ResRet.f32 %88, 0
  %90 = extractvalue %dx.types.ResRet.f32 %88, 1
  %91 = extractvalue %dx.types.ResRet.f32 %88, 2
  %92 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 10
  %93 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 10
  %94 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 10
  store float %89, float* %92, align 4
  store float %90, float* %93, align 4
  store float %91, float* %94, align 4
  %95 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %36, i32 %73, i32 %5, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %96 = extractvalue %dx.types.ResRet.f32 %95, 0
  %97 = extractvalue %dx.types.ResRet.f32 %95, 1
  %98 = extractvalue %dx.types.ResRet.f32 %95, 2
  %99 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 11
  %100 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 11
  %101 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 11
  store float %96, float* %99, align 4
  store float %97, float* %100, align 4
  store float %98, float* %101, align 4
  %102 = or i32 %12, 3
  %103 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %11, i32 %102, i32 %5, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %104 = extractvalue %dx.types.ResRet.f32 %103, 0
  %105 = extractvalue %dx.types.ResRet.f32 %103, 1
  %106 = extractvalue %dx.types.ResRet.f32 %103, 2
  %107 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 12
  %108 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 12
  %109 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 12
  store float %104, float* %107, align 4
  store float %105, float* %108, align 4
  store float %106, float* %109, align 4
  %110 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %20, i32 %102, i32 %5, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %111 = extractvalue %dx.types.ResRet.f32 %110, 0
  %112 = extractvalue %dx.types.ResRet.f32 %110, 1
  %113 = extractvalue %dx.types.ResRet.f32 %110, 2
  %114 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 13
  %115 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 13
  %116 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 13
  store float %111, float* %114, align 4
  store float %112, float* %115, align 4
  store float %113, float* %116, align 4
  %117 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %28, i32 %102, i32 %5, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %118 = extractvalue %dx.types.ResRet.f32 %117, 0
  %119 = extractvalue %dx.types.ResRet.f32 %117, 1
  %120 = extractvalue %dx.types.ResRet.f32 %117, 2
  %121 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 14
  %122 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 14
  %123 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 14
  store float %118, float* %121, align 4
  store float %119, float* %122, align 4
  store float %120, float* %123, align 4
  %124 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %36, i32 %102, i32 %5, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %125 = extractvalue %dx.types.ResRet.f32 %124, 0
  %126 = extractvalue %dx.types.ResRet.f32 %124, 1
  %127 = extractvalue %dx.types.ResRet.f32 %124, 2
  %128 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 15
  %129 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 15
  %130 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 15
  store float %125, float* %128, align 4
  store float %126, float* %129, align 4
  store float %127, float* %130, align 4
  br label %131

; <label>:131                                     ; preds = %151, %0
  %132 = phi float [ %24, %0 ], [ %157, %151 ]
  %133 = phi float [ %23, %0 ], [ %155, %151 ]
  %134 = phi float [ %22, %0 ], [ %153, %151 ]
  %135 = phi float [ %14, %0 ], [ %142, %151 ]
  %136 = phi float [ %15, %0 ], [ %143, %151 ]
  %137 = phi float [ %16, %0 ], [ %144, %151 ]
  %138 = phi float [ %14, %0 ], [ %145, %151 ]
  %139 = phi float [ %15, %0 ], [ %146, %151 ]
  %140 = phi float [ %16, %0 ], [ %147, %151 ]
  %141 = phi i32 [ 1, %0 ], [ %148, %151 ]
  %142 = call float @dx.op.binary.f32(i32 36, float %135, float %134)  ; FMin(a,b)
  %143 = call float @dx.op.binary.f32(i32 36, float %136, float %133)  ; FMin(a,b)
  %144 = call float @dx.op.binary.f32(i32 36, float %137, float %132)  ; FMin(a,b)
  %145 = call float @dx.op.binary.f32(i32 35, float %138, float %134)  ; FMax(a,b)
  %146 = call float @dx.op.binary.f32(i32 35, float %139, float %133)  ; FMax(a,b)
  %147 = call float @dx.op.binary.f32(i32 35, float %140, float %132)  ; FMax(a,b)
  %148 = add nuw nsw i32 %141, 1
  %149 = icmp eq i32 %148, 16
  br i1 %149, label %150, label %151

; <label>:150                                     ; preds = %131
  br label %158

; <label>:151                                     ; preds = %131
  %152 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 %148
  %153 = load float, float* %152, align 4
  %154 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 %148
  %155 = load float, float* %154, align 4
  %156 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 %148
  %157 = load float, float* %156, align 4
  br label %131

; <label>:158                                     ; preds = %189, %150
  %159 = phi float [ %195, %189 ], [ %16, %150 ]
  %160 = phi float [ %193, %189 ], [ %15, %150 ]
  %161 = phi float [ %191, %189 ], [ %14, %150 ]
  %162 = phi i32 [ %187, %189 ], [ 0, %150 ]
  %163 = phi float [ %175, %189 ], [ %145, %150 ]
  %164 = phi float [ %176, %189 ], [ %146, %150 ]
  %165 = phi float [ %177, %189 ], [ %147, %150 ]
  %166 = phi float [ %184, %189 ], [ %142, %150 ]
  %167 = phi float [ %185, %189 ], [ %143, %150 ]
  %168 = phi float [ %186, %189 ], [ %144, %150 ]
  %169 = fcmp fast oeq float %161, %142
  %170 = fcmp fast oeq float %160, %143
  %171 = fcmp fast oeq float %159, %144
  %172 = select i1 %169, float %163, float %161
  %173 = select i1 %170, float %164, float %160
  %174 = select i1 %171, float %165, float %159
  %175 = call float @dx.op.binary.f32(i32 36, float %163, float %172)  ; FMin(a,b)
  %176 = call float @dx.op.binary.f32(i32 36, float %164, float %173)  ; FMin(a,b)
  %177 = call float @dx.op.binary.f32(i32 36, float %165, float %174)  ; FMin(a,b)
  %178 = fcmp fast oeq float %161, %145
  %179 = fcmp fast oeq float %160, %146
  %180 = fcmp fast oeq float %159, %147
  %181 = select i1 %178, float %166, float %161
  %182 = select i1 %179, float %167, float %160
  %183 = select i1 %180, float %168, float %159
  %184 = call float @dx.op.binary.f32(i32 35, float %166, float %181)  ; FMax(a,b)
  %185 = call float @dx.op.binary.f32(i32 35, float %167, float %182)  ; FMax(a,b)
  %186 = call float @dx.op.binary.f32(i32 35, float %168, float %183)  ; FMax(a,b)
  %187 = add nuw nsw i32 %162, 1
  %188 = icmp eq i32 %187, 16
  br i1 %188, label %196, label %189

; <label>:189                                     ; preds = %158
  %190 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 %187
  %191 = load float, float* %190, align 4
  %192 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 %187
  %193 = load float, float* %192, align 4
  %194 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 %187
  %195 = load float, float* %194, align 4
  br label %158

; <label>:196                                     ; preds = %158
  %197 = fadd fast float %145, 1.000000e+00
  %198 = fadd fast float %146, 1.000000e+00
  %199 = fadd fast float %147, 1.000000e+00
  %200 = call float @dx.op.unary.f32(i32 23, float %197)  ; Log(value)
  %201 = call float @dx.op.unary.f32(i32 23, float %198)  ; Log(value)
  %202 = call float @dx.op.unary.f32(i32 23, float %199)  ; Log(value)
  %203 = fadd fast float %142, 1.000000e+00
  %204 = fadd fast float %143, 1.000000e+00
  %205 = fadd fast float %144, 1.000000e+00
  %206 = call float @dx.op.unary.f32(i32 23, float %203)  ; Log(value)
  %207 = call float @dx.op.unary.f32(i32 23, float %204)  ; Log(value)
  %208 = call float @dx.op.unary.f32(i32 23, float %205)  ; Log(value)
  %209 = fadd fast float %184, 1.000000e+00
  %210 = fadd fast float %185, 1.000000e+00
  %211 = fadd fast float %186, 1.000000e+00
  %212 = call float @dx.op.unary.f32(i32 23, float %209)  ; Log(value)
  %213 = call float @dx.op.unary.f32(i32 23, float %210)  ; Log(value)
  %214 = call float @dx.op.unary.f32(i32 23, float %211)  ; Log(value)
  %215 = fadd fast float %175, 1.000000e+00
  %216 = fadd fast float %176, 1.000000e+00
  %217 = fadd fast float %177, 1.000000e+00
  %218 = call float @dx.op.unary.f32(i32 23, float %215)  ; Log(value)
  %219 = call float @dx.op.unary.f32(i32 23, float %216)  ; Log(value)
  %220 = call float @dx.op.unary.f32(i32 23, float %217)  ; Log(value)
  %221 = fsub fast float %200, %206
  %222 = fsub fast float %201, %207
  %223 = fsub fast float %202, %208
  %224 = fmul fast float %221, 3.125000e-02
  %225 = fmul fast float %222, 3.125000e-02
  %226 = fmul fast float %223, 3.125000e-02
  %227 = fsub fast float %218, %206
  %228 = fsub fast float %219, %207
  %229 = fsub fast float %220, %208
  %230 = call float @dx.op.binary.f32(i32 36, float %227, float %224)  ; FMin(a,b)
  %231 = call float @dx.op.binary.f32(i32 36, float %228, float %225)  ; FMin(a,b)
  %232 = call float @dx.op.binary.f32(i32 36, float %229, float %226)  ; FMin(a,b)
  %233 = fadd fast float %230, %206
  %234 = fadd fast float %231, %207
  %235 = fadd fast float %232, %208
  %236 = fsub fast float %200, %212
  %237 = fsub fast float %201, %213
  %238 = fsub fast float %202, %214
  %239 = call float @dx.op.binary.f32(i32 36, float %236, float %224)  ; FMin(a,b)
  %240 = call float @dx.op.binary.f32(i32 36, float %237, float %225)  ; FMin(a,b)
  %241 = call float @dx.op.binary.f32(i32 36, float %238, float %226)  ; FMin(a,b)
  %242 = fsub fast float %200, %239
  %243 = fsub fast float %201, %240
  %244 = fsub fast float %202, %241
  %245 = call float @dx.op.unary.f32(i32 21, float %233)  ; Exp(value)
  %246 = call float @dx.op.unary.f32(i32 21, float %234)  ; Exp(value)
  %247 = call float @dx.op.unary.f32(i32 21, float %235)  ; Exp(value)
  %248 = fadd fast float %245, -1.000000e+00
  %249 = fadd fast float %246, -1.000000e+00
  %250 = fadd fast float %247, -1.000000e+00
  %251 = call float @dx.op.unary.f32(i32 21, float %242)  ; Exp(value)
  %252 = call float @dx.op.unary.f32(i32 21, float %243)  ; Exp(value)
  %253 = call float @dx.op.unary.f32(i32 21, float %244)  ; Exp(value)
  %254 = fadd fast float %251, -1.000000e+00
  %255 = fadd fast float %252, -1.000000e+00
  %256 = fadd fast float %253, -1.000000e+00
  %257 = fsub fast float %254, %248
  %258 = fsub fast float %255, %249
  %259 = fsub fast float %256, %250
  %260 = fadd fast float %258, %257
  %261 = fadd fast float %260, %259
  %262 = fdiv fast float %257, %261
  %263 = fdiv fast float %258, %261
  %264 = fdiv fast float %259, %261
  %265 = call i32 @dx.op.legacyF32ToF16(i32 130, float %248)  ; LegacyF32ToF16(value)
  %266 = call i32 @dx.op.legacyF32ToF16(i32 130, float %249)  ; LegacyF32ToF16(value)
  %267 = call i32 @dx.op.legacyF32ToF16(i32 130, float %250)  ; LegacyF32ToF16(value)
  %268 = uitofp i32 %265 to float
  %269 = uitofp i32 %266 to float
  %270 = uitofp i32 %267 to float
  %271 = fmul fast float %268, 0x3FA0842100000000
  %272 = fmul fast float %269, 0x3FA0842100000000
  %273 = fmul fast float %270, 0x3FA0842100000000
  %274 = call i32 @dx.op.legacyF32ToF16(i32 130, float %254)  ; LegacyF32ToF16(value)
  %275 = call i32 @dx.op.legacyF32ToF16(i32 130, float %255)  ; LegacyF32ToF16(value)
  %276 = call i32 @dx.op.legacyF32ToF16(i32 130, float %256)  ; LegacyF32ToF16(value)
  %277 = uitofp i32 %274 to float
  %278 = uitofp i32 %275 to float
  %279 = uitofp i32 %276 to float
  %280 = fmul fast float %277, 0x3FA0842100000000
  %281 = fmul fast float %278, 0x3FA0842100000000
  %282 = fmul fast float %279, 0x3FA0842100000000
  %283 = call float @dx.op.dot3.f32(i32 55, float %248, float %249, float %250, float %262, float %263, float %264)  ; Dot3(ax,ay,az,bx,by,bz)
  %284 = call i32 @dx.op.legacyF32ToF16(i32 130, float %283)  ; LegacyF32ToF16(value)
  %285 = uitofp i32 %284 to float
  %286 = call float @dx.op.dot3.f32(i32 55, float %254, float %255, float %256, float %262, float %263, float %264)  ; Dot3(ax,ay,az,bx,by,bz)
  %287 = call i32 @dx.op.legacyF32ToF16(i32 130, float %286)  ; LegacyF32ToF16(value)
  %288 = uitofp i32 %287 to float
  %289 = call float @dx.op.dot3.f32(i32 55, float %14, float %15, float %16, float %262, float %263, float %264)  ; Dot3(ax,ay,az,bx,by,bz)
  %290 = call i32 @dx.op.legacyF32ToF16(i32 130, float %289)  ; LegacyF32ToF16(value)
  %291 = uitofp i32 %290 to float
  %292 = fsub fast float %291, %285
  %293 = fsub fast float %288, %285
  %294 = fdiv fast float %292, %293
  %295 = fmul fast float %294, 0x402DDDDD60000000
  %296 = fadd fast float %295, 0x3FE1110A20000000
  %297 = call float @dx.op.binary.f32(i32 35, float %296, float 0.000000e+00)  ; FMax(a,b)
  %298 = call float @dx.op.binary.f32(i32 36, float %297, float 1.500000e+01)  ; FMin(a,b)
  %299 = fptoui float %298 to i32
  %300 = icmp ugt i32 %299, 7
  %301 = select i1 %300, float %280, float %271
  %302 = select i1 %300, float %282, float %273
  %303 = select i1 %300, float %272, float %281
  %304 = select i1 %300, float %288, float %285
  %305 = select i1 %300, float %285, float %288
  %306 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i32 0, i32 0
  store i32 0, i32* %306, align 4, !tbaa !14, !noalias !18
  %307 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i32 0, i32 1
  store i32 0, i32* %307, align 4, !tbaa !14, !noalias !18
  %308 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i32 0, i32 2
  store i32 0, i32* %308, align 4, !tbaa !14, !noalias !18
  %309 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i32 0, i32 3
  store i32 0, i32* %309, align 4, !tbaa !14, !noalias !18
  %310 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i32 0, i32 4
  store i32 0, i32* %310, align 4, !tbaa !14, !noalias !18
  %311 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i32 0, i32 5
  store i32 0, i32* %311, align 4, !tbaa !14, !noalias !18
  %312 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i32 0, i32 6
  store i32 0, i32* %312, align 4, !tbaa !14, !noalias !22
  %313 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i32 0, i32 7
  store i32 0, i32* %313, align 4, !tbaa !14, !noalias !22
  %314 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i32 0, i32 8
  store i32 0, i32* %314, align 4, !tbaa !14, !noalias !22
  %315 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i32 0, i32 9
  store i32 0, i32* %315, align 4, !tbaa !14, !noalias !22
  %316 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i32 0, i32 10
  store i32 0, i32* %316, align 4, !tbaa !14, !noalias !22
  %317 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i32 0, i32 11
  store i32 0, i32* %317, align 4, !tbaa !14, !noalias !22
  %318 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i32 0, i32 12
  store i32 0, i32* %318, align 4, !tbaa !14, !noalias !22
  %319 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i32 0, i32 13
  store i32 0, i32* %319, align 4, !tbaa !14, !noalias !22
  %320 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i32 0, i32 14
  store i32 0, i32* %320, align 4, !tbaa !14, !noalias !22
  %321 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i32 0, i32 15
  store i32 0, i32* %321, align 4, !tbaa !14, !noalias !22
  br label %322

; <label>:322                                     ; preds = %341, %196
  %323 = phi float [ %16, %196 ], [ %347, %341 ]
  %324 = phi float [ %15, %196 ], [ %345, %341 ]
  %325 = phi float [ %14, %196 ], [ %343, %341 ]
  %326 = phi i32 [ 0, %196 ], [ %339, %341 ]
  %327 = call float @dx.op.dot3.f32(i32 55, float %325, float %324, float %323, float %262, float %263, float %264)  ; Dot3(ax,ay,az,bx,by,bz)
  %328 = call i32 @dx.op.legacyF32ToF16(i32 130, float %327)  ; LegacyF32ToF16(value)
  %329 = uitofp i32 %328 to float
  %330 = fsub fast float %329, %304
  %331 = fsub fast float %305, %304
  %332 = fdiv fast float %330, %331
  %333 = fmul fast float %332, 0x402DDDDD60000000
  %334 = fadd fast float %333, 0x3FE1110A20000000
  %335 = call float @dx.op.binary.f32(i32 35, float %334, float 0.000000e+00)  ; FMax(a,b)
  %336 = call float @dx.op.binary.f32(i32 36, float %335, float 1.500000e+01)  ; FMin(a,b)
  %337 = fptoui float %336 to i32
  %338 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i32 0, i32 %326
  store i32 %337, i32* %338, align 4, !tbaa !14, !noalias !18
  %339 = add nuw nsw i32 %326, 1
  %340 = icmp eq i32 %339, 16
  br i1 %340, label %348, label %341

; <label>:341                                     ; preds = %322
  %342 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 %339
  %343 = load float, float* %342, align 4
  %344 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 %339
  %345 = load float, float* %344, align 4
  %346 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 %339
  %347 = load float, float* %346, align 4
  br label %322

; <label>:348                                     ; preds = %322
  %349 = select i1 %300, float %281, float %272
  %350 = select i1 %300, float %271, float %280
  %351 = select i1 %300, float %273, float %282
  %352 = fmul fast float %301, 6.400000e+01
  %353 = fadd fast float %352, 3.200000e+01
  %354 = fmul fast float %349, 6.400000e+01
  %355 = fadd fast float %354, 3.200000e+01
  %356 = fmul fast float %302, 6.400000e+01
  %357 = fadd fast float %356, 3.200000e+01
  %358 = fmul fast float %350, 6.400000e+01
  %359 = fadd fast float %358, 3.200000e+01
  %360 = fmul fast float %303, 6.400000e+01
  %361 = fadd fast float %360, 3.200000e+01
  %362 = fmul fast float %351, 6.400000e+01
  %363 = fadd fast float %362, 3.200000e+01
  br label %364

; <label>:364                                     ; preds = %418, %348
  %365 = phi float [ %16, %348 ], [ %424, %418 ]
  %366 = phi float [ %15, %348 ], [ %422, %418 ]
  %367 = phi float [ %14, %348 ], [ %420, %418 ]
  %368 = phi i32 [ 0, %348 ], [ %416, %418 ]
  %369 = phi float [ 0.000000e+00, %348 ], [ %415, %418 ]
  %370 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i32 0, i32 %368
  %371 = load i32, i32* %370, align 4, !tbaa !14, !noalias !18
  %372 = uitofp i32 %371 to float
  %373 = fmul fast float %372, 0x4011111120000000
  %374 = fadd fast float %373, 5.000000e-01
  %375 = call float @dx.op.unary.f32(i32 27, float %374)  ; Round_ni(value)
  %376 = fsub fast float 6.400000e+01, %375
  %377 = fmul fast float %376, %353
  %378 = fmul fast float %376, %355
  %379 = fmul fast float %376, %357
  %380 = fmul fast float %375, %359
  %381 = fmul fast float %375, %361
  %382 = fmul fast float %375, %363
  %383 = fadd fast float %380, 3.200000e+01
  %384 = fadd fast float %383, %377
  %385 = fadd fast float %381, 3.200000e+01
  %386 = fadd fast float %385, %378
  %387 = fadd fast float %382, 3.200000e+01
  %388 = fadd fast float %387, %379
  %389 = fmul fast float %384, 0x3F7F000000000000
  %390 = fmul fast float %386, 0x3F7F000000000000
  %391 = fmul fast float %388, 0x3F7F000000000000
  %392 = fptoui float %389 to i32
  %393 = fptoui float %390 to i32
  %394 = fptoui float %391 to i32
  %395 = call float @dx.op.legacyF16ToF32(i32 131, i32 %392)  ; LegacyF16ToF32(value)
  %396 = call float @dx.op.legacyF16ToF32(i32 131, i32 %393)  ; LegacyF16ToF32(value)
  %397 = call float @dx.op.legacyF16ToF32(i32 131, i32 %394)  ; LegacyF16ToF32(value)
  %398 = fadd fast float %395, 1.000000e+00
  %399 = fadd fast float %396, 1.000000e+00
  %400 = fadd fast float %397, 1.000000e+00
  %401 = fadd fast float %367, 1.000000e+00
  %402 = fadd fast float %366, 1.000000e+00
  %403 = fadd fast float %365, 1.000000e+00
  %404 = fdiv fast float %398, %401
  %405 = fdiv fast float %399, %402
  %406 = fdiv fast float %400, %403
  %407 = call float @dx.op.unary.f32(i32 23, float %404)  ; Log(value)
  %408 = call float @dx.op.unary.f32(i32 23, float %405)  ; Log(value)
  %409 = call float @dx.op.unary.f32(i32 23, float %406)  ; Log(value)
  %410 = fmul fast float %407, %407
  %411 = fmul fast float %408, %408
  %412 = fmul fast float %409, %409
  %413 = fadd fast float %410, %369
  %414 = fadd fast float %413, %411
  %415 = fadd fast float %414, %412
  %416 = add nuw nsw i32 %368, 1
  %417 = icmp eq i32 %416, 16
  br i1 %417, label %425, label %418

; <label>:418                                     ; preds = %364
  %419 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 %416
  %420 = load float, float* %419, align 4
  %421 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 %416
  %422 = load float, float* %421, align 4
  %423 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 %416
  %424 = load float, float* %423, align 4
  br label %364

; <label>:425                                     ; preds = %364
  %426 = fptoui float %301 to i32
  %427 = shl i32 %426, 5
  %428 = fptoui float %349 to i32
  %429 = shl i32 %428, 15
  %430 = fptoui float %302 to i32
  %431 = shl i32 %430, 25
  %432 = or i32 %429, %427
  %433 = or i32 %432, %431
  %434 = or i32 %433, 3
  %435 = lshr i32 %430, 7
  %436 = fptoui float %350 to i32
  %437 = shl i32 %436, 3
  %438 = or i32 %435, %437
  %439 = fptoui float %303 to i32
  %440 = shl i32 %439, 13
  %441 = or i32 %438, %440
  %442 = fptoui float %351 to i32
  %443 = shl i32 %442, 23
  %444 = or i32 %441, %443
  %445 = lshr i32 %442, 9
  %446 = load i32, i32* %306, align 4, !tbaa !14, !noalias !18
  %447 = shl i32 %446, 1
  %448 = or i32 %447, %445
  %449 = load i32, i32* %307, align 4, !tbaa !14, !noalias !18
  %450 = shl i32 %449, 4
  %451 = or i32 %448, %450
  %452 = load i32, i32* %308, align 4, !tbaa !14, !noalias !18
  %453 = shl i32 %452, 8
  %454 = or i32 %451, %453
  %455 = load i32, i32* %309, align 4, !tbaa !14, !noalias !18
  %456 = shl i32 %455, 12
  %457 = or i32 %454, %456
  %458 = load i32, i32* %310, align 4, !tbaa !14, !noalias !18
  %459 = shl i32 %458, 16
  %460 = or i32 %457, %459
  %461 = load i32, i32* %311, align 4, !tbaa !14, !noalias !18
  %462 = shl i32 %461, 20
  %463 = or i32 %460, %462
  %464 = load i32, i32* %312, align 4, !tbaa !14, !noalias !18
  %465 = shl i32 %464, 24
  %466 = or i32 %463, %465
  %467 = load i32, i32* %313, align 4, !tbaa !14, !noalias !18
  %468 = shl i32 %467, 28
  %469 = or i32 %466, %468
  %470 = load i32, i32* %314, align 4, !tbaa !14, !noalias !18
  %471 = load i32, i32* %315, align 4, !tbaa !14, !noalias !18
  %472 = shl i32 %471, 4
  %473 = or i32 %472, %470
  %474 = load i32, i32* %316, align 4, !tbaa !14, !noalias !18
  %475 = shl i32 %474, 8
  %476 = or i32 %473, %475
  %477 = load i32, i32* %317, align 4, !tbaa !14, !noalias !18
  %478 = shl i32 %477, 12
  %479 = or i32 %476, %478
  %480 = load i32, i32* %318, align 4, !tbaa !14, !noalias !18
  %481 = shl i32 %480, 16
  %482 = or i32 %479, %481
  %483 = load i32, i32* %319, align 4, !tbaa !14, !noalias !18
  %484 = shl i32 %483, 20
  %485 = or i32 %482, %484
  %486 = load i32, i32* %320, align 4, !tbaa !14, !noalias !18
  %487 = shl i32 %486, 24
  %488 = or i32 %485, %487
  %489 = load i32, i32* %321, align 4, !tbaa !14, !noalias !18
  %490 = shl i32 %489, 28
  %491 = or i32 %488, %490
  br label %492

; <label>:492                                     ; preds = %1392, %425
  %493 = phi i32 [ %434, %425 ], [ %1393, %1392 ]
  %494 = phi i32 [ %444, %425 ], [ %1394, %1392 ]
  %495 = phi i32 [ %469, %425 ], [ %1395, %1392 ]
  %496 = phi i32 [ %491, %425 ], [ %1396, %1392 ]
  %497 = phi float [ %415, %425 ], [ %1397, %1392 ]
  %498 = phi i32 [ 0, %425 ], [ %1398, %1392 ]
  br label %499

; <label>:499                                     ; preds = %585, %492
  %500 = phi float [ %16, %492 ], [ %591, %585 ]
  %501 = phi float [ %15, %492 ], [ %589, %585 ]
  %502 = phi float [ %14, %492 ], [ %587, %585 ]
  %503 = phi float [ 6.550400e+04, %492 ], [ %571, %585 ]
  %504 = phi float [ 6.550400e+04, %492 ], [ %572, %585 ]
  %505 = phi float [ 6.550400e+04, %492 ], [ %573, %585 ]
  %506 = phi float [ 0.000000e+00, %492 ], [ %574, %585 ]
  %507 = phi float [ 0.000000e+00, %492 ], [ %575, %585 ]
  %508 = phi float [ 0.000000e+00, %492 ], [ %576, %585 ]
  %509 = phi float [ 6.550400e+04, %492 ], [ %577, %585 ]
  %510 = phi float [ 6.550400e+04, %492 ], [ %578, %585 ]
  %511 = phi float [ 6.550400e+04, %492 ], [ %579, %585 ]
  %512 = phi float [ 0.000000e+00, %492 ], [ %580, %585 ]
  %513 = phi float [ 0.000000e+00, %492 ], [ %581, %585 ]
  %514 = phi float [ 0.000000e+00, %492 ], [ %582, %585 ]
  %515 = phi i32 [ 0, %492 ], [ %583, %585 ]
  %516 = lshr i32 %498, 1
  %517 = shl nuw i32 %516, 1
  %518 = icmp eq i32 %516, 0
  %519 = select i1 %518, i32 -2004300596, i32 0
  %520 = icmp eq i32 %516, 1
  %521 = select i1 %520, i32 -322375954, i32 %519
  %522 = icmp eq i32 %516, 2
  %523 = select i1 %522, i32 -18036608, i32 %521
  %524 = icmp eq i32 %516, 3
  %525 = select i1 %524, i32 -327090488, i32 %523
  %526 = icmp eq i32 %516, 4
  %527 = select i1 %526, i32 -1259520, i32 %525
  %528 = icmp eq i32 %516, 5
  %529 = select i1 %528, i32 -402588032, i32 %527
  %530 = icmp eq i32 %516, 6
  %531 = select i1 %530, i32 -16711704, i32 %529
  %532 = icmp eq i32 %516, 7
  %533 = select i1 %532, i32 -268369936, i32 %531
  %534 = icmp eq i32 %516, 8
  %535 = select i1 %534, i32 9369360, i32 %533
  %536 = icmp eq i32 %516, 9
  %537 = select i1 %536, i32 147747072, i32 %535
  %538 = icmp eq i32 %516, 10
  %539 = select i1 %538, i32 1930428556, i32 %537
  %540 = icmp eq i32 %516, 11
  %541 = select i1 %540, i32 -1932644096, i32 %539
  %542 = icmp eq i32 %516, 12
  %543 = select i1 %542, i32 823134348, i32 %541
  %544 = icmp eq i32 %516, 13
  %545 = select i1 %544, i32 913073766, i32 %543
  %546 = icmp eq i32 %516, 14
  %547 = select i1 %546, i32 267393000, i32 %545
  %548 = icmp eq i32 %516, 15
  %549 = select i1 %548, i32 966553998, i32 %547
  %550 = icmp ne i32 %498, %517
  %551 = lshr i32 %549, 16
  %552 = select i1 %550, i32 %551, i32 %549
  %553 = shl i32 1, %515
  %554 = and i32 %553, %552
  %555 = icmp eq i32 %554, 0
  br i1 %555, label %556, label %563, !dx.controlflow.hints !23

; <label>:556                                     ; preds = %499
  %557 = call float @dx.op.binary.f32(i32 36, float %503, float %502)  ; FMin(a,b)
  %558 = call float @dx.op.binary.f32(i32 36, float %504, float %501)  ; FMin(a,b)
  %559 = call float @dx.op.binary.f32(i32 36, float %505, float %500)  ; FMin(a,b)
  %560 = call float @dx.op.binary.f32(i32 35, float %506, float %502)  ; FMax(a,b)
  %561 = call float @dx.op.binary.f32(i32 35, float %507, float %501)  ; FMax(a,b)
  %562 = call float @dx.op.binary.f32(i32 35, float %508, float %500)  ; FMax(a,b)
  br label %570

; <label>:563                                     ; preds = %499
  %564 = call float @dx.op.binary.f32(i32 36, float %509, float %502)  ; FMin(a,b)
  %565 = call float @dx.op.binary.f32(i32 36, float %510, float %501)  ; FMin(a,b)
  %566 = call float @dx.op.binary.f32(i32 36, float %511, float %500)  ; FMin(a,b)
  %567 = call float @dx.op.binary.f32(i32 35, float %512, float %502)  ; FMax(a,b)
  %568 = call float @dx.op.binary.f32(i32 35, float %513, float %501)  ; FMax(a,b)
  %569 = call float @dx.op.binary.f32(i32 35, float %514, float %500)  ; FMax(a,b)
  br label %570

; <label>:570                                     ; preds = %563, %556
  %571 = phi float [ %557, %556 ], [ %503, %563 ]
  %572 = phi float [ %558, %556 ], [ %504, %563 ]
  %573 = phi float [ %559, %556 ], [ %505, %563 ]
  %574 = phi float [ %560, %556 ], [ %506, %563 ]
  %575 = phi float [ %561, %556 ], [ %507, %563 ]
  %576 = phi float [ %562, %556 ], [ %508, %563 ]
  %577 = phi float [ %509, %556 ], [ %564, %563 ]
  %578 = phi float [ %510, %556 ], [ %565, %563 ]
  %579 = phi float [ %511, %556 ], [ %566, %563 ]
  %580 = phi float [ %512, %556 ], [ %567, %563 ]
  %581 = phi float [ %513, %556 ], [ %568, %563 ]
  %582 = phi float [ %514, %556 ], [ %569, %563 ]
  %583 = add nuw nsw i32 %515, 1
  %584 = icmp eq i32 %583, 16
  br i1 %584, label %592, label %585, !llvm.loop !24

; <label>:585                                     ; preds = %570
  %586 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 %583
  %587 = load float, float* %586, align 4
  %588 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 %583
  %589 = load float, float* %588, align 4
  %590 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 %583
  %591 = load float, float* %590, align 4
  br label %499

; <label>:592                                     ; preds = %570
  %593 = fsub fast float %574, %571
  %594 = fsub fast float %575, %572
  %595 = fsub fast float %576, %573
  %596 = fsub fast float %580, %577
  %597 = fsub fast float %581, %578
  %598 = fsub fast float %582, %579
  %599 = fadd fast float %594, %593
  %600 = fadd fast float %599, %595
  %601 = fdiv fast float %593, %600
  %602 = fdiv fast float %594, %600
  %603 = fdiv fast float %595, %600
  %604 = fadd fast float %597, %596
  %605 = fadd fast float %604, %598
  %606 = fdiv fast float %596, %605
  %607 = fdiv fast float %597, %605
  %608 = fdiv fast float %598, %605
  %609 = call float @dx.op.dot3.f32(i32 55, float %571, float %572, float %573, float %601, float %602, float %603)  ; Dot3(ax,ay,az,bx,by,bz)
  %610 = call i32 @dx.op.legacyF32ToF16(i32 130, float %609)  ; LegacyF32ToF16(value)
  %611 = uitofp i32 %610 to float
  %612 = call float @dx.op.dot3.f32(i32 55, float %574, float %575, float %576, float %601, float %602, float %603)  ; Dot3(ax,ay,az,bx,by,bz)
  %613 = call i32 @dx.op.legacyF32ToF16(i32 130, float %612)  ; LegacyF32ToF16(value)
  %614 = uitofp i32 %613 to float
  %615 = call float @dx.op.dot3.f32(i32 55, float %577, float %578, float %579, float %606, float %607, float %608)  ; Dot3(ax,ay,az,bx,by,bz)
  %616 = call i32 @dx.op.legacyF32ToF16(i32 130, float %615)  ; LegacyF32ToF16(value)
  %617 = uitofp i32 %616 to float
  %618 = call float @dx.op.dot3.f32(i32 55, float %580, float %581, float %582, float %606, float %607, float %608)  ; Dot3(ax,ay,az,bx,by,bz)
  %619 = call i32 @dx.op.legacyF32ToF16(i32 130, float %618)  ; LegacyF32ToF16(value)
  %620 = uitofp i32 %619 to float
  %621 = lshr i32 -853934080, %498
  %622 = and i32 %621, 1
  %623 = icmp ne i32 %622, 0
  %624 = select i1 %623, i32 2, i32 15
  %625 = lshr i32 845414400, %498
  %626 = and i32 %625, 1
  %627 = icmp ne i32 %626, 0
  %628 = select i1 %627, i32 8, i32 %624
  %629 = call float @dx.op.dot3.f32(i32 55, float %14, float %15, float %16, float %601, float %602, float %603)  ; Dot3(ax,ay,az,bx,by,bz)
  %630 = call i32 @dx.op.legacyF32ToF16(i32 130, float %629)  ; LegacyF32ToF16(value)
  %631 = uitofp i32 %630 to float
  %632 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 %628
  %633 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 %628
  %634 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 %628
  %635 = load float, float* %632, align 4
  %636 = load float, float* %633, align 4
  %637 = load float, float* %634, align 4
  %638 = call float @dx.op.dot3.f32(i32 55, float %635, float %636, float %637, float %606, float %607, float %608)  ; Dot3(ax,ay,az,bx,by,bz)
  %639 = call i32 @dx.op.legacyF32ToF16(i32 130, float %638)  ; LegacyF32ToF16(value)
  %640 = uitofp i32 %639 to float
  %641 = fsub fast float %631, %611
  %642 = fsub fast float %614, %611
  %643 = fdiv fast float %641, %642
  %644 = fmul fast float %643, 0x401BED6240000000
  %645 = fadd fast float %644, 0x3FE04A7720000000
  %646 = call float @dx.op.binary.f32(i32 35, float %645, float 0.000000e+00)  ; FMax(a,b)
  %647 = call float @dx.op.binary.f32(i32 36, float %646, float 7.000000e+00)  ; FMin(a,b)
  %648 = fptoui float %647 to i32
  %649 = fsub fast float %640, %617
  %650 = fsub fast float %620, %617
  %651 = fdiv fast float %649, %650
  %652 = fmul fast float %651, 0x401BED6240000000
  %653 = fadd fast float %652, 0x3FE04A7720000000
  %654 = call float @dx.op.binary.f32(i32 35, float %653, float 0.000000e+00)  ; FMax(a,b)
  %655 = call float @dx.op.binary.f32(i32 36, float %654, float 7.000000e+00)  ; FMin(a,b)
  %656 = fptoui float %655 to i32
  %657 = icmp ugt i32 %648, 3
  %658 = select i1 %657, float %574, float %571
  %659 = select i1 %657, float %576, float %573
  %660 = select i1 %657, float %572, float %575
  %661 = select i1 %657, float %614, float %611
  %662 = select i1 %657, float %611, float %614
  %663 = icmp ugt i32 %656, 3
  %664 = select i1 %663, float %580, float %577
  %665 = select i1 %663, float %582, float %579
  %666 = select i1 %663, float %578, float %581
  %667 = select i1 %663, float %620, float %617
  %668 = select i1 %663, float %617, float %620
  %669 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i32 0, i32 0
  store i32 0, i32* %669, align 4, !tbaa !14, !noalias !26
  %670 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i32 0, i32 1
  store i32 0, i32* %670, align 4, !tbaa !14, !noalias !26
  %671 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i32 0, i32 2
  store i32 0, i32* %671, align 4, !tbaa !14, !noalias !26
  %672 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i32 0, i32 3
  store i32 0, i32* %672, align 4, !tbaa !14, !noalias !26
  %673 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i32 0, i32 4
  store i32 0, i32* %673, align 4, !tbaa !14, !noalias !26
  %674 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i32 0, i32 5
  store i32 0, i32* %674, align 4, !tbaa !14, !noalias !26
  %675 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i32 0, i32 6
  store i32 0, i32* %675, align 4, !tbaa !14, !noalias !30
  %676 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i32 0, i32 7
  store i32 0, i32* %676, align 4, !tbaa !14, !noalias !30
  %677 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i32 0, i32 8
  store i32 0, i32* %677, align 4, !tbaa !14, !noalias !30
  %678 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i32 0, i32 9
  store i32 0, i32* %678, align 4, !tbaa !14, !noalias !30
  %679 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i32 0, i32 10
  store i32 0, i32* %679, align 4, !tbaa !14, !noalias !30
  %680 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i32 0, i32 11
  store i32 0, i32* %680, align 4, !tbaa !14, !noalias !30
  %681 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i32 0, i32 12
  store i32 0, i32* %681, align 4, !tbaa !14, !noalias !30
  %682 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i32 0, i32 13
  store i32 0, i32* %682, align 4, !tbaa !14, !noalias !30
  %683 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i32 0, i32 14
  store i32 0, i32* %683, align 4, !tbaa !14, !noalias !30
  %684 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i32 0, i32 15
  store i32 0, i32* %684, align 4, !tbaa !14, !noalias !30
  br label %685

; <label>:685                                     ; preds = %685, %592
  %686 = phi i32 [ 0, %592 ], [ %719, %685 ]
  %687 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 %686
  %688 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 %686
  %689 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 %686
  %690 = load float, float* %687, align 4
  %691 = load float, float* %688, align 4
  %692 = load float, float* %689, align 4
  %693 = call float @dx.op.dot3.f32(i32 55, float %690, float %691, float %692, float %601, float %602, float %603)  ; Dot3(ax,ay,az,bx,by,bz)
  %694 = call i32 @dx.op.legacyF32ToF16(i32 130, float %693)  ; LegacyF32ToF16(value)
  %695 = uitofp i32 %694 to float
  %696 = call float @dx.op.dot3.f32(i32 55, float %690, float %691, float %692, float %606, float %607, float %608)  ; Dot3(ax,ay,az,bx,by,bz)
  %697 = call i32 @dx.op.legacyF32ToF16(i32 130, float %696)  ; LegacyF32ToF16(value)
  %698 = uitofp i32 %697 to float
  %699 = fsub fast float %695, %661
  %700 = fsub fast float %662, %661
  %701 = fdiv fast float %699, %700
  %702 = fmul fast float %701, 0x401BED6240000000
  %703 = fadd fast float %702, 0x3FE04A7720000000
  %704 = call float @dx.op.binary.f32(i32 35, float %703, float 0.000000e+00)  ; FMax(a,b)
  %705 = call float @dx.op.binary.f32(i32 36, float %704, float 7.000000e+00)  ; FMin(a,b)
  %706 = fsub fast float %698, %667
  %707 = fsub fast float %668, %667
  %708 = fdiv fast float %706, %707
  %709 = fmul fast float %708, 0x401BED6240000000
  %710 = fadd fast float %709, 0x3FE04A7720000000
  %711 = call float @dx.op.binary.f32(i32 35, float %710, float 0.000000e+00)  ; FMax(a,b)
  %712 = call float @dx.op.binary.f32(i32 36, float %711, float 7.000000e+00)  ; FMin(a,b)
  %713 = shl i32 1, %686
  %714 = and i32 %713, %552
  %715 = icmp eq i32 %714, 0
  %716 = select i1 %715, float %705, float %712
  %717 = fptoui float %716 to i32
  %718 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i32 0, i32 %686
  store i32 %717, i32* %718, align 4, !tbaa !14, !noalias !26
  %719 = add nuw nsw i32 %686, 1
  %720 = icmp eq i32 %719, 16
  br i1 %720, label %721, label %685, !llvm.loop !31

; <label>:721                                     ; preds = %685
  %722 = select i1 %657, float %575, float %572
  %723 = select i1 %657, float %571, float %574
  %724 = select i1 %657, float %573, float %576
  %725 = select i1 %663, float %581, float %578
  %726 = select i1 %663, float %577, float %580
  %727 = select i1 %663, float %579, float %582
  %728 = call i32 @dx.op.legacyF32ToF16(i32 130, float %658)  ; LegacyF32ToF16(value)
  %729 = call i32 @dx.op.legacyF32ToF16(i32 130, float %722)  ; LegacyF32ToF16(value)
  %730 = call i32 @dx.op.legacyF32ToF16(i32 130, float %659)  ; LegacyF32ToF16(value)
  %731 = uitofp i32 %728 to float
  %732 = uitofp i32 %729 to float
  %733 = uitofp i32 %730 to float
  %734 = fmul fast float %731, 0x3F70842100000000
  %735 = fmul fast float %732, 0x3F70842100000000
  %736 = fmul fast float %733, 0x3F70842100000000
  %737 = call float @dx.op.unary.f32(i32 27, float %734)  ; Round_ni(value)
  %738 = call float @dx.op.unary.f32(i32 27, float %735)  ; Round_ni(value)
  %739 = call float @dx.op.unary.f32(i32 27, float %736)  ; Round_ni(value)
  %740 = call i32 @dx.op.legacyF32ToF16(i32 130, float %723)  ; LegacyF32ToF16(value)
  %741 = call i32 @dx.op.legacyF32ToF16(i32 130, float %660)  ; LegacyF32ToF16(value)
  %742 = call i32 @dx.op.legacyF32ToF16(i32 130, float %724)  ; LegacyF32ToF16(value)
  %743 = uitofp i32 %740 to float
  %744 = uitofp i32 %741 to float
  %745 = uitofp i32 %742 to float
  %746 = fmul fast float %743, 0x3F70842100000000
  %747 = fmul fast float %744, 0x3F70842100000000
  %748 = fmul fast float %745, 0x3F70842100000000
  %749 = call float @dx.op.unary.f32(i32 27, float %746)  ; Round_ni(value)
  %750 = call float @dx.op.unary.f32(i32 27, float %747)  ; Round_ni(value)
  %751 = call float @dx.op.unary.f32(i32 27, float %748)  ; Round_ni(value)
  %752 = call i32 @dx.op.legacyF32ToF16(i32 130, float %664)  ; LegacyF32ToF16(value)
  %753 = call i32 @dx.op.legacyF32ToF16(i32 130, float %725)  ; LegacyF32ToF16(value)
  %754 = call i32 @dx.op.legacyF32ToF16(i32 130, float %665)  ; LegacyF32ToF16(value)
  %755 = uitofp i32 %752 to float
  %756 = uitofp i32 %753 to float
  %757 = uitofp i32 %754 to float
  %758 = fmul fast float %755, 0x3F70842100000000
  %759 = fmul fast float %756, 0x3F70842100000000
  %760 = fmul fast float %757, 0x3F70842100000000
  %761 = call float @dx.op.unary.f32(i32 27, float %758)  ; Round_ni(value)
  %762 = call float @dx.op.unary.f32(i32 27, float %759)  ; Round_ni(value)
  %763 = call float @dx.op.unary.f32(i32 27, float %760)  ; Round_ni(value)
  %764 = call i32 @dx.op.legacyF32ToF16(i32 130, float %726)  ; LegacyF32ToF16(value)
  %765 = call i32 @dx.op.legacyF32ToF16(i32 130, float %666)  ; LegacyF32ToF16(value)
  %766 = call i32 @dx.op.legacyF32ToF16(i32 130, float %727)  ; LegacyF32ToF16(value)
  %767 = uitofp i32 %764 to float
  %768 = uitofp i32 %765 to float
  %769 = uitofp i32 %766 to float
  %770 = fmul fast float %767, 0x3F70842100000000
  %771 = fmul fast float %768, 0x3F70842100000000
  %772 = fmul fast float %769, 0x3F70842100000000
  %773 = call float @dx.op.unary.f32(i32 27, float %770)  ; Round_ni(value)
  %774 = call float @dx.op.unary.f32(i32 27, float %771)  ; Round_ni(value)
  %775 = call float @dx.op.unary.f32(i32 27, float %772)  ; Round_ni(value)
  %776 = fmul fast float %731, 0x3F90842100000000
  %777 = fmul fast float %732, 0x3F90842100000000
  %778 = fmul fast float %733, 0x3F90842100000000
  %779 = call float @dx.op.unary.f32(i32 27, float %776)  ; Round_ni(value)
  %780 = call float @dx.op.unary.f32(i32 27, float %777)  ; Round_ni(value)
  %781 = call float @dx.op.unary.f32(i32 27, float %778)  ; Round_ni(value)
  %782 = fmul fast float %743, 0x3F90842100000000
  %783 = fmul fast float %744, 0x3F90842100000000
  %784 = fmul fast float %745, 0x3F90842100000000
  %785 = call float @dx.op.unary.f32(i32 27, float %782)  ; Round_ni(value)
  %786 = call float @dx.op.unary.f32(i32 27, float %783)  ; Round_ni(value)
  %787 = call float @dx.op.unary.f32(i32 27, float %784)  ; Round_ni(value)
  %788 = fmul fast float %755, 0x3F90842100000000
  %789 = fmul fast float %756, 0x3F90842100000000
  %790 = fmul fast float %757, 0x3F90842100000000
  %791 = call float @dx.op.unary.f32(i32 27, float %788)  ; Round_ni(value)
  %792 = call float @dx.op.unary.f32(i32 27, float %789)  ; Round_ni(value)
  %793 = call float @dx.op.unary.f32(i32 27, float %790)  ; Round_ni(value)
  %794 = fmul fast float %767, 0x3F90842100000000
  %795 = fmul fast float %768, 0x3F90842100000000
  %796 = fmul fast float %769, 0x3F90842100000000
  %797 = call float @dx.op.unary.f32(i32 27, float %794)  ; Round_ni(value)
  %798 = call float @dx.op.unary.f32(i32 27, float %795)  ; Round_ni(value)
  %799 = call float @dx.op.unary.f32(i32 27, float %796)  ; Round_ni(value)
  %800 = fsub fast float %749, %737
  %801 = fsub fast float %750, %738
  %802 = fsub fast float %751, %739
  %803 = fsub fast float %761, %737
  %804 = fsub fast float %762, %738
  %805 = fsub fast float %763, %739
  %806 = fsub fast float %773, %737
  %807 = fsub fast float %774, %738
  %808 = fsub fast float %775, %739
  %809 = fsub fast float %785, %779
  %810 = fsub fast float %786, %780
  %811 = fsub fast float %787, %781
  %812 = fsub fast float %791, %779
  %813 = fsub fast float %792, %780
  %814 = fsub fast float %793, %781
  %815 = fsub fast float %797, %779
  %816 = fsub fast float %798, %780
  %817 = fsub fast float %799, %781
  %818 = call float @dx.op.binary.f32(i32 35, float %800, float -3.100000e+01)  ; FMax(a,b)
  %819 = call float @dx.op.binary.f32(i32 35, float %801, float -3.100000e+01)  ; FMax(a,b)
  %820 = call float @dx.op.binary.f32(i32 35, float %802, float -3.100000e+01)  ; FMax(a,b)
  %821 = call float @dx.op.binary.f32(i32 36, float %818, float 3.100000e+01)  ; FMin(a,b)
  %822 = call float @dx.op.binary.f32(i32 36, float %819, float 3.100000e+01)  ; FMin(a,b)
  %823 = call float @dx.op.binary.f32(i32 36, float %820, float 3.100000e+01)  ; FMin(a,b)
  %824 = call float @dx.op.binary.f32(i32 35, float %803, float -3.100000e+01)  ; FMax(a,b)
  %825 = call float @dx.op.binary.f32(i32 35, float %804, float -3.100000e+01)  ; FMax(a,b)
  %826 = call float @dx.op.binary.f32(i32 35, float %805, float -3.100000e+01)  ; FMax(a,b)
  %827 = call float @dx.op.binary.f32(i32 36, float %824, float 3.100000e+01)  ; FMin(a,b)
  %828 = call float @dx.op.binary.f32(i32 36, float %825, float 3.100000e+01)  ; FMin(a,b)
  %829 = call float @dx.op.binary.f32(i32 36, float %826, float 3.100000e+01)  ; FMin(a,b)
  %830 = call float @dx.op.binary.f32(i32 35, float %806, float -3.100000e+01)  ; FMax(a,b)
  %831 = call float @dx.op.binary.f32(i32 35, float %807, float -3.100000e+01)  ; FMax(a,b)
  %832 = call float @dx.op.binary.f32(i32 35, float %808, float -3.100000e+01)  ; FMax(a,b)
  %833 = call float @dx.op.binary.f32(i32 36, float %830, float 3.100000e+01)  ; FMin(a,b)
  %834 = call float @dx.op.binary.f32(i32 36, float %831, float 3.100000e+01)  ; FMin(a,b)
  %835 = call float @dx.op.binary.f32(i32 36, float %832, float 3.100000e+01)  ; FMin(a,b)
  %836 = call float @dx.op.binary.f32(i32 35, float %809, float -1.500000e+01)  ; FMax(a,b)
  %837 = call float @dx.op.binary.f32(i32 35, float %810, float -1.500000e+01)  ; FMax(a,b)
  %838 = call float @dx.op.binary.f32(i32 35, float %811, float -1.500000e+01)  ; FMax(a,b)
  %839 = call float @dx.op.binary.f32(i32 36, float %836, float 1.500000e+01)  ; FMin(a,b)
  %840 = call float @dx.op.binary.f32(i32 36, float %837, float 1.500000e+01)  ; FMin(a,b)
  %841 = call float @dx.op.binary.f32(i32 36, float %838, float 1.500000e+01)  ; FMin(a,b)
  %842 = call float @dx.op.binary.f32(i32 35, float %812, float -1.500000e+01)  ; FMax(a,b)
  %843 = call float @dx.op.binary.f32(i32 35, float %813, float -1.500000e+01)  ; FMax(a,b)
  %844 = call float @dx.op.binary.f32(i32 35, float %814, float -1.500000e+01)  ; FMax(a,b)
  %845 = call float @dx.op.binary.f32(i32 36, float %842, float 1.500000e+01)  ; FMin(a,b)
  %846 = call float @dx.op.binary.f32(i32 36, float %843, float 1.500000e+01)  ; FMin(a,b)
  %847 = call float @dx.op.binary.f32(i32 36, float %844, float 1.500000e+01)  ; FMin(a,b)
  %848 = call float @dx.op.binary.f32(i32 35, float %815, float -1.500000e+01)  ; FMax(a,b)
  %849 = call float @dx.op.binary.f32(i32 35, float %816, float -1.500000e+01)  ; FMax(a,b)
  %850 = call float @dx.op.binary.f32(i32 35, float %817, float -1.500000e+01)  ; FMax(a,b)
  %851 = call float @dx.op.binary.f32(i32 36, float %848, float 1.500000e+01)  ; FMin(a,b)
  %852 = call float @dx.op.binary.f32(i32 36, float %849, float 1.500000e+01)  ; FMin(a,b)
  %853 = call float @dx.op.binary.f32(i32 36, float %850, float 1.500000e+01)  ; FMin(a,b)
  %854 = fadd fast float %827, %737
  %855 = fadd fast float %828, %738
  %856 = fadd fast float %829, %739
  %857 = fadd fast float %845, %779
  %858 = fadd fast float %846, %780
  %859 = fadd fast float %847, %781
  br label %860

; <label>:860                                     ; preds = %860, %721
  %861 = phi i32 [ 0, %721 ], [ %997, %860 ]
  %862 = phi float [ 0.000000e+00, %721 ], [ %981, %860 ]
  %863 = phi float [ 0.000000e+00, %721 ], [ %996, %860 ]
  %864 = shl i32 1, %861
  %865 = and i32 %552, %864
  %866 = icmp eq i32 %865, 0
  %867 = select i1 %866, float %737, float %854
  %868 = fmul float %867, 5.120000e+02
  %869 = fadd float %868, 2.560000e+02
  %870 = select i1 %866, float %738, float %855
  %871 = fmul float %870, 5.120000e+02
  %872 = fadd float %871, 2.560000e+02
  %873 = select i1 %866, float %739, float %856
  %874 = fmul float %873, 5.120000e+02
  %875 = fadd float %874, 2.560000e+02
  %876 = select i1 %866, float %821, float %833
  %877 = fadd float %737, %876
  %878 = fmul float %877, 5.120000e+02
  %879 = fadd float %878, 2.560000e+02
  %880 = select i1 %866, float %822, float %834
  %881 = fadd float %738, %880
  %882 = fmul float %881, 5.120000e+02
  %883 = fadd float %882, 2.560000e+02
  %884 = select i1 %866, float %823, float %835
  %885 = fadd float %739, %884
  %886 = fmul float %885, 5.120000e+02
  %887 = fadd float %886, 2.560000e+02
  %888 = select i1 %866, float %779, float %857
  %889 = fmul float %888, 1.280000e+02
  %890 = fadd float %889, 6.400000e+01
  %891 = select i1 %866, float %780, float %858
  %892 = fmul float %891, 1.280000e+02
  %893 = fadd float %892, 6.400000e+01
  %894 = select i1 %866, float %781, float %859
  %895 = fmul float %894, 1.280000e+02
  %896 = fadd float %895, 6.400000e+01
  %897 = select i1 %866, float %839, float %851
  %898 = fadd float %779, %897
  %899 = fmul float %898, 1.280000e+02
  %900 = fadd float %899, 6.400000e+01
  %901 = select i1 %866, float %840, float %852
  %902 = fadd float %780, %901
  %903 = fmul float %902, 1.280000e+02
  %904 = fadd float %903, 6.400000e+01
  %905 = select i1 %866, float %841, float %853
  %906 = fadd float %781, %905
  %907 = fmul float %906, 1.280000e+02
  %908 = fadd float %907, 6.400000e+01
  %909 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i32 0, i32 %861
  %910 = load i32, i32* %909, align 4, !tbaa !14, !noalias !26
  %911 = uitofp i32 %910 to float
  %912 = fmul fast float %911, 0x40224924A0000000
  %913 = fadd fast float %912, 5.000000e-01
  %914 = call float @dx.op.unary.f32(i32 27, float %913)  ; Round_ni(value)
  %915 = fsub fast float 6.400000e+01, %914
  %916 = fmul fast float %869, %915
  %917 = fmul fast float %872, %915
  %918 = fmul fast float %875, %915
  %919 = fmul fast float %879, %914
  %920 = fmul fast float %883, %914
  %921 = fmul fast float %887, %914
  %922 = fadd fast float %916, 3.200000e+01
  %923 = fadd fast float %922, %919
  %924 = fadd fast float %917, 3.200000e+01
  %925 = fadd fast float %924, %920
  %926 = fadd fast float %918, 3.200000e+01
  %927 = fadd fast float %926, %921
  %928 = fmul fast float %923, 0x3F7F000000000000
  %929 = fmul fast float %925, 0x3F7F000000000000
  %930 = fmul fast float %927, 0x3F7F000000000000
  %931 = fptoui float %928 to i32
  %932 = fptoui float %929 to i32
  %933 = fptoui float %930 to i32
  %934 = call float @dx.op.legacyF16ToF32(i32 131, i32 %931)  ; LegacyF16ToF32(value)
  %935 = call float @dx.op.legacyF16ToF32(i32 131, i32 %932)  ; LegacyF16ToF32(value)
  %936 = call float @dx.op.legacyF16ToF32(i32 131, i32 %933)  ; LegacyF16ToF32(value)
  %937 = fmul fast float %890, %915
  %938 = fmul fast float %893, %915
  %939 = fmul fast float %896, %915
  %940 = fmul fast float %900, %914
  %941 = fmul fast float %904, %914
  %942 = fmul fast float %908, %914
  %943 = fadd fast float %937, 3.200000e+01
  %944 = fadd fast float %943, %940
  %945 = fadd fast float %938, 3.200000e+01
  %946 = fadd fast float %945, %941
  %947 = fadd fast float %939, 3.200000e+01
  %948 = fadd fast float %947, %942
  %949 = fmul fast float %944, 0x3F7F000000000000
  %950 = fmul fast float %946, 0x3F7F000000000000
  %951 = fmul fast float %948, 0x3F7F000000000000
  %952 = fptoui float %949 to i32
  %953 = fptoui float %950 to i32
  %954 = fptoui float %951 to i32
  %955 = call float @dx.op.legacyF16ToF32(i32 131, i32 %952)  ; LegacyF16ToF32(value)
  %956 = call float @dx.op.legacyF16ToF32(i32 131, i32 %953)  ; LegacyF16ToF32(value)
  %957 = call float @dx.op.legacyF16ToF32(i32 131, i32 %954)  ; LegacyF16ToF32(value)
  %958 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 %861
  %959 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 %861
  %960 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 %861
  %961 = load float, float* %958, align 4
  %962 = load float, float* %959, align 4
  %963 = load float, float* %960, align 4
  %964 = fadd fast float %934, 1.000000e+00
  %965 = fadd fast float %935, 1.000000e+00
  %966 = fadd fast float %936, 1.000000e+00
  %967 = fadd fast float %961, 1.000000e+00
  %968 = fadd fast float %962, 1.000000e+00
  %969 = fadd fast float %963, 1.000000e+00
  %970 = fdiv fast float %964, %967
  %971 = fdiv fast float %965, %968
  %972 = fdiv fast float %966, %969
  %973 = call float @dx.op.unary.f32(i32 23, float %970)  ; Log(value)
  %974 = call float @dx.op.unary.f32(i32 23, float %971)  ; Log(value)
  %975 = call float @dx.op.unary.f32(i32 23, float %972)  ; Log(value)
  %976 = fmul fast float %973, %973
  %977 = fmul fast float %974, %974
  %978 = fmul fast float %975, %975
  %979 = fadd fast float %976, %862
  %980 = fadd fast float %979, %977
  %981 = fadd fast float %980, %978
  %982 = fadd fast float %955, 1.000000e+00
  %983 = fadd fast float %956, 1.000000e+00
  %984 = fadd fast float %957, 1.000000e+00
  %985 = fdiv fast float %982, %967
  %986 = fdiv fast float %983, %968
  %987 = fdiv fast float %984, %969
  %988 = call float @dx.op.unary.f32(i32 23, float %985)  ; Log(value)
  %989 = call float @dx.op.unary.f32(i32 23, float %986)  ; Log(value)
  %990 = call float @dx.op.unary.f32(i32 23, float %987)  ; Log(value)
  %991 = fmul fast float %988, %988
  %992 = fmul fast float %989, %989
  %993 = fmul fast float %990, %990
  %994 = fadd fast float %991, %863
  %995 = fadd fast float %994, %992
  %996 = fadd fast float %995, %993
  %997 = add nuw nsw i32 %861, 1
  %998 = icmp eq i32 %997, 16
  br i1 %998, label %999, label %860, !llvm.loop !32

; <label>:999                                     ; preds = %860
  %1000 = fptosi float %821 to i32
  %1001 = fptosi float %822 to i32
  %1002 = fptosi float %823 to i32
  %1003 = and i32 %1000, 31
  %1004 = ashr i32 %1000, 31
  %1005 = and i32 %1004, 32
  %1006 = or i32 %1005, %1003
  %1007 = and i32 %1001, 31
  %1008 = ashr i32 %1001, 31
  %1009 = and i32 %1008, 32
  %1010 = or i32 %1009, %1007
  %1011 = and i32 %1002, 31
  %1012 = ashr i32 %1002, 31
  %1013 = and i32 %1012, 32
  %1014 = or i32 %1013, %1011
  %1015 = sitofp i32 %1006 to float
  %1016 = sitofp i32 %1010 to float
  %1017 = sitofp i32 %1014 to float
  %1018 = fptosi float %827 to i32
  %1019 = fptosi float %828 to i32
  %1020 = fptosi float %829 to i32
  %1021 = and i32 %1018, 31
  %1022 = ashr i32 %1018, 31
  %1023 = and i32 %1022, 32
  %1024 = or i32 %1023, %1021
  %1025 = and i32 %1019, 31
  %1026 = ashr i32 %1019, 31
  %1027 = and i32 %1026, 32
  %1028 = or i32 %1027, %1025
  %1029 = and i32 %1020, 31
  %1030 = ashr i32 %1020, 31
  %1031 = and i32 %1030, 32
  %1032 = or i32 %1031, %1029
  %1033 = sitofp i32 %1024 to float
  %1034 = sitofp i32 %1028 to float
  %1035 = sitofp i32 %1032 to float
  %1036 = fptosi float %833 to i32
  %1037 = fptosi float %834 to i32
  %1038 = fptosi float %835 to i32
  %1039 = and i32 %1036, 31
  %1040 = ashr i32 %1036, 31
  %1041 = and i32 %1040, 32
  %1042 = or i32 %1041, %1039
  %1043 = and i32 %1037, 31
  %1044 = ashr i32 %1037, 31
  %1045 = and i32 %1044, 32
  %1046 = or i32 %1045, %1043
  %1047 = and i32 %1038, 31
  %1048 = ashr i32 %1038, 31
  %1049 = and i32 %1048, 32
  %1050 = or i32 %1049, %1047
  %1051 = sitofp i32 %1042 to float
  %1052 = sitofp i32 %1046 to float
  %1053 = sitofp i32 %1050 to float
  %1054 = fptosi float %839 to i32
  %1055 = fptosi float %840 to i32
  %1056 = fptosi float %841 to i32
  %1057 = and i32 %1054, 15
  %1058 = ashr i32 %1054, 31
  %1059 = and i32 %1058, 16
  %1060 = or i32 %1059, %1057
  %1061 = and i32 %1055, 15
  %1062 = ashr i32 %1055, 31
  %1063 = and i32 %1062, 16
  %1064 = or i32 %1063, %1061
  %1065 = and i32 %1056, 15
  %1066 = ashr i32 %1056, 31
  %1067 = and i32 %1066, 16
  %1068 = or i32 %1067, %1065
  %1069 = sitofp i32 %1060 to float
  %1070 = sitofp i32 %1064 to float
  %1071 = sitofp i32 %1068 to float
  %1072 = fptosi float %845 to i32
  %1073 = fptosi float %846 to i32
  %1074 = fptosi float %847 to i32
  %1075 = and i32 %1072, 15
  %1076 = ashr i32 %1072, 31
  %1077 = and i32 %1076, 16
  %1078 = or i32 %1077, %1075
  %1079 = and i32 %1073, 15
  %1080 = ashr i32 %1073, 31
  %1081 = and i32 %1080, 16
  %1082 = or i32 %1081, %1079
  %1083 = and i32 %1074, 15
  %1084 = ashr i32 %1074, 31
  %1085 = and i32 %1084, 16
  %1086 = or i32 %1085, %1083
  %1087 = sitofp i32 %1078 to float
  %1088 = sitofp i32 %1082 to float
  %1089 = sitofp i32 %1086 to float
  %1090 = fptosi float %851 to i32
  %1091 = fptosi float %852 to i32
  %1092 = fptosi float %853 to i32
  %1093 = and i32 %1090, 15
  %1094 = ashr i32 %1090, 31
  %1095 = and i32 %1094, 16
  %1096 = or i32 %1095, %1093
  %1097 = and i32 %1091, 15
  %1098 = ashr i32 %1091, 31
  %1099 = and i32 %1098, 16
  %1100 = or i32 %1099, %1097
  %1101 = and i32 %1092, 15
  %1102 = ashr i32 %1092, 31
  %1103 = and i32 %1102, 16
  %1104 = or i32 %1103, %1101
  %1105 = sitofp i32 %1096 to float
  %1106 = sitofp i32 %1100 to float
  %1107 = sitofp i32 %1104 to float
  %1108 = call float @dx.op.binary.f32(i32 36, float %981, float %996)  ; FMin(a,b)
  %1109 = fcmp fast olt float %1108, %497
  br i1 %1109, label %1110, label %1392, !dx.controlflow.hints !33

; <label>:1110                                    ; preds = %999
  %1111 = fcmp fast oeq float %1108, %981
  br i1 %1111, label %1112, label %1184, !dx.controlflow.hints !34

; <label>:1112                                    ; preds = %1110
  %1113 = fptoui float %1034 to i32
  %1114 = lshr i32 %1113, 3
  %1115 = and i32 %1114, 4
  %1116 = fptoui float %1052 to i32
  %1117 = lshr i32 %1116, 1
  %1118 = and i32 %1117, 8
  %1119 = and i32 %1117, 16
  %1120 = fptoui float %737 to i32
  %1121 = shl i32 %1120, 5
  %1122 = fptoui float %1053 to i32
  %1123 = shl i32 %1122, 12
  %1124 = and i32 %1123, 4096
  %1125 = and i32 %1123, 8192
  %1126 = fptoui float %1035 to i32
  %1127 = shl i32 %1126, 10
  %1128 = and i32 %1127, 16384
  %1129 = fptoui float %738 to i32
  %1130 = shl i32 %1129, 15
  %1131 = shl i32 %1126, 17
  %1132 = and i32 %1131, 4194304
  %1133 = shl i32 %1122, 21
  %1134 = and i32 %1133, 8388608
  %1135 = shl i32 %1113, 20
  %1136 = and i32 %1135, 16777216
  %1137 = fptoui float %739 to i32
  %1138 = shl i32 %1137, 25
  %1139 = or i32 %1121, %1130
  %1140 = or i32 %1139, %1138
  %1141 = or i32 %1140, %1115
  %1142 = or i32 %1141, %1136
  %1143 = or i32 %1142, %1128
  %1144 = or i32 %1143, %1132
  %1145 = or i32 %1144, %1118
  %1146 = or i32 %1145, %1119
  %1147 = or i32 %1146, %1124
  %1148 = or i32 %1147, %1125
  %1149 = or i32 %1148, %1134
  %1150 = or i32 %1149, 1
  %1151 = lshr i32 %1122, 3
  %1152 = and i32 %1151, 1
  %1153 = lshr i32 %1122, 4
  %1154 = and i32 %1153, 2
  %1155 = lshr i32 %1122, 2
  %1156 = and i32 %1155, 4
  %1157 = fptoui float %1015 to i32
  %1158 = shl i32 %1157, 3
  %1159 = shl i32 %1113, 9
  %1160 = and i32 %1159, 7680
  %1161 = fptoui float %1016 to i32
  %1162 = shl i32 %1161, 13
  %1163 = shl i32 %1116, 19
  %1164 = and i32 %1163, 7864320
  %1165 = fptoui float %1017 to i32
  %1166 = shl i32 %1165, 23
  %1167 = shl i32 %1126, 29
  %1168 = or i32 %1162, %1158
  %1169 = or i32 %1168, %1166
  %1170 = or i32 %1169, %1160
  %1171 = or i32 %1170, %1167
  %1172 = or i32 %1171, %1164
  %1173 = or i32 %1172, %1154
  %1174 = or i32 %1173, %1152
  %1175 = or i32 %1174, %1156
  %1176 = lshr i32 %1126, 3
  %1177 = and i32 %1176, 1
  %1178 = fptoui float %1033 to i32
  %1179 = shl i32 %1178, 1
  %1180 = or i32 %1177, %1179
  %1181 = fptoui float %1051 to i32
  %1182 = shl i32 %1181, 7
  %1183 = or i32 %1180, %1182
  br label %1248

; <label>:1184                                    ; preds = %1110
  %1185 = fptoui float %779 to i32
  %1186 = shl i32 %1185, 5
  %1187 = fptoui float %1089 to i32
  %1188 = shl i32 %1187, 10
  %1189 = and i32 %1188, 16384
  %1190 = fptoui float %780 to i32
  %1191 = shl i32 %1190, 15
  %1192 = fptoui float %1088 to i32
  %1193 = shl i32 %1192, 20
  %1194 = and i32 %1193, 16777216
  %1195 = fptoui float %781 to i32
  %1196 = shl i32 %1195, 25
  %1197 = or i32 %1186, %1191
  %1198 = or i32 %1197, %1196
  %1199 = or i32 %1198, %1194
  %1200 = or i32 %1199, %1189
  %1201 = or i32 %1200, 14
  %1202 = lshr i32 %1195, 7
  %1203 = fptoui float %1107 to i32
  %1204 = lshr i32 %1203, 2
  %1205 = and i32 %1204, 4
  %1206 = fptoui float %1069 to i32
  %1207 = shl i32 %1206, 3
  %1208 = fptoui float %1106 to i32
  %1209 = shl i32 %1208, 4
  %1210 = and i32 %1209, 256
  %1211 = shl i32 %1192, 9
  %1212 = and i32 %1211, 7680
  %1213 = fptoui float %1070 to i32
  %1214 = shl i32 %1213, 13
  %1215 = shl i32 %1203, 18
  %1216 = and i32 %1215, 262144
  %1217 = shl i32 %1208, 19
  %1218 = and i32 %1217, 7864320
  %1219 = fptoui float %1071 to i32
  %1220 = shl i32 %1219, 23
  %1221 = shl i32 %1203, 27
  %1222 = and i32 %1221, 268435456
  %1223 = shl i32 %1187, 29
  %1224 = or i32 %1207, %1202
  %1225 = or i32 %1224, %1214
  %1226 = or i32 %1225, %1220
  %1227 = or i32 %1226, %1212
  %1228 = or i32 %1227, %1223
  %1229 = or i32 %1228, %1210
  %1230 = or i32 %1229, %1218
  %1231 = or i32 %1230, %1205
  %1232 = or i32 %1231, %1216
  %1233 = or i32 %1232, %1222
  %1234 = lshr i32 %1187, 3
  %1235 = and i32 %1234, 1
  %1236 = fptoui float %1087 to i32
  %1237 = shl i32 %1236, 1
  %1238 = or i32 %1235, %1237
  %1239 = shl i32 %1203, 4
  %1240 = and i32 %1239, 64
  %1241 = fptoui float %1105 to i32
  %1242 = shl i32 %1241, 7
  %1243 = shl i32 %1203, 9
  %1244 = and i32 %1243, 4096
  %1245 = or i32 %1238, %1242
  %1246 = or i32 %1245, %1240
  %1247 = or i32 %1246, %1244
  br label %1248

; <label>:1248                                    ; preds = %1184, %1112
  %1249 = phi i32 [ %1150, %1112 ], [ %1201, %1184 ]
  %1250 = phi i32 [ %1175, %1112 ], [ %1233, %1184 ]
  %1251 = phi i32 [ %1183, %1112 ], [ %1247, %1184 ]
  %1252 = shl i32 %498, 13
  %1253 = or i32 %1251, %1252
  %1254 = icmp eq i32 %628, 15
  br i1 %1254, label %1255, label %1302, !dx.controlflow.hints !35

; <label>:1255                                    ; preds = %1248
  %1256 = load i32, i32* %669, align 4, !tbaa !14, !noalias !26
  %1257 = shl i32 %1256, 18
  %1258 = or i32 %1257, %1253
  %1259 = load i32, i32* %670, align 4, !tbaa !14, !noalias !26
  %1260 = shl i32 %1259, 20
  %1261 = or i32 %1258, %1260
  %1262 = load i32, i32* %671, align 4, !tbaa !14, !noalias !26
  %1263 = shl i32 %1262, 23
  %1264 = or i32 %1261, %1263
  %1265 = load i32, i32* %672, align 4, !tbaa !14, !noalias !26
  %1266 = shl i32 %1265, 26
  %1267 = or i32 %1264, %1266
  %1268 = load i32, i32* %673, align 4, !tbaa !14, !noalias !26
  %1269 = shl i32 %1268, 29
  %1270 = or i32 %1267, %1269
  %1271 = load i32, i32* %674, align 4, !tbaa !14, !noalias !26
  %1272 = load i32, i32* %675, align 4, !tbaa !14, !noalias !26
  %1273 = shl i32 %1272, 3
  %1274 = or i32 %1273, %1271
  %1275 = load i32, i32* %676, align 4, !tbaa !14, !noalias !26
  %1276 = shl i32 %1275, 6
  %1277 = or i32 %1274, %1276
  %1278 = load i32, i32* %677, align 4, !tbaa !14, !noalias !26
  %1279 = shl i32 %1278, 9
  %1280 = or i32 %1277, %1279
  %1281 = load i32, i32* %678, align 4, !tbaa !14, !noalias !26
  %1282 = shl i32 %1281, 12
  %1283 = or i32 %1280, %1282
  %1284 = load i32, i32* %679, align 4, !tbaa !14, !noalias !26
  %1285 = shl i32 %1284, 15
  %1286 = or i32 %1283, %1285
  %1287 = load i32, i32* %680, align 4, !tbaa !14, !noalias !26
  %1288 = shl i32 %1287, 18
  %1289 = or i32 %1286, %1288
  %1290 = load i32, i32* %681, align 4, !tbaa !14, !noalias !26
  %1291 = shl i32 %1290, 21
  %1292 = or i32 %1289, %1291
  %1293 = load i32, i32* %682, align 4, !tbaa !14, !noalias !26
  %1294 = shl i32 %1293, 24
  %1295 = or i32 %1292, %1294
  %1296 = load i32, i32* %683, align 4, !tbaa !14, !noalias !26
  %1297 = shl i32 %1296, 27
  %1298 = or i32 %1295, %1297
  %1299 = load i32, i32* %684, align 4, !tbaa !14, !noalias !26
  %1300 = shl i32 %1299, 30
  %1301 = or i32 %1298, %1300
  br label %1392

; <label>:1302                                    ; preds = %1248
  %1303 = icmp eq i32 %628, 2
  %1304 = load i32, i32* %669, align 4
  %1305 = load i32, i32* %670, align 4
  %1306 = load i32, i32* %671, align 4
  %1307 = shl i32 %1304, 18
  %1308 = or i32 %1307, %1253
  %1309 = shl i32 %1305, 20
  %1310 = or i32 %1308, %1309
  %1311 = shl i32 %1306, 23
  %1312 = or i32 %1310, %1311
  br i1 %1303, label %1313, label %1354, !dx.controlflow.hints !36

; <label>:1313                                    ; preds = %1302
  %1314 = load i32, i32* %672, align 4, !tbaa !14, !noalias !26
  %1315 = shl i32 %1314, 25
  %1316 = or i32 %1312, %1315
  %1317 = load i32, i32* %673, align 4, !tbaa !14, !noalias !26
  %1318 = shl i32 %1317, 28
  %1319 = or i32 %1316, %1318
  %1320 = load i32, i32* %674, align 4, !tbaa !14, !noalias !26
  %1321 = shl i32 %1320, 31
  %1322 = or i32 %1319, %1321
  %1323 = lshr i32 %1320, 1
  %1324 = load i32, i32* %675, align 4, !tbaa !14, !noalias !26
  %1325 = shl i32 %1324, 2
  %1326 = or i32 %1325, %1323
  %1327 = load i32, i32* %676, align 4, !tbaa !14, !noalias !26
  %1328 = shl i32 %1327, 5
  %1329 = or i32 %1326, %1328
  %1330 = load i32, i32* %677, align 4, !tbaa !14, !noalias !26
  %1331 = shl i32 %1330, 8
  %1332 = or i32 %1329, %1331
  %1333 = load i32, i32* %678, align 4, !tbaa !14, !noalias !26
  %1334 = shl i32 %1333, 11
  %1335 = or i32 %1332, %1334
  %1336 = load i32, i32* %679, align 4, !tbaa !14, !noalias !26
  %1337 = shl i32 %1336, 14
  %1338 = or i32 %1335, %1337
  %1339 = load i32, i32* %680, align 4, !tbaa !14, !noalias !26
  %1340 = shl i32 %1339, 17
  %1341 = or i32 %1338, %1340
  %1342 = load i32, i32* %681, align 4, !tbaa !14, !noalias !26
  %1343 = shl i32 %1342, 20
  %1344 = or i32 %1341, %1343
  %1345 = load i32, i32* %682, align 4, !tbaa !14, !noalias !26
  %1346 = shl i32 %1345, 23
  %1347 = or i32 %1344, %1346
  %1348 = load i32, i32* %683, align 4, !tbaa !14, !noalias !26
  %1349 = shl i32 %1348, 26
  %1350 = or i32 %1347, %1349
  %1351 = load i32, i32* %684, align 4, !tbaa !14, !noalias !26
  %1352 = shl i32 %1351, 29
  %1353 = or i32 %1350, %1352
  br label %1392

; <label>:1354                                    ; preds = %1302
  %1355 = load i32, i32* %672, align 4, !tbaa !14, !noalias !26
  %1356 = shl i32 %1355, 26
  %1357 = or i32 %1312, %1356
  %1358 = load i32, i32* %673, align 4, !tbaa !14, !noalias !26
  %1359 = shl i32 %1358, 29
  %1360 = or i32 %1357, %1359
  %1361 = load i32, i32* %674, align 4, !tbaa !14, !noalias !26
  %1362 = load i32, i32* %675, align 4, !tbaa !14, !noalias !26
  %1363 = shl i32 %1362, 3
  %1364 = or i32 %1363, %1361
  %1365 = load i32, i32* %676, align 4, !tbaa !14, !noalias !26
  %1366 = shl i32 %1365, 6
  %1367 = or i32 %1364, %1366
  %1368 = load i32, i32* %677, align 4, !tbaa !14, !noalias !26
  %1369 = shl i32 %1368, 9
  %1370 = or i32 %1367, %1369
  %1371 = load i32, i32* %678, align 4, !tbaa !14, !noalias !26
  %1372 = shl i32 %1371, 11
  %1373 = or i32 %1370, %1372
  %1374 = load i32, i32* %679, align 4, !tbaa !14, !noalias !26
  %1375 = shl i32 %1374, 14
  %1376 = or i32 %1373, %1375
  %1377 = load i32, i32* %680, align 4, !tbaa !14, !noalias !26
  %1378 = shl i32 %1377, 17
  %1379 = or i32 %1376, %1378
  %1380 = load i32, i32* %681, align 4, !tbaa !14, !noalias !26
  %1381 = shl i32 %1380, 20
  %1382 = or i32 %1379, %1381
  %1383 = load i32, i32* %682, align 4, !tbaa !14, !noalias !26
  %1384 = shl i32 %1383, 23
  %1385 = or i32 %1382, %1384
  %1386 = load i32, i32* %683, align 4, !tbaa !14, !noalias !26
  %1387 = shl i32 %1386, 26
  %1388 = or i32 %1385, %1387
  %1389 = load i32, i32* %684, align 4, !tbaa !14, !noalias !26
  %1390 = shl i32 %1389, 29
  %1391 = or i32 %1388, %1390
  br label %1392

; <label>:1392                                    ; preds = %1354, %1313, %1255, %999
  %1393 = phi i32 [ %1249, %1255 ], [ %1249, %1313 ], [ %1249, %1354 ], [ %493, %999 ]
  %1394 = phi i32 [ %1250, %1255 ], [ %1250, %1313 ], [ %1250, %1354 ], [ %494, %999 ]
  %1395 = phi i32 [ %1270, %1255 ], [ %1322, %1313 ], [ %1360, %1354 ], [ %495, %999 ]
  %1396 = phi i32 [ %1301, %1255 ], [ %1353, %1313 ], [ %1391, %1354 ], [ %496, %999 ]
  %1397 = phi float [ %1108, %1255 ], [ %1108, %1313 ], [ %1108, %1354 ], [ %497, %999 ]
  %1398 = add nuw nsw i32 %498, 1
  %1399 = icmp eq i32 %1398, 32
  br i1 %1399, label %1400, label %492, !llvm.loop !37

; <label>:1400                                    ; preds = %1392
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %1, i32 %3, i32 %4, i32 %5, i32 %1393, i32 %1394, i32 %1395, i32 %1396, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

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

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

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
!dx.entryPoints = !{!11}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !8, null, null}
!5 = !{!6}
!6 = !{i32 0, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 7, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{!9}
!9 = !{i32 0, %"class.RWTexture2DArray<vector<unsigned int, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 7, i1 false, i1 false, i1 false, !10}
!10 = !{i32 0, i32 5}
!11 = !{void ()* @cs_bc6_compress_array_hq, !"cs_bc6_compress_array_hq", null, !4, !12}
!12 = !{i32 0, i64 256, i32 4, !13}
!13 = !{i32 8, i32 8, i32 1}
!14 = !{!15, !15, i64 0}
!15 = !{!"int", !16, i64 0}
!16 = !{!"omnipotent char", !17, i64 0}
!17 = !{!"Simple C/C++ TBAA"}
!18 = !{!19, !21}
!19 = distinct !{!19, !20, !"\01?EncodeP1@@YAXAIAV?$vector@I$03@@AIAMY0BA@V?$vector@M$02@@@Z: %block"}
!20 = distinct !{!20, !"\01?EncodeP1@@YAXAIAV?$vector@I$03@@AIAMY0BA@V?$vector@M$02@@@Z"}
!21 = distinct !{!21, !20, !"\01?EncodeP1@@YAXAIAV?$vector@I$03@@AIAMY0BA@V?$vector@M$02@@@Z: %blockMSLE"}
!22 = !{!21}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.unroll.disable"}
!26 = !{!27, !29}
!27 = distinct !{!27, !28, !"\01?EncodeP2Pattern@@YAXAIAV?$vector@I$03@@AIAMHY0BA@V?$vector@M$02@@@Z: %block"}
!28 = distinct !{!28, !"\01?EncodeP2Pattern@@YAXAIAV?$vector@I$03@@AIAMHY0BA@V?$vector@M$02@@@Z"}
!29 = distinct !{!29, !28, !"\01?EncodeP2Pattern@@YAXAIAV?$vector@I$03@@AIAMHY0BA@V?$vector@M$02@@@Z: %blockMSLE"}
!30 = !{!29}
!31 = distinct !{!31, !25}
!32 = distinct !{!32, !25}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !25}

