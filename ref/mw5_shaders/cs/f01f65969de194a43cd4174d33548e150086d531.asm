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
; shader hash: e34eb878e7dfa038441fa5ca1ef7cc6d
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
;                                   texture     f32          2d      T3            t10     1
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

define void @cs_compose_displacement_to_scratch_with_cutout_ompv() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
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
  %16 = add nuw nsw i32 %15, 253
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
  %29 = load i32, i32* %28, align 4, !tbaa !23, !noalias !27
  %30 = and i32 %29, 255
  %31 = or i32 %27, 1
  %32 = getelementptr [4 x i32], [4 x i32]* %13, i32 0, i32 %31
  %33 = load i32, i32* %32, align 4, !tbaa !23, !noalias !27
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
  br i1 %61, label %63, label %62, !dx.controlflow.hints !34

; <label>:62                                      ; preds = %0
  br label %227

; <label>:63                                      ; preds = %0
  br label %64

; <label>:64                                      ; preds = %221, %63
  %65 = phi i32 [ %222, %221 ], [ -1, %63 ]
  %66 = phi i32 [ %223, %221 ], [ 0, %63 ]
  %67 = phi float [ %224, %221 ], [ -1.000000e+09, %63 ]
  %68 = phi i32 [ %34, %221 ], [ %33, %63 ]
  %69 = phi i32 [ %225, %221 ], [ 0, %63 ]
  %70 = icmp eq i32 %68, 0
  br i1 %70, label %221, label %71

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
  %86 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 %85)  ; CBufferLoadLegacy(handle,regIndex)
  %87 = extractvalue %dx.types.CBufRet.i32 %86, 1
  %88 = bitcast i32 %87 to float
  %89 = extractvalue %dx.types.CBufRet.i32 %86, 2
  %90 = bitcast i32 %89 to float
  %91 = fsub fast float %57, %88
  %92 = fsub fast float %58, %90
  %93 = add i32 %84, 32
  %94 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 %93)  ; CBufferLoadLegacy(handle,regIndex)
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
  br i1 %104, label %105, label %110, !dx.controlflow.hints !35

; <label>:105                                     ; preds = %219, %173, %171, %72
  %106 = phi i32 [ %73, %72 ], [ %112, %171 ], [ %83, %219 ], [ %112, %173 ]
  %107 = phi i32 [ %74, %72 ], [ %113, %171 ], [ %113, %219 ], [ %113, %173 ]
  %108 = phi float [ %75, %72 ], [ %75, %171 ], [ %217, %219 ], [ %75, %173 ]
  %109 = icmp eq i32 %81, 0
  br i1 %109, label %220, label %72

; <label>:110                                     ; preds = %72
  %111 = icmp ne i32 %74, 0
  %112 = select i1 %111, i32 %73, i32 %83
  %113 = select i1 %111, i32 %74, i32 1
  %114 = add i32 %84, 31
  %115 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 %114)  ; CBufferLoadLegacy(handle,regIndex)
  %116 = extractvalue %dx.types.CBufRet.i32 %115, 2
  %117 = and i32 %116, 134217728
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %170, label %119, !dx.controlflow.hints !36

; <label>:119                                     ; preds = %110
  %120 = and i32 %116, 16777215
  %121 = add i32 %120, 0
  %122 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %121, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %123 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 %85)  ; CBufferLoadLegacy(handle,regIndex)
  %124 = extractvalue %dx.types.CBufRet.i32 %123, 1
  %125 = bitcast i32 %124 to float
  %126 = extractvalue %dx.types.CBufRet.i32 %123, 2
  %127 = bitcast i32 %126 to float
  %128 = fsub fast float %57, %125
  %129 = fsub fast float %58, %127
  %130 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 %93)  ; CBufferLoadLegacy(handle,regIndex)
  %131 = extractvalue %dx.types.CBufRet.i32 %130, 1
  %132 = and i32 %131, 1048575
  %133 = uitofp i32 %132 to float
  %134 = fdiv fast float %128, %133
  %135 = fdiv fast float %129, %133
  %136 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 %114)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.i32 %136, 2
  %138 = lshr i32 %137, 24
  %139 = and i32 %138, 7
  %140 = or i32 %139, 8
  %141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 %140)  ; CBufferLoadLegacy(handle,regIndex)
  %142 = extractvalue %dx.types.CBufRet.f32 %141, 0
  %143 = extractvalue %dx.types.CBufRet.f32 %141, 2
  %144 = fdiv fast float 5.000000e-01, %142
  %145 = fmul fast float %144, 2.000000e+00
  %146 = fsub fast float 1.000000e+00, %145
  %147 = fmul fast float %146, %134
  %148 = fmul fast float %146, %135
  %149 = fadd fast float %147, %144
  %150 = fadd fast float %148, %144
  %151 = fmul fast float %142, %143
  %152 = fmul fast float %151, %149
  %153 = fmul fast float %151, %150
  %154 = fadd fast float %152, -5.000000e-01
  %155 = fadd fast float %153, -5.000000e-01
  %156 = fptoui float %154 to i32
  %157 = fptoui float %155 to i32
  %158 = lshr i32 %156, 3
  %159 = lshr i32 %157, 2
  %160 = shl nuw i32 %158, 3
  %161 = sub i32 %156, %160
  %162 = shl i32 %157, 3
  %163 = add i32 %162, %161
  %164 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %122, i32 0, i32 %158, i32 %159, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %165 = extractvalue %dx.types.ResRet.i32 %164, 0
  %166 = and i32 %163, 31
  %167 = shl i32 1, %166
  %168 = and i32 %167, %165
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %171, label %170, !dx.controlflow.hints !37

; <label>:170                                     ; preds = %119, %110
  br label %171

; <label>:171                                     ; preds = %170, %119
  %172 = phi i1 [ false, %170 ], [ true, %119 ]
  br i1 %172, label %105, label %173, !dx.controlflow.hints !38

