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
; shader hash: b98fe9fb215d6755131eca3cc9e79015
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
;                                   texture    byte         r/o      T1            t16     1
;                                   texture     f32          2d      T2            t10     1
;                                       UAV     f32          2d      U0             u6     1
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
%"class.RWTexture2D<float>" = type { float }
%GfxVirtualTexturingComposite = type { [8 x <4 x float>], [8 x <4 x float>], <3 x float>, i32, <2 x float>, float, float, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, [56 x %struct.TerrainTileDataVT], [20 x <4 x float>], [5 x <4 x i32>], [40 x <4 x i32>] }
%struct.TerrainTileDataVT = type { [2 x <4 x i32>], <2 x i32> }
%struct.SamplerState = type { i32 }

define void @cs_compose_displacement_to_scratch_ompv() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %8 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %9 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %10 = alloca [4 x i32], align 4
  %11 = alloca [4 x float], align 4
  %12 = alloca [4 x float], align 4
  %13 = alloca [4 x i32], align 4
  %14 = lshr i32 %9, 3
  %15 = and i32 %14, 67108863
  %16 = add nuw nsw i32 %15, 243
  %17 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 %16)  ; CBufferLoadLegacy(handle,regIndex)
  %18 = extractvalue %dx.types.CBufRet.i32 %17, 0
  %19 = extractvalue %dx.types.CBufRet.i32 %17, 1
  %20 = extractvalue %dx.types.CBufRet.i32 %17, 2
  %21 = extractvalue %dx.types.CBufRet.i32 %17, 3
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i32 0, i32 0
  store i32 %18, i32* %22, align 4
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i32 0, i32 1
  store i32 %19, i32* %23, align 4
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i32 0, i32 2
  store i32 %20, i32* %24, align 4
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i32 0, i32 3
  store i32 %21, i32* %25, align 4
  %26 = lshr i32 %9, 1
  %27 = and i32 %26, 2
  %28 = getelementptr [4 x i32], [4 x i32]* %13, i32 0, i32 %27
  %29 = load i32, i32* %28, align 4, !tbaa !21, !noalias !25
  %30 = and i32 %29, 255
  %31 = or i32 %27, 1
  %32 = getelementptr [4 x i32], [4 x i32]* %13, i32 0, i32 %31
  %33 = load i32, i32* %32, align 4, !tbaa !21, !noalias !25
  %34 = lshr i32 %29, 8
  %35 = and i32 %7, 31
  %36 = add nuw nsw i32 %30, 198
  %37 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 %36)  ; CBufferLoadLegacy(handle,regIndex)
  %38 = extractvalue %dx.types.CBufRet.f32 %37, 0
  %39 = extractvalue %dx.types.CBufRet.f32 %37, 1
  %40 = extractvalue %dx.types.CBufRet.f32 %37, 2
  %41 = fmul fast float %40, 3.125000e-02
  %42 = uitofp i32 %35 to float
  %43 = uitofp i32 %8 to float
  %44 = fmul fast float %41, %42
  %45 = fmul fast float %41, %43
  %46 = fadd fast float %44, %38
  %47 = fadd fast float %45, %39
  %48 = extractvalue %dx.types.CBufRet.f32 %37, 3
  %49 = shl nuw nsw i32 %30, 5
  %50 = or i32 %49, %35
  %51 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %52 = extractvalue %dx.types.CBufRet.f32 %51, 0
  %53 = extractvalue %dx.types.CBufRet.f32 %51, 1
  %54 = extractvalue %dx.types.CBufRet.f32 %51, 2
  %55 = fmul fast float %46, %54
  %56 = fmul fast float %47, %54
  %57 = fadd fast float %55, %52
  %58 = fadd fast float %56, %53
  %59 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %60 = extractvalue %dx.types.CBufRet.i32 %59, 2
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %156, !dx.controlflow.hints !32

; <label>:62                                      ; preds = %0
  br label %63

; <label>:63                                      ; preds = %150, %62
  %64 = phi i32 [ %151, %150 ], [ -1, %62 ]
  %65 = phi i32 [ %152, %150 ], [ 0, %62 ]
  %66 = phi float [ %153, %150 ], [ -1.000000e+09, %62 ]
  %67 = phi i32 [ %34, %150 ], [ %33, %62 ]
  %68 = phi i32 [ %154, %150 ], [ 0, %62 ]
  %69 = icmp eq i32 %67, 0
  br i1 %69, label %150, label %70

; <label>:70                                      ; preds = %63
  br label %71

; <label>:71                                      ; preds = %104, %70
  %72 = phi i32 [ %105, %104 ], [ %64, %70 ]
  %73 = phi i32 [ %106, %104 ], [ %65, %70 ]
  %74 = phi float [ %107, %104 ], [ %66, %70 ]
  %75 = phi i32 [ %80, %104 ], [ %67, %70 ]
  %76 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %75)  ; FirstbitLo(value)
  %77 = and i32 %76, 31
  %78 = shl i32 1, %77
  %79 = xor i32 %78, -1
  %80 = and i32 %75, %79
  %81 = shl i32 %68, 5
  %82 = add i32 %76, %81
  %83 = mul i32 %82, 3
  %84 = add i32 %83, 30
  %85 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 %84)  ; CBufferLoadLegacy(handle,regIndex)
  %86 = extractvalue %dx.types.CBufRet.i32 %85, 1
  %87 = bitcast i32 %86 to float
  %88 = extractvalue %dx.types.CBufRet.i32 %85, 2
  %89 = bitcast i32 %88 to float
  %90 = fsub fast float %57, %87
  %91 = fsub fast float %58, %89
  %92 = add i32 %83, 32
  %93 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 %92)  ; CBufferLoadLegacy(handle,regIndex)
  %94 = extractvalue %dx.types.CBufRet.i32 %93, 1
  %95 = and i32 %94, 1048575
  %96 = uitofp i32 %95 to float
  %97 = fcmp fast olt float %90, 0.000000e+00
  %98 = fcmp fast olt float %91, 0.000000e+00
  %99 = or i1 %97, %98
  %100 = fcmp fast ogt float %90, %96
  %101 = fcmp fast ogt float %91, %96
  %102 = or i1 %100, %101
  %103 = or i1 %99, %102
  br i1 %103, label %104, label %109, !dx.controlflow.hints !33

