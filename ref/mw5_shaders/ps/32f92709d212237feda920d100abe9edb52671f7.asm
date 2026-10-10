;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float       
; TEXCOORD                 0   xy          1     NONE   float   xy  
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: dfe9b8a3329fa87495210c096a24faac
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
;   [48 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb1     1
;                                   texture     f32          2d      T0             t0     1
;
;
; ViewId state:
;
; Number of inputs: 6, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 4, 5 }
;   output 1 depends on inputs: { 4, 5 }
;   output 2 depends on inputs: { 4, 5 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%perObject = type { <4 x float>, <4 x float>, <4 x float> }

@standardObserver1931Outline.v.1dim = internal constant [48 x float] [float 0x3FC60B6740000000, float 0x3F73CEE9E0000000, float 0x3FC2F54D20000000, float 0x3F9A3E7D20000000, float 0x3FC1482BE0000000, float 0x3FA5143C00000000, float 0x3FBD800A80000000, float 0x3FB3718660000000, float 0x3FBA22B380000000, float 0x3FBB24A6A0000000, float 0x3FB3E21DA0000000, float 0x3FC65C67E0000000, float 0x3FA75BA2C0000000, float 0x3FD320FB20000000, float 0x3F9D188F40000000, float 0x3FD8F3A580000000, float 0x3F8E35C5C0000000, float 0x3FDF398200000000, float 0x3F7CA3A4C0000000, float 0x3FE2B397E0000000, float 0x3F7D180900000000, float 0x3FE5817BA0000000, float 0x3F90C1FC80000000, float 0x3FE7D3BF20000000, float 0x3F9919EFA0000000, float 0x3FE8BEBE20000000, float 0x3FA1CD3E00000000, float 0x3FE97A5F40000000, float 0x3FA7FB8B20000000, float 0x3FEA036A80000000, float 0x3FB0601360000000, float 0x3FEA69BC00000000, float 0x3FB42DCF40000000, float 0x3FEA8B06C0000000, float 0x3FB8268900000000, float 0x3FEA883560000000, float 0x3FBC3A10A0000000, float 0x3FEA69C880000000, float 0x3FC23AC920000000, float 0x3FE9F95700000000, float 0x3FCA16A480000000, float 0x3FE8BE7B00000000, float 0x3FD0C69300000000, float 0x3FE7443D40000000, float 0x3FD81B1100000000, float 0x3FE3DE82E0000000, float 0x3FE79387A0000000, float 0x3FD0D8F0C0000000], align 4

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %4 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %5 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %2, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %6 = extractvalue %dx.types.CBufRet.f32 %5, 2
  %7 = extractvalue %dx.types.CBufRet.f32 %5, 3
  %8 = fmul fast float %6, %3
  %9 = fmul fast float %7, %4
  %10 = fadd fast float %7, -1.000000e+00
  %11 = fsub fast float %10, %9
  br label %12

; <label>:12                                      ; preds = %69, %0
  %13 = phi float [ 0x3FECCCCCC0000000, %0 ], [ %89, %69 ]
  %14 = phi float [ 0x3FECCCCCC0000000, %0 ], [ %90, %69 ]
  %15 = phi float [ 0x3FECCCCCC0000000, %0 ], [ %91, %69 ]
  %16 = phi float [ 0x3FB99999A0000000, %0 ], [ %92, %69 ]
  %17 = fmul fast float %7, %7
  %18 = call float @dx.op.unary.f32(i32 24, float %17)  ; Sqrt(value)
  %19 = fcmp fast ogt float %18, 0x3F60624DE0000000
  br i1 %19, label %20, label %31

; <label>:20                                      ; preds = %12
  %21 = fdiv fast float %7, %18
  %22 = fsub fast float %3, %16
  %23 = fmul fast float %22, %6
  %24 = fmul fast float %21, %23
  %25 = fcmp olt float %24, -0.000000e+00
  %26 = select i1 %25, float 1.000000e+00, float -1.000000e+00
  %27 = call float @dx.op.dot2.f32(i32 54, float 0.000000e+00, float %21, float %23, float %11)  ; Dot2(ax,ay,bx,by)
  %28 = call float @dx.op.binary.f32(i32 35, float %27, float 0.000000e+00)  ; FMax(a,b)
  %29 = call float @dx.op.binary.f32(i32 36, float %28, float %18)  ; FMin(a,b)
  %30 = fmul fast float %29, %21
  br label %31

; <label>:31                                      ; preds = %20, %12
  %32 = phi float [ %26, %20 ], [ -1.000000e+00, %12 ]
  %33 = phi float [ %30, %20 ], [ 0.000000e+00, %12 ]
  %34 = fsub fast float %16, %3
  %35 = fmul fast float %34, %6
  %36 = fsub fast float %33, %11
  %37 = fmul fast float %35, %35
  %38 = fmul fast float %36, %36
  %39 = fadd fast float %38, %37
  %40 = call float @dx.op.unary.f32(i32 24, float %39)  ; Sqrt(value)
  %41 = fmul fast float %40, %32
  %42 = call float @dx.op.unary.f32(i32 6, float %41)  ; FAbs(value)
  %43 = fsub fast float 1.000000e+00, %42
  %44 = call float @dx.op.unary.f32(i32 7, float %43)  ; Saturate(value)
  %45 = call float @dx.op.unary.f32(i32 7, float %44)  ; Saturate(value)
  %46 = fsub fast float 0x3FE99999A0000000, %13
  %47 = fsub fast float 0x3FE99999A0000000, %14
  %48 = fsub fast float 0x3FE99999A0000000, %15
  %49 = fmul fast float %45, %46
  %50 = fmul fast float %45, %47
  %51 = fmul fast float %45, %48
  %52 = fadd fast float %49, %13
  %53 = fadd fast float %50, %14
  %54 = fadd fast float %51, %15
  %55 = fmul fast float %16, %7
  %56 = fmul fast float %6, %6
  %57 = call float @dx.op.unary.f32(i32 24, float %56)  ; Sqrt(value)
  %58 = fcmp fast ogt float %57, 0x3F60624DE0000000
  br i1 %58, label %59, label %69

; <label>:59                                      ; preds = %31
  %60 = fdiv fast float %6, %57
  %61 = fsub fast float %11, %55
  %62 = fmul fast float %60, %61
  %63 = fcmp fast ogt float %62, 0.000000e+00
  %64 = select i1 %63, float 1.000000e+00, float -1.000000e+00
  %65 = call float @dx.op.dot2.f32(i32 54, float %60, float 0.000000e+00, float %8, float %61)  ; Dot2(ax,ay,bx,by)
  %66 = call float @dx.op.binary.f32(i32 35, float %65, float 0.000000e+00)  ; FMax(a,b)
  %67 = call float @dx.op.binary.f32(i32 36, float %66, float %57)  ; FMin(a,b)
  %68 = fmul fast float %67, %60
  br label %69

; <label>:69                                      ; preds = %59, %31
  %70 = phi float [ %64, %59 ], [ -1.000000e+00, %31 ]
  %71 = phi float [ %68, %59 ], [ 0.000000e+00, %31 ]
  %72 = fsub fast float %71, %8
  %73 = fsub fast float %55, %11
  %74 = fmul fast float %72, %72
  %75 = fmul fast float %73, %73
  %76 = fadd fast float %74, %75
  %77 = call float @dx.op.unary.f32(i32 24, float %76)  ; Sqrt(value)
  %78 = fmul fast float %77, %70
  %79 = call float @dx.op.unary.f32(i32 6, float %78)  ; FAbs(value)
  %80 = fsub fast float 1.000000e+00, %79
  %81 = call float @dx.op.unary.f32(i32 7, float %80)  ; Saturate(value)
  %82 = call float @dx.op.unary.f32(i32 7, float %81)  ; Saturate(value)
  %83 = fsub fast float 0x3FE99999A0000000, %52
  %84 = fsub fast float 0x3FE99999A0000000, %53
  %85 = fsub fast float 0x3FE99999A0000000, %54
  %86 = fmul fast float %82, %83
  %87 = fmul fast float %82, %84
  %88 = fmul fast float %82, %85
  %89 = fadd fast float %86, %52
  %90 = fadd fast float %87, %53
  %91 = fadd fast float %88, %54
  %92 = fadd fast float %16, 0x3FB99999A0000000
  %93 = fcmp fast ugt float %92, 1.000000e+00
  br i1 %93, label %94, label %12

; <label>:94                                      ; preds = %69
  br i1 %58, label %95, label %104

; <label>:95                                      ; preds = %94
  %96 = fdiv fast float %6, %57
  %97 = fmul fast float %96, %11
  %98 = fcmp fast ogt float %97, 0.000000e+00
  %99 = select i1 %98, float 1.000000e+00, float -1.000000e+00
  %100 = call float @dx.op.dot2.f32(i32 54, float %96, float 0.000000e+00, float %8, float %11)  ; Dot2(ax,ay,bx,by)
  %101 = call float @dx.op.binary.f32(i32 35, float %100, float 0.000000e+00)  ; FMax(a,b)
  %102 = call float @dx.op.binary.f32(i32 36, float %101, float %57)  ; FMin(a,b)
  %103 = fmul fast float %102, %96
  br label %104

; <label>:104                                     ; preds = %95, %94
  %105 = phi float [ %99, %95 ], [ -1.000000e+00, %94 ]
  %106 = phi float [ %103, %95 ], [ 0.000000e+00, %94 ]
  %107 = fsub fast float %106, %8
  %108 = fmul fast float %107, %107
  %109 = fmul fast float %11, %11
  %110 = fadd fast float %108, %109
  %111 = call float @dx.op.unary.f32(i32 24, float %110)  ; Sqrt(value)
  %112 = fmul fast float %111, %105
  %113 = call float @dx.op.unary.f32(i32 6, float %112)  ; FAbs(value)
  %114 = fsub fast float 2.000000e+00, %113
  %115 = call float @dx.op.unary.f32(i32 7, float %114)  ; Saturate(value)
  %116 = call float @dx.op.unary.f32(i32 7, float %115)  ; Saturate(value)
  %117 = fsub fast float 5.000000e-01, %89
  %118 = fsub fast float 5.000000e-01, %90
  %119 = fsub fast float 5.000000e-01, %91
  %120 = fmul fast float %116, %117
  %121 = fmul fast float %116, %118
  %122 = fmul fast float %116, %119
  %123 = fadd fast float %120, %89
  %124 = fadd fast float %121, %90
  %125 = fadd fast float %122, %91
  br i1 %19, label %126, label %135

; <label>:126                                     ; preds = %104
  %127 = fdiv fast float %7, %18
  %128 = fmul fast float %127, %8
  %129 = fcmp olt float %128, -0.000000e+00
  %130 = select i1 %129, float 1.000000e+00, float -1.000000e+00
  %131 = call float @dx.op.dot2.f32(i32 54, float 0.000000e+00, float %127, float %8, float %11)  ; Dot2(ax,ay,bx,by)
  %132 = call float @dx.op.binary.f32(i32 35, float %131, float 0.000000e+00)  ; FMax(a,b)
  %133 = call float @dx.op.binary.f32(i32 36, float %132, float %18)  ; FMin(a,b)
  %134 = fmul fast float %133, %127
  br label %135

; <label>:135                                     ; preds = %126, %104
  %136 = phi float [ %130, %126 ], [ -1.000000e+00, %104 ]
  %137 = phi float [ %134, %126 ], [ 0.000000e+00, %104 ]
  %138 = fsub fast float %137, %11
  %139 = fmul fast float %8, %8
  %140 = fmul fast float %138, %138
  %141 = fadd fast float %140, %139
  %142 = call float @dx.op.unary.f32(i32 24, float %141)  ; Sqrt(value)
  %143 = fmul fast float %142, %136
  %144 = call float @dx.op.unary.f32(i32 6, float %143)  ; FAbs(value)
  %145 = fsub fast float 2.000000e+00, %144
  %146 = call float @dx.op.unary.f32(i32 7, float %145)  ; Saturate(value)
  %147 = call float @dx.op.unary.f32(i32 7, float %146)  ; Saturate(value)
  %148 = fsub fast float 5.000000e-01, %123
  %149 = fsub fast float 5.000000e-01, %124
  %150 = fsub fast float 5.000000e-01, %125
  %151 = fmul fast float %147, %148
  %152 = fmul fast float %147, %149
  %153 = fmul fast float %147, %150
  %154 = fadd fast float %151, %123
  %155 = fadd fast float %152, %124
  %156 = fadd fast float %153, %125
  %157 = fadd fast float %56, %17
  %158 = call float @dx.op.unary.f32(i32 24, float %157)  ; Sqrt(value)
  %159 = fcmp fast ogt float %158, 0x3F60624DE0000000
  br i1 %159, label %160, label %176

; <label>:160                                     ; preds = %135
  %161 = fsub fast float -0.000000e+00, %7
  %162 = fdiv fast float %6, %158
  %163 = fdiv fast float %161, %158
  %164 = fsub fast float %11, %7
  %165 = fmul fast float %162, %164
  %166 = fmul fast float %163, %8
  %167 = fsub fast float %165, %166
  %168 = fcmp fast ogt float %167, 0.000000e+00
  %169 = select i1 %168, float 1.000000e+00, float -1.000000e+00
  %170 = call float @dx.op.dot2.f32(i32 54, float %162, float %163, float %8, float %164)  ; Dot2(ax,ay,bx,by)
  %171 = call float @dx.op.binary.f32(i32 35, float %170, float 0.000000e+00)  ; FMax(a,b)
  %172 = call float @dx.op.binary.f32(i32 36, float %171, float %158)  ; FMin(a,b)
  %173 = fmul fast float %172, %162
  %174 = fmul fast float %172, %163
  %175 = fadd fast float %174, %7
  br label %176

; <label>:176                                     ; preds = %160, %135
  %177 = phi float [ %169, %160 ], [ -1.000000e+00, %135 ]
  %178 = phi float [ %173, %160 ], [ 0.000000e+00, %135 ]
  %179 = phi float [ %175, %160 ], [ %7, %135 ]
  %180 = fsub fast float %178, %8
  %181 = fsub fast float %179, %11
  %182 = fmul fast float %180, %180
  %183 = fmul fast float %181, %181
  %184 = fadd fast float %183, %182
  %185 = call float @dx.op.unary.f32(i32 24, float %184)  ; Sqrt(value)
  %186 = fmul fast float %185, %177
  %187 = call float @dx.op.unary.f32(i32 6, float %186)  ; FAbs(value)
  %188 = fsub fast float 1.000000e+00, %187
  %189 = call float @dx.op.unary.f32(i32 7, float %188)  ; Saturate(value)
  %190 = call float @dx.op.unary.f32(i32 7, float %189)  ; Saturate(value)
  %191 = fsub fast float 0x3FE99999A0000000, %155
  %192 = fsub fast float 0x3FE99999A0000000, %156
  %193 = fmul fast float %190, %191
  %194 = fmul fast float %190, %192
  %195 = fadd fast float %193, %155
  %196 = fdiv fast float %8, %6
  %197 = fdiv fast float %11, %7
  %198 = fdiv fast float 1.000000e+00, %197
  %199 = fmul fast float %198, %196
  %200 = fsub fast float 1.000000e+00, %196
  %201 = fsub fast float %200, %197
  %202 = fmul fast float %198, %201
  %203 = fmul fast float %199, 0x4009EC7340000000
  %204 = fadd fast float %203, 0xBFF8981E80000000
  %205 = call float @dx.op.tertiary.f32(i32 46, float 0xBFDFE7F040000000, float %202, float %204)  ; FMad(a,b,c)
  %206 = fmul fast float %199, 0x3FEF043A20000000
  %207 = fsub fast float 0x3FFE0423E0000000, %206
  %208 = call float @dx.op.tertiary.f32(i32 46, float 0x3FA546D400000000, float %202, float %207)  ; FMad(a,b,c)
  %209 = fmul fast float %199, 0x3FAC7D4AA0000000
  %210 = fadd fast float %209, 0xBFCA1D8540000000
  %211 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF0EA6500000000, float %202, float %210)  ; FMad(a,b,c)
  %212 = fmul fast float %205, %205
  %213 = fmul fast float %208, %208
  %214 = fadd fast float %213, %212
  %215 = fmul fast float %211, %211
  %216 = fadd fast float %214, %215
  %217 = call float @dx.op.unary.f32(i32 24, float %216)  ; Sqrt(value)
  %218 = fdiv fast float 1.000000e+00, %217
  %219 = fadd fast float %208, %205
  %220 = fadd fast float %219, %211
  %221 = fmul fast float %220, 0x3FD5555560000000
  %222 = fsub fast float %205, %221
  %223 = fsub fast float %208, %221
  %224 = fsub fast float %211, %221
  %225 = fmul fast float %222, %222
  %226 = fmul fast float %223, %223
  %227 = fadd fast float %225, %226
  %228 = fmul fast float %224, %224
  %229 = fadd fast float %227, %228
  %230 = call float @dx.op.unary.f32(i32 24, float %229)  ; Sqrt(value)
  %231 = fmul fast float %230, -2.000000e+00
  %232 = call float @dx.op.unary.f32(i32 21, float %231)  ; Exp(value)
  %233 = fmul fast float %232, 5.000000e-01
  %234 = fadd fast float %233, 1.000000e+00
  %235 = fmul fast float %234, %218
  %236 = fmul fast float %235, %208
  %237 = fmul fast float %235, %211
  %238 = fmul fast float %236, 0x3FC3333340000000
  %239 = fmul fast float %237, 0x3FC3333340000000
  %240 = fcmp fast ole float %238, 0x3F69A5C380000000
  %241 = fcmp fast ole float %239, 0x3F69A5C380000000
  %242 = fmul fast float %236, 0x3FFF020C60000000
  %243 = fmul fast float %237, 0x3FFF020C60000000
  %244 = call float @dx.op.unary.f32(i32 23, float %238)  ; Log(value)
  %245 = call float @dx.op.unary.f32(i32 23, float %239)  ; Log(value)
  %246 = fmul fast float %244, 0x3FDAAAAAA0000000
  %247 = fmul fast float %245, 0x3FDAAAAAA0000000
  %248 = call float @dx.op.unary.f32(i32 21, float %246)  ; Exp(value)
  %249 = call float @dx.op.unary.f32(i32 21, float %247)  ; Exp(value)
  %250 = fmul fast float %248, 0x3FF0E147A0000000
  %251 = fmul fast float %249, 0x3FF0E147A0000000
  %252 = fadd fast float %250, 0xBFAC28F5C0000000
  %253 = fadd fast float %251, 0xBFAC28F5C0000000
  %254 = select i1 %240, float %242, float %252
  %255 = fmul fast float %6, 0x3FC60B6740000000
  %256 = fmul fast float %7, 0x3F73CEE9E0000000
  br label %257

