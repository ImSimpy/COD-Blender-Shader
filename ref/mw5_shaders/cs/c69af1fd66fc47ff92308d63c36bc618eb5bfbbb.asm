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
; shader hash: 6074c74f7abf9a9d3a5d189e844ebaca
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

@"\01?gs_mip1BlocksU@@3PAY0BA@$$CAMA.1dim" = addrspace(3) global [1024 x float] undef, align 4
@"\01?gs_mip1BlocksV@@3PAY0BA@$$CAMA.1dim" = addrspace(3) global [1024 x float] undef, align 4

define void @cs_bc5_compress_two_mips() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %7 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %8 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %9 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %10 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %11 = alloca [16 x float], align 4
  %12 = alloca [16 x float], align 4
  %13 = alloca [16 x float], align 4
  %14 = alloca [16 x float], align 4
  %15 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %16 = extractvalue %dx.types.CBufRet.f32 %15, 0
  %17 = shl i32 %6, 2
  %18 = shl i32 %7, 2
  %19 = uitofp i32 %17 to float
  %20 = uitofp i32 %18 to float
  %21 = fadd fast float %19, 1.000000e+00
  %22 = fadd fast float %20, 1.000000e+00
  %23 = fmul fast float %16, %21
  %24 = fmul fast float %16, %22
  %25 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %3, %dx.types.Handle %4, float %23, float %24, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %26 = extractvalue %dx.types.ResRet.f32 %25, 0
  %27 = extractvalue %dx.types.ResRet.f32 %25, 1
  %28 = extractvalue %dx.types.ResRet.f32 %25, 2
  %29 = extractvalue %dx.types.ResRet.f32 %25, 3
  %30 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %3, %dx.types.Handle %4, float %23, float %24, float undef, float undef, i32 0, i32 0, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %31 = extractvalue %dx.types.ResRet.f32 %30, 0
  %32 = extractvalue %dx.types.ResRet.f32 %30, 1
  %33 = extractvalue %dx.types.ResRet.f32 %30, 2
  %34 = extractvalue %dx.types.ResRet.f32 %30, 3
  %35 = getelementptr inbounds [16 x float], [16 x float]* %13, i32 0, i32 0
  store float %29, float* %35, align 4, !tbaa !19, !alias.scope !23, !noalias !26
  %36 = getelementptr inbounds [16 x float], [16 x float]* %14, i32 0, i32 0
  store float %34, float* %36, align 4, !tbaa !19, !alias.scope !26, !noalias !23
  %37 = getelementptr inbounds [16 x float], [16 x float]* %13, i32 0, i32 1
  store float %28, float* %37, align 4, !tbaa !19, !alias.scope !23, !noalias !26
  %38 = getelementptr inbounds [16 x float], [16 x float]* %14, i32 0, i32 1
  store float %33, float* %38, align 4, !tbaa !19, !alias.scope !26, !noalias !23
  %39 = getelementptr inbounds [16 x float], [16 x float]* %13, i32 0, i32 4
  store float %26, float* %39, align 4, !tbaa !19, !alias.scope !23, !noalias !26
  %40 = getelementptr inbounds [16 x float], [16 x float]* %14, i32 0, i32 4
  store float %31, float* %40, align 4, !tbaa !19, !alias.scope !26, !noalias !23
  %41 = getelementptr inbounds [16 x float], [16 x float]* %13, i32 0, i32 5
  store float %27, float* %41, align 4, !tbaa !19, !alias.scope !23, !noalias !26
  %42 = getelementptr inbounds [16 x float], [16 x float]* %14, i32 0, i32 5
  store float %32, float* %42, align 4, !tbaa !19, !alias.scope !26, !noalias !23
  %43 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %3, %dx.types.Handle %4, float %23, float %24, float undef, float undef, i32 2, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %44 = extractvalue %dx.types.ResRet.f32 %43, 0
  %45 = extractvalue %dx.types.ResRet.f32 %43, 1
  %46 = extractvalue %dx.types.ResRet.f32 %43, 2
  %47 = extractvalue %dx.types.ResRet.f32 %43, 3
  %48 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %3, %dx.types.Handle %4, float %23, float %24, float undef, float undef, i32 2, i32 0, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %49 = extractvalue %dx.types.ResRet.f32 %48, 0
  %50 = extractvalue %dx.types.ResRet.f32 %48, 1
  %51 = extractvalue %dx.types.ResRet.f32 %48, 2
  %52 = extractvalue %dx.types.ResRet.f32 %48, 3
  %53 = getelementptr inbounds [16 x float], [16 x float]* %13, i32 0, i32 2
  store float %47, float* %53, align 4, !tbaa !19, !alias.scope !23, !noalias !26
  %54 = getelementptr inbounds [16 x float], [16 x float]* %14, i32 0, i32 2
  store float %52, float* %54, align 4, !tbaa !19, !alias.scope !26, !noalias !23
  %55 = getelementptr inbounds [16 x float], [16 x float]* %13, i32 0, i32 3
  store float %46, float* %55, align 4, !tbaa !19, !alias.scope !23, !noalias !26
  %56 = getelementptr inbounds [16 x float], [16 x float]* %14, i32 0, i32 3
  store float %51, float* %56, align 4, !tbaa !19, !alias.scope !26, !noalias !23
  %57 = getelementptr inbounds [16 x float], [16 x float]* %13, i32 0, i32 6
  store float %44, float* %57, align 4, !tbaa !19, !alias.scope !23, !noalias !26
  %58 = getelementptr inbounds [16 x float], [16 x float]* %14, i32 0, i32 6
  store float %49, float* %58, align 4, !tbaa !19, !alias.scope !26, !noalias !23
  %59 = getelementptr inbounds [16 x float], [16 x float]* %13, i32 0, i32 7
  store float %45, float* %59, align 4, !tbaa !19, !alias.scope !23, !noalias !26
  %60 = getelementptr inbounds [16 x float], [16 x float]* %14, i32 0, i32 7
  store float %50, float* %60, align 4, !tbaa !19, !alias.scope !26, !noalias !23
  %61 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %3, %dx.types.Handle %4, float %23, float %24, float undef, float undef, i32 0, i32 2, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %62 = extractvalue %dx.types.ResRet.f32 %61, 0
  %63 = extractvalue %dx.types.ResRet.f32 %61, 1
  %64 = extractvalue %dx.types.ResRet.f32 %61, 2
  %65 = extractvalue %dx.types.ResRet.f32 %61, 3
  %66 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %3, %dx.types.Handle %4, float %23, float %24, float undef, float undef, i32 0, i32 2, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %67 = extractvalue %dx.types.ResRet.f32 %66, 0
  %68 = extractvalue %dx.types.ResRet.f32 %66, 1
  %69 = extractvalue %dx.types.ResRet.f32 %66, 2
  %70 = extractvalue %dx.types.ResRet.f32 %66, 3
  %71 = getelementptr inbounds [16 x float], [16 x float]* %13, i32 0, i32 8
  store float %65, float* %71, align 4, !tbaa !19, !alias.scope !23, !noalias !26
  %72 = getelementptr inbounds [16 x float], [16 x float]* %14, i32 0, i32 8
  store float %70, float* %72, align 4, !tbaa !19, !alias.scope !26, !noalias !23
  %73 = getelementptr inbounds [16 x float], [16 x float]* %13, i32 0, i32 9
  store float %64, float* %73, align 4, !tbaa !19, !alias.scope !23, !noalias !26
  %74 = getelementptr inbounds [16 x float], [16 x float]* %14, i32 0, i32 9
  store float %69, float* %74, align 4, !tbaa !19, !alias.scope !26, !noalias !23
  %75 = getelementptr inbounds [16 x float], [16 x float]* %13, i32 0, i32 12
  store float %62, float* %75, align 4, !tbaa !19, !alias.scope !23, !noalias !26
  %76 = getelementptr inbounds [16 x float], [16 x float]* %14, i32 0, i32 12
  store float %67, float* %76, align 4, !tbaa !19, !alias.scope !26, !noalias !23
  %77 = getelementptr inbounds [16 x float], [16 x float]* %13, i32 0, i32 13
  store float %63, float* %77, align 4, !tbaa !19, !alias.scope !23, !noalias !26
  %78 = getelementptr inbounds [16 x float], [16 x float]* %14, i32 0, i32 13
  store float %68, float* %78, align 4, !tbaa !19, !alias.scope !26, !noalias !23
  %79 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %3, %dx.types.Handle %4, float %23, float %24, float undef, float undef, i32 2, i32 2, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %80 = extractvalue %dx.types.ResRet.f32 %79, 0
  %81 = extractvalue %dx.types.ResRet.f32 %79, 1
  %82 = extractvalue %dx.types.ResRet.f32 %79, 2
  %83 = extractvalue %dx.types.ResRet.f32 %79, 3
  %84 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %3, %dx.types.Handle %4, float %23, float %24, float undef, float undef, i32 2, i32 2, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %85 = extractvalue %dx.types.ResRet.f32 %84, 0
  %86 = extractvalue %dx.types.ResRet.f32 %84, 1
  %87 = extractvalue %dx.types.ResRet.f32 %84, 2
  %88 = extractvalue %dx.types.ResRet.f32 %84, 3
  %89 = getelementptr inbounds [16 x float], [16 x float]* %13, i32 0, i32 10
  store float %83, float* %89, align 4, !tbaa !19, !alias.scope !23, !noalias !26
  %90 = getelementptr inbounds [16 x float], [16 x float]* %14, i32 0, i32 10
  store float %88, float* %90, align 4, !tbaa !19, !alias.scope !26, !noalias !23
  %91 = getelementptr inbounds [16 x float], [16 x float]* %13, i32 0, i32 11
  store float %82, float* %91, align 4, !tbaa !19, !alias.scope !23, !noalias !26
  %92 = getelementptr inbounds [16 x float], [16 x float]* %14, i32 0, i32 11
  store float %87, float* %92, align 4, !tbaa !19, !alias.scope !26, !noalias !23
  %93 = getelementptr inbounds [16 x float], [16 x float]* %13, i32 0, i32 14
  store float %80, float* %93, align 4, !tbaa !19, !alias.scope !23, !noalias !26
  %94 = getelementptr inbounds [16 x float], [16 x float]* %14, i32 0, i32 14
  store float %85, float* %94, align 4, !tbaa !19, !alias.scope !26, !noalias !23
  %95 = getelementptr inbounds [16 x float], [16 x float]* %13, i32 0, i32 15
  store float %81, float* %95, align 4, !tbaa !19, !alias.scope !23, !noalias !26
  %96 = getelementptr inbounds [16 x float], [16 x float]* %14, i32 0, i32 15
  store float %86, float* %96, align 4, !tbaa !19, !alias.scope !26, !noalias !23
  %97 = lshr i32 %8, 1
  %98 = lshr i32 %9, 1
  %99 = shl nuw i32 %97, 1
  %100 = shl nuw i32 %98, 1
  %101 = sub i32 %8, %99
  %102 = sub i32 %9, %100
  %103 = shl i32 %101, 1
  %104 = shl i32 %98, 3
  %105 = add i32 %104, %97
  %106 = shl i32 %102, 3
  %107 = add i32 %106, %103
  %108 = fadd fast float %28, %29
  %109 = fadd fast float %108, %26
  %110 = fadd fast float %109, %27
  %111 = mul i32 %105, 16
  %112 = add i32 %107, %111
  %113 = getelementptr [1024 x float], [1024 x float] addrspace(3)* @"\01?gs_mip1BlocksU@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %112
  store float %110, float addrspace(3)* %113, align 4, !tbaa !19
  %114 = fadd fast float %46, %47
  %115 = fadd fast float %114, %44
  %116 = fadd fast float %115, %45
  %117 = or i32 %107, 1
  %118 = mul i32 %105, 16
  %119 = add i32 %117, %118
  %120 = getelementptr [1024 x float], [1024 x float] addrspace(3)* @"\01?gs_mip1BlocksU@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %119
  store float %116, float addrspace(3)* %120, align 4, !tbaa !19
  %121 = fadd fast float %64, %65
  %122 = fadd fast float %121, %62
  %123 = fadd fast float %122, %63
  %124 = add i32 %107, 4
  %125 = mul i32 %105, 16
  %126 = add i32 %124, %125
  %127 = getelementptr [1024 x float], [1024 x float] addrspace(3)* @"\01?gs_mip1BlocksU@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %126
  store float %123, float addrspace(3)* %127, align 4, !tbaa !19
  %128 = fadd fast float %82, %83
  %129 = fadd fast float %128, %80
  %130 = fadd fast float %129, %81
  %131 = add i32 %107, 5
  %132 = mul i32 %105, 16
  %133 = add i32 %131, %132
  %134 = getelementptr [1024 x float], [1024 x float] addrspace(3)* @"\01?gs_mip1BlocksU@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %133
  store float %130, float addrspace(3)* %134, align 4, !tbaa !19
  %135 = fadd fast float %33, %34
  %136 = fadd fast float %135, %31
  %137 = fadd fast float %136, %32
  %138 = mul i32 %105, 16
  %139 = add i32 %107, %138
  %140 = getelementptr [1024 x float], [1024 x float] addrspace(3)* @"\01?gs_mip1BlocksV@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %139
  store float %137, float addrspace(3)* %140, align 4, !tbaa !19
  %141 = fadd fast float %51, %52
  %142 = fadd fast float %141, %49
  %143 = fadd fast float %142, %50
  %144 = mul i32 %105, 16
  %145 = add i32 %117, %144
  %146 = getelementptr [1024 x float], [1024 x float] addrspace(3)* @"\01?gs_mip1BlocksV@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %145
  store float %143, float addrspace(3)* %146, align 4, !tbaa !19
  %147 = fadd fast float %69, %70
  %148 = fadd fast float %147, %67
  %149 = fadd fast float %148, %68
  %150 = mul i32 %105, 16
  %151 = add i32 %124, %150
  %152 = getelementptr [1024 x float], [1024 x float] addrspace(3)* @"\01?gs_mip1BlocksV@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %151
  store float %149, float addrspace(3)* %152, align 4, !tbaa !19
  %153 = fadd fast float %87, %88
  %154 = fadd fast float %153, %85
  %155 = fadd fast float %154, %86
  %156 = mul i32 %105, 16
  %157 = add i32 %131, %156
  %158 = getelementptr [1024 x float], [1024 x float] addrspace(3)* @"\01?gs_mip1BlocksV@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %157
  store float %155, float addrspace(3)* %158, align 4, !tbaa !19
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %159 = load float, float* %35, align 4, !tbaa !19, !noalias !28
  %160 = load float, float* %36, align 4, !tbaa !19, !noalias !28
  br label %161