; <label>:104                                     ; preds = %148, %109, %71
  %105 = phi i32 [ %72, %71 ], [ %82, %148 ], [ %111, %109 ]
  %106 = phi i32 [ %73, %71 ], [ %112, %148 ], [ %112, %109 ]
  %107 = phi float [ %74, %71 ], [ %146, %148 ], [ %74, %109 ]
  %108 = icmp eq i32 %80, 0
  br i1 %108, label %149, label %71

; <label>:109                                     ; preds = %71
  %110 = icmp ne i32 %73, 0
  %111 = select i1 %110, i32 %72, i32 %82
  %112 = select i1 %110, i32 %73, i32 1
  %113 = fdiv fast float %90, %96
  %114 = fdiv fast float %91, %96
  %115 = add i32 %83, 31
  %116 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 %115)  ; CBufferLoadLegacy(handle,regIndex)
  %117 = extractvalue %dx.types.CBufRet.i32 %116, 2
  %118 = lshr i32 %117, 24
  %119 = and i32 %118, 7
  %120 = or i32 %119, 8
  %121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 %120)  ; CBufferLoadLegacy(handle,regIndex)
  %122 = extractvalue %dx.types.CBufRet.f32 %121, 0
  %123 = extractvalue %dx.types.CBufRet.f32 %121, 2
  %124 = fdiv fast float 5.000000e-01, %122
  %125 = fmul fast float %124, 2.000000e+00
  %126 = fsub fast float 1.000000e+00, %125
  %127 = fmul fast float %126, %113
  %128 = fmul fast float %126, %114
  %129 = fadd fast float %127, %124
  %130 = fadd fast float %128, %124
  %131 = fmul fast float %129, %123
  %132 = fmul fast float %130, %123
  %133 = extractvalue %dx.types.CBufRet.i32 %116, 1
  %134 = and i32 %133, 16777215
  %135 = add i32 %134, 0
  %136 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %135, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %137 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 %84)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.i32 %137, 3
  %139 = bitcast i32 %138 to float
  %140 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 %115)  ; CBufferLoadLegacy(handle,regIndex)
  %141 = extractvalue %dx.types.CBufRet.i32 %140, 0
  %142 = bitcast i32 %141 to float
  %143 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %136, %dx.types.Handle %5, float %131, float %132, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %144 = extractvalue %dx.types.ResRet.f32 %143, 0
  %145 = fmul fast float %144, %142
  %146 = fadd fast float %145, %139
  %147 = fcmp fast ogt float %146, %74
  br i1 %147, label %148, label %104, !dx.controlflow.hints !34

; <label>:148                                     ; preds = %109
  br label %104

; <label>:149                                     ; preds = %104
  br label %150

; <label>:150                                     ; preds = %149, %63
  %151 = phi i32 [ %64, %63 ], [ %105, %149 ]
  %152 = phi i32 [ %65, %63 ], [ %106, %149 ]
  %153 = phi float [ %66, %63 ], [ %107, %149 ]
  %154 = add nuw nsw i32 %68, 1
  %155 = icmp eq i32 %154, 2
  br i1 %155, label %193, label %63

; <label>:156                                     ; preds = %0
  %157 = icmp eq i32 %33, 0
  br i1 %157, label %190, label %158

; <label>:158                                     ; preds = %156
  br label %159

; <label>:159                                     ; preds = %187, %158
  %160 = phi i32 [ %165, %187 ], [ %33, %158 ]
  %161 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %160)  ; FirstbitLo(value)
  %162 = and i32 %161, 31
  %163 = shl i32 1, %162
  %164 = xor i32 %163, -1
  %165 = and i32 %160, %164
  %166 = mul i32 %161, 3
  %167 = add i32 %166, 30
  %168 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 %167)  ; CBufferLoadLegacy(handle,regIndex)
  %169 = extractvalue %dx.types.CBufRet.i32 %168, 1
  %170 = bitcast i32 %169 to float
  %171 = extractvalue %dx.types.CBufRet.i32 %168, 2
  %172 = bitcast i32 %171 to float
  %173 = fsub fast float %57, %170
  %174 = fsub fast float %58, %172
  %175 = add i32 %166, 32
  %176 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 %175)  ; CBufferLoadLegacy(handle,regIndex)
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
  br i1 %186, label %187, label %196, !dx.controlflow.hints !35

; <label>:187                                     ; preds = %159
  %188 = icmp eq i32 %165, 0
  br i1 %188, label %189, label %159

; <label>:189                                     ; preds = %187
  br label %190

; <label>:190                                     ; preds = %189, %156
  %191 = icmp eq i32 %34, 0
  br i1 %191, label %197, label %192

; <label>:192                                     ; preds = %190
  br label %678

; <label>:193                                     ; preds = %150
  br label %197

; <label>:194                                     ; preds = %707, %678
  %195 = phi i32 [ %685, %678 ], [ -1, %707 ]
  br label %197

; <label>:196                                     ; preds = %159
  br label %197

; <label>:197                                     ; preds = %196, %194, %193, %190
  %198 = phi i32 [ -1, %190 ], [ %151, %193 ], [ %195, %194 ], [ %161, %196 ]
  %199 = icmp ne i32 %198, -1
  br i1 %199, label %200, label %674, !dx.controlflow.hints !36

