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
; shader hash: 3200367420b0c991195a8860075b3e6c
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
;   [16 x i8] (type annotation not present)
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
;                                   sampler      NA          NA      S2             s5     1
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
%perObject = type { <4 x float> }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 71, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %9 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %10 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %11 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %12 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %13 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %14 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2, i32 0)  ; GetDimensions(handle,mipLevel)
  %15 = extractvalue %dx.types.Dimensions %14, 0
  %16 = sitofp i32 %15 to float
  %17 = extractvalue %dx.types.Dimensions %14, 1
  %18 = sitofp i32 %17 to float
  %19 = fdiv fast float 5.000000e-01, %16
  %20 = fdiv fast float 5.000000e-01, %18
  %21 = fsub fast float 1.000000e+00, %19
  %22 = call float @dx.op.binary.f32(i32 35, float %8, float %19)  ; FMax(a,b)
  %23 = call float @dx.op.binary.f32(i32 36, float %22, float %21)  ; FMin(a,b)
  %24 = fsub fast float 1.000000e+00, %20
  %25 = call float @dx.op.binary.f32(i32 35, float %9, float %20)  ; FMax(a,b)
  %26 = call float @dx.op.binary.f32(i32 36, float %25, float %24)  ; FMin(a,b)
  %27 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %28 = extractvalue %dx.types.CBufRet.f32 %27, 3
  %29 = bitcast float %28 to i32
  %30 = and i32 %29, 1
  %31 = icmp ne i32 %30, 0
  %32 = select i1 %31, float %23, float %8
  %33 = and i32 %29, 2
  %34 = icmp ne i32 %33, 0
  %35 = select i1 %34, float %26, float %9
  %36 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %37 = extractvalue %dx.types.CBufRet.f32 %36, 3
  %38 = bitcast float %37 to i32
  %39 = and i32 %38, 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41, !dx.controlflow.hints !28

; <label>:41                                      ; preds = %0
  %42 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %3, float %32, float %35, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %43 = extractvalue %dx.types.ResRet.f32 %42, 0
  br label %49

; <label>:44                                      ; preds = %0
  %45 = call float @dx.op.unary.f32(i32 22, float %32)  ; Frc(value)
  %46 = call float @dx.op.unary.f32(i32 22, float %35)  ; Frc(value)
  %47 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %5, float %45, float %46, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %48 = extractvalue %dx.types.ResRet.f32 %47, 0
  br label %49

; <label>:49                                      ; preds = %44, %41
  %50 = phi float [ %43, %41 ], [ %48, %44 ]
  %51 = fmul fast float %50, 2.000000e+00
  %52 = fadd fast float %51, -1.000000e+00
  %53 = call float @dx.op.unary.f32(i32 83, float %52)  ; DerivCoarseX(value)
  %54 = call float @dx.op.unary.f32(i32 84, float %52)  ; DerivCoarseY(value)
  %55 = fmul fast float %53, %53
  %56 = fmul fast float %54, %54
  %57 = fadd fast float %56, %55
  %58 = call float @dx.op.unary.f32(i32 24, float %57)  ; Sqrt(value)
  %59 = fmul fast float %58, 2.000000e+00
  %60 = fadd fast float %58, %52
  %61 = fdiv fast float %60, %59
  %62 = call float @dx.op.unary.f32(i32 7, float %61)  ; Saturate(value)
  %63 = fmul fast float %62, 2.000000e+00
  %64 = fsub fast float 3.000000e+00, %63
  %65 = fmul fast float %62, %62
  %66 = fmul fast float %65, %13
  %67 = fmul fast float %66, %64
  %68 = call float @dx.op.binary.f32(i32 35, float %67, float 0.000000e+00)  ; FMax(a,b)
  %69 = fcmp fast oeq float %68, 0.000000e+00
  br i1 %69, label %70, label %71, !dx.controlflow.hints !29

; <label>:70                                      ; preds = %49
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %71

; <label>:71                                      ; preds = %70, %49
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %72 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %73 = extractvalue %dx.types.CBufRet.f32 %72, 0
  %74 = bitcast float %73 to i32
  %75 = and i32 %74, 128
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %91, label %77

