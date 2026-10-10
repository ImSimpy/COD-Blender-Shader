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
; shader hash: 432259a2aba297503573d299aa38a343
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
;                                   sampler      NA          NA      S0             s7     4
;                                   sampler      NA          NA      S1             s2     1
;                                   sampler      NA          NA      S2             s5     1
;                                   texture     f32          2d      T0      t0,space4unbounded
;                                   texture     u32          2d      T1      t0,space5unbounded
;                                   texture    byte         r/o      T2            t17     1
;                                   texture    byte         r/o      T3            t18     1
;                                   texture    byte         r/o      T4            t22     1
;                                   texture     f32          2d      T5             t8     1
;                                   texture     f32          2d      T6            t10     1
;                                   texture     f32          2d      T7            t12     1
;                                       UAV     f32          2d      U0             u0     1
;                                       UAV     f32          2d      U1             u2     1
;                                       UAV     f32          2d      U2             u4     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<vector<unsigned int, 4> >" = type { <4 x i32>, %"class.Texture2D<vector<unsigned int, 4> >::mips_type" }
%"class.Texture2D<vector<unsigned int, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.RWTexture2D<vector<float, 4> >" = type { <4 x float> }
%GfxVirtualTexturingComposite = type { [8 x <4 x float>], [8 x <4 x float>], <3 x float>, i32, <2 x float>, float, float, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, [56 x %struct.TerrainTileDataVT], [20 x <4 x float>], [5 x <4 x i32>], [40 x <4 x i32>] }
%struct.TerrainTileDataVT = type { [2 x <4 x i32>], <2 x i32> }
%struct.SamplerState = type { i32 }

define void @cs_compose_volume_decals_to_scratch_with_cutout() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %14 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %15 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %16 = alloca [4 x i32], align 4
  %17 = alloca [4 x i32], align 4
  %18 = alloca [4 x i32], align 4
  %19 = alloca [4 x i32], align 4
  %20 = alloca [4 x i32], align 4
  %21 = alloca [4 x i32], align 4
  %22 = alloca [4 x i32], align 4
  %23 = alloca [4 x i32], align 4
  %24 = alloca [4 x float], align 4
  %25 = alloca [4 x float], align 4
  %26 = alloca [4 x float], align 4
  %27 = alloca [4 x float], align 4
  %28 = alloca [4 x float], align 4
  %29 = alloca [4 x float], align 4
  %30 = alloca [4 x float], align 4
  %31 = alloca [4 x i32], align 4
  %32 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %33 = extractvalue %dx.types.CBufRet.i32 %32, 3
  %34 = shl i32 %15, 3
  %35 = udiv i32 %34, %33
  %36 = lshr i32 %35, 1
  %37 = add nuw i32 %36, 233
  %38 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 %37)  ; CBufferLoadLegacy(handle,regIndex)
  %39 = extractvalue %dx.types.CBufRet.i32 %38, 0
  %40 = extractvalue %dx.types.CBufRet.i32 %38, 1
  %41 = extractvalue %dx.types.CBufRet.i32 %38, 2
  %42 = extractvalue %dx.types.CBufRet.i32 %38, 3
  %43 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 0
  store i32 %39, i32* %43, align 4
  %44 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 1
  store i32 %40, i32* %44, align 4
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 2
  store i32 %41, i32* %45, align 4
  %46 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 3
  store i32 %42, i32* %46, align 4
  %47 = shl i32 %35, 1
  %48 = and i32 %47, 2
  %49 = getelementptr [4 x i32], [4 x i32]* %31, i32 0, i32 %48
  %50 = load i32, i32* %49, align 4, !tbaa !29, !noalias !33
  %51 = and i32 %50, 255
  %52 = or i32 %48, 1
  %53 = getelementptr [4 x i32], [4 x i32]* %31, i32 0, i32 %52
  %54 = load i32, i32* %53, align 4, !tbaa !29, !noalias !33
  %55 = lshr i32 %50, 8
  %56 = urem i32 %13, %33
  %57 = add nuw nsw i32 %51, 198
  %58 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 %57)  ; CBufferLoadLegacy(handle,regIndex)
  %59 = extractvalue %dx.types.CBufRet.f32 %58, 0
  %60 = extractvalue %dx.types.CBufRet.f32 %58, 1
  %61 = extractvalue %dx.types.CBufRet.f32 %58, 2
  %62 = uitofp i32 %33 to float
  %63 = fdiv fast float %61, %62
  %64 = uitofp i32 %56 to float
  %65 = uitofp i32 %14 to float
  %66 = fmul fast float %63, %64
  %67 = fmul fast float %63, %65
  %68 = fadd fast float %66, %59
  %69 = fadd fast float %67, %60
  %70 = extractvalue %dx.types.CBufRet.f32 %58, 3
  %71 = mul i32 %51, %33
  %72 = add i32 %56, %71
  %73 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %74 = extractvalue %dx.types.CBufRet.f32 %73, 0
  %75 = extractvalue %dx.types.CBufRet.f32 %73, 1
  %76 = extractvalue %dx.types.CBufRet.f32 %73, 2
  %77 = fmul fast float %76, %68
  %78 = fmul fast float %76, %69
  %79 = fadd fast float %77, %74
  %80 = fadd fast float %78, %75
  %81 = extractvalue %dx.types.CBufRet.i32 %32, 1
  %82 = icmp eq i32 %81, 5
  %83 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %72, i32 %14, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %84 = extractvalue %dx.types.ResRet.f32 %83, 0
  %85 = extractvalue %dx.types.ResRet.f32 %83, 1
  %86 = extractvalue %dx.types.ResRet.f32 %83, 2
  br i1 %82, label %96, label %87, !dx.controlflow.hints !40

; <label>:87                                      ; preds = %0
  %88 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %72, i32 %14, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %89 = extractvalue %dx.types.ResRet.f32 %88, 0
  %90 = extractvalue %dx.types.ResRet.f32 %88, 1
  %91 = extractvalue %dx.types.ResRet.f32 %88, 2
  %92 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %72, i32 %14, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %93 = extractvalue %dx.types.ResRet.f32 %92, 0
  %94 = extractvalue %dx.types.ResRet.f32 %92, 1
  %95 = extractvalue %dx.types.ResRet.f32 %92, 2
  br label %96

; <label>:96                                      ; preds = %87, %0
  %97 = phi float [ undef, %0 ], [ %89, %87 ]
  %98 = phi float [ undef, %0 ], [ %90, %87 ]
  %99 = phi float [ undef, %0 ], [ %91, %87 ]
  %100 = phi float [ undef, %0 ], [ %93, %87 ]
  %101 = phi float [ undef, %0 ], [ %94, %87 ]
  %102 = phi float [ undef, %0 ], [ %95, %87 ]
  %103 = fcmp fast ole float %84, 0x3FA4B5DCC0000000
  %104 = fmul fast float %84, 0x3FB3D07220000000
  %105 = fadd fast float %84, 0x3FAC28F5C0000000
  %106 = fmul fast float %105, 0x3FEE54EDE0000000
  %107 = call float @dx.op.unary.f32(i32 23, float %106)  ; Log(value)
  %108 = fmul fast float %107, 0x4003333340000000
  %109 = call float @dx.op.unary.f32(i32 21, float %108)  ; Exp(value)
  %110 = select i1 %103, float %104, float %109
  %111 = fcmp fast ole float %85, 0x3FA4B5DCC0000000
  %112 = fmul fast float %85, 0x3FB3D07220000000
  %113 = fadd fast float %85, 0x3FAC28F5C0000000
  %114 = fmul fast float %113, 0x3FEE54EDE0000000
  %115 = call float @dx.op.unary.f32(i32 23, float %114)  ; Log(value)
  %116 = fmul fast float %115, 0x4003333340000000
  %117 = call float @dx.op.unary.f32(i32 21, float %116)  ; Exp(value)
  %118 = select i1 %111, float %112, float %117
  %119 = fcmp fast ole float %86, 0x3FA4B5DCC0000000
  %120 = fmul fast float %86, 0x3FB3D07220000000
  %121 = fadd fast float %86, 0x3FAC28F5C0000000
  %122 = fmul fast float %121, 0x3FEE54EDE0000000
  %123 = call float @dx.op.unary.f32(i32 23, float %122)  ; Log(value)
  %124 = fmul fast float %123, 0x4003333340000000
  %125 = call float @dx.op.unary.f32(i32 21, float %124)  ; Exp(value)
  %126 = select i1 %119, float %120, float %125
  br i1 %82, label %136, label %127, !dx.controlflow.hints !41

; <label>:127                                     ; preds = %96
  switch i32 %81, label %136 [
    i32 1, label %128
    i32 2, label %129
    i32 3, label %135
  ], !dx.controlflow.hints !42

; <label>:128                                     ; preds = %127
  br label %136

; <label>:129                                     ; preds = %127
  %130 = fcmp fast une float %102, 0.000000e+00
  %131 = fmul fast float %102, 3.200000e+01
  %132 = fadd fast float %131, -1.600000e+01
  %133 = call float @dx.op.unary.f32(i32 21, float %132)  ; Exp(value)
  %134 = select i1 %130, float %133, float 0.000000e+00
  br label %136

; <label>:135                                     ; preds = %127
  br label %136

; <label>:136                                     ; preds = %135, %129, %128, %127, %96
  %137 = phi float [ 0.000000e+00, %127 ], [ %102, %135 ], [ 0.000000e+00, %129 ], [ 0.000000e+00, %128 ], [ 0.000000e+00, %96 ]
  %138 = phi float [ 0.000000e+00, %127 ], [ 0.000000e+00, %135 ], [ 0.000000e+00, %129 ], [ %102, %128 ], [ 0.000000e+00, %96 ]
  %139 = phi float [ 0.000000e+00, %127 ], [ 0.000000e+00, %135 ], [ %134, %129 ], [ 0.000000e+00, %128 ], [ 0.000000e+00, %96 ]
  %140 = phi float [ %101, %127 ], [ %101, %135 ], [ %101, %129 ], [ %101, %128 ], [ 0.000000e+00, %96 ]
  %141 = phi float [ %97, %127 ], [ %97, %135 ], [ %97, %129 ], [ %97, %128 ], [ 0.000000e+00, %96 ]
  %142 = phi float [ %99, %127 ], [ %99, %135 ], [ %99, %129 ], [ %99, %128 ], [ 0.000000e+00, %96 ]
  %143 = phi float [ %98, %127 ], [ %98, %135 ], [ %98, %129 ], [ %98, %128 ], [ 0.000000e+00, %96 ]
  %144 = phi float [ %100, %127 ], [ %100, %135 ], [ %100, %129 ], [ %100, %128 ], [ 0.000000e+00, %96 ]
  %145 = extractvalue %dx.types.CBufRet.i32 %32, 2
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %148, label %147, !dx.controlflow.hints !43

; <label>:147                                     ; preds = %136
  br label %312

; <label>:148                                     ; preds = %136
  br label %149

; <label>:149                                     ; preds = %306, %148
  %150 = phi i32 [ %307, %306 ], [ -1, %148 ]
  %151 = phi i32 [ %308, %306 ], [ 0, %148 ]
  %152 = phi float [ %309, %306 ], [ -1.000000e+09, %148 ]
  %153 = phi i32 [ %55, %306 ], [ %54, %148 ]
  %154 = phi i32 [ %310, %306 ], [ 0, %148 ]
  %155 = icmp eq i32 %153, 0
  br i1 %155, label %306, label %156

; <label>:156                                     ; preds = %149
  br label %157

; <label>:157                                     ; preds = %190, %156
  %158 = phi i32 [ %191, %190 ], [ %150, %156 ]
  %159 = phi i32 [ %192, %190 ], [ %151, %156 ]
  %160 = phi float [ %193, %190 ], [ %152, %156 ]
  %161 = phi i32 [ %166, %190 ], [ %153, %156 ]
  %162 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %161)  ; FirstbitLo(value)
  %163 = and i32 %162, 31
  %164 = shl i32 1, %163
  %165 = xor i32 %164, -1
  %166 = and i32 %161, %165
  %167 = shl i32 %154, 5
  %168 = add i32 %162, %167
  %169 = mul i32 %168, 3
  %170 = add i32 %169, 30
  %171 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 %170)  ; CBufferLoadLegacy(handle,regIndex)
  %172 = extractvalue %dx.types.CBufRet.i32 %171, 1
  %173 = bitcast i32 %172 to float
  %174 = extractvalue %dx.types.CBufRet.i32 %171, 2
  %175 = bitcast i32 %174 to float
  %176 = fsub fast float %79, %173
  %177 = fsub fast float %80, %175
  %178 = add i32 %169, 32
  %179 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 %178)  ; CBufferLoadLegacy(handle,regIndex)
  %180 = extractvalue %dx.types.CBufRet.i32 %179, 1
  %181 = and i32 %180, 1048575
  %182 = uitofp i32 %181 to float
  %183 = fcmp fast olt float %176, 0.000000e+00
  %184 = fcmp fast olt float %177, 0.000000e+00
  %185 = or i1 %183, %184
  %186 = fcmp fast ogt float %176, %182
  %187 = fcmp fast ogt float %177, %182
  %188 = or i1 %186, %187
  %189 = or i1 %185, %188
  br i1 %189, label %190, label %195, !dx.controlflow.hints !44

