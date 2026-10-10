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
; shader hash: c2a9327b54aff4abb54f6980a98d3b46
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
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.RWTexture2D<vector<unsigned int, 4> >" = type { <4 x i32> }
%GfxVirtualTexturingComposite = type { [8 x <4 x float>], [8 x <4 x float>], <3 x float>, i32, <2 x float>, float, float, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, [56 x %struct.TerrainTileDataVT], [20 x <4 x float>], [5 x <4 x i32>], [40 x <4 x i32>] }
%struct.TerrainTileDataVT = type { [2 x <4 x i32>], <2 x i32> }

define void @cs_physical_texture_compress_mip0_from_scratch_3() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %6 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %7 = alloca [16 x float], align 4
  %8 = alloca [16 x float], align 4
  %9 = alloca [16 x float], align 4
  %10 = alloca [16 x float], align 4
  %11 = alloca [16 x float], align 4
  %12 = alloca [16 x float], align 4
  %13 = alloca [16 x float], align 4
  %14 = alloca [16 x float], align 4
  %15 = alloca [16 x float], align 4
  %16 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %17 = extractvalue %dx.types.CBufRet.i32 %16, 1
  %18 = icmp eq i32 %17, 5
  %19 = shl i32 %5, 2
  %20 = shl i32 %6, 2
  %21 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %19, i32 %20, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %22 = extractvalue %dx.types.ResRet.f32 %21, 0
  %23 = extractvalue %dx.types.ResRet.f32 %21, 1
  %24 = extractvalue %dx.types.ResRet.f32 %21, 2
  br i1 %18, label %34, label %25, !dx.controlflow.hints !20

; <label>:25                                      ; preds = %0
  %26 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %19, i32 %20, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %27 = extractvalue %dx.types.ResRet.f32 %26, 0
  %28 = extractvalue %dx.types.ResRet.f32 %26, 1
  %29 = extractvalue %dx.types.ResRet.f32 %26, 2
  %30 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 0, i32 %19, i32 %20, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %31 = extractvalue %dx.types.ResRet.f32 %30, 0
  %32 = extractvalue %dx.types.ResRet.f32 %30, 1
  %33 = extractvalue %dx.types.ResRet.f32 %30, 2
  br label %34

; <label>:34                                      ; preds = %25, %0
  %35 = phi float [ %31, %25 ], [ undef, %0 ]
  %36 = phi float [ %27, %25 ], [ undef, %0 ]
  %37 = phi float [ %32, %25 ], [ undef, %0 ]
  %38 = phi float [ %28, %25 ], [ undef, %0 ]
  %39 = phi float [ %33, %25 ], [ undef, %0 ]
  %40 = phi float [ %29, %25 ], [ undef, %0 ]
  %41 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 0
  %42 = getelementptr [16 x float], [16 x float]* %14, i32 0, i32 0
  %43 = getelementptr [16 x float], [16 x float]* %15, i32 0, i32 0
  store float %22, float* %41, align 4
  store float %23, float* %42, align 4
  store float %24, float* %43, align 4
  br i1 %18, label %51, label %44, !dx.controlflow.hints !21

; <label>:44                                      ; preds = %34
  %45 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 0
  %46 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 0
  %47 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 0
  store float %37, float* %45, align 4
  store float %36, float* %46, align 4
  store float %40, float* %47, align 4
  %48 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 0
  %49 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 0
  %50 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 0
  store float %35, float* %48, align 4
  store float %38, float* %49, align 4
  store float %39, float* %50, align 4
  br label %51

; <label>:51                                      ; preds = %44, %34
  %52 = or i32 %19, 1
  %53 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %52, i32 %20, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %54 = extractvalue %dx.types.ResRet.f32 %53, 0
  %55 = extractvalue %dx.types.ResRet.f32 %53, 1
  %56 = extractvalue %dx.types.ResRet.f32 %53, 2
  br i1 %18, label %66, label %57, !dx.controlflow.hints !20

; <label>:57                                      ; preds = %51
  %58 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %52, i32 %20, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %59 = extractvalue %dx.types.ResRet.f32 %58, 0
  %60 = extractvalue %dx.types.ResRet.f32 %58, 1
  %61 = extractvalue %dx.types.ResRet.f32 %58, 2
  %62 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 0, i32 %52, i32 %20, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %63 = extractvalue %dx.types.ResRet.f32 %62, 0
  %64 = extractvalue %dx.types.ResRet.f32 %62, 1
  %65 = extractvalue %dx.types.ResRet.f32 %62, 2
  br label %66

; <label>:66                                      ; preds = %57, %51
  %67 = phi float [ %63, %57 ], [ %35, %51 ]
  %68 = phi float [ %59, %57 ], [ %36, %51 ]
  %69 = phi float [ %64, %57 ], [ %37, %51 ]
  %70 = phi float [ %60, %57 ], [ %38, %51 ]
  %71 = phi float [ %65, %57 ], [ %39, %51 ]
  %72 = phi float [ %61, %57 ], [ %40, %51 ]
  %73 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 1
  %74 = getelementptr [16 x float], [16 x float]* %14, i32 0, i32 1
  %75 = getelementptr [16 x float], [16 x float]* %15, i32 0, i32 1
  store float %54, float* %73, align 4
  store float %55, float* %74, align 4
  store float %56, float* %75, align 4
  br i1 %18, label %83, label %76, !dx.controlflow.hints !21

; <label>:76                                      ; preds = %66
  %77 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 1
  %78 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 1
  %79 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 1
  store float %69, float* %77, align 4
  store float %68, float* %78, align 4
  store float %72, float* %79, align 4
  %80 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 1
  %81 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 1
  %82 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 1
  store float %67, float* %80, align 4
  store float %70, float* %81, align 4
  store float %71, float* %82, align 4
  br label %83

; <label>:83                                      ; preds = %76, %66
  %84 = or i32 %19, 2
  %85 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %84, i32 %20, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %86 = extractvalue %dx.types.ResRet.f32 %85, 0
  %87 = extractvalue %dx.types.ResRet.f32 %85, 1
  %88 = extractvalue %dx.types.ResRet.f32 %85, 2
  br i1 %18, label %98, label %89, !dx.controlflow.hints !20

; <label>:89                                      ; preds = %83
  %90 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %84, i32 %20, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %91 = extractvalue %dx.types.ResRet.f32 %90, 0
  %92 = extractvalue %dx.types.ResRet.f32 %90, 1
  %93 = extractvalue %dx.types.ResRet.f32 %90, 2
  %94 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 0, i32 %84, i32 %20, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %95 = extractvalue %dx.types.ResRet.f32 %94, 0
  %96 = extractvalue %dx.types.ResRet.f32 %94, 1
  %97 = extractvalue %dx.types.ResRet.f32 %94, 2
  br label %98

; <label>:98                                      ; preds = %89, %83
  %99 = phi float [ %95, %89 ], [ %67, %83 ]
  %100 = phi float [ %91, %89 ], [ %68, %83 ]
  %101 = phi float [ %96, %89 ], [ %69, %83 ]
  %102 = phi float [ %92, %89 ], [ %70, %83 ]
  %103 = phi float [ %97, %89 ], [ %71, %83 ]
  %104 = phi float [ %93, %89 ], [ %72, %83 ]
  %105 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 2
  %106 = getelementptr [16 x float], [16 x float]* %14, i32 0, i32 2
  %107 = getelementptr [16 x float], [16 x float]* %15, i32 0, i32 2
  store float %86, float* %105, align 4
  store float %87, float* %106, align 4
  store float %88, float* %107, align 4
  br i1 %18, label %115, label %108, !dx.controlflow.hints !21

; <label>:108                                     ; preds = %98
  %109 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 2
  %110 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 2
  %111 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 2
  store float %101, float* %109, align 4
  store float %100, float* %110, align 4
  store float %104, float* %111, align 4
  %112 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 2
  %113 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 2
  %114 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 2
  store float %99, float* %112, align 4
  store float %102, float* %113, align 4
  store float %103, float* %114, align 4
  br label %115

