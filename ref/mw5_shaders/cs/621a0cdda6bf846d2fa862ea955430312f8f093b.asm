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
; shader hash: b57bf628f6994c952babff3588b23d1c
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
;                                   texture    byte         r/o      T2            t16     1
;                                       UAV     f32          2d      U0             u6     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<vector<unsigned int, 4> >" = type { <4 x i32>, %"class.Texture2D<vector<unsigned int, 4> >::mips_type" }
%"class.Texture2D<vector<unsigned int, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.RWTexture2D<float>" = type { float }
%GfxVirtualTexturingComposite = type { [8 x <4 x float>], [8 x <4 x float>], <3 x float>, i32, <2 x float>, float, float, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, [56 x %struct.TerrainTileDataVT], [20 x <4 x float>], [5 x <4 x i32>], [40 x <4 x i32>] }
%struct.TerrainTileDataVT = type { [2 x <4 x i32>], <2 x i32> }
%struct.SamplerState = type { i32 }

define void @cs_compose_displacement_to_scratch_with_cutout() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %7 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %8 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %9 = alloca [4 x i32], align 4
  %10 = lshr i32 %8, 3
  %11 = and i32 %10, 67108863
  %12 = add nuw nsw i32 %11, 233
  %13 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 %12)  ; CBufferLoadLegacy(handle,regIndex)
  %14 = extractvalue %dx.types.CBufRet.i32 %13, 0
  %15 = extractvalue %dx.types.CBufRet.i32 %13, 1
  %16 = extractvalue %dx.types.CBufRet.i32 %13, 2
  %17 = extractvalue %dx.types.CBufRet.i32 %13, 3
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i32 0, i32 0
  store i32 %14, i32* %18, align 4
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i32 0, i32 1
  store i32 %15, i32* %19, align 4
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i32 0, i32 2
  store i32 %16, i32* %20, align 4
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i32 0, i32 3
  store i32 %17, i32* %21, align 4
  %22 = lshr i32 %8, 1
  %23 = and i32 %22, 2
  %24 = getelementptr [4 x i32], [4 x i32]* %9, i32 0, i32 %23
  %25 = load i32, i32* %24, align 4, !tbaa !22, !noalias !26
  %26 = and i32 %25, 255
  %27 = or i32 %23, 1
  %28 = getelementptr [4 x i32], [4 x i32]* %9, i32 0, i32 %27
  %29 = load i32, i32* %28, align 4, !tbaa !22, !noalias !26
  %30 = lshr i32 %25, 8
  %31 = and i32 %6, 31
  %32 = add nuw nsw i32 %26, 198
  %33 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 %32)  ; CBufferLoadLegacy(handle,regIndex)
  %34 = extractvalue %dx.types.CBufRet.f32 %33, 0
  %35 = extractvalue %dx.types.CBufRet.f32 %33, 1
  %36 = extractvalue %dx.types.CBufRet.f32 %33, 2
  %37 = fmul fast float %36, 3.125000e-02
  %38 = uitofp i32 %31 to float
  %39 = uitofp i32 %7 to float
  %40 = fmul fast float %37, %38
  %41 = fmul fast float %37, %39
  %42 = fadd fast float %40, %34
  %43 = fadd fast float %41, %35
  %44 = extractvalue %dx.types.CBufRet.f32 %33, 3
  %45 = shl nuw nsw i32 %26, 5
  %46 = or i32 %45, %31
  %47 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %48 = extractvalue %dx.types.CBufRet.f32 %47, 0
  %49 = extractvalue %dx.types.CBufRet.f32 %47, 1
  %50 = extractvalue %dx.types.CBufRet.f32 %47, 2
  %51 = fmul fast float %42, %50
  %52 = fmul fast float %43, %50
  %53 = fadd fast float %51, %48
  %54 = fadd fast float %52, %49
  %55 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %56 = extractvalue %dx.types.CBufRet.i32 %55, 2
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %59, label %58, !dx.controlflow.hints !33

; <label>:58                                      ; preds = %0
  br label %223

; <label>:59                                      ; preds = %0
  br label %60

; <label>:60                                      ; preds = %217, %59
  %61 = phi i32 [ %218, %217 ], [ -1, %59 ]
  %62 = phi i32 [ %219, %217 ], [ 0, %59 ]
  %63 = phi float [ %220, %217 ], [ -1.000000e+09, %59 ]
  %64 = phi i32 [ %30, %217 ], [ %29, %59 ]
  %65 = phi i32 [ %221, %217 ], [ 0, %59 ]
  %66 = icmp eq i32 %64, 0
  br i1 %66, label %217, label %67

