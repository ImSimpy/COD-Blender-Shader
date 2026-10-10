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
; shader hash: c37ed2e5996b4ff32cc55e72dabfbeca
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
;   [48 x i8] (type annotation not present)
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
;                                   sampler      NA          NA      S3             s5     1
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
%perObject = type { <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 71, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %11 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %12 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %13 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %14 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %15 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %16 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %17 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %18 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3, i32 0)  ; GetDimensions(handle,mipLevel)
  %19 = extractvalue %dx.types.Dimensions %18, 0
  %20 = sitofp i32 %19 to float
  %21 = extractvalue %dx.types.Dimensions %18, 1
  %22 = sitofp i32 %21 to float
  %23 = fdiv fast float 5.000000e-01, %20
  %24 = fdiv fast float 5.000000e-01, %22
  %25 = fsub fast float 1.000000e+00, %23
  %26 = call float @dx.op.binary.f32(i32 35, float %12, float %23)  ; FMax(a,b)
  %27 = call float @dx.op.binary.f32(i32 36, float %26, float %25)  ; FMin(a,b)
  %28 = fsub fast float 1.000000e+00, %24
  %29 = call float @dx.op.binary.f32(i32 35, float %13, float %24)  ; FMax(a,b)
  %30 = call float @dx.op.binary.f32(i32 36, float %29, float %28)  ; FMin(a,b)
  %31 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %32 = extractvalue %dx.types.CBufRet.f32 %31, 3
  %33 = bitcast float %32 to i32
  %34 = and i32 %33, 1
  %35 = icmp ne i32 %34, 0
  %36 = select i1 %35, float %27, float %12
  %37 = and i32 %33, 2
  %38 = icmp ne i32 %37, 0
  %39 = select i1 %38, float %30, float %13
  %40 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %41 = extractvalue %dx.types.CBufRet.f32 %40, 3
  %42 = bitcast float %41 to i32
  %43 = and i32 %42, 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %51, label %45, !dx.controlflow.hints !32

; <label>:45                                      ; preds = %0
  %46 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %4, float %36, float %39, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %47 = extractvalue %dx.types.ResRet.f32 %46, 0
  %48 = extractvalue %dx.types.ResRet.f32 %46, 1
  %49 = extractvalue %dx.types.ResRet.f32 %46, 2
  %50 = extractvalue %dx.types.ResRet.f32 %46, 3
  br label %59

; <label>:51                                      ; preds = %0
  %52 = call float @dx.op.unary.f32(i32 22, float %36)  ; Frc(value)
  %53 = call float @dx.op.unary.f32(i32 22, float %39)  ; Frc(value)
  %54 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %7, float %52, float %53, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %55 = extractvalue %dx.types.ResRet.f32 %54, 0
  %56 = extractvalue %dx.types.ResRet.f32 %54, 1
  %57 = extractvalue %dx.types.ResRet.f32 %54, 2
  %58 = extractvalue %dx.types.ResRet.f32 %54, 3
  br label %59

; <label>:59                                      ; preds = %51, %45
  %60 = phi float [ %47, %45 ], [ %55, %51 ]
  %61 = phi float [ %48, %45 ], [ %56, %51 ]
  %62 = phi float [ %49, %45 ], [ %57, %51 ]
  %63 = phi float [ %50, %45 ], [ %58, %51 ]
  %64 = and i32 %42, 8
  %65 = icmp ne i32 %64, 0
  %66 = select i1 %65, float 1.000000e+00, float %60
  %67 = select i1 %65, float 1.000000e+00, float %61
  %68 = select i1 %65, float 1.000000e+00, float %62
  %69 = select i1 %65, float %60, float %63
  %70 = fmul fast float %66, %14
  %71 = fmul fast float %67, %15
  %72 = fmul fast float %68, %16
  %73 = fmul fast float %69, %17
  %74 = call float @dx.op.binary.f32(i32 35, float %73, float 0.000000e+00)  ; FMax(a,b)
  %75 = fcmp fast oeq float %74, 0.000000e+00
  br i1 %75, label %76, label %77, !dx.controlflow.hints !33

; <label>:76                                      ; preds = %59
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %77

