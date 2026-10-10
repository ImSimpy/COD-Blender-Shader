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
; shader hash: 6e17822f348f1c166f886aeb49ab5e04
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

define void @cs_bc6_compress_array() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %4 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %5 = call i32 @dx.op.threadId.i32(i32 93, i32 2)  ; ThreadId(component)
  %6 = alloca [16 x float], align 4
  %7 = alloca [16 x float], align 4
  %8 = alloca [16 x float], align 4
  %9 = alloca [16 x i32], align 4
  %10 = shl i32 %3, 2
  %11 = shl i32 %4, 2
  %12 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %10, i32 %11, i32 %5, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %13 = extractvalue %dx.types.ResRet.f32 %12, 0
  %14 = extractvalue %dx.types.ResRet.f32 %12, 1
  %15 = extractvalue %dx.types.ResRet.f32 %12, 2
  %16 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 0
  %17 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 0
  %18 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 0
  store float %13, float* %16, align 4
  store float %14, float* %17, align 4
  store float %15, float* %18, align 4
  %19 = or i32 %10, 1
  %20 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %19, i32 %11, i32 %5, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %21 = extractvalue %dx.types.ResRet.f32 %20, 0
  %22 = extractvalue %dx.types.ResRet.f32 %20, 1
  %23 = extractvalue %dx.types.ResRet.f32 %20, 2
  %24 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 1
  %25 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 1
  %26 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 1
  store float %21, float* %24, align 4
  store float %22, float* %25, align 4
  store float %23, float* %26, align 4
  %27 = or i32 %10, 2
  %28 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %27, i32 %11, i32 %5, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %29 = extractvalue %dx.types.ResRet.f32 %28, 0
  %30 = extractvalue %dx.types.ResRet.f32 %28, 1
  %31 = extractvalue %dx.types.ResRet.f32 %28, 2
  %32 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 2
  %33 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 2
  %34 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 2
  store float %29, float* %32, align 4
  store float %30, float* %33, align 4
  store float %31, float* %34, align 4
  %35 = or i32 %10, 3
  %36 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %35, i32 %11, i32 %5, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %37 = extractvalue %dx.types.ResRet.f32 %36, 0
  %38 = extractvalue %dx.types.ResRet.f32 %36, 1
  %39 = extractvalue %dx.types.ResRet.f32 %36, 2
  %40 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 3
  %41 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 3
  %42 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 3
  store float %37, float* %40, align 4
  store float %38, float* %41, align 4
  store float %39, float* %42, align 4
  %43 = or i32 %11, 1
  %44 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %10, i32 %43, i32 %5, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %45 = extractvalue %dx.types.ResRet.f32 %44, 0
  %46 = extractvalue %dx.types.ResRet.f32 %44, 1
  %47 = extractvalue %dx.types.ResRet.f32 %44, 2
  %48 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 4
  %49 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 4
  %50 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 4
  store float %45, float* %48, align 4
  store float %46, float* %49, align 4
  store float %47, float* %50, align 4
  %51 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %19, i32 %43, i32 %5, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %52 = extractvalue %dx.types.ResRet.f32 %51, 0
  %53 = extractvalue %dx.types.ResRet.f32 %51, 1
  %54 = extractvalue %dx.types.ResRet.f32 %51, 2
  %55 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 5
  %56 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 5
  %57 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 5
  store float %52, float* %55, align 4
  store float %53, float* %56, align 4
  store float %54, float* %57, align 4
  %58 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %27, i32 %43, i32 %5, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %59 = extractvalue %dx.types.ResRet.f32 %58, 0
  %60 = extractvalue %dx.types.ResRet.f32 %58, 1
  %61 = extractvalue %dx.types.ResRet.f32 %58, 2
  %62 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 6
  %63 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 6
  %64 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 6
  store float %59, float* %62, align 4
  store float %60, float* %63, align 4
  store float %61, float* %64, align 4
  %65 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %35, i32 %43, i32 %5, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %66 = extractvalue %dx.types.ResRet.f32 %65, 0
  %67 = extractvalue %dx.types.ResRet.f32 %65, 1
  %68 = extractvalue %dx.types.ResRet.f32 %65, 2
  %69 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 7
  %70 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 7
  %71 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 7
  store float %66, float* %69, align 4
  store float %67, float* %70, align 4
  store float %68, float* %71, align 4
  %72 = or i32 %11, 2
  %73 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %10, i32 %72, i32 %5, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %74 = extractvalue %dx.types.ResRet.f32 %73, 0
  %75 = extractvalue %dx.types.ResRet.f32 %73, 1
  %76 = extractvalue %dx.types.ResRet.f32 %73, 2
  %77 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 8
  %78 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 8
  %79 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 8
  store float %74, float* %77, align 4
  store float %75, float* %78, align 4
  store float %76, float* %79, align 4
  %80 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %19, i32 %72, i32 %5, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %81 = extractvalue %dx.types.ResRet.f32 %80, 0
  %82 = extractvalue %dx.types.ResRet.f32 %80, 1
  %83 = extractvalue %dx.types.ResRet.f32 %80, 2
  %84 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 9
  %85 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 9
  %86 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 9
  store float %81, float* %84, align 4
  store float %82, float* %85, align 4
  store float %83, float* %86, align 4
  %87 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %27, i32 %72, i32 %5, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %88 = extractvalue %dx.types.ResRet.f32 %87, 0
  %89 = extractvalue %dx.types.ResRet.f32 %87, 1
  %90 = extractvalue %dx.types.ResRet.f32 %87, 2
  %91 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 10
  %92 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 10
  %93 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 10
  store float %88, float* %91, align 4
  store float %89, float* %92, align 4
  store float %90, float* %93, align 4
  %94 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %35, i32 %72, i32 %5, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %95 = extractvalue %dx.types.ResRet.f32 %94, 0
  %96 = extractvalue %dx.types.ResRet.f32 %94, 1
  %97 = extractvalue %dx.types.ResRet.f32 %94, 2
  %98 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 11
  %99 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 11
  %100 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 11
  store float %95, float* %98, align 4
  store float %96, float* %99, align 4
  store float %97, float* %100, align 4
  %101 = or i32 %11, 3
  %102 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %10, i32 %101, i32 %5, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %103 = extractvalue %dx.types.ResRet.f32 %102, 0
  %104 = extractvalue %dx.types.ResRet.f32 %102, 1
  %105 = extractvalue %dx.types.ResRet.f32 %102, 2
  %106 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 12
  %107 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 12
  %108 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 12
  store float %103, float* %106, align 4
  store float %104, float* %107, align 4
  store float %105, float* %108, align 4
  %109 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %19, i32 %101, i32 %5, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %110 = extractvalue %dx.types.ResRet.f32 %109, 0
  %111 = extractvalue %dx.types.ResRet.f32 %109, 1
  %112 = extractvalue %dx.types.ResRet.f32 %109, 2
  %113 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 13
  %114 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 13
  %115 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 13
  store float %110, float* %113, align 4
  store float %111, float* %114, align 4
  store float %112, float* %115, align 4
  %116 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %27, i32 %101, i32 %5, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %117 = extractvalue %dx.types.ResRet.f32 %116, 0
  %118 = extractvalue %dx.types.ResRet.f32 %116, 1
  %119 = extractvalue %dx.types.ResRet.f32 %116, 2
  %120 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 14
  %121 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 14
  %122 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 14
  store float %117, float* %120, align 4
  store float %118, float* %121, align 4
  store float %119, float* %122, align 4
  %123 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %35, i32 %101, i32 %5, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %124 = extractvalue %dx.types.ResRet.f32 %123, 0
  %125 = extractvalue %dx.types.ResRet.f32 %123, 1
  %126 = extractvalue %dx.types.ResRet.f32 %123, 2
  %127 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 15
  %128 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 15
  %129 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 15
  store float %124, float* %127, align 4
  store float %125, float* %128, align 4
  store float %126, float* %129, align 4
  br label %130

