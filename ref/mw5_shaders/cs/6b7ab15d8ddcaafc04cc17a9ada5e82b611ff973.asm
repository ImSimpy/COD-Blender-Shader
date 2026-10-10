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
; shader hash: f5378c597d533507d93fe7ab15c461dc
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
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
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
  %34 = add nuw i32 %33, 223
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
  %47 = load i32, i32* %46, align 4, !tbaa !24, !noalias !28
  %48 = and i32 %47, 255
  %49 = or i32 %45, 1
  %50 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %49
  %51 = load i32, i32* %50, align 4, !tbaa !24, !noalias !28
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
  br i1 %79, label %93, label %84, !dx.controlflow.hints !35

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
  br i1 %79, label %133, label %124, !dx.controlflow.hints !36

; <label>:124                                     ; preds = %93
  switch i32 %78, label %133 [
    i32 1, label %125
    i32 2, label %126
    i32 3, label %132
  ], !dx.controlflow.hints !37

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
  br i1 %143, label %144, label %238, !dx.controlflow.hints !38

; <label>:144                                     ; preds = %133
  br label %145

; <label>:145                                     ; preds = %232, %144
  %146 = phi i32 [ %233, %232 ], [ -1, %144 ]
  %147 = phi i32 [ %234, %232 ], [ 0, %144 ]
  %148 = phi float [ %235, %232 ], [ -1.000000e+09, %144 ]
  %149 = phi i32 [ %52, %232 ], [ %51, %144 ]
  %150 = phi i32 [ %236, %232 ], [ 0, %144 ]
  %151 = icmp eq i32 %149, 0
  br i1 %151, label %232, label %152

; <label>:152                                     ; preds = %145
  br label %153

; <label>:153                                     ; preds = %186, %152
  %154 = phi i32 [ %187, %186 ], [ %146, %152 ]
  %155 = phi i32 [ %188, %186 ], [ %147, %152 ]
  %156 = phi float [ %189, %186 ], [ %148, %152 ]
  %157 = phi i32 [ %162, %186 ], [ %149, %152 ]
  %158 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %157)  ; FirstbitLo(value)
  %159 = and i32 %158, 31
  %160 = shl i32 1, %159
  %161 = xor i32 %160, -1
  %162 = and i32 %157, %161
  %163 = shl i32 %150, 5
  %164 = add i32 %158, %163
  %165 = mul i32 %164, 3
  %166 = add i32 %165, 30
  %167 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 %166)  ; CBufferLoadLegacy(handle,regIndex)
  %168 = extractvalue %dx.types.CBufRet.i32 %167, 1
  %169 = bitcast i32 %168 to float
  %170 = extractvalue %dx.types.CBufRet.i32 %167, 2
  %171 = bitcast i32 %170 to float
  %172 = fsub fast float %76, %169
  %173 = fsub fast float %77, %171
  %174 = add i32 %165, 32
  %175 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 %174)  ; CBufferLoadLegacy(handle,regIndex)
  %176 = extractvalue %dx.types.CBufRet.i32 %175, 1
  %177 = and i32 %176, 1048575
  %178 = uitofp i32 %177 to float
  %179 = fcmp fast olt float %172, 0.000000e+00
  %180 = fcmp fast olt float %173, 0.000000e+00
  %181 = or i1 %179, %180
  %182 = fcmp fast ogt float %172, %178
  %183 = fcmp fast ogt float %173, %178
  %184 = or i1 %182, %183
  %185 = or i1 %181, %184
  br i1 %185, label %186, label %191, !dx.controlflow.hints !39

; <label>:186                                     ; preds = %230, %191, %153
  %187 = phi i32 [ %154, %153 ], [ %164, %230 ], [ %193, %191 ]
  %188 = phi i32 [ %155, %153 ], [ %194, %230 ], [ %194, %191 ]
  %189 = phi float [ %156, %153 ], [ %228, %230 ], [ %156, %191 ]
  %190 = icmp eq i32 %162, 0
  br i1 %190, label %231, label %153

; <label>:191                                     ; preds = %153
  %192 = icmp ne i32 %155, 0
  %193 = select i1 %192, i32 %154, i32 %164
  %194 = select i1 %192, i32 %155, i32 1
  %195 = fdiv fast float %172, %178
  %196 = fdiv fast float %173, %178
  %197 = add i32 %165, 31
  %198 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 %197)  ; CBufferLoadLegacy(handle,regIndex)
  %199 = extractvalue %dx.types.CBufRet.i32 %198, 2
  %200 = lshr i32 %199, 24
  %201 = and i32 %200, 7
  %202 = or i32 %201, 8
  %203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 %202)  ; CBufferLoadLegacy(handle,regIndex)
  %204 = extractvalue %dx.types.CBufRet.f32 %203, 0
  %205 = extractvalue %dx.types.CBufRet.f32 %203, 2
  %206 = fdiv fast float 5.000000e-01, %204
  %207 = fmul fast float %206, 2.000000e+00
  %208 = fsub fast float 1.000000e+00, %207
  %209 = fmul fast float %208, %195
  %210 = fmul fast float %208, %196
  %211 = fadd fast float %209, %206
  %212 = fadd fast float %210, %206
  %213 = fmul fast float %211, %205
  %214 = fmul fast float %212, %205
  %215 = extractvalue %dx.types.CBufRet.i32 %198, 1
  %216 = and i32 %215, 16777215
  %217 = add i32 %216, 0
  %218 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %217, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %219 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 %166)  ; CBufferLoadLegacy(handle,regIndex)
  %220 = extractvalue %dx.types.CBufRet.i32 %219, 3
  %221 = bitcast i32 %220 to float
  %222 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 %197)  ; CBufferLoadLegacy(handle,regIndex)
  %223 = extractvalue %dx.types.CBufRet.i32 %222, 0
  %224 = bitcast i32 %223 to float
  %225 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %218, %dx.types.Handle %8, float %213, float %214, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %226 = extractvalue %dx.types.ResRet.f32 %225, 0
  %227 = fmul fast float %226, %224
  %228 = fadd fast float %227, %221
  %229 = fcmp fast ogt float %228, %156
  br i1 %229, label %230, label %186, !dx.controlflow.hints !40

; <label>:230                                     ; preds = %191
  br label %186

; <label>:231                                     ; preds = %186
  br label %232

; <label>:232                                     ; preds = %231, %145
  %233 = phi i32 [ %146, %145 ], [ %187, %231 ]
  %234 = phi i32 [ %147, %145 ], [ %188, %231 ]
  %235 = phi float [ %148, %145 ], [ %189, %231 ]
  %236 = add nuw nsw i32 %150, 1
  %237 = icmp eq i32 %236, 2
  br i1 %237, label %275, label %145

; <label>:238                                     ; preds = %133
  %239 = icmp eq i32 %51, 0
  br i1 %239, label %272, label %240

; <label>:240                                     ; preds = %238
  br label %241

; <label>:241                                     ; preds = %269, %240
  %242 = phi i32 [ %247, %269 ], [ %51, %240 ]
  %243 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %242)  ; FirstbitLo(value)
  %244 = and i32 %243, 31
  %245 = shl i32 1, %244
  %246 = xor i32 %245, -1
  %247 = and i32 %242, %246
  %248 = mul i32 %243, 3
  %249 = add i32 %248, 30
  %250 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 %249)  ; CBufferLoadLegacy(handle,regIndex)
  %251 = extractvalue %dx.types.CBufRet.i32 %250, 1
  %252 = bitcast i32 %251 to float
  %253 = extractvalue %dx.types.CBufRet.i32 %250, 2
  %254 = bitcast i32 %253 to float
  %255 = fsub fast float %76, %252
  %256 = fsub fast float %77, %254
  %257 = add i32 %248, 32
  %258 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 %257)  ; CBufferLoadLegacy(handle,regIndex)
  %259 = extractvalue %dx.types.CBufRet.i32 %258, 1
  %260 = and i32 %259, 1048575
  %261 = uitofp i32 %260 to float
  %262 = fcmp fast olt float %255, 0.000000e+00
  %263 = fcmp fast olt float %256, 0.000000e+00
  %264 = or i1 %262, %263
  %265 = fcmp fast ogt float %255, %261
  %266 = fcmp fast ogt float %256, %261
  %267 = or i1 %265, %266
  %268 = or i1 %264, %267
  br i1 %268, label %269, label %278, !dx.controlflow.hints !41

; <label>:269                                     ; preds = %241
  %270 = icmp eq i32 %247, 0
  br i1 %270, label %271, label %241

; <label>:271                                     ; preds = %269
  br label %272

; <label>:272                                     ; preds = %271, %238
  %273 = icmp eq i32 %52, 0
  br i1 %273, label %279, label %274

; <label>:274                                     ; preds = %272
  br label %1323

; <label>:275                                     ; preds = %232
  br label %279

; <label>:276                                     ; preds = %1352, %1323
  %277 = phi i32 [ %1330, %1323 ], [ -1, %1352 ]
  br label %279

; <label>:278                                     ; preds = %241
  br label %279

; <label>:279                                     ; preds = %278, %276, %275, %272
  %280 = phi i32 [ -1, %272 ], [ %233, %275 ], [ %277, %276 ], [ %243, %278 ]
  %281 = icmp ne i32 %280, -1
  br i1 %281, label %282, label %1270, !dx.controlflow.hints !42

; <label>:282                                     ; preds = %279
  %283 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 22)  ; CBufferLoadLegacy(handle,regIndex)
  %284 = extractvalue %dx.types.CBufRet.i32 %283, 2
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %1270, label %286, !dx.controlflow.hints !43

; <label>:286                                     ; preds = %282
  %287 = mul i32 %280, 3
  %288 = add i32 %287, 30
  %289 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 %288)  ; CBufferLoadLegacy(handle,regIndex)
  %290 = extractvalue %dx.types.CBufRet.i32 %289, 1
  %291 = bitcast i32 %290 to float
  %292 = extractvalue %dx.types.CBufRet.i32 %289, 2
  %293 = bitcast i32 %292 to float
  %294 = fsub fast float %76, %291
  %295 = fsub fast float %77, %293
  %296 = add i32 %287, 32
  %297 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 %296)  ; CBufferLoadLegacy(handle,regIndex)
  %298 = extractvalue %dx.types.CBufRet.i32 %297, 1
  %299 = and i32 %298, 1048575
  %300 = uitofp i32 %299 to float
  %301 = fdiv fast float %294, %300
  %302 = fdiv fast float %295, %300
  %303 = add i32 %287, 31
  %304 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 %303)  ; CBufferLoadLegacy(handle,regIndex)
  %305 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %306 = extractvalue %dx.types.CBufRet.i32 %305, 3
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %308, label %324, !dx.controlflow.hints !44

; <label>:308                                     ; preds = %286
  %309 = extractvalue %dx.types.CBufRet.i32 %304, 2
  %310 = lshr i32 %309, 24
  %311 = and i32 %310, 7
  %312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 %311)  ; CBufferLoadLegacy(handle,regIndex)
  %313 = extractvalue %dx.types.CBufRet.f32 %312, 0
  %314 = extractvalue %dx.types.CBufRet.f32 %312, 2
  %315 = fdiv fast float 5.000000e-01, %313
  %316 = fmul fast float %315, 2.000000e+00
  %317 = fsub fast float 1.000000e+00, %316
  %318 = fmul fast float %317, %301
  %319 = fmul fast float %317, %302
  %320 = fadd fast float %318, %315
  %321 = fadd fast float %319, %315
  %322 = fmul fast float %320, %314
  %323 = fmul fast float %321, %314
  br label %324

