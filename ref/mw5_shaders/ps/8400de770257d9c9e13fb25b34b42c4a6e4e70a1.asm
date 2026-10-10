;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy  
; TEXCOORD                 0   xy          1     NONE   float   xy  
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: fb4e575953706a80e9a07548645b5e5f
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
;   [224 x i8] (type annotation not present)
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
;                                   sampler      NA          NA      S0             s2     1
;                                   sampler      NA          NA      S1             s4     1
;                                   texture     f32          3d      T0             t0     1
;                                   texture     f32          2d      T1             t1     1
;                                   texture     f32          2d      T2             t2     1
;                                   texture     f32          2d      T3             t3     1
;                                   texture     f32          2d      T4             t4     1
;                                   texture     f32          2d      T5             t5     1
;
;
; ViewId state:
;
; Number of inputs: 6, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 4, 5 }
;   output 1 depends on inputs: { 0, 1, 4, 5 }
;   output 2 depends on inputs: { 0, 1, 4, 5 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
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
%perObject = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %12 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %13 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %14 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %15 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %16 = extractvalue %dx.types.CBufRet.f32 %15, 0
  %17 = bitcast float %16 to i32
  %18 = extractvalue %dx.types.CBufRet.f32 %15, 1
  %19 = extractvalue %dx.types.CBufRet.f32 %15, 2
  %20 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %21 = extractvalue %dx.types.CBufRet.f32 %20, 0
  %22 = bitcast float %21 to i32
  %23 = and i32 %22, 127
  %24 = and i32 %17, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %79, label %26

; <label>:26                                      ; preds = %0
  %27 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %28 = extractvalue %dx.types.CBufRet.f32 %27, 3
  %29 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %30 = extractvalue %dx.types.CBufRet.f32 %29, 3
  %31 = fcmp fast olt float %30, 5.000000e-01
  %32 = select i1 %31, float 0.000000e+00, float 1.000000e+00
  %33 = fcmp fast une float %32, 0.000000e+00
  %34 = fmul fast float %11, 2.000000e+00
  %35 = fmul fast float %12, 2.000000e+00
  %36 = fadd fast float %34, -1.000000e+00
  %37 = fadd fast float %35, -1.000000e+00
  br i1 %33, label %50, label %38

; <label>:38                                      ; preds = %26
  %39 = call float @dx.op.dot2.f32(i32 54, float %36, float %37, float %36, float %37)  ; Dot2(ax,ay,bx,by)
  %40 = fmul fast float %39, %28
  %41 = fadd fast float %40, 1.000000e+00
  %42 = fmul fast float %41, %36
  %43 = fmul fast float %41, %37
  %44 = fcmp fast ogt float %28, 0.000000e+00
  %45 = fadd fast float %28, 1.000000e+00
  %46 = fdiv fast float 1.000000e+00, %45
  %47 = select i1 %44, float %46, float 1.000000e+00
  %48 = fmul fast float %42, %47
  %49 = fmul fast float %43, %47
  br label %72

; <label>:50                                      ; preds = %26
  %51 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %52 = extractvalue %dx.types.CBufRet.f32 %51, 3
  %53 = fmul fast float %52, %36
  %54 = fmul fast float %52, %37
  %55 = extractvalue %dx.types.CBufRet.f32 %29, 2
  %56 = extractvalue %dx.types.CBufRet.f32 %29, 1
  %57 = extractvalue %dx.types.CBufRet.f32 %29, 0
  %58 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %59 = extractvalue %dx.types.CBufRet.f32 %58, 3
  %60 = fmul fast float %59, %53
  %61 = fmul fast float %59, %54
  %62 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 53)  ; CBufferLoadLegacy(handle,regIndex)
  %63 = extractvalue %dx.types.CBufRet.f32 %62, 1
  %64 = fmul fast float %61, %63
  %65 = call float @dx.op.dot2.f32(i32 54, float %60, float %64, float %60, float %64)  ; Dot2(ax,ay,bx,by)
  %66 = call float @dx.op.unary.f32(i32 24, float %65)  ; Sqrt(value)
  %67 = fmul fast float %66, %65
  %68 = call float @dx.op.dot3.f32(i32 55, float %57, float %56, float %55, float %67, float %65, float %66)  ; Dot3(ax,ay,az,bx,by,bz)
  %69 = fadd fast float %68, 1.000000e+00
  %70 = fdiv fast float %53, %69
  %71 = fdiv fast float %54, %69
  br label %72

