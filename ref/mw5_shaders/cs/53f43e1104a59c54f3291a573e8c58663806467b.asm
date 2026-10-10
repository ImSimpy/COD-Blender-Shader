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
; shader hash: 7fe8274ed3802ca2473d646a44bcf86e
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
;                                       UAV  struct         r/w      U2             u4     1
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

define void @smaa_morphological_antialiasing_horizontal() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
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
  %43 = and i32 %10, 251658240
  %44 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %6, float %41, float %42, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %45 = extractvalue %dx.types.ResRet.f32 %44, 0
  %46 = extractvalue %dx.types.ResRet.f32 %44, 1
  %47 = fsub fast float %41, %35
  %48 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %6, float %47, float %42, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %49 = extractvalue %dx.types.ResRet.f32 %48, 1
  %50 = fadd fast float %35, %41
  %51 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %6, float %50, float %42, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %52 = extractvalue %dx.types.ResRet.f32 %51, 0
  %53 = extractvalue %dx.types.ResRet.f32 %51, 1
  %54 = call float @dx.op.binary.f32(i32 36, float %49, float %46)  ; FMin(a,b)
  %55 = call float @dx.op.binary.f32(i32 36, float %54, float %53)  ; FMin(a,b)
  %56 = fcmp fast ogt float %46, 5.000000e-01
  %57 = fcmp ule float %55, 5.000000e-01
  %58 = and i1 %56, %57
  br i1 %58, label %59, label %304, !dx.controlflow.hints !22

; <label>:59                                      ; preds = %0
  br label %60

; <label>:60                                      ; preds = %72, %59
  %61 = phi float [ %65, %72 ], [ %41, %59 ]
  %62 = phi float [ %66, %72 ], [ %42, %59 ]
  %63 = phi float [ %73, %72 ], [ 0.000000e+00, %59 ]
  %64 = phi i32 [ %74, %72 ], [ 0, %59 ]
  %65 = fadd fast float %61, %35
  %66 = fsub fast float %62, %36
  %67 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %6, float %65, float %66, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %68 = extractvalue %dx.types.ResRet.f32 %67, 0
  %69 = extractvalue %dx.types.ResRet.f32 %67, 1
  %70 = call float @dx.op.binary.f32(i32 36, float %68, float %69)  ; FMin(a,b)
  %71 = fcmp fast ogt float %70, 5.000000e-01
  br i1 %71, label %72, label %76, !dx.controlflow.hints !23

; <label>:72                                      ; preds = %60
  %73 = fadd fast float %63, 1.000000e+00
  %74 = add nuw nsw i32 %64, 1
  %75 = icmp slt i32 %74, 16
  br i1 %75, label %60, label %76

; <label>:76                                      ; preds = %72, %60
  %77 = fcmp ule float %70, 5.000000e-01
  %78 = fcmp ule float %45, 5.000000e-01
  br i1 %78, label %104, label %79, !dx.controlflow.hints !24

; <label>:79                                      ; preds = %76
  br label %80

; <label>:80                                      ; preds = %93, %79
  %81 = phi float [ %85, %93 ], [ %41, %79 ]
  %82 = phi float [ %86, %93 ], [ %42, %79 ]
  %83 = phi float [ %87, %93 ], [ 0.000000e+00, %79 ]
  %84 = phi i32 [ %94, %93 ], [ 0, %79 ]
  %85 = fsub fast float %81, %35
  %86 = fadd fast float %82, %36
  %87 = fadd fast float %83, 1.000000e+00
  %88 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %6, float %85, float %86, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %89 = extractvalue %dx.types.ResRet.f32 %88, 0
  %90 = extractvalue %dx.types.ResRet.f32 %88, 1
  %91 = call float @dx.op.binary.f32(i32 36, float %89, float %90)  ; FMin(a,b)
  %92 = fcmp fast ogt float %91, 5.000000e-01
  br i1 %92, label %93, label %96, !dx.controlflow.hints !23

; <label>:93                                      ; preds = %80
  %94 = add nuw nsw i32 %84, 1
  %95 = icmp slt i32 %94, 16
  br i1 %95, label %80, label %96

; <label>:96                                      ; preds = %93, %80
  %97 = fcmp fast ogt float %90, 5.000000e-01
  %98 = fadd fast float %83, 2.000000e+00
  %99 = select i1 %97, float %98, float %87
  %100 = fadd fast float %99, -1.000000e+00
  %101 = zext i1 %97 to i32
  %102 = fcmp ule float %91, 5.000000e-01
  %103 = zext i1 %102 to i32
  br label %104

