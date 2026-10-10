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
; shader hash: 69686dfd49edc3b635733610790dcb53
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
;   [16 x i8] (type annotation not present)
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
%perObject = type { <4 x float> }
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
  %10 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %11 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %3, float %5, float %6, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %12 = extractvalue %dx.types.ResRet.f32 %11, 0
  %13 = extractvalue %dx.types.ResRet.f32 %11, 1
  %14 = extractvalue %dx.types.ResRet.f32 %11, 2
  %15 = extractvalue %dx.types.ResRet.f32 %11, 3
  %16 = fmul fast float %12, %7
  %17 = fmul fast float %13, %8
  %18 = fmul fast float %14, %9
  %19 = fmul fast float %15, %10
  %20 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %21 = extractvalue %dx.types.CBufRet.f32 %20, 0
  %22 = bitcast float %21 to i32
  %23 = and i32 %22, 127
  switch i32 %23, label %315 [
    i32 1, label %24
    i32 2, label %24
    i32 0, label %24
    i32 3, label %33
    i32 4, label %155
    i32 5, label %290
  ]

; <label>:24                                      ; preds = %0, %0, %0
  %25 = extractvalue %dx.types.CBufRet.f32 %20, 2
  %26 = extractvalue %dx.types.CBufRet.f32 %20, 3
  %27 = fmul fast float %25, %16
  %28 = fmul fast float %25, %17
  %29 = fmul fast float %25, %18
  %30 = fadd fast float %27, %26
  %31 = fadd fast float %28, %26
  %32 = fadd fast float %29, %26
  br label %315

; <label>:33                                      ; preds = %0
  %34 = and i32 %22, 128
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %47, label %36

; <label>:36                                      ; preds = %33
  %37 = fmul fast float %16, 9.687500e-01
  %38 = fmul fast float %17, 9.687500e-01
  %39 = fmul fast float %18, 9.687500e-01
  %40 = fadd fast float %37, 1.562500e-02
  %41 = fadd fast float %38, 1.562500e-02
  %42 = fadd fast float %39, 1.562500e-02
  %43 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %3, float %40, float %41, float %42, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %44 = extractvalue %dx.types.ResRet.f32 %43, 0
  %45 = extractvalue %dx.types.ResRet.f32 %43, 1
  %46 = extractvalue %dx.types.ResRet.f32 %43, 2
  br label %315