; <label>:130                                     ; preds = %150, %0
  %131 = phi float [ %23, %0 ], [ %156, %150 ]
  %132 = phi float [ %22, %0 ], [ %154, %150 ]
  %133 = phi float [ %21, %0 ], [ %152, %150 ]
  %134 = phi float [ %13, %0 ], [ %141, %150 ]
  %135 = phi float [ %14, %0 ], [ %142, %150 ]
  %136 = phi float [ %15, %0 ], [ %143, %150 ]
  %137 = phi float [ %13, %0 ], [ %144, %150 ]
  %138 = phi float [ %14, %0 ], [ %145, %150 ]
  %139 = phi float [ %15, %0 ], [ %146, %150 ]
  %140 = phi i32 [ 1, %0 ], [ %147, %150 ]
  %141 = call float @dx.op.binary.f32(i32 36, float %134, float %133)  ; FMin(a,b)
  %142 = call float @dx.op.binary.f32(i32 36, float %135, float %132)  ; FMin(a,b)
  %143 = call float @dx.op.binary.f32(i32 36, float %136, float %131)  ; FMin(a,b)
  %144 = call float @dx.op.binary.f32(i32 35, float %137, float %133)  ; FMax(a,b)
  %145 = call float @dx.op.binary.f32(i32 35, float %138, float %132)  ; FMax(a,b)
  %146 = call float @dx.op.binary.f32(i32 35, float %139, float %131)  ; FMax(a,b)
  %147 = add nuw nsw i32 %140, 1
  %148 = icmp eq i32 %147, 16
  br i1 %148, label %149, label %150

