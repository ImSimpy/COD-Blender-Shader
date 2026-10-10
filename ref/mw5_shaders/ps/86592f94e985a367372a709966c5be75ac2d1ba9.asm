;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float       
; COLOR                    0   xyzw        1     NONE   float   xyzw
; TEXCOORD                 0   xy          2     NONE   float   xy  
; TEXCOORD                 7     zw        2     NONE   float     zw
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 145c8ba14d107da10b286c64291c15af
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
; COLOR                    0                 linear       
; TEXCOORD                 0                 linear       
; TEXCOORD                 7                 linear       
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
;   [160 x i8] (type annotation not present)
;
; }
;
; cbuffer 
; {
;
;   [64 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb2     1
;                                   cbuffer      NA          NA     CB1            cb1     1
;                                   sampler      NA          NA      S0             s2     1
;                                   sampler      NA          NA      S1             s3     1
;                                   texture     f32          2d      T0             t0     1
;                                   texture     f32          2d      T1             t1     1
;                                   texture     f32          3d      T2     t71,space2     1
;
;
; ViewId state:
;
; Number of inputs: 12, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 4, 5, 6, 7, 8, 9, 10, 11 }
;   output 1 depends on inputs: { 4, 5, 6, 7, 8, 9, 10, 11 }
;   output 2 depends on inputs: { 4, 5, 6, 7, 8, 9, 10, 11 }
;   output 3 depends on inputs: { 7, 8, 9 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%perObject = type { <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 71, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %9 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %10 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %11 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %12 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %13 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %14 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %15 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %16 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3, i32 0)  ; GetDimensions(handle,mipLevel)
  %17 = extractvalue %dx.types.Dimensions %16, 0
  %18 = sitofp i32 %17 to float
  %19 = extractvalue %dx.types.Dimensions %16, 1
  %20 = sitofp i32 %19 to float
  %21 = fdiv fast float 5.000000e-01, %18
  %22 = fdiv fast float 5.000000e-01, %20
  %23 = fsub fast float 1.000000e+00, %21
  %24 = call float @dx.op.binary.f32(i32 35, float %10, float %21)  ; FMax(a,b)
  %25 = call float @dx.op.binary.f32(i32 36, float %24, float %23)  ; FMin(a,b)
  %26 = fsub fast float 1.000000e+00, %22
  %27 = call float @dx.op.binary.f32(i32 35, float %11, float %22)  ; FMax(a,b)
  %28 = call float @dx.op.binary.f32(i32 36, float %27, float %26)  ; FMin(a,b)
  %29 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %30 = extractvalue %dx.types.CBufRet.f32 %29, 3
  %31 = bitcast float %30 to i32
  %32 = and i32 %31, 1
  %33 = icmp ne i32 %32, 0
  %34 = select i1 %33, float %25, float %10
  %35 = and i32 %31, 2
  %36 = icmp ne i32 %35, 0
  %37 = select i1 %36, float %28, float %11
  %38 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %39 = extractvalue %dx.types.CBufRet.f32 %38, 2
  %40 = fadd fast float %39, -2.000000e+00
  %41 = call float @dx.op.unary.f32(i32 6, float %40)  ; FAbs(value)
  %42 = fcmp fast olt float %41, 0x3F1A36E2E0000000
  %43 = fmul fast float %34, 2.000000e+00
  %44 = fmul fast float %37, 2.000000e+00
  %45 = fadd fast float %43, -1.000000e+00
  %46 = fadd fast float %44, -1.000000e+00
  %47 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %48 = call float @dx.op.unary.f32(i32 6, float %46)  ; FAbs(value)
  %49 = extractvalue %dx.types.CBufRet.f32 %38, 0
  %50 = extractvalue %dx.types.CBufRet.f32 %38, 1
  %51 = extractvalue %dx.types.CBufRet.f32 %38, 3
  %52 = fsub fast float %50, %49
  %53 = fcmp fast ogt float %51, 1.000000e+00
  %54 = fdiv fast float 1.000000e+00, %51
  %55 = fmul fast float %52, %54
  %56 = select i1 %53, float %55, float %52
  %57 = fmul fast float %52, %51
  %58 = select i1 %53, float %52, float %57
  %59 = fsub fast float %50, %56
  %60 = fcmp fast ogt float %47, %59
  %61 = fsub fast float %50, %58
  %62 = fcmp fast ogt float %48, %61
  %63 = or i1 %60, %62
  %64 = select i1 %63, float 1.000000e+00, float 0.000000e+00
  %65 = call float @dx.op.dot2.f32(i32 54, float %45, float %46, float %45, float %46)  ; Dot2(ax,ay,bx,by)
  %66 = call float @dx.op.unary.f32(i32 24, float %65)  ; Sqrt(value)
  %67 = fsub fast float %66, %49
  %68 = fdiv fast float %67, %52
  %69 = call float @dx.op.unary.f32(i32 7, float %68)  ; Saturate(value)
  %70 = fmul fast float %69, 2.000000e+00
  %71 = fsub fast float 3.000000e+00, %70
  %72 = fmul fast float %69, %69
  %73 = fmul fast float %72, 2.000000e+00
  %74 = fmul fast float %73, %71
  %75 = fadd fast float %74, -1.000000e+00
  %76 = call float @dx.op.unary.f32(i32 6, float %75)  ; FAbs(value)
  %77 = fsub fast float 1.000000e+00, %76
  %78 = select i1 %42, float %64, float %77
  %79 = fmul fast float %78, %15
  %80 = call float @dx.op.binary.f32(i32 35, float %79, float 0.000000e+00)  ; FMax(a,b)
  %81 = fcmp fast oeq float %80, 0.000000e+00
  br i1 %81, label %82, label %83, !dx.controlflow.hints !30

; <label>:82                                      ; preds = %0
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %83

; <label>:83                                      ; preds = %82, %0
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %84 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %4, float %8, float %9, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %85 = extractvalue %dx.types.ResRet.f32 %84, 0
  %86 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %87 = extractvalue %dx.types.CBufRet.f32 %86, 3
  %88 = bitcast float %87 to i32
  %89 = and i32 %88, 65535
  %90 = call float @dx.op.legacyF16ToF32(i32 131, i32 %89)  ; LegacyF16ToF32(value)
  %91 = fcmp fast une float %90, 0.000000e+00
  %92 = select i1 %91, float 0.000000e+00, float 1.000000e+00
  %93 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %94 = extractvalue %dx.types.CBufRet.f32 %93, 3
  %95 = fmul fast float %94, %85
  %96 = fmul fast float %95, %92
  %97 = fsub fast float 1.000000e+00, %96
  %98 = fmul fast float %97, %12
  %99 = fmul fast float %97, %13
  %100 = fmul fast float %97, %14
  %101 = extractvalue %dx.types.CBufRet.f32 %93, 0
  %102 = extractvalue %dx.types.CBufRet.f32 %93, 1
  %103 = extractvalue %dx.types.CBufRet.f32 %93, 2
  %104 = fmul fast float %101, %95
  %105 = fmul fast float %102, %95
  %106 = fmul fast float %103, %95
  %107 = fadd fast float %98, %104
  %108 = fadd fast float %99, %105
  %109 = fadd fast float %100, %106
  %110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %111 = extractvalue %dx.types.CBufRet.f32 %110, 0
  %112 = bitcast float %111 to i32
  %113 = and i32 %112, 128
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %129, label %115

; <label>:115                                     ; preds = %83
  %116 = call float @dx.op.unary.f32(i32 24, float %107)  ; Sqrt(value)
  %117 = call float @dx.op.unary.f32(i32 24, float %108)  ; Sqrt(value)
  %118 = call float @dx.op.unary.f32(i32 24, float %109)  ; Sqrt(value)
  %119 = fmul fast float %116, 9.687500e-01
  %120 = fmul fast float %117, 9.687500e-01
  %121 = fmul fast float %118, 9.687500e-01
  %122 = fadd fast float %119, 1.562500e-02
  %123 = fadd fast float %120, 1.562500e-02
  %124 = fadd fast float %121, 1.562500e-02
  %125 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %5, float %122, float %123, float %124, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %126 = extractvalue %dx.types.ResRet.f32 %125, 0
  %127 = extractvalue %dx.types.ResRet.f32 %125, 1
  %128 = extractvalue %dx.types.ResRet.f32 %125, 2
  br label %416

; <label>:129                                     ; preds = %83
  %130 = and i32 %112, 127
  switch i32 %130, label %416 [
    i32 1, label %131
    i32 2, label %131
    i32 0, label %131
    i32 3, label %161
    i32 4, label %282
  ]

; <label>:131                                     ; preds = %129, %129, %129
  %132 = call float @dx.op.unary.f32(i32 7, float %107)  ; Saturate(value)
  %133 = call float @dx.op.unary.f32(i32 7, float %108)  ; Saturate(value)
  %134 = call float @dx.op.unary.f32(i32 7, float %109)  ; Saturate(value)
  %135 = call float @dx.op.unary.f32(i32 23, float %132)  ; Log(value)
  %136 = call float @dx.op.unary.f32(i32 23, float %133)  ; Log(value)
  %137 = call float @dx.op.unary.f32(i32 23, float %134)  ; Log(value)
  %138 = fmul fast float %135, 0x3FDAAAAAA0000000
  %139 = fmul fast float %136, 0x3FDAAAAAA0000000
  %140 = fmul fast float %137, 0x3FDAAAAAA0000000
  %141 = call float @dx.op.unary.f32(i32 21, float %138)  ; Exp(value)
  %142 = call float @dx.op.unary.f32(i32 21, float %139)  ; Exp(value)
  %143 = call float @dx.op.unary.f32(i32 21, float %140)  ; Exp(value)
  %144 = fmul fast float %141, 0x3FF0E147A0000000
  %145 = fmul fast float %142, 0x3FF0E147A0000000
  %146 = fmul fast float %143, 0x3FF0E147A0000000
  %147 = fadd fast float %144, 0xBFAC28F5C0000000
  %148 = fadd fast float %145, 0xBFAC28F5C0000000
  %149 = fadd fast float %146, 0xBFAC28F5C0000000
  %150 = call float @dx.op.unary.f32(i32 7, float %147)  ; Saturate(value)
  %151 = call float @dx.op.unary.f32(i32 7, float %148)  ; Saturate(value)
  %152 = call float @dx.op.unary.f32(i32 7, float %149)  ; Saturate(value)
  %153 = extractvalue %dx.types.CBufRet.f32 %110, 2
  %154 = extractvalue %dx.types.CBufRet.f32 %110, 3
  %155 = fmul fast float %153, %150
  %156 = fmul fast float %153, %151
  %157 = fmul fast float %153, %152
  %158 = fadd fast float %155, %154
  %159 = fadd fast float %156, %154
  %160 = fadd fast float %157, %154
  br label %416

; <label>:161                                     ; preds = %129
  %162 = fmul fast float %107, 0x4163D57C00000000
  %163 = fmul fast float %108, 0x4163D57C00000000
  %164 = fmul fast float %109, 0x4163D57C00000000
  %165 = fadd fast float %162, 9.999980e+05
  %166 = fadd fast float %163, 9.999980e+05
  %167 = fadd fast float %164, 9.999980e+05
  %168 = fmul fast float %165, %107
  %169 = fmul fast float %166, %108
  %170 = fmul fast float %167, %109
  %171 = fadd fast float %168, 0xC0AFE17A60000000
  %172 = fadd fast float %169, 0xC0AFE17A60000000
  %173 = fadd fast float %170, 0xC0AFE17A60000000
  %174 = fmul fast float %171, %107
  %175 = fmul fast float %172, %108
  %176 = fmul fast float %173, %109
  %177 = fmul fast float %107, 0x40F753C340000000
  %178 = fmul fast float %108, 0x40F753C340000000
  %179 = fmul fast float %109, 0x40F753C340000000
  %180 = fsub fast float 9.999990e+06, %177
  %181 = fsub fast float 9.999990e+06, %178
  %182 = fsub fast float 9.999990e+06, %179
  %183 = fmul fast float %180, %107
  %184 = fmul fast float %181, %108
  %185 = fmul fast float %182, %109
  %186 = fadd fast float %183, 0x4136D1DD80000000
  %187 = fadd fast float %184, 0x4136D1DD80000000
  %188 = fadd fast float %185, 0x4136D1DD80000000
  %189 = fmul fast float %186, %107
  %190 = fmul fast float %187, %108
  %191 = fmul fast float %188, %109
  %192 = fadd fast float %189, 1.000000e+00
  %193 = fadd fast float %190, 1.000000e+00
  %194 = fadd fast float %191, 1.000000e+00
  %195 = fdiv fast float %174, %192
  %196 = fdiv fast float %175, %193
  %197 = fdiv fast float %176, %194
  %198 = call float @dx.op.unary.f32(i32 7, float %195)  ; Saturate(value)
  %199 = call float @dx.op.unary.f32(i32 7, float %196)  ; Saturate(value)
  %200 = call float @dx.op.unary.f32(i32 7, float %197)  ; Saturate(value)
  %201 = extractvalue %dx.types.CBufRet.f32 %110, 1
  %202 = fmul fast float %198, 0x3FE413A920000000
  %203 = call float @dx.op.tertiary.f32(i32 46, float 0x3FD5134040000000, float %199, float %202)  ; FMad(a,b,c)
  %204 = call float @dx.op.tertiary.f32(i32 46, float 0x3FA62B6AE0000000, float %200, float %203)  ; FMad(a,b,c)
  %205 = fmul fast float %198, 0x3FB1B089A0000000
  %206 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED6C8B40000000, float %199, float %205)  ; FMad(a,b,c)
  %207 = call float @dx.op.tertiary.f32(i32 46, float 0x3F8758E220000000, float %200, float %206)  ; FMad(a,b,c)
  %208 = fmul fast float %198, 0x3F90CB2960000000
  %209 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB6872B00000000, float %199, float %208)  ; FMad(a,b,c)
  %210 = call float @dx.op.tertiary.f32(i32 46, float 0x3FECA8C160000000, float %200, float %209)  ; FMad(a,b,c)
  %211 = fmul fast float %204, %201
  %212 = fmul fast float %207, %201
  %213 = fmul fast float %210, %201
  %214 = fmul fast float %211, 0x3F847AE140000000
  %215 = fmul fast float %212, 0x3F847AE140000000
  %216 = fmul fast float %213, 0x3F847AE140000000
  %217 = fmul fast float %211, 0x40B4D2F520000000
  %218 = fmul fast float %212, 0x40B4D2F520000000
  %219 = fmul fast float %213, 0x40B4D2F520000000
  %220 = fadd fast float %217, 0x41869ECF20000000
  %221 = fadd fast float %218, 0x41869ECF20000000
  %222 = fadd fast float %219, 0x41869ECF20000000
  %223 = fmul fast float %220, %214
  %224 = fmul fast float %221, %215
  %225 = fmul fast float %222, %216
  %226 = fadd fast float %223, 0x417BB79C60000000
  %227 = fadd fast float %224, 0x417BB79C60000000
  %228 = fadd fast float %225, 0x417BB79C60000000
  %229 = fmul fast float %226, %214
  %230 = fmul fast float %227, %215
  %231 = fmul fast float %228, %216
  %232 = fadd fast float %229, 0x41218DE180000000
  %233 = fadd fast float %230, 0x41218DE180000000
  %234 = fadd fast float %231, 0x41218DE180000000
  %235 = fmul fast float %232, %214
  %236 = fmul fast float %233, %215
  %237 = fmul fast float %234, %216
  %238 = fadd fast float %235, 0x4077F174E0000000
  %239 = fadd fast float %236, 0x4077F174E0000000
  %240 = fadd fast float %237, 0x4077F174E0000000
  %241 = fmul fast float %238, %214
  %242 = fmul fast float %239, %215
  %243 = fmul fast float %240, %216
  %244 = fadd fast float %241, 0x3F3FF79B80000000
  %245 = fadd fast float %242, 0x3F3FF79B80000000
  %246 = fadd fast float %243, 0x3F3FF79B80000000
  %247 = fmul fast float %211, 0x412442D320000000
  %248 = fmul fast float %212, 0x412442D320000000
  %249 = fmul fast float %213, 0x412442D320000000
  %250 = fadd fast float %247, 0x419385D5C0000000
  %251 = fadd fast float %248, 0x419385D5C0000000
  %252 = fadd fast float %249, 0x419385D5C0000000
  %253 = fmul fast float %250, %214
  %254 = fmul fast float %251, %215
  %255 = fmul fast float %252, %216
  %256 = fadd fast float %253, 4.182885e+06
  %257 = fadd fast float %254, 4.182885e+06
  %258 = fadd fast float %255, 4.182885e+06
  %259 = fmul fast float %256, %214
  %260 = fmul fast float %257, %215
  %261 = fmul fast float %258, %216
  %262 = fadd fast float %259, 0x40C4D633C0000000
  %263 = fadd fast float %260, 0x40C4D633C0000000
  %264 = fadd fast float %261, 0x40C4D633C0000000
  %265 = fmul fast float %262, %214
  %266 = fmul fast float %263, %215
  %267 = fmul fast float %264, %216
  %268 = fadd fast float %265, 1.000000e+00
  %269 = fadd fast float %266, 1.000000e+00
  %270 = fadd fast float %267, 1.000000e+00
  %271 = fdiv fast float %244, %268
  %272 = fdiv fast float %245, %269
  %273 = fdiv fast float %246, %270
  %274 = extractvalue %dx.types.CBufRet.f32 %110, 2
  %275 = extractvalue %dx.types.CBufRet.f32 %110, 3
  %276 = fmul fast float %274, %271
  %277 = fmul fast float %274, %272
  %278 = fmul fast float %274, %273
  %279 = fadd fast float %276, %275
  %280 = fadd fast float %277, %275
  %281 = fadd fast float %278, %275
  br label %416