; <label>:67                                      ; preds = %60
  br label %68

; <label>:68                                      ; preds = %101, %67
  %69 = phi i32 [ %102, %101 ], [ %61, %67 ]
  %70 = phi i32 [ %103, %101 ], [ %62, %67 ]
  %71 = phi float [ %104, %101 ], [ %63, %67 ]
  %72 = phi i32 [ %77, %101 ], [ %64, %67 ]
  %73 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %72)  ; FirstbitLo(value)
  %74 = and i32 %73, 31
  %75 = shl i32 1, %74
  %76 = xor i32 %75, -1
  %77 = and i32 %72, %76
  %78 = shl i32 %65, 5
  %79 = add i32 %73, %78
  %80 = mul i32 %79, 3
  %81 = add i32 %80, 30
  %82 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 %81)  ; CBufferLoadLegacy(handle,regIndex)
  %83 = extractvalue %dx.types.CBufRet.i32 %82, 1
  %84 = bitcast i32 %83 to float
  %85 = extractvalue %dx.types.CBufRet.i32 %82, 2
  %86 = bitcast i32 %85 to float
  %87 = fsub fast float %53, %84
  %88 = fsub fast float %54, %86
  %89 = add i32 %80, 32
  %90 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 %89)  ; CBufferLoadLegacy(handle,regIndex)
  %91 = extractvalue %dx.types.CBufRet.i32 %90, 1
  %92 = and i32 %91, 1048575
  %93 = uitofp i32 %92 to float
  %94 = fcmp fast olt float %87, 0.000000e+00
  %95 = fcmp fast olt float %88, 0.000000e+00
  %96 = or i1 %94, %95
  %97 = fcmp fast ogt float %87, %93
  %98 = fcmp fast ogt float %88, %93
  %99 = or i1 %97, %98
  %100 = or i1 %96, %99
  br i1 %100, label %101, label %106, !dx.controlflow.hints !34

; <label>:101                                     ; preds = %215, %169, %167, %68
  %102 = phi i32 [ %69, %68 ], [ %108, %167 ], [ %79, %215 ], [ %108, %169 ]
  %103 = phi i32 [ %70, %68 ], [ %109, %167 ], [ %109, %215 ], [ %109, %169 ]
  %104 = phi float [ %71, %68 ], [ %71, %167 ], [ %213, %215 ], [ %71, %169 ]
  %105 = icmp eq i32 %77, 0
  br i1 %105, label %216, label %68

; <label>:106                                     ; preds = %68
  %107 = icmp ne i32 %70, 0
  %108 = select i1 %107, i32 %69, i32 %79
  %109 = select i1 %107, i32 %70, i32 1
  %110 = add i32 %80, 31
  %111 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 %110)  ; CBufferLoadLegacy(handle,regIndex)
  %112 = extractvalue %dx.types.CBufRet.i32 %111, 2
  %113 = and i32 %112, 134217728
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %166, label %115, !dx.controlflow.hints !35