; <label>:173                                     ; preds = %171
  %174 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 %85)  ; CBufferLoadLegacy(handle,regIndex)
  %175 = extractvalue %dx.types.CBufRet.i32 %174, 1
  %176 = bitcast i32 %175 to float
  %177 = extractvalue %dx.types.CBufRet.i32 %174, 2
  %178 = bitcast i32 %177 to float
  %179 = fsub fast float %57, %176
  %180 = fsub fast float %58, %178
  %181 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 %93)  ; CBufferLoadLegacy(handle,regIndex)
  %182 = extractvalue %dx.types.CBufRet.i32 %181, 1
  %183 = and i32 %182, 1048575
  %184 = uitofp i32 %183 to float
  %185 = fdiv fast float %179, %184
  %186 = fdiv fast float %180, %184
  %187 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 %114)  ; CBufferLoadLegacy(handle,regIndex)
  %188 = extractvalue %dx.types.CBufRet.i32 %187, 2
  %189 = lshr i32 %188, 24
  %190 = and i32 %189, 7
  %191 = or i32 %190, 8
  %192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 %191)  ; CBufferLoadLegacy(handle,regIndex)
  %193 = extractvalue %dx.types.CBufRet.f32 %192, 0
  %194 = extractvalue %dx.types.CBufRet.f32 %192, 2
  %195 = fdiv fast float 5.000000e-01, %193
  %196 = fmul fast float %195, 2.000000e+00
  %197 = fsub fast float 1.000000e+00, %196
  %198 = fmul fast float %197, %185
  %199 = fmul fast float %197, %186
  %200 = fadd fast float %198, %195
  %201 = fadd fast float %199, %195
  %202 = fmul fast float %200, %194
  %203 = fmul fast float %201, %194
  %204 = extractvalue %dx.types.CBufRet.i32 %187, 1
  %205 = and i32 %204, 16777215
  %206 = add i32 %205, 0
  %207 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %206, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %208 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 %85)  ; CBufferLoadLegacy(handle,regIndex)
  %209 = extractvalue %dx.types.CBufRet.i32 %208, 3
  %210 = bitcast i32 %209 to float
  %211 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 %114)  ; CBufferLoadLegacy(handle,regIndex)
  %212 = extractvalue %dx.types.CBufRet.i32 %211, 0
  %213 = bitcast i32 %212 to float
  %214 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %207, %dx.types.Handle %5, float %202, float %203, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %215 = extractvalue %dx.types.ResRet.f32 %214, 0
  %216 = fmul fast float %215, %213
  %217 = fadd fast float %216, %210
  %218 = fcmp fast ogt float %217, %75
  br i1 %218, label %219, label %105, !dx.controlflow.hints !39

; <label>:219                                     ; preds = %173
  br label %105

; <label>:220                                     ; preds = %105
  br label %221

; <label>:221                                     ; preds = %220, %64
  %222 = phi i32 [ %65, %64 ], [ %106, %220 ]
  %223 = phi i32 [ %66, %64 ], [ %107, %220 ]
  %224 = phi float [ %67, %64 ], [ %108, %220 ]
  %225 = add nuw nsw i32 %69, 1
  %226 = icmp eq i32 %225, 2
  br i1 %226, label %332, label %64

; <label>:227                                     ; preds = %328, %62
  %228 = phi i32 [ %329, %328 ], [ -1, %62 ]
  %229 = phi i32 [ %34, %328 ], [ %33, %62 ]
  %230 = phi i32 [ %330, %328 ], [ 0, %62 ]
  %231 = icmp eq i32 %229, 0
  br i1 %231, label %328, label %232

; <label>:232                                     ; preds = %227
  br label %233

; <label>:233                                     ; preds = %264, %232
  %234 = phi i32 [ %265, %264 ], [ %228, %232 ]
  %235 = phi i32 [ %240, %264 ], [ %229, %232 ]
  %236 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %235)  ; FirstbitLo(value)
  %237 = and i32 %236, 31
  %238 = shl i32 1, %237
  %239 = xor i32 %238, -1
  %240 = and i32 %235, %239
  %241 = shl i32 %230, 5
  %242 = add i32 %236, %241
  %243 = mul i32 %242, 3
  %244 = add i32 %243, 30
  %245 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 %244)  ; CBufferLoadLegacy(handle,regIndex)
  %246 = extractvalue %dx.types.CBufRet.i32 %245, 1
  %247 = bitcast i32 %246 to float
  %248 = extractvalue %dx.types.CBufRet.i32 %245, 2
  %249 = bitcast i32 %248 to float
  %250 = fsub fast float %57, %247
  %251 = fsub fast float %58, %249
  %252 = add i32 %243, 32
  %253 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 %252)  ; CBufferLoadLegacy(handle,regIndex)
  %254 = extractvalue %dx.types.CBufRet.i32 %253, 1
  %255 = and i32 %254, 1048575
  %256 = uitofp i32 %255 to float
  %257 = fcmp fast olt float %250, 0.000000e+00
  %258 = fcmp fast olt float %251, 0.000000e+00
  %259 = or i1 %257, %258
  %260 = fcmp fast ogt float %250, %256
  %261 = fcmp fast ogt float %251, %256
  %262 = or i1 %260, %261
  %263 = or i1 %259, %262
  br i1 %263, label %264, label %267, !dx.controlflow.hints !40

; <label>:264                                     ; preds = %325, %233
  %265 = phi i32 [ %234, %233 ], [ %242, %325 ]
  %266 = icmp eq i32 %240, 0
  br i1 %266, label %327, label %233

; <label>:267                                     ; preds = %233
  %268 = add i32 %243, 31
  %269 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 %268)  ; CBufferLoadLegacy(handle,regIndex)
  %270 = extractvalue %dx.types.CBufRet.i32 %269, 2
  %271 = and i32 %270, 134217728
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %324, label %273, !dx.controlflow.hints !36

; <label>:273                                     ; preds = %267
  %274 = and i32 %270, 16777215
  %275 = add i32 %274, 0
  %276 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %275, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %277 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 %244)  ; CBufferLoadLegacy(handle,regIndex)
  %278 = extractvalue %dx.types.CBufRet.i32 %277, 1
  %279 = bitcast i32 %278 to float
  %280 = extractvalue %dx.types.CBufRet.i32 %277, 2
  %281 = bitcast i32 %280 to float
  %282 = fsub fast float %57, %279
  %283 = fsub fast float %58, %281
  %284 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 %252)  ; CBufferLoadLegacy(handle,regIndex)
  %285 = extractvalue %dx.types.CBufRet.i32 %284, 1
  %286 = and i32 %285, 1048575
  %287 = uitofp i32 %286 to float
  %288 = fdiv fast float %282, %287
  %289 = fdiv fast float %283, %287
  %290 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 %268)  ; CBufferLoadLegacy(handle,regIndex)
  %291 = extractvalue %dx.types.CBufRet.i32 %290, 2
  %292 = lshr i32 %291, 24
  %293 = and i32 %292, 7
  %294 = or i32 %293, 8
  %295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 %294)  ; CBufferLoadLegacy(handle,regIndex)
  %296 = extractvalue %dx.types.CBufRet.f32 %295, 0
  %297 = extractvalue %dx.types.CBufRet.f32 %295, 2
  %298 = fdiv fast float 5.000000e-01, %296
  %299 = fmul fast float %298, 2.000000e+00
  %300 = fsub fast float 1.000000e+00, %299
  %301 = fmul fast float %300, %288
  %302 = fmul fast float %300, %289
  %303 = fadd fast float %301, %298
  %304 = fadd fast float %302, %298
  %305 = fmul fast float %296, %297
  %306 = fmul fast float %305, %303
  %307 = fmul fast float %305, %304
  %308 = fadd fast float %306, -5.000000e-01
  %309 = fadd fast float %307, -5.000000e-01
  %310 = fptoui float %308 to i32
  %311 = fptoui float %309 to i32
  %312 = lshr i32 %310, 3
  %313 = lshr i32 %311, 2
  %314 = shl nuw i32 %312, 3
  %315 = sub i32 %310, %314
  %316 = shl i32 %311, 3
  %317 = add i32 %316, %315
  %318 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %276, i32 0, i32 %312, i32 %313, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %319 = extractvalue %dx.types.ResRet.i32 %318, 0
  %320 = and i32 %317, 31
  %321 = shl i32 1, %320
  %322 = and i32 %321, %319
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %325, label %324, !dx.controlflow.hints !37