; <label>:149                                     ; preds = %130
  br label %157

; <label>:150                                     ; preds = %130
  %151 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 %147
  %152 = load float, float* %151, align 4
  %153 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 %147
  %154 = load float, float* %153, align 4
  %155 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 %147
  %156 = load float, float* %155, align 4
  br label %130

; <label>:157                                     ; preds = %188, %149
  %158 = phi float [ %194, %188 ], [ %15, %149 ]
  %159 = phi float [ %192, %188 ], [ %14, %149 ]
  %160 = phi float [ %190, %188 ], [ %13, %149 ]
  %161 = phi i32 [ %186, %188 ], [ 0, %149 ]
  %162 = phi float [ %174, %188 ], [ %144, %149 ]
  %163 = phi float [ %175, %188 ], [ %145, %149 ]
  %164 = phi float [ %176, %188 ], [ %146, %149 ]
  %165 = phi float [ %183, %188 ], [ %141, %149 ]
  %166 = phi float [ %184, %188 ], [ %142, %149 ]
  %167 = phi float [ %185, %188 ], [ %143, %149 ]
  %168 = fcmp fast oeq float %160, %141
  %169 = fcmp fast oeq float %159, %142
  %170 = fcmp fast oeq float %158, %143
  %171 = select i1 %168, float %162, float %160
  %172 = select i1 %169, float %163, float %159
  %173 = select i1 %170, float %164, float %158
  %174 = call float @dx.op.binary.f32(i32 36, float %162, float %171)  ; FMin(a,b)
  %175 = call float @dx.op.binary.f32(i32 36, float %163, float %172)  ; FMin(a,b)
  %176 = call float @dx.op.binary.f32(i32 36, float %164, float %173)  ; FMin(a,b)
  %177 = fcmp fast oeq float %160, %144
  %178 = fcmp fast oeq float %159, %145
  %179 = fcmp fast oeq float %158, %146
  %180 = select i1 %177, float %165, float %160
  %181 = select i1 %178, float %166, float %159
  %182 = select i1 %179, float %167, float %158
  %183 = call float @dx.op.binary.f32(i32 35, float %165, float %180)  ; FMax(a,b)
  %184 = call float @dx.op.binary.f32(i32 35, float %166, float %181)  ; FMax(a,b)
  %185 = call float @dx.op.binary.f32(i32 35, float %167, float %182)  ; FMax(a,b)
  %186 = add nuw nsw i32 %161, 1
  %187 = icmp eq i32 %186, 16
  br i1 %187, label %195, label %188

