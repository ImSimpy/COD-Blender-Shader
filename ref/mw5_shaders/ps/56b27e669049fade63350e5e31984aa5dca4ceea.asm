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
; shader hash: 89de1a79495a7f9a18d79c9267e3c175
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
  %25 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
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
  %44 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
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
  %63 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
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
  %82 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
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
  %101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
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
  %120 = fadd fast float %111, %4
  %121 = fadd fast float %112, %5
  %122 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %120, float %121, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %123 = extractvalue %dx.types.ResRet.f32 %122, 0
  %124 = extractvalue %dx.types.ResRet.f32 %122, 1
  %125 = extractvalue %dx.types.ResRet.f32 %122, 2
  %126 = extractvalue %dx.types.ResRet.f32 %122, 3
  %127 = fadd fast float %102, %4
  %128 = fadd fast float %103, %5
  %129 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %127, float %128, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %130 = extractvalue %dx.types.ResRet.f32 %129, 0
  %131 = extractvalue %dx.types.ResRet.f32 %129, 1
  %132 = extractvalue %dx.types.ResRet.f32 %129, 2
  %133 = extractvalue %dx.types.ResRet.f32 %129, 3
  %134 = fadd fast float %92, %4
  %135 = fadd fast float %93, %5
  %136 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %134, float %135, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %137 = extractvalue %dx.types.ResRet.f32 %136, 0
  %138 = extractvalue %dx.types.ResRet.f32 %136, 1
  %139 = extractvalue %dx.types.ResRet.f32 %136, 2
  %140 = extractvalue %dx.types.ResRet.f32 %136, 3
  %141 = fadd fast float %83, %4
  %142 = fadd fast float %84, %5
  %143 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %141, float %142, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %144 = extractvalue %dx.types.ResRet.f32 %143, 0
  %145 = extractvalue %dx.types.ResRet.f32 %143, 1
  %146 = extractvalue %dx.types.ResRet.f32 %143, 2
  %147 = extractvalue %dx.types.ResRet.f32 %143, 3
  %148 = fadd fast float %73, %4
  %149 = fadd fast float %74, %5
  %150 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %148, float %149, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %151 = extractvalue %dx.types.ResRet.f32 %150, 0
  %152 = extractvalue %dx.types.ResRet.f32 %150, 1
  %153 = extractvalue %dx.types.ResRet.f32 %150, 2
  %154 = extractvalue %dx.types.ResRet.f32 %150, 3
  %155 = fadd fast float %64, %4
  %156 = fadd fast float %65, %5
  %157 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %155, float %156, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %158 = extractvalue %dx.types.ResRet.f32 %157, 0
  %159 = extractvalue %dx.types.ResRet.f32 %157, 1
  %160 = extractvalue %dx.types.ResRet.f32 %157, 2
  %161 = extractvalue %dx.types.ResRet.f32 %157, 3
  %162 = fadd fast float %54, %4
  %163 = fadd fast float %55, %5
  %164 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %162, float %163, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %165 = extractvalue %dx.types.ResRet.f32 %164, 0
  %166 = extractvalue %dx.types.ResRet.f32 %164, 1
  %167 = extractvalue %dx.types.ResRet.f32 %164, 2
  %168 = extractvalue %dx.types.ResRet.f32 %164, 3
  %169 = fadd fast float %45, %4
  %170 = fadd fast float %46, %5
  %171 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %169, float %170, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %172 = extractvalue %dx.types.ResRet.f32 %171, 0
  %173 = extractvalue %dx.types.ResRet.f32 %171, 1
  %174 = extractvalue %dx.types.ResRet.f32 %171, 2
  %175 = extractvalue %dx.types.ResRet.f32 %171, 3
  %176 = fadd fast float %35, %4
  %177 = fadd fast float %36, %5
  %178 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %176, float %177, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %179 = extractvalue %dx.types.ResRet.f32 %178, 0
  %180 = extractvalue %dx.types.ResRet.f32 %178, 1
  %181 = extractvalue %dx.types.ResRet.f32 %178, 2
  %182 = extractvalue %dx.types.ResRet.f32 %178, 3
  %183 = fadd fast float %26, %4
  %184 = fadd fast float %27, %5
  %185 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %183, float %184, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %186 = extractvalue %dx.types.ResRet.f32 %185, 0
  %187 = extractvalue %dx.types.ResRet.f32 %185, 1
  %188 = extractvalue %dx.types.ResRet.f32 %185, 2
  %189 = extractvalue %dx.types.ResRet.f32 %185, 3
  %190 = fadd fast float %16, %4
  %191 = fadd fast float %17, %5
  %192 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %190, float %191, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %193 = extractvalue %dx.types.ResRet.f32 %192, 0
  %194 = extractvalue %dx.types.ResRet.f32 %192, 1
  %195 = extractvalue %dx.types.ResRet.f32 %192, 2
  %196 = extractvalue %dx.types.ResRet.f32 %192, 3
  %197 = fadd fast float %7, %4
  %198 = fadd fast float %8, %5
  %199 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %197, float %198, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %200 = extractvalue %dx.types.ResRet.f32 %199, 0
  %201 = extractvalue %dx.types.ResRet.f32 %199, 1
  %202 = extractvalue %dx.types.ResRet.f32 %199, 2
  %203 = extractvalue %dx.types.ResRet.f32 %199, 3
  %204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %205 = extractvalue %dx.types.CBufRet.f32 %204, 0
  %206 = fadd fast float %123, %116
  %207 = fadd fast float %124, %117
  %208 = fadd fast float %125, %118
  %209 = fadd fast float %126, %119
  %210 = fmul fast float %205, %206
  %211 = fmul fast float %205, %207
  %212 = fmul fast float %205, %208
  %213 = fmul fast float %205, %209
  %214 = extractvalue %dx.types.CBufRet.f32 %204, 1
  %215 = fadd fast float %130, %107
  %216 = fadd fast float %131, %108
  %217 = fadd fast float %132, %109
  %218 = fadd fast float %133, %110
  %219 = fmul fast float %214, %215
  %220 = fmul fast float %214, %216
  %221 = fmul fast float %214, %217
  %222 = fmul fast float %214, %218
  %223 = fadd fast float %219, %210
  %224 = fadd fast float %220, %211
  %225 = fadd fast float %221, %212
  %226 = fadd fast float %222, %213
  %227 = extractvalue %dx.types.CBufRet.f32 %204, 2
  %228 = fadd fast float %137, %97
  %229 = fadd fast float %138, %98
  %230 = fadd fast float %139, %99
  %231 = fadd fast float %140, %100
  %232 = fmul fast float %227, %228
  %233 = fmul fast float %227, %229
  %234 = fmul fast float %227, %230
  %235 = fmul fast float %227, %231
  %236 = fadd fast float %223, %232
  %237 = fadd fast float %224, %233
  %238 = fadd fast float %225, %234
  %239 = fadd fast float %226, %235
  %240 = extractvalue %dx.types.CBufRet.f32 %204, 3
  %241 = fadd fast float %144, %88
  %242 = fadd fast float %145, %89
  %243 = fadd fast float %146, %90
  %244 = fadd fast float %147, %91
  %245 = fmul fast float %240, %241
  %246 = fmul fast float %240, %242
  %247 = fmul fast float %240, %243
  %248 = fmul fast float %240, %244
  %249 = fadd fast float %236, %245
  %250 = fadd fast float %237, %246
  %251 = fadd fast float %238, %247
  %252 = fadd fast float %239, %248
  %253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %254 = extractvalue %dx.types.CBufRet.f32 %253, 0
  %255 = fadd fast float %151, %78
  %256 = fadd fast float %152, %79
  %257 = fadd fast float %153, %80
  %258 = fadd fast float %154, %81
  %259 = fmul fast float %254, %255
  %260 = fmul fast float %254, %256
  %261 = fmul fast float %254, %257
  %262 = fmul fast float %254, %258
  %263 = fadd fast float %249, %259
  %264 = fadd fast float %250, %260
  %265 = fadd fast float %251, %261
  %266 = fadd fast float %252, %262
  %267 = extractvalue %dx.types.CBufRet.f32 %253, 1
  %268 = fadd fast float %158, %69
  %269 = fadd fast float %159, %70
  %270 = fadd fast float %160, %71
  %271 = fadd fast float %161, %72
  %272 = fmul fast float %267, %268
  %273 = fmul fast float %267, %269
  %274 = fmul fast float %267, %270
  %275 = fmul fast float %267, %271
  %276 = fadd fast float %263, %272
  %277 = fadd fast float %264, %273
  %278 = fadd fast float %265, %274
  %279 = fadd fast float %266, %275
  %280 = extractvalue %dx.types.CBufRet.f32 %253, 2
  %281 = fadd fast float %165, %59
  %282 = fadd fast float %166, %60
  %283 = fadd fast float %167, %61
  %284 = fadd fast float %168, %62
  %285 = fmul fast float %280, %281
  %286 = fmul fast float %280, %282
  %287 = fmul fast float %280, %283
  %288 = fmul fast float %280, %284
  %289 = fadd fast float %276, %285
  %290 = fadd fast float %277, %286
  %291 = fadd fast float %278, %287
  %292 = fadd fast float %279, %288
  %293 = extractvalue %dx.types.CBufRet.f32 %253, 3
  %294 = fadd fast float %172, %50
  %295 = fadd fast float %173, %51
  %296 = fadd fast float %174, %52
  %297 = fadd fast float %175, %53
  %298 = fmul fast float %293, %294
  %299 = fmul fast float %293, %295
  %300 = fmul fast float %293, %296
  %301 = fmul fast float %293, %297
  %302 = fadd fast float %289, %298
  %303 = fadd fast float %290, %299
  %304 = fadd fast float %291, %300
  %305 = fadd fast float %292, %301
  %306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %307 = extractvalue %dx.types.CBufRet.f32 %306, 0
  %308 = fadd fast float %179, %40
  %309 = fadd fast float %180, %41
  %310 = fadd fast float %181, %42
  %311 = fadd fast float %182, %43
  %312 = fmul fast float %307, %308
  %313 = fmul fast float %307, %309
  %314 = fmul fast float %307, %310
  %315 = fmul fast float %307, %311
  %316 = fadd fast float %302, %312
  %317 = fadd fast float %303, %313
  %318 = fadd fast float %304, %314
  %319 = fadd fast float %305, %315
  %320 = extractvalue %dx.types.CBufRet.f32 %306, 1
  %321 = fadd fast float %186, %31
  %322 = fadd fast float %187, %32
  %323 = fadd fast float %188, %33
  %324 = fadd fast float %189, %34
  %325 = fmul fast float %320, %321
  %326 = fmul fast float %320, %322
  %327 = fmul fast float %320, %323
  %328 = fmul fast float %320, %324
  %329 = fadd fast float %316, %325
  %330 = fadd fast float %317, %326
  %331 = fadd fast float %318, %327
  %332 = fadd fast float %319, %328
  %333 = extractvalue %dx.types.CBufRet.f32 %306, 2
  %334 = fadd fast float %193, %21
  %335 = fadd fast float %194, %22
  %336 = fadd fast float %195, %23
  %337 = fadd fast float %196, %24
  %338 = fmul fast float %333, %334
  %339 = fmul fast float %333, %335
  %340 = fmul fast float %333, %336
  %341 = fmul fast float %333, %337
  %342 = fadd fast float %329, %338
  %343 = fadd fast float %330, %339
  %344 = fadd fast float %331, %340
  %345 = fadd fast float %332, %341
  %346 = extractvalue %dx.types.CBufRet.f32 %306, 3
  %347 = fadd fast float %200, %12
  %348 = fadd fast float %201, %13
  %349 = fadd fast float %202, %14
  %350 = fadd fast float %203, %15
  %351 = fmul fast float %346, %347
  %352 = fmul fast float %346, %348
  %353 = fmul fast float %346, %349
  %354 = fmul fast float %346, %350
  %355 = fadd fast float %342, %351
  %356 = fadd fast float %343, %352
  %357 = fadd fast float %344, %353
  %358 = fadd fast float %345, %354
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %355)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %356)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %357)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %358)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

