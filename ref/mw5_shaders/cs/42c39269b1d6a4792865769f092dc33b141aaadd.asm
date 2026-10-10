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
; shader hash: 30922a214198bfcaa885b8d4ac9b8bf0
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

define void @cs_compose_volume_decals_to_scratch_vhm_with_cutout() {
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
  %23 = alloca [4 x i32], align 4
  %24 = alloca [4 x i32], align 4
  %25 = alloca [4 x float], align 4
  %26 = alloca [4 x float], align 4
  %27 = alloca [4 x float], align 4
  %28 = alloca [4 x float], align 4
  %29 = alloca [4 x float], align 4
  %30 = alloca [4 x float], align 4
  %31 = alloca [4 x i32], align 4
  %32 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %33 = extractvalue %dx.types.CBufRet.i32 %32, 3
  %34 = shl i32 %12, 3
  %35 = udiv i32 %34, %33
  %36 = lshr i32 %35, 1
  %37 = add nuw i32 %36, 233
  %38 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 %37)  ; CBufferLoadLegacy(handle,regIndex)
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
  %50 = load i32, i32* %49, align 4, !tbaa !24, !noalias !28
  %51 = and i32 %50, 255
  %52 = urem i32 %10, %33
  %53 = add nuw nsw i32 %51, 198
  %54 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 %53)  ; CBufferLoadLegacy(handle,regIndex)
  %55 = extractvalue %dx.types.CBufRet.f32 %54, 0
  %56 = extractvalue %dx.types.CBufRet.f32 %54, 1
  %57 = extractvalue %dx.types.CBufRet.f32 %54, 2
  %58 = uitofp i32 %33 to float
  %59 = fdiv fast float %57, %58
  %60 = uitofp i32 %52 to float
  %61 = uitofp i32 %11 to float
  %62 = fmul fast float %59, %60
  %63 = fmul fast float %59, %61
  %64 = fadd fast float %62, %55
  %65 = fadd fast float %63, %56
  %66 = extractvalue %dx.types.CBufRet.f32 %54, 3
  %67 = mul i32 %51, %33
  %68 = add i32 %52, %67
  %69 = extractvalue %dx.types.CBufRet.i32 %32, 1
  %70 = icmp eq i32 %69, 5
  %71 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 undef, i32 %68, i32 %11, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %72 = extractvalue %dx.types.ResRet.f32 %71, 0
  %73 = extractvalue %dx.types.ResRet.f32 %71, 1
  %74 = extractvalue %dx.types.ResRet.f32 %71, 2
  br i1 %70, label %84, label %75, !dx.controlflow.hints !35

; <label>:75                                      ; preds = %0
  %76 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 undef, i32 %68, i32 %11, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %77 = extractvalue %dx.types.ResRet.f32 %76, 0
  %78 = extractvalue %dx.types.ResRet.f32 %76, 1
  %79 = extractvalue %dx.types.ResRet.f32 %76, 2
  %80 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 undef, i32 %68, i32 %11, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %81 = extractvalue %dx.types.ResRet.f32 %80, 0
  %82 = extractvalue %dx.types.ResRet.f32 %80, 1
  %83 = extractvalue %dx.types.ResRet.f32 %80, 2
  br label %84

; <label>:84                                      ; preds = %75, %0
  %85 = phi float [ undef, %0 ], [ %77, %75 ]
  %86 = phi float [ undef, %0 ], [ %78, %75 ]
  %87 = phi float [ undef, %0 ], [ %79, %75 ]
  %88 = phi float [ undef, %0 ], [ %81, %75 ]
  %89 = phi float [ undef, %0 ], [ %82, %75 ]
  %90 = phi float [ undef, %0 ], [ %83, %75 ]
  %91 = fcmp fast ole float %72, 0x3FA4B5DCC0000000
  %92 = fmul fast float %72, 0x3FB3D07220000000
  %93 = fadd fast float %72, 0x3FAC28F5C0000000
  %94 = fmul fast float %93, 0x3FEE54EDE0000000
  %95 = call float @dx.op.unary.f32(i32 23, float %94)  ; Log(value)
  %96 = fmul fast float %95, 0x4003333340000000
  %97 = call float @dx.op.unary.f32(i32 21, float %96)  ; Exp(value)
  %98 = select i1 %91, float %92, float %97
  %99 = fcmp fast ole float %73, 0x3FA4B5DCC0000000
  %100 = fmul fast float %73, 0x3FB3D07220000000
  %101 = fadd fast float %73, 0x3FAC28F5C0000000
  %102 = fmul fast float %101, 0x3FEE54EDE0000000
  %103 = call float @dx.op.unary.f32(i32 23, float %102)  ; Log(value)
  %104 = fmul fast float %103, 0x4003333340000000
  %105 = call float @dx.op.unary.f32(i32 21, float %104)  ; Exp(value)
  %106 = select i1 %99, float %100, float %105
  %107 = fcmp fast ole float %74, 0x3FA4B5DCC0000000
  %108 = fmul fast float %74, 0x3FB3D07220000000
  %109 = fadd fast float %74, 0x3FAC28F5C0000000
  %110 = fmul fast float %109, 0x3FEE54EDE0000000
  %111 = call float @dx.op.unary.f32(i32 23, float %110)  ; Log(value)
  %112 = fmul fast float %111, 0x4003333340000000
  %113 = call float @dx.op.unary.f32(i32 21, float %112)  ; Exp(value)
  %114 = select i1 %107, float %108, float %113
  br i1 %70, label %124, label %115, !dx.controlflow.hints !36

; <label>:115                                     ; preds = %84
  switch i32 %69, label %124 [
    i32 1, label %116
    i32 2, label %117
    i32 3, label %123
  ], !dx.controlflow.hints !37

; <label>:116                                     ; preds = %115
  br label %124

; <label>:117                                     ; preds = %115
  %118 = fcmp fast une float %90, 0.000000e+00
  %119 = fmul fast float %90, 3.200000e+01
  %120 = fadd fast float %119, -1.600000e+01
  %121 = call float @dx.op.unary.f32(i32 21, float %120)  ; Exp(value)
  %122 = select i1 %118, float %121, float 0.000000e+00
  br label %124

; <label>:123                                     ; preds = %115
  br label %124

; <label>:124                                     ; preds = %123, %117, %116, %115, %84
  %125 = phi float [ 0.000000e+00, %115 ], [ %90, %123 ], [ 0.000000e+00, %117 ], [ 0.000000e+00, %116 ], [ 0.000000e+00, %84 ]
  %126 = phi float [ 0.000000e+00, %115 ], [ 0.000000e+00, %123 ], [ 0.000000e+00, %117 ], [ %90, %116 ], [ 0.000000e+00, %84 ]
  %127 = phi float [ 0.000000e+00, %115 ], [ 0.000000e+00, %123 ], [ %122, %117 ], [ 0.000000e+00, %116 ], [ 0.000000e+00, %84 ]
  %128 = phi float [ %89, %115 ], [ %89, %123 ], [ %89, %117 ], [ %89, %116 ], [ 0.000000e+00, %84 ]
  %129 = phi float [ %85, %115 ], [ %85, %123 ], [ %85, %117 ], [ %85, %116 ], [ 0.000000e+00, %84 ]
  %130 = phi float [ %87, %115 ], [ %87, %123 ], [ %87, %117 ], [ %87, %116 ], [ 0.000000e+00, %84 ]
  %131 = phi float [ %86, %115 ], [ %86, %123 ], [ %86, %117 ], [ %86, %116 ], [ 0.000000e+00, %84 ]
  %132 = phi float [ %88, %115 ], [ %88, %123 ], [ %88, %117 ], [ %88, %116 ], [ 0.000000e+00, %84 ]
  %133 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 22)  ; CBufferLoadLegacy(handle,regIndex)
  %134 = extractvalue %dx.types.CBufRet.i32 %133, 2
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %1220, label %136, !dx.controlflow.hints !38

; <label>:136                                     ; preds = %124
  %137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 25)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.f32 %137, 0
  %139 = fdiv fast float 5.000000e-01, %138
  %140 = extractvalue %dx.types.CBufRet.f32 %137, 1
  %141 = fdiv fast float 5.000000e-01, %140
  %142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %143 = extractvalue %dx.types.CBufRet.f32 %142, 2
  %144 = fmul fast float %143, %64
  %145 = fmul fast float %143, %65
  %146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %147 = extractvalue %dx.types.CBufRet.f32 %146, 2
  %148 = extractvalue %dx.types.CBufRet.f32 %146, 3
  %149 = fdiv fast float %144, %147
  %150 = fdiv fast float %145, %148
  %151 = fmul fast float %139, 2.000000e+00
  %152 = fmul fast float %141, 2.000000e+00
  %153 = fsub fast float 1.000000e+00, %151
  %154 = fsub fast float 1.000000e+00, %152
  %155 = fmul fast float %149, %153
  %156 = fmul fast float %150, %154
  %157 = fadd fast float %155, %139
  %158 = fadd fast float %156, %141
  %159 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %160 = extractvalue %dx.types.CBufRet.i32 %159, 3
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %175, !dx.controlflow.hints !39

; <label>:162                                     ; preds = %136
  %163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %164 = extractvalue %dx.types.CBufRet.f32 %163, 0
  %165 = extractvalue %dx.types.CBufRet.f32 %163, 2
  %166 = fdiv fast float 5.000000e-01, %164
  %167 = fmul fast float %166, 2.000000e+00
  %168 = fsub fast float 1.000000e+00, %167
  %169 = fmul fast float %168, %157
  %170 = fmul fast float %168, %158
  %171 = fadd fast float %169, %166
  %172 = fadd fast float %170, %166
  %173 = fmul fast float %171, %165
  %174 = fmul fast float %172, %165
  br label %175

; <label>:175                                     ; preds = %162, %136
  %176 = phi float [ %173, %162 ], [ %157, %136 ]
  %177 = phi float [ %174, %162 ], [ %158, %136 ]
  %178 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %179 = extractvalue %dx.types.CBufRet.i32 %178, 3
  %180 = add i32 %179, 0
  %181 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %180, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %182 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %183 = extractvalue %dx.types.CBufRet.i32 %182, 3
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %298, label %185, !dx.controlflow.hints !40

