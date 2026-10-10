;
; Note: shader requires additional functionality:
;       Typed UAV Load Additional Formats
;
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
; shader hash: 3ddd360c84acccf0e932bffeb28ba894
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

define void @cs_compose_volume_decals_to_scratch_with_cutout_ompv() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %11 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %12 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %13 = alloca [4 x i32], align 4
  %14 = alloca [4 x i32], align 4
  %15 = alloca [4 x i32], align 4
  %16 = alloca [4 x i32], align 4
  %17 = alloca [4 x i32], align 4
  %18 = alloca [4 x i32], align 4
  %19 = alloca [4 x i32], align 4
  %20 = alloca [4 x i32], align 4
  %21 = alloca [4 x float], align 4
  %22 = alloca [4 x float], align 4
  %23 = alloca [4 x float], align 4
  %24 = alloca [4 x float], align 4
  %25 = alloca [4 x float], align 4
  %26 = alloca [4 x float], align 4
  %27 = alloca [4 x float], align 4
  %28 = alloca [4 x i32], align 4
  %29 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %30 = extractvalue %dx.types.CBufRet.i32 %29, 3
  %31 = shl i32 %12, 3
  %32 = udiv i32 %31, %30
  %33 = lshr i32 %32, 1
  %34 = add nuw i32 %33, 253
  %35 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 %34)  ; CBufferLoadLegacy(handle,regIndex)
  %36 = extractvalue %dx.types.CBufRet.i32 %35, 0
  %37 = extractvalue %dx.types.CBufRet.i32 %35, 1
  %38 = extractvalue %dx.types.CBufRet.i32 %35, 2
  %39 = extractvalue %dx.types.CBufRet.i32 %35, 3
  %40 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 0
  store i32 %36, i32* %40, align 4
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 1
  store i32 %37, i32* %41, align 4
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 2
  store i32 %38, i32* %42, align 4
  %43 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 3
  store i32 %39, i32* %43, align 4
  %44 = shl i32 %32, 1
  %45 = and i32 %44, 2
  %46 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %45
  %47 = load i32, i32* %46, align 4, !tbaa !26, !noalias !30
  %48 = and i32 %47, 255
  %49 = or i32 %45, 1
  %50 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %49
  %51 = load i32, i32* %50, align 4, !tbaa !26, !noalias !30
  %52 = lshr i32 %47, 8
  %53 = urem i32 %10, %30
  %54 = add nuw nsw i32 %48, 198
  %55 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 %54)  ; CBufferLoadLegacy(handle,regIndex)
  %56 = extractvalue %dx.types.CBufRet.f32 %55, 0
  %57 = extractvalue %dx.types.CBufRet.f32 %55, 1
  %58 = extractvalue %dx.types.CBufRet.f32 %55, 2
  %59 = uitofp i32 %30 to float
  %60 = fdiv fast float %58, %59
  %61 = uitofp i32 %53 to float
  %62 = uitofp i32 %11 to float
  %63 = fmul fast float %60, %61
  %64 = fmul fast float %60, %62
  %65 = fadd fast float %63, %56
  %66 = fadd fast float %64, %57
  %67 = extractvalue %dx.types.CBufRet.f32 %55, 3
  %68 = mul i32 %48, %30
  %69 = add i32 %53, %68
  %70 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %71 = extractvalue %dx.types.CBufRet.f32 %70, 0
  %72 = extractvalue %dx.types.CBufRet.f32 %70, 1
  %73 = extractvalue %dx.types.CBufRet.f32 %70, 2
  %74 = fmul fast float %73, %65
  %75 = fmul fast float %73, %66
  %76 = fadd fast float %74, %71
  %77 = fadd fast float %75, %72
  %78 = extractvalue %dx.types.CBufRet.i32 %29, 1
  %79 = icmp eq i32 %78, 5
  %80 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 undef, i32 %69, i32 %11, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %81 = extractvalue %dx.types.ResRet.f32 %80, 0
  %82 = extractvalue %dx.types.ResRet.f32 %80, 1
  %83 = extractvalue %dx.types.ResRet.f32 %80, 2
  br i1 %79, label %93, label %84, !dx.controlflow.hints !37

; <label>:84                                      ; preds = %0
  %85 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 undef, i32 %69, i32 %11, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %86 = extractvalue %dx.types.ResRet.f32 %85, 0
  %87 = extractvalue %dx.types.ResRet.f32 %85, 1
  %88 = extractvalue %dx.types.ResRet.f32 %85, 2
  %89 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 undef, i32 %69, i32 %11, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %90 = extractvalue %dx.types.ResRet.f32 %89, 0
  %91 = extractvalue %dx.types.ResRet.f32 %89, 1
  %92 = extractvalue %dx.types.ResRet.f32 %89, 2
  br label %93

; <label>:93                                      ; preds = %84, %0
  %94 = phi float [ undef, %0 ], [ %86, %84 ]
  %95 = phi float [ undef, %0 ], [ %87, %84 ]
  %96 = phi float [ undef, %0 ], [ %88, %84 ]
  %97 = phi float [ undef, %0 ], [ %90, %84 ]
  %98 = phi float [ undef, %0 ], [ %91, %84 ]
  %99 = phi float [ undef, %0 ], [ %92, %84 ]
  %100 = fcmp fast ole float %81, 0x3FA4B5DCC0000000
  %101 = fmul fast float %81, 0x3FB3D07220000000
  %102 = fadd fast float %81, 0x3FAC28F5C0000000
  %103 = fmul fast float %102, 0x3FEE54EDE0000000
  %104 = call float @dx.op.unary.f32(i32 23, float %103)  ; Log(value)
  %105 = fmul fast float %104, 0x4003333340000000
  %106 = call float @dx.op.unary.f32(i32 21, float %105)  ; Exp(value)
  %107 = select i1 %100, float %101, float %106
  %108 = fcmp fast ole float %82, 0x3FA4B5DCC0000000
  %109 = fmul fast float %82, 0x3FB3D07220000000
  %110 = fadd fast float %82, 0x3FAC28F5C0000000
  %111 = fmul fast float %110, 0x3FEE54EDE0000000
  %112 = call float @dx.op.unary.f32(i32 23, float %111)  ; Log(value)
  %113 = fmul fast float %112, 0x4003333340000000
  %114 = call float @dx.op.unary.f32(i32 21, float %113)  ; Exp(value)
  %115 = select i1 %108, float %109, float %114
  %116 = fcmp fast ole float %83, 0x3FA4B5DCC0000000
  %117 = fmul fast float %83, 0x3FB3D07220000000
  %118 = fadd fast float %83, 0x3FAC28F5C0000000
  %119 = fmul fast float %118, 0x3FEE54EDE0000000
  %120 = call float @dx.op.unary.f32(i32 23, float %119)  ; Log(value)
  %121 = fmul fast float %120, 0x4003333340000000
  %122 = call float @dx.op.unary.f32(i32 21, float %121)  ; Exp(value)
  %123 = select i1 %116, float %117, float %122
  br i1 %79, label %133, label %124, !dx.controlflow.hints !38

; <label>:124                                     ; preds = %93
  switch i32 %78, label %133 [
    i32 1, label %125
    i32 2, label %126
    i32 3, label %132
  ], !dx.controlflow.hints !39

; <label>:125                                     ; preds = %124
  br label %133

; <label>:126                                     ; preds = %124
  %127 = fcmp fast une float %99, 0.000000e+00
  %128 = fmul fast float %99, 3.200000e+01
  %129 = fadd fast float %128, -1.600000e+01
  %130 = call float @dx.op.unary.f32(i32 21, float %129)  ; Exp(value)
  %131 = select i1 %127, float %130, float 0.000000e+00
  br label %133

; <label>:132                                     ; preds = %124
  br label %133

; <label>:133                                     ; preds = %132, %126, %125, %124, %93
  %134 = phi float [ 0.000000e+00, %124 ], [ %99, %132 ], [ 0.000000e+00, %126 ], [ 0.000000e+00, %125 ], [ 0.000000e+00, %93 ]
  %135 = phi float [ 0.000000e+00, %124 ], [ 0.000000e+00, %132 ], [ 0.000000e+00, %126 ], [ %99, %125 ], [ 0.000000e+00, %93 ]
  %136 = phi float [ 0.000000e+00, %124 ], [ 0.000000e+00, %132 ], [ %131, %126 ], [ 0.000000e+00, %125 ], [ 0.000000e+00, %93 ]
  %137 = phi float [ %98, %124 ], [ %98, %132 ], [ %98, %126 ], [ %98, %125 ], [ 0.000000e+00, %93 ]
  %138 = phi float [ %94, %124 ], [ %94, %132 ], [ %94, %126 ], [ %94, %125 ], [ 0.000000e+00, %93 ]
  %139 = phi float [ %96, %124 ], [ %96, %132 ], [ %96, %126 ], [ %96, %125 ], [ 0.000000e+00, %93 ]
  %140 = phi float [ %95, %124 ], [ %95, %132 ], [ %95, %126 ], [ %95, %125 ], [ 0.000000e+00, %93 ]
  %141 = phi float [ %97, %124 ], [ %97, %132 ], [ %97, %126 ], [ %97, %125 ], [ 0.000000e+00, %93 ]
  %142 = extractvalue %dx.types.CBufRet.i32 %29, 2
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %145, label %144, !dx.controlflow.hints !40

; <label>:144                                     ; preds = %133
  br label %309

; <label>:145                                     ; preds = %133
  br label %146

; <label>:146                                     ; preds = %303, %145
  %147 = phi i32 [ %304, %303 ], [ -1, %145 ]
  %148 = phi i32 [ %305, %303 ], [ 0, %145 ]
  %149 = phi float [ %306, %303 ], [ -1.000000e+09, %145 ]
  %150 = phi i32 [ %52, %303 ], [ %51, %145 ]
  %151 = phi i32 [ %307, %303 ], [ 0, %145 ]
  %152 = icmp eq i32 %150, 0
  br i1 %152, label %303, label %153

; <label>:153                                     ; preds = %146
  br label %154

; <label>:154                                     ; preds = %187, %153
  %155 = phi i32 [ %188, %187 ], [ %147, %153 ]
  %156 = phi i32 [ %189, %187 ], [ %148, %153 ]
  %157 = phi float [ %190, %187 ], [ %149, %153 ]
  %158 = phi i32 [ %163, %187 ], [ %150, %153 ]
  %159 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %158)  ; FirstbitLo(value)
  %160 = and i32 %159, 31
  %161 = shl i32 1, %160
  %162 = xor i32 %161, -1
  %163 = and i32 %158, %162
  %164 = shl i32 %151, 5
  %165 = add i32 %159, %164
  %166 = mul i32 %165, 3
  %167 = add i32 %166, 30
  %168 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 %167)  ; CBufferLoadLegacy(handle,regIndex)
  %169 = extractvalue %dx.types.CBufRet.i32 %168, 1
  %170 = bitcast i32 %169 to float
  %171 = extractvalue %dx.types.CBufRet.i32 %168, 2
  %172 = bitcast i32 %171 to float
  %173 = fsub fast float %76, %170
  %174 = fsub fast float %77, %172
  %175 = add i32 %166, 32
  %176 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 %175)  ; CBufferLoadLegacy(handle,regIndex)
  %177 = extractvalue %dx.types.CBufRet.i32 %176, 1
  %178 = and i32 %177, 1048575
  %179 = uitofp i32 %178 to float
  %180 = fcmp fast olt float %173, 0.000000e+00
  %181 = fcmp fast olt float %174, 0.000000e+00
  %182 = or i1 %180, %181
  %183 = fcmp fast ogt float %173, %179
  %184 = fcmp fast ogt float %174, %179
  %185 = or i1 %183, %184
  %186 = or i1 %182, %185
  br i1 %186, label %187, label %192, !dx.controlflow.hints !41

; <label>:187                                     ; preds = %301, %255, %253, %154
  %188 = phi i32 [ %155, %154 ], [ %194, %253 ], [ %165, %301 ], [ %194, %255 ]
  %189 = phi i32 [ %156, %154 ], [ %195, %253 ], [ %195, %301 ], [ %195, %255 ]
  %190 = phi float [ %157, %154 ], [ %157, %253 ], [ %299, %301 ], [ %157, %255 ]
  %191 = icmp eq i32 %163, 0
  br i1 %191, label %302, label %154

; <label>:192                                     ; preds = %154
  %193 = icmp ne i32 %156, 0
  %194 = select i1 %193, i32 %155, i32 %165
  %195 = select i1 %193, i32 %156, i32 1
  %196 = add i32 %166, 31
  %197 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 %196)  ; CBufferLoadLegacy(handle,regIndex)
  %198 = extractvalue %dx.types.CBufRet.i32 %197, 2
  %199 = and i32 %198, 134217728
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %252, label %201, !dx.controlflow.hints !42

