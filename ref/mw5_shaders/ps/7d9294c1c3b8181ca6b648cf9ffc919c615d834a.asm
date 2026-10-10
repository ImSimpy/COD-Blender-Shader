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
; shader hash: c57efa724b381993eaeb47de20c066f6
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
; cbuffer 
; {
;
;   [64 x i8] (type annotation not present)
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
;                                   cbuffer      NA          NA     CB2            cb4     1
;                                   sampler      NA          NA      S0             s1     1
;                                   sampler      NA          NA      S1             s2     1
;                                   texture     f32          2d      T0             t0     1
;                                   texture     f32          2d      T1             t1     1
;                                   texture     f32          2d      T2             t2     1
;                                   texture     f32          2d      T3     t69,space2     1
;                                   texture     f32          2d      T4             t3     1
;                                   texture    byte         r/o      T5     t15,space1     1
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
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
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
%tonemapping = type { i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %13 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %14 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %7, float %12, float %13, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %15 = extractvalue %dx.types.ResRet.f32 %14, 0
  %16 = extractvalue %dx.types.ResRet.f32 %14, 1
  %17 = extractvalue %dx.types.ResRet.f32 %14, 2
  %18 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %7, float %12, float %13, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %19 = extractvalue %dx.types.ResRet.f32 %18, 0
  %20 = fsub fast float 1.000000e+00, %19
  %21 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %22 = extractvalue %dx.types.CBufRet.f32 %21, 0
  %23 = fcmp fast olt float %20, %22
  %24 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %25 = extractvalue %dx.types.CBufRet.f32 %24, 0
  %26 = fcmp fast oge float %16, %25
  %27 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %28 = extractvalue %dx.types.CBufRet.i32 %27, 3
  %29 = and i32 %28, 3
  %30 = icmp ne i32 %29, 0
  %31 = and i32 %28, 4
  %32 = icmp eq i32 %31, 0
  %33 = and i1 %30, %32
  %34 = and i1 %26, %33
  br i1 %34, label %35, label %67

; <label>:35                                      ; preds = %0
  %36 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %37 = fmul fast float %36, 0x3FDAAAAAA0000000
  %38 = call float @dx.op.unary.f32(i32 21, float %37)  ; Exp(value)
  %39 = fsub fast float 1.000000e+00, %38
  %40 = call float @dx.op.unary.f32(i32 23, float %39)  ; Log(value)
  %41 = fmul fast float %40, 0x4003333340000000
  %42 = call float @dx.op.unary.f32(i32 21, float %41)  ; Exp(value)
  %43 = fdiv fast float %38, %39
  %44 = fadd fast float %43, %15
  %45 = fadd fast float %43, %16
  %46 = fadd fast float %43, %17
  %47 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %44)  ; FMax(a,b)
  %48 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %45)  ; FMax(a,b)
  %49 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %46)  ; FMax(a,b)
  %50 = call float @dx.op.unary.f32(i32 23, float %47)  ; Log(value)
  %51 = call float @dx.op.unary.f32(i32 23, float %48)  ; Log(value)
  %52 = call float @dx.op.unary.f32(i32 23, float %49)  ; Log(value)
  %53 = fmul fast float %50, 0x4003333340000000
  %54 = fmul fast float %51, 0x4003333340000000
  %55 = fmul fast float %52, 0x4003333340000000
  %56 = call float @dx.op.unary.f32(i32 21, float %53)  ; Exp(value)
  %57 = call float @dx.op.unary.f32(i32 21, float %54)  ; Exp(value)
  %58 = call float @dx.op.unary.f32(i32 21, float %55)  ; Exp(value)
  %59 = fmul fast float %56, %42
  %60 = fmul fast float %57, %42
  %61 = fmul fast float %58, %42
  %62 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 219)  ; CBufferLoadLegacy(handle,regIndex)
  %63 = extractvalue %dx.types.CBufRet.f32 %62, 1
  %64 = fmul fast float %59, %63
  %65 = fmul fast float %60, %63
  %66 = fmul fast float %61, %63
  br label %163

; <label>:67                                      ; preds = %0
  %68 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 304)  ; CBufferLoadLegacy(handle,regIndex)
  %69 = extractvalue %dx.types.CBufRet.f32 %68, 2
  %70 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 305)  ; CBufferLoadLegacy(handle,regIndex)
  %71 = extractvalue %dx.types.CBufRet.f32 %70, 2
  %72 = extractvalue %dx.types.CBufRet.f32 %70, 3
  %73 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 306)  ; CBufferLoadLegacy(handle,regIndex)
  %74 = extractvalue %dx.types.CBufRet.f32 %73, 0
  %75 = extractvalue %dx.types.CBufRet.f32 %73, 1
  %76 = fcmp fast ugt float %69, 0.000000e+00
  br i1 %76, label %77, label %127

