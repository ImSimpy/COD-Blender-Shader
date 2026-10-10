;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy  
; COLOR                    0   xyzw        1     NONE   float   xyzw
; TEXCOORD                 0   xy          2     NONE   float   xy  
; TEXCOORD                 7     zw        2     NONE   float     zw
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 12f3bd37e8c6a1519da630a6bd89d001
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
; COLOR                    0                 linear       
; TEXCOORD                 0                 linear       
; TEXCOORD                 7                 linear       
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
;   [240 x i8] (type annotation not present)
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
;                                   cbuffer      NA          NA     CB1            cb2     1
;                                   cbuffer      NA          NA     CB2            cb1     1
;                                   cbuffer      NA          NA     CB3            cb4     1
;                                   sampler      NA          NA      S0             s1     1
;                                   sampler      NA          NA      S1             s2     1
;                                   sampler      NA          NA      S2             s3     1
;                                   sampler      NA          NA      S3             s5     1
;                                   texture     f32          3d      T0     t74,space2     1
;                                   texture    byte         r/o      T1     t15,space1     1
;                                   texture     f32          2d      T2     t69,space2     1
;                                   texture     f32          2d      T3             t0     1
;                                   texture     f32          2d      T4             t1     1
;                                   texture     f32          3d      T5     t71,space2     1
;
;
; ViewId state:
;
; Number of inputs: 12, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 4, 5, 6, 7, 8, 9, 10, 11 }
;   output 1 depends on inputs: { 0, 1, 4, 5, 6, 7, 8, 9, 10, 11 }
;   output 2 depends on inputs: { 0, 1, 4, 5, 6, 7, 8, 9, 10, 11 }
;   output 3 depends on inputs: { 0, 1, 7, 8, 9 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
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
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%perObject = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%tonemapping = type { i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 71, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 74, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %16 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %17 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %18 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %19 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %20 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %21 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %26 = extractvalue %dx.types.CBufRet.f32 %25, 0
  %27 = extractvalue %dx.types.CBufRet.f32 %25, 1
  %28 = fsub fast float %23, %26
  %29 = fsub fast float %24, %27
  %30 = extractvalue %dx.types.CBufRet.f32 %25, 2
  %31 = extractvalue %dx.types.CBufRet.f32 %25, 3
  %32 = fmul fast float %28, %30
  %33 = fmul fast float %29, %31
  %34 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %35 = extractvalue %dx.types.CBufRet.f32 %34, 0
  %36 = extractvalue %dx.types.CBufRet.f32 %34, 1
  %37 = fmul fast float %32, %35
  %38 = fmul fast float %33, %36
  %39 = fptoui float %37 to i32
  %40 = fptoui float %38 to i32
  %41 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %42 = extractvalue %dx.types.CBufRet.i32 %41, 1
  %43 = shl i32 %42, 2
  %44 = extractvalue %dx.types.CBufRet.i32 %41, 3
  %45 = add i32 %43, %44
  %46 = lshr i32 %40, 2
  %47 = extractvalue %dx.types.CBufRet.i32 %41, 2
  %48 = mul i32 %46, %47
  %49 = lshr i32 %39, 3
  %50 = add i32 %45, %49
  %51 = add i32 %50, %48
  %52 = shl i32 %51, 2
  %53 = shl i32 %40, 3
  %54 = and i32 %53, 24
  %55 = and i32 %39, 7
  %56 = or i32 %54, %55
  %57 = shl i32 1, %56
  %58 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %52, i32 undef)  ; BufferLoad(srv,index,wot)
  %59 = extractvalue %dx.types.ResRet.i32 %58, 0
  %60 = and i32 %59, %57
  %61 = icmp ne i32 %60, 0
  %62 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 228)  ; CBufferLoadLegacy(handle,regIndex)
  %63 = extractvalue %dx.types.CBufRet.f32 %62, 2
  %64 = extractvalue %dx.types.CBufRet.f32 %62, 0
  %65 = call float @dx.op.binary.f32(i32 35, float %32, float %64)  ; FMax(a,b)
  %66 = call float @dx.op.binary.f32(i32 36, float %65, float %63)  ; FMin(a,b)
  %67 = call float @dx.op.binary.f32(i32 36, float %32, float %64)  ; FMin(a,b)
  %68 = call float @dx.op.binary.f32(i32 35, float %67, float %66)  ; FMax(a,b)
  %69 = fcmp fast oeq float %32, %68
  %70 = extractvalue %dx.types.CBufRet.f32 %62, 3
  %71 = extractvalue %dx.types.CBufRet.f32 %62, 1
  %72 = call float @dx.op.binary.f32(i32 35, float %33, float %71)  ; FMax(a,b)
  %73 = call float @dx.op.binary.f32(i32 36, float %72, float %70)  ; FMin(a,b)
  %74 = call float @dx.op.binary.f32(i32 36, float %33, float %71)  ; FMin(a,b)
  %75 = call float @dx.op.binary.f32(i32 35, float %74, float %73)  ; FMax(a,b)
  %76 = fcmp fast oeq float %33, %75
  %77 = and i1 %69, %76
  %78 = select i1 %77, float 0.000000e+00, float 1.000000e+00
  %79 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %80 = extractvalue %dx.types.CBufRet.f32 %79, 1
  %81 = fcmp fast une float %80, 0.000000e+00
  %82 = extractvalue %dx.types.CBufRet.f32 %79, 0
  %83 = select i1 %81, float %78, float %82
  %84 = fcmp fast oeq float %83, %82
  %85 = and i1 %61, %84
  br i1 %85, label %87, label %86, !dx.controlflow.hints !38