; <label>:77                                      ; preds = %71
  %78 = call float @dx.op.unary.f32(i32 24, float %10)  ; Sqrt(value)
  %79 = call float @dx.op.unary.f32(i32 24, float %11)  ; Sqrt(value)
  %80 = call float @dx.op.unary.f32(i32 24, float %12)  ; Sqrt(value)
  %81 = fmul fast float %78, 9.687500e-01
  %82 = fmul fast float %79, 9.687500e-01
  %83 = fmul fast float %80, 9.687500e-01
  %84 = fadd fast float %81, 1.562500e-02
  %85 = fadd fast float %82, 1.562500e-02
  %86 = fadd fast float %83, 1.562500e-02
  %87 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %4, float %84, float %85, float %86, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %88 = extractvalue %dx.types.ResRet.f32 %87, 0
  %89 = extractvalue %dx.types.ResRet.f32 %87, 1
  %90 = extractvalue %dx.types.ResRet.f32 %87, 2
  br label %378

; <label>:91                                      ; preds = %71
  %92 = and i32 %74, 127
  switch i32 %92, label %378 [
    i32 1, label %93
    i32 2, label %93
    i32 0, label %93
    i32 3, label %123
    i32 4, label %244
  ]

; <label>:93                                      ; preds = %91, %91, %91
  %94 = call float @dx.op.unary.f32(i32 7, float %10)  ; Saturate(value)
  %95 = call float @dx.op.unary.f32(i32 7, float %11)  ; Saturate(value)
  %96 = call float @dx.op.unary.f32(i32 7, float %12)  ; Saturate(value)
  %97 = call float @dx.op.unary.f32(i32 23, float %94)  ; Log(value)
  %98 = call float @dx.op.unary.f32(i32 23, float %95)  ; Log(value)
  %99 = call float @dx.op.unary.f32(i32 23, float %96)  ; Log(value)
  %100 = fmul fast float %97, 0x3FDAAAAAA0000000
  %101 = fmul fast float %98, 0x3FDAAAAAA0000000
  %102 = fmul fast float %99, 0x3FDAAAAAA0000000
  %103 = call float @dx.op.unary.f32(i32 21, float %100)  ; Exp(value)
  %104 = call float @dx.op.unary.f32(i32 21, float %101)  ; Exp(value)
  %105 = call float @dx.op.unary.f32(i32 21, float %102)  ; Exp(value)
  %106 = fmul fast float %103, 0x3FF0E147A0000000
  %107 = fmul fast float %104, 0x3FF0E147A0000000
  %108 = fmul fast float %105, 0x3FF0E147A0000000
  %109 = fadd fast float %106, 0xBFAC28F5C0000000
  %110 = fadd fast float %107, 0xBFAC28F5C0000000
  %111 = fadd fast float %108, 0xBFAC28F5C0000000
  %112 = call float @dx.op.unary.f32(i32 7, float %109)  ; Saturate(value)
  %113 = call float @dx.op.unary.f32(i32 7, float %110)  ; Saturate(value)
  %114 = call float @dx.op.unary.f32(i32 7, float %111)  ; Saturate(value)
  %115 = extractvalue %dx.types.CBufRet.f32 %72, 2
  %116 = extractvalue %dx.types.CBufRet.f32 %72, 3
  %117 = fmul fast float %115, %112
  %118 = fmul fast float %115, %113
  %119 = fmul fast float %115, %114
  %120 = fadd fast float %117, %116
  %121 = fadd fast float %118, %116
  %122 = fadd fast float %119, %116
  br label %378