; <label>:77                                      ; preds = %76, %59
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %78 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %5, float %10, float %11, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %79 = extractvalue %dx.types.ResRet.f32 %78, 0
  %80 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %81 = extractvalue %dx.types.CBufRet.f32 %80, 3
  %82 = bitcast float %81 to i32
  %83 = and i32 %82, 65535
  %84 = call float @dx.op.legacyF16ToF32(i32 131, i32 %83)  ; LegacyF16ToF32(value)
  %85 = fcmp fast une float %84, 0.000000e+00
  %86 = select i1 %85, float 0.000000e+00, float 1.000000e+00
  %87 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %88 = extractvalue %dx.types.CBufRet.f32 %87, 3
  %89 = fmul fast float %88, %79
  %90 = fmul fast float %89, %86
  %91 = fsub fast float 1.000000e+00, %90
  %92 = fmul fast float %70, %91
  %93 = fmul fast float %71, %91
  %94 = fmul fast float %72, %91
  %95 = extractvalue %dx.types.CBufRet.f32 %87, 0
  %96 = extractvalue %dx.types.CBufRet.f32 %87, 1
  %97 = extractvalue %dx.types.CBufRet.f32 %87, 2
  %98 = fmul fast float %95, %89
  %99 = fmul fast float %96, %89
  %100 = fmul fast float %97, %89
  %101 = fadd fast float %92, %98
  %102 = fadd fast float %93, %99
  %103 = fadd fast float %94, %100
  %104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %105 = extractvalue %dx.types.CBufRet.f32 %104, 0
  %106 = bitcast float %105 to i32
  %107 = and i32 %106, 128
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %123, label %109

; <label>:109                                     ; preds = %77
  %110 = call float @dx.op.unary.f32(i32 24, float %101)  ; Sqrt(value)
  %111 = call float @dx.op.unary.f32(i32 24, float %102)  ; Sqrt(value)
  %112 = call float @dx.op.unary.f32(i32 24, float %103)  ; Sqrt(value)
  %113 = fmul fast float %110, 9.687500e-01
  %114 = fmul fast float %111, 9.687500e-01
  %115 = fmul fast float %112, 9.687500e-01
  %116 = fadd fast float %113, 1.562500e-02
  %117 = fadd fast float %114, 1.562500e-02
  %118 = fadd fast float %115, 1.562500e-02
  %119 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %6, float %116, float %117, float %118, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %120 = extractvalue %dx.types.ResRet.f32 %119, 0
  %121 = extractvalue %dx.types.ResRet.f32 %119, 1
  %122 = extractvalue %dx.types.ResRet.f32 %119, 2
  br label %410

; <label>:123                                     ; preds = %77
  %124 = and i32 %106, 127
  switch i32 %124, label %410 [
    i32 1, label %125
    i32 2, label %125
    i32 0, label %125
    i32 3, label %155
    i32 4, label %276
  ]

; <label>:125                                     ; preds = %123, %123, %123
  %126 = call float @dx.op.unary.f32(i32 7, float %101)  ; Saturate(value)
  %127 = call float @dx.op.unary.f32(i32 7, float %102)  ; Saturate(value)
  %128 = call float @dx.op.unary.f32(i32 7, float %103)  ; Saturate(value)
  %129 = call float @dx.op.unary.f32(i32 23, float %126)  ; Log(value)
  %130 = call float @dx.op.unary.f32(i32 23, float %127)  ; Log(value)
  %131 = call float @dx.op.unary.f32(i32 23, float %128)  ; Log(value)
  %132 = fmul fast float %129, 0x3FDAAAAAA0000000
  %133 = fmul fast float %130, 0x3FDAAAAAA0000000
  %134 = fmul fast float %131, 0x3FDAAAAAA0000000
  %135 = call float @dx.op.unary.f32(i32 21, float %132)  ; Exp(value)
  %136 = call float @dx.op.unary.f32(i32 21, float %133)  ; Exp(value)
  %137 = call float @dx.op.unary.f32(i32 21, float %134)  ; Exp(value)
  %138 = fmul fast float %135, 0x3FF0E147A0000000
  %139 = fmul fast float %136, 0x3FF0E147A0000000
  %140 = fmul fast float %137, 0x3FF0E147A0000000
  %141 = fadd fast float %138, 0xBFAC28F5C0000000
  %142 = fadd fast float %139, 0xBFAC28F5C0000000
  %143 = fadd fast float %140, 0xBFAC28F5C0000000
  %144 = call float @dx.op.unary.f32(i32 7, float %141)  ; Saturate(value)
  %145 = call float @dx.op.unary.f32(i32 7, float %142)  ; Saturate(value)
  %146 = call float @dx.op.unary.f32(i32 7, float %143)  ; Saturate(value)
  %147 = extractvalue %dx.types.CBufRet.f32 %104, 2
  %148 = extractvalue %dx.types.CBufRet.f32 %104, 3
  %149 = fmul fast float %147, %144
  %150 = fmul fast float %147, %145
  %151 = fmul fast float %147, %146
  %152 = fadd fast float %149, %148
  %153 = fadd fast float %150, %148
  %154 = fadd fast float %151, %148
  br label %410

