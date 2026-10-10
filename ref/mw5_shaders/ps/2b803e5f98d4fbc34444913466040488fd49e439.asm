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
; shader hash: 76a641e0f996fe550f07a335955736cd
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
;                                   texture     f32          2d      T0     t76,space2     1
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
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 76, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %6 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %7 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %8 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %9 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %10 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %11 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %3, float %5, float %6, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %12 = extractvalue %dx.types.ResRet.f32 %11, 3
  %13 = fmul fast float %12, 2.000000e+00
  %14 = fadd fast float %13, -1.000000e+00
  %15 = call float @dx.op.unary.f32(i32 83, float %14)  ; DerivCoarseX(value)
  %16 = call float @dx.op.unary.f32(i32 84, float %14)  ; DerivCoarseY(value)
  %17 = fmul fast float %15, %15
  %18 = fmul fast float %16, %16
  %19 = fadd fast float %18, %17
  %20 = call float @dx.op.unary.f32(i32 24, float %19)  ; Sqrt(value)
  %21 = fmul fast float %20, 2.000000e+00
  %22 = fadd fast float %20, %14
  %23 = fdiv fast float %22, %21
  %24 = call float @dx.op.unary.f32(i32 7, float %23)  ; Saturate(value)
  %25 = fmul fast float %24, 2.000000e+00
  %26 = fsub fast float 3.000000e+00, %25
  %27 = fmul fast float %24, %24
  %28 = fmul fast float %27, %10
  %29 = fmul fast float %28, %26
  %30 = fcmp fast ole float %7, 0x3FA4B5DCC0000000
  %31 = fmul fast float %7, 0x3FB3D07220000000
  %32 = fadd fast float %7, 0x3FAC28F5C0000000
  %33 = fmul fast float %32, 0x3FEE54EDE0000000
  %34 = call float @dx.op.unary.f32(i32 23, float %33)  ; Log(value)
  %35 = fmul fast float %34, 0x4003333340000000
  %36 = call float @dx.op.unary.f32(i32 21, float %35)  ; Exp(value)
  %37 = select i1 %30, float %31, float %36
  %38 = fcmp fast ole float %8, 0x3FA4B5DCC0000000
  %39 = fmul fast float %8, 0x3FB3D07220000000
  %40 = fadd fast float %8, 0x3FAC28F5C0000000
  %41 = fmul fast float %40, 0x3FEE54EDE0000000
  %42 = call float @dx.op.unary.f32(i32 23, float %41)  ; Log(value)
  %43 = fmul fast float %42, 0x4003333340000000
  %44 = call float @dx.op.unary.f32(i32 21, float %43)  ; Exp(value)
  %45 = select i1 %38, float %39, float %44
  %46 = fcmp fast ole float %9, 0x3FA4B5DCC0000000
  %47 = fmul fast float %9, 0x3FB3D07220000000
  %48 = fadd fast float %9, 0x3FAC28F5C0000000
  %49 = fmul fast float %48, 0x3FEE54EDE0000000
  %50 = call float @dx.op.unary.f32(i32 23, float %49)  ; Log(value)
  %51 = fmul fast float %50, 0x4003333340000000
  %52 = call float @dx.op.unary.f32(i32 21, float %51)  ; Exp(value)
  %53 = select i1 %46, float %47, float %52
  %54 = call float @dx.op.binary.f32(i32 35, float %29, float 0.000000e+00)  ; FMax(a,b)
  %55 = fcmp fast oeq float %54, 0.000000e+00
  br i1 %55, label %56, label %57, !dx.controlflow.hints !25

; <label>:56                                      ; preds = %0
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %57

; <label>:57                                      ; preds = %56, %0
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %58 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %59 = extractvalue %dx.types.CBufRet.f32 %58, 0
  %60 = bitcast float %59 to i32
  %61 = and i32 %60, 128
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %77, label %63