; <label>:324                                     ; preds = %308, %286
  %325 = phi float [ %322, %308 ], [ %301, %286 ]
  %326 = phi float [ %323, %308 ], [ %302, %286 ]
  %327 = extractvalue %dx.types.CBufRet.i32 %304, 1
  %328 = and i32 %327, 16777215
  %329 = add i32 %328, 0
  %330 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %329, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %331 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 %288)  ; CBufferLoadLegacy(handle,regIndex)
  %332 = extractvalue %dx.types.CBufRet.i32 %331, 3
  %333 = bitcast i32 %332 to float
  %334 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 %303)  ; CBufferLoadLegacy(handle,regIndex)
  %335 = extractvalue %dx.types.CBufRet.i32 %334, 0
  %336 = bitcast i32 %335 to float
  %337 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %330, %dx.types.Handle %8, float %325, float %326, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %338 = extractvalue %dx.types.ResRet.f32 %337, 0
  %339 = fmul fast float %338, %336
  %340 = fadd fast float %339, %333
  %341 = extractvalue %dx.types.CBufRet.i32 %334, 2
  %342 = lshr i32 %341, 24
  %343 = and i32 %342, 7
  %344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 %343)  ; CBufferLoadLegacy(handle,regIndex)
  %345 = extractvalue %dx.types.CBufRet.f32 %344, 0
  %346 = fptoui float %345 to i32
  %347 = extractvalue %dx.types.CBufRet.i32 %334, 1
  %348 = and i32 %347, 16777215
  %349 = add i32 %348, 0
  %350 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %349, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %351 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 %296)  ; CBufferLoadLegacy(handle,regIndex)
  %352 = extractvalue %dx.types.CBufRet.i32 %351, 1
  %353 = and i32 %352, 1048575
  %354 = uitofp i32 %353 to float
  %355 = uitofp i32 %346 to float
  %356 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 %288)  ; CBufferLoadLegacy(handle,regIndex)
  %357 = extractvalue %dx.types.CBufRet.i32 %356, 3
  %358 = bitcast i32 %357 to float
  %359 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 %303)  ; CBufferLoadLegacy(handle,regIndex)
  %360 = extractvalue %dx.types.CBufRet.i32 %359, 0
  %361 = bitcast i32 %360 to float
  %362 = fdiv fast float 1.000000e+00, %355
  %363 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %364 = extractvalue %dx.types.CBufRet.i32 %363, 3
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %692, label %366, !dx.controlflow.hints !45

; <label>:366                                     ; preds = %324
  %367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %368 = extractvalue %dx.types.CBufRet.f32 %367, 2
  %369 = extractvalue %dx.types.CBufRet.f32 %367, 3
  %370 = fmul fast float %368, %325
  %371 = fmul fast float %369, %326
  %372 = extractvalue %dx.types.CBufRet.f32 %367, 0
  %373 = extractvalue %dx.types.CBufRet.f32 %367, 1
  %374 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %375 = extractvalue %dx.types.CBufRet.i32 %374, 0
  %376 = extractvalue %dx.types.CBufRet.i32 %374, 1
  %377 = extractvalue %dx.types.CBufRet.i32 %374, 2
  %378 = extractvalue %dx.types.CBufRet.i32 %374, 3
  %379 = mul i32 %377, %377
  %380 = fadd fast float %368, 0xBF847AE140000000
  %381 = fadd fast float %369, 0xBF847AE140000000
  %382 = call float @dx.op.binary.f32(i32 35, float %370, float 0.000000e+00)  ; FMax(a,b)
  %383 = call float @dx.op.binary.f32(i32 35, float %371, float 0.000000e+00)  ; FMax(a,b)
  %384 = call float @dx.op.binary.f32(i32 36, float %382, float %380)  ; FMin(a,b)
  %385 = call float @dx.op.binary.f32(i32 36, float %383, float %381)  ; FMin(a,b)
  %386 = fdiv fast float %384, %372
  %387 = fdiv fast float %385, %373
  %388 = fptoui float %386 to i32
  %389 = fptoui float %387 to i32
  %390 = mul i32 %389, %375
  %391 = add i32 %390, %388
  %392 = lshr i32 %391, 1
  %393 = shl i32 %392, 2
  %394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %393, i32 undef)  ; BufferLoad(srv,index,wot)
  %395 = extractvalue %dx.types.ResRet.i32 %394, 0
  %396 = shl i32 %391, 4
  %397 = and i32 %396, 16
  %398 = lshr i32 %395, %397
  %399 = and i32 %398, 255
  %400 = lshr i32 %398, 8
  %401 = and i32 %400, 31
  %402 = shl i32 1, %401
  %403 = uitofp i32 %402 to float
  %404 = fmul fast float %403, %384
  %405 = fdiv fast float %404, %368
  %406 = fmul fast float %403, %385
  %407 = fdiv fast float %406, %369
  %408 = call float @dx.op.unary.f32(i32 22, float %405)  ; Frc(value)
  %409 = call float @dx.op.unary.f32(i32 22, float %407)  ; Frc(value)
  %410 = uitofp i32 %376 to float
  %411 = fmul fast float %408, %410
  %412 = fmul fast float %409, %410
  %413 = uitofp i32 %378 to float
  %414 = fadd fast float %411, %413
  %415 = fadd fast float %412, %413
  %416 = mul i32 %379, %399
  %417 = fadd fast float %414, -1.000000e+00
  %418 = fadd fast float %415, -1.000000e+00
  %419 = call float @dx.op.unary.f32(i32 22, float %417)  ; Frc(value)
  %420 = fptoui float %417 to i32
  %421 = fptoui float %415 to i32
  %422 = getelementptr [4 x i32], [4 x i32]* %17, i32 0, i32 0
  %423 = getelementptr [4 x i32], [4 x i32]* %18, i32 0, i32 0
  store i32 %420, i32* %422, align 4
  store i32 %421, i32* %423, align 4
  %424 = add i32 %420, 1
  %425 = getelementptr [4 x i32], [4 x i32]* %17, i32 0, i32 1
  %426 = getelementptr [4 x i32], [4 x i32]* %18, i32 0, i32 1
  store i32 %424, i32* %425, align 4
  store i32 %421, i32* %426, align 4
  %427 = add i32 %421, 1
  %428 = getelementptr [4 x i32], [4 x i32]* %17, i32 0, i32 2
  %429 = getelementptr [4 x i32], [4 x i32]* %18, i32 0, i32 2
  store i32 %420, i32* %428, align 4
  store i32 %427, i32* %429, align 4
  %430 = getelementptr [4 x i32], [4 x i32]* %17, i32 0, i32 3
  %431 = getelementptr [4 x i32], [4 x i32]* %18, i32 0, i32 3
  store i32 %424, i32* %430, align 4
  store i32 %427, i32* %431, align 4
  %432 = add i32 %377, -1
  br label %433

; <label>:433                                     ; preds = %456, %366
  %434 = phi i32 [ %421, %366 ], [ %460, %456 ]
  %435 = phi i32 [ %420, %366 ], [ %458, %456 ]
  %436 = phi i32 [ 0, %366 ], [ %454, %456 ]
  %437 = call i32 @dx.op.binary.i32(i32 40, i32 %435, i32 %432)  ; UMin(a,b)
  %438 = call i32 @dx.op.binary.i32(i32 40, i32 %434, i32 %432)  ; UMin(a,b)
  %439 = mul i32 %438, %377
  %440 = add i32 %437, %416
  %441 = add i32 %440, %439
  %442 = lshr i32 %441, 1
  %443 = shl i32 %442, 2
  %444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %443, i32 undef)  ; BufferLoad(srv,index,wot)
  %445 = extractvalue %dx.types.ResRet.i32 %444, 0
  %446 = shl i32 %441, 4
  %447 = and i32 %446, 16
  %448 = lshr i32 %445, %447
  %449 = and i32 %448, 65535
  %450 = uitofp i32 %449 to float
  %451 = fmul fast float %450, 0x3EF0002000000000
  %452 = call float @dx.op.unary.f32(i32 7, float %451)  ; Saturate(value)
  %453 = getelementptr inbounds [4 x float], [4 x float]* %26, i32 0, i32 %436
  store float %452, float* %453, align 4, !tbaa !46, !noalias !48
  %454 = add nuw nsw i32 %436, 1
  %455 = icmp eq i32 %454, 4
  br i1 %455, label %461, label %456

; <label>:456                                     ; preds = %433
  %457 = getelementptr [4 x i32], [4 x i32]* %17, i32 0, i32 %454
  %458 = load i32, i32* %457, align 4
  %459 = getelementptr [4 x i32], [4 x i32]* %18, i32 0, i32 %454
  %460 = load i32, i32* %459, align 4
  br label %433

; <label>:461                                     ; preds = %433
  %462 = fadd fast float %414, 1.000000e+00
  %463 = fadd fast float %415, 1.000000e+00
  %464 = call float @dx.op.unary.f32(i32 22, float %415)  ; Frc(value)
  %465 = fsub fast float 1.000000e+00, %419
  %466 = getelementptr inbounds [4 x float], [4 x float]* %26, i32 0, i32 0
  %467 = load float, float* %466, align 4, !tbaa !46, !noalias !48
  %468 = fmul fast float %467, %465
  %469 = getelementptr inbounds [4 x float], [4 x float]* %26, i32 0, i32 1
  %470 = load float, float* %469, align 4, !tbaa !46, !noalias !48
  %471 = fmul fast float %470, %419
  %472 = fadd fast float %471, %468
  %473 = getelementptr inbounds [4 x float], [4 x float]* %26, i32 0, i32 2
  %474 = load float, float* %473, align 4, !tbaa !46, !noalias !48
  %475 = getelementptr inbounds [4 x float], [4 x float]* %26, i32 0, i32 3
  %476 = load float, float* %475, align 4, !tbaa !46, !noalias !48
  %477 = fmul fast float %476, %419
  %478 = fsub fast float 1.000000e+00, %464
  %479 = fmul fast float %472, %478
  %480 = call float @dx.op.unary.f32(i32 22, float %462)  ; Frc(value)
  %481 = fptoui float %462 to i32
  %482 = getelementptr [4 x i32], [4 x i32]* %15, i32 0, i32 0
  %483 = getelementptr [4 x i32], [4 x i32]* %16, i32 0, i32 0
  store i32 %481, i32* %482, align 4
  store i32 %421, i32* %483, align 4
  %484 = add i32 %481, 1
  %485 = getelementptr [4 x i32], [4 x i32]* %15, i32 0, i32 1
  %486 = getelementptr [4 x i32], [4 x i32]* %16, i32 0, i32 1
  store i32 %484, i32* %485, align 4
  store i32 %421, i32* %486, align 4
  %487 = getelementptr [4 x i32], [4 x i32]* %15, i32 0, i32 2
  %488 = getelementptr [4 x i32], [4 x i32]* %16, i32 0, i32 2
  store i32 %481, i32* %487, align 4
  store i32 %427, i32* %488, align 4
  %489 = getelementptr [4 x i32], [4 x i32]* %15, i32 0, i32 3
  %490 = getelementptr [4 x i32], [4 x i32]* %16, i32 0, i32 3
  store i32 %484, i32* %489, align 4
  store i32 %427, i32* %490, align 4
  br label %491