; <label>:185                                     ; preds = %175
  %186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %187 = extractvalue %dx.types.CBufRet.f32 %186, 2
  %188 = extractvalue %dx.types.CBufRet.f32 %186, 3
  %189 = fmul fast float %187, %176
  %190 = fmul fast float %188, %177
  %191 = extractvalue %dx.types.CBufRet.f32 %186, 0
  %192 = extractvalue %dx.types.CBufRet.f32 %186, 1
  %193 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %194 = extractvalue %dx.types.CBufRet.i32 %193, 0
  %195 = extractvalue %dx.types.CBufRet.i32 %193, 1
  %196 = extractvalue %dx.types.CBufRet.i32 %193, 2
  %197 = extractvalue %dx.types.CBufRet.i32 %193, 3
  %198 = fadd fast float %187, 0xBF847AE140000000
  %199 = fadd fast float %188, 0xBF847AE140000000
  %200 = call float @dx.op.binary.f32(i32 35, float %189, float 0.000000e+00)  ; FMax(a,b)
  %201 = call float @dx.op.binary.f32(i32 35, float %190, float 0.000000e+00)  ; FMax(a,b)
  %202 = call float @dx.op.binary.f32(i32 36, float %200, float %198)  ; FMin(a,b)
  %203 = call float @dx.op.binary.f32(i32 36, float %201, float %199)  ; FMin(a,b)
  %204 = fdiv fast float %202, %191
  %205 = fdiv fast float %203, %192
  %206 = fptoui float %204 to i32
  %207 = fptoui float %205 to i32
  %208 = mul i32 %207, %194
  %209 = add i32 %208, %206
  %210 = lshr i32 %209, 1
  %211 = shl i32 %210, 2
  %212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %211, i32 undef)  ; BufferLoad(srv,index,wot)
  %213 = extractvalue %dx.types.ResRet.i32 %212, 0
  %214 = shl i32 %209, 4
  %215 = and i32 %214, 16
  %216 = lshr i32 %213, %215
  %217 = and i32 %216, 255
  %218 = lshr i32 %216, 8
  %219 = and i32 %218, 31
  %220 = shl i32 1, %219
  %221 = uitofp i32 %220 to float
  %222 = fmul fast float %221, %202
  %223 = fdiv fast float %222, %187
  %224 = fmul fast float %221, %203
  %225 = fdiv fast float %224, %188
  %226 = call float @dx.op.unary.f32(i32 22, float %223)  ; Frc(value)
  %227 = call float @dx.op.unary.f32(i32 22, float %225)  ; Frc(value)
  %228 = uitofp i32 %195 to float
  %229 = fmul fast float %226, %228
  %230 = fmul fast float %227, %228
  %231 = uitofp i32 %197 to float
  %232 = fadd fast float %229, %231
  %233 = fadd fast float %230, %231
  %234 = mul i32 %217, %196
  %235 = call float @dx.op.unary.f32(i32 22, float %232)  ; Frc(value)
  %236 = fptoui float %232 to i32
  %237 = fptoui float %233 to i32
  %238 = getelementptr [4 x i32], [4 x i32]* %23, i32 0, i32 0
  %239 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 0
  store i32 %236, i32* %238, align 4
  store i32 %237, i32* %239, align 4
  %240 = add i32 %236, 1
  %241 = getelementptr [4 x i32], [4 x i32]* %23, i32 0, i32 1
  %242 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 1
  store i32 %240, i32* %241, align 4
  store i32 %237, i32* %242, align 4
  %243 = add i32 %237, 1
  %244 = getelementptr [4 x i32], [4 x i32]* %23, i32 0, i32 2
  %245 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 2
  store i32 %236, i32* %244, align 4
  store i32 %243, i32* %245, align 4
  %246 = getelementptr [4 x i32], [4 x i32]* %23, i32 0, i32 3
  %247 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 3
  store i32 %240, i32* %246, align 4
  store i32 %243, i32* %247, align 4
  br label %248

; <label>:248                                     ; preds = %272, %185
  %249 = phi i32 [ %237, %185 ], [ %276, %272 ]
  %250 = phi i32 [ %236, %185 ], [ %274, %272 ]
  %251 = phi i32 [ 0, %185 ], [ %270, %272 ]
  %252 = add i32 %196, -1
  %253 = call i32 @dx.op.binary.i32(i32 40, i32 %250, i32 %252)  ; UMin(a,b)
  %254 = call i32 @dx.op.binary.i32(i32 40, i32 %249, i32 %252)  ; UMin(a,b)
  %255 = add i32 %254, %234
  %256 = mul i32 %255, %196
  %257 = add i32 %256, %253
  %258 = lshr i32 %257, 1
  %259 = shl i32 %258, 2
  %260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %259, i32 undef)  ; BufferLoad(srv,index,wot)
  %261 = extractvalue %dx.types.ResRet.i32 %260, 0
  %262 = shl i32 %257, 4
  %263 = and i32 %262, 16
  %264 = lshr i32 %261, %263
  %265 = and i32 %264, 65535
  %266 = uitofp i32 %265 to float
  %267 = fmul fast float %266, 0x3EF0002000000000
  %268 = call float @dx.op.unary.f32(i32 7, float %267)  ; Saturate(value)
  %269 = getelementptr inbounds [4 x float], [4 x float]* %30, i32 0, i32 %251
  store float %268, float* %269, align 4, !tbaa !41, !noalias !43
  %270 = add nuw nsw i32 %251, 1
  %271 = icmp eq i32 %270, 4
  br i1 %271, label %277, label %272

; <label>:272                                     ; preds = %248
  %273 = getelementptr [4 x i32], [4 x i32]* %23, i32 0, i32 %270
  %274 = load i32, i32* %273, align 4
  %275 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 %270
  %276 = load i32, i32* %275, align 4
  br label %248

; <label>:277                                     ; preds = %248
  %278 = call float @dx.op.unary.f32(i32 22, float %233)  ; Frc(value)
  %279 = fsub fast float 1.000000e+00, %235
  %280 = getelementptr inbounds [4 x float], [4 x float]* %30, i32 0, i32 0
  %281 = load float, float* %280, align 4, !tbaa !41, !noalias !43
  %282 = fmul fast float %281, %279
  %283 = getelementptr inbounds [4 x float], [4 x float]* %30, i32 0, i32 1
  %284 = load float, float* %283, align 4, !tbaa !41, !noalias !43
  %285 = fmul fast float %284, %235
  %286 = fadd fast float %285, %282
  %287 = getelementptr inbounds [4 x float], [4 x float]* %30, i32 0, i32 2
  %288 = load float, float* %287, align 4, !tbaa !41, !noalias !43
  %289 = fmul fast float %288, %279
  %290 = getelementptr inbounds [4 x float], [4 x float]* %30, i32 0, i32 3
  %291 = load float, float* %290, align 4, !tbaa !41, !noalias !43
  %292 = fmul fast float %291, %235
  %293 = fadd fast float %292, %289
  %294 = fsub fast float 1.000000e+00, %278
  %295 = fmul fast float %286, %294
  %296 = fmul fast float %293, %278
  %297 = fadd fast float %296, %295
  br label %301

; <label>:298                                     ; preds = %175
  %299 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %181, %dx.types.Handle %8, float %176, float %177, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %300 = extractvalue %dx.types.ResRet.f32 %299, 0
  br label %301

; <label>:301                                     ; preds = %298, %277
  %302 = phi float [ %297, %277 ], [ %300, %298 ]
  %303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 25)  ; CBufferLoadLegacy(handle,regIndex)
  %304 = extractvalue %dx.types.CBufRet.f32 %303, 2
  %305 = extractvalue %dx.types.CBufRet.f32 %303, 3
  %306 = fmul fast float %305, %302
  %307 = fadd fast float %306, %304
  %308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %309 = extractvalue %dx.types.CBufRet.f32 %308, 2
  %310 = extractvalue %dx.types.CBufRet.f32 %303, 0
  %311 = extractvalue %dx.types.CBufRet.f32 %303, 1
  %312 = fdiv fast float 1.000000e+00, %310
  %313 = fdiv fast float 1.000000e+00, %311
  br i1 %184, label %640, label %314, !dx.controlflow.hints !50

; <label>:314                                     ; preds = %301
  %315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %316 = extractvalue %dx.types.CBufRet.f32 %315, 2
  %317 = extractvalue %dx.types.CBufRet.f32 %315, 3
  %318 = fmul fast float %316, %176
  %319 = fmul fast float %317, %177
  %320 = extractvalue %dx.types.CBufRet.f32 %315, 0
  %321 = extractvalue %dx.types.CBufRet.f32 %315, 1
  %322 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %323 = extractvalue %dx.types.CBufRet.i32 %322, 0
  %324 = extractvalue %dx.types.CBufRet.i32 %322, 1
  %325 = extractvalue %dx.types.CBufRet.i32 %322, 2
  %326 = extractvalue %dx.types.CBufRet.i32 %322, 3
  %327 = mul i32 %325, %325
  %328 = fadd fast float %316, 0xBF847AE140000000
  %329 = fadd fast float %317, 0xBF847AE140000000
  %330 = call float @dx.op.binary.f32(i32 35, float %318, float 0.000000e+00)  ; FMax(a,b)
  %331 = call float @dx.op.binary.f32(i32 35, float %319, float 0.000000e+00)  ; FMax(a,b)
  %332 = call float @dx.op.binary.f32(i32 36, float %330, float %328)  ; FMin(a,b)
  %333 = call float @dx.op.binary.f32(i32 36, float %331, float %329)  ; FMin(a,b)
  %334 = fdiv fast float %332, %320
  %335 = fdiv fast float %333, %321
  %336 = fptoui float %334 to i32
  %337 = fptoui float %335 to i32
  %338 = mul i32 %337, %323
  %339 = add i32 %338, %336
  %340 = lshr i32 %339, 1
  %341 = shl i32 %340, 2
  %342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %341, i32 undef)  ; BufferLoad(srv,index,wot)
  %343 = extractvalue %dx.types.ResRet.i32 %342, 0
  %344 = shl i32 %339, 4
  %345 = and i32 %344, 16
  %346 = lshr i32 %343, %345
  %347 = and i32 %346, 255
  %348 = lshr i32 %346, 8
  %349 = and i32 %348, 31
  %350 = shl i32 1, %349
  %351 = uitofp i32 %350 to float
  %352 = fmul fast float %351, %332
  %353 = fdiv fast float %352, %316
  %354 = fmul fast float %351, %333
  %355 = fdiv fast float %354, %317
  %356 = call float @dx.op.unary.f32(i32 22, float %353)  ; Frc(value)
  %357 = call float @dx.op.unary.f32(i32 22, float %355)  ; Frc(value)
  %358 = uitofp i32 %324 to float
  %359 = fmul fast float %356, %358
  %360 = fmul fast float %357, %358
  %361 = uitofp i32 %326 to float
  %362 = fadd fast float %359, %361
  %363 = fadd fast float %360, %361
  %364 = mul i32 %327, %347
  %365 = fadd fast float %362, -1.000000e+00
  %366 = fadd fast float %363, -1.000000e+00
  %367 = call float @dx.op.unary.f32(i32 22, float %365)  ; Frc(value)
  %368 = fptoui float %365 to i32
  %369 = fptoui float %363 to i32
  %370 = getelementptr [4 x i32], [4 x i32]* %17, i32 0, i32 0
  %371 = getelementptr [4 x i32], [4 x i32]* %18, i32 0, i32 0
  store i32 %368, i32* %370, align 4
  store i32 %369, i32* %371, align 4
  %372 = add i32 %368, 1
  %373 = getelementptr [4 x i32], [4 x i32]* %17, i32 0, i32 1
  %374 = getelementptr [4 x i32], [4 x i32]* %18, i32 0, i32 1
  store i32 %372, i32* %373, align 4
  store i32 %369, i32* %374, align 4
  %375 = add i32 %369, 1
  %376 = getelementptr [4 x i32], [4 x i32]* %17, i32 0, i32 2
  %377 = getelementptr [4 x i32], [4 x i32]* %18, i32 0, i32 2
  store i32 %368, i32* %376, align 4
  store i32 %375, i32* %377, align 4
  %378 = getelementptr [4 x i32], [4 x i32]* %17, i32 0, i32 3
  %379 = getelementptr [4 x i32], [4 x i32]* %18, i32 0, i32 3
  store i32 %372, i32* %378, align 4
  store i32 %375, i32* %379, align 4
  %380 = add i32 %325, -1
  br label %381