; <label>:190                                     ; preds = %304, %258, %256, %157
  %191 = phi i32 [ %158, %157 ], [ %197, %256 ], [ %168, %304 ], [ %197, %258 ]
  %192 = phi i32 [ %159, %157 ], [ %198, %256 ], [ %198, %304 ], [ %198, %258 ]
  %193 = phi float [ %160, %157 ], [ %160, %256 ], [ %302, %304 ], [ %160, %258 ]
  %194 = icmp eq i32 %166, 0
  br i1 %194, label %305, label %157

; <label>:195                                     ; preds = %157
  %196 = icmp ne i32 %159, 0
  %197 = select i1 %196, i32 %158, i32 %168
  %198 = select i1 %196, i32 %159, i32 1
  %199 = add i32 %169, 31
  %200 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 %199)  ; CBufferLoadLegacy(handle,regIndex)
  %201 = extractvalue %dx.types.CBufRet.i32 %200, 2
  %202 = and i32 %201, 134217728
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %255, label %204, !dx.controlflow.hints !45

; <label>:204                                     ; preds = %195
  %205 = and i32 %201, 16777215
  %206 = add i32 %205, 0
  %207 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %206, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %208 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 %170)  ; CBufferLoadLegacy(handle,regIndex)
  %209 = extractvalue %dx.types.CBufRet.i32 %208, 1
  %210 = bitcast i32 %209 to float
  %211 = extractvalue %dx.types.CBufRet.i32 %208, 2
  %212 = bitcast i32 %211 to float
  %213 = fsub fast float %79, %210
  %214 = fsub fast float %80, %212
  %215 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 %178)  ; CBufferLoadLegacy(handle,regIndex)
  %216 = extractvalue %dx.types.CBufRet.i32 %215, 1
  %217 = and i32 %216, 1048575
  %218 = uitofp i32 %217 to float
  %219 = fdiv fast float %213, %218
  %220 = fdiv fast float %214, %218
  %221 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 %199)  ; CBufferLoadLegacy(handle,regIndex)
  %222 = extractvalue %dx.types.CBufRet.i32 %221, 2
  %223 = lshr i32 %222, 24
  %224 = and i32 %223, 7
  %225 = or i32 %224, 8
  %226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 %225)  ; CBufferLoadLegacy(handle,regIndex)
  %227 = extractvalue %dx.types.CBufRet.f32 %226, 0
  %228 = extractvalue %dx.types.CBufRet.f32 %226, 2
  %229 = fdiv fast float 5.000000e-01, %227
  %230 = fmul fast float %229, 2.000000e+00
  %231 = fsub fast float 1.000000e+00, %230
  %232 = fmul fast float %231, %219
  %233 = fmul fast float %231, %220
  %234 = fadd fast float %232, %229
  %235 = fadd fast float %233, %229
  %236 = fmul fast float %227, %228
  %237 = fmul fast float %236, %234
  %238 = fmul fast float %236, %235
  %239 = fadd fast float %237, -5.000000e-01
  %240 = fadd fast float %238, -5.000000e-01
  %241 = fptoui float %239 to i32
  %242 = fptoui float %240 to i32
  %243 = lshr i32 %241, 3
  %244 = lshr i32 %242, 2
  %245 = shl nuw i32 %243, 3
  %246 = sub i32 %241, %245
  %247 = shl i32 %242, 3
  %248 = add i32 %247, %246
  %249 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %207, i32 0, i32 %243, i32 %244, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %250 = extractvalue %dx.types.ResRet.i32 %249, 0
  %251 = and i32 %248, 31
  %252 = shl i32 1, %251
  %253 = and i32 %252, %250
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %256, label %255, !dx.controlflow.hints !46

; <label>:255                                     ; preds = %204, %195
  br label %256

; <label>:256                                     ; preds = %255, %204
  %257 = phi i1 [ false, %255 ], [ true, %204 ]
  br i1 %257, label %190, label %258, !dx.controlflow.hints !47

; <label>:258                                     ; preds = %256
  %259 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 %170)  ; CBufferLoadLegacy(handle,regIndex)
  %260 = extractvalue %dx.types.CBufRet.i32 %259, 1
  %261 = bitcast i32 %260 to float
  %262 = extractvalue %dx.types.CBufRet.i32 %259, 2
  %263 = bitcast i32 %262 to float
  %264 = fsub fast float %79, %261
  %265 = fsub fast float %80, %263
  %266 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 %178)  ; CBufferLoadLegacy(handle,regIndex)
  %267 = extractvalue %dx.types.CBufRet.i32 %266, 1
  %268 = and i32 %267, 1048575
  %269 = uitofp i32 %268 to float
  %270 = fdiv fast float %264, %269
  %271 = fdiv fast float %265, %269
  %272 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 %199)  ; CBufferLoadLegacy(handle,regIndex)
  %273 = extractvalue %dx.types.CBufRet.i32 %272, 2
  %274 = lshr i32 %273, 24
  %275 = and i32 %274, 7
  %276 = or i32 %275, 8
  %277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 %276)  ; CBufferLoadLegacy(handle,regIndex)
  %278 = extractvalue %dx.types.CBufRet.f32 %277, 0
  %279 = extractvalue %dx.types.CBufRet.f32 %277, 2
  %280 = fdiv fast float 5.000000e-01, %278
  %281 = fmul fast float %280, 2.000000e+00
  %282 = fsub fast float 1.000000e+00, %281
  %283 = fmul fast float %282, %270
  %284 = fmul fast float %282, %271
  %285 = fadd fast float %283, %280
  %286 = fadd fast float %284, %280
  %287 = fmul fast float %285, %279
  %288 = fmul fast float %286, %279
  %289 = extractvalue %dx.types.CBufRet.i32 %272, 1
  %290 = and i32 %289, 16777215
  %291 = add i32 %290, 0
  %292 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %291, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %293 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 %170)  ; CBufferLoadLegacy(handle,regIndex)
  %294 = extractvalue %dx.types.CBufRet.i32 %293, 3
  %295 = bitcast i32 %294 to float
  %296 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 %199)  ; CBufferLoadLegacy(handle,regIndex)
  %297 = extractvalue %dx.types.CBufRet.i32 %296, 0
  %298 = bitcast i32 %297 to float
  %299 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %292, %dx.types.Handle %11, float %287, float %288, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %300 = extractvalue %dx.types.ResRet.f32 %299, 0
  %301 = fmul fast float %300, %298
  %302 = fadd fast float %301, %295
  %303 = fcmp fast ogt float %302, %160
  br i1 %303, label %304, label %190, !dx.controlflow.hints !48

; <label>:304                                     ; preds = %258
  br label %190

; <label>:305                                     ; preds = %190
  br label %306

; <label>:306                                     ; preds = %305, %149
  %307 = phi i32 [ %150, %149 ], [ %191, %305 ]
  %308 = phi i32 [ %151, %149 ], [ %192, %305 ]
  %309 = phi float [ %152, %149 ], [ %193, %305 ]
  %310 = add nuw nsw i32 %154, 1
  %311 = icmp eq i32 %310, 2
  br i1 %311, label %417, label %149

; <label>:312                                     ; preds = %413, %147
  %313 = phi i32 [ %414, %413 ], [ -1, %147 ]
  %314 = phi i32 [ %55, %413 ], [ %54, %147 ]
  %315 = phi i32 [ %415, %413 ], [ 0, %147 ]
  %316 = icmp eq i32 %314, 0
  br i1 %316, label %413, label %317

; <label>:317                                     ; preds = %312
  br label %318

; <label>:318                                     ; preds = %349, %317
  %319 = phi i32 [ %350, %349 ], [ %313, %317 ]
  %320 = phi i32 [ %325, %349 ], [ %314, %317 ]
  %321 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %320)  ; FirstbitLo(value)
  %322 = and i32 %321, 31
  %323 = shl i32 1, %322
  %324 = xor i32 %323, -1
  %325 = and i32 %320, %324
  %326 = shl i32 %315, 5
  %327 = add i32 %321, %326
  %328 = mul i32 %327, 3
  %329 = add i32 %328, 30
  %330 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 %329)  ; CBufferLoadLegacy(handle,regIndex)
  %331 = extractvalue %dx.types.CBufRet.i32 %330, 1
  %332 = bitcast i32 %331 to float
  %333 = extractvalue %dx.types.CBufRet.i32 %330, 2
  %334 = bitcast i32 %333 to float
  %335 = fsub fast float %79, %332
  %336 = fsub fast float %80, %334
  %337 = add i32 %328, 32
  %338 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 %337)  ; CBufferLoadLegacy(handle,regIndex)
  %339 = extractvalue %dx.types.CBufRet.i32 %338, 1
  %340 = and i32 %339, 1048575
  %341 = uitofp i32 %340 to float
  %342 = fcmp fast olt float %335, 0.000000e+00
  %343 = fcmp fast olt float %336, 0.000000e+00
  %344 = or i1 %342, %343
  %345 = fcmp fast ogt float %335, %341
  %346 = fcmp fast ogt float %336, %341
  %347 = or i1 %345, %346
  %348 = or i1 %344, %347
  br i1 %348, label %349, label %352, !dx.controlflow.hints !49

; <label>:349                                     ; preds = %410, %318
  %350 = phi i32 [ %319, %318 ], [ %327, %410 ]
  %351 = icmp eq i32 %325, 0
  br i1 %351, label %412, label %318

; <label>:352                                     ; preds = %318
  %353 = add i32 %328, 31
  %354 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 %353)  ; CBufferLoadLegacy(handle,regIndex)
  %355 = extractvalue %dx.types.CBufRet.i32 %354, 2
  %356 = and i32 %355, 134217728
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %409, label %358, !dx.controlflow.hints !45

; <label>:358                                     ; preds = %352
  %359 = and i32 %355, 16777215
  %360 = add i32 %359, 0
  %361 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %360, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %362 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 %329)  ; CBufferLoadLegacy(handle,regIndex)
  %363 = extractvalue %dx.types.CBufRet.i32 %362, 1
  %364 = bitcast i32 %363 to float
  %365 = extractvalue %dx.types.CBufRet.i32 %362, 2
  %366 = bitcast i32 %365 to float
  %367 = fsub fast float %79, %364
  %368 = fsub fast float %80, %366
  %369 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 %337)  ; CBufferLoadLegacy(handle,regIndex)
  %370 = extractvalue %dx.types.CBufRet.i32 %369, 1
  %371 = and i32 %370, 1048575
  %372 = uitofp i32 %371 to float
  %373 = fdiv fast float %367, %372
  %374 = fdiv fast float %368, %372
  %375 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 %353)  ; CBufferLoadLegacy(handle,regIndex)
  %376 = extractvalue %dx.types.CBufRet.i32 %375, 2
  %377 = lshr i32 %376, 24
  %378 = and i32 %377, 7
  %379 = or i32 %378, 8
  %380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 %379)  ; CBufferLoadLegacy(handle,regIndex)
  %381 = extractvalue %dx.types.CBufRet.f32 %380, 0
  %382 = extractvalue %dx.types.CBufRet.f32 %380, 2
  %383 = fdiv fast float 5.000000e-01, %381
  %384 = fmul fast float %383, 2.000000e+00
  %385 = fsub fast float 1.000000e+00, %384
  %386 = fmul fast float %385, %373
  %387 = fmul fast float %385, %374
  %388 = fadd fast float %386, %383
  %389 = fadd fast float %387, %383
  %390 = fmul fast float %381, %382
  %391 = fmul fast float %390, %388
  %392 = fmul fast float %390, %389
  %393 = fadd fast float %391, -5.000000e-01
  %394 = fadd fast float %392, -5.000000e-01
  %395 = fptoui float %393 to i32
  %396 = fptoui float %394 to i32
  %397 = lshr i32 %395, 3
  %398 = lshr i32 %396, 2
  %399 = shl nuw i32 %397, 3
  %400 = sub i32 %395, %399
  %401 = shl i32 %396, 3
  %402 = add i32 %401, %400
  %403 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %361, i32 0, i32 %397, i32 %398, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %404 = extractvalue %dx.types.ResRet.i32 %403, 0
  %405 = and i32 %402, 31
  %406 = shl i32 1, %405
  %407 = and i32 %406, %404
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %410, label %409, !dx.controlflow.hints !46

; <label>:409                                     ; preds = %358, %352
  br label %410

; <label>:410                                     ; preds = %409, %358
  %411 = phi i1 [ false, %409 ], [ true, %358 ]
  br i1 %411, label %349, label %418, !dx.controlflow.hints !50

; <label>:412                                     ; preds = %349
  br label %413

; <label>:413                                     ; preds = %412, %312
  %414 = phi i32 [ %313, %312 ], [ %350, %412 ]
  %415 = add nuw nsw i32 %315, 1
  %416 = icmp ult i32 %415, 2
  br i1 %416, label %312, label %419

; <label>:417                                     ; preds = %306
  br label %420

; <label>:418                                     ; preds = %410
  br label %420

; <label>:419                                     ; preds = %413
  br label %420

; <label>:420                                     ; preds = %419, %418, %417
  %421 = phi i32 [ %307, %417 ], [ %327, %418 ], [ %414, %419 ]
  %422 = icmp ne i32 %421, -1
  br i1 %422, label %423, label %1411, !dx.controlflow.hints !51

; <label>:423                                     ; preds = %420
  %424 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 22)  ; CBufferLoadLegacy(handle,regIndex)
  %425 = extractvalue %dx.types.CBufRet.i32 %424, 2
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %1411, label %427, !dx.controlflow.hints !52

