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
; shader hash: cdb7f7dad01f419e44bbaf5fe6bc2c64
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

define void @cs_compose_to_scratch() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %9 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %10 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %11 = alloca [4 x i32], align 4
  %12 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %13 = extractvalue %dx.types.CBufRet.i32 %12, 3
  %14 = shl i32 %10, 3
  %15 = udiv i32 %14, %13
  %16 = lshr i32 %15, 1
  %17 = add nuw i32 %16, 223
  %18 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 %17)  ; CBufferLoadLegacy(handle,regIndex)
  %19 = extractvalue %dx.types.CBufRet.i32 %18, 0
  %20 = extractvalue %dx.types.CBufRet.i32 %18, 1
  %21 = extractvalue %dx.types.CBufRet.i32 %18, 2
  %22 = extractvalue %dx.types.CBufRet.i32 %18, 3
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i32 0, i32 0
  store i32 %19, i32* %23, align 4
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i32 0, i32 1
  store i32 %20, i32* %24, align 4
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i32 0, i32 2
  store i32 %21, i32* %25, align 4
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i32 0, i32 3
  store i32 %22, i32* %26, align 4
  %27 = shl i32 %15, 1
  %28 = and i32 %27, 2
  %29 = getelementptr [4 x i32], [4 x i32]* %11, i32 0, i32 %28
  %30 = load i32, i32* %29, align 4, !tbaa !22, !noalias !26
  %31 = and i32 %30, 255
  %32 = or i32 %28, 1
  %33 = getelementptr [4 x i32], [4 x i32]* %11, i32 0, i32 %32
  %34 = load i32, i32* %33, align 4, !tbaa !22, !noalias !26
  %35 = lshr i32 %30, 8
  %36 = urem i32 %8, %13
  %37 = add nuw nsw i32 %31, 198
  %38 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 %37)  ; CBufferLoadLegacy(handle,regIndex)
  %39 = extractvalue %dx.types.CBufRet.f32 %38, 0
  %40 = extractvalue %dx.types.CBufRet.f32 %38, 1
  %41 = extractvalue %dx.types.CBufRet.f32 %38, 2
  %42 = uitofp i32 %13 to float
  %43 = fdiv fast float %41, %42
  %44 = uitofp i32 %36 to float
  %45 = uitofp i32 %9 to float
  %46 = fmul fast float %43, %44
  %47 = fmul fast float %43, %45
  %48 = fadd fast float %46, %39
  %49 = fadd fast float %47, %40
  %50 = extractvalue %dx.types.CBufRet.f32 %38, 3
  %51 = mul i32 %31, %13
  %52 = add i32 %36, %51
  %53 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %54 = extractvalue %dx.types.CBufRet.f32 %53, 0
  %55 = extractvalue %dx.types.CBufRet.f32 %53, 1
  %56 = extractvalue %dx.types.CBufRet.f32 %53, 2
  %57 = fmul fast float %56, %48
  %58 = fmul fast float %56, %49
  %59 = fadd fast float %57, %54
  %60 = fadd fast float %58, %55
  %61 = extractvalue %dx.types.CBufRet.i32 %12, 2
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %157, !dx.controlflow.hints !33

; <label>:63                                      ; preds = %0
  br label %64

; <label>:64                                      ; preds = %151, %63
  %65 = phi i32 [ %152, %151 ], [ -1, %63 ]
  %66 = phi i32 [ %153, %151 ], [ 0, %63 ]
  %67 = phi float [ %154, %151 ], [ -1.000000e+09, %63 ]
  %68 = phi i32 [ %35, %151 ], [ %34, %63 ]
  %69 = phi i32 [ %155, %151 ], [ 0, %63 ]
  %70 = icmp eq i32 %68, 0
  br i1 %70, label %151, label %71

; <label>:71                                      ; preds = %64
  br label %72

; <label>:72                                      ; preds = %105, %71
  %73 = phi i32 [ %106, %105 ], [ %65, %71 ]
  %74 = phi i32 [ %107, %105 ], [ %66, %71 ]
  %75 = phi float [ %108, %105 ], [ %67, %71 ]
  %76 = phi i32 [ %81, %105 ], [ %68, %71 ]
  %77 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %76)  ; FirstbitLo(value)
  %78 = and i32 %77, 31
  %79 = shl i32 1, %78
  %80 = xor i32 %79, -1
  %81 = and i32 %76, %80
  %82 = shl i32 %69, 5
  %83 = add i32 %77, %82
  %84 = mul i32 %83, 3
  %85 = add i32 %84, 30
  %86 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 %85)  ; CBufferLoadLegacy(handle,regIndex)
  %87 = extractvalue %dx.types.CBufRet.i32 %86, 1
  %88 = bitcast i32 %87 to float
  %89 = extractvalue %dx.types.CBufRet.i32 %86, 2
  %90 = bitcast i32 %89 to float
  %91 = fsub fast float %59, %88
  %92 = fsub fast float %60, %90
  %93 = add i32 %84, 32
  %94 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 %93)  ; CBufferLoadLegacy(handle,regIndex)
  %95 = extractvalue %dx.types.CBufRet.i32 %94, 1
  %96 = and i32 %95, 1048575
  %97 = uitofp i32 %96 to float
  %98 = fcmp fast olt float %91, 0.000000e+00
  %99 = fcmp fast olt float %92, 0.000000e+00
  %100 = or i1 %98, %99
  %101 = fcmp fast ogt float %91, %97
  %102 = fcmp fast ogt float %92, %97
  %103 = or i1 %101, %102
  %104 = or i1 %100, %103
  br i1 %104, label %105, label %110, !dx.controlflow.hints !34

; <label>:105                                     ; preds = %149, %110, %72
  %106 = phi i32 [ %73, %72 ], [ %83, %149 ], [ %112, %110 ]
  %107 = phi i32 [ %74, %72 ], [ %113, %149 ], [ %113, %110 ]
  %108 = phi float [ %75, %72 ], [ %147, %149 ], [ %75, %110 ]
  %109 = icmp eq i32 %81, 0
  br i1 %109, label %150, label %72

; <label>:110                                     ; preds = %72
  %111 = icmp ne i32 %74, 0
  %112 = select i1 %111, i32 %73, i32 %83
  %113 = select i1 %111, i32 %74, i32 1
  %114 = fdiv fast float %91, %97
  %115 = fdiv fast float %92, %97
  %116 = add i32 %84, 31
  %117 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 %116)  ; CBufferLoadLegacy(handle,regIndex)
  %118 = extractvalue %dx.types.CBufRet.i32 %117, 2
  %119 = lshr i32 %118, 24
  %120 = and i32 %119, 7
  %121 = or i32 %120, 8
  %122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 %121)  ; CBufferLoadLegacy(handle,regIndex)
  %123 = extractvalue %dx.types.CBufRet.f32 %122, 0
  %124 = extractvalue %dx.types.CBufRet.f32 %122, 2
  %125 = fdiv fast float 5.000000e-01, %123
  %126 = fmul fast float %125, 2.000000e+00
  %127 = fsub fast float 1.000000e+00, %126
  %128 = fmul fast float %127, %114
  %129 = fmul fast float %127, %115
  %130 = fadd fast float %128, %125
  %131 = fadd fast float %129, %125
  %132 = fmul fast float %130, %124
  %133 = fmul fast float %131, %124
  %134 = extractvalue %dx.types.CBufRet.i32 %117, 1
  %135 = and i32 %134, 16777215
  %136 = add i32 %135, 0
  %137 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %136, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %138 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 %85)  ; CBufferLoadLegacy(handle,regIndex)
  %139 = extractvalue %dx.types.CBufRet.i32 %138, 3
  %140 = bitcast i32 %139 to float
  %141 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 %116)  ; CBufferLoadLegacy(handle,regIndex)
  %142 = extractvalue %dx.types.CBufRet.i32 %141, 0
  %143 = bitcast i32 %142 to float
  %144 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %137, %dx.types.Handle %6, float %132, float %133, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %145 = extractvalue %dx.types.ResRet.f32 %144, 0
  %146 = fmul fast float %145, %143
  %147 = fadd fast float %146, %140
  %148 = fcmp fast ogt float %147, %75
  br i1 %148, label %149, label %105, !dx.controlflow.hints !35

; <label>:149                                     ; preds = %110
  br label %105

; <label>:150                                     ; preds = %105
  br label %151

