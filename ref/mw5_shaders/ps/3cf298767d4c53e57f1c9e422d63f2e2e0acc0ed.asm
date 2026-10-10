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
; shader hash: 216ff2457c7d2df4e8424871cfa6deee
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
;   [192 x i8] (type annotation not present)
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
%perObject = type { [12 x <4 x float>] }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %5 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %6 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %7 = extractvalue %dx.types.CBufRet.f32 %6, 2
  %8 = extractvalue %dx.types.CBufRet.f32 %6, 3
  %9 = fsub fast float %4, %7
  %10 = fsub fast float %5, %8
  %11 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %9, float %10, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %12 = extractvalue %dx.types.ResRet.f32 %11, 0
  %13 = extractvalue %dx.types.ResRet.f32 %11, 1
  %14 = extractvalue %dx.types.ResRet.f32 %11, 2
  %15 = extractvalue %dx.types.ResRet.f32 %11, 3
  %16 = extractvalue %dx.types.CBufRet.f32 %6, 0
  %17 = extractvalue %dx.types.CBufRet.f32 %6, 1
  %18 = fsub fast float %4, %16
  %19 = fsub fast float %5, %17
  %20 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %18, float %19, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %21 = extractvalue %dx.types.ResRet.f32 %20, 0
  %22 = extractvalue %dx.types.ResRet.f32 %20, 1
  %23 = extractvalue %dx.types.ResRet.f32 %20, 2
  %24 = extractvalue %dx.types.ResRet.f32 %20, 3
  %25 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %26 = extractvalue %dx.types.CBufRet.f32 %25, 2
  %27 = extractvalue %dx.types.CBufRet.f32 %25, 3
  %28 = fsub fast float %4, %26
  %29 = fsub fast float %5, %27
  %30 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %28, float %29, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %31 = extractvalue %dx.types.ResRet.f32 %30, 0
  %32 = extractvalue %dx.types.ResRet.f32 %30, 1
  %33 = extractvalue %dx.types.ResRet.f32 %30, 2
  %34 = extractvalue %dx.types.ResRet.f32 %30, 3
  %35 = extractvalue %dx.types.CBufRet.f32 %25, 0
  %36 = extractvalue %dx.types.CBufRet.f32 %25, 1
  %37 = fsub fast float %4, %35
  %38 = fsub fast float %5, %36
  %39 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %37, float %38, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %40 = extractvalue %dx.types.ResRet.f32 %39, 0
  %41 = extractvalue %dx.types.ResRet.f32 %39, 1
  %42 = extractvalue %dx.types.ResRet.f32 %39, 2
  %43 = extractvalue %dx.types.ResRet.f32 %39, 3
  %44 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %45 = extractvalue %dx.types.CBufRet.f32 %44, 2
  %46 = extractvalue %dx.types.CBufRet.f32 %44, 3
  %47 = fsub fast float %4, %45
  %48 = fsub fast float %5, %46
  %49 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %47, float %48, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %50 = extractvalue %dx.types.ResRet.f32 %49, 0
  %51 = extractvalue %dx.types.ResRet.f32 %49, 1
  %52 = extractvalue %dx.types.ResRet.f32 %49, 2
  %53 = extractvalue %dx.types.ResRet.f32 %49, 3
  %54 = extractvalue %dx.types.CBufRet.f32 %44, 0
  %55 = extractvalue %dx.types.CBufRet.f32 %44, 1
  %56 = fsub fast float %4, %54
  %57 = fsub fast float %5, %55
  %58 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %56, float %57, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %59 = extractvalue %dx.types.ResRet.f32 %58, 0
  %60 = extractvalue %dx.types.ResRet.f32 %58, 1
  %61 = extractvalue %dx.types.ResRet.f32 %58, 2
  %62 = extractvalue %dx.types.ResRet.f32 %58, 3
  %63 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %64 = extractvalue %dx.types.CBufRet.f32 %63, 2
  %65 = extractvalue %dx.types.CBufRet.f32 %63, 3
  %66 = fsub fast float %4, %64
  %67 = fsub fast float %5, %65
  %68 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %66, float %67, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %69 = extractvalue %dx.types.ResRet.f32 %68, 0
  %70 = extractvalue %dx.types.ResRet.f32 %68, 1
  %71 = extractvalue %dx.types.ResRet.f32 %68, 2
  %72 = extractvalue %dx.types.ResRet.f32 %68, 3
  %73 = extractvalue %dx.types.CBufRet.f32 %63, 0
  %74 = extractvalue %dx.types.CBufRet.f32 %63, 1
  %75 = fsub fast float %4, %73
  %76 = fsub fast float %5, %74
  %77 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %75, float %76, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %78 = extractvalue %dx.types.ResRet.f32 %77, 0
  %79 = extractvalue %dx.types.ResRet.f32 %77, 1
  %80 = extractvalue %dx.types.ResRet.f32 %77, 2
  %81 = extractvalue %dx.types.ResRet.f32 %77, 3
  %82 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %83 = extractvalue %dx.types.CBufRet.f32 %82, 2
  %84 = extractvalue %dx.types.CBufRet.f32 %82, 3
  %85 = fsub fast float %4, %83
  %86 = fsub fast float %5, %84
  %87 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %85, float %86, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %88 = extractvalue %dx.types.ResRet.f32 %87, 0
  %89 = extractvalue %dx.types.ResRet.f32 %87, 1
  %90 = extractvalue %dx.types.ResRet.f32 %87, 2
  %91 = extractvalue %dx.types.ResRet.f32 %87, 3
  %92 = extractvalue %dx.types.CBufRet.f32 %82, 0
  %93 = extractvalue %dx.types.CBufRet.f32 %82, 1
  %94 = fsub fast float %4, %92
  %95 = fsub fast float %5, %93
  %96 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %94, float %95, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %97 = extractvalue %dx.types.ResRet.f32 %96, 0
  %98 = extractvalue %dx.types.ResRet.f32 %96, 1
  %99 = extractvalue %dx.types.ResRet.f32 %96, 2
  %100 = extractvalue %dx.types.ResRet.f32 %96, 3
  %101 = fadd fast float %92, %4
  %102 = fadd fast float %93, %5
  %103 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %101, float %102, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %104 = extractvalue %dx.types.ResRet.f32 %103, 0
  %105 = extractvalue %dx.types.ResRet.f32 %103, 1
  %106 = extractvalue %dx.types.ResRet.f32 %103, 2
  %107 = extractvalue %dx.types.ResRet.f32 %103, 3
  %108 = fadd fast float %83, %4
  %109 = fadd fast float %84, %5
  %110 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %108, float %109, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %111 = extractvalue %dx.types.ResRet.f32 %110, 0
  %112 = extractvalue %dx.types.ResRet.f32 %110, 1
  %113 = extractvalue %dx.types.ResRet.f32 %110, 2
  %114 = extractvalue %dx.types.ResRet.f32 %110, 3
  %115 = fadd fast float %73, %4
  %116 = fadd fast float %74, %5
  %117 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %115, float %116, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %118 = extractvalue %dx.types.ResRet.f32 %117, 0
  %119 = extractvalue %dx.types.ResRet.f32 %117, 1
  %120 = extractvalue %dx.types.ResRet.f32 %117, 2
  %121 = extractvalue %dx.types.ResRet.f32 %117, 3
  %122 = fadd fast float %64, %4
  %123 = fadd fast float %65, %5
  %124 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %122, float %123, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %125 = extractvalue %dx.types.ResRet.f32 %124, 0
  %126 = extractvalue %dx.types.ResRet.f32 %124, 1
  %127 = extractvalue %dx.types.ResRet.f32 %124, 2
  %128 = extractvalue %dx.types.ResRet.f32 %124, 3
  %129 = fadd fast float %54, %4
  %130 = fadd fast float %55, %5
  %131 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %129, float %130, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %132 = extractvalue %dx.types.ResRet.f32 %131, 0
  %133 = extractvalue %dx.types.ResRet.f32 %131, 1
  %134 = extractvalue %dx.types.ResRet.f32 %131, 2
  %135 = extractvalue %dx.types.ResRet.f32 %131, 3
  %136 = fadd fast float %45, %4
  %137 = fadd fast float %46, %5
  %138 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %136, float %137, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %139 = extractvalue %dx.types.ResRet.f32 %138, 0
  %140 = extractvalue %dx.types.ResRet.f32 %138, 1
  %141 = extractvalue %dx.types.ResRet.f32 %138, 2
  %142 = extractvalue %dx.types.ResRet.f32 %138, 3
  %143 = fadd fast float %35, %4
  %144 = fadd fast float %36, %5
  %145 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %143, float %144, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %146 = extractvalue %dx.types.ResRet.f32 %145, 0
  %147 = extractvalue %dx.types.ResRet.f32 %145, 1
  %148 = extractvalue %dx.types.ResRet.f32 %145, 2
  %149 = extractvalue %dx.types.ResRet.f32 %145, 3
  %150 = fadd fast float %26, %4
  %151 = fadd fast float %27, %5
  %152 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %150, float %151, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %153 = extractvalue %dx.types.ResRet.f32 %152, 0
  %154 = extractvalue %dx.types.ResRet.f32 %152, 1
  %155 = extractvalue %dx.types.ResRet.f32 %152, 2
  %156 = extractvalue %dx.types.ResRet.f32 %152, 3
  %157 = fadd fast float %16, %4
  %158 = fadd fast float %17, %5
  %159 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %157, float %158, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %160 = extractvalue %dx.types.ResRet.f32 %159, 0
  %161 = extractvalue %dx.types.ResRet.f32 %159, 1
  %162 = extractvalue %dx.types.ResRet.f32 %159, 2
  %163 = extractvalue %dx.types.ResRet.f32 %159, 3
  %164 = fadd fast float %7, %4
  %165 = fadd fast float %8, %5
  %166 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %164, float %165, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %167 = extractvalue %dx.types.ResRet.f32 %166, 0
  %168 = extractvalue %dx.types.ResRet.f32 %166, 1
  %169 = extractvalue %dx.types.ResRet.f32 %166, 2
  %170 = extractvalue %dx.types.ResRet.f32 %166, 3
  %171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %172 = extractvalue %dx.types.CBufRet.f32 %171, 0
  %173 = fadd fast float %104, %97
  %174 = fadd fast float %105, %98
  %175 = fadd fast float %106, %99
  %176 = fadd fast float %107, %100
  %177 = fmul fast float %172, %173
  %178 = fmul fast float %172, %174
  %179 = fmul fast float %172, %175
  %180 = fmul fast float %172, %176
  %181 = extractvalue %dx.types.CBufRet.f32 %171, 1
  %182 = fadd fast float %111, %88
  %183 = fadd fast float %112, %89
  %184 = fadd fast float %113, %90
  %185 = fadd fast float %114, %91
  %186 = fmul fast float %181, %182
  %187 = fmul fast float %181, %183
  %188 = fmul fast float %181, %184
  %189 = fmul fast float %181, %185
  %190 = fadd fast float %186, %177
  %191 = fadd fast float %187, %178
  %192 = fadd fast float %188, %179
  %193 = fadd fast float %189, %180
  %194 = extractvalue %dx.types.CBufRet.f32 %171, 2
  %195 = fadd fast float %118, %78
  %196 = fadd fast float %119, %79
  %197 = fadd fast float %120, %80
  %198 = fadd fast float %121, %81
  %199 = fmul fast float %194, %195
  %200 = fmul fast float %194, %196
  %201 = fmul fast float %194, %197
  %202 = fmul fast float %194, %198
  %203 = fadd fast float %190, %199
  %204 = fadd fast float %191, %200
  %205 = fadd fast float %192, %201
  %206 = fadd fast float %193, %202
  %207 = extractvalue %dx.types.CBufRet.f32 %171, 3
  %208 = fadd fast float %125, %69
  %209 = fadd fast float %126, %70
  %210 = fadd fast float %127, %71
  %211 = fadd fast float %128, %72
  %212 = fmul fast float %207, %208
  %213 = fmul fast float %207, %209
  %214 = fmul fast float %207, %210
  %215 = fmul fast float %207, %211
  %216 = fadd fast float %203, %212
  %217 = fadd fast float %204, %213
  %218 = fadd fast float %205, %214
  %219 = fadd fast float %206, %215
  %220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %221 = extractvalue %dx.types.CBufRet.f32 %220, 0
  %222 = fadd fast float %132, %59
  %223 = fadd fast float %133, %60
  %224 = fadd fast float %134, %61
  %225 = fadd fast float %135, %62
  %226 = fmul fast float %221, %222
  %227 = fmul fast float %221, %223
  %228 = fmul fast float %221, %224
  %229 = fmul fast float %221, %225
  %230 = fadd fast float %216, %226
  %231 = fadd fast float %217, %227
  %232 = fadd fast float %218, %228
  %233 = fadd fast float %219, %229
  %234 = extractvalue %dx.types.CBufRet.f32 %220, 1
  %235 = fadd fast float %139, %50
  %236 = fadd fast float %140, %51
  %237 = fadd fast float %141, %52
  %238 = fadd fast float %142, %53
  %239 = fmul fast float %234, %235
  %240 = fmul fast float %234, %236
  %241 = fmul fast float %234, %237
  %242 = fmul fast float %234, %238
  %243 = fadd fast float %230, %239
  %244 = fadd fast float %231, %240
  %245 = fadd fast float %232, %241
  %246 = fadd fast float %233, %242
  %247 = extractvalue %dx.types.CBufRet.f32 %220, 2
  %248 = fadd fast float %146, %40
  %249 = fadd fast float %147, %41
  %250 = fadd fast float %148, %42
  %251 = fadd fast float %149, %43
  %252 = fmul fast float %247, %248
  %253 = fmul fast float %247, %249
  %254 = fmul fast float %247, %250
  %255 = fmul fast float %247, %251
  %256 = fadd fast float %243, %252
  %257 = fadd fast float %244, %253
  %258 = fadd fast float %245, %254
  %259 = fadd fast float %246, %255
  %260 = extractvalue %dx.types.CBufRet.f32 %220, 3
  %261 = fadd fast float %153, %31
  %262 = fadd fast float %154, %32
  %263 = fadd fast float %155, %33
  %264 = fadd fast float %156, %34
  %265 = fmul fast float %260, %261
  %266 = fmul fast float %260, %262
  %267 = fmul fast float %260, %263
  %268 = fmul fast float %260, %264
  %269 = fadd fast float %256, %265
  %270 = fadd fast float %257, %266
  %271 = fadd fast float %258, %267
  %272 = fadd fast float %259, %268
  %273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %274 = extractvalue %dx.types.CBufRet.f32 %273, 0
  %275 = fadd fast float %160, %21
  %276 = fadd fast float %161, %22
  %277 = fadd fast float %162, %23
  %278 = fadd fast float %163, %24
  %279 = fmul fast float %274, %275
  %280 = fmul fast float %274, %276
  %281 = fmul fast float %274, %277
  %282 = fmul fast float %274, %278
  %283 = fadd fast float %269, %279
  %284 = fadd fast float %270, %280
  %285 = fadd fast float %271, %281
  %286 = fadd fast float %272, %282
  %287 = extractvalue %dx.types.CBufRet.f32 %273, 1
  %288 = fadd fast float %167, %12
  %289 = fadd fast float %168, %13
  %290 = fadd fast float %169, %14
  %291 = fadd fast float %170, %15
  %292 = fmul fast float %287, %288
  %293 = fmul fast float %287, %289
  %294 = fmul fast float %287, %290
  %295 = fmul fast float %287, %291
  %296 = fadd fast float %283, %292
  %297 = fadd fast float %284, %293
  %298 = fadd fast float %285, %294
  %299 = fadd fast float %286, %295
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %296)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %297)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %298)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %299)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
!9 = !{i32 0, %perObject* undef, !"", i32 0, i32 1, i32 1, i32 192, null}
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

