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
; shader hash: 559226e9e2341face20bed6247ac6d08
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

define void @cs_compose_to_scratch_with_cutout_ompv() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %10 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %11 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %12 = alloca [4 x float], align 4
  %13 = alloca [4 x float], align 4
  %14 = alloca [4 x float], align 4
  %15 = alloca [4 x i32], align 4
  %16 = alloca [4 x float], align 4
  %17 = alloca [4 x float], align 4
  %18 = alloca [4 x i32], align 4
  %19 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %20 = extractvalue %dx.types.CBufRet.i32 %19, 3
  %21 = shl i32 %11, 3
  %22 = udiv i32 %21, %20
  %23 = lshr i32 %22, 1
  %24 = add nuw i32 %23, 253
  %25 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 %24)  ; CBufferLoadLegacy(handle,regIndex)
  %26 = extractvalue %dx.types.CBufRet.i32 %25, 0
  %27 = extractvalue %dx.types.CBufRet.i32 %25, 1
  %28 = extractvalue %dx.types.CBufRet.i32 %25, 2
  %29 = extractvalue %dx.types.CBufRet.i32 %25, 3
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i32 0, i32 0
  store i32 %26, i32* %30, align 4
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i32 0, i32 1
  store i32 %27, i32* %31, align 4
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i32 0, i32 2
  store i32 %28, i32* %32, align 4
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i32 0, i32 3
  store i32 %29, i32* %33, align 4
  %34 = shl i32 %22, 1
  %35 = and i32 %34, 2
  %36 = getelementptr [4 x i32], [4 x i32]* %18, i32 0, i32 %35
  %37 = load i32, i32* %36, align 4, !tbaa !25, !noalias !29
  %38 = and i32 %37, 255
  %39 = or i32 %35, 1
  %40 = getelementptr [4 x i32], [4 x i32]* %18, i32 0, i32 %39
  %41 = load i32, i32* %40, align 4, !tbaa !25, !noalias !29
  %42 = lshr i32 %37, 8
  %43 = urem i32 %9, %20
  %44 = add nuw nsw i32 %38, 198
  %45 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 %44)  ; CBufferLoadLegacy(handle,regIndex)
  %46 = extractvalue %dx.types.CBufRet.f32 %45, 0
  %47 = extractvalue %dx.types.CBufRet.f32 %45, 1
  %48 = extractvalue %dx.types.CBufRet.f32 %45, 2
  %49 = uitofp i32 %20 to float
  %50 = fdiv fast float %48, %49
  %51 = uitofp i32 %43 to float
  %52 = uitofp i32 %10 to float
  %53 = fmul fast float %50, %51
  %54 = fmul fast float %50, %52
  %55 = fadd fast float %53, %46
  %56 = fadd fast float %54, %47
  %57 = extractvalue %dx.types.CBufRet.f32 %45, 3
  %58 = mul i32 %38, %20
  %59 = add i32 %43, %58
  %60 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %61 = extractvalue %dx.types.CBufRet.f32 %60, 0
  %62 = extractvalue %dx.types.CBufRet.f32 %60, 1
  %63 = extractvalue %dx.types.CBufRet.f32 %60, 2
  %64 = fmul fast float %63, %55
  %65 = fmul fast float %63, %56
  %66 = fadd fast float %64, %61
  %67 = fadd fast float %65, %62
  %68 = extractvalue %dx.types.CBufRet.i32 %19, 2
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %71, label %70, !dx.controlflow.hints !36

; <label>:70                                      ; preds = %0
  br label %235

; <label>:71                                      ; preds = %0
  br label %72

; <label>:72                                      ; preds = %229, %71
  %73 = phi i32 [ %230, %229 ], [ -1, %71 ]
  %74 = phi i32 [ %231, %229 ], [ 0, %71 ]
  %75 = phi float [ %232, %229 ], [ -1.000000e+09, %71 ]
  %76 = phi i32 [ %42, %229 ], [ %41, %71 ]
  %77 = phi i32 [ %233, %229 ], [ 0, %71 ]
  %78 = icmp eq i32 %76, 0
  br i1 %78, label %229, label %79

; <label>:79                                      ; preds = %72
  br label %80

; <label>:80                                      ; preds = %113, %79
  %81 = phi i32 [ %114, %113 ], [ %73, %79 ]
  %82 = phi i32 [ %115, %113 ], [ %74, %79 ]
  %83 = phi float [ %116, %113 ], [ %75, %79 ]
  %84 = phi i32 [ %89, %113 ], [ %76, %79 ]
  %85 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %84)  ; FirstbitLo(value)
  %86 = and i32 %85, 31
  %87 = shl i32 1, %86
  %88 = xor i32 %87, -1
  %89 = and i32 %84, %88
  %90 = shl i32 %77, 5
  %91 = add i32 %85, %90
  %92 = mul i32 %91, 3
  %93 = add i32 %92, 30
  %94 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 %93)  ; CBufferLoadLegacy(handle,regIndex)
  %95 = extractvalue %dx.types.CBufRet.i32 %94, 1
  %96 = bitcast i32 %95 to float
  %97 = extractvalue %dx.types.CBufRet.i32 %94, 2
  %98 = bitcast i32 %97 to float
  %99 = fsub fast float %66, %96
  %100 = fsub fast float %67, %98
  %101 = add i32 %92, 32
  %102 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 %101)  ; CBufferLoadLegacy(handle,regIndex)
  %103 = extractvalue %dx.types.CBufRet.i32 %102, 1
  %104 = and i32 %103, 1048575
  %105 = uitofp i32 %104 to float
  %106 = fcmp fast olt float %99, 0.000000e+00
  %107 = fcmp fast olt float %100, 0.000000e+00
  %108 = or i1 %106, %107
  %109 = fcmp fast ogt float %99, %105
  %110 = fcmp fast ogt float %100, %105
  %111 = or i1 %109, %110
  %112 = or i1 %108, %111
  br i1 %112, label %113, label %118, !dx.controlflow.hints !37

; <label>:113                                     ; preds = %227, %181, %179, %80
  %114 = phi i32 [ %81, %80 ], [ %120, %179 ], [ %91, %227 ], [ %120, %181 ]
  %115 = phi i32 [ %82, %80 ], [ %121, %179 ], [ %121, %227 ], [ %121, %181 ]
  %116 = phi float [ %83, %80 ], [ %83, %179 ], [ %225, %227 ], [ %83, %181 ]
  %117 = icmp eq i32 %89, 0
  br i1 %117, label %228, label %80

; <label>:118                                     ; preds = %80
  %119 = icmp ne i32 %82, 0
  %120 = select i1 %119, i32 %81, i32 %91
  %121 = select i1 %119, i32 %82, i32 1
  %122 = add i32 %92, 31
  %123 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 %122)  ; CBufferLoadLegacy(handle,regIndex)
  %124 = extractvalue %dx.types.CBufRet.i32 %123, 2
  %125 = and i32 %124, 134217728
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %178, label %127, !dx.controlflow.hints !38

; <label>:127                                     ; preds = %118
  %128 = and i32 %124, 16777215
  %129 = add i32 %128, 0
  %130 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %129, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %131 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 %93)  ; CBufferLoadLegacy(handle,regIndex)
  %132 = extractvalue %dx.types.CBufRet.i32 %131, 1
  %133 = bitcast i32 %132 to float
  %134 = extractvalue %dx.types.CBufRet.i32 %131, 2
  %135 = bitcast i32 %134 to float
  %136 = fsub fast float %66, %133
  %137 = fsub fast float %67, %135
  %138 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 %101)  ; CBufferLoadLegacy(handle,regIndex)
  %139 = extractvalue %dx.types.CBufRet.i32 %138, 1
  %140 = and i32 %139, 1048575
  %141 = uitofp i32 %140 to float
  %142 = fdiv fast float %136, %141
  %143 = fdiv fast float %137, %141
  %144 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 %122)  ; CBufferLoadLegacy(handle,regIndex)
  %145 = extractvalue %dx.types.CBufRet.i32 %144, 2
  %146 = lshr i32 %145, 24
  %147 = and i32 %146, 7
  %148 = or i32 %147, 8
  %149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 %148)  ; CBufferLoadLegacy(handle,regIndex)
  %150 = extractvalue %dx.types.CBufRet.f32 %149, 0
  %151 = extractvalue %dx.types.CBufRet.f32 %149, 2
  %152 = fdiv fast float 5.000000e-01, %150
  %153 = fmul fast float %152, 2.000000e+00
  %154 = fsub fast float 1.000000e+00, %153
  %155 = fmul fast float %154, %142
  %156 = fmul fast float %154, %143
  %157 = fadd fast float %155, %152
  %158 = fadd fast float %156, %152
  %159 = fmul fast float %150, %151
  %160 = fmul fast float %159, %157
  %161 = fmul fast float %159, %158
  %162 = fadd fast float %160, -5.000000e-01
  %163 = fadd fast float %161, -5.000000e-01
  %164 = fptoui float %162 to i32
  %165 = fptoui float %163 to i32
  %166 = lshr i32 %164, 3
  %167 = lshr i32 %165, 2
  %168 = shl nuw i32 %166, 3
  %169 = sub i32 %164, %168
  %170 = shl i32 %165, 3
  %171 = add i32 %170, %169
  %172 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %130, i32 0, i32 %166, i32 %167, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %173 = extractvalue %dx.types.ResRet.i32 %172, 0
  %174 = and i32 %171, 31
  %175 = shl i32 1, %174
  %176 = and i32 %175, %173
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %179, label %178, !dx.controlflow.hints !39

; <label>:178                                     ; preds = %127, %118
  br label %179

; <label>:179                                     ; preds = %178, %127
  %180 = phi i1 [ false, %178 ], [ true, %127 ]
  br i1 %180, label %113, label %181, !dx.controlflow.hints !40

; <label>:181                                     ; preds = %179
  %182 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 %93)  ; CBufferLoadLegacy(handle,regIndex)
  %183 = extractvalue %dx.types.CBufRet.i32 %182, 1
  %184 = bitcast i32 %183 to float
  %185 = extractvalue %dx.types.CBufRet.i32 %182, 2
  %186 = bitcast i32 %185 to float
  %187 = fsub fast float %66, %184
  %188 = fsub fast float %67, %186
  %189 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 %101)  ; CBufferLoadLegacy(handle,regIndex)
  %190 = extractvalue %dx.types.CBufRet.i32 %189, 1
  %191 = and i32 %190, 1048575
  %192 = uitofp i32 %191 to float
  %193 = fdiv fast float %187, %192
  %194 = fdiv fast float %188, %192
  %195 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 %122)  ; CBufferLoadLegacy(handle,regIndex)
  %196 = extractvalue %dx.types.CBufRet.i32 %195, 2
  %197 = lshr i32 %196, 24
  %198 = and i32 %197, 7
  %199 = or i32 %198, 8
  %200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 %199)  ; CBufferLoadLegacy(handle,regIndex)
  %201 = extractvalue %dx.types.CBufRet.f32 %200, 0
  %202 = extractvalue %dx.types.CBufRet.f32 %200, 2
  %203 = fdiv fast float 5.000000e-01, %201
  %204 = fmul fast float %203, 2.000000e+00
  %205 = fsub fast float 1.000000e+00, %204
  %206 = fmul fast float %205, %193
  %207 = fmul fast float %205, %194
  %208 = fadd fast float %206, %203
  %209 = fadd fast float %207, %203
  %210 = fmul fast float %208, %202
  %211 = fmul fast float %209, %202
  %212 = extractvalue %dx.types.CBufRet.i32 %195, 1
  %213 = and i32 %212, 16777215
  %214 = add i32 %213, 0
  %215 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %214, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %216 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 %93)  ; CBufferLoadLegacy(handle,regIndex)
  %217 = extractvalue %dx.types.CBufRet.i32 %216, 3
  %218 = bitcast i32 %217 to float
  %219 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 %122)  ; CBufferLoadLegacy(handle,regIndex)
  %220 = extractvalue %dx.types.CBufRet.i32 %219, 0
  %221 = bitcast i32 %220 to float
  %222 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %215, %dx.types.Handle %7, float %210, float %211, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %223 = extractvalue %dx.types.ResRet.f32 %222, 0
  %224 = fmul fast float %223, %221
  %225 = fadd fast float %224, %218
  %226 = fcmp fast ogt float %225, %83
  br i1 %226, label %227, label %113, !dx.controlflow.hints !41

; <label>:227                                     ; preds = %181
  br label %113

; <label>:228                                     ; preds = %113
  br label %229

; <label>:229                                     ; preds = %228, %72
  %230 = phi i32 [ %73, %72 ], [ %114, %228 ]
  %231 = phi i32 [ %74, %72 ], [ %115, %228 ]
  %232 = phi float [ %75, %72 ], [ %116, %228 ]
  %233 = add nuw nsw i32 %77, 1
  %234 = icmp eq i32 %233, 2
  br i1 %234, label %340, label %72

; <label>:235                                     ; preds = %336, %70
  %236 = phi i32 [ %337, %336 ], [ -1, %70 ]
  %237 = phi i32 [ %42, %336 ], [ %41, %70 ]
  %238 = phi i32 [ %338, %336 ], [ 0, %70 ]
  %239 = icmp eq i32 %237, 0
  br i1 %239, label %336, label %240

; <label>:240                                     ; preds = %235
  br label %241

; <label>:241                                     ; preds = %272, %240
  %242 = phi i32 [ %273, %272 ], [ %236, %240 ]
  %243 = phi i32 [ %248, %272 ], [ %237, %240 ]
  %244 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %243)  ; FirstbitLo(value)
  %245 = and i32 %244, 31
  %246 = shl i32 1, %245
  %247 = xor i32 %246, -1
  %248 = and i32 %243, %247
  %249 = shl i32 %238, 5
  %250 = add i32 %244, %249
  %251 = mul i32 %250, 3
  %252 = add i32 %251, 30
  %253 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 %252)  ; CBufferLoadLegacy(handle,regIndex)
  %254 = extractvalue %dx.types.CBufRet.i32 %253, 1
  %255 = bitcast i32 %254 to float
  %256 = extractvalue %dx.types.CBufRet.i32 %253, 2
  %257 = bitcast i32 %256 to float
  %258 = fsub fast float %66, %255
  %259 = fsub fast float %67, %257
  %260 = add i32 %251, 32
  %261 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 %260)  ; CBufferLoadLegacy(handle,regIndex)
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
  br i1 %271, label %272, label %275, !dx.controlflow.hints !42

; <label>:272                                     ; preds = %333, %241
  %273 = phi i32 [ %242, %241 ], [ %250, %333 ]
  %274 = icmp eq i32 %248, 0
  br i1 %274, label %335, label %241

; <label>:275                                     ; preds = %241
  %276 = add i32 %251, 31
  %277 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 %276)  ; CBufferLoadLegacy(handle,regIndex)
  %278 = extractvalue %dx.types.CBufRet.i32 %277, 2
  %279 = and i32 %278, 134217728
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %332, label %281, !dx.controlflow.hints !38