; <label>:257                                     ; preds = %297, %176
  %258 = phi float [ %255, %176 ], [ %271, %297 ]
  %259 = phi float [ %256, %176 ], [ %272, %297 ]
  %260 = phi i32 [ 1, %176 ], [ %311, %297 ]
  %261 = phi float [ 1.000000e+05, %176 ], [ %310, %297 ]
  %262 = phi float [ -1.000000e+05, %176 ], [ %308, %297 ]
  %263 = mul i32 %260, 2
  %264 = add i32 0, %263
  %265 = getelementptr [48 x float], [48 x float]* @standardObserver1931Outline.v.1dim, i32 0, i32 %264
  %266 = load float, float* %265, align 4
  %267 = mul i32 %260, 2
  %268 = add i32 1, %267
  %269 = getelementptr [48 x float], [48 x float]* @standardObserver1931Outline.v.1dim, i32 0, i32 %268
  %270 = load float, float* %269, align 4
  %271 = fmul fast float %266, %6
  %272 = fmul fast float %270, %7
  %273 = fsub fast float %271, %258
  %274 = fsub fast float %272, %259
  %275 = fmul fast float %273, %273
  %276 = fmul fast float %274, %274
  %277 = fadd fast float %276, %275
  %278 = call float @dx.op.unary.f32(i32 24, float %277)  ; Sqrt(value)
  %279 = fcmp fast ogt float %278, 0x3F60624DE0000000
  br i1 %279, label %280, label %297