; <label>:200                                     ; preds = %197
  %201 = mul i32 %198, 3
  %202 = add i32 %201, 30
  %203 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 %202)  ; CBufferLoadLegacy(handle,regIndex)
  %204 = extractvalue %dx.types.CBufRet.i32 %203, 1
  %205 = extractvalue %dx.types.CBufRet.i32 %203, 2
  %206 = add i32 %201, 31
  %207 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 %206)  ; CBufferLoadLegacy(handle,regIndex)
  %208 = extractvalue %dx.types.CBufRet.i32 %207, 2
  %209 = extractvalue %dx.types.CBufRet.i32 %207, 3
  %210 = add i32 %201, 32
  %211 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 %210)  ; CBufferLoadLegacy(handle,regIndex)
  %212 = extractvalue %dx.types.CBufRet.i32 %211, 1
  %213 = lshr i32 %212, 20
  %214 = and i32 %209, 16777215
  %215 = bitcast i32 %204 to float
  %216 = bitcast i32 %205 to float
  %217 = fsub fast float %57, %215
  %218 = fsub fast float %58, %216
  %219 = and i32 %212, 1048575
  %220 = uitofp i32 %219 to float
  %221 = fdiv fast float %217, %220
  %222 = fdiv fast float %218, %220
  %223 = fsub fast float 1.000000e+00, %221
  %224 = fsub fast float 1.000000e+00, %222
  %225 = call float @dx.op.binary.f32(i32 36, float %221, float %223)  ; FMin(a,b)
  %226 = call float @dx.op.binary.f32(i32 36, float %222, float %224)  ; FMin(a,b)
  %227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %228 = extractvalue %dx.types.CBufRet.f32 %227, 0
  %229 = extractvalue %dx.types.CBufRet.f32 %227, 1
  %230 = fcmp fast ogt float %229, 0.000000e+00
  %231 = fmul fast float %225, %220
  %232 = fmul fast float %226, %220
  %233 = fdiv fast float %231, %229
  %234 = fdiv fast float %232, %229
  %235 = call float @dx.op.unary.f32(i32 7, float %233)  ; Saturate(value)
  %236 = call float @dx.op.unary.f32(i32 7, float %234)  ; Saturate(value)
  %237 = select i1 %230, float %235, float 1.000000e+00
  %238 = select i1 %230, float %236, float 1.000000e+00
  %239 = fmul fast float %237, %229
  %240 = fmul fast float %238, %229
  %241 = fmul fast float %228, %57
  %242 = fmul fast float %228, %58
  %243 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %4, float %241, float %242, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %244 = extractvalue %dx.types.ResRet.f32 %243, 0
  %245 = extractvalue %dx.types.ResRet.f32 %243, 1
  %246 = fmul fast float %239, 2.000000e+00
  %247 = fmul fast float %246, %244
  %248 = fmul fast float %240, 2.000000e+00
  %249 = fmul fast float %248, %245
  %250 = fsub fast float %217, %239
  %251 = fadd fast float %250, %247
  %252 = fsub fast float %218, %240
  %253 = fadd fast float %252, %249
  %254 = fdiv fast float %251, %220
  %255 = fdiv fast float %253, %220
  %256 = lshr i32 %208, 24
  %257 = and i32 %256, 7
  %258 = or i32 %257, 8
  %259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 %258)  ; CBufferLoadLegacy(handle,regIndex)
  %260 = extractvalue %dx.types.CBufRet.f32 %259, 0
  %261 = extractvalue %dx.types.CBufRet.f32 %259, 2
  %262 = fdiv fast float 5.000000e-01, %260
  %263 = fmul fast float %262, 2.000000e+00
  %264 = fsub fast float 1.000000e+00, %263
  %265 = fmul fast float %264, %254
  %266 = fmul fast float %264, %255
  %267 = fadd fast float %265, %262
  %268 = fadd fast float %266, %262
  %269 = fmul fast float %267, %261
  %270 = fmul fast float %268, %261
  %271 = fadd fast float %269, %262
  %272 = fadd fast float %270, %262
  %273 = fmul fast float %271, %260
  %274 = fmul fast float %272, %260
  %275 = call float @dx.op.unary.f32(i32 27, float %273)  ; Round_ni(value)
  %276 = call float @dx.op.unary.f32(i32 27, float %274)  ; Round_ni(value)
  %277 = fdiv fast float %275, %260
  %278 = fdiv fast float %276, %260
  %279 = fsub fast float %273, %275
  %280 = fsub fast float %274, %276
  %281 = add i32 %214, 0
  %282 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %281, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %283 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %282, %dx.types.Handle %5, float %277, float %278, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %284 = extractvalue %dx.types.ResRet.f32 %283, 0
  %285 = extractvalue %dx.types.ResRet.f32 %283, 1
  %286 = extractvalue %dx.types.ResRet.f32 %283, 2
  %287 = extractvalue %dx.types.ResRet.f32 %283, 3
  %288 = fmul fast float %284, 2.550000e+02
  %289 = fmul fast float %285, 2.550000e+02
  %290 = fmul fast float %286, 2.550000e+02
  %291 = fmul fast float %287, 2.550000e+02
  %292 = fptoui float %288 to i32
  %293 = fptoui float %289 to i32
  %294 = fptoui float %290 to i32
  %295 = fptoui float %291 to i32
  %296 = fsub fast float 1.000000e+00, %279
  %297 = fmul fast float %296, %280
  %298 = fmul fast float %279, %280
  %299 = fsub fast float 1.000000e+00, %280
  %300 = fmul fast float %299, %279
  %301 = fmul fast float %296, %299
  %302 = add i32 %292, %213
  %303 = mul i32 %302, 100
  %304 = add i32 %303, 80
  %305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %304, i32 undef)  ; BufferLoad(srv,index,wot)
  %306 = extractvalue %dx.types.ResRet.i32 %305, 2
  %307 = and i32 %306, 8388608
  %308 = icmp eq i32 %307, 0
  %309 = shl i32 %292, 4
  br i1 %308, label %323, label %310, !dx.controlflow.hints !37

; <label>:310                                     ; preds = %200
  %311 = fmul fast float %275, 2.500000e-01
  %312 = fptosi float %311 to i32
  %313 = srem i32 %312, 2
  %314 = fadd fast float %276, 1.000000e+00
  %315 = fmul fast float %314, 2.500000e-01
  %316 = fptosi float %315 to i32
  %317 = srem i32 %316, 2
  %318 = mul nsw i32 %317, 3
  %319 = srem i32 %318, 4
  %320 = add nsw i32 %319, %313
  %321 = and i32 %320, 15
  %322 = or i32 %321, %309
  br label %323

; <label>:323                                     ; preds = %310, %200
  %324 = phi i32 [ %322, %310 ], [ %309, %200 ]
  %325 = add i32 %293, %213
  %326 = mul i32 %325, 100
  %327 = add i32 %326, 80
  %328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %327, i32 undef)  ; BufferLoad(srv,index,wot)
  %329 = extractvalue %dx.types.ResRet.i32 %328, 2
  %330 = and i32 %329, 8388608
  %331 = icmp eq i32 %330, 0
  %332 = shl i32 %293, 4
  br i1 %331, label %347, label %333, !dx.controlflow.hints !37

; <label>:333                                     ; preds = %323
  %334 = fadd fast float %275, 1.000000e+00
  %335 = fmul fast float %334, 2.500000e-01
  %336 = fptosi float %335 to i32
  %337 = srem i32 %336, 2
  %338 = fadd fast float %276, 1.000000e+00
  %339 = fmul fast float %338, 2.500000e-01
  %340 = fptosi float %339 to i32
  %341 = srem i32 %340, 2
  %342 = mul nsw i32 %341, 3
  %343 = srem i32 %342, 4
  %344 = add nsw i32 %343, %337
  %345 = and i32 %344, 15
  %346 = or i32 %345, %332
  br label %347