; <label>:281                                     ; preds = %275
  %282 = and i32 %278, 16777215
  %283 = add i32 %282, 0
  %284 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %283, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %285 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 %252)  ; CBufferLoadLegacy(handle,regIndex)
  %286 = extractvalue %dx.types.CBufRet.i32 %285, 1
  %287 = bitcast i32 %286 to float
  %288 = extractvalue %dx.types.CBufRet.i32 %285, 2
  %289 = bitcast i32 %288 to float
  %290 = fsub fast float %66, %287
  %291 = fsub fast float %67, %289
  %292 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 %260)  ; CBufferLoadLegacy(handle,regIndex)
  %293 = extractvalue %dx.types.CBufRet.i32 %292, 1
  %294 = and i32 %293, 1048575
  %295 = uitofp i32 %294 to float
  %296 = fdiv fast float %290, %295
  %297 = fdiv fast float %291, %295
  %298 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 %276)  ; CBufferLoadLegacy(handle,regIndex)
  %299 = extractvalue %dx.types.CBufRet.i32 %298, 2
  %300 = lshr i32 %299, 24
  %301 = and i32 %300, 7
  %302 = or i32 %301, 8
  %303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 %302)  ; CBufferLoadLegacy(handle,regIndex)
  %304 = extractvalue %dx.types.CBufRet.f32 %303, 0
  %305 = extractvalue %dx.types.CBufRet.f32 %303, 2
  %306 = fdiv fast float 5.000000e-01, %304
  %307 = fmul fast float %306, 2.000000e+00
  %308 = fsub fast float 1.000000e+00, %307
  %309 = fmul fast float %308, %296
  %310 = fmul fast float %308, %297
  %311 = fadd fast float %309, %306
  %312 = fadd fast float %310, %306
  %313 = fmul fast float %304, %305
  %314 = fmul fast float %313, %311
  %315 = fmul fast float %313, %312
  %316 = fadd fast float %314, -5.000000e-01
  %317 = fadd fast float %315, -5.000000e-01
  %318 = fptoui float %316 to i32
  %319 = fptoui float %317 to i32
  %320 = lshr i32 %318, 3
  %321 = lshr i32 %319, 2
  %322 = shl nuw i32 %320, 3
  %323 = sub i32 %318, %322
  %324 = shl i32 %319, 3
  %325 = add i32 %324, %323
  %326 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %284, i32 0, i32 %320, i32 %321, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %327 = extractvalue %dx.types.ResRet.i32 %326, 0
  %328 = and i32 %325, 31
  %329 = shl i32 1, %328
  %330 = and i32 %329, %327
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %333, label %332, !dx.controlflow.hints !39

; <label>:332                                     ; preds = %281, %275
  br label %333

; <label>:333                                     ; preds = %332, %281
  %334 = phi i1 [ false, %332 ], [ true, %281 ]
  br i1 %334, label %272, label %341, !dx.controlflow.hints !43

; <label>:335                                     ; preds = %272
  br label %336

; <label>:336                                     ; preds = %335, %235
  %337 = phi i32 [ %236, %235 ], [ %273, %335 ]
  %338 = add nuw nsw i32 %238, 1
  %339 = icmp ult i32 %338, 2
  br i1 %339, label %235, label %342

; <label>:340                                     ; preds = %229
  br label %343

; <label>:341                                     ; preds = %333
  br label %343

; <label>:342                                     ; preds = %336
  br label %343

; <label>:343                                     ; preds = %342, %341, %340
  %344 = phi i32 [ %230, %340 ], [ %250, %341 ], [ %337, %342 ]
  %345 = icmp ne i32 %344, -1
  br i1 %345, label %346, label %1764, !dx.controlflow.hints !44

; <label>:346                                     ; preds = %343
  %347 = mul i32 %344, 3
  %348 = add i32 %347, 32
  %349 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 %348)  ; CBufferLoadLegacy(handle,regIndex)
  %350 = extractvalue %dx.types.CBufRet.i32 %349, 1
  %351 = lshr i32 %350, 20
  %352 = add i32 %347, 31
  %353 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 %352)  ; CBufferLoadLegacy(handle,regIndex)
  %354 = extractvalue %dx.types.CBufRet.i32 %353, 3
  %355 = and i32 %354, 16777215
  %356 = extractvalue %dx.types.CBufRet.i32 %349, 0
  %357 = and i32 %356, 16777215
  %358 = add i32 %347, 30
  %359 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 %358)  ; CBufferLoadLegacy(handle,regIndex)
  %360 = extractvalue %dx.types.CBufRet.i32 %359, 1
  %361 = bitcast i32 %360 to float
  %362 = extractvalue %dx.types.CBufRet.i32 %359, 2
  %363 = bitcast i32 %362 to float
  %364 = fsub fast float %66, %361
  %365 = fsub fast float %67, %363
  %366 = and i32 %350, 1048575
  %367 = uitofp i32 %366 to float
  %368 = fdiv fast float %364, %367
  %369 = fdiv fast float %365, %367
  %370 = fsub fast float 1.000000e+00, %368
  %371 = fsub fast float 1.000000e+00, %369
  %372 = call float @dx.op.binary.f32(i32 36, float %368, float %370)  ; FMin(a,b)
  %373 = call float @dx.op.binary.f32(i32 36, float %369, float %371)  ; FMin(a,b)
  %374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %375 = extractvalue %dx.types.CBufRet.f32 %374, 0
  %376 = extractvalue %dx.types.CBufRet.f32 %374, 1
  %377 = fcmp fast ogt float %376, 0.000000e+00
  %378 = fmul fast float %367, %372
  %379 = fmul fast float %367, %373
  %380 = fdiv fast float %378, %376
  %381 = fdiv fast float %379, %376
  %382 = call float @dx.op.unary.f32(i32 7, float %380)  ; Saturate(value)
  %383 = call float @dx.op.unary.f32(i32 7, float %381)  ; Saturate(value)
  %384 = select i1 %377, float %382, float 1.000000e+00
  %385 = select i1 %377, float %383, float 1.000000e+00
  %386 = fmul fast float %384, %376
  %387 = fmul fast float %385, %376
  %388 = fmul fast float %375, %66
  %389 = fmul fast float %375, %67
  %390 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %6, float %388, float %389, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %391 = extractvalue %dx.types.ResRet.f32 %390, 0
  %392 = extractvalue %dx.types.ResRet.f32 %390, 1
  %393 = fmul fast float %386, 2.000000e+00
  %394 = fmul fast float %393, %391
  %395 = fmul fast float %387, 2.000000e+00
  %396 = fmul fast float %395, %392
  %397 = fsub fast float %364, %386
  %398 = fadd fast float %397, %394
  %399 = fsub fast float %365, %387
  %400 = fadd fast float %399, %396
  %401 = fdiv fast float %398, %367
  %402 = fdiv fast float %400, %367
  %403 = extractvalue %dx.types.CBufRet.i32 %353, 2
  %404 = lshr i32 %403, 24
  %405 = and i32 %404, 7
  %406 = or i32 %405, 8
  %407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 %406)  ; CBufferLoadLegacy(handle,regIndex)
  %408 = extractvalue %dx.types.CBufRet.f32 %407, 0
  %409 = extractvalue %dx.types.CBufRet.f32 %407, 2
  %410 = fdiv fast float 5.000000e-01, %408
  %411 = fmul fast float %410, 2.000000e+00
  %412 = fsub fast float 1.000000e+00, %411
  %413 = fmul fast float %412, %401
  %414 = fmul fast float %412, %402
  %415 = fadd fast float %413, %410
  %416 = fadd fast float %414, %410
  %417 = fmul fast float %415, %409
  %418 = fmul fast float %416, %409
  %419 = fadd fast float %417, %410
  %420 = fadd fast float %418, %410
  %421 = fmul fast float %419, %408
  %422 = fmul fast float %420, %408
  %423 = call float @dx.op.unary.f32(i32 27, float %421)  ; Round_ni(value)
  %424 = call float @dx.op.unary.f32(i32 27, float %422)  ; Round_ni(value)
  %425 = fdiv fast float %423, %408
  %426 = fdiv fast float %424, %408
  %427 = fsub fast float %421, %423
  %428 = fsub fast float %422, %424
  %429 = add i32 %355, 0
  %430 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %429, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %431 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %430, %dx.types.Handle %7, float %425, float %426, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %432 = extractvalue %dx.types.ResRet.f32 %431, 0
  %433 = extractvalue %dx.types.ResRet.f32 %431, 1
  %434 = extractvalue %dx.types.ResRet.f32 %431, 2
  %435 = extractvalue %dx.types.ResRet.f32 %431, 3
  %436 = fmul fast float %432, 2.550000e+02
  %437 = fmul fast float %433, 2.550000e+02
  %438 = fmul fast float %434, 2.550000e+02
  %439 = fmul fast float %435, 2.550000e+02
  %440 = fptoui float %436 to i32
  %441 = fptoui float %437 to i32
  %442 = fptoui float %438 to i32
  %443 = fptoui float %439 to i32
  %444 = add i32 %357, 0
  %445 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %444, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %446 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %445, %dx.types.Handle %7, float %425, float %426, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %447 = extractvalue %dx.types.ResRet.f32 %446, 0
  %448 = extractvalue %dx.types.ResRet.f32 %446, 1
  %449 = extractvalue %dx.types.ResRet.f32 %446, 2
  %450 = extractvalue %dx.types.ResRet.f32 %446, 3
  %451 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %445, %dx.types.Handle %7, float %425, float %426, float undef, float undef, i32 0, i32 0, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %452 = extractvalue %dx.types.ResRet.f32 %451, 0
  %453 = extractvalue %dx.types.ResRet.f32 %451, 1
  %454 = extractvalue %dx.types.ResRet.f32 %451, 2
  %455 = extractvalue %dx.types.ResRet.f32 %451, 3
  %456 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %445, %dx.types.Handle %7, float %425, float %426, float undef, float undef, i32 0, i32 0, i32 2)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %457 = extractvalue %dx.types.ResRet.f32 %456, 0
  %458 = extractvalue %dx.types.ResRet.f32 %456, 1
  %459 = extractvalue %dx.types.ResRet.f32 %456, 2
  %460 = extractvalue %dx.types.ResRet.f32 %456, 3
  %461 = fsub fast float 1.000000e+00, %427
  %462 = fmul fast float %461, %428
  %463 = fmul fast float %427, %428
  %464 = fsub fast float 1.000000e+00, %428
  %465 = fmul fast float %464, %427
  %466 = fmul fast float %461, %464
  %467 = add i32 %440, %351
  %468 = mul i32 %467, 100
  %469 = add i32 %468, 80
  %470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %469, i32 undef)  ; BufferLoad(srv,index,wot)
  %471 = extractvalue %dx.types.ResRet.i32 %470, 2
  %472 = and i32 %471, 8388608
  %473 = icmp eq i32 %472, 0
  %474 = shl i32 %440, 4
  br i1 %473, label %488, label %475, !dx.controlflow.hints !45

; <label>:475                                     ; preds = %346
  %476 = fmul fast float %423, 2.500000e-01
  %477 = fptosi float %476 to i32
  %478 = srem i32 %477, 2
  %479 = fadd fast float %424, 1.000000e+00
  %480 = fmul fast float %479, 2.500000e-01
  %481 = fptosi float %480 to i32
  %482 = srem i32 %481, 2
  %483 = mul nsw i32 %482, 3
  %484 = srem i32 %483, 4
  %485 = add nsw i32 %484, %478
  %486 = and i32 %485, 15
  %487 = or i32 %486, %474
  br label %488

; <label>:488                                     ; preds = %475, %346
  %489 = phi i32 [ %487, %475 ], [ %474, %346 ]
  %490 = add i32 %441, %351
  %491 = mul i32 %490, 100
  %492 = add i32 %491, 80
  %493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %492, i32 undef)  ; BufferLoad(srv,index,wot)
  %494 = extractvalue %dx.types.ResRet.i32 %493, 2
  %495 = and i32 %494, 8388608
  %496 = icmp eq i32 %495, 0
  %497 = shl i32 %441, 4
  br i1 %496, label %512, label %498, !dx.controlflow.hints !45

; <label>:498                                     ; preds = %488
  %499 = fadd fast float %423, 1.000000e+00
  %500 = fmul fast float %499, 2.500000e-01
  %501 = fptosi float %500 to i32
  %502 = srem i32 %501, 2
  %503 = fadd fast float %424, 1.000000e+00
  %504 = fmul fast float %503, 2.500000e-01
  %505 = fptosi float %504 to i32
  %506 = srem i32 %505, 2
  %507 = mul nsw i32 %506, 3
  %508 = srem i32 %507, 4
  %509 = add nsw i32 %508, %502
  %510 = and i32 %509, 15
  %511 = or i32 %510, %497
  br label %512

; <label>:512                                     ; preds = %498, %488
  %513 = phi i32 [ %511, %498 ], [ %497, %488 ]
  %514 = add i32 %442, %351
  %515 = mul i32 %514, 100
  %516 = add i32 %515, 80
  %517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %516, i32 undef)  ; BufferLoad(srv,index,wot)
  %518 = extractvalue %dx.types.ResRet.i32 %517, 2
  %519 = and i32 %518, 8388608
  %520 = icmp eq i32 %519, 0
  %521 = shl i32 %442, 4
  br i1 %520, label %535, label %522, !dx.controlflow.hints !45

; <label>:522                                     ; preds = %512
  %523 = fadd fast float %423, 1.000000e+00
  %524 = fmul fast float %523, 2.500000e-01
  %525 = fptosi float %524 to i32
  %526 = srem i32 %525, 2
  %527 = fmul fast float %424, 2.500000e-01
  %528 = fptosi float %527 to i32
  %529 = srem i32 %528, 2
  %530 = mul nsw i32 %529, 3
  %531 = srem i32 %530, 4
  %532 = add nsw i32 %531, %526
  %533 = and i32 %532, 15
  %534 = or i32 %533, %521
  br label %535

; <label>:535                                     ; preds = %522, %512
  %536 = phi i32 [ %534, %522 ], [ %521, %512 ]
  %537 = add i32 %443, %351
  %538 = mul i32 %537, 100
  %539 = add i32 %538, 80
  %540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %539, i32 undef)  ; BufferLoad(srv,index,wot)
  %541 = extractvalue %dx.types.ResRet.i32 %540, 2
  %542 = and i32 %541, 8388608
  %543 = icmp eq i32 %542, 0
  %544 = shl i32 %443, 4
  br i1 %543, label %557, label %545, !dx.controlflow.hints !45

; <label>:545                                     ; preds = %535
  %546 = fmul fast float %423, 2.500000e-01
  %547 = fptosi float %546 to i32
  %548 = srem i32 %547, 2
  %549 = fmul fast float %424, 2.500000e-01
  %550 = fptosi float %549 to i32
  %551 = srem i32 %550, 2
  %552 = mul nsw i32 %551, 3
  %553 = srem i32 %552, 4
  %554 = add nsw i32 %553, %548
  %555 = and i32 %554, 15
  %556 = or i32 %555, %544
  br label %557

; <label>:557                                     ; preds = %545, %535
  %558 = phi i32 [ %556, %545 ], [ %544, %535 ]
  %559 = getelementptr inbounds [4 x float], [4 x float]* %17, i32 0, i32 0
  store float -1.000000e+00, float* %559, align 4
  %560 = getelementptr inbounds [4 x float], [4 x float]* %17, i32 0, i32 1
  store float -1.000000e+00, float* %560, align 4
  %561 = getelementptr inbounds [4 x float], [4 x float]* %17, i32 0, i32 2
  store float -1.000000e+00, float* %561, align 4
  %562 = getelementptr inbounds [4 x float], [4 x float]* %17, i32 0, i32 3
  store float -1.000000e+00, float* %562, align 4
  %563 = call i32 @dx.op.binary.i32(i32 40, i32 %536, i32 %558)  ; UMin(a,b)
  %564 = call i32 @dx.op.binary.i32(i32 40, i32 %489, i32 %513)  ; UMin(a,b)
  %565 = call i32 @dx.op.binary.i32(i32 40, i32 %564, i32 %563)  ; UMin(a,b)
  %566 = icmp eq i32 %565, 65535
  br i1 %566, label %890, label %567, !dx.controlflow.hints !46

; <label>:567                                     ; preds = %557
  %568 = icmp eq i32 %489, %565
  br i1 %568, label %569, label %575, !dx.controlflow.hints !47

; <label>:569                                     ; preds = %567
  %570 = fmul fast float %447, %462
  %571 = fmul fast float %452, %462
  %572 = fmul fast float %457, %462
  %573 = and i32 %489, 15
  %574 = uitofp i32 %573 to float
  store float %574, float* %559, align 4, !tbaa !48, !alias.scope !50, !noalias !53
  br label %575

; <label>:575                                     ; preds = %569, %567
  %576 = phi float [ -1.000000e+00, %567 ], [ %574, %569 ]
  %577 = phi float [ 0.000000e+00, %567 ], [ %462, %569 ]
  %578 = phi float [ 0.000000e+00, %567 ], [ %570, %569 ]
  %579 = phi float [ 0.000000e+00, %567 ], [ %571, %569 ]
  %580 = phi float [ 0.000000e+00, %567 ], [ %572, %569 ]
  %581 = phi i32 [ %565, %567 ], [ %489, %569 ]
  %582 = phi i32 [ %489, %567 ], [ 65535, %569 ]
  %583 = icmp eq i32 %513, %581
  br i1 %583, label %584, label %594, !dx.controlflow.hints !47