; <label>:188                                     ; preds = %157
  %189 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 %186
  %190 = load float, float* %189, align 4
  %191 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 %186
  %192 = load float, float* %191, align 4
  %193 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 %186
  %194 = load float, float* %193, align 4
  br label %157

; <label>:195                                     ; preds = %157
  %196 = fadd fast float %144, 1.000000e+00
  %197 = fadd fast float %145, 1.000000e+00
  %198 = fadd fast float %146, 1.000000e+00
  %199 = call float @dx.op.unary.f32(i32 23, float %196)  ; Log(value)
  %200 = call float @dx.op.unary.f32(i32 23, float %197)  ; Log(value)
  %201 = call float @dx.op.unary.f32(i32 23, float %198)  ; Log(value)
  %202 = fadd fast float %141, 1.000000e+00
  %203 = fadd fast float %142, 1.000000e+00
  %204 = fadd fast float %143, 1.000000e+00
  %205 = call float @dx.op.unary.f32(i32 23, float %202)  ; Log(value)
  %206 = call float @dx.op.unary.f32(i32 23, float %203)  ; Log(value)
  %207 = call float @dx.op.unary.f32(i32 23, float %204)  ; Log(value)
  %208 = fadd fast float %183, 1.000000e+00
  %209 = fadd fast float %184, 1.000000e+00
  %210 = fadd fast float %185, 1.000000e+00
  %211 = call float @dx.op.unary.f32(i32 23, float %208)  ; Log(value)
  %212 = call float @dx.op.unary.f32(i32 23, float %209)  ; Log(value)
  %213 = call float @dx.op.unary.f32(i32 23, float %210)  ; Log(value)
  %214 = fadd fast float %174, 1.000000e+00
  %215 = fadd fast float %175, 1.000000e+00
  %216 = fadd fast float %176, 1.000000e+00
  %217 = call float @dx.op.unary.f32(i32 23, float %214)  ; Log(value)
  %218 = call float @dx.op.unary.f32(i32 23, float %215)  ; Log(value)
  %219 = call float @dx.op.unary.f32(i32 23, float %216)  ; Log(value)
  %220 = fsub fast float %199, %205
  %221 = fsub fast float %200, %206
  %222 = fsub fast float %201, %207
  %223 = fmul fast float %220, 3.125000e-02
  %224 = fmul fast float %221, 3.125000e-02
  %225 = fmul fast float %222, 3.125000e-02
  %226 = fsub fast float %217, %205
  %227 = fsub fast float %218, %206
  %228 = fsub fast float %219, %207
  %229 = call float @dx.op.binary.f32(i32 36, float %226, float %223)  ; FMin(a,b)
  %230 = call float @dx.op.binary.f32(i32 36, float %227, float %224)  ; FMin(a,b)
  %231 = call float @dx.op.binary.f32(i32 36, float %228, float %225)  ; FMin(a,b)
  %232 = fadd fast float %229, %205
  %233 = fadd fast float %230, %206
  %234 = fadd fast float %231, %207
  %235 = fsub fast float %199, %211
  %236 = fsub fast float %200, %212
  %237 = fsub fast float %201, %213
  %238 = call float @dx.op.binary.f32(i32 36, float %235, float %223)  ; FMin(a,b)
  %239 = call float @dx.op.binary.f32(i32 36, float %236, float %224)  ; FMin(a,b)
  %240 = call float @dx.op.binary.f32(i32 36, float %237, float %225)  ; FMin(a,b)
  %241 = fsub fast float %199, %238
  %242 = fsub fast float %200, %239
  %243 = fsub fast float %201, %240
  %244 = call float @dx.op.unary.f32(i32 21, float %232)  ; Exp(value)
  %245 = call float @dx.op.unary.f32(i32 21, float %233)  ; Exp(value)
  %246 = call float @dx.op.unary.f32(i32 21, float %234)  ; Exp(value)
  %247 = fadd fast float %244, -1.000000e+00
  %248 = fadd fast float %245, -1.000000e+00
  %249 = fadd fast float %246, -1.000000e+00
  %250 = call float @dx.op.unary.f32(i32 21, float %241)  ; Exp(value)
  %251 = call float @dx.op.unary.f32(i32 21, float %242)  ; Exp(value)
  %252 = call float @dx.op.unary.f32(i32 21, float %243)  ; Exp(value)
  %253 = fadd fast float %250, -1.000000e+00
  %254 = fadd fast float %251, -1.000000e+00
  %255 = fadd fast float %252, -1.000000e+00
  %256 = fsub fast float %253, %247
  %257 = fsub fast float %254, %248
  %258 = fsub fast float %255, %249
  %259 = fadd fast float %257, %256
  %260 = fadd fast float %259, %258
  %261 = fdiv fast float %256, %260
  %262 = fdiv fast float %257, %260
  %263 = fdiv fast float %258, %260
  %264 = call i32 @dx.op.legacyF32ToF16(i32 130, float %247)  ; LegacyF32ToF16(value)
  %265 = call i32 @dx.op.legacyF32ToF16(i32 130, float %248)  ; LegacyF32ToF16(value)
  %266 = call i32 @dx.op.legacyF32ToF16(i32 130, float %249)  ; LegacyF32ToF16(value)
  %267 = uitofp i32 %264 to float
  %268 = uitofp i32 %265 to float
  %269 = uitofp i32 %266 to float
  %270 = fmul fast float %267, 0x3FA0842100000000
  %271 = fmul fast float %268, 0x3FA0842100000000
  %272 = fmul fast float %269, 0x3FA0842100000000
  %273 = call i32 @dx.op.legacyF32ToF16(i32 130, float %253)  ; LegacyF32ToF16(value)
  %274 = call i32 @dx.op.legacyF32ToF16(i32 130, float %254)  ; LegacyF32ToF16(value)
  %275 = call i32 @dx.op.legacyF32ToF16(i32 130, float %255)  ; LegacyF32ToF16(value)
  %276 = uitofp i32 %273 to float
  %277 = uitofp i32 %274 to float
  %278 = uitofp i32 %275 to float
  %279 = fmul fast float %276, 0x3FA0842100000000
  %280 = fmul fast float %277, 0x3FA0842100000000
  %281 = fmul fast float %278, 0x3FA0842100000000
  %282 = call float @dx.op.dot3.f32(i32 55, float %247, float %248, float %249, float %261, float %262, float %263)  ; Dot3(ax,ay,az,bx,by,bz)
  %283 = call i32 @dx.op.legacyF32ToF16(i32 130, float %282)  ; LegacyF32ToF16(value)
  %284 = uitofp i32 %283 to float
  %285 = call float @dx.op.dot3.f32(i32 55, float %253, float %254, float %255, float %261, float %262, float %263)  ; Dot3(ax,ay,az,bx,by,bz)
  %286 = call i32 @dx.op.legacyF32ToF16(i32 130, float %285)  ; LegacyF32ToF16(value)
  %287 = uitofp i32 %286 to float
  %288 = call float @dx.op.dot3.f32(i32 55, float %13, float %14, float %15, float %261, float %262, float %263)  ; Dot3(ax,ay,az,bx,by,bz)
  %289 = call i32 @dx.op.legacyF32ToF16(i32 130, float %288)  ; LegacyF32ToF16(value)
  %290 = uitofp i32 %289 to float
  %291 = fsub fast float %290, %284
  %292 = fsub fast float %287, %284
  %293 = fdiv fast float %291, %292
  %294 = fmul fast float %293, 0x402DDDDD60000000
  %295 = fadd fast float %294, 0x3FE1110A20000000
  %296 = call float @dx.op.binary.f32(i32 35, float %295, float 0.000000e+00)  ; FMax(a,b)
  %297 = call float @dx.op.binary.f32(i32 36, float %296, float 1.500000e+01)  ; FMin(a,b)
  %298 = fptoui float %297 to i32
  %299 = icmp ugt i32 %298, 7
  %300 = select i1 %299, float %279, float %270
  %301 = select i1 %299, float %281, float %272
  %302 = select i1 %299, float %271, float %280
  %303 = select i1 %299, float %287, float %284
  %304 = select i1 %299, float %284, float %287
  %305 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i32 0, i32 0
  store i32 0, i32* %305, align 4, !tbaa !14, !noalias !18
  %306 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i32 0, i32 1
  store i32 0, i32* %306, align 4, !tbaa !14, !noalias !18
  %307 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i32 0, i32 2
  store i32 0, i32* %307, align 4, !tbaa !14, !noalias !18
  %308 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i32 0, i32 3
  store i32 0, i32* %308, align 4, !tbaa !14, !noalias !18
  %309 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i32 0, i32 4
  store i32 0, i32* %309, align 4, !tbaa !14, !noalias !18
  %310 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i32 0, i32 5
  store i32 0, i32* %310, align 4, !tbaa !14, !noalias !18
  %311 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i32 0, i32 6
  store i32 0, i32* %311, align 4, !tbaa !14, !noalias !22
  %312 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i32 0, i32 7
  store i32 0, i32* %312, align 4, !tbaa !14, !noalias !22
  %313 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i32 0, i32 8
  store i32 0, i32* %313, align 4, !tbaa !14, !noalias !22
  %314 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i32 0, i32 9
  store i32 0, i32* %314, align 4, !tbaa !14, !noalias !22
  %315 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i32 0, i32 10
  store i32 0, i32* %315, align 4, !tbaa !14, !noalias !22
  %316 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i32 0, i32 11
  store i32 0, i32* %316, align 4, !tbaa !14, !noalias !22
  %317 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i32 0, i32 12
  store i32 0, i32* %317, align 4, !tbaa !14, !noalias !22
  %318 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i32 0, i32 13
  store i32 0, i32* %318, align 4, !tbaa !14, !noalias !22
  %319 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i32 0, i32 14
  store i32 0, i32* %319, align 4, !tbaa !14, !noalias !22
  %320 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i32 0, i32 15
  store i32 0, i32* %320, align 4, !tbaa !14, !noalias !22
  br label %321