; <label>:63                                      ; preds = %57
  %64 = call float @dx.op.unary.f32(i32 24, float %37)  ; Sqrt(value)
  %65 = call float @dx.op.unary.f32(i32 24, float %45)  ; Sqrt(value)
  %66 = call float @dx.op.unary.f32(i32 24, float %53)  ; Sqrt(value)
  %67 = fmul fast float %64, 9.687500e-01
  %68 = fmul fast float %65, 9.687500e-01
  %69 = fmul fast float %66, 9.687500e-01
  %70 = fadd fast float %67, 1.562500e-02
  %71 = fadd fast float %68, 1.562500e-02
  %72 = fadd fast float %69, 1.562500e-02
  %73 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %3, float %70, float %71, float %72, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %74 = extractvalue %dx.types.ResRet.f32 %73, 0
  %75 = extractvalue %dx.types.ResRet.f32 %73, 1
  %76 = extractvalue %dx.types.ResRet.f32 %73, 2
  br label %364

; <label>:77                                      ; preds = %57
  %78 = and i32 %60, 127
  switch i32 %78, label %364 [
    i32 1, label %79
    i32 2, label %79
    i32 0, label %79
    i32 3, label %109
    i32 4, label %230
  ]

; <label>:79                                      ; preds = %77, %77, %77
  %80 = call float @dx.op.unary.f32(i32 7, float %37)  ; Saturate(value)
  %81 = call float @dx.op.unary.f32(i32 7, float %45)  ; Saturate(value)
  %82 = call float @dx.op.unary.f32(i32 7, float %53)  ; Saturate(value)
  %83 = call float @dx.op.unary.f32(i32 23, float %80)  ; Log(value)
  %84 = call float @dx.op.unary.f32(i32 23, float %81)  ; Log(value)
  %85 = call float @dx.op.unary.f32(i32 23, float %82)  ; Log(value)
  %86 = fmul fast float %83, 0x3FDAAAAAA0000000
  %87 = fmul fast float %84, 0x3FDAAAAAA0000000
  %88 = fmul fast float %85, 0x3FDAAAAAA0000000
  %89 = call float @dx.op.unary.f32(i32 21, float %86)  ; Exp(value)
  %90 = call float @dx.op.unary.f32(i32 21, float %87)  ; Exp(value)
  %91 = call float @dx.op.unary.f32(i32 21, float %88)  ; Exp(value)
  %92 = fmul fast float %89, 0x3FF0E147A0000000
  %93 = fmul fast float %90, 0x3FF0E147A0000000
  %94 = fmul fast float %91, 0x3FF0E147A0000000
  %95 = fadd fast float %92, 0xBFAC28F5C0000000
  %96 = fadd fast float %93, 0xBFAC28F5C0000000
  %97 = fadd fast float %94, 0xBFAC28F5C0000000
  %98 = call float @dx.op.unary.f32(i32 7, float %95)  ; Saturate(value)
  %99 = call float @dx.op.unary.f32(i32 7, float %96)  ; Saturate(value)
  %100 = call float @dx.op.unary.f32(i32 7, float %97)  ; Saturate(value)
  %101 = extractvalue %dx.types.CBufRet.f32 %58, 2
  %102 = extractvalue %dx.types.CBufRet.f32 %58, 3
  %103 = fmul fast float %101, %98
  %104 = fmul fast float %101, %99
  %105 = fmul fast float %101, %100
  %106 = fadd fast float %103, %102
  %107 = fadd fast float %104, %102
  %108 = fadd fast float %105, %102
  br label %364

