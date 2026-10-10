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
; SV_IsFrontFace           0    y          5    FFACE    uint    y  
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 441122f09e0f0ec5796dcbee98ef35f8
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
; SV_IsFrontFace           0        nointerpolation       
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
;   output 0 depends on inputs: { 0, 1, 3, 4, 5, 12, 13, 14, 16, 17, 18, 19, 20, 21 }
;   output 1 depends on inputs: { 0, 1, 3, 4, 5, 12, 13, 14, 16, 17, 18, 19, 20, 21 }
;   output 2 depends on inputs: { 0, 1, 3, 4, 5, 12, 13, 14, 16, 17, 18, 19, 20, 21 }
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
  %16 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %17 = icmp ne i32 %16, 0
  %18 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %19 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %20 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %21 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %34 = extractvalue %dx.types.CBufRet.f32 %33, 0
  %35 = fmul fast float %34, %28
  %36 = fmul fast float %34, %29
  %37 = select i1 %17, float 1.000000e+00, float -1.000000e+00
  %38 = fmul fast float %23, %37
  %39 = fmul fast float %24, %37
  %40 = fmul fast float %25, %37
  %41 = fmul fast float %24, %21
  %42 = fmul fast float %25, %20
  %43 = fsub fast float %41, %42
  %44 = fmul fast float %25, %19
  %45 = fmul fast float %23, %21
  %46 = fsub fast float %44, %45
  %47 = fmul fast float %23, %20
  %48 = fmul fast float %24, %19
  %49 = fsub fast float %47, %48
  %50 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %51 = extractvalue %dx.types.CBufRet.f32 %50, 2
  %52 = extractvalue %dx.types.CBufRet.f32 %50, 3
  %53 = fmul fast float %51, 2.000000e+00
  %54 = fmul fast float %53, %35
  %55 = fmul fast float %52, 2.000000e+00
  %56 = fmul fast float %55, %36
  %57 = fsub fast float 1.000000e+00, %54
  %58 = fsub fast float 1.000000e+00, %56
  %59 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %60 = extractvalue %dx.types.CBufRet.f32 %59, 0
  %61 = extractvalue %dx.types.CBufRet.f32 %59, 1
  %62 = extractvalue %dx.types.CBufRet.f32 %59, 2
  %63 = fmul fast float %57, %60
  %64 = fmul fast float %57, %61
  %65 = fmul fast float %57, %62
  %66 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %67 = extractvalue %dx.types.CBufRet.f32 %66, 0
  %68 = extractvalue %dx.types.CBufRet.f32 %66, 1
  %69 = extractvalue %dx.types.CBufRet.f32 %66, 2
  %70 = fmul fast float %58, %67
  %71 = fmul fast float %58, %68
  %72 = fmul fast float %58, %69
  %73 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %74 = extractvalue %dx.types.CBufRet.f32 %73, 0
  %75 = extractvalue %dx.types.CBufRet.f32 %73, 1
  %76 = extractvalue %dx.types.CBufRet.f32 %73, 2
  %77 = fadd fast float %70, %74
  %78 = fadd fast float %77, %63
  %79 = fadd fast float %71, %75
  %80 = fadd fast float %79, %64
  %81 = fadd fast float %72, %76
  %82 = fadd fast float %81, %65
  %83 = fmul fast float %78, %30
  %84 = fmul fast float %80, %30
  %85 = fmul fast float %82, %30
  %86 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %87 = extractvalue %dx.types.CBufRet.f32 %86, 2
  %88 = extractvalue %dx.types.CBufRet.f32 %86, 3
  %89 = fmul fast float %87, %35
  %90 = fmul fast float %88, %36
  %91 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %92 = extractvalue %dx.types.ResRet.i32 %91, 0
  %93 = and i32 %92, 114688
  %94 = icmp ne i32 %93, 0
  %95 = select i1 %94, float %89, float 0.000000e+00
  %96 = select i1 %94, float %90, float 0.000000e+00
  %97 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %13, float %95, float %96, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %98 = extractvalue %dx.types.ResRet.f32 %97, 0
  %99 = fmul fast float %98, 2.550000e+02
  %100 = fptoui float %99 to i32
  %101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %102 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %103 = extractvalue %dx.types.CBufRet.i32 %102, 3
  %104 = and i32 %103, 3
  %105 = icmp ne i32 %104, 0
  %106 = and i32 %103, 4
  %107 = icmp ne i32 %106, 0
  %108 = and i1 %105, %107
  br i1 %108, label %109, label %120

; <label>:109                                     ; preds = %0
  %110 = extractvalue %dx.types.CBufRet.f32 %101, 3
  %111 = fmul fast float %110, %36
  %112 = extractvalue %dx.types.CBufRet.f32 %101, 2
  %113 = fmul fast float %112, %35
  %114 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %12, float %113, float %111, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %115 = extractvalue %dx.types.ResRet.f32 %114, 0
  %116 = fsub fast float 1.000000e+00, %115
  %117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %118 = extractvalue %dx.types.CBufRet.f32 %117, 0
  %119 = fcmp fast olt float %116, %118
  br label %123

; <label>:120                                     ; preds = %0
  %121 = icmp eq i32 %106, 0
  %122 = and i1 %105, %121
  br label %123

; <label>:123                                     ; preds = %120, %109
  %124 = phi i1 [ %119, %109 ], [ %122, %120 ]
  %125 = add i32 %18, 60
  %126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %125, i32 undef)  ; BufferLoad(srv,index,wot)
  %127 = extractvalue %dx.types.ResRet.i32 %126, 0
  %128 = shl i32 %127, 4
  %129 = and i32 %128, 32752
  %130 = call float @dx.op.legacyF16ToF32(i32 131, i32 %129)  ; LegacyF16ToF32(value)
  %131 = lshr i32 %127, 7
  %132 = and i32 %131, 32752
  %133 = call float @dx.op.legacyF16ToF32(i32 131, i32 %132)  ; LegacyF16ToF32(value)
  %134 = lshr i32 %127, 22
  %135 = shl nuw nsw i32 %134, 5
  %136 = call float @dx.op.legacyF16ToF32(i32 131, i32 %135)  ; LegacyF16ToF32(value)
  %137 = add i32 %18, 72
  %138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %137, i32 undef)  ; BufferLoad(srv,index,wot)
  %139 = extractvalue %dx.types.ResRet.i32 %138, 0
  %140 = and i32 %139, 255
  %141 = uitofp i32 %140 to float
  %142 = fmul fast float %141, 0x3F70101020000000
  %143 = lshr i32 %139, 8
  %144 = and i32 %143, 255
  %145 = uitofp i32 %144 to float
  %146 = fmul fast float %145, 0x3F70101020000000
  %147 = lshr i32 %139, 16
  %148 = and i32 %147, 255
  %149 = uitofp i32 %148 to float
  %150 = fmul fast float %149, 0x3F70101020000000
  %151 = add i32 %18, 36
  %152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %151, i32 undef)  ; BufferLoad(srv,index,wot)
  %153 = extractvalue %dx.types.ResRet.i32 %152, 0
  %154 = add i32 %18, 96
  %155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %154, i32 undef)  ; BufferLoad(srv,index,wot)
  %156 = extractvalue %dx.types.ResRet.i32 %155, 0
  %157 = add i32 %18, 24
  %158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %157, i32 undef)  ; BufferLoad(srv,index,wot)
  %159 = extractvalue %dx.types.ResRet.i32 %158, 0
  %160 = add i32 %18, 28
  %161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %160, i32 undef)  ; BufferLoad(srv,index,wot)
  %162 = extractvalue %dx.types.ResRet.i32 %161, 0
  %163 = or i32 %162, %159
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %625, label %165

; <label>:165                                     ; preds = %123
  %166 = lshr i32 %156, 16
  %167 = call float @dx.op.legacyF16ToF32(i32 131, i32 %166)  ; LegacyF16ToF32(value)
  %168 = fmul fast float %167, 0x3F50624DE0000000
  %169 = and i32 %156, 65535
  %170 = call float @dx.op.legacyF16ToF32(i32 131, i32 %169)  ; LegacyF16ToF32(value)
  %171 = fmul fast float %170, 0x3F50624DE0000000
  %172 = lshr i32 %153, 16
  %173 = call float @dx.op.legacyF16ToF32(i32 131, i32 %172)  ; LegacyF16ToF32(value)
  %174 = and i32 %153, 65535
  %175 = call float @dx.op.legacyF16ToF32(i32 131, i32 %174)  ; LegacyF16ToF32(value)
  %176 = add i32 %18, 92
  %177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %176, i32 undef)  ; BufferLoad(srv,index,wot)
  %178 = extractvalue %dx.types.ResRet.i32 %177, 0
  %179 = lshr i32 %178, 16
  %180 = call float @dx.op.legacyF16ToF32(i32 131, i32 %179)  ; LegacyF16ToF32(value)
  %181 = fmul fast float %180, 0x3F50624DE0000000
  %182 = add i32 %18, 40
  %183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %182, i32 undef)  ; BufferLoad(srv,index,wot)
  %184 = extractvalue %dx.types.ResRet.i32 %183, 0
  %185 = lshr i32 %184, 16
  %186 = and i32 %185, 255
  %187 = lshr i32 %184, 24
  %188 = add i32 %18, 100
  %189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %188, i32 undef)  ; BufferLoad(srv,index,wot)
  %190 = extractvalue %dx.types.ResRet.i32 %189, 0
  %191 = and i32 %190, 65535
  %192 = call float @dx.op.legacyF16ToF32(i32 131, i32 %191)  ; LegacyF16ToF32(value)
  %193 = lshr i32 %190, 16
  %194 = call float @dx.op.legacyF16ToF32(i32 131, i32 %193)  ; LegacyF16ToF32(value)
  %195 = add i32 %18, 32
  %196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %195, i32 undef)  ; BufferLoad(srv,index,wot)
  %197 = extractvalue %dx.types.ResRet.i32 %196, 0
  %198 = lshr i32 %197, 22
  %199 = shl nuw nsw i32 %198, 5
  %200 = call float @dx.op.legacyF16ToF32(i32 131, i32 %199)  ; LegacyF16ToF32(value)
  %201 = shl i32 %197, 4
  %202 = and i32 %201, 32752
  %203 = call float @dx.op.legacyF16ToF32(i32 131, i32 %202)  ; LegacyF16ToF32(value)
  %204 = lshr i32 %197, 7
  %205 = and i32 %204, 32752
  %206 = call float @dx.op.legacyF16ToF32(i32 131, i32 %205)  ; LegacyF16ToF32(value)
  %207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %208 = extractvalue %dx.types.CBufRet.f32 %207, 3
  %209 = fmul fast float %208, 1.000000e+03
  %210 = fmul fast float %171, %209
  %211 = call float @dx.op.unary.f32(i32 22, float %210)  ; Frc(value)
  %212 = fadd fast float %211, %175
  %213 = fmul fast float %168, %209
  %214 = call float @dx.op.unary.f32(i32 22, float %213)  ; Frc(value)
  %215 = fadd fast float %214, %173
  %216 = fmul fast float %181, %209
  %217 = call float @dx.op.unary.f32(i32 22, float %216)  ; Frc(value)
  %218 = fmul fast float %217, 0x401921FB60000000
  %219 = fadd fast float %218, %200
  %220 = call float @dx.op.unary.f32(i32 13, float %219)  ; Sin(value)
  %221 = call float @dx.op.unary.f32(i32 12, float %219)  ; Cos(value)
  %222 = fsub fast float -0.000000e+00, %220
  %223 = fadd fast float %26, -5.000000e-01
  %224 = fadd fast float %27, -5.000000e-01
  %225 = fmul fast float %192, %223
  %226 = fmul fast float %194, %224
  %227 = fadd fast float %225, 5.000000e-01
  %228 = fadd fast float %226, 5.000000e-01
  %229 = fmul fast float %203, %227
  %230 = fmul fast float %206, %228
  %231 = fmul fast float %221, %229
  %232 = call float @dx.op.tertiary.f32(i32 46, float %222, float %230, float %231)  ; FMad(a,b,c)
  %233 = fmul fast float %220, %229
  %234 = call float @dx.op.tertiary.f32(i32 46, float %221, float %230, float %233)  ; FMad(a,b,c)
  %235 = fadd fast float %212, %232
  %236 = fadd fast float %215, %234
  %237 = icmp ugt i32 %186, 1
  %238 = icmp ugt i32 %184, 33554431
  %239 = or i1 %238, %237
  br i1 %239, label %240, label %265

; <label>:240                                     ; preds = %165
  %241 = add i32 %18, 84
  %242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %241, i32 undef)  ; BufferLoad(srv,index,wot)
  %243 = extractvalue %dx.types.ResRet.i32 %242, 0
  %244 = lshr i32 %243, 16
  %245 = call float @dx.op.legacyF16ToF32(i32 131, i32 %244)  ; LegacyF16ToF32(value)
  %246 = fmul fast float %208, %245
  %247 = call float @dx.op.unary.f32(i32 22, float %246)  ; Frc(value)
  %248 = mul nuw nsw i32 %186, %187
  %249 = uitofp i32 %248 to float
  %250 = fmul fast float %247, %249
  %251 = call float @dx.op.unary.f32(i32 27, float %250)  ; Round_ni(value)
  %252 = fptoui float %251 to i32
  %253 = urem i32 %252, %186
  %254 = udiv i32 %252, %187
  %255 = call float @dx.op.unary.f32(i32 22, float %235)  ; Frc(value)
  %256 = call float @dx.op.unary.f32(i32 22, float %236)  ; Frc(value)
  %257 = uitofp i32 %253 to float
  %258 = uitofp i32 %254 to float
  %259 = fadd fast float %255, %257
  %260 = fadd fast float %256, %258
  %261 = uitofp i32 %186 to float
  %262 = uitofp i32 %187 to float
  %263 = fdiv fast float %259, %261
  %264 = fdiv fast float %260, %262
  br label %265

; <label>:265                                     ; preds = %240, %165
  %266 = phi float [ %263, %240 ], [ %235, %165 ]
  %267 = phi float [ %264, %240 ], [ %236, %165 ]
  %268 = and i32 %159, 16
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %466, label %270

