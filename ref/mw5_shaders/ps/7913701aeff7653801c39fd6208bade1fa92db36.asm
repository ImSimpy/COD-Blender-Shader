;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy  
; COLOR                    0   xyzw        1     NONE   float   xyzw
; TEXCOORD                 0   xy          2     NONE   float   xy  
; TEXCOORD                 2     zw        2     NONE   float     zw
; TEXCOORD                 3   xy          3     NONE   float       
; TEXCOORD                 4     zw        3     NONE   float       
; TEXCOORD                 5   xy          4     NONE   float       
; TEXCOORD                 6     zw        4     NONE   float       
; TEXCOORD                 1   xy          5     NONE   float   xy  
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: ce5a140168808ed04eade84430d59aa6
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
; TEXCOORD                 2                 linear       
; TEXCOORD                 3                 linear       
; TEXCOORD                 4                 linear       
; TEXCOORD                 5                 linear       
; TEXCOORD                 6                 linear       
; TEXCOORD                 1                 linear       
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
;   [320 x i8] (type annotation not present)
;
; }
;
; cbuffer 
; {
;
;   [160 x i8] (type annotation not present)
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
;                                   sampler      NA          NA      S0             s2     1
;                                   sampler      NA          NA      S1             s4     1
;                                   texture     f32          3d      T0     t74,space2     1
;                                   texture     f32          2d      T1     t69,space2     1
;                                   texture     f32          2d      T2     t73,space2     1
;                                   texture     f32          2d      T3     t70,space2     1
;                                   texture    byte         r/o      T4     t15,space1     1
;                                   texture     f32          2d      T5             t0     1
;                                   texture     f32          2d      T6             t1     1
;                                   texture     f32          3d      T7     t71,space2     1
;
;
; ViewId state:
;
; Number of inputs: 22, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 4, 5, 6, 7, 8, 9, 10, 11, 20, 21 }
;   output 1 depends on inputs: { 0, 1, 4, 5, 6, 7, 8, 9, 10, 11, 20, 21 }
;   output 2 depends on inputs: { 0, 1, 4, 5, 6, 7, 8, 9, 10, 11, 20, 21 }
;   output 3 depends on inputs: { 0, 1, 7, 8, 9, 10, 11, 20, 21 }
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
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%perObject = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%tonemapping = type { i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 71, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 70, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 73, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 74, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %16 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %17 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %18 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %19 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %20 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %21 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %28 = extractvalue %dx.types.CBufRet.f32 %27, 0
  %29 = extractvalue %dx.types.CBufRet.f32 %27, 1
  %30 = fsub fast float %25, %28
  %31 = fsub fast float %26, %29
  %32 = extractvalue %dx.types.CBufRet.f32 %27, 2
  %33 = extractvalue %dx.types.CBufRet.f32 %27, 3
  %34 = fmul fast float %30, %32
  %35 = fmul fast float %31, %33
  %36 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %37 = extractvalue %dx.types.CBufRet.f32 %36, 0
  %38 = extractvalue %dx.types.CBufRet.f32 %36, 1
  %39 = fmul fast float %34, %37
  %40 = fmul fast float %35, %38
  %41 = fptoui float %39 to i32
  %42 = fptoui float %40 to i32
  %43 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %44 = extractvalue %dx.types.CBufRet.i32 %43, 1
  %45 = shl i32 %44, 2
  %46 = extractvalue %dx.types.CBufRet.i32 %43, 3
  %47 = add i32 %45, %46
  %48 = lshr i32 %42, 2
  %49 = extractvalue %dx.types.CBufRet.i32 %43, 2
  %50 = mul i32 %48, %49
  %51 = lshr i32 %41, 3
  %52 = add i32 %47, %51
  %53 = add i32 %52, %50
  %54 = shl i32 %53, 2
  %55 = shl i32 %42, 3
  %56 = and i32 %55, 24
  %57 = and i32 %41, 7
  %58 = or i32 %56, %57
  %59 = shl i32 1, %58
  %60 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %54, i32 undef)  ; BufferLoad(srv,index,wot)
  %61 = extractvalue %dx.types.ResRet.i32 %60, 0
  %62 = and i32 %61, %59
  %63 = icmp ne i32 %62, 0
  %64 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 228)  ; CBufferLoadLegacy(handle,regIndex)
  %65 = extractvalue %dx.types.CBufRet.f32 %64, 2
  %66 = extractvalue %dx.types.CBufRet.f32 %64, 0
  %67 = call float @dx.op.binary.f32(i32 35, float %34, float %66)  ; FMax(a,b)
  %68 = call float @dx.op.binary.f32(i32 36, float %67, float %65)  ; FMin(a,b)
  %69 = call float @dx.op.binary.f32(i32 36, float %34, float %66)  ; FMin(a,b)
  %70 = call float @dx.op.binary.f32(i32 35, float %69, float %68)  ; FMax(a,b)
  %71 = fcmp fast oeq float %34, %70
  %72 = extractvalue %dx.types.CBufRet.f32 %64, 3
  %73 = extractvalue %dx.types.CBufRet.f32 %64, 1
  %74 = call float @dx.op.binary.f32(i32 35, float %35, float %73)  ; FMax(a,b)
  %75 = call float @dx.op.binary.f32(i32 36, float %74, float %72)  ; FMin(a,b)
  %76 = call float @dx.op.binary.f32(i32 36, float %35, float %73)  ; FMin(a,b)
  %77 = call float @dx.op.binary.f32(i32 35, float %76, float %75)  ; FMax(a,b)
  %78 = fcmp fast oeq float %35, %77
  %79 = and i1 %71, %78
  %80 = select i1 %79, float 0.000000e+00, float 1.000000e+00
  %81 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %82 = extractvalue %dx.types.CBufRet.f32 %81, 1
  %83 = fcmp fast une float %82, 0.000000e+00
  %84 = extractvalue %dx.types.CBufRet.f32 %81, 0
  %85 = select i1 %83, float %80, float %84
  %86 = fcmp fast oeq float %85, %84
  %87 = and i1 %63, %86
  br i1 %87, label %89, label %88, !dx.controlflow.hints !48

; <label>:88                                      ; preds = %0
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %89

; <label>:89                                      ; preds = %88, %0
  %90 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %91 = extractvalue %dx.types.CBufRet.f32 %90, 3
  %92 = fcmp fast ogt float %91, 0.000000e+00
  br i1 %92, label %93, label %143, !dx.controlflow.hints !49

; <label>:93                                      ; preds = %89
  %94 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %95 = extractvalue %dx.types.CBufRet.f32 %94, 3
  %96 = fmul fast float %95, 1.000000e+01
  %97 = call float @dx.op.unary.f32(i32 27, float %96)  ; Round_ni(value)
  %98 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %99 = extractvalue %dx.types.CBufRet.f32 %98, 0
  %100 = extractvalue %dx.types.CBufRet.f32 %98, 1
  %101 = fmul fast float %99, %25
  %102 = fmul fast float %100, %26
  %103 = call float @dx.op.unary.f32(i32 27, float %101)  ; Round_ni(value)
  %104 = call float @dx.op.unary.f32(i32 27, float %102)  ; Round_ni(value)
  %105 = fmul fast float %97, 0x4002B851E0000000
  %106 = call float @dx.op.unary.f32(i32 22, float %105)  ; Frc(value)
  %107 = fadd fast float %106, 0x3FB99999A0000000
  %108 = fadd fast float %107, %103
  %109 = fadd fast float %107, %104
  %110 = fmul fast float %108, 0x3FE1BEDF00000000
  %111 = call float @dx.op.unary.f32(i32 22, float %110)  ; Frc(value)
  %112 = fmul fast float %108, %111
  %113 = fadd fast float %112, %109
  %114 = fmul fast float %109, 0x3FD3BEBE20000000
  %115 = call float @dx.op.unary.f32(i32 22, float %114)  ; Frc(value)
  %116 = fmul fast float %109, %115
  %117 = fadd fast float %116, %108
  %118 = fmul fast float %113, %117
  %119 = call float @dx.op.unary.f32(i32 22, float %118)  ; Frc(value)
  %120 = extractvalue %dx.types.CBufRet.f32 %98, 3
  %121 = bitcast float %120 to i32
  %122 = and i32 %121, 255
  %123 = uitofp i32 %122 to float
  %124 = fmul fast float %119, 0x4085373340000000
  %125 = call float @dx.op.unary.f32(i32 22, float %124)  ; Frc(value)
  %126 = fmul fast float %123, 0x3F6CE9B6A0000000
  %127 = fcmp fast olt float %125, %126
  br i1 %127, label %128, label %143, !dx.controlflow.hints !50

; <label>:128                                     ; preds = %93
  %129 = fdiv fast float %125, %126
  %130 = fmul fast float %129, 2.000000e+00
  %131 = fadd fast float %130, -1.000000e+00
  %132 = lshr i32 %121, 8
  %133 = and i32 %132, 255
  %134 = uitofp i32 %133 to float
  %135 = call float @dx.op.unary.f32(i32 83, float %19)  ; DerivCoarseX(value)
  %136 = call float @dx.op.unary.f32(i32 83, float %20)  ; DerivCoarseX(value)
  %137 = fmul fast float %131, %135
  %138 = fmul fast float %137, %134
  %139 = fmul fast float %136, %131
  %140 = fmul fast float %139, %134
  %141 = fadd fast float %138, %19
  %142 = fadd fast float %140, %20
  br label %143