; <label>:427                                     ; preds = %423
  %428 = mul i32 %421, 3
  %429 = add i32 %428, 30
  %430 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 %429)  ; CBufferLoadLegacy(handle,regIndex)
  %431 = extractvalue %dx.types.CBufRet.i32 %430, 1
  %432 = bitcast i32 %431 to float
  %433 = extractvalue %dx.types.CBufRet.i32 %430, 2
  %434 = bitcast i32 %433 to float
  %435 = fsub fast float %79, %432
  %436 = fsub fast float %80, %434
  %437 = add i32 %428, 32
  %438 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 %437)  ; CBufferLoadLegacy(handle,regIndex)
  %439 = extractvalue %dx.types.CBufRet.i32 %438, 1
  %440 = and i32 %439, 1048575
  %441 = uitofp i32 %440 to float
  %442 = fdiv fast float %435, %441
  %443 = fdiv fast float %436, %441
  %444 = add i32 %428, 31
  %445 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 %444)  ; CBufferLoadLegacy(handle,regIndex)
  %446 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %447 = extractvalue %dx.types.CBufRet.i32 %446, 3
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %449, label %465, !dx.controlflow.hints !53

; <label>:449                                     ; preds = %427
  %450 = extractvalue %dx.types.CBufRet.i32 %445, 2
  %451 = lshr i32 %450, 24
  %452 = and i32 %451, 7
  %453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 %452)  ; CBufferLoadLegacy(handle,regIndex)
  %454 = extractvalue %dx.types.CBufRet.f32 %453, 0
  %455 = extractvalue %dx.types.CBufRet.f32 %453, 2
  %456 = fdiv fast float 5.000000e-01, %454
  %457 = fmul fast float %456, 2.000000e+00
  %458 = fsub fast float 1.000000e+00, %457
  %459 = fmul fast float %458, %442
  %460 = fmul fast float %458, %443
  %461 = fadd fast float %459, %456
  %462 = fadd fast float %460, %456
  %463 = fmul fast float %461, %455
  %464 = fmul fast float %462, %455
  br label %465

; <label>:465                                     ; preds = %449, %427
  %466 = phi float [ %463, %449 ], [ %442, %427 ]
  %467 = phi float [ %464, %449 ], [ %443, %427 ]
  %468 = extractvalue %dx.types.CBufRet.i32 %445, 1
  %469 = and i32 %468, 16777215
  %470 = add i32 %469, 0
  %471 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %470, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %472 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 %429)  ; CBufferLoadLegacy(handle,regIndex)
  %473 = extractvalue %dx.types.CBufRet.i32 %472, 3
  %474 = bitcast i32 %473 to float
  %475 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 %444)  ; CBufferLoadLegacy(handle,regIndex)
  %476 = extractvalue %dx.types.CBufRet.i32 %475, 0
  %477 = bitcast i32 %476 to float
  %478 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %471, %dx.types.Handle %11, float %466, float %467, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %479 = extractvalue %dx.types.ResRet.f32 %478, 0
  %480 = fmul fast float %479, %477
  %481 = fadd fast float %480, %474
  %482 = extractvalue %dx.types.CBufRet.i32 %475, 2
  %483 = lshr i32 %482, 24
  %484 = and i32 %483, 7
  %485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 %484)  ; CBufferLoadLegacy(handle,regIndex)
  %486 = extractvalue %dx.types.CBufRet.f32 %485, 0
  %487 = fptoui float %486 to i32
  %488 = extractvalue %dx.types.CBufRet.i32 %475, 1
  %489 = and i32 %488, 16777215
  %490 = add i32 %489, 0
  %491 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %490, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %492 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 %437)  ; CBufferLoadLegacy(handle,regIndex)
  %493 = extractvalue %dx.types.CBufRet.i32 %492, 1
  %494 = and i32 %493, 1048575
  %495 = uitofp i32 %494 to float
  %496 = uitofp i32 %487 to float
  %497 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 %429)  ; CBufferLoadLegacy(handle,regIndex)
  %498 = extractvalue %dx.types.CBufRet.i32 %497, 3
  %499 = bitcast i32 %498 to float
  %500 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 %444)  ; CBufferLoadLegacy(handle,regIndex)
  %501 = extractvalue %dx.types.CBufRet.i32 %500, 0
  %502 = bitcast i32 %501 to float
  %503 = fdiv fast float 1.000000e+00, %496
  %504 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %505 = extractvalue %dx.types.CBufRet.i32 %504, 3
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %833, label %507, !dx.controlflow.hints !54

; <label>:507                                     ; preds = %465
  %508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %509 = extractvalue %dx.types.CBufRet.f32 %508, 2
  %510 = extractvalue %dx.types.CBufRet.f32 %508, 3
  %511 = fmul fast float %509, %466
  %512 = fmul fast float %510, %467
  %513 = extractvalue %dx.types.CBufRet.f32 %508, 0
  %514 = extractvalue %dx.types.CBufRet.f32 %508, 1
  %515 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %516 = extractvalue %dx.types.CBufRet.i32 %515, 0
  %517 = extractvalue %dx.types.CBufRet.i32 %515, 1
  %518 = extractvalue %dx.types.CBufRet.i32 %515, 2
  %519 = extractvalue %dx.types.CBufRet.i32 %515, 3
  %520 = mul i32 %518, %518
  %521 = fadd fast float %509, 0xBF847AE140000000
  %522 = fadd fast float %510, 0xBF847AE140000000
  %523 = call float @dx.op.binary.f32(i32 35, float %511, float 0.000000e+00)  ; FMax(a,b)
  %524 = call float @dx.op.binary.f32(i32 35, float %512, float 0.000000e+00)  ; FMax(a,b)
  %525 = call float @dx.op.binary.f32(i32 36, float %523, float %521)  ; FMin(a,b)
  %526 = call float @dx.op.binary.f32(i32 36, float %524, float %522)  ; FMin(a,b)
  %527 = fdiv fast float %525, %513
  %528 = fdiv fast float %526, %514
  %529 = fptoui float %527 to i32
  %530 = fptoui float %528 to i32
  %531 = mul i32 %530, %516
  %532 = add i32 %531, %529
  %533 = lshr i32 %532, 1
  %534 = shl i32 %533, 2
  %535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %534, i32 undef)  ; BufferLoad(srv,index,wot)
  %536 = extractvalue %dx.types.ResRet.i32 %535, 0
  %537 = shl i32 %532, 4
  %538 = and i32 %537, 16
  %539 = lshr i32 %536, %538
  %540 = and i32 %539, 255
  %541 = lshr i32 %539, 8
  %542 = and i32 %541, 31
  %543 = shl i32 1, %542
  %544 = uitofp i32 %543 to float
  %545 = fmul fast float %544, %525
  %546 = fdiv fast float %545, %509
  %547 = fmul fast float %544, %526
  %548 = fdiv fast float %547, %510
  %549 = call float @dx.op.unary.f32(i32 22, float %546)  ; Frc(value)
  %550 = call float @dx.op.unary.f32(i32 22, float %548)  ; Frc(value)
  %551 = uitofp i32 %517 to float
  %552 = fmul fast float %549, %551
  %553 = fmul fast float %550, %551
  %554 = uitofp i32 %519 to float
  %555 = fadd fast float %552, %554
  %556 = fadd fast float %553, %554
  %557 = mul i32 %520, %540
  %558 = fadd fast float %555, -1.000000e+00
  %559 = fadd fast float %556, -1.000000e+00
  %560 = call float @dx.op.unary.f32(i32 22, float %558)  ; Frc(value)
  %561 = fptoui float %558 to i32
  %562 = fptoui float %556 to i32
  %563 = getelementptr [4 x i32], [4 x i32]* %20, i32 0, i32 0
  %564 = getelementptr [4 x i32], [4 x i32]* %21, i32 0, i32 0
  store i32 %561, i32* %563, align 4
  store i32 %562, i32* %564, align 4
  %565 = add i32 %561, 1
  %566 = getelementptr [4 x i32], [4 x i32]* %20, i32 0, i32 1
  %567 = getelementptr [4 x i32], [4 x i32]* %21, i32 0, i32 1
  store i32 %565, i32* %566, align 4
  store i32 %562, i32* %567, align 4
  %568 = add i32 %562, 1
  %569 = getelementptr [4 x i32], [4 x i32]* %20, i32 0, i32 2
  %570 = getelementptr [4 x i32], [4 x i32]* %21, i32 0, i32 2
  store i32 %561, i32* %569, align 4
  store i32 %568, i32* %570, align 4
  %571 = getelementptr [4 x i32], [4 x i32]* %20, i32 0, i32 3
  %572 = getelementptr [4 x i32], [4 x i32]* %21, i32 0, i32 3
  store i32 %565, i32* %571, align 4
  store i32 %568, i32* %572, align 4
  %573 = add i32 %518, -1
  br label %574

; <label>:574                                     ; preds = %597, %507
  %575 = phi i32 [ %562, %507 ], [ %601, %597 ]
  %576 = phi i32 [ %561, %507 ], [ %599, %597 ]
  %577 = phi i32 [ 0, %507 ], [ %595, %597 ]
  %578 = call i32 @dx.op.binary.i32(i32 40, i32 %576, i32 %573)  ; UMin(a,b)
  %579 = call i32 @dx.op.binary.i32(i32 40, i32 %575, i32 %573)  ; UMin(a,b)
  %580 = mul i32 %579, %518
  %581 = add i32 %578, %557
  %582 = add i32 %581, %580
  %583 = lshr i32 %582, 1
  %584 = shl i32 %583, 2
  %585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %584, i32 undef)  ; BufferLoad(srv,index,wot)
  %586 = extractvalue %dx.types.ResRet.i32 %585, 0
  %587 = shl i32 %582, 4
  %588 = and i32 %587, 16
  %589 = lshr i32 %586, %588
  %590 = and i32 %589, 65535
  %591 = uitofp i32 %590 to float
  %592 = fmul fast float %591, 0x3EF0002000000000
  %593 = call float @dx.op.unary.f32(i32 7, float %592)  ; Saturate(value)
  %594 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 %577
  store float %593, float* %594, align 4, !tbaa !55, !noalias !57
  %595 = add nuw nsw i32 %577, 1
  %596 = icmp eq i32 %595, 4
  br i1 %596, label %602, label %597

; <label>:597                                     ; preds = %574
  %598 = getelementptr [4 x i32], [4 x i32]* %20, i32 0, i32 %595
  %599 = load i32, i32* %598, align 4
  %600 = getelementptr [4 x i32], [4 x i32]* %21, i32 0, i32 %595
  %601 = load i32, i32* %600, align 4
  br label %574

; <label>:602                                     ; preds = %574
  %603 = fadd fast float %555, 1.000000e+00
  %604 = fadd fast float %556, 1.000000e+00
  %605 = call float @dx.op.unary.f32(i32 22, float %556)  ; Frc(value)
  %606 = fsub fast float 1.000000e+00, %560
  %607 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 0
  %608 = load float, float* %607, align 4, !tbaa !55, !noalias !57
  %609 = fmul fast float %608, %606
  %610 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 1
  %611 = load float, float* %610, align 4, !tbaa !55, !noalias !57
  %612 = fmul fast float %611, %560
  %613 = fadd fast float %612, %609
  %614 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 2
  %615 = load float, float* %614, align 4, !tbaa !55, !noalias !57
  %616 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 3
  %617 = load float, float* %616, align 4, !tbaa !55, !noalias !57
  %618 = fmul fast float %617, %560
  %619 = fsub fast float 1.000000e+00, %605
  %620 = fmul fast float %613, %619
  %621 = call float @dx.op.unary.f32(i32 22, float %603)  ; Frc(value)
  %622 = fptoui float %603 to i32
  %623 = getelementptr [4 x i32], [4 x i32]* %18, i32 0, i32 0
  %624 = getelementptr [4 x i32], [4 x i32]* %19, i32 0, i32 0
  store i32 %622, i32* %623, align 4
  store i32 %562, i32* %624, align 4
  %625 = add i32 %622, 1
  %626 = getelementptr [4 x i32], [4 x i32]* %18, i32 0, i32 1
  %627 = getelementptr [4 x i32], [4 x i32]* %19, i32 0, i32 1
  store i32 %625, i32* %626, align 4
  store i32 %562, i32* %627, align 4
  %628 = getelementptr [4 x i32], [4 x i32]* %18, i32 0, i32 2
  %629 = getelementptr [4 x i32], [4 x i32]* %19, i32 0, i32 2
  store i32 %622, i32* %628, align 4
  store i32 %568, i32* %629, align 4
  %630 = getelementptr [4 x i32], [4 x i32]* %18, i32 0, i32 3
  %631 = getelementptr [4 x i32], [4 x i32]* %19, i32 0, i32 3
  store i32 %625, i32* %630, align 4
  store i32 %568, i32* %631, align 4
  br label %632

