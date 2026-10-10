;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy w
; COLOR                    0   xyzw        1     NONE   float   x   
; TEXCOORDS                0   xyzw        2     NONE   float       
; ENTITY_IDS               0   xy          3     NONE    uint   x   
; TEXCOORD                 9   xy          4     NONE   float   xy  
; PACKED_TRI_DATA          0   xyzw        5     NONE    uint   x   
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
; shader hash: 6ff37d200a4c24d5f1e300642f1c0aa5
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
; TEXCOORD                 9                 linear       
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
;                                   sampler      NA          NA      S1             s1     1
;                                   sampler      NA          NA      S2             s2     1
;                                   texture     f32          2d      T0      t0,space3unbounded
;                                   texture    byte         r/o      T1     t37,space1     1
;                                   texture    byte         r/o      T2     t22,space1     1
;                                   texture     f32          2d      T3     t69,space2     1
;                                   texture     f32          2d      T4     t57,space2     1
;                                   texture    byte         r/o      T5     t69,space1     1
;                                   texture     u32          2d      T6     t56,space2     1
;                                   texture    byte         r/o      T7             t0     1
;
;
; ViewId state:
;
; Number of inputs: 24, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %13 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %14 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %15 = call i32 @dx.op.loadInput.i32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %16 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %17 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %18 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %19 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %20 = alloca [3 x float], align 4
  %21 = alloca [3 x float], align 4
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %24 = extractvalue %dx.types.CBufRet.f32 %23, 0
  %25 = fmul fast float %24, %17
  %26 = fmul fast float %24, %18
  %27 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %28 = extractvalue %dx.types.CBufRet.f32 %27, 2
  %29 = extractvalue %dx.types.CBufRet.f32 %27, 3
  %30 = fmul fast float %28, 2.000000e+00
  %31 = fmul fast float %30, %25
  %32 = fmul fast float %29, 2.000000e+00
  %33 = fmul fast float %32, %26
  %34 = fsub fast float 1.000000e+00, %31
  %35 = fsub fast float 1.000000e+00, %33
  %36 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %37 = extractvalue %dx.types.CBufRet.f32 %36, 0
  %38 = extractvalue %dx.types.CBufRet.f32 %36, 1
  %39 = extractvalue %dx.types.CBufRet.f32 %36, 2
  %40 = fmul fast float %34, %37
  %41 = fmul fast float %34, %38
  %42 = fmul fast float %34, %39
  %43 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %44 = extractvalue %dx.types.CBufRet.f32 %43, 0
  %45 = extractvalue %dx.types.CBufRet.f32 %43, 1
  %46 = extractvalue %dx.types.CBufRet.f32 %43, 2
  %47 = fmul fast float %35, %44
  %48 = fmul fast float %35, %45
  %49 = fmul fast float %35, %46
  %50 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %51 = extractvalue %dx.types.CBufRet.f32 %50, 0
  %52 = extractvalue %dx.types.CBufRet.f32 %50, 1
  %53 = extractvalue %dx.types.CBufRet.f32 %50, 2
  %54 = fadd fast float %47, %51
  %55 = fadd fast float %54, %40
  %56 = fadd fast float %48, %52
  %57 = fadd fast float %56, %41
  %58 = fadd fast float %49, %53
  %59 = fadd fast float %58, %42
  %60 = fmul fast float %55, %19
  %61 = fmul fast float %57, %19
  %62 = fmul fast float %59, %19
  %63 = shl i32 %15, 5
  %64 = add i32 %63, 4194304
  %65 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %64, i32 undef)  ; BufferLoad(srv,index,wot)
  %66 = extractvalue %dx.types.ResRet.i32 %65, 1
  %67 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %68 = extractvalue %dx.types.CBufRet.i32 %67, 3
  %69 = and i32 %68, 3
  %70 = icmp ne i32 %69, 0
  %71 = and i32 %68, 4
  %72 = icmp ne i32 %71, 0
  %73 = and i1 %70, %72
  br i1 %73, label %74, label %83