; <label>:201                                     ; preds = %192
  %202 = and i32 %198, 16777215
  %203 = add i32 %202, 0
  %204 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %203, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %205 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 %167)  ; CBufferLoadLegacy(handle,regIndex)
  %206 = extractvalue %dx.types.CBufRet.i32 %205, 1
  %207 = bitcast i32 %206 to float
  %208 = extractvalue %dx.types.CBufRet.i32 %205, 2
  %209 = bitcast i32 %208 to float
  %210 = fsub fast float %76, %207
  %211 = fsub fast float %77, %209
  %212 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 %175)  ; CBufferLoadLegacy(handle,regIndex)
  %213 = extractvalue %dx.types.CBufRet.i32 %212, 1
  %214 = and i32 %213, 1048575
  %215 = uitofp i32 %214 to float
  %216 = fdiv fast float %210, %215
  %217 = fdiv fast float %211, %215
  %218 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 %196)  ; CBufferLoadLegacy(handle,regIndex)
  %219 = extractvalue %dx.types.CBufRet.i32 %218, 2
  %220 = lshr i32 %219, 24
  %221 = and i32 %220, 7
  %222 = or i32 %221, 8
  %223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 %222)  ; CBufferLoadLegacy(handle,regIndex)
  %224 = extractvalue %dx.types.CBufRet.f32 %223, 0
  %225 = extractvalue %dx.types.CBufRet.f32 %223, 2
  %226 = fdiv fast float 5.000000e-01, %224
  %227 = fmul fast float %226, 2.000000e+00
  %228 = fsub fast float 1.000000e+00, %227
  %229 = fmul fast float %228, %216
  %230 = fmul fast float %228, %217
  %231 = fadd fast float %229, %226
  %232 = fadd fast float %230, %226
  %233 = fmul fast float %224, %225
  %234 = fmul fast float %233, %231
  %235 = fmul fast float %233, %232
  %236 = fadd fast float %234, -5.000000e-01
  %237 = fadd fast float %235, -5.000000e-01
  %238 = fptoui float %236 to i32
  %239 = fptoui float %237 to i32
  %240 = lshr i32 %238, 3
  %241 = lshr i32 %239, 2
  %242 = shl nuw i32 %240, 3
  %243 = sub i32 %238, %242
  %244 = shl i32 %239, 3
  %245 = add i32 %244, %243
  %246 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %204, i32 0, i32 %240, i32 %241, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %247 = extractvalue %dx.types.ResRet.i32 %246, 0
  %248 = and i32 %245, 31
  %249 = shl i32 1, %248
  %250 = and i32 %249, %247
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %253, label %252, !dx.controlflow.hints !43

; <label>:252                                     ; preds = %201, %192
  br label %253

; <label>:253                                     ; preds = %252, %201
  %254 = phi i1 [ false, %252 ], [ true, %201 ]
  br i1 %254, label %187, label %255, !dx.controlflow.hints !44

; <label>:255                                     ; preds = %253
  %256 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 %167)  ; CBufferLoadLegacy(handle,regIndex)
  %257 = extractvalue %dx.types.CBufRet.i32 %256, 1
  %258 = bitcast i32 %257 to float
  %259 = extractvalue %dx.types.CBufRet.i32 %256, 2
  %260 = bitcast i32 %259 to float
  %261 = fsub fast float %76, %258
  %262 = fsub fast float %77, %260
  %263 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 %175)  ; CBufferLoadLegacy(handle,regIndex)
  %264 = extractvalue %dx.types.CBufRet.i32 %263, 1
  %265 = and i32 %264, 1048575
  %266 = uitofp i32 %265 to float
  %267 = fdiv fast float %261, %266
  %268 = fdiv fast float %262, %266
  %269 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 %196)  ; CBufferLoadLegacy(handle,regIndex)
  %270 = extractvalue %dx.types.CBufRet.i32 %269, 2
  %271 = lshr i32 %270, 24
  %272 = and i32 %271, 7
  %273 = or i32 %272, 8
  %274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 %273)  ; CBufferLoadLegacy(handle,regIndex)
  %275 = extractvalue %dx.types.CBufRet.f32 %274, 0
  %276 = extractvalue %dx.types.CBufRet.f32 %274, 2
  %277 = fdiv fast float 5.000000e-01, %275
  %278 = fmul fast float %277, 2.000000e+00
  %279 = fsub fast float 1.000000e+00, %278
  %280 = fmul fast float %279, %267
  %281 = fmul fast float %279, %268
  %282 = fadd fast float %280, %277
  %283 = fadd fast float %281, %277
  %284 = fmul fast float %282, %276
  %285 = fmul fast float %283, %276
  %286 = extractvalue %dx.types.CBufRet.i32 %269, 1
  %287 = and i32 %286, 16777215
  %288 = add i32 %287, 0
  %289 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %288, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %290 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 %167)  ; CBufferLoadLegacy(handle,regIndex)
  %291 = extractvalue %dx.types.CBufRet.i32 %290, 3
  %292 = bitcast i32 %291 to float
  %293 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 %196)  ; CBufferLoadLegacy(handle,regIndex)
  %294 = extractvalue %dx.types.CBufRet.i32 %293, 0
  %295 = bitcast i32 %294 to float
  %296 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %289, %dx.types.Handle %8, float %284, float %285, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %297 = extractvalue %dx.types.ResRet.f32 %296, 0
  %298 = fmul fast float %297, %295
  %299 = fadd fast float %298, %292
  %300 = fcmp fast ogt float %299, %157
  br i1 %300, label %301, label %187, !dx.controlflow.hints !45

; <label>:301                                     ; preds = %255
  br label %187

; <label>:302                                     ; preds = %187
  br label %303

; <label>:303                                     ; preds = %302, %146
  %304 = phi i32 [ %147, %146 ], [ %188, %302 ]
  %305 = phi i32 [ %148, %146 ], [ %189, %302 ]
  %306 = phi float [ %149, %146 ], [ %190, %302 ]
  %307 = add nuw nsw i32 %151, 1
  %308 = icmp eq i32 %307, 2
  br i1 %308, label %414, label %146

; <label>:309                                     ; preds = %410, %144
  %310 = phi i32 [ %411, %410 ], [ -1, %144 ]
  %311 = phi i32 [ %52, %410 ], [ %51, %144 ]
  %312 = phi i32 [ %412, %410 ], [ 0, %144 ]
  %313 = icmp eq i32 %311, 0
  br i1 %313, label %410, label %314

; <label>:314                                     ; preds = %309
  br label %315

; <label>:315                                     ; preds = %346, %314
  %316 = phi i32 [ %347, %346 ], [ %310, %314 ]
  %317 = phi i32 [ %322, %346 ], [ %311, %314 ]
  %318 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %317)  ; FirstbitLo(value)
  %319 = and i32 %318, 31
  %320 = shl i32 1, %319
  %321 = xor i32 %320, -1
  %322 = and i32 %317, %321
  %323 = shl i32 %312, 5
  %324 = add i32 %318, %323
  %325 = mul i32 %324, 3
  %326 = add i32 %325, 30
  %327 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 %326)  ; CBufferLoadLegacy(handle,regIndex)
  %328 = extractvalue %dx.types.CBufRet.i32 %327, 1
  %329 = bitcast i32 %328 to float
  %330 = extractvalue %dx.types.CBufRet.i32 %327, 2
  %331 = bitcast i32 %330 to float
  %332 = fsub fast float %76, %329
  %333 = fsub fast float %77, %331
  %334 = add i32 %325, 32
  %335 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 %334)  ; CBufferLoadLegacy(handle,regIndex)
  %336 = extractvalue %dx.types.CBufRet.i32 %335, 1
  %337 = and i32 %336, 1048575
  %338 = uitofp i32 %337 to float
  %339 = fcmp fast olt float %332, 0.000000e+00
  %340 = fcmp fast olt float %333, 0.000000e+00
  %341 = or i1 %339, %340
  %342 = fcmp fast ogt float %332, %338
  %343 = fcmp fast ogt float %333, %338
  %344 = or i1 %342, %343
  %345 = or i1 %341, %344
  br i1 %345, label %346, label %349, !dx.controlflow.hints !46

; <label>:346                                     ; preds = %407, %315
  %347 = phi i32 [ %316, %315 ], [ %324, %407 ]
  %348 = icmp eq i32 %322, 0
  br i1 %348, label %409, label %315

; <label>:349                                     ; preds = %315
  %350 = add i32 %325, 31
  %351 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 %350)  ; CBufferLoadLegacy(handle,regIndex)
  %352 = extractvalue %dx.types.CBufRet.i32 %351, 2
  %353 = and i32 %352, 134217728
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %406, label %355, !dx.controlflow.hints !42

; <label>:355                                     ; preds = %349
  %356 = and i32 %352, 16777215
  %357 = add i32 %356, 0
  %358 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %357, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %359 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 %326)  ; CBufferLoadLegacy(handle,regIndex)
  %360 = extractvalue %dx.types.CBufRet.i32 %359, 1
  %361 = bitcast i32 %360 to float
  %362 = extractvalue %dx.types.CBufRet.i32 %359, 2
  %363 = bitcast i32 %362 to float
  %364 = fsub fast float %76, %361
  %365 = fsub fast float %77, %363
  %366 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 %334)  ; CBufferLoadLegacy(handle,regIndex)
  %367 = extractvalue %dx.types.CBufRet.i32 %366, 1
  %368 = and i32 %367, 1048575
  %369 = uitofp i32 %368 to float
  %370 = fdiv fast float %364, %369
  %371 = fdiv fast float %365, %369
  %372 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 %350)  ; CBufferLoadLegacy(handle,regIndex)
  %373 = extractvalue %dx.types.CBufRet.i32 %372, 2
  %374 = lshr i32 %373, 24
  %375 = and i32 %374, 7
  %376 = or i32 %375, 8
  %377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 %376)  ; CBufferLoadLegacy(handle,regIndex)
  %378 = extractvalue %dx.types.CBufRet.f32 %377, 0
  %379 = extractvalue %dx.types.CBufRet.f32 %377, 2
  %380 = fdiv fast float 5.000000e-01, %378
  %381 = fmul fast float %380, 2.000000e+00
  %382 = fsub fast float 1.000000e+00, %381
  %383 = fmul fast float %382, %370
  %384 = fmul fast float %382, %371
  %385 = fadd fast float %383, %380
  %386 = fadd fast float %384, %380
  %387 = fmul fast float %378, %379
  %388 = fmul fast float %387, %385
  %389 = fmul fast float %387, %386
  %390 = fadd fast float %388, -5.000000e-01
  %391 = fadd fast float %389, -5.000000e-01
  %392 = fptoui float %390 to i32
  %393 = fptoui float %391 to i32
  %394 = lshr i32 %392, 3
  %395 = lshr i32 %393, 2
  %396 = shl nuw i32 %394, 3
  %397 = sub i32 %392, %396
  %398 = shl i32 %393, 3
  %399 = add i32 %398, %397
  %400 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %358, i32 0, i32 %394, i32 %395, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %401 = extractvalue %dx.types.ResRet.i32 %400, 0
  %402 = and i32 %399, 31
  %403 = shl i32 1, %402
  %404 = and i32 %403, %401
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %407, label %406, !dx.controlflow.hints !43

; <label>:406                                     ; preds = %355, %349
  br label %407

; <label>:407                                     ; preds = %406, %355
  %408 = phi i1 [ false, %406 ], [ true, %355 ]
  br i1 %408, label %346, label %415, !dx.controlflow.hints !47

; <label>:409                                     ; preds = %346
  br label %410

; <label>:410                                     ; preds = %409, %309
  %411 = phi i32 [ %310, %309 ], [ %347, %409 ]
  %412 = add nuw nsw i32 %312, 1
  %413 = icmp ult i32 %412, 2
  br i1 %413, label %309, label %416

; <label>:414                                     ; preds = %303
  br label %417

; <label>:415                                     ; preds = %407
  br label %417

; <label>:416                                     ; preds = %410
  br label %417

; <label>:417                                     ; preds = %416, %415, %414
  %418 = phi i32 [ %304, %414 ], [ %324, %415 ], [ %411, %416 ]
  %419 = icmp ne i32 %418, -1
  br i1 %419, label %420, label %1408, !dx.controlflow.hints !48

; <label>:420                                     ; preds = %417
  %421 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 22)  ; CBufferLoadLegacy(handle,regIndex)
  %422 = extractvalue %dx.types.CBufRet.i32 %421, 2
  %423 = icmp eq i32 %422, 0
  br i1 %423, label %1408, label %424, !dx.controlflow.hints !49

; <label>:424                                     ; preds = %420
  %425 = mul i32 %418, 3
  %426 = add i32 %425, 30
  %427 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 %426)  ; CBufferLoadLegacy(handle,regIndex)
  %428 = extractvalue %dx.types.CBufRet.i32 %427, 1
  %429 = bitcast i32 %428 to float
  %430 = extractvalue %dx.types.CBufRet.i32 %427, 2
  %431 = bitcast i32 %430 to float
  %432 = fsub fast float %76, %429
  %433 = fsub fast float %77, %431
  %434 = add i32 %425, 32
  %435 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 %434)  ; CBufferLoadLegacy(handle,regIndex)
  %436 = extractvalue %dx.types.CBufRet.i32 %435, 1
  %437 = and i32 %436, 1048575
  %438 = uitofp i32 %437 to float
  %439 = fdiv fast float %432, %438
  %440 = fdiv fast float %433, %438
  %441 = add i32 %425, 31
  %442 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 %441)  ; CBufferLoadLegacy(handle,regIndex)
  %443 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %444 = extractvalue %dx.types.CBufRet.i32 %443, 3
  %445 = icmp eq i32 %444, 0
  br i1 %445, label %446, label %462, !dx.controlflow.hints !50