; <label>:347                                     ; preds = %333, %323
  %348 = phi i32 [ %346, %333 ], [ %332, %323 ]
  %349 = add i32 %294, %213
  %350 = mul i32 %349, 100
  %351 = add i32 %350, 80
  %352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %351, i32 undef)  ; BufferLoad(srv,index,wot)
  %353 = extractvalue %dx.types.ResRet.i32 %352, 2
  %354 = and i32 %353, 8388608
  %355 = icmp eq i32 %354, 0
  %356 = shl i32 %294, 4
  br i1 %355, label %370, label %357, !dx.controlflow.hints !37

; <label>:357                                     ; preds = %347
  %358 = fadd fast float %275, 1.000000e+00
  %359 = fmul fast float %358, 2.500000e-01
  %360 = fptosi float %359 to i32
  %361 = srem i32 %360, 2
  %362 = fmul fast float %276, 2.500000e-01
  %363 = fptosi float %362 to i32
  %364 = srem i32 %363, 2
  %365 = mul nsw i32 %364, 3
  %366 = srem i32 %365, 4
  %367 = add nsw i32 %366, %361
  %368 = and i32 %367, 15
  %369 = or i32 %368, %356
  br label %370

; <label>:370                                     ; preds = %357, %347
  %371 = phi i32 [ %369, %357 ], [ %356, %347 ]
  %372 = add i32 %295, %213
  %373 = mul i32 %372, 100
  %374 = add i32 %373, 80
  %375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %374, i32 undef)  ; BufferLoad(srv,index,wot)
  %376 = extractvalue %dx.types.ResRet.i32 %375, 2
  %377 = and i32 %376, 8388608
  %378 = icmp eq i32 %377, 0
  %379 = shl i32 %295, 4
  br i1 %378, label %392, label %380, !dx.controlflow.hints !37

; <label>:380                                     ; preds = %370
  %381 = fmul fast float %275, 2.500000e-01
  %382 = fptosi float %381 to i32
  %383 = srem i32 %382, 2
  %384 = fmul fast float %276, 2.500000e-01
  %385 = fptosi float %384 to i32
  %386 = srem i32 %385, 2
  %387 = mul nsw i32 %386, 3
  %388 = srem i32 %387, 4
  %389 = add nsw i32 %388, %383
  %390 = and i32 %389, 15
  %391 = or i32 %390, %379
  br label %392

; <label>:392                                     ; preds = %380, %370
  %393 = phi i32 [ %391, %380 ], [ %379, %370 ]
  %394 = getelementptr inbounds [4 x float], [4 x float]* %12, i32 0, i32 0
  store float -1.000000e+00, float* %394, align 4
  %395 = getelementptr inbounds [4 x float], [4 x float]* %12, i32 0, i32 1
  store float -1.000000e+00, float* %395, align 4
  %396 = getelementptr inbounds [4 x float], [4 x float]* %12, i32 0, i32 2
  store float -1.000000e+00, float* %396, align 4
  %397 = getelementptr inbounds [4 x float], [4 x float]* %12, i32 0, i32 3
  store float -1.000000e+00, float* %397, align 4
  %398 = call i32 @dx.op.binary.i32(i32 40, i32 %371, i32 %393)  ; UMin(a,b)
  %399 = call i32 @dx.op.binary.i32(i32 40, i32 %324, i32 %348)  ; UMin(a,b)
  %400 = call i32 @dx.op.binary.i32(i32 40, i32 %399, i32 %398)  ; UMin(a,b)
  %401 = icmp eq i32 %400, 65535
  br i1 %401, label %548, label %402, !dx.controlflow.hints !38

; <label>:402                                     ; preds = %392
  %403 = icmp eq i32 %324, %400
  br i1 %403, label %404, label %407, !dx.controlflow.hints !39

; <label>:404                                     ; preds = %402
  %405 = and i32 %324, 15
  %406 = uitofp i32 %405 to float
  store float %406, float* %394, align 4, !tbaa !40, !alias.scope !42, !noalias !45
  br label %407

; <label>:407                                     ; preds = %404, %402
  %408 = phi float [ -1.000000e+00, %402 ], [ %406, %404 ]
  %409 = phi i32 [ %400, %402 ], [ %324, %404 ]
  %410 = phi i32 [ %324, %402 ], [ 65535, %404 ]
  %411 = icmp eq i32 %348, %409
  br i1 %411, label %412, label %415, !dx.controlflow.hints !39

; <label>:412                                     ; preds = %407
  %413 = and i32 %348, 15
  %414 = uitofp i32 %413 to float
  store float %414, float* %394, align 4, !tbaa !40, !alias.scope !42, !noalias !45
  br label %415

; <label>:415                                     ; preds = %412, %407
  %416 = phi float [ %408, %407 ], [ %414, %412 ]
  %417 = phi i32 [ %409, %407 ], [ %348, %412 ]
  %418 = phi i32 [ %348, %407 ], [ 65535, %412 ]
  %419 = icmp eq i32 %371, %417
  br i1 %419, label %420, label %423, !dx.controlflow.hints !39

; <label>:420                                     ; preds = %415
  %421 = and i32 %371, 15
  %422 = uitofp i32 %421 to float
  store float %422, float* %394, align 4, !tbaa !40, !alias.scope !42, !noalias !45
  br label %423

; <label>:423                                     ; preds = %420, %415
  %424 = phi float [ %422, %420 ], [ %416, %415 ]
  %425 = phi i32 [ %371, %420 ], [ %417, %415 ]
  %426 = phi i32 [ 65535, %420 ], [ %371, %415 ]
  %427 = icmp eq i32 %393, %425
  br i1 %427, label %428, label %431, !dx.controlflow.hints !39

; <label>:428                                     ; preds = %423
  %429 = and i32 %393, 15
  %430 = uitofp i32 %429 to float
  store float %430, float* %394, align 4, !tbaa !40, !alias.scope !42, !noalias !45
  br label %431