; <label>:270                                     ; preds = %265
  %271 = add i32 %18, 120
  %272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %271, i32 undef)  ; BufferLoad(srv,index,wot)
  %273 = extractvalue %dx.types.ResRet.i32 %272, 0
  %274 = add i32 %273, 0
  %275 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %274, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %276 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %275, %dx.types.Handle %31, float %266, float %267, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %277 = extractvalue %dx.types.ResRet.f32 %276, 0
  %278 = extractvalue %dx.types.ResRet.f32 %276, 1
  %279 = extractvalue %dx.types.ResRet.f32 %276, 2
  %280 = extractvalue %dx.types.ResRet.f32 %276, 3
  %281 = and i32 %184, 255
  %282 = uitofp i32 %281 to float
  %283 = lshr i32 %184, 8
  %284 = and i32 %283, 255
  %285 = uitofp i32 %284 to float
  %286 = fmul fast float %280, %282
  %287 = fadd fast float %286, %285
  %288 = fmul fast float %287, 0x3F70101000000000
  %289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %157, i32 undef)  ; BufferLoad(srv,index,wot)
  %290 = extractvalue %dx.types.ResRet.i32 %289, 0
  %291 = and i32 %290, 512
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %301, label %293

; <label>:293                                     ; preds = %270
  %294 = add i32 %18, 140
  %295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %294, i32 undef)  ; BufferLoad(srv,index,wot)
  %296 = extractvalue %dx.types.ResRet.i32 %295, 0
  %297 = add i32 %296, 0
  %298 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %297, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %299 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %298, %dx.types.Handle %32, float %266, float %267, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %300 = extractvalue %dx.types.ResRet.f32 %299, 0
  br label %301

; <label>:301                                     ; preds = %293, %270
  %302 = phi float [ %300, %293 ], [ 1.000000e+00, %270 ]
  %303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %157, i32 undef)  ; BufferLoad(srv,index,wot)
  %304 = extractvalue %dx.types.ResRet.i32 %303, 0
  %305 = and i32 %304, 33554432
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %413, label %307

; <label>:307                                     ; preds = %301
  %308 = add i32 %18, 80
  %309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %308, i32 undef)  ; BufferLoad(srv,index,wot)
  %310 = extractvalue %dx.types.ResRet.i32 %309, 0
  %311 = and i32 %310, 65535
  %312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %311)  ; LegacyF16ToF32(value)
  %313 = lshr i32 %310, 16
  %314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %313)  ; LegacyF16ToF32(value)
  %315 = add i32 %18, 84
  %316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %315, i32 undef)  ; BufferLoad(srv,index,wot)
  %317 = extractvalue %dx.types.ResRet.i32 %316, 0
  %318 = and i32 %317, 65535
  %319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %318)  ; LegacyF16ToF32(value)
  %320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %137, i32 undef)  ; BufferLoad(srv,index,wot)
  %321 = extractvalue %dx.types.ResRet.i32 %320, 0
  %322 = lshr i32 %321, 24
  %323 = uitofp i32 %322 to float
  %324 = fmul fast float %323, 0x3F70101020000000
  %325 = and i32 %321, 255
  %326 = uitofp i32 %325 to float
  %327 = fmul fast float %326, 0x3F70101020000000
  %328 = lshr i32 %321, 8
  %329 = and i32 %328, 255
  %330 = uitofp i32 %329 to float
  %331 = fmul fast float %330, 0x3F70101020000000
  %332 = lshr i32 %321, 16
  %333 = and i32 %332, 255
  %334 = uitofp i32 %333 to float
  %335 = fmul fast float %334, 0x3F70101020000000
  %336 = add i32 %18, 76
  %337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %336, i32 undef)  ; BufferLoad(srv,index,wot)
  %338 = extractvalue %dx.types.ResRet.i32 %337, 0
  %339 = lshr i32 %338, 24
  %340 = uitofp i32 %339 to float
  %341 = fmul fast float %340, 0x3F70101020000000
  %342 = and i32 %338, 255
  %343 = uitofp i32 %342 to float
  %344 = fmul fast float %343, 0x3F70101020000000
  %345 = lshr i32 %338, 8
  %346 = and i32 %345, 255
  %347 = uitofp i32 %346 to float
  %348 = fmul fast float %347, 0x3F70101020000000
  %349 = lshr i32 %338, 16
  %350 = and i32 %349, 255
  %351 = uitofp i32 %350 to float
  %352 = fmul fast float %351, 0x3F70101020000000
  %353 = bitcast float %277 to i32
  %354 = ashr i32 %353, 1
  %355 = sub nsw i32 1597463174, %354
  %356 = bitcast i32 %355 to float
  %357 = fmul fast float %277, 5.000000e-01
  %358 = fmul fast float %356, %356
  %359 = fmul fast float %358, %357
  %360 = fsub fast float 1.500000e+00, %359
  %361 = fmul fast float %356, %277
  %362 = fmul fast float %361, %360
  %363 = bitcast float %278 to i32
  %364 = ashr i32 %363, 1
  %365 = sub nsw i32 1597463174, %364
  %366 = bitcast i32 %365 to float
  %367 = fmul fast float %278, 5.000000e-01
  %368 = fmul fast float %366, %366
  %369 = fmul fast float %368, %367
  %370 = fsub fast float 1.500000e+00, %369
  %371 = fmul fast float %366, %278
  %372 = fmul fast float %371, %370
  %373 = bitcast float %279 to i32
  %374 = ashr i32 %373, 1
  %375 = sub nsw i32 1597463174, %374
  %376 = bitcast i32 %375 to float
  %377 = fmul fast float %279, 5.000000e-01
  %378 = fmul fast float %376, %376
  %379 = fmul fast float %378, %377
  %380 = fsub fast float 1.500000e+00, %379
  %381 = fmul fast float %376, %279
  %382 = fmul fast float %381, %380
  %383 = fsub fast float %362, %344
  %384 = fsub fast float %372, %348
  %385 = fsub fast float %382, %352
  %386 = fmul fast float %383, %312
  %387 = fmul fast float %384, %314
  %388 = fmul fast float %385, %319
  %389 = fadd fast float %386, %327
  %390 = fadd fast float %387, %331
  %391 = fadd fast float %388, %335
  %392 = call float @dx.op.unary.f32(i32 7, float %389)  ; Saturate(value)
  %393 = call float @dx.op.unary.f32(i32 7, float %390)  ; Saturate(value)
  %394 = call float @dx.op.unary.f32(i32 7, float %391)  ; Saturate(value)
  %395 = fmul fast float %392, %392
  %396 = fmul fast float %393, %393
  %397 = fmul fast float %394, %394
  %398 = fsub fast float %395, %277
  %399 = fsub fast float %396, %278
  %400 = fsub fast float %397, %279
  %401 = fmul fast float %398, %302
  %402 = fmul fast float %399, %302
  %403 = fmul fast float %400, %302
  %404 = fadd fast float %401, %277
  %405 = fadd fast float %402, %278
  %406 = fadd fast float %403, %279
  %407 = fadd fast float %324, %288
  %408 = fsub fast float %407, %341
  %409 = call float @dx.op.unary.f32(i32 7, float %408)  ; Saturate(value)
  %410 = fsub fast float %409, %288
  %411 = fmul fast float %410, %302
  %412 = fadd fast float %411, %288
  br label %466

; <label>:413                                     ; preds = %301
  %414 = and i32 %304, 134217728
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %450, label %416

; <label>:416                                     ; preds = %413
  %417 = call float @dx.op.unary.f32(i32 24, float %142)  ; Sqrt(value)
  %418 = call float @dx.op.unary.f32(i32 24, float %146)  ; Sqrt(value)
  %419 = call float @dx.op.unary.f32(i32 24, float %150)  ; Sqrt(value)
  %420 = fadd fast float %417, -5.000000e-01
  %421 = fadd fast float %418, -5.000000e-01
  %422 = fadd fast float %419, -5.000000e-01
  %423 = fmul fast float %420, %302
  %424 = fmul fast float %421, %302
  %425 = fmul fast float %422, %302
  %426 = fadd fast float %423, 5.000000e-01
  %427 = fadd fast float %424, 5.000000e-01
  %428 = fadd fast float %425, 5.000000e-01
  %429 = call float @dx.op.unary.f32(i32 24, float %277)  ; Sqrt(value)
  %430 = call float @dx.op.unary.f32(i32 24, float %278)  ; Sqrt(value)
  %431 = call float @dx.op.unary.f32(i32 24, float %279)  ; Sqrt(value)
  %432 = fmul fast float %426, 2.000000e+00
  %433 = fsub fast float 1.000000e+00, %432
  %434 = fmul fast float %433, %429
  %435 = fadd fast float %434, %432
  %436 = fmul fast float %435, %429
  %437 = fmul fast float %427, 2.000000e+00
  %438 = fsub fast float 1.000000e+00, %437
  %439 = fmul fast float %438, %430
  %440 = fadd fast float %439, %437
  %441 = fmul fast float %440, %430
  %442 = fmul fast float %428, 2.000000e+00
  %443 = fsub fast float 1.000000e+00, %442
  %444 = fmul fast float %443, %431
  %445 = fadd fast float %444, %442
  %446 = fmul fast float %445, %431
  %447 = fmul fast float %436, %436
  %448 = fmul fast float %441, %441
  %449 = fmul fast float %446, %446
  br label %466

; <label>:450                                     ; preds = %413
  %451 = fmul fast float %142, %142
  %452 = fmul fast float %146, %146
  %453 = fmul fast float %150, %150
  %454 = fadd fast float %451, -1.000000e+00
  %455 = fadd fast float %452, -1.000000e+00
  %456 = fadd fast float %453, -1.000000e+00
  %457 = fmul fast float %302, %454
  %458 = fmul fast float %302, %455
  %459 = fmul fast float %302, %456
  %460 = fadd fast float %457, 1.000000e+00
  %461 = fadd fast float %458, 1.000000e+00
  %462 = fadd fast float %459, 1.000000e+00
  %463 = fmul fast float %460, %277
  %464 = fmul fast float %461, %278
  %465 = fmul fast float %462, %279
  br label %466

; <label>:466                                     ; preds = %450, %416, %307, %265
  %467 = phi float [ %412, %307 ], [ %288, %416 ], [ %288, %450 ], [ 0x3FA23C0BE0000000, %265 ]
  %468 = phi float [ %404, %307 ], [ %447, %416 ], [ %463, %450 ], [ 1.000000e+00, %265 ]
  %469 = phi float [ %405, %307 ], [ %448, %416 ], [ %464, %450 ], [ 1.000000e+00, %265 ]
  %470 = phi float [ %406, %307 ], [ %449, %416 ], [ %465, %450 ], [ 1.000000e+00, %265 ]
  %471 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %472 = extractvalue %dx.types.CBufRet.i32 %471, 1
  %473 = and i32 %472, 1
  %474 = icmp ne i32 %473, 0
  %475 = add i32 %18, 116
  %476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %475, i32 undef)  ; BufferLoad(srv,index,wot)
  %477 = extractvalue %dx.types.ResRet.i32 %476, 0
  %478 = and i32 %477, 32
  %479 = icmp ne i32 %478, 0
  %480 = and i1 %474, %479
  %481 = select i1 %480, float 1.000000e+00, float %468
  %482 = select i1 %480, float 0x3FD3333340000000, float %469
  %483 = select i1 %480, float 0x3FD3333340000000, float %470
  %484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %157, i32 undef)  ; BufferLoad(srv,index,wot)
  %485 = extractvalue %dx.types.ResRet.i32 %484, 0
  %486 = and i32 %485, 32
  %487 = icmp eq i32 %486, 0
  br i1 %487, label %560, label %488

; <label>:488                                     ; preds = %466
  %489 = add i32 %18, 44
  %490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %489, i32 undef)  ; BufferLoad(srv,index,wot)
  %491 = extractvalue %dx.types.ResRet.i32 %490, 0
  %492 = add i32 %18, 124
  %493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %492, i32 undef)  ; BufferLoad(srv,index,wot)
  %494 = extractvalue %dx.types.ResRet.i32 %493, 0
  %495 = add i32 %494, 0
  %496 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %495, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %497 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %496, %dx.types.Handle %31, float %266, float %267, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %498 = extractvalue %dx.types.ResRet.f32 %497, 0
  %499 = extractvalue %dx.types.ResRet.f32 %497, 1
  %500 = extractvalue %dx.types.ResRet.f32 %497, 2
  %501 = extractvalue %dx.types.ResRet.f32 %497, 3
  %502 = and i32 %491, 255
  %503 = uitofp i32 %502 to float
  %504 = lshr i32 %491, 8
  %505 = and i32 %504, 255
  %506 = uitofp i32 %505 to float
  %507 = lshr i32 %491, 16
  %508 = and i32 %507, 255
  %509 = uitofp i32 %508 to float
  %510 = fmul fast float %509, 0x3F70101000000000
  %511 = fmul fast float %498, %503
  %512 = fadd fast float %511, %506
  %513 = fmul fast float %512, 0x3F70101000000000
  %514 = fadd fast float %499, -5.000000e-01
  %515 = fadd fast float %501, -5.000000e-01
  %516 = fmul fast float %514, %510
  %517 = fmul fast float %515, %510
  %518 = fadd fast float %516, 5.000000e-01
  %519 = fadd fast float %517, 5.000000e-01
  %520 = fmul fast float %518, 2.000000e+00
  %521 = fadd fast float %520, -1.000000e+00
  %522 = fmul fast float %519, 2.000000e+00
  %523 = fadd fast float %522, -1.000000e+00
  %524 = fadd fast float %521, %523
  %525 = fmul fast float %524, 5.000000e-01
  %526 = fsub fast float %521, %523
  %527 = fmul fast float %526, 5.000000e-01
  %528 = call float @dx.op.unary.f32(i32 6, float %525)  ; FAbs(value)
  %529 = fsub fast float 1.000000e+00, %528
  %530 = call float @dx.op.unary.f32(i32 6, float %527)  ; FAbs(value)
  %531 = fsub fast float %529, %530
  %532 = call float @dx.op.dot3.f32(i32 55, float %525, float %527, float %531, float %525, float %527, float %531)  ; Dot3(ax,ay,az,bx,by,bz)
  %533 = call float @dx.op.unary.f32(i32 25, float %532)  ; Rsqrt(value)
  %534 = fmul fast float %525, %533
  %535 = fmul fast float %527, %533
  %536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %157, i32 undef)  ; BufferLoad(srv,index,wot)
  %537 = extractvalue %dx.types.ResRet.i32 %536, 0
  %538 = and i32 %537, 67108864
  %539 = icmp eq i32 %538, 0
  br i1 %539, label %556, label %540

