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
; shader hash: 637244c10551122c9355039a91a6083d
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
;                                   sampler      NA          NA      S0             s2     1
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
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%perObject = type { <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 71, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %7 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %8 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %9 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %10 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %11 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %12 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2, i32 0)  ; GetDimensions(handle,mipLevel)
  %13 = extractvalue %dx.types.Dimensions %12, 0
  %14 = sitofp i32 %13 to float
  %15 = extractvalue %dx.types.Dimensions %12, 1
  %16 = sitofp i32 %15 to float
  %17 = fdiv fast float 5.000000e-01, %14
  %18 = fdiv fast float 5.000000e-01, %16
  %19 = fsub fast float 1.000000e+00, %17
  %20 = call float @dx.op.binary.f32(i32 35, float %6, float %17)  ; FMax(a,b)
  %21 = call float @dx.op.binary.f32(i32 36, float %20, float %19)  ; FMin(a,b)
  %22 = fsub fast float 1.000000e+00, %18
  %23 = call float @dx.op.binary.f32(i32 35, float %7, float %18)  ; FMax(a,b)
  %24 = call float @dx.op.binary.f32(i32 36, float %23, float %22)  ; FMin(a,b)
  %25 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %26 = extractvalue %dx.types.CBufRet.f32 %25, 3
  %27 = bitcast float %26 to i32
  %28 = and i32 %27, 1
  %29 = icmp ne i32 %28, 0
  %30 = select i1 %29, float %21, float %6
  %31 = and i32 %27, 2
  %32 = icmp ne i32 %31, 0
  %33 = select i1 %32, float %24, float %7
  %34 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %35 = extractvalue %dx.types.CBufRet.f32 %34, 2
  %36 = fadd fast float %35, -2.000000e+00
  %37 = call float @dx.op.unary.f32(i32 6, float %36)  ; FAbs(value)
  %38 = fcmp fast olt float %37, 0x3F1A36E2E0000000
  %39 = fmul fast float %30, 2.000000e+00
  %40 = fmul fast float %33, 2.000000e+00
  %41 = fadd fast float %39, -1.000000e+00
  %42 = fadd fast float %40, -1.000000e+00
  %43 = call float @dx.op.unary.f32(i32 6, float %41)  ; FAbs(value)
  %44 = call float @dx.op.unary.f32(i32 6, float %42)  ; FAbs(value)
  %45 = extractvalue %dx.types.CBufRet.f32 %34, 0
  %46 = extractvalue %dx.types.CBufRet.f32 %34, 1
  %47 = extractvalue %dx.types.CBufRet.f32 %34, 3
  %48 = fsub fast float %46, %45
  %49 = fcmp fast ogt float %47, 1.000000e+00
  %50 = fdiv fast float 1.000000e+00, %47
  %51 = fmul fast float %48, %50
  %52 = select i1 %49, float %51, float %48
  %53 = fmul fast float %48, %47
  %54 = select i1 %49, float %48, float %53
  %55 = fsub fast float %46, %52
  %56 = fcmp fast ogt float %43, %55
  %57 = fsub fast float %46, %54
  %58 = fcmp fast ogt float %44, %57
  %59 = or i1 %56, %58
  %60 = select i1 %59, float 1.000000e+00, float 0.000000e+00
  %61 = call float @dx.op.dot2.f32(i32 54, float %41, float %42, float %41, float %42)  ; Dot2(ax,ay,bx,by)
  %62 = call float @dx.op.unary.f32(i32 24, float %61)  ; Sqrt(value)
  %63 = fsub fast float %62, %45
  %64 = fdiv fast float %63, %48
  %65 = call float @dx.op.unary.f32(i32 7, float %64)  ; Saturate(value)
  %66 = fmul fast float %65, 2.000000e+00
  %67 = fsub fast float 3.000000e+00, %66
  %68 = fmul fast float %65, %65
  %69 = fmul fast float %68, 2.000000e+00
  %70 = fmul fast float %69, %67
  %71 = fadd fast float %70, -1.000000e+00
  %72 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %73 = fsub fast float 1.000000e+00, %72
  %74 = select i1 %38, float %60, float %73
  %75 = fmul fast float %74, %11
  %76 = call float @dx.op.binary.f32(i32 35, float %75, float 0.000000e+00)  ; FMax(a,b)
  %77 = fcmp fast oeq float %76, 0.000000e+00
  br i1 %77, label %78, label %79, !dx.controlflow.hints !26