; <label>:72                                      ; preds = %50, %38
  %73 = phi float [ %48, %38 ], [ %70, %50 ]
  %74 = phi float [ %49, %38 ], [ %71, %50 ]
  %75 = fmul fast float %73, 5.000000e-01
  %76 = fmul fast float %74, 5.000000e-01
  %77 = fadd fast float %75, 5.000000e-01
  %78 = fadd fast float %76, 5.000000e-01
  br label %79

; <label>:79                                      ; preds = %72, %0
  %80 = phi float [ %77, %72 ], [ %11, %0 ]
  %81 = phi float [ %78, %72 ], [ %12, %0 ]
  %82 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %8, float %80, float %81, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %83 = extractvalue %dx.types.ResRet.f32 %82, 0
  %84 = extractvalue %dx.types.ResRet.f32 %82, 1
  %85 = extractvalue %dx.types.ResRet.f32 %82, 2
  %86 = and i32 %17, 512
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %102, label %88

; <label>:88                                      ; preds = %79
  %89 = call float @dx.op.unary.f32(i32 7, float %83)  ; Saturate(value)
  %90 = call float @dx.op.unary.f32(i32 7, float %84)  ; Saturate(value)
  %91 = call float @dx.op.unary.f32(i32 7, float %85)  ; Saturate(value)
  %92 = fmul fast float %89, 0x3FEF07C200000000
  %93 = fmul fast float %90, 0x3FEF07C200000000
  %94 = fmul fast float %91, 0x3FEF07C200000000
  %95 = fadd fast float %92, 0x3F8F07C200000000
  %96 = fadd fast float %93, 0x3F8F07C200000000
  %97 = fadd fast float %94, 0x3F8F07C200000000
  %98 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %7, float %95, float %96, float %97, float undef, i32 0, i32 0, i32 0, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %99 = extractvalue %dx.types.ResRet.f32 %98, 0
  %100 = extractvalue %dx.types.ResRet.f32 %98, 1
  %101 = extractvalue %dx.types.ResRet.f32 %98, 2
  br label %102

; <label>:102                                     ; preds = %88, %79
  %103 = phi float [ %99, %88 ], [ %83, %79 ]
  %104 = phi float [ %100, %88 ], [ %84, %79 ]
  %105 = phi float [ %101, %88 ], [ %85, %79 ]
  %106 = and i32 %17, 130
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %199, label %108

; <label>:108                                     ; preds = %102
  %109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 228)  ; CBufferLoadLegacy(handle,regIndex)
  %110 = extractvalue %dx.types.CBufRet.f32 %109, 2
  %111 = extractvalue %dx.types.CBufRet.f32 %109, 0
  %112 = call float @dx.op.binary.f32(i32 35, float %11, float %111)  ; FMax(a,b)
  %113 = call float @dx.op.binary.f32(i32 36, float %112, float %110)  ; FMin(a,b)
  %114 = call float @dx.op.binary.f32(i32 36, float %11, float %111)  ; FMin(a,b)
  %115 = call float @dx.op.binary.f32(i32 35, float %114, float %113)  ; FMax(a,b)
  %116 = fcmp fast oeq float %11, %115
  %117 = extractvalue %dx.types.CBufRet.f32 %109, 3
  %118 = extractvalue %dx.types.CBufRet.f32 %109, 1
  %119 = call float @dx.op.binary.f32(i32 35, float %12, float %118)  ; FMax(a,b)
  %120 = call float @dx.op.binary.f32(i32 36, float %119, float %117)  ; FMin(a,b)
  %121 = call float @dx.op.binary.f32(i32 36, float %12, float %118)  ; FMin(a,b)
  %122 = call float @dx.op.binary.f32(i32 35, float %121, float %120)  ; FMax(a,b)
  %123 = fcmp fast oeq float %12, %122
  %124 = and i1 %116, %123
  br i1 %124, label %125, label %199

