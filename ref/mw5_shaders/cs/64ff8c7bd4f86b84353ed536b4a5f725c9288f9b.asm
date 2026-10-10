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
; shader hash: 5c72a03d1b72f8d14206244ed1cd35b8
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

define void @cs_compose_displacement_to_scratch() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %7 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %8 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %9 = alloca [4 x i32], align 4
  %10 = lshr i32 %8, 3
  %11 = and i32 %10, 67108863
  %12 = add nuw nsw i32 %11, 223
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
  %25 = load i32, i32* %24, align 4, !tbaa !20, !noalias !24
  %26 = and i32 %25, 255
  %27 = or i32 %23, 1
  %28 = getelementptr [4 x i32], [4 x i32]* %9, i32 0, i32 %27
  %29 = load i32, i32* %28, align 4, !tbaa !20, !noalias !24
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
  br i1 %57, label %58, label %152, !dx.controlflow.hints !31

; <label>:58                                      ; preds = %0
  br label %59

; <label>:59                                      ; preds = %146, %58
  %60 = phi i32 [ %147, %146 ], [ -1, %58 ]
  %61 = phi i32 [ %148, %146 ], [ 0, %58 ]
  %62 = phi float [ %149, %146 ], [ -1.000000e+09, %58 ]
  %63 = phi i32 [ %30, %146 ], [ %29, %58 ]
  %64 = phi i32 [ %150, %146 ], [ 0, %58 ]
  %65 = icmp eq i32 %63, 0
  br i1 %65, label %146, label %66

; <label>:66                                      ; preds = %59
  br label %67

; <label>:67                                      ; preds = %100, %66
  %68 = phi i32 [ %101, %100 ], [ %60, %66 ]
  %69 = phi i32 [ %102, %100 ], [ %61, %66 ]
  %70 = phi float [ %103, %100 ], [ %62, %66 ]
  %71 = phi i32 [ %76, %100 ], [ %63, %66 ]
  %72 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %71)  ; FirstbitLo(value)
  %73 = and i32 %72, 31
  %74 = shl i32 1, %73
  %75 = xor i32 %74, -1
  %76 = and i32 %71, %75
  %77 = shl i32 %64, 5
  %78 = add i32 %72, %77
  %79 = mul i32 %78, 3
  %80 = add i32 %79, 30
  %81 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 %80)  ; CBufferLoadLegacy(handle,regIndex)
  %82 = extractvalue %dx.types.CBufRet.i32 %81, 1
  %83 = bitcast i32 %82 to float
  %84 = extractvalue %dx.types.CBufRet.i32 %81, 2
  %85 = bitcast i32 %84 to float
  %86 = fsub fast float %53, %83
  %87 = fsub fast float %54, %85
  %88 = add i32 %79, 32
  %89 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 %88)  ; CBufferLoadLegacy(handle,regIndex)
  %90 = extractvalue %dx.types.CBufRet.i32 %89, 1
  %91 = and i32 %90, 1048575
  %92 = uitofp i32 %91 to float
  %93 = fcmp fast olt float %86, 0.000000e+00
  %94 = fcmp fast olt float %87, 0.000000e+00
  %95 = or i1 %93, %94
  %96 = fcmp fast ogt float %86, %92
  %97 = fcmp fast ogt float %87, %92
  %98 = or i1 %96, %97
  %99 = or i1 %95, %98
  br i1 %99, label %100, label %105, !dx.controlflow.hints !32

; <label>:100                                     ; preds = %144, %105, %67
  %101 = phi i32 [ %68, %67 ], [ %78, %144 ], [ %107, %105 ]
  %102 = phi i32 [ %69, %67 ], [ %108, %144 ], [ %108, %105 ]
  %103 = phi float [ %70, %67 ], [ %142, %144 ], [ %70, %105 ]
  %104 = icmp eq i32 %76, 0
  br i1 %104, label %145, label %67

