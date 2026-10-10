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
; shader hash: 7949fe0677ed50fa563b47115dca7b77
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
;   [80 x i8] (type annotation not present)
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
;                                   texture     f32          3d      T0     t74,space2     1
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
;   output 3 depends on inputs: { 4, 5 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%perObject = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }

@standardObserver1931Outline.v.1dim = internal constant [48 x float] [float 0x3FC60B6740000000, float 0x3F73CEE9E0000000, float 0x3FC2F54D20000000, float 0x3F9A3E7D20000000, float 0x3FC1482BE0000000, float 0x3FA5143C00000000, float 0x3FBD800A80000000, float 0x3FB3718660000000, float 0x3FBA22B380000000, float 0x3FBB24A6A0000000, float 0x3FB3E21DA0000000, float 0x3FC65C67E0000000, float 0x3FA75BA2C0000000, float 0x3FD320FB20000000, float 0x3F9D188F40000000, float 0x3FD8F3A580000000, float 0x3F8E35C5C0000000, float 0x3FDF398200000000, float 0x3F7CA3A4C0000000, float 0x3FE2B397E0000000, float 0x3F7D180900000000, float 0x3FE5817BA0000000, float 0x3F90C1FC80000000, float 0x3FE7D3BF20000000, float 0x3F9919EFA0000000, float 0x3FE8BEBE20000000, float 0x3FA1CD3E00000000, float 0x3FE97A5F40000000, float 0x3FA7FB8B20000000, float 0x3FEA036A80000000, float 0x3FB0601360000000, float 0x3FEA69BC00000000, float 0x3FB42DCF40000000, float 0x3FEA8B06C0000000, float 0x3FB8268900000000, float 0x3FEA883560000000, float 0x3FBC3A10A0000000, float 0x3FEA69C880000000, float 0x3FC23AC920000000, float 0x3FE9F95700000000, float 0x3FCA16A480000000, float 0x3FE8BE7B00000000, float 0x3FD0C69300000000, float 0x3FE7443D40000000, float 0x3FD81B1100000000, float 0x3FE3DE82E0000000, float 0x3FE79387A0000000, float 0x3FD0D8F0C0000000], align 4

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 74, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %5 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %6 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %7 = extractvalue %dx.types.CBufRet.f32 %6, 0
  %8 = bitcast float %7 to i32
  %9 = fmul fast float %4, 1.920000e+03
  %10 = fmul fast float %5, 1.080000e+03
  %11 = fsub fast float 1.079000e+03, %10
  %12 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %13 = extractvalue %dx.types.CBufRet.f32 %12, 1
  %14 = extractvalue %dx.types.CBufRet.f32 %12, 0
  %15 = bitcast float %14 to i32
  %16 = and i32 %15, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %44, label %18

; <label>:18                                      ; preds = %0
  %19 = fmul fast float %4, 1.875000e+00
  %20 = fadd fast float %19, -1.562500e-02
  %21 = fmul fast float %5, 3.375000e+01
  %22 = fsub fast float 1.468750e+00, %21
  %23 = fcmp fast oge float %20, 0.000000e+00
  %24 = fcmp fast oge float %22, 0.000000e+00
  %25 = and i1 %23, %24
  %26 = fcmp fast olt float %20, 1.000000e+00
  %27 = and i1 %26, %25
  %28 = fcmp fast olt float %22, 1.000000e+00
  %29 = and i1 %28, %27
  br i1 %29, label %30, label %44

; <label>:30                                      ; preds = %18
  %31 = fmul fast float %4, 6.000000e+01
  %32 = fadd fast float %31, -5.000000e-01
  %33 = call float @dx.op.unary.f32(i32 22, float %32)  ; Frc(value)
  %34 = call float @dx.op.unary.f32(i32 27, float %32)  ; Round_ni(value)
  %35 = fmul fast float %33, 1.800000e+01
  %36 = fmul fast float %5, 6.075000e+02
  %37 = fmul fast float %34, 5.625000e-01
  %38 = fadd fast float %35, -8.000000e+00
  %39 = fsub fast float 1.843750e+01, %36
  %40 = fadd fast float %37, -8.000000e+00
  %41 = call float @dx.op.unary.f32(i32 21, float %38)  ; Exp(value)
  %42 = call float @dx.op.unary.f32(i32 21, float %39)  ; Exp(value)
  %43 = call float @dx.op.unary.f32(i32 21, float %40)  ; Exp(value)
  br label %44

; <label>:44                                      ; preds = %30, %18, %0
  %45 = phi float [ 0.000000e+00, %0 ], [ 1.040000e+03, %18 ], [ 1.040000e+03, %30 ]
  %46 = phi float [ 0.000000e+00, %0 ], [ 4.800000e+01, %18 ], [ 4.800000e+01, %30 ]
  %47 = phi float [ 0.000000e+00, %0 ], [ 0.000000e+00, %18 ], [ %41, %30 ]
  %48 = phi float [ 0.000000e+00, %0 ], [ 0.000000e+00, %18 ], [ %42, %30 ]
  %49 = phi float [ 0.000000e+00, %0 ], [ 0.000000e+00, %18 ], [ %43, %30 ]
  %50 = phi float [ %13, %0 ], [ %13, %18 ], [ 1.000000e+00, %30 ]
  %51 = phi i32 [ 0, %0 ], [ 0, %18 ], [ 1, %30 ]
  %52 = and i32 %15, 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %94, label %54

; <label>:54                                      ; preds = %44
  %55 = fadd fast float %45, 1.040000e+03
  %56 = fcmp fast ogt float %55, 1.024000e+03
  %57 = select i1 %56, float %46, float 0.000000e+00
  %58 = select i1 %56, float 0.000000e+00, float %45
  %59 = fadd fast float %58, 1.040000e+03
  %60 = fadd fast float %57, 4.800000e+01
  %61 = fcmp fast ogt float %60, %46
  %62 = select i1 %61, float %60, float %46
  %63 = fadd fast float %9, -1.600000e+01
  %64 = fsub fast float %63, %58
  %65 = fsub fast float 4.700000e+01, %10
  %66 = fadd fast float %65, %57
  %67 = fmul fast float %64, 9.765625e-04
  %68 = fmul fast float %66, 3.125000e-02
  %69 = fcmp fast oge float %67, 0.000000e+00
  %70 = fcmp fast oge float %68, 0.000000e+00
  %71 = and i1 %69, %70
  %72 = fcmp fast olt float %67, 1.000000e+00
  %73 = and i1 %72, %71
  %74 = fcmp fast olt float %68, 1.000000e+00
  %75 = and i1 %74, %73
  br i1 %75, label %76, label %94

; <label>:76                                      ; preds = %54
  %77 = fadd fast float %9, -1.800000e+01
  %78 = fsub fast float %77, %58
  %79 = fsub fast float 4.500000e+01, %10
  %80 = fadd fast float %79, %57
  %81 = fmul fast float %78, 0x3F50101020000000
  %82 = fmul fast float %80, 0x3FA24924A0000000
  %83 = fcmp fast oge float %81, 0.000000e+00
  %84 = fcmp fast oge float %82, 0.000000e+00
  %85 = and i1 %83, %84
  %86 = fcmp fast olt float %81, 1.000000e+00
  %87 = and i1 %86, %85
  %88 = fcmp fast olt float %82, 1.000000e+00
  %89 = and i1 %88, %87
  br i1 %89, label %90, label %94

; <label>:90                                      ; preds = %76
  %91 = fmul fast float %78, 0x3F92121220000000
  %92 = fadd fast float %91, -8.000000e+00
  %93 = call float @dx.op.unary.f32(i32 21, float %92)  ; Exp(value)
  br label %94

; <label>:94                                      ; preds = %90, %76, %54, %44
  %95 = phi float [ 0.000000e+00, %44 ], [ %57, %54 ], [ %57, %90 ], [ %57, %76 ]
  %96 = phi float [ %45, %44 ], [ %59, %54 ], [ %59, %90 ], [ %59, %76 ]
  %97 = phi float [ %46, %44 ], [ %62, %54 ], [ %62, %90 ], [ %62, %76 ]
  %98 = phi float [ %47, %44 ], [ %47, %54 ], [ %93, %90 ], [ 0x3FC3333340000000, %76 ]
  %99 = phi float [ %48, %44 ], [ %48, %54 ], [ %93, %90 ], [ 0x3FC3333340000000, %76 ]
  %100 = phi float [ %49, %44 ], [ %49, %54 ], [ %93, %90 ], [ 0x3FC3333340000000, %76 ]
  %101 = phi float [ %50, %44 ], [ %50, %54 ], [ 1.000000e+00, %90 ], [ 1.000000e+00, %76 ]
  %102 = phi i32 [ %51, %44 ], [ %51, %54 ], [ 1, %90 ], [ 0, %76 ]
  %103 = and i32 %15, 8
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %197, label %105

; <label>:105                                     ; preds = %94
  %106 = fadd fast float %96, 1.040000e+03
  %107 = fcmp fast ogt float %106, 1.024000e+03
  %108 = select i1 %107, float %97, float %95
  %109 = select i1 %107, float 0.000000e+00, float %96
  %110 = fadd fast float %109, 1.040000e+03
  %111 = fadd fast float %108, 1.440000e+02
  %112 = fcmp fast ogt float %111, %97
  %113 = select i1 %112, float %111, float %97
  %114 = fadd fast float %109, 1.600000e+01
  %115 = fsub fast float 9.360000e+02, %108
  %116 = fsub fast float %9, %114
  %117 = fsub fast float %11, %115
  %118 = fmul fast float %116, 9.765625e-04
  %119 = fmul fast float %117, 7.812500e-03
  %120 = fcmp fast oge float %118, 0.000000e+00
  %121 = fcmp fast oge float %119, 0.000000e+00
  %122 = and i1 %120, %121
  %123 = fcmp fast olt float %118, 1.000000e+00
  %124 = and i1 %123, %122
  %125 = fcmp fast olt float %119, 1.000000e+00
  %126 = and i1 %125, %124
  br i1 %126, label %127, label %197

; <label>:127                                     ; preds = %105
  %128 = fmul fast float %117, 2.343750e-01
  %129 = call float @dx.op.unary.f32(i32 27, float %128)  ; Round_ni(value)
  %130 = fptosi float %129 to i32
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %187, label %132

; <label>:132                                     ; preds = %127
  %133 = icmp eq i32 %130, 1
  br i1 %133, label %187, label %134

; <label>:134                                     ; preds = %132
  %135 = icmp eq i32 %130, 2
  br i1 %135, label %187, label %136

; <label>:136                                     ; preds = %134
  %137 = icmp eq i32 %130, 3
  br i1 %137, label %187, label %138

; <label>:138                                     ; preds = %136
  %139 = icmp eq i32 %130, 4
  br i1 %139, label %187, label %140

; <label>:140                                     ; preds = %138
  %141 = icmp eq i32 %130, 5
  br i1 %141, label %187, label %142

; <label>:142                                     ; preds = %140
  %143 = icmp slt i32 %130, 30
  br i1 %143, label %144, label %187

; <label>:144                                     ; preds = %142
  %145 = sub i32 29, %130
  switch i32 %145, label %169 [
    i32 24, label %168
    i32 2, label %146
    i32 3, label %147
    i32 4, label %148
    i32 5, label %149
    i32 6, label %150
    i32 7, label %151
    i32 8, label %152
    i32 9, label %153
    i32 10, label %154
    i32 11, label %155
    i32 12, label %156
    i32 13, label %157
    i32 14, label %158
    i32 15, label %159
    i32 16, label %160
    i32 17, label %161
    i32 18, label %162
    i32 19, label %163
    i32 20, label %164
    i32 21, label %165
    i32 22, label %166
    i32 23, label %167
  ]