; <label>:125                                     ; preds = %108
  %126 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %8, float %80, float %81, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %127 = extractvalue %dx.types.ResRet.f32 %126, 0
  %128 = fsub fast float 1.000000e+00, %127
  %129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 222)  ; CBufferLoadLegacy(handle,regIndex)
  %130 = extractvalue %dx.types.CBufRet.f32 %129, 0
  %131 = extractvalue %dx.types.CBufRet.f32 %129, 1
  %132 = extractvalue %dx.types.CBufRet.f32 %129, 2
  %133 = extractvalue %dx.types.CBufRet.f32 %129, 3
  %134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 226)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.f32 %134, 0
  %136 = extractvalue %dx.types.CBufRet.f32 %134, 1
  %137 = fsub fast float %128, %130
  %138 = fmul fast float %137, %131
  %139 = call float @dx.op.unary.f32(i32 7, float %138)  ; Saturate(value)
  %140 = fmul fast float %139, %139
  %141 = fsub fast float %133, %132
  %142 = fmul fast float %140, %141
  %143 = fadd fast float %142, %132
  %144 = fcmp fast olt float %128, 1.000000e+00
  %145 = fsub fast float %80, %135
  %146 = fsub fast float %81, %136
  %147 = fmul fast float %143, %145
  %148 = fmul fast float %143, %146
  %149 = fadd fast float %147, %135
  %150 = fadd fast float %148, %136
  %151 = select i1 %144, float %149, float %80
  %152 = select i1 %144, float %150, float %81
  %153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %154 = extractvalue %dx.types.CBufRet.f32 %153, 0
  %155 = extractvalue %dx.types.CBufRet.f32 %153, 1
  %156 = fsub fast float %128, %154
  %157 = fmul fast float %156, %155
  %158 = call float @dx.op.unary.f32(i32 7, float %157)  ; Saturate(value)
  %159 = fsub fast float 1.000000e+00, %158
  %160 = and i32 %17, 2
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %167, label %162

; <label>:162                                     ; preds = %125
  %163 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %8, float %151, float %152, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %164 = extractvalue %dx.types.ResRet.f32 %163, 0
  %165 = extractvalue %dx.types.ResRet.f32 %163, 1
  %166 = extractvalue %dx.types.ResRet.f32 %163, 2
  br label %167

; <label>:167                                     ; preds = %162, %125
  %168 = phi float [ %164, %162 ], [ %103, %125 ]
  %169 = phi float [ %165, %162 ], [ %104, %125 ]
  %170 = phi float [ %166, %162 ], [ %105, %125 ]
  %171 = and i32 %17, 128
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %186, label %173

; <label>:173                                     ; preds = %167
  %174 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %8, float %151, float %152, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %175 = extractvalue %dx.types.ResRet.f32 %174, 0
  %176 = extractvalue %dx.types.ResRet.f32 %174, 1
  %177 = extractvalue %dx.types.ResRet.f32 %174, 2
  %178 = extractvalue %dx.types.ResRet.f32 %174, 3
  %179 = fsub fast float 1.000000e+00, %178
  %180 = fmul fast float %179, %168
  %181 = fmul fast float %179, %169
  %182 = fmul fast float %179, %170
  %183 = fadd fast float %180, %175
  %184 = fadd fast float %181, %176
  %185 = fadd fast float %182, %177
  br label %186

