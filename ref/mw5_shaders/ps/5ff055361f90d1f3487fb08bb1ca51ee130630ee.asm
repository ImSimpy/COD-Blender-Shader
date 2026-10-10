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
; shader hash: b47d59d26c9676b67d125401dae23f18
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
  %7 = extractvalue %dx.types.CBufRet.f32 %6, 0
  %8 = extractvalue %dx.types.CBufRet.f32 %6, 1
  %9 = fsub fast float %4, %7
  %10 = fsub fast float %5, %8
  %11 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %9, float %10, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %12 = extractvalue %dx.types.ResRet.f32 %11, 0
  %13 = extractvalue %dx.types.ResRet.f32 %11, 1
  %14 = extractvalue %dx.types.ResRet.f32 %11, 2
  %15 = extractvalue %dx.types.ResRet.f32 %11, 3
  %16 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
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
  %35 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
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
  %54 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
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
  %73 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
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
  %92 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
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
  %111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %112 = extractvalue %dx.types.CBufRet.f32 %111, 2
  %113 = extractvalue %dx.types.CBufRet.f32 %111, 3
  %114 = fsub fast float %4, %112
  %115 = fsub fast float %5, %113
  %116 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %114, float %115, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %117 = extractvalue %dx.types.ResRet.f32 %116, 0
  %118 = extractvalue %dx.types.ResRet.f32 %116, 1
  %119 = extractvalue %dx.types.ResRet.f32 %116, 2
  %120 = extractvalue %dx.types.ResRet.f32 %116, 3
  %121 = extractvalue %dx.types.CBufRet.f32 %111, 0
  %122 = extractvalue %dx.types.CBufRet.f32 %111, 1
  %123 = fsub fast float %4, %121
  %124 = fsub fast float %5, %122
  %125 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %123, float %124, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %126 = extractvalue %dx.types.ResRet.f32 %125, 0
  %127 = extractvalue %dx.types.ResRet.f32 %125, 1
  %128 = extractvalue %dx.types.ResRet.f32 %125, 2
  %129 = extractvalue %dx.types.ResRet.f32 %125, 3
  %130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %131 = extractvalue %dx.types.CBufRet.f32 %130, 2
  %132 = extractvalue %dx.types.CBufRet.f32 %130, 3
  %133 = fsub fast float %4, %131
  %134 = fsub fast float %5, %132
  %135 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %133, float %134, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %136 = extractvalue %dx.types.ResRet.f32 %135, 0
  %137 = extractvalue %dx.types.ResRet.f32 %135, 1
  %138 = extractvalue %dx.types.ResRet.f32 %135, 2
  %139 = extractvalue %dx.types.ResRet.f32 %135, 3
  %140 = extractvalue %dx.types.CBufRet.f32 %130, 0
  %141 = extractvalue %dx.types.CBufRet.f32 %130, 1
  %142 = fsub fast float %4, %140
  %143 = fsub fast float %5, %141
  %144 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %142, float %143, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %145 = extractvalue %dx.types.ResRet.f32 %144, 0
  %146 = extractvalue %dx.types.ResRet.f32 %144, 1
  %147 = extractvalue %dx.types.ResRet.f32 %144, 2
  %148 = extractvalue %dx.types.ResRet.f32 %144, 3
  %149 = fadd fast float %140, %4
  %150 = fadd fast float %141, %5
  %151 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %149, float %150, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %152 = extractvalue %dx.types.ResRet.f32 %151, 0
  %153 = extractvalue %dx.types.ResRet.f32 %151, 1
  %154 = extractvalue %dx.types.ResRet.f32 %151, 2
  %155 = extractvalue %dx.types.ResRet.f32 %151, 3
  %156 = fadd fast float %131, %4
  %157 = fadd fast float %132, %5
  %158 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %156, float %157, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %159 = extractvalue %dx.types.ResRet.f32 %158, 0
  %160 = extractvalue %dx.types.ResRet.f32 %158, 1
  %161 = extractvalue %dx.types.ResRet.f32 %158, 2
  %162 = extractvalue %dx.types.ResRet.f32 %158, 3
  %163 = fadd fast float %121, %4
  %164 = fadd fast float %122, %5
  %165 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %163, float %164, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %166 = extractvalue %dx.types.ResRet.f32 %165, 0
  %167 = extractvalue %dx.types.ResRet.f32 %165, 1
  %168 = extractvalue %dx.types.ResRet.f32 %165, 2
  %169 = extractvalue %dx.types.ResRet.f32 %165, 3
  %170 = fadd fast float %112, %4
  %171 = fadd fast float %113, %5
  %172 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %170, float %171, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %173 = extractvalue %dx.types.ResRet.f32 %172, 0
  %174 = extractvalue %dx.types.ResRet.f32 %172, 1
  %175 = extractvalue %dx.types.ResRet.f32 %172, 2
  %176 = extractvalue %dx.types.ResRet.f32 %172, 3
  %177 = fadd fast float %102, %4
  %178 = fadd fast float %103, %5
  %179 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %177, float %178, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %180 = extractvalue %dx.types.ResRet.f32 %179, 0
  %181 = extractvalue %dx.types.ResRet.f32 %179, 1
  %182 = extractvalue %dx.types.ResRet.f32 %179, 2
  %183 = extractvalue %dx.types.ResRet.f32 %179, 3
  %184 = fadd fast float %93, %4
  %185 = fadd fast float %94, %5
  %186 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %184, float %185, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %187 = extractvalue %dx.types.ResRet.f32 %186, 0
  %188 = extractvalue %dx.types.ResRet.f32 %186, 1
  %189 = extractvalue %dx.types.ResRet.f32 %186, 2
  %190 = extractvalue %dx.types.ResRet.f32 %186, 3
  %191 = fadd fast float %83, %4
  %192 = fadd fast float %84, %5
  %193 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %191, float %192, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %194 = extractvalue %dx.types.ResRet.f32 %193, 0
  %195 = extractvalue %dx.types.ResRet.f32 %193, 1
  %196 = extractvalue %dx.types.ResRet.f32 %193, 2
  %197 = extractvalue %dx.types.ResRet.f32 %193, 3
  %198 = fadd fast float %74, %4
  %199 = fadd fast float %75, %5
  %200 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %198, float %199, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %201 = extractvalue %dx.types.ResRet.f32 %200, 0
  %202 = extractvalue %dx.types.ResRet.f32 %200, 1
  %203 = extractvalue %dx.types.ResRet.f32 %200, 2
  %204 = extractvalue %dx.types.ResRet.f32 %200, 3
  %205 = fadd fast float %64, %4
  %206 = fadd fast float %65, %5
  %207 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %205, float %206, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %208 = extractvalue %dx.types.ResRet.f32 %207, 0
  %209 = extractvalue %dx.types.ResRet.f32 %207, 1
  %210 = extractvalue %dx.types.ResRet.f32 %207, 2
  %211 = extractvalue %dx.types.ResRet.f32 %207, 3
  %212 = fadd fast float %55, %4
  %213 = fadd fast float %56, %5
  %214 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %212, float %213, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %215 = extractvalue %dx.types.ResRet.f32 %214, 0
  %216 = extractvalue %dx.types.ResRet.f32 %214, 1
  %217 = extractvalue %dx.types.ResRet.f32 %214, 2
  %218 = extractvalue %dx.types.ResRet.f32 %214, 3
  %219 = fadd fast float %45, %4
  %220 = fadd fast float %46, %5
  %221 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %219, float %220, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %222 = extractvalue %dx.types.ResRet.f32 %221, 0
  %223 = extractvalue %dx.types.ResRet.f32 %221, 1
  %224 = extractvalue %dx.types.ResRet.f32 %221, 2
  %225 = extractvalue %dx.types.ResRet.f32 %221, 3
  %226 = fadd fast float %36, %4
  %227 = fadd fast float %37, %5
  %228 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %226, float %227, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %229 = extractvalue %dx.types.ResRet.f32 %228, 0
  %230 = extractvalue %dx.types.ResRet.f32 %228, 1
  %231 = extractvalue %dx.types.ResRet.f32 %228, 2
  %232 = extractvalue %dx.types.ResRet.f32 %228, 3
  %233 = fadd fast float %26, %4
  %234 = fadd fast float %27, %5
  %235 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %233, float %234, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %236 = extractvalue %dx.types.ResRet.f32 %235, 0
  %237 = extractvalue %dx.types.ResRet.f32 %235, 1
  %238 = extractvalue %dx.types.ResRet.f32 %235, 2
  %239 = extractvalue %dx.types.ResRet.f32 %235, 3
  %240 = fadd fast float %17, %4
  %241 = fadd fast float %18, %5
  %242 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %240, float %241, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %243 = extractvalue %dx.types.ResRet.f32 %242, 0
  %244 = extractvalue %dx.types.ResRet.f32 %242, 1
  %245 = extractvalue %dx.types.ResRet.f32 %242, 2
  %246 = extractvalue %dx.types.ResRet.f32 %242, 3
  %247 = fadd fast float %7, %4
  %248 = fadd fast float %8, %5
  %249 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %247, float %248, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %250 = extractvalue %dx.types.ResRet.f32 %249, 0
  %251 = extractvalue %dx.types.ResRet.f32 %249, 1
  %252 = extractvalue %dx.types.ResRet.f32 %249, 2
  %253 = extractvalue %dx.types.ResRet.f32 %249, 3
  %254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %255 = extractvalue %dx.types.CBufRet.f32 %254, 0
  %256 = fadd fast float %152, %145
  %257 = fadd fast float %153, %146
  %258 = fadd fast float %154, %147
  %259 = fadd fast float %155, %148
  %260 = fmul fast float %255, %256
  %261 = fmul fast float %255, %257
  %262 = fmul fast float %255, %258
  %263 = fmul fast float %255, %259
  %264 = extractvalue %dx.types.CBufRet.f32 %254, 1
  %265 = fadd fast float %159, %136
  %266 = fadd fast float %160, %137
  %267 = fadd fast float %161, %138
  %268 = fadd fast float %162, %139
  %269 = fmul fast float %264, %265
  %270 = fmul fast float %264, %266
  %271 = fmul fast float %264, %267
  %272 = fmul fast float %264, %268
  %273 = fadd fast float %269, %260
  %274 = fadd fast float %270, %261
  %275 = fadd fast float %271, %262
  %276 = fadd fast float %272, %263
  %277 = extractvalue %dx.types.CBufRet.f32 %254, 2
  %278 = fadd fast float %166, %126
  %279 = fadd fast float %167, %127
  %280 = fadd fast float %168, %128
  %281 = fadd fast float %169, %129
  %282 = fmul fast float %277, %278
  %283 = fmul fast float %277, %279
  %284 = fmul fast float %277, %280
  %285 = fmul fast float %277, %281
  %286 = fadd fast float %273, %282
  %287 = fadd fast float %274, %283
  %288 = fadd fast float %275, %284
  %289 = fadd fast float %276, %285
  %290 = extractvalue %dx.types.CBufRet.f32 %254, 3
  %291 = fadd fast float %173, %117
  %292 = fadd fast float %174, %118
  %293 = fadd fast float %175, %119
  %294 = fadd fast float %176, %120
  %295 = fmul fast float %290, %291
  %296 = fmul fast float %290, %292
  %297 = fmul fast float %290, %293
  %298 = fmul fast float %290, %294
  %299 = fadd fast float %286, %295
  %300 = fadd fast float %287, %296
  %301 = fadd fast float %288, %297
  %302 = fadd fast float %289, %298
  %303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %304 = extractvalue %dx.types.CBufRet.f32 %303, 0
  %305 = fadd fast float %180, %107
  %306 = fadd fast float %181, %108
  %307 = fadd fast float %182, %109
  %308 = fadd fast float %183, %110
  %309 = fmul fast float %304, %305
  %310 = fmul fast float %304, %306
  %311 = fmul fast float %304, %307
  %312 = fmul fast float %304, %308
  %313 = fadd fast float %299, %309
  %314 = fadd fast float %300, %310
  %315 = fadd fast float %301, %311
  %316 = fadd fast float %302, %312
  %317 = extractvalue %dx.types.CBufRet.f32 %303, 1
  %318 = fadd fast float %187, %98
  %319 = fadd fast float %188, %99
  %320 = fadd fast float %189, %100
  %321 = fadd fast float %190, %101
  %322 = fmul fast float %317, %318
  %323 = fmul fast float %317, %319
  %324 = fmul fast float %317, %320
  %325 = fmul fast float %317, %321
  %326 = fadd fast float %313, %322
  %327 = fadd fast float %314, %323
  %328 = fadd fast float %315, %324
  %329 = fadd fast float %316, %325
  %330 = extractvalue %dx.types.CBufRet.f32 %303, 2
  %331 = fadd fast float %194, %88
  %332 = fadd fast float %195, %89
  %333 = fadd fast float %196, %90
  %334 = fadd fast float %197, %91
  %335 = fmul fast float %330, %331
  %336 = fmul fast float %330, %332
  %337 = fmul fast float %330, %333
  %338 = fmul fast float %330, %334
  %339 = fadd fast float %326, %335
  %340 = fadd fast float %327, %336
  %341 = fadd fast float %328, %337
  %342 = fadd fast float %329, %338
  %343 = extractvalue %dx.types.CBufRet.f32 %303, 3
  %344 = fadd fast float %201, %79
  %345 = fadd fast float %202, %80
  %346 = fadd fast float %203, %81
  %347 = fadd fast float %204, %82
  %348 = fmul fast float %343, %344
  %349 = fmul fast float %343, %345
  %350 = fmul fast float %343, %346
  %351 = fmul fast float %343, %347
  %352 = fadd fast float %339, %348
  %353 = fadd fast float %340, %349
  %354 = fadd fast float %341, %350
  %355 = fadd fast float %342, %351
  %356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %357 = extractvalue %dx.types.CBufRet.f32 %356, 0
  %358 = fadd fast float %208, %69
  %359 = fadd fast float %209, %70
  %360 = fadd fast float %210, %71
  %361 = fadd fast float %211, %72
  %362 = fmul fast float %357, %358
  %363 = fmul fast float %357, %359
  %364 = fmul fast float %357, %360
  %365 = fmul fast float %357, %361
  %366 = fadd fast float %352, %362
  %367 = fadd fast float %353, %363
  %368 = fadd fast float %354, %364
  %369 = fadd fast float %355, %365
  %370 = extractvalue %dx.types.CBufRet.f32 %356, 1
  %371 = fadd fast float %215, %60
  %372 = fadd fast float %216, %61
  %373 = fadd fast float %217, %62
  %374 = fadd fast float %218, %63
  %375 = fmul fast float %370, %371
  %376 = fmul fast float %370, %372
  %377 = fmul fast float %370, %373
  %378 = fmul fast float %370, %374
  %379 = fadd fast float %366, %375
  %380 = fadd fast float %367, %376
  %381 = fadd fast float %368, %377
  %382 = fadd fast float %369, %378
  %383 = extractvalue %dx.types.CBufRet.f32 %356, 2
  %384 = fadd fast float %222, %50
  %385 = fadd fast float %223, %51
  %386 = fadd fast float %224, %52
  %387 = fadd fast float %225, %53
  %388 = fmul fast float %383, %384
  %389 = fmul fast float %383, %385
  %390 = fmul fast float %383, %386
  %391 = fmul fast float %383, %387
  %392 = fadd fast float %379, %388
  %393 = fadd fast float %380, %389
  %394 = fadd fast float %381, %390
  %395 = fadd fast float %382, %391
  %396 = extractvalue %dx.types.CBufRet.f32 %356, 3
  %397 = fadd fast float %229, %41
  %398 = fadd fast float %230, %42
  %399 = fadd fast float %231, %43
  %400 = fadd fast float %232, %44
  %401 = fmul fast float %396, %397
  %402 = fmul fast float %396, %398
  %403 = fmul fast float %396, %399
  %404 = fmul fast float %396, %400
  %405 = fadd fast float %392, %401
  %406 = fadd fast float %393, %402
  %407 = fadd fast float %394, %403
  %408 = fadd fast float %395, %404
  %409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %410 = extractvalue %dx.types.CBufRet.f32 %409, 0
  %411 = fadd fast float %236, %31
  %412 = fadd fast float %237, %32
  %413 = fadd fast float %238, %33
  %414 = fadd fast float %239, %34
  %415 = fmul fast float %410, %411
  %416 = fmul fast float %410, %412
  %417 = fmul fast float %410, %413
  %418 = fmul fast float %410, %414
  %419 = fadd fast float %405, %415
  %420 = fadd fast float %406, %416
  %421 = fadd fast float %407, %417
  %422 = fadd fast float %408, %418
  %423 = extractvalue %dx.types.CBufRet.f32 %409, 1
  %424 = fadd fast float %243, %22
  %425 = fadd fast float %244, %23
  %426 = fadd fast float %245, %24
  %427 = fadd fast float %246, %25
  %428 = fmul fast float %423, %424
  %429 = fmul fast float %423, %425
  %430 = fmul fast float %423, %426
  %431 = fmul fast float %423, %427
  %432 = fadd fast float %419, %428
  %433 = fadd fast float %420, %429
  %434 = fadd fast float %421, %430
  %435 = fadd fast float %422, %431
  %436 = extractvalue %dx.types.CBufRet.f32 %409, 2
  %437 = fadd fast float %250, %12
  %438 = fadd fast float %251, %13
  %439 = fadd fast float %252, %14
  %440 = fadd fast float %253, %15
  %441 = fmul fast float %436, %437
  %442 = fmul fast float %436, %438
  %443 = fmul fast float %436, %439
  %444 = fmul fast float %436, %440
  %445 = fadd fast float %432, %441
  %446 = fadd fast float %433, %442
  %447 = fadd fast float %434, %443
  %448 = fadd fast float %435, %444
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %445)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %446)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %447)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %448)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