; <label>:86                                      ; preds = %0
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %87

; <label>:87                                      ; preds = %86, %0
  %88 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3, i32 0)  ; GetDimensions(handle,mipLevel)
  %89 = extractvalue %dx.types.Dimensions %88, 0
  %90 = sitofp i32 %89 to float
  %91 = extractvalue %dx.types.Dimensions %88, 1
  %92 = sitofp i32 %91 to float
  %93 = fdiv fast float 5.000000e-01, %90
  %94 = fdiv fast float 5.000000e-01, %92
  %95 = fsub fast float 1.000000e+00, %93
  %96 = call float @dx.op.binary.f32(i32 35, float %17, float %93)  ; FMax(a,b)
  %97 = call float @dx.op.binary.f32(i32 36, float %96, float %95)  ; FMin(a,b)
  %98 = fsub fast float 1.000000e+00, %94
  %99 = call float @dx.op.binary.f32(i32 35, float %18, float %94)  ; FMax(a,b)
  %100 = call float @dx.op.binary.f32(i32 36, float %99, float %98)  ; FMin(a,b)
  %101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %102 = extractvalue %dx.types.CBufRet.f32 %101, 3
  %103 = bitcast float %102 to i32
  %104 = and i32 %103, 1
  %105 = icmp ne i32 %104, 0
  %106 = select i1 %105, float %97, float %17
  %107 = and i32 %103, 2
  %108 = icmp ne i32 %107, 0
  %109 = select i1 %108, float %100, float %18
  %110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %111 = extractvalue %dx.types.CBufRet.f32 %110, 3
  %112 = bitcast float %111 to i32
  %113 = and i32 %112, 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %121, label %115, !dx.controlflow.hints !39

; <label>:115                                     ; preds = %87
  %116 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %7, float %106, float %109, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %117 = extractvalue %dx.types.ResRet.f32 %116, 0
  %118 = extractvalue %dx.types.ResRet.f32 %116, 1
  %119 = extractvalue %dx.types.ResRet.f32 %116, 2
  %120 = extractvalue %dx.types.ResRet.f32 %116, 3
  br label %129

; <label>:121                                     ; preds = %87
  %122 = call float @dx.op.unary.f32(i32 22, float %106)  ; Frc(value)
  %123 = call float @dx.op.unary.f32(i32 22, float %109)  ; Frc(value)
  %124 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %10, float %122, float %123, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %125 = extractvalue %dx.types.ResRet.f32 %124, 0
  %126 = extractvalue %dx.types.ResRet.f32 %124, 1
  %127 = extractvalue %dx.types.ResRet.f32 %124, 2
  %128 = extractvalue %dx.types.ResRet.f32 %124, 3
  br label %129

; <label>:129                                     ; preds = %121, %115
  %130 = phi float [ %117, %115 ], [ %125, %121 ]
  %131 = phi float [ %118, %115 ], [ %126, %121 ]
  %132 = phi float [ %119, %115 ], [ %127, %121 ]
  %133 = phi float [ %120, %115 ], [ %128, %121 ]
  %134 = and i32 %112, 8
  %135 = icmp ne i32 %134, 0
  %136 = select i1 %135, float 1.000000e+00, float %130
  %137 = select i1 %135, float 1.000000e+00, float %131
  %138 = select i1 %135, float 1.000000e+00, float %132
  %139 = select i1 %135, float %130, float %133
  %140 = fmul fast float %136, %19
  %141 = fmul fast float %137, %20
  %142 = fmul fast float %138, %21
  %143 = fmul fast float %139, %22
  %144 = fcmp fast oeq float %83, 0.000000e+00
  %145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %146 = extractvalue %dx.types.CBufRet.f32 %145, 3
  %147 = fcmp fast une float %146, 0.000000e+00
  %148 = and i1 %144, %147
  br i1 %148, label %149, label %165

; <label>:149                                     ; preds = %129
  %150 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %9, float %32, float %33, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %151 = extractvalue %dx.types.ResRet.f32 %150, 0
  %152 = fsub fast float 1.000000e+00, %151
  %153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %154 = extractvalue %dx.types.CBufRet.f32 %153, 0
  %155 = extractvalue %dx.types.CBufRet.f32 %153, 1
  %156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 222)  ; CBufferLoadLegacy(handle,regIndex)
  %157 = extractvalue %dx.types.CBufRet.f32 %156, 3
  %158 = fdiv fast float %152, %157
  %159 = fsub fast float %158, %154
  %160 = fmul fast float %159, %155
  %161 = call float @dx.op.unary.f32(i32 7, float %160)  ; Saturate(value)
  %162 = fsub fast float 1.000000e+00, %161
  %163 = fmul fast float %162, %162
  %164 = fmul fast float %163, %143
  br label %165