; <label>:146                                     ; preds = %144
  br label %169

; <label>:147                                     ; preds = %144
  br label %169

; <label>:148                                     ; preds = %144
  br label %169

; <label>:149                                     ; preds = %144
  br label %169

; <label>:150                                     ; preds = %144
  br label %169

; <label>:151                                     ; preds = %144
  br label %169

; <label>:152                                     ; preds = %144
  br label %169

; <label>:153                                     ; preds = %144
  br label %169

; <label>:154                                     ; preds = %144
  br label %169

; <label>:155                                     ; preds = %144
  br label %169

; <label>:156                                     ; preds = %144
  br label %169

; <label>:157                                     ; preds = %144
  br label %169

; <label>:158                                     ; preds = %144
  br label %169

; <label>:159                                     ; preds = %144
  br label %169

; <label>:160                                     ; preds = %144
  br label %169

; <label>:161                                     ; preds = %144
  br label %169

; <label>:162                                     ; preds = %144
  br label %169

; <label>:163                                     ; preds = %144
  br label %169

; <label>:164                                     ; preds = %144
  br label %169

; <label>:165                                     ; preds = %144
  br label %169

; <label>:166                                     ; preds = %144
  br label %169

; <label>:167                                     ; preds = %144
  br label %169

; <label>:168                                     ; preds = %144
  br label %169

; <label>:169                                     ; preds = %168, %167, %166, %165, %164, %163, %162, %161, %160, %159, %158, %157, %156, %155, %154, %153, %152, %151, %150, %149, %148, %147, %146, %144
  %170 = phi float [ 0x3FD5555560000000, %167 ], [ 0x3FDE9E9EA0000000, %166 ], [ 0x3FE4141420000000, %165 ], [ 0x3FE9191920000000, %164 ], [ 0x3FEE7E7E80000000, %163 ], [ 0x3FA0101000000000, %162 ], [ 0x3FE7777780000000, %161 ], [ 0x3FECFCFD00000000, %160 ], [ 0x3FE5F5F600000000, %159 ], [ 0x3FD19191A0000000, %158 ], [ 0x3FCC1C1C20000000, %157 ], [ 0x3FEC1C1C20000000, %156 ], [ 0x3FE3B3B3C0000000, %155 ], [ 0x3FD79797A0000000, %154 ], [ 0x3FE8383840000000, %153 ], [ 0x3FD4141420000000, %152 ], [ 0x3FEADADAE0000000, %151 ], [ 0x3FD9D9D9E0000000, %150 ], [ 0x3FE0B0B0C0000000, %149 ], [ 0x3FD5D5D5E0000000, %148 ], [ 0x3FD89898A0000000, %147 ], [ 0x3FE8585860000000, %146 ], [ 0x3FCA1A1A20000000, %168 ], [ 0x3FDCDCDCE0000000, %144 ]
  %171 = phi float [ 0x3FD78EC300000000, %167 ], [ 0x3FE02E0E80000000, %166 ], [ 0x3FE4B32F00000000, %165 ], [ 0x3FE9753640000000, %164 ], [ 0x3FEE929760000000, %163 ], [ 0x3FE17D03C0000000, %162 ], [ 0x3FD7CBA9E0000000, %161 ], [ 0x3FE956C2E0000000, %160 ], [ 0x3FD02ED160000000, %159 ], [ 0x3FE345C680000000, %158 ], [ 0x3FD1D920C0000000, %157 ], [ 0x3FE50E8920000000, %156 ], [ 0x3FE807CDA0000000, %155 ], [ 0x3FD19C3A00000000, %154 ], [ 0x3FD8BF44E0000000, %153 ], [ 0x3FD8FC2BA0000000, %152 ], [ 0x3FE0A7DC00000000, %151 ], [ 0x3FE8264100000000, %150 ], [ 0x3FE0E4C2C0000000, %149 ], [ 0x3FDD077E80000000, %148 ], [ 0x3FE02E0E80000000, %147 ], [ 0x3FE382AD40000000, %146 ], [ 0x3FCF6A07C0000000, %168 ], [ 0x3FD6D80EC0000000, %144 ]
  %172 = phi float [ 0x3FD78EC300000000, %167 ], [ 0x3FE00F9B20000000, %166 ], [ 0x3FE4B32F00000000, %165 ], [ 0x3FE9753640000000, %164 ], [ 0x3FEE742420000000, %163 ], [ 0x3FE4D1A260000000, %162 ], [ 0x3FE36439E0000000, %161 ], [ 0x3FC56C2BE0000000, %160 ], [ 0x3FD19C3A00000000, %159 ], [ 0x3FD4B3F200000000, %158 ], [ 0x3FE382AD40000000, %157 ], [ 0x3FCC8F36A0000000, %156 ], [ 0x3FD28FD500000000, %155 ], [ 0x3FDD077E80000000, %154 ], [ 0x3FDAE361A0000000, %153 ], [ 0x3FE569E360000000, %152 ], [ 0x3FCB9B9BA0000000, %151 ], [ 0x3FE5E3B0E0000000, %150 ], [ 0x3FE6B8D880000000, %149 ], [ 0x3FD3468960000000, %148 ], [ 0x3FE457D4E0000000, %147 ], [ 0x3FE121A9A0000000, %146 ], [ 0x3FCF6A07C0000000, %168 ], [ 0x3FD3837020000000, %144 ]
  %173 = fcmp fast ole float %170, 0x3FA4B5DCC0000000
  %174 = fmul fast float %170, 0x3FB3D07220000000
  %175 = fadd fast float %170, 0x3FAC28F5C0000000
  %176 = fmul fast float %175, 0x3FEE54EDE0000000
  %177 = call float @dx.op.unary.f32(i32 23, float %176)  ; Log(value)
  %178 = call float @dx.op.unary.f32(i32 23, float %171)  ; Log(value)
  %179 = call float @dx.op.unary.f32(i32 23, float %172)  ; Log(value)
  %180 = fmul fast float %177, 0x4003333340000000
  %181 = fmul fast float %178, 0x4003333340000000
  %182 = fmul fast float %179, 0x4003333340000000
  %183 = call float @dx.op.unary.f32(i32 21, float %180)  ; Exp(value)
  %184 = call float @dx.op.unary.f32(i32 21, float %181)  ; Exp(value)
  %185 = call float @dx.op.unary.f32(i32 21, float %182)  ; Exp(value)
  %186 = select i1 %173, float %174, float %183
  br label %187

; <label>:187                                     ; preds = %169, %142, %140, %138, %136, %134, %132, %127
  %188 = phi float [ %186, %169 ], [ 0.000000e+00, %142 ], [ 1.000000e+00, %127 ], [ 0.000000e+00, %132 ], [ 0.000000e+00, %134 ], [ 1.000000e+00, %136 ], [ 0.000000e+00, %138 ], [ 1.000000e+00, %140 ]
  %189 = phi float [ %184, %169 ], [ 0.000000e+00, %142 ], [ 0.000000e+00, %127 ], [ 1.000000e+00, %132 ], [ 0.000000e+00, %134 ], [ 1.000000e+00, %136 ], [ 1.000000e+00, %138 ], [ 0.000000e+00, %140 ]
  %190 = phi float [ %185, %169 ], [ 0.000000e+00, %142 ], [ 0.000000e+00, %127 ], [ 0.000000e+00, %132 ], [ 1.000000e+00, %134 ], [ 0.000000e+00, %136 ], [ 1.000000e+00, %138 ], [ 1.000000e+00, %140 ]
  %191 = fmul fast float %116, 0x3F92000000000000
  %192 = fadd fast float %191, -8.000000e+00
  %193 = call float @dx.op.unary.f32(i32 21, float %192)  ; Exp(value)
  %194 = fmul fast float %193, %188
  %195 = fmul fast float %193, %189
  %196 = fmul fast float %193, %190
  br label %197

; <label>:197                                     ; preds = %187, %105, %94
  %198 = phi float [ %95, %94 ], [ %108, %105 ], [ %108, %187 ]
  %199 = phi float [ %96, %94 ], [ %110, %105 ], [ %110, %187 ]
  %200 = phi float [ %97, %94 ], [ %113, %105 ], [ %113, %187 ]
  %201 = phi float [ %98, %94 ], [ %98, %105 ], [ %194, %187 ]
  %202 = phi float [ %99, %94 ], [ %99, %105 ], [ %195, %187 ]
  %203 = phi float [ %100, %94 ], [ %100, %105 ], [ %196, %187 ]
  %204 = phi float [ %101, %94 ], [ %101, %105 ], [ 1.000000e+00, %187 ]
  %205 = phi i32 [ %102, %94 ], [ %102, %105 ], [ 1, %187 ]
  %206 = and i32 %15, 16
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %315, label %208

; <label>:208                                     ; preds = %197
  %209 = fadd fast float %199, 1.440000e+02
  %210 = fcmp fast ogt float %209, 1.024000e+03
  %211 = select i1 %210, float %200, float %198
  %212 = select i1 %210, float 0.000000e+00, float %199
  %213 = fadd fast float %212, 1.440000e+02
  %214 = fadd fast float %211, 1.440000e+02
  %215 = fcmp fast ogt float %214, %200
  %216 = select i1 %215, float %214, float %200
  %217 = extractvalue %dx.types.CBufRet.f32 %6, 2
  %218 = fadd fast float %9, -1.600000e+01
  %219 = fsub fast float %218, %212
  %220 = fsub fast float 1.430000e+02, %10
  %221 = fadd fast float %220, %211
  %222 = fmul fast float %219, 7.812500e-03
  %223 = fmul fast float %221, 7.812500e-03
  %224 = fcmp fast oge float %222, 0.000000e+00
  %225 = fcmp fast oge float %223, 0.000000e+00
  %226 = and i1 %224, %225
  %227 = fcmp fast olt float %222, 1.000000e+00
  %228 = and i1 %227, %226
  %229 = fcmp fast olt float %223, 1.000000e+00
  %230 = and i1 %229, %228
  br i1 %230, label %231, label %260

; <label>:231                                     ; preds = %208
  %232 = fadd fast float %9, -4.800000e+01
  %233 = fsub fast float %232, %212
  %234 = fsub fast float 1.110000e+02, %10
  %235 = fadd fast float %234, %211
  %236 = fmul fast float %233, 1.562500e-02
  %237 = fmul fast float %235, 1.562500e-02
  %238 = fcmp fast oge float %236, 0.000000e+00
  %239 = fcmp fast oge float %237, 0.000000e+00
  %240 = and i1 %238, %239
  %241 = fcmp fast olt float %236, 1.000000e+00
  %242 = and i1 %241, %240
  %243 = fcmp fast olt float %237, 1.000000e+00
  %244 = and i1 %243, %242
  br i1 %244, label %260, label %245

; <label>:245                                     ; preds = %231
  %246 = fadd fast float %9, -2.000000e+01
  %247 = fsub fast float %246, %212
  %248 = fsub fast float 1.390000e+02, %10
  %249 = fadd fast float %248, %211
  %250 = fmul fast float %247, 0x3F81111120000000
  %251 = fmul fast float %249, 0x3F81111120000000
  %252 = fcmp fast oge float %250, 0.000000e+00
  %253 = fcmp fast oge float %251, 0.000000e+00
  %254 = and i1 %252, %253
  %255 = fcmp fast olt float %250, 1.000000e+00
  %256 = and i1 %255, %254
  %257 = fcmp fast olt float %251, 1.000000e+00
  %258 = and i1 %257, %256
  %259 = select i1 %258, float 0.000000e+00, float 0x3FC3333340000000
  br label %260

