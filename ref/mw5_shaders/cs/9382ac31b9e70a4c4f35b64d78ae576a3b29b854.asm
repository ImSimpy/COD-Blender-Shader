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
; shader hash: 084a468f93ea40bb7d43da1b6fffdd76
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
;                                       UAV     f32          2d      U0             u0     1
;                                       UAV     f32          2d      U1             u2     1
;                                       UAV     f32          2d      U2             u4     1
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
%"class.RWTexture2D<vector<float, 4> >" = type { <4 x float> }
%GfxVirtualTexturingComposite = type { [8 x <4 x float>], [8 x <4 x float>], <3 x float>, i32, <2 x float>, float, float, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, [56 x %struct.TerrainTileDataVT], [20 x <4 x float>], [5 x <4 x i32>], [40 x <4 x i32>] }
%struct.TerrainTileDataVT = type { [2 x <4 x i32>], <2 x i32> }
%struct.SamplerState = type { i32 }

define void @cs_compose_to_scratch_with_cutout() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
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
  %17 = add nuw i32 %16, 233
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
  %30 = load i32, i32* %29, align 4, !tbaa !24, !noalias !28
  %31 = and i32 %30, 255
  %32 = or i32 %28, 1
  %33 = getelementptr [4 x i32], [4 x i32]* %11, i32 0, i32 %32
  %34 = load i32, i32* %33, align 4, !tbaa !24, !noalias !28
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
  br i1 %62, label %64, label %63, !dx.controlflow.hints !35

; <label>:63                                      ; preds = %0
  br label %228

; <label>:64                                      ; preds = %0
  br label %65

; <label>:65                                      ; preds = %222, %64
  %66 = phi i32 [ %223, %222 ], [ -1, %64 ]
  %67 = phi i32 [ %224, %222 ], [ 0, %64 ]
  %68 = phi float [ %225, %222 ], [ -1.000000e+09, %64 ]
  %69 = phi i32 [ %35, %222 ], [ %34, %64 ]
  %70 = phi i32 [ %226, %222 ], [ 0, %64 ]
  %71 = icmp eq i32 %69, 0
  br i1 %71, label %222, label %72

; <label>:72                                      ; preds = %65
  br label %73

; <label>:73                                      ; preds = %106, %72
  %74 = phi i32 [ %107, %106 ], [ %66, %72 ]
  %75 = phi i32 [ %108, %106 ], [ %67, %72 ]
  %76 = phi float [ %109, %106 ], [ %68, %72 ]
  %77 = phi i32 [ %82, %106 ], [ %69, %72 ]
  %78 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %77)  ; FirstbitLo(value)
  %79 = and i32 %78, 31
  %80 = shl i32 1, %79
  %81 = xor i32 %80, -1
  %82 = and i32 %77, %81
  %83 = shl i32 %70, 5
  %84 = add i32 %78, %83
  %85 = mul i32 %84, 3
  %86 = add i32 %85, 30
  %87 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 %86)  ; CBufferLoadLegacy(handle,regIndex)
  %88 = extractvalue %dx.types.CBufRet.i32 %87, 1
  %89 = bitcast i32 %88 to float
  %90 = extractvalue %dx.types.CBufRet.i32 %87, 2
  %91 = bitcast i32 %90 to float
  %92 = fsub fast float %59, %89
  %93 = fsub fast float %60, %91
  %94 = add i32 %85, 32
  %95 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 %94)  ; CBufferLoadLegacy(handle,regIndex)
  %96 = extractvalue %dx.types.CBufRet.i32 %95, 1
  %97 = and i32 %96, 1048575
  %98 = uitofp i32 %97 to float
  %99 = fcmp fast olt float %92, 0.000000e+00
  %100 = fcmp fast olt float %93, 0.000000e+00
  %101 = or i1 %99, %100
  %102 = fcmp fast ogt float %92, %98
  %103 = fcmp fast ogt float %93, %98
  %104 = or i1 %102, %103
  %105 = or i1 %101, %104
  br i1 %105, label %106, label %111, !dx.controlflow.hints !36

; <label>:106                                     ; preds = %220, %174, %172, %73
  %107 = phi i32 [ %74, %73 ], [ %113, %172 ], [ %84, %220 ], [ %113, %174 ]
  %108 = phi i32 [ %75, %73 ], [ %114, %172 ], [ %114, %220 ], [ %114, %174 ]
  %109 = phi float [ %76, %73 ], [ %76, %172 ], [ %218, %220 ], [ %76, %174 ]
  %110 = icmp eq i32 %82, 0
  br i1 %110, label %221, label %73

; <label>:111                                     ; preds = %73
  %112 = icmp ne i32 %75, 0
  %113 = select i1 %112, i32 %74, i32 %84
  %114 = select i1 %112, i32 %75, i32 1
  %115 = add i32 %85, 31
  %116 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 %115)  ; CBufferLoadLegacy(handle,regIndex)
  %117 = extractvalue %dx.types.CBufRet.i32 %116, 2
  %118 = and i32 %117, 134217728
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %171, label %120, !dx.controlflow.hints !37

; <label>:120                                     ; preds = %111
  %121 = and i32 %117, 16777215
  %122 = add i32 %121, 0
  %123 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %122, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %124 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 %86)  ; CBufferLoadLegacy(handle,regIndex)
  %125 = extractvalue %dx.types.CBufRet.i32 %124, 1
  %126 = bitcast i32 %125 to float
  %127 = extractvalue %dx.types.CBufRet.i32 %124, 2
  %128 = bitcast i32 %127 to float
  %129 = fsub fast float %59, %126
  %130 = fsub fast float %60, %128
  %131 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 %94)  ; CBufferLoadLegacy(handle,regIndex)
  %132 = extractvalue %dx.types.CBufRet.i32 %131, 1
  %133 = and i32 %132, 1048575
  %134 = uitofp i32 %133 to float
  %135 = fdiv fast float %129, %134
  %136 = fdiv fast float %130, %134
  %137 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 %115)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.i32 %137, 2
  %139 = lshr i32 %138, 24
  %140 = and i32 %139, 7
  %141 = or i32 %140, 8
  %142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 %141)  ; CBufferLoadLegacy(handle,regIndex)
  %143 = extractvalue %dx.types.CBufRet.f32 %142, 0
  %144 = extractvalue %dx.types.CBufRet.f32 %142, 2
  %145 = fdiv fast float 5.000000e-01, %143
  %146 = fmul fast float %145, 2.000000e+00
  %147 = fsub fast float 1.000000e+00, %146
  %148 = fmul fast float %147, %135
  %149 = fmul fast float %147, %136
  %150 = fadd fast float %148, %145
  %151 = fadd fast float %149, %145
  %152 = fmul fast float %143, %144
  %153 = fmul fast float %152, %150
  %154 = fmul fast float %152, %151
  %155 = fadd fast float %153, -5.000000e-01
  %156 = fadd fast float %154, -5.000000e-01
  %157 = fptoui float %155 to i32
  %158 = fptoui float %156 to i32
  %159 = lshr i32 %157, 3
  %160 = lshr i32 %158, 2
  %161 = shl nuw i32 %159, 3
  %162 = sub i32 %157, %161
  %163 = shl i32 %158, 3
  %164 = add i32 %163, %162
  %165 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %123, i32 0, i32 %159, i32 %160, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %166 = extractvalue %dx.types.ResRet.i32 %165, 0
  %167 = and i32 %164, 31
  %168 = shl i32 1, %167
  %169 = and i32 %168, %166
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %172, label %171, !dx.controlflow.hints !38

; <label>:171                                     ; preds = %120, %111
  br label %172

; <label>:172                                     ; preds = %171, %120
  %173 = phi i1 [ false, %171 ], [ true, %120 ]
  br i1 %173, label %106, label %174, !dx.controlflow.hints !39