; <label>:584                                     ; preds = %575
  %585 = fmul fast float %448, %463
  %586 = fmul fast float %453, %463
  %587 = fmul fast float %458, %463
  %588 = fadd fast float %578, %585
  %589 = fadd fast float %579, %586
  %590 = fadd fast float %580, %587
  %591 = fadd fast float %577, %463
  %592 = and i32 %513, 15
  %593 = uitofp i32 %592 to float
  store float %593, float* %559, align 4, !tbaa !48, !alias.scope !50, !noalias !53
  br label %594

; <label>:594                                     ; preds = %584, %575
  %595 = phi float [ %576, %575 ], [ %593, %584 ]
  %596 = phi float [ %577, %575 ], [ %591, %584 ]
  %597 = phi float [ %578, %575 ], [ %588, %584 ]
  %598 = phi float [ %579, %575 ], [ %589, %584 ]
  %599 = phi float [ %580, %575 ], [ %590, %584 ]
  %600 = phi i32 [ %581, %575 ], [ %513, %584 ]
  %601 = phi i32 [ %513, %575 ], [ 65535, %584 ]
  %602 = icmp eq i32 %536, %600
  br i1 %602, label %603, label %615, !dx.controlflow.hints !47

; <label>:603                                     ; preds = %594
  %604 = fmul fast float %449, %465
  %605 = fmul fast float %454, %465
  %606 = fmul fast float %459, %465
  %607 = fadd fast float %597, %604
  %608 = fadd fast float %598, %605
  %609 = fadd fast float %599, %606
  %610 = fadd fast float %596, %465
  %611 = fadd fast float %596, %465
  %612 = fadd fast float %596, %465
  %613 = and i32 %536, 15
  %614 = uitofp i32 %613 to float
  store float %614, float* %559, align 4, !tbaa !48, !alias.scope !50, !noalias !53
  br label %615

; <label>:615                                     ; preds = %603, %594
  %616 = phi float [ %614, %603 ], [ %595, %594 ]
  %617 = phi float [ %610, %603 ], [ %596, %594 ]
  %618 = phi float [ %611, %603 ], [ %596, %594 ]
  %619 = phi float [ %612, %603 ], [ %596, %594 ]
  %620 = phi float [ %607, %603 ], [ %597, %594 ]
  %621 = phi float [ %608, %603 ], [ %598, %594 ]
  %622 = phi float [ %609, %603 ], [ %599, %594 ]
  %623 = phi i32 [ %536, %603 ], [ %600, %594 ]
  %624 = phi i32 [ 65535, %603 ], [ %536, %594 ]
  %625 = icmp eq i32 %558, %623
  br i1 %625, label %626, label %638, !dx.controlflow.hints !47

; <label>:626                                     ; preds = %615
  %627 = fmul fast float %450, %466
  %628 = fmul fast float %455, %466
  %629 = fmul fast float %460, %466
  %630 = fadd fast float %620, %627
  %631 = fadd fast float %621, %628
  %632 = fadd fast float %622, %629
  %633 = fadd fast float %617, %466
  %634 = fadd fast float %618, %466
  %635 = fadd fast float %619, %466
  %636 = and i32 %558, 15
  %637 = uitofp i32 %636 to float
  store float %637, float* %559, align 4, !tbaa !48, !alias.scope !50, !noalias !53
  br label %638

; <label>:638                                     ; preds = %626, %615
  %639 = phi float [ %616, %615 ], [ %637, %626 ]
  %640 = phi float [ %617, %615 ], [ %633, %626 ]
  %641 = phi float [ %618, %615 ], [ %634, %626 ]
  %642 = phi float [ %619, %615 ], [ %635, %626 ]
  %643 = phi float [ %620, %615 ], [ %630, %626 ]
  %644 = phi float [ %621, %615 ], [ %631, %626 ]
  %645 = phi float [ %622, %615 ], [ %632, %626 ]
  %646 = phi i32 [ %623, %615 ], [ %558, %626 ]
  %647 = phi i32 [ %558, %615 ], [ 65535, %626 ]
  %648 = call i32 @dx.op.binary.i32(i32 40, i32 %624, i32 %647)  ; UMin(a,b)
  %649 = call i32 @dx.op.binary.i32(i32 40, i32 %582, i32 %601)  ; UMin(a,b)
  %650 = call i32 @dx.op.binary.i32(i32 40, i32 %649, i32 %648)  ; UMin(a,b)
  %651 = icmp eq i32 %650, 65535
  br i1 %651, label %890, label %652, !dx.controlflow.hints !46

; <label>:652                                     ; preds = %638
  %653 = icmp eq i32 %582, %650
  br i1 %653, label %654, label %660, !dx.controlflow.hints !47

; <label>:654                                     ; preds = %652
  %655 = fmul fast float %447, %462
  %656 = fmul fast float %452, %462
  %657 = fmul fast float %457, %462
  %658 = and i32 %582, 15
  %659 = uitofp i32 %658 to float
  store float %659, float* %560, align 4, !tbaa !48, !alias.scope !50, !noalias !53
  br label %660

; <label>:660                                     ; preds = %654, %652
  %661 = phi float [ 0.000000e+00, %652 ], [ %462, %654 ]
  %662 = phi float [ 0.000000e+00, %652 ], [ %655, %654 ]
  %663 = phi float [ 0.000000e+00, %652 ], [ %656, %654 ]
  %664 = phi float [ 0.000000e+00, %652 ], [ %657, %654 ]
  %665 = phi i32 [ %650, %652 ], [ %582, %654 ]
  %666 = phi i32 [ %582, %652 ], [ 65535, %654 ]
  %667 = icmp eq i32 %601, %665
  br i1 %667, label %668, label %678, !dx.controlflow.hints !47

; <label>:668                                     ; preds = %660
  %669 = fadd fast float %661, %463
  %670 = fmul fast float %448, %463
  %671 = fmul fast float %453, %463
  %672 = fmul fast float %458, %463
  %673 = fadd fast float %662, %670
  %674 = fadd fast float %663, %671
  %675 = fadd fast float %664, %672
  %676 = and i32 %601, 15
  %677 = uitofp i32 %676 to float
  store float %677, float* %560, align 4, !tbaa !48, !alias.scope !50, !noalias !53
  br label %678

; <label>:678                                     ; preds = %668, %660
  %679 = phi float [ %661, %660 ], [ %669, %668 ]
  %680 = phi float [ %662, %660 ], [ %673, %668 ]
  %681 = phi float [ %663, %660 ], [ %674, %668 ]
  %682 = phi float [ %664, %660 ], [ %675, %668 ]
  %683 = phi i32 [ %665, %660 ], [ %601, %668 ]
  %684 = phi i32 [ %601, %660 ], [ 65535, %668 ]
  %685 = icmp eq i32 %624, %683
  br i1 %685, label %686, label %699, !dx.controlflow.hints !47

; <label>:686                                     ; preds = %678
  %687 = fadd fast float %679, %465
  %688 = fmul fast float %449, %465
  %689 = fmul fast float %454, %465
  %690 = fmul fast float %459, %465
  %691 = fadd fast float %680, %688
  %692 = fadd fast float %681, %689
  %693 = fadd fast float %682, %690
  %694 = fadd fast float %679, %465
  %695 = fadd fast float %679, %465
  %696 = fadd fast float %679, %465
  %697 = and i32 %624, 15
  %698 = uitofp i32 %697 to float
  store float %698, float* %560, align 4, !tbaa !48, !alias.scope !50, !noalias !53
  br label %699

; <label>:699                                     ; preds = %686, %678
  %700 = phi float [ %694, %686 ], [ %679, %678 ]
  %701 = phi float [ %695, %686 ], [ %679, %678 ]
  %702 = phi float [ %696, %686 ], [ %679, %678 ]
  %703 = phi float [ %691, %686 ], [ %680, %678 ]
  %704 = phi float [ %692, %686 ], [ %681, %678 ]
  %705 = phi float [ %693, %686 ], [ %682, %678 ]
  %706 = phi float [ %687, %686 ], [ %679, %678 ]
  %707 = phi i32 [ %624, %686 ], [ %683, %678 ]
  %708 = phi i32 [ 65535, %686 ], [ %624, %678 ]
  %709 = icmp eq i32 %647, %707
  br i1 %709, label %710, label %723, !dx.controlflow.hints !47

; <label>:710                                     ; preds = %699
  %711 = fadd fast float %706, %466
  %712 = fmul fast float %450, %466
  %713 = fmul fast float %455, %466
  %714 = fmul fast float %460, %466
  %715 = fadd fast float %703, %712
  %716 = fadd fast float %704, %713
  %717 = fadd fast float %705, %714
  %718 = fadd fast float %700, %466
  %719 = fadd fast float %701, %466
  %720 = fadd fast float %702, %466
  %721 = and i32 %647, 15
  %722 = uitofp i32 %721 to float
  store float %722, float* %560, align 4, !tbaa !48, !alias.scope !50, !noalias !53
  br label %723

; <label>:723                                     ; preds = %710, %699
  %724 = phi float [ %700, %699 ], [ %718, %710 ]
  %725 = phi float [ %701, %699 ], [ %719, %710 ]
  %726 = phi float [ %702, %699 ], [ %720, %710 ]
  %727 = phi float [ %703, %699 ], [ %715, %710 ]
  %728 = phi float [ %704, %699 ], [ %716, %710 ]
  %729 = phi float [ %705, %699 ], [ %717, %710 ]
  %730 = phi float [ %706, %699 ], [ %711, %710 ]
  %731 = phi i32 [ %707, %699 ], [ %647, %710 ]
  %732 = phi i32 [ %647, %699 ], [ 65535, %710 ]
  %733 = call i32 @dx.op.binary.i32(i32 40, i32 %708, i32 %732)  ; UMin(a,b)
  %734 = call i32 @dx.op.binary.i32(i32 40, i32 %666, i32 %684)  ; UMin(a,b)
  %735 = call i32 @dx.op.binary.i32(i32 40, i32 %734, i32 %733)  ; UMin(a,b)
  %736 = icmp eq i32 %735, 65535
  br i1 %736, label %890, label %737, !dx.controlflow.hints !46

; <label>:737                                     ; preds = %723
  %738 = icmp eq i32 %666, %735
  br i1 %738, label %739, label %745, !dx.controlflow.hints !47

; <label>:739                                     ; preds = %737
  %740 = fmul fast float %447, %462
  %741 = fmul fast float %452, %462
  %742 = fmul fast float %457, %462
  %743 = and i32 %666, 15
  %744 = uitofp i32 %743 to float
  store float %744, float* %561, align 4, !tbaa !48, !alias.scope !50, !noalias !53
  br label %745

; <label>:745                                     ; preds = %739, %737
  %746 = phi float [ 0.000000e+00, %737 ], [ %462, %739 ]
  %747 = phi float [ 0.000000e+00, %737 ], [ %740, %739 ]
  %748 = phi float [ 0.000000e+00, %737 ], [ %741, %739 ]
  %749 = phi float [ 0.000000e+00, %737 ], [ %742, %739 ]
  %750 = phi i32 [ %735, %737 ], [ %666, %739 ]
  %751 = phi i32 [ %666, %737 ], [ 65535, %739 ]
  %752 = icmp eq i32 %684, %750
  br i1 %752, label %753, label %763, !dx.controlflow.hints !47

; <label>:753                                     ; preds = %745
  %754 = fadd fast float %746, %463
  %755 = fmul fast float %448, %463
  %756 = fmul fast float %453, %463
  %757 = fmul fast float %458, %463
  %758 = fadd fast float %747, %755
  %759 = fadd fast float %748, %756
  %760 = fadd fast float %749, %757
  %761 = and i32 %684, 15
  %762 = uitofp i32 %761 to float
  store float %762, float* %561, align 4, !tbaa !48, !alias.scope !50, !noalias !53
  br label %763

; <label>:763                                     ; preds = %753, %745
  %764 = phi float [ %746, %745 ], [ %754, %753 ]
  %765 = phi float [ %747, %745 ], [ %758, %753 ]
  %766 = phi float [ %748, %745 ], [ %759, %753 ]
  %767 = phi float [ %749, %745 ], [ %760, %753 ]
  %768 = phi i32 [ %750, %745 ], [ %684, %753 ]
  %769 = phi i32 [ %684, %745 ], [ 65535, %753 ]
  %770 = icmp eq i32 %708, %768
  br i1 %770, label %771, label %784, !dx.controlflow.hints !47

; <label>:771                                     ; preds = %763
  %772 = fadd fast float %764, %465
  %773 = fmul fast float %449, %465
  %774 = fmul fast float %454, %465
  %775 = fmul fast float %459, %465
  %776 = fadd fast float %765, %773
  %777 = fadd fast float %766, %774
  %778 = fadd fast float %767, %775
  %779 = fadd fast float %764, %465
  %780 = fadd fast float %764, %465
  %781 = fadd fast float %764, %465
  %782 = and i32 %708, 15
  %783 = uitofp i32 %782 to float
  store float %783, float* %561, align 4, !tbaa !48, !alias.scope !50, !noalias !53
  br label %784

; <label>:784                                     ; preds = %771, %763
  %785 = phi float [ %779, %771 ], [ %764, %763 ]
  %786 = phi float [ %780, %771 ], [ %764, %763 ]
  %787 = phi float [ %781, %771 ], [ %764, %763 ]
  %788 = phi float [ %776, %771 ], [ %765, %763 ]
  %789 = phi float [ %777, %771 ], [ %766, %763 ]
  %790 = phi float [ %778, %771 ], [ %767, %763 ]
  %791 = phi float [ %772, %771 ], [ %764, %763 ]
  %792 = phi i32 [ %708, %771 ], [ %768, %763 ]
  %793 = phi i32 [ 65535, %771 ], [ %708, %763 ]
  %794 = icmp eq i32 %732, %792
  br i1 %794, label %795, label %808, !dx.controlflow.hints !47

; <label>:795                                     ; preds = %784
  %796 = fadd fast float %791, %466
  %797 = fmul fast float %450, %466
  %798 = fmul fast float %455, %466
  %799 = fmul fast float %460, %466
  %800 = fadd fast float %788, %797
  %801 = fadd fast float %789, %798
  %802 = fadd fast float %790, %799
  %803 = fadd fast float %785, %466
  %804 = fadd fast float %786, %466
  %805 = fadd fast float %787, %466
  %806 = and i32 %732, 15
  %807 = uitofp i32 %806 to float
  store float %807, float* %561, align 4, !tbaa !48, !alias.scope !50, !noalias !53
  br label %808

; <label>:808                                     ; preds = %795, %784
  %809 = phi float [ %785, %784 ], [ %803, %795 ]
  %810 = phi float [ %786, %784 ], [ %804, %795 ]
  %811 = phi float [ %787, %784 ], [ %805, %795 ]
  %812 = phi float [ %788, %784 ], [ %800, %795 ]
  %813 = phi float [ %789, %784 ], [ %801, %795 ]
  %814 = phi float [ %790, %784 ], [ %802, %795 ]
  %815 = phi float [ %791, %784 ], [ %796, %795 ]
  %816 = phi i32 [ %792, %784 ], [ %732, %795 ]
  %817 = phi i32 [ %732, %784 ], [ 65535, %795 ]
  %818 = call i32 @dx.op.binary.i32(i32 40, i32 %793, i32 %817)  ; UMin(a,b)
  %819 = call i32 @dx.op.binary.i32(i32 40, i32 %751, i32 %769)  ; UMin(a,b)
  %820 = call i32 @dx.op.binary.i32(i32 40, i32 %819, i32 %818)  ; UMin(a,b)
  %821 = icmp eq i32 %820, 65535
  br i1 %821, label %890, label %822, !dx.controlflow.hints !46

; <label>:822                                     ; preds = %808
  %823 = icmp eq i32 %751, %820
  br i1 %823, label %824, label %830, !dx.controlflow.hints !47