; <label>:446                                     ; preds = %424
  %447 = extractvalue %dx.types.CBufRet.i32 %442, 2
  %448 = lshr i32 %447, 24
  %449 = and i32 %448, 7
  %450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 %449)  ; CBufferLoadLegacy(handle,regIndex)
  %451 = extractvalue %dx.types.CBufRet.f32 %450, 0
  %452 = extractvalue %dx.types.CBufRet.f32 %450, 2
  %453 = fdiv fast float 5.000000e-01, %451
  %454 = fmul fast float %453, 2.000000e+00
  %455 = fsub fast float 1.000000e+00, %454
  %456 = fmul fast float %455, %439
  %457 = fmul fast float %455, %440
  %458 = fadd fast float %456, %453
  %459 = fadd fast float %457, %453
  %460 = fmul fast float %458, %452
  %461 = fmul fast float %459, %452
  br label %462

; <label>:462                                     ; preds = %446, %424
  %463 = phi float [ %460, %446 ], [ %439, %424 ]
  %464 = phi float [ %461, %446 ], [ %440, %424 ]
  %465 = extractvalue %dx.types.CBufRet.i32 %442, 1
  %466 = and i32 %465, 16777215
  %467 = add i32 %466, 0
  %468 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %467, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %469 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 %426)  ; CBufferLoadLegacy(handle,regIndex)
  %470 = extractvalue %dx.types.CBufRet.i32 %469, 3
  %471 = bitcast i32 %470 to float
  %472 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 %441)  ; CBufferLoadLegacy(handle,regIndex)
  %473 = extractvalue %dx.types.CBufRet.i32 %472, 0
  %474 = bitcast i32 %473 to float
  %475 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %468, %dx.types.Handle %8, float %463, float %464, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %476 = extractvalue %dx.types.ResRet.f32 %475, 0
  %477 = fmul fast float %476, %474
  %478 = fadd fast float %477, %471
  %479 = extractvalue %dx.types.CBufRet.i32 %472, 2
  %480 = lshr i32 %479, 24
  %481 = and i32 %480, 7
  %482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 %481)  ; CBufferLoadLegacy(handle,regIndex)
  %483 = extractvalue %dx.types.CBufRet.f32 %482, 0
  %484 = fptoui float %483 to i32
  %485 = extractvalue %dx.types.CBufRet.i32 %472, 1
  %486 = and i32 %485, 16777215
  %487 = add i32 %486, 0
  %488 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %487, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %489 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 %434)  ; CBufferLoadLegacy(handle,regIndex)
  %490 = extractvalue %dx.types.CBufRet.i32 %489, 1
  %491 = and i32 %490, 1048575
  %492 = uitofp i32 %491 to float
  %493 = uitofp i32 %484 to float
  %494 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 %426)  ; CBufferLoadLegacy(handle,regIndex)
  %495 = extractvalue %dx.types.CBufRet.i32 %494, 3
  %496 = bitcast i32 %495 to float
  %497 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 %441)  ; CBufferLoadLegacy(handle,regIndex)
  %498 = extractvalue %dx.types.CBufRet.i32 %497, 0
  %499 = bitcast i32 %498 to float
  %500 = fdiv fast float 1.000000e+00, %493
  %501 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %502 = extractvalue %dx.types.CBufRet.i32 %501, 3
  %503 = icmp eq i32 %502, 0
  br i1 %503, label %830, label %504, !dx.controlflow.hints !51

; <label>:504                                     ; preds = %462
  %505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %506 = extractvalue %dx.types.CBufRet.f32 %505, 2
  %507 = extractvalue %dx.types.CBufRet.f32 %505, 3
  %508 = fmul fast float %506, %463
  %509 = fmul fast float %507, %464
  %510 = extractvalue %dx.types.CBufRet.f32 %505, 0
  %511 = extractvalue %dx.types.CBufRet.f32 %505, 1
  %512 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %513 = extractvalue %dx.types.CBufRet.i32 %512, 0
  %514 = extractvalue %dx.types.CBufRet.i32 %512, 1
  %515 = extractvalue %dx.types.CBufRet.i32 %512, 2
  %516 = extractvalue %dx.types.CBufRet.i32 %512, 3
  %517 = mul i32 %515, %515
  %518 = fadd fast float %506, 0xBF847AE140000000
  %519 = fadd fast float %507, 0xBF847AE140000000
  %520 = call float @dx.op.binary.f32(i32 35, float %508, float 0.000000e+00)  ; FMax(a,b)
  %521 = call float @dx.op.binary.f32(i32 35, float %509, float 0.000000e+00)  ; FMax(a,b)
  %522 = call float @dx.op.binary.f32(i32 36, float %520, float %518)  ; FMin(a,b)
  %523 = call float @dx.op.binary.f32(i32 36, float %521, float %519)  ; FMin(a,b)
  %524 = fdiv fast float %522, %510
  %525 = fdiv fast float %523, %511
  %526 = fptoui float %524 to i32
  %527 = fptoui float %525 to i32
  %528 = mul i32 %527, %513
  %529 = add i32 %528, %526
  %530 = lshr i32 %529, 1
  %531 = shl i32 %530, 2
  %532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %531, i32 undef)  ; BufferLoad(srv,index,wot)
  %533 = extractvalue %dx.types.ResRet.i32 %532, 0
  %534 = shl i32 %529, 4
  %535 = and i32 %534, 16
  %536 = lshr i32 %533, %535
  %537 = and i32 %536, 255
  %538 = lshr i32 %536, 8
  %539 = and i32 %538, 31
  %540 = shl i32 1, %539
  %541 = uitofp i32 %540 to float
  %542 = fmul fast float %541, %522
  %543 = fdiv fast float %542, %506
  %544 = fmul fast float %541, %523
  %545 = fdiv fast float %544, %507
  %546 = call float @dx.op.unary.f32(i32 22, float %543)  ; Frc(value)
  %547 = call float @dx.op.unary.f32(i32 22, float %545)  ; Frc(value)
  %548 = uitofp i32 %514 to float
  %549 = fmul fast float %546, %548
  %550 = fmul fast float %547, %548
  %551 = uitofp i32 %516 to float
  %552 = fadd fast float %549, %551
  %553 = fadd fast float %550, %551
  %554 = mul i32 %517, %537
  %555 = fadd fast float %552, -1.000000e+00
  %556 = fadd fast float %553, -1.000000e+00
  %557 = call float @dx.op.unary.f32(i32 22, float %555)  ; Frc(value)
  %558 = fptoui float %555 to i32
  %559 = fptoui float %553 to i32
  %560 = getelementptr [4 x i32], [4 x i32]* %17, i32 0, i32 0
  %561 = getelementptr [4 x i32], [4 x i32]* %18, i32 0, i32 0
  store i32 %558, i32* %560, align 4
  store i32 %559, i32* %561, align 4
  %562 = add i32 %558, 1
  %563 = getelementptr [4 x i32], [4 x i32]* %17, i32 0, i32 1
  %564 = getelementptr [4 x i32], [4 x i32]* %18, i32 0, i32 1
  store i32 %562, i32* %563, align 4
  store i32 %559, i32* %564, align 4
  %565 = add i32 %559, 1
  %566 = getelementptr [4 x i32], [4 x i32]* %17, i32 0, i32 2
  %567 = getelementptr [4 x i32], [4 x i32]* %18, i32 0, i32 2
  store i32 %558, i32* %566, align 4
  store i32 %565, i32* %567, align 4
  %568 = getelementptr [4 x i32], [4 x i32]* %17, i32 0, i32 3
  %569 = getelementptr [4 x i32], [4 x i32]* %18, i32 0, i32 3
  store i32 %562, i32* %568, align 4
  store i32 %565, i32* %569, align 4
  %570 = add i32 %515, -1
  br label %571

; <label>:571                                     ; preds = %594, %504
  %572 = phi i32 [ %559, %504 ], [ %598, %594 ]
  %573 = phi i32 [ %558, %504 ], [ %596, %594 ]
  %574 = phi i32 [ 0, %504 ], [ %592, %594 ]
  %575 = call i32 @dx.op.binary.i32(i32 40, i32 %573, i32 %570)  ; UMin(a,b)
  %576 = call i32 @dx.op.binary.i32(i32 40, i32 %572, i32 %570)  ; UMin(a,b)
  %577 = mul i32 %576, %515
  %578 = add i32 %575, %554
  %579 = add i32 %578, %577
  %580 = lshr i32 %579, 1
  %581 = shl i32 %580, 2
  %582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %581, i32 undef)  ; BufferLoad(srv,index,wot)
  %583 = extractvalue %dx.types.ResRet.i32 %582, 0
  %584 = shl i32 %579, 4
  %585 = and i32 %584, 16
  %586 = lshr i32 %583, %585
  %587 = and i32 %586, 65535
  %588 = uitofp i32 %587 to float
  %589 = fmul fast float %588, 0x3EF0002000000000
  %590 = call float @dx.op.unary.f32(i32 7, float %589)  ; Saturate(value)
  %591 = getelementptr inbounds [4 x float], [4 x float]* %26, i32 0, i32 %574
  store float %590, float* %591, align 4, !tbaa !52, !noalias !54
  %592 = add nuw nsw i32 %574, 1
  %593 = icmp eq i32 %592, 4
  br i1 %593, label %599, label %594

; <label>:594                                     ; preds = %571
  %595 = getelementptr [4 x i32], [4 x i32]* %17, i32 0, i32 %592
  %596 = load i32, i32* %595, align 4
  %597 = getelementptr [4 x i32], [4 x i32]* %18, i32 0, i32 %592
  %598 = load i32, i32* %597, align 4
  br label %571

; <label>:599                                     ; preds = %571
  %600 = fadd fast float %552, 1.000000e+00
  %601 = fadd fast float %553, 1.000000e+00
  %602 = call float @dx.op.unary.f32(i32 22, float %553)  ; Frc(value)
  %603 = fsub fast float 1.000000e+00, %557
  %604 = getelementptr inbounds [4 x float], [4 x float]* %26, i32 0, i32 0
  %605 = load float, float* %604, align 4, !tbaa !52, !noalias !54
  %606 = fmul fast float %605, %603
  %607 = getelementptr inbounds [4 x float], [4 x float]* %26, i32 0, i32 1
  %608 = load float, float* %607, align 4, !tbaa !52, !noalias !54
  %609 = fmul fast float %608, %557
  %610 = fadd fast float %609, %606
  %611 = getelementptr inbounds [4 x float], [4 x float]* %26, i32 0, i32 2
  %612 = load float, float* %611, align 4, !tbaa !52, !noalias !54
  %613 = getelementptr inbounds [4 x float], [4 x float]* %26, i32 0, i32 3
  %614 = load float, float* %613, align 4, !tbaa !52, !noalias !54
  %615 = fmul fast float %614, %557
  %616 = fsub fast float 1.000000e+00, %602
  %617 = fmul fast float %610, %616
  %618 = call float @dx.op.unary.f32(i32 22, float %600)  ; Frc(value)
  %619 = fptoui float %600 to i32
  %620 = getelementptr [4 x i32], [4 x i32]* %15, i32 0, i32 0
  %621 = getelementptr [4 x i32], [4 x i32]* %16, i32 0, i32 0
  store i32 %619, i32* %620, align 4
  store i32 %559, i32* %621, align 4
  %622 = add i32 %619, 1
  %623 = getelementptr [4 x i32], [4 x i32]* %15, i32 0, i32 1
  %624 = getelementptr [4 x i32], [4 x i32]* %16, i32 0, i32 1
  store i32 %622, i32* %623, align 4
  store i32 %559, i32* %624, align 4
  %625 = getelementptr [4 x i32], [4 x i32]* %15, i32 0, i32 2
  %626 = getelementptr [4 x i32], [4 x i32]* %16, i32 0, i32 2
  store i32 %619, i32* %625, align 4
  store i32 %565, i32* %626, align 4
  %627 = getelementptr [4 x i32], [4 x i32]* %15, i32 0, i32 3
  %628 = getelementptr [4 x i32], [4 x i32]* %16, i32 0, i32 3
  store i32 %622, i32* %627, align 4
  store i32 %565, i32* %628, align 4
  br label %629

; <label>:629                                     ; preds = %652, %599
  %630 = phi i32 [ %559, %599 ], [ %656, %652 ]
  %631 = phi i32 [ %619, %599 ], [ %654, %652 ]
  %632 = phi i32 [ 0, %599 ], [ %650, %652 ]
  %633 = call i32 @dx.op.binary.i32(i32 40, i32 %631, i32 %570)  ; UMin(a,b)
  %634 = call i32 @dx.op.binary.i32(i32 40, i32 %630, i32 %570)  ; UMin(a,b)
  %635 = mul i32 %634, %515
  %636 = add i32 %633, %554
  %637 = add i32 %636, %635
  %638 = lshr i32 %637, 1
  %639 = shl i32 %638, 2
  %640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %639, i32 undef)  ; BufferLoad(srv,index,wot)
  %641 = extractvalue %dx.types.ResRet.i32 %640, 0
  %642 = shl i32 %637, 4
  %643 = and i32 %642, 16
  %644 = lshr i32 %641, %643
  %645 = and i32 %644, 65535
  %646 = uitofp i32 %645 to float
  %647 = fmul fast float %646, 0x3EF0002000000000
  %648 = call float @dx.op.unary.f32(i32 7, float %647)  ; Saturate(value)
  %649 = getelementptr inbounds [4 x float], [4 x float]* %25, i32 0, i32 %632
  store float %648, float* %649, align 4, !tbaa !52, !noalias !54
  %650 = add nuw nsw i32 %632, 1
  %651 = icmp eq i32 %650, 4
  br i1 %651, label %657, label %652