; <label>:174                                     ; preds = %172
  %175 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 %86)  ; CBufferLoadLegacy(handle,regIndex)
  %176 = extractvalue %dx.types.CBufRet.i32 %175, 1
  %177 = bitcast i32 %176 to float
  %178 = extractvalue %dx.types.CBufRet.i32 %175, 2
  %179 = bitcast i32 %178 to float
  %180 = fsub fast float %59, %177
  %181 = fsub fast float %60, %179
  %182 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 %94)  ; CBufferLoadLegacy(handle,regIndex)
  %183 = extractvalue %dx.types.CBufRet.i32 %182, 1
  %184 = and i32 %183, 1048575
  %185 = uitofp i32 %184 to float
  %186 = fdiv fast float %180, %185
  %187 = fdiv fast float %181, %185
  %188 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 %115)  ; CBufferLoadLegacy(handle,regIndex)
  %189 = extractvalue %dx.types.CBufRet.i32 %188, 2
  %190 = lshr i32 %189, 24
  %191 = and i32 %190, 7
  %192 = or i32 %191, 8
  %193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 %192)  ; CBufferLoadLegacy(handle,regIndex)
  %194 = extractvalue %dx.types.CBufRet.f32 %193, 0
  %195 = extractvalue %dx.types.CBufRet.f32 %193, 2
  %196 = fdiv fast float 5.000000e-01, %194
  %197 = fmul fast float %196, 2.000000e+00
  %198 = fsub fast float 1.000000e+00, %197
  %199 = fmul fast float %198, %186
  %200 = fmul fast float %198, %187
  %201 = fadd fast float %199, %196
  %202 = fadd fast float %200, %196
  %203 = fmul fast float %201, %195
  %204 = fmul fast float %202, %195
  %205 = extractvalue %dx.types.CBufRet.i32 %188, 1
  %206 = and i32 %205, 16777215
  %207 = add i32 %206, 0
  %208 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %207, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %209 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 %86)  ; CBufferLoadLegacy(handle,regIndex)
  %210 = extractvalue %dx.types.CBufRet.i32 %209, 3
  %211 = bitcast i32 %210 to float
  %212 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 %115)  ; CBufferLoadLegacy(handle,regIndex)
  %213 = extractvalue %dx.types.CBufRet.i32 %212, 0
  %214 = bitcast i32 %213 to float
  %215 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %208, %dx.types.Handle %6, float %203, float %204, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %216 = extractvalue %dx.types.ResRet.f32 %215, 0
  %217 = fmul fast float %216, %214
  %218 = fadd fast float %217, %211
  %219 = fcmp fast ogt float %218, %76
  br i1 %219, label %220, label %106, !dx.controlflow.hints !40

; <label>:220                                     ; preds = %174
  br label %106

; <label>:221                                     ; preds = %106
  br label %222

; <label>:222                                     ; preds = %221, %65
  %223 = phi i32 [ %66, %65 ], [ %107, %221 ]
  %224 = phi i32 [ %67, %65 ], [ %108, %221 ]
  %225 = phi float [ %68, %65 ], [ %109, %221 ]
  %226 = add nuw nsw i32 %70, 1
  %227 = icmp eq i32 %226, 2
  br i1 %227, label %333, label %65

; <label>:228                                     ; preds = %329, %63
  %229 = phi i32 [ %330, %329 ], [ -1, %63 ]
  %230 = phi i32 [ %35, %329 ], [ %34, %63 ]
  %231 = phi i32 [ %331, %329 ], [ 0, %63 ]
  %232 = icmp eq i32 %230, 0
  br i1 %232, label %329, label %233

; <label>:233                                     ; preds = %228
  br label %234

; <label>:234                                     ; preds = %265, %233
  %235 = phi i32 [ %266, %265 ], [ %229, %233 ]
  %236 = phi i32 [ %241, %265 ], [ %230, %233 ]
  %237 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %236)  ; FirstbitLo(value)
  %238 = and i32 %237, 31
  %239 = shl i32 1, %238
  %240 = xor i32 %239, -1
  %241 = and i32 %236, %240
  %242 = shl i32 %231, 5
  %243 = add i32 %237, %242
  %244 = mul i32 %243, 3
  %245 = add i32 %244, 30
  %246 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 %245)  ; CBufferLoadLegacy(handle,regIndex)
  %247 = extractvalue %dx.types.CBufRet.i32 %246, 1
  %248 = bitcast i32 %247 to float
  %249 = extractvalue %dx.types.CBufRet.i32 %246, 2
  %250 = bitcast i32 %249 to float
  %251 = fsub fast float %59, %248
  %252 = fsub fast float %60, %250
  %253 = add i32 %244, 32
  %254 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 %253)  ; CBufferLoadLegacy(handle,regIndex)
  %255 = extractvalue %dx.types.CBufRet.i32 %254, 1
  %256 = and i32 %255, 1048575
  %257 = uitofp i32 %256 to float
  %258 = fcmp fast olt float %251, 0.000000e+00
  %259 = fcmp fast olt float %252, 0.000000e+00
  %260 = or i1 %258, %259
  %261 = fcmp fast ogt float %251, %257
  %262 = fcmp fast ogt float %252, %257
  %263 = or i1 %261, %262
  %264 = or i1 %260, %263
  br i1 %264, label %265, label %268, !dx.controlflow.hints !41

; <label>:265                                     ; preds = %326, %234
  %266 = phi i32 [ %235, %234 ], [ %243, %326 ]
  %267 = icmp eq i32 %241, 0
  br i1 %267, label %328, label %234

; <label>:268                                     ; preds = %234
  %269 = add i32 %244, 31
  %270 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 %269)  ; CBufferLoadLegacy(handle,regIndex)
  %271 = extractvalue %dx.types.CBufRet.i32 %270, 2
  %272 = and i32 %271, 134217728
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %325, label %274, !dx.controlflow.hints !37

; <label>:274                                     ; preds = %268
  %275 = and i32 %271, 16777215
  %276 = add i32 %275, 0
  %277 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %276, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %278 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 %245)  ; CBufferLoadLegacy(handle,regIndex)
  %279 = extractvalue %dx.types.CBufRet.i32 %278, 1
  %280 = bitcast i32 %279 to float
  %281 = extractvalue %dx.types.CBufRet.i32 %278, 2
  %282 = bitcast i32 %281 to float
  %283 = fsub fast float %59, %280
  %284 = fsub fast float %60, %282
  %285 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 %253)  ; CBufferLoadLegacy(handle,regIndex)
  %286 = extractvalue %dx.types.CBufRet.i32 %285, 1
  %287 = and i32 %286, 1048575
  %288 = uitofp i32 %287 to float
  %289 = fdiv fast float %283, %288
  %290 = fdiv fast float %284, %288
  %291 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 %269)  ; CBufferLoadLegacy(handle,regIndex)
  %292 = extractvalue %dx.types.CBufRet.i32 %291, 2
  %293 = lshr i32 %292, 24
  %294 = and i32 %293, 7
  %295 = or i32 %294, 8
  %296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 %295)  ; CBufferLoadLegacy(handle,regIndex)
  %297 = extractvalue %dx.types.CBufRet.f32 %296, 0
  %298 = extractvalue %dx.types.CBufRet.f32 %296, 2
  %299 = fdiv fast float 5.000000e-01, %297
  %300 = fmul fast float %299, 2.000000e+00
  %301 = fsub fast float 1.000000e+00, %300
  %302 = fmul fast float %301, %289
  %303 = fmul fast float %301, %290
  %304 = fadd fast float %302, %299
  %305 = fadd fast float %303, %299
  %306 = fmul fast float %297, %298
  %307 = fmul fast float %306, %304
  %308 = fmul fast float %306, %305
  %309 = fadd fast float %307, -5.000000e-01
  %310 = fadd fast float %308, -5.000000e-01
  %311 = fptoui float %309 to i32
  %312 = fptoui float %310 to i32
  %313 = lshr i32 %311, 3
  %314 = lshr i32 %312, 2
  %315 = shl nuw i32 %313, 3
  %316 = sub i32 %311, %315
  %317 = shl i32 %312, 3
  %318 = add i32 %317, %316
  %319 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %277, i32 0, i32 %313, i32 %314, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %320 = extractvalue %dx.types.ResRet.i32 %319, 0
  %321 = and i32 %318, 31
  %322 = shl i32 1, %321
  %323 = and i32 %322, %320
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %326, label %325, !dx.controlflow.hints !38

; <label>:325                                     ; preds = %274, %268
  br label %326

; <label>:326                                     ; preds = %325, %274
  %327 = phi i1 [ false, %325 ], [ true, %274 ]
  br i1 %327, label %265, label %334, !dx.controlflow.hints !42

; <label>:328                                     ; preds = %265
  br label %329

; <label>:329                                     ; preds = %328, %228
  %330 = phi i32 [ %229, %228 ], [ %266, %328 ]
  %331 = add nuw nsw i32 %231, 1
  %332 = icmp ult i32 %331, 2
  br i1 %332, label %228, label %335

; <label>:333                                     ; preds = %222
  br label %336

; <label>:334                                     ; preds = %326
  br label %336

; <label>:335                                     ; preds = %329
  br label %336

; <label>:336                                     ; preds = %335, %334, %333
  %337 = phi i32 [ %223, %333 ], [ %243, %334 ], [ %330, %335 ]
  %338 = icmp ne i32 %337, -1
  br i1 %338, label %339, label %1127, !dx.controlflow.hints !43