; <label>:115                                     ; preds = %106
  %116 = and i32 %112, 16777215
  %117 = add i32 %116, 0
  %118 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %117, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %119 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 %81)  ; CBufferLoadLegacy(handle,regIndex)
  %120 = extractvalue %dx.types.CBufRet.i32 %119, 1
  %121 = bitcast i32 %120 to float
  %122 = extractvalue %dx.types.CBufRet.i32 %119, 2
  %123 = bitcast i32 %122 to float
  %124 = fsub fast float %53, %121
  %125 = fsub fast float %54, %123
  %126 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 %89)  ; CBufferLoadLegacy(handle,regIndex)
  %127 = extractvalue %dx.types.CBufRet.i32 %126, 1
  %128 = and i32 %127, 1048575
  %129 = uitofp i32 %128 to float
  %130 = fdiv fast float %124, %129
  %131 = fdiv fast float %125, %129
  %132 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 %110)  ; CBufferLoadLegacy(handle,regIndex)
  %133 = extractvalue %dx.types.CBufRet.i32 %132, 2
  %134 = lshr i32 %133, 24
  %135 = and i32 %134, 7
  %136 = or i32 %135, 8
  %137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 %136)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.f32 %137, 0
  %139 = extractvalue %dx.types.CBufRet.f32 %137, 2
  %140 = fdiv fast float 5.000000e-01, %138
  %141 = fmul fast float %140, 2.000000e+00
  %142 = fsub fast float 1.000000e+00, %141
  %143 = fmul fast float %142, %130
  %144 = fmul fast float %142, %131
  %145 = fadd fast float %143, %140
  %146 = fadd fast float %144, %140
  %147 = fmul fast float %138, %139
  %148 = fmul fast float %147, %145
  %149 = fmul fast float %147, %146
  %150 = fadd fast float %148, -5.000000e-01
  %151 = fadd fast float %149, -5.000000e-01
  %152 = fptoui float %150 to i32
  %153 = fptoui float %151 to i32
  %154 = lshr i32 %152, 3
  %155 = lshr i32 %153, 2
  %156 = shl nuw i32 %154, 3
  %157 = sub i32 %152, %156
  %158 = shl i32 %153, 3
  %159 = add i32 %158, %157
  %160 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %118, i32 0, i32 %154, i32 %155, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %161 = extractvalue %dx.types.ResRet.i32 %160, 0
  %162 = and i32 %159, 31
  %163 = shl i32 1, %162
  %164 = and i32 %163, %161
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %167, label %166, !dx.controlflow.hints !36

; <label>:166                                     ; preds = %115, %106
  br label %167

; <label>:167                                     ; preds = %166, %115
  %168 = phi i1 [ false, %166 ], [ true, %115 ]
  br i1 %168, label %101, label %169, !dx.controlflow.hints !37

; <label>:169                                     ; preds = %167
  %170 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 %81)  ; CBufferLoadLegacy(handle,regIndex)
  %171 = extractvalue %dx.types.CBufRet.i32 %170, 1
  %172 = bitcast i32 %171 to float
  %173 = extractvalue %dx.types.CBufRet.i32 %170, 2
  %174 = bitcast i32 %173 to float
  %175 = fsub fast float %53, %172
  %176 = fsub fast float %54, %174
  %177 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 %89)  ; CBufferLoadLegacy(handle,regIndex)
  %178 = extractvalue %dx.types.CBufRet.i32 %177, 1
  %179 = and i32 %178, 1048575
  %180 = uitofp i32 %179 to float
  %181 = fdiv fast float %175, %180
  %182 = fdiv fast float %176, %180
  %183 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 %110)  ; CBufferLoadLegacy(handle,regIndex)
  %184 = extractvalue %dx.types.CBufRet.i32 %183, 2
  %185 = lshr i32 %184, 24
  %186 = and i32 %185, 7
  %187 = or i32 %186, 8
  %188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 %187)  ; CBufferLoadLegacy(handle,regIndex)
  %189 = extractvalue %dx.types.CBufRet.f32 %188, 0
  %190 = extractvalue %dx.types.CBufRet.f32 %188, 2
  %191 = fdiv fast float 5.000000e-01, %189
  %192 = fmul fast float %191, 2.000000e+00
  %193 = fsub fast float 1.000000e+00, %192
  %194 = fmul fast float %193, %181
  %195 = fmul fast float %193, %182
  %196 = fadd fast float %194, %191
  %197 = fadd fast float %195, %191
  %198 = fmul fast float %196, %190
  %199 = fmul fast float %197, %190
  %200 = extractvalue %dx.types.CBufRet.i32 %183, 1
  %201 = and i32 %200, 16777215
  %202 = add i32 %201, 0
  %203 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %202, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %204 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 %81)  ; CBufferLoadLegacy(handle,regIndex)
  %205 = extractvalue %dx.types.CBufRet.i32 %204, 3
  %206 = bitcast i32 %205 to float
  %207 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 %110)  ; CBufferLoadLegacy(handle,regIndex)
  %208 = extractvalue %dx.types.CBufRet.i32 %207, 0
  %209 = bitcast i32 %208 to float
  %210 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %203, %dx.types.Handle %4, float %198, float %199, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %211 = extractvalue %dx.types.ResRet.f32 %210, 0
  %212 = fmul fast float %211, %209
  %213 = fadd fast float %212, %206
  %214 = fcmp fast ogt float %213, %71
  br i1 %214, label %215, label %101, !dx.controlflow.hints !38