; <label>:161                                     ; preds = %175, %0
  %162 = phi float [ %33, %0 ], [ %179, %175 ]
  %163 = phi float [ %28, %0 ], [ %177, %175 ]
  %164 = phi float [ %160, %0 ], [ %172, %175 ]
  %165 = phi float [ %160, %0 ], [ %171, %175 ]
  %166 = phi float [ %159, %0 ], [ %170, %175 ]
  %167 = phi float [ %159, %0 ], [ %169, %175 ]
  %168 = phi i32 [ 1, %0 ], [ %173, %175 ]
  %169 = call float @dx.op.binary.f32(i32 36, float %167, float %163)  ; FMin(a,b)
  %170 = call float @dx.op.binary.f32(i32 35, float %166, float %163)  ; FMax(a,b)
  %171 = call float @dx.op.binary.f32(i32 36, float %165, float %162)  ; FMin(a,b)
  %172 = call float @dx.op.binary.f32(i32 35, float %164, float %162)  ; FMax(a,b)
  %173 = add nuw nsw i32 %168, 1
  %174 = icmp eq i32 %173, 16
  br i1 %174, label %180, label %175

; <label>:175                                     ; preds = %161
  %176 = getelementptr inbounds [16 x float], [16 x float]* %13, i32 0, i32 %173
  %177 = load float, float* %176, align 4, !tbaa !19, !noalias !28
  %178 = getelementptr inbounds [16 x float], [16 x float]* %14, i32 0, i32 %173
  %179 = load float, float* %178, align 4, !tbaa !19, !noalias !28
  br label %161