; <label>:143                                     ; preds = %128, %93, %89
  %144 = phi float [ %141, %128 ], [ %19, %93 ], [ %19, %89 ]
  %145 = phi float [ %142, %128 ], [ %20, %93 ], [ %20, %89 ]
  %146 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3, i32 0)  ; GetDimensions(handle,mipLevel)
  %147 = extractvalue %dx.types.Dimensions %146, 0
  %148 = sitofp i32 %147 to float
  %149 = extractvalue %dx.types.Dimensions %146, 1
  %150 = sitofp i32 %149 to float
  %151 = fdiv fast float 5.000000e-01, %148
  %152 = fdiv fast float 5.000000e-01, %150
  %153 = fsub fast float 1.000000e+00, %151
  %154 = call float @dx.op.binary.f32(i32 35, float %144, float %151)  ; FMax(a,b)
  %155 = call float @dx.op.binary.f32(i32 36, float %154, float %153)  ; FMin(a,b)
  %156 = fsub fast float 1.000000e+00, %152
  %157 = call float @dx.op.binary.f32(i32 35, float %145, float %152)  ; FMax(a,b)
  %158 = call float @dx.op.binary.f32(i32 36, float %157, float %156)  ; FMin(a,b)
  %159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %160 = extractvalue %dx.types.CBufRet.f32 %159, 3
  %161 = bitcast float %160 to i32
  %162 = and i32 %161, 1
  %163 = icmp ne i32 %162, 0
  %164 = select i1 %163, float %155, float %144
  %165 = and i32 %161, 2
  %166 = icmp ne i32 %165, 0
  %167 = select i1 %166, float %158, float %145
  %168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %169 = extractvalue %dx.types.CBufRet.f32 %168, 2
  %170 = fadd fast float %169, -2.000000e+00
  %171 = call float @dx.op.unary.f32(i32 6, float %170)  ; FAbs(value)
  %172 = fcmp fast olt float %171, 0x3F1A36E2E0000000
  %173 = fmul fast float %164, 2.000000e+00
  %174 = fmul fast float %167, 2.000000e+00
  %175 = fadd fast float %173, -1.000000e+00
  %176 = fadd fast float %174, -1.000000e+00
  %177 = call float @dx.op.unary.f32(i32 6, float %175)  ; FAbs(value)
  %178 = call float @dx.op.unary.f32(i32 6, float %176)  ; FAbs(value)
  %179 = extractvalue %dx.types.CBufRet.f32 %168, 0
  %180 = extractvalue %dx.types.CBufRet.f32 %168, 1
  %181 = extractvalue %dx.types.CBufRet.f32 %168, 3
  %182 = fsub fast float %180, %179
  %183 = fcmp fast ogt float %181, 1.000000e+00
  %184 = fdiv fast float 1.000000e+00, %181
  %185 = fmul fast float %182, %184
  %186 = select i1 %183, float %185, float %182
  %187 = fmul fast float %182, %181
  %188 = select i1 %183, float %182, float %187
  %189 = fsub fast float %180, %186
  %190 = fcmp fast ogt float %177, %189
  %191 = fsub fast float %180, %188
  %192 = fcmp fast ogt float %178, %191
  %193 = or i1 %190, %192
  %194 = select i1 %193, float 1.000000e+00, float 0.000000e+00
  %195 = call float @dx.op.dot2.f32(i32 54, float %175, float %176, float %175, float %176)  ; Dot2(ax,ay,bx,by)
  %196 = call float @dx.op.unary.f32(i32 24, float %195)  ; Sqrt(value)
  %197 = fsub fast float %196, %179
  %198 = fdiv fast float %197, %182
  %199 = call float @dx.op.unary.f32(i32 7, float %198)  ; Saturate(value)
  %200 = fmul fast float %199, 2.000000e+00
  %201 = fsub fast float 3.000000e+00, %200
  %202 = fmul fast float %199, %199
  %203 = fmul fast float %202, 2.000000e+00
  %204 = fmul fast float %203, %201
  %205 = fadd fast float %204, -1.000000e+00
  %206 = call float @dx.op.unary.f32(i32 6, float %205)  ; FAbs(value)
  %207 = fsub fast float 1.000000e+00, %206
  %208 = select i1 %172, float %194, float %207
  %209 = fmul fast float %208, %24
  %210 = fcmp fast oeq float %85, 0.000000e+00
  %211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %212 = extractvalue %dx.types.CBufRet.f32 %211, 3
  %213 = fcmp fast une float %212, 0.000000e+00
  %214 = and i1 %210, %213
  br i1 %214, label %215, label %231

; <label>:215                                     ; preds = %143
  %216 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %10, float %34, float %35, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %217 = extractvalue %dx.types.ResRet.f32 %216, 0
  %218 = fsub fast float 1.000000e+00, %217
  %219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %220 = extractvalue %dx.types.CBufRet.f32 %219, 0
  %221 = extractvalue %dx.types.CBufRet.f32 %219, 1
  %222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 222)  ; CBufferLoadLegacy(handle,regIndex)
  %223 = extractvalue %dx.types.CBufRet.f32 %222, 3
  %224 = fdiv fast float %218, %223
  %225 = fsub fast float %224, %220
  %226 = fmul fast float %225, %221
  %227 = call float @dx.op.unary.f32(i32 7, float %226)  ; Saturate(value)
  %228 = fsub fast float 1.000000e+00, %227
  %229 = fmul fast float %228, %228
  %230 = fmul fast float %229, %209
  br label %231

; <label>:231                                     ; preds = %215, %143
  %232 = phi float [ %230, %215 ], [ %209, %143 ]
  %233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %234 = extractvalue %dx.types.CBufRet.f32 %233, 3
  %235 = bitcast float %234 to i32
  %236 = and i32 %235, 512
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %332, label %238

; <label>:238                                     ; preds = %231
  %239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %240 = extractvalue %dx.types.CBufRet.f32 %239, 3
  %241 = bitcast float %240 to i32
  %242 = and i32 %241, 65535
  %243 = call float @dx.op.legacyF16ToF32(i32 131, i32 %242)  ; LegacyF16ToF32(value)
  %244 = lshr i32 %241, 16
  %245 = call float @dx.op.legacyF16ToF32(i32 131, i32 %244)  ; LegacyF16ToF32(value)
  %246 = extractvalue %dx.types.CBufRet.f32 %239, 2
  %247 = bitcast float %246 to i32
  %248 = and i32 %247, 65535
  %249 = call float @dx.op.legacyF16ToF32(i32 131, i32 %248)  ; LegacyF16ToF32(value)
  %250 = lshr i32 %247, 16
  %251 = call float @dx.op.legacyF16ToF32(i32 131, i32 %250)  ; LegacyF16ToF32(value)
  %252 = and i32 %235, 16
  %253 = icmp ne i32 %252, 0
  %254 = fcmp fast ogt float %243, 0.000000e+00
  %255 = fcmp fast ogt float %245, 0.000000e+00
  %256 = and i1 %254, %255
  %257 = fcmp fast ogt float %249, 0.000000e+00
  br i1 %256, label %258, label %318

; <label>:258                                     ; preds = %238
  br i1 %257, label %259, label %267

; <label>:259                                     ; preds = %258
  %260 = fmul fast float %245, %18
  %261 = fmul fast float %243, %17
  %262 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %9, float %261, float %260, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %263 = extractvalue %dx.types.ResRet.f32 %262, 0
  %264 = fsub fast float 1.000000e+00, %263
  %265 = select i1 %253, float %264, float %263
  %266 = fmul fast float %265, %249
  br label %267

; <label>:267                                     ; preds = %259, %258
  %268 = phi float [ %266, %259 ], [ 0.000000e+00, %258 ]
  %269 = fadd fast float %268, %251
  %270 = call float @dx.op.unary.f32(i32 7, float %269)  ; Saturate(value)
  br i1 %257, label %271, label %281

; <label>:271                                     ; preds = %267
  %272 = fmul fast float %245, %18
  %273 = fsub fast float 1.000000e+00, %17
  %274 = fmul fast float %243, %273
  %275 = fsub fast float 1.000000e+00, %274
  %276 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %9, float %275, float %272, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %277 = extractvalue %dx.types.ResRet.f32 %276, 1
  %278 = fsub fast float 1.000000e+00, %277
  %279 = select i1 %253, float %278, float %277
  %280 = fmul fast float %279, %249
  br label %281

; <label>:281                                     ; preds = %271, %267
  %282 = phi float [ %280, %271 ], [ 0.000000e+00, %267 ]
  %283 = fadd fast float %282, %251
  %284 = call float @dx.op.unary.f32(i32 7, float %283)  ; Saturate(value)
  %285 = fmul fast float %284, %270
  br i1 %257, label %286, label %298

; <label>:286                                     ; preds = %281
  %287 = fsub fast float 1.000000e+00, %18
  %288 = fmul fast float %245, %287
  %289 = fsub fast float 1.000000e+00, %288
  %290 = fsub fast float 1.000000e+00, %17
  %291 = fmul fast float %243, %290
  %292 = fsub fast float 1.000000e+00, %291
  %293 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %9, float %292, float %289, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %294 = extractvalue %dx.types.ResRet.f32 %293, 2
  %295 = fsub fast float 1.000000e+00, %294
  %296 = select i1 %253, float %295, float %294
  %297 = fmul fast float %296, %249
  br label %298

; <label>:298                                     ; preds = %286, %281
  %299 = phi float [ %297, %286 ], [ 0.000000e+00, %281 ]
  %300 = fadd fast float %299, %251
  %301 = call float @dx.op.unary.f32(i32 7, float %300)  ; Saturate(value)
  %302 = fmul fast float %285, %301
  br i1 %257, label %303, label %313

; <label>:303                                     ; preds = %298
  %304 = fsub fast float 1.000000e+00, %18
  %305 = fmul fast float %245, %304
  %306 = fsub fast float 1.000000e+00, %305
  %307 = fmul fast float %243, %17
  %308 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %9, float %307, float %306, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %309 = extractvalue %dx.types.ResRet.f32 %308, 3
  %310 = fsub fast float 1.000000e+00, %309
  %311 = select i1 %253, float %310, float %309
  %312 = fmul fast float %311, %249
  br label %313

; <label>:313                                     ; preds = %303, %298
  %314 = phi float [ %312, %303 ], [ 0.000000e+00, %298 ]
  %315 = fadd fast float %314, %251
  %316 = call float @dx.op.unary.f32(i32 7, float %315)  ; Saturate(value)
  %317 = fmul fast float %302, %316
  br label %329

; <label>:318                                     ; preds = %238
  br i1 %257, label %319, label %325

; <label>:319                                     ; preds = %318
  %320 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %9, float %17, float %18, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %321 = extractvalue %dx.types.ResRet.f32 %320, 0
  %322 = fsub fast float 1.000000e+00, %321
  %323 = select i1 %253, float %322, float %321
  %324 = fmul fast float %323, %249
  br label %325

