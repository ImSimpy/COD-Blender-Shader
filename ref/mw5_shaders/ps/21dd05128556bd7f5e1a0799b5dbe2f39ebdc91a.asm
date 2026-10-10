;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float       
; COLOR                    0   xyzw        1     NONE   float   xyz 
; TEXCOORD                 0   xy          2     NONE   float   xy  
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 6ce3c0fdbb603a521488f3cb6fcce827
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
;   [32 x i8] (type annotation not present)
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
;                                   texture     f32          3d      T1     t72,space2     1
;
;
; ViewId state:
;
; Number of inputs: 10, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 4, 5, 6, 8, 9 }
;   output 1 depends on inputs: { 4, 5, 6, 8, 9 }
;   output 2 depends on inputs: { 4, 5, 6, 8, 9 }
;   output 3 depends on inputs: { 8, 9 }
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
%perObject = type { <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 72, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %6 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %7 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %8 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %9 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %10 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %3, float %5, float %6, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %11 = extractvalue %dx.types.ResRet.f32 %10, 0
  %12 = extractvalue %dx.types.ResRet.f32 %10, 1
  %13 = extractvalue %dx.types.ResRet.f32 %10, 2
  %14 = fmul fast float %11, %7
  %15 = fmul fast float %12, %8
  %16 = fmul fast float %13, %9
  %17 = fadd fast float %5, -5.000000e-01
  %18 = fadd fast float %6, -5.000000e-01
  %19 = fmul fast float %17, 2.000000e+00
  %20 = fmul fast float %18, 2.000000e+00
  %21 = call float @dx.op.dot2.f32(i32 54, float %19, float %20, float %19, float %20)  ; Dot2(ax,ay,bx,by)
  %22 = call float @dx.op.unary.f32(i32 24, float %21)  ; Sqrt(value)
  %23 = call float @dx.op.unary.f32(i32 7, float %22)  ; Saturate(value)
  %24 = fsub fast float 1.000000e+00, %23
  %25 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %26 = extractvalue %dx.types.CBufRet.f32 %25, 1
  %27 = extractvalue %dx.types.CBufRet.f32 %25, 0
  %28 = fsub fast float %26, %27
  %29 = fsub fast float %24, %27
  %30 = fdiv fast float %29, %28
  %31 = call float @dx.op.unary.f32(i32 7, float %30)  ; Saturate(value)
  %32 = fmul fast float %31, 2.000000e+00
  %33 = fsub fast float 3.000000e+00, %32
  %34 = fmul fast float %31, %31
  %35 = fmul fast float %34, %33
  %36 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %37 = extractvalue %dx.types.CBufRet.f32 %36, 0
  %38 = bitcast float %37 to i32
  %39 = and i32 %38, 127
  switch i32 %39, label %331 [
    i32 1, label %40
    i32 2, label %40
    i32 0, label %40
    i32 3, label %49
    i32 4, label %171
    i32 5, label %306
  ]

; <label>:40                                      ; preds = %0, %0, %0
  %41 = extractvalue %dx.types.CBufRet.f32 %36, 2
  %42 = extractvalue %dx.types.CBufRet.f32 %36, 3
  %43 = fmul fast float %41, %14
  %44 = fmul fast float %41, %15
  %45 = fmul fast float %41, %16
  %46 = fadd fast float %43, %42
  %47 = fadd fast float %44, %42
  %48 = fadd fast float %45, %42
  br label %331

; <label>:49                                      ; preds = %0
  %50 = and i32 %38, 128
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %63, label %52

; <label>:52                                      ; preds = %49
  %53 = fmul fast float %14, 9.687500e-01
  %54 = fmul fast float %15, 9.687500e-01
  %55 = fmul fast float %16, 9.687500e-01
  %56 = fadd fast float %53, 1.562500e-02
  %57 = fadd fast float %54, 1.562500e-02
  %58 = fadd fast float %55, 1.562500e-02
  %59 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %3, float %56, float %57, float %58, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %60 = extractvalue %dx.types.ResRet.f32 %59, 0
  %61 = extractvalue %dx.types.ResRet.f32 %59, 1
  %62 = extractvalue %dx.types.ResRet.f32 %59, 2
  br label %331

; <label>:63                                      ; preds = %49
  %64 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %65 = fmul fast float %64, 0x3FDAAAAAA0000000
  %66 = call float @dx.op.unary.f32(i32 21, float %65)  ; Exp(value)
  %67 = fsub fast float 1.000000e+00, %66
  %68 = call float @dx.op.unary.f32(i32 23, float %67)  ; Log(value)
  %69 = fmul fast float %68, 0x4003333340000000
  %70 = call float @dx.op.unary.f32(i32 21, float %69)  ; Exp(value)
  %71 = fdiv fast float %66, %67
  %72 = fadd fast float %71, %14
  %73 = fadd fast float %71, %15
  %74 = fadd fast float %71, %16
  %75 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %72)  ; FMax(a,b)
  %76 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %73)  ; FMax(a,b)
  %77 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %74)  ; FMax(a,b)
  %78 = call float @dx.op.unary.f32(i32 23, float %75)  ; Log(value)
  %79 = call float @dx.op.unary.f32(i32 23, float %76)  ; Log(value)
  %80 = call float @dx.op.unary.f32(i32 23, float %77)  ; Log(value)
  %81 = fmul fast float %78, 0x4003333340000000
  %82 = fmul fast float %79, 0x4003333340000000
  %83 = fmul fast float %80, 0x4003333340000000
  %84 = call float @dx.op.unary.f32(i32 21, float %81)  ; Exp(value)
  %85 = call float @dx.op.unary.f32(i32 21, float %82)  ; Exp(value)
  %86 = call float @dx.op.unary.f32(i32 21, float %83)  ; Exp(value)
  %87 = fmul fast float %84, %70
  %88 = fmul fast float %85, %70
  %89 = fmul fast float %86, %70
  %90 = extractvalue %dx.types.CBufRet.f32 %36, 1
  %91 = fmul fast float %87, 0x3FE413A920000000
  %92 = call float @dx.op.tertiary.f32(i32 46, float 0x3FD5134040000000, float %88, float %91)  ; FMad(a,b,c)
  %93 = call float @dx.op.tertiary.f32(i32 46, float 0x3FA62B6AE0000000, float %89, float %92)  ; FMad(a,b,c)
  %94 = fmul fast float %87, 0x3FB1B089A0000000
  %95 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED6C8B40000000, float %88, float %94)  ; FMad(a,b,c)
  %96 = call float @dx.op.tertiary.f32(i32 46, float 0x3F8758E220000000, float %89, float %95)  ; FMad(a,b,c)
  %97 = fmul fast float %87, 0x3F90CB2960000000
  %98 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB6872B00000000, float %88, float %97)  ; FMad(a,b,c)
  %99 = call float @dx.op.tertiary.f32(i32 46, float 0x3FECA8C160000000, float %89, float %98)  ; FMad(a,b,c)
  %100 = fmul fast float %93, %90
  %101 = fmul fast float %96, %90
  %102 = fmul fast float %99, %90
  %103 = fmul fast float %100, 0x3F847AE140000000
  %104 = fmul fast float %101, 0x3F847AE140000000
  %105 = fmul fast float %102, 0x3F847AE140000000
  %106 = fmul fast float %100, 0x40B4D2F520000000
  %107 = fmul fast float %101, 0x40B4D2F520000000
  %108 = fmul fast float %102, 0x40B4D2F520000000
  %109 = fadd fast float %106, 0x41869ECF20000000
  %110 = fadd fast float %107, 0x41869ECF20000000
  %111 = fadd fast float %108, 0x41869ECF20000000
  %112 = fmul fast float %109, %103
  %113 = fmul fast float %110, %104
  %114 = fmul fast float %111, %105
  %115 = fadd fast float %112, 0x417BB79C60000000
  %116 = fadd fast float %113, 0x417BB79C60000000
  %117 = fadd fast float %114, 0x417BB79C60000000
  %118 = fmul fast float %115, %103
  %119 = fmul fast float %116, %104
  %120 = fmul fast float %117, %105
  %121 = fadd fast float %118, 0x41218DE180000000
  %122 = fadd fast float %119, 0x41218DE180000000
  %123 = fadd fast float %120, 0x41218DE180000000
  %124 = fmul fast float %121, %103
  %125 = fmul fast float %122, %104
  %126 = fmul fast float %123, %105
  %127 = fadd fast float %124, 0x4077F174E0000000
  %128 = fadd fast float %125, 0x4077F174E0000000
  %129 = fadd fast float %126, 0x4077F174E0000000
  %130 = fmul fast float %127, %103
  %131 = fmul fast float %128, %104
  %132 = fmul fast float %129, %105
  %133 = fadd fast float %130, 0x3F3FF79B80000000
  %134 = fadd fast float %131, 0x3F3FF79B80000000
  %135 = fadd fast float %132, 0x3F3FF79B80000000
  %136 = fmul fast float %100, 0x412442D320000000
  %137 = fmul fast float %101, 0x412442D320000000
  %138 = fmul fast float %102, 0x412442D320000000
  %139 = fadd fast float %136, 0x419385D5C0000000
  %140 = fadd fast float %137, 0x419385D5C0000000
  %141 = fadd fast float %138, 0x419385D5C0000000
  %142 = fmul fast float %139, %103
  %143 = fmul fast float %140, %104
  %144 = fmul fast float %141, %105
  %145 = fadd fast float %142, 4.182885e+06
  %146 = fadd fast float %143, 4.182885e+06
  %147 = fadd fast float %144, 4.182885e+06
  %148 = fmul fast float %145, %103
  %149 = fmul fast float %146, %104
  %150 = fmul fast float %147, %105
  %151 = fadd fast float %148, 0x40C4D633C0000000
  %152 = fadd fast float %149, 0x40C4D633C0000000
  %153 = fadd fast float %150, 0x40C4D633C0000000
  %154 = fmul fast float %151, %103
  %155 = fmul fast float %152, %104
  %156 = fmul fast float %153, %105
  %157 = fadd fast float %154, 1.000000e+00
  %158 = fadd fast float %155, 1.000000e+00
  %159 = fadd fast float %156, 1.000000e+00
  %160 = fdiv fast float %133, %157
  %161 = fdiv fast float %134, %158
  %162 = fdiv fast float %135, %159
  %163 = extractvalue %dx.types.CBufRet.f32 %36, 2
  %164 = extractvalue %dx.types.CBufRet.f32 %36, 3
  %165 = fmul fast float %163, %160
  %166 = fmul fast float %163, %161
  %167 = fmul fast float %163, %162
  %168 = fadd fast float %165, %164
  %169 = fadd fast float %166, %164
  %170 = fadd fast float %167, %164
  br label %331