; <label>:115                                     ; preds = %108, %98
  %116 = or i32 %19, 3
  %117 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %116, i32 %20, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %118 = extractvalue %dx.types.ResRet.f32 %117, 0
  %119 = extractvalue %dx.types.ResRet.f32 %117, 1
  %120 = extractvalue %dx.types.ResRet.f32 %117, 2
  br i1 %18, label %130, label %121, !dx.controlflow.hints !20

; <label>:121                                     ; preds = %115
  %122 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %116, i32 %20, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %123 = extractvalue %dx.types.ResRet.f32 %122, 0
  %124 = extractvalue %dx.types.ResRet.f32 %122, 1
  %125 = extractvalue %dx.types.ResRet.f32 %122, 2
  %126 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 0, i32 %116, i32 %20, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %127 = extractvalue %dx.types.ResRet.f32 %126, 0
  %128 = extractvalue %dx.types.ResRet.f32 %126, 1
  %129 = extractvalue %dx.types.ResRet.f32 %126, 2
  br label %130

; <label>:130                                     ; preds = %121, %115
  %131 = phi float [ %127, %121 ], [ %99, %115 ]
  %132 = phi float [ %123, %121 ], [ %100, %115 ]
  %133 = phi float [ %128, %121 ], [ %101, %115 ]
  %134 = phi float [ %124, %121 ], [ %102, %115 ]
  %135 = phi float [ %129, %121 ], [ %103, %115 ]
  %136 = phi float [ %125, %121 ], [ %104, %115 ]
  %137 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 3
  %138 = getelementptr [16 x float], [16 x float]* %14, i32 0, i32 3
  %139 = getelementptr [16 x float], [16 x float]* %15, i32 0, i32 3
  store float %118, float* %137, align 4
  store float %119, float* %138, align 4
  store float %120, float* %139, align 4
  br i1 %18, label %147, label %140, !dx.controlflow.hints !21

; <label>:140                                     ; preds = %130
  %141 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 3
  %142 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 3
  %143 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 3
  store float %133, float* %141, align 4
  store float %132, float* %142, align 4
  store float %136, float* %143, align 4
  %144 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 3
  %145 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 3
  %146 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 3
  store float %131, float* %144, align 4
  store float %134, float* %145, align 4
  store float %135, float* %146, align 4
  br label %147

; <label>:147                                     ; preds = %140, %130
  %148 = or i32 %20, 1
  %149 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %19, i32 %148, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %150 = extractvalue %dx.types.ResRet.f32 %149, 0
  %151 = extractvalue %dx.types.ResRet.f32 %149, 1
  %152 = extractvalue %dx.types.ResRet.f32 %149, 2
  br i1 %18, label %162, label %153, !dx.controlflow.hints !20

; <label>:153                                     ; preds = %147
  %154 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %19, i32 %148, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %155 = extractvalue %dx.types.ResRet.f32 %154, 0
  %156 = extractvalue %dx.types.ResRet.f32 %154, 1
  %157 = extractvalue %dx.types.ResRet.f32 %154, 2
  %158 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 0, i32 %19, i32 %148, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %159 = extractvalue %dx.types.ResRet.f32 %158, 0
  %160 = extractvalue %dx.types.ResRet.f32 %158, 1
  %161 = extractvalue %dx.types.ResRet.f32 %158, 2
  br label %162

; <label>:162                                     ; preds = %153, %147
  %163 = phi float [ %159, %153 ], [ %131, %147 ]
  %164 = phi float [ %155, %153 ], [ %132, %147 ]
  %165 = phi float [ %160, %153 ], [ %133, %147 ]
  %166 = phi float [ %156, %153 ], [ %134, %147 ]
  %167 = phi float [ %161, %153 ], [ %135, %147 ]
  %168 = phi float [ %157, %153 ], [ %136, %147 ]
  %169 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 4
  %170 = getelementptr [16 x float], [16 x float]* %14, i32 0, i32 4
  %171 = getelementptr [16 x float], [16 x float]* %15, i32 0, i32 4
  store float %150, float* %169, align 4
  store float %151, float* %170, align 4
  store float %152, float* %171, align 4
  br i1 %18, label %179, label %172, !dx.controlflow.hints !21

; <label>:172                                     ; preds = %162
  %173 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 4
  %174 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 4
  %175 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 4
  store float %165, float* %173, align 4
  store float %164, float* %174, align 4
  store float %168, float* %175, align 4
  %176 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 4
  %177 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 4
  %178 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 4
  store float %163, float* %176, align 4
  store float %166, float* %177, align 4
  store float %167, float* %178, align 4
  br label %179

; <label>:179                                     ; preds = %172, %162
  %180 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %52, i32 %148, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %181 = extractvalue %dx.types.ResRet.f32 %180, 0
  %182 = extractvalue %dx.types.ResRet.f32 %180, 1
  %183 = extractvalue %dx.types.ResRet.f32 %180, 2
  br i1 %18, label %193, label %184, !dx.controlflow.hints !20

; <label>:184                                     ; preds = %179
  %185 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %52, i32 %148, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %186 = extractvalue %dx.types.ResRet.f32 %185, 0
  %187 = extractvalue %dx.types.ResRet.f32 %185, 1
  %188 = extractvalue %dx.types.ResRet.f32 %185, 2
  %189 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 0, i32 %52, i32 %148, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %190 = extractvalue %dx.types.ResRet.f32 %189, 0
  %191 = extractvalue %dx.types.ResRet.f32 %189, 1
  %192 = extractvalue %dx.types.ResRet.f32 %189, 2
  br label %193

; <label>:193                                     ; preds = %184, %179
  %194 = phi float [ %190, %184 ], [ %163, %179 ]
  %195 = phi float [ %186, %184 ], [ %164, %179 ]
  %196 = phi float [ %191, %184 ], [ %165, %179 ]
  %197 = phi float [ %187, %184 ], [ %166, %179 ]
  %198 = phi float [ %192, %184 ], [ %167, %179 ]
  %199 = phi float [ %188, %184 ], [ %168, %179 ]
  %200 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 5
  %201 = getelementptr [16 x float], [16 x float]* %14, i32 0, i32 5
  %202 = getelementptr [16 x float], [16 x float]* %15, i32 0, i32 5
  store float %181, float* %200, align 4
  store float %182, float* %201, align 4
  store float %183, float* %202, align 4
  br i1 %18, label %210, label %203, !dx.controlflow.hints !21

; <label>:203                                     ; preds = %193
  %204 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 5
  %205 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 5
  %206 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 5
  store float %196, float* %204, align 4
  store float %195, float* %205, align 4
  store float %199, float* %206, align 4
  %207 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 5
  %208 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 5
  %209 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 5
  store float %194, float* %207, align 4
  store float %197, float* %208, align 4
  store float %198, float* %209, align 4
  br label %210

; <label>:210                                     ; preds = %203, %193
  %211 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %84, i32 %148, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %212 = extractvalue %dx.types.ResRet.f32 %211, 0
  %213 = extractvalue %dx.types.ResRet.f32 %211, 1
  %214 = extractvalue %dx.types.ResRet.f32 %211, 2
  br i1 %18, label %224, label %215, !dx.controlflow.hints !20

; <label>:215                                     ; preds = %210
  %216 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %84, i32 %148, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %217 = extractvalue %dx.types.ResRet.f32 %216, 0
  %218 = extractvalue %dx.types.ResRet.f32 %216, 1
  %219 = extractvalue %dx.types.ResRet.f32 %216, 2
  %220 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 0, i32 %84, i32 %148, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %221 = extractvalue %dx.types.ResRet.f32 %220, 0
  %222 = extractvalue %dx.types.ResRet.f32 %220, 1
  %223 = extractvalue %dx.types.ResRet.f32 %220, 2
  br label %224