; <label>:381                                     ; preds = %404, %314
  %382 = phi i32 [ %369, %314 ], [ %408, %404 ]
  %383 = phi i32 [ %368, %314 ], [ %406, %404 ]
  %384 = phi i32 [ 0, %314 ], [ %402, %404 ]
  %385 = call i32 @dx.op.binary.i32(i32 40, i32 %383, i32 %380)  ; UMin(a,b)
  %386 = call i32 @dx.op.binary.i32(i32 40, i32 %382, i32 %380)  ; UMin(a,b)
  %387 = mul i32 %386, %325
  %388 = add i32 %385, %364
  %389 = add i32 %388, %387
  %390 = lshr i32 %389, 1
  %391 = shl i32 %390, 2
  %392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %391, i32 undef)  ; BufferLoad(srv,index,wot)
  %393 = extractvalue %dx.types.ResRet.i32 %392, 0
  %394 = shl i32 %389, 4
  %395 = and i32 %394, 16
  %396 = lshr i32 %393, %395
  %397 = and i32 %396, 65535
  %398 = uitofp i32 %397 to float
  %399 = fmul fast float %398, 0x3EF0002000000000
  %400 = call float @dx.op.unary.f32(i32 7, float %399)  ; Saturate(value)
  %401 = getelementptr inbounds [4 x float], [4 x float]* %28, i32 0, i32 %384
  store float %400, float* %401, align 4, !tbaa !41, !noalias !51
  %402 = add nuw nsw i32 %384, 1
  %403 = icmp eq i32 %402, 4
  br i1 %403, label %409, label %404

; <label>:404                                     ; preds = %381
  %405 = getelementptr [4 x i32], [4 x i32]* %17, i32 0, i32 %402
  %406 = load i32, i32* %405, align 4
  %407 = getelementptr [4 x i32], [4 x i32]* %18, i32 0, i32 %402
  %408 = load i32, i32* %407, align 4
  br label %381

; <label>:409                                     ; preds = %381
  %410 = fadd fast float %362, 1.000000e+00
  %411 = fadd fast float %363, 1.000000e+00
  %412 = call float @dx.op.unary.f32(i32 22, float %363)  ; Frc(value)
  %413 = fsub fast float 1.000000e+00, %367
  %414 = getelementptr inbounds [4 x float], [4 x float]* %28, i32 0, i32 0
  %415 = load float, float* %414, align 4, !tbaa !41, !noalias !51
  %416 = fmul fast float %415, %413
  %417 = getelementptr inbounds [4 x float], [4 x float]* %28, i32 0, i32 1
  %418 = load float, float* %417, align 4, !tbaa !41, !noalias !51
  %419 = fmul fast float %418, %367
  %420 = fadd fast float %419, %416
  %421 = getelementptr inbounds [4 x float], [4 x float]* %28, i32 0, i32 2
  %422 = load float, float* %421, align 4, !tbaa !41, !noalias !51
  %423 = getelementptr inbounds [4 x float], [4 x float]* %28, i32 0, i32 3
  %424 = load float, float* %423, align 4, !tbaa !41, !noalias !51
  %425 = fmul fast float %424, %367
  %426 = fsub fast float 1.000000e+00, %412
  %427 = fmul fast float %420, %426
  %428 = call float @dx.op.unary.f32(i32 22, float %410)  ; Frc(value)
  %429 = fptoui float %410 to i32
  %430 = getelementptr [4 x i32], [4 x i32]* %19, i32 0, i32 0
  %431 = getelementptr [4 x i32], [4 x i32]* %20, i32 0, i32 0
  store i32 %429, i32* %430, align 4
  store i32 %369, i32* %431, align 4
  %432 = add i32 %429, 1
  %433 = getelementptr [4 x i32], [4 x i32]* %19, i32 0, i32 1
  %434 = getelementptr [4 x i32], [4 x i32]* %20, i32 0, i32 1
  store i32 %432, i32* %433, align 4
  store i32 %369, i32* %434, align 4
  %435 = getelementptr [4 x i32], [4 x i32]* %19, i32 0, i32 2
  %436 = getelementptr [4 x i32], [4 x i32]* %20, i32 0, i32 2
  store i32 %429, i32* %435, align 4
  store i32 %375, i32* %436, align 4
  %437 = getelementptr [4 x i32], [4 x i32]* %19, i32 0, i32 3
  %438 = getelementptr [4 x i32], [4 x i32]* %20, i32 0, i32 3
  store i32 %432, i32* %437, align 4
  store i32 %375, i32* %438, align 4
  br label %439

; <label>:439                                     ; preds = %462, %409
  %440 = phi i32 [ %369, %409 ], [ %466, %462 ]
  %441 = phi i32 [ %429, %409 ], [ %464, %462 ]
  %442 = phi i32 [ 0, %409 ], [ %460, %462 ]
  %443 = call i32 @dx.op.binary.i32(i32 40, i32 %441, i32 %380)  ; UMin(a,b)
  %444 = call i32 @dx.op.binary.i32(i32 40, i32 %440, i32 %380)  ; UMin(a,b)
  %445 = mul i32 %444, %325
  %446 = add i32 %443, %364
  %447 = add i32 %446, %445
  %448 = lshr i32 %447, 1
  %449 = shl i32 %448, 2
  %450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %449, i32 undef)  ; BufferLoad(srv,index,wot)
  %451 = extractvalue %dx.types.ResRet.i32 %450, 0
  %452 = shl i32 %447, 4
  %453 = and i32 %452, 16
  %454 = lshr i32 %451, %453
  %455 = and i32 %454, 65535
  %456 = uitofp i32 %455 to float
  %457 = fmul fast float %456, 0x3EF0002000000000
  %458 = call float @dx.op.unary.f32(i32 7, float %457)  ; Saturate(value)
  %459 = getelementptr inbounds [4 x float], [4 x float]* %27, i32 0, i32 %442
  store float %458, float* %459, align 4, !tbaa !41, !noalias !51
  %460 = add nuw nsw i32 %442, 1
  %461 = icmp eq i32 %460, 4
  br i1 %461, label %467, label %462

; <label>:462                                     ; preds = %439
  %463 = getelementptr [4 x i32], [4 x i32]* %19, i32 0, i32 %460
  %464 = load i32, i32* %463, align 4
  %465 = getelementptr [4 x i32], [4 x i32]* %20, i32 0, i32 %460
  %466 = load i32, i32* %465, align 4
  br label %439

; <label>:467                                     ; preds = %439
  %468 = fmul fast float %422, %413
  %469 = fadd fast float %425, %468
  %470 = fmul fast float %469, %412
  %471 = fsub fast float 1.000000e+00, %428
  %472 = getelementptr inbounds [4 x float], [4 x float]* %27, i32 0, i32 0
  %473 = load float, float* %472, align 4, !tbaa !41, !noalias !51
  %474 = fmul fast float %473, %471
  %475 = getelementptr inbounds [4 x float], [4 x float]* %27, i32 0, i32 1
  %476 = load float, float* %475, align 4, !tbaa !41, !noalias !51
  %477 = fmul fast float %476, %428
  %478 = fadd fast float %477, %474
  %479 = getelementptr inbounds [4 x float], [4 x float]* %27, i32 0, i32 2
  %480 = load float, float* %479, align 4, !tbaa !41, !noalias !51
  %481 = getelementptr inbounds [4 x float], [4 x float]* %27, i32 0, i32 3
  %482 = load float, float* %481, align 4, !tbaa !41, !noalias !51
  %483 = fmul fast float %482, %428
  %484 = fmul fast float %478, %426
  %485 = call float @dx.op.unary.f32(i32 22, float %362)  ; Frc(value)
  %486 = fptoui float %362 to i32
  %487 = fptoui float %366 to i32
  %488 = getelementptr [4 x i32], [4 x i32]* %15, i32 0, i32 0
  %489 = getelementptr [4 x i32], [4 x i32]* %16, i32 0, i32 0
  store i32 %486, i32* %488, align 4
  store i32 %487, i32* %489, align 4
  %490 = add i32 %486, 1
  %491 = getelementptr [4 x i32], [4 x i32]* %15, i32 0, i32 1
  %492 = getelementptr [4 x i32], [4 x i32]* %16, i32 0, i32 1
  store i32 %490, i32* %491, align 4
  store i32 %487, i32* %492, align 4
  %493 = add i32 %487, 1
  %494 = getelementptr [4 x i32], [4 x i32]* %15, i32 0, i32 2
  %495 = getelementptr [4 x i32], [4 x i32]* %16, i32 0, i32 2
  store i32 %486, i32* %494, align 4
  store i32 %493, i32* %495, align 4
  %496 = getelementptr [4 x i32], [4 x i32]* %15, i32 0, i32 3
  %497 = getelementptr [4 x i32], [4 x i32]* %16, i32 0, i32 3
  store i32 %490, i32* %496, align 4
  store i32 %493, i32* %497, align 4
  br label %498

; <label>:498                                     ; preds = %521, %467
  %499 = phi i32 [ %487, %467 ], [ %525, %521 ]
  %500 = phi i32 [ %486, %467 ], [ %523, %521 ]
  %501 = phi i32 [ 0, %467 ], [ %519, %521 ]
  %502 = call i32 @dx.op.binary.i32(i32 40, i32 %500, i32 %380)  ; UMin(a,b)
  %503 = call i32 @dx.op.binary.i32(i32 40, i32 %499, i32 %380)  ; UMin(a,b)
  %504 = mul i32 %503, %325
  %505 = add i32 %502, %364
  %506 = add i32 %505, %504
  %507 = lshr i32 %506, 1
  %508 = shl i32 %507, 2
  %509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %510 = extractvalue %dx.types.ResRet.i32 %509, 0
  %511 = shl i32 %506, 4
  %512 = and i32 %511, 16
  %513 = lshr i32 %510, %512
  %514 = and i32 %513, 65535
  %515 = uitofp i32 %514 to float
  %516 = fmul fast float %515, 0x3EF0002000000000
  %517 = call float @dx.op.unary.f32(i32 7, float %516)  ; Saturate(value)
  %518 = getelementptr inbounds [4 x float], [4 x float]* %26, i32 0, i32 %501
  store float %517, float* %518, align 4, !tbaa !41, !noalias !51
  %519 = add nuw nsw i32 %501, 1
  %520 = icmp eq i32 %519, 4
  br i1 %520, label %526, label %521

; <label>:521                                     ; preds = %498
  %522 = getelementptr [4 x i32], [4 x i32]* %15, i32 0, i32 %519
  %523 = load i32, i32* %522, align 4
  %524 = getelementptr [4 x i32], [4 x i32]* %16, i32 0, i32 %519
  %525 = load i32, i32* %524, align 4
  br label %498

