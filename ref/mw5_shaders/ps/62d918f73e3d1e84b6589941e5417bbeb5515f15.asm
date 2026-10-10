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
; shader hash: 0479b10b98c04ac85f345b8600b825b8
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
;   [32 x i8] (type annotation not present)
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
;                                   sampler      NA          NA      S0             s1     1
;                                   sampler      NA          NA      S1             s2     1
;                                   sampler      NA          NA      S2             s3     1
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
%perObject = type { <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 71, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 76, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %10 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %11 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %12 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %13 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %14 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %15 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %16 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %17 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %6, float %11, float %12, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %18 = extractvalue %dx.types.ResRet.f32 %17, 3
  %19 = fmul fast float %18, %16
  %20 = fcmp fast ole float %13, 0x3FA4B5DCC0000000
  %21 = fmul fast float %13, 0x3FB3D07220000000
  %22 = fadd fast float %13, 0x3FAC28F5C0000000
  %23 = fmul fast float %22, 0x3FEE54EDE0000000
  %24 = call float @dx.op.unary.f32(i32 23, float %23)  ; Log(value)
  %25 = fmul fast float %24, 0x4003333340000000
  %26 = call float @dx.op.unary.f32(i32 21, float %25)  ; Exp(value)
  %27 = select i1 %20, float %21, float %26
  %28 = fcmp fast ole float %14, 0x3FA4B5DCC0000000
  %29 = fmul fast float %14, 0x3FB3D07220000000
  %30 = fadd fast float %14, 0x3FAC28F5C0000000
  %31 = fmul fast float %30, 0x3FEE54EDE0000000
  %32 = call float @dx.op.unary.f32(i32 23, float %31)  ; Log(value)
  %33 = fmul fast float %32, 0x4003333340000000
  %34 = call float @dx.op.unary.f32(i32 21, float %33)  ; Exp(value)
  %35 = select i1 %28, float %29, float %34
  %36 = fcmp fast ole float %15, 0x3FA4B5DCC0000000
  %37 = fmul fast float %15, 0x3FB3D07220000000
  %38 = fadd fast float %15, 0x3FAC28F5C0000000
  %39 = fmul fast float %38, 0x3FEE54EDE0000000
  %40 = call float @dx.op.unary.f32(i32 23, float %39)  ; Log(value)
  %41 = fmul fast float %40, 0x4003333340000000
  %42 = call float @dx.op.unary.f32(i32 21, float %41)  ; Exp(value)
  %43 = select i1 %36, float %37, float %42
  %44 = call float @dx.op.binary.f32(i32 35, float %19, float 0.000000e+00)  ; FMax(a,b)
  %45 = fcmp fast oeq float %44, 0.000000e+00
  br i1 %45, label %46, label %47, !dx.controlflow.hints !31

; <label>:46                                      ; preds = %0
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %47

; <label>:47                                      ; preds = %46, %0
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %48 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %4, float %9, float %10, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %49 = extractvalue %dx.types.ResRet.f32 %48, 0
  %50 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %51 = extractvalue %dx.types.CBufRet.f32 %50, 3
  %52 = bitcast float %51 to i32
  %53 = and i32 %52, 65535
  %54 = call float @dx.op.legacyF16ToF32(i32 131, i32 %53)  ; LegacyF16ToF32(value)
  %55 = fcmp fast une float %54, 0.000000e+00
  %56 = select i1 %55, float 0.000000e+00, float 1.000000e+00
  %57 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %58 = extractvalue %dx.types.CBufRet.f32 %57, 3
  %59 = fmul fast float %58, %49
  %60 = fmul fast float %59, %56
  %61 = fsub fast float 1.000000e+00, %60
  %62 = fmul fast float %61, %27
  %63 = fmul fast float %61, %35
  %64 = fmul fast float %61, %43
  %65 = extractvalue %dx.types.CBufRet.f32 %57, 0
  %66 = extractvalue %dx.types.CBufRet.f32 %57, 1
  %67 = extractvalue %dx.types.CBufRet.f32 %57, 2
  %68 = fmul fast float %65, %59
  %69 = fmul fast float %66, %59
  %70 = fmul fast float %67, %59
  %71 = fadd fast float %62, %68
  %72 = fadd fast float %63, %69
  %73 = fadd fast float %64, %70
  %74 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %75 = extractvalue %dx.types.CBufRet.f32 %74, 0
  %76 = bitcast float %75 to i32
  %77 = and i32 %76, 128
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %93, label %79

; <label>:79                                      ; preds = %47
  %80 = call float @dx.op.unary.f32(i32 24, float %71)  ; Sqrt(value)
  %81 = call float @dx.op.unary.f32(i32 24, float %72)  ; Sqrt(value)
  %82 = call float @dx.op.unary.f32(i32 24, float %73)  ; Sqrt(value)
  %83 = fmul fast float %80, 9.687500e-01
  %84 = fmul fast float %81, 9.687500e-01
  %85 = fmul fast float %82, 9.687500e-01
  %86 = fadd fast float %83, 1.562500e-02
  %87 = fadd fast float %84, 1.562500e-02
  %88 = fadd fast float %85, 1.562500e-02
  %89 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %5, float %86, float %87, float %88, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %90 = extractvalue %dx.types.ResRet.f32 %89, 0
  %91 = extractvalue %dx.types.ResRet.f32 %89, 1
  %92 = extractvalue %dx.types.ResRet.f32 %89, 2
  br label %380

; <label>:93                                      ; preds = %47
  %94 = and i32 %76, 127
  switch i32 %94, label %380 [
    i32 1, label %95
    i32 2, label %95
    i32 0, label %95
    i32 3, label %125
    i32 4, label %246
  ]

; <label>:95                                      ; preds = %93, %93, %93
  %96 = call float @dx.op.unary.f32(i32 7, float %71)  ; Saturate(value)
  %97 = call float @dx.op.unary.f32(i32 7, float %72)  ; Saturate(value)
  %98 = call float @dx.op.unary.f32(i32 7, float %73)  ; Saturate(value)
  %99 = call float @dx.op.unary.f32(i32 23, float %96)  ; Log(value)
  %100 = call float @dx.op.unary.f32(i32 23, float %97)  ; Log(value)
  %101 = call float @dx.op.unary.f32(i32 23, float %98)  ; Log(value)
  %102 = fmul fast float %99, 0x3FDAAAAAA0000000
  %103 = fmul fast float %100, 0x3FDAAAAAA0000000
  %104 = fmul fast float %101, 0x3FDAAAAAA0000000
  %105 = call float @dx.op.unary.f32(i32 21, float %102)  ; Exp(value)
  %106 = call float @dx.op.unary.f32(i32 21, float %103)  ; Exp(value)
  %107 = call float @dx.op.unary.f32(i32 21, float %104)  ; Exp(value)
  %108 = fmul fast float %105, 0x3FF0E147A0000000
  %109 = fmul fast float %106, 0x3FF0E147A0000000
  %110 = fmul fast float %107, 0x3FF0E147A0000000
  %111 = fadd fast float %108, 0xBFAC28F5C0000000
  %112 = fadd fast float %109, 0xBFAC28F5C0000000
  %113 = fadd fast float %110, 0xBFAC28F5C0000000
  %114 = call float @dx.op.unary.f32(i32 7, float %111)  ; Saturate(value)
  %115 = call float @dx.op.unary.f32(i32 7, float %112)  ; Saturate(value)
  %116 = call float @dx.op.unary.f32(i32 7, float %113)  ; Saturate(value)
  %117 = extractvalue %dx.types.CBufRet.f32 %74, 2
  %118 = extractvalue %dx.types.CBufRet.f32 %74, 3
  %119 = fmul fast float %117, %114
  %120 = fmul fast float %117, %115
  %121 = fmul fast float %117, %116
  %122 = fadd fast float %119, %118
  %123 = fadd fast float %120, %118
  %124 = fadd fast float %121, %118
  br label %380

; <label>:125                                     ; preds = %93
  %126 = fmul fast float %71, 0x4163D57C00000000
  %127 = fmul fast float %72, 0x4163D57C00000000
  %128 = fmul fast float %73, 0x4163D57C00000000
  %129 = fadd fast float %126, 9.999980e+05
  %130 = fadd fast float %127, 9.999980e+05
  %131 = fadd fast float %128, 9.999980e+05
  %132 = fmul fast float %129, %71
  %133 = fmul fast float %130, %72
  %134 = fmul fast float %131, %73
  %135 = fadd fast float %132, 0xC0AFE17A60000000
  %136 = fadd fast float %133, 0xC0AFE17A60000000
  %137 = fadd fast float %134, 0xC0AFE17A60000000
  %138 = fmul fast float %135, %71
  %139 = fmul fast float %136, %72
  %140 = fmul fast float %137, %73
  %141 = fmul fast float %71, 0x40F753C340000000
  %142 = fmul fast float %72, 0x40F753C340000000
  %143 = fmul fast float %73, 0x40F753C340000000
  %144 = fsub fast float 9.999990e+06, %141
  %145 = fsub fast float 9.999990e+06, %142
  %146 = fsub fast float 9.999990e+06, %143
  %147 = fmul fast float %144, %71
  %148 = fmul fast float %145, %72
  %149 = fmul fast float %146, %73
  %150 = fadd fast float %147, 0x4136D1DD80000000
  %151 = fadd fast float %148, 0x4136D1DD80000000
  %152 = fadd fast float %149, 0x4136D1DD80000000
  %153 = fmul fast float %150, %71
  %154 = fmul fast float %151, %72
  %155 = fmul fast float %152, %73
  %156 = fadd fast float %153, 1.000000e+00
  %157 = fadd fast float %154, 1.000000e+00
  %158 = fadd fast float %155, 1.000000e+00
  %159 = fdiv fast float %138, %156
  %160 = fdiv fast float %139, %157
  %161 = fdiv fast float %140, %158
  %162 = call float @dx.op.unary.f32(i32 7, float %159)  ; Saturate(value)
  %163 = call float @dx.op.unary.f32(i32 7, float %160)  ; Saturate(value)
  %164 = call float @dx.op.unary.f32(i32 7, float %161)  ; Saturate(value)
  %165 = extractvalue %dx.types.CBufRet.f32 %74, 1
  %166 = fmul fast float %162, 0x3FE413A920000000
  %167 = call float @dx.op.tertiary.f32(i32 46, float 0x3FD5134040000000, float %163, float %166)  ; FMad(a,b,c)
  %168 = call float @dx.op.tertiary.f32(i32 46, float 0x3FA62B6AE0000000, float %164, float %167)  ; FMad(a,b,c)
  %169 = fmul fast float %162, 0x3FB1B089A0000000
  %170 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED6C8B40000000, float %163, float %169)  ; FMad(a,b,c)
  %171 = call float @dx.op.tertiary.f32(i32 46, float 0x3F8758E220000000, float %164, float %170)  ; FMad(a,b,c)
  %172 = fmul fast float %162, 0x3F90CB2960000000
  %173 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB6872B00000000, float %163, float %172)  ; FMad(a,b,c)
  %174 = call float @dx.op.tertiary.f32(i32 46, float 0x3FECA8C160000000, float %164, float %173)  ; FMad(a,b,c)
  %175 = fmul fast float %168, %165
  %176 = fmul fast float %171, %165
  %177 = fmul fast float %174, %165
  %178 = fmul fast float %175, 0x3F847AE140000000
  %179 = fmul fast float %176, 0x3F847AE140000000
  %180 = fmul fast float %177, 0x3F847AE140000000
  %181 = fmul fast float %175, 0x40B4D2F520000000
  %182 = fmul fast float %176, 0x40B4D2F520000000
  %183 = fmul fast float %177, 0x40B4D2F520000000
  %184 = fadd fast float %181, 0x41869ECF20000000
  %185 = fadd fast float %182, 0x41869ECF20000000
  %186 = fadd fast float %183, 0x41869ECF20000000
  %187 = fmul fast float %184, %178
  %188 = fmul fast float %185, %179
  %189 = fmul fast float %186, %180
  %190 = fadd fast float %187, 0x417BB79C60000000
  %191 = fadd fast float %188, 0x417BB79C60000000
  %192 = fadd fast float %189, 0x417BB79C60000000
  %193 = fmul fast float %190, %178
  %194 = fmul fast float %191, %179
  %195 = fmul fast float %192, %180
  %196 = fadd fast float %193, 0x41218DE180000000
  %197 = fadd fast float %194, 0x41218DE180000000
  %198 = fadd fast float %195, 0x41218DE180000000
  %199 = fmul fast float %196, %178
  %200 = fmul fast float %197, %179
  %201 = fmul fast float %198, %180
  %202 = fadd fast float %199, 0x4077F174E0000000
  %203 = fadd fast float %200, 0x4077F174E0000000
  %204 = fadd fast float %201, 0x4077F174E0000000
  %205 = fmul fast float %202, %178
  %206 = fmul fast float %203, %179
  %207 = fmul fast float %204, %180
  %208 = fadd fast float %205, 0x3F3FF79B80000000
  %209 = fadd fast float %206, 0x3F3FF79B80000000
  %210 = fadd fast float %207, 0x3F3FF79B80000000
  %211 = fmul fast float %175, 0x412442D320000000
  %212 = fmul fast float %176, 0x412442D320000000
  %213 = fmul fast float %177, 0x412442D320000000
  %214 = fadd fast float %211, 0x419385D5C0000000
  %215 = fadd fast float %212, 0x419385D5C0000000
  %216 = fadd fast float %213, 0x419385D5C0000000
  %217 = fmul fast float %214, %178
  %218 = fmul fast float %215, %179
  %219 = fmul fast float %216, %180
  %220 = fadd fast float %217, 4.182885e+06
  %221 = fadd fast float %218, 4.182885e+06
  %222 = fadd fast float %219, 4.182885e+06
  %223 = fmul fast float %220, %178
  %224 = fmul fast float %221, %179
  %225 = fmul fast float %222, %180
  %226 = fadd fast float %223, 0x40C4D633C0000000
  %227 = fadd fast float %224, 0x40C4D633C0000000
  %228 = fadd fast float %225, 0x40C4D633C0000000
  %229 = fmul fast float %226, %178
  %230 = fmul fast float %227, %179
  %231 = fmul fast float %228, %180
  %232 = fadd fast float %229, 1.000000e+00
  %233 = fadd fast float %230, 1.000000e+00
  %234 = fadd fast float %231, 1.000000e+00
  %235 = fdiv fast float %208, %232
  %236 = fdiv fast float %209, %233
  %237 = fdiv fast float %210, %234
  %238 = extractvalue %dx.types.CBufRet.f32 %74, 2
  %239 = extractvalue %dx.types.CBufRet.f32 %74, 3
  %240 = fmul fast float %238, %235
  %241 = fmul fast float %238, %236
  %242 = fmul fast float %238, %237
  %243 = fadd fast float %240, %239
  %244 = fadd fast float %241, %239
  %245 = fadd fast float %242, %239
  br label %380

