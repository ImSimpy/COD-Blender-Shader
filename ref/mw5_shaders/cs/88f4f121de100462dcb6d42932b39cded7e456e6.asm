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
; shader hash: 0c6388258ee91789659810f12c791869
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
;                                   texture     f32        2dMS      T0             t0     1
;                                   texture     u32          2d      T1             t3     1
;                                       UAV     f32          2d      U0             u1     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture2DMS<vector<float, 3>, 0>" = type { <3 x float>, %"class.Texture2DMS<vector<float, 3>, 0>::sample_type" }
%"class.Texture2DMS<vector<float, 3>, 0>::sample_type" = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%"class.RWTexture2D<vector<float, 3> >" = type { <3 x float> }

define void @cs_post_trans_resolve() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %5 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %6 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %7 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %8 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %9 = call i32 @dx.op.groupId.i32(i32 94, i32 1)  ; GroupId(component)
  %10 = alloca [4 x i32], align 4
  %11 = alloca [4 x i32], align 4
  %12 = alloca [4 x float], align 4
  %13 = alloca [4 x float], align 4
  %14 = alloca [4 x float], align 4
  %15 = alloca [4 x float], align 4
  %16 = alloca [4 x float], align 4
  %17 = alloca [4 x float], align 4
  %18 = alloca [4 x i32], align 4
  %19 = alloca [4 x i32], align 4
  %20 = shl i32 %8, 3
  %21 = shl i32 %9, 3
  %22 = add i32 %20, %6
  %23 = add i32 %21, %7
  %24 = getelementptr [4 x i32], [4 x i32]* %10, i32 0, i32 0
  %25 = getelementptr [4 x i32], [4 x i32]* %11, i32 0, i32 0
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  %26 = getelementptr [4 x i32], [4 x i32]* %10, i32 0, i32 1
  %27 = getelementptr [4 x i32], [4 x i32]* %11, i32 0, i32 1
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  %28 = getelementptr [4 x i32], [4 x i32]* %10, i32 0, i32 2
  %29 = getelementptr [4 x i32], [4 x i32]* %11, i32 0, i32 2
  store i32 0, i32* %28, align 4
  store i32 0, i32* %29, align 4
  %30 = getelementptr [4 x i32], [4 x i32]* %10, i32 0, i32 3
  %31 = getelementptr [4 x i32], [4 x i32]* %11, i32 0, i32 3
  store i32 0, i32* %30, align 4
  store i32 0, i32* %31, align 4
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i32 0, i32 0
  store i32 0, i32* %32, align 4, !tbaa !15
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i32 0, i32 1
  store i32 0, i32* %33, align 4, !tbaa !15
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i32 0, i32 2
  store i32 0, i32* %34, align 4, !tbaa !15
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i32 0, i32 3
  store i32 0, i32* %35, align 4, !tbaa !15
  %36 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i32 0, i32 0
  store i32 0, i32* %36, align 4, !tbaa !15
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i32 0, i32 1
  store i32 0, i32* %37, align 4, !tbaa !15
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i32 0, i32 2
  store i32 0, i32* %38, align 4, !tbaa !15
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i32 0, i32 3
  store i32 0, i32* %39, align 4, !tbaa !15
  %40 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %2, i32 0, i32 %22, i32 %23, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %41 = extractvalue %dx.types.ResRet.i32 %40, 0
  %42 = and i32 %41, 3
  %43 = icmp eq i32 %42, 3
  br i1 %43, label %44, label %45, !dx.controlflow.hints !19

; <label>:44                                      ; preds = %0
  store i32 0, i32* %32, align 4, !tbaa !15
  store i32 1, i32* %33, align 4, !tbaa !15
  store i32 2, i32* %34, align 4, !tbaa !15
  store i32 3, i32* %35, align 4, !tbaa !15
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  store i32 0, i32* %28, align 4
  store i32 0, i32* %29, align 4
  store i32 0, i32* %30, align 4
  store i32 0, i32* %31, align 4
  store i32 1, i32* %36, align 4, !tbaa !15
  store i32 2, i32* %37, align 4, !tbaa !15
  store i32 4, i32* %38, align 4, !tbaa !15
  store i32 8, i32* %39, align 4, !tbaa !15
  br label %52