; <label>:74                                      ; preds = %0
  %75 = fmul fast float %29, %26
  %76 = fmul fast float %28, %25
  %77 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %8, float %76, float %75, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %78 = extractvalue %dx.types.ResRet.f32 %77, 0
  %79 = fsub fast float 1.000000e+00, %78
  %80 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %81 = extractvalue %dx.types.CBufRet.f32 %80, 0
  %82 = fcmp fast olt float %79, %81
  br label %86

; <label>:83                                      ; preds = %0
  %84 = icmp eq i32 %71, 0
  %85 = and i1 %70, %84
  br label %86

; <label>:86                                      ; preds = %83, %74
  %87 = phi i1 [ %82, %74 ], [ %85, %83 ]
  %88 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %89 = extractvalue %dx.types.CBufRet.f32 %88, 2
  %90 = extractvalue %dx.types.CBufRet.f32 %88, 3
  %91 = fmul fast float %89, %25
  %92 = fmul fast float %90, %26
  %93 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %94 = extractvalue %dx.types.ResRet.i32 %93, 0
  %95 = and i32 %94, 114688
  %96 = icmp ne i32 %95, 0
  %97 = select i1 %96, float %91, float 0.000000e+00
  %98 = select i1 %96, float %92, float 0.000000e+00
  %99 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %9, float %97, float %98, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %100 = extractvalue %dx.types.ResRet.f32 %99, 0
  %101 = fmul fast float %100, 2.550000e+02
  %102 = fptoui float %101 to i32
  %103 = select i1 %96, i32 %102, i32 0
  %104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 188, i32 undef)  ; BufferLoad(srv,index,wot)
  %105 = extractvalue %dx.types.ResRet.i32 %104, 0
  %106 = lshr i32 %66, 16
  %107 = call float @dx.op.legacyF16ToF32(i32 131, i32 %106)  ; LegacyF16ToF32(value)
  %108 = fmul fast float %107, %16
  %109 = and i32 %105, 16
  %110 = icmp ne i32 %109, 0
  %111 = select i1 %110, float 1.000000e+00, float %108
  %112 = add i32 %12, 88
  %113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %112, i32 undef)  ; BufferLoad(srv,index,wot)
  %114 = extractvalue %dx.types.ResRet.i32 %113, 0
  %115 = add i32 %114, 0
  %116 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %115, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %117 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %116, %dx.types.Handle %22, float %13, float %14, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %118 = extractvalue %dx.types.ResRet.f32 %117, 0
  %119 = fmul fast float %118, %111
  %120 = fcmp fast ogt float %119, 0.000000e+00
  br i1 %120, label %122, label %121

; <label>:121                                     ; preds = %86
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %122

; <label>:122                                     ; preds = %121, %86
  %123 = fmul fast float %25, 5.000000e-01
  %124 = fmul fast float %26, 5.000000e-01
  %125 = fptosi float %123 to i32
  %126 = fptosi float %124 to i32
  %127 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %2, i32 0, i32 %125, i32 %126, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %128 = extractvalue %dx.types.ResRet.i32 %127, 0
  %129 = lshr i32 %128, 18
  %130 = uitofp i32 %129 to float
  %131 = fmul fast float %130, 0x3F4C00EBA0000000
  %132 = call float @dx.op.unary.f32(i32 21, float %131)  ; Exp(value)
  %133 = fadd fast float %132, -1.000000e+00
  %134 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2, i32 0)  ; GetDimensions(handle,mipLevel)
  %135 = extractvalue %dx.types.Dimensions %134, 0
  %136 = sitofp i32 %135 to float
  %137 = extractvalue %dx.types.Dimensions %134, 1
  %138 = sitofp i32 %137 to float
  %139 = fcmp fast oge float %123, %136
  %140 = fcmp fast oge float %124, %138
  %141 = or i1 %139, %140
  %142 = select i1 %141, float 0x4197782600000000, float %133
  %143 = fsub fast float %142, %19
  %144 = fcmp fast ogt float %143, 0.000000e+00
  %145 = and i32 %103, -2
  %146 = icmp eq i32 %145, 2
  %147 = and i1 %146, %144
  %148 = xor i1 %144, true
  %149 = icmp eq i32 %103, 1
  %150 = and i1 %149, %148
  %151 = or i1 %147, %150
  %152 = and i32 %105, 262144
  %153 = icmp ne i32 %152, 0
  %154 = and i1 %153, %151
  %155 = xor i1 %151, true
  %156 = and i32 %105, 131072
  %157 = icmp ne i32 %156, 0
  %158 = and i1 %157, %155
  %159 = or i1 %154, %158
  br i1 %159, label %160, label %161