; <label>:224                                     ; preds = %215, %210
  %225 = phi float [ %221, %215 ], [ %194, %210 ]
  %226 = phi float [ %217, %215 ], [ %195, %210 ]
  %227 = phi float [ %222, %215 ], [ %196, %210 ]
  %228 = phi float [ %218, %215 ], [ %197, %210 ]
  %229 = phi float [ %223, %215 ], [ %198, %210 ]
  %230 = phi float [ %219, %215 ], [ %199, %210 ]
  %231 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 6
  %232 = getelementptr [16 x float], [16 x float]* %14, i32 0, i32 6
  %233 = getelementptr [16 x float], [16 x float]* %15, i32 0, i32 6
  store float %212, float* %231, align 4
  store float %213, float* %232, align 4
  store float %214, float* %233, align 4
  br i1 %18, label %241, label %234, !dx.controlflow.hints !21

; <label>:234                                     ; preds = %224
  %235 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 6
  %236 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 6
  %237 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 6
  store float %227, float* %235, align 4
  store float %226, float* %236, align 4
  store float %230, float* %237, align 4
  %238 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 6
  %239 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 6
  %240 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 6
  store float %225, float* %238, align 4
  store float %228, float* %239, align 4
  store float %229, float* %240, align 4
  br label %241

; <label>:241                                     ; preds = %234, %224
  %242 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %116, i32 %148, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %243 = extractvalue %dx.types.ResRet.f32 %242, 0
  %244 = extractvalue %dx.types.ResRet.f32 %242, 1
  %245 = extractvalue %dx.types.ResRet.f32 %242, 2
  br i1 %18, label %255, label %246, !dx.controlflow.hints !20

; <label>:246                                     ; preds = %241
  %247 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %116, i32 %148, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %248 = extractvalue %dx.types.ResRet.f32 %247, 0
  %249 = extractvalue %dx.types.ResRet.f32 %247, 1
  %250 = extractvalue %dx.types.ResRet.f32 %247, 2
  %251 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 0, i32 %116, i32 %148, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %252 = extractvalue %dx.types.ResRet.f32 %251, 0
  %253 = extractvalue %dx.types.ResRet.f32 %251, 1
  %254 = extractvalue %dx.types.ResRet.f32 %251, 2
  br label %255

; <label>:255                                     ; preds = %246, %241
  %256 = phi float [ %252, %246 ], [ %225, %241 ]
  %257 = phi float [ %248, %246 ], [ %226, %241 ]
  %258 = phi float [ %253, %246 ], [ %227, %241 ]
  %259 = phi float [ %249, %246 ], [ %228, %241 ]
  %260 = phi float [ %254, %246 ], [ %229, %241 ]
  %261 = phi float [ %250, %246 ], [ %230, %241 ]
  %262 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 7
  %263 = getelementptr [16 x float], [16 x float]* %14, i32 0, i32 7
  %264 = getelementptr [16 x float], [16 x float]* %15, i32 0, i32 7
  store float %243, float* %262, align 4
  store float %244, float* %263, align 4
  store float %245, float* %264, align 4
  br i1 %18, label %272, label %265, !dx.controlflow.hints !21

; <label>:265                                     ; preds = %255
  %266 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 7
  %267 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 7
  %268 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 7
  store float %258, float* %266, align 4
  store float %257, float* %267, align 4
  store float %261, float* %268, align 4
  %269 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 7
  %270 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 7
  %271 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 7
  store float %256, float* %269, align 4
  store float %259, float* %270, align 4
  store float %260, float* %271, align 4
  br label %272

; <label>:272                                     ; preds = %265, %255
  %273 = or i32 %20, 2
  %274 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %19, i32 %273, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %275 = extractvalue %dx.types.ResRet.f32 %274, 0
  %276 = extractvalue %dx.types.ResRet.f32 %274, 1
  %277 = extractvalue %dx.types.ResRet.f32 %274, 2
  br i1 %18, label %287, label %278, !dx.controlflow.hints !20

; <label>:278                                     ; preds = %272
  %279 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %19, i32 %273, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %280 = extractvalue %dx.types.ResRet.f32 %279, 0
  %281 = extractvalue %dx.types.ResRet.f32 %279, 1
  %282 = extractvalue %dx.types.ResRet.f32 %279, 2
  %283 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 0, i32 %19, i32 %273, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %284 = extractvalue %dx.types.ResRet.f32 %283, 0
  %285 = extractvalue %dx.types.ResRet.f32 %283, 1
  %286 = extractvalue %dx.types.ResRet.f32 %283, 2
  br label %287

; <label>:287                                     ; preds = %278, %272
  %288 = phi float [ %284, %278 ], [ %256, %272 ]
  %289 = phi float [ %280, %278 ], [ %257, %272 ]
  %290 = phi float [ %285, %278 ], [ %258, %272 ]
  %291 = phi float [ %281, %278 ], [ %259, %272 ]
  %292 = phi float [ %286, %278 ], [ %260, %272 ]
  %293 = phi float [ %282, %278 ], [ %261, %272 ]
  %294 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 8
  %295 = getelementptr [16 x float], [16 x float]* %14, i32 0, i32 8
  %296 = getelementptr [16 x float], [16 x float]* %15, i32 0, i32 8
  store float %275, float* %294, align 4
  store float %276, float* %295, align 4
  store float %277, float* %296, align 4
  br i1 %18, label %304, label %297, !dx.controlflow.hints !21

; <label>:297                                     ; preds = %287
  %298 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 8
  %299 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 8
  %300 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 8
  store float %290, float* %298, align 4
  store float %289, float* %299, align 4
  store float %293, float* %300, align 4
  %301 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 8
  %302 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 8
  %303 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 8
  store float %288, float* %301, align 4
  store float %291, float* %302, align 4
  store float %292, float* %303, align 4
  br label %304

; <label>:304                                     ; preds = %297, %287
  %305 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %52, i32 %273, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %306 = extractvalue %dx.types.ResRet.f32 %305, 0
  %307 = extractvalue %dx.types.ResRet.f32 %305, 1
  %308 = extractvalue %dx.types.ResRet.f32 %305, 2
  br i1 %18, label %318, label %309, !dx.controlflow.hints !20

; <label>:309                                     ; preds = %304
  %310 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %52, i32 %273, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %311 = extractvalue %dx.types.ResRet.f32 %310, 0
  %312 = extractvalue %dx.types.ResRet.f32 %310, 1
  %313 = extractvalue %dx.types.ResRet.f32 %310, 2
  %314 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 0, i32 %52, i32 %273, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %315 = extractvalue %dx.types.ResRet.f32 %314, 0
  %316 = extractvalue %dx.types.ResRet.f32 %314, 1
  %317 = extractvalue %dx.types.ResRet.f32 %314, 2
  br label %318

; <label>:318                                     ; preds = %309, %304
  %319 = phi float [ %315, %309 ], [ %288, %304 ]
  %320 = phi float [ %311, %309 ], [ %289, %304 ]
  %321 = phi float [ %316, %309 ], [ %290, %304 ]
  %322 = phi float [ %312, %309 ], [ %291, %304 ]
  %323 = phi float [ %317, %309 ], [ %292, %304 ]
  %324 = phi float [ %313, %309 ], [ %293, %304 ]
  %325 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 9
  %326 = getelementptr [16 x float], [16 x float]* %14, i32 0, i32 9
  %327 = getelementptr [16 x float], [16 x float]* %15, i32 0, i32 9
  store float %306, float* %325, align 4
  store float %307, float* %326, align 4
  store float %308, float* %327, align 4
  br i1 %18, label %335, label %328, !dx.controlflow.hints !21

; <label>:328                                     ; preds = %318
  %329 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 9
  %330 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 9
  %331 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 9
  store float %321, float* %329, align 4
  store float %320, float* %330, align 4
  store float %324, float* %331, align 4
  %332 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 9
  %333 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 9
  %334 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 9
  store float %319, float* %332, align 4
  store float %322, float* %333, align 4
  store float %323, float* %334, align 4
  br label %335

; <label>:335                                     ; preds = %328, %318
  %336 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %84, i32 %273, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %337 = extractvalue %dx.types.ResRet.f32 %336, 0
  %338 = extractvalue %dx.types.ResRet.f32 %336, 1
  %339 = extractvalue %dx.types.ResRet.f32 %336, 2
  br i1 %18, label %349, label %340, !dx.controlflow.hints !20

