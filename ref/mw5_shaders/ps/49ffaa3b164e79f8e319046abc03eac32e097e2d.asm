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
; shader hash: 537edbafc525d154768bdd264acd719a
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
;   [11728 x i8] (type annotation not present)
;
; }
;
; cbuffer 
; {
;
;   [96 x i8] (type annotation not present)
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
;                                   cbuffer      NA          NA     CB0            cb3     1
;                                   cbuffer      NA          NA     CB1            cb1     1
;                                   cbuffer      NA          NA     CB2            cb2     1
;                                   sampler      NA          NA      S0             s2     1
;                                   texture     f32          2d      T0             t0     1
;                                   texture     f32          2d      T1             t1     1
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
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%perObject = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %8 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %9 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %10 = extractvalue %dx.types.CBufRet.f32 %9, 3
  %11 = fcmp fast olt float %10, 5.000000e-01
  %12 = select i1 %11, float 0.000000e+00, float 1.000000e+00
  %13 = fcmp fast une float %12, 0.000000e+00
  %14 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %15 = extractvalue %dx.types.CBufRet.f32 %14, 0
  %16 = fsub fast float 1.000000e+00, %15
  %17 = extractvalue %dx.types.CBufRet.f32 %14, 1
  %18 = extractvalue %dx.types.CBufRet.f32 %14, 2
  %19 = fsub fast float 1.000000e+00, %18
  %20 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %21 = extractvalue %dx.types.CBufRet.f32 %20, 0
  %22 = extractvalue %dx.types.CBufRet.f32 %20, 1
  %23 = extractvalue %dx.types.CBufRet.f32 %20, 2
  %24 = extractvalue %dx.types.CBufRet.f32 %20, 3
  %25 = fcmp fast olt float %24, 5.000000e-01
  %26 = select i1 %25, float 0.000000e+00, float 1.000000e+00
  %27 = fcmp fast une float %26, 0.000000e+00
  %28 = fmul fast float %7, 2.000000e+00
  %29 = fmul fast float %8, 2.000000e+00
  %30 = fadd fast float %28, -1.000000e+00
  %31 = fadd fast float %29, -1.000000e+00
  %32 = fsub fast float %30, %21
  %33 = fsub fast float %31, %22
  %34 = call float @dx.op.dot2.f32(i32 54, float %32, float %33, float %32, float %33)  ; Dot2(ax,ay,bx,by)
  %35 = bitcast float %34 to i32
  %36 = ashr i32 %35, 1
  %37 = add nsw i32 %36, 532487669
  %38 = bitcast i32 %37 to float
  %39 = call float @dx.op.binary.f32(i32 35, float %38, float 0.000000e+00)  ; FMax(a,b)
  %40 = fcmp fast ogt float %39, %16
  %41 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 228)  ; CBufferLoadLegacy(handle,regIndex)
  %42 = extractvalue %dx.types.CBufRet.f32 %41, 2
  %43 = extractvalue %dx.types.CBufRet.f32 %41, 0
  %44 = call float @dx.op.binary.f32(i32 35, float %7, float %43)  ; FMax(a,b)
  %45 = call float @dx.op.binary.f32(i32 36, float %44, float %42)  ; FMin(a,b)
  %46 = call float @dx.op.binary.f32(i32 36, float %7, float %43)  ; FMin(a,b)
  %47 = call float @dx.op.binary.f32(i32 35, float %46, float %45)  ; FMax(a,b)
  %48 = fcmp fast oeq float %7, %47
  %49 = extractvalue %dx.types.CBufRet.f32 %41, 3
  %50 = extractvalue %dx.types.CBufRet.f32 %41, 1
  %51 = call float @dx.op.binary.f32(i32 35, float %8, float %50)  ; FMax(a,b)
  %52 = call float @dx.op.binary.f32(i32 36, float %51, float %49)  ; FMin(a,b)
  %53 = call float @dx.op.binary.f32(i32 36, float %8, float %50)  ; FMin(a,b)
  %54 = call float @dx.op.binary.f32(i32 35, float %53, float %52)  ; FMax(a,b)
  %55 = fcmp fast oeq float %8, %54
  %56 = and i1 %48, %55
  %57 = and i1 %27, %56
  br i1 %57, label %58, label %93, !dx.controlflow.hints !26