; <label>:160                                     ; preds = %122
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %161

; <label>:161                                     ; preds = %160, %122
  %162 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %2, i32 0, i32 %125, i32 %126, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %163 = extractvalue %dx.types.ResRet.i32 %162, 0
  %164 = lshr i32 %163, 18
  %165 = uitofp i32 %164 to float
  %166 = fmul fast float %165, 0x3F4C00EBA0000000
  %167 = call float @dx.op.unary.f32(i32 21, float %166)  ; Exp(value)
  %168 = fadd fast float %167, -1.000000e+00
  %169 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2, i32 0)  ; GetDimensions(handle,mipLevel)
  %170 = extractvalue %dx.types.Dimensions %169, 0
  %171 = sitofp i32 %170 to float
  %172 = extractvalue %dx.types.Dimensions %169, 1
  %173 = sitofp i32 %172 to float
  %174 = fcmp fast oge float %123, %171
  %175 = fcmp fast oge float %124, %173
  %176 = or i1 %174, %175
  %177 = select i1 %176, float 0x4197782600000000, float %168
  %178 = icmp eq i32 %103, 3
  %179 = fcmp fast ogt float %19, %177
  %180 = and i1 %149, %179
  %181 = or i1 %178, %180
  %182 = icmp eq i32 %103, 2
  %183 = fcmp fast ole float %19, %177
  %184 = and i1 %182, %183
  %185 = or i1 %184, %181
  br i1 %180, label %186, label %223

; <label>:186                                     ; preds = %161
  %187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %188 = extractvalue %dx.types.CBufRet.f32 %187, 2
  %189 = extractvalue %dx.types.CBufRet.f32 %187, 3
  %190 = fmul fast float %25, 2.000000e+00
  %191 = fmul fast float %190, %188
  %192 = fmul fast float %26, 2.000000e+00
  %193 = fmul fast float %192, %189
  %194 = fsub fast float 1.000000e+00, %191
  %195 = fsub fast float 1.000000e+00, %193
  %196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %197 = extractvalue %dx.types.CBufRet.f32 %196, 0
  %198 = extractvalue %dx.types.CBufRet.f32 %196, 1
  %199 = extractvalue %dx.types.CBufRet.f32 %196, 2
  %200 = fmul fast float %194, %197
  %201 = fmul fast float %194, %198
  %202 = fmul fast float %194, %199
  %203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %204 = extractvalue %dx.types.CBufRet.f32 %203, 0
  %205 = extractvalue %dx.types.CBufRet.f32 %203, 1
  %206 = extractvalue %dx.types.CBufRet.f32 %203, 2
  %207 = fmul fast float %195, %204
  %208 = fmul fast float %195, %205
  %209 = fmul fast float %195, %206
  %210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %211 = extractvalue %dx.types.CBufRet.f32 %210, 0
  %212 = extractvalue %dx.types.CBufRet.f32 %210, 1
  %213 = extractvalue %dx.types.CBufRet.f32 %210, 2
  %214 = fadd fast float %207, %211
  %215 = fadd fast float %214, %200
  %216 = fadd fast float %208, %212
  %217 = fadd fast float %216, %201
  %218 = fadd fast float %209, %213
  %219 = fadd fast float %218, %202
  %220 = fmul fast float %215, %177
  %221 = fmul fast float %217, %177
  %222 = fmul fast float %219, %177
  br label %223