; <label>:180                                     ; preds = %161
  %181 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %182 = call i32 @dx.op.groupId.i32(i32 94, i32 1)  ; GroupId(component)
  %183 = fmul fast float %169, 2.550000e+02
  %184 = call float @dx.op.unary.f32(i32 26, float %183)  ; Round_ne(value)
  %185 = fptoui float %184 to i32
  %186 = fmul fast float %170, 2.550000e+02
  %187 = call float @dx.op.unary.f32(i32 26, float %186)  ; Round_ne(value)
  %188 = fptoui float %187 to i32
  %189 = fmul fast float %171, 2.550000e+02
  %190 = call float @dx.op.unary.f32(i32 26, float %189)  ; Round_ne(value)
  %191 = fptoui float %190 to i32
  %192 = fmul fast float %172, 2.550000e+02
  %193 = call float @dx.op.unary.f32(i32 26, float %192)  ; Round_ne(value)
  %194 = fptoui float %193 to i32
  %195 = shl i32 %185, 8
  %196 = or i32 %195, %188
  %197 = shl i32 %191, 8
  %198 = or i32 %197, %194
  %199 = icmp ult i32 %185, %188
  br i1 %199, label %200, label %311, !dx.controlflow.hints !34

; <label>:200                                     ; preds = %180
  %201 = fsub fast float %169, %170
  %202 = fdiv fast float 7.000000e+00, %201
  %203 = fsub fast float %159, %170
  %204 = fmul fast float %203, %202
  %205 = call float @dx.op.unary.f32(i32 26, float %204)  ; Round_ne(value)
  %206 = fptoui float %205 to i32
  %207 = icmp ne i32 %206, 0
  %208 = zext i1 %207 to i32
  %209 = icmp eq i32 %206, 7
  %210 = select i1 %209, i32 65529, i32 0
  %211 = add i32 %210, %206
  %212 = add i32 %211, %208
  %213 = shl i32 %212, 16
  %214 = fsub fast float %28, %170
  %215 = fmul fast float %214, %202
  %216 = call float @dx.op.unary.f32(i32 26, float %215)  ; Round_ne(value)
  %217 = fptoui float %216 to i32
  %218 = icmp ne i32 %217, 0
  %219 = zext i1 %218 to i32
  %220 = icmp eq i32 %217, 7
  %221 = select i1 %220, i32 8185, i32 0
  %222 = add i32 %221, %217
  %223 = add i32 %222, %219
  %224 = shl i32 %223, 19
  %225 = load float, float* %53, align 4, !tbaa !19, !noalias !35
  %226 = fsub fast float %225, %170
  %227 = fmul fast float %226, %202
  %228 = call float @dx.op.unary.f32(i32 26, float %227)  ; Round_ne(value)
  %229 = fptoui float %228 to i32
  %230 = icmp ne i32 %229, 0
  %231 = zext i1 %230 to i32
  %232 = icmp eq i32 %229, 7
  %233 = select i1 %232, i32 1017, i32 0
  %234 = add i32 %233, %229
  %235 = add i32 %234, %231
  %236 = shl i32 %235, 22
  %237 = fsub fast float %46, %170
  %238 = fmul fast float %237, %202
  %239 = call float @dx.op.unary.f32(i32 26, float %238)  ; Round_ne(value)
  %240 = fptoui float %239 to i32
  %241 = icmp ne i32 %240, 0
  %242 = zext i1 %241 to i32
  %243 = icmp eq i32 %240, 7
  %244 = select i1 %243, i32 121, i32 0
  %245 = add i32 %244, %240
  %246 = add i32 %245, %242
  %247 = shl i32 %246, 25
  %248 = fsub fast float %26, %170
  %249 = fmul fast float %248, %202
  %250 = call float @dx.op.unary.f32(i32 26, float %249)  ; Round_ne(value)
  %251 = fptoui float %250 to i32
  %252 = icmp ne i32 %251, 0
  %253 = zext i1 %252 to i32
  %254 = icmp eq i32 %251, 7
  %255 = select i1 %254, i32 9, i32 0
  %256 = add i32 %255, %251
  %257 = add i32 %256, %253
  %258 = shl i32 %257, 28
  %259 = fsub fast float %27, %170
  %260 = fmul fast float %259, %202
  %261 = call float @dx.op.unary.f32(i32 26, float %260)  ; Round_ne(value)
  %262 = fptoui float %261 to i32
  %263 = icmp ne i32 %262, 0
  %264 = zext i1 %263 to i32
  %265 = icmp eq i32 %262, 7
  %266 = select i1 %265, i32 7, i32 0
  %267 = sub nsw i32 %264, %266
  %268 = add i32 %267, %262
  %269 = shl i32 %268, 31
  %270 = lshr i32 %268, 1
  %271 = fsub fast float %44, %170
  %272 = fmul fast float %271, %202
  %273 = call float @dx.op.unary.f32(i32 26, float %272)  ; Round_ne(value)
  %274 = fptoui float %273 to i32
  %275 = icmp ne i32 %274, 0
  %276 = zext i1 %275 to i32
  %277 = icmp eq i32 %274, 7
  %278 = select i1 %277, i32 1073741817, i32 0
  %279 = add i32 %278, %274
  %280 = add i32 %279, %276
  %281 = shl i32 %280, 2
  %282 = or i32 %281, %270
  br label %283

; <label>:283                                     ; preds = %283, %200
  %284 = phi i32 [ 7, %200 ], [ %302, %283 ]
  %285 = phi i32 [ %282, %200 ], [ %301, %283 ]
  %286 = phi i32 [ 2, %200 ], [ %287, %283 ]
  %287 = add nuw nsw i32 %286, 3
  %288 = getelementptr inbounds [16 x float], [16 x float]* %13, i32 0, i32 %284
  %289 = load float, float* %288, align 4, !tbaa !19, !noalias !35
  %290 = fsub fast float %289, %170
  %291 = fmul fast float %290, %202
  %292 = call float @dx.op.unary.f32(i32 26, float %291)  ; Round_ne(value)
  %293 = fptoui float %292 to i32
  %294 = icmp ne i32 %293, 0
  %295 = zext i1 %294 to i32
  %296 = icmp eq i32 %293, 7
  %297 = select i1 %296, i32 -7, i32 0
  %298 = add i32 %297, %293
  %299 = add i32 %298, %295
  %300 = shl i32 %299, %287
  %301 = or i32 %300, %285
  %302 = add nuw nsw i32 %284, 1
  %303 = icmp eq i32 %302, 16
  br i1 %303, label %304, label %283

; <label>:304                                     ; preds = %283
  %305 = or i32 %213, %196
  %306 = or i32 %305, %224
  %307 = or i32 %306, %236
  %308 = or i32 %307, %247
  %309 = or i32 %308, %258
  %310 = or i32 %309, %269
  br label %311