; <label>:58                                      ; preds = %0
  %59 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %3, float %7, float %8, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %60 = extractvalue %dx.types.ResRet.f32 %59, 0
  %61 = fsub fast float 1.000000e+00, %60
  %62 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 222)  ; CBufferLoadLegacy(handle,regIndex)
  %63 = extractvalue %dx.types.CBufRet.f32 %62, 0
  %64 = extractvalue %dx.types.CBufRet.f32 %62, 1
  %65 = extractvalue %dx.types.CBufRet.f32 %62, 2
  %66 = extractvalue %dx.types.CBufRet.f32 %62, 3
  %67 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 226)  ; CBufferLoadLegacy(handle,regIndex)
  %68 = extractvalue %dx.types.CBufRet.f32 %67, 0
  %69 = extractvalue %dx.types.CBufRet.f32 %67, 1
  %70 = fsub fast float %61, %63
  %71 = fmul fast float %70, %64
  %72 = call float @dx.op.unary.f32(i32 7, float %71)  ; Saturate(value)
  %73 = fmul fast float %72, %72
  %74 = fsub fast float %66, %65
  %75 = fmul fast float %73, %74
  %76 = fadd fast float %75, %65
  %77 = fcmp fast olt float %61, 1.000000e+00
  %78 = fsub fast float %7, %68
  %79 = fsub fast float %8, %69
  %80 = fmul fast float %76, %78
  %81 = fmul fast float %76, %79
  %82 = fadd fast float %80, %68
  %83 = fadd fast float %81, %69
  %84 = select i1 %77, float %82, float %7
  %85 = select i1 %77, float %83, float %8
  %86 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %87 = extractvalue %dx.types.CBufRet.f32 %86, 0
  %88 = extractvalue %dx.types.CBufRet.f32 %86, 1
  %89 = fsub fast float %61, %87
  %90 = fmul fast float %89, %88
  %91 = call float @dx.op.unary.f32(i32 7, float %90)  ; Saturate(value)
  %92 = fsub fast float 1.000000e+00, %91
  br label %93

; <label>:93                                      ; preds = %58, %0
  %94 = phi float [ %84, %58 ], [ 0.000000e+00, %0 ]
  %95 = phi float [ %85, %58 ], [ 0.000000e+00, %0 ]
  %96 = phi float [ %92, %58 ], [ 0.000000e+00, %0 ]
  %97 = phi float [ %61, %58 ], [ 0.000000e+00, %0 ]
  %98 = fcmp fast olt float %96, 1.000000e+00
  br i1 %98, label %99, label %390, !dx.controlflow.hints !27

; <label>:99                                      ; preds = %93
  br i1 %13, label %100, label %117