; <label>:324                                     ; preds = %273, %267
  br label %325

; <label>:325                                     ; preds = %324, %273
  %326 = phi i1 [ false, %324 ], [ true, %273 ]
  br i1 %326, label %264, label %333, !dx.controlflow.hints !41

; <label>:327                                     ; preds = %264
  br label %328

; <label>:328                                     ; preds = %327, %227
  %329 = phi i32 [ %228, %227 ], [ %265, %327 ]
  %330 = add nuw nsw i32 %230, 1
  %331 = icmp ult i32 %330, 2
  br i1 %331, label %227, label %334

; <label>:332                                     ; preds = %221
  br label %335

; <label>:333                                     ; preds = %325
  br label %335

; <label>:334                                     ; preds = %328
  br label %335

; <label>:335                                     ; preds = %334, %333, %332
  %336 = phi i32 [ %222, %332 ], [ %242, %333 ], [ %329, %334 ]
  %337 = icmp ne i32 %336, -1
  br i1 %337, label %338, label %812, !dx.controlflow.hints !42

; <label>:338                                     ; preds = %335
  %339 = mul i32 %336, 3
  %340 = add i32 %339, 30
  %341 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 %340)  ; CBufferLoadLegacy(handle,regIndex)
  %342 = extractvalue %dx.types.CBufRet.i32 %341, 1
  %343 = extractvalue %dx.types.CBufRet.i32 %341, 2
  %344 = add i32 %339, 31
  %345 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 %344)  ; CBufferLoadLegacy(handle,regIndex)
  %346 = extractvalue %dx.types.CBufRet.i32 %345, 2
  %347 = extractvalue %dx.types.CBufRet.i32 %345, 3
  %348 = add i32 %339, 32
  %349 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 %348)  ; CBufferLoadLegacy(handle,regIndex)
  %350 = extractvalue %dx.types.CBufRet.i32 %349, 1
  %351 = lshr i32 %350, 20
  %352 = and i32 %347, 16777215
  %353 = bitcast i32 %342 to float
  %354 = bitcast i32 %343 to float
  %355 = fsub fast float %57, %353
  %356 = fsub fast float %58, %354
  %357 = and i32 %350, 1048575
  %358 = uitofp i32 %357 to float
  %359 = fdiv fast float %355, %358
  %360 = fdiv fast float %356, %358
  %361 = fsub fast float 1.000000e+00, %359
  %362 = fsub fast float 1.000000e+00, %360
  %363 = call float @dx.op.binary.f32(i32 36, float %359, float %361)  ; FMin(a,b)
  %364 = call float @dx.op.binary.f32(i32 36, float %360, float %362)  ; FMin(a,b)
  %365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %366 = extractvalue %dx.types.CBufRet.f32 %365, 0
  %367 = extractvalue %dx.types.CBufRet.f32 %365, 1
  %368 = fcmp fast ogt float %367, 0.000000e+00
  %369 = fmul fast float %363, %358
  %370 = fmul fast float %364, %358
  %371 = fdiv fast float %369, %367
  %372 = fdiv fast float %370, %367
  %373 = call float @dx.op.unary.f32(i32 7, float %371)  ; Saturate(value)
  %374 = call float @dx.op.unary.f32(i32 7, float %372)  ; Saturate(value)
  %375 = select i1 %368, float %373, float 1.000000e+00
  %376 = select i1 %368, float %374, float 1.000000e+00
  %377 = fmul fast float %375, %367
  %378 = fmul fast float %376, %367
  %379 = fmul fast float %366, %57
  %380 = fmul fast float %366, %58
  %381 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %4, float %379, float %380, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %382 = extractvalue %dx.types.ResRet.f32 %381, 0
  %383 = extractvalue %dx.types.ResRet.f32 %381, 1
  %384 = fmul fast float %377, 2.000000e+00
  %385 = fmul fast float %384, %382
  %386 = fmul fast float %378, 2.000000e+00
  %387 = fmul fast float %386, %383
  %388 = fsub fast float %355, %377
  %389 = fadd fast float %388, %385
  %390 = fsub fast float %356, %378
  %391 = fadd fast float %390, %387
  %392 = fdiv fast float %389, %358
  %393 = fdiv fast float %391, %358
  %394 = lshr i32 %346, 24
  %395 = and i32 %394, 7
  %396 = or i32 %395, 8
  %397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 %396)  ; CBufferLoadLegacy(handle,regIndex)
  %398 = extractvalue %dx.types.CBufRet.f32 %397, 0
  %399 = extractvalue %dx.types.CBufRet.f32 %397, 2
  %400 = fdiv fast float 5.000000e-01, %398
  %401 = fmul fast float %400, 2.000000e+00
  %402 = fsub fast float 1.000000e+00, %401
  %403 = fmul fast float %402, %392
  %404 = fmul fast float %402, %393
  %405 = fadd fast float %403, %400
  %406 = fadd fast float %404, %400
  %407 = fmul fast float %405, %399
  %408 = fmul fast float %406, %399
  %409 = fadd fast float %407, %400
  %410 = fadd fast float %408, %400
  %411 = fmul fast float %409, %398
  %412 = fmul fast float %410, %398
  %413 = call float @dx.op.unary.f32(i32 27, float %411)  ; Round_ni(value)
  %414 = call float @dx.op.unary.f32(i32 27, float %412)  ; Round_ni(value)
  %415 = fdiv fast float %413, %398
  %416 = fdiv fast float %414, %398
  %417 = fsub fast float %411, %413
  %418 = fsub fast float %412, %414
  %419 = add i32 %352, 0
  %420 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %419, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %421 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %420, %dx.types.Handle %5, float %415, float %416, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %422 = extractvalue %dx.types.ResRet.f32 %421, 0
  %423 = extractvalue %dx.types.ResRet.f32 %421, 1
  %424 = extractvalue %dx.types.ResRet.f32 %421, 2
  %425 = extractvalue %dx.types.ResRet.f32 %421, 3
  %426 = fmul fast float %422, 2.550000e+02
  %427 = fmul fast float %423, 2.550000e+02
  %428 = fmul fast float %424, 2.550000e+02
  %429 = fmul fast float %425, 2.550000e+02
  %430 = fptoui float %426 to i32
  %431 = fptoui float %427 to i32
  %432 = fptoui float %428 to i32
  %433 = fptoui float %429 to i32
  %434 = fsub fast float 1.000000e+00, %417
  %435 = fmul fast float %434, %418
  %436 = fmul fast float %417, %418
  %437 = fsub fast float 1.000000e+00, %418
  %438 = fmul fast float %437, %417
  %439 = fmul fast float %434, %437
  %440 = add i32 %430, %351
  %441 = mul i32 %440, 100
  %442 = add i32 %441, 80
  %443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %444 = extractvalue %dx.types.ResRet.i32 %443, 2
  %445 = and i32 %444, 8388608
  %446 = icmp eq i32 %445, 0
  %447 = shl i32 %430, 4
  br i1 %446, label %461, label %448, !dx.controlflow.hints !43