; <label>:165                                     ; preds = %149, %129
  %166 = phi float [ %164, %149 ], [ %143, %129 ]
  %167 = call float @dx.op.binary.f32(i32 35, float %166, float 0.000000e+00)  ; FMax(a,b)
  %168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %169 = extractvalue %dx.types.CBufRet.f32 %168, 3
  %170 = bitcast float %169 to i32
  %171 = and i32 %170, 1
  %172 = icmp eq i32 %171, 0
  %173 = and i32 %170, 4
  %174 = icmp eq i32 %173, 0
  br i1 %172, label %248, label %175, !dx.controlflow.hints !40

; <label>:175                                     ; preds = %165
  %176 = and i32 %170, 2
  %177 = icmp eq i32 %176, 0
  %178 = extractvalue %dx.types.CBufRet.f32 %168, 0
  %179 = extractvalue %dx.types.CBufRet.f32 %168, 1
  %180 = extractvalue %dx.types.CBufRet.f32 %168, 2
  %181 = fmul fast float %178, %140
  %182 = fmul fast float %179, %141
  %183 = fmul fast float %180, %142
  %184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %185 = extractvalue %dx.types.CBufRet.f32 %184, 0
  %186 = fmul fast float %185, %181
  %187 = fmul fast float %185, %182
  %188 = fmul fast float %185, %183
  br i1 %177, label %248, label %189, !dx.controlflow.hints !41

; <label>:189                                     ; preds = %175
  %190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %191 = extractvalue %dx.types.CBufRet.f32 %190, 0
  %192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %193 = extractvalue %dx.types.CBufRet.f32 %192, 0
  %194 = extractvalue %dx.types.CBufRet.f32 %192, 1
  %195 = extractvalue %dx.types.CBufRet.f32 %192, 2
  %196 = call float @dx.op.dot3.f32(i32 55, float %186, float %187, float %188, float %193, float %194, float %195)  ; Dot3(ax,ay,az,bx,by,bz)
  %197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %198 = extractvalue %dx.types.CBufRet.f32 %197, 0
  %199 = extractvalue %dx.types.CBufRet.f32 %197, 1
  %200 = extractvalue %dx.types.CBufRet.f32 %197, 2
  %201 = call float @dx.op.dot3.f32(i32 55, float %186, float %187, float %188, float %198, float %199, float %200)  ; Dot3(ax,ay,az,bx,by,bz)
  %202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %203 = extractvalue %dx.types.CBufRet.f32 %202, 0
  %204 = extractvalue %dx.types.CBufRet.f32 %202, 1
  %205 = extractvalue %dx.types.CBufRet.f32 %202, 2
  %206 = call float @dx.op.dot3.f32(i32 55, float %186, float %187, float %188, float %203, float %204, float %205)  ; Dot3(ax,ay,az,bx,by,bz)
  %207 = fmul fast float %196, %191
  %208 = fmul fast float %201, %191
  %209 = fmul fast float %206, %191
  %210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %211 = extractvalue %dx.types.CBufRet.f32 %210, 2
  %212 = fmul fast float %207, %211
  %213 = fmul fast float %208, %211
  %214 = fmul fast float %209, %211
  %215 = fadd fast float %212, 9.765625e-04
  %216 = fadd fast float %213, 9.765625e-04
  %217 = fadd fast float %214, 9.765625e-04
  %218 = call float @dx.op.unary.f32(i32 23, float %215)  ; Log(value)
  %219 = call float @dx.op.unary.f32(i32 23, float %216)  ; Log(value)
  %220 = call float @dx.op.unary.f32(i32 23, float %217)  ; Log(value)
  %221 = fadd fast float %218, 1.000000e+01
  %222 = fadd fast float %219, 1.000000e+01
  %223 = fadd fast float %220, 1.000000e+01
  %224 = fmul fast float %221, 0x3FA99999A0000000
  %225 = fmul fast float %222, 0x3FA99999A0000000
  %226 = fmul fast float %223, 0x3FA99999A0000000
  %227 = call float @dx.op.unary.f32(i32 7, float %224)  ; Saturate(value)
  %228 = call float @dx.op.unary.f32(i32 7, float %225)  ; Saturate(value)
  %229 = call float @dx.op.unary.f32(i32 7, float %226)  ; Saturate(value)
  %230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %231 = extractvalue %dx.types.CBufRet.f32 %230, 0
  %232 = extractvalue %dx.types.CBufRet.f32 %230, 1
  %233 = extractvalue %dx.types.CBufRet.f32 %230, 2
  %234 = fmul fast float %231, %227
  %235 = fmul fast float %232, %228
  %236 = fmul fast float %233, %229
  %237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %238 = extractvalue %dx.types.CBufRet.f32 %237, 0
  %239 = extractvalue %dx.types.CBufRet.f32 %237, 1
  %240 = extractvalue %dx.types.CBufRet.f32 %237, 2
  %241 = fadd fast float %234, %238
  %242 = fadd fast float %235, %239
  %243 = fadd fast float %236, %240
  %244 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %9, float %241, float %242, float %243, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %245 = extractvalue %dx.types.ResRet.f32 %244, 0
  %246 = extractvalue %dx.types.ResRet.f32 %244, 1
  %247 = extractvalue %dx.types.ResRet.f32 %244, 2
  br label %248