; <label>:632                                     ; preds = %655, %602
  %633 = phi i32 [ %562, %602 ], [ %659, %655 ]
  %634 = phi i32 [ %622, %602 ], [ %657, %655 ]
  %635 = phi i32 [ 0, %602 ], [ %653, %655 ]
  %636 = call i32 @dx.op.binary.i32(i32 40, i32 %634, i32 %573)  ; UMin(a,b)
  %637 = call i32 @dx.op.binary.i32(i32 40, i32 %633, i32 %573)  ; UMin(a,b)
  %638 = mul i32 %637, %518
  %639 = add i32 %636, %557
  %640 = add i32 %639, %638
  %641 = lshr i32 %640, 1
  %642 = shl i32 %641, 2
  %643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %642, i32 undef)  ; BufferLoad(srv,index,wot)
  %644 = extractvalue %dx.types.ResRet.i32 %643, 0
  %645 = shl i32 %640, 4
  %646 = and i32 %645, 16
  %647 = lshr i32 %644, %646
  %648 = and i32 %647, 65535
  %649 = uitofp i32 %648 to float
  %650 = fmul fast float %649, 0x3EF0002000000000
  %651 = call float @dx.op.unary.f32(i32 7, float %650)  ; Saturate(value)
  %652 = getelementptr inbounds [4 x float], [4 x float]* %28, i32 0, i32 %635
  store float %651, float* %652, align 4, !tbaa !55, !noalias !57
  %653 = add nuw nsw i32 %635, 1
  %654 = icmp eq i32 %653, 4
  br i1 %654, label %660, label %655

; <label>:655                                     ; preds = %632
  %656 = getelementptr [4 x i32], [4 x i32]* %18, i32 0, i32 %653
  %657 = load i32, i32* %656, align 4
  %658 = getelementptr [4 x i32], [4 x i32]* %19, i32 0, i32 %653
  %659 = load i32, i32* %658, align 4
  br label %632

; <label>:660                                     ; preds = %632
  %661 = fmul fast float %615, %606
  %662 = fadd fast float %618, %661
  %663 = fmul fast float %662, %605
  %664 = fsub fast float 1.000000e+00, %621
  %665 = getelementptr inbounds [4 x float], [4 x float]* %28, i32 0, i32 0
  %666 = load float, float* %665, align 4, !tbaa !55, !noalias !57
  %667 = fmul fast float %666, %664
  %668 = getelementptr inbounds [4 x float], [4 x float]* %28, i32 0, i32 1
  %669 = load float, float* %668, align 4, !tbaa !55, !noalias !57
  %670 = fmul fast float %669, %621
  %671 = fadd fast float %670, %667
  %672 = getelementptr inbounds [4 x float], [4 x float]* %28, i32 0, i32 2
  %673 = load float, float* %672, align 4, !tbaa !55, !noalias !57
  %674 = getelementptr inbounds [4 x float], [4 x float]* %28, i32 0, i32 3
  %675 = load float, float* %674, align 4, !tbaa !55, !noalias !57
  %676 = fmul fast float %675, %621
  %677 = fmul fast float %671, %619
  %678 = call float @dx.op.unary.f32(i32 22, float %555)  ; Frc(value)
  %679 = fptoui float %555 to i32
  %680 = fptoui float %559 to i32
  %681 = getelementptr [4 x i32], [4 x i32]* %22, i32 0, i32 0
  %682 = getelementptr [4 x i32], [4 x i32]* %23, i32 0, i32 0
  store i32 %679, i32* %681, align 4
  store i32 %680, i32* %682, align 4
  %683 = add i32 %679, 1
  %684 = getelementptr [4 x i32], [4 x i32]* %22, i32 0, i32 1
  %685 = getelementptr [4 x i32], [4 x i32]* %23, i32 0, i32 1
  store i32 %683, i32* %684, align 4
  store i32 %680, i32* %685, align 4
  %686 = add i32 %680, 1
  %687 = getelementptr [4 x i32], [4 x i32]* %22, i32 0, i32 2
  %688 = getelementptr [4 x i32], [4 x i32]* %23, i32 0, i32 2
  store i32 %679, i32* %687, align 4
  store i32 %686, i32* %688, align 4
  %689 = getelementptr [4 x i32], [4 x i32]* %22, i32 0, i32 3
  %690 = getelementptr [4 x i32], [4 x i32]* %23, i32 0, i32 3
  store i32 %683, i32* %689, align 4
  store i32 %686, i32* %690, align 4
  br label %691

; <label>:691                                     ; preds = %714, %660
  %692 = phi i32 [ %680, %660 ], [ %718, %714 ]
  %693 = phi i32 [ %679, %660 ], [ %716, %714 ]
  %694 = phi i32 [ 0, %660 ], [ %712, %714 ]
  %695 = call i32 @dx.op.binary.i32(i32 40, i32 %693, i32 %573)  ; UMin(a,b)
  %696 = call i32 @dx.op.binary.i32(i32 40, i32 %692, i32 %573)  ; UMin(a,b)
  %697 = mul i32 %696, %518
  %698 = add i32 %695, %557
  %699 = add i32 %698, %697
  %700 = lshr i32 %699, 1
  %701 = shl i32 %700, 2
  %702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %701, i32 undef)  ; BufferLoad(srv,index,wot)
  %703 = extractvalue %dx.types.ResRet.i32 %702, 0
  %704 = shl i32 %699, 4
  %705 = and i32 %704, 16
  %706 = lshr i32 %703, %705
  %707 = and i32 %706, 65535
  %708 = uitofp i32 %707 to float
  %709 = fmul fast float %708, 0x3EF0002000000000
  %710 = call float @dx.op.unary.f32(i32 7, float %709)  ; Saturate(value)
  %711 = getelementptr inbounds [4 x float], [4 x float]* %27, i32 0, i32 %694
  store float %710, float* %711, align 4, !tbaa !55, !noalias !57
  %712 = add nuw nsw i32 %694, 1
  %713 = icmp eq i32 %712, 4
  br i1 %713, label %719, label %714

; <label>:714                                     ; preds = %691
  %715 = getelementptr [4 x i32], [4 x i32]* %22, i32 0, i32 %712
  %716 = load i32, i32* %715, align 4
  %717 = getelementptr [4 x i32], [4 x i32]* %23, i32 0, i32 %712
  %718 = load i32, i32* %717, align 4
  br label %691

; <label>:719                                     ; preds = %691
  %720 = fmul fast float %673, %664
  %721 = fadd fast float %676, %720
  %722 = fmul fast float %721, %605
  %723 = call float @dx.op.unary.f32(i32 22, float %559)  ; Frc(value)
  %724 = fsub fast float 1.000000e+00, %678
  %725 = getelementptr inbounds [4 x float], [4 x float]* %27, i32 0, i32 0
  %726 = load float, float* %725, align 4, !tbaa !55, !noalias !57
  %727 = fmul fast float %726, %724
  %728 = getelementptr inbounds [4 x float], [4 x float]* %27, i32 0, i32 1
  %729 = load float, float* %728, align 4, !tbaa !55, !noalias !57
  %730 = fmul fast float %729, %678
  %731 = fadd fast float %730, %727
  %732 = getelementptr inbounds [4 x float], [4 x float]* %27, i32 0, i32 2
  %733 = load float, float* %732, align 4, !tbaa !55, !noalias !57
  %734 = getelementptr inbounds [4 x float], [4 x float]* %27, i32 0, i32 3
  %735 = load float, float* %734, align 4, !tbaa !55, !noalias !57
  %736 = fmul fast float %735, %678
  %737 = fsub fast float 1.000000e+00, %723
  %738 = fmul fast float %731, %737
  %739 = fptoui float %604 to i32
  %740 = getelementptr [4 x i32], [4 x i32]* %16, i32 0, i32 0
  %741 = getelementptr [4 x i32], [4 x i32]* %17, i32 0, i32 0
  store i32 %679, i32* %740, align 4
  store i32 %739, i32* %741, align 4
  %742 = getelementptr [4 x i32], [4 x i32]* %16, i32 0, i32 1
  %743 = getelementptr [4 x i32], [4 x i32]* %17, i32 0, i32 1
  store i32 %683, i32* %742, align 4
  store i32 %739, i32* %743, align 4
  %744 = add i32 %739, 1
  %745 = getelementptr [4 x i32], [4 x i32]* %16, i32 0, i32 2
  %746 = getelementptr [4 x i32], [4 x i32]* %17, i32 0, i32 2
  store i32 %679, i32* %745, align 4
  store i32 %744, i32* %746, align 4
  %747 = getelementptr [4 x i32], [4 x i32]* %16, i32 0, i32 3
  %748 = getelementptr [4 x i32], [4 x i32]* %17, i32 0, i32 3
  store i32 %683, i32* %747, align 4
  store i32 %744, i32* %748, align 4
  br label %749

; <label>:749                                     ; preds = %772, %719
  %750 = phi i32 [ %739, %719 ], [ %776, %772 ]
  %751 = phi i32 [ %679, %719 ], [ %774, %772 ]
  %752 = phi i32 [ 0, %719 ], [ %770, %772 ]
  %753 = call i32 @dx.op.binary.i32(i32 40, i32 %751, i32 %573)  ; UMin(a,b)
  %754 = call i32 @dx.op.binary.i32(i32 40, i32 %750, i32 %573)  ; UMin(a,b)
  %755 = mul i32 %754, %518
  %756 = add i32 %753, %557
  %757 = add i32 %756, %755
  %758 = lshr i32 %757, 1
  %759 = shl i32 %758, 2
  %760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %759, i32 undef)  ; BufferLoad(srv,index,wot)
  %761 = extractvalue %dx.types.ResRet.i32 %760, 0
  %762 = shl i32 %757, 4
  %763 = and i32 %762, 16
  %764 = lshr i32 %761, %763
  %765 = and i32 %764, 65535
  %766 = uitofp i32 %765 to float
  %767 = fmul fast float %766, 0x3EF0002000000000
  %768 = call float @dx.op.unary.f32(i32 7, float %767)  ; Saturate(value)
  %769 = getelementptr inbounds [4 x float], [4 x float]* %26, i32 0, i32 %752
  store float %768, float* %769, align 4, !tbaa !55, !noalias !57
  %770 = add nuw nsw i32 %752, 1
  %771 = icmp eq i32 %770, 4
  br i1 %771, label %777, label %772

; <label>:772                                     ; preds = %749
  %773 = getelementptr [4 x i32], [4 x i32]* %16, i32 0, i32 %770
  %774 = load i32, i32* %773, align 4
  %775 = getelementptr [4 x i32], [4 x i32]* %17, i32 0, i32 %770
  %776 = load i32, i32* %775, align 4
  br label %749

; <label>:777                                     ; preds = %749
  %778 = fmul fast float %733, %724
  %779 = fadd fast float %736, %778
  %780 = fmul fast float %779, %723
  %781 = call float @dx.op.unary.f32(i32 22, float %604)  ; Frc(value)
  %782 = getelementptr inbounds [4 x float], [4 x float]* %26, i32 0, i32 0
  %783 = load float, float* %782, align 4, !tbaa !55, !noalias !57
  %784 = fmul fast float %783, %724
  %785 = getelementptr inbounds [4 x float], [4 x float]* %26, i32 0, i32 1
  %786 = load float, float* %785, align 4, !tbaa !55, !noalias !57
  %787 = fmul fast float %786, %678
  %788 = fadd fast float %787, %784
  %789 = getelementptr inbounds [4 x float], [4 x float]* %26, i32 0, i32 2
  %790 = load float, float* %789, align 4, !tbaa !55, !noalias !57
  %791 = fmul fast float %790, %724
  %792 = getelementptr inbounds [4 x float], [4 x float]* %26, i32 0, i32 3
  %793 = load float, float* %792, align 4, !tbaa !55, !noalias !57
  %794 = fmul fast float %793, %678
  %795 = fadd fast float %794, %791
  %796 = fsub fast float 1.000000e+00, %781
  %797 = fmul fast float %788, %796
  %798 = fmul fast float %795, %781
  %799 = fmul fast float %509, 2.000000e+00
  %800 = fmul fast float %544, %551
  %801 = fdiv fast float %799, %800
  %802 = fsub fast float -0.000000e+00, %620
  %803 = fsub fast float %802, %663
  %804 = fadd fast float %803, %677
  %805 = fadd fast float %804, %722
  %806 = fmul fast float %805, %502
  %807 = fmul fast float %510, 2.000000e+00
  %808 = fdiv fast float %807, %800
  %809 = fsub fast float -0.000000e+00, %738
  %810 = fsub fast float %809, %780
  %811 = fadd fast float %810, %797
  %812 = fadd fast float %811, %798
  %813 = fmul fast float %806, %808
  %814 = fsub fast float -0.000000e+00, %813
  %815 = fmul fast float %502, %801
  %816 = fmul fast float %815, %812
  %817 = fsub fast float -0.000000e+00, %816
  %818 = fmul fast float %808, %801
  %819 = call float @dx.op.dot3.f32(i32 55, float %814, float %817, float %818, float %814, float %817, float %818)  ; Dot3(ax,ay,az,bx,by,bz)
  %820 = call float @dx.op.unary.f32(i32 25, float %819)  ; Rsqrt(value)
  %821 = fmul fast float %820, %814
  %822 = fmul fast float %820, %817
  %823 = fmul fast float %820, %818
  %824 = call float @dx.op.dot3.f32(i32 55, float %801, float 0.000000e+00, float %806, float %801, float 0.000000e+00, float %806)  ; Dot3(ax,ay,az,bx,by,bz)
  %825 = call float @dx.op.unary.f32(i32 25, float %824)  ; Rsqrt(value)
  %826 = fmul fast float %825, %801
  %827 = fmul fast float %825, %806
  %828 = fmul fast float %822, %827
  %829 = fmul fast float %826, %823
  %830 = fmul fast float %827, %821
  %831 = fsub fast float %829, %830
  %832 = fmul fast float %822, %826
  br label %892