; <label>:100                                     ; preds = %99
  %101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %102 = extractvalue %dx.types.CBufRet.f32 %101, 2
  %103 = extractvalue %dx.types.CBufRet.f32 %101, 1
  %104 = extractvalue %dx.types.CBufRet.f32 %101, 0
  %105 = extractvalue %dx.types.CBufRet.f32 %101, 3
  %106 = fmul fast float %105, %30
  %107 = fmul fast float %105, %31
  %108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 53)  ; CBufferLoadLegacy(handle,regIndex)
  %109 = extractvalue %dx.types.CBufRet.f32 %108, 1
  %110 = fmul fast float %107, %109
  %111 = call float @dx.op.dot2.f32(i32 54, float %106, float %110, float %106, float %110)  ; Dot2(ax,ay,bx,by)
  %112 = fmul fast float %111, %111
  %113 = fmul fast float %112, %111
  %114 = call float @dx.op.dot3.f32(i32 55, float %104, float %103, float %102, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %115 = fadd fast float %114, 1.000000e+00
  %116 = call float @dx.op.unary.f32(i32 7, float %115)  ; Saturate(value)
  br label %117

; <label>:117                                     ; preds = %100, %99
  %118 = phi float [ %116, %100 ], [ 1.000000e+00, %99 ]
  %119 = call float @dx.op.binary.f32(i32 35, float %17, float %19)  ; FMax(a,b)
  %120 = fcmp fast ogt float %119, 0.000000e+00
  %121 = and i1 %40, %120
  br i1 %121, label %122, label %378, !dx.controlflow.hints !28

; <label>:122                                     ; preds = %117
  %123 = fcmp fast oeq float %17, 0.000000e+00
  %124 = and i1 %13, %123
  br i1 %124, label %125, label %205, !dx.controlflow.hints !29

; <label>:125                                     ; preds = %122
  %126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %127 = extractvalue %dx.types.CBufRet.f32 %126, 0
  %128 = extractvalue %dx.types.CBufRet.f32 %126, 1
  %129 = extractvalue %dx.types.CBufRet.f32 %126, 2
  %130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %131 = extractvalue %dx.types.CBufRet.f32 %130, 0
  %132 = extractvalue %dx.types.CBufRet.f32 %130, 1
  %133 = extractvalue %dx.types.CBufRet.f32 %130, 2
  %134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.f32 %134, 3
  %136 = fmul fast float %135, %30
  %137 = fmul fast float %135, %31
  %138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 53)  ; CBufferLoadLegacy(handle,regIndex)
  %139 = extractvalue %dx.types.CBufRet.f32 %138, 1
  %140 = fmul fast float %137, %139
  %141 = call float @dx.op.dot2.f32(i32 54, float %136, float %140, float %136, float %140)  ; Dot2(ax,ay,bx,by)
  %142 = call float @dx.op.unary.f32(i32 24, float %141)  ; Sqrt(value)
  %143 = call float @dx.op.dot3.f32(i32 55, float %131, float %132, float %133, float %141, float %142, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %144 = fmul fast float %143, %30
  %145 = fmul fast float %143, %31
  %146 = call float @dx.op.dot3.f32(i32 55, float %127, float %128, float %129, float %141, float %142, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %147 = fmul fast float %146, %30
  %148 = fmul fast float %146, %31
  %149 = fsub fast float %144, %30
  %150 = fsub fast float %145, %31
  %151 = fmul fast float %149, 2.000000e+00
  %152 = fmul fast float %150, 2.000000e+00
  %153 = fadd fast float %151, %30
  %154 = fadd fast float %152, %31
  %155 = fmul fast float %153, 5.000000e-01
  %156 = fmul fast float %154, 5.000000e-01
  %157 = fadd fast float %155, 5.000000e-01
  %158 = fadd fast float %156, 5.000000e-01
  %159 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %3, float %157, float %158, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %160 = extractvalue %dx.types.ResRet.f32 %159, 0
  %161 = fmul fast float %149, 0x3FE5555540000000
  %162 = fmul fast float %150, 0x3FE5555540000000
  %163 = fadd fast float %161, %30
  %164 = fadd fast float %162, %31
  %165 = fmul fast float %163, 5.000000e-01
  %166 = fmul fast float %164, 5.000000e-01
  %167 = fadd fast float %165, 5.000000e-01
  %168 = fadd fast float %166, 5.000000e-01
  %169 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %3, float %167, float %168, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %170 = extractvalue %dx.types.ResRet.f32 %169, 0
  %171 = extractvalue %dx.types.ResRet.f32 %169, 1
  %172 = fmul fast float %170, 0x3FD5555540000000
  %173 = fmul fast float %171, 0x3FE5555560000000
  %174 = fadd fast float %172, %160
  %175 = fsub fast float %147, %30
  %176 = fsub fast float %148, %31
  %177 = fmul fast float %175, 0x3FE5555580000000
  %178 = fmul fast float %176, 0x3FE5555580000000
  %179 = fadd fast float %177, %30
  %180 = fadd fast float %178, %31
  %181 = fmul fast float %179, 5.000000e-01
  %182 = fmul fast float %180, 5.000000e-01
  %183 = fadd fast float %181, 5.000000e-01
  %184 = fadd fast float %182, 5.000000e-01
  %185 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %3, float %183, float %184, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %186 = extractvalue %dx.types.ResRet.f32 %185, 1
  %187 = extractvalue %dx.types.ResRet.f32 %185, 2
  %188 = fmul fast float %186, 0x3FE5555540000000
  %189 = fmul fast float %187, 0x3FD5555580000000
  %190 = fadd fast float %188, %173
  %191 = fmul fast float %175, 2.000000e+00
  %192 = fmul fast float %176, 2.000000e+00
  %193 = fadd fast float %191, %30
  %194 = fadd fast float %192, %31
  %195 = fmul fast float %193, 5.000000e-01
  %196 = fmul fast float %194, 5.000000e-01
  %197 = fadd fast float %195, 5.000000e-01
  %198 = fadd fast float %196, 5.000000e-01
  %199 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %3, float %197, float %198, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %200 = extractvalue %dx.types.ResRet.f32 %199, 2
  %201 = fadd fast float %200, %189
  %202 = fmul fast float %174, 0x3FE8000020000000
  %203 = fmul fast float %190, 0x3FE8000020000000
  %204 = fmul fast float %201, 7.500000e-01
  br label %383

; <label>:205                                     ; preds = %122
  %206 = fsub fast float %39, %16
  %207 = fdiv fast float %206, %15
  %208 = call float @dx.op.unary.f32(i32 7, float %207)  ; Saturate(value)
  %209 = fmul fast float %208, 2.000000e+00
  %210 = fsub fast float 3.000000e+00, %209
  %211 = fmul fast float %208, %208
  %212 = fmul fast float %211, %17
  %213 = fmul fast float %212, %210
  %214 = fsub fast float 1.000000e+00, %23
  %215 = fsub fast float 1.000000e+00, %39
  %216 = fdiv fast float %215, %39
  %217 = fmul fast float %216, %23
  %218 = fadd fast float %217, %214
  %219 = fmul fast float %218, %32
  %220 = fmul fast float %219, %213
  %221 = fmul fast float %218, %33
  %222 = fmul fast float %221, %213
  %223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %224 = extractvalue %dx.types.CBufRet.f32 %223, 0
  %225 = extractvalue %dx.types.CBufRet.f32 %223, 1
  %226 = fmul fast float %224, %7
  %227 = fmul fast float %225, %8
  %228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %229 = extractvalue %dx.types.CBufRet.f32 %228, 2
  %230 = fmul fast float %229, 0x40165A5B00000000
  %231 = fadd fast float %230, %226
  %232 = fadd fast float %230, %227
  %233 = extractvalue %dx.types.CBufRet.f32 %228, 0
  %234 = fmul fast float %233, 2.000000e+00
  %235 = fadd fast float %234, -1.000000e+00
  %236 = fmul fast float %235, %231
  %237 = fmul fast float %235, %232
  %238 = call float @dx.op.dot2.f32(i32 54, float %236, float %237, float 0x3FB12E2860000000, float 0x3F77E8B200000000)  ; Dot2(ax,ay,bx,by)
  %239 = call float @dx.op.unary.f32(i32 22, float %238)  ; Frc(value)
  %240 = fmul fast float %239, 0x404A7DD040000000
  %241 = call float @dx.op.unary.f32(i32 22, float %240)  ; Frc(value)
  %242 = fmul fast float %7, 1.024000e+03
  %243 = fmul fast float %8, 1.024000e+03
  %244 = fadd fast float %242, -5.120000e+02
  %245 = fadd fast float %243, -5.120000e+02
  %246 = fmul fast float %7, 0x4081BEDF00000000
  %247 = fadd fast float %246, 0xC071BEDF00000000
  %248 = call float @dx.op.unary.f32(i32 22, float %247)  ; Frc(value)
  %249 = fmul fast float %248, %244
  %250 = fadd fast float %249, %245
  %251 = fmul fast float %8, 0x4073BEBE20000000
  %252 = fadd fast float %251, 0xC063BEBE20000000
  %253 = call float @dx.op.unary.f32(i32 22, float %252)  ; Frc(value)
  %254 = fmul fast float %253, %245
  %255 = fadd fast float %254, %244
  %256 = fmul fast float %255, %250
  %257 = call float @dx.op.unary.f32(i32 22, float %256)  ; Frc(value)
  %258 = fmul fast float %257, 2.500000e-01
  %259 = fadd fast float %241, -1.250000e-01
  %260 = fadd fast float %259, %258
  %261 = call float @dx.op.unary.f32(i32 22, float %260)  ; Frc(value)
  %262 = fmul fast float %261, 5.000000e-01
  %263 = fadd fast float %262, -1.000000e+00
  %264 = fmul fast float %263, %220
  %265 = fmul fast float %263, %222
  %266 = fsub fast float %7, %264
  %267 = fsub fast float %8, %265
  %268 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %3, float %266, float %267, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %269 = extractvalue %dx.types.ResRet.f32 %268, 0
  %270 = extractvalue %dx.types.ResRet.f32 %268, 1
  %271 = extractvalue %dx.types.ResRet.f32 %268, 2
  %272 = fsub fast float -0.000000e+00, %263
  %273 = call float @dx.op.unary.f32(i32 7, float %272)  ; Saturate(value)
  %274 = fmul fast float %273, %18
  %275 = fadd fast float %274, %19
  %276 = call float @dx.op.unary.f32(i32 6, float %263)  ; FAbs(value)
  %277 = fmul fast float %276, %18
  %278 = fsub fast float 1.000000e+00, %277
  %279 = call float @dx.op.unary.f32(i32 7, float %263)  ; Saturate(value)
  %280 = fmul fast float %279, %18
  %281 = fadd fast float %280, %19
  %282 = fmul fast float %275, %269
  %283 = fmul fast float %278, %270
  %284 = fmul fast float %281, %271
  %285 = fadd fast float %261, 1.000000e+00
  %286 = fmul fast float %285, 5.000000e-01
  %287 = fadd fast float %286, -1.000000e+00
  %288 = fmul fast float %287, %220
  %289 = fmul fast float %287, %222
  %290 = fsub fast float %7, %288
  %291 = fsub fast float %8, %289
  %292 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %3, float %290, float %291, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %293 = extractvalue %dx.types.ResRet.f32 %292, 0
  %294 = extractvalue %dx.types.ResRet.f32 %292, 1
  %295 = extractvalue %dx.types.ResRet.f32 %292, 2
  %296 = fsub fast float -0.000000e+00, %287
  %297 = call float @dx.op.unary.f32(i32 7, float %296)  ; Saturate(value)
  %298 = fmul fast float %297, %18
  %299 = fadd fast float %298, %19
  %300 = call float @dx.op.unary.f32(i32 6, float %287)  ; FAbs(value)
  %301 = fmul fast float %300, %18
  %302 = fsub fast float 1.000000e+00, %301
  %303 = call float @dx.op.unary.f32(i32 7, float %287)  ; Saturate(value)
  %304 = fmul fast float %303, %18
  %305 = fadd fast float %304, %19
  %306 = fmul fast float %299, %293
  %307 = fmul fast float %302, %294
  %308 = fmul fast float %305, %295
  %309 = fadd fast float %306, %282
  %310 = fadd fast float %307, %283
  %311 = fadd fast float %308, %284
  %312 = fadd fast float %299, %275
  %313 = fadd fast float %302, %278
  %314 = fadd fast float %305, %281
  %315 = fadd fast float %261, 2.000000e+00
  %316 = fmul fast float %315, 5.000000e-01
  %317 = fadd fast float %316, -1.000000e+00
  %318 = fmul fast float %317, %220
  %319 = fmul fast float %317, %222
  %320 = fsub fast float %7, %318
  %321 = fsub fast float %8, %319
  %322 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %3, float %320, float %321, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %323 = extractvalue %dx.types.ResRet.f32 %322, 0
  %324 = extractvalue %dx.types.ResRet.f32 %322, 1
  %325 = extractvalue %dx.types.ResRet.f32 %322, 2
  %326 = fsub fast float -0.000000e+00, %317
  %327 = call float @dx.op.unary.f32(i32 7, float %326)  ; Saturate(value)
  %328 = fmul fast float %327, %18
  %329 = fadd fast float %328, %19
  %330 = call float @dx.op.unary.f32(i32 6, float %317)  ; FAbs(value)
  %331 = fmul fast float %330, %18
  %332 = fsub fast float 1.000000e+00, %331
  %333 = call float @dx.op.unary.f32(i32 7, float %317)  ; Saturate(value)
  %334 = fmul fast float %333, %18
  %335 = fadd fast float %334, %19
  %336 = fmul fast float %329, %323
  %337 = fmul fast float %332, %324
  %338 = fmul fast float %335, %325
  %339 = fadd fast float %309, %336
  %340 = fadd fast float %310, %337
  %341 = fadd fast float %311, %338
  %342 = fadd fast float %312, %329
  %343 = fadd fast float %313, %332
  %344 = fadd fast float %314, %335
  %345 = fadd fast float %261, 3.000000e+00
  %346 = fmul fast float %345, 5.000000e-01
  %347 = fadd fast float %346, -1.000000e+00
  %348 = fmul fast float %347, %220
  %349 = fmul fast float %347, %222
  %350 = fsub fast float %7, %348
  %351 = fsub fast float %8, %349
  %352 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %3, float %350, float %351, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %353 = extractvalue %dx.types.ResRet.f32 %352, 0
  %354 = extractvalue %dx.types.ResRet.f32 %352, 1
  %355 = extractvalue %dx.types.ResRet.f32 %352, 2
  %356 = fsub fast float -0.000000e+00, %347
  %357 = call float @dx.op.unary.f32(i32 7, float %356)  ; Saturate(value)
  %358 = fmul fast float %357, %18
  %359 = fadd fast float %358, %19
  %360 = call float @dx.op.unary.f32(i32 6, float %347)  ; FAbs(value)
  %361 = fmul fast float %360, %18
  %362 = fsub fast float 1.000000e+00, %361
  %363 = call float @dx.op.unary.f32(i32 7, float %347)  ; Saturate(value)
  %364 = fmul fast float %363, %18
  %365 = fadd fast float %364, %19
  %366 = fmul fast float %359, %353
  %367 = fmul fast float %362, %354
  %368 = fmul fast float %365, %355
  %369 = fadd fast float %339, %366
  %370 = fadd fast float %340, %367
  %371 = fadd fast float %341, %368
  %372 = fadd fast float %342, %359
  %373 = fadd fast float %343, %362
  %374 = fadd fast float %344, %365
  %375 = fdiv fast float %369, %372
  %376 = fdiv fast float %370, %373
  %377 = fdiv fast float %371, %374
  br label %383

; <label>:378                                     ; preds = %117
  %379 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %3, float %7, float %8, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %380 = extractvalue %dx.types.ResRet.f32 %379, 0
  %381 = extractvalue %dx.types.ResRet.f32 %379, 1
  %382 = extractvalue %dx.types.ResRet.f32 %379, 2
  br label %383

; <label>:383                                     ; preds = %378, %205, %125
  %384 = phi float [ %202, %125 ], [ %375, %205 ], [ %380, %378 ]
  %385 = phi float [ %203, %125 ], [ %376, %205 ], [ %381, %378 ]
  %386 = phi float [ %204, %125 ], [ %377, %205 ], [ %382, %378 ]
  %387 = fmul fast float %384, %118
  %388 = fmul fast float %385, %118
  %389 = fmul fast float %386, %118
  br label %390

; <label>:390                                     ; preds = %383, %93
  %391 = phi float [ %387, %383 ], [ 0.000000e+00, %93 ]
  %392 = phi float [ %388, %383 ], [ 0.000000e+00, %93 ]
  %393 = phi float [ %389, %383 ], [ 0.000000e+00, %93 ]
  %394 = fcmp fast ogt float %96, 0.000000e+00
  br i1 %394, label %395, label %618, !dx.controlflow.hints !30

; <label>:395                                     ; preds = %390
  %396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 229)  ; CBufferLoadLegacy(handle,regIndex)
  %397 = extractvalue %dx.types.CBufRet.f32 %396, 0
  %398 = extractvalue %dx.types.CBufRet.f32 %396, 1
  %399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 230)  ; CBufferLoadLegacy(handle,regIndex)
  %400 = extractvalue %dx.types.CBufRet.f32 %399, 0
  %401 = extractvalue %dx.types.CBufRet.f32 %399, 1
  %402 = extractvalue %dx.types.CBufRet.f32 %399, 2
  %403 = extractvalue %dx.types.CBufRet.f32 %399, 3
  %404 = fsub fast float %97, %397
  %405 = fmul fast float %404, %398
  %406 = call float @dx.op.unary.f32(i32 7, float %405)  ; Saturate(value)
  %407 = fsub fast float %402, %400
  %408 = fsub fast float %403, %401
  %409 = fmul fast float %407, %406
  %410 = fmul fast float %408, %406
  %411 = fadd fast float %409, %400
  %412 = fadd fast float %410, %401
  %413 = fsub fast float 1.000000e+00, %412
  %414 = call float @dx.op.binary.f32(i32 35, float %411, float %413)  ; FMax(a,b)
  %415 = fcmp fast ogt float %414, 0.000000e+00
  br i1 %415, label %416, label %600, !dx.controlflow.hints !31