; <label>:215                                     ; preds = %169
  br label %101

; <label>:216                                     ; preds = %101
  br label %217

; <label>:217                                     ; preds = %216, %60
  %218 = phi i32 [ %61, %60 ], [ %102, %216 ]
  %219 = phi i32 [ %62, %60 ], [ %103, %216 ]
  %220 = phi float [ %63, %60 ], [ %104, %216 ]
  %221 = add nuw nsw i32 %65, 1
  %222 = icmp eq i32 %221, 2
  br i1 %222, label %328, label %60

; <label>:223                                     ; preds = %324, %58
  %224 = phi i32 [ %325, %324 ], [ -1, %58 ]
  %225 = phi i32 [ %30, %324 ], [ %29, %58 ]
  %226 = phi i32 [ %326, %324 ], [ 0, %58 ]
  %227 = icmp eq i32 %225, 0
  br i1 %227, label %324, label %228

; <label>:228                                     ; preds = %223
  br label %229

; <label>:229                                     ; preds = %260, %228
  %230 = phi i32 [ %261, %260 ], [ %224, %228 ]
  %231 = phi i32 [ %236, %260 ], [ %225, %228 ]
  %232 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %231)  ; FirstbitLo(value)
  %233 = and i32 %232, 31
  %234 = shl i32 1, %233
  %235 = xor i32 %234, -1
  %236 = and i32 %231, %235
  %237 = shl i32 %226, 5
  %238 = add i32 %232, %237
  %239 = mul i32 %238, 3
  %240 = add i32 %239, 30
  %241 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 %240)  ; CBufferLoadLegacy(handle,regIndex)
  %242 = extractvalue %dx.types.CBufRet.i32 %241, 1
  %243 = bitcast i32 %242 to float
  %244 = extractvalue %dx.types.CBufRet.i32 %241, 2
  %245 = bitcast i32 %244 to float
  %246 = fsub fast float %53, %243
  %247 = fsub fast float %54, %245
  %248 = add i32 %239, 32
  %249 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 %248)  ; CBufferLoadLegacy(handle,regIndex)
  %250 = extractvalue %dx.types.CBufRet.i32 %249, 1
  %251 = and i32 %250, 1048575
  %252 = uitofp i32 %251 to float
  %253 = fcmp fast olt float %246, 0.000000e+00
  %254 = fcmp fast olt float %247, 0.000000e+00
  %255 = or i1 %253, %254
  %256 = fcmp fast ogt float %246, %252
  %257 = fcmp fast ogt float %247, %252
  %258 = or i1 %256, %257
  %259 = or i1 %255, %258
  br i1 %259, label %260, label %263, !dx.controlflow.hints !39

; <label>:260                                     ; preds = %321, %229
  %261 = phi i32 [ %230, %229 ], [ %238, %321 ]
  %262 = icmp eq i32 %236, 0
  br i1 %262, label %323, label %229

; <label>:263                                     ; preds = %229
  %264 = add i32 %239, 31
  %265 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 %264)  ; CBufferLoadLegacy(handle,regIndex)
  %266 = extractvalue %dx.types.CBufRet.i32 %265, 2
  %267 = and i32 %266, 134217728
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %320, label %269, !dx.controlflow.hints !35