; <label>:280                                     ; preds = %257
  %281 = fdiv fast float %273, %278
  %282 = fdiv fast float %274, %278
  %283 = fsub fast float %8, %258
  %284 = fsub fast float %11, %259
  %285 = fmul fast float %281, %284
  %286 = fmul fast float %282, %283
  %287 = fsub fast float %285, %286
  %288 = fcmp fast ogt float %287, 0.000000e+00
  %289 = select i1 %288, float 1.000000e+00, float -1.000000e+00
  %290 = call float @dx.op.dot2.f32(i32 54, float %281, float %282, float %283, float %284)  ; Dot2(ax,ay,bx,by)
  %291 = call float @dx.op.binary.f32(i32 35, float %290, float 0.000000e+00)  ; FMax(a,b)
  %292 = call float @dx.op.binary.f32(i32 36, float %291, float %278)  ; FMin(a,b)
  %293 = fmul fast float %292, %281
  %294 = fmul fast float %292, %282
  %295 = fadd fast float %293, %258
  %296 = fadd fast float %294, %259
  br label %297

; <label>:297                                     ; preds = %280, %257
  %298 = phi float [ %289, %280 ], [ -1.000000e+00, %257 ]
  %299 = phi float [ %295, %280 ], [ %258, %257 ]
  %300 = phi float [ %296, %280 ], [ %259, %257 ]
  %301 = fsub fast float %299, %8
  %302 = fsub fast float %300, %11
  %303 = fmul fast float %301, %301
  %304 = fmul fast float %302, %302
  %305 = fadd fast float %304, %303
  %306 = call float @dx.op.unary.f32(i32 24, float %305)  ; Sqrt(value)
  %307 = fmul fast float %306, %298
  %308 = call float @dx.op.binary.f32(i32 35, float %262, float %307)  ; FMax(a,b)
  %309 = call float @dx.op.unary.f32(i32 6, float %307)  ; FAbs(value)
  %310 = call float @dx.op.binary.f32(i32 36, float %261, float %309)  ; FMin(a,b)
  %311 = add nuw nsw i32 %260, 1
  %312 = icmp eq i32 %311, 24
  br i1 %312, label %313, label %257

; <label>:313                                     ; preds = %297
  %314 = fsub fast float 0x3FE99999A0000000, %154
  %315 = fmul fast float %190, %314
  %316 = fadd fast float %315, %154
  %317 = fadd fast float %194, %156
  %318 = fmul fast float %235, %205
  %319 = fmul fast float %318, 0x3FC3333340000000
  %320 = fcmp fast ole float %319, 0x3F69A5C380000000
  %321 = fmul fast float %318, 0x3FFF020C60000000
  %322 = call float @dx.op.unary.f32(i32 23, float %319)  ; Log(value)
  %323 = fmul fast float %322, 0x3FDAAAAAA0000000
  %324 = call float @dx.op.unary.f32(i32 21, float %323)  ; Exp(value)
  %325 = fmul fast float %324, 0x3FF0E147A0000000
  %326 = fadd fast float %325, 0xBFAC28F5C0000000
  %327 = select i1 %320, float %321, float %326
  %328 = select i1 %241, float %243, float %253
  %329 = fmul fast float %6, 0x3FE79387A0000000
  %330 = fmul fast float %7, 0x3FD0D8F0C0000000
  %331 = fmul fast float %6, 0xBFE210ADC0000000
  %332 = fmul fast float %7, 0xBFD089B520000000
  %333 = fmul fast float %331, %331
  %334 = fmul fast float %332, %332
  %335 = fadd fast float %333, %334
  %336 = call float @dx.op.unary.f32(i32 24, float %335)  ; Sqrt(value)
  %337 = fcmp fast ogt float %336, 0x3F60624DE0000000
  br i1 %337, label %338, label %356

; <label>:338                                     ; preds = %313
  %339 = fdiv fast float %331, %336
  %340 = fdiv fast float %332, %336
  %341 = fadd fast float %3, 0xBFE79387A0000000
  %342 = fmul fast float %6, %341
  %343 = fsub fast float %11, %330
  %344 = fmul fast float %339, %343
  %345 = fmul fast float %340, %342
  %346 = fsub fast float %344, %345
  %347 = fcmp fast ogt float %346, 0.000000e+00
  %348 = select i1 %347, float 1.000000e+00, float -1.000000e+00
  %349 = call float @dx.op.dot2.f32(i32 54, float %339, float %340, float %342, float %343)  ; Dot2(ax,ay,bx,by)
  %350 = call float @dx.op.binary.f32(i32 35, float %349, float 0.000000e+00)  ; FMax(a,b)
  %351 = call float @dx.op.binary.f32(i32 36, float %350, float %336)  ; FMin(a,b)
  %352 = fmul fast float %351, %339
  %353 = fmul fast float %351, %340
  %354 = fadd fast float %352, %329
  %355 = fadd fast float %353, %330
  br label %356

; <label>:356                                     ; preds = %338, %313
  %357 = phi float [ %348, %338 ], [ -1.000000e+00, %313 ]
  %358 = phi float [ %354, %338 ], [ %329, %313 ]
  %359 = phi float [ %355, %338 ], [ %330, %313 ]
  %360 = fsub fast float %358, %8
  %361 = fsub fast float %359, %11
  %362 = fmul fast float %360, %360
  %363 = fmul fast float %361, %361
  %364 = fadd fast float %363, %362
  %365 = call float @dx.op.unary.f32(i32 24, float %364)  ; Sqrt(value)
  %366 = fmul fast float %365, %357
  %367 = call float @dx.op.binary.f32(i32 35, float %308, float %366)  ; FMax(a,b)
  %368 = fsub fast float -0.000000e+00, %367
  %369 = call float @dx.op.unary.f32(i32 7, float %368)  ; Saturate(value)
  %370 = call float @dx.op.unary.f32(i32 7, float %369)  ; Saturate(value)
  %371 = fsub fast float %327, %316
  %372 = fsub fast float %254, %195
  %373 = fsub fast float %328, %317
  %374 = fmul fast float %370, %371
  %375 = fmul fast float %370, %372
  %376 = fmul fast float %370, %373
  %377 = fadd fast float %374, %316
  %378 = fadd fast float %375, %195
  %379 = fadd fast float %376, %317
  %380 = fsub fast float 2.000000e+00, %310
  %381 = call float @dx.op.unary.f32(i32 7, float %380)  ; Saturate(value)
  %382 = call float @dx.op.unary.f32(i32 7, float %381)  ; Saturate(value)
  %383 = fsub fast float 0x3FB99999A0000000, %377
  %384 = fmul fast float %383, %382
  %385 = fmul fast float %378, %382
  %386 = fmul fast float %379, %382
  %387 = fadd fast float %384, %377
  %388 = fsub fast float %378, %385
  %389 = fsub fast float %379, %386
  %390 = fmul fast float %6, 0x3FE47AE140000000
  %391 = fmul fast float %7, 0x3FD51EB860000000
  %392 = fmul fast float %6, 0xBFDF5C28E0000000
  %393 = fmul fast float %7, 0xBFD147AE20000000
  %394 = fmul fast float %392, %392
  %395 = fmul fast float %393, %393
  %396 = fadd fast float %394, %395
  %397 = call float @dx.op.unary.f32(i32 24, float %396)  ; Sqrt(value)
  %398 = fcmp fast ogt float %397, 0x3F60624DE0000000
  br i1 %398, label %399, label %417

; <label>:399                                     ; preds = %356
  %400 = fdiv fast float %392, %397
  %401 = fdiv fast float %393, %397
  %402 = fadd fast float %3, 0xBFE47AE140000000
  %403 = fmul fast float %6, %402
  %404 = fsub fast float %11, %391
  %405 = fmul fast float %400, %404
  %406 = fmul fast float %401, %403
  %407 = fsub fast float %405, %406
  %408 = fcmp fast ogt float %407, 0.000000e+00
  %409 = select i1 %408, float 1.000000e+00, float -1.000000e+00
  %410 = call float @dx.op.dot2.f32(i32 54, float %400, float %401, float %403, float %404)  ; Dot2(ax,ay,bx,by)
  %411 = call float @dx.op.binary.f32(i32 35, float %410, float 0.000000e+00)  ; FMax(a,b)
  %412 = call float @dx.op.binary.f32(i32 36, float %411, float %397)  ; FMin(a,b)
  %413 = fmul fast float %412, %400
  %414 = fmul fast float %412, %401
  %415 = fadd fast float %413, %390
  %416 = fadd fast float %414, %391
  br label %417

; <label>:417                                     ; preds = %399, %356
  %418 = phi float [ %409, %399 ], [ -1.000000e+00, %356 ]
  %419 = phi float [ %415, %399 ], [ %390, %356 ]
  %420 = phi float [ %416, %399 ], [ %391, %356 ]
  %421 = fsub fast float %419, %8
  %422 = fsub fast float %420, %11
  %423 = fmul fast float %421, %421
  %424 = fmul fast float %422, %422
  %425 = fadd fast float %424, %423
  %426 = call float @dx.op.unary.f32(i32 24, float %425)  ; Sqrt(value)
  %427 = fmul fast float %426, %418
  %428 = call float @dx.op.unary.f32(i32 6, float %427)  ; FAbs(value)
  %429 = call float @dx.op.binary.f32(i32 36, float 1.000000e+05, float %428)  ; FMin(a,b)
  %430 = fmul fast float %6, 0x3FC3333340000000
  %431 = fmul fast float %7, 0x3FAEB851E0000000
  %432 = fmul fast float %7, 0x3FE147AE20000000
  %433 = fmul fast float %430, %430
  %434 = fmul fast float %432, %432
  %435 = fadd fast float %433, %434
  %436 = call float @dx.op.unary.f32(i32 24, float %435)  ; Sqrt(value)
  %437 = fcmp fast ogt float %436, 0x3F60624DE0000000
  br i1 %437, label %438, label %456