; <label>:416                                     ; preds = %395
  %417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 226)  ; CBufferLoadLegacy(handle,regIndex)
  %418 = extractvalue %dx.types.CBufRet.f32 %417, 0
  %419 = extractvalue %dx.types.CBufRet.f32 %417, 1
  %420 = fsub fast float %94, %418
  %421 = fmul fast float %420, 2.000000e+00
  %422 = fsub fast float %95, %419
  %423 = fmul fast float %422, 2.000000e+00
  %424 = call float @dx.op.dot2.f32(i32 54, float %421, float %423, float %421, float %423)  ; Dot2(ax,ay,bx,by)
  %425 = bitcast float %424 to i32
  %426 = ashr i32 %425, 1
  %427 = add nsw i32 %426, 532487669
  %428 = bitcast i32 %427 to float
  %429 = call float @dx.op.binary.f32(i32 35, float %428, float 0.000000e+00)  ; FMax(a,b)
  %430 = call float @dx.op.unary.f32(i32 7, float %429)  ; Saturate(value)
  %431 = fmul fast float %430, 2.000000e+00
  %432 = fsub fast float 3.000000e+00, %431
  %433 = fmul fast float %430, %430
  %434 = fmul fast float %433, %411
  %435 = fmul fast float %434, %432
  %436 = fsub fast float 1.000000e+00, %23
  %437 = fsub fast float 1.000000e+00, %429
  %438 = fdiv fast float %437, %429
  %439 = fmul fast float %438, %23
  %440 = fadd fast float %439, %436
  %441 = fmul fast float %440, %421
  %442 = fmul fast float %441, %435
  %443 = fmul fast float %440, %423
  %444 = fmul fast float %443, %435
  %445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %446 = extractvalue %dx.types.CBufRet.f32 %445, 0
  %447 = extractvalue %dx.types.CBufRet.f32 %445, 1
  %448 = fmul fast float %446, %94
  %449 = fmul fast float %447, %95
  %450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %451 = extractvalue %dx.types.CBufRet.f32 %450, 2
  %452 = fmul fast float %451, 0x40165A5B00000000
  %453 = fadd fast float %452, %448
  %454 = fadd fast float %452, %449
  %455 = extractvalue %dx.types.CBufRet.f32 %450, 0
  %456 = fmul fast float %455, 2.000000e+00
  %457 = fadd fast float %456, -1.000000e+00
  %458 = fmul fast float %457, %453
  %459 = fmul fast float %457, %454
  %460 = call float @dx.op.dot2.f32(i32 54, float %458, float %459, float 0x3FB12E2860000000, float 0x3F77E8B200000000)  ; Dot2(ax,ay,bx,by)
  %461 = call float @dx.op.unary.f32(i32 22, float %460)  ; Frc(value)
  %462 = fmul fast float %461, 0x404A7DD040000000
  %463 = call float @dx.op.unary.f32(i32 22, float %462)  ; Frc(value)
  %464 = fmul fast float %94, 1.024000e+03
  %465 = fmul fast float %95, 1.024000e+03
  %466 = fadd fast float %464, -5.120000e+02
  %467 = fadd fast float %465, -5.120000e+02
  %468 = fmul fast float %94, 0x4081BEDF00000000
  %469 = fadd fast float %468, 0xC071BEDF00000000
  %470 = call float @dx.op.unary.f32(i32 22, float %469)  ; Frc(value)
  %471 = fmul fast float %470, %466
  %472 = fadd fast float %471, %467
  %473 = fmul fast float %95, 0x4073BEBE20000000
  %474 = fadd fast float %473, 0xC063BEBE20000000
  %475 = call float @dx.op.unary.f32(i32 22, float %474)  ; Frc(value)
  %476 = fmul fast float %475, %467
  %477 = fadd fast float %476, %466
  %478 = fmul fast float %477, %472
  %479 = call float @dx.op.unary.f32(i32 22, float %478)  ; Frc(value)
  %480 = fmul fast float %479, 2.500000e-01
  %481 = fadd fast float %463, -1.250000e-01
  %482 = fadd fast float %481, %480
  %483 = call float @dx.op.unary.f32(i32 22, float %482)  ; Frc(value)
  %484 = fmul fast float %483, 5.000000e-01
  %485 = fadd fast float %484, -1.000000e+00
  %486 = fmul fast float %485, %442
  %487 = fmul fast float %485, %444
  %488 = fsub fast float %94, %486
  %489 = fsub fast float %95, %487
  %490 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %3, float %488, float %489, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %491 = extractvalue %dx.types.ResRet.f32 %490, 0
  %492 = extractvalue %dx.types.ResRet.f32 %490, 1
  %493 = extractvalue %dx.types.ResRet.f32 %490, 2
  %494 = fsub fast float -0.000000e+00, %485
  %495 = call float @dx.op.unary.f32(i32 7, float %494)  ; Saturate(value)
  %496 = fmul fast float %495, %412
  %497 = fadd fast float %496, %413
  %498 = call float @dx.op.unary.f32(i32 6, float %485)  ; FAbs(value)
  %499 = fmul fast float %498, %412
  %500 = fsub fast float 1.000000e+00, %499
  %501 = call float @dx.op.unary.f32(i32 7, float %485)  ; Saturate(value)
  %502 = fmul fast float %501, %412
  %503 = fadd fast float %502, %413
  %504 = fmul fast float %497, %491
  %505 = fmul fast float %500, %492
  %506 = fmul fast float %503, %493
  %507 = fadd fast float %483, 1.000000e+00
  %508 = fmul fast float %507, 5.000000e-01
  %509 = fadd fast float %508, -1.000000e+00
  %510 = fmul fast float %509, %442
  %511 = fmul fast float %509, %444
  %512 = fsub fast float %94, %510
  %513 = fsub fast float %95, %511
  %514 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %3, float %512, float %513, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %515 = extractvalue %dx.types.ResRet.f32 %514, 0
  %516 = extractvalue %dx.types.ResRet.f32 %514, 1
  %517 = extractvalue %dx.types.ResRet.f32 %514, 2
  %518 = fsub fast float -0.000000e+00, %509
  %519 = call float @dx.op.unary.f32(i32 7, float %518)  ; Saturate(value)
  %520 = fmul fast float %519, %412
  %521 = fadd fast float %520, %413
  %522 = call float @dx.op.unary.f32(i32 6, float %509)  ; FAbs(value)
  %523 = fmul fast float %522, %412
  %524 = fsub fast float 1.000000e+00, %523
  %525 = call float @dx.op.unary.f32(i32 7, float %509)  ; Saturate(value)
  %526 = fmul fast float %525, %412
  %527 = fadd fast float %526, %413
  %528 = fmul fast float %521, %515
  %529 = fmul fast float %524, %516
  %530 = fmul fast float %527, %517
  %531 = fadd fast float %528, %504
  %532 = fadd fast float %529, %505
  %533 = fadd fast float %530, %506
  %534 = fadd fast float %521, %497
  %535 = fadd fast float %524, %500
  %536 = fadd fast float %527, %503
  %537 = fadd fast float %483, 2.000000e+00
  %538 = fmul fast float %537, 5.000000e-01
  %539 = fadd fast float %538, -1.000000e+00
  %540 = fmul fast float %539, %442
  %541 = fmul fast float %539, %444
  %542 = fsub fast float %94, %540
  %543 = fsub fast float %95, %541
  %544 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %3, float %542, float %543, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %545 = extractvalue %dx.types.ResRet.f32 %544, 0
  %546 = extractvalue %dx.types.ResRet.f32 %544, 1
  %547 = extractvalue %dx.types.ResRet.f32 %544, 2
  %548 = fsub fast float -0.000000e+00, %539
  %549 = call float @dx.op.unary.f32(i32 7, float %548)  ; Saturate(value)
  %550 = fmul fast float %549, %412
  %551 = fadd fast float %550, %413
  %552 = call float @dx.op.unary.f32(i32 6, float %539)  ; FAbs(value)
  %553 = fmul fast float %552, %412
  %554 = fsub fast float 1.000000e+00, %553
  %555 = call float @dx.op.unary.f32(i32 7, float %539)  ; Saturate(value)
  %556 = fmul fast float %555, %412
  %557 = fadd fast float %556, %413
  %558 = fmul fast float %551, %545
  %559 = fmul fast float %554, %546
  %560 = fmul fast float %557, %547
  %561 = fadd fast float %531, %558
  %562 = fadd fast float %532, %559
  %563 = fadd fast float %533, %560
  %564 = fadd fast float %534, %551
  %565 = fadd fast float %535, %554
  %566 = fadd fast float %536, %557
  %567 = fadd fast float %483, 3.000000e+00
  %568 = fmul fast float %567, 5.000000e-01
  %569 = fadd fast float %568, -1.000000e+00
  %570 = fmul fast float %569, %442
  %571 = fmul fast float %569, %444
  %572 = fsub fast float %94, %570
  %573 = fsub fast float %95, %571
  %574 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %3, float %572, float %573, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %575 = extractvalue %dx.types.ResRet.f32 %574, 0
  %576 = extractvalue %dx.types.ResRet.f32 %574, 1
  %577 = extractvalue %dx.types.ResRet.f32 %574, 2
  %578 = fsub fast float -0.000000e+00, %569
  %579 = call float @dx.op.unary.f32(i32 7, float %578)  ; Saturate(value)
  %580 = fmul fast float %579, %412
  %581 = fadd fast float %580, %413
  %582 = call float @dx.op.unary.f32(i32 6, float %569)  ; FAbs(value)
  %583 = fmul fast float %582, %412
  %584 = fsub fast float 1.000000e+00, %583
  %585 = call float @dx.op.unary.f32(i32 7, float %569)  ; Saturate(value)
  %586 = fmul fast float %585, %412
  %587 = fadd fast float %586, %413
  %588 = fmul fast float %581, %575
  %589 = fmul fast float %584, %576
  %590 = fmul fast float %587, %577
  %591 = fadd fast float %561, %588
  %592 = fadd fast float %562, %589
  %593 = fadd fast float %563, %590
  %594 = fadd fast float %564, %581
  %595 = fadd fast float %565, %584
  %596 = fadd fast float %566, %587
  %597 = fdiv fast float %591, %594
  %598 = fdiv fast float %592, %595
  %599 = fdiv fast float %593, %596
  br label %605

