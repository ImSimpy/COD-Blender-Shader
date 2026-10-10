;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float       
; INTERPOLANT_POSITION     0   xyzw        1     NONE   float   xy w
; COLOR                    0   xyzw        2     NONE   float      w
; TEXCOORD                 0   xyzw        3     NONE   float     zw
; TEXCOORD                 3   xyz         4     NONE   float       
; TEXCOORD                 4   xyzw        5     NONE   float   xy  
; COLOR                    3   xyz         6     NONE    uint   x   
; COLOR                    4      w        6     NONE    uint       
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 722324691401a2a83ed2667a4620054b
;
; Pipeline Runtime Information: 
;
; Pixel Shader
; DepthOutput=0
; SampleFrequency=1
;
;
; Input signature:
;
; Name                 Index             InterpMode DynIdx
; -------------------- ----- ---------------------- ------
; SV_Position              0          noperspective       
; INTERPOLANT_POSITION     0                 linear       
; COLOR                    0                 linear       
; TEXCOORD                 0                 linear       
; TEXCOORD                 3                 linear       
; TEXCOORD                 4                 linear       
; COLOR                    3        nointerpolation       
; COLOR                    4        nointerpolation       
; SV_SampleIndex           0        nointerpolation       
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
;   [192 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb3     1
;                                   cbuffer      NA          NA     CB1            cb2     1
;                                   sampler      NA          NA      S0             s7     4
;                                   texture     f32          2d      T0      t0,space3unbounded
;                                   texture    byte         r/o      T1             t0     1
;                                   texture     f32          2d      T2             t1     1
;                                   texture    byte         r/o      T3             t2     1
;
;
; ViewId state:
;
; Number of inputs: 28, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
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
%hostlayout.stable = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %7 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %8 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %9 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %10 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %11 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %12 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %13 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %14 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = fadd fast float %12, 1.000000e+00
  %17 = fsub fast float 1.000000e+00, %13
  %18 = fmul fast float %16, 5.000000e-01
  %19 = fmul fast float %17, 5.000000e-01
  %20 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %21 = extractvalue %dx.types.CBufRet.f32 %20, 0
  %22 = extractvalue %dx.types.CBufRet.f32 %20, 1
  %23 = fmul fast float %18, %21
  %24 = fmul fast float %19, %22
  %25 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %26 = extractvalue %dx.types.CBufRet.f32 %25, 0
  %27 = fmul fast float %23, %26
  %28 = fmul fast float %24, %26
  %29 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %30 = extractvalue %dx.types.CBufRet.f32 %29, 2
  %31 = extractvalue %dx.types.CBufRet.f32 %29, 3
  %32 = fmul fast float %27, 2.000000e+00
  %33 = fmul fast float %32, %30
  %34 = fmul fast float %28, 2.000000e+00
  %35 = fmul fast float %34, %31
  %36 = fsub fast float 1.000000e+00, %33
  %37 = fsub fast float 1.000000e+00, %35
  %38 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %39 = extractvalue %dx.types.CBufRet.f32 %38, 0
  %40 = extractvalue %dx.types.CBufRet.f32 %38, 1
  %41 = fmul fast float %36, %39
  %42 = fmul fast float %36, %40
  %43 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %44 = extractvalue %dx.types.CBufRet.f32 %43, 0
  %45 = extractvalue %dx.types.CBufRet.f32 %43, 1
  %46 = fmul fast float %37, %44
  %47 = fmul fast float %37, %45
  %48 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %49 = extractvalue %dx.types.CBufRet.f32 %48, 0
  %50 = extractvalue %dx.types.CBufRet.f32 %48, 1
  %51 = fadd fast float %46, %49
  %52 = fadd fast float %51, %41
  %53 = fadd fast float %47, %50
  %54 = fadd fast float %53, %42
  %55 = fmul fast float %52, %14
  %56 = fmul fast float %54, %14
  %57 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2, i32 0)  ; GetDimensions(handle,mipLevel)
  %58 = extractvalue %dx.types.Dimensions %57, 0
  %59 = sitofp i32 %58 to float
  %60 = extractvalue %dx.types.Dimensions %57, 1
  %61 = sitofp i32 %60 to float
  %62 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %63 = extractvalue %dx.types.CBufRet.f32 %62, 2
  %64 = extractvalue %dx.types.CBufRet.f32 %62, 3
  %65 = fmul fast float %63, %27
  %66 = fmul fast float %64, %28
  %67 = fmul fast float %65, %59
  %68 = fmul fast float %66, %61
  %69 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %70 = extractvalue %dx.types.CBufRet.f32 %69, 1
  %71 = fsub fast float -0.000000e+00, %70
  %72 = fptoui float %71 to i32
  %73 = fptoui float %67 to i32
  %74 = fptoui float %68 to i32
  %75 = and i32 %72, 31
  %76 = lshr i32 %73, %75
  %77 = lshr i32 %74, %75
  %78 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 %72, i32 %76, i32 %77, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %79 = extractvalue %dx.types.ResRet.f32 %78, 0
  %80 = fcmp fast olt float %79, -1.000000e+00
  %81 = fcmp fast ogt float %79, -1.000000e+00
  %82 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %83 = extractvalue %dx.types.CBufRet.f32 %82, 1
  %84 = select i1 %81, float %83, float 1.000000e+00
  %85 = fadd fast float %79, 1.000000e+00
  %86 = fmul fast float %84, %85
  %87 = call float @dx.op.unary.f32(i32 6, float %86)  ; FAbs(value)
  %88 = extractvalue %dx.types.CBufRet.f32 %82, 3
  %89 = fcmp fast oge float %87, %88
  %90 = select i1 %89, float 0x4197782600000000, float %87
  %91 = fcmp fast ogt float %14, %90
  br i1 %91, label %92, label %93

