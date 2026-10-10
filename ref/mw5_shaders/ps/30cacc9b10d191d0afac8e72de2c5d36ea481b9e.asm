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
; shader hash: 656eae4a466223b9c3ef0adaac04d1ab
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
;   [64 x i8] (type annotation not present)
;
; }
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
;                                   cbuffer      NA          NA     CB0            cb1     1
;                                   cbuffer      NA          NA     CB1            cb2     1
;                                   sampler      NA          NA      S0             s2     1
;                                   texture     f32          2d      T0             t0     1
;                                   texture     f32          2d      T1             t1     1
;                                   texture     f32          2d      T2             t2     1
;                                   texture     f32          2d      T3             t3     1
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
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%perObject = type { <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %9 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %10 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %11 = extractvalue %dx.types.CBufRet.f32 %10, 2
  %12 = extractvalue %dx.types.CBufRet.f32 %10, 3
  %13 = fmul fast float %11, 0x3FF7EF9DC0000000
  %14 = fmul fast float %12, 0x3FF7EF9DC0000000
  %15 = fsub fast float %8, %13
  %16 = fsub fast float %9, %14
  %17 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %3, %dx.types.Handle %5, float %15, float %16, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %18 = extractvalue %dx.types.ResRet.f32 %17, 0
  %19 = extractvalue %dx.types.ResRet.f32 %17, 1
  %20 = extractvalue %dx.types.ResRet.f32 %17, 2
  %21 = extractvalue %dx.types.ResRet.f32 %17, 3
  %22 = bitcast float %18 to i32
  %23 = bitcast float %19 to i32
  %24 = bitcast float %20 to i32
  %25 = bitcast float %21 to i32
  %26 = call i32 @dx.op.binary.i32(i32 40, i32 %23, i32 %24)  ; UMin(a,b)
  %27 = call i32 @dx.op.binary.i32(i32 40, i32 %26, i32 %25)  ; UMin(a,b)
  %28 = call i32 @dx.op.binary.i32(i32 40, i32 %22, i32 %27)  ; UMin(a,b)
  %29 = fadd fast float %13, %8
  %30 = fadd fast float %14, %9
  %31 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %3, %dx.types.Handle %5, float %29, float %30, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %32 = extractvalue %dx.types.ResRet.f32 %31, 0
  %33 = extractvalue %dx.types.ResRet.f32 %31, 1
  %34 = extractvalue %dx.types.ResRet.f32 %31, 2
  %35 = extractvalue %dx.types.ResRet.f32 %31, 3
  %36 = bitcast float %32 to i32
  %37 = bitcast float %33 to i32
  %38 = bitcast float %34 to i32
  %39 = bitcast float %35 to i32
  %40 = call i32 @dx.op.binary.i32(i32 40, i32 %37, i32 %38)  ; UMin(a,b)
  %41 = call i32 @dx.op.binary.i32(i32 40, i32 %40, i32 %39)  ; UMin(a,b)
  %42 = call i32 @dx.op.binary.i32(i32 40, i32 %36, i32 %41)  ; UMin(a,b)
  %43 = call i32 @dx.op.binary.i32(i32 40, i32 %28, i32 %42)  ; UMin(a,b)
  %44 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %3, %dx.types.Handle %5, float %15, float %30, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %45 = extractvalue %dx.types.ResRet.f32 %44, 0
  %46 = extractvalue %dx.types.ResRet.f32 %44, 1
  %47 = extractvalue %dx.types.ResRet.f32 %44, 2
  %48 = extractvalue %dx.types.ResRet.f32 %44, 3
  %49 = bitcast float %45 to i32
  %50 = bitcast float %46 to i32
  %51 = bitcast float %47 to i32
  %52 = bitcast float %48 to i32
  %53 = call i32 @dx.op.binary.i32(i32 40, i32 %50, i32 %51)  ; UMin(a,b)
  %54 = call i32 @dx.op.binary.i32(i32 40, i32 %53, i32 %52)  ; UMin(a,b)
  %55 = call i32 @dx.op.binary.i32(i32 40, i32 %49, i32 %54)  ; UMin(a,b)
  %56 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %3, %dx.types.Handle %5, float %29, float %16, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %57 = extractvalue %dx.types.ResRet.f32 %56, 0
  %58 = extractvalue %dx.types.ResRet.f32 %56, 1
  %59 = extractvalue %dx.types.ResRet.f32 %56, 2
  %60 = extractvalue %dx.types.ResRet.f32 %56, 3
  %61 = bitcast float %57 to i32
  %62 = bitcast float %58 to i32
  %63 = bitcast float %59 to i32
  %64 = bitcast float %60 to i32
  %65 = call i32 @dx.op.binary.i32(i32 40, i32 %62, i32 %63)  ; UMin(a,b)
  %66 = call i32 @dx.op.binary.i32(i32 40, i32 %65, i32 %64)  ; UMin(a,b)
  %67 = call i32 @dx.op.binary.i32(i32 40, i32 %61, i32 %66)  ; UMin(a,b)
  %68 = call i32 @dx.op.binary.i32(i32 40, i32 %55, i32 %67)  ; UMin(a,b)
  %69 = call i32 @dx.op.binary.i32(i32 40, i32 %43, i32 %68)  ; UMin(a,b)
  %70 = lshr i32 %69, 11
  %71 = and i32 %69, 2047
  %72 = and i32 %70, 2047
  %73 = uitofp i32 %71 to float
  %74 = uitofp i32 %72 to float
  %75 = fmul fast float %73, 0x3F50040100000000
  %76 = fmul fast float %74, 0x3F50040100000000
  %77 = fadd fast float %75, -1.000000e+00
  %78 = fadd fast float %76, -1.000000e+00
  %79 = call float @dx.op.unary.f32(i32 6, float %77)  ; FAbs(value)
  %80 = call float @dx.op.unary.f32(i32 6, float %78)  ; FAbs(value)
  %81 = fadd fast float %79, -5.000000e-01
  %82 = fadd fast float %80, -5.000000e-01
  %83 = fmul fast float %81, 2.000000e+00
  %84 = fmul fast float %82, 2.000000e+00
  %85 = call float @dx.op.unary.f32(i32 7, float %83)  ; Saturate(value)
  %86 = call float @dx.op.unary.f32(i32 7, float %84)  ; Saturate(value)
  %87 = fmul fast float %79, 2.000000e+00
  %88 = fmul fast float %80, 2.000000e+00
  %89 = call float @dx.op.unary.f32(i32 7, float %87)  ; Saturate(value)
  %90 = call float @dx.op.unary.f32(i32 7, float %88)  ; Saturate(value)
  %91 = fmul fast float %85, %85
  %92 = fmul fast float %91, 0x3FA48888A0000000
  %93 = fmul fast float %86, %86
  %94 = fmul fast float %93, 0x3FB2407960000000
  %95 = fmul fast float %89, 0x3F599999A0000000
  %96 = fmul fast float %90, 0x3F66C16C20000000
  %97 = fadd fast float %95, %92
  %98 = fadd fast float %96, %94
  %99 = fsub fast float -0.000000e+00, %97
  %100 = fsub fast float -0.000000e+00, %98
  %101 = fcmp fast olt float %77, 0.000000e+00
  %102 = fcmp fast olt float %78, 0.000000e+00
  %103 = select i1 %101, float 0.000000e+00, float 1.000000e+00
  %104 = select i1 %102, float 0.000000e+00, float 1.000000e+00
  %105 = fcmp fast une float %103, 0.000000e+00
  %106 = fcmp fast une float %104, 0.000000e+00
  %107 = select i1 %105, float %97, float %99
  %108 = select i1 %106, float %98, float %100
  %109 = fsub fast float %8, %107
  %110 = fsub fast float %9, %108
  %111 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %5, float %8, float %9, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %112 = extractvalue %dx.types.ResRet.f32 %111, 0
  %113 = extractvalue %dx.types.ResRet.f32 %111, 1
  %114 = extractvalue %dx.types.ResRet.f32 %111, 2
  %115 = extractvalue %dx.types.ResRet.f32 %111, 3
  %116 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %5, float %109, float %110, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %117 = extractvalue %dx.types.ResRet.f32 %116, 0
  %118 = extractvalue %dx.types.ResRet.f32 %116, 1
  %119 = extractvalue %dx.types.ResRet.f32 %116, 2
  %120 = extractvalue %dx.types.ResRet.f32 %116, 3
  %121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %122 = extractvalue %dx.types.CBufRet.f32 %121, 2
  %123 = extractvalue %dx.types.CBufRet.f32 %121, 3
  %124 = fsub fast float %8, %122
  %125 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %5, float %124, float %9, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %126 = extractvalue %dx.types.ResRet.f32 %125, 0
  %127 = extractvalue %dx.types.ResRet.f32 %125, 1
  %128 = extractvalue %dx.types.ResRet.f32 %125, 2
  %129 = fadd fast float %122, %8
  %130 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %5, float %129, float %9, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %131 = extractvalue %dx.types.ResRet.f32 %130, 0
  %132 = extractvalue %dx.types.ResRet.f32 %130, 1
  %133 = extractvalue %dx.types.ResRet.f32 %130, 2
  %134 = fsub fast float %9, %123
  %135 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %5, float %8, float %134, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %136 = extractvalue %dx.types.ResRet.f32 %135, 0
  %137 = extractvalue %dx.types.ResRet.f32 %135, 1
  %138 = extractvalue %dx.types.ResRet.f32 %135, 2
  %139 = fadd fast float %123, %9
  %140 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %5, float %8, float %139, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %141 = extractvalue %dx.types.ResRet.f32 %140, 0
  %142 = extractvalue %dx.types.ResRet.f32 %140, 1
  %143 = extractvalue %dx.types.ResRet.f32 %140, 2
  %144 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %5, float %124, float %134, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %145 = extractvalue %dx.types.ResRet.f32 %144, 0
  %146 = extractvalue %dx.types.ResRet.f32 %144, 1
  %147 = extractvalue %dx.types.ResRet.f32 %144, 2
  %148 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %5, float %129, float %134, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %149 = extractvalue %dx.types.ResRet.f32 %148, 0
  %150 = extractvalue %dx.types.ResRet.f32 %148, 1
  %151 = extractvalue %dx.types.ResRet.f32 %148, 2
  %152 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %5, float %129, float %139, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %153 = extractvalue %dx.types.ResRet.f32 %152, 0
  %154 = extractvalue %dx.types.ResRet.f32 %152, 1
  %155 = extractvalue %dx.types.ResRet.f32 %152, 2
  %156 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %5, float %124, float %139, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %157 = extractvalue %dx.types.ResRet.f32 %156, 0
  %158 = extractvalue %dx.types.ResRet.f32 %156, 1
  %159 = extractvalue %dx.types.ResRet.f32 %156, 2
  %160 = fmul fast float %126, %126
  %161 = fmul fast float %127, %127
  %162 = fmul fast float %128, %128
  %163 = fadd fast float %131, %126
  %164 = fadd fast float %132, %127
  %165 = fadd fast float %133, %128
  %166 = fmul fast float %131, %131
  %167 = fmul fast float %132, %132
  %168 = fmul fast float %133, %133
  %169 = fadd fast float %166, %160
  %170 = fadd fast float %167, %161
  %171 = fadd fast float %168, %162
  %172 = fadd fast float %163, %136
  %173 = fadd fast float %164, %137
  %174 = fadd fast float %165, %138
  %175 = fmul fast float %136, %136
  %176 = fmul fast float %137, %137
  %177 = fmul fast float %138, %138
  %178 = fadd fast float %169, %175
  %179 = fadd fast float %170, %176
  %180 = fadd fast float %171, %177
  %181 = fadd fast float %172, %141
  %182 = fadd fast float %173, %142
  %183 = fadd fast float %174, %143
  %184 = fmul fast float %141, %141
  %185 = fmul fast float %142, %142
  %186 = fmul fast float %143, %143
  %187 = fadd fast float %178, %184
  %188 = fadd fast float %179, %185
  %189 = fadd fast float %180, %186
  %190 = fmul fast float %181, 2.000000e+00
  %191 = fmul fast float %182, 2.000000e+00
  %192 = fmul fast float %183, 2.000000e+00
  %193 = fmul fast float %187, 2.000000e+00
  %194 = fmul fast float %188, 2.000000e+00
  %195 = fmul fast float %189, 2.000000e+00
  %196 = fmul fast float %145, %145
  %197 = fmul fast float %146, %146
  %198 = fmul fast float %147, %147
  %199 = fmul fast float %149, %149
  %200 = fmul fast float %150, %150
  %201 = fmul fast float %151, %151
  %202 = fmul fast float %153, %153
  %203 = fmul fast float %154, %154
  %204 = fmul fast float %155, %155
  %205 = fmul fast float %157, %157
  %206 = fmul fast float %158, %158
  %207 = fmul fast float %159, %159
  %208 = fmul fast float %112, 8.000000e+00
  %209 = fmul fast float %113, 8.000000e+00
  %210 = fmul fast float %114, 8.000000e+00
  %211 = fadd fast float %190, %208
  %212 = fadd fast float %211, %145
  %213 = fadd fast float %212, %149
  %214 = fadd fast float %213, %153
  %215 = fadd fast float %214, %157
  %216 = fadd fast float %191, %209
  %217 = fadd fast float %216, %146
  %218 = fadd fast float %217, %150
  %219 = fadd fast float %218, %154
  %220 = fadd fast float %219, %158
  %221 = fadd fast float %192, %210
  %222 = fadd fast float %221, %147
  %223 = fadd fast float %222, %151
  %224 = fadd fast float %223, %155
  %225 = fadd fast float %224, %159
  %226 = fmul fast float %112, %112
  %227 = fmul fast float %226, 8.000000e+00
  %228 = fmul fast float %113, %113
  %229 = fmul fast float %228, 8.000000e+00
  %230 = fmul fast float %114, %114
  %231 = fmul fast float %230, 8.000000e+00
  %232 = fadd fast float %193, %227
  %233 = fadd fast float %232, %196
  %234 = fadd fast float %233, %199
  %235 = fadd fast float %234, %202
  %236 = fadd fast float %235, %205
  %237 = fadd fast float %194, %229
  %238 = fadd fast float %237, %197
  %239 = fadd fast float %238, %200
  %240 = fadd fast float %239, %203
  %241 = fadd fast float %240, %206
  %242 = fadd fast float %195, %231
  %243 = fadd fast float %242, %198
  %244 = fadd fast float %243, %201
  %245 = fadd fast float %244, %204
  %246 = fadd fast float %245, %207
  %247 = fmul fast float %215, 0x3FA99999A0000000
  %248 = fmul fast float %220, 0x3FA99999A0000000
  %249 = fmul fast float %225, 0x3FA99999A0000000
  %250 = fmul fast float %236, 0x3FA99999A0000000
  %251 = fmul fast float %241, 0x3FA99999A0000000
  %252 = fmul fast float %246, 0x3FA99999A0000000
  %253 = fmul fast float %247, %247
  %254 = fmul fast float %248, %248
  %255 = fmul fast float %249, %249
  %256 = fsub fast float %250, %253
  %257 = fsub fast float %251, %254
  %258 = fsub fast float %252, %255
  %259 = call float @dx.op.binary.f32(i32 35, float %256, float 0.000000e+00)  ; FMax(a,b)
  %260 = call float @dx.op.binary.f32(i32 35, float %257, float 0.000000e+00)  ; FMax(a,b)
  %261 = call float @dx.op.binary.f32(i32 35, float %258, float 0.000000e+00)  ; FMax(a,b)
  %262 = bitcast float %259 to i32
  %263 = ashr i32 %262, 1
  %264 = add nsw i32 %263, 532487669
  %265 = bitcast i32 %264 to float
  %266 = bitcast float %260 to i32
  %267 = ashr i32 %266, 1
  %268 = add nsw i32 %267, 532487669
  %269 = bitcast i32 %268 to float
  %270 = bitcast float %261 to i32
  %271 = ashr i32 %270, 1
  %272 = add nsw i32 %271, 532487669
  %273 = bitcast i32 %272 to float
  %274 = fsub fast float %109, %122
  %275 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %5, float %274, float %110, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %276 = extractvalue %dx.types.ResRet.f32 %275, 0
  %277 = extractvalue %dx.types.ResRet.f32 %275, 1
  %278 = extractvalue %dx.types.ResRet.f32 %275, 2
  %279 = fadd fast float %122, %109
  %280 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %5, float %279, float %110, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %281 = extractvalue %dx.types.ResRet.f32 %280, 0
  %282 = extractvalue %dx.types.ResRet.f32 %280, 1
  %283 = extractvalue %dx.types.ResRet.f32 %280, 2
  %284 = fsub fast float %110, %123
  %285 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %5, float %109, float %284, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %286 = extractvalue %dx.types.ResRet.f32 %285, 0
  %287 = extractvalue %dx.types.ResRet.f32 %285, 1
  %288 = extractvalue %dx.types.ResRet.f32 %285, 2
  %289 = fadd fast float %123, %110
  %290 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %5, float %109, float %289, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %291 = extractvalue %dx.types.ResRet.f32 %290, 0
  %292 = extractvalue %dx.types.ResRet.f32 %290, 1
  %293 = extractvalue %dx.types.ResRet.f32 %290, 2
  %294 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %5, float %274, float %284, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %295 = extractvalue %dx.types.ResRet.f32 %294, 0
  %296 = extractvalue %dx.types.ResRet.f32 %294, 1
  %297 = extractvalue %dx.types.ResRet.f32 %294, 2
  %298 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %5, float %279, float %284, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %299 = extractvalue %dx.types.ResRet.f32 %298, 0
  %300 = extractvalue %dx.types.ResRet.f32 %298, 1
  %301 = extractvalue %dx.types.ResRet.f32 %298, 2
  %302 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %5, float %279, float %289, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %303 = extractvalue %dx.types.ResRet.f32 %302, 0
  %304 = extractvalue %dx.types.ResRet.f32 %302, 1
  %305 = extractvalue %dx.types.ResRet.f32 %302, 2
  %306 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %5, float %274, float %289, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %307 = extractvalue %dx.types.ResRet.f32 %306, 0
  %308 = extractvalue %dx.types.ResRet.f32 %306, 1
  %309 = extractvalue %dx.types.ResRet.f32 %306, 2
  %310 = fmul fast float %276, %276
  %311 = fmul fast float %277, %277
  %312 = fmul fast float %278, %278
  %313 = fadd fast float %281, %276
  %314 = fadd fast float %282, %277
  %315 = fadd fast float %283, %278
  %316 = fmul fast float %281, %281
  %317 = fmul fast float %282, %282
  %318 = fmul fast float %283, %283
  %319 = fadd fast float %316, %310
  %320 = fadd fast float %317, %311
  %321 = fadd fast float %318, %312
  %322 = fadd fast float %313, %286
  %323 = fadd fast float %314, %287
  %324 = fadd fast float %315, %288
  %325 = fmul fast float %286, %286
  %326 = fmul fast float %287, %287
  %327 = fmul fast float %288, %288
  %328 = fadd fast float %319, %325
  %329 = fadd fast float %320, %326
  %330 = fadd fast float %321, %327
  %331 = fadd fast float %322, %291
  %332 = fadd fast float %323, %292
  %333 = fadd fast float %324, %293
  %334 = fmul fast float %291, %291
  %335 = fmul fast float %292, %292
  %336 = fmul fast float %293, %293
  %337 = fadd fast float %328, %334
  %338 = fadd fast float %329, %335
  %339 = fadd fast float %330, %336
  %340 = fmul fast float %331, 2.000000e+00
  %341 = fmul fast float %332, 2.000000e+00
  %342 = fmul fast float %333, 2.000000e+00
  %343 = fmul fast float %337, 2.000000e+00
  %344 = fmul fast float %338, 2.000000e+00
  %345 = fmul fast float %339, 2.000000e+00
  %346 = fmul fast float %295, %295
  %347 = fmul fast float %296, %296
  %348 = fmul fast float %297, %297
  %349 = fmul fast float %299, %299
  %350 = fmul fast float %300, %300
  %351 = fmul fast float %301, %301
  %352 = fmul fast float %303, %303
  %353 = fmul fast float %304, %304
  %354 = fmul fast float %305, %305
  %355 = fmul fast float %307, %307
  %356 = fmul fast float %308, %308
  %357 = fmul fast float %309, %309
  %358 = fmul fast float %117, 8.000000e+00
  %359 = fmul fast float %118, 8.000000e+00
  %360 = fmul fast float %119, 8.000000e+00
  %361 = fadd fast float %340, %358
  %362 = fadd fast float %361, %295
  %363 = fadd fast float %362, %299
  %364 = fadd fast float %363, %303
  %365 = fadd fast float %364, %307
  %366 = fadd fast float %341, %359
  %367 = fadd fast float %366, %296
  %368 = fadd fast float %367, %300
  %369 = fadd fast float %368, %304
  %370 = fadd fast float %369, %308
  %371 = fadd fast float %342, %360
  %372 = fadd fast float %371, %297
  %373 = fadd fast float %372, %301
  %374 = fadd fast float %373, %305
  %375 = fadd fast float %374, %309
  %376 = fmul fast float %117, %117
  %377 = fmul fast float %376, 8.000000e+00
  %378 = fmul fast float %118, %118
  %379 = fmul fast float %378, 8.000000e+00
  %380 = fmul fast float %119, %119
  %381 = fmul fast float %380, 8.000000e+00
  %382 = fadd fast float %343, %377
  %383 = fadd fast float %382, %346
  %384 = fadd fast float %383, %349
  %385 = fadd fast float %384, %352
  %386 = fadd fast float %385, %355
  %387 = fadd fast float %344, %379
  %388 = fadd fast float %387, %347
  %389 = fadd fast float %388, %350
  %390 = fadd fast float %389, %353
  %391 = fadd fast float %390, %356
  %392 = fadd fast float %345, %381
  %393 = fadd fast float %392, %348
  %394 = fadd fast float %393, %351
  %395 = fadd fast float %394, %354
  %396 = fadd fast float %395, %357
  %397 = fmul fast float %365, 0x3FA99999A0000000
  %398 = fmul fast float %370, 0x3FA99999A0000000
  %399 = fmul fast float %375, 0x3FA99999A0000000
  %400 = fmul fast float %386, 0x3FA99999A0000000
  %401 = fmul fast float %391, 0x3FA99999A0000000
  %402 = fmul fast float %396, 0x3FA99999A0000000
  %403 = fmul fast float %397, %397
  %404 = fmul fast float %398, %398
  %405 = fmul fast float %399, %399
  %406 = fsub fast float %400, %403
  %407 = fsub fast float %401, %404
  %408 = fsub fast float %402, %405
  %409 = call float @dx.op.binary.f32(i32 35, float %406, float 0.000000e+00)  ; FMax(a,b)
  %410 = call float @dx.op.binary.f32(i32 35, float %407, float 0.000000e+00)  ; FMax(a,b)
  %411 = call float @dx.op.binary.f32(i32 35, float %408, float 0.000000e+00)  ; FMax(a,b)
  %412 = bitcast float %409 to i32
  %413 = ashr i32 %412, 1
  %414 = add nsw i32 %413, 532487669
  %415 = bitcast i32 %414 to float
  %416 = bitcast float %410 to i32
  %417 = ashr i32 %416, 1
  %418 = add nsw i32 %417, 532487669
  %419 = bitcast i32 %418 to float
  %420 = bitcast float %411 to i32
  %421 = ashr i32 %420, 1
  %422 = add nsw i32 %421, 532487669
  %423 = bitcast i32 %422 to float
  %424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %425 = extractvalue %dx.types.CBufRet.f32 %424, 0
  %426 = extractvalue %dx.types.CBufRet.f32 %424, 1
  %427 = extractvalue %dx.types.CBufRet.f32 %424, 2
  %428 = fsub fast float %117, %247
  %429 = fsub fast float %118, %248
  %430 = fsub fast float %119, %249
  %431 = call float @dx.op.unary.f32(i32 6, float %428)  ; FAbs(value)
  %432 = call float @dx.op.unary.f32(i32 6, float %429)  ; FAbs(value)
  %433 = call float @dx.op.unary.f32(i32 6, float %430)  ; FAbs(value)
  %434 = call float @dx.op.binary.f32(i32 35, float %117, float %247)  ; FMax(a,b)
  %435 = call float @dx.op.binary.f32(i32 35, float %118, float %248)  ; FMax(a,b)
  %436 = call float @dx.op.binary.f32(i32 35, float %119, float %249)  ; FMax(a,b)
  %437 = call float @dx.op.binary.f32(i32 35, float %434, float 0x3EE4F8B580000000)  ; FMax(a,b)
  %438 = call float @dx.op.binary.f32(i32 35, float %435, float 0x3EE4F8B580000000)  ; FMax(a,b)
  %439 = call float @dx.op.binary.f32(i32 35, float %436, float 0x3EE4F8B580000000)  ; FMax(a,b)
  %440 = bitcast float %437 to i32
  %441 = sub nsw i32 2129859010, %440
  %442 = bitcast i32 %441 to float
  %443 = bitcast float %438 to i32
  %444 = sub nsw i32 2129859010, %443
  %445 = bitcast i32 %444 to float
  %446 = bitcast float %439 to i32
  %447 = sub nsw i32 2129859010, %446
  %448 = bitcast i32 %447 to float
  %449 = fmul fast float %442, %431
  %450 = fmul fast float %445, %432
  %451 = fmul fast float %448, %433
  %452 = call float @dx.op.dot3.f32(i32 55, float %449, float %450, float %451, float %425, float %426, float %427)  ; Dot3(ax,ay,az,bx,by,bz)
  %453 = fmul fast float %452, 2.000000e+00
  %454 = call float @dx.op.unary.f32(i32 7, float %453)  ; Saturate(value)
  %455 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %3, %dx.types.Handle %5, float %8, float %9, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %456 = extractvalue %dx.types.ResRet.f32 %455, 0
  %457 = extractvalue %dx.types.ResRet.f32 %455, 1
  %458 = extractvalue %dx.types.ResRet.f32 %455, 2
  %459 = extractvalue %dx.types.ResRet.f32 %455, 3
  %460 = bitcast float %456 to i32
  %461 = bitcast float %457 to i32
  %462 = bitcast float %458 to i32
  %463 = bitcast float %459 to i32
  %464 = call i32 @dx.op.binary.i32(i32 40, i32 %461, i32 %462)  ; UMin(a,b)
  %465 = call i32 @dx.op.binary.i32(i32 40, i32 %464, i32 %463)  ; UMin(a,b)
  %466 = call i32 @dx.op.binary.i32(i32 40, i32 %460, i32 %465)  ; UMin(a,b)
  %467 = lshr i32 %466, 11
  %468 = and i32 %466, 2047
  %469 = and i32 %467, 2047
  %470 = uitofp i32 %468 to float
  %471 = uitofp i32 %469 to float
  %472 = fmul fast float %470, 0x3F50040100000000
  %473 = fmul fast float %471, 0x3F50040100000000
  %474 = fadd fast float %472, -1.000000e+00
  %475 = fadd fast float %473, -1.000000e+00
  %476 = call float @dx.op.unary.f32(i32 6, float %474)  ; FAbs(value)
  %477 = call float @dx.op.unary.f32(i32 6, float %475)  ; FAbs(value)
  %478 = fadd fast float %476, -5.000000e-01
  %479 = fadd fast float %477, -5.000000e-01
  %480 = fmul fast float %478, 2.000000e+00
  %481 = fmul fast float %479, 2.000000e+00
  %482 = call float @dx.op.unary.f32(i32 7, float %480)  ; Saturate(value)
  %483 = call float @dx.op.unary.f32(i32 7, float %481)  ; Saturate(value)
  %484 = fmul fast float %476, 2.000000e+00
  %485 = fmul fast float %477, 2.000000e+00
  %486 = call float @dx.op.unary.f32(i32 7, float %484)  ; Saturate(value)
  %487 = call float @dx.op.unary.f32(i32 7, float %485)  ; Saturate(value)
  %488 = fmul fast float %482, %482
  %489 = fmul fast float %488, 0x3FA48888A0000000
  %490 = fmul fast float %483, %483
  %491 = fmul fast float %490, 0x3FB2407960000000
  %492 = fmul fast float %486, 0x3F599999A0000000
  %493 = fmul fast float %487, 0x3F66C16C20000000
  %494 = fadd fast float %492, %489
  %495 = fadd fast float %493, %491
  %496 = fsub fast float -0.000000e+00, %494
  %497 = fsub fast float -0.000000e+00, %495
  %498 = fcmp fast olt float %474, 0.000000e+00
  %499 = fcmp fast olt float %475, 0.000000e+00
  %500 = select i1 %498, float 0.000000e+00, float 1.000000e+00
  %501 = select i1 %499, float 0.000000e+00, float 1.000000e+00
  %502 = fcmp fast une float %500, 0.000000e+00
  %503 = fcmp fast une float %501, 0.000000e+00
  %504 = select i1 %502, float %494, float %496
  %505 = select i1 %503, float %495, float %497
  %506 = fsub fast float %107, %504
  %507 = fsub fast float %108, %505
  %508 = call float @dx.op.unary.f32(i32 6, float %506)  ; FAbs(value)
  %509 = call float @dx.op.unary.f32(i32 6, float %507)  ; FAbs(value)
  %510 = fmul fast float %508, 1.920000e+03
  %511 = fmul fast float %509, 1.080000e+03
  %512 = call float @dx.op.binary.f32(i32 35, float %510, float %511)  ; FMax(a,b)
  %513 = fmul fast float %512, 0x3FD5555560000000
  %514 = fsub fast float 0x3FF5555560000000, %513
  %515 = call float @dx.op.unary.f32(i32 7, float %514)  ; Saturate(value)
  %516 = fmul fast float %515, 5.000000e-01
  %517 = fadd fast float %516, 5.000000e-01
  %518 = fmul fast float %120, 3.000000e+00
  %519 = fadd fast float %518, 1.000000e+00
  %520 = fadd fast float %518, 2.000000e+00
  %521 = bitcast float %520 to i32
  %522 = sub nsw i32 2129859010, %521
  %523 = bitcast i32 %522 to float
  %524 = fsub fast float 1.000000e+00, %523
  %525 = fcmp fast olt float %519, 4.000000e+00
  %526 = select i1 %525, float %524, float 0x3FEE666660000000
  %527 = fmul fast float %454, 0x3FECCCCCC0000000
  %528 = fsub fast float 1.250000e+00, %527
  %529 = extractvalue %dx.types.CBufRet.f32 %121, 0
  %530 = extractvalue %dx.types.CBufRet.f32 %121, 1
  %531 = fmul fast float %529, %109
  %532 = fmul fast float %530, %110
  %533 = fadd fast float %531, -5.000000e-01
  %534 = fadd fast float %532, -5.000000e-01
  %535 = call float @dx.op.unary.f32(i32 22, float %533)  ; Frc(value)
  %536 = call float @dx.op.unary.f32(i32 22, float %534)  ; Frc(value)
  %537 = fsub fast float %131, %126
  %538 = fsub fast float %132, %127
  %539 = fsub fast float %133, %128
  %540 = fmul fast float %535, %537
  %541 = fmul fast float %535, %538
  %542 = fmul fast float %535, %539
  %543 = fsub fast float %141, %136
  %544 = fsub fast float %142, %137
  %545 = fsub fast float %143, %138
  %546 = fmul fast float %536, %543
  %547 = fmul fast float %536, %544
  %548 = fmul fast float %536, %545
  %549 = fmul fast float %120, 0x3FE3333340000000
  %550 = fadd fast float %549, 0x3FC99999A0000000
  %551 = fmul fast float %550, %528
  %552 = fmul fast float %535, %535
  %553 = fmul fast float %536, %536
  %554 = fsub fast float %552, %535
  %555 = fsub fast float %553, %536
  %556 = fmul fast float %554, %551
  %557 = fmul fast float %555, %551
  %558 = fsub fast float %126, %112
  %559 = fadd fast float %558, %540
  %560 = fsub fast float %127, %113
  %561 = fadd fast float %560, %541
  %562 = fsub fast float %128, %114
  %563 = fadd fast float %562, %542
  %564 = fmul fast float %556, %559
  %565 = fmul fast float %556, %561
  %566 = fmul fast float %556, %563
  %567 = fsub fast float %136, %112
  %568 = fadd fast float %567, %546
  %569 = fsub fast float %137, %113
  %570 = fadd fast float %569, %547
  %571 = fsub fast float %138, %114
  %572 = fadd fast float %571, %548
  %573 = fmul fast float %557, %568
  %574 = fmul fast float %557, %570
  %575 = fmul fast float %557, %572
  %576 = fadd fast float %564, %117
  %577 = fadd fast float %576, %573
  %578 = fadd fast float %565, %118
  %579 = fadd fast float %578, %574
  %580 = fadd fast float %566, %119
  %581 = fadd fast float %580, %575
  %582 = fmul fast float %107, 1.920000e+03
  %583 = fmul fast float %108, 1.080000e+03
  %584 = call float @dx.op.unary.f32(i32 6, float %582)  ; FAbs(value)
  %585 = call float @dx.op.unary.f32(i32 6, float %583)  ; FAbs(value)
  %586 = call float @dx.op.binary.f32(i32 35, float %584, float %585)  ; FMax(a,b)
  %587 = fmul fast float %586, 0x3FB0842100000000
  %588 = fadd fast float %587, 0xBFA0842100000000
  %589 = call float @dx.op.unary.f32(i32 7, float %588)  ; Saturate(value)
  %590 = fmul fast float %589, 2.000000e+00
  %591 = fsub fast float 3.000000e+00, %590
  %592 = fmul fast float %591, %115
  %593 = fcmp fast ogt float %592, 2.000000e+00
  br i1 %593, label %594, label %771, !dx.controlflow.hints !27

; <label>:594                                     ; preds = %0
  %595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %596 = extractvalue %dx.types.CBufRet.f32 %595, 2
  %597 = extractvalue %dx.types.CBufRet.f32 %595, 3
  %598 = extractvalue %dx.types.CBufRet.f32 %595, 0
  %599 = extractvalue %dx.types.CBufRet.f32 %595, 1
  %600 = fmul fast float %598, %8
  %601 = fmul fast float %599, %9
  %602 = call float @dx.op.unary.f32(i32 27, float %600)  ; Round_ni(value)
  %603 = call float @dx.op.unary.f32(i32 27, float %601)  ; Round_ni(value)
  %604 = fadd fast float %602, 5.000000e-01
  %605 = fadd fast float %603, 5.000000e-01
  %606 = fmul fast float %604, %596
  %607 = fmul fast float %605, %597
  %608 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %5, float %606, float %607, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %609 = extractvalue %dx.types.ResRet.f32 %608, 0
  %610 = extractvalue %dx.types.ResRet.f32 %608, 1
  %611 = extractvalue %dx.types.ResRet.f32 %608, 2
  %612 = fsub fast float %606, %596
  %613 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %5, float %612, float %607, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %614 = extractvalue %dx.types.ResRet.f32 %613, 0
  %615 = extractvalue %dx.types.ResRet.f32 %613, 1
  %616 = extractvalue %dx.types.ResRet.f32 %613, 2
  %617 = fadd fast float %596, %606
  %618 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %5, float %617, float %607, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %619 = extractvalue %dx.types.ResRet.f32 %618, 0
  %620 = extractvalue %dx.types.ResRet.f32 %618, 1
  %621 = extractvalue %dx.types.ResRet.f32 %618, 2
  %622 = fsub fast float %607, %597
  %623 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %5, float %606, float %622, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %624 = extractvalue %dx.types.ResRet.f32 %623, 0
  %625 = extractvalue %dx.types.ResRet.f32 %623, 1
  %626 = extractvalue %dx.types.ResRet.f32 %623, 2
  %627 = fadd fast float %597, %607
  %628 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %5, float %606, float %627, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %629 = extractvalue %dx.types.ResRet.f32 %628, 0
  %630 = extractvalue %dx.types.ResRet.f32 %628, 1
  %631 = extractvalue %dx.types.ResRet.f32 %628, 2
  %632 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %5, float %612, float %622, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %633 = extractvalue %dx.types.ResRet.f32 %632, 0
  %634 = extractvalue %dx.types.ResRet.f32 %632, 1
  %635 = extractvalue %dx.types.ResRet.f32 %632, 2
  %636 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %5, float %617, float %622, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %637 = extractvalue %dx.types.ResRet.f32 %636, 0
  %638 = extractvalue %dx.types.ResRet.f32 %636, 1
  %639 = extractvalue %dx.types.ResRet.f32 %636, 2
  %640 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %5, float %617, float %627, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %641 = extractvalue %dx.types.ResRet.f32 %640, 0
  %642 = extractvalue %dx.types.ResRet.f32 %640, 1
  %643 = extractvalue %dx.types.ResRet.f32 %640, 2
  %644 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %5, float %612, float %627, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %645 = extractvalue %dx.types.ResRet.f32 %644, 0
  %646 = extractvalue %dx.types.ResRet.f32 %644, 1
  %647 = extractvalue %dx.types.ResRet.f32 %644, 2
  %648 = fmul fast float %614, %614
  %649 = fmul fast float %615, %615
  %650 = fmul fast float %616, %616
  %651 = fadd fast float %619, %614
  %652 = fadd fast float %620, %615
  %653 = fadd fast float %621, %616
  %654 = fmul fast float %619, %619
  %655 = fmul fast float %620, %620
  %656 = fmul fast float %621, %621
  %657 = fadd fast float %654, %648
  %658 = fadd fast float %655, %649
  %659 = fadd fast float %656, %650
  %660 = fadd fast float %651, %624
  %661 = fadd fast float %652, %625
  %662 = fadd fast float %653, %626
  %663 = fmul fast float %624, %624
  %664 = fmul fast float %625, %625
  %665 = fmul fast float %626, %626
  %666 = fadd fast float %657, %663
  %667 = fadd fast float %658, %664
  %668 = fadd fast float %659, %665
  %669 = fadd fast float %660, %629
  %670 = fadd fast float %661, %630
  %671 = fadd fast float %662, %631
  %672 = fmul fast float %629, %629
  %673 = fmul fast float %630, %630
  %674 = fmul fast float %631, %631
  %675 = fadd fast float %666, %672
  %676 = fadd fast float %667, %673
  %677 = fadd fast float %668, %674
  %678 = fmul fast float %669, 2.000000e+00
  %679 = fmul fast float %670, 2.000000e+00
  %680 = fmul fast float %671, 2.000000e+00
  %681 = fmul fast float %675, 2.000000e+00
  %682 = fmul fast float %676, 2.000000e+00
  %683 = fmul fast float %677, 2.000000e+00
  %684 = fmul fast float %633, %633
  %685 = fmul fast float %634, %634
  %686 = fmul fast float %635, %635
  %687 = fmul fast float %637, %637
  %688 = fmul fast float %638, %638
  %689 = fmul fast float %639, %639
  %690 = fmul fast float %641, %641
  %691 = fmul fast float %642, %642
  %692 = fmul fast float %643, %643
  %693 = fmul fast float %645, %645
  %694 = fmul fast float %646, %646
  %695 = fmul fast float %647, %647
  %696 = fmul fast float %609, 8.000000e+00
  %697 = fmul fast float %610, 8.000000e+00
  %698 = fmul fast float %611, 8.000000e+00
  %699 = fadd fast float %678, %696
  %700 = fadd fast float %699, %633
  %701 = fadd fast float %700, %637
  %702 = fadd fast float %701, %641
  %703 = fadd fast float %702, %645
  %704 = fadd fast float %679, %697
  %705 = fadd fast float %704, %634
  %706 = fadd fast float %705, %638
  %707 = fadd fast float %706, %642
  %708 = fadd fast float %707, %646
  %709 = fadd fast float %680, %698
  %710 = fadd fast float %709, %635
  %711 = fadd fast float %710, %639
  %712 = fadd fast float %711, %643
  %713 = fadd fast float %712, %647
  %714 = fmul fast float %609, %609
  %715 = fmul fast float %714, 8.000000e+00
  %716 = fmul fast float %610, %610
  %717 = fmul fast float %716, 8.000000e+00
  %718 = fmul fast float %611, %611
  %719 = fmul fast float %718, 8.000000e+00
  %720 = fadd fast float %681, %715
  %721 = fadd fast float %720, %684
  %722 = fadd fast float %721, %687
  %723 = fadd fast float %722, %690
  %724 = fadd fast float %723, %693
  %725 = fadd fast float %682, %717
  %726 = fadd fast float %725, %685
  %727 = fadd fast float %726, %688
  %728 = fadd fast float %727, %691
  %729 = fadd fast float %728, %694
  %730 = fadd fast float %683, %719
  %731 = fadd fast float %730, %686
  %732 = fadd fast float %731, %689
  %733 = fadd fast float %732, %692
  %734 = fadd fast float %733, %695
  %735 = fmul fast float %703, 0x3FA99999A0000000
  %736 = fmul fast float %708, 0x3FA99999A0000000
  %737 = fmul fast float %713, 0x3FA99999A0000000
  %738 = fmul fast float %724, 0x3FA99999A0000000
  %739 = fmul fast float %729, 0x3FA99999A0000000
  %740 = fmul fast float %734, 0x3FA99999A0000000
  %741 = fmul fast float %735, %735
  %742 = fmul fast float %736, %736
  %743 = fmul fast float %737, %737
  %744 = fsub fast float %738, %741
  %745 = fsub fast float %739, %742
  %746 = fsub fast float %740, %743
  %747 = call float @dx.op.binary.f32(i32 35, float %744, float 0.000000e+00)  ; FMax(a,b)
  %748 = call float @dx.op.binary.f32(i32 35, float %745, float 0.000000e+00)  ; FMax(a,b)
  %749 = call float @dx.op.binary.f32(i32 35, float %746, float 0.000000e+00)  ; FMax(a,b)
  %750 = bitcast float %747 to i32
  %751 = ashr i32 %750, 1
  %752 = add nsw i32 %751, 532487669
  %753 = bitcast i32 %752 to float
  %754 = bitcast float %748 to i32
  %755 = ashr i32 %754, 1
  %756 = add nsw i32 %755, 532487669
  %757 = bitcast i32 %756 to float
  %758 = bitcast float %749 to i32
  %759 = ashr i32 %758, 1
  %760 = add nsw i32 %759, 532487669
  %761 = bitcast i32 %760 to float
  %762 = fcmp fast ogt float %753, %265
  %763 = fcmp fast ogt float %757, %269
  %764 = fcmp fast ogt float %761, %273
  %765 = select i1 %762, float %735, float %247
  %766 = select i1 %763, float %736, float %248
  %767 = select i1 %764, float %737, float %249
  %768 = call float @dx.op.binary.f32(i32 35, float %265, float %753)  ; FMax(a,b)
  %769 = call float @dx.op.binary.f32(i32 35, float %269, float %757)  ; FMax(a,b)
  %770 = call float @dx.op.binary.f32(i32 35, float %273, float %761)  ; FMax(a,b)
  br label %771

; <label>:771                                     ; preds = %594, %0
  %772 = phi float [ %768, %594 ], [ %265, %0 ]
  %773 = phi float [ %769, %594 ], [ %269, %0 ]
  %774 = phi float [ %770, %594 ], [ %273, %0 ]
  %775 = phi float [ %765, %594 ], [ %247, %0 ]
  %776 = phi float [ %766, %594 ], [ %248, %0 ]
  %777 = phi float [ %767, %594 ], [ %249, %0 ]
  %778 = fmul fast float %517, %115
  %779 = fmul fast float %778, %591
  %780 = fsub fast float %577, %775
  %781 = fsub fast float %579, %776
  %782 = fsub fast float %581, %777
  %783 = call float @dx.op.dot3.f32(i32 55, float %780, float %781, float %782, float %780, float %781, float %782)  ; Dot3(ax,ay,az,bx,by,bz)
  %784 = call float @dx.op.binary.f32(i32 35, float %783, float 0x3EE4F8B580000000)  ; FMax(a,b)
  %785 = bitcast float %784 to i32
  %786 = ashr i32 %785, 1
  %787 = sub nsw i32 1597463007, %786
  %788 = bitcast i32 %787 to float
  %789 = fmul fast float %772, %779
  %790 = fmul fast float %773, %779
  %791 = fmul fast float %774, %779
  %792 = call float @dx.op.binary.f32(i32 35, float %789, float 0x3EE4F8B580000000)  ; FMax(a,b)
  %793 = call float @dx.op.binary.f32(i32 35, float %790, float 0x3EE4F8B580000000)  ; FMax(a,b)
  %794 = call float @dx.op.binary.f32(i32 35, float %791, float 0x3EE4F8B580000000)  ; FMax(a,b)
  %795 = bitcast float %792 to i32
  %796 = sub nsw i32 2129859010, %795
  %797 = bitcast i32 %796 to float
  %798 = bitcast float %793 to i32
  %799 = sub nsw i32 2129859010, %798
  %800 = bitcast i32 %799 to float
  %801 = bitcast float %794 to i32
  %802 = sub nsw i32 2129859010, %801
  %803 = bitcast i32 %802 to float
  %804 = fmul fast float %797, %780
  %805 = fmul fast float %800, %781
  %806 = fmul fast float %803, %782
  %807 = call float @dx.op.dot3.f32(i32 55, float %804, float %805, float %806, float %804, float %805, float %806)  ; Dot3(ax,ay,az,bx,by,bz)
  %808 = call float @dx.op.binary.f32(i32 35, float %807, float 0x3EE4F8B580000000)  ; FMax(a,b)
  %809 = bitcast float %808 to i32
  %810 = ashr i32 %809, 1
  %811 = sub nsw i32 1597463007, %810
  %812 = bitcast i32 %811 to float
  %813 = fmul fast float %804, %789
  %814 = fmul fast float %813, %812
  %815 = fmul fast float %805, %790
  %816 = fmul fast float %815, %812
  %817 = fmul fast float %806, %791
  %818 = fmul fast float %817, %812
  %819 = call float @dx.op.dot3.f32(i32 55, float %814, float %816, float %818, float %814, float %816, float %818)  ; Dot3(ax,ay,az,bx,by,bz)
  %820 = bitcast float %819 to i32
  %821 = ashr i32 %820, 1
  %822 = add nsw i32 %821, 532487669
  %823 = bitcast i32 %822 to float
  %824 = fmul fast float %823, %788
  %825 = call float @dx.op.unary.f32(i32 7, float %824)  ; Saturate(value)
  %826 = fmul fast float %825, %780
  %827 = fmul fast float %825, %781
  %828 = fmul fast float %825, %782
  %829 = fadd fast float %826, %775
  %830 = fadd fast float %827, %776
  %831 = fadd fast float %828, %777
  %832 = fsub fast float %577, %829
  %833 = fsub fast float %579, %830
  %834 = fsub fast float %581, %831
  %835 = call float @dx.op.unary.f32(i32 6, float %832)  ; FAbs(value)
  %836 = call float @dx.op.unary.f32(i32 6, float %833)  ; FAbs(value)
  %837 = call float @dx.op.unary.f32(i32 6, float %834)  ; FAbs(value)
  %838 = call float @dx.op.binary.f32(i32 35, float %577, float %829)  ; FMax(a,b)
  %839 = call float @dx.op.binary.f32(i32 35, float %579, float %830)  ; FMax(a,b)
  %840 = call float @dx.op.binary.f32(i32 35, float %581, float %831)  ; FMax(a,b)
  %841 = call float @dx.op.binary.f32(i32 35, float %838, float 0x3EE4F8B580000000)  ; FMax(a,b)
  %842 = call float @dx.op.binary.f32(i32 35, float %839, float 0x3EE4F8B580000000)  ; FMax(a,b)
  %843 = call float @dx.op.binary.f32(i32 35, float %840, float 0x3EE4F8B580000000)  ; FMax(a,b)
  %844 = bitcast float %841 to i32
  %845 = sub nsw i32 2129859010, %844
  %846 = bitcast i32 %845 to float
  %847 = bitcast float %842 to i32
  %848 = sub nsw i32 2129859010, %847
  %849 = bitcast i32 %848 to float
  %850 = bitcast float %843 to i32
  %851 = sub nsw i32 2129859010, %850
  %852 = bitcast i32 %851 to float
  %853 = fmul fast float %846, %835
  %854 = fmul fast float %849, %836
  %855 = fmul fast float %852, %837
  %856 = call float @dx.op.dot3.f32(i32 55, float %853, float %854, float %855, float %425, float %426, float %427)  ; Dot3(ax,ay,az,bx,by,bz)
  %857 = fmul fast float %856, 4.000000e+01
  %858 = fsub fast float 1.000000e+00, %857
  %859 = call float @dx.op.unary.f32(i32 7, float %858)  ; Saturate(value)
  %860 = fsub fast float %112, %397
  %861 = fsub fast float %113, %398
  %862 = fsub fast float %114, %399
  %863 = call float @dx.op.dot3.f32(i32 55, float %860, float %861, float %862, float %860, float %861, float %862)  ; Dot3(ax,ay,az,bx,by,bz)
  %864 = call float @dx.op.binary.f32(i32 35, float %863, float 0x3EE4F8B580000000)  ; FMax(a,b)
  %865 = bitcast float %864 to i32
  %866 = ashr i32 %865, 1
  %867 = sub nsw i32 1597463007, %866
  %868 = bitcast i32 %867 to float
  %869 = fmul fast float %592, %415
  %870 = fmul fast float %592, %419
  %871 = fmul fast float %592, %423
  %872 = call float @dx.op.binary.f32(i32 35, float %869, float 0x3EE4F8B580000000)  ; FMax(a,b)
  %873 = call float @dx.op.binary.f32(i32 35, float %870, float 0x3EE4F8B580000000)  ; FMax(a,b)
  %874 = call float @dx.op.binary.f32(i32 35, float %871, float 0x3EE4F8B580000000)  ; FMax(a,b)
  %875 = bitcast float %872 to i32
  %876 = sub nsw i32 2129859010, %875
  %877 = bitcast i32 %876 to float
  %878 = bitcast float %873 to i32
  %879 = sub nsw i32 2129859010, %878
  %880 = bitcast i32 %879 to float
  %881 = bitcast float %874 to i32
  %882 = sub nsw i32 2129859010, %881
  %883 = bitcast i32 %882 to float
  %884 = fmul fast float %877, %860
  %885 = fmul fast float %880, %861
  %886 = fmul fast float %883, %862
  %887 = call float @dx.op.dot3.f32(i32 55, float %884, float %885, float %886, float %884, float %885, float %886)  ; Dot3(ax,ay,az,bx,by,bz)
  %888 = call float @dx.op.binary.f32(i32 35, float %887, float 0x3EE4F8B580000000)  ; FMax(a,b)
  %889 = bitcast float %888 to i32
  %890 = ashr i32 %889, 1
  %891 = sub nsw i32 1597463007, %890
  %892 = bitcast i32 %891 to float
  %893 = fmul fast float %884, %869
  %894 = fmul fast float %893, %892
  %895 = fmul fast float %885, %870
  %896 = fmul fast float %895, %892
  %897 = fmul fast float %886, %871
  %898 = fmul fast float %897, %892
  %899 = call float @dx.op.dot3.f32(i32 55, float %894, float %896, float %898, float %894, float %896, float %898)  ; Dot3(ax,ay,az,bx,by,bz)
  %900 = bitcast float %899 to i32
  %901 = ashr i32 %900, 1
  %902 = add nsw i32 %901, 532487669
  %903 = bitcast i32 %902 to float
  %904 = fmul fast float %903, %868
  %905 = call float @dx.op.unary.f32(i32 7, float %904)  ; Saturate(value)
  %906 = fmul fast float %905, %860
  %907 = fmul fast float %905, %861
  %908 = fmul fast float %905, %862
  %909 = fadd fast float %906, %397
  %910 = fadd fast float %907, %398
  %911 = fadd fast float %908, %399
  %912 = fsub fast float %112, %909
  %913 = fsub fast float %113, %910
  %914 = fsub fast float %114, %911
  %915 = call float @dx.op.unary.f32(i32 6, float %912)  ; FAbs(value)
  %916 = call float @dx.op.unary.f32(i32 6, float %913)  ; FAbs(value)
  %917 = call float @dx.op.unary.f32(i32 6, float %914)  ; FAbs(value)
  %918 = call float @dx.op.binary.f32(i32 35, float %112, float %909)  ; FMax(a,b)
  %919 = call float @dx.op.binary.f32(i32 35, float %113, float %910)  ; FMax(a,b)
  %920 = call float @dx.op.binary.f32(i32 35, float %114, float %911)  ; FMax(a,b)
  %921 = call float @dx.op.binary.f32(i32 35, float %918, float 0x3EE4F8B580000000)  ; FMax(a,b)
  %922 = call float @dx.op.binary.f32(i32 35, float %919, float 0x3EE4F8B580000000)  ; FMax(a,b)
  %923 = call float @dx.op.binary.f32(i32 35, float %920, float 0x3EE4F8B580000000)  ; FMax(a,b)
  %924 = bitcast float %921 to i32
  %925 = sub nsw i32 2129859010, %924
  %926 = bitcast i32 %925 to float
  %927 = bitcast float %922 to i32
  %928 = sub nsw i32 2129859010, %927
  %929 = bitcast i32 %928 to float
  %930 = bitcast float %923 to i32
  %931 = sub nsw i32 2129859010, %930
  %932 = bitcast i32 %931 to float
  %933 = fmul fast float %926, %915
  %934 = fmul fast float %929, %916
  %935 = fmul fast float %932, %917
  %936 = call float @dx.op.dot3.f32(i32 55, float %933, float %934, float %935, float %425, float %426, float %427)  ; Dot3(ax,ay,az,bx,by,bz)
  %937 = fmul fast float %936, 4.000000e+01
  %938 = fsub fast float 1.000000e+00, %937
  %939 = call float @dx.op.unary.f32(i32 7, float %938)  ; Saturate(value)
  %940 = call float @dx.op.binary.f32(i32 35, float %859, float %939)  ; FMax(a,b)
  %941 = fsub fast float %829, %112
  %942 = fsub fast float %830, %113
  %943 = fsub fast float %831, %114
  %944 = call float @dx.op.unary.f32(i32 6, float %941)  ; FAbs(value)
  %945 = call float @dx.op.unary.f32(i32 6, float %942)  ; FAbs(value)
  %946 = call float @dx.op.unary.f32(i32 6, float %943)  ; FAbs(value)
  %947 = bitcast float %944 to i32
  %948 = sub nsw i32 2129859010, %947
  %949 = bitcast i32 %948 to float
  %950 = bitcast float %945 to i32
  %951 = sub nsw i32 2129859010, %950
  %952 = bitcast i32 %951 to float
  %953 = bitcast float %946 to i32
  %954 = sub nsw i32 2129859010, %953
  %955 = bitcast i32 %954 to float
  %956 = fmul fast float %949, 0x3F40041600000000
  %957 = fmul fast float %952, 0x3F40041600000000
  %958 = fmul fast float %955, 0x3F40041600000000
  %959 = fsub fast float 1.000000e+00, %956
  %960 = fsub fast float 1.000000e+00, %957
  %961 = fsub fast float 1.000000e+00, %958
  %962 = call float @dx.op.unary.f32(i32 7, float %959)  ; Saturate(value)
  %963 = call float @dx.op.unary.f32(i32 7, float %960)  ; Saturate(value)
  %964 = call float @dx.op.unary.f32(i32 7, float %961)  ; Saturate(value)
  %965 = call float @dx.op.binary.f32(i32 36, float %526, float %962)  ; FMin(a,b)
  %966 = call float @dx.op.binary.f32(i32 36, float %526, float %963)  ; FMin(a,b)
  %967 = call float @dx.op.binary.f32(i32 36, float %526, float %964)  ; FMin(a,b)
  %968 = fmul fast float %965, %941
  %969 = fmul fast float %966, %942
  %970 = fmul fast float %967, %943
  %971 = fadd fast float %968, %112
  %972 = fadd fast float %969, %113
  %973 = fadd fast float %970, %114
  %974 = fadd fast float %120, 0x3FD5555560000000
  %975 = fmul fast float %974, %940
  %976 = call float @dx.op.unary.f32(i32 7, float %975)  ; Saturate(value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %971)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %972)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %973)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %976)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

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
!4 = !{!5, null, !11, !14}
!5 = !{!6, !8, !9, !10}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 2, i32 0, !7}
!11 = !{!12, !13}
!12 = !{i32 0, %perObject* undef, !"", i32 0, i32 1, i32 1, i32 64, null}
!13 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 112, null}
!14 = !{!15}
!15 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!16 = !{[8 x i32] [i32 6, i32 4, i32 0, i32 0, i32 0, i32 0, i32 15, i32 15]}
!17 = !{void ()* @ps_main, !"ps_main", !18, !4, null}
!18 = !{!19, !24, null}
!19 = !{!20, !22}
!20 = !{i32 0, !"SV_Position", i8 9, i8 3, !21, i8 4, i32 1, i8 4, i32 0, i8 0, null}
!21 = !{i32 0}
!22 = !{i32 1, !"TEXCOORDS", i8 9, i8 0, !21, i8 2, i32 1, i8 2, i32 1, i8 0, !23}
!23 = !{i32 3, i32 3}
!24 = !{!25}
!25 = !{i32 0, !"SV_Target", i8 9, i8 16, !21, i8 0, i32 1, i8 4, i32 0, i8 0, !26}
!26 = !{i32 3, i32 15}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 1}