; <label>:248                                     ; preds = %189, %175, %165
  %249 = phi float [ %245, %189 ], [ %140, %165 ], [ %186, %175 ]
  %250 = phi float [ %246, %189 ], [ %141, %165 ], [ %187, %175 ]
  %251 = phi float [ %247, %189 ], [ %142, %165 ], [ %188, %175 ]
  %252 = fcmp fast oeq float %167, 0.000000e+00
  br i1 %252, label %253, label %254, !dx.controlflow.hints !42

; <label>:253                                     ; preds = %248
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %254

; <label>:254                                     ; preds = %253, %248
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %255 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %8, float %15, float %16, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %256 = extractvalue %dx.types.ResRet.f32 %255, 0
  %257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %258 = extractvalue %dx.types.CBufRet.f32 %257, 3
  %259 = bitcast float %258 to i32
  %260 = and i32 %259, 65535
  %261 = call float @dx.op.legacyF16ToF32(i32 131, i32 %260)  ; LegacyF16ToF32(value)
  %262 = fcmp fast une float %261, 0.000000e+00
  %263 = select i1 %262, float 0.000000e+00, float 1.000000e+00
  %264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %265 = extractvalue %dx.types.CBufRet.f32 %264, 3
  %266 = fmul fast float %265, %256
  %267 = fmul fast float %266, %263
  %268 = fsub fast float 1.000000e+00, %267
  %269 = fmul fast float %268, %249
  %270 = fmul fast float %268, %250
  %271 = fmul fast float %268, %251
  %272 = extractvalue %dx.types.CBufRet.f32 %264, 0
  %273 = extractvalue %dx.types.CBufRet.f32 %264, 1
  %274 = extractvalue %dx.types.CBufRet.f32 %264, 2
  %275 = fmul fast float %272, %266
  %276 = fmul fast float %273, %266
  %277 = fmul fast float %274, %266
  %278 = fadd fast float %269, %275
  %279 = fadd fast float %270, %276
  %280 = fadd fast float %271, %277
  br i1 %174, label %281, label %588, !dx.controlflow.hints !43

; <label>:281                                     ; preds = %254
  %282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %283 = extractvalue %dx.types.CBufRet.f32 %282, 0
  %284 = bitcast float %283 to i32
  %285 = and i32 %284, 128
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %301, label %287

; <label>:287                                     ; preds = %281
  %288 = call float @dx.op.unary.f32(i32 24, float %278)  ; Sqrt(value)
  %289 = call float @dx.op.unary.f32(i32 24, float %279)  ; Sqrt(value)
  %290 = call float @dx.op.unary.f32(i32 24, float %280)  ; Sqrt(value)
  %291 = fmul fast float %288, 9.687500e-01
  %292 = fmul fast float %289, 9.687500e-01
  %293 = fmul fast float %290, 9.687500e-01
  %294 = fadd fast float %291, 1.562500e-02
  %295 = fadd fast float %292, 1.562500e-02
  %296 = fadd fast float %293, 1.562500e-02
  %297 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %9, float %294, float %295, float %296, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %298 = extractvalue %dx.types.ResRet.f32 %297, 0
  %299 = extractvalue %dx.types.ResRet.f32 %297, 1
  %300 = extractvalue %dx.types.ResRet.f32 %297, 2
  br label %588

; <label>:301                                     ; preds = %281
  %302 = and i32 %284, 127
  switch i32 %302, label %588 [
    i32 1, label %303
    i32 2, label %303
    i32 0, label %303
    i32 3, label %333
    i32 4, label %454
  ]