; <label>:824                                     ; preds = %822
  %825 = fmul fast float %447, %462
  %826 = fmul fast float %452, %462
  %827 = fmul fast float %457, %462
  %828 = and i32 %751, 15
  %829 = uitofp i32 %828 to float
  store float %829, float* %562, align 4, !tbaa !48, !alias.scope !50, !noalias !53
  br label %830

; <label>:830                                     ; preds = %824, %822
  %831 = phi float [ 0.000000e+00, %822 ], [ %462, %824 ]
  %832 = phi float [ 0.000000e+00, %822 ], [ %825, %824 ]
  %833 = phi float [ 0.000000e+00, %822 ], [ %826, %824 ]
  %834 = phi float [ 0.000000e+00, %822 ], [ %827, %824 ]
  %835 = phi i32 [ %820, %822 ], [ %751, %824 ]
  %836 = icmp eq i32 %769, %835
  br i1 %836, label %837, label %847, !dx.controlflow.hints !47

; <label>:837                                     ; preds = %830
  %838 = fadd fast float %831, %463
  %839 = fmul fast float %448, %463
  %840 = fmul fast float %453, %463
  %841 = fmul fast float %458, %463
  %842 = fadd fast float %832, %839
  %843 = fadd fast float %833, %840
  %844 = fadd fast float %834, %841
  %845 = and i32 %769, 15
  %846 = uitofp i32 %845 to float
  store float %846, float* %562, align 4, !tbaa !48, !alias.scope !50, !noalias !53
  br label %847

; <label>:847                                     ; preds = %837, %830
  %848 = phi float [ %831, %830 ], [ %838, %837 ]
  %849 = phi float [ %832, %830 ], [ %842, %837 ]
  %850 = phi float [ %833, %830 ], [ %843, %837 ]
  %851 = phi float [ %834, %830 ], [ %844, %837 ]
  %852 = phi i32 [ %835, %830 ], [ %769, %837 ]
  %853 = icmp eq i32 %793, %852
  br i1 %853, label %854, label %867, !dx.controlflow.hints !47

; <label>:854                                     ; preds = %847
  %855 = fadd fast float %848, %465
  %856 = fmul fast float %449, %465
  %857 = fmul fast float %454, %465
  %858 = fmul fast float %459, %465
  %859 = fadd fast float %849, %856
  %860 = fadd fast float %850, %857
  %861 = fadd fast float %851, %858
  %862 = fadd fast float %848, %465
  %863 = fadd fast float %848, %465
  %864 = fadd fast float %848, %465
  %865 = and i32 %793, 15
  %866 = uitofp i32 %865 to float
  store float %866, float* %562, align 4, !tbaa !48, !alias.scope !50, !noalias !53
  br label %867

; <label>:867                                     ; preds = %854, %847
  %868 = phi float [ %862, %854 ], [ %848, %847 ]
  %869 = phi float [ %863, %854 ], [ %848, %847 ]
  %870 = phi float [ %864, %854 ], [ %848, %847 ]
  %871 = phi float [ %859, %854 ], [ %849, %847 ]
  %872 = phi float [ %860, %854 ], [ %850, %847 ]
  %873 = phi float [ %861, %854 ], [ %851, %847 ]
  %874 = phi float [ %855, %854 ], [ %848, %847 ]
  %875 = phi i32 [ %793, %854 ], [ %852, %847 ]
  %876 = icmp eq i32 %817, %875
  br i1 %876, label %877, label %890, !dx.controlflow.hints !47

; <label>:877                                     ; preds = %867
  %878 = fadd fast float %874, %466
  %879 = fmul fast float %450, %466
  %880 = fmul fast float %455, %466
  %881 = fmul fast float %460, %466
  %882 = fadd fast float %871, %879
  %883 = fadd fast float %872, %880
  %884 = fadd fast float %873, %881
  %885 = fadd fast float %868, %466
  %886 = fadd fast float %869, %466
  %887 = fadd fast float %870, %466
  %888 = and i32 %817, 15
  %889 = uitofp i32 %888 to float
  store float %889, float* %562, align 4, !tbaa !48, !alias.scope !50, !noalias !53
  br label %890

; <label>:890                                     ; preds = %877, %867, %808, %723, %638, %557
  %891 = phi float [ -1.000000e+00, %557 ], [ %639, %638 ], [ %639, %723 ], [ %639, %808 ], [ %639, %877 ], [ %639, %867 ]
  %892 = phi float [ 0.000000e+00, %557 ], [ 0.000000e+00, %638 ], [ 0.000000e+00, %723 ], [ 0.000000e+00, %808 ], [ %885, %877 ], [ %868, %867 ]
  %893 = phi float [ 0.000000e+00, %557 ], [ 0.000000e+00, %638 ], [ 0.000000e+00, %723 ], [ %809, %808 ], [ %809, %877 ], [ %809, %867 ]
  %894 = phi float [ 0.000000e+00, %557 ], [ 0.000000e+00, %638 ], [ %724, %723 ], [ %724, %808 ], [ %724, %877 ], [ %724, %867 ]
  %895 = phi float [ 0.000000e+00, %557 ], [ %640, %638 ], [ %640, %723 ], [ %640, %808 ], [ %640, %877 ], [ %640, %867 ]
  %896 = phi float [ 0.000000e+00, %557 ], [ 0.000000e+00, %638 ], [ 0.000000e+00, %723 ], [ 0.000000e+00, %808 ], [ %886, %877 ], [ %869, %867 ]
  %897 = phi float [ 0.000000e+00, %557 ], [ 0.000000e+00, %638 ], [ 0.000000e+00, %723 ], [ %810, %808 ], [ %810, %877 ], [ %810, %867 ]
  %898 = phi float [ 0.000000e+00, %557 ], [ 0.000000e+00, %638 ], [ %725, %723 ], [ %725, %808 ], [ %725, %877 ], [ %725, %867 ]
  %899 = phi float [ 0.000000e+00, %557 ], [ %641, %638 ], [ %641, %723 ], [ %641, %808 ], [ %641, %877 ], [ %641, %867 ]
  %900 = phi float [ 0.000000e+00, %557 ], [ 0.000000e+00, %638 ], [ 0.000000e+00, %723 ], [ 0.000000e+00, %808 ], [ %887, %877 ], [ %870, %867 ]
  %901 = phi float [ 0.000000e+00, %557 ], [ 0.000000e+00, %638 ], [ 0.000000e+00, %723 ], [ %811, %808 ], [ %811, %877 ], [ %811, %867 ]
  %902 = phi float [ 0.000000e+00, %557 ], [ 0.000000e+00, %638 ], [ %726, %723 ], [ %726, %808 ], [ %726, %877 ], [ %726, %867 ]
  %903 = phi float [ 0.000000e+00, %557 ], [ %642, %638 ], [ %642, %723 ], [ %642, %808 ], [ %642, %877 ], [ %642, %867 ]
  %904 = phi float [ 0.000000e+00, %557 ], [ 0.000000e+00, %638 ], [ 0.000000e+00, %723 ], [ 0.000000e+00, %808 ], [ %882, %877 ], [ %871, %867 ]
  %905 = phi float [ 0.000000e+00, %557 ], [ 0.000000e+00, %638 ], [ 0.000000e+00, %723 ], [ %812, %808 ], [ %812, %877 ], [ %812, %867 ]
  %906 = phi float [ 0.000000e+00, %557 ], [ 0.000000e+00, %638 ], [ %727, %723 ], [ %727, %808 ], [ %727, %877 ], [ %727, %867 ]
  %907 = phi float [ 0.000000e+00, %557 ], [ %643, %638 ], [ %643, %723 ], [ %643, %808 ], [ %643, %877 ], [ %643, %867 ]
  %908 = phi float [ 0.000000e+00, %557 ], [ 0.000000e+00, %638 ], [ 0.000000e+00, %723 ], [ 0.000000e+00, %808 ], [ %883, %877 ], [ %872, %867 ]
  %909 = phi float [ 0.000000e+00, %557 ], [ 0.000000e+00, %638 ], [ 0.000000e+00, %723 ], [ %813, %808 ], [ %813, %877 ], [ %813, %867 ]
  %910 = phi float [ 0.000000e+00, %557 ], [ 0.000000e+00, %638 ], [ %728, %723 ], [ %728, %808 ], [ %728, %877 ], [ %728, %867 ]
  %911 = phi float [ 0.000000e+00, %557 ], [ %644, %638 ], [ %644, %723 ], [ %644, %808 ], [ %644, %877 ], [ %644, %867 ]
  %912 = phi float [ 0.000000e+00, %557 ], [ 0.000000e+00, %638 ], [ 0.000000e+00, %723 ], [ 0.000000e+00, %808 ], [ %884, %877 ], [ %873, %867 ]
  %913 = phi float [ 0.000000e+00, %557 ], [ 0.000000e+00, %638 ], [ 0.000000e+00, %723 ], [ %814, %808 ], [ %814, %877 ], [ %814, %867 ]
  %914 = phi float [ 0.000000e+00, %557 ], [ 0.000000e+00, %638 ], [ %729, %723 ], [ %729, %808 ], [ %729, %877 ], [ %729, %867 ]
  %915 = phi float [ 0.000000e+00, %557 ], [ %645, %638 ], [ %645, %723 ], [ %645, %808 ], [ %645, %877 ], [ %645, %867 ]
  %916 = phi float [ 0.000000e+00, %557 ], [ 0.000000e+00, %638 ], [ 0.000000e+00, %723 ], [ 0.000000e+00, %808 ], [ %878, %877 ], [ %874, %867 ]
  %917 = phi float [ 0.000000e+00, %557 ], [ 0.000000e+00, %638 ], [ 0.000000e+00, %723 ], [ %815, %808 ], [ %815, %877 ], [ %815, %867 ]
  %918 = phi float [ 0.000000e+00, %557 ], [ 0.000000e+00, %638 ], [ %730, %723 ], [ %730, %808 ], [ %730, %877 ], [ %730, %867 ]
  %919 = phi i32 [ 65535, %557 ], [ 65535, %638 ], [ 65535, %723 ], [ 65535, %808 ], [ %817, %877 ], [ %875, %867 ]
  %920 = phi i32 [ 65535, %557 ], [ 65535, %638 ], [ 65535, %723 ], [ %816, %808 ], [ %816, %877 ], [ %816, %867 ]
  %921 = phi i32 [ 65535, %557 ], [ 65535, %638 ], [ %731, %723 ], [ %731, %808 ], [ %731, %877 ], [ %731, %867 ]
  %922 = phi i32 [ 65535, %557 ], [ %646, %638 ], [ %646, %723 ], [ %646, %808 ], [ %646, %877 ], [ %646, %867 ]
  %923 = phi i32 [ 0, %557 ], [ 1, %638 ], [ 2, %723 ], [ 3, %808 ], [ 4, %877 ], [ 4, %867 ]
  %924 = lshr i32 %922, 4
  %925 = lshr i32 %921, 4
  %926 = lshr i32 %920, 4
  %927 = lshr i32 %919, 4
  %928 = icmp eq i32 %923, 0
  br i1 %928, label %948, label %929, !dx.controlflow.hints !67

; <label>:929                                     ; preds = %890
  %930 = fdiv fast float %907, %895
  %931 = fdiv fast float %911, %899
  %932 = fdiv fast float %915, %903
  %933 = icmp eq i32 %923, 1
  br i1 %933, label %948, label %934, !dx.controlflow.hints !67

; <label>:934                                     ; preds = %929
  %935 = fdiv fast float %906, %894
  %936 = fdiv fast float %910, %898
  %937 = fdiv fast float %914, %902
  %938 = icmp eq i32 %923, 2
  br i1 %938, label %948, label %939, !dx.controlflow.hints !67

; <label>:939                                     ; preds = %934
  %940 = fdiv fast float %905, %893
  %941 = fdiv fast float %909, %897
  %942 = fdiv fast float %913, %901
  %943 = icmp eq i32 %923, 3
  br i1 %943, label %948, label %944, !dx.controlflow.hints !67

; <label>:944                                     ; preds = %939
  %945 = fdiv fast float %904, %892
  %946 = fdiv fast float %908, %896
  %947 = fdiv fast float %912, %900
  br label %948

; <label>:948                                     ; preds = %944, %939, %934, %929, %890
  %949 = phi float [ %904, %939 ], [ %945, %944 ], [ %904, %934 ], [ %904, %929 ], [ %904, %890 ]
  %950 = phi float [ %940, %939 ], [ %940, %944 ], [ %905, %934 ], [ %905, %929 ], [ %905, %890 ]
  %951 = phi float [ %935, %939 ], [ %935, %944 ], [ %935, %934 ], [ %906, %929 ], [ %906, %890 ]
  %952 = phi float [ %930, %939 ], [ %930, %944 ], [ %930, %934 ], [ %930, %929 ], [ %907, %890 ]
  %953 = phi float [ %908, %939 ], [ %946, %944 ], [ %908, %934 ], [ %908, %929 ], [ %908, %890 ]
  %954 = phi float [ %941, %939 ], [ %941, %944 ], [ %909, %934 ], [ %909, %929 ], [ %909, %890 ]
  %955 = phi float [ %936, %939 ], [ %936, %944 ], [ %936, %934 ], [ %910, %929 ], [ %910, %890 ]
  %956 = phi float [ %931, %939 ], [ %931, %944 ], [ %931, %934 ], [ %931, %929 ], [ %911, %890 ]
  %957 = phi float [ %912, %939 ], [ %947, %944 ], [ %912, %934 ], [ %912, %929 ], [ %912, %890 ]
  %958 = phi float [ %942, %939 ], [ %942, %944 ], [ %913, %934 ], [ %913, %929 ], [ %913, %890 ]
  %959 = phi float [ %937, %939 ], [ %937, %944 ], [ %937, %934 ], [ %914, %929 ], [ %914, %890 ]
  %960 = phi float [ %932, %939 ], [ %932, %944 ], [ %932, %934 ], [ %932, %929 ], [ %915, %890 ]
  %961 = fmul fast float %918, 2.000000e+00
  %962 = fmul fast float %917, 2.000000e+00
  %963 = fmul fast float %916, 2.000000e+00
  %964 = call float @dx.op.unary.f32(i32 7, float %961)  ; Saturate(value)
  %965 = call float @dx.op.unary.f32(i32 7, float %962)  ; Saturate(value)
  %966 = call float @dx.op.unary.f32(i32 7, float %963)  ; Saturate(value)
  %967 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i32 0, i32 0
  store i32 %924, i32* %967, align 4
  %968 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i32 0, i32 1
  store i32 %925, i32* %968, align 4
  %969 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i32 0, i32 2
  store i32 %926, i32* %969, align 4
  %970 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i32 0, i32 3
  store i32 %927, i32* %970, align 4
  %971 = getelementptr inbounds [4 x float], [4 x float]* %16, i32 0, i32 0
  store float 1.000000e+00, float* %971, align 4
  %972 = getelementptr inbounds [4 x float], [4 x float]* %16, i32 0, i32 1
  store float %964, float* %972, align 4
  %973 = getelementptr inbounds [4 x float], [4 x float]* %16, i32 0, i32 2
  store float %965, float* %973, align 4
  %974 = getelementptr inbounds [4 x float], [4 x float]* %16, i32 0, i32 3
  store float %966, float* %974, align 4
  %975 = getelementptr [4 x float], [4 x float]* %12, i32 0, i32 0
  %976 = getelementptr [4 x float], [4 x float]* %13, i32 0, i32 0
  %977 = getelementptr [4 x float], [4 x float]* %14, i32 0, i32 0
  store float %952, float* %975, align 4
  store float %956, float* %976, align 4
  store float %960, float* %977, align 4
  %978 = getelementptr [4 x float], [4 x float]* %12, i32 0, i32 1
  %979 = getelementptr [4 x float], [4 x float]* %13, i32 0, i32 1
  %980 = getelementptr [4 x float], [4 x float]* %14, i32 0, i32 1
  store float %951, float* %978, align 4
  store float %955, float* %979, align 4
  store float %959, float* %980, align 4
  %981 = getelementptr [4 x float], [4 x float]* %12, i32 0, i32 2
  %982 = getelementptr [4 x float], [4 x float]* %13, i32 0, i32 2
  %983 = getelementptr [4 x float], [4 x float]* %14, i32 0, i32 2
  store float %950, float* %981, align 4
  store float %954, float* %982, align 4
  store float %958, float* %983, align 4
  %984 = getelementptr [4 x float], [4 x float]* %12, i32 0, i32 3
  %985 = getelementptr [4 x float], [4 x float]* %13, i32 0, i32 3
  %986 = getelementptr [4 x float], [4 x float]* %14, i32 0, i32 3
  store float %949, float* %984, align 4
  store float %953, float* %985, align 4
  store float %957, float* %986, align 4
  br label %987