; <label>:186                                     ; preds = %173, %167
  %187 = phi float [ %183, %173 ], [ %168, %167 ]
  %188 = phi float [ %184, %173 ], [ %169, %167 ]
  %189 = phi float [ %185, %173 ], [ %170, %167 ]
  %190 = fsub fast float %187, %103
  %191 = fsub fast float %188, %104
  %192 = fsub fast float %189, %105
  %193 = fmul fast float %190, %159
  %194 = fmul fast float %191, %159
  %195 = fmul fast float %192, %159
  %196 = fadd fast float %193, %103
  %197 = fadd fast float %194, %104
  %198 = fadd fast float %195, %105
  br label %199

; <label>:199                                     ; preds = %186, %108, %102
  %200 = phi float [ %103, %102 ], [ %196, %186 ], [ %103, %108 ]
  %201 = phi float [ %104, %102 ], [ %197, %186 ], [ %104, %108 ]
  %202 = phi float [ %105, %102 ], [ %198, %186 ], [ %105, %108 ]
  %203 = and i32 %17, 4
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %251, label %205

; <label>:205                                     ; preds = %199
  %206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 220)  ; CBufferLoadLegacy(handle,regIndex)
  %207 = extractvalue %dx.types.CBufRet.f32 %206, 1
  %208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %209 = extractvalue %dx.types.CBufRet.f32 %208, 3
  %210 = call float @dx.op.binary.f32(i32 35, float %200, float %201)  ; FMax(a,b)
  %211 = call float @dx.op.binary.f32(i32 36, float %210, float %202)  ; FMin(a,b)
  %212 = call float @dx.op.binary.f32(i32 36, float %200, float %201)  ; FMin(a,b)
  %213 = call float @dx.op.binary.f32(i32 35, float %212, float %211)  ; FMax(a,b)
  %214 = fsub fast float 1.000000e+00, %213
  %215 = call float @dx.op.unary.f32(i32 7, float %214)  ; Saturate(value)
  %216 = fmul fast float %215, 0x3FB99999A0000000
  %217 = fadd fast float %216, %213
  %218 = fmul fast float %217, %217
  %219 = fmul fast float %209, %11
  %220 = fmul fast float %209, %12
  %221 = call float @dx.op.unary.f32(i32 22, float %219)  ; Frc(value)
  %222 = call float @dx.op.unary.f32(i32 22, float %220)  ; Frc(value)
  %223 = fmul fast float %221, 1.024000e+03
  %224 = fmul fast float %222, 1.024000e+03
  %225 = fadd fast float %223, -5.120000e+02
  %226 = fadd fast float %224, -5.120000e+02
  %227 = fmul fast float %221, 0x4081BEDF00000000
  %228 = fadd fast float %227, 0xC071BEDF00000000
  %229 = call float @dx.op.unary.f32(i32 22, float %228)  ; Frc(value)
  %230 = fmul fast float %225, %229
  %231 = fadd fast float %230, %226
  %232 = fmul fast float %222, 0x4073BEBE20000000
  %233 = fadd fast float %232, 0xC063BEBE20000000
  %234 = call float @dx.op.unary.f32(i32 22, float %233)  ; Frc(value)
  %235 = fmul fast float %226, %234
  %236 = fadd fast float %235, %225
  %237 = fmul fast float %236, %231
  %238 = call float @dx.op.unary.f32(i32 22, float %237)  ; Frc(value)
  %239 = fmul fast float %238, 2.000000e+00
  %240 = fadd fast float %239, -1.000000e+00
  %241 = fsub fast float 1.000000e+00, %218
  %242 = call float @dx.op.unary.f32(i32 7, float %241)  ; Saturate(value)
  %243 = fmul fast float %242, %207
  %244 = fmul fast float %243, %240
  %245 = fmul fast float %244, %200
  %246 = fmul fast float %244, %201
  %247 = fmul fast float %244, %202
  %248 = fadd fast float %245, %200
  %249 = fadd fast float %246, %201
  %250 = fadd fast float %247, %202
  br label %251