; <label>:448                                     ; preds = %338
  %449 = fmul fast float %413, 2.500000e-01
  %450 = fptosi float %449 to i32
  %451 = srem i32 %450, 2
  %452 = fadd fast float %414, 1.000000e+00
  %453 = fmul fast float %452, 2.500000e-01
  %454 = fptosi float %453 to i32
  %455 = srem i32 %454, 2
  %456 = mul nsw i32 %455, 3
  %457 = srem i32 %456, 4
  %458 = add nsw i32 %457, %451
  %459 = and i32 %458, 15
  %460 = or i32 %459, %447
  br label %461

; <label>:461                                     ; preds = %448, %338
  %462 = phi i32 [ %460, %448 ], [ %447, %338 ]
  %463 = add i32 %431, %351
  %464 = mul i32 %463, 100
  %465 = add i32 %464, 80
  %466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %467 = extractvalue %dx.types.ResRet.i32 %466, 2
  %468 = and i32 %467, 8388608
  %469 = icmp eq i32 %468, 0
  %470 = shl i32 %431, 4
  br i1 %469, label %485, label %471, !dx.controlflow.hints !43

; <label>:471                                     ; preds = %461
  %472 = fadd fast float %413, 1.000000e+00
  %473 = fmul fast float %472, 2.500000e-01
  %474 = fptosi float %473 to i32
  %475 = srem i32 %474, 2
  %476 = fadd fast float %414, 1.000000e+00
  %477 = fmul fast float %476, 2.500000e-01
  %478 = fptosi float %477 to i32
  %479 = srem i32 %478, 2
  %480 = mul nsw i32 %479, 3
  %481 = srem i32 %480, 4
  %482 = add nsw i32 %481, %475
  %483 = and i32 %482, 15
  %484 = or i32 %483, %470
  br label %485

; <label>:485                                     ; preds = %471, %461
  %486 = phi i32 [ %484, %471 ], [ %470, %461 ]
  %487 = add i32 %432, %351
  %488 = mul i32 %487, 100
  %489 = add i32 %488, 80
  %490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %489, i32 undef)  ; BufferLoad(srv,index,wot)
  %491 = extractvalue %dx.types.ResRet.i32 %490, 2
  %492 = and i32 %491, 8388608
  %493 = icmp eq i32 %492, 0
  %494 = shl i32 %432, 4
  br i1 %493, label %508, label %495, !dx.controlflow.hints !43

; <label>:495                                     ; preds = %485
  %496 = fadd fast float %413, 1.000000e+00
  %497 = fmul fast float %496, 2.500000e-01
  %498 = fptosi float %497 to i32
  %499 = srem i32 %498, 2
  %500 = fmul fast float %414, 2.500000e-01
  %501 = fptosi float %500 to i32
  %502 = srem i32 %501, 2
  %503 = mul nsw i32 %502, 3
  %504 = srem i32 %503, 4
  %505 = add nsw i32 %504, %499
  %506 = and i32 %505, 15
  %507 = or i32 %506, %494
  br label %508

; <label>:508                                     ; preds = %495, %485
  %509 = phi i32 [ %507, %495 ], [ %494, %485 ]
  %510 = add i32 %433, %351
  %511 = mul i32 %510, 100
  %512 = add i32 %511, 80
  %513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %512, i32 undef)  ; BufferLoad(srv,index,wot)
  %514 = extractvalue %dx.types.ResRet.i32 %513, 2
  %515 = and i32 %514, 8388608
  %516 = icmp eq i32 %515, 0
  %517 = shl i32 %433, 4
  br i1 %516, label %530, label %518, !dx.controlflow.hints !43

; <label>:518                                     ; preds = %508
  %519 = fmul fast float %413, 2.500000e-01
  %520 = fptosi float %519 to i32
  %521 = srem i32 %520, 2
  %522 = fmul fast float %414, 2.500000e-01
  %523 = fptosi float %522 to i32
  %524 = srem i32 %523, 2
  %525 = mul nsw i32 %524, 3
  %526 = srem i32 %525, 4
  %527 = add nsw i32 %526, %521
  %528 = and i32 %527, 15
  %529 = or i32 %528, %517
  br label %530

; <label>:530                                     ; preds = %518, %508
  %531 = phi i32 [ %529, %518 ], [ %517, %508 ]
  %532 = getelementptr inbounds [4 x float], [4 x float]* %12, i32 0, i32 0
  store float -1.000000e+00, float* %532, align 4
  %533 = getelementptr inbounds [4 x float], [4 x float]* %12, i32 0, i32 1
  store float -1.000000e+00, float* %533, align 4
  %534 = getelementptr inbounds [4 x float], [4 x float]* %12, i32 0, i32 2
  store float -1.000000e+00, float* %534, align 4
  %535 = getelementptr inbounds [4 x float], [4 x float]* %12, i32 0, i32 3
  store float -1.000000e+00, float* %535, align 4
  %536 = call i32 @dx.op.binary.i32(i32 40, i32 %509, i32 %531)  ; UMin(a,b)
  %537 = call i32 @dx.op.binary.i32(i32 40, i32 %462, i32 %486)  ; UMin(a,b)
  %538 = call i32 @dx.op.binary.i32(i32 40, i32 %537, i32 %536)  ; UMin(a,b)
  %539 = icmp eq i32 %538, 65535
  br i1 %539, label %686, label %540, !dx.controlflow.hints !44