; <label>:340                                     ; preds = %335
  %341 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %84, i32 %273, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %342 = extractvalue %dx.types.ResRet.f32 %341, 0
  %343 = extractvalue %dx.types.ResRet.f32 %341, 1
  %344 = extractvalue %dx.types.ResRet.f32 %341, 2
  %345 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 0, i32 %84, i32 %273, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %346 = extractvalue %dx.types.ResRet.f32 %345, 0
  %347 = extractvalue %dx.types.ResRet.f32 %345, 1
  %348 = extractvalue %dx.types.ResRet.f32 %345, 2
  br label %349

; <label>:349                                     ; preds = %340, %335
  %350 = phi float [ %346, %340 ], [ %319, %335 ]
  %351 = phi float [ %342, %340 ], [ %320, %335 ]
  %352 = phi float [ %347, %340 ], [ %321, %335 ]
  %353 = phi float [ %343, %340 ], [ %322, %335 ]
  %354 = phi float [ %348, %340 ], [ %323, %335 ]
  %355 = phi float [ %344, %340 ], [ %324, %335 ]
  %356 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 10
  %357 = getelementptr [16 x float], [16 x float]* %14, i32 0, i32 10
  %358 = getelementptr [16 x float], [16 x float]* %15, i32 0, i32 10
  store float %337, float* %356, align 4
  store float %338, float* %357, align 4
  store float %339, float* %358, align 4
  br i1 %18, label %366, label %359, !dx.controlflow.hints !21

; <label>:359                                     ; preds = %349
  %360 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 10
  %361 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 10
  %362 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 10
  store float %352, float* %360, align 4
  store float %351, float* %361, align 4
  store float %355, float* %362, align 4
  %363 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 10
  %364 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 10
  %365 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 10
  store float %350, float* %363, align 4
  store float %353, float* %364, align 4
  store float %354, float* %365, align 4
  br label %366

; <label>:366                                     ; preds = %359, %349
  %367 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %116, i32 %273, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %368 = extractvalue %dx.types.ResRet.f32 %367, 0
  %369 = extractvalue %dx.types.ResRet.f32 %367, 1
  %370 = extractvalue %dx.types.ResRet.f32 %367, 2
  br i1 %18, label %380, label %371, !dx.controlflow.hints !20

; <label>:371                                     ; preds = %366
  %372 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %116, i32 %273, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %373 = extractvalue %dx.types.ResRet.f32 %372, 0
  %374 = extractvalue %dx.types.ResRet.f32 %372, 1
  %375 = extractvalue %dx.types.ResRet.f32 %372, 2
  %376 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 0, i32 %116, i32 %273, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %377 = extractvalue %dx.types.ResRet.f32 %376, 0
  %378 = extractvalue %dx.types.ResRet.f32 %376, 1
  %379 = extractvalue %dx.types.ResRet.f32 %376, 2
  br label %380

; <label>:380                                     ; preds = %371, %366
  %381 = phi float [ %377, %371 ], [ %350, %366 ]
  %382 = phi float [ %373, %371 ], [ %351, %366 ]
  %383 = phi float [ %378, %371 ], [ %352, %366 ]
  %384 = phi float [ %374, %371 ], [ %353, %366 ]
  %385 = phi float [ %379, %371 ], [ %354, %366 ]
  %386 = phi float [ %375, %371 ], [ %355, %366 ]
  %387 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 11
  %388 = getelementptr [16 x float], [16 x float]* %14, i32 0, i32 11
  %389 = getelementptr [16 x float], [16 x float]* %15, i32 0, i32 11
  store float %368, float* %387, align 4
  store float %369, float* %388, align 4
  store float %370, float* %389, align 4
  br i1 %18, label %397, label %390, !dx.controlflow.hints !21

; <label>:390                                     ; preds = %380
  %391 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 11
  %392 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 11
  %393 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 11
  store float %383, float* %391, align 4
  store float %382, float* %392, align 4
  store float %386, float* %393, align 4
  %394 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 11
  %395 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 11
  %396 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 11
  store float %381, float* %394, align 4
  store float %384, float* %395, align 4
  store float %385, float* %396, align 4
  br label %397

; <label>:397                                     ; preds = %390, %380
  %398 = or i32 %20, 3
  %399 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %19, i32 %398, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %400 = extractvalue %dx.types.ResRet.f32 %399, 0
  %401 = extractvalue %dx.types.ResRet.f32 %399, 1
  %402 = extractvalue %dx.types.ResRet.f32 %399, 2
  br i1 %18, label %412, label %403, !dx.controlflow.hints !20

; <label>:403                                     ; preds = %397
  %404 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %19, i32 %398, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %405 = extractvalue %dx.types.ResRet.f32 %404, 0
  %406 = extractvalue %dx.types.ResRet.f32 %404, 1
  %407 = extractvalue %dx.types.ResRet.f32 %404, 2
  %408 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 0, i32 %19, i32 %398, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %409 = extractvalue %dx.types.ResRet.f32 %408, 0
  %410 = extractvalue %dx.types.ResRet.f32 %408, 1
  %411 = extractvalue %dx.types.ResRet.f32 %408, 2
  br label %412

; <label>:412                                     ; preds = %403, %397
  %413 = phi float [ %409, %403 ], [ %381, %397 ]
  %414 = phi float [ %405, %403 ], [ %382, %397 ]
  %415 = phi float [ %410, %403 ], [ %383, %397 ]
  %416 = phi float [ %406, %403 ], [ %384, %397 ]
  %417 = phi float [ %411, %403 ], [ %385, %397 ]
  %418 = phi float [ %407, %403 ], [ %386, %397 ]
  %419 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 12
  %420 = getelementptr [16 x float], [16 x float]* %14, i32 0, i32 12
  %421 = getelementptr [16 x float], [16 x float]* %15, i32 0, i32 12
  store float %400, float* %419, align 4
  store float %401, float* %420, align 4
  store float %402, float* %421, align 4
  br i1 %18, label %429, label %422, !dx.controlflow.hints !21

; <label>:422                                     ; preds = %412
  %423 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 12
  %424 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 12
  %425 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 12
  store float %415, float* %423, align 4
  store float %414, float* %424, align 4
  store float %418, float* %425, align 4
  %426 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 12
  %427 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 12
  %428 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 12
  store float %413, float* %426, align 4
  store float %416, float* %427, align 4
  store float %417, float* %428, align 4
  br label %429

; <label>:429                                     ; preds = %422, %412
  %430 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %52, i32 %398, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %431 = extractvalue %dx.types.ResRet.f32 %430, 0
  %432 = extractvalue %dx.types.ResRet.f32 %430, 1
  %433 = extractvalue %dx.types.ResRet.f32 %430, 2
  br i1 %18, label %443, label %434, !dx.controlflow.hints !20

; <label>:434                                     ; preds = %429
  %435 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %52, i32 %398, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %436 = extractvalue %dx.types.ResRet.f32 %435, 0
  %437 = extractvalue %dx.types.ResRet.f32 %435, 1
  %438 = extractvalue %dx.types.ResRet.f32 %435, 2
  %439 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 0, i32 %52, i32 %398, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %440 = extractvalue %dx.types.ResRet.f32 %439, 0
  %441 = extractvalue %dx.types.ResRet.f32 %439, 1
  %442 = extractvalue %dx.types.ResRet.f32 %439, 2
  br label %443

; <label>:443                                     ; preds = %434, %429
  %444 = phi float [ %440, %434 ], [ %413, %429 ]
  %445 = phi float [ %436, %434 ], [ %414, %429 ]
  %446 = phi float [ %441, %434 ], [ %415, %429 ]
  %447 = phi float [ %437, %434 ], [ %416, %429 ]
  %448 = phi float [ %442, %434 ], [ %417, %429 ]
  %449 = phi float [ %438, %434 ], [ %418, %429 ]
  %450 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 13
  %451 = getelementptr [16 x float], [16 x float]* %14, i32 0, i32 13
  %452 = getelementptr [16 x float], [16 x float]* %15, i32 0, i32 13
  store float %431, float* %450, align 4
  store float %432, float* %451, align 4
  store float %433, float* %452, align 4
  br i1 %18, label %460, label %453, !dx.controlflow.hints !21