; <label>:77                                      ; preds = %67
  %78 = extractvalue %dx.types.CBufRet.f32 %73, 2
  %79 = fcmp fast ogt float %78, 0.000000e+00
  %80 = extractvalue %dx.types.CBufRet.f32 %70, 1
  %81 = extractvalue %dx.types.CBufRet.f32 %70, 0
  %82 = extractvalue %dx.types.CBufRet.f32 %68, 1
  %83 = extractvalue %dx.types.CBufRet.f32 %68, 0
  %84 = fadd fast float %12, -5.000000e-01
  %85 = fadd fast float %13, -5.000000e-01
  %86 = fmul fast float %83, %84
  %87 = fmul fast float %82, %85
  %88 = fadd fast float %86, %81
  %89 = fadd fast float %87, %80
  br i1 %79, label %90, label %97

; <label>:90                                      ; preds = %77
  %91 = fmul fast float %88, 5.000000e-01
  %92 = fmul fast float %89, 5.000000e-01
  %93 = fadd fast float %91, 5.000000e-01
  %94 = fadd fast float %92, 5.000000e-01
  %95 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %7, float %93, float %94, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %96 = extractvalue %dx.types.ResRet.f32 %95, 0
  br label %110

; <label>:97                                      ; preds = %77
  %98 = fsub fast float -0.000000e+00, %71
  %99 = fsub fast float -0.000000e+00, %72
  %100 = call float @dx.op.binary.f32(i32 35, float %88, float %98)  ; FMax(a,b)
  %101 = call float @dx.op.binary.f32(i32 35, float %89, float %99)  ; FMax(a,b)
  %102 = call float @dx.op.binary.f32(i32 36, float %100, float %71)  ; FMin(a,b)
  %103 = call float @dx.op.binary.f32(i32 36, float %101, float %72)  ; FMin(a,b)
  %104 = fsub fast float %88, %102
  %105 = fsub fast float %89, %103
  %106 = fmul fast float %104, %104
  %107 = fmul fast float %105, %105
  %108 = fadd fast float %107, %106
  %109 = call float @dx.op.unary.f32(i32 24, float %108)  ; Sqrt(value)
  br label %110

; <label>:110                                     ; preds = %97, %90
  %111 = phi float [ %96, %90 ], [ %109, %97 ]
  %112 = fmul fast float %111, %74
  %113 = fadd fast float %112, %75
  %114 = call float @dx.op.unary.f32(i32 7, float %113)  ; Saturate(value)
  %115 = fmul fast float %114, %114
  %116 = fmul fast float %114, 2.000000e+00
  %117 = fsub fast float 3.000000e+00, %116
  %118 = fmul fast float %115, %117
  %119 = fsub fast float %118, %114
  %120 = fmul fast float %119, 0x3FE3333340000000
  %121 = fadd fast float %120, %114
  %122 = fmul fast float %121, %69
  %123 = fsub fast float 1.000000e+00, %122
  %124 = fmul fast float %123, %15
  %125 = fmul fast float %123, %16
  %126 = fmul fast float %123, %17
  br label %127

; <label>:127                                     ; preds = %110, %67
  %128 = phi float [ %124, %110 ], [ %15, %67 ]
  %129 = phi float [ %125, %110 ], [ %16, %67 ]
  %130 = phi float [ %126, %110 ], [ %17, %67 ]
  %131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %132 = extractvalue %dx.types.CBufRet.f32 %131, 0
  %133 = extractvalue %dx.types.CBufRet.f32 %131, 1
  %134 = extractvalue %dx.types.CBufRet.f32 %131, 2
  %135 = call float @dx.op.dot3.f32(i32 55, float %128, float %129, float %130, float %132, float %133, float %134)  ; Dot3(ax,ay,az,bx,by,bz)
  %136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.f32 %136, 0
  %138 = extractvalue %dx.types.CBufRet.f32 %136, 1
  %139 = extractvalue %dx.types.CBufRet.f32 %136, 2
  %140 = call float @dx.op.dot3.f32(i32 55, float %128, float %129, float %130, float %137, float %138, float %139)  ; Dot3(ax,ay,az,bx,by,bz)
  %141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %142 = extractvalue %dx.types.CBufRet.f32 %141, 0
  %143 = extractvalue %dx.types.CBufRet.f32 %141, 1
  %144 = extractvalue %dx.types.CBufRet.f32 %141, 2
  %145 = call float @dx.op.dot3.f32(i32 55, float %128, float %129, float %130, float %142, float %143, float %144)  ; Dot3(ax,ay,az,bx,by,bz)
  %146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %147 = extractvalue %dx.types.CBufRet.f32 %146, 0
  %148 = fmul fast float %147, %135
  %149 = fmul fast float %147, %140
  %150 = fmul fast float %147, %145
  br i1 %23, label %151, label %157