; <label>:491                                     ; preds = %514, %461
  %492 = phi i32 [ %421, %461 ], [ %518, %514 ]
  %493 = phi i32 [ %481, %461 ], [ %516, %514 ]
  %494 = phi i32 [ 0, %461 ], [ %512, %514 ]
  %495 = call i32 @dx.op.binary.i32(i32 40, i32 %493, i32 %432)  ; UMin(a,b)
  %496 = call i32 @dx.op.binary.i32(i32 40, i32 %492, i32 %432)  ; UMin(a,b)
  %497 = mul i32 %496, %377
  %498 = add i32 %495, %416
  %499 = add i32 %498, %497
  %500 = lshr i32 %499, 1
  %501 = shl i32 %500, 2
  %502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %501, i32 undef)  ; BufferLoad(srv,index,wot)
  %503 = extractvalue %dx.types.ResRet.i32 %502, 0
  %504 = shl i32 %499, 4
  %505 = and i32 %504, 16
  %506 = lshr i32 %503, %505
  %507 = and i32 %506, 65535
  %508 = uitofp i32 %507 to float
  %509 = fmul fast float %508, 0x3EF0002000000000
  %510 = call float @dx.op.unary.f32(i32 7, float %509)  ; Saturate(value)
  %511 = getelementptr inbounds [4 x float], [4 x float]* %25, i32 0, i32 %494
  store float %510, float* %511, align 4, !tbaa !46, !noalias !48
  %512 = add nuw nsw i32 %494, 1
  %513 = icmp eq i32 %512, 4
  br i1 %513, label %519, label %514

; <label>:514                                     ; preds = %491
  %515 = getelementptr [4 x i32], [4 x i32]* %15, i32 0, i32 %512
  %516 = load i32, i32* %515, align 4
  %517 = getelementptr [4 x i32], [4 x i32]* %16, i32 0, i32 %512
  %518 = load i32, i32* %517, align 4
  br label %491

; <label>:519                                     ; preds = %491
  %520 = fmul fast float %474, %465
  %521 = fadd fast float %477, %520
  %522 = fmul fast float %521, %464
  %523 = fsub fast float 1.000000e+00, %480
  %524 = getelementptr inbounds [4 x float], [4 x float]* %25, i32 0, i32 0
  %525 = load float, float* %524, align 4, !tbaa !46, !noalias !48
  %526 = fmul fast float %525, %523
  %527 = getelementptr inbounds [4 x float], [4 x float]* %25, i32 0, i32 1
  %528 = load float, float* %527, align 4, !tbaa !46, !noalias !48
  %529 = fmul fast float %528, %480
  %530 = fadd fast float %529, %526
  %531 = getelementptr inbounds [4 x float], [4 x float]* %25, i32 0, i32 2
  %532 = load float, float* %531, align 4, !tbaa !46, !noalias !48
  %533 = getelementptr inbounds [4 x float], [4 x float]* %25, i32 0, i32 3
  %534 = load float, float* %533, align 4, !tbaa !46, !noalias !48
  %535 = fmul fast float %534, %480
  %536 = fmul fast float %530, %478
  %537 = call float @dx.op.unary.f32(i32 22, float %414)  ; Frc(value)
  %538 = fptoui float %414 to i32
  %539 = fptoui float %418 to i32
  %540 = getelementptr [4 x i32], [4 x i32]* %19, i32 0, i32 0
  %541 = getelementptr [4 x i32], [4 x i32]* %20, i32 0, i32 0
  store i32 %538, i32* %540, align 4
  store i32 %539, i32* %541, align 4
  %542 = add i32 %538, 1
  %543 = getelementptr [4 x i32], [4 x i32]* %19, i32 0, i32 1
  %544 = getelementptr [4 x i32], [4 x i32]* %20, i32 0, i32 1
  store i32 %542, i32* %543, align 4
  store i32 %539, i32* %544, align 4
  %545 = add i32 %539, 1
  %546 = getelementptr [4 x i32], [4 x i32]* %19, i32 0, i32 2
  %547 = getelementptr [4 x i32], [4 x i32]* %20, i32 0, i32 2
  store i32 %538, i32* %546, align 4
  store i32 %545, i32* %547, align 4
  %548 = getelementptr [4 x i32], [4 x i32]* %19, i32 0, i32 3
  %549 = getelementptr [4 x i32], [4 x i32]* %20, i32 0, i32 3
  store i32 %542, i32* %548, align 4
  store i32 %545, i32* %549, align 4
  br label %550

; <label>:550                                     ; preds = %573, %519
  %551 = phi i32 [ %539, %519 ], [ %577, %573 ]
  %552 = phi i32 [ %538, %519 ], [ %575, %573 ]
  %553 = phi i32 [ 0, %519 ], [ %571, %573 ]
  %554 = call i32 @dx.op.binary.i32(i32 40, i32 %552, i32 %432)  ; UMin(a,b)
  %555 = call i32 @dx.op.binary.i32(i32 40, i32 %551, i32 %432)  ; UMin(a,b)
  %556 = mul i32 %555, %377
  %557 = add i32 %554, %416
  %558 = add i32 %557, %556
  %559 = lshr i32 %558, 1
  %560 = shl i32 %559, 2
  %561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %560, i32 undef)  ; BufferLoad(srv,index,wot)
  %562 = extractvalue %dx.types.ResRet.i32 %561, 0
  %563 = shl i32 %558, 4
  %564 = and i32 %563, 16
  %565 = lshr i32 %562, %564
  %566 = and i32 %565, 65535
  %567 = uitofp i32 %566 to float
  %568 = fmul fast float %567, 0x3EF0002000000000
  %569 = call float @dx.op.unary.f32(i32 7, float %568)  ; Saturate(value)
  %570 = getelementptr inbounds [4 x float], [4 x float]* %24, i32 0, i32 %553
  store float %569, float* %570, align 4, !tbaa !46, !noalias !48
  %571 = add nuw nsw i32 %553, 1
  %572 = icmp eq i32 %571, 4
  br i1 %572, label %578, label %573

; <label>:573                                     ; preds = %550
  %574 = getelementptr [4 x i32], [4 x i32]* %19, i32 0, i32 %571
  %575 = load i32, i32* %574, align 4
  %576 = getelementptr [4 x i32], [4 x i32]* %20, i32 0, i32 %571
  %577 = load i32, i32* %576, align 4
  br label %550

; <label>:578                                     ; preds = %550
  %579 = fmul fast float %532, %523
  %580 = fadd fast float %535, %579
  %581 = fmul fast float %580, %464
  %582 = call float @dx.op.unary.f32(i32 22, float %418)  ; Frc(value)
  %583 = fsub fast float 1.000000e+00, %537
  %584 = getelementptr inbounds [4 x float], [4 x float]* %24, i32 0, i32 0
  %585 = load float, float* %584, align 4, !tbaa !46, !noalias !48
  %586 = fmul fast float %585, %583
  %587 = getelementptr inbounds [4 x float], [4 x float]* %24, i32 0, i32 1
  %588 = load float, float* %587, align 4, !tbaa !46, !noalias !48
  %589 = fmul fast float %588, %537
  %590 = fadd fast float %589, %586
  %591 = getelementptr inbounds [4 x float], [4 x float]* %24, i32 0, i32 2
  %592 = load float, float* %591, align 4, !tbaa !46, !noalias !48
  %593 = getelementptr inbounds [4 x float], [4 x float]* %24, i32 0, i32 3
  %594 = load float, float* %593, align 4, !tbaa !46, !noalias !48
  %595 = fmul fast float %594, %537
  %596 = fsub fast float 1.000000e+00, %582
  %597 = fmul fast float %590, %596
  %598 = fptoui float %463 to i32
  %599 = getelementptr [4 x i32], [4 x i32]* %13, i32 0, i32 0
  %600 = getelementptr [4 x i32], [4 x i32]* %14, i32 0, i32 0
  store i32 %538, i32* %599, align 4
  store i32 %598, i32* %600, align 4
  %601 = getelementptr [4 x i32], [4 x i32]* %13, i32 0, i32 1
  %602 = getelementptr [4 x i32], [4 x i32]* %14, i32 0, i32 1
  store i32 %542, i32* %601, align 4
  store i32 %598, i32* %602, align 4
  %603 = add i32 %598, 1
  %604 = getelementptr [4 x i32], [4 x i32]* %13, i32 0, i32 2
  %605 = getelementptr [4 x i32], [4 x i32]* %14, i32 0, i32 2
  store i32 %538, i32* %604, align 4
  store i32 %603, i32* %605, align 4
  %606 = getelementptr [4 x i32], [4 x i32]* %13, i32 0, i32 3
  %607 = getelementptr [4 x i32], [4 x i32]* %14, i32 0, i32 3
  store i32 %542, i32* %606, align 4
  store i32 %603, i32* %607, align 4
  br label %608

; <label>:608                                     ; preds = %631, %578
  %609 = phi i32 [ %598, %578 ], [ %635, %631 ]
  %610 = phi i32 [ %538, %578 ], [ %633, %631 ]
  %611 = phi i32 [ 0, %578 ], [ %629, %631 ]
  %612 = call i32 @dx.op.binary.i32(i32 40, i32 %610, i32 %432)  ; UMin(a,b)
  %613 = call i32 @dx.op.binary.i32(i32 40, i32 %609, i32 %432)  ; UMin(a,b)
  %614 = mul i32 %613, %377
  %615 = add i32 %612, %416
  %616 = add i32 %615, %614
  %617 = lshr i32 %616, 1
  %618 = shl i32 %617, 2
  %619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %618, i32 undef)  ; BufferLoad(srv,index,wot)
  %620 = extractvalue %dx.types.ResRet.i32 %619, 0
  %621 = shl i32 %616, 4
  %622 = and i32 %621, 16
  %623 = lshr i32 %620, %622
  %624 = and i32 %623, 65535
  %625 = uitofp i32 %624 to float
  %626 = fmul fast float %625, 0x3EF0002000000000
  %627 = call float @dx.op.unary.f32(i32 7, float %626)  ; Saturate(value)
  %628 = getelementptr inbounds [4 x float], [4 x float]* %23, i32 0, i32 %611
  store float %627, float* %628, align 4, !tbaa !46, !noalias !48
  %629 = add nuw nsw i32 %611, 1
  %630 = icmp eq i32 %629, 4
  br i1 %630, label %636, label %631

; <label>:631                                     ; preds = %608
  %632 = getelementptr [4 x i32], [4 x i32]* %13, i32 0, i32 %629
  %633 = load i32, i32* %632, align 4
  %634 = getelementptr [4 x i32], [4 x i32]* %14, i32 0, i32 %629
  %635 = load i32, i32* %634, align 4
  br label %608