; <label>:987                                     ; preds = %1732, %948
  %988 = phi float [ %1742, %1732 ], [ %960, %948 ]
  %989 = phi float [ %1740, %1732 ], [ %956, %948 ]
  %990 = phi float [ %1738, %1732 ], [ %952, %948 ]
  %991 = phi float [ %1736, %1732 ], [ %891, %948 ]
  %992 = phi float [ %1729, %1732 ], [ 1.000000e+00, %948 ]
  %993 = phi i32 [ %1734, %1732 ], [ %924, %948 ]
  %994 = phi float [ %1725, %1732 ], [ 0.000000e+00, %948 ]
  %995 = phi float [ %1605, %1732 ], [ 0.000000e+00, %948 ]
  %996 = phi float [ %1485, %1732 ], [ 0.000000e+00, %948 ]
  %997 = phi float [ %1482, %1732 ], [ 0.000000e+00, %948 ]
  %998 = phi float [ %1477, %1732 ], [ 0.000000e+00, %948 ]
  %999 = phi float [ %1478, %1732 ], [ 0.000000e+00, %948 ]
  %1000 = phi float [ %1479, %1732 ], [ 0.000000e+00, %948 ]
  %1001 = phi float [ %1710, %1732 ], [ 0.000000e+00, %948 ]
  %1002 = phi float [ %1704, %1732 ], [ 0.000000e+00, %948 ]
  %1003 = phi float [ %1705, %1732 ], [ 0.000000e+00, %948 ]
  %1004 = phi float [ %1706, %1732 ], [ 0.000000e+00, %948 ]
  %1005 = phi float [ %1597, %1732 ], [ 0.000000e+00, %948 ]
  %1006 = phi i32 [ %1726, %1732 ], [ 0, %948 ]
  %1007 = getelementptr [4 x i32], [4 x i32]* %15, i32 0, i32 %1006
  store i32 65535, i32* %1007, align 4, !tbaa !25, !noalias !68
  %1008 = icmp eq i32 %1006, 0
  %1009 = add i32 %993, %351
  %1010 = mul i32 %1009, 100
  %1011 = add i32 %1010, 64
  %1012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1011, i32 undef)  ; BufferLoad(srv,index,wot)
  %1013 = extractvalue %dx.types.ResRet.i32 %1012, 2
  %1014 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1013)  ; LegacyF16ToF32(value)
  %1015 = fdiv fast float 2.500000e+01, %1014
  %1016 = call float @dx.op.unary.f32(i32 23, float %1015)  ; Log(value)
  %1017 = fsub fast float 5.000000e-01, %57
  %1018 = fadd fast float %1017, %1016
  %1019 = call float @dx.op.unary.f32(i32 28, float %1018)  ; Round_pi(value)
  %1020 = fptosi float %1019 to i32
  %1021 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %1020)  ; IMax(a,b)
  %1022 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1010, i32 undef)  ; BufferLoad(srv,index,wot)
  %1023 = extractvalue %dx.types.ResRet.i32 %1022, 0
  %1024 = bitcast i32 %1023 to float
  %1025 = extractvalue %dx.types.ResRet.i32 %1022, 1
  %1026 = bitcast i32 %1025 to float
  %1027 = extractvalue %dx.types.ResRet.i32 %1022, 3
  %1028 = bitcast i32 %1027 to float
  %1029 = add i32 %1010, 16
  %1030 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1029, i32 undef)  ; BufferLoad(srv,index,wot)
  %1031 = extractvalue %dx.types.ResRet.i32 %1030, 0
  %1032 = bitcast i32 %1031 to float
  %1033 = fcmp fast ogt float %991, 0.000000e+00
  br i1 %1033, label %1034, label %1046, !dx.controlflow.hints !69

; <label>:1034                                    ; preds = %987
  %1035 = call float @dx.op.unary.f32(i32 13, float %991)  ; Sin(value)
  %1036 = call float @dx.op.unary.f32(i32 12, float %991)  ; Cos(value)
  %1037 = fsub fast float -0.000000e+00, %1036
  %1038 = fmul fast float %1036, %1024
  %1039 = call float @dx.op.tertiary.f32(i32 46, float %1035, float %1028, float %1038)  ; FMad(a,b,c)
  %1040 = fmul fast float %1036, %1026
  %1041 = call float @dx.op.tertiary.f32(i32 46, float %1035, float %1032, float %1040)  ; FMad(a,b,c)
  %1042 = fmul fast float %1035, %1024
  %1043 = call float @dx.op.tertiary.f32(i32 46, float %1037, float %1028, float %1042)  ; FMad(a,b,c)
  %1044 = fmul fast float %1035, %1026
  %1045 = call float @dx.op.tertiary.f32(i32 46, float %1037, float %1032, float %1044)  ; FMad(a,b,c)
  br label %1046

; <label>:1046                                    ; preds = %1034, %987
  %1047 = phi float [ %1039, %1034 ], [ %1024, %987 ]
  %1048 = phi float [ %1043, %1034 ], [ %1028, %987 ]
  %1049 = phi float [ %1041, %1034 ], [ %1026, %987 ]
  %1050 = phi float [ %1045, %1034 ], [ %1032, %987 ]
  %1051 = fmul fast float %1047, %66
  %1052 = call float @dx.op.tertiary.f32(i32 46, float %1049, float %67, float %1051)  ; FMad(a,b,c)
  %1053 = fmul fast float %1048, %66
  %1054 = call float @dx.op.tertiary.f32(i32 46, float %1050, float %67, float %1053)  ; FMad(a,b,c)
  %1055 = add i32 %1010, 80
  %1056 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1055, i32 undef)  ; BufferLoad(srv,index,wot)
  %1057 = extractvalue %dx.types.ResRet.i32 %1056, 2
  %1058 = and i32 %1057, 4
  %1059 = icmp eq i32 %1058, 0
  br i1 %1059, label %1117, label %1060, !dx.controlflow.hints !70

; <label>:1060                                    ; preds = %1046
  %1061 = add i32 %1010, 32
  %1062 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1061, i32 undef)  ; BufferLoad(srv,index,wot)
  %1063 = extractvalue %dx.types.ResRet.i32 %1062, 3
  %1064 = and i32 %1063, 16777215
  %1065 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1066 = add i32 %1064, 0
  %1067 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1066, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1068 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1067, i32 0)  ; GetDimensions(handle,mipLevel)
  %1069 = extractvalue %dx.types.Dimensions %1068, 3
  %1070 = sub nsw i32 %1069, %1021
  %1071 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %1070)  ; IMax(a,b)
  %1072 = sitofp i32 %1071 to float
  %1073 = lshr i32 %1063, 16
  %1074 = and i32 %1073, 15
  %1075 = uitofp i32 %1074 to float
  %1076 = call float @dx.op.binary.f32(i32 35, float %1075, float %1072)  ; FMax(a,b)
  %1077 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1067, %dx.types.Handle %1065, float %1052, float %1054, float undef, float undef, i32 0, i32 0, i32 undef, float %1076)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1078 = extractvalue %dx.types.ResRet.f32 %1077, 0
  %1079 = fsub fast float 1.000000e+00, %992
  %1080 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1029, i32 undef)  ; BufferLoad(srv,index,wot)
  %1081 = extractvalue %dx.types.ResRet.i32 %1080, 2
  %1082 = lshr i32 %1081, 24
  %1083 = uitofp i32 %1082 to float
  %1084 = fmul fast float %1083, 0x3F70101020000000
  %1085 = extractvalue %dx.types.ResRet.i32 %1080, 3
  %1086 = lshr i32 %1085, 24
  %1087 = uitofp i32 %1086 to float
  %1088 = bitcast float %992 to i32
  %1089 = sitofp i32 %1088 to float
  %1090 = fadd fast float %1089, 0xC1CFBF8940000000
  %1091 = fmul fast float %1090, 0x3F70101020000000
  %1092 = fmul fast float %1091, %1087
  %1093 = fadd fast float %1092, 0x41CFBF8940000000
  %1094 = fptosi float %1093 to i32
  %1095 = bitcast i32 %1094 to float
  %1096 = bitcast float %1079 to i32
  %1097 = sitofp i32 %1096 to float
  %1098 = fadd fast float %1097, 0xC1CFBF8940000000
  %1099 = fmul fast float %1098, 0x3F70101020000000
  %1100 = fmul fast float %1099, %1087
  %1101 = fadd fast float %1100, 0x41CFBF8940000000
  %1102 = fptosi float %1101 to i32
  %1103 = bitcast i32 %1102 to float
  %1104 = fmul fast float %1095, %1084
  %1105 = fmul fast float %1103, %1084
  %1106 = fsub fast float %1079, %1104
  %1107 = fadd fast float %1105, %1079
  %1108 = call float @dx.op.unary.f32(i32 7, float %1106)  ; Saturate(value)
  %1109 = call float @dx.op.unary.f32(i32 7, float %1107)  ; Saturate(value)
  %1110 = fsub fast float %1078, %1108
  %1111 = fsub fast float %1109, %1108
  %1112 = bitcast float %1111 to i32
  %1113 = sub nsw i32 2129859010, %1112
  %1114 = bitcast i32 %1113 to float
  %1115 = fmul fast float %1114, %1110
  %1116 = call float @dx.op.unary.f32(i32 7, float %1115)  ; Saturate(value)
  br label %1117

; <label>:1117                                    ; preds = %1060, %1046
  %1118 = phi float [ %1116, %1060 ], [ 1.000000e+00, %1046 ]
  %1119 = phi float [ 1.000000e+00, %1060 ], [ %992, %1046 ]
  %1120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1055, i32 undef)  ; BufferLoad(srv,index,wot)
  %1121 = extractvalue %dx.types.ResRet.i32 %1120, 2
  %1122 = and i32 %1121, 65536
  %1123 = icmp eq i32 %1122, 0
  br i1 %1123, label %1144, label %1124, !dx.controlflow.hints !71

; <label>:1124                                    ; preds = %1117
  %1125 = add i32 %1010, 32
  %1126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1125, i32 undef)  ; BufferLoad(srv,index,wot)
  %1127 = extractvalue %dx.types.ResRet.i32 %1126, 2
  %1128 = and i32 %1127, 16777215
  %1129 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1130 = add i32 %1128, 0
  %1131 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1130, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1132 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1131, i32 0)  ; GetDimensions(handle,mipLevel)
  %1133 = extractvalue %dx.types.Dimensions %1132, 3
  %1134 = sub nsw i32 %1133, %1021
  %1135 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %1134)  ; IMax(a,b)
  %1136 = sitofp i32 %1135 to float
  %1137 = lshr i32 %1127, 16
  %1138 = and i32 %1137, 15
  %1139 = uitofp i32 %1138 to float
  %1140 = call float @dx.op.binary.f32(i32 35, float %1139, float %1136)  ; FMax(a,b)
  %1141 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1131, %dx.types.Handle %1129, float %1052, float %1054, float undef, float undef, i32 0, i32 0, i32 undef, float %1140)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1142 = extractvalue %dx.types.ResRet.f32 %1141, 0
  %1143 = fmul fast float %1142, %1119
  br label %1144

; <label>:1144                                    ; preds = %1124, %1117
  %1145 = phi float [ %1143, %1124 ], [ %1119, %1117 ]
  %1146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1055, i32 undef)  ; BufferLoad(srv,index,wot)
  %1147 = extractvalue %dx.types.ResRet.i32 %1146, 2
  %1148 = and i32 %1147, 131072
  %1149 = icmp ne i32 %1148, 0
  %1150 = fcmp fast ogt float %1145, 0x3FE0101020000000
  %1151 = select i1 %1150, float 1.000000e+00, float 0.000000e+00
  %1152 = select i1 %1149, float %1151, float %1145
  %1153 = fmul fast float %1152, %1118
  %1154 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %1155 = extractvalue %dx.types.CBufRet.i32 %1154, 3
  %1156 = and i32 %1155, 2
  %1157 = icmp eq i32 %1156, 0
  br i1 %1157, label %1167, label %1158, !dx.controlflow.hints !72

; <label>:1158                                    ; preds = %1144
  %1159 = call float @dx.op.unary.f32(i32 7, float %1153)  ; Saturate(value)
  %1160 = fmul fast float %1159, %1159
  %1161 = fmul fast float %1160, %1159
  %1162 = fmul fast float %1159, 6.000000e+00
  %1163 = fadd fast float %1162, -1.500000e+01
  %1164 = fmul fast float %1163, %1159
  %1165 = fadd fast float %1164, 1.000000e+01
  %1166 = fmul fast float %1161, %1165
  br label %1167

; <label>:1167                                    ; preds = %1158, %1144
  %1168 = phi float [ %1166, %1158 ], [ %1153, %1144 ]
  %1169 = select i1 %1008, float %992, float %1168
  %1170 = and i32 %1147, 4194304
  %1171 = icmp eq i32 %1170, 0
  br i1 %1171, label %1193, label %1172, !dx.controlflow.hints !73

; <label>:1172                                    ; preds = %1167
  %1173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1011, i32 undef)  ; BufferLoad(srv,index,wot)
  %1174 = extractvalue %dx.types.ResRet.i32 %1173, 2
  %1175 = lshr i32 %1174, 16
  %1176 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1175)  ; LegacyF16ToF32(value)
  %1177 = extractvalue %dx.types.ResRet.i32 %1173, 3
  %1178 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1177)  ; LegacyF16ToF32(value)
  %1179 = fadd fast float %57, -1.000000e+00
  %1180 = fdiv fast float %1179, %1178
  %1181 = call float @dx.op.unary.f32(i32 7, float %1180)  ; Saturate(value)
  %1182 = fmul fast float %1176, 8.000000e+00
  %1183 = fadd fast float %1182, 1.000000e+00
  %1184 = fdiv fast float 1.000000e+00, %1183
  %1185 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1174)  ; LegacyF16ToF32(value)
  %1186 = fmul fast float %1185, %1184
  %1187 = fdiv fast float 2.500000e+01, %1186
  %1188 = call float @dx.op.unary.f32(i32 23, float %1187)  ; Log(value)
  %1189 = fadd fast float %1017, %1188
  %1190 = call float @dx.op.unary.f32(i32 28, float %1189)  ; Round_pi(value)
  %1191 = fptosi float %1190 to i32
  %1192 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %1191)  ; IMax(a,b)
  br label %1193

; <label>:1193                                    ; preds = %1172, %1167
  %1194 = phi float [ %1184, %1172 ], [ 1.000000e+00, %1167 ]
  %1195 = phi i32 [ %1192, %1172 ], [ %1021, %1167 ]
  %1196 = phi float [ %1181, %1172 ], [ 1.000000e+00, %1167 ]
  %1197 = add i32 %1010, 32
  %1198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1197, i32 undef)  ; BufferLoad(srv,index,wot)
  %1199 = extractvalue %dx.types.ResRet.i32 %1198, 1
  %1200 = and i32 %1199, 16777215
  %1201 = icmp eq i32 %1200, 0
  br i1 %1201, label %1436, label %1202, !dx.controlflow.hints !74

