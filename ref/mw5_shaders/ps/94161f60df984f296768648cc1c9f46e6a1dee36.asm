;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float     z 
; TEXCOORDS                0   xyzw        1     NONE   float   xy  
; NORMAL                   0   xyz         2     NONE   float       
; CARD_DEPTH_OFFSET        0      w        2     NONE   float      w
; CARD_BARY_AND_TILE       1   xyzw        3     NONE   float     zw
; PACKED_TRI_DATA          0   xyzw        4     NONE    uint   x   
; SV_IsFrontFace           0   x           5    FFACE    uint       
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Depth                 0    N/A   oDepth    DEPTH   float    YES
;
; shader hash: 60c38435474923a40b7de6fa242c5334
;
; Pipeline Runtime Information: 
;
; Pixel Shader
; DepthOutput=1
; SampleFrequency=0
;
;
; Input signature:
;
; Name                 Index             InterpMode DynIdx
; -------------------- ----- ---------------------- ------
; SV_Position              0          noperspective       
; TEXCOORDS                0                 linear       
; NORMAL                   0                 linear       
; CARD_DEPTH_OFFSET        0                 linear       
; CARD_BARY_AND_TILE       1        nointerpolation       
; PACKED_TRI_DATA          0        nointerpolation       
; SV_IsFrontFace           0        nointerpolation       
;
; Output signature:
;
; Name                 Index             InterpMode DynIdx
; -------------------- ----- ---------------------- ------
; SV_Depth                 0                              
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
;   [256 x i8] (type annotation not present)
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
;                                   sampler      NA          NA      S0             s2     1
;                                   texture     f32          2d      T0      t0,space3unbounded
;                                   texture    byte         r/o      T1     t37,space1     1
;
;
; ViewId state:
;
; Number of inputs: 21, outputs: 0
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
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
%hostlayout.stable = type { [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %6 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %7 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %8 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %9 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %10 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %11 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %12 = add i32 %5, 60
  %13 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %12, i32 undef)  ; BufferLoad(srv,index,wot)
  %14 = extractvalue %dx.types.ResRet.i32 %13, 0
  %15 = add i32 %14, 0
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %16, i32 0)  ; GetDimensions(handle,mipLevel)
  %18 = extractvalue %dx.types.Dimensions %17, 0
  %19 = sitofp i32 %18 to float
  %20 = extractvalue %dx.types.Dimensions %17, 1
  %21 = sitofp i32 %20 to float
  %22 = fmul fast float %19, %9
  %23 = call float @dx.op.unary.f32(i32 83, float %22)  ; DerivCoarseX(value)
  %24 = call float @dx.op.unary.f32(i32 84, float %22)  ; DerivCoarseY(value)
  %25 = fmul fast float %21, %10
  %26 = call float @dx.op.unary.f32(i32 83, float %25)  ; DerivCoarseX(value)
  %27 = call float @dx.op.unary.f32(i32 84, float %25)  ; DerivCoarseY(value)
  %28 = fmul fast float %26, %26
  %29 = fmul fast float %27, %27
  %30 = fadd fast float %29, %28
  %31 = fmul fast float %26, %23
  %32 = fmul fast float %27, %24
  %33 = fadd fast float %32, %31
  %34 = fmul fast float %23, %23
  %35 = fmul fast float %24, %24
  %36 = fadd fast float %35, %34
  %37 = fmul fast float %30, %36
  %38 = fmul fast float %33, %33
  %39 = fsub fast float %37, %38
  %40 = bitcast float %39 to i32
  %41 = fadd fast float %30, %36
  %42 = bitcast float %41 to i32
  %43 = sub i32 8388608, %42
  %44 = add i32 %43, %40
  %45 = ashr i32 %44, 24
  %46 = sitofp i32 %45 to float
  %47 = add i32 %5, 24
  %48 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %47, i32 undef)  ; BufferLoad(srv,index,wot)
  %49 = extractvalue %dx.types.ResRet.i32 %48, 3
  %50 = bitcast i32 %49 to float
  %51 = fdiv fast float 1.000000e+00, %50
  %52 = fptosi float %46 to i32
  %53 = shl i32 %52, 23
  %54 = add i32 %53, 2130706432
  %55 = bitcast float %19 to i32
  %56 = bitcast float %21 to i32
  %57 = sub i32 %54, %55
  %58 = sub i32 %54, %56
  %59 = bitcast i32 %57 to float
  %60 = bitcast i32 %58 to float
  %61 = fadd fast float %6, 5.000000e-01
  %62 = fmul fast float %51, %61
  %63 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %12, i32 undef)  ; BufferLoad(srv,index,wot)
  %64 = extractvalue %dx.types.ResRet.i32 %63, 0
  %65 = add i32 %64, 0
  %66 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %65, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %67 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %66, %dx.types.Handle %2, float %9, float %10, float undef, float undef, i32 0, i32 0, i32 undef, float %46)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %68 = extractvalue %dx.types.ResRet.f32 %67, 3
  %69 = fsub fast float %9, %62
  %70 = call float @dx.op.unary.f32(i32 6, float %69)  ; FAbs(value)
  %71 = fmul fast float %51, 5.000000e-01
  %72 = fsub fast float %71, %59
  %73 = fcmp fast ogt float %70, %72
  %74 = fsub fast float -5.000000e-01, %7
  %75 = fadd fast float %74, %10
  %76 = call float @dx.op.unary.f32(i32 6, float %75)  ; FAbs(value)
  %77 = fsub fast float 5.000000e-01, %60
  %78 = fcmp fast ogt float %76, %77
  %79 = or i1 %73, %78
  %80 = select i1 %79, float 0.000000e+00, float %68
  %81 = fcmp fast olt float %80, 0x3FE0101020000000
  br i1 %81, label %82, label %83