; <label>:260                                     ; preds = %245, %231, %208
  %261 = phi float [ %201, %208 ], [ %217, %231 ], [ %259, %245 ]
  %262 = phi float [ %202, %208 ], [ %217, %231 ], [ %259, %245 ]
  %263 = phi float [ %203, %208 ], [ %217, %231 ], [ %259, %245 ]
  %264 = phi float [ %204, %208 ], [ 1.000000e+00, %231 ], [ 1.000000e+00, %245 ]
  %265 = phi i32 [ %205, %208 ], [ 0, %231 ], [ 0, %245 ]
  %266 = fadd fast float %212, 2.880000e+02
  %267 = fcmp fast ogt float %266, 1.024000e+03
  %268 = select i1 %267, float %216, float %211
  %269 = select i1 %267, float 0.000000e+00, float %213
  %270 = fadd fast float %269, 1.440000e+02
  %271 = fadd fast float %268, 1.440000e+02
  %272 = fcmp fast ogt float %271, %216
  %273 = select i1 %272, float %271, float %216
  %274 = extractvalue %dx.types.CBufRet.f32 %6, 3
  %275 = fsub fast float %218, %269
  %276 = fadd fast float %220, %268
  %277 = fmul fast float %275, 7.812500e-03
  %278 = fmul fast float %276, 7.812500e-03
  %279 = fcmp fast oge float %277, 0.000000e+00
  %280 = fcmp fast oge float %278, 0.000000e+00
  %281 = and i1 %279, %280
  %282 = fcmp fast olt float %277, 1.000000e+00
  %283 = and i1 %282, %281
  %284 = fcmp fast olt float %278, 1.000000e+00
  %285 = and i1 %284, %283
  br i1 %285, label %286, label %315

; <label>:286                                     ; preds = %260
  %287 = fadd fast float %9, -4.800000e+01
  %288 = fsub fast float %287, %269
  %289 = fsub fast float 1.110000e+02, %10
  %290 = fadd fast float %289, %268
  %291 = fmul fast float %288, 1.562500e-02
  %292 = fmul fast float %290, 1.562500e-02
  %293 = fcmp fast oge float %291, 0.000000e+00
  %294 = fcmp fast oge float %292, 0.000000e+00
  %295 = and i1 %293, %294
  %296 = fcmp fast olt float %291, 1.000000e+00
  %297 = and i1 %296, %295
  %298 = fcmp fast olt float %292, 1.000000e+00
  %299 = and i1 %298, %297
  br i1 %299, label %315, label %300

; <label>:300                                     ; preds = %286
  %301 = fadd fast float %9, -2.000000e+01
  %302 = fsub fast float %301, %269
  %303 = fsub fast float 1.390000e+02, %10
  %304 = fadd fast float %303, %268
  %305 = fmul fast float %302, 0x3F81111120000000
  %306 = fmul fast float %304, 0x3F81111120000000
  %307 = fcmp fast oge float %305, 0.000000e+00
  %308 = fcmp fast oge float %306, 0.000000e+00
  %309 = and i1 %307, %308
  %310 = fcmp fast olt float %305, 1.000000e+00
  %311 = and i1 %310, %309
  %312 = fcmp fast olt float %306, 1.000000e+00
  %313 = and i1 %312, %311
  %314 = select i1 %313, float 1.000000e+00, float 0x3FE3333340000000
  br label %315

; <label>:315                                     ; preds = %300, %286, %260, %197
  %316 = phi float [ %198, %197 ], [ %268, %260 ], [ %268, %286 ], [ %268, %300 ]
  %317 = phi float [ %199, %197 ], [ %270, %260 ], [ %270, %286 ], [ %270, %300 ]
  %318 = phi float [ %200, %197 ], [ %273, %260 ], [ %273, %286 ], [ %273, %300 ]
  %319 = phi float [ %201, %197 ], [ %261, %260 ], [ %274, %286 ], [ %314, %300 ]
  %320 = phi float [ %202, %197 ], [ %262, %260 ], [ %274, %286 ], [ %314, %300 ]
  %321 = phi float [ %203, %197 ], [ %263, %260 ], [ %274, %286 ], [ %314, %300 ]
  %322 = phi float [ %204, %197 ], [ %264, %260 ], [ 1.000000e+00, %286 ], [ 1.000000e+00, %300 ]
  %323 = phi i32 [ %205, %197 ], [ %265, %260 ], [ 0, %286 ], [ 0, %300 ]
  %324 = icmp ult i32 %8, 3
  %325 = and i32 %15, 32
  %326 = icmp ne i32 %325, 0
  %327 = and i1 %324, %326
  br i1 %327, label %328, label %512

; <label>:328                                     ; preds = %315
  %329 = fadd fast float %317, 1.440000e+02
  %330 = fcmp fast ogt float %329, 1.024000e+03
  %331 = select i1 %330, float %318, float %316
  %332 = select i1 %330, float 0.000000e+00, float %317
  %333 = fadd fast float %331, 1.440000e+02
  %334 = fcmp fast ogt float %333, %318
  %335 = select i1 %334, float %333, float %318
  %336 = fadd fast float %9, -1.600000e+01
  %337 = fsub fast float %336, %332
  %338 = fsub fast float 1.430000e+02, %10
  %339 = fadd fast float %338, %331
  %340 = fmul fast float %337, 7.812500e-03
  %341 = fmul fast float %339, 7.812500e-03
  %342 = fcmp fast oge float %340, 0.000000e+00
  %343 = fcmp fast oge float %341, 0.000000e+00
  %344 = and i1 %342, %343
  %345 = fcmp fast olt float %340, 1.000000e+00
  %346 = and i1 %345, %344
  %347 = fcmp fast olt float %341, 1.000000e+00
  %348 = and i1 %347, %346
  br i1 %348, label %349, label %419

; <label>:349                                     ; preds = %328
  %350 = fadd fast float %9, -2.000000e+01
  %351 = fsub fast float %350, %332
  %352 = fsub fast float 1.390000e+02, %10
  %353 = fadd fast float %352, %331
  %354 = fmul fast float %351, 0x3F81111120000000
  %355 = fmul fast float %353, 0x3F81111120000000
  %356 = fcmp fast oge float %354, 0.000000e+00
  %357 = fcmp fast oge float %355, 0.000000e+00
  %358 = and i1 %356, %357
  %359 = fcmp fast olt float %354, 1.000000e+00
  %360 = and i1 %359, %358
  %361 = fcmp fast olt float %355, 1.000000e+00
  %362 = and i1 %361, %360
  br i1 %362, label %363, label %419

; <label>:363                                     ; preds = %349
  %364 = fadd fast float %9, -2.400000e+01
  %365 = fsub fast float %364, %332
  %366 = fsub fast float 1.350000e+02, %10
  %367 = fadd fast float %366, %331
  %368 = fmul fast float %365, 0x3FA6DB6DC0000000
  %369 = fmul fast float %367, 0x3F9B6DB700000000
  %370 = fsub fast float 3.500000e+00, %369
  %371 = call float @dx.op.unary.f32(i32 27, float %368)  ; Round_ni(value)
  %372 = call float @dx.op.unary.f32(i32 27, float %370)  ; Round_ni(value)
  %373 = fptosi float %371 to i32
  %374 = fptosi float %372 to i32
  %375 = call float @dx.op.unary.f32(i32 22, float %368)  ; Frc(value)
  %376 = call float @dx.op.unary.f32(i32 22, float %370)  ; Frc(value)
  %377 = icmp eq i32 %374, 1
  br i1 %377, label %378, label %383

; <label>:378                                     ; preds = %363
  switch i32 %373, label %391 [
    i32 0, label %379
    i32 1, label %380
    i32 2, label %381
    i32 3, label %382
  ]

; <label>:379                                     ; preds = %378
  br label %391

; <label>:380                                     ; preds = %378
  br label %391

; <label>:381                                     ; preds = %378
  br label %391

; <label>:382                                     ; preds = %378
  br label %391

; <label>:383                                     ; preds = %363
  %384 = icmp eq i32 %374, 2
  br i1 %384, label %385, label %391

; <label>:385                                     ; preds = %383
  switch i32 %373, label %391 [
    i32 0, label %386
    i32 1, label %387
    i32 2, label %388
    i32 3, label %389
    i32 4, label %390
  ]

; <label>:386                                     ; preds = %385
  br label %391

; <label>:387                                     ; preds = %385
  br label %391

; <label>:388                                     ; preds = %385
  br label %391

; <label>:389                                     ; preds = %385
  br label %391

; <label>:390                                     ; preds = %385
  br label %391

; <label>:391                                     ; preds = %390, %389, %388, %387, %386, %385, %383, %382, %381, %380, %379, %378
  %392 = phi i32 [ 0, %378 ], [ 50529024, %382 ], [ 50529024, %381 ], [ 1667457792, %380 ], [ 1057193728, %379 ], [ 0, %385 ], [ 1057193728, %390 ], [ 56835584, %389 ], [ 1869046528, %388 ], [ 1667448320, %387 ], [ 1667448576, %386 ], [ 0, %383 ]
  %393 = phi i32 [ 0, %378 ], [ 8323843, %382 ], [ 8323843, %381 ], [ 4088675, %380 ], [ 197379, %379 ], [ 0, %385 ], [ 8323843, %390 ], [ 4088699, %389 ], [ 6517627, %388 ], [ 6513535, %387 ], [ 6501183, %386 ], [ 0, %383 ]
  %394 = fcmp fast olt float %375, 0.000000e+00
  %395 = fcmp fast olt float %376, 0.000000e+00
  %396 = or i1 %394, %395
  %397 = fcmp fast oge float %375, 1.000000e+00
  %398 = or i1 %397, %396
  %399 = fcmp fast oge float %376, 1.000000e+00
  %400 = or i1 %399, %398
  %401 = select i1 %400, float 0.000000e+00, float 1.000000e+00
  %402 = fmul fast float %375, 8.000000e+00
  %403 = fmul fast float %376, 8.000000e+00
  %404 = call float @dx.op.unary.f32(i32 27, float %402)  ; Round_ni(value)
  %405 = call float @dx.op.unary.f32(i32 27, float %403)  ; Round_ni(value)
  %406 = fptoui float %404 to i32
  %407 = fptoui float %405 to i32
  %408 = shl i32 %407, 3
  %409 = add i32 %408, %406
  %410 = icmp ult i32 %407, 4
  %411 = select i1 %410, i32 %392, i32 %393
  %412 = and i32 %409, 31
  %413 = lshr i32 %411, %412
  %414 = and i32 %413, 1
  %415 = uitofp i32 %414 to float
  %416 = fmul fast float %415, %401
  %417 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %416)  ; FMin(a,b)
  %418 = fmul fast float %417, 0x3FA8181820000000
  br label %419

; <label>:419                                     ; preds = %391, %349, %328
  %420 = phi float [ %319, %328 ], [ %418, %391 ], [ 0x3FC3333340000000, %349 ]
  %421 = phi float [ %320, %328 ], [ %418, %391 ], [ 0x3FC3333340000000, %349 ]
  %422 = phi float [ %321, %328 ], [ %418, %391 ], [ 0x3FC3333340000000, %349 ]
  %423 = phi float [ %322, %328 ], [ 1.000000e+00, %391 ], [ 1.000000e+00, %349 ]
  %424 = phi i32 [ %323, %328 ], [ 0, %391 ], [ 0, %349 ]
  %425 = fadd fast float %332, 2.880000e+02
  %426 = fcmp fast ogt float %425, 1.024000e+03
  %427 = select i1 %426, float %335, float %331
  %428 = fadd fast float %332, 1.600000e+02
  %429 = select i1 %426, float 1.600000e+01, float %428
  %430 = fsub fast float %9, %429
  %431 = fadd fast float %338, %427
  %432 = fmul fast float %430, 7.812500e-03
  %433 = fmul fast float %431, 7.812500e-03
  %434 = fcmp fast oge float %432, 0.000000e+00
  %435 = fcmp fast oge float %433, 0.000000e+00
  %436 = and i1 %434, %435
  %437 = fcmp fast olt float %432, 1.000000e+00
  %438 = and i1 %437, %436
  %439 = fcmp fast olt float %433, 1.000000e+00
  %440 = and i1 %439, %438
  br i1 %440, label %441, label %512