; <label>:151                                     ; preds = %150, %64
  %152 = phi i32 [ %65, %64 ], [ %106, %150 ]
  %153 = phi i32 [ %66, %64 ], [ %107, %150 ]
  %154 = phi float [ %67, %64 ], [ %108, %150 ]
  %155 = add nuw nsw i32 %69, 1
  %156 = icmp eq i32 %155, 2
  br i1 %156, label %194, label %64

; <label>:157                                     ; preds = %0
  %158 = icmp eq i32 %34, 0
  br i1 %158, label %191, label %159

; <label>:159                                     ; preds = %157
  br label %160

; <label>:160                                     ; preds = %188, %159
  %161 = phi i32 [ %166, %188 ], [ %34, %159 ]
  %162 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %161)  ; FirstbitLo(value)
  %163 = and i32 %162, 31
  %164 = shl i32 1, %163
  %165 = xor i32 %164, -1
  %166 = and i32 %161, %165
  %167 = mul i32 %162, 3
  %168 = add i32 %167, 30
  %169 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 %168)  ; CBufferLoadLegacy(handle,regIndex)
  %170 = extractvalue %dx.types.CBufRet.i32 %169, 1
  %171 = bitcast i32 %170 to float
  %172 = extractvalue %dx.types.CBufRet.i32 %169, 2
  %173 = bitcast i32 %172 to float
  %174 = fsub fast float %59, %171
  %175 = fsub fast float %60, %173
  %176 = add i32 %167, 32
  %177 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 %176)  ; CBufferLoadLegacy(handle,regIndex)
  %178 = extractvalue %dx.types.CBufRet.i32 %177, 1
  %179 = and i32 %178, 1048575
  %180 = uitofp i32 %179 to float
  %181 = fcmp fast olt float %174, 0.000000e+00
  %182 = fcmp fast olt float %175, 0.000000e+00
  %183 = or i1 %181, %182
  %184 = fcmp fast ogt float %174, %180
  %185 = fcmp fast ogt float %175, %180
  %186 = or i1 %184, %185
  %187 = or i1 %183, %186
  br i1 %187, label %188, label %197, !dx.controlflow.hints !36

; <label>:188                                     ; preds = %160
  %189 = icmp eq i32 %166, 0
  br i1 %189, label %190, label %160

; <label>:190                                     ; preds = %188
  br label %191

; <label>:191                                     ; preds = %190, %157
  %192 = icmp eq i32 %35, 0
  br i1 %192, label %198, label %193

; <label>:193                                     ; preds = %191
  br label %1044

; <label>:194                                     ; preds = %151
  br label %198

; <label>:195                                     ; preds = %1073, %1044
  %196 = phi i32 [ %1051, %1044 ], [ -1, %1073 ]
  br label %198

; <label>:197                                     ; preds = %160
  br label %198

; <label>:198                                     ; preds = %197, %195, %194, %191
  %199 = phi i32 [ -1, %191 ], [ %152, %194 ], [ %196, %195 ], [ %162, %197 ]
  %200 = icmp ne i32 %199, -1
  br i1 %200, label %201, label %989, !dx.controlflow.hints !37

; <label>:201                                     ; preds = %198
  %202 = mul i32 %199, 3
  %203 = add i32 %202, 32
  %204 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 %203)  ; CBufferLoadLegacy(handle,regIndex)
  %205 = extractvalue %dx.types.CBufRet.i32 %204, 1
  %206 = lshr i32 %205, 20
  %207 = add i32 %202, 30
  %208 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 %207)  ; CBufferLoadLegacy(handle,regIndex)
  %209 = extractvalue %dx.types.CBufRet.i32 %208, 0
  %210 = extractvalue %dx.types.CBufRet.i32 %208, 1
  %211 = bitcast i32 %210 to float
  %212 = extractvalue %dx.types.CBufRet.i32 %208, 2
  %213 = bitcast i32 %212 to float
  %214 = fsub fast float %59, %211
  %215 = fsub fast float %60, %213
  %216 = fsub fast float %214, %211
  %217 = fsub fast float %215, %213
  %218 = and i32 %205, 1048575
  %219 = uitofp i32 %218 to float
  %220 = fdiv fast float %216, %219
  %221 = fdiv fast float %217, %219
  %222 = add i32 %202, 31
  %223 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 %222)  ; CBufferLoadLegacy(handle,regIndex)
  %224 = extractvalue %dx.types.CBufRet.i32 %223, 2
  %225 = lshr i32 %224, 24
  %226 = and i32 %225, 7
  %227 = or i32 %226, 8
  %228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 %227)  ; CBufferLoadLegacy(handle,regIndex)
  %229 = extractvalue %dx.types.CBufRet.f32 %228, 0
  %230 = extractvalue %dx.types.CBufRet.f32 %228, 2
  %231 = fdiv fast float 5.000000e-01, %229
  %232 = fmul fast float %231, 2.000000e+00
  %233 = fsub fast float 1.000000e+00, %232
  %234 = fmul fast float %233, %220
  %235 = fmul fast float %233, %221
  %236 = fadd fast float %234, %231
  %237 = fadd fast float %235, %231
  %238 = fmul fast float %236, %230
  %239 = fmul fast float %237, %230
  %240 = icmp eq i32 %209, 0
  br i1 %240, label %956, label %241

; <label>:241                                     ; preds = %201
  br label %242

; <label>:242                                     ; preds = %931, %241
  %243 = phi float [ %953, %931 ], [ 0.000000e+00, %241 ]
  %244 = phi float [ %833, %931 ], [ 0.000000e+00, %241 ]
  %245 = phi float [ %728, %931 ], [ 0.000000e+00, %241 ]
  %246 = phi float [ %725, %931 ], [ 0.000000e+00, %241 ]
  %247 = phi float [ %720, %931 ], [ 0.000000e+00, %241 ]
  %248 = phi float [ %721, %931 ], [ 0.000000e+00, %241 ]
  %249 = phi float [ %722, %931 ], [ 0.000000e+00, %241 ]
  %250 = phi float [ %938, %931 ], [ 0.000000e+00, %241 ]
  %251 = phi float [ %932, %931 ], [ 0.000000e+00, %241 ]
  %252 = phi float [ %933, %931 ], [ 0.000000e+00, %241 ]
  %253 = phi float [ %934, %931 ], [ 0.000000e+00, %241 ]
  %254 = phi float [ %825, %931 ], [ 0.000000e+00, %241 ]
  %255 = phi i32 [ %260, %931 ], [ %209, %241 ]
  %256 = phi i1 [ false, %931 ], [ true, %241 ]
  %257 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %255)  ; FirstbitLo(value)
  %258 = and i32 %257, 31
  %259 = shl i32 1, %258
  %260 = xor i32 %259, %255
  %261 = add i32 %257, %206
  %262 = mul i32 %261, 100
  %263 = add i32 %262, 64
  %264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %263, i32 undef)  ; BufferLoad(srv,index,wot)
  %265 = extractvalue %dx.types.ResRet.i32 %264, 2
  %266 = call float @dx.op.legacyF16ToF32(i32 131, i32 %265)  ; LegacyF16ToF32(value)
  %267 = fdiv fast float 2.500000e+01, %266
  %268 = call float @dx.op.unary.f32(i32 23, float %267)  ; Log(value)
  %269 = fsub fast float 5.000000e-01, %50
  %270 = fadd fast float %269, %268
  %271 = call float @dx.op.unary.f32(i32 28, float %270)  ; Round_pi(value)
  %272 = fptosi float %271 to i32
  %273 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %272)  ; IMax(a,b)
  %274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %262, i32 undef)  ; BufferLoad(srv,index,wot)
  %275 = extractvalue %dx.types.ResRet.i32 %274, 0
  %276 = bitcast i32 %275 to float
  %277 = extractvalue %dx.types.ResRet.i32 %274, 1
  %278 = bitcast i32 %277 to float
  %279 = extractvalue %dx.types.ResRet.i32 %274, 3
  %280 = bitcast i32 %279 to float
  %281 = add i32 %262, 16
  %282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %281, i32 undef)  ; BufferLoad(srv,index,wot)
  %283 = extractvalue %dx.types.ResRet.i32 %282, 0
  %284 = bitcast i32 %283 to float
  %285 = fmul fast float %276, %59
  %286 = call float @dx.op.tertiary.f32(i32 46, float %278, float %60, float %285)  ; FMad(a,b,c)
  %287 = fmul fast float %280, %59
  %288 = call float @dx.op.tertiary.f32(i32 46, float %284, float %60, float %287)  ; FMad(a,b,c)
  br i1 %256, label %296, label %289, !dx.controlflow.hints !38