; <label>:151                                     ; preds = %127
  %152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %153 = extractvalue %dx.types.CBufRet.f32 %152, 1
  %154 = fmul fast float %148, %153
  %155 = fmul fast float %149, %153
  %156 = fmul fast float %150, %153
  br label %163

; <label>:157                                     ; preds = %127
  %158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %159 = extractvalue %dx.types.CBufRet.f32 %158, 2
  %160 = fmul fast float %148, %159
  %161 = fmul fast float %149, %159
  %162 = fmul fast float %150, %159
  br label %163

; <label>:163                                     ; preds = %157, %151, %35
  %164 = phi float [ %64, %35 ], [ %154, %151 ], [ %160, %157 ]
  %165 = phi float [ %65, %35 ], [ %155, %151 ], [ %161, %157 ]
  %166 = phi float [ %66, %35 ], [ %156, %151 ], [ %162, %157 ]
  %167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 219)  ; CBufferLoadLegacy(handle,regIndex)
  %168 = extractvalue %dx.types.CBufRet.f32 %167, 0
  %169 = bitcast float %168 to i32
  %170 = icmp eq i32 %169, 4
  br i1 %170, label %171, label %194

; <label>:171                                     ; preds = %163
  %172 = fmul fast float %164, 0x3FEA519BC0000000
  %173 = call float @dx.op.tertiary.f32(i32 46, float 0x3FC6B990A0000000, float %165, float %172)  ; FMad(a,b,c)
  %174 = fmul fast float %164, 0x3FA0FED480000000
  %175 = call float @dx.op.tertiary.f32(i32 46, float 0x3FEEF012C0000000, float %165, float %174)  ; FMad(a,b,c)
  %176 = fmul fast float %164, 0x3F917E1C00000000
  %177 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB288A2E0000000, float %165, float %176)  ; FMad(a,b,c)
  %178 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED22FAA0000000, float %166, float %177)  ; FMad(a,b,c)
  %179 = call float @dx.op.binary.f32(i32 35, float %164, float %165)  ; FMax(a,b)
  %180 = call float @dx.op.binary.f32(i32 35, float %179, float %166)  ; FMax(a,b)
  %181 = fadd fast float %180, -1.000000e+00
  %182 = fmul fast float %181, 2.500000e-01
  %183 = call float @dx.op.unary.f32(i32 7, float %182)  ; Saturate(value)
  %184 = fsub fast float 1.000000e+00, %183
  %185 = fmul fast float %184, %173
  %186 = fmul fast float %184, %175
  %187 = fmul fast float %184, %178
  %188 = fmul fast float %183, %164
  %189 = fmul fast float %183, %165
  %190 = fmul fast float %183, %166
  %191 = fadd fast float %185, %188
  %192 = fadd fast float %186, %189
  %193 = fadd fast float %187, %190
  br label %204

; <label>:194                                     ; preds = %163
  %195 = fmul fast float %164, 0x3FE413A920000000
  %196 = call float @dx.op.tertiary.f32(i32 46, float 0x3FD5134040000000, float %165, float %195)  ; FMad(a,b,c)
  %197 = call float @dx.op.tertiary.f32(i32 46, float 0x3FA62B6AE0000000, float %166, float %196)  ; FMad(a,b,c)
  %198 = fmul fast float %164, 0x3FB1B089A0000000
  %199 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED6C8B40000000, float %165, float %198)  ; FMad(a,b,c)
  %200 = call float @dx.op.tertiary.f32(i32 46, float 0x3F8758E220000000, float %166, float %199)  ; FMad(a,b,c)
  %201 = fmul fast float %164, 0x3F90CB2960000000
  %202 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB6872B00000000, float %165, float %201)  ; FMad(a,b,c)
  %203 = call float @dx.op.tertiary.f32(i32 46, float 0x3FECA8C160000000, float %166, float %202)  ; FMad(a,b,c)
  br label %204