; <label>:303                                     ; preds = %301, %301, %301
  %304 = call float @dx.op.unary.f32(i32 7, float %278)  ; Saturate(value)
  %305 = call float @dx.op.unary.f32(i32 7, float %279)  ; Saturate(value)
  %306 = call float @dx.op.unary.f32(i32 7, float %280)  ; Saturate(value)
  %307 = call float @dx.op.unary.f32(i32 23, float %304)  ; Log(value)
  %308 = call float @dx.op.unary.f32(i32 23, float %305)  ; Log(value)
  %309 = call float @dx.op.unary.f32(i32 23, float %306)  ; Log(value)
  %310 = fmul fast float %307, 0x3FDAAAAAA0000000
  %311 = fmul fast float %308, 0x3FDAAAAAA0000000
  %312 = fmul fast float %309, 0x3FDAAAAAA0000000
  %313 = call float @dx.op.unary.f32(i32 21, float %310)  ; Exp(value)
  %314 = call float @dx.op.unary.f32(i32 21, float %311)  ; Exp(value)
  %315 = call float @dx.op.unary.f32(i32 21, float %312)  ; Exp(value)
  %316 = fmul fast float %313, 0x3FF0E147A0000000
  %317 = fmul fast float %314, 0x3FF0E147A0000000
  %318 = fmul fast float %315, 0x3FF0E147A0000000
  %319 = fadd fast float %316, 0xBFAC28F5C0000000
  %320 = fadd fast float %317, 0xBFAC28F5C0000000
  %321 = fadd fast float %318, 0xBFAC28F5C0000000
  %322 = call float @dx.op.unary.f32(i32 7, float %319)  ; Saturate(value)
  %323 = call float @dx.op.unary.f32(i32 7, float %320)  ; Saturate(value)
  %324 = call float @dx.op.unary.f32(i32 7, float %321)  ; Saturate(value)
  %325 = extractvalue %dx.types.CBufRet.f32 %282, 2
  %326 = extractvalue %dx.types.CBufRet.f32 %282, 3
  %327 = fmul fast float %325, %322
  %328 = fmul fast float %325, %323
  %329 = fmul fast float %325, %324
  %330 = fadd fast float %327, %326
  %331 = fadd fast float %328, %326
  %332 = fadd fast float %329, %326
  br label %588

; <label>:333                                     ; preds = %301
  %334 = fmul fast float %278, 0x4163D57C00000000
  %335 = fmul fast float %279, 0x4163D57C00000000
  %336 = fmul fast float %280, 0x4163D57C00000000
  %337 = fadd fast float %334, 9.999980e+05
  %338 = fadd fast float %335, 9.999980e+05
  %339 = fadd fast float %336, 9.999980e+05
  %340 = fmul fast float %337, %278
  %341 = fmul fast float %338, %279
  %342 = fmul fast float %339, %280
  %343 = fadd fast float %340, 0xC0AFE17A60000000
  %344 = fadd fast float %341, 0xC0AFE17A60000000
  %345 = fadd fast float %342, 0xC0AFE17A60000000
  %346 = fmul fast float %343, %278
  %347 = fmul fast float %344, %279
  %348 = fmul fast float %345, %280
  %349 = fmul fast float %278, 0x40F753C340000000
  %350 = fmul fast float %279, 0x40F753C340000000
  %351 = fmul fast float %280, 0x40F753C340000000
  %352 = fsub fast float 9.999990e+06, %349
  %353 = fsub fast float 9.999990e+06, %350
  %354 = fsub fast float 9.999990e+06, %351
  %355 = fmul fast float %352, %278
  %356 = fmul fast float %353, %279
  %357 = fmul fast float %354, %280
  %358 = fadd fast float %355, 0x4136D1DD80000000
  %359 = fadd fast float %356, 0x4136D1DD80000000
  %360 = fadd fast float %357, 0x4136D1DD80000000
  %361 = fmul fast float %358, %278
  %362 = fmul fast float %359, %279
  %363 = fmul fast float %360, %280
  %364 = fadd fast float %361, 1.000000e+00
  %365 = fadd fast float %362, 1.000000e+00
  %366 = fadd fast float %363, 1.000000e+00
  %367 = fdiv fast float %346, %364
  %368 = fdiv fast float %347, %365
  %369 = fdiv fast float %348, %366
  %370 = call float @dx.op.unary.f32(i32 7, float %367)  ; Saturate(value)
  %371 = call float @dx.op.unary.f32(i32 7, float %368)  ; Saturate(value)
  %372 = call float @dx.op.unary.f32(i32 7, float %369)  ; Saturate(value)
  %373 = extractvalue %dx.types.CBufRet.f32 %282, 1
  %374 = fmul fast float %370, 0x3FE413A920000000
  %375 = call float @dx.op.tertiary.f32(i32 46, float 0x3FD5134040000000, float %371, float %374)  ; FMad(a,b,c)
  %376 = call float @dx.op.tertiary.f32(i32 46, float 0x3FA62B6AE0000000, float %372, float %375)  ; FMad(a,b,c)
  %377 = fmul fast float %370, 0x3FB1B089A0000000
  %378 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED6C8B40000000, float %371, float %377)  ; FMad(a,b,c)
  %379 = call float @dx.op.tertiary.f32(i32 46, float 0x3F8758E220000000, float %372, float %378)  ; FMad(a,b,c)
  %380 = fmul fast float %370, 0x3F90CB2960000000
  %381 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB6872B00000000, float %371, float %380)  ; FMad(a,b,c)
  %382 = call float @dx.op.tertiary.f32(i32 46, float 0x3FECA8C160000000, float %372, float %381)  ; FMad(a,b,c)
  %383 = fmul fast float %376, %373
  %384 = fmul fast float %379, %373
  %385 = fmul fast float %382, %373
  %386 = fmul fast float %383, 0x3F847AE140000000
  %387 = fmul fast float %384, 0x3F847AE140000000
  %388 = fmul fast float %385, 0x3F847AE140000000
  %389 = fmul fast float %383, 0x40B4D2F520000000
  %390 = fmul fast float %384, 0x40B4D2F520000000
  %391 = fmul fast float %385, 0x40B4D2F520000000
  %392 = fadd fast float %389, 0x41869ECF20000000
  %393 = fadd fast float %390, 0x41869ECF20000000
  %394 = fadd fast float %391, 0x41869ECF20000000
  %395 = fmul fast float %392, %386
  %396 = fmul fast float %393, %387
  %397 = fmul fast float %394, %388
  %398 = fadd fast float %395, 0x417BB79C60000000
  %399 = fadd fast float %396, 0x417BB79C60000000
  %400 = fadd fast float %397, 0x417BB79C60000000
  %401 = fmul fast float %398, %386
  %402 = fmul fast float %399, %387
  %403 = fmul fast float %400, %388
  %404 = fadd fast float %401, 0x41218DE180000000
  %405 = fadd fast float %402, 0x41218DE180000000
  %406 = fadd fast float %403, 0x41218DE180000000
  %407 = fmul fast float %404, %386
  %408 = fmul fast float %405, %387
  %409 = fmul fast float %406, %388
  %410 = fadd fast float %407, 0x4077F174E0000000
  %411 = fadd fast float %408, 0x4077F174E0000000
  %412 = fadd fast float %409, 0x4077F174E0000000
  %413 = fmul fast float %410, %386
  %414 = fmul fast float %411, %387
  %415 = fmul fast float %412, %388
  %416 = fadd fast float %413, 0x3F3FF79B80000000
  %417 = fadd fast float %414, 0x3F3FF79B80000000
  %418 = fadd fast float %415, 0x3F3FF79B80000000
  %419 = fmul fast float %383, 0x412442D320000000
  %420 = fmul fast float %384, 0x412442D320000000
  %421 = fmul fast float %385, 0x412442D320000000
  %422 = fadd fast float %419, 0x419385D5C0000000
  %423 = fadd fast float %420, 0x419385D5C0000000
  %424 = fadd fast float %421, 0x419385D5C0000000
  %425 = fmul fast float %422, %386
  %426 = fmul fast float %423, %387
  %427 = fmul fast float %424, %388
  %428 = fadd fast float %425, 4.182885e+06
  %429 = fadd fast float %426, 4.182885e+06
  %430 = fadd fast float %427, 4.182885e+06
  %431 = fmul fast float %428, %386
  %432 = fmul fast float %429, %387
  %433 = fmul fast float %430, %388
  %434 = fadd fast float %431, 0x40C4D633C0000000
  %435 = fadd fast float %432, 0x40C4D633C0000000
  %436 = fadd fast float %433, 0x40C4D633C0000000
  %437 = fmul fast float %434, %386
  %438 = fmul fast float %435, %387
  %439 = fmul fast float %436, %388
  %440 = fadd fast float %437, 1.000000e+00
  %441 = fadd fast float %438, 1.000000e+00
  %442 = fadd fast float %439, 1.000000e+00
  %443 = fdiv fast float %416, %440
  %444 = fdiv fast float %417, %441
  %445 = fdiv fast float %418, %442
  %446 = extractvalue %dx.types.CBufRet.f32 %282, 2
  %447 = extractvalue %dx.types.CBufRet.f32 %282, 3
  %448 = fmul fast float %446, %443
  %449 = fmul fast float %446, %444
  %450 = fmul fast float %446, %445
  %451 = fadd fast float %448, %447
  %452 = fadd fast float %449, %447
  %453 = fadd fast float %450, %447
  br label %588