; <label>:171                                     ; preds = %0
  %172 = and i32 %38, 128
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %185, label %174

; <label>:174                                     ; preds = %171
  %175 = fmul fast float %14, 9.687500e-01
  %176 = fmul fast float %15, 9.687500e-01
  %177 = fmul fast float %16, 9.687500e-01
  %178 = fadd fast float %175, 1.562500e-02
  %179 = fadd fast float %176, 1.562500e-02
  %180 = fadd fast float %177, 1.562500e-02
  %181 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %3, float %178, float %179, float %180, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %182 = extractvalue %dx.types.ResRet.f32 %181, 0
  %183 = extractvalue %dx.types.ResRet.f32 %181, 1
  %184 = extractvalue %dx.types.ResRet.f32 %181, 2
  br label %331

; <label>:185                                     ; preds = %171
  %186 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %187 = fmul fast float %186, 0x3FDAAAAAA0000000
  %188 = call float @dx.op.unary.f32(i32 21, float %187)  ; Exp(value)
  %189 = fsub fast float 1.000000e+00, %188
  %190 = call float @dx.op.unary.f32(i32 23, float %189)  ; Log(value)
  %191 = fmul fast float %190, 0x4003333340000000
  %192 = call float @dx.op.unary.f32(i32 21, float %191)  ; Exp(value)
  %193 = fdiv fast float %188, %189
  %194 = fadd fast float %193, %14
  %195 = fadd fast float %193, %15
  %196 = fadd fast float %193, %16
  %197 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %194)  ; FMax(a,b)
  %198 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %195)  ; FMax(a,b)
  %199 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %196)  ; FMax(a,b)
  %200 = call float @dx.op.unary.f32(i32 23, float %197)  ; Log(value)
  %201 = call float @dx.op.unary.f32(i32 23, float %198)  ; Log(value)
  %202 = call float @dx.op.unary.f32(i32 23, float %199)  ; Log(value)
  %203 = fmul fast float %200, 0x4003333340000000
  %204 = fmul fast float %201, 0x4003333340000000
  %205 = fmul fast float %202, 0x4003333340000000
  %206 = call float @dx.op.unary.f32(i32 21, float %203)  ; Exp(value)
  %207 = call float @dx.op.unary.f32(i32 21, float %204)  ; Exp(value)
  %208 = call float @dx.op.unary.f32(i32 21, float %205)  ; Exp(value)
  %209 = fmul fast float %206, %192
  %210 = fmul fast float %207, %192
  %211 = fmul fast float %208, %192
  %212 = extractvalue %dx.types.CBufRet.f32 %36, 1
  %213 = fmul fast float %209, 0x3FEA519BC0000000
  %214 = call float @dx.op.tertiary.f32(i32 46, float 0x3FC6B990A0000000, float %210, float %213)  ; FMad(a,b,c)
  %215 = fmul fast float %209, 0x3FA0FED480000000
  %216 = call float @dx.op.tertiary.f32(i32 46, float 0x3FEEF012C0000000, float %210, float %215)  ; FMad(a,b,c)
  %217 = fmul fast float %209, 0x3F917E1C00000000
  %218 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB288A2E0000000, float %210, float %217)  ; FMad(a,b,c)
  %219 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED22FAA0000000, float %211, float %218)  ; FMad(a,b,c)
  %220 = call float @dx.op.binary.f32(i32 35, float %209, float %210)  ; FMax(a,b)
  %221 = call float @dx.op.binary.f32(i32 35, float %220, float %211)  ; FMax(a,b)
  %222 = fadd fast float %221, -1.000000e+00
  %223 = fmul fast float %222, 2.500000e-01
  %224 = call float @dx.op.unary.f32(i32 7, float %223)  ; Saturate(value)
  %225 = fsub fast float 1.000000e+00, %224
  %226 = fmul fast float %225, %214
  %227 = fmul fast float %225, %216
  %228 = fmul fast float %225, %219
  %229 = fmul fast float %224, %209
  %230 = fmul fast float %224, %210
  %231 = fmul fast float %224, %211
  %232 = fadd fast float %226, %229
  %233 = fadd fast float %227, %230
  %234 = fadd fast float %228, %231
  %235 = fmul fast float %232, %212
  %236 = fmul fast float %233, %212
  %237 = fmul fast float %234, %212
  %238 = fmul fast float %235, 0x3F847AE140000000
  %239 = fmul fast float %236, 0x3F847AE140000000
  %240 = fmul fast float %237, 0x3F847AE140000000
  %241 = fmul fast float %235, 0x40B4D2F520000000
  %242 = fmul fast float %236, 0x40B4D2F520000000
  %243 = fmul fast float %237, 0x40B4D2F520000000
  %244 = fadd fast float %241, 0x41869ECF20000000
  %245 = fadd fast float %242, 0x41869ECF20000000
  %246 = fadd fast float %243, 0x41869ECF20000000
  %247 = fmul fast float %244, %238
  %248 = fmul fast float %245, %239
  %249 = fmul fast float %246, %240
  %250 = fadd fast float %247, 0x417BB79C60000000
  %251 = fadd fast float %248, 0x417BB79C60000000
  %252 = fadd fast float %249, 0x417BB79C60000000
  %253 = fmul fast float %250, %238
  %254 = fmul fast float %251, %239
  %255 = fmul fast float %252, %240
  %256 = fadd fast float %253, 0x41218DE180000000
  %257 = fadd fast float %254, 0x41218DE180000000
  %258 = fadd fast float %255, 0x41218DE180000000
  %259 = fmul fast float %256, %238
  %260 = fmul fast float %257, %239
  %261 = fmul fast float %258, %240
  %262 = fadd fast float %259, 0x4077F174E0000000
  %263 = fadd fast float %260, 0x4077F174E0000000
  %264 = fadd fast float %261, 0x4077F174E0000000
  %265 = fmul fast float %262, %238
  %266 = fmul fast float %263, %239
  %267 = fmul fast float %264, %240
  %268 = fadd fast float %265, 0x3F3FF79B80000000
  %269 = fadd fast float %266, 0x3F3FF79B80000000
  %270 = fadd fast float %267, 0x3F3FF79B80000000
  %271 = fmul fast float %235, 0x412442D320000000
  %272 = fmul fast float %236, 0x412442D320000000
  %273 = fmul fast float %237, 0x412442D320000000
  %274 = fadd fast float %271, 0x419385D5C0000000
  %275 = fadd fast float %272, 0x419385D5C0000000
  %276 = fadd fast float %273, 0x419385D5C0000000
  %277 = fmul fast float %274, %238
  %278 = fmul fast float %275, %239
  %279 = fmul fast float %276, %240
  %280 = fadd fast float %277, 4.182885e+06
  %281 = fadd fast float %278, 4.182885e+06
  %282 = fadd fast float %279, 4.182885e+06
  %283 = fmul fast float %280, %238
  %284 = fmul fast float %281, %239
  %285 = fmul fast float %282, %240
  %286 = fadd fast float %283, 0x40C4D633C0000000
  %287 = fadd fast float %284, 0x40C4D633C0000000
  %288 = fadd fast float %285, 0x40C4D633C0000000
  %289 = fmul fast float %286, %238
  %290 = fmul fast float %287, %239
  %291 = fmul fast float %288, %240
  %292 = fadd fast float %289, 1.000000e+00
  %293 = fadd fast float %290, 1.000000e+00
  %294 = fadd fast float %291, 1.000000e+00
  %295 = fdiv fast float %268, %292
  %296 = fdiv fast float %269, %293
  %297 = fdiv fast float %270, %294
  %298 = extractvalue %dx.types.CBufRet.f32 %36, 2
  %299 = extractvalue %dx.types.CBufRet.f32 %36, 3
  %300 = fmul fast float %298, %295
  %301 = fmul fast float %298, %296
  %302 = fmul fast float %298, %297
  %303 = fadd fast float %300, %299
  %304 = fadd fast float %301, %299
  %305 = fadd fast float %302, %299
  br label %331