; <label>:47                                      ; preds = %33
  %48 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %49 = fmul fast float %48, 0x3FDAAAAAA0000000
  %50 = call float @dx.op.unary.f32(i32 21, float %49)  ; Exp(value)
  %51 = fsub fast float 1.000000e+00, %50
  %52 = call float @dx.op.unary.f32(i32 23, float %51)  ; Log(value)
  %53 = fmul fast float %52, 0x4003333340000000
  %54 = call float @dx.op.unary.f32(i32 21, float %53)  ; Exp(value)
  %55 = fdiv fast float %50, %51
  %56 = fadd fast float %55, %16
  %57 = fadd fast float %55, %17
  %58 = fadd fast float %55, %18
  %59 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %56)  ; FMax(a,b)
  %60 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %57)  ; FMax(a,b)
  %61 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %58)  ; FMax(a,b)
  %62 = call float @dx.op.unary.f32(i32 23, float %59)  ; Log(value)
  %63 = call float @dx.op.unary.f32(i32 23, float %60)  ; Log(value)
  %64 = call float @dx.op.unary.f32(i32 23, float %61)  ; Log(value)
  %65 = fmul fast float %62, 0x4003333340000000
  %66 = fmul fast float %63, 0x4003333340000000
  %67 = fmul fast float %64, 0x4003333340000000
  %68 = call float @dx.op.unary.f32(i32 21, float %65)  ; Exp(value)
  %69 = call float @dx.op.unary.f32(i32 21, float %66)  ; Exp(value)
  %70 = call float @dx.op.unary.f32(i32 21, float %67)  ; Exp(value)
  %71 = fmul fast float %68, %54
  %72 = fmul fast float %69, %54
  %73 = fmul fast float %70, %54
  %74 = extractvalue %dx.types.CBufRet.f32 %20, 1
  %75 = fmul fast float %71, 0x3FE413A920000000
  %76 = call float @dx.op.tertiary.f32(i32 46, float 0x3FD5134040000000, float %72, float %75)  ; FMad(a,b,c)
  %77 = call float @dx.op.tertiary.f32(i32 46, float 0x3FA62B6AE0000000, float %73, float %76)  ; FMad(a,b,c)
  %78 = fmul fast float %71, 0x3FB1B089A0000000
  %79 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED6C8B40000000, float %72, float %78)  ; FMad(a,b,c)
  %80 = call float @dx.op.tertiary.f32(i32 46, float 0x3F8758E220000000, float %73, float %79)  ; FMad(a,b,c)
  %81 = fmul fast float %71, 0x3F90CB2960000000
  %82 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB6872B00000000, float %72, float %81)  ; FMad(a,b,c)
  %83 = call float @dx.op.tertiary.f32(i32 46, float 0x3FECA8C160000000, float %73, float %82)  ; FMad(a,b,c)
  %84 = fmul fast float %77, %74
  %85 = fmul fast float %80, %74
  %86 = fmul fast float %83, %74
  %87 = fmul fast float %84, 0x3F847AE140000000
  %88 = fmul fast float %85, 0x3F847AE140000000
  %89 = fmul fast float %86, 0x3F847AE140000000
  %90 = fmul fast float %84, 0x40B4D2F520000000
  %91 = fmul fast float %85, 0x40B4D2F520000000
  %92 = fmul fast float %86, 0x40B4D2F520000000
  %93 = fadd fast float %90, 0x41869ECF20000000
  %94 = fadd fast float %91, 0x41869ECF20000000
  %95 = fadd fast float %92, 0x41869ECF20000000
  %96 = fmul fast float %93, %87
  %97 = fmul fast float %94, %88
  %98 = fmul fast float %95, %89
  %99 = fadd fast float %96, 0x417BB79C60000000
  %100 = fadd fast float %97, 0x417BB79C60000000
  %101 = fadd fast float %98, 0x417BB79C60000000
  %102 = fmul fast float %99, %87
  %103 = fmul fast float %100, %88
  %104 = fmul fast float %101, %89
  %105 = fadd fast float %102, 0x41218DE180000000
  %106 = fadd fast float %103, 0x41218DE180000000
  %107 = fadd fast float %104, 0x41218DE180000000
  %108 = fmul fast float %105, %87
  %109 = fmul fast float %106, %88
  %110 = fmul fast float %107, %89
  %111 = fadd fast float %108, 0x4077F174E0000000
  %112 = fadd fast float %109, 0x4077F174E0000000
  %113 = fadd fast float %110, 0x4077F174E0000000
  %114 = fmul fast float %111, %87
  %115 = fmul fast float %112, %88
  %116 = fmul fast float %113, %89
  %117 = fadd fast float %114, 0x3F3FF79B80000000
  %118 = fadd fast float %115, 0x3F3FF79B80000000
  %119 = fadd fast float %116, 0x3F3FF79B80000000
  %120 = fmul fast float %84, 0x412442D320000000
  %121 = fmul fast float %85, 0x412442D320000000
  %122 = fmul fast float %86, 0x412442D320000000
  %123 = fadd fast float %120, 0x419385D5C0000000
  %124 = fadd fast float %121, 0x419385D5C0000000
  %125 = fadd fast float %122, 0x419385D5C0000000
  %126 = fmul fast float %123, %87
  %127 = fmul fast float %124, %88
  %128 = fmul fast float %125, %89
  %129 = fadd fast float %126, 4.182885e+06
  %130 = fadd fast float %127, 4.182885e+06
  %131 = fadd fast float %128, 4.182885e+06
  %132 = fmul fast float %129, %87
  %133 = fmul fast float %130, %88
  %134 = fmul fast float %131, %89
  %135 = fadd fast float %132, 0x40C4D633C0000000
  %136 = fadd fast float %133, 0x40C4D633C0000000
  %137 = fadd fast float %134, 0x40C4D633C0000000
  %138 = fmul fast float %135, %87
  %139 = fmul fast float %136, %88
  %140 = fmul fast float %137, %89
  %141 = fadd fast float %138, 1.000000e+00
  %142 = fadd fast float %139, 1.000000e+00
  %143 = fadd fast float %140, 1.000000e+00
  %144 = fdiv fast float %117, %141
  %145 = fdiv fast float %118, %142
  %146 = fdiv fast float %119, %143
  %147 = extractvalue %dx.types.CBufRet.f32 %20, 2
  %148 = extractvalue %dx.types.CBufRet.f32 %20, 3
  %149 = fmul fast float %147, %144
  %150 = fmul fast float %147, %145
  %151 = fmul fast float %147, %146
  %152 = fadd fast float %149, %148
  %153 = fadd fast float %150, %148
  %154 = fadd fast float %151, %148
  br label %315

