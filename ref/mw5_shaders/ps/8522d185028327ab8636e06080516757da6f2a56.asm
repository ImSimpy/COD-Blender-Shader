;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float       
; COLOR                    0   xyzw        1     NONE   float   xyzw
; TEXCOORD                 0   xy          2     NONE   float   xy  
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: f951675df6394c73bb51a8d0d0551299
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
;   [128 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb2     1
;                                   sampler      NA          NA      S0             s2     1
;                                   sampler      NA          NA      S1             s4     1
;                                   texture     f32          2d      T0             t0     1
;                                   texture     f32          3d      T1     t71,space2     1
;
;
; ViewId state:
;
; Number of inputs: 10, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 4, 5, 6, 7, 8, 9 }
;   output 1 depends on inputs: { 4, 5, 6, 7, 8, 9 }
;   output 2 depends on inputs: { 4, 5, 6, 7, 8, 9 }
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
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 71, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %7 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %8 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %9 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %10 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %11 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %12 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %3, float %6, float %7, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %13 = extractvalue %dx.types.ResRet.f32 %12, 0
  %14 = extractvalue %dx.types.ResRet.f32 %12, 1
  %15 = extractvalue %dx.types.ResRet.f32 %12, 2
  %16 = extractvalue %dx.types.ResRet.f32 %12, 3
  %17 = fmul fast float %15, %8
  %18 = fmul fast float %14, %9
  %19 = fmul fast float %13, %10
  %20 = fmul fast float %16, %11
  %21 = fcmp fast ole float %17, 0x3FA4B5DCC0000000
  %22 = fmul fast float %17, 0x3FB3D07220000000
  %23 = fadd fast float %17, 0x3FAC28F5C0000000
  %24 = fmul fast float %23, 0x3FEE54EDE0000000
  %25 = call float @dx.op.unary.f32(i32 23, float %24)  ; Log(value)
  %26 = fmul fast float %25, 0x4003333340000000
  %27 = call float @dx.op.unary.f32(i32 21, float %26)  ; Exp(value)
  %28 = select i1 %21, float %22, float %27
  %29 = fcmp fast ole float %18, 0x3FA4B5DCC0000000
  %30 = fmul fast float %18, 0x3FB3D07220000000
  %31 = fadd fast float %18, 0x3FAC28F5C0000000
  %32 = fmul fast float %31, 0x3FEE54EDE0000000
  %33 = call float @dx.op.unary.f32(i32 23, float %32)  ; Log(value)
  %34 = fmul fast float %33, 0x4003333340000000
  %35 = call float @dx.op.unary.f32(i32 21, float %34)  ; Exp(value)
  %36 = select i1 %29, float %30, float %35
  %37 = fcmp fast ole float %19, 0x3FA4B5DCC0000000
  %38 = fmul fast float %19, 0x3FB3D07220000000
  %39 = fadd fast float %19, 0x3FAC28F5C0000000
  %40 = fmul fast float %39, 0x3FEE54EDE0000000
  %41 = call float @dx.op.unary.f32(i32 23, float %40)  ; Log(value)
  %42 = fmul fast float %41, 0x4003333340000000
  %43 = call float @dx.op.unary.f32(i32 21, float %42)  ; Exp(value)
  %44 = select i1 %37, float %38, float %43
  %45 = call float @dx.op.binary.f32(i32 35, float %20, float 0.000000e+00)  ; FMax(a,b)
  %46 = fcmp fast oeq float %45, 0.000000e+00
  br i1 %46, label %47, label %48, !dx.controlflow.hints !26

; <label>:47                                      ; preds = %0
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %48

; <label>:48                                      ; preds = %47, %0
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %49 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %50 = extractvalue %dx.types.CBufRet.f32 %49, 0
  %51 = bitcast float %50 to i32
  %52 = and i32 %51, 128
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %68, label %54