; <label>:339                                     ; preds = %336
  %340 = mul i32 %337, 3
  %341 = add i32 %340, 32
  %342 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 %341)  ; CBufferLoadLegacy(handle,regIndex)
  %343 = extractvalue %dx.types.CBufRet.i32 %342, 1
  %344 = lshr i32 %343, 20
  %345 = add i32 %340, 30
  %346 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 %345)  ; CBufferLoadLegacy(handle,regIndex)
  %347 = extractvalue %dx.types.CBufRet.i32 %346, 0
  %348 = extractvalue %dx.types.CBufRet.i32 %346, 1
  %349 = bitcast i32 %348 to float
  %350 = extractvalue %dx.types.CBufRet.i32 %346, 2
  %351 = bitcast i32 %350 to float
  %352 = fsub fast float %59, %349
  %353 = fsub fast float %60, %351
  %354 = fsub fast float %352, %349
  %355 = fsub fast float %353, %351
  %356 = and i32 %343, 1048575
  %357 = uitofp i32 %356 to float
  %358 = fdiv fast float %354, %357
  %359 = fdiv fast float %355, %357
  %360 = add i32 %340, 31
  %361 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 %360)  ; CBufferLoadLegacy(handle,regIndex)
  %362 = extractvalue %dx.types.CBufRet.i32 %361, 2
  %363 = lshr i32 %362, 24
  %364 = and i32 %363, 7
  %365 = or i32 %364, 8
  %366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 %365)  ; CBufferLoadLegacy(handle,regIndex)
  %367 = extractvalue %dx.types.CBufRet.f32 %366, 0
  %368 = extractvalue %dx.types.CBufRet.f32 %366, 2
  %369 = fdiv fast float 5.000000e-01, %367
  %370 = fmul fast float %369, 2.000000e+00
  %371 = fsub fast float 1.000000e+00, %370
  %372 = fmul fast float %371, %358
  %373 = fmul fast float %371, %359
  %374 = fadd fast float %372, %369
  %375 = fadd fast float %373, %369
  %376 = fmul fast float %374, %368
  %377 = fmul fast float %375, %368
  %378 = icmp eq i32 %347, 0
  br i1 %378, label %1094, label %379

; <label>:379                                     ; preds = %339
  br label %380

; <label>:380                                     ; preds = %1069, %379
  %381 = phi float [ %1091, %1069 ], [ 0.000000e+00, %379 ]
  %382 = phi float [ %971, %1069 ], [ 0.000000e+00, %379 ]
  %383 = phi float [ %866, %1069 ], [ 0.000000e+00, %379 ]
  %384 = phi float [ %863, %1069 ], [ 0.000000e+00, %379 ]
  %385 = phi float [ %858, %1069 ], [ 0.000000e+00, %379 ]
  %386 = phi float [ %859, %1069 ], [ 0.000000e+00, %379 ]
  %387 = phi float [ %860, %1069 ], [ 0.000000e+00, %379 ]
  %388 = phi float [ %1076, %1069 ], [ 0.000000e+00, %379 ]
  %389 = phi float [ %1070, %1069 ], [ 0.000000e+00, %379 ]
  %390 = phi float [ %1071, %1069 ], [ 0.000000e+00, %379 ]
  %391 = phi float [ %1072, %1069 ], [ 0.000000e+00, %379 ]
  %392 = phi float [ %963, %1069 ], [ 0.000000e+00, %379 ]
  %393 = phi i32 [ %398, %1069 ], [ %347, %379 ]
  %394 = phi i1 [ false, %1069 ], [ true, %379 ]
  %395 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %393)  ; FirstbitLo(value)
  %396 = and i32 %395, 31
  %397 = shl i32 1, %396
  %398 = xor i32 %397, %393
  %399 = add i32 %395, %344
  %400 = mul i32 %399, 100
  %401 = add i32 %400, 64
  %402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %401, i32 undef)  ; BufferLoad(srv,index,wot)
  %403 = extractvalue %dx.types.ResRet.i32 %402, 2
  %404 = call float @dx.op.legacyF16ToF32(i32 131, i32 %403)  ; LegacyF16ToF32(value)
  %405 = fdiv fast float 2.500000e+01, %404
  %406 = call float @dx.op.unary.f32(i32 23, float %405)  ; Log(value)
  %407 = fsub fast float 5.000000e-01, %50
  %408 = fadd fast float %407, %406
  %409 = call float @dx.op.unary.f32(i32 28, float %408)  ; Round_pi(value)
  %410 = fptosi float %409 to i32
  %411 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %410)  ; IMax(a,b)
  %412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %413 = extractvalue %dx.types.ResRet.i32 %412, 0
  %414 = bitcast i32 %413 to float
  %415 = extractvalue %dx.types.ResRet.i32 %412, 1
  %416 = bitcast i32 %415 to float
  %417 = extractvalue %dx.types.ResRet.i32 %412, 3
  %418 = bitcast i32 %417 to float
  %419 = add i32 %400, 16
  %420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %419, i32 undef)  ; BufferLoad(srv,index,wot)
  %421 = extractvalue %dx.types.ResRet.i32 %420, 0
  %422 = bitcast i32 %421 to float
  %423 = fmul fast float %414, %59
  %424 = call float @dx.op.tertiary.f32(i32 46, float %416, float %60, float %423)  ; FMad(a,b,c)
  %425 = fmul fast float %418, %59
  %426 = call float @dx.op.tertiary.f32(i32 46, float %422, float %60, float %425)  ; FMad(a,b,c)
  br i1 %394, label %434, label %427, !dx.controlflow.hints !44

; <label>:427                                     ; preds = %380
  %428 = extractvalue %dx.types.ResRet.i32 %420, 2
  %429 = and i32 %428, 16777215
  %430 = add i32 %429, 0
  %431 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %430, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %432 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %431, %dx.types.Handle %5, float %376, float %377, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %433 = extractvalue %dx.types.ResRet.f32 %432, 0
  br label %434

; <label>:434                                     ; preds = %427, %380
  %435 = phi float [ 1.000000e+00, %380 ], [ %433, %427 ]
  %436 = add i32 %400, 80
  %437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %436, i32 undef)  ; BufferLoad(srv,index,wot)
  %438 = extractvalue %dx.types.ResRet.i32 %437, 2
  %439 = and i32 %438, 4
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %498, label %441, !dx.controlflow.hints !45

; <label>:441                                     ; preds = %434
  %442 = add i32 %400, 32
  %443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %444 = extractvalue %dx.types.ResRet.i32 %443, 3
  %445 = and i32 %444, 16777215
  %446 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %447 = add i32 %445, 0
  %448 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %447, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %449 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %448, i32 0)  ; GetDimensions(handle,mipLevel)
  %450 = extractvalue %dx.types.Dimensions %449, 3
  %451 = sub nsw i32 %450, %411
  %452 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %451)  ; IMax(a,b)
  %453 = sitofp i32 %452 to float
  %454 = lshr i32 %444, 16
  %455 = and i32 %454, 15
  %456 = uitofp i32 %455 to float
  %457 = call float @dx.op.binary.f32(i32 35, float %456, float %453)  ; FMax(a,b)
  %458 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %448, %dx.types.Handle %446, float %424, float %426, float undef, float undef, i32 0, i32 0, i32 undef, float %457)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %459 = extractvalue %dx.types.ResRet.f32 %458, 0
  %460 = fsub fast float 1.000000e+00, %435
  %461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %419, i32 undef)  ; BufferLoad(srv,index,wot)
  %462 = extractvalue %dx.types.ResRet.i32 %461, 2
  %463 = lshr i32 %462, 24
  %464 = uitofp i32 %463 to float
  %465 = fmul fast float %464, 0x3F70101020000000
  %466 = extractvalue %dx.types.ResRet.i32 %461, 3
  %467 = lshr i32 %466, 24
  %468 = uitofp i32 %467 to float
  %469 = bitcast float %435 to i32
  %470 = sitofp i32 %469 to float
  %471 = fadd fast float %470, 0xC1CFBF8940000000
  %472 = fmul fast float %471, 0x3F70101020000000
  %473 = fmul fast float %472, %468
  %474 = fadd fast float %473, 0x41CFBF8940000000
  %475 = fptosi float %474 to i32
  %476 = bitcast i32 %475 to float
  %477 = bitcast float %460 to i32
  %478 = sitofp i32 %477 to float
  %479 = fadd fast float %478, 0xC1CFBF8940000000
  %480 = fmul fast float %479, 0x3F70101020000000
  %481 = fmul fast float %480, %468
  %482 = fadd fast float %481, 0x41CFBF8940000000
  %483 = fptosi float %482 to i32
  %484 = bitcast i32 %483 to float
  %485 = fmul fast float %476, %465
  %486 = fmul fast float %484, %465
  %487 = fsub fast float %460, %485
  %488 = fadd fast float %486, %460
  %489 = call float @dx.op.unary.f32(i32 7, float %487)  ; Saturate(value)
  %490 = call float @dx.op.unary.f32(i32 7, float %488)  ; Saturate(value)
  %491 = fsub fast float %459, %489
  %492 = fsub fast float %490, %489
  %493 = bitcast float %492 to i32
  %494 = sub nsw i32 2129859010, %493
  %495 = bitcast i32 %494 to float
  %496 = fmul fast float %495, %491
  %497 = call float @dx.op.unary.f32(i32 7, float %496)  ; Saturate(value)
  br label %498

; <label>:498                                     ; preds = %441, %434
  %499 = phi float [ %497, %441 ], [ 1.000000e+00, %434 ]
  %500 = phi float [ 1.000000e+00, %441 ], [ %435, %434 ]
  %501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %436, i32 undef)  ; BufferLoad(srv,index,wot)
  %502 = extractvalue %dx.types.ResRet.i32 %501, 2
  %503 = and i32 %502, 65536
  %504 = icmp eq i32 %503, 0
  br i1 %504, label %525, label %505, !dx.controlflow.hints !46

