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
; shader hash: 2fbc1829078d388ca35547f12055a35b
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
  %7 = extractvalue %dx.types.CBufRet.f32 %6, 0
  %8 = extractvalue %dx.types.CBufRet.f32 %6, 1
  %9 = fsub fast float %4, %7
  %10 = fsub fast float %5, %8
  %11 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %9, float %10, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %12 = extractvalue %dx.types.ResRet.f32 %11, 0
  %13 = extractvalue %dx.types.ResRet.f32 %11, 1
  %14 = extractvalue %dx.types.ResRet.f32 %11, 2
  %15 = extractvalue %dx.types.ResRet.f32 %11, 3
  %16 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
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
  %35 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
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
  %54 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
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
  %73 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
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
  %92 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
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
  %111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
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
  %130 = fadd fast float %121, %4
  %131 = fadd fast float %122, %5
  %132 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %130, float %131, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %133 = extractvalue %dx.types.ResRet.f32 %132, 0
  %134 = extractvalue %dx.types.ResRet.f32 %132, 1
  %135 = extractvalue %dx.types.ResRet.f32 %132, 2
  %136 = extractvalue %dx.types.ResRet.f32 %132, 3
  %137 = fadd fast float %112, %4
  %138 = fadd fast float %113, %5
  %139 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %137, float %138, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %140 = extractvalue %dx.types.ResRet.f32 %139, 0
  %141 = extractvalue %dx.types.ResRet.f32 %139, 1
  %142 = extractvalue %dx.types.ResRet.f32 %139, 2
  %143 = extractvalue %dx.types.ResRet.f32 %139, 3
  %144 = fadd fast float %102, %4
  %145 = fadd fast float %103, %5
  %146 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %144, float %145, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %147 = extractvalue %dx.types.ResRet.f32 %146, 0
  %148 = extractvalue %dx.types.ResRet.f32 %146, 1
  %149 = extractvalue %dx.types.ResRet.f32 %146, 2
  %150 = extractvalue %dx.types.ResRet.f32 %146, 3
  %151 = fadd fast float %93, %4
  %152 = fadd fast float %94, %5
  %153 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %151, float %152, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %154 = extractvalue %dx.types.ResRet.f32 %153, 0
  %155 = extractvalue %dx.types.ResRet.f32 %153, 1
  %156 = extractvalue %dx.types.ResRet.f32 %153, 2
  %157 = extractvalue %dx.types.ResRet.f32 %153, 3
  %158 = fadd fast float %83, %4
  %159 = fadd fast float %84, %5
  %160 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %158, float %159, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %161 = extractvalue %dx.types.ResRet.f32 %160, 0
  %162 = extractvalue %dx.types.ResRet.f32 %160, 1
  %163 = extractvalue %dx.types.ResRet.f32 %160, 2
  %164 = extractvalue %dx.types.ResRet.f32 %160, 3
  %165 = fadd fast float %74, %4
  %166 = fadd fast float %75, %5
  %167 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %165, float %166, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %168 = extractvalue %dx.types.ResRet.f32 %167, 0
  %169 = extractvalue %dx.types.ResRet.f32 %167, 1
  %170 = extractvalue %dx.types.ResRet.f32 %167, 2
  %171 = extractvalue %dx.types.ResRet.f32 %167, 3
  %172 = fadd fast float %64, %4
  %173 = fadd fast float %65, %5
  %174 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %172, float %173, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %175 = extractvalue %dx.types.ResRet.f32 %174, 0
  %176 = extractvalue %dx.types.ResRet.f32 %174, 1
  %177 = extractvalue %dx.types.ResRet.f32 %174, 2
  %178 = extractvalue %dx.types.ResRet.f32 %174, 3
  %179 = fadd fast float %55, %4
  %180 = fadd fast float %56, %5
  %181 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %179, float %180, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %182 = extractvalue %dx.types.ResRet.f32 %181, 0
  %183 = extractvalue %dx.types.ResRet.f32 %181, 1
  %184 = extractvalue %dx.types.ResRet.f32 %181, 2
  %185 = extractvalue %dx.types.ResRet.f32 %181, 3
  %186 = fadd fast float %45, %4
  %187 = fadd fast float %46, %5
  %188 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %186, float %187, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %189 = extractvalue %dx.types.ResRet.f32 %188, 0
  %190 = extractvalue %dx.types.ResRet.f32 %188, 1
  %191 = extractvalue %dx.types.ResRet.f32 %188, 2
  %192 = extractvalue %dx.types.ResRet.f32 %188, 3
  %193 = fadd fast float %36, %4
  %194 = fadd fast float %37, %5
  %195 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %193, float %194, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %196 = extractvalue %dx.types.ResRet.f32 %195, 0
  %197 = extractvalue %dx.types.ResRet.f32 %195, 1
  %198 = extractvalue %dx.types.ResRet.f32 %195, 2
  %199 = extractvalue %dx.types.ResRet.f32 %195, 3
  %200 = fadd fast float %26, %4
  %201 = fadd fast float %27, %5
  %202 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %200, float %201, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %203 = extractvalue %dx.types.ResRet.f32 %202, 0
  %204 = extractvalue %dx.types.ResRet.f32 %202, 1
  %205 = extractvalue %dx.types.ResRet.f32 %202, 2
  %206 = extractvalue %dx.types.ResRet.f32 %202, 3
  %207 = fadd fast float %17, %4
  %208 = fadd fast float %18, %5
  %209 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %207, float %208, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %210 = extractvalue %dx.types.ResRet.f32 %209, 0
  %211 = extractvalue %dx.types.ResRet.f32 %209, 1
  %212 = extractvalue %dx.types.ResRet.f32 %209, 2
  %213 = extractvalue %dx.types.ResRet.f32 %209, 3
  %214 = fadd fast float %7, %4
  %215 = fadd fast float %8, %5
  %216 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %214, float %215, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %217 = extractvalue %dx.types.ResRet.f32 %216, 0
  %218 = extractvalue %dx.types.ResRet.f32 %216, 1
  %219 = extractvalue %dx.types.ResRet.f32 %216, 2
  %220 = extractvalue %dx.types.ResRet.f32 %216, 3
  %221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %222 = extractvalue %dx.types.CBufRet.f32 %221, 0
  %223 = fadd fast float %133, %126
  %224 = fadd fast float %134, %127
  %225 = fadd fast float %135, %128
  %226 = fadd fast float %136, %129
  %227 = fmul fast float %222, %223
  %228 = fmul fast float %222, %224
  %229 = fmul fast float %222, %225
  %230 = fmul fast float %222, %226
  %231 = extractvalue %dx.types.CBufRet.f32 %221, 1
  %232 = fadd fast float %140, %117
  %233 = fadd fast float %141, %118
  %234 = fadd fast float %142, %119
  %235 = fadd fast float %143, %120
  %236 = fmul fast float %231, %232
  %237 = fmul fast float %231, %233
  %238 = fmul fast float %231, %234
  %239 = fmul fast float %231, %235
  %240 = fadd fast float %236, %227
  %241 = fadd fast float %237, %228
  %242 = fadd fast float %238, %229
  %243 = fadd fast float %239, %230
  %244 = extractvalue %dx.types.CBufRet.f32 %221, 2
  %245 = fadd fast float %147, %107
  %246 = fadd fast float %148, %108
  %247 = fadd fast float %149, %109
  %248 = fadd fast float %150, %110
  %249 = fmul fast float %244, %245
  %250 = fmul fast float %244, %246
  %251 = fmul fast float %244, %247
  %252 = fmul fast float %244, %248
  %253 = fadd fast float %240, %249
  %254 = fadd fast float %241, %250
  %255 = fadd fast float %242, %251
  %256 = fadd fast float %243, %252
  %257 = extractvalue %dx.types.CBufRet.f32 %221, 3
  %258 = fadd fast float %154, %98
  %259 = fadd fast float %155, %99
  %260 = fadd fast float %156, %100
  %261 = fadd fast float %157, %101
  %262 = fmul fast float %257, %258
  %263 = fmul fast float %257, %259
  %264 = fmul fast float %257, %260
  %265 = fmul fast float %257, %261
  %266 = fadd fast float %253, %262
  %267 = fadd fast float %254, %263
  %268 = fadd fast float %255, %264
  %269 = fadd fast float %256, %265
  %270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %271 = extractvalue %dx.types.CBufRet.f32 %270, 0
  %272 = fadd fast float %161, %88
  %273 = fadd fast float %162, %89
  %274 = fadd fast float %163, %90
  %275 = fadd fast float %164, %91
  %276 = fmul fast float %271, %272
  %277 = fmul fast float %271, %273
  %278 = fmul fast float %271, %274
  %279 = fmul fast float %271, %275
  %280 = fadd fast float %266, %276
  %281 = fadd fast float %267, %277
  %282 = fadd fast float %268, %278
  %283 = fadd fast float %269, %279
  %284 = extractvalue %dx.types.CBufRet.f32 %270, 1
  %285 = fadd fast float %168, %79
  %286 = fadd fast float %169, %80
  %287 = fadd fast float %170, %81
  %288 = fadd fast float %171, %82
  %289 = fmul fast float %284, %285
  %290 = fmul fast float %284, %286
  %291 = fmul fast float %284, %287
  %292 = fmul fast float %284, %288
  %293 = fadd fast float %280, %289
  %294 = fadd fast float %281, %290
  %295 = fadd fast float %282, %291
  %296 = fadd fast float %283, %292
  %297 = extractvalue %dx.types.CBufRet.f32 %270, 2
  %298 = fadd fast float %175, %69
  %299 = fadd fast float %176, %70
  %300 = fadd fast float %177, %71
  %301 = fadd fast float %178, %72
  %302 = fmul fast float %297, %298
  %303 = fmul fast float %297, %299
  %304 = fmul fast float %297, %300
  %305 = fmul fast float %297, %301
  %306 = fadd fast float %293, %302
  %307 = fadd fast float %294, %303
  %308 = fadd fast float %295, %304
  %309 = fadd fast float %296, %305
  %310 = extractvalue %dx.types.CBufRet.f32 %270, 3
  %311 = fadd fast float %182, %60
  %312 = fadd fast float %183, %61
  %313 = fadd fast float %184, %62
  %314 = fadd fast float %185, %63
  %315 = fmul fast float %310, %311
  %316 = fmul fast float %310, %312
  %317 = fmul fast float %310, %313
  %318 = fmul fast float %310, %314
  %319 = fadd fast float %306, %315
  %320 = fadd fast float %307, %316
  %321 = fadd fast float %308, %317
  %322 = fadd fast float %309, %318
  %323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %324 = extractvalue %dx.types.CBufRet.f32 %323, 0
  %325 = fadd fast float %189, %50
  %326 = fadd fast float %190, %51
  %327 = fadd fast float %191, %52
  %328 = fadd fast float %192, %53
  %329 = fmul fast float %324, %325
  %330 = fmul fast float %324, %326
  %331 = fmul fast float %324, %327
  %332 = fmul fast float %324, %328
  %333 = fadd fast float %319, %329
  %334 = fadd fast float %320, %330
  %335 = fadd fast float %321, %331
  %336 = fadd fast float %322, %332
  %337 = extractvalue %dx.types.CBufRet.f32 %323, 1
  %338 = fadd fast float %196, %41
  %339 = fadd fast float %197, %42
  %340 = fadd fast float %198, %43
  %341 = fadd fast float %199, %44
  %342 = fmul fast float %337, %338
  %343 = fmul fast float %337, %339
  %344 = fmul fast float %337, %340
  %345 = fmul fast float %337, %341
  %346 = fadd fast float %333, %342
  %347 = fadd fast float %334, %343
  %348 = fadd fast float %335, %344
  %349 = fadd fast float %336, %345
  %350 = extractvalue %dx.types.CBufRet.f32 %323, 2
  %351 = fadd fast float %203, %31
  %352 = fadd fast float %204, %32
  %353 = fadd fast float %205, %33
  %354 = fadd fast float %206, %34
  %355 = fmul fast float %350, %351
  %356 = fmul fast float %350, %352
  %357 = fmul fast float %350, %353
  %358 = fmul fast float %350, %354
  %359 = fadd fast float %346, %355
  %360 = fadd fast float %347, %356
  %361 = fadd fast float %348, %357
  %362 = fadd fast float %349, %358
  %363 = extractvalue %dx.types.CBufRet.f32 %323, 3
  %364 = fadd fast float %210, %22
  %365 = fadd fast float %211, %23
  %366 = fadd fast float %212, %24
  %367 = fadd fast float %213, %25
  %368 = fmul fast float %363, %364
  %369 = fmul fast float %363, %365
  %370 = fmul fast float %363, %366
  %371 = fmul fast float %363, %367
  %372 = fadd fast float %359, %368
  %373 = fadd fast float %360, %369
  %374 = fadd fast float %361, %370
  %375 = fadd fast float %362, %371
  %376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %377 = extractvalue %dx.types.CBufRet.f32 %376, 0
  %378 = fadd fast float %217, %12
  %379 = fadd fast float %218, %13
  %380 = fadd fast float %219, %14
  %381 = fadd fast float %220, %15
  %382 = fmul fast float %377, %378
  %383 = fmul fast float %377, %379
  %384 = fmul fast float %377, %380
  %385 = fmul fast float %377, %381
  %386 = fadd fast float %372, %382
  %387 = fadd fast float %373, %383
  %388 = fadd fast float %374, %384
  %389 = fadd fast float %375, %385
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %386)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %387)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %388)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %389)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