; <label>:92                                      ; preds = %0
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %93

; <label>:93                                      ; preds = %92, %0
  br i1 %80, label %94, label %95

; <label>:94                                      ; preds = %93
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %95

; <label>:95                                      ; preds = %94, %93
  %96 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %97 = extractvalue %dx.types.CBufRet.f32 %96, 2
  %98 = extractvalue %dx.types.CBufRet.f32 %96, 3
  %99 = fmul fast float %97, %27
  %100 = fmul fast float %98, %28
  %101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 228)  ; CBufferLoadLegacy(handle,regIndex)
  %102 = extractvalue %dx.types.CBufRet.f32 %101, 2
  %103 = extractvalue %dx.types.CBufRet.f32 %101, 0
  %104 = call float @dx.op.binary.f32(i32 35, float %99, float %103)  ; FMax(a,b)
  %105 = call float @dx.op.binary.f32(i32 36, float %104, float %102)  ; FMin(a,b)
  %106 = call float @dx.op.binary.f32(i32 36, float %99, float %103)  ; FMin(a,b)
  %107 = call float @dx.op.binary.f32(i32 35, float %106, float %105)  ; FMax(a,b)
  %108 = fcmp fast oeq float %99, %107
  %109 = extractvalue %dx.types.CBufRet.f32 %101, 3
  %110 = extractvalue %dx.types.CBufRet.f32 %101, 1
  %111 = call float @dx.op.binary.f32(i32 35, float %100, float %110)  ; FMax(a,b)
  %112 = call float @dx.op.binary.f32(i32 36, float %111, float %109)  ; FMin(a,b)
  %113 = call float @dx.op.binary.f32(i32 36, float %100, float %110)  ; FMin(a,b)
  %114 = call float @dx.op.binary.f32(i32 35, float %113, float %112)  ; FMax(a,b)
  %115 = fcmp fast oeq float %100, %114
  %116 = and i1 %108, %115
  br i1 %116, label %117, label %118

; <label>:117                                     ; preds = %95
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %118