; <label>:505                                     ; preds = %498
  %506 = add i32 %400, 32
  %507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %506, i32 undef)  ; BufferLoad(srv,index,wot)
  %508 = extractvalue %dx.types.ResRet.i32 %507, 2
  %509 = and i32 %508, 16777215
  %510 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %511 = add i32 %509, 0
  %512 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %511, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %513 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %512, i32 0)  ; GetDimensions(handle,mipLevel)
  %514 = extractvalue %dx.types.Dimensions %513, 3
  %515 = sub nsw i32 %514, %411
  %516 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %515)  ; IMax(a,b)
  %517 = sitofp i32 %516 to float
  %518 = lshr i32 %508, 16
  %519 = and i32 %518, 15
  %520 = uitofp i32 %519 to float
  %521 = call float @dx.op.binary.f32(i32 35, float %520, float %517)  ; FMax(a,b)
  %522 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %512, %dx.types.Handle %510, float %424, float %426, float undef, float undef, i32 0, i32 0, i32 undef, float %521)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %523 = extractvalue %dx.types.ResRet.f32 %522, 0
  %524 = fmul fast float %523, %500
  br label %525

; <label>:525                                     ; preds = %505, %498
  %526 = phi float [ %524, %505 ], [ %500, %498 ]
  %527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %436, i32 undef)  ; BufferLoad(srv,index,wot)
  %528 = extractvalue %dx.types.ResRet.i32 %527, 2
  %529 = and i32 %528, 131072
  %530 = icmp ne i32 %529, 0
  %531 = fcmp fast ogt float %526, 0x3FE0101020000000
  %532 = select i1 %531, float 1.000000e+00, float 0.000000e+00
  %533 = select i1 %530, float %532, float %526
  %534 = fmul fast float %533, %499
  %535 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %536 = extractvalue %dx.types.CBufRet.i32 %535, 3
  %537 = and i32 %536, 2
  %538 = icmp eq i32 %537, 0
  br i1 %538, label %548, label %539, !dx.controlflow.hints !47

; <label>:539                                     ; preds = %525
  %540 = call float @dx.op.unary.f32(i32 7, float %534)  ; Saturate(value)
  %541 = fmul fast float %540, %540
  %542 = fmul fast float %541, %540
  %543 = fmul fast float %540, 6.000000e+00
  %544 = fadd fast float %543, -1.500000e+01
  %545 = fmul fast float %544, %540
  %546 = fadd fast float %545, 1.000000e+01
  %547 = fmul fast float %542, %546
  br label %548

; <label>:548                                     ; preds = %539, %525
  %549 = phi float [ %547, %539 ], [ %534, %525 ]
  %550 = select i1 %394, float %435, float %549
  %551 = and i32 %528, 4194304
  %552 = icmp eq i32 %551, 0
  br i1 %552, label %574, label %553, !dx.controlflow.hints !48

; <label>:553                                     ; preds = %548
  %554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %401, i32 undef)  ; BufferLoad(srv,index,wot)
  %555 = extractvalue %dx.types.ResRet.i32 %554, 2
  %556 = lshr i32 %555, 16
  %557 = call float @dx.op.legacyF16ToF32(i32 131, i32 %556)  ; LegacyF16ToF32(value)
  %558 = extractvalue %dx.types.ResRet.i32 %554, 3
  %559 = call float @dx.op.legacyF16ToF32(i32 131, i32 %558)  ; LegacyF16ToF32(value)
  %560 = fadd fast float %50, -1.000000e+00
  %561 = fdiv fast float %560, %559
  %562 = call float @dx.op.unary.f32(i32 7, float %561)  ; Saturate(value)
  %563 = fmul fast float %557, 8.000000e+00
  %564 = fadd fast float %563, 1.000000e+00
  %565 = fdiv fast float 1.000000e+00, %564
  %566 = call float @dx.op.legacyF16ToF32(i32 131, i32 %555)  ; LegacyF16ToF32(value)
  %567 = fmul fast float %566, %565
  %568 = fdiv fast float 2.500000e+01, %567
  %569 = call float @dx.op.unary.f32(i32 23, float %568)  ; Log(value)
  %570 = fadd fast float %407, %569
  %571 = call float @dx.op.unary.f32(i32 28, float %570)  ; Round_pi(value)
  %572 = fptosi float %571 to i32
  %573 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %572)  ; IMax(a,b)
  br label %574

; <label>:574                                     ; preds = %553, %548
  %575 = phi float [ %565, %553 ], [ 1.000000e+00, %548 ]
  %576 = phi i32 [ %573, %553 ], [ %411, %548 ]
  %577 = phi float [ %562, %553 ], [ 1.000000e+00, %548 ]
  %578 = add i32 %400, 32
  %579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %578, i32 undef)  ; BufferLoad(srv,index,wot)
  %580 = extractvalue %dx.types.ResRet.i32 %579, 1
  %581 = and i32 %580, 16777215
  %582 = icmp eq i32 %581, 0
  br i1 %582, label %817, label %583, !dx.controlflow.hints !49

; <label>:583                                     ; preds = %574
  %584 = fmul fast float %575, %424
  %585 = fmul fast float %575, %426
  %586 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %587 = add i32 %581, 0
  %588 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %587, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %589 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %588, i32 0)  ; GetDimensions(handle,mipLevel)
  %590 = extractvalue %dx.types.Dimensions %589, 3
  %591 = sub nsw i32 %590, %576
  %592 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %591)  ; IMax(a,b)
  %593 = sitofp i32 %592 to float
  %594 = lshr i32 %580, 16
  %595 = and i32 %594, 15
  %596 = uitofp i32 %595 to float
  %597 = call float @dx.op.binary.f32(i32 35, float %596, float %593)  ; FMax(a,b)
  %598 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %588, %dx.types.Handle %586, float %584, float %585, float undef, float undef, i32 0, i32 0, i32 undef, float %597)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %599 = extractvalue %dx.types.ResRet.f32 %598, 0
  %600 = extractvalue %dx.types.ResRet.f32 %598, 1
  %601 = extractvalue %dx.types.ResRet.f32 %598, 2
  %602 = extractvalue %dx.types.ResRet.f32 %598, 3
  %603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %419, i32 undef)  ; BufferLoad(srv,index,wot)
  %604 = extractvalue %dx.types.ResRet.i32 %603, 3
  %605 = and i32 %604, 255
  %606 = uitofp i32 %605 to float
  %607 = lshr i32 %604, 8
  %608 = and i32 %607, 255
  %609 = uitofp i32 %608 to float
  %610 = lshr i32 %604, 16
  %611 = and i32 %610, 255
  %612 = uitofp i32 %611 to float
  %613 = fmul fast float %612, 0x3F70101000000000
  %614 = fmul fast float %606, %599
  %615 = fadd fast float %614, %609
  %616 = fmul fast float %615, 0x3F70101000000000
  %617 = fadd fast float %600, -5.000000e-01
  %618 = fadd fast float %602, -5.000000e-01
  %619 = fmul fast float %613, %617
  %620 = fmul fast float %613, %618
  %621 = fadd fast float %619, 5.000000e-01
  %622 = fadd fast float %620, 5.000000e-01
  %623 = fcmp fast olt float %577, 1.000000e+00
  br i1 %623, label %624, label %799, !dx.controlflow.hints !50

; <label>:624                                     ; preds = %583
  %625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %436, i32 undef)  ; BufferLoad(srv,index,wot)
  %626 = extractvalue %dx.types.ResRet.i32 %625, 2
  %627 = and i32 %626, 4194304
  %628 = icmp eq i32 %627, 0
  br i1 %628, label %730, label %629, !dx.controlflow.hints !51