; <label>:438                                     ; preds = %417
  %439 = fdiv fast float %430, %436
  %440 = fdiv fast float %432, %436
  %441 = fadd fast float %3, 0xBFC3333340000000
  %442 = fmul fast float %6, %441
  %443 = fsub fast float %11, %431
  %444 = fmul fast float %439, %443
  %445 = fmul fast float %440, %442
  %446 = fsub fast float %444, %445
  %447 = fcmp fast ogt float %446, 0.000000e+00
  %448 = select i1 %447, float 1.000000e+00, float -1.000000e+00
  %449 = call float @dx.op.dot2.f32(i32 54, float %439, float %440, float %442, float %443)  ; Dot2(ax,ay,bx,by)
  %450 = call float @dx.op.binary.f32(i32 35, float %449, float 0.000000e+00)  ; FMax(a,b)
  %451 = call float @dx.op.binary.f32(i32 36, float %450, float %436)  ; FMin(a,b)
  %452 = fmul fast float %451, %439
  %453 = fmul fast float %451, %440
  %454 = fadd fast float %452, %430
  %455 = fadd fast float %453, %431
  br label %456

; <label>:456                                     ; preds = %438, %417
  %457 = phi float [ %448, %438 ], [ -1.000000e+00, %417 ]
  %458 = phi float [ %454, %438 ], [ %430, %417 ]
  %459 = phi float [ %455, %438 ], [ %431, %417 ]
  %460 = fsub fast float %458, %8
  %461 = fsub fast float %459, %11
  %462 = fmul fast float %460, %460
  %463 = fmul fast float %461, %461
  %464 = fadd fast float %463, %462
  %465 = call float @dx.op.unary.f32(i32 24, float %464)  ; Sqrt(value)
  %466 = fmul fast float %465, %457
  %467 = call float @dx.op.unary.f32(i32 6, float %466)  ; FAbs(value)
  %468 = call float @dx.op.binary.f32(i32 36, float %429, float %467)  ; FMin(a,b)
  %469 = fmul fast float %6, 0x3FD3333340000000
  %470 = fmul fast float %7, 0x3FE3333340000000
  %471 = fmul fast float %6, 0x3FD5C28F40000000
  %472 = fmul fast float %471, %471
  %473 = fadd fast float %472, %395
  %474 = call float @dx.op.unary.f32(i32 24, float %473)  ; Sqrt(value)
  %475 = fcmp fast ogt float %474, 0x3F60624DE0000000
  %476 = fadd fast float %3, 0xBFD3333340000000
  %477 = fmul fast float %6, %476
  %478 = fsub fast float %11, %470
  br i1 %475, label %479, label %494

; <label>:479                                     ; preds = %456
  %480 = fdiv fast float %471, %474
  %481 = fdiv fast float %393, %474
  %482 = fmul fast float %480, %478
  %483 = fmul fast float %481, %477
  %484 = fsub fast float %482, %483
  %485 = fcmp fast ogt float %484, 0.000000e+00
  %486 = select i1 %485, float 1.000000e+00, float -1.000000e+00
  %487 = call float @dx.op.dot2.f32(i32 54, float %480, float %481, float %477, float %478)  ; Dot2(ax,ay,bx,by)
  %488 = call float @dx.op.binary.f32(i32 35, float %487, float 0.000000e+00)  ; FMax(a,b)
  %489 = call float @dx.op.binary.f32(i32 36, float %488, float %474)  ; FMin(a,b)
  %490 = fmul fast float %489, %480
  %491 = fmul fast float %489, %481
  %492 = fadd fast float %490, %469
  %493 = fadd fast float %491, %470
  br label %494

; <label>:494                                     ; preds = %479, %456
  %495 = phi float [ %486, %479 ], [ -1.000000e+00, %456 ]
  %496 = phi float [ %492, %479 ], [ %469, %456 ]
  %497 = phi float [ %493, %479 ], [ %470, %456 ]
  %498 = fsub fast float %496, %8
  %499 = fsub fast float %497, %11
  %500 = fmul fast float %498, %498
  %501 = fmul fast float %499, %499
  %502 = fadd fast float %501, %500
  %503 = call float @dx.op.unary.f32(i32 24, float %502)  ; Sqrt(value)
  %504 = fmul fast float %503, %495
  %505 = call float @dx.op.unary.f32(i32 6, float %504)  ; FAbs(value)
  %506 = call float @dx.op.binary.f32(i32 36, float %468, float %505)  ; FMin(a,b)
  %507 = fsub fast float 1.500000e+00, %506
  %508 = call float @dx.op.unary.f32(i32 7, float %507)  ; Saturate(value)
  %509 = call float @dx.op.unary.f32(i32 7, float %508)  ; Saturate(value)
  %510 = fmul fast float %509, %387
  %511 = fmul fast float %509, %388
  %512 = fmul fast float %509, %389
  %513 = fsub fast float %387, %510
  %514 = fsub fast float %388, %511
  %515 = fsub fast float %389, %512
  %516 = fadd fast float %3, 0xBFE47AE140000000
  %517 = fmul fast float %6, %516
  %518 = fsub fast float %11, %391
  %519 = fmul fast float %517, %517
  %520 = fmul fast float %518, %518
  %521 = fadd fast float %520, %519
  %522 = call float @dx.op.unary.f32(i32 24, float %521)  ; Sqrt(value)
  %523 = fsub fast float 5.000000e+00, %522
  %524 = call float @dx.op.unary.f32(i32 7, float %523)  ; Saturate(value)
  %525 = call float @dx.op.unary.f32(i32 7, float %524)  ; Saturate(value)
  %526 = fsub fast float 6.500000e+00, %522
  %527 = call float @dx.op.unary.f32(i32 7, float %526)  ; Saturate(value)
  %528 = call float @dx.op.unary.f32(i32 7, float %527)  ; Saturate(value)
  %529 = fsub fast float %525, %513
  %530 = fmul fast float %528, %529
  %531 = fmul fast float %528, %514
  %532 = fmul fast float %528, %515
  %533 = fadd fast float %530, %513
  %534 = fsub fast float %514, %531
  %535 = fsub fast float %515, %532
  %536 = fmul fast float %477, %477
  %537 = fmul fast float %478, %478
  %538 = fadd fast float %537, %536
  %539 = call float @dx.op.unary.f32(i32 24, float %538)  ; Sqrt(value)
  %540 = fsub fast float 5.000000e+00, %539
  %541 = call float @dx.op.unary.f32(i32 7, float %540)  ; Saturate(value)
  %542 = call float @dx.op.unary.f32(i32 7, float %541)  ; Saturate(value)
  %543 = fsub fast float 6.500000e+00, %539
  %544 = call float @dx.op.unary.f32(i32 7, float %543)  ; Saturate(value)
  %545 = call float @dx.op.unary.f32(i32 7, float %544)  ; Saturate(value)
  %546 = fsub fast float %542, %534
  %547 = fmul fast float %545, %533
  %548 = fmul fast float %545, %546
  %549 = fmul fast float %545, %535
  %550 = fsub fast float %533, %547
  %551 = fadd fast float %548, %534
  %552 = fsub fast float %535, %549
  %553 = fadd fast float %3, 0xBFC3333340000000
  %554 = fmul fast float %6, %553
  %555 = fsub fast float %11, %431
  %556 = fmul fast float %554, %554
  %557 = fmul fast float %555, %555
  %558 = fadd fast float %557, %556
  %559 = call float @dx.op.unary.f32(i32 24, float %558)  ; Sqrt(value)
  %560 = fsub fast float 5.000000e+00, %559
  %561 = call float @dx.op.unary.f32(i32 7, float %560)  ; Saturate(value)
  %562 = call float @dx.op.unary.f32(i32 7, float %561)  ; Saturate(value)
  %563 = fsub fast float 6.500000e+00, %559
  %564 = call float @dx.op.unary.f32(i32 7, float %563)  ; Saturate(value)
  %565 = call float @dx.op.unary.f32(i32 7, float %564)  ; Saturate(value)
  %566 = fsub fast float %562, %552
  %567 = fmul fast float %565, %550
  %568 = fmul fast float %565, %551
  %569 = fmul fast float %565, %566
  %570 = fsub fast float %550, %567
  %571 = fsub fast float %551, %568
  %572 = fadd fast float %569, %552
  %573 = fmul fast float %6, 0x3FE6A7EFA0000000
  %574 = fmul fast float %7, 0x3FD2B020C0000000
  %575 = fmul fast float %6, 0xBFE276C8C0000000
  %576 = fmul fast float %7, 0xBFCF7CED80000000
  %577 = fmul fast float %575, %575
  %578 = fmul fast float %576, %576
  %579 = fadd fast float %577, %578
  %580 = call float @dx.op.unary.f32(i32 24, float %579)  ; Sqrt(value)
  %581 = fcmp fast ogt float %580, 0x3F60624DE0000000
  br i1 %581, label %582, label %600

; <label>:582                                     ; preds = %494
  %583 = fdiv fast float %575, %580
  %584 = fdiv fast float %576, %580
  %585 = fadd fast float %3, 0xBFE6A7EFA0000000
  %586 = fmul fast float %6, %585
  %587 = fsub fast float %11, %574
  %588 = fmul fast float %583, %587
  %589 = fmul fast float %584, %586
  %590 = fsub fast float %588, %589
  %591 = fcmp fast ogt float %590, 0.000000e+00
  %592 = select i1 %591, float 1.000000e+00, float -1.000000e+00
  %593 = call float @dx.op.dot2.f32(i32 54, float %583, float %584, float %586, float %587)  ; Dot2(ax,ay,bx,by)
  %594 = call float @dx.op.binary.f32(i32 35, float %593, float 0.000000e+00)  ; FMax(a,b)
  %595 = call float @dx.op.binary.f32(i32 36, float %594, float %580)  ; FMin(a,b)
  %596 = fmul fast float %595, %583
  %597 = fmul fast float %595, %584
  %598 = fadd fast float %596, %573
  %599 = fadd fast float %597, %574
  br label %600