; <label>:636                                     ; preds = %608
  %637 = fmul fast float %592, %583
  %638 = fadd fast float %595, %637
  %639 = fmul fast float %638, %582
  %640 = call float @dx.op.unary.f32(i32 22, float %463)  ; Frc(value)
  %641 = getelementptr inbounds [4 x float], [4 x float]* %23, i32 0, i32 0
  %642 = load float, float* %641, align 4, !tbaa !46, !noalias !48
  %643 = fmul fast float %642, %583
  %644 = getelementptr inbounds [4 x float], [4 x float]* %23, i32 0, i32 1
  %645 = load float, float* %644, align 4, !tbaa !46, !noalias !48
  %646 = fmul fast float %645, %537
  %647 = fadd fast float %646, %643
  %648 = getelementptr inbounds [4 x float], [4 x float]* %23, i32 0, i32 2
  %649 = load float, float* %648, align 4, !tbaa !46, !noalias !48
  %650 = fmul fast float %649, %583
  %651 = getelementptr inbounds [4 x float], [4 x float]* %23, i32 0, i32 3
  %652 = load float, float* %651, align 4, !tbaa !46, !noalias !48
  %653 = fmul fast float %652, %537
  %654 = fadd fast float %653, %650
  %655 = fsub fast float 1.000000e+00, %640
  %656 = fmul fast float %647, %655
  %657 = fmul fast float %654, %640
  %658 = fmul fast float %368, 2.000000e+00
  %659 = fmul fast float %403, %410
  %660 = fdiv fast float %658, %659
  %661 = fsub fast float -0.000000e+00, %479
  %662 = fsub fast float %661, %522
  %663 = fadd fast float %662, %536
  %664 = fadd fast float %663, %581
  %665 = fmul fast float %664, %361
  %666 = fmul fast float %369, 2.000000e+00
  %667 = fdiv fast float %666, %659
  %668 = fsub fast float -0.000000e+00, %597
  %669 = fsub fast float %668, %639
  %670 = fadd fast float %669, %656
  %671 = fadd fast float %670, %657
  %672 = fmul fast float %665, %667
  %673 = fsub fast float -0.000000e+00, %672
  %674 = fmul fast float %361, %660
  %675 = fmul fast float %674, %671
  %676 = fsub fast float -0.000000e+00, %675
  %677 = fmul fast float %667, %660
  %678 = call float @dx.op.dot3.f32(i32 55, float %673, float %676, float %677, float %673, float %676, float %677)  ; Dot3(ax,ay,az,bx,by,bz)
  %679 = call float @dx.op.unary.f32(i32 25, float %678)  ; Rsqrt(value)
  %680 = fmul fast float %679, %673
  %681 = fmul fast float %679, %676
  %682 = fmul fast float %679, %677
  %683 = call float @dx.op.dot3.f32(i32 55, float %660, float 0.000000e+00, float %665, float %660, float 0.000000e+00, float %665)  ; Dot3(ax,ay,az,bx,by,bz)
  %684 = call float @dx.op.unary.f32(i32 25, float %683)  ; Rsqrt(value)
  %685 = fmul fast float %684, %660
  %686 = fmul fast float %684, %665
  %687 = fmul fast float %681, %686
  %688 = fmul fast float %685, %682
  %689 = fmul fast float %686, %680
  %690 = fsub fast float %688, %689
  %691 = fmul fast float %681, %685
  br label %751

; <label>:692                                     ; preds = %324
  %693 = getelementptr [4 x float], [4 x float]* %21, i32 0, i32 0
  %694 = getelementptr [4 x float], [4 x float]* %22, i32 0, i32 0
  %695 = fsub fast float -0.000000e+00, %362
  store float %695, float* %693, align 4
  store float 0.000000e+00, float* %694, align 4
  %696 = getelementptr [4 x float], [4 x float]* %21, i32 0, i32 1
  %697 = getelementptr [4 x float], [4 x float]* %22, i32 0, i32 1
  store float %362, float* %696, align 4
  store float 0.000000e+00, float* %697, align 4
  %698 = getelementptr [4 x float], [4 x float]* %21, i32 0, i32 2
  %699 = getelementptr [4 x float], [4 x float]* %22, i32 0, i32 2
  store float 0.000000e+00, float* %698, align 4
  store float %695, float* %699, align 4
  %700 = getelementptr [4 x float], [4 x float]* %21, i32 0, i32 3
  %701 = getelementptr [4 x float], [4 x float]* %22, i32 0, i32 3
  store float 0.000000e+00, float* %700, align 4
  store float %362, float* %701, align 4
  br label %702

; <label>:702                                     ; preds = %715, %692
  %703 = phi float [ 0.000000e+00, %692 ], [ %719, %715 ]
  %704 = phi float [ %695, %692 ], [ %717, %715 ]
  %705 = phi i32 [ 0, %692 ], [ %713, %715 ]
  %706 = fadd fast float %704, %325
  %707 = fadd fast float %703, %326
  %708 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %350, %dx.types.Handle %8, float %706, float %707, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %709 = extractvalue %dx.types.ResRet.f32 %708, 0
  %710 = fmul fast float %709, %361
  %711 = fadd fast float %710, %358
  %712 = getelementptr [4 x float], [4 x float]* %27, i32 0, i32 %705
  store float %711, float* %712, align 4, !tbaa !46, !noalias !66
  %713 = add nuw nsw i32 %705, 1
  %714 = icmp eq i32 %713, 4
  br i1 %714, label %720, label %715

; <label>:715                                     ; preds = %702
  %716 = getelementptr [4 x float], [4 x float]* %21, i32 0, i32 %713
  %717 = load float, float* %716, align 4
  %718 = getelementptr [4 x float], [4 x float]* %22, i32 0, i32 %713
  %719 = load float, float* %718, align 4
  br label %702

; <label>:720                                     ; preds = %702
  %721 = fdiv fast float %354, %355
  %722 = fmul fast float %721, 2.000000e+00
  %723 = getelementptr [4 x float], [4 x float]* %27, i32 0, i32 1
  %724 = load float, float* %723, align 4, !tbaa !46, !noalias !66
  %725 = getelementptr [4 x float], [4 x float]* %27, i32 0, i32 0
  %726 = load float, float* %725, align 4, !tbaa !46, !noalias !66
  %727 = fsub fast float %724, %726
  %728 = getelementptr [4 x float], [4 x float]* %27, i32 0, i32 3
  %729 = load float, float* %728, align 4, !tbaa !46, !noalias !66
  %730 = getelementptr [4 x float], [4 x float]* %27, i32 0, i32 2
  %731 = load float, float* %730, align 4, !tbaa !46, !noalias !66
  %732 = fsub fast float %729, %731
  %733 = fmul fast float %721, -2.000000e+00
  %734 = fmul fast float %733, %727
  %735 = fmul fast float %733, %732
  %736 = fmul fast float %722, %722
  %737 = call float @dx.op.dot3.f32(i32 55, float %734, float %735, float %736, float %734, float %735, float %736)  ; Dot3(ax,ay,az,bx,by,bz)
  %738 = call float @dx.op.unary.f32(i32 25, float %737)  ; Rsqrt(value)
  %739 = fmul fast float %738, %734
  %740 = fmul fast float %738, %735
  %741 = fmul fast float %738, %736
  %742 = call float @dx.op.dot3.f32(i32 55, float %722, float 0.000000e+00, float %727, float %722, float 0.000000e+00, float %727)  ; Dot3(ax,ay,az,bx,by,bz)
  %743 = call float @dx.op.unary.f32(i32 25, float %742)  ; Rsqrt(value)
  %744 = fmul fast float %743, %722
  %745 = fmul fast float %743, %727
  %746 = fmul fast float %745, %740
  %747 = fmul fast float %744, %741
  %748 = fmul fast float %745, %739
  %749 = fsub fast float %747, %748
  %750 = fmul fast float %744, %740
  br label %751

; <label>:751                                     ; preds = %720, %636
  %752 = phi float [ %691, %636 ], [ %750, %720 ]
  %753 = phi float [ %680, %636 ], [ %739, %720 ]
  %754 = phi float [ %681, %636 ], [ %740, %720 ]
  %755 = phi float [ %682, %636 ], [ %741, %720 ]
  %756 = phi float [ %687, %636 ], [ %746, %720 ]
  %757 = phi float [ %690, %636 ], [ %749, %720 ]
  %758 = phi float [ %685, %636 ], [ %744, %720 ]
  %759 = phi float [ %686, %636 ], [ %745, %720 ]
  %760 = fsub fast float -0.000000e+00, %752
  %761 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %762 = extractvalue %dx.types.CBufRet.i32 %761, 1
  %763 = icmp eq i32 %762, 5
  %764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %765 = extractvalue %dx.types.CBufRet.f32 %764, 0
  %766 = extractvalue %dx.types.CBufRet.f32 %764, 1
  %767 = extractvalue %dx.types.CBufRet.f32 %764, 2
  %768 = fmul fast float %767, %65
  %769 = fmul fast float %767, %66
  %770 = fadd fast float %768, %765
  %771 = fadd fast float %769, %766
  %772 = fmul fast float %138, 2.000000e+00
  %773 = fadd fast float %772, -1.000000e+00
  %774 = fmul fast float %140, 2.000000e+00
  %775 = fadd fast float %774, -1.000000e+00
  %776 = fadd fast float %775, %773
  %777 = fmul fast float %776, 5.000000e-01
  %778 = fsub fast float %773, %775
  %779 = fmul fast float %778, 5.000000e-01
  %780 = call float @dx.op.unary.f32(i32 6, float %777)  ; FAbs(value)
  %781 = fsub fast float 1.000000e+00, %780
  %782 = call float @dx.op.unary.f32(i32 6, float %779)  ; FAbs(value)
  %783 = fsub fast float %781, %782
  %784 = call float @dx.op.dot3.f32(i32 55, float %777, float %779, float %783, float %777, float %779, float %783)  ; Dot3(ax,ay,az,bx,by,bz)
  %785 = call float @dx.op.unary.f32(i32 25, float %784)  ; Rsqrt(value)
  %786 = fmul fast float %785, %777
  %787 = fmul fast float %785, %779
  %788 = fmul fast float %785, %783
  %789 = fmul fast float %786, %759
  %790 = call float @dx.op.tertiary.f32(i32 46, float %787, float %760, float %789)  ; FMad(a,b,c)
  %791 = call float @dx.op.tertiary.f32(i32 46, float %788, float %755, float %790)  ; FMad(a,b,c)
  %792 = call float @dx.op.tertiary.f32(i32 46, float %787, float %757, float 0.000000e+00)  ; FMad(a,b,c)
  %793 = call float @dx.op.tertiary.f32(i32 46, float %788, float %754, float %792)  ; FMad(a,b,c)
  %794 = fmul fast float %786, %758
  %795 = call float @dx.op.tertiary.f32(i32 46, float %787, float %756, float %794)  ; FMad(a,b,c)
  %796 = call float @dx.op.tertiary.f32(i32 46, float %788, float %753, float %795)  ; FMad(a,b,c)
  br label %797