; <label>:269                                     ; preds = %263
  %270 = and i32 %266, 16777215
  %271 = add i32 %270, 0
  %272 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %271, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %273 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 %240)  ; CBufferLoadLegacy(handle,regIndex)
  %274 = extractvalue %dx.types.CBufRet.i32 %273, 1
  %275 = bitcast i32 %274 to float
  %276 = extractvalue %dx.types.CBufRet.i32 %273, 2
  %277 = bitcast i32 %276 to float
  %278 = fsub fast float %53, %275
  %279 = fsub fast float %54, %277
  %280 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 %248)  ; CBufferLoadLegacy(handle,regIndex)
  %281 = extractvalue %dx.types.CBufRet.i32 %280, 1
  %282 = and i32 %281, 1048575
  %283 = uitofp i32 %282 to float
  %284 = fdiv fast float %278, %283
  %285 = fdiv fast float %279, %283
  %286 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 %264)  ; CBufferLoadLegacy(handle,regIndex)
  %287 = extractvalue %dx.types.CBufRet.i32 %286, 2
  %288 = lshr i32 %287, 24
  %289 = and i32 %288, 7
  %290 = or i32 %289, 8
  %291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 %290)  ; CBufferLoadLegacy(handle,regIndex)
  %292 = extractvalue %dx.types.CBufRet.f32 %291, 0
  %293 = extractvalue %dx.types.CBufRet.f32 %291, 2
  %294 = fdiv fast float 5.000000e-01, %292
  %295 = fmul fast float %294, 2.000000e+00
  %296 = fsub fast float 1.000000e+00, %295
  %297 = fmul fast float %296, %284
  %298 = fmul fast float %296, %285
  %299 = fadd fast float %297, %294
  %300 = fadd fast float %298, %294
  %301 = fmul fast float %292, %293
  %302 = fmul fast float %301, %299
  %303 = fmul fast float %301, %300
  %304 = fadd fast float %302, -5.000000e-01
  %305 = fadd fast float %303, -5.000000e-01
  %306 = fptoui float %304 to i32
  %307 = fptoui float %305 to i32
  %308 = lshr i32 %306, 3
  %309 = lshr i32 %307, 2
  %310 = shl nuw i32 %308, 3
  %311 = sub i32 %306, %310
  %312 = shl i32 %307, 3
  %313 = add i32 %312, %311
  %314 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %272, i32 0, i32 %308, i32 %309, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %315 = extractvalue %dx.types.ResRet.i32 %314, 0
  %316 = and i32 %313, 31
  %317 = shl i32 1, %316
  %318 = and i32 %317, %315
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %321, label %320, !dx.controlflow.hints !36

; <label>:320                                     ; preds = %269, %263
  br label %321

; <label>:321                                     ; preds = %320, %269
  %322 = phi i1 [ false, %320 ], [ true, %269 ]
  br i1 %322, label %260, label %329, !dx.controlflow.hints !40

; <label>:323                                     ; preds = %260
  br label %324

; <label>:324                                     ; preds = %323, %223
  %325 = phi i32 [ %224, %223 ], [ %261, %323 ]
  %326 = add nuw nsw i32 %226, 1
  %327 = icmp ult i32 %326, 2
  br i1 %327, label %223, label %330

; <label>:328                                     ; preds = %217
  br label %331

; <label>:329                                     ; preds = %321
  br label %331

; <label>:330                                     ; preds = %324
  br label %331

; <label>:331                                     ; preds = %330, %329, %328
  %332 = phi i32 [ %218, %328 ], [ %238, %329 ], [ %325, %330 ]
  %333 = icmp ne i32 %332, -1
  br i1 %333, label %334, label %462, !dx.controlflow.hints !41

; <label>:334                                     ; preds = %331
  %335 = mul i32 %332, 3
  %336 = add i32 %335, 30
  %337 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 %336)  ; CBufferLoadLegacy(handle,regIndex)
  %338 = extractvalue %dx.types.CBufRet.i32 %337, 0
  %339 = extractvalue %dx.types.CBufRet.i32 %337, 1
  %340 = extractvalue %dx.types.CBufRet.i32 %337, 2
  %341 = add i32 %335, 31
  %342 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 %341)  ; CBufferLoadLegacy(handle,regIndex)
  %343 = extractvalue %dx.types.CBufRet.i32 %342, 2
  %344 = add i32 %335, 32
  %345 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 %344)  ; CBufferLoadLegacy(handle,regIndex)
  %346 = extractvalue %dx.types.CBufRet.i32 %345, 1
  %347 = icmp eq i32 %338, 0
  br i1 %347, label %462, label %348

; <label>:348                                     ; preds = %334
  br label %349

; <label>:349                                     ; preds = %458, %348
  %350 = phi float [ %459, %458 ], [ 0.000000e+00, %348 ]
  %351 = phi i32 [ %356, %458 ], [ %338, %348 ]
  %352 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %351)  ; FirstbitLo(value)
  %353 = and i32 %352, 31
  %354 = shl i32 1, %353
  %355 = xor i32 %354, -1
  %356 = and i32 %351, %355
  %357 = lshr i32 %346, 20
  %358 = add i32 %352, %357
  %359 = mul i32 %358, 100
  %360 = add i32 %359, 80
  %361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %360, i32 undef)  ; BufferLoad(srv,index,wot)
  %362 = extractvalue %dx.types.ResRet.i32 %361, 2
  %363 = and i32 %362, 2
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %458, label %365, !dx.controlflow.hints !42

