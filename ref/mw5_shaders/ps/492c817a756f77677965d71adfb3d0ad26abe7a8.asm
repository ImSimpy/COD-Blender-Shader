;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float       
; TEXCOORD                 0   xy          1     NONE   float   xy  
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 7518a67b1ac84bbdc0c817706db42c62
;
; Pipeline Runtime Information: 
;
; Pixel Shader
; DepthOutput=0
; SampleFrequency=0
;
;
; Input signature:
;
; Name                 Index             InterpMode DynIdx
; -------------------- ----- ---------------------- ------
; SV_Position              0          noperspective       
; TEXCOORD                 0                 linear       
;
; Output signature:
;
; Name                 Index             InterpMode DynIdx
; -------------------- ----- ---------------------- ------
; SV_Target                0                              
;
; Buffer Definitions:
;
; cbuffer 
; {
;
;   [48 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb1     1
;                                   sampler      NA          NA      S0             s2     1
;                                   texture     f32          2d      T0             t0     1
;
;
; ViewId state:
;
; Number of inputs: 6, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 4, 5 }
;   output 1 depends on inputs: { 4, 5 }
;   output 2 depends on inputs: { 4, 5 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%perObject = type { <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %5 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %6 = fsub fast float 1.000000e+00, %5
  %7 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %8 = extractvalue %dx.types.CBufRet.f32 %7, 0
  %9 = fptosi float %8 to i32
  %10 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %11 = extractvalue %dx.types.CBufRet.f32 %10, 1
  %12 = extractvalue %dx.types.CBufRet.f32 %10, 2
  %13 = fsub fast float %11, %6
  %14 = call float @dx.op.unary.f32(i32 6, float %13)  ; FAbs(value)
  %15 = fsub fast float %12, %6
  %16 = call float @dx.op.unary.f32(i32 6, float %15)  ; FAbs(value)
  %17 = fcmp fast olt float %16, %14
  %18 = select i1 %17, float %16, float %14
  %19 = select i1 %17, float 0x3FB99999A0000000, float 0x3F847AE140000000
  %20 = select i1 %17, float 0x3F847AE140000000, float 0x3FB99999A0000000
  %21 = fmul fast float %18, 1.500000e+02
  %22 = fsub fast float 1.000000e+00, %21
  %23 = call float @dx.op.unary.f32(i32 7, float %22)  ; Saturate(value)
  %24 = fmul fast float %23, %23
  %25 = fmul fast float %24, 0x3FE99999A0000000
  %26 = fmul fast float %25, %19
  %27 = fmul fast float %24, 0x3F80624DE0000000
  %28 = fmul fast float %25, %20
  %29 = add i32 %9, -1
  %30 = icmp ult i32 %29, 2
  br i1 %30, label %31, label %49

; <label>:31                                      ; preds = %0
  %32 = fadd fast float %5, 0xBFDF7BA6C0000000
  %33 = call float @dx.op.unary.f32(i32 6, float %32)  ; FAbs(value)
  %34 = fadd fast float %5, 0xBFCFC40E00000000
  %35 = call float @dx.op.unary.f32(i32 6, float %34)  ; FAbs(value)
  %36 = call float @dx.op.unary.f32(i32 6, float %5)  ; FAbs(value)
  %37 = call float @dx.op.binary.f32(i32 36, float %35, float %36)  ; FMin(a,b)
  %38 = call float @dx.op.binary.f32(i32 36, float %33, float %37)  ; FMin(a,b)
  %39 = fmul fast float %38, 1.500000e+02
  %40 = fsub fast float 1.000000e+00, %39
  %41 = call float @dx.op.unary.f32(i32 7, float %40)  ; Saturate(value)
  %42 = fmul fast float %41, %41
  %43 = fmul fast float %42, 0x3FE99999A0000000
  %44 = fmul fast float %42, 0x3FD99999A0000000
  %45 = fmul fast float %42, 0x3FE3333340000000
  %46 = fadd fast float %44, %26
  %47 = fadd fast float %45, %27
  %48 = fadd fast float %43, %28
  br label %49

; <label>:49                                      ; preds = %31, %0
  %50 = phi float [ %46, %31 ], [ %26, %0 ]
  %51 = phi float [ %47, %31 ], [ %27, %0 ]
  %52 = phi float [ %48, %31 ], [ %28, %0 ]
  %53 = icmp eq i32 %9, 3
  br i1 %53, label %54, label %134

; <label>:54                                      ; preds = %49
  %55 = call float @dx.op.unary.f32(i32 23, float %6)  ; Log(value)
  %56 = fmul fast float %55, 0x3F89F9B580000000
  %57 = call float @dx.op.unary.f32(i32 21, float %56)  ; Exp(value)
  %58 = fmul fast float %57, 1.868750e+01
  %59 = fsub fast float 0x4032DA0000000000, %58
  %60 = fadd fast float %57, -8.359375e-01
  %61 = call float @dx.op.binary.f32(i32 35, float %60, float 0.000000e+00)  ; FMax(a,b)
  %62 = fdiv fast float %61, %59
  %63 = call float @dx.op.unary.f32(i32 23, float %62)  ; Log(value)
  %64 = fmul fast float %63, 0x40191C0D60000000
  %65 = call float @dx.op.unary.f32(i32 21, float %64)  ; Exp(value)
  %66 = fmul fast float %65, 2.500000e+06
  %67 = fadd fast float %66, 0x3F0FFB4800000000
  %68 = call float @dx.op.unary.f32(i32 23, float %67)  ; Log(value)
  %69 = fadd fast float %68, 0x4006B851E0000000
  %70 = call float @dx.op.unary.f32(i32 27, float %69)  ; Round_ni(value)
  %71 = fadd fast float %70, 0xC006B851E0000000
  %72 = call float @dx.op.unary.f32(i32 21, float %71)  ; Exp(value)
  %73 = fmul fast float %72, 0x3E9AD7F2C0000000
  %74 = call float @dx.op.unary.f32(i32 23, float %73)  ; Log(value)
  %75 = fmul fast float %74, 0x3FC4640000000000
  %76 = call float @dx.op.unary.f32(i32 21, float %75)  ; Exp(value)
  %77 = fmul fast float %76, 0x4032DA0000000000
  %78 = fadd fast float %77, 8.359375e-01
  %79 = fmul fast float %76, 1.868750e+01
  %80 = fadd fast float %79, 1.000000e+00
  %81 = fdiv fast float %78, %80
  %82 = call float @dx.op.unary.f32(i32 23, float %81)  ; Log(value)
  %83 = fmul fast float %82, 7.884375e+01
  %84 = call float @dx.op.unary.f32(i32 21, float %83)  ; Exp(value)
  %85 = fadd fast float %70, 1.000000e+00
  %86 = fadd fast float %70, 0xBFFD70A3C0000000
  %87 = call float @dx.op.unary.f32(i32 21, float %86)  ; Exp(value)
  %88 = fmul fast float %87, 0x3E9AD7F2C0000000
  %89 = call float @dx.op.unary.f32(i32 23, float %88)  ; Log(value)
  %90 = fmul fast float %89, 0x3FC4640000000000
  %91 = call float @dx.op.unary.f32(i32 21, float %90)  ; Exp(value)
  %92 = fmul fast float %91, 0x4032DA0000000000
  %93 = fadd fast float %92, 8.359375e-01
  %94 = fmul fast float %91, 1.868750e+01
  %95 = fadd fast float %94, 1.000000e+00
  %96 = fdiv fast float %93, %95
  %97 = call float @dx.op.unary.f32(i32 23, float %96)  ; Log(value)
  %98 = fmul fast float %97, 7.884375e+01
  %99 = call float @dx.op.unary.f32(i32 21, float %98)  ; Exp(value)
  %100 = fsub fast float %84, %6
  %101 = call float @dx.op.unary.f32(i32 6, float %100)  ; FAbs(value)
  %102 = fsub fast float %99, %6
  %103 = call float @dx.op.unary.f32(i32 6, float %102)  ; FAbs(value)
  %104 = fcmp fast olt float %101, %103
  %105 = select i1 %104, float %70, float %85
  %106 = select i1 %104, float %101, float %103
  %107 = fmul fast float %106, 1.500000e+02
  %108 = fsub fast float 1.000000e+00, %107
  %109 = call float @dx.op.unary.f32(i32 7, float %108)  ; Saturate(value)
  %110 = fmul fast float %109, %109
  %111 = fmul fast float %110, 0x3FE99999A0000000
  %112 = fmul fast float %105, 0x3FB99999A0000000
  %113 = fsub fast float -0.000000e+00, %112
  %114 = fcmp fast oge float %112, %113
  %115 = call float @dx.op.unary.f32(i32 6, float %112)  ; FAbs(value)
  %116 = call float @dx.op.unary.f32(i32 22, float %115)  ; Frc(value)
  %117 = fsub fast float -0.000000e+00, %116
  %118 = select i1 %114, float %116, float %117
  %119 = fmul fast float %118, 1.000000e+01
  %120 = fcmp fast une float %119, 0.000000e+00
  br i1 %120, label %121, label %127

; <label>:121                                     ; preds = %54
  %122 = fcmp fast oeq float %119, 5.000000e+00
  br i1 %122, label %123, label %125

; <label>:123                                     ; preds = %121
  %124 = fmul fast float %110, 0x3FC99999A0000000
  br label %127

; <label>:125                                     ; preds = %121
  %126 = fmul fast float %110, 0x3FA47AE160000000
  br label %127

; <label>:127                                     ; preds = %125, %123, %54
  %128 = phi float [ %124, %123 ], [ %126, %125 ], [ %111, %54 ]
  %129 = fmul fast float %128, 5.000000e-01
  %130 = fmul fast float %128, 7.500000e-01
  %131 = fadd fast float %129, %50
  %132 = fadd fast float %130, %51
  %133 = fadd fast float %128, %52
  br label %134

; <label>:134                                     ; preds = %127, %49
  %135 = phi float [ %131, %127 ], [ %50, %49 ]
  %136 = phi float [ %132, %127 ], [ %51, %49 ]
  %137 = phi float [ %133, %127 ], [ %52, %49 ]
  %138 = extractvalue %dx.types.CBufRet.f32 %10, 0
  %139 = fcmp fast ogt float %138, 0.000000e+00
  br i1 %139, label %140, label %153

; <label>:140                                     ; preds = %134
  %141 = fsub fast float %138, %6
  %142 = call float @dx.op.unary.f32(i32 6, float %141)  ; FAbs(value)
  %143 = fmul fast float %142, 1.500000e+02
  %144 = fsub fast float 1.000000e+00, %143
  %145 = call float @dx.op.unary.f32(i32 7, float %144)  ; Saturate(value)
  %146 = fmul fast float %145, %145
  %147 = fmul fast float %146, 0x3FE99999A0000000
  %148 = fmul fast float %146, 0x3FD99999A0000000
  %149 = fmul fast float %146, 0x3FE3333340000000
  %150 = fadd fast float %147, %135
  %151 = fadd fast float %148, %136
  %152 = fadd fast float %149, %137
  br label %153

; <label>:153                                     ; preds = %140, %134
  %154 = phi float [ %150, %140 ], [ %135, %134 ]
  %155 = phi float [ %151, %140 ], [ %136, %134 ]
  %156 = phi float [ %152, %140 ], [ %137, %134 ]
  %157 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %4, float %5, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %158 = extractvalue %dx.types.ResRet.f32 %157, 0
  %159 = extractvalue %dx.types.ResRet.f32 %157, 1
  %160 = extractvalue %dx.types.ResRet.f32 %157, 2
  %161 = fcmp fast ogt float %158, 0.000000e+00
  %162 = fadd fast float %158, 0x3F847AE140000000
  %163 = select i1 %161, float %162, float %158
  %164 = fcmp fast ogt float %159, 0.000000e+00
  %165 = fadd fast float %159, 0x3F847AE140000000
  %166 = select i1 %164, float %165, float %159
  %167 = fcmp fast ogt float %160, 0.000000e+00
  %168 = fadd fast float %160, 0x3F847AE140000000
  %169 = select i1 %167, float %168, float %160
  %170 = fmul fast float %163, 0xC0114FF580000000
  %171 = fmul fast float %166, 0xC0114FF580000000
  %172 = fmul fast float %169, 0xC0114FF580000000
  %173 = call float @dx.op.unary.f32(i32 21, float %170)  ; Exp(value)
  %174 = call float @dx.op.unary.f32(i32 21, float %171)  ; Exp(value)
  %175 = call float @dx.op.unary.f32(i32 21, float %172)  ; Exp(value)
  %176 = fadd fast float %154, 1.000000e+00
  %177 = fsub fast float %176, %173
  %178 = fadd fast float %155, 1.000000e+00
  %179 = fsub fast float %178, %174
  %180 = fadd fast float %156, 1.000000e+00
  %181 = fsub fast float %180, %175
  %182 = call float @dx.op.unary.f32(i32 7, float %177)  ; Saturate(value)
  %183 = call float @dx.op.unary.f32(i32 7, float %179)  ; Saturate(value)
  %184 = call float @dx.op.unary.f32(i32 7, float %181)  ; Saturate(value)
  br i1 %30, label %185, label %503

; <label>:185                                     ; preds = %153
  %186 = fadd fast float %4, 0xBF847AE140000000
  %187 = fmul fast float %186, 2.560000e+02
  %188 = fmul fast float %5, 1.600000e+01
  %189 = fcmp fast olt float %187, 0.000000e+00
  %190 = fcmp fast olt float %188, 0.000000e+00
  %191 = or i1 %189, %190
  %192 = fcmp fast oge float %187, 1.000000e+00
  %193 = or i1 %192, %191
  %194 = fcmp fast oge float %188, 1.000000e+00
  %195 = or i1 %194, %193
  %196 = select i1 %195, float 0.000000e+00, float 1.000000e+00
  %197 = fmul fast float %186, 2.048000e+03
  %198 = fmul fast float %5, 1.280000e+02
  %199 = call float @dx.op.unary.f32(i32 27, float %197)  ; Round_ni(value)
  %200 = call float @dx.op.unary.f32(i32 27, float %198)  ; Round_ni(value)
  %201 = fptoui float %199 to i32
  %202 = fptoui float %200 to i32
  %203 = shl i32 %202, 3
  %204 = add i32 %203, %201
  %205 = icmp ult i32 %202, 4
  %206 = select i1 %205, i32 404494336, i32 3938328
  %207 = and i32 %204, 31
  %208 = lshr i32 %206, %207
  %209 = and i32 %208, 1
  %210 = uitofp i32 %209 to float
  %211 = fmul fast float %210, %196
  %212 = fadd fast float %187, -1.000000e+00
  %213 = fcmp fast olt float %212, 0.000000e+00
  %214 = or i1 %190, %213
  %215 = fcmp fast oge float %212, 1.000000e+00
  %216 = or i1 %215, %214
  %217 = or i1 %194, %216
  %218 = select i1 %217, float 0.000000e+00, float 1.000000e+00
  %219 = fadd fast float %197, -8.000000e+00
  %220 = call float @dx.op.unary.f32(i32 27, float %219)  ; Round_ni(value)
  %221 = fptoui float %220 to i32
  %222 = add i32 %203, %221
  %223 = select i1 %205, i32 2071150080, i32 4089711
  %224 = and i32 %222, 31
  %225 = lshr i32 %223, %224
  %226 = and i32 %225, 1
  %227 = uitofp i32 %226 to float
  %228 = fmul fast float %227, %218
  %229 = fadd fast float %228, %211
  %230 = fadd fast float %187, -2.000000e+00
  %231 = fcmp fast olt float %230, 0.000000e+00
  %232 = or i1 %190, %231
  %233 = fcmp fast oge float %230, 1.000000e+00
  %234 = or i1 %233, %232
  %235 = or i1 %194, %234
  %236 = select i1 %235, float 0.000000e+00, float 1.000000e+00
  %237 = fadd fast float %197, -1.600000e+01
  %238 = call float @dx.op.unary.f32(i32 27, float %237)  ; Round_ni(value)
  %239 = fptoui float %238 to i32
  %240 = add i32 %203, %239
  %241 = and i32 %240, 31
  %242 = lshr i32 %223, %241
  %243 = and i32 %242, 1
  %244 = uitofp i32 %243 to float
  %245 = fmul fast float %244, %236
  %246 = fadd fast float %229, %245
  %247 = fadd fast float %187, -3.000000e+00
  %248 = fcmp fast olt float %247, 0.000000e+00
  %249 = or i1 %190, %248
  %250 = fcmp fast oge float %247, 1.000000e+00
  %251 = or i1 %250, %249
  %252 = or i1 %194, %251
  %253 = select i1 %252, float 0.000000e+00, float 1.000000e+00
  %254 = fadd fast float %197, -2.400000e+01
  %255 = call float @dx.op.unary.f32(i32 27, float %254)  ; Round_ni(value)
  %256 = fptoui float %255 to i32
  %257 = add i32 %203, %256
  %258 = and i32 %257, 31
  %259 = lshr i32 %223, %258
  %260 = and i32 %259, 1
  %261 = uitofp i32 %260 to float
  %262 = fmul fast float %261, %253
  %263 = fadd fast float %246, %262
  %264 = fadd fast float %187, -4.000000e+00
  %265 = fcmp fast olt float %264, 0.000000e+00
  %266 = or i1 %190, %265
  %267 = fcmp fast oge float %264, 1.000000e+00
  %268 = or i1 %267, %266
  %269 = or i1 %194, %268
  %270 = select i1 %269, float 0.000000e+00, float 1.000000e+00
  %271 = fadd fast float %197, -3.200000e+01
  %272 = call float @dx.op.unary.f32(i32 27, float %271)  ; Round_ni(value)
  %273 = fptoui float %272 to i32
  %274 = add i32 %203, %273
  %275 = and i32 %274, 31
  %276 = lshr i32 %223, %275
  %277 = and i32 %276, 1
  %278 = uitofp i32 %277 to float
  %279 = fmul fast float %278, %270
  %280 = fadd fast float %263, %279
  %281 = fadd fast float %5, 0xBFCFC40E00000000
  %282 = fmul fast float %281, 1.600000e+01
  %283 = fcmp fast olt float %282, 0.000000e+00
  %284 = or i1 %189, %283
  %285 = or i1 %192, %284
  %286 = fcmp fast oge float %282, 1.000000e+00
  %287 = or i1 %286, %285
  %288 = select i1 %287, float 0.000000e+00, float 1.000000e+00
  %289 = fmul fast float %281, 1.280000e+02
  %290 = call float @dx.op.unary.f32(i32 27, float %289)  ; Round_ni(value)
  %291 = fptoui float %290 to i32
  %292 = shl i32 %291, 3
  %293 = add i32 %292, %201
  %294 = icmp ult i32 %291, 4
  %295 = select i1 %294, i32 404494336, i32 3938328
  %296 = and i32 %293, 31
  %297 = lshr i32 %295, %296
  %298 = and i32 %297, 1
  %299 = uitofp i32 %298 to float
  %300 = fmul fast float %299, %288
  %301 = fadd fast float %280, %300
  %302 = or i1 %213, %283
  %303 = or i1 %215, %302
  %304 = or i1 %286, %303
  %305 = select i1 %304, float 0.000000e+00, float 1.000000e+00
  %306 = add i32 %292, %221
  %307 = select i1 %294, i32 2071150080, i32 4089711
  %308 = and i32 %306, 31
  %309 = lshr i32 %307, %308
  %310 = and i32 %309, 1
  %311 = uitofp i32 %310 to float
  %312 = fmul fast float %311, %305
  %313 = fadd fast float %301, %312
  %314 = or i1 %231, %283
  %315 = or i1 %233, %314
  %316 = or i1 %286, %315
  %317 = select i1 %316, float 0.000000e+00, float 1.000000e+00
  %318 = add i32 %292, %239
  %319 = and i32 %318, 31
  %320 = lshr i32 %307, %319
  %321 = and i32 %320, 1
  %322 = uitofp i32 %321 to float
  %323 = fmul fast float %322, %317
  %324 = fadd fast float %313, %323
  %325 = or i1 %248, %283
  %326 = or i1 %250, %325
  %327 = or i1 %286, %326
  %328 = select i1 %327, float 0.000000e+00, float 1.000000e+00
  %329 = add i32 %292, %256
  %330 = and i32 %329, 31
  %331 = lshr i32 %307, %330
  %332 = and i32 %331, 1
  %333 = uitofp i32 %332 to float
  %334 = fmul fast float %333, %328
  %335 = fadd fast float %324, %334
  %336 = fadd fast float %5, 0xBFDF7BA6C0000000
  %337 = fmul fast float %336, 1.600000e+01
  %338 = fcmp fast olt float %337, 0.000000e+00
  %339 = or i1 %189, %338
  %340 = or i1 %192, %339
  %341 = fcmp fast oge float %337, 1.000000e+00
  %342 = or i1 %341, %340
  %343 = select i1 %342, float 0.000000e+00, float 1.000000e+00
  %344 = fmul fast float %336, 1.280000e+02
  %345 = call float @dx.op.unary.f32(i32 27, float %344)  ; Round_ni(value)
  %346 = fptoui float %345 to i32
  %347 = shl i32 %346, 3
  %348 = add i32 %347, %201
  %349 = icmp ult i32 %346, 4
  %350 = select i1 %349, i32 404494336, i32 3938328
  %351 = and i32 %348, 31
  %352 = lshr i32 %350, %351
  %353 = and i32 %352, 1
  %354 = uitofp i32 %353 to float
  %355 = fmul fast float %354, %343
  %356 = fadd fast float %335, %355
  %357 = or i1 %213, %338
  %358 = or i1 %215, %357
  %359 = or i1 %341, %358
  %360 = select i1 %359, float 0.000000e+00, float 1.000000e+00
  %361 = add i32 %347, %221
  %362 = select i1 %349, i32 2071150080, i32 4089711
  %363 = and i32 %361, 31
  %364 = lshr i32 %362, %363
  %365 = and i32 %364, 1
  %366 = uitofp i32 %365 to float
  %367 = fmul fast float %366, %360
  %368 = fadd fast float %356, %367
  %369 = or i1 %231, %338
  %370 = or i1 %233, %369
  %371 = or i1 %341, %370
  %372 = select i1 %371, float 0.000000e+00, float 1.000000e+00
  %373 = add i32 %347, %239
  %374 = and i32 %373, 31
  %375 = lshr i32 %362, %374
  %376 = and i32 %375, 1
  %377 = uitofp i32 %376 to float
  %378 = fmul fast float %377, %372
  %379 = fadd fast float %368, %378
  %380 = fadd fast float %187, -1.000000e+01
  %381 = fcmp fast olt float %380, 0.000000e+00
  %382 = or i1 %190, %381
  %383 = fcmp fast oge float %380, 1.000000e+00
  %384 = or i1 %383, %382
  %385 = or i1 %194, %384
  %386 = select i1 %385, float 0.000000e+00, float 1.000000e+00
  %387 = fadd fast float %197, -8.000000e+01
  %388 = call float @dx.op.unary.f32(i32 27, float %387)  ; Round_ni(value)
  %389 = fptoui float %388 to i32
  %390 = add i32 %203, %389
  %391 = select i1 %205, i32 1063468800, i32 4154211
  %392 = and i32 %390, 31
  %393 = lshr i32 %391, %392
  %394 = and i32 %393, 1
  %395 = uitofp i32 %394 to float
  %396 = fmul fast float %395, %386
  %397 = fadd fast float %379, %396
  %398 = fadd fast float %187, -1.100000e+01
  %399 = fcmp fast olt float %398, 0.000000e+00
  %400 = or i1 %190, %399
  %401 = fcmp fast oge float %398, 1.000000e+00
  %402 = or i1 %401, %400
  %403 = or i1 %194, %402
  %404 = select i1 %403, float 0.000000e+00, float 1.000000e+00
  %405 = fadd fast float %197, -8.800000e+01
  %406 = call float @dx.op.unary.f32(i32 27, float %405)  ; Round_ni(value)
  %407 = fptoui float %406 to i32
  %408 = add i32 %203, %407
  %409 = select i1 %205, i32 202129152, i32 789516
  %410 = and i32 %408, 31
  %411 = lshr i32 %409, %410
  %412 = and i32 %411, 1
  %413 = uitofp i32 %412 to float
  %414 = fmul fast float %413, %404
  %415 = fadd fast float %397, %414
  %416 = fadd fast float %187, -1.200000e+01
  %417 = fcmp fast olt float %416, 0.000000e+00
  %418 = or i1 %190, %417
  %419 = fcmp fast oge float %416, 1.000000e+00
  %420 = or i1 %419, %418
  %421 = or i1 %194, %420
  %422 = select i1 %421, float 0.000000e+00, float 1.000000e+00
  %423 = fadd fast float %197, -9.600000e+01
  %424 = call float @dx.op.unary.f32(i32 27, float %423)  ; Round_ni(value)
  %425 = fptoui float %424 to i32
  %426 = add i32 %203, %425
  %427 = select i1 %205, i32 0, i32 1579008
  %428 = and i32 %426, 31
  %429 = lshr i32 %427, %428
  %430 = and i32 %429, 1
  %431 = uitofp i32 %430 to float
  %432 = fmul fast float %431, %422
  %433 = fadd fast float %415, %432
  %434 = fadd fast float %187, -1.300000e+01
  %435 = fcmp fast olt float %434, 0.000000e+00
  %436 = or i1 %190, %435
  %437 = fcmp fast oge float %434, 1.000000e+00
  %438 = or i1 %437, %436
  %439 = or i1 %194, %438
  %440 = select i1 %439, float 0.000000e+00, float 1.000000e+00
  %441 = fadd fast float %197, -1.040000e+02
  %442 = call float @dx.op.unary.f32(i32 27, float %441)  ; Round_ni(value)
  %443 = fptoui float %442 to i32
  %444 = add i32 %203, %443
  %445 = select i1 %205, i32 1617116672, i32 8323902
  %446 = and i32 %444, 31
  %447 = lshr i32 %445, %446
  %448 = and i32 %447, 1
  %449 = uitofp i32 %448 to float
  %450 = fmul fast float %449, %440
  %451 = fadd fast float %433, %450
  %452 = fadd fast float %187, -1.400000e+01
  %453 = fcmp fast olt float %452, 0.000000e+00
  %454 = or i1 %190, %453
  %455 = fcmp fast oge float %452, 1.000000e+00
  %456 = or i1 %455, %454
  %457 = or i1 %194, %456
  %458 = select i1 %457, float 0.000000e+00, float 1.000000e+00
  %459 = fadd fast float %197, -1.120000e+02
  %460 = call float @dx.op.unary.f32(i32 27, float %459)  ; Round_ni(value)
  %461 = fptoui float %460 to i32
  %462 = add i32 %203, %461
  %463 = and i32 %462, 31
  %464 = lshr i32 %223, %463
  %465 = and i32 %464, 1
  %466 = uitofp i32 %465 to float
  %467 = fmul fast float %466, %458
  %468 = fadd fast float %451, %467
  %469 = fadd fast float %187, -1.500000e+01
  %470 = fcmp fast olt float %469, 0.000000e+00
  %471 = or i1 %190, %470
  %472 = fcmp fast oge float %469, 1.000000e+00
  %473 = or i1 %472, %471
  %474 = or i1 %194, %473
  %475 = select i1 %474, float 0.000000e+00, float 1.000000e+00
  %476 = fadd fast float %197, -1.200000e+02
  %477 = call float @dx.op.unary.f32(i32 27, float %476)  ; Round_ni(value)
  %478 = fptoui float %477 to i32
  %479 = add i32 %203, %478
  %480 = and i32 %479, 31
  %481 = lshr i32 %445, %480
  %482 = and i32 %481, 1
  %483 = uitofp i32 %482 to float
  %484 = fmul fast float %483, %475
  %485 = fadd fast float %468, %484
  %486 = fadd fast float %187, -1.600000e+01
  %487 = fcmp fast olt float %486, 0.000000e+00
  %488 = or i1 %190, %487
  %489 = fcmp fast oge float %486, 1.000000e+00
  %490 = or i1 %489, %488
  %491 = or i1 %194, %490
  %492 = select i1 %491, float 0.000000e+00, float 1.000000e+00
  %493 = fadd fast float %197, -1.280000e+02
  %494 = call float @dx.op.unary.f32(i32 27, float %493)  ; Round_ni(value)
  %495 = fptoui float %494 to i32
  %496 = add i32 %203, %495
  %497 = and i32 %496, 31
  %498 = lshr i32 %223, %497
  %499 = and i32 %498, 1
  %500 = uitofp i32 %499 to float
  %501 = fmul fast float %500, %492
  %502 = fadd fast float %485, %501
  br label %503

; <label>:503                                     ; preds = %185, %153
  %504 = phi float [ %502, %185 ], [ 0.000000e+00, %153 ]
  %505 = icmp eq i32 %9, 0
  br i1 %505, label %506, label %590

; <label>:506                                     ; preds = %503
  %507 = fadd fast float %4, 0xBF847AE140000000
  %508 = fmul fast float %507, 2.560000e+02
  %509 = fmul fast float %5, 1.600000e+01
  %510 = fadd fast float %508, -1.000000e+01
  %511 = fcmp fast olt float %510, 0.000000e+00
  %512 = fcmp fast olt float %509, 0.000000e+00
  %513 = or i1 %512, %511
  %514 = fcmp fast oge float %510, 1.000000e+00
  %515 = or i1 %514, %513
  %516 = fcmp fast oge float %509, 1.000000e+00
  %517 = or i1 %516, %515
  %518 = select i1 %517, float 0.000000e+00, float 1.000000e+00
  %519 = fmul fast float %507, 2.048000e+03
  %520 = fadd fast float %519, -8.000000e+01
  %521 = fmul fast float %5, 1.280000e+02
  %522 = call float @dx.op.unary.f32(i32 27, float %520)  ; Round_ni(value)
  %523 = call float @dx.op.unary.f32(i32 27, float %521)  ; Round_ni(value)
  %524 = fptoui float %522 to i32
  %525 = fptoui float %523 to i32
  %526 = shl i32 %525, 3
  %527 = add i32 %526, %524
  %528 = icmp ult i32 %525, 4
  %529 = select i1 %528, i32 52297728, i32 2043934
  %530 = and i32 %527, 31
  %531 = lshr i32 %529, %530
  %532 = and i32 %531, 1
  %533 = uitofp i32 %532 to float
  %534 = fmul fast float %533, %518
  %535 = fadd fast float %534, %504
  %536 = fadd fast float %508, -1.100000e+01
  %537 = fcmp fast olt float %536, 0.000000e+00
  %538 = or i1 %512, %537
  %539 = fcmp fast oge float %536, 1.000000e+00
  %540 = or i1 %539, %538
  %541 = or i1 %516, %540
  %542 = select i1 %541, float 0.000000e+00, float 1.000000e+00
  %543 = fadd fast float %519, -8.800000e+01
  %544 = call float @dx.op.unary.f32(i32 27, float %543)  ; Round_ni(value)
  %545 = fptoui float %544 to i32
  %546 = add i32 %526, %545
  %547 = select i1 %528, i32 1667448576, i32 6501183
  %548 = and i32 %546, 31
  %549 = lshr i32 %547, %548
  %550 = and i32 %549, 1
  %551 = uitofp i32 %550 to float
  %552 = fmul fast float %551, %542
  %553 = fadd fast float %535, %552
  %554 = fadd fast float %508, -1.200000e+01
  %555 = fcmp fast olt float %554, 0.000000e+00
  %556 = or i1 %512, %555
  %557 = fcmp fast oge float %554, 1.000000e+00
  %558 = or i1 %557, %556
  %559 = or i1 %516, %558
  %560 = select i1 %559, float 0.000000e+00, float 1.000000e+00
  %561 = fadd fast float %519, -9.600000e+01
  %562 = call float @dx.op.unary.f32(i32 27, float %561)  ; Round_ni(value)
  %563 = fptoui float %562 to i32
  %564 = add i32 %526, %563
  %565 = select i1 %528, i32 56835584, i32 4088699
  %566 = and i32 %564, 31
  %567 = lshr i32 %565, %566
  %568 = and i32 %567, 1
  %569 = uitofp i32 %568 to float
  %570 = fmul fast float %569, %560
  %571 = fadd fast float %553, %570
  %572 = fadd fast float %508, -1.300000e+01
  %573 = fcmp fast olt float %572, 0.000000e+00
  %574 = or i1 %512, %573
  %575 = fcmp fast oge float %572, 1.000000e+00
  %576 = or i1 %575, %574
  %577 = or i1 %516, %576
  %578 = select i1 %577, float 0.000000e+00, float 1.000000e+00
  %579 = fadd fast float %519, -1.040000e+02
  %580 = call float @dx.op.unary.f32(i32 27, float %579)  ; Round_ni(value)
  %581 = fptoui float %580 to i32
  %582 = add i32 %526, %581
  %583 = select i1 %528, i32 1063468800, i32 4154211
  %584 = and i32 %582, 31
  %585 = lshr i32 %583, %584
  %586 = and i32 %585, 1
  %587 = uitofp i32 %586 to float
  %588 = fmul fast float %587, %578
  %589 = fadd fast float %571, %588
  br label %590

; <label>:590                                     ; preds = %506, %503
  %591 = phi float [ %589, %506 ], [ %504, %503 ]
  br i1 %53, label %592, label %829

; <label>:592                                     ; preds = %590
  %593 = fadd fast float %4, 0xBF847AE140000000
  %594 = fadd fast float %5, 0xBFEC0DAF80000000
  %595 = fmul fast float %593, 2.560000e+02
  %596 = fmul fast float %594, 1.600000e+01
  %597 = fcmp fast olt float %595, 0.000000e+00
  %598 = fcmp fast olt float %596, 0.000000e+00
  %599 = or i1 %597, %598
  %600 = fcmp fast oge float %595, 1.000000e+00
  %601 = or i1 %600, %599
  %602 = fcmp fast oge float %596, 1.000000e+00
  %603 = or i1 %602, %601
  %604 = select i1 %603, float 0.000000e+00, float 1.000000e+00
  %605 = fmul fast float %593, 2.048000e+03
  %606 = fmul fast float %594, 1.280000e+02
  %607 = call float @dx.op.unary.f32(i32 27, float %605)  ; Round_ni(value)
  %608 = call float @dx.op.unary.f32(i32 27, float %606)  ; Round_ni(value)
  %609 = fptoui float %607 to i32
  %610 = fptoui float %608 to i32
  %611 = shl i32 %610, 3
  %612 = add i32 %611, %609
  %613 = icmp ult i32 %610, 4
  %614 = select i1 %613, i32 404494336, i32 3938328
  %615 = and i32 %612, 31
  %616 = lshr i32 %614, %615
  %617 = and i32 %616, 1
  %618 = uitofp i32 %617 to float
  %619 = fmul fast float %618, %604
  %620 = fadd fast float %619, %591
  %621 = fadd fast float %595, -1.000000e+00
  %622 = fcmp fast olt float %621, 0.000000e+00
  %623 = or i1 %622, %598
  %624 = fcmp fast oge float %621, 1.000000e+00
  %625 = or i1 %624, %623
  %626 = or i1 %602, %625
  %627 = select i1 %626, float 0.000000e+00, float 1.000000e+00
  %628 = fadd fast float %605, -8.000000e+00
  %629 = call float @dx.op.unary.f32(i32 27, float %628)  ; Round_ni(value)
  %630 = fptoui float %629 to i32
  %631 = add i32 %611, %630
  %632 = select i1 %613, i32 2071150080, i32 4089711
  %633 = and i32 %631, 31
  %634 = lshr i32 %632, %633
  %635 = and i32 %634, 1
  %636 = uitofp i32 %635 to float
  %637 = fmul fast float %636, %627
  %638 = fadd fast float %620, %637
  %639 = fadd fast float %595, -3.000000e+00
  %640 = fcmp fast olt float %639, 0.000000e+00
  %641 = or i1 %640, %598
  %642 = fcmp fast oge float %639, 1.000000e+00
  %643 = or i1 %642, %641
  %644 = or i1 %602, %643
  %645 = select i1 %644, float 0.000000e+00, float 1.000000e+00
  %646 = fadd fast float %605, -2.400000e+01
  %647 = call float @dx.op.unary.f32(i32 27, float %646)  ; Round_ni(value)
  %648 = fptoui float %647 to i32
  %649 = add i32 %611, %648
  %650 = select i1 %613, i32 1057193728, i32 8323843
  %651 = and i32 %649, 31
  %652 = lshr i32 %650, %651
  %653 = and i32 %652, 1
  %654 = uitofp i32 %653 to float
  %655 = fmul fast float %654, %645
  %656 = fadd fast float %638, %655
  %657 = fadd fast float %595, -4.000000e+00
  %658 = fcmp fast olt float %657, 0.000000e+00
  %659 = or i1 %658, %598
  %660 = fcmp fast oge float %657, 1.000000e+00
  %661 = or i1 %660, %659
  %662 = or i1 %602, %661
  %663 = select i1 %662, float 0.000000e+00, float 1.000000e+00
  %664 = fadd fast float %605, -3.200000e+01
  %665 = call float @dx.op.unary.f32(i32 27, float %664)  ; Round_ni(value)
  %666 = fptoui float %665 to i32
  %667 = add i32 %611, %666
  %668 = select i1 %613, i32 1667457792, i32 1848931
  %669 = and i32 %667, 31
  %670 = lshr i32 %668, %669
  %671 = and i32 %670, 1
  %672 = uitofp i32 %671 to float
  %673 = fmul fast float %672, %663
  %674 = fadd fast float %656, %673
  %675 = fadd fast float %5, 0xBFD39A7D40000000
  %676 = fmul fast float %675, 1.600000e+01
  %677 = fcmp fast olt float %676, 0.000000e+00
  %678 = or i1 %597, %677
  %679 = or i1 %600, %678
  %680 = fcmp fast oge float %676, 1.000000e+00
  %681 = or i1 %680, %679
  %682 = select i1 %681, float 0.000000e+00, float 1.000000e+00
  %683 = fmul fast float %675, 1.280000e+02
  %684 = call float @dx.op.unary.f32(i32 27, float %683)  ; Round_ni(value)
  %685 = fptoui float %684 to i32
  %686 = shl i32 %685, 3
  %687 = add i32 %686, %609
  %688 = icmp ult i32 %685, 4
  %689 = select i1 %688, i32 1617116672, i32 8323902
  %690 = and i32 %687, 31
  %691 = lshr i32 %689, %690
  %692 = and i32 %691, 1
  %693 = uitofp i32 %692 to float
  %694 = fmul fast float %693, %682
  %695 = fadd fast float %674, %694
  %696 = or i1 %622, %677
  %697 = or i1 %624, %696
  %698 = or i1 %680, %697
  %699 = select i1 %698, float 0.000000e+00, float 1.000000e+00
  %700 = add i32 %686, %630
  %701 = select i1 %688, i32 2071150080, i32 4089711
  %702 = and i32 %700, 31
  %703 = lshr i32 %701, %702
  %704 = and i32 %703, 1
  %705 = uitofp i32 %704 to float
  %706 = fmul fast float %705, %699
  %707 = fadd fast float %695, %706
  %708 = or i1 %640, %677
  %709 = or i1 %642, %708
  %710 = or i1 %680, %709
  %711 = select i1 %710, float 0.000000e+00, float 1.000000e+00
  %712 = add i32 %686, %648
  %713 = select i1 %688, i32 1057193728, i32 8323843
  %714 = and i32 %712, 31
  %715 = lshr i32 %713, %714
  %716 = and i32 %715, 1
  %717 = uitofp i32 %716 to float
  %718 = fmul fast float %717, %711
  %719 = fadd fast float %707, %718
  %720 = or i1 %658, %677
  %721 = or i1 %660, %720
  %722 = or i1 %680, %721
  %723 = select i1 %722, float 0.000000e+00, float 1.000000e+00
  %724 = add i32 %686, %666
  %725 = select i1 %688, i32 1667457792, i32 1848931
  %726 = and i32 %724, 31
  %727 = lshr i32 %725, %726
  %728 = and i32 %727, 1
  %729 = uitofp i32 %728 to float
  %730 = fmul fast float %729, %723
  %731 = fadd fast float %719, %730
  %732 = fmul fast float %5, 1.600000e+01
  %733 = fadd fast float %595, -1.000000e+01
  %734 = fcmp fast olt float %733, 0.000000e+00
  %735 = fcmp fast olt float %732, 0.000000e+00
  %736 = or i1 %735, %734
  %737 = fcmp fast oge float %733, 1.000000e+00
  %738 = or i1 %737, %736
  %739 = fcmp fast oge float %732, 1.000000e+00
  %740 = or i1 %739, %738
  %741 = select i1 %740, float 0.000000e+00, float 1.000000e+00
  %742 = fadd fast float %605, -8.000000e+01
  %743 = fmul fast float %5, 1.280000e+02
  %744 = call float @dx.op.unary.f32(i32 27, float %742)  ; Round_ni(value)
  %745 = call float @dx.op.unary.f32(i32 27, float %743)  ; Round_ni(value)
  %746 = fptoui float %744 to i32
  %747 = fptoui float %745 to i32
  %748 = shl i32 %747, 3
  %749 = add i32 %748, %746
  %750 = icmp ult i32 %747, 4
  %751 = select i1 %750, i32 1040399872, i32 4088672
  %752 = and i32 %749, 31
  %753 = lshr i32 %751, %752
  %754 = and i32 %753, 1
  %755 = uitofp i32 %754 to float
  %756 = fmul fast float %755, %741
  %757 = fadd fast float %731, %756
  %758 = fadd fast float %595, -1.100000e+01
  %759 = fcmp fast olt float %758, 0.000000e+00
  %760 = or i1 %735, %759
  %761 = fcmp fast oge float %758, 1.000000e+00
  %762 = or i1 %761, %760
  %763 = or i1 %739, %762
  %764 = select i1 %763, float 0.000000e+00, float 1.000000e+00
  %765 = fadd fast float %605, -8.800000e+01
  %766 = call float @dx.op.unary.f32(i32 27, float %765)  ; Round_ni(value)
  %767 = fptoui float %766 to i32
  %768 = add i32 %748, %767
  %769 = select i1 %750, i32 104595456, i32 3933702
  %770 = and i32 %768, 31
  %771 = lshr i32 %769, %770
  %772 = and i32 %771, 1
  %773 = uitofp i32 %772 to float
  %774 = fmul fast float %773, %764
  %775 = fadd fast float %757, %774
  %776 = fadd fast float %595, -1.200000e+01
  %777 = fcmp fast olt float %776, 0.000000e+00
  %778 = or i1 %735, %777
  %779 = fcmp fast oge float %776, 1.000000e+00
  %780 = or i1 %779, %778
  %781 = or i1 %739, %780
  %782 = select i1 %781, float 0.000000e+00, float 1.000000e+00
  %783 = fadd fast float %605, -9.600000e+01
  %784 = call float @dx.op.unary.f32(i32 27, float %783)  ; Round_ni(value)
  %785 = fptoui float %784 to i32
  %786 = add i32 %748, %785
  %787 = select i1 %750, i32 857604096, i32 4064031
  %788 = and i32 %786, 31
  %789 = lshr i32 %787, %788
  %790 = and i32 %789, 1
  %791 = uitofp i32 %790 to float
  %792 = fmul fast float %791, %782
  %793 = fadd fast float %775, %792
  %794 = fadd fast float %595, -1.300000e+01
  %795 = fcmp fast olt float %794, 0.000000e+00
  %796 = or i1 %735, %795
  %797 = fcmp fast oge float %794, 1.000000e+00
  %798 = or i1 %797, %796
  %799 = or i1 %739, %798
  %800 = select i1 %799, float 0.000000e+00, float 1.000000e+00
  %801 = fadd fast float %605, -1.040000e+02
  %802 = call float @dx.op.unary.f32(i32 27, float %801)  ; Round_ni(value)
  %803 = fptoui float %802 to i32
  %804 = add i32 %748, %803
  %805 = select i1 %750, i32 857669632, i32 3355443
  %806 = and i32 %804, 31
  %807 = lshr i32 %805, %806
  %808 = and i32 %807, 1
  %809 = uitofp i32 %808 to float
  %810 = fmul fast float %809, %800
  %811 = fadd fast float %793, %810
  %812 = fadd fast float %595, -1.400000e+01
  %813 = fcmp fast olt float %812, 0.000000e+00
  %814 = or i1 %735, %813
  %815 = fcmp fast oge float %812, 1.000000e+00
  %816 = or i1 %815, %814
  %817 = or i1 %739, %816
  %818 = select i1 %817, float 0.000000e+00, float 1.000000e+00
  %819 = fadd fast float %605, -1.120000e+02
  %820 = call float @dx.op.unary.f32(i32 27, float %819)  ; Round_ni(value)
  %821 = fptoui float %820 to i32
  %822 = add i32 %748, %821
  %823 = and i32 %822, 31
  %824 = lshr i32 %787, %823
  %825 = and i32 %824, 1
  %826 = uitofp i32 %825 to float
  %827 = fmul fast float %826, %818
  %828 = fadd fast float %811, %827
  br label %829

; <label>:829                                     ; preds = %592, %590
  %830 = phi float [ %828, %592 ], [ %591, %590 ]
  %831 = call float @dx.op.binary.f32(i32 36, float %830, float 1.000000e+00)  ; FMin(a,b)
  %832 = fsub fast float 5.000000e-01, %182
  %833 = fsub fast float 7.500000e-01, %183
  %834 = fsub fast float 1.000000e+00, %184
  %835 = fmul fast float %831, %832
  %836 = fmul fast float %831, %833
  %837 = fmul fast float %831, %834
  %838 = fadd fast float %835, %182
  %839 = fadd fast float %836, %183
  %840 = fadd fast float %837, %184
  %841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %842 = extractvalue %dx.types.CBufRet.f32 %841, 1
  %843 = extractvalue %dx.types.CBufRet.f32 %7, 1
  %844 = fptosi float %843 to i32
  %845 = icmp eq i32 %844, 0
  br i1 %845, label %846, label %873

; <label>:846                                     ; preds = %829
  %847 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %848 = fmul fast float %847, 0x3FDAAAAAA0000000
  %849 = call float @dx.op.unary.f32(i32 21, float %848)  ; Exp(value)
  %850 = fsub fast float 1.000000e+00, %849
  %851 = call float @dx.op.unary.f32(i32 23, float %850)  ; Log(value)
  %852 = fmul fast float %851, 0x4003333340000000
  %853 = call float @dx.op.unary.f32(i32 21, float %852)  ; Exp(value)
  %854 = fdiv fast float %849, %850
  %855 = fdiv fast float %838, %853
  %856 = fdiv fast float %839, %853
  %857 = fdiv fast float %840, %853
  %858 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %855)  ; FMax(a,b)
  %859 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %856)  ; FMax(a,b)
  %860 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %857)  ; FMax(a,b)
  %861 = call float @dx.op.unary.f32(i32 23, float %858)  ; Log(value)
  %862 = call float @dx.op.unary.f32(i32 23, float %859)  ; Log(value)
  %863 = call float @dx.op.unary.f32(i32 23, float %860)  ; Log(value)
  %864 = fmul fast float %861, 0x3FDAAAAAA0000000
  %865 = fmul fast float %862, 0x3FDAAAAAA0000000
  %866 = fmul fast float %863, 0x3FDAAAAAA0000000
  %867 = call float @dx.op.unary.f32(i32 21, float %864)  ; Exp(value)
  %868 = call float @dx.op.unary.f32(i32 21, float %865)  ; Exp(value)
  %869 = call float @dx.op.unary.f32(i32 21, float %866)  ; Exp(value)
  %870 = fsub fast float %867, %854
  %871 = fsub fast float %868, %854
  %872 = fsub fast float %869, %854
  br label %984

