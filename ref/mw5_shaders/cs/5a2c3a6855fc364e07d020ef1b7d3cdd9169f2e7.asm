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
; shader hash: 00511f01d09a84671c32147d447a7271
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
;                                   texture    byte         r/o      T1            t17     1
;                                   texture    byte         r/o      T2            t18     1
;                                   texture    byte         r/o      T3            t22     1
;                                   texture     f32          2d      T4             t8     1
;                                   texture     f32          2d      T5            t10     1
;                                   texture     f32          2d      T6            t12     1
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
%struct.ByteAddressBuffer = type { i32 }
%"class.RWTexture2D<vector<float, 4> >" = type { <4 x float> }
%GfxVirtualTexturingComposite = type { [8 x <4 x float>], [8 x <4 x float>], <3 x float>, i32, <2 x float>, float, float, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, [56 x %struct.TerrainTileDataVT], [20 x <4 x float>], [5 x <4 x i32>], [40 x <4 x i32>] }
%struct.TerrainTileDataVT = type { [2 x <4 x i32>], <2 x i32> }
%struct.SamplerState = type { i32 }

define void @cs_compose_volume_decals_to_scratch() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
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
  %37 = add nuw i32 %36, 223
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
  %50 = load i32, i32* %49, align 4, !tbaa !27, !noalias !31
  %51 = and i32 %50, 255
  %52 = or i32 %48, 1
  %53 = getelementptr [4 x i32], [4 x i32]* %31, i32 0, i32 %52
  %54 = load i32, i32* %53, align 4, !tbaa !27, !noalias !31
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
  br i1 %82, label %96, label %87, !dx.controlflow.hints !38

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
  br i1 %82, label %136, label %127, !dx.controlflow.hints !39

; <label>:127                                     ; preds = %96
  switch i32 %81, label %136 [
    i32 1, label %128
    i32 2, label %129
    i32 3, label %135
  ], !dx.controlflow.hints !40

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
  br i1 %146, label %147, label %241, !dx.controlflow.hints !41

; <label>:147                                     ; preds = %136
  br label %148

; <label>:148                                     ; preds = %235, %147
  %149 = phi i32 [ %236, %235 ], [ -1, %147 ]
  %150 = phi i32 [ %237, %235 ], [ 0, %147 ]
  %151 = phi float [ %238, %235 ], [ -1.000000e+09, %147 ]
  %152 = phi i32 [ %55, %235 ], [ %54, %147 ]
  %153 = phi i32 [ %239, %235 ], [ 0, %147 ]
  %154 = icmp eq i32 %152, 0
  br i1 %154, label %235, label %155

; <label>:155                                     ; preds = %148
  br label %156

; <label>:156                                     ; preds = %189, %155
  %157 = phi i32 [ %190, %189 ], [ %149, %155 ]
  %158 = phi i32 [ %191, %189 ], [ %150, %155 ]
  %159 = phi float [ %192, %189 ], [ %151, %155 ]
  %160 = phi i32 [ %165, %189 ], [ %152, %155 ]
  %161 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %160)  ; FirstbitLo(value)
  %162 = and i32 %161, 31
  %163 = shl i32 1, %162
  %164 = xor i32 %163, -1
  %165 = and i32 %160, %164
  %166 = shl i32 %153, 5
  %167 = add i32 %161, %166
  %168 = mul i32 %167, 3
  %169 = add i32 %168, 30
  %170 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 %169)  ; CBufferLoadLegacy(handle,regIndex)
  %171 = extractvalue %dx.types.CBufRet.i32 %170, 1
  %172 = bitcast i32 %171 to float
  %173 = extractvalue %dx.types.CBufRet.i32 %170, 2
  %174 = bitcast i32 %173 to float
  %175 = fsub fast float %79, %172
  %176 = fsub fast float %80, %174
  %177 = add i32 %168, 32
  %178 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 %177)  ; CBufferLoadLegacy(handle,regIndex)
  %179 = extractvalue %dx.types.CBufRet.i32 %178, 1
  %180 = and i32 %179, 1048575
  %181 = uitofp i32 %180 to float
  %182 = fcmp fast olt float %175, 0.000000e+00
  %183 = fcmp fast olt float %176, 0.000000e+00
  %184 = or i1 %182, %183
  %185 = fcmp fast ogt float %175, %181
  %186 = fcmp fast ogt float %176, %181
  %187 = or i1 %185, %186
  %188 = or i1 %184, %187
  br i1 %188, label %189, label %194, !dx.controlflow.hints !42

; <label>:189                                     ; preds = %233, %194, %156
  %190 = phi i32 [ %157, %156 ], [ %167, %233 ], [ %196, %194 ]
  %191 = phi i32 [ %158, %156 ], [ %197, %233 ], [ %197, %194 ]
  %192 = phi float [ %159, %156 ], [ %231, %233 ], [ %159, %194 ]
  %193 = icmp eq i32 %165, 0
  br i1 %193, label %234, label %156

; <label>:194                                     ; preds = %156
  %195 = icmp ne i32 %158, 0
  %196 = select i1 %195, i32 %157, i32 %167
  %197 = select i1 %195, i32 %158, i32 1
  %198 = fdiv fast float %175, %181
  %199 = fdiv fast float %176, %181
  %200 = add i32 %168, 31
  %201 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 %200)  ; CBufferLoadLegacy(handle,regIndex)
  %202 = extractvalue %dx.types.CBufRet.i32 %201, 2
  %203 = lshr i32 %202, 24
  %204 = and i32 %203, 7
  %205 = or i32 %204, 8
  %206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 %205)  ; CBufferLoadLegacy(handle,regIndex)
  %207 = extractvalue %dx.types.CBufRet.f32 %206, 0
  %208 = extractvalue %dx.types.CBufRet.f32 %206, 2
  %209 = fdiv fast float 5.000000e-01, %207
  %210 = fmul fast float %209, 2.000000e+00
  %211 = fsub fast float 1.000000e+00, %210
  %212 = fmul fast float %211, %198
  %213 = fmul fast float %211, %199
  %214 = fadd fast float %212, %209
  %215 = fadd fast float %213, %209
  %216 = fmul fast float %214, %208
  %217 = fmul fast float %215, %208
  %218 = extractvalue %dx.types.CBufRet.i32 %201, 1
  %219 = and i32 %218, 16777215
  %220 = add i32 %219, 0
  %221 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %220, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %222 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 %169)  ; CBufferLoadLegacy(handle,regIndex)
  %223 = extractvalue %dx.types.CBufRet.i32 %222, 3
  %224 = bitcast i32 %223 to float
  %225 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 %200)  ; CBufferLoadLegacy(handle,regIndex)
  %226 = extractvalue %dx.types.CBufRet.i32 %225, 0
  %227 = bitcast i32 %226 to float
  %228 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %221, %dx.types.Handle %11, float %216, float %217, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %229 = extractvalue %dx.types.ResRet.f32 %228, 0
  %230 = fmul fast float %229, %227
  %231 = fadd fast float %230, %224
  %232 = fcmp fast ogt float %231, %159
  br i1 %232, label %233, label %189, !dx.controlflow.hints !43

; <label>:233                                     ; preds = %194
  br label %189

; <label>:234                                     ; preds = %189
  br label %235

; <label>:235                                     ; preds = %234, %148
  %236 = phi i32 [ %149, %148 ], [ %190, %234 ]
  %237 = phi i32 [ %150, %148 ], [ %191, %234 ]
  %238 = phi float [ %151, %148 ], [ %192, %234 ]
  %239 = add nuw nsw i32 %153, 1
  %240 = icmp eq i32 %239, 2
  br i1 %240, label %278, label %148

; <label>:241                                     ; preds = %136
  %242 = icmp eq i32 %54, 0
  br i1 %242, label %275, label %243

; <label>:243                                     ; preds = %241
  br label %244

; <label>:244                                     ; preds = %272, %243
  %245 = phi i32 [ %250, %272 ], [ %54, %243 ]
  %246 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %245)  ; FirstbitLo(value)
  %247 = and i32 %246, 31
  %248 = shl i32 1, %247
  %249 = xor i32 %248, -1
  %250 = and i32 %245, %249
  %251 = mul i32 %246, 3
  %252 = add i32 %251, 30
  %253 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 %252)  ; CBufferLoadLegacy(handle,regIndex)
  %254 = extractvalue %dx.types.CBufRet.i32 %253, 1
  %255 = bitcast i32 %254 to float
  %256 = extractvalue %dx.types.CBufRet.i32 %253, 2
  %257 = bitcast i32 %256 to float
  %258 = fsub fast float %79, %255
  %259 = fsub fast float %80, %257
  %260 = add i32 %251, 32
  %261 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 %260)  ; CBufferLoadLegacy(handle,regIndex)
  %262 = extractvalue %dx.types.CBufRet.i32 %261, 1
  %263 = and i32 %262, 1048575
  %264 = uitofp i32 %263 to float
  %265 = fcmp fast olt float %258, 0.000000e+00
  %266 = fcmp fast olt float %259, 0.000000e+00
  %267 = or i1 %265, %266
  %268 = fcmp fast ogt float %258, %264
  %269 = fcmp fast ogt float %259, %264
  %270 = or i1 %268, %269
  %271 = or i1 %267, %270
  br i1 %271, label %272, label %281, !dx.controlflow.hints !44

; <label>:272                                     ; preds = %244
  %273 = icmp eq i32 %250, 0
  br i1 %273, label %274, label %244

; <label>:274                                     ; preds = %272
  br label %275

; <label>:275                                     ; preds = %274, %241
  %276 = icmp eq i32 %55, 0
  br i1 %276, label %282, label %277

; <label>:277                                     ; preds = %275
  br label %1326

; <label>:278                                     ; preds = %235
  br label %282

; <label>:279                                     ; preds = %1355, %1326
  %280 = phi i32 [ %1333, %1326 ], [ -1, %1355 ]
  br label %282

; <label>:281                                     ; preds = %244
  br label %282

; <label>:282                                     ; preds = %281, %279, %278, %275
  %283 = phi i32 [ -1, %275 ], [ %236, %278 ], [ %280, %279 ], [ %246, %281 ]
  %284 = icmp ne i32 %283, -1
  br i1 %284, label %285, label %1273, !dx.controlflow.hints !45

; <label>:285                                     ; preds = %282
  %286 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 22)  ; CBufferLoadLegacy(handle,regIndex)
  %287 = extractvalue %dx.types.CBufRet.i32 %286, 2
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %1273, label %289, !dx.controlflow.hints !46

; <label>:289                                     ; preds = %285
  %290 = mul i32 %283, 3
  %291 = add i32 %290, 30
  %292 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 %291)  ; CBufferLoadLegacy(handle,regIndex)
  %293 = extractvalue %dx.types.CBufRet.i32 %292, 1
  %294 = bitcast i32 %293 to float
  %295 = extractvalue %dx.types.CBufRet.i32 %292, 2
  %296 = bitcast i32 %295 to float
  %297 = fsub fast float %79, %294
  %298 = fsub fast float %80, %296
  %299 = add i32 %290, 32
  %300 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 %299)  ; CBufferLoadLegacy(handle,regIndex)
  %301 = extractvalue %dx.types.CBufRet.i32 %300, 1
  %302 = and i32 %301, 1048575
  %303 = uitofp i32 %302 to float
  %304 = fdiv fast float %297, %303
  %305 = fdiv fast float %298, %303
  %306 = add i32 %290, 31
  %307 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 %306)  ; CBufferLoadLegacy(handle,regIndex)
  %308 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %309 = extractvalue %dx.types.CBufRet.i32 %308, 3
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %311, label %327, !dx.controlflow.hints !47