; <label>:251                                     ; preds = %205, %199
  %252 = phi float [ %248, %205 ], [ %200, %199 ]
  %253 = phi float [ %249, %205 ], [ %201, %199 ]
  %254 = phi float [ %250, %205 ], [ %202, %199 ]
  %255 = and i32 %17, 8
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %271, label %257

; <label>:257                                     ; preds = %251
  %258 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %8, float %11, float %12, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %259 = extractvalue %dx.types.ResRet.f32 %258, 0
  %260 = extractvalue %dx.types.ResRet.f32 %258, 1
  %261 = extractvalue %dx.types.ResRet.f32 %258, 2
  %262 = fsub fast float %259, %252
  %263 = fsub fast float %260, %253
  %264 = fsub fast float %261, %254
  %265 = fmul fast float %262, %18
  %266 = fmul fast float %263, %18
  %267 = fmul fast float %264, %18
  %268 = fadd fast float %265, %252
  %269 = fadd fast float %266, %253
  %270 = fadd fast float %267, %254
  br label %271

; <label>:271                                     ; preds = %257, %251
  %272 = phi float [ %268, %257 ], [ %252, %251 ]
  %273 = phi float [ %269, %257 ], [ %253, %251 ]
  %274 = phi float [ %270, %257 ], [ %254, %251 ]
  %275 = and i32 %17, 16
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %345, label %277

; <label>:277                                     ; preds = %271
  %278 = and i32 %17, 256
  %279 = icmp eq i32 %278, 0
  %280 = add nsw i32 %23, -3
  %281 = icmp ult i32 %280, 2
  br i1 %281, label %282, label %286

; <label>:282                                     ; preds = %277
  %283 = fmul fast float %272, 0x3FF5FE0660000000
  %284 = fmul fast float %273, 0x3FF5FE0660000000
  %285 = fmul fast float %274, 0x3FF5FE0660000000
  br label %286

; <label>:286                                     ; preds = %282, %277
  %287 = phi float [ %283, %282 ], [ %272, %277 ]
  %288 = phi float [ %284, %282 ], [ %273, %277 ]
  %289 = phi float [ %285, %282 ], [ %274, %277 ]
  %290 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %8, float %11, float %12, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %291 = extractvalue %dx.types.ResRet.f32 %290, 0
  %292 = extractvalue %dx.types.ResRet.f32 %290, 1
  %293 = extractvalue %dx.types.ResRet.f32 %290, 2
  br i1 %281, label %294, label %298

; <label>:294                                     ; preds = %286
  %295 = fmul fast float %291, 0x3FF5FE0660000000
  %296 = fmul fast float %292, 0x3FF5FE0660000000
  %297 = fmul fast float %293, 0x3FF5FE0660000000
  br label %298

; <label>:298                                     ; preds = %294, %286
  %299 = phi float [ %295, %294 ], [ %291, %286 ]
  %300 = phi float [ %296, %294 ], [ %292, %286 ]
  %301 = phi float [ %297, %294 ], [ %293, %286 ]
  %302 = fadd fast float %299, %19
  %303 = fadd fast float %300, %19
  %304 = fadd fast float %301, %19
  %305 = fmul fast float %302, %18
  %306 = fmul fast float %303, %18
  %307 = fmul fast float %304, %18
  %308 = fsub fast float 1.000000e+00, %287
  %309 = fsub fast float 1.000000e+00, %288
  %310 = fsub fast float 1.000000e+00, %289
  %311 = fsub fast float 1.000000e+00, %305
  %312 = fsub fast float 1.000000e+00, %306
  %313 = fsub fast float 1.000000e+00, %307
  %314 = fmul fast float %311, %308
  %315 = fmul fast float %312, %309
  %316 = fmul fast float %313, %310
  %317 = fsub fast float 1.000000e+00, %314
  %318 = fsub fast float 1.000000e+00, %315
  %319 = fsub fast float 1.000000e+00, %316
  br i1 %279, label %327, label %320