; <label>:306                                     ; preds = %0
  %307 = fcmp fast ole float %14, 0x3FA4B5DCC0000000
  %308 = fcmp fast ole float %15, 0x3FA4B5DCC0000000
  %309 = fcmp fast ole float %16, 0x3FA4B5DCC0000000
  %310 = fmul fast float %14, 0x3FB3D07220000000
  %311 = fmul fast float %15, 0x3FB3D07220000000
  %312 = fmul fast float %16, 0x3FB3D07220000000
  %313 = fadd fast float %14, 0x3FAC28F5C0000000
  %314 = fadd fast float %15, 0x3FAC28F5C0000000
  %315 = fadd fast float %16, 0x3FAC28F5C0000000
  %316 = fmul fast float %313, 0x3FEE54EDE0000000
  %317 = fmul fast float %314, 0x3FEE54EDE0000000
  %318 = fmul fast float %315, 0x3FEE54EDE0000000
  %319 = call float @dx.op.unary.f32(i32 23, float %316)  ; Log(value)
  %320 = call float @dx.op.unary.f32(i32 23, float %317)  ; Log(value)
  %321 = call float @dx.op.unary.f32(i32 23, float %318)  ; Log(value)
  %322 = fmul fast float %319, 0x4003333340000000
  %323 = fmul fast float %320, 0x4003333340000000
  %324 = fmul fast float %321, 0x4003333340000000
  %325 = call float @dx.op.unary.f32(i32 21, float %322)  ; Exp(value)
  %326 = call float @dx.op.unary.f32(i32 21, float %323)  ; Exp(value)
  %327 = call float @dx.op.unary.f32(i32 21, float %324)  ; Exp(value)
  %328 = select i1 %307, float %310, float %325
  %329 = select i1 %308, float %311, float %326
  %330 = select i1 %309, float %312, float %327
  br label %331