; <label>:629                                     ; preds = %624
  %630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %578, i32 undef)  ; BufferLoad(srv,index,wot)
  %631 = extractvalue %dx.types.ResRet.i32 %630, 1
  %632 = and i32 %631, 16777215
  %633 = add i32 %632, 0
  %634 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %633, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %635 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %634, i32 0)  ; GetDimensions(handle,mipLevel)
  %636 = extractvalue %dx.types.Dimensions %635, 3
  %637 = sub nsw i32 %636, %411
  %638 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %637)  ; IMax(a,b)
  %639 = sitofp i32 %638 to float
  %640 = lshr i32 %631, 16
  %641 = and i32 %640, 15
  %642 = uitofp i32 %641 to float
  %643 = call float @dx.op.binary.f32(i32 35, float %642, float %639)  ; FMax(a,b)
  %644 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %634, %dx.types.Handle %586, float %424, float %426, float undef, float undef, i32 0, i32 0, i32 undef, float %643)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %645 = extractvalue %dx.types.ResRet.f32 %644, 0
  %646 = extractvalue %dx.types.ResRet.f32 %644, 1
  %647 = extractvalue %dx.types.ResRet.f32 %644, 2
  %648 = extractvalue %dx.types.ResRet.f32 %644, 3
  %649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %419, i32 undef)  ; BufferLoad(srv,index,wot)
  %650 = extractvalue %dx.types.ResRet.i32 %649, 3
  %651 = and i32 %650, 255
  %652 = uitofp i32 %651 to float
  %653 = lshr i32 %650, 8
  %654 = and i32 %653, 255
  %655 = uitofp i32 %654 to float
  %656 = lshr i32 %650, 16
  %657 = and i32 %656, 255
  %658 = uitofp i32 %657 to float
  %659 = fmul fast float %658, 0x3F70101000000000
  %660 = fmul fast float %652, %645
  %661 = fadd fast float %646, -5.000000e-01
  %662 = fadd fast float %648, -5.000000e-01
  %663 = fmul fast float %659, %661
  %664 = fmul fast float %659, %662
  %665 = fadd fast float %663, 5.000000e-01
  %666 = fadd fast float %664, 5.000000e-01
  %667 = fmul fast float %621, 2.000000e+00
  %668 = fadd fast float %667, -1.000000e+00
  %669 = fmul fast float %622, 2.000000e+00
  %670 = fadd fast float %669, -1.000000e+00
  %671 = fadd fast float %668, %670
  %672 = fmul fast float %671, 5.000000e-01
  %673 = fsub fast float %668, %670
  %674 = fmul fast float %673, 5.000000e-01
  %675 = call float @dx.op.unary.f32(i32 6, float %672)  ; FAbs(value)
  %676 = fsub fast float 1.000000e+00, %675
  %677 = call float @dx.op.unary.f32(i32 6, float %674)  ; FAbs(value)
  %678 = fsub fast float %676, %677
  %679 = call float @dx.op.dot3.f32(i32 55, float %672, float %674, float %678, float %672, float %674, float %678)  ; Dot3(ax,ay,az,bx,by,bz)
  %680 = call float @dx.op.unary.f32(i32 25, float %679)  ; Rsqrt(value)
  %681 = fmul fast float %680, %672
  %682 = fmul fast float %680, %674
  %683 = fmul fast float %680, %678
  %684 = fmul fast float %665, 2.000000e+00
  %685 = fadd fast float %684, -1.000000e+00
  %686 = fmul fast float %666, 2.000000e+00
  %687 = fadd fast float %686, -1.000000e+00
  %688 = fadd fast float %685, %687
  %689 = fmul fast float %688, 5.000000e-01
  %690 = fsub fast float %685, %687
  %691 = fmul fast float %690, 5.000000e-01
  %692 = call float @dx.op.unary.f32(i32 6, float %689)  ; FAbs(value)
  %693 = fsub fast float 1.000000e+00, %692
  %694 = call float @dx.op.unary.f32(i32 6, float %691)  ; FAbs(value)
  %695 = fsub fast float %693, %694
  %696 = call float @dx.op.dot3.f32(i32 55, float %689, float %691, float %695, float %689, float %691, float %695)  ; Dot3(ax,ay,az,bx,by,bz)
  %697 = call float @dx.op.unary.f32(i32 25, float %696)  ; Rsqrt(value)
  %698 = fmul fast float %689, %697
  %699 = fmul fast float %691, %697
  %700 = fmul fast float %697, %695
  %701 = fadd fast float %700, -7.500000e-01
  %702 = fmul fast float %701, 4.000000e+00
  %703 = call float @dx.op.unary.f32(i32 7, float %702)  ; Saturate(value)
  %704 = fmul fast float %703, %577
  %705 = fsub fast float 1.000000e+00, %704
  %706 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %401, i32 undef)  ; BufferLoad(srv,index,wot)
  %707 = extractvalue %dx.types.ResRet.i32 %706, 3
  %708 = lshr i32 %707, 16
  %709 = call float @dx.op.legacyF16ToF32(i32 131, i32 %708)  ; LegacyF16ToF32(value)
  %710 = fmul fast float %709, %577
  %711 = fadd fast float %710, %705
  %712 = fdiv fast float %705, %711
  %713 = fsub fast float %698, %681
  %714 = fsub fast float %699, %682
  %715 = fsub fast float %700, %683
  %716 = fmul fast float %713, %712
  %717 = fmul fast float %714, %712
  %718 = fmul fast float %712, %715
  %719 = fadd fast float %716, %681
  %720 = fadd fast float %717, %682
  %721 = fadd fast float %718, %683
  %722 = fsub fast float %647, %601
  %723 = fmul fast float %712, %722
  %724 = fadd fast float %723, %601
  %725 = fsub fast float %655, %615
  %726 = fadd fast float %725, %660
  %727 = fmul fast float %726, 0x3F70101000000000
  %728 = fmul fast float %727, %712
  %729 = fadd fast float %728, %616
  br label %817

; <label>:730                                     ; preds = %624
  %731 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %578, i32 undef)  ; BufferLoad(srv,index,wot)
  %732 = extractvalue %dx.types.ResRet.i32 %731, 1
  %733 = and i32 %732, 16777215
  %734 = add i32 %733, 0
  %735 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %734, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %736 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %735, i32 0)  ; GetDimensions(handle,mipLevel)
  %737 = extractvalue %dx.types.Dimensions %736, 3
  %738 = sub nsw i32 %737, %411
  %739 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %738)  ; IMax(a,b)
  %740 = sitofp i32 %739 to float
  %741 = lshr i32 %732, 16
  %742 = and i32 %741, 15
  %743 = uitofp i32 %742 to float
  %744 = call float @dx.op.binary.f32(i32 35, float %743, float %740)  ; FMax(a,b)
  %745 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %735, %dx.types.Handle %586, float %424, float %426, float undef, float undef, i32 0, i32 0, i32 undef, float %744)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %746 = extractvalue %dx.types.ResRet.f32 %745, 0
  %747 = extractvalue %dx.types.ResRet.f32 %745, 1
  %748 = extractvalue %dx.types.ResRet.f32 %745, 2
  %749 = extractvalue %dx.types.ResRet.f32 %745, 3
  %750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %419, i32 undef)  ; BufferLoad(srv,index,wot)
  %751 = extractvalue %dx.types.ResRet.i32 %750, 3
  %752 = and i32 %751, 255
  %753 = uitofp i32 %752 to float
  %754 = lshr i32 %751, 8
  %755 = and i32 %754, 255
  %756 = uitofp i32 %755 to float
  %757 = lshr i32 %751, 16
  %758 = and i32 %757, 255
  %759 = uitofp i32 %758 to float
  %760 = fmul fast float %759, 0x3F70101000000000
  %761 = fmul fast float %753, %746
  %762 = fadd fast float %761, %756
  %763 = fadd fast float %747, -5.000000e-01
  %764 = fadd fast float %749, -5.000000e-01
  %765 = fmul fast float %760, %763
  %766 = fmul fast float %760, %764
  %767 = fadd fast float %765, 5.000000e-01
  %768 = fadd fast float %766, 5.000000e-01
  %769 = fsub fast float %615, %762
  %770 = fsub fast float %621, %767
  %771 = fsub fast float %601, %748
  %772 = fsub fast float %622, %768
  %773 = fmul fast float %769, %577
  %774 = fmul fast float %770, %577
  %775 = fmul fast float %771, %577
  %776 = fmul fast float %772, %577
  %777 = fadd fast float %773, %762
  %778 = fmul fast float %777, 0x3F70101000000000
  %779 = fadd fast float %774, %767
  %780 = fadd fast float %775, %748
  %781 = fadd fast float %776, %768
  %782 = fmul fast float %779, 2.000000e+00
  %783 = fadd fast float %782, -1.000000e+00
  %784 = fmul fast float %781, 2.000000e+00
  %785 = fadd fast float %784, -1.000000e+00
  %786 = fadd fast float %783, %785
  %787 = fmul fast float %786, 5.000000e-01
  %788 = fsub fast float %783, %785
  %789 = fmul fast float %788, 5.000000e-01
  %790 = call float @dx.op.unary.f32(i32 6, float %787)  ; FAbs(value)
  %791 = fsub fast float 1.000000e+00, %790
  %792 = call float @dx.op.unary.f32(i32 6, float %789)  ; FAbs(value)
  %793 = fsub fast float %791, %792
  %794 = call float @dx.op.dot3.f32(i32 55, float %787, float %789, float %793, float %787, float %789, float %793)  ; Dot3(ax,ay,az,bx,by,bz)
  %795 = call float @dx.op.unary.f32(i32 25, float %794)  ; Rsqrt(value)
  %796 = fmul fast float %787, %795
  %797 = fmul fast float %789, %795
  %798 = fmul fast float %795, %793
  br label %817