; <label>:441                                     ; preds = %419
  %442 = fadd fast float %9, -4.000000e+00
  %443 = fsub fast float %442, %429
  %444 = fsub fast float 1.390000e+02, %10
  %445 = fadd fast float %444, %427
  %446 = fmul fast float %443, 0x3F81111120000000
  %447 = fmul fast float %445, 0x3F81111120000000
  %448 = fcmp fast oge float %446, 0.000000e+00
  %449 = fcmp fast oge float %447, 0.000000e+00
  %450 = and i1 %448, %449
  %451 = fcmp fast olt float %446, 1.000000e+00
  %452 = and i1 %451, %450
  %453 = fcmp fast olt float %447, 1.000000e+00
  %454 = and i1 %453, %452
  br i1 %454, label %455, label %512

; <label>:455                                     ; preds = %441
  %456 = fadd fast float %9, -8.000000e+00
  %457 = fsub fast float %456, %429
  %458 = fsub fast float 1.350000e+02, %10
  %459 = fadd fast float %458, %427
  %460 = fmul fast float %457, 0x3FA6DB6DC0000000
  %461 = fmul fast float %459, 0x3F9B6DB700000000
  %462 = fsub fast float 3.500000e+00, %461
  %463 = call float @dx.op.unary.f32(i32 27, float %460)  ; Round_ni(value)
  %464 = call float @dx.op.unary.f32(i32 27, float %462)  ; Round_ni(value)
  %465 = fptosi float %463 to i32
  %466 = fptosi float %464 to i32
  %467 = call float @dx.op.unary.f32(i32 22, float %460)  ; Frc(value)
  %468 = call float @dx.op.unary.f32(i32 22, float %462)  ; Frc(value)
  %469 = icmp eq i32 %466, 1
  br i1 %469, label %470, label %475

; <label>:470                                     ; preds = %455
  switch i32 %465, label %483 [
    i32 0, label %471
    i32 1, label %472
    i32 2, label %473
    i32 3, label %474
  ]

; <label>:471                                     ; preds = %470
  br label %483

; <label>:472                                     ; preds = %470
  br label %483

; <label>:473                                     ; preds = %470
  br label %483

; <label>:474                                     ; preds = %470
  br label %483

; <label>:475                                     ; preds = %455
  %476 = icmp eq i32 %466, 2
  br i1 %476, label %477, label %483

; <label>:477                                     ; preds = %475
  switch i32 %465, label %483 [
    i32 0, label %478
    i32 1, label %479
    i32 2, label %480
    i32 3, label %481
    i32 4, label %482
  ]

; <label>:478                                     ; preds = %477
  br label %483

; <label>:479                                     ; preds = %477
  br label %483

; <label>:480                                     ; preds = %477
  br label %483

; <label>:481                                     ; preds = %477
  br label %483

; <label>:482                                     ; preds = %477
  br label %483

; <label>:483                                     ; preds = %482, %481, %480, %479, %478, %477, %475, %474, %473, %472, %471, %470
  %484 = phi i32 [ 0, %470 ], [ 50529024, %474 ], [ 50529024, %473 ], [ 1667457792, %472 ], [ 1057193728, %471 ], [ 0, %477 ], [ 1057193728, %482 ], [ 56835584, %481 ], [ 1869046528, %480 ], [ 1667448320, %479 ], [ 1667448576, %478 ], [ 0, %475 ]
  %485 = phi i32 [ 0, %470 ], [ 8323843, %474 ], [ 8323843, %473 ], [ 4088675, %472 ], [ 197379, %471 ], [ 0, %477 ], [ 8323843, %482 ], [ 4088699, %481 ], [ 6517627, %480 ], [ 6513535, %479 ], [ 6501183, %478 ], [ 0, %475 ]
  %486 = fcmp fast olt float %467, 0.000000e+00
  %487 = fcmp fast olt float %468, 0.000000e+00
  %488 = or i1 %486, %487
  %489 = fcmp fast oge float %467, 1.000000e+00
  %490 = or i1 %489, %488
  %491 = fcmp fast oge float %468, 1.000000e+00
  %492 = or i1 %491, %490
  %493 = select i1 %492, float 0.000000e+00, float 1.000000e+00
  %494 = fmul fast float %467, 8.000000e+00
  %495 = fmul fast float %468, 8.000000e+00
  %496 = call float @dx.op.unary.f32(i32 27, float %494)  ; Round_ni(value)
  %497 = call float @dx.op.unary.f32(i32 27, float %495)  ; Round_ni(value)
  %498 = fptoui float %496 to i32
  %499 = fptoui float %497 to i32
  %500 = shl i32 %499, 3
  %501 = add i32 %500, %498
  %502 = icmp ult i32 %499, 4
  %503 = select i1 %502, i32 %484, i32 %485
  %504 = and i32 %501, 31
  %505 = lshr i32 %503, %504
  %506 = and i32 %505, 1
  %507 = uitofp i32 %506 to float
  %508 = fmul fast float %507, %493
  %509 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %508)  ; FMin(a,b)
  %510 = fmul fast float %509, 0x3FB0101000000000
  %511 = fsub fast float 1.000000e+00, %510
  br label %512

; <label>:512                                     ; preds = %483, %441, %419, %315
  %513 = phi float [ %319, %315 ], [ %420, %419 ], [ %511, %483 ], [ 0x3FE3333340000000, %441 ]
  %514 = phi float [ %320, %315 ], [ %421, %419 ], [ %511, %483 ], [ 0x3FE3333340000000, %441 ]
  %515 = phi float [ %321, %315 ], [ %422, %419 ], [ %511, %483 ], [ 0x3FE3333340000000, %441 ]
  %516 = phi float [ %322, %315 ], [ %423, %419 ], [ 1.000000e+00, %483 ], [ 1.000000e+00, %441 ]
  %517 = phi i32 [ %323, %315 ], [ %424, %419 ], [ 0, %483 ], [ 0, %441 ]
  %518 = and i32 %15, 64
  %519 = icmp eq i32 %518, 0
  br i1 %519, label %609, label %520

; <label>:520                                     ; preds = %512
  %521 = fmul fast float %4, 0x400AAAAAA0000000
  %522 = fadd fast float %521, 0xBFFD1C71C0000000
  %523 = fmul fast float %5, 2.812500e+00
  %524 = fsub fast float 0x3FF04AAAC0000000, %523
  %525 = fcmp fast oge float %522, 0.000000e+00
  %526 = fcmp fast oge float %524, 0.000000e+00
  %527 = and i1 %525, %526
  %528 = fcmp fast olt float %522, 1.000000e+00
  %529 = and i1 %528, %527
  %530 = fcmp fast olt float %524, 1.000000e+00
  %531 = and i1 %530, %529
  br i1 %531, label %532, label %609

; <label>:532                                     ; preds = %520
  %533 = fmul fast float %4, 2.000000e+01
  %534 = fadd fast float %533, 0xC025D55540000000
  %535 = fmul fast float %5, 1.125000e+01
  %536 = fadd fast float %535, 0xBFB2AAB000000000
  %537 = fptosi float %534 to i32
  %538 = fptosi float %536 to i32
  %539 = sitofp i32 %537 to float
  %540 = sitofp i32 %538 to float
  %541 = fmul fast float %540, 6.000000e+00
  %542 = fadd fast float %541, %539
  %543 = fptosi float %542 to i32
  switch i32 %543, label %567 [
    i32 23, label %566
    i32 1, label %544
    i32 2, label %545
    i32 3, label %546
    i32 4, label %547
    i32 5, label %548
    i32 6, label %549
    i32 7, label %550
    i32 8, label %551
    i32 9, label %552
    i32 10, label %553
    i32 11, label %554
    i32 12, label %555
    i32 13, label %556
    i32 14, label %557
    i32 15, label %558
    i32 16, label %559
    i32 17, label %560
    i32 18, label %561
    i32 19, label %562
    i32 20, label %563
    i32 21, label %564
    i32 22, label %565
  ]

; <label>:544                                     ; preds = %532
  br label %567

; <label>:545                                     ; preds = %532
  br label %567

; <label>:546                                     ; preds = %532
  br label %567

; <label>:547                                     ; preds = %532
  br label %567

; <label>:548                                     ; preds = %532
  br label %567

; <label>:549                                     ; preds = %532
  br label %567

; <label>:550                                     ; preds = %532
  br label %567

; <label>:551                                     ; preds = %532
  br label %567

; <label>:552                                     ; preds = %532
  br label %567

; <label>:553                                     ; preds = %532
  br label %567

; <label>:554                                     ; preds = %532
  br label %567

; <label>:555                                     ; preds = %532
  br label %567

; <label>:556                                     ; preds = %532
  br label %567

; <label>:557                                     ; preds = %532
  br label %567

; <label>:558                                     ; preds = %532
  br label %567

; <label>:559                                     ; preds = %532
  br label %567

; <label>:560                                     ; preds = %532
  br label %567

; <label>:561                                     ; preds = %532
  br label %567

; <label>:562                                     ; preds = %532
  br label %567

; <label>:563                                     ; preds = %532
  br label %567

; <label>:564                                     ; preds = %532
  br label %567

; <label>:565                                     ; preds = %532
  br label %567

; <label>:566                                     ; preds = %532
  br label %567

