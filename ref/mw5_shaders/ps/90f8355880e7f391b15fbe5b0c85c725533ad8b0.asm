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
; shader hash: 72528086a370202ee7070b52a00cc57b
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
;   [96 x i8] (type annotation not present)
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
;                                   texture     f32          2d      T0     t76,space2     1
;                                   texture     f32          2d      T1             t0     1
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
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%perObject = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 71, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 76, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
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
  %16 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %5, float %10, float %11, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %17 = extractvalue %dx.types.ResRet.f32 %16, 3
  %18 = fmul fast float %17, 2.000000e+00
  %19 = fadd fast float %18, -1.000000e+00
  %20 = call float @dx.op.unary.f32(i32 83, float %19)  ; DerivCoarseX(value)
  %21 = call float @dx.op.unary.f32(i32 84, float %19)  ; DerivCoarseY(value)
  %22 = fmul fast float %20, %20
  %23 = fmul fast float %21, %21
  %24 = fadd fast float %23, %22
  %25 = call float @dx.op.unary.f32(i32 24, float %24)  ; Sqrt(value)
  %26 = fmul fast float %25, 2.000000e+00
  %27 = fadd fast float %25, %19
  %28 = fdiv fast float %27, %26
  %29 = call float @dx.op.unary.f32(i32 7, float %28)  ; Saturate(value)
  %30 = fmul fast float %29, 2.000000e+00
  %31 = fsub fast float 3.000000e+00, %30
  %32 = fmul fast float %29, %29
  %33 = fmul fast float %32, %31
  %34 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %35 = extractvalue %dx.types.CBufRet.f32 %34, 0
  %36 = extractvalue %dx.types.CBufRet.f32 %34, 1
  %37 = extractvalue %dx.types.CBufRet.f32 %34, 2
  %38 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %39 = extractvalue %dx.types.CBufRet.f32 %38, 0
  %40 = extractvalue %dx.types.CBufRet.f32 %38, 1
  %41 = extractvalue %dx.types.CBufRet.f32 %38, 2
  %42 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %43 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %44 = extractvalue %dx.types.CBufRet.f32 %43, 0
  %45 = extractvalue %dx.types.CBufRet.f32 %43, 1
  %46 = fcmp fast une float %44, %45
  br i1 %46, label %47, label %64

; <label>:47                                      ; preds = %0
  %48 = extractvalue %dx.types.CBufRet.f32 %42, 0
  %49 = fadd fast float %48, %10
  %50 = extractvalue %dx.types.CBufRet.f32 %42, 1
  %51 = fadd fast float %50, %11
  %52 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %5, float %49, float %51, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %53 = extractvalue %dx.types.ResRet.f32 %52, 3
  %54 = fmul fast float %53, 2.000000e+00
  %55 = fadd fast float %54, -1.000000e+00
  %56 = fsub fast float %45, %44
  %57 = fsub fast float %55, %44
  %58 = fdiv fast float %57, %56
  %59 = call float @dx.op.unary.f32(i32 7, float %58)  ; Saturate(value)
  %60 = fmul fast float %59, 2.000000e+00
  %61 = fsub fast float 3.000000e+00, %60
  %62 = fmul fast float %59, %59
  %63 = fmul fast float %62, %61
  br label %64

; <label>:64                                      ; preds = %47, %0
  %65 = phi float [ %63, %47 ], [ 0.000000e+00, %0 ]
  %66 = extractvalue %dx.types.CBufRet.f32 %43, 2
  %67 = extractvalue %dx.types.CBufRet.f32 %43, 3
  %68 = fcmp fast une float %66, %67
  br i1 %68, label %69, label %78

; <label>:69                                      ; preds = %64
  %70 = fsub fast float %67, %66
  %71 = fsub fast float %19, %66
  %72 = fdiv fast float %71, %70
  %73 = call float @dx.op.unary.f32(i32 7, float %72)  ; Saturate(value)
  %74 = fmul fast float %73, 2.000000e+00
  %75 = fsub fast float 3.000000e+00, %74
  %76 = fmul fast float %73, %73
  %77 = fmul fast float %76, %75
  br label %78