; <label>:652                                     ; preds = %629
  %653 = getelementptr [4 x i32], [4 x i32]* %15, i32 0, i32 %650
  %654 = load i32, i32* %653, align 4
  %655 = getelementptr [4 x i32], [4 x i32]* %16, i32 0, i32 %650
  %656 = load i32, i32* %655, align 4
  br label %629

; <label>:657                                     ; preds = %629
  %658 = fmul fast float %612, %603
  %659 = fadd fast float %615, %658
  %660 = fmul fast float %659, %602
  %661 = fsub fast float 1.000000e+00, %618
  %662 = getelementptr inbounds [4 x float], [4 x float]* %25, i32 0, i32 0
  %663 = load float, float* %662, align 4, !tbaa !52, !noalias !54
  %664 = fmul fast float %663, %661
  %665 = getelementptr inbounds [4 x float], [4 x float]* %25, i32 0, i32 1
  %666 = load float, float* %665, align 4, !tbaa !52, !noalias !54
  %667 = fmul fast float %666, %618
  %668 = fadd fast float %667, %664
  %669 = getelementptr inbounds [4 x float], [4 x float]* %25, i32 0, i32 2
  %670 = load float, float* %669, align 4, !tbaa !52, !noalias !54
  %671 = getelementptr inbounds [4 x float], [4 x float]* %25, i32 0, i32 3
  %672 = load float, float* %671, align 4, !tbaa !52, !noalias !54
  %673 = fmul fast float %672, %618
  %674 = fmul fast float %668, %616
  %675 = call float @dx.op.unary.f32(i32 22, float %552)  ; Frc(value)
  %676 = fptoui float %552 to i32
  %677 = fptoui float %556 to i32
  %678 = getelementptr [4 x i32], [4 x i32]* %19, i32 0, i32 0
  %679 = getelementptr [4 x i32], [4 x i32]* %20, i32 0, i32 0
  store i32 %676, i32* %678, align 4
  store i32 %677, i32* %679, align 4
  %680 = add i32 %676, 1
  %681 = getelementptr [4 x i32], [4 x i32]* %19, i32 0, i32 1
  %682 = getelementptr [4 x i32], [4 x i32]* %20, i32 0, i32 1
  store i32 %680, i32* %681, align 4
  store i32 %677, i32* %682, align 4
  %683 = add i32 %677, 1
  %684 = getelementptr [4 x i32], [4 x i32]* %19, i32 0, i32 2
  %685 = getelementptr [4 x i32], [4 x i32]* %20, i32 0, i32 2
  store i32 %676, i32* %684, align 4
  store i32 %683, i32* %685, align 4
  %686 = getelementptr [4 x i32], [4 x i32]* %19, i32 0, i32 3
  %687 = getelementptr [4 x i32], [4 x i32]* %20, i32 0, i32 3
  store i32 %680, i32* %686, align 4
  store i32 %683, i32* %687, align 4
  br label %688

; <label>:688                                     ; preds = %711, %657
  %689 = phi i32 [ %677, %657 ], [ %715, %711 ]
  %690 = phi i32 [ %676, %657 ], [ %713, %711 ]
  %691 = phi i32 [ 0, %657 ], [ %709, %711 ]
  %692 = call i32 @dx.op.binary.i32(i32 40, i32 %690, i32 %570)  ; UMin(a,b)
  %693 = call i32 @dx.op.binary.i32(i32 40, i32 %689, i32 %570)  ; UMin(a,b)
  %694 = mul i32 %693, %515
  %695 = add i32 %692, %554
  %696 = add i32 %695, %694
  %697 = lshr i32 %696, 1
  %698 = shl i32 %697, 2
  %699 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %698, i32 undef)  ; BufferLoad(srv,index,wot)
  %700 = extractvalue %dx.types.ResRet.i32 %699, 0
  %701 = shl i32 %696, 4
  %702 = and i32 %701, 16
  %703 = lshr i32 %700, %702
  %704 = and i32 %703, 65535
  %705 = uitofp i32 %704 to float
  %706 = fmul fast float %705, 0x3EF0002000000000
  %707 = call float @dx.op.unary.f32(i32 7, float %706)  ; Saturate(value)
  %708 = getelementptr inbounds [4 x float], [4 x float]* %24, i32 0, i32 %691
  store float %707, float* %708, align 4, !tbaa !52, !noalias !54
  %709 = add nuw nsw i32 %691, 1
  %710 = icmp eq i32 %709, 4
  br i1 %710, label %716, label %711

; <label>:711                                     ; preds = %688
  %712 = getelementptr [4 x i32], [4 x i32]* %19, i32 0, i32 %709
  %713 = load i32, i32* %712, align 4
  %714 = getelementptr [4 x i32], [4 x i32]* %20, i32 0, i32 %709
  %715 = load i32, i32* %714, align 4
  br label %688

; <label>:716                                     ; preds = %688
  %717 = fmul fast float %670, %661
  %718 = fadd fast float %673, %717
  %719 = fmul fast float %718, %602
  %720 = call float @dx.op.unary.f32(i32 22, float %556)  ; Frc(value)
  %721 = fsub fast float 1.000000e+00, %675
  %722 = getelementptr inbounds [4 x float], [4 x float]* %24, i32 0, i32 0
  %723 = load float, float* %722, align 4, !tbaa !52, !noalias !54
  %724 = fmul fast float %723, %721
  %725 = getelementptr inbounds [4 x float], [4 x float]* %24, i32 0, i32 1
  %726 = load float, float* %725, align 4, !tbaa !52, !noalias !54
  %727 = fmul fast float %726, %675
  %728 = fadd fast float %727, %724
  %729 = getelementptr inbounds [4 x float], [4 x float]* %24, i32 0, i32 2
  %730 = load float, float* %729, align 4, !tbaa !52, !noalias !54
  %731 = getelementptr inbounds [4 x float], [4 x float]* %24, i32 0, i32 3
  %732 = load float, float* %731, align 4, !tbaa !52, !noalias !54
  %733 = fmul fast float %732, %675
  %734 = fsub fast float 1.000000e+00, %720
  %735 = fmul fast float %728, %734
  %736 = fptoui float %601 to i32
  %737 = getelementptr [4 x i32], [4 x i32]* %13, i32 0, i32 0
  %738 = getelementptr [4 x i32], [4 x i32]* %14, i32 0, i32 0
  store i32 %676, i32* %737, align 4
  store i32 %736, i32* %738, align 4
  %739 = getelementptr [4 x i32], [4 x i32]* %13, i32 0, i32 1
  %740 = getelementptr [4 x i32], [4 x i32]* %14, i32 0, i32 1
  store i32 %680, i32* %739, align 4
  store i32 %736, i32* %740, align 4
  %741 = add i32 %736, 1
  %742 = getelementptr [4 x i32], [4 x i32]* %13, i32 0, i32 2
  %743 = getelementptr [4 x i32], [4 x i32]* %14, i32 0, i32 2
  store i32 %676, i32* %742, align 4
  store i32 %741, i32* %743, align 4
  %744 = getelementptr [4 x i32], [4 x i32]* %13, i32 0, i32 3
  %745 = getelementptr [4 x i32], [4 x i32]* %14, i32 0, i32 3
  store i32 %680, i32* %744, align 4
  store i32 %741, i32* %745, align 4
  br label %746

; <label>:746                                     ; preds = %769, %716
  %747 = phi i32 [ %736, %716 ], [ %773, %769 ]
  %748 = phi i32 [ %676, %716 ], [ %771, %769 ]
  %749 = phi i32 [ 0, %716 ], [ %767, %769 ]
  %750 = call i32 @dx.op.binary.i32(i32 40, i32 %748, i32 %570)  ; UMin(a,b)
  %751 = call i32 @dx.op.binary.i32(i32 40, i32 %747, i32 %570)  ; UMin(a,b)
  %752 = mul i32 %751, %515
  %753 = add i32 %750, %554
  %754 = add i32 %753, %752
  %755 = lshr i32 %754, 1
  %756 = shl i32 %755, 2
  %757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %756, i32 undef)  ; BufferLoad(srv,index,wot)
  %758 = extractvalue %dx.types.ResRet.i32 %757, 0
  %759 = shl i32 %754, 4
  %760 = and i32 %759, 16
  %761 = lshr i32 %758, %760
  %762 = and i32 %761, 65535
  %763 = uitofp i32 %762 to float
  %764 = fmul fast float %763, 0x3EF0002000000000
  %765 = call float @dx.op.unary.f32(i32 7, float %764)  ; Saturate(value)
  %766 = getelementptr inbounds [4 x float], [4 x float]* %23, i32 0, i32 %749
  store float %765, float* %766, align 4, !tbaa !52, !noalias !54
  %767 = add nuw nsw i32 %749, 1
  %768 = icmp eq i32 %767, 4
  br i1 %768, label %774, label %769

; <label>:769                                     ; preds = %746
  %770 = getelementptr [4 x i32], [4 x i32]* %13, i32 0, i32 %767
  %771 = load i32, i32* %770, align 4
  %772 = getelementptr [4 x i32], [4 x i32]* %14, i32 0, i32 %767
  %773 = load i32, i32* %772, align 4
  br label %746

; <label>:774                                     ; preds = %746
  %775 = fmul fast float %730, %721
  %776 = fadd fast float %733, %775
  %777 = fmul fast float %776, %720
  %778 = call float @dx.op.unary.f32(i32 22, float %601)  ; Frc(value)
  %779 = getelementptr inbounds [4 x float], [4 x float]* %23, i32 0, i32 0
  %780 = load float, float* %779, align 4, !tbaa !52, !noalias !54
  %781 = fmul fast float %780, %721
  %782 = getelementptr inbounds [4 x float], [4 x float]* %23, i32 0, i32 1
  %783 = load float, float* %782, align 4, !tbaa !52, !noalias !54
  %784 = fmul fast float %783, %675
  %785 = fadd fast float %784, %781
  %786 = getelementptr inbounds [4 x float], [4 x float]* %23, i32 0, i32 2
  %787 = load float, float* %786, align 4, !tbaa !52, !noalias !54
  %788 = fmul fast float %787, %721
  %789 = getelementptr inbounds [4 x float], [4 x float]* %23, i32 0, i32 3
  %790 = load float, float* %789, align 4, !tbaa !52, !noalias !54
  %791 = fmul fast float %790, %675
  %792 = fadd fast float %791, %788
  %793 = fsub fast float 1.000000e+00, %778
  %794 = fmul fast float %785, %793
  %795 = fmul fast float %792, %778
  %796 = fmul fast float %506, 2.000000e+00
  %797 = fmul fast float %541, %548
  %798 = fdiv fast float %796, %797
  %799 = fsub fast float -0.000000e+00, %617
  %800 = fsub fast float %799, %660
  %801 = fadd fast float %800, %674
  %802 = fadd fast float %801, %719
  %803 = fmul fast float %802, %499
  %804 = fmul fast float %507, 2.000000e+00
  %805 = fdiv fast float %804, %797
  %806 = fsub fast float -0.000000e+00, %735
  %807 = fsub fast float %806, %777
  %808 = fadd fast float %807, %794
  %809 = fadd fast float %808, %795
  %810 = fmul fast float %803, %805
  %811 = fsub fast float -0.000000e+00, %810
  %812 = fmul fast float %499, %798
  %813 = fmul fast float %812, %809
  %814 = fsub fast float -0.000000e+00, %813
  %815 = fmul fast float %805, %798
  %816 = call float @dx.op.dot3.f32(i32 55, float %811, float %814, float %815, float %811, float %814, float %815)  ; Dot3(ax,ay,az,bx,by,bz)
  %817 = call float @dx.op.unary.f32(i32 25, float %816)  ; Rsqrt(value)
  %818 = fmul fast float %817, %811
  %819 = fmul fast float %817, %814
  %820 = fmul fast float %817, %815
  %821 = call float @dx.op.dot3.f32(i32 55, float %798, float 0.000000e+00, float %803, float %798, float 0.000000e+00, float %803)  ; Dot3(ax,ay,az,bx,by,bz)
  %822 = call float @dx.op.unary.f32(i32 25, float %821)  ; Rsqrt(value)
  %823 = fmul fast float %822, %798
  %824 = fmul fast float %822, %803
  %825 = fmul fast float %819, %824
  %826 = fmul fast float %823, %820
  %827 = fmul fast float %824, %818
  %828 = fsub fast float %826, %827
  %829 = fmul fast float %819, %823
  br label %889