; <label>:289                                     ; preds = %242
  %290 = extractvalue %dx.types.ResRet.i32 %282, 2
  %291 = and i32 %290, 16777215
  %292 = add i32 %291, 0
  %293 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %292, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %294 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %293, %dx.types.Handle %5, float %238, float %239, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %295 = extractvalue %dx.types.ResRet.f32 %294, 0
  br label %296

; <label>:296                                     ; preds = %289, %242
  %297 = phi float [ 1.000000e+00, %242 ], [ %295, %289 ]
  %298 = add i32 %262, 80
  %299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %298, i32 undef)  ; BufferLoad(srv,index,wot)
  %300 = extractvalue %dx.types.ResRet.i32 %299, 2
  %301 = and i32 %300, 4
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %360, label %303, !dx.controlflow.hints !39

; <label>:303                                     ; preds = %296
  %304 = add i32 %262, 32
  %305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %304, i32 undef)  ; BufferLoad(srv,index,wot)
  %306 = extractvalue %dx.types.ResRet.i32 %305, 3
  %307 = and i32 %306, 16777215
  %308 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %309 = add i32 %307, 0
  %310 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %309, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %311 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %310, i32 0)  ; GetDimensions(handle,mipLevel)
  %312 = extractvalue %dx.types.Dimensions %311, 3
  %313 = sub nsw i32 %312, %273
  %314 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %313)  ; IMax(a,b)
  %315 = sitofp i32 %314 to float
  %316 = lshr i32 %306, 16
  %317 = and i32 %316, 15
  %318 = uitofp i32 %317 to float
  %319 = call float @dx.op.binary.f32(i32 35, float %318, float %315)  ; FMax(a,b)
  %320 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %310, %dx.types.Handle %308, float %286, float %288, float undef, float undef, i32 0, i32 0, i32 undef, float %319)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %321 = extractvalue %dx.types.ResRet.f32 %320, 0
  %322 = fsub fast float 1.000000e+00, %297
  %323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %281, i32 undef)  ; BufferLoad(srv,index,wot)
  %324 = extractvalue %dx.types.ResRet.i32 %323, 2
  %325 = lshr i32 %324, 24
  %326 = uitofp i32 %325 to float
  %327 = fmul fast float %326, 0x3F70101020000000
  %328 = extractvalue %dx.types.ResRet.i32 %323, 3
  %329 = lshr i32 %328, 24
  %330 = uitofp i32 %329 to float
  %331 = bitcast float %297 to i32
  %332 = sitofp i32 %331 to float
  %333 = fadd fast float %332, 0xC1CFBF8940000000
  %334 = fmul fast float %333, 0x3F70101020000000
  %335 = fmul fast float %334, %330
  %336 = fadd fast float %335, 0x41CFBF8940000000
  %337 = fptosi float %336 to i32
  %338 = bitcast i32 %337 to float
  %339 = bitcast float %322 to i32
  %340 = sitofp i32 %339 to float
  %341 = fadd fast float %340, 0xC1CFBF8940000000
  %342 = fmul fast float %341, 0x3F70101020000000
  %343 = fmul fast float %342, %330
  %344 = fadd fast float %343, 0x41CFBF8940000000
  %345 = fptosi float %344 to i32
  %346 = bitcast i32 %345 to float
  %347 = fmul fast float %338, %327
  %348 = fmul fast float %346, %327
  %349 = fsub fast float %322, %347
  %350 = fadd fast float %348, %322
  %351 = call float @dx.op.unary.f32(i32 7, float %349)  ; Saturate(value)
  %352 = call float @dx.op.unary.f32(i32 7, float %350)  ; Saturate(value)
  %353 = fsub fast float %321, %351
  %354 = fsub fast float %352, %351
  %355 = bitcast float %354 to i32
  %356 = sub nsw i32 2129859010, %355
  %357 = bitcast i32 %356 to float
  %358 = fmul fast float %357, %353
  %359 = call float @dx.op.unary.f32(i32 7, float %358)  ; Saturate(value)
  br label %360

; <label>:360                                     ; preds = %303, %296
  %361 = phi float [ %359, %303 ], [ 1.000000e+00, %296 ]
  %362 = phi float [ 1.000000e+00, %303 ], [ %297, %296 ]
  %363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %298, i32 undef)  ; BufferLoad(srv,index,wot)
  %364 = extractvalue %dx.types.ResRet.i32 %363, 2
  %365 = and i32 %364, 65536
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %387, label %367, !dx.controlflow.hints !40

; <label>:367                                     ; preds = %360
  %368 = add i32 %262, 32
  %369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %370 = extractvalue %dx.types.ResRet.i32 %369, 2
  %371 = and i32 %370, 16777215
  %372 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %373 = add i32 %371, 0
  %374 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %373, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %375 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %374, i32 0)  ; GetDimensions(handle,mipLevel)
  %376 = extractvalue %dx.types.Dimensions %375, 3
  %377 = sub nsw i32 %376, %273
  %378 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %377)  ; IMax(a,b)
  %379 = sitofp i32 %378 to float
  %380 = lshr i32 %370, 16
  %381 = and i32 %380, 15
  %382 = uitofp i32 %381 to float
  %383 = call float @dx.op.binary.f32(i32 35, float %382, float %379)  ; FMax(a,b)
  %384 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %374, %dx.types.Handle %372, float %286, float %288, float undef, float undef, i32 0, i32 0, i32 undef, float %383)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %385 = extractvalue %dx.types.ResRet.f32 %384, 0
  %386 = fmul fast float %385, %362
  br label %387

; <label>:387                                     ; preds = %367, %360
  %388 = phi float [ %386, %367 ], [ %362, %360 ]
  %389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %298, i32 undef)  ; BufferLoad(srv,index,wot)
  %390 = extractvalue %dx.types.ResRet.i32 %389, 2
  %391 = and i32 %390, 131072
  %392 = icmp ne i32 %391, 0
  %393 = fcmp fast ogt float %388, 0x3FE0101020000000
  %394 = select i1 %393, float 1.000000e+00, float 0.000000e+00
  %395 = select i1 %392, float %394, float %388
  %396 = fmul fast float %395, %361
  %397 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %398 = extractvalue %dx.types.CBufRet.i32 %397, 3
  %399 = and i32 %398, 2
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %410, label %401, !dx.controlflow.hints !41

; <label>:401                                     ; preds = %387
  %402 = call float @dx.op.unary.f32(i32 7, float %396)  ; Saturate(value)
  %403 = fmul fast float %402, %402
  %404 = fmul fast float %403, %402
  %405 = fmul fast float %402, 6.000000e+00
  %406 = fadd fast float %405, -1.500000e+01
  %407 = fmul fast float %406, %402
  %408 = fadd fast float %407, 1.000000e+01
  %409 = fmul fast float %404, %408
  br label %410

; <label>:410                                     ; preds = %401, %387
  %411 = phi float [ %409, %401 ], [ %396, %387 ]
  %412 = select i1 %256, float %297, float %411
  %413 = and i32 %390, 4194304
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %436, label %415, !dx.controlflow.hints !42

; <label>:415                                     ; preds = %410
  %416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %263, i32 undef)  ; BufferLoad(srv,index,wot)
  %417 = extractvalue %dx.types.ResRet.i32 %416, 2
  %418 = lshr i32 %417, 16
  %419 = call float @dx.op.legacyF16ToF32(i32 131, i32 %418)  ; LegacyF16ToF32(value)
  %420 = extractvalue %dx.types.ResRet.i32 %416, 3
  %421 = call float @dx.op.legacyF16ToF32(i32 131, i32 %420)  ; LegacyF16ToF32(value)
  %422 = fadd fast float %50, -1.000000e+00
  %423 = fdiv fast float %422, %421
  %424 = call float @dx.op.unary.f32(i32 7, float %423)  ; Saturate(value)
  %425 = fmul fast float %419, 8.000000e+00
  %426 = fadd fast float %425, 1.000000e+00
  %427 = fdiv fast float 1.000000e+00, %426
  %428 = call float @dx.op.legacyF16ToF32(i32 131, i32 %417)  ; LegacyF16ToF32(value)
  %429 = fmul fast float %428, %427
  %430 = fdiv fast float 2.500000e+01, %429
  %431 = call float @dx.op.unary.f32(i32 23, float %430)  ; Log(value)
  %432 = fadd fast float %269, %431
  %433 = call float @dx.op.unary.f32(i32 28, float %432)  ; Round_pi(value)
  %434 = fptosi float %433 to i32
  %435 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %434)  ; IMax(a,b)
  br label %436