; <label>:1202                                    ; preds = %1193
  %1203 = fmul fast float %1194, %1052
  %1204 = fmul fast float %1194, %1054
  %1205 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1206 = add i32 %1200, 0
  %1207 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1206, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1208 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1207, i32 0)  ; GetDimensions(handle,mipLevel)
  %1209 = extractvalue %dx.types.Dimensions %1208, 3
  %1210 = sub nsw i32 %1209, %1195
  %1211 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %1210)  ; IMax(a,b)
  %1212 = sitofp i32 %1211 to float
  %1213 = lshr i32 %1199, 16
  %1214 = and i32 %1213, 15
  %1215 = uitofp i32 %1214 to float
  %1216 = call float @dx.op.binary.f32(i32 35, float %1215, float %1212)  ; FMax(a,b)
  %1217 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1207, %dx.types.Handle %1205, float %1203, float %1204, float undef, float undef, i32 0, i32 0, i32 undef, float %1216)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1218 = extractvalue %dx.types.ResRet.f32 %1217, 0
  %1219 = extractvalue %dx.types.ResRet.f32 %1217, 1
  %1220 = extractvalue %dx.types.ResRet.f32 %1217, 2
  %1221 = extractvalue %dx.types.ResRet.f32 %1217, 3
  %1222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1029, i32 undef)  ; BufferLoad(srv,index,wot)
  %1223 = extractvalue %dx.types.ResRet.i32 %1222, 3
  %1224 = and i32 %1223, 255
  %1225 = uitofp i32 %1224 to float
  %1226 = lshr i32 %1223, 8
  %1227 = and i32 %1226, 255
  %1228 = uitofp i32 %1227 to float
  %1229 = lshr i32 %1223, 16
  %1230 = and i32 %1229, 255
  %1231 = uitofp i32 %1230 to float
  %1232 = fmul fast float %1231, 0x3F70101000000000
  %1233 = fmul fast float %1225, %1218
  %1234 = fadd fast float %1233, %1228
  %1235 = fmul fast float %1234, 0x3F70101000000000
  %1236 = fadd fast float %1219, -5.000000e-01
  %1237 = fadd fast float %1221, -5.000000e-01
  %1238 = fmul fast float %1232, %1236
  %1239 = fmul fast float %1232, %1237
  %1240 = fadd fast float %1238, 5.000000e-01
  %1241 = fadd fast float %1239, 5.000000e-01
  %1242 = fcmp fast olt float %1196, 1.000000e+00
  br i1 %1242, label %1243, label %1418, !dx.controlflow.hints !75

; <label>:1243                                    ; preds = %1202
  %1244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1055, i32 undef)  ; BufferLoad(srv,index,wot)
  %1245 = extractvalue %dx.types.ResRet.i32 %1244, 2
  %1246 = and i32 %1245, 4194304
  %1247 = icmp eq i32 %1246, 0
  br i1 %1247, label %1349, label %1248, !dx.controlflow.hints !76

; <label>:1248                                    ; preds = %1243
  %1249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1197, i32 undef)  ; BufferLoad(srv,index,wot)
  %1250 = extractvalue %dx.types.ResRet.i32 %1249, 1
  %1251 = and i32 %1250, 16777215
  %1252 = add i32 %1251, 0
  %1253 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1252, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1254 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1253, i32 0)  ; GetDimensions(handle,mipLevel)
  %1255 = extractvalue %dx.types.Dimensions %1254, 3
  %1256 = sub nsw i32 %1255, %1021
  %1257 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %1256)  ; IMax(a,b)
  %1258 = sitofp i32 %1257 to float
  %1259 = lshr i32 %1250, 16
  %1260 = and i32 %1259, 15
  %1261 = uitofp i32 %1260 to float
  %1262 = call float @dx.op.binary.f32(i32 35, float %1261, float %1258)  ; FMax(a,b)
  %1263 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1253, %dx.types.Handle %1205, float %1052, float %1054, float undef, float undef, i32 0, i32 0, i32 undef, float %1262)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1264 = extractvalue %dx.types.ResRet.f32 %1263, 0
  %1265 = extractvalue %dx.types.ResRet.f32 %1263, 1
  %1266 = extractvalue %dx.types.ResRet.f32 %1263, 2
  %1267 = extractvalue %dx.types.ResRet.f32 %1263, 3
  %1268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1029, i32 undef)  ; BufferLoad(srv,index,wot)
  %1269 = extractvalue %dx.types.ResRet.i32 %1268, 3
  %1270 = and i32 %1269, 255
  %1271 = uitofp i32 %1270 to float
  %1272 = lshr i32 %1269, 8
  %1273 = and i32 %1272, 255
  %1274 = uitofp i32 %1273 to float
  %1275 = lshr i32 %1269, 16
  %1276 = and i32 %1275, 255
  %1277 = uitofp i32 %1276 to float
  %1278 = fmul fast float %1277, 0x3F70101000000000
  %1279 = fmul fast float %1271, %1264
  %1280 = fadd fast float %1265, -5.000000e-01
  %1281 = fadd fast float %1267, -5.000000e-01
  %1282 = fmul fast float %1278, %1280
  %1283 = fmul fast float %1278, %1281
  %1284 = fadd fast float %1282, 5.000000e-01
  %1285 = fadd fast float %1283, 5.000000e-01
  %1286 = fmul fast float %1240, 2.000000e+00
  %1287 = fadd fast float %1286, -1.000000e+00
  %1288 = fmul fast float %1241, 2.000000e+00
  %1289 = fadd fast float %1288, -1.000000e+00
  %1290 = fadd fast float %1287, %1289
  %1291 = fmul fast float %1290, 5.000000e-01
  %1292 = fsub fast float %1287, %1289
  %1293 = fmul fast float %1292, 5.000000e-01
  %1294 = call float @dx.op.unary.f32(i32 6, float %1291)  ; FAbs(value)
  %1295 = fsub fast float 1.000000e+00, %1294
  %1296 = call float @dx.op.unary.f32(i32 6, float %1293)  ; FAbs(value)
  %1297 = fsub fast float %1295, %1296
  %1298 = call float @dx.op.dot3.f32(i32 55, float %1291, float %1293, float %1297, float %1291, float %1293, float %1297)  ; Dot3(ax,ay,az,bx,by,bz)
  %1299 = call float @dx.op.unary.f32(i32 25, float %1298)  ; Rsqrt(value)
  %1300 = fmul fast float %1299, %1291
  %1301 = fmul fast float %1299, %1293
  %1302 = fmul fast float %1299, %1297
  %1303 = fmul fast float %1284, 2.000000e+00
  %1304 = fadd fast float %1303, -1.000000e+00
  %1305 = fmul fast float %1285, 2.000000e+00
  %1306 = fadd fast float %1305, -1.000000e+00
  %1307 = fadd fast float %1304, %1306
  %1308 = fmul fast float %1307, 5.000000e-01
  %1309 = fsub fast float %1304, %1306
  %1310 = fmul fast float %1309, 5.000000e-01
  %1311 = call float @dx.op.unary.f32(i32 6, float %1308)  ; FAbs(value)
  %1312 = fsub fast float 1.000000e+00, %1311
  %1313 = call float @dx.op.unary.f32(i32 6, float %1310)  ; FAbs(value)
  %1314 = fsub fast float %1312, %1313
  %1315 = call float @dx.op.dot3.f32(i32 55, float %1308, float %1310, float %1314, float %1308, float %1310, float %1314)  ; Dot3(ax,ay,az,bx,by,bz)
  %1316 = call float @dx.op.unary.f32(i32 25, float %1315)  ; Rsqrt(value)
  %1317 = fmul fast float %1308, %1316
  %1318 = fmul fast float %1310, %1316
  %1319 = fmul fast float %1316, %1314
  %1320 = fadd fast float %1319, -7.500000e-01
  %1321 = fmul fast float %1320, 4.000000e+00
  %1322 = call float @dx.op.unary.f32(i32 7, float %1321)  ; Saturate(value)
  %1323 = fmul fast float %1322, %1196
  %1324 = fsub fast float 1.000000e+00, %1323
  %1325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1011, i32 undef)  ; BufferLoad(srv,index,wot)
  %1326 = extractvalue %dx.types.ResRet.i32 %1325, 3
  %1327 = lshr i32 %1326, 16
  %1328 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1327)  ; LegacyF16ToF32(value)
  %1329 = fmul fast float %1328, %1196
  %1330 = fadd fast float %1329, %1324
  %1331 = fdiv fast float %1324, %1330
  %1332 = fsub fast float %1317, %1300
  %1333 = fsub fast float %1318, %1301
  %1334 = fsub fast float %1319, %1302
  %1335 = fmul fast float %1332, %1331
  %1336 = fmul fast float %1333, %1331
  %1337 = fmul fast float %1331, %1334
  %1338 = fadd fast float %1335, %1300
  %1339 = fadd fast float %1336, %1301
  %1340 = fadd fast float %1337, %1302
  %1341 = fsub fast float %1266, %1220
  %1342 = fmul fast float %1331, %1341
  %1343 = fadd fast float %1342, %1220
  %1344 = fsub fast float %1274, %1234
  %1345 = fadd fast float %1344, %1279
  %1346 = fmul fast float %1345, 0x3F70101000000000
  %1347 = fmul fast float %1346, %1331
  %1348 = fadd fast float %1347, %1235
  br label %1436

; <label>:1349                                    ; preds = %1243
  %1350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1197, i32 undef)  ; BufferLoad(srv,index,wot)
  %1351 = extractvalue %dx.types.ResRet.i32 %1350, 1
  %1352 = and i32 %1351, 16777215
  %1353 = add i32 %1352, 0
  %1354 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1353, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1355 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1354, i32 0)  ; GetDimensions(handle,mipLevel)
  %1356 = extractvalue %dx.types.Dimensions %1355, 3
  %1357 = sub nsw i32 %1356, %1021
  %1358 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %1357)  ; IMax(a,b)
  %1359 = sitofp i32 %1358 to float
  %1360 = lshr i32 %1351, 16
  %1361 = and i32 %1360, 15
  %1362 = uitofp i32 %1361 to float
  %1363 = call float @dx.op.binary.f32(i32 35, float %1362, float %1359)  ; FMax(a,b)
  %1364 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1354, %dx.types.Handle %1205, float %1052, float %1054, float undef, float undef, i32 0, i32 0, i32 undef, float %1363)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1365 = extractvalue %dx.types.ResRet.f32 %1364, 0
  %1366 = extractvalue %dx.types.ResRet.f32 %1364, 1
  %1367 = extractvalue %dx.types.ResRet.f32 %1364, 2
  %1368 = extractvalue %dx.types.ResRet.f32 %1364, 3
  %1369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1029, i32 undef)  ; BufferLoad(srv,index,wot)
  %1370 = extractvalue %dx.types.ResRet.i32 %1369, 3
  %1371 = and i32 %1370, 255
  %1372 = uitofp i32 %1371 to float
  %1373 = lshr i32 %1370, 8
  %1374 = and i32 %1373, 255
  %1375 = uitofp i32 %1374 to float
  %1376 = lshr i32 %1370, 16
  %1377 = and i32 %1376, 255
  %1378 = uitofp i32 %1377 to float
  %1379 = fmul fast float %1378, 0x3F70101000000000
  %1380 = fmul fast float %1372, %1365
  %1381 = fadd fast float %1380, %1375
  %1382 = fadd fast float %1366, -5.000000e-01
  %1383 = fadd fast float %1368, -5.000000e-01
  %1384 = fmul fast float %1379, %1382
  %1385 = fmul fast float %1379, %1383
  %1386 = fadd fast float %1384, 5.000000e-01
  %1387 = fadd fast float %1385, 5.000000e-01
  %1388 = fsub fast float %1234, %1381
  %1389 = fsub fast float %1240, %1386
  %1390 = fsub fast float %1220, %1367
  %1391 = fsub fast float %1241, %1387
  %1392 = fmul fast float %1388, %1196
  %1393 = fmul fast float %1389, %1196
  %1394 = fmul fast float %1390, %1196
  %1395 = fmul fast float %1391, %1196
  %1396 = fadd fast float %1392, %1381
  %1397 = fmul fast float %1396, 0x3F70101000000000
  %1398 = fadd fast float %1393, %1386
  %1399 = fadd fast float %1394, %1367
  %1400 = fadd fast float %1395, %1387
  %1401 = fmul fast float %1398, 2.000000e+00
  %1402 = fadd fast float %1401, -1.000000e+00
  %1403 = fmul fast float %1400, 2.000000e+00
  %1404 = fadd fast float %1403, -1.000000e+00
  %1405 = fadd fast float %1402, %1404
  %1406 = fmul fast float %1405, 5.000000e-01
  %1407 = fsub fast float %1402, %1404
  %1408 = fmul fast float %1407, 5.000000e-01
  %1409 = call float @dx.op.unary.f32(i32 6, float %1406)  ; FAbs(value)
  %1410 = fsub fast float 1.000000e+00, %1409
  %1411 = call float @dx.op.unary.f32(i32 6, float %1408)  ; FAbs(value)
  %1412 = fsub fast float %1410, %1411
  %1413 = call float @dx.op.dot3.f32(i32 55, float %1406, float %1408, float %1412, float %1406, float %1408, float %1412)  ; Dot3(ax,ay,az,bx,by,bz)
  %1414 = call float @dx.op.unary.f32(i32 25, float %1413)  ; Rsqrt(value)
  %1415 = fmul fast float %1406, %1414
  %1416 = fmul fast float %1408, %1414
  %1417 = fmul fast float %1414, %1412
  br label %1436

; <label>:1418                                    ; preds = %1202
  %1419 = fmul fast float %1240, 2.000000e+00
  %1420 = fadd fast float %1419, -1.000000e+00
  %1421 = fmul fast float %1241, 2.000000e+00
  %1422 = fadd fast float %1421, -1.000000e+00
  %1423 = fadd fast float %1420, %1422
  %1424 = fmul fast float %1423, 5.000000e-01
  %1425 = fsub fast float %1420, %1422
  %1426 = fmul fast float %1425, 5.000000e-01
  %1427 = call float @dx.op.unary.f32(i32 6, float %1424)  ; FAbs(value)
  %1428 = fsub fast float 1.000000e+00, %1427
  %1429 = call float @dx.op.unary.f32(i32 6, float %1426)  ; FAbs(value)
  %1430 = fsub fast float %1428, %1429
  %1431 = call float @dx.op.dot3.f32(i32 55, float %1424, float %1426, float %1430, float %1424, float %1426, float %1430)  ; Dot3(ax,ay,az,bx,by,bz)
  %1432 = call float @dx.op.unary.f32(i32 25, float %1431)  ; Rsqrt(value)
  %1433 = fmul fast float %1432, %1424
  %1434 = fmul fast float %1432, %1426
  %1435 = fmul fast float %1432, %1430
  br label %1436

; <label>:1436                                    ; preds = %1418, %1349, %1248, %1193
  %1437 = phi float [ %1338, %1248 ], [ %1415, %1349 ], [ %1433, %1418 ], [ 0.000000e+00, %1193 ]
  %1438 = phi float [ %1339, %1248 ], [ %1416, %1349 ], [ %1434, %1418 ], [ 0.000000e+00, %1193 ]
  %1439 = phi float [ %1340, %1248 ], [ %1417, %1349 ], [ %1435, %1418 ], [ 1.000000e+00, %1193 ]
  %1440 = phi float [ %1343, %1248 ], [ %1399, %1349 ], [ %1220, %1418 ], [ 1.000000e+00, %1193 ]
  %1441 = phi float [ %1348, %1248 ], [ %1397, %1349 ], [ %1235, %1418 ], [ 0x3FD6666660000000, %1193 ]
  %1442 = fmul fast float %1437, %1047
  %1443 = call float @dx.op.tertiary.f32(i32 46, float %1438, float %1048, float %1442)  ; FMad(a,b,c)
  %1444 = fmul fast float %1437, %1049
  %1445 = call float @dx.op.tertiary.f32(i32 46, float %1438, float %1050, float %1444)  ; FMad(a,b,c)
  %1446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1011, i32 undef)  ; BufferLoad(srv,index,wot)
  %1447 = extractvalue %dx.types.ResRet.i32 %1446, 2
  %1448 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1447)  ; LegacyF16ToF32(value)
  %1449 = fdiv fast float %1443, %1448
  %1450 = fdiv fast float %1445, %1448
  %1451 = xor i1 %1008, true
  %1452 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %1453 = extractvalue %dx.types.CBufRet.i32 %1452, 3
  %1454 = and i32 %1453, 1
  %1455 = icmp ne i32 %1454, 0
  %1456 = and i1 %1455, %1451
  br i1 %1456, label %1457, label %1469, !dx.controlflow.hints !77