; <label>:325                                     ; preds = %319, %318
  %326 = phi float [ %324, %319 ], [ 0.000000e+00, %318 ]
  %327 = fadd fast float %326, %251
  %328 = call float @dx.op.unary.f32(i32 7, float %327)  ; Saturate(value)
  br label %329

; <label>:329                                     ; preds = %325, %313
  %330 = phi float [ %317, %313 ], [ %328, %325 ]
  %331 = fmul fast float %330, %232
  br label %332

; <label>:332                                     ; preds = %329, %231
  %333 = phi float [ %331, %329 ], [ %232, %231 ]
  %334 = call float @dx.op.binary.f32(i32 35, float %333, float 0.000000e+00)  ; FMax(a,b)
  %335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %336 = extractvalue %dx.types.CBufRet.f32 %335, 3
  %337 = bitcast float %336 to i32
  %338 = and i32 %337, 1
  %339 = icmp eq i32 %338, 0
  %340 = and i32 %337, 4
  %341 = icmp eq i32 %340, 0
  br i1 %339, label %415, label %342, !dx.controlflow.hints !51

; <label>:342                                     ; preds = %332
  %343 = and i32 %337, 2
  %344 = icmp eq i32 %343, 0
  %345 = extractvalue %dx.types.CBufRet.f32 %335, 0
  %346 = extractvalue %dx.types.CBufRet.f32 %335, 1
  %347 = extractvalue %dx.types.CBufRet.f32 %335, 2
  %348 = fmul fast float %345, %21
  %349 = fmul fast float %346, %22
  %350 = fmul fast float %347, %23
  %351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %352 = extractvalue %dx.types.CBufRet.f32 %351, 0
  %353 = fmul fast float %352, %348
  %354 = fmul fast float %352, %349
  %355 = fmul fast float %352, %350
  br i1 %344, label %415, label %356, !dx.controlflow.hints !52

; <label>:356                                     ; preds = %342
  %357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %358 = extractvalue %dx.types.CBufRet.f32 %357, 0
  %359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %360 = extractvalue %dx.types.CBufRet.f32 %359, 0
  %361 = extractvalue %dx.types.CBufRet.f32 %359, 1
  %362 = extractvalue %dx.types.CBufRet.f32 %359, 2
  %363 = call float @dx.op.dot3.f32(i32 55, float %353, float %354, float %355, float %360, float %361, float %362)  ; Dot3(ax,ay,az,bx,by,bz)
  %364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %365 = extractvalue %dx.types.CBufRet.f32 %364, 0
  %366 = extractvalue %dx.types.CBufRet.f32 %364, 1
  %367 = extractvalue %dx.types.CBufRet.f32 %364, 2
  %368 = call float @dx.op.dot3.f32(i32 55, float %353, float %354, float %355, float %365, float %366, float %367)  ; Dot3(ax,ay,az,bx,by,bz)
  %369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %370 = extractvalue %dx.types.CBufRet.f32 %369, 0
  %371 = extractvalue %dx.types.CBufRet.f32 %369, 1
  %372 = extractvalue %dx.types.CBufRet.f32 %369, 2
  %373 = call float @dx.op.dot3.f32(i32 55, float %353, float %354, float %355, float %370, float %371, float %372)  ; Dot3(ax,ay,az,bx,by,bz)
  %374 = fmul fast float %363, %358
  %375 = fmul fast float %368, %358
  %376 = fmul fast float %373, %358
  %377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %378 = extractvalue %dx.types.CBufRet.f32 %377, 2
  %379 = fmul fast float %374, %378
  %380 = fmul fast float %375, %378
  %381 = fmul fast float %376, %378
  %382 = fadd fast float %379, 9.765625e-04
  %383 = fadd fast float %380, 9.765625e-04
  %384 = fadd fast float %381, 9.765625e-04
  %385 = call float @dx.op.unary.f32(i32 23, float %382)  ; Log(value)
  %386 = call float @dx.op.unary.f32(i32 23, float %383)  ; Log(value)
  %387 = call float @dx.op.unary.f32(i32 23, float %384)  ; Log(value)
  %388 = fadd fast float %385, 1.000000e+01
  %389 = fadd fast float %386, 1.000000e+01
  %390 = fadd fast float %387, 1.000000e+01
  %391 = fmul fast float %388, 0x3FA99999A0000000
  %392 = fmul fast float %389, 0x3FA99999A0000000
  %393 = fmul fast float %390, 0x3FA99999A0000000
  %394 = call float @dx.op.unary.f32(i32 7, float %391)  ; Saturate(value)
  %395 = call float @dx.op.unary.f32(i32 7, float %392)  ; Saturate(value)
  %396 = call float @dx.op.unary.f32(i32 7, float %393)  ; Saturate(value)
  %397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %398 = extractvalue %dx.types.CBufRet.f32 %397, 0
  %399 = extractvalue %dx.types.CBufRet.f32 %397, 1
  %400 = extractvalue %dx.types.CBufRet.f32 %397, 2
  %401 = fmul fast float %398, %394
  %402 = fmul fast float %399, %395
  %403 = fmul fast float %400, %396
  %404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %405 = extractvalue %dx.types.CBufRet.f32 %404, 0
  %406 = extractvalue %dx.types.CBufRet.f32 %404, 1
  %407 = extractvalue %dx.types.CBufRet.f32 %404, 2
  %408 = fadd fast float %401, %405
  %409 = fadd fast float %402, %406
  %410 = fadd fast float %403, %407
  %411 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %10, float %408, float %409, float %410, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %412 = extractvalue %dx.types.ResRet.f32 %411, 0
  %413 = extractvalue %dx.types.ResRet.f32 %411, 1
  %414 = extractvalue %dx.types.ResRet.f32 %411, 2
  br label %415

; <label>:415                                     ; preds = %356, %342, %332
  %416 = phi float [ %412, %356 ], [ %21, %332 ], [ %353, %342 ]
  %417 = phi float [ %413, %356 ], [ %22, %332 ], [ %354, %342 ]
  %418 = phi float [ %414, %356 ], [ %23, %332 ], [ %355, %342 ]
  %419 = fcmp fast oeq float %334, 0.000000e+00
  br i1 %419, label %420, label %421, !dx.controlflow.hints !53

; <label>:420                                     ; preds = %415
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %421

; <label>:421                                     ; preds = %420, %415
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %423 = extractvalue %dx.types.CBufRet.f32 %422, 2
  %424 = fcmp fast ogt float %423, 0.000000e+00
  br i1 %424, label %425, label %491, !dx.controlflow.hints !54

; <label>:425                                     ; preds = %421
  %426 = fcmp fast oeq float %423, 2.000000e+00
  br i1 %426, label %427, label %479, !dx.controlflow.hints !55

; <label>:427                                     ; preds = %425
  %428 = fcmp fast ole float %416, 0x3F69A5C380000000
  %429 = fcmp fast ole float %417, 0x3F69A5C380000000
  %430 = fcmp fast ole float %418, 0x3F69A5C380000000
  %431 = fmul fast float %416, 0x4029D70A40000000
  %432 = fmul fast float %417, 0x4029D70A40000000
  %433 = fmul fast float %418, 0x4029D70A40000000
  %434 = call float @dx.op.unary.f32(i32 23, float %416)  ; Log(value)
  %435 = call float @dx.op.unary.f32(i32 23, float %417)  ; Log(value)
  %436 = call float @dx.op.unary.f32(i32 23, float %418)  ; Log(value)
  %437 = fmul fast float %434, 0x3FDAAAAAA0000000
  %438 = fmul fast float %435, 0x3FDAAAAAA0000000
  %439 = fmul fast float %436, 0x3FDAAAAAA0000000
  %440 = call float @dx.op.unary.f32(i32 21, float %437)  ; Exp(value)
  %441 = call float @dx.op.unary.f32(i32 21, float %438)  ; Exp(value)
  %442 = call float @dx.op.unary.f32(i32 21, float %439)  ; Exp(value)
  %443 = fmul fast float %440, 0x3FF0E147A0000000
  %444 = fmul fast float %441, 0x3FF0E147A0000000
  %445 = fmul fast float %442, 0x3FF0E147A0000000
  %446 = fadd fast float %443, 0xBFAC28F5C0000000
  %447 = fadd fast float %444, 0xBFAC28F5C0000000
  %448 = fadd fast float %445, 0xBFAC28F5C0000000
  %449 = select i1 %428, float %431, float %446
  %450 = select i1 %429, float %432, float %447
  %451 = select i1 %430, float %433, float %448
  %452 = fsub fast float 1.000000e+00, %449
  %453 = fsub fast float 1.000000e+00, %450
  %454 = fsub fast float 1.000000e+00, %451
  %455 = fcmp fast ole float %452, 0x3FA4B5DCC0000000
  %456 = fmul fast float %452, 0x3FB3D07220000000
  %457 = fsub fast float 0x3FF0E147A0000000, %449
  %458 = fmul fast float %457, 0x3FEE54EDE0000000
  %459 = call float @dx.op.unary.f32(i32 23, float %458)  ; Log(value)
  %460 = fmul fast float %459, 0x4003333340000000
  %461 = call float @dx.op.unary.f32(i32 21, float %460)  ; Exp(value)
  %462 = select i1 %455, float %456, float %461
  %463 = fcmp fast ole float %453, 0x3FA4B5DCC0000000
  %464 = fmul fast float %453, 0x3FB3D07220000000
  %465 = fsub fast float 0x3FF0E147A0000000, %450
  %466 = fmul fast float %465, 0x3FEE54EDE0000000
  %467 = call float @dx.op.unary.f32(i32 23, float %466)  ; Log(value)
  %468 = fmul fast float %467, 0x4003333340000000
  %469 = call float @dx.op.unary.f32(i32 21, float %468)  ; Exp(value)
  %470 = select i1 %463, float %464, float %469
  %471 = fcmp fast ole float %454, 0x3FA4B5DCC0000000
  %472 = fmul fast float %454, 0x3FB3D07220000000
  %473 = fsub fast float 0x3FF0E147A0000000, %451
  %474 = fmul fast float %473, 0x3FEE54EDE0000000
  %475 = call float @dx.op.unary.f32(i32 23, float %474)  ; Log(value)
  %476 = fmul fast float %475, 0x4003333340000000
  %477 = call float @dx.op.unary.f32(i32 21, float %476)  ; Exp(value)
  %478 = select i1 %471, float %472, float %477
  br label %491