; <label>:436                                     ; preds = %415, %410
  %437 = phi float [ %427, %415 ], [ 1.000000e+00, %410 ]
  %438 = phi i32 [ %435, %415 ], [ %273, %410 ]
  %439 = phi float [ %424, %415 ], [ 1.000000e+00, %410 ]
  %440 = add i32 %262, 32
  %441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %440, i32 undef)  ; BufferLoad(srv,index,wot)
  %442 = extractvalue %dx.types.ResRet.i32 %441, 1
  %443 = and i32 %442, 16777215
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %679, label %445, !dx.controlflow.hints !43

; <label>:445                                     ; preds = %436
  %446 = fmul fast float %437, %286
  %447 = fmul fast float %437, %288
  %448 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %449 = add i32 %443, 0
  %450 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %449, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %451 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %450, i32 0)  ; GetDimensions(handle,mipLevel)
  %452 = extractvalue %dx.types.Dimensions %451, 3
  %453 = sub nsw i32 %452, %438
  %454 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %453)  ; IMax(a,b)
  %455 = sitofp i32 %454 to float
  %456 = lshr i32 %442, 16
  %457 = and i32 %456, 15
  %458 = uitofp i32 %457 to float
  %459 = call float @dx.op.binary.f32(i32 35, float %458, float %455)  ; FMax(a,b)
  %460 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %450, %dx.types.Handle %448, float %446, float %447, float undef, float undef, i32 0, i32 0, i32 undef, float %459)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %461 = extractvalue %dx.types.ResRet.f32 %460, 0
  %462 = extractvalue %dx.types.ResRet.f32 %460, 1
  %463 = extractvalue %dx.types.ResRet.f32 %460, 2
  %464 = extractvalue %dx.types.ResRet.f32 %460, 3
  %465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %281, i32 undef)  ; BufferLoad(srv,index,wot)
  %466 = extractvalue %dx.types.ResRet.i32 %465, 3
  %467 = and i32 %466, 255
  %468 = uitofp i32 %467 to float
  %469 = lshr i32 %466, 8
  %470 = and i32 %469, 255
  %471 = uitofp i32 %470 to float
  %472 = lshr i32 %466, 16
  %473 = and i32 %472, 255
  %474 = uitofp i32 %473 to float
  %475 = fmul fast float %474, 0x3F70101000000000
  %476 = fmul fast float %468, %461
  %477 = fadd fast float %476, %471
  %478 = fmul fast float %477, 0x3F70101000000000
  %479 = fadd fast float %462, -5.000000e-01
  %480 = fadd fast float %464, -5.000000e-01
  %481 = fmul fast float %475, %479
  %482 = fmul fast float %475, %480
  %483 = fadd fast float %481, 5.000000e-01
  %484 = fadd fast float %482, 5.000000e-01
  %485 = fcmp fast olt float %439, 1.000000e+00
  br i1 %485, label %486, label %661, !dx.controlflow.hints !44

; <label>:486                                     ; preds = %445
  %487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %298, i32 undef)  ; BufferLoad(srv,index,wot)
  %488 = extractvalue %dx.types.ResRet.i32 %487, 2
  %489 = and i32 %488, 4194304
  %490 = icmp eq i32 %489, 0
  br i1 %490, label %592, label %491, !dx.controlflow.hints !45

; <label>:491                                     ; preds = %486
  %492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %440, i32 undef)  ; BufferLoad(srv,index,wot)
  %493 = extractvalue %dx.types.ResRet.i32 %492, 1
  %494 = and i32 %493, 16777215
  %495 = add i32 %494, 0
  %496 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %495, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %497 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %496, i32 0)  ; GetDimensions(handle,mipLevel)
  %498 = extractvalue %dx.types.Dimensions %497, 3
  %499 = sub nsw i32 %498, %273
  %500 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %499)  ; IMax(a,b)
  %501 = sitofp i32 %500 to float
  %502 = lshr i32 %493, 16
  %503 = and i32 %502, 15
  %504 = uitofp i32 %503 to float
  %505 = call float @dx.op.binary.f32(i32 35, float %504, float %501)  ; FMax(a,b)
  %506 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %496, %dx.types.Handle %448, float %286, float %288, float undef, float undef, i32 0, i32 0, i32 undef, float %505)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %507 = extractvalue %dx.types.ResRet.f32 %506, 0
  %508 = extractvalue %dx.types.ResRet.f32 %506, 1
  %509 = extractvalue %dx.types.ResRet.f32 %506, 2
  %510 = extractvalue %dx.types.ResRet.f32 %506, 3
  %511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %281, i32 undef)  ; BufferLoad(srv,index,wot)
  %512 = extractvalue %dx.types.ResRet.i32 %511, 3
  %513 = and i32 %512, 255
  %514 = uitofp i32 %513 to float
  %515 = lshr i32 %512, 8
  %516 = and i32 %515, 255
  %517 = uitofp i32 %516 to float
  %518 = lshr i32 %512, 16
  %519 = and i32 %518, 255
  %520 = uitofp i32 %519 to float
  %521 = fmul fast float %520, 0x3F70101000000000
  %522 = fmul fast float %514, %507
  %523 = fadd fast float %508, -5.000000e-01
  %524 = fadd fast float %510, -5.000000e-01
  %525 = fmul fast float %521, %523
  %526 = fmul fast float %521, %524
  %527 = fadd fast float %525, 5.000000e-01
  %528 = fadd fast float %526, 5.000000e-01
  %529 = fmul fast float %483, 2.000000e+00
  %530 = fadd fast float %529, -1.000000e+00
  %531 = fmul fast float %484, 2.000000e+00
  %532 = fadd fast float %531, -1.000000e+00
  %533 = fadd fast float %530, %532
  %534 = fmul fast float %533, 5.000000e-01
  %535 = fsub fast float %530, %532
  %536 = fmul fast float %535, 5.000000e-01
  %537 = call float @dx.op.unary.f32(i32 6, float %534)  ; FAbs(value)
  %538 = fsub fast float 1.000000e+00, %537
  %539 = call float @dx.op.unary.f32(i32 6, float %536)  ; FAbs(value)
  %540 = fsub fast float %538, %539
  %541 = call float @dx.op.dot3.f32(i32 55, float %534, float %536, float %540, float %534, float %536, float %540)  ; Dot3(ax,ay,az,bx,by,bz)
  %542 = call float @dx.op.unary.f32(i32 25, float %541)  ; Rsqrt(value)
  %543 = fmul fast float %542, %534
  %544 = fmul fast float %542, %536
  %545 = fmul fast float %542, %540
  %546 = fmul fast float %527, 2.000000e+00
  %547 = fadd fast float %546, -1.000000e+00
  %548 = fmul fast float %528, 2.000000e+00
  %549 = fadd fast float %548, -1.000000e+00
  %550 = fadd fast float %547, %549
  %551 = fmul fast float %550, 5.000000e-01
  %552 = fsub fast float %547, %549
  %553 = fmul fast float %552, 5.000000e-01
  %554 = call float @dx.op.unary.f32(i32 6, float %551)  ; FAbs(value)
  %555 = fsub fast float 1.000000e+00, %554
  %556 = call float @dx.op.unary.f32(i32 6, float %553)  ; FAbs(value)
  %557 = fsub fast float %555, %556
  %558 = call float @dx.op.dot3.f32(i32 55, float %551, float %553, float %557, float %551, float %553, float %557)  ; Dot3(ax,ay,az,bx,by,bz)
  %559 = call float @dx.op.unary.f32(i32 25, float %558)  ; Rsqrt(value)
  %560 = fmul fast float %551, %559
  %561 = fmul fast float %553, %559
  %562 = fmul fast float %559, %557
  %563 = fadd fast float %562, -7.500000e-01
  %564 = fmul fast float %563, 4.000000e+00
  %565 = call float @dx.op.unary.f32(i32 7, float %564)  ; Saturate(value)
  %566 = fmul fast float %565, %439
  %567 = fsub fast float 1.000000e+00, %566
  %568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %263, i32 undef)  ; BufferLoad(srv,index,wot)
  %569 = extractvalue %dx.types.ResRet.i32 %568, 3
  %570 = lshr i32 %569, 16
  %571 = call float @dx.op.legacyF16ToF32(i32 131, i32 %570)  ; LegacyF16ToF32(value)
  %572 = fmul fast float %571, %439
  %573 = fadd fast float %572, %567
  %574 = fdiv fast float %567, %573
  %575 = fsub fast float %560, %543
  %576 = fsub fast float %561, %544
  %577 = fsub fast float %562, %545
  %578 = fmul fast float %575, %574
  %579 = fmul fast float %576, %574
  %580 = fmul fast float %574, %577
  %581 = fadd fast float %578, %543
  %582 = fadd fast float %579, %544
  %583 = fadd fast float %580, %545
  %584 = fsub fast float %509, %463
  %585 = fmul fast float %574, %584
  %586 = fadd fast float %585, %463
  %587 = fsub fast float %517, %477
  %588 = fadd fast float %587, %522
  %589 = fmul fast float %588, 0x3F70101000000000
  %590 = fmul fast float %589, %574
  %591 = fadd fast float %590, %478
  br label %679