; <label>:600                                     ; preds = %582, %494
  %601 = phi float [ %592, %582 ], [ -1.000000e+00, %494 ]
  %602 = phi float [ %598, %582 ], [ %573, %494 ]
  %603 = phi float [ %599, %582 ], [ %574, %494 ]
  %604 = fsub fast float %602, %8
  %605 = fsub fast float %603, %11
  %606 = fmul fast float %604, %604
  %607 = fmul fast float %605, %605
  %608 = fadd fast float %607, %606
  %609 = call float @dx.op.unary.f32(i32 24, float %608)  ; Sqrt(value)
  %610 = fmul fast float %609, %601
  %611 = call float @dx.op.unary.f32(i32 6, float %610)  ; FAbs(value)
  %612 = call float @dx.op.binary.f32(i32 36, float 1.000000e+05, float %611)  ; FMin(a,b)
  %613 = fmul fast float %6, 0x3FC0C49BA0000000
  %614 = fmul fast float %7, 0x3FA78D4FE0000000
  %615 = fmul fast float %6, 0x3FA3F7CF00000000
  %616 = fmul fast float %7, 0x3FE8083120000000
  %617 = fmul fast float %615, %615
  %618 = fmul fast float %616, %616
  %619 = fadd fast float %617, %618
  %620 = call float @dx.op.unary.f32(i32 24, float %619)  ; Sqrt(value)
  %621 = fcmp fast ogt float %620, 0x3F60624DE0000000
  br i1 %621, label %622, label %640

; <label>:622                                     ; preds = %600
  %623 = fdiv fast float %615, %620
  %624 = fdiv fast float %616, %620
  %625 = fadd fast float %3, 0xBFC0C49BA0000000
  %626 = fmul fast float %6, %625
  %627 = fsub fast float %11, %614
  %628 = fmul fast float %623, %627
  %629 = fmul fast float %624, %626
  %630 = fsub fast float %628, %629
  %631 = fcmp fast ogt float %630, 0.000000e+00
  %632 = select i1 %631, float 1.000000e+00, float -1.000000e+00
  %633 = call float @dx.op.dot2.f32(i32 54, float %623, float %624, float %626, float %627)  ; Dot2(ax,ay,bx,by)
  %634 = call float @dx.op.binary.f32(i32 35, float %633, float 0.000000e+00)  ; FMax(a,b)
  %635 = call float @dx.op.binary.f32(i32 36, float %634, float %620)  ; FMin(a,b)
  %636 = fmul fast float %635, %623
  %637 = fmul fast float %635, %624
  %638 = fadd fast float %636, %613
  %639 = fadd fast float %637, %614
  br label %640

; <label>:640                                     ; preds = %622, %600
  %641 = phi float [ %632, %622 ], [ -1.000000e+00, %600 ]
  %642 = phi float [ %638, %622 ], [ %613, %600 ]
  %643 = phi float [ %639, %622 ], [ %614, %600 ]
  %644 = fsub fast float %642, %8
  %645 = fsub fast float %643, %11
  %646 = fmul fast float %644, %644
  %647 = fmul fast float %645, %645
  %648 = fadd fast float %647, %646
  %649 = call float @dx.op.unary.f32(i32 24, float %648)  ; Sqrt(value)
  %650 = fmul fast float %649, %641
  %651 = call float @dx.op.unary.f32(i32 6, float %650)  ; FAbs(value)
  %652 = call float @dx.op.binary.f32(i32 36, float %612, float %651)  ; FMin(a,b)
  %653 = fmul fast float %6, 0x3FC5C28F60000000
  %654 = fmul fast float %7, 0x3FE9810620000000
  %655 = fmul fast float %6, 0x3FE1374BC0000000
  %656 = fmul fast float %7, 0xBFE028F5C0000000
  %657 = fmul fast float %655, %655
  %658 = fmul fast float %656, %656
  %659 = fadd fast float %657, %658
  %660 = call float @dx.op.unary.f32(i32 24, float %659)  ; Sqrt(value)
  %661 = fcmp fast ogt float %660, 0x3F60624DE0000000
  %662 = fadd fast float %3, 0xBFC5C28F60000000
  %663 = fmul fast float %6, %662
  %664 = fsub fast float %11, %654
  br i1 %661, label %665, label %680

; <label>:665                                     ; preds = %640
  %666 = fdiv fast float %655, %660
  %667 = fdiv fast float %656, %660
  %668 = fmul fast float %666, %664
  %669 = fmul fast float %667, %663
  %670 = fsub fast float %668, %669
  %671 = fcmp fast ogt float %670, 0.000000e+00
  %672 = select i1 %671, float 1.000000e+00, float -1.000000e+00
  %673 = call float @dx.op.dot2.f32(i32 54, float %666, float %667, float %663, float %664)  ; Dot2(ax,ay,bx,by)
  %674 = call float @dx.op.binary.f32(i32 35, float %673, float 0.000000e+00)  ; FMax(a,b)
  %675 = call float @dx.op.binary.f32(i32 36, float %674, float %660)  ; FMin(a,b)
  %676 = fmul fast float %675, %666
  %677 = fmul fast float %675, %667
  %678 = fadd fast float %676, %653
  %679 = fadd fast float %677, %654
  br label %680

; <label>:680                                     ; preds = %665, %640
  %681 = phi float [ %672, %665 ], [ -1.000000e+00, %640 ]
  %682 = phi float [ %678, %665 ], [ %653, %640 ]
  %683 = phi float [ %679, %665 ], [ %654, %640 ]
  %684 = fsub fast float %682, %8
  %685 = fsub fast float %683, %11
  %686 = fmul fast float %684, %684
  %687 = fmul fast float %685, %685
  %688 = fadd fast float %687, %686
  %689 = call float @dx.op.unary.f32(i32 24, float %688)  ; Sqrt(value)
  %690 = fmul fast float %689, %681
  %691 = call float @dx.op.unary.f32(i32 6, float %690)  ; FAbs(value)
  %692 = call float @dx.op.binary.f32(i32 36, float %652, float %691)  ; FMin(a,b)
  %693 = fsub fast float 1.500000e+00, %692
  %694 = call float @dx.op.unary.f32(i32 7, float %693)  ; Saturate(value)
  %695 = call float @dx.op.unary.f32(i32 7, float %694)  ; Saturate(value)
  %696 = fmul fast float %695, %570
  %697 = fmul fast float %695, %571
  %698 = fmul fast float %695, %572
  %699 = fsub fast float %570, %696
  %700 = fsub fast float %571, %697
  %701 = fsub fast float %572, %698
  %702 = fadd fast float %3, 0xBFE6A7EFA0000000
  %703 = fmul fast float %6, %702
  %704 = fsub fast float %11, %574
  %705 = fmul fast float %703, %703
  %706 = fmul fast float %704, %704
  %707 = fadd fast float %706, %705
  %708 = call float @dx.op.unary.f32(i32 24, float %707)  ; Sqrt(value)
  %709 = fsub fast float 5.000000e+00, %708
  %710 = call float @dx.op.unary.f32(i32 7, float %709)  ; Saturate(value)
  %711 = call float @dx.op.unary.f32(i32 7, float %710)  ; Saturate(value)
  %712 = fsub fast float 6.500000e+00, %708
  %713 = call float @dx.op.unary.f32(i32 7, float %712)  ; Saturate(value)
  %714 = call float @dx.op.unary.f32(i32 7, float %713)  ; Saturate(value)
  %715 = fsub fast float %711, %699
  %716 = fmul fast float %714, %715
  %717 = fmul fast float %714, %700
  %718 = fmul fast float %714, %701
  %719 = fadd fast float %716, %699
  %720 = fsub fast float %700, %717
  %721 = fsub fast float %701, %718
  %722 = fmul fast float %663, %663
  %723 = fmul fast float %664, %664
  %724 = fadd fast float %723, %722
  %725 = call float @dx.op.unary.f32(i32 24, float %724)  ; Sqrt(value)
  %726 = fsub fast float 5.000000e+00, %725
  %727 = call float @dx.op.unary.f32(i32 7, float %726)  ; Saturate(value)
  %728 = call float @dx.op.unary.f32(i32 7, float %727)  ; Saturate(value)
  %729 = fsub fast float 6.500000e+00, %725
  %730 = call float @dx.op.unary.f32(i32 7, float %729)  ; Saturate(value)
  %731 = call float @dx.op.unary.f32(i32 7, float %730)  ; Saturate(value)
  %732 = fsub fast float %728, %720
  %733 = fmul fast float %731, %719
  %734 = fmul fast float %731, %732
  %735 = fmul fast float %731, %721
  %736 = fsub fast float %719, %733
  %737 = fadd fast float %734, %720
  %738 = fsub fast float %721, %735
  %739 = fadd fast float %3, 0xBFC0C49BA0000000
  %740 = fmul fast float %6, %739
  %741 = fsub fast float %11, %614
  %742 = fmul fast float %740, %740
  %743 = fmul fast float %741, %741
  %744 = fadd fast float %743, %742
  %745 = call float @dx.op.unary.f32(i32 24, float %744)  ; Sqrt(value)
  %746 = fsub fast float 5.000000e+00, %745
  %747 = call float @dx.op.unary.f32(i32 7, float %746)  ; Saturate(value)
  %748 = call float @dx.op.unary.f32(i32 7, float %747)  ; Saturate(value)
  %749 = fsub fast float 6.500000e+00, %745
  %750 = call float @dx.op.unary.f32(i32 7, float %749)  ; Saturate(value)
  %751 = call float @dx.op.unary.f32(i32 7, float %750)  ; Saturate(value)
  %752 = fsub fast float %748, %738
  %753 = fmul fast float %751, %736
  %754 = fmul fast float %751, %737
  %755 = fmul fast float %751, %752
  %756 = fsub fast float %736, %753
  %757 = fsub fast float %737, %754
  %758 = fadd fast float %755, %738
  %759 = fmul fast float %6, 0x3FE5C28F60000000
  %760 = fmul fast float %7, 0x3FD47AE140000000
  %761 = fmul fast float %6, 0xBFE0F5C280000000
  %762 = fmul fast float %7, 0xBFD0A3D700000000
  %763 = fmul fast float %761, %761
  %764 = fmul fast float %762, %762
  %765 = fadd fast float %763, %764
  %766 = call float @dx.op.unary.f32(i32 24, float %765)  ; Sqrt(value)
  %767 = fcmp fast ogt float %766, 0x3F60624DE0000000
  br i1 %767, label %768, label %786