; <label>:526                                     ; preds = %498
  %527 = fmul fast float %480, %471
  %528 = fadd fast float %483, %527
  %529 = fmul fast float %528, %412
  %530 = call float @dx.op.unary.f32(i32 22, float %366)  ; Frc(value)
  %531 = fsub fast float 1.000000e+00, %485
  %532 = getelementptr inbounds [4 x float], [4 x float]* %26, i32 0, i32 0
  %533 = load float, float* %532, align 4, !tbaa !41, !noalias !51
  %534 = fmul fast float %533, %531
  %535 = getelementptr inbounds [4 x float], [4 x float]* %26, i32 0, i32 1
  %536 = load float, float* %535, align 4, !tbaa !41, !noalias !51
  %537 = fmul fast float %536, %485
  %538 = fadd fast float %537, %534
  %539 = getelementptr inbounds [4 x float], [4 x float]* %26, i32 0, i32 2
  %540 = load float, float* %539, align 4, !tbaa !41, !noalias !51
  %541 = getelementptr inbounds [4 x float], [4 x float]* %26, i32 0, i32 3
  %542 = load float, float* %541, align 4, !tbaa !41, !noalias !51
  %543 = fmul fast float %542, %485
  %544 = fsub fast float 1.000000e+00, %530
  %545 = fmul fast float %538, %544
  %546 = fptoui float %411 to i32
  %547 = getelementptr [4 x i32], [4 x i32]* %13, i32 0, i32 0
  %548 = getelementptr [4 x i32], [4 x i32]* %14, i32 0, i32 0
  store i32 %486, i32* %547, align 4
  store i32 %546, i32* %548, align 4
  %549 = getelementptr [4 x i32], [4 x i32]* %13, i32 0, i32 1
  %550 = getelementptr [4 x i32], [4 x i32]* %14, i32 0, i32 1
  store i32 %490, i32* %549, align 4
  store i32 %546, i32* %550, align 4
  %551 = add i32 %546, 1
  %552 = getelementptr [4 x i32], [4 x i32]* %13, i32 0, i32 2
  %553 = getelementptr [4 x i32], [4 x i32]* %14, i32 0, i32 2
  store i32 %486, i32* %552, align 4
  store i32 %551, i32* %553, align 4
  %554 = getelementptr [4 x i32], [4 x i32]* %13, i32 0, i32 3
  %555 = getelementptr [4 x i32], [4 x i32]* %14, i32 0, i32 3
  store i32 %490, i32* %554, align 4
  store i32 %551, i32* %555, align 4
  br label %556

; <label>:556                                     ; preds = %579, %526
  %557 = phi i32 [ %546, %526 ], [ %583, %579 ]
  %558 = phi i32 [ %486, %526 ], [ %581, %579 ]
  %559 = phi i32 [ 0, %526 ], [ %577, %579 ]
  %560 = call i32 @dx.op.binary.i32(i32 40, i32 %558, i32 %380)  ; UMin(a,b)
  %561 = call i32 @dx.op.binary.i32(i32 40, i32 %557, i32 %380)  ; UMin(a,b)
  %562 = mul i32 %561, %325
  %563 = add i32 %560, %364
  %564 = add i32 %563, %562
  %565 = lshr i32 %564, 1
  %566 = shl i32 %565, 2
  %567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %566, i32 undef)  ; BufferLoad(srv,index,wot)
  %568 = extractvalue %dx.types.ResRet.i32 %567, 0
  %569 = shl i32 %564, 4
  %570 = and i32 %569, 16
  %571 = lshr i32 %568, %570
  %572 = and i32 %571, 65535
  %573 = uitofp i32 %572 to float
  %574 = fmul fast float %573, 0x3EF0002000000000
  %575 = call float @dx.op.unary.f32(i32 7, float %574)  ; Saturate(value)
  %576 = getelementptr inbounds [4 x float], [4 x float]* %25, i32 0, i32 %559
  store float %575, float* %576, align 4, !tbaa !41, !noalias !51
  %577 = add nuw nsw i32 %559, 1
  %578 = icmp eq i32 %577, 4
  br i1 %578, label %584, label %579

; <label>:579                                     ; preds = %556
  %580 = getelementptr [4 x i32], [4 x i32]* %13, i32 0, i32 %577
  %581 = load i32, i32* %580, align 4
  %582 = getelementptr [4 x i32], [4 x i32]* %14, i32 0, i32 %577
  %583 = load i32, i32* %582, align 4
  br label %556

; <label>:584                                     ; preds = %556
  %585 = fmul fast float %540, %531
  %586 = fadd fast float %543, %585
  %587 = fmul fast float %586, %530
  %588 = call float @dx.op.unary.f32(i32 22, float %411)  ; Frc(value)
  %589 = getelementptr inbounds [4 x float], [4 x float]* %25, i32 0, i32 0
  %590 = load float, float* %589, align 4, !tbaa !41, !noalias !51
  %591 = fmul fast float %590, %531
  %592 = getelementptr inbounds [4 x float], [4 x float]* %25, i32 0, i32 1
  %593 = load float, float* %592, align 4, !tbaa !41, !noalias !51
  %594 = fmul fast float %593, %485
  %595 = fadd fast float %594, %591
  %596 = getelementptr inbounds [4 x float], [4 x float]* %25, i32 0, i32 2
  %597 = load float, float* %596, align 4, !tbaa !41, !noalias !51
  %598 = fmul fast float %597, %531
  %599 = getelementptr inbounds [4 x float], [4 x float]* %25, i32 0, i32 3
  %600 = load float, float* %599, align 4, !tbaa !41, !noalias !51
  %601 = fmul fast float %600, %485
  %602 = fadd fast float %601, %598
  %603 = fsub fast float 1.000000e+00, %588
  %604 = fmul fast float %595, %603
  %605 = fmul fast float %602, %588
  %606 = fmul fast float %316, 2.000000e+00
  %607 = fmul fast float %351, %358
  %608 = fdiv fast float %606, %607
  %609 = fsub fast float -0.000000e+00, %427
  %610 = fsub fast float %609, %470
  %611 = fadd fast float %610, %484
  %612 = fadd fast float %611, %529
  %613 = fmul fast float %612, %305
  %614 = fmul fast float %317, 2.000000e+00
  %615 = fdiv fast float %614, %607
  %616 = fsub fast float -0.000000e+00, %545
  %617 = fsub fast float %616, %587
  %618 = fadd fast float %617, %604
  %619 = fadd fast float %618, %605
  %620 = fmul fast float %613, %615
  %621 = fsub fast float -0.000000e+00, %620
  %622 = fmul fast float %305, %608
  %623 = fmul fast float %622, %619
  %624 = fsub fast float -0.000000e+00, %623
  %625 = fmul fast float %615, %608
  %626 = call float @dx.op.dot3.f32(i32 55, float %621, float %624, float %625, float %621, float %624, float %625)  ; Dot3(ax,ay,az,bx,by,bz)
  %627 = call float @dx.op.unary.f32(i32 25, float %626)  ; Rsqrt(value)
  %628 = fmul fast float %627, %621
  %629 = fmul fast float %627, %624
  %630 = fmul fast float %627, %625
  %631 = call float @dx.op.dot3.f32(i32 55, float %608, float 0.000000e+00, float %613, float %608, float 0.000000e+00, float %613)  ; Dot3(ax,ay,az,bx,by,bz)
  %632 = call float @dx.op.unary.f32(i32 25, float %631)  ; Rsqrt(value)
  %633 = fmul fast float %632, %608
  %634 = fmul fast float %632, %613
  %635 = fmul fast float %629, %634
  %636 = fmul fast float %633, %630
  %637 = fmul fast float %634, %628
  %638 = fsub fast float %636, %637
  %639 = fmul fast float %629, %633
  br label %703

; <label>:640                                     ; preds = %301
  %641 = getelementptr [4 x float], [4 x float]* %21, i32 0, i32 0
  %642 = getelementptr [4 x float], [4 x float]* %22, i32 0, i32 0
  %643 = fsub fast float -0.000000e+00, %312
  store float %643, float* %641, align 4
  store float 0.000000e+00, float* %642, align 4
  %644 = getelementptr [4 x float], [4 x float]* %21, i32 0, i32 1
  %645 = getelementptr [4 x float], [4 x float]* %22, i32 0, i32 1
  store float %312, float* %644, align 4
  store float 0.000000e+00, float* %645, align 4
  %646 = getelementptr [4 x float], [4 x float]* %21, i32 0, i32 2
  %647 = getelementptr [4 x float], [4 x float]* %22, i32 0, i32 2
  %648 = fsub fast float -0.000000e+00, %313
  store float 0.000000e+00, float* %646, align 4
  store float %648, float* %647, align 4
  %649 = getelementptr [4 x float], [4 x float]* %21, i32 0, i32 3
  %650 = getelementptr [4 x float], [4 x float]* %22, i32 0, i32 3
  store float 0.000000e+00, float* %649, align 4
  store float %313, float* %650, align 4
  br label %651

; <label>:651                                     ; preds = %664, %640
  %652 = phi float [ 0.000000e+00, %640 ], [ %668, %664 ]
  %653 = phi float [ %643, %640 ], [ %666, %664 ]
  %654 = phi i32 [ 0, %640 ], [ %662, %664 ]
  %655 = fadd fast float %653, %176
  %656 = fadd fast float %652, %177
  %657 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %181, %dx.types.Handle %8, float %655, float %656, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %658 = extractvalue %dx.types.ResRet.f32 %657, 0
  %659 = fmul fast float %658, %305
  %660 = fadd fast float %659, %304
  %661 = getelementptr [4 x float], [4 x float]* %29, i32 0, i32 %654
  store float %660, float* %661, align 4, !tbaa !41, !noalias !63
  %662 = add nuw nsw i32 %654, 1
  %663 = icmp eq i32 %662, 4
  br i1 %663, label %669, label %664

; <label>:664                                     ; preds = %651
  %665 = getelementptr [4 x float], [4 x float]* %21, i32 0, i32 %662
  %666 = load float, float* %665, align 4
  %667 = getelementptr [4 x float], [4 x float]* %22, i32 0, i32 %662
  %668 = load float, float* %667, align 4
  br label %651