; <label>:104                                     ; preds = %96, %76
  %105 = phi i32 [ 1, %76 ], [ %103, %96 ]
  %106 = phi i32 [ 1, %76 ], [ %101, %96 ]
  %107 = phi float [ 0.000000e+00, %76 ], [ %100, %96 ]
  %108 = fadd fast float %107, %63
  %109 = fcmp fast ogt float %108, 0.000000e+00
  br i1 %109, label %110, label %164, !dx.controlflow.hints !25

; <label>:110                                     ; preds = %104
  %111 = fadd fast float %63, 1.000000e+00
  %112 = fsub fast float -2.000000e+00, %63
  %113 = fadd fast float %111, %39
  %114 = fmul fast float %35, %113
  %115 = fadd fast float %112, %40
  %116 = fmul fast float %36, %115
  %117 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %6, float %114, float %116, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %118 = extractvalue %dx.types.ResRet.f32 %117, 0
  %119 = fsub fast float %40, %63
  %120 = fmul fast float %36, %119
  %121 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %6, float %114, float %120, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %122 = extractvalue %dx.types.ResRet.f32 %121, 1
  %123 = icmp eq i32 %106, 0
  br i1 %123, label %124, label %132, !dx.controlflow.hints !26

; <label>:124                                     ; preds = %110
  %125 = fadd fast float %107, 1.000000e+00
  %126 = fsub fast float %39, %107
  %127 = fmul fast float %35, %126
  %128 = fadd fast float %125, %40
  %129 = fmul fast float %36, %128
  %130 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %6, float %127, float %129, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %131 = extractvalue %dx.types.ResRet.f32 %130, 0
  br label %141

; <label>:132                                     ; preds = %110
  %133 = fsub fast float -1.000000e+00, %107
  %134 = fadd fast float %133, %39
  %135 = fmul fast float %35, %134
  %136 = fadd fast float %107, %40
  %137 = fmul fast float %36, %136
  %138 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %6, float %135, float %137, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %139 = extractvalue %dx.types.ResRet.f32 %138, 1
  %140 = fmul float %139, 2.000000e+00
  br label %141

; <label>:141                                     ; preds = %132, %124
  %142 = phi float [ 0.000000e+00, %132 ], [ %131, %124 ]
  %143 = phi float [ %140, %132 ], [ 0.000000e+00, %124 ]
  %144 = fmul fast float %118, %68
  %145 = fmul fast float %122, 2.000000e+00
  %146 = fadd fast float %143, %142
  %147 = fadd fast float %145, %144
  %148 = icmp ne i32 %105, 0
  %149 = call float @dx.op.binary.f32(i32 36, float %107, float 1.900000e+01)  ; FMin(a,b)
  %150 = call float @dx.op.binary.f32(i32 36, float %63, float 1.900000e+01)  ; FMin(a,b)
  %151 = fmul fast float %146, 2.000000e+01
  %152 = select i1 %148, float %151, float 0.000000e+00
  %153 = fmul fast float %147, 2.000000e+01
  %154 = select i1 %77, float %153, float 0.000000e+00
  %155 = fadd fast float %152, %149
  %156 = fadd fast float %150, %154
  %157 = fmul fast float %155, 0x3F899999A0000000
  %158 = fmul fast float %156, 0x3F74E5E0A0000000
  %159 = fadd fast float %157, 0x3F799999A0000000
  %160 = fadd fast float %158, 0x3FE3053980000000
  %161 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %6, float %159, float %160, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %162 = extractvalue %dx.types.ResRet.f32 %161, 0
  %163 = extractvalue %dx.types.ResRet.f32 %161, 1
  br label %164

; <label>:164                                     ; preds = %141, %104
  %165 = phi float [ %162, %141 ], [ 0.000000e+00, %104 ]
  %166 = phi float [ %163, %141 ], [ 0.000000e+00, %104 ]
  br label %167