; <label>:320                                     ; preds = %298
  %321 = fmul fast float %317, %19
  %322 = fmul fast float %318, %19
  %323 = fmul fast float %319, %19
  %324 = fsub fast float %317, %321
  %325 = fsub fast float %318, %322
  %326 = fsub fast float %319, %323
  br label %327

; <label>:327                                     ; preds = %320, %298
  %328 = phi float [ %324, %320 ], [ %317, %298 ]
  %329 = phi float [ %325, %320 ], [ %318, %298 ]
  %330 = phi float [ %326, %320 ], [ %319, %298 ]
  %331 = fmul fast float %19, 0x3FD63C2AC0000000
  %332 = fsub fast float 1.000000e+00, %331
  %333 = select i1 %281, float %332, float 1.000000e+00
  br i1 %281, label %334, label %338

; <label>:334                                     ; preds = %327
  %335 = fmul fast float %328, 0x3FE747E880000000
  %336 = fmul fast float %329, 0x3FE747E880000000
  %337 = fmul fast float %330, 0x3FE747E880000000
  br label %338

; <label>:338                                     ; preds = %334, %327
  %339 = phi float [ %335, %334 ], [ %328, %327 ]
  %340 = phi float [ %336, %334 ], [ %329, %327 ]
  %341 = phi float [ %337, %334 ], [ %330, %327 ]
  %342 = call float @dx.op.binary.f32(i32 36, float %333, float %339)  ; FMin(a,b)
  %343 = call float @dx.op.binary.f32(i32 36, float %333, float %340)  ; FMin(a,b)
  %344 = call float @dx.op.binary.f32(i32 36, float %333, float %341)  ; FMin(a,b)
  br label %345

; <label>:345                                     ; preds = %338, %271
  %346 = phi float [ %342, %338 ], [ %272, %271 ]
  %347 = phi float [ %343, %338 ], [ %273, %271 ]
  %348 = phi float [ %344, %338 ], [ %274, %271 ]
  %349 = and i32 %17, 32
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %364, label %351

; <label>:351                                     ; preds = %345
  %352 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %8, float %11, float %12, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %353 = extractvalue %dx.types.ResRet.f32 %352, 0
  %354 = extractvalue %dx.types.ResRet.f32 %352, 1
  %355 = extractvalue %dx.types.ResRet.f32 %352, 2
  %356 = extractvalue %dx.types.ResRet.f32 %352, 3
  %357 = fsub fast float 1.000000e+00, %356
  %358 = fmul fast float %357, %346
  %359 = fmul fast float %357, %347
  %360 = fmul fast float %357, %348
  %361 = fadd fast float %358, %353
  %362 = fadd fast float %359, %354
  %363 = fadd fast float %360, %355
  br label %364

; <label>:364                                     ; preds = %351, %345
  %365 = phi float [ %361, %351 ], [ %346, %345 ]
  %366 = phi float [ %362, %351 ], [ %347, %345 ]
  %367 = phi float [ %363, %351 ], [ %348, %345 ]
  %368 = and i32 %17, 64
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %424, label %370