; <label>:204                                     ; preds = %194, %171
  %205 = phi float [ %191, %171 ], [ %197, %194 ]
  %206 = phi float [ %192, %171 ], [ %200, %194 ]
  %207 = phi float [ %193, %171 ], [ %203, %194 ]
  %208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %209 = extractvalue %dx.types.CBufRet.f32 %208, 0
  %210 = fcmp fast ogt float %209, 0.000000e+00
  br i1 %210, label %211, label %255

; <label>:211                                     ; preds = %204
  %212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %213 = extractvalue %dx.types.CBufRet.f32 %212, 0
  %214 = extractvalue %dx.types.CBufRet.f32 %212, 1
  %215 = fmul fast float %213, %12
  %216 = fmul fast float %214, %13
  %217 = fptoui float %215 to i32
  %218 = fptoui float %216 to i32
  %219 = lshr i32 %217, 3
  %220 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %221 = extractvalue %dx.types.CBufRet.i32 %220, 1
  %222 = shl i32 %221, 1
  %223 = lshr i32 %218, 5
  %224 = extractvalue %dx.types.CBufRet.i32 %220, 0
  %225 = mul i32 %223, %224
  %226 = lshr i32 %217, 6
  %227 = add i32 %226, %222
  %228 = add i32 %227, %225
  %229 = shl i32 %228, 2
  %230 = and i32 %218, 24
  %231 = and i32 %219, 7
  %232 = or i32 %231, %230
  %233 = shl i32 1, %232
  %234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %229, i32 undef)  ; BufferLoad(srv,index,wot)
  %235 = extractvalue %dx.types.ResRet.i32 %234, 0
  %236 = and i32 %233, %235
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %255, label %238

; <label>:238                                     ; preds = %211
  %239 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %8, float %12, float %13, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %240 = extractvalue %dx.types.ResRet.f32 %239, 0
  %241 = fcmp fast oeq float %240, 0.000000e+00
  br i1 %241, label %242, label %255

; <label>:242                                     ; preds = %238
  %243 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %8, float %12, float %13, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %244 = extractvalue %dx.types.ResRet.f32 %243, 0
  %245 = extractvalue %dx.types.ResRet.f32 %243, 1
  %246 = extractvalue %dx.types.ResRet.f32 %243, 2
  %247 = extractvalue %dx.types.ResRet.f32 %243, 3
  %248 = fsub fast float 1.000000e+00, %247
  %249 = fmul fast float %248, %205
  %250 = fmul fast float %248, %206
  %251 = fmul fast float %248, %207
  %252 = fadd fast float %249, %244
  %253 = fadd fast float %250, %245
  %254 = fadd fast float %251, %246
  br label %255

; <label>:255                                     ; preds = %242, %238, %211, %204
  %256 = phi float [ %252, %242 ], [ %205, %238 ], [ %205, %211 ], [ %205, %204 ]
  %257 = phi float [ %253, %242 ], [ %206, %238 ], [ %206, %211 ], [ %206, %204 ]
  %258 = phi float [ %254, %242 ], [ %207, %238 ], [ %207, %211 ], [ %207, %204 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %256)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %257)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %258)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.viewIdState = !{!20}
!dx.entryPoints = !{!21}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !13, !17}
!5 = !{!6, !8, !9, !10, !11, !12}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 15, i32 1, i32 11, i32 0, null}
!13 = !{!14, !15, !16}
!14 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!15 = !{i32 1, %perObject* undef, !"", i32 0, i32 1, i32 1, i32 224, null}
!16 = !{i32 2, %tonemapping* undef, !"", i32 0, i32 4, i32 1, i32 64, null}
!17 = !{!18, !19}
!18 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!19 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!20 = !{[8 x i32] [i32 6, i32 4, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7]}
!21 = !{void ()* @ps_main, !"ps_main", !22, !4, !31}
!22 = !{!23, !28, null}
!23 = !{!24, !26}
!24 = !{i32 0, !"SV_Position", i8 9, i8 3, !25, i8 4, i32 1, i8 4, i32 0, i8 0, null}
!25 = !{i32 0}
!26 = !{i32 1, !"TEXCOORD", i8 9, i8 0, !25, i8 2, i32 1, i8 2, i32 1, i8 0, !27}
!27 = !{i32 3, i32 3}
!28 = !{!29}
!29 = !{i32 0, !"SV_Target", i8 9, i8 16, !25, i8 0, i32 1, i8 4, i32 0, i8 0, !30}
!30 = !{i32 3, i32 15}
!31 = !{i32 0, i64 16}