; <label>:1457                                    ; preds = %1436
  %1458 = call float @dx.op.unary.f32(i32 7, float %1439)  ; Saturate(value)
  %1459 = fmul fast float %1458, 0x3FECCCCCC0000000
  %1460 = fsub fast float 1.000000e+00, %1459
  %1461 = fmul fast float %1460, %1169
  %1462 = fsub fast float 1.000000e+00, %1169
  %1463 = call float @dx.op.unary.f32(i32 7, float %1000)  ; Saturate(value)
  %1464 = fmul fast float %1463, 0x3FECCCCCC0000000
  %1465 = fsub fast float 1.000000e+00, %1464
  %1466 = fmul fast float %1465, %1462
  %1467 = fadd fast float %1466, %1461
  %1468 = fdiv fast float %1461, %1467
  br label %1469

; <label>:1469                                    ; preds = %1457, %1436
  %1470 = phi float [ %1468, %1457 ], [ %1169, %1436 ]
  %1471 = fsub fast float %1449, %998
  %1472 = fsub fast float %1450, %999
  %1473 = fsub fast float %1439, %1000
  %1474 = fmul fast float %1470, %1471
  %1475 = fmul fast float %1470, %1472
  %1476 = fmul fast float %1470, %1473
  %1477 = fadd fast float %1474, %998
  %1478 = fadd fast float %1475, %999
  %1479 = fadd fast float %1476, %1000
  %1480 = fsub fast float %1440, %997
  %1481 = fmul fast float %1470, %1480
  %1482 = fadd fast float %1481, %997
  %1483 = fsub fast float %1441, %996
  %1484 = fmul fast float %1470, %1483
  %1485 = fadd fast float %1484, %996
  %1486 = fmul fast float %1194, %1052
  %1487 = fmul fast float %1194, %1054
  %1488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1197, i32 undef)  ; BufferLoad(srv,index,wot)
  %1489 = extractvalue %dx.types.ResRet.i32 %1488, 0
  %1490 = and i32 %1489, 16777215
  %1491 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1492 = add i32 %1490, 0
  %1493 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1492, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1494 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1493, i32 0)  ; GetDimensions(handle,mipLevel)
  %1495 = extractvalue %dx.types.Dimensions %1494, 3
  %1496 = sub nsw i32 %1495, %1195
  %1497 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %1496)  ; IMax(a,b)
  %1498 = sitofp i32 %1497 to float
  %1499 = lshr i32 %1489, 16
  %1500 = and i32 %1499, 15
  %1501 = uitofp i32 %1500 to float
  %1502 = call float @dx.op.binary.f32(i32 35, float %1501, float %1498)  ; FMax(a,b)
  %1503 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1493, %dx.types.Handle %1491, float %1486, float %1487, float undef, float undef, i32 0, i32 0, i32 undef, float %1502)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1504 = extractvalue %dx.types.ResRet.f32 %1503, 0
  %1505 = extractvalue %dx.types.ResRet.f32 %1503, 1
  %1506 = extractvalue %dx.types.ResRet.f32 %1503, 2
  %1507 = extractvalue %dx.types.ResRet.f32 %1503, 3
  %1508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1055, i32 undef)  ; BufferLoad(srv,index,wot)
  %1509 = extractvalue %dx.types.ResRet.i32 %1508, 0
  %1510 = lshr i32 %1509, 16
  %1511 = and i32 %1510, 255
  %1512 = uitofp i32 %1511 to float
  %1513 = lshr i32 %1509, 24
  %1514 = uitofp i32 %1513 to float
  %1515 = fmul fast float %1512, %1507
  %1516 = fadd fast float %1515, %1514
  %1517 = fcmp fast olt float %1196, 1.000000e+00
  br i1 %1517, label %1518, label %1559, !dx.controlflow.hints !78

; <label>:1518                                    ; preds = %1469
  %1519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1197, i32 undef)  ; BufferLoad(srv,index,wot)
  %1520 = extractvalue %dx.types.ResRet.i32 %1519, 0
  %1521 = and i32 %1520, 16777215
  %1522 = add i32 %1521, 0
  %1523 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1522, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1524 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1523, i32 0)  ; GetDimensions(handle,mipLevel)
  %1525 = extractvalue %dx.types.Dimensions %1524, 3
  %1526 = sub nsw i32 %1525, %1021
  %1527 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %1526)  ; IMax(a,b)
  %1528 = sitofp i32 %1527 to float
  %1529 = lshr i32 %1520, 16
  %1530 = and i32 %1529, 15
  %1531 = uitofp i32 %1530 to float
  %1532 = call float @dx.op.binary.f32(i32 35, float %1531, float %1528)  ; FMax(a,b)
  %1533 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1523, %dx.types.Handle %1491, float %1052, float %1054, float undef, float undef, i32 0, i32 0, i32 undef, float %1532)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1534 = extractvalue %dx.types.ResRet.f32 %1533, 0
  %1535 = extractvalue %dx.types.ResRet.f32 %1533, 1
  %1536 = extractvalue %dx.types.ResRet.f32 %1533, 2
  %1537 = extractvalue %dx.types.ResRet.f32 %1533, 3
  %1538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1055, i32 undef)  ; BufferLoad(srv,index,wot)
  %1539 = extractvalue %dx.types.ResRet.i32 %1538, 0
  %1540 = lshr i32 %1539, 16
  %1541 = and i32 %1540, 255
  %1542 = uitofp i32 %1541 to float
  %1543 = lshr i32 %1539, 24
  %1544 = uitofp i32 %1543 to float
  %1545 = fmul fast float %1542, %1537
  %1546 = fadd fast float %1545, %1544
  %1547 = fsub fast float %1504, %1534
  %1548 = fsub fast float %1505, %1535
  %1549 = fsub fast float %1506, %1536
  %1550 = fsub fast float %1516, %1546
  %1551 = fmul fast float %1547, %1196
  %1552 = fmul fast float %1548, %1196
  %1553 = fmul fast float %1549, %1196
  %1554 = fmul fast float %1550, %1196
  %1555 = fadd fast float %1551, %1534
  %1556 = fadd fast float %1552, %1535
  %1557 = fadd fast float %1553, %1536
  %1558 = fadd fast float %1554, %1546
  br label %1559

; <label>:1559                                    ; preds = %1518, %1469
  %1560 = phi float [ %1555, %1518 ], [ %1504, %1469 ]
  %1561 = phi float [ %1556, %1518 ], [ %1505, %1469 ]
  %1562 = phi float [ %1557, %1518 ], [ %1506, %1469 ]
  %1563 = phi float [ %1558, %1518 ], [ %1516, %1469 ]
  %1564 = fmul float %1563, 0x3F70101000000000
  %1565 = call float @dx.op.unary.f32(i32 24, float %1560)  ; Sqrt(value)
  %1566 = call float @dx.op.unary.f32(i32 24, float %1561)  ; Sqrt(value)
  %1567 = call float @dx.op.unary.f32(i32 24, float %1562)  ; Sqrt(value)
  %1568 = fmul fast float %990, 2.000000e+00
  %1569 = fsub fast float 1.000000e+00, %1568
  %1570 = fmul fast float %1565, %1569
  %1571 = fadd fast float %1570, %1568
  %1572 = fmul fast float %1571, %1565
  %1573 = fmul fast float %989, 2.000000e+00
  %1574 = fsub fast float 1.000000e+00, %1573
  %1575 = fmul fast float %1566, %1574
  %1576 = fadd fast float %1575, %1573
  %1577 = fmul fast float %1576, %1566
  %1578 = fmul fast float %988, 2.000000e+00
  %1579 = fsub fast float 1.000000e+00, %1578
  %1580 = fmul fast float %1567, %1579
  %1581 = fadd fast float %1580, %1578
  %1582 = fmul fast float %1581, %1567
  %1583 = fmul fast float %1572, %1572
  %1584 = fmul fast float %1577, %1577
  %1585 = fmul fast float %1582, %1582
  %1586 = fsub fast float %1583, %1002
  %1587 = fsub fast float %1584, %1003
  %1588 = fsub fast float %1585, %1004
  %1589 = fsub fast float %1564, %1005
  %1590 = fmul fast float %1586, %1470
  %1591 = fmul fast float %1587, %1470
  %1592 = fmul fast float %1588, %1470
  %1593 = fmul fast float %1589, %1470
  %1594 = fadd fast float %1590, %1002
  %1595 = fadd fast float %1591, %1003
  %1596 = fadd fast float %1592, %1004
  %1597 = fadd fast float %1593, %1005
  %1598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1197, i32 undef)  ; BufferLoad(srv,index,wot)
  %1599 = extractvalue %dx.types.ResRet.i32 %1598, 0
  %1600 = lshr i32 %1599, 24
  %1601 = uitofp i32 %1600 to float
  %1602 = fmul fast float %1601, 0x3F70101020000000
  %1603 = fsub fast float %1602, %995
  %1604 = fmul fast float %1603, %1470
  %1605 = fadd fast float %1604, %995
  %1606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1055, i32 undef)  ; BufferLoad(srv,index,wot)
  %1607 = extractvalue %dx.types.ResRet.i32 %1606, 2
  %1608 = and i32 %1607, 8
  %1609 = icmp eq i32 %1608, 0
  br i1 %1609, label %1703, label %1610, !dx.controlflow.hints !79

; <label>:1610                                    ; preds = %1559
  %1611 = add i32 %1010, 48
  %1612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1611, i32 undef)  ; BufferLoad(srv,index,wot)
  %1613 = extractvalue %dx.types.ResRet.i32 %1612, 1
  %1614 = and i32 %1613, 16777215
  %1615 = add i32 %1614, 0
  %1616 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1615, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1617 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1616, i32 0)  ; GetDimensions(handle,mipLevel)
  %1618 = extractvalue %dx.types.Dimensions %1617, 3
  %1619 = sub nsw i32 %1618, %1195
  %1620 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %1619)  ; IMax(a,b)
  %1621 = sitofp i32 %1620 to float
  %1622 = lshr i32 %1613, 16
  %1623 = and i32 %1622, 15
  %1624 = uitofp i32 %1623 to float
  %1625 = call float @dx.op.binary.f32(i32 35, float %1624, float %1621)  ; FMax(a,b)
  %1626 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1616, %dx.types.Handle %1491, float %1486, float %1487, float undef, float undef, i32 0, i32 0, i32 undef, float %1625)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1627 = extractvalue %dx.types.ResRet.f32 %1626, 0
  %1628 = extractvalue %dx.types.ResRet.f32 %1626, 1
  %1629 = extractvalue %dx.types.ResRet.f32 %1626, 2
  br i1 %1517, label %1630, label %1649, !dx.controlflow.hints !80

; <label>:1630                                    ; preds = %1610
  %1631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1611, i32 undef)  ; BufferLoad(srv,index,wot)
  %1632 = extractvalue %dx.types.ResRet.i32 %1631, 1
  %1633 = and i32 %1632, 16777215
  %1634 = add i32 %1633, 0
  %1635 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1634, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1636 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1635, i32 0)  ; GetDimensions(handle,mipLevel)
  %1637 = extractvalue %dx.types.Dimensions %1636, 3
  %1638 = sub nsw i32 %1637, %1021
  %1639 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %1638)  ; IMax(a,b)
  %1640 = sitofp i32 %1639 to float
  %1641 = lshr i32 %1632, 16
  %1642 = and i32 %1641, 15
  %1643 = uitofp i32 %1642 to float
  %1644 = call float @dx.op.binary.f32(i32 35, float %1643, float %1640)  ; FMax(a,b)
  %1645 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1635, %dx.types.Handle %1491, float %1052, float %1054, float undef, float undef, i32 0, i32 0, i32 undef, float %1644)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1646 = extractvalue %dx.types.ResRet.f32 %1645, 0
  %1647 = extractvalue %dx.types.ResRet.f32 %1645, 1
  %1648 = extractvalue %dx.types.ResRet.f32 %1645, 2
  br label %1649

; <label>:1649                                    ; preds = %1630, %1610
  %1650 = phi float [ %1646, %1630 ], [ %1627, %1610 ]
  %1651 = phi float [ %1647, %1630 ], [ %1628, %1610 ]
  %1652 = phi float [ %1648, %1630 ], [ %1629, %1610 ]
  %1653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1055, i32 undef)  ; BufferLoad(srv,index,wot)
  %1654 = extractvalue %dx.types.ResRet.i32 %1653, 0
  %1655 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1654)  ; LegacyF16ToF32(value)
  %1656 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %1657 = extractvalue %dx.types.CBufRet.i32 %1656, 1
  %1658 = icmp eq i32 %1657, 2
  br i1 %1658, label %1659, label %1703, !dx.controlflow.hints !81

; <label>:1659                                    ; preds = %1649
  %1660 = call float @dx.op.binary.f32(i32 36, float %1594, float 0x3FEFAE1480000000)  ; FMin(a,b)
  %1661 = call float @dx.op.binary.f32(i32 36, float %1595, float 0x3FEFAE1480000000)  ; FMin(a,b)
  %1662 = call float @dx.op.binary.f32(i32 36, float %1596, float 0x3FEFAE1480000000)  ; FMin(a,b)
  %1663 = fsub fast float 1.000000e+00, %1660
  %1664 = fsub fast float 1.000000e+00, %1661
  %1665 = fsub fast float 1.000000e+00, %1662
  %1666 = call float @dx.op.unary.f32(i32 23, float %1663)  ; Log(value)
  %1667 = call float @dx.op.unary.f32(i32 23, float %1664)  ; Log(value)
  %1668 = call float @dx.op.unary.f32(i32 23, float %1665)  ; Log(value)
  %1669 = call float @dx.op.binary.f32(i32 36, float %1650, float 0x3FEFAE1480000000)  ; FMin(a,b)
  %1670 = call float @dx.op.binary.f32(i32 36, float %1651, float 0x3FEFAE1480000000)  ; FMin(a,b)
  %1671 = call float @dx.op.binary.f32(i32 36, float %1652, float 0x3FEFAE1480000000)  ; FMin(a,b)
  %1672 = fsub fast float 1.000000e+00, %1669
  %1673 = fsub fast float 1.000000e+00, %1670
  %1674 = fsub fast float 1.000000e+00, %1671
  %1675 = call float @dx.op.unary.f32(i32 23, float %1672)  ; Log(value)
  %1676 = call float @dx.op.unary.f32(i32 23, float %1673)  ; Log(value)
  %1677 = call float @dx.op.unary.f32(i32 23, float %1674)  ; Log(value)
  %1678 = fmul fast float %1168, %1675
  %1679 = fmul fast float %1168, %1676
  %1680 = fmul fast float %1168, %1677
  %1681 = fsub fast float -0.000000e+00, %1666
  %1682 = fsub fast float %1681, %1678
  %1683 = fsub fast float -0.000000e+00, %1667
  %1684 = fsub fast float %1683, %1679
  %1685 = fsub fast float -0.000000e+00, %1668
  %1686 = fsub fast float %1685, %1680
  %1687 = fsub fast float -0.000000e+00, %1682
  %1688 = fsub fast float -0.000000e+00, %1684
  %1689 = fsub fast float -0.000000e+00, %1686
  %1690 = call float @dx.op.unary.f32(i32 21, float %1687)  ; Exp(value)
  %1691 = call float @dx.op.unary.f32(i32 21, float %1688)  ; Exp(value)
  %1692 = call float @dx.op.unary.f32(i32 21, float %1689)  ; Exp(value)
  %1693 = fsub fast float 1.000000e+00, %1690
  %1694 = fsub fast float 1.000000e+00, %1691
  %1695 = fsub fast float 1.000000e+00, %1692
  %1696 = call float @dx.op.dot3.f32(i32 55, float %1693, float %1694, float %1695, float %1693, float %1694, float %1695)  ; Dot3(ax,ay,az,bx,by,bz)
  %1697 = call float @dx.op.dot3.f32(i32 55, float %1650, float %1651, float %1652, float %1650, float %1651, float %1652)  ; Dot3(ax,ay,az,bx,by,bz)
  %1698 = fmul fast float %1697, %1168
  %1699 = fcmp fast une float %1696, 0.000000e+00
  %1700 = fdiv fast float %1698, %1696
  %1701 = select i1 %1699, float %1700, float 0.000000e+00
  %1702 = fmul fast float %1701, %1655
  br label %1703