; <label>:830                                     ; preds = %462
  %831 = getelementptr [4 x float], [4 x float]* %21, i32 0, i32 0
  %832 = getelementptr [4 x float], [4 x float]* %22, i32 0, i32 0
  %833 = fsub fast float -0.000000e+00, %500
  store float %833, float* %831, align 4
  store float 0.000000e+00, float* %832, align 4
  %834 = getelementptr [4 x float], [4 x float]* %21, i32 0, i32 1
  %835 = getelementptr [4 x float], [4 x float]* %22, i32 0, i32 1
  store float %500, float* %834, align 4
  store float 0.000000e+00, float* %835, align 4
  %836 = getelementptr [4 x float], [4 x float]* %21, i32 0, i32 2
  %837 = getelementptr [4 x float], [4 x float]* %22, i32 0, i32 2
  store float 0.000000e+00, float* %836, align 4
  store float %833, float* %837, align 4
  %838 = getelementptr [4 x float], [4 x float]* %21, i32 0, i32 3
  %839 = getelementptr [4 x float], [4 x float]* %22, i32 0, i32 3
  store float 0.000000e+00, float* %838, align 4
  store float %500, float* %839, align 4
  br label %840

; <label>:840                                     ; preds = %853, %830
  %841 = phi float [ 0.000000e+00, %830 ], [ %857, %853 ]
  %842 = phi float [ %833, %830 ], [ %855, %853 ]
  %843 = phi i32 [ 0, %830 ], [ %851, %853 ]
  %844 = fadd fast float %842, %463
  %845 = fadd fast float %841, %464
  %846 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %488, %dx.types.Handle %8, float %844, float %845, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %847 = extractvalue %dx.types.ResRet.f32 %846, 0
  %848 = fmul fast float %847, %499
  %849 = fadd fast float %848, %496
  %850 = getelementptr [4 x float], [4 x float]* %27, i32 0, i32 %843
  store float %849, float* %850, align 4, !tbaa !52, !noalias !72
  %851 = add nuw nsw i32 %843, 1
  %852 = icmp eq i32 %851, 4
  br i1 %852, label %858, label %853

; <label>:853                                     ; preds = %840
  %854 = getelementptr [4 x float], [4 x float]* %21, i32 0, i32 %851
  %855 = load float, float* %854, align 4
  %856 = getelementptr [4 x float], [4 x float]* %22, i32 0, i32 %851
  %857 = load float, float* %856, align 4
  br label %840

; <label>:858                                     ; preds = %840
  %859 = fdiv fast float %492, %493
  %860 = fmul fast float %859, 2.000000e+00
  %861 = getelementptr [4 x float], [4 x float]* %27, i32 0, i32 1
  %862 = load float, float* %861, align 4, !tbaa !52, !noalias !72
  %863 = getelementptr [4 x float], [4 x float]* %27, i32 0, i32 0
  %864 = load float, float* %863, align 4, !tbaa !52, !noalias !72
  %865 = fsub fast float %862, %864
  %866 = getelementptr [4 x float], [4 x float]* %27, i32 0, i32 3
  %867 = load float, float* %866, align 4, !tbaa !52, !noalias !72
  %868 = getelementptr [4 x float], [4 x float]* %27, i32 0, i32 2
  %869 = load float, float* %868, align 4, !tbaa !52, !noalias !72
  %870 = fsub fast float %867, %869
  %871 = fmul fast float %859, -2.000000e+00
  %872 = fmul fast float %871, %865
  %873 = fmul fast float %871, %870
  %874 = fmul fast float %860, %860
  %875 = call float @dx.op.dot3.f32(i32 55, float %872, float %873, float %874, float %872, float %873, float %874)  ; Dot3(ax,ay,az,bx,by,bz)
  %876 = call float @dx.op.unary.f32(i32 25, float %875)  ; Rsqrt(value)
  %877 = fmul fast float %876, %872
  %878 = fmul fast float %876, %873
  %879 = fmul fast float %876, %874
  %880 = call float @dx.op.dot3.f32(i32 55, float %860, float 0.000000e+00, float %865, float %860, float 0.000000e+00, float %865)  ; Dot3(ax,ay,az,bx,by,bz)
  %881 = call float @dx.op.unary.f32(i32 25, float %880)  ; Rsqrt(value)
  %882 = fmul fast float %881, %860
  %883 = fmul fast float %881, %865
  %884 = fmul fast float %883, %878
  %885 = fmul fast float %882, %879
  %886 = fmul fast float %883, %877
  %887 = fsub fast float %885, %886
  %888 = fmul fast float %882, %878
  br label %889

; <label>:889                                     ; preds = %858, %774
  %890 = phi float [ %829, %774 ], [ %888, %858 ]
  %891 = phi float [ %818, %774 ], [ %877, %858 ]
  %892 = phi float [ %819, %774 ], [ %878, %858 ]
  %893 = phi float [ %820, %774 ], [ %879, %858 ]
  %894 = phi float [ %825, %774 ], [ %884, %858 ]
  %895 = phi float [ %828, %774 ], [ %887, %858 ]
  %896 = phi float [ %823, %774 ], [ %882, %858 ]
  %897 = phi float [ %824, %774 ], [ %883, %858 ]
  %898 = fsub fast float -0.000000e+00, %890
  %899 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %900 = extractvalue %dx.types.CBufRet.i32 %899, 1
  %901 = icmp eq i32 %900, 5
  %902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %903 = extractvalue %dx.types.CBufRet.f32 %902, 0
  %904 = extractvalue %dx.types.CBufRet.f32 %902, 1
  %905 = extractvalue %dx.types.CBufRet.f32 %902, 2
  %906 = fmul fast float %905, %65
  %907 = fmul fast float %905, %66
  %908 = fadd fast float %906, %903
  %909 = fadd fast float %907, %904
  %910 = fmul fast float %138, 2.000000e+00
  %911 = fadd fast float %910, -1.000000e+00
  %912 = fmul fast float %140, 2.000000e+00
  %913 = fadd fast float %912, -1.000000e+00
  %914 = fadd fast float %913, %911
  %915 = fmul fast float %914, 5.000000e-01
  %916 = fsub fast float %911, %913
  %917 = fmul fast float %916, 5.000000e-01
  %918 = call float @dx.op.unary.f32(i32 6, float %915)  ; FAbs(value)
  %919 = fsub fast float 1.000000e+00, %918
  %920 = call float @dx.op.unary.f32(i32 6, float %917)  ; FAbs(value)
  %921 = fsub fast float %919, %920
  %922 = call float @dx.op.dot3.f32(i32 55, float %915, float %917, float %921, float %915, float %917, float %921)  ; Dot3(ax,ay,az,bx,by,bz)
  %923 = call float @dx.op.unary.f32(i32 25, float %922)  ; Rsqrt(value)
  %924 = fmul fast float %923, %915
  %925 = fmul fast float %923, %917
  %926 = fmul fast float %923, %921
  %927 = fmul fast float %924, %897
  %928 = call float @dx.op.tertiary.f32(i32 46, float %925, float %898, float %927)  ; FMad(a,b,c)
  %929 = call float @dx.op.tertiary.f32(i32 46, float %926, float %893, float %928)  ; FMad(a,b,c)
  %930 = call float @dx.op.tertiary.f32(i32 46, float %925, float %895, float 0.000000e+00)  ; FMad(a,b,c)
  %931 = call float @dx.op.tertiary.f32(i32 46, float %926, float %892, float %930)  ; FMad(a,b,c)
  %932 = fmul fast float %924, %896
  %933 = call float @dx.op.tertiary.f32(i32 46, float %925, float %894, float %932)  ; FMad(a,b,c)
  %934 = call float @dx.op.tertiary.f32(i32 46, float %926, float %891, float %933)  ; FMad(a,b,c)
  br label %935

; <label>:935                                     ; preds = %1361, %889
  %936 = phi float [ %1362, %1361 ], [ %136, %889 ]
  %937 = phi float [ %1363, %1361 ], [ %934, %889 ]
  %938 = phi float [ %1364, %1361 ], [ %931, %889 ]
  %939 = phi float [ %1365, %1361 ], [ %929, %889 ]
  %940 = phi float [ %1366, %1361 ], [ %139, %889 ]
  %941 = phi float [ %1367, %1361 ], [ %137, %889 ]
  %942 = phi float [ %1368, %1361 ], [ %141, %889 ]
  %943 = phi float [ %1369, %1361 ], [ %107, %889 ]
  %944 = phi float [ %1370, %1361 ], [ %115, %889 ]
  %945 = phi float [ %1371, %1361 ], [ %123, %889 ]
  %946 = phi i32 [ %1372, %1361 ], [ 0, %889 ]
  %947 = phi i32 [ %1373, %1361 ], [ 0, %889 ]
  %948 = shl i32 %947, 8
  %949 = or i32 %948, 48
  %950 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %949, i32 undef)  ; BufferLoad(srv,index,wot)
  %951 = extractvalue %dx.types.ResRet.f32 %950, 0
  %952 = extractvalue %dx.types.ResRet.f32 %950, 1
  %953 = extractvalue %dx.types.ResRet.f32 %950, 2
  %954 = extractvalue %dx.types.ResRet.f32 %950, 3
  %955 = or i32 %948, 64
  %956 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %955, i32 undef)  ; BufferLoad(srv,index,wot)
  %957 = extractvalue %dx.types.ResRet.i32 %956, 0
  %958 = extractvalue %dx.types.ResRet.i32 %956, 1
  %959 = extractvalue %dx.types.ResRet.i32 %956, 2
  %960 = extractvalue %dx.types.ResRet.i32 %956, 3
  %961 = or i32 %948, 80
  %962 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %961, i32 undef)  ; BufferLoad(srv,index,wot)
  %963 = extractvalue %dx.types.ResRet.f32 %962, 0
  %964 = extractvalue %dx.types.ResRet.f32 %962, 1
  %965 = extractvalue %dx.types.ResRet.f32 %962, 2
  %966 = extractvalue %dx.types.ResRet.f32 %962, 3
  %967 = or i32 %948, 96
  %968 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %967, i32 undef)  ; BufferLoad(srv,index,wot)
  %969 = extractvalue %dx.types.ResRet.f32 %968, 0
  %970 = extractvalue %dx.types.ResRet.f32 %968, 1
  %971 = extractvalue %dx.types.ResRet.f32 %968, 2
  %972 = extractvalue %dx.types.ResRet.f32 %968, 3
  %973 = or i32 %948, 112
  %974 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %973, i32 undef)  ; BufferLoad(srv,index,wot)
  %975 = extractvalue %dx.types.ResRet.f32 %974, 0
  %976 = extractvalue %dx.types.ResRet.f32 %974, 1
  %977 = extractvalue %dx.types.ResRet.f32 %974, 2
  %978 = extractvalue %dx.types.ResRet.f32 %974, 3
  %979 = or i32 %948, 128
  %980 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %979, i32 undef)  ; BufferLoad(srv,index,wot)
  %981 = extractvalue %dx.types.ResRet.f32 %980, 0
  %982 = extractvalue %dx.types.ResRet.f32 %980, 1
  %983 = extractvalue %dx.types.ResRet.f32 %980, 2
  %984 = extractvalue %dx.types.ResRet.f32 %980, 3
  %985 = or i32 %948, 144
  %986 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %985, i32 undef)  ; BufferLoad(srv,index,wot)
  %987 = extractvalue %dx.types.ResRet.f32 %986, 0
  %988 = extractvalue %dx.types.ResRet.f32 %986, 1
  %989 = extractvalue %dx.types.ResRet.f32 %986, 2
  %990 = extractvalue %dx.types.ResRet.f32 %986, 3
  %991 = or i32 %948, 160
  %992 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %991, i32 undef)  ; BufferLoad(srv,index,wot)
  %993 = extractvalue %dx.types.ResRet.f32 %992, 0
  %994 = extractvalue %dx.types.ResRet.f32 %992, 1
  %995 = extractvalue %dx.types.ResRet.f32 %992, 2
  %996 = or i32 %948, 192
  %997 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %996, i32 undef)  ; BufferLoad(srv,index,wot)
  %998 = extractvalue %dx.types.ResRet.i32 %997, 0
  %999 = or i32 %948, 208
  %1000 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %999, i32 undef)  ; BufferLoad(srv,index,wot)
  %1001 = extractvalue %dx.types.ResRet.f32 %1000, 0
  %1002 = or i32 %948, 240
  %1003 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1002, i32 undef)  ; BufferLoad(srv,index,wot)
  %1004 = extractvalue %dx.types.ResRet.i32 %1003, 1
  %1005 = or i32 %948, 248
  %1006 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %1005, i32 undef)  ; BufferLoad(srv,index,wot)
  %1007 = extractvalue %dx.types.ResRet.f32 %1006, 0
  %1008 = extractvalue %dx.types.ResRet.f32 %1006, 1
  %1009 = uitofp i32 %1004 to float
  %1010 = fmul fast float %1009, 5.000000e+01
  %1011 = call float @dx.op.unary.f32(i32 23, float %1010)  ; Log(value)
  %1012 = call float @dx.op.unary.f32(i32 28, float %1011)  ; Round_pi(value)
  %1013 = fsub fast float %1012, %67
  %1014 = fptosi float %1013 to i32
  %1015 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %1014)  ; IMax(a,b)
  %1016 = bitcast float %954 to i32
  %1017 = and i32 %1016, 2560
  %1018 = icmp eq i32 %1017, 0
  br i1 %1018, label %1019, label %1361, !dx.controlflow.hints !73