; <label>:540                                     ; preds = %530
  %541 = icmp eq i32 %462, %538
  br i1 %541, label %542, label %545, !dx.controlflow.hints !45

; <label>:542                                     ; preds = %540
  %543 = and i32 %462, 15
  %544 = uitofp i32 %543 to float
  store float %544, float* %532, align 4, !tbaa !46, !alias.scope !48, !noalias !51
  br label %545

; <label>:545                                     ; preds = %542, %540
  %546 = phi float [ -1.000000e+00, %540 ], [ %544, %542 ]
  %547 = phi i32 [ %538, %540 ], [ %462, %542 ]
  %548 = phi i32 [ %462, %540 ], [ 65535, %542 ]
  %549 = icmp eq i32 %486, %547
  br i1 %549, label %550, label %553, !dx.controlflow.hints !45

; <label>:550                                     ; preds = %545
  %551 = and i32 %486, 15
  %552 = uitofp i32 %551 to float
  store float %552, float* %532, align 4, !tbaa !46, !alias.scope !48, !noalias !51
  br label %553

; <label>:553                                     ; preds = %550, %545
  %554 = phi float [ %546, %545 ], [ %552, %550 ]
  %555 = phi i32 [ %547, %545 ], [ %486, %550 ]
  %556 = phi i32 [ %486, %545 ], [ 65535, %550 ]
  %557 = icmp eq i32 %509, %555
  br i1 %557, label %558, label %561, !dx.controlflow.hints !45

; <label>:558                                     ; preds = %553
  %559 = and i32 %509, 15
  %560 = uitofp i32 %559 to float
  store float %560, float* %532, align 4, !tbaa !46, !alias.scope !48, !noalias !51
  br label %561

; <label>:561                                     ; preds = %558, %553
  %562 = phi float [ %560, %558 ], [ %554, %553 ]
  %563 = phi i32 [ %509, %558 ], [ %555, %553 ]
  %564 = phi i32 [ 65535, %558 ], [ %509, %553 ]
  %565 = icmp eq i32 %531, %563
  br i1 %565, label %566, label %569, !dx.controlflow.hints !45

; <label>:566                                     ; preds = %561
  %567 = and i32 %531, 15
  %568 = uitofp i32 %567 to float
  store float %568, float* %532, align 4, !tbaa !46, !alias.scope !48, !noalias !51
  br label %569

; <label>:569                                     ; preds = %566, %561
  %570 = phi float [ %562, %561 ], [ %568, %566 ]
  %571 = phi i32 [ %563, %561 ], [ %531, %566 ]
  %572 = phi i32 [ %531, %561 ], [ 65535, %566 ]
  %573 = call i32 @dx.op.binary.i32(i32 40, i32 %564, i32 %572)  ; UMin(a,b)
  %574 = call i32 @dx.op.binary.i32(i32 40, i32 %548, i32 %556)  ; UMin(a,b)
  %575 = call i32 @dx.op.binary.i32(i32 40, i32 %574, i32 %573)  ; UMin(a,b)
  %576 = icmp eq i32 %575, 65535
  br i1 %576, label %686, label %577, !dx.controlflow.hints !44

; <label>:577                                     ; preds = %569
  %578 = icmp eq i32 %548, %575
  br i1 %578, label %579, label %582, !dx.controlflow.hints !45

; <label>:579                                     ; preds = %577
  %580 = and i32 %548, 15
  %581 = uitofp i32 %580 to float
  store float %581, float* %533, align 4, !tbaa !46, !alias.scope !48, !noalias !51
  br label %582

; <label>:582                                     ; preds = %579, %577
  %583 = phi float [ 0.000000e+00, %577 ], [ %435, %579 ]
  %584 = phi i32 [ %575, %577 ], [ %548, %579 ]
  %585 = phi i32 [ %548, %577 ], [ 65535, %579 ]
  %586 = icmp eq i32 %556, %584
  br i1 %586, label %587, label %591, !dx.controlflow.hints !45

; <label>:587                                     ; preds = %582
  %588 = fadd fast float %583, %436
  %589 = and i32 %556, 15
  %590 = uitofp i32 %589 to float
  store float %590, float* %533, align 4, !tbaa !46, !alias.scope !48, !noalias !51
  br label %591

; <label>:591                                     ; preds = %587, %582
  %592 = phi float [ %583, %582 ], [ %588, %587 ]
  %593 = phi i32 [ %584, %582 ], [ %556, %587 ]
  %594 = phi i32 [ %556, %582 ], [ 65535, %587 ]
  %595 = icmp eq i32 %564, %593
  br i1 %595, label %596, label %600, !dx.controlflow.hints !45

; <label>:596                                     ; preds = %591
  %597 = fadd fast float %592, %438
  %598 = and i32 %564, 15
  %599 = uitofp i32 %598 to float
  store float %599, float* %533, align 4, !tbaa !46, !alias.scope !48, !noalias !51
  br label %600

; <label>:600                                     ; preds = %596, %591
  %601 = phi float [ %597, %596 ], [ %592, %591 ]
  %602 = phi i32 [ %564, %596 ], [ %593, %591 ]
  %603 = phi i32 [ 65535, %596 ], [ %564, %591 ]
  %604 = icmp eq i32 %572, %602
  br i1 %604, label %605, label %609, !dx.controlflow.hints !45

; <label>:605                                     ; preds = %600
  %606 = fadd fast float %601, %439
  %607 = and i32 %572, 15
  %608 = uitofp i32 %607 to float
  store float %608, float* %533, align 4, !tbaa !46, !alias.scope !48, !noalias !51
  br label %609

; <label>:609                                     ; preds = %605, %600
  %610 = phi float [ %601, %600 ], [ %606, %605 ]
  %611 = phi i32 [ %602, %600 ], [ %572, %605 ]
  %612 = phi i32 [ %572, %600 ], [ 65535, %605 ]
  %613 = call i32 @dx.op.binary.i32(i32 40, i32 %603, i32 %612)  ; UMin(a,b)
  %614 = call i32 @dx.op.binary.i32(i32 40, i32 %585, i32 %594)  ; UMin(a,b)
  %615 = call i32 @dx.op.binary.i32(i32 40, i32 %614, i32 %613)  ; UMin(a,b)
  %616 = icmp eq i32 %615, 65535
  br i1 %616, label %686, label %617, !dx.controlflow.hints !44

; <label>:617                                     ; preds = %609
  %618 = icmp eq i32 %585, %615
  br i1 %618, label %619, label %622, !dx.controlflow.hints !45

; <label>:619                                     ; preds = %617
  %620 = and i32 %585, 15
  %621 = uitofp i32 %620 to float
  store float %621, float* %534, align 4, !tbaa !46, !alias.scope !48, !noalias !51
  br label %622