; <label>:311                                     ; preds = %289
  %312 = extractvalue %dx.types.CBufRet.i32 %307, 2
  %313 = lshr i32 %312, 24
  %314 = and i32 %313, 7
  %315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 %314)  ; CBufferLoadLegacy(handle,regIndex)
  %316 = extractvalue %dx.types.CBufRet.f32 %315, 0
  %317 = extractvalue %dx.types.CBufRet.f32 %315, 2
  %318 = fdiv fast float 5.000000e-01, %316
  %319 = fmul fast float %318, 2.000000e+00
  %320 = fsub fast float 1.000000e+00, %319
  %321 = fmul fast float %320, %304
  %322 = fmul fast float %320, %305
  %323 = fadd fast float %321, %318
  %324 = fadd fast float %322, %318
  %325 = fmul fast float %323, %317
  %326 = fmul fast float %324, %317
  br label %327

; <label>:327                                     ; preds = %311, %289
  %328 = phi float [ %325, %311 ], [ %304, %289 ]
  %329 = phi float [ %326, %311 ], [ %305, %289 ]
  %330 = extractvalue %dx.types.CBufRet.i32 %307, 1
  %331 = and i32 %330, 16777215
  %332 = add i32 %331, 0
  %333 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %332, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %334 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 %291)  ; CBufferLoadLegacy(handle,regIndex)
  %335 = extractvalue %dx.types.CBufRet.i32 %334, 3
  %336 = bitcast i32 %335 to float
  %337 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 %306)  ; CBufferLoadLegacy(handle,regIndex)
  %338 = extractvalue %dx.types.CBufRet.i32 %337, 0
  %339 = bitcast i32 %338 to float
  %340 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %333, %dx.types.Handle %11, float %328, float %329, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %341 = extractvalue %dx.types.ResRet.f32 %340, 0
  %342 = fmul fast float %341, %339
  %343 = fadd fast float %342, %336
  %344 = extractvalue %dx.types.CBufRet.i32 %337, 2
  %345 = lshr i32 %344, 24
  %346 = and i32 %345, 7
  %347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 %346)  ; CBufferLoadLegacy(handle,regIndex)
  %348 = extractvalue %dx.types.CBufRet.f32 %347, 0
  %349 = fptoui float %348 to i32
  %350 = extractvalue %dx.types.CBufRet.i32 %337, 1
  %351 = and i32 %350, 16777215
  %352 = add i32 %351, 0
  %353 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %352, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %354 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 %299)  ; CBufferLoadLegacy(handle,regIndex)
  %355 = extractvalue %dx.types.CBufRet.i32 %354, 1
  %356 = and i32 %355, 1048575
  %357 = uitofp i32 %356 to float
  %358 = uitofp i32 %349 to float
  %359 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 %291)  ; CBufferLoadLegacy(handle,regIndex)
  %360 = extractvalue %dx.types.CBufRet.i32 %359, 3
  %361 = bitcast i32 %360 to float
  %362 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 %306)  ; CBufferLoadLegacy(handle,regIndex)
  %363 = extractvalue %dx.types.CBufRet.i32 %362, 0
  %364 = bitcast i32 %363 to float
  %365 = fdiv fast float 1.000000e+00, %358
  %366 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %367 = extractvalue %dx.types.CBufRet.i32 %366, 3
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %695, label %369, !dx.controlflow.hints !48

; <label>:369                                     ; preds = %327
  %370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %371 = extractvalue %dx.types.CBufRet.f32 %370, 2
  %372 = extractvalue %dx.types.CBufRet.f32 %370, 3
  %373 = fmul fast float %371, %328
  %374 = fmul fast float %372, %329
  %375 = extractvalue %dx.types.CBufRet.f32 %370, 0
  %376 = extractvalue %dx.types.CBufRet.f32 %370, 1
  %377 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %378 = extractvalue %dx.types.CBufRet.i32 %377, 0
  %379 = extractvalue %dx.types.CBufRet.i32 %377, 1
  %380 = extractvalue %dx.types.CBufRet.i32 %377, 2
  %381 = extractvalue %dx.types.CBufRet.i32 %377, 3
  %382 = mul i32 %380, %380
  %383 = fadd fast float %371, 0xBF847AE140000000
  %384 = fadd fast float %372, 0xBF847AE140000000
  %385 = call float @dx.op.binary.f32(i32 35, float %373, float 0.000000e+00)  ; FMax(a,b)
  %386 = call float @dx.op.binary.f32(i32 35, float %374, float 0.000000e+00)  ; FMax(a,b)
  %387 = call float @dx.op.binary.f32(i32 36, float %385, float %383)  ; FMin(a,b)
  %388 = call float @dx.op.binary.f32(i32 36, float %386, float %384)  ; FMin(a,b)
  %389 = fdiv fast float %387, %375
  %390 = fdiv fast float %388, %376
  %391 = fptoui float %389 to i32
  %392 = fptoui float %390 to i32
  %393 = mul i32 %392, %378
  %394 = add i32 %393, %391
  %395 = lshr i32 %394, 1
  %396 = shl i32 %395, 2
  %397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %396, i32 undef)  ; BufferLoad(srv,index,wot)
  %398 = extractvalue %dx.types.ResRet.i32 %397, 0
  %399 = shl i32 %394, 4
  %400 = and i32 %399, 16
  %401 = lshr i32 %398, %400
  %402 = and i32 %401, 255
  %403 = lshr i32 %401, 8
  %404 = and i32 %403, 31
  %405 = shl i32 1, %404
  %406 = uitofp i32 %405 to float
  %407 = fmul fast float %406, %387
  %408 = fdiv fast float %407, %371
  %409 = fmul fast float %406, %388
  %410 = fdiv fast float %409, %372
  %411 = call float @dx.op.unary.f32(i32 22, float %408)  ; Frc(value)
  %412 = call float @dx.op.unary.f32(i32 22, float %410)  ; Frc(value)
  %413 = uitofp i32 %379 to float
  %414 = fmul fast float %411, %413
  %415 = fmul fast float %412, %413
  %416 = uitofp i32 %381 to float
  %417 = fadd fast float %414, %416
  %418 = fadd fast float %415, %416
  %419 = mul i32 %382, %402
  %420 = fadd fast float %417, -1.000000e+00
  %421 = fadd fast float %418, -1.000000e+00
  %422 = call float @dx.op.unary.f32(i32 22, float %420)  ; Frc(value)
  %423 = fptoui float %420 to i32
  %424 = fptoui float %418 to i32
  %425 = getelementptr [4 x i32], [4 x i32]* %20, i32 0, i32 0
  %426 = getelementptr [4 x i32], [4 x i32]* %21, i32 0, i32 0
  store i32 %423, i32* %425, align 4
  store i32 %424, i32* %426, align 4
  %427 = add i32 %423, 1
  %428 = getelementptr [4 x i32], [4 x i32]* %20, i32 0, i32 1
  %429 = getelementptr [4 x i32], [4 x i32]* %21, i32 0, i32 1
  store i32 %427, i32* %428, align 4
  store i32 %424, i32* %429, align 4
  %430 = add i32 %424, 1
  %431 = getelementptr [4 x i32], [4 x i32]* %20, i32 0, i32 2
  %432 = getelementptr [4 x i32], [4 x i32]* %21, i32 0, i32 2
  store i32 %423, i32* %431, align 4
  store i32 %430, i32* %432, align 4
  %433 = getelementptr [4 x i32], [4 x i32]* %20, i32 0, i32 3
  %434 = getelementptr [4 x i32], [4 x i32]* %21, i32 0, i32 3
  store i32 %427, i32* %433, align 4
  store i32 %430, i32* %434, align 4
  %435 = add i32 %380, -1
  br label %436

; <label>:436                                     ; preds = %459, %369
  %437 = phi i32 [ %424, %369 ], [ %463, %459 ]
  %438 = phi i32 [ %423, %369 ], [ %461, %459 ]
  %439 = phi i32 [ 0, %369 ], [ %457, %459 ]
  %440 = call i32 @dx.op.binary.i32(i32 40, i32 %438, i32 %435)  ; UMin(a,b)
  %441 = call i32 @dx.op.binary.i32(i32 40, i32 %437, i32 %435)  ; UMin(a,b)
  %442 = mul i32 %441, %380
  %443 = add i32 %440, %419
  %444 = add i32 %443, %442
  %445 = lshr i32 %444, 1
  %446 = shl i32 %445, 2
  %447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %446, i32 undef)  ; BufferLoad(srv,index,wot)
  %448 = extractvalue %dx.types.ResRet.i32 %447, 0
  %449 = shl i32 %444, 4
  %450 = and i32 %449, 16
  %451 = lshr i32 %448, %450
  %452 = and i32 %451, 65535
  %453 = uitofp i32 %452 to float
  %454 = fmul fast float %453, 0x3EF0002000000000
  %455 = call float @dx.op.unary.f32(i32 7, float %454)  ; Saturate(value)
  %456 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 %439
  store float %455, float* %456, align 4, !tbaa !49, !noalias !51
  %457 = add nuw nsw i32 %439, 1
  %458 = icmp eq i32 %457, 4
  br i1 %458, label %464, label %459

; <label>:459                                     ; preds = %436
  %460 = getelementptr [4 x i32], [4 x i32]* %20, i32 0, i32 %457
  %461 = load i32, i32* %460, align 4
  %462 = getelementptr [4 x i32], [4 x i32]* %21, i32 0, i32 %457
  %463 = load i32, i32* %462, align 4
  br label %436

; <label>:464                                     ; preds = %436
  %465 = fadd fast float %417, 1.000000e+00
  %466 = fadd fast float %418, 1.000000e+00
  %467 = call float @dx.op.unary.f32(i32 22, float %418)  ; Frc(value)
  %468 = fsub fast float 1.000000e+00, %422
  %469 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 0
  %470 = load float, float* %469, align 4, !tbaa !49, !noalias !51
  %471 = fmul fast float %470, %468
  %472 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 1
  %473 = load float, float* %472, align 4, !tbaa !49, !noalias !51
  %474 = fmul fast float %473, %422
  %475 = fadd fast float %474, %471
  %476 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 2
  %477 = load float, float* %476, align 4, !tbaa !49, !noalias !51
  %478 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 3
  %479 = load float, float* %478, align 4, !tbaa !49, !noalias !51
  %480 = fmul fast float %479, %422
  %481 = fsub fast float 1.000000e+00, %467
  %482 = fmul fast float %475, %481
  %483 = call float @dx.op.unary.f32(i32 22, float %465)  ; Frc(value)
  %484 = fptoui float %465 to i32
  %485 = getelementptr [4 x i32], [4 x i32]* %18, i32 0, i32 0
  %486 = getelementptr [4 x i32], [4 x i32]* %19, i32 0, i32 0
  store i32 %484, i32* %485, align 4
  store i32 %424, i32* %486, align 4
  %487 = add i32 %484, 1
  %488 = getelementptr [4 x i32], [4 x i32]* %18, i32 0, i32 1
  %489 = getelementptr [4 x i32], [4 x i32]* %19, i32 0, i32 1
  store i32 %487, i32* %488, align 4
  store i32 %424, i32* %489, align 4
  %490 = getelementptr [4 x i32], [4 x i32]* %18, i32 0, i32 2
  %491 = getelementptr [4 x i32], [4 x i32]* %19, i32 0, i32 2
  store i32 %484, i32* %490, align 4
  store i32 %430, i32* %491, align 4
  %492 = getelementptr [4 x i32], [4 x i32]* %18, i32 0, i32 3
  %493 = getelementptr [4 x i32], [4 x i32]* %19, i32 0, i32 3
  store i32 %487, i32* %492, align 4
  store i32 %430, i32* %493, align 4
  br label %494