; <label>:669                                     ; preds = %651
  %670 = fdiv fast float %309, %310
  %671 = fdiv fast float %309, %311
  %672 = fmul fast float %670, 2.000000e+00
  %673 = getelementptr [4 x float], [4 x float]* %29, i32 0, i32 1
  %674 = load float, float* %673, align 4, !tbaa !41, !noalias !63
  %675 = getelementptr [4 x float], [4 x float]* %29, i32 0, i32 0
  %676 = load float, float* %675, align 4, !tbaa !41, !noalias !63
  %677 = fsub fast float %674, %676
  %678 = fmul fast float %671, 2.000000e+00
  %679 = getelementptr [4 x float], [4 x float]* %29, i32 0, i32 3
  %680 = load float, float* %679, align 4, !tbaa !41, !noalias !63
  %681 = getelementptr [4 x float], [4 x float]* %29, i32 0, i32 2
  %682 = load float, float* %681, align 4, !tbaa !41, !noalias !63
  %683 = fsub fast float %680, %682
  %684 = fmul fast float %671, -2.000000e+00
  %685 = fmul fast float %684, %677
  %686 = fmul fast float %670, -2.000000e+00
  %687 = fmul fast float %686, %683
  %688 = fmul fast float %678, %672
  %689 = call float @dx.op.dot3.f32(i32 55, float %685, float %687, float %688, float %685, float %687, float %688)  ; Dot3(ax,ay,az,bx,by,bz)
  %690 = call float @dx.op.unary.f32(i32 25, float %689)  ; Rsqrt(value)
  %691 = fmul fast float %690, %685
  %692 = fmul fast float %690, %687
  %693 = fmul fast float %690, %688
  %694 = call float @dx.op.dot3.f32(i32 55, float %672, float 0.000000e+00, float %677, float %672, float 0.000000e+00, float %677)  ; Dot3(ax,ay,az,bx,by,bz)
  %695 = call float @dx.op.unary.f32(i32 25, float %694)  ; Rsqrt(value)
  %696 = fmul fast float %695, %672
  %697 = fmul fast float %695, %677
  %698 = fmul fast float %697, %692
  %699 = fmul fast float %696, %693
  %700 = fmul fast float %697, %691
  %701 = fsub fast float %699, %700
  %702 = fmul fast float %696, %692
  br label %703

; <label>:703                                     ; preds = %669, %584
  %704 = phi float [ %639, %584 ], [ %702, %669 ]
  %705 = phi float [ %628, %584 ], [ %691, %669 ]
  %706 = phi float [ %629, %584 ], [ %692, %669 ]
  %707 = phi float [ %630, %584 ], [ %693, %669 ]
  %708 = phi float [ %635, %584 ], [ %698, %669 ]
  %709 = phi float [ %638, %584 ], [ %701, %669 ]
  %710 = phi float [ %633, %584 ], [ %696, %669 ]
  %711 = phi float [ %634, %584 ], [ %697, %669 ]
  %712 = fsub fast float -0.000000e+00, %704
  %713 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %714 = extractvalue %dx.types.CBufRet.i32 %713, 1
  %715 = icmp eq i32 %714, 5
  %716 = extractvalue %dx.types.CBufRet.f32 %308, 0
  %717 = extractvalue %dx.types.CBufRet.f32 %308, 1
  %718 = fmul fast float %309, %64
  %719 = fmul fast float %309, %65
  %720 = fadd fast float %718, %716
  %721 = fadd fast float %719, %717
  %722 = fmul fast float %129, 2.000000e+00
  %723 = fadd fast float %722, -1.000000e+00
  %724 = fmul fast float %131, 2.000000e+00
  %725 = fadd fast float %724, -1.000000e+00
  %726 = fadd fast float %725, %723
  %727 = fmul fast float %726, 5.000000e-01
  %728 = fsub fast float %723, %725
  %729 = fmul fast float %728, 5.000000e-01
  %730 = call float @dx.op.unary.f32(i32 6, float %727)  ; FAbs(value)
  %731 = fsub fast float 1.000000e+00, %730
  %732 = call float @dx.op.unary.f32(i32 6, float %729)  ; FAbs(value)
  %733 = fsub fast float %731, %732
  %734 = call float @dx.op.dot3.f32(i32 55, float %727, float %729, float %733, float %727, float %729, float %733)  ; Dot3(ax,ay,az,bx,by,bz)
  %735 = call float @dx.op.unary.f32(i32 25, float %734)  ; Rsqrt(value)
  %736 = fmul fast float %735, %727
  %737 = fmul fast float %735, %729
  %738 = fmul fast float %735, %733
  %739 = fmul fast float %736, %711
  %740 = call float @dx.op.tertiary.f32(i32 46, float %737, float %712, float %739)  ; FMad(a,b,c)
  %741 = call float @dx.op.tertiary.f32(i32 46, float %738, float %707, float %740)  ; FMad(a,b,c)
  %742 = call float @dx.op.tertiary.f32(i32 46, float %737, float %709, float 0.000000e+00)  ; FMad(a,b,c)
  %743 = call float @dx.op.tertiary.f32(i32 46, float %738, float %706, float %742)  ; FMad(a,b,c)
  %744 = fmul fast float %736, %710
  %745 = call float @dx.op.tertiary.f32(i32 46, float %737, float %708, float %744)  ; FMad(a,b,c)
  %746 = call float @dx.op.tertiary.f32(i32 46, float %738, float %705, float %745)  ; FMad(a,b,c)
  br label %747

; <label>:747                                     ; preds = %1173, %703
  %748 = phi float [ %1174, %1173 ], [ %127, %703 ]
  %749 = phi float [ %1175, %1173 ], [ %746, %703 ]
  %750 = phi float [ %1176, %1173 ], [ %743, %703 ]
  %751 = phi float [ %1177, %1173 ], [ %741, %703 ]
  %752 = phi float [ %1178, %1173 ], [ %130, %703 ]
  %753 = phi float [ %1179, %1173 ], [ %128, %703 ]
  %754 = phi float [ %1180, %1173 ], [ %132, %703 ]
  %755 = phi float [ %1181, %1173 ], [ %98, %703 ]
  %756 = phi float [ %1182, %1173 ], [ %106, %703 ]
  %757 = phi float [ %1183, %1173 ], [ %114, %703 ]
  %758 = phi i32 [ %1184, %1173 ], [ 0, %703 ]
  %759 = phi i32 [ %1185, %1173 ], [ 0, %703 ]
  %760 = shl i32 %759, 8
  %761 = or i32 %760, 48
  %762 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %761, i32 undef)  ; BufferLoad(srv,index,wot)
  %763 = extractvalue %dx.types.ResRet.f32 %762, 0
  %764 = extractvalue %dx.types.ResRet.f32 %762, 1
  %765 = extractvalue %dx.types.ResRet.f32 %762, 2
  %766 = extractvalue %dx.types.ResRet.f32 %762, 3
  %767 = or i32 %760, 64
  %768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %767, i32 undef)  ; BufferLoad(srv,index,wot)
  %769 = extractvalue %dx.types.ResRet.i32 %768, 0
  %770 = extractvalue %dx.types.ResRet.i32 %768, 1
  %771 = extractvalue %dx.types.ResRet.i32 %768, 2
  %772 = extractvalue %dx.types.ResRet.i32 %768, 3
  %773 = or i32 %760, 80
  %774 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %773, i32 undef)  ; BufferLoad(srv,index,wot)
  %775 = extractvalue %dx.types.ResRet.f32 %774, 0
  %776 = extractvalue %dx.types.ResRet.f32 %774, 1
  %777 = extractvalue %dx.types.ResRet.f32 %774, 2
  %778 = extractvalue %dx.types.ResRet.f32 %774, 3
  %779 = or i32 %760, 96
  %780 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %779, i32 undef)  ; BufferLoad(srv,index,wot)
  %781 = extractvalue %dx.types.ResRet.f32 %780, 0
  %782 = extractvalue %dx.types.ResRet.f32 %780, 1
  %783 = extractvalue %dx.types.ResRet.f32 %780, 2
  %784 = extractvalue %dx.types.ResRet.f32 %780, 3
  %785 = or i32 %760, 112
  %786 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %785, i32 undef)  ; BufferLoad(srv,index,wot)
  %787 = extractvalue %dx.types.ResRet.f32 %786, 0
  %788 = extractvalue %dx.types.ResRet.f32 %786, 1
  %789 = extractvalue %dx.types.ResRet.f32 %786, 2
  %790 = extractvalue %dx.types.ResRet.f32 %786, 3
  %791 = or i32 %760, 128
  %792 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %791, i32 undef)  ; BufferLoad(srv,index,wot)
  %793 = extractvalue %dx.types.ResRet.f32 %792, 0
  %794 = extractvalue %dx.types.ResRet.f32 %792, 1
  %795 = extractvalue %dx.types.ResRet.f32 %792, 2
  %796 = extractvalue %dx.types.ResRet.f32 %792, 3
  %797 = or i32 %760, 144
  %798 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %797, i32 undef)  ; BufferLoad(srv,index,wot)
  %799 = extractvalue %dx.types.ResRet.f32 %798, 0
  %800 = extractvalue %dx.types.ResRet.f32 %798, 1
  %801 = extractvalue %dx.types.ResRet.f32 %798, 2
  %802 = extractvalue %dx.types.ResRet.f32 %798, 3
  %803 = or i32 %760, 160
  %804 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %803, i32 undef)  ; BufferLoad(srv,index,wot)
  %805 = extractvalue %dx.types.ResRet.f32 %804, 0
  %806 = extractvalue %dx.types.ResRet.f32 %804, 1
  %807 = extractvalue %dx.types.ResRet.f32 %804, 2
  %808 = or i32 %760, 192
  %809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %808, i32 undef)  ; BufferLoad(srv,index,wot)
  %810 = extractvalue %dx.types.ResRet.i32 %809, 0
  %811 = or i32 %760, 208
  %812 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %811, i32 undef)  ; BufferLoad(srv,index,wot)
  %813 = extractvalue %dx.types.ResRet.f32 %812, 0
  %814 = or i32 %760, 240
  %815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %814, i32 undef)  ; BufferLoad(srv,index,wot)
  %816 = extractvalue %dx.types.ResRet.i32 %815, 1
  %817 = or i32 %760, 248
  %818 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %817, i32 undef)  ; BufferLoad(srv,index,wot)
  %819 = extractvalue %dx.types.ResRet.f32 %818, 0
  %820 = extractvalue %dx.types.ResRet.f32 %818, 1
  %821 = uitofp i32 %816 to float
  %822 = fmul fast float %821, 5.000000e+01
  %823 = call float @dx.op.unary.f32(i32 23, float %822)  ; Log(value)
  %824 = call float @dx.op.unary.f32(i32 28, float %823)  ; Round_pi(value)
  %825 = fsub fast float %824, %66
  %826 = fptosi float %825 to i32
  %827 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %826)  ; IMax(a,b)
  %828 = bitcast float %766 to i32
  %829 = and i32 %828, 2560
  %830 = icmp eq i32 %829, 0
  br i1 %830, label %831, label %1173, !dx.controlflow.hints !64