; <label>:622                                     ; preds = %619, %617
  %623 = phi float [ 0.000000e+00, %617 ], [ %435, %619 ]
  %624 = phi i32 [ %615, %617 ], [ %585, %619 ]
  %625 = phi i32 [ %585, %617 ], [ 65535, %619 ]
  %626 = icmp eq i32 %594, %624
  br i1 %626, label %627, label %631, !dx.controlflow.hints !45

; <label>:627                                     ; preds = %622
  %628 = fadd fast float %623, %436
  %629 = and i32 %594, 15
  %630 = uitofp i32 %629 to float
  store float %630, float* %534, align 4, !tbaa !46, !alias.scope !48, !noalias !51
  br label %631

; <label>:631                                     ; preds = %627, %622
  %632 = phi float [ %623, %622 ], [ %628, %627 ]
  %633 = phi i32 [ %624, %622 ], [ %594, %627 ]
  %634 = phi i32 [ %594, %622 ], [ 65535, %627 ]
  %635 = icmp eq i32 %603, %633
  br i1 %635, label %636, label %640, !dx.controlflow.hints !45

; <label>:636                                     ; preds = %631
  %637 = fadd fast float %632, %438
  %638 = and i32 %603, 15
  %639 = uitofp i32 %638 to float
  store float %639, float* %534, align 4, !tbaa !46, !alias.scope !48, !noalias !51
  br label %640

; <label>:640                                     ; preds = %636, %631
  %641 = phi float [ %637, %636 ], [ %632, %631 ]
  %642 = phi i32 [ %603, %636 ], [ %633, %631 ]
  %643 = phi i32 [ 65535, %636 ], [ %603, %631 ]
  %644 = icmp eq i32 %612, %642
  br i1 %644, label %645, label %649, !dx.controlflow.hints !45

; <label>:645                                     ; preds = %640
  %646 = fadd fast float %641, %439
  %647 = and i32 %612, 15
  %648 = uitofp i32 %647 to float
  store float %648, float* %534, align 4, !tbaa !46, !alias.scope !48, !noalias !51
  br label %649

; <label>:649                                     ; preds = %645, %640
  %650 = phi float [ %641, %640 ], [ %646, %645 ]
  %651 = phi i32 [ %642, %640 ], [ %612, %645 ]
  %652 = phi i32 [ %612, %640 ], [ 65535, %645 ]
  %653 = call i32 @dx.op.binary.i32(i32 40, i32 %643, i32 %652)  ; UMin(a,b)
  %654 = call i32 @dx.op.binary.i32(i32 40, i32 %625, i32 %634)  ; UMin(a,b)
  %655 = call i32 @dx.op.binary.i32(i32 40, i32 %654, i32 %653)  ; UMin(a,b)
  %656 = icmp eq i32 %655, 65535
  br i1 %656, label %686, label %657, !dx.controlflow.hints !44

; <label>:657                                     ; preds = %649
  %658 = icmp eq i32 %625, %655
  br i1 %658, label %659, label %662, !dx.controlflow.hints !45

; <label>:659                                     ; preds = %657
  %660 = and i32 %625, 15
  %661 = uitofp i32 %660 to float
  store float %661, float* %535, align 4, !tbaa !46, !alias.scope !48, !noalias !51
  br label %662

; <label>:662                                     ; preds = %659, %657
  %663 = phi float [ 0.000000e+00, %657 ], [ %435, %659 ]
  %664 = phi i32 [ %655, %657 ], [ %625, %659 ]
  %665 = icmp eq i32 %634, %664
  br i1 %665, label %666, label %670, !dx.controlflow.hints !45

; <label>:666                                     ; preds = %662
  %667 = fadd fast float %663, %436
  %668 = and i32 %634, 15
  %669 = uitofp i32 %668 to float
  store float %669, float* %535, align 4, !tbaa !46, !alias.scope !48, !noalias !51
  br label %670

; <label>:670                                     ; preds = %666, %662
  %671 = phi float [ %663, %662 ], [ %667, %666 ]
  %672 = phi i32 [ %664, %662 ], [ %634, %666 ]
  %673 = icmp eq i32 %643, %672
  br i1 %673, label %674, label %678, !dx.controlflow.hints !45

; <label>:674                                     ; preds = %670
  %675 = fadd fast float %671, %438
  %676 = and i32 %643, 15
  %677 = uitofp i32 %676 to float
  store float %677, float* %535, align 4, !tbaa !46, !alias.scope !48, !noalias !51
  br label %678

; <label>:678                                     ; preds = %674, %670
  %679 = phi float [ %675, %674 ], [ %671, %670 ]
  %680 = phi i32 [ %643, %674 ], [ %672, %670 ]
  %681 = icmp eq i32 %652, %680
  br i1 %681, label %682, label %686, !dx.controlflow.hints !45

; <label>:682                                     ; preds = %678
  %683 = fadd fast float %679, %439
  %684 = and i32 %652, 15
  %685 = uitofp i32 %684 to float
  store float %685, float* %535, align 4, !tbaa !46, !alias.scope !48, !noalias !51
  br label %686

; <label>:686                                     ; preds = %682, %678, %649, %609, %569, %530
  %687 = phi float [ -1.000000e+00, %530 ], [ %570, %569 ], [ %570, %609 ], [ %570, %649 ], [ %570, %682 ], [ %570, %678 ]
  %688 = phi float [ 0.000000e+00, %530 ], [ 0.000000e+00, %569 ], [ 0.000000e+00, %609 ], [ 0.000000e+00, %649 ], [ %683, %682 ], [ %679, %678 ]
  %689 = phi float [ 0.000000e+00, %530 ], [ 0.000000e+00, %569 ], [ 0.000000e+00, %609 ], [ %650, %649 ], [ %650, %682 ], [ %650, %678 ]
  %690 = phi float [ 0.000000e+00, %530 ], [ 0.000000e+00, %569 ], [ %610, %609 ], [ %610, %649 ], [ %610, %682 ], [ %610, %678 ]
  %691 = phi i32 [ 65535, %530 ], [ 65535, %569 ], [ 65535, %609 ], [ 65535, %649 ], [ %652, %682 ], [ %680, %678 ]
  %692 = phi i32 [ 65535, %530 ], [ 65535, %569 ], [ 65535, %609 ], [ %651, %649 ], [ %651, %682 ], [ %651, %678 ]
  %693 = phi i32 [ 65535, %530 ], [ 65535, %569 ], [ %611, %609 ], [ %611, %649 ], [ %611, %682 ], [ %611, %678 ]
  %694 = phi i32 [ 65535, %530 ], [ %571, %569 ], [ %571, %609 ], [ %571, %649 ], [ %571, %682 ], [ %571, %678 ]
  %695 = lshr i32 %694, 4
  %696 = lshr i32 %693, 4
  %697 = lshr i32 %692, 4
  %698 = lshr i32 %691, 4
  %699 = fmul fast float %690, 2.000000e+00
  %700 = fmul fast float %689, 2.000000e+00
  %701 = fmul fast float %688, 2.000000e+00
  %702 = call float @dx.op.unary.f32(i32 7, float %699)  ; Saturate(value)
  %703 = call float @dx.op.unary.f32(i32 7, float %700)  ; Saturate(value)
  %704 = call float @dx.op.unary.f32(i32 7, float %701)  ; Saturate(value)
  %705 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i32 0, i32 0
  store i32 %695, i32* %705, align 4
  %706 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i32 0, i32 1
  store i32 %696, i32* %706, align 4
  %707 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i32 0, i32 2
  store i32 %697, i32* %707, align 4
  %708 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i32 0, i32 3
  store i32 %698, i32* %708, align 4
  %709 = getelementptr inbounds [4 x float], [4 x float]* %11, i32 0, i32 0
  store float 1.000000e+00, float* %709, align 4
  %710 = getelementptr inbounds [4 x float], [4 x float]* %11, i32 0, i32 1
  store float %702, float* %710, align 4
  %711 = getelementptr inbounds [4 x float], [4 x float]* %11, i32 0, i32 2
  store float %703, float* %711, align 4
  %712 = getelementptr inbounds [4 x float], [4 x float]* %11, i32 0, i32 3
  store float %704, float* %712, align 4
  br label %713