; <label>:82                                      ; preds = %0
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %83

; <label>:83                                      ; preds = %82, %0
  %84 = add i32 %5, 68
  %85 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %84, i32 undef)  ; BufferLoad(srv,index,wot)
  %86 = extractvalue %dx.types.ResRet.i32 %85, 0
  %87 = add i32 %86, 0
  %88 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %87, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %89 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %88, %dx.types.Handle %2, float %9, float %10, float undef, float undef, i32 0, i32 0, i32 undef, float %46)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %90 = extractvalue %dx.types.ResRet.f32 %89, 0
  %91 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %47, i32 undef)  ; BufferLoad(srv,index,wot)
  %92 = extractvalue %dx.types.ResRet.i32 %91, 2
  %93 = bitcast i32 %92 to float
  %94 = fmul fast float %90, 2.000000e+00
  %95 = fadd fast float %8, 0x3FF0CCCCC0000000
  %96 = fsub fast float %95, %94
  %97 = fmul fast float %93, %96
  %98 = fadd fast float %97, 2.000000e+00
  %99 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %100 = extractvalue %dx.types.CBufRet.f32 %99, 2
  %101 = fcmp fast oeq float %100, 0.000000e+00
  br i1 %101, label %102, label %107

; <label>:102                                     ; preds = %83
  %103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %104 = extractvalue %dx.types.CBufRet.f32 %103, 2
  %105 = fmul fast float %104, %98
  %106 = fadd fast float %105, %11
  br label %124

; <label>:107                                     ; preds = %83
  %108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 235)  ; CBufferLoadLegacy(handle,regIndex)
  %109 = extractvalue %dx.types.CBufRet.f32 %108, 0
  %110 = extractvalue %dx.types.CBufRet.f32 %108, 2
  %111 = fcmp fast ogt float %11, 9.843750e-01
  %112 = select i1 %111, float 6.400000e+01, float 0x3FF0410420000000
  %113 = select i1 %111, float -6.300000e+01, float -0.000000e+00
  %114 = select i1 %111, float %109, float %110
  %115 = call float @dx.op.unary.f32(i32 7, float %11)  ; Saturate(value)
  %116 = fmul fast float %115, %112
  %117 = fadd fast float %116, %113
  %118 = call float @dx.op.binary.f32(i32 35, float %117, float 0x3E45798EE0000000)  ; FMax(a,b)
  %119 = fdiv fast float %114, %118
  %120 = fadd fast float %119, %98
  %121 = fdiv fast float %110, %120
  %122 = fmul fast float %121, 9.843750e-01
  %123 = call float @dx.op.unary.f32(i32 7, float %122)  ; Saturate(value)
  br label %124

; <label>:124                                     ; preds = %107, %102
  %125 = phi float [ %106, %102 ], [ %123, %107 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %125)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

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
!dx.viewIdState = !{!14}
!dx.entryPoints = !{!15}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !9, !12}
!5 = !{!6, !8}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!9 = !{!10, !11}
!10 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!11 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 256, null}
!12 = !{!13}
!13 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!14 = !{[2 x i32] [i32 21, i32 0]}
!15 = !{void ()* @ps_main, !"ps_main", !16, !4, !33}
!16 = !{!17, !31, null}
!17 = !{!18, !21, !23, !24, !26, !29, !30}
!18 = !{i32 0, !"SV_Position", i8 9, i8 3, !19, i8 4, i32 1, i8 4, i32 0, i8 0, !20}
!19 = !{i32 0}
!20 = !{i32 3, i32 4}
!21 = !{i32 1, !"TEXCOORDS", i8 9, i8 0, !19, i8 2, i32 1, i8 4, i32 1, i8 0, !22}
!22 = !{i32 3, i32 3}
!23 = !{i32 2, !"NORMAL", i8 9, i8 0, !19, i8 2, i32 1, i8 3, i32 2, i8 0, null}
!24 = !{i32 3, !"CARD_DEPTH_OFFSET", i8 9, i8 0, !19, i8 2, i32 1, i8 1, i32 2, i8 3, !25}
!25 = !{i32 3, i32 1}
!26 = !{i32 4, !"CARD_BARY_AND_TILE", i8 9, i8 0, !27, i8 1, i32 1, i8 4, i32 3, i8 0, !28}
!27 = !{i32 1}
!28 = !{i32 3, i32 12}
!29 = !{i32 5, !"PACKED_TRI_DATA", i8 5, i8 0, !19, i8 1, i32 1, i8 4, i32 4, i8 0, !25}
!30 = !{i32 6, !"SV_IsFrontFace", i8 5, i8 13, !19, i8 1, i32 1, i8 1, i32 5, i8 0, null}
!31 = !{!32}
!32 = !{i32 0, !"SV_Depth", i8 9, i8 17, !19, i8 0, i32 1, i8 1, i32 -1, i8 -1, !25}
!33 = !{i32 0, i64 16}

