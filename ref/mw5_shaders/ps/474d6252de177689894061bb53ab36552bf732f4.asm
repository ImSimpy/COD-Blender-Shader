;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy w
; COLOR                    0   xyzw        1     NONE   float      w
; TEXCOORD                 0   xy          2     NONE   float   xy  
; TEXCOORD                 3   xyzw        3     NONE   float      w
; TEXCOORD                 8   xyzw        4     NONE   float   xyzw
; COLOR                    3   xyz         5     NONE    uint   x   
; COLOR                    4      w        5     NONE    uint       
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: c3e22abe32e8631af076deab84fa808e
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
; COLOR                    0                 linear       
; TEXCOORD                 0                 linear       
; TEXCOORD                 3                 linear       
; TEXCOORD                 8                 linear       
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
;                                   cbuffer      NA          NA     CB1            cb2     1
;                                   sampler      NA          NA      S0             s7     4
;                                   sampler      NA          NA      S1             s2     1
;                                   texture     f32          2d      T0      t0,space3unbounded
;                                   texture     f32          2d      T1     t37,space2     1
;                                   texture    byte         r/o      T2             t0     1
;                                   texture    byte         r/o      T3             t1     1
;                                   texture     f32          2d      T4     t69,space2     1
;                                   texture     f32          2d      T5             t2     1
;                                   texture    byte         r/o      T6             t3     1
;
;
; ViewId state:
;
; Number of inputs: 24, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 7, 8, 9, 15, 16, 17, 18, 19, 20 }
;   output 1 depends on inputs: { 0, 1, 3, 7, 8, 9, 15, 16, 17, 18, 19, 20 }
;   output 2 depends on inputs: { 0, 1, 3, 7, 8, 9, 15, 18, 19, 20 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
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
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %11 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %12 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %13 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %14 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %15 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %16 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %17 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %18 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %19 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %20 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %21 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %24 = extractvalue %dx.types.CBufRet.f32 %23, 0
  %25 = fmul fast float %24, %19
  %26 = fmul fast float %24, %20
  %27 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %28 = extractvalue %dx.types.CBufRet.f32 %27, 2
  %29 = extractvalue %dx.types.CBufRet.f32 %27, 3
  %30 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2, i32 0)  ; GetDimensions(handle,mipLevel)
  %31 = extractvalue %dx.types.Dimensions %30, 0
  %32 = sitofp i32 %31 to float
  %33 = extractvalue %dx.types.Dimensions %30, 1
  %34 = sitofp i32 %33 to float
  %35 = fmul fast float %28, %25
  %36 = fmul fast float %29, %26
  %37 = fmul fast float %35, %32
  %38 = fmul fast float %36, %34
  %39 = extractvalue %dx.types.CBufRet.f32 %23, 1
  %40 = fsub fast float -0.000000e+00, %39
  %41 = fptoui float %40 to i32
  %42 = fptoui float %37 to i32
  %43 = fptoui float %38 to i32
  %44 = and i32 %41, 31
  %45 = lshr i32 %42, %44
  %46 = lshr i32 %43, %44
  %47 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 %41, i32 %45, i32 %46, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %48 = extractvalue %dx.types.ResRet.f32 %47, 0
  %49 = fcmp fast olt float %48, -1.000000e+00
  %50 = fcmp fast ogt float %48, -1.000000e+00
  %51 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %52 = extractvalue %dx.types.CBufRet.f32 %51, 1
  %53 = select i1 %50, float %52, float 1.000000e+00
  %54 = fadd fast float %48, 1.000000e+00
  %55 = fmul fast float %53, %54
  %56 = call float @dx.op.unary.f32(i32 6, float %55)  ; FAbs(value)
  %57 = extractvalue %dx.types.CBufRet.f32 %51, 3
  %58 = fcmp fast oge float %56, %57
  %59 = select i1 %58, float 0x4197782600000000, float %56
  %60 = fcmp fast ogt float %21, %59
  br i1 %60, label %61, label %62

; <label>:61                                      ; preds = %0
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %62

; <label>:62                                      ; preds = %61, %0
  br i1 %49, label %63, label %64

; <label>:63                                      ; preds = %62
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %64

; <label>:64                                      ; preds = %63, %62
  %65 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %66 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %67 = extractvalue %dx.types.CBufRet.i32 %66, 3
  %68 = and i32 %67, 3
  %69 = icmp ne i32 %68, 0
  %70 = and i32 %67, 4
  %71 = icmp ne i32 %70, 0
  %72 = and i1 %69, %71
  br i1 %72, label %73, label %84