; <label>:365                                     ; preds = %349
  %366 = bitcast i32 %339 to float
  %367 = bitcast i32 %340 to float
  %368 = fsub fast float %53, %366
  %369 = fsub fast float %54, %367
  %370 = and i32 %346, 1048575
  %371 = uitofp i32 %370 to float
  %372 = fdiv fast float %368, %371
  %373 = fdiv fast float %369, %371
  %374 = lshr i32 %343, 24
  %375 = and i32 %374, 7
  %376 = or i32 %375, 8
  %377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 %376)  ; CBufferLoadLegacy(handle,regIndex)
  %378 = extractvalue %dx.types.CBufRet.f32 %377, 0
  %379 = extractvalue %dx.types.CBufRet.f32 %377, 2
  %380 = fdiv fast float 5.000000e-01, %378
  %381 = fmul fast float %380, 2.000000e+00
  %382 = fsub fast float 1.000000e+00, %381
  %383 = fmul fast float %382, %372
  %384 = fmul fast float %382, %373
  %385 = fadd fast float %383, %380
  %386 = fadd fast float %384, %380
  %387 = fmul fast float %385, %379
  %388 = fmul fast float %386, %379
  %389 = add i32 %359, 16
  %390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %389, i32 undef)  ; BufferLoad(srv,index,wot)
  %391 = extractvalue %dx.types.ResRet.i32 %390, 2
  %392 = and i32 %391, 16777215
  %393 = add i32 %392, 0
  %394 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %393, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %395 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %394, %dx.types.Handle %3, float %387, float %388, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %396 = extractvalue %dx.types.ResRet.f32 %395, 0
  %397 = fcmp fast une float %396, 0.000000e+00
  br i1 %397, label %398, label %458, !dx.controlflow.hints !43

; <label>:398                                     ; preds = %365
  %399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %360, i32 undef)  ; BufferLoad(srv,index,wot)
  %400 = extractvalue %dx.types.ResRet.i32 %399, 2
  %401 = and i32 %400, 128
  %402 = icmp eq i32 %401, 0
  br i1 %402, label %403, label %406, !dx.controlflow.hints !44

; <label>:403                                     ; preds = %398
  %404 = fmul fast float %396, %350
  %405 = fsub fast float %350, %404
  br label %458

; <label>:406                                     ; preds = %398
  %407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %359, i32 undef)  ; BufferLoad(srv,index,wot)
  %408 = extractvalue %dx.types.ResRet.i32 %407, 0
  %409 = bitcast i32 %408 to float
  %410 = extractvalue %dx.types.ResRet.i32 %407, 1
  %411 = bitcast i32 %410 to float
  %412 = call float @dx.op.dot2.f32(i32 54, float %53, float %54, float %409, float %411)  ; Dot2(ax,ay,bx,by)
  %413 = extractvalue %dx.types.ResRet.i32 %407, 3
  %414 = bitcast i32 %413 to float
  %415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %389, i32 undef)  ; BufferLoad(srv,index,wot)
  %416 = extractvalue %dx.types.ResRet.i32 %415, 0
  %417 = bitcast i32 %416 to float
  %418 = call float @dx.op.dot2.f32(i32 54, float %53, float %54, float %414, float %417)  ; Dot2(ax,ay,bx,by)
  %419 = add i32 %359, 64
  %420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %419, i32 undef)  ; BufferLoad(srv,index,wot)
  %421 = extractvalue %dx.types.ResRet.i32 %420, 2
  %422 = call float @dx.op.legacyF16ToF32(i32 131, i32 %421)  ; LegacyF16ToF32(value)
  %423 = fdiv fast float 2.500000e+01, %422
  %424 = call float @dx.op.unary.f32(i32 23, float %423)  ; Log(value)
  %425 = fsub fast float -2.500000e+00, %44
  %426 = fadd fast float %425, %424
  %427 = call float @dx.op.unary.f32(i32 28, float %426)  ; Round_pi(value)
  %428 = fptosi float %427 to i32
  %429 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %428)  ; IMax(a,b)
  %430 = add i32 %359, 48
  %431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %432 = extractvalue %dx.types.ResRet.i32 %431, 0
  %433 = and i32 %432, 16777215
  %434 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %435 = add i32 %433, 0
  %436 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %435, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %437 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %436, i32 0)  ; GetDimensions(handle,mipLevel)
  %438 = extractvalue %dx.types.Dimensions %437, 3
  %439 = sub nsw i32 %438, %429
  %440 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %439)  ; IMax(a,b)
  %441 = sitofp i32 %440 to float
  %442 = lshr i32 %432, 16
  %443 = and i32 %442, 15
  %444 = uitofp i32 %443 to float
  %445 = call float @dx.op.binary.f32(i32 35, float %444, float %441)  ; FMax(a,b)
  %446 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %436, %dx.types.Handle %434, float %412, float %418, float undef, float undef, i32 0, i32 0, i32 undef, float %445)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %447 = extractvalue %dx.types.ResRet.f32 %446, 0
  %448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %360, i32 undef)  ; BufferLoad(srv,index,wot)
  %449 = extractvalue %dx.types.ResRet.i32 %448, 1
  %450 = call float @dx.op.legacyF16ToF32(i32 131, i32 %449)  ; LegacyF16ToF32(value)
  %451 = lshr i32 %449, 16
  %452 = call float @dx.op.legacyF16ToF32(i32 131, i32 %451)  ; LegacyF16ToF32(value)
  %453 = fsub fast float %447, %452
  %454 = fmul fast float %453, %450
  %455 = fsub fast float %454, %350
  %456 = fmul fast float %455, %396
  %457 = fadd fast float %456, %350
  br label %458

