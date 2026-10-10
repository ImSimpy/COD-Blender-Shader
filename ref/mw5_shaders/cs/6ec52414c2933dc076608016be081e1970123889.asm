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
; shader hash: 69edda6ab5668691031261424359fc04
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
;   [112 x i8] (type annotation not present)
;
; }
;
; Resource bind info for 
; {
;
;   [12 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb0     1
;                                   sampler      NA          NA      S0             s2     1
;                                   texture     f32          2d      T0             t0     1
;                                   texture     f32          2d      T1             t3     1
;                                       UAVunorm_f32          2d      U0             u2     1
;                                       UAVunorm_f32          2d      U1             u6     1
;                                       UAV  struct         r/w      U2             u5     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.RWTexture2D<vector<float, 3> >" = type { <3 x float> }
%"class.RWTexture2D<float>" = type { float }
%"class.RWStructuredBuffer<vector<unsigned int, 3> >" = type { <3 x i32> }
%PostConstantBuffer = type { <4 x float>, <4 x float>, float, float, float, float, float, float, float, float, i32, float, float, i32, <4 x i32>, <4 x i32> }
%struct.SamplerState = type { i32 }

define void @smaa_morphological_antialiasing_vertical() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %9 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %8, i32 0)  ; BufferLoad(srv,index,wot)
  %10 = extractvalue %dx.types.ResRet.i32 %9, 0
  %11 = extractvalue %dx.types.ResRet.i32 %9, 1
  %12 = extractvalue %dx.types.ResRet.i32 %9, 2
  %13 = lshr i32 %10, 12
  %14 = and i32 %10, 4095
  %15 = and i32 %13, 4095
  %16 = shl i32 %11, 4
  %17 = and i32 %16, 32752
  %18 = lshr i32 %11, 7
  %19 = and i32 %18, 32752
  %20 = lshr i32 %11, 17
  %21 = and i32 %20, 32736
  %22 = call float @dx.op.legacyF16ToF32(i32 131, i32 %17)  ; LegacyF16ToF32(value)
  %23 = call float @dx.op.legacyF16ToF32(i32 131, i32 %19)  ; LegacyF16ToF32(value)
  %24 = call float @dx.op.legacyF16ToF32(i32 131, i32 %21)  ; LegacyF16ToF32(value)
  %25 = shl i32 %12, 4
  %26 = and i32 %25, 32752
  %27 = lshr i32 %12, 7
  %28 = and i32 %27, 32752
  %29 = lshr i32 %12, 17
  %30 = and i32 %29, 32736
  %31 = call float @dx.op.legacyF16ToF32(i32 131, i32 %26)  ; LegacyF16ToF32(value)
  %32 = call float @dx.op.legacyF16ToF32(i32 131, i32 %28)  ; LegacyF16ToF32(value)
  %33 = call float @dx.op.legacyF16ToF32(i32 131, i32 %30)  ; LegacyF16ToF32(value)
  %34 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %35 = extractvalue %dx.types.CBufRet.f32 %34, 2
  %36 = extractvalue %dx.types.CBufRet.f32 %34, 3
  %37 = sitofp i32 %14 to float
  %38 = sitofp i32 %15 to float
  %39 = fadd fast float %37, 5.000000e-01
  %40 = fadd fast float %38, 5.000000e-01
  %41 = fmul fast float %35, %39
  %42 = fmul fast float %36, %40
  %43 = fadd fast float %37, 3.750000e-01
  %44 = fmul fast float %35, %43
  %45 = fadd fast float %38, 2.500000e-01
  %46 = fmul fast float %36, %45
  br label %47

; <label>:47                                      ; preds = %58, %0
  %48 = phi float [ -2.500000e+00, %0 ], [ %54, %58 ]
  %49 = phi float [ %46, %0 ], [ %62, %58 ]
  %50 = phi i32 [ 0, %0 ], [ %63, %58 ]
  %51 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %6, float %44, float %49, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %52 = extractvalue %dx.types.ResRet.f32 %51, 0
  %53 = extractvalue %dx.types.ResRet.f32 %51, 1
  %54 = fadd fast float %48, 2.000000e+00
  %55 = fmul fast float %53, 6.400000e+01
  %56 = fsub fast float %52, %55
  %57 = fcmp fast ogt float %56, 8.281250e-01
  br i1 %57, label %58, label %65, !dx.controlflow.hints !22

; <label>:58                                      ; preds = %47
  %59 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %60 = extractvalue %dx.types.CBufRet.f32 %59, 3
  %61 = fmul fast float %60, 2.000000e+00
  %62 = fsub fast float %49, %61
  %63 = add nuw nsw i32 %50, 1
  %64 = icmp slt i32 %63, 16
  br i1 %64, label %47, label %65

; <label>:65                                      ; preds = %58, %47
  %66 = fmul fast float %53, 3.200000e+01
  %67 = fmul fast float %52, 3.200000e+01
  %68 = fadd fast float %66, 5.000000e-01
  %69 = fadd fast float %67, 5.000000e-01
  %70 = fptosi float %68 to i32
  %71 = fptosi float %69 to i32
  %72 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %70, i32 %71, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %73 = extractvalue %dx.types.ResRet.f32 %72, 0
  %74 = extractvalue %dx.types.ResRet.f32 %72, 1
  %75 = fmul fast float %73, 0x4000102040000000
  %76 = fmul fast float %74, 3.000000e+00
  %77 = fadd fast float %75, %54
  %78 = call float @dx.op.unary.f32(i32 27, float %77)  ; Round_ni(value)
  %79 = call float @dx.op.binary.f32(i32 35, float %78, float 0.000000e+00)  ; FMax(a,b)
  %80 = call float @dx.op.unary.f32(i32 26, float %76)  ; Round_ne(value)
  %81 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %82 = extractvalue %dx.types.CBufRet.f32 %81, 2
  %83 = extractvalue %dx.types.CBufRet.f32 %81, 3
  %84 = fmul fast float %82, 1.250000e-01
  %85 = fmul fast float %83, 1.750000e+00
  %86 = fsub fast float %41, %84
  %87 = fadd fast float %85, %42
  br label %88

; <label>:88                                      ; preds = %99, %65
  %89 = phi float [ -1.500000e+00, %65 ], [ %95, %99 ]
  %90 = phi float [ %87, %65 ], [ %103, %99 ]
  %91 = phi i32 [ 0, %65 ], [ %104, %99 ]
  %92 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %6, float %86, float %90, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %93 = extractvalue %dx.types.ResRet.f32 %92, 0
  %94 = extractvalue %dx.types.ResRet.f32 %92, 1
  %95 = fadd fast float %89, 2.000000e+00
  %96 = fmul fast float %94, 6.400000e+01
  %97 = fsub fast float %93, %96
  %98 = fcmp fast ogt float %97, 8.281250e-01
  br i1 %98, label %99, label %106, !dx.controlflow.hints !22

; <label>:99                                      ; preds = %88
  %100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %101 = extractvalue %dx.types.CBufRet.f32 %100, 3
  %102 = fmul fast float %101, 2.000000e+00
  %103 = fadd fast float %102, %90
  %104 = add nuw nsw i32 %91, 1
  %105 = icmp slt i32 %104, 16
  br i1 %105, label %88, label %106

; <label>:106                                     ; preds = %99, %88
  %107 = fmul fast float %94, 3.200000e+01
  %108 = fmul fast float %93, 3.200000e+01
  %109 = fadd fast float %107, 3.350000e+01
  %110 = fadd fast float %108, 5.000000e-01
  %111 = fptosi float %109 to i32
  %112 = fptosi float %110 to i32
  %113 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %111, i32 %112, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %114 = extractvalue %dx.types.ResRet.f32 %113, 0
  %115 = extractvalue %dx.types.ResRet.f32 %113, 1
  %116 = fmul fast float %114, 0x4000102040000000
  %117 = fmul fast float %115, 3.000000e+00
  %118 = fadd fast float %116, %95
  %119 = call float @dx.op.unary.f32(i32 27, float %118)  ; Round_ni(value)
  %120 = call float @dx.op.binary.f32(i32 35, float %119, float 0.000000e+00)  ; FMax(a,b)
  %121 = call float @dx.op.unary.f32(i32 26, float %117)  ; Round_ne(value)
  %122 = call float @dx.op.binary.f32(i32 35, float %80, float %121)  ; FMax(a,b)
  %123 = fcmp fast ogt float %122, 0.000000e+00
  br i1 %123, label %124, label %251, !dx.controlflow.hints !23

; <label>:124                                     ; preds = %106
  %125 = fadd fast float %120, %79
  %126 = fcmp fast oeq float %125, 0.000000e+00
  br i1 %126, label %223, label %127, !dx.controlflow.hints !24

; <label>:127                                     ; preds = %124
  %128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %129 = extractvalue %dx.types.CBufRet.f32 %128, 3
  %130 = fmul fast float %129, %79
  %131 = fsub fast float %42, %130
  %132 = fmul fast float %129, %120
  %133 = fadd fast float %132, %42
  %134 = fmul fast float %129, 2.500000e-01
  %135 = fadd fast float %134, %131
  %136 = extractvalue %dx.types.CBufRet.f32 %128, 2
  %137 = fadd fast float %136, %41
  %138 = fsub fast float %135, %129
  %139 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %6, float %137, float %138, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %140 = extractvalue %dx.types.ResRet.f32 %139, 0
  %141 = extractvalue %dx.types.ResRet.f32 %139, 1
  %142 = fmul fast float %141, 5.000000e+00
  %143 = fadd fast float %142, -3.750000e+00
  %144 = call float @dx.op.unary.f32(i32 6, float %143)  ; FAbs(value)
  %145 = fmul fast float %141, %144
  %146 = call float @dx.op.unary.f32(i32 26, float %145)  ; Round_ne(value)
  %147 = call float @dx.op.unary.f32(i32 26, float %140)  ; Round_ne(value)
  %148 = fmul fast float %136, 2.000000e+00
  %149 = fsub fast float %41, %148
  %150 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %6, float %149, float %131, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %151 = extractvalue %dx.types.ResRet.f32 %150, 1
  %152 = fsub fast float %41, %136
  %153 = fsub fast float %131, %129
  %154 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %6, float %152, float %153, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %155 = extractvalue %dx.types.ResRet.f32 %154, 0
  %156 = fadd fast float %129, %133
  %157 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %6, float %137, float %156, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %158 = extractvalue %dx.types.ResRet.f32 %157, 0
  %159 = extractvalue %dx.types.ResRet.f32 %157, 1
  %160 = fmul fast float %136, 2.500000e-01
  %161 = fadd fast float %41, %160
  %162 = fsub fast float %161, %148
  %163 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %6, float %162, float %156, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %164 = extractvalue %dx.types.ResRet.f32 %163, 0
  %165 = extractvalue %dx.types.ResRet.f32 %163, 1
  %166 = fmul fast float %164, 5.000000e+00
  %167 = fadd fast float %166, -3.750000e+00
  %168 = call float @dx.op.unary.f32(i32 6, float %167)  ; FAbs(value)
  %169 = fmul fast float %164, %168
  %170 = call float @dx.op.unary.f32(i32 26, float %165)  ; Round_ne(value)
  %171 = call float @dx.op.unary.f32(i32 26, float %169)  ; Round_ne(value)
  %172 = fsub fast float %146, %147
  %173 = fcmp fast ogt float %172, 5.000000e-01
  %174 = fcmp fast ogt float %80, 1.500000e+00
  %175 = fadd fast float %80, -2.000000e+00
  %176 = and i1 %174, %173
  %177 = select i1 %176, float %175, float %80
  %178 = fsub fast float %151, %155
  %179 = fcmp fast ogt float %178, 5.000000e-01
  %180 = fcmp fast ogt float %177, 1.500000e+00
  %181 = select i1 %180, float 2.000000e+00, float 0.000000e+00
  %182 = select i1 %179, float %181, float %177
  %183 = fsub fast float %159, %158
  %184 = fcmp fast ogt float %183, 5.000000e-01
  %185 = fcmp fast ogt float %121, 1.500000e+00
  %186 = fadd fast float %121, -2.000000e+00
  %187 = and i1 %185, %184
  %188 = select i1 %187, float %186, float %121
  %189 = fsub fast float %170, %171
  %190 = fcmp fast ogt float %189, 5.000000e-01
  %191 = fcmp fast ogt float %188, 1.500000e+00
  %192 = select i1 %191, float 2.000000e+00, float 0.000000e+00
  %193 = select i1 %190, float %192, float %188
  %194 = fmul fast float %129, 7.500000e-01
  %195 = fsub fast float %131, %194
  %196 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %6, float %137, float %195, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %197 = extractvalue %dx.types.ResRet.f32 %196, 0
  %198 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %6, float %152, float %195, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %199 = extractvalue %dx.types.ResRet.f32 %198, 0
  %200 = fadd fast float %194, %133
  %201 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %6, float %137, float %200, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %202 = extractvalue %dx.types.ResRet.f32 %201, 0
  %203 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %6, float %152, float %200, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %204 = extractvalue %dx.types.ResRet.f32 %203, 0
  %205 = fcmp fast olt float %197, 1.250000e-01
  %206 = fcmp fast ogt float %182, 1.500000e+00
  %207 = fadd fast float %182, -2.000000e+00
  %208 = and i1 %206, %205
  %209 = select i1 %208, float %207, float %182
  %210 = fcmp fast olt float %199, 1.250000e-01
  %211 = fcmp fast ogt float %209, 1.500000e+00
  %212 = select i1 %211, float 2.000000e+00, float 0.000000e+00
  %213 = select i1 %210, float %212, float %209
  %214 = fcmp fast olt float %202, 1.250000e-01
  %215 = fcmp fast ogt float %193, 1.500000e+00
  %216 = fadd fast float %193, -2.000000e+00
  %217 = and i1 %215, %214
  %218 = select i1 %217, float %216, float %193
  %219 = fcmp fast olt float %204, 1.250000e-01
  %220 = fcmp fast ogt float %218, 1.500000e+00
  %221 = select i1 %220, float 2.000000e+00, float 0.000000e+00
  %222 = select i1 %219, float %221, float %218
  br label %223

; <label>:223                                     ; preds = %127, %124
  %224 = phi float [ %80, %124 ], [ %213, %127 ]
  %225 = phi float [ %121, %124 ], [ %222, %127 ]
  %226 = call float @dx.op.unary.f32(i32 6, float %79)  ; FAbs(value)
  %227 = call float @dx.op.unary.f32(i32 6, float %120)  ; FAbs(value)
  %228 = bitcast float %226 to i32
  %229 = ashr i32 %228, 1
  %230 = add nsw i32 %229, 532487669
  %231 = bitcast i32 %230 to float
  %232 = bitcast float %227 to i32
  %233 = ashr i32 %232, 1
  %234 = add nsw i32 %233, 532487669
  %235 = bitcast i32 %234 to float
  %236 = call float @dx.op.binary.f32(i32 36, float %231, float 1.900000e+01)  ; FMin(a,b)
  %237 = call float @dx.op.binary.f32(i32 36, float %235, float 1.900000e+01)  ; FMin(a,b)
  %238 = fmul fast float %224, 2.000000e+01
  %239 = fmul fast float %225, 2.000000e+01
  %240 = fadd fast float %236, %238
  %241 = fadd fast float %237, %239
  %242 = fmul fast float %240, 0x3F899999A0000000
  %243 = fmul fast float %241, 0x3F74E5E0A0000000
  %244 = fadd fast float %242, 0x3F799999A0000000
  %245 = fadd fast float %243, 0x3FC7D63440000000
  %246 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %6, float %244, float %245, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %247 = extractvalue %dx.types.ResRet.f32 %246, 0
  %248 = extractvalue %dx.types.ResRet.f32 %246, 1
  %249 = fmul float %247, 2.000000e+00
  %250 = fmul float %248, 2.000000e+00
  br label %251

; <label>:251                                     ; preds = %223, %106
  %252 = phi float [ %249, %223 ], [ 0.000000e+00, %106 ]
  %253 = phi float [ %250, %223 ], [ 0.000000e+00, %106 ]
  %254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %255 = extractvalue %dx.types.CBufRet.f32 %254, 0
  %256 = call float @dx.op.binary.f32(i32 35, float %255, float 5.000000e-01)  ; FMax(a,b)
  %257 = call float @dx.op.binary.f32(i32 36, float %256, float 1.000000e+00)  ; FMin(a,b)
  %258 = fmul fast float %257, 2.000000e+00
  %259 = fsub fast float 2.000000e+00, %258
  %260 = call float @dx.op.unary.f32(i32 7, float %259)  ; Saturate(value)
  %261 = fmul fast float %260, 0x3FD6666660000000
  %262 = fsub fast float 1.000000e+00, %261
  %263 = fsub fast float %252, %261
  %264 = fsub fast float %253, %261
  %265 = fdiv fast float 5.000000e-01, %262
  %266 = fmul fast float %265, %263
  %267 = fmul fast float %265, %264
  %268 = call float @dx.op.unary.f32(i32 7, float %266)  ; Saturate(value)
  %269 = call float @dx.op.unary.f32(i32 7, float %267)  ; Saturate(value)
  %270 = call float @dx.op.binary.f32(i32 35, float %268, float %269)  ; FMax(a,b)
  %271 = fcmp fast ogt float %270, 0.000000e+00
  br i1 %271, label %272, label %298, !dx.controlflow.hints !25

; <label>:272                                     ; preds = %251
  %273 = fsub fast float %31, %22
  %274 = fsub fast float %32, %23
  %275 = fsub fast float %33, %24
  %276 = fmul fast float %268, %273
  %277 = fmul fast float %268, %274
  %278 = fmul fast float %268, %275
  %279 = fadd fast float %276, %22
  %280 = fadd fast float %277, %23
  %281 = fadd fast float %278, %24
  %282 = fsub fast float %22, %31
  %283 = fsub fast float %23, %32
  %284 = fsub fast float %24, %33
  %285 = fmul fast float %269, %282
  %286 = fmul fast float %269, %283
  %287 = fmul fast float %269, %284
  %288 = fadd fast float %285, %31
  %289 = fadd fast float %286, %32
  %290 = fadd fast float %287, %33
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %14, i32 %15, i32 undef, float %279, float %280, float %281, float %279, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %291 = add nsw i32 %14, -1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %291, i32 %15, i32 undef, float %288, float %289, float %290, float %288, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %293 = extractvalue %dx.types.CBufRet.f32 %292, 0
  %294 = extractvalue %dx.types.CBufRet.f32 %292, 1
  %295 = extractvalue %dx.types.CBufRet.f32 %292, 2
  %296 = call float @dx.op.dot3.f32(i32 55, float %279, float %280, float %281, float %293, float %294, float %295)  ; Dot3(ax,ay,az,bx,by,bz)
  %297 = call float @dx.op.dot3.f32(i32 55, float %288, float %289, float %290, float %293, float %294, float %295)  ; Dot3(ax,ay,az,bx,by,bz)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %14, i32 %15, i32 undef, float %296, float %296, float %296, float %296, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %291, i32 %15, i32 undef, float %297, float %297, float %297, float %297, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %298

; <label>:298                                     ; preds = %272, %251
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #1

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

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
!4 = !{!5, !9, !15, !17}
!5 = !{!6, !8}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 2, i32 0, !7}
!9 = !{!10, !12, !13}
!10 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !11}
!11 = !{i32 0, i32 14}
!12 = !{i32 1, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 6, i32 1, i32 2, i1 false, i1 false, i1 false, !11}
!13 = !{i32 2, %"class.RWStructuredBuffer<vector<unsigned int, 3> >"* undef, !"", i32 0, i32 5, i32 1, i32 12, i1 false, i1 false, i1 false, !14}
!14 = !{i32 1, i32 12}
!15 = !{!16}
!16 = !{i32 0, %PostConstantBuffer* undef, !"", i32 0, i32 0, i32 1, i32 112, null}
!17 = !{!18}
!18 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!19 = !{void ()* @smaa_morphological_antialiasing_vertical, !"smaa_morphological_antialiasing_vertical", null, !4, !20}
!20 = !{i32 0, i64 272, i32 4, !21}
!21 = !{i32 64, i32 1, i32 1}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 1}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}

