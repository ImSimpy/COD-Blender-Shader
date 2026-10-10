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
; shader hash: 702055eb28f74e71b59595364580b5ba
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
;   [112 x i8] (type annotation not present)
;
; }
;
; cbuffer 
; {
;
;   [16 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb2     1
;                                   cbuffer      NA          NA     CB1            cb1     1
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
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float> }
%perObject = type { <4 x float> }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %6 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %7 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %5, float %6, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8 = extractvalue %dx.types.ResRet.f32 %7, 0
  %9 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %10 = extractvalue %dx.types.CBufRet.f32 %9, 0
  %11 = extractvalue %dx.types.CBufRet.f32 %9, 1
  %12 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %13 = extractvalue %dx.types.CBufRet.f32 %12, 2
  %14 = extractvalue %dx.types.CBufRet.f32 %12, 3
  %15 = fadd fast float %13, %5
  %16 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %15, float %6, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %17 = extractvalue %dx.types.ResRet.f32 %16, 0
  %18 = fmul fast float %17, 8.000000e+00
  %19 = fsub fast float %18, %8
  %20 = fadd fast float %14, %6
  %21 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %15, float %20, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %22 = extractvalue %dx.types.ResRet.f32 %21, 0
  %23 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %5, float %20, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %24 = extractvalue %dx.types.ResRet.f32 %23, 0
  %25 = fmul fast float %24, 8.000000e+00
  %26 = fsub fast float %25, %8
  %27 = fsub fast float -0.000000e+00, %10
  %28 = fsub fast float %5, %13
  %29 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %28, float %20, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %30 = extractvalue %dx.types.ResRet.f32 %29, 0
  %31 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %28, float %6, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %32 = extractvalue %dx.types.ResRet.f32 %31, 0
  %33 = fmul fast float %32, 8.000000e+00
  %34 = fsub fast float %33, %8
  %35 = fsub fast float %6, %14
  %36 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %28, float %35, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %37 = extractvalue %dx.types.ResRet.f32 %36, 0
  %38 = fmul fast float %37, 8.000000e+00
  %39 = fsub fast float %38, %8
  %40 = fsub fast float -0.000000e+00, %11
  %41 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %5, float %35, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %42 = extractvalue %dx.types.ResRet.f32 %41, 0
  %43 = fmul fast float %42, 8.000000e+00
  %44 = fsub fast float %43, %8
  %45 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %15, float %35, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %46 = extractvalue %dx.types.ResRet.f32 %45, 0
  %47 = fmul fast float %11, %19
  %48 = fsub fast float -0.000000e+00, %47
  %49 = fsub fast float %17, %22
  %50 = fmul fast float %10, 8.000000e+00
  %51 = fmul fast float %50, %49
  %52 = fmul fast float %10, %11
  %53 = call float @dx.op.dot3.f32(i32 55, float %48, float %51, float %52, float %48, float %51, float %52)  ; Dot3(ax,ay,az,bx,by,bz)
  %54 = call float @dx.op.unary.f32(i32 25, float %53)  ; Rsqrt(value)
  %55 = fmul fast float %54, %48
  %56 = fmul fast float %54, %51
  %57 = fsub fast float %24, %22
  %58 = fmul fast float %11, 8.000000e+00
  %59 = fmul fast float %58, %57
  %60 = fmul fast float %10, %26
  %61 = fsub fast float -0.000000e+00, %60
  %62 = call float @dx.op.dot3.f32(i32 55, float %59, float %61, float %52, float %59, float %61, float %52)  ; Dot3(ax,ay,az,bx,by,bz)
  %63 = call float @dx.op.unary.f32(i32 25, float %62)  ; Rsqrt(value)
  %64 = fmul fast float %63, %59
  %65 = fmul fast float %63, %61
  %66 = fadd fast float %64, %55
  %67 = fadd fast float %65, %56
  %68 = fadd fast float %63, %54
  %69 = fsub fast float %30, %24
  %70 = fmul fast float %58, %69
  %71 = fmul fast float %26, %27
  %72 = call float @dx.op.dot3.f32(i32 55, float %70, float %71, float %52, float %70, float %71, float %52)  ; Dot3(ax,ay,az,bx,by,bz)
  %73 = call float @dx.op.unary.f32(i32 25, float %72)  ; Rsqrt(value)
  %74 = fmul fast float %73, %70
  %75 = fmul fast float %73, %71
  %76 = fadd fast float %66, %74
  %77 = fadd fast float %67, %75
  %78 = fadd fast float %68, %73
  %79 = fmul fast float %34, %11
  %80 = fsub fast float %30, %32
  %81 = fmul fast float %80, 8.000000e+00
  %82 = fmul fast float %81, %27
  %83 = call float @dx.op.dot3.f32(i32 55, float %79, float %82, float %52, float %79, float %82, float %52)  ; Dot3(ax,ay,az,bx,by,bz)
  %84 = call float @dx.op.unary.f32(i32 25, float %83)  ; Rsqrt(value)
  %85 = fmul fast float %84, %79
  %86 = fmul fast float %84, %82
  %87 = fadd fast float %76, %85
  %88 = fadd fast float %77, %86
  %89 = fadd fast float %78, %84
  %90 = fmul fast float %10, %34
  %91 = fsub fast float -0.000000e+00, %90
  %92 = fmul fast float %39, %27
  %93 = fsub fast float %91, %92
  %94 = call float @dx.op.dot3.f32(i32 55, float %79, float %93, float %52, float %79, float %93, float %52)  ; Dot3(ax,ay,az,bx,by,bz)
  %95 = call float @dx.op.unary.f32(i32 25, float %94)  ; Rsqrt(value)
  %96 = fmul fast float %95, %79
  %97 = fmul fast float %95, %93
  %98 = fadd fast float %87, %96
  %99 = fadd fast float %88, %97
  %100 = fadd fast float %89, %95
  %101 = fmul fast float %11, %44
  %102 = fsub fast float -0.000000e+00, %101
  %103 = fmul fast float %39, %40
  %104 = fsub fast float %102, %103
  %105 = fmul fast float %10, %44
  %106 = call float @dx.op.dot3.f32(i32 55, float %104, float %105, float %52, float %104, float %105, float %52)  ; Dot3(ax,ay,az,bx,by,bz)
  %107 = call float @dx.op.unary.f32(i32 25, float %106)  ; Rsqrt(value)
  %108 = fmul fast float %107, %104
  %109 = fmul fast float %107, %105
  %110 = fadd fast float %98, %108
  %111 = fadd fast float %99, %109
  %112 = fadd fast float %100, %107
  %113 = fsub fast float %46, %42
  %114 = fmul fast float %113, 8.000000e+00
  %115 = fmul fast float %114, %40
  %116 = call float @dx.op.dot3.f32(i32 55, float %115, float %105, float %52, float %115, float %105, float %52)  ; Dot3(ax,ay,az,bx,by,bz)
  %117 = call float @dx.op.unary.f32(i32 25, float %116)  ; Rsqrt(value)
  %118 = fmul fast float %117, %115
  %119 = fmul fast float %117, %105
  %120 = fadd fast float %110, %118
  %121 = fadd fast float %111, %119
  %122 = fadd fast float %112, %117
  %123 = fmul fast float %19, %40
  %124 = fsub fast float %46, %17
  %125 = fmul fast float %50, %124
  %126 = call float @dx.op.dot3.f32(i32 55, float %123, float %125, float %52, float %123, float %125, float %52)  ; Dot3(ax,ay,az,bx,by,bz)
  %127 = call float @dx.op.unary.f32(i32 25, float %126)  ; Rsqrt(value)
  %128 = fmul fast float %127, %123
  %129 = fmul fast float %127, %125
  %130 = fadd fast float %120, %128
  %131 = fadd fast float %121, %129
  %132 = fadd fast float %122, %127
  %133 = fmul fast float %52, %132
  %134 = call float @dx.op.dot3.f32(i32 55, float %130, float %131, float %133, float %130, float %131, float %133)  ; Dot3(ax,ay,az,bx,by,bz)
  %135 = call float @dx.op.unary.f32(i32 25, float %134)  ; Rsqrt(value)
  %136 = fmul fast float %130, %135
  %137 = fmul fast float %131, %135
  %138 = fmul fast float %133, %135
  %139 = fadd fast float %136, 1.000000e+00
  %140 = fadd fast float %137, 1.000000e+00
  %141 = fmul fast float %139, 5.000000e-01
  %142 = fmul fast float %140, 5.000000e-01
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %141)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %142)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %138)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

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
!dx.viewIdState = !{!13}
!dx.entryPoints = !{!14}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !8, !11}
!5 = !{!6}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{!9, !10}
!9 = !{i32 0, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 112, null}
!10 = !{i32 1, %perObject* undef, !"", i32 0, i32 1, i32 1, i32 16, null}
!11 = !{!12}
!12 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!13 = !{[8 x i32] [i32 6, i32 4, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7]}
!14 = !{void ()* @ps_main, !"ps_main", !15, !4, null}
!15 = !{!16, !21, null}
!16 = !{!17, !19}
!17 = !{i32 0, !"SV_Position", i8 9, i8 3, !18, i8 4, i32 1, i8 4, i32 0, i8 0, null}
!18 = !{i32 0}
!19 = !{i32 1, !"TEXCOORD", i8 9, i8 0, !18, i8 2, i32 1, i8 2, i32 1, i8 0, !20}
!20 = !{i32 3, i32 3}
!21 = !{!22}
!22 = !{i32 0, !"SV_Target", i8 9, i8 16, !18, i8 0, i32 1, i8 4, i32 0, i8 0, !23}
!23 = !{i32 3, i32 15}