; <label>:873                                     ; preds = %829
  %874 = icmp eq i32 %844, 1
  br i1 %874, label %875, label %922

; <label>:875                                     ; preds = %873
  %876 = fmul fast float %838, 0x3FE413A920000000
  %877 = call float @dx.op.tertiary.f32(i32 46, float 0x3FD5134040000000, float %839, float %876)  ; FMad(a,b,c)
  %878 = call float @dx.op.tertiary.f32(i32 46, float 0x3FA62B6AE0000000, float %840, float %877)  ; FMad(a,b,c)
  %879 = fmul fast float %838, 0x3FB1B089A0000000
  %880 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED6C8B40000000, float %839, float %879)  ; FMad(a,b,c)
  %881 = call float @dx.op.tertiary.f32(i32 46, float 0x3F8758E220000000, float %840, float %880)  ; FMad(a,b,c)
  %882 = fmul fast float %838, 0x3F90CB2960000000
  %883 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB6872B00000000, float %839, float %882)  ; FMad(a,b,c)
  %884 = call float @dx.op.tertiary.f32(i32 46, float 0x3FECA8C160000000, float %840, float %883)  ; FMad(a,b,c)
  %885 = fmul fast float %842, 0x3F1A36E2E0000000
  %886 = fmul fast float %885, %878
  %887 = fmul fast float %885, %881
  %888 = fmul fast float %885, %884
  %889 = call float @dx.op.unary.f32(i32 23, float %886)  ; Log(value)
  %890 = call float @dx.op.unary.f32(i32 23, float %887)  ; Log(value)
  %891 = call float @dx.op.unary.f32(i32 23, float %888)  ; Log(value)
  %892 = fmul fast float %889, 0x3FC4640000000000
  %893 = fmul fast float %890, 0x3FC4640000000000
  %894 = fmul fast float %891, 0x3FC4640000000000
  %895 = call float @dx.op.unary.f32(i32 21, float %892)  ; Exp(value)
  %896 = call float @dx.op.unary.f32(i32 21, float %893)  ; Exp(value)
  %897 = call float @dx.op.unary.f32(i32 21, float %894)  ; Exp(value)
  %898 = fmul fast float %895, 0x4032DA0000000000
  %899 = fmul fast float %896, 0x4032DA0000000000
  %900 = fmul fast float %897, 0x4032DA0000000000
  %901 = fadd fast float %898, 8.359375e-01
  %902 = fadd fast float %899, 8.359375e-01
  %903 = fadd fast float %900, 8.359375e-01
  %904 = fmul fast float %895, 1.868750e+01
  %905 = fmul fast float %896, 1.868750e+01
  %906 = fmul fast float %897, 1.868750e+01
  %907 = fadd fast float %904, 1.000000e+00
  %908 = fadd fast float %905, 1.000000e+00
  %909 = fadd fast float %906, 1.000000e+00
  %910 = fdiv fast float %901, %907
  %911 = fdiv fast float %902, %908
  %912 = fdiv fast float %903, %909
  %913 = call float @dx.op.unary.f32(i32 23, float %910)  ; Log(value)
  %914 = call float @dx.op.unary.f32(i32 23, float %911)  ; Log(value)
  %915 = call float @dx.op.unary.f32(i32 23, float %912)  ; Log(value)
  %916 = fmul fast float %913, 7.884375e+01
  %917 = fmul fast float %914, 7.884375e+01
  %918 = fmul fast float %915, 7.884375e+01
  %919 = call float @dx.op.unary.f32(i32 21, float %916)  ; Exp(value)
  %920 = call float @dx.op.unary.f32(i32 21, float %917)  ; Exp(value)
  %921 = call float @dx.op.unary.f32(i32 21, float %918)  ; Exp(value)
  br label %984