; <label>:494                                     ; preds = %517, %464
  %495 = phi i32 [ %424, %464 ], [ %521, %517 ]
  %496 = phi i32 [ %484, %464 ], [ %519, %517 ]
  %497 = phi i32 [ 0, %464 ], [ %515, %517 ]
  %498 = call i32 @dx.op.binary.i32(i32 40, i32 %496, i32 %435)  ; UMin(a,b)
  %499 = call i32 @dx.op.binary.i32(i32 40, i32 %495, i32 %435)  ; UMin(a,b)
  %500 = mul i32 %499, %380
  %501 = add i32 %498, %419
  %502 = add i32 %501, %500
  %503 = lshr i32 %502, 1
  %504 = shl i32 %503, 2
  %505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %504, i32 undef)  ; BufferLoad(srv,index,wot)
  %506 = extractvalue %dx.types.ResRet.i32 %505, 0
  %507 = shl i32 %502, 4
  %508 = and i32 %507, 16
  %509 = lshr i32 %506, %508
  %510 = and i32 %509, 65535
  %511 = uitofp i32 %510 to float
  %512 = fmul fast float %511, 0x3EF0002000000000
  %513 = call float @dx.op.unary.f32(i32 7, float %512)  ; Saturate(value)
  %514 = getelementptr inbounds [4 x float], [4 x float]* %28, i32 0, i32 %497
  store float %513, float* %514, align 4, !tbaa !49, !noalias !51
  %515 = add nuw nsw i32 %497, 1
  %516 = icmp eq i32 %515, 4
  br i1 %516, label %522, label %517

; <label>:517                                     ; preds = %494
  %518 = getelementptr [4 x i32], [4 x i32]* %18, i32 0, i32 %515
  %519 = load i32, i32* %518, align 4
  %520 = getelementptr [4 x i32], [4 x i32]* %19, i32 0, i32 %515
  %521 = load i32, i32* %520, align 4
  br label %494

; <label>:522                                     ; preds = %494
  %523 = fmul fast float %477, %468
  %524 = fadd fast float %480, %523
  %525 = fmul fast float %524, %467
  %526 = fsub fast float 1.000000e+00, %483
  %527 = getelementptr inbounds [4 x float], [4 x float]* %28, i32 0, i32 0
  %528 = load float, float* %527, align 4, !tbaa !49, !noalias !51
  %529 = fmul fast float %528, %526
  %530 = getelementptr inbounds [4 x float], [4 x float]* %28, i32 0, i32 1
  %531 = load float, float* %530, align 4, !tbaa !49, !noalias !51
  %532 = fmul fast float %531, %483
  %533 = fadd fast float %532, %529
  %534 = getelementptr inbounds [4 x float], [4 x float]* %28, i32 0, i32 2
  %535 = load float, float* %534, align 4, !tbaa !49, !noalias !51
  %536 = getelementptr inbounds [4 x float], [4 x float]* %28, i32 0, i32 3
  %537 = load float, float* %536, align 4, !tbaa !49, !noalias !51
  %538 = fmul fast float %537, %483
  %539 = fmul fast float %533, %481
  %540 = call float @dx.op.unary.f32(i32 22, float %417)  ; Frc(value)
  %541 = fptoui float %417 to i32
  %542 = fptoui float %421 to i32
  %543 = getelementptr [4 x i32], [4 x i32]* %22, i32 0, i32 0
  %544 = getelementptr [4 x i32], [4 x i32]* %23, i32 0, i32 0
  store i32 %541, i32* %543, align 4
  store i32 %542, i32* %544, align 4
  %545 = add i32 %541, 1
  %546 = getelementptr [4 x i32], [4 x i32]* %22, i32 0, i32 1
  %547 = getelementptr [4 x i32], [4 x i32]* %23, i32 0, i32 1
  store i32 %545, i32* %546, align 4
  store i32 %542, i32* %547, align 4
  %548 = add i32 %542, 1
  %549 = getelementptr [4 x i32], [4 x i32]* %22, i32 0, i32 2
  %550 = getelementptr [4 x i32], [4 x i32]* %23, i32 0, i32 2
  store i32 %541, i32* %549, align 4
  store i32 %548, i32* %550, align 4
  %551 = getelementptr [4 x i32], [4 x i32]* %22, i32 0, i32 3
  %552 = getelementptr [4 x i32], [4 x i32]* %23, i32 0, i32 3
  store i32 %545, i32* %551, align 4
  store i32 %548, i32* %552, align 4
  br label %553

; <label>:553                                     ; preds = %576, %522
  %554 = phi i32 [ %542, %522 ], [ %580, %576 ]
  %555 = phi i32 [ %541, %522 ], [ %578, %576 ]
  %556 = phi i32 [ 0, %522 ], [ %574, %576 ]
  %557 = call i32 @dx.op.binary.i32(i32 40, i32 %555, i32 %435)  ; UMin(a,b)
  %558 = call i32 @dx.op.binary.i32(i32 40, i32 %554, i32 %435)  ; UMin(a,b)
  %559 = mul i32 %558, %380
  %560 = add i32 %557, %419
  %561 = add i32 %560, %559
  %562 = lshr i32 %561, 1
  %563 = shl i32 %562, 2
  %564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %563, i32 undef)  ; BufferLoad(srv,index,wot)
  %565 = extractvalue %dx.types.ResRet.i32 %564, 0
  %566 = shl i32 %561, 4
  %567 = and i32 %566, 16
  %568 = lshr i32 %565, %567
  %569 = and i32 %568, 65535
  %570 = uitofp i32 %569 to float
  %571 = fmul fast float %570, 0x3EF0002000000000
  %572 = call float @dx.op.unary.f32(i32 7, float %571)  ; Saturate(value)
  %573 = getelementptr inbounds [4 x float], [4 x float]* %27, i32 0, i32 %556
  store float %572, float* %573, align 4, !tbaa !49, !noalias !51
  %574 = add nuw nsw i32 %556, 1
  %575 = icmp eq i32 %574, 4
  br i1 %575, label %581, label %576

; <label>:576                                     ; preds = %553
  %577 = getelementptr [4 x i32], [4 x i32]* %22, i32 0, i32 %574
  %578 = load i32, i32* %577, align 4
  %579 = getelementptr [4 x i32], [4 x i32]* %23, i32 0, i32 %574
  %580 = load i32, i32* %579, align 4
  br label %553

; <label>:581                                     ; preds = %553
  %582 = fmul fast float %535, %526
  %583 = fadd fast float %538, %582
  %584 = fmul fast float %583, %467
  %585 = call float @dx.op.unary.f32(i32 22, float %421)  ; Frc(value)
  %586 = fsub fast float 1.000000e+00, %540
  %587 = getelementptr inbounds [4 x float], [4 x float]* %27, i32 0, i32 0
  %588 = load float, float* %587, align 4, !tbaa !49, !noalias !51
  %589 = fmul fast float %588, %586
  %590 = getelementptr inbounds [4 x float], [4 x float]* %27, i32 0, i32 1
  %591 = load float, float* %590, align 4, !tbaa !49, !noalias !51
  %592 = fmul fast float %591, %540
  %593 = fadd fast float %592, %589
  %594 = getelementptr inbounds [4 x float], [4 x float]* %27, i32 0, i32 2
  %595 = load float, float* %594, align 4, !tbaa !49, !noalias !51
  %596 = getelementptr inbounds [4 x float], [4 x float]* %27, i32 0, i32 3
  %597 = load float, float* %596, align 4, !tbaa !49, !noalias !51
  %598 = fmul fast float %597, %540
  %599 = fsub fast float 1.000000e+00, %585
  %600 = fmul fast float %593, %599
  %601 = fptoui float %466 to i32
  %602 = getelementptr [4 x i32], [4 x i32]* %16, i32 0, i32 0
  %603 = getelementptr [4 x i32], [4 x i32]* %17, i32 0, i32 0
  store i32 %541, i32* %602, align 4
  store i32 %601, i32* %603, align 4
  %604 = getelementptr [4 x i32], [4 x i32]* %16, i32 0, i32 1
  %605 = getelementptr [4 x i32], [4 x i32]* %17, i32 0, i32 1
  store i32 %545, i32* %604, align 4
  store i32 %601, i32* %605, align 4
  %606 = add i32 %601, 1
  %607 = getelementptr [4 x i32], [4 x i32]* %16, i32 0, i32 2
  %608 = getelementptr [4 x i32], [4 x i32]* %17, i32 0, i32 2
  store i32 %541, i32* %607, align 4
  store i32 %606, i32* %608, align 4
  %609 = getelementptr [4 x i32], [4 x i32]* %16, i32 0, i32 3
  %610 = getelementptr [4 x i32], [4 x i32]* %17, i32 0, i32 3
  store i32 %545, i32* %609, align 4
  store i32 %606, i32* %610, align 4
  br label %611

; <label>:611                                     ; preds = %634, %581
  %612 = phi i32 [ %601, %581 ], [ %638, %634 ]
  %613 = phi i32 [ %541, %581 ], [ %636, %634 ]
  %614 = phi i32 [ 0, %581 ], [ %632, %634 ]
  %615 = call i32 @dx.op.binary.i32(i32 40, i32 %613, i32 %435)  ; UMin(a,b)
  %616 = call i32 @dx.op.binary.i32(i32 40, i32 %612, i32 %435)  ; UMin(a,b)
  %617 = mul i32 %616, %380
  %618 = add i32 %615, %419
  %619 = add i32 %618, %617
  %620 = lshr i32 %619, 1
  %621 = shl i32 %620, 2
  %622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %621, i32 undef)  ; BufferLoad(srv,index,wot)
  %623 = extractvalue %dx.types.ResRet.i32 %622, 0
  %624 = shl i32 %619, 4
  %625 = and i32 %624, 16
  %626 = lshr i32 %623, %625
  %627 = and i32 %626, 65535
  %628 = uitofp i32 %627 to float
  %629 = fmul fast float %628, 0x3EF0002000000000
  %630 = call float @dx.op.unary.f32(i32 7, float %629)  ; Saturate(value)
  %631 = getelementptr inbounds [4 x float], [4 x float]* %26, i32 0, i32 %614
  store float %630, float* %631, align 4, !tbaa !49, !noalias !51
  %632 = add nuw nsw i32 %614, 1
  %633 = icmp eq i32 %632, 4
  br i1 %633, label %639, label %634

; <label>:634                                     ; preds = %611
  %635 = getelementptr [4 x i32], [4 x i32]* %16, i32 0, i32 %632
  %636 = load i32, i32* %635, align 4
  %637 = getelementptr [4 x i32], [4 x i32]* %17, i32 0, i32 %632
  %638 = load i32, i32* %637, align 4
  br label %611