; <label>:118                                     ; preds = %117, %95
  %119 = mul i32 %6, 208
  %120 = add i32 %119, 188
  %121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %120, i32 undef)  ; BufferLoad(srv,index,wot)
  %122 = extractvalue %dx.types.ResRet.i32 %121, 0
  %123 = and i32 %122, 16
  %124 = icmp ne i32 %123, 0
  %125 = select i1 %124, float 1.000000e+00, float %11
  %126 = icmp eq i32 %123, 0
  br i1 %126, label %146, label %127, !dx.controlflow.hints !41

; <label>:127                                     ; preds = %118
  %128 = add i32 %119, 64
  %129 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %128, i32 undef)  ; BufferLoad(srv,index,wot)
  %130 = extractvalue %dx.types.ResRet.f32 %129, 0
  %131 = fadd fast float %130, 1.000000e+00
  %132 = fmul fast float %131, %11
  %133 = fsub fast float %132, %130
  %134 = fsub fast float %131, %133
  %135 = call float @dx.op.unary.f32(i32 7, float %134)  ; Saturate(value)
  %136 = fsub fast float 1.000000e+00, %132
  %137 = call float @dx.op.unary.f32(i32 7, float %136)  ; Saturate(value)
  %138 = fsub fast float %135, %137
  %139 = fsub fast float %125, %137
  %140 = fdiv fast float %139, %138
  %141 = call float @dx.op.unary.f32(i32 7, float %140)  ; Saturate(value)
  %142 = fmul fast float %141, 2.000000e+00
  %143 = fsub fast float 3.000000e+00, %142
  %144 = fmul fast float %141, %141
  %145 = fmul fast float %144, %143
  br label %146

; <label>:146                                     ; preds = %127, %118
  %147 = phi float [ %145, %127 ], [ %125, %118 ]
  %148 = and i32 %122, 1024
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %208, label %150, !dx.controlflow.hints !42

; <label>:150                                     ; preds = %146
  %151 = add i32 %119, 48
  %152 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %151, i32 undef)  ; BufferLoad(srv,index,wot)
  %153 = extractvalue %dx.types.ResRet.f32 %152, 0
  %154 = extractvalue %dx.types.ResRet.f32 %152, 1
  %155 = fadd fast float %9, -5.000000e-01
  %156 = fmul fast float %155, 2.000000e+00
  %157 = fmul fast float %7, %156
  %158 = fmul fast float %8, %156
  %159 = fmul fast float %157, %154
  %160 = fmul fast float %158, %154
  %161 = call float @dx.op.dot2.f32(i32 54, float %7, float %8, float %7, float %8)  ; Dot2(ax,ay,bx,by)
  %162 = call float @dx.op.unary.f32(i32 25, float %161)  ; Rsqrt(value)
  %163 = fmul fast float %159, %162
  %164 = fmul fast float %160, %162
  %165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %166 = extractvalue %dx.types.CBufRet.f32 %165, 0
  %167 = extractvalue %dx.types.CBufRet.f32 %165, 1
  %168 = fsub fast float %55, %159
  %169 = fadd fast float %168, %166
  %170 = fadd fast float %169, %163
  %171 = fsub fast float %56, %160
  %172 = fadd fast float %171, %167
  %173 = fadd fast float %172, %164
  %174 = fmul fast float %170, %153
  %175 = fmul fast float %173, %153
  %176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %177 = extractvalue %dx.types.ResRet.i32 %176, 0
  %178 = extractvalue %dx.types.ResRet.i32 %176, 1
  %179 = extractvalue %dx.types.ResRet.i32 %176, 2
  %180 = bitcast i32 %177 to float
  %181 = bitcast i32 %178 to float
  %182 = bitcast i32 %179 to float
  %183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %184 = extractvalue %dx.types.CBufRet.f32 %183, 3
  %185 = fmul fast float %182, %184
  %186 = call float @dx.op.unary.f32(i32 12, float %185)  ; Cos(value)
  %187 = call float @dx.op.unary.f32(i32 13, float %185)  ; Sin(value)
  %188 = fadd fast float %175, -5.000000e-01
  %189 = fadd fast float %174, -5.000000e-01
  %190 = fmul fast float %188, %186
  %191 = fmul fast float %187, %189
  %192 = fmul fast float %187, %188
  %193 = fmul fast float %189, %186
  %194 = fmul fast float %184, %180
  %195 = fmul fast float %184, %181
  %196 = fsub fast float 5.000000e-01, %191
  %197 = fadd fast float %196, %190
  %198 = fadd fast float %197, %194
  %199 = fadd fast float %193, 5.000000e-01
  %200 = fadd fast float %199, %192
  %201 = fadd fast float %200, %195
  %202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %203 = extractvalue %dx.types.ResRet.i32 %202, 0
  %204 = add i32 %203, 0
  %205 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %204, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %206 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %205, %dx.types.Handle %15, float %198, float %201, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %207 = extractvalue %dx.types.ResRet.f32 %206, 0
  br label %215

