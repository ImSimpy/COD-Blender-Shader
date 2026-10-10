;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy w
; COLOR                    0   xyzw        1     NONE   float   x   
; TEXCOORDS                0   xyzw        2     NONE   float   xy  
; ENTITY_IDS               0   xy          3     NONE    uint   x   
; PACKED_TRI_DATA          0   xyzw        4     NONE    uint   x   
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
; SV_Target                1   xyzw        1   TARGET   float   xyzw
;
; shader hash: 58f380ba0efd721e2003ae2f8428cd47
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
; TEXCOORDS                0                 linear       
; ENTITY_IDS               0        nointerpolation       
; PACKED_TRI_DATA          0        nointerpolation       
; SV_SampleIndex           0        nointerpolation       
;
; Output signature:
;
; Name                 Index             InterpMode DynIdx
; -------------------- ----- ---------------------- ------
; SV_Target                0                              
; SV_Target                1                              
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
;                                   texture    byte         r/o      T2     t37,space1     1
;                                   texture    byte         r/o      T3     t22,space1     1
;                                   texture     f32          2d      T4     t69,space2     1
;
;
; ViewId state:
;
; Number of inputs: 20, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 4, 8, 9, 12, 16 }
;   output 1 depends on inputs: { 0, 1, 3, 4, 8, 9, 12, 16 }
;   output 2 depends on inputs: { 0, 1, 3, 4, 8, 9, 12, 16 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call i32 @dx.op.loadInput.i32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %9 = call i32 @dx.op.loadInput.i32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %10 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %11 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %12 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %13 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %14 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %15 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %18 = extractvalue %dx.types.CBufRet.f32 %17, 0
  %19 = fmul fast float %18, %13
  %20 = fmul fast float %18, %14
  %21 = shl i32 %9, 5
  %22 = add i32 %21, 4194304
  %23 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %22, i32 undef)  ; BufferLoad(srv,index,wot)
  %24 = extractvalue %dx.types.ResRet.i32 %23, 0
  %25 = extractvalue %dx.types.ResRet.i32 %23, 1
  %26 = extractvalue %dx.types.ResRet.i32 %23, 2
  %27 = extractvalue %dx.types.ResRet.i32 %23, 3
  %28 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %29 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %30 = extractvalue %dx.types.CBufRet.i32 %29, 3
  %31 = and i32 %30, 3
  %32 = icmp ne i32 %31, 0
  %33 = and i32 %30, 4
  %34 = icmp ne i32 %33, 0
  %35 = and i1 %32, %34
  br i1 %35, label %36, label %47

; <label>:36                                      ; preds = %0
  %37 = extractvalue %dx.types.CBufRet.f32 %28, 3
  %38 = fmul fast float %37, %20
  %39 = extractvalue %dx.types.CBufRet.f32 %28, 2
  %40 = fmul fast float %39, %19
  %41 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %5, float %40, float %38, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %42 = extractvalue %dx.types.ResRet.f32 %41, 0
  %43 = fsub fast float 1.000000e+00, %42
  %44 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %45 = extractvalue %dx.types.CBufRet.f32 %44, 0
  %46 = fcmp fast olt float %43, %45
  br label %55

; <label>:47                                      ; preds = %0
  %48 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %49 = extractvalue %dx.types.CBufRet.i32 %48, 3
  %50 = and i32 %49, 3
  %51 = icmp ne i32 %50, 0
  %52 = and i32 %49, 4
  %53 = icmp eq i32 %52, 0
  %54 = and i1 %51, %53
  br label %55