; <label>:567                                     ; preds = %566, %565, %564, %563, %562, %561, %560, %559, %558, %557, %556, %555, %554, %553, %552, %551, %550, %549, %548, %547, %546, %545, %544, %532
  %568 = phi float [ 0x3FD5555560000000, %565 ], [ 0x3FDE9E9EA0000000, %564 ], [ 0x3FE4141420000000, %563 ], [ 0x3FE9191920000000, %562 ], [ 0x3FEE7E7E80000000, %561 ], [ 0x3FA0101000000000, %560 ], [ 0x3FE7777780000000, %559 ], [ 0x3FECFCFD00000000, %558 ], [ 0x3FE5F5F600000000, %557 ], [ 0x3FD19191A0000000, %556 ], [ 0x3FCC1C1C20000000, %555 ], [ 0x3FEC1C1C20000000, %554 ], [ 0x3FE3B3B3C0000000, %553 ], [ 0x3FD79797A0000000, %552 ], [ 0x3FE8383840000000, %551 ], [ 0x3FD4141420000000, %550 ], [ 0x3FEADADAE0000000, %549 ], [ 0x3FD9D9D9E0000000, %548 ], [ 0x3FE0B0B0C0000000, %547 ], [ 0x3FD5D5D5E0000000, %546 ], [ 0x3FD89898A0000000, %545 ], [ 0x3FE8585860000000, %544 ], [ 0x3FCA1A1A20000000, %566 ], [ 0x3FDCDCDCE0000000, %532 ]
  %569 = phi float [ 0x3FD78EC300000000, %565 ], [ 0x3FE02E0E80000000, %564 ], [ 0x3FE4B32F00000000, %563 ], [ 0x3FE9753640000000, %562 ], [ 0x3FEE929760000000, %561 ], [ 0x3FE17D03C0000000, %560 ], [ 0x3FD7CBA9E0000000, %559 ], [ 0x3FE956C2E0000000, %558 ], [ 0x3FD02ED160000000, %557 ], [ 0x3FE345C680000000, %556 ], [ 0x3FD1D920C0000000, %555 ], [ 0x3FE50E8920000000, %554 ], [ 0x3FE807CDA0000000, %553 ], [ 0x3FD19C3A00000000, %552 ], [ 0x3FD8BF44E0000000, %551 ], [ 0x3FD8FC2BA0000000, %550 ], [ 0x3FE0A7DC00000000, %549 ], [ 0x3FE8264100000000, %548 ], [ 0x3FE0E4C2C0000000, %547 ], [ 0x3FDD077E80000000, %546 ], [ 0x3FE02E0E80000000, %545 ], [ 0x3FE382AD40000000, %544 ], [ 0x3FCF6A07C0000000, %566 ], [ 0x3FD6D80EC0000000, %532 ]
  %570 = phi float [ 0x3FD78EC300000000, %565 ], [ 0x3FE00F9B20000000, %564 ], [ 0x3FE4B32F00000000, %563 ], [ 0x3FE9753640000000, %562 ], [ 0x3FEE742420000000, %561 ], [ 0x3FE4D1A260000000, %560 ], [ 0x3FE36439E0000000, %559 ], [ 0x3FC56C2BE0000000, %558 ], [ 0x3FD19C3A00000000, %557 ], [ 0x3FD4B3F200000000, %556 ], [ 0x3FE382AD40000000, %555 ], [ 0x3FCC8F36A0000000, %554 ], [ 0x3FD28FD500000000, %553 ], [ 0x3FDD077E80000000, %552 ], [ 0x3FDAE361A0000000, %551 ], [ 0x3FE569E360000000, %550 ], [ 0x3FCB9B9BA0000000, %549 ], [ 0x3FE5E3B0E0000000, %548 ], [ 0x3FE6B8D880000000, %547 ], [ 0x3FD3468960000000, %546 ], [ 0x3FE457D4E0000000, %545 ], [ 0x3FE121A9A0000000, %544 ], [ 0x3FCF6A07C0000000, %566 ], [ 0x3FD3837020000000, %532 ]
  %571 = fcmp fast ole float %568, 0x3FA4B5DCC0000000
  %572 = fmul fast float %568, 0x3FB3D07220000000
  %573 = fadd fast float %568, 0x3FAC28F5C0000000
  %574 = fmul fast float %573, 0x3FEE54EDE0000000
  %575 = call float @dx.op.unary.f32(i32 23, float %574)  ; Log(value)
  %576 = call float @dx.op.unary.f32(i32 23, float %569)  ; Log(value)
  %577 = call float @dx.op.unary.f32(i32 23, float %570)  ; Log(value)
  %578 = fmul fast float %575, 0x4003333340000000
  %579 = fmul fast float %576, 0x4003333340000000
  %580 = fmul fast float %577, 0x4003333340000000
  %581 = call float @dx.op.unary.f32(i32 21, float %578)  ; Exp(value)
  %582 = call float @dx.op.unary.f32(i32 21, float %579)  ; Exp(value)
  %583 = call float @dx.op.unary.f32(i32 21, float %580)  ; Exp(value)
  %584 = select i1 %571, float %572, float %581
  %585 = call float @dx.op.unary.f32(i32 22, float %534)  ; Frc(value)
  %586 = call float @dx.op.unary.f32(i32 22, float %536)  ; Frc(value)
  %587 = fsub fast float 5.000000e-01, %585
  %588 = fsub fast float 5.000000e-01, %586
  %589 = call float @dx.op.unary.f32(i32 6, float %587)  ; FAbs(value)
  %590 = call float @dx.op.unary.f32(i32 6, float %588)  ; FAbs(value)
  %591 = fmul fast float %589, 2.000000e+00
  %592 = fmul fast float %590, 2.000000e+00
  %593 = fsub fast float 1.000000e+00, %591
  %594 = fsub fast float 1.000000e+00, %592
  %595 = fcmp fast ogt float %593, 0x3FBAAAAAA0000000
  %596 = fcmp fast ogt float %594, 0x3FBAAAAAA0000000
  %597 = select i1 %595, float 0.000000e+00, float 1.000000e+00
  %598 = select i1 %596, float 0.000000e+00, float 1.000000e+00
  %599 = call float @dx.op.binary.f32(i32 35, float %597, float %598)  ; FMax(a,b)
  %600 = fsub fast float 0x3F847AE140000000, %584
  %601 = fsub fast float 0x3F847AE140000000, %582
  %602 = fsub fast float 0x3F847AE140000000, %583
  %603 = fmul fast float %599, %600
  %604 = fmul fast float %599, %601
  %605 = fmul fast float %599, %602
  %606 = fadd fast float %603, %584
  %607 = fadd fast float %604, %582
  %608 = fadd fast float %605, %583
  br label %609

; <label>:609                                     ; preds = %567, %520, %512
  %610 = phi float [ %513, %512 ], [ %606, %567 ], [ %513, %520 ]
  %611 = phi float [ %514, %512 ], [ %607, %567 ], [ %514, %520 ]
  %612 = phi float [ %515, %512 ], [ %608, %567 ], [ %515, %520 ]
  %613 = phi float [ %516, %512 ], [ 1.000000e+00, %567 ], [ %516, %520 ]
  %614 = phi i32 [ %517, %512 ], [ 2, %567 ], [ %517, %520 ]
  %615 = and i32 %15, 128
  %616 = icmp eq i32 %615, 0
  br i1 %616, label %1166, label %617

; <label>:617                                     ; preds = %609
  %618 = fmul fast float %4, 3.750000e+00
  %619 = fadd fast float %618, -1.562500e-02
  %620 = fmul fast float %5, 2.109375e+00
  %621 = fsub fast float 0x3FFDB80000000000, %620
  %622 = fcmp fast oge float %619, 0.000000e+00
  %623 = fcmp fast oge float %621, 0.000000e+00
  %624 = and i1 %622, %623
  %625 = fcmp fast olt float %619, 1.000000e+00
  %626 = and i1 %625, %624
  %627 = fcmp fast olt float %621, 1.000000e+00
  %628 = and i1 %627, %626
  br i1 %628, label %629, label %1166

; <label>:629                                     ; preds = %617
  br label %630

; <label>:630                                     ; preds = %630, %629
  %631 = phi float [ %691, %630 ], [ 0x3FB99999A0000000, %629 ]
  %632 = phi float [ %692, %630 ], [ 0x3FB99999A0000000, %629 ]
  %633 = phi float [ %693, %630 ], [ 0x3FB99999A0000000, %629 ]
  %634 = phi float [ %694, %630 ], [ 0x3FB99999A0000000, %629 ]
  %635 = fmul fast float %634, 5.120000e+02
  %636 = fadd fast float %635, 8.000000e+00
  %637 = fsub fast float %9, %636
  %638 = fsub fast float 9.510000e+02, %10
  %639 = fcmp olt float %637, -0.000000e+00
  %640 = select i1 %639, float 1.000000e+00, float -1.000000e+00
  %641 = call float @dx.op.dot2.f32(i32 54, float 0.000000e+00, float 1.000000e+00, float %637, float %638)  ; Dot2(ax,ay,bx,by)
  %642 = call float @dx.op.binary.f32(i32 35, float %641, float 0.000000e+00)  ; FMax(a,b)
  %643 = call float @dx.op.binary.f32(i32 36, float %642, float 5.120000e+02)  ; FMin(a,b)
  %644 = fadd fast float %643, 1.280000e+02
  %645 = fsub fast float %636, %9
  %646 = fsub fast float %644, %11
  %647 = fmul fast float %645, %645
  %648 = fmul fast float %646, %646
  %649 = fadd fast float %648, %647
  %650 = call float @dx.op.unary.f32(i32 24, float %649)  ; Sqrt(value)
  %651 = fmul fast float %650, %640
  %652 = call float @dx.op.unary.f32(i32 6, float %651)  ; FAbs(value)
  %653 = fsub fast float 1.000000e+00, %652
  %654 = call float @dx.op.unary.f32(i32 7, float %653)  ; Saturate(value)
  %655 = call float @dx.op.unary.f32(i32 7, float %654)  ; Saturate(value)
  %656 = fsub fast float 0x3FE99999A0000000, %631
  %657 = fsub fast float 0x3FE99999A0000000, %632
  %658 = fsub fast float 0x3FE99999A0000000, %633
  %659 = fmul fast float %655, %656
  %660 = fmul fast float %655, %657
  %661 = fmul fast float %655, %658
  %662 = fadd fast float %659, %631
  %663 = fadd fast float %660, %632
  %664 = fadd fast float %661, %633
  %665 = fadd fast float %635, 1.280000e+02
  %666 = fadd fast float %9, -8.000000e+00
  %667 = fsub fast float %11, %665
  %668 = fcmp fast ogt float %667, 0.000000e+00
  %669 = select i1 %668, float 1.000000e+00, float -1.000000e+00
  %670 = call float @dx.op.dot2.f32(i32 54, float 1.000000e+00, float 0.000000e+00, float %666, float %667)  ; Dot2(ax,ay,bx,by)
  %671 = call float @dx.op.binary.f32(i32 35, float %670, float 0.000000e+00)  ; FMax(a,b)
  %672 = call float @dx.op.binary.f32(i32 36, float %671, float 5.120000e+02)  ; FMin(a,b)
  %673 = fadd fast float %672, 8.000000e+00
  %674 = fsub fast float %673, %9
  %675 = fsub fast float %665, %11
  %676 = fmul fast float %674, %674
  %677 = fmul fast float %675, %675
  %678 = fadd fast float %677, %676
  %679 = call float @dx.op.unary.f32(i32 24, float %678)  ; Sqrt(value)
  %680 = fmul fast float %679, %669
  %681 = call float @dx.op.unary.f32(i32 6, float %680)  ; FAbs(value)
  %682 = fsub fast float 1.000000e+00, %681
  %683 = call float @dx.op.unary.f32(i32 7, float %682)  ; Saturate(value)
  %684 = call float @dx.op.unary.f32(i32 7, float %683)  ; Saturate(value)
  %685 = fsub fast float 0x3FE99999A0000000, %662
  %686 = fsub fast float 0x3FE99999A0000000, %663
  %687 = fsub fast float 0x3FE99999A0000000, %664
  %688 = fmul fast float %684, %685
  %689 = fmul fast float %684, %686
  %690 = fmul fast float %684, %687
  %691 = fadd fast float %688, %662
  %692 = fadd fast float %689, %663
  %693 = fadd fast float %690, %664
  %694 = fadd fast float %634, 0x3FB99999A0000000
  %695 = fcmp fast ugt float %694, 1.000000e+00
  br i1 %695, label %696, label %630