; <label>:639                                     ; preds = %611
  %640 = fmul fast float %595, %586
  %641 = fadd fast float %598, %640
  %642 = fmul fast float %641, %585
  %643 = call float @dx.op.unary.f32(i32 22, float %466)  ; Frc(value)
  %644 = getelementptr inbounds [4 x float], [4 x float]* %26, i32 0, i32 0
  %645 = load float, float* %644, align 4, !tbaa !49, !noalias !51
  %646 = fmul fast float %645, %586
  %647 = getelementptr inbounds [4 x float], [4 x float]* %26, i32 0, i32 1
  %648 = load float, float* %647, align 4, !tbaa !49, !noalias !51
  %649 = fmul fast float %648, %540
  %650 = fadd fast float %649, %646
  %651 = getelementptr inbounds [4 x float], [4 x float]* %26, i32 0, i32 2
  %652 = load float, float* %651, align 4, !tbaa !49, !noalias !51
  %653 = fmul fast float %652, %586
  %654 = getelementptr inbounds [4 x float], [4 x float]* %26, i32 0, i32 3
  %655 = load float, float* %654, align 4, !tbaa !49, !noalias !51
  %656 = fmul fast float %655, %540
  %657 = fadd fast float %656, %653
  %658 = fsub fast float 1.000000e+00, %643
  %659 = fmul fast float %650, %658
  %660 = fmul fast float %657, %643
  %661 = fmul fast float %371, 2.000000e+00
  %662 = fmul fast float %406, %413
  %663 = fdiv fast float %661, %662
  %664 = fsub fast float -0.000000e+00, %482
  %665 = fsub fast float %664, %525
  %666 = fadd fast float %665, %539
  %667 = fadd fast float %666, %584
  %668 = fmul fast float %667, %364
  %669 = fmul fast float %372, 2.000000e+00
  %670 = fdiv fast float %669, %662
  %671 = fsub fast float -0.000000e+00, %600
  %672 = fsub fast float %671, %642
  %673 = fadd fast float %672, %659
  %674 = fadd fast float %673, %660
  %675 = fmul fast float %668, %670
  %676 = fsub fast float -0.000000e+00, %675
  %677 = fmul fast float %364, %663
  %678 = fmul fast float %677, %674
  %679 = fsub fast float -0.000000e+00, %678
  %680 = fmul fast float %670, %663
  %681 = call float @dx.op.dot3.f32(i32 55, float %676, float %679, float %680, float %676, float %679, float %680)  ; Dot3(ax,ay,az,bx,by,bz)
  %682 = call float @dx.op.unary.f32(i32 25, float %681)  ; Rsqrt(value)
  %683 = fmul fast float %682, %676
  %684 = fmul fast float %682, %679
  %685 = fmul fast float %682, %680
  %686 = call float @dx.op.dot3.f32(i32 55, float %663, float 0.000000e+00, float %668, float %663, float 0.000000e+00, float %668)  ; Dot3(ax,ay,az,bx,by,bz)
  %687 = call float @dx.op.unary.f32(i32 25, float %686)  ; Rsqrt(value)
  %688 = fmul fast float %687, %663
  %689 = fmul fast float %687, %668
  %690 = fmul fast float %684, %689
  %691 = fmul fast float %688, %685
  %692 = fmul fast float %689, %683
  %693 = fsub fast float %691, %692
  %694 = fmul fast float %684, %688
  br label %754

; <label>:695                                     ; preds = %327
  %696 = getelementptr [4 x float], [4 x float]* %24, i32 0, i32 0
  %697 = getelementptr [4 x float], [4 x float]* %25, i32 0, i32 0
  %698 = fsub fast float -0.000000e+00, %365
  store float %698, float* %696, align 4
  store float 0.000000e+00, float* %697, align 4
  %699 = getelementptr [4 x float], [4 x float]* %24, i32 0, i32 1
  %700 = getelementptr [4 x float], [4 x float]* %25, i32 0, i32 1
  store float %365, float* %699, align 4
  store float 0.000000e+00, float* %700, align 4
  %701 = getelementptr [4 x float], [4 x float]* %24, i32 0, i32 2
  %702 = getelementptr [4 x float], [4 x float]* %25, i32 0, i32 2
  store float 0.000000e+00, float* %701, align 4
  store float %698, float* %702, align 4
  %703 = getelementptr [4 x float], [4 x float]* %24, i32 0, i32 3
  %704 = getelementptr [4 x float], [4 x float]* %25, i32 0, i32 3
  store float 0.000000e+00, float* %703, align 4
  store float %365, float* %704, align 4
  br label %705

; <label>:705                                     ; preds = %718, %695
  %706 = phi float [ 0.000000e+00, %695 ], [ %722, %718 ]
  %707 = phi float [ %698, %695 ], [ %720, %718 ]
  %708 = phi i32 [ 0, %695 ], [ %716, %718 ]
  %709 = fadd fast float %707, %328
  %710 = fadd fast float %706, %329
  %711 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %353, %dx.types.Handle %11, float %709, float %710, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %712 = extractvalue %dx.types.ResRet.f32 %711, 0
  %713 = fmul fast float %712, %364
  %714 = fadd fast float %713, %361
  %715 = getelementptr [4 x float], [4 x float]* %30, i32 0, i32 %708
  store float %714, float* %715, align 4, !tbaa !49, !noalias !69
  %716 = add nuw nsw i32 %708, 1
  %717 = icmp eq i32 %716, 4
  br i1 %717, label %723, label %718

; <label>:718                                     ; preds = %705
  %719 = getelementptr [4 x float], [4 x float]* %24, i32 0, i32 %716
  %720 = load float, float* %719, align 4
  %721 = getelementptr [4 x float], [4 x float]* %25, i32 0, i32 %716
  %722 = load float, float* %721, align 4
  br label %705

; <label>:723                                     ; preds = %705
  %724 = fdiv fast float %357, %358
  %725 = fmul fast float %724, 2.000000e+00
  %726 = getelementptr [4 x float], [4 x float]* %30, i32 0, i32 1
  %727 = load float, float* %726, align 4, !tbaa !49, !noalias !69
  %728 = getelementptr [4 x float], [4 x float]* %30, i32 0, i32 0
  %729 = load float, float* %728, align 4, !tbaa !49, !noalias !69
  %730 = fsub fast float %727, %729
  %731 = getelementptr [4 x float], [4 x float]* %30, i32 0, i32 3
  %732 = load float, float* %731, align 4, !tbaa !49, !noalias !69
  %733 = getelementptr [4 x float], [4 x float]* %30, i32 0, i32 2
  %734 = load float, float* %733, align 4, !tbaa !49, !noalias !69
  %735 = fsub fast float %732, %734
  %736 = fmul fast float %724, -2.000000e+00
  %737 = fmul fast float %736, %730
  %738 = fmul fast float %736, %735
  %739 = fmul fast float %725, %725
  %740 = call float @dx.op.dot3.f32(i32 55, float %737, float %738, float %739, float %737, float %738, float %739)  ; Dot3(ax,ay,az,bx,by,bz)
  %741 = call float @dx.op.unary.f32(i32 25, float %740)  ; Rsqrt(value)
  %742 = fmul fast float %741, %737
  %743 = fmul fast float %741, %738
  %744 = fmul fast float %741, %739
  %745 = call float @dx.op.dot3.f32(i32 55, float %725, float 0.000000e+00, float %730, float %725, float 0.000000e+00, float %730)  ; Dot3(ax,ay,az,bx,by,bz)
  %746 = call float @dx.op.unary.f32(i32 25, float %745)  ; Rsqrt(value)
  %747 = fmul fast float %746, %725
  %748 = fmul fast float %746, %730
  %749 = fmul fast float %748, %743
  %750 = fmul fast float %747, %744
  %751 = fmul fast float %748, %742
  %752 = fsub fast float %750, %751
  %753 = fmul fast float %747, %743
  br label %754

; <label>:754                                     ; preds = %723, %639
  %755 = phi float [ %694, %639 ], [ %753, %723 ]
  %756 = phi float [ %683, %639 ], [ %742, %723 ]
  %757 = phi float [ %684, %639 ], [ %743, %723 ]
  %758 = phi float [ %685, %639 ], [ %744, %723 ]
  %759 = phi float [ %690, %639 ], [ %749, %723 ]
  %760 = phi float [ %693, %639 ], [ %752, %723 ]
  %761 = phi float [ %688, %639 ], [ %747, %723 ]
  %762 = phi float [ %689, %639 ], [ %748, %723 ]
  %763 = fsub fast float -0.000000e+00, %755
  %764 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %765 = extractvalue %dx.types.CBufRet.i32 %764, 1
  %766 = icmp eq i32 %765, 5
  %767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %768 = extractvalue %dx.types.CBufRet.f32 %767, 0
  %769 = extractvalue %dx.types.CBufRet.f32 %767, 1
  %770 = extractvalue %dx.types.CBufRet.f32 %767, 2
  %771 = fmul fast float %770, %68
  %772 = fmul fast float %770, %69
  %773 = fadd fast float %771, %768
  %774 = fadd fast float %772, %769
  %775 = fmul fast float %141, 2.000000e+00
  %776 = fadd fast float %775, -1.000000e+00
  %777 = fmul fast float %143, 2.000000e+00
  %778 = fadd fast float %777, -1.000000e+00
  %779 = fadd fast float %778, %776
  %780 = fmul fast float %779, 5.000000e-01
  %781 = fsub fast float %776, %778
  %782 = fmul fast float %781, 5.000000e-01
  %783 = call float @dx.op.unary.f32(i32 6, float %780)  ; FAbs(value)
  %784 = fsub fast float 1.000000e+00, %783
  %785 = call float @dx.op.unary.f32(i32 6, float %782)  ; FAbs(value)
  %786 = fsub fast float %784, %785
  %787 = call float @dx.op.dot3.f32(i32 55, float %780, float %782, float %786, float %780, float %782, float %786)  ; Dot3(ax,ay,az,bx,by,bz)
  %788 = call float @dx.op.unary.f32(i32 25, float %787)  ; Rsqrt(value)
  %789 = fmul fast float %788, %780
  %790 = fmul fast float %788, %782
  %791 = fmul fast float %788, %786
  %792 = fmul fast float %789, %762
  %793 = call float @dx.op.tertiary.f32(i32 46, float %790, float %763, float %792)  ; FMad(a,b,c)
  %794 = call float @dx.op.tertiary.f32(i32 46, float %791, float %758, float %793)  ; FMad(a,b,c)
  %795 = call float @dx.op.tertiary.f32(i32 46, float %790, float %760, float 0.000000e+00)  ; FMad(a,b,c)
  %796 = call float @dx.op.tertiary.f32(i32 46, float %791, float %757, float %795)  ; FMad(a,b,c)
  %797 = fmul fast float %789, %761
  %798 = call float @dx.op.tertiary.f32(i32 46, float %790, float %759, float %797)  ; FMad(a,b,c)
  %799 = call float @dx.op.tertiary.f32(i32 46, float %791, float %756, float %798)  ; FMad(a,b,c)
  br label %800