; <label>:454                                     ; preds = %301
  %455 = fmul fast float %278, 0x4163D57C00000000
  %456 = fmul fast float %279, 0x4163D57C00000000
  %457 = fmul fast float %280, 0x4163D57C00000000
  %458 = fadd fast float %455, 9.999980e+05
  %459 = fadd fast float %456, 9.999980e+05
  %460 = fadd fast float %457, 9.999980e+05
  %461 = fmul fast float %458, %278
  %462 = fmul fast float %459, %279
  %463 = fmul fast float %460, %280
  %464 = fadd fast float %461, 0xC0AFE17A60000000
  %465 = fadd fast float %462, 0xC0AFE17A60000000
  %466 = fadd fast float %463, 0xC0AFE17A60000000
  %467 = fmul fast float %464, %278
  %468 = fmul fast float %465, %279
  %469 = fmul fast float %466, %280
  %470 = fmul fast float %278, 0x40F753C340000000
  %471 = fmul fast float %279, 0x40F753C340000000
  %472 = fmul fast float %280, 0x40F753C340000000
  %473 = fsub fast float 9.999990e+06, %470
  %474 = fsub fast float 9.999990e+06, %471
  %475 = fsub fast float 9.999990e+06, %472
  %476 = fmul fast float %473, %278
  %477 = fmul fast float %474, %279
  %478 = fmul fast float %475, %280
  %479 = fadd fast float %476, 0x4136D1DD80000000
  %480 = fadd fast float %477, 0x4136D1DD80000000
  %481 = fadd fast float %478, 0x4136D1DD80000000
  %482 = fmul fast float %479, %278
  %483 = fmul fast float %480, %279
  %484 = fmul fast float %481, %280
  %485 = fadd fast float %482, 1.000000e+00
  %486 = fadd fast float %483, 1.000000e+00
  %487 = fadd fast float %484, 1.000000e+00
  %488 = fdiv fast float %467, %485
  %489 = fdiv fast float %468, %486
  %490 = fdiv fast float %469, %487
  %491 = call float @dx.op.unary.f32(i32 7, float %488)  ; Saturate(value)
  %492 = call float @dx.op.unary.f32(i32 7, float %489)  ; Saturate(value)
  %493 = call float @dx.op.unary.f32(i32 7, float %490)  ; Saturate(value)
  %494 = extractvalue %dx.types.CBufRet.f32 %282, 1
  %495 = fmul fast float %491, 0x3FEA519BC0000000
  %496 = call float @dx.op.tertiary.f32(i32 46, float 0x3FC6B990A0000000, float %492, float %495)  ; FMad(a,b,c)
  %497 = fmul fast float %491, 0x3FA0FED480000000
  %498 = call float @dx.op.tertiary.f32(i32 46, float 0x3FEEF012C0000000, float %492, float %497)  ; FMad(a,b,c)
  %499 = fmul fast float %491, 0x3F917E1C00000000
  %500 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB288A2E0000000, float %492, float %499)  ; FMad(a,b,c)
  %501 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED22FAA0000000, float %493, float %500)  ; FMad(a,b,c)
  %502 = call float @dx.op.binary.f32(i32 35, float %491, float %492)  ; FMax(a,b)
  %503 = call float @dx.op.binary.f32(i32 35, float %502, float %493)  ; FMax(a,b)
  %504 = fadd fast float %503, -1.000000e+00
  %505 = fmul fast float %504, 2.500000e-01
  %506 = call float @dx.op.unary.f32(i32 7, float %505)  ; Saturate(value)
  %507 = fsub fast float 1.000000e+00, %506
  %508 = fmul fast float %507, %496
  %509 = fmul fast float %507, %498
  %510 = fmul fast float %507, %501
  %511 = fmul fast float %506, %491
  %512 = fmul fast float %506, %492
  %513 = fmul fast float %506, %493
  %514 = fadd fast float %508, %511
  %515 = fadd fast float %509, %512
  %516 = fadd fast float %510, %513
  %517 = fmul fast float %514, %494
  %518 = fmul fast float %515, %494
  %519 = fmul fast float %516, %494
  %520 = fmul fast float %517, 0x3F847AE140000000
  %521 = fmul fast float %518, 0x3F847AE140000000
  %522 = fmul fast float %519, 0x3F847AE140000000
  %523 = fmul fast float %517, 0x40B4D2F520000000
  %524 = fmul fast float %518, 0x40B4D2F520000000
  %525 = fmul fast float %519, 0x40B4D2F520000000
  %526 = fadd fast float %523, 0x41869ECF20000000
  %527 = fadd fast float %524, 0x41869ECF20000000
  %528 = fadd fast float %525, 0x41869ECF20000000
  %529 = fmul fast float %526, %520
  %530 = fmul fast float %527, %521
  %531 = fmul fast float %528, %522
  %532 = fadd fast float %529, 0x417BB79C60000000
  %533 = fadd fast float %530, 0x417BB79C60000000
  %534 = fadd fast float %531, 0x417BB79C60000000
  %535 = fmul fast float %532, %520
  %536 = fmul fast float %533, %521
  %537 = fmul fast float %534, %522
  %538 = fadd fast float %535, 0x41218DE180000000
  %539 = fadd fast float %536, 0x41218DE180000000
  %540 = fadd fast float %537, 0x41218DE180000000
  %541 = fmul fast float %538, %520
  %542 = fmul fast float %539, %521
  %543 = fmul fast float %540, %522
  %544 = fadd fast float %541, 0x4077F174E0000000
  %545 = fadd fast float %542, 0x4077F174E0000000
  %546 = fadd fast float %543, 0x4077F174E0000000
  %547 = fmul fast float %544, %520
  %548 = fmul fast float %545, %521
  %549 = fmul fast float %546, %522
  %550 = fadd fast float %547, 0x3F3FF79B80000000
  %551 = fadd fast float %548, 0x3F3FF79B80000000
  %552 = fadd fast float %549, 0x3F3FF79B80000000
  %553 = fmul fast float %517, 0x412442D320000000
  %554 = fmul fast float %518, 0x412442D320000000
  %555 = fmul fast float %519, 0x412442D320000000
  %556 = fadd fast float %553, 0x419385D5C0000000
  %557 = fadd fast float %554, 0x419385D5C0000000
  %558 = fadd fast float %555, 0x419385D5C0000000
  %559 = fmul fast float %556, %520
  %560 = fmul fast float %557, %521
  %561 = fmul fast float %558, %522
  %562 = fadd fast float %559, 4.182885e+06
  %563 = fadd fast float %560, 4.182885e+06
  %564 = fadd fast float %561, 4.182885e+06
  %565 = fmul fast float %562, %520
  %566 = fmul fast float %563, %521
  %567 = fmul fast float %564, %522
  %568 = fadd fast float %565, 0x40C4D633C0000000
  %569 = fadd fast float %566, 0x40C4D633C0000000
  %570 = fadd fast float %567, 0x40C4D633C0000000
  %571 = fmul fast float %568, %520
  %572 = fmul fast float %569, %521
  %573 = fmul fast float %570, %522
  %574 = fadd fast float %571, 1.000000e+00
  %575 = fadd fast float %572, 1.000000e+00
  %576 = fadd fast float %573, 1.000000e+00
  %577 = fdiv fast float %550, %574
  %578 = fdiv fast float %551, %575
  %579 = fdiv fast float %552, %576
  %580 = extractvalue %dx.types.CBufRet.f32 %282, 2
  %581 = extractvalue %dx.types.CBufRet.f32 %282, 3
  %582 = fmul fast float %580, %577
  %583 = fmul fast float %580, %578
  %584 = fmul fast float %580, %579
  %585 = fadd fast float %582, %581
  %586 = fadd fast float %583, %581
  %587 = fadd fast float %584, %581
  br label %588