; <label>:713                                     ; preds = %806, %686
  %714 = phi float [ %810, %806 ], [ %687, %686 ]
  %715 = phi float [ %803, %806 ], [ 1.000000e+00, %686 ]
  %716 = phi i32 [ %808, %806 ], [ %695, %686 ]
  %717 = phi float [ %799, %806 ], [ 0.000000e+00, %686 ]
  %718 = phi i32 [ %800, %806 ], [ 0, %686 ]
  %719 = getelementptr [4 x i32], [4 x i32]* %10, i32 0, i32 %718
  store i32 65535, i32* %719, align 4, !tbaa !23, !noalias !57
  %720 = add i32 %716, %351
  %721 = mul i32 %720, 100
  %722 = add i32 %721, 80
  %723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %722, i32 undef)  ; BufferLoad(srv,index,wot)
  %724 = extractvalue %dx.types.ResRet.i32 %723, 2
  %725 = and i32 %724, 2
  %726 = icmp ne i32 %725, 0
  %727 = fcmp fast une float %715, 0.000000e+00
  %728 = and i1 %727, %726
  br i1 %728, label %729, label %798, !dx.controlflow.hints !58

; <label>:729                                     ; preds = %713
  %730 = and i32 %724, 128
  %731 = icmp eq i32 %730, 0
  br i1 %731, label %732, label %735, !dx.controlflow.hints !59

; <label>:732                                     ; preds = %729
  %733 = fmul fast float %715, %717
  %734 = fsub fast float %717, %733
  br label %798

; <label>:735                                     ; preds = %729
  %736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %721, i32 undef)  ; BufferLoad(srv,index,wot)
  %737 = extractvalue %dx.types.ResRet.i32 %736, 0
  %738 = bitcast i32 %737 to float
  %739 = extractvalue %dx.types.ResRet.i32 %736, 1
  %740 = bitcast i32 %739 to float
  %741 = call float @dx.op.dot2.f32(i32 54, float %57, float %58, float %738, float %740)  ; Dot2(ax,ay,bx,by)
  %742 = extractvalue %dx.types.ResRet.i32 %736, 3
  %743 = bitcast i32 %742 to float
  %744 = add i32 %721, 16
  %745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %744, i32 undef)  ; BufferLoad(srv,index,wot)
  %746 = extractvalue %dx.types.ResRet.i32 %745, 0
  %747 = bitcast i32 %746 to float
  %748 = call float @dx.op.dot2.f32(i32 54, float %57, float %58, float %743, float %747)  ; Dot2(ax,ay,bx,by)
  %749 = add i32 %721, 64
  %750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %749, i32 undef)  ; BufferLoad(srv,index,wot)
  %751 = extractvalue %dx.types.ResRet.i32 %750, 2
  %752 = call float @dx.op.legacyF16ToF32(i32 131, i32 %751)  ; LegacyF16ToF32(value)
  %753 = fdiv fast float 2.500000e+01, %752
  %754 = call float @dx.op.unary.f32(i32 23, float %753)  ; Log(value)
  %755 = fsub fast float -2.500000e+00, %48
  %756 = fadd fast float %755, %754
  %757 = call float @dx.op.unary.f32(i32 28, float %756)  ; Round_pi(value)
  %758 = fptosi float %757 to i32
  %759 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %758)  ; IMax(a,b)
  %760 = fcmp fast ogt float %714, 0.000000e+00
  br i1 %760, label %761, label %767, !dx.controlflow.hints !60

; <label>:761                                     ; preds = %735
  %762 = call float @dx.op.unary.f32(i32 12, float %714)  ; Cos(value)
  %763 = call float @dx.op.unary.f32(i32 13, float %714)  ; Sin(value)
  %764 = call float @dx.op.dot2.f32(i32 54, float %741, float %748, float %762, float %763)  ; Dot2(ax,ay,bx,by)
  %765 = fsub fast float -0.000000e+00, %762
  %766 = call float @dx.op.dot2.f32(i32 54, float %741, float %748, float %763, float %765)  ; Dot2(ax,ay,bx,by)
  br label %767

; <label>:767                                     ; preds = %761, %735
  %768 = phi float [ %764, %761 ], [ %741, %735 ]
  %769 = phi float [ %766, %761 ], [ %748, %735 ]
  %770 = add i32 %721, 48
  %771 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %770, i32 undef)  ; BufferLoad(srv,index,wot)
  %772 = extractvalue %dx.types.ResRet.i32 %771, 0
  %773 = and i32 %772, 16777215
  %774 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %775 = add i32 %773, 0
  %776 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %775, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %777 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %776, i32 0)  ; GetDimensions(handle,mipLevel)
  %778 = extractvalue %dx.types.Dimensions %777, 3
  %779 = sub nsw i32 %778, %759
  %780 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %779)  ; IMax(a,b)
  %781 = sitofp i32 %780 to float
  %782 = lshr i32 %772, 16
  %783 = and i32 %782, 15
  %784 = uitofp i32 %783 to float
  %785 = call float @dx.op.binary.f32(i32 35, float %784, float %781)  ; FMax(a,b)
  %786 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %776, %dx.types.Handle %774, float %768, float %769, float undef, float undef, i32 0, i32 0, i32 undef, float %785)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %787 = extractvalue %dx.types.ResRet.f32 %786, 0
  %788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %722, i32 undef)  ; BufferLoad(srv,index,wot)
  %789 = extractvalue %dx.types.ResRet.i32 %788, 1
  %790 = call float @dx.op.legacyF16ToF32(i32 131, i32 %789)  ; LegacyF16ToF32(value)
  %791 = lshr i32 %789, 16
  %792 = call float @dx.op.legacyF16ToF32(i32 131, i32 %791)  ; LegacyF16ToF32(value)
  %793 = fsub fast float %787, %792
  %794 = fmul fast float %793, %790
  %795 = fsub fast float %794, %717
  %796 = fmul fast float %795, %715
  %797 = fadd fast float %796, %717
  br label %798