; <label>:800                                     ; preds = %1226, %754
  %801 = phi float [ %1227, %1226 ], [ %139, %754 ]
  %802 = phi float [ %1228, %1226 ], [ %799, %754 ]
  %803 = phi float [ %1229, %1226 ], [ %796, %754 ]
  %804 = phi float [ %1230, %1226 ], [ %794, %754 ]
  %805 = phi float [ %1231, %1226 ], [ %142, %754 ]
  %806 = phi float [ %1232, %1226 ], [ %140, %754 ]
  %807 = phi float [ %1233, %1226 ], [ %144, %754 ]
  %808 = phi float [ %1234, %1226 ], [ %110, %754 ]
  %809 = phi float [ %1235, %1226 ], [ %118, %754 ]
  %810 = phi float [ %1236, %1226 ], [ %126, %754 ]
  %811 = phi i32 [ %1237, %1226 ], [ 0, %754 ]
  %812 = phi i32 [ %1238, %1226 ], [ 0, %754 ]
  %813 = shl i32 %812, 8
  %814 = or i32 %813, 48
  %815 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %814, i32 undef)  ; BufferLoad(srv,index,wot)
  %816 = extractvalue %dx.types.ResRet.f32 %815, 0
  %817 = extractvalue %dx.types.ResRet.f32 %815, 1
  %818 = extractvalue %dx.types.ResRet.f32 %815, 2
  %819 = extractvalue %dx.types.ResRet.f32 %815, 3
  %820 = or i32 %813, 64
  %821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %820, i32 undef)  ; BufferLoad(srv,index,wot)
  %822 = extractvalue %dx.types.ResRet.i32 %821, 0
  %823 = extractvalue %dx.types.ResRet.i32 %821, 1
  %824 = extractvalue %dx.types.ResRet.i32 %821, 2
  %825 = extractvalue %dx.types.ResRet.i32 %821, 3
  %826 = or i32 %813, 80
  %827 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %826, i32 undef)  ; BufferLoad(srv,index,wot)
  %828 = extractvalue %dx.types.ResRet.f32 %827, 0
  %829 = extractvalue %dx.types.ResRet.f32 %827, 1
  %830 = extractvalue %dx.types.ResRet.f32 %827, 2
  %831 = extractvalue %dx.types.ResRet.f32 %827, 3
  %832 = or i32 %813, 96
  %833 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %832, i32 undef)  ; BufferLoad(srv,index,wot)
  %834 = extractvalue %dx.types.ResRet.f32 %833, 0
  %835 = extractvalue %dx.types.ResRet.f32 %833, 1
  %836 = extractvalue %dx.types.ResRet.f32 %833, 2
  %837 = extractvalue %dx.types.ResRet.f32 %833, 3
  %838 = or i32 %813, 112
  %839 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %838, i32 undef)  ; BufferLoad(srv,index,wot)
  %840 = extractvalue %dx.types.ResRet.f32 %839, 0
  %841 = extractvalue %dx.types.ResRet.f32 %839, 1
  %842 = extractvalue %dx.types.ResRet.f32 %839, 2
  %843 = extractvalue %dx.types.ResRet.f32 %839, 3
  %844 = or i32 %813, 128
  %845 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %844, i32 undef)  ; BufferLoad(srv,index,wot)
  %846 = extractvalue %dx.types.ResRet.f32 %845, 0
  %847 = extractvalue %dx.types.ResRet.f32 %845, 1
  %848 = extractvalue %dx.types.ResRet.f32 %845, 2
  %849 = extractvalue %dx.types.ResRet.f32 %845, 3
  %850 = or i32 %813, 144
  %851 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %850, i32 undef)  ; BufferLoad(srv,index,wot)
  %852 = extractvalue %dx.types.ResRet.f32 %851, 0
  %853 = extractvalue %dx.types.ResRet.f32 %851, 1
  %854 = extractvalue %dx.types.ResRet.f32 %851, 2
  %855 = extractvalue %dx.types.ResRet.f32 %851, 3
  %856 = or i32 %813, 160
  %857 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %856, i32 undef)  ; BufferLoad(srv,index,wot)
  %858 = extractvalue %dx.types.ResRet.f32 %857, 0
  %859 = extractvalue %dx.types.ResRet.f32 %857, 1
  %860 = extractvalue %dx.types.ResRet.f32 %857, 2
  %861 = or i32 %813, 192
  %862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %861, i32 undef)  ; BufferLoad(srv,index,wot)
  %863 = extractvalue %dx.types.ResRet.i32 %862, 0
  %864 = or i32 %813, 208
  %865 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %864, i32 undef)  ; BufferLoad(srv,index,wot)
  %866 = extractvalue %dx.types.ResRet.f32 %865, 0
  %867 = or i32 %813, 240
  %868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %867, i32 undef)  ; BufferLoad(srv,index,wot)
  %869 = extractvalue %dx.types.ResRet.i32 %868, 1
  %870 = or i32 %813, 248
  %871 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %870, i32 undef)  ; BufferLoad(srv,index,wot)
  %872 = extractvalue %dx.types.ResRet.f32 %871, 0
  %873 = extractvalue %dx.types.ResRet.f32 %871, 1
  %874 = uitofp i32 %869 to float
  %875 = fmul fast float %874, 5.000000e+01
  %876 = call float @dx.op.unary.f32(i32 23, float %875)  ; Log(value)
  %877 = call float @dx.op.unary.f32(i32 28, float %876)  ; Round_pi(value)
  %878 = fsub fast float %877, %70
  %879 = fptosi float %878 to i32
  %880 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %879)  ; IMax(a,b)
  %881 = bitcast float %819 to i32
  %882 = and i32 %881, 2560
  %883 = icmp eq i32 %882, 0
  br i1 %883, label %884, label %1226, !dx.controlflow.hints !70

; <label>:884                                     ; preds = %800
  %885 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %813, i32 undef)  ; BufferLoad(srv,index,wot)
  %886 = extractvalue %dx.types.ResRet.f32 %885, 0
  %887 = extractvalue %dx.types.ResRet.f32 %885, 1
  %888 = extractvalue %dx.types.ResRet.f32 %885, 2
  %889 = extractvalue %dx.types.ResRet.f32 %885, 3
  %890 = call float @dx.op.dot4.f32(i32 56, float %886, float %887, float %888, float %889, float %773, float %774, float %343, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %891 = or i32 %813, 16
  %892 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %891, i32 undef)  ; BufferLoad(srv,index,wot)
  %893 = extractvalue %dx.types.ResRet.f32 %892, 0
  %894 = extractvalue %dx.types.ResRet.f32 %892, 1
  %895 = extractvalue %dx.types.ResRet.f32 %892, 2
  %896 = extractvalue %dx.types.ResRet.f32 %892, 3
  %897 = call float @dx.op.dot4.f32(i32 56, float %893, float %894, float %895, float %896, float %773, float %774, float %343, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %898 = or i32 %813, 32
  %899 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %898, i32 undef)  ; BufferLoad(srv,index,wot)
  %900 = extractvalue %dx.types.ResRet.f32 %899, 0
  %901 = extractvalue %dx.types.ResRet.f32 %899, 1
  %902 = extractvalue %dx.types.ResRet.f32 %899, 2
  %903 = extractvalue %dx.types.ResRet.f32 %899, 3
  %904 = call float @dx.op.dot4.f32(i32 56, float %900, float %901, float %902, float %903, float %773, float %774, float %343, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %905 = call float @dx.op.unary.f32(i32 27, float %890)  ; Round_ni(value)
  %906 = call float @dx.op.unary.f32(i32 6, float %905)  ; FAbs(value)
  %907 = call float @dx.op.unary.f32(i32 27, float %897)  ; Round_ni(value)
  %908 = call float @dx.op.unary.f32(i32 6, float %907)  ; FAbs(value)
  %909 = call float @dx.op.unary.f32(i32 6, float %904)  ; FAbs(value)
  %910 = call float @dx.op.unary.f32(i32 27, float %909)  ; Round_ni(value)
  %911 = fadd fast float %908, %906
  %912 = fadd fast float %911, %910
  %913 = fcmp fast oeq float %912, 0.000000e+00
  %914 = call float @dx.op.dot3.f32(i32 55, float %816, float %817, float %818, float %756, float %757, float %758)  ; Dot3(ax,ay,az,bx,by,bz)
  %915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %916 = extractvalue %dx.types.CBufRet.f32 %915, 2
  %917 = fadd fast float %916, %914
  %918 = call float @dx.op.unary.f32(i32 7, float %917)  ; Saturate(value)
  %919 = extractvalue %dx.types.CBufRet.f32 %915, 0
  %920 = fcmp fast ogt float %918, %919
  %921 = and i1 %913, %920
  br i1 %921, label %922, label %1226, !dx.controlflow.hints !71

; <label>:922                                     ; preds = %884
  %923 = add i32 %811, 1
  %924 = sitofp i32 %880 to float
  %925 = add i32 %825, 0
  %926 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %925, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %927 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %926, i32 0)  ; GetDimensions(handle,mipLevel)
  %928 = extractvalue %dx.types.Dimensions %927, 0
  %929 = extractvalue %dx.types.Dimensions %927, 1
  %930 = uitofp i32 %928 to float
  %931 = uitofp i32 %929 to float
  %932 = call float @dx.op.binary.f32(i32 35, float %930, float %931)  ; FMax(a,b)
  %933 = call float @dx.op.unary.f32(i32 23, float %932)  ; Log(value)
  %934 = call float @dx.op.unary.f32(i32 28, float %933)  ; Round_pi(value)
  %935 = fsub fast float %934, %924
  %936 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %935)  ; FMax(a,b)
  %937 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %926, %dx.types.Handle %10, float %890, float %897, float undef, float undef, i32 0, i32 0, i32 undef, float %936)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %938 = extractvalue %dx.types.ResRet.f32 %937, 0
  %939 = fmul fast float %938, %828
  %940 = fadd fast float %939, %829
  %941 = call float @dx.op.unary.f32(i32 7, float %940)  ; Saturate(value)
  %942 = fmul fast float %890, %834
  %943 = call float @dx.op.tertiary.f32(i32 46, float %835, float %897, float %942)  ; FMad(a,b,c)
  %944 = fadd fast float %943, %840
  %945 = fmul fast float %890, %836
  %946 = call float @dx.op.tertiary.f32(i32 46, float %837, float %897, float %945)  ; FMad(a,b,c)
  %947 = fadd fast float %946, %841
  %948 = add i32 %824, 0
  %949 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %948, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %950 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %949, i32 0)  ; GetDimensions(handle,mipLevel)
  %951 = extractvalue %dx.types.Dimensions %950, 0
  %952 = extractvalue %dx.types.Dimensions %950, 1
  %953 = uitofp i32 %951 to float
  %954 = uitofp i32 %952 to float
  %955 = call float @dx.op.binary.f32(i32 35, float %953, float %954)  ; FMax(a,b)
  %956 = call float @dx.op.unary.f32(i32 23, float %955)  ; Log(value)
  %957 = call float @dx.op.unary.f32(i32 28, float %956)  ; Round_pi(value)
  %958 = fsub fast float %957, %924
  %959 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %958)  ; FMax(a,b)
  %960 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %949, %dx.types.Handle %10, float %944, float %947, float undef, float undef, i32 0, i32 0, i32 undef, float %959)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %961 = extractvalue %dx.types.ResRet.f32 %960, 0
  %962 = and i32 %881, 1024
  %963 = icmp ne i32 %962, 0
  %964 = fcmp fast ogt float %961, 0x3FE0101020000000
  %965 = uitofp i1 %964 to float
  %966 = select i1 %963, float %965, float %961
  %967 = and i32 %881, 8192
  %968 = icmp ne i32 %967, 0
  %969 = select i1 %968, float %843, float 1.000000e+00
  %970 = fmul fast float %890, 2.000000e+00
  %971 = fadd fast float %970, -1.000000e+00
  %972 = call float @dx.op.unary.f32(i32 6, float %971)  ; FAbs(value)
  %973 = fmul fast float %972, %872
  %974 = fsub fast float %973, %872
  %975 = call float @dx.op.unary.f32(i32 7, float %974)  ; Saturate(value)
  %976 = fmul fast float %897, 2.000000e+00
  %977 = fadd fast float %976, -1.000000e+00
  %978 = call float @dx.op.unary.f32(i32 6, float %977)  ; FAbs(value)
  %979 = fmul fast float %978, %873
  %980 = fsub fast float %979, %873
  %981 = call float @dx.op.unary.f32(i32 7, float %980)  ; Saturate(value)
  %982 = fmul fast float %909, %830
  %983 = fsub fast float %982, %830
  %984 = call float @dx.op.unary.f32(i32 7, float %983)  ; Saturate(value)
  %985 = fmul fast float %941, %969
  %986 = fmul fast float %985, %938
  %987 = fmul fast float %986, %975
  %988 = fmul fast float %987, %966
  %989 = fmul fast float %988, %981
  %990 = fmul fast float %989, %984
  %991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %992 = extractvalue %dx.types.CBufRet.f32 %991, 1
  %993 = extractvalue %dx.types.CBufRet.f32 %991, 0
  %994 = fsub fast float %918, %993
  %995 = fmul fast float %994, %992
  %996 = call float @dx.op.unary.f32(i32 7, float %995)  ; Saturate(value)
  %997 = fmul fast float %990, %831
  %998 = fadd fast float %990, %831
  %999 = fmul fast float %998, %842
  %1000 = fsub fast float %999, %842
  %1001 = call float @dx.op.unary.f32(i32 7, float %1000)  ; Saturate(value)
  %1002 = and i32 %881, 128
  %1003 = icmp ne i32 %1002, 0
  %1004 = select i1 %1003, float %1001, float %997
  %1005 = fmul fast float %1004, %996
  %1006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %1007 = extractvalue %dx.types.CBufRet.f32 %1006, 0
  %1008 = fcmp fast ugt float %1005, %1007
  br i1 %1008, label %1009, label %1226, !dx.controlflow.hints !72