; <label>:696                                     ; preds = %630
  %697 = fadd fast float %9, -8.000000e+00
  %698 = fsub fast float 9.510000e+02, %10
  %699 = fcmp fast ogt float %698, 0.000000e+00
  %700 = select i1 %699, float 1.000000e+00, float -1.000000e+00
  %701 = call float @dx.op.dot2.f32(i32 54, float 1.000000e+00, float 0.000000e+00, float %697, float %698)  ; Dot2(ax,ay,bx,by)
  %702 = call float @dx.op.binary.f32(i32 35, float %701, float 0.000000e+00)  ; FMax(a,b)
  %703 = call float @dx.op.binary.f32(i32 36, float %702, float 5.120000e+02)  ; FMin(a,b)
  %704 = fsub fast float 8.000000e+00, %9
  %705 = fadd fast float %704, %703
  %706 = fadd fast float %10, -9.510000e+02
  %707 = fmul fast float %705, %705
  %708 = fmul fast float %706, %706
  %709 = fadd fast float %707, %708
  %710 = call float @dx.op.unary.f32(i32 24, float %709)  ; Sqrt(value)
  %711 = fmul fast float %710, %700
  %712 = call float @dx.op.unary.f32(i32 6, float %711)  ; FAbs(value)
  %713 = fsub fast float 2.000000e+00, %712
  %714 = call float @dx.op.unary.f32(i32 7, float %713)  ; Saturate(value)
  %715 = call float @dx.op.unary.f32(i32 7, float %714)  ; Saturate(value)
  %716 = fsub fast float 5.000000e-01, %691
  %717 = fsub fast float 5.000000e-01, %692
  %718 = fsub fast float 5.000000e-01, %693
  %719 = fmul fast float %715, %716
  %720 = fmul fast float %715, %717
  %721 = fmul fast float %715, %718
  %722 = fadd fast float %719, %691
  %723 = fadd fast float %720, %692
  %724 = fadd fast float %721, %693
  %725 = fcmp olt float %697, -0.000000e+00
  %726 = select i1 %725, float 1.000000e+00, float -1.000000e+00
  %727 = call float @dx.op.dot2.f32(i32 54, float 0.000000e+00, float 1.000000e+00, float %697, float %698)  ; Dot2(ax,ay,bx,by)
  %728 = call float @dx.op.binary.f32(i32 35, float %727, float 0.000000e+00)  ; FMax(a,b)
  %729 = call float @dx.op.binary.f32(i32 36, float %728, float 5.120000e+02)  ; FMin(a,b)
  %730 = fadd fast float %706, %729
  %731 = fmul fast float %704, %704
  %732 = fmul fast float %730, %730
  %733 = fadd fast float %732, %731
  %734 = call float @dx.op.unary.f32(i32 24, float %733)  ; Sqrt(value)
  %735 = fmul fast float %734, %726
  %736 = call float @dx.op.unary.f32(i32 6, float %735)  ; FAbs(value)
  %737 = fsub fast float 2.000000e+00, %736
  %738 = call float @dx.op.unary.f32(i32 7, float %737)  ; Saturate(value)
  %739 = call float @dx.op.unary.f32(i32 7, float %738)  ; Saturate(value)
  %740 = fsub fast float 5.000000e-01, %722
  %741 = fsub fast float 5.000000e-01, %723
  %742 = fsub fast float 5.000000e-01, %724
  %743 = fmul fast float %739, %740
  %744 = fmul fast float %739, %741
  %745 = fmul fast float %739, %742
  %746 = fadd fast float %743, %722
  %747 = fadd fast float %744, %723
  %748 = fadd fast float %745, %724
  %749 = icmp eq i32 %8, 3
  %750 = icmp eq i32 %8, 4
  %751 = fdiv fast float 0x3FD99999A0000000, %621
  %752 = fmul fast float %751, %619
  %753 = fsub fast float 1.015625e+00, %618
  %754 = fsub fast float %753, %621
  %755 = fmul fast float %751, %754
  %756 = fmul fast float %752, 0x4009EC7340000000
  %757 = call float @dx.op.tertiary.f32(i32 46, float 0xBFF8981E80000000, float 0x3FD99999A0000000, float %756)  ; FMad(a,b,c)
  %758 = call float @dx.op.tertiary.f32(i32 46, float 0xBFDFE7F040000000, float %755, float %757)  ; FMad(a,b,c)
  %759 = fmul fast float %752, 0xBFEF043A20000000
  %760 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFE0423E0000000, float 0x3FD99999A0000000, float %759)  ; FMad(a,b,c)
  %761 = call float @dx.op.tertiary.f32(i32 46, float 0x3FA546D400000000, float %755, float %760)  ; FMad(a,b,c)
  %762 = fmul fast float %752, 0x3FAC7D4AA0000000
  %763 = call float @dx.op.tertiary.f32(i32 46, float 0xBFCA1D8540000000, float 0x3FD99999A0000000, float %762)  ; FMad(a,b,c)
  %764 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF0EA6500000000, float %755, float %763)  ; FMad(a,b,c)
  %765 = select i1 %324, float 0x4053333340000000, float 0x4050C49BA0000000
  %766 = select i1 %749, float 0x4050C49BA0000000, float %765
  %767 = select i1 %750, float 0x4053333340000000, float %766
  %768 = select i1 %324, float 0x403EB851E0000000, float 0x40378D4FE0000000
  %769 = select i1 %749, float 0x40378D4FE0000000, float %768
  %770 = select i1 %750, float 0x403EB851E0000000, float %769
  %771 = fadd fast float %767, 8.000000e+00
  %772 = fadd fast float %770, 1.280000e+02
  %773 = select i1 %324, float 0x40747AE140000000, float 0x4076A7EFA0000000
  %774 = select i1 %749, float 0x4076A7EFA0000000, float %773
  %775 = select i1 %750, float 0x4075C28F60000000, float %774
  %776 = select i1 %324, float 0x40651EB860000000, float 0x4062B020C0000000
  %777 = select i1 %749, float 0x4062B020C0000000, float %776
  %778 = select i1 %750, float 0x40647AE140000000, float %777
  %779 = fadd fast float %775, 8.000000e+00
  %780 = fadd fast float %778, 1.280000e+02
  %781 = fsub fast float %771, %779
  %782 = fsub fast float %772, %780
  %783 = fmul fast float %781, %781
  %784 = fmul fast float %782, %782
  %785 = fadd fast float %783, %784
  %786 = call float @dx.op.unary.f32(i32 24, float %785)  ; Sqrt(value)
  %787 = fcmp fast ogt float %786, 0x3F60624DE0000000
  br i1 %787, label %788, label %805

; <label>:788                                     ; preds = %696
  %789 = fdiv fast float %781, %786
  %790 = fdiv fast float %782, %786
  %791 = fsub fast float %9, %779
  %792 = fsub fast float %11, %780
  %793 = fmul fast float %789, %792
  %794 = fmul fast float %790, %791
  %795 = fsub fast float %793, %794
  %796 = fcmp fast ogt float %795, 0.000000e+00
  %797 = select i1 %796, float 1.000000e+00, float -1.000000e+00
  %798 = call float @dx.op.dot2.f32(i32 54, float %789, float %790, float %791, float %792)  ; Dot2(ax,ay,bx,by)
  %799 = call float @dx.op.binary.f32(i32 35, float %798, float 0.000000e+00)  ; FMax(a,b)
  %800 = call float @dx.op.binary.f32(i32 36, float %799, float %786)  ; FMin(a,b)
  %801 = fmul fast float %800, %789
  %802 = fmul fast float %800, %790
  %803 = fadd fast float %801, %779
  %804 = fadd fast float %802, %780
  br label %805

; <label>:805                                     ; preds = %788, %696
  %806 = phi float [ %797, %788 ], [ -1.000000e+00, %696 ]
  %807 = phi float [ %803, %788 ], [ %779, %696 ]
  %808 = phi float [ %804, %788 ], [ %780, %696 ]
  %809 = fsub fast float %807, %9
  %810 = fsub fast float %808, %11
  %811 = fmul fast float %809, %809
  %812 = fmul fast float %810, %810
  %813 = fadd fast float %812, %811
  %814 = call float @dx.op.unary.f32(i32 24, float %813)  ; Sqrt(value)
  %815 = fmul fast float %814, %806
  %816 = call float @dx.op.binary.f32(i32 35, float -1.000000e+05, float %815)  ; FMax(a,b)
  %817 = select i1 %324, float 0x4063333340000000, float 0x4055C28F60000000
  %818 = select i1 %749, float 0x4055C28F60000000, float %817
  %819 = select i1 %750, float 0x4060F5C280000000, float %818
  %820 = select i1 %324, float 0x4073333340000000, float 0x4079810620000000
  %821 = select i1 %749, float 0x4079810620000000, float %820
  %822 = select i1 %750, float 0x4076147AE0000000, float %821
  %823 = fadd fast float %819, 8.000000e+00
  %824 = fadd fast float %822, 1.280000e+02
  %825 = fsub fast float %823, %771
  %826 = fsub fast float %824, %772
  %827 = fmul fast float %825, %825
  %828 = fmul fast float %826, %826
  %829 = fadd fast float %827, %828
  %830 = call float @dx.op.unary.f32(i32 24, float %829)  ; Sqrt(value)
  %831 = fcmp fast ogt float %830, 0x3F60624DE0000000
  br i1 %831, label %832, label %849

; <label>:832                                     ; preds = %805
  %833 = fdiv fast float %825, %830
  %834 = fdiv fast float %826, %830
  %835 = fsub fast float %9, %771
  %836 = fsub fast float %11, %772
  %837 = fmul fast float %833, %836
  %838 = fmul fast float %834, %835
  %839 = fsub fast float %837, %838
  %840 = fcmp fast ogt float %839, 0.000000e+00
  %841 = select i1 %840, float 1.000000e+00, float -1.000000e+00
  %842 = call float @dx.op.dot2.f32(i32 54, float %833, float %834, float %835, float %836)  ; Dot2(ax,ay,bx,by)
  %843 = call float @dx.op.binary.f32(i32 35, float %842, float 0.000000e+00)  ; FMax(a,b)
  %844 = call float @dx.op.binary.f32(i32 36, float %843, float %830)  ; FMin(a,b)
  %845 = fmul fast float %844, %833
  %846 = fmul fast float %844, %834
  %847 = fadd fast float %845, %771
  %848 = fadd fast float %846, %772
  br label %849

; <label>:849                                     ; preds = %832, %805
  %850 = phi float [ %841, %832 ], [ -1.000000e+00, %805 ]
  %851 = phi float [ %847, %832 ], [ %771, %805 ]
  %852 = phi float [ %848, %832 ], [ %772, %805 ]
  %853 = fsub fast float %851, %9
  %854 = fsub fast float %852, %11
  %855 = fmul fast float %853, %853
  %856 = fmul fast float %854, %854
  %857 = fadd fast float %856, %855
  %858 = call float @dx.op.unary.f32(i32 24, float %857)  ; Sqrt(value)
  %859 = fmul fast float %858, %850
  %860 = call float @dx.op.binary.f32(i32 35, float %816, float %859)  ; FMax(a,b)
  %861 = fsub fast float %779, %823
  %862 = fsub fast float %780, %824
  %863 = fmul fast float %861, %861
  %864 = fmul fast float %862, %862
  %865 = fadd fast float %863, %864
  %866 = call float @dx.op.unary.f32(i32 24, float %865)  ; Sqrt(value)
  %867 = fcmp fast ogt float %866, 0x3F60624DE0000000
  br i1 %867, label %868, label %885

; <label>:868                                     ; preds = %849
  %869 = fdiv fast float %861, %866
  %870 = fdiv fast float %862, %866
  %871 = fsub fast float %9, %823
  %872 = fsub fast float %11, %824
  %873 = fmul fast float %869, %872
  %874 = fmul fast float %870, %871
  %875 = fsub fast float %873, %874
  %876 = fcmp fast ogt float %875, 0.000000e+00
  %877 = select i1 %876, float 1.000000e+00, float -1.000000e+00
  %878 = call float @dx.op.dot2.f32(i32 54, float %869, float %870, float %871, float %872)  ; Dot2(ax,ay,bx,by)
  %879 = call float @dx.op.binary.f32(i32 35, float %878, float 0.000000e+00)  ; FMax(a,b)
  %880 = call float @dx.op.binary.f32(i32 36, float %879, float %866)  ; FMin(a,b)
  %881 = fmul fast float %880, %869
  %882 = fmul fast float %880, %870
  %883 = fadd fast float %881, %823
  %884 = fadd fast float %882, %824
  br label %885