; <label>:55                                      ; preds = %47, %36
  %56 = phi i1 [ %46, %36 ], [ %54, %47 ]
  %57 = and i32 %24, 65535
  %58 = call float @dx.op.legacyF16ToF32(i32 131, i32 %57)  ; LegacyF16ToF32(value)
  %59 = lshr i32 %24, 16
  %60 = call float @dx.op.legacyF16ToF32(i32 131, i32 %59)  ; LegacyF16ToF32(value)
  %61 = and i32 %25, 65535
  %62 = call float @dx.op.legacyF16ToF32(i32 131, i32 %61)  ; LegacyF16ToF32(value)
  %63 = lshr i32 %25, 16
  %64 = call float @dx.op.legacyF16ToF32(i32 131, i32 %63)  ; LegacyF16ToF32(value)
  %65 = fmul fast float %64, %12
  %66 = and i32 %27, 65535
  %67 = call float @dx.op.legacyF16ToF32(i32 131, i32 %66)  ; LegacyF16ToF32(value)
  %68 = shl i32 %26, 4
  %69 = and i32 %68, 32752
  %70 = call float @dx.op.legacyF16ToF32(i32 131, i32 %69)  ; LegacyF16ToF32(value)
  %71 = lshr i32 %26, 7
  %72 = and i32 %71, 32752
  %73 = call float @dx.op.legacyF16ToF32(i32 131, i32 %72)  ; LegacyF16ToF32(value)
  %74 = lshr i32 %26, 22
  %75 = shl nuw nsw i32 %74, 5
  %76 = call float @dx.op.legacyF16ToF32(i32 131, i32 %75)  ; LegacyF16ToF32(value)
  %77 = fmul fast float %70, %67
  %78 = fcmp fast ogt float %65, 0.000000e+00
  br i1 %78, label %80, label %79

; <label>:79                                      ; preds = %55
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %80