; <label>:105                                     ; preds = %67
  %106 = icmp ne i32 %69, 0
  %107 = select i1 %106, i32 %68, i32 %78
  %108 = select i1 %106, i32 %69, i32 1
  %109 = fdiv fast float %86, %92
  %110 = fdiv fast float %87, %92
  %111 = add i32 %79, 31
  %112 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 %111)  ; CBufferLoadLegacy(handle,regIndex)
  %113 = extractvalue %dx.types.CBufRet.i32 %112, 2
  %114 = lshr i32 %113, 24
  %115 = and i32 %114, 7
  %116 = or i32 %115, 8
  %117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 %116)  ; CBufferLoadLegacy(handle,regIndex)
  %118 = extractvalue %dx.types.CBufRet.f32 %117, 0
  %119 = extractvalue %dx.types.CBufRet.f32 %117, 2
  %120 = fdiv fast float 5.000000e-01, %118
  %121 = fmul fast float %120, 2.000000e+00
  %122 = fsub fast float 1.000000e+00, %121
  %123 = fmul fast float %122, %109
  %124 = fmul fast float %122, %110
  %125 = fadd fast float %123, %120
  %126 = fadd fast float %124, %120
  %127 = fmul fast float %125, %119
  %128 = fmul fast float %126, %119
  %129 = extractvalue %dx.types.CBufRet.i32 %112, 1
  %130 = and i32 %129, 16777215
  %131 = add i32 %130, 0
  %132 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %131, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %133 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 %80)  ; CBufferLoadLegacy(handle,regIndex)
  %134 = extractvalue %dx.types.CBufRet.i32 %133, 3
  %135 = bitcast i32 %134 to float
  %136 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 %111)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.i32 %136, 0
  %138 = bitcast i32 %137 to float
  %139 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %132, %dx.types.Handle %4, float %127, float %128, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %140 = extractvalue %dx.types.ResRet.f32 %139, 0
  %141 = fmul fast float %140, %138
  %142 = fadd fast float %141, %135
  %143 = fcmp fast ogt float %142, %70
  br i1 %143, label %144, label %100, !dx.controlflow.hints !33

; <label>:144                                     ; preds = %105
  br label %100

; <label>:145                                     ; preds = %100
  br label %146

; <label>:146                                     ; preds = %145, %59
  %147 = phi i32 [ %60, %59 ], [ %101, %145 ]
  %148 = phi i32 [ %61, %59 ], [ %102, %145 ]
  %149 = phi float [ %62, %59 ], [ %103, %145 ]
  %150 = add nuw nsw i32 %64, 1
  %151 = icmp eq i32 %150, 2
  br i1 %151, label %189, label %59

; <label>:152                                     ; preds = %0
  %153 = icmp eq i32 %29, 0
  br i1 %153, label %186, label %154

; <label>:154                                     ; preds = %152
  br label %155

; <label>:155                                     ; preds = %183, %154
  %156 = phi i32 [ %161, %183 ], [ %29, %154 ]
  %157 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %156)  ; FirstbitLo(value)
  %158 = and i32 %157, 31
  %159 = shl i32 1, %158
  %160 = xor i32 %159, -1
  %161 = and i32 %156, %160
  %162 = mul i32 %157, 3
  %163 = add i32 %162, 30
  %164 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 %163)  ; CBufferLoadLegacy(handle,regIndex)
  %165 = extractvalue %dx.types.CBufRet.i32 %164, 1
  %166 = bitcast i32 %165 to float
  %167 = extractvalue %dx.types.CBufRet.i32 %164, 2
  %168 = bitcast i32 %167 to float
  %169 = fsub fast float %53, %166
  %170 = fsub fast float %54, %168
  %171 = add i32 %162, 32
  %172 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 %171)  ; CBufferLoadLegacy(handle,regIndex)
  %173 = extractvalue %dx.types.CBufRet.i32 %172, 1
  %174 = and i32 %173, 1048575
  %175 = uitofp i32 %174 to float
  %176 = fcmp fast olt float %169, 0.000000e+00
  %177 = fcmp fast olt float %170, 0.000000e+00
  %178 = or i1 %176, %177
  %179 = fcmp fast ogt float %169, %175
  %180 = fcmp fast ogt float %170, %175
  %181 = or i1 %179, %180
  %182 = or i1 %178, %181
  br i1 %182, label %183, label %192, !dx.controlflow.hints !34

; <label>:183                                     ; preds = %155
  %184 = icmp eq i32 %161, 0
  br i1 %184, label %185, label %155

; <label>:185                                     ; preds = %183
  br label %186