; <label>:592                                     ; preds = %486
  %593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %440, i32 undef)  ; BufferLoad(srv,index,wot)
  %594 = extractvalue %dx.types.ResRet.i32 %593, 1
  %595 = and i32 %594, 16777215
  %596 = add i32 %595, 0
  %597 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %596, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %598 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %597, i32 0)  ; GetDimensions(handle,mipLevel)
  %599 = extractvalue %dx.types.Dimensions %598, 3
  %600 = sub nsw i32 %599, %273
  %601 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %600)  ; IMax(a,b)
  %602 = sitofp i32 %601 to float
  %603 = lshr i32 %594, 16
  %604 = and i32 %603, 15
  %605 = uitofp i32 %604 to float
  %606 = call float @dx.op.binary.f32(i32 35, float %605, float %602)  ; FMax(a,b)
  %607 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %597, %dx.types.Handle %448, float %286, float %288, float undef, float undef, i32 0, i32 0, i32 undef, float %606)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %608 = extractvalue %dx.types.ResRet.f32 %607, 0
  %609 = extractvalue %dx.types.ResRet.f32 %607, 1
  %610 = extractvalue %dx.types.ResRet.f32 %607, 2
  %611 = extractvalue %dx.types.ResRet.f32 %607, 3
  %612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %281, i32 undef)  ; BufferLoad(srv,index,wot)
  %613 = extractvalue %dx.types.ResRet.i32 %612, 3
  %614 = and i32 %613, 255
  %615 = uitofp i32 %614 to float
  %616 = lshr i32 %613, 8
  %617 = and i32 %616, 255
  %618 = uitofp i32 %617 to float
  %619 = lshr i32 %613, 16
  %620 = and i32 %619, 255
  %621 = uitofp i32 %620 to float
  %622 = fmul fast float %621, 0x3F70101000000000
  %623 = fmul fast float %615, %608
  %624 = fadd fast float %623, %618
  %625 = fadd fast float %609, -5.000000e-01
  %626 = fadd fast float %611, -5.000000e-01
  %627 = fmul fast float %622, %625
  %628 = fmul fast float %622, %626
  %629 = fadd fast float %627, 5.000000e-01
  %630 = fadd fast float %628, 5.000000e-01
  %631 = fsub fast float %477, %624
  %632 = fsub fast float %483, %629
  %633 = fsub fast float %463, %610
  %634 = fsub fast float %484, %630
  %635 = fmul fast float %631, %439
  %636 = fmul fast float %632, %439
  %637 = fmul fast float %633, %439
  %638 = fmul fast float %634, %439
  %639 = fadd fast float %635, %624
  %640 = fmul fast float %639, 0x3F70101000000000
  %641 = fadd fast float %636, %629
  %642 = fadd fast float %637, %610
  %643 = fadd fast float %638, %630
  %644 = fmul fast float %641, 2.000000e+00
  %645 = fadd fast float %644, -1.000000e+00
  %646 = fmul fast float %643, 2.000000e+00
  %647 = fadd fast float %646, -1.000000e+00
  %648 = fadd fast float %645, %647
  %649 = fmul fast float %648, 5.000000e-01
  %650 = fsub fast float %645, %647
  %651 = fmul fast float %650, 5.000000e-01
  %652 = call float @dx.op.unary.f32(i32 6, float %649)  ; FAbs(value)
  %653 = fsub fast float 1.000000e+00, %652
  %654 = call float @dx.op.unary.f32(i32 6, float %651)  ; FAbs(value)
  %655 = fsub fast float %653, %654
  %656 = call float @dx.op.dot3.f32(i32 55, float %649, float %651, float %655, float %649, float %651, float %655)  ; Dot3(ax,ay,az,bx,by,bz)
  %657 = call float @dx.op.unary.f32(i32 25, float %656)  ; Rsqrt(value)
  %658 = fmul fast float %649, %657
  %659 = fmul fast float %651, %657
  %660 = fmul fast float %657, %655
  br label %679

; <label>:661                                     ; preds = %445
  %662 = fmul fast float %483, 2.000000e+00
  %663 = fadd fast float %662, -1.000000e+00
  %664 = fmul fast float %484, 2.000000e+00
  %665 = fadd fast float %664, -1.000000e+00
  %666 = fadd fast float %663, %665
  %667 = fmul fast float %666, 5.000000e-01
  %668 = fsub fast float %663, %665
  %669 = fmul fast float %668, 5.000000e-01
  %670 = call float @dx.op.unary.f32(i32 6, float %667)  ; FAbs(value)
  %671 = fsub fast float 1.000000e+00, %670
  %672 = call float @dx.op.unary.f32(i32 6, float %669)  ; FAbs(value)
  %673 = fsub fast float %671, %672
  %674 = call float @dx.op.dot3.f32(i32 55, float %667, float %669, float %673, float %667, float %669, float %673)  ; Dot3(ax,ay,az,bx,by,bz)
  %675 = call float @dx.op.unary.f32(i32 25, float %674)  ; Rsqrt(value)
  %676 = fmul fast float %675, %667
  %677 = fmul fast float %675, %669
  %678 = fmul fast float %675, %673
  br label %679

; <label>:679                                     ; preds = %661, %592, %491, %436
  %680 = phi float [ %581, %491 ], [ %658, %592 ], [ %676, %661 ], [ 0.000000e+00, %436 ]
  %681 = phi float [ %582, %491 ], [ %659, %592 ], [ %677, %661 ], [ 0.000000e+00, %436 ]
  %682 = phi float [ %583, %491 ], [ %660, %592 ], [ %678, %661 ], [ 1.000000e+00, %436 ]
  %683 = phi float [ %586, %491 ], [ %642, %592 ], [ %463, %661 ], [ 1.000000e+00, %436 ]
  %684 = phi float [ %591, %491 ], [ %640, %592 ], [ %478, %661 ], [ 0x3FD6666660000000, %436 ]
  %685 = fmul fast float %680, %276
  %686 = call float @dx.op.tertiary.f32(i32 46, float %681, float %280, float %685)  ; FMad(a,b,c)
  %687 = fmul fast float %680, %278
  %688 = call float @dx.op.tertiary.f32(i32 46, float %681, float %284, float %687)  ; FMad(a,b,c)
  %689 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %263, i32 undef)  ; BufferLoad(srv,index,wot)
  %690 = extractvalue %dx.types.ResRet.i32 %689, 2
  %691 = call float @dx.op.legacyF16ToF32(i32 131, i32 %690)  ; LegacyF16ToF32(value)
  %692 = fdiv fast float %686, %691
  %693 = fdiv fast float %688, %691
  %694 = xor i1 %256, true
  %695 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %696 = extractvalue %dx.types.CBufRet.i32 %695, 3
  %697 = and i32 %696, 1
  %698 = icmp ne i32 %697, 0
  %699 = and i1 %698, %694
  br i1 %699, label %700, label %712, !dx.controlflow.hints !46

; <label>:700                                     ; preds = %679
  %701 = call float @dx.op.unary.f32(i32 7, float %682)  ; Saturate(value)
  %702 = fmul fast float %701, 0x3FECCCCCC0000000
  %703 = fsub fast float 1.000000e+00, %702
  %704 = fmul fast float %703, %412
  %705 = fsub fast float 1.000000e+00, %412
  %706 = call float @dx.op.unary.f32(i32 7, float %249)  ; Saturate(value)
  %707 = fmul fast float %706, 0x3FECCCCCC0000000
  %708 = fsub fast float 1.000000e+00, %707
  %709 = fmul fast float %708, %705
  %710 = fadd fast float %709, %704
  %711 = fdiv fast float %704, %710
  br label %712