; <label>:109                                     ; preds = %77
  %110 = fmul fast float %37, 0x4163D57C00000000
  %111 = fmul fast float %45, 0x4163D57C00000000
  %112 = fmul fast float %53, 0x4163D57C00000000
  %113 = fadd fast float %110, 9.999980e+05
  %114 = fadd fast float %111, 9.999980e+05
  %115 = fadd fast float %112, 9.999980e+05
  %116 = fmul fast float %113, %37
  %117 = fmul fast float %114, %45
  %118 = fmul fast float %115, %53
  %119 = fadd fast float %116, 0xC0AFE17A60000000
  %120 = fadd fast float %117, 0xC0AFE17A60000000
  %121 = fadd fast float %118, 0xC0AFE17A60000000
  %122 = fmul fast float %119, %37
  %123 = fmul fast float %120, %45
  %124 = fmul fast float %121, %53
  %125 = fmul fast float %37, 0x40F753C340000000
  %126 = fmul fast float %45, 0x40F753C340000000
  %127 = fmul fast float %53, 0x40F753C340000000
  %128 = fsub fast float 9.999990e+06, %125
  %129 = fsub fast float 9.999990e+06, %126
  %130 = fsub fast float 9.999990e+06, %127
  %131 = fmul fast float %128, %37
  %132 = fmul fast float %129, %45
  %133 = fmul fast float %130, %53
  %134 = fadd fast float %131, 0x4136D1DD80000000
  %135 = fadd fast float %132, 0x4136D1DD80000000
  %136 = fadd fast float %133, 0x4136D1DD80000000
  %137 = fmul fast float %134, %37
  %138 = fmul fast float %135, %45
  %139 = fmul fast float %136, %53
  %140 = fadd fast float %137, 1.000000e+00
  %141 = fadd fast float %138, 1.000000e+00
  %142 = fadd fast float %139, 1.000000e+00
  %143 = fdiv fast float %122, %140
  %144 = fdiv fast float %123, %141
  %145 = fdiv fast float %124, %142
  %146 = call float @dx.op.unary.f32(i32 7, float %143)  ; Saturate(value)
  %147 = call float @dx.op.unary.f32(i32 7, float %144)  ; Saturate(value)
  %148 = call float @dx.op.unary.f32(i32 7, float %145)  ; Saturate(value)
  %149 = extractvalue %dx.types.CBufRet.f32 %58, 1
  %150 = fmul fast float %146, 0x3FE413A920000000
  %151 = call float @dx.op.tertiary.f32(i32 46, float 0x3FD5134040000000, float %147, float %150)  ; FMad(a,b,c)
  %152 = call float @dx.op.tertiary.f32(i32 46, float 0x3FA62B6AE0000000, float %148, float %151)  ; FMad(a,b,c)
  %153 = fmul fast float %146, 0x3FB1B089A0000000
  %154 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED6C8B40000000, float %147, float %153)  ; FMad(a,b,c)
  %155 = call float @dx.op.tertiary.f32(i32 46, float 0x3F8758E220000000, float %148, float %154)  ; FMad(a,b,c)
  %156 = fmul fast float %146, 0x3F90CB2960000000
  %157 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB6872B00000000, float %147, float %156)  ; FMad(a,b,c)
  %158 = call float @dx.op.tertiary.f32(i32 46, float 0x3FECA8C160000000, float %148, float %157)  ; FMad(a,b,c)
  %159 = fmul fast float %152, %149
  %160 = fmul fast float %155, %149
  %161 = fmul fast float %158, %149
  %162 = fmul fast float %159, 0x3F847AE140000000
  %163 = fmul fast float %160, 0x3F847AE140000000
  %164 = fmul fast float %161, 0x3F847AE140000000
  %165 = fmul fast float %159, 0x40B4D2F520000000
  %166 = fmul fast float %160, 0x40B4D2F520000000
  %167 = fmul fast float %161, 0x40B4D2F520000000
  %168 = fadd fast float %165, 0x41869ECF20000000
  %169 = fadd fast float %166, 0x41869ECF20000000
  %170 = fadd fast float %167, 0x41869ECF20000000
  %171 = fmul fast float %168, %162
  %172 = fmul fast float %169, %163
  %173 = fmul fast float %170, %164
  %174 = fadd fast float %171, 0x417BB79C60000000
  %175 = fadd fast float %172, 0x417BB79C60000000
  %176 = fadd fast float %173, 0x417BB79C60000000
  %177 = fmul fast float %174, %162
  %178 = fmul fast float %175, %163
  %179 = fmul fast float %176, %164
  %180 = fadd fast float %177, 0x41218DE180000000
  %181 = fadd fast float %178, 0x41218DE180000000
  %182 = fadd fast float %179, 0x41218DE180000000
  %183 = fmul fast float %180, %162
  %184 = fmul fast float %181, %163
  %185 = fmul fast float %182, %164
  %186 = fadd fast float %183, 0x4077F174E0000000
  %187 = fadd fast float %184, 0x4077F174E0000000
  %188 = fadd fast float %185, 0x4077F174E0000000
  %189 = fmul fast float %186, %162
  %190 = fmul fast float %187, %163
  %191 = fmul fast float %188, %164
  %192 = fadd fast float %189, 0x3F3FF79B80000000
  %193 = fadd fast float %190, 0x3F3FF79B80000000
  %194 = fadd fast float %191, 0x3F3FF79B80000000
  %195 = fmul fast float %159, 0x412442D320000000
  %196 = fmul fast float %160, 0x412442D320000000
  %197 = fmul fast float %161, 0x412442D320000000
  %198 = fadd fast float %195, 0x419385D5C0000000
  %199 = fadd fast float %196, 0x419385D5C0000000
  %200 = fadd fast float %197, 0x419385D5C0000000
  %201 = fmul fast float %198, %162
  %202 = fmul fast float %199, %163
  %203 = fmul fast float %200, %164
  %204 = fadd fast float %201, 4.182885e+06
  %205 = fadd fast float %202, 4.182885e+06
  %206 = fadd fast float %203, 4.182885e+06
  %207 = fmul fast float %204, %162
  %208 = fmul fast float %205, %163
  %209 = fmul fast float %206, %164
  %210 = fadd fast float %207, 0x40C4D633C0000000
  %211 = fadd fast float %208, 0x40C4D633C0000000
  %212 = fadd fast float %209, 0x40C4D633C0000000
  %213 = fmul fast float %210, %162
  %214 = fmul fast float %211, %163
  %215 = fmul fast float %212, %164
  %216 = fadd fast float %213, 1.000000e+00
  %217 = fadd fast float %214, 1.000000e+00
  %218 = fadd fast float %215, 1.000000e+00
  %219 = fdiv fast float %192, %216
  %220 = fdiv fast float %193, %217
  %221 = fdiv fast float %194, %218
  %222 = extractvalue %dx.types.CBufRet.f32 %58, 2
  %223 = extractvalue %dx.types.CBufRet.f32 %58, 3
  %224 = fmul fast float %222, %219
  %225 = fmul fast float %222, %220
  %226 = fmul fast float %222, %221
  %227 = fadd fast float %224, %223
  %228 = fadd fast float %225, %223
  %229 = fadd fast float %226, %223
  br label %364