; <label>:186                                     ; preds = %185, %152
  %187 = icmp eq i32 %30, 0
  br i1 %187, label %193, label %188

; <label>:188                                     ; preds = %186
  br label %328

; <label>:189                                     ; preds = %146
  br label %193

; <label>:190                                     ; preds = %357, %328
  %191 = phi i32 [ %335, %328 ], [ -1, %357 ]
  br label %193

; <label>:192                                     ; preds = %155
  br label %193

; <label>:193                                     ; preds = %192, %190, %189, %186
  %194 = phi i32 [ -1, %186 ], [ %147, %189 ], [ %191, %190 ], [ %157, %192 ]
  %195 = icmp ne i32 %194, -1
  br i1 %195, label %196, label %324, !dx.controlflow.hints !35

; <label>:196                                     ; preds = %193
  %197 = mul i32 %194, 3
  %198 = add i32 %197, 30
  %199 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 %198)  ; CBufferLoadLegacy(handle,regIndex)
  %200 = extractvalue %dx.types.CBufRet.i32 %199, 0
  %201 = extractvalue %dx.types.CBufRet.i32 %199, 1
  %202 = extractvalue %dx.types.CBufRet.i32 %199, 2
  %203 = add i32 %197, 31
  %204 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 %203)  ; CBufferLoadLegacy(handle,regIndex)
  %205 = extractvalue %dx.types.CBufRet.i32 %204, 2
  %206 = add i32 %197, 32
  %207 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 %206)  ; CBufferLoadLegacy(handle,regIndex)
  %208 = extractvalue %dx.types.CBufRet.i32 %207, 1
  %209 = icmp eq i32 %200, 0
  br i1 %209, label %324, label %210

; <label>:210                                     ; preds = %196
  br label %211

; <label>:211                                     ; preds = %320, %210
  %212 = phi float [ %321, %320 ], [ 0.000000e+00, %210 ]
  %213 = phi i32 [ %218, %320 ], [ %200, %210 ]
  %214 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %213)  ; FirstbitLo(value)
  %215 = and i32 %214, 31
  %216 = shl i32 1, %215
  %217 = xor i32 %216, -1
  %218 = and i32 %213, %217
  %219 = lshr i32 %208, 20
  %220 = add i32 %214, %219
  %221 = mul i32 %220, 100
  %222 = add i32 %221, 80
  %223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %222, i32 undef)  ; BufferLoad(srv,index,wot)
  %224 = extractvalue %dx.types.ResRet.i32 %223, 2
  %225 = and i32 %224, 2
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %320, label %227, !dx.controlflow.hints !36

; <label>:227                                     ; preds = %211
  %228 = bitcast i32 %201 to float
  %229 = bitcast i32 %202 to float
  %230 = fsub fast float %53, %228
  %231 = fsub fast float %54, %229
  %232 = and i32 %208, 1048575
  %233 = uitofp i32 %232 to float
  %234 = fdiv fast float %230, %233
  %235 = fdiv fast float %231, %233
  %236 = lshr i32 %205, 24
  %237 = and i32 %236, 7
  %238 = or i32 %237, 8
  %239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 %238)  ; CBufferLoadLegacy(handle,regIndex)
  %240 = extractvalue %dx.types.CBufRet.f32 %239, 0
  %241 = extractvalue %dx.types.CBufRet.f32 %239, 2
  %242 = fdiv fast float 5.000000e-01, %240
  %243 = fmul fast float %242, 2.000000e+00
  %244 = fsub fast float 1.000000e+00, %243
  %245 = fmul fast float %244, %234
  %246 = fmul fast float %244, %235
  %247 = fadd fast float %245, %242
  %248 = fadd fast float %246, %242
  %249 = fmul fast float %247, %241
  %250 = fmul fast float %248, %241
  %251 = add i32 %221, 16
  %252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %251, i32 undef)  ; BufferLoad(srv,index,wot)
  %253 = extractvalue %dx.types.ResRet.i32 %252, 2
  %254 = and i32 %253, 16777215
  %255 = add i32 %254, 0
  %256 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %255, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %257 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %256, %dx.types.Handle %3, float %249, float %250, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %258 = extractvalue %dx.types.ResRet.f32 %257, 0
  %259 = fcmp fast une float %258, 0.000000e+00
  br i1 %259, label %260, label %320, !dx.controlflow.hints !37