; <label>:78                                      ; preds = %69, %64
  %79 = phi float [ %77, %69 ], [ 0.000000e+00, %64 ]
  %80 = fsub fast float %39, %35
  %81 = fsub fast float %40, %36
  %82 = fsub fast float %41, %37
  %83 = fmul fast float %79, %80
  %84 = fmul fast float %79, %81
  %85 = fmul fast float %79, %82
  %86 = fadd fast float %83, %35
  %87 = fadd fast float %84, %36
  %88 = fadd fast float %85, %37
  %89 = fsub fast float %12, %86
  %90 = fsub fast float %13, %87
  %91 = fsub fast float %14, %88
  %92 = fmul fast float %89, %33
  %93 = fmul fast float %90, %33
  %94 = fmul fast float %91, %33
  %95 = fadd fast float %92, %86
  %96 = fadd fast float %93, %87
  %97 = fadd fast float %94, %88
  %98 = fsub fast float %79, %65
  %99 = fmul fast float %98, %79
  %100 = fadd fast float %99, %65
  %101 = fsub fast float %33, %100
  %102 = fmul fast float %101, %33
  %103 = fadd fast float %102, %100
  %104 = fmul fast float %103, %15
  %105 = fcmp fast ole float %95, 0x3FA4B5DCC0000000
  %106 = fmul fast float %95, 0x3FB3D07220000000
  %107 = fadd fast float %95, 0x3FAC28F5C0000000
  %108 = fmul fast float %107, 0x3FEE54EDE0000000
  %109 = call float @dx.op.unary.f32(i32 23, float %108)  ; Log(value)
  %110 = fmul fast float %109, 0x4003333340000000
  %111 = call float @dx.op.unary.f32(i32 21, float %110)  ; Exp(value)
  %112 = select i1 %105, float %106, float %111
  %113 = fcmp fast ole float %96, 0x3FA4B5DCC0000000
  %114 = fmul fast float %96, 0x3FB3D07220000000
  %115 = fadd fast float %96, 0x3FAC28F5C0000000
  %116 = fmul fast float %115, 0x3FEE54EDE0000000
  %117 = call float @dx.op.unary.f32(i32 23, float %116)  ; Log(value)
  %118 = fmul fast float %117, 0x4003333340000000
  %119 = call float @dx.op.unary.f32(i32 21, float %118)  ; Exp(value)
  %120 = select i1 %113, float %114, float %119
  %121 = fcmp fast ole float %97, 0x3FA4B5DCC0000000
  %122 = fmul fast float %97, 0x3FB3D07220000000
  %123 = fadd fast float %97, 0x3FAC28F5C0000000
  %124 = fmul fast float %123, 0x3FEE54EDE0000000
  %125 = call float @dx.op.unary.f32(i32 23, float %124)  ; Log(value)
  %126 = fmul fast float %125, 0x4003333340000000
  %127 = call float @dx.op.unary.f32(i32 21, float %126)  ; Exp(value)
  %128 = select i1 %121, float %122, float %127
  %129 = call float @dx.op.binary.f32(i32 35, float %104, float 0.000000e+00)  ; FMax(a,b)
  %130 = fcmp fast oeq float %129, 0.000000e+00
  br i1 %130, label %131, label %132, !dx.controlflow.hints !30

; <label>:131                                     ; preds = %78
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %132