; <label>:1009                                    ; preds = %922
  br i1 %968, label %1226, label %1010, !dx.controlflow.hints !73

; <label>:1010                                    ; preds = %1009
  %1011 = and i32 %881, 4
  %1012 = and i32 %881, 8
  %1013 = add i32 %822, 0
  %1014 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1013, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1015 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1014, i32 0)  ; GetDimensions(handle,mipLevel)
  %1016 = extractvalue %dx.types.Dimensions %1015, 0
  %1017 = extractvalue %dx.types.Dimensions %1015, 1
  %1018 = uitofp i32 %1016 to float
  %1019 = uitofp i32 %1017 to float
  %1020 = call float @dx.op.binary.f32(i32 35, float %1018, float %1019)  ; FMax(a,b)
  %1021 = call float @dx.op.unary.f32(i32 23, float %1020)  ; Log(value)
  %1022 = call float @dx.op.unary.f32(i32 28, float %1021)  ; Round_pi(value)
  %1023 = fsub fast float %1022, %924
  %1024 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1023)  ; FMax(a,b)
  %1025 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1014, %dx.types.Handle %10, float %944, float %947, float undef, float undef, i32 0, i32 0, i32 undef, float %1024)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1026 = extractvalue %dx.types.ResRet.f32 %1025, 0
  %1027 = extractvalue %dx.types.ResRet.f32 %1025, 1
  %1028 = extractvalue %dx.types.ResRet.f32 %1025, 2
  %1029 = extractvalue %dx.types.ResRet.f32 %1025, 3
  %1030 = bitcast float %855 to i32
  %1031 = and i32 %1030, 255
  %1032 = uitofp i32 %1031 to float
  %1033 = lshr i32 %1030, 8
  %1034 = and i32 %1033, 255
  %1035 = uitofp i32 %1034 to float
  %1036 = fmul fast float %1029, %1032
  %1037 = fadd fast float %1036, %1035
  %1038 = fmul fast float %1037, 0x3F70101000000000
  %1039 = add i32 %823, 0
  %1040 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1039, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1041 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1040, i32 0)  ; GetDimensions(handle,mipLevel)
  %1042 = extractvalue %dx.types.Dimensions %1041, 0
  %1043 = extractvalue %dx.types.Dimensions %1041, 1
  %1044 = uitofp i32 %1042 to float
  %1045 = uitofp i32 %1043 to float
  %1046 = call float @dx.op.binary.f32(i32 35, float %1044, float %1045)  ; FMax(a,b)
  %1047 = call float @dx.op.unary.f32(i32 23, float %1046)  ; Log(value)
  %1048 = call float @dx.op.unary.f32(i32 28, float %1047)  ; Round_pi(value)
  %1049 = fsub fast float %1048, %924
  %1050 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1049)  ; FMax(a,b)
  %1051 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1040, %dx.types.Handle %10, float %944, float %947, float undef, float undef, i32 0, i32 0, i32 undef, float %1050)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1052 = extractvalue %dx.types.ResRet.f32 %1051, 0
  %1053 = extractvalue %dx.types.ResRet.f32 %1051, 1
  %1054 = extractvalue %dx.types.ResRet.f32 %1051, 2
  %1055 = extractvalue %dx.types.ResRet.f32 %1051, 3
  %1056 = bitcast float %849 to i32
  %1057 = and i32 %1056, 255
  %1058 = uitofp i32 %1057 to float
  %1059 = lshr i32 %1056, 8
  %1060 = and i32 %1059, 255
  %1061 = uitofp i32 %1060 to float
  %1062 = lshr i32 %1056, 16
  %1063 = and i32 %1062, 255
  %1064 = uitofp i32 %1063 to float
  %1065 = fmul fast float %1064, 0x3F70101000000000
  %1066 = fmul fast float %1052, %1058
  %1067 = fadd fast float %1066, %1061
  %1068 = fmul fast float %1067, 0x3F70101000000000
  %1069 = fadd fast float %1053, -5.000000e-01
  %1070 = fadd fast float %1055, -5.000000e-01
  %1071 = fmul fast float %1069, %1065
  %1072 = fmul fast float %1070, %1065
  %1073 = fadd fast float %1071, 5.000000e-01
  %1074 = fadd fast float %1072, 5.000000e-01
  %1075 = fmul fast float %1026, %858
  %1076 = fmul fast float %1027, %859
  %1077 = fmul fast float %1028, %860
  %1078 = fmul fast float %1073, 2.000000e+00
  %1079 = fadd fast float %1078, -1.000000e+00
  %1080 = fmul fast float %1074, 2.000000e+00
  %1081 = fadd fast float %1080, -1.000000e+00
  %1082 = fadd fast float %1079, %1081
  %1083 = fmul fast float %1082, 5.000000e-01
  %1084 = fsub fast float %1079, %1081
  %1085 = fmul fast float %1084, 5.000000e-01
  %1086 = call float @dx.op.unary.f32(i32 6, float %1083)  ; FAbs(value)
  %1087 = fsub fast float 1.000000e+00, %1086
  %1088 = call float @dx.op.unary.f32(i32 6, float %1085)  ; FAbs(value)
  %1089 = fsub fast float %1087, %1088
  %1090 = call float @dx.op.dot3.f32(i32 55, float %1083, float %1085, float %1089, float %1083, float %1085, float %1089)  ; Dot3(ax,ay,az,bx,by,bz)
  %1091 = call float @dx.op.unary.f32(i32 25, float %1090)  ; Rsqrt(value)
  %1092 = fmul fast float %1083, %1091
  %1093 = fmul fast float %1085, %1091
  %1094 = fmul fast float %1091, %1089
  %1095 = fmul fast float %1094, %816
  %1096 = fmul fast float %1094, %817
  %1097 = fmul fast float %1094, %818
  %1098 = fmul fast float %1092, %846
  %1099 = fmul fast float %1092, %847
  %1100 = fmul fast float %1092, %848
  %1101 = fadd fast float %1098, %1095
  %1102 = fadd fast float %1099, %1096
  %1103 = fadd fast float %1100, %1097
  %1104 = fmul fast float %1093, %852
  %1105 = fmul fast float %1093, %853
  %1106 = fmul fast float %1093, %854
  %1107 = fadd fast float %1101, %1104
  %1108 = fadd fast float %1102, %1105
  %1109 = fadd fast float %1103, %1106
  %1110 = call float @dx.op.dot3.f32(i32 55, float %1107, float %1108, float %1109, float %1107, float %1108, float %1109)  ; Dot3(ax,ay,az,bx,by,bz)
  %1111 = call float @dx.op.unary.f32(i32 25, float %1110)  ; Rsqrt(value)
  %1112 = fmul fast float %1107, %1111
  %1113 = fmul fast float %1108, %1111
  %1114 = fmul fast float %1109, %1111
  %1115 = icmp ne i32 %1012, 0
  %1116 = select i1 %1115, float 1.000000e+00, float 0.000000e+00
  %1117 = fmul fast float %1005, %1116
  %1118 = and i32 %881, 1
  %1119 = icmp eq i32 %1118, 0
  br i1 %1119, label %1120, label %1124, !dx.controlflow.hints !74

; <label>:1120                                    ; preds = %1010
  %1121 = fsub fast float %1112, %802
  %1122 = fsub fast float %1113, %803
  %1123 = fsub fast float %1114, %804
  br label %1124

; <label>:1124                                    ; preds = %1120, %1010
  %1125 = phi float [ %1121, %1120 ], [ %1112, %1010 ]
  %1126 = phi float [ %1122, %1120 ], [ %1113, %1010 ]
  %1127 = phi float [ %1123, %1120 ], [ %1114, %1010 ]
  %1128 = fmul float %1127, %1117
  %1129 = fmul float %1126, %1117
  %1130 = fmul float %1125, %1117
  %1131 = fadd fast float %1130, %802
  %1132 = fadd fast float %1129, %803
  %1133 = fadd fast float %1128, %804
  %1134 = icmp ne i32 %1011, 0
  %1135 = select i1 %1134, float 1.000000e+00, float 0.000000e+00
  %1136 = fmul fast float %1005, %1135
  %1137 = fsub fast float %1075, %808
  %1138 = fsub fast float %1076, %809
  %1139 = fsub fast float %1077, %810
  %1140 = fmul fast float %1137, %1136
  %1141 = fmul fast float %1138, %1136
  %1142 = fmul fast float %1139, %1136
  %1143 = fadd fast float %1140, %808
  %1144 = fadd fast float %1141, %809
  %1145 = fadd fast float %1142, %810
  %1146 = fsub fast float %1038, %807
  %1147 = fmul fast float %1146, %1136
  %1148 = fadd fast float %1147, %807
  %1149 = fsub fast float %1068, %806
  %1150 = fmul fast float %1149, %1117
  %1151 = fadd fast float %1150, %806
  %1152 = fsub fast float %1054, %805
  %1153 = fmul fast float %1152, %1117
  %1154 = fadd fast float %1153, %805
  %1155 = and i32 %881, 16
  %1156 = icmp eq i32 %1155, 0
  br i1 %1156, label %1226, label %1157, !dx.controlflow.hints !75

; <label>:1157                                    ; preds = %1124
  %1158 = add i32 %863, 0
  %1159 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1158, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1160 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1161 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1159, %dx.types.Handle %1160, float %944, float %947, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00, float 0.000000e+00, float undef, float 0.000000e+00, float 0.000000e+00, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1162 = extractvalue %dx.types.ResRet.f32 %1161, 0
  %1163 = extractvalue %dx.types.ResRet.f32 %1161, 1
  %1164 = extractvalue %dx.types.ResRet.f32 %1161, 2
  %1165 = bitcast float %866 to i32
  %1166 = and i32 %1165, 65535
  %1167 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1166)  ; LegacyF16ToF32(value)
  %1168 = fmul fast float %1162, %858
  %1169 = fmul fast float %1163, %859
  %1170 = fmul fast float %1164, %860
  %1171 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %1172 = extractvalue %dx.types.CBufRet.i32 %1171, 1
  %1173 = icmp eq i32 %1172, 2
  br i1 %1173, label %1174, label %1218, !dx.controlflow.hints !76