; <label>:799                                     ; preds = %583
  %800 = fmul fast float %621, 2.000000e+00
  %801 = fadd fast float %800, -1.000000e+00
  %802 = fmul fast float %622, 2.000000e+00
  %803 = fadd fast float %802, -1.000000e+00
  %804 = fadd fast float %801, %803
  %805 = fmul fast float %804, 5.000000e-01
  %806 = fsub fast float %801, %803
  %807 = fmul fast float %806, 5.000000e-01
  %808 = call float @dx.op.unary.f32(i32 6, float %805)  ; FAbs(value)
  %809 = fsub fast float 1.000000e+00, %808
  %810 = call float @dx.op.unary.f32(i32 6, float %807)  ; FAbs(value)
  %811 = fsub fast float %809, %810
  %812 = call float @dx.op.dot3.f32(i32 55, float %805, float %807, float %811, float %805, float %807, float %811)  ; Dot3(ax,ay,az,bx,by,bz)
  %813 = call float @dx.op.unary.f32(i32 25, float %812)  ; Rsqrt(value)
  %814 = fmul fast float %813, %805
  %815 = fmul fast float %813, %807
  %816 = fmul fast float %813, %811
  br label %817

; <label>:817                                     ; preds = %799, %730, %629, %574
  %818 = phi float [ %719, %629 ], [ %796, %730 ], [ %814, %799 ], [ 0.000000e+00, %574 ]
  %819 = phi float [ %720, %629 ], [ %797, %730 ], [ %815, %799 ], [ 0.000000e+00, %574 ]
  %820 = phi float [ %721, %629 ], [ %798, %730 ], [ %816, %799 ], [ 1.000000e+00, %574 ]
  %821 = phi float [ %724, %629 ], [ %780, %730 ], [ %601, %799 ], [ 1.000000e+00, %574 ]
  %822 = phi float [ %729, %629 ], [ %778, %730 ], [ %616, %799 ], [ 0x3FD6666660000000, %574 ]
  %823 = fmul fast float %818, %414
  %824 = call float @dx.op.tertiary.f32(i32 46, float %819, float %418, float %823)  ; FMad(a,b,c)
  %825 = fmul fast float %818, %416
  %826 = call float @dx.op.tertiary.f32(i32 46, float %819, float %422, float %825)  ; FMad(a,b,c)
  %827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %401, i32 undef)  ; BufferLoad(srv,index,wot)
  %828 = extractvalue %dx.types.ResRet.i32 %827, 2
  %829 = call float @dx.op.legacyF16ToF32(i32 131, i32 %828)  ; LegacyF16ToF32(value)
  %830 = fdiv fast float %824, %829
  %831 = fdiv fast float %826, %829
  %832 = xor i1 %394, true
  %833 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %834 = extractvalue %dx.types.CBufRet.i32 %833, 3
  %835 = and i32 %834, 1
  %836 = icmp ne i32 %835, 0
  %837 = and i1 %836, %832
  br i1 %837, label %838, label %850, !dx.controlflow.hints !52

; <label>:838                                     ; preds = %817
  %839 = call float @dx.op.unary.f32(i32 7, float %820)  ; Saturate(value)
  %840 = fmul fast float %839, 0x3FECCCCCC0000000
  %841 = fsub fast float 1.000000e+00, %840
  %842 = fmul fast float %841, %550
  %843 = fsub fast float 1.000000e+00, %550
  %844 = call float @dx.op.unary.f32(i32 7, float %387)  ; Saturate(value)
  %845 = fmul fast float %844, 0x3FECCCCCC0000000
  %846 = fsub fast float 1.000000e+00, %845
  %847 = fmul fast float %846, %843
  %848 = fadd fast float %847, %842
  %849 = fdiv fast float %842, %848
  br label %850

; <label>:850                                     ; preds = %838, %817
  %851 = phi float [ %849, %838 ], [ %550, %817 ]
  %852 = fsub fast float %830, %385
  %853 = fsub fast float %831, %386
  %854 = fsub fast float %820, %387
  %855 = fmul fast float %851, %852
  %856 = fmul fast float %851, %853
  %857 = fmul fast float %851, %854
  %858 = fadd fast float %855, %385
  %859 = fadd fast float %856, %386
  %860 = fadd fast float %857, %387
  %861 = fsub fast float %821, %384
  %862 = fmul fast float %851, %861
  %863 = fadd fast float %862, %384
  %864 = fsub fast float %822, %383
  %865 = fmul fast float %851, %864
  %866 = fadd fast float %865, %383
  %867 = fmul fast float %575, %424
  %868 = fmul fast float %575, %426
  %869 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %578, i32 undef)  ; BufferLoad(srv,index,wot)
  %870 = extractvalue %dx.types.ResRet.i32 %869, 0
  %871 = and i32 %870, 16777215
  %872 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %873 = add i32 %871, 0
  %874 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %873, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %875 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %874, i32 0)  ; GetDimensions(handle,mipLevel)
  %876 = extractvalue %dx.types.Dimensions %875, 3
  %877 = sub nsw i32 %876, %576
  %878 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %877)  ; IMax(a,b)
  %879 = sitofp i32 %878 to float
  %880 = lshr i32 %870, 16
  %881 = and i32 %880, 15
  %882 = uitofp i32 %881 to float
  %883 = call float @dx.op.binary.f32(i32 35, float %882, float %879)  ; FMax(a,b)
  %884 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %874, %dx.types.Handle %872, float %867, float %868, float undef, float undef, i32 0, i32 0, i32 undef, float %883)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %885 = extractvalue %dx.types.ResRet.f32 %884, 0
  %886 = extractvalue %dx.types.ResRet.f32 %884, 1
  %887 = extractvalue %dx.types.ResRet.f32 %884, 2
  %888 = extractvalue %dx.types.ResRet.f32 %884, 3
  %889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %436, i32 undef)  ; BufferLoad(srv,index,wot)
  %890 = extractvalue %dx.types.ResRet.i32 %889, 0
  %891 = lshr i32 %890, 16
  %892 = and i32 %891, 255
  %893 = uitofp i32 %892 to float
  %894 = lshr i32 %890, 24
  %895 = uitofp i32 %894 to float
  %896 = fmul fast float %893, %888
  %897 = fadd fast float %896, %895
  %898 = fcmp fast olt float %577, 1.000000e+00
  br i1 %898, label %899, label %940, !dx.controlflow.hints !53

; <label>:899                                     ; preds = %850
  %900 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %578, i32 undef)  ; BufferLoad(srv,index,wot)
  %901 = extractvalue %dx.types.ResRet.i32 %900, 0
  %902 = and i32 %901, 16777215
  %903 = add i32 %902, 0
  %904 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %903, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %905 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %904, i32 0)  ; GetDimensions(handle,mipLevel)
  %906 = extractvalue %dx.types.Dimensions %905, 3
  %907 = sub nsw i32 %906, %411
  %908 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %907)  ; IMax(a,b)
  %909 = sitofp i32 %908 to float
  %910 = lshr i32 %901, 16
  %911 = and i32 %910, 15
  %912 = uitofp i32 %911 to float
  %913 = call float @dx.op.binary.f32(i32 35, float %912, float %909)  ; FMax(a,b)
  %914 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %904, %dx.types.Handle %872, float %424, float %426, float undef, float undef, i32 0, i32 0, i32 undef, float %913)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %915 = extractvalue %dx.types.ResRet.f32 %914, 0
  %916 = extractvalue %dx.types.ResRet.f32 %914, 1
  %917 = extractvalue %dx.types.ResRet.f32 %914, 2
  %918 = extractvalue %dx.types.ResRet.f32 %914, 3
  %919 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %436, i32 undef)  ; BufferLoad(srv,index,wot)
  %920 = extractvalue %dx.types.ResRet.i32 %919, 0
  %921 = lshr i32 %920, 16
  %922 = and i32 %921, 255
  %923 = uitofp i32 %922 to float
  %924 = lshr i32 %920, 24
  %925 = uitofp i32 %924 to float
  %926 = fmul fast float %923, %918
  %927 = fadd fast float %926, %925
  %928 = fsub fast float %885, %915
  %929 = fsub fast float %886, %916
  %930 = fsub fast float %887, %917
  %931 = fsub fast float %897, %927
  %932 = fmul fast float %928, %577
  %933 = fmul fast float %929, %577
  %934 = fmul fast float %930, %577
  %935 = fmul fast float %931, %577
  %936 = fadd fast float %932, %915
  %937 = fadd fast float %933, %916
  %938 = fadd fast float %934, %917
  %939 = fadd fast float %935, %927
  br label %940