; <label>:600                                     ; preds = %395
  %601 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %3, float %94, float %95, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %602 = extractvalue %dx.types.ResRet.f32 %601, 0
  %603 = extractvalue %dx.types.ResRet.f32 %601, 1
  %604 = extractvalue %dx.types.ResRet.f32 %601, 2
  br label %605

; <label>:605                                     ; preds = %600, %416
  %606 = phi float [ %597, %416 ], [ %602, %600 ]
  %607 = phi float [ %598, %416 ], [ %603, %600 ]
  %608 = phi float [ %599, %416 ], [ %604, %600 ]
  %609 = fsub fast float %606, %391
  %610 = fsub fast float %607, %392
  %611 = fsub fast float %608, %393
  %612 = fmul fast float %609, %96
  %613 = fmul fast float %610, %96
  %614 = fmul fast float %611, %96
  %615 = fadd fast float %612, %391
  %616 = fadd fast float %613, %392
  %617 = fadd fast float %614, %393
  br label %618

; <label>:618                                     ; preds = %605, %390
  %619 = phi float [ %615, %605 ], [ %391, %390 ]
  %620 = phi float [ %616, %605 ], [ %392, %390 ]
  %621 = phi float [ %617, %605 ], [ %393, %390 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %619)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %620)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %621)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

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
!dx.viewIdState = !{!15}
!dx.entryPoints = !{!16}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !9, !13}
!5 = !{!6, !8}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!9 = !{!10, !11, !12}
!10 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!11 = !{i32 1, %perObject* undef, !"", i32 0, i32 1, i32 1, i32 96, null}
!12 = !{i32 2, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 112, null}
!13 = !{!14}
!14 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!15 = !{[8 x i32] [i32 6, i32 4, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7]}
!16 = !{void ()* @ps_main, !"ps_main", !17, !4, null}
!17 = !{!18, !23, null}
!18 = !{!19, !21}
!19 = !{i32 0, !"SV_Position", i8 9, i8 3, !20, i8 4, i32 1, i8 4, i32 0, i8 0, null}
!20 = !{i32 0}
!21 = !{i32 1, !"TEXCOORD", i8 9, i8 0, !20, i8 2, i32 1, i8 2, i32 1, i8 0, !22}
!22 = !{i32 3, i32 3}
!23 = !{!24}
!24 = !{i32 0, !"SV_Target", i8 9, i8 16, !20, i8 0, i32 1, i8 4, i32 0, i8 0, !25}
!25 = !{i32 3, i32 15}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 1}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 1}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 1}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 1}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 1}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 1}

