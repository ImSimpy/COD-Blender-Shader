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
; shader hash: 88ca3db5ba16295c9072eaec215916db
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
;   [32 x i8] (type annotation not present)
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
;                                   sampler      NA          NA      S0             s1     1
;                                   texture     f32          2d      T0             t0     1
;
;
; ViewId state:
;
; Number of inputs: 6, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 4, 5 }
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
%perObject = type { <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %6 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %7 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %8 = extractvalue %dx.types.CBufRet.f32 %7, 0
  %9 = extractvalue %dx.types.CBufRet.f32 %7, 1
  %10 = fsub fast float %8, %5
  %11 = fsub fast float %9, %6
  %12 = fmul fast float %10, %10
  %13 = fmul fast float %11, %11
  %14 = fadd fast float %12, %13
  %15 = call float @dx.op.unary.f32(i32 24, float %14)  ; Sqrt(value)
  %16 = extractvalue %dx.types.CBufRet.f32 %7, 2
  %17 = call float @dx.op.binary.f32(i32 35, float %15, float 0x3E45798EE0000000)  ; FMax(a,b)
  %18 = call float @dx.op.binary.f32(i32 36, float %17, float 7.812500e-03)  ; FMin(a,b)
  %19 = fdiv fast float %10, %15
  %20 = fdiv fast float %11, %15
  %21 = fmul fast float %18, 0x3FC24924A0000000
  %22 = fmul fast float %19, %21
  %23 = fmul fast float %20, %21
  %24 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %25 = extractvalue %dx.types.CBufRet.f32 %24, 2
  %26 = extractvalue %dx.types.CBufRet.f32 %24, 3
  %27 = extractvalue %dx.types.CBufRet.f32 %24, 0
  %28 = extractvalue %dx.types.CBufRet.f32 %24, 1
  %29 = call float @dx.op.binary.f32(i32 35, float %5, float %27)  ; FMax(a,b)
  %30 = call float @dx.op.binary.f32(i32 35, float %6, float %28)  ; FMax(a,b)
  %31 = call float @dx.op.binary.f32(i32 36, float %29, float %25)  ; FMin(a,b)
  %32 = call float @dx.op.binary.f32(i32 36, float %30, float %26)  ; FMin(a,b)
  %33 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %31, float %32, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %34 = extractvalue %dx.types.ResRet.f32 %33, 0
  %35 = fcmp fast ogt float %34, -1.000000e+00
  %36 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %37 = extractvalue %dx.types.CBufRet.f32 %36, 1
  %38 = select i1 %35, float %37, float 1.000000e+00
  %39 = fadd fast float %34, 1.000000e+00
  %40 = fmul fast float %38, %39
  %41 = call float @dx.op.unary.f32(i32 6, float %40)  ; FAbs(value)
  %42 = fmul fast float %41, %16
  %43 = call float @dx.op.unary.f32(i32 7, float %42)  ; Saturate(value)
  %44 = fadd fast float %22, %5
  %45 = fadd fast float %23, %6
  %46 = call float @dx.op.binary.f32(i32 35, float %44, float %27)  ; FMax(a,b)
  %47 = call float @dx.op.binary.f32(i32 35, float %45, float %28)  ; FMax(a,b)
  %48 = call float @dx.op.binary.f32(i32 36, float %46, float %25)  ; FMin(a,b)
  %49 = call float @dx.op.binary.f32(i32 36, float %47, float %26)  ; FMin(a,b)
  %50 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %48, float %49, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %51 = extractvalue %dx.types.ResRet.f32 %50, 0
  %52 = fcmp fast ogt float %51, -1.000000e+00
  %53 = select i1 %52, float %37, float 1.000000e+00
  %54 = fadd fast float %51, 1.000000e+00
  %55 = fmul fast float %53, %54
  %56 = call float @dx.op.unary.f32(i32 6, float %55)  ; FAbs(value)
  %57 = fmul fast float %56, %16
  %58 = call float @dx.op.unary.f32(i32 7, float %57)  ; Saturate(value)
  %59 = fadd fast float %58, %43
  %60 = fadd fast float %44, %22
  %61 = fadd fast float %45, %23
  %62 = call float @dx.op.binary.f32(i32 35, float %60, float %27)  ; FMax(a,b)
  %63 = call float @dx.op.binary.f32(i32 35, float %61, float %28)  ; FMax(a,b)
  %64 = call float @dx.op.binary.f32(i32 36, float %62, float %25)  ; FMin(a,b)
  %65 = call float @dx.op.binary.f32(i32 36, float %63, float %26)  ; FMin(a,b)
  %66 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %64, float %65, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %67 = extractvalue %dx.types.ResRet.f32 %66, 0
  %68 = fcmp fast ogt float %67, -1.000000e+00
  %69 = select i1 %68, float %37, float 1.000000e+00
  %70 = fadd fast float %67, 1.000000e+00
  %71 = fmul fast float %69, %70
  %72 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %73 = fmul fast float %72, %16
  %74 = call float @dx.op.unary.f32(i32 7, float %73)  ; Saturate(value)
  %75 = fadd fast float %59, %74
  %76 = fadd fast float %60, %22
  %77 = fadd fast float %61, %23
  %78 = call float @dx.op.binary.f32(i32 35, float %76, float %27)  ; FMax(a,b)
  %79 = call float @dx.op.binary.f32(i32 35, float %77, float %28)  ; FMax(a,b)
  %80 = call float @dx.op.binary.f32(i32 36, float %78, float %25)  ; FMin(a,b)
  %81 = call float @dx.op.binary.f32(i32 36, float %79, float %26)  ; FMin(a,b)
  %82 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %80, float %81, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %83 = extractvalue %dx.types.ResRet.f32 %82, 0
  %84 = fcmp fast ogt float %83, -1.000000e+00
  %85 = select i1 %84, float %37, float 1.000000e+00
  %86 = fadd fast float %83, 1.000000e+00
  %87 = fmul fast float %85, %86
  %88 = call float @dx.op.unary.f32(i32 6, float %87)  ; FAbs(value)
  %89 = fmul fast float %88, %16
  %90 = call float @dx.op.unary.f32(i32 7, float %89)  ; Saturate(value)
  %91 = fadd fast float %75, %90
  %92 = fadd fast float %76, %22
  %93 = fadd fast float %77, %23
  %94 = call float @dx.op.binary.f32(i32 35, float %92, float %27)  ; FMax(a,b)
  %95 = call float @dx.op.binary.f32(i32 35, float %93, float %28)  ; FMax(a,b)
  %96 = call float @dx.op.binary.f32(i32 36, float %94, float %25)  ; FMin(a,b)
  %97 = call float @dx.op.binary.f32(i32 36, float %95, float %26)  ; FMin(a,b)
  %98 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %96, float %97, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %99 = extractvalue %dx.types.ResRet.f32 %98, 0
  %100 = fcmp fast ogt float %99, -1.000000e+00
  %101 = select i1 %100, float %37, float 1.000000e+00
  %102 = fadd fast float %99, 1.000000e+00
  %103 = fmul fast float %101, %102
  %104 = call float @dx.op.unary.f32(i32 6, float %103)  ; FAbs(value)
  %105 = fmul fast float %104, %16
  %106 = call float @dx.op.unary.f32(i32 7, float %105)  ; Saturate(value)
  %107 = fadd fast float %91, %106
  %108 = fadd fast float %92, %22
  %109 = fadd fast float %93, %23
  %110 = call float @dx.op.binary.f32(i32 35, float %108, float %27)  ; FMax(a,b)
  %111 = call float @dx.op.binary.f32(i32 35, float %109, float %28)  ; FMax(a,b)
  %112 = call float @dx.op.binary.f32(i32 36, float %110, float %25)  ; FMin(a,b)
  %113 = call float @dx.op.binary.f32(i32 36, float %111, float %26)  ; FMin(a,b)
  %114 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %112, float %113, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %115 = extractvalue %dx.types.ResRet.f32 %114, 0
  %116 = fcmp fast ogt float %115, -1.000000e+00
  %117 = select i1 %116, float %37, float 1.000000e+00
  %118 = fadd fast float %115, 1.000000e+00
  %119 = fmul fast float %117, %118
  %120 = call float @dx.op.unary.f32(i32 6, float %119)  ; FAbs(value)
  %121 = fmul fast float %120, %16
  %122 = call float @dx.op.unary.f32(i32 7, float %121)  ; Saturate(value)
  %123 = fadd fast float %107, %122
  %124 = fadd fast float %108, %22
  %125 = fadd fast float %109, %23
  %126 = call float @dx.op.binary.f32(i32 35, float %124, float %27)  ; FMax(a,b)
  %127 = call float @dx.op.binary.f32(i32 35, float %125, float %28)  ; FMax(a,b)
  %128 = call float @dx.op.binary.f32(i32 36, float %126, float %25)  ; FMin(a,b)
  %129 = call float @dx.op.binary.f32(i32 36, float %127, float %26)  ; FMin(a,b)
  %130 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %128, float %129, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %131 = extractvalue %dx.types.ResRet.f32 %130, 0
  %132 = fcmp fast ogt float %131, -1.000000e+00
  %133 = select i1 %132, float %37, float 1.000000e+00
  %134 = fadd fast float %131, 1.000000e+00
  %135 = fmul fast float %133, %134
  %136 = call float @dx.op.unary.f32(i32 6, float %135)  ; FAbs(value)
  %137 = fmul fast float %136, %16
  %138 = call float @dx.op.unary.f32(i32 7, float %137)  ; Saturate(value)
  %139 = fadd fast float %123, %138
  %140 = fadd fast float %124, %22
  %141 = fadd fast float %125, %23
  %142 = call float @dx.op.binary.f32(i32 35, float %140, float %27)  ; FMax(a,b)
  %143 = call float @dx.op.binary.f32(i32 35, float %141, float %28)  ; FMax(a,b)
  %144 = call float @dx.op.binary.f32(i32 36, float %142, float %25)  ; FMin(a,b)
  %145 = call float @dx.op.binary.f32(i32 36, float %143, float %26)  ; FMin(a,b)
  %146 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %144, float %145, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %147 = extractvalue %dx.types.ResRet.f32 %146, 0
  %148 = fcmp fast ogt float %147, -1.000000e+00
  %149 = select i1 %148, float %37, float 1.000000e+00
  %150 = fadd fast float %147, 1.000000e+00
  %151 = fmul fast float %149, %150
  %152 = call float @dx.op.unary.f32(i32 6, float %151)  ; FAbs(value)
  %153 = fmul fast float %152, %16
  %154 = call float @dx.op.unary.f32(i32 7, float %153)  ; Saturate(value)
  %155 = fadd fast float %139, %154
  %156 = fmul fast float %155, 1.250000e-01
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %156)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

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
!9 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!10 = !{i32 1, %perObject* undef, !"", i32 0, i32 1, i32 1, i32 32, null}
!11 = !{!12}
!12 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!13 = !{[8 x i32] [i32 6, i32 4, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1]}
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