; <label>:833                                     ; preds = %465
  %834 = getelementptr [4 x float], [4 x float]* %24, i32 0, i32 0
  %835 = getelementptr [4 x float], [4 x float]* %25, i32 0, i32 0
  %836 = fsub fast float -0.000000e+00, %503
  store float %836, float* %834, align 4
  store float 0.000000e+00, float* %835, align 4
  %837 = getelementptr [4 x float], [4 x float]* %24, i32 0, i32 1
  %838 = getelementptr [4 x float], [4 x float]* %25, i32 0, i32 1
  store float %503, float* %837, align 4
  store float 0.000000e+00, float* %838, align 4
  %839 = getelementptr [4 x float], [4 x float]* %24, i32 0, i32 2
  %840 = getelementptr [4 x float], [4 x float]* %25, i32 0, i32 2
  store float 0.000000e+00, float* %839, align 4
  store float %836, float* %840, align 4
  %841 = getelementptr [4 x float], [4 x float]* %24, i32 0, i32 3
  %842 = getelementptr [4 x float], [4 x float]* %25, i32 0, i32 3
  store float 0.000000e+00, float* %841, align 4
  store float %503, float* %842, align 4
  br label %843

; <label>:843                                     ; preds = %856, %833
  %844 = phi float [ 0.000000e+00, %833 ], [ %860, %856 ]
  %845 = phi float [ %836, %833 ], [ %858, %856 ]
  %846 = phi i32 [ 0, %833 ], [ %854, %856 ]
  %847 = fadd fast float %845, %466
  %848 = fadd fast float %844, %467
  %849 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %491, %dx.types.Handle %11, float %847, float %848, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %850 = extractvalue %dx.types.ResRet.f32 %849, 0
  %851 = fmul fast float %850, %502
  %852 = fadd fast float %851, %499
  %853 = getelementptr [4 x float], [4 x float]* %30, i32 0, i32 %846
  store float %852, float* %853, align 4, !tbaa !55, !noalias !75
  %854 = add nuw nsw i32 %846, 1
  %855 = icmp eq i32 %854, 4
  br i1 %855, label %861, label %856

; <label>:856                                     ; preds = %843
  %857 = getelementptr [4 x float], [4 x float]* %24, i32 0, i32 %854
  %858 = load float, float* %857, align 4
  %859 = getelementptr [4 x float], [4 x float]* %25, i32 0, i32 %854
  %860 = load float, float* %859, align 4
  br label %843

; <label>:861                                     ; preds = %843
  %862 = fdiv fast float %495, %496
  %863 = fmul fast float %862, 2.000000e+00
  %864 = getelementptr [4 x float], [4 x float]* %30, i32 0, i32 1
  %865 = load float, float* %864, align 4, !tbaa !55, !noalias !75
  %866 = getelementptr [4 x float], [4 x float]* %30, i32 0, i32 0
  %867 = load float, float* %866, align 4, !tbaa !55, !noalias !75
  %868 = fsub fast float %865, %867
  %869 = getelementptr [4 x float], [4 x float]* %30, i32 0, i32 3
  %870 = load float, float* %869, align 4, !tbaa !55, !noalias !75
  %871 = getelementptr [4 x float], [4 x float]* %30, i32 0, i32 2
  %872 = load float, float* %871, align 4, !tbaa !55, !noalias !75
  %873 = fsub fast float %870, %872
  %874 = fmul fast float %862, -2.000000e+00
  %875 = fmul fast float %874, %868
  %876 = fmul fast float %874, %873
  %877 = fmul fast float %863, %863
  %878 = call float @dx.op.dot3.f32(i32 55, float %875, float %876, float %877, float %875, float %876, float %877)  ; Dot3(ax,ay,az,bx,by,bz)
  %879 = call float @dx.op.unary.f32(i32 25, float %878)  ; Rsqrt(value)
  %880 = fmul fast float %879, %875
  %881 = fmul fast float %879, %876
  %882 = fmul fast float %879, %877
  %883 = call float @dx.op.dot3.f32(i32 55, float %863, float 0.000000e+00, float %868, float %863, float 0.000000e+00, float %868)  ; Dot3(ax,ay,az,bx,by,bz)
  %884 = call float @dx.op.unary.f32(i32 25, float %883)  ; Rsqrt(value)
  %885 = fmul fast float %884, %863
  %886 = fmul fast float %884, %868
  %887 = fmul fast float %886, %881
  %888 = fmul fast float %885, %882
  %889 = fmul fast float %886, %880
  %890 = fsub fast float %888, %889
  %891 = fmul fast float %885, %881
  br label %892

; <label>:892                                     ; preds = %861, %777
  %893 = phi float [ %832, %777 ], [ %891, %861 ]
  %894 = phi float [ %821, %777 ], [ %880, %861 ]
  %895 = phi float [ %822, %777 ], [ %881, %861 ]
  %896 = phi float [ %823, %777 ], [ %882, %861 ]
  %897 = phi float [ %828, %777 ], [ %887, %861 ]
  %898 = phi float [ %831, %777 ], [ %890, %861 ]
  %899 = phi float [ %826, %777 ], [ %885, %861 ]
  %900 = phi float [ %827, %777 ], [ %886, %861 ]
  %901 = fsub fast float -0.000000e+00, %893
  %902 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %903 = extractvalue %dx.types.CBufRet.i32 %902, 1
  %904 = icmp eq i32 %903, 5
  %905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %906 = extractvalue %dx.types.CBufRet.f32 %905, 0
  %907 = extractvalue %dx.types.CBufRet.f32 %905, 1
  %908 = extractvalue %dx.types.CBufRet.f32 %905, 2
  %909 = fmul fast float %908, %68
  %910 = fmul fast float %908, %69
  %911 = fadd fast float %909, %906
  %912 = fadd fast float %910, %907
  %913 = fmul fast float %141, 2.000000e+00
  %914 = fadd fast float %913, -1.000000e+00
  %915 = fmul fast float %143, 2.000000e+00
  %916 = fadd fast float %915, -1.000000e+00
  %917 = fadd fast float %916, %914
  %918 = fmul fast float %917, 5.000000e-01
  %919 = fsub fast float %914, %916
  %920 = fmul fast float %919, 5.000000e-01
  %921 = call float @dx.op.unary.f32(i32 6, float %918)  ; FAbs(value)
  %922 = fsub fast float 1.000000e+00, %921
  %923 = call float @dx.op.unary.f32(i32 6, float %920)  ; FAbs(value)
  %924 = fsub fast float %922, %923
  %925 = call float @dx.op.dot3.f32(i32 55, float %918, float %920, float %924, float %918, float %920, float %924)  ; Dot3(ax,ay,az,bx,by,bz)
  %926 = call float @dx.op.unary.f32(i32 25, float %925)  ; Rsqrt(value)
  %927 = fmul fast float %926, %918
  %928 = fmul fast float %926, %920
  %929 = fmul fast float %926, %924
  %930 = fmul fast float %927, %900
  %931 = call float @dx.op.tertiary.f32(i32 46, float %928, float %901, float %930)  ; FMad(a,b,c)
  %932 = call float @dx.op.tertiary.f32(i32 46, float %929, float %896, float %931)  ; FMad(a,b,c)
  %933 = call float @dx.op.tertiary.f32(i32 46, float %928, float %898, float 0.000000e+00)  ; FMad(a,b,c)
  %934 = call float @dx.op.tertiary.f32(i32 46, float %929, float %895, float %933)  ; FMad(a,b,c)
  %935 = fmul fast float %927, %899
  %936 = call float @dx.op.tertiary.f32(i32 46, float %928, float %897, float %935)  ; FMad(a,b,c)
  %937 = call float @dx.op.tertiary.f32(i32 46, float %929, float %894, float %936)  ; FMad(a,b,c)
  br label %938

; <label>:938                                     ; preds = %1364, %892
  %939 = phi float [ %1365, %1364 ], [ %139, %892 ]
  %940 = phi float [ %1366, %1364 ], [ %937, %892 ]
  %941 = phi float [ %1367, %1364 ], [ %934, %892 ]
  %942 = phi float [ %1368, %1364 ], [ %932, %892 ]
  %943 = phi float [ %1369, %1364 ], [ %142, %892 ]
  %944 = phi float [ %1370, %1364 ], [ %140, %892 ]
  %945 = phi float [ %1371, %1364 ], [ %144, %892 ]
  %946 = phi float [ %1372, %1364 ], [ %110, %892 ]
  %947 = phi float [ %1373, %1364 ], [ %118, %892 ]
  %948 = phi float [ %1374, %1364 ], [ %126, %892 ]
  %949 = phi i32 [ %1375, %1364 ], [ 0, %892 ]
  %950 = phi i32 [ %1376, %1364 ], [ 0, %892 ]
  %951 = shl i32 %950, 8
  %952 = or i32 %951, 48
  %953 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %952, i32 undef)  ; BufferLoad(srv,index,wot)
  %954 = extractvalue %dx.types.ResRet.f32 %953, 0
  %955 = extractvalue %dx.types.ResRet.f32 %953, 1
  %956 = extractvalue %dx.types.ResRet.f32 %953, 2
  %957 = extractvalue %dx.types.ResRet.f32 %953, 3
  %958 = or i32 %951, 64
  %959 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %958, i32 undef)  ; BufferLoad(srv,index,wot)
  %960 = extractvalue %dx.types.ResRet.i32 %959, 0
  %961 = extractvalue %dx.types.ResRet.i32 %959, 1
  %962 = extractvalue %dx.types.ResRet.i32 %959, 2
  %963 = extractvalue %dx.types.ResRet.i32 %959, 3
  %964 = or i32 %951, 80
  %965 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %964, i32 undef)  ; BufferLoad(srv,index,wot)
  %966 = extractvalue %dx.types.ResRet.f32 %965, 0
  %967 = extractvalue %dx.types.ResRet.f32 %965, 1
  %968 = extractvalue %dx.types.ResRet.f32 %965, 2
  %969 = extractvalue %dx.types.ResRet.f32 %965, 3
  %970 = or i32 %951, 96
  %971 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %970, i32 undef)  ; BufferLoad(srv,index,wot)
  %972 = extractvalue %dx.types.ResRet.f32 %971, 0
  %973 = extractvalue %dx.types.ResRet.f32 %971, 1
  %974 = extractvalue %dx.types.ResRet.f32 %971, 2
  %975 = extractvalue %dx.types.ResRet.f32 %971, 3
  %976 = or i32 %951, 112
  %977 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %976, i32 undef)  ; BufferLoad(srv,index,wot)
  %978 = extractvalue %dx.types.ResRet.f32 %977, 0
  %979 = extractvalue %dx.types.ResRet.f32 %977, 1
  %980 = extractvalue %dx.types.ResRet.f32 %977, 2
  %981 = extractvalue %dx.types.ResRet.f32 %977, 3
  %982 = or i32 %951, 128
  %983 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %982, i32 undef)  ; BufferLoad(srv,index,wot)
  %984 = extractvalue %dx.types.ResRet.f32 %983, 0
  %985 = extractvalue %dx.types.ResRet.f32 %983, 1
  %986 = extractvalue %dx.types.ResRet.f32 %983, 2
  %987 = extractvalue %dx.types.ResRet.f32 %983, 3
  %988 = or i32 %951, 144
  %989 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %988, i32 undef)  ; BufferLoad(srv,index,wot)
  %990 = extractvalue %dx.types.ResRet.f32 %989, 0
  %991 = extractvalue %dx.types.ResRet.f32 %989, 1
  %992 = extractvalue %dx.types.ResRet.f32 %989, 2
  %993 = extractvalue %dx.types.ResRet.f32 %989, 3
  %994 = or i32 %951, 160
  %995 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %994, i32 undef)  ; BufferLoad(srv,index,wot)
  %996 = extractvalue %dx.types.ResRet.f32 %995, 0
  %997 = extractvalue %dx.types.ResRet.f32 %995, 1
  %998 = extractvalue %dx.types.ResRet.f32 %995, 2
  %999 = or i32 %951, 192
  %1000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %999, i32 undef)  ; BufferLoad(srv,index,wot)
  %1001 = extractvalue %dx.types.ResRet.i32 %1000, 0
  %1002 = or i32 %951, 208
  %1003 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1002, i32 undef)  ; BufferLoad(srv,index,wot)
  %1004 = extractvalue %dx.types.ResRet.f32 %1003, 0
  %1005 = or i32 %951, 240
  %1006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1005, i32 undef)  ; BufferLoad(srv,index,wot)
  %1007 = extractvalue %dx.types.ResRet.i32 %1006, 1
  %1008 = or i32 %951, 248
  %1009 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1008, i32 undef)  ; BufferLoad(srv,index,wot)
  %1010 = extractvalue %dx.types.ResRet.f32 %1009, 0
  %1011 = extractvalue %dx.types.ResRet.f32 %1009, 1
  %1012 = uitofp i32 %1007 to float
  %1013 = fmul fast float %1012, 5.000000e+01
  %1014 = call float @dx.op.unary.f32(i32 23, float %1013)  ; Log(value)
  %1015 = call float @dx.op.unary.f32(i32 28, float %1014)  ; Round_pi(value)
  %1016 = fsub fast float %1015, %70
  %1017 = fptosi float %1016 to i32
  %1018 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %1017)  ; IMax(a,b)
  %1019 = bitcast float %957 to i32
  %1020 = and i32 %1019, 2560
  %1021 = icmp eq i32 %1020, 0
  br i1 %1021, label %1022, label %1364, !dx.controlflow.hints !76