; <label>:167                                     ; preds = %189, %164
  %168 = phi float [ %41, %164 ], [ %172, %189 ]
  %169 = phi float [ %42, %164 ], [ %173, %189 ]
  %170 = phi float [ 0.000000e+00, %164 ], [ %190, %189 ]
  %171 = phi i32 [ 0, %164 ], [ %191, %189 ]
  %172 = fsub fast float %168, %35
  %173 = fsub fast float %169, %36
  %174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %175 = extractvalue %dx.types.CBufRet.f32 %174, 2
  %176 = fmul fast float %175, 2.500000e-01
  %177 = fadd fast float %176, %172
  %178 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %6, float %177, float %173, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %179 = extractvalue %dx.types.ResRet.f32 %178, 0
  %180 = extractvalue %dx.types.ResRet.f32 %178, 1
  %181 = fmul fast float %179, 5.000000e+00
  %182 = fadd fast float %181, -3.750000e+00
  %183 = call float @dx.op.unary.f32(i32 6, float %182)  ; FAbs(value)
  %184 = fmul fast float %179, %183
  %185 = call float @dx.op.unary.f32(i32 26, float %184)  ; Round_ne(value)
  %186 = call float @dx.op.unary.f32(i32 26, float %180)  ; Round_ne(value)
  %187 = call float @dx.op.binary.f32(i32 36, float %185, float %186)  ; FMin(a,b)
  %188 = fcmp fast ogt float %187, 5.000000e-01
  br i1 %188, label %189, label %193, !dx.controlflow.hints !23

; <label>:189                                     ; preds = %167
  %190 = fadd fast float %170, 1.000000e+00
  %191 = add nuw nsw i32 %171, 1
  %192 = icmp slt i32 %191, 16
  br i1 %192, label %167, label %193

; <label>:193                                     ; preds = %189, %167
  %194 = fcmp ule float %187, 5.000000e-01
  %195 = fcmp ule float %52, 5.000000e-01
  br i1 %195, label %232, label %196, !dx.controlflow.hints !24

; <label>:196                                     ; preds = %193
  %197 = extractvalue %dx.types.CBufRet.f32 %174, 3
  br label %198

; <label>:198                                     ; preds = %221, %196
  %199 = phi float [ %41, %196 ], [ %203, %221 ]
  %200 = phi float [ %42, %196 ], [ %204, %221 ]
  %201 = phi float [ 0.000000e+00, %196 ], [ %205, %221 ]
  %202 = phi i32 [ 0, %196 ], [ %222, %221 ]
  %203 = fadd fast float %199, %175
  %204 = fadd fast float %200, %197
  %205 = fadd fast float %201, 1.000000e+00
  %206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %207 = extractvalue %dx.types.CBufRet.f32 %206, 2
  %208 = fmul fast float %207, 2.500000e-01
  %209 = fadd fast float %208, %203
  %210 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %6, float %209, float %204, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %211 = extractvalue %dx.types.ResRet.f32 %210, 0
  %212 = extractvalue %dx.types.ResRet.f32 %210, 1
  %213 = fmul fast float %211, 5.000000e+00
  %214 = fadd fast float %213, -3.750000e+00
  %215 = call float @dx.op.unary.f32(i32 6, float %214)  ; FAbs(value)
  %216 = fmul fast float %211, %215
  %217 = call float @dx.op.unary.f32(i32 26, float %216)  ; Round_ne(value)
  %218 = call float @dx.op.unary.f32(i32 26, float %212)  ; Round_ne(value)
  %219 = call float @dx.op.binary.f32(i32 36, float %217, float %218)  ; FMin(a,b)
  %220 = fcmp fast ogt float %219, 5.000000e-01
  br i1 %220, label %221, label %224, !dx.controlflow.hints !23

; <label>:221                                     ; preds = %198
  %222 = add nuw nsw i32 %202, 1
  %223 = icmp slt i32 %222, 16
  br i1 %223, label %198, label %224

; <label>:224                                     ; preds = %221, %198
  %225 = fcmp fast ogt float %218, 5.000000e-01
  %226 = fadd fast float %201, 2.000000e+00
  %227 = select i1 %225, float %226, float %205
  %228 = fadd fast float %227, -1.000000e+00
  %229 = zext i1 %225 to i32
  %230 = fcmp ule float %219, 5.000000e-01
  %231 = zext i1 %230 to i32
  br label %232

; <label>:232                                     ; preds = %224, %193
  %233 = phi i32 [ 1, %193 ], [ %231, %224 ]
  %234 = phi i32 [ 1, %193 ], [ %229, %224 ]
  %235 = phi float [ 0.000000e+00, %193 ], [ %228, %224 ]
  %236 = fadd fast float %235, %170
  %237 = fcmp fast ogt float %236, 0.000000e+00
  br i1 %237, label %238, label %294, !dx.controlflow.hints !25