; <label>:132                                     ; preds = %131, %78
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %133 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %4, float %8, float %9, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %134 = extractvalue %dx.types.ResRet.f32 %133, 0
  %135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %136 = extractvalue %dx.types.CBufRet.f32 %135, 3
  %137 = bitcast float %136 to i32
  %138 = and i32 %137, 65535
  %139 = call float @dx.op.legacyF16ToF32(i32 131, i32 %138)  ; LegacyF16ToF32(value)
  %140 = fcmp fast une float %139, 0.000000e+00
  %141 = select i1 %140, float 0.000000e+00, float 1.000000e+00
  %142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %143 = extractvalue %dx.types.CBufRet.f32 %142, 3
  %144 = fmul fast float %143, %134
  %145 = fmul fast float %144, %141
  %146 = fsub fast float 1.000000e+00, %145
  %147 = fmul fast float %146, %112
  %148 = fmul fast float %146, %120
  %149 = fmul fast float %146, %128
  %150 = extractvalue %dx.types.CBufRet.f32 %142, 0
  %151 = extractvalue %dx.types.CBufRet.f32 %142, 1
  %152 = extractvalue %dx.types.CBufRet.f32 %142, 2
  %153 = fmul fast float %150, %144
  %154 = fmul fast float %151, %144
  %155 = fmul fast float %152, %144
  %156 = fadd fast float %147, %153
  %157 = fadd fast float %148, %154
  %158 = fadd fast float %149, %155
  %159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %160 = extractvalue %dx.types.CBufRet.f32 %159, 0
  %161 = bitcast float %160 to i32
  %162 = and i32 %161, 128
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %178, label %164

; <label>:164                                     ; preds = %132
  %165 = call float @dx.op.unary.f32(i32 24, float %156)  ; Sqrt(value)
  %166 = call float @dx.op.unary.f32(i32 24, float %157)  ; Sqrt(value)
  %167 = call float @dx.op.unary.f32(i32 24, float %158)  ; Sqrt(value)
  %168 = fmul fast float %165, 9.687500e-01
  %169 = fmul fast float %166, 9.687500e-01
  %170 = fmul fast float %167, 9.687500e-01
  %171 = fadd fast float %168, 1.562500e-02
  %172 = fadd fast float %169, 1.562500e-02
  %173 = fadd fast float %170, 1.562500e-02
  %174 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %5, float %171, float %172, float %173, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %175 = extractvalue %dx.types.ResRet.f32 %174, 0
  %176 = extractvalue %dx.types.ResRet.f32 %174, 1
  %177 = extractvalue %dx.types.ResRet.f32 %174, 2
  br label %465

; <label>:178                                     ; preds = %132
  %179 = and i32 %161, 127
  switch i32 %179, label %465 [
    i32 1, label %180
    i32 2, label %180
    i32 0, label %180
    i32 3, label %210
    i32 4, label %331
  ]

; <label>:180                                     ; preds = %178, %178, %178
  %181 = call float @dx.op.unary.f32(i32 7, float %156)  ; Saturate(value)
  %182 = call float @dx.op.unary.f32(i32 7, float %157)  ; Saturate(value)
  %183 = call float @dx.op.unary.f32(i32 7, float %158)  ; Saturate(value)
  %184 = call float @dx.op.unary.f32(i32 23, float %181)  ; Log(value)
  %185 = call float @dx.op.unary.f32(i32 23, float %182)  ; Log(value)
  %186 = call float @dx.op.unary.f32(i32 23, float %183)  ; Log(value)
  %187 = fmul fast float %184, 0x3FDAAAAAA0000000
  %188 = fmul fast float %185, 0x3FDAAAAAA0000000
  %189 = fmul fast float %186, 0x3FDAAAAAA0000000
  %190 = call float @dx.op.unary.f32(i32 21, float %187)  ; Exp(value)
  %191 = call float @dx.op.unary.f32(i32 21, float %188)  ; Exp(value)
  %192 = call float @dx.op.unary.f32(i32 21, float %189)  ; Exp(value)
  %193 = fmul fast float %190, 0x3FF0E147A0000000
  %194 = fmul fast float %191, 0x3FF0E147A0000000
  %195 = fmul fast float %192, 0x3FF0E147A0000000
  %196 = fadd fast float %193, 0xBFAC28F5C0000000
  %197 = fadd fast float %194, 0xBFAC28F5C0000000
  %198 = fadd fast float %195, 0xBFAC28F5C0000000
  %199 = call float @dx.op.unary.f32(i32 7, float %196)  ; Saturate(value)
  %200 = call float @dx.op.unary.f32(i32 7, float %197)  ; Saturate(value)
  %201 = call float @dx.op.unary.f32(i32 7, float %198)  ; Saturate(value)
  %202 = extractvalue %dx.types.CBufRet.f32 %159, 2
  %203 = extractvalue %dx.types.CBufRet.f32 %159, 3
  %204 = fmul fast float %202, %199
  %205 = fmul fast float %202, %200
  %206 = fmul fast float %202, %201
  %207 = fadd fast float %204, %203
  %208 = fadd fast float %205, %203
  %209 = fadd fast float %206, %203
  br label %465