; <label>:1703                                    ; preds = %1659, %1649, %1559
  %1704 = phi float [ %1693, %1659 ], [ %1594, %1649 ], [ %1594, %1559 ]
  %1705 = phi float [ %1694, %1659 ], [ %1595, %1649 ], [ %1595, %1559 ]
  %1706 = phi float [ %1695, %1659 ], [ %1596, %1649 ], [ %1596, %1559 ]
  %1707 = phi float [ %1702, %1659 ], [ %1655, %1649 ], [ 0.000000e+00, %1559 ]
  %1708 = fsub fast float %1707, %1001
  %1709 = fmul fast float %1708, %1168
  %1710 = fadd fast float %1709, %1001
  %1711 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1197, i32 undef)  ; BufferLoad(srv,index,wot)
  %1712 = extractvalue %dx.types.ResRet.i32 %1711, 2
  %1713 = lshr i32 %1712, 24
  %1714 = uitofp i32 %1713 to float
  %1715 = extractvalue %dx.types.ResRet.i32 %1711, 1
  %1716 = lshr i32 %1715, 24
  %1717 = uitofp i32 %1716 to float
  %1718 = call float @dx.op.dot3.f32(i32 55, float %1583, float %1584, float %1585, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1719 = fmul fast float %1714, %1718
  %1720 = fadd fast float %1719, %1717
  %1721 = fmul fast float %1720, 0x3F70101020000000
  %1722 = call float @dx.op.unary.f32(i32 7, float %1721)  ; Saturate(value)
  %1723 = fsub fast float %1722, %994
  %1724 = fmul fast float %1723, %1470
  %1725 = fadd fast float %1724, %994
  %1726 = add nuw nsw i32 %1006, 1
  %1727 = icmp ugt i32 %1726, 3
  %1728 = getelementptr [4 x float], [4 x float]* %16, i32 0, i32 %1726
  %1729 = load float, float* %1728, align 4, !tbaa !48, !noalias !68
  %1730 = fcmp fast ole float %1729, 0.000000e+00
  %1731 = or i1 %1727, %1730
  br i1 %1731, label %1743, label %1732, !dx.controlflow.hints !82, !llvm.loop !83

; <label>:1732                                    ; preds = %1703
  %1733 = getelementptr [4 x i32], [4 x i32]* %15, i32 0, i32 %1726
  %1734 = load i32, i32* %1733, align 4, !tbaa !25, !noalias !68
  %1735 = getelementptr [4 x float], [4 x float]* %17, i32 0, i32 %1726
  %1736 = load float, float* %1735, align 4, !tbaa !48, !noalias !68
  %1737 = getelementptr [4 x float], [4 x float]* %12, i32 0, i32 %1726
  %1738 = load float, float* %1737, align 4
  %1739 = getelementptr [4 x float], [4 x float]* %13, i32 0, i32 %1726
  %1740 = load float, float* %1739, align 4
  %1741 = getelementptr [4 x float], [4 x float]* %14, i32 0, i32 %1726
  %1742 = load float, float* %1741, align 4
  br label %987

; <label>:1743                                    ; preds = %1703
  %1744 = call float @dx.op.dot3.f32(i32 55, float %1477, float %1478, float %1479, float %1477, float %1478, float %1479)  ; Dot3(ax,ay,az,bx,by,bz)
  %1745 = call float @dx.op.unary.f32(i32 25, float %1744)  ; Rsqrt(value)
  %1746 = fmul fast float %1745, %1477
  %1747 = fmul fast float %1745, %1478
  %1748 = fmul fast float %1745, %1479
  %1749 = call float @dx.op.unary.f32(i32 6, float %1746)  ; FAbs(value)
  %1750 = call float @dx.op.unary.f32(i32 6, float %1747)  ; FAbs(value)
  %1751 = fadd fast float %1748, %1749
  %1752 = fadd fast float %1751, %1750
  %1753 = fdiv fast float 1.000000e+00, %1752
  %1754 = fadd fast float %1478, %1477
  %1755 = fsub fast float %1477, %1478
  %1756 = fmul fast float %1754, 5.000000e-01
  %1757 = fmul fast float %1756, %1745
  %1758 = fmul fast float %1757, %1753
  %1759 = fadd fast float %1758, 5.000000e-01
  %1760 = fmul fast float %1755, 5.000000e-01
  %1761 = fmul fast float %1760, %1745
  %1762 = fmul fast float %1761, %1753
  %1763 = fadd fast float %1762, 5.000000e-01
  br label %1764

; <label>:1764                                    ; preds = %1743, %343
  %1765 = phi float [ %1725, %1743 ], [ 0.000000e+00, %343 ]
  %1766 = phi float [ %1605, %1743 ], [ 0.000000e+00, %343 ]
  %1767 = phi float [ %1710, %1743 ], [ 0.000000e+00, %343 ]
  %1768 = phi float [ %1485, %1743 ], [ 0.000000e+00, %343 ]
  %1769 = phi float [ %1759, %1743 ], [ 0.000000e+00, %343 ]
  %1770 = phi float [ %1482, %1743 ], [ 0.000000e+00, %343 ]
  %1771 = phi float [ %1763, %1743 ], [ 0.000000e+00, %343 ]
  %1772 = phi float [ %1704, %1743 ], [ 0.000000e+00, %343 ]
  %1773 = phi float [ %1705, %1743 ], [ 0.000000e+00, %343 ]
  %1774 = phi float [ %1706, %1743 ], [ 0.000000e+00, %343 ]
  %1775 = phi float [ %1597, %1743 ], [ 0.000000e+00, %343 ]
  br i1 %345, label %1776, label %1818, !dx.controlflow.hints !85

; <label>:1776                                    ; preds = %1764
  %1777 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %1778 = extractvalue %dx.types.CBufRet.i32 %1777, 1
  %1779 = icmp eq i32 %1778, 5
  %1780 = fcmp fast ole float %1772, 0x3F69A5C380000000
  %1781 = fcmp fast ole float %1773, 0x3F69A5C380000000
  %1782 = fcmp fast ole float %1774, 0x3F69A5C380000000
  %1783 = fmul fast float %1772, 0x4029D70A40000000
  %1784 = fmul fast float %1773, 0x4029D70A40000000
  %1785 = fmul fast float %1774, 0x4029D70A40000000
  %1786 = call float @dx.op.unary.f32(i32 23, float %1772)  ; Log(value)
  %1787 = call float @dx.op.unary.f32(i32 23, float %1773)  ; Log(value)
  %1788 = call float @dx.op.unary.f32(i32 23, float %1774)  ; Log(value)
  %1789 = fmul fast float %1786, 0x3FDAAAAAA0000000
  %1790 = fmul fast float %1787, 0x3FDAAAAAA0000000
  %1791 = fmul fast float %1788, 0x3FDAAAAAA0000000
  %1792 = call float @dx.op.unary.f32(i32 21, float %1789)  ; Exp(value)
  %1793 = call float @dx.op.unary.f32(i32 21, float %1790)  ; Exp(value)
  %1794 = call float @dx.op.unary.f32(i32 21, float %1791)  ; Exp(value)
  %1795 = fmul fast float %1792, 0x3FF0E147A0000000
  %1796 = fmul fast float %1793, 0x3FF0E147A0000000
  %1797 = fmul fast float %1794, 0x3FF0E147A0000000
  %1798 = fadd fast float %1795, 0xBFAC28F5C0000000
  %1799 = fadd fast float %1796, 0xBFAC28F5C0000000
  %1800 = fadd fast float %1797, 0xBFAC28F5C0000000
  %1801 = select i1 %1780, float %1783, float %1798
  %1802 = select i1 %1781, float %1784, float %1799
  %1803 = select i1 %1782, float %1785, float %1800
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %59, i32 %10, i32 undef, float %1801, float %1802, float %1803, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br i1 %1779, label %1818, label %1804, !dx.controlflow.hints !86

; <label>:1804                                    ; preds = %1776
  %1805 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %1806 = extractvalue %dx.types.CBufRet.i32 %1805, 1
  switch i32 %1806, label %1816 [
    i32 1, label %1807
    i32 2, label %1808
    i32 3, label %1815
  ], !dx.controlflow.hints !87

; <label>:1807                                    ; preds = %1804
  br label %1816

; <label>:1808                                    ; preds = %1804
  %1809 = fcmp fast une float %1767, 0.000000e+00
  %1810 = call float @dx.op.unary.f32(i32 23, float %1767)  ; Log(value)
  %1811 = fadd fast float %1810, 1.600000e+01
  %1812 = fmul fast float %1811, 3.125000e-02
  %1813 = call float @dx.op.unary.f32(i32 7, float %1812)  ; Saturate(value)
  %1814 = select i1 %1809, float %1813, float 0.000000e+00
  br label %1816

; <label>:1815                                    ; preds = %1804
  br label %1816

; <label>:1816                                    ; preds = %1815, %1808, %1807, %1804
  %1817 = phi float [ 0.000000e+00, %1804 ], [ %1765, %1815 ], [ %1814, %1808 ], [ %1766, %1807 ]
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %59, i32 %10, i32 undef, float %1769, float %1771, float %1770, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %59, i32 %10, i32 undef, float %1775, float %1768, float %1817, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1818

; <label>:1818                                    ; preds = %1816, %1776, %1764
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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #1

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
!dx.entryPoints = !{!22}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !12, !16, !18}
!5 = !{!6, !8, !10, !11}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<unsigned int, 4> >"]* undef, !"", i32 5, i32 0, i32 -1, i32 2, i32 0, !9}
!9 = !{i32 0, i32 5}
!10 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 16, i32 1, i32 11, i32 0, null}
!11 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 10, i32 1, i32 2, i32 0, !7}
!12 = !{!13, !14, !15}
!13 = !{i32 0, %"class.RWTexture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!14 = !{i32 1, %"class.RWTexture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!15 = !{i32 2, %"class.RWTexture2D<vector<float, 4> >"* undef, !"", i32 0, i32 4, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!16 = !{!17}
!17 = !{i32 0, %GfxVirtualTexturingComposite* undef, !"", i32 0, i32 0, i32 1, i32 4208, null}
!18 = !{!19, !20, !21}
!19 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!20 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!21 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!22 = !{void ()* @cs_compose_to_scratch_with_cutout_ompv, !"cs_compose_to_scratch_with_cutout_ompv", null, !4, !23}
!23 = !{i32 0, i64 272, i32 4, !24}
!24 = !{i32 8, i32 8, i32 1}
!25 = !{!26, !26, i64 0}
!26 = !{!"int", !27, i64 0}
!27 = !{!"omnipotent char", !28, i64 0}
!28 = !{!"Simple C/C++ TBAA"}
!29 = !{!30, !32, !33, !34}
!30 = distinct !{!30, !31, !"\01?GetPageIndexAndTileDataBits@@YAXIIV?$vector@I$02@@AIAI11@Z: %pageIndex"}
!31 = distinct !{!31, !"\01?GetPageIndexAndTileDataBits@@YAXIIV?$vector@I$02@@AIAI11@Z"}
!32 = distinct !{!32, !31, !"\01?GetPageIndexAndTileDataBits@@YAXIIV?$vector@I$02@@AIAI11@Z: %tileDataBitsLo"}
!33 = distinct !{!33, !31, !"\01?GetPageIndexAndTileDataBits@@YAXIIV?$vector@I$02@@AIAI11@Z: %tileDataBitsHi"}
!34 = distinct !{!34, !35, !"\01?CompositeScratch_InitContext@@YA?AUCompositeScratchContext@@IV?$vector@I$02@@0_N@Z: %agg.result"}
!35 = distinct !{!35, !"\01?CompositeScratch_InitContext@@YA?AUCompositeScratchContext@@IV?$vector@I$02@@0_N@Z"}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 1}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 1}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 1}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = !{!49, !49, i64 0}
!49 = !{!"float", !27, i64 0}
!50 = !{!51}
!51 = distinct !{!51, !52, !"\01?GetLayersAlphasAndOptionalColors@@YAXUOMPVSamplingData@@V?$vector@M$01@@_NAIAV?$vector@I$03@@AIAV?$vector@M$03@@Y03$$CAV?$vector@M$02@@4@Z: %rotations"}
!52 = distinct !{!52, !"\01?GetLayersAlphasAndOptionalColors@@YAXUOMPVSamplingData@@V?$vector@M$01@@_NAIAV?$vector@I$03@@AIAV?$vector@M$03@@Y03$$CAV?$vector@M$02@@4@Z"}
!53 = !{!54, !55, !56, !57, !59, !61, !62, !63, !64, !65}
!54 = distinct !{!54, !52, !"\01?GetLayersAlphasAndOptionalColors@@YAXUOMPVSamplingData@@V?$vector@M$01@@_NAIAV?$vector@I$03@@AIAV?$vector@M$03@@Y03$$CAV?$vector@M$02@@4@Z: %layers"}
!55 = distinct !{!55, !52, !"\01?GetLayersAlphasAndOptionalColors@@YAXUOMPVSamplingData@@V?$vector@M$01@@_NAIAV?$vector@I$03@@AIAV?$vector@M$03@@Y03$$CAV?$vector@M$02@@4@Z: %alphas"}
!56 = distinct !{!56, !52, !"\01?GetLayersAlphasAndOptionalColors@@YAXUOMPVSamplingData@@V?$vector@M$01@@_NAIAV?$vector@I$03@@AIAV?$vector@M$03@@Y03$$CAV?$vector@M$02@@4@Z: %colors"}
!57 = distinct !{!57, !58, !"\01?SuperTerrain_CompositeAlbedoAndNormal@@YAX_NUPixelInput@@USuperTerrain_CompositingDatum@@@Z: %datum"}
!58 = distinct !{!58, !"\01?SuperTerrain_CompositeAlbedoAndNormal@@YAX_NUPixelInput@@USuperTerrain_CompositingDatum@@@Z"}
!59 = distinct !{!59, !60, !"\01?CompositeAlbedoAndNormal@@YAXUCompositeScratchContext@@UTerrainTileDataVT@@_NAIAV?$vector@M$03@@33AIAM4@Z: %albedoMetalness"}
!60 = distinct !{!60, !"\01?CompositeAlbedoAndNormal@@YAXUCompositeScratchContext@@UTerrainTileDataVT@@_NAIAV?$vector@M$03@@33AIAM4@Z"}
!61 = distinct !{!61, !60, !"\01?CompositeAlbedoAndNormal@@YAXUCompositeScratchContext@@UTerrainTileDataVT@@_NAIAV?$vector@M$03@@33AIAM4@Z: %normalOcclusionGloss"}
!62 = distinct !{!62, !60, !"\01?CompositeAlbedoAndNormal@@YAXUCompositeScratchContext@@UTerrainTileDataVT@@_NAIAV?$vector@M$03@@33AIAM4@Z: %emissive"}
!63 = distinct !{!63, !60, !"\01?CompositeAlbedoAndNormal@@YAXUCompositeScratchContext@@UTerrainTileDataVT@@_NAIAV?$vector@M$03@@33AIAM4@Z: %scatteringDmfp"}
!64 = distinct !{!64, !60, !"\01?CompositeAlbedoAndNormal@@YAXUCompositeScratchContext@@UTerrainTileDataVT@@_NAIAV?$vector@M$03@@33AIAM4@Z: %thermalEmissivity"}
!65 = distinct !{!65, !66, !"\01?CompositeScratch_AlbedoAndNormal@@YA_NI_NUCompositeScratchContext@@UCompositeScratchResults@@@Z: %results"}
!66 = distinct !{!66, !"\01?CompositeScratch_AlbedoAndNormal@@YA_NI_NUCompositeScratchContext@@UCompositeScratchResults@@@Z"}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = !{!57, !59, !61, !62, !63, !64, !65}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 2}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 2}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 2}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 2}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 2}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 2}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 2}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 2}
!83 = distinct !{!83, !84}
!84 = !{!"llvm.loop.unroll.disable"}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 2}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 1}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 2}