; <label>:431                                     ; preds = %428, %423
  %432 = phi float [ %424, %423 ], [ %430, %428 ]
  %433 = phi i32 [ %425, %423 ], [ %393, %428 ]
  %434 = phi i32 [ %393, %423 ], [ 65535, %428 ]
  %435 = call i32 @dx.op.binary.i32(i32 40, i32 %426, i32 %434)  ; UMin(a,b)
  %436 = call i32 @dx.op.binary.i32(i32 40, i32 %410, i32 %418)  ; UMin(a,b)
  %437 = call i32 @dx.op.binary.i32(i32 40, i32 %436, i32 %435)  ; UMin(a,b)
  %438 = icmp eq i32 %437, 65535
  br i1 %438, label %548, label %439, !dx.controlflow.hints !38

; <label>:439                                     ; preds = %431
  %440 = icmp eq i32 %410, %437
  br i1 %440, label %441, label %444, !dx.controlflow.hints !39

; <label>:441                                     ; preds = %439
  %442 = and i32 %410, 15
  %443 = uitofp i32 %442 to float
  store float %443, float* %395, align 4, !tbaa !40, !alias.scope !42, !noalias !45
  br label %444

; <label>:444                                     ; preds = %441, %439
  %445 = phi float [ 0.000000e+00, %439 ], [ %297, %441 ]
  %446 = phi i32 [ %437, %439 ], [ %410, %441 ]
  %447 = phi i32 [ %410, %439 ], [ 65535, %441 ]
  %448 = icmp eq i32 %418, %446
  br i1 %448, label %449, label %453, !dx.controlflow.hints !39

; <label>:449                                     ; preds = %444
  %450 = fadd fast float %445, %298
  %451 = and i32 %418, 15
  %452 = uitofp i32 %451 to float
  store float %452, float* %395, align 4, !tbaa !40, !alias.scope !42, !noalias !45
  br label %453

; <label>:453                                     ; preds = %449, %444
  %454 = phi float [ %445, %444 ], [ %450, %449 ]
  %455 = phi i32 [ %446, %444 ], [ %418, %449 ]
  %456 = phi i32 [ %418, %444 ], [ 65535, %449 ]
  %457 = icmp eq i32 %426, %455
  br i1 %457, label %458, label %462, !dx.controlflow.hints !39

; <label>:458                                     ; preds = %453
  %459 = fadd fast float %454, %300
  %460 = and i32 %426, 15
  %461 = uitofp i32 %460 to float
  store float %461, float* %395, align 4, !tbaa !40, !alias.scope !42, !noalias !45
  br label %462

; <label>:462                                     ; preds = %458, %453
  %463 = phi float [ %459, %458 ], [ %454, %453 ]
  %464 = phi i32 [ %426, %458 ], [ %455, %453 ]
  %465 = phi i32 [ 65535, %458 ], [ %426, %453 ]
  %466 = icmp eq i32 %434, %464
  br i1 %466, label %467, label %471, !dx.controlflow.hints !39

; <label>:467                                     ; preds = %462
  %468 = fadd fast float %463, %301
  %469 = and i32 %434, 15
  %470 = uitofp i32 %469 to float
  store float %470, float* %395, align 4, !tbaa !40, !alias.scope !42, !noalias !45
  br label %471

; <label>:471                                     ; preds = %467, %462
  %472 = phi float [ %463, %462 ], [ %468, %467 ]
  %473 = phi i32 [ %464, %462 ], [ %434, %467 ]
  %474 = phi i32 [ %434, %462 ], [ 65535, %467 ]
  %475 = call i32 @dx.op.binary.i32(i32 40, i32 %465, i32 %474)  ; UMin(a,b)
  %476 = call i32 @dx.op.binary.i32(i32 40, i32 %447, i32 %456)  ; UMin(a,b)
  %477 = call i32 @dx.op.binary.i32(i32 40, i32 %476, i32 %475)  ; UMin(a,b)
  %478 = icmp eq i32 %477, 65535
  br i1 %478, label %548, label %479, !dx.controlflow.hints !38

; <label>:479                                     ; preds = %471
  %480 = icmp eq i32 %447, %477
  br i1 %480, label %481, label %484, !dx.controlflow.hints !39

; <label>:481                                     ; preds = %479
  %482 = and i32 %447, 15
  %483 = uitofp i32 %482 to float
  store float %483, float* %396, align 4, !tbaa !40, !alias.scope !42, !noalias !45
  br label %484

; <label>:484                                     ; preds = %481, %479
  %485 = phi float [ 0.000000e+00, %479 ], [ %297, %481 ]
  %486 = phi i32 [ %477, %479 ], [ %447, %481 ]
  %487 = phi i32 [ %447, %479 ], [ 65535, %481 ]
  %488 = icmp eq i32 %456, %486
  br i1 %488, label %489, label %493, !dx.controlflow.hints !39

; <label>:489                                     ; preds = %484
  %490 = fadd fast float %485, %298
  %491 = and i32 %456, 15
  %492 = uitofp i32 %491 to float
  store float %492, float* %396, align 4, !tbaa !40, !alias.scope !42, !noalias !45
  br label %493

; <label>:493                                     ; preds = %489, %484
  %494 = phi float [ %485, %484 ], [ %490, %489 ]
  %495 = phi i32 [ %486, %484 ], [ %456, %489 ]
  %496 = phi i32 [ %456, %484 ], [ 65535, %489 ]
  %497 = icmp eq i32 %465, %495
  br i1 %497, label %498, label %502, !dx.controlflow.hints !39

; <label>:498                                     ; preds = %493
  %499 = fadd fast float %494, %300
  %500 = and i32 %465, 15
  %501 = uitofp i32 %500 to float
  store float %501, float* %396, align 4, !tbaa !40, !alias.scope !42, !noalias !45
  br label %502

; <label>:502                                     ; preds = %498, %493
  %503 = phi float [ %499, %498 ], [ %494, %493 ]
  %504 = phi i32 [ %465, %498 ], [ %495, %493 ]
  %505 = phi i32 [ 65535, %498 ], [ %465, %493 ]
  %506 = icmp eq i32 %474, %504
  br i1 %506, label %507, label %511, !dx.controlflow.hints !39

; <label>:507                                     ; preds = %502
  %508 = fadd fast float %503, %301
  %509 = and i32 %474, 15
  %510 = uitofp i32 %509 to float
  store float %510, float* %396, align 4, !tbaa !40, !alias.scope !42, !noalias !45
  br label %511