; <label>:712                                     ; preds = %700, %679
  %713 = phi float [ %711, %700 ], [ %412, %679 ]
  %714 = fsub fast float %692, %247
  %715 = fsub fast float %693, %248
  %716 = fsub fast float %682, %249
  %717 = fmul fast float %713, %714
  %718 = fmul fast float %713, %715
  %719 = fmul fast float %713, %716
  %720 = fadd fast float %717, %247
  %721 = fadd fast float %718, %248
  %722 = fadd fast float %719, %249
  %723 = fsub fast float %683, %246
  %724 = fmul fast float %713, %723
  %725 = fadd fast float %724, %246
  %726 = fsub fast float %684, %245
  %727 = fmul fast float %713, %726
  %728 = fadd fast float %727, %245
  %729 = fmul fast float %437, %286
  %730 = fmul fast float %437, %288
  %731 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %440, i32 undef)  ; BufferLoad(srv,index,wot)
  %732 = extractvalue %dx.types.ResRet.i32 %731, 0
  %733 = and i32 %732, 16777215
  %734 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %735 = add i32 %733, 0
  %736 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %735, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %737 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %736, i32 0)  ; GetDimensions(handle,mipLevel)
  %738 = extractvalue %dx.types.Dimensions %737, 3
  %739 = sub nsw i32 %738, %438
  %740 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %739)  ; IMax(a,b)
  %741 = sitofp i32 %740 to float
  %742 = lshr i32 %732, 16
  %743 = and i32 %742, 15
  %744 = uitofp i32 %743 to float
  %745 = call float @dx.op.binary.f32(i32 35, float %744, float %741)  ; FMax(a,b)
  %746 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %736, %dx.types.Handle %734, float %729, float %730, float undef, float undef, i32 0, i32 0, i32 undef, float %745)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %747 = extractvalue %dx.types.ResRet.f32 %746, 0
  %748 = extractvalue %dx.types.ResRet.f32 %746, 1
  %749 = extractvalue %dx.types.ResRet.f32 %746, 2
  %750 = extractvalue %dx.types.ResRet.f32 %746, 3
  %751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %298, i32 undef)  ; BufferLoad(srv,index,wot)
  %752 = extractvalue %dx.types.ResRet.i32 %751, 0
  %753 = lshr i32 %752, 16
  %754 = and i32 %753, 255
  %755 = uitofp i32 %754 to float
  %756 = lshr i32 %752, 24
  %757 = uitofp i32 %756 to float
  %758 = fmul fast float %755, %750
  %759 = fadd fast float %758, %757
  %760 = fcmp fast olt float %439, 1.000000e+00
  br i1 %760, label %761, label %802, !dx.controlflow.hints !47

; <label>:761                                     ; preds = %712
  %762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %440, i32 undef)  ; BufferLoad(srv,index,wot)
  %763 = extractvalue %dx.types.ResRet.i32 %762, 0
  %764 = and i32 %763, 16777215
  %765 = add i32 %764, 0
  %766 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %765, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %767 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %766, i32 0)  ; GetDimensions(handle,mipLevel)
  %768 = extractvalue %dx.types.Dimensions %767, 3
  %769 = sub nsw i32 %768, %273
  %770 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %769)  ; IMax(a,b)
  %771 = sitofp i32 %770 to float
  %772 = lshr i32 %763, 16
  %773 = and i32 %772, 15
  %774 = uitofp i32 %773 to float
  %775 = call float @dx.op.binary.f32(i32 35, float %774, float %771)  ; FMax(a,b)
  %776 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %766, %dx.types.Handle %734, float %286, float %288, float undef, float undef, i32 0, i32 0, i32 undef, float %775)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %777 = extractvalue %dx.types.ResRet.f32 %776, 0
  %778 = extractvalue %dx.types.ResRet.f32 %776, 1
  %779 = extractvalue %dx.types.ResRet.f32 %776, 2
  %780 = extractvalue %dx.types.ResRet.f32 %776, 3
  %781 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %298, i32 undef)  ; BufferLoad(srv,index,wot)
  %782 = extractvalue %dx.types.ResRet.i32 %781, 0
  %783 = lshr i32 %782, 16
  %784 = and i32 %783, 255
  %785 = uitofp i32 %784 to float
  %786 = lshr i32 %782, 24
  %787 = uitofp i32 %786 to float
  %788 = fmul fast float %785, %780
  %789 = fadd fast float %788, %787
  %790 = fsub fast float %747, %777
  %791 = fsub fast float %748, %778
  %792 = fsub fast float %749, %779
  %793 = fsub fast float %759, %789
  %794 = fmul fast float %790, %439
  %795 = fmul fast float %791, %439
  %796 = fmul fast float %792, %439
  %797 = fmul fast float %793, %439
  %798 = fadd fast float %794, %777
  %799 = fadd fast float %795, %778
  %800 = fadd fast float %796, %779
  %801 = fadd fast float %797, %789
  br label %802

; <label>:802                                     ; preds = %761, %712
  %803 = phi float [ %798, %761 ], [ %747, %712 ]
  %804 = phi float [ %799, %761 ], [ %748, %712 ]
  %805 = phi float [ %800, %761 ], [ %749, %712 ]
  %806 = phi float [ %801, %761 ], [ %759, %712 ]
  %807 = fmul float %806, 0x3F70101000000000
  %808 = call float @dx.op.unary.f32(i32 24, float %803)  ; Sqrt(value)
  %809 = call float @dx.op.unary.f32(i32 24, float %804)  ; Sqrt(value)
  %810 = call float @dx.op.unary.f32(i32 24, float %805)  ; Sqrt(value)
  %811 = fmul fast float %808, %808
  %812 = fmul fast float %809, %809
  %813 = fmul fast float %810, %810
  %814 = fsub fast float %811, %251
  %815 = fsub fast float %812, %252
  %816 = fsub fast float %813, %253
  %817 = fsub fast float %807, %254
  %818 = fmul fast float %814, %713
  %819 = fmul fast float %815, %713
  %820 = fmul fast float %816, %713
  %821 = fmul fast float %817, %713
  %822 = fadd fast float %818, %251
  %823 = fadd fast float %819, %252
  %824 = fadd fast float %820, %253
  %825 = fadd fast float %821, %254
  %826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %440, i32 undef)  ; BufferLoad(srv,index,wot)
  %827 = extractvalue %dx.types.ResRet.i32 %826, 0
  %828 = lshr i32 %827, 24
  %829 = uitofp i32 %828 to float
  %830 = fmul fast float %829, 0x3F70101020000000
  %831 = fsub fast float %830, %244
  %832 = fmul fast float %831, %713
  %833 = fadd fast float %832, %244
  %834 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %298, i32 undef)  ; BufferLoad(srv,index,wot)
  %835 = extractvalue %dx.types.ResRet.i32 %834, 2
  %836 = and i32 %835, 8
  %837 = icmp eq i32 %836, 0
  br i1 %837, label %931, label %838, !dx.controlflow.hints !48

; <label>:838                                     ; preds = %802
  %839 = add i32 %262, 48
  %840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %839, i32 undef)  ; BufferLoad(srv,index,wot)
  %841 = extractvalue %dx.types.ResRet.i32 %840, 1
  %842 = and i32 %841, 16777215
  %843 = add i32 %842, 0
  %844 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %843, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %845 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %844, i32 0)  ; GetDimensions(handle,mipLevel)
  %846 = extractvalue %dx.types.Dimensions %845, 3
  %847 = sub nsw i32 %846, %438
  %848 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %847)  ; IMax(a,b)
  %849 = sitofp i32 %848 to float
  %850 = lshr i32 %841, 16
  %851 = and i32 %850, 15
  %852 = uitofp i32 %851 to float
  %853 = call float @dx.op.binary.f32(i32 35, float %852, float %849)  ; FMax(a,b)
  %854 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %844, %dx.types.Handle %734, float %729, float %730, float undef, float undef, i32 0, i32 0, i32 undef, float %853)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %855 = extractvalue %dx.types.ResRet.f32 %854, 0
  %856 = extractvalue %dx.types.ResRet.f32 %854, 1
  %857 = extractvalue %dx.types.ResRet.f32 %854, 2
  br i1 %760, label %858, label %877, !dx.controlflow.hints !49