; <label>:768                                     ; preds = %680
  %769 = fdiv fast float %761, %766
  %770 = fdiv fast float %762, %766
  %771 = fadd fast float %3, 0xBFE5C28F60000000
  %772 = fmul fast float %6, %771
  %773 = fsub fast float %11, %760
  %774 = fmul fast float %769, %773
  %775 = fmul fast float %770, %772
  %776 = fsub fast float %774, %775
  %777 = fcmp fast ogt float %776, 0.000000e+00
  %778 = select i1 %777, float 1.000000e+00, float -1.000000e+00
  %779 = call float @dx.op.dot2.f32(i32 54, float %769, float %770, float %772, float %773)  ; Dot2(ax,ay,bx,by)
  %780 = call float @dx.op.binary.f32(i32 35, float %779, float 0.000000e+00)  ; FMax(a,b)
  %781 = call float @dx.op.binary.f32(i32 36, float %780, float %766)  ; FMin(a,b)
  %782 = fmul fast float %781, %769
  %783 = fmul fast float %781, %770
  %784 = fadd fast float %782, %759
  %785 = fadd fast float %783, %760
  br label %786

; <label>:786                                     ; preds = %768, %680
  %787 = phi float [ %778, %768 ], [ -1.000000e+00, %680 ]
  %788 = phi float [ %784, %768 ], [ %759, %680 ]
  %789 = phi float [ %785, %768 ], [ %760, %680 ]
  %790 = fsub fast float %788, %8
  %791 = fsub fast float %789, %11
  %792 = fmul fast float %790, %790
  %793 = fmul fast float %791, %791
  %794 = fadd fast float %793, %792
  %795 = call float @dx.op.unary.f32(i32 24, float %794)  ; Sqrt(value)
  %796 = fmul fast float %795, %787
  %797 = call float @dx.op.unary.f32(i32 6, float %796)  ; FAbs(value)
  %798 = call float @dx.op.binary.f32(i32 36, float 1.000000e+05, float %797)  ; FMin(a,b)
  %799 = fmul fast float %6, 0x3FBD70A380000000
  %800 = fmul fast float %7, 0x3FE428F5C0000000
  %801 = fmul fast float %799, %799
  %802 = fmul fast float %800, %800
  %803 = fadd fast float %801, %802
  %804 = call float @dx.op.unary.f32(i32 24, float %803)  ; Sqrt(value)
  %805 = fcmp fast ogt float %804, 0x3F60624DE0000000
  br i1 %805, label %806, label %821

; <label>:806                                     ; preds = %786
  %807 = fdiv fast float %799, %804
  %808 = fdiv fast float %800, %804
  %809 = fmul fast float %807, %555
  %810 = fmul fast float %808, %554
  %811 = fsub fast float %809, %810
  %812 = fcmp fast ogt float %811, 0.000000e+00
  %813 = select i1 %812, float 1.000000e+00, float -1.000000e+00
  %814 = call float @dx.op.dot2.f32(i32 54, float %807, float %808, float %554, float %555)  ; Dot2(ax,ay,bx,by)
  %815 = call float @dx.op.binary.f32(i32 35, float %814, float 0.000000e+00)  ; FMax(a,b)
  %816 = call float @dx.op.binary.f32(i32 36, float %815, float %804)  ; FMin(a,b)
  %817 = fmul fast float %816, %807
  %818 = fmul fast float %816, %808
  %819 = fadd fast float %817, %430
  %820 = fadd fast float %818, %431
  br label %821

; <label>:821                                     ; preds = %806, %786
  %822 = phi float [ %813, %806 ], [ -1.000000e+00, %786 ]
  %823 = phi float [ %819, %806 ], [ %430, %786 ]
  %824 = phi float [ %820, %806 ], [ %431, %786 ]
  %825 = fsub fast float %823, %8
  %826 = fsub fast float %824, %11
  %827 = fmul fast float %825, %825
  %828 = fmul fast float %826, %826
  %829 = fadd fast float %828, %827
  %830 = call float @dx.op.unary.f32(i32 24, float %829)  ; Sqrt(value)
  %831 = fmul fast float %830, %822
  %832 = call float @dx.op.unary.f32(i32 6, float %831)  ; FAbs(value)
  %833 = call float @dx.op.binary.f32(i32 36, float %798, float %832)  ; FMin(a,b)
  %834 = fmul fast float %6, 0x3FD0F5C280000000
  %835 = fmul fast float %7, 0x3FE6147AE0000000
  %836 = fmul fast float %6, 0x3FDA8F5C40000000
  %837 = fmul fast float %7, 0xBFD7AE1480000000
  %838 = fmul fast float %836, %836
  %839 = fmul fast float %837, %837
  %840 = fadd fast float %838, %839
  %841 = call float @dx.op.unary.f32(i32 24, float %840)  ; Sqrt(value)
  %842 = fcmp fast ogt float %841, 0x3F60624DE0000000
  %843 = fadd fast float %3, 0xBFD0F5C280000000
  %844 = fmul fast float %6, %843
  %845 = fsub fast float %11, %835
  br i1 %842, label %846, label %861

; <label>:846                                     ; preds = %821
  %847 = fdiv fast float %836, %841
  %848 = fdiv fast float %837, %841
  %849 = fmul fast float %847, %845
  %850 = fmul fast float %848, %844
  %851 = fsub fast float %849, %850
  %852 = fcmp fast ogt float %851, 0.000000e+00
  %853 = select i1 %852, float 1.000000e+00, float -1.000000e+00
  %854 = call float @dx.op.dot2.f32(i32 54, float %847, float %848, float %844, float %845)  ; Dot2(ax,ay,bx,by)
  %855 = call float @dx.op.binary.f32(i32 35, float %854, float 0.000000e+00)  ; FMax(a,b)
  %856 = call float @dx.op.binary.f32(i32 36, float %855, float %841)  ; FMin(a,b)
  %857 = fmul fast float %856, %847
  %858 = fmul fast float %856, %848
  %859 = fadd fast float %857, %834
  %860 = fadd fast float %858, %835
  br label %861

; <label>:861                                     ; preds = %846, %821
  %862 = phi float [ %853, %846 ], [ -1.000000e+00, %821 ]
  %863 = phi float [ %859, %846 ], [ %834, %821 ]
  %864 = phi float [ %860, %846 ], [ %835, %821 ]
  %865 = fsub fast float %863, %8
  %866 = fsub fast float %864, %11
  %867 = fmul fast float %865, %865
  %868 = fmul fast float %866, %866
  %869 = fadd fast float %868, %867
  %870 = call float @dx.op.unary.f32(i32 24, float %869)  ; Sqrt(value)
  %871 = fmul fast float %870, %862
  %872 = call float @dx.op.unary.f32(i32 6, float %871)  ; FAbs(value)
  %873 = call float @dx.op.binary.f32(i32 36, float %833, float %872)  ; FMin(a,b)
  %874 = fsub fast float 1.500000e+00, %873
  %875 = call float @dx.op.unary.f32(i32 7, float %874)  ; Saturate(value)
  %876 = call float @dx.op.unary.f32(i32 7, float %875)  ; Saturate(value)
  %877 = fmul fast float %876, %756
  %878 = fmul fast float %876, %757
  %879 = fmul fast float %876, %758
  %880 = fsub fast float %756, %877
  %881 = fsub fast float %757, %878
  %882 = fsub fast float %758, %879
  %883 = fadd fast float %3, 0xBFE5C28F60000000
  %884 = fmul fast float %6, %883
  %885 = fsub fast float %11, %760
  %886 = fmul fast float %884, %884
  %887 = fmul fast float %885, %885
  %888 = fadd fast float %887, %886
  %889 = call float @dx.op.unary.f32(i32 24, float %888)  ; Sqrt(value)
  %890 = fsub fast float 5.000000e+00, %889
  %891 = call float @dx.op.unary.f32(i32 7, float %890)  ; Saturate(value)
  %892 = call float @dx.op.unary.f32(i32 7, float %891)  ; Saturate(value)
  %893 = fsub fast float 6.500000e+00, %889
  %894 = call float @dx.op.unary.f32(i32 7, float %893)  ; Saturate(value)
  %895 = call float @dx.op.unary.f32(i32 7, float %894)  ; Saturate(value)
  %896 = fsub fast float %892, %880
  %897 = fmul fast float %895, %896
  %898 = fmul fast float %895, %881
  %899 = fmul fast float %895, %882
  %900 = fadd fast float %897, %880
  %901 = fsub fast float %881, %898
  %902 = fsub fast float %882, %899
  %903 = fmul fast float %844, %844
  %904 = fmul fast float %845, %845
  %905 = fadd fast float %904, %903
  %906 = call float @dx.op.unary.f32(i32 24, float %905)  ; Sqrt(value)
  %907 = fsub fast float 5.000000e+00, %906
  %908 = call float @dx.op.unary.f32(i32 7, float %907)  ; Saturate(value)
  %909 = call float @dx.op.unary.f32(i32 7, float %908)  ; Saturate(value)
  %910 = fsub fast float 6.500000e+00, %906
  %911 = call float @dx.op.unary.f32(i32 7, float %910)  ; Saturate(value)
  %912 = call float @dx.op.unary.f32(i32 7, float %911)  ; Saturate(value)
  %913 = fsub fast float %909, %901
  %914 = fmul fast float %912, %900
  %915 = fmul fast float %912, %913
  %916 = fmul fast float %912, %902
  %917 = fsub fast float %900, %914
  %918 = fadd fast float %915, %901
  %919 = fsub fast float %902, %916
  %920 = fsub fast float %562, %919
  %921 = fmul fast float %565, %917
  %922 = fmul fast float %565, %918
  %923 = fmul fast float %565, %920
  %924 = fsub fast float %917, %921
  %925 = fsub fast float %918, %922
  %926 = fadd fast float %923, %919
  %927 = call float @dx.op.unary.f32(i32 7, float %924)  ; Saturate(value)
  %928 = call float @dx.op.unary.f32(i32 7, float %925)  ; Saturate(value)
  %929 = call float @dx.op.unary.f32(i32 7, float %926)  ; Saturate(value)
  %930 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1, i32 0)  ; GetDimensions(handle,mipLevel)
  %931 = extractvalue %dx.types.Dimensions %930, 0
  %932 = extractvalue %dx.types.Dimensions %930, 1
  %933 = add i32 %931, -1
  %934 = uitofp i32 %933 to float
  %935 = add i32 %932, -1
  %936 = uitofp i32 %935 to float
  %937 = fmul fast float %934, %196
  %938 = fmul fast float %936, %197
  %939 = fptoui float %937 to i32
  %940 = fptoui float %938 to i32
  %941 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 0, i32 %939, i32 %940, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %942 = extractvalue %dx.types.ResRet.f32 %941, 0
  %943 = fmul fast float %942, 4.000000e+00
  %944 = add i32 %939, 1
  %945 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 0, i32 %944, i32 %940, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %946 = extractvalue %dx.types.ResRet.f32 %945, 0
  %947 = fadd fast float %946, %943
  %948 = add i32 %939, -1
  %949 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 0, i32 %948, i32 %940, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %950 = extractvalue %dx.types.ResRet.f32 %949, 0
  %951 = fadd fast float %947, %950
  %952 = add i32 %940, 1
  %953 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 0, i32 %939, i32 %952, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %954 = extractvalue %dx.types.ResRet.f32 %953, 0
  %955 = fadd fast float %951, %954
  %956 = add i32 %940, -1
  %957 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 0, i32 %939, i32 %956, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %958 = extractvalue %dx.types.ResRet.f32 %957, 0
  %959 = fadd fast float %955, %958
  %960 = fmul fast float %959, 1.250000e-01
  %961 = call float @dx.op.unary.f32(i32 6, float %960)  ; FAbs(value)
  %962 = fcmp fast ogt float %961, 0.000000e+00
  br i1 %962, label %963, label %1027