; <label>:73                                      ; preds = %64
  %74 = extractvalue %dx.types.CBufRet.f32 %65, 3
  %75 = fmul fast float %74, %26
  %76 = extractvalue %dx.types.CBufRet.f32 %65, 2
  %77 = fmul fast float %76, %25
  %78 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %7, float %77, float %75, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %79 = extractvalue %dx.types.ResRet.f32 %78, 0
  %80 = fsub fast float 1.000000e+00, %79
  %81 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %82 = extractvalue %dx.types.CBufRet.f32 %81, 0
  %83 = fcmp fast olt float %80, %82
  br label %87

; <label>:84                                      ; preds = %64
  %85 = icmp eq i32 %70, 0
  %86 = and i1 %69, %85
  br label %87

; <label>:87                                      ; preds = %84, %73
  %88 = phi i1 [ %83, %73 ], [ %86, %84 ]
  %89 = shl i32 %10, 3
  %90 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %89, i32 undef)  ; BufferLoad(srv,index,wot)
  %91 = extractvalue %dx.types.ResRet.f32 %90, 0
  %92 = or i32 %89, 4
  %93 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %92, i32 undef)  ; BufferLoad(srv,index,wot)
  %94 = extractvalue %dx.types.ResRet.f32 %93, 0
  %95 = select i1 %88, float %94, float %91
  %96 = fmul fast float %95, %18
  %97 = mul i32 %10, 208
  %98 = add i32 %97, 188
  %99 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %98, i32 undef)  ; BufferLoad(srv,index,wot)
  %100 = extractvalue %dx.types.ResRet.i32 %99, 0
  %101 = and i32 %67, 114688
  %102 = and i32 %67, 8
  %103 = icmp ne i32 %102, 0
  %104 = or i1 %88, %103
  %105 = select i1 %104, i32 %101, i32 16384
  %106 = and i32 %105, %100
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %109

; <label>:108                                     ; preds = %87
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %109

; <label>:109                                     ; preds = %108, %87
  %110 = and i32 %100, 512
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %136, label %112

; <label>:112                                     ; preds = %109
  %113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %114 = extractvalue %dx.types.CBufRet.f32 %113, 2
  %115 = extractvalue %dx.types.CBufRet.f32 %113, 3
  %116 = fmul fast float %114, %25
  %117 = fmul fast float %115, %26
  %118 = extractvalue %dx.types.CBufRet.f32 %113, 0
  %119 = extractvalue %dx.types.CBufRet.f32 %113, 1
  %120 = fdiv fast float %118, %119
  %121 = fcmp fast ogt float %120, 0x3FFC71C720000000
  br i1 %121, label %122, label %128

; <label>:122                                     ; preds = %112
  %123 = fdiv fast float 0x3FFC71C720000000, %120
  %124 = fmul fast float %123, %117
  %125 = fsub fast float 1.000000e+00, %123
  %126 = fmul fast float %125, 5.000000e-01
  %127 = fadd fast float %126, %124
  br label %136

; <label>:128                                     ; preds = %112
  %129 = fcmp fast olt float %120, 0x3FFC71C720000000
  br i1 %129, label %130, label %136

; <label>:130                                     ; preds = %128
  %131 = fmul fast float %116, 5.625000e-01
  %132 = fmul fast float %131, %120
  %133 = fmul fast float %120, 2.812500e-01
  %134 = fsub fast float 5.000000e-01, %133
  %135 = fadd fast float %134, %132
  br label %136

; <label>:136                                     ; preds = %130, %128, %122, %109
  %137 = phi float [ %16, %109 ], [ %116, %122 ], [ %135, %130 ], [ %116, %128 ]
  %138 = phi float [ %17, %109 ], [ %127, %122 ], [ %117, %130 ], [ %117, %128 ]
  %139 = fcmp fast ogt float %96, 0.000000e+00
  br i1 %139, label %141, label %140

; <label>:140                                     ; preds = %136
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %141