; <label>:238                                     ; preds = %232
  %239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %240 = extractvalue %dx.types.CBufRet.f32 %239, 2
  %241 = extractvalue %dx.types.CBufRet.f32 %239, 3
  %242 = fsub fast float -2.000000e+00, %170
  %243 = fmul fast float %240, %170
  %244 = fmul fast float %241, %242
  %245 = fsub fast float %41, %243
  %246 = fadd fast float %244, %42
  %247 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %6, float %245, float %246, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %248 = extractvalue %dx.types.ResRet.f32 %247, 0
  %249 = fsub fast float -1.000000e+00, %170
  %250 = fmul fast float %240, %249
  %251 = fmul fast float %241, %170
  %252 = fadd fast float %250, %41
  %253 = fsub fast float %42, %251
  %254 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %6, float %252, float %253, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %255 = extractvalue %dx.types.ResRet.f32 %254, 1
  %256 = icmp eq i32 %234, 0
  %257 = fadd fast float %235, 1.000000e+00
  %258 = fmul fast float %240, %257
  %259 = fadd fast float %258, %41
  br i1 %256, label %260, label %265, !dx.controlflow.hints !27

; <label>:260                                     ; preds = %238
  %261 = fmul fast float %241, %257
  %262 = fadd fast float %261, %42
  %263 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %6, float %259, float %262, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %264 = extractvalue %dx.types.ResRet.f32 %263, 0
  br label %271

; <label>:265                                     ; preds = %238
  %266 = fmul fast float %241, %235
  %267 = fadd fast float %266, %42
  %268 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %6, float %259, float %267, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %269 = extractvalue %dx.types.ResRet.f32 %268, 1
  %270 = fmul float %269, 2.000000e+00
  br label %271

; <label>:271                                     ; preds = %265, %260
  %272 = phi float [ 0.000000e+00, %265 ], [ %264, %260 ]
  %273 = phi float [ %270, %265 ], [ 0.000000e+00, %260 ]
  %274 = fmul fast float %248, %185
  %275 = fmul fast float %255, 2.000000e+00
  %276 = fadd fast float %273, %272
  %277 = fadd fast float %275, %274
  %278 = icmp ne i32 %233, 0
  %279 = call float @dx.op.binary.f32(i32 36, float %170, float 1.900000e+01)  ; FMin(a,b)
  %280 = call float @dx.op.binary.f32(i32 36, float %235, float 1.900000e+01)  ; FMin(a,b)
  %281 = fmul fast float %277, 2.000000e+01
  %282 = select i1 %194, float %281, float 0.000000e+00
  %283 = fmul fast float %276, 2.000000e+01
  %284 = select i1 %278, float %283, float 0.000000e+00
  %285 = fadd fast float %279, %282
  %286 = fadd fast float %284, %280
  %287 = fmul fast float %285, 0x3F899999A0000000
  %288 = fmul fast float %286, 0x3F74E5E0A0000000
  %289 = fadd fast float %287, 0x3F799999A0000000
  %290 = fadd fast float %288, 0x3FE3053980000000
  %291 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %6, float %289, float %290, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %292 = extractvalue %dx.types.ResRet.f32 %291, 0
  %293 = extractvalue %dx.types.ResRet.f32 %291, 1
  br label %294

; <label>:294                                     ; preds = %271, %232
  %295 = phi float [ %293, %271 ], [ 0.000000e+00, %232 ]
  %296 = phi float [ %292, %271 ], [ 0.000000e+00, %232 ]
  %297 = fadd fast float %166, %165
  %298 = fadd fast float %296, %295
  %299 = fcmp fast ogt float %297, %298
  %300 = select i1 %299, float %165, float %295
  %301 = select i1 %299, float %166, float %296
  %302 = call float @dx.op.binary.f32(i32 35, float %300, float %301)  ; FMax(a,b)
  %303 = fcmp ule float %302, 0.000000e+00
  br label %304

; <label>:304                                     ; preds = %294, %0
  %305 = phi i32 [ -1, %294 ], [ 0, %0 ]
  %306 = phi float [ %300, %294 ], [ 0.000000e+00, %0 ]
  %307 = phi float [ %301, %294 ], [ 0.000000e+00, %0 ]
  %308 = phi i1 [ %303, %294 ], [ true, %0 ]
  %309 = icmp eq i32 %43, 33554432
  %310 = and i1 %309, %308
  br i1 %310, label %311, label %561, !dx.controlflow.hints !28

; <label>:311                                     ; preds = %304
  %312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %313 = extractvalue %dx.types.CBufRet.f32 %312, 2
  %314 = extractvalue %dx.types.CBufRet.f32 %312, 3
  %315 = fmul fast float %313, 2.500000e-01
  %316 = fmul fast float %314, 1.250000e-01
  %317 = fsub fast float %41, %315
  %318 = fsub fast float %42, %316
  br label %319