; <label>:922                                     ; preds = %873
  %923 = icmp eq i32 %844, 2
  br i1 %923, label %924, label %984

; <label>:924                                     ; preds = %922
  %925 = fmul fast float %838, 0x3FEA519BC0000000
  %926 = call float @dx.op.tertiary.f32(i32 46, float 0x3FC6B990A0000000, float %839, float %925)  ; FMad(a,b,c)
  %927 = fmul fast float %838, 0x3FA0FED480000000
  %928 = call float @dx.op.tertiary.f32(i32 46, float 0x3FEEF012C0000000, float %839, float %927)  ; FMad(a,b,c)
  %929 = fmul fast float %838, 0x3F917E1C00000000
  %930 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB288A2E0000000, float %839, float %929)  ; FMad(a,b,c)
  %931 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED22FAA0000000, float %840, float %930)  ; FMad(a,b,c)
  %932 = call float @dx.op.binary.f32(i32 35, float %838, float %839)  ; FMax(a,b)
  %933 = call float @dx.op.binary.f32(i32 35, float %932, float %840)  ; FMax(a,b)
  %934 = fadd fast float %933, -1.000000e+00
  %935 = fmul fast float %934, 2.500000e-01
  %936 = call float @dx.op.unary.f32(i32 7, float %935)  ; Saturate(value)
  %937 = fsub fast float 1.000000e+00, %936
  %938 = fmul fast float %937, %926
  %939 = fmul fast float %937, %928
  %940 = fmul fast float %937, %931
  %941 = fmul fast float %936, %838
  %942 = fmul fast float %936, %839
  %943 = fmul fast float %936, %840
  %944 = fadd fast float %938, %941
  %945 = fadd fast float %939, %942
  %946 = fadd fast float %940, %943
  %947 = fmul fast float %842, 0x3F1A36E2E0000000
  %948 = fmul fast float %947, %944
  %949 = fmul fast float %947, %945
  %950 = fmul fast float %947, %946
  %951 = call float @dx.op.unary.f32(i32 23, float %948)  ; Log(value)
  %952 = call float @dx.op.unary.f32(i32 23, float %949)  ; Log(value)
  %953 = call float @dx.op.unary.f32(i32 23, float %950)  ; Log(value)
  %954 = fmul fast float %951, 0x3FC4640000000000
  %955 = fmul fast float %952, 0x3FC4640000000000
  %956 = fmul fast float %953, 0x3FC4640000000000
  %957 = call float @dx.op.unary.f32(i32 21, float %954)  ; Exp(value)
  %958 = call float @dx.op.unary.f32(i32 21, float %955)  ; Exp(value)
  %959 = call float @dx.op.unary.f32(i32 21, float %956)  ; Exp(value)
  %960 = fmul fast float %957, 0x4032DA0000000000
  %961 = fmul fast float %958, 0x4032DA0000000000
  %962 = fmul fast float %959, 0x4032DA0000000000
  %963 = fadd fast float %960, 8.359375e-01
  %964 = fadd fast float %961, 8.359375e-01
  %965 = fadd fast float %962, 8.359375e-01
  %966 = fmul fast float %957, 1.868750e+01
  %967 = fmul fast float %958, 1.868750e+01
  %968 = fmul fast float %959, 1.868750e+01
  %969 = fadd fast float %966, 1.000000e+00
  %970 = fadd fast float %967, 1.000000e+00
  %971 = fadd fast float %968, 1.000000e+00
  %972 = fdiv fast float %963, %969
  %973 = fdiv fast float %964, %970
  %974 = fdiv fast float %965, %971
  %975 = call float @dx.op.unary.f32(i32 23, float %972)  ; Log(value)
  %976 = call float @dx.op.unary.f32(i32 23, float %973)  ; Log(value)
  %977 = call float @dx.op.unary.f32(i32 23, float %974)  ; Log(value)
  %978 = fmul fast float %975, 7.884375e+01
  %979 = fmul fast float %976, 7.884375e+01
  %980 = fmul fast float %977, 7.884375e+01
  %981 = call float @dx.op.unary.f32(i32 21, float %978)  ; Exp(value)
  %982 = call float @dx.op.unary.f32(i32 21, float %979)  ; Exp(value)
  %983 = call float @dx.op.unary.f32(i32 21, float %980)  ; Exp(value)
  br label %984