; <label>:885                                     ; preds = %868, %849
  %886 = phi float [ %877, %868 ], [ -1.000000e+00, %849 ]
  %887 = phi float [ %883, %868 ], [ %823, %849 ]
  %888 = phi float [ %884, %868 ], [ %824, %849 ]
  %889 = fsub fast float %887, %9
  %890 = fsub fast float %888, %11
  %891 = fmul fast float %889, %889
  %892 = fmul fast float %890, %890
  %893 = fadd fast float %892, %891
  %894 = call float @dx.op.unary.f32(i32 24, float %893)  ; Sqrt(value)
  %895 = fmul fast float %894, %886
  %896 = call float @dx.op.binary.f32(i32 35, float %860, float %895)  ; FMax(a,b)
  %897 = fsub fast float 0x3FB99999A0000000, %896
  %898 = call float @dx.op.unary.f32(i32 7, float %897)  ; Saturate(value)
  %899 = fmul fast float %898, 0x3FECCCCCC0000000
  br label %900

; <label>:900                                     ; preds = %942, %885
  %901 = phi float [ 0x40580B6740000000, %885 ], [ %916, %942 ]
  %902 = phi float [ 0x40604F3BA0000000, %885 ], [ %917, %942 ]
  %903 = phi i32 [ 1, %885 ], [ %956, %942 ]
  %904 = phi float [ 1.000000e+05, %885 ], [ %955, %942 ]
  %905 = phi float [ -1.000000e+05, %885 ], [ %953, %942 ]
  %906 = mul i32 %903, 2
  %907 = add i32 0, %906
  %908 = getelementptr [48 x float], [48 x float]* @standardObserver1931Outline.v.1dim, i32 0, i32 %907
  %909 = load float, float* %908, align 4
  %910 = mul i32 %903, 2
  %911 = add i32 1, %910
  %912 = getelementptr [48 x float], [48 x float]* @standardObserver1931Outline.v.1dim, i32 0, i32 %911
  %913 = load float, float* %912, align 4
  %914 = fmul fast float %909, 5.120000e+02
  %915 = fmul fast float %913, 5.120000e+02
  %916 = fadd fast float %914, 8.000000e+00
  %917 = fadd fast float %915, 1.280000e+02
  %918 = fsub fast float %916, %901
  %919 = fsub fast float %917, %902
  %920 = fmul fast float %918, %918
  %921 = fmul fast float %919, %919
  %922 = fadd fast float %921, %920
  %923 = call float @dx.op.unary.f32(i32 24, float %922)  ; Sqrt(value)
  %924 = fcmp fast ogt float %923, 0x3F60624DE0000000
  br i1 %924, label %925, label %942

; <label>:925                                     ; preds = %900
  %926 = fdiv fast float %918, %923
  %927 = fdiv fast float %919, %923
  %928 = fsub fast float %9, %901
  %929 = fsub fast float %11, %902
  %930 = fmul fast float %926, %929
  %931 = fmul fast float %927, %928
  %932 = fsub fast float %930, %931
  %933 = fcmp fast ogt float %932, 0.000000e+00
  %934 = select i1 %933, float 1.000000e+00, float -1.000000e+00
  %935 = call float @dx.op.dot2.f32(i32 54, float %926, float %927, float %928, float %929)  ; Dot2(ax,ay,bx,by)
  %936 = call float @dx.op.binary.f32(i32 35, float %935, float 0.000000e+00)  ; FMax(a,b)
  %937 = call float @dx.op.binary.f32(i32 36, float %936, float %923)  ; FMin(a,b)
  %938 = fmul fast float %937, %926
  %939 = fmul fast float %937, %927
  %940 = fadd fast float %938, %901
  %941 = fadd fast float %939, %902
  br label %942

; <label>:942                                     ; preds = %925, %900
  %943 = phi float [ %934, %925 ], [ -1.000000e+00, %900 ]
  %944 = phi float [ %940, %925 ], [ %901, %900 ]
  %945 = phi float [ %941, %925 ], [ %902, %900 ]
  %946 = fsub fast float %944, %9
  %947 = fsub fast float %945, %11
  %948 = fmul fast float %946, %946
  %949 = fmul fast float %947, %947
  %950 = fadd fast float %949, %948
  %951 = call float @dx.op.unary.f32(i32 24, float %950)  ; Sqrt(value)
  %952 = fmul fast float %951, %943
  %953 = call float @dx.op.binary.f32(i32 35, float %905, float %952)  ; FMax(a,b)
  %954 = call float @dx.op.unary.f32(i32 6, float %952)  ; FAbs(value)
  %955 = call float @dx.op.binary.f32(i32 36, float %904, float %954)  ; FMin(a,b)
  %956 = add nuw nsw i32 %903, 1
  %957 = icmp eq i32 %956, 24
  br i1 %957, label %958, label %900

; <label>:958                                     ; preds = %942
  %959 = fadd fast float %9, 0xC0781387A0000000
  %960 = fsub fast float 0x408981C3C0000000, %10
  %961 = fmul fast float %5, 0x408EB01D60000000
  %962 = fmul fast float %4, 0x4088F8D9E0000000
  %963 = fadd fast float %962, 0xC08C33F860000000
  %964 = fadd fast float %963, %961
  %965 = fcmp fast ogt float %964, 0.000000e+00
  %966 = select i1 %965, float 1.000000e+00, float -1.000000e+00
  %967 = call float @dx.op.dot2.f32(i32 54, float 0xBFED18C2C0000000, float 0xBFDAA30A80000000, float %959, float %960)  ; Dot2(ax,ay,bx,by)
  %968 = call float @dx.op.binary.f32(i32 35, float %967, float 0.000000e+00)  ; FMax(a,b)
  %969 = call float @dx.op.binary.f32(i32 36, float %968, float 0x4073DE2160000000)  ; FMin(a,b)
  %970 = fmul fast float %969, 0x3FED18C2C0000000
  %971 = fmul fast float %969, 0x3FDAA30A80000000
  %972 = fsub fast float 0x40781387A0000000, %970
  %973 = fsub fast float 0x40706C7860000000, %971
  %974 = fsub fast float %972, %9
  %975 = fsub fast float %973, %11
  %976 = fmul fast float %974, %974
  %977 = fmul fast float %975, %975
  %978 = fadd fast float %976, %977
  %979 = call float @dx.op.unary.f32(i32 24, float %978)  ; Sqrt(value)
  %980 = fmul fast float %979, %966
  %981 = call float @dx.op.binary.f32(i32 35, float %953, float %980)  ; FMax(a,b)
  %982 = fsub fast float -0.000000e+00, %981
  %983 = call float @dx.op.unary.f32(i32 7, float %982)  ; Saturate(value)
  %984 = call float @dx.op.unary.f32(i32 7, float %983)  ; Saturate(value)
  %985 = fadd fast float %899, 0x3FB99999A0000000
  %986 = fmul fast float %985, %758
  %987 = fsub fast float %986, %746
  %988 = fmul fast float %985, %761
  %989 = fsub fast float %988, %747
  %990 = fmul fast float %985, %764
  %991 = fsub fast float %990, %748
  %992 = fmul fast float %984, %987
  %993 = fmul fast float %984, %989
  %994 = fmul fast float %984, %991
  %995 = fadd fast float %992, %746
  %996 = fadd fast float %993, %747
  %997 = fadd fast float %994, %748
  %998 = fsub fast float 2.000000e+00, %955
  %999 = call float @dx.op.unary.f32(i32 7, float %998)  ; Saturate(value)
  %1000 = call float @dx.op.unary.f32(i32 7, float %999)  ; Saturate(value)
  %1001 = fsub fast float 1.000000e+00, %995
  %1002 = fsub fast float 1.000000e+00, %996
  %1003 = fsub fast float 1.000000e+00, %997
  %1004 = fmul fast float %1001, %1000
  %1005 = fmul fast float %1002, %1000
  %1006 = fmul fast float %1003, %1000
  %1007 = fadd fast float %1004, %995
  %1008 = fadd fast float %1005, %996
  %1009 = fadd fast float %1006, %997
  br i1 %787, label %1010, label %1027

; <label>:1010                                    ; preds = %958
  %1011 = fdiv fast float %781, %786
  %1012 = fdiv fast float %782, %786
  %1013 = fsub fast float %9, %779
  %1014 = fsub fast float %11, %780
  %1015 = fmul fast float %1011, %1014
  %1016 = fmul fast float %1012, %1013
  %1017 = fsub fast float %1015, %1016
  %1018 = fcmp fast ogt float %1017, 0.000000e+00
  %1019 = select i1 %1018, float 1.000000e+00, float -1.000000e+00
  %1020 = call float @dx.op.dot2.f32(i32 54, float %1011, float %1012, float %1013, float %1014)  ; Dot2(ax,ay,bx,by)
  %1021 = call float @dx.op.binary.f32(i32 35, float %1020, float 0.000000e+00)  ; FMax(a,b)
  %1022 = call float @dx.op.binary.f32(i32 36, float %1021, float %786)  ; FMin(a,b)
  %1023 = fmul fast float %1022, %1011
  %1024 = fmul fast float %1022, %1012
  %1025 = fadd fast float %1023, %779
  %1026 = fadd fast float %1024, %780
  br label %1027

; <label>:1027                                    ; preds = %1010, %958
  %1028 = phi float [ %1019, %1010 ], [ -1.000000e+00, %958 ]
  %1029 = phi float [ %1025, %1010 ], [ %779, %958 ]
  %1030 = phi float [ %1026, %1010 ], [ %780, %958 ]
  %1031 = fsub fast float %1029, %9
  %1032 = fsub fast float %1030, %11
  %1033 = fmul fast float %1031, %1031
  %1034 = fmul fast float %1032, %1032
  %1035 = fadd fast float %1034, %1033
  %1036 = call float @dx.op.unary.f32(i32 24, float %1035)  ; Sqrt(value)
  %1037 = fmul fast float %1036, %1028
  %1038 = call float @dx.op.unary.f32(i32 6, float %1037)  ; FAbs(value)
  %1039 = call float @dx.op.binary.f32(i32 36, float 1.000000e+05, float %1038)  ; FMin(a,b)
  br i1 %831, label %1040, label %1057

; <label>:1040                                    ; preds = %1027
  %1041 = fdiv fast float %825, %830
  %1042 = fdiv fast float %826, %830
  %1043 = fsub fast float %9, %771
  %1044 = fsub fast float %11, %772
  %1045 = fmul fast float %1041, %1044
  %1046 = fmul fast float %1042, %1043
  %1047 = fsub fast float %1045, %1046
  %1048 = fcmp fast ogt float %1047, 0.000000e+00
  %1049 = select i1 %1048, float 1.000000e+00, float -1.000000e+00
  %1050 = call float @dx.op.dot2.f32(i32 54, float %1041, float %1042, float %1043, float %1044)  ; Dot2(ax,ay,bx,by)
  %1051 = call float @dx.op.binary.f32(i32 35, float %1050, float 0.000000e+00)  ; FMax(a,b)
  %1052 = call float @dx.op.binary.f32(i32 36, float %1051, float %830)  ; FMin(a,b)
  %1053 = fmul fast float %1052, %1041
  %1054 = fmul fast float %1052, %1042
  %1055 = fadd fast float %1053, %771
  %1056 = fadd fast float %1054, %772
  br label %1057

; <label>:1057                                    ; preds = %1040, %1027
  %1058 = phi float [ %1049, %1040 ], [ -1.000000e+00, %1027 ]
  %1059 = phi float [ %1055, %1040 ], [ %771, %1027 ]
  %1060 = phi float [ %1056, %1040 ], [ %772, %1027 ]
  %1061 = fsub fast float %1059, %9
  %1062 = fsub fast float %1060, %11
  %1063 = fmul fast float %1061, %1061
  %1064 = fmul fast float %1062, %1062
  %1065 = fadd fast float %1064, %1063
  %1066 = call float @dx.op.unary.f32(i32 24, float %1065)  ; Sqrt(value)
  %1067 = fmul fast float %1066, %1058
  %1068 = call float @dx.op.unary.f32(i32 6, float %1067)  ; FAbs(value)
  %1069 = call float @dx.op.binary.f32(i32 36, float %1039, float %1068)  ; FMin(a,b)
  br i1 %867, label %1070, label %1087