; <label>:155                                     ; preds = %123
  %156 = fmul fast float %101, 0x4163D57C00000000
  %157 = fmul fast float %102, 0x4163D57C00000000
  %158 = fmul fast float %103, 0x4163D57C00000000
  %159 = fadd fast float %156, 9.999980e+05
  %160 = fadd fast float %157, 9.999980e+05
  %161 = fadd fast float %158, 9.999980e+05
  %162 = fmul fast float %159, %101
  %163 = fmul fast float %160, %102
  %164 = fmul fast float %161, %103
  %165 = fadd fast float %162, 0xC0AFE17A60000000
  %166 = fadd fast float %163, 0xC0AFE17A60000000
  %167 = fadd fast float %164, 0xC0AFE17A60000000
  %168 = fmul fast float %165, %101
  %169 = fmul fast float %166, %102
  %170 = fmul fast float %167, %103
  %171 = fmul fast float %101, 0x40F753C340000000
  %172 = fmul fast float %102, 0x40F753C340000000
  %173 = fmul fast float %103, 0x40F753C340000000
  %174 = fsub fast float 9.999990e+06, %171
  %175 = fsub fast float 9.999990e+06, %172
  %176 = fsub fast float 9.999990e+06, %173
  %177 = fmul fast float %174, %101
  %178 = fmul fast float %175, %102
  %179 = fmul fast float %176, %103
  %180 = fadd fast float %177, 0x4136D1DD80000000
  %181 = fadd fast float %178, 0x4136D1DD80000000
  %182 = fadd fast float %179, 0x4136D1DD80000000
  %183 = fmul fast float %180, %101
  %184 = fmul fast float %181, %102
  %185 = fmul fast float %182, %103
  %186 = fadd fast float %183, 1.000000e+00
  %187 = fadd fast float %184, 1.000000e+00
  %188 = fadd fast float %185, 1.000000e+00
  %189 = fdiv fast float %168, %186
  %190 = fdiv fast float %169, %187
  %191 = fdiv fast float %170, %188
  %192 = call float @dx.op.unary.f32(i32 7, float %189)  ; Saturate(value)
  %193 = call float @dx.op.unary.f32(i32 7, float %190)  ; Saturate(value)
  %194 = call float @dx.op.unary.f32(i32 7, float %191)  ; Saturate(value)
  %195 = extractvalue %dx.types.CBufRet.f32 %104, 1
  %196 = fmul fast float %192, 0x3FE413A920000000
  %197 = call float @dx.op.tertiary.f32(i32 46, float 0x3FD5134040000000, float %193, float %196)  ; FMad(a,b,c)
  %198 = call float @dx.op.tertiary.f32(i32 46, float 0x3FA62B6AE0000000, float %194, float %197)  ; FMad(a,b,c)
  %199 = fmul fast float %192, 0x3FB1B089A0000000
  %200 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED6C8B40000000, float %193, float %199)  ; FMad(a,b,c)
  %201 = call float @dx.op.tertiary.f32(i32 46, float 0x3F8758E220000000, float %194, float %200)  ; FMad(a,b,c)
  %202 = fmul fast float %192, 0x3F90CB2960000000
  %203 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB6872B00000000, float %193, float %202)  ; FMad(a,b,c)
  %204 = call float @dx.op.tertiary.f32(i32 46, float 0x3FECA8C160000000, float %194, float %203)  ; FMad(a,b,c)
  %205 = fmul fast float %198, %195
  %206 = fmul fast float %201, %195
  %207 = fmul fast float %204, %195
  %208 = fmul fast float %205, 0x3F847AE140000000
  %209 = fmul fast float %206, 0x3F847AE140000000
  %210 = fmul fast float %207, 0x3F847AE140000000
  %211 = fmul fast float %205, 0x40B4D2F520000000
  %212 = fmul fast float %206, 0x40B4D2F520000000
  %213 = fmul fast float %207, 0x40B4D2F520000000
  %214 = fadd fast float %211, 0x41869ECF20000000
  %215 = fadd fast float %212, 0x41869ECF20000000
  %216 = fadd fast float %213, 0x41869ECF20000000
  %217 = fmul fast float %214, %208
  %218 = fmul fast float %215, %209
  %219 = fmul fast float %216, %210
  %220 = fadd fast float %217, 0x417BB79C60000000
  %221 = fadd fast float %218, 0x417BB79C60000000
  %222 = fadd fast float %219, 0x417BB79C60000000
  %223 = fmul fast float %220, %208
  %224 = fmul fast float %221, %209
  %225 = fmul fast float %222, %210
  %226 = fadd fast float %223, 0x41218DE180000000
  %227 = fadd fast float %224, 0x41218DE180000000
  %228 = fadd fast float %225, 0x41218DE180000000
  %229 = fmul fast float %226, %208
  %230 = fmul fast float %227, %209
  %231 = fmul fast float %228, %210
  %232 = fadd fast float %229, 0x4077F174E0000000
  %233 = fadd fast float %230, 0x4077F174E0000000
  %234 = fadd fast float %231, 0x4077F174E0000000
  %235 = fmul fast float %232, %208
  %236 = fmul fast float %233, %209
  %237 = fmul fast float %234, %210
  %238 = fadd fast float %235, 0x3F3FF79B80000000
  %239 = fadd fast float %236, 0x3F3FF79B80000000
  %240 = fadd fast float %237, 0x3F3FF79B80000000
  %241 = fmul fast float %205, 0x412442D320000000
  %242 = fmul fast float %206, 0x412442D320000000
  %243 = fmul fast float %207, 0x412442D320000000
  %244 = fadd fast float %241, 0x419385D5C0000000
  %245 = fadd fast float %242, 0x419385D5C0000000
  %246 = fadd fast float %243, 0x419385D5C0000000
  %247 = fmul fast float %244, %208
  %248 = fmul fast float %245, %209
  %249 = fmul fast float %246, %210
  %250 = fadd fast float %247, 4.182885e+06
  %251 = fadd fast float %248, 4.182885e+06
  %252 = fadd fast float %249, 4.182885e+06
  %253 = fmul fast float %250, %208
  %254 = fmul fast float %251, %209
  %255 = fmul fast float %252, %210
  %256 = fadd fast float %253, 0x40C4D633C0000000
  %257 = fadd fast float %254, 0x40C4D633C0000000
  %258 = fadd fast float %255, 0x40C4D633C0000000
  %259 = fmul fast float %256, %208
  %260 = fmul fast float %257, %209
  %261 = fmul fast float %258, %210
  %262 = fadd fast float %259, 1.000000e+00
  %263 = fadd fast float %260, 1.000000e+00
  %264 = fadd fast float %261, 1.000000e+00
  %265 = fdiv fast float %238, %262
  %266 = fdiv fast float %239, %263
  %267 = fdiv fast float %240, %264
  %268 = extractvalue %dx.types.CBufRet.f32 %104, 2
  %269 = extractvalue %dx.types.CBufRet.f32 %104, 3
  %270 = fmul fast float %268, %265
  %271 = fmul fast float %268, %266
  %272 = fmul fast float %268, %267
  %273 = fadd fast float %270, %269
  %274 = fadd fast float %271, %269
  %275 = fadd fast float %272, %269
  br label %410