; <label>:123                                     ; preds = %91
  %124 = fmul fast float %10, 0x4163D57C00000000
  %125 = fmul fast float %11, 0x4163D57C00000000
  %126 = fmul fast float %12, 0x4163D57C00000000
  %127 = fadd fast float %124, 9.999980e+05
  %128 = fadd fast float %125, 9.999980e+05
  %129 = fadd fast float %126, 9.999980e+05
  %130 = fmul fast float %127, %10
  %131 = fmul fast float %128, %11
  %132 = fmul fast float %129, %12
  %133 = fadd fast float %130, 0xC0AFE17A60000000
  %134 = fadd fast float %131, 0xC0AFE17A60000000
  %135 = fadd fast float %132, 0xC0AFE17A60000000
  %136 = fmul fast float %133, %10
  %137 = fmul fast float %134, %11
  %138 = fmul fast float %135, %12
  %139 = fmul fast float %10, 0x40F753C340000000
  %140 = fmul fast float %11, 0x40F753C340000000
  %141 = fmul fast float %12, 0x40F753C340000000
  %142 = fsub fast float 9.999990e+06, %139
  %143 = fsub fast float 9.999990e+06, %140
  %144 = fsub fast float 9.999990e+06, %141
  %145 = fmul fast float %142, %10
  %146 = fmul fast float %143, %11
  %147 = fmul fast float %144, %12
  %148 = fadd fast float %145, 0x4136D1DD80000000
  %149 = fadd fast float %146, 0x4136D1DD80000000
  %150 = fadd fast float %147, 0x4136D1DD80000000
  %151 = fmul fast float %148, %10
  %152 = fmul fast float %149, %11
  %153 = fmul fast float %150, %12
  %154 = fadd fast float %151, 1.000000e+00
  %155 = fadd fast float %152, 1.000000e+00
  %156 = fadd fast float %153, 1.000000e+00
  %157 = fdiv fast float %136, %154
  %158 = fdiv fast float %137, %155
  %159 = fdiv fast float %138, %156
  %160 = call float @dx.op.unary.f32(i32 7, float %157)  ; Saturate(value)
  %161 = call float @dx.op.unary.f32(i32 7, float %158)  ; Saturate(value)
  %162 = call float @dx.op.unary.f32(i32 7, float %159)  ; Saturate(value)
  %163 = extractvalue %dx.types.CBufRet.f32 %72, 1
  %164 = fmul fast float %160, 0x3FE413A920000000
  %165 = call float @dx.op.tertiary.f32(i32 46, float 0x3FD5134040000000, float %161, float %164)  ; FMad(a,b,c)
  %166 = call float @dx.op.tertiary.f32(i32 46, float 0x3FA62B6AE0000000, float %162, float %165)  ; FMad(a,b,c)
  %167 = fmul fast float %160, 0x3FB1B089A0000000
  %168 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED6C8B40000000, float %161, float %167)  ; FMad(a,b,c)
  %169 = call float @dx.op.tertiary.f32(i32 46, float 0x3F8758E220000000, float %162, float %168)  ; FMad(a,b,c)
  %170 = fmul fast float %160, 0x3F90CB2960000000
  %171 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB6872B00000000, float %161, float %170)  ; FMad(a,b,c)
  %172 = call float @dx.op.tertiary.f32(i32 46, float 0x3FECA8C160000000, float %162, float %171)  ; FMad(a,b,c)
  %173 = fmul fast float %166, %163
  %174 = fmul fast float %169, %163
  %175 = fmul fast float %172, %163
  %176 = fmul fast float %173, 0x3F847AE140000000
  %177 = fmul fast float %174, 0x3F847AE140000000
  %178 = fmul fast float %175, 0x3F847AE140000000
  %179 = fmul fast float %173, 0x40B4D2F520000000
  %180 = fmul fast float %174, 0x40B4D2F520000000
  %181 = fmul fast float %175, 0x40B4D2F520000000
  %182 = fadd fast float %179, 0x41869ECF20000000
  %183 = fadd fast float %180, 0x41869ECF20000000
  %184 = fadd fast float %181, 0x41869ECF20000000
  %185 = fmul fast float %182, %176
  %186 = fmul fast float %183, %177
  %187 = fmul fast float %184, %178
  %188 = fadd fast float %185, 0x417BB79C60000000
  %189 = fadd fast float %186, 0x417BB79C60000000
  %190 = fadd fast float %187, 0x417BB79C60000000
  %191 = fmul fast float %188, %176
  %192 = fmul fast float %189, %177
  %193 = fmul fast float %190, %178
  %194 = fadd fast float %191, 0x41218DE180000000
  %195 = fadd fast float %192, 0x41218DE180000000
  %196 = fadd fast float %193, 0x41218DE180000000
  %197 = fmul fast float %194, %176
  %198 = fmul fast float %195, %177
  %199 = fmul fast float %196, %178
  %200 = fadd fast float %197, 0x4077F174E0000000
  %201 = fadd fast float %198, 0x4077F174E0000000
  %202 = fadd fast float %199, 0x4077F174E0000000
  %203 = fmul fast float %200, %176
  %204 = fmul fast float %201, %177
  %205 = fmul fast float %202, %178
  %206 = fadd fast float %203, 0x3F3FF79B80000000
  %207 = fadd fast float %204, 0x3F3FF79B80000000
  %208 = fadd fast float %205, 0x3F3FF79B80000000
  %209 = fmul fast float %173, 0x412442D320000000
  %210 = fmul fast float %174, 0x412442D320000000
  %211 = fmul fast float %175, 0x412442D320000000
  %212 = fadd fast float %209, 0x419385D5C0000000
  %213 = fadd fast float %210, 0x419385D5C0000000
  %214 = fadd fast float %211, 0x419385D5C0000000
  %215 = fmul fast float %212, %176
  %216 = fmul fast float %213, %177
  %217 = fmul fast float %214, %178
  %218 = fadd fast float %215, 4.182885e+06
  %219 = fadd fast float %216, 4.182885e+06
  %220 = fadd fast float %217, 4.182885e+06
  %221 = fmul fast float %218, %176
  %222 = fmul fast float %219, %177
  %223 = fmul fast float %220, %178
  %224 = fadd fast float %221, 0x40C4D633C0000000
  %225 = fadd fast float %222, 0x40C4D633C0000000
  %226 = fadd fast float %223, 0x40C4D633C0000000
  %227 = fmul fast float %224, %176
  %228 = fmul fast float %225, %177
  %229 = fmul fast float %226, %178
  %230 = fadd fast float %227, 1.000000e+00
  %231 = fadd fast float %228, 1.000000e+00
  %232 = fadd fast float %229, 1.000000e+00
  %233 = fdiv fast float %206, %230
  %234 = fdiv fast float %207, %231
  %235 = fdiv fast float %208, %232
  %236 = extractvalue %dx.types.CBufRet.f32 %72, 2
  %237 = extractvalue %dx.types.CBufRet.f32 %72, 3
  %238 = fmul fast float %236, %233
  %239 = fmul fast float %236, %234
  %240 = fmul fast float %236, %235
  %241 = fadd fast float %238, %237
  %242 = fadd fast float %239, %237
  %243 = fadd fast float %240, %237
  br label %378

