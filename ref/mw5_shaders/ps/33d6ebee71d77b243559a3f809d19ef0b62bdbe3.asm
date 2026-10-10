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
; shader hash: e4966ae4239f63619e65953a3688d83d
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
;                                   texture     f32          2d      T0             t0     1
;                                   texture     f32          2d      T1             t1     1
;                                   texture     f32          2d      T2             t2     1
;                                   texture     f32          2d      T3     t37,space2     1
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
%perObject = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %10 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %11 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %12 = extractvalue %dx.types.CBufRet.f32 %11, 0
  %13 = extractvalue %dx.types.CBufRet.f32 %11, 1
  %14 = fmul fast float %12, %9
  %15 = fmul fast float %13, %10
  %16 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %17 = extractvalue %dx.types.CBufRet.f32 %16, 2
  %18 = fmul fast float %17, 0x3FE3C6EF40000000
  %19 = frem fast float %14, 2.560000e+02
  %20 = frem fast float %15, 2.560000e+02
  %21 = fptoui float %19 to i32
  %22 = fptoui float %20 to i32
  %23 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 0, i32 %21, i32 %22, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %24 = extractvalue %dx.types.ResRet.f32 %23, 0
  %25 = fadd fast float %24, %18
  %26 = call float @dx.op.unary.f32(i32 22, float %25)  ; Frc(value)
  %27 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %28 = extractvalue %dx.types.CBufRet.f32 %27, 2
  %29 = extractvalue %dx.types.CBufRet.f32 %27, 3
  %30 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %31 = extractvalue %dx.types.CBufRet.f32 %30, 0
  %32 = extractvalue %dx.types.CBufRet.f32 %30, 1
  %33 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %34 = extractvalue %dx.types.CBufRet.f32 %33, 0
  %35 = extractvalue %dx.types.CBufRet.f32 %33, 1
  %36 = extractvalue %dx.types.CBufRet.f32 %33, 2
  %37 = extractvalue %dx.types.CBufRet.f32 %33, 3
  %38 = extractvalue %dx.types.CBufRet.f32 %11, 2
  %39 = extractvalue %dx.types.CBufRet.f32 %11, 3
  %40 = fptoui float %14 to i32
  %41 = fptoui float %15 to i32
  %42 = and i32 %40, 1
  %43 = and i32 %41, 1
  %44 = uitofp i32 %42 to float
  %45 = uitofp i32 %43 to float
  %46 = fmul fast float %44, 2.000000e+00
  %47 = fadd fast float %46, -1.000000e+00
  %48 = fmul fast float %45, 2.000000e+00
  %49 = fadd fast float %48, -1.000000e+00
  %50 = fmul fast float %26, 3.200000e+01
  %51 = fadd fast float %50, -1.600000e+01
  %52 = fmul fast float %38, %51
  %53 = fmul fast float %39, %51
  %54 = fmul fast float %53, %49
  %55 = fmul fast float %54, %47
  %56 = fadd fast float %52, %9
  %57 = fadd fast float %55, %10
  %58 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %5, float %56, float %57, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %59 = extractvalue %dx.types.ResRet.f32 %58, 0
  %60 = extractvalue %dx.types.ResRet.f32 %58, 1
  %61 = extractvalue %dx.types.ResRet.f32 %58, 2
  %62 = extractvalue %dx.types.ResRet.f32 %58, 3
  %63 = call float @dx.op.unary.f32(i32 6, float %60)  ; FAbs(value)
  %64 = call float @dx.op.unary.f32(i32 7, float %63)  ; Saturate(value)
  %65 = call float @dx.op.unary.f32(i32 6, float %59)  ; FAbs(value)
  %66 = call float @dx.op.unary.f32(i32 7, float %65)  ; Saturate(value)
  %67 = call float @dx.op.binary.f32(i32 35, float %66, float %64)  ; FMax(a,b)
  %68 = call float @dx.op.binary.f32(i32 35, float %59, float -1.000000e+00)  ; FMax(a,b)
  %69 = call float @dx.op.binary.f32(i32 36, float %68, float 1.000000e+00)  ; FMin(a,b)
  %70 = call float @dx.op.binary.f32(i32 35, float %60, float -1.000000e+00)  ; FMax(a,b)
  %71 = call float @dx.op.binary.f32(i32 36, float %70, float 1.000000e+00)  ; FMin(a,b)
  %72 = fsub fast float %69, %71
  %73 = call float @dx.op.unary.f32(i32 6, float %72)  ; FAbs(value)
  %74 = fmul fast float %73, %28
  %75 = fmul fast float %73, %29
  %76 = call float @dx.op.binary.f32(i32 35, float %74, float %75)  ; FMax(a,b)
  %77 = fmul fast float %76, 5.000000e-01
  %78 = fadd fast float %77, -5.000000e-01
  %79 = call float @dx.op.unary.f32(i32 7, float %78)  ; Saturate(value)
  %80 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %5, float %9, float %10, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %81 = extractvalue %dx.types.ResRet.f32 %80, 0
  %82 = extractvalue %dx.types.ResRet.f32 %80, 1
  %83 = extractvalue %dx.types.ResRet.f32 %80, 2
  %84 = fmul fast float %67, %28
  %85 = fmul fast float %67, %29
  %86 = call float @dx.op.binary.f32(i32 35, float %84, float %85)  ; FMax(a,b)
  %87 = fcmp fast olt float %86, 1.250000e-01
  br i1 %87, label %888, label %88, !dx.controlflow.hints !28