; <label>:370                                     ; preds = %364
  %371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %372 = extractvalue %dx.types.CBufRet.f32 %371, 0
  %373 = extractvalue %dx.types.CBufRet.f32 %371, 1
  %374 = extractvalue %dx.types.CBufRet.f32 %371, 2
  %375 = extractvalue %dx.types.CBufRet.f32 %371, 3
  %376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %377 = extractvalue %dx.types.CBufRet.f32 %376, 0
  %378 = extractvalue %dx.types.CBufRet.f32 %376, 1
  %379 = extractvalue %dx.types.CBufRet.f32 %376, 2
  %380 = extractvalue %dx.types.CBufRet.f32 %376, 3
  %381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %382 = extractvalue %dx.types.CBufRet.f32 %381, 0
  %383 = extractvalue %dx.types.CBufRet.f32 %381, 1
  %384 = extractvalue %dx.types.CBufRet.f32 %381, 2
  %385 = extractvalue %dx.types.CBufRet.f32 %381, 3
  %386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %387 = extractvalue %dx.types.CBufRet.f32 %386, 0
  %388 = extractvalue %dx.types.CBufRet.f32 %386, 1
  %389 = extractvalue %dx.types.CBufRet.f32 %386, 2
  %390 = extractvalue %dx.types.CBufRet.f32 %386, 3
  %391 = fadd fast float %372, %374
  %392 = fadd fast float %373, %375
  %393 = fdiv fast float %13, %391
  %394 = fdiv fast float %14, %392
  %395 = fsub fast float -0.000000e+00, %393
  %396 = fsub fast float -0.000000e+00, %394
  %397 = fcmp fast oge float %393, %395
  %398 = fcmp fast oge float %394, %396
  %399 = call float @dx.op.unary.f32(i32 6, float %393)  ; FAbs(value)
  %400 = call float @dx.op.unary.f32(i32 6, float %394)  ; FAbs(value)
  %401 = call float @dx.op.unary.f32(i32 22, float %399)  ; Frc(value)
  %402 = call float @dx.op.unary.f32(i32 22, float %400)  ; Frc(value)
  %403 = fsub fast float -0.000000e+00, %401
  %404 = fsub fast float -0.000000e+00, %402
  %405 = select i1 %397, float %401, float %403
  %406 = select i1 %398, float %402, float %404
  %407 = fmul fast float %405, %391
  %408 = fmul fast float %406, %392
  %409 = fcmp fast olt float %407, %374
  %410 = fcmp fast olt float %408, %375
  %411 = or i1 %409, %410
  %412 = select i1 %411, float %379, float %377
  %413 = select i1 %411, float %384, float %382
  %414 = select i1 %411, float %389, float %387
  %415 = select i1 %411, float %380, float %378
  %416 = select i1 %411, float %385, float %383
  %417 = select i1 %411, float %390, float %388
  %418 = fmul fast float %415, %365
  %419 = fmul fast float %416, %366
  %420 = fmul fast float %417, %367
  %421 = fadd fast float %418, %412
  %422 = fadd fast float %419, %413
  %423 = fadd fast float %420, %414
  br label %424

; <label>:424                                     ; preds = %370, %364
  %425 = phi float [ %421, %370 ], [ %365, %364 ]
  %426 = phi float [ %422, %370 ], [ %366, %364 ]
  %427 = phi float [ %423, %370 ], [ %367, %364 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %425)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %426)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %427)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
!dx.viewIdState = !{!19}
!dx.entryPoints = !{!20}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !13, !16}
!5 = !{!6, !8, !9, !10, !11, !12}
!6 = !{i32 0, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 4, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 4, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 5, i32 1, i32 2, i32 0, !7}
!13 = !{!14, !15}
!14 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!15 = !{i32 1, %perObject* undef, !"", i32 0, i32 1, i32 1, i32 224, null}
!16 = !{!17, !18}
!17 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!18 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!19 = !{[8 x i32] [i32 6, i32 4, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7]}
!20 = !{void ()* @ps_main, !"ps_main", !21, !4, null}
!21 = !{!22, !27, null}
!22 = !{!23, !26}
!23 = !{i32 0, !"SV_Position", i8 9, i8 3, !24, i8 4, i32 1, i8 4, i32 0, i8 0, !25}
!24 = !{i32 0}
!25 = !{i32 3, i32 3}
!26 = !{i32 1, !"TEXCOORD", i8 9, i8 0, !24, i8 2, i32 1, i8 2, i32 1, i8 0, !25}
!27 = !{!28}
!28 = !{i32 0, !"SV_Target", i8 9, i8 16, !24, i8 0, i32 1, i8 4, i32 0, i8 0, !29}
!29 = !{i32 3, i32 15}