; <label>:797                                     ; preds = %1223, %751
  %798 = phi float [ %1224, %1223 ], [ %136, %751 ]
  %799 = phi float [ %1225, %1223 ], [ %796, %751 ]
  %800 = phi float [ %1226, %1223 ], [ %793, %751 ]
  %801 = phi float [ %1227, %1223 ], [ %791, %751 ]
  %802 = phi float [ %1228, %1223 ], [ %139, %751 ]
  %803 = phi float [ %1229, %1223 ], [ %137, %751 ]
  %804 = phi float [ %1230, %1223 ], [ %141, %751 ]
  %805 = phi float [ %1231, %1223 ], [ %107, %751 ]
  %806 = phi float [ %1232, %1223 ], [ %115, %751 ]
  %807 = phi float [ %1233, %1223 ], [ %123, %751 ]
  %808 = phi i32 [ %1234, %1223 ], [ 0, %751 ]
  %809 = phi i32 [ %1235, %1223 ], [ 0, %751 ]
  %810 = shl i32 %809, 8
  %811 = or i32 %810, 48
  %812 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %811, i32 undef)  ; BufferLoad(srv,index,wot)
  %813 = extractvalue %dx.types.ResRet.f32 %812, 0
  %814 = extractvalue %dx.types.ResRet.f32 %812, 1
  %815 = extractvalue %dx.types.ResRet.f32 %812, 2
  %816 = extractvalue %dx.types.ResRet.f32 %812, 3
  %817 = or i32 %810, 64
  %818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %817, i32 undef)  ; BufferLoad(srv,index,wot)
  %819 = extractvalue %dx.types.ResRet.i32 %818, 0
  %820 = extractvalue %dx.types.ResRet.i32 %818, 1
  %821 = extractvalue %dx.types.ResRet.i32 %818, 2
  %822 = extractvalue %dx.types.ResRet.i32 %818, 3
  %823 = or i32 %810, 80
  %824 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %823, i32 undef)  ; BufferLoad(srv,index,wot)
  %825 = extractvalue %dx.types.ResRet.f32 %824, 0
  %826 = extractvalue %dx.types.ResRet.f32 %824, 1
  %827 = extractvalue %dx.types.ResRet.f32 %824, 2
  %828 = extractvalue %dx.types.ResRet.f32 %824, 3
  %829 = or i32 %810, 96
  %830 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %829, i32 undef)  ; BufferLoad(srv,index,wot)
  %831 = extractvalue %dx.types.ResRet.f32 %830, 0
  %832 = extractvalue %dx.types.ResRet.f32 %830, 1
  %833 = extractvalue %dx.types.ResRet.f32 %830, 2
  %834 = extractvalue %dx.types.ResRet.f32 %830, 3
  %835 = or i32 %810, 112
  %836 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %835, i32 undef)  ; BufferLoad(srv,index,wot)
  %837 = extractvalue %dx.types.ResRet.f32 %836, 0
  %838 = extractvalue %dx.types.ResRet.f32 %836, 1
  %839 = extractvalue %dx.types.ResRet.f32 %836, 2
  %840 = extractvalue %dx.types.ResRet.f32 %836, 3
  %841 = or i32 %810, 128
  %842 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %841, i32 undef)  ; BufferLoad(srv,index,wot)
  %843 = extractvalue %dx.types.ResRet.f32 %842, 0
  %844 = extractvalue %dx.types.ResRet.f32 %842, 1
  %845 = extractvalue %dx.types.ResRet.f32 %842, 2
  %846 = extractvalue %dx.types.ResRet.f32 %842, 3
  %847 = or i32 %810, 144
  %848 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %847, i32 undef)  ; BufferLoad(srv,index,wot)
  %849 = extractvalue %dx.types.ResRet.f32 %848, 0
  %850 = extractvalue %dx.types.ResRet.f32 %848, 1
  %851 = extractvalue %dx.types.ResRet.f32 %848, 2
  %852 = extractvalue %dx.types.ResRet.f32 %848, 3
  %853 = or i32 %810, 160
  %854 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %853, i32 undef)  ; BufferLoad(srv,index,wot)
  %855 = extractvalue %dx.types.ResRet.f32 %854, 0
  %856 = extractvalue %dx.types.ResRet.f32 %854, 1
  %857 = extractvalue %dx.types.ResRet.f32 %854, 2
  %858 = or i32 %810, 192
  %859 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %858, i32 undef)  ; BufferLoad(srv,index,wot)
  %860 = extractvalue %dx.types.ResRet.i32 %859, 0
  %861 = or i32 %810, 208
  %862 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %861, i32 undef)  ; BufferLoad(srv,index,wot)
  %863 = extractvalue %dx.types.ResRet.f32 %862, 0
  %864 = or i32 %810, 240
  %865 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %864, i32 undef)  ; BufferLoad(srv,index,wot)
  %866 = extractvalue %dx.types.ResRet.i32 %865, 1
  %867 = or i32 %810, 248
  %868 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %867, i32 undef)  ; BufferLoad(srv,index,wot)
  %869 = extractvalue %dx.types.ResRet.f32 %868, 0
  %870 = extractvalue %dx.types.ResRet.f32 %868, 1
  %871 = uitofp i32 %866 to float
  %872 = fmul fast float %871, 5.000000e+01
  %873 = call float @dx.op.unary.f32(i32 23, float %872)  ; Log(value)
  %874 = call float @dx.op.unary.f32(i32 28, float %873)  ; Round_pi(value)
  %875 = fsub fast float %874, %67
  %876 = fptosi float %875 to i32
  %877 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %876)  ; IMax(a,b)
  %878 = bitcast float %816 to i32
  %879 = and i32 %878, 2560
  %880 = icmp eq i32 %879, 0
  br i1 %880, label %881, label %1223, !dx.controlflow.hints !67

; <label>:881                                     ; preds = %797
  %882 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %810, i32 undef)  ; BufferLoad(srv,index,wot)
  %883 = extractvalue %dx.types.ResRet.f32 %882, 0
  %884 = extractvalue %dx.types.ResRet.f32 %882, 1
  %885 = extractvalue %dx.types.ResRet.f32 %882, 2
  %886 = extractvalue %dx.types.ResRet.f32 %882, 3
  %887 = call float @dx.op.dot4.f32(i32 56, float %883, float %884, float %885, float %886, float %770, float %771, float %340, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %888 = or i32 %810, 16
  %889 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %888, i32 undef)  ; BufferLoad(srv,index,wot)
  %890 = extractvalue %dx.types.ResRet.f32 %889, 0
  %891 = extractvalue %dx.types.ResRet.f32 %889, 1
  %892 = extractvalue %dx.types.ResRet.f32 %889, 2
  %893 = extractvalue %dx.types.ResRet.f32 %889, 3
  %894 = call float @dx.op.dot4.f32(i32 56, float %890, float %891, float %892, float %893, float %770, float %771, float %340, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %895 = or i32 %810, 32
  %896 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %895, i32 undef)  ; BufferLoad(srv,index,wot)
  %897 = extractvalue %dx.types.ResRet.f32 %896, 0
  %898 = extractvalue %dx.types.ResRet.f32 %896, 1
  %899 = extractvalue %dx.types.ResRet.f32 %896, 2
  %900 = extractvalue %dx.types.ResRet.f32 %896, 3
  %901 = call float @dx.op.dot4.f32(i32 56, float %897, float %898, float %899, float %900, float %770, float %771, float %340, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %902 = call float @dx.op.unary.f32(i32 27, float %887)  ; Round_ni(value)
  %903 = call float @dx.op.unary.f32(i32 6, float %902)  ; FAbs(value)
  %904 = call float @dx.op.unary.f32(i32 27, float %894)  ; Round_ni(value)
  %905 = call float @dx.op.unary.f32(i32 6, float %904)  ; FAbs(value)
  %906 = call float @dx.op.unary.f32(i32 6, float %901)  ; FAbs(value)
  %907 = call float @dx.op.unary.f32(i32 27, float %906)  ; Round_ni(value)
  %908 = fadd fast float %905, %903
  %909 = fadd fast float %908, %907
  %910 = fcmp fast oeq float %909, 0.000000e+00
  %911 = call float @dx.op.dot3.f32(i32 55, float %813, float %814, float %815, float %753, float %754, float %755)  ; Dot3(ax,ay,az,bx,by,bz)
  %912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %913 = extractvalue %dx.types.CBufRet.f32 %912, 2
  %914 = fadd fast float %913, %911
  %915 = call float @dx.op.unary.f32(i32 7, float %914)  ; Saturate(value)
  %916 = extractvalue %dx.types.CBufRet.f32 %912, 0
  %917 = fcmp fast ogt float %915, %916
  %918 = and i1 %910, %917
  br i1 %918, label %919, label %1223, !dx.controlflow.hints !68

; <label>:919                                     ; preds = %881
  %920 = add i32 %808, 1
  %921 = sitofp i32 %877 to float
  %922 = add i32 %822, 0
  %923 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %922, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %924 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %923, i32 0)  ; GetDimensions(handle,mipLevel)
  %925 = extractvalue %dx.types.Dimensions %924, 0
  %926 = extractvalue %dx.types.Dimensions %924, 1
  %927 = uitofp i32 %925 to float
  %928 = uitofp i32 %926 to float
  %929 = call float @dx.op.binary.f32(i32 35, float %927, float %928)  ; FMax(a,b)
  %930 = call float @dx.op.unary.f32(i32 23, float %929)  ; Log(value)
  %931 = call float @dx.op.unary.f32(i32 28, float %930)  ; Round_pi(value)
  %932 = fsub fast float %931, %921
  %933 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %932)  ; FMax(a,b)
  %934 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %923, %dx.types.Handle %7, float %887, float %894, float undef, float undef, i32 0, i32 0, i32 undef, float %933)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %935 = extractvalue %dx.types.ResRet.f32 %934, 0
  %936 = fmul fast float %935, %825
  %937 = fadd fast float %936, %826
  %938 = call float @dx.op.unary.f32(i32 7, float %937)  ; Saturate(value)
  %939 = fmul fast float %887, %831
  %940 = call float @dx.op.tertiary.f32(i32 46, float %832, float %894, float %939)  ; FMad(a,b,c)
  %941 = fadd fast float %940, %837
  %942 = fmul fast float %887, %833
  %943 = call float @dx.op.tertiary.f32(i32 46, float %834, float %894, float %942)  ; FMad(a,b,c)
  %944 = fadd fast float %943, %838
  %945 = add i32 %821, 0
  %946 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %945, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %947 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %946, i32 0)  ; GetDimensions(handle,mipLevel)
  %948 = extractvalue %dx.types.Dimensions %947, 0
  %949 = extractvalue %dx.types.Dimensions %947, 1
  %950 = uitofp i32 %948 to float
  %951 = uitofp i32 %949 to float
  %952 = call float @dx.op.binary.f32(i32 35, float %950, float %951)  ; FMax(a,b)
  %953 = call float @dx.op.unary.f32(i32 23, float %952)  ; Log(value)
  %954 = call float @dx.op.unary.f32(i32 28, float %953)  ; Round_pi(value)
  %955 = fsub fast float %954, %921
  %956 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %955)  ; FMax(a,b)
  %957 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %946, %dx.types.Handle %7, float %941, float %944, float undef, float undef, i32 0, i32 0, i32 undef, float %956)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %958 = extractvalue %dx.types.ResRet.f32 %957, 0
  %959 = and i32 %878, 1024
  %960 = icmp ne i32 %959, 0
  %961 = fcmp fast ogt float %958, 0x3FE0101020000000
  %962 = uitofp i1 %961 to float
  %963 = select i1 %960, float %962, float %958
  %964 = and i32 %878, 8192
  %965 = icmp ne i32 %964, 0
  %966 = select i1 %965, float %840, float 1.000000e+00
  %967 = fmul fast float %887, 2.000000e+00
  %968 = fadd fast float %967, -1.000000e+00
  %969 = call float @dx.op.unary.f32(i32 6, float %968)  ; FAbs(value)
  %970 = fmul fast float %969, %869
  %971 = fsub fast float %970, %869
  %972 = call float @dx.op.unary.f32(i32 7, float %971)  ; Saturate(value)
  %973 = fmul fast float %894, 2.000000e+00
  %974 = fadd fast float %973, -1.000000e+00
  %975 = call float @dx.op.unary.f32(i32 6, float %974)  ; FAbs(value)
  %976 = fmul fast float %975, %870
  %977 = fsub fast float %976, %870
  %978 = call float @dx.op.unary.f32(i32 7, float %977)  ; Saturate(value)
  %979 = fmul fast float %906, %827
  %980 = fsub fast float %979, %827
  %981 = call float @dx.op.unary.f32(i32 7, float %980)  ; Saturate(value)
  %982 = fmul fast float %938, %966
  %983 = fmul fast float %982, %935
  %984 = fmul fast float %983, %972
  %985 = fmul fast float %984, %963
  %986 = fmul fast float %985, %978
  %987 = fmul fast float %986, %981
  %988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %989 = extractvalue %dx.types.CBufRet.f32 %988, 1
  %990 = extractvalue %dx.types.CBufRet.f32 %988, 0
  %991 = fsub fast float %915, %990
  %992 = fmul fast float %991, %989
  %993 = call float @dx.op.unary.f32(i32 7, float %992)  ; Saturate(value)
  %994 = fmul fast float %987, %828
  %995 = fadd fast float %987, %828
  %996 = fmul fast float %995, %839
  %997 = fsub fast float %996, %839
  %998 = call float @dx.op.unary.f32(i32 7, float %997)  ; Saturate(value)
  %999 = and i32 %878, 128
  %1000 = icmp ne i32 %999, 0
  %1001 = select i1 %1000, float %998, float %994
  %1002 = fmul fast float %1001, %993
  %1003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %1004 = extractvalue %dx.types.CBufRet.f32 %1003, 0
  %1005 = fcmp fast ugt float %1002, %1004
  br i1 %1005, label %1006, label %1223, !dx.controlflow.hints !69