; <label>:511                                     ; preds = %507, %502
  %512 = phi float [ %503, %502 ], [ %508, %507 ]
  %513 = phi i32 [ %504, %502 ], [ %474, %507 ]
  %514 = phi i32 [ %474, %502 ], [ 65535, %507 ]
  %515 = call i32 @dx.op.binary.i32(i32 40, i32 %505, i32 %514)  ; UMin(a,b)
  %516 = call i32 @dx.op.binary.i32(i32 40, i32 %487, i32 %496)  ; UMin(a,b)
  %517 = call i32 @dx.op.binary.i32(i32 40, i32 %516, i32 %515)  ; UMin(a,b)
  %518 = icmp eq i32 %517, 65535
  br i1 %518, label %548, label %519, !dx.controlflow.hints !38

; <label>:519                                     ; preds = %511
  %520 = icmp eq i32 %487, %517
  br i1 %520, label %521, label %524, !dx.controlflow.hints !39

; <label>:521                                     ; preds = %519
  %522 = and i32 %487, 15
  %523 = uitofp i32 %522 to float
  store float %523, float* %397, align 4, !tbaa !40, !alias.scope !42, !noalias !45
  br label %524

; <label>:524                                     ; preds = %521, %519
  %525 = phi float [ 0.000000e+00, %519 ], [ %297, %521 ]
  %526 = phi i32 [ %517, %519 ], [ %487, %521 ]
  %527 = icmp eq i32 %496, %526
  br i1 %527, label %528, label %532, !dx.controlflow.hints !39

; <label>:528                                     ; preds = %524
  %529 = fadd fast float %525, %298
  %530 = and i32 %496, 15
  %531 = uitofp i32 %530 to float
  store float %531, float* %397, align 4, !tbaa !40, !alias.scope !42, !noalias !45
  br label %532

; <label>:532                                     ; preds = %528, %524
  %533 = phi float [ %525, %524 ], [ %529, %528 ]
  %534 = phi i32 [ %526, %524 ], [ %496, %528 ]
  %535 = icmp eq i32 %505, %534
  br i1 %535, label %536, label %540, !dx.controlflow.hints !39

; <label>:536                                     ; preds = %532
  %537 = fadd fast float %533, %300
  %538 = and i32 %505, 15
  %539 = uitofp i32 %538 to float
  store float %539, float* %397, align 4, !tbaa !40, !alias.scope !42, !noalias !45
  br label %540

; <label>:540                                     ; preds = %536, %532
  %541 = phi float [ %537, %536 ], [ %533, %532 ]
  %542 = phi i32 [ %505, %536 ], [ %534, %532 ]
  %543 = icmp eq i32 %514, %542
  br i1 %543, label %544, label %548, !dx.controlflow.hints !39

; <label>:544                                     ; preds = %540
  %545 = fadd fast float %541, %301
  %546 = and i32 %514, 15
  %547 = uitofp i32 %546 to float
  store float %547, float* %397, align 4, !tbaa !40, !alias.scope !42, !noalias !45
  br label %548

; <label>:548                                     ; preds = %544, %540, %511, %471, %431, %392
  %549 = phi float [ -1.000000e+00, %392 ], [ %432, %431 ], [ %432, %471 ], [ %432, %511 ], [ %432, %544 ], [ %432, %540 ]
  %550 = phi float [ 0.000000e+00, %392 ], [ 0.000000e+00, %431 ], [ 0.000000e+00, %471 ], [ 0.000000e+00, %511 ], [ %545, %544 ], [ %541, %540 ]
  %551 = phi float [ 0.000000e+00, %392 ], [ 0.000000e+00, %431 ], [ 0.000000e+00, %471 ], [ %512, %511 ], [ %512, %544 ], [ %512, %540 ]
  %552 = phi float [ 0.000000e+00, %392 ], [ 0.000000e+00, %431 ], [ %472, %471 ], [ %472, %511 ], [ %472, %544 ], [ %472, %540 ]
  %553 = phi i32 [ 65535, %392 ], [ 65535, %431 ], [ 65535, %471 ], [ 65535, %511 ], [ %514, %544 ], [ %542, %540 ]
  %554 = phi i32 [ 65535, %392 ], [ 65535, %431 ], [ 65535, %471 ], [ %513, %511 ], [ %513, %544 ], [ %513, %540 ]
  %555 = phi i32 [ 65535, %392 ], [ 65535, %431 ], [ %473, %471 ], [ %473, %511 ], [ %473, %544 ], [ %473, %540 ]
  %556 = phi i32 [ 65535, %392 ], [ %433, %431 ], [ %433, %471 ], [ %433, %511 ], [ %433, %544 ], [ %433, %540 ]
  %557 = lshr i32 %556, 4
  %558 = lshr i32 %555, 4
  %559 = lshr i32 %554, 4
  %560 = lshr i32 %553, 4
  %561 = fmul fast float %552, 2.000000e+00
  %562 = fmul fast float %551, 2.000000e+00
  %563 = fmul fast float %550, 2.000000e+00
  %564 = call float @dx.op.unary.f32(i32 7, float %561)  ; Saturate(value)
  %565 = call float @dx.op.unary.f32(i32 7, float %562)  ; Saturate(value)
  %566 = call float @dx.op.unary.f32(i32 7, float %563)  ; Saturate(value)
  %567 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i32 0, i32 0
  store i32 %557, i32* %567, align 4
  %568 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i32 0, i32 1
  store i32 %558, i32* %568, align 4
  %569 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i32 0, i32 2
  store i32 %559, i32* %569, align 4
  %570 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i32 0, i32 3
  store i32 %560, i32* %570, align 4
  %571 = getelementptr inbounds [4 x float], [4 x float]* %11, i32 0, i32 0
  store float 1.000000e+00, float* %571, align 4
  %572 = getelementptr inbounds [4 x float], [4 x float]* %11, i32 0, i32 1
  store float %564, float* %572, align 4
  %573 = getelementptr inbounds [4 x float], [4 x float]* %11, i32 0, i32 2
  store float %565, float* %573, align 4
  %574 = getelementptr inbounds [4 x float], [4 x float]* %11, i32 0, i32 3
  store float %566, float* %574, align 4
  br label %575