; <label>:319                                     ; preds = %330, %311
  %320 = phi float [ -2.500000e+00, %311 ], [ %326, %330 ]
  %321 = phi float [ %317, %311 ], [ %334, %330 ]
  %322 = phi i32 [ 0, %311 ], [ %335, %330 ]
  %323 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %6, float %321, float %318, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %324 = extractvalue %dx.types.ResRet.f32 %323, 0
  %325 = extractvalue %dx.types.ResRet.f32 %323, 1
  %326 = fadd fast float %320, 2.000000e+00
  %327 = fmul fast float %324, 6.400000e+01
  %328 = fsub fast float %325, %327
  %329 = fcmp fast ogt float %328, 8.281250e-01
  br i1 %329, label %330, label %337, !dx.controlflow.hints !29

; <label>:330                                     ; preds = %319
  %331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %332 = extractvalue %dx.types.CBufRet.f32 %331, 2
  %333 = fmul fast float %332, 2.000000e+00
  %334 = fsub fast float %321, %333
  %335 = add nuw nsw i32 %322, 1
  %336 = icmp slt i32 %335, 64
  br i1 %336, label %319, label %337

; <label>:337                                     ; preds = %330, %319
  %338 = fmul fast float %324, 3.200000e+01
  %339 = fmul fast float %325, 3.200000e+01
  %340 = fadd fast float %338, 5.000000e-01
  %341 = fadd fast float %339, 5.000000e-01
  %342 = fptosi float %340 to i32
  %343 = fptosi float %341 to i32
  %344 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %342, i32 %343, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %345 = extractvalue %dx.types.ResRet.f32 %344, 0
  %346 = extractvalue %dx.types.ResRet.f32 %344, 1
  %347 = fmul fast float %345, 0x4000102040000000
  %348 = fmul fast float %346, 3.000000e+00
  %349 = fadd fast float %347, %326
  %350 = call float @dx.op.unary.f32(i32 27, float %349)  ; Round_ni(value)
  %351 = call float @dx.op.binary.f32(i32 35, float %350, float 0.000000e+00)  ; FMax(a,b)
  %352 = call float @dx.op.unary.f32(i32 26, float %348)  ; Round_ne(value)
  %353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %354 = extractvalue %dx.types.CBufRet.f32 %353, 2
  %355 = extractvalue %dx.types.CBufRet.f32 %353, 3
  %356 = fmul fast float %354, 1.750000e+00
  %357 = fmul fast float %355, 1.250000e-01
  %358 = fadd fast float %356, %41
  %359 = fsub fast float %42, %357
  br label %360

; <label>:360                                     ; preds = %371, %337
  %361 = phi float [ -1.500000e+00, %337 ], [ %367, %371 ]
  %362 = phi float [ %358, %337 ], [ %375, %371 ]
  %363 = phi i32 [ 0, %337 ], [ %376, %371 ]
  %364 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %6, float %362, float %359, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %365 = extractvalue %dx.types.ResRet.f32 %364, 0
  %366 = extractvalue %dx.types.ResRet.f32 %364, 1
  %367 = fadd fast float %361, 2.000000e+00
  %368 = fmul fast float %365, 6.400000e+01
  %369 = fsub fast float %366, %368
  %370 = fcmp fast ogt float %369, 8.281250e-01
  br i1 %370, label %371, label %378, !dx.controlflow.hints !29

; <label>:371                                     ; preds = %360
  %372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %373 = extractvalue %dx.types.CBufRet.f32 %372, 2
  %374 = fmul fast float %373, 2.000000e+00
  %375 = fadd fast float %374, %362
  %376 = add nuw nsw i32 %363, 1
  %377 = icmp slt i32 %376, 64
  br i1 %377, label %360, label %378

; <label>:378                                     ; preds = %371, %360
  %379 = fmul fast float %365, 3.200000e+01
  %380 = fmul fast float %366, 3.200000e+01
  %381 = fadd fast float %379, 3.350000e+01
  %382 = fadd fast float %380, 5.000000e-01
  %383 = fptosi float %381 to i32
  %384 = fptosi float %382 to i32
  %385 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %383, i32 %384, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %386 = extractvalue %dx.types.ResRet.f32 %385, 0
  %387 = extractvalue %dx.types.ResRet.f32 %385, 1
  %388 = fmul fast float %386, 0x4000102040000000
  %389 = fmul fast float %387, 3.000000e+00
  %390 = fadd fast float %388, %367
  %391 = call float @dx.op.unary.f32(i32 27, float %390)  ; Round_ni(value)
  %392 = call float @dx.op.binary.f32(i32 35, float %391, float 0.000000e+00)  ; FMax(a,b)
  %393 = call float @dx.op.unary.f32(i32 26, float %389)  ; Round_ne(value)
  %394 = call float @dx.op.binary.f32(i32 35, float %352, float %393)  ; FMax(a,b)
  %395 = fcmp fast ogt float %394, 0.000000e+00
  br i1 %395, label %396, label %561, !dx.controlflow.hints !30