; <label>:223                                     ; preds = %186, %161
  %224 = phi float [ %220, %186 ], [ %60, %161 ]
  %225 = phi float [ %221, %186 ], [ %61, %161 ]
  %226 = phi float [ %222, %186 ], [ %62, %161 ]
  br i1 %185, label %400, label %227

; <label>:227                                     ; preds = %223
  %228 = call float @dx.op.dot3.f32(i32 55, float %224, float %225, float %226, float %224, float %225, float %226)  ; Dot3(ax,ay,az,bx,by,bz)
  %229 = call float @dx.op.unary.f32(i32 25, float %228)  ; Rsqrt(value)
  %230 = fmul fast float %229, %228
  %231 = fmul fast float %229, %224
  %232 = fmul fast float %229, %225
  %233 = fmul fast float %229, %226
  %234 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %235 = extractvalue %dx.types.CBufRet.i32 %234, 1
  %236 = and i32 %235, 1
  %237 = icmp ne i32 %236, 0
  %238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %239 = extractvalue %dx.types.CBufRet.f32 %238, 2
  %240 = fcmp fast ogt float %239, 0.000000e+00
  %241 = and i1 %237, %240
  br i1 %241, label %242, label %400, !dx.controlflow.hints !45

; <label>:242                                     ; preds = %227
  %243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %244 = extractvalue %dx.types.CBufRet.f32 %243, 2
  %245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %246 = extractvalue %dx.types.CBufRet.f32 %245, 2
  %247 = fsub fast float %244, %246
  %248 = extractvalue %dx.types.CBufRet.i32 %234, 0
  %249 = call i32 @dx.op.binary.i32(i32 40, i32 %248, i32 3)  ; UMin(a,b)
  %250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %251 = extractvalue %dx.types.CBufRet.f32 %250, 0
  %252 = extractvalue %dx.types.CBufRet.f32 %250, 1
  %253 = extractvalue %dx.types.CBufRet.f32 %245, 0
  %254 = extractvalue %dx.types.CBufRet.f32 %245, 1
  %255 = fsub fast float %251, %253
  %256 = fsub fast float %252, %254
  %257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %258 = extractvalue %dx.types.CBufRet.f32 %257, 0
  %259 = fcmp fast ogt float %258, 0.000000e+00
  %260 = fsub fast float -0.000000e+00, %255
  %261 = fsub fast float -0.000000e+00, %256
  %262 = call float @dx.op.dot2.f32(i32 54, float %231, float %232, float %231, float %232)  ; Dot2(ax,ay,bx,by)
  %263 = call float @dx.op.dot2.f32(i32 54, float %231, float %232, float %260, float %261)  ; Dot2(ax,ay,bx,by)
  %264 = fmul fast float %263, 2.000000e+00
  %265 = call float @dx.op.dot2.f32(i32 54, float %260, float %261, float %260, float %261)  ; Dot2(ax,ay,bx,by)
  %266 = fmul fast float %258, %258
  %267 = fsub fast float %265, %266
  %268 = fmul fast float %264, %264
  %269 = fmul fast float %262, 4.000000e+00
  %270 = fmul fast float %269, %267
  %271 = fsub fast float %268, %270
  %272 = fcmp fast ogt float %271, 0.000000e+00
  br i1 %272, label %273, label %288

; <label>:273                                     ; preds = %242
  %274 = fcmp fast ogt float %264, 0.000000e+00
  %275 = call float @dx.op.unary.f32(i32 24, float %271)  ; Sqrt(value)
  %276 = fsub fast float -0.000000e+00, %275
  %277 = select i1 %274, float %275, float %276
  %278 = fadd fast float %277, %264
  %279 = fmul float %278, -5.000000e-01
  %280 = fdiv fast float %279, %262
  %281 = call float @dx.op.binary.f32(i32 35, float %280, float 0.000000e+00)  ; FMax(a,b)
  %282 = call float @dx.op.binary.f32(i32 36, float %230, float %281)  ; FMin(a,b)
  %283 = fdiv fast float %267, %279
  %284 = call float @dx.op.binary.f32(i32 35, float %283, float 0.000000e+00)  ; FMax(a,b)
  %285 = call float @dx.op.binary.f32(i32 36, float %230, float %284)  ; FMin(a,b)
  %286 = call float @dx.op.binary.f32(i32 36, float %282, float %285)  ; FMin(a,b)
  %287 = call float @dx.op.binary.f32(i32 35, float %282, float %285)  ; FMax(a,b)
  br label %288