; <label>:858                                     ; preds = %838
  %859 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %839, i32 undef)  ; BufferLoad(srv,index,wot)
  %860 = extractvalue %dx.types.ResRet.i32 %859, 1
  %861 = and i32 %860, 16777215
  %862 = add i32 %861, 0
  %863 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %862, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %864 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %863, i32 0)  ; GetDimensions(handle,mipLevel)
  %865 = extractvalue %dx.types.Dimensions %864, 3
  %866 = sub nsw i32 %865, %273
  %867 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %866)  ; IMax(a,b)
  %868 = sitofp i32 %867 to float
  %869 = lshr i32 %860, 16
  %870 = and i32 %869, 15
  %871 = uitofp i32 %870 to float
  %872 = call float @dx.op.binary.f32(i32 35, float %871, float %868)  ; FMax(a,b)
  %873 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %863, %dx.types.Handle %734, float %286, float %288, float undef, float undef, i32 0, i32 0, i32 undef, float %872)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %874 = extractvalue %dx.types.ResRet.f32 %873, 0
  %875 = extractvalue %dx.types.ResRet.f32 %873, 1
  %876 = extractvalue %dx.types.ResRet.f32 %873, 2
  br label %877

; <label>:877                                     ; preds = %858, %838
  %878 = phi float [ %874, %858 ], [ %855, %838 ]
  %879 = phi float [ %875, %858 ], [ %856, %838 ]
  %880 = phi float [ %876, %858 ], [ %857, %838 ]
  %881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %298, i32 undef)  ; BufferLoad(srv,index,wot)
  %882 = extractvalue %dx.types.ResRet.i32 %881, 0
  %883 = call float @dx.op.legacyF16ToF32(i32 131, i32 %882)  ; LegacyF16ToF32(value)
  %884 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %885 = extractvalue %dx.types.CBufRet.i32 %884, 1
  %886 = icmp eq i32 %885, 2
  br i1 %886, label %887, label %931, !dx.controlflow.hints !50

; <label>:887                                     ; preds = %877
  %888 = call float @dx.op.binary.f32(i32 36, float %822, float 0x3FEFAE1480000000)  ; FMin(a,b)
  %889 = call float @dx.op.binary.f32(i32 36, float %823, float 0x3FEFAE1480000000)  ; FMin(a,b)
  %890 = call float @dx.op.binary.f32(i32 36, float %824, float 0x3FEFAE1480000000)  ; FMin(a,b)
  %891 = fsub fast float 1.000000e+00, %888
  %892 = fsub fast float 1.000000e+00, %889
  %893 = fsub fast float 1.000000e+00, %890
  %894 = call float @dx.op.unary.f32(i32 23, float %891)  ; Log(value)
  %895 = call float @dx.op.unary.f32(i32 23, float %892)  ; Log(value)
  %896 = call float @dx.op.unary.f32(i32 23, float %893)  ; Log(value)
  %897 = call float @dx.op.binary.f32(i32 36, float %878, float 0x3FEFAE1480000000)  ; FMin(a,b)
  %898 = call float @dx.op.binary.f32(i32 36, float %879, float 0x3FEFAE1480000000)  ; FMin(a,b)
  %899 = call float @dx.op.binary.f32(i32 36, float %880, float 0x3FEFAE1480000000)  ; FMin(a,b)
  %900 = fsub fast float 1.000000e+00, %897
  %901 = fsub fast float 1.000000e+00, %898
  %902 = fsub fast float 1.000000e+00, %899
  %903 = call float @dx.op.unary.f32(i32 23, float %900)  ; Log(value)
  %904 = call float @dx.op.unary.f32(i32 23, float %901)  ; Log(value)
  %905 = call float @dx.op.unary.f32(i32 23, float %902)  ; Log(value)
  %906 = fmul fast float %411, %903
  %907 = fmul fast float %411, %904
  %908 = fmul fast float %411, %905
  %909 = fsub fast float -0.000000e+00, %894
  %910 = fsub fast float %909, %906
  %911 = fsub fast float -0.000000e+00, %895
  %912 = fsub fast float %911, %907
  %913 = fsub fast float -0.000000e+00, %896
  %914 = fsub fast float %913, %908
  %915 = fsub fast float -0.000000e+00, %910
  %916 = fsub fast float -0.000000e+00, %912
  %917 = fsub fast float -0.000000e+00, %914
  %918 = call float @dx.op.unary.f32(i32 21, float %915)  ; Exp(value)
  %919 = call float @dx.op.unary.f32(i32 21, float %916)  ; Exp(value)
  %920 = call float @dx.op.unary.f32(i32 21, float %917)  ; Exp(value)
  %921 = fsub fast float 1.000000e+00, %918
  %922 = fsub fast float 1.000000e+00, %919
  %923 = fsub fast float 1.000000e+00, %920
  %924 = call float @dx.op.dot3.f32(i32 55, float %921, float %922, float %923, float %921, float %922, float %923)  ; Dot3(ax,ay,az,bx,by,bz)
  %925 = call float @dx.op.dot3.f32(i32 55, float %878, float %879, float %880, float %878, float %879, float %880)  ; Dot3(ax,ay,az,bx,by,bz)
  %926 = fmul fast float %925, %411
  %927 = fcmp fast une float %924, 0.000000e+00
  %928 = fdiv fast float %926, %924
  %929 = select i1 %927, float %928, float 0.000000e+00
  %930 = fmul fast float %929, %883
  br label %931