; <label>:88                                      ; preds = %0
  %89 = fmul fast float %67, %31
  %90 = fmul fast float %67, %32
  %91 = fdiv fast float 1.000000e+00, %31
  %92 = fdiv fast float 1.000000e+00, %32
  %93 = fmul fast float %91, %38
  %94 = fmul fast float %92, %39
  %95 = fmul fast float %93, %93
  %96 = fmul fast float %94, %94
  %97 = fadd fast float %96, %95
  %98 = call float @dx.op.unary.f32(i32 24, float %97)  ; Sqrt(value)
  %99 = fmul fast float %98, 5.000000e-01
  %100 = fcmp fast ogt float %61, 4.000000e+02
  %101 = fadd fast float %61, -4.000000e+02
  %102 = select i1 %100, float %101, float %61
  %103 = fcmp fast ogt float %62, 4.000000e+02
  %104 = fadd fast float %62, -4.000000e+02
  %105 = select i1 %103, float %104, float %62
  %106 = fdiv fast float 1.000000e+00, %102
  %107 = fmul fast float %106, %34
  %108 = fmul fast float %106, %36
  %109 = fadd fast float %107, %35
  %110 = fadd fast float %108, %37
  %111 = select i1 %100, float %109, float %110
  %112 = call float @dx.op.binary.f32(i32 35, float %111, float -1.000000e+00)  ; FMax(a,b)
  %113 = call float @dx.op.binary.f32(i32 36, float %112, float 1.000000e+00)  ; FMin(a,b)
  %114 = fdiv fast float 1.000000e+00, %105
  %115 = fmul fast float %114, %34
  %116 = fmul fast float %114, %36
  %117 = fadd fast float %115, %35
  %118 = fadd fast float %116, %37
  %119 = select i1 %103, float %117, float %118
  %120 = call float @dx.op.binary.f32(i32 35, float %119, float -1.000000e+00)  ; FMax(a,b)
  %121 = call float @dx.op.binary.f32(i32 36, float %120, float 1.000000e+00)  ; FMin(a,b)
  %122 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %5, float %9, float %10, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %123 = extractvalue %dx.types.ResRet.f32 %122, 0
  %124 = fcmp fast ogt float %123, -1.000000e+00
  %125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %126 = extractvalue %dx.types.CBufRet.f32 %125, 1
  %127 = select i1 %124, float %126, float 1.000000e+00
  %128 = fadd fast float %123, 1.000000e+00
  %129 = fmul fast float %127, %128
  %130 = call float @dx.op.unary.f32(i32 6, float %129)  ; FAbs(value)
  %131 = fcmp uge float %123, -1.000000e+00
  %132 = fdiv fast float 1.000000e+00, %130
  %133 = fmul fast float %132, %34
  %134 = fmul fast float %132, %36
  %135 = fadd fast float %133, %35
  %136 = fadd fast float %134, %37
  %137 = select i1 %131, float %135, float %136
  %138 = call float @dx.op.unary.f32(i32 6, float %137)  ; FAbs(value)
  %139 = call float @dx.op.unary.f32(i32 7, float %138)  ; Saturate(value)
  %140 = call float @dx.op.binary.f32(i32 35, float %137, float -1.000000e+00)  ; FMax(a,b)
  %141 = call float @dx.op.binary.f32(i32 36, float %140, float 1.000000e+00)  ; FMin(a,b)
  %142 = fsub fast float %121, %141
  %143 = call float @dx.op.unary.f32(i32 6, float %142)  ; FAbs(value)
  %144 = fmul fast float %143, 8.000000e+00
  %145 = fsub fast float 2.000000e+00, %144
  %146 = call float @dx.op.unary.f32(i32 7, float %145)  ; Saturate(value)
  %147 = fsub fast float %141, %113
  %148 = fmul fast float %147, 4.000000e+00
  %149 = fadd fast float %148, -1.000000e+00
  %150 = call float @dx.op.unary.f32(i32 7, float %149)  ; Saturate(value)
  %151 = call float @dx.op.binary.f32(i32 35, float %146, float %150)  ; FMax(a,b)
  %152 = fsub fast float 1.000000e+00, %151
  %153 = fmul fast float %81, 0x3EE4F8B580000000
  %154 = fmul fast float %82, 0x3EE4F8B580000000
  %155 = fmul fast float %83, 0x3EE4F8B580000000
  %156 = fmul fast float %26, 0x401921FB60000000
  %157 = call float @dx.op.unary.f32(i32 13, float %156)  ; Sin(value)
  %158 = call float @dx.op.unary.f32(i32 12, float %156)  ; Cos(value)
  %159 = fsub fast float -0.000000e+00, %158
  %160 = fmul fast float %89, 0x3FB6872B00000000
  %161 = fmul fast float %160, %157
  %162 = fmul fast float %90, 0x3FB6872B00000000
  %163 = fmul fast float %162, %158
  %164 = fadd fast float %161, %9
  %165 = fadd fast float %163, %10
  %166 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %5, float %164, float %165, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %167 = extractvalue %dx.types.ResRet.f32 %166, 0
  %168 = fcmp fast ogt float %167, -1.000000e+00
  %169 = select i1 %168, float %126, float 1.000000e+00
  %170 = fadd fast float %167, 1.000000e+00
  %171 = fmul fast float %169, %170
  %172 = call float @dx.op.unary.f32(i32 6, float %171)  ; FAbs(value)
  %173 = fcmp uge float %167, -1.000000e+00
  %174 = fdiv fast float 1.000000e+00, %172
  %175 = fmul fast float %174, %34
  %176 = fmul fast float %174, %36
  %177 = fadd fast float %175, %35
  %178 = fadd fast float %176, %37
  %179 = select i1 %173, float %177, float %178
  %180 = call float @dx.op.unary.f32(i32 6, float %179)  ; FAbs(value)
  %181 = call float @dx.op.unary.f32(i32 7, float %180)  ; Saturate(value)
  %182 = fmul fast float %181, %181
  %183 = call float @dx.op.binary.f32(i32 35, float %182, float 0x3EE4F8B580000000)  ; FMax(a,b)
  %184 = call float @dx.op.binary.f32(i32 35, float %179, float -1.000000e+00)  ; FMax(a,b)
  %185 = call float @dx.op.binary.f32(i32 36, float %184, float 1.000000e+00)  ; FMin(a,b)
  %186 = fsub fast float %121, %185
  %187 = call float @dx.op.unary.f32(i32 6, float %186)  ; FAbs(value)
  %188 = fmul fast float %187, 8.000000e+00
  %189 = fsub fast float 2.000000e+00, %188
  %190 = call float @dx.op.unary.f32(i32 7, float %189)  ; Saturate(value)
  %191 = fsub fast float %185, %113
  %192 = fmul fast float %191, 4.000000e+00
  %193 = fadd fast float %192, -1.000000e+00
  %194 = call float @dx.op.unary.f32(i32 7, float %193)  ; Saturate(value)
  %195 = call float @dx.op.binary.f32(i32 35, float %190, float %194)  ; FMax(a,b)
  %196 = fsub fast float 1.000000e+00, %195
  %197 = fdiv fast float %181, %67
  %198 = call float @dx.op.binary.f32(i32 35, float %197, float %99)  ; FMax(a,b)
  %199 = fmul fast float %198, 0x4026BA2E80000000
  %200 = call float @dx.op.unary.f32(i32 7, float %199)  ; Saturate(value)
  %201 = fdiv fast float 0x3FC5566D00000000, %183
  %202 = fmul fast float %201, %196
  %203 = fmul fast float %202, %200
  %204 = fmul fast float %157, 0xBFC0E8A720000000
  %205 = call float @dx.op.tertiary.f32(i32 46, float 0xBFCD460AA0000000, float %159, float %204)  ; FMad(a,b,c)
  %206 = fmul fast float %158, 0xBFC0E8A720000000
  %207 = call float @dx.op.tertiary.f32(i32 46, float 0xBFCD460AA0000000, float %157, float %206)  ; FMad(a,b,c)
  %208 = fmul fast float %205, %89
  %209 = fmul fast float %207, %90
  %210 = fadd fast float %208, %9
  %211 = fadd fast float %209, %10
  %212 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %5, float %210, float %211, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %213 = extractvalue %dx.types.ResRet.f32 %212, 0
  %214 = fcmp fast ogt float %213, -1.000000e+00
  %215 = select i1 %214, float %126, float 1.000000e+00
  %216 = fadd fast float %213, 1.000000e+00
  %217 = fmul fast float %215, %216
  %218 = call float @dx.op.unary.f32(i32 6, float %217)  ; FAbs(value)
  %219 = fcmp uge float %213, -1.000000e+00
  %220 = fdiv fast float 1.000000e+00, %218
  %221 = fmul fast float %220, %34
  %222 = fmul fast float %220, %36
  %223 = fadd fast float %221, %35
  %224 = fadd fast float %222, %37
  %225 = select i1 %219, float %223, float %224
  %226 = call float @dx.op.unary.f32(i32 6, float %225)  ; FAbs(value)
  %227 = call float @dx.op.unary.f32(i32 7, float %226)  ; Saturate(value)
  %228 = fmul fast float %227, %227
  %229 = call float @dx.op.binary.f32(i32 35, float %228, float 0x3EE4F8B580000000)  ; FMax(a,b)
  %230 = call float @dx.op.binary.f32(i32 35, float %225, float -1.000000e+00)  ; FMax(a,b)
  %231 = call float @dx.op.binary.f32(i32 36, float %230, float 1.000000e+00)  ; FMin(a,b)
  %232 = fsub fast float %121, %231
  %233 = call float @dx.op.unary.f32(i32 6, float %232)  ; FAbs(value)
  %234 = fmul fast float %233, 8.000000e+00
  %235 = fsub fast float 2.000000e+00, %234
  %236 = call float @dx.op.unary.f32(i32 7, float %235)  ; Saturate(value)
  %237 = fsub fast float %231, %113
  %238 = fmul fast float %237, 4.000000e+00
  %239 = fadd fast float %238, -1.000000e+00
  %240 = call float @dx.op.unary.f32(i32 7, float %239)  ; Saturate(value)
  %241 = call float @dx.op.binary.f32(i32 35, float %236, float %240)  ; FMax(a,b)
  %242 = fsub fast float 1.000000e+00, %241
  %243 = fdiv fast float %227, %67
  %244 = call float @dx.op.binary.f32(i32 35, float %243, float %99)  ; FMax(a,b)
  %245 = fmul fast float %244, 0x4016B68C00000000
  %246 = fadd fast float %245, 0xBFDFFAE1C0000000
  %247 = call float @dx.op.unary.f32(i32 7, float %246)  ; Saturate(value)
  %248 = fdiv fast float 5.000000e-01, %229
  %249 = fmul fast float %248, %242
  %250 = fmul fast float %249, %247
  %251 = fadd fast float %250, %203
  %252 = fmul fast float %157, 0xBFD197F620000000
  %253 = call float @dx.op.tertiary.f32(i32 46, float 0x3FDE7A0FA0000000, float %159, float %252)  ; FMad(a,b,c)
  %254 = fmul fast float %158, 0xBFD197F620000000
  %255 = call float @dx.op.tertiary.f32(i32 46, float 0x3FDE7A0FA0000000, float %157, float %254)  ; FMad(a,b,c)
  %256 = fmul fast float %253, %89
  %257 = fmul fast float %255, %90
  %258 = fadd fast float %256, %9
  %259 = fadd fast float %257, %10
  %260 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %5, float %258, float %259, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %261 = extractvalue %dx.types.ResRet.f32 %260, 0
  %262 = fcmp fast ogt float %261, -1.000000e+00
  %263 = select i1 %262, float %126, float 1.000000e+00
  %264 = fadd fast float %261, 1.000000e+00
  %265 = fmul fast float %263, %264
  %266 = call float @dx.op.unary.f32(i32 6, float %265)  ; FAbs(value)
  %267 = fcmp uge float %261, -1.000000e+00
  %268 = fdiv fast float 1.000000e+00, %266
  %269 = fmul fast float %268, %34
  %270 = fmul fast float %268, %36
  %271 = fadd fast float %269, %35
  %272 = fadd fast float %270, %37
  %273 = select i1 %267, float %271, float %272
  %274 = call float @dx.op.unary.f32(i32 6, float %273)  ; FAbs(value)
  %275 = call float @dx.op.unary.f32(i32 7, float %274)  ; Saturate(value)
  %276 = fmul fast float %275, %275
  %277 = call float @dx.op.binary.f32(i32 35, float %276, float 0x3EE4F8B580000000)  ; FMax(a,b)
  %278 = fdiv fast float 1.000000e+00, %277
  %279 = call float @dx.op.binary.f32(i32 35, float %273, float -1.000000e+00)  ; FMax(a,b)
  %280 = call float @dx.op.binary.f32(i32 36, float %279, float 1.000000e+00)  ; FMin(a,b)
  %281 = fsub fast float %121, %280
  %282 = call float @dx.op.unary.f32(i32 6, float %281)  ; FAbs(value)
  %283 = fmul fast float %282, 8.000000e+00
  %284 = fsub fast float 2.000000e+00, %283
  %285 = call float @dx.op.unary.f32(i32 7, float %284)  ; Saturate(value)
  %286 = fsub fast float %280, %113
  %287 = fmul fast float %286, 4.000000e+00
  %288 = fadd fast float %287, -1.000000e+00
  %289 = call float @dx.op.unary.f32(i32 7, float %288)  ; Saturate(value)
  %290 = call float @dx.op.binary.f32(i32 35, float %285, float %289)  ; FMax(a,b)
  %291 = fsub fast float 1.000000e+00, %290
  %292 = fdiv fast float %275, %67
  %293 = call float @dx.op.binary.f32(i32 35, float %292, float %99)  ; FMax(a,b)
  %294 = fmul fast float %293, 0x400BFF52C0000000
  %295 = fadd fast float %294, 0xBFED93D900000000
  %296 = call float @dx.op.unary.f32(i32 7, float %295)  ; Saturate(value)
  %297 = fmul fast float %291, %278
  %298 = fmul fast float %297, %296
  %299 = fadd fast float %251, %298
  %300 = fmul fast float %89, 0x3FE767A100000000
  %301 = fmul fast float %300, %157
  %302 = fmul fast float %90, 0x3FE767A100000000
  %303 = fmul fast float %302, %158
  %304 = fadd fast float %301, %9
  %305 = fadd fast float %303, %10
  %306 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %5, float %304, float %305, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %307 = extractvalue %dx.types.ResRet.f32 %306, 0
  %308 = fcmp fast ogt float %307, -1.000000e+00
  %309 = select i1 %308, float %126, float 1.000000e+00
  %310 = fadd fast float %307, 1.000000e+00
  %311 = fmul fast float %309, %310
  %312 = call float @dx.op.unary.f32(i32 6, float %311)  ; FAbs(value)
  %313 = fcmp uge float %307, -1.000000e+00
  %314 = fdiv fast float 1.000000e+00, %312
  %315 = fmul fast float %314, %34
  %316 = fmul fast float %314, %36
  %317 = fadd fast float %315, %35
  %318 = fadd fast float %316, %37
  %319 = select i1 %313, float %317, float %318
  %320 = call float @dx.op.unary.f32(i32 6, float %319)  ; FAbs(value)
  %321 = call float @dx.op.unary.f32(i32 7, float %320)  ; Saturate(value)
  %322 = fmul fast float %321, %321
  %323 = call float @dx.op.binary.f32(i32 35, float %322, float 0x3EE4F8B580000000)  ; FMax(a,b)
  %324 = fdiv fast float 1.000000e+00, %323
  %325 = call float @dx.op.binary.f32(i32 35, float %319, float -1.000000e+00)  ; FMax(a,b)
  %326 = call float @dx.op.binary.f32(i32 36, float %325, float 1.000000e+00)  ; FMin(a,b)
  %327 = fsub fast float %121, %326
  %328 = call float @dx.op.unary.f32(i32 6, float %327)  ; FAbs(value)
  %329 = fmul fast float %328, 8.000000e+00
  %330 = fsub fast float 2.000000e+00, %329
  %331 = call float @dx.op.unary.f32(i32 7, float %330)  ; Saturate(value)
  %332 = fsub fast float %326, %113
  %333 = fmul fast float %332, 4.000000e+00
  %334 = fadd fast float %333, -1.000000e+00
  %335 = call float @dx.op.unary.f32(i32 7, float %334)  ; Saturate(value)
  %336 = call float @dx.op.binary.f32(i32 35, float %331, float %335)  ; FMax(a,b)
  %337 = fsub fast float 1.000000e+00, %336
  %338 = fdiv fast float %321, %67
  %339 = call float @dx.op.binary.f32(i32 35, float %338, float %99)  ; FMax(a,b)
  %340 = fmul fast float %339, 0x4016085C00000000
  %341 = fadd fast float %340, 0xC0083AB7C0000000
  %342 = call float @dx.op.unary.f32(i32 7, float %341)  ; Saturate(value)
  %343 = fmul fast float %337, %324
  %344 = fmul fast float %343, %342
  %345 = fadd fast float %299, %344
  %346 = fmul fast float %157, 0xBFDC083120000000
  %347 = call float @dx.op.tertiary.f32(i32 46, float 0xBFE8474540000000, float %159, float %346)  ; FMad(a,b,c)
  %348 = fmul fast float %158, 0xBFDC083120000000
  %349 = call float @dx.op.tertiary.f32(i32 46, float 0xBFE8474540000000, float %157, float %348)  ; FMad(a,b,c)
  %350 = fmul fast float %347, %89
  %351 = fmul fast float %349, %90
  %352 = fadd fast float %350, %9
  %353 = fadd fast float %351, %10
  %354 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %5, float %352, float %353, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %355 = extractvalue %dx.types.ResRet.f32 %354, 0
  %356 = fcmp fast ogt float %355, -1.000000e+00
  %357 = select i1 %356, float %126, float 1.000000e+00
  %358 = fadd fast float %355, 1.000000e+00
  %359 = fmul fast float %357, %358
  %360 = call float @dx.op.unary.f32(i32 6, float %359)  ; FAbs(value)
  %361 = fcmp uge float %355, -1.000000e+00
  %362 = fdiv fast float 1.000000e+00, %360
  %363 = fmul fast float %362, %34
  %364 = fmul fast float %362, %36
  %365 = fadd fast float %363, %35
  %366 = fadd fast float %364, %37
  %367 = select i1 %361, float %365, float %366
  %368 = call float @dx.op.unary.f32(i32 6, float %367)  ; FAbs(value)
  %369 = call float @dx.op.unary.f32(i32 7, float %368)  ; Saturate(value)
  %370 = fmul fast float %369, %369
  %371 = call float @dx.op.binary.f32(i32 35, float %370, float 0x3EE4F8B580000000)  ; FMax(a,b)
  %372 = fdiv fast float 1.000000e+00, %371
  %373 = call float @dx.op.binary.f32(i32 35, float %367, float -1.000000e+00)  ; FMax(a,b)
  %374 = call float @dx.op.binary.f32(i32 36, float %373, float 1.000000e+00)  ; FMin(a,b)
  %375 = fsub fast float %121, %374
  %376 = call float @dx.op.unary.f32(i32 6, float %375)  ; FAbs(value)
  %377 = fmul fast float %376, 8.000000e+00
  %378 = fsub fast float 2.000000e+00, %377
  %379 = call float @dx.op.unary.f32(i32 7, float %378)  ; Saturate(value)
  %380 = fsub fast float %374, %113
  %381 = fmul fast float %380, 4.000000e+00
  %382 = fadd fast float %381, -1.000000e+00
  %383 = call float @dx.op.unary.f32(i32 7, float %382)  ; Saturate(value)
  %384 = call float @dx.op.binary.f32(i32 35, float %379, float %383)  ; FMax(a,b)
  %385 = fsub fast float 1.000000e+00, %384
  %386 = fdiv fast float %369, %67
  %387 = call float @dx.op.binary.f32(i32 35, float %386, float %99)  ; FMax(a,b)
  %388 = fmul fast float %387, 0x401BA6FC40000000
  %389 = fadd fast float %388, 0xC0143991E0000000
  %390 = call float @dx.op.unary.f32(i32 7, float %389)  ; Saturate(value)
  %391 = fmul fast float %385, %372
  %392 = fmul fast float %391, %390
  %393 = fadd fast float %345, %392
  %394 = fmul fast float %157, -5.000000e-01
  %395 = call float @dx.op.tertiary.f32(i32 46, float 0x3FEBB645A0000000, float %159, float %394)  ; FMad(a,b,c)
  %396 = fmul fast float %158, -5.000000e-01
  %397 = call float @dx.op.tertiary.f32(i32 46, float 0x3FEBB645A0000000, float %157, float %396)  ; FMad(a,b,c)
  %398 = fmul fast float %395, %89
  %399 = fmul fast float %397, %90
  %400 = fadd fast float %398, %9
  %401 = fadd fast float %399, %10
  %402 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %5, float %400, float %401, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %403 = extractvalue %dx.types.ResRet.f32 %402, 0
  %404 = fcmp fast ogt float %403, -1.000000e+00
  %405 = select i1 %404, float %126, float 1.000000e+00
  %406 = fadd fast float %403, 1.000000e+00
  %407 = fmul fast float %405, %406
  %408 = call float @dx.op.unary.f32(i32 6, float %407)  ; FAbs(value)
  %409 = fcmp uge float %403, -1.000000e+00
  %410 = fdiv fast float 1.000000e+00, %408
  %411 = fmul fast float %410, %34
  %412 = fmul fast float %410, %36
  %413 = fadd fast float %411, %35
  %414 = fadd fast float %412, %37
  %415 = select i1 %409, float %413, float %414
  %416 = call float @dx.op.unary.f32(i32 6, float %415)  ; FAbs(value)
  %417 = call float @dx.op.unary.f32(i32 7, float %416)  ; Saturate(value)
  %418 = fmul fast float %417, %417
  %419 = call float @dx.op.binary.f32(i32 35, float %418, float 0x3EE4F8B580000000)  ; FMax(a,b)
  %420 = fdiv fast float 1.000000e+00, %419
  %421 = call float @dx.op.binary.f32(i32 35, float %415, float -1.000000e+00)  ; FMax(a,b)
  %422 = call float @dx.op.binary.f32(i32 36, float %421, float 1.000000e+00)  ; FMin(a,b)
  %423 = fsub fast float %121, %422
  %424 = call float @dx.op.unary.f32(i32 6, float %423)  ; FAbs(value)
  %425 = fmul fast float %424, 8.000000e+00
  %426 = fsub fast float 2.000000e+00, %425
  %427 = call float @dx.op.unary.f32(i32 7, float %426)  ; Saturate(value)
  %428 = fsub fast float %422, %113
  %429 = fmul fast float %428, 4.000000e+00
  %430 = fadd fast float %429, -1.000000e+00
  %431 = call float @dx.op.unary.f32(i32 7, float %430)  ; Saturate(value)
  %432 = call float @dx.op.binary.f32(i32 35, float %427, float %431)  ; FMax(a,b)
  %433 = fsub fast float 1.000000e+00, %432
  %434 = fdiv fast float %417, %67
  %435 = call float @dx.op.binary.f32(i32 35, float %434, float %99)  ; FMax(a,b)
  %436 = fmul fast float %435, 0x4020238C40000000
  %437 = fadd fast float %436, 0xC01C46EA00000000
  %438 = call float @dx.op.unary.f32(i32 7, float %437)  ; Saturate(value)
  %439 = fmul fast float %433, %420
  %440 = fmul fast float %439, %438
  %441 = fadd fast float %393, %440
  %442 = fmul fast float %67, %67
  %443 = call float @dx.op.binary.f32(i32 35, float %442, float 0x3EE4F8B580000000)  ; FMax(a,b)
  %444 = fmul fast float %443, 0x3FCB6DAA00000000
  %445 = fmul fast float %444, %441
  %446 = call float @dx.op.unary.f32(i32 7, float %445)  ; Saturate(value)
  %447 = fdiv fast float 1.000000e+00, %183
  %448 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %5, float %164, float %165, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %449 = extractvalue %dx.types.ResRet.f32 %448, 0
  %450 = extractvalue %dx.types.ResRet.f32 %448, 1
  %451 = extractvalue %dx.types.ResRet.f32 %448, 2
  %452 = fdiv fast float %139, %67
  %453 = call float @dx.op.binary.f32(i32 35, float %452, float %99)  ; FMax(a,b)
  %454 = fmul fast float %453, 0x4026BA2E80000000
  %455 = call float @dx.op.unary.f32(i32 7, float %454)  ; Saturate(value)
  %456 = call float @dx.op.binary.f32(i32 35, float %446, float %99)  ; FMax(a,b)
  %457 = fmul fast float %456, 0x4026BA2E80000000
  %458 = call float @dx.op.unary.f32(i32 7, float %457)  ; Saturate(value)
  %459 = call float @dx.op.binary.f32(i32 35, float %458, float %152)  ; FMax(a,b)
  %460 = fsub fast float 1.000000e+00, %455
  %461 = fmul fast float %459, %460
  %462 = fadd fast float %461, %455
  %463 = fmul fast float %462, %195
  %464 = call float @dx.op.binary.f32(i32 35, float %450, float %451)  ; FMax(a,b)
  %465 = call float @dx.op.binary.f32(i32 35, float %449, float %464)  ; FMax(a,b)
  %466 = fmul fast float %465, 1.250000e-01
  %467 = fadd fast float %466, 1.000000e+00
  %468 = bitcast float %467 to i32
  %469 = sub nsw i32 2129859010, %468
  %470 = bitcast i32 %469 to float
  %471 = fmul fast float %470, 0x3FC5566D00000000
  %472 = fmul fast float %196, %447
  %473 = fmul fast float %472, %200
  %474 = fmul fast float %473, %471
  %475 = fmul fast float %474, %449
  %476 = fmul fast float %474, %450
  %477 = fmul fast float %474, %451
  %478 = fadd fast float %475, %153
  %479 = fadd fast float %476, %154
  %480 = fadd fast float %477, %155
  %481 = fadd fast float %474, 0x3EE4F8B580000000
  %482 = fmul fast float %463, %471
  %483 = fmul fast float %482, %449
  %484 = fmul fast float %482, %450
  %485 = fmul fast float %482, %451
  %486 = fadd fast float %483, %153
  %487 = fadd fast float %484, %154
  %488 = fadd fast float %485, %155
  %489 = fadd fast float %482, 0x3EE4F8B580000000
  %490 = fmul fast float %471, %449
  %491 = fmul fast float %471, %450
  %492 = fmul fast float %471, %451
  %493 = fsub fast float 0x3FEFFFEB00000000, %482
  %494 = call float @dx.op.unary.f32(i32 7, float %493)  ; Saturate(value)
  %495 = fdiv fast float 1.000000e+00, %229
  %496 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %5, float %210, float %211, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %497 = extractvalue %dx.types.ResRet.f32 %496, 0
  %498 = extractvalue %dx.types.ResRet.f32 %496, 1
  %499 = extractvalue %dx.types.ResRet.f32 %496, 2
  %500 = fmul fast float %453, 0x4016B68C00000000
  %501 = fadd fast float %500, 0xBFDFFAE1C0000000
  %502 = call float @dx.op.unary.f32(i32 7, float %501)  ; Saturate(value)
  %503 = fmul fast float %456, 0x4016B68C00000000
  %504 = fadd fast float %503, 0xBFDFFAE1C0000000
  %505 = call float @dx.op.unary.f32(i32 7, float %504)  ; Saturate(value)
  %506 = call float @dx.op.binary.f32(i32 35, float %505, float %152)  ; FMax(a,b)
  %507 = fsub fast float %494, %502
  %508 = fmul fast float %506, %507
  %509 = fadd fast float %508, %502
  %510 = fmul fast float %509, %241
  %511 = call float @dx.op.binary.f32(i32 35, float %498, float %499)  ; FMax(a,b)
  %512 = call float @dx.op.binary.f32(i32 35, float %497, float %511)  ; FMax(a,b)
  %513 = fmul fast float %512, 1.250000e-01
  %514 = fadd fast float %513, 1.000000e+00
  %515 = bitcast float %514 to i32
  %516 = sub nsw i32 2129859010, %515
  %517 = bitcast i32 %516 to float
  %518 = fmul fast float %517, 5.000000e-01
  %519 = fmul fast float %242, %495
  %520 = fmul fast float %519, %247
  %521 = fmul fast float %520, %518
  %522 = fmul fast float %521, %497
  %523 = fmul fast float %521, %498
  %524 = fmul fast float %521, %499
  %525 = fadd fast float %478, %522
  %526 = fadd fast float %479, %523
  %527 = fadd fast float %480, %524
  %528 = fadd fast float %481, %521
  %529 = fmul fast float %510, %518
  %530 = fmul fast float %529, %497
  %531 = fmul fast float %529, %498
  %532 = fmul fast float %529, %499
  %533 = fadd fast float %486, %530
  %534 = fadd fast float %487, %531
  %535 = fadd fast float %488, %532
  %536 = fadd fast float %489, %529
  %537 = fmul fast float %518, %497
  %538 = fmul fast float %518, %498
  %539 = fmul fast float %518, %499
  %540 = fadd fast float %537, %490
  %541 = fadd fast float %538, %491
  %542 = fadd fast float %539, %492
  %543 = fadd fast float %518, %471
  %544 = fsub fast float 1.000000e+00, %536
  %545 = call float @dx.op.unary.f32(i32 7, float %544)  ; Saturate(value)
  %546 = fmul fast float %545, %494
  %547 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %5, float %258, float %259, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %548 = extractvalue %dx.types.ResRet.f32 %547, 0
  %549 = extractvalue %dx.types.ResRet.f32 %547, 1
  %550 = extractvalue %dx.types.ResRet.f32 %547, 2
  %551 = fmul fast float %453, 0x400BFF52C0000000
  %552 = fadd fast float %551, 0xBFED93D900000000
  %553 = call float @dx.op.unary.f32(i32 7, float %552)  ; Saturate(value)
  %554 = fmul fast float %456, 0x400BFF52C0000000
  %555 = fadd fast float %554, 0xBFED93D900000000
  %556 = call float @dx.op.unary.f32(i32 7, float %555)  ; Saturate(value)
  %557 = call float @dx.op.binary.f32(i32 35, float %556, float %152)  ; FMax(a,b)
  %558 = fsub fast float %546, %553
  %559 = fmul fast float %557, %558
  %560 = fadd fast float %559, %553
  %561 = fmul fast float %560, %290
  %562 = call float @dx.op.binary.f32(i32 35, float %549, float %550)  ; FMax(a,b)
  %563 = call float @dx.op.binary.f32(i32 35, float %548, float %562)  ; FMax(a,b)
  %564 = fmul fast float %563, 1.250000e-01
  %565 = fadd fast float %564, 1.000000e+00
  %566 = bitcast float %565 to i32
  %567 = sub nsw i32 2129859010, %566
  %568 = bitcast i32 %567 to float
  %569 = fmul fast float %298, %568
  %570 = fmul fast float %569, %548
  %571 = fmul fast float %569, %549
  %572 = fmul fast float %569, %550
  %573 = fadd fast float %525, %570
  %574 = fadd fast float %526, %571
  %575 = fadd fast float %527, %572
  %576 = fadd fast float %528, %569
  %577 = fmul fast float %561, %568
  %578 = fmul fast float %577, %548
  %579 = fmul fast float %577, %549
  %580 = fmul fast float %577, %550
  %581 = fadd fast float %533, %578
  %582 = fadd fast float %534, %579
  %583 = fadd fast float %535, %580
  %584 = fadd fast float %577, %536
  %585 = fmul fast float %568, %548
  %586 = fmul fast float %568, %549
  %587 = fmul fast float %568, %550
  %588 = fadd fast float %540, %585
  %589 = fadd fast float %541, %586
  %590 = fadd fast float %542, %587
  %591 = fadd fast float %543, %568
  %592 = fsub fast float 1.000000e+00, %584
  %593 = call float @dx.op.unary.f32(i32 7, float %592)  ; Saturate(value)
  %594 = fmul fast float %593, %546
  %595 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %5, float %304, float %305, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %596 = extractvalue %dx.types.ResRet.f32 %595, 0
  %597 = fcmp fast ogt float %596, -1.000000e+00
  %598 = select i1 %597, float %126, float 1.000000e+00
  %599 = fadd fast float %596, 1.000000e+00
  %600 = fmul fast float %598, %599
  %601 = call float @dx.op.unary.f32(i32 6, float %600)  ; FAbs(value)
  %602 = fcmp uge float %596, -1.000000e+00
  %603 = fdiv fast float 1.000000e+00, %601
  %604 = fmul fast float %603, %34
  %605 = fmul fast float %603, %36
  %606 = fadd fast float %604, %35
  %607 = fadd fast float %605, %37
  %608 = select i1 %602, float %606, float %607
  %609 = call float @dx.op.unary.f32(i32 6, float %608)  ; FAbs(value)
  %610 = call float @dx.op.unary.f32(i32 7, float %609)  ; Saturate(value)
  %611 = fmul fast float %610, %610
  %612 = call float @dx.op.binary.f32(i32 35, float %611, float 0x3EE4F8B580000000)  ; FMax(a,b)
  %613 = fdiv fast float 1.000000e+00, %612
  %614 = call float @dx.op.binary.f32(i32 35, float %608, float -1.000000e+00)  ; FMax(a,b)
  %615 = call float @dx.op.binary.f32(i32 36, float %614, float 1.000000e+00)  ; FMin(a,b)
  %616 = fsub fast float %121, %615
  %617 = call float @dx.op.unary.f32(i32 6, float %616)  ; FAbs(value)
  %618 = fmul fast float %617, 8.000000e+00
  %619 = fsub fast float 2.000000e+00, %618
  %620 = call float @dx.op.unary.f32(i32 7, float %619)  ; Saturate(value)
  %621 = fsub fast float %615, %113
  %622 = fmul fast float %621, 4.000000e+00
  %623 = fadd fast float %622, -1.000000e+00
  %624 = call float @dx.op.unary.f32(i32 7, float %623)  ; Saturate(value)
  %625 = call float @dx.op.binary.f32(i32 35, float %620, float %624)  ; FMax(a,b)
  %626 = fsub fast float 1.000000e+00, %625
  %627 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %5, float %304, float %305, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %628 = extractvalue %dx.types.ResRet.f32 %627, 0
  %629 = extractvalue %dx.types.ResRet.f32 %627, 1
  %630 = extractvalue %dx.types.ResRet.f32 %627, 2
  %631 = fdiv fast float %610, %67
  %632 = call float @dx.op.binary.f32(i32 35, float %631, float %99)  ; FMax(a,b)
  %633 = fmul fast float %632, 0x4016085C00000000
  %634 = fadd fast float %633, 0xC0083AB7C0000000
  %635 = call float @dx.op.unary.f32(i32 7, float %634)  ; Saturate(value)
  %636 = fmul fast float %453, 0x4016085C00000000
  %637 = fadd fast float %636, 0xC0083AB7C0000000
  %638 = call float @dx.op.unary.f32(i32 7, float %637)  ; Saturate(value)
  %639 = fmul fast float %456, 0x4016085C00000000
  %640 = fadd fast float %639, 0xC0083AB7C0000000
  %641 = call float @dx.op.unary.f32(i32 7, float %640)  ; Saturate(value)
  %642 = call float @dx.op.binary.f32(i32 35, float %641, float %152)  ; FMax(a,b)
  %643 = fsub fast float %594, %638
  %644 = fmul fast float %642, %643
  %645 = fadd fast float %644, %638
  %646 = fmul fast float %645, %625
  %647 = call float @dx.op.binary.f32(i32 35, float %629, float %630)  ; FMax(a,b)
  %648 = call float @dx.op.binary.f32(i32 35, float %628, float %647)  ; FMax(a,b)
  %649 = fmul fast float %648, 1.250000e-01
  %650 = fadd fast float %649, 1.000000e+00
  %651 = bitcast float %650 to i32
  %652 = sub nsw i32 2129859010, %651
  %653 = bitcast i32 %652 to float
  %654 = fmul fast float %626, %613
  %655 = fmul fast float %654, %635
  %656 = fmul fast float %655, %653
  %657 = fmul fast float %656, %628
  %658 = fmul fast float %656, %629
  %659 = fmul fast float %656, %630
  %660 = fadd fast float %573, %657
  %661 = fadd fast float %574, %658
  %662 = fadd fast float %575, %659
  %663 = fadd fast float %576, %656
  %664 = fmul fast float %646, %653
  %665 = fmul fast float %664, %628
  %666 = fmul fast float %664, %629
  %667 = fmul fast float %664, %630
  %668 = fadd fast float %581, %665
  %669 = fadd fast float %582, %666
  %670 = fadd fast float %583, %667
  %671 = fadd fast float %664, %584
  %672 = fmul fast float %653, %628
  %673 = fmul fast float %653, %629
  %674 = fmul fast float %653, %630
  %675 = fadd fast float %588, %672
  %676 = fadd fast float %589, %673
  %677 = fadd fast float %590, %674
  %678 = fadd fast float %591, %653
  %679 = fsub fast float 1.000000e+00, %671
  %680 = call float @dx.op.unary.f32(i32 7, float %679)  ; Saturate(value)
  %681 = fmul fast float %680, %594
  %682 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %5, float %352, float %353, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %683 = extractvalue %dx.types.ResRet.f32 %682, 0
  %684 = fcmp fast ogt float %683, -1.000000e+00
  %685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %686 = extractvalue %dx.types.CBufRet.f32 %685, 1
  %687 = select i1 %684, float %686, float 1.000000e+00
  %688 = fadd fast float %683, 1.000000e+00
  %689 = fmul fast float %687, %688
  %690 = call float @dx.op.unary.f32(i32 6, float %689)  ; FAbs(value)
  %691 = fcmp uge float %683, -1.000000e+00
  %692 = fdiv fast float 1.000000e+00, %690
  %693 = fmul fast float %692, %34
  %694 = fmul fast float %692, %36
  %695 = fadd fast float %693, %35
  %696 = fadd fast float %694, %37
  %697 = select i1 %691, float %695, float %696
  %698 = call float @dx.op.unary.f32(i32 6, float %697)  ; FAbs(value)
  %699 = call float @dx.op.unary.f32(i32 7, float %698)  ; Saturate(value)
  %700 = fmul fast float %699, %699
  %701 = call float @dx.op.binary.f32(i32 35, float %700, float 0x3EE4F8B580000000)  ; FMax(a,b)
  %702 = fdiv fast float 1.000000e+00, %701
  %703 = call float @dx.op.binary.f32(i32 35, float %697, float -1.000000e+00)  ; FMax(a,b)
  %704 = call float @dx.op.binary.f32(i32 36, float %703, float 1.000000e+00)  ; FMin(a,b)
  %705 = fsub fast float %121, %704
  %706 = call float @dx.op.unary.f32(i32 6, float %705)  ; FAbs(value)
  %707 = fmul fast float %706, 8.000000e+00
  %708 = fsub fast float 2.000000e+00, %707
  %709 = call float @dx.op.unary.f32(i32 7, float %708)  ; Saturate(value)
  %710 = fsub fast float %704, %113
  %711 = fmul fast float %710, 4.000000e+00
  %712 = fadd fast float %711, -1.000000e+00
  %713 = call float @dx.op.unary.f32(i32 7, float %712)  ; Saturate(value)
  %714 = call float @dx.op.binary.f32(i32 35, float %709, float %713)  ; FMax(a,b)
  %715 = fsub fast float 1.000000e+00, %714
  %716 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %5, float %352, float %353, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %717 = extractvalue %dx.types.ResRet.f32 %716, 0
  %718 = extractvalue %dx.types.ResRet.f32 %716, 1
  %719 = extractvalue %dx.types.ResRet.f32 %716, 2
  %720 = fdiv fast float %699, %67
  %721 = call float @dx.op.binary.f32(i32 35, float %720, float %99)  ; FMax(a,b)
  %722 = fmul fast float %721, 0x401BA6FC40000000
  %723 = fadd fast float %722, 0xC0143991E0000000
  %724 = call float @dx.op.unary.f32(i32 7, float %723)  ; Saturate(value)
  %725 = fmul fast float %453, 0x401BA6FC40000000
  %726 = fadd fast float %725, 0xC0143991E0000000
  %727 = call float @dx.op.unary.f32(i32 7, float %726)  ; Saturate(value)
  %728 = fmul fast float %456, 0x401BA6FC40000000
  %729 = fadd fast float %728, 0xC0143991E0000000
  %730 = call float @dx.op.unary.f32(i32 7, float %729)  ; Saturate(value)
  %731 = call float @dx.op.binary.f32(i32 35, float %730, float %152)  ; FMax(a,b)
  %732 = fsub fast float %681, %727
  %733 = fmul fast float %731, %732
  %734 = fadd fast float %733, %727
  %735 = fmul fast float %734, %714
  %736 = call float @dx.op.binary.f32(i32 35, float %718, float %719)  ; FMax(a,b)
  %737 = call float @dx.op.binary.f32(i32 35, float %717, float %736)  ; FMax(a,b)
  %738 = fmul fast float %737, 1.250000e-01
  %739 = fadd fast float %738, 1.000000e+00
  %740 = bitcast float %739 to i32
  %741 = sub nsw i32 2129859010, %740
  %742 = bitcast i32 %741 to float
  %743 = fmul fast float %715, %702
  %744 = fmul fast float %743, %724
  %745 = fmul fast float %744, %742
  %746 = fmul fast float %745, %717
  %747 = fmul fast float %745, %718
  %748 = fmul fast float %745, %719
  %749 = fadd fast float %660, %746
  %750 = fadd fast float %661, %747
  %751 = fadd fast float %662, %748
  %752 = fadd fast float %663, %745
  %753 = fmul fast float %735, %742
  %754 = fmul fast float %753, %717
  %755 = fmul fast float %753, %718
  %756 = fmul fast float %753, %719
  %757 = fadd fast float %668, %754
  %758 = fadd fast float %669, %755
  %759 = fadd fast float %670, %756
  %760 = fadd fast float %753, %671
  %761 = fmul fast float %742, %717
  %762 = fmul fast float %742, %718
  %763 = fmul fast float %742, %719
  %764 = fadd fast float %675, %761
  %765 = fadd fast float %676, %762
  %766 = fadd fast float %677, %763
  %767 = fadd fast float %678, %742
  %768 = fsub fast float 1.000000e+00, %760
  %769 = call float @dx.op.unary.f32(i32 7, float %768)  ; Saturate(value)
  %770 = fmul fast float %769, %681
  %771 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %5, float %400, float %401, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %772 = extractvalue %dx.types.ResRet.f32 %771, 0
  %773 = fcmp fast ogt float %772, -1.000000e+00
  %774 = select i1 %773, float %686, float 1.000000e+00
  %775 = fadd fast float %772, 1.000000e+00
  %776 = fmul fast float %774, %775
  %777 = call float @dx.op.unary.f32(i32 6, float %776)  ; FAbs(value)
  %778 = fcmp uge float %772, -1.000000e+00
  %779 = fdiv fast float 1.000000e+00, %777
  %780 = fmul fast float %779, %34
  %781 = fmul fast float %779, %36
  %782 = fadd fast float %780, %35
  %783 = fadd fast float %781, %37
  %784 = select i1 %778, float %782, float %783
  %785 = call float @dx.op.unary.f32(i32 6, float %784)  ; FAbs(value)
  %786 = call float @dx.op.unary.f32(i32 7, float %785)  ; Saturate(value)
  %787 = fmul fast float %786, %786
  %788 = call float @dx.op.binary.f32(i32 35, float %787, float 0x3EE4F8B580000000)  ; FMax(a,b)
  %789 = fdiv fast float 1.000000e+00, %788
  %790 = call float @dx.op.binary.f32(i32 35, float %784, float -1.000000e+00)  ; FMax(a,b)
  %791 = call float @dx.op.binary.f32(i32 36, float %790, float 1.000000e+00)  ; FMin(a,b)
  %792 = fsub fast float %121, %791
  %793 = call float @dx.op.unary.f32(i32 6, float %792)  ; FAbs(value)
  %794 = fmul fast float %793, 8.000000e+00
  %795 = fsub fast float 2.000000e+00, %794
  %796 = call float @dx.op.unary.f32(i32 7, float %795)  ; Saturate(value)
  %797 = fsub fast float %791, %113
  %798 = fmul fast float %797, 4.000000e+00
  %799 = fadd fast float %798, -1.000000e+00
  %800 = call float @dx.op.unary.f32(i32 7, float %799)  ; Saturate(value)
  %801 = call float @dx.op.binary.f32(i32 35, float %796, float %800)  ; FMax(a,b)
  %802 = fsub fast float 1.000000e+00, %801
  %803 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %5, float %400, float %401, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %804 = extractvalue %dx.types.ResRet.f32 %803, 0
  %805 = extractvalue %dx.types.ResRet.f32 %803, 1
  %806 = extractvalue %dx.types.ResRet.f32 %803, 2
  %807 = fdiv fast float %786, %67
  %808 = call float @dx.op.binary.f32(i32 35, float %807, float %99)  ; FMax(a,b)
  %809 = fmul fast float %808, 0x4020238C40000000
  %810 = fadd fast float %809, 0xC01C46EA00000000
  %811 = call float @dx.op.unary.f32(i32 7, float %810)  ; Saturate(value)
  %812 = fmul fast float %453, 0x4020238C40000000
  %813 = fadd fast float %812, 0xC01C46EA00000000
  %814 = call float @dx.op.unary.f32(i32 7, float %813)  ; Saturate(value)
  %815 = fmul fast float %456, 0x4020238C40000000
  %816 = fadd fast float %815, 0xC01C46EA00000000
  %817 = call float @dx.op.unary.f32(i32 7, float %816)  ; Saturate(value)
  %818 = call float @dx.op.binary.f32(i32 35, float %817, float %152)  ; FMax(a,b)
  %819 = fsub fast float %770, %814
  %820 = fmul fast float %818, %819
  %821 = fadd fast float %820, %814
  %822 = fmul fast float %821, %801
  %823 = call float @dx.op.binary.f32(i32 35, float %805, float %806)  ; FMax(a,b)
  %824 = call float @dx.op.binary.f32(i32 35, float %804, float %823)  ; FMax(a,b)
  %825 = fmul fast float %824, 1.250000e-01
  %826 = fadd fast float %825, 1.000000e+00
  %827 = bitcast float %826 to i32
  %828 = sub nsw i32 2129859010, %827
  %829 = bitcast i32 %828 to float
  %830 = fmul fast float %802, %789
  %831 = fmul fast float %830, %811
  %832 = fmul fast float %831, %829
  %833 = fmul fast float %832, %804
  %834 = fmul fast float %832, %805
  %835 = fmul fast float %832, %806
  %836 = fadd fast float %749, %833
  %837 = fadd fast float %750, %834
  %838 = fadd fast float %751, %835
  %839 = fadd fast float %752, %832
  %840 = fmul fast float %822, %829
  %841 = fmul fast float %840, %804
  %842 = fmul fast float %840, %805
  %843 = fmul fast float %840, %806
  %844 = fadd fast float %757, %841
  %845 = fadd fast float %758, %842
  %846 = fadd fast float %759, %843
  %847 = fadd fast float %840, %760
  %848 = fmul fast float %829, %804
  %849 = fmul fast float %829, %805
  %850 = fmul fast float %829, %806
  %851 = fadd fast float %764, %848
  %852 = fadd fast float %765, %849
  %853 = fadd fast float %766, %850
  %854 = fadd fast float %767, %829
  %855 = fdiv fast float 1.000000e+00, %839
  %856 = fmul fast float %836, %855
  %857 = fmul fast float %837, %855
  %858 = fmul fast float %838, %855
  %859 = fdiv fast float 1.000000e+00, %847
  %860 = fmul fast float %844, %859
  %861 = fmul fast float %845, %859
  %862 = fmul fast float %846, %859
  %863 = fdiv fast float 1.000000e+00, %854
  %864 = fmul fast float %851, %863
  %865 = fmul fast float %852, %863
  %866 = fmul fast float %853, %863
  %867 = fmul fast float %441, 0x3FCB6DAA00000000
  %868 = fmul fast float %867, %443
  %869 = call float @dx.op.unary.f32(i32 7, float %868)  ; Saturate(value)
  %870 = fsub fast float %856, %860
  %871 = fsub fast float %857, %861
  %872 = fsub fast float %858, %862
  %873 = fmul fast float %870, %869
  %874 = fmul fast float %871, %869
  %875 = fmul fast float %872, %869
  %876 = fsub fast float %860, %864
  %877 = fadd fast float %876, %873
  %878 = fsub fast float %861, %865
  %879 = fadd fast float %878, %874
  %880 = fsub fast float %862, %866
  %881 = fadd fast float %880, %875
  %882 = fmul fast float %877, %79
  %883 = fmul fast float %879, %79
  %884 = fmul fast float %881, %79
  %885 = fadd fast float %882, %864
  %886 = fadd fast float %883, %865
  %887 = fadd fast float %884, %866
  br label %888