; <label>:479                                     ; preds = %425
  %480 = call float @dx.op.dot3.f32(i32 55, float %416, float %417, float %418, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %481 = extractvalue %dx.types.CBufRet.f32 %422, 3
  %482 = fsub fast float %416, %480
  %483 = fsub fast float %417, %480
  %484 = fsub fast float %418, %480
  %485 = fmul fast float %481, %482
  %486 = fmul fast float %481, %483
  %487 = fmul fast float %481, %484
  %488 = fadd fast float %485, %480
  %489 = fadd fast float %486, %480
  %490 = fadd fast float %487, %480
  br label %491

; <label>:491                                     ; preds = %479, %427, %421
  %492 = phi float [ %462, %427 ], [ %488, %479 ], [ %416, %421 ]
  %493 = phi float [ %470, %427 ], [ %489, %479 ], [ %417, %421 ]
  %494 = phi float [ %478, %427 ], [ %490, %479 ], [ %418, %421 ]
  %495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %496 = extractvalue %dx.types.CBufRet.f32 %495, 0
  %497 = fcmp fast une float %496, 0.000000e+00
  br i1 %497, label %498, label %672, !dx.controlflow.hints !56

; <label>:498                                     ; preds = %491
  %499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %500 = extractvalue %dx.types.CBufRet.f32 %499, 0
  %501 = extractvalue %dx.types.CBufRet.f32 %499, 1
  %502 = fsub fast float %25, %500
  %503 = fsub fast float %26, %501
  %504 = extractvalue %dx.types.CBufRet.f32 %499, 2
  %505 = extractvalue %dx.types.CBufRet.f32 %499, 3
  %506 = fmul fast float %502, %504
  %507 = fmul fast float %503, %505
  %508 = call float @dx.op.unary.f32(i32 6, float %496)  ; FAbs(value)
  %509 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %10, float %506, float %507, float undef, float undef, i32 0, i32 0, i32 undef, float %508)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %510 = extractvalue %dx.types.ResRet.f32 %509, 0
  %511 = extractvalue %dx.types.ResRet.f32 %509, 1
  %512 = extractvalue %dx.types.ResRet.f32 %509, 2
  %513 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %514 = extractvalue %dx.types.CBufRet.i32 %513, 3
  %515 = and i32 %514, 3
  %516 = icmp ne i32 %515, 0
  %517 = and i32 %514, 4
  %518 = icmp eq i32 %517, 0
  %519 = and i1 %516, %518
  br i1 %519, label %520, label %564

; <label>:520                                     ; preds = %498
  %521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %522 = extractvalue %dx.types.CBufRet.f32 %521, 0
  %523 = fcmp fast oge float %511, %522
  %524 = zext i1 %523 to i32
  br i1 %523, label %525, label %564

; <label>:525                                     ; preds = %520
  %526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 237)  ; CBufferLoadLegacy(handle,regIndex)
  %527 = extractvalue %dx.types.CBufRet.f32 %526, 3
  %528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %529 = extractvalue %dx.types.CBufRet.f32 %528, 2
  %530 = fcmp fast ogt float %529, 0.000000e+00
  br i1 %530, label %531, label %539, !dx.controlflow.hints !57

; <label>:531                                     ; preds = %525
  %532 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %10, float %511, float 0.000000e+00, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %533 = extractvalue %dx.types.ResRet.f32 %532, 0
  %534 = extractvalue %dx.types.ResRet.f32 %532, 1
  %535 = extractvalue %dx.types.ResRet.f32 %532, 2
  %536 = fcmp fast ogt float %529, 1.500000e+00
  %537 = select i1 %536, float %533, float %534
  %538 = select i1 %536, float %533, float %535
  br label %557

; <label>:539                                     ; preds = %525
  %540 = call float @dx.op.unary.f32(i32 7, float %511)  ; Saturate(value)
  %541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 238)  ; CBufferLoadLegacy(handle,regIndex)
  %542 = extractvalue %dx.types.CBufRet.f32 %541, 0
  %543 = extractvalue %dx.types.CBufRet.f32 %541, 1
  %544 = extractvalue %dx.types.CBufRet.f32 %541, 2
  %545 = extractvalue %dx.types.CBufRet.f32 %526, 0
  %546 = extractvalue %dx.types.CBufRet.f32 %526, 1
  %547 = extractvalue %dx.types.CBufRet.f32 %526, 2
  %548 = fsub fast float %542, %545
  %549 = fsub fast float %543, %546
  %550 = fsub fast float %544, %547
  %551 = fmul fast float %548, %540
  %552 = fmul fast float %549, %540
  %553 = fmul fast float %550, %540
  %554 = fadd fast float %551, %545
  %555 = fadd fast float %552, %546
  %556 = fadd fast float %553, %547
  br label %557

; <label>:557                                     ; preds = %539, %531
  %558 = phi float [ %533, %531 ], [ %554, %539 ]
  %559 = phi float [ %537, %531 ], [ %555, %539 ]
  %560 = phi float [ %538, %531 ], [ %556, %539 ]
  %561 = fmul fast float %558, %527
  %562 = fmul fast float %559, %527
  %563 = fmul fast float %560, %527
  br label %564

; <label>:564                                     ; preds = %557, %520, %498
  %565 = phi float [ %561, %557 ], [ %510, %498 ], [ %510, %520 ]
  %566 = phi float [ %562, %557 ], [ %511, %498 ], [ %510, %520 ]
  %567 = phi float [ %563, %557 ], [ %512, %498 ], [ %510, %520 ]
  %568 = phi i32 [ %524, %557 ], [ 0, %498 ], [ %524, %520 ]
  %569 = icmp eq i32 %568, 0
  br i1 %569, label %570, label %624

; <label>:570                                     ; preds = %564
  %571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %572 = extractvalue %dx.types.CBufRet.f32 %571, 0
  %573 = extractvalue %dx.types.CBufRet.f32 %571, 1
  %574 = extractvalue %dx.types.CBufRet.f32 %571, 2
  %575 = call float @dx.op.dot3.f32(i32 55, float %565, float %566, float %567, float %572, float %573, float %574)  ; Dot3(ax,ay,az,bx,by,bz)
  %576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %577 = extractvalue %dx.types.CBufRet.f32 %576, 0
  %578 = extractvalue %dx.types.CBufRet.f32 %576, 1
  %579 = extractvalue %dx.types.CBufRet.f32 %576, 2
  %580 = call float @dx.op.dot3.f32(i32 55, float %565, float %566, float %567, float %577, float %578, float %579)  ; Dot3(ax,ay,az,bx,by,bz)
  %581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %582 = extractvalue %dx.types.CBufRet.f32 %581, 0
  %583 = extractvalue %dx.types.CBufRet.f32 %581, 1
  %584 = extractvalue %dx.types.CBufRet.f32 %581, 2
  %585 = call float @dx.op.dot3.f32(i32 55, float %565, float %566, float %567, float %582, float %583, float %584)  ; Dot3(ax,ay,az,bx,by,bz)
  %586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %587 = extractvalue %dx.types.CBufRet.f32 %586, 2
  %588 = fmul fast float %587, %575
  %589 = fmul fast float %587, %580
  %590 = fmul fast float %587, %585
  %591 = fadd fast float %588, 9.765625e-04
  %592 = fadd fast float %589, 9.765625e-04
  %593 = fadd fast float %590, 9.765625e-04
  %594 = call float @dx.op.unary.f32(i32 23, float %591)  ; Log(value)
  %595 = call float @dx.op.unary.f32(i32 23, float %592)  ; Log(value)
  %596 = call float @dx.op.unary.f32(i32 23, float %593)  ; Log(value)
  %597 = fadd fast float %594, 1.000000e+01
  %598 = fadd fast float %595, 1.000000e+01
  %599 = fadd fast float %596, 1.000000e+01
  %600 = fmul fast float %597, 0x3FA99999A0000000
  %601 = fmul fast float %598, 0x3FA99999A0000000
  %602 = fmul fast float %599, 0x3FA99999A0000000
  %603 = call float @dx.op.unary.f32(i32 7, float %600)  ; Saturate(value)
  %604 = call float @dx.op.unary.f32(i32 7, float %601)  ; Saturate(value)
  %605 = call float @dx.op.unary.f32(i32 7, float %602)  ; Saturate(value)
  %606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %607 = extractvalue %dx.types.CBufRet.f32 %606, 0
  %608 = extractvalue %dx.types.CBufRet.f32 %606, 1
  %609 = extractvalue %dx.types.CBufRet.f32 %606, 2
  %610 = fmul fast float %607, %603
  %611 = fmul fast float %608, %604
  %612 = fmul fast float %609, %605
  %613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %614 = extractvalue %dx.types.CBufRet.f32 %613, 0
  %615 = extractvalue %dx.types.CBufRet.f32 %613, 1
  %616 = extractvalue %dx.types.CBufRet.f32 %613, 2
  %617 = fadd fast float %610, %614
  %618 = fadd fast float %611, %615
  %619 = fadd fast float %612, %616
  %620 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %10, float %617, float %618, float %619, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %621 = extractvalue %dx.types.ResRet.f32 %620, 0
  %622 = extractvalue %dx.types.ResRet.f32 %620, 1
  %623 = extractvalue %dx.types.ResRet.f32 %620, 2
  br label %624