; <label>:453                                     ; preds = %443
  %454 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 13
  %455 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 13
  %456 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 13
  store float %446, float* %454, align 4
  store float %445, float* %455, align 4
  store float %449, float* %456, align 4
  %457 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 13
  %458 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 13
  %459 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 13
  store float %444, float* %457, align 4
  store float %447, float* %458, align 4
  store float %448, float* %459, align 4
  br label %460

; <label>:460                                     ; preds = %453, %443
  %461 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %84, i32 %398, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %462 = extractvalue %dx.types.ResRet.f32 %461, 0
  %463 = extractvalue %dx.types.ResRet.f32 %461, 1
  %464 = extractvalue %dx.types.ResRet.f32 %461, 2
  br i1 %18, label %474, label %465, !dx.controlflow.hints !20

; <label>:465                                     ; preds = %460
  %466 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %84, i32 %398, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %467 = extractvalue %dx.types.ResRet.f32 %466, 0
  %468 = extractvalue %dx.types.ResRet.f32 %466, 1
  %469 = extractvalue %dx.types.ResRet.f32 %466, 2
  %470 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 0, i32 %84, i32 %398, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %471 = extractvalue %dx.types.ResRet.f32 %470, 0
  %472 = extractvalue %dx.types.ResRet.f32 %470, 1
  %473 = extractvalue %dx.types.ResRet.f32 %470, 2
  br label %474

; <label>:474                                     ; preds = %465, %460
  %475 = phi float [ %471, %465 ], [ %444, %460 ]
  %476 = phi float [ %467, %465 ], [ %445, %460 ]
  %477 = phi float [ %472, %465 ], [ %446, %460 ]
  %478 = phi float [ %468, %465 ], [ %447, %460 ]
  %479 = phi float [ %473, %465 ], [ %448, %460 ]
  %480 = phi float [ %469, %465 ], [ %449, %460 ]
  %481 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 14
  %482 = getelementptr [16 x float], [16 x float]* %14, i32 0, i32 14
  %483 = getelementptr [16 x float], [16 x float]* %15, i32 0, i32 14
  store float %462, float* %481, align 4
  store float %463, float* %482, align 4
  store float %464, float* %483, align 4
  br i1 %18, label %491, label %484, !dx.controlflow.hints !21

; <label>:484                                     ; preds = %474
  %485 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 14
  %486 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 14
  %487 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 14
  store float %477, float* %485, align 4
  store float %476, float* %486, align 4
  store float %480, float* %487, align 4
  %488 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 14
  %489 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 14
  %490 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 14
  store float %475, float* %488, align 4
  store float %478, float* %489, align 4
  store float %479, float* %490, align 4
  br label %491

; <label>:491                                     ; preds = %484, %474
  %492 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %116, i32 %398, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %493 = extractvalue %dx.types.ResRet.f32 %492, 0
  %494 = extractvalue %dx.types.ResRet.f32 %492, 1
  %495 = extractvalue %dx.types.ResRet.f32 %492, 2
  br i1 %18, label %505, label %496, !dx.controlflow.hints !20

; <label>:496                                     ; preds = %491
  %497 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %116, i32 %398, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %498 = extractvalue %dx.types.ResRet.f32 %497, 0
  %499 = extractvalue %dx.types.ResRet.f32 %497, 1
  %500 = extractvalue %dx.types.ResRet.f32 %497, 2
  %501 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 0, i32 %116, i32 %398, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %502 = extractvalue %dx.types.ResRet.f32 %501, 0
  %503 = extractvalue %dx.types.ResRet.f32 %501, 1
  %504 = extractvalue %dx.types.ResRet.f32 %501, 2
  br label %505

; <label>:505                                     ; preds = %496, %491
  %506 = phi float [ %502, %496 ], [ %475, %491 ]
  %507 = phi float [ %498, %496 ], [ %476, %491 ]
  %508 = phi float [ %503, %496 ], [ %477, %491 ]
  %509 = phi float [ %499, %496 ], [ %478, %491 ]
  %510 = phi float [ %504, %496 ], [ %479, %491 ]
  %511 = phi float [ %500, %496 ], [ %480, %491 ]
  %512 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 15
  %513 = getelementptr [16 x float], [16 x float]* %14, i32 0, i32 15
  %514 = getelementptr [16 x float], [16 x float]* %15, i32 0, i32 15
  store float %493, float* %512, align 4
  store float %494, float* %513, align 4
  store float %495, float* %514, align 4
  br i1 %18, label %522, label %515, !dx.controlflow.hints !21

; <label>:515                                     ; preds = %505
  %516 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 15
  %517 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 15
  %518 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 15
  store float %508, float* %516, align 4
  store float %507, float* %517, align 4
  store float %511, float* %518, align 4
  %519 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 15
  %520 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 15
  %521 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 15
  store float %506, float* %519, align 4
  store float %509, float* %520, align 4
  store float %510, float* %521, align 4
  br label %522

; <label>:522                                     ; preds = %515, %505
  br label %523

; <label>:523                                     ; preds = %542, %522
  %524 = phi float [ %548, %542 ], [ %56, %522 ]
  %525 = phi float [ %546, %542 ], [ %55, %522 ]
  %526 = phi float [ %544, %542 ], [ %54, %522 ]
  %527 = phi float [ %537, %542 ], [ %22, %522 ]
  %528 = phi float [ %538, %542 ], [ %23, %522 ]
  %529 = phi float [ %539, %542 ], [ %24, %522 ]
  %530 = phi float [ %534, %542 ], [ %22, %522 ]
  %531 = phi float [ %535, %542 ], [ %23, %522 ]
  %532 = phi float [ %536, %542 ], [ %24, %522 ]
  %533 = phi i32 [ %540, %542 ], [ 1, %522 ]
  %534 = call float @dx.op.binary.f32(i32 36, float %530, float %526)  ; FMin(a,b)
  %535 = call float @dx.op.binary.f32(i32 36, float %531, float %525)  ; FMin(a,b)
  %536 = call float @dx.op.binary.f32(i32 36, float %532, float %524)  ; FMin(a,b)
  %537 = call float @dx.op.binary.f32(i32 35, float %527, float %526)  ; FMax(a,b)
  %538 = call float @dx.op.binary.f32(i32 35, float %528, float %525)  ; FMax(a,b)
  %539 = call float @dx.op.binary.f32(i32 35, float %529, float %524)  ; FMax(a,b)
  %540 = add nuw nsw i32 %533, 1
  %541 = icmp eq i32 %540, 16
  br i1 %541, label %549, label %542

; <label>:542                                     ; preds = %523
  %543 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 %540
  %544 = load float, float* %543, align 4
  %545 = getelementptr [16 x float], [16 x float]* %14, i32 0, i32 %540
  %546 = load float, float* %545, align 4
  %547 = getelementptr [16 x float], [16 x float]* %15, i32 0, i32 %540
  %548 = load float, float* %547, align 4
  br label %523