; <label>:288                                     ; preds = %273, %242
  %289 = phi float [ %287, %273 ], [ -1.000000e+00, %242 ]
  %290 = phi float [ %286, %273 ], [ -1.000000e+00, %242 ]
  %291 = phi i1 [ true, %273 ], [ false, %242 ]
  %292 = and i1 %259, %291
  br i1 %292, label %293, label %295

; <label>:293                                     ; preds = %288
  %294 = fcmp fast oeq float %290, %289
  br i1 %294, label %400, label %296

; <label>:295                                     ; preds = %288
  br i1 %259, label %400, label %296

; <label>:296                                     ; preds = %295, %293
  %297 = phi float [ %230, %295 ], [ %289, %293 ]
  %298 = phi float [ 0.000000e+00, %295 ], [ %290, %293 ]
  %299 = fcmp fast oeq float %233, 0.000000e+00
  %300 = fdiv fast float %247, %233
  %301 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %300)  ; FMax(a,b)
  %302 = select i1 %299, float %297, float %301
  %303 = call float @dx.op.binary.f32(i32 36, float %297, float %302)  ; FMin(a,b)
  %304 = fcmp fast ogt float %233, 0.000000e+00
  %305 = fcmp fast olt float %247, 0.000000e+00
  br i1 %304, label %306, label %307

; <label>:306                                     ; preds = %296
  br i1 %305, label %400, label %310

; <label>:307                                     ; preds = %296
  br i1 %305, label %308, label %310

; <label>:308                                     ; preds = %307
  %309 = call float @dx.op.binary.f32(i32 35, float %298, float %303)  ; FMax(a,b)
  br label %310

; <label>:310                                     ; preds = %308, %307, %306
  %311 = phi float [ %309, %308 ], [ %298, %307 ], [ %298, %306 ]
  %312 = getelementptr inbounds [3 x float], [3 x float]* %20, i32 0, i32 0
  store float -1.000000e+00, float* %312, align 4, !tbaa !46, !noalias !50
  %313 = getelementptr inbounds [3 x float], [3 x float]* %20, i32 0, i32 1
  store float -1.000000e+00, float* %313, align 4, !tbaa !46, !noalias !50
  %314 = getelementptr inbounds [3 x float], [3 x float]* %20, i32 0, i32 2
  store float -1.000000e+00, float* %314, align 4, !tbaa !46, !noalias !50
  %315 = getelementptr inbounds [3 x float], [3 x float]* %21, i32 0, i32 0
  store float -1.000000e+00, float* %315, align 4, !tbaa !46, !noalias !50
  %316 = getelementptr inbounds [3 x float], [3 x float]* %21, i32 0, i32 1
  store float -1.000000e+00, float* %316, align 4, !tbaa !46, !noalias !50
  %317 = getelementptr inbounds [3 x float], [3 x float]* %21, i32 0, i32 2
  store float -1.000000e+00, float* %317, align 4, !tbaa !46, !noalias !50
  %318 = icmp sgt i32 %249, 0
  br i1 %318, label %319, label %377

; <label>:319                                     ; preds = %310
  br label %320