; <label>:244                                     ; preds = %91
  %245 = fmul fast float %10, 0x4163D57C00000000
  %246 = fmul fast float %11, 0x4163D57C00000000
  %247 = fmul fast float %12, 0x4163D57C00000000
  %248 = fadd fast float %245, 9.999980e+05
  %249 = fadd fast float %246, 9.999980e+05
  %250 = fadd fast float %247, 9.999980e+05
  %251 = fmul fast float %248, %10
  %252 = fmul fast float %249, %11
  %253 = fmul fast float %250, %12
  %254 = fadd fast float %251, 0xC0AFE17A60000000
  %255 = fadd fast float %252, 0xC0AFE17A60000000
  %256 = fadd fast float %253, 0xC0AFE17A60000000
  %257 = fmul fast float %254, %10
  %258 = fmul fast float %255, %11
  %259 = fmul fast float %256, %12
  %260 = fmul fast float %10, 0x40F753C340000000
  %261 = fmul fast float %11, 0x40F753C340000000
  %262 = fmul fast float %12, 0x40F753C340000000
  %263 = fsub fast float 9.999990e+06, %260
  %264 = fsub fast float 9.999990e+06, %261
  %265 = fsub fast float 9.999990e+06, %262
  %266 = fmul fast float %263, %10
  %267 = fmul fast float %264, %11
  %268 = fmul fast float %265, %12
  %269 = fadd fast float %266, 0x4136D1DD80000000
  %270 = fadd fast float %267, 0x4136D1DD80000000
  %271 = fadd fast float %268, 0x4136D1DD80000000
  %272 = fmul fast float %269, %10
  %273 = fmul fast float %270, %11
  %274 = fmul fast float %271, %12
  %275 = fadd fast float %272, 1.000000e+00
  %276 = fadd fast float %273, 1.000000e+00
  %277 = fadd fast float %274, 1.000000e+00
  %278 = fdiv fast float %257, %275
  %279 = fdiv fast float %258, %276
  %280 = fdiv fast float %259, %277
  %281 = call float @dx.op.unary.f32(i32 7, float %278)  ; Saturate(value)
  %282 = call float @dx.op.unary.f32(i32 7, float %279)  ; Saturate(value)
  %283 = call float @dx.op.unary.f32(i32 7, float %280)  ; Saturate(value)
  %284 = extractvalue %dx.types.CBufRet.f32 %72, 1
  %285 = fmul fast float %281, 0x3FEA519BC0000000
  %286 = call float @dx.op.tertiary.f32(i32 46, float 0x3FC6B990A0000000, float %282, float %285)  ; FMad(a,b,c)
  %287 = fmul fast float %281, 0x3FA0FED480000000
  %288 = call float @dx.op.tertiary.f32(i32 46, float 0x3FEEF012C0000000, float %282, float %287)  ; FMad(a,b,c)
  %289 = fmul fast float %281, 0x3F917E1C00000000
  %290 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB288A2E0000000, float %282, float %289)  ; FMad(a,b,c)
  %291 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED22FAA0000000, float %283, float %290)  ; FMad(a,b,c)
  %292 = call float @dx.op.binary.f32(i32 35, float %281, float %282)  ; FMax(a,b)
  %293 = call float @dx.op.binary.f32(i32 35, float %292, float %283)  ; FMax(a,b)
  %294 = fadd fast float %293, -1.000000e+00
  %295 = fmul fast float %294, 2.500000e-01
  %296 = call float @dx.op.unary.f32(i32 7, float %295)  ; Saturate(value)
  %297 = fsub fast float 1.000000e+00, %296
  %298 = fmul fast float %297, %286
  %299 = fmul fast float %297, %288
  %300 = fmul fast float %297, %291
  %301 = fmul fast float %296, %281
  %302 = fmul fast float %296, %282
  %303 = fmul fast float %296, %283
  %304 = fadd fast float %298, %301
  %305 = fadd fast float %299, %302
  %306 = fadd fast float %300, %303
  %307 = fmul fast float %304, %284
  %308 = fmul fast float %305, %284
  %309 = fmul fast float %306, %284
  %310 = fmul fast float %307, 0x3F847AE140000000
  %311 = fmul fast float %308, 0x3F847AE140000000
  %312 = fmul fast float %309, 0x3F847AE140000000
  %313 = fmul fast float %307, 0x40B4D2F520000000
  %314 = fmul fast float %308, 0x40B4D2F520000000
  %315 = fmul fast float %309, 0x40B4D2F520000000
  %316 = fadd fast float %313, 0x41869ECF20000000
  %317 = fadd fast float %314, 0x41869ECF20000000
  %318 = fadd fast float %315, 0x41869ECF20000000
  %319 = fmul fast float %316, %310
  %320 = fmul fast float %317, %311
  %321 = fmul fast float %318, %312
  %322 = fadd fast float %319, 0x417BB79C60000000
  %323 = fadd fast float %320, 0x417BB79C60000000
  %324 = fadd fast float %321, 0x417BB79C60000000
  %325 = fmul fast float %322, %310
  %326 = fmul fast float %323, %311
  %327 = fmul fast float %324, %312
  %328 = fadd fast float %325, 0x41218DE180000000
  %329 = fadd fast float %326, 0x41218DE180000000
  %330 = fadd fast float %327, 0x41218DE180000000
  %331 = fmul fast float %328, %310
  %332 = fmul fast float %329, %311
  %333 = fmul fast float %330, %312
  %334 = fadd fast float %331, 0x4077F174E0000000
  %335 = fadd fast float %332, 0x4077F174E0000000
  %336 = fadd fast float %333, 0x4077F174E0000000
  %337 = fmul fast float %334, %310
  %338 = fmul fast float %335, %311
  %339 = fmul fast float %336, %312
  %340 = fadd fast float %337, 0x3F3FF79B80000000
  %341 = fadd fast float %338, 0x3F3FF79B80000000
  %342 = fadd fast float %339, 0x3F3FF79B80000000
  %343 = fmul fast float %307, 0x412442D320000000
  %344 = fmul fast float %308, 0x412442D320000000
  %345 = fmul fast float %309, 0x412442D320000000
  %346 = fadd fast float %343, 0x419385D5C0000000
  %347 = fadd fast float %344, 0x419385D5C0000000
  %348 = fadd fast float %345, 0x419385D5C0000000
  %349 = fmul fast float %346, %310
  %350 = fmul fast float %347, %311
  %351 = fmul fast float %348, %312
  %352 = fadd fast float %349, 4.182885e+06
  %353 = fadd fast float %350, 4.182885e+06
  %354 = fadd fast float %351, 4.182885e+06
  %355 = fmul fast float %352, %310
  %356 = fmul fast float %353, %311
  %357 = fmul fast float %354, %312
  %358 = fadd fast float %355, 0x40C4D633C0000000
  %359 = fadd fast float %356, 0x40C4D633C0000000
  %360 = fadd fast float %357, 0x40C4D633C0000000
  %361 = fmul fast float %358, %310
  %362 = fmul fast float %359, %311
  %363 = fmul fast float %360, %312
  %364 = fadd fast float %361, 1.000000e+00
  %365 = fadd fast float %362, 1.000000e+00
  %366 = fadd fast float %363, 1.000000e+00
  %367 = fdiv fast float %340, %364
  %368 = fdiv fast float %341, %365
  %369 = fdiv fast float %342, %366
  %370 = extractvalue %dx.types.CBufRet.f32 %72, 2
  %371 = extractvalue %dx.types.CBufRet.f32 %72, 3
  %372 = fmul fast float %370, %367
  %373 = fmul fast float %370, %368
  %374 = fmul fast float %370, %369
  %375 = fadd fast float %372, %371
  %376 = fadd fast float %373, %371
  %377 = fadd fast float %374, %371
  br label %378