; <label>:311                                     ; preds = %304, %180
  %312 = phi i32 [ %196, %180 ], [ %310, %304 ]
  %313 = phi i32 [ 0, %180 ], [ %301, %304 ]
  %314 = icmp ult i32 %191, %194
  br i1 %314, label %315, label %426, !dx.controlflow.hints !38

; <label>:315                                     ; preds = %311
  %316 = fsub fast float %171, %172
  %317 = fdiv fast float 7.000000e+00, %316
  %318 = fsub fast float %160, %172
  %319 = fmul fast float %318, %317
  %320 = call float @dx.op.unary.f32(i32 26, float %319)  ; Round_ne(value)
  %321 = fptoui float %320 to i32
  %322 = icmp ne i32 %321, 0
  %323 = zext i1 %322 to i32
  %324 = icmp eq i32 %321, 7
  %325 = select i1 %324, i32 65529, i32 0
  %326 = add i32 %325, %321
  %327 = add i32 %326, %323
  %328 = shl i32 %327, 16
  %329 = fsub fast float %33, %172
  %330 = fmul fast float %329, %317
  %331 = call float @dx.op.unary.f32(i32 26, float %330)  ; Round_ne(value)
  %332 = fptoui float %331 to i32
  %333 = icmp ne i32 %332, 0
  %334 = zext i1 %333 to i32
  %335 = icmp eq i32 %332, 7
  %336 = select i1 %335, i32 8185, i32 0
  %337 = add i32 %336, %332
  %338 = add i32 %337, %334
  %339 = shl i32 %338, 19
  %340 = load float, float* %54, align 4, !tbaa !19, !noalias !39
  %341 = fsub fast float %340, %172
  %342 = fmul fast float %341, %317
  %343 = call float @dx.op.unary.f32(i32 26, float %342)  ; Round_ne(value)
  %344 = fptoui float %343 to i32
  %345 = icmp ne i32 %344, 0
  %346 = zext i1 %345 to i32
  %347 = icmp eq i32 %344, 7
  %348 = select i1 %347, i32 1017, i32 0
  %349 = add i32 %348, %344
  %350 = add i32 %349, %346
  %351 = shl i32 %350, 22
  %352 = fsub fast float %51, %172
  %353 = fmul fast float %352, %317
  %354 = call float @dx.op.unary.f32(i32 26, float %353)  ; Round_ne(value)
  %355 = fptoui float %354 to i32
  %356 = icmp ne i32 %355, 0
  %357 = zext i1 %356 to i32
  %358 = icmp eq i32 %355, 7
  %359 = select i1 %358, i32 121, i32 0
  %360 = add i32 %359, %355
  %361 = add i32 %360, %357
  %362 = shl i32 %361, 25
  %363 = fsub fast float %31, %172
  %364 = fmul fast float %363, %317
  %365 = call float @dx.op.unary.f32(i32 26, float %364)  ; Round_ne(value)
  %366 = fptoui float %365 to i32
  %367 = icmp ne i32 %366, 0
  %368 = zext i1 %367 to i32
  %369 = icmp eq i32 %366, 7
  %370 = select i1 %369, i32 9, i32 0
  %371 = add i32 %370, %366
  %372 = add i32 %371, %368
  %373 = shl i32 %372, 28
  %374 = fsub fast float %32, %172
  %375 = fmul fast float %374, %317
  %376 = call float @dx.op.unary.f32(i32 26, float %375)  ; Round_ne(value)
  %377 = fptoui float %376 to i32
  %378 = icmp ne i32 %377, 0
  %379 = zext i1 %378 to i32
  %380 = icmp eq i32 %377, 7
  %381 = select i1 %380, i32 7, i32 0
  %382 = sub nsw i32 %379, %381
  %383 = add i32 %382, %377
  %384 = shl i32 %383, 31
  %385 = lshr i32 %383, 1
  %386 = fsub fast float %49, %172
  %387 = fmul fast float %386, %317
  %388 = call float @dx.op.unary.f32(i32 26, float %387)  ; Round_ne(value)
  %389 = fptoui float %388 to i32
  %390 = icmp ne i32 %389, 0
  %391 = zext i1 %390 to i32
  %392 = icmp eq i32 %389, 7
  %393 = select i1 %392, i32 1073741817, i32 0
  %394 = add i32 %393, %389
  %395 = add i32 %394, %391
  %396 = shl i32 %395, 2
  %397 = or i32 %396, %385
  br label %398

; <label>:398                                     ; preds = %398, %315
  %399 = phi i32 [ 7, %315 ], [ %417, %398 ]
  %400 = phi i32 [ %397, %315 ], [ %416, %398 ]
  %401 = phi i32 [ 2, %315 ], [ %402, %398 ]
  %402 = add nuw nsw i32 %401, 3
  %403 = getelementptr inbounds [16 x float], [16 x float]* %14, i32 0, i32 %399
  %404 = load float, float* %403, align 4, !tbaa !19, !noalias !39
  %405 = fsub fast float %404, %172
  %406 = fmul fast float %405, %317
  %407 = call float @dx.op.unary.f32(i32 26, float %406)  ; Round_ne(value)
  %408 = fptoui float %407 to i32
  %409 = icmp ne i32 %408, 0
  %410 = zext i1 %409 to i32
  %411 = icmp eq i32 %408, 7
  %412 = select i1 %411, i32 -7, i32 0
  %413 = add i32 %412, %408
  %414 = add i32 %413, %410
  %415 = shl i32 %414, %402
  %416 = or i32 %415, %400
  %417 = add nuw nsw i32 %399, 1
  %418 = icmp eq i32 %417, 16
  br i1 %418, label %419, label %398

; <label>:419                                     ; preds = %398
  %420 = or i32 %328, %198
  %421 = or i32 %420, %339
  %422 = or i32 %421, %351
  %423 = or i32 %422, %362
  %424 = or i32 %423, %373
  %425 = or i32 %424, %384
  br label %426

; <label>:426                                     ; preds = %419, %311
  %427 = phi i32 [ %198, %311 ], [ %425, %419 ]
  %428 = phi i32 [ 0, %311 ], [ %416, %419 ]
  %429 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %430 = extractvalue %dx.types.CBufRet.i32 %429, 0
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %2, i32 %6, i32 %7, i32 %430, i32 %312, i32 %313, i32 %427, i32 %428, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %431 = icmp ult i32 %181, 64
  br i1 %431, label %432, label %865, !dx.controlflow.hints !42