; <label>:798                                     ; preds = %767, %732, %713
  %799 = phi float [ %717, %713 ], [ %797, %767 ], [ %734, %732 ]
  %800 = add nuw nsw i32 %718, 1
  %801 = icmp ugt i32 %800, 3
  %802 = getelementptr [4 x float], [4 x float]* %11, i32 0, i32 %800
  %803 = load float, float* %802, align 4, !tbaa !46, !noalias !57
  %804 = fcmp fast ole float %803, 0.000000e+00
  %805 = or i1 %801, %804
  br i1 %805, label %811, label %806, !dx.controlflow.hints !61, !llvm.loop !62

; <label>:806                                     ; preds = %798
  %807 = getelementptr [4 x i32], [4 x i32]* %10, i32 0, i32 %800
  %808 = load i32, i32* %807, align 4, !tbaa !23, !noalias !57
  %809 = getelementptr [4 x float], [4 x float]* %12, i32 0, i32 %800
  %810 = load float, float* %809, align 4, !tbaa !46, !noalias !57
  br label %713

; <label>:811                                     ; preds = %798
  br label %812

; <label>:812                                     ; preds = %811, %335
  %813 = phi float [ 0.000000e+00, %335 ], [ %799, %811 ]
  br i1 %337, label %814, label %815, !dx.controlflow.hints !64

; <label>:814                                     ; preds = %812
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %50, i32 %8, i32 undef, float %813, float %813, float %813, float %813, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %815

; <label>:815                                     ; preds = %814, %812
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
!dx.entryPoints = !{!20}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !12, !14, !16}
!5 = !{!6, !8, !10, !11}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<unsigned int, 4> >"]* undef, !"", i32 5, i32 0, i32 -1, i32 2, i32 0, !9}
!9 = !{i32 0, i32 5}
!10 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 16, i32 1, i32 11, i32 0, null}
!11 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 10, i32 1, i32 2, i32 0, !7}
!12 = !{!13}
!13 = !{i32 0, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 6, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!14 = !{!15}
!15 = !{i32 0, %GfxVirtualTexturingComposite* undef, !"", i32 0, i32 0, i32 1, i32 4208, null}
!16 = !{!17, !18, !19}
!17 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!18 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!19 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!20 = !{void ()* @cs_compose_displacement_to_scratch_with_cutout_ompv, !"cs_compose_displacement_to_scratch_with_cutout_ompv", null, !4, !21}
!21 = !{i32 0, i64 272, i32 4, !22}
!22 = !{i32 8, i32 8, i32 1}
!23 = !{!24, !24, i64 0}
!24 = !{!"int", !25, i64 0}
!25 = !{!"omnipotent char", !26, i64 0}
!26 = !{!"Simple C/C++ TBAA"}
!27 = !{!28, !30, !31, !32}
!28 = distinct !{!28, !29, !"\01?GetPageIndexAndTileDataBits@@YAXIIV?$vector@I$02@@AIAI11@Z: %pageIndex"}
!29 = distinct !{!29, !"\01?GetPageIndexAndTileDataBits@@YAXIIV?$vector@I$02@@AIAI11@Z"}
!30 = distinct !{!30, !29, !"\01?GetPageIndexAndTileDataBits@@YAXIIV?$vector@I$02@@AIAI11@Z: %tileDataBitsLo"}
!31 = distinct !{!31, !29, !"\01?GetPageIndexAndTileDataBits@@YAXIIV?$vector@I$02@@AIAI11@Z: %tileDataBitsHi"}
!32 = distinct !{!32, !33, !"\01?CompositeScratch_InitContext@@YA?AUCompositeScratchContext@@IV?$vector@I$02@@0_N@Z: %agg.result"}
!33 = distinct !{!33, !"\01?CompositeScratch_InitContext@@YA?AUCompositeScratchContext@@IV?$vector@I$02@@0_N@Z"}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 1}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 1}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 1}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = !{!47, !47, i64 0}
!47 = !{!"float", !25, i64 0}
!48 = !{!49}
!49 = distinct !{!49, !50, !"\01?GetLayersAlphasAndOptionalColors@@YAXUOMPVSamplingData@@V?$vector@M$01@@_NAIAV?$vector@I$03@@AIAV?$vector@M$03@@Y03$$CAV?$vector@M$02@@4@Z: %rotations"}
!50 = distinct !{!50, !"\01?GetLayersAlphasAndOptionalColors@@YAXUOMPVSamplingData@@V?$vector@M$01@@_NAIAV?$vector@I$03@@AIAV?$vector@M$03@@Y03$$CAV?$vector@M$02@@4@Z"}
!51 = !{!52, !53, !54, !55}
!52 = distinct !{!52, !50, !"\01?GetLayersAlphasAndOptionalColors@@YAXUOMPVSamplingData@@V?$vector@M$01@@_NAIAV?$vector@I$03@@AIAV?$vector@M$03@@Y03$$CAV?$vector@M$02@@4@Z: %layers"}
!53 = distinct !{!53, !50, !"\01?GetLayersAlphasAndOptionalColors@@YAXUOMPVSamplingData@@V?$vector@M$01@@_NAIAV?$vector@I$03@@AIAV?$vector@M$03@@Y03$$CAV?$vector@M$02@@4@Z: %alphas"}
!54 = distinct !{!54, !50, !"\01?GetLayersAlphasAndOptionalColors@@YAXUOMPVSamplingData@@V?$vector@M$01@@_NAIAV?$vector@I$03@@AIAV?$vector@M$03@@Y03$$CAV?$vector@M$02@@4@Z: %colors"}
!55 = distinct !{!55, !56, !"\01?CompositeScratch_Displacement@@YA_NI_NUCompositeScratchContext@@AIAM@Z: %displacement"}
!56 = distinct !{!56, !"\01?CompositeScratch_Displacement@@YA_NI_NUCompositeScratchContext@@AIAM@Z"}
!57 = !{!55}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !63}
!63 = !{!"llvm.loop.unroll.disable"}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}