; <label>:540                                     ; preds = %488
  %541 = add i32 %18, 88
  %542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %541, i32 undef)  ; BufferLoad(srv,index,wot)
  %543 = extractvalue %dx.types.ResRet.i32 %542, 0
  %544 = and i32 %543, 65535
  %545 = call float @dx.op.legacyF16ToF32(i32 131, i32 %544)  ; LegacyF16ToF32(value)
  %546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %176, i32 undef)  ; BufferLoad(srv,index,wot)
  %547 = extractvalue %dx.types.ResRet.i32 %546, 0
  %548 = and i32 %547, 65535
  %549 = call float @dx.op.legacyF16ToF32(i32 131, i32 %548)  ; LegacyF16ToF32(value)
  %550 = lshr i32 %543, 16
  %551 = call float @dx.op.legacyF16ToF32(i32 131, i32 %550)  ; LegacyF16ToF32(value)
  %552 = fsub fast float %513, %551
  %553 = fmul fast float %552, %545
  %554 = fadd fast float %553, %549
  %555 = call float @dx.op.unary.f32(i32 7, float %554)  ; Saturate(value)
  br label %556

; <label>:556                                     ; preds = %540, %488
  %557 = phi float [ %555, %540 ], [ %513, %488 ]
  %558 = call float @dx.op.dot2.f32(i32 54, float %534, float %535, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %559 = call float @dx.op.dot2.f32(i32 54, float %534, float %535, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %560

; <label>:560                                     ; preds = %556, %466
  %561 = phi float [ %557, %556 ], [ 0x3FD6666660000000, %466 ]
  %562 = phi float [ %558, %556 ], [ 0.000000e+00, %466 ]
  %563 = phi float [ %559, %556 ], [ 0.000000e+00, %466 ]
  %564 = phi float [ %500, %556 ], [ 1.000000e+00, %466 ]
  %565 = add i32 %18, 64
  %566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %565, i32 undef)  ; BufferLoad(srv,index,wot)
  %567 = extractvalue %dx.types.ResRet.i32 %566, 0
  %568 = lshr i32 %567, 22
  %569 = shl nuw nsw i32 %568, 5
  %570 = call float @dx.op.legacyF16ToF32(i32 131, i32 %569)  ; LegacyF16ToF32(value)
  %571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %157, i32 undef)  ; BufferLoad(srv,index,wot)
  %572 = extractvalue %dx.types.ResRet.i32 %571, 0
  %573 = and i32 %572, 64
  %574 = icmp eq i32 %573, 0
  br i1 %574, label %608, label %575

; <label>:575                                     ; preds = %560
  %576 = add i32 %18, 128
  %577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %576, i32 undef)  ; BufferLoad(srv,index,wot)
  %578 = extractvalue %dx.types.ResRet.i32 %577, 0
  %579 = add i32 %578, 0
  %580 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %579, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %157, i32 undef)  ; BufferLoad(srv,index,wot)
  %582 = extractvalue %dx.types.ResRet.i32 %581, 0
  %583 = and i32 %582, 131072
  %584 = icmp eq i32 %583, 0
  %585 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %580, %dx.types.Handle %31, float %266, float %267, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %586 = extractvalue %dx.types.ResRet.f32 %585, 0
  %587 = extractvalue %dx.types.ResRet.f32 %585, 1
  %588 = extractvalue %dx.types.ResRet.f32 %585, 2
  %589 = fmul fast float %586, %130
  %590 = fmul fast float %587, %133
  %591 = fmul fast float %588, %136
  br i1 %584, label %598, label %592

; <label>:592                                     ; preds = %575
  %593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %594 = extractvalue %dx.types.CBufRet.f32 %593, 0
  %595 = fmul fast float %594, %589
  %596 = fmul fast float %594, %590
  %597 = fmul fast float %594, %591
  br label %598

; <label>:598                                     ; preds = %592, %575
  %599 = phi float [ %595, %592 ], [ %589, %575 ]
  %600 = phi float [ %596, %592 ], [ %590, %575 ]
  %601 = phi float [ %597, %592 ], [ %591, %575 ]
  %602 = fmul fast float %599, %570
  %603 = select i1 %124, float %602, float %599
  %604 = call float @dx.op.dot3.f32(i32 55, float %603, float %600, float %601, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %605 = select i1 %124, float 0.000000e+00, float %599
  %606 = select i1 %124, float %604, float %600
  %607 = select i1 %124, float 0.000000e+00, float %601
  br label %608

; <label>:608                                     ; preds = %598, %560
  %609 = phi float [ %605, %598 ], [ 0.000000e+00, %560 ]
  %610 = phi float [ %606, %598 ], [ 0.000000e+00, %560 ]
  %611 = phi float [ %607, %598 ], [ 0.000000e+00, %560 ]
  %612 = add i32 %18, 48
  %613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %612, i32 undef)  ; BufferLoad(srv,index,wot)
  %614 = extractvalue %dx.types.ResRet.i32 %613, 0
  %615 = and i32 %614, 255
  %616 = uitofp i32 %615 to float
  %617 = lshr i32 %614, 8
  %618 = and i32 %617, 255
  %619 = uitofp i32 %618 to float
  %620 = call float @dx.op.dot3.f32(i32 55, float %481, float %482, float %483, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %621 = fmul fast float %619, %620
  %622 = fadd fast float %621, %616
  %623 = fmul fast float %622, 0x3F70101020000000
  %624 = call float @dx.op.unary.f32(i32 7, float %623)  ; Saturate(value)
  br label %625

; <label>:625                                     ; preds = %608, %123
  %626 = phi float [ 0.000000e+00, %123 ], [ %562, %608 ]
  %627 = phi float [ 0.000000e+00, %123 ], [ %563, %608 ]
  %628 = phi float [ 0.000000e+00, %123 ], [ %609, %608 ]
  %629 = phi float [ 0.000000e+00, %123 ], [ %610, %608 ]
  %630 = phi float [ 0.000000e+00, %123 ], [ %611, %608 ]
  %631 = phi float [ 0.000000e+00, %123 ], [ %481, %608 ]
  %632 = phi float [ 0.000000e+00, %123 ], [ %482, %608 ]
  %633 = phi float [ 0.000000e+00, %123 ], [ %483, %608 ]
  %634 = phi float [ 0.000000e+00, %123 ], [ %467, %608 ]
  %635 = phi float [ 0.000000e+00, %123 ], [ 1.000000e+00, %608 ]
  %636 = phi float [ 0.000000e+00, %123 ], [ %561, %608 ]
  %637 = phi float [ 0.000000e+00, %123 ], [ %564, %608 ]
  %638 = phi float [ 0.000000e+00, %123 ], [ %624, %608 ]
  %639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %640 = extractvalue %dx.types.CBufRet.f32 %639, 0
  %641 = call float @dx.op.dot2.f32(i32 54, float %626, float %627, float %626, float %627)  ; Dot2(ax,ay,bx,by)
  %642 = fmul fast float %641, 0x3FE3333340000000
  %643 = fsub fast float 1.000000e+00, %642
  %644 = call float @dx.op.dot3.f32(i32 55, float %626, float %627, float %643, float %626, float %627, float %643)  ; Dot3(ax,ay,az,bx,by,bz)
  %645 = call float @dx.op.unary.f32(i32 25, float %644)  ; Rsqrt(value)
  %646 = fmul fast float %645, %626
  %647 = fmul fast float %645, %627
  %648 = fmul fast float %643, %645
  %649 = fmul fast float %648, %38
  %650 = fmul fast float %648, %39
  %651 = fmul fast float %648, %40
  %652 = fmul fast float %646, %19
  %653 = fmul fast float %646, %20
  %654 = fmul fast float %646, %21
  %655 = fmul fast float %43, %22
  %656 = fmul fast float %655, %647
  %657 = fmul fast float %46, %22
  %658 = fmul fast float %657, %647
  %659 = fmul fast float %49, %22
  %660 = fmul fast float %659, %647
  %661 = fadd fast float %656, %652
  %662 = fmul fast float %661, %37
  %663 = fadd fast float %662, %649
  %664 = fadd fast float %658, %653
  %665 = fmul fast float %664, %37
  %666 = fadd fast float %665, %650
  %667 = fadd fast float %660, %654
  %668 = fmul fast float %667, %37
  %669 = fadd fast float %668, %651
  %670 = call float @dx.op.dot3.f32(i32 55, float %663, float %666, float %669, float %663, float %666, float %669)  ; Dot3(ax,ay,az,bx,by,bz)
  %671 = call float @dx.op.unary.f32(i32 25, float %670)  ; Rsqrt(value)
  %672 = fmul fast float %663, %671
  %673 = fmul fast float %666, %671
  %674 = fmul fast float %669, %671
  %675 = call float @dx.op.unary.f32(i32 83, float %83)  ; DerivCoarseX(value)
  %676 = call float @dx.op.unary.f32(i32 83, float %84)  ; DerivCoarseX(value)
  %677 = call float @dx.op.unary.f32(i32 83, float %85)  ; DerivCoarseX(value)
  %678 = call float @dx.op.unary.f32(i32 84, float %83)  ; DerivCoarseY(value)
  %679 = call float @dx.op.unary.f32(i32 84, float %84)  ; DerivCoarseY(value)
  %680 = call float @dx.op.unary.f32(i32 84, float %85)  ; DerivCoarseY(value)
  %681 = fadd fast float %675, %83
  %682 = fadd fast float %676, %84
  %683 = fadd fast float %677, %85
  %684 = fadd fast float %678, %83
  %685 = fadd fast float %679, %84
  %686 = fadd fast float %680, %85
  %687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %688 = extractvalue %dx.types.CBufRet.f32 %687, 0
  %689 = extractvalue %dx.types.CBufRet.f32 %687, 1
  %690 = extractvalue %dx.types.CBufRet.f32 %687, 2
  %691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %692 = extractvalue %dx.types.CBufRet.f32 %691, 2
  %693 = extractvalue %dx.types.CBufRet.f32 %691, 3
  %694 = fmul fast float %688, %35
  %695 = fmul fast float %694, %692
  %696 = fmul fast float %689, %36
  %697 = fmul fast float %696, %693
  %698 = fptoui float %695 to i32
  %699 = fptoui float %697 to i32
  %700 = fadd fast float %688, -1.000000e+00
  %701 = fadd fast float %689, -1.000000e+00
  %702 = fptoui float %700 to i32
  %703 = fptoui float %701 to i32
  %704 = call i32 @dx.op.binary.i32(i32 40, i32 %698, i32 %702)  ; UMin(a,b)
  %705 = call i32 @dx.op.binary.i32(i32 40, i32 %699, i32 %703)  ; UMin(a,b)
  %706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %707 = extractvalue %dx.types.CBufRet.f32 %706, 2
  %708 = extractvalue %dx.types.CBufRet.f32 %706, 3
  %709 = fmul fast float %707, %30
  %710 = fsub fast float %709, %708
  %711 = fadd fast float %690, -1.000000e+00
  %712 = call float @dx.op.binary.f32(i32 36, float %710, float %711)  ; FMin(a,b)
  %713 = fptoui float %712 to i32
  %714 = fptoui float %688 to i32
  %715 = fptoui float %689 to i32
  %716 = mul i32 %713, %715
  %717 = add i32 %716, %705
  %718 = mul i32 %717, %714
  %719 = add i32 %718, %704
  %720 = shl i32 %719, 2
  %721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %720, i32 undef)  ; BufferLoad(srv,index,wot)
  %722 = extractvalue %dx.types.ResRet.i32 %721, 0
  %723 = and i32 %722, 1023
  %724 = lshr i32 %722, 10
  %725 = icmp eq i32 %723, 0
  br i1 %725, label %1151, label %726

; <label>:726                                     ; preds = %625
  %727 = and i32 %722, 1023
  br label %728

