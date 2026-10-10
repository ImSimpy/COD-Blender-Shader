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
; shader hash: d583570b831df684c5d9ea4fb7bb8b6d
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
  %6 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7 = extractvalue %dx.types.CBufRet.f32 %6, 0
  %8 = extractvalue %dx.types.CBufRet.f32 %6, 1
  %9 = fsub fast float %4, %7
  %10 = fsub fast float %5, %8
  %11 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %9, float %10, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %12 = extractvalue %dx.types.ResRet.f32 %11, 0
  %13 = extractvalue %dx.types.ResRet.f32 %11, 1
  %14 = extractvalue %dx.types.ResRet.f32 %11, 2
  %15 = extractvalue %dx.types.ResRet.f32 %11, 3
  %16 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %17 = extractvalue %dx.types.CBufRet.f32 %16, 2
  %18 = extractvalue %dx.types.CBufRet.f32 %16, 3
  %19 = fsub fast float %4, %17
  %20 = fsub fast float %5, %18
  %21 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %19, float %20, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %22 = extractvalue %dx.types.ResRet.f32 %21, 0
  %23 = extractvalue %dx.types.ResRet.f32 %21, 1
  %24 = extractvalue %dx.types.ResRet.f32 %21, 2
  %25 = extractvalue %dx.types.ResRet.f32 %21, 3
  %26 = extractvalue %dx.types.CBufRet.f32 %16, 0
  %27 = extractvalue %dx.types.CBufRet.f32 %16, 1
  %28 = fsub fast float %4, %26
  %29 = fsub fast float %5, %27
  %30 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %28, float %29, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %31 = extractvalue %dx.types.ResRet.f32 %30, 0
  %32 = extractvalue %dx.types.ResRet.f32 %30, 1
  %33 = extractvalue %dx.types.ResRet.f32 %30, 2
  %34 = extractvalue %dx.types.ResRet.f32 %30, 3
  %35 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %36 = extractvalue %dx.types.CBufRet.f32 %35, 2
  %37 = extractvalue %dx.types.CBufRet.f32 %35, 3
  %38 = fsub fast float %4, %36
  %39 = fsub fast float %5, %37
  %40 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %38, float %39, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %41 = extractvalue %dx.types.ResRet.f32 %40, 0
  %42 = extractvalue %dx.types.ResRet.f32 %40, 1
  %43 = extractvalue %dx.types.ResRet.f32 %40, 2
  %44 = extractvalue %dx.types.ResRet.f32 %40, 3
  %45 = extractvalue %dx.types.CBufRet.f32 %35, 0
  %46 = extractvalue %dx.types.CBufRet.f32 %35, 1
  %47 = fsub fast float %4, %45
  %48 = fsub fast float %5, %46
  %49 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %47, float %48, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %50 = extractvalue %dx.types.ResRet.f32 %49, 0
  %51 = extractvalue %dx.types.ResRet.f32 %49, 1
  %52 = extractvalue %dx.types.ResRet.f32 %49, 2
  %53 = extractvalue %dx.types.ResRet.f32 %49, 3
  %54 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %55 = extractvalue %dx.types.CBufRet.f32 %54, 2
  %56 = extractvalue %dx.types.CBufRet.f32 %54, 3
  %57 = fsub fast float %4, %55
  %58 = fsub fast float %5, %56
  %59 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %57, float %58, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %60 = extractvalue %dx.types.ResRet.f32 %59, 0
  %61 = extractvalue %dx.types.ResRet.f32 %59, 1
  %62 = extractvalue %dx.types.ResRet.f32 %59, 2
  %63 = extractvalue %dx.types.ResRet.f32 %59, 3
  %64 = extractvalue %dx.types.CBufRet.f32 %54, 0
  %65 = extractvalue %dx.types.CBufRet.f32 %54, 1
  %66 = fsub fast float %4, %64
  %67 = fsub fast float %5, %65
  %68 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %66, float %67, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %69 = extractvalue %dx.types.ResRet.f32 %68, 0
  %70 = extractvalue %dx.types.ResRet.f32 %68, 1
  %71 = extractvalue %dx.types.ResRet.f32 %68, 2
  %72 = extractvalue %dx.types.ResRet.f32 %68, 3
  %73 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %74 = extractvalue %dx.types.CBufRet.f32 %73, 2
  %75 = extractvalue %dx.types.CBufRet.f32 %73, 3
  %76 = fsub fast float %4, %74
  %77 = fsub fast float %5, %75
  %78 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %76, float %77, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %79 = extractvalue %dx.types.ResRet.f32 %78, 0
  %80 = extractvalue %dx.types.ResRet.f32 %78, 1
  %81 = extractvalue %dx.types.ResRet.f32 %78, 2
  %82 = extractvalue %dx.types.ResRet.f32 %78, 3
  %83 = extractvalue %dx.types.CBufRet.f32 %73, 0
  %84 = extractvalue %dx.types.CBufRet.f32 %73, 1
  %85 = fsub fast float %4, %83
  %86 = fsub fast float %5, %84
  %87 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %85, float %86, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %88 = extractvalue %dx.types.ResRet.f32 %87, 0
  %89 = extractvalue %dx.types.ResRet.f32 %87, 1
  %90 = extractvalue %dx.types.ResRet.f32 %87, 2
  %91 = extractvalue %dx.types.ResRet.f32 %87, 3
  %92 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %93 = extractvalue %dx.types.CBufRet.f32 %92, 2
  %94 = extractvalue %dx.types.CBufRet.f32 %92, 3
  %95 = fsub fast float %4, %93
  %96 = fsub fast float %5, %94
  %97 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %95, float %96, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %98 = extractvalue %dx.types.ResRet.f32 %97, 0
  %99 = extractvalue %dx.types.ResRet.f32 %97, 1
  %100 = extractvalue %dx.types.ResRet.f32 %97, 2
  %101 = extractvalue %dx.types.ResRet.f32 %97, 3
  %102 = extractvalue %dx.types.CBufRet.f32 %92, 0
  %103 = extractvalue %dx.types.CBufRet.f32 %92, 1
  %104 = fsub fast float %4, %102
  %105 = fsub fast float %5, %103
  %106 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %104, float %105, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %107 = extractvalue %dx.types.ResRet.f32 %106, 0
  %108 = extractvalue %dx.types.ResRet.f32 %106, 1
  %109 = extractvalue %dx.types.ResRet.f32 %106, 2
  %110 = extractvalue %dx.types.ResRet.f32 %106, 3
  %111 = fadd fast float %102, %4
  %112 = fadd fast float %103, %5
  %113 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %111, float %112, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %114 = extractvalue %dx.types.ResRet.f32 %113, 0
  %115 = extractvalue %dx.types.ResRet.f32 %113, 1
  %116 = extractvalue %dx.types.ResRet.f32 %113, 2
  %117 = extractvalue %dx.types.ResRet.f32 %113, 3
  %118 = fadd fast float %93, %4
  %119 = fadd fast float %94, %5
  %120 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %118, float %119, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %121 = extractvalue %dx.types.ResRet.f32 %120, 0
  %122 = extractvalue %dx.types.ResRet.f32 %120, 1
  %123 = extractvalue %dx.types.ResRet.f32 %120, 2
  %124 = extractvalue %dx.types.ResRet.f32 %120, 3
  %125 = fadd fast float %83, %4
  %126 = fadd fast float %84, %5
  %127 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %125, float %126, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %128 = extractvalue %dx.types.ResRet.f32 %127, 0
  %129 = extractvalue %dx.types.ResRet.f32 %127, 1
  %130 = extractvalue %dx.types.ResRet.f32 %127, 2
  %131 = extractvalue %dx.types.ResRet.f32 %127, 3
  %132 = fadd fast float %74, %4
  %133 = fadd fast float %75, %5
  %134 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %132, float %133, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %135 = extractvalue %dx.types.ResRet.f32 %134, 0
  %136 = extractvalue %dx.types.ResRet.f32 %134, 1
  %137 = extractvalue %dx.types.ResRet.f32 %134, 2
  %138 = extractvalue %dx.types.ResRet.f32 %134, 3
  %139 = fadd fast float %64, %4
  %140 = fadd fast float %65, %5
  %141 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %139, float %140, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %142 = extractvalue %dx.types.ResRet.f32 %141, 0
  %143 = extractvalue %dx.types.ResRet.f32 %141, 1
  %144 = extractvalue %dx.types.ResRet.f32 %141, 2
  %145 = extractvalue %dx.types.ResRet.f32 %141, 3
  %146 = fadd fast float %55, %4
  %147 = fadd fast float %56, %5
  %148 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %146, float %147, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %149 = extractvalue %dx.types.ResRet.f32 %148, 0
  %150 = extractvalue %dx.types.ResRet.f32 %148, 1
  %151 = extractvalue %dx.types.ResRet.f32 %148, 2
  %152 = extractvalue %dx.types.ResRet.f32 %148, 3
  %153 = fadd fast float %45, %4
  %154 = fadd fast float %46, %5
  %155 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %153, float %154, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %156 = extractvalue %dx.types.ResRet.f32 %155, 0
  %157 = extractvalue %dx.types.ResRet.f32 %155, 1
  %158 = extractvalue %dx.types.ResRet.f32 %155, 2
  %159 = extractvalue %dx.types.ResRet.f32 %155, 3
  %160 = fadd fast float %36, %4
  %161 = fadd fast float %37, %5
  %162 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %160, float %161, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %163 = extractvalue %dx.types.ResRet.f32 %162, 0
  %164 = extractvalue %dx.types.ResRet.f32 %162, 1
  %165 = extractvalue %dx.types.ResRet.f32 %162, 2
  %166 = extractvalue %dx.types.ResRet.f32 %162, 3
  %167 = fadd fast float %26, %4
  %168 = fadd fast float %27, %5
  %169 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %167, float %168, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %170 = extractvalue %dx.types.ResRet.f32 %169, 0
  %171 = extractvalue %dx.types.ResRet.f32 %169, 1
  %172 = extractvalue %dx.types.ResRet.f32 %169, 2
  %173 = extractvalue %dx.types.ResRet.f32 %169, 3
  %174 = fadd fast float %17, %4
  %175 = fadd fast float %18, %5
  %176 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %174, float %175, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %177 = extractvalue %dx.types.ResRet.f32 %176, 0
  %178 = extractvalue %dx.types.ResRet.f32 %176, 1
  %179 = extractvalue %dx.types.ResRet.f32 %176, 2
  %180 = extractvalue %dx.types.ResRet.f32 %176, 3
  %181 = fadd fast float %7, %4
  %182 = fadd fast float %8, %5
  %183 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %181, float %182, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %184 = extractvalue %dx.types.ResRet.f32 %183, 0
  %185 = extractvalue %dx.types.ResRet.f32 %183, 1
  %186 = extractvalue %dx.types.ResRet.f32 %183, 2
  %187 = extractvalue %dx.types.ResRet.f32 %183, 3
  %188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %189 = extractvalue %dx.types.CBufRet.f32 %188, 0
  %190 = fadd fast float %114, %107
  %191 = fadd fast float %115, %108
  %192 = fadd fast float %116, %109
  %193 = fadd fast float %117, %110
  %194 = fmul fast float %189, %190
  %195 = fmul fast float %189, %191
  %196 = fmul fast float %189, %192
  %197 = fmul fast float %189, %193
  %198 = extractvalue %dx.types.CBufRet.f32 %188, 1
  %199 = fadd fast float %121, %98
  %200 = fadd fast float %122, %99
  %201 = fadd fast float %123, %100
  %202 = fadd fast float %124, %101
  %203 = fmul fast float %198, %199
  %204 = fmul fast float %198, %200
  %205 = fmul fast float %198, %201
  %206 = fmul fast float %198, %202
  %207 = fadd fast float %203, %194
  %208 = fadd fast float %204, %195
  %209 = fadd fast float %205, %196
  %210 = fadd fast float %206, %197
  %211 = extractvalue %dx.types.CBufRet.f32 %188, 2
  %212 = fadd fast float %128, %88
  %213 = fadd fast float %129, %89
  %214 = fadd fast float %130, %90
  %215 = fadd fast float %131, %91
  %216 = fmul fast float %211, %212
  %217 = fmul fast float %211, %213
  %218 = fmul fast float %211, %214
  %219 = fmul fast float %211, %215
  %220 = fadd fast float %207, %216
  %221 = fadd fast float %208, %217
  %222 = fadd fast float %209, %218
  %223 = fadd fast float %210, %219
  %224 = extractvalue %dx.types.CBufRet.f32 %188, 3
  %225 = fadd fast float %135, %79
  %226 = fadd fast float %136, %80
  %227 = fadd fast float %137, %81
  %228 = fadd fast float %138, %82
  %229 = fmul fast float %224, %225
  %230 = fmul fast float %224, %226
  %231 = fmul fast float %224, %227
  %232 = fmul fast float %224, %228
  %233 = fadd fast float %220, %229
  %234 = fadd fast float %221, %230
  %235 = fadd fast float %222, %231
  %236 = fadd fast float %223, %232
  %237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %238 = extractvalue %dx.types.CBufRet.f32 %237, 0
  %239 = fadd fast float %142, %69
  %240 = fadd fast float %143, %70
  %241 = fadd fast float %144, %71
  %242 = fadd fast float %145, %72
  %243 = fmul fast float %238, %239
  %244 = fmul fast float %238, %240
  %245 = fmul fast float %238, %241
  %246 = fmul fast float %238, %242
  %247 = fadd fast float %233, %243
  %248 = fadd fast float %234, %244
  %249 = fadd fast float %235, %245
  %250 = fadd fast float %236, %246
  %251 = extractvalue %dx.types.CBufRet.f32 %237, 1
  %252 = fadd fast float %149, %60
  %253 = fadd fast float %150, %61
  %254 = fadd fast float %151, %62
  %255 = fadd fast float %152, %63
  %256 = fmul fast float %251, %252
  %257 = fmul fast float %251, %253
  %258 = fmul fast float %251, %254
  %259 = fmul fast float %251, %255
  %260 = fadd fast float %247, %256
  %261 = fadd fast float %248, %257
  %262 = fadd fast float %249, %258
  %263 = fadd fast float %250, %259
  %264 = extractvalue %dx.types.CBufRet.f32 %237, 2
  %265 = fadd fast float %156, %50
  %266 = fadd fast float %157, %51
  %267 = fadd fast float %158, %52
  %268 = fadd fast float %159, %53
  %269 = fmul fast float %264, %265
  %270 = fmul fast float %264, %266
  %271 = fmul fast float %264, %267
  %272 = fmul fast float %264, %268
  %273 = fadd fast float %260, %269
  %274 = fadd fast float %261, %270
  %275 = fadd fast float %262, %271
  %276 = fadd fast float %263, %272
  %277 = extractvalue %dx.types.CBufRet.f32 %237, 3
  %278 = fadd fast float %163, %41
  %279 = fadd fast float %164, %42
  %280 = fadd fast float %165, %43
  %281 = fadd fast float %166, %44
  %282 = fmul fast float %277, %278
  %283 = fmul fast float %277, %279
  %284 = fmul fast float %277, %280
  %285 = fmul fast float %277, %281
  %286 = fadd fast float %273, %282
  %287 = fadd fast float %274, %283
  %288 = fadd fast float %275, %284
  %289 = fadd fast float %276, %285
  %290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %291 = extractvalue %dx.types.CBufRet.f32 %290, 0
  %292 = fadd fast float %170, %31
  %293 = fadd fast float %171, %32
  %294 = fadd fast float %172, %33
  %295 = fadd fast float %173, %34
  %296 = fmul fast float %291, %292
  %297 = fmul fast float %291, %293
  %298 = fmul fast float %291, %294
  %299 = fmul fast float %291, %295
  %300 = fadd fast float %286, %296
  %301 = fadd fast float %287, %297
  %302 = fadd fast float %288, %298
  %303 = fadd fast float %289, %299
  %304 = extractvalue %dx.types.CBufRet.f32 %290, 1
  %305 = fadd fast float %177, %22
  %306 = fadd fast float %178, %23
  %307 = fadd fast float %179, %24
  %308 = fadd fast float %180, %25
  %309 = fmul fast float %304, %305
  %310 = fmul fast float %304, %306
  %311 = fmul fast float %304, %307
  %312 = fmul fast float %304, %308
  %313 = fadd fast float %300, %309
  %314 = fadd fast float %301, %310
  %315 = fadd fast float %302, %311
  %316 = fadd fast float %303, %312
  %317 = extractvalue %dx.types.CBufRet.f32 %290, 2
  %318 = fadd fast float %184, %12
  %319 = fadd fast float %185, %13
  %320 = fadd fast float %186, %14
  %321 = fadd fast float %187, %15
  %322 = fmul fast float %317, %318
  %323 = fmul fast float %317, %319
  %324 = fmul fast float %317, %320
  %325 = fmul fast float %317, %321
  %326 = fadd fast float %313, %322
  %327 = fadd fast float %314, %323
  %328 = fadd fast float %315, %324
  %329 = fadd fast float %316, %325
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %326)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %327)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %328)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %329)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