; <label>:210                                     ; preds = %178
  %211 = fmul fast float %156, 0x4163D57C00000000
  %212 = fmul fast float %157, 0x4163D57C00000000
  %213 = fmul fast float %158, 0x4163D57C00000000
  %214 = fadd fast float %211, 9.999980e+05
  %215 = fadd fast float %212, 9.999980e+05
  %216 = fadd fast float %213, 9.999980e+05
  %217 = fmul fast float %214, %156
  %218 = fmul fast float %215, %157
  %219 = fmul fast float %216, %158
  %220 = fadd fast float %217, 0xC0AFE17A60000000
  %221 = fadd fast float %218, 0xC0AFE17A60000000
  %222 = fadd fast float %219, 0xC0AFE17A60000000
  %223 = fmul fast float %220, %156
  %224 = fmul fast float %221, %157
  %225 = fmul fast float %222, %158
  %226 = fmul fast float %156, 0x40F753C340000000
  %227 = fmul fast float %157, 0x40F753C340000000
  %228 = fmul fast float %158, 0x40F753C340000000
  %229 = fsub fast float 9.999990e+06, %226
  %230 = fsub fast float 9.999990e+06, %227
  %231 = fsub fast float 9.999990e+06, %228
  %232 = fmul fast float %229, %156
  %233 = fmul fast float %230, %157
  %234 = fmul fast float %231, %158
  %235 = fadd fast float %232, 0x4136D1DD80000000
  %236 = fadd fast float %233, 0x4136D1DD80000000
  %237 = fadd fast float %234, 0x4136D1DD80000000
  %238 = fmul fast float %235, %156
  %239 = fmul fast float %236, %157
  %240 = fmul fast float %237, %158
  %241 = fadd fast float %238, 1.000000e+00
  %242 = fadd fast float %239, 1.000000e+00
  %243 = fadd fast float %240, 1.000000e+00
  %244 = fdiv fast float %223, %241
  %245 = fdiv fast float %224, %242
  %246 = fdiv fast float %225, %243
  %247 = call float @dx.op.unary.f32(i32 7, float %244)  ; Saturate(value)
  %248 = call float @dx.op.unary.f32(i32 7, float %245)  ; Saturate(value)
  %249 = call float @dx.op.unary.f32(i32 7, float %246)  ; Saturate(value)
  %250 = extractvalue %dx.types.CBufRet.f32 %159, 1
  %251 = fmul fast float %247, 0x3FE413A920000000
  %252 = call float @dx.op.tertiary.f32(i32 46, float 0x3FD5134040000000, float %248, float %251)  ; FMad(a,b,c)
  %253 = call float @dx.op.tertiary.f32(i32 46, float 0x3FA62B6AE0000000, float %249, float %252)  ; FMad(a,b,c)
  %254 = fmul fast float %247, 0x3FB1B089A0000000
  %255 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED6C8B40000000, float %248, float %254)  ; FMad(a,b,c)
  %256 = call float @dx.op.tertiary.f32(i32 46, float 0x3F8758E220000000, float %249, float %255)  ; FMad(a,b,c)
  %257 = fmul fast float %247, 0x3F90CB2960000000
  %258 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB6872B00000000, float %248, float %257)  ; FMad(a,b,c)
  %259 = call float @dx.op.tertiary.f32(i32 46, float 0x3FECA8C160000000, float %249, float %258)  ; FMad(a,b,c)
  %260 = fmul fast float %253, %250
  %261 = fmul fast float %256, %250
  %262 = fmul fast float %259, %250
  %263 = fmul fast float %260, 0x3F847AE140000000
  %264 = fmul fast float %261, 0x3F847AE140000000
  %265 = fmul fast float %262, 0x3F847AE140000000
  %266 = fmul fast float %260, 0x40B4D2F520000000
  %267 = fmul fast float %261, 0x40B4D2F520000000
  %268 = fmul fast float %262, 0x40B4D2F520000000
  %269 = fadd fast float %266, 0x41869ECF20000000
  %270 = fadd fast float %267, 0x41869ECF20000000
  %271 = fadd fast float %268, 0x41869ECF20000000
  %272 = fmul fast float %269, %263
  %273 = fmul fast float %270, %264
  %274 = fmul fast float %271, %265
  %275 = fadd fast float %272, 0x417BB79C60000000
  %276 = fadd fast float %273, 0x417BB79C60000000
  %277 = fadd fast float %274, 0x417BB79C60000000
  %278 = fmul fast float %275, %263
  %279 = fmul fast float %276, %264
  %280 = fmul fast float %277, %265
  %281 = fadd fast float %278, 0x41218DE180000000
  %282 = fadd fast float %279, 0x41218DE180000000
  %283 = fadd fast float %280, 0x41218DE180000000
  %284 = fmul fast float %281, %263
  %285 = fmul fast float %282, %264
  %286 = fmul fast float %283, %265
  %287 = fadd fast float %284, 0x4077F174E0000000
  %288 = fadd fast float %285, 0x4077F174E0000000
  %289 = fadd fast float %286, 0x4077F174E0000000
  %290 = fmul fast float %287, %263
  %291 = fmul fast float %288, %264
  %292 = fmul fast float %289, %265
  %293 = fadd fast float %290, 0x3F3FF79B80000000
  %294 = fadd fast float %291, 0x3F3FF79B80000000
  %295 = fadd fast float %292, 0x3F3FF79B80000000
  %296 = fmul fast float %260, 0x412442D320000000
  %297 = fmul fast float %261, 0x412442D320000000
  %298 = fmul fast float %262, 0x412442D320000000
  %299 = fadd fast float %296, 0x419385D5C0000000
  %300 = fadd fast float %297, 0x419385D5C0000000
  %301 = fadd fast float %298, 0x419385D5C0000000
  %302 = fmul fast float %299, %263
  %303 = fmul fast float %300, %264
  %304 = fmul fast float %301, %265
  %305 = fadd fast float %302, 4.182885e+06
  %306 = fadd fast float %303, 4.182885e+06
  %307 = fadd fast float %304, 4.182885e+06
  %308 = fmul fast float %305, %263
  %309 = fmul fast float %306, %264
  %310 = fmul fast float %307, %265
  %311 = fadd fast float %308, 0x40C4D633C0000000
  %312 = fadd fast float %309, 0x40C4D633C0000000
  %313 = fadd fast float %310, 0x40C4D633C0000000
  %314 = fmul fast float %311, %263
  %315 = fmul fast float %312, %264
  %316 = fmul fast float %313, %265
  %317 = fadd fast float %314, 1.000000e+00
  %318 = fadd fast float %315, 1.000000e+00
  %319 = fadd fast float %316, 1.000000e+00
  %320 = fdiv fast float %293, %317
  %321 = fdiv fast float %294, %318
  %322 = fdiv fast float %295, %319
  %323 = extractvalue %dx.types.CBufRet.f32 %159, 2
  %324 = extractvalue %dx.types.CBufRet.f32 %159, 3
  %325 = fmul fast float %323, %320
  %326 = fmul fast float %323, %321
  %327 = fmul fast float %323, %322
  %328 = fadd fast float %325, %324
  %329 = fadd fast float %326, %324
  %330 = fadd fast float %327, %324
  br label %465