; <label>:1019                                    ; preds = %935
  %1020 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %948, i32 undef)  ; BufferLoad(srv,index,wot)
  %1021 = extractvalue %dx.types.ResRet.f32 %1020, 0
  %1022 = extractvalue %dx.types.ResRet.f32 %1020, 1
  %1023 = extractvalue %dx.types.ResRet.f32 %1020, 2
  %1024 = extractvalue %dx.types.ResRet.f32 %1020, 3
  %1025 = call float @dx.op.dot4.f32(i32 56, float %1021, float %1022, float %1023, float %1024, float %908, float %909, float %478, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1026 = or i32 %948, 16
  %1027 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %1026, i32 undef)  ; BufferLoad(srv,index,wot)
  %1028 = extractvalue %dx.types.ResRet.f32 %1027, 0
  %1029 = extractvalue %dx.types.ResRet.f32 %1027, 1
  %1030 = extractvalue %dx.types.ResRet.f32 %1027, 2
  %1031 = extractvalue %dx.types.ResRet.f32 %1027, 3
  %1032 = call float @dx.op.dot4.f32(i32 56, float %1028, float %1029, float %1030, float %1031, float %908, float %909, float %478, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1033 = or i32 %948, 32
  %1034 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %1033, i32 undef)  ; BufferLoad(srv,index,wot)
  %1035 = extractvalue %dx.types.ResRet.f32 %1034, 0
  %1036 = extractvalue %dx.types.ResRet.f32 %1034, 1
  %1037 = extractvalue %dx.types.ResRet.f32 %1034, 2
  %1038 = extractvalue %dx.types.ResRet.f32 %1034, 3
  %1039 = call float @dx.op.dot4.f32(i32 56, float %1035, float %1036, float %1037, float %1038, float %908, float %909, float %478, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1040 = call float @dx.op.unary.f32(i32 27, float %1025)  ; Round_ni(value)
  %1041 = call float @dx.op.unary.f32(i32 6, float %1040)  ; FAbs(value)
  %1042 = call float @dx.op.unary.f32(i32 27, float %1032)  ; Round_ni(value)
  %1043 = call float @dx.op.unary.f32(i32 6, float %1042)  ; FAbs(value)
  %1044 = call float @dx.op.unary.f32(i32 6, float %1039)  ; FAbs(value)
  %1045 = call float @dx.op.unary.f32(i32 27, float %1044)  ; Round_ni(value)
  %1046 = fadd fast float %1043, %1041
  %1047 = fadd fast float %1046, %1045
  %1048 = fcmp fast oeq float %1047, 0.000000e+00
  %1049 = call float @dx.op.dot3.f32(i32 55, float %951, float %952, float %953, float %891, float %892, float %893)  ; Dot3(ax,ay,az,bx,by,bz)
  %1050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1051 = extractvalue %dx.types.CBufRet.f32 %1050, 2
  %1052 = fadd fast float %1051, %1049
  %1053 = call float @dx.op.unary.f32(i32 7, float %1052)  ; Saturate(value)
  %1054 = extractvalue %dx.types.CBufRet.f32 %1050, 0
  %1055 = fcmp fast ogt float %1053, %1054
  %1056 = and i1 %1048, %1055
  br i1 %1056, label %1057, label %1361, !dx.controlflow.hints !74

; <label>:1057                                    ; preds = %1019
  %1058 = add i32 %946, 1
  %1059 = sitofp i32 %1015 to float
  %1060 = add i32 %960, 0
  %1061 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1060, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1062 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1061, i32 0)  ; GetDimensions(handle,mipLevel)
  %1063 = extractvalue %dx.types.Dimensions %1062, 0
  %1064 = extractvalue %dx.types.Dimensions %1062, 1
  %1065 = uitofp i32 %1063 to float
  %1066 = uitofp i32 %1064 to float
  %1067 = call float @dx.op.binary.f32(i32 35, float %1065, float %1066)  ; FMax(a,b)
  %1068 = call float @dx.op.unary.f32(i32 23, float %1067)  ; Log(value)
  %1069 = call float @dx.op.unary.f32(i32 28, float %1068)  ; Round_pi(value)
  %1070 = fsub fast float %1069, %1059
  %1071 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1070)  ; FMax(a,b)
  %1072 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1061, %dx.types.Handle %7, float %1025, float %1032, float undef, float undef, i32 0, i32 0, i32 undef, float %1071)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1073 = extractvalue %dx.types.ResRet.f32 %1072, 0
  %1074 = fmul fast float %1073, %963
  %1075 = fadd fast float %1074, %964
  %1076 = call float @dx.op.unary.f32(i32 7, float %1075)  ; Saturate(value)
  %1077 = fmul fast float %1025, %969
  %1078 = call float @dx.op.tertiary.f32(i32 46, float %970, float %1032, float %1077)  ; FMad(a,b,c)
  %1079 = fadd fast float %1078, %975
  %1080 = fmul fast float %1025, %971
  %1081 = call float @dx.op.tertiary.f32(i32 46, float %972, float %1032, float %1080)  ; FMad(a,b,c)
  %1082 = fadd fast float %1081, %976
  %1083 = add i32 %959, 0
  %1084 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1083, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1085 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1084, i32 0)  ; GetDimensions(handle,mipLevel)
  %1086 = extractvalue %dx.types.Dimensions %1085, 0
  %1087 = extractvalue %dx.types.Dimensions %1085, 1
  %1088 = uitofp i32 %1086 to float
  %1089 = uitofp i32 %1087 to float
  %1090 = call float @dx.op.binary.f32(i32 35, float %1088, float %1089)  ; FMax(a,b)
  %1091 = call float @dx.op.unary.f32(i32 23, float %1090)  ; Log(value)
  %1092 = call float @dx.op.unary.f32(i32 28, float %1091)  ; Round_pi(value)
  %1093 = fsub fast float %1092, %1059
  %1094 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1093)  ; FMax(a,b)
  %1095 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1084, %dx.types.Handle %7, float %1079, float %1082, float undef, float undef, i32 0, i32 0, i32 undef, float %1094)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1096 = extractvalue %dx.types.ResRet.f32 %1095, 0
  %1097 = and i32 %1016, 1024
  %1098 = icmp ne i32 %1097, 0
  %1099 = fcmp fast ogt float %1096, 0x3FE0101020000000
  %1100 = uitofp i1 %1099 to float
  %1101 = select i1 %1098, float %1100, float %1096
  %1102 = and i32 %1016, 8192
  %1103 = icmp ne i32 %1102, 0
  %1104 = select i1 %1103, float %978, float 1.000000e+00
  %1105 = fmul fast float %1025, 2.000000e+00
  %1106 = fadd fast float %1105, -1.000000e+00
  %1107 = call float @dx.op.unary.f32(i32 6, float %1106)  ; FAbs(value)
  %1108 = fmul fast float %1107, %1007
  %1109 = fsub fast float %1108, %1007
  %1110 = call float @dx.op.unary.f32(i32 7, float %1109)  ; Saturate(value)
  %1111 = fmul fast float %1032, 2.000000e+00
  %1112 = fadd fast float %1111, -1.000000e+00
  %1113 = call float @dx.op.unary.f32(i32 6, float %1112)  ; FAbs(value)
  %1114 = fmul fast float %1113, %1008
  %1115 = fsub fast float %1114, %1008
  %1116 = call float @dx.op.unary.f32(i32 7, float %1115)  ; Saturate(value)
  %1117 = fmul fast float %1044, %965
  %1118 = fsub fast float %1117, %965
  %1119 = call float @dx.op.unary.f32(i32 7, float %1118)  ; Saturate(value)
  %1120 = fmul fast float %1076, %1104
  %1121 = fmul fast float %1120, %1073
  %1122 = fmul fast float %1121, %1110
  %1123 = fmul fast float %1122, %1101
  %1124 = fmul fast float %1123, %1116
  %1125 = fmul fast float %1124, %1119
  %1126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1127 = extractvalue %dx.types.CBufRet.f32 %1126, 1
  %1128 = extractvalue %dx.types.CBufRet.f32 %1126, 0
  %1129 = fsub fast float %1053, %1128
  %1130 = fmul fast float %1129, %1127
  %1131 = call float @dx.op.unary.f32(i32 7, float %1130)  ; Saturate(value)
  %1132 = fmul fast float %1125, %966
  %1133 = fadd fast float %1125, %966
  %1134 = fmul fast float %1133, %977
  %1135 = fsub fast float %1134, %977
  %1136 = call float @dx.op.unary.f32(i32 7, float %1135)  ; Saturate(value)
  %1137 = and i32 %1016, 128
  %1138 = icmp ne i32 %1137, 0
  %1139 = select i1 %1138, float %1136, float %1132
  %1140 = fmul fast float %1139, %1131
  %1141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %1142 = extractvalue %dx.types.CBufRet.f32 %1141, 0
  %1143 = fcmp fast ugt float %1140, %1142
  br i1 %1143, label %1144, label %1361, !dx.controlflow.hints !75

; <label>:1144                                    ; preds = %1057
  br i1 %1103, label %1361, label %1145, !dx.controlflow.hints !76

; <label>:1145                                    ; preds = %1144
  %1146 = and i32 %1016, 4
  %1147 = and i32 %1016, 8
  %1148 = add i32 %957, 0
  %1149 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1148, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1150 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1149, i32 0)  ; GetDimensions(handle,mipLevel)
  %1151 = extractvalue %dx.types.Dimensions %1150, 0
  %1152 = extractvalue %dx.types.Dimensions %1150, 1
  %1153 = uitofp i32 %1151 to float
  %1154 = uitofp i32 %1152 to float
  %1155 = call float @dx.op.binary.f32(i32 35, float %1153, float %1154)  ; FMax(a,b)
  %1156 = call float @dx.op.unary.f32(i32 23, float %1155)  ; Log(value)
  %1157 = call float @dx.op.unary.f32(i32 28, float %1156)  ; Round_pi(value)
  %1158 = fsub fast float %1157, %1059
  %1159 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1158)  ; FMax(a,b)
  %1160 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1149, %dx.types.Handle %7, float %1079, float %1082, float undef, float undef, i32 0, i32 0, i32 undef, float %1159)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1161 = extractvalue %dx.types.ResRet.f32 %1160, 0
  %1162 = extractvalue %dx.types.ResRet.f32 %1160, 1
  %1163 = extractvalue %dx.types.ResRet.f32 %1160, 2
  %1164 = extractvalue %dx.types.ResRet.f32 %1160, 3
  %1165 = bitcast float %990 to i32
  %1166 = and i32 %1165, 255
  %1167 = uitofp i32 %1166 to float
  %1168 = lshr i32 %1165, 8
  %1169 = and i32 %1168, 255
  %1170 = uitofp i32 %1169 to float
  %1171 = fmul fast float %1164, %1167
  %1172 = fadd fast float %1171, %1170
  %1173 = fmul fast float %1172, 0x3F70101000000000
  %1174 = add i32 %958, 0
  %1175 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1174, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1176 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1175, i32 0)  ; GetDimensions(handle,mipLevel)
  %1177 = extractvalue %dx.types.Dimensions %1176, 0
  %1178 = extractvalue %dx.types.Dimensions %1176, 1
  %1179 = uitofp i32 %1177 to float
  %1180 = uitofp i32 %1178 to float
  %1181 = call float @dx.op.binary.f32(i32 35, float %1179, float %1180)  ; FMax(a,b)
  %1182 = call float @dx.op.unary.f32(i32 23, float %1181)  ; Log(value)
  %1183 = call float @dx.op.unary.f32(i32 28, float %1182)  ; Round_pi(value)
  %1184 = fsub fast float %1183, %1059
  %1185 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1184)  ; FMax(a,b)
  %1186 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1175, %dx.types.Handle %7, float %1079, float %1082, float undef, float undef, i32 0, i32 0, i32 undef, float %1185)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1187 = extractvalue %dx.types.ResRet.f32 %1186, 0
  %1188 = extractvalue %dx.types.ResRet.f32 %1186, 1
  %1189 = extractvalue %dx.types.ResRet.f32 %1186, 2
  %1190 = extractvalue %dx.types.ResRet.f32 %1186, 3
  %1191 = bitcast float %984 to i32
  %1192 = and i32 %1191, 255
  %1193 = uitofp i32 %1192 to float
  %1194 = lshr i32 %1191, 8
  %1195 = and i32 %1194, 255
  %1196 = uitofp i32 %1195 to float
  %1197 = lshr i32 %1191, 16
  %1198 = and i32 %1197, 255
  %1199 = uitofp i32 %1198 to float
  %1200 = fmul fast float %1199, 0x3F70101000000000
  %1201 = fmul fast float %1187, %1193
  %1202 = fadd fast float %1201, %1196
  %1203 = fmul fast float %1202, 0x3F70101000000000
  %1204 = fadd fast float %1188, -5.000000e-01
  %1205 = fadd fast float %1190, -5.000000e-01
  %1206 = fmul fast float %1204, %1200
  %1207 = fmul fast float %1205, %1200
  %1208 = fadd fast float %1206, 5.000000e-01
  %1209 = fadd fast float %1207, 5.000000e-01
  %1210 = fmul fast float %1161, %993
  %1211 = fmul fast float %1162, %994
  %1212 = fmul fast float %1163, %995
  %1213 = fmul fast float %1208, 2.000000e+00
  %1214 = fadd fast float %1213, -1.000000e+00
  %1215 = fmul fast float %1209, 2.000000e+00
  %1216 = fadd fast float %1215, -1.000000e+00
  %1217 = fadd fast float %1214, %1216
  %1218 = fmul fast float %1217, 5.000000e-01
  %1219 = fsub fast float %1214, %1216
  %1220 = fmul fast float %1219, 5.000000e-01
  %1221 = call float @dx.op.unary.f32(i32 6, float %1218)  ; FAbs(value)
  %1222 = fsub fast float 1.000000e+00, %1221
  %1223 = call float @dx.op.unary.f32(i32 6, float %1220)  ; FAbs(value)
  %1224 = fsub fast float %1222, %1223
  %1225 = call float @dx.op.dot3.f32(i32 55, float %1218, float %1220, float %1224, float %1218, float %1220, float %1224)  ; Dot3(ax,ay,az,bx,by,bz)
  %1226 = call float @dx.op.unary.f32(i32 25, float %1225)  ; Rsqrt(value)
  %1227 = fmul fast float %1218, %1226
  %1228 = fmul fast float %1220, %1226
  %1229 = fmul fast float %1226, %1224
  %1230 = fmul fast float %1229, %951
  %1231 = fmul fast float %1229, %952
  %1232 = fmul fast float %1229, %953
  %1233 = fmul fast float %1227, %981
  %1234 = fmul fast float %1227, %982
  %1235 = fmul fast float %1227, %983
  %1236 = fadd fast float %1233, %1230
  %1237 = fadd fast float %1234, %1231
  %1238 = fadd fast float %1235, %1232
  %1239 = fmul fast float %1228, %987
  %1240 = fmul fast float %1228, %988
  %1241 = fmul fast float %1228, %989
  %1242 = fadd fast float %1236, %1239
  %1243 = fadd fast float %1237, %1240
  %1244 = fadd fast float %1238, %1241
  %1245 = call float @dx.op.dot3.f32(i32 55, float %1242, float %1243, float %1244, float %1242, float %1243, float %1244)  ; Dot3(ax,ay,az,bx,by,bz)
  %1246 = call float @dx.op.unary.f32(i32 25, float %1245)  ; Rsqrt(value)
  %1247 = fmul fast float %1242, %1246
  %1248 = fmul fast float %1243, %1246
  %1249 = fmul fast float %1244, %1246
  %1250 = icmp ne i32 %1147, 0
  %1251 = select i1 %1250, float 1.000000e+00, float 0.000000e+00
  %1252 = fmul fast float %1140, %1251
  %1253 = and i32 %1016, 1
  %1254 = icmp eq i32 %1253, 0
  br i1 %1254, label %1255, label %1259, !dx.controlflow.hints !77