; <label>:588                                     ; preds = %454, %333, %303, %301, %287, %254
  %589 = phi float [ %278, %254 ], [ %298, %287 ], [ %278, %301 ], [ %585, %454 ], [ %451, %333 ], [ %330, %303 ]
  %590 = phi float [ %279, %254 ], [ %299, %287 ], [ %279, %301 ], [ %586, %454 ], [ %452, %333 ], [ %331, %303 ]
  %591 = phi float [ %280, %254 ], [ %300, %287 ], [ %280, %301 ], [ %587, %454 ], [ %453, %333 ], [ %332, %303 ]
  %592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 225)  ; CBufferLoadLegacy(handle,regIndex)
  %593 = extractvalue %dx.types.CBufRet.f32 %592, 1
  %594 = extractvalue %dx.types.CBufRet.f32 %592, 3
  %595 = select i1 %144, float %593, float %594
  %596 = fmul fast float %595, %167
  %597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 234)  ; CBufferLoadLegacy(handle,regIndex)
  %598 = extractvalue %dx.types.CBufRet.f32 %597, 0
  %599 = extractvalue %dx.types.CBufRet.f32 %597, 2
  %600 = call float @dx.op.unary.f32(i32 23, float %596)  ; Log(value)
  %601 = fmul fast float %600, %599
  %602 = call float @dx.op.unary.f32(i32 21, float %601)  ; Exp(value)
  %603 = fmul fast float %602, %598
  %604 = extractvalue %dx.types.CBufRet.f32 %597, 1
  %605 = extractvalue %dx.types.CBufRet.f32 %597, 3
  %606 = fmul fast float %600, %605
  %607 = call float @dx.op.unary.f32(i32 21, float %606)  ; Exp(value)
  %608 = fmul fast float %607, %604
  %609 = fadd fast float %608, %603
  %610 = fmul fast float %609, %589
  %611 = fmul fast float %609, %590
  %612 = fmul fast float %609, %591
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %610)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %611)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %612)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %609)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind
declare void @dx.op.discard(i32, i1) #1

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

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
!4 = !{!5, null, !13, !18}
!5 = !{!6, !8, !9, !10, !11, !12}
!6 = !{i32 0, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 74, i32 1, i32 4, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 15, i32 1, i32 11, i32 0, null}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 71, i32 1, i32 4, i32 0, !7}
!13 = !{!14, !15, !16, !17}
!14 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!15 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 240, null}
!16 = !{i32 2, %perObject* undef, !"", i32 0, i32 1, i32 1, i32 80, null}
!17 = !{i32 3, %tonemapping* undef, !"", i32 0, i32 4, i32 1, i32 64, null}
!18 = !{!19, !20, !21, !22}
!19 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!20 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!21 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!22 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!23 = !{[14 x i32] [i32 12, i32 4, i32 15, i32 15, i32 0, i32 0, i32 7, i32 7, i32 7, i32 15, i32 15, i32 15, i32 7, i32 7]}
!24 = !{void ()* @ps_main, !"ps_main", !25, !4, !37}
!25 = !{!26, !35, null}
!26 = !{!27, !30, !32, !33}
!27 = !{i32 0, !"SV_Position", i8 9, i8 3, !28, i8 4, i32 1, i8 4, i32 0, i8 0, !29}
!28 = !{i32 0}
!29 = !{i32 3, i32 3}
!30 = !{i32 1, !"COLOR", i8 9, i8 0, !28, i8 2, i32 1, i8 4, i32 1, i8 0, !31}
!31 = !{i32 3, i32 15}
!32 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !28, i8 2, i32 1, i8 2, i32 2, i8 0, !29}
!33 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !34, i8 2, i32 1, i8 2, i32 2, i8 2, !29}
!34 = !{i32 7}
!35 = !{!36}
!36 = !{i32 0, !"SV_Target", i8 9, i8 16, !28, i8 0, i32 1, i8 4, i32 0, i8 0, !31}
!37 = !{i32 0, i64 16}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 1}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 1}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 1}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 1}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 1}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 1}