; <label>:624                                     ; preds = %570, %564
  %625 = phi float [ %565, %564 ], [ %621, %570 ]
  %626 = phi float [ %566, %564 ], [ %622, %570 ]
  %627 = phi float [ %567, %564 ], [ %623, %570 ]
  %628 = fcmp fast ole float %625, 0x3FA4B5DCC0000000
  %629 = fmul fast float %625, 0x3FB3D07220000000
  %630 = fadd fast float %625, 0x3FAC28F5C0000000
  %631 = fmul fast float %630, 0x3FEE54EDE0000000
  %632 = call float @dx.op.unary.f32(i32 23, float %631)  ; Log(value)
  %633 = fmul fast float %632, 0x4003333340000000
  %634 = call float @dx.op.unary.f32(i32 21, float %633)  ; Exp(value)
  %635 = select i1 %628, float %629, float %634
  %636 = fcmp fast ole float %626, 0x3FA4B5DCC0000000
  %637 = fmul fast float %626, 0x3FB3D07220000000
  %638 = fadd fast float %626, 0x3FAC28F5C0000000
  %639 = fmul fast float %638, 0x3FEE54EDE0000000
  %640 = call float @dx.op.unary.f32(i32 23, float %639)  ; Log(value)
  %641 = fmul fast float %640, 0x4003333340000000
  %642 = call float @dx.op.unary.f32(i32 21, float %641)  ; Exp(value)
  %643 = select i1 %636, float %637, float %642
  %644 = fcmp fast ole float %627, 0x3FA4B5DCC0000000
  %645 = fmul fast float %627, 0x3FB3D07220000000
  %646 = fadd fast float %627, 0x3FAC28F5C0000000
  %647 = fmul fast float %646, 0x3FEE54EDE0000000
  %648 = call float @dx.op.unary.f32(i32 23, float %647)  ; Log(value)
  %649 = fmul fast float %648, 0x4003333340000000
  %650 = call float @dx.op.unary.f32(i32 21, float %649)  ; Exp(value)
  %651 = select i1 %644, float %645, float %650
  %652 = fcmp fast olt float %496, 0.000000e+00
  br i1 %652, label %653, label %665

; <label>:653                                     ; preds = %624
  %654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %655 = extractvalue %dx.types.CBufRet.f32 %654, 0
  %656 = extractvalue %dx.types.CBufRet.f32 %654, 1
  %657 = extractvalue %dx.types.CBufRet.f32 %654, 2
  %658 = call float @dx.op.dot3.f32(i32 55, float %635, float %643, float %651, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %659 = fsub fast float %658, %655
  %660 = fmul fast float %659, %656
  %661 = call float @dx.op.unary.f32(i32 7, float %660)  ; Saturate(value)
  %662 = fsub fast float 1.000000e+00, %657
  %663 = fmul fast float %661, %662
  %664 = fadd fast float %663, %657
  br label %665

; <label>:665                                     ; preds = %653, %624
  %666 = phi float [ %664, %653 ], [ %635, %624 ]
  %667 = phi float [ %664, %653 ], [ %643, %624 ]
  %668 = phi float [ %664, %653 ], [ %651, %624 ]
  %669 = fmul fast float %666, %492
  %670 = fmul fast float %667, %493
  %671 = fmul fast float %668, %494
  br label %672

; <label>:672                                     ; preds = %665, %491
  %673 = phi float [ %669, %665 ], [ %492, %491 ]
  %674 = phi float [ %670, %665 ], [ %493, %491 ]
  %675 = phi float [ %671, %665 ], [ %494, %491 ]
  %676 = extractvalue %dx.types.CBufRet.f32 %495, 1
  %677 = fcmp fast ogt float %676, 0.000000e+00
  br i1 %677, label %678, label %719, !dx.controlflow.hints !58

; <label>:678                                     ; preds = %672
  %679 = extractvalue %dx.types.CBufRet.f32 %495, 2
  %680 = bitcast float %679 to i32
  %681 = and i32 %680, 255
  %682 = uitofp i32 %681 to float
  %683 = lshr i32 %680, 8
  %684 = and i32 %683, 255
  %685 = uitofp i32 %684 to float
  %686 = lshr i32 %680, 16
  %687 = and i32 %686, 255
  %688 = uitofp i32 %687 to float
  %689 = fmul fast float %688, 0x3F70101020000000
  %690 = lshr i32 %680, 24
  %691 = uitofp i32 %690 to float
  %692 = fmul fast float %691, 0x3F70101020000000
  %693 = fadd fast float %688, %682
  %694 = fmul fast float %693, 0x3F70101020000000
  %695 = fadd fast float %685, %691
  %696 = fmul fast float %695, 0x3F70101020000000
  %697 = fdiv fast float %25, %694
  %698 = fdiv fast float %26, %696
  %699 = fsub fast float -0.000000e+00, %697
  %700 = fsub fast float -0.000000e+00, %698
  %701 = fcmp fast oge float %697, %699
  %702 = fcmp fast oge float %698, %700
  %703 = call float @dx.op.unary.f32(i32 6, float %697)  ; FAbs(value)
  %704 = call float @dx.op.unary.f32(i32 6, float %698)  ; FAbs(value)
  %705 = call float @dx.op.unary.f32(i32 22, float %703)  ; Frc(value)
  %706 = call float @dx.op.unary.f32(i32 22, float %704)  ; Frc(value)
  %707 = fsub fast float -0.000000e+00, %705
  %708 = fsub fast float -0.000000e+00, %706
  %709 = select i1 %701, float %705, float %707
  %710 = select i1 %702, float %706, float %708
  %711 = fmul fast float %694, %709
  %712 = fmul fast float %710, %696
  %713 = fcmp fast olt float %711, %689
  %714 = fcmp fast olt float %712, %692
  %715 = or i1 %713, %714
  br i1 %715, label %716, label %719, !dx.controlflow.hints !59

; <label>:716                                     ; preds = %678
  %717 = fsub fast float 1.000000e+00, %676
  %718 = fmul fast float %717, %334
  br label %719

; <label>:719                                     ; preds = %716, %678, %672
  %720 = phi float [ %718, %716 ], [ %334, %678 ], [ %334, %672 ]
  %721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %722 = extractvalue %dx.types.CBufRet.f32 %721, 3
  %723 = fcmp fast ogt float %722, 0.000000e+00
  br i1 %723, label %724, label %807, !dx.controlflow.hints !60

; <label>:724                                     ; preds = %719
  %725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %726 = extractvalue %dx.types.CBufRet.f32 %725, 2
  %727 = extractvalue %dx.types.CBufRet.f32 %725, 3
  %728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %729 = extractvalue %dx.types.CBufRet.f32 %728, 3
  %730 = fmul fast float %729, 1.000000e+01
  %731 = call float @dx.op.unary.f32(i32 27, float %730)  ; Round_ni(value)
  %732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %733 = extractvalue %dx.types.CBufRet.f32 %732, 0
  %734 = extractvalue %dx.types.CBufRet.f32 %732, 1
  %735 = fmul fast float %733, %25
  %736 = fmul fast float %734, %26
  %737 = call float @dx.op.unary.f32(i32 27, float %735)  ; Round_ni(value)
  %738 = call float @dx.op.unary.f32(i32 27, float %736)  ; Round_ni(value)
  %739 = fmul fast float %731, 0x4002B851E0000000
  %740 = call float @dx.op.unary.f32(i32 22, float %739)  ; Frc(value)
  %741 = fadd fast float %740, 0x3FB99999A0000000
  %742 = fadd fast float %741, %737
  %743 = fadd fast float %741, %738
  %744 = fmul fast float %742, 0x3FE1BEDF00000000
  %745 = call float @dx.op.unary.f32(i32 22, float %744)  ; Frc(value)
  %746 = fmul fast float %742, %745
  %747 = fadd fast float %746, %743
  %748 = fmul fast float %743, 0x3FD3BEBE20000000
  %749 = call float @dx.op.unary.f32(i32 22, float %748)  ; Frc(value)
  %750 = fmul fast float %743, %749
  %751 = fadd fast float %750, %742
  %752 = fmul fast float %747, %751
  %753 = call float @dx.op.unary.f32(i32 22, float %752)  ; Frc(value)
  %754 = extractvalue %dx.types.CBufRet.f32 %732, 3
  %755 = bitcast float %754 to i32
  %756 = and i32 %755, 255
  %757 = uitofp i32 %756 to float
  %758 = fmul fast float %757, 0x3F70101020000000
  %759 = fmul fast float %758, %726
  %760 = fcmp fast olt float %753, %759
  br i1 %760, label %761, label %768, !dx.controlflow.hints !61

; <label>:761                                     ; preds = %724
  %762 = fmul fast float %753, 0x4057091680000000
  %763 = call float @dx.op.unary.f32(i32 22, float %762)  ; Frc(value)
  %764 = fmul fast float %763, %673
  %765 = fmul fast float %763, %675
  %766 = fsub fast float 1.000000e+00, %763
  %767 = fmul fast float %766, %674
  br label %768

; <label>:768                                     ; preds = %761, %724
  %769 = phi float [ %764, %761 ], [ %673, %724 ]
  %770 = phi float [ %767, %761 ], [ %674, %724 ]
  %771 = phi float [ %765, %761 ], [ %675, %724 ]
  %772 = fmul fast float %753, 0x4028B0A3E0000000
  %773 = call float @dx.op.unary.f32(i32 22, float %772)  ; Frc(value)
  %774 = fmul fast float %758, %727
  %775 = fcmp fast olt float %773, %774
  br i1 %775, label %776, label %795, !dx.controlflow.hints !62

; <label>:776                                     ; preds = %768
  %777 = extractvalue %dx.types.CBufRet.f32 %732, 2
  %778 = fmul fast float %777, %25
  %779 = call float @dx.op.unary.f32(i32 27, float %778)  ; Round_ni(value)
  %780 = fmul fast float %779, 0x3FD5555560000000
  %781 = call float @dx.op.unary.f32(i32 22, float %780)  ; Frc(value)
  %782 = extractvalue %dx.types.CBufRet.f32 %725, 0
  %783 = extractvalue %dx.types.CBufRet.f32 %725, 1
  %784 = fcmp fast olt float %781, 0x3FD51EB860000000
  br i1 %784, label %788, label %785, !dx.controlflow.hints !63

; <label>:785                                     ; preds = %776
  %786 = fcmp fast olt float %781, 0x3FE51EB860000000
  br i1 %786, label %788, label %787, !dx.controlflow.hints !64

; <label>:787                                     ; preds = %785
  br label %788

; <label>:788                                     ; preds = %787, %785, %776
  %789 = phi float [ %782, %787 ], [ %783, %776 ], [ %782, %785 ]
  %790 = phi float [ %782, %787 ], [ %782, %776 ], [ %783, %785 ]
  %791 = phi float [ %783, %787 ], [ %782, %776 ], [ %782, %785 ]
  %792 = fmul fast float %789, %769
  %793 = fmul fast float %790, %770
  %794 = fmul fast float %791, %771
  br label %795

; <label>:795                                     ; preds = %788, %768
  %796 = phi float [ %792, %788 ], [ %769, %768 ]
  %797 = phi float [ %793, %788 ], [ %770, %768 ]
  %798 = phi float [ %794, %788 ], [ %771, %768 ]
  %799 = fmul fast float %753, 0x40223EF9E0000000
  %800 = call float @dx.op.unary.f32(i32 22, float %799)  ; Frc(value)
  %801 = fmul fast float %758, %722
  %802 = fmul fast float %800, %800
  %803 = fmul fast float %802, %801
  %804 = fsub fast float 1.000000e+00, %803
  %805 = call float @dx.op.unary.f32(i32 7, float %804)  ; Saturate(value)
  %806 = fmul fast float %805, %720
  br label %807

; <label>:807                                     ; preds = %795, %719
  %808 = phi float [ %796, %795 ], [ %673, %719 ]
  %809 = phi float [ %797, %795 ], [ %674, %719 ]
  %810 = phi float [ %798, %795 ], [ %675, %719 ]
  %811 = phi float [ %806, %795 ], [ %720, %719 ]
  %812 = extractvalue %dx.types.CBufRet.f32 %422, 0
  %813 = fcmp fast ogt float %812, 0.000000e+00
  br i1 %813, label %814, label %863, !dx.controlflow.hints !65

; <label>:814                                     ; preds = %807
  %815 = extractvalue %dx.types.CBufRet.f32 %422, 1
  %816 = fmul fast float %812, %15
  %817 = fmul fast float %815, %16
  %818 = call float @dx.op.unary.f32(i32 85, float %816)  ; DerivFineX(value)
  %819 = call float @dx.op.unary.f32(i32 86, float %816)  ; DerivFineY(value)
  %820 = call float @dx.op.unary.f32(i32 85, float %817)  ; DerivFineX(value)
  %821 = call float @dx.op.unary.f32(i32 86, float %817)  ; DerivFineY(value)
  %822 = fmul fast float %821, %818
  %823 = fmul fast float %820, %819
  %824 = fsub fast float %822, %823
  %825 = fdiv fast float 1.000000e+00, %824
  %826 = fmul fast float %825, %821
  %827 = fmul fast float %825, %819
  %828 = fmul fast float %825, %820
  %829 = fmul fast float %825, %818
  %830 = fmul fast float %826, %826
  %831 = fmul fast float %828, %828
  %832 = fadd fast float %830, %831
  %833 = call float @dx.op.unary.f32(i32 24, float %832)  ; Sqrt(value)
  %834 = fmul fast float %827, %827
  %835 = fmul fast float %829, %829
  %836 = fadd fast float %834, %835
  %837 = call float @dx.op.unary.f32(i32 24, float %836)  ; Sqrt(value)
  %838 = fmul fast float %833, %816
  %839 = fmul fast float %837, %817
  %840 = fsub fast float %838, %833
  %841 = fsub fast float %839, %837
  %842 = fsub fast float -0.000000e+00, %838
  %843 = fsub fast float -0.000000e+00, %839
  %844 = call float @dx.op.binary.f32(i32 35, float %842, float %840)  ; FMax(a,b)
  %845 = call float @dx.op.binary.f32(i32 35, float %843, float %841)  ; FMax(a,b)
  %846 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %844)  ; FMax(a,b)
  %847 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %845)  ; FMax(a,b)
  %848 = fmul fast float %846, %846
  %849 = fmul fast float %847, %847
  %850 = fadd fast float %849, %848
  %851 = call float @dx.op.unary.f32(i32 24, float %850)  ; Sqrt(value)
  %852 = call float @dx.op.binary.f32(i32 35, float %844, float %845)  ; FMax(a,b)
  %853 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %852)  ; FMin(a,b)
  %854 = fadd fast float %851, -1.000000e+00
  %855 = fadd fast float %854, %853
  %856 = fmul fast float %855, -5.000000e-01
  %857 = call float @dx.op.unary.f32(i32 7, float %856)  ; Saturate(value)
  %858 = fmul fast float %857, 2.000000e+00
  %859 = fsub fast float 3.000000e+00, %858
  %860 = fmul fast float %857, %857
  %861 = fmul fast float %860, %811
  %862 = fmul fast float %861, %859
  br label %863