; <label>:54                                      ; preds = %48
  %55 = call float @dx.op.unary.f32(i32 24, float %28)  ; Sqrt(value)
  %56 = call float @dx.op.unary.f32(i32 24, float %36)  ; Sqrt(value)
  %57 = call float @dx.op.unary.f32(i32 24, float %44)  ; Sqrt(value)
  %58 = fmul fast float %55, 9.687500e-01
  %59 = fmul fast float %56, 9.687500e-01
  %60 = fmul fast float %57, 9.687500e-01
  %61 = fadd fast float %58, 1.562500e-02
  %62 = fadd fast float %59, 1.562500e-02
  %63 = fadd fast float %60, 1.562500e-02
  %64 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %4, float %61, float %62, float %63, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %65 = extractvalue %dx.types.ResRet.f32 %64, 0
  %66 = extractvalue %dx.types.ResRet.f32 %64, 1
  %67 = extractvalue %dx.types.ResRet.f32 %64, 2
  br label %355

; <label>:68                                      ; preds = %48
  %69 = and i32 %51, 127
  switch i32 %69, label %355 [
    i32 1, label %70
    i32 2, label %70
    i32 0, label %70
    i32 3, label %100
    i32 4, label %221
  ]

; <label>:70                                      ; preds = %68, %68, %68
  %71 = call float @dx.op.unary.f32(i32 7, float %28)  ; Saturate(value)
  %72 = call float @dx.op.unary.f32(i32 7, float %36)  ; Saturate(value)
  %73 = call float @dx.op.unary.f32(i32 7, float %44)  ; Saturate(value)
  %74 = call float @dx.op.unary.f32(i32 23, float %71)  ; Log(value)
  %75 = call float @dx.op.unary.f32(i32 23, float %72)  ; Log(value)
  %76 = call float @dx.op.unary.f32(i32 23, float %73)  ; Log(value)
  %77 = fmul fast float %74, 0x3FDAAAAAA0000000
  %78 = fmul fast float %75, 0x3FDAAAAAA0000000
  %79 = fmul fast float %76, 0x3FDAAAAAA0000000
  %80 = call float @dx.op.unary.f32(i32 21, float %77)  ; Exp(value)
  %81 = call float @dx.op.unary.f32(i32 21, float %78)  ; Exp(value)
  %82 = call float @dx.op.unary.f32(i32 21, float %79)  ; Exp(value)
  %83 = fmul fast float %80, 0x3FF0E147A0000000
  %84 = fmul fast float %81, 0x3FF0E147A0000000
  %85 = fmul fast float %82, 0x3FF0E147A0000000
  %86 = fadd fast float %83, 0xBFAC28F5C0000000
  %87 = fadd fast float %84, 0xBFAC28F5C0000000
  %88 = fadd fast float %85, 0xBFAC28F5C0000000
  %89 = call float @dx.op.unary.f32(i32 7, float %86)  ; Saturate(value)
  %90 = call float @dx.op.unary.f32(i32 7, float %87)  ; Saturate(value)
  %91 = call float @dx.op.unary.f32(i32 7, float %88)  ; Saturate(value)
  %92 = extractvalue %dx.types.CBufRet.f32 %49, 2
  %93 = extractvalue %dx.types.CBufRet.f32 %49, 3
  %94 = fmul fast float %92, %89
  %95 = fmul fast float %92, %90
  %96 = fmul fast float %92, %91
  %97 = fadd fast float %94, %93
  %98 = fadd fast float %95, %93
  %99 = fadd fast float %96, %93
  br label %355