; <label>:246                                     ; preds = %93
  %247 = fmul fast float %71, 0x4163D57C00000000
  %248 = fmul fast float %72, 0x4163D57C00000000
  %249 = fmul fast float %73, 0x4163D57C00000000
  %250 = fadd fast float %247, 9.999980e+05
  %251 = fadd fast float %248, 9.999980e+05
  %252 = fadd fast float %249, 9.999980e+05
  %253 = fmul fast float %250, %71
  %254 = fmul fast float %251, %72
  %255 = fmul fast float %252, %73
  %256 = fadd fast float %253, 0xC0AFE17A60000000
  %257 = fadd fast float %254, 0xC0AFE17A60000000
  %258 = fadd fast float %255, 0xC0AFE17A60000000
  %259 = fmul fast float %256, %71
  %260 = fmul fast float %257, %72
  %261 = fmul fast float %258, %73
  %262 = fmul fast float %71, 0x40F753C340000000
  %263 = fmul fast float %72, 0x40F753C340000000
  %264 = fmul fast float %73, 0x40F753C340000000
  %265 = fsub fast float 9.999990e+06, %262
  %266 = fsub fast float 9.999990e+06, %263
  %267 = fsub fast float 9.999990e+06, %264
  %268 = fmul fast float %265, %71
  %269 = fmul fast float %266, %72
  %270 = fmul fast float %267, %73
  %271 = fadd fast float %268, 0x4136D1DD80000000
  %272 = fadd fast float %269, 0x4136D1DD80000000
  %273 = fadd fast float %270, 0x4136D1DD80000000
  %274 = fmul fast float %271, %71
  %275 = fmul fast float %272, %72
  %276 = fmul fast float %273, %73
  %277 = fadd fast float %274, 1.000000e+00
  %278 = fadd fast float %275, 1.000000e+00
  %279 = fadd fast float %276, 1.000000e+00
  %280 = fdiv fast float %259, %277
  %281 = fdiv fast float %260, %278
  %282 = fdiv fast float %261, %279
  %283 = call float @dx.op.unary.f32(i32 7, float %280)  ; Saturate(value)
  %284 = call float @dx.op.unary.f32(i32 7, float %281)  ; Saturate(value)
  %285 = call float @dx.op.unary.f32(i32 7, float %282)  ; Saturate(value)
  %286 = extractvalue %dx.types.CBufRet.f32 %74, 1
  %287 = fmul fast float %283, 0x3FEA519BC0000000
  %288 = call float @dx.op.tertiary.f32(i32 46, float 0x3FC6B990A0000000, float %284, float %287)  ; FMad(a,b,c)
  %289 = fmul fast float %283, 0x3FA0FED480000000
  %290 = call float @dx.op.tertiary.f32(i32 46, float 0x3FEEF012C0000000, float %284, float %289)  ; FMad(a,b,c)
  %291 = fmul fast float %283, 0x3F917E1C00000000
  %292 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB288A2E0000000, float %284, float %291)  ; FMad(a,b,c)
  %293 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED22FAA0000000, float %285, float %292)  ; FMad(a,b,c)
  %294 = call float @dx.op.binary.f32(i32 35, float %283, float %284)  ; FMax(a,b)
  %295 = call float @dx.op.binary.f32(i32 35, float %294, float %285)  ; FMax(a,b)
  %296 = fadd fast float %295, -1.000000e+00
  %297 = fmul fast float %296, 2.500000e-01
  %298 = call float @dx.op.unary.f32(i32 7, float %297)  ; Saturate(value)
  %299 = fsub fast float 1.000000e+00, %298
  %300 = fmul fast float %299, %288
  %301 = fmul fast float %299, %290
  %302 = fmul fast float %299, %293
  %303 = fmul fast float %298, %283
  %304 = fmul fast float %298, %284
  %305 = fmul fast float %298, %285
  %306 = fadd fast float %300, %303
  %307 = fadd fast float %301, %304
  %308 = fadd fast float %302, %305
  %309 = fmul fast float %306, %286
  %310 = fmul fast float %307, %286
  %311 = fmul fast float %308, %286
  %312 = fmul fast float %309, 0x3F847AE140000000
  %313 = fmul fast float %310, 0x3F847AE140000000
  %314 = fmul fast float %311, 0x3F847AE140000000
  %315 = fmul fast float %309, 0x40B4D2F520000000
  %316 = fmul fast float %310, 0x40B4D2F520000000
  %317 = fmul fast float %311, 0x40B4D2F520000000
  %318 = fadd fast float %315, 0x41869ECF20000000
  %319 = fadd fast float %316, 0x41869ECF20000000
  %320 = fadd fast float %317, 0x41869ECF20000000
  %321 = fmul fast float %318, %312
  %322 = fmul fast float %319, %313
  %323 = fmul fast float %320, %314
  %324 = fadd fast float %321, 0x417BB79C60000000
  %325 = fadd fast float %322, 0x417BB79C60000000
  %326 = fadd fast float %323, 0x417BB79C60000000
  %327 = fmul fast float %324, %312
  %328 = fmul fast float %325, %313
  %329 = fmul fast float %326, %314
  %330 = fadd fast float %327, 0x41218DE180000000
  %331 = fadd fast float %328, 0x41218DE180000000
  %332 = fadd fast float %329, 0x41218DE180000000
  %333 = fmul fast float %330, %312
  %334 = fmul fast float %331, %313
  %335 = fmul fast float %332, %314
  %336 = fadd fast float %333, 0x4077F174E0000000
  %337 = fadd fast float %334, 0x4077F174E0000000
  %338 = fadd fast float %335, 0x4077F174E0000000
  %339 = fmul fast float %336, %312
  %340 = fmul fast float %337, %313
  %341 = fmul fast float %338, %314
  %342 = fadd fast float %339, 0x3F3FF79B80000000
  %343 = fadd fast float %340, 0x3F3FF79B80000000
  %344 = fadd fast float %341, 0x3F3FF79B80000000
  %345 = fmul fast float %309, 0x412442D320000000
  %346 = fmul fast float %310, 0x412442D320000000
  %347 = fmul fast float %311, 0x412442D320000000
  %348 = fadd fast float %345, 0x419385D5C0000000
  %349 = fadd fast float %346, 0x419385D5C0000000
  %350 = fadd fast float %347, 0x419385D5C0000000
  %351 = fmul fast float %348, %312
  %352 = fmul fast float %349, %313
  %353 = fmul fast float %350, %314
  %354 = fadd fast float %351, 4.182885e+06
  %355 = fadd fast float %352, 4.182885e+06
  %356 = fadd fast float %353, 4.182885e+06
  %357 = fmul fast float %354, %312
  %358 = fmul fast float %355, %313
  %359 = fmul fast float %356, %314
  %360 = fadd fast float %357, 0x40C4D633C0000000
  %361 = fadd fast float %358, 0x40C4D633C0000000
  %362 = fadd fast float %359, 0x40C4D633C0000000
  %363 = fmul fast float %360, %312
  %364 = fmul fast float %361, %313
  %365 = fmul fast float %362, %314
  %366 = fadd fast float %363, 1.000000e+00
  %367 = fadd fast float %364, 1.000000e+00
  %368 = fadd fast float %365, 1.000000e+00
  %369 = fdiv fast float %342, %366
  %370 = fdiv fast float %343, %367
  %371 = fdiv fast float %344, %368
  %372 = extractvalue %dx.types.CBufRet.f32 %74, 2
  %373 = extractvalue %dx.types.CBufRet.f32 %74, 3
  %374 = fmul fast float %372, %369
  %375 = fmul fast float %372, %370
  %376 = fmul fast float %372, %371
  %377 = fadd fast float %374, %373
  %378 = fadd fast float %375, %373
  %379 = fadd fast float %376, %373
  br label %380