; <label>:396                                     ; preds = %378
  %397 = fadd fast float %392, %351
  %398 = fcmp fast oeq float %397, 0.000000e+00
  br i1 %398, label %535, label %399, !dx.controlflow.hints !31

; <label>:399                                     ; preds = %396
  %400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %401 = extractvalue %dx.types.CBufRet.f32 %400, 2
  %402 = fmul fast float %401, %351
  %403 = fsub fast float %41, %402
  %404 = fmul fast float %401, %392
  %405 = fadd fast float %404, %41
  %406 = fmul fast float %401, 2.500000e-01
  %407 = fadd fast float %406, %403
  %408 = extractvalue %dx.types.CBufRet.f32 %400, 3
  %409 = fsub fast float %407, %401
  %410 = fadd fast float %408, %42
  %411 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %6, float %409, float %410, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %412 = extractvalue %dx.types.ResRet.f32 %411, 0
  %413 = extractvalue %dx.types.ResRet.f32 %411, 1
  %414 = fmul fast float %412, 5.000000e+00
  %415 = fadd fast float %414, -3.750000e+00
  %416 = call float @dx.op.unary.f32(i32 6, float %415)  ; FAbs(value)
  %417 = fmul fast float %412, %416
  %418 = call float @dx.op.unary.f32(i32 26, float %417)  ; Round_ne(value)
  %419 = call float @dx.op.unary.f32(i32 26, float %413)  ; Round_ne(value)
  %420 = fmul fast float %408, 2.000000e+00
  %421 = fsub fast float %42, %420
  %422 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %6, float %403, float %421, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %423 = extractvalue %dx.types.ResRet.f32 %422, 0
  %424 = fsub fast float %403, %401
  %425 = fsub fast float %42, %408
  %426 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %6, float %424, float %425, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %427 = extractvalue %dx.types.ResRet.f32 %426, 1
  %428 = fadd fast float %401, %405
  %429 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %6, float %428, float %410, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %430 = extractvalue %dx.types.ResRet.f32 %429, 0
  %431 = extractvalue %dx.types.ResRet.f32 %429, 1
  %432 = fmul fast float %408, 2.500000e-01
  %433 = fadd fast float %42, %432
  %434 = fsub fast float %433, %420
  %435 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %6, float %428, float %434, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %436 = extractvalue %dx.types.ResRet.f32 %435, 0
  %437 = extractvalue %dx.types.ResRet.f32 %435, 1
  %438 = fmul fast float %437, 5.000000e+00
  %439 = fadd fast float %438, -3.750000e+00
  %440 = call float @dx.op.unary.f32(i32 6, float %439)  ; FAbs(value)
  %441 = fmul fast float %437, %440
  %442 = call float @dx.op.unary.f32(i32 26, float %436)  ; Round_ne(value)
  %443 = call float @dx.op.unary.f32(i32 26, float %441)  ; Round_ne(value)
  %444 = fsub fast float %418, %419
  %445 = fcmp fast ogt float %444, 5.000000e-01
  %446 = fcmp fast ogt float %352, 1.500000e+00
  %447 = fadd fast float %352, -2.000000e+00
  %448 = and i1 %446, %445
  %449 = select i1 %448, float %447, float %352
  %450 = fsub fast float %423, %427
  %451 = fcmp fast ogt float %450, 5.000000e-01
  %452 = fcmp fast ogt float %449, 1.500000e+00
  %453 = select i1 %452, float 2.000000e+00, float 0.000000e+00
  %454 = select i1 %451, float %453, float %449
  %455 = fsub fast float %430, %431
  %456 = fcmp fast ogt float %455, 5.000000e-01
  %457 = fcmp fast ogt float %393, 1.500000e+00
  %458 = fadd fast float %393, -2.000000e+00
  %459 = and i1 %457, %456
  %460 = select i1 %459, float %458, float %393
  %461 = fsub fast float %442, %443
  %462 = fcmp fast ogt float %461, 5.000000e-01
  %463 = fcmp fast ogt float %460, 1.500000e+00
  %464 = select i1 %463, float 2.000000e+00, float 0.000000e+00
  %465 = select i1 %462, float %464, float %460
  %466 = fmul fast float %401, 7.500000e-01
  %467 = fsub fast float %403, %466
  %468 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %6, float %467, float %410, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %469 = extractvalue %dx.types.ResRet.f32 %468, 1
  %470 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %6, float %467, float %425, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %471 = extractvalue %dx.types.ResRet.f32 %470, 1
  %472 = fadd fast float %466, %405
  %473 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %6, float %472, float %410, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %474 = extractvalue %dx.types.ResRet.f32 %473, 1
  %475 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %6, float %472, float %425, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %476 = extractvalue %dx.types.ResRet.f32 %475, 1
  %477 = fcmp fast olt float %469, 1.250000e-01
  %478 = fcmp fast ogt float %454, 1.500000e+00
  %479 = fadd fast float %454, -2.000000e+00
  %480 = and i1 %478, %477
  %481 = select i1 %480, float %479, float %454
  %482 = fcmp fast olt float %471, 1.250000e-01
  %483 = fcmp fast ogt float %481, 1.500000e+00
  %484 = select i1 %483, float 2.000000e+00, float 0.000000e+00
  %485 = select i1 %482, float %484, float %481
  %486 = fcmp fast olt float %474, 1.250000e-01
  %487 = fcmp fast ogt float %465, 1.500000e+00
  %488 = fadd fast float %465, -2.000000e+00
  %489 = and i1 %487, %486
  %490 = select i1 %489, float %488, float %465
  %491 = fcmp fast olt float %476, 1.250000e-01
  %492 = fcmp fast ogt float %490, 1.500000e+00
  %493 = select i1 %492, float 2.000000e+00, float 0.000000e+00
  %494 = select i1 %491, float %493, float %490
  %495 = fmul fast float %408, 1.500000e+00
  %496 = fadd fast float %495, %42
  %497 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %6, float %424, float %496, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %498 = extractvalue %dx.types.ResRet.f32 %497, 0
  %499 = fmul fast float %408, 2.500000e+00
  %500 = fsub fast float %42, %499
  %501 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %6, float %424, float %500, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %502 = extractvalue %dx.types.ResRet.f32 %501, 0
  %503 = fmul fast float %401, 2.000000e+00
  %504 = fadd fast float %503, %405
  %505 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %6, float %504, float %496, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %506 = extractvalue %dx.types.ResRet.f32 %505, 0
  %507 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %6, float %504, float %500, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %508 = extractvalue %dx.types.ResRet.f32 %507, 0
  %509 = fcmp fast ogt float %498, 7.500000e-01
  %510 = fcmp fast ogt float %469, 5.000000e-01
  %511 = and i1 %510, %509
  %512 = fcmp fast ogt float %485, 1.500000e+00
  %513 = fadd fast float %485, -2.000000e+00
  %514 = and i1 %512, %511
  %515 = select i1 %514, float %513, float %485
  %516 = fcmp fast ogt float %502, 7.500000e-01
  %517 = fcmp fast ogt float %471, 5.000000e-01
  %518 = and i1 %517, %516
  %519 = fcmp fast ogt float %515, 1.500000e+00
  %520 = select i1 %519, float 2.000000e+00, float 0.000000e+00
  %521 = select i1 %518, float %520, float %515
  %522 = fcmp fast ogt float %506, 7.500000e-01
  %523 = fcmp fast ogt float %474, 5.000000e-01
  %524 = and i1 %523, %522
  %525 = fcmp fast ogt float %494, 1.500000e+00
  %526 = fadd fast float %494, -2.000000e+00
  %527 = and i1 %525, %524
  %528 = select i1 %527, float %526, float %494
  %529 = fcmp fast ogt float %508, 7.500000e-01
  %530 = fcmp fast ogt float %476, 5.000000e-01
  %531 = and i1 %530, %529
  %532 = fcmp fast ogt float %528, 1.500000e+00
  %533 = select i1 %532, float 2.000000e+00, float 0.000000e+00
  %534 = select i1 %531, float %533, float %528
  br label %535