; <label>:282                                     ; preds = %129
  %283 = fmul fast float %107, 0x4163D57C00000000
  %284 = fmul fast float %108, 0x4163D57C00000000
  %285 = fmul fast float %109, 0x4163D57C00000000
  %286 = fadd fast float %283, 9.999980e+05
  %287 = fadd fast float %284, 9.999980e+05
  %288 = fadd fast float %285, 9.999980e+05
  %289 = fmul fast float %286, %107
  %290 = fmul fast float %287, %108
  %291 = fmul fast float %288, %109
  %292 = fadd fast float %289, 0xC0AFE17A60000000
  %293 = fadd fast float %290, 0xC0AFE17A60000000
  %294 = fadd fast float %291, 0xC0AFE17A60000000
  %295 = fmul fast float %292, %107
  %296 = fmul fast float %293, %108
  %297 = fmul fast float %294, %109
  %298 = fmul fast float %107, 0x40F753C340000000
  %299 = fmul fast float %108, 0x40F753C340000000
  %300 = fmul fast float %109, 0x40F753C340000000
  %301 = fsub fast float 9.999990e+06, %298
  %302 = fsub fast float 9.999990e+06, %299
  %303 = fsub fast float 9.999990e+06, %300
  %304 = fmul fast float %301, %107
  %305 = fmul fast float %302, %108
  %306 = fmul fast float %303, %109
  %307 = fadd fast float %304, 0x4136D1DD80000000
  %308 = fadd fast float %305, 0x4136D1DD80000000
  %309 = fadd fast float %306, 0x4136D1DD80000000
  %310 = fmul fast float %307, %107
  %311 = fmul fast float %308, %108
  %312 = fmul fast float %309, %109
  %313 = fadd fast float %310, 1.000000e+00
  %314 = fadd fast float %311, 1.000000e+00
  %315 = fadd fast float %312, 1.000000e+00
  %316 = fdiv fast float %295, %313
  %317 = fdiv fast float %296, %314
  %318 = fdiv fast float %297, %315
  %319 = call float @dx.op.unary.f32(i32 7, float %316)  ; Saturate(value)
  %320 = call float @dx.op.unary.f32(i32 7, float %317)  ; Saturate(value)
  %321 = call float @dx.op.unary.f32(i32 7, float %318)  ; Saturate(value)
  %322 = extractvalue %dx.types.CBufRet.f32 %110, 1
  %323 = fmul fast float %319, 0x3FEA519BC0000000
  %324 = call float @dx.op.tertiary.f32(i32 46, float 0x3FC6B990A0000000, float %320, float %323)  ; FMad(a,b,c)
  %325 = fmul fast float %319, 0x3FA0FED480000000
  %326 = call float @dx.op.tertiary.f32(i32 46, float 0x3FEEF012C0000000, float %320, float %325)  ; FMad(a,b,c)
  %327 = fmul fast float %319, 0x3F917E1C00000000
  %328 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB288A2E0000000, float %320, float %327)  ; FMad(a,b,c)
  %329 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED22FAA0000000, float %321, float %328)  ; FMad(a,b,c)
  %330 = call float @dx.op.binary.f32(i32 35, float %319, float %320)  ; FMax(a,b)
  %331 = call float @dx.op.binary.f32(i32 35, float %330, float %321)  ; FMax(a,b)
  %332 = fadd fast float %331, -1.000000e+00
  %333 = fmul fast float %332, 2.500000e-01
  %334 = call float @dx.op.unary.f32(i32 7, float %333)  ; Saturate(value)
  %335 = fsub fast float 1.000000e+00, %334
  %336 = fmul fast float %335, %324
  %337 = fmul fast float %335, %326
  %338 = fmul fast float %335, %329
  %339 = fmul fast float %334, %319
  %340 = fmul fast float %334, %320
  %341 = fmul fast float %334, %321
  %342 = fadd fast float %336, %339
  %343 = fadd fast float %337, %340
  %344 = fadd fast float %338, %341
  %345 = fmul fast float %342, %322
  %346 = fmul fast float %343, %322
  %347 = fmul fast float %344, %322
  %348 = fmul fast float %345, 0x3F847AE140000000
  %349 = fmul fast float %346, 0x3F847AE140000000
  %350 = fmul fast float %347, 0x3F847AE140000000
  %351 = fmul fast float %345, 0x40B4D2F520000000
  %352 = fmul fast float %346, 0x40B4D2F520000000
  %353 = fmul fast float %347, 0x40B4D2F520000000
  %354 = fadd fast float %351, 0x41869ECF20000000
  %355 = fadd fast float %352, 0x41869ECF20000000
  %356 = fadd fast float %353, 0x41869ECF20000000
  %357 = fmul fast float %354, %348
  %358 = fmul fast float %355, %349
  %359 = fmul fast float %356, %350
  %360 = fadd fast float %357, 0x417BB79C60000000
  %361 = fadd fast float %358, 0x417BB79C60000000
  %362 = fadd fast float %359, 0x417BB79C60000000
  %363 = fmul fast float %360, %348
  %364 = fmul fast float %361, %349
  %365 = fmul fast float %362, %350
  %366 = fadd fast float %363, 0x41218DE180000000
  %367 = fadd fast float %364, 0x41218DE180000000
  %368 = fadd fast float %365, 0x41218DE180000000
  %369 = fmul fast float %366, %348
  %370 = fmul fast float %367, %349
  %371 = fmul fast float %368, %350
  %372 = fadd fast float %369, 0x4077F174E0000000
  %373 = fadd fast float %370, 0x4077F174E0000000
  %374 = fadd fast float %371, 0x4077F174E0000000
  %375 = fmul fast float %372, %348
  %376 = fmul fast float %373, %349
  %377 = fmul fast float %374, %350
  %378 = fadd fast float %375, 0x3F3FF79B80000000
  %379 = fadd fast float %376, 0x3F3FF79B80000000
  %380 = fadd fast float %377, 0x3F3FF79B80000000
  %381 = fmul fast float %345, 0x412442D320000000
  %382 = fmul fast float %346, 0x412442D320000000
  %383 = fmul fast float %347, 0x412442D320000000
  %384 = fadd fast float %381, 0x419385D5C0000000
  %385 = fadd fast float %382, 0x419385D5C0000000
  %386 = fadd fast float %383, 0x419385D5C0000000
  %387 = fmul fast float %384, %348
  %388 = fmul fast float %385, %349
  %389 = fmul fast float %386, %350
  %390 = fadd fast float %387, 4.182885e+06
  %391 = fadd fast float %388, 4.182885e+06
  %392 = fadd fast float %389, 4.182885e+06
  %393 = fmul fast float %390, %348
  %394 = fmul fast float %391, %349
  %395 = fmul fast float %392, %350
  %396 = fadd fast float %393, 0x40C4D633C0000000
  %397 = fadd fast float %394, 0x40C4D633C0000000
  %398 = fadd fast float %395, 0x40C4D633C0000000
  %399 = fmul fast float %396, %348
  %400 = fmul fast float %397, %349
  %401 = fmul fast float %398, %350
  %402 = fadd fast float %399, 1.000000e+00
  %403 = fadd fast float %400, 1.000000e+00
  %404 = fadd fast float %401, 1.000000e+00
  %405 = fdiv fast float %378, %402
  %406 = fdiv fast float %379, %403
  %407 = fdiv fast float %380, %404
  %408 = extractvalue %dx.types.CBufRet.f32 %110, 2
  %409 = extractvalue %dx.types.CBufRet.f32 %110, 3
  %410 = fmul fast float %408, %405
  %411 = fmul fast float %408, %406
  %412 = fmul fast float %408, %407
  %413 = fadd fast float %410, %409
  %414 = fadd fast float %411, %409
  %415 = fadd fast float %412, %409
  br label %416