; <label>:1006                                    ; preds = %919
  br i1 %965, label %1223, label %1007, !dx.controlflow.hints !70

; <label>:1007                                    ; preds = %1006
  %1008 = and i32 %878, 4
  %1009 = and i32 %878, 8
  %1010 = add i32 %819, 0
  %1011 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1010, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1012 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1011, i32 0)  ; GetDimensions(handle,mipLevel)
  %1013 = extractvalue %dx.types.Dimensions %1012, 0
  %1014 = extractvalue %dx.types.Dimensions %1012, 1
  %1015 = uitofp i32 %1013 to float
  %1016 = uitofp i32 %1014 to float
  %1017 = call float @dx.op.binary.f32(i32 35, float %1015, float %1016)  ; FMax(a,b)
  %1018 = call float @dx.op.unary.f32(i32 23, float %1017)  ; Log(value)
  %1019 = call float @dx.op.unary.f32(i32 28, float %1018)  ; Round_pi(value)
  %1020 = fsub fast float %1019, %921
  %1021 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1020)  ; FMax(a,b)
  %1022 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1011, %dx.types.Handle %7, float %941, float %944, float undef, float undef, i32 0, i32 0, i32 undef, float %1021)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1023 = extractvalue %dx.types.ResRet.f32 %1022, 0
  %1024 = extractvalue %dx.types.ResRet.f32 %1022, 1
  %1025 = extractvalue %dx.types.ResRet.f32 %1022, 2
  %1026 = extractvalue %dx.types.ResRet.f32 %1022, 3
  %1027 = bitcast float %852 to i32
  %1028 = and i32 %1027, 255
  %1029 = uitofp i32 %1028 to float
  %1030 = lshr i32 %1027, 8
  %1031 = and i32 %1030, 255
  %1032 = uitofp i32 %1031 to float
  %1033 = fmul fast float %1026, %1029
  %1034 = fadd fast float %1033, %1032
  %1035 = fmul fast float %1034, 0x3F70101000000000
  %1036 = add i32 %820, 0
  %1037 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1036, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1038 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1037, i32 0)  ; GetDimensions(handle,mipLevel)
  %1039 = extractvalue %dx.types.Dimensions %1038, 0
  %1040 = extractvalue %dx.types.Dimensions %1038, 1
  %1041 = uitofp i32 %1039 to float
  %1042 = uitofp i32 %1040 to float
  %1043 = call float @dx.op.binary.f32(i32 35, float %1041, float %1042)  ; FMax(a,b)
  %1044 = call float @dx.op.unary.f32(i32 23, float %1043)  ; Log(value)
  %1045 = call float @dx.op.unary.f32(i32 28, float %1044)  ; Round_pi(value)
  %1046 = fsub fast float %1045, %921
  %1047 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1046)  ; FMax(a,b)
  %1048 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1037, %dx.types.Handle %7, float %941, float %944, float undef, float undef, i32 0, i32 0, i32 undef, float %1047)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1049 = extractvalue %dx.types.ResRet.f32 %1048, 0
  %1050 = extractvalue %dx.types.ResRet.f32 %1048, 1
  %1051 = extractvalue %dx.types.ResRet.f32 %1048, 2
  %1052 = extractvalue %dx.types.ResRet.f32 %1048, 3
  %1053 = bitcast float %846 to i32
  %1054 = and i32 %1053, 255
  %1055 = uitofp i32 %1054 to float
  %1056 = lshr i32 %1053, 8
  %1057 = and i32 %1056, 255
  %1058 = uitofp i32 %1057 to float
  %1059 = lshr i32 %1053, 16
  %1060 = and i32 %1059, 255
  %1061 = uitofp i32 %1060 to float
  %1062 = fmul fast float %1061, 0x3F70101000000000
  %1063 = fmul fast float %1049, %1055
  %1064 = fadd fast float %1063, %1058
  %1065 = fmul fast float %1064, 0x3F70101000000000
  %1066 = fadd fast float %1050, -5.000000e-01
  %1067 = fadd fast float %1052, -5.000000e-01
  %1068 = fmul fast float %1066, %1062
  %1069 = fmul fast float %1067, %1062
  %1070 = fadd fast float %1068, 5.000000e-01
  %1071 = fadd fast float %1069, 5.000000e-01
  %1072 = fmul fast float %1023, %855
  %1073 = fmul fast float %1024, %856
  %1074 = fmul fast float %1025, %857
  %1075 = fmul fast float %1070, 2.000000e+00
  %1076 = fadd fast float %1075, -1.000000e+00
  %1077 = fmul fast float %1071, 2.000000e+00
  %1078 = fadd fast float %1077, -1.000000e+00
  %1079 = fadd fast float %1076, %1078
  %1080 = fmul fast float %1079, 5.000000e-01
  %1081 = fsub fast float %1076, %1078
  %1082 = fmul fast float %1081, 5.000000e-01
  %1083 = call float @dx.op.unary.f32(i32 6, float %1080)  ; FAbs(value)
  %1084 = fsub fast float 1.000000e+00, %1083
  %1085 = call float @dx.op.unary.f32(i32 6, float %1082)  ; FAbs(value)
  %1086 = fsub fast float %1084, %1085
  %1087 = call float @dx.op.dot3.f32(i32 55, float %1080, float %1082, float %1086, float %1080, float %1082, float %1086)  ; Dot3(ax,ay,az,bx,by,bz)
  %1088 = call float @dx.op.unary.f32(i32 25, float %1087)  ; Rsqrt(value)
  %1089 = fmul fast float %1080, %1088
  %1090 = fmul fast float %1082, %1088
  %1091 = fmul fast float %1088, %1086
  %1092 = fmul fast float %1091, %813
  %1093 = fmul fast float %1091, %814
  %1094 = fmul fast float %1091, %815
  %1095 = fmul fast float %1089, %843
  %1096 = fmul fast float %1089, %844
  %1097 = fmul fast float %1089, %845
  %1098 = fadd fast float %1095, %1092
  %1099 = fadd fast float %1096, %1093
  %1100 = fadd fast float %1097, %1094
  %1101 = fmul fast float %1090, %849
  %1102 = fmul fast float %1090, %850
  %1103 = fmul fast float %1090, %851
  %1104 = fadd fast float %1098, %1101
  %1105 = fadd fast float %1099, %1102
  %1106 = fadd fast float %1100, %1103
  %1107 = call float @dx.op.dot3.f32(i32 55, float %1104, float %1105, float %1106, float %1104, float %1105, float %1106)  ; Dot3(ax,ay,az,bx,by,bz)
  %1108 = call float @dx.op.unary.f32(i32 25, float %1107)  ; Rsqrt(value)
  %1109 = fmul fast float %1104, %1108
  %1110 = fmul fast float %1105, %1108
  %1111 = fmul fast float %1106, %1108
  %1112 = icmp ne i32 %1009, 0
  %1113 = select i1 %1112, float 1.000000e+00, float 0.000000e+00
  %1114 = fmul fast float %1002, %1113
  %1115 = and i32 %878, 1
  %1116 = icmp eq i32 %1115, 0
  br i1 %1116, label %1117, label %1121, !dx.controlflow.hints !71

; <label>:1117                                    ; preds = %1007
  %1118 = fsub fast float %1109, %799
  %1119 = fsub fast float %1110, %800
  %1120 = fsub fast float %1111, %801
  br label %1121

; <label>:1121                                    ; preds = %1117, %1007
  %1122 = phi float [ %1118, %1117 ], [ %1109, %1007 ]
  %1123 = phi float [ %1119, %1117 ], [ %1110, %1007 ]
  %1124 = phi float [ %1120, %1117 ], [ %1111, %1007 ]
  %1125 = fmul float %1124, %1114
  %1126 = fmul float %1123, %1114
  %1127 = fmul float %1122, %1114
  %1128 = fadd fast float %1127, %799
  %1129 = fadd fast float %1126, %800
  %1130 = fadd fast float %1125, %801
  %1131 = icmp ne i32 %1008, 0
  %1132 = select i1 %1131, float 1.000000e+00, float 0.000000e+00
  %1133 = fmul fast float %1002, %1132
  %1134 = fsub fast float %1072, %805
  %1135 = fsub fast float %1073, %806
  %1136 = fsub fast float %1074, %807
  %1137 = fmul fast float %1134, %1133
  %1138 = fmul fast float %1135, %1133
  %1139 = fmul fast float %1136, %1133
  %1140 = fadd fast float %1137, %805
  %1141 = fadd fast float %1138, %806
  %1142 = fadd fast float %1139, %807
  %1143 = fsub fast float %1035, %804
  %1144 = fmul fast float %1143, %1133
  %1145 = fadd fast float %1144, %804
  %1146 = fsub fast float %1065, %803
  %1147 = fmul fast float %1146, %1114
  %1148 = fadd fast float %1147, %803
  %1149 = fsub fast float %1051, %802
  %1150 = fmul fast float %1149, %1114
  %1151 = fadd fast float %1150, %802
  %1152 = and i32 %878, 16
  %1153 = icmp eq i32 %1152, 0
  br i1 %1153, label %1223, label %1154, !dx.controlflow.hints !72

; <label>:1154                                    ; preds = %1121
  %1155 = add i32 %860, 0
  %1156 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1155, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1157 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1158 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1156, %dx.types.Handle %1157, float %941, float %944, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00, float 0.000000e+00, float undef, float 0.000000e+00, float 0.000000e+00, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1159 = extractvalue %dx.types.ResRet.f32 %1158, 0
  %1160 = extractvalue %dx.types.ResRet.f32 %1158, 1
  %1161 = extractvalue %dx.types.ResRet.f32 %1158, 2
  %1162 = bitcast float %863 to i32
  %1163 = and i32 %1162, 65535
  %1164 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1163)  ; LegacyF16ToF32(value)
  %1165 = fmul fast float %1159, %855
  %1166 = fmul fast float %1160, %856
  %1167 = fmul fast float %1161, %857
  %1168 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %1169 = extractvalue %dx.types.CBufRet.i32 %1168, 1
  %1170 = icmp eq i32 %1169, 2
  br i1 %1170, label %1171, label %1215, !dx.controlflow.hints !73