; <label>:535                                     ; preds = %399, %396
  %536 = phi float [ %393, %396 ], [ %534, %399 ]
  %537 = phi float [ %352, %396 ], [ %521, %399 ]
  %538 = call float @dx.op.unary.f32(i32 6, float %351)  ; FAbs(value)
  %539 = call float @dx.op.unary.f32(i32 6, float %392)  ; FAbs(value)
  %540 = bitcast float %538 to i32
  %541 = ashr i32 %540, 1
  %542 = add nsw i32 %541, 532487669
  %543 = bitcast i32 %542 to float
  %544 = bitcast float %539 to i32
  %545 = ashr i32 %544, 1
  %546 = add nsw i32 %545, 532487669
  %547 = bitcast i32 %546 to float
  %548 = call float @dx.op.binary.f32(i32 36, float %543, float 1.900000e+01)  ; FMin(a,b)
  %549 = call float @dx.op.binary.f32(i32 36, float %547, float 1.900000e+01)  ; FMin(a,b)
  %550 = fmul fast float %537, 2.000000e+01
  %551 = fmul fast float %536, 2.000000e+01
  %552 = fadd fast float %548, %550
  %553 = fadd fast float %549, %551
  %554 = fmul fast float %552, 0x3F899999A0000000
  %555 = fmul fast float %553, 0x3F74E5E0A0000000
  %556 = fadd fast float %554, 0x3F799999A0000000
  %557 = fadd fast float %555, 0x3FC7D63440000000
  %558 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %6, float %556, float %557, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %559 = extractvalue %dx.types.ResRet.f32 %558, 0
  %560 = extractvalue %dx.types.ResRet.f32 %558, 1
  br label %561