; <label>:320                                     ; preds = %367, %319
  %321 = phi i32 [ %368, %367 ], [ 0, %319 ]
  %322 = add nuw i32 %321, 171
  %323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 %322)  ; CBufferLoadLegacy(handle,regIndex)
  %324 = extractvalue %dx.types.CBufRet.f32 %323, 0
  %325 = extractvalue %dx.types.CBufRet.f32 %323, 1
  %326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %327 = extractvalue %dx.types.CBufRet.f32 %326, 0
  %328 = extractvalue %dx.types.CBufRet.f32 %326, 1
  %329 = fsub fast float %324, %327
  %330 = fsub fast float %325, %328
  %331 = extractvalue %dx.types.CBufRet.f32 %323, 2
  %332 = fsub fast float -0.000000e+00, %329
  %333 = fsub fast float -0.000000e+00, %330
  %334 = call float @dx.op.dot2.f32(i32 54, float %231, float %232, float %332, float %333)  ; Dot2(ax,ay,bx,by)
  %335 = fmul fast float %334, 2.000000e+00
  %336 = call float @dx.op.dot2.f32(i32 54, float %332, float %333, float %332, float %333)  ; Dot2(ax,ay,bx,by)
  %337 = fmul fast float %331, %331
  %338 = fsub fast float %336, %337
  %339 = fmul fast float %335, %335
  %340 = fmul fast float %269, %338
  %341 = fsub fast float %339, %340
  %342 = fcmp fast ogt float %341, 0.000000e+00
  br i1 %342, label %343, label %358

; <label>:343                                     ; preds = %320
  %344 = fcmp fast ogt float %335, 0.000000e+00
  %345 = call float @dx.op.unary.f32(i32 24, float %341)  ; Sqrt(value)
  %346 = fsub fast float -0.000000e+00, %345
  %347 = select i1 %344, float %345, float %346
  %348 = fadd fast float %347, %335
  %349 = fmul float %348, -5.000000e-01
  %350 = fdiv fast float %349, %262
  %351 = call float @dx.op.binary.f32(i32 35, float %350, float 0.000000e+00)  ; FMax(a,b)
  %352 = call float @dx.op.binary.f32(i32 36, float %297, float %351)  ; FMin(a,b)
  %353 = fdiv fast float %338, %349
  %354 = call float @dx.op.binary.f32(i32 35, float %353, float 0.000000e+00)  ; FMax(a,b)
  %355 = call float @dx.op.binary.f32(i32 36, float %297, float %354)  ; FMin(a,b)
  %356 = call float @dx.op.binary.f32(i32 36, float %352, float %355)  ; FMin(a,b)
  %357 = call float @dx.op.binary.f32(i32 35, float %352, float %355)  ; FMax(a,b)
  br label %358

; <label>:358                                     ; preds = %343, %320
  %359 = phi float [ %357, %343 ], [ -1.000000e+00, %320 ]
  %360 = phi float [ %356, %343 ], [ -1.000000e+00, %320 ]
  %361 = phi i1 [ true, %343 ], [ false, %320 ]
  br i1 %361, label %362, label %367

; <label>:362                                     ; preds = %358
  %363 = call float @dx.op.binary.f32(i32 35, float %311, float %360)  ; FMax(a,b)
  %364 = getelementptr inbounds [3 x float], [3 x float]* %20, i32 0, i32 %321
  store float %363, float* %364, align 4, !tbaa !46, !noalias !50
  %365 = call float @dx.op.binary.f32(i32 35, float %311, float %359)  ; FMax(a,b)
  %366 = getelementptr inbounds [3 x float], [3 x float]* %21, i32 0, i32 %321
  store float %365, float* %366, align 4, !tbaa !46, !noalias !50
  br label %367

; <label>:367                                     ; preds = %362, %358
  %368 = add nuw nsw i32 %321, 1
  %369 = icmp eq i32 %368, %249
  br i1 %369, label %370, label %320

; <label>:370                                     ; preds = %367
  %371 = load float, float* %314, align 4, !tbaa !46, !alias.scope !66, !noalias !69
  %372 = load float, float* %313, align 4, !tbaa !46, !alias.scope !72, !noalias !73
  %373 = load float, float* %312, align 4, !tbaa !46, !alias.scope !74, !noalias !75
  %374 = load float, float* %317, align 4, !tbaa !46, !alias.scope !76, !noalias !79
  %375 = load float, float* %316, align 4, !tbaa !46, !alias.scope !82, !noalias !83
  %376 = load float, float* %315, align 4, !tbaa !46, !alias.scope !84, !noalias !85
  br label %377