; <label>:432                                     ; preds = %426
  %433 = and i32 %181, 7
  %434 = getelementptr inbounds [16 x float], [16 x float]* %12, i32 0, i32 0
  %435 = mul i32 %181, 16
  %436 = add i32 0, %435
  %437 = getelementptr [1024 x float], [1024 x float] addrspace(3)* @"\01?gs_mip1BlocksU@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %436
  %438 = load float, float addrspace(3)* %437, align 4
  store float %438, float* %434, align 4
  %439 = getelementptr inbounds [16 x float], [16 x float]* %12, i32 0, i32 1
  %440 = mul i32 %181, 16
  %441 = add i32 1, %440
  %442 = getelementptr [1024 x float], [1024 x float] addrspace(3)* @"\01?gs_mip1BlocksU@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %441
  %443 = load float, float addrspace(3)* %442, align 4
  store float %443, float* %439, align 4
  %444 = getelementptr inbounds [16 x float], [16 x float]* %12, i32 0, i32 2
  %445 = mul i32 %181, 16
  %446 = add i32 2, %445
  %447 = getelementptr [1024 x float], [1024 x float] addrspace(3)* @"\01?gs_mip1BlocksU@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %446
  %448 = load float, float addrspace(3)* %447, align 4
  store float %448, float* %444, align 4
  %449 = getelementptr inbounds [16 x float], [16 x float]* %12, i32 0, i32 3
  %450 = mul i32 %181, 16
  %451 = add i32 3, %450
  %452 = getelementptr [1024 x float], [1024 x float] addrspace(3)* @"\01?gs_mip1BlocksU@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %451
  %453 = load float, float addrspace(3)* %452, align 4
  store float %453, float* %449, align 4
  %454 = getelementptr inbounds [16 x float], [16 x float]* %12, i32 0, i32 4
  %455 = mul i32 %181, 16
  %456 = add i32 4, %455
  %457 = getelementptr [1024 x float], [1024 x float] addrspace(3)* @"\01?gs_mip1BlocksU@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %456
  %458 = load float, float addrspace(3)* %457, align 4
  store float %458, float* %454, align 4
  %459 = getelementptr inbounds [16 x float], [16 x float]* %12, i32 0, i32 5
  %460 = mul i32 %181, 16
  %461 = add i32 5, %460
  %462 = getelementptr [1024 x float], [1024 x float] addrspace(3)* @"\01?gs_mip1BlocksU@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %461
  %463 = load float, float addrspace(3)* %462, align 4
  store float %463, float* %459, align 4
  %464 = getelementptr inbounds [16 x float], [16 x float]* %12, i32 0, i32 6
  %465 = mul i32 %181, 16
  %466 = add i32 6, %465
  %467 = getelementptr [1024 x float], [1024 x float] addrspace(3)* @"\01?gs_mip1BlocksU@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %466
  %468 = load float, float addrspace(3)* %467, align 4
  store float %468, float* %464, align 4
  %469 = getelementptr inbounds [16 x float], [16 x float]* %12, i32 0, i32 7
  %470 = mul i32 %181, 16
  %471 = add i32 7, %470
  %472 = getelementptr [1024 x float], [1024 x float] addrspace(3)* @"\01?gs_mip1BlocksU@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %471
  %473 = load float, float addrspace(3)* %472, align 4
  store float %473, float* %469, align 4
  %474 = getelementptr inbounds [16 x float], [16 x float]* %12, i32 0, i32 8
  %475 = mul i32 %181, 16
  %476 = add i32 8, %475
  %477 = getelementptr [1024 x float], [1024 x float] addrspace(3)* @"\01?gs_mip1BlocksU@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %476
  %478 = load float, float addrspace(3)* %477, align 4
  store float %478, float* %474, align 4
  %479 = getelementptr inbounds [16 x float], [16 x float]* %12, i32 0, i32 9
  %480 = mul i32 %181, 16
  %481 = add i32 9, %480
  %482 = getelementptr [1024 x float], [1024 x float] addrspace(3)* @"\01?gs_mip1BlocksU@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %481
  %483 = load float, float addrspace(3)* %482, align 4
  store float %483, float* %479, align 4
  %484 = getelementptr inbounds [16 x float], [16 x float]* %12, i32 0, i32 10
  %485 = mul i32 %181, 16
  %486 = add i32 10, %485
  %487 = getelementptr [1024 x float], [1024 x float] addrspace(3)* @"\01?gs_mip1BlocksU@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %486
  %488 = load float, float addrspace(3)* %487, align 4
  store float %488, float* %484, align 4
  %489 = getelementptr inbounds [16 x float], [16 x float]* %12, i32 0, i32 11
  %490 = mul i32 %181, 16
  %491 = add i32 11, %490
  %492 = getelementptr [1024 x float], [1024 x float] addrspace(3)* @"\01?gs_mip1BlocksU@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %491
  %493 = load float, float addrspace(3)* %492, align 4
  store float %493, float* %489, align 4
  %494 = getelementptr inbounds [16 x float], [16 x float]* %12, i32 0, i32 12
  %495 = mul i32 %181, 16
  %496 = add i32 12, %495
  %497 = getelementptr [1024 x float], [1024 x float] addrspace(3)* @"\01?gs_mip1BlocksU@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %496
  %498 = load float, float addrspace(3)* %497, align 4
  store float %498, float* %494, align 4
  %499 = getelementptr inbounds [16 x float], [16 x float]* %12, i32 0, i32 13
  %500 = mul i32 %181, 16
  %501 = add i32 13, %500
  %502 = getelementptr [1024 x float], [1024 x float] addrspace(3)* @"\01?gs_mip1BlocksU@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %501
  %503 = load float, float addrspace(3)* %502, align 4
  store float %503, float* %499, align 4
  %504 = getelementptr inbounds [16 x float], [16 x float]* %12, i32 0, i32 14
  %505 = mul i32 %181, 16
  %506 = add i32 14, %505
  %507 = getelementptr [1024 x float], [1024 x float] addrspace(3)* @"\01?gs_mip1BlocksU@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %506
  %508 = load float, float addrspace(3)* %507, align 4
  store float %508, float* %504, align 4
  %509 = getelementptr inbounds [16 x float], [16 x float]* %12, i32 0, i32 15
  %510 = mul i32 %181, 16
  %511 = add i32 15, %510
  %512 = getelementptr [1024 x float], [1024 x float] addrspace(3)* @"\01?gs_mip1BlocksU@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %511
  %513 = load float, float addrspace(3)* %512, align 4
  store float %513, float* %509, align 4
  %514 = getelementptr inbounds [16 x float], [16 x float]* %11, i32 0, i32 0
  %515 = mul i32 %181, 16
  %516 = add i32 0, %515
  %517 = getelementptr [1024 x float], [1024 x float] addrspace(3)* @"\01?gs_mip1BlocksV@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %516
  %518 = load float, float addrspace(3)* %517, align 4
  store float %518, float* %514, align 4
  %519 = getelementptr inbounds [16 x float], [16 x float]* %11, i32 0, i32 1
  %520 = mul i32 %181, 16
  %521 = add i32 1, %520
  %522 = getelementptr [1024 x float], [1024 x float] addrspace(3)* @"\01?gs_mip1BlocksV@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %521
  %523 = load float, float addrspace(3)* %522, align 4
  store float %523, float* %519, align 4
  %524 = getelementptr inbounds [16 x float], [16 x float]* %11, i32 0, i32 2
  %525 = mul i32 %181, 16
  %526 = add i32 2, %525
  %527 = getelementptr [1024 x float], [1024 x float] addrspace(3)* @"\01?gs_mip1BlocksV@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %526
  %528 = load float, float addrspace(3)* %527, align 4
  store float %528, float* %524, align 4
  %529 = getelementptr inbounds [16 x float], [16 x float]* %11, i32 0, i32 3
  %530 = mul i32 %181, 16
  %531 = add i32 3, %530
  %532 = getelementptr [1024 x float], [1024 x float] addrspace(3)* @"\01?gs_mip1BlocksV@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %531
  %533 = load float, float addrspace(3)* %532, align 4
  store float %533, float* %529, align 4
  %534 = getelementptr inbounds [16 x float], [16 x float]* %11, i32 0, i32 4
  %535 = mul i32 %181, 16
  %536 = add i32 4, %535
  %537 = getelementptr [1024 x float], [1024 x float] addrspace(3)* @"\01?gs_mip1BlocksV@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %536
  %538 = load float, float addrspace(3)* %537, align 4
  store float %538, float* %534, align 4
  %539 = getelementptr inbounds [16 x float], [16 x float]* %11, i32 0, i32 5
  %540 = mul i32 %181, 16
  %541 = add i32 5, %540
  %542 = getelementptr [1024 x float], [1024 x float] addrspace(3)* @"\01?gs_mip1BlocksV@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %541
  %543 = load float, float addrspace(3)* %542, align 4
  store float %543, float* %539, align 4
  %544 = getelementptr inbounds [16 x float], [16 x float]* %11, i32 0, i32 6
  %545 = mul i32 %181, 16
  %546 = add i32 6, %545
  %547 = getelementptr [1024 x float], [1024 x float] addrspace(3)* @"\01?gs_mip1BlocksV@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %546
  %548 = load float, float addrspace(3)* %547, align 4
  store float %548, float* %544, align 4
  %549 = getelementptr inbounds [16 x float], [16 x float]* %11, i32 0, i32 7
  %550 = mul i32 %181, 16
  %551 = add i32 7, %550
  %552 = getelementptr [1024 x float], [1024 x float] addrspace(3)* @"\01?gs_mip1BlocksV@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %551
  %553 = load float, float addrspace(3)* %552, align 4
  store float %553, float* %549, align 4
  %554 = getelementptr inbounds [16 x float], [16 x float]* %11, i32 0, i32 8
  %555 = mul i32 %181, 16
  %556 = add i32 8, %555
  %557 = getelementptr [1024 x float], [1024 x float] addrspace(3)* @"\01?gs_mip1BlocksV@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %556
  %558 = load float, float addrspace(3)* %557, align 4
  store float %558, float* %554, align 4
  %559 = getelementptr inbounds [16 x float], [16 x float]* %11, i32 0, i32 9
  %560 = mul i32 %181, 16
  %561 = add i32 9, %560
  %562 = getelementptr [1024 x float], [1024 x float] addrspace(3)* @"\01?gs_mip1BlocksV@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %561
  %563 = load float, float addrspace(3)* %562, align 4
  store float %563, float* %559, align 4
  %564 = getelementptr inbounds [16 x float], [16 x float]* %11, i32 0, i32 10
  %565 = mul i32 %181, 16
  %566 = add i32 10, %565
  %567 = getelementptr [1024 x float], [1024 x float] addrspace(3)* @"\01?gs_mip1BlocksV@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %566
  %568 = load float, float addrspace(3)* %567, align 4
  store float %568, float* %564, align 4
  %569 = getelementptr inbounds [16 x float], [16 x float]* %11, i32 0, i32 11
  %570 = mul i32 %181, 16
  %571 = add i32 11, %570
  %572 = getelementptr [1024 x float], [1024 x float] addrspace(3)* @"\01?gs_mip1BlocksV@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %571
  %573 = load float, float addrspace(3)* %572, align 4
  store float %573, float* %569, align 4
  %574 = getelementptr inbounds [16 x float], [16 x float]* %11, i32 0, i32 12
  %575 = mul i32 %181, 16
  %576 = add i32 12, %575
  %577 = getelementptr [1024 x float], [1024 x float] addrspace(3)* @"\01?gs_mip1BlocksV@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %576
  %578 = load float, float addrspace(3)* %577, align 4
  store float %578, float* %574, align 4
  %579 = getelementptr inbounds [16 x float], [16 x float]* %11, i32 0, i32 13
  %580 = mul i32 %181, 16
  %581 = add i32 13, %580
  %582 = getelementptr [1024 x float], [1024 x float] addrspace(3)* @"\01?gs_mip1BlocksV@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %581
  %583 = load float, float addrspace(3)* %582, align 4
  store float %583, float* %579, align 4
  %584 = getelementptr inbounds [16 x float], [16 x float]* %11, i32 0, i32 14
  %585 = mul i32 %181, 16
  %586 = add i32 14, %585
  %587 = getelementptr [1024 x float], [1024 x float] addrspace(3)* @"\01?gs_mip1BlocksV@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %586
  %588 = load float, float addrspace(3)* %587, align 4
  store float %588, float* %584, align 4
  %589 = getelementptr inbounds [16 x float], [16 x float]* %11, i32 0, i32 15
  %590 = mul i32 %181, 16
  %591 = add i32 15, %590
  %592 = getelementptr [1024 x float], [1024 x float] addrspace(3)* @"\01?gs_mip1BlocksV@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %591
  %593 = load float, float addrspace(3)* %592, align 4
  store float %593, float* %589, align 4
  br label %594