; <label>:863                                     ; preds = %814, %807
  %864 = phi float [ %862, %814 ], [ %811, %807 ]
  %865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %866 = extractvalue %dx.types.CBufRet.f32 %865, 0
  %867 = extractvalue %dx.types.CBufRet.f32 %865, 1
  %868 = extractvalue %dx.types.CBufRet.f32 %865, 2
  %869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %870 = extractvalue %dx.types.CBufRet.f32 %869, 0
  %871 = extractvalue %dx.types.CBufRet.f32 %869, 1
  %872 = extractvalue %dx.types.CBufRet.f32 %869, 2
  %873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %874 = extractvalue %dx.types.CBufRet.f32 %873, 0
  %875 = extractvalue %dx.types.CBufRet.f32 %873, 1
  %876 = extractvalue %dx.types.CBufRet.f32 %873, 2
  %877 = fmul fast float %866, %808
  %878 = call float @dx.op.tertiary.f32(i32 46, float %867, float %809, float %877)  ; FMad(a,b,c)
  %879 = call float @dx.op.tertiary.f32(i32 46, float %868, float %810, float %878)  ; FMad(a,b,c)
  %880 = fmul fast float %870, %808
  %881 = call float @dx.op.tertiary.f32(i32 46, float %871, float %809, float %880)  ; FMad(a,b,c)
  %882 = call float @dx.op.tertiary.f32(i32 46, float %872, float %810, float %881)  ; FMad(a,b,c)
  %883 = fmul fast float %874, %808
  %884 = call float @dx.op.tertiary.f32(i32 46, float %875, float %809, float %883)  ; FMad(a,b,c)
  %885 = call float @dx.op.tertiary.f32(i32 46, float %876, float %810, float %884)  ; FMad(a,b,c)
  br i1 %341, label %886, label %1193, !dx.controlflow.hints !66

; <label>:886                                     ; preds = %863
  %887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %888 = extractvalue %dx.types.CBufRet.f32 %887, 0
  %889 = bitcast float %888 to i32
  %890 = and i32 %889, 128
  %891 = icmp eq i32 %890, 0
  br i1 %891, label %906, label %892

; <label>:892                                     ; preds = %886
  %893 = call float @dx.op.unary.f32(i32 24, float %879)  ; Sqrt(value)
  %894 = call float @dx.op.unary.f32(i32 24, float %882)  ; Sqrt(value)
  %895 = call float @dx.op.unary.f32(i32 24, float %885)  ; Sqrt(value)
  %896 = fmul fast float %893, 9.687500e-01
  %897 = fmul fast float %894, 9.687500e-01
  %898 = fmul fast float %895, 9.687500e-01
  %899 = fadd fast float %896, 1.562500e-02
  %900 = fadd fast float %897, 1.562500e-02
  %901 = fadd fast float %898, 1.562500e-02
  %902 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %10, float %899, float %900, float %901, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %903 = extractvalue %dx.types.ResRet.f32 %902, 0
  %904 = extractvalue %dx.types.ResRet.f32 %902, 1
  %905 = extractvalue %dx.types.ResRet.f32 %902, 2
  br label %1193

; <label>:906                                     ; preds = %886
  %907 = and i32 %889, 127
  switch i32 %907, label %1193 [
    i32 1, label %908
    i32 2, label %908
    i32 0, label %908
    i32 3, label %938
    i32 4, label %1059
  ]

; <label>:908                                     ; preds = %906, %906, %906
  %909 = call float @dx.op.unary.f32(i32 7, float %879)  ; Saturate(value)
  %910 = call float @dx.op.unary.f32(i32 7, float %882)  ; Saturate(value)
  %911 = call float @dx.op.unary.f32(i32 7, float %885)  ; Saturate(value)
  %912 = call float @dx.op.unary.f32(i32 23, float %909)  ; Log(value)
  %913 = call float @dx.op.unary.f32(i32 23, float %910)  ; Log(value)
  %914 = call float @dx.op.unary.f32(i32 23, float %911)  ; Log(value)
  %915 = fmul fast float %912, 0x3FDAAAAAA0000000
  %916 = fmul fast float %913, 0x3FDAAAAAA0000000
  %917 = fmul fast float %914, 0x3FDAAAAAA0000000
  %918 = call float @dx.op.unary.f32(i32 21, float %915)  ; Exp(value)
  %919 = call float @dx.op.unary.f32(i32 21, float %916)  ; Exp(value)
  %920 = call float @dx.op.unary.f32(i32 21, float %917)  ; Exp(value)
  %921 = fmul fast float %918, 0x3FF0E147A0000000
  %922 = fmul fast float %919, 0x3FF0E147A0000000
  %923 = fmul fast float %920, 0x3FF0E147A0000000
  %924 = fadd fast float %921, 0xBFAC28F5C0000000
  %925 = fadd fast float %922, 0xBFAC28F5C0000000
  %926 = fadd fast float %923, 0xBFAC28F5C0000000
  %927 = call float @dx.op.unary.f32(i32 7, float %924)  ; Saturate(value)
  %928 = call float @dx.op.unary.f32(i32 7, float %925)  ; Saturate(value)
  %929 = call float @dx.op.unary.f32(i32 7, float %926)  ; Saturate(value)
  %930 = extractvalue %dx.types.CBufRet.f32 %887, 2
  %931 = extractvalue %dx.types.CBufRet.f32 %887, 3
  %932 = fmul fast float %930, %927
  %933 = fmul fast float %930, %928
  %934 = fmul fast float %930, %929
  %935 = fadd fast float %932, %931
  %936 = fadd fast float %933, %931
  %937 = fadd fast float %934, %931
  br label %1193