; <label>:377                                     ; preds = %370, %310
  %378 = phi float [ -1.000000e+00, %310 ], [ %376, %370 ]
  %379 = phi float [ -1.000000e+00, %310 ], [ %375, %370 ]
  %380 = phi float [ -1.000000e+00, %310 ], [ %374, %370 ]
  %381 = phi float [ -1.000000e+00, %310 ], [ %373, %370 ]
  %382 = phi float [ -1.000000e+00, %310 ], [ %372, %370 ]
  %383 = phi float [ -1.000000e+00, %310 ], [ %371, %370 ]
  %384 = call float @dx.op.binary.f32(i32 36, float %382, float %383)  ; FMin(a,b)
  %385 = call float @dx.op.binary.f32(i32 36, float %381, float %384)  ; FMin(a,b)
  %386 = call float @dx.op.binary.f32(i32 35, float %381, float %382)  ; FMax(a,b)
  %387 = call float @dx.op.binary.f32(i32 36, float %386, float %383)  ; FMin(a,b)
  %388 = call float @dx.op.binary.f32(i32 36, float %381, float %382)  ; FMin(a,b)
  %389 = call float @dx.op.binary.f32(i32 35, float %388, float %387)  ; FMax(a,b)
  %390 = call float @dx.op.binary.f32(i32 35, float %382, float %383)  ; FMax(a,b)
  %391 = call float @dx.op.binary.f32(i32 35, float %381, float %390)  ; FMax(a,b)
  store float %385, float* %312, align 4, !tbaa !46, !alias.scope !74, !noalias !75
  store float %389, float* %313, align 4, !tbaa !46, !alias.scope !72, !noalias !73
  store float %391, float* %314, align 4, !tbaa !46, !alias.scope !66, !noalias !69
  %392 = call float @dx.op.binary.f32(i32 36, float %379, float %380)  ; FMin(a,b)
  %393 = call float @dx.op.binary.f32(i32 36, float %378, float %392)  ; FMin(a,b)
  %394 = call float @dx.op.binary.f32(i32 35, float %378, float %379)  ; FMax(a,b)
  %395 = call float @dx.op.binary.f32(i32 36, float %394, float %380)  ; FMin(a,b)
  %396 = call float @dx.op.binary.f32(i32 36, float %378, float %379)  ; FMin(a,b)
  %397 = call float @dx.op.binary.f32(i32 35, float %396, float %395)  ; FMax(a,b)
  %398 = call float @dx.op.binary.f32(i32 35, float %379, float %380)  ; FMax(a,b)
  %399 = call float @dx.op.binary.f32(i32 35, float %378, float %398)  ; FMax(a,b)
  store float %393, float* %315, align 4, !tbaa !46, !alias.scope !84, !noalias !85
  store float %397, float* %316, align 4, !tbaa !46, !alias.scope !82, !noalias !83
  store float %399, float* %317, align 4, !tbaa !46, !alias.scope !76, !noalias !79
  br label %400

; <label>:400                                     ; preds = %377, %306, %295, %293, %227, %223
  br i1 %87, label %402, label %401

; <label>:401                                     ; preds = %400
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %402