; <label>:594                                     ; preds = %608, %432
  %595 = phi float [ %523, %432 ], [ %612, %608 ]
  %596 = phi float [ %443, %432 ], [ %610, %608 ]
  %597 = phi i32 [ 1, %432 ], [ %606, %608 ]
  %598 = phi float [ %438, %432 ], [ %602, %608 ]
  %599 = phi float [ %438, %432 ], [ %603, %608 ]
  %600 = phi float [ %518, %432 ], [ %604, %608 ]
  %601 = phi float [ %518, %432 ], [ %605, %608 ]
  %602 = call float @dx.op.binary.f32(i32 36, float %598, float %596)  ; FMin(a,b)
  %603 = call float @dx.op.binary.f32(i32 35, float %599, float %596)  ; FMax(a,b)
  %604 = call float @dx.op.binary.f32(i32 36, float %600, float %595)  ; FMin(a,b)
  %605 = call float @dx.op.binary.f32(i32 35, float %601, float %595)  ; FMax(a,b)
  %606 = add nuw nsw i32 %597, 1
  %607 = icmp eq i32 %606, 16
  br i1 %607, label %613, label %608

; <label>:608                                     ; preds = %594
  %609 = getelementptr inbounds [16 x float], [16 x float]* %12, i32 0, i32 %606
  %610 = load float, float* %609, align 4, !tbaa !19, !noalias !43
  %611 = getelementptr inbounds [16 x float], [16 x float]* %11, i32 0, i32 %606
  %612 = load float, float* %611, align 4, !tbaa !19, !noalias !43
  br label %594

; <label>:613                                     ; preds = %594
  %614 = lshr i32 %181, 3
  %615 = fmul fast float %602, 6.375000e+01
  %616 = call float @dx.op.unary.f32(i32 26, float %615)  ; Round_ne(value)
  %617 = fptoui float %616 to i32
  %618 = fmul fast float %603, 6.375000e+01
  %619 = call float @dx.op.unary.f32(i32 26, float %618)  ; Round_ne(value)
  %620 = fptoui float %619 to i32
  %621 = fmul fast float %604, 6.375000e+01
  %622 = call float @dx.op.unary.f32(i32 26, float %621)  ; Round_ne(value)
  %623 = fptoui float %622 to i32
  %624 = fmul fast float %605, 6.375000e+01
  %625 = call float @dx.op.unary.f32(i32 26, float %624)  ; Round_ne(value)
  %626 = fptoui float %625 to i32
  %627 = shl i32 %617, 8
  %628 = or i32 %627, %620
  %629 = shl i32 %623, 8
  %630 = or i32 %629, %626
  %631 = icmp ult i32 %617, %620
  br i1 %631, label %632, label %742, !dx.controlflow.hints !34