; <label>:940                                     ; preds = %899, %850
  %941 = phi float [ %936, %899 ], [ %885, %850 ]
  %942 = phi float [ %937, %899 ], [ %886, %850 ]
  %943 = phi float [ %938, %899 ], [ %887, %850 ]
  %944 = phi float [ %939, %899 ], [ %897, %850 ]
  %945 = fmul float %944, 0x3F70101000000000
  %946 = call float @dx.op.unary.f32(i32 24, float %941)  ; Sqrt(value)
  %947 = call float @dx.op.unary.f32(i32 24, float %942)  ; Sqrt(value)
  %948 = call float @dx.op.unary.f32(i32 24, float %943)  ; Sqrt(value)
  %949 = fmul fast float %946, %946
  %950 = fmul fast float %947, %947
  %951 = fmul fast float %948, %948
  %952 = fsub fast float %949, %389
  %953 = fsub fast float %950, %390
  %954 = fsub fast float %951, %391
  %955 = fsub fast float %945, %392
  %956 = fmul fast float %952, %851
  %957 = fmul fast float %953, %851
  %958 = fmul fast float %954, %851
  %959 = fmul fast float %955, %851
  %960 = fadd fast float %956, %389
  %961 = fadd fast float %957, %390
  %962 = fadd fast float %958, %391
  %963 = fadd fast float %959, %392
  %964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %578, i32 undef)  ; BufferLoad(srv,index,wot)
  %965 = extractvalue %dx.types.ResRet.i32 %964, 0
  %966 = lshr i32 %965, 24
  %967 = uitofp i32 %966 to float
  %968 = fmul fast float %967, 0x3F70101020000000
  %969 = fsub fast float %968, %382
  %970 = fmul fast float %969, %851
  %971 = fadd fast float %970, %382
  %972 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %436, i32 undef)  ; BufferLoad(srv,index,wot)
  %973 = extractvalue %dx.types.ResRet.i32 %972, 2
  %974 = and i32 %973, 8
  %975 = icmp eq i32 %974, 0
  br i1 %975, label %1069, label %976, !dx.controlflow.hints !54

; <label>:976                                     ; preds = %940
  %977 = add i32 %400, 48
  %978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %977, i32 undef)  ; BufferLoad(srv,index,wot)
  %979 = extractvalue %dx.types.ResRet.i32 %978, 1
  %980 = and i32 %979, 16777215
  %981 = add i32 %980, 0
  %982 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %981, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %983 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %982, i32 0)  ; GetDimensions(handle,mipLevel)
  %984 = extractvalue %dx.types.Dimensions %983, 3
  %985 = sub nsw i32 %984, %576
  %986 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %985)  ; IMax(a,b)
  %987 = sitofp i32 %986 to float
  %988 = lshr i32 %979, 16
  %989 = and i32 %988, 15
  %990 = uitofp i32 %989 to float
  %991 = call float @dx.op.binary.f32(i32 35, float %990, float %987)  ; FMax(a,b)
  %992 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %982, %dx.types.Handle %872, float %867, float %868, float undef, float undef, i32 0, i32 0, i32 undef, float %991)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %993 = extractvalue %dx.types.ResRet.f32 %992, 0
  %994 = extractvalue %dx.types.ResRet.f32 %992, 1
  %995 = extractvalue %dx.types.ResRet.f32 %992, 2
  br i1 %898, label %996, label %1015, !dx.controlflow.hints !55

; <label>:996                                     ; preds = %976
  %997 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %977, i32 undef)  ; BufferLoad(srv,index,wot)
  %998 = extractvalue %dx.types.ResRet.i32 %997, 1
  %999 = and i32 %998, 16777215
  %1000 = add i32 %999, 0
  %1001 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1000, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1002 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1001, i32 0)  ; GetDimensions(handle,mipLevel)
  %1003 = extractvalue %dx.types.Dimensions %1002, 3
  %1004 = sub nsw i32 %1003, %411
  %1005 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %1004)  ; IMax(a,b)
  %1006 = sitofp i32 %1005 to float
  %1007 = lshr i32 %998, 16
  %1008 = and i32 %1007, 15
  %1009 = uitofp i32 %1008 to float
  %1010 = call float @dx.op.binary.f32(i32 35, float %1009, float %1006)  ; FMax(a,b)
  %1011 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1001, %dx.types.Handle %872, float %424, float %426, float undef, float undef, i32 0, i32 0, i32 undef, float %1010)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1012 = extractvalue %dx.types.ResRet.f32 %1011, 0
  %1013 = extractvalue %dx.types.ResRet.f32 %1011, 1
  %1014 = extractvalue %dx.types.ResRet.f32 %1011, 2
  br label %1015

; <label>:1015                                    ; preds = %996, %976
  %1016 = phi float [ %1012, %996 ], [ %993, %976 ]
  %1017 = phi float [ %1013, %996 ], [ %994, %976 ]
  %1018 = phi float [ %1014, %996 ], [ %995, %976 ]
  %1019 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %436, i32 undef)  ; BufferLoad(srv,index,wot)
  %1020 = extractvalue %dx.types.ResRet.i32 %1019, 0
  %1021 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1020)  ; LegacyF16ToF32(value)
  %1022 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %1023 = extractvalue %dx.types.CBufRet.i32 %1022, 1
  %1024 = icmp eq i32 %1023, 2
  br i1 %1024, label %1025, label %1069, !dx.controlflow.hints !56

; <label>:1025                                    ; preds = %1015
  %1026 = call float @dx.op.binary.f32(i32 36, float %960, float 0x3FEFAE1480000000)  ; FMin(a,b)
  %1027 = call float @dx.op.binary.f32(i32 36, float %961, float 0x3FEFAE1480000000)  ; FMin(a,b)
  %1028 = call float @dx.op.binary.f32(i32 36, float %962, float 0x3FEFAE1480000000)  ; FMin(a,b)
  %1029 = fsub fast float 1.000000e+00, %1026
  %1030 = fsub fast float 1.000000e+00, %1027
  %1031 = fsub fast float 1.000000e+00, %1028
  %1032 = call float @dx.op.unary.f32(i32 23, float %1029)  ; Log(value)
  %1033 = call float @dx.op.unary.f32(i32 23, float %1030)  ; Log(value)
  %1034 = call float @dx.op.unary.f32(i32 23, float %1031)  ; Log(value)
  %1035 = call float @dx.op.binary.f32(i32 36, float %1016, float 0x3FEFAE1480000000)  ; FMin(a,b)
  %1036 = call float @dx.op.binary.f32(i32 36, float %1017, float 0x3FEFAE1480000000)  ; FMin(a,b)
  %1037 = call float @dx.op.binary.f32(i32 36, float %1018, float 0x3FEFAE1480000000)  ; FMin(a,b)
  %1038 = fsub fast float 1.000000e+00, %1035
  %1039 = fsub fast float 1.000000e+00, %1036
  %1040 = fsub fast float 1.000000e+00, %1037
  %1041 = call float @dx.op.unary.f32(i32 23, float %1038)  ; Log(value)
  %1042 = call float @dx.op.unary.f32(i32 23, float %1039)  ; Log(value)
  %1043 = call float @dx.op.unary.f32(i32 23, float %1040)  ; Log(value)
  %1044 = fmul fast float %549, %1041
  %1045 = fmul fast float %549, %1042
  %1046 = fmul fast float %549, %1043
  %1047 = fsub fast float -0.000000e+00, %1032
  %1048 = fsub fast float %1047, %1044
  %1049 = fsub fast float -0.000000e+00, %1033
  %1050 = fsub fast float %1049, %1045
  %1051 = fsub fast float -0.000000e+00, %1034
  %1052 = fsub fast float %1051, %1046
  %1053 = fsub fast float -0.000000e+00, %1048
  %1054 = fsub fast float -0.000000e+00, %1050
  %1055 = fsub fast float -0.000000e+00, %1052
  %1056 = call float @dx.op.unary.f32(i32 21, float %1053)  ; Exp(value)
  %1057 = call float @dx.op.unary.f32(i32 21, float %1054)  ; Exp(value)
  %1058 = call float @dx.op.unary.f32(i32 21, float %1055)  ; Exp(value)
  %1059 = fsub fast float 1.000000e+00, %1056
  %1060 = fsub fast float 1.000000e+00, %1057
  %1061 = fsub fast float 1.000000e+00, %1058
  %1062 = call float @dx.op.dot3.f32(i32 55, float %1059, float %1060, float %1061, float %1059, float %1060, float %1061)  ; Dot3(ax,ay,az,bx,by,bz)
  %1063 = call float @dx.op.dot3.f32(i32 55, float %1016, float %1017, float %1018, float %1016, float %1017, float %1018)  ; Dot3(ax,ay,az,bx,by,bz)
  %1064 = fmul fast float %1063, %549
  %1065 = fcmp fast une float %1062, 0.000000e+00
  %1066 = fdiv fast float %1064, %1062
  %1067 = select i1 %1065, float %1066, float 0.000000e+00
  %1068 = fmul fast float %1067, %1021
  br label %1069