; <label>:260                                     ; preds = %227
  %261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %222, i32 undef)  ; BufferLoad(srv,index,wot)
  %262 = extractvalue %dx.types.ResRet.i32 %261, 2
  %263 = and i32 %262, 128
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %268, !dx.controlflow.hints !38

; <label>:265                                     ; preds = %260
  %266 = fmul fast float %258, %212
  %267 = fsub fast float %212, %266
  br label %320

; <label>:268                                     ; preds = %260
  %269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %221, i32 undef)  ; BufferLoad(srv,index,wot)
  %270 = extractvalue %dx.types.ResRet.i32 %269, 0
  %271 = bitcast i32 %270 to float
  %272 = extractvalue %dx.types.ResRet.i32 %269, 1
  %273 = bitcast i32 %272 to float
  %274 = call float @dx.op.dot2.f32(i32 54, float %53, float %54, float %271, float %273)  ; Dot2(ax,ay,bx,by)
  %275 = extractvalue %dx.types.ResRet.i32 %269, 3
  %276 = bitcast i32 %275 to float
  %277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %251, i32 undef)  ; BufferLoad(srv,index,wot)
  %278 = extractvalue %dx.types.ResRet.i32 %277, 0
  %279 = bitcast i32 %278 to float
  %280 = call float @dx.op.dot2.f32(i32 54, float %53, float %54, float %276, float %279)  ; Dot2(ax,ay,bx,by)
  %281 = add i32 %221, 64
  %282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %281, i32 undef)  ; BufferLoad(srv,index,wot)
  %283 = extractvalue %dx.types.ResRet.i32 %282, 2
  %284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %283)  ; LegacyF16ToF32(value)
  %285 = fdiv fast float 2.500000e+01, %284
  %286 = call float @dx.op.unary.f32(i32 23, float %285)  ; Log(value)
  %287 = fsub fast float -2.500000e+00, %44
  %288 = fadd fast float %287, %286
  %289 = call float @dx.op.unary.f32(i32 28, float %288)  ; Round_pi(value)
  %290 = fptosi float %289 to i32
  %291 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %290)  ; IMax(a,b)
  %292 = add i32 %221, 48
  %293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %292, i32 undef)  ; BufferLoad(srv,index,wot)
  %294 = extractvalue %dx.types.ResRet.i32 %293, 0
  %295 = and i32 %294, 16777215
  %296 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %297 = add i32 %295, 0
  %298 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %297, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %299 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %298, i32 0)  ; GetDimensions(handle,mipLevel)
  %300 = extractvalue %dx.types.Dimensions %299, 3
  %301 = sub nsw i32 %300, %291
  %302 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %301)  ; IMax(a,b)
  %303 = sitofp i32 %302 to float
  %304 = lshr i32 %294, 16
  %305 = and i32 %304, 15
  %306 = uitofp i32 %305 to float
  %307 = call float @dx.op.binary.f32(i32 35, float %306, float %303)  ; FMax(a,b)
  %308 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %298, %dx.types.Handle %296, float %274, float %280, float undef, float undef, i32 0, i32 0, i32 undef, float %307)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %309 = extractvalue %dx.types.ResRet.f32 %308, 0
  %310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %222, i32 undef)  ; BufferLoad(srv,index,wot)
  %311 = extractvalue %dx.types.ResRet.i32 %310, 1
  %312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %311)  ; LegacyF16ToF32(value)
  %313 = lshr i32 %311, 16
  %314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %313)  ; LegacyF16ToF32(value)
  %315 = fsub fast float %309, %314
  %316 = fmul fast float %315, %312
  %317 = fsub fast float %316, %212
  %318 = fmul fast float %317, %258
  %319 = fadd fast float %318, %212
  br label %320

; <label>:320                                     ; preds = %268, %265, %227, %211
  %321 = phi float [ %212, %211 ], [ %319, %268 ], [ %267, %265 ], [ %212, %227 ]
  %322 = icmp eq i32 %218, 0
  br i1 %322, label %323, label %211

; <label>:323                                     ; preds = %320
  br label %324