; <label>:331                                     ; preds = %306, %185, %174, %63, %52, %40, %0
  %332 = phi float [ %14, %0 ], [ %328, %306 ], [ %182, %174 ], [ %303, %185 ], [ %60, %52 ], [ %168, %63 ], [ %46, %40 ]
  %333 = phi float [ %15, %0 ], [ %329, %306 ], [ %183, %174 ], [ %304, %185 ], [ %61, %52 ], [ %169, %63 ], [ %47, %40 ]
  %334 = phi float [ %16, %0 ], [ %330, %306 ], [ %184, %174 ], [ %305, %185 ], [ %62, %52 ], [ %170, %63 ], [ %48, %40 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %332)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %333)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %334)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %35)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

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
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 72, i32 1, i32 4, i32 0, !7}
!9 = !{!10}
!10 = !{i32 0, %perObject* undef, !"", i32 0, i32 1, i32 1, i32 32, null}
!11 = !{!12}
!12 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!13 = !{[12 x i32] [i32 10, i32 4, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 15, i32 15]}
!14 = !{void ()* @ps_main, !"ps_main", !15, !4, null}
!15 = !{!16, !23, null}
!16 = !{!17, !19, !21}
!17 = !{i32 0, !"SV_Position", i8 9, i8 3, !18, i8 4, i32 1, i8 4, i32 0, i8 0, null}
!18 = !{i32 0}
!19 = !{i32 1, !"COLOR", i8 9, i8 0, !18, i8 2, i32 1, i8 4, i32 1, i8 0, !20}
!20 = !{i32 3, i32 7}
!21 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !18, i8 2, i32 1, i8 2, i32 2, i8 0, !22}
!22 = !{i32 3, i32 3}
!23 = !{!24}
!24 = !{i32 0, !"SV_Target", i8 9, i8 16, !18, i8 0, i32 1, i8 4, i32 0, i8 0, !25}
!25 = !{i32 3, i32 15}