; <label>:1022                                    ; preds = %938
  %1023 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %951, i32 undef)  ; BufferLoad(srv,index,wot)
  %1024 = extractvalue %dx.types.ResRet.f32 %1023, 0
  %1025 = extractvalue %dx.types.ResRet.f32 %1023, 1
  %1026 = extractvalue %dx.types.ResRet.f32 %1023, 2
  %1027 = extractvalue %dx.types.ResRet.f32 %1023, 3
  %1028 = call float @dx.op.dot4.f32(i32 56, float %1024, float %1025, float %1026, float %1027, float %911, float %912, float %481, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1029 = or i32 %951, 16
  %1030 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1029, i32 undef)  ; BufferLoad(srv,index,wot)
  %1031 = extractvalue %dx.types.ResRet.f32 %1030, 0
  %1032 = extractvalue %dx.types.ResRet.f32 %1030, 1
  %1033 = extractvalue %dx.types.ResRet.f32 %1030, 2
  %1034 = extractvalue %dx.types.ResRet.f32 %1030, 3
  %1035 = call float @dx.op.dot4.f32(i32 56, float %1031, float %1032, float %1033, float %1034, float %911, float %912, float %481, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1036 = or i32 %951, 32
  %1037 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1036, i32 undef)  ; BufferLoad(srv,index,wot)
  %1038 = extractvalue %dx.types.ResRet.f32 %1037, 0
  %1039 = extractvalue %dx.types.ResRet.f32 %1037, 1
  %1040 = extractvalue %dx.types.ResRet.f32 %1037, 2
  %1041 = extractvalue %dx.types.ResRet.f32 %1037, 3
  %1042 = call float @dx.op.dot4.f32(i32 56, float %1038, float %1039, float %1040, float %1041, float %911, float %912, float %481, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1043 = call float @dx.op.unary.f32(i32 27, float %1028)  ; Round_ni(value)
  %1044 = call float @dx.op.unary.f32(i32 6, float %1043)  ; FAbs(value)
  %1045 = call float @dx.op.unary.f32(i32 27, float %1035)  ; Round_ni(value)
  %1046 = call float @dx.op.unary.f32(i32 6, float %1045)  ; FAbs(value)
  %1047 = call float @dx.op.unary.f32(i32 6, float %1042)  ; FAbs(value)
  %1048 = call float @dx.op.unary.f32(i32 27, float %1047)  ; Round_ni(value)
  %1049 = fadd fast float %1046, %1044
  %1050 = fadd fast float %1049, %1048
  %1051 = fcmp fast oeq float %1050, 0.000000e+00
  %1052 = call float @dx.op.dot3.f32(i32 55, float %954, float %955, float %956, float %894, float %895, float %896)  ; Dot3(ax,ay,az,bx,by,bz)
  %1053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1054 = extractvalue %dx.types.CBufRet.f32 %1053, 2
  %1055 = fadd fast float %1054, %1052
  %1056 = call float @dx.op.unary.f32(i32 7, float %1055)  ; Saturate(value)
  %1057 = extractvalue %dx.types.CBufRet.f32 %1053, 0
  %1058 = fcmp fast ogt float %1056, %1057
  %1059 = and i1 %1051, %1058
  br i1 %1059, label %1060, label %1364, !dx.controlflow.hints !77

; <label>:1060                                    ; preds = %1022
  %1061 = add i32 %949, 1
  %1062 = sitofp i32 %1018 to float
  %1063 = add i32 %963, 0
  %1064 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1063, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1065 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1064, i32 0)  ; GetDimensions(handle,mipLevel)
  %1066 = extractvalue %dx.types.Dimensions %1065, 0
  %1067 = extractvalue %dx.types.Dimensions %1065, 1
  %1068 = uitofp i32 %1066 to float
  %1069 = uitofp i32 %1067 to float
  %1070 = call float @dx.op.binary.f32(i32 35, float %1068, float %1069)  ; FMax(a,b)
  %1071 = call float @dx.op.unary.f32(i32 23, float %1070)  ; Log(value)
  %1072 = call float @dx.op.unary.f32(i32 28, float %1071)  ; Round_pi(value)
  %1073 = fsub fast float %1072, %1062
  %1074 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1073)  ; FMax(a,b)
  %1075 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1064, %dx.types.Handle %10, float %1028, float %1035, float undef, float undef, i32 0, i32 0, i32 undef, float %1074)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1076 = extractvalue %dx.types.ResRet.f32 %1075, 0
  %1077 = fmul fast float %1076, %966
  %1078 = fadd fast float %1077, %967
  %1079 = call float @dx.op.unary.f32(i32 7, float %1078)  ; Saturate(value)
  %1080 = fmul fast float %1028, %972
  %1081 = call float @dx.op.tertiary.f32(i32 46, float %973, float %1035, float %1080)  ; FMad(a,b,c)
  %1082 = fadd fast float %1081, %978
  %1083 = fmul fast float %1028, %974
  %1084 = call float @dx.op.tertiary.f32(i32 46, float %975, float %1035, float %1083)  ; FMad(a,b,c)
  %1085 = fadd fast float %1084, %979
  %1086 = add i32 %962, 0
  %1087 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1086, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1088 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1087, i32 0)  ; GetDimensions(handle,mipLevel)
  %1089 = extractvalue %dx.types.Dimensions %1088, 0
  %1090 = extractvalue %dx.types.Dimensions %1088, 1
  %1091 = uitofp i32 %1089 to float
  %1092 = uitofp i32 %1090 to float
  %1093 = call float @dx.op.binary.f32(i32 35, float %1091, float %1092)  ; FMax(a,b)
  %1094 = call float @dx.op.unary.f32(i32 23, float %1093)  ; Log(value)
  %1095 = call float @dx.op.unary.f32(i32 28, float %1094)  ; Round_pi(value)
  %1096 = fsub fast float %1095, %1062
  %1097 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1096)  ; FMax(a,b)
  %1098 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1087, %dx.types.Handle %10, float %1082, float %1085, float undef, float undef, i32 0, i32 0, i32 undef, float %1097)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1099 = extractvalue %dx.types.ResRet.f32 %1098, 0
  %1100 = and i32 %1019, 1024
  %1101 = icmp ne i32 %1100, 0
  %1102 = fcmp fast ogt float %1099, 0x3FE0101020000000
  %1103 = uitofp i1 %1102 to float
  %1104 = select i1 %1101, float %1103, float %1099
  %1105 = and i32 %1019, 8192
  %1106 = icmp ne i32 %1105, 0
  %1107 = select i1 %1106, float %981, float 1.000000e+00
  %1108 = fmul fast float %1028, 2.000000e+00
  %1109 = fadd fast float %1108, -1.000000e+00
  %1110 = call float @dx.op.unary.f32(i32 6, float %1109)  ; FAbs(value)
  %1111 = fmul fast float %1110, %1010
  %1112 = fsub fast float %1111, %1010
  %1113 = call float @dx.op.unary.f32(i32 7, float %1112)  ; Saturate(value)
  %1114 = fmul fast float %1035, 2.000000e+00
  %1115 = fadd fast float %1114, -1.000000e+00
  %1116 = call float @dx.op.unary.f32(i32 6, float %1115)  ; FAbs(value)
  %1117 = fmul fast float %1116, %1011
  %1118 = fsub fast float %1117, %1011
  %1119 = call float @dx.op.unary.f32(i32 7, float %1118)  ; Saturate(value)
  %1120 = fmul fast float %1047, %968
  %1121 = fsub fast float %1120, %968
  %1122 = call float @dx.op.unary.f32(i32 7, float %1121)  ; Saturate(value)
  %1123 = fmul fast float %1079, %1107
  %1124 = fmul fast float %1123, %1076
  %1125 = fmul fast float %1124, %1113
  %1126 = fmul fast float %1125, %1104
  %1127 = fmul fast float %1126, %1119
  %1128 = fmul fast float %1127, %1122
  %1129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1130 = extractvalue %dx.types.CBufRet.f32 %1129, 1
  %1131 = extractvalue %dx.types.CBufRet.f32 %1129, 0
  %1132 = fsub fast float %1056, %1131
  %1133 = fmul fast float %1132, %1130
  %1134 = call float @dx.op.unary.f32(i32 7, float %1133)  ; Saturate(value)
  %1135 = fmul fast float %1128, %969
  %1136 = fadd fast float %1128, %969
  %1137 = fmul fast float %1136, %980
  %1138 = fsub fast float %1137, %980
  %1139 = call float @dx.op.unary.f32(i32 7, float %1138)  ; Saturate(value)
  %1140 = and i32 %1019, 128
  %1141 = icmp ne i32 %1140, 0
  %1142 = select i1 %1141, float %1139, float %1135
  %1143 = fmul fast float %1142, %1134
  %1144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %1145 = extractvalue %dx.types.CBufRet.f32 %1144, 0
  %1146 = fcmp fast ugt float %1143, %1145
  br i1 %1146, label %1147, label %1364, !dx.controlflow.hints !78

; <label>:1147                                    ; preds = %1060
  br i1 %1106, label %1364, label %1148, !dx.controlflow.hints !79

; <label>:1148                                    ; preds = %1147
  %1149 = and i32 %1019, 4
  %1150 = and i32 %1019, 8
  %1151 = add i32 %960, 0
  %1152 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1151, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1153 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1152, i32 0)  ; GetDimensions(handle,mipLevel)
  %1154 = extractvalue %dx.types.Dimensions %1153, 0
  %1155 = extractvalue %dx.types.Dimensions %1153, 1
  %1156 = uitofp i32 %1154 to float
  %1157 = uitofp i32 %1155 to float
  %1158 = call float @dx.op.binary.f32(i32 35, float %1156, float %1157)  ; FMax(a,b)
  %1159 = call float @dx.op.unary.f32(i32 23, float %1158)  ; Log(value)
  %1160 = call float @dx.op.unary.f32(i32 28, float %1159)  ; Round_pi(value)
  %1161 = fsub fast float %1160, %1062
  %1162 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1161)  ; FMax(a,b)
  %1163 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1152, %dx.types.Handle %10, float %1082, float %1085, float undef, float undef, i32 0, i32 0, i32 undef, float %1162)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1164 = extractvalue %dx.types.ResRet.f32 %1163, 0
  %1165 = extractvalue %dx.types.ResRet.f32 %1163, 1
  %1166 = extractvalue %dx.types.ResRet.f32 %1163, 2
  %1167 = extractvalue %dx.types.ResRet.f32 %1163, 3
  %1168 = bitcast float %993 to i32
  %1169 = and i32 %1168, 255
  %1170 = uitofp i32 %1169 to float
  %1171 = lshr i32 %1168, 8
  %1172 = and i32 %1171, 255
  %1173 = uitofp i32 %1172 to float
  %1174 = fmul fast float %1167, %1170
  %1175 = fadd fast float %1174, %1173
  %1176 = fmul fast float %1175, 0x3F70101000000000
  %1177 = add i32 %961, 0
  %1178 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1177, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1179 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1178, i32 0)  ; GetDimensions(handle,mipLevel)
  %1180 = extractvalue %dx.types.Dimensions %1179, 0
  %1181 = extractvalue %dx.types.Dimensions %1179, 1
  %1182 = uitofp i32 %1180 to float
  %1183 = uitofp i32 %1181 to float
  %1184 = call float @dx.op.binary.f32(i32 35, float %1182, float %1183)  ; FMax(a,b)
  %1185 = call float @dx.op.unary.f32(i32 23, float %1184)  ; Log(value)
  %1186 = call float @dx.op.unary.f32(i32 28, float %1185)  ; Round_pi(value)
  %1187 = fsub fast float %1186, %1062
  %1188 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1187)  ; FMax(a,b)
  %1189 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1178, %dx.types.Handle %10, float %1082, float %1085, float undef, float undef, i32 0, i32 0, i32 undef, float %1188)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1190 = extractvalue %dx.types.ResRet.f32 %1189, 0
  %1191 = extractvalue %dx.types.ResRet.f32 %1189, 1
  %1192 = extractvalue %dx.types.ResRet.f32 %1189, 2
  %1193 = extractvalue %dx.types.ResRet.f32 %1189, 3
  %1194 = bitcast float %987 to i32
  %1195 = and i32 %1194, 255
  %1196 = uitofp i32 %1195 to float
  %1197 = lshr i32 %1194, 8
  %1198 = and i32 %1197, 255
  %1199 = uitofp i32 %1198 to float
  %1200 = lshr i32 %1194, 16
  %1201 = and i32 %1200, 255
  %1202 = uitofp i32 %1201 to float
  %1203 = fmul fast float %1202, 0x3F70101000000000
  %1204 = fmul fast float %1190, %1196
  %1205 = fadd fast float %1204, %1199
  %1206 = fmul fast float %1205, 0x3F70101000000000
  %1207 = fadd fast float %1191, -5.000000e-01
  %1208 = fadd fast float %1193, -5.000000e-01
  %1209 = fmul fast float %1207, %1203
  %1210 = fmul fast float %1208, %1203
  %1211 = fadd fast float %1209, 5.000000e-01
  %1212 = fadd fast float %1210, 5.000000e-01
  %1213 = fmul fast float %1164, %996
  %1214 = fmul fast float %1165, %997
  %1215 = fmul fast float %1166, %998
  %1216 = fmul fast float %1211, 2.000000e+00
  %1217 = fadd fast float %1216, -1.000000e+00
  %1218 = fmul fast float %1212, 2.000000e+00
  %1219 = fadd fast float %1218, -1.000000e+00
  %1220 = fadd fast float %1217, %1219
  %1221 = fmul fast float %1220, 5.000000e-01
  %1222 = fsub fast float %1217, %1219
  %1223 = fmul fast float %1222, 5.000000e-01
  %1224 = call float @dx.op.unary.f32(i32 6, float %1221)  ; FAbs(value)
  %1225 = fsub fast float 1.000000e+00, %1224
  %1226 = call float @dx.op.unary.f32(i32 6, float %1223)  ; FAbs(value)
  %1227 = fsub fast float %1225, %1226
  %1228 = call float @dx.op.dot3.f32(i32 55, float %1221, float %1223, float %1227, float %1221, float %1223, float %1227)  ; Dot3(ax,ay,az,bx,by,bz)
  %1229 = call float @dx.op.unary.f32(i32 25, float %1228)  ; Rsqrt(value)
  %1230 = fmul fast float %1221, %1229
  %1231 = fmul fast float %1223, %1229
  %1232 = fmul fast float %1229, %1227
  %1233 = fmul fast float %1232, %954
  %1234 = fmul fast float %1232, %955
  %1235 = fmul fast float %1232, %956
  %1236 = fmul fast float %1230, %984
  %1237 = fmul fast float %1230, %985
  %1238 = fmul fast float %1230, %986
  %1239 = fadd fast float %1236, %1233
  %1240 = fadd fast float %1237, %1234
  %1241 = fadd fast float %1238, %1235
  %1242 = fmul fast float %1231, %990
  %1243 = fmul fast float %1231, %991
  %1244 = fmul fast float %1231, %992
  %1245 = fadd fast float %1239, %1242
  %1246 = fadd fast float %1240, %1243
  %1247 = fadd fast float %1241, %1244
  %1248 = call float @dx.op.dot3.f32(i32 55, float %1245, float %1246, float %1247, float %1245, float %1246, float %1247)  ; Dot3(ax,ay,az,bx,by,bz)
  %1249 = call float @dx.op.unary.f32(i32 25, float %1248)  ; Rsqrt(value)
  %1250 = fmul fast float %1245, %1249
  %1251 = fmul fast float %1246, %1249
  %1252 = fmul fast float %1247, %1249
  %1253 = icmp ne i32 %1150, 0
  %1254 = select i1 %1253, float 1.000000e+00, float 0.000000e+00
  %1255 = fmul fast float %1143, %1254
  %1256 = and i32 %1019, 1
  %1257 = icmp eq i32 %1256, 0
  br i1 %1257, label %1258, label %1262, !dx.controlflow.hints !80