; <label>:80                                      ; preds = %79, %55
  %81 = call float @dx.op.unary.f32(i32 7, float %65)  ; Saturate(value)
  %82 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %83 = extractvalue %dx.types.CBufRet.f32 %82, 2
  %84 = fptosi float %15 to i32
  %85 = sitofp i32 %84 to float
  %86 = fadd fast float %83, %85
  %87 = fmul fast float %86, 0x3FE3C6EF40000000
  %88 = frem fast float %19, 2.560000e+02
  %89 = frem fast float %20, 2.560000e+02
  %90 = fptoui float %88 to i32
  %91 = fptoui float %89 to i32
  %92 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %90, i32 %91, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %93 = extractvalue %dx.types.ResRet.f32 %92, 0
  %94 = fadd fast float %93, %87
  %95 = call float @dx.op.unary.f32(i32 22, float %94)  ; Frc(value)
  %96 = add i32 %8, 72
  %97 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %96, i32 undef)  ; BufferLoad(srv,index,wot)
  %98 = extractvalue %dx.types.ResRet.i32 %97, 0
  %99 = add i32 %98, 0
  %100 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %99, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %101 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %100, %dx.types.Handle %16, float %10, float %11, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %102 = extractvalue %dx.types.ResRet.f32 %101, 0
  %103 = extractvalue %dx.types.ResRet.f32 %101, 1
  %104 = add i32 %8, 56
  %105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %104, i32 undef)  ; BufferLoad(srv,index,wot)
  %106 = extractvalue %dx.types.ResRet.i32 %105, 0
  %107 = and i32 %106, 255
  %108 = uitofp i32 %107 to float
  %109 = fmul fast float %108, 0x3F70101020000000
  %110 = lshr i32 %106, 8
  %111 = and i32 %110, 255
  %112 = uitofp i32 %111 to float
  %113 = fmul fast float %112, 0x3F70101020000000
  %114 = lshr i32 %106, 16
  %115 = and i32 %114, 255
  %116 = uitofp i32 %115 to float
  %117 = fmul fast float %116, 0x3F70101020000000
  %118 = add i32 %8, 76
  %119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %118, i32 undef)  ; BufferLoad(srv,index,wot)
  %120 = extractvalue %dx.types.ResRet.i32 %119, 0
  %121 = add i32 %120, 0
  %122 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %121, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %123 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %122, %dx.types.Handle %16, float %10, float %11, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %124 = extractvalue %dx.types.ResRet.f32 %123, 0
  %125 = extractvalue %dx.types.ResRet.f32 %123, 1
  %126 = extractvalue %dx.types.ResRet.f32 %123, 2
  %127 = add i32 %8, 44
  %128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %127, i32 undef)  ; BufferLoad(srv,index,wot)
  %129 = extractvalue %dx.types.ResRet.i32 %128, 0
  %130 = shl i32 %129, 4
  %131 = and i32 %130, 32752
  %132 = call float @dx.op.legacyF16ToF32(i32 131, i32 %131)  ; LegacyF16ToF32(value)
  %133 = lshr i32 %129, 7
  %134 = and i32 %133, 32752
  %135 = call float @dx.op.legacyF16ToF32(i32 131, i32 %134)  ; LegacyF16ToF32(value)
  %136 = lshr i32 %129, 22
  %137 = shl nuw nsw i32 %136, 5
  %138 = call float @dx.op.legacyF16ToF32(i32 131, i32 %137)  ; LegacyF16ToF32(value)
  %139 = fmul fast float %132, %124
  %140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %141 = extractvalue %dx.types.CBufRet.f32 %140, 0
  %142 = fmul fast float %139, %141
  %143 = add i32 %8, 48
  %144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %143, i32 undef)  ; BufferLoad(srv,index,wot)
  %145 = extractvalue %dx.types.ResRet.i32 %144, 0
  %146 = lshr i32 %145, 22
  %147 = shl nuw nsw i32 %146, 5
  %148 = call float @dx.op.legacyF16ToF32(i32 131, i32 %147)  ; LegacyF16ToF32(value)
  %149 = fmul fast float %148, %142
  %150 = select i1 %56, float %149, float %142
  %151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %152 = extractvalue %dx.types.CBufRet.f32 %151, 0
  %153 = fmul fast float %102, %58
  %154 = fmul fast float %109, %109
  %155 = fmul fast float %154, %153
  %156 = fmul fast float %155, %152
  %157 = fmul fast float %103, %60
  %158 = fmul fast float %113, %113
  %159 = fmul fast float %158, %157
  %160 = fmul fast float %159, %152
  %161 = fmul fast float %77, %150
  %162 = fmul fast float %73, %67
  %163 = fmul fast float %162, %125
  %164 = fmul fast float %163, %135
  %165 = fmul fast float %164, %141
  %166 = fmul fast float %76, %67
  %167 = fmul fast float %166, %126
  %168 = fmul fast float %167, %138
  %169 = fmul fast float %168, %141
  %170 = call float @dx.op.dot3.f32(i32 55, float %161, float %165, float %169, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %171 = select i1 %56, float 0.000000e+00, float %161
  %172 = select i1 %56, float %170, float %165
  %173 = fadd fast float %171, %156
  %174 = fadd fast float %160, %172
  %175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %176 = extractvalue %dx.types.CBufRet.f32 %175, 0
  br i1 %56, label %177, label %181

; <label>:177                                     ; preds = %80
  %178 = fadd fast float %173, %174
  %179 = fmul fast float %178, %81
  %180 = fmul fast float %179, %176
  br label %199

; <label>:181                                     ; preds = %80
  %182 = fmul fast float %173, %81
  %183 = fmul fast float %174, %81
  %184 = extractvalue %dx.types.ResRet.f32 %101, 2
  %185 = fmul fast float %184, %62
  %186 = fmul fast float %117, %117
  %187 = fmul fast float %186, %185
  %188 = fmul fast float %187, %152
  %189 = fadd fast float %188, %169
  %190 = fmul fast float %189, %81
  %191 = fmul fast float %182, %176
  %192 = fmul fast float %183, %176
  %193 = fmul fast float %190, %176
  %194 = call float @dx.op.binary.f32(i32 35, float %192, float %193)  ; FMax(a,b)
  %195 = call float @dx.op.binary.f32(i32 35, float %191, float %194)  ; FMax(a,b)
  %196 = call float @dx.op.binary.f32(i32 35, float %195, float 0.000000e+00)  ; FMax(a,b)
  %197 = fcmp fast ugt float %196, 0x3F10000000000000
  br i1 %197, label %199, label %198

; <label>:198                                     ; preds = %181
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %199

; <label>:199                                     ; preds = %198, %181, %177
  %200 = phi float [ %180, %177 ], [ %191, %198 ], [ %191, %181 ]
  %201 = phi float [ 0.000000e+00, %177 ], [ %192, %198 ], [ %192, %181 ]
  %202 = phi float [ 0.000000e+00, %177 ], [ %193, %198 ], [ %193, %181 ]
  %203 = fadd fast float %95, 0x3FE3C6EF40000000
  %204 = call float @dx.op.unary.f32(i32 22, float %203)  ; Frc(value)
  %205 = call float @dx.op.unary.f32(i32 23, float %200)  ; Log(value)
  %206 = fadd fast float %205, -7.000000e+00
  %207 = call float @dx.op.unary.f32(i32 21, float %206)  ; Exp(value)
  %208 = fmul fast float %204, 2.000000e+00
  %209 = fadd fast float %208, -1.000000e+00
  %210 = fmul fast float %207, %209
  %211 = fcmp fast ogt float %200, 0.000000e+00
  %212 = select i1 %211, float %210, float 0.000000e+00
  %213 = fadd fast float %212, %200
  %214 = fadd fast float %95, 0x3FF3C6EF40000000
  %215 = call float @dx.op.unary.f32(i32 22, float %214)  ; Frc(value)
  %216 = call float @dx.op.unary.f32(i32 23, float %201)  ; Log(value)
  %217 = fadd fast float %216, -7.000000e+00
  %218 = call float @dx.op.unary.f32(i32 21, float %217)  ; Exp(value)
  %219 = fmul fast float %215, 2.000000e+00
  %220 = fadd fast float %219, -1.000000e+00
  %221 = fmul fast float %218, %220
  %222 = fcmp fast ogt float %201, 0.000000e+00
  %223 = select i1 %222, float %221, float 0.000000e+00
  %224 = fadd fast float %223, %201
  %225 = fadd fast float %95, 0x3FFDAA66E0000000
  %226 = call float @dx.op.unary.f32(i32 22, float %225)  ; Frc(value)
  %227 = call float @dx.op.unary.f32(i32 23, float %202)  ; Log(value)
  %228 = fadd fast float %227, -6.000000e+00
  %229 = call float @dx.op.unary.f32(i32 21, float %228)  ; Exp(value)
  %230 = fmul fast float %226, 2.000000e+00
  %231 = fadd fast float %230, -1.000000e+00
  %232 = fmul fast float %229, %231
  %233 = fcmp fast ogt float %202, 0.000000e+00
  %234 = select i1 %233, float %232, float 0.000000e+00
  %235 = fadd fast float %234, %202
  %236 = select i1 %56, float %201, float %224
  %237 = select i1 %56, float %202, float %235
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %238 = call float @dx.op.binary.f32(i32 36, float %213, float 3.225500e+04)  ; FMin(a,b)
  %239 = call float @dx.op.binary.f32(i32 36, float %236, float 3.225500e+04)  ; FMin(a,b)
  %240 = call float @dx.op.binary.f32(i32 36, float %237, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %238)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %239)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %240)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

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
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.viewIdState = !{!18}
!dx.entryPoints = !{!19}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !12, !15}
!5 = !{!6, !8, !9, !10, !11}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 22, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!12 = !{!13, !14}
!13 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!14 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!15 = !{!16, !17}
!16 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!17 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!18 = !{[22 x i32] [i32 20, i32 8, i32 7, i32 7, i32 0, i32 7, i32 7, i32 0, i32 0, i32 0, i32 7, i32 7, i32 0, i32 0, i32 7, i32 0, i32 0, i32 0, i32 7, i32 0, i32 0, i32 0]}
!19 = !{void ()* @ps_main, !"ps_main", !20, !4, !37}
!20 = !{!21, !32, null}
!21 = !{!22, !25, !27, !29, !30, !31}
!22 = !{i32 0, !"SV_Position", i8 9, i8 3, !23, i8 4, i32 1, i8 4, i32 0, i8 0, !24}
!23 = !{i32 0}
!24 = !{i32 3, i32 11}
!25 = !{i32 1, !"COLOR", i8 9, i8 0, !23, i8 2, i32 1, i8 4, i32 1, i8 0, !26}
!26 = !{i32 3, i32 1}
!27 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !23, i8 2, i32 1, i8 4, i32 2, i8 0, !28}
!28 = !{i32 3, i32 3}
!29 = !{i32 3, !"ENTITY_IDS", i8 5, i8 0, !23, i8 1, i32 1, i8 2, i32 3, i8 0, !26}
!30 = !{i32 4, !"PACKED_TRI_DATA", i8 5, i8 0, !23, i8 1, i32 1, i8 4, i32 4, i8 0, !26}
!31 = !{i32 5, !"SV_SampleIndex", i8 5, i8 12, !23, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!32 = !{!33, !35}
!33 = !{i32 0, !"SV_Target", i8 9, i8 16, !23, i8 0, i32 1, i8 4, i32 0, i8 0, !34}
!34 = !{i32 3, i32 15}
!35 = !{i32 1, !"SV_Target", i8 9, i8 16, !36, i8 0, i32 1, i8 4, i32 1, i8 0, !34}
!36 = !{i32 1}
!37 = !{i32 0, i64 24}