; <label>:575                                     ; preds = %668, %548
  %576 = phi float [ %672, %668 ], [ %549, %548 ]
  %577 = phi float [ %665, %668 ], [ 1.000000e+00, %548 ]
  %578 = phi i32 [ %670, %668 ], [ %557, %548 ]
  %579 = phi float [ %661, %668 ], [ 0.000000e+00, %548 ]
  %580 = phi i32 [ %662, %668 ], [ 0, %548 ]
  %581 = getelementptr [4 x i32], [4 x i32]* %10, i32 0, i32 %580
  store i32 65535, i32* %581, align 4, !tbaa !21, !noalias !51
  %582 = add i32 %578, %213
  %583 = mul i32 %582, 100
  %584 = add i32 %583, 80
  %585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %584, i32 undef)  ; BufferLoad(srv,index,wot)
  %586 = extractvalue %dx.types.ResRet.i32 %585, 2
  %587 = and i32 %586, 2
  %588 = icmp ne i32 %587, 0
  %589 = fcmp fast une float %577, 0.000000e+00
  %590 = and i1 %589, %588
  br i1 %590, label %591, label %660, !dx.controlflow.hints !52

; <label>:591                                     ; preds = %575
  %592 = and i32 %586, 128
  %593 = icmp eq i32 %592, 0
  br i1 %593, label %594, label %597, !dx.controlflow.hints !53

; <label>:594                                     ; preds = %591
  %595 = fmul fast float %577, %579
  %596 = fsub fast float %579, %595
  br label %660

; <label>:597                                     ; preds = %591
  %598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %583, i32 undef)  ; BufferLoad(srv,index,wot)
  %599 = extractvalue %dx.types.ResRet.i32 %598, 0
  %600 = bitcast i32 %599 to float
  %601 = extractvalue %dx.types.ResRet.i32 %598, 1
  %602 = bitcast i32 %601 to float
  %603 = call float @dx.op.dot2.f32(i32 54, float %57, float %58, float %600, float %602)  ; Dot2(ax,ay,bx,by)
  %604 = extractvalue %dx.types.ResRet.i32 %598, 3
  %605 = bitcast i32 %604 to float
  %606 = add i32 %583, 16
  %607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %606, i32 undef)  ; BufferLoad(srv,index,wot)
  %608 = extractvalue %dx.types.ResRet.i32 %607, 0
  %609 = bitcast i32 %608 to float
  %610 = call float @dx.op.dot2.f32(i32 54, float %57, float %58, float %605, float %609)  ; Dot2(ax,ay,bx,by)
  %611 = add i32 %583, 64
  %612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %611, i32 undef)  ; BufferLoad(srv,index,wot)
  %613 = extractvalue %dx.types.ResRet.i32 %612, 2
  %614 = call float @dx.op.legacyF16ToF32(i32 131, i32 %613)  ; LegacyF16ToF32(value)
  %615 = fdiv fast float 2.500000e+01, %614
  %616 = call float @dx.op.unary.f32(i32 23, float %615)  ; Log(value)
  %617 = fsub fast float -2.500000e+00, %48
  %618 = fadd fast float %617, %616
  %619 = call float @dx.op.unary.f32(i32 28, float %618)  ; Round_pi(value)
  %620 = fptosi float %619 to i32
  %621 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %620)  ; IMax(a,b)
  %622 = fcmp fast ogt float %576, 0.000000e+00
  br i1 %622, label %623, label %629, !dx.controlflow.hints !54

; <label>:623                                     ; preds = %597
  %624 = call float @dx.op.unary.f32(i32 12, float %576)  ; Cos(value)
  %625 = call float @dx.op.unary.f32(i32 13, float %576)  ; Sin(value)
  %626 = call float @dx.op.dot2.f32(i32 54, float %603, float %610, float %624, float %625)  ; Dot2(ax,ay,bx,by)
  %627 = fsub fast float -0.000000e+00, %624
  %628 = call float @dx.op.dot2.f32(i32 54, float %603, float %610, float %625, float %627)  ; Dot2(ax,ay,bx,by)
  br label %629

; <label>:629                                     ; preds = %623, %597
  %630 = phi float [ %626, %623 ], [ %603, %597 ]
  %631 = phi float [ %628, %623 ], [ %610, %597 ]
  %632 = add i32 %583, 48
  %633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %632, i32 undef)  ; BufferLoad(srv,index,wot)
  %634 = extractvalue %dx.types.ResRet.i32 %633, 0
  %635 = and i32 %634, 16777215
  %636 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %637 = add i32 %635, 0
  %638 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %637, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %639 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %638, i32 0)  ; GetDimensions(handle,mipLevel)
  %640 = extractvalue %dx.types.Dimensions %639, 3
  %641 = sub nsw i32 %640, %621
  %642 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %641)  ; IMax(a,b)
  %643 = sitofp i32 %642 to float
  %644 = lshr i32 %634, 16
  %645 = and i32 %644, 15
  %646 = uitofp i32 %645 to float
  %647 = call float @dx.op.binary.f32(i32 35, float %646, float %643)  ; FMax(a,b)
  %648 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %638, %dx.types.Handle %636, float %630, float %631, float undef, float undef, i32 0, i32 0, i32 undef, float %647)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %649 = extractvalue %dx.types.ResRet.f32 %648, 0
  %650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %584, i32 undef)  ; BufferLoad(srv,index,wot)
  %651 = extractvalue %dx.types.ResRet.i32 %650, 1
  %652 = call float @dx.op.legacyF16ToF32(i32 131, i32 %651)  ; LegacyF16ToF32(value)
  %653 = lshr i32 %651, 16
  %654 = call float @dx.op.legacyF16ToF32(i32 131, i32 %653)  ; LegacyF16ToF32(value)
  %655 = fsub fast float %649, %654
  %656 = fmul fast float %655, %652
  %657 = fsub fast float %656, %579
  %658 = fmul fast float %657, %577
  %659 = fadd fast float %658, %579
  br label %660

; <label>:660                                     ; preds = %629, %594, %575
  %661 = phi float [ %579, %575 ], [ %659, %629 ], [ %596, %594 ]
  %662 = add nuw nsw i32 %580, 1
  %663 = icmp ugt i32 %662, 3
  %664 = getelementptr [4 x float], [4 x float]* %11, i32 0, i32 %662
  %665 = load float, float* %664, align 4, !tbaa !40, !noalias !51
  %666 = fcmp fast ole float %665, 0.000000e+00
  %667 = or i1 %663, %666
  br i1 %667, label %673, label %668, !dx.controlflow.hints !55, !llvm.loop !56

; <label>:668                                     ; preds = %660
  %669 = getelementptr [4 x i32], [4 x i32]* %10, i32 0, i32 %662
  %670 = load i32, i32* %669, align 4, !tbaa !21, !noalias !51
  %671 = getelementptr [4 x float], [4 x float]* %12, i32 0, i32 %662
  %672 = load float, float* %671, align 4, !tbaa !40, !noalias !51
  br label %575