; <label>:141                                     ; preds = %140, %136
  %142 = call float @dx.op.unary.f32(i32 7, float %96)  ; Saturate(value)
  %143 = fmul fast float %15, %11
  %144 = fmul fast float %15, %12
  %145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %146 = extractvalue %dx.types.CBufRet.f32 %145, 2
  %147 = fptosi float %21 to i32
  %148 = sitofp i32 %147 to float
  %149 = fadd fast float %146, %148
  %150 = fmul fast float %149, 0x3FE3C6EF40000000
  %151 = frem fast float %25, 2.560000e+02
  %152 = frem fast float %26, 2.560000e+02
  %153 = fptoui float %151 to i32
  %154 = fptoui float %152 to i32
  %155 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %153, i32 %154, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %156 = extractvalue %dx.types.ResRet.f32 %155, 0
  %157 = fadd fast float %156, %150
  %158 = call float @dx.op.unary.f32(i32 22, float %157)  ; Frc(value)
  %159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %160 = extractvalue %dx.types.ResRet.i32 %159, 0
  %161 = add i32 %160, 0
  %162 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %161, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %163 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %162, %dx.types.Handle %22, float %137, float %138, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %164 = extractvalue %dx.types.ResRet.f32 %163, 0
  %165 = extractvalue %dx.types.ResRet.f32 %163, 1
  %166 = extractvalue %dx.types.ResRet.f32 %163, 2
  %167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 44, i32 undef)  ; BufferLoad(srv,index,wot)
  %168 = extractvalue %dx.types.ResRet.i32 %167, 0
  %169 = shl i32 %168, 4
  %170 = and i32 %169, 32752
  %171 = call float @dx.op.legacyF16ToF32(i32 131, i32 %170)  ; LegacyF16ToF32(value)
  %172 = lshr i32 %168, 7
  %173 = and i32 %172, 32752
  %174 = call float @dx.op.legacyF16ToF32(i32 131, i32 %173)  ; LegacyF16ToF32(value)
  %175 = lshr i32 %168, 22
  %176 = shl nuw nsw i32 %175, 5
  %177 = call float @dx.op.legacyF16ToF32(i32 131, i32 %176)  ; LegacyF16ToF32(value)
  %178 = fmul fast float %171, %164
  %179 = fmul fast float %174, %165
  %180 = fmul fast float %177, %166
  %181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %182 = extractvalue %dx.types.CBufRet.f32 %181, 0
  %183 = fmul fast float %178, %182
  %184 = fmul fast float %179, %182
  %185 = fmul fast float %180, %182
  %186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %187 = extractvalue %dx.types.ResRet.i32 %186, 0
  %188 = lshr i32 %187, 22
  %189 = shl nuw nsw i32 %188, 5
  %190 = call float @dx.op.legacyF16ToF32(i32 131, i32 %189)  ; LegacyF16ToF32(value)
  %191 = fmul fast float %190, %183
  %192 = select i1 %88, float %191, float %183
  %193 = fmul fast float %14, %11
  %194 = fmul fast float %193, %95
  %195 = fmul fast float %194, %192
  %196 = fmul fast float %14, %12
  %197 = fmul fast float %196, %95
  %198 = fmul fast float %197, %184
  %199 = fmul fast float %14, %13
  %200 = fmul fast float %199, %95
  %201 = fmul fast float %200, %185
  %202 = call float @dx.op.dot3.f32(i32 55, float %195, float %198, float %201, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %203 = select i1 %88, float 0.000000e+00, float %195
  %204 = select i1 %88, float %202, float %198
  %205 = fmul fast float %143, %192
  %206 = fmul fast float %144, %184
  %207 = fadd fast float %203, %205
  %208 = fadd fast float %204, %206
  %209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %210 = extractvalue %dx.types.CBufRet.f32 %209, 0
  br i1 %88, label %211, label %215

; <label>:211                                     ; preds = %141
  %212 = fadd fast float %207, %208
  %213 = fmul fast float %212, %142
  %214 = fmul fast float %213, %210
  br label %231

; <label>:215                                     ; preds = %141
  %216 = fmul fast float %15, %13
  %217 = fmul fast float %216, %185
  %218 = select i1 %88, float 0.000000e+00, float %201
  %219 = fmul fast float %207, %142
  %220 = fmul fast float %208, %142
  %221 = fadd fast float %218, %217
  %222 = fmul fast float %221, %142
  %223 = fmul fast float %219, %210
  %224 = fmul fast float %220, %210
  %225 = fmul fast float %222, %210
  %226 = call float @dx.op.binary.f32(i32 35, float %224, float %225)  ; FMax(a,b)
  %227 = call float @dx.op.binary.f32(i32 35, float %223, float %226)  ; FMax(a,b)
  %228 = call float @dx.op.binary.f32(i32 35, float %227, float 0.000000e+00)  ; FMax(a,b)
  %229 = fcmp fast ugt float %228, 0x3F10000000000000
  br i1 %229, label %231, label %230

; <label>:230                                     ; preds = %215
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %231

; <label>:231                                     ; preds = %230, %215, %211
  %232 = phi float [ %214, %211 ], [ %223, %230 ], [ %223, %215 ]
  %233 = phi float [ 0.000000e+00, %211 ], [ %224, %230 ], [ %224, %215 ]
  %234 = phi float [ 0.000000e+00, %211 ], [ %225, %230 ], [ %225, %215 ]
  %235 = fadd fast float %158, 0x3FE3C6EF40000000
  %236 = call float @dx.op.unary.f32(i32 22, float %235)  ; Frc(value)
  %237 = call float @dx.op.unary.f32(i32 23, float %232)  ; Log(value)
  %238 = fadd fast float %237, -7.000000e+00
  %239 = call float @dx.op.unary.f32(i32 21, float %238)  ; Exp(value)
  %240 = fmul fast float %236, 2.000000e+00
  %241 = fadd fast float %240, -1.000000e+00
  %242 = fmul fast float %239, %241
  %243 = fcmp fast ogt float %232, 0.000000e+00
  %244 = select i1 %243, float %242, float 0.000000e+00
  %245 = fadd fast float %244, %232
  %246 = fadd fast float %158, 0x3FF3C6EF40000000
  %247 = call float @dx.op.unary.f32(i32 22, float %246)  ; Frc(value)
  %248 = call float @dx.op.unary.f32(i32 23, float %233)  ; Log(value)
  %249 = fadd fast float %248, -7.000000e+00
  %250 = call float @dx.op.unary.f32(i32 21, float %249)  ; Exp(value)
  %251 = fmul fast float %247, 2.000000e+00
  %252 = fadd fast float %251, -1.000000e+00
  %253 = fmul fast float %250, %252
  %254 = fcmp fast ogt float %233, 0.000000e+00
  %255 = select i1 %254, float %253, float 0.000000e+00
  %256 = fadd fast float %255, %233
  %257 = fadd fast float %158, 0x3FFDAA66E0000000
  %258 = call float @dx.op.unary.f32(i32 22, float %257)  ; Frc(value)
  %259 = call float @dx.op.unary.f32(i32 23, float %234)  ; Log(value)
  %260 = fadd fast float %259, -6.000000e+00
  %261 = call float @dx.op.unary.f32(i32 21, float %260)  ; Exp(value)
  %262 = fmul fast float %258, 2.000000e+00
  %263 = fadd fast float %262, -1.000000e+00
  %264 = fmul fast float %261, %263
  %265 = fcmp fast ogt float %234, 0.000000e+00
  %266 = select i1 %265, float %264, float 0.000000e+00
  %267 = fadd fast float %266, %234
  %268 = select i1 %88, float %233, float %256
  %269 = select i1 %88, float %234, float %267
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %270 = call float @dx.op.binary.f32(i32 36, float %245, float 3.225500e+04)  ; FMin(a,b)
  %271 = call float @dx.op.binary.f32(i32 36, float %268, float 3.225500e+04)  ; FMin(a,b)
  %272 = call float @dx.op.binary.f32(i32 36, float %269, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %270)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %271)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %272)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #2

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
!4 = !{!5, null, !14, !17}
!5 = !{!6, !8, !9, !10, !11, !12, !13}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 3, i32 1, i32 11, i32 0, null}
!14 = !{!15, !16}
!15 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!16 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!17 = !{!18, !19}
!18 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!19 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!20 = !{[26 x i32] [i32 24, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 3, i32 3, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0]}
!21 = !{void ()* @ps_main, !"ps_main", !22, !4, !43}
!22 = !{!23, !41, null}
!23 = !{!24, !27, !29, !31, !33, !36, !38, !40}
!24 = !{i32 0, !"SV_Position", i8 9, i8 3, !25, i8 4, i32 1, i8 4, i32 0, i8 0, !26}
!25 = !{i32 0}
!26 = !{i32 3, i32 11}
!27 = !{i32 1, !"COLOR", i8 9, i8 0, !25, i8 2, i32 1, i8 4, i32 1, i8 0, !28}
!28 = !{i32 3, i32 8}
!29 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !25, i8 2, i32 1, i8 2, i32 2, i8 0, !30}
!30 = !{i32 3, i32 3}
!31 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !32, i8 2, i32 1, i8 4, i32 3, i8 0, !28}
!32 = !{i32 3}
!33 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !34, i8 2, i32 1, i8 4, i32 4, i8 0, !35}
!34 = !{i32 8}
!35 = !{i32 3, i32 15}
!36 = !{i32 5, !"COLOR", i8 5, i8 0, !32, i8 1, i32 1, i8 3, i32 5, i8 0, !37}
!37 = !{i32 3, i32 1}
!38 = !{i32 6, !"COLOR", i8 5, i8 0, !39, i8 1, i32 1, i8 1, i32 5, i8 3, null}
!39 = !{i32 4}
!40 = !{i32 7, !"SV_SampleIndex", i8 5, i8 12, !25, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!41 = !{!42}
!42 = !{i32 0, !"SV_Target", i8 9, i8 16, !25, i8 0, i32 1, i8 4, i32 0, i8 0, !35}
!43 = !{i32 0, i64 24}