; <label>:938                                     ; preds = %906
  %939 = fmul fast float %879, 0x4163D57C00000000
  %940 = fmul fast float %882, 0x4163D57C00000000
  %941 = fmul fast float %885, 0x4163D57C00000000
  %942 = fadd fast float %939, 9.999980e+05
  %943 = fadd fast float %940, 9.999980e+05
  %944 = fadd fast float %941, 9.999980e+05
  %945 = fmul fast float %942, %879
  %946 = fmul fast float %943, %882
  %947 = fmul fast float %944, %885
  %948 = fadd fast float %945, 0xC0AFE17A60000000
  %949 = fadd fast float %946, 0xC0AFE17A60000000
  %950 = fadd fast float %947, 0xC0AFE17A60000000
  %951 = fmul fast float %948, %879
  %952 = fmul fast float %949, %882
  %953 = fmul fast float %950, %885
  %954 = fmul fast float %879, 0x40F753C340000000
  %955 = fmul fast float %882, 0x40F753C340000000
  %956 = fmul fast float %885, 0x40F753C340000000
  %957 = fsub fast float 9.999990e+06, %954
  %958 = fsub fast float 9.999990e+06, %955
  %959 = fsub fast float 9.999990e+06, %956
  %960 = fmul fast float %957, %879
  %961 = fmul fast float %958, %882
  %962 = fmul fast float %959, %885
  %963 = fadd fast float %960, 0x4136D1DD80000000
  %964 = fadd fast float %961, 0x4136D1DD80000000
  %965 = fadd fast float %962, 0x4136D1DD80000000
  %966 = fmul fast float %963, %879
  %967 = fmul fast float %964, %882
  %968 = fmul fast float %965, %885
  %969 = fadd fast float %966, 1.000000e+00
  %970 = fadd fast float %967, 1.000000e+00
  %971 = fadd fast float %968, 1.000000e+00
  %972 = fdiv fast float %951, %969
  %973 = fdiv fast float %952, %970
  %974 = fdiv fast float %953, %971
  %975 = call float @dx.op.unary.f32(i32 7, float %972)  ; Saturate(value)
  %976 = call float @dx.op.unary.f32(i32 7, float %973)  ; Saturate(value)
  %977 = call float @dx.op.unary.f32(i32 7, float %974)  ; Saturate(value)
  %978 = extractvalue %dx.types.CBufRet.f32 %887, 1
  %979 = fmul fast float %975, 0x3FE413A920000000
  %980 = call float @dx.op.tertiary.f32(i32 46, float 0x3FD5134040000000, float %976, float %979)  ; FMad(a,b,c)
  %981 = call float @dx.op.tertiary.f32(i32 46, float 0x3FA62B6AE0000000, float %977, float %980)  ; FMad(a,b,c)
  %982 = fmul fast float %975, 0x3FB1B089A0000000
  %983 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED6C8B40000000, float %976, float %982)  ; FMad(a,b,c)
  %984 = call float @dx.op.tertiary.f32(i32 46, float 0x3F8758E220000000, float %977, float %983)  ; FMad(a,b,c)
  %985 = fmul fast float %975, 0x3F90CB2960000000
  %986 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB6872B00000000, float %976, float %985)  ; FMad(a,b,c)
  %987 = call float @dx.op.tertiary.f32(i32 46, float 0x3FECA8C160000000, float %977, float %986)  ; FMad(a,b,c)
  %988 = fmul fast float %981, %978
  %989 = fmul fast float %984, %978
  %990 = fmul fast float %987, %978
  %991 = fmul fast float %988, 0x3F847AE140000000
  %992 = fmul fast float %989, 0x3F847AE140000000
  %993 = fmul fast float %990, 0x3F847AE140000000
  %994 = fmul fast float %988, 0x40B4D2F520000000
  %995 = fmul fast float %989, 0x40B4D2F520000000
  %996 = fmul fast float %990, 0x40B4D2F520000000
  %997 = fadd fast float %994, 0x41869ECF20000000
  %998 = fadd fast float %995, 0x41869ECF20000000
  %999 = fadd fast float %996, 0x41869ECF20000000
  %1000 = fmul fast float %997, %991
  %1001 = fmul fast float %998, %992
  %1002 = fmul fast float %999, %993
  %1003 = fadd fast float %1000, 0x417BB79C60000000
  %1004 = fadd fast float %1001, 0x417BB79C60000000
  %1005 = fadd fast float %1002, 0x417BB79C60000000
  %1006 = fmul fast float %1003, %991
  %1007 = fmul fast float %1004, %992
  %1008 = fmul fast float %1005, %993
  %1009 = fadd fast float %1006, 0x41218DE180000000
  %1010 = fadd fast float %1007, 0x41218DE180000000
  %1011 = fadd fast float %1008, 0x41218DE180000000
  %1012 = fmul fast float %1009, %991
  %1013 = fmul fast float %1010, %992
  %1014 = fmul fast float %1011, %993
  %1015 = fadd fast float %1012, 0x4077F174E0000000
  %1016 = fadd fast float %1013, 0x4077F174E0000000
  %1017 = fadd fast float %1014, 0x4077F174E0000000
  %1018 = fmul fast float %1015, %991
  %1019 = fmul fast float %1016, %992
  %1020 = fmul fast float %1017, %993
  %1021 = fadd fast float %1018, 0x3F3FF79B80000000
  %1022 = fadd fast float %1019, 0x3F3FF79B80000000
  %1023 = fadd fast float %1020, 0x3F3FF79B80000000
  %1024 = fmul fast float %988, 0x412442D320000000
  %1025 = fmul fast float %989, 0x412442D320000000
  %1026 = fmul fast float %990, 0x412442D320000000
  %1027 = fadd fast float %1024, 0x419385D5C0000000
  %1028 = fadd fast float %1025, 0x419385D5C0000000
  %1029 = fadd fast float %1026, 0x419385D5C0000000
  %1030 = fmul fast float %1027, %991
  %1031 = fmul fast float %1028, %992
  %1032 = fmul fast float %1029, %993
  %1033 = fadd fast float %1030, 4.182885e+06
  %1034 = fadd fast float %1031, 4.182885e+06
  %1035 = fadd fast float %1032, 4.182885e+06
  %1036 = fmul fast float %1033, %991
  %1037 = fmul fast float %1034, %992
  %1038 = fmul fast float %1035, %993
  %1039 = fadd fast float %1036, 0x40C4D633C0000000
  %1040 = fadd fast float %1037, 0x40C4D633C0000000
  %1041 = fadd fast float %1038, 0x40C4D633C0000000
  %1042 = fmul fast float %1039, %991
  %1043 = fmul fast float %1040, %992
  %1044 = fmul fast float %1041, %993
  %1045 = fadd fast float %1042, 1.000000e+00
  %1046 = fadd fast float %1043, 1.000000e+00
  %1047 = fadd fast float %1044, 1.000000e+00
  %1048 = fdiv fast float %1021, %1045
  %1049 = fdiv fast float %1022, %1046
  %1050 = fdiv fast float %1023, %1047
  %1051 = extractvalue %dx.types.CBufRet.f32 %887, 2
  %1052 = extractvalue %dx.types.CBufRet.f32 %887, 3
  %1053 = fmul fast float %1051, %1048
  %1054 = fmul fast float %1051, %1049
  %1055 = fmul fast float %1051, %1050
  %1056 = fadd fast float %1053, %1052
  %1057 = fadd fast float %1054, %1052
  %1058 = fadd fast float %1055, %1052
  br label %1193