; <label>:45                                      ; preds = %0
  %46 = icmp eq i32 %42, 1
  br i1 %46, label %47, label %48, !dx.controlflow.hints !20

; <label>:47                                      ; preds = %45
  store i32 0, i32* %32, align 4, !tbaa !15
  store i32 1, i32* %33, align 4, !tbaa !15
  store i32 0, i32* %34, align 4, !tbaa !15
  store i32 1, i32* %35, align 4, !tbaa !15
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  store i32 0, i32* %28, align 4
  store i32 1, i32* %29, align 4
  store i32 0, i32* %30, align 4
  store i32 1, i32* %31, align 4
  store i32 1, i32* %36, align 4, !tbaa !15
  store i32 2, i32* %37, align 4, !tbaa !15
  store i32 5, i32* %38, align 4, !tbaa !15
  store i32 10, i32* %39, align 4, !tbaa !15
  br label %52

; <label>:48                                      ; preds = %45
  %49 = icmp eq i32 %42, 2
  br i1 %49, label %50, label %51, !dx.controlflow.hints !21

; <label>:50                                      ; preds = %48
  store i32 0, i32* %32, align 4, !tbaa !15
  store i32 0, i32* %33, align 4, !tbaa !15
  store i32 2, i32* %34, align 4, !tbaa !15
  store i32 2, i32* %35, align 4, !tbaa !15
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 1, i32* %26, align 4
  store i32 0, i32* %27, align 4
  store i32 0, i32* %28, align 4
  store i32 0, i32* %29, align 4
  store i32 1, i32* %30, align 4
  store i32 0, i32* %31, align 4
  store i32 1, i32* %36, align 4, !tbaa !15
  store i32 3, i32* %37, align 4, !tbaa !15
  store i32 4, i32* %38, align 4, !tbaa !15
  store i32 12, i32* %39, align 4, !tbaa !15
  br label %52

; <label>:51                                      ; preds = %48
  store i32 0, i32* %32, align 4, !tbaa !15
  store i32 0, i32* %33, align 4, !tbaa !15
  store i32 0, i32* %34, align 4, !tbaa !15
  store i32 0, i32* %35, align 4, !tbaa !15
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 1, i32* %26, align 4
  store i32 0, i32* %27, align 4
  store i32 0, i32* %28, align 4
  store i32 1, i32* %29, align 4
  store i32 1, i32* %30, align 4
  store i32 1, i32* %31, align 4
  store i32 1, i32* %36, align 4, !tbaa !15
  store i32 3, i32* %37, align 4, !tbaa !15
  store i32 5, i32* %38, align 4, !tbaa !15
  store i32 15, i32* %39, align 4, !tbaa !15
  br label %52

; <label>:52                                      ; preds = %51, %50, %47, %44
  %53 = phi i32 [ 1, %47 ], [ 0, %51 ], [ 0, %50 ], [ 1, %44 ]
  %54 = phi i32 [ 0, %47 ], [ 1, %51 ], [ 1, %50 ], [ 0, %44 ]
  %55 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %22, i32 %23, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %56 = extractvalue %dx.types.ResRet.f32 %55, 0
  %57 = extractvalue %dx.types.ResRet.f32 %55, 1
  %58 = extractvalue %dx.types.ResRet.f32 %55, 2
  %59 = getelementptr [4 x float], [4 x float]* %12, i32 0, i32 0
  %60 = getelementptr [4 x float], [4 x float]* %13, i32 0, i32 0
  %61 = getelementptr [4 x float], [4 x float]* %14, i32 0, i32 0
  store float %56, float* %59, align 4
  store float %57, float* %60, align 4
  store float %58, float* %61, align 4
  br label %62