; <label>:324                                     ; preds = %323, %196, %193
  %325 = phi float [ 0.000000e+00, %193 ], [ 0.000000e+00, %196 ], [ %321, %323 ]
  br i1 %195, label %326, label %327, !dx.controlflow.hints !39

; <label>:326                                     ; preds = %324
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %46, i32 %7, i32 undef, float %325, float %325, float %325, float %325, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %327

; <label>:327                                     ; preds = %326, %324
  ret void

; <label>:328                                     ; preds = %357, %188
  %329 = phi i32 [ %334, %357 ], [ %30, %188 ]
  %330 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %329)  ; FirstbitLo(value)
  %331 = and i32 %330, 31
  %332 = shl i32 1, %331
  %333 = xor i32 %332, -1
  %334 = and i32 %329, %333
  %335 = add i32 %330, 32
  %336 = mul i32 %335, 3
  %337 = add i32 %336, 30
  %338 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 %337)  ; CBufferLoadLegacy(handle,regIndex)
  %339 = extractvalue %dx.types.CBufRet.i32 %338, 1
  %340 = bitcast i32 %339 to float
  %341 = extractvalue %dx.types.CBufRet.i32 %338, 2
  %342 = bitcast i32 %341 to float
  %343 = fsub fast float %53, %340
  %344 = fsub fast float %54, %342
  %345 = add i32 %336, 32
  %346 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 %345)  ; CBufferLoadLegacy(handle,regIndex)
  %347 = extractvalue %dx.types.CBufRet.i32 %346, 1
  %348 = and i32 %347, 1048575
  %349 = uitofp i32 %348 to float
  %350 = fcmp fast olt float %343, 0.000000e+00
  %351 = fcmp fast olt float %344, 0.000000e+00
  %352 = or i1 %350, %351
  %353 = fcmp fast ogt float %343, %349
  %354 = fcmp fast ogt float %344, %349
  %355 = or i1 %353, %354
  %356 = or i1 %352, %355
  br i1 %356, label %357, label %190, !dx.controlflow.hints !34

; <label>:357                                     ; preds = %328
  %358 = icmp eq i32 %334, 0
  br i1 %358, label %190, label %328
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
!dx.entryPoints = !{!17}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !9, !11, !13}
!5 = !{!6, !8}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 16, i32 1, i32 11, i32 0, null}
!9 = !{!10}
!10 = !{i32 0, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 6, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!11 = !{!12}
!12 = !{i32 0, %GfxVirtualTexturingComposite* undef, !"", i32 0, i32 0, i32 1, i32 4208, null}
!13 = !{!14, !15, !16}
!14 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!15 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!16 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!17 = !{void ()* @cs_compose_displacement_to_scratch, !"cs_compose_displacement_to_scratch", null, !4, !18}
!18 = !{i32 0, i64 272, i32 4, !19}
!19 = !{i32 8, i32 8, i32 1}
!20 = !{!21, !21, i64 0}
!21 = !{!"int", !22, i64 0}
!22 = !{!"omnipotent char", !23, i64 0}
!23 = !{!"Simple C/C++ TBAA"}
!24 = !{!25, !27, !28, !29}
!25 = distinct !{!25, !26, !"\01?GetPageIndexAndTileDataBits@@YAXIIV?$vector@I$02@@AIAI11@Z: %pageIndex"}
!26 = distinct !{!26, !"\01?GetPageIndexAndTileDataBits@@YAXIIV?$vector@I$02@@AIAI11@Z"}
!27 = distinct !{!27, !26, !"\01?GetPageIndexAndTileDataBits@@YAXIIV?$vector@I$02@@AIAI11@Z: %tileDataBitsLo"}
!28 = distinct !{!28, !26, !"\01?GetPageIndexAndTileDataBits@@YAXIIV?$vector@I$02@@AIAI11@Z: %tileDataBitsHi"}
!29 = distinct !{!29, !30, !"\01?CompositeScratch_InitContext@@YA?AUCompositeScratchContext@@IV?$vector@I$02@@0_N@Z: %agg.result"}
!30 = distinct !{!30, !"\01?CompositeScratch_InitContext@@YA?AUCompositeScratchContext@@IV?$vector@I$02@@0_N@Z"}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 1}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}