; <label>:728                                     ; preds = %854, %726
  %729 = phi float [ %855, %854 ], [ 0.000000e+00, %726 ]
  %730 = phi float [ %856, %854 ], [ %640, %726 ]
  %731 = phi float [ %857, %854 ], [ %638, %726 ]
  %732 = phi float [ %858, %854 ], [ 0.000000e+00, %726 ]
  %733 = phi float [ %859, %854 ], [ 0.000000e+00, %726 ]
  %734 = phi float [ %860, %854 ], [ %628, %726 ]
  %735 = phi float [ %861, %854 ], [ %629, %726 ]
  %736 = phi float [ %862, %854 ], [ %630, %726 ]
  %737 = phi float [ %863, %854 ], [ %672, %726 ]
  %738 = phi float [ %864, %854 ], [ %673, %726 ]
  %739 = phi float [ %865, %854 ], [ %674, %726 ]
  %740 = phi float [ %866, %854 ], [ %637, %726 ]
  %741 = phi float [ %867, %854 ], [ %636, %726 ]
  %742 = phi float [ %868, %854 ], [ 0.000000e+00, %726 ]
  %743 = phi float [ %869, %854 ], [ %634, %726 ]
  %744 = phi float [ %870, %854 ], [ %631, %726 ]
  %745 = phi float [ %871, %854 ], [ %632, %726 ]
  %746 = phi float [ %872, %854 ], [ %633, %726 ]
  %747 = phi i32 [ %804, %854 ], [ 0, %726 ]
  %748 = add nuw nsw i32 %747, %724
  %749 = shl i32 %748, 2
  %750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %749, i32 undef)  ; BufferLoad(srv,index,wot)
  %751 = extractvalue %dx.types.ResRet.i32 %750, 0
  %752 = shl i32 %751, 8
  %753 = or i32 %752, 48
  %754 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %753, i32 undef)  ; BufferLoad(srv,index,wot)
  %755 = extractvalue %dx.types.ResRet.f32 %754, 0
  %756 = extractvalue %dx.types.ResRet.f32 %754, 1
  %757 = extractvalue %dx.types.ResRet.f32 %754, 2
  %758 = extractvalue %dx.types.ResRet.f32 %754, 3
  %759 = or i32 %752, 64
  %760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %759, i32 undef)  ; BufferLoad(srv,index,wot)
  %761 = extractvalue %dx.types.ResRet.i32 %760, 0
  %762 = extractvalue %dx.types.ResRet.i32 %760, 1
  %763 = or i32 %752, 80
  %764 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %763, i32 undef)  ; BufferLoad(srv,index,wot)
  %765 = extractvalue %dx.types.ResRet.f32 %764, 2
  %766 = extractvalue %dx.types.ResRet.f32 %764, 3
  %767 = or i32 %752, 96
  %768 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %767, i32 undef)  ; BufferLoad(srv,index,wot)
  %769 = extractvalue %dx.types.ResRet.f32 %768, 0
  %770 = extractvalue %dx.types.ResRet.f32 %768, 1
  %771 = extractvalue %dx.types.ResRet.f32 %768, 2
  %772 = extractvalue %dx.types.ResRet.f32 %768, 3
  %773 = or i32 %752, 112
  %774 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %773, i32 undef)  ; BufferLoad(srv,index,wot)
  %775 = extractvalue %dx.types.ResRet.f32 %774, 2
  %776 = or i32 %752, 128
  %777 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %776, i32 undef)  ; BufferLoad(srv,index,wot)
  %778 = extractvalue %dx.types.ResRet.f32 %777, 0
  %779 = extractvalue %dx.types.ResRet.f32 %777, 1
  %780 = extractvalue %dx.types.ResRet.f32 %777, 2
  %781 = extractvalue %dx.types.ResRet.f32 %777, 3
  %782 = or i32 %752, 144
  %783 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %782, i32 undef)  ; BufferLoad(srv,index,wot)
  %784 = extractvalue %dx.types.ResRet.f32 %783, 0
  %785 = extractvalue %dx.types.ResRet.f32 %783, 1
  %786 = extractvalue %dx.types.ResRet.f32 %783, 2
  %787 = extractvalue %dx.types.ResRet.f32 %783, 3
  %788 = or i32 %752, 160
  %789 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %788, i32 undef)  ; BufferLoad(srv,index,wot)
  %790 = extractvalue %dx.types.ResRet.f32 %789, 0
  %791 = extractvalue %dx.types.ResRet.f32 %789, 1
  %792 = extractvalue %dx.types.ResRet.f32 %789, 2
  %793 = extractvalue %dx.types.ResRet.f32 %789, 3
  %794 = or i32 %752, 192
  %795 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %794, i32 undef)  ; BufferLoad(srv,index,wot)
  %796 = extractvalue %dx.types.ResRet.i32 %795, 0
  %797 = or i32 %752, 208
  %798 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %797, i32 undef)  ; BufferLoad(srv,index,wot)
  %799 = extractvalue %dx.types.ResRet.f32 %798, 0
  %800 = or i32 %752, 248
  %801 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %800, i32 undef)  ; BufferLoad(srv,index,wot)
  %802 = extractvalue %dx.types.ResRet.f32 %801, 0
  %803 = extractvalue %dx.types.ResRet.f32 %801, 1
  %804 = add nuw nsw i32 %747, 1
  %805 = bitcast float %758 to i32
  %806 = and i32 %805, 2560
  %807 = icmp eq i32 %806, 2048
  %808 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %752, i32 undef)  ; BufferLoad(srv,index,wot)
  %809 = extractvalue %dx.types.ResRet.f32 %808, 0
  %810 = extractvalue %dx.types.ResRet.f32 %808, 1
  %811 = extractvalue %dx.types.ResRet.f32 %808, 2
  %812 = extractvalue %dx.types.ResRet.f32 %808, 3
  %813 = call float @dx.op.dot4.f32(i32 56, float %809, float %810, float %811, float %812, float %83, float %84, float %85, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %814 = or i32 %752, 16
  %815 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %814, i32 undef)  ; BufferLoad(srv,index,wot)
  %816 = extractvalue %dx.types.ResRet.f32 %815, 0
  %817 = extractvalue %dx.types.ResRet.f32 %815, 1
  %818 = extractvalue %dx.types.ResRet.f32 %815, 2
  %819 = extractvalue %dx.types.ResRet.f32 %815, 3
  %820 = call float @dx.op.dot4.f32(i32 56, float %816, float %817, float %818, float %819, float %83, float %84, float %85, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %821 = or i32 %752, 32
  %822 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %821, i32 undef)  ; BufferLoad(srv,index,wot)
  %823 = extractvalue %dx.types.ResRet.f32 %822, 0
  %824 = extractvalue %dx.types.ResRet.f32 %822, 1
  %825 = extractvalue %dx.types.ResRet.f32 %822, 2
  %826 = extractvalue %dx.types.ResRet.f32 %822, 3
  %827 = call float @dx.op.dot4.f32(i32 56, float %823, float %824, float %825, float %826, float %83, float %84, float %85, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %828 = call float @dx.op.unary.f32(i32 27, float %813)  ; Round_ni(value)
  %829 = call float @dx.op.unary.f32(i32 6, float %828)  ; FAbs(value)
  %830 = call float @dx.op.unary.f32(i32 27, float %820)  ; Round_ni(value)
  %831 = call float @dx.op.unary.f32(i32 6, float %830)  ; FAbs(value)
  %832 = call float @dx.op.unary.f32(i32 6, float %827)  ; FAbs(value)
  %833 = call float @dx.op.unary.f32(i32 27, float %832)  ; Round_ni(value)
  %834 = fadd fast float %831, %829
  %835 = fadd fast float %834, %833
  %836 = fcmp fast oeq float %835, 0.000000e+00
  %837 = call float @dx.op.dot4.f32(i32 56, float %809, float %810, float %811, float %812, float %681, float %682, float %683, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %838 = call float @dx.op.dot4.f32(i32 56, float %816, float %817, float %818, float %819, float %681, float %682, float %683, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %839 = call float @dx.op.dot4.f32(i32 56, float %809, float %810, float %811, float %812, float %684, float %685, float %686, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %840 = call float @dx.op.dot4.f32(i32 56, float %816, float %817, float %818, float %819, float %684, float %685, float %686, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %841 = fsub fast float %837, %813
  %842 = fsub fast float %839, %813
  %843 = fsub fast float %838, %820
  %844 = fsub fast float %840, %820
  %845 = call float @dx.op.dot3.f32(i32 55, float %755, float %756, float %757, float %38, float %39, float %40)  ; Dot3(ax,ay,az,bx,by,bz)
  %846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %847 = extractvalue %dx.types.CBufRet.f32 %846, 2
  %848 = fadd fast float %847, %845
  %849 = call float @dx.op.unary.f32(i32 7, float %848)  ; Saturate(value)
  %850 = extractvalue %dx.types.CBufRet.f32 %846, 0
  %851 = fcmp fast ogt float %849, %850
  %852 = and i1 %836, %851
  %853 = and i1 %807, %852
  br i1 %853, label %874, label %854

; <label>:854                                     ; preds = %1137, %955, %874, %728
  %855 = phi float [ %729, %874 ], [ %958, %955 ], [ %958, %1137 ], [ %729, %728 ]
  %856 = phi float [ %730, %874 ], [ %730, %955 ], [ %1112, %1137 ], [ %730, %728 ]
  %857 = phi float [ %731, %874 ], [ %731, %955 ], [ %1110, %1137 ], [ %731, %728 ]
  %858 = phi float [ %732, %874 ], [ %732, %955 ], [ %1082, %1137 ], [ %732, %728 ]
  %859 = phi float [ %733, %874 ], [ %733, %955 ], [ %1080, %1137 ], [ %733, %728 ]
  %860 = phi float [ %734, %874 ], [ %734, %955 ], [ %1147, %1137 ], [ %734, %728 ]
  %861 = phi float [ %735, %874 ], [ %735, %955 ], [ %1148, %1137 ], [ %735, %728 ]
  %862 = phi float [ %736, %874 ], [ %736, %955 ], [ %1149, %1137 ], [ %736, %728 ]
  %863 = phi float [ %737, %874 ], [ %737, %955 ], [ %1061, %1137 ], [ %737, %728 ]
  %864 = phi float [ %738, %874 ], [ %738, %955 ], [ %1062, %1137 ], [ %738, %728 ]
  %865 = phi float [ %739, %874 ], [ %739, %955 ], [ %1063, %1137 ], [ %739, %728 ]
  %866 = phi float [ %740, %874 ], [ %740, %955 ], [ %1090, %1137 ], [ %740, %728 ]
  %867 = phi float [ %741, %874 ], [ %741, %955 ], [ %1087, %1137 ], [ %741, %728 ]
  %868 = phi float [ %742, %874 ], [ %742, %955 ], [ %1084, %1137 ], [ %742, %728 ]
  %869 = phi float [ %743, %874 ], [ %743, %955 ], [ %1078, %1137 ], [ %743, %728 ]
  %870 = phi float [ %744, %874 ], [ %744, %955 ], [ %1073, %1137 ], [ %744, %728 ]
  %871 = phi float [ %745, %874 ], [ %745, %955 ], [ %1074, %1137 ], [ %745, %728 ]
  %872 = phi float [ %746, %874 ], [ %746, %955 ], [ %1075, %1137 ], [ %746, %728 ]
  %873 = icmp eq i32 %804, %727
  br i1 %873, label %1150, label %728

; <label>:874                                     ; preds = %728
  %875 = extractvalue %dx.types.ResRet.f32 %774, 3
  %876 = extractvalue %dx.types.ResRet.f32 %774, 1
  %877 = extractvalue %dx.types.ResRet.f32 %774, 0
  %878 = extractvalue %dx.types.ResRet.f32 %764, 1
  %879 = extractvalue %dx.types.ResRet.f32 %764, 0
  %880 = extractvalue %dx.types.ResRet.i32 %760, 3
  %881 = extractvalue %dx.types.ResRet.i32 %760, 2
  %882 = add i32 %880, 0
  %883 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %882, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %884 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %885 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %883, %dx.types.Handle %884, float %813, float %820, float undef, float undef, i32 0, i32 0, i32 undef, float %841, float %843, float undef, float %842, float %844, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %886 = extractvalue %dx.types.ResRet.f32 %885, 0
  %887 = fmul fast float %886, %879
  %888 = fadd fast float %887, %878
  %889 = call float @dx.op.unary.f32(i32 7, float %888)  ; Saturate(value)
  %890 = fmul fast float %813, %769
  %891 = call float @dx.op.tertiary.f32(i32 46, float %770, float %820, float %890)  ; FMad(a,b,c)
  %892 = fadd fast float %891, %877
  %893 = fmul fast float %813, %771
  %894 = call float @dx.op.tertiary.f32(i32 46, float %772, float %820, float %893)  ; FMad(a,b,c)
  %895 = fadd fast float %894, %876
  %896 = fmul fast float %841, %769
  %897 = call float @dx.op.tertiary.f32(i32 46, float %770, float %843, float %896)  ; FMad(a,b,c)
  %898 = fmul fast float %841, %771
  %899 = call float @dx.op.tertiary.f32(i32 46, float %772, float %843, float %898)  ; FMad(a,b,c)
  %900 = fmul fast float %842, %769
  %901 = call float @dx.op.tertiary.f32(i32 46, float %770, float %844, float %900)  ; FMad(a,b,c)
  %902 = fmul fast float %842, %771
  %903 = call float @dx.op.tertiary.f32(i32 46, float %772, float %844, float %902)  ; FMad(a,b,c)
  %904 = add i32 %881, 0
  %905 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %904, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %906 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %905, %dx.types.Handle %884, float %892, float %895, float undef, float undef, i32 0, i32 0, i32 undef, float %897, float %899, float undef, float %901, float %903, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %907 = extractvalue %dx.types.ResRet.f32 %906, 0
  %908 = and i32 %805, 1024
  %909 = icmp ne i32 %908, 0
  %910 = fcmp fast ogt float %907, 0x3FE0101020000000
  %911 = uitofp i1 %910 to float
  %912 = select i1 %909, float %911, float %907
  %913 = and i32 %805, 8192
  %914 = icmp ne i32 %913, 0
  %915 = select i1 %914, float %875, float 1.000000e+00
  %916 = fmul fast float %813, 2.000000e+00
  %917 = fadd fast float %916, -1.000000e+00
  %918 = call float @dx.op.unary.f32(i32 6, float %917)  ; FAbs(value)
  %919 = fmul fast float %918, %802
  %920 = fsub fast float %919, %802
  %921 = call float @dx.op.unary.f32(i32 7, float %920)  ; Saturate(value)
  %922 = fmul fast float %820, 2.000000e+00
  %923 = fadd fast float %922, -1.000000e+00
  %924 = call float @dx.op.unary.f32(i32 6, float %923)  ; FAbs(value)
  %925 = fmul fast float %924, %803
  %926 = fsub fast float %925, %803
  %927 = call float @dx.op.unary.f32(i32 7, float %926)  ; Saturate(value)
  %928 = fmul fast float %832, %765
  %929 = fsub fast float %928, %765
  %930 = call float @dx.op.unary.f32(i32 7, float %929)  ; Saturate(value)
  %931 = fmul fast float %889, %915
  %932 = fmul fast float %931, %886
  %933 = fmul fast float %932, %921
  %934 = fmul fast float %933, %912
  %935 = fmul fast float %934, %927
  %936 = fmul fast float %935, %930
  %937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %938 = extractvalue %dx.types.CBufRet.f32 %937, 1
  %939 = extractvalue %dx.types.CBufRet.f32 %937, 0
  %940 = fsub fast float %849, %939
  %941 = fmul fast float %940, %938
  %942 = call float @dx.op.unary.f32(i32 7, float %941)  ; Saturate(value)
  %943 = fmul fast float %936, %766
  %944 = fadd fast float %936, %766
  %945 = fmul fast float %944, %775
  %946 = fsub fast float %945, %775
  %947 = call float @dx.op.unary.f32(i32 7, float %946)  ; Saturate(value)
  %948 = and i32 %805, 128
  %949 = icmp ne i32 %948, 0
  %950 = select i1 %949, float %947, float %943
  %951 = fmul fast float %950, %942
  %952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %953 = extractvalue %dx.types.CBufRet.f32 %952, 0
  %954 = fcmp fast ugt float %951, %953
  br i1 %954, label %955, label %854

; <label>:955                                     ; preds = %874
  %956 = select i1 %914, float %951, float 0.000000e+00
  %957 = fadd fast float %956, %729
  %958 = call float @dx.op.unary.f32(i32 7, float %957)  ; Saturate(value)
  br i1 %914, label %854, label %959

; <label>:959                                     ; preds = %955
  %960 = and i32 %805, 4
  %961 = and i32 %805, 8
  %962 = add i32 %761, 0
  %963 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %962, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %964 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %965 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %963, %dx.types.Handle %964, float %892, float %895, float undef, float undef, i32 0, i32 0, i32 undef, float %897, float %899, float undef, float %901, float %903, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %966 = extractvalue %dx.types.ResRet.f32 %965, 0
  %967 = extractvalue %dx.types.ResRet.f32 %965, 1
  %968 = extractvalue %dx.types.ResRet.f32 %965, 2
  %969 = extractvalue %dx.types.ResRet.f32 %965, 3
  %970 = bitcast float %787 to i32
  %971 = and i32 %970, 255
  %972 = uitofp i32 %971 to float
  %973 = lshr i32 %970, 8
  %974 = and i32 %973, 255
  %975 = uitofp i32 %974 to float
  %976 = fmul fast float %969, %972
  %977 = fadd fast float %976, %975
  %978 = fmul fast float %977, 0x3F70101000000000
  %979 = add i32 %762, 0
  %980 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %979, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %981 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %980, %dx.types.Handle %964, float %892, float %895, float undef, float undef, i32 0, i32 0, i32 undef, float %897, float %899, float undef, float %901, float %903, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %982 = extractvalue %dx.types.ResRet.f32 %981, 0
  %983 = extractvalue %dx.types.ResRet.f32 %981, 1
  %984 = extractvalue %dx.types.ResRet.f32 %981, 2
  %985 = extractvalue %dx.types.ResRet.f32 %981, 3
  %986 = bitcast float %781 to i32
  %987 = and i32 %986, 255
  %988 = uitofp i32 %987 to float
  %989 = lshr i32 %986, 8
  %990 = and i32 %989, 255
  %991 = uitofp i32 %990 to float
  %992 = lshr i32 %986, 16
  %993 = and i32 %992, 255
  %994 = uitofp i32 %993 to float
  %995 = fmul fast float %994, 0x3F70101000000000
  %996 = fmul fast float %982, %988
  %997 = fadd fast float %996, %991
  %998 = fmul fast float %997, 0x3F70101000000000
  %999 = fadd fast float %983, -5.000000e-01
  %1000 = fadd fast float %985, -5.000000e-01
  %1001 = fmul fast float %999, %995
  %1002 = fmul fast float %1000, %995
  %1003 = fadd fast float %1001, 5.000000e-01
  %1004 = fadd fast float %1002, 5.000000e-01
  %1005 = fmul fast float %966, %790
  %1006 = fmul fast float %967, %791
  %1007 = fmul fast float %968, %792
  %1008 = fmul fast float %1003, 2.000000e+00
  %1009 = fadd fast float %1008, -1.000000e+00
  %1010 = fmul fast float %1004, 2.000000e+00
  %1011 = fadd fast float %1010, -1.000000e+00
  %1012 = fadd fast float %1009, %1011
  %1013 = fmul fast float %1012, 5.000000e-01
  %1014 = fsub fast float %1009, %1011
  %1015 = fmul fast float %1014, 5.000000e-01
  %1016 = call float @dx.op.unary.f32(i32 6, float %1013)  ; FAbs(value)
  %1017 = fsub fast float 1.000000e+00, %1016
  %1018 = call float @dx.op.unary.f32(i32 6, float %1015)  ; FAbs(value)
  %1019 = fsub fast float %1017, %1018
  %1020 = call float @dx.op.dot3.f32(i32 55, float %1013, float %1015, float %1019, float %1013, float %1015, float %1019)  ; Dot3(ax,ay,az,bx,by,bz)
  %1021 = call float @dx.op.unary.f32(i32 25, float %1020)  ; Rsqrt(value)
  %1022 = fmul fast float %1013, %1021
  %1023 = fmul fast float %1015, %1021
  %1024 = fmul fast float %1021, %1019
  %1025 = fmul fast float %1024, %755
  %1026 = fmul fast float %1024, %756
  %1027 = fmul fast float %1024, %757
  %1028 = fmul fast float %1022, %778
  %1029 = fmul fast float %1022, %779
  %1030 = fmul fast float %1022, %780
  %1031 = fadd fast float %1028, %1025
  %1032 = fadd fast float %1029, %1026
  %1033 = fadd fast float %1030, %1027
  %1034 = fmul fast float %1023, %784
  %1035 = fmul fast float %1023, %785
  %1036 = fmul fast float %1023, %786
  %1037 = fadd fast float %1031, %1034
  %1038 = fadd fast float %1032, %1035
  %1039 = fadd fast float %1033, %1036
  %1040 = call float @dx.op.dot3.f32(i32 55, float %1037, float %1038, float %1039, float %1037, float %1038, float %1039)  ; Dot3(ax,ay,az,bx,by,bz)
  %1041 = call float @dx.op.unary.f32(i32 25, float %1040)  ; Rsqrt(value)
  %1042 = fmul fast float %1037, %1041
  %1043 = fmul fast float %1038, %1041
  %1044 = fmul fast float %1039, %1041
  %1045 = icmp ne i32 %961, 0
  %1046 = select i1 %1045, float 1.000000e+00, float 0.000000e+00
  %1047 = fmul fast float %951, %1046
  %1048 = and i32 %805, 1
  %1049 = icmp eq i32 %1048, 0
  br i1 %1049, label %1050, label %1054

; <label>:1050                                    ; preds = %959
  %1051 = fsub fast float %1042, %737
  %1052 = fsub fast float %1043, %738
  %1053 = fsub fast float %1044, %739
  br label %1054

; <label>:1054                                    ; preds = %1050, %959
  %1055 = phi float [ %1051, %1050 ], [ %1042, %959 ]
  %1056 = phi float [ %1052, %1050 ], [ %1043, %959 ]
  %1057 = phi float [ %1053, %1050 ], [ %1044, %959 ]
  %1058 = fmul float %1057, %1047
  %1059 = fmul float %1056, %1047
  %1060 = fmul float %1055, %1047
  %1061 = fadd fast float %1060, %737
  %1062 = fadd fast float %1059, %738
  %1063 = fadd fast float %1058, %739
  %1064 = icmp ne i32 %960, 0
  %1065 = select i1 %1064, float 1.000000e+00, float 0.000000e+00
  %1066 = fmul fast float %951, %1065
  %1067 = fsub fast float %1005, %744
  %1068 = fsub fast float %1006, %745
  %1069 = fsub fast float %1007, %746
  %1070 = fmul fast float %1067, %1066
  %1071 = fmul fast float %1068, %1066
  %1072 = fmul fast float %1069, %1066
  %1073 = fadd fast float %1070, %744
  %1074 = fadd fast float %1071, %745
  %1075 = fadd fast float %1072, %746
  %1076 = fsub fast float %978, %743
  %1077 = fmul fast float %1076, %1066
  %1078 = fadd fast float %1077, %743
  %1079 = fmul fast float %1066, %733
  %1080 = fsub fast float %733, %1079
  %1081 = fmul fast float %1066, %732
  %1082 = fsub fast float %732, %1081
  %1083 = fadd fast float %951, %742
  %1084 = call float @dx.op.unary.f32(i32 7, float %1083)  ; Saturate(value)
  %1085 = fsub fast float %998, %741
  %1086 = fmul fast float %1085, %1047
  %1087 = fadd fast float %1086, %741
  %1088 = fsub fast float %984, %740
  %1089 = fmul fast float %1088, %1047
  %1090 = fadd fast float %1089, %740
  %1091 = call float @dx.op.dot3.f32(i32 55, float %1005, float %1006, float %1007, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1093 = extractvalue %dx.types.CBufRet.f32 %1092, 0
  %1094 = extractvalue %dx.types.CBufRet.f32 %1092, 1
  %1095 = fmul fast float %1094, %1091
  %1096 = fadd fast float %1095, %1093
  %1097 = call float @dx.op.unary.f32(i32 7, float %1096)  ; Saturate(value)
  %1098 = bitcast float %793 to i32
  %1099 = and i32 %1098, 65535
  %1100 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1099)  ; LegacyF16ToF32(value)
  %1101 = lshr i32 %1098, 16
  %1102 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1101)  ; LegacyF16ToF32(value)
  %1103 = fcmp fast oge float %1100, 0.000000e+00
  %1104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1105 = extractvalue %dx.types.CBufRet.f32 %1104, 0
  %1106 = select i1 %1103, float %1100, float %1105
  %1107 = fadd fast float %1106, %1102
  %1108 = fsub fast float %1097, %731
  %1109 = fmul fast float %1108, %951
  %1110 = fadd fast float %1109, %731
  %1111 = fmul fast float %1107, %951
  %1112 = call float @dx.op.binary.f32(i32 35, float %730, float %1111)  ; FMax(a,b)
  %1113 = and i32 %805, 16
  %1114 = icmp eq i32 %1113, 0
  br i1 %1114, label %1137, label %1115

; <label>:1115                                    ; preds = %1054
  %1116 = bitcast float %799 to i32
  %1117 = add i32 %796, 0
  %1118 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1117, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1119 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1118, %dx.types.Handle %964, float %892, float %895, float undef, float undef, i32 0, i32 0, i32 undef, float %897, float %899, float undef, float %901, float %903, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1120 = extractvalue %dx.types.ResRet.f32 %1119, 0
  %1121 = extractvalue %dx.types.ResRet.f32 %1119, 1
  %1122 = extractvalue %dx.types.ResRet.f32 %1119, 2
  %1123 = and i32 %1116, 65535
  %1124 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1123)  ; LegacyF16ToF32(value)
  %1125 = fmul fast float %1120, %790
  %1126 = fmul fast float %1121, %791
  %1127 = fmul fast float %1122, %792
  %1128 = and i32 %805, 16384
  %1129 = icmp ne i32 %1128, 0
  %1130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1131 = extractvalue %dx.types.CBufRet.f32 %1130, 0
  %1132 = select i1 %1129, float %1131, float 1.000000e+00
  %1133 = fmul fast float %1132, %1124
  %1134 = fmul fast float %1125, %1133
  %1135 = fmul fast float %1126, %1133
  %1136 = fmul fast float %1127, %1133
  br label %1137

; <label>:1137                                    ; preds = %1115, %1054
  %1138 = phi float [ %1134, %1115 ], [ 0.000000e+00, %1054 ]
  %1139 = phi float [ %1135, %1115 ], [ 0.000000e+00, %1054 ]
  %1140 = phi float [ %1136, %1115 ], [ 0.000000e+00, %1054 ]
  %1141 = fsub fast float %1138, %734
  %1142 = fsub fast float %1139, %735
  %1143 = fsub fast float %1140, %736
  %1144 = fmul fast float %1141, %951
  %1145 = fmul fast float %1142, %951
  %1146 = fmul fast float %1143, %951
  %1147 = fadd fast float %1144, %734
  %1148 = fadd fast float %1145, %735
  %1149 = fadd fast float %1146, %736
  br label %854

; <label>:1150                                    ; preds = %854
  br label %1151

; <label>:1151                                    ; preds = %1150, %625
  %1152 = phi float [ 0.000000e+00, %625 ], [ %855, %1150 ]
  %1153 = phi float [ %640, %625 ], [ %856, %1150 ]
  %1154 = phi float [ %638, %625 ], [ %857, %1150 ]
  %1155 = phi float [ 0.000000e+00, %625 ], [ %858, %1150 ]
  %1156 = phi float [ 0.000000e+00, %625 ], [ %859, %1150 ]
  %1157 = phi float [ %628, %625 ], [ %860, %1150 ]
  %1158 = phi float [ %629, %625 ], [ %861, %1150 ]
  %1159 = phi float [ %630, %625 ], [ %862, %1150 ]
  %1160 = phi float [ %672, %625 ], [ %863, %1150 ]
  %1161 = phi float [ %673, %625 ], [ %864, %1150 ]
  %1162 = phi float [ %674, %625 ], [ %865, %1150 ]
  %1163 = phi float [ %637, %625 ], [ %866, %1150 ]
  %1164 = phi float [ %636, %625 ], [ %867, %1150 ]
  %1165 = phi float [ 0.000000e+00, %625 ], [ %868, %1150 ]
  %1166 = phi float [ %634, %625 ], [ %869, %1150 ]
  %1167 = phi float [ %631, %625 ], [ %870, %1150 ]
  %1168 = phi float [ %632, %625 ], [ %871, %1150 ]
  %1169 = phi float [ %633, %625 ], [ %872, %1150 ]
  %1170 = call float @dx.op.dot3.f32(i32 55, float %1160, float %1161, float %1162, float %1160, float %1161, float %1162)  ; Dot3(ax,ay,az,bx,by,bz)
  %1171 = call float @dx.op.unary.f32(i32 25, float %1170)  ; Rsqrt(value)
  %1172 = fmul fast float %1171, %1160
  %1173 = fmul fast float %1171, %1161
  %1174 = fmul fast float %1171, %1162
  %1175 = fadd fast float %1165, %635
  %1176 = call float @dx.op.unary.f32(i32 7, float %1175)  ; Saturate(value)
  %1177 = call float @dx.op.dot3.f32(i32 55, float %1172, float %1173, float %1174, float %1172, float %1173, float %1174)  ; Dot3(ax,ay,az,bx,by,bz)
  %1178 = call float @dx.op.unary.f32(i32 25, float %1177)  ; Rsqrt(value)
  %1179 = fmul fast float %1178, %1172
  %1180 = fmul fast float %1178, %1173
  %1181 = fmul fast float %1178, %1174
  %1182 = fadd fast float %1166, 0xBFB99999A0000000
  %1183 = call float @dx.op.unary.f32(i32 7, float %1182)  ; Saturate(value)
  %1184 = fmul fast float %1183, 0x3FF1C71C80000000
  %1185 = call float @dx.op.binary.f32(i32 36, float %1166, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1186 = fsub fast float 1.000000e+00, %1184
  %1187 = call float @dx.op.unary.f32(i32 7, float %1186)  ; Saturate(value)
  %1188 = fmul fast float %1187, %1167
  %1189 = fmul fast float %1187, %1168
  %1190 = fmul fast float %1187, %1169
  %1191 = call float @dx.op.unary.f32(i32 7, float %1188)  ; Saturate(value)
  %1192 = call float @dx.op.unary.f32(i32 7, float %1189)  ; Saturate(value)
  %1193 = call float @dx.op.unary.f32(i32 7, float %1190)  ; Saturate(value)
  %1194 = fmul fast float %1184, %1167
  %1195 = fmul fast float %1184, %1168
  %1196 = fmul fast float %1184, %1169
  %1197 = fadd fast float %1194, %1185
  %1198 = fadd fast float %1195, %1185
  %1199 = fadd fast float %1196, %1185
  %1200 = call float @dx.op.unary.f32(i32 7, float %1197)  ; Saturate(value)
  %1201 = call float @dx.op.unary.f32(i32 7, float %1198)  ; Saturate(value)
  %1202 = call float @dx.op.unary.f32(i32 7, float %1199)  ; Saturate(value)
  %1203 = call float @dx.op.unary.f32(i32 7, float %1164)  ; Saturate(value)
  %1204 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1205 = extractvalue %dx.types.CBufRet.i32 %1204, 3
  %1206 = and i32 %1205, 8
  %1207 = icmp ne i32 %1206, 0
  %1208 = call float @dx.op.binary.f32(i32 35, float %1191, float %1167)  ; FMax(a,b)
  %1209 = call float @dx.op.binary.f32(i32 35, float %1192, float %1167)  ; FMax(a,b)
  %1210 = call float @dx.op.binary.f32(i32 35, float %1193, float %1167)  ; FMax(a,b)
  %1211 = call float @dx.op.dot3.f32(i32 55, float %1191, float %1192, float %1193, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1212 = select i1 %124, float %1167, float %1191
  %1213 = select i1 %124, float %1211, float %1192
  %1214 = select i1 %124, float 1.000000e+00, float %1193
  %1215 = select i1 %1207, float %1208, float %1212
  %1216 = select i1 %1207, float %1209, float %1213
  %1217 = select i1 %1207, float %1210, float %1214
  %1218 = and i32 %100, 3
  %1219 = select i1 %94, i32 %1218, i32 0
  %1220 = icmp eq i32 %1219, 1
  br i1 %1220, label %1221, label %1297

; <label>:1221                                    ; preds = %1151
  %1222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1223 = extractvalue %dx.types.CBufRet.f32 %1222, 0
  %1224 = extractvalue %dx.types.CBufRet.f32 %1222, 1
  %1225 = fadd fast float %1223, %83
  %1226 = fadd fast float %1224, %84
  %1227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1228 = extractvalue %dx.types.CBufRet.f32 %1227, 0
  %1229 = extractvalue %dx.types.CBufRet.f32 %1227, 1
  %1230 = fsub fast float %1225, %1228
  %1231 = fsub fast float %1226, %1229
  %1232 = fmul fast float %1230, %1230
  %1233 = fmul fast float %1231, %1231
  %1234 = fadd fast float %1232, %1233
  %1235 = call float @dx.op.unary.f32(i32 24, float %1234)  ; Sqrt(value)
  %1236 = extractvalue %dx.types.CBufRet.f32 %1227, 2
  %1237 = fcmp fast olt float %1235, %1236
  br i1 %1237, label %1238, label %1291

; <label>:1238                                    ; preds = %1221
  %1239 = extractvalue %dx.types.CBufRet.f32 %1222, 2
  %1240 = fadd fast float %1239, %85
  %1241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1242 = extractvalue %dx.types.CBufRet.f32 %1241, 0
  %1243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1244 = extractvalue %dx.types.CBufRet.f32 %1243, 0
  %1245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1246 = extractvalue %dx.types.CBufRet.f32 %1245, 0
  %1247 = extractvalue %dx.types.CBufRet.f32 %1241, 1
  %1248 = extractvalue %dx.types.CBufRet.f32 %1243, 1
  %1249 = extractvalue %dx.types.CBufRet.f32 %1245, 1
  %1250 = extractvalue %dx.types.CBufRet.f32 %1241, 3
  %1251 = extractvalue %dx.types.CBufRet.f32 %1243, 3
  %1252 = extractvalue %dx.types.CBufRet.f32 %1245, 3
  %1253 = fadd fast float %1250, %1225
  %1254 = fadd fast float %1251, %1226
  %1255 = fadd fast float %1240, %1252
  %1256 = fmul fast float %1253, %1242
  %1257 = call float @dx.op.tertiary.f32(i32 46, float %1254, float %1244, float %1256)  ; FMad(a,b,c)
  %1258 = call float @dx.op.tertiary.f32(i32 46, float %1255, float %1246, float %1257)  ; FMad(a,b,c)
  %1259 = fmul fast float %1253, %1247
  %1260 = call float @dx.op.tertiary.f32(i32 46, float %1254, float %1248, float %1259)  ; FMad(a,b,c)
  %1261 = call float @dx.op.tertiary.f32(i32 46, float %1255, float %1249, float %1260)  ; FMad(a,b,c)
  %1262 = fsub fast float %1258, %1250
  %1263 = fsub fast float %1261, %1251
  %1264 = fsub fast float %1262, %1228
  %1265 = fadd fast float %1264, %1236
  %1266 = fsub fast float %1263, %1229
  %1267 = fadd fast float %1266, %1236
  %1268 = extractvalue %dx.types.CBufRet.f32 %1227, 3
  %1269 = fmul fast float %1265, %1268
  %1270 = fmul fast float %1267, %1268
  %1271 = call float @dx.op.unary.f32(i32 7, float %1269)  ; Saturate(value)
  %1272 = call float @dx.op.unary.f32(i32 7, float %1270)  ; Saturate(value)
  %1273 = fsub fast float 1.000000e+00, %1271
  %1274 = fsub fast float 1.000000e+00, %1272
  %1275 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %12, float %1273, float %1274, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1276 = extractvalue %dx.types.ResRet.f32 %1275, 0
  %1277 = fcmp fast ugt float %1276, 0.000000e+00
  br i1 %1277, label %1278, label %1291

; <label>:1278                                    ; preds = %1238
  %1279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1280 = extractvalue %dx.types.CBufRet.f32 %1279, 2
  %1281 = fmul fast float %1280, %1276
  %1282 = extractvalue %dx.types.CBufRet.f32 %1279, 3
  %1283 = fadd fast float %1282, %1281
  %1284 = extractvalue %dx.types.CBufRet.f32 %1245, 2
  %1285 = fadd fast float %1283, %1252
  %1286 = fmul fast float %1258, %1246
  %1287 = call float @dx.op.tertiary.f32(i32 46, float %1261, float %1249, float %1286)  ; FMad(a,b,c)
  %1288 = call float @dx.op.tertiary.f32(i32 46, float %1285, float %1284, float %1287)  ; FMad(a,b,c)
  %1289 = fsub fast float %1288, %1252
  %1290 = fsub fast float %1289, %1239
  br label %1291

; <label>:1291                                    ; preds = %1278, %1238, %1221
  %1292 = phi i1 [ true, %1278 ], [ false, %1238 ], [ false, %1221 ]
  %1293 = phi float [ %1290, %1278 ], [ -1.310720e+05, %1238 ], [ -1.310720e+05, %1221 ]
  %1294 = fsub fast float %1293, %85
  %1295 = call float @dx.op.unary.f32(i32 7, float %1294)  ; Saturate(value)
  %1296 = select i1 %1292, float %1295, float 1.000000e+00
  br label %1297

; <label>:1297                                    ; preds = %1291, %1151
  %1298 = phi float [ %1296, %1291 ], [ 0.000000e+00, %1151 ]
  %1299 = icmp eq i32 %1219, 3
  %1300 = select i1 %1299, float 1.000000e+00, float %1298
  %1301 = call float @dx.op.binary.f32(i32 35, float %1152, float %1300)  ; FMax(a,b)
  %1302 = call float @dx.op.unary.f32(i32 7, float %1301)  ; Saturate(value)
  %1303 = fcmp fast une float %1302, 0.000000e+00
  %1304 = call float @dx.op.dot3.f32(i32 55, float %83, float %84, float %85, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %1305 = call float @dx.op.unary.f32(i32 25, float %1304)  ; Rsqrt(value)
  br i1 %1303, label %1313, label %1306

; <label>:1306                                    ; preds = %1297
  %1307 = fmul fast float %1305, %83
  %1308 = fmul fast float %1305, %84
  %1309 = fmul fast float %1305, %85
  %1310 = fsub fast float -0.000000e+00, %1307
  %1311 = fsub fast float -0.000000e+00, %1308
  %1312 = fsub fast float -0.000000e+00, %1309
  br label %1481

; <label>:1313                                    ; preds = %1297
  %1314 = fmul fast float %83, %1305
  %1315 = fsub fast float -0.000000e+00, %1314
  %1316 = fmul fast float %84, %1305
  %1317 = fsub fast float -0.000000e+00, %1316
  %1318 = fmul fast float %85, %1305
  %1319 = fsub fast float -0.000000e+00, %1318
  %1320 = call float @dx.op.dot3.f32(i32 55, float %1315, float %1317, float %1319, float %38, float %39, float %40)  ; Dot3(ax,ay,az,bx,by,bz)
  %1321 = fmul fast float %1302, 2.500000e+00
  %1322 = call float @dx.op.unary.f32(i32 7, float %1321)  ; Saturate(value)
  %1323 = fmul fast float %1302, 0x4013FFFFE0000000
  %1324 = fadd fast float %1323, 0xBFFFFFFFE0000000
  %1325 = call float @dx.op.unary.f32(i32 7, float %1324)  ; Saturate(value)
  %1326 = fmul fast float %1302, 0x4004000020000000
  %1327 = fadd fast float %1326, 0xBFF8000040000000
  %1328 = call float @dx.op.unary.f32(i32 7, float %1327)  ; Saturate(value)
  %1329 = call float @dx.op.unary.f32(i32 7, float %1322)  ; Saturate(value)
  %1330 = fmul fast float %1182, 1.000000e+01
  %1331 = call float @dx.op.unary.f32(i32 7, float %1330)  ; Saturate(value)
  %1332 = fmul fast float %1331, 2.000000e+00
  %1333 = fsub fast float 3.000000e+00, %1332
  %1334 = fmul fast float %1331, %1331
  %1335 = fmul fast float %1334, %1333
  %1336 = fsub fast float 1.000000e+00, %1335
  %1337 = fsub fast float 0x3FE3333340000000, %1203
  %1338 = fmul fast float %1337, 0x400AAAAAA0000000
  %1339 = call float @dx.op.unary.f32(i32 7, float %1338)  ; Saturate(value)
  %1340 = fmul fast float %1336, %1339
  %1341 = fmul fast float %1215, 0x3FEA2B8620000000
  %1342 = fmul fast float %1216, 0x3FEA2B8620000000
  %1343 = fmul fast float %1217, 0x3FEA2B8620000000
  %1344 = fadd fast float %1341, 0x3FC81DFBA0000000
  %1345 = fmul fast float %1344, %1215
  %1346 = fadd fast float %1345, 0x3F910E6020000000
  %1347 = fadd fast float %1342, 0x3FC81DFBA0000000
  %1348 = fmul fast float %1347, %1216
  %1349 = fadd fast float %1348, 0x3F910E6020000000
  %1350 = fadd fast float %1343, 0x3FC81DFBA0000000
  %1351 = fmul fast float %1350, %1217
  %1352 = fadd fast float %1351, 0x3F910E6020000000
  %1353 = call float @dx.op.unary.f32(i32 7, float %1346)  ; Saturate(value)
  %1354 = call float @dx.op.unary.f32(i32 7, float %1349)  ; Saturate(value)
  %1355 = call float @dx.op.unary.f32(i32 7, float %1352)  ; Saturate(value)
  %1356 = fsub fast float %1353, %1215
  %1357 = fsub fast float %1354, %1216
  %1358 = fsub fast float %1355, %1217
  %1359 = fmul fast float %1356, %1329
  %1360 = fmul fast float %1359, %1340
  %1361 = fmul fast float %1357, %1329
  %1362 = fmul fast float %1361, %1340
  %1363 = fmul fast float %1358, %1329
  %1364 = fmul fast float %1363, %1340
  %1365 = fadd fast float %1360, %1215
  %1366 = fadd fast float %1362, %1216
  %1367 = fadd fast float %1364, %1217
  %1368 = fmul fast float %1163, %1163
  %1369 = fmul fast float %1368, %1368
  %1370 = fadd fast float %1325, 1.000000e+00
  %1371 = fsub fast float %1370, %1340
  %1372 = call float @dx.op.unary.f32(i32 7, float %1371)  ; Saturate(value)
  %1373 = call float @dx.op.dot3.f32(i32 55, float %38, float %39, float %40, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1374 = call float @dx.op.unary.f32(i32 7, float %1373)  ; Saturate(value)
  %1375 = fsub fast float 1.000000e+00, %1369
  %1376 = call float @dx.op.binary.f32(i32 36, float %1372, float %1375)  ; FMin(a,b)
  %1377 = call float @dx.op.unary.f32(i32 7, float %1328)  ; Saturate(value)
  %1378 = call float @dx.op.binary.f32(i32 35, float %1376, float %1377)  ; FMax(a,b)
  %1379 = fadd fast float %1374, 0xBFE4CCCCC0000000
  %1380 = fmul fast float %1379, 0x4006DB6DA0000000
  %1381 = call float @dx.op.unary.f32(i32 7, float %1380)  ; Saturate(value)
  %1382 = fmul fast float %1381, 2.000000e+00
  %1383 = fsub fast float 3.000000e+00, %1382
  %1384 = bitcast float %1200 to i32
  %1385 = ashr i32 %1384, 1
  %1386 = add nsw i32 %1385, 532487669
  %1387 = bitcast i32 %1386 to float
  %1388 = fsub fast float 1.000000e+00, %1387
  %1389 = bitcast float %1388 to i32
  %1390 = sub nsw i32 2129859010, %1389
  %1391 = bitcast i32 %1390 to float
  %1392 = fmul fast float %1391, 2.000000e+00
  %1393 = bitcast float %1201 to i32
  %1394 = ashr i32 %1393, 1
  %1395 = add nsw i32 %1394, 532487669
  %1396 = bitcast i32 %1395 to float
  %1397 = fsub fast float 1.000000e+00, %1396
  %1398 = bitcast float %1397 to i32
  %1399 = sub nsw i32 2129859010, %1398
  %1400 = bitcast i32 %1399 to float
  %1401 = fmul fast float %1400, 2.000000e+00
  %1402 = bitcast float %1202 to i32
  %1403 = ashr i32 %1402, 1
  %1404 = add nsw i32 %1403, 532487669
  %1405 = bitcast i32 %1404 to float
  %1406 = fsub fast float 1.000000e+00, %1405
  %1407 = bitcast float %1406 to i32
  %1408 = sub nsw i32 2129859010, %1407
  %1409 = bitcast i32 %1408 to float
  %1410 = fmul fast float %1409, 2.000000e+00
  %1411 = fsub fast float 0x4002A9FBE0000000, %1392
  %1412 = fadd fast float %1392, 0x3FD54FDF00000000
  %1413 = bitcast float %1412 to i32
  %1414 = sub nsw i32 2129859010, %1413
  %1415 = bitcast i32 %1414 to float
  %1416 = fmul fast float %1415, %1411
  %1417 = fmul fast float %1416, %1416
  %1418 = fsub fast float 0x4002A9FBE0000000, %1401
  %1419 = fadd fast float %1401, 0x3FD54FDF00000000
  %1420 = bitcast float %1419 to i32
  %1421 = sub nsw i32 2129859010, %1420
  %1422 = bitcast i32 %1421 to float
  %1423 = fmul fast float %1422, %1418
  %1424 = fmul fast float %1423, %1423
  %1425 = fsub fast float 0x4002A9FBE0000000, %1410
  %1426 = fadd fast float %1410, 0x3FD54FDF00000000
  %1427 = bitcast float %1426 to i32
  %1428 = sub nsw i32 2129859010, %1427
  %1429 = bitcast i32 %1428 to float
  %1430 = fmul fast float %1429, %1425
  %1431 = fmul fast float %1430, %1430
  %1432 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1417)  ; FMax(a,b)
  %1433 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1424)  ; FMax(a,b)
  %1434 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1431)  ; FMax(a,b)
  %1435 = fsub fast float 1.000000e+00, %1320
  %1436 = fadd fast float %1435, %1336
  %1437 = call float @dx.op.unary.f32(i32 7, float %1436)  ; Saturate(value)
  %1438 = fsub fast float 1.000000e+00, %1300
  %1439 = fmul fast float %1378, %1438
  %1440 = fmul fast float %1381, %1381
  %1441 = fmul fast float %1440, %1439
  %1442 = fmul fast float %1441, %1383
  %1443 = fmul fast float %1438, 0xBFE99999A0000000
  %1444 = fmul fast float %1443, %1329
  %1445 = fmul fast float %1444, %1340
  %1446 = fadd fast float %1445, 1.000000e+00
  %1447 = fadd fast float %1203, -1.000000e+00
  %1448 = fmul fast float %1446, %1447
  %1449 = fadd fast float %1448, 1.000000e+00
  %1450 = fsub fast float %1432, %1200
  %1451 = fsub fast float %1433, %1201
  %1452 = fsub fast float %1434, %1202
  %1453 = fmul fast float %1442, %1450
  %1454 = fmul fast float %1442, %1451
  %1455 = fmul fast float %1442, %1452
  %1456 = fadd fast float %1453, %1200
  %1457 = fadd fast float %1454, %1201
  %1458 = fadd fast float %1455, %1202
  %1459 = fsub fast float %38, %1179
  %1460 = fsub fast float %39, %1180
  %1461 = fsub fast float %40, %1181
  %1462 = fmul fast float %1442, %1459
  %1463 = fmul fast float %1442, %1460
  %1464 = fmul fast float %1442, %1461
  %1465 = fadd fast float %1462, %1179
  %1466 = fadd fast float %1463, %1180
  %1467 = fadd fast float %1464, %1181
  %1468 = fmul fast float %1442, %1437
  %1469 = call float @dx.op.unary.f32(i32 7, float %1449)  ; Saturate(value)
  %1470 = fsub fast float 1.000000e+00, %1469
  %1471 = fmul fast float %1468, %1470
  %1472 = fadd fast float %1471, %1469
  %1473 = fsub fast float 1.000000e+00, %1163
  %1474 = fmul fast float %1442, %1473
  %1475 = fadd fast float %1474, %1163
  %1476 = call float @dx.op.dot3.f32(i32 55, float %1465, float %1466, float %1467, float %1465, float %1466, float %1467)  ; Dot3(ax,ay,az,bx,by,bz)
  %1477 = call float @dx.op.unary.f32(i32 25, float %1476)  ; Rsqrt(value)
  %1478 = fmul fast float %1465, %1477
  %1479 = fmul fast float %1466, %1477
  %1480 = fmul fast float %1467, %1477
  br label %1481

; <label>:1481                                    ; preds = %1313, %1306
  %1482 = phi float [ %1312, %1306 ], [ %1319, %1313 ]
  %1483 = phi float [ %1311, %1306 ], [ %1317, %1313 ]
  %1484 = phi float [ %1310, %1306 ], [ %1315, %1313 ]
  %1485 = phi float [ %1309, %1306 ], [ %1318, %1313 ]
  %1486 = phi float [ %1308, %1306 ], [ %1316, %1313 ]
  %1487 = phi float [ %1307, %1306 ], [ %1314, %1313 ]
  %1488 = phi float [ %1200, %1306 ], [ %1456, %1313 ]
  %1489 = phi float [ %1201, %1306 ], [ %1457, %1313 ]
  %1490 = phi float [ %1202, %1306 ], [ %1458, %1313 ]
  %1491 = phi float [ %1215, %1306 ], [ %1365, %1313 ]
  %1492 = phi float [ %1216, %1306 ], [ %1366, %1313 ]
  %1493 = phi float [ %1217, %1306 ], [ %1367, %1313 ]
  %1494 = phi float [ %1179, %1306 ], [ %1478, %1313 ]
  %1495 = phi float [ %1180, %1306 ], [ %1479, %1313 ]
  %1496 = phi float [ %1181, %1306 ], [ %1480, %1313 ]
  %1497 = phi float [ %1203, %1306 ], [ %1472, %1313 ]
  %1498 = phi float [ %1163, %1306 ], [ %1475, %1313 ]
  %1499 = select i1 %124, float 0.000000e+00, float %1490
  %1500 = call float @dx.op.dot3.f32(i32 55, float %1494, float %1495, float %1496, float %1484, float %1483, float %1482)  ; Dot3(ax,ay,az,bx,by,bz)
  %1501 = call float @dx.op.unary.f32(i32 7, float %1500)  ; Saturate(value)
  %1502 = fsub fast float 1.000000e+00, %1498
  %1503 = bitcast float %1502 to i32
  %1504 = sub nsw i32 2129859010, %1503
  %1505 = fmul fast float %1176, %1157
  %1506 = fmul fast float %1176, %1158
  %1507 = fmul fast float %1176, %1159
  %1508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1509 = extractvalue %dx.types.CBufRet.f32 %1508, 3
  %1510 = fcmp fast oeq float %1509, 0.000000e+00
  br i1 %1510, label %1758, label %1511

; <label>:1511                                    ; preds = %1481
  %1512 = extractvalue %dx.types.CBufRet.f32 %1508, 0
  %1513 = extractvalue %dx.types.CBufRet.f32 %1508, 1
  %1514 = extractvalue %dx.types.CBufRet.f32 %1508, 2
  %1515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %1516 = extractvalue %dx.types.CBufRet.f32 %1515, 0
  %1517 = extractvalue %dx.types.CBufRet.f32 %1515, 1
  %1518 = extractvalue %dx.types.CBufRet.f32 %1515, 2
  %1519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %1520 = extractvalue %dx.types.CBufRet.f32 %1519, 0
  %1521 = extractvalue %dx.types.CBufRet.f32 %1519, 1
  %1522 = call float @dx.op.dot3.f32(i32 55, float %1516, float %1517, float %1518, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1523 = select i1 %124, float %1520, float %1516
  %1524 = select i1 %124, float %1522, float %1517
  %1525 = select i1 %124, float %1521, float %1518
  %1526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %1527 = extractvalue %dx.types.CBufRet.f32 %1526, 1
  %1528 = fcmp fast une float %1527, 0.000000e+00
  br i1 %1528, label %1529, label %1546

; <label>:1529                                    ; preds = %1511
  %1530 = fptoui float %35 to i32
  %1531 = fptoui float %36 to i32
  %1532 = lshr i32 %1530, 4
  %1533 = lshr i32 %1531, 4
  %1534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1535 = extractvalue %dx.types.CBufRet.f32 %1534, 0
  %1536 = fptoui float %1535 to i32
  %1537 = add i32 %1536, 15
  %1538 = lshr i32 %1537, 4
  %1539 = mul i32 %1538, %1533
  %1540 = add i32 %1539, %1532
  %1541 = shl i32 %1540, 3
  %1542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1541, i32 undef)  ; BufferLoad(srv,index,wot)
  %1543 = extractvalue %dx.types.ResRet.i32 %1542, 0
  %1544 = and i32 %1543, -268435456
  %1545 = icmp eq i32 %1544, -1342177280
  br i1 %1545, label %1556, label %1546

; <label>:1546                                    ; preds = %1529, %1511
  %1547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1548 = extractvalue %dx.types.CBufRet.f32 %1547, 2
  %1549 = extractvalue %dx.types.CBufRet.f32 %1547, 3
  %1550 = fmul fast float %1548, %35
  %1551 = fmul fast float %1549, %36
  %1552 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %13, float %1550, float %1551, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1553 = extractvalue %dx.types.ResRet.f32 %1552, 0
  %1554 = extractvalue %dx.types.ResRet.f32 %1552, 1
  %1555 = extractvalue %dx.types.ResRet.f32 %1552, 2
  br label %1556

; <label>:1556                                    ; preds = %1546, %1529
  %1557 = phi float [ %1553, %1546 ], [ 0.000000e+00, %1529 ]
  %1558 = phi float [ %1554, %1546 ], [ 0.000000e+00, %1529 ]
  %1559 = phi float [ %1555, %1546 ], [ 0.000000e+00, %1529 ]
  %1560 = call float @dx.op.binary.f32(i32 36, float %1558, float %1559)  ; FMin(a,b)
  %1561 = call float @dx.op.binary.f32(i32 36, float %1557, float %1560)  ; FMin(a,b)
  %1562 = fcmp fast ogt float %1561, 0.000000e+00
  br i1 %1562, label %1563, label %1758, !dx.controlflow.hints !48

; <label>:1563                                    ; preds = %1556
  %1564 = fmul fast float %1557, %1523
  %1565 = fmul fast float %1558, %1524
  %1566 = fmul fast float %1559, %1525
  %1567 = fsub fast float %1512, %1487
  %1568 = fsub fast float %1513, %1486
  %1569 = fsub fast float %1514, %1485
  %1570 = call float @dx.op.dot3.f32(i32 55, float %1567, float %1568, float %1569, float %1567, float %1568, float %1569)  ; Dot3(ax,ay,az,bx,by,bz)
  %1571 = call float @dx.op.unary.f32(i32 25, float %1570)  ; Rsqrt(value)
  %1572 = fmul fast float %1571, %1567
  %1573 = fmul fast float %1571, %1568
  %1574 = fmul fast float %1571, %1569
  %1575 = call float @dx.op.dot3.f32(i32 55, float %1512, float %1513, float %1514, float %1494, float %1495, float %1496)  ; Dot3(ax,ay,az,bx,by,bz)
  %1576 = call float @dx.op.dot3.f32(i32 55, float %1484, float %1483, float %1482, float %1572, float %1573, float %1574)  ; Dot3(ax,ay,az,bx,by,bz)
  %1577 = call float @dx.op.unary.f32(i32 7, float %1575)  ; Saturate(value)
  %1578 = bitcast i32 %1504 to float
  %1579 = fmul fast float %1577, %1577
  %1580 = fmul fast float %1579, %1578
  %1581 = call float @dx.op.unary.f32(i32 7, float %1580)  ; Saturate(value)
  %1582 = fmul fast float %1581, %1577
  %1583 = call float @dx.op.dot3.f32(i32 55, float %1494, float %1495, float %1496, float %1572, float %1573, float %1574)  ; Dot3(ax,ay,az,bx,by,bz)
  %1584 = fmul fast float %1583, %1583
  %1585 = call float @dx.op.unary.f32(i32 6, float %1575)  ; FAbs(value)
  %1586 = fsub fast float 1.000000e+00, %1497
  %1587 = call float @dx.op.binary.f32(i32 35, float %1586, float 0x3F847AE140000000)  ; FMax(a,b)
  %1588 = fmul fast float %1587, %1587
  %1589 = fmul fast float %1588, %1588
  %1590 = fsub fast float 1.000000e+00, %1589
  %1591 = fmul fast float %1501, %1501
  %1592 = fmul fast float %1591, %1590
  %1593 = fadd fast float %1592, %1589
  %1594 = bitcast float %1593 to i32
  %1595 = ashr i32 %1594, 1
  %1596 = add nsw i32 %1595, 532487669
  %1597 = bitcast i32 %1596 to float
  %1598 = fadd fast float %1597, %1501
  %1599 = fmul fast float %1589, %1584
  %1600 = fsub fast float 1.000000e+00, %1584
  %1601 = fadd fast float %1600, %1599
  %1602 = fmul fast float %1585, %1585
  %1603 = fmul fast float %1602, %1590
  %1604 = fadd fast float %1603, %1589
  %1605 = bitcast float %1604 to i32
  %1606 = ashr i32 %1605, 1
  %1607 = add nsw i32 %1606, 532487669
  %1608 = bitcast i32 %1607 to float
  %1609 = fadd fast float %1608, %1585
  %1610 = fmul fast float %1601, %1601
  %1611 = fmul fast float %1610, %1598
  %1612 = fmul fast float %1611, %1609
  %1613 = fdiv fast float 0x3FF0A00000000000, %1612
  %1614 = fmul fast float %1613, %1589
  %1615 = call float @dx.op.unary.f32(i32 6, float %1576)  ; FAbs(value)
  %1616 = fsub fast float 1.000000e+00, %1615
  %1617 = bitcast float %1616 to i32
  %1618 = sitofp i32 %1617 to float
  %1619 = fmul fast float %1618, 5.000000e+00
  %1620 = fadd fast float %1619, 0xC1EFBF8940000000
  %1621 = fptosi float %1620 to i32
  %1622 = bitcast i32 %1621 to float
  %1623 = fsub fast float 1.000000e+00, %1488
  %1624 = fsub fast float 1.000000e+00, %1489
  %1625 = fsub fast float 1.000000e+00, %1499
  %1626 = fmul fast float %1622, %1623
  %1627 = fmul fast float %1622, %1624
  %1628 = fmul fast float %1622, %1625
  %1629 = fadd fast float %1626, %1488
  %1630 = fadd fast float %1627, %1489
  %1631 = fadd fast float %1628, %1499
  %1632 = fcmp fast ogt float %1156, 0.000000e+00
  br i1 %1632, label %1633, label %1656

; <label>:1633                                    ; preds = %1563
  %1634 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %12, float %1156, float %1615, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1635 = extractvalue %dx.types.ResRet.f32 %1634, 0
  %1636 = extractvalue %dx.types.ResRet.f32 %1634, 1
  %1637 = extractvalue %dx.types.ResRet.f32 %1634, 2
  %1638 = fadd fast float %1635, -5.000000e-01
  %1639 = fadd fast float %1636, -5.000000e-01
  %1640 = fadd fast float %1637, -5.000000e-01
  %1641 = fmul fast float %1488, 4.000000e+00
  %1642 = fmul fast float %1641, %1623
  %1643 = fmul fast float %1642, %1638
  %1644 = fmul fast float %1489, 4.000000e+00
  %1645 = fmul fast float %1644, %1624
  %1646 = fmul fast float %1645, %1639
  %1647 = fmul fast float %1499, 4.000000e+00
  %1648 = fmul fast float %1647, %1625
  %1649 = fmul fast float %1648, %1640
  %1650 = fadd fast float %1643, %1629
  %1651 = fadd fast float %1646, %1630
  %1652 = fadd fast float %1649, %1631
  %1653 = call float @dx.op.unary.f32(i32 7, float %1650)  ; Saturate(value)
  %1654 = call float @dx.op.unary.f32(i32 7, float %1651)  ; Saturate(value)
  %1655 = call float @dx.op.unary.f32(i32 7, float %1652)  ; Saturate(value)
  br label %1656

; <label>:1656                                    ; preds = %1633, %1563
  %1657 = phi float [ %1653, %1633 ], [ %1629, %1563 ]
  %1658 = phi float [ %1654, %1633 ], [ %1630, %1563 ]
  %1659 = phi float [ %1655, %1633 ], [ %1631, %1563 ]
  %1660 = fmul fast float %1575, 9.843750e-01
  %1661 = fmul fast float %1497, 9.843750e-01
  %1662 = fadd fast float %1660, 7.812500e-03
  %1663 = fadd fast float %1661, 7.812500e-03
  %1664 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %12, float %1662, float %1663, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1665 = extractvalue %dx.types.ResRet.f32 %1664, 2
  %1666 = extractvalue %dx.types.ResRet.f32 %1664, 3
  %1667 = fmul fast float %1665, %1488
  %1668 = fmul fast float %1665, %1489
  %1669 = fmul fast float %1665, %1499
  %1670 = fadd fast float %1667, %1666
  %1671 = fadd fast float %1668, %1666
  %1672 = fadd fast float %1669, %1666
  br i1 %1632, label %1673, label %1696

; <label>:1673                                    ; preds = %1656
  %1674 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %12, float %1156, float %1575, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1675 = extractvalue %dx.types.ResRet.f32 %1674, 0
  %1676 = extractvalue %dx.types.ResRet.f32 %1674, 1
  %1677 = extractvalue %dx.types.ResRet.f32 %1674, 2
  %1678 = fadd fast float %1675, -5.000000e-01
  %1679 = fadd fast float %1676, -5.000000e-01
  %1680 = fadd fast float %1677, -5.000000e-01
  %1681 = fmul fast float %1488, 4.000000e+00
  %1682 = fmul fast float %1681, %1623
  %1683 = fmul fast float %1682, %1678
  %1684 = fmul fast float %1489, 4.000000e+00
  %1685 = fmul fast float %1684, %1624
  %1686 = fmul fast float %1685, %1679
  %1687 = fmul fast float %1499, 4.000000e+00
  %1688 = fmul fast float %1687, %1625
  %1689 = fmul fast float %1688, %1680
  %1690 = fadd fast float %1683, %1670
  %1691 = fadd fast float %1686, %1671
  %1692 = fadd fast float %1689, %1672
  %1693 = call float @dx.op.unary.f32(i32 7, float %1690)  ; Saturate(value)
  %1694 = call float @dx.op.unary.f32(i32 7, float %1691)  ; Saturate(value)
  %1695 = call float @dx.op.unary.f32(i32 7, float %1692)  ; Saturate(value)
  br label %1696

; <label>:1696                                    ; preds = %1673, %1656
  %1697 = phi float [ %1693, %1673 ], [ %1670, %1656 ]
  %1698 = phi float [ %1694, %1673 ], [ %1671, %1656 ]
  %1699 = phi float [ %1695, %1673 ], [ %1672, %1656 ]
  %1700 = call float @dx.op.binary.f32(i32 35, float %1698, float %1699)  ; FMax(a,b)
  %1701 = call float @dx.op.binary.f32(i32 35, float %1697, float %1700)  ; FMax(a,b)
  %1702 = fsub fast float 1.000000e+00, %1701
  %1703 = fmul fast float %1657, %1614
  %1704 = fmul fast float %1658, %1614
  %1705 = fmul fast float %1659, %1614
  %1706 = call float @dx.op.dot3.f32(i32 55, float %1491, float %1492, float %1493, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1707 = fcmp fast ogt float %1706, 0x3E7FF19E20000000
  %1708 = fdiv fast float 1.000000e+00, %1706
  %1709 = select i1 %1707, float %1708, float 0.000000e+00
  %1710 = fmul fast float %1709, %1491
  %1711 = fmul fast float %1709, %1492
  %1712 = fmul fast float %1709, %1493
  %1713 = fadd fast float %1710, -1.000000e+00
  %1714 = fadd fast float %1711, -1.000000e+00
  %1715 = fadd fast float %1712, -1.000000e+00
  %1716 = fmul fast float %1713, 5.000000e-01
  %1717 = fmul fast float %1714, 5.000000e-01
  %1718 = fmul fast float %1715, 5.000000e-01
  %1719 = fadd fast float %1716, 1.000000e+00
  %1720 = fadd fast float %1717, 1.000000e+00
  %1721 = fadd fast float %1718, 1.000000e+00
  %1722 = fsub fast float 1.000000e+00, %1576
  %1723 = bitcast float %1722 to i32
  %1724 = sitofp i32 %1723 to float
  %1725 = fmul fast float %1724, 5.000000e+00
  %1726 = fadd fast float %1725, 0xC1EFBF8940000000
  %1727 = fptosi float %1726 to i32
  %1728 = bitcast i32 %1727 to float
  %1729 = fmul fast float %1728, %1155
  %1730 = fmul fast float %1702, %1729
  %1731 = fmul fast float %1730, %1719
  %1732 = fmul fast float %1730, %1720
  %1733 = fmul fast float %1730, %1721
  %1734 = fadd fast float %1731, %1703
  %1735 = fadd fast float %1732, %1704
  %1736 = fadd fast float %1733, %1705
  %1737 = fmul fast float %1582, %1564
  %1738 = fmul fast float %1737, %1734
  %1739 = fmul fast float %1582, %1565
  %1740 = fmul fast float %1739, %1735
  %1741 = fmul fast float %1582, %1566
  %1742 = fmul fast float %1741, %1736
  %1743 = fmul fast float %1564, %1176
  %1744 = fmul fast float %1743, %1582
  %1745 = fmul fast float %1744, %1702
  %1746 = fmul fast float %1565, %1176
  %1747 = fmul fast float %1746, %1582
  %1748 = fmul fast float %1747, %1702
  %1749 = fmul fast float %1566, %1176
  %1750 = fmul fast float %1749, %1582
  %1751 = fmul fast float %1750, %1702
  %1752 = fadd fast float %1738, %1157
  %1753 = fmul fast float %1752, %1176
  %1754 = fadd fast float %1740, %1158
  %1755 = fmul fast float %1754, %1176
  %1756 = fadd fast float %1742, %1159
  %1757 = fmul fast float %1756, %1176
  br label %1758

; <label>:1758                                    ; preds = %1696, %1556, %1481
  %1759 = phi float [ %1505, %1481 ], [ %1505, %1556 ], [ %1753, %1696 ]
  %1760 = phi float [ %1506, %1481 ], [ %1506, %1556 ], [ %1755, %1696 ]
  %1761 = phi float [ %1507, %1481 ], [ %1507, %1556 ], [ %1757, %1696 ]
  %1762 = phi float [ 0.000000e+00, %1481 ], [ 0.000000e+00, %1556 ], [ %1745, %1696 ]
  %1763 = phi float [ 0.000000e+00, %1481 ], [ 0.000000e+00, %1556 ], [ %1748, %1696 ]
  %1764 = phi float [ 0.000000e+00, %1481 ], [ 0.000000e+00, %1556 ], [ %1751, %1696 ]
  %1765 = call float @dx.op.unary.f32(i32 24, float %1491)  ; Sqrt(value)
  %1766 = call float @dx.op.unary.f32(i32 24, float %1492)  ; Sqrt(value)
  %1767 = call float @dx.op.unary.f32(i32 24, float %1493)  ; Sqrt(value)
  %1768 = fmul fast float %1765, %1762
  %1769 = fmul fast float %1766, %1763
  %1770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1771 = extractvalue %dx.types.CBufRet.f32 %1770, 0
  br i1 %124, label %1772, label %1793

; <label>:1772                                    ; preds = %1758
  %1773 = fadd fast float %1764, %1153
  %1774 = fmul fast float %1773, %1154
  %1775 = fsub fast float 1.000000e+00, %1154
  %1776 = call float @dx.op.unary.f32(i32 7, float %1775)  ; Saturate(value)
  %1777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1778 = extractvalue %dx.types.CBufRet.f32 %1777, 3
  %1779 = fmul fast float %1778, %1776
  %1780 = fadd fast float %1779, %1774
  %1781 = fsub fast float 1.000000e+00, %1501
  %1782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1783 = extractvalue %dx.types.CBufRet.f32 %1782, 0
  %1784 = fmul fast float %1783, %1781
  %1785 = fsub fast float %1780, %1784
  %1786 = fadd fast float %1769, %1768
  %1787 = fmul fast float %1771, %1786
  %1788 = extractvalue %dx.types.CBufRet.f32 %1777, 1
  %1789 = fsub fast float %1785, %1788
  %1790 = extractvalue %dx.types.CBufRet.f32 %1777, 2
  %1791 = fmul fast float %1789, %1790
  %1792 = call float @dx.op.unary.f32(i32 7, float %1791)  ; Saturate(value)
  br label %1809

; <label>:1793                                    ; preds = %1758
  %1794 = fmul fast float %1767, %1764
  %1795 = fmul fast float %1771, %1768
  %1796 = fmul fast float %1771, %1769
  %1797 = fmul fast float %1794, %1771
  %1798 = add i32 %18, 116
  %1799 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1798, i32 undef)  ; BufferLoad(srv,index,wot)
  %1800 = extractvalue %dx.types.ResRet.i32 %1799, 0
  %1801 = and i32 %1800, 32
  %1802 = icmp eq i32 %1801, 0
  br i1 %1802, label %1809, label %1803

; <label>:1803                                    ; preds = %1793
  %1804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1805 = extractvalue %dx.types.CBufRet.f32 %1804, 0
  %1806 = fmul fast float %1805, 0x3FE99999A0000000
  %1807 = fadd fast float %1805, %1795
  %1808 = fadd fast float %1806, %1797
  br label %1809

; <label>:1809                                    ; preds = %1803, %1793, %1772
  %1810 = phi float [ %1787, %1772 ], [ %1807, %1803 ], [ %1795, %1793 ]
  %1811 = phi float [ %1792, %1772 ], [ %1796, %1803 ], [ %1796, %1793 ]
  %1812 = phi float [ 1.000000e+00, %1772 ], [ %1808, %1803 ], [ %1797, %1793 ]
  %1813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1814 = extractvalue %dx.types.CBufRet.f32 %1813, 0
  %1815 = fmul fast float %1814, %1760
  %1816 = fmul fast float %1814, %1761
  %1817 = fadd fast float %1760, %1759
  %1818 = select i1 %124, float %1817, float %1759
  %1819 = fmul float %1818, %1814
  %1820 = select i1 %124, float 0.000000e+00, float %1815
  %1821 = select i1 %124, float 0.000000e+00, float %1816
  %1822 = fmul fast float %1810, %1765
  %1823 = fmul fast float %1811, %1766
  %1824 = fmul fast float %1812, %1767
  %1825 = fadd fast float %1819, %1822
  %1826 = fadd fast float %1820, %1823
  %1827 = fadd fast float %1821, %1824
  %1828 = select i1 %124, float %1811, float %1826
  %1829 = select i1 %124, float %1812, float %1827
  %1830 = call float @dx.op.binary.f32(i32 36, float %1825, float 3.225500e+04)  ; FMin(a,b)
  %1831 = call float @dx.op.binary.f32(i32 36, float %1828, float 3.225500e+04)  ; FMin(a,b)
  %1832 = call float @dx.op.binary.f32(i32 36, float %1829, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1830)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1831)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1832)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!27 = !{[24 x i32] [i32 22, i32 4, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7]}
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
!43 = !{i32 6, !"SV_IsFrontFace", i8 5, i8 13, !32, i8 1, i32 1, i8 1, i32 5, i8 1, !42}
!44 = !{i32 7, !"SV_SampleIndex", i8 5, i8 12, !32, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!45 = !{!46}
!46 = !{i32 0, !"SV_Target", i8 9, i8 16, !32, i8 0, i32 1, i8 4, i32 0, i8 0, !40}
!47 = !{i32 0, i64 24}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 1}