; <label>:62                                      ; preds = %82, %52
  %63 = phi i32 [ %53, %52 ], [ %88, %82 ]
  %64 = phi i32 [ 0, %52 ], [ %86, %82 ]
  %65 = phi i32 [ %54, %52 ], [ %84, %82 ]
  %66 = phi i32 [ 1, %52 ], [ %80, %82 ]
  %67 = add i32 %65, %22
  %68 = add i32 %64, %23
  %69 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %2, i32 0, i32 %67, i32 %68, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %70 = extractvalue %dx.types.ResRet.i32 %69, 0
  %71 = and i32 %70, 15
  %72 = and i32 %71, %63
  %73 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 %72, i32 %67, i32 %68, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %74 = extractvalue %dx.types.ResRet.f32 %73, 0
  %75 = extractvalue %dx.types.ResRet.f32 %73, 1
  %76 = extractvalue %dx.types.ResRet.f32 %73, 2
  %77 = getelementptr [4 x float], [4 x float]* %12, i32 0, i32 %66
  %78 = getelementptr [4 x float], [4 x float]* %13, i32 0, i32 %66
  %79 = getelementptr [4 x float], [4 x float]* %14, i32 0, i32 %66
  store float %74, float* %77, align 4
  store float %75, float* %78, align 4
  store float %76, float* %79, align 4
  %80 = add nuw nsw i32 %66, 1
  %81 = icmp eq i32 %80, 4
  br i1 %81, label %89, label %82

; <label>:82                                      ; preds = %62
  %83 = getelementptr [4 x i32], [4 x i32]* %10, i32 0, i32 %80
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr [4 x i32], [4 x i32]* %11, i32 0, i32 %80
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i32 0, i32 %80
  %88 = load i32, i32* %87, align 4, !tbaa !15
  br label %62

; <label>:89                                      ; preds = %62
  %90 = load float, float* %59, align 4
  %91 = load float, float* %60, align 4
  %92 = load float, float* %61, align 4
  %93 = getelementptr [4 x float], [4 x float]* %12, i32 0, i32 1
  %94 = load float, float* %93, align 4
  %95 = getelementptr [4 x float], [4 x float]* %13, i32 0, i32 1
  %96 = load float, float* %95, align 4
  %97 = getelementptr [4 x float], [4 x float]* %14, i32 0, i32 1
  %98 = load float, float* %97, align 4
  %99 = getelementptr [4 x float], [4 x float]* %12, i32 0, i32 2
  %100 = load float, float* %99, align 4
  %101 = getelementptr [4 x float], [4 x float]* %13, i32 0, i32 2
  %102 = load float, float* %101, align 4
  %103 = getelementptr [4 x float], [4 x float]* %14, i32 0, i32 2
  %104 = load float, float* %103, align 4
  %105 = getelementptr [4 x float], [4 x float]* %12, i32 0, i32 3
  %106 = load float, float* %105, align 4
  %107 = getelementptr [4 x float], [4 x float]* %13, i32 0, i32 3
  %108 = load float, float* %107, align 4
  %109 = getelementptr [4 x float], [4 x float]* %14, i32 0, i32 3
  %110 = load float, float* %109, align 4
  br label %111

; <label>:111                                     ; preds = %157, %89
  %112 = phi i32 [ %159, %157 ], [ 1, %89 ]
  %113 = phi i32 [ %155, %157 ], [ 0, %89 ]
  %114 = getelementptr [4 x float], [4 x float]* %15, i32 0, i32 %113
  %115 = getelementptr [4 x float], [4 x float]* %16, i32 0, i32 %113
  %116 = getelementptr [4 x float], [4 x float]* %17, i32 0, i32 %113
  %117 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %112)  ; Countbits(value)
  %118 = uitofp i32 %117 to float
  %119 = fdiv fast float 1.000000e+00, %118
  %120 = and i32 %112, 1
  %121 = uitofp i32 %120 to float
  %122 = fmul fast float %121, %90
  %123 = fmul fast float %121, %91
  %124 = fmul fast float %121, %92
  %125 = lshr i32 %112, 1
  %126 = and i32 %125, 1
  %127 = uitofp i32 %126 to float
  %128 = fmul fast float %127, %94
  %129 = fmul fast float %127, %96
  %130 = fmul fast float %127, %98
  %131 = fadd fast float %128, %122
  %132 = fadd fast float %129, %123
  %133 = fadd fast float %130, %124
  %134 = lshr i32 %112, 2
  %135 = and i32 %134, 1
  %136 = uitofp i32 %135 to float
  %137 = fmul fast float %136, %100
  %138 = fmul fast float %136, %102
  %139 = fmul fast float %136, %104
  %140 = fadd fast float %137, %131
  %141 = fadd fast float %138, %132
  %142 = fadd fast float %139, %133
  %143 = lshr i32 %112, 3
  %144 = and i32 %143, 1
  %145 = uitofp i32 %144 to float
  %146 = fmul fast float %145, %106
  %147 = fmul fast float %145, %108
  %148 = fmul fast float %145, %110
  %149 = fadd fast float %146, %140
  %150 = fadd fast float %147, %141
  %151 = fadd fast float %148, %142
  %152 = fmul fast float %149, %119
  %153 = fmul fast float %150, %119
  %154 = fmul fast float %151, %119
  store float %152, float* %114, align 4
  store float %153, float* %115, align 4
  store float %154, float* %116, align 4
  %155 = add nuw nsw i32 %113, 1
  %156 = icmp eq i32 %155, 4
  br i1 %156, label %160, label %157