; <label>:984                                     ; preds = %924, %922, %875, %846
  %985 = phi float [ %870, %846 ], [ %919, %875 ], [ %981, %924 ], [ %838, %922 ]
  %986 = phi float [ %871, %846 ], [ %920, %875 ], [ %982, %924 ], [ %839, %922 ]
  %987 = phi float [ %872, %846 ], [ %921, %875 ], [ %983, %924 ], [ %840, %922 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %985)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %986)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %987)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.viewIdState = !{!12}
!dx.entryPoints = !{!13}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !8, !10}
!5 = !{!6}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{!9}
!9 = !{i32 0, %perObject* undef, !"", i32 0, i32 1, i32 1, i32 48, null}
!10 = !{!11}
!11 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!12 = !{[8 x i32] [i32 6, i32 4, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7]}
!13 = !{void ()* @ps_main, !"ps_main", !14, !4, null}
!14 = !{!15, !20, null}
!15 = !{!16, !18}
!16 = !{i32 0, !"SV_Position", i8 9, i8 3, !17, i8 4, i32 1, i8 4, i32 0, i8 0, null}
!17 = !{i32 0}
!18 = !{i32 1, !"TEXCOORD", i8 9, i8 0, !17, i8 2, i32 1, i8 2, i32 1, i8 0, !19}
!19 = !{i32 3, i32 3}
!20 = !{!21}
!21 = !{i32 0, !"SV_Target", i8 9, i8 16, !17, i8 0, i32 1, i8 4, i32 0, i8 0, !22}
!22 = !{i32 3, i32 15}