; <label>:1255                                    ; preds = %1145
  %1256 = fsub fast float %1247, %937
  %1257 = fsub fast float %1248, %938
  %1258 = fsub fast float %1249, %939
  br label %1259

; <label>:1259                                    ; preds = %1255, %1145
  %1260 = phi float [ %1256, %1255 ], [ %1247, %1145 ]
  %1261 = phi float [ %1257, %1255 ], [ %1248, %1145 ]
  %1262 = phi float [ %1258, %1255 ], [ %1249, %1145 ]
  %1263 = fmul float %1262, %1252
  %1264 = fmul float %1261, %1252
  %1265 = fmul float %1260, %1252
  %1266 = fadd fast float %1265, %937
  %1267 = fadd fast float %1264, %938
  %1268 = fadd fast float %1263, %939
  %1269 = icmp ne i32 %1146, 0
  %1270 = select i1 %1269, float 1.000000e+00, float 0.000000e+00
  %1271 = fmul fast float %1140, %1270
  %1272 = fsub fast float %1210, %943
  %1273 = fsub fast float %1211, %944
  %1274 = fsub fast float %1212, %945
  %1275 = fmul fast float %1272, %1271
  %1276 = fmul fast float %1273, %1271
  %1277 = fmul fast float %1274, %1271
  %1278 = fadd fast float %1275, %943
  %1279 = fadd fast float %1276, %944
  %1280 = fadd fast float %1277, %945
  %1281 = fsub fast float %1173, %942
  %1282 = fmul fast float %1281, %1271
  %1283 = fadd fast float %1282, %942
  %1284 = fsub fast float %1203, %941
  %1285 = fmul fast float %1284, %1252
  %1286 = fadd fast float %1285, %941
  %1287 = fsub fast float %1189, %940
  %1288 = fmul fast float %1287, %1252
  %1289 = fadd fast float %1288, %940
  %1290 = and i32 %1016, 16
  %1291 = icmp eq i32 %1290, 0
  br i1 %1291, label %1361, label %1292, !dx.controlflow.hints !78

; <label>:1292                                    ; preds = %1259
  %1293 = add i32 %998, 0
  %1294 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1293, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1295 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1296 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1294, %dx.types.Handle %1295, float %1079, float %1082, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00, float 0.000000e+00, float undef, float 0.000000e+00, float 0.000000e+00, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1297 = extractvalue %dx.types.ResRet.f32 %1296, 0
  %1298 = extractvalue %dx.types.ResRet.f32 %1296, 1
  %1299 = extractvalue %dx.types.ResRet.f32 %1296, 2
  %1300 = bitcast float %1001 to i32
  %1301 = and i32 %1300, 65535
  %1302 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1301)  ; LegacyF16ToF32(value)
  %1303 = fmul fast float %1297, %993
  %1304 = fmul fast float %1298, %994
  %1305 = fmul fast float %1299, %995
  %1306 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %1307 = extractvalue %dx.types.CBufRet.i32 %1306, 1
  %1308 = icmp eq i32 %1307, 2
  br i1 %1308, label %1309, label %1353, !dx.controlflow.hints !79

; <label>:1309                                    ; preds = %1292
  %1310 = call float @dx.op.binary.f32(i32 36, float %1278, float 0x3FEFAE1480000000)  ; FMin(a,b)
  %1311 = call float @dx.op.binary.f32(i32 36, float %1279, float 0x3FEFAE1480000000)  ; FMin(a,b)
  %1312 = call float @dx.op.binary.f32(i32 36, float %1280, float 0x3FEFAE1480000000)  ; FMin(a,b)
  %1313 = fsub fast float 1.000000e+00, %1310
  %1314 = fsub fast float 1.000000e+00, %1311
  %1315 = fsub fast float 1.000000e+00, %1312
  %1316 = call float @dx.op.unary.f32(i32 23, float %1313)  ; Log(value)
  %1317 = call float @dx.op.unary.f32(i32 23, float %1314)  ; Log(value)
  %1318 = call float @dx.op.unary.f32(i32 23, float %1315)  ; Log(value)
  %1319 = call float @dx.op.binary.f32(i32 36, float %1303, float 0x3FEFAE1480000000)  ; FMin(a,b)
  %1320 = call float @dx.op.binary.f32(i32 36, float %1304, float 0x3FEFAE1480000000)  ; FMin(a,b)
  %1321 = call float @dx.op.binary.f32(i32 36, float %1305, float 0x3FEFAE1480000000)  ; FMin(a,b)
  %1322 = fsub fast float 1.000000e+00, %1319
  %1323 = fsub fast float 1.000000e+00, %1320
  %1324 = fsub fast float 1.000000e+00, %1321
  %1325 = call float @dx.op.unary.f32(i32 23, float %1322)  ; Log(value)
  %1326 = call float @dx.op.unary.f32(i32 23, float %1323)  ; Log(value)
  %1327 = call float @dx.op.unary.f32(i32 23, float %1324)  ; Log(value)
  %1328 = fmul fast float %1140, %1325
  %1329 = fmul fast float %1140, %1326
  %1330 = fmul fast float %1140, %1327
  %1331 = fsub fast float -0.000000e+00, %1316
  %1332 = fsub fast float %1331, %1328
  %1333 = fsub fast float -0.000000e+00, %1317
  %1334 = fsub fast float %1333, %1329
  %1335 = fsub fast float -0.000000e+00, %1318
  %1336 = fsub fast float %1335, %1330
  %1337 = fsub fast float -0.000000e+00, %1332
  %1338 = fsub fast float -0.000000e+00, %1334
  %1339 = fsub fast float -0.000000e+00, %1336
  %1340 = call float @dx.op.unary.f32(i32 21, float %1337)  ; Exp(value)
  %1341 = call float @dx.op.unary.f32(i32 21, float %1338)  ; Exp(value)
  %1342 = call float @dx.op.unary.f32(i32 21, float %1339)  ; Exp(value)
  %1343 = fsub fast float 1.000000e+00, %1340
  %1344 = fsub fast float 1.000000e+00, %1341
  %1345 = fsub fast float 1.000000e+00, %1342
  %1346 = call float @dx.op.dot3.f32(i32 55, float %1343, float %1344, float %1345, float %1343, float %1344, float %1345)  ; Dot3(ax,ay,az,bx,by,bz)
  %1347 = call float @dx.op.dot3.f32(i32 55, float %1303, float %1304, float %1305, float %1303, float %1304, float %1305)  ; Dot3(ax,ay,az,bx,by,bz)
  %1348 = fmul fast float %1347, %1140
  %1349 = fcmp fast une float %1346, 0.000000e+00
  %1350 = fdiv fast float %1348, %1346
  %1351 = select i1 %1349, float %1350, float 0.000000e+00
  %1352 = fmul fast float %1351, %1302
  br label %1353

; <label>:1353                                    ; preds = %1309, %1292
  %1354 = phi float [ %1352, %1309 ], [ %1302, %1292 ]
  %1355 = phi float [ %1343, %1309 ], [ %1278, %1292 ]
  %1356 = phi float [ %1344, %1309 ], [ %1279, %1292 ]
  %1357 = phi float [ %1345, %1309 ], [ %1280, %1292 ]
  %1358 = fsub fast float %1354, %936
  %1359 = fmul fast float %1358, %1140
  %1360 = fadd fast float %1359, %936
  br label %1361

; <label>:1361                                    ; preds = %1353, %1259, %1144, %1057, %1019, %935
  %1362 = phi float [ %936, %935 ], [ %936, %1057 ], [ %936, %1144 ], [ %936, %1019 ], [ %1360, %1353 ], [ %936, %1259 ]
  %1363 = phi float [ %937, %935 ], [ %937, %1057 ], [ %937, %1144 ], [ %937, %1019 ], [ %1266, %1353 ], [ %1266, %1259 ]
  %1364 = phi float [ %938, %935 ], [ %938, %1057 ], [ %938, %1144 ], [ %938, %1019 ], [ %1267, %1353 ], [ %1267, %1259 ]
  %1365 = phi float [ %939, %935 ], [ %939, %1057 ], [ %939, %1144 ], [ %939, %1019 ], [ %1268, %1353 ], [ %1268, %1259 ]
  %1366 = phi float [ %940, %935 ], [ %940, %1057 ], [ %940, %1144 ], [ %940, %1019 ], [ %1289, %1353 ], [ %1289, %1259 ]
  %1367 = phi float [ %941, %935 ], [ %941, %1057 ], [ %941, %1144 ], [ %941, %1019 ], [ %1286, %1353 ], [ %1286, %1259 ]
  %1368 = phi float [ %942, %935 ], [ %942, %1057 ], [ %942, %1144 ], [ %942, %1019 ], [ %1283, %1353 ], [ %1283, %1259 ]
  %1369 = phi float [ %943, %935 ], [ %943, %1057 ], [ %943, %1144 ], [ %943, %1019 ], [ %1355, %1353 ], [ %1278, %1259 ]
  %1370 = phi float [ %944, %935 ], [ %944, %1057 ], [ %944, %1144 ], [ %944, %1019 ], [ %1356, %1353 ], [ %1279, %1259 ]
  %1371 = phi float [ %945, %935 ], [ %945, %1057 ], [ %945, %1144 ], [ %945, %1019 ], [ %1357, %1353 ], [ %1280, %1259 ]
  %1372 = phi i32 [ %946, %935 ], [ %1058, %1057 ], [ %1058, %1144 ], [ %946, %1019 ], [ %1058, %1353 ], [ %1058, %1259 ]
  %1373 = add nuw i32 %947, 1
  %1374 = icmp eq i32 %1373, %422
  br i1 %1374, label %1375, label %935

; <label>:1375                                    ; preds = %1361
  %1376 = icmp eq i32 %1372, 0
  br i1 %1376, label %1408, label %1377, !dx.controlflow.hints !80

; <label>:1377                                    ; preds = %1375
  %1378 = call float @dx.op.unary.f32(i32 7, float %1369)  ; Saturate(value)
  %1379 = call float @dx.op.unary.f32(i32 7, float %1370)  ; Saturate(value)
  %1380 = call float @dx.op.unary.f32(i32 7, float %1371)  ; Saturate(value)
  br i1 %901, label %1408, label %1381, !dx.controlflow.hints !81