; <label>:157                                     ; preds = %111
  %158 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i32 0, i32 %155
  %159 = load i32, i32* %158, align 4, !tbaa !15
  br label %111

; <label>:160                                     ; preds = %111
  %161 = shl i32 %4, 1
  %162 = shl i32 %5, 1
  %163 = getelementptr [4 x float], [4 x float]* %15, i32 0, i32 0
  %164 = getelementptr [4 x float], [4 x float]* %16, i32 0, i32 0
  %165 = getelementptr [4 x float], [4 x float]* %17, i32 0, i32 0
  %166 = load float, float* %163, align 4
  %167 = load float, float* %164, align 4
  %168 = load float, float* %165, align 4
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %161, i32 %162, i32 undef, float %166, float %167, float %168, float %166, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %169 = getelementptr [4 x float], [4 x float]* %15, i32 0, i32 1
  %170 = getelementptr [4 x float], [4 x float]* %16, i32 0, i32 1
  %171 = getelementptr [4 x float], [4 x float]* %17, i32 0, i32 1
  %172 = load float, float* %169, align 4
  %173 = load float, float* %170, align 4
  %174 = load float, float* %171, align 4
  %175 = or i32 %161, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %175, i32 %162, i32 undef, float %172, float %173, float %174, float %172, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %176 = getelementptr [4 x float], [4 x float]* %15, i32 0, i32 2
  %177 = getelementptr [4 x float], [4 x float]* %16, i32 0, i32 2
  %178 = getelementptr [4 x float], [4 x float]* %17, i32 0, i32 2
  %179 = load float, float* %176, align 4
  %180 = load float, float* %177, align 4
  %181 = load float, float* %178, align 4
  %182 = or i32 %162, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %161, i32 %182, i32 undef, float %179, float %180, float %181, float %179, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %183 = getelementptr [4 x float], [4 x float]* %15, i32 0, i32 3
  %184 = getelementptr [4 x float], [4 x float]* %16, i32 0, i32 3
  %185 = getelementptr [4 x float], [4 x float]* %17, i32 0, i32 3
  %186 = load float, float* %183, align 4
  %187 = load float, float* %184, align 4
  %188 = load float, float* %185, align 4
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %175, i32 %182, i32 undef, float %186, float %187, float %188, float %186, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

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
!dx.entryPoints = !{!12}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !10, null, null}
!5 = !{!6, !8}
!6 = !{i32 0, %"class.Texture2DMS<vector<float, 3>, 0>"* undef, !"", i32 0, i32 0, i32 1, i32 3, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<unsigned int>"* undef, !"", i32 0, i32 3, i32 1, i32 2, i32 0, !9}
!9 = !{i32 0, i32 5}
!10 = !{!11}
!11 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!12 = !{void ()* @cs_post_trans_resolve, !"cs_post_trans_resolve", null, !4, !13}
!13 = !{i32 0, i64 256, i32 4, !14}
!14 = !{i32 8, i32 8, i32 1}
!15 = !{!16, !16, i64 0}
!16 = !{!"int", !17, i64 0}
!17 = !{!"omnipotent char", !18, i64 0}
!18 = !{!"Simple C/C++ TBAA"}
!19 = distinct !{!19, !"dx.controlflow.hints", i32 2}
!20 = distinct !{!20, !"dx.controlflow.hints", i32 2}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}