; <label>:632                                     ; preds = %613
  %633 = fsub fast float %602, %603
  %634 = fdiv fast float 7.000000e+00, %633
  %635 = fsub fast float %438, %603
  %636 = fmul fast float %635, %634
  %637 = call float @dx.op.unary.f32(i32 26, float %636)  ; Round_ne(value)
  %638 = fptoui float %637 to i32
  %639 = icmp ne i32 %638, 0
  %640 = zext i1 %639 to i32
  %641 = icmp eq i32 %638, 7
  %642 = select i1 %641, i32 65529, i32 0
  %643 = add i32 %642, %638
  %644 = add i32 %643, %640
  %645 = shl i32 %644, 16
  %646 = fsub fast float %443, %603
  %647 = fmul fast float %646, %634
  %648 = call float @dx.op.unary.f32(i32 26, float %647)  ; Round_ne(value)
  %649 = fptoui float %648 to i32
  %650 = icmp ne i32 %649, 0
  %651 = zext i1 %650 to i32
  %652 = icmp eq i32 %649, 7
  %653 = select i1 %652, i32 8185, i32 0
  %654 = add i32 %653, %649
  %655 = add i32 %654, %651
  %656 = shl i32 %655, 19
  %657 = fsub fast float %448, %603
  %658 = fmul fast float %657, %634
  %659 = call float @dx.op.unary.f32(i32 26, float %658)  ; Round_ne(value)
  %660 = fptoui float %659 to i32
  %661 = icmp ne i32 %660, 0
  %662 = zext i1 %661 to i32
  %663 = icmp eq i32 %660, 7
  %664 = select i1 %663, i32 1017, i32 0
  %665 = add i32 %664, %660
  %666 = add i32 %665, %662
  %667 = shl i32 %666, 22
  %668 = fsub fast float %453, %603
  %669 = fmul fast float %668, %634
  %670 = call float @dx.op.unary.f32(i32 26, float %669)  ; Round_ne(value)
  %671 = fptoui float %670 to i32
  %672 = icmp ne i32 %671, 0
  %673 = zext i1 %672 to i32
  %674 = icmp eq i32 %671, 7
  %675 = select i1 %674, i32 121, i32 0
  %676 = add i32 %675, %671
  %677 = add i32 %676, %673
  %678 = shl i32 %677, 25
  %679 = fsub fast float %458, %603
  %680 = fmul fast float %679, %634
  %681 = call float @dx.op.unary.f32(i32 26, float %680)  ; Round_ne(value)
  %682 = fptoui float %681 to i32
  %683 = icmp ne i32 %682, 0
  %684 = zext i1 %683 to i32
  %685 = icmp eq i32 %682, 7
  %686 = select i1 %685, i32 9, i32 0
  %687 = add i32 %686, %682
  %688 = add i32 %687, %684
  %689 = shl i32 %688, 28
  %690 = fsub fast float %463, %603
  %691 = fmul fast float %690, %634
  %692 = call float @dx.op.unary.f32(i32 26, float %691)  ; Round_ne(value)
  %693 = fptoui float %692 to i32
  %694 = icmp ne i32 %693, 0
  %695 = zext i1 %694 to i32
  %696 = icmp eq i32 %693, 7
  %697 = select i1 %696, i32 7, i32 0
  %698 = sub nsw i32 %695, %697
  %699 = add i32 %698, %693
  %700 = shl i32 %699, 31
  %701 = lshr i32 %699, 1
  %702 = fsub fast float %468, %603
  %703 = fmul fast float %702, %634
  %704 = call float @dx.op.unary.f32(i32 26, float %703)  ; Round_ne(value)
  %705 = fptoui float %704 to i32
  %706 = icmp ne i32 %705, 0
  %707 = zext i1 %706 to i32
  %708 = icmp eq i32 %705, 7
  %709 = select i1 %708, i32 1073741817, i32 0
  %710 = add i32 %709, %705
  %711 = add i32 %710, %707
  %712 = shl i32 %711, 2
  %713 = or i32 %712, %701
  br label %714

; <label>:714                                     ; preds = %714, %632
  %715 = phi i32 [ 7, %632 ], [ %733, %714 ]
  %716 = phi i32 [ %713, %632 ], [ %732, %714 ]
  %717 = phi i32 [ 2, %632 ], [ %718, %714 ]
  %718 = add nuw nsw i32 %717, 3
  %719 = getelementptr inbounds [16 x float], [16 x float]* %12, i32 0, i32 %715
  %720 = load float, float* %719, align 4, !tbaa !19, !noalias !49
  %721 = fsub fast float %720, %603
  %722 = fmul fast float %721, %634
  %723 = call float @dx.op.unary.f32(i32 26, float %722)  ; Round_ne(value)
  %724 = fptoui float %723 to i32
  %725 = icmp ne i32 %724, 0
  %726 = zext i1 %725 to i32
  %727 = icmp eq i32 %724, 7
  %728 = select i1 %727, i32 -7, i32 0
  %729 = add i32 %728, %724
  %730 = add i32 %729, %726
  %731 = shl i32 %730, %718
  %732 = or i32 %731, %716
  %733 = add nuw nsw i32 %715, 1
  %734 = icmp eq i32 %733, 16
  br i1 %734, label %735, label %714

; <label>:735                                     ; preds = %714
  %736 = or i32 %645, %628
  %737 = or i32 %736, %656
  %738 = or i32 %737, %667
  %739 = or i32 %738, %678
  %740 = or i32 %739, %689
  %741 = or i32 %740, %700
  br label %742

; <label>:742                                     ; preds = %735, %613
  %743 = phi i32 [ %628, %613 ], [ %741, %735 ]
  %744 = phi i32 [ 0, %613 ], [ %732, %735 ]
  %745 = icmp ult i32 %623, %626
  br i1 %745, label %746, label %856, !dx.controlflow.hints !38

; <label>:746                                     ; preds = %742
  %747 = fsub fast float %604, %605
  %748 = fdiv fast float 7.000000e+00, %747
  %749 = fsub fast float %518, %605
  %750 = fmul fast float %749, %748
  %751 = call float @dx.op.unary.f32(i32 26, float %750)  ; Round_ne(value)
  %752 = fptoui float %751 to i32
  %753 = icmp ne i32 %752, 0
  %754 = zext i1 %753 to i32
  %755 = icmp eq i32 %752, 7
  %756 = select i1 %755, i32 65529, i32 0
  %757 = add i32 %756, %752
  %758 = add i32 %757, %754
  %759 = shl i32 %758, 16
  %760 = fsub fast float %523, %605
  %761 = fmul fast float %760, %748
  %762 = call float @dx.op.unary.f32(i32 26, float %761)  ; Round_ne(value)
  %763 = fptoui float %762 to i32
  %764 = icmp ne i32 %763, 0
  %765 = zext i1 %764 to i32
  %766 = icmp eq i32 %763, 7
  %767 = select i1 %766, i32 8185, i32 0
  %768 = add i32 %767, %763
  %769 = add i32 %768, %765
  %770 = shl i32 %769, 19
  %771 = fsub fast float %528, %605
  %772 = fmul fast float %771, %748
  %773 = call float @dx.op.unary.f32(i32 26, float %772)  ; Round_ne(value)
  %774 = fptoui float %773 to i32
  %775 = icmp ne i32 %774, 0
  %776 = zext i1 %775 to i32
  %777 = icmp eq i32 %774, 7
  %778 = select i1 %777, i32 1017, i32 0
  %779 = add i32 %778, %774
  %780 = add i32 %779, %776
  %781 = shl i32 %780, 22
  %782 = fsub fast float %533, %605
  %783 = fmul fast float %782, %748
  %784 = call float @dx.op.unary.f32(i32 26, float %783)  ; Round_ne(value)
  %785 = fptoui float %784 to i32
  %786 = icmp ne i32 %785, 0
  %787 = zext i1 %786 to i32
  %788 = icmp eq i32 %785, 7
  %789 = select i1 %788, i32 121, i32 0
  %790 = add i32 %789, %785
  %791 = add i32 %790, %787
  %792 = shl i32 %791, 25
  %793 = fsub fast float %538, %605
  %794 = fmul fast float %793, %748
  %795 = call float @dx.op.unary.f32(i32 26, float %794)  ; Round_ne(value)
  %796 = fptoui float %795 to i32
  %797 = icmp ne i32 %796, 0
  %798 = zext i1 %797 to i32
  %799 = icmp eq i32 %796, 7
  %800 = select i1 %799, i32 9, i32 0
  %801 = add i32 %800, %796
  %802 = add i32 %801, %798
  %803 = shl i32 %802, 28
  %804 = fsub fast float %543, %605
  %805 = fmul fast float %804, %748
  %806 = call float @dx.op.unary.f32(i32 26, float %805)  ; Round_ne(value)
  %807 = fptoui float %806 to i32
  %808 = icmp ne i32 %807, 0
  %809 = zext i1 %808 to i32
  %810 = icmp eq i32 %807, 7
  %811 = select i1 %810, i32 7, i32 0
  %812 = sub nsw i32 %809, %811
  %813 = add i32 %812, %807
  %814 = shl i32 %813, 31
  %815 = lshr i32 %813, 1
  %816 = fsub fast float %548, %605
  %817 = fmul fast float %816, %748
  %818 = call float @dx.op.unary.f32(i32 26, float %817)  ; Round_ne(value)
  %819 = fptoui float %818 to i32
  %820 = icmp ne i32 %819, 0
  %821 = zext i1 %820 to i32
  %822 = icmp eq i32 %819, 7
  %823 = select i1 %822, i32 1073741817, i32 0
  %824 = add i32 %823, %819
  %825 = add i32 %824, %821
  %826 = shl i32 %825, 2
  %827 = or i32 %826, %815
  br label %828