; <label>:321                                     ; preds = %340, %195
  %322 = phi float [ %15, %195 ], [ %346, %340 ]
  %323 = phi float [ %14, %195 ], [ %344, %340 ]
  %324 = phi float [ %13, %195 ], [ %342, %340 ]
  %325 = phi i32 [ 0, %195 ], [ %338, %340 ]
  %326 = call float @dx.op.dot3.f32(i32 55, float %324, float %323, float %322, float %261, float %262, float %263)  ; Dot3(ax,ay,az,bx,by,bz)
  %327 = call i32 @dx.op.legacyF32ToF16(i32 130, float %326)  ; LegacyF32ToF16(value)
  %328 = uitofp i32 %327 to float
  %329 = fsub fast float %328, %303
  %330 = fsub fast float %304, %303
  %331 = fdiv fast float %329, %330
  %332 = fmul fast float %331, 0x402DDDDD60000000
  %333 = fadd fast float %332, 0x3FE1110A20000000
  %334 = call float @dx.op.binary.f32(i32 35, float %333, float 0.000000e+00)  ; FMax(a,b)
  %335 = call float @dx.op.binary.f32(i32 36, float %334, float 1.500000e+01)  ; FMin(a,b)
  %336 = fptoui float %335 to i32
  %337 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i32 0, i32 %325
  store i32 %336, i32* %337, align 4, !tbaa !14, !noalias !18
  %338 = add nuw nsw i32 %325, 1
  %339 = icmp eq i32 %338, 16
  br i1 %339, label %347, label %340

