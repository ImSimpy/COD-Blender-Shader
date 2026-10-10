;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy w
; TEXCOORDS                0   xy          1     NONE   float   xy  
; LMAPCOORDS               0   xyz         2     NONE   float       
; NORMAL                   0   xyz         3     NONE   float   xyz 
; TANGENT                  0   xyzw        4     NONE   float   xyzw
; MATERIAL_DATA_OFFSET     0   x           5     NONE    uint   x   
; TRANSIENT_INDEX          0    y          5     NONE    uint       
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: bc79f8c5701c0444a0f7d585f2aed96a
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
; TEXCOORDS                0                 linear       
; LMAPCOORDS               0                 linear       
; NORMAL                   0                 linear       
; TANGENT                  0                 linear       
; MATERIAL_DATA_OFFSET     0        nointerpolation       
; TRANSIENT_INDEX          0        nointerpolation       
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
;   [144 x i8] (type annotation not present)
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
;                                   texture     f32          2d      T1      t0,space4unbounded
;                                   texture    byte         r/o      T2     t37,space1     1
;                                   texture     f32          2d      T3     t33,space2     1
;                                   texture    byte         r/o      T4     t16,space1     1
;                                   texture    byte         r/o      T5     t17,space1     1
;                                   texture     f32          2d      T6     t69,space2     1
;                                   texture     f32          2d      T7     t58,space2     1
;                                   texture     f32          2d      T8     t57,space2     1
;                                   texture    byte         r/o      T9     t69,space1     1
;                                   texture     f32          2d     T10     t34,space2     1
;                                   texture    byte         r/o     T11     t68,space1     1
;                                   texture     f32          2d     T12      t0,space2     1
;
;
; ViewId state:
;
; Number of inputs: 22, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 4, 5, 12, 13, 14, 16, 17, 18, 19, 20 }
;   output 1 depends on inputs: { 0, 1, 3, 4, 5, 12, 13, 14, 16, 17, 18, 19, 20 }
;   output 2 depends on inputs: { 0, 1, 3, 4, 5, 12, 13, 14, 16, 17, 18, 19, 20 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %17 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %18 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %19 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %20 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %21 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %32 = extractvalue %dx.types.CBufRet.f32 %31, 0
  %33 = fmul fast float %32, %26
  %34 = fmul fast float %32, %27
  %35 = fmul fast float %22, %19
  %36 = fmul fast float %23, %18
  %37 = fsub fast float %35, %36
  %38 = fmul fast float %23, %17
  %39 = fmul fast float %21, %19
  %40 = fsub fast float %38, %39
  %41 = fmul fast float %21, %18
  %42 = fmul fast float %22, %17
  %43 = fsub fast float %41, %42
  %44 = fmul fast float %37, %20
  %45 = fmul fast float %40, %20
  %46 = fmul fast float %43, %20
  %47 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %48 = extractvalue %dx.types.CBufRet.f32 %47, 2
  %49 = extractvalue %dx.types.CBufRet.f32 %47, 3
  %50 = fmul fast float %48, 2.000000e+00
  %51 = fmul fast float %50, %33
  %52 = fmul fast float %49, 2.000000e+00
  %53 = fmul fast float %52, %34
  %54 = fsub fast float 1.000000e+00, %51
  %55 = fsub fast float 1.000000e+00, %53
  %56 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %57 = extractvalue %dx.types.CBufRet.f32 %56, 0
  %58 = extractvalue %dx.types.CBufRet.f32 %56, 1
  %59 = extractvalue %dx.types.CBufRet.f32 %56, 2
  %60 = fmul fast float %54, %57
  %61 = fmul fast float %54, %58
  %62 = fmul fast float %54, %59
  %63 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %64 = extractvalue %dx.types.CBufRet.f32 %63, 0
  %65 = extractvalue %dx.types.CBufRet.f32 %63, 1
  %66 = extractvalue %dx.types.CBufRet.f32 %63, 2
  %67 = fmul fast float %55, %64
  %68 = fmul fast float %55, %65
  %69 = fmul fast float %55, %66
  %70 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %71 = extractvalue %dx.types.CBufRet.f32 %70, 0
  %72 = extractvalue %dx.types.CBufRet.f32 %70, 1
  %73 = extractvalue %dx.types.CBufRet.f32 %70, 2
  %74 = fadd fast float %67, %71
  %75 = fadd fast float %74, %60
  %76 = fadd fast float %68, %72
  %77 = fadd fast float %76, %61
  %78 = fadd fast float %69, %73
  %79 = fadd fast float %78, %62
  %80 = fmul fast float %75, %28
  %81 = fmul fast float %77, %28
  %82 = fmul fast float %79, %28
  %83 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %84 = extractvalue %dx.types.CBufRet.f32 %83, 2
  %85 = extractvalue %dx.types.CBufRet.f32 %83, 3
  %86 = fmul fast float %84, %33
  %87 = fmul fast float %85, %34
  %88 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %89 = extractvalue %dx.types.ResRet.i32 %88, 0
  %90 = and i32 %89, 114688
  %91 = icmp ne i32 %90, 0
  %92 = select i1 %91, float %86, float 0.000000e+00
  %93 = select i1 %91, float %87, float 0.000000e+00
  %94 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %13, float %92, float %93, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %95 = extractvalue %dx.types.ResRet.f32 %94, 0
  %96 = fmul fast float %95, 2.550000e+02
  %97 = fptoui float %96 to i32
  %98 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %99 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %100 = extractvalue %dx.types.CBufRet.i32 %99, 3
  %101 = and i32 %100, 3
  %102 = icmp ne i32 %101, 0
  %103 = and i32 %100, 4
  %104 = icmp ne i32 %103, 0
  %105 = and i1 %102, %104
  br i1 %105, label %106, label %117

; <label>:106                                     ; preds = %0
  %107 = extractvalue %dx.types.CBufRet.f32 %98, 3
  %108 = fmul fast float %107, %34
  %109 = extractvalue %dx.types.CBufRet.f32 %98, 2
  %110 = fmul fast float %109, %33
  %111 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %12, float %110, float %108, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %112 = extractvalue %dx.types.ResRet.f32 %111, 0
  %113 = fsub fast float 1.000000e+00, %112
  %114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %115 = extractvalue %dx.types.CBufRet.f32 %114, 0
  %116 = fcmp fast olt float %113, %115
  br label %120

; <label>:117                                     ; preds = %0
  %118 = icmp eq i32 %103, 0
  %119 = and i1 %102, %118
  br label %120

; <label>:120                                     ; preds = %117, %106
  %121 = phi i1 [ %116, %106 ], [ %119, %117 ]
  %122 = add i32 %16, 60
  %123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %122, i32 undef)  ; BufferLoad(srv,index,wot)
  %124 = extractvalue %dx.types.ResRet.i32 %123, 0
  %125 = shl i32 %124, 4
  %126 = and i32 %125, 32752
  %127 = call float @dx.op.legacyF16ToF32(i32 131, i32 %126)  ; LegacyF16ToF32(value)
  %128 = lshr i32 %124, 7
  %129 = and i32 %128, 32752
  %130 = call float @dx.op.legacyF16ToF32(i32 131, i32 %129)  ; LegacyF16ToF32(value)
  %131 = lshr i32 %124, 22
  %132 = shl nuw nsw i32 %131, 5
  %133 = call float @dx.op.legacyF16ToF32(i32 131, i32 %132)  ; LegacyF16ToF32(value)
  %134 = add i32 %16, 72
  %135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %134, i32 undef)  ; BufferLoad(srv,index,wot)
  %136 = extractvalue %dx.types.ResRet.i32 %135, 0
  %137 = and i32 %136, 255
  %138 = uitofp i32 %137 to float
  %139 = fmul fast float %138, 0x3F70101020000000
  %140 = lshr i32 %136, 8
  %141 = and i32 %140, 255
  %142 = uitofp i32 %141 to float
  %143 = fmul fast float %142, 0x3F70101020000000
  %144 = lshr i32 %136, 16
  %145 = and i32 %144, 255
  %146 = uitofp i32 %145 to float
  %147 = fmul fast float %146, 0x3F70101020000000
  %148 = add i32 %16, 36
  %149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %148, i32 undef)  ; BufferLoad(srv,index,wot)
  %150 = extractvalue %dx.types.ResRet.i32 %149, 0
  %151 = add i32 %16, 96
  %152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %151, i32 undef)  ; BufferLoad(srv,index,wot)
  %153 = extractvalue %dx.types.ResRet.i32 %152, 0
  %154 = add i32 %16, 24
  %155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %154, i32 undef)  ; BufferLoad(srv,index,wot)
  %156 = extractvalue %dx.types.ResRet.i32 %155, 0
  %157 = add i32 %16, 28
  %158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %157, i32 undef)  ; BufferLoad(srv,index,wot)
  %159 = extractvalue %dx.types.ResRet.i32 %158, 0
  %160 = or i32 %159, %156
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %622, label %162

; <label>:162                                     ; preds = %120
  %163 = lshr i32 %153, 16
  %164 = call float @dx.op.legacyF16ToF32(i32 131, i32 %163)  ; LegacyF16ToF32(value)
  %165 = fmul fast float %164, 0x3F50624DE0000000
  %166 = and i32 %153, 65535
  %167 = call float @dx.op.legacyF16ToF32(i32 131, i32 %166)  ; LegacyF16ToF32(value)
  %168 = fmul fast float %167, 0x3F50624DE0000000
  %169 = lshr i32 %150, 16
  %170 = call float @dx.op.legacyF16ToF32(i32 131, i32 %169)  ; LegacyF16ToF32(value)
  %171 = and i32 %150, 65535
  %172 = call float @dx.op.legacyF16ToF32(i32 131, i32 %171)  ; LegacyF16ToF32(value)
  %173 = add i32 %16, 92
  %174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %173, i32 undef)  ; BufferLoad(srv,index,wot)
  %175 = extractvalue %dx.types.ResRet.i32 %174, 0
  %176 = lshr i32 %175, 16
  %177 = call float @dx.op.legacyF16ToF32(i32 131, i32 %176)  ; LegacyF16ToF32(value)
  %178 = fmul fast float %177, 0x3F50624DE0000000
  %179 = add i32 %16, 40
  %180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %179, i32 undef)  ; BufferLoad(srv,index,wot)
  %181 = extractvalue %dx.types.ResRet.i32 %180, 0
  %182 = lshr i32 %181, 16
  %183 = and i32 %182, 255
  %184 = lshr i32 %181, 24
  %185 = add i32 %16, 100
  %186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %185, i32 undef)  ; BufferLoad(srv,index,wot)
  %187 = extractvalue %dx.types.ResRet.i32 %186, 0
  %188 = and i32 %187, 65535
  %189 = call float @dx.op.legacyF16ToF32(i32 131, i32 %188)  ; LegacyF16ToF32(value)
  %190 = lshr i32 %187, 16
  %191 = call float @dx.op.legacyF16ToF32(i32 131, i32 %190)  ; LegacyF16ToF32(value)
  %192 = add i32 %16, 32
  %193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %192, i32 undef)  ; BufferLoad(srv,index,wot)
  %194 = extractvalue %dx.types.ResRet.i32 %193, 0
  %195 = lshr i32 %194, 22
  %196 = shl nuw nsw i32 %195, 5
  %197 = call float @dx.op.legacyF16ToF32(i32 131, i32 %196)  ; LegacyF16ToF32(value)
  %198 = shl i32 %194, 4
  %199 = and i32 %198, 32752
  %200 = call float @dx.op.legacyF16ToF32(i32 131, i32 %199)  ; LegacyF16ToF32(value)
  %201 = lshr i32 %194, 7
  %202 = and i32 %201, 32752
  %203 = call float @dx.op.legacyF16ToF32(i32 131, i32 %202)  ; LegacyF16ToF32(value)
  %204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %205 = extractvalue %dx.types.CBufRet.f32 %204, 3
  %206 = fmul fast float %205, 1.000000e+03
  %207 = fmul fast float %168, %206
  %208 = call float @dx.op.unary.f32(i32 22, float %207)  ; Frc(value)
  %209 = fadd fast float %208, %172
  %210 = fmul fast float %165, %206
  %211 = call float @dx.op.unary.f32(i32 22, float %210)  ; Frc(value)
  %212 = fadd fast float %211, %170
  %213 = fmul fast float %178, %206
  %214 = call float @dx.op.unary.f32(i32 22, float %213)  ; Frc(value)
  %215 = fmul fast float %214, 0x401921FB60000000
  %216 = fadd fast float %215, %197
  %217 = call float @dx.op.unary.f32(i32 13, float %216)  ; Sin(value)
  %218 = call float @dx.op.unary.f32(i32 12, float %216)  ; Cos(value)
  %219 = fsub fast float -0.000000e+00, %217
  %220 = fadd fast float %24, -5.000000e-01
  %221 = fadd fast float %25, -5.000000e-01
  %222 = fmul fast float %189, %220
  %223 = fmul fast float %191, %221
  %224 = fadd fast float %222, 5.000000e-01
  %225 = fadd fast float %223, 5.000000e-01
  %226 = fmul fast float %200, %224
  %227 = fmul fast float %203, %225
  %228 = fmul fast float %218, %226
  %229 = call float @dx.op.tertiary.f32(i32 46, float %219, float %227, float %228)  ; FMad(a,b,c)
  %230 = fmul fast float %217, %226
  %231 = call float @dx.op.tertiary.f32(i32 46, float %218, float %227, float %230)  ; FMad(a,b,c)
  %232 = fadd fast float %209, %229
  %233 = fadd fast float %212, %231
  %234 = icmp ugt i32 %183, 1
  %235 = icmp ugt i32 %181, 33554431
  %236 = or i1 %235, %234
  br i1 %236, label %237, label %262

; <label>:237                                     ; preds = %162
  %238 = add i32 %16, 84
  %239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %238, i32 undef)  ; BufferLoad(srv,index,wot)
  %240 = extractvalue %dx.types.ResRet.i32 %239, 0
  %241 = lshr i32 %240, 16
  %242 = call float @dx.op.legacyF16ToF32(i32 131, i32 %241)  ; LegacyF16ToF32(value)
  %243 = fmul fast float %205, %242
  %244 = call float @dx.op.unary.f32(i32 22, float %243)  ; Frc(value)
  %245 = mul nuw nsw i32 %183, %184
  %246 = uitofp i32 %245 to float
  %247 = fmul fast float %244, %246
  %248 = call float @dx.op.unary.f32(i32 27, float %247)  ; Round_ni(value)
  %249 = fptoui float %248 to i32
  %250 = urem i32 %249, %183
  %251 = udiv i32 %249, %184
  %252 = call float @dx.op.unary.f32(i32 22, float %232)  ; Frc(value)
  %253 = call float @dx.op.unary.f32(i32 22, float %233)  ; Frc(value)
  %254 = uitofp i32 %250 to float
  %255 = uitofp i32 %251 to float
  %256 = fadd fast float %252, %254
  %257 = fadd fast float %253, %255
  %258 = uitofp i32 %183 to float
  %259 = uitofp i32 %184 to float
  %260 = fdiv fast float %256, %258
  %261 = fdiv fast float %257, %259
  br label %262

