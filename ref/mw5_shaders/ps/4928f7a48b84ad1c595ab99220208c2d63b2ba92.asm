;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float       
; TEXCOORDS                0   xy          1     NONE   float   xy  
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 2f93c5d738326d779013c42c0351b535
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
; TEXCOORDS                0                 linear       
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
;   [80 x i8] (type annotation not present)
;
; }
;
; cbuffer 
; {
;
;   [128 x i8] (type annotation not present)
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
;                                   sampler      NA          NA      S0             s1     1
;                                   sampler      NA          NA      S1             s2     1
;                                   texture     f32          2d      T0             t0     1
;                                   texture     f32          2d      T1             t1     1
;                                   texture     f32          2d      T2             t2     1
;                                   texture     f32          2d      T3     t69,space2     1
;                                   texture     f32          2d      T4     t37,space2     1
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
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
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
%perObject = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %12 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %13 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %14 = extractvalue %dx.types.CBufRet.f32 %13, 0
  %15 = extractvalue %dx.types.CBufRet.f32 %13, 1
  %16 = fmul fast float %14, %11
  %17 = fmul fast float %15, %12
  %18 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %19 = extractvalue %dx.types.CBufRet.f32 %18, 2
  %20 = fmul fast float %19, 0x3FE3C6EF40000000
  %21 = frem fast float %16, 2.560000e+02
  %22 = frem fast float %17, 2.560000e+02
  %23 = fptoui float %21 to i32
  %24 = fptoui float %22 to i32
  %25 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 0, i32 %23, i32 %24, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %26 = extractvalue %dx.types.ResRet.f32 %25, 0
  %27 = fadd fast float %26, %20
  %28 = call float @dx.op.unary.f32(i32 22, float %27)  ; Frc(value)
  %29 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %30 = extractvalue %dx.types.CBufRet.f32 %29, 2
  %31 = extractvalue %dx.types.CBufRet.f32 %29, 3
  %32 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %33 = extractvalue %dx.types.CBufRet.f32 %32, 0
  %34 = extractvalue %dx.types.CBufRet.f32 %32, 1
  %35 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %36 = extractvalue %dx.types.CBufRet.f32 %35, 0
  %37 = extractvalue %dx.types.CBufRet.f32 %35, 1
  %38 = extractvalue %dx.types.CBufRet.f32 %35, 2
  %39 = extractvalue %dx.types.CBufRet.f32 %35, 3
  %40 = extractvalue %dx.types.CBufRet.f32 %13, 2
  %41 = extractvalue %dx.types.CBufRet.f32 %13, 3
  %42 = fptoui float %16 to i32
  %43 = fptoui float %17 to i32
  %44 = and i32 %42, 1
  %45 = and i32 %43, 1
  %46 = uitofp i32 %44 to float
  %47 = uitofp i32 %45 to float
  %48 = fmul fast float %46, 2.000000e+00
  %49 = fadd fast float %48, -1.000000e+00
  %50 = fmul fast float %47, 2.000000e+00
  %51 = fadd fast float %50, -1.000000e+00
  %52 = fmul fast float %28, 3.200000e+01
  %53 = fadd fast float %52, -1.600000e+01
  %54 = fmul fast float %40, %53
  %55 = fmul fast float %41, %53
  %56 = fmul fast float %55, %51
  %57 = fmul fast float %56, %49
  %58 = fadd fast float %54, %11
  %59 = fadd fast float %57, %12
  %60 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %7, float %58, float %59, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %61 = extractvalue %dx.types.ResRet.f32 %60, 0
  %62 = extractvalue %dx.types.ResRet.f32 %60, 1
  %63 = extractvalue %dx.types.ResRet.f32 %60, 2
  %64 = extractvalue %dx.types.ResRet.f32 %60, 3
  %65 = call float @dx.op.unary.f32(i32 6, float %62)  ; FAbs(value)
  %66 = call float @dx.op.unary.f32(i32 7, float %65)  ; Saturate(value)
  %67 = call float @dx.op.unary.f32(i32 6, float %61)  ; FAbs(value)
  %68 = call float @dx.op.unary.f32(i32 7, float %67)  ; Saturate(value)
  %69 = call float @dx.op.binary.f32(i32 35, float %68, float %66)  ; FMax(a,b)
  %70 = call float @dx.op.binary.f32(i32 35, float %61, float -1.000000e+00)  ; FMax(a,b)
  %71 = call float @dx.op.binary.f32(i32 36, float %70, float 1.000000e+00)  ; FMin(a,b)
  %72 = call float @dx.op.binary.f32(i32 35, float %62, float -1.000000e+00)  ; FMax(a,b)
  %73 = call float @dx.op.binary.f32(i32 36, float %72, float 1.000000e+00)  ; FMin(a,b)
  %74 = fsub fast float %71, %73
  %75 = call float @dx.op.unary.f32(i32 6, float %74)  ; FAbs(value)
  %76 = fmul fast float %75, %30
  %77 = fmul fast float %75, %31
  %78 = call float @dx.op.binary.f32(i32 35, float %76, float %77)  ; FMax(a,b)
  %79 = fmul fast float %78, 5.000000e-01
  %80 = fadd fast float %79, -5.000000e-01
  %81 = call float @dx.op.unary.f32(i32 7, float %80)  ; Saturate(value)
  %82 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %7, float %11, float %12, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %83 = extractvalue %dx.types.ResRet.f32 %82, 0
  %84 = extractvalue %dx.types.ResRet.f32 %82, 1
  %85 = extractvalue %dx.types.ResRet.f32 %82, 2
  %86 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %87 = extractvalue %dx.types.CBufRet.i32 %86, 3
  %88 = and i32 %87, 3
  %89 = icmp ne i32 %88, 0
  %90 = and i32 %87, 4
  %91 = icmp ne i32 %90, 0
  %92 = and i1 %89, %91
  br i1 %92, label %93, label %100

; <label>:93                                      ; preds = %0
  %94 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %6, float %11, float %12, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %95 = extractvalue %dx.types.ResRet.f32 %94, 0
  %96 = fsub fast float 1.000000e+00, %95
  %97 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %98 = extractvalue %dx.types.CBufRet.f32 %97, 0
  %99 = fcmp fast olt float %96, %98
  br label %103

; <label>:100                                     ; preds = %0
  %101 = icmp eq i32 %90, 0
  %102 = and i1 %89, %101
  br label %103

; <label>:103                                     ; preds = %100, %93
  %104 = phi i1 [ %99, %93 ], [ %102, %100 ]
  %105 = and i1 %92, %104
  %106 = select i1 %105, float 0.000000e+00, float %83
  %107 = select i1 %105, float 0.000000e+00, float %84
  %108 = select i1 %105, float 0.000000e+00, float %85
  %109 = fmul fast float %69, %30
  %110 = fmul fast float %69, %31
  %111 = call float @dx.op.binary.f32(i32 35, float %109, float %110)  ; FMax(a,b)
  %112 = fcmp fast olt float %111, 1.250000e-01
  br i1 %112, label %890, label %113, !dx.controlflow.hints !30

; <label>:113                                     ; preds = %103
  %114 = fmul fast float %69, %33
  %115 = fmul fast float %69, %34
  %116 = fdiv fast float 1.000000e+00, %33
  %117 = fdiv fast float 1.000000e+00, %34
  %118 = fmul fast float %116, %40
  %119 = fmul fast float %117, %41
  %120 = fmul fast float %118, %118
  %121 = fmul fast float %119, %119
  %122 = fadd fast float %121, %120
  %123 = call float @dx.op.unary.f32(i32 24, float %122)  ; Sqrt(value)
  %124 = fmul fast float %123, 5.000000e-01
  %125 = fcmp fast ogt float %63, 4.000000e+02
  %126 = fadd fast float %63, -4.000000e+02
  %127 = select i1 %125, float %126, float %63
  %128 = fcmp fast ogt float %64, 4.000000e+02
  %129 = fadd fast float %64, -4.000000e+02
  %130 = select i1 %128, float %129, float %64
  %131 = fdiv fast float 1.000000e+00, %127
  %132 = fmul fast float %131, %36
  %133 = fmul fast float %131, %38
  %134 = fadd fast float %132, %37
  %135 = fadd fast float %133, %39
  %136 = select i1 %125, float %134, float %135
  %137 = call float @dx.op.binary.f32(i32 35, float %136, float -1.000000e+00)  ; FMax(a,b)
  %138 = call float @dx.op.binary.f32(i32 36, float %137, float 1.000000e+00)  ; FMin(a,b)
  %139 = fdiv fast float 1.000000e+00, %130
  %140 = fmul fast float %139, %36
  %141 = fmul fast float %139, %38
  %142 = fadd fast float %140, %37
  %143 = fadd fast float %141, %39
  %144 = select i1 %128, float %142, float %143
  %145 = call float @dx.op.binary.f32(i32 35, float %144, float -1.000000e+00)  ; FMax(a,b)
  %146 = call float @dx.op.binary.f32(i32 36, float %145, float 1.000000e+00)  ; FMin(a,b)
  %147 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %7, float %11, float %12, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %148 = extractvalue %dx.types.ResRet.f32 %147, 0
  %149 = fcmp fast ogt float %148, -1.000000e+00
  %150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %151 = extractvalue %dx.types.CBufRet.f32 %150, 1
  %152 = select i1 %149, float %151, float 1.000000e+00
  %153 = fadd fast float %148, 1.000000e+00
  %154 = fmul fast float %152, %153
  %155 = call float @dx.op.unary.f32(i32 6, float %154)  ; FAbs(value)
  %156 = fcmp uge float %148, -1.000000e+00
  %157 = fdiv fast float 1.000000e+00, %155
  %158 = fmul fast float %157, %36
  %159 = fmul fast float %157, %38
  %160 = fadd fast float %158, %37
  %161 = fadd fast float %159, %39
  %162 = select i1 %156, float %160, float %161
  %163 = call float @dx.op.unary.f32(i32 6, float %162)  ; FAbs(value)
  %164 = call float @dx.op.unary.f32(i32 7, float %163)  ; Saturate(value)
  %165 = call float @dx.op.binary.f32(i32 35, float %162, float -1.000000e+00)  ; FMax(a,b)
  %166 = call float @dx.op.binary.f32(i32 36, float %165, float 1.000000e+00)  ; FMin(a,b)
  %167 = fsub fast float %146, %166
  %168 = call float @dx.op.unary.f32(i32 6, float %167)  ; FAbs(value)
  %169 = fmul fast float %168, 8.000000e+00
  %170 = fsub fast float 2.000000e+00, %169
  %171 = call float @dx.op.unary.f32(i32 7, float %170)  ; Saturate(value)
  %172 = fsub fast float %166, %138
  %173 = fmul fast float %172, 4.000000e+00
  %174 = fadd fast float %173, -1.000000e+00
  %175 = call float @dx.op.unary.f32(i32 7, float %174)  ; Saturate(value)
  %176 = call float @dx.op.binary.f32(i32 35, float %171, float %175)  ; FMax(a,b)
  %177 = fsub fast float 1.000000e+00, %176
  %178 = fmul fast float %106, 0x3EE4F8B580000000
  %179 = fmul fast float %107, 0x3EE4F8B580000000
  %180 = fmul fast float %108, 0x3EE4F8B580000000
  %181 = fmul fast float %28, 0x401921FB60000000
  %182 = call float @dx.op.unary.f32(i32 13, float %181)  ; Sin(value)
  %183 = call float @dx.op.unary.f32(i32 12, float %181)  ; Cos(value)
  %184 = fsub fast float -0.000000e+00, %183
  %185 = fmul fast float %114, 0x3FB6872B00000000
  %186 = fmul fast float %185, %182
  %187 = fmul fast float %115, 0x3FB6872B00000000
  %188 = fmul fast float %187, %183
  %189 = fadd fast float %186, %11
  %190 = fadd fast float %188, %12
  %191 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %7, float %189, float %190, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %192 = extractvalue %dx.types.ResRet.f32 %191, 0
  %193 = fcmp fast ogt float %192, -1.000000e+00
  %194 = select i1 %193, float %151, float 1.000000e+00
  %195 = fadd fast float %192, 1.000000e+00
  %196 = fmul fast float %194, %195
  %197 = call float @dx.op.unary.f32(i32 6, float %196)  ; FAbs(value)
  %198 = fcmp uge float %192, -1.000000e+00
  %199 = fdiv fast float 1.000000e+00, %197
  %200 = fmul fast float %199, %36
  %201 = fmul fast float %199, %38
  %202 = fadd fast float %200, %37
  %203 = fadd fast float %201, %39
  %204 = select i1 %198, float %202, float %203
  %205 = call float @dx.op.unary.f32(i32 6, float %204)  ; FAbs(value)
  %206 = call float @dx.op.unary.f32(i32 7, float %205)  ; Saturate(value)
  %207 = fmul fast float %206, %206
  %208 = call float @dx.op.binary.f32(i32 35, float %207, float 0x3EE4F8B580000000)  ; FMax(a,b)
  %209 = call float @dx.op.binary.f32(i32 35, float %204, float -1.000000e+00)  ; FMax(a,b)
  %210 = call float @dx.op.binary.f32(i32 36, float %209, float 1.000000e+00)  ; FMin(a,b)
  %211 = fsub fast float %146, %210
  %212 = call float @dx.op.unary.f32(i32 6, float %211)  ; FAbs(value)
  %213 = fmul fast float %212, 8.000000e+00
  %214 = fsub fast float 2.000000e+00, %213
  %215 = call float @dx.op.unary.f32(i32 7, float %214)  ; Saturate(value)
  %216 = fsub fast float %210, %138
  %217 = fmul fast float %216, 4.000000e+00
  %218 = fadd fast float %217, -1.000000e+00
  %219 = call float @dx.op.unary.f32(i32 7, float %218)  ; Saturate(value)
  %220 = call float @dx.op.binary.f32(i32 35, float %215, float %219)  ; FMax(a,b)
  %221 = fsub fast float 1.000000e+00, %220
  %222 = fdiv fast float %206, %69
  %223 = call float @dx.op.binary.f32(i32 35, float %222, float %124)  ; FMax(a,b)
  %224 = fmul fast float %223, 0x4026BA2E80000000
  %225 = call float @dx.op.unary.f32(i32 7, float %224)  ; Saturate(value)
  %226 = fdiv fast float 0x3FC5566D00000000, %208
  %227 = fmul fast float %226, %221
  %228 = fmul fast float %227, %225
  %229 = fmul fast float %182, 0xBFC0E8A720000000
  %230 = call float @dx.op.tertiary.f32(i32 46, float 0xBFCD460AA0000000, float %184, float %229)  ; FMad(a,b,c)
  %231 = fmul fast float %183, 0xBFC0E8A720000000
  %232 = call float @dx.op.tertiary.f32(i32 46, float 0xBFCD460AA0000000, float %182, float %231)  ; FMad(a,b,c)
  %233 = fmul fast float %230, %114
  %234 = fmul fast float %232, %115
  %235 = fadd fast float %233, %11
  %236 = fadd fast float %234, %12
  %237 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %7, float %235, float %236, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %238 = extractvalue %dx.types.ResRet.f32 %237, 0
  %239 = fcmp fast ogt float %238, -1.000000e+00
  %240 = select i1 %239, float %151, float 1.000000e+00
  %241 = fadd fast float %238, 1.000000e+00
  %242 = fmul fast float %240, %241
  %243 = call float @dx.op.unary.f32(i32 6, float %242)  ; FAbs(value)
  %244 = fcmp uge float %238, -1.000000e+00
  %245 = fdiv fast float 1.000000e+00, %243
  %246 = fmul fast float %245, %36
  %247 = fmul fast float %245, %38
  %248 = fadd fast float %246, %37
  %249 = fadd fast float %247, %39
  %250 = select i1 %244, float %248, float %249
  %251 = call float @dx.op.unary.f32(i32 6, float %250)  ; FAbs(value)
  %252 = call float @dx.op.unary.f32(i32 7, float %251)  ; Saturate(value)
  %253 = fmul fast float %252, %252
  %254 = call float @dx.op.binary.f32(i32 35, float %253, float 0x3EE4F8B580000000)  ; FMax(a,b)
  %255 = call float @dx.op.binary.f32(i32 35, float %250, float -1.000000e+00)  ; FMax(a,b)
  %256 = call float @dx.op.binary.f32(i32 36, float %255, float 1.000000e+00)  ; FMin(a,b)
  %257 = fsub fast float %146, %256
  %258 = call float @dx.op.unary.f32(i32 6, float %257)  ; FAbs(value)
  %259 = fmul fast float %258, 8.000000e+00
  %260 = fsub fast float 2.000000e+00, %259
  %261 = call float @dx.op.unary.f32(i32 7, float %260)  ; Saturate(value)
  %262 = fsub fast float %256, %138
  %263 = fmul fast float %262, 4.000000e+00
  %264 = fadd fast float %263, -1.000000e+00
  %265 = call float @dx.op.unary.f32(i32 7, float %264)  ; Saturate(value)
  %266 = call float @dx.op.binary.f32(i32 35, float %261, float %265)  ; FMax(a,b)
  %267 = fsub fast float 1.000000e+00, %266
  %268 = fdiv fast float %252, %69
  %269 = call float @dx.op.binary.f32(i32 35, float %268, float %124)  ; FMax(a,b)
  %270 = fmul fast float %269, 0x4016B68C00000000
  %271 = fadd fast float %270, 0xBFDFFAE1C0000000
  %272 = call float @dx.op.unary.f32(i32 7, float %271)  ; Saturate(value)
  %273 = fdiv fast float 5.000000e-01, %254
  %274 = fmul fast float %273, %267
  %275 = fmul fast float %274, %272
  %276 = fadd fast float %275, %228
  %277 = fmul fast float %182, 0xBFD197F620000000
  %278 = call float @dx.op.tertiary.f32(i32 46, float 0x3FDE7A0FA0000000, float %184, float %277)  ; FMad(a,b,c)
  %279 = fmul fast float %183, 0xBFD197F620000000
  %280 = call float @dx.op.tertiary.f32(i32 46, float 0x3FDE7A0FA0000000, float %182, float %279)  ; FMad(a,b,c)
  %281 = fmul fast float %278, %114
  %282 = fmul fast float %280, %115
  %283 = fadd fast float %281, %11
  %284 = fadd fast float %282, %12
  %285 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %7, float %283, float %284, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %286 = extractvalue %dx.types.ResRet.f32 %285, 0
  %287 = fcmp fast ogt float %286, -1.000000e+00
  %288 = select i1 %287, float %151, float 1.000000e+00
  %289 = fadd fast float %286, 1.000000e+00
  %290 = fmul fast float %288, %289
  %291 = call float @dx.op.unary.f32(i32 6, float %290)  ; FAbs(value)
  %292 = fcmp uge float %286, -1.000000e+00
  %293 = fdiv fast float 1.000000e+00, %291
  %294 = fmul fast float %293, %36
  %295 = fmul fast float %293, %38
  %296 = fadd fast float %294, %37
  %297 = fadd fast float %295, %39
  %298 = select i1 %292, float %296, float %297
  %299 = call float @dx.op.unary.f32(i32 6, float %298)  ; FAbs(value)
  %300 = call float @dx.op.unary.f32(i32 7, float %299)  ; Saturate(value)
  %301 = fmul fast float %300, %300
  %302 = call float @dx.op.binary.f32(i32 35, float %301, float 0x3EE4F8B580000000)  ; FMax(a,b)
  %303 = fdiv fast float 1.000000e+00, %302
  %304 = call float @dx.op.binary.f32(i32 35, float %298, float -1.000000e+00)  ; FMax(a,b)
  %305 = call float @dx.op.binary.f32(i32 36, float %304, float 1.000000e+00)  ; FMin(a,b)
  %306 = fsub fast float %146, %305
  %307 = call float @dx.op.unary.f32(i32 6, float %306)  ; FAbs(value)
  %308 = fmul fast float %307, 8.000000e+00
  %309 = fsub fast float 2.000000e+00, %308
  %310 = call float @dx.op.unary.f32(i32 7, float %309)  ; Saturate(value)
  %311 = fsub fast float %305, %138
  %312 = fmul fast float %311, 4.000000e+00
  %313 = fadd fast float %312, -1.000000e+00
  %314 = call float @dx.op.unary.f32(i32 7, float %313)  ; Saturate(value)
  %315 = call float @dx.op.binary.f32(i32 35, float %310, float %314)  ; FMax(a,b)
  %316 = fsub fast float 1.000000e+00, %315
  %317 = fdiv fast float %300, %69
  %318 = call float @dx.op.binary.f32(i32 35, float %317, float %124)  ; FMax(a,b)
  %319 = fmul fast float %318, 0x400BFF52C0000000
  %320 = fadd fast float %319, 0xBFED93D900000000
  %321 = call float @dx.op.unary.f32(i32 7, float %320)  ; Saturate(value)
  %322 = fmul fast float %316, %303
  %323 = fmul fast float %322, %321
  %324 = fadd fast float %276, %323
  %325 = fmul fast float %114, 0x3FE767A100000000
  %326 = fmul fast float %325, %182
  %327 = fmul fast float %115, 0x3FE767A100000000
  %328 = fmul fast float %327, %183
  %329 = fadd fast float %326, %11
  %330 = fadd fast float %328, %12
  %331 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %7, float %329, float %330, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %332 = extractvalue %dx.types.ResRet.f32 %331, 0
  %333 = fcmp fast ogt float %332, -1.000000e+00
  %334 = select i1 %333, float %151, float 1.000000e+00
  %335 = fadd fast float %332, 1.000000e+00
  %336 = fmul fast float %334, %335
  %337 = call float @dx.op.unary.f32(i32 6, float %336)  ; FAbs(value)
  %338 = fcmp uge float %332, -1.000000e+00
  %339 = fdiv fast float 1.000000e+00, %337
  %340 = fmul fast float %339, %36
  %341 = fmul fast float %339, %38
  %342 = fadd fast float %340, %37
  %343 = fadd fast float %341, %39
  %344 = select i1 %338, float %342, float %343
  %345 = call float @dx.op.unary.f32(i32 6, float %344)  ; FAbs(value)
  %346 = call float @dx.op.unary.f32(i32 7, float %345)  ; Saturate(value)
  %347 = fmul fast float %346, %346
  %348 = call float @dx.op.binary.f32(i32 35, float %347, float 0x3EE4F8B580000000)  ; FMax(a,b)
  %349 = fdiv fast float 1.000000e+00, %348
  %350 = call float @dx.op.binary.f32(i32 35, float %344, float -1.000000e+00)  ; FMax(a,b)
  %351 = call float @dx.op.binary.f32(i32 36, float %350, float 1.000000e+00)  ; FMin(a,b)
  %352 = fsub fast float %146, %351
  %353 = call float @dx.op.unary.f32(i32 6, float %352)  ; FAbs(value)
  %354 = fmul fast float %353, 8.000000e+00
  %355 = fsub fast float 2.000000e+00, %354
  %356 = call float @dx.op.unary.f32(i32 7, float %355)  ; Saturate(value)
  %357 = fsub fast float %351, %138
  %358 = fmul fast float %357, 4.000000e+00
  %359 = fadd fast float %358, -1.000000e+00
  %360 = call float @dx.op.unary.f32(i32 7, float %359)  ; Saturate(value)
  %361 = call float @dx.op.binary.f32(i32 35, float %356, float %360)  ; FMax(a,b)
  %362 = fsub fast float 1.000000e+00, %361
  %363 = fdiv fast float %346, %69
  %364 = call float @dx.op.binary.f32(i32 35, float %363, float %124)  ; FMax(a,b)
  %365 = fmul fast float %364, 0x4016085C00000000
  %366 = fadd fast float %365, 0xC0083AB7C0000000
  %367 = call float @dx.op.unary.f32(i32 7, float %366)  ; Saturate(value)
  %368 = fmul fast float %362, %349
  %369 = fmul fast float %368, %367
  %370 = fadd fast float %324, %369
  %371 = fmul fast float %182, 0xBFDC083120000000
  %372 = call float @dx.op.tertiary.f32(i32 46, float 0xBFE8474540000000, float %184, float %371)  ; FMad(a,b,c)
  %373 = fmul fast float %183, 0xBFDC083120000000
  %374 = call float @dx.op.tertiary.f32(i32 46, float 0xBFE8474540000000, float %182, float %373)  ; FMad(a,b,c)
  %375 = fmul fast float %372, %114
  %376 = fmul fast float %374, %115
  %377 = fadd fast float %375, %11
  %378 = fadd fast float %376, %12
  %379 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %7, float %377, float %378, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %380 = extractvalue %dx.types.ResRet.f32 %379, 0
  %381 = fcmp fast ogt float %380, -1.000000e+00
  %382 = select i1 %381, float %151, float 1.000000e+00
  %383 = fadd fast float %380, 1.000000e+00
  %384 = fmul fast float %382, %383
  %385 = call float @dx.op.unary.f32(i32 6, float %384)  ; FAbs(value)
  %386 = fcmp uge float %380, -1.000000e+00
  %387 = fdiv fast float 1.000000e+00, %385
  %388 = fmul fast float %387, %36
  %389 = fmul fast float %387, %38
  %390 = fadd fast float %388, %37
  %391 = fadd fast float %389, %39
  %392 = select i1 %386, float %390, float %391
  %393 = call float @dx.op.unary.f32(i32 6, float %392)  ; FAbs(value)
  %394 = call float @dx.op.unary.f32(i32 7, float %393)  ; Saturate(value)
  %395 = fmul fast float %394, %394
  %396 = call float @dx.op.binary.f32(i32 35, float %395, float 0x3EE4F8B580000000)  ; FMax(a,b)
  %397 = fdiv fast float 1.000000e+00, %396
  %398 = call float @dx.op.binary.f32(i32 35, float %392, float -1.000000e+00)  ; FMax(a,b)
  %399 = call float @dx.op.binary.f32(i32 36, float %398, float 1.000000e+00)  ; FMin(a,b)
  %400 = fsub fast float %146, %399
  %401 = call float @dx.op.unary.f32(i32 6, float %400)  ; FAbs(value)
  %402 = fmul fast float %401, 8.000000e+00
  %403 = fsub fast float 2.000000e+00, %402
  %404 = call float @dx.op.unary.f32(i32 7, float %403)  ; Saturate(value)
  %405 = fsub fast float %399, %138
  %406 = fmul fast float %405, 4.000000e+00
  %407 = fadd fast float %406, -1.000000e+00
  %408 = call float @dx.op.unary.f32(i32 7, float %407)  ; Saturate(value)
  %409 = call float @dx.op.binary.f32(i32 35, float %404, float %408)  ; FMax(a,b)
  %410 = fsub fast float 1.000000e+00, %409
  %411 = fdiv fast float %394, %69
  %412 = call float @dx.op.binary.f32(i32 35, float %411, float %124)  ; FMax(a,b)
  %413 = fmul fast float %412, 0x401BA6FC40000000
  %414 = fadd fast float %413, 0xC0143991E0000000
  %415 = call float @dx.op.unary.f32(i32 7, float %414)  ; Saturate(value)
  %416 = fmul fast float %410, %397
  %417 = fmul fast float %416, %415
  %418 = fadd fast float %370, %417
  %419 = fmul fast float %182, -5.000000e-01
  %420 = call float @dx.op.tertiary.f32(i32 46, float 0x3FEBB645A0000000, float %184, float %419)  ; FMad(a,b,c)
  %421 = fmul fast float %183, -5.000000e-01
  %422 = call float @dx.op.tertiary.f32(i32 46, float 0x3FEBB645A0000000, float %182, float %421)  ; FMad(a,b,c)
  %423 = fmul fast float %420, %114
  %424 = fmul fast float %422, %115
  %425 = fadd fast float %423, %11
  %426 = fadd fast float %424, %12
  %427 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %7, float %425, float %426, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %428 = extractvalue %dx.types.ResRet.f32 %427, 0
  %429 = fcmp fast ogt float %428, -1.000000e+00
  %430 = select i1 %429, float %151, float 1.000000e+00
  %431 = fadd fast float %428, 1.000000e+00
  %432 = fmul fast float %430, %431
  %433 = call float @dx.op.unary.f32(i32 6, float %432)  ; FAbs(value)
  %434 = fcmp uge float %428, -1.000000e+00
  %435 = fdiv fast float 1.000000e+00, %433
  %436 = fmul fast float %435, %36
  %437 = fmul fast float %435, %38
  %438 = fadd fast float %436, %37
  %439 = fadd fast float %437, %39
  %440 = select i1 %434, float %438, float %439
  %441 = call float @dx.op.unary.f32(i32 6, float %440)  ; FAbs(value)
  %442 = call float @dx.op.unary.f32(i32 7, float %441)  ; Saturate(value)
  %443 = fmul fast float %442, %442
  %444 = call float @dx.op.binary.f32(i32 35, float %443, float 0x3EE4F8B580000000)  ; FMax(a,b)
  %445 = fdiv fast float 1.000000e+00, %444
  %446 = call float @dx.op.binary.f32(i32 35, float %440, float -1.000000e+00)  ; FMax(a,b)
  %447 = call float @dx.op.binary.f32(i32 36, float %446, float 1.000000e+00)  ; FMin(a,b)
  %448 = fsub fast float %146, %447
  %449 = call float @dx.op.unary.f32(i32 6, float %448)  ; FAbs(value)
  %450 = fmul fast float %449, 8.000000e+00
  %451 = fsub fast float 2.000000e+00, %450
  %452 = call float @dx.op.unary.f32(i32 7, float %451)  ; Saturate(value)
  %453 = fsub fast float %447, %138
  %454 = fmul fast float %453, 4.000000e+00
  %455 = fadd fast float %454, -1.000000e+00
  %456 = call float @dx.op.unary.f32(i32 7, float %455)  ; Saturate(value)
  %457 = call float @dx.op.binary.f32(i32 35, float %452, float %456)  ; FMax(a,b)
  %458 = fsub fast float 1.000000e+00, %457
  %459 = fdiv fast float %442, %69
  %460 = call float @dx.op.binary.f32(i32 35, float %459, float %124)  ; FMax(a,b)
  %461 = fmul fast float %460, 0x4020238C40000000
  %462 = fadd fast float %461, 0xC01C46EA00000000
  %463 = call float @dx.op.unary.f32(i32 7, float %462)  ; Saturate(value)
  %464 = fmul fast float %458, %445
  %465 = fmul fast float %464, %463
  %466 = fadd fast float %418, %465
  %467 = fmul fast float %69, %69
  %468 = call float @dx.op.binary.f32(i32 35, float %467, float 0x3EE4F8B580000000)  ; FMax(a,b)
  %469 = fmul fast float %468, 0x3FCB6DAA00000000
  %470 = fmul fast float %469, %466
  %471 = call float @dx.op.unary.f32(i32 7, float %470)  ; Saturate(value)
  %472 = fdiv fast float 1.000000e+00, %208
  %473 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %7, float %189, float %190, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %474 = extractvalue %dx.types.ResRet.f32 %473, 0
  %475 = extractvalue %dx.types.ResRet.f32 %473, 1
  %476 = extractvalue %dx.types.ResRet.f32 %473, 2
  br i1 %92, label %480, label %477

; <label>:477                                     ; preds = %113
  %478 = icmp eq i32 %90, 0
  %479 = and i1 %89, %478
  br label %487

; <label>:480                                     ; preds = %113
  %481 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %6, float %189, float %190, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %482 = extractvalue %dx.types.ResRet.f32 %481, 0
  %483 = fsub fast float 1.000000e+00, %482
  %484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %485 = extractvalue %dx.types.CBufRet.f32 %484, 0
  %486 = fcmp fast olt float %483, %485
  br label %487

; <label>:487                                     ; preds = %480, %477
  %488 = phi i1 [ %486, %480 ], [ %479, %477 ]
  %489 = and i1 %92, %488
  %490 = select i1 %489, float 0.000000e+00, float %474
  %491 = select i1 %489, float 0.000000e+00, float %475
  %492 = select i1 %489, float 0.000000e+00, float %476
  %493 = fdiv fast float %164, %69
  %494 = call float @dx.op.binary.f32(i32 35, float %493, float %124)  ; FMax(a,b)
  %495 = fmul fast float %494, 0x4026BA2E80000000
  %496 = call float @dx.op.unary.f32(i32 7, float %495)  ; Saturate(value)
  %497 = call float @dx.op.binary.f32(i32 35, float %471, float %124)  ; FMax(a,b)
  %498 = fmul fast float %497, 0x4026BA2E80000000
  %499 = call float @dx.op.unary.f32(i32 7, float %498)  ; Saturate(value)
  %500 = call float @dx.op.binary.f32(i32 35, float %499, float %177)  ; FMax(a,b)
  %501 = fsub fast float 1.000000e+00, %496
  %502 = fmul fast float %500, %501
  %503 = fadd fast float %502, %496
  %504 = fmul fast float %503, %220
  %505 = call float @dx.op.binary.f32(i32 35, float %491, float %492)  ; FMax(a,b)
  %506 = call float @dx.op.binary.f32(i32 35, float %490, float %505)  ; FMax(a,b)
  %507 = fmul fast float %506, 1.250000e-01
  %508 = fadd fast float %507, 1.000000e+00
  %509 = bitcast float %508 to i32
  %510 = sub nsw i32 2129859010, %509
  %511 = bitcast i32 %510 to float
  %512 = fmul fast float %511, 0x3FC5566D00000000
  %513 = fmul fast float %221, %472
  %514 = fmul fast float %513, %225
  %515 = fmul fast float %514, %512
  %516 = fmul fast float %515, %490
  %517 = fmul fast float %515, %491
  %518 = fmul fast float %515, %492
  %519 = fadd fast float %516, %178
  %520 = fadd fast float %517, %179
  %521 = fadd fast float %518, %180
  %522 = fadd fast float %515, 0x3EE4F8B580000000
  %523 = fmul fast float %504, %512
  %524 = fmul fast float %523, %490
  %525 = fmul fast float %523, %491
  %526 = fmul fast float %523, %492
  %527 = fadd fast float %524, %178
  %528 = fadd fast float %525, %179
  %529 = fadd fast float %526, %180
  %530 = fadd fast float %523, 0x3EE4F8B580000000
  %531 = fmul fast float %512, %490
  %532 = fmul fast float %512, %491
  %533 = fmul fast float %512, %492
  %534 = fsub fast float 0x3FEFFFEB00000000, %523
  %535 = call float @dx.op.unary.f32(i32 7, float %534)  ; Saturate(value)
  %536 = fdiv fast float 1.000000e+00, %254
  %537 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %7, float %235, float %236, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %538 = extractvalue %dx.types.ResRet.f32 %537, 0
  %539 = extractvalue %dx.types.ResRet.f32 %537, 1
  %540 = extractvalue %dx.types.ResRet.f32 %537, 2
  br i1 %92, label %544, label %541

; <label>:541                                     ; preds = %487
  %542 = icmp eq i32 %90, 0
  %543 = and i1 %89, %542
  br label %551

; <label>:544                                     ; preds = %487
  %545 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %6, float %235, float %236, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %546 = extractvalue %dx.types.ResRet.f32 %545, 0
  %547 = fsub fast float 1.000000e+00, %546
  %548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %549 = extractvalue %dx.types.CBufRet.f32 %548, 0
  %550 = fcmp fast olt float %547, %549
  br label %551

; <label>:551                                     ; preds = %544, %541
  %552 = phi i1 [ %550, %544 ], [ %543, %541 ]
  %553 = and i1 %92, %552
  %554 = select i1 %553, float 0.000000e+00, float %538
  %555 = select i1 %553, float 0.000000e+00, float %539
  %556 = select i1 %553, float 0.000000e+00, float %540
  %557 = fmul fast float %494, 0x4016B68C00000000
  %558 = fadd fast float %557, 0xBFDFFAE1C0000000
  %559 = call float @dx.op.unary.f32(i32 7, float %558)  ; Saturate(value)
  %560 = fmul fast float %497, 0x4016B68C00000000
  %561 = fadd fast float %560, 0xBFDFFAE1C0000000
  %562 = call float @dx.op.unary.f32(i32 7, float %561)  ; Saturate(value)
  %563 = call float @dx.op.binary.f32(i32 35, float %562, float %177)  ; FMax(a,b)
  %564 = fsub fast float %535, %559
  %565 = fmul fast float %563, %564
  %566 = fadd fast float %565, %559
  %567 = fmul fast float %566, %266
  %568 = call float @dx.op.binary.f32(i32 35, float %555, float %556)  ; FMax(a,b)
  %569 = call float @dx.op.binary.f32(i32 35, float %554, float %568)  ; FMax(a,b)
  %570 = fmul fast float %569, 1.250000e-01
  %571 = fadd fast float %570, 1.000000e+00
  %572 = bitcast float %571 to i32
  %573 = sub nsw i32 2129859010, %572
  %574 = bitcast i32 %573 to float
  %575 = fmul fast float %574, 5.000000e-01
  %576 = fmul fast float %267, %536
  %577 = fmul fast float %576, %272
  %578 = fmul fast float %577, %575
  %579 = fmul fast float %578, %554
  %580 = fmul fast float %578, %555
  %581 = fmul fast float %578, %556
  %582 = fadd fast float %519, %579
  %583 = fadd fast float %520, %580
  %584 = fadd fast float %521, %581
  %585 = fadd fast float %522, %578
  %586 = fmul fast float %567, %575
  %587 = fmul fast float %586, %554
  %588 = fmul fast float %586, %555
  %589 = fmul fast float %586, %556
  %590 = fadd fast float %527, %587
  %591 = fadd fast float %528, %588
  %592 = fadd fast float %529, %589
  %593 = fadd fast float %530, %586
  %594 = fmul fast float %575, %554
  %595 = fmul fast float %575, %555
  %596 = fmul fast float %575, %556
  %597 = fadd fast float %594, %531
  %598 = fadd fast float %595, %532
  %599 = fadd fast float %596, %533
  %600 = fadd fast float %575, %512
  %601 = fsub fast float 1.000000e+00, %593
  %602 = call float @dx.op.unary.f32(i32 7, float %601)  ; Saturate(value)
  %603 = fmul fast float %602, %535
  %604 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %7, float %283, float %284, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %605 = extractvalue %dx.types.ResRet.f32 %604, 0
  %606 = extractvalue %dx.types.ResRet.f32 %604, 1
  %607 = extractvalue %dx.types.ResRet.f32 %604, 2
  br i1 %92, label %611, label %608

; <label>:608                                     ; preds = %551
  %609 = icmp eq i32 %90, 0
  %610 = and i1 %89, %609
  br label %618

; <label>:611                                     ; preds = %551
  %612 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %6, float %283, float %284, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %613 = extractvalue %dx.types.ResRet.f32 %612, 0
  %614 = fsub fast float 1.000000e+00, %613
  %615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %616 = extractvalue %dx.types.CBufRet.f32 %615, 0
  %617 = fcmp fast olt float %614, %616
  br label %618

; <label>:618                                     ; preds = %611, %608
  %619 = phi i1 [ %617, %611 ], [ %610, %608 ]
  %620 = and i1 %92, %619
  %621 = select i1 %620, float 0.000000e+00, float %605
  %622 = select i1 %620, float 0.000000e+00, float %606
  %623 = select i1 %620, float 0.000000e+00, float %607
  %624 = fmul fast float %494, 0x400BFF52C0000000
  %625 = fadd fast float %624, 0xBFED93D900000000
  %626 = call float @dx.op.unary.f32(i32 7, float %625)  ; Saturate(value)
  %627 = fmul fast float %497, 0x400BFF52C0000000
  %628 = fadd fast float %627, 0xBFED93D900000000
  %629 = call float @dx.op.unary.f32(i32 7, float %628)  ; Saturate(value)
  %630 = call float @dx.op.binary.f32(i32 35, float %629, float %177)  ; FMax(a,b)
  %631 = fsub fast float %603, %626
  %632 = fmul fast float %630, %631
  %633 = fadd fast float %632, %626
  %634 = fmul fast float %633, %315
  %635 = call float @dx.op.binary.f32(i32 35, float %622, float %623)  ; FMax(a,b)
  %636 = call float @dx.op.binary.f32(i32 35, float %621, float %635)  ; FMax(a,b)
  %637 = fmul fast float %636, 1.250000e-01
  %638 = fadd fast float %637, 1.000000e+00
  %639 = bitcast float %638 to i32
  %640 = sub nsw i32 2129859010, %639
  %641 = bitcast i32 %640 to float
  %642 = fmul fast float %323, %641
  %643 = fmul fast float %642, %621
  %644 = fmul fast float %642, %622
  %645 = fmul fast float %642, %623
  %646 = fadd fast float %582, %643
  %647 = fadd fast float %583, %644
  %648 = fadd fast float %584, %645
  %649 = fadd fast float %585, %642
  %650 = fmul fast float %634, %641
  %651 = fmul fast float %650, %621
  %652 = fmul fast float %650, %622
  %653 = fmul fast float %650, %623
  %654 = fadd fast float %590, %651
  %655 = fadd fast float %591, %652
  %656 = fadd fast float %592, %653
  %657 = fadd fast float %650, %593
  %658 = fmul fast float %641, %621
  %659 = fmul fast float %641, %622
  %660 = fmul fast float %641, %623
  %661 = fadd fast float %597, %658
  %662 = fadd fast float %598, %659
  %663 = fadd fast float %599, %660
  %664 = fadd fast float %600, %641
  %665 = fsub fast float 1.000000e+00, %657
  %666 = call float @dx.op.unary.f32(i32 7, float %665)  ; Saturate(value)
  %667 = fmul fast float %666, %603
  %668 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %7, float %329, float %330, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %669 = extractvalue %dx.types.ResRet.f32 %668, 0
  %670 = extractvalue %dx.types.ResRet.f32 %668, 1
  %671 = extractvalue %dx.types.ResRet.f32 %668, 2
  br i1 %92, label %675, label %672

; <label>:672                                     ; preds = %618
  %673 = icmp eq i32 %90, 0
  %674 = and i1 %89, %673
  br label %682

; <label>:675                                     ; preds = %618
  %676 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %6, float %329, float %330, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %677 = extractvalue %dx.types.ResRet.f32 %676, 0
  %678 = fsub fast float 1.000000e+00, %677
  %679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %680 = extractvalue %dx.types.CBufRet.f32 %679, 0
  %681 = fcmp fast olt float %678, %680
  br label %682

; <label>:682                                     ; preds = %675, %672
  %683 = phi i1 [ %681, %675 ], [ %674, %672 ]
  %684 = and i1 %92, %683
  %685 = select i1 %684, float 0.000000e+00, float %669
  %686 = select i1 %684, float 0.000000e+00, float %670
  %687 = select i1 %684, float 0.000000e+00, float %671
  %688 = fmul fast float %494, 0x4016085C00000000
  %689 = fadd fast float %688, 0xC0083AB7C0000000
  %690 = call float @dx.op.unary.f32(i32 7, float %689)  ; Saturate(value)
  %691 = fmul fast float %497, 0x4016085C00000000
  %692 = fadd fast float %691, 0xC0083AB7C0000000
  %693 = call float @dx.op.unary.f32(i32 7, float %692)  ; Saturate(value)
  %694 = call float @dx.op.binary.f32(i32 35, float %693, float %177)  ; FMax(a,b)
  %695 = fsub fast float %667, %690
  %696 = fmul fast float %694, %695
  %697 = fadd fast float %696, %690
  %698 = fmul fast float %697, %361
  %699 = call float @dx.op.binary.f32(i32 35, float %686, float %687)  ; FMax(a,b)
  %700 = call float @dx.op.binary.f32(i32 35, float %685, float %699)  ; FMax(a,b)
  %701 = fmul fast float %700, 1.250000e-01
  %702 = fadd fast float %701, 1.000000e+00
  %703 = bitcast float %702 to i32
  %704 = sub nsw i32 2129859010, %703
  %705 = bitcast i32 %704 to float
  %706 = fmul fast float %369, %705
  %707 = fmul fast float %706, %685
  %708 = fmul fast float %706, %686
  %709 = fmul fast float %706, %687
  %710 = fadd fast float %646, %707
  %711 = fadd fast float %647, %708
  %712 = fadd fast float %648, %709
  %713 = fadd fast float %649, %706
  %714 = fmul fast float %698, %705
  %715 = fmul fast float %714, %685
  %716 = fmul fast float %714, %686
  %717 = fmul fast float %714, %687
  %718 = fadd fast float %654, %715
  %719 = fadd fast float %655, %716
  %720 = fadd fast float %656, %717
  %721 = fadd fast float %714, %657
  %722 = fmul fast float %705, %685
  %723 = fmul fast float %705, %686
  %724 = fmul fast float %705, %687
  %725 = fadd fast float %661, %722
  %726 = fadd fast float %662, %723
  %727 = fadd fast float %663, %724
  %728 = fadd fast float %664, %705
  %729 = fsub fast float 1.000000e+00, %721
  %730 = call float @dx.op.unary.f32(i32 7, float %729)  ; Saturate(value)
  %731 = fmul fast float %730, %667
  %732 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %7, float %377, float %378, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %733 = extractvalue %dx.types.ResRet.f32 %732, 0
  %734 = extractvalue %dx.types.ResRet.f32 %732, 1
  %735 = extractvalue %dx.types.ResRet.f32 %732, 2
  br i1 %92, label %739, label %736

; <label>:736                                     ; preds = %682
  %737 = icmp eq i32 %90, 0
  %738 = and i1 %89, %737
  br label %746

; <label>:739                                     ; preds = %682
  %740 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %6, float %377, float %378, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %741 = extractvalue %dx.types.ResRet.f32 %740, 0
  %742 = fsub fast float 1.000000e+00, %741
  %743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %744 = extractvalue %dx.types.CBufRet.f32 %743, 0
  %745 = fcmp fast olt float %742, %744
  br label %746

; <label>:746                                     ; preds = %739, %736
  %747 = phi i1 [ %745, %739 ], [ %738, %736 ]
  %748 = and i1 %92, %747
  %749 = select i1 %748, float 0.000000e+00, float %733
  %750 = select i1 %748, float 0.000000e+00, float %734
  %751 = select i1 %748, float 0.000000e+00, float %735
  %752 = fmul fast float %494, 0x401BA6FC40000000
  %753 = fadd fast float %752, 0xC0143991E0000000
  %754 = call float @dx.op.unary.f32(i32 7, float %753)  ; Saturate(value)
  %755 = fmul fast float %497, 0x401BA6FC40000000
  %756 = fadd fast float %755, 0xC0143991E0000000
  %757 = call float @dx.op.unary.f32(i32 7, float %756)  ; Saturate(value)
  %758 = call float @dx.op.binary.f32(i32 35, float %757, float %177)  ; FMax(a,b)
  %759 = fsub fast float %731, %754
  %760 = fmul fast float %758, %759
  %761 = fadd fast float %760, %754
  %762 = fmul fast float %761, %409
  %763 = call float @dx.op.binary.f32(i32 35, float %750, float %751)  ; FMax(a,b)
  %764 = call float @dx.op.binary.f32(i32 35, float %749, float %763)  ; FMax(a,b)
  %765 = fmul fast float %764, 1.250000e-01
  %766 = fadd fast float %765, 1.000000e+00
  %767 = bitcast float %766 to i32
  %768 = sub nsw i32 2129859010, %767
  %769 = bitcast i32 %768 to float
  %770 = fmul fast float %417, %769
  %771 = fmul fast float %770, %749
  %772 = fmul fast float %770, %750
  %773 = fmul fast float %770, %751
  %774 = fadd fast float %710, %771
  %775 = fadd fast float %711, %772
  %776 = fadd fast float %712, %773
  %777 = fadd fast float %713, %770
  %778 = fmul fast float %762, %769
  %779 = fmul fast float %778, %749
  %780 = fmul fast float %778, %750
  %781 = fmul fast float %778, %751
  %782 = fadd fast float %718, %779
  %783 = fadd fast float %719, %780
  %784 = fadd fast float %720, %781
  %785 = fadd fast float %778, %721
  %786 = fmul fast float %769, %749
  %787 = fmul fast float %769, %750
  %788 = fmul fast float %769, %751
  %789 = fadd fast float %725, %786
  %790 = fadd fast float %726, %787
  %791 = fadd fast float %727, %788
  %792 = fadd fast float %728, %769
  %793 = fsub fast float 1.000000e+00, %785
  %794 = call float @dx.op.unary.f32(i32 7, float %793)  ; Saturate(value)
  %795 = fmul fast float %794, %731
  %796 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %7, float %425, float %426, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %797 = extractvalue %dx.types.ResRet.f32 %796, 0
  %798 = extractvalue %dx.types.ResRet.f32 %796, 1
  %799 = extractvalue %dx.types.ResRet.f32 %796, 2
  br i1 %92, label %803, label %800

; <label>:800                                     ; preds = %746
  %801 = icmp eq i32 %90, 0
  %802 = and i1 %89, %801
  br label %810

; <label>:803                                     ; preds = %746
  %804 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %6, float %425, float %426, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %805 = extractvalue %dx.types.ResRet.f32 %804, 0
  %806 = fsub fast float 1.000000e+00, %805
  %807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %808 = extractvalue %dx.types.CBufRet.f32 %807, 0
  %809 = fcmp fast olt float %806, %808
  br label %810

; <label>:810                                     ; preds = %803, %800
  %811 = phi i1 [ %809, %803 ], [ %802, %800 ]
  %812 = and i1 %92, %811
  %813 = select i1 %812, float 0.000000e+00, float %797
  %814 = select i1 %812, float 0.000000e+00, float %798
  %815 = select i1 %812, float 0.000000e+00, float %799
  %816 = fmul fast float %494, 0x4020238C40000000
  %817 = fadd fast float %816, 0xC01C46EA00000000
  %818 = call float @dx.op.unary.f32(i32 7, float %817)  ; Saturate(value)
  %819 = fmul fast float %497, 0x4020238C40000000
  %820 = fadd fast float %819, 0xC01C46EA00000000
  %821 = call float @dx.op.unary.f32(i32 7, float %820)  ; Saturate(value)
  %822 = call float @dx.op.binary.f32(i32 35, float %821, float %177)  ; FMax(a,b)
  %823 = fsub fast float %795, %818
  %824 = fmul fast float %822, %823
  %825 = fadd fast float %824, %818
  %826 = fmul fast float %825, %457
  %827 = call float @dx.op.binary.f32(i32 35, float %814, float %815)  ; FMax(a,b)
  %828 = call float @dx.op.binary.f32(i32 35, float %813, float %827)  ; FMax(a,b)
  %829 = fmul fast float %828, 1.250000e-01
  %830 = fadd fast float %829, 1.000000e+00
  %831 = bitcast float %830 to i32
  %832 = sub nsw i32 2129859010, %831
  %833 = bitcast i32 %832 to float
  %834 = fmul fast float %465, %833
  %835 = fmul fast float %834, %813
  %836 = fmul fast float %834, %814
  %837 = fmul fast float %834, %815
  %838 = fadd fast float %774, %835
  %839 = fadd fast float %775, %836
  %840 = fadd fast float %776, %837
  %841 = fadd fast float %777, %834
  %842 = fmul fast float %826, %833
  %843 = fmul fast float %842, %813
  %844 = fmul fast float %842, %814
  %845 = fmul fast float %842, %815
  %846 = fadd fast float %782, %843
  %847 = fadd fast float %783, %844
  %848 = fadd fast float %784, %845
  %849 = fadd fast float %842, %785
  %850 = fmul fast float %833, %813
  %851 = fmul fast float %833, %814
  %852 = fmul fast float %833, %815
  %853 = fadd fast float %789, %850
  %854 = fadd fast float %790, %851
  %855 = fadd fast float %791, %852
  %856 = fadd fast float %792, %833
  %857 = fdiv fast float 1.000000e+00, %841
  %858 = fmul fast float %838, %857
  %859 = fmul fast float %839, %857
  %860 = fmul fast float %840, %857
  %861 = fdiv fast float 1.000000e+00, %849
  %862 = fmul fast float %846, %861
  %863 = fmul fast float %847, %861
  %864 = fmul fast float %848, %861
  %865 = fdiv fast float 1.000000e+00, %856
  %866 = fmul fast float %853, %865
  %867 = fmul fast float %854, %865
  %868 = fmul fast float %855, %865
  %869 = fmul fast float %466, 0x3FCB6DAA00000000
  %870 = fmul fast float %869, %468
  %871 = call float @dx.op.unary.f32(i32 7, float %870)  ; Saturate(value)
  %872 = fsub fast float %858, %862
  %873 = fsub fast float %859, %863
  %874 = fsub fast float %860, %864
  %875 = fmul fast float %872, %871
  %876 = fmul fast float %873, %871
  %877 = fmul fast float %874, %871
  %878 = fsub fast float %862, %866
  %879 = fadd fast float %878, %875
  %880 = fsub fast float %863, %867
  %881 = fadd fast float %880, %876
  %882 = fsub fast float %864, %868
  %883 = fadd fast float %882, %877
  %884 = fmul fast float %879, %81
  %885 = fmul fast float %881, %81
  %886 = fmul fast float %883, %81
  %887 = fadd fast float %884, %866
  %888 = fadd fast float %885, %867
  %889 = fadd fast float %886, %868
  br label %890

; <label>:890                                     ; preds = %810, %103
  %891 = phi float [ %887, %810 ], [ %106, %103 ]
  %892 = phi float [ %888, %810 ], [ %107, %103 ]
  %893 = phi float [ %889, %810 ], [ %108, %103 ]
  %894 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %6, float %11, float %12, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %895 = extractvalue %dx.types.ResRet.f32 %894, 0
  %896 = fsub fast float 1.000000e+00, %895
  %897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %898 = extractvalue %dx.types.CBufRet.f32 %897, 0
  %899 = extractvalue %dx.types.CBufRet.f32 %897, 1
  %900 = fsub fast float %896, %898
  %901 = fmul fast float %900, %899
  %902 = call float @dx.op.unary.f32(i32 7, float %901)  ; Saturate(value)
  %903 = fsub fast float 1.000000e+00, %902
  %904 = fsub fast float %83, %891
  %905 = fsub fast float %84, %892
  %906 = fsub fast float %85, %893
  %907 = fmul fast float %904, %903
  %908 = fmul fast float %905, %903
  %909 = fmul fast float %906, %903
  %910 = fadd fast float %907, %891
  %911 = fadd fast float %908, %892
  %912 = fadd fast float %909, %893
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %910)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %911)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %912)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

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
!4 = !{!5, null, !12, !16}
!5 = !{!6, !8, !9, !10, !11}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!12 = !{!13, !14, !15}
!13 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!14 = !{i32 1, %perObject* undef, !"", i32 0, i32 1, i32 1, i32 80, null}
!15 = !{i32 2, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!16 = !{!17, !18}
!17 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!18 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!19 = !{[8 x i32] [i32 6, i32 4, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7]}
!20 = !{void ()* @ps_main, !"ps_main", !21, !4, null}
!21 = !{!22, !27, null}
!22 = !{!23, !25}
!23 = !{i32 0, !"SV_Position", i8 9, i8 3, !24, i8 4, i32 1, i8 4, i32 0, i8 0, null}
!24 = !{i32 0}
!25 = !{i32 1, !"TEXCOORDS", i8 9, i8 0, !24, i8 2, i32 1, i8 2, i32 1, i8 0, !26}
!26 = !{i32 3, i32 3}
!27 = !{!28}
!28 = !{i32 0, !"SV_Target", i8 9, i8 16, !24, i8 0, i32 1, i8 4, i32 0, i8 0, !29}
!29 = !{i32 3, i32 15}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 1}