; <label>:100                                     ; preds = %68
  %101 = fmul fast float %28, 0x4163D57C00000000
  %102 = fmul fast float %36, 0x4163D57C00000000
  %103 = fmul fast float %44, 0x4163D57C00000000
  %104 = fadd fast float %101, 9.999980e+05
  %105 = fadd fast float %102, 9.999980e+05
  %106 = fadd fast float %103, 9.999980e+05
  %107 = fmul fast float %104, %28
  %108 = fmul fast float %105, %36
  %109 = fmul fast float %106, %44
  %110 = fadd fast float %107, 0xC0AFE17A60000000
  %111 = fadd fast float %108, 0xC0AFE17A60000000
  %112 = fadd fast float %109, 0xC0AFE17A60000000
  %113 = fmul fast float %110, %28
  %114 = fmul fast float %111, %36
  %115 = fmul fast float %112, %44
  %116 = fmul fast float %28, 0x40F753C340000000
  %117 = fmul fast float %36, 0x40F753C340000000
  %118 = fmul fast float %44, 0x40F753C340000000
  %119 = fsub fast float 9.999990e+06, %116
  %120 = fsub fast float 9.999990e+06, %117
  %121 = fsub fast float 9.999990e+06, %118
  %122 = fmul fast float %119, %28
  %123 = fmul fast float %120, %36
  %124 = fmul fast float %121, %44
  %125 = fadd fast float %122, 0x4136D1DD80000000
  %126 = fadd fast float %123, 0x4136D1DD80000000
  %127 = fadd fast float %124, 0x4136D1DD80000000
  %128 = fmul fast float %125, %28
  %129 = fmul fast float %126, %36
  %130 = fmul fast float %127, %44
  %131 = fadd fast float %128, 1.000000e+00
  %132 = fadd fast float %129, 1.000000e+00
  %133 = fadd fast float %130, 1.000000e+00
  %134 = fdiv fast float %113, %131
  %135 = fdiv fast float %114, %132
  %136 = fdiv fast float %115, %133
  %137 = call float @dx.op.unary.f32(i32 7, float %134)  ; Saturate(value)
  %138 = call float @dx.op.unary.f32(i32 7, float %135)  ; Saturate(value)
  %139 = call float @dx.op.unary.f32(i32 7, float %136)  ; Saturate(value)
  %140 = extractvalue %dx.types.CBufRet.f32 %49, 1
  %141 = fmul fast float %137, 0x3FE413A920000000
  %142 = call float @dx.op.tertiary.f32(i32 46, float 0x3FD5134040000000, float %138, float %141)  ; FMad(a,b,c)
  %143 = call float @dx.op.tertiary.f32(i32 46, float 0x3FA62B6AE0000000, float %139, float %142)  ; FMad(a,b,c)
  %144 = fmul fast float %137, 0x3FB1B089A0000000
  %145 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED6C8B40000000, float %138, float %144)  ; FMad(a,b,c)
  %146 = call float @dx.op.tertiary.f32(i32 46, float 0x3F8758E220000000, float %139, float %145)  ; FMad(a,b,c)
  %147 = fmul fast float %137, 0x3F90CB2960000000
  %148 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB6872B00000000, float %138, float %147)  ; FMad(a,b,c)
  %149 = call float @dx.op.tertiary.f32(i32 46, float 0x3FECA8C160000000, float %139, float %148)  ; FMad(a,b,c)
  %150 = fmul fast float %143, %140
  %151 = fmul fast float %146, %140
  %152 = fmul fast float %149, %140
  %153 = fmul fast float %150, 0x3F847AE140000000
  %154 = fmul fast float %151, 0x3F847AE140000000
  %155 = fmul fast float %152, 0x3F847AE140000000
  %156 = fmul fast float %150, 0x40B4D2F520000000
  %157 = fmul fast float %151, 0x40B4D2F520000000
  %158 = fmul fast float %152, 0x40B4D2F520000000
  %159 = fadd fast float %156, 0x41869ECF20000000
  %160 = fadd fast float %157, 0x41869ECF20000000
  %161 = fadd fast float %158, 0x41869ECF20000000
  %162 = fmul fast float %159, %153
  %163 = fmul fast float %160, %154
  %164 = fmul fast float %161, %155
  %165 = fadd fast float %162, 0x417BB79C60000000
  %166 = fadd fast float %163, 0x417BB79C60000000
  %167 = fadd fast float %164, 0x417BB79C60000000
  %168 = fmul fast float %165, %153
  %169 = fmul fast float %166, %154
  %170 = fmul fast float %167, %155
  %171 = fadd fast float %168, 0x41218DE180000000
  %172 = fadd fast float %169, 0x41218DE180000000
  %173 = fadd fast float %170, 0x41218DE180000000
  %174 = fmul fast float %171, %153
  %175 = fmul fast float %172, %154
  %176 = fmul fast float %173, %155
  %177 = fadd fast float %174, 0x4077F174E0000000
  %178 = fadd fast float %175, 0x4077F174E0000000
  %179 = fadd fast float %176, 0x4077F174E0000000
  %180 = fmul fast float %177, %153
  %181 = fmul fast float %178, %154
  %182 = fmul fast float %179, %155
  %183 = fadd fast float %180, 0x3F3FF79B80000000
  %184 = fadd fast float %181, 0x3F3FF79B80000000
  %185 = fadd fast float %182, 0x3F3FF79B80000000
  %186 = fmul fast float %150, 0x412442D320000000
  %187 = fmul fast float %151, 0x412442D320000000
  %188 = fmul fast float %152, 0x412442D320000000
  %189 = fadd fast float %186, 0x419385D5C0000000
  %190 = fadd fast float %187, 0x419385D5C0000000
  %191 = fadd fast float %188, 0x419385D5C0000000
  %192 = fmul fast float %189, %153
  %193 = fmul fast float %190, %154
  %194 = fmul fast float %191, %155
  %195 = fadd fast float %192, 4.182885e+06
  %196 = fadd fast float %193, 4.182885e+06
  %197 = fadd fast float %194, 4.182885e+06
  %198 = fmul fast float %195, %153
  %199 = fmul fast float %196, %154
  %200 = fmul fast float %197, %155
  %201 = fadd fast float %198, 0x40C4D633C0000000
  %202 = fadd fast float %199, 0x40C4D633C0000000
  %203 = fadd fast float %200, 0x40C4D633C0000000
  %204 = fmul fast float %201, %153
  %205 = fmul fast float %202, %154
  %206 = fmul fast float %203, %155
  %207 = fadd fast float %204, 1.000000e+00
  %208 = fadd fast float %205, 1.000000e+00
  %209 = fadd fast float %206, 1.000000e+00
  %210 = fdiv fast float %183, %207
  %211 = fdiv fast float %184, %208
  %212 = fdiv fast float %185, %209
  %213 = extractvalue %dx.types.CBufRet.f32 %49, 2
  %214 = extractvalue %dx.types.CBufRet.f32 %49, 3
  %215 = fmul fast float %213, %210
  %216 = fmul fast float %213, %211
  %217 = fmul fast float %213, %212
  %218 = fadd fast float %215, %214
  %219 = fadd fast float %216, %214
  %220 = fadd fast float %217, %214
  br label %355