; <label>:828                                     ; preds = %828, %746
  %829 = phi i32 [ 7, %746 ], [ %847, %828 ]
  %830 = phi i32 [ %827, %746 ], [ %846, %828 ]
  %831 = phi i32 [ 2, %746 ], [ %832, %828 ]
  %832 = add nuw nsw i32 %831, 3
  %833 = getelementptr inbounds [16 x float], [16 x float]* %11, i32 0, i32 %829
  %834 = load float, float* %833, align 4, !tbaa !19, !noalias !52
  %835 = fsub fast float %834, %605
  %836 = fmul fast float %835, %748
  %837 = call float @dx.op.unary.f32(i32 26, float %836)  ; Round_ne(value)
  %838 = fptoui float %837 to i32
  %839 = icmp ne i32 %838, 0
  %840 = zext i1 %839 to i32
  %841 = icmp eq i32 %838, 7
  %842 = select i1 %841, i32 -7, i32 0
  %843 = add i32 %842, %838
  %844 = add i32 %843, %840
  %845 = shl i32 %844, %832
  %846 = or i32 %845, %830
  %847 = add nuw nsw i32 %829, 1
  %848 = icmp eq i32 %847, 16
  br i1 %848, label %849, label %828

; <label>:849                                     ; preds = %828
  %850 = or i32 %759, %630
  %851 = or i32 %850, %770
  %852 = or i32 %851, %781
  %853 = or i32 %852, %792
  %854 = or i32 %853, %803
  %855 = or i32 %854, %814
  br label %856

; <label>:856                                     ; preds = %849, %742
  %857 = phi i32 [ %630, %742 ], [ %855, %849 ]
  %858 = phi i32 [ 0, %742 ], [ %846, %849 ]
  %859 = shl i32 %10, 3
  %860 = shl i32 %182, 3
  %861 = or i32 %859, %433
  %862 = add i32 %860, %614
  %863 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %864 = extractvalue %dx.types.CBufRet.i32 %863, 0
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %1, i32 %861, i32 %862, i32 %864, i32 %743, i32 %744, i32 %857, i32 %858, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %865

; <label>:865                                     ; preds = %856, %426
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.textureStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32, i8) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #3

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #3

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #3

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #3

attributes #0 = { nounwind readnone }
attributes #1 = { noduplicate nounwind }
attributes #2 = { nounwind }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!16}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !8, !12, !14}
!5 = !{!6}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{!9, !11}
!9 = !{i32 0, %"class.RWTexture2DArray<vector<unsigned int, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 7, i1 false, i1 false, i1 false, !10}
!10 = !{i32 0, i32 5}
!11 = !{i32 1, %"class.RWTexture2DArray<vector<unsigned int, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 7, i1 false, i1 false, i1 false, !10}
!12 = !{!13}
!13 = !{i32 0, %ConstantBufferRuntimeCompression* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!14 = !{!15}
!15 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!16 = !{void ()* @cs_bc5_compress_two_mips, !"cs_bc5_compress_two_mips", null, !4, !17}
!17 = !{i32 0, i64 256, i32 4, !18}
!18 = !{i32 16, i32 16, i32 1}
!19 = !{!20, !20, i64 0}
!20 = !{!"float", !21, i64 0}
!21 = !{!"omnipotent char", !22, i64 0}
!22 = !{!"Simple C/C++ TBAA"}
!23 = !{!24}
!24 = distinct !{!24, !25, !"\01?LoadTexelsUV@@YAXV?$Texture2D@V?$vector@M$03@@@@USamplerState@@MV?$vector@I$01@@Y0BA@$$CAM3@Z: %blockU"}
!25 = distinct !{!25, !"\01?LoadTexelsUV@@YAXV?$Texture2D@V?$vector@M$03@@@@USamplerState@@MV?$vector@I$01@@Y0BA@$$CAM3@Z"}
!26 = !{!27}
!27 = distinct !{!27, !25, !"\01?LoadTexelsUV@@YAXV?$Texture2D@V?$vector@M$03@@@@USamplerState@@MV?$vector@I$01@@Y0BA@$$CAM3@Z: %blockV"}
!28 = !{!29, !31, !32, !33}
!29 = distinct !{!29, !30, !"\01?GetMinMaxUV@@YAXY0BA@M0AIAM111@Z: %minU"}
!30 = distinct !{!30, !"\01?GetMinMaxUV@@YAXY0BA@M0AIAM111@Z"}
!31 = distinct !{!31, !30, !"\01?GetMinMaxUV@@YAXY0BA@M0AIAM111@Z: %maxU"}
!32 = distinct !{!32, !30, !"\01?GetMinMaxUV@@YAXY0BA@M0AIAM111@Z: %minV"}
!33 = distinct !{!33, !30, !"\01?GetMinMaxUV@@YAXY0BA@M0AIAM111@Z: %maxV"}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = !{!36}
!36 = distinct !{!36, !37, !"\01?GetIndicesAlpha@@YAXY0BA@MMMAIAV?$vector@I$01@@@Z: %inoutPacked"}
!37 = distinct !{!37, !"\01?GetIndicesAlpha@@YAXY0BA@MMMAIAV?$vector@I$01@@@Z"}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = !{!40}
!40 = distinct !{!40, !41, !"\01?GetIndicesAlpha@@YAXY0BA@MMMAIAV?$vector@I$01@@@Z: %inoutPacked"}
!41 = distinct !{!41, !"\01?GetIndicesAlpha@@YAXY0BA@MMMAIAV?$vector@I$01@@@Z"}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = !{!44, !46, !47, !48}
!44 = distinct !{!44, !45, !"\01?GetMinMaxUV@@YAXY0BA@M0AIAM111@Z: %minU"}
!45 = distinct !{!45, !"\01?GetMinMaxUV@@YAXY0BA@M0AIAM111@Z"}
!46 = distinct !{!46, !45, !"\01?GetMinMaxUV@@YAXY0BA@M0AIAM111@Z: %maxU"}
!47 = distinct !{!47, !45, !"\01?GetMinMaxUV@@YAXY0BA@M0AIAM111@Z: %minV"}
!48 = distinct !{!48, !45, !"\01?GetMinMaxUV@@YAXY0BA@M0AIAM111@Z: %maxV"}
!49 = !{!50}
!50 = distinct !{!50, !51, !"\01?GetIndicesAlpha@@YAXY0BA@MMMAIAV?$vector@I$01@@@Z: %inoutPacked"}
!51 = distinct !{!51, !"\01?GetIndicesAlpha@@YAXY0BA@MMMAIAV?$vector@I$01@@@Z"}
!52 = !{!53}
!53 = distinct !{!53, !54, !"\01?GetIndicesAlpha@@YAXY0BA@MMMAIAV?$vector@I$01@@@Z: %inoutPacked"}
!54 = distinct !{!54, !"\01?GetIndicesAlpha@@YAXY0BA@MMMAIAV?$vector@I$01@@@Z"}