; <label>:1258                                    ; preds = %1148
  %1259 = fsub fast float %1250, %940
  %1260 = fsub fast float %1251, %941
  %1261 = fsub fast float %1252, %942
  br label %1262

; <label>:1262                                    ; preds = %1258, %1148
  %1263 = phi float [ %1259, %1258 ], [ %1250, %1148 ]
  %1264 = phi float [ %1260, %1258 ], [ %1251, %1148 ]
  %1265 = phi float [ %1261, %1258 ], [ %1252, %1148 ]
  %1266 = fmul float %1265, %1255
  %1267 = fmul float %1264, %1255
  %1268 = fmul float %1263, %1255
  %1269 = fadd fast float %1268, %940
  %1270 = fadd fast float %1267, %941
  %1271 = fadd fast float %1266, %942
  %1272 = icmp ne i32 %1149, 0
  %1273 = select i1 %1272, float 1.000000e+00, float 0.000000e+00
  %1274 = fmul fast float %1143, %1273
  %1275 = fsub fast float %1213, %946
  %1276 = fsub fast float %1214, %947
  %1277 = fsub fast float %1215, %948
  %1278 = fmul fast float %1275, %1274
  %1279 = fmul fast float %1276, %1274
  %1280 = fmul fast float %1277, %1274
  %1281 = fadd fast float %1278, %946
  %1282 = fadd fast float %1279, %947
  %1283 = fadd fast float %1280, %948
  %1284 = fsub fast float %1176, %945
  %1285 = fmul fast float %1284, %1274
  %1286 = fadd fast float %1285, %945
  %1287 = fsub fast float %1206, %944
  %1288 = fmul fast float %1287, %1255
  %1289 = fadd fast float %1288, %944
  %1290 = fsub fast float %1192, %943
  %1291 = fmul fast float %1290, %1255
  %1292 = fadd fast float %1291, %943
  %1293 = and i32 %1019, 16
  %1294 = icmp eq i32 %1293, 0
  br i1 %1294, label %1364, label %1295, !dx.controlflow.hints !81

; <label>:1295                                    ; preds = %1262
  %1296 = add i32 %1001, 0
  %1297 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1296, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1298 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1299 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1297, %dx.types.Handle %1298, float %1082, float %1085, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00, float 0.000000e+00, float undef, float 0.000000e+00, float 0.000000e+00, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1300 = extractvalue %dx.types.ResRet.f32 %1299, 0
  %1301 = extractvalue %dx.types.ResRet.f32 %1299, 1
  %1302 = extractvalue %dx.types.ResRet.f32 %1299, 2
  %1303 = bitcast float %1004 to i32
  %1304 = and i32 %1303, 65535
  %1305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1304)  ; LegacyF16ToF32(value)
  %1306 = fmul fast float %1300, %996
  %1307 = fmul fast float %1301, %997
  %1308 = fmul fast float %1302, %998
  %1309 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %1310 = extractvalue %dx.types.CBufRet.i32 %1309, 1
  %1311 = icmp eq i32 %1310, 2
  br i1 %1311, label %1312, label %1356, !dx.controlflow.hints !82

; <label>:1312                                    ; preds = %1295
  %1313 = call float @dx.op.binary.f32(i32 36, float %1281, float 0x3FEFAE1480000000)  ; FMin(a,b)
  %1314 = call float @dx.op.binary.f32(i32 36, float %1282, float 0x3FEFAE1480000000)  ; FMin(a,b)
  %1315 = call float @dx.op.binary.f32(i32 36, float %1283, float 0x3FEFAE1480000000)  ; FMin(a,b)
  %1316 = fsub fast float 1.000000e+00, %1313
  %1317 = fsub fast float 1.000000e+00, %1314
  %1318 = fsub fast float 1.000000e+00, %1315
  %1319 = call float @dx.op.unary.f32(i32 23, float %1316)  ; Log(value)
  %1320 = call float @dx.op.unary.f32(i32 23, float %1317)  ; Log(value)
  %1321 = call float @dx.op.unary.f32(i32 23, float %1318)  ; Log(value)
  %1322 = call float @dx.op.binary.f32(i32 36, float %1306, float 0x3FEFAE1480000000)  ; FMin(a,b)
  %1323 = call float @dx.op.binary.f32(i32 36, float %1307, float 0x3FEFAE1480000000)  ; FMin(a,b)
  %1324 = call float @dx.op.binary.f32(i32 36, float %1308, float 0x3FEFAE1480000000)  ; FMin(a,b)
  %1325 = fsub fast float 1.000000e+00, %1322
  %1326 = fsub fast float 1.000000e+00, %1323
  %1327 = fsub fast float 1.000000e+00, %1324
  %1328 = call float @dx.op.unary.f32(i32 23, float %1325)  ; Log(value)
  %1329 = call float @dx.op.unary.f32(i32 23, float %1326)  ; Log(value)
  %1330 = call float @dx.op.unary.f32(i32 23, float %1327)  ; Log(value)
  %1331 = fmul fast float %1143, %1328
  %1332 = fmul fast float %1143, %1329
  %1333 = fmul fast float %1143, %1330
  %1334 = fsub fast float -0.000000e+00, %1319
  %1335 = fsub fast float %1334, %1331
  %1336 = fsub fast float -0.000000e+00, %1320
  %1337 = fsub fast float %1336, %1332
  %1338 = fsub fast float -0.000000e+00, %1321
  %1339 = fsub fast float %1338, %1333
  %1340 = fsub fast float -0.000000e+00, %1335
  %1341 = fsub fast float -0.000000e+00, %1337
  %1342 = fsub fast float -0.000000e+00, %1339
  %1343 = call float @dx.op.unary.f32(i32 21, float %1340)  ; Exp(value)
  %1344 = call float @dx.op.unary.f32(i32 21, float %1341)  ; Exp(value)
  %1345 = call float @dx.op.unary.f32(i32 21, float %1342)  ; Exp(value)
  %1346 = fsub fast float 1.000000e+00, %1343
  %1347 = fsub fast float 1.000000e+00, %1344
  %1348 = fsub fast float 1.000000e+00, %1345
  %1349 = call float @dx.op.dot3.f32(i32 55, float %1346, float %1347, float %1348, float %1346, float %1347, float %1348)  ; Dot3(ax,ay,az,bx,by,bz)
  %1350 = call float @dx.op.dot3.f32(i32 55, float %1306, float %1307, float %1308, float %1306, float %1307, float %1308)  ; Dot3(ax,ay,az,bx,by,bz)
  %1351 = fmul fast float %1350, %1143
  %1352 = fcmp fast une float %1349, 0.000000e+00
  %1353 = fdiv fast float %1351, %1349
  %1354 = select i1 %1352, float %1353, float 0.000000e+00
  %1355 = fmul fast float %1354, %1305
  br label %1356

; <label>:1356                                    ; preds = %1312, %1295
  %1357 = phi float [ %1355, %1312 ], [ %1305, %1295 ]
  %1358 = phi float [ %1346, %1312 ], [ %1281, %1295 ]
  %1359 = phi float [ %1347, %1312 ], [ %1282, %1295 ]
  %1360 = phi float [ %1348, %1312 ], [ %1283, %1295 ]
  %1361 = fsub fast float %1357, %939
  %1362 = fmul fast float %1361, %1143
  %1363 = fadd fast float %1362, %939
  br label %1364

; <label>:1364                                    ; preds = %1356, %1262, %1147, %1060, %1022, %938
  %1365 = phi float [ %939, %938 ], [ %939, %1060 ], [ %939, %1147 ], [ %939, %1022 ], [ %1363, %1356 ], [ %939, %1262 ]
  %1366 = phi float [ %940, %938 ], [ %940, %1060 ], [ %940, %1147 ], [ %940, %1022 ], [ %1269, %1356 ], [ %1269, %1262 ]
  %1367 = phi float [ %941, %938 ], [ %941, %1060 ], [ %941, %1147 ], [ %941, %1022 ], [ %1270, %1356 ], [ %1270, %1262 ]
  %1368 = phi float [ %942, %938 ], [ %942, %1060 ], [ %942, %1147 ], [ %942, %1022 ], [ %1271, %1356 ], [ %1271, %1262 ]
  %1369 = phi float [ %943, %938 ], [ %943, %1060 ], [ %943, %1147 ], [ %943, %1022 ], [ %1292, %1356 ], [ %1292, %1262 ]
  %1370 = phi float [ %944, %938 ], [ %944, %1060 ], [ %944, %1147 ], [ %944, %1022 ], [ %1289, %1356 ], [ %1289, %1262 ]
  %1371 = phi float [ %945, %938 ], [ %945, %1060 ], [ %945, %1147 ], [ %945, %1022 ], [ %1286, %1356 ], [ %1286, %1262 ]
  %1372 = phi float [ %946, %938 ], [ %946, %1060 ], [ %946, %1147 ], [ %946, %1022 ], [ %1358, %1356 ], [ %1281, %1262 ]
  %1373 = phi float [ %947, %938 ], [ %947, %1060 ], [ %947, %1147 ], [ %947, %1022 ], [ %1359, %1356 ], [ %1282, %1262 ]
  %1374 = phi float [ %948, %938 ], [ %948, %1060 ], [ %948, %1147 ], [ %948, %1022 ], [ %1360, %1356 ], [ %1283, %1262 ]
  %1375 = phi i32 [ %949, %938 ], [ %1061, %1060 ], [ %1061, %1147 ], [ %949, %1022 ], [ %1061, %1356 ], [ %1061, %1262 ]
  %1376 = add nuw i32 %950, 1
  %1377 = icmp eq i32 %1376, %425
  br i1 %1377, label %1378, label %938

; <label>:1378                                    ; preds = %1364
  %1379 = icmp eq i32 %1375, 0
  br i1 %1379, label %1411, label %1380, !dx.controlflow.hints !83

; <label>:1380                                    ; preds = %1378
  %1381 = call float @dx.op.unary.f32(i32 7, float %1372)  ; Saturate(value)
  %1382 = call float @dx.op.unary.f32(i32 7, float %1373)  ; Saturate(value)
  %1383 = call float @dx.op.unary.f32(i32 7, float %1374)  ; Saturate(value)
  br i1 %904, label %1411, label %1384, !dx.controlflow.hints !84