; <label>:1174                                    ; preds = %1157
  %1175 = call float @dx.op.binary.f32(i32 36, float %1143, float 0x3FEFAE1480000000)  ; FMin(a,b)
  %1176 = call float @dx.op.binary.f32(i32 36, float %1144, float 0x3FEFAE1480000000)  ; FMin(a,b)
  %1177 = call float @dx.op.binary.f32(i32 36, float %1145, float 0x3FEFAE1480000000)  ; FMin(a,b)
  %1178 = fsub fast float 1.000000e+00, %1175
  %1179 = fsub fast float 1.000000e+00, %1176
  %1180 = fsub fast float 1.000000e+00, %1177
  %1181 = call float @dx.op.unary.f32(i32 23, float %1178)  ; Log(value)
  %1182 = call float @dx.op.unary.f32(i32 23, float %1179)  ; Log(value)
  %1183 = call float @dx.op.unary.f32(i32 23, float %1180)  ; Log(value)
  %1184 = call float @dx.op.binary.f32(i32 36, float %1168, float 0x3FEFAE1480000000)  ; FMin(a,b)
  %1185 = call float @dx.op.binary.f32(i32 36, float %1169, float 0x3FEFAE1480000000)  ; FMin(a,b)
  %1186 = call float @dx.op.binary.f32(i32 36, float %1170, float 0x3FEFAE1480000000)  ; FMin(a,b)
  %1187 = fsub fast float 1.000000e+00, %1184
  %1188 = fsub fast float 1.000000e+00, %1185
  %1189 = fsub fast float 1.000000e+00, %1186
  %1190 = call float @dx.op.unary.f32(i32 23, float %1187)  ; Log(value)
  %1191 = call float @dx.op.unary.f32(i32 23, float %1188)  ; Log(value)
  %1192 = call float @dx.op.unary.f32(i32 23, float %1189)  ; Log(value)
  %1193 = fmul fast float %1005, %1190
  %1194 = fmul fast float %1005, %1191
  %1195 = fmul fast float %1005, %1192
  %1196 = fsub fast float -0.000000e+00, %1181
  %1197 = fsub fast float %1196, %1193
  %1198 = fsub fast float -0.000000e+00, %1182
  %1199 = fsub fast float %1198, %1194
  %1200 = fsub fast float -0.000000e+00, %1183
  %1201 = fsub fast float %1200, %1195
  %1202 = fsub fast float -0.000000e+00, %1197
  %1203 = fsub fast float -0.000000e+00, %1199
  %1204 = fsub fast float -0.000000e+00, %1201
  %1205 = call float @dx.op.unary.f32(i32 21, float %1202)  ; Exp(value)
  %1206 = call float @dx.op.unary.f32(i32 21, float %1203)  ; Exp(value)
  %1207 = call float @dx.op.unary.f32(i32 21, float %1204)  ; Exp(value)
  %1208 = fsub fast float 1.000000e+00, %1205
  %1209 = fsub fast float 1.000000e+00, %1206
  %1210 = fsub fast float 1.000000e+00, %1207
  %1211 = call float @dx.op.dot3.f32(i32 55, float %1208, float %1209, float %1210, float %1208, float %1209, float %1210)  ; Dot3(ax,ay,az,bx,by,bz)
  %1212 = call float @dx.op.dot3.f32(i32 55, float %1168, float %1169, float %1170, float %1168, float %1169, float %1170)  ; Dot3(ax,ay,az,bx,by,bz)
  %1213 = fmul fast float %1212, %1005
  %1214 = fcmp fast une float %1211, 0.000000e+00
  %1215 = fdiv fast float %1213, %1211
  %1216 = select i1 %1214, float %1215, float 0.000000e+00
  %1217 = fmul fast float %1216, %1167
  br label %1218

; <label>:1218                                    ; preds = %1174, %1157
  %1219 = phi float [ %1217, %1174 ], [ %1167, %1157 ]
  %1220 = phi float [ %1208, %1174 ], [ %1143, %1157 ]
  %1221 = phi float [ %1209, %1174 ], [ %1144, %1157 ]
  %1222 = phi float [ %1210, %1174 ], [ %1145, %1157 ]
  %1223 = fsub fast float %1219, %801
  %1224 = fmul fast float %1223, %1005
  %1225 = fadd fast float %1224, %801
  br label %1226

; <label>:1226                                    ; preds = %1218, %1124, %1009, %922, %884, %800
  %1227 = phi float [ %801, %800 ], [ %801, %922 ], [ %801, %1009 ], [ %801, %884 ], [ %1225, %1218 ], [ %801, %1124 ]
  %1228 = phi float [ %802, %800 ], [ %802, %922 ], [ %802, %1009 ], [ %802, %884 ], [ %1131, %1218 ], [ %1131, %1124 ]
  %1229 = phi float [ %803, %800 ], [ %803, %922 ], [ %803, %1009 ], [ %803, %884 ], [ %1132, %1218 ], [ %1132, %1124 ]
  %1230 = phi float [ %804, %800 ], [ %804, %922 ], [ %804, %1009 ], [ %804, %884 ], [ %1133, %1218 ], [ %1133, %1124 ]
  %1231 = phi float [ %805, %800 ], [ %805, %922 ], [ %805, %1009 ], [ %805, %884 ], [ %1154, %1218 ], [ %1154, %1124 ]
  %1232 = phi float [ %806, %800 ], [ %806, %922 ], [ %806, %1009 ], [ %806, %884 ], [ %1151, %1218 ], [ %1151, %1124 ]
  %1233 = phi float [ %807, %800 ], [ %807, %922 ], [ %807, %1009 ], [ %807, %884 ], [ %1148, %1218 ], [ %1148, %1124 ]
  %1234 = phi float [ %808, %800 ], [ %808, %922 ], [ %808, %1009 ], [ %808, %884 ], [ %1220, %1218 ], [ %1143, %1124 ]
  %1235 = phi float [ %809, %800 ], [ %809, %922 ], [ %809, %1009 ], [ %809, %884 ], [ %1221, %1218 ], [ %1144, %1124 ]
  %1236 = phi float [ %810, %800 ], [ %810, %922 ], [ %810, %1009 ], [ %810, %884 ], [ %1222, %1218 ], [ %1145, %1124 ]
  %1237 = phi i32 [ %811, %800 ], [ %923, %922 ], [ %923, %1009 ], [ %811, %884 ], [ %923, %1218 ], [ %923, %1124 ]
  %1238 = add nuw i32 %812, 1
  %1239 = icmp eq i32 %1238, %287
  br i1 %1239, label %1240, label %800

; <label>:1240                                    ; preds = %1226
  %1241 = icmp eq i32 %1237, 0
  br i1 %1241, label %1273, label %1242, !dx.controlflow.hints !77

; <label>:1242                                    ; preds = %1240
  %1243 = call float @dx.op.unary.f32(i32 7, float %1234)  ; Saturate(value)
  %1244 = call float @dx.op.unary.f32(i32 7, float %1235)  ; Saturate(value)
  %1245 = call float @dx.op.unary.f32(i32 7, float %1236)  ; Saturate(value)
  br i1 %766, label %1273, label %1246, !dx.controlflow.hints !78

; <label>:1246                                    ; preds = %1242
  %1247 = call float @dx.op.dot3.f32(i32 55, float %1228, float %1229, float %1230, float %1228, float %1229, float %1230)  ; Dot3(ax,ay,az,bx,by,bz)
  %1248 = call float @dx.op.unary.f32(i32 25, float %1247)  ; Rsqrt(value)
  %1249 = fmul fast float %1248, %1228
  %1250 = fmul fast float %1248, %1229
  %1251 = fmul fast float %1248, %1230
  %1252 = fmul fast float %1249, %761
  %1253 = call float @dx.op.tertiary.f32(i32 46, float %1251, float %762, float %1252)  ; FMad(a,b,c)
  %1254 = fmul fast float %1249, %759
  %1255 = call float @dx.op.tertiary.f32(i32 46, float %1250, float %760, float %1254)  ; FMad(a,b,c)
  %1256 = call float @dx.op.tertiary.f32(i32 46, float %1251, float %763, float %1255)  ; FMad(a,b,c)
  %1257 = fmul fast float %1249, %756
  %1258 = call float @dx.op.tertiary.f32(i32 46, float %1250, float %757, float %1257)  ; FMad(a,b,c)
  %1259 = call float @dx.op.tertiary.f32(i32 46, float %1251, float %758, float %1258)  ; FMad(a,b,c)
  %1260 = call float @dx.op.unary.f32(i32 6, float %1253)  ; FAbs(value)
  %1261 = call float @dx.op.unary.f32(i32 6, float %1256)  ; FAbs(value)
  %1262 = fadd fast float %1260, %1259
  %1263 = fadd fast float %1262, %1261
  %1264 = fdiv fast float 1.000000e+00, %1263
  %1265 = fadd fast float %1256, %1253
  %1266 = fsub fast float %1253, %1256
  %1267 = fmul fast float %1265, 5.000000e-01
  %1268 = fmul fast float %1267, %1264
  %1269 = fadd fast float %1268, 5.000000e-01
  %1270 = fmul fast float %1266, 5.000000e-01
  %1271 = fmul fast float %1270, %1264
  %1272 = fadd fast float %1271, 5.000000e-01
  br label %1273

; <label>:1273                                    ; preds = %1246, %1242, %1240, %285, %282
  %1274 = phi float [ %139, %282 ], [ %139, %285 ], [ %139, %1242 ], [ %1227, %1246 ], [ %139, %1240 ]
  %1275 = phi float [ %140, %282 ], [ %140, %285 ], [ %140, %1242 ], [ %1232, %1246 ], [ %140, %1240 ]
  %1276 = phi float [ %141, %282 ], [ %141, %285 ], [ %141, %1242 ], [ %1269, %1246 ], [ %141, %1240 ]
  %1277 = phi float [ %142, %282 ], [ %142, %285 ], [ %142, %1242 ], [ %1231, %1246 ], [ %142, %1240 ]
  %1278 = phi float [ %143, %282 ], [ %143, %285 ], [ %143, %1242 ], [ %1272, %1246 ], [ %143, %1240 ]
  %1279 = phi float [ %110, %282 ], [ %110, %285 ], [ %1243, %1242 ], [ %1243, %1246 ], [ %110, %1240 ]
  %1280 = phi float [ %118, %282 ], [ %118, %285 ], [ %1244, %1242 ], [ %1244, %1246 ], [ %118, %1240 ]
  %1281 = phi float [ %126, %282 ], [ %126, %285 ], [ %1245, %1242 ], [ %1245, %1246 ], [ %126, %1240 ]
  %1282 = phi float [ %144, %282 ], [ %144, %285 ], [ %1233, %1242 ], [ %1233, %1246 ], [ %144, %1240 ]
  br i1 %284, label %1283, label %1325, !dx.controlflow.hints !79