; <label>:831                                     ; preds = %747
  %832 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %760, i32 undef)  ; BufferLoad(srv,index,wot)
  %833 = extractvalue %dx.types.ResRet.f32 %832, 0
  %834 = extractvalue %dx.types.ResRet.f32 %832, 1
  %835 = extractvalue %dx.types.ResRet.f32 %832, 2
  %836 = extractvalue %dx.types.ResRet.f32 %832, 3
  %837 = call float @dx.op.dot4.f32(i32 56, float %833, float %834, float %835, float %836, float %720, float %721, float %307, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %838 = or i32 %760, 16
  %839 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %838, i32 undef)  ; BufferLoad(srv,index,wot)
  %840 = extractvalue %dx.types.ResRet.f32 %839, 0
  %841 = extractvalue %dx.types.ResRet.f32 %839, 1
  %842 = extractvalue %dx.types.ResRet.f32 %839, 2
  %843 = extractvalue %dx.types.ResRet.f32 %839, 3
  %844 = call float @dx.op.dot4.f32(i32 56, float %840, float %841, float %842, float %843, float %720, float %721, float %307, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %845 = or i32 %760, 32
  %846 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %845, i32 undef)  ; BufferLoad(srv,index,wot)
  %847 = extractvalue %dx.types.ResRet.f32 %846, 0
  %848 = extractvalue %dx.types.ResRet.f32 %846, 1
  %849 = extractvalue %dx.types.ResRet.f32 %846, 2
  %850 = extractvalue %dx.types.ResRet.f32 %846, 3
  %851 = call float @dx.op.dot4.f32(i32 56, float %847, float %848, float %849, float %850, float %720, float %721, float %307, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %852 = call float @dx.op.unary.f32(i32 27, float %837)  ; Round_ni(value)
  %853 = call float @dx.op.unary.f32(i32 6, float %852)  ; FAbs(value)
  %854 = call float @dx.op.unary.f32(i32 27, float %844)  ; Round_ni(value)
  %855 = call float @dx.op.unary.f32(i32 6, float %854)  ; FAbs(value)
  %856 = call float @dx.op.unary.f32(i32 6, float %851)  ; FAbs(value)
  %857 = call float @dx.op.unary.f32(i32 27, float %856)  ; Round_ni(value)
  %858 = fadd fast float %855, %853
  %859 = fadd fast float %858, %857
  %860 = fcmp fast oeq float %859, 0.000000e+00
  %861 = call float @dx.op.dot3.f32(i32 55, float %763, float %764, float %765, float %705, float %706, float %707)  ; Dot3(ax,ay,az,bx,by,bz)
  %862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %863 = extractvalue %dx.types.CBufRet.f32 %862, 2
  %864 = fadd fast float %863, %861
  %865 = call float @dx.op.unary.f32(i32 7, float %864)  ; Saturate(value)
  %866 = extractvalue %dx.types.CBufRet.f32 %862, 0
  %867 = fcmp fast ogt float %865, %866
  %868 = and i1 %860, %867
  br i1 %868, label %869, label %1173, !dx.controlflow.hints !65

; <label>:869                                     ; preds = %831
  %870 = add i32 %758, 1
  %871 = sitofp i32 %827 to float
  %872 = add i32 %772, 0
  %873 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %872, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %874 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %873, i32 0)  ; GetDimensions(handle,mipLevel)
  %875 = extractvalue %dx.types.Dimensions %874, 0
  %876 = extractvalue %dx.types.Dimensions %874, 1
  %877 = uitofp i32 %875 to float
  %878 = uitofp i32 %876 to float
  %879 = call float @dx.op.binary.f32(i32 35, float %877, float %878)  ; FMax(a,b)
  %880 = call float @dx.op.unary.f32(i32 23, float %879)  ; Log(value)
  %881 = call float @dx.op.unary.f32(i32 28, float %880)  ; Round_pi(value)
  %882 = fsub fast float %881, %871
  %883 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %882)  ; FMax(a,b)
  %884 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %873, %dx.types.Handle %7, float %837, float %844, float undef, float undef, i32 0, i32 0, i32 undef, float %883)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %885 = extractvalue %dx.types.ResRet.f32 %884, 0
  %886 = fmul fast float %885, %775
  %887 = fadd fast float %886, %776
  %888 = call float @dx.op.unary.f32(i32 7, float %887)  ; Saturate(value)
  %889 = fmul fast float %837, %781
  %890 = call float @dx.op.tertiary.f32(i32 46, float %782, float %844, float %889)  ; FMad(a,b,c)
  %891 = fadd fast float %890, %787
  %892 = fmul fast float %837, %783
  %893 = call float @dx.op.tertiary.f32(i32 46, float %784, float %844, float %892)  ; FMad(a,b,c)
  %894 = fadd fast float %893, %788
  %895 = add i32 %771, 0
  %896 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %895, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %897 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %896, i32 0)  ; GetDimensions(handle,mipLevel)
  %898 = extractvalue %dx.types.Dimensions %897, 0
  %899 = extractvalue %dx.types.Dimensions %897, 1
  %900 = uitofp i32 %898 to float
  %901 = uitofp i32 %899 to float
  %902 = call float @dx.op.binary.f32(i32 35, float %900, float %901)  ; FMax(a,b)
  %903 = call float @dx.op.unary.f32(i32 23, float %902)  ; Log(value)
  %904 = call float @dx.op.unary.f32(i32 28, float %903)  ; Round_pi(value)
  %905 = fsub fast float %904, %871
  %906 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %905)  ; FMax(a,b)
  %907 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %896, %dx.types.Handle %7, float %891, float %894, float undef, float undef, i32 0, i32 0, i32 undef, float %906)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %908 = extractvalue %dx.types.ResRet.f32 %907, 0
  %909 = and i32 %828, 1024
  %910 = icmp ne i32 %909, 0
  %911 = fcmp fast ogt float %908, 0x3FE0101020000000
  %912 = uitofp i1 %911 to float
  %913 = select i1 %910, float %912, float %908
  %914 = and i32 %828, 8192
  %915 = icmp ne i32 %914, 0
  %916 = select i1 %915, float %790, float 1.000000e+00
  %917 = fmul fast float %837, 2.000000e+00
  %918 = fadd fast float %917, -1.000000e+00
  %919 = call float @dx.op.unary.f32(i32 6, float %918)  ; FAbs(value)
  %920 = fmul fast float %919, %819
  %921 = fsub fast float %920, %819
  %922 = call float @dx.op.unary.f32(i32 7, float %921)  ; Saturate(value)
  %923 = fmul fast float %844, 2.000000e+00
  %924 = fadd fast float %923, -1.000000e+00
  %925 = call float @dx.op.unary.f32(i32 6, float %924)  ; FAbs(value)
  %926 = fmul fast float %925, %820
  %927 = fsub fast float %926, %820
  %928 = call float @dx.op.unary.f32(i32 7, float %927)  ; Saturate(value)
  %929 = fmul fast float %856, %777
  %930 = fsub fast float %929, %777
  %931 = call float @dx.op.unary.f32(i32 7, float %930)  ; Saturate(value)
  %932 = fmul fast float %888, %916
  %933 = fmul fast float %932, %885
  %934 = fmul fast float %933, %922
  %935 = fmul fast float %934, %913
  %936 = fmul fast float %935, %928
  %937 = fmul fast float %936, %931
  %938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %939 = extractvalue %dx.types.CBufRet.f32 %938, 1
  %940 = extractvalue %dx.types.CBufRet.f32 %938, 0
  %941 = fsub fast float %865, %940
  %942 = fmul fast float %941, %939
  %943 = call float @dx.op.unary.f32(i32 7, float %942)  ; Saturate(value)
  %944 = fmul fast float %937, %778
  %945 = fadd fast float %937, %778
  %946 = fmul fast float %945, %789
  %947 = fsub fast float %946, %789
  %948 = call float @dx.op.unary.f32(i32 7, float %947)  ; Saturate(value)
  %949 = and i32 %828, 128
  %950 = icmp ne i32 %949, 0
  %951 = select i1 %950, float %948, float %944
  %952 = fmul fast float %951, %943
  %953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %954 = extractvalue %dx.types.CBufRet.f32 %953, 0
  %955 = fcmp fast ugt float %952, %954
  br i1 %955, label %956, label %1173, !dx.controlflow.hints !66

; <label>:956                                     ; preds = %869
  br i1 %915, label %1173, label %957, !dx.controlflow.hints !67

; <label>:957                                     ; preds = %956
  %958 = and i32 %828, 4
  %959 = and i32 %828, 8
  %960 = add i32 %769, 0
  %961 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %960, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %962 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %961, i32 0)  ; GetDimensions(handle,mipLevel)
  %963 = extractvalue %dx.types.Dimensions %962, 0
  %964 = extractvalue %dx.types.Dimensions %962, 1
  %965 = uitofp i32 %963 to float
  %966 = uitofp i32 %964 to float
  %967 = call float @dx.op.binary.f32(i32 35, float %965, float %966)  ; FMax(a,b)
  %968 = call float @dx.op.unary.f32(i32 23, float %967)  ; Log(value)
  %969 = call float @dx.op.unary.f32(i32 28, float %968)  ; Round_pi(value)
  %970 = fsub fast float %969, %871
  %971 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %970)  ; FMax(a,b)
  %972 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %961, %dx.types.Handle %7, float %891, float %894, float undef, float undef, i32 0, i32 0, i32 undef, float %971)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %973 = extractvalue %dx.types.ResRet.f32 %972, 0
  %974 = extractvalue %dx.types.ResRet.f32 %972, 1
  %975 = extractvalue %dx.types.ResRet.f32 %972, 2
  %976 = extractvalue %dx.types.ResRet.f32 %972, 3
  %977 = bitcast float %802 to i32
  %978 = and i32 %977, 255
  %979 = uitofp i32 %978 to float
  %980 = lshr i32 %977, 8
  %981 = and i32 %980, 255
  %982 = uitofp i32 %981 to float
  %983 = fmul fast float %976, %979
  %984 = fadd fast float %983, %982
  %985 = fmul fast float %984, 0x3F70101000000000
  %986 = add i32 %770, 0
  %987 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %986, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %988 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %987, i32 0)  ; GetDimensions(handle,mipLevel)
  %989 = extractvalue %dx.types.Dimensions %988, 0
  %990 = extractvalue %dx.types.Dimensions %988, 1
  %991 = uitofp i32 %989 to float
  %992 = uitofp i32 %990 to float
  %993 = call float @dx.op.binary.f32(i32 35, float %991, float %992)  ; FMax(a,b)
  %994 = call float @dx.op.unary.f32(i32 23, float %993)  ; Log(value)
  %995 = call float @dx.op.unary.f32(i32 28, float %994)  ; Round_pi(value)
  %996 = fsub fast float %995, %871
  %997 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %996)  ; FMax(a,b)
  %998 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %987, %dx.types.Handle %7, float %891, float %894, float undef, float undef, i32 0, i32 0, i32 undef, float %997)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %999 = extractvalue %dx.types.ResRet.f32 %998, 0
  %1000 = extractvalue %dx.types.ResRet.f32 %998, 1
  %1001 = extractvalue %dx.types.ResRet.f32 %998, 2
  %1002 = extractvalue %dx.types.ResRet.f32 %998, 3
  %1003 = bitcast float %796 to i32
  %1004 = and i32 %1003, 255
  %1005 = uitofp i32 %1004 to float
  %1006 = lshr i32 %1003, 8
  %1007 = and i32 %1006, 255
  %1008 = uitofp i32 %1007 to float
  %1009 = lshr i32 %1003, 16
  %1010 = and i32 %1009, 255
  %1011 = uitofp i32 %1010 to float
  %1012 = fmul fast float %1011, 0x3F70101000000000
  %1013 = fmul fast float %999, %1005
  %1014 = fadd fast float %1013, %1008
  %1015 = fmul fast float %1014, 0x3F70101000000000
  %1016 = fadd fast float %1000, -5.000000e-01
  %1017 = fadd fast float %1002, -5.000000e-01
  %1018 = fmul fast float %1016, %1012
  %1019 = fmul fast float %1017, %1012
  %1020 = fadd fast float %1018, 5.000000e-01
  %1021 = fadd fast float %1019, 5.000000e-01
  %1022 = fmul fast float %973, %805
  %1023 = fmul fast float %974, %806
  %1024 = fmul fast float %975, %807
  %1025 = fmul fast float %1020, 2.000000e+00
  %1026 = fadd fast float %1025, -1.000000e+00
  %1027 = fmul fast float %1021, 2.000000e+00
  %1028 = fadd fast float %1027, -1.000000e+00
  %1029 = fadd fast float %1026, %1028
  %1030 = fmul fast float %1029, 5.000000e-01
  %1031 = fsub fast float %1026, %1028
  %1032 = fmul fast float %1031, 5.000000e-01
  %1033 = call float @dx.op.unary.f32(i32 6, float %1030)  ; FAbs(value)
  %1034 = fsub fast float 1.000000e+00, %1033
  %1035 = call float @dx.op.unary.f32(i32 6, float %1032)  ; FAbs(value)
  %1036 = fsub fast float %1034, %1035
  %1037 = call float @dx.op.dot3.f32(i32 55, float %1030, float %1032, float %1036, float %1030, float %1032, float %1036)  ; Dot3(ax,ay,az,bx,by,bz)
  %1038 = call float @dx.op.unary.f32(i32 25, float %1037)  ; Rsqrt(value)
  %1039 = fmul fast float %1030, %1038
  %1040 = fmul fast float %1032, %1038
  %1041 = fmul fast float %1038, %1036
  %1042 = fmul fast float %1041, %763
  %1043 = fmul fast float %1041, %764
  %1044 = fmul fast float %1041, %765
  %1045 = fmul fast float %1039, %793
  %1046 = fmul fast float %1039, %794
  %1047 = fmul fast float %1039, %795
  %1048 = fadd fast float %1045, %1042
  %1049 = fadd fast float %1046, %1043
  %1050 = fadd fast float %1047, %1044
  %1051 = fmul fast float %1040, %799
  %1052 = fmul fast float %1040, %800
  %1053 = fmul fast float %1040, %801
  %1054 = fadd fast float %1048, %1051
  %1055 = fadd fast float %1049, %1052
  %1056 = fadd fast float %1050, %1053
  %1057 = call float @dx.op.dot3.f32(i32 55, float %1054, float %1055, float %1056, float %1054, float %1055, float %1056)  ; Dot3(ax,ay,az,bx,by,bz)
  %1058 = call float @dx.op.unary.f32(i32 25, float %1057)  ; Rsqrt(value)
  %1059 = fmul fast float %1054, %1058
  %1060 = fmul fast float %1055, %1058
  %1061 = fmul fast float %1056, %1058
  %1062 = icmp ne i32 %959, 0
  %1063 = select i1 %1062, float 1.000000e+00, float 0.000000e+00
  %1064 = fmul fast float %952, %1063
  %1065 = and i32 %828, 1
  %1066 = icmp eq i32 %1065, 0
  br i1 %1066, label %1067, label %1071, !dx.controlflow.hints !68