; <label>:673                                     ; preds = %660
  br label %674

; <label>:674                                     ; preds = %673, %197
  %675 = phi float [ 0.000000e+00, %197 ], [ %661, %673 ]
  br i1 %199, label %676, label %677, !dx.controlflow.hints !58

; <label>:676                                     ; preds = %674
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %50, i32 %8, i32 undef, float %675, float %675, float %675, float %675, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %677

; <label>:677                                     ; preds = %676, %674
  ret void

; <label>:678                                     ; preds = %707, %192
  %679 = phi i32 [ %684, %707 ], [ %34, %192 ]
  %680 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %679)  ; FirstbitLo(value)
  %681 = and i32 %680, 31
  %682 = shl i32 1, %681
  %683 = xor i32 %682, -1
  %684 = and i32 %679, %683
  %685 = add i32 %680, 32
  %686 = mul i32 %685, 3
  %687 = add i32 %686, 30
  %688 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 %687)  ; CBufferLoadLegacy(handle,regIndex)
  %689 = extractvalue %dx.types.CBufRet.i32 %688, 1
  %690 = bitcast i32 %689 to float
  %691 = extractvalue %dx.types.CBufRet.i32 %688, 2
  %692 = bitcast i32 %691 to float
  %693 = fsub fast float %57, %690
  %694 = fsub fast float %58, %692
  %695 = add i32 %686, 32
  %696 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 %695)  ; CBufferLoadLegacy(handle,regIndex)
  %697 = extractvalue %dx.types.CBufRet.i32 %696, 1
  %698 = and i32 %697, 1048575
  %699 = uitofp i32 %698 to float
  %700 = fcmp fast olt float %693, 0.000000e+00
  %701 = fcmp fast olt float %694, 0.000000e+00
  %702 = or i1 %700, %701
  %703 = fcmp fast ogt float %693, %699
  %704 = fcmp fast ogt float %694, %699
  %705 = or i1 %703, %704
  %706 = or i1 %702, %705
  br i1 %706, label %707, label %194, !dx.controlflow.hints !35

; <label>:707                                     ; preds = %678
  %708 = icmp eq i32 %684, 0
  br i1 %708, label %194, label %678
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
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

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
!dx.entryPoints = !{!18}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !10, !12, !14}
!5 = !{!6, !8, !9}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 16, i32 1, i32 11, i32 0, null}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 10, i32 1, i32 2, i32 0, !7}
!10 = !{!11}
!11 = !{i32 0, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 6, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!12 = !{!13}
!13 = !{i32 0, %GfxVirtualTexturingComposite* undef, !"", i32 0, i32 0, i32 1, i32 4208, null}
!14 = !{!15, !16, !17}
!15 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!16 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!17 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!18 = !{void ()* @cs_compose_displacement_to_scratch_ompv, !"cs_compose_displacement_to_scratch_ompv", null, !4, !19}
!19 = !{i32 0, i64 272, i32 4, !20}
!20 = !{i32 8, i32 8, i32 1}
!21 = !{!22, !22, i64 0}
!22 = !{!"int", !23, i64 0}
!23 = !{!"omnipotent char", !24, i64 0}
!24 = !{!"Simple C/C++ TBAA"}
!25 = !{!26, !28, !29, !30}
!26 = distinct !{!26, !27, !"\01?GetPageIndexAndTileDataBits@@YAXIIV?$vector@I$02@@AIAI11@Z: %pageIndex"}
!27 = distinct !{!27, !"\01?GetPageIndexAndTileDataBits@@YAXIIV?$vector@I$02@@AIAI11@Z"}
!28 = distinct !{!28, !27, !"\01?GetPageIndexAndTileDataBits@@YAXIIV?$vector@I$02@@AIAI11@Z: %tileDataBitsLo"}
!29 = distinct !{!29, !27, !"\01?GetPageIndexAndTileDataBits@@YAXIIV?$vector@I$02@@AIAI11@Z: %tileDataBitsHi"}
!30 = distinct !{!30, !31, !"\01?CompositeScratch_InitContext@@YA?AUCompositeScratchContext@@IV?$vector@I$02@@0_N@Z: %agg.result"}
!31 = distinct !{!31, !"\01?CompositeScratch_InitContext@@YA?AUCompositeScratchContext@@IV?$vector@I$02@@0_N@Z"}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 1}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = !{!41, !41, i64 0}
!41 = !{!"float", !23, i64 0}
!42 = !{!43}
!43 = distinct !{!43, !44, !"\01?GetLayersAlphasAndOptionalColors@@YAXUOMPVSamplingData@@V?$vector@M$01@@_NAIAV?$vector@I$03@@AIAV?$vector@M$03@@Y03$$CAV?$vector@M$02@@4@Z: %rotations"}
!44 = distinct !{!44, !"\01?GetLayersAlphasAndOptionalColors@@YAXUOMPVSamplingData@@V?$vector@M$01@@_NAIAV?$vector@I$03@@AIAV?$vector@M$03@@Y03$$CAV?$vector@M$02@@4@Z"}
!45 = !{!46, !47, !48, !49}
!46 = distinct !{!46, !44, !"\01?GetLayersAlphasAndOptionalColors@@YAXUOMPVSamplingData@@V?$vector@M$01@@_NAIAV?$vector@I$03@@AIAV?$vector@M$03@@Y03$$CAV?$vector@M$02@@4@Z: %layers"}
!47 = distinct !{!47, !44, !"\01?GetLayersAlphasAndOptionalColors@@YAXUOMPVSamplingData@@V?$vector@M$01@@_NAIAV?$vector@I$03@@AIAV?$vector@M$03@@Y03$$CAV?$vector@M$02@@4@Z: %alphas"}
!48 = distinct !{!48, !44, !"\01?GetLayersAlphasAndOptionalColors@@YAXUOMPVSamplingData@@V?$vector@M$01@@_NAIAV?$vector@I$03@@AIAV?$vector@M$03@@Y03$$CAV?$vector@M$02@@4@Z: %colors"}
!49 = distinct !{!49, !50, !"\01?CompositeScratch_Displacement@@YA_NI_NUCompositeScratchContext@@AIAM@Z: %displacement"}
!50 = distinct !{!50, !"\01?CompositeScratch_Displacement@@YA_NI_NUCompositeScratchContext@@AIAM@Z"}
!51 = !{!49}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !57}
!57 = !{!"llvm.loop.unroll.disable"}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}