; <label>:340                                     ; preds = %321
  %341 = getelementptr [16 x float], [16 x float]* %6, i32 0, i32 %338
  %342 = load float, float* %341, align 4
  %343 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 %338
  %344 = load float, float* %343, align 4
  %345 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 %338
  %346 = load float, float* %345, align 4
  br label %321

; <label>:347                                     ; preds = %321
  %348 = select i1 %299, float %280, float %271
  %349 = select i1 %299, float %270, float %279
  %350 = select i1 %299, float %272, float %281
  %351 = fptoui float %300 to i32
  %352 = shl i32 %351, 5
  %353 = fptoui float %348 to i32
  %354 = shl i32 %353, 15
  %355 = fptoui float %301 to i32
  %356 = shl i32 %355, 25
  %357 = or i32 %354, %352
  %358 = or i32 %357, %356
  %359 = or i32 %358, 3
  %360 = lshr i32 %355, 7
  %361 = fptoui float %349 to i32
  %362 = shl i32 %361, 3
  %363 = or i32 %360, %362
  %364 = fptoui float %302 to i32
  %365 = shl i32 %364, 13
  %366 = or i32 %363, %365
  %367 = fptoui float %350 to i32
  %368 = shl i32 %367, 23
  %369 = or i32 %366, %368
  %370 = lshr i32 %367, 9
  %371 = load i32, i32* %305, align 4, !tbaa !14, !noalias !18
  %372 = shl i32 %371, 1
  %373 = or i32 %372, %370
  %374 = load i32, i32* %306, align 4, !tbaa !14, !noalias !18
  %375 = shl i32 %374, 4
  %376 = or i32 %373, %375
  %377 = load i32, i32* %307, align 4, !tbaa !14, !noalias !18
  %378 = shl i32 %377, 8
  %379 = or i32 %376, %378
  %380 = load i32, i32* %308, align 4, !tbaa !14, !noalias !18
  %381 = shl i32 %380, 12
  %382 = or i32 %379, %381
  %383 = load i32, i32* %309, align 4, !tbaa !14, !noalias !18
  %384 = shl i32 %383, 16
  %385 = or i32 %382, %384
  %386 = load i32, i32* %310, align 4, !tbaa !14, !noalias !18
  %387 = shl i32 %386, 20
  %388 = or i32 %385, %387
  %389 = load i32, i32* %311, align 4, !tbaa !14, !noalias !18
  %390 = shl i32 %389, 24
  %391 = or i32 %388, %390
  %392 = load i32, i32* %312, align 4, !tbaa !14, !noalias !18
  %393 = shl i32 %392, 28
  %394 = or i32 %391, %393
  %395 = load i32, i32* %313, align 4, !tbaa !14, !noalias !18
  %396 = load i32, i32* %314, align 4, !tbaa !14, !noalias !18
  %397 = shl i32 %396, 4
  %398 = or i32 %397, %395
  %399 = load i32, i32* %315, align 4, !tbaa !14, !noalias !18
  %400 = shl i32 %399, 8
  %401 = or i32 %398, %400
  %402 = load i32, i32* %316, align 4, !tbaa !14, !noalias !18
  %403 = shl i32 %402, 12
  %404 = or i32 %401, %403
  %405 = load i32, i32* %317, align 4, !tbaa !14, !noalias !18
  %406 = shl i32 %405, 16
  %407 = or i32 %404, %406
  %408 = load i32, i32* %318, align 4, !tbaa !14, !noalias !18
  %409 = shl i32 %408, 20
  %410 = or i32 %407, %409
  %411 = load i32, i32* %319, align 4, !tbaa !14, !noalias !18
  %412 = shl i32 %411, 24
  %413 = or i32 %410, %412
  %414 = load i32, i32* %320, align 4, !tbaa !14, !noalias !18
  %415 = shl i32 %414, 28
  %416 = or i32 %413, %415
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %1, i32 %3, i32 %4, i32 %5, i32 %359, i32 %369, i32 %394, i32 %416, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!11 = !{void ()* @cs_bc6_compress_array, !"cs_bc6_compress_array", null, !4, !12}
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