; <label>:549                                     ; preds = %523
  %550 = fsub fast float %537, %534
  %551 = fsub fast float %538, %535
  %552 = fsub fast float %539, %536
  %553 = fmul fast float %550, 6.250000e-02
  %554 = fmul fast float %551, 6.250000e-02
  %555 = fmul fast float %552, 6.250000e-02
  %556 = fsub fast float %537, %553
  %557 = fsub fast float %538, %554
  %558 = fsub fast float %539, %555
  %559 = fmul fast float %556, 2.550000e+02
  %560 = fmul fast float %557, 2.550000e+02
  %561 = fmul fast float %558, 2.550000e+02
  %562 = call float @dx.op.unary.f32(i32 28, float %559)  ; Round_pi(value)
  %563 = call float @dx.op.unary.f32(i32 28, float %560)  ; Round_pi(value)
  %564 = call float @dx.op.unary.f32(i32 28, float %561)  ; Round_pi(value)
  %565 = fmul fast float %562, 0x3F70101020000000
  %566 = fmul fast float %563, 0x3F70101020000000
  %567 = fmul fast float %564, 0x3F70101020000000
  %568 = fadd fast float %553, %534
  %569 = fadd fast float %554, %535
  %570 = fadd fast float %555, %536
  %571 = fmul fast float %568, 2.550000e+02
  %572 = fmul fast float %569, 2.550000e+02
  %573 = fmul fast float %570, 2.550000e+02
  %574 = call float @dx.op.unary.f32(i32 27, float %571)  ; Round_ni(value)
  %575 = call float @dx.op.unary.f32(i32 27, float %572)  ; Round_ni(value)
  %576 = call float @dx.op.unary.f32(i32 27, float %573)  ; Round_ni(value)
  %577 = fmul fast float %574, 0x3FBF1F1F40000000
  %578 = fmul fast float %575, 0x3FCF9F9FC0000000
  %579 = fmul fast float %576, 0x3FBF1F1F40000000
  %580 = call float @dx.op.unary.f32(i32 26, float %577)  ; Round_ne(value)
  %581 = call float @dx.op.unary.f32(i32 26, float %578)  ; Round_ne(value)
  %582 = call float @dx.op.unary.f32(i32 26, float %579)  ; Round_ne(value)
  %583 = fptoui float %580 to i32
  %584 = fptoui float %581 to i32
  %585 = fptoui float %582 to i32
  %586 = shl i32 %583, 11
  %587 = shl i32 %584, 5
  %588 = or i32 %587, %586
  %589 = or i32 %588, %585
  %590 = fmul fast float %562, 0x3FBF1F1F40000000
  %591 = fmul fast float %563, 0x3FCF9F9FC0000000
  %592 = fmul fast float %564, 0x3FBF1F1F40000000
  %593 = call float @dx.op.unary.f32(i32 26, float %590)  ; Round_ne(value)
  %594 = call float @dx.op.unary.f32(i32 26, float %591)  ; Round_ne(value)
  %595 = call float @dx.op.unary.f32(i32 26, float %592)  ; Round_ne(value)
  %596 = fptoui float %593 to i32
  %597 = fptoui float %594 to i32
  %598 = fptoui float %595 to i32
  %599 = shl i32 %596, 11
  %600 = shl i32 %597, 5
  %601 = or i32 %600, %599
  %602 = or i32 %601, %598
  %603 = icmp ult i32 %589, %602
  br i1 %603, label %604, label %652, !dx.controlflow.hints !22

; <label>:604                                     ; preds = %549
  %605 = fmul fast float %576, 0x3F70101020000000
  %606 = fmul fast float %575, 0x3F70101020000000
  %607 = fmul fast float %574, 0x3F70101020000000
  %608 = fsub fast float %574, %562
  %609 = fmul fast float %608, 0x3F70101020000000
  %610 = fsub fast float %575, %563
  %611 = fmul fast float %610, 0x3F70101020000000
  %612 = fsub fast float %576, %564
  %613 = fmul fast float %612, 0x3F70101020000000
  %614 = call float @dx.op.dot3.f32(i32 55, float %609, float %611, float %613, float %609, float %611, float %613)  ; Dot3(ax,ay,az,bx,by,bz)
  %615 = fdiv fast float 3.000000e+00, %614
  %616 = fmul fast float %615, %609
  %617 = fmul fast float %615, %611
  %618 = fmul fast float %615, %613
  %619 = call float @dx.op.dot3.f32(i32 55, float %565, float %566, float %567, float %565, float %566, float %567)  ; Dot3(ax,ay,az,bx,by,bz)
  %620 = call float @dx.op.dot3.f32(i32 55, float %565, float %566, float %567, float %607, float %606, float %605)  ; Dot3(ax,ay,az,bx,by,bz)
  %621 = fsub fast float %619, %620
  %622 = fmul fast float %621, %615
  br label %623

; <label>:623                                     ; preds = %644, %604
  %624 = phi float [ %495, %604 ], [ %650, %644 ]
  %625 = phi float [ %494, %604 ], [ %648, %644 ]
  %626 = phi float [ %493, %604 ], [ %646, %644 ]
  %627 = phi i32 [ 0, %604 ], [ %641, %644 ]
  %628 = phi i32 [ 15, %604 ], [ %642, %644 ]
  %629 = call float @dx.op.dot3.f32(i32 55, float %626, float %625, float %624, float %616, float %617, float %618)  ; Dot3(ax,ay,az,bx,by,bz)
  %630 = fadd fast float %629, %622
  %631 = call float @dx.op.unary.f32(i32 26, float %630)  ; Round_ne(value)
  %632 = fptoui float %631 to i32
  %633 = and i32 %632, 1
  %634 = lshr i32 %632, 1
  %635 = xor i32 %633, %634
  %636 = shl nuw i32 %635, 1
  %637 = or i32 %634, %627
  %638 = or i32 %637, %636
  %639 = icmp ne i32 %628, 0
  %640 = shl i32 %638, 2
  %641 = select i1 %639, i32 %640, i32 %638
  %642 = add nsw i32 %628, -1
  %643 = icmp sgt i32 %628, 0
  br i1 %643, label %644, label %651

; <label>:644                                     ; preds = %623
  %645 = getelementptr [16 x float], [16 x float]* %13, i32 0, i32 %642
  %646 = load float, float* %645, align 4
  %647 = getelementptr [16 x float], [16 x float]* %14, i32 0, i32 %642
  %648 = load float, float* %647, align 4
  %649 = getelementptr [16 x float], [16 x float]* %15, i32 0, i32 %642
  %650 = load float, float* %649, align 4
  br label %623

; <label>:651                                     ; preds = %623
  br label %652

; <label>:652                                     ; preds = %651, %549
  %653 = phi i32 [ 0, %549 ], [ %641, %651 ]
  %654 = shl i32 %589, 16
  %655 = or i32 %602, %654
  %656 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %656, i32 %5, i32 %6, i32 undef, i32 %655, i32 %653, i32 0, i32 0, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br i1 %18, label %926, label %657, !dx.controlflow.hints !23

; <label>:657                                     ; preds = %652
  br label %658

; <label>:658                                     ; preds = %677, %657
  %659 = phi float [ %683, %677 ], [ %72, %657 ]
  %660 = phi float [ %681, %677 ], [ %68, %657 ]
  %661 = phi float [ %679, %677 ], [ %69, %657 ]
  %662 = phi i32 [ %675, %677 ], [ 1, %657 ]
  %663 = phi float [ %669, %677 ], [ %37, %657 ]
  %664 = phi float [ %670, %677 ], [ %36, %657 ]
  %665 = phi float [ %671, %677 ], [ %40, %657 ]
  %666 = phi float [ %672, %677 ], [ %37, %657 ]
  %667 = phi float [ %673, %677 ], [ %36, %657 ]
  %668 = phi float [ %674, %677 ], [ %40, %657 ]
  %669 = call float @dx.op.binary.f32(i32 36, float %663, float %661)  ; FMin(a,b)
  %670 = call float @dx.op.binary.f32(i32 36, float %664, float %660)  ; FMin(a,b)
  %671 = call float @dx.op.binary.f32(i32 36, float %665, float %659)  ; FMin(a,b)
  %672 = call float @dx.op.binary.f32(i32 35, float %666, float %661)  ; FMax(a,b)
  %673 = call float @dx.op.binary.f32(i32 35, float %667, float %660)  ; FMax(a,b)
  %674 = call float @dx.op.binary.f32(i32 35, float %668, float %659)  ; FMax(a,b)
  %675 = add nuw nsw i32 %662, 1
  %676 = icmp eq i32 %675, 16
  br i1 %676, label %684, label %677

; <label>:677                                     ; preds = %658
  %678 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 %675
  %679 = load float, float* %678, align 4
  %680 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 %675
  %681 = load float, float* %680, align 4
  %682 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 %675
  %683 = load float, float* %682, align 4
  br label %658