; <label>:1070                                    ; preds = %1057
  %1071 = fdiv fast float %861, %866
  %1072 = fdiv fast float %862, %866
  %1073 = fsub fast float %9, %823
  %1074 = fsub fast float %11, %824
  %1075 = fmul fast float %1071, %1074
  %1076 = fmul fast float %1072, %1073
  %1077 = fsub fast float %1075, %1076
  %1078 = fcmp fast ogt float %1077, 0.000000e+00
  %1079 = select i1 %1078, float 1.000000e+00, float -1.000000e+00
  %1080 = call float @dx.op.dot2.f32(i32 54, float %1071, float %1072, float %1073, float %1074)  ; Dot2(ax,ay,bx,by)
  %1081 = call float @dx.op.binary.f32(i32 35, float %1080, float 0.000000e+00)  ; FMax(a,b)
  %1082 = call float @dx.op.binary.f32(i32 36, float %1081, float %866)  ; FMin(a,b)
  %1083 = fmul fast float %1082, %1071
  %1084 = fmul fast float %1082, %1072
  %1085 = fadd fast float %1083, %823
  %1086 = fadd fast float %1084, %824
  br label %1087

; <label>:1087                                    ; preds = %1070, %1057
  %1088 = phi float [ %1079, %1070 ], [ -1.000000e+00, %1057 ]
  %1089 = phi float [ %1085, %1070 ], [ %823, %1057 ]
  %1090 = phi float [ %1086, %1070 ], [ %824, %1057 ]
  %1091 = fsub fast float %1089, %9
  %1092 = fsub fast float %1090, %11
  %1093 = fmul fast float %1091, %1091
  %1094 = fmul fast float %1092, %1092
  %1095 = fadd fast float %1094, %1093
  %1096 = call float @dx.op.unary.f32(i32 24, float %1095)  ; Sqrt(value)
  %1097 = fmul fast float %1096, %1088
  %1098 = call float @dx.op.unary.f32(i32 6, float %1097)  ; FAbs(value)
  %1099 = call float @dx.op.binary.f32(i32 36, float %1069, float %1098)  ; FMin(a,b)
  %1100 = fsub fast float 1.500000e+00, %1099
  %1101 = call float @dx.op.unary.f32(i32 7, float %1100)  ; Saturate(value)
  %1102 = call float @dx.op.unary.f32(i32 7, float %1101)  ; Saturate(value)
  %1103 = fmul fast float %1102, %1007
  %1104 = fmul fast float %1102, %1008
  %1105 = fmul fast float %1102, %1009
  %1106 = fsub fast float %1007, %1103
  %1107 = fsub fast float %1008, %1104
  %1108 = fsub fast float %1009, %1105
  %1109 = fsub fast float %697, %775
  %1110 = fsub fast float %698, %778
  %1111 = fmul fast float %1109, %1109
  %1112 = fmul fast float %1110, %1110
  %1113 = fadd fast float %1111, %1112
  %1114 = call float @dx.op.unary.f32(i32 24, float %1113)  ; Sqrt(value)
  %1115 = fsub fast float 5.000000e+00, %1114
  %1116 = call float @dx.op.unary.f32(i32 7, float %1115)  ; Saturate(value)
  %1117 = call float @dx.op.unary.f32(i32 7, float %1116)  ; Saturate(value)
  %1118 = fsub fast float 6.500000e+00, %1114
  %1119 = call float @dx.op.unary.f32(i32 7, float %1118)  ; Saturate(value)
  %1120 = call float @dx.op.unary.f32(i32 7, float %1119)  ; Saturate(value)
  %1121 = fsub fast float %1117, %1106
  %1122 = fmul fast float %1120, %1121
  %1123 = fmul fast float %1120, %1107
  %1124 = fmul fast float %1120, %1108
  %1125 = fadd fast float %1122, %1106
  %1126 = fsub fast float %1107, %1123
  %1127 = fsub fast float %1108, %1124
  %1128 = fsub fast float %697, %819
  %1129 = fsub fast float %698, %822
  %1130 = fmul fast float %1128, %1128
  %1131 = fmul fast float %1129, %1129
  %1132 = fadd fast float %1130, %1131
  %1133 = call float @dx.op.unary.f32(i32 24, float %1132)  ; Sqrt(value)
  %1134 = fsub fast float 5.000000e+00, %1133
  %1135 = call float @dx.op.unary.f32(i32 7, float %1134)  ; Saturate(value)
  %1136 = call float @dx.op.unary.f32(i32 7, float %1135)  ; Saturate(value)
  %1137 = fsub fast float 6.500000e+00, %1133
  %1138 = call float @dx.op.unary.f32(i32 7, float %1137)  ; Saturate(value)
  %1139 = call float @dx.op.unary.f32(i32 7, float %1138)  ; Saturate(value)
  %1140 = fsub fast float %1136, %1126
  %1141 = fmul fast float %1139, %1125
  %1142 = fmul fast float %1139, %1140
  %1143 = fmul fast float %1139, %1127
  %1144 = fsub fast float %1125, %1141
  %1145 = fadd fast float %1142, %1126
  %1146 = fsub fast float %1127, %1143
  %1147 = fsub fast float %697, %767
  %1148 = fsub fast float %698, %770
  %1149 = fmul fast float %1147, %1147
  %1150 = fmul fast float %1148, %1148
  %1151 = fadd fast float %1149, %1150
  %1152 = call float @dx.op.unary.f32(i32 24, float %1151)  ; Sqrt(value)
  %1153 = fsub fast float 5.000000e+00, %1152
  %1154 = call float @dx.op.unary.f32(i32 7, float %1153)  ; Saturate(value)
  %1155 = call float @dx.op.unary.f32(i32 7, float %1154)  ; Saturate(value)
  %1156 = fsub fast float 6.500000e+00, %1152
  %1157 = call float @dx.op.unary.f32(i32 7, float %1156)  ; Saturate(value)
  %1158 = call float @dx.op.unary.f32(i32 7, float %1157)  ; Saturate(value)
  %1159 = fsub fast float %1155, %1146
  %1160 = fmul fast float %1158, %1144
  %1161 = fmul fast float %1158, %1145
  %1162 = fmul fast float %1158, %1159
  %1163 = fsub fast float %1144, %1160
  %1164 = fsub fast float %1145, %1161
  %1165 = fadd fast float %1162, %1146
  br label %1166

; <label>:1166                                    ; preds = %1087, %617, %609
  %1167 = phi float [ %610, %609 ], [ %1163, %1087 ], [ %610, %617 ]
  %1168 = phi float [ %611, %609 ], [ %1164, %1087 ], [ %611, %617 ]
  %1169 = phi float [ %612, %609 ], [ %1165, %1087 ], [ %612, %617 ]
  %1170 = phi float [ %613, %609 ], [ 1.000000e+00, %1087 ], [ %613, %617 ]
  %1171 = phi i32 [ %614, %609 ], [ 2, %1087 ], [ %614, %617 ]
  %1172 = icmp eq i32 %1171, 2
  br i1 %1172, label %1173, label %1177

; <label>:1173                                    ; preds = %1166
  %1174 = fmul fast float %1167, 6.000000e+00
  %1175 = fmul fast float %1168, 6.000000e+00
  %1176 = fmul fast float %1169, 6.000000e+00
  br label %1177

; <label>:1177                                    ; preds = %1173, %1166
  %1178 = phi float [ %1174, %1173 ], [ %1167, %1166 ]
  %1179 = phi float [ %1175, %1173 ], [ %1168, %1166 ]
  %1180 = phi float [ %1176, %1173 ], [ %1169, %1166 ]
  %1181 = phi i32 [ 1, %1173 ], [ %1171, %1166 ]
  %1182 = icmp eq i32 %1181, 1
  br i1 %1182, label %1183, label %1217

; <label>:1183                                    ; preds = %1177
  %1184 = fadd fast float %1178, 9.765625e-04
  %1185 = fadd fast float %1179, 9.765625e-04
  %1186 = fadd fast float %1180, 9.765625e-04
  %1187 = call float @dx.op.unary.f32(i32 23, float %1184)  ; Log(value)
  %1188 = call float @dx.op.unary.f32(i32 23, float %1185)  ; Log(value)
  %1189 = call float @dx.op.unary.f32(i32 23, float %1186)  ; Log(value)
  %1190 = fadd fast float %1187, 1.000000e+01
  %1191 = fadd fast float %1188, 1.000000e+01
  %1192 = fadd fast float %1189, 1.000000e+01
  %1193 = fmul fast float %1190, 0x3FA99999A0000000
  %1194 = fmul fast float %1191, 0x3FA99999A0000000
  %1195 = fmul fast float %1192, 0x3FA99999A0000000
  %1196 = call float @dx.op.unary.f32(i32 7, float %1193)  ; Saturate(value)
  %1197 = call float @dx.op.unary.f32(i32 7, float %1194)  ; Saturate(value)
  %1198 = call float @dx.op.unary.f32(i32 7, float %1195)  ; Saturate(value)
  %1199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1200 = extractvalue %dx.types.CBufRet.f32 %1199, 0
  %1201 = extractvalue %dx.types.CBufRet.f32 %1199, 1
  %1202 = extractvalue %dx.types.CBufRet.f32 %1199, 2
  %1203 = fmul fast float %1200, %1196
  %1204 = fmul fast float %1201, %1197
  %1205 = fmul fast float %1202, %1198
  %1206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %1207 = extractvalue %dx.types.CBufRet.f32 %1206, 0
  %1208 = extractvalue %dx.types.CBufRet.f32 %1206, 1
  %1209 = extractvalue %dx.types.CBufRet.f32 %1206, 2
  %1210 = fadd fast float %1203, %1207
  %1211 = fadd fast float %1204, %1208
  %1212 = fadd fast float %1205, %1209
  %1213 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %1210, float %1211, float %1212, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1214 = extractvalue %dx.types.ResRet.f32 %1213, 0
  %1215 = extractvalue %dx.types.ResRet.f32 %1213, 1
  %1216 = extractvalue %dx.types.ResRet.f32 %1213, 2
  br label %1217

; <label>:1217                                    ; preds = %1183, %1177
  %1218 = phi float [ %1214, %1183 ], [ %1178, %1177 ]
  %1219 = phi float [ %1215, %1183 ], [ %1179, %1177 ]
  %1220 = phi float [ %1216, %1183 ], [ %1180, %1177 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1218)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1219)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1220)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1170)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!12}
!dx.entryPoints = !{!13}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !8, !10}
!5 = !{!6}
!6 = !{i32 0, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 74, i32 1, i32 4, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{!9}
!9 = !{i32 0, %perObject* undef, !"", i32 0, i32 1, i32 1, i32 80, null}
!10 = !{!11}
!11 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!12 = !{[8 x i32] [i32 6, i32 4, i32 0, i32 0, i32 0, i32 0, i32 15, i32 15]}
!13 = !{void ()* @ps_main, !"ps_main", !14, !4, null}
!14 = !{!15, !20, null}
!15 = !{!16, !18}
!16 = !{i32 0, !"SV_Position", i8 9, i8 3, !17, i8 4, i32 1, i8 4, i32 0, i8 0, null}
!17 = !{i32 0}
!18 = !{i32 1, !"TEXCOORD", i8 9, i8 0, !17, i8 2, i32 1, i8 2, i32 1, i8 0, !19}
!19 = !{i32 3, i32 3}
!20 = !{!21}
!21 = !{i32 0, !"SV_Target", i8 9, i8 16, !17, i8 0, i32 1, i8 4, i32 0, i8 0, !22}
!22 = !{i32 3, i32 15}