; <label>:888                                     ; preds = %88, %0
  %889 = phi float [ %885, %88 ], [ %81, %0 ]
  %890 = phi float [ %886, %88 ], [ %82, %0 ]
  %891 = phi float [ %887, %88 ], [ %83, %0 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %889)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %890)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %891)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

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
!dx.viewIdState = !{!17}
!dx.entryPoints = !{!18}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !11, !15}
!5 = !{!6, !8, !9, !10}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!11 = !{!12, !13, !14}
!12 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!13 = !{i32 1, %perObject* undef, !"", i32 0, i32 1, i32 1, i32 80, null}
!14 = !{i32 2, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!15 = !{!16}
!16 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!17 = !{[8 x i32] [i32 6, i32 4, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7]}
!18 = !{void ()* @ps_main, !"ps_main", !19, !4, null}
!19 = !{!20, !25, null}
!20 = !{!21, !23}
!21 = !{i32 0, !"SV_Position", i8 9, i8 3, !22, i8 4, i32 1, i8 4, i32 0, i8 0, null}
!22 = !{i32 0}
!23 = !{i32 1, !"TEXCOORDS", i8 9, i8 0, !22, i8 2, i32 1, i8 2, i32 1, i8 0, !24}
!24 = !{i32 3, i32 3}
!25 = !{!26}
!26 = !{i32 0, !"SV_Target", i8 9, i8 16, !22, i8 0, i32 1, i8 4, i32 0, i8 0, !27}
!27 = !{i32 3, i32 15}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 1}