; <label>:684                                     ; preds = %658
  %685 = fsub fast float %672, %669
  %686 = fsub fast float %673, %670
  %687 = fsub fast float %674, %671
  %688 = fmul fast float %685, 6.250000e-02
  %689 = fmul fast float %686, 6.250000e-02
  %690 = fmul fast float %687, 6.250000e-02
  %691 = fsub fast float %672, %688
  %692 = fsub fast float %673, %689
  %693 = fsub fast float %674, %690
  %694 = fmul fast float %691, 2.550000e+02
  %695 = fmul fast float %692, 2.550000e+02
  %696 = fmul fast float %693, 2.550000e+02
  %697 = call float @dx.op.unary.f32(i32 28, float %694)  ; Round_pi(value)
  %698 = call float @dx.op.unary.f32(i32 28, float %695)  ; Round_pi(value)
  %699 = call float @dx.op.unary.f32(i32 28, float %696)  ; Round_pi(value)
  %700 = fmul fast float %697, 0x3F70101020000000
  %701 = fmul fast float %698, 0x3F70101020000000
  %702 = fmul fast float %699, 0x3F70101020000000
  %703 = fadd fast float %688, %669
  %704 = fadd fast float %689, %670
  %705 = fadd fast float %690, %671
  %706 = fmul fast float %703, 2.550000e+02
  %707 = fmul fast float %704, 2.550000e+02
  %708 = fmul fast float %705, 2.550000e+02
  %709 = call float @dx.op.unary.f32(i32 27, float %706)  ; Round_ni(value)
  %710 = call float @dx.op.unary.f32(i32 27, float %707)  ; Round_ni(value)
  %711 = call float @dx.op.unary.f32(i32 27, float %708)  ; Round_ni(value)
  %712 = fmul fast float %709, 0x3FBF1F1F40000000
  %713 = fmul fast float %710, 0x3FCF9F9FC0000000
  %714 = fmul fast float %711, 0x3FBF1F1F40000000
  %715 = call float @dx.op.unary.f32(i32 26, float %712)  ; Round_ne(value)
  %716 = call float @dx.op.unary.f32(i32 26, float %713)  ; Round_ne(value)
  %717 = call float @dx.op.unary.f32(i32 26, float %714)  ; Round_ne(value)
  %718 = fptoui float %715 to i32
  %719 = fptoui float %716 to i32
  %720 = fptoui float %717 to i32
  %721 = shl i32 %718, 11
  %722 = shl i32 %719, 5
  %723 = or i32 %722, %721
  %724 = or i32 %723, %720
  %725 = fmul fast float %697, 0x3FBF1F1F40000000
  %726 = fmul fast float %698, 0x3FCF9F9FC0000000
  %727 = fmul fast float %699, 0x3FBF1F1F40000000
  %728 = call float @dx.op.unary.f32(i32 26, float %725)  ; Round_ne(value)
  %729 = call float @dx.op.unary.f32(i32 26, float %726)  ; Round_ne(value)
  %730 = call float @dx.op.unary.f32(i32 26, float %727)  ; Round_ne(value)
  %731 = fptoui float %728 to i32
  %732 = fptoui float %729 to i32
  %733 = fptoui float %730 to i32
  %734 = shl i32 %731, 11
  %735 = shl i32 %732, 5
  %736 = or i32 %735, %734
  %737 = or i32 %736, %733
  %738 = icmp ult i32 %724, %737
  br i1 %738, label %739, label %787, !dx.controlflow.hints !22

; <label>:739                                     ; preds = %684
  %740 = fmul fast float %711, 0x3F70101020000000
  %741 = fmul fast float %710, 0x3F70101020000000
  %742 = fmul fast float %709, 0x3F70101020000000
  %743 = fsub fast float %709, %697
  %744 = fmul fast float %743, 0x3F70101020000000
  %745 = fsub fast float %710, %698
  %746 = fmul fast float %745, 0x3F70101020000000
  %747 = fsub fast float %711, %699
  %748 = fmul fast float %747, 0x3F70101020000000
  %749 = call float @dx.op.dot3.f32(i32 55, float %744, float %746, float %748, float %744, float %746, float %748)  ; Dot3(ax,ay,az,bx,by,bz)
  %750 = fdiv fast float 3.000000e+00, %749
  %751 = fmul fast float %750, %744
  %752 = fmul fast float %750, %746
  %753 = fmul fast float %750, %748
  %754 = call float @dx.op.dot3.f32(i32 55, float %700, float %701, float %702, float %700, float %701, float %702)  ; Dot3(ax,ay,az,bx,by,bz)
  %755 = call float @dx.op.dot3.f32(i32 55, float %700, float %701, float %702, float %742, float %741, float %740)  ; Dot3(ax,ay,az,bx,by,bz)
  %756 = fsub fast float %754, %755
  %757 = fmul fast float %756, %750
  br label %758

; <label>:758                                     ; preds = %779, %739
  %759 = phi float [ %511, %739 ], [ %785, %779 ]
  %760 = phi float [ %507, %739 ], [ %783, %779 ]
  %761 = phi float [ %508, %739 ], [ %781, %779 ]
  %762 = phi i32 [ 15, %739 ], [ %777, %779 ]
  %763 = phi i32 [ 0, %739 ], [ %776, %779 ]
  %764 = call float @dx.op.dot3.f32(i32 55, float %761, float %760, float %759, float %751, float %752, float %753)  ; Dot3(ax,ay,az,bx,by,bz)
  %765 = fadd fast float %764, %757
  %766 = call float @dx.op.unary.f32(i32 26, float %765)  ; Round_ne(value)
  %767 = fptoui float %766 to i32
  %768 = and i32 %767, 1
  %769 = lshr i32 %767, 1
  %770 = xor i32 %768, %769
  %771 = shl nuw i32 %770, 1
  %772 = or i32 %769, %763
  %773 = or i32 %772, %771
  %774 = icmp ne i32 %762, 0
  %775 = shl i32 %773, 2
  %776 = select i1 %774, i32 %775, i32 %773
  %777 = add nsw i32 %762, -1
  %778 = icmp sgt i32 %762, 0
  br i1 %778, label %779, label %786

; <label>:779                                     ; preds = %758
  %780 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 %777
  %781 = load float, float* %780, align 4
  %782 = getelementptr [16 x float], [16 x float]* %11, i32 0, i32 %777
  %783 = load float, float* %782, align 4
  %784 = getelementptr [16 x float], [16 x float]* %12, i32 0, i32 %777
  %785 = load float, float* %784, align 4
  br label %758

; <label>:786                                     ; preds = %758
  br label %787

; <label>:787                                     ; preds = %786, %684
  %788 = phi i32 [ 0, %684 ], [ %776, %786 ]
  %789 = shl i32 %724, 16
  %790 = or i32 %737, %789
  %791 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %791, i32 %5, i32 %6, i32 undef, i32 %790, i32 %788, i32 0, i32 0, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %792

; <label>:792                                     ; preds = %811, %787
  %793 = phi float [ %71, %787 ], [ %817, %811 ]
  %794 = phi float [ %70, %787 ], [ %815, %811 ]
  %795 = phi float [ %67, %787 ], [ %813, %811 ]
  %796 = phi float [ %35, %787 ], [ %806, %811 ]
  %797 = phi float [ %38, %787 ], [ %807, %811 ]
  %798 = phi float [ %39, %787 ], [ %808, %811 ]
  %799 = phi float [ %35, %787 ], [ %803, %811 ]
  %800 = phi float [ %38, %787 ], [ %804, %811 ]
  %801 = phi float [ %39, %787 ], [ %805, %811 ]
  %802 = phi i32 [ 1, %787 ], [ %809, %811 ]
  %803 = call float @dx.op.binary.f32(i32 36, float %799, float %795)  ; FMin(a,b)
  %804 = call float @dx.op.binary.f32(i32 36, float %800, float %794)  ; FMin(a,b)
  %805 = call float @dx.op.binary.f32(i32 36, float %801, float %793)  ; FMin(a,b)
  %806 = call float @dx.op.binary.f32(i32 35, float %796, float %795)  ; FMax(a,b)
  %807 = call float @dx.op.binary.f32(i32 35, float %797, float %794)  ; FMax(a,b)
  %808 = call float @dx.op.binary.f32(i32 35, float %798, float %793)  ; FMax(a,b)
  %809 = add nuw nsw i32 %802, 1
  %810 = icmp eq i32 %809, 16
  br i1 %810, label %818, label %811