; <label>:1171                                    ; preds = %1154
  %1172 = call float @dx.op.binary.f32(i32 36, float %1140, float 0x3FEFAE1480000000)  ; FMin(a,b)
  %1173 = call float @dx.op.binary.f32(i32 36, float %1141, float 0x3FEFAE1480000000)  ; FMin(a,b)
  %1174 = call float @dx.op.binary.f32(i32 36, float %1142, float 0x3FEFAE1480000000)  ; FMin(a,b)
  %1175 = fsub fast float 1.000000e+00, %1172
  %1176 = fsub fast float 1.000000e+00, %1173
  %1177 = fsub fast float 1.000000e+00, %1174
  %1178 = call float @dx.op.unary.f32(i32 23, float %1175)  ; Log(value)
  %1179 = call float @dx.op.unary.f32(i32 23, float %1176)  ; Log(value)
  %1180 = call float @dx.op.unary.f32(i32 23, float %1177)  ; Log(value)
  %1181 = call float @dx.op.binary.f32(i32 36, float %1165, float 0x3FEFAE1480000000)  ; FMin(a,b)
  %1182 = call float @dx.op.binary.f32(i32 36, float %1166, float 0x3FEFAE1480000000)  ; FMin(a,b)
  %1183 = call float @dx.op.binary.f32(i32 36, float %1167, float 0x3FEFAE1480000000)  ; FMin(a,b)
  %1184 = fsub fast float 1.000000e+00, %1181
  %1185 = fsub fast float 1.000000e+00, %1182
  %1186 = fsub fast float 1.000000e+00, %1183
  %1187 = call float @dx.op.unary.f32(i32 23, float %1184)  ; Log(value)
  %1188 = call float @dx.op.unary.f32(i32 23, float %1185)  ; Log(value)
  %1189 = call float @dx.op.unary.f32(i32 23, float %1186)  ; Log(value)
  %1190 = fmul fast float %1002, %1187
  %1191 = fmul fast float %1002, %1188
  %1192 = fmul fast float %1002, %1189
  %1193 = fsub fast float -0.000000e+00, %1178
  %1194 = fsub fast float %1193, %1190
  %1195 = fsub fast float -0.000000e+00, %1179
  %1196 = fsub fast float %1195, %1191
  %1197 = fsub fast float -0.000000e+00, %1180
  %1198 = fsub fast float %1197, %1192
  %1199 = fsub fast float -0.000000e+00, %1194
  %1200 = fsub fast float -0.000000e+00, %1196
  %1201 = fsub fast float -0.000000e+00, %1198
  %1202 = call float @dx.op.unary.f32(i32 21, float %1199)  ; Exp(value)
  %1203 = call float @dx.op.unary.f32(i32 21, float %1200)  ; Exp(value)
  %1204 = call float @dx.op.unary.f32(i32 21, float %1201)  ; Exp(value)
  %1205 = fsub fast float 1.000000e+00, %1202
  %1206 = fsub fast float 1.000000e+00, %1203
  %1207 = fsub fast float 1.000000e+00, %1204
  %1208 = call float @dx.op.dot3.f32(i32 55, float %1205, float %1206, float %1207, float %1205, float %1206, float %1207)  ; Dot3(ax,ay,az,bx,by,bz)
  %1209 = call float @dx.op.dot3.f32(i32 55, float %1165, float %1166, float %1167, float %1165, float %1166, float %1167)  ; Dot3(ax,ay,az,bx,by,bz)
  %1210 = fmul fast float %1209, %1002
  %1211 = fcmp fast une float %1208, 0.000000e+00
  %1212 = fdiv fast float %1210, %1208
  %1213 = select i1 %1211, float %1212, float 0.000000e+00
  %1214 = fmul fast float %1213, %1164
  br label %1215

; <label>:1215                                    ; preds = %1171, %1154
  %1216 = phi float [ %1214, %1171 ], [ %1164, %1154 ]
  %1217 = phi float [ %1205, %1171 ], [ %1140, %1154 ]
  %1218 = phi float [ %1206, %1171 ], [ %1141, %1154 ]
  %1219 = phi float [ %1207, %1171 ], [ %1142, %1154 ]
  %1220 = fsub fast float %1216, %798
  %1221 = fmul fast float %1220, %1002
  %1222 = fadd fast float %1221, %798
  br label %1223

; <label>:1223                                    ; preds = %1215, %1121, %1006, %919, %881, %797
  %1224 = phi float [ %798, %797 ], [ %798, %919 ], [ %798, %1006 ], [ %798, %881 ], [ %1222, %1215 ], [ %798, %1121 ]
  %1225 = phi float [ %799, %797 ], [ %799, %919 ], [ %799, %1006 ], [ %799, %881 ], [ %1128, %1215 ], [ %1128, %1121 ]
  %1226 = phi float [ %800, %797 ], [ %800, %919 ], [ %800, %1006 ], [ %800, %881 ], [ %1129, %1215 ], [ %1129, %1121 ]
  %1227 = phi float [ %801, %797 ], [ %801, %919 ], [ %801, %1006 ], [ %801, %881 ], [ %1130, %1215 ], [ %1130, %1121 ]
  %1228 = phi float [ %802, %797 ], [ %802, %919 ], [ %802, %1006 ], [ %802, %881 ], [ %1151, %1215 ], [ %1151, %1121 ]
  %1229 = phi float [ %803, %797 ], [ %803, %919 ], [ %803, %1006 ], [ %803, %881 ], [ %1148, %1215 ], [ %1148, %1121 ]
  %1230 = phi float [ %804, %797 ], [ %804, %919 ], [ %804, %1006 ], [ %804, %881 ], [ %1145, %1215 ], [ %1145, %1121 ]
  %1231 = phi float [ %805, %797 ], [ %805, %919 ], [ %805, %1006 ], [ %805, %881 ], [ %1217, %1215 ], [ %1140, %1121 ]
  %1232 = phi float [ %806, %797 ], [ %806, %919 ], [ %806, %1006 ], [ %806, %881 ], [ %1218, %1215 ], [ %1141, %1121 ]
  %1233 = phi float [ %807, %797 ], [ %807, %919 ], [ %807, %1006 ], [ %807, %881 ], [ %1219, %1215 ], [ %1142, %1121 ]
  %1234 = phi i32 [ %808, %797 ], [ %920, %919 ], [ %920, %1006 ], [ %808, %881 ], [ %920, %1215 ], [ %920, %1121 ]
  %1235 = add nuw i32 %809, 1
  %1236 = icmp eq i32 %1235, %284
  br i1 %1236, label %1237, label %797

; <label>:1237                                    ; preds = %1223
  %1238 = icmp eq i32 %1234, 0
  br i1 %1238, label %1270, label %1239, !dx.controlflow.hints !74

; <label>:1239                                    ; preds = %1237
  %1240 = call float @dx.op.unary.f32(i32 7, float %1231)  ; Saturate(value)
  %1241 = call float @dx.op.unary.f32(i32 7, float %1232)  ; Saturate(value)
  %1242 = call float @dx.op.unary.f32(i32 7, float %1233)  ; Saturate(value)
  br i1 %763, label %1270, label %1243, !dx.controlflow.hints !75

; <label>:1243                                    ; preds = %1239
  %1244 = call float @dx.op.dot3.f32(i32 55, float %1225, float %1226, float %1227, float %1225, float %1226, float %1227)  ; Dot3(ax,ay,az,bx,by,bz)
  %1245 = call float @dx.op.unary.f32(i32 25, float %1244)  ; Rsqrt(value)
  %1246 = fmul fast float %1245, %1225
  %1247 = fmul fast float %1245, %1226
  %1248 = fmul fast float %1245, %1227
  %1249 = fmul fast float %1246, %758
  %1250 = call float @dx.op.tertiary.f32(i32 46, float %1248, float %759, float %1249)  ; FMad(a,b,c)
  %1251 = fmul fast float %1246, %756
  %1252 = call float @dx.op.tertiary.f32(i32 46, float %1247, float %757, float %1251)  ; FMad(a,b,c)
  %1253 = call float @dx.op.tertiary.f32(i32 46, float %1248, float %760, float %1252)  ; FMad(a,b,c)
  %1254 = fmul fast float %1246, %753
  %1255 = call float @dx.op.tertiary.f32(i32 46, float %1247, float %754, float %1254)  ; FMad(a,b,c)
  %1256 = call float @dx.op.tertiary.f32(i32 46, float %1248, float %755, float %1255)  ; FMad(a,b,c)
  %1257 = call float @dx.op.unary.f32(i32 6, float %1250)  ; FAbs(value)
  %1258 = call float @dx.op.unary.f32(i32 6, float %1253)  ; FAbs(value)
  %1259 = fadd fast float %1257, %1256
  %1260 = fadd fast float %1259, %1258
  %1261 = fdiv fast float 1.000000e+00, %1260
  %1262 = fadd fast float %1253, %1250
  %1263 = fsub fast float %1250, %1253
  %1264 = fmul fast float %1262, 5.000000e-01
  %1265 = fmul fast float %1264, %1261
  %1266 = fadd fast float %1265, 5.000000e-01
  %1267 = fmul fast float %1263, 5.000000e-01
  %1268 = fmul fast float %1267, %1261
  %1269 = fadd fast float %1268, 5.000000e-01
  br label %1270

; <label>:1270                                    ; preds = %1243, %1239, %1237, %282, %279
  %1271 = phi float [ %136, %279 ], [ %136, %282 ], [ %136, %1239 ], [ %1224, %1243 ], [ %136, %1237 ]
  %1272 = phi float [ %137, %279 ], [ %137, %282 ], [ %137, %1239 ], [ %1229, %1243 ], [ %137, %1237 ]
  %1273 = phi float [ %138, %279 ], [ %138, %282 ], [ %138, %1239 ], [ %1266, %1243 ], [ %138, %1237 ]
  %1274 = phi float [ %139, %279 ], [ %139, %282 ], [ %139, %1239 ], [ %1228, %1243 ], [ %139, %1237 ]
  %1275 = phi float [ %140, %279 ], [ %140, %282 ], [ %140, %1239 ], [ %1269, %1243 ], [ %140, %1237 ]
  %1276 = phi float [ %107, %279 ], [ %107, %282 ], [ %1240, %1239 ], [ %1240, %1243 ], [ %107, %1237 ]
  %1277 = phi float [ %115, %279 ], [ %115, %282 ], [ %1241, %1239 ], [ %1241, %1243 ], [ %115, %1237 ]
  %1278 = phi float [ %123, %279 ], [ %123, %282 ], [ %1242, %1239 ], [ %1242, %1243 ], [ %123, %1237 ]
  %1279 = phi float [ %141, %279 ], [ %141, %282 ], [ %1230, %1239 ], [ %1230, %1243 ], [ %141, %1237 ]
  br i1 %281, label %1280, label %1322, !dx.controlflow.hints !76