; <label>:1069                                    ; preds = %1025, %1015, %940
  %1070 = phi float [ %1059, %1025 ], [ %960, %1015 ], [ %960, %940 ]
  %1071 = phi float [ %1060, %1025 ], [ %961, %1015 ], [ %961, %940 ]
  %1072 = phi float [ %1061, %1025 ], [ %962, %1015 ], [ %962, %940 ]
  %1073 = phi float [ %1068, %1025 ], [ %1021, %1015 ], [ 0.000000e+00, %940 ]
  %1074 = fsub fast float %1073, %388
  %1075 = fmul fast float %1074, %549
  %1076 = fadd fast float %1075, %388
  %1077 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %578, i32 undef)  ; BufferLoad(srv,index,wot)
  %1078 = extractvalue %dx.types.ResRet.i32 %1077, 2
  %1079 = lshr i32 %1078, 24
  %1080 = uitofp i32 %1079 to float
  %1081 = extractvalue %dx.types.ResRet.i32 %1077, 1
  %1082 = lshr i32 %1081, 24
  %1083 = uitofp i32 %1082 to float
  %1084 = call float @dx.op.dot3.f32(i32 55, float %949, float %950, float %951, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1085 = fmul fast float %1080, %1084
  %1086 = fadd fast float %1085, %1083
  %1087 = fmul fast float %1086, 0x3F70101020000000
  %1088 = call float @dx.op.unary.f32(i32 7, float %1087)  ; Saturate(value)
  %1089 = fsub fast float %1088, %381
  %1090 = fmul fast float %1089, %851
  %1091 = fadd fast float %1090, %381
  %1092 = icmp eq i32 %393, %397
  br i1 %1092, label %1093, label %380, !llvm.loop !57

; <label>:1093                                    ; preds = %1069
  br label %1094

; <label>:1094                                    ; preds = %1093, %339
  %1095 = phi float [ 0.000000e+00, %339 ], [ %1091, %1093 ]
  %1096 = phi float [ 0.000000e+00, %339 ], [ %971, %1093 ]
  %1097 = phi float [ 0.000000e+00, %339 ], [ %866, %1093 ]
  %1098 = phi float [ 0.000000e+00, %339 ], [ %863, %1093 ]
  %1099 = phi float [ 0.000000e+00, %339 ], [ %858, %1093 ]
  %1100 = phi float [ 0.000000e+00, %339 ], [ %859, %1093 ]
  %1101 = phi float [ 0.000000e+00, %339 ], [ %860, %1093 ]
  %1102 = phi float [ 0.000000e+00, %339 ], [ %1076, %1093 ]
  %1103 = phi float [ 0.000000e+00, %339 ], [ %1070, %1093 ]
  %1104 = phi float [ 0.000000e+00, %339 ], [ %1071, %1093 ]
  %1105 = phi float [ 0.000000e+00, %339 ], [ %1072, %1093 ]
  %1106 = phi float [ 0.000000e+00, %339 ], [ %963, %1093 ]
  %1107 = call float @dx.op.dot3.f32(i32 55, float %1099, float %1100, float %1101, float %1099, float %1100, float %1101)  ; Dot3(ax,ay,az,bx,by,bz)
  %1108 = call float @dx.op.unary.f32(i32 25, float %1107)  ; Rsqrt(value)
  %1109 = fmul fast float %1108, %1099
  %1110 = fmul fast float %1108, %1100
  %1111 = fmul fast float %1108, %1101
  %1112 = call float @dx.op.unary.f32(i32 6, float %1109)  ; FAbs(value)
  %1113 = call float @dx.op.unary.f32(i32 6, float %1110)  ; FAbs(value)
  %1114 = fadd fast float %1111, %1112
  %1115 = fadd fast float %1114, %1113
  %1116 = fdiv fast float 1.000000e+00, %1115
  %1117 = fadd fast float %1100, %1099
  %1118 = fsub fast float %1099, %1100
  %1119 = fmul fast float %1117, 5.000000e-01
  %1120 = fmul fast float %1119, %1108
  %1121 = fmul fast float %1120, %1116
  %1122 = fadd fast float %1121, 5.000000e-01
  %1123 = fmul fast float %1118, 5.000000e-01
  %1124 = fmul fast float %1123, %1108
  %1125 = fmul fast float %1124, %1116
  %1126 = fadd fast float %1125, 5.000000e-01
  br label %1127

; <label>:1127                                    ; preds = %1094, %336
  %1128 = phi float [ %1095, %1094 ], [ 0.000000e+00, %336 ]
  %1129 = phi float [ %1096, %1094 ], [ 0.000000e+00, %336 ]
  %1130 = phi float [ %1102, %1094 ], [ 0.000000e+00, %336 ]
  %1131 = phi float [ %1097, %1094 ], [ 0.000000e+00, %336 ]
  %1132 = phi float [ %1122, %1094 ], [ 0.000000e+00, %336 ]
  %1133 = phi float [ %1098, %1094 ], [ 0.000000e+00, %336 ]
  %1134 = phi float [ %1126, %1094 ], [ 0.000000e+00, %336 ]
  %1135 = phi float [ %1103, %1094 ], [ 0.000000e+00, %336 ]
  %1136 = phi float [ %1104, %1094 ], [ 0.000000e+00, %336 ]
  %1137 = phi float [ %1105, %1094 ], [ 0.000000e+00, %336 ]
  %1138 = phi float [ %1106, %1094 ], [ 0.000000e+00, %336 ]
  br i1 %338, label %1139, label %1181, !dx.controlflow.hints !59

; <label>:1139                                    ; preds = %1127
  %1140 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %1141 = extractvalue %dx.types.CBufRet.i32 %1140, 1
  %1142 = icmp eq i32 %1141, 5
  %1143 = fcmp fast ole float %1135, 0x3F69A5C380000000
  %1144 = fcmp fast ole float %1136, 0x3F69A5C380000000
  %1145 = fcmp fast ole float %1137, 0x3F69A5C380000000
  %1146 = fmul fast float %1135, 0x4029D70A40000000
  %1147 = fmul fast float %1136, 0x4029D70A40000000
  %1148 = fmul fast float %1137, 0x4029D70A40000000
  %1149 = call float @dx.op.unary.f32(i32 23, float %1135)  ; Log(value)
  %1150 = call float @dx.op.unary.f32(i32 23, float %1136)  ; Log(value)
  %1151 = call float @dx.op.unary.f32(i32 23, float %1137)  ; Log(value)
  %1152 = fmul fast float %1149, 0x3FDAAAAAA0000000
  %1153 = fmul fast float %1150, 0x3FDAAAAAA0000000
  %1154 = fmul fast float %1151, 0x3FDAAAAAA0000000
  %1155 = call float @dx.op.unary.f32(i32 21, float %1152)  ; Exp(value)
  %1156 = call float @dx.op.unary.f32(i32 21, float %1153)  ; Exp(value)
  %1157 = call float @dx.op.unary.f32(i32 21, float %1154)  ; Exp(value)
  %1158 = fmul fast float %1155, 0x3FF0E147A0000000
  %1159 = fmul fast float %1156, 0x3FF0E147A0000000
  %1160 = fmul fast float %1157, 0x3FF0E147A0000000
  %1161 = fadd fast float %1158, 0xBFAC28F5C0000000
  %1162 = fadd fast float %1159, 0xBFAC28F5C0000000
  %1163 = fadd fast float %1160, 0xBFAC28F5C0000000
  %1164 = select i1 %1143, float %1146, float %1161
  %1165 = select i1 %1144, float %1147, float %1162
  %1166 = select i1 %1145, float %1148, float %1163
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %52, i32 %9, i32 undef, float %1164, float %1165, float %1166, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br i1 %1142, label %1181, label %1167, !dx.controlflow.hints !60

; <label>:1167                                    ; preds = %1139
  %1168 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %1169 = extractvalue %dx.types.CBufRet.i32 %1168, 1
  switch i32 %1169, label %1179 [
    i32 1, label %1170
    i32 2, label %1171
    i32 3, label %1178
  ], !dx.controlflow.hints !61

; <label>:1170                                    ; preds = %1167
  br label %1179

; <label>:1171                                    ; preds = %1167
  %1172 = fcmp fast une float %1130, 0.000000e+00
  %1173 = call float @dx.op.unary.f32(i32 23, float %1130)  ; Log(value)
  %1174 = fadd fast float %1173, 1.600000e+01
  %1175 = fmul fast float %1174, 3.125000e-02
  %1176 = call float @dx.op.unary.f32(i32 7, float %1175)  ; Saturate(value)
  %1177 = select i1 %1172, float %1176, float 0.000000e+00
  br label %1179

; <label>:1178                                    ; preds = %1167
  br label %1179

; <label>:1179                                    ; preds = %1178, %1171, %1170, %1167
  %1180 = phi float [ 0.000000e+00, %1167 ], [ %1128, %1178 ], [ %1177, %1171 ], [ %1129, %1170 ]
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %52, i32 %9, i32 undef, float %1132, float %1134, float %1133, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %52, i32 %9, i32 undef, float %1138, float %1131, float %1180, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1181

; <label>:1181                                    ; preds = %1179, %1139, %1127
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
!dx.entryPoints = !{!21}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !11, !15, !17}
!5 = !{!6, !8, !10}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<unsigned int, 4> >"]* undef, !"", i32 5, i32 0, i32 -1, i32 2, i32 0, !9}
!9 = !{i32 0, i32 5}
!10 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 16, i32 1, i32 11, i32 0, null}
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
!21 = !{void ()* @cs_compose_to_scratch_with_cutout, !"cs_compose_to_scratch_with_cutout", null, !4, !22}
!22 = !{i32 0, i64 272, i32 4, !23}
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
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 1}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 1}
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
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !58}
!58 = !{!"llvm.loop.unroll.disable"}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 1}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}