; <label>:811                                     ; preds = %792
  %812 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 %809
  %813 = load float, float* %812, align 4
  %814 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 %809
  %815 = load float, float* %814, align 4
  %816 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 %809
  %817 = load float, float* %816, align 4
  br label %792

; <label>:818                                     ; preds = %792
  %819 = fsub fast float %806, %803
  %820 = fsub fast float %807, %804
  %821 = fsub fast float %808, %805
  %822 = fmul fast float %819, 6.250000e-02
  %823 = fmul fast float %820, 6.250000e-02
  %824 = fmul fast float %821, 6.250000e-02
  %825 = fsub fast float %806, %822
  %826 = fsub fast float %807, %823
  %827 = fsub fast float %808, %824
  %828 = fmul fast float %825, 2.550000e+02
  %829 = fmul fast float %826, 2.550000e+02
  %830 = fmul fast float %827, 2.550000e+02
  %831 = call float @dx.op.unary.f32(i32 28, float %828)  ; Round_pi(value)
  %832 = call float @dx.op.unary.f32(i32 28, float %829)  ; Round_pi(value)
  %833 = call float @dx.op.unary.f32(i32 28, float %830)  ; Round_pi(value)
  %834 = fmul fast float %831, 0x3F70101020000000
  %835 = fmul fast float %832, 0x3F70101020000000
  %836 = fmul fast float %833, 0x3F70101020000000
  %837 = fadd fast float %822, %803
  %838 = fadd fast float %823, %804
  %839 = fadd fast float %824, %805
  %840 = fmul fast float %837, 2.550000e+02
  %841 = fmul fast float %838, 2.550000e+02
  %842 = fmul fast float %839, 2.550000e+02
  %843 = call float @dx.op.unary.f32(i32 27, float %840)  ; Round_ni(value)
  %844 = call float @dx.op.unary.f32(i32 27, float %841)  ; Round_ni(value)
  %845 = call float @dx.op.unary.f32(i32 27, float %842)  ; Round_ni(value)
  %846 = fmul fast float %843, 0x3FBF1F1F40000000
  %847 = fmul fast float %844, 0x3FCF9F9FC0000000
  %848 = fmul fast float %845, 0x3FBF1F1F40000000
  %849 = call float @dx.op.unary.f32(i32 26, float %846)  ; Round_ne(value)
  %850 = call float @dx.op.unary.f32(i32 26, float %847)  ; Round_ne(value)
  %851 = call float @dx.op.unary.f32(i32 26, float %848)  ; Round_ne(value)
  %852 = fptoui float %849 to i32
  %853 = fptoui float %850 to i32
  %854 = fptoui float %851 to i32
  %855 = shl i32 %852, 11
  %856 = shl i32 %853, 5
  %857 = or i32 %856, %855
  %858 = or i32 %857, %854
  %859 = fmul fast float %831, 0x3FBF1F1F40000000
  %860 = fmul fast float %832, 0x3FCF9F9FC0000000
  %861 = fmul fast float %833, 0x3FBF1F1F40000000
  %862 = call float @dx.op.unary.f32(i32 26, float %859)  ; Round_ne(value)
  %863 = call float @dx.op.unary.f32(i32 26, float %860)  ; Round_ne(value)
  %864 = call float @dx.op.unary.f32(i32 26, float %861)  ; Round_ne(value)
  %865 = fptoui float %862 to i32
  %866 = fptoui float %863 to i32
  %867 = fptoui float %864 to i32
  %868 = shl i32 %865, 11
  %869 = shl i32 %866, 5
  %870 = or i32 %869, %868
  %871 = or i32 %870, %867
  %872 = icmp ult i32 %858, %871
  br i1 %872, label %873, label %921, !dx.controlflow.hints !22

; <label>:873                                     ; preds = %818
  %874 = fmul fast float %845, 0x3F70101020000000
  %875 = fmul fast float %844, 0x3F70101020000000
  %876 = fmul fast float %843, 0x3F70101020000000
  %877 = fsub fast float %843, %831
  %878 = fmul fast float %877, 0x3F70101020000000
  %879 = fsub fast float %844, %832
  %880 = fmul fast float %879, 0x3F70101020000000
  %881 = fsub fast float %845, %833
  %882 = fmul fast float %881, 0x3F70101020000000
  %883 = call float @dx.op.dot3.f32(i32 55, float %878, float %880, float %882, float %878, float %880, float %882)  ; Dot3(ax,ay,az,bx,by,bz)
  %884 = fdiv fast float 3.000000e+00, %883
  %885 = fmul fast float %884, %878
  %886 = fmul fast float %884, %880
  %887 = fmul fast float %884, %882
  %888 = call float @dx.op.dot3.f32(i32 55, float %834, float %835, float %836, float %834, float %835, float %836)  ; Dot3(ax,ay,az,bx,by,bz)
  %889 = call float @dx.op.dot3.f32(i32 55, float %834, float %835, float %836, float %876, float %875, float %874)  ; Dot3(ax,ay,az,bx,by,bz)
  %890 = fsub fast float %888, %889
  %891 = fmul fast float %890, %884
  br label %892

; <label>:892                                     ; preds = %913, %873
  %893 = phi float [ %510, %873 ], [ %919, %913 ]
  %894 = phi float [ %509, %873 ], [ %917, %913 ]
  %895 = phi float [ %506, %873 ], [ %915, %913 ]
  %896 = phi i32 [ 0, %873 ], [ %910, %913 ]
  %897 = phi i32 [ 15, %873 ], [ %911, %913 ]
  %898 = call float @dx.op.dot3.f32(i32 55, float %895, float %894, float %893, float %885, float %886, float %887)  ; Dot3(ax,ay,az,bx,by,bz)
  %899 = fadd fast float %898, %891
  %900 = call float @dx.op.unary.f32(i32 26, float %899)  ; Round_ne(value)
  %901 = fptoui float %900 to i32
  %902 = and i32 %901, 1
  %903 = lshr i32 %901, 1
  %904 = xor i32 %902, %903
  %905 = shl nuw i32 %904, 1
  %906 = or i32 %903, %896
  %907 = or i32 %906, %905
  %908 = icmp ne i32 %897, 0
  %909 = shl i32 %907, 2
  %910 = select i1 %908, i32 %909, i32 %907
  %911 = add nsw i32 %897, -1
  %912 = icmp sgt i32 %897, 0
  br i1 %912, label %913, label %920

; <label>:913                                     ; preds = %892
  %914 = getelementptr [16 x float], [16 x float]* %7, i32 0, i32 %911
  %915 = load float, float* %914, align 4
  %916 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 %911
  %917 = load float, float* %916, align 4
  %918 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 %911
  %919 = load float, float* %918, align 4
  br label %892

; <label>:920                                     ; preds = %892
  br label %921

; <label>:921                                     ; preds = %920, %818
  %922 = phi i32 [ 0, %818 ], [ %910, %920 ]
  %923 = shl i32 %858, 16
  %924 = or i32 %871, %923
  %925 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %925, i32 %5, i32 %6, i32 undef, i32 %924, i32 %922, i32 0, i32 0, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %926

; <label>:926                                     ; preds = %921, %652
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

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
!dx.entryPoints = !{!17}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !10, !15, null}
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
!17 = !{void ()* @cs_physical_texture_compress_mip0_from_scratch_3, !"cs_physical_texture_compress_mip0_from_scratch_3", null, !4, !18}
!18 = !{i32 0, i64 256, i32 4, !19}
!19 = !{i32 8, i32 8, i32 1}
!20 = distinct !{!20, !"dx.controlflow.hints", i32 1}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 1}