; <label>:1067                                    ; preds = %957
  %1068 = fsub fast float %1059, %749
  %1069 = fsub fast float %1060, %750
  %1070 = fsub fast float %1061, %751
  br label %1071

; <label>:1071                                    ; preds = %1067, %957
  %1072 = phi float [ %1068, %1067 ], [ %1059, %957 ]
  %1073 = phi float [ %1069, %1067 ], [ %1060, %957 ]
  %1074 = phi float [ %1070, %1067 ], [ %1061, %957 ]
  %1075 = fmul float %1074, %1064
  %1076 = fmul float %1073, %1064
  %1077 = fmul float %1072, %1064
  %1078 = fadd fast float %1077, %749
  %1079 = fadd fast float %1076, %750
  %1080 = fadd fast float %1075, %751
  %1081 = icmp ne i32 %958, 0
  %1082 = select i1 %1081, float 1.000000e+00, float 0.000000e+00
  %1083 = fmul fast float %952, %1082
  %1084 = fsub fast float %1022, %755
  %1085 = fsub fast float %1023, %756
  %1086 = fsub fast float %1024, %757
  %1087 = fmul fast float %1084, %1083
  %1088 = fmul fast float %1085, %1083
  %1089 = fmul fast float %1086, %1083
  %1090 = fadd fast float %1087, %755
  %1091 = fadd fast float %1088, %756
  %1092 = fadd fast float %1089, %757
  %1093 = fsub fast float %985, %754
  %1094 = fmul fast float %1093, %1083
  %1095 = fadd fast float %1094, %754
  %1096 = fsub fast float %1015, %753
  %1097 = fmul fast float %1096, %1064
  %1098 = fadd fast float %1097, %753
  %1099 = fsub fast float %1001, %752
  %1100 = fmul fast float %1099, %1064
  %1101 = fadd fast float %1100, %752
  %1102 = and i32 %828, 16
  %1103 = icmp eq i32 %1102, 0
  br i1 %1103, label %1173, label %1104, !dx.controlflow.hints !69

; <label>:1104                                    ; preds = %1071
  %1105 = add i32 %810, 0
  %1106 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1105, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1107 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1108 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1106, %dx.types.Handle %1107, float %891, float %894, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00, float 0.000000e+00, float undef, float 0.000000e+00, float 0.000000e+00, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1109 = extractvalue %dx.types.ResRet.f32 %1108, 0
  %1110 = extractvalue %dx.types.ResRet.f32 %1108, 1
  %1111 = extractvalue %dx.types.ResRet.f32 %1108, 2
  %1112 = bitcast float %813 to i32
  %1113 = and i32 %1112, 65535
  %1114 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1113)  ; LegacyF16ToF32(value)
  %1115 = fmul fast float %1109, %805
  %1116 = fmul fast float %1110, %806
  %1117 = fmul fast float %1111, %807
  %1118 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %1119 = extractvalue %dx.types.CBufRet.i32 %1118, 1
  %1120 = icmp eq i32 %1119, 2
  br i1 %1120, label %1121, label %1165, !dx.controlflow.hints !70

; <label>:1121                                    ; preds = %1104
  %1122 = call float @dx.op.binary.f32(i32 36, float %1090, float 0x3FEFAE1480000000)  ; FMin(a,b)
  %1123 = call float @dx.op.binary.f32(i32 36, float %1091, float 0x3FEFAE1480000000)  ; FMin(a,b)
  %1124 = call float @dx.op.binary.f32(i32 36, float %1092, float 0x3FEFAE1480000000)  ; FMin(a,b)
  %1125 = fsub fast float 1.000000e+00, %1122
  %1126 = fsub fast float 1.000000e+00, %1123
  %1127 = fsub fast float 1.000000e+00, %1124
  %1128 = call float @dx.op.unary.f32(i32 23, float %1125)  ; Log(value)
  %1129 = call float @dx.op.unary.f32(i32 23, float %1126)  ; Log(value)
  %1130 = call float @dx.op.unary.f32(i32 23, float %1127)  ; Log(value)
  %1131 = call float @dx.op.binary.f32(i32 36, float %1115, float 0x3FEFAE1480000000)  ; FMin(a,b)
  %1132 = call float @dx.op.binary.f32(i32 36, float %1116, float 0x3FEFAE1480000000)  ; FMin(a,b)
  %1133 = call float @dx.op.binary.f32(i32 36, float %1117, float 0x3FEFAE1480000000)  ; FMin(a,b)
  %1134 = fsub fast float 1.000000e+00, %1131
  %1135 = fsub fast float 1.000000e+00, %1132
  %1136 = fsub fast float 1.000000e+00, %1133
  %1137 = call float @dx.op.unary.f32(i32 23, float %1134)  ; Log(value)
  %1138 = call float @dx.op.unary.f32(i32 23, float %1135)  ; Log(value)
  %1139 = call float @dx.op.unary.f32(i32 23, float %1136)  ; Log(value)
  %1140 = fmul fast float %952, %1137
  %1141 = fmul fast float %952, %1138
  %1142 = fmul fast float %952, %1139
  %1143 = fsub fast float -0.000000e+00, %1128
  %1144 = fsub fast float %1143, %1140
  %1145 = fsub fast float -0.000000e+00, %1129
  %1146 = fsub fast float %1145, %1141
  %1147 = fsub fast float -0.000000e+00, %1130
  %1148 = fsub fast float %1147, %1142
  %1149 = fsub fast float -0.000000e+00, %1144
  %1150 = fsub fast float -0.000000e+00, %1146
  %1151 = fsub fast float -0.000000e+00, %1148
  %1152 = call float @dx.op.unary.f32(i32 21, float %1149)  ; Exp(value)
  %1153 = call float @dx.op.unary.f32(i32 21, float %1150)  ; Exp(value)
  %1154 = call float @dx.op.unary.f32(i32 21, float %1151)  ; Exp(value)
  %1155 = fsub fast float 1.000000e+00, %1152
  %1156 = fsub fast float 1.000000e+00, %1153
  %1157 = fsub fast float 1.000000e+00, %1154
  %1158 = call float @dx.op.dot3.f32(i32 55, float %1155, float %1156, float %1157, float %1155, float %1156, float %1157)  ; Dot3(ax,ay,az,bx,by,bz)
  %1159 = call float @dx.op.dot3.f32(i32 55, float %1115, float %1116, float %1117, float %1115, float %1116, float %1117)  ; Dot3(ax,ay,az,bx,by,bz)
  %1160 = fmul fast float %1159, %952
  %1161 = fcmp fast une float %1158, 0.000000e+00
  %1162 = fdiv fast float %1160, %1158
  %1163 = select i1 %1161, float %1162, float 0.000000e+00
  %1164 = fmul fast float %1163, %1114
  br label %1165

; <label>:1165                                    ; preds = %1121, %1104
  %1166 = phi float [ %1155, %1121 ], [ %1090, %1104 ]
  %1167 = phi float [ %1156, %1121 ], [ %1091, %1104 ]
  %1168 = phi float [ %1157, %1121 ], [ %1092, %1104 ]
  %1169 = phi float [ %1164, %1121 ], [ %1114, %1104 ]
  %1170 = fsub fast float %1169, %748
  %1171 = fmul fast float %1170, %952
  %1172 = fadd fast float %1171, %748
  br label %1173