; <label>:276                                     ; preds = %123
  %277 = fmul fast float %101, 0x4163D57C00000000
  %278 = fmul fast float %102, 0x4163D57C00000000
  %279 = fmul fast float %103, 0x4163D57C00000000
  %280 = fadd fast float %277, 9.999980e+05
  %281 = fadd fast float %278, 9.999980e+05
  %282 = fadd fast float %279, 9.999980e+05
  %283 = fmul fast float %280, %101
  %284 = fmul fast float %281, %102
  %285 = fmul fast float %282, %103
  %286 = fadd fast float %283, 0xC0AFE17A60000000
  %287 = fadd fast float %284, 0xC0AFE17A60000000
  %288 = fadd fast float %285, 0xC0AFE17A60000000
  %289 = fmul fast float %286, %101
  %290 = fmul fast float %287, %102
  %291 = fmul fast float %288, %103
  %292 = fmul fast float %101, 0x40F753C340000000
  %293 = fmul fast float %102, 0x40F753C340000000
  %294 = fmul fast float %103, 0x40F753C340000000
  %295 = fsub fast float 9.999990e+06, %292
  %296 = fsub fast float 9.999990e+06, %293
  %297 = fsub fast float 9.999990e+06, %294
  %298 = fmul fast float %295, %101
  %299 = fmul fast float %296, %102
  %300 = fmul fast float %297, %103
  %301 = fadd fast float %298, 0x4136D1DD80000000
  %302 = fadd fast float %299, 0x4136D1DD80000000
  %303 = fadd fast float %300, 0x4136D1DD80000000
  %304 = fmul fast float %301, %101
  %305 = fmul fast float %302, %102
  %306 = fmul fast float %303, %103
  %307 = fadd fast float %304, 1.000000e+00
  %308 = fadd fast float %305, 1.000000e+00
  %309 = fadd fast float %306, 1.000000e+00
  %310 = fdiv fast float %289, %307
  %311 = fdiv fast float %290, %308
  %312 = fdiv fast float %291, %309
  %313 = call float @dx.op.unary.f32(i32 7, float %310)  ; Saturate(value)
  %314 = call float @dx.op.unary.f32(i32 7, float %311)  ; Saturate(value)
  %315 = call float @dx.op.unary.f32(i32 7, float %312)  ; Saturate(value)
  %316 = extractvalue %dx.types.CBufRet.f32 %104, 1
  %317 = fmul fast float %313, 0x3FEA519BC0000000
  %318 = call float @dx.op.tertiary.f32(i32 46, float 0x3FC6B990A0000000, float %314, float %317)  ; FMad(a,b,c)
  %319 = fmul fast float %313, 0x3FA0FED480000000
  %320 = call float @dx.op.tertiary.f32(i32 46, float 0x3FEEF012C0000000, float %314, float %319)  ; FMad(a,b,c)
  %321 = fmul fast float %313, 0x3F917E1C00000000
  %322 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB288A2E0000000, float %314, float %321)  ; FMad(a,b,c)
  %323 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED22FAA0000000, float %315, float %322)  ; FMad(a,b,c)
  %324 = call float @dx.op.binary.f32(i32 35, float %313, float %314)  ; FMax(a,b)
  %325 = call float @dx.op.binary.f32(i32 35, float %324, float %315)  ; FMax(a,b)
  %326 = fadd fast float %325, -1.000000e+00
  %327 = fmul fast float %326, 2.500000e-01
  %328 = call float @dx.op.unary.f32(i32 7, float %327)  ; Saturate(value)
  %329 = fsub fast float 1.000000e+00, %328
  %330 = fmul fast float %329, %318
  %331 = fmul fast float %329, %320
  %332 = fmul fast float %329, %323
  %333 = fmul fast float %328, %313
  %334 = fmul fast float %328, %314
  %335 = fmul fast float %328, %315
  %336 = fadd fast float %330, %333
  %337 = fadd fast float %331, %334
  %338 = fadd fast float %332, %335
  %339 = fmul fast float %336, %316
  %340 = fmul fast float %337, %316
  %341 = fmul fast float %338, %316
  %342 = fmul fast float %339, 0x3F847AE140000000
  %343 = fmul fast float %340, 0x3F847AE140000000
  %344 = fmul fast float %341, 0x3F847AE140000000
  %345 = fmul fast float %339, 0x40B4D2F520000000
  %346 = fmul fast float %340, 0x40B4D2F520000000
  %347 = fmul fast float %341, 0x40B4D2F520000000
  %348 = fadd fast float %345, 0x41869ECF20000000
  %349 = fadd fast float %346, 0x41869ECF20000000
  %350 = fadd fast float %347, 0x41869ECF20000000
  %351 = fmul fast float %348, %342
  %352 = fmul fast float %349, %343
  %353 = fmul fast float %350, %344
  %354 = fadd fast float %351, 0x417BB79C60000000
  %355 = fadd fast float %352, 0x417BB79C60000000
  %356 = fadd fast float %353, 0x417BB79C60000000
  %357 = fmul fast float %354, %342
  %358 = fmul fast float %355, %343
  %359 = fmul fast float %356, %344
  %360 = fadd fast float %357, 0x41218DE180000000
  %361 = fadd fast float %358, 0x41218DE180000000
  %362 = fadd fast float %359, 0x41218DE180000000
  %363 = fmul fast float %360, %342
  %364 = fmul fast float %361, %343
  %365 = fmul fast float %362, %344
  %366 = fadd fast float %363, 0x4077F174E0000000
  %367 = fadd fast float %364, 0x4077F174E0000000
  %368 = fadd fast float %365, 0x4077F174E0000000
  %369 = fmul fast float %366, %342
  %370 = fmul fast float %367, %343
  %371 = fmul fast float %368, %344
  %372 = fadd fast float %369, 0x3F3FF79B80000000
  %373 = fadd fast float %370, 0x3F3FF79B80000000
  %374 = fadd fast float %371, 0x3F3FF79B80000000
  %375 = fmul fast float %339, 0x412442D320000000
  %376 = fmul fast float %340, 0x412442D320000000
  %377 = fmul fast float %341, 0x412442D320000000
  %378 = fadd fast float %375, 0x419385D5C0000000
  %379 = fadd fast float %376, 0x419385D5C0000000
  %380 = fadd fast float %377, 0x419385D5C0000000
  %381 = fmul fast float %378, %342
  %382 = fmul fast float %379, %343
  %383 = fmul fast float %380, %344
  %384 = fadd fast float %381, 4.182885e+06
  %385 = fadd fast float %382, 4.182885e+06
  %386 = fadd fast float %383, 4.182885e+06
  %387 = fmul fast float %384, %342
  %388 = fmul fast float %385, %343
  %389 = fmul fast float %386, %344
  %390 = fadd fast float %387, 0x40C4D633C0000000
  %391 = fadd fast float %388, 0x40C4D633C0000000
  %392 = fadd fast float %389, 0x40C4D633C0000000
  %393 = fmul fast float %390, %342
  %394 = fmul fast float %391, %343
  %395 = fmul fast float %392, %344
  %396 = fadd fast float %393, 1.000000e+00
  %397 = fadd fast float %394, 1.000000e+00
  %398 = fadd fast float %395, 1.000000e+00
  %399 = fdiv fast float %372, %396
  %400 = fdiv fast float %373, %397
  %401 = fdiv fast float %374, %398
  %402 = extractvalue %dx.types.CBufRet.f32 %104, 2
  %403 = extractvalue %dx.types.CBufRet.f32 %104, 3
  %404 = fmul fast float %402, %399
  %405 = fmul fast float %402, %400
  %406 = fmul fast float %402, %401
  %407 = fadd fast float %404, %403
  %408 = fadd fast float %405, %403
  %409 = fadd fast float %406, %403
  br label %410