; <label>:221                                     ; preds = %68
  %222 = fmul fast float %28, 0x4163D57C00000000
  %223 = fmul fast float %36, 0x4163D57C00000000
  %224 = fmul fast float %44, 0x4163D57C00000000
  %225 = fadd fast float %222, 9.999980e+05
  %226 = fadd fast float %223, 9.999980e+05
  %227 = fadd fast float %224, 9.999980e+05
  %228 = fmul fast float %225, %28
  %229 = fmul fast float %226, %36
  %230 = fmul fast float %227, %44
  %231 = fadd fast float %228, 0xC0AFE17A60000000
  %232 = fadd fast float %229, 0xC0AFE17A60000000
  %233 = fadd fast float %230, 0xC0AFE17A60000000
  %234 = fmul fast float %231, %28
  %235 = fmul fast float %232, %36
  %236 = fmul fast float %233, %44
  %237 = fmul fast float %28, 0x40F753C340000000
  %238 = fmul fast float %36, 0x40F753C340000000
  %239 = fmul fast float %44, 0x40F753C340000000
  %240 = fsub fast float 9.999990e+06, %237
  %241 = fsub fast float 9.999990e+06, %238
  %242 = fsub fast float 9.999990e+06, %239
  %243 = fmul fast float %240, %28
  %244 = fmul fast float %241, %36
  %245 = fmul fast float %242, %44
  %246 = fadd fast float %243, 0x4136D1DD80000000
  %247 = fadd fast float %244, 0x4136D1DD80000000
  %248 = fadd fast float %245, 0x4136D1DD80000000
  %249 = fmul fast float %246, %28
  %250 = fmul fast float %247, %36
  %251 = fmul fast float %248, %44
  %252 = fadd fast float %249, 1.000000e+00
  %253 = fadd fast float %250, 1.000000e+00
  %254 = fadd fast float %251, 1.000000e+00
  %255 = fdiv fast float %234, %252
  %256 = fdiv fast float %235, %253
  %257 = fdiv fast float %236, %254
  %258 = call float @dx.op.unary.f32(i32 7, float %255)  ; Saturate(value)
  %259 = call float @dx.op.unary.f32(i32 7, float %256)  ; Saturate(value)
  %260 = call float @dx.op.unary.f32(i32 7, float %257)  ; Saturate(value)
  %261 = extractvalue %dx.types.CBufRet.f32 %49, 1
  %262 = fmul fast float %258, 0x3FEA519BC0000000
  %263 = call float @dx.op.tertiary.f32(i32 46, float 0x3FC6B990A0000000, float %259, float %262)  ; FMad(a,b,c)
  %264 = fmul fast float %258, 0x3FA0FED480000000
  %265 = call float @dx.op.tertiary.f32(i32 46, float 0x3FEEF012C0000000, float %259, float %264)  ; FMad(a,b,c)
  %266 = fmul fast float %258, 0x3F917E1C00000000
  %267 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB288A2E0000000, float %259, float %266)  ; FMad(a,b,c)
  %268 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED22FAA0000000, float %260, float %267)  ; FMad(a,b,c)
  %269 = call float @dx.op.binary.f32(i32 35, float %258, float %259)  ; FMax(a,b)
  %270 = call float @dx.op.binary.f32(i32 35, float %269, float %260)  ; FMax(a,b)
  %271 = fadd fast float %270, -1.000000e+00
  %272 = fmul fast float %271, 2.500000e-01
  %273 = call float @dx.op.unary.f32(i32 7, float %272)  ; Saturate(value)
  %274 = fsub fast float 1.000000e+00, %273
  %275 = fmul fast float %274, %263
  %276 = fmul fast float %274, %265
  %277 = fmul fast float %274, %268
  %278 = fmul fast float %273, %258
  %279 = fmul fast float %273, %259
  %280 = fmul fast float %273, %260
  %281 = fadd fast float %275, %278
  %282 = fadd fast float %276, %279
  %283 = fadd fast float %277, %280
  %284 = fmul fast float %281, %261
  %285 = fmul fast float %282, %261
  %286 = fmul fast float %283, %261
  %287 = fmul fast float %284, 0x3F847AE140000000
  %288 = fmul fast float %285, 0x3F847AE140000000
  %289 = fmul fast float %286, 0x3F847AE140000000
  %290 = fmul fast float %284, 0x40B4D2F520000000
  %291 = fmul fast float %285, 0x40B4D2F520000000
  %292 = fmul fast float %286, 0x40B4D2F520000000
  %293 = fadd fast float %290, 0x41869ECF20000000
  %294 = fadd fast float %291, 0x41869ECF20000000
  %295 = fadd fast float %292, 0x41869ECF20000000
  %296 = fmul fast float %293, %287
  %297 = fmul fast float %294, %288
  %298 = fmul fast float %295, %289
  %299 = fadd fast float %296, 0x417BB79C60000000
  %300 = fadd fast float %297, 0x417BB79C60000000
  %301 = fadd fast float %298, 0x417BB79C60000000
  %302 = fmul fast float %299, %287
  %303 = fmul fast float %300, %288
  %304 = fmul fast float %301, %289
  %305 = fadd fast float %302, 0x41218DE180000000
  %306 = fadd fast float %303, 0x41218DE180000000
  %307 = fadd fast float %304, 0x41218DE180000000
  %308 = fmul fast float %305, %287
  %309 = fmul fast float %306, %288
  %310 = fmul fast float %307, %289
  %311 = fadd fast float %308, 0x4077F174E0000000
  %312 = fadd fast float %309, 0x4077F174E0000000
  %313 = fadd fast float %310, 0x4077F174E0000000
  %314 = fmul fast float %311, %287
  %315 = fmul fast float %312, %288
  %316 = fmul fast float %313, %289
  %317 = fadd fast float %314, 0x3F3FF79B80000000
  %318 = fadd fast float %315, 0x3F3FF79B80000000
  %319 = fadd fast float %316, 0x3F3FF79B80000000
  %320 = fmul fast float %284, 0x412442D320000000
  %321 = fmul fast float %285, 0x412442D320000000
  %322 = fmul fast float %286, 0x412442D320000000
  %323 = fadd fast float %320, 0x419385D5C0000000
  %324 = fadd fast float %321, 0x419385D5C0000000
  %325 = fadd fast float %322, 0x419385D5C0000000
  %326 = fmul fast float %323, %287
  %327 = fmul fast float %324, %288
  %328 = fmul fast float %325, %289
  %329 = fadd fast float %326, 4.182885e+06
  %330 = fadd fast float %327, 4.182885e+06
  %331 = fadd fast float %328, 4.182885e+06
  %332 = fmul fast float %329, %287
  %333 = fmul fast float %330, %288
  %334 = fmul fast float %331, %289
  %335 = fadd fast float %332, 0x40C4D633C0000000
  %336 = fadd fast float %333, 0x40C4D633C0000000
  %337 = fadd fast float %334, 0x40C4D633C0000000
  %338 = fmul fast float %335, %287
  %339 = fmul fast float %336, %288
  %340 = fmul fast float %337, %289
  %341 = fadd fast float %338, 1.000000e+00
  %342 = fadd fast float %339, 1.000000e+00
  %343 = fadd fast float %340, 1.000000e+00
  %344 = fdiv fast float %317, %341
  %345 = fdiv fast float %318, %342
  %346 = fdiv fast float %319, %343
  %347 = extractvalue %dx.types.CBufRet.f32 %49, 2
  %348 = extractvalue %dx.types.CBufRet.f32 %49, 3
  %349 = fmul fast float %347, %344
  %350 = fmul fast float %347, %345
  %351 = fmul fast float %347, %346
  %352 = fadd fast float %349, %348
  %353 = fadd fast float %350, %348
  %354 = fadd fast float %351, %348
  br label %355