; <label>:378                                     ; preds = %244, %123, %93, %91, %77
  %379 = phi float [ %88, %77 ], [ %10, %91 ], [ %375, %244 ], [ %241, %123 ], [ %120, %93 ]
  %380 = phi float [ %89, %77 ], [ %11, %91 ], [ %376, %244 ], [ %242, %123 ], [ %121, %93 ]
  %381 = phi float [ %90, %77 ], [ %12, %91 ], [ %377, %244 ], [ %243, %123 ], [ %122, %93 ]
  %382 = fmul fast float %379, %68
  %383 = fmul fast float %380, %68
  %384 = fmul fast float %381, %68
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %382)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %383)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %384)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %68)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
!4 = !{!5, null, !9, !12}
!5 = !{!6, !8}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 71, i32 1, i32 4, i32 0, !7}
!9 = !{!10, !11}
!10 = !{i32 0, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!11 = !{i32 1, %perObject* undef, !"", i32 0, i32 1, i32 1, i32 16, null}
!12 = !{!13, !14, !15}
!13 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!14 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!15 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!16 = !{[12 x i32] [i32 10, i32 4, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 7, i32 15, i32 15, i32 15]}
!17 = !{void ()* @ps_main, !"ps_main", !18, !4, null}
!18 = !{!19, !26, null}
!19 = !{!20, !22, !24}
!20 = !{i32 0, !"SV_Position", i8 9, i8 3, !21, i8 4, i32 1, i8 4, i32 0, i8 0, null}
!21 = !{i32 0}
!22 = !{i32 1, !"COLOR", i8 9, i8 0, !21, i8 2, i32 1, i8 4, i32 1, i8 0, !23}
!23 = !{i32 3, i32 15}
!24 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !21, i8 2, i32 1, i8 2, i32 2, i8 0, !25}
!25 = !{i32 3, i32 3}
!26 = !{!27}
!27 = !{i32 0, !"SV_Target", i8 9, i8 16, !21, i8 0, i32 1, i8 4, i32 0, i8 0, !23}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 1}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 1}