; <label>:155                                     ; preds = %0
  %156 = and i32 %22, 128
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %169, label %158

; <label>:158                                     ; preds = %155
  %159 = fmul fast float %16, 9.687500e-01
  %160 = fmul fast float %17, 9.687500e-01
  %161 = fmul fast float %18, 9.687500e-01
  %162 = fadd fast float %159, 1.562500e-02
  %163 = fadd fast float %160, 1.562500e-02
  %164 = fadd fast float %161, 1.562500e-02
  %165 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %3, float %162, float %163, float %164, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %166 = extractvalue %dx.types.ResRet.f32 %165, 0
  %167 = extractvalue %dx.types.ResRet.f32 %165, 1
  %168 = extractvalue %dx.types.ResRet.f32 %165, 2
  br label %315

; <label>:169                                     ; preds = %155
  %170 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %171 = fmul fast float %170, 0x3FDAAAAAA0000000
  %172 = call float @dx.op.unary.f32(i32 21, float %171)  ; Exp(value)
  %173 = fsub fast float 1.000000e+00, %172
  %174 = call float @dx.op.unary.f32(i32 23, float %173)  ; Log(value)
  %175 = fmul fast float %174, 0x4003333340000000
  %176 = call float @dx.op.unary.f32(i32 21, float %175)  ; Exp(value)
  %177 = fdiv fast float %172, %173
  %178 = fadd fast float %177, %16
  %179 = fadd fast float %177, %17
  %180 = fadd fast float %177, %18
  %181 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %178)  ; FMax(a,b)
  %182 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %179)  ; FMax(a,b)
  %183 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %180)  ; FMax(a,b)
  %184 = call float @dx.op.unary.f32(i32 23, float %181)  ; Log(value)
  %185 = call float @dx.op.unary.f32(i32 23, float %182)  ; Log(value)
  %186 = call float @dx.op.unary.f32(i32 23, float %183)  ; Log(value)
  %187 = fmul fast float %184, 0x4003333340000000
  %188 = fmul fast float %185, 0x4003333340000000
  %189 = fmul fast float %186, 0x4003333340000000
  %190 = call float @dx.op.unary.f32(i32 21, float %187)  ; Exp(value)
  %191 = call float @dx.op.unary.f32(i32 21, float %188)  ; Exp(value)
  %192 = call float @dx.op.unary.f32(i32 21, float %189)  ; Exp(value)
  %193 = fmul fast float %190, %176
  %194 = fmul fast float %191, %176
  %195 = fmul fast float %192, %176
  %196 = extractvalue %dx.types.CBufRet.f32 %20, 1
  %197 = fmul fast float %193, 0x3FEA519BC0000000
  %198 = call float @dx.op.tertiary.f32(i32 46, float 0x3FC6B990A0000000, float %194, float %197)  ; FMad(a,b,c)
  %199 = fmul fast float %193, 0x3FA0FED480000000
  %200 = call float @dx.op.tertiary.f32(i32 46, float 0x3FEEF012C0000000, float %194, float %199)  ; FMad(a,b,c)
  %201 = fmul fast float %193, 0x3F917E1C00000000
  %202 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB288A2E0000000, float %194, float %201)  ; FMad(a,b,c)
  %203 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED22FAA0000000, float %195, float %202)  ; FMad(a,b,c)
  %204 = call float @dx.op.binary.f32(i32 35, float %193, float %194)  ; FMax(a,b)
  %205 = call float @dx.op.binary.f32(i32 35, float %204, float %195)  ; FMax(a,b)
  %206 = fadd fast float %205, -1.000000e+00
  %207 = fmul fast float %206, 2.500000e-01
  %208 = call float @dx.op.unary.f32(i32 7, float %207)  ; Saturate(value)
  %209 = fsub fast float 1.000000e+00, %208
  %210 = fmul fast float %209, %198
  %211 = fmul fast float %209, %200
  %212 = fmul fast float %209, %203
  %213 = fmul fast float %208, %193
  %214 = fmul fast float %208, %194
  %215 = fmul fast float %208, %195
  %216 = fadd fast float %210, %213
  %217 = fadd fast float %211, %214
  %218 = fadd fast float %212, %215
  %219 = fmul fast float %216, %196
  %220 = fmul fast float %217, %196
  %221 = fmul fast float %218, %196
  %222 = fmul fast float %219, 0x3F847AE140000000
  %223 = fmul fast float %220, 0x3F847AE140000000
  %224 = fmul fast float %221, 0x3F847AE140000000
  %225 = fmul fast float %219, 0x40B4D2F520000000
  %226 = fmul fast float %220, 0x40B4D2F520000000
  %227 = fmul fast float %221, 0x40B4D2F520000000
  %228 = fadd fast float %225, 0x41869ECF20000000
  %229 = fadd fast float %226, 0x41869ECF20000000
  %230 = fadd fast float %227, 0x41869ECF20000000
  %231 = fmul fast float %228, %222
  %232 = fmul fast float %229, %223
  %233 = fmul fast float %230, %224
  %234 = fadd fast float %231, 0x417BB79C60000000
  %235 = fadd fast float %232, 0x417BB79C60000000
  %236 = fadd fast float %233, 0x417BB79C60000000
  %237 = fmul fast float %234, %222
  %238 = fmul fast float %235, %223
  %239 = fmul fast float %236, %224
  %240 = fadd fast float %237, 0x41218DE180000000
  %241 = fadd fast float %238, 0x41218DE180000000
  %242 = fadd fast float %239, 0x41218DE180000000
  %243 = fmul fast float %240, %222
  %244 = fmul fast float %241, %223
  %245 = fmul fast float %242, %224
  %246 = fadd fast float %243, 0x4077F174E0000000
  %247 = fadd fast float %244, 0x4077F174E0000000
  %248 = fadd fast float %245, 0x4077F174E0000000
  %249 = fmul fast float %246, %222
  %250 = fmul fast float %247, %223
  %251 = fmul fast float %248, %224
  %252 = fadd fast float %249, 0x3F3FF79B80000000
  %253 = fadd fast float %250, 0x3F3FF79B80000000
  %254 = fadd fast float %251, 0x3F3FF79B80000000
  %255 = fmul fast float %219, 0x412442D320000000
  %256 = fmul fast float %220, 0x412442D320000000
  %257 = fmul fast float %221, 0x412442D320000000
  %258 = fadd fast float %255, 0x419385D5C0000000
  %259 = fadd fast float %256, 0x419385D5C0000000
  %260 = fadd fast float %257, 0x419385D5C0000000
  %261 = fmul fast float %258, %222
  %262 = fmul fast float %259, %223
  %263 = fmul fast float %260, %224
  %264 = fadd fast float %261, 4.182885e+06
  %265 = fadd fast float %262, 4.182885e+06
  %266 = fadd fast float %263, 4.182885e+06
  %267 = fmul fast float %264, %222
  %268 = fmul fast float %265, %223
  %269 = fmul fast float %266, %224
  %270 = fadd fast float %267, 0x40C4D633C0000000
  %271 = fadd fast float %268, 0x40C4D633C0000000
  %272 = fadd fast float %269, 0x40C4D633C0000000
  %273 = fmul fast float %270, %222
  %274 = fmul fast float %271, %223
  %275 = fmul fast float %272, %224
  %276 = fadd fast float %273, 1.000000e+00
  %277 = fadd fast float %274, 1.000000e+00
  %278 = fadd fast float %275, 1.000000e+00
  %279 = fdiv fast float %252, %276
  %280 = fdiv fast float %253, %277
  %281 = fdiv fast float %254, %278
  %282 = extractvalue %dx.types.CBufRet.f32 %20, 2
  %283 = extractvalue %dx.types.CBufRet.f32 %20, 3
  %284 = fmul fast float %282, %279
  %285 = fmul fast float %282, %280
  %286 = fmul fast float %282, %281
  %287 = fadd fast float %284, %283
  %288 = fadd fast float %285, %283
  %289 = fadd fast float %286, %283
  br label %315