; <label>:262                                     ; preds = %237, %162
  %263 = phi float [ %260, %237 ], [ %232, %162 ]
  %264 = phi float [ %261, %237 ], [ %233, %162 ]
  %265 = and i32 %156, 16
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %463, label %267

; <label>:267                                     ; preds = %262
  %268 = add i32 %16, 120
  %269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %268, i32 undef)  ; BufferLoad(srv,index,wot)
  %270 = extractvalue %dx.types.ResRet.i32 %269, 0
  %271 = add i32 %270, 0
  %272 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %271, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %273 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %272, %dx.types.Handle %29, float %263, float %264, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %274 = extractvalue %dx.types.ResRet.f32 %273, 0
  %275 = extractvalue %dx.types.ResRet.f32 %273, 1
  %276 = extractvalue %dx.types.ResRet.f32 %273, 2
  %277 = extractvalue %dx.types.ResRet.f32 %273, 3
  %278 = and i32 %181, 255
  %279 = uitofp i32 %278 to float
  %280 = lshr i32 %181, 8
  %281 = and i32 %280, 255
  %282 = uitofp i32 %281 to float
  %283 = fmul fast float %277, %279
  %284 = fadd fast float %283, %282
  %285 = fmul fast float %284, 0x3F70101000000000
  %286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %154, i32 undef)  ; BufferLoad(srv,index,wot)
  %287 = extractvalue %dx.types.ResRet.i32 %286, 0
  %288 = and i32 %287, 512
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %298, label %290

; <label>:290                                     ; preds = %267
  %291 = add i32 %16, 140
  %292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %291, i32 undef)  ; BufferLoad(srv,index,wot)
  %293 = extractvalue %dx.types.ResRet.i32 %292, 0
  %294 = add i32 %293, 0
  %295 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %294, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %296 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %295, %dx.types.Handle %30, float %263, float %264, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %297 = extractvalue %dx.types.ResRet.f32 %296, 0
  br label %298

; <label>:298                                     ; preds = %290, %267
  %299 = phi float [ %297, %290 ], [ 1.000000e+00, %267 ]
  %300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %154, i32 undef)  ; BufferLoad(srv,index,wot)
  %301 = extractvalue %dx.types.ResRet.i32 %300, 0
  %302 = and i32 %301, 33554432
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %410, label %304

; <label>:304                                     ; preds = %298
  %305 = add i32 %16, 80
  %306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %305, i32 undef)  ; BufferLoad(srv,index,wot)
  %307 = extractvalue %dx.types.ResRet.i32 %306, 0
  %308 = and i32 %307, 65535
  %309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %308)  ; LegacyF16ToF32(value)
  %310 = lshr i32 %307, 16
  %311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %310)  ; LegacyF16ToF32(value)
  %312 = add i32 %16, 84
  %313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %312, i32 undef)  ; BufferLoad(srv,index,wot)
  %314 = extractvalue %dx.types.ResRet.i32 %313, 0
  %315 = and i32 %314, 65535
  %316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %315)  ; LegacyF16ToF32(value)
  %317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %134, i32 undef)  ; BufferLoad(srv,index,wot)
  %318 = extractvalue %dx.types.ResRet.i32 %317, 0
  %319 = lshr i32 %318, 24
  %320 = uitofp i32 %319 to float
  %321 = fmul fast float %320, 0x3F70101020000000
  %322 = and i32 %318, 255
  %323 = uitofp i32 %322 to float
  %324 = fmul fast float %323, 0x3F70101020000000
  %325 = lshr i32 %318, 8
  %326 = and i32 %325, 255
  %327 = uitofp i32 %326 to float
  %328 = fmul fast float %327, 0x3F70101020000000
  %329 = lshr i32 %318, 16
  %330 = and i32 %329, 255
  %331 = uitofp i32 %330 to float
  %332 = fmul fast float %331, 0x3F70101020000000
  %333 = add i32 %16, 76
  %334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %333, i32 undef)  ; BufferLoad(srv,index,wot)
  %335 = extractvalue %dx.types.ResRet.i32 %334, 0
  %336 = lshr i32 %335, 24
  %337 = uitofp i32 %336 to float
  %338 = fmul fast float %337, 0x3F70101020000000
  %339 = and i32 %335, 255
  %340 = uitofp i32 %339 to float
  %341 = fmul fast float %340, 0x3F70101020000000
  %342 = lshr i32 %335, 8
  %343 = and i32 %342, 255
  %344 = uitofp i32 %343 to float
  %345 = fmul fast float %344, 0x3F70101020000000
  %346 = lshr i32 %335, 16
  %347 = and i32 %346, 255
  %348 = uitofp i32 %347 to float
  %349 = fmul fast float %348, 0x3F70101020000000
  %350 = bitcast float %274 to i32
  %351 = ashr i32 %350, 1
  %352 = sub nsw i32 1597463174, %351
  %353 = bitcast i32 %352 to float
  %354 = fmul fast float %274, 5.000000e-01
  %355 = fmul fast float %353, %353
  %356 = fmul fast float %355, %354
  %357 = fsub fast float 1.500000e+00, %356
  %358 = fmul fast float %353, %274
  %359 = fmul fast float %358, %357
  %360 = bitcast float %275 to i32
  %361 = ashr i32 %360, 1
  %362 = sub nsw i32 1597463174, %361
  %363 = bitcast i32 %362 to float
  %364 = fmul fast float %275, 5.000000e-01
  %365 = fmul fast float %363, %363
  %366 = fmul fast float %365, %364
  %367 = fsub fast float 1.500000e+00, %366
  %368 = fmul fast float %363, %275
  %369 = fmul fast float %368, %367
  %370 = bitcast float %276 to i32
  %371 = ashr i32 %370, 1
  %372 = sub nsw i32 1597463174, %371
  %373 = bitcast i32 %372 to float
  %374 = fmul fast float %276, 5.000000e-01
  %375 = fmul fast float %373, %373
  %376 = fmul fast float %375, %374
  %377 = fsub fast float 1.500000e+00, %376
  %378 = fmul fast float %373, %276
  %379 = fmul fast float %378, %377
  %380 = fsub fast float %359, %341
  %381 = fsub fast float %369, %345
  %382 = fsub fast float %379, %349
  %383 = fmul fast float %380, %309
  %384 = fmul fast float %381, %311
  %385 = fmul fast float %382, %316
  %386 = fadd fast float %383, %324
  %387 = fadd fast float %384, %328
  %388 = fadd fast float %385, %332
  %389 = call float @dx.op.unary.f32(i32 7, float %386)  ; Saturate(value)
  %390 = call float @dx.op.unary.f32(i32 7, float %387)  ; Saturate(value)
  %391 = call float @dx.op.unary.f32(i32 7, float %388)  ; Saturate(value)
  %392 = fmul fast float %389, %389
  %393 = fmul fast float %390, %390
  %394 = fmul fast float %391, %391
  %395 = fsub fast float %392, %274
  %396 = fsub fast float %393, %275
  %397 = fsub fast float %394, %276
  %398 = fmul fast float %395, %299
  %399 = fmul fast float %396, %299
  %400 = fmul fast float %397, %299
  %401 = fadd fast float %398, %274
  %402 = fadd fast float %399, %275
  %403 = fadd fast float %400, %276
  %404 = fadd fast float %321, %285
  %405 = fsub fast float %404, %338
  %406 = call float @dx.op.unary.f32(i32 7, float %405)  ; Saturate(value)
  %407 = fsub fast float %406, %285
  %408 = fmul fast float %407, %299
  %409 = fadd fast float %408, %285
  br label %463

; <label>:410                                     ; preds = %298
  %411 = and i32 %301, 134217728
  %412 = icmp eq i32 %411, 0
  br i1 %412, label %447, label %413

; <label>:413                                     ; preds = %410
  %414 = call float @dx.op.unary.f32(i32 24, float %139)  ; Sqrt(value)
  %415 = call float @dx.op.unary.f32(i32 24, float %143)  ; Sqrt(value)
  %416 = call float @dx.op.unary.f32(i32 24, float %147)  ; Sqrt(value)
  %417 = fadd fast float %414, -5.000000e-01
  %418 = fadd fast float %415, -5.000000e-01
  %419 = fadd fast float %416, -5.000000e-01
  %420 = fmul fast float %417, %299
  %421 = fmul fast float %418, %299
  %422 = fmul fast float %419, %299
  %423 = fadd fast float %420, 5.000000e-01
  %424 = fadd fast float %421, 5.000000e-01
  %425 = fadd fast float %422, 5.000000e-01
  %426 = call float @dx.op.unary.f32(i32 24, float %274)  ; Sqrt(value)
  %427 = call float @dx.op.unary.f32(i32 24, float %275)  ; Sqrt(value)
  %428 = call float @dx.op.unary.f32(i32 24, float %276)  ; Sqrt(value)
  %429 = fmul fast float %423, 2.000000e+00
  %430 = fsub fast float 1.000000e+00, %429
  %431 = fmul fast float %430, %426
  %432 = fadd fast float %431, %429
  %433 = fmul fast float %432, %426
  %434 = fmul fast float %424, 2.000000e+00
  %435 = fsub fast float 1.000000e+00, %434
  %436 = fmul fast float %435, %427
  %437 = fadd fast float %436, %434
  %438 = fmul fast float %437, %427
  %439 = fmul fast float %425, 2.000000e+00
  %440 = fsub fast float 1.000000e+00, %439
  %441 = fmul fast float %440, %428
  %442 = fadd fast float %441, %439
  %443 = fmul fast float %442, %428
  %444 = fmul fast float %433, %433
  %445 = fmul fast float %438, %438
  %446 = fmul fast float %443, %443
  br label %463

; <label>:447                                     ; preds = %410
  %448 = fmul fast float %139, %139
  %449 = fmul fast float %143, %143
  %450 = fmul fast float %147, %147
  %451 = fadd fast float %448, -1.000000e+00
  %452 = fadd fast float %449, -1.000000e+00
  %453 = fadd fast float %450, -1.000000e+00
  %454 = fmul fast float %299, %451
  %455 = fmul fast float %299, %452
  %456 = fmul fast float %299, %453
  %457 = fadd fast float %454, 1.000000e+00
  %458 = fadd fast float %455, 1.000000e+00
  %459 = fadd fast float %456, 1.000000e+00
  %460 = fmul fast float %457, %274
  %461 = fmul fast float %458, %275
  %462 = fmul fast float %459, %276
  br label %463

; <label>:463                                     ; preds = %447, %413, %304, %262
  %464 = phi float [ %409, %304 ], [ %285, %413 ], [ %285, %447 ], [ 0x3FA23C0BE0000000, %262 ]
  %465 = phi float [ %401, %304 ], [ %444, %413 ], [ %460, %447 ], [ 1.000000e+00, %262 ]
  %466 = phi float [ %402, %304 ], [ %445, %413 ], [ %461, %447 ], [ 1.000000e+00, %262 ]
  %467 = phi float [ %403, %304 ], [ %446, %413 ], [ %462, %447 ], [ 1.000000e+00, %262 ]
  %468 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %469 = extractvalue %dx.types.CBufRet.i32 %468, 1
  %470 = and i32 %469, 1
  %471 = icmp ne i32 %470, 0
  %472 = add i32 %16, 116
  %473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %472, i32 undef)  ; BufferLoad(srv,index,wot)
  %474 = extractvalue %dx.types.ResRet.i32 %473, 0
  %475 = and i32 %474, 32
  %476 = icmp ne i32 %475, 0
  %477 = and i1 %471, %476
  %478 = select i1 %477, float 1.000000e+00, float %465
  %479 = select i1 %477, float 0x3FD3333340000000, float %466
  %480 = select i1 %477, float 0x3FD3333340000000, float %467
  %481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %154, i32 undef)  ; BufferLoad(srv,index,wot)
  %482 = extractvalue %dx.types.ResRet.i32 %481, 0
  %483 = and i32 %482, 32
  %484 = icmp eq i32 %483, 0
  br i1 %484, label %557, label %485

; <label>:485                                     ; preds = %463
  %486 = add i32 %16, 44
  %487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %486, i32 undef)  ; BufferLoad(srv,index,wot)
  %488 = extractvalue %dx.types.ResRet.i32 %487, 0
  %489 = add i32 %16, 124
  %490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %489, i32 undef)  ; BufferLoad(srv,index,wot)
  %491 = extractvalue %dx.types.ResRet.i32 %490, 0
  %492 = add i32 %491, 0
  %493 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %492, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %494 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %493, %dx.types.Handle %29, float %263, float %264, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %495 = extractvalue %dx.types.ResRet.f32 %494, 0
  %496 = extractvalue %dx.types.ResRet.f32 %494, 1
  %497 = extractvalue %dx.types.ResRet.f32 %494, 2
  %498 = extractvalue %dx.types.ResRet.f32 %494, 3
  %499 = and i32 %488, 255
  %500 = uitofp i32 %499 to float
  %501 = lshr i32 %488, 8
  %502 = and i32 %501, 255
  %503 = uitofp i32 %502 to float
  %504 = lshr i32 %488, 16
  %505 = and i32 %504, 255
  %506 = uitofp i32 %505 to float
  %507 = fmul fast float %506, 0x3F70101000000000
  %508 = fmul fast float %495, %500
  %509 = fadd fast float %508, %503
  %510 = fmul fast float %509, 0x3F70101000000000
  %511 = fadd fast float %496, -5.000000e-01
  %512 = fadd fast float %498, -5.000000e-01
  %513 = fmul fast float %511, %507
  %514 = fmul fast float %512, %507
  %515 = fadd fast float %513, 5.000000e-01
  %516 = fadd fast float %514, 5.000000e-01
  %517 = fmul fast float %515, 2.000000e+00
  %518 = fadd fast float %517, -1.000000e+00
  %519 = fmul fast float %516, 2.000000e+00
  %520 = fadd fast float %519, -1.000000e+00
  %521 = fadd fast float %518, %520
  %522 = fmul fast float %521, 5.000000e-01
  %523 = fsub fast float %518, %520
  %524 = fmul fast float %523, 5.000000e-01
  %525 = call float @dx.op.unary.f32(i32 6, float %522)  ; FAbs(value)
  %526 = fsub fast float 1.000000e+00, %525
  %527 = call float @dx.op.unary.f32(i32 6, float %524)  ; FAbs(value)
  %528 = fsub fast float %526, %527
  %529 = call float @dx.op.dot3.f32(i32 55, float %522, float %524, float %528, float %522, float %524, float %528)  ; Dot3(ax,ay,az,bx,by,bz)
  %530 = call float @dx.op.unary.f32(i32 25, float %529)  ; Rsqrt(value)
  %531 = fmul fast float %522, %530
  %532 = fmul fast float %524, %530
  %533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %154, i32 undef)  ; BufferLoad(srv,index,wot)
  %534 = extractvalue %dx.types.ResRet.i32 %533, 0
  %535 = and i32 %534, 67108864
  %536 = icmp eq i32 %535, 0
  br i1 %536, label %553, label %537