; <label>:561                                     ; preds = %535, %378, %304
  %562 = phi i32 [ %305, %304 ], [ -1, %535 ], [ -1, %378 ]
  %563 = phi float [ %306, %304 ], [ %559, %535 ], [ 0.000000e+00, %378 ]
  %564 = phi float [ %307, %304 ], [ %560, %535 ], [ 0.000000e+00, %378 ]
  %565 = call float @dx.op.binary.f32(i32 35, float %563, float %564)  ; FMax(a,b)
  %566 = fcmp fast ogt float %565, 0.000000e+00
  br i1 %566, label %567, label %593, !dx.controlflow.hints !32

; <label>:567                                     ; preds = %561
  %568 = fsub fast float %31, %22
  %569 = fsub fast float %32, %23
  %570 = fsub fast float %33, %24
  %571 = fmul fast float %563, %568
  %572 = fmul fast float %563, %569
  %573 = fmul fast float %563, %570
  %574 = fadd fast float %571, %22
  %575 = fadd fast float %572, %23
  %576 = fadd fast float %573, %24
  %577 = fsub fast float %22, %31
  %578 = fsub fast float %23, %32
  %579 = fsub fast float %24, %33
  %580 = fmul fast float %564, %577
  %581 = fmul fast float %564, %578
  %582 = fmul fast float %564, %579
  %583 = fadd fast float %580, %31
  %584 = fadd fast float %581, %32
  %585 = fadd fast float %582, %33
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %14, i32 %15, i32 undef, float %574, float %575, float %576, float %574, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %586 = add nsw i32 %562, %15
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %14, i32 %586, i32 undef, float %583, float %584, float %585, float %583, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %588 = extractvalue %dx.types.CBufRet.f32 %587, 0
  %589 = extractvalue %dx.types.CBufRet.f32 %587, 1
  %590 = extractvalue %dx.types.CBufRet.f32 %587, 2
  %591 = call float @dx.op.dot3.f32(i32 55, float %574, float %575, float %576, float %588, float %589, float %590)  ; Dot3(ax,ay,az,bx,by,bz)
  %592 = call float @dx.op.dot3.f32(i32 55, float %583, float %584, float %585, float %588, float %589, float %590)  ; Dot3(ax,ay,az,bx,by,bz)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %14, i32 %15, i32 undef, float %591, float %591, float %591, float %591, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %14, i32 %586, i32 undef, float %592, float %592, float %592, float %592, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %593

; <label>:593                                     ; preds = %567, %561
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
!13 = !{i32 2, %"class.RWStructuredBuffer<vector<unsigned int, 3> >"* undef, !"", i32 0, i32 4, i32 1, i32 12, i1 false, i1 false, i1 false, !14}
!14 = !{i32 1, i32 12}
!15 = !{!16}
!16 = !{i32 0, %PostConstantBuffer* undef, !"", i32 0, i32 0, i32 1, i32 112, null}
!17 = !{!18}
!18 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!19 = !{void ()* @smaa_morphological_antialiasing_horizontal, !"smaa_morphological_antialiasing_horizontal", null, !4, !20}
!20 = !{i32 0, i64 272, i32 4, !21}
!21 = !{i32 64, i32 1, i32 1}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 1}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 1}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 1}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 1}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 1}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}