; <label>:290                                     ; preds = %0
  %291 = fcmp fast ole float %16, 0x3FA4B5DCC0000000
  %292 = fcmp fast ole float %17, 0x3FA4B5DCC0000000
  %293 = fcmp fast ole float %18, 0x3FA4B5DCC0000000
  %294 = fmul fast float %16, 0x3FB3D07220000000
  %295 = fmul fast float %17, 0x3FB3D07220000000
  %296 = fmul fast float %18, 0x3FB3D07220000000
  %297 = fadd fast float %16, 0x3FAC28F5C0000000
  %298 = fadd fast float %17, 0x3FAC28F5C0000000
  %299 = fadd fast float %18, 0x3FAC28F5C0000000
  %300 = fmul fast float %297, 0x3FEE54EDE0000000
  %301 = fmul fast float %298, 0x3FEE54EDE0000000
  %302 = fmul fast float %299, 0x3FEE54EDE0000000
  %303 = call float @dx.op.unary.f32(i32 23, float %300)  ; Log(value)
  %304 = call float @dx.op.unary.f32(i32 23, float %301)  ; Log(value)
  %305 = call float @dx.op.unary.f32(i32 23, float %302)  ; Log(value)
  %306 = fmul fast float %303, 0x4003333340000000
  %307 = fmul fast float %304, 0x4003333340000000
  %308 = fmul fast float %305, 0x4003333340000000
  %309 = call float @dx.op.unary.f32(i32 21, float %306)  ; Exp(value)
  %310 = call float @dx.op.unary.f32(i32 21, float %307)  ; Exp(value)
  %311 = call float @dx.op.unary.f32(i32 21, float %308)  ; Exp(value)
  %312 = select i1 %291, float %294, float %309
  %313 = select i1 %292, float %295, float %310
  %314 = select i1 %293, float %296, float %311
  br label %315

; <label>:315                                     ; preds = %290, %169, %158, %47, %36, %24, %0
  %316 = phi float [ %16, %0 ], [ %312, %290 ], [ %166, %158 ], [ %287, %169 ], [ %44, %36 ], [ %152, %47 ], [ %30, %24 ]
  %317 = phi float [ %17, %0 ], [ %313, %290 ], [ %167, %158 ], [ %288, %169 ], [ %45, %36 ], [ %153, %47 ], [ %31, %24 ]
  %318 = phi float [ %18, %0 ], [ %314, %290 ], [ %168, %158 ], [ %289, %169 ], [ %46, %36 ], [ %154, %47 ], [ %32, %24 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %316)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %317)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %318)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %19)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare float @dx.op.binary.f32(i32, float, float) #0

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
!10 = !{i32 0, %perObject* undef, !"", i32 0, i32 1, i32 1, i32 16, null}
!11 = !{!12}
!12 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!13 = !{[12 x i32] [i32 10, i32 4, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 7, i32 8, i32 15, i32 15]}
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