; <label>:537                                     ; preds = %485
  %538 = add i32 %16, 88
  %539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %538, i32 undef)  ; BufferLoad(srv,index,wot)
  %540 = extractvalue %dx.types.ResRet.i32 %539, 0
  %541 = and i32 %540, 65535
  %542 = call float @dx.op.legacyF16ToF32(i32 131, i32 %541)  ; LegacyF16ToF32(value)
  %543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %173, i32 undef)  ; BufferLoad(srv,index,wot)
  %544 = extractvalue %dx.types.ResRet.i32 %543, 0
  %545 = and i32 %544, 65535
  %546 = call float @dx.op.legacyF16ToF32(i32 131, i32 %545)  ; LegacyF16ToF32(value)
  %547 = lshr i32 %540, 16
  %548 = call float @dx.op.legacyF16ToF32(i32 131, i32 %547)  ; LegacyF16ToF32(value)
  %549 = fsub fast float %510, %548
  %550 = fmul fast float %549, %542
  %551 = fadd fast float %550, %546
  %552 = call float @dx.op.unary.f32(i32 7, float %551)  ; Saturate(value)
  br label %553

; <label>:553                                     ; preds = %537, %485
  %554 = phi float [ %552, %537 ], [ %510, %485 ]
  %555 = call float @dx.op.dot2.f32(i32 54, float %531, float %532, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %556 = call float @dx.op.dot2.f32(i32 54, float %531, float %532, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %557

; <label>:557                                     ; preds = %553, %463
  %558 = phi float [ %554, %553 ], [ 0x3FD6666660000000, %463 ]
  %559 = phi float [ %555, %553 ], [ 0.000000e+00, %463 ]
  %560 = phi float [ %556, %553 ], [ 0.000000e+00, %463 ]
  %561 = phi float [ %497, %553 ], [ 1.000000e+00, %463 ]
  %562 = add i32 %16, 64
  %563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %562, i32 undef)  ; BufferLoad(srv,index,wot)
  %564 = extractvalue %dx.types.ResRet.i32 %563, 0
  %565 = lshr i32 %564, 22
  %566 = shl nuw nsw i32 %565, 5
  %567 = call float @dx.op.legacyF16ToF32(i32 131, i32 %566)  ; LegacyF16ToF32(value)
  %568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %154, i32 undef)  ; BufferLoad(srv,index,wot)
  %569 = extractvalue %dx.types.ResRet.i32 %568, 0
  %570 = and i32 %569, 64
  %571 = icmp eq i32 %570, 0
  br i1 %571, label %605, label %572

; <label>:572                                     ; preds = %557
  %573 = add i32 %16, 128
  %574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %573, i32 undef)  ; BufferLoad(srv,index,wot)
  %575 = extractvalue %dx.types.ResRet.i32 %574, 0
  %576 = add i32 %575, 0
  %577 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %576, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %154, i32 undef)  ; BufferLoad(srv,index,wot)
  %579 = extractvalue %dx.types.ResRet.i32 %578, 0
  %580 = and i32 %579, 131072
  %581 = icmp eq i32 %580, 0
  %582 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %577, %dx.types.Handle %29, float %263, float %264, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %583 = extractvalue %dx.types.ResRet.f32 %582, 0
  %584 = extractvalue %dx.types.ResRet.f32 %582, 1
  %585 = extractvalue %dx.types.ResRet.f32 %582, 2
  %586 = fmul fast float %583, %127
  %587 = fmul fast float %584, %130
  %588 = fmul fast float %585, %133
  br i1 %581, label %595, label %589

; <label>:589                                     ; preds = %572
  %590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %591 = extractvalue %dx.types.CBufRet.f32 %590, 0
  %592 = fmul fast float %591, %586
  %593 = fmul fast float %591, %587
  %594 = fmul fast float %591, %588
  br label %595

; <label>:595                                     ; preds = %589, %572
  %596 = phi float [ %592, %589 ], [ %586, %572 ]
  %597 = phi float [ %593, %589 ], [ %587, %572 ]
  %598 = phi float [ %594, %589 ], [ %588, %572 ]
  %599 = fmul fast float %596, %567
  %600 = select i1 %121, float %599, float %596
  %601 = call float @dx.op.dot3.f32(i32 55, float %600, float %597, float %598, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %602 = select i1 %121, float 0.000000e+00, float %596
  %603 = select i1 %121, float %601, float %597
  %604 = select i1 %121, float 0.000000e+00, float %598
  br label %605

; <label>:605                                     ; preds = %595, %557
  %606 = phi float [ %602, %595 ], [ 0.000000e+00, %557 ]
  %607 = phi float [ %603, %595 ], [ 0.000000e+00, %557 ]
  %608 = phi float [ %604, %595 ], [ 0.000000e+00, %557 ]
  %609 = add i32 %16, 48
  %610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %609, i32 undef)  ; BufferLoad(srv,index,wot)
  %611 = extractvalue %dx.types.ResRet.i32 %610, 0
  %612 = and i32 %611, 255
  %613 = uitofp i32 %612 to float
  %614 = lshr i32 %611, 8
  %615 = and i32 %614, 255
  %616 = uitofp i32 %615 to float
  %617 = call float @dx.op.dot3.f32(i32 55, float %478, float %479, float %480, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %618 = fmul fast float %616, %617
  %619 = fadd fast float %618, %613
  %620 = fmul fast float %619, 0x3F70101020000000
  %621 = call float @dx.op.unary.f32(i32 7, float %620)  ; Saturate(value)
  br label %622

; <label>:622                                     ; preds = %605, %120
  %623 = phi float [ 0.000000e+00, %120 ], [ %559, %605 ]
  %624 = phi float [ 0.000000e+00, %120 ], [ %560, %605 ]
  %625 = phi float [ 0.000000e+00, %120 ], [ %606, %605 ]
  %626 = phi float [ 0.000000e+00, %120 ], [ %607, %605 ]
  %627 = phi float [ 0.000000e+00, %120 ], [ %608, %605 ]
  %628 = phi float [ 0.000000e+00, %120 ], [ %478, %605 ]
  %629 = phi float [ 0.000000e+00, %120 ], [ %479, %605 ]
  %630 = phi float [ 0.000000e+00, %120 ], [ %480, %605 ]
  %631 = phi float [ 0.000000e+00, %120 ], [ %464, %605 ]
  %632 = phi float [ 0.000000e+00, %120 ], [ 1.000000e+00, %605 ]
  %633 = phi float [ 0.000000e+00, %120 ], [ %558, %605 ]
  %634 = phi float [ 0.000000e+00, %120 ], [ %561, %605 ]
  %635 = phi float [ 0.000000e+00, %120 ], [ %621, %605 ]
  %636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %637 = extractvalue %dx.types.CBufRet.f32 %636, 0
  %638 = call float @dx.op.dot2.f32(i32 54, float %623, float %624, float %623, float %624)  ; Dot2(ax,ay,bx,by)
  %639 = fmul fast float %638, 0x3FE3333340000000
  %640 = fsub fast float 1.000000e+00, %639
  %641 = call float @dx.op.dot3.f32(i32 55, float %623, float %624, float %640, float %623, float %624, float %640)  ; Dot3(ax,ay,az,bx,by,bz)
  %642 = call float @dx.op.unary.f32(i32 25, float %641)  ; Rsqrt(value)
  %643 = fmul fast float %642, %623
  %644 = fmul fast float %642, %624
  %645 = fmul fast float %640, %642
  %646 = fmul fast float %645, %21
  %647 = fmul fast float %645, %22
  %648 = fmul fast float %645, %23
  %649 = fmul fast float %643, %17
  %650 = fmul fast float %643, %18
  %651 = fmul fast float %643, %19
  %652 = fadd fast float %646, %649
  %653 = fadd fast float %647, %650
  %654 = fadd fast float %648, %651
  %655 = fmul fast float %44, %644
  %656 = fmul fast float %45, %644
  %657 = fmul fast float %46, %644
  %658 = fadd fast float %652, %655
  %659 = fadd fast float %653, %656
  %660 = fadd fast float %654, %657
  %661 = call float @dx.op.dot3.f32(i32 55, float %658, float %659, float %660, float %658, float %659, float %660)  ; Dot3(ax,ay,az,bx,by,bz)
  %662 = call float @dx.op.unary.f32(i32 25, float %661)  ; Rsqrt(value)
  %663 = fmul fast float %658, %662
  %664 = fmul fast float %659, %662
  %665 = fmul fast float %660, %662
  %666 = call float @dx.op.unary.f32(i32 83, float %80)  ; DerivCoarseX(value)
  %667 = call float @dx.op.unary.f32(i32 83, float %81)  ; DerivCoarseX(value)
  %668 = call float @dx.op.unary.f32(i32 83, float %82)  ; DerivCoarseX(value)
  %669 = call float @dx.op.unary.f32(i32 84, float %80)  ; DerivCoarseY(value)
  %670 = call float @dx.op.unary.f32(i32 84, float %81)  ; DerivCoarseY(value)
  %671 = call float @dx.op.unary.f32(i32 84, float %82)  ; DerivCoarseY(value)
  %672 = fadd fast float %666, %80
  %673 = fadd fast float %667, %81
  %674 = fadd fast float %668, %82
  %675 = fadd fast float %669, %80
  %676 = fadd fast float %670, %81
  %677 = fadd fast float %671, %82
  %678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %679 = extractvalue %dx.types.CBufRet.f32 %678, 0
  %680 = extractvalue %dx.types.CBufRet.f32 %678, 1
  %681 = extractvalue %dx.types.CBufRet.f32 %678, 2
  %682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %683 = extractvalue %dx.types.CBufRet.f32 %682, 2
  %684 = extractvalue %dx.types.CBufRet.f32 %682, 3
  %685 = fmul fast float %679, %33
  %686 = fmul fast float %685, %683
  %687 = fmul fast float %680, %34
  %688 = fmul fast float %687, %684
  %689 = fptoui float %686 to i32
  %690 = fptoui float %688 to i32
  %691 = fadd fast float %679, -1.000000e+00
  %692 = fadd fast float %680, -1.000000e+00
  %693 = fptoui float %691 to i32
  %694 = fptoui float %692 to i32
  %695 = call i32 @dx.op.binary.i32(i32 40, i32 %689, i32 %693)  ; UMin(a,b)
  %696 = call i32 @dx.op.binary.i32(i32 40, i32 %690, i32 %694)  ; UMin(a,b)
  %697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %698 = extractvalue %dx.types.CBufRet.f32 %697, 2
  %699 = extractvalue %dx.types.CBufRet.f32 %697, 3
  %700 = fmul fast float %698, %28
  %701 = fsub fast float %700, %699
  %702 = fadd fast float %681, -1.000000e+00
  %703 = call float @dx.op.binary.f32(i32 36, float %701, float %702)  ; FMin(a,b)
  %704 = fptoui float %703 to i32
  %705 = fptoui float %679 to i32
  %706 = fptoui float %680 to i32
  %707 = mul i32 %704, %706
  %708 = add i32 %707, %696
  %709 = mul i32 %708, %705
  %710 = add i32 %709, %695
  %711 = shl i32 %710, 2
  %712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %711, i32 undef)  ; BufferLoad(srv,index,wot)
  %713 = extractvalue %dx.types.ResRet.i32 %712, 0
  %714 = and i32 %713, 1023
  %715 = lshr i32 %713, 10
  %716 = icmp eq i32 %714, 0
  br i1 %716, label %1142, label %717

; <label>:717                                     ; preds = %622
  %718 = and i32 %713, 1023
  br label %719