; <label>:963                                     ; preds = %861
  %964 = fmul fast float %318, 2.500000e-01
  %965 = fmul fast float %236, 2.500000e-01
  %966 = fmul fast float %237, 2.500000e-01
  %967 = fcmp fast ole float %964, 0x3F69A5C380000000
  %968 = fcmp fast ole float %965, 0x3F69A5C380000000
  %969 = fcmp fast ole float %966, 0x3F69A5C380000000
  %970 = fmul fast float %318, 0x4009D70A40000000
  %971 = fmul fast float %236, 0x4009D70A40000000
  %972 = fmul fast float %237, 0x4009D70A40000000
  %973 = call float @dx.op.unary.f32(i32 23, float %964)  ; Log(value)
  %974 = call float @dx.op.unary.f32(i32 23, float %965)  ; Log(value)
  %975 = call float @dx.op.unary.f32(i32 23, float %966)  ; Log(value)
  %976 = fmul fast float %973, 0x3FDAAAAAA0000000
  %977 = fmul fast float %974, 0x3FDAAAAAA0000000
  %978 = fmul fast float %975, 0x3FDAAAAAA0000000
  %979 = call float @dx.op.unary.f32(i32 21, float %976)  ; Exp(value)
  %980 = call float @dx.op.unary.f32(i32 21, float %977)  ; Exp(value)
  %981 = call float @dx.op.unary.f32(i32 21, float %978)  ; Exp(value)
  %982 = fmul fast float %979, 0x3FF0E147A0000000
  %983 = fmul fast float %980, 0x3FF0E147A0000000
  %984 = fmul fast float %981, 0x3FF0E147A0000000
  %985 = fadd fast float %982, 0xBFAC28F5C0000000
  %986 = fadd fast float %983, 0xBFAC28F5C0000000
  %987 = fadd fast float %984, 0xBFAC28F5C0000000
  %988 = select i1 %967, float %970, float %985
  %989 = select i1 %968, float %971, float %986
  %990 = select i1 %969, float %972, float %987
  %991 = fcmp fast ole float %318, 0x3F69A5C380000000
  %992 = fcmp fast ole float %236, 0x3F69A5C380000000
  %993 = fcmp fast ole float %237, 0x3F69A5C380000000
  %994 = fmul fast float %318, 0x4029D70A40000000
  %995 = fmul fast float %236, 0x4029D70A40000000
  %996 = fmul fast float %237, 0x4029D70A40000000
  %997 = call float @dx.op.unary.f32(i32 23, float %318)  ; Log(value)
  %998 = call float @dx.op.unary.f32(i32 23, float %236)  ; Log(value)
  %999 = call float @dx.op.unary.f32(i32 23, float %237)  ; Log(value)
  %1000 = fmul fast float %997, 0x3FDAAAAAA0000000
  %1001 = fmul fast float %998, 0x3FDAAAAAA0000000
  %1002 = fmul fast float %999, 0x3FDAAAAAA0000000
  %1003 = call float @dx.op.unary.f32(i32 21, float %1000)  ; Exp(value)
  %1004 = call float @dx.op.unary.f32(i32 21, float %1001)  ; Exp(value)
  %1005 = call float @dx.op.unary.f32(i32 21, float %1002)  ; Exp(value)
  %1006 = fmul fast float %1003, 0x3FF0E147A0000000
  %1007 = fmul fast float %1004, 0x3FF0E147A0000000
  %1008 = fmul fast float %1005, 0x3FF0E147A0000000
  %1009 = fadd fast float %1006, 0xBFAC28F5C0000000
  %1010 = fadd fast float %1007, 0xBFAC28F5C0000000
  %1011 = fadd fast float %1008, 0xBFAC28F5C0000000
  %1012 = select i1 %991, float %994, float %1009
  %1013 = select i1 %992, float %995, float %1010
  %1014 = select i1 %993, float %996, float %1011
  %1015 = fmul fast float %959, 0xC0668AC7C0000000
  %1016 = call float @dx.op.unary.f32(i32 21, float %1015)  ; Exp(value)
  %1017 = fsub fast float 1.000000e+00, %1016
  %1018 = fsub fast float %1012, %988
  %1019 = fsub fast float %1013, %989
  %1020 = fsub fast float %1014, %990
  %1021 = fmul fast float %1017, %1018
  %1022 = fmul fast float %1019, %1017
  %1023 = fmul fast float %1020, %1017
  %1024 = fadd fast float %1021, %988
  %1025 = fadd fast float %1022, %989
  %1026 = fadd fast float %1023, %990
  br label %1027

; <label>:1027                                    ; preds = %963, %861
  %1028 = phi float [ %1024, %963 ], [ %927, %861 ]
  %1029 = phi float [ %1025, %963 ], [ %928, %861 ]
  %1030 = phi float [ %1026, %963 ], [ %929, %861 ]
  %1031 = call float @dx.op.unary.f32(i32 7, float %1028)  ; Saturate(value)
  %1032 = call float @dx.op.unary.f32(i32 7, float %1029)  ; Saturate(value)
  %1033 = call float @dx.op.unary.f32(i32 7, float %1030)  ; Saturate(value)
  %1034 = fcmp fast ole float %1031, 0x3FA4B5DCC0000000
  %1035 = fcmp fast ole float %1032, 0x3FA4B5DCC0000000
  %1036 = fcmp fast ole float %1033, 0x3FA4B5DCC0000000
  %1037 = fmul fast float %1031, 0x3FB3D07220000000
  %1038 = fmul fast float %1032, 0x3FB3D07220000000
  %1039 = fmul fast float %1033, 0x3FB3D07220000000
  %1040 = fadd fast float %1031, 0x3FAC28F5C0000000
  %1041 = fadd fast float %1032, 0x3FAC28F5C0000000
  %1042 = fadd fast float %1033, 0x3FAC28F5C0000000
  %1043 = fmul fast float %1040, 0x3FEE54EDE0000000
  %1044 = fmul fast float %1041, 0x3FEE54EDE0000000
  %1045 = fmul fast float %1042, 0x3FEE54EDE0000000
  %1046 = call float @dx.op.unary.f32(i32 23, float %1043)  ; Log(value)
  %1047 = call float @dx.op.unary.f32(i32 23, float %1044)  ; Log(value)
  %1048 = call float @dx.op.unary.f32(i32 23, float %1045)  ; Log(value)
  %1049 = fmul fast float %1046, 0x4003333340000000
  %1050 = fmul fast float %1047, 0x4003333340000000
  %1051 = fmul fast float %1048, 0x4003333340000000
  %1052 = call float @dx.op.unary.f32(i32 21, float %1049)  ; Exp(value)
  %1053 = call float @dx.op.unary.f32(i32 21, float %1050)  ; Exp(value)
  %1054 = call float @dx.op.unary.f32(i32 21, float %1051)  ; Exp(value)
  %1055 = select i1 %1034, float %1037, float %1052
  %1056 = select i1 %1035, float %1038, float %1053
  %1057 = select i1 %1036, float %1039, float %1054
  %1058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %2, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1059 = extractvalue %dx.types.CBufRet.f32 %1058, 1
  %1060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %2, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1061 = extractvalue %dx.types.CBufRet.f32 %1060, 1
  %1062 = fptosi float %1061 to i32
  %1063 = icmp eq i32 %1062, 0
  br i1 %1063, label %1064, label %1091

; <label>:1064                                    ; preds = %1027
  %1065 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %1066 = fmul fast float %1065, 0x3FDAAAAAA0000000
  %1067 = call float @dx.op.unary.f32(i32 21, float %1066)  ; Exp(value)
  %1068 = fsub fast float 1.000000e+00, %1067
  %1069 = call float @dx.op.unary.f32(i32 23, float %1068)  ; Log(value)
  %1070 = fmul fast float %1069, 0x4003333340000000
  %1071 = call float @dx.op.unary.f32(i32 21, float %1070)  ; Exp(value)
  %1072 = fdiv fast float %1067, %1068
  %1073 = fdiv fast float %1055, %1071
  %1074 = fdiv fast float %1056, %1071
  %1075 = fdiv fast float %1057, %1071
  %1076 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1073)  ; FMax(a,b)
  %1077 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1074)  ; FMax(a,b)
  %1078 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1075)  ; FMax(a,b)
  %1079 = call float @dx.op.unary.f32(i32 23, float %1076)  ; Log(value)
  %1080 = call float @dx.op.unary.f32(i32 23, float %1077)  ; Log(value)
  %1081 = call float @dx.op.unary.f32(i32 23, float %1078)  ; Log(value)
  %1082 = fmul fast float %1079, 0x3FDAAAAAA0000000
  %1083 = fmul fast float %1080, 0x3FDAAAAAA0000000
  %1084 = fmul fast float %1081, 0x3FDAAAAAA0000000
  %1085 = call float @dx.op.unary.f32(i32 21, float %1082)  ; Exp(value)
  %1086 = call float @dx.op.unary.f32(i32 21, float %1083)  ; Exp(value)
  %1087 = call float @dx.op.unary.f32(i32 21, float %1084)  ; Exp(value)
  %1088 = fsub fast float %1085, %1072
  %1089 = fsub fast float %1086, %1072
  %1090 = fsub fast float %1087, %1072
  br label %1202