; <label>:1384                                    ; preds = %1380
  %1385 = call float @dx.op.dot3.f32(i32 55, float %1366, float %1367, float %1368, float %1366, float %1367, float %1368)  ; Dot3(ax,ay,az,bx,by,bz)
  %1386 = call float @dx.op.unary.f32(i32 25, float %1385)  ; Rsqrt(value)
  %1387 = fmul fast float %1386, %1366
  %1388 = fmul fast float %1386, %1367
  %1389 = fmul fast float %1386, %1368
  %1390 = fmul fast float %1387, %899
  %1391 = call float @dx.op.tertiary.f32(i32 46, float %1389, float %900, float %1390)  ; FMad(a,b,c)
  %1392 = fmul fast float %1387, %897
  %1393 = call float @dx.op.tertiary.f32(i32 46, float %1388, float %898, float %1392)  ; FMad(a,b,c)
  %1394 = call float @dx.op.tertiary.f32(i32 46, float %1389, float %901, float %1393)  ; FMad(a,b,c)
  %1395 = fmul fast float %1387, %894
  %1396 = call float @dx.op.tertiary.f32(i32 46, float %1388, float %895, float %1395)  ; FMad(a,b,c)
  %1397 = call float @dx.op.tertiary.f32(i32 46, float %1389, float %896, float %1396)  ; FMad(a,b,c)
  %1398 = call float @dx.op.unary.f32(i32 6, float %1391)  ; FAbs(value)
  %1399 = call float @dx.op.unary.f32(i32 6, float %1394)  ; FAbs(value)
  %1400 = fadd fast float %1398, %1397
  %1401 = fadd fast float %1400, %1399
  %1402 = fdiv fast float 1.000000e+00, %1401
  %1403 = fadd fast float %1394, %1391
  %1404 = fsub fast float %1391, %1394
  %1405 = fmul fast float %1403, 5.000000e-01
  %1406 = fmul fast float %1405, %1402
  %1407 = fadd fast float %1406, 5.000000e-01
  %1408 = fmul fast float %1404, 5.000000e-01
  %1409 = fmul fast float %1408, %1402
  %1410 = fadd fast float %1409, 5.000000e-01
  br label %1411

; <label>:1411                                    ; preds = %1384, %1380, %1378, %423, %420
  %1412 = phi float [ %139, %420 ], [ %139, %423 ], [ %139, %1380 ], [ %1365, %1384 ], [ %139, %1378 ]
  %1413 = phi float [ %140, %420 ], [ %140, %423 ], [ %140, %1380 ], [ %1370, %1384 ], [ %140, %1378 ]
  %1414 = phi float [ %141, %420 ], [ %141, %423 ], [ %141, %1380 ], [ %1407, %1384 ], [ %141, %1378 ]
  %1415 = phi float [ %142, %420 ], [ %142, %423 ], [ %142, %1380 ], [ %1369, %1384 ], [ %142, %1378 ]
  %1416 = phi float [ %143, %420 ], [ %143, %423 ], [ %143, %1380 ], [ %1410, %1384 ], [ %143, %1378 ]
  %1417 = phi float [ %110, %420 ], [ %110, %423 ], [ %1381, %1380 ], [ %1381, %1384 ], [ %110, %1378 ]
  %1418 = phi float [ %118, %420 ], [ %118, %423 ], [ %1382, %1380 ], [ %1382, %1384 ], [ %118, %1378 ]
  %1419 = phi float [ %126, %420 ], [ %126, %423 ], [ %1383, %1380 ], [ %1383, %1384 ], [ %126, %1378 ]
  %1420 = phi float [ %144, %420 ], [ %144, %423 ], [ %1371, %1380 ], [ %1371, %1384 ], [ %144, %1378 ]
  br i1 %422, label %1421, label %1463, !dx.controlflow.hints !85

; <label>:1421                                    ; preds = %1411
  %1422 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %1423 = extractvalue %dx.types.CBufRet.i32 %1422, 1
  %1424 = icmp eq i32 %1423, 5
  %1425 = fcmp fast ole float %1417, 0x3F69A5C380000000
  %1426 = fcmp fast ole float %1418, 0x3F69A5C380000000
  %1427 = fcmp fast ole float %1419, 0x3F69A5C380000000
  %1428 = fmul fast float %1417, 0x4029D70A40000000
  %1429 = fmul fast float %1418, 0x4029D70A40000000
  %1430 = fmul fast float %1419, 0x4029D70A40000000
  %1431 = call float @dx.op.unary.f32(i32 23, float %1417)  ; Log(value)
  %1432 = call float @dx.op.unary.f32(i32 23, float %1418)  ; Log(value)
  %1433 = call float @dx.op.unary.f32(i32 23, float %1419)  ; Log(value)
  %1434 = fmul fast float %1431, 0x3FDAAAAAA0000000
  %1435 = fmul fast float %1432, 0x3FDAAAAAA0000000
  %1436 = fmul fast float %1433, 0x3FDAAAAAA0000000
  %1437 = call float @dx.op.unary.f32(i32 21, float %1434)  ; Exp(value)
  %1438 = call float @dx.op.unary.f32(i32 21, float %1435)  ; Exp(value)
  %1439 = call float @dx.op.unary.f32(i32 21, float %1436)  ; Exp(value)
  %1440 = fmul fast float %1437, 0x3FF0E147A0000000
  %1441 = fmul fast float %1438, 0x3FF0E147A0000000
  %1442 = fmul fast float %1439, 0x3FF0E147A0000000
  %1443 = fadd fast float %1440, 0xBFAC28F5C0000000
  %1444 = fadd fast float %1441, 0xBFAC28F5C0000000
  %1445 = fadd fast float %1442, 0xBFAC28F5C0000000
  %1446 = select i1 %1425, float %1428, float %1443
  %1447 = select i1 %1426, float %1429, float %1444
  %1448 = select i1 %1427, float %1430, float %1445
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %72, i32 %14, i32 undef, float %1446, float %1447, float %1448, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br i1 %1424, label %1463, label %1449, !dx.controlflow.hints !86

; <label>:1449                                    ; preds = %1421
  %1450 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %1451 = extractvalue %dx.types.CBufRet.i32 %1450, 1
  switch i32 %1451, label %1461 [
    i32 1, label %1452
    i32 2, label %1453
    i32 3, label %1460
  ], !dx.controlflow.hints !87

; <label>:1452                                    ; preds = %1449
  br label %1461

; <label>:1453                                    ; preds = %1449
  %1454 = fcmp fast une float %1412, 0.000000e+00
  %1455 = call float @dx.op.unary.f32(i32 23, float %1412)  ; Log(value)
  %1456 = fadd fast float %1455, 1.600000e+01
  %1457 = fmul fast float %1456, 3.125000e-02
  %1458 = call float @dx.op.unary.f32(i32 7, float %1457)  ; Saturate(value)
  %1459 = select i1 %1454, float %1458, float 0.000000e+00
  br label %1461

; <label>:1460                                    ; preds = %1449
  br label %1461

; <label>:1461                                    ; preds = %1460, %1453, %1452, %1449
  %1462 = phi float [ 0.000000e+00, %1449 ], [ %137, %1460 ], [ %1459, %1453 ], [ %138, %1452 ]
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %72, i32 %14, i32 undef, float %1414, float %1416, float %1415, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %72, i32 %14, i32 undef, float %1420, float %1413, float %1462, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1463

; <label>:1463                                    ; preds = %1461, %1421, %1411
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float, float, float, float, float, float, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!26}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !16, !20, !22}
!5 = !{!6, !8, !10, !11, !12, !13, !14, !15}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<unsigned int, 4> >"]* undef, !"", i32 5, i32 0, i32 -1, i32 2, i32 0, !9}
!9 = !{i32 0, i32 5}
!10 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 17, i32 1, i32 11, i32 0, null}
!11 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 18, i32 1, i32 11, i32 0, null}
!12 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 22, i32 1, i32 11, i32 0, null}
!13 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 8, i32 1, i32 2, i32 0, !7}
!14 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 10, i32 1, i32 2, i32 0, !7}
!15 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 12, i32 1, i32 2, i32 0, !7}
!16 = !{!17, !18, !19}
!17 = !{i32 0, %"class.RWTexture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!18 = !{i32 1, %"class.RWTexture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!19 = !{i32 2, %"class.RWTexture2D<vector<float, 4> >"* undef, !"", i32 0, i32 4, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!20 = !{!21}
!21 = !{i32 0, %GfxVirtualTexturingComposite* undef, !"", i32 0, i32 0, i32 1, i32 4208, null}
!22 = !{!23, !24, !25}
!23 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!24 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!25 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!26 = !{void ()* @cs_compose_volume_decals_to_scratch_with_cutout, !"cs_compose_volume_decals_to_scratch_with_cutout", null, !4, !27}
!27 = !{i32 0, i64 272, i32 4, !28}
!28 = !{i32 8, i32 8, i32 1}
!29 = !{!30, !30, i64 0}
!30 = !{!"int", !31, i64 0}
!31 = !{!"omnipotent char", !32, i64 0}
!32 = !{!"Simple C/C++ TBAA"}
!33 = !{!34, !36, !37, !38}
!34 = distinct !{!34, !35, !"\01?GetPageIndexAndTileDataBits@@YAXIIV?$vector@I$02@@AIAI11@Z: %pageIndex"}
!35 = distinct !{!35, !"\01?GetPageIndexAndTileDataBits@@YAXIIV?$vector@I$02@@AIAI11@Z"}
!36 = distinct !{!36, !35, !"\01?GetPageIndexAndTileDataBits@@YAXIIV?$vector@I$02@@AIAI11@Z: %tileDataBitsLo"}
!37 = distinct !{!37, !35, !"\01?GetPageIndexAndTileDataBits@@YAXIIV?$vector@I$02@@AIAI11@Z: %tileDataBitsHi"}
!38 = distinct !{!38, !39, !"\01?CompositeScratch_InitContext@@YA?AUCompositeScratchContext@@IV?$vector@I$02@@0_N@Z: %agg.result"}
!39 = distinct !{!39, !"\01?CompositeScratch_InitContext@@YA?AUCompositeScratchContext@@IV?$vector@I$02@@0_N@Z"}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 1}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 1}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 1}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 1}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 1}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 1}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 1}
!55 = !{!56, !56, i64 0}
!56 = !{!"float", !31, i64 0}
!57 = !{!58, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73}
!58 = distinct !{!58, !59, !"\01?VHM_SampleNormal_Internal@@YA?AV?$vector@M$02@@UVHM_SampleContext@@MMAIAV1@1@Z: %tangentX"}
!59 = distinct !{!59, !"\01?VHM_SampleNormal_Internal@@YA?AV?$vector@M$02@@UVHM_SampleContext@@MMAIAV1@1@Z"}
!60 = distinct !{!60, !59, !"\01?VHM_SampleNormal_Internal@@YA?AV?$vector@M$02@@UVHM_SampleContext@@MMAIAV1@1@Z: %tangentY"}
!61 = distinct !{!61, !62, !"\01?VHM_SampleTangentFrameAtWorldPos@@YAXV?$vector@M$01@@MMAIAV?$vector@M$02@@11@Z: %tangentX"}
!62 = distinct !{!62, !"\01?VHM_SampleTangentFrameAtWorldPos@@YAXV?$vector@M$01@@MMAIAV?$vector@M$02@@11@Z"}
!63 = distinct !{!63, !62, !"\01?VHM_SampleTangentFrameAtWorldPos@@YAXV?$vector@M$01@@MMAIAV?$vector@M$02@@11@Z: %tangentY"}
!64 = distinct !{!64, !62, !"\01?VHM_SampleTangentFrameAtWorldPos@@YAXV?$vector@M$01@@MMAIAV?$vector@M$02@@11@Z: %normal"}
!65 = distinct !{!65, !66, !"\01?EstimateTangentFrameAtVTUVs@@YAXV?$Texture2D@V?$vector@M$03@@@@IV?$vector@M$01@@UPaddedUVs@@V2@MAIAV?$vector@M$02@@44@Z: %tangentX"}
!66 = distinct !{!66, !"\01?EstimateTangentFrameAtVTUVs@@YAXV?$Texture2D@V?$vector@M$03@@@@IV?$vector@M$01@@UPaddedUVs@@V2@MAIAV?$vector@M$02@@44@Z"}
!67 = distinct !{!67, !66, !"\01?EstimateTangentFrameAtVTUVs@@YAXV?$Texture2D@V?$vector@M$03@@@@IV?$vector@M$01@@UPaddedUVs@@V2@MAIAV?$vector@M$02@@44@Z: %tangentY"}
!68 = distinct !{!68, !66, !"\01?EstimateTangentFrameAtVTUVs@@YAXV?$Texture2D@V?$vector@M$03@@@@IV?$vector@M$01@@UPaddedUVs@@V2@MAIAV?$vector@M$02@@44@Z: %normal"}
!69 = distinct !{!69, !70, !"\01?ApplyDecalsAvt@@YAXUCompositeScratchContext@@UTerrainTileDataVT@@AIAV?$vector@M$03@@22@Z: %albedoMetalness"}
!70 = distinct !{!70, !"\01?ApplyDecalsAvt@@YAXUCompositeScratchContext@@UTerrainTileDataVT@@AIAV?$vector@M$03@@22@Z"}
!71 = distinct !{!71, !70, !"\01?ApplyDecalsAvt@@YAXUCompositeScratchContext@@UTerrainTileDataVT@@AIAV?$vector@M$03@@22@Z: %normalOcclusionGloss"}
!72 = distinct !{!72, !70, !"\01?ApplyDecalsAvt@@YAXUCompositeScratchContext@@UTerrainTileDataVT@@AIAV?$vector@M$03@@22@Z: %emissive"}
!73 = distinct !{!73, !74, !"\01?CompositeScratch_VolumeDecals@@YA_NIUCompositeScratchContext@@UCompositeScratchResults@@@Z: %results"}
!74 = distinct !{!74, !"\01?CompositeScratch_VolumeDecals@@YA_NIUCompositeScratchContext@@UCompositeScratchResults@@@Z"}
!75 = !{!65, !67, !68, !69, !71, !72, !73}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 2}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 2}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 2}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 2}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 2}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 2}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 2}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 1}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 2}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 1}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 2}