; <label>:78                                      ; preds = %0
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %79

; <label>:79                                      ; preds = %78, %0
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %80 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %81 = extractvalue %dx.types.CBufRet.f32 %80, 0
  %82 = bitcast float %81 to i32
  %83 = and i32 %82, 128
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %99, label %85

; <label>:85                                      ; preds = %79
  %86 = call float @dx.op.unary.f32(i32 24, float %8)  ; Sqrt(value)
  %87 = call float @dx.op.unary.f32(i32 24, float %9)  ; Sqrt(value)
  %88 = call float @dx.op.unary.f32(i32 24, float %10)  ; Sqrt(value)
  %89 = fmul fast float %86, 9.687500e-01
  %90 = fmul fast float %87, 9.687500e-01
  %91 = fmul fast float %88, 9.687500e-01
  %92 = fadd fast float %89, 1.562500e-02
  %93 = fadd fast float %90, 1.562500e-02
  %94 = fadd fast float %91, 1.562500e-02
  %95 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %3, float %92, float %93, float %94, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %96 = extractvalue %dx.types.ResRet.f32 %95, 0
  %97 = extractvalue %dx.types.ResRet.f32 %95, 1
  %98 = extractvalue %dx.types.ResRet.f32 %95, 2
  br label %386

; <label>:99                                      ; preds = %79
  %100 = and i32 %82, 127
  switch i32 %100, label %386 [
    i32 1, label %101
    i32 2, label %101
    i32 0, label %101
    i32 3, label %131
    i32 4, label %252
  ]

; <label>:101                                     ; preds = %99, %99, %99
  %102 = call float @dx.op.unary.f32(i32 7, float %8)  ; Saturate(value)
  %103 = call float @dx.op.unary.f32(i32 7, float %9)  ; Saturate(value)
  %104 = call float @dx.op.unary.f32(i32 7, float %10)  ; Saturate(value)
  %105 = call float @dx.op.unary.f32(i32 23, float %102)  ; Log(value)
  %106 = call float @dx.op.unary.f32(i32 23, float %103)  ; Log(value)
  %107 = call float @dx.op.unary.f32(i32 23, float %104)  ; Log(value)
  %108 = fmul fast float %105, 0x3FDAAAAAA0000000
  %109 = fmul fast float %106, 0x3FDAAAAAA0000000
  %110 = fmul fast float %107, 0x3FDAAAAAA0000000
  %111 = call float @dx.op.unary.f32(i32 21, float %108)  ; Exp(value)
  %112 = call float @dx.op.unary.f32(i32 21, float %109)  ; Exp(value)
  %113 = call float @dx.op.unary.f32(i32 21, float %110)  ; Exp(value)
  %114 = fmul fast float %111, 0x3FF0E147A0000000
  %115 = fmul fast float %112, 0x3FF0E147A0000000
  %116 = fmul fast float %113, 0x3FF0E147A0000000
  %117 = fadd fast float %114, 0xBFAC28F5C0000000
  %118 = fadd fast float %115, 0xBFAC28F5C0000000
  %119 = fadd fast float %116, 0xBFAC28F5C0000000
  %120 = call float @dx.op.unary.f32(i32 7, float %117)  ; Saturate(value)
  %121 = call float @dx.op.unary.f32(i32 7, float %118)  ; Saturate(value)
  %122 = call float @dx.op.unary.f32(i32 7, float %119)  ; Saturate(value)
  %123 = extractvalue %dx.types.CBufRet.f32 %80, 2
  %124 = extractvalue %dx.types.CBufRet.f32 %80, 3
  %125 = fmul fast float %123, %120
  %126 = fmul fast float %123, %121
  %127 = fmul fast float %123, %122
  %128 = fadd fast float %125, %124
  %129 = fadd fast float %126, %124
  %130 = fadd fast float %127, %124
  br label %386