; <label>:1280                                    ; preds = %1270
  %1281 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %1282 = extractvalue %dx.types.CBufRet.i32 %1281, 1
  %1283 = icmp eq i32 %1282, 5
  %1284 = fcmp fast ole float %1276, 0x3F69A5C380000000
  %1285 = fcmp fast ole float %1277, 0x3F69A5C380000000
  %1286 = fcmp fast ole float %1278, 0x3F69A5C380000000
  %1287 = fmul fast float %1276, 0x4029D70A40000000
  %1288 = fmul fast float %1277, 0x4029D70A40000000
  %1289 = fmul fast float %1278, 0x4029D70A40000000
  %1290 = call float @dx.op.unary.f32(i32 23, float %1276)  ; Log(value)
  %1291 = call float @dx.op.unary.f32(i32 23, float %1277)  ; Log(value)
  %1292 = call float @dx.op.unary.f32(i32 23, float %1278)  ; Log(value)
  %1293 = fmul fast float %1290, 0x3FDAAAAAA0000000
  %1294 = fmul fast float %1291, 0x3FDAAAAAA0000000
  %1295 = fmul fast float %1292, 0x3FDAAAAAA0000000
  %1296 = call float @dx.op.unary.f32(i32 21, float %1293)  ; Exp(value)
  %1297 = call float @dx.op.unary.f32(i32 21, float %1294)  ; Exp(value)
  %1298 = call float @dx.op.unary.f32(i32 21, float %1295)  ; Exp(value)
  %1299 = fmul fast float %1296, 0x3FF0E147A0000000
  %1300 = fmul fast float %1297, 0x3FF0E147A0000000
  %1301 = fmul fast float %1298, 0x3FF0E147A0000000
  %1302 = fadd fast float %1299, 0xBFAC28F5C0000000
  %1303 = fadd fast float %1300, 0xBFAC28F5C0000000
  %1304 = fadd fast float %1301, 0xBFAC28F5C0000000
  %1305 = select i1 %1284, float %1287, float %1302
  %1306 = select i1 %1285, float %1288, float %1303
  %1307 = select i1 %1286, float %1289, float %1304
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %69, i32 %11, i32 undef, float %1305, float %1306, float %1307, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br i1 %1283, label %1322, label %1308, !dx.controlflow.hints !77

; <label>:1308                                    ; preds = %1280
  %1309 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %1310 = extractvalue %dx.types.CBufRet.i32 %1309, 1
  switch i32 %1310, label %1320 [
    i32 1, label %1311
    i32 2, label %1312
    i32 3, label %1319
  ], !dx.controlflow.hints !78

; <label>:1311                                    ; preds = %1308
  br label %1320

; <label>:1312                                    ; preds = %1308
  %1313 = fcmp fast une float %1271, 0.000000e+00
  %1314 = call float @dx.op.unary.f32(i32 23, float %1271)  ; Log(value)
  %1315 = fadd fast float %1314, 1.600000e+01
  %1316 = fmul fast float %1315, 3.125000e-02
  %1317 = call float @dx.op.unary.f32(i32 7, float %1316)  ; Saturate(value)
  %1318 = select i1 %1313, float %1317, float 0.000000e+00
  br label %1320

; <label>:1319                                    ; preds = %1308
  br label %1320

; <label>:1320                                    ; preds = %1319, %1312, %1311, %1308
  %1321 = phi float [ 0.000000e+00, %1308 ], [ %134, %1319 ], [ %1318, %1312 ], [ %135, %1311 ]
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %69, i32 %11, i32 undef, float %1273, float %1275, float %1274, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %69, i32 %11, i32 undef, float %1279, float %1272, float %1321, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1322

; <label>:1322                                    ; preds = %1320, %1280, %1270
  ret void

; <label>:1323                                    ; preds = %1352, %274
  %1324 = phi i32 [ %1329, %1352 ], [ %52, %274 ]
  %1325 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1324)  ; FirstbitLo(value)
  %1326 = and i32 %1325, 31
  %1327 = shl i32 1, %1326
  %1328 = xor i32 %1327, -1
  %1329 = and i32 %1324, %1328
  %1330 = add i32 %1325, 32
  %1331 = mul i32 %1330, 3
  %1332 = add i32 %1331, 30
  %1333 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 %1332)  ; CBufferLoadLegacy(handle,regIndex)
  %1334 = extractvalue %dx.types.CBufRet.i32 %1333, 1
  %1335 = bitcast i32 %1334 to float
  %1336 = extractvalue %dx.types.CBufRet.i32 %1333, 2
  %1337 = bitcast i32 %1336 to float
  %1338 = fsub fast float %76, %1335
  %1339 = fsub fast float %77, %1337
  %1340 = add i32 %1331, 32
  %1341 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 %1340)  ; CBufferLoadLegacy(handle,regIndex)
  %1342 = extractvalue %dx.types.CBufRet.i32 %1341, 1
  %1343 = and i32 %1342, 1048575
  %1344 = uitofp i32 %1343 to float
  %1345 = fcmp fast olt float %1338, 0.000000e+00
  %1346 = fcmp fast olt float %1339, 0.000000e+00
  %1347 = or i1 %1345, %1346
  %1348 = fcmp fast ogt float %1338, %1344
  %1349 = fcmp fast ogt float %1339, %1344
  %1350 = or i1 %1348, %1349
  %1351 = or i1 %1347, %1350
  br i1 %1351, label %1352, label %276, !dx.controlflow.hints !41

; <label>:1352                                    ; preds = %1323
  %1353 = icmp eq i32 %1329, 0
  br i1 %1353, label %276, label %1323
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
!dx.entryPoints = !{!21}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !11, !15, !17}
!5 = !{!6, !8, !9, !10}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 17, i32 1, i32 11, i32 0, null}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 18, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 22, i32 1, i32 11, i32 0, null}
!11 = !{!12, !13, !14}
!12 = !{i32 0, %"class.RWTexture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!13 = !{i32 1, %"class.RWTexture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!14 = !{i32 2, %"class.RWTexture2D<vector<float, 4> >"* undef, !"", i32 0, i32 4, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!15 = !{!16}
!16 = !{i32 0, %GfxVirtualTexturingComposite* undef, !"", i32 0, i32 0, i32 1, i32 4208, null}
!17 = !{!18, !19, !20}
!18 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!19 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!20 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!21 = !{void ()* @cs_compose_volume_decals_to_scratch, !"cs_compose_volume_decals_to_scratch", null, !4, !22}
!22 = !{i32 0, i64 8464, i32 4, !23}
!23 = !{i32 8, i32 8, i32 1}
!24 = !{!25, !25, i64 0}
!25 = !{!"int", !26, i64 0}
!26 = !{!"omnipotent char", !27, i64 0}
!27 = !{!"Simple C/C++ TBAA"}
!28 = !{!29, !31, !32, !33}
!29 = distinct !{!29, !30, !"\01?GetPageIndexAndTileDataBits@@YAXIIV?$vector@I$02@@AIAI11@Z: %pageIndex"}
!30 = distinct !{!30, !"\01?GetPageIndexAndTileDataBits@@YAXIIV?$vector@I$02@@AIAI11@Z"}
!31 = distinct !{!31, !30, !"\01?GetPageIndexAndTileDataBits@@YAXIIV?$vector@I$02@@AIAI11@Z: %tileDataBitsLo"}
!32 = distinct !{!32, !30, !"\01?GetPageIndexAndTileDataBits@@YAXIIV?$vector@I$02@@AIAI11@Z: %tileDataBitsHi"}
!33 = distinct !{!33, !34, !"\01?CompositeScratch_InitContext@@YA?AUCompositeScratchContext@@IV?$vector@I$02@@0_N@Z: %agg.result"}
!34 = distinct !{!34, !"\01?CompositeScratch_InitContext@@YA?AUCompositeScratchContext@@IV?$vector@I$02@@0_N@Z"}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 1}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 1}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 1}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 1}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 1}
!46 = !{!47, !47, i64 0}
!47 = !{!"float", !26, i64 0}
!48 = !{!49, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64}
!49 = distinct !{!49, !50, !"\01?VHM_SampleNormal_Internal@@YA?AV?$vector@M$02@@UVHM_SampleContext@@MMAIAV1@1@Z: %tangentX"}
!50 = distinct !{!50, !"\01?VHM_SampleNormal_Internal@@YA?AV?$vector@M$02@@UVHM_SampleContext@@MMAIAV1@1@Z"}
!51 = distinct !{!51, !50, !"\01?VHM_SampleNormal_Internal@@YA?AV?$vector@M$02@@UVHM_SampleContext@@MMAIAV1@1@Z: %tangentY"}
!52 = distinct !{!52, !53, !"\01?VHM_SampleTangentFrameAtWorldPos@@YAXV?$vector@M$01@@MMAIAV?$vector@M$02@@11@Z: %tangentX"}
!53 = distinct !{!53, !"\01?VHM_SampleTangentFrameAtWorldPos@@YAXV?$vector@M$01@@MMAIAV?$vector@M$02@@11@Z"}
!54 = distinct !{!54, !53, !"\01?VHM_SampleTangentFrameAtWorldPos@@YAXV?$vector@M$01@@MMAIAV?$vector@M$02@@11@Z: %tangentY"}
!55 = distinct !{!55, !53, !"\01?VHM_SampleTangentFrameAtWorldPos@@YAXV?$vector@M$01@@MMAIAV?$vector@M$02@@11@Z: %normal"}
!56 = distinct !{!56, !57, !"\01?EstimateTangentFrameAtVTUVs@@YAXV?$Texture2D@V?$vector@M$03@@@@IV?$vector@M$01@@UPaddedUVs@@V2@MAIAV?$vector@M$02@@44@Z: %tangentX"}
!57 = distinct !{!57, !"\01?EstimateTangentFrameAtVTUVs@@YAXV?$Texture2D@V?$vector@M$03@@@@IV?$vector@M$01@@UPaddedUVs@@V2@MAIAV?$vector@M$02@@44@Z"}
!58 = distinct !{!58, !57, !"\01?EstimateTangentFrameAtVTUVs@@YAXV?$Texture2D@V?$vector@M$03@@@@IV?$vector@M$01@@UPaddedUVs@@V2@MAIAV?$vector@M$02@@44@Z: %tangentY"}
!59 = distinct !{!59, !57, !"\01?EstimateTangentFrameAtVTUVs@@YAXV?$Texture2D@V?$vector@M$03@@@@IV?$vector@M$01@@UPaddedUVs@@V2@MAIAV?$vector@M$02@@44@Z: %normal"}
!60 = distinct !{!60, !61, !"\01?ApplyDecalsAvt@@YAXUCompositeScratchContext@@UTerrainTileDataVT@@AIAV?$vector@M$03@@22@Z: %albedoMetalness"}
!61 = distinct !{!61, !"\01?ApplyDecalsAvt@@YAXUCompositeScratchContext@@UTerrainTileDataVT@@AIAV?$vector@M$03@@22@Z"}
!62 = distinct !{!62, !61, !"\01?ApplyDecalsAvt@@YAXUCompositeScratchContext@@UTerrainTileDataVT@@AIAV?$vector@M$03@@22@Z: %normalOcclusionGloss"}
!63 = distinct !{!63, !61, !"\01?ApplyDecalsAvt@@YAXUCompositeScratchContext@@UTerrainTileDataVT@@AIAV?$vector@M$03@@22@Z: %emissive"}
!64 = distinct !{!64, !65, !"\01?CompositeScratch_VolumeDecals@@YA_NIUCompositeScratchContext@@UCompositeScratchResults@@@Z: %results"}
!65 = distinct !{!65, !"\01?CompositeScratch_VolumeDecals@@YA_NIUCompositeScratchContext@@UCompositeScratchResults@@@Z"}
!66 = !{!56, !58, !59, !60, !62, !63, !64}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 2}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 1}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 1}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 2}