; <label>:1091                                    ; preds = %1027
  %1092 = icmp eq i32 %1062, 1
  br i1 %1092, label %1093, label %1140

; <label>:1093                                    ; preds = %1091
  %1094 = fmul fast float %1055, 0x3FE413A920000000
  %1095 = call float @dx.op.tertiary.f32(i32 46, float 0x3FD5134040000000, float %1056, float %1094)  ; FMad(a,b,c)
  %1096 = call float @dx.op.tertiary.f32(i32 46, float 0x3FA62B6AE0000000, float %1057, float %1095)  ; FMad(a,b,c)
  %1097 = fmul fast float %1055, 0x3FB1B089A0000000
  %1098 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED6C8B40000000, float %1056, float %1097)  ; FMad(a,b,c)
  %1099 = call float @dx.op.tertiary.f32(i32 46, float 0x3F8758E220000000, float %1057, float %1098)  ; FMad(a,b,c)
  %1100 = fmul fast float %1055, 0x3F90CB2960000000
  %1101 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB6872B00000000, float %1056, float %1100)  ; FMad(a,b,c)
  %1102 = call float @dx.op.tertiary.f32(i32 46, float 0x3FECA8C160000000, float %1057, float %1101)  ; FMad(a,b,c)
  %1103 = fmul fast float %1059, 0x3F1A36E2E0000000
  %1104 = fmul fast float %1103, %1096
  %1105 = fmul fast float %1103, %1099
  %1106 = fmul fast float %1103, %1102
  %1107 = call float @dx.op.unary.f32(i32 23, float %1104)  ; Log(value)
  %1108 = call float @dx.op.unary.f32(i32 23, float %1105)  ; Log(value)
  %1109 = call float @dx.op.unary.f32(i32 23, float %1106)  ; Log(value)
  %1110 = fmul fast float %1107, 0x3FC4640000000000
  %1111 = fmul fast float %1108, 0x3FC4640000000000
  %1112 = fmul fast float %1109, 0x3FC4640000000000
  %1113 = call float @dx.op.unary.f32(i32 21, float %1110)  ; Exp(value)
  %1114 = call float @dx.op.unary.f32(i32 21, float %1111)  ; Exp(value)
  %1115 = call float @dx.op.unary.f32(i32 21, float %1112)  ; Exp(value)
  %1116 = fmul fast float %1113, 0x4032DA0000000000
  %1117 = fmul fast float %1114, 0x4032DA0000000000
  %1118 = fmul fast float %1115, 0x4032DA0000000000
  %1119 = fadd fast float %1116, 8.359375e-01
  %1120 = fadd fast float %1117, 8.359375e-01
  %1121 = fadd fast float %1118, 8.359375e-01
  %1122 = fmul fast float %1113, 1.868750e+01
  %1123 = fmul fast float %1114, 1.868750e+01
  %1124 = fmul fast float %1115, 1.868750e+01
  %1125 = fadd fast float %1122, 1.000000e+00
  %1126 = fadd fast float %1123, 1.000000e+00
  %1127 = fadd fast float %1124, 1.000000e+00
  %1128 = fdiv fast float %1119, %1125
  %1129 = fdiv fast float %1120, %1126
  %1130 = fdiv fast float %1121, %1127
  %1131 = call float @dx.op.unary.f32(i32 23, float %1128)  ; Log(value)
  %1132 = call float @dx.op.unary.f32(i32 23, float %1129)  ; Log(value)
  %1133 = call float @dx.op.unary.f32(i32 23, float %1130)  ; Log(value)
  %1134 = fmul fast float %1131, 7.884375e+01
  %1135 = fmul fast float %1132, 7.884375e+01
  %1136 = fmul fast float %1133, 7.884375e+01
  %1137 = call float @dx.op.unary.f32(i32 21, float %1134)  ; Exp(value)
  %1138 = call float @dx.op.unary.f32(i32 21, float %1135)  ; Exp(value)
  %1139 = call float @dx.op.unary.f32(i32 21, float %1136)  ; Exp(value)
  br label %1202

; <label>:1140                                    ; preds = %1091
  %1141 = icmp eq i32 %1062, 2
  br i1 %1141, label %1142, label %1202

; <label>:1142                                    ; preds = %1140
  %1143 = fmul fast float %1055, 0x3FEA519BC0000000
  %1144 = call float @dx.op.tertiary.f32(i32 46, float 0x3FC6B990A0000000, float %1056, float %1143)  ; FMad(a,b,c)
  %1145 = fmul fast float %1055, 0x3FA0FED480000000
  %1146 = call float @dx.op.tertiary.f32(i32 46, float 0x3FEEF012C0000000, float %1056, float %1145)  ; FMad(a,b,c)
  %1147 = fmul fast float %1055, 0x3F917E1C00000000
  %1148 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB288A2E0000000, float %1056, float %1147)  ; FMad(a,b,c)
  %1149 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED22FAA0000000, float %1057, float %1148)  ; FMad(a,b,c)
  %1150 = call float @dx.op.binary.f32(i32 35, float %1055, float %1056)  ; FMax(a,b)
  %1151 = call float @dx.op.binary.f32(i32 35, float %1150, float %1057)  ; FMax(a,b)
  %1152 = fadd fast float %1151, -1.000000e+00
  %1153 = fmul fast float %1152, 2.500000e-01
  %1154 = call float @dx.op.unary.f32(i32 7, float %1153)  ; Saturate(value)
  %1155 = fsub fast float 1.000000e+00, %1154
  %1156 = fmul fast float %1155, %1144
  %1157 = fmul fast float %1155, %1146
  %1158 = fmul fast float %1155, %1149
  %1159 = fmul fast float %1154, %1055
  %1160 = fmul fast float %1154, %1056
  %1161 = fmul fast float %1154, %1057
  %1162 = fadd fast float %1156, %1159
  %1163 = fadd fast float %1157, %1160
  %1164 = fadd fast float %1158, %1161
  %1165 = fmul fast float %1059, 0x3F1A36E2E0000000
  %1166 = fmul fast float %1165, %1162
  %1167 = fmul fast float %1165, %1163
  %1168 = fmul fast float %1165, %1164
  %1169 = call float @dx.op.unary.f32(i32 23, float %1166)  ; Log(value)
  %1170 = call float @dx.op.unary.f32(i32 23, float %1167)  ; Log(value)
  %1171 = call float @dx.op.unary.f32(i32 23, float %1168)  ; Log(value)
  %1172 = fmul fast float %1169, 0x3FC4640000000000
  %1173 = fmul fast float %1170, 0x3FC4640000000000
  %1174 = fmul fast float %1171, 0x3FC4640000000000
  %1175 = call float @dx.op.unary.f32(i32 21, float %1172)  ; Exp(value)
  %1176 = call float @dx.op.unary.f32(i32 21, float %1173)  ; Exp(value)
  %1177 = call float @dx.op.unary.f32(i32 21, float %1174)  ; Exp(value)
  %1178 = fmul fast float %1175, 0x4032DA0000000000
  %1179 = fmul fast float %1176, 0x4032DA0000000000
  %1180 = fmul fast float %1177, 0x4032DA0000000000
  %1181 = fadd fast float %1178, 8.359375e-01
  %1182 = fadd fast float %1179, 8.359375e-01
  %1183 = fadd fast float %1180, 8.359375e-01
  %1184 = fmul fast float %1175, 1.868750e+01
  %1185 = fmul fast float %1176, 1.868750e+01
  %1186 = fmul fast float %1177, 1.868750e+01
  %1187 = fadd fast float %1184, 1.000000e+00
  %1188 = fadd fast float %1185, 1.000000e+00
  %1189 = fadd fast float %1186, 1.000000e+00
  %1190 = fdiv fast float %1181, %1187
  %1191 = fdiv fast float %1182, %1188
  %1192 = fdiv fast float %1183, %1189
  %1193 = call float @dx.op.unary.f32(i32 23, float %1190)  ; Log(value)
  %1194 = call float @dx.op.unary.f32(i32 23, float %1191)  ; Log(value)
  %1195 = call float @dx.op.unary.f32(i32 23, float %1192)  ; Log(value)
  %1196 = fmul fast float %1193, 7.884375e+01
  %1197 = fmul fast float %1194, 7.884375e+01
  %1198 = fmul fast float %1195, 7.884375e+01
  %1199 = call float @dx.op.unary.f32(i32 21, float %1196)  ; Exp(value)
  %1200 = call float @dx.op.unary.f32(i32 21, float %1197)  ; Exp(value)
  %1201 = call float @dx.op.unary.f32(i32 21, float %1198)  ; Exp(value)
  br label %1202

; <label>:1202                                    ; preds = %1142, %1140, %1093, %1064
  %1203 = phi float [ %1088, %1064 ], [ %1137, %1093 ], [ %1199, %1142 ], [ %1055, %1140 ]
  %1204 = phi float [ %1089, %1064 ], [ %1138, %1093 ], [ %1200, %1142 ], [ %1056, %1140 ]
  %1205 = phi float [ %1090, %1064 ], [ %1139, %1093 ], [ %1201, %1142 ], [ %1057, %1140 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1203)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1204)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1205)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

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
!dx.viewIdState = !{!10}
!dx.entryPoints = !{!11}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !8, null}
!5 = !{!6}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{!9}
!9 = !{i32 0, %perObject* undef, !"", i32 0, i32 1, i32 1, i32 48, null}
!10 = !{[8 x i32] [i32 6, i32 4, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7]}
!11 = !{void ()* @ps_main, !"ps_main", !12, !4, null}
!12 = !{!13, !18, null}
!13 = !{!14, !16}
!14 = !{i32 0, !"SV_Position", i8 9, i8 3, !15, i8 4, i32 1, i8 4, i32 0, i8 0, null}
!15 = !{i32 0}
!16 = !{i32 1, !"TEXCOORD", i8 9, i8 0, !15, i8 2, i32 1, i8 2, i32 1, i8 0, !17}
!17 = !{i32 3, i32 3}
!18 = !{!19}
!19 = !{i32 0, !"SV_Target", i8 9, i8 16, !15, i8 0, i32 1, i8 4, i32 0, i8 0, !20}
!20 = !{i32 3, i32 15}