; <label>:931                                     ; preds = %887, %877, %802
  %932 = phi float [ %921, %887 ], [ %822, %877 ], [ %822, %802 ]
  %933 = phi float [ %922, %887 ], [ %823, %877 ], [ %823, %802 ]
  %934 = phi float [ %923, %887 ], [ %824, %877 ], [ %824, %802 ]
  %935 = phi float [ %930, %887 ], [ %883, %877 ], [ 0.000000e+00, %802 ]
  %936 = fsub fast float %935, %250
  %937 = fmul fast float %936, %411
  %938 = fadd fast float %937, %250
  %939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %440, i32 undef)  ; BufferLoad(srv,index,wot)
  %940 = extractvalue %dx.types.ResRet.i32 %939, 2
  %941 = lshr i32 %940, 24
  %942 = uitofp i32 %941 to float
  %943 = extractvalue %dx.types.ResRet.i32 %939, 1
  %944 = lshr i32 %943, 24
  %945 = uitofp i32 %944 to float
  %946 = call float @dx.op.dot3.f32(i32 55, float %811, float %812, float %813, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %947 = fmul fast float %942, %946
  %948 = fadd fast float %947, %945
  %949 = fmul fast float %948, 0x3F70101020000000
  %950 = call float @dx.op.unary.f32(i32 7, float %949)  ; Saturate(value)
  %951 = fsub fast float %950, %243
  %952 = fmul fast float %951, %713
  %953 = fadd fast float %952, %243
  %954 = icmp eq i32 %255, %259
  br i1 %954, label %955, label %242, !llvm.loop !51

; <label>:955                                     ; preds = %931
  br label %956

; <label>:956                                     ; preds = %955, %201
  %957 = phi float [ 0.000000e+00, %201 ], [ %953, %955 ]
  %958 = phi float [ 0.000000e+00, %201 ], [ %833, %955 ]
  %959 = phi float [ 0.000000e+00, %201 ], [ %728, %955 ]
  %960 = phi float [ 0.000000e+00, %201 ], [ %725, %955 ]
  %961 = phi float [ 0.000000e+00, %201 ], [ %720, %955 ]
  %962 = phi float [ 0.000000e+00, %201 ], [ %721, %955 ]
  %963 = phi float [ 0.000000e+00, %201 ], [ %722, %955 ]
  %964 = phi float [ 0.000000e+00, %201 ], [ %938, %955 ]
  %965 = phi float [ 0.000000e+00, %201 ], [ %932, %955 ]
  %966 = phi float [ 0.000000e+00, %201 ], [ %933, %955 ]
  %967 = phi float [ 0.000000e+00, %201 ], [ %934, %955 ]
  %968 = phi float [ 0.000000e+00, %201 ], [ %825, %955 ]
  %969 = call float @dx.op.dot3.f32(i32 55, float %961, float %962, float %963, float %961, float %962, float %963)  ; Dot3(ax,ay,az,bx,by,bz)
  %970 = call float @dx.op.unary.f32(i32 25, float %969)  ; Rsqrt(value)
  %971 = fmul fast float %970, %961
  %972 = fmul fast float %970, %962
  %973 = fmul fast float %970, %963
  %974 = call float @dx.op.unary.f32(i32 6, float %971)  ; FAbs(value)
  %975 = call float @dx.op.unary.f32(i32 6, float %972)  ; FAbs(value)
  %976 = fadd fast float %973, %974
  %977 = fadd fast float %976, %975
  %978 = fdiv fast float 1.000000e+00, %977
  %979 = fadd fast float %962, %961
  %980 = fsub fast float %961, %962
  %981 = fmul fast float %979, 5.000000e-01
  %982 = fmul fast float %981, %970
  %983 = fmul fast float %982, %978
  %984 = fadd fast float %983, 5.000000e-01
  %985 = fmul fast float %980, 5.000000e-01
  %986 = fmul fast float %985, %970
  %987 = fmul fast float %986, %978
  %988 = fadd fast float %987, 5.000000e-01
  br label %989

; <label>:989                                     ; preds = %956, %198
  %990 = phi float [ %957, %956 ], [ 0.000000e+00, %198 ]
  %991 = phi float [ %958, %956 ], [ 0.000000e+00, %198 ]
  %992 = phi float [ %964, %956 ], [ 0.000000e+00, %198 ]
  %993 = phi float [ %959, %956 ], [ 0.000000e+00, %198 ]
  %994 = phi float [ %984, %956 ], [ 0.000000e+00, %198 ]
  %995 = phi float [ %960, %956 ], [ 0.000000e+00, %198 ]
  %996 = phi float [ %988, %956 ], [ 0.000000e+00, %198 ]
  %997 = phi float [ %965, %956 ], [ 0.000000e+00, %198 ]
  %998 = phi float [ %966, %956 ], [ 0.000000e+00, %198 ]
  %999 = phi float [ %967, %956 ], [ 0.000000e+00, %198 ]
  %1000 = phi float [ %968, %956 ], [ 0.000000e+00, %198 ]
  br i1 %200, label %1001, label %1043, !dx.controlflow.hints !53

; <label>:1001                                    ; preds = %989
  %1002 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %1003 = extractvalue %dx.types.CBufRet.i32 %1002, 1
  %1004 = icmp eq i32 %1003, 5
  %1005 = fcmp fast ole float %997, 0x3F69A5C380000000
  %1006 = fcmp fast ole float %998, 0x3F69A5C380000000
  %1007 = fcmp fast ole float %999, 0x3F69A5C380000000
  %1008 = fmul fast float %997, 0x4029D70A40000000
  %1009 = fmul fast float %998, 0x4029D70A40000000
  %1010 = fmul fast float %999, 0x4029D70A40000000
  %1011 = call float @dx.op.unary.f32(i32 23, float %997)  ; Log(value)
  %1012 = call float @dx.op.unary.f32(i32 23, float %998)  ; Log(value)
  %1013 = call float @dx.op.unary.f32(i32 23, float %999)  ; Log(value)
  %1014 = fmul fast float %1011, 0x3FDAAAAAA0000000
  %1015 = fmul fast float %1012, 0x3FDAAAAAA0000000
  %1016 = fmul fast float %1013, 0x3FDAAAAAA0000000
  %1017 = call float @dx.op.unary.f32(i32 21, float %1014)  ; Exp(value)
  %1018 = call float @dx.op.unary.f32(i32 21, float %1015)  ; Exp(value)
  %1019 = call float @dx.op.unary.f32(i32 21, float %1016)  ; Exp(value)
  %1020 = fmul fast float %1017, 0x3FF0E147A0000000
  %1021 = fmul fast float %1018, 0x3FF0E147A0000000
  %1022 = fmul fast float %1019, 0x3FF0E147A0000000
  %1023 = fadd fast float %1020, 0xBFAC28F5C0000000
  %1024 = fadd fast float %1021, 0xBFAC28F5C0000000
  %1025 = fadd fast float %1022, 0xBFAC28F5C0000000
  %1026 = select i1 %1005, float %1008, float %1023
  %1027 = select i1 %1006, float %1009, float %1024
  %1028 = select i1 %1007, float %1010, float %1025
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %52, i32 %9, i32 undef, float %1026, float %1027, float %1028, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br i1 %1004, label %1043, label %1029, !dx.controlflow.hints !54

; <label>:1029                                    ; preds = %1001
  %1030 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %1031 = extractvalue %dx.types.CBufRet.i32 %1030, 1
  switch i32 %1031, label %1041 [
    i32 1, label %1032
    i32 2, label %1033
    i32 3, label %1040
  ], !dx.controlflow.hints !55

; <label>:1032                                    ; preds = %1029
  br label %1041

; <label>:1033                                    ; preds = %1029
  %1034 = fcmp fast une float %992, 0.000000e+00
  %1035 = call float @dx.op.unary.f32(i32 23, float %992)  ; Log(value)
  %1036 = fadd fast float %1035, 1.600000e+01
  %1037 = fmul fast float %1036, 3.125000e-02
  %1038 = call float @dx.op.unary.f32(i32 7, float %1037)  ; Saturate(value)
  %1039 = select i1 %1034, float %1038, float 0.000000e+00
  br label %1041

; <label>:1040                                    ; preds = %1029
  br label %1041

; <label>:1041                                    ; preds = %1040, %1033, %1032, %1029
  %1042 = phi float [ 0.000000e+00, %1029 ], [ %990, %1040 ], [ %1039, %1033 ], [ %991, %1032 ]
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %52, i32 %9, i32 undef, float %994, float %996, float %995, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %52, i32 %9, i32 undef, float %1000, float %993, float %1042, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1043

; <label>:1043                                    ; preds = %1041, %1001, %989
  ret void

; <label>:1044                                    ; preds = %1073, %193
  %1045 = phi i32 [ %1050, %1073 ], [ %35, %193 ]
  %1046 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1045)  ; FirstbitLo(value)
  %1047 = and i32 %1046, 31
  %1048 = shl i32 1, %1047
  %1049 = xor i32 %1048, -1
  %1050 = and i32 %1045, %1049
  %1051 = add i32 %1046, 32
  %1052 = mul i32 %1051, 3
  %1053 = add i32 %1052, 30
  %1054 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 %1053)  ; CBufferLoadLegacy(handle,regIndex)
  %1055 = extractvalue %dx.types.CBufRet.i32 %1054, 1
  %1056 = bitcast i32 %1055 to float
  %1057 = extractvalue %dx.types.CBufRet.i32 %1054, 2
  %1058 = bitcast i32 %1057 to float
  %1059 = fsub fast float %59, %1056
  %1060 = fsub fast float %60, %1058
  %1061 = add i32 %1052, 32
  %1062 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 %1061)  ; CBufferLoadLegacy(handle,regIndex)
  %1063 = extractvalue %dx.types.CBufRet.i32 %1062, 1
  %1064 = and i32 %1063, 1048575
  %1065 = uitofp i32 %1064 to float
  %1066 = fcmp fast olt float %1059, 0.000000e+00
  %1067 = fcmp fast olt float %1060, 0.000000e+00
  %1068 = or i1 %1066, %1067
  %1069 = fcmp fast ogt float %1059, %1065
  %1070 = fcmp fast ogt float %1060, %1065
  %1071 = or i1 %1069, %1070
  %1072 = or i1 %1068, %1071
  br i1 %1072, label %1073, label %195, !dx.controlflow.hints !36

; <label>:1073                                    ; preds = %1044
  %1074 = icmp eq i32 %1050, 0
  br i1 %1074, label %195, label %1044
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
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

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
!4 = !{!5, !9, !13, !15}
!5 = !{!6, !8}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 16, i32 1, i32 11, i32 0, null}
!9 = !{!10, !11, !12}
!10 = !{i32 0, %"class.RWTexture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!11 = !{i32 1, %"class.RWTexture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!12 = !{i32 2, %"class.RWTexture2D<vector<float, 4> >"* undef, !"", i32 0, i32 4, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!13 = !{!14}
!14 = !{i32 0, %GfxVirtualTexturingComposite* undef, !"", i32 0, i32 0, i32 1, i32 4208, null}
!15 = !{!16, !17, !18}
!16 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!17 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!18 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!19 = !{void ()* @cs_compose_to_scratch, !"cs_compose_to_scratch", null, !4, !20}
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
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !52}
!52 = !{!"llvm.loop.unroll.disable"}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 1}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}