; <label>:380                                     ; preds = %246, %125, %95, %93, %79
  %381 = phi float [ %90, %79 ], [ %71, %93 ], [ %377, %246 ], [ %243, %125 ], [ %122, %95 ]
  %382 = phi float [ %91, %79 ], [ %72, %93 ], [ %378, %246 ], [ %244, %125 ], [ %123, %95 ]
  %383 = phi float [ %92, %79 ], [ %73, %93 ], [ %379, %246 ], [ %245, %125 ], [ %124, %95 ]
  %384 = fmul fast float %381, %44
  %385 = fmul fast float %382, %44
  %386 = fmul fast float %383, %44
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %384)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %385)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %386)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %44)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

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
!dx.viewIdState = !{!17}
!dx.entryPoints = !{!18}

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
!12 = !{i32 1, %perObject* undef, !"", i32 0, i32 1, i32 1, i32 32, null}
!13 = !{!14, !15, !16}
!14 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!15 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!16 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!17 = !{[14 x i32] [i32 12, i32 4, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 7, i32 15, i32 15, i32 15, i32 7, i32 7]}
!18 = !{void ()* @ps_main, !"ps_main", !19, !4, null}
!19 = !{!20, !29, null}
!20 = !{!21, !23, !25, !27}
!21 = !{i32 0, !"SV_Position", i8 9, i8 3, !22, i8 4, i32 1, i8 4, i32 0, i8 0, null}
!22 = !{i32 0}
!23 = !{i32 1, !"COLOR", i8 9, i8 0, !22, i8 2, i32 1, i8 4, i32 1, i8 0, !24}
!24 = !{i32 3, i32 15}
!25 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !22, i8 2, i32 1, i8 2, i32 2, i8 0, !26}
!26 = !{i32 3, i32 3}
!27 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !28, i8 2, i32 1, i8 2, i32 2, i8 2, !26}
!28 = !{i32 7}
!29 = !{!30}
!30 = !{i32 0, !"SV_Target", i8 9, i8 16, !22, i8 0, i32 1, i8 4, i32 0, i8 0, !24}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 1}