; <label>:355                                     ; preds = %221, %100, %70, %68, %54
  %356 = phi float [ %65, %54 ], [ %28, %68 ], [ %352, %221 ], [ %218, %100 ], [ %97, %70 ]
  %357 = phi float [ %66, %54 ], [ %36, %68 ], [ %353, %221 ], [ %219, %100 ], [ %98, %70 ]
  %358 = phi float [ %67, %54 ], [ %44, %68 ], [ %354, %221 ], [ %220, %100 ], [ %99, %70 ]
  %359 = fmul fast float %356, %45
  %360 = fmul fast float %357, %45
  %361 = fmul fast float %358, %45
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %359)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %360)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %361)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %45)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind
declare void @dx.op.discard(i32, i1) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
!dx.viewIdState = !{!14}
!dx.entryPoints = !{!15}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !9, !11}
!5 = !{!6, !8}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 71, i32 1, i32 4, i32 0, !7}
!9 = !{!10}
!10 = !{i32 0, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!11 = !{!12, !13}
!12 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!13 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!14 = !{[12 x i32] [i32 10, i32 4, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 7, i32 15, i32 15, i32 15]}
!15 = !{void ()* @ps_main, !"ps_main", !16, !4, null}
!16 = !{!17, !24, null}
!17 = !{!18, !20, !22}
!18 = !{i32 0, !"SV_Position", i8 9, i8 3, !19, i8 4, i32 1, i8 4, i32 0, i8 0, null}
!19 = !{i32 0}
!20 = !{i32 1, !"COLOR", i8 9, i8 0, !19, i8 2, i32 1, i8 4, i32 1, i8 0, !21}
!21 = !{i32 3, i32 15}
!22 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !19, i8 2, i32 1, i8 2, i32 2, i8 0, !23}
!23 = !{i32 3, i32 3}
!24 = !{!25}
!25 = !{i32 0, !"SV_Target", i8 9, i8 16, !19, i8 0, i32 1, i8 4, i32 0, i8 0, !21}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 1}