; <label>:402                                     ; preds = %401, %400
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

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
!dx.viewIdState = !{!23}
!dx.entryPoints = !{!24}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !16, !19}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !15}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 22, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!13 = !{i32 6, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !14}
!14 = !{i32 0, i32 5}
!15 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!16 = !{!17, !18}
!17 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!18 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!19 = !{!20, !21, !22}
!20 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!21 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!22 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!23 = !{[26 x i32] [i32 24, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]}
!24 = !{void ()* @ps_main, !"ps_main", !25, !4, !44}
!25 = !{!26, !39, null}
!26 = !{!27, !30, !32, !33, !34, !37, !38}
!27 = !{i32 0, !"SV_Position", i8 9, i8 3, !28, i8 4, i32 1, i8 4, i32 0, i8 0, !29}
!28 = !{i32 0}
!29 = !{i32 3, i32 11}
!30 = !{i32 1, !"COLOR", i8 9, i8 0, !28, i8 2, i32 1, i8 4, i32 1, i8 0, !31}
!31 = !{i32 3, i32 1}
!32 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !28, i8 2, i32 1, i8 4, i32 2, i8 0, null}
!33 = !{i32 3, !"ENTITY_IDS", i8 5, i8 0, !28, i8 1, i32 1, i8 2, i32 3, i8 0, !31}
!34 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !35, i8 2, i32 1, i8 2, i32 4, i8 0, !36}
!35 = !{i32 9}
!36 = !{i32 3, i32 3}
!37 = !{i32 5, !"PACKED_TRI_DATA", i8 5, i8 0, !28, i8 1, i32 1, i8 4, i32 5, i8 0, !31}
!38 = !{i32 6, !"SV_SampleIndex", i8 5, i8 12, !28, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!39 = !{!40, !42}
!40 = !{i32 0, !"SV_Target", i8 9, i8 16, !28, i8 0, i32 1, i8 4, i32 0, i8 0, !41}
!41 = !{i32 3, i32 15}
!42 = !{i32 1, !"SV_Target", i8 9, i8 16, !43, i8 0, i32 1, i8 4, i32 1, i8 0, !41}
!43 = !{i32 1}
!44 = !{i32 0, i64 24}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 1}
!46 = !{!47, !47, i64 0}
!47 = !{!"float", !48, i64 0}
!48 = !{!"omnipotent char", !49, i64 0}
!49 = !{!"Simple C/C++ TBAA"}
!50 = !{!51, !53, !55, !56, !58, !59, !60, !62, !63, !64}
!51 = distinct !{!51, !52, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!52 = distinct !{!52, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!53 = distinct !{!53, !54, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!54 = distinct !{!54, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!55 = distinct !{!55, !54, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!56 = distinct !{!56, !57, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!57 = distinct !{!57, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!58 = distinct !{!58, !57, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!59 = distinct !{!59, !57, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!60 = distinct !{!60, !61, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!61 = distinct !{!61, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!62 = distinct !{!62, !61, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!63 = distinct !{!63, !61, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!64 = distinct !{!64, !65, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!65 = distinct !{!65, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!66 = !{!67}
!67 = distinct !{!67, !68, !"\01?sort@@YAXAIAM00@Z: %c"}
!68 = distinct !{!68, !"\01?sort@@YAXAIAM00@Z"}
!69 = !{!70, !71, !51, !53, !55, !56, !58, !59, !60, !62, !63, !64}
!70 = distinct !{!70, !68, !"\01?sort@@YAXAIAM00@Z: %a"}
!71 = distinct !{!71, !68, !"\01?sort@@YAXAIAM00@Z: %b"}
!72 = !{!71}
!73 = !{!70, !67, !51, !53, !55, !56, !58, !59, !60, !62, !63, !64}
!74 = !{!70}
!75 = !{!71, !67, !51, !53, !55, !56, !58, !59, !60, !62, !63, !64}
!76 = !{!77}
!77 = distinct !{!77, !78, !"\01?sort@@YAXAIAM00@Z: %c"}
!78 = distinct !{!78, !"\01?sort@@YAXAIAM00@Z"}
!79 = !{!80, !81, !51, !53, !55, !56, !58, !59, !60, !62, !63, !64}
!80 = distinct !{!80, !78, !"\01?sort@@YAXAIAM00@Z: %a"}
!81 = distinct !{!81, !78, !"\01?sort@@YAXAIAM00@Z: %b"}
!82 = !{!81}
!83 = !{!80, !77, !51, !53, !55, !56, !58, !59, !60, !62, !63, !64}
!84 = !{!80}
!85 = !{!81, !77, !51, !53, !55, !56, !58, !59, !60, !62, !63, !64}