; <label>:131                                     ; preds = %99
  %132 = fmul fast float %8, 0x4163D57C00000000
  %133 = fmul fast float %9, 0x4163D57C00000000
  %134 = fmul fast float %10, 0x4163D57C00000000
  %135 = fadd fast float %132, 9.999980e+05
  %136 = fadd fast float %133, 9.999980e+05
  %137 = fadd fast float %134, 9.999980e+05
  %138 = fmul fast float %135, %8
  %139 = fmul fast float %136, %9
  %140 = fmul fast float %137, %10
  %141 = fadd fast float %138, 0xC0AFE17A60000000
  %142 = fadd fast float %139, 0xC0AFE17A60000000
  %143 = fadd fast float %140, 0xC0AFE17A60000000
  %144 = fmul fast float %141, %8
  %145 = fmul fast float %142, %9
  %146 = fmul fast float %143, %10
  %147 = fmul fast float %8, 0x40F753C340000000
  %148 = fmul fast float %9, 0x40F753C340000000
  %149 = fmul fast float %10, 0x40F753C340000000
  %150 = fsub fast float 9.999990e+06, %147
  %151 = fsub fast float 9.999990e+06, %148
  %152 = fsub fast float 9.999990e+06, %149
  %153 = fmul fast float %150, %8
  %154 = fmul fast float %151, %9
  %155 = fmul fast float %152, %10
  %156 = fadd fast float %153, 0x4136D1DD80000000
  %157 = fadd fast float %154, 0x4136D1DD80000000
  %158 = fadd fast float %155, 0x4136D1DD80000000
  %159 = fmul fast float %156, %8
  %160 = fmul fast float %157, %9
  %161 = fmul fast float %158, %10
  %162 = fadd fast float %159, 1.000000e+00
  %163 = fadd fast float %160, 1.000000e+00
  %164 = fadd fast float %161, 1.000000e+00
  %165 = fdiv fast float %144, %162
  %166 = fdiv fast float %145, %163
  %167 = fdiv fast float %146, %164
  %168 = call float @dx.op.unary.f32(i32 7, float %165)  ; Saturate(value)
  %169 = call float @dx.op.unary.f32(i32 7, float %166)  ; Saturate(value)
  %170 = call float @dx.op.unary.f32(i32 7, float %167)  ; Saturate(value)
  %171 = extractvalue %dx.types.CBufRet.f32 %80, 1
  %172 = fmul fast float %168, 0x3FE413A920000000
  %173 = call float @dx.op.tertiary.f32(i32 46, float 0x3FD5134040000000, float %169, float %172)  ; FMad(a,b,c)
  %174 = call float @dx.op.tertiary.f32(i32 46, float 0x3FA62B6AE0000000, float %170, float %173)  ; FMad(a,b,c)
  %175 = fmul fast float %168, 0x3FB1B089A0000000
  %176 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED6C8B40000000, float %169, float %175)  ; FMad(a,b,c)
  %177 = call float @dx.op.tertiary.f32(i32 46, float 0x3F8758E220000000, float %170, float %176)  ; FMad(a,b,c)
  %178 = fmul fast float %168, 0x3F90CB2960000000
  %179 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB6872B00000000, float %169, float %178)  ; FMad(a,b,c)
  %180 = call float @dx.op.tertiary.f32(i32 46, float 0x3FECA8C160000000, float %170, float %179)  ; FMad(a,b,c)
  %181 = fmul fast float %174, %171
  %182 = fmul fast float %177, %171
  %183 = fmul fast float %180, %171
  %184 = fmul fast float %181, 0x3F847AE140000000
  %185 = fmul fast float %182, 0x3F847AE140000000
  %186 = fmul fast float %183, 0x3F847AE140000000
  %187 = fmul fast float %181, 0x40B4D2F520000000
  %188 = fmul fast float %182, 0x40B4D2F520000000
  %189 = fmul fast float %183, 0x40B4D2F520000000
  %190 = fadd fast float %187, 0x41869ECF20000000
  %191 = fadd fast float %188, 0x41869ECF20000000
  %192 = fadd fast float %189, 0x41869ECF20000000
  %193 = fmul fast float %190, %184
  %194 = fmul fast float %191, %185
  %195 = fmul fast float %192, %186
  %196 = fadd fast float %193, 0x417BB79C60000000
  %197 = fadd fast float %194, 0x417BB79C60000000
  %198 = fadd fast float %195, 0x417BB79C60000000
  %199 = fmul fast float %196, %184
  %200 = fmul fast float %197, %185
  %201 = fmul fast float %198, %186
  %202 = fadd fast float %199, 0x41218DE180000000
  %203 = fadd fast float %200, 0x41218DE180000000
  %204 = fadd fast float %201, 0x41218DE180000000
  %205 = fmul fast float %202, %184
  %206 = fmul fast float %203, %185
  %207 = fmul fast float %204, %186
  %208 = fadd fast float %205, 0x4077F174E0000000
  %209 = fadd fast float %206, 0x4077F174E0000000
  %210 = fadd fast float %207, 0x4077F174E0000000
  %211 = fmul fast float %208, %184
  %212 = fmul fast float %209, %185
  %213 = fmul fast float %210, %186
  %214 = fadd fast float %211, 0x3F3FF79B80000000
  %215 = fadd fast float %212, 0x3F3FF79B80000000
  %216 = fadd fast float %213, 0x3F3FF79B80000000
  %217 = fmul fast float %181, 0x412442D320000000
  %218 = fmul fast float %182, 0x412442D320000000
  %219 = fmul fast float %183, 0x412442D320000000
  %220 = fadd fast float %217, 0x419385D5C0000000
  %221 = fadd fast float %218, 0x419385D5C0000000
  %222 = fadd fast float %219, 0x419385D5C0000000
  %223 = fmul fast float %220, %184
  %224 = fmul fast float %221, %185
  %225 = fmul fast float %222, %186
  %226 = fadd fast float %223, 4.182885e+06
  %227 = fadd fast float %224, 4.182885e+06
  %228 = fadd fast float %225, 4.182885e+06
  %229 = fmul fast float %226, %184
  %230 = fmul fast float %227, %185
  %231 = fmul fast float %228, %186
  %232 = fadd fast float %229, 0x40C4D633C0000000
  %233 = fadd fast float %230, 0x40C4D633C0000000
  %234 = fadd fast float %231, 0x40C4D633C0000000
  %235 = fmul fast float %232, %184
  %236 = fmul fast float %233, %185
  %237 = fmul fast float %234, %186
  %238 = fadd fast float %235, 1.000000e+00
  %239 = fadd fast float %236, 1.000000e+00
  %240 = fadd fast float %237, 1.000000e+00
  %241 = fdiv fast float %214, %238
  %242 = fdiv fast float %215, %239
  %243 = fdiv fast float %216, %240
  %244 = extractvalue %dx.types.CBufRet.f32 %80, 2
  %245 = extractvalue %dx.types.CBufRet.f32 %80, 3
  %246 = fmul fast float %244, %241
  %247 = fmul fast float %244, %242
  %248 = fmul fast float %244, %243
  %249 = fadd fast float %246, %245
  %250 = fadd fast float %247, %245
  %251 = fadd fast float %248, %245
  br label %386