; <label>:331                                     ; preds = %178
  %332 = fmul fast float %156, 0x4163D57C00000000
  %333 = fmul fast float %157, 0x4163D57C00000000
  %334 = fmul fast float %158, 0x4163D57C00000000
  %335 = fadd fast float %332, 9.999980e+05
  %336 = fadd fast float %333, 9.999980e+05
  %337 = fadd fast float %334, 9.999980e+05
  %338 = fmul fast float %335, %156
  %339 = fmul fast float %336, %157
  %340 = fmul fast float %337, %158
  %341 = fadd fast float %338, 0xC0AFE17A60000000
  %342 = fadd fast float %339, 0xC0AFE17A60000000
  %343 = fadd fast float %340, 0xC0AFE17A60000000
  %344 = fmul fast float %341, %156
  %345 = fmul fast float %342, %157
  %346 = fmul fast float %343, %158
  %347 = fmul fast float %156, 0x40F753C340000000
  %348 = fmul fast float %157, 0x40F753C340000000
  %349 = fmul fast float %158, 0x40F753C340000000
  %350 = fsub fast float 9.999990e+06, %347
  %351 = fsub fast float 9.999990e+06, %348
  %352 = fsub fast float 9.999990e+06, %349
  %353 = fmul fast float %350, %156
  %354 = fmul fast float %351, %157
  %355 = fmul fast float %352, %158
  %356 = fadd fast float %353, 0x4136D1DD80000000
  %357 = fadd fast float %354, 0x4136D1DD80000000
  %358 = fadd fast float %355, 0x4136D1DD80000000
  %359 = fmul fast float %356, %156
  %360 = fmul fast float %357, %157
  %361 = fmul fast float %358, %158
  %362 = fadd fast float %359, 1.000000e+00
  %363 = fadd fast float %360, 1.000000e+00
  %364 = fadd fast float %361, 1.000000e+00
  %365 = fdiv fast float %344, %362
  %366 = fdiv fast float %345, %363
  %367 = fdiv fast float %346, %364
  %368 = call float @dx.op.unary.f32(i32 7, float %365)  ; Saturate(value)
  %369 = call float @dx.op.unary.f32(i32 7, float %366)  ; Saturate(value)
  %370 = call float @dx.op.unary.f32(i32 7, float %367)  ; Saturate(value)
  %371 = extractvalue %dx.types.CBufRet.f32 %159, 1
  %372 = fmul fast float %368, 0x3FEA519BC0000000
  %373 = call float @dx.op.tertiary.f32(i32 46, float 0x3FC6B990A0000000, float %369, float %372)  ; FMad(a,b,c)
  %374 = fmul fast float %368, 0x3FA0FED480000000
  %375 = call float @dx.op.tertiary.f32(i32 46, float 0x3FEEF012C0000000, float %369, float %374)  ; FMad(a,b,c)
  %376 = fmul fast float %368, 0x3F917E1C00000000
  %377 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB288A2E0000000, float %369, float %376)  ; FMad(a,b,c)
  %378 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED22FAA0000000, float %370, float %377)  ; FMad(a,b,c)
  %379 = call float @dx.op.binary.f32(i32 35, float %368, float %369)  ; FMax(a,b)
  %380 = call float @dx.op.binary.f32(i32 35, float %379, float %370)  ; FMax(a,b)
  %381 = fadd fast float %380, -1.000000e+00
  %382 = fmul fast float %381, 2.500000e-01
  %383 = call float @dx.op.unary.f32(i32 7, float %382)  ; Saturate(value)
  %384 = fsub fast float 1.000000e+00, %383
  %385 = fmul fast float %384, %373
  %386 = fmul fast float %384, %375
  %387 = fmul fast float %384, %378
  %388 = fmul fast float %383, %368
  %389 = fmul fast float %383, %369
  %390 = fmul fast float %383, %370
  %391 = fadd fast float %385, %388
  %392 = fadd fast float %386, %389
  %393 = fadd fast float %387, %390
  %394 = fmul fast float %391, %371
  %395 = fmul fast float %392, %371
  %396 = fmul fast float %393, %371
  %397 = fmul fast float %394, 0x3F847AE140000000
  %398 = fmul fast float %395, 0x3F847AE140000000
  %399 = fmul fast float %396, 0x3F847AE140000000
  %400 = fmul fast float %394, 0x40B4D2F520000000
  %401 = fmul fast float %395, 0x40B4D2F520000000
  %402 = fmul fast float %396, 0x40B4D2F520000000
  %403 = fadd fast float %400, 0x41869ECF20000000
  %404 = fadd fast float %401, 0x41869ECF20000000
  %405 = fadd fast float %402, 0x41869ECF20000000
  %406 = fmul fast float %403, %397
  %407 = fmul fast float %404, %398
  %408 = fmul fast float %405, %399
  %409 = fadd fast float %406, 0x417BB79C60000000
  %410 = fadd fast float %407, 0x417BB79C60000000
  %411 = fadd fast float %408, 0x417BB79C60000000
  %412 = fmul fast float %409, %397
  %413 = fmul fast float %410, %398
  %414 = fmul fast float %411, %399
  %415 = fadd fast float %412, 0x41218DE180000000
  %416 = fadd fast float %413, 0x41218DE180000000
  %417 = fadd fast float %414, 0x41218DE180000000
  %418 = fmul fast float %415, %397
  %419 = fmul fast float %416, %398
  %420 = fmul fast float %417, %399
  %421 = fadd fast float %418, 0x4077F174E0000000
  %422 = fadd fast float %419, 0x4077F174E0000000
  %423 = fadd fast float %420, 0x4077F174E0000000
  %424 = fmul fast float %421, %397
  %425 = fmul fast float %422, %398
  %426 = fmul fast float %423, %399
  %427 = fadd fast float %424, 0x3F3FF79B80000000
  %428 = fadd fast float %425, 0x3F3FF79B80000000
  %429 = fadd fast float %426, 0x3F3FF79B80000000
  %430 = fmul fast float %394, 0x412442D320000000
  %431 = fmul fast float %395, 0x412442D320000000
  %432 = fmul fast float %396, 0x412442D320000000
  %433 = fadd fast float %430, 0x419385D5C0000000
  %434 = fadd fast float %431, 0x419385D5C0000000
  %435 = fadd fast float %432, 0x419385D5C0000000
  %436 = fmul fast float %433, %397
  %437 = fmul fast float %434, %398
  %438 = fmul fast float %435, %399
  %439 = fadd fast float %436, 4.182885e+06
  %440 = fadd fast float %437, 4.182885e+06
  %441 = fadd fast float %438, 4.182885e+06
  %442 = fmul fast float %439, %397
  %443 = fmul fast float %440, %398
  %444 = fmul fast float %441, %399
  %445 = fadd fast float %442, 0x40C4D633C0000000
  %446 = fadd fast float %443, 0x40C4D633C0000000
  %447 = fadd fast float %444, 0x40C4D633C0000000
  %448 = fmul fast float %445, %397
  %449 = fmul fast float %446, %398
  %450 = fmul fast float %447, %399
  %451 = fadd fast float %448, 1.000000e+00
  %452 = fadd fast float %449, 1.000000e+00
  %453 = fadd fast float %450, 1.000000e+00
  %454 = fdiv fast float %427, %451
  %455 = fdiv fast float %428, %452
  %456 = fdiv fast float %429, %453
  %457 = extractvalue %dx.types.CBufRet.f32 %159, 2
  %458 = extractvalue %dx.types.CBufRet.f32 %159, 3
  %459 = fmul fast float %457, %454
  %460 = fmul fast float %457, %455
  %461 = fmul fast float %457, %456
  %462 = fadd fast float %459, %458
  %463 = fadd fast float %460, %458
  %464 = fadd fast float %461, %458
  br label %465

; <label>:465                                     ; preds = %331, %210, %180, %178, %164
  %466 = phi float [ %175, %164 ], [ %156, %178 ], [ %462, %331 ], [ %328, %210 ], [ %207, %180 ]
  %467 = phi float [ %176, %164 ], [ %157, %178 ], [ %463, %331 ], [ %329, %210 ], [ %208, %180 ]
  %468 = phi float [ %177, %164 ], [ %158, %178 ], [ %464, %331 ], [ %330, %210 ], [ %209, %180 ]
  %469 = fmul fast float %466, %129
  %470 = fmul fast float %467, %129
  %471 = fmul fast float %468, %129
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %469)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %470)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %471)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %129)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind
declare void @dx.op.discard(i32, i1) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 76, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 71, i32 1, i32 4, i32 0, !7}
!10 = !{!11, !12}
!11 = !{i32 0, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 160, null}
!12 = !{i32 1, %perObject* undef, !"", i32 0, i32 1, i32 1, i32 96, null}
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