; <label>:410                                     ; preds = %276, %155, %125, %123, %109
  %411 = phi float [ %120, %109 ], [ %101, %123 ], [ %407, %276 ], [ %273, %155 ], [ %152, %125 ]
  %412 = phi float [ %121, %109 ], [ %102, %123 ], [ %408, %276 ], [ %274, %155 ], [ %153, %125 ]
  %413 = phi float [ %122, %109 ], [ %103, %123 ], [ %409, %276 ], [ %275, %155 ], [ %154, %125 ]
  %414 = fmul fast float %411, %74
  %415 = fmul fast float %412, %74
  %416 = fmul fast float %413, %74
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %414)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %415)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %416)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %74)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!18}
!dx.entryPoints = !{!19}

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
!12 = !{i32 1, %perObject* undef, !"", i32 0, i32 1, i32 1, i32 48, null}
!13 = !{!14, !15, !16, !17}
!14 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!15 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!16 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!17 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!18 = !{[14 x i32] [i32 12, i32 4, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 7, i32 15, i32 15, i32 15, i32 7, i32 7]}
!19 = !{void ()* @ps_main, !"ps_main", !20, !4, null}
!20 = !{!21, !30, null}
!21 = !{!22, !24, !26, !28}
!22 = !{i32 0, !"SV_Position", i8 9, i8 3, !23, i8 4, i32 1, i8 4, i32 0, i8 0, null}
!23 = !{i32 0}
!24 = !{i32 1, !"COLOR", i8 9, i8 0, !23, i8 2, i32 1, i8 4, i32 1, i8 0, !25}
!25 = !{i32 3, i32 15}
!26 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !23, i8 2, i32 1, i8 2, i32 2, i8 0, !27}
!27 = !{i32 3, i32 3}
!28 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !29, i8 2, i32 1, i8 2, i32 2, i8 2, !27}
!29 = !{i32 7}
!30 = !{!31}
!31 = !{i32 0, !"SV_Target", i8 9, i8 16, !23, i8 0, i32 1, i8 4, i32 0, i8 0, !25}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 1}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 1}

