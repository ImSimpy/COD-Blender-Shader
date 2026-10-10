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
; shader hash: 4f36181b8d179512cd37a1fdf21b35cc
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
  %6 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
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
  %25 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
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
  %44 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
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
  %63 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
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
  %82 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
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
  %101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %102 = extractvalue %dx.types.CBufRet.f32 %101, 2
  %103 = extractvalue %dx.types.CBufRet.f32 %101, 3
  %104 = fsub fast float %4, %102
  %105 = fsub fast float %5, %103
  %106 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %104, float %105, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %107 = extractvalue %dx.types.ResRet.f32 %106, 0
  %108 = extractvalue %dx.types.ResRet.f32 %106, 1
  %109 = extractvalue %dx.types.ResRet.f32 %106, 2
  %110 = extractvalue %dx.types.ResRet.f32 %106, 3
  %111 = extractvalue %dx.types.CBufRet.f32 %101, 0
  %112 = extractvalue %dx.types.CBufRet.f32 %101, 1
  %113 = fsub fast float %4, %111
  %114 = fsub fast float %5, %112
  %115 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %113, float %114, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %116 = extractvalue %dx.types.ResRet.f32 %115, 0
  %117 = extractvalue %dx.types.ResRet.f32 %115, 1
  %118 = extractvalue %dx.types.ResRet.f32 %115, 2
  %119 = extractvalue %dx.types.ResRet.f32 %115, 3
  %120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %121 = extractvalue %dx.types.CBufRet.f32 %120, 2
  %122 = extractvalue %dx.types.CBufRet.f32 %120, 3
  %123 = fsub fast float %4, %121
  %124 = fsub fast float %5, %122
  %125 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %123, float %124, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %126 = extractvalue %dx.types.ResRet.f32 %125, 0
  %127 = extractvalue %dx.types.ResRet.f32 %125, 1
  %128 = extractvalue %dx.types.ResRet.f32 %125, 2
  %129 = extractvalue %dx.types.ResRet.f32 %125, 3
  %130 = extractvalue %dx.types.CBufRet.f32 %120, 0
  %131 = extractvalue %dx.types.CBufRet.f32 %120, 1
  %132 = fsub fast float %4, %130
  %133 = fsub fast float %5, %131
  %134 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %132, float %133, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %135 = extractvalue %dx.types.ResRet.f32 %134, 0
  %136 = extractvalue %dx.types.ResRet.f32 %134, 1
  %137 = extractvalue %dx.types.ResRet.f32 %134, 2
  %138 = extractvalue %dx.types.ResRet.f32 %134, 3
  %139 = fadd fast float %130, %4
  %140 = fadd fast float %131, %5
  %141 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %139, float %140, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %142 = extractvalue %dx.types.ResRet.f32 %141, 0
  %143 = extractvalue %dx.types.ResRet.f32 %141, 1
  %144 = extractvalue %dx.types.ResRet.f32 %141, 2
  %145 = extractvalue %dx.types.ResRet.f32 %141, 3
  %146 = fadd fast float %121, %4
  %147 = fadd fast float %122, %5
  %148 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %146, float %147, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %149 = extractvalue %dx.types.ResRet.f32 %148, 0
  %150 = extractvalue %dx.types.ResRet.f32 %148, 1
  %151 = extractvalue %dx.types.ResRet.f32 %148, 2
  %152 = extractvalue %dx.types.ResRet.f32 %148, 3
  %153 = fadd fast float %111, %4
  %154 = fadd fast float %112, %5
  %155 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %153, float %154, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %156 = extractvalue %dx.types.ResRet.f32 %155, 0
  %157 = extractvalue %dx.types.ResRet.f32 %155, 1
  %158 = extractvalue %dx.types.ResRet.f32 %155, 2
  %159 = extractvalue %dx.types.ResRet.f32 %155, 3
  %160 = fadd fast float %102, %4
  %161 = fadd fast float %103, %5
  %162 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %160, float %161, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %163 = extractvalue %dx.types.ResRet.f32 %162, 0
  %164 = extractvalue %dx.types.ResRet.f32 %162, 1
  %165 = extractvalue %dx.types.ResRet.f32 %162, 2
  %166 = extractvalue %dx.types.ResRet.f32 %162, 3
  %167 = fadd fast float %92, %4
  %168 = fadd fast float %93, %5
  %169 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %167, float %168, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %170 = extractvalue %dx.types.ResRet.f32 %169, 0
  %171 = extractvalue %dx.types.ResRet.f32 %169, 1
  %172 = extractvalue %dx.types.ResRet.f32 %169, 2
  %173 = extractvalue %dx.types.ResRet.f32 %169, 3
  %174 = fadd fast float %83, %4
  %175 = fadd fast float %84, %5
  %176 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %174, float %175, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %177 = extractvalue %dx.types.ResRet.f32 %176, 0
  %178 = extractvalue %dx.types.ResRet.f32 %176, 1
  %179 = extractvalue %dx.types.ResRet.f32 %176, 2
  %180 = extractvalue %dx.types.ResRet.f32 %176, 3
  %181 = fadd fast float %73, %4
  %182 = fadd fast float %74, %5
  %183 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %181, float %182, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %184 = extractvalue %dx.types.ResRet.f32 %183, 0
  %185 = extractvalue %dx.types.ResRet.f32 %183, 1
  %186 = extractvalue %dx.types.ResRet.f32 %183, 2
  %187 = extractvalue %dx.types.ResRet.f32 %183, 3
  %188 = fadd fast float %64, %4
  %189 = fadd fast float %65, %5
  %190 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %188, float %189, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %191 = extractvalue %dx.types.ResRet.f32 %190, 0
  %192 = extractvalue %dx.types.ResRet.f32 %190, 1
  %193 = extractvalue %dx.types.ResRet.f32 %190, 2
  %194 = extractvalue %dx.types.ResRet.f32 %190, 3
  %195 = fadd fast float %54, %4
  %196 = fadd fast float %55, %5
  %197 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %195, float %196, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %198 = extractvalue %dx.types.ResRet.f32 %197, 0
  %199 = extractvalue %dx.types.ResRet.f32 %197, 1
  %200 = extractvalue %dx.types.ResRet.f32 %197, 2
  %201 = extractvalue %dx.types.ResRet.f32 %197, 3
  %202 = fadd fast float %45, %4
  %203 = fadd fast float %46, %5
  %204 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %202, float %203, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %205 = extractvalue %dx.types.ResRet.f32 %204, 0
  %206 = extractvalue %dx.types.ResRet.f32 %204, 1
  %207 = extractvalue %dx.types.ResRet.f32 %204, 2
  %208 = extractvalue %dx.types.ResRet.f32 %204, 3
  %209 = fadd fast float %35, %4
  %210 = fadd fast float %36, %5
  %211 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %209, float %210, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %212 = extractvalue %dx.types.ResRet.f32 %211, 0
  %213 = extractvalue %dx.types.ResRet.f32 %211, 1
  %214 = extractvalue %dx.types.ResRet.f32 %211, 2
  %215 = extractvalue %dx.types.ResRet.f32 %211, 3
  %216 = fadd fast float %26, %4
  %217 = fadd fast float %27, %5
  %218 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %216, float %217, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %219 = extractvalue %dx.types.ResRet.f32 %218, 0
  %220 = extractvalue %dx.types.ResRet.f32 %218, 1
  %221 = extractvalue %dx.types.ResRet.f32 %218, 2
  %222 = extractvalue %dx.types.ResRet.f32 %218, 3
  %223 = fadd fast float %16, %4
  %224 = fadd fast float %17, %5
  %225 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %223, float %224, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %226 = extractvalue %dx.types.ResRet.f32 %225, 0
  %227 = extractvalue %dx.types.ResRet.f32 %225, 1
  %228 = extractvalue %dx.types.ResRet.f32 %225, 2
  %229 = extractvalue %dx.types.ResRet.f32 %225, 3
  %230 = fadd fast float %7, %4
  %231 = fadd fast float %8, %5
  %232 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %230, float %231, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %233 = extractvalue %dx.types.ResRet.f32 %232, 0
  %234 = extractvalue %dx.types.ResRet.f32 %232, 1
  %235 = extractvalue %dx.types.ResRet.f32 %232, 2
  %236 = extractvalue %dx.types.ResRet.f32 %232, 3
  %237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %238 = extractvalue %dx.types.CBufRet.f32 %237, 0
  %239 = fadd fast float %142, %135
  %240 = fadd fast float %143, %136
  %241 = fadd fast float %144, %137
  %242 = fadd fast float %145, %138
  %243 = fmul fast float %238, %239
  %244 = fmul fast float %238, %240
  %245 = fmul fast float %238, %241
  %246 = fmul fast float %238, %242
  %247 = extractvalue %dx.types.CBufRet.f32 %237, 1
  %248 = fadd fast float %149, %126
  %249 = fadd fast float %150, %127
  %250 = fadd fast float %151, %128
  %251 = fadd fast float %152, %129
  %252 = fmul fast float %247, %248
  %253 = fmul fast float %247, %249
  %254 = fmul fast float %247, %250
  %255 = fmul fast float %247, %251
  %256 = fadd fast float %252, %243
  %257 = fadd fast float %253, %244
  %258 = fadd fast float %254, %245
  %259 = fadd fast float %255, %246
  %260 = extractvalue %dx.types.CBufRet.f32 %237, 2
  %261 = fadd fast float %156, %116
  %262 = fadd fast float %157, %117
  %263 = fadd fast float %158, %118
  %264 = fadd fast float %159, %119
  %265 = fmul fast float %260, %261
  %266 = fmul fast float %260, %262
  %267 = fmul fast float %260, %263
  %268 = fmul fast float %260, %264
  %269 = fadd fast float %256, %265
  %270 = fadd fast float %257, %266
  %271 = fadd fast float %258, %267
  %272 = fadd fast float %259, %268
  %273 = extractvalue %dx.types.CBufRet.f32 %237, 3
  %274 = fadd fast float %163, %107
  %275 = fadd fast float %164, %108
  %276 = fadd fast float %165, %109
  %277 = fadd fast float %166, %110
  %278 = fmul fast float %273, %274
  %279 = fmul fast float %273, %275
  %280 = fmul fast float %273, %276
  %281 = fmul fast float %273, %277
  %282 = fadd fast float %269, %278
  %283 = fadd fast float %270, %279
  %284 = fadd fast float %271, %280
  %285 = fadd fast float %272, %281
  %286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %287 = extractvalue %dx.types.CBufRet.f32 %286, 0
  %288 = fadd fast float %170, %97
  %289 = fadd fast float %171, %98
  %290 = fadd fast float %172, %99
  %291 = fadd fast float %173, %100
  %292 = fmul fast float %287, %288
  %293 = fmul fast float %287, %289
  %294 = fmul fast float %287, %290
  %295 = fmul fast float %287, %291
  %296 = fadd fast float %282, %292
  %297 = fadd fast float %283, %293
  %298 = fadd fast float %284, %294
  %299 = fadd fast float %285, %295
  %300 = extractvalue %dx.types.CBufRet.f32 %286, 1
  %301 = fadd fast float %177, %88
  %302 = fadd fast float %178, %89
  %303 = fadd fast float %179, %90
  %304 = fadd fast float %180, %91
  %305 = fmul fast float %300, %301
  %306 = fmul fast float %300, %302
  %307 = fmul fast float %300, %303
  %308 = fmul fast float %300, %304
  %309 = fadd fast float %296, %305
  %310 = fadd fast float %297, %306
  %311 = fadd fast float %298, %307
  %312 = fadd fast float %299, %308
  %313 = extractvalue %dx.types.CBufRet.f32 %286, 2
  %314 = fadd fast float %184, %78
  %315 = fadd fast float %185, %79
  %316 = fadd fast float %186, %80
  %317 = fadd fast float %187, %81
  %318 = fmul fast float %313, %314
  %319 = fmul fast float %313, %315
  %320 = fmul fast float %313, %316
  %321 = fmul fast float %313, %317
  %322 = fadd fast float %309, %318
  %323 = fadd fast float %310, %319
  %324 = fadd fast float %311, %320
  %325 = fadd fast float %312, %321
  %326 = extractvalue %dx.types.CBufRet.f32 %286, 3
  %327 = fadd fast float %191, %69
  %328 = fadd fast float %192, %70
  %329 = fadd fast float %193, %71
  %330 = fadd fast float %194, %72
  %331 = fmul fast float %326, %327
  %332 = fmul fast float %326, %328
  %333 = fmul fast float %326, %329
  %334 = fmul fast float %326, %330
  %335 = fadd fast float %322, %331
  %336 = fadd fast float %323, %332
  %337 = fadd fast float %324, %333
  %338 = fadd fast float %325, %334
  %339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %340 = extractvalue %dx.types.CBufRet.f32 %339, 0
  %341 = fadd fast float %198, %59
  %342 = fadd fast float %199, %60
  %343 = fadd fast float %200, %61
  %344 = fadd fast float %201, %62
  %345 = fmul fast float %340, %341
  %346 = fmul fast float %340, %342
  %347 = fmul fast float %340, %343
  %348 = fmul fast float %340, %344
  %349 = fadd fast float %335, %345
  %350 = fadd fast float %336, %346
  %351 = fadd fast float %337, %347
  %352 = fadd fast float %338, %348
  %353 = extractvalue %dx.types.CBufRet.f32 %339, 1
  %354 = fadd fast float %205, %50
  %355 = fadd fast float %206, %51
  %356 = fadd fast float %207, %52
  %357 = fadd fast float %208, %53
  %358 = fmul fast float %353, %354
  %359 = fmul fast float %353, %355
  %360 = fmul fast float %353, %356
  %361 = fmul fast float %353, %357
  %362 = fadd fast float %349, %358
  %363 = fadd fast float %350, %359
  %364 = fadd fast float %351, %360
  %365 = fadd fast float %352, %361
  %366 = extractvalue %dx.types.CBufRet.f32 %339, 2
  %367 = fadd fast float %212, %40
  %368 = fadd fast float %213, %41
  %369 = fadd fast float %214, %42
  %370 = fadd fast float %215, %43
  %371 = fmul fast float %366, %367
  %372 = fmul fast float %366, %368
  %373 = fmul fast float %366, %369
  %374 = fmul fast float %366, %370
  %375 = fadd fast float %362, %371
  %376 = fadd fast float %363, %372
  %377 = fadd fast float %364, %373
  %378 = fadd fast float %365, %374
  %379 = extractvalue %dx.types.CBufRet.f32 %339, 3
  %380 = fadd fast float %219, %31
  %381 = fadd fast float %220, %32
  %382 = fadd fast float %221, %33
  %383 = fadd fast float %222, %34
  %384 = fmul fast float %379, %380
  %385 = fmul fast float %379, %381
  %386 = fmul fast float %379, %382
  %387 = fmul fast float %379, %383
  %388 = fadd fast float %375, %384
  %389 = fadd fast float %376, %385
  %390 = fadd fast float %377, %386
  %391 = fadd fast float %378, %387
  %392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %393 = extractvalue %dx.types.CBufRet.f32 %392, 0
  %394 = fadd fast float %226, %21
  %395 = fadd fast float %227, %22
  %396 = fadd fast float %228, %23
  %397 = fadd fast float %229, %24
  %398 = fmul fast float %393, %394
  %399 = fmul fast float %393, %395
  %400 = fmul fast float %393, %396
  %401 = fmul fast float %393, %397
  %402 = fadd fast float %388, %398
  %403 = fadd fast float %389, %399
  %404 = fadd fast float %390, %400
  %405 = fadd fast float %391, %401
  %406 = extractvalue %dx.types.CBufRet.f32 %392, 1
  %407 = fadd fast float %233, %12
  %408 = fadd fast float %234, %13
  %409 = fadd fast float %235, %14
  %410 = fadd fast float %236, %15
  %411 = fmul fast float %406, %407
  %412 = fmul fast float %406, %408
  %413 = fmul fast float %406, %409
  %414 = fmul fast float %406, %410
  %415 = fadd fast float %402, %411
  %416 = fadd fast float %403, %412
  %417 = fadd fast float %404, %413
  %418 = fadd fast float %405, %414
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %415)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %416)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %417)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %418)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