; <label>:1059                                    ; preds = %906
  %1060 = fmul fast float %879, 0x4163D57C00000000
  %1061 = fmul fast float %882, 0x4163D57C00000000
  %1062 = fmul fast float %885, 0x4163D57C00000000
  %1063 = fadd fast float %1060, 9.999980e+05
  %1064 = fadd fast float %1061, 9.999980e+05
  %1065 = fadd fast float %1062, 9.999980e+05
  %1066 = fmul fast float %1063, %879
  %1067 = fmul fast float %1064, %882
  %1068 = fmul fast float %1065, %885
  %1069 = fadd fast float %1066, 0xC0AFE17A60000000
  %1070 = fadd fast float %1067, 0xC0AFE17A60000000
  %1071 = fadd fast float %1068, 0xC0AFE17A60000000
  %1072 = fmul fast float %1069, %879
  %1073 = fmul fast float %1070, %882
  %1074 = fmul fast float %1071, %885
  %1075 = fmul fast float %879, 0x40F753C340000000
  %1076 = fmul fast float %882, 0x40F753C340000000
  %1077 = fmul fast float %885, 0x40F753C340000000
  %1078 = fsub fast float 9.999990e+06, %1075
  %1079 = fsub fast float 9.999990e+06, %1076
  %1080 = fsub fast float 9.999990e+06, %1077
  %1081 = fmul fast float %1078, %879
  %1082 = fmul fast float %1079, %882
  %1083 = fmul fast float %1080, %885
  %1084 = fadd fast float %1081, 0x4136D1DD80000000
  %1085 = fadd fast float %1082, 0x4136D1DD80000000
  %1086 = fadd fast float %1083, 0x4136D1DD80000000
  %1087 = fmul fast float %1084, %879
  %1088 = fmul fast float %1085, %882
  %1089 = fmul fast float %1086, %885
  %1090 = fadd fast float %1087, 1.000000e+00
  %1091 = fadd fast float %1088, 1.000000e+00
  %1092 = fadd fast float %1089, 1.000000e+00
  %1093 = fdiv fast float %1072, %1090
  %1094 = fdiv fast float %1073, %1091
  %1095 = fdiv fast float %1074, %1092
  %1096 = call float @dx.op.unary.f32(i32 7, float %1093)  ; Saturate(value)
  %1097 = call float @dx.op.unary.f32(i32 7, float %1094)  ; Saturate(value)
  %1098 = call float @dx.op.unary.f32(i32 7, float %1095)  ; Saturate(value)
  %1099 = extractvalue %dx.types.CBufRet.f32 %887, 1
  %1100 = fmul fast float %1096, 0x3FEA519BC0000000
  %1101 = call float @dx.op.tertiary.f32(i32 46, float 0x3FC6B990A0000000, float %1097, float %1100)  ; FMad(a,b,c)
  %1102 = fmul fast float %1096, 0x3FA0FED480000000
  %1103 = call float @dx.op.tertiary.f32(i32 46, float 0x3FEEF012C0000000, float %1097, float %1102)  ; FMad(a,b,c)
  %1104 = fmul fast float %1096, 0x3F917E1C00000000
  %1105 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB288A2E0000000, float %1097, float %1104)  ; FMad(a,b,c)
  %1106 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED22FAA0000000, float %1098, float %1105)  ; FMad(a,b,c)
  %1107 = call float @dx.op.binary.f32(i32 35, float %1096, float %1097)  ; FMax(a,b)
  %1108 = call float @dx.op.binary.f32(i32 35, float %1107, float %1098)  ; FMax(a,b)
  %1109 = fadd fast float %1108, -1.000000e+00
  %1110 = fmul fast float %1109, 2.500000e-01
  %1111 = call float @dx.op.unary.f32(i32 7, float %1110)  ; Saturate(value)
  %1112 = fsub fast float 1.000000e+00, %1111
  %1113 = fmul fast float %1112, %1101
  %1114 = fmul fast float %1112, %1103
  %1115 = fmul fast float %1112, %1106
  %1116 = fmul fast float %1111, %1096
  %1117 = fmul fast float %1111, %1097
  %1118 = fmul fast float %1111, %1098
  %1119 = fadd fast float %1113, %1116
  %1120 = fadd fast float %1114, %1117
  %1121 = fadd fast float %1115, %1118
  %1122 = fmul fast float %1119, %1099
  %1123 = fmul fast float %1120, %1099
  %1124 = fmul fast float %1121, %1099
  %1125 = fmul fast float %1122, 0x3F847AE140000000
  %1126 = fmul fast float %1123, 0x3F847AE140000000
  %1127 = fmul fast float %1124, 0x3F847AE140000000
  %1128 = fmul fast float %1122, 0x40B4D2F520000000
  %1129 = fmul fast float %1123, 0x40B4D2F520000000
  %1130 = fmul fast float %1124, 0x40B4D2F520000000
  %1131 = fadd fast float %1128, 0x41869ECF20000000
  %1132 = fadd fast float %1129, 0x41869ECF20000000
  %1133 = fadd fast float %1130, 0x41869ECF20000000
  %1134 = fmul fast float %1131, %1125
  %1135 = fmul fast float %1132, %1126
  %1136 = fmul fast float %1133, %1127
  %1137 = fadd fast float %1134, 0x417BB79C60000000
  %1138 = fadd fast float %1135, 0x417BB79C60000000
  %1139 = fadd fast float %1136, 0x417BB79C60000000
  %1140 = fmul fast float %1137, %1125
  %1141 = fmul fast float %1138, %1126
  %1142 = fmul fast float %1139, %1127
  %1143 = fadd fast float %1140, 0x41218DE180000000
  %1144 = fadd fast float %1141, 0x41218DE180000000
  %1145 = fadd fast float %1142, 0x41218DE180000000
  %1146 = fmul fast float %1143, %1125
  %1147 = fmul fast float %1144, %1126
  %1148 = fmul fast float %1145, %1127
  %1149 = fadd fast float %1146, 0x4077F174E0000000
  %1150 = fadd fast float %1147, 0x4077F174E0000000
  %1151 = fadd fast float %1148, 0x4077F174E0000000
  %1152 = fmul fast float %1149, %1125
  %1153 = fmul fast float %1150, %1126
  %1154 = fmul fast float %1151, %1127
  %1155 = fadd fast float %1152, 0x3F3FF79B80000000
  %1156 = fadd fast float %1153, 0x3F3FF79B80000000
  %1157 = fadd fast float %1154, 0x3F3FF79B80000000
  %1158 = fmul fast float %1122, 0x412442D320000000
  %1159 = fmul fast float %1123, 0x412442D320000000
  %1160 = fmul fast float %1124, 0x412442D320000000
  %1161 = fadd fast float %1158, 0x419385D5C0000000
  %1162 = fadd fast float %1159, 0x419385D5C0000000
  %1163 = fadd fast float %1160, 0x419385D5C0000000
  %1164 = fmul fast float %1161, %1125
  %1165 = fmul fast float %1162, %1126
  %1166 = fmul fast float %1163, %1127
  %1167 = fadd fast float %1164, 4.182885e+06
  %1168 = fadd fast float %1165, 4.182885e+06
  %1169 = fadd fast float %1166, 4.182885e+06
  %1170 = fmul fast float %1167, %1125
  %1171 = fmul fast float %1168, %1126
  %1172 = fmul fast float %1169, %1127
  %1173 = fadd fast float %1170, 0x40C4D633C0000000
  %1174 = fadd fast float %1171, 0x40C4D633C0000000
  %1175 = fadd fast float %1172, 0x40C4D633C0000000
  %1176 = fmul fast float %1173, %1125
  %1177 = fmul fast float %1174, %1126
  %1178 = fmul fast float %1175, %1127
  %1179 = fadd fast float %1176, 1.000000e+00
  %1180 = fadd fast float %1177, 1.000000e+00
  %1181 = fadd fast float %1178, 1.000000e+00
  %1182 = fdiv fast float %1155, %1179
  %1183 = fdiv fast float %1156, %1180
  %1184 = fdiv fast float %1157, %1181
  %1185 = extractvalue %dx.types.CBufRet.f32 %887, 2
  %1186 = extractvalue %dx.types.CBufRet.f32 %887, 3
  %1187 = fmul fast float %1185, %1182
  %1188 = fmul fast float %1185, %1183
  %1189 = fmul fast float %1185, %1184
  %1190 = fadd fast float %1187, %1186
  %1191 = fadd fast float %1188, %1186
  %1192 = fadd fast float %1189, %1186
  br label %1193

; <label>:1193                                    ; preds = %1059, %938, %908, %906, %892, %863
  %1194 = phi float [ %879, %863 ], [ %903, %892 ], [ %879, %906 ], [ %1190, %1059 ], [ %1056, %938 ], [ %935, %908 ]
  %1195 = phi float [ %882, %863 ], [ %904, %892 ], [ %882, %906 ], [ %1191, %1059 ], [ %1057, %938 ], [ %936, %908 ]
  %1196 = phi float [ %885, %863 ], [ %905, %892 ], [ %885, %906 ], [ %1192, %1059 ], [ %1058, %938 ], [ %937, %908 ]
  %1197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 225)  ; CBufferLoadLegacy(handle,regIndex)
  %1198 = extractvalue %dx.types.CBufRet.f32 %1197, 1
  %1199 = extractvalue %dx.types.CBufRet.f32 %1197, 3
  %1200 = select i1 %210, float %1198, float %1199
  %1201 = fmul fast float %1200, %864
  %1202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 234)  ; CBufferLoadLegacy(handle,regIndex)
  %1203 = extractvalue %dx.types.CBufRet.f32 %1202, 0
  %1204 = extractvalue %dx.types.CBufRet.f32 %1202, 2
  %1205 = call float @dx.op.unary.f32(i32 23, float %1201)  ; Log(value)
  %1206 = fmul fast float %1205, %1204
  %1207 = call float @dx.op.unary.f32(i32 21, float %1206)  ; Exp(value)
  %1208 = fmul fast float %1207, %1203
  %1209 = extractvalue %dx.types.CBufRet.f32 %1202, 1
  %1210 = extractvalue %dx.types.CBufRet.f32 %1202, 3
  %1211 = fmul fast float %1205, %1210
  %1212 = call float @dx.op.unary.f32(i32 21, float %1211)  ; Exp(value)
  %1213 = fmul fast float %1212, %1209
  %1214 = fadd fast float %1213, %1208
  %1215 = fmul fast float %1214, %1194
  %1216 = fmul fast float %1214, %1195
  %1217 = fmul fast float %1214, %1196
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1215)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1216)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1217)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1214)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind
declare void @dx.op.discard(i32, i1) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

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
!dx.viewIdState = !{!23}
!dx.entryPoints = !{!24}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !15, !20}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14}
!6 = !{i32 0, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 74, i32 1, i32 4, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 73, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 70, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 15, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 71, i32 1, i32 4, i32 0, !7}
!15 = !{!16, !17, !18, !19}
!16 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!17 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 320, null}
!18 = !{i32 2, %perObject* undef, !"", i32 0, i32 1, i32 1, i32 160, null}
!19 = !{i32 3, %tonemapping* undef, !"", i32 0, i32 4, i32 1, i32 64, null}
!20 = !{!21, !22}
!21 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!22 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!23 = !{[24 x i32] [i32 22, i32 4, i32 15, i32 15, i32 0, i32 0, i32 7, i32 7, i32 7, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 15, i32 15]}
!24 = !{void ()* @ps_main, !"ps_main", !25, !4, !47}
!25 = !{!26, !45, null}
!26 = !{!27, !30, !32, !33, !35, !37, !39, !41, !43}
!27 = !{i32 0, !"SV_Position", i8 9, i8 3, !28, i8 4, i32 1, i8 4, i32 0, i8 0, !29}
!28 = !{i32 0}
!29 = !{i32 3, i32 3}
!30 = !{i32 1, !"COLOR", i8 9, i8 0, !28, i8 2, i32 1, i8 4, i32 1, i8 0, !31}
!31 = !{i32 3, i32 15}
!32 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !28, i8 2, i32 1, i8 2, i32 2, i8 0, !29}
!33 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !34, i8 2, i32 1, i8 2, i32 2, i8 2, !29}
!34 = !{i32 2}
!35 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !36, i8 2, i32 1, i8 2, i32 3, i8 0, null}
!36 = !{i32 3}
!37 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !38, i8 2, i32 1, i8 2, i32 3, i8 2, null}
!38 = !{i32 4}
!39 = !{i32 6, !"TEXCOORD", i8 9, i8 0, !40, i8 2, i32 1, i8 2, i32 4, i8 0, null}
!40 = !{i32 5}
!41 = !{i32 7, !"TEXCOORD", i8 9, i8 0, !42, i8 2, i32 1, i8 2, i32 4, i8 2, null}
!42 = !{i32 6}
!43 = !{i32 8, !"TEXCOORD", i8 9, i8 0, !44, i8 2, i32 1, i8 2, i32 5, i8 0, !29}
!44 = !{i32 1}
!45 = !{!46}
!46 = !{i32 0, !"SV_Target", i8 9, i8 16, !28, i8 0, i32 1, i8 4, i32 0, i8 0, !31}
!47 = !{i32 0, i64 16}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 1}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 1}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 1}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 1}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 1}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 1}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 1}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 1}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 1}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 1}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 1}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 1}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 1}