; <label>:458                                     ; preds = %406, %403, %365, %349
  %459 = phi float [ %350, %349 ], [ %457, %406 ], [ %405, %403 ], [ %350, %365 ]
  %460 = icmp eq i32 %356, 0
  br i1 %460, label %461, label %349

; <label>:461                                     ; preds = %458
  br label %462

; <label>:462                                     ; preds = %461, %334, %331
  %463 = phi float [ 0.000000e+00, %331 ], [ 0.000000e+00, %334 ], [ %459, %461 ]
  br i1 %333, label %464, label %465, !dx.controlflow.hints !45

; <label>:464                                     ; preds = %462
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %46, i32 %7, i32 undef, float %463, float %463, float %463, float %463, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %465

; <label>:465                                     ; preds = %464, %462
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!19}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !11, !13, !15}
!5 = !{!6, !8, !10}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<unsigned int, 4> >"]* undef, !"", i32 5, i32 0, i32 -1, i32 2, i32 0, !9}
!9 = !{i32 0, i32 5}
!10 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 16, i32 1, i32 11, i32 0, null}
!11 = !{!12}
!12 = !{i32 0, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 6, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!13 = !{!14}
!14 = !{i32 0, %GfxVirtualTexturingComposite* undef, !"", i32 0, i32 0, i32 1, i32 4208, null}
!15 = !{!16, !17, !18}
!16 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!17 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!18 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!19 = !{void ()* @cs_compose_displacement_to_scratch_with_cutout, !"cs_compose_displacement_to_scratch_with_cutout", null, !4, !20}
!20 = !{i32 0, i64 272, i32 4, !21}
!21 = !{i32 8, i32 8, i32 1}
!22 = !{!23, !23, i64 0}
!23 = !{!"int", !24, i64 0}
!24 = !{!"omnipotent char", !25, i64 0}
!25 = !{!"Simple C/C++ TBAA"}
!26 = !{!27, !29, !30, !31}
!27 = distinct !{!27, !28, !"\01?GetPageIndexAndTileDataBits@@YAXIIV?$vector@I$02@@AIAI11@Z: %pageIndex"}
!28 = distinct !{!28, !"\01?GetPageIndexAndTileDataBits@@YAXIIV?$vector@I$02@@AIAI11@Z"}
!29 = distinct !{!29, !28, !"\01?GetPageIndexAndTileDataBits@@YAXIIV?$vector@I$02@@AIAI11@Z: %tileDataBitsLo"}
!30 = distinct !{!30, !28, !"\01?GetPageIndexAndTileDataBits@@YAXIIV?$vector@I$02@@AIAI11@Z: %tileDataBitsHi"}
!31 = distinct !{!31, !32, !"\01?CompositeScratch_InitContext@@YA?AUCompositeScratchContext@@IV?$vector@I$02@@0_N@Z: %agg.result"}
!32 = distinct !{!32, !"\01?CompositeScratch_InitContext@@YA?AUCompositeScratchContext@@IV?$vector@I$02@@0_N@Z"}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 1}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 1}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 1}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}

