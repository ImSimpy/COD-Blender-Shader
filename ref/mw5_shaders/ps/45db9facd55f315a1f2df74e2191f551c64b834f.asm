;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float       
; TEXCOORDS                0   xy          1     NONE   float   xy  
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: cbd28b8c1f1d56873eafa0ca35ff9b5a
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
; TEXCOORDS                0                 linear       
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
;   [112 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb2     1
;                                   sampler      NA          NA      S0             s1     1
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
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %5 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %6 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7 = extractvalue %dx.types.CBufRet.f32 %6, 2
  %8 = extractvalue %dx.types.CBufRet.f32 %6, 3
  %9 = fmul fast float %7, 2.000000e+00
  %10 = fmul fast float %8, 2.000000e+00
  %11 = fsub fast float %4, %9
  %12 = fsub fast float %5, %10
  %13 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1, %dx.types.Handle %2, float %11, float %12, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %14 = extractvalue %dx.types.ResRet.f32 %13, 0
  %15 = extractvalue %dx.types.ResRet.f32 %13, 1
  %16 = extractvalue %dx.types.ResRet.f32 %13, 3
  %17 = fmul fast float %15, 0x4054142860000000
  %18 = fadd fast float %17, -4.000000e+01
  %19 = call float @dx.op.unary.f32(i32 6, float %18)  ; FAbs(value)
  %20 = fcmp fast olt float %19, 0.000000e+00
  %21 = select i1 %20, float 0x3FDFDFDFE0000000, float %14
  %22 = select i1 %20, float 0x3FDFDFDFE0000000, float %15
  %23 = fmul fast float %16, 0x4054142860000000
  %24 = fadd fast float %23, -4.000000e+01
  %25 = call float @dx.op.unary.f32(i32 6, float %24)  ; FAbs(value)
  %26 = fcmp fast ogt float %25, 4.000000e+01
  %27 = select i1 %26, float 0x3FEFDFDFC0000000, float %16
  %28 = fsub fast float %4, %7
  %29 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1, %dx.types.Handle %2, float %28, float %12, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %30 = extractvalue %dx.types.ResRet.f32 %29, 0
  %31 = extractvalue %dx.types.ResRet.f32 %29, 1
  %32 = extractvalue %dx.types.ResRet.f32 %29, 3
  %33 = fmul fast float %22, 0x4054142860000000
  %34 = fadd fast float %33, -4.000000e+01
  %35 = call float @dx.op.unary.f32(i32 6, float %34)  ; FAbs(value)
  %36 = fmul fast float %31, 0x4054142860000000
  %37 = fadd fast float %36, -4.000000e+01
  %38 = call float @dx.op.unary.f32(i32 6, float %37)  ; FAbs(value)
  %39 = fcmp fast ogt float %35, %38
  %40 = select i1 %39, float %21, float %30
  %41 = select i1 %39, float %22, float %31
  %42 = fmul fast float %27, 0x4054142860000000
  %43 = fadd fast float %42, -4.000000e+01
  %44 = call float @dx.op.unary.f32(i32 6, float %43)  ; FAbs(value)
  %45 = fmul fast float %32, 0x4054142860000000
  %46 = fadd fast float %45, -4.000000e+01
  %47 = call float @dx.op.unary.f32(i32 6, float %46)  ; FAbs(value)
  %48 = fcmp fast olt float %44, %47
  %49 = select i1 %48, float %27, float %32
  %50 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1, %dx.types.Handle %2, float %4, float %12, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %51 = extractvalue %dx.types.ResRet.f32 %50, 0
  %52 = extractvalue %dx.types.ResRet.f32 %50, 1
  %53 = extractvalue %dx.types.ResRet.f32 %50, 3
  %54 = fmul fast float %41, 0x4054142860000000
  %55 = fadd fast float %54, -4.000000e+01
  %56 = call float @dx.op.unary.f32(i32 6, float %55)  ; FAbs(value)
  %57 = fmul fast float %52, 0x4054142860000000
  %58 = fadd fast float %57, -4.000000e+01
  %59 = call float @dx.op.unary.f32(i32 6, float %58)  ; FAbs(value)
  %60 = fcmp fast ogt float %56, %59
  %61 = select i1 %60, float %40, float %51
  %62 = select i1 %60, float %41, float %52
  %63 = fmul fast float %49, 0x4054142860000000
  %64 = fadd fast float %63, -4.000000e+01
  %65 = call float @dx.op.unary.f32(i32 6, float %64)  ; FAbs(value)
  %66 = fmul fast float %53, 0x4054142860000000
  %67 = fadd fast float %66, -4.000000e+01
  %68 = call float @dx.op.unary.f32(i32 6, float %67)  ; FAbs(value)
  %69 = fcmp fast olt float %65, %68
  %70 = select i1 %69, float %49, float %53
  %71 = fadd fast float %7, %4
  %72 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1, %dx.types.Handle %2, float %71, float %12, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %73 = extractvalue %dx.types.ResRet.f32 %72, 0
  %74 = extractvalue %dx.types.ResRet.f32 %72, 1
  %75 = extractvalue %dx.types.ResRet.f32 %72, 3
  %76 = fmul fast float %62, 0x4054142860000000
  %77 = fadd fast float %76, -4.000000e+01
  %78 = call float @dx.op.unary.f32(i32 6, float %77)  ; FAbs(value)
  %79 = fmul fast float %74, 0x4054142860000000
  %80 = fadd fast float %79, -4.000000e+01
  %81 = call float @dx.op.unary.f32(i32 6, float %80)  ; FAbs(value)
  %82 = fcmp fast ogt float %78, %81
  %83 = select i1 %82, float %61, float %73
  %84 = select i1 %82, float %62, float %74
  %85 = fmul fast float %70, 0x4054142860000000
  %86 = fadd fast float %85, -4.000000e+01
  %87 = call float @dx.op.unary.f32(i32 6, float %86)  ; FAbs(value)
  %88 = fmul fast float %75, 0x4054142860000000
  %89 = fadd fast float %88, -4.000000e+01
  %90 = call float @dx.op.unary.f32(i32 6, float %89)  ; FAbs(value)
  %91 = fcmp fast olt float %87, %90
  %92 = select i1 %91, float %70, float %75
  %93 = fadd fast float %9, %4
  %94 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1, %dx.types.Handle %2, float %93, float %12, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %95 = extractvalue %dx.types.ResRet.f32 %94, 0
  %96 = extractvalue %dx.types.ResRet.f32 %94, 1
  %97 = extractvalue %dx.types.ResRet.f32 %94, 3
  %98 = fmul fast float %84, 0x4054142860000000
  %99 = fadd fast float %98, -4.000000e+01
  %100 = call float @dx.op.unary.f32(i32 6, float %99)  ; FAbs(value)
  %101 = fmul fast float %96, 0x4054142860000000
  %102 = fadd fast float %101, -4.000000e+01
  %103 = call float @dx.op.unary.f32(i32 6, float %102)  ; FAbs(value)
  %104 = fcmp fast ogt float %100, %103
  %105 = select i1 %104, float %83, float %95
  %106 = select i1 %104, float %84, float %96
  %107 = fmul fast float %92, 0x4054142860000000
  %108 = fadd fast float %107, -4.000000e+01
  %109 = call float @dx.op.unary.f32(i32 6, float %108)  ; FAbs(value)
  %110 = fmul fast float %97, 0x4054142860000000
  %111 = fadd fast float %110, -4.000000e+01
  %112 = call float @dx.op.unary.f32(i32 6, float %111)  ; FAbs(value)
  %113 = fcmp fast olt float %109, %112
  %114 = select i1 %113, float %92, float %97
  %115 = fsub fast float %5, %8
  %116 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1, %dx.types.Handle %2, float %11, float %115, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %117 = extractvalue %dx.types.ResRet.f32 %116, 0
  %118 = extractvalue %dx.types.ResRet.f32 %116, 1
  %119 = extractvalue %dx.types.ResRet.f32 %116, 3
  %120 = fmul fast float %106, 0x4054142860000000
  %121 = fadd fast float %120, -4.000000e+01
  %122 = call float @dx.op.unary.f32(i32 6, float %121)  ; FAbs(value)
  %123 = fmul fast float %118, 0x4054142860000000
  %124 = fadd fast float %123, -4.000000e+01
  %125 = call float @dx.op.unary.f32(i32 6, float %124)  ; FAbs(value)
  %126 = fcmp fast ogt float %122, %125
  %127 = select i1 %126, float %105, float %117
  %128 = select i1 %126, float %106, float %118
  %129 = fmul fast float %114, 0x4054142860000000
  %130 = fadd fast float %129, -4.000000e+01
  %131 = call float @dx.op.unary.f32(i32 6, float %130)  ; FAbs(value)
  %132 = fmul fast float %119, 0x4054142860000000
  %133 = fadd fast float %132, -4.000000e+01
  %134 = call float @dx.op.unary.f32(i32 6, float %133)  ; FAbs(value)
  %135 = fcmp fast olt float %131, %134
  %136 = select i1 %135, float %114, float %119
  %137 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1, %dx.types.Handle %2, float %28, float %115, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %138 = extractvalue %dx.types.ResRet.f32 %137, 0
  %139 = extractvalue %dx.types.ResRet.f32 %137, 1
  %140 = extractvalue %dx.types.ResRet.f32 %137, 3
  %141 = fmul fast float %128, 0x4054142860000000
  %142 = fadd fast float %141, -4.000000e+01
  %143 = call float @dx.op.unary.f32(i32 6, float %142)  ; FAbs(value)
  %144 = fmul fast float %139, 0x4054142860000000
  %145 = fadd fast float %144, -4.000000e+01
  %146 = call float @dx.op.unary.f32(i32 6, float %145)  ; FAbs(value)
  %147 = fcmp fast ogt float %143, %146
  %148 = select i1 %147, float %127, float %138
  %149 = select i1 %147, float %128, float %139
  %150 = fmul fast float %136, 0x4054142860000000
  %151 = fadd fast float %150, -4.000000e+01
  %152 = call float @dx.op.unary.f32(i32 6, float %151)  ; FAbs(value)
  %153 = fmul fast float %140, 0x4054142860000000
  %154 = fadd fast float %153, -4.000000e+01
  %155 = call float @dx.op.unary.f32(i32 6, float %154)  ; FAbs(value)
  %156 = fcmp fast olt float %152, %155
  %157 = select i1 %156, float %136, float %140
  %158 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1, %dx.types.Handle %2, float %4, float %115, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %159 = extractvalue %dx.types.ResRet.f32 %158, 0
  %160 = extractvalue %dx.types.ResRet.f32 %158, 1
  %161 = extractvalue %dx.types.ResRet.f32 %158, 3
  %162 = fmul fast float %149, 0x4054142860000000
  %163 = fadd fast float %162, -4.000000e+01
  %164 = call float @dx.op.unary.f32(i32 6, float %163)  ; FAbs(value)
  %165 = fmul fast float %160, 0x4054142860000000
  %166 = fadd fast float %165, -4.000000e+01
  %167 = call float @dx.op.unary.f32(i32 6, float %166)  ; FAbs(value)
  %168 = fcmp fast ogt float %164, %167
  %169 = select i1 %168, float %148, float %159
  %170 = select i1 %168, float %149, float %160
  %171 = fmul fast float %157, 0x4054142860000000
  %172 = fadd fast float %171, -4.000000e+01
  %173 = call float @dx.op.unary.f32(i32 6, float %172)  ; FAbs(value)
  %174 = fmul fast float %161, 0x4054142860000000
  %175 = fadd fast float %174, -4.000000e+01
  %176 = call float @dx.op.unary.f32(i32 6, float %175)  ; FAbs(value)
  %177 = fcmp fast olt float %173, %176
  %178 = select i1 %177, float %157, float %161
  %179 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1, %dx.types.Handle %2, float %71, float %115, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %180 = extractvalue %dx.types.ResRet.f32 %179, 0
  %181 = extractvalue %dx.types.ResRet.f32 %179, 1
  %182 = extractvalue %dx.types.ResRet.f32 %179, 3
  %183 = fmul fast float %170, 0x4054142860000000
  %184 = fadd fast float %183, -4.000000e+01
  %185 = call float @dx.op.unary.f32(i32 6, float %184)  ; FAbs(value)
  %186 = fmul fast float %181, 0x4054142860000000
  %187 = fadd fast float %186, -4.000000e+01
  %188 = call float @dx.op.unary.f32(i32 6, float %187)  ; FAbs(value)
  %189 = fcmp fast ogt float %185, %188
  %190 = select i1 %189, float %169, float %180
  %191 = select i1 %189, float %170, float %181
  %192 = fmul fast float %178, 0x4054142860000000
  %193 = fadd fast float %192, -4.000000e+01
  %194 = call float @dx.op.unary.f32(i32 6, float %193)  ; FAbs(value)
  %195 = fmul fast float %182, 0x4054142860000000
  %196 = fadd fast float %195, -4.000000e+01
  %197 = call float @dx.op.unary.f32(i32 6, float %196)  ; FAbs(value)
  %198 = fcmp fast olt float %194, %197
  %199 = select i1 %198, float %178, float %182
  %200 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1, %dx.types.Handle %2, float %93, float %115, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %201 = extractvalue %dx.types.ResRet.f32 %200, 0
  %202 = extractvalue %dx.types.ResRet.f32 %200, 1
  %203 = extractvalue %dx.types.ResRet.f32 %200, 3
  %204 = fmul fast float %191, 0x4054142860000000
  %205 = fadd fast float %204, -4.000000e+01
  %206 = call float @dx.op.unary.f32(i32 6, float %205)  ; FAbs(value)
  %207 = fmul fast float %202, 0x4054142860000000
  %208 = fadd fast float %207, -4.000000e+01
  %209 = call float @dx.op.unary.f32(i32 6, float %208)  ; FAbs(value)
  %210 = fcmp fast ogt float %206, %209
  %211 = select i1 %210, float %190, float %201
  %212 = select i1 %210, float %191, float %202
  %213 = fmul fast float %199, 0x4054142860000000
  %214 = fadd fast float %213, -4.000000e+01
  %215 = call float @dx.op.unary.f32(i32 6, float %214)  ; FAbs(value)
  %216 = fmul fast float %203, 0x4054142860000000
  %217 = fadd fast float %216, -4.000000e+01
  %218 = call float @dx.op.unary.f32(i32 6, float %217)  ; FAbs(value)
  %219 = fcmp fast olt float %215, %218
  %220 = select i1 %219, float %199, float %203
  %221 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1, %dx.types.Handle %2, float %11, float %5, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %222 = extractvalue %dx.types.ResRet.f32 %221, 0
  %223 = extractvalue %dx.types.ResRet.f32 %221, 1
  %224 = extractvalue %dx.types.ResRet.f32 %221, 3
  %225 = fmul fast float %212, 0x4054142860000000
  %226 = fadd fast float %225, -4.000000e+01
  %227 = call float @dx.op.unary.f32(i32 6, float %226)  ; FAbs(value)
  %228 = fmul fast float %223, 0x4054142860000000
  %229 = fadd fast float %228, -4.000000e+01
  %230 = call float @dx.op.unary.f32(i32 6, float %229)  ; FAbs(value)
  %231 = fcmp fast ogt float %227, %230
  %232 = select i1 %231, float %211, float %222
  %233 = select i1 %231, float %212, float %223
  %234 = fmul fast float %220, 0x4054142860000000
  %235 = fadd fast float %234, -4.000000e+01
  %236 = call float @dx.op.unary.f32(i32 6, float %235)  ; FAbs(value)
  %237 = fmul fast float %224, 0x4054142860000000
  %238 = fadd fast float %237, -4.000000e+01
  %239 = call float @dx.op.unary.f32(i32 6, float %238)  ; FAbs(value)
  %240 = fcmp fast olt float %236, %239
  %241 = select i1 %240, float %220, float %224
  %242 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1, %dx.types.Handle %2, float %28, float %5, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %243 = extractvalue %dx.types.ResRet.f32 %242, 0
  %244 = extractvalue %dx.types.ResRet.f32 %242, 1
  %245 = extractvalue %dx.types.ResRet.f32 %242, 3
  %246 = fmul fast float %233, 0x4054142860000000
  %247 = fadd fast float %246, -4.000000e+01
  %248 = call float @dx.op.unary.f32(i32 6, float %247)  ; FAbs(value)
  %249 = fmul fast float %244, 0x4054142860000000
  %250 = fadd fast float %249, -4.000000e+01
  %251 = call float @dx.op.unary.f32(i32 6, float %250)  ; FAbs(value)
  %252 = fcmp fast ogt float %248, %251
  %253 = select i1 %252, float %232, float %243
  %254 = select i1 %252, float %233, float %244
  %255 = fmul fast float %241, 0x4054142860000000
  %256 = fadd fast float %255, -4.000000e+01
  %257 = call float @dx.op.unary.f32(i32 6, float %256)  ; FAbs(value)
  %258 = fmul fast float %245, 0x4054142860000000
  %259 = fadd fast float %258, -4.000000e+01
  %260 = call float @dx.op.unary.f32(i32 6, float %259)  ; FAbs(value)
  %261 = fcmp fast olt float %257, %260
  %262 = select i1 %261, float %241, float %245
  %263 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1, %dx.types.Handle %2, float %4, float %5, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %264 = extractvalue %dx.types.ResRet.f32 %263, 0
  %265 = extractvalue %dx.types.ResRet.f32 %263, 1
  %266 = extractvalue %dx.types.ResRet.f32 %263, 3
  %267 = fmul fast float %254, 0x4054142860000000
  %268 = fadd fast float %267, -4.000000e+01
  %269 = call float @dx.op.unary.f32(i32 6, float %268)  ; FAbs(value)
  %270 = fmul fast float %265, 0x4054142860000000
  %271 = fadd fast float %270, -4.000000e+01
  %272 = call float @dx.op.unary.f32(i32 6, float %271)  ; FAbs(value)
  %273 = fcmp fast ogt float %269, %272
  %274 = select i1 %273, float %253, float %264
  %275 = select i1 %273, float %254, float %265
  %276 = fmul fast float %262, 0x4054142860000000
  %277 = fadd fast float %276, -4.000000e+01
  %278 = call float @dx.op.unary.f32(i32 6, float %277)  ; FAbs(value)
  %279 = fmul fast float %266, 0x4054142860000000
  %280 = fadd fast float %279, -4.000000e+01
  %281 = call float @dx.op.unary.f32(i32 6, float %280)  ; FAbs(value)
  %282 = fcmp fast olt float %278, %281
  %283 = select i1 %282, float %262, float %266
  %284 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1, %dx.types.Handle %2, float %71, float %5, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %285 = extractvalue %dx.types.ResRet.f32 %284, 0
  %286 = extractvalue %dx.types.ResRet.f32 %284, 1
  %287 = extractvalue %dx.types.ResRet.f32 %284, 3
  %288 = fmul fast float %275, 0x4054142860000000
  %289 = fadd fast float %288, -4.000000e+01
  %290 = call float @dx.op.unary.f32(i32 6, float %289)  ; FAbs(value)
  %291 = fmul fast float %286, 0x4054142860000000
  %292 = fadd fast float %291, -4.000000e+01
  %293 = call float @dx.op.unary.f32(i32 6, float %292)  ; FAbs(value)
  %294 = fcmp fast ogt float %290, %293
  %295 = select i1 %294, float %274, float %285
  %296 = select i1 %294, float %275, float %286
  %297 = fmul fast float %283, 0x4054142860000000
  %298 = fadd fast float %297, -4.000000e+01
  %299 = call float @dx.op.unary.f32(i32 6, float %298)  ; FAbs(value)
  %300 = fmul fast float %287, 0x4054142860000000
  %301 = fadd fast float %300, -4.000000e+01
  %302 = call float @dx.op.unary.f32(i32 6, float %301)  ; FAbs(value)
  %303 = fcmp fast olt float %299, %302
  %304 = select i1 %303, float %283, float %287
  %305 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1, %dx.types.Handle %2, float %93, float %5, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %306 = extractvalue %dx.types.ResRet.f32 %305, 0
  %307 = extractvalue %dx.types.ResRet.f32 %305, 1
  %308 = extractvalue %dx.types.ResRet.f32 %305, 3
  %309 = fmul fast float %296, 0x4054142860000000
  %310 = fadd fast float %309, -4.000000e+01
  %311 = call float @dx.op.unary.f32(i32 6, float %310)  ; FAbs(value)
  %312 = fmul fast float %307, 0x4054142860000000
  %313 = fadd fast float %312, -4.000000e+01
  %314 = call float @dx.op.unary.f32(i32 6, float %313)  ; FAbs(value)
  %315 = fcmp fast ogt float %311, %314
  %316 = select i1 %315, float %295, float %306
  %317 = select i1 %315, float %296, float %307
  %318 = fmul fast float %304, 0x4054142860000000
  %319 = fadd fast float %318, -4.000000e+01
  %320 = call float @dx.op.unary.f32(i32 6, float %319)  ; FAbs(value)
  %321 = fmul fast float %308, 0x4054142860000000
  %322 = fadd fast float %321, -4.000000e+01
  %323 = call float @dx.op.unary.f32(i32 6, float %322)  ; FAbs(value)
  %324 = fcmp fast olt float %320, %323
  %325 = select i1 %324, float %304, float %308
  %326 = fadd fast float %8, %5
  %327 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1, %dx.types.Handle %2, float %11, float %326, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %328 = extractvalue %dx.types.ResRet.f32 %327, 0
  %329 = extractvalue %dx.types.ResRet.f32 %327, 1
  %330 = extractvalue %dx.types.ResRet.f32 %327, 3
  %331 = fmul fast float %317, 0x4054142860000000
  %332 = fadd fast float %331, -4.000000e+01
  %333 = call float @dx.op.unary.f32(i32 6, float %332)  ; FAbs(value)
  %334 = fmul fast float %329, 0x4054142860000000
  %335 = fadd fast float %334, -4.000000e+01
  %336 = call float @dx.op.unary.f32(i32 6, float %335)  ; FAbs(value)
  %337 = fcmp fast ogt float %333, %336
  %338 = select i1 %337, float %316, float %328
  %339 = select i1 %337, float %317, float %329
  %340 = fmul fast float %325, 0x4054142860000000
  %341 = fadd fast float %340, -4.000000e+01
  %342 = call float @dx.op.unary.f32(i32 6, float %341)  ; FAbs(value)
  %343 = fmul fast float %330, 0x4054142860000000
  %344 = fadd fast float %343, -4.000000e+01
  %345 = call float @dx.op.unary.f32(i32 6, float %344)  ; FAbs(value)
  %346 = fcmp fast olt float %342, %345
  %347 = select i1 %346, float %325, float %330
  %348 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1, %dx.types.Handle %2, float %28, float %326, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %349 = extractvalue %dx.types.ResRet.f32 %348, 0
  %350 = extractvalue %dx.types.ResRet.f32 %348, 1
  %351 = extractvalue %dx.types.ResRet.f32 %348, 3
  %352 = fmul fast float %339, 0x4054142860000000
  %353 = fadd fast float %352, -4.000000e+01
  %354 = call float @dx.op.unary.f32(i32 6, float %353)  ; FAbs(value)
  %355 = fmul fast float %350, 0x4054142860000000
  %356 = fadd fast float %355, -4.000000e+01
  %357 = call float @dx.op.unary.f32(i32 6, float %356)  ; FAbs(value)
  %358 = fcmp fast ogt float %354, %357
  %359 = select i1 %358, float %338, float %349
  %360 = select i1 %358, float %339, float %350
  %361 = fmul fast float %347, 0x4054142860000000
  %362 = fadd fast float %361, -4.000000e+01
  %363 = call float @dx.op.unary.f32(i32 6, float %362)  ; FAbs(value)
  %364 = fmul fast float %351, 0x4054142860000000
  %365 = fadd fast float %364, -4.000000e+01
  %366 = call float @dx.op.unary.f32(i32 6, float %365)  ; FAbs(value)
  %367 = fcmp fast olt float %363, %366
  %368 = select i1 %367, float %347, float %351
  %369 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1, %dx.types.Handle %2, float %4, float %326, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %370 = extractvalue %dx.types.ResRet.f32 %369, 0
  %371 = extractvalue %dx.types.ResRet.f32 %369, 1
  %372 = extractvalue %dx.types.ResRet.f32 %369, 3
  %373 = fmul fast float %360, 0x4054142860000000
  %374 = fadd fast float %373, -4.000000e+01
  %375 = call float @dx.op.unary.f32(i32 6, float %374)  ; FAbs(value)
  %376 = fmul fast float %371, 0x4054142860000000
  %377 = fadd fast float %376, -4.000000e+01
  %378 = call float @dx.op.unary.f32(i32 6, float %377)  ; FAbs(value)
  %379 = fcmp fast ogt float %375, %378
  %380 = select i1 %379, float %359, float %370
  %381 = select i1 %379, float %360, float %371
  %382 = fmul fast float %368, 0x4054142860000000
  %383 = fadd fast float %382, -4.000000e+01
  %384 = call float @dx.op.unary.f32(i32 6, float %383)  ; FAbs(value)
  %385 = fmul fast float %372, 0x4054142860000000
  %386 = fadd fast float %385, -4.000000e+01
  %387 = call float @dx.op.unary.f32(i32 6, float %386)  ; FAbs(value)
  %388 = fcmp fast olt float %384, %387
  %389 = select i1 %388, float %368, float %372
  %390 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1, %dx.types.Handle %2, float %71, float %326, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %391 = extractvalue %dx.types.ResRet.f32 %390, 0
  %392 = extractvalue %dx.types.ResRet.f32 %390, 1
  %393 = extractvalue %dx.types.ResRet.f32 %390, 3
  %394 = fmul fast float %381, 0x4054142860000000
  %395 = fadd fast float %394, -4.000000e+01
  %396 = call float @dx.op.unary.f32(i32 6, float %395)  ; FAbs(value)
  %397 = fmul fast float %392, 0x4054142860000000
  %398 = fadd fast float %397, -4.000000e+01
  %399 = call float @dx.op.unary.f32(i32 6, float %398)  ; FAbs(value)
  %400 = fcmp fast ogt float %396, %399
  %401 = select i1 %400, float %380, float %391
  %402 = select i1 %400, float %381, float %392
  %403 = fmul fast float %389, 0x4054142860000000
  %404 = fadd fast float %403, -4.000000e+01
  %405 = call float @dx.op.unary.f32(i32 6, float %404)  ; FAbs(value)
  %406 = fmul fast float %393, 0x4054142860000000
  %407 = fadd fast float %406, -4.000000e+01
  %408 = call float @dx.op.unary.f32(i32 6, float %407)  ; FAbs(value)
  %409 = fcmp fast olt float %405, %408
  %410 = select i1 %409, float %389, float %393
  %411 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1, %dx.types.Handle %2, float %93, float %326, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %412 = extractvalue %dx.types.ResRet.f32 %411, 0
  %413 = extractvalue %dx.types.ResRet.f32 %411, 1
  %414 = extractvalue %dx.types.ResRet.f32 %411, 3
  %415 = fmul fast float %402, 0x4054142860000000
  %416 = fadd fast float %415, -4.000000e+01
  %417 = call float @dx.op.unary.f32(i32 6, float %416)  ; FAbs(value)
  %418 = fmul fast float %413, 0x4054142860000000
  %419 = fadd fast float %418, -4.000000e+01
  %420 = call float @dx.op.unary.f32(i32 6, float %419)  ; FAbs(value)
  %421 = fcmp fast ogt float %417, %420
  %422 = select i1 %421, float %401, float %412
  %423 = select i1 %421, float %402, float %413
  %424 = fmul fast float %410, 0x4054142860000000
  %425 = fadd fast float %424, -4.000000e+01
  %426 = call float @dx.op.unary.f32(i32 6, float %425)  ; FAbs(value)
  %427 = fmul fast float %414, 0x4054142860000000
  %428 = fadd fast float %427, -4.000000e+01
  %429 = call float @dx.op.unary.f32(i32 6, float %428)  ; FAbs(value)
  %430 = fcmp fast olt float %426, %429
  %431 = select i1 %430, float %410, float %414
  %432 = fadd fast float %10, %5
  %433 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1, %dx.types.Handle %2, float %11, float %432, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %434 = extractvalue %dx.types.ResRet.f32 %433, 0
  %435 = extractvalue %dx.types.ResRet.f32 %433, 1
  %436 = extractvalue %dx.types.ResRet.f32 %433, 3
  %437 = fmul fast float %423, 0x4054142860000000
  %438 = fadd fast float %437, -4.000000e+01
  %439 = call float @dx.op.unary.f32(i32 6, float %438)  ; FAbs(value)
  %440 = fmul fast float %435, 0x4054142860000000
  %441 = fadd fast float %440, -4.000000e+01
  %442 = call float @dx.op.unary.f32(i32 6, float %441)  ; FAbs(value)
  %443 = fcmp fast ogt float %439, %442
  %444 = select i1 %443, float %422, float %434
  %445 = select i1 %443, float %423, float %435
  %446 = fmul fast float %431, 0x4054142860000000
  %447 = fadd fast float %446, -4.000000e+01
  %448 = call float @dx.op.unary.f32(i32 6, float %447)  ; FAbs(value)
  %449 = fmul fast float %436, 0x4054142860000000
  %450 = fadd fast float %449, -4.000000e+01
  %451 = call float @dx.op.unary.f32(i32 6, float %450)  ; FAbs(value)
  %452 = fcmp fast olt float %448, %451
  %453 = select i1 %452, float %431, float %436
  %454 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1, %dx.types.Handle %2, float %28, float %432, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %455 = extractvalue %dx.types.ResRet.f32 %454, 0
  %456 = extractvalue %dx.types.ResRet.f32 %454, 1
  %457 = extractvalue %dx.types.ResRet.f32 %454, 3
  %458 = fmul fast float %445, 0x4054142860000000
  %459 = fadd fast float %458, -4.000000e+01
  %460 = call float @dx.op.unary.f32(i32 6, float %459)  ; FAbs(value)
  %461 = fmul fast float %456, 0x4054142860000000
  %462 = fadd fast float %461, -4.000000e+01
  %463 = call float @dx.op.unary.f32(i32 6, float %462)  ; FAbs(value)
  %464 = fcmp fast ogt float %460, %463
  %465 = select i1 %464, float %444, float %455
  %466 = select i1 %464, float %445, float %456
  %467 = fmul fast float %453, 0x4054142860000000
  %468 = fadd fast float %467, -4.000000e+01
  %469 = call float @dx.op.unary.f32(i32 6, float %468)  ; FAbs(value)
  %470 = fmul fast float %457, 0x4054142860000000
  %471 = fadd fast float %470, -4.000000e+01
  %472 = call float @dx.op.unary.f32(i32 6, float %471)  ; FAbs(value)
  %473 = fcmp fast olt float %469, %472
  %474 = select i1 %473, float %453, float %457
  %475 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1, %dx.types.Handle %2, float %4, float %432, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %476 = extractvalue %dx.types.ResRet.f32 %475, 0
  %477 = extractvalue %dx.types.ResRet.f32 %475, 1
  %478 = extractvalue %dx.types.ResRet.f32 %475, 3
  %479 = fmul fast float %466, 0x4054142860000000
  %480 = fadd fast float %479, -4.000000e+01
  %481 = call float @dx.op.unary.f32(i32 6, float %480)  ; FAbs(value)
  %482 = fmul fast float %477, 0x4054142860000000
  %483 = fadd fast float %482, -4.000000e+01
  %484 = call float @dx.op.unary.f32(i32 6, float %483)  ; FAbs(value)
  %485 = fcmp fast ogt float %481, %484
  %486 = select i1 %485, float %465, float %476
  %487 = select i1 %485, float %466, float %477
  %488 = fmul fast float %474, 0x4054142860000000
  %489 = fadd fast float %488, -4.000000e+01
  %490 = call float @dx.op.unary.f32(i32 6, float %489)  ; FAbs(value)
  %491 = fmul fast float %478, 0x4054142860000000
  %492 = fadd fast float %491, -4.000000e+01
  %493 = call float @dx.op.unary.f32(i32 6, float %492)  ; FAbs(value)
  %494 = fcmp fast olt float %490, %493
  %495 = select i1 %494, float %474, float %478
  %496 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1, %dx.types.Handle %2, float %71, float %432, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %497 = extractvalue %dx.types.ResRet.f32 %496, 0
  %498 = extractvalue %dx.types.ResRet.f32 %496, 1
  %499 = extractvalue %dx.types.ResRet.f32 %496, 3
  %500 = fmul fast float %487, 0x4054142860000000
  %501 = fadd fast float %500, -4.000000e+01
  %502 = call float @dx.op.unary.f32(i32 6, float %501)  ; FAbs(value)
  %503 = fmul fast float %498, 0x4054142860000000
  %504 = fadd fast float %503, -4.000000e+01
  %505 = call float @dx.op.unary.f32(i32 6, float %504)  ; FAbs(value)
  %506 = fcmp fast ogt float %502, %505
  %507 = select i1 %506, float %486, float %497
  %508 = select i1 %506, float %487, float %498
  %509 = fmul fast float %495, 0x4054142860000000
  %510 = fadd fast float %509, -4.000000e+01
  %511 = call float @dx.op.unary.f32(i32 6, float %510)  ; FAbs(value)
  %512 = fmul fast float %499, 0x4054142860000000
  %513 = fadd fast float %512, -4.000000e+01
  %514 = call float @dx.op.unary.f32(i32 6, float %513)  ; FAbs(value)
  %515 = fcmp fast olt float %511, %514
  %516 = select i1 %515, float %495, float %499
  %517 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1, %dx.types.Handle %2, float %93, float %432, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %518 = extractvalue %dx.types.ResRet.f32 %517, 0
  %519 = extractvalue %dx.types.ResRet.f32 %517, 1
  %520 = extractvalue %dx.types.ResRet.f32 %517, 3
  %521 = fmul fast float %508, 0x4054142860000000
  %522 = fadd fast float %521, -4.000000e+01
  %523 = call float @dx.op.unary.f32(i32 6, float %522)  ; FAbs(value)
  %524 = fmul fast float %519, 0x4054142860000000
  %525 = fadd fast float %524, -4.000000e+01
  %526 = call float @dx.op.unary.f32(i32 6, float %525)  ; FAbs(value)
  %527 = fcmp fast ogt float %523, %526
  %528 = select i1 %527, float %507, float %518
  %529 = select i1 %527, float %508, float %519
  %530 = fmul fast float %516, 0x4054142860000000
  %531 = fadd fast float %530, -4.000000e+01
  %532 = call float @dx.op.unary.f32(i32 6, float %531)  ; FAbs(value)
  %533 = fmul fast float %520, 0x4054142860000000
  %534 = fadd fast float %533, -4.000000e+01
  %535 = call float @dx.op.unary.f32(i32 6, float %534)  ; FAbs(value)
  %536 = fcmp fast olt float %532, %535
  %537 = select i1 %536, float %516, float %520
  %538 = fmul fast float %529, 0x4044142860000000
  %539 = fadd fast float %538, -2.000000e+01
  %540 = call float @dx.op.unary.f32(i32 6, float %539)  ; FAbs(value)
  %541 = fmul fast float %537, 0x4044142860000000
  %542 = fadd fast float %541, -2.000000e+01
  %543 = call float @dx.op.unary.f32(i32 6, float %542)  ; FAbs(value)
  %544 = fsub fast float %540, %543
  %545 = fcmp fast ogt float %544, 2.000000e+00
  %546 = select i1 %545, float 1.000000e+00, float 0.000000e+00
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %528)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %529)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %546)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

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
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{!9}
!9 = !{i32 0, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 112, null}
!10 = !{!11}
!11 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!12 = !{[8 x i32] [i32 6, i32 4, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7]}
!13 = !{void ()* @ps_main, !"ps_main", !14, !4, null}
!14 = !{!15, !20, null}
!15 = !{!16, !18}
!16 = !{i32 0, !"SV_Position", i8 9, i8 3, !17, i8 4, i32 1, i8 4, i32 0, i8 0, null}
!17 = !{i32 0}
!18 = !{i32 1, !"TEXCOORDS", i8 9, i8 0, !17, i8 2, i32 1, i8 2, i32 1, i8 0, !19}
!19 = !{i32 3, i32 3}
!20 = !{!21}
!21 = !{i32 0, !"SV_Target", i8 9, i8 16, !17, i8 0, i32 1, i8 4, i32 0, i8 0, !22}
!22 = !{i32 3, i32 15}