; <label>:416                                     ; preds = %282, %161, %131, %129, %115
  %417 = phi float [ %126, %115 ], [ %107, %129 ], [ %413, %282 ], [ %279, %161 ], [ %158, %131 ]
  %418 = phi float [ %127, %115 ], [ %108, %129 ], [ %414, %282 ], [ %280, %161 ], [ %159, %131 ]
  %419 = phi float [ %128, %115 ], [ %109, %129 ], [ %415, %282 ], [ %281, %161 ], [ %160, %131 ]
  %420 = fmul fast float %417, %80
  %421 = fmul fast float %418, %80
  %422 = fmul fast float %419, %80
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %420)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %421)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %422)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %80)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind
declare void @dx.op.discard(i32, i1) #1

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

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
!dx.viewIdState = !{!16}
!dx.entryPoints = !{!17}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !10, !13}
!5 = !{!6, !8, !9}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 71, i32 1, i32 4, i32 0, !7}
!10 = !{!11, !12}
!11 = !{i32 0, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 160, null}
!12 = !{i32 1, %perObject* undef, !"", i32 0, i32 1, i32 1, i32 64, null}
!13 = !{!14, !15}
!14 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!15 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!16 = !{[14 x i32] [i32 12, i32 4, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 7, i32 15, i32 15, i32 15, i32 7, i32 7]}
!17 = !{void ()* @ps_main, !"ps_main", !18, !4, null}
!18 = !{!19, !28, null}
!19 = !{!20, !22, !24, !26}
!20 = !{i32 0, !"SV_Position", i8 9, i8 3, !21, i8 4, i32 1, i8 4, i32 0, i8 0, null}
!21 = !{i32 0}
!22 = !{i32 1, !"COLOR", i8 9, i8 0, !21, i8 2, i32 1, i8 4, i32 1, i8 0, !23}
!23 = !{i32 3, i32 15}
!24 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !21, i8 2, i32 1, i8 2, i32 2, i8 0, !25}
!25 = !{i32 3, i32 3}
!26 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !27, i8 2, i32 1, i8 2, i32 2, i8 2, !25}
!27 = !{i32 7}
!28 = !{!29}
!29 = !{i32 0, !"SV_Target", i8 9, i8 16, !21, i8 0, i32 1, i8 4, i32 0, i8 0, !23}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 1}