; <label>:230                                     ; preds = %77
  %231 = fmul fast float %37, 0x4163D57C00000000
  %232 = fmul fast float %45, 0x4163D57C00000000
  %233 = fmul fast float %53, 0x4163D57C00000000
  %234 = fadd fast float %231, 9.999980e+05
  %235 = fadd fast float %232, 9.999980e+05
  %236 = fadd fast float %233, 9.999980e+05
  %237 = fmul fast float %234, %37
  %238 = fmul fast float %235, %45
  %239 = fmul fast float %236, %53
  %240 = fadd fast float %237, 0xC0AFE17A60000000
  %241 = fadd fast float %238, 0xC0AFE17A60000000
  %242 = fadd fast float %239, 0xC0AFE17A60000000
  %243 = fmul fast float %240, %37
  %244 = fmul fast float %241, %45
  %245 = fmul fast float %242, %53
  %246 = fmul fast float %37, 0x40F753C340000000
  %247 = fmul fast float %45, 0x40F753C340000000
  %248 = fmul fast float %53, 0x40F753C340000000
  %249 = fsub fast float 9.999990e+06, %246
  %250 = fsub fast float 9.999990e+06, %247
  %251 = fsub fast float 9.999990e+06, %248
  %252 = fmul fast float %249, %37
  %253 = fmul fast float %250, %45
  %254 = fmul fast float %251, %53
  %255 = fadd fast float %252, 0x4136D1DD80000000
  %256 = fadd fast float %253, 0x4136D1DD80000000
  %257 = fadd fast float %254, 0x4136D1DD80000000
  %258 = fmul fast float %255, %37
  %259 = fmul fast float %256, %45
  %260 = fmul fast float %257, %53
  %261 = fadd fast float %258, 1.000000e+00
  %262 = fadd fast float %259, 1.000000e+00
  %263 = fadd fast float %260, 1.000000e+00
  %264 = fdiv fast float %243, %261
  %265 = fdiv fast float %244, %262
  %266 = fdiv fast float %245, %263
  %267 = call float @dx.op.unary.f32(i32 7, float %264)  ; Saturate(value)
  %268 = call float @dx.op.unary.f32(i32 7, float %265)  ; Saturate(value)
  %269 = call float @dx.op.unary.f32(i32 7, float %266)  ; Saturate(value)
  %270 = extractvalue %dx.types.CBufRet.f32 %58, 1
  %271 = fmul fast float %267, 0x3FEA519BC0000000
  %272 = call float @dx.op.tertiary.f32(i32 46, float 0x3FC6B990A0000000, float %268, float %271)  ; FMad(a,b,c)
  %273 = fmul fast float %267, 0x3FA0FED480000000
  %274 = call float @dx.op.tertiary.f32(i32 46, float 0x3FEEF012C0000000, float %268, float %273)  ; FMad(a,b,c)
  %275 = fmul fast float %267, 0x3F917E1C00000000
  %276 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB288A2E0000000, float %268, float %275)  ; FMad(a,b,c)
  %277 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED22FAA0000000, float %269, float %276)  ; FMad(a,b,c)
  %278 = call float @dx.op.binary.f32(i32 35, float %267, float %268)  ; FMax(a,b)
  %279 = call float @dx.op.binary.f32(i32 35, float %278, float %269)  ; FMax(a,b)
  %280 = fadd fast float %279, -1.000000e+00
  %281 = fmul fast float %280, 2.500000e-01
  %282 = call float @dx.op.unary.f32(i32 7, float %281)  ; Saturate(value)
  %283 = fsub fast float 1.000000e+00, %282
  %284 = fmul fast float %283, %272
  %285 = fmul fast float %283, %274
  %286 = fmul fast float %283, %277
  %287 = fmul fast float %282, %267
  %288 = fmul fast float %282, %268
  %289 = fmul fast float %282, %269
  %290 = fadd fast float %284, %287
  %291 = fadd fast float %285, %288
  %292 = fadd fast float %286, %289
  %293 = fmul fast float %290, %270
  %294 = fmul fast float %291, %270
  %295 = fmul fast float %292, %270
  %296 = fmul fast float %293, 0x3F847AE140000000
  %297 = fmul fast float %294, 0x3F847AE140000000
  %298 = fmul fast float %295, 0x3F847AE140000000
  %299 = fmul fast float %293, 0x40B4D2F520000000
  %300 = fmul fast float %294, 0x40B4D2F520000000
  %301 = fmul fast float %295, 0x40B4D2F520000000
  %302 = fadd fast float %299, 0x41869ECF20000000
  %303 = fadd fast float %300, 0x41869ECF20000000
  %304 = fadd fast float %301, 0x41869ECF20000000
  %305 = fmul fast float %302, %296
  %306 = fmul fast float %303, %297
  %307 = fmul fast float %304, %298
  %308 = fadd fast float %305, 0x417BB79C60000000
  %309 = fadd fast float %306, 0x417BB79C60000000
  %310 = fadd fast float %307, 0x417BB79C60000000
  %311 = fmul fast float %308, %296
  %312 = fmul fast float %309, %297
  %313 = fmul fast float %310, %298
  %314 = fadd fast float %311, 0x41218DE180000000
  %315 = fadd fast float %312, 0x41218DE180000000
  %316 = fadd fast float %313, 0x41218DE180000000
  %317 = fmul fast float %314, %296
  %318 = fmul fast float %315, %297
  %319 = fmul fast float %316, %298
  %320 = fadd fast float %317, 0x4077F174E0000000
  %321 = fadd fast float %318, 0x4077F174E0000000
  %322 = fadd fast float %319, 0x4077F174E0000000
  %323 = fmul fast float %320, %296
  %324 = fmul fast float %321, %297
  %325 = fmul fast float %322, %298
  %326 = fadd fast float %323, 0x3F3FF79B80000000
  %327 = fadd fast float %324, 0x3F3FF79B80000000
  %328 = fadd fast float %325, 0x3F3FF79B80000000
  %329 = fmul fast float %293, 0x412442D320000000
  %330 = fmul fast float %294, 0x412442D320000000
  %331 = fmul fast float %295, 0x412442D320000000
  %332 = fadd fast float %329, 0x419385D5C0000000
  %333 = fadd fast float %330, 0x419385D5C0000000
  %334 = fadd fast float %331, 0x419385D5C0000000
  %335 = fmul fast float %332, %296
  %336 = fmul fast float %333, %297
  %337 = fmul fast float %334, %298
  %338 = fadd fast float %335, 4.182885e+06
  %339 = fadd fast float %336, 4.182885e+06
  %340 = fadd fast float %337, 4.182885e+06
  %341 = fmul fast float %338, %296
  %342 = fmul fast float %339, %297
  %343 = fmul fast float %340, %298
  %344 = fadd fast float %341, 0x40C4D633C0000000
  %345 = fadd fast float %342, 0x40C4D633C0000000
  %346 = fadd fast float %343, 0x40C4D633C0000000
  %347 = fmul fast float %344, %296
  %348 = fmul fast float %345, %297
  %349 = fmul fast float %346, %298
  %350 = fadd fast float %347, 1.000000e+00
  %351 = fadd fast float %348, 1.000000e+00
  %352 = fadd fast float %349, 1.000000e+00
  %353 = fdiv fast float %326, %350
  %354 = fdiv fast float %327, %351
  %355 = fdiv fast float %328, %352
  %356 = extractvalue %dx.types.CBufRet.f32 %58, 2
  %357 = extractvalue %dx.types.CBufRet.f32 %58, 3
  %358 = fmul fast float %356, %353
  %359 = fmul fast float %356, %354
  %360 = fmul fast float %356, %355
  %361 = fadd fast float %358, %357
  %362 = fadd fast float %359, %357
  %363 = fadd fast float %360, %357
  br label %364

