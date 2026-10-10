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
; shader hash: 4d528d8d4a4300a75f6e68feafc71cf0
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
  %6 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
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
  %25 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
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
  %44 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
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
  %63 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
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
  %82 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
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
  %101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
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
  %120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
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
  %139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %140 = extractvalue %dx.types.CBufRet.f32 %139, 2
  %141 = extractvalue %dx.types.CBufRet.f32 %139, 3
  %142 = fsub fast float %4, %140
  %143 = fsub fast float %5, %141
  %144 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %142, float %143, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %145 = extractvalue %dx.types.ResRet.f32 %144, 0
  %146 = extractvalue %dx.types.ResRet.f32 %144, 1
  %147 = extractvalue %dx.types.ResRet.f32 %144, 2
  %148 = extractvalue %dx.types.ResRet.f32 %144, 3
  %149 = extractvalue %dx.types.CBufRet.f32 %139, 0
  %150 = extractvalue %dx.types.CBufRet.f32 %139, 1
  %151 = fsub fast float %4, %149
  %152 = fsub fast float %5, %150
  %153 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %151, float %152, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %154 = extractvalue %dx.types.ResRet.f32 %153, 0
  %155 = extractvalue %dx.types.ResRet.f32 %153, 1
  %156 = extractvalue %dx.types.ResRet.f32 %153, 2
  %157 = extractvalue %dx.types.ResRet.f32 %153, 3
  %158 = fadd fast float %149, %4
  %159 = fadd fast float %150, %5
  %160 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %158, float %159, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %161 = extractvalue %dx.types.ResRet.f32 %160, 0
  %162 = extractvalue %dx.types.ResRet.f32 %160, 1
  %163 = extractvalue %dx.types.ResRet.f32 %160, 2
  %164 = extractvalue %dx.types.ResRet.f32 %160, 3
  %165 = fadd fast float %140, %4
  %166 = fadd fast float %141, %5
  %167 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %165, float %166, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %168 = extractvalue %dx.types.ResRet.f32 %167, 0
  %169 = extractvalue %dx.types.ResRet.f32 %167, 1
  %170 = extractvalue %dx.types.ResRet.f32 %167, 2
  %171 = extractvalue %dx.types.ResRet.f32 %167, 3
  %172 = fadd fast float %130, %4
  %173 = fadd fast float %131, %5
  %174 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %172, float %173, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %175 = extractvalue %dx.types.ResRet.f32 %174, 0
  %176 = extractvalue %dx.types.ResRet.f32 %174, 1
  %177 = extractvalue %dx.types.ResRet.f32 %174, 2
  %178 = extractvalue %dx.types.ResRet.f32 %174, 3
  %179 = fadd fast float %121, %4
  %180 = fadd fast float %122, %5
  %181 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %179, float %180, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %182 = extractvalue %dx.types.ResRet.f32 %181, 0
  %183 = extractvalue %dx.types.ResRet.f32 %181, 1
  %184 = extractvalue %dx.types.ResRet.f32 %181, 2
  %185 = extractvalue %dx.types.ResRet.f32 %181, 3
  %186 = fadd fast float %111, %4
  %187 = fadd fast float %112, %5
  %188 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %186, float %187, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %189 = extractvalue %dx.types.ResRet.f32 %188, 0
  %190 = extractvalue %dx.types.ResRet.f32 %188, 1
  %191 = extractvalue %dx.types.ResRet.f32 %188, 2
  %192 = extractvalue %dx.types.ResRet.f32 %188, 3
  %193 = fadd fast float %102, %4
  %194 = fadd fast float %103, %5
  %195 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %193, float %194, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %196 = extractvalue %dx.types.ResRet.f32 %195, 0
  %197 = extractvalue %dx.types.ResRet.f32 %195, 1
  %198 = extractvalue %dx.types.ResRet.f32 %195, 2
  %199 = extractvalue %dx.types.ResRet.f32 %195, 3
  %200 = fadd fast float %92, %4
  %201 = fadd fast float %93, %5
  %202 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %200, float %201, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %203 = extractvalue %dx.types.ResRet.f32 %202, 0
  %204 = extractvalue %dx.types.ResRet.f32 %202, 1
  %205 = extractvalue %dx.types.ResRet.f32 %202, 2
  %206 = extractvalue %dx.types.ResRet.f32 %202, 3
  %207 = fadd fast float %83, %4
  %208 = fadd fast float %84, %5
  %209 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %207, float %208, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %210 = extractvalue %dx.types.ResRet.f32 %209, 0
  %211 = extractvalue %dx.types.ResRet.f32 %209, 1
  %212 = extractvalue %dx.types.ResRet.f32 %209, 2
  %213 = extractvalue %dx.types.ResRet.f32 %209, 3
  %214 = fadd fast float %73, %4
  %215 = fadd fast float %74, %5
  %216 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %214, float %215, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %217 = extractvalue %dx.types.ResRet.f32 %216, 0
  %218 = extractvalue %dx.types.ResRet.f32 %216, 1
  %219 = extractvalue %dx.types.ResRet.f32 %216, 2
  %220 = extractvalue %dx.types.ResRet.f32 %216, 3
  %221 = fadd fast float %64, %4
  %222 = fadd fast float %65, %5
  %223 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %221, float %222, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %224 = extractvalue %dx.types.ResRet.f32 %223, 0
  %225 = extractvalue %dx.types.ResRet.f32 %223, 1
  %226 = extractvalue %dx.types.ResRet.f32 %223, 2
  %227 = extractvalue %dx.types.ResRet.f32 %223, 3
  %228 = fadd fast float %54, %4
  %229 = fadd fast float %55, %5
  %230 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %228, float %229, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %231 = extractvalue %dx.types.ResRet.f32 %230, 0
  %232 = extractvalue %dx.types.ResRet.f32 %230, 1
  %233 = extractvalue %dx.types.ResRet.f32 %230, 2
  %234 = extractvalue %dx.types.ResRet.f32 %230, 3
  %235 = fadd fast float %45, %4
  %236 = fadd fast float %46, %5
  %237 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %235, float %236, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %238 = extractvalue %dx.types.ResRet.f32 %237, 0
  %239 = extractvalue %dx.types.ResRet.f32 %237, 1
  %240 = extractvalue %dx.types.ResRet.f32 %237, 2
  %241 = extractvalue %dx.types.ResRet.f32 %237, 3
  %242 = fadd fast float %35, %4
  %243 = fadd fast float %36, %5
  %244 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %242, float %243, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %245 = extractvalue %dx.types.ResRet.f32 %244, 0
  %246 = extractvalue %dx.types.ResRet.f32 %244, 1
  %247 = extractvalue %dx.types.ResRet.f32 %244, 2
  %248 = extractvalue %dx.types.ResRet.f32 %244, 3
  %249 = fadd fast float %26, %4
  %250 = fadd fast float %27, %5
  %251 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %249, float %250, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %252 = extractvalue %dx.types.ResRet.f32 %251, 0
  %253 = extractvalue %dx.types.ResRet.f32 %251, 1
  %254 = extractvalue %dx.types.ResRet.f32 %251, 2
  %255 = extractvalue %dx.types.ResRet.f32 %251, 3
  %256 = fadd fast float %16, %4
  %257 = fadd fast float %17, %5
  %258 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %256, float %257, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %259 = extractvalue %dx.types.ResRet.f32 %258, 0
  %260 = extractvalue %dx.types.ResRet.f32 %258, 1
  %261 = extractvalue %dx.types.ResRet.f32 %258, 2
  %262 = extractvalue %dx.types.ResRet.f32 %258, 3
  %263 = fadd fast float %7, %4
  %264 = fadd fast float %8, %5
  %265 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %263, float %264, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %266 = extractvalue %dx.types.ResRet.f32 %265, 0
  %267 = extractvalue %dx.types.ResRet.f32 %265, 1
  %268 = extractvalue %dx.types.ResRet.f32 %265, 2
  %269 = extractvalue %dx.types.ResRet.f32 %265, 3
  %270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %271 = extractvalue %dx.types.CBufRet.f32 %270, 0
  %272 = fadd fast float %161, %154
  %273 = fadd fast float %162, %155
  %274 = fadd fast float %163, %156
  %275 = fadd fast float %164, %157
  %276 = fmul fast float %271, %272
  %277 = fmul fast float %271, %273
  %278 = fmul fast float %271, %274
  %279 = fmul fast float %271, %275
  %280 = extractvalue %dx.types.CBufRet.f32 %270, 1
  %281 = fadd fast float %168, %145
  %282 = fadd fast float %169, %146
  %283 = fadd fast float %170, %147
  %284 = fadd fast float %171, %148
  %285 = fmul fast float %280, %281
  %286 = fmul fast float %280, %282
  %287 = fmul fast float %280, %283
  %288 = fmul fast float %280, %284
  %289 = fadd fast float %285, %276
  %290 = fadd fast float %286, %277
  %291 = fadd fast float %287, %278
  %292 = fadd fast float %288, %279
  %293 = extractvalue %dx.types.CBufRet.f32 %270, 2
  %294 = fadd fast float %175, %135
  %295 = fadd fast float %176, %136
  %296 = fadd fast float %177, %137
  %297 = fadd fast float %178, %138
  %298 = fmul fast float %293, %294
  %299 = fmul fast float %293, %295
  %300 = fmul fast float %293, %296
  %301 = fmul fast float %293, %297
  %302 = fadd fast float %289, %298
  %303 = fadd fast float %290, %299
  %304 = fadd fast float %291, %300
  %305 = fadd fast float %292, %301
  %306 = extractvalue %dx.types.CBufRet.f32 %270, 3
  %307 = fadd fast float %182, %126
  %308 = fadd fast float %183, %127
  %309 = fadd fast float %184, %128
  %310 = fadd fast float %185, %129
  %311 = fmul fast float %306, %307
  %312 = fmul fast float %306, %308
  %313 = fmul fast float %306, %309
  %314 = fmul fast float %306, %310
  %315 = fadd fast float %302, %311
  %316 = fadd fast float %303, %312
  %317 = fadd fast float %304, %313
  %318 = fadd fast float %305, %314
  %319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %320 = extractvalue %dx.types.CBufRet.f32 %319, 0
  %321 = fadd fast float %189, %116
  %322 = fadd fast float %190, %117
  %323 = fadd fast float %191, %118
  %324 = fadd fast float %192, %119
  %325 = fmul fast float %320, %321
  %326 = fmul fast float %320, %322
  %327 = fmul fast float %320, %323
  %328 = fmul fast float %320, %324
  %329 = fadd fast float %315, %325
  %330 = fadd fast float %316, %326
  %331 = fadd fast float %317, %327
  %332 = fadd fast float %318, %328
  %333 = extractvalue %dx.types.CBufRet.f32 %319, 1
  %334 = fadd fast float %196, %107
  %335 = fadd fast float %197, %108
  %336 = fadd fast float %198, %109
  %337 = fadd fast float %199, %110
  %338 = fmul fast float %333, %334
  %339 = fmul fast float %333, %335
  %340 = fmul fast float %333, %336
  %341 = fmul fast float %333, %337
  %342 = fadd fast float %329, %338
  %343 = fadd fast float %330, %339
  %344 = fadd fast float %331, %340
  %345 = fadd fast float %332, %341
  %346 = extractvalue %dx.types.CBufRet.f32 %319, 2
  %347 = fadd fast float %203, %97
  %348 = fadd fast float %204, %98
  %349 = fadd fast float %205, %99
  %350 = fadd fast float %206, %100
  %351 = fmul fast float %346, %347
  %352 = fmul fast float %346, %348
  %353 = fmul fast float %346, %349
  %354 = fmul fast float %346, %350
  %355 = fadd fast float %342, %351
  %356 = fadd fast float %343, %352
  %357 = fadd fast float %344, %353
  %358 = fadd fast float %345, %354
  %359 = extractvalue %dx.types.CBufRet.f32 %319, 3
  %360 = fadd fast float %210, %88
  %361 = fadd fast float %211, %89
  %362 = fadd fast float %212, %90
  %363 = fadd fast float %213, %91
  %364 = fmul fast float %359, %360
  %365 = fmul fast float %359, %361
  %366 = fmul fast float %359, %362
  %367 = fmul fast float %359, %363
  %368 = fadd fast float %355, %364
  %369 = fadd fast float %356, %365
  %370 = fadd fast float %357, %366
  %371 = fadd fast float %358, %367
  %372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %373 = extractvalue %dx.types.CBufRet.f32 %372, 0
  %374 = fadd fast float %217, %78
  %375 = fadd fast float %218, %79
  %376 = fadd fast float %219, %80
  %377 = fadd fast float %220, %81
  %378 = fmul fast float %373, %374
  %379 = fmul fast float %373, %375
  %380 = fmul fast float %373, %376
  %381 = fmul fast float %373, %377
  %382 = fadd fast float %368, %378
  %383 = fadd fast float %369, %379
  %384 = fadd fast float %370, %380
  %385 = fadd fast float %371, %381
  %386 = extractvalue %dx.types.CBufRet.f32 %372, 1
  %387 = fadd fast float %224, %69
  %388 = fadd fast float %225, %70
  %389 = fadd fast float %226, %71
  %390 = fadd fast float %227, %72
  %391 = fmul fast float %386, %387
  %392 = fmul fast float %386, %388
  %393 = fmul fast float %386, %389
  %394 = fmul fast float %386, %390
  %395 = fadd fast float %382, %391
  %396 = fadd fast float %383, %392
  %397 = fadd fast float %384, %393
  %398 = fadd fast float %385, %394
  %399 = extractvalue %dx.types.CBufRet.f32 %372, 2
  %400 = fadd fast float %231, %59
  %401 = fadd fast float %232, %60
  %402 = fadd fast float %233, %61
  %403 = fadd fast float %234, %62
  %404 = fmul fast float %399, %400
  %405 = fmul fast float %399, %401
  %406 = fmul fast float %399, %402
  %407 = fmul fast float %399, %403
  %408 = fadd fast float %395, %404
  %409 = fadd fast float %396, %405
  %410 = fadd fast float %397, %406
  %411 = fadd fast float %398, %407
  %412 = extractvalue %dx.types.CBufRet.f32 %372, 3
  %413 = fadd fast float %238, %50
  %414 = fadd fast float %239, %51
  %415 = fadd fast float %240, %52
  %416 = fadd fast float %241, %53
  %417 = fmul fast float %412, %413
  %418 = fmul fast float %412, %414
  %419 = fmul fast float %412, %415
  %420 = fmul fast float %412, %416
  %421 = fadd fast float %408, %417
  %422 = fadd fast float %409, %418
  %423 = fadd fast float %410, %419
  %424 = fadd fast float %411, %420
  %425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %426 = extractvalue %dx.types.CBufRet.f32 %425, 0
  %427 = fadd fast float %245, %40
  %428 = fadd fast float %246, %41
  %429 = fadd fast float %247, %42
  %430 = fadd fast float %248, %43
  %431 = fmul fast float %426, %427
  %432 = fmul fast float %426, %428
  %433 = fmul fast float %426, %429
  %434 = fmul fast float %426, %430
  %435 = fadd fast float %421, %431
  %436 = fadd fast float %422, %432
  %437 = fadd fast float %423, %433
  %438 = fadd fast float %424, %434
  %439 = extractvalue %dx.types.CBufRet.f32 %425, 1
  %440 = fadd fast float %252, %31
  %441 = fadd fast float %253, %32
  %442 = fadd fast float %254, %33
  %443 = fadd fast float %255, %34
  %444 = fmul fast float %439, %440
  %445 = fmul fast float %439, %441
  %446 = fmul fast float %439, %442
  %447 = fmul fast float %439, %443
  %448 = fadd fast float %435, %444
  %449 = fadd fast float %436, %445
  %450 = fadd fast float %437, %446
  %451 = fadd fast float %438, %447
  %452 = extractvalue %dx.types.CBufRet.f32 %425, 2
  %453 = fadd fast float %259, %21
  %454 = fadd fast float %260, %22
  %455 = fadd fast float %261, %23
  %456 = fadd fast float %262, %24
  %457 = fmul fast float %452, %453
  %458 = fmul fast float %452, %454
  %459 = fmul fast float %452, %455
  %460 = fmul fast float %452, %456
  %461 = fadd fast float %448, %457
  %462 = fadd fast float %449, %458
  %463 = fadd fast float %450, %459
  %464 = fadd fast float %451, %460
  %465 = fadd fast float %266, %12
  %466 = fadd fast float %267, %13
  %467 = fadd fast float %268, %14
  %468 = fadd fast float %269, %15
  %469 = fmul fast float %439, %465
  %470 = fmul fast float %439, %466
  %471 = fmul fast float %439, %467
  %472 = fmul fast float %439, %468
  %473 = fadd fast float %461, %469
  %474 = fadd fast float %462, %470
  %475 = fadd fast float %463, %471
  %476 = fadd fast float %464, %472
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %473)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %474)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %475)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %476)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