; <label>:1381                                    ; preds = %1377
  %1382 = call float @dx.op.dot3.f32(i32 55, float %1363, float %1364, float %1365, float %1363, float %1364, float %1365)  ; Dot3(ax,ay,az,bx,by,bz)
  %1383 = call float @dx.op.unary.f32(i32 25, float %1382)  ; Rsqrt(value)
  %1384 = fmul fast float %1383, %1363
  %1385 = fmul fast float %1383, %1364
  %1386 = fmul fast float %1383, %1365
  %1387 = fmul fast float %1384, %896
  %1388 = call float @dx.op.tertiary.f32(i32 46, float %1386, float %897, float %1387)  ; FMad(a,b,c)
  %1389 = fmul fast float %1384, %894
  %1390 = call float @dx.op.tertiary.f32(i32 46, float %1385, float %895, float %1389)  ; FMad(a,b,c)
  %1391 = call float @dx.op.tertiary.f32(i32 46, float %1386, float %898, float %1390)  ; FMad(a,b,c)
  %1392 = fmul fast float %1384, %891
  %1393 = call float @dx.op.tertiary.f32(i32 46, float %1385, float %892, float %1392)  ; FMad(a,b,c)
  %1394 = call float @dx.op.tertiary.f32(i32 46, float %1386, float %893, float %1393)  ; FMad(a,b,c)
  %1395 = call float @dx.op.unary.f32(i32 6, float %1388)  ; FAbs(value)
  %1396 = call float @dx.op.unary.f32(i32 6, float %1391)  ; FAbs(value)
  %1397 = fadd fast float %1395, %1394
  %1398 = fadd fast float %1397, %1396
  %1399 = fdiv fast float 1.000000e+00, %1398
  %1400 = fadd fast float %1391, %1388
  %1401 = fsub fast float %1388, %1391
  %1402 = fmul fast float %1400, 5.000000e-01
  %1403 = fmul fast float %1402, %1399
  %1404 = fadd fast float %1403, 5.000000e-01
  %1405 = fmul fast float %1401, 5.000000e-01
  %1406 = fmul fast float %1405, %1399
  %1407 = fadd fast float %1406, 5.000000e-01
  br label %1408

; <label>:1408                                    ; preds = %1381, %1377, %1375, %420, %417
  %1409 = phi float [ %136, %417 ], [ %136, %420 ], [ %136, %1377 ], [ %1362, %1381 ], [ %136, %1375 ]
  %1410 = phi float [ %137, %417 ], [ %137, %420 ], [ %137, %1377 ], [ %1367, %1381 ], [ %137, %1375 ]
  %1411 = phi float [ %138, %417 ], [ %138, %420 ], [ %138, %1377 ], [ %1404, %1381 ], [ %138, %1375 ]
  %1412 = phi float [ %139, %417 ], [ %139, %420 ], [ %139, %1377 ], [ %1366, %1381 ], [ %139, %1375 ]
  %1413 = phi float [ %140, %417 ], [ %140, %420 ], [ %140, %1377 ], [ %1407, %1381 ], [ %140, %1375 ]
  %1414 = phi float [ %107, %417 ], [ %107, %420 ], [ %1378, %1377 ], [ %1378, %1381 ], [ %107, %1375 ]
  %1415 = phi float [ %115, %417 ], [ %115, %420 ], [ %1379, %1377 ], [ %1379, %1381 ], [ %115, %1375 ]
  %1416 = phi float [ %123, %417 ], [ %123, %420 ], [ %1380, %1377 ], [ %1380, %1381 ], [ %123, %1375 ]
  %1417 = phi float [ %141, %417 ], [ %141, %420 ], [ %1368, %1377 ], [ %1368, %1381 ], [ %141, %1375 ]
  br i1 %419, label %1418, label %1460, !dx.controlflow.hints !82

; <label>:1418                                    ; preds = %1408
  %1419 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %1420 = extractvalue %dx.types.CBufRet.i32 %1419, 1
  %1421 = icmp eq i32 %1420, 5
  %1422 = fcmp fast ole float %1414, 0x3F69A5C380000000
  %1423 = fcmp fast ole float %1415, 0x3F69A5C380000000
  %1424 = fcmp fast ole float %1416, 0x3F69A5C380000000
  %1425 = fmul fast float %1414, 0x4029D70A40000000
  %1426 = fmul fast float %1415, 0x4029D70A40000000
  %1427 = fmul fast float %1416, 0x4029D70A40000000
  %1428 = call float @dx.op.unary.f32(i32 23, float %1414)  ; Log(value)
  %1429 = call float @dx.op.unary.f32(i32 23, float %1415)  ; Log(value)
  %1430 = call float @dx.op.unary.f32(i32 23, float %1416)  ; Log(value)
  %1431 = fmul fast float %1428, 0x3FDAAAAAA0000000
  %1432 = fmul fast float %1429, 0x3FDAAAAAA0000000
  %1433 = fmul fast float %1430, 0x3FDAAAAAA0000000
  %1434 = call float @dx.op.unary.f32(i32 21, float %1431)  ; Exp(value)
  %1435 = call float @dx.op.unary.f32(i32 21, float %1432)  ; Exp(value)
  %1436 = call float @dx.op.unary.f32(i32 21, float %1433)  ; Exp(value)
  %1437 = fmul fast float %1434, 0x3FF0E147A0000000
  %1438 = fmul fast float %1435, 0x3FF0E147A0000000
  %1439 = fmul fast float %1436, 0x3FF0E147A0000000
  %1440 = fadd fast float %1437, 0xBFAC28F5C0000000
  %1441 = fadd fast float %1438, 0xBFAC28F5C0000000
  %1442 = fadd fast float %1439, 0xBFAC28F5C0000000
  %1443 = select i1 %1422, float %1425, float %1440
  %1444 = select i1 %1423, float %1426, float %1441
  %1445 = select i1 %1424, float %1427, float %1442
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %69, i32 %11, i32 undef, float %1443, float %1444, float %1445, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br i1 %1421, label %1460, label %1446, !dx.controlflow.hints !83

; <label>:1446                                    ; preds = %1418
  %1447 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %1448 = extractvalue %dx.types.CBufRet.i32 %1447, 1
  switch i32 %1448, label %1458 [
    i32 1, label %1449
    i32 2, label %1450
    i32 3, label %1457
  ], !dx.controlflow.hints !84

; <label>:1449                                    ; preds = %1446
  br label %1458

; <label>:1450                                    ; preds = %1446
  %1451 = fcmp fast une float %1409, 0.000000e+00
  %1452 = call float @dx.op.unary.f32(i32 23, float %1409)  ; Log(value)
  %1453 = fadd fast float %1452, 1.600000e+01
  %1454 = fmul fast float %1453, 3.125000e-02
  %1455 = call float @dx.op.unary.f32(i32 7, float %1454)  ; Saturate(value)
  %1456 = select i1 %1451, float %1455, float 0.000000e+00
  br label %1458

; <label>:1457                                    ; preds = %1446
  br label %1458

; <label>:1458                                    ; preds = %1457, %1450, %1449, %1446
  %1459 = phi float [ 0.000000e+00, %1446 ], [ %134, %1457 ], [ %1456, %1450 ], [ %135, %1449 ]
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %69, i32 %11, i32 undef, float %1411, float %1413, float %1412, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %69, i32 %11, i32 undef, float %1417, float %1410, float %1459, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1460

; <label>:1460                                    ; preds = %1458, %1418, %1408
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
!dx.entryPoints = !{!23}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !13, !17, !19}
!5 = !{!6, !8, !10, !11, !12}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<unsigned int, 4> >"]* undef, !"", i32 5, i32 0, i32 -1, i32 2, i32 0, !9}
!9 = !{i32 0, i32 5}
!10 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 17, i32 1, i32 11, i32 0, null}
!11 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 18, i32 1, i32 11, i32 0, null}
!12 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 22, i32 1, i32 11, i32 0, null}
!13 = !{!14, !15, !16}
!14 = !{i32 0, %"class.RWTexture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!15 = !{i32 1, %"class.RWTexture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!16 = !{i32 2, %"class.RWTexture2D<vector<float, 4> >"* undef, !"", i32 0, i32 4, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!17 = !{!18}
!18 = !{i32 0, %GfxVirtualTexturingComposite* undef, !"", i32 0, i32 0, i32 1, i32 4208, null}
!19 = !{!20, !21, !22}
!20 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!21 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!22 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!23 = !{void ()* @cs_compose_volume_decals_to_scratch_with_cutout_ompv, !"cs_compose_volume_decals_to_scratch_with_cutout_ompv", null, !4, !24}
!24 = !{i32 0, i64 8464, i32 4, !25}
!25 = !{i32 8, i32 8, i32 1}
!26 = !{!27, !27, i64 0}
!27 = !{!"int", !28, i64 0}
!28 = !{!"omnipotent char", !29, i64 0}
!29 = !{!"Simple C/C++ TBAA"}
!30 = !{!31, !33, !34, !35}
!31 = distinct !{!31, !32, !"\01?GetPageIndexAndTileDataBits@@YAXIIV?$vector@I$02@@AIAI11@Z: %pageIndex"}
!32 = distinct !{!32, !"\01?GetPageIndexAndTileDataBits@@YAXIIV?$vector@I$02@@AIAI11@Z"}
!33 = distinct !{!33, !32, !"\01?GetPageIndexAndTileDataBits@@YAXIIV?$vector@I$02@@AIAI11@Z: %tileDataBitsLo"}
!34 = distinct !{!34, !32, !"\01?GetPageIndexAndTileDataBits@@YAXIIV?$vector@I$02@@AIAI11@Z: %tileDataBitsHi"}
!35 = distinct !{!35, !36, !"\01?CompositeScratch_InitContext@@YA?AUCompositeScratchContext@@IV?$vector@I$02@@0_N@Z: %agg.result"}
!36 = distinct !{!36, !"\01?CompositeScratch_InitContext@@YA?AUCompositeScratchContext@@IV?$vector@I$02@@0_N@Z"}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 1}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 1}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 1}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 1}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 1}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 1}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 1}
!52 = !{!53, !53, i64 0}
!53 = !{!"float", !28, i64 0}
!54 = !{!55, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70}
!55 = distinct !{!55, !56, !"\01?VHM_SampleNormal_Internal@@YA?AV?$vector@M$02@@UVHM_SampleContext@@MMAIAV1@1@Z: %tangentX"}
!56 = distinct !{!56, !"\01?VHM_SampleNormal_Internal@@YA?AV?$vector@M$02@@UVHM_SampleContext@@MMAIAV1@1@Z"}
!57 = distinct !{!57, !56, !"\01?VHM_SampleNormal_Internal@@YA?AV?$vector@M$02@@UVHM_SampleContext@@MMAIAV1@1@Z: %tangentY"}
!58 = distinct !{!58, !59, !"\01?VHM_SampleTangentFrameAtWorldPos@@YAXV?$vector@M$01@@MMAIAV?$vector@M$02@@11@Z: %tangentX"}
!59 = distinct !{!59, !"\01?VHM_SampleTangentFrameAtWorldPos@@YAXV?$vector@M$01@@MMAIAV?$vector@M$02@@11@Z"}
!60 = distinct !{!60, !59, !"\01?VHM_SampleTangentFrameAtWorldPos@@YAXV?$vector@M$01@@MMAIAV?$vector@M$02@@11@Z: %tangentY"}
!61 = distinct !{!61, !59, !"\01?VHM_SampleTangentFrameAtWorldPos@@YAXV?$vector@M$01@@MMAIAV?$vector@M$02@@11@Z: %normal"}
!62 = distinct !{!62, !63, !"\01?EstimateTangentFrameAtVTUVs@@YAXV?$Texture2D@V?$vector@M$03@@@@IV?$vector@M$01@@UPaddedUVs@@V2@MAIAV?$vector@M$02@@44@Z: %tangentX"}
!63 = distinct !{!63, !"\01?EstimateTangentFrameAtVTUVs@@YAXV?$Texture2D@V?$vector@M$03@@@@IV?$vector@M$01@@UPaddedUVs@@V2@MAIAV?$vector@M$02@@44@Z"}
!64 = distinct !{!64, !63, !"\01?EstimateTangentFrameAtVTUVs@@YAXV?$Texture2D@V?$vector@M$03@@@@IV?$vector@M$01@@UPaddedUVs@@V2@MAIAV?$vector@M$02@@44@Z: %tangentY"}
!65 = distinct !{!65, !63, !"\01?EstimateTangentFrameAtVTUVs@@YAXV?$Texture2D@V?$vector@M$03@@@@IV?$vector@M$01@@UPaddedUVs@@V2@MAIAV?$vector@M$02@@44@Z: %normal"}
!66 = distinct !{!66, !67, !"\01?ApplyDecalsAvt@@YAXUCompositeScratchContext@@UTerrainTileDataVT@@AIAV?$vector@M$03@@22@Z: %albedoMetalness"}
!67 = distinct !{!67, !"\01?ApplyDecalsAvt@@YAXUCompositeScratchContext@@UTerrainTileDataVT@@AIAV?$vector@M$03@@22@Z"}
!68 = distinct !{!68, !67, !"\01?ApplyDecalsAvt@@YAXUCompositeScratchContext@@UTerrainTileDataVT@@AIAV?$vector@M$03@@22@Z: %normalOcclusionGloss"}
!69 = distinct !{!69, !67, !"\01?ApplyDecalsAvt@@YAXUCompositeScratchContext@@UTerrainTileDataVT@@AIAV?$vector@M$03@@22@Z: %emissive"}
!70 = distinct !{!70, !71, !"\01?CompositeScratch_VolumeDecals@@YA_NIUCompositeScratchContext@@UCompositeScratchResults@@@Z: %results"}
!71 = distinct !{!71, !"\01?CompositeScratch_VolumeDecals@@YA_NIUCompositeScratchContext@@UCompositeScratchResults@@@Z"}
!72 = !{!62, !64, !65, !66, !68, !69, !70}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 2}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 2}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 2}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 2}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 2}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 1}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 2}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 1}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 2}