; <label>:208                                     ; preds = %146
  %209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %210 = extractvalue %dx.types.ResRet.i32 %209, 0
  %211 = add i32 %210, 0
  %212 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %211, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %213 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %212, %dx.types.Handle %15, float %9, float %10, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %214 = extractvalue %dx.types.ResRet.f32 %213, 0
  br label %215

; <label>:215                                     ; preds = %208, %150
  %216 = phi float [ %207, %150 ], [ %214, %208 ]
  %217 = fmul fast float %216, %147
  %218 = fcmp fast ogt float %217, 0.000000e+00
  br i1 %218, label %220, label %219

; <label>:219                                     ; preds = %215
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %220

; <label>:220                                     ; preds = %219, %215
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float -0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float -0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float -0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float -0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.loadInput.i32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind
declare void @dx.op.discard(i32, i1) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.viewIdState = !{!16}
!dx.entryPoints = !{!17}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !11, !14}
!5 = !{!6, !8, !9, !10}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!11 = !{!12, !13}
!12 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!13 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 192, null}
!14 = !{!15}
!15 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!16 = !{[30 x i32] [i32 28, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]}
!17 = !{void ()* @ps_main, !"ps_main", !18, !4, !40}
!18 = !{!19, !37, null}
!19 = !{!20, !22, !24, !26, !28, !30, !33, !35, !36}
!20 = !{i32 0, !"SV_Position", i8 9, i8 3, !21, i8 4, i32 1, i8 4, i32 0, i8 0, null}
!21 = !{i32 0}
!22 = !{i32 1, !"INTERPOLANT_POSITION", i8 9, i8 0, !21, i8 2, i32 1, i8 4, i32 1, i8 0, !23}
!23 = !{i32 3, i32 11}
!24 = !{i32 2, !"COLOR", i8 9, i8 0, !21, i8 2, i32 1, i8 4, i32 2, i8 0, !25}
!25 = !{i32 3, i32 8}
!26 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !21, i8 2, i32 1, i8 4, i32 3, i8 0, !27}
!27 = !{i32 3, i32 12}
!28 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !29, i8 2, i32 1, i8 3, i32 4, i8 0, null}
!29 = !{i32 3}
!30 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !31, i8 2, i32 1, i8 4, i32 5, i8 0, !32}
!31 = !{i32 4}
!32 = !{i32 3, i32 3}
!33 = !{i32 6, !"COLOR", i8 5, i8 0, !29, i8 1, i32 1, i8 3, i32 6, i8 0, !34}
!34 = !{i32 3, i32 1}
!35 = !{i32 7, !"COLOR", i8 5, i8 0, !31, i8 1, i32 1, i8 1, i32 6, i8 3, null}
!36 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !21, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!37 = !{!38}
!38 = !{i32 0, !"SV_Target", i8 9, i8 16, !21, i8 0, i32 1, i8 4, i32 0, i8 0, !39}
!39 = !{i32 3, i32 15}
!40 = !{i32 0, i64 24}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 1}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 1}