; <label>:364                                     ; preds = %230, %109, %79, %77, %63
  %365 = phi float [ %74, %63 ], [ %37, %77 ], [ %361, %230 ], [ %227, %109 ], [ %106, %79 ]
  %366 = phi float [ %75, %63 ], [ %45, %77 ], [ %362, %230 ], [ %228, %109 ], [ %107, %79 ]
  %367 = phi float [ %76, %63 ], [ %53, %77 ], [ %363, %230 ], [ %229, %109 ], [ %108, %79 ]
  %368 = fmul fast float %365, %54
  %369 = fmul fast float %366, %54
  %370 = fmul fast float %367, %54
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %368)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %369)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %370)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %54)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!13}
!dx.entryPoints = !{!14}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !9, !11}
!5 = !{!6, !8}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 76, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 71, i32 1, i32 4, i32 0, !7}
!9 = !{!10}
!10 = !{i32 0, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!11 = !{!12}
!12 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!13 = !{[12 x i32] [i32 10, i32 4, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 7, i32 15, i32 15, i32 15]}
!14 = !{void ()* @ps_main, !"ps_main", !15, !4, null}
!15 = !{!16, !23, null}
!16 = !{!17, !19, !21}
!17 = !{i32 0, !"SV_Position", i8 9, i8 3, !18, i8 4, i32 1, i8 4, i32 0, i8 0, null}
!18 = !{i32 0}
!19 = !{i32 1, !"COLOR", i8 9, i8 0, !18, i8 2, i32 1, i8 4, i32 1, i8 0, !20}
!20 = !{i32 3, i32 15}
!21 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !18, i8 2, i32 1, i8 2, i32 2, i8 0, !22}
!22 = !{i32 3, i32 3}
!23 = !{!24}
!24 = !{i32 0, !"SV_Target", i8 9, i8 16, !18, i8 0, i32 1, i8 4, i32 0, i8 0, !20}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 1}