; <label>:252                                     ; preds = %99
  %253 = fmul fast float %8, 0x4163D57C00000000
  %254 = fmul fast float %9, 0x4163D57C00000000
  %255 = fmul fast float %10, 0x4163D57C00000000
  %256 = fadd fast float %253, 9.999980e+05
  %257 = fadd fast float %254, 9.999980e+05
  %258 = fadd fast float %255, 9.999980e+05
  %259 = fmul fast float %256, %8
  %260 = fmul fast float %257, %9
  %261 = fmul fast float %258, %10
  %262 = fadd fast float %259, 0xC0AFE17A60000000
  %263 = fadd fast float %260, 0xC0AFE17A60000000
  %264 = fadd fast float %261, 0xC0AFE17A60000000
  %265 = fmul fast float %262, %8
  %266 = fmul fast float %263, %9
  %267 = fmul fast float %264, %10
  %268 = fmul fast float %8, 0x40F753C340000000
  %269 = fmul fast float %9, 0x40F753C340000000
  %270 = fmul fast float %10, 0x40F753C340000000
  %271 = fsub fast float 9.999990e+06, %268
  %272 = fsub fast float 9.999990e+06, %269
  %273 = fsub fast float 9.999990e+06, %270
  %274 = fmul fast float %271, %8
  %275 = fmul fast float %272, %9
  %276 = fmul fast float %273, %10
  %277 = fadd fast float %274, 0x4136D1DD80000000
  %278 = fadd fast float %275, 0x4136D1DD80000000
  %279 = fadd fast float %276, 0x4136D1DD80000000
  %280 = fmul fast float %277, %8
  %281 = fmul fast float %278, %9
  %282 = fmul fast float %279, %10
  %283 = fadd fast float %280, 1.000000e+00
  %284 = fadd fast float %281, 1.000000e+00
  %285 = fadd fast float %282, 1.000000e+00
  %286 = fdiv fast float %265, %283
  %287 = fdiv fast float %266, %284
  %288 = fdiv fast float %267, %285
  %289 = call float @dx.op.unary.f32(i32 7, float %286)  ; Saturate(value)
  %290 = call float @dx.op.unary.f32(i32 7, float %287)  ; Saturate(value)
  %291 = call float @dx.op.unary.f32(i32 7, float %288)  ; Saturate(value)
  %292 = extractvalue %dx.types.CBufRet.f32 %80, 1
  %293 = fmul fast float %289, 0x3FEA519BC0000000
  %294 = call float @dx.op.tertiary.f32(i32 46, float 0x3FC6B990A0000000, float %290, float %293)  ; FMad(a,b,c)
  %295 = fmul fast float %289, 0x3FA0FED480000000
  %296 = call float @dx.op.tertiary.f32(i32 46, float 0x3FEEF012C0000000, float %290, float %295)  ; FMad(a,b,c)
  %297 = fmul fast float %289, 0x3F917E1C00000000
  %298 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB288A2E0000000, float %290, float %297)  ; FMad(a,b,c)
  %299 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED22FAA0000000, float %291, float %298)  ; FMad(a,b,c)
  %300 = call float @dx.op.binary.f32(i32 35, float %289, float %290)  ; FMax(a,b)
  %301 = call float @dx.op.binary.f32(i32 35, float %300, float %291)  ; FMax(a,b)
  %302 = fadd fast float %301, -1.000000e+00
  %303 = fmul fast float %302, 2.500000e-01
  %304 = call float @dx.op.unary.f32(i32 7, float %303)  ; Saturate(value)
  %305 = fsub fast float 1.000000e+00, %304
  %306 = fmul fast float %305, %294
  %307 = fmul fast float %305, %296
  %308 = fmul fast float %305, %299
  %309 = fmul fast float %304, %289
  %310 = fmul fast float %304, %290
  %311 = fmul fast float %304, %291
  %312 = fadd fast float %306, %309
  %313 = fadd fast float %307, %310
  %314 = fadd fast float %308, %311
  %315 = fmul fast float %312, %292
  %316 = fmul fast float %313, %292
  %317 = fmul fast float %314, %292
  %318 = fmul fast float %315, 0x3F847AE140000000
  %319 = fmul fast float %316, 0x3F847AE140000000
  %320 = fmul fast float %317, 0x3F847AE140000000
  %321 = fmul fast float %315, 0x40B4D2F520000000
  %322 = fmul fast float %316, 0x40B4D2F520000000
  %323 = fmul fast float %317, 0x40B4D2F520000000
  %324 = fadd fast float %321, 0x41869ECF20000000
  %325 = fadd fast float %322, 0x41869ECF20000000
  %326 = fadd fast float %323, 0x41869ECF20000000
  %327 = fmul fast float %324, %318
  %328 = fmul fast float %325, %319
  %329 = fmul fast float %326, %320
  %330 = fadd fast float %327, 0x417BB79C60000000
  %331 = fadd fast float %328, 0x417BB79C60000000
  %332 = fadd fast float %329, 0x417BB79C60000000
  %333 = fmul fast float %330, %318
  %334 = fmul fast float %331, %319
  %335 = fmul fast float %332, %320
  %336 = fadd fast float %333, 0x41218DE180000000
  %337 = fadd fast float %334, 0x41218DE180000000
  %338 = fadd fast float %335, 0x41218DE180000000
  %339 = fmul fast float %336, %318
  %340 = fmul fast float %337, %319
  %341 = fmul fast float %338, %320
  %342 = fadd fast float %339, 0x4077F174E0000000
  %343 = fadd fast float %340, 0x4077F174E0000000
  %344 = fadd fast float %341, 0x4077F174E0000000
  %345 = fmul fast float %342, %318
  %346 = fmul fast float %343, %319
  %347 = fmul fast float %344, %320
  %348 = fadd fast float %345, 0x3F3FF79B80000000
  %349 = fadd fast float %346, 0x3F3FF79B80000000
  %350 = fadd fast float %347, 0x3F3FF79B80000000
  %351 = fmul fast float %315, 0x412442D320000000
  %352 = fmul fast float %316, 0x412442D320000000
  %353 = fmul fast float %317, 0x412442D320000000
  %354 = fadd fast float %351, 0x419385D5C0000000
  %355 = fadd fast float %352, 0x419385D5C0000000
  %356 = fadd fast float %353, 0x419385D5C0000000
  %357 = fmul fast float %354, %318
  %358 = fmul fast float %355, %319
  %359 = fmul fast float %356, %320
  %360 = fadd fast float %357, 4.182885e+06
  %361 = fadd fast float %358, 4.182885e+06
  %362 = fadd fast float %359, 4.182885e+06
  %363 = fmul fast float %360, %318
  %364 = fmul fast float %361, %319
  %365 = fmul fast float %362, %320
  %366 = fadd fast float %363, 0x40C4D633C0000000
  %367 = fadd fast float %364, 0x40C4D633C0000000
  %368 = fadd fast float %365, 0x40C4D633C0000000
  %369 = fmul fast float %366, %318
  %370 = fmul fast float %367, %319
  %371 = fmul fast float %368, %320
  %372 = fadd fast float %369, 1.000000e+00
  %373 = fadd fast float %370, 1.000000e+00
  %374 = fadd fast float %371, 1.000000e+00
  %375 = fdiv fast float %348, %372
  %376 = fdiv fast float %349, %373
  %377 = fdiv fast float %350, %374
  %378 = extractvalue %dx.types.CBufRet.f32 %80, 2
  %379 = extractvalue %dx.types.CBufRet.f32 %80, 3
  %380 = fmul fast float %378, %375
  %381 = fmul fast float %378, %376
  %382 = fmul fast float %378, %377
  %383 = fadd fast float %380, %379
  %384 = fadd fast float %381, %379
  %385 = fadd fast float %382, %379
  br label %386

; <label>:386                                     ; preds = %252, %131, %101, %99, %85
  %387 = phi float [ %96, %85 ], [ %8, %99 ], [ %383, %252 ], [ %249, %131 ], [ %128, %101 ]
  %388 = phi float [ %97, %85 ], [ %9, %99 ], [ %384, %252 ], [ %250, %131 ], [ %129, %101 ]
  %389 = phi float [ %98, %85 ], [ %10, %99 ], [ %385, %252 ], [ %251, %131 ], [ %130, %101 ]
  %390 = fmul fast float %387, %76
  %391 = fmul fast float %388, %76
  %392 = fmul fast float %389, %76
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %390)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %391)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %392)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %76)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!14}
!dx.entryPoints = !{!15}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !9, !12}
!5 = !{!6, !8}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 71, i32 1, i32 4, i32 0, !7}
!9 = !{!10, !11}
!10 = !{i32 0, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!11 = !{i32 1, %perObject* undef, !"", i32 0, i32 1, i32 1, i32 32, null}
!12 = !{!13}
!13 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
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