; <label>:719                                     ; preds = %845, %717
  %720 = phi float [ %846, %845 ], [ 0.000000e+00, %717 ]
  %721 = phi float [ %847, %845 ], [ %637, %717 ]
  %722 = phi float [ %848, %845 ], [ %635, %717 ]
  %723 = phi float [ %849, %845 ], [ 0.000000e+00, %717 ]
  %724 = phi float [ %850, %845 ], [ 0.000000e+00, %717 ]
  %725 = phi float [ %851, %845 ], [ %625, %717 ]
  %726 = phi float [ %852, %845 ], [ %626, %717 ]
  %727 = phi float [ %853, %845 ], [ %627, %717 ]
  %728 = phi float [ %854, %845 ], [ %663, %717 ]
  %729 = phi float [ %855, %845 ], [ %664, %717 ]
  %730 = phi float [ %856, %845 ], [ %665, %717 ]
  %731 = phi float [ %857, %845 ], [ %634, %717 ]
  %732 = phi float [ %858, %845 ], [ %633, %717 ]
  %733 = phi float [ %859, %845 ], [ 0.000000e+00, %717 ]
  %734 = phi float [ %860, %845 ], [ %631, %717 ]
  %735 = phi float [ %861, %845 ], [ %628, %717 ]
  %736 = phi float [ %862, %845 ], [ %629, %717 ]
  %737 = phi float [ %863, %845 ], [ %630, %717 ]
  %738 = phi i32 [ %795, %845 ], [ 0, %717 ]
  %739 = add nuw nsw i32 %738, %715
  %740 = shl i32 %739, 2
  %741 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %740, i32 undef)  ; BufferLoad(srv,index,wot)
  %742 = extractvalue %dx.types.ResRet.i32 %741, 0
  %743 = shl i32 %742, 8
  %744 = or i32 %743, 48
  %745 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %744, i32 undef)  ; BufferLoad(srv,index,wot)
  %746 = extractvalue %dx.types.ResRet.f32 %745, 0
  %747 = extractvalue %dx.types.ResRet.f32 %745, 1
  %748 = extractvalue %dx.types.ResRet.f32 %745, 2
  %749 = extractvalue %dx.types.ResRet.f32 %745, 3
  %750 = or i32 %743, 64
  %751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %750, i32 undef)  ; BufferLoad(srv,index,wot)
  %752 = extractvalue %dx.types.ResRet.i32 %751, 0
  %753 = extractvalue %dx.types.ResRet.i32 %751, 1
  %754 = or i32 %743, 80
  %755 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %754, i32 undef)  ; BufferLoad(srv,index,wot)
  %756 = extractvalue %dx.types.ResRet.f32 %755, 2
  %757 = extractvalue %dx.types.ResRet.f32 %755, 3
  %758 = or i32 %743, 96
  %759 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %758, i32 undef)  ; BufferLoad(srv,index,wot)
  %760 = extractvalue %dx.types.ResRet.f32 %759, 0
  %761 = extractvalue %dx.types.ResRet.f32 %759, 1
  %762 = extractvalue %dx.types.ResRet.f32 %759, 2
  %763 = extractvalue %dx.types.ResRet.f32 %759, 3
  %764 = or i32 %743, 112
  %765 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %764, i32 undef)  ; BufferLoad(srv,index,wot)
  %766 = extractvalue %dx.types.ResRet.f32 %765, 2
  %767 = or i32 %743, 128
  %768 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %767, i32 undef)  ; BufferLoad(srv,index,wot)
  %769 = extractvalue %dx.types.ResRet.f32 %768, 0
  %770 = extractvalue %dx.types.ResRet.f32 %768, 1
  %771 = extractvalue %dx.types.ResRet.f32 %768, 2
  %772 = extractvalue %dx.types.ResRet.f32 %768, 3
  %773 = or i32 %743, 144
  %774 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %773, i32 undef)  ; BufferLoad(srv,index,wot)
  %775 = extractvalue %dx.types.ResRet.f32 %774, 0
  %776 = extractvalue %dx.types.ResRet.f32 %774, 1
  %777 = extractvalue %dx.types.ResRet.f32 %774, 2
  %778 = extractvalue %dx.types.ResRet.f32 %774, 3
  %779 = or i32 %743, 160
  %780 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %779, i32 undef)  ; BufferLoad(srv,index,wot)
  %781 = extractvalue %dx.types.ResRet.f32 %780, 0
  %782 = extractvalue %dx.types.ResRet.f32 %780, 1
  %783 = extractvalue %dx.types.ResRet.f32 %780, 2
  %784 = extractvalue %dx.types.ResRet.f32 %780, 3
  %785 = or i32 %743, 192
  %786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %785, i32 undef)  ; BufferLoad(srv,index,wot)
  %787 = extractvalue %dx.types.ResRet.i32 %786, 0
  %788 = or i32 %743, 208
  %789 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %788, i32 undef)  ; BufferLoad(srv,index,wot)
  %790 = extractvalue %dx.types.ResRet.f32 %789, 0
  %791 = or i32 %743, 248
  %792 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %791, i32 undef)  ; BufferLoad(srv,index,wot)
  %793 = extractvalue %dx.types.ResRet.f32 %792, 0
  %794 = extractvalue %dx.types.ResRet.f32 %792, 1
  %795 = add nuw nsw i32 %738, 1
  %796 = bitcast float %749 to i32
  %797 = and i32 %796, 2560
  %798 = icmp eq i32 %797, 0
  %799 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %743, i32 undef)  ; BufferLoad(srv,index,wot)
  %800 = extractvalue %dx.types.ResRet.f32 %799, 0
  %801 = extractvalue %dx.types.ResRet.f32 %799, 1
  %802 = extractvalue %dx.types.ResRet.f32 %799, 2
  %803 = extractvalue %dx.types.ResRet.f32 %799, 3
  %804 = call float @dx.op.dot4.f32(i32 56, float %800, float %801, float %802, float %803, float %80, float %81, float %82, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %805 = or i32 %743, 16
  %806 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %805, i32 undef)  ; BufferLoad(srv,index,wot)
  %807 = extractvalue %dx.types.ResRet.f32 %806, 0
  %808 = extractvalue %dx.types.ResRet.f32 %806, 1
  %809 = extractvalue %dx.types.ResRet.f32 %806, 2
  %810 = extractvalue %dx.types.ResRet.f32 %806, 3
  %811 = call float @dx.op.dot4.f32(i32 56, float %807, float %808, float %809, float %810, float %80, float %81, float %82, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %812 = or i32 %743, 32
  %813 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %812, i32 undef)  ; BufferLoad(srv,index,wot)
  %814 = extractvalue %dx.types.ResRet.f32 %813, 0
  %815 = extractvalue %dx.types.ResRet.f32 %813, 1
  %816 = extractvalue %dx.types.ResRet.f32 %813, 2
  %817 = extractvalue %dx.types.ResRet.f32 %813, 3
  %818 = call float @dx.op.dot4.f32(i32 56, float %814, float %815, float %816, float %817, float %80, float %81, float %82, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %819 = call float @dx.op.unary.f32(i32 27, float %804)  ; Round_ni(value)
  %820 = call float @dx.op.unary.f32(i32 6, float %819)  ; FAbs(value)
  %821 = call float @dx.op.unary.f32(i32 27, float %811)  ; Round_ni(value)
  %822 = call float @dx.op.unary.f32(i32 6, float %821)  ; FAbs(value)
  %823 = call float @dx.op.unary.f32(i32 6, float %818)  ; FAbs(value)
  %824 = call float @dx.op.unary.f32(i32 27, float %823)  ; Round_ni(value)
  %825 = fadd fast float %822, %820
  %826 = fadd fast float %825, %824
  %827 = fcmp fast oeq float %826, 0.000000e+00
  %828 = call float @dx.op.dot4.f32(i32 56, float %800, float %801, float %802, float %803, float %672, float %673, float %674, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %829 = call float @dx.op.dot4.f32(i32 56, float %807, float %808, float %809, float %810, float %672, float %673, float %674, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %830 = call float @dx.op.dot4.f32(i32 56, float %800, float %801, float %802, float %803, float %675, float %676, float %677, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %831 = call float @dx.op.dot4.f32(i32 56, float %807, float %808, float %809, float %810, float %675, float %676, float %677, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %832 = fsub fast float %828, %804
  %833 = fsub fast float %830, %804
  %834 = fsub fast float %829, %811
  %835 = fsub fast float %831, %811
  %836 = call float @dx.op.dot3.f32(i32 55, float %746, float %747, float %748, float %21, float %22, float %23)  ; Dot3(ax,ay,az,bx,by,bz)
  %837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %838 = extractvalue %dx.types.CBufRet.f32 %837, 2
  %839 = fadd fast float %838, %836
  %840 = call float @dx.op.unary.f32(i32 7, float %839)  ; Saturate(value)
  %841 = extractvalue %dx.types.CBufRet.f32 %837, 0
  %842 = fcmp fast ogt float %840, %841
  %843 = and i1 %827, %842
  %844 = and i1 %798, %843
  br i1 %844, label %865, label %845

; <label>:845                                     ; preds = %1128, %946, %865, %719
  %846 = phi float [ %720, %865 ], [ %949, %946 ], [ %949, %1128 ], [ %720, %719 ]
  %847 = phi float [ %721, %865 ], [ %721, %946 ], [ %1103, %1128 ], [ %721, %719 ]
  %848 = phi float [ %722, %865 ], [ %722, %946 ], [ %1101, %1128 ], [ %722, %719 ]
  %849 = phi float [ %723, %865 ], [ %723, %946 ], [ %1073, %1128 ], [ %723, %719 ]
  %850 = phi float [ %724, %865 ], [ %724, %946 ], [ %1071, %1128 ], [ %724, %719 ]
  %851 = phi float [ %725, %865 ], [ %725, %946 ], [ %1138, %1128 ], [ %725, %719 ]
  %852 = phi float [ %726, %865 ], [ %726, %946 ], [ %1139, %1128 ], [ %726, %719 ]
  %853 = phi float [ %727, %865 ], [ %727, %946 ], [ %1140, %1128 ], [ %727, %719 ]
  %854 = phi float [ %728, %865 ], [ %728, %946 ], [ %1052, %1128 ], [ %728, %719 ]
  %855 = phi float [ %729, %865 ], [ %729, %946 ], [ %1053, %1128 ], [ %729, %719 ]
  %856 = phi float [ %730, %865 ], [ %730, %946 ], [ %1054, %1128 ], [ %730, %719 ]
  %857 = phi float [ %731, %865 ], [ %731, %946 ], [ %1081, %1128 ], [ %731, %719 ]
  %858 = phi float [ %732, %865 ], [ %732, %946 ], [ %1078, %1128 ], [ %732, %719 ]
  %859 = phi float [ %733, %865 ], [ %733, %946 ], [ %1075, %1128 ], [ %733, %719 ]
  %860 = phi float [ %734, %865 ], [ %734, %946 ], [ %1069, %1128 ], [ %734, %719 ]
  %861 = phi float [ %735, %865 ], [ %735, %946 ], [ %1064, %1128 ], [ %735, %719 ]
  %862 = phi float [ %736, %865 ], [ %736, %946 ], [ %1065, %1128 ], [ %736, %719 ]
  %863 = phi float [ %737, %865 ], [ %737, %946 ], [ %1066, %1128 ], [ %737, %719 ]
  %864 = icmp eq i32 %795, %718
  br i1 %864, label %1141, label %719

; <label>:865                                     ; preds = %719
  %866 = extractvalue %dx.types.ResRet.f32 %765, 3
  %867 = extractvalue %dx.types.ResRet.f32 %765, 1
  %868 = extractvalue %dx.types.ResRet.f32 %765, 0
  %869 = extractvalue %dx.types.ResRet.f32 %755, 1
  %870 = extractvalue %dx.types.ResRet.f32 %755, 0
  %871 = extractvalue %dx.types.ResRet.i32 %751, 3
  %872 = extractvalue %dx.types.ResRet.i32 %751, 2
  %873 = add i32 %871, 0
  %874 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %873, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %875 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %876 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %874, %dx.types.Handle %875, float %804, float %811, float undef, float undef, i32 0, i32 0, i32 undef, float %832, float %834, float undef, float %833, float %835, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %877 = extractvalue %dx.types.ResRet.f32 %876, 0
  %878 = fmul fast float %877, %870
  %879 = fadd fast float %878, %869
  %880 = call float @dx.op.unary.f32(i32 7, float %879)  ; Saturate(value)
  %881 = fmul fast float %804, %760
  %882 = call float @dx.op.tertiary.f32(i32 46, float %761, float %811, float %881)  ; FMad(a,b,c)
  %883 = fadd fast float %882, %868
  %884 = fmul fast float %804, %762
  %885 = call float @dx.op.tertiary.f32(i32 46, float %763, float %811, float %884)  ; FMad(a,b,c)
  %886 = fadd fast float %885, %867
  %887 = fmul fast float %832, %760
  %888 = call float @dx.op.tertiary.f32(i32 46, float %761, float %834, float %887)  ; FMad(a,b,c)
  %889 = fmul fast float %832, %762
  %890 = call float @dx.op.tertiary.f32(i32 46, float %763, float %834, float %889)  ; FMad(a,b,c)
  %891 = fmul fast float %833, %760
  %892 = call float @dx.op.tertiary.f32(i32 46, float %761, float %835, float %891)  ; FMad(a,b,c)
  %893 = fmul fast float %833, %762
  %894 = call float @dx.op.tertiary.f32(i32 46, float %763, float %835, float %893)  ; FMad(a,b,c)
  %895 = add i32 %872, 0
  %896 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %895, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %897 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %896, %dx.types.Handle %875, float %883, float %886, float undef, float undef, i32 0, i32 0, i32 undef, float %888, float %890, float undef, float %892, float %894, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %898 = extractvalue %dx.types.ResRet.f32 %897, 0
  %899 = and i32 %796, 1024
  %900 = icmp ne i32 %899, 0
  %901 = fcmp fast ogt float %898, 0x3FE0101020000000
  %902 = uitofp i1 %901 to float
  %903 = select i1 %900, float %902, float %898
  %904 = and i32 %796, 8192
  %905 = icmp ne i32 %904, 0
  %906 = select i1 %905, float %866, float 1.000000e+00
  %907 = fmul fast float %804, 2.000000e+00
  %908 = fadd fast float %907, -1.000000e+00
  %909 = call float @dx.op.unary.f32(i32 6, float %908)  ; FAbs(value)
  %910 = fmul fast float %909, %793
  %911 = fsub fast float %910, %793
  %912 = call float @dx.op.unary.f32(i32 7, float %911)  ; Saturate(value)
  %913 = fmul fast float %811, 2.000000e+00
  %914 = fadd fast float %913, -1.000000e+00
  %915 = call float @dx.op.unary.f32(i32 6, float %914)  ; FAbs(value)
  %916 = fmul fast float %915, %794
  %917 = fsub fast float %916, %794
  %918 = call float @dx.op.unary.f32(i32 7, float %917)  ; Saturate(value)
  %919 = fmul fast float %823, %756
  %920 = fsub fast float %919, %756
  %921 = call float @dx.op.unary.f32(i32 7, float %920)  ; Saturate(value)
  %922 = fmul fast float %880, %906
  %923 = fmul fast float %922, %877
  %924 = fmul fast float %923, %912
  %925 = fmul fast float %924, %903
  %926 = fmul fast float %925, %918
  %927 = fmul fast float %926, %921
  %928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %929 = extractvalue %dx.types.CBufRet.f32 %928, 1
  %930 = extractvalue %dx.types.CBufRet.f32 %928, 0
  %931 = fsub fast float %840, %930
  %932 = fmul fast float %931, %929
  %933 = call float @dx.op.unary.f32(i32 7, float %932)  ; Saturate(value)
  %934 = fmul fast float %927, %757
  %935 = fadd fast float %927, %757
  %936 = fmul fast float %935, %766
  %937 = fsub fast float %936, %766
  %938 = call float @dx.op.unary.f32(i32 7, float %937)  ; Saturate(value)
  %939 = and i32 %796, 128
  %940 = icmp ne i32 %939, 0
  %941 = select i1 %940, float %938, float %934
  %942 = fmul fast float %941, %933
  %943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %944 = extractvalue %dx.types.CBufRet.f32 %943, 0
  %945 = fcmp fast ugt float %942, %944
  br i1 %945, label %946, label %845

; <label>:946                                     ; preds = %865
  %947 = select i1 %905, float %942, float 0.000000e+00
  %948 = fadd fast float %947, %720
  %949 = call float @dx.op.unary.f32(i32 7, float %948)  ; Saturate(value)
  br i1 %905, label %845, label %950

; <label>:950                                     ; preds = %946
  %951 = and i32 %796, 4
  %952 = and i32 %796, 8
  %953 = add i32 %752, 0
  %954 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %953, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %955 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %956 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %954, %dx.types.Handle %955, float %883, float %886, float undef, float undef, i32 0, i32 0, i32 undef, float %888, float %890, float undef, float %892, float %894, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %957 = extractvalue %dx.types.ResRet.f32 %956, 0
  %958 = extractvalue %dx.types.ResRet.f32 %956, 1
  %959 = extractvalue %dx.types.ResRet.f32 %956, 2
  %960 = extractvalue %dx.types.ResRet.f32 %956, 3
  %961 = bitcast float %778 to i32
  %962 = and i32 %961, 255
  %963 = uitofp i32 %962 to float
  %964 = lshr i32 %961, 8
  %965 = and i32 %964, 255
  %966 = uitofp i32 %965 to float
  %967 = fmul fast float %960, %963
  %968 = fadd fast float %967, %966
  %969 = fmul fast float %968, 0x3F70101000000000
  %970 = add i32 %753, 0
  %971 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %970, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %972 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %971, %dx.types.Handle %955, float %883, float %886, float undef, float undef, i32 0, i32 0, i32 undef, float %888, float %890, float undef, float %892, float %894, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %973 = extractvalue %dx.types.ResRet.f32 %972, 0
  %974 = extractvalue %dx.types.ResRet.f32 %972, 1
  %975 = extractvalue %dx.types.ResRet.f32 %972, 2
  %976 = extractvalue %dx.types.ResRet.f32 %972, 3
  %977 = bitcast float %772 to i32
  %978 = and i32 %977, 255
  %979 = uitofp i32 %978 to float
  %980 = lshr i32 %977, 8
  %981 = and i32 %980, 255
  %982 = uitofp i32 %981 to float
  %983 = lshr i32 %977, 16
  %984 = and i32 %983, 255
  %985 = uitofp i32 %984 to float
  %986 = fmul fast float %985, 0x3F70101000000000
  %987 = fmul fast float %973, %979
  %988 = fadd fast float %987, %982
  %989 = fmul fast float %988, 0x3F70101000000000
  %990 = fadd fast float %974, -5.000000e-01
  %991 = fadd fast float %976, -5.000000e-01
  %992 = fmul fast float %990, %986
  %993 = fmul fast float %991, %986
  %994 = fadd fast float %992, 5.000000e-01
  %995 = fadd fast float %993, 5.000000e-01
  %996 = fmul fast float %957, %781
  %997 = fmul fast float %958, %782
  %998 = fmul fast float %959, %783
  %999 = fmul fast float %994, 2.000000e+00
  %1000 = fadd fast float %999, -1.000000e+00
  %1001 = fmul fast float %995, 2.000000e+00
  %1002 = fadd fast float %1001, -1.000000e+00
  %1003 = fadd fast float %1000, %1002
  %1004 = fmul fast float %1003, 5.000000e-01
  %1005 = fsub fast float %1000, %1002
  %1006 = fmul fast float %1005, 5.000000e-01
  %1007 = call float @dx.op.unary.f32(i32 6, float %1004)  ; FAbs(value)
  %1008 = fsub fast float 1.000000e+00, %1007
  %1009 = call float @dx.op.unary.f32(i32 6, float %1006)  ; FAbs(value)
  %1010 = fsub fast float %1008, %1009
  %1011 = call float @dx.op.dot3.f32(i32 55, float %1004, float %1006, float %1010, float %1004, float %1006, float %1010)  ; Dot3(ax,ay,az,bx,by,bz)
  %1012 = call float @dx.op.unary.f32(i32 25, float %1011)  ; Rsqrt(value)
  %1013 = fmul fast float %1004, %1012
  %1014 = fmul fast float %1006, %1012
  %1015 = fmul fast float %1012, %1010
  %1016 = fmul fast float %1015, %746
  %1017 = fmul fast float %1015, %747
  %1018 = fmul fast float %1015, %748
  %1019 = fmul fast float %1013, %769
  %1020 = fmul fast float %1013, %770
  %1021 = fmul fast float %1013, %771
  %1022 = fadd fast float %1019, %1016
  %1023 = fadd fast float %1020, %1017
  %1024 = fadd fast float %1021, %1018
  %1025 = fmul fast float %1014, %775
  %1026 = fmul fast float %1014, %776
  %1027 = fmul fast float %1014, %777
  %1028 = fadd fast float %1022, %1025
  %1029 = fadd fast float %1023, %1026
  %1030 = fadd fast float %1024, %1027
  %1031 = call float @dx.op.dot3.f32(i32 55, float %1028, float %1029, float %1030, float %1028, float %1029, float %1030)  ; Dot3(ax,ay,az,bx,by,bz)
  %1032 = call float @dx.op.unary.f32(i32 25, float %1031)  ; Rsqrt(value)
  %1033 = fmul fast float %1028, %1032
  %1034 = fmul fast float %1029, %1032
  %1035 = fmul fast float %1030, %1032
  %1036 = icmp ne i32 %952, 0
  %1037 = select i1 %1036, float 1.000000e+00, float 0.000000e+00
  %1038 = fmul fast float %942, %1037
  %1039 = and i32 %796, 1
  %1040 = icmp eq i32 %1039, 0
  br i1 %1040, label %1041, label %1045

; <label>:1041                                    ; preds = %950
  %1042 = fsub fast float %1033, %728
  %1043 = fsub fast float %1034, %729
  %1044 = fsub fast float %1035, %730
  br label %1045

; <label>:1045                                    ; preds = %1041, %950
  %1046 = phi float [ %1042, %1041 ], [ %1033, %950 ]
  %1047 = phi float [ %1043, %1041 ], [ %1034, %950 ]
  %1048 = phi float [ %1044, %1041 ], [ %1035, %950 ]
  %1049 = fmul float %1048, %1038
  %1050 = fmul float %1047, %1038
  %1051 = fmul float %1046, %1038
  %1052 = fadd fast float %1051, %728
  %1053 = fadd fast float %1050, %729
  %1054 = fadd fast float %1049, %730
  %1055 = icmp ne i32 %951, 0
  %1056 = select i1 %1055, float 1.000000e+00, float 0.000000e+00
  %1057 = fmul fast float %942, %1056
  %1058 = fsub fast float %996, %735
  %1059 = fsub fast float %997, %736
  %1060 = fsub fast float %998, %737
  %1061 = fmul fast float %1058, %1057
  %1062 = fmul fast float %1059, %1057
  %1063 = fmul fast float %1060, %1057
  %1064 = fadd fast float %1061, %735
  %1065 = fadd fast float %1062, %736
  %1066 = fadd fast float %1063, %737
  %1067 = fsub fast float %969, %734
  %1068 = fmul fast float %1067, %1057
  %1069 = fadd fast float %1068, %734
  %1070 = fmul fast float %1057, %724
  %1071 = fsub fast float %724, %1070
  %1072 = fmul fast float %1057, %723
  %1073 = fsub fast float %723, %1072
  %1074 = fadd fast float %942, %733
  %1075 = call float @dx.op.unary.f32(i32 7, float %1074)  ; Saturate(value)
  %1076 = fsub fast float %989, %732
  %1077 = fmul fast float %1076, %1038
  %1078 = fadd fast float %1077, %732
  %1079 = fsub fast float %975, %731
  %1080 = fmul fast float %1079, %1038
  %1081 = fadd fast float %1080, %731
  %1082 = call float @dx.op.dot3.f32(i32 55, float %996, float %997, float %998, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1084 = extractvalue %dx.types.CBufRet.f32 %1083, 0
  %1085 = extractvalue %dx.types.CBufRet.f32 %1083, 1
  %1086 = fmul fast float %1085, %1082
  %1087 = fadd fast float %1086, %1084
  %1088 = call float @dx.op.unary.f32(i32 7, float %1087)  ; Saturate(value)
  %1089 = bitcast float %784 to i32
  %1090 = and i32 %1089, 65535
  %1091 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1090)  ; LegacyF16ToF32(value)
  %1092 = lshr i32 %1089, 16
  %1093 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1092)  ; LegacyF16ToF32(value)
  %1094 = fcmp fast oge float %1091, 0.000000e+00
  %1095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1096 = extractvalue %dx.types.CBufRet.f32 %1095, 0
  %1097 = select i1 %1094, float %1091, float %1096
  %1098 = fadd fast float %1097, %1093
  %1099 = fsub fast float %1088, %722
  %1100 = fmul fast float %1099, %942
  %1101 = fadd fast float %1100, %722
  %1102 = fmul fast float %1098, %942
  %1103 = call float @dx.op.binary.f32(i32 35, float %721, float %1102)  ; FMax(a,b)
  %1104 = and i32 %796, 16
  %1105 = icmp eq i32 %1104, 0
  br i1 %1105, label %1128, label %1106

; <label>:1106                                    ; preds = %1045
  %1107 = bitcast float %790 to i32
  %1108 = add i32 %787, 0
  %1109 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1108, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1110 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1109, %dx.types.Handle %955, float %883, float %886, float undef, float undef, i32 0, i32 0, i32 undef, float %888, float %890, float undef, float %892, float %894, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1111 = extractvalue %dx.types.ResRet.f32 %1110, 0
  %1112 = extractvalue %dx.types.ResRet.f32 %1110, 1
  %1113 = extractvalue %dx.types.ResRet.f32 %1110, 2
  %1114 = and i32 %1107, 65535
  %1115 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1114)  ; LegacyF16ToF32(value)
  %1116 = fmul fast float %1111, %781
  %1117 = fmul fast float %1112, %782
  %1118 = fmul fast float %1113, %783
  %1119 = and i32 %796, 16384
  %1120 = icmp ne i32 %1119, 0
  %1121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1122 = extractvalue %dx.types.CBufRet.f32 %1121, 0
  %1123 = select i1 %1120, float %1122, float 1.000000e+00
  %1124 = fmul fast float %1123, %1115
  %1125 = fmul fast float %1116, %1124
  %1126 = fmul fast float %1117, %1124
  %1127 = fmul fast float %1118, %1124
  br label %1128

; <label>:1128                                    ; preds = %1106, %1045
  %1129 = phi float [ %1125, %1106 ], [ 0.000000e+00, %1045 ]
  %1130 = phi float [ %1126, %1106 ], [ 0.000000e+00, %1045 ]
  %1131 = phi float [ %1127, %1106 ], [ 0.000000e+00, %1045 ]
  %1132 = fsub fast float %1129, %725
  %1133 = fsub fast float %1130, %726
  %1134 = fsub fast float %1131, %727
  %1135 = fmul fast float %1132, %942
  %1136 = fmul fast float %1133, %942
  %1137 = fmul fast float %1134, %942
  %1138 = fadd fast float %1135, %725
  %1139 = fadd fast float %1136, %726
  %1140 = fadd fast float %1137, %727
  br label %845

; <label>:1141                                    ; preds = %845
  br label %1142

; <label>:1142                                    ; preds = %1141, %622
  %1143 = phi float [ 0.000000e+00, %622 ], [ %846, %1141 ]
  %1144 = phi float [ %637, %622 ], [ %847, %1141 ]
  %1145 = phi float [ %635, %622 ], [ %848, %1141 ]
  %1146 = phi float [ 0.000000e+00, %622 ], [ %849, %1141 ]
  %1147 = phi float [ 0.000000e+00, %622 ], [ %850, %1141 ]
  %1148 = phi float [ %625, %622 ], [ %851, %1141 ]
  %1149 = phi float [ %626, %622 ], [ %852, %1141 ]
  %1150 = phi float [ %627, %622 ], [ %853, %1141 ]
  %1151 = phi float [ %663, %622 ], [ %854, %1141 ]
  %1152 = phi float [ %664, %622 ], [ %855, %1141 ]
  %1153 = phi float [ %665, %622 ], [ %856, %1141 ]
  %1154 = phi float [ %634, %622 ], [ %857, %1141 ]
  %1155 = phi float [ %633, %622 ], [ %858, %1141 ]
  %1156 = phi float [ 0.000000e+00, %622 ], [ %859, %1141 ]
  %1157 = phi float [ %631, %622 ], [ %860, %1141 ]
  %1158 = phi float [ %628, %622 ], [ %861, %1141 ]
  %1159 = phi float [ %629, %622 ], [ %862, %1141 ]
  %1160 = phi float [ %630, %622 ], [ %863, %1141 ]
  %1161 = call float @dx.op.dot3.f32(i32 55, float %1151, float %1152, float %1153, float %1151, float %1152, float %1153)  ; Dot3(ax,ay,az,bx,by,bz)
  %1162 = call float @dx.op.unary.f32(i32 25, float %1161)  ; Rsqrt(value)
  %1163 = fmul fast float %1162, %1151
  %1164 = fmul fast float %1162, %1152
  %1165 = fmul fast float %1162, %1153
  %1166 = fadd fast float %1156, %632
  %1167 = call float @dx.op.unary.f32(i32 7, float %1166)  ; Saturate(value)
  %1168 = call float @dx.op.dot3.f32(i32 55, float %1163, float %1164, float %1165, float %1163, float %1164, float %1165)  ; Dot3(ax,ay,az,bx,by,bz)
  %1169 = call float @dx.op.unary.f32(i32 25, float %1168)  ; Rsqrt(value)
  %1170 = fmul fast float %1169, %1163
  %1171 = fmul fast float %1169, %1164
  %1172 = fmul fast float %1169, %1165
  %1173 = fadd fast float %1157, 0xBFB99999A0000000
  %1174 = call float @dx.op.unary.f32(i32 7, float %1173)  ; Saturate(value)
  %1175 = fmul fast float %1174, 0x3FF1C71C80000000
  %1176 = call float @dx.op.binary.f32(i32 36, float %1157, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1177 = fsub fast float 1.000000e+00, %1175
  %1178 = call float @dx.op.unary.f32(i32 7, float %1177)  ; Saturate(value)
  %1179 = fmul fast float %1178, %1158
  %1180 = fmul fast float %1178, %1159
  %1181 = fmul fast float %1178, %1160
  %1182 = call float @dx.op.unary.f32(i32 7, float %1179)  ; Saturate(value)
  %1183 = call float @dx.op.unary.f32(i32 7, float %1180)  ; Saturate(value)
  %1184 = call float @dx.op.unary.f32(i32 7, float %1181)  ; Saturate(value)
  %1185 = fmul fast float %1175, %1158
  %1186 = fmul fast float %1175, %1159
  %1187 = fmul fast float %1175, %1160
  %1188 = fadd fast float %1185, %1176
  %1189 = fadd fast float %1186, %1176
  %1190 = fadd fast float %1187, %1176
  %1191 = call float @dx.op.unary.f32(i32 7, float %1188)  ; Saturate(value)
  %1192 = call float @dx.op.unary.f32(i32 7, float %1189)  ; Saturate(value)
  %1193 = call float @dx.op.unary.f32(i32 7, float %1190)  ; Saturate(value)
  %1194 = call float @dx.op.unary.f32(i32 7, float %1155)  ; Saturate(value)
  %1195 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1196 = extractvalue %dx.types.CBufRet.i32 %1195, 3
  %1197 = and i32 %1196, 8
  %1198 = icmp ne i32 %1197, 0
  %1199 = call float @dx.op.binary.f32(i32 35, float %1182, float %1158)  ; FMax(a,b)
  %1200 = call float @dx.op.binary.f32(i32 35, float %1183, float %1158)  ; FMax(a,b)
  %1201 = call float @dx.op.binary.f32(i32 35, float %1184, float %1158)  ; FMax(a,b)
  %1202 = call float @dx.op.dot3.f32(i32 55, float %1182, float %1183, float %1184, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1203 = select i1 %121, float %1158, float %1182
  %1204 = select i1 %121, float %1202, float %1183
  %1205 = select i1 %121, float 1.000000e+00, float %1184
  %1206 = select i1 %1198, float %1199, float %1203
  %1207 = select i1 %1198, float %1200, float %1204
  %1208 = select i1 %1198, float %1201, float %1205
  %1209 = and i32 %97, 3
  %1210 = select i1 %91, i32 %1209, i32 0
  %1211 = icmp eq i32 %1210, 1
  br i1 %1211, label %1212, label %1288

; <label>:1212                                    ; preds = %1142
  %1213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1214 = extractvalue %dx.types.CBufRet.f32 %1213, 0
  %1215 = extractvalue %dx.types.CBufRet.f32 %1213, 1
  %1216 = fadd fast float %1214, %80
  %1217 = fadd fast float %1215, %81
  %1218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1219 = extractvalue %dx.types.CBufRet.f32 %1218, 0
  %1220 = extractvalue %dx.types.CBufRet.f32 %1218, 1
  %1221 = fsub fast float %1216, %1219
  %1222 = fsub fast float %1217, %1220
  %1223 = fmul fast float %1221, %1221
  %1224 = fmul fast float %1222, %1222
  %1225 = fadd fast float %1223, %1224
  %1226 = call float @dx.op.unary.f32(i32 24, float %1225)  ; Sqrt(value)
  %1227 = extractvalue %dx.types.CBufRet.f32 %1218, 2
  %1228 = fcmp fast olt float %1226, %1227
  br i1 %1228, label %1229, label %1282

; <label>:1229                                    ; preds = %1212
  %1230 = extractvalue %dx.types.CBufRet.f32 %1213, 2
  %1231 = fadd fast float %1230, %82
  %1232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1233 = extractvalue %dx.types.CBufRet.f32 %1232, 0
  %1234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1235 = extractvalue %dx.types.CBufRet.f32 %1234, 0
  %1236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1237 = extractvalue %dx.types.CBufRet.f32 %1236, 0
  %1238 = extractvalue %dx.types.CBufRet.f32 %1232, 1
  %1239 = extractvalue %dx.types.CBufRet.f32 %1234, 1
  %1240 = extractvalue %dx.types.CBufRet.f32 %1236, 1
  %1241 = extractvalue %dx.types.CBufRet.f32 %1232, 3
  %1242 = extractvalue %dx.types.CBufRet.f32 %1234, 3
  %1243 = extractvalue %dx.types.CBufRet.f32 %1236, 3
  %1244 = fadd fast float %1241, %1216
  %1245 = fadd fast float %1242, %1217
  %1246 = fadd fast float %1231, %1243
  %1247 = fmul fast float %1244, %1233
  %1248 = call float @dx.op.tertiary.f32(i32 46, float %1245, float %1235, float %1247)  ; FMad(a,b,c)
  %1249 = call float @dx.op.tertiary.f32(i32 46, float %1246, float %1237, float %1248)  ; FMad(a,b,c)
  %1250 = fmul fast float %1244, %1238
  %1251 = call float @dx.op.tertiary.f32(i32 46, float %1245, float %1239, float %1250)  ; FMad(a,b,c)
  %1252 = call float @dx.op.tertiary.f32(i32 46, float %1246, float %1240, float %1251)  ; FMad(a,b,c)
  %1253 = fsub fast float %1249, %1241
  %1254 = fsub fast float %1252, %1242
  %1255 = fsub fast float %1253, %1219
  %1256 = fadd fast float %1255, %1227
  %1257 = fsub fast float %1254, %1220
  %1258 = fadd fast float %1257, %1227
  %1259 = extractvalue %dx.types.CBufRet.f32 %1218, 3
  %1260 = fmul fast float %1256, %1259
  %1261 = fmul fast float %1258, %1259
  %1262 = call float @dx.op.unary.f32(i32 7, float %1260)  ; Saturate(value)
  %1263 = call float @dx.op.unary.f32(i32 7, float %1261)  ; Saturate(value)
  %1264 = fsub fast float 1.000000e+00, %1262
  %1265 = fsub fast float 1.000000e+00, %1263
  %1266 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %12, float %1264, float %1265, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1267 = extractvalue %dx.types.ResRet.f32 %1266, 0
  %1268 = fcmp fast ugt float %1267, 0.000000e+00
  br i1 %1268, label %1269, label %1282

; <label>:1269                                    ; preds = %1229
  %1270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1271 = extractvalue %dx.types.CBufRet.f32 %1270, 2
  %1272 = fmul fast float %1271, %1267
  %1273 = extractvalue %dx.types.CBufRet.f32 %1270, 3
  %1274 = fadd fast float %1273, %1272
  %1275 = extractvalue %dx.types.CBufRet.f32 %1236, 2
  %1276 = fadd fast float %1274, %1243
  %1277 = fmul fast float %1249, %1237
  %1278 = call float @dx.op.tertiary.f32(i32 46, float %1252, float %1240, float %1277)  ; FMad(a,b,c)
  %1279 = call float @dx.op.tertiary.f32(i32 46, float %1276, float %1275, float %1278)  ; FMad(a,b,c)
  %1280 = fsub fast float %1279, %1243
  %1281 = fsub fast float %1280, %1230
  br label %1282

; <label>:1282                                    ; preds = %1269, %1229, %1212
  %1283 = phi i1 [ true, %1269 ], [ false, %1229 ], [ false, %1212 ]
  %1284 = phi float [ %1281, %1269 ], [ -1.310720e+05, %1229 ], [ -1.310720e+05, %1212 ]
  %1285 = fsub fast float %1284, %82
  %1286 = call float @dx.op.unary.f32(i32 7, float %1285)  ; Saturate(value)
  %1287 = select i1 %1283, float %1286, float 1.000000e+00
  br label %1288

; <label>:1288                                    ; preds = %1282, %1142
  %1289 = phi float [ %1287, %1282 ], [ 0.000000e+00, %1142 ]
  %1290 = icmp eq i32 %1210, 3
  %1291 = select i1 %1290, float 1.000000e+00, float %1289
  %1292 = call float @dx.op.binary.f32(i32 35, float %1143, float %1291)  ; FMax(a,b)
  %1293 = call float @dx.op.unary.f32(i32 7, float %1292)  ; Saturate(value)
  %1294 = fcmp fast une float %1293, 0.000000e+00
  %1295 = call float @dx.op.dot3.f32(i32 55, float %80, float %81, float %82, float %80, float %81, float %82)  ; Dot3(ax,ay,az,bx,by,bz)
  %1296 = call float @dx.op.unary.f32(i32 25, float %1295)  ; Rsqrt(value)
  br i1 %1294, label %1304, label %1297

; <label>:1297                                    ; preds = %1288
  %1298 = fmul fast float %1296, %80
  %1299 = fmul fast float %1296, %81
  %1300 = fmul fast float %1296, %82
  %1301 = fsub fast float -0.000000e+00, %1298
  %1302 = fsub fast float -0.000000e+00, %1299
  %1303 = fsub fast float -0.000000e+00, %1300
  br label %1472

; <label>:1304                                    ; preds = %1288
  %1305 = fmul fast float %80, %1296
  %1306 = fsub fast float -0.000000e+00, %1305
  %1307 = fmul fast float %81, %1296
  %1308 = fsub fast float -0.000000e+00, %1307
  %1309 = fmul fast float %82, %1296
  %1310 = fsub fast float -0.000000e+00, %1309
  %1311 = call float @dx.op.dot3.f32(i32 55, float %1306, float %1308, float %1310, float %21, float %22, float %23)  ; Dot3(ax,ay,az,bx,by,bz)
  %1312 = fmul fast float %1293, 2.500000e+00
  %1313 = call float @dx.op.unary.f32(i32 7, float %1312)  ; Saturate(value)
  %1314 = fmul fast float %1293, 0x4013FFFFE0000000
  %1315 = fadd fast float %1314, 0xBFFFFFFFE0000000
  %1316 = call float @dx.op.unary.f32(i32 7, float %1315)  ; Saturate(value)
  %1317 = fmul fast float %1293, 0x4004000020000000
  %1318 = fadd fast float %1317, 0xBFF8000040000000
  %1319 = call float @dx.op.unary.f32(i32 7, float %1318)  ; Saturate(value)
  %1320 = call float @dx.op.unary.f32(i32 7, float %1313)  ; Saturate(value)
  %1321 = fmul fast float %1173, 1.000000e+01
  %1322 = call float @dx.op.unary.f32(i32 7, float %1321)  ; Saturate(value)
  %1323 = fmul fast float %1322, 2.000000e+00
  %1324 = fsub fast float 3.000000e+00, %1323
  %1325 = fmul fast float %1322, %1322
  %1326 = fmul fast float %1325, %1324
  %1327 = fsub fast float 1.000000e+00, %1326
  %1328 = fsub fast float 0x3FE3333340000000, %1194
  %1329 = fmul fast float %1328, 0x400AAAAAA0000000
  %1330 = call float @dx.op.unary.f32(i32 7, float %1329)  ; Saturate(value)
  %1331 = fmul fast float %1327, %1330
  %1332 = fmul fast float %1206, 0x3FEA2B8620000000
  %1333 = fmul fast float %1207, 0x3FEA2B8620000000
  %1334 = fmul fast float %1208, 0x3FEA2B8620000000
  %1335 = fadd fast float %1332, 0x3FC81DFBA0000000
  %1336 = fmul fast float %1335, %1206
  %1337 = fadd fast float %1336, 0x3F910E6020000000
  %1338 = fadd fast float %1333, 0x3FC81DFBA0000000
  %1339 = fmul fast float %1338, %1207
  %1340 = fadd fast float %1339, 0x3F910E6020000000
  %1341 = fadd fast float %1334, 0x3FC81DFBA0000000
  %1342 = fmul fast float %1341, %1208
  %1343 = fadd fast float %1342, 0x3F910E6020000000
  %1344 = call float @dx.op.unary.f32(i32 7, float %1337)  ; Saturate(value)
  %1345 = call float @dx.op.unary.f32(i32 7, float %1340)  ; Saturate(value)
  %1346 = call float @dx.op.unary.f32(i32 7, float %1343)  ; Saturate(value)
  %1347 = fsub fast float %1344, %1206
  %1348 = fsub fast float %1345, %1207
  %1349 = fsub fast float %1346, %1208
  %1350 = fmul fast float %1347, %1320
  %1351 = fmul fast float %1350, %1331
  %1352 = fmul fast float %1348, %1320
  %1353 = fmul fast float %1352, %1331
  %1354 = fmul fast float %1349, %1320
  %1355 = fmul fast float %1354, %1331
  %1356 = fadd fast float %1351, %1206
  %1357 = fadd fast float %1353, %1207
  %1358 = fadd fast float %1355, %1208
  %1359 = fmul fast float %1154, %1154
  %1360 = fmul fast float %1359, %1359
  %1361 = fadd fast float %1316, 1.000000e+00
  %1362 = fsub fast float %1361, %1331
  %1363 = call float @dx.op.unary.f32(i32 7, float %1362)  ; Saturate(value)
  %1364 = call float @dx.op.dot3.f32(i32 55, float %21, float %22, float %23, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1365 = call float @dx.op.unary.f32(i32 7, float %1364)  ; Saturate(value)
  %1366 = fsub fast float 1.000000e+00, %1360
  %1367 = call float @dx.op.binary.f32(i32 36, float %1363, float %1366)  ; FMin(a,b)
  %1368 = call float @dx.op.unary.f32(i32 7, float %1319)  ; Saturate(value)
  %1369 = call float @dx.op.binary.f32(i32 35, float %1367, float %1368)  ; FMax(a,b)
  %1370 = fadd fast float %1365, 0xBFE4CCCCC0000000
  %1371 = fmul fast float %1370, 0x4006DB6DA0000000
  %1372 = call float @dx.op.unary.f32(i32 7, float %1371)  ; Saturate(value)
  %1373 = fmul fast float %1372, 2.000000e+00
  %1374 = fsub fast float 3.000000e+00, %1373
  %1375 = bitcast float %1191 to i32
  %1376 = ashr i32 %1375, 1
  %1377 = add nsw i32 %1376, 532487669
  %1378 = bitcast i32 %1377 to float
  %1379 = fsub fast float 1.000000e+00, %1378
  %1380 = bitcast float %1379 to i32
  %1381 = sub nsw i32 2129859010, %1380
  %1382 = bitcast i32 %1381 to float
  %1383 = fmul fast float %1382, 2.000000e+00
  %1384 = bitcast float %1192 to i32
  %1385 = ashr i32 %1384, 1
  %1386 = add nsw i32 %1385, 532487669
  %1387 = bitcast i32 %1386 to float
  %1388 = fsub fast float 1.000000e+00, %1387
  %1389 = bitcast float %1388 to i32
  %1390 = sub nsw i32 2129859010, %1389
  %1391 = bitcast i32 %1390 to float
  %1392 = fmul fast float %1391, 2.000000e+00
  %1393 = bitcast float %1193 to i32
  %1394 = ashr i32 %1393, 1
  %1395 = add nsw i32 %1394, 532487669
  %1396 = bitcast i32 %1395 to float
  %1397 = fsub fast float 1.000000e+00, %1396
  %1398 = bitcast float %1397 to i32
  %1399 = sub nsw i32 2129859010, %1398
  %1400 = bitcast i32 %1399 to float
  %1401 = fmul fast float %1400, 2.000000e+00
  %1402 = fsub fast float 0x4002A9FBE0000000, %1383
  %1403 = fadd fast float %1383, 0x3FD54FDF00000000
  %1404 = bitcast float %1403 to i32
  %1405 = sub nsw i32 2129859010, %1404
  %1406 = bitcast i32 %1405 to float
  %1407 = fmul fast float %1406, %1402
  %1408 = fmul fast float %1407, %1407
  %1409 = fsub fast float 0x4002A9FBE0000000, %1392
  %1410 = fadd fast float %1392, 0x3FD54FDF00000000
  %1411 = bitcast float %1410 to i32
  %1412 = sub nsw i32 2129859010, %1411
  %1413 = bitcast i32 %1412 to float
  %1414 = fmul fast float %1413, %1409
  %1415 = fmul fast float %1414, %1414
  %1416 = fsub fast float 0x4002A9FBE0000000, %1401
  %1417 = fadd fast float %1401, 0x3FD54FDF00000000
  %1418 = bitcast float %1417 to i32
  %1419 = sub nsw i32 2129859010, %1418
  %1420 = bitcast i32 %1419 to float
  %1421 = fmul fast float %1420, %1416
  %1422 = fmul fast float %1421, %1421
  %1423 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1408)  ; FMax(a,b)
  %1424 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1415)  ; FMax(a,b)
  %1425 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1422)  ; FMax(a,b)
  %1426 = fsub fast float 1.000000e+00, %1311
  %1427 = fadd fast float %1426, %1327
  %1428 = call float @dx.op.unary.f32(i32 7, float %1427)  ; Saturate(value)
  %1429 = fsub fast float 1.000000e+00, %1291
  %1430 = fmul fast float %1369, %1429
  %1431 = fmul fast float %1372, %1372
  %1432 = fmul fast float %1431, %1430
  %1433 = fmul fast float %1432, %1374
  %1434 = fmul fast float %1429, 0xBFE99999A0000000
  %1435 = fmul fast float %1434, %1320
  %1436 = fmul fast float %1435, %1331
  %1437 = fadd fast float %1436, 1.000000e+00
  %1438 = fadd fast float %1194, -1.000000e+00
  %1439 = fmul fast float %1437, %1438
  %1440 = fadd fast float %1439, 1.000000e+00
  %1441 = fsub fast float %1423, %1191
  %1442 = fsub fast float %1424, %1192
  %1443 = fsub fast float %1425, %1193
  %1444 = fmul fast float %1433, %1441
  %1445 = fmul fast float %1433, %1442
  %1446 = fmul fast float %1433, %1443
  %1447 = fadd fast float %1444, %1191
  %1448 = fadd fast float %1445, %1192
  %1449 = fadd fast float %1446, %1193
  %1450 = fsub fast float %21, %1170
  %1451 = fsub fast float %22, %1171
  %1452 = fsub fast float %23, %1172
  %1453 = fmul fast float %1433, %1450
  %1454 = fmul fast float %1433, %1451
  %1455 = fmul fast float %1433, %1452
  %1456 = fadd fast float %1453, %1170
  %1457 = fadd fast float %1454, %1171
  %1458 = fadd fast float %1455, %1172
  %1459 = fmul fast float %1433, %1428
  %1460 = call float @dx.op.unary.f32(i32 7, float %1440)  ; Saturate(value)
  %1461 = fsub fast float 1.000000e+00, %1460
  %1462 = fmul fast float %1459, %1461
  %1463 = fadd fast float %1462, %1460
  %1464 = fsub fast float 1.000000e+00, %1154
  %1465 = fmul fast float %1433, %1464
  %1466 = fadd fast float %1465, %1154
  %1467 = call float @dx.op.dot3.f32(i32 55, float %1456, float %1457, float %1458, float %1456, float %1457, float %1458)  ; Dot3(ax,ay,az,bx,by,bz)
  %1468 = call float @dx.op.unary.f32(i32 25, float %1467)  ; Rsqrt(value)
  %1469 = fmul fast float %1456, %1468
  %1470 = fmul fast float %1457, %1468
  %1471 = fmul fast float %1458, %1468
  br label %1472

; <label>:1472                                    ; preds = %1304, %1297
  %1473 = phi float [ %1303, %1297 ], [ %1310, %1304 ]
  %1474 = phi float [ %1302, %1297 ], [ %1308, %1304 ]
  %1475 = phi float [ %1301, %1297 ], [ %1306, %1304 ]
  %1476 = phi float [ %1300, %1297 ], [ %1309, %1304 ]
  %1477 = phi float [ %1299, %1297 ], [ %1307, %1304 ]
  %1478 = phi float [ %1298, %1297 ], [ %1305, %1304 ]
  %1479 = phi float [ %1191, %1297 ], [ %1447, %1304 ]
  %1480 = phi float [ %1192, %1297 ], [ %1448, %1304 ]
  %1481 = phi float [ %1193, %1297 ], [ %1449, %1304 ]
  %1482 = phi float [ %1170, %1297 ], [ %1469, %1304 ]
  %1483 = phi float [ %1171, %1297 ], [ %1470, %1304 ]
  %1484 = phi float [ %1172, %1297 ], [ %1471, %1304 ]
  %1485 = phi float [ %1206, %1297 ], [ %1356, %1304 ]
  %1486 = phi float [ %1207, %1297 ], [ %1357, %1304 ]
  %1487 = phi float [ %1208, %1297 ], [ %1358, %1304 ]
  %1488 = phi float [ %1194, %1297 ], [ %1463, %1304 ]
  %1489 = phi float [ %1154, %1297 ], [ %1466, %1304 ]
  %1490 = select i1 %121, float 0.000000e+00, float %1481
  %1491 = call float @dx.op.dot3.f32(i32 55, float %1482, float %1483, float %1484, float %1475, float %1474, float %1473)  ; Dot3(ax,ay,az,bx,by,bz)
  %1492 = call float @dx.op.unary.f32(i32 7, float %1491)  ; Saturate(value)
  %1493 = fsub fast float 1.000000e+00, %1489
  %1494 = bitcast float %1493 to i32
  %1495 = sub nsw i32 2129859010, %1494
  %1496 = fmul fast float %1167, %1148
  %1497 = fmul fast float %1167, %1149
  %1498 = fmul fast float %1167, %1150
  %1499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1500 = extractvalue %dx.types.CBufRet.f32 %1499, 3
  %1501 = fcmp fast oeq float %1500, 0.000000e+00
  br i1 %1501, label %1749, label %1502

; <label>:1502                                    ; preds = %1472
  %1503 = extractvalue %dx.types.CBufRet.f32 %1499, 0
  %1504 = extractvalue %dx.types.CBufRet.f32 %1499, 1
  %1505 = extractvalue %dx.types.CBufRet.f32 %1499, 2
  %1506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %1507 = extractvalue %dx.types.CBufRet.f32 %1506, 0
  %1508 = extractvalue %dx.types.CBufRet.f32 %1506, 1
  %1509 = extractvalue %dx.types.CBufRet.f32 %1506, 2
  %1510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %1511 = extractvalue %dx.types.CBufRet.f32 %1510, 0
  %1512 = extractvalue %dx.types.CBufRet.f32 %1510, 1
  %1513 = call float @dx.op.dot3.f32(i32 55, float %1507, float %1508, float %1509, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1514 = select i1 %121, float %1511, float %1507
  %1515 = select i1 %121, float %1513, float %1508
  %1516 = select i1 %121, float %1512, float %1509
  %1517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %1518 = extractvalue %dx.types.CBufRet.f32 %1517, 1
  %1519 = fcmp fast une float %1518, 0.000000e+00
  br i1 %1519, label %1520, label %1537

; <label>:1520                                    ; preds = %1502
  %1521 = fptoui float %33 to i32
  %1522 = fptoui float %34 to i32
  %1523 = lshr i32 %1521, 4
  %1524 = lshr i32 %1522, 4
  %1525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1526 = extractvalue %dx.types.CBufRet.f32 %1525, 0
  %1527 = fptoui float %1526 to i32
  %1528 = add i32 %1527, 15
  %1529 = lshr i32 %1528, 4
  %1530 = mul i32 %1529, %1524
  %1531 = add i32 %1530, %1523
  %1532 = shl i32 %1531, 3
  %1533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1532, i32 undef)  ; BufferLoad(srv,index,wot)
  %1534 = extractvalue %dx.types.ResRet.i32 %1533, 0
  %1535 = and i32 %1534, -268435456
  %1536 = icmp eq i32 %1535, -1342177280
  br i1 %1536, label %1547, label %1537

; <label>:1537                                    ; preds = %1520, %1502
  %1538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1539 = extractvalue %dx.types.CBufRet.f32 %1538, 2
  %1540 = extractvalue %dx.types.CBufRet.f32 %1538, 3
  %1541 = fmul fast float %1539, %33
  %1542 = fmul fast float %1540, %34
  %1543 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %13, float %1541, float %1542, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1544 = extractvalue %dx.types.ResRet.f32 %1543, 0
  %1545 = extractvalue %dx.types.ResRet.f32 %1543, 1
  %1546 = extractvalue %dx.types.ResRet.f32 %1543, 2
  br label %1547

; <label>:1547                                    ; preds = %1537, %1520
  %1548 = phi float [ %1544, %1537 ], [ 0.000000e+00, %1520 ]
  %1549 = phi float [ %1545, %1537 ], [ 0.000000e+00, %1520 ]
  %1550 = phi float [ %1546, %1537 ], [ 0.000000e+00, %1520 ]
  %1551 = call float @dx.op.binary.f32(i32 36, float %1549, float %1550)  ; FMin(a,b)
  %1552 = call float @dx.op.binary.f32(i32 36, float %1548, float %1551)  ; FMin(a,b)
  %1553 = fcmp fast ogt float %1552, 0.000000e+00
  br i1 %1553, label %1554, label %1749, !dx.controlflow.hints !48

; <label>:1554                                    ; preds = %1547
  %1555 = fmul fast float %1548, %1514
  %1556 = fmul fast float %1549, %1515
  %1557 = fmul fast float %1550, %1516
  %1558 = fsub fast float %1503, %1478
  %1559 = fsub fast float %1504, %1477
  %1560 = fsub fast float %1505, %1476
  %1561 = call float @dx.op.dot3.f32(i32 55, float %1558, float %1559, float %1560, float %1558, float %1559, float %1560)  ; Dot3(ax,ay,az,bx,by,bz)
  %1562 = call float @dx.op.unary.f32(i32 25, float %1561)  ; Rsqrt(value)
  %1563 = fmul fast float %1562, %1558
  %1564 = fmul fast float %1562, %1559
  %1565 = fmul fast float %1562, %1560
  %1566 = call float @dx.op.dot3.f32(i32 55, float %1503, float %1504, float %1505, float %1482, float %1483, float %1484)  ; Dot3(ax,ay,az,bx,by,bz)
  %1567 = call float @dx.op.dot3.f32(i32 55, float %1475, float %1474, float %1473, float %1563, float %1564, float %1565)  ; Dot3(ax,ay,az,bx,by,bz)
  %1568 = call float @dx.op.unary.f32(i32 7, float %1566)  ; Saturate(value)
  %1569 = bitcast i32 %1495 to float
  %1570 = fmul fast float %1568, %1568
  %1571 = fmul fast float %1570, %1569
  %1572 = call float @dx.op.unary.f32(i32 7, float %1571)  ; Saturate(value)
  %1573 = fmul fast float %1572, %1568
  %1574 = call float @dx.op.dot3.f32(i32 55, float %1482, float %1483, float %1484, float %1563, float %1564, float %1565)  ; Dot3(ax,ay,az,bx,by,bz)
  %1575 = fmul fast float %1574, %1574
  %1576 = call float @dx.op.unary.f32(i32 6, float %1566)  ; FAbs(value)
  %1577 = fsub fast float 1.000000e+00, %1488
  %1578 = call float @dx.op.binary.f32(i32 35, float %1577, float 0x3F847AE140000000)  ; FMax(a,b)
  %1579 = fmul fast float %1578, %1578
  %1580 = fmul fast float %1579, %1579
  %1581 = fsub fast float 1.000000e+00, %1580
  %1582 = fmul fast float %1492, %1492
  %1583 = fmul fast float %1582, %1581
  %1584 = fadd fast float %1583, %1580
  %1585 = bitcast float %1584 to i32
  %1586 = ashr i32 %1585, 1
  %1587 = add nsw i32 %1586, 532487669
  %1588 = bitcast i32 %1587 to float
  %1589 = fadd fast float %1588, %1492
  %1590 = fmul fast float %1580, %1575
  %1591 = fsub fast float 1.000000e+00, %1575
  %1592 = fadd fast float %1591, %1590
  %1593 = fmul fast float %1576, %1576
  %1594 = fmul fast float %1593, %1581
  %1595 = fadd fast float %1594, %1580
  %1596 = bitcast float %1595 to i32
  %1597 = ashr i32 %1596, 1
  %1598 = add nsw i32 %1597, 532487669
  %1599 = bitcast i32 %1598 to float
  %1600 = fadd fast float %1599, %1576
  %1601 = fmul fast float %1592, %1592
  %1602 = fmul fast float %1601, %1589
  %1603 = fmul fast float %1602, %1600
  %1604 = fdiv fast float 0x3FF0A00000000000, %1603
  %1605 = fmul fast float %1604, %1580
  %1606 = call float @dx.op.unary.f32(i32 6, float %1567)  ; FAbs(value)
  %1607 = fsub fast float 1.000000e+00, %1606
  %1608 = bitcast float %1607 to i32
  %1609 = sitofp i32 %1608 to float
  %1610 = fmul fast float %1609, 5.000000e+00
  %1611 = fadd fast float %1610, 0xC1EFBF8940000000
  %1612 = fptosi float %1611 to i32
  %1613 = bitcast i32 %1612 to float
  %1614 = fsub fast float 1.000000e+00, %1479
  %1615 = fsub fast float 1.000000e+00, %1480
  %1616 = fsub fast float 1.000000e+00, %1490
  %1617 = fmul fast float %1613, %1614
  %1618 = fmul fast float %1613, %1615
  %1619 = fmul fast float %1613, %1616
  %1620 = fadd fast float %1617, %1479
  %1621 = fadd fast float %1618, %1480
  %1622 = fadd fast float %1619, %1490
  %1623 = fcmp fast ogt float %1147, 0.000000e+00
  br i1 %1623, label %1624, label %1647

; <label>:1624                                    ; preds = %1554
  %1625 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %12, float %1147, float %1606, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1626 = extractvalue %dx.types.ResRet.f32 %1625, 0
  %1627 = extractvalue %dx.types.ResRet.f32 %1625, 1
  %1628 = extractvalue %dx.types.ResRet.f32 %1625, 2
  %1629 = fadd fast float %1626, -5.000000e-01
  %1630 = fadd fast float %1627, -5.000000e-01
  %1631 = fadd fast float %1628, -5.000000e-01
  %1632 = fmul fast float %1479, 4.000000e+00
  %1633 = fmul fast float %1632, %1614
  %1634 = fmul fast float %1633, %1629
  %1635 = fmul fast float %1480, 4.000000e+00
  %1636 = fmul fast float %1635, %1615
  %1637 = fmul fast float %1636, %1630
  %1638 = fmul fast float %1490, 4.000000e+00
  %1639 = fmul fast float %1638, %1616
  %1640 = fmul fast float %1639, %1631
  %1641 = fadd fast float %1634, %1620
  %1642 = fadd fast float %1637, %1621
  %1643 = fadd fast float %1640, %1622
  %1644 = call float @dx.op.unary.f32(i32 7, float %1641)  ; Saturate(value)
  %1645 = call float @dx.op.unary.f32(i32 7, float %1642)  ; Saturate(value)
  %1646 = call float @dx.op.unary.f32(i32 7, float %1643)  ; Saturate(value)
  br label %1647

; <label>:1647                                    ; preds = %1624, %1554
  %1648 = phi float [ %1644, %1624 ], [ %1620, %1554 ]
  %1649 = phi float [ %1645, %1624 ], [ %1621, %1554 ]
  %1650 = phi float [ %1646, %1624 ], [ %1622, %1554 ]
  %1651 = fmul fast float %1566, 9.843750e-01
  %1652 = fmul fast float %1488, 9.843750e-01
  %1653 = fadd fast float %1651, 7.812500e-03
  %1654 = fadd fast float %1652, 7.812500e-03
  %1655 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %12, float %1653, float %1654, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1656 = extractvalue %dx.types.ResRet.f32 %1655, 2
  %1657 = extractvalue %dx.types.ResRet.f32 %1655, 3
  %1658 = fmul fast float %1656, %1479
  %1659 = fmul fast float %1656, %1480
  %1660 = fmul fast float %1656, %1490
  %1661 = fadd fast float %1658, %1657
  %1662 = fadd fast float %1659, %1657
  %1663 = fadd fast float %1660, %1657
  br i1 %1623, label %1664, label %1687

; <label>:1664                                    ; preds = %1647
  %1665 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %12, float %1147, float %1566, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1666 = extractvalue %dx.types.ResRet.f32 %1665, 0
  %1667 = extractvalue %dx.types.ResRet.f32 %1665, 1
  %1668 = extractvalue %dx.types.ResRet.f32 %1665, 2
  %1669 = fadd fast float %1666, -5.000000e-01
  %1670 = fadd fast float %1667, -5.000000e-01
  %1671 = fadd fast float %1668, -5.000000e-01
  %1672 = fmul fast float %1479, 4.000000e+00
  %1673 = fmul fast float %1672, %1614
  %1674 = fmul fast float %1673, %1669
  %1675 = fmul fast float %1480, 4.000000e+00
  %1676 = fmul fast float %1675, %1615
  %1677 = fmul fast float %1676, %1670
  %1678 = fmul fast float %1490, 4.000000e+00
  %1679 = fmul fast float %1678, %1616
  %1680 = fmul fast float %1679, %1671
  %1681 = fadd fast float %1674, %1661
  %1682 = fadd fast float %1677, %1662
  %1683 = fadd fast float %1680, %1663
  %1684 = call float @dx.op.unary.f32(i32 7, float %1681)  ; Saturate(value)
  %1685 = call float @dx.op.unary.f32(i32 7, float %1682)  ; Saturate(value)
  %1686 = call float @dx.op.unary.f32(i32 7, float %1683)  ; Saturate(value)
  br label %1687

; <label>:1687                                    ; preds = %1664, %1647
  %1688 = phi float [ %1684, %1664 ], [ %1661, %1647 ]
  %1689 = phi float [ %1685, %1664 ], [ %1662, %1647 ]
  %1690 = phi float [ %1686, %1664 ], [ %1663, %1647 ]
  %1691 = call float @dx.op.binary.f32(i32 35, float %1689, float %1690)  ; FMax(a,b)
  %1692 = call float @dx.op.binary.f32(i32 35, float %1688, float %1691)  ; FMax(a,b)
  %1693 = fsub fast float 1.000000e+00, %1692
  %1694 = fmul fast float %1648, %1605
  %1695 = fmul fast float %1649, %1605
  %1696 = fmul fast float %1650, %1605
  %1697 = call float @dx.op.dot3.f32(i32 55, float %1485, float %1486, float %1487, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1698 = fcmp fast ogt float %1697, 0x3E7FF19E20000000
  %1699 = fdiv fast float 1.000000e+00, %1697
  %1700 = select i1 %1698, float %1699, float 0.000000e+00
  %1701 = fmul fast float %1700, %1485
  %1702 = fmul fast float %1700, %1486
  %1703 = fmul fast float %1700, %1487
  %1704 = fadd fast float %1701, -1.000000e+00
  %1705 = fadd fast float %1702, -1.000000e+00
  %1706 = fadd fast float %1703, -1.000000e+00
  %1707 = fmul fast float %1704, 5.000000e-01
  %1708 = fmul fast float %1705, 5.000000e-01
  %1709 = fmul fast float %1706, 5.000000e-01
  %1710 = fadd fast float %1707, 1.000000e+00
  %1711 = fadd fast float %1708, 1.000000e+00
  %1712 = fadd fast float %1709, 1.000000e+00
  %1713 = fsub fast float 1.000000e+00, %1567
  %1714 = bitcast float %1713 to i32
  %1715 = sitofp i32 %1714 to float
  %1716 = fmul fast float %1715, 5.000000e+00
  %1717 = fadd fast float %1716, 0xC1EFBF8940000000
  %1718 = fptosi float %1717 to i32
  %1719 = bitcast i32 %1718 to float
  %1720 = fmul fast float %1719, %1146
  %1721 = fmul fast float %1693, %1720
  %1722 = fmul fast float %1721, %1710
  %1723 = fmul fast float %1721, %1711
  %1724 = fmul fast float %1721, %1712
  %1725 = fadd fast float %1722, %1694
  %1726 = fadd fast float %1723, %1695
  %1727 = fadd fast float %1724, %1696
  %1728 = fmul fast float %1573, %1555
  %1729 = fmul fast float %1728, %1725
  %1730 = fmul fast float %1573, %1556
  %1731 = fmul fast float %1730, %1726
  %1732 = fmul fast float %1573, %1557
  %1733 = fmul fast float %1732, %1727
  %1734 = fmul fast float %1555, %1167
  %1735 = fmul fast float %1734, %1573
  %1736 = fmul fast float %1735, %1693
  %1737 = fmul fast float %1556, %1167
  %1738 = fmul fast float %1737, %1573
  %1739 = fmul fast float %1738, %1693
  %1740 = fmul fast float %1557, %1167
  %1741 = fmul fast float %1740, %1573
  %1742 = fmul fast float %1741, %1693
  %1743 = fadd fast float %1729, %1148
  %1744 = fmul fast float %1743, %1167
  %1745 = fadd fast float %1731, %1149
  %1746 = fmul fast float %1745, %1167
  %1747 = fadd fast float %1733, %1150
  %1748 = fmul fast float %1747, %1167
  br label %1749

; <label>:1749                                    ; preds = %1687, %1547, %1472
  %1750 = phi float [ %1496, %1472 ], [ %1496, %1547 ], [ %1744, %1687 ]
  %1751 = phi float [ %1497, %1472 ], [ %1497, %1547 ], [ %1746, %1687 ]
  %1752 = phi float [ %1498, %1472 ], [ %1498, %1547 ], [ %1748, %1687 ]
  %1753 = phi float [ 0.000000e+00, %1472 ], [ 0.000000e+00, %1547 ], [ %1736, %1687 ]
  %1754 = phi float [ 0.000000e+00, %1472 ], [ 0.000000e+00, %1547 ], [ %1739, %1687 ]
  %1755 = phi float [ 0.000000e+00, %1472 ], [ 0.000000e+00, %1547 ], [ %1742, %1687 ]
  %1756 = call float @dx.op.unary.f32(i32 24, float %1485)  ; Sqrt(value)
  %1757 = call float @dx.op.unary.f32(i32 24, float %1486)  ; Sqrt(value)
  %1758 = call float @dx.op.unary.f32(i32 24, float %1487)  ; Sqrt(value)
  %1759 = fmul fast float %1756, %1753
  %1760 = fmul fast float %1757, %1754
  %1761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1762 = extractvalue %dx.types.CBufRet.f32 %1761, 0
  br i1 %121, label %1763, label %1784

; <label>:1763                                    ; preds = %1749
  %1764 = fadd fast float %1755, %1144
  %1765 = fmul fast float %1764, %1145
  %1766 = fsub fast float 1.000000e+00, %1145
  %1767 = call float @dx.op.unary.f32(i32 7, float %1766)  ; Saturate(value)
  %1768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1769 = extractvalue %dx.types.CBufRet.f32 %1768, 3
  %1770 = fmul fast float %1769, %1767
  %1771 = fadd fast float %1770, %1765
  %1772 = fsub fast float 1.000000e+00, %1492
  %1773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1774 = extractvalue %dx.types.CBufRet.f32 %1773, 0
  %1775 = fmul fast float %1774, %1772
  %1776 = fsub fast float %1771, %1775
  %1777 = fadd fast float %1760, %1759
  %1778 = fmul fast float %1762, %1777
  %1779 = extractvalue %dx.types.CBufRet.f32 %1768, 1
  %1780 = fsub fast float %1776, %1779
  %1781 = extractvalue %dx.types.CBufRet.f32 %1768, 2
  %1782 = fmul fast float %1780, %1781
  %1783 = call float @dx.op.unary.f32(i32 7, float %1782)  ; Saturate(value)
  br label %1800

; <label>:1784                                    ; preds = %1749
  %1785 = fmul fast float %1758, %1755
  %1786 = fmul fast float %1762, %1759
  %1787 = fmul fast float %1762, %1760
  %1788 = fmul fast float %1785, %1762
  %1789 = add i32 %16, 116
  %1790 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1789, i32 undef)  ; BufferLoad(srv,index,wot)
  %1791 = extractvalue %dx.types.ResRet.i32 %1790, 0
  %1792 = and i32 %1791, 32
  %1793 = icmp eq i32 %1792, 0
  br i1 %1793, label %1800, label %1794

; <label>:1794                                    ; preds = %1784
  %1795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1796 = extractvalue %dx.types.CBufRet.f32 %1795, 0
  %1797 = fmul fast float %1796, 0x3FE99999A0000000
  %1798 = fadd fast float %1796, %1786
  %1799 = fadd fast float %1797, %1788
  br label %1800

; <label>:1800                                    ; preds = %1794, %1784, %1763
  %1801 = phi float [ %1778, %1763 ], [ %1798, %1794 ], [ %1786, %1784 ]
  %1802 = phi float [ %1783, %1763 ], [ %1787, %1794 ], [ %1787, %1784 ]
  %1803 = phi float [ 1.000000e+00, %1763 ], [ %1799, %1794 ], [ %1788, %1784 ]
  %1804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1805 = extractvalue %dx.types.CBufRet.f32 %1804, 0
  %1806 = fmul fast float %1805, %1751
  %1807 = fmul fast float %1805, %1752
  %1808 = fadd fast float %1751, %1750
  %1809 = select i1 %121, float %1808, float %1750
  %1810 = fmul float %1809, %1805
  %1811 = select i1 %121, float 0.000000e+00, float %1806
  %1812 = select i1 %121, float 0.000000e+00, float %1807
  %1813 = fmul fast float %1801, %1756
  %1814 = fmul fast float %1802, %1757
  %1815 = fmul fast float %1803, %1758
  %1816 = fadd fast float %1810, %1813
  %1817 = fadd fast float %1811, %1814
  %1818 = fadd fast float %1812, %1815
  %1819 = select i1 %121, float %1802, float %1817
  %1820 = select i1 %121, float %1803, float %1818
  %1821 = call float @dx.op.binary.f32(i32 36, float %1816, float 3.225500e+04)  ; FMin(a,b)
  %1822 = call float @dx.op.binary.f32(i32 36, float %1819, float 3.225500e+04)  ; FMin(a,b)
  %1823 = call float @dx.op.binary.f32(i32 36, float %1820, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1821)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1822)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1823)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.loadInput.i32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float, float, float, float, float, float, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

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
!dx.viewIdState = !{!27}
!dx.entryPoints = !{!28}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !20, !23}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!15 = !{i32 8, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!16 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!17 = !{i32 10, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!18 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 68, i32 1, i32 11, i32 0, null}
!19 = !{i32 12, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 0, i32 1, i32 2, i32 0, !7}
!20 = !{!21, !22}
!21 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!22 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!23 = !{!24, !25, !26}
!24 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!25 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!26 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!27 = !{[24 x i32] [i32 22, i32 4, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0]}
!28 = !{void ()* @ps_main, !"ps_main", !29, !4, !47}
!29 = !{!30, !45, null}
!30 = !{!31, !34, !36, !37, !39, !41, !43, !44}
!31 = !{i32 0, !"SV_Position", i8 9, i8 3, !32, i8 4, i32 1, i8 4, i32 0, i8 0, !33}
!32 = !{i32 0}
!33 = !{i32 3, i32 11}
!34 = !{i32 1, !"TEXCOORDS", i8 9, i8 0, !32, i8 2, i32 1, i8 2, i32 1, i8 0, !35}
!35 = !{i32 3, i32 3}
!36 = !{i32 2, !"LMAPCOORDS", i8 9, i8 0, !32, i8 2, i32 1, i8 3, i32 2, i8 0, null}
!37 = !{i32 3, !"NORMAL", i8 9, i8 0, !32, i8 2, i32 1, i8 3, i32 3, i8 0, !38}
!38 = !{i32 3, i32 7}
!39 = !{i32 4, !"TANGENT", i8 9, i8 0, !32, i8 2, i32 1, i8 4, i32 4, i8 0, !40}
!40 = !{i32 3, i32 15}
!41 = !{i32 5, !"MATERIAL_DATA_OFFSET", i8 5, i8 0, !32, i8 1, i32 1, i8 1, i32 5, i8 0, !42}
!42 = !{i32 3, i32 1}
!43 = !{i32 6, !"TRANSIENT_INDEX", i8 5, i8 0, !32, i8 1, i32 1, i8 1, i32 5, i8 1, null}
!44 = !{i32 7, !"SV_SampleIndex", i8 5, i8 12, !32, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!45 = !{!46}
!46 = !{i32 0, !"SV_Target", i8 9, i8 16, !32, i8 0, i32 1, i8 4, i32 0, i8 0, !40}
!47 = !{i32 0, i64 24}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 1}