; <label>:1283                                    ; preds = %1273
  %1284 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %1285 = extractvalue %dx.types.CBufRet.i32 %1284, 1
  %1286 = icmp eq i32 %1285, 5
  %1287 = fcmp fast ole float %1279, 0x3F69A5C380000000
  %1288 = fcmp fast ole float %1280, 0x3F69A5C380000000
  %1289 = fcmp fast ole float %1281, 0x3F69A5C380000000
  %1290 = fmul fast float %1279, 0x4029D70A40000000
  %1291 = fmul fast float %1280, 0x4029D70A40000000
  %1292 = fmul fast float %1281, 0x4029D70A40000000
  %1293 = call float @dx.op.unary.f32(i32 23, float %1279)  ; Log(value)
  %1294 = call float @dx.op.unary.f32(i32 23, float %1280)  ; Log(value)
  %1295 = call float @dx.op.unary.f32(i32 23, float %1281)  ; Log(value)
  %1296 = fmul fast float %1293, 0x3FDAAAAAA0000000
  %1297 = fmul fast float %1294, 0x3FDAAAAAA0000000
  %1298 = fmul fast float %1295, 0x3FDAAAAAA0000000
  %1299 = call float @dx.op.unary.f32(i32 21, float %1296)  ; Exp(value)
  %1300 = call float @dx.op.unary.f32(i32 21, float %1297)  ; Exp(value)
  %1301 = call float @dx.op.unary.f32(i32 21, float %1298)  ; Exp(value)
  %1302 = fmul fast float %1299, 0x3FF0E147A0000000
  %1303 = fmul fast float %1300, 0x3FF0E147A0000000
  %1304 = fmul fast float %1301, 0x3FF0E147A0000000
  %1305 = fadd fast float %1302, 0xBFAC28F5C0000000
  %1306 = fadd fast float %1303, 0xBFAC28F5C0000000
  %1307 = fadd fast float %1304, 0xBFAC28F5C0000000
  %1308 = select i1 %1287, float %1290, float %1305
  %1309 = select i1 %1288, float %1291, float %1306
  %1310 = select i1 %1289, float %1292, float %1307
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %72, i32 %14, i32 undef, float %1308, float %1309, float %1310, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br i1 %1286, label %1325, label %1311, !dx.controlflow.hints !80

; <label>:1311                                    ; preds = %1283
  %1312 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %1313 = extractvalue %dx.types.CBufRet.i32 %1312, 1
  switch i32 %1313, label %1323 [
    i32 1, label %1314
    i32 2, label %1315
    i32 3, label %1322
  ], !dx.controlflow.hints !81

; <label>:1314                                    ; preds = %1311
  br label %1323

; <label>:1315                                    ; preds = %1311
  %1316 = fcmp fast une float %1274, 0.000000e+00
  %1317 = call float @dx.op.unary.f32(i32 23, float %1274)  ; Log(value)
  %1318 = fadd fast float %1317, 1.600000e+01
  %1319 = fmul fast float %1318, 3.125000e-02
  %1320 = call float @dx.op.unary.f32(i32 7, float %1319)  ; Saturate(value)
  %1321 = select i1 %1316, float %1320, float 0.000000e+00
  br label %1323

; <label>:1322                                    ; preds = %1311
  br label %1323

; <label>:1323                                    ; preds = %1322, %1315, %1314, %1311
  %1324 = phi float [ 0.000000e+00, %1311 ], [ %137, %1322 ], [ %1321, %1315 ], [ %138, %1314 ]
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %72, i32 %14, i32 undef, float %1276, float %1278, float %1277, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %72, i32 %14, i32 undef, float %1282, float %1275, float %1324, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1325

; <label>:1325                                    ; preds = %1323, %1283, %1273
  ret void

; <label>:1326                                    ; preds = %1355, %277
  %1327 = phi i32 [ %1332, %1355 ], [ %55, %277 ]
  %1328 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1327)  ; FirstbitLo(value)
  %1329 = and i32 %1328, 31
  %1330 = shl i32 1, %1329
  %1331 = xor i32 %1330, -1
  %1332 = and i32 %1327, %1331
  %1333 = add i32 %1328, 32
  %1334 = mul i32 %1333, 3
  %1335 = add i32 %1334, 30
  %1336 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 %1335)  ; CBufferLoadLegacy(handle,regIndex)
  %1337 = extractvalue %dx.types.CBufRet.i32 %1336, 1
  %1338 = bitcast i32 %1337 to float
  %1339 = extractvalue %dx.types.CBufRet.i32 %1336, 2
  %1340 = bitcast i32 %1339 to float
  %1341 = fsub fast float %79, %1338
  %1342 = fsub fast float %80, %1340
  %1343 = add i32 %1334, 32
  %1344 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 %1343)  ; CBufferLoadLegacy(handle,regIndex)
  %1345 = extractvalue %dx.types.CBufRet.i32 %1344, 1
  %1346 = and i32 %1345, 1048575
  %1347 = uitofp i32 %1346 to float
  %1348 = fcmp fast olt float %1341, 0.000000e+00
  %1349 = fcmp fast olt float %1342, 0.000000e+00
  %1350 = or i1 %1348, %1349
  %1351 = fcmp fast ogt float %1341, %1347
  %1352 = fcmp fast ogt float %1342, %1347
  %1353 = or i1 %1351, %1352
  %1354 = or i1 %1350, %1353
  br i1 %1354, label %1355, label %279, !dx.controlflow.hints !44

; <label>:1355                                    ; preds = %1326
  %1356 = icmp eq i32 %1332, 0
  br i1 %1356, label %279, label %1326
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
!dx.entryPoints = !{!24}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !14, !18, !20}
!5 = !{!6, !8, !9, !10, !11, !12, !13}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 17, i32 1, i32 11, i32 0, null}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 18, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 22, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 8, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 10, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 12, i32 1, i32 2, i32 0, !7}
!14 = !{!15, !16, !17}
!15 = !{i32 0, %"class.RWTexture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!16 = !{i32 1, %"class.RWTexture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!17 = !{i32 2, %"class.RWTexture2D<vector<float, 4> >"* undef, !"", i32 0, i32 4, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!18 = !{!19}
!19 = !{i32 0, %GfxVirtualTexturingComposite* undef, !"", i32 0, i32 0, i32 1, i32 4208, null}
!20 = !{!21, !22, !23}
!21 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!22 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!23 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!24 = !{void ()* @cs_compose_volume_decals_to_scratch, !"cs_compose_volume_decals_to_scratch", null, !4, !25}
!25 = !{i32 0, i64 272, i32 4, !26}
!26 = !{i32 8, i32 8, i32 1}
!27 = !{!28, !28, i64 0}
!28 = !{!"int", !29, i64 0}
!29 = !{!"omnipotent char", !30, i64 0}
!30 = !{!"Simple C/C++ TBAA"}
!31 = !{!32, !34, !35, !36}
!32 = distinct !{!32, !33, !"\01?GetPageIndexAndTileDataBits@@YAXIIV?$vector@I$02@@AIAI11@Z: %pageIndex"}
!33 = distinct !{!33, !"\01?GetPageIndexAndTileDataBits@@YAXIIV?$vector@I$02@@AIAI11@Z"}
!34 = distinct !{!34, !33, !"\01?GetPageIndexAndTileDataBits@@YAXIIV?$vector@I$02@@AIAI11@Z: %tileDataBitsLo"}
!35 = distinct !{!35, !33, !"\01?GetPageIndexAndTileDataBits@@YAXIIV?$vector@I$02@@AIAI11@Z: %tileDataBitsHi"}
!36 = distinct !{!36, !37, !"\01?CompositeScratch_InitContext@@YA?AUCompositeScratchContext@@IV?$vector@I$02@@0_N@Z: %agg.result"}
!37 = distinct !{!37, !"\01?CompositeScratch_InitContext@@YA?AUCompositeScratchContext@@IV?$vector@I$02@@0_N@Z"}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 1}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 1}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 1}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 1}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 1}
!49 = !{!50, !50, i64 0}
!50 = !{!"float", !29, i64 0}
!51 = !{!52, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67}
!52 = distinct !{!52, !53, !"\01?VHM_SampleNormal_Internal@@YA?AV?$vector@M$02@@UVHM_SampleContext@@MMAIAV1@1@Z: %tangentX"}
!53 = distinct !{!53, !"\01?VHM_SampleNormal_Internal@@YA?AV?$vector@M$02@@UVHM_SampleContext@@MMAIAV1@1@Z"}
!54 = distinct !{!54, !53, !"\01?VHM_SampleNormal_Internal@@YA?AV?$vector@M$02@@UVHM_SampleContext@@MMAIAV1@1@Z: %tangentY"}
!55 = distinct !{!55, !56, !"\01?VHM_SampleTangentFrameAtWorldPos@@YAXV?$vector@M$01@@MMAIAV?$vector@M$02@@11@Z: %tangentX"}
!56 = distinct !{!56, !"\01?VHM_SampleTangentFrameAtWorldPos@@YAXV?$vector@M$01@@MMAIAV?$vector@M$02@@11@Z"}
!57 = distinct !{!57, !56, !"\01?VHM_SampleTangentFrameAtWorldPos@@YAXV?$vector@M$01@@MMAIAV?$vector@M$02@@11@Z: %tangentY"}
!58 = distinct !{!58, !56, !"\01?VHM_SampleTangentFrameAtWorldPos@@YAXV?$vector@M$01@@MMAIAV?$vector@M$02@@11@Z: %normal"}
!59 = distinct !{!59, !60, !"\01?EstimateTangentFrameAtVTUVs@@YAXV?$Texture2D@V?$vector@M$03@@@@IV?$vector@M$01@@UPaddedUVs@@V2@MAIAV?$vector@M$02@@44@Z: %tangentX"}
!60 = distinct !{!60, !"\01?EstimateTangentFrameAtVTUVs@@YAXV?$Texture2D@V?$vector@M$03@@@@IV?$vector@M$01@@UPaddedUVs@@V2@MAIAV?$vector@M$02@@44@Z"}
!61 = distinct !{!61, !60, !"\01?EstimateTangentFrameAtVTUVs@@YAXV?$Texture2D@V?$vector@M$03@@@@IV?$vector@M$01@@UPaddedUVs@@V2@MAIAV?$vector@M$02@@44@Z: %tangentY"}
!62 = distinct !{!62, !60, !"\01?EstimateTangentFrameAtVTUVs@@YAXV?$Texture2D@V?$vector@M$03@@@@IV?$vector@M$01@@UPaddedUVs@@V2@MAIAV?$vector@M$02@@44@Z: %normal"}
!63 = distinct !{!63, !64, !"\01?ApplyDecalsAvt@@YAXUCompositeScratchContext@@UTerrainTileDataVT@@AIAV?$vector@M$03@@22@Z: %albedoMetalness"}
!64 = distinct !{!64, !"\01?ApplyDecalsAvt@@YAXUCompositeScratchContext@@UTerrainTileDataVT@@AIAV?$vector@M$03@@22@Z"}
!65 = distinct !{!65, !64, !"\01?ApplyDecalsAvt@@YAXUCompositeScratchContext@@UTerrainTileDataVT@@AIAV?$vector@M$03@@22@Z: %normalOcclusionGloss"}
!66 = distinct !{!66, !64, !"\01?ApplyDecalsAvt@@YAXUCompositeScratchContext@@UTerrainTileDataVT@@AIAV?$vector@M$03@@22@Z: %emissive"}
!67 = distinct !{!67, !68, !"\01?CompositeScratch_VolumeDecals@@YA_NIUCompositeScratchContext@@UCompositeScratchResults@@@Z: %results"}
!68 = distinct !{!68, !"\01?CompositeScratch_VolumeDecals@@YA_NIUCompositeScratchContext@@UCompositeScratchResults@@@Z"}
!69 = !{!59, !61, !62, !63, !65, !66, !67}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 2}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 2}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 2}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 1}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 2}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 1}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 2}