; <label>:1173                                    ; preds = %1165, %1071, %956, %869, %831, %747
  %1174 = phi float [ %748, %747 ], [ %748, %869 ], [ %748, %956 ], [ %748, %831 ], [ %1172, %1165 ], [ %748, %1071 ]
  %1175 = phi float [ %749, %747 ], [ %749, %869 ], [ %749, %956 ], [ %749, %831 ], [ %1078, %1165 ], [ %1078, %1071 ]
  %1176 = phi float [ %750, %747 ], [ %750, %869 ], [ %750, %956 ], [ %750, %831 ], [ %1079, %1165 ], [ %1079, %1071 ]
  %1177 = phi float [ %751, %747 ], [ %751, %869 ], [ %751, %956 ], [ %751, %831 ], [ %1080, %1165 ], [ %1080, %1071 ]
  %1178 = phi float [ %752, %747 ], [ %752, %869 ], [ %752, %956 ], [ %752, %831 ], [ %1101, %1165 ], [ %1101, %1071 ]
  %1179 = phi float [ %753, %747 ], [ %753, %869 ], [ %753, %956 ], [ %753, %831 ], [ %1098, %1165 ], [ %1098, %1071 ]
  %1180 = phi float [ %754, %747 ], [ %754, %869 ], [ %754, %956 ], [ %754, %831 ], [ %1095, %1165 ], [ %1095, %1071 ]
  %1181 = phi float [ %755, %747 ], [ %755, %869 ], [ %755, %956 ], [ %755, %831 ], [ %1166, %1165 ], [ %1090, %1071 ]
  %1182 = phi float [ %756, %747 ], [ %756, %869 ], [ %756, %956 ], [ %756, %831 ], [ %1167, %1165 ], [ %1091, %1071 ]
  %1183 = phi float [ %757, %747 ], [ %757, %869 ], [ %757, %956 ], [ %757, %831 ], [ %1168, %1165 ], [ %1092, %1071 ]
  %1184 = phi i32 [ %758, %747 ], [ %870, %869 ], [ %870, %956 ], [ %758, %831 ], [ %870, %1165 ], [ %870, %1071 ]
  %1185 = add nuw i32 %759, 1
  %1186 = icmp eq i32 %1185, %134
  br i1 %1186, label %1187, label %747

; <label>:1187                                    ; preds = %1173
  %1188 = icmp eq i32 %1184, 0
  br i1 %1188, label %1220, label %1189, !dx.controlflow.hints !71

; <label>:1189                                    ; preds = %1187
  %1190 = call float @dx.op.unary.f32(i32 7, float %1181)  ; Saturate(value)
  %1191 = call float @dx.op.unary.f32(i32 7, float %1182)  ; Saturate(value)
  %1192 = call float @dx.op.unary.f32(i32 7, float %1183)  ; Saturate(value)
  br i1 %715, label %1220, label %1193, !dx.controlflow.hints !72

; <label>:1193                                    ; preds = %1189
  %1194 = call float @dx.op.dot3.f32(i32 55, float %1175, float %1176, float %1177, float %1175, float %1176, float %1177)  ; Dot3(ax,ay,az,bx,by,bz)
  %1195 = call float @dx.op.unary.f32(i32 25, float %1194)  ; Rsqrt(value)
  %1196 = fmul fast float %1195, %1175
  %1197 = fmul fast float %1195, %1176
  %1198 = fmul fast float %1195, %1177
  %1199 = fmul fast float %1196, %710
  %1200 = call float @dx.op.tertiary.f32(i32 46, float %1198, float %711, float %1199)  ; FMad(a,b,c)
  %1201 = fmul fast float %1196, %708
  %1202 = call float @dx.op.tertiary.f32(i32 46, float %1197, float %709, float %1201)  ; FMad(a,b,c)
  %1203 = call float @dx.op.tertiary.f32(i32 46, float %1198, float %712, float %1202)  ; FMad(a,b,c)
  %1204 = fmul fast float %1196, %705
  %1205 = call float @dx.op.tertiary.f32(i32 46, float %1197, float %706, float %1204)  ; FMad(a,b,c)
  %1206 = call float @dx.op.tertiary.f32(i32 46, float %1198, float %707, float %1205)  ; FMad(a,b,c)
  %1207 = call float @dx.op.unary.f32(i32 6, float %1200)  ; FAbs(value)
  %1208 = call float @dx.op.unary.f32(i32 6, float %1203)  ; FAbs(value)
  %1209 = fadd fast float %1207, %1206
  %1210 = fadd fast float %1209, %1208
  %1211 = fdiv fast float 1.000000e+00, %1210
  %1212 = fadd fast float %1203, %1200
  %1213 = fsub fast float %1200, %1203
  %1214 = fmul fast float %1212, 5.000000e-01
  %1215 = fmul fast float %1214, %1211
  %1216 = fadd fast float %1215, 5.000000e-01
  %1217 = fmul fast float %1213, 5.000000e-01
  %1218 = fmul fast float %1217, %1211
  %1219 = fadd fast float %1218, 5.000000e-01
  br label %1220

; <label>:1220                                    ; preds = %1193, %1189, %1187, %124
  %1221 = phi float [ %127, %124 ], [ %127, %1189 ], [ %1174, %1193 ], [ %127, %1187 ]
  %1222 = phi float [ %128, %124 ], [ %128, %1189 ], [ %1179, %1193 ], [ %128, %1187 ]
  %1223 = phi float [ %129, %124 ], [ %129, %1189 ], [ %1216, %1193 ], [ %129, %1187 ]
  %1224 = phi float [ %130, %124 ], [ %130, %1189 ], [ %1178, %1193 ], [ %130, %1187 ]
  %1225 = phi float [ %131, %124 ], [ %131, %1189 ], [ %1219, %1193 ], [ %131, %1187 ]
  %1226 = phi float [ %98, %124 ], [ %1190, %1189 ], [ %1190, %1193 ], [ %98, %1187 ]
  %1227 = phi float [ %106, %124 ], [ %1191, %1189 ], [ %1191, %1193 ], [ %106, %1187 ]
  %1228 = phi float [ %114, %124 ], [ %1192, %1189 ], [ %1192, %1193 ], [ %114, %1187 ]
  %1229 = phi float [ %132, %124 ], [ %1180, %1189 ], [ %1180, %1193 ], [ %132, %1187 ]
  %1230 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %1231 = extractvalue %dx.types.CBufRet.i32 %1230, 1
  %1232 = icmp eq i32 %1231, 5
  %1233 = fcmp fast ole float %1226, 0x3F69A5C380000000
  %1234 = fcmp fast ole float %1227, 0x3F69A5C380000000
  %1235 = fcmp fast ole float %1228, 0x3F69A5C380000000
  %1236 = fmul fast float %1226, 0x4029D70A40000000
  %1237 = fmul fast float %1227, 0x4029D70A40000000
  %1238 = fmul fast float %1228, 0x4029D70A40000000
  %1239 = call float @dx.op.unary.f32(i32 23, float %1226)  ; Log(value)
  %1240 = call float @dx.op.unary.f32(i32 23, float %1227)  ; Log(value)
  %1241 = call float @dx.op.unary.f32(i32 23, float %1228)  ; Log(value)
  %1242 = fmul fast float %1239, 0x3FDAAAAAA0000000
  %1243 = fmul fast float %1240, 0x3FDAAAAAA0000000
  %1244 = fmul fast float %1241, 0x3FDAAAAAA0000000
  %1245 = call float @dx.op.unary.f32(i32 21, float %1242)  ; Exp(value)
  %1246 = call float @dx.op.unary.f32(i32 21, float %1243)  ; Exp(value)
  %1247 = call float @dx.op.unary.f32(i32 21, float %1244)  ; Exp(value)
  %1248 = fmul fast float %1245, 0x3FF0E147A0000000
  %1249 = fmul fast float %1246, 0x3FF0E147A0000000
  %1250 = fmul fast float %1247, 0x3FF0E147A0000000
  %1251 = fadd fast float %1248, 0xBFAC28F5C0000000
  %1252 = fadd fast float %1249, 0xBFAC28F5C0000000
  %1253 = fadd fast float %1250, 0xBFAC28F5C0000000
  %1254 = select i1 %1233, float %1236, float %1251
  %1255 = select i1 %1234, float %1237, float %1252
  %1256 = select i1 %1235, float %1238, float %1253
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %68, i32 %11, i32 undef, float %1254, float %1255, float %1256, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br i1 %1232, label %1271, label %1257, !dx.controlflow.hints !73

; <label>:1257                                    ; preds = %1220
  %1258 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %1259 = extractvalue %dx.types.CBufRet.i32 %1258, 1
  switch i32 %1259, label %1269 [
    i32 1, label %1260
    i32 2, label %1261
    i32 3, label %1268
  ], !dx.controlflow.hints !74

; <label>:1260                                    ; preds = %1257
  br label %1269

; <label>:1261                                    ; preds = %1257
  %1262 = fcmp fast une float %1221, 0.000000e+00
  %1263 = call float @dx.op.unary.f32(i32 23, float %1221)  ; Log(value)
  %1264 = fadd fast float %1263, 1.600000e+01
  %1265 = fmul fast float %1264, 3.125000e-02
  %1266 = call float @dx.op.unary.f32(i32 7, float %1265)  ; Saturate(value)
  %1267 = select i1 %1262, float %1266, float 0.000000e+00
  br label %1269

; <label>:1268                                    ; preds = %1257
  br label %1269

; <label>:1269                                    ; preds = %1268, %1261, %1260, %1257
  %1270 = phi float [ 0.000000e+00, %1257 ], [ %125, %1268 ], [ %1267, %1261 ], [ %126, %1260 ]
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %68, i32 %11, i32 undef, float %1223, float %1225, float %1224, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %68, i32 %11, i32 undef, float %1229, float %1222, float %1270, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1271

; <label>:1271                                    ; preds = %1269, %1220
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
!21 = !{void ()* @cs_compose_volume_decals_to_scratch_vhm_with_cutout, !"cs_compose_volume_decals_to_scratch_vhm_with_cutout", null, !4, !22}
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
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 1}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 1}
!41 = !{!42, !42, i64 0}
!42 = !{!"float", !26, i64 0}
!43 = !{!44, !46, !47, !48}
!44 = distinct !{!44, !45, !"\01?VHM_ApplyDecalsAvt@@YAXV?$vector@M$01@@MAIAV?$vector@M$03@@11@Z: %albedoMetalness"}
!45 = distinct !{!45, !"\01?VHM_ApplyDecalsAvt@@YAXV?$vector@M$01@@MAIAV?$vector@M$03@@11@Z"}
!46 = distinct !{!46, !45, !"\01?VHM_ApplyDecalsAvt@@YAXV?$vector@M$01@@MAIAV?$vector@M$03@@11@Z: %normalOcclusionGloss"}
!47 = distinct !{!47, !45, !"\01?VHM_ApplyDecalsAvt@@YAXV?$vector@M$01@@MAIAV?$vector@M$03@@11@Z: %emissive"}
!48 = distinct !{!48, !49, !"\01?VHM_CompositeScratch_VolumeDecals@@YAXIUCompositeScratchContext@@UCompositeScratchResults@@@Z: %results"}
!49 = distinct !{!49, !"\01?VHM_CompositeScratch_VolumeDecals@@YAXIUCompositeScratchContext@@UCompositeScratchResults@@@Z"}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 1}
!51 = !{!52, !54, !55, !57, !58, !59, !61, !62, !44, !46, !47, !48}
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
!63 = !{!59, !61, !62, !44, !46, !47, !48}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}

