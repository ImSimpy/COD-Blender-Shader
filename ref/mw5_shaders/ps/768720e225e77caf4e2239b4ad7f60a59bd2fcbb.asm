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
; shader hash: 03e659b25fddb0c1505ea774ab5a2689
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
;                                   texture     f32          2d     T13     t48,space2     1
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %18 = icmp ne i32 %17, 0
  %19 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %20 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %21 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %35 = extractvalue %dx.types.CBufRet.f32 %34, 0
  %36 = fmul fast float %35, %29
  %37 = fmul fast float %35, %30
  %38 = select i1 %18, float 1.000000e+00, float -1.000000e+00
  %39 = fmul fast float %24, %38
  %40 = fmul fast float %25, %38
  %41 = fmul fast float %26, %38
  %42 = fmul fast float %25, %22
  %43 = fmul fast float %26, %21
  %44 = fsub fast float %42, %43
  %45 = fmul fast float %26, %20
  %46 = fmul fast float %24, %22
  %47 = fsub fast float %45, %46
  %48 = fmul fast float %24, %21
  %49 = fmul fast float %25, %20
  %50 = fsub fast float %48, %49
  %51 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %52 = extractvalue %dx.types.CBufRet.f32 %51, 2
  %53 = extractvalue %dx.types.CBufRet.f32 %51, 3
  %54 = fmul fast float %52, 2.000000e+00
  %55 = fmul fast float %54, %36
  %56 = fmul fast float %53, 2.000000e+00
  %57 = fmul fast float %56, %37
  %58 = fsub fast float 1.000000e+00, %55
  %59 = fsub fast float 1.000000e+00, %57
  %60 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %61 = extractvalue %dx.types.CBufRet.f32 %60, 0
  %62 = extractvalue %dx.types.CBufRet.f32 %60, 1
  %63 = extractvalue %dx.types.CBufRet.f32 %60, 2
  %64 = fmul fast float %58, %61
  %65 = fmul fast float %58, %62
  %66 = fmul fast float %58, %63
  %67 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %68 = extractvalue %dx.types.CBufRet.f32 %67, 0
  %69 = extractvalue %dx.types.CBufRet.f32 %67, 1
  %70 = extractvalue %dx.types.CBufRet.f32 %67, 2
  %71 = fmul fast float %59, %68
  %72 = fmul fast float %59, %69
  %73 = fmul fast float %59, %70
  %74 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %75 = extractvalue %dx.types.CBufRet.f32 %74, 0
  %76 = extractvalue %dx.types.CBufRet.f32 %74, 1
  %77 = extractvalue %dx.types.CBufRet.f32 %74, 2
  %78 = fadd fast float %71, %75
  %79 = fadd fast float %78, %64
  %80 = fadd fast float %72, %76
  %81 = fadd fast float %80, %65
  %82 = fadd fast float %73, %77
  %83 = fadd fast float %82, %66
  %84 = fmul fast float %79, %31
  %85 = fmul fast float %81, %31
  %86 = fmul fast float %83, %31
  %87 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %88 = extractvalue %dx.types.CBufRet.f32 %87, 2
  %89 = extractvalue %dx.types.CBufRet.f32 %87, 3
  %90 = fmul fast float %88, %36
  %91 = fmul fast float %89, %37
  %92 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %93 = extractvalue %dx.types.ResRet.i32 %92, 0
  %94 = and i32 %93, 114688
  %95 = icmp ne i32 %94, 0
  %96 = select i1 %95, float %90, float 0.000000e+00
  %97 = select i1 %95, float %91, float 0.000000e+00
  %98 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %14, float %96, float %97, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %99 = extractvalue %dx.types.ResRet.f32 %98, 0
  %100 = fmul fast float %99, 2.550000e+02
  %101 = fptoui float %100 to i32
  %102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %103 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %104 = extractvalue %dx.types.CBufRet.i32 %103, 3
  %105 = and i32 %104, 3
  %106 = icmp ne i32 %105, 0
  %107 = and i32 %104, 4
  %108 = icmp ne i32 %107, 0
  %109 = and i1 %106, %108
  br i1 %109, label %110, label %121

; <label>:110                                     ; preds = %0
  %111 = extractvalue %dx.types.CBufRet.f32 %102, 3
  %112 = fmul fast float %111, %37
  %113 = extractvalue %dx.types.CBufRet.f32 %102, 2
  %114 = fmul fast float %113, %36
  %115 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %13, float %114, float %112, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %116 = extractvalue %dx.types.ResRet.f32 %115, 0
  %117 = fsub fast float 1.000000e+00, %116
  %118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %119 = extractvalue %dx.types.CBufRet.f32 %118, 0
  %120 = fcmp fast olt float %117, %119
  br label %124

; <label>:121                                     ; preds = %0
  %122 = icmp eq i32 %107, 0
  %123 = and i1 %106, %122
  br label %124

; <label>:124                                     ; preds = %121, %110
  %125 = phi i1 [ %120, %110 ], [ %123, %121 ]
  %126 = add i32 %19, 60
  %127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %126, i32 undef)  ; BufferLoad(srv,index,wot)
  %128 = extractvalue %dx.types.ResRet.i32 %127, 0
  %129 = shl i32 %128, 4
  %130 = and i32 %129, 32752
  %131 = call float @dx.op.legacyF16ToF32(i32 131, i32 %130)  ; LegacyF16ToF32(value)
  %132 = lshr i32 %128, 7
  %133 = and i32 %132, 32752
  %134 = call float @dx.op.legacyF16ToF32(i32 131, i32 %133)  ; LegacyF16ToF32(value)
  %135 = lshr i32 %128, 22
  %136 = shl nuw nsw i32 %135, 5
  %137 = call float @dx.op.legacyF16ToF32(i32 131, i32 %136)  ; LegacyF16ToF32(value)
  %138 = add i32 %19, 72
  %139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %138, i32 undef)  ; BufferLoad(srv,index,wot)
  %140 = extractvalue %dx.types.ResRet.i32 %139, 0
  %141 = and i32 %140, 255
  %142 = uitofp i32 %141 to float
  %143 = fmul fast float %142, 0x3F70101020000000
  %144 = lshr i32 %140, 8
  %145 = and i32 %144, 255
  %146 = uitofp i32 %145 to float
  %147 = fmul fast float %146, 0x3F70101020000000
  %148 = lshr i32 %140, 16
  %149 = and i32 %148, 255
  %150 = uitofp i32 %149 to float
  %151 = fmul fast float %150, 0x3F70101020000000
  %152 = add i32 %19, 36
  %153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %152, i32 undef)  ; BufferLoad(srv,index,wot)
  %154 = extractvalue %dx.types.ResRet.i32 %153, 0
  %155 = add i32 %19, 96
  %156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %155, i32 undef)  ; BufferLoad(srv,index,wot)
  %157 = extractvalue %dx.types.ResRet.i32 %156, 0
  %158 = add i32 %19, 24
  %159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %158, i32 undef)  ; BufferLoad(srv,index,wot)
  %160 = extractvalue %dx.types.ResRet.i32 %159, 0
  %161 = add i32 %19, 28
  %162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %161, i32 undef)  ; BufferLoad(srv,index,wot)
  %163 = extractvalue %dx.types.ResRet.i32 %162, 0
  %164 = or i32 %163, %160
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %626, label %166

; <label>:166                                     ; preds = %124
  %167 = lshr i32 %157, 16
  %168 = call float @dx.op.legacyF16ToF32(i32 131, i32 %167)  ; LegacyF16ToF32(value)
  %169 = fmul fast float %168, 0x3F50624DE0000000
  %170 = and i32 %157, 65535
  %171 = call float @dx.op.legacyF16ToF32(i32 131, i32 %170)  ; LegacyF16ToF32(value)
  %172 = fmul fast float %171, 0x3F50624DE0000000
  %173 = lshr i32 %154, 16
  %174 = call float @dx.op.legacyF16ToF32(i32 131, i32 %173)  ; LegacyF16ToF32(value)
  %175 = and i32 %154, 65535
  %176 = call float @dx.op.legacyF16ToF32(i32 131, i32 %175)  ; LegacyF16ToF32(value)
  %177 = add i32 %19, 92
  %178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %177, i32 undef)  ; BufferLoad(srv,index,wot)
  %179 = extractvalue %dx.types.ResRet.i32 %178, 0
  %180 = lshr i32 %179, 16
  %181 = call float @dx.op.legacyF16ToF32(i32 131, i32 %180)  ; LegacyF16ToF32(value)
  %182 = fmul fast float %181, 0x3F50624DE0000000
  %183 = add i32 %19, 40
  %184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %183, i32 undef)  ; BufferLoad(srv,index,wot)
  %185 = extractvalue %dx.types.ResRet.i32 %184, 0
  %186 = lshr i32 %185, 16
  %187 = and i32 %186, 255
  %188 = lshr i32 %185, 24
  %189 = add i32 %19, 100
  %190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %189, i32 undef)  ; BufferLoad(srv,index,wot)
  %191 = extractvalue %dx.types.ResRet.i32 %190, 0
  %192 = and i32 %191, 65535
  %193 = call float @dx.op.legacyF16ToF32(i32 131, i32 %192)  ; LegacyF16ToF32(value)
  %194 = lshr i32 %191, 16
  %195 = call float @dx.op.legacyF16ToF32(i32 131, i32 %194)  ; LegacyF16ToF32(value)
  %196 = add i32 %19, 32
  %197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %196, i32 undef)  ; BufferLoad(srv,index,wot)
  %198 = extractvalue %dx.types.ResRet.i32 %197, 0
  %199 = lshr i32 %198, 22
  %200 = shl nuw nsw i32 %199, 5
  %201 = call float @dx.op.legacyF16ToF32(i32 131, i32 %200)  ; LegacyF16ToF32(value)
  %202 = shl i32 %198, 4
  %203 = and i32 %202, 32752
  %204 = call float @dx.op.legacyF16ToF32(i32 131, i32 %203)  ; LegacyF16ToF32(value)
  %205 = lshr i32 %198, 7
  %206 = and i32 %205, 32752
  %207 = call float @dx.op.legacyF16ToF32(i32 131, i32 %206)  ; LegacyF16ToF32(value)
  %208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %209 = extractvalue %dx.types.CBufRet.f32 %208, 3
  %210 = fmul fast float %209, 1.000000e+03
  %211 = fmul fast float %172, %210
  %212 = call float @dx.op.unary.f32(i32 22, float %211)  ; Frc(value)
  %213 = fadd fast float %212, %176
  %214 = fmul fast float %169, %210
  %215 = call float @dx.op.unary.f32(i32 22, float %214)  ; Frc(value)
  %216 = fadd fast float %215, %174
  %217 = fmul fast float %182, %210
  %218 = call float @dx.op.unary.f32(i32 22, float %217)  ; Frc(value)
  %219 = fmul fast float %218, 0x401921FB60000000
  %220 = fadd fast float %219, %201
  %221 = call float @dx.op.unary.f32(i32 13, float %220)  ; Sin(value)
  %222 = call float @dx.op.unary.f32(i32 12, float %220)  ; Cos(value)
  %223 = fsub fast float -0.000000e+00, %221
  %224 = fadd fast float %27, -5.000000e-01
  %225 = fadd fast float %28, -5.000000e-01
  %226 = fmul fast float %193, %224
  %227 = fmul fast float %195, %225
  %228 = fadd fast float %226, 5.000000e-01
  %229 = fadd fast float %227, 5.000000e-01
  %230 = fmul fast float %204, %228
  %231 = fmul fast float %207, %229
  %232 = fmul fast float %222, %230
  %233 = call float @dx.op.tertiary.f32(i32 46, float %223, float %231, float %232)  ; FMad(a,b,c)
  %234 = fmul fast float %221, %230
  %235 = call float @dx.op.tertiary.f32(i32 46, float %222, float %231, float %234)  ; FMad(a,b,c)
  %236 = fadd fast float %213, %233
  %237 = fadd fast float %216, %235
  %238 = icmp ugt i32 %187, 1
  %239 = icmp ugt i32 %185, 33554431
  %240 = or i1 %239, %238
  br i1 %240, label %241, label %266

; <label>:241                                     ; preds = %166
  %242 = add i32 %19, 84
  %243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %242, i32 undef)  ; BufferLoad(srv,index,wot)
  %244 = extractvalue %dx.types.ResRet.i32 %243, 0
  %245 = lshr i32 %244, 16
  %246 = call float @dx.op.legacyF16ToF32(i32 131, i32 %245)  ; LegacyF16ToF32(value)
  %247 = fmul fast float %209, %246
  %248 = call float @dx.op.unary.f32(i32 22, float %247)  ; Frc(value)
  %249 = mul nuw nsw i32 %187, %188
  %250 = uitofp i32 %249 to float
  %251 = fmul fast float %248, %250
  %252 = call float @dx.op.unary.f32(i32 27, float %251)  ; Round_ni(value)
  %253 = fptoui float %252 to i32
  %254 = urem i32 %253, %187
  %255 = udiv i32 %253, %188
  %256 = call float @dx.op.unary.f32(i32 22, float %236)  ; Frc(value)
  %257 = call float @dx.op.unary.f32(i32 22, float %237)  ; Frc(value)
  %258 = uitofp i32 %254 to float
  %259 = uitofp i32 %255 to float
  %260 = fadd fast float %256, %258
  %261 = fadd fast float %257, %259
  %262 = uitofp i32 %187 to float
  %263 = uitofp i32 %188 to float
  %264 = fdiv fast float %260, %262
  %265 = fdiv fast float %261, %263
  br label %266

; <label>:266                                     ; preds = %241, %166
  %267 = phi float [ %264, %241 ], [ %236, %166 ]
  %268 = phi float [ %265, %241 ], [ %237, %166 ]
  %269 = and i32 %160, 16
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %467, label %271

; <label>:271                                     ; preds = %266
  %272 = add i32 %19, 120
  %273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %272, i32 undef)  ; BufferLoad(srv,index,wot)
  %274 = extractvalue %dx.types.ResRet.i32 %273, 0
  %275 = add i32 %274, 0
  %276 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %275, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %277 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %276, %dx.types.Handle %32, float %267, float %268, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %278 = extractvalue %dx.types.ResRet.f32 %277, 0
  %279 = extractvalue %dx.types.ResRet.f32 %277, 1
  %280 = extractvalue %dx.types.ResRet.f32 %277, 2
  %281 = extractvalue %dx.types.ResRet.f32 %277, 3
  %282 = and i32 %185, 255
  %283 = uitofp i32 %282 to float
  %284 = lshr i32 %185, 8
  %285 = and i32 %284, 255
  %286 = uitofp i32 %285 to float
  %287 = fmul fast float %281, %283
  %288 = fadd fast float %287, %286
  %289 = fmul fast float %288, 0x3F70101000000000
  %290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %158, i32 undef)  ; BufferLoad(srv,index,wot)
  %291 = extractvalue %dx.types.ResRet.i32 %290, 0
  %292 = and i32 %291, 512
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %302, label %294

; <label>:294                                     ; preds = %271
  %295 = add i32 %19, 140
  %296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %295, i32 undef)  ; BufferLoad(srv,index,wot)
  %297 = extractvalue %dx.types.ResRet.i32 %296, 0
  %298 = add i32 %297, 0
  %299 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %298, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %300 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %299, %dx.types.Handle %33, float %267, float %268, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %301 = extractvalue %dx.types.ResRet.f32 %300, 0
  br label %302

; <label>:302                                     ; preds = %294, %271
  %303 = phi float [ %301, %294 ], [ 1.000000e+00, %271 ]
  %304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %158, i32 undef)  ; BufferLoad(srv,index,wot)
  %305 = extractvalue %dx.types.ResRet.i32 %304, 0
  %306 = and i32 %305, 33554432
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %414, label %308

; <label>:308                                     ; preds = %302
  %309 = add i32 %19, 80
  %310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %309, i32 undef)  ; BufferLoad(srv,index,wot)
  %311 = extractvalue %dx.types.ResRet.i32 %310, 0
  %312 = and i32 %311, 65535
  %313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %312)  ; LegacyF16ToF32(value)
  %314 = lshr i32 %311, 16
  %315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %314)  ; LegacyF16ToF32(value)
  %316 = add i32 %19, 84
  %317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
  %318 = extractvalue %dx.types.ResRet.i32 %317, 0
  %319 = and i32 %318, 65535
  %320 = call float @dx.op.legacyF16ToF32(i32 131, i32 %319)  ; LegacyF16ToF32(value)
  %321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %138, i32 undef)  ; BufferLoad(srv,index,wot)
  %322 = extractvalue %dx.types.ResRet.i32 %321, 0
  %323 = lshr i32 %322, 24
  %324 = uitofp i32 %323 to float
  %325 = fmul fast float %324, 0x3F70101020000000
  %326 = and i32 %322, 255
  %327 = uitofp i32 %326 to float
  %328 = fmul fast float %327, 0x3F70101020000000
  %329 = lshr i32 %322, 8
  %330 = and i32 %329, 255
  %331 = uitofp i32 %330 to float
  %332 = fmul fast float %331, 0x3F70101020000000
  %333 = lshr i32 %322, 16
  %334 = and i32 %333, 255
  %335 = uitofp i32 %334 to float
  %336 = fmul fast float %335, 0x3F70101020000000
  %337 = add i32 %19, 76
  %338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %337, i32 undef)  ; BufferLoad(srv,index,wot)
  %339 = extractvalue %dx.types.ResRet.i32 %338, 0
  %340 = lshr i32 %339, 24
  %341 = uitofp i32 %340 to float
  %342 = fmul fast float %341, 0x3F70101020000000
  %343 = and i32 %339, 255
  %344 = uitofp i32 %343 to float
  %345 = fmul fast float %344, 0x3F70101020000000
  %346 = lshr i32 %339, 8
  %347 = and i32 %346, 255
  %348 = uitofp i32 %347 to float
  %349 = fmul fast float %348, 0x3F70101020000000
  %350 = lshr i32 %339, 16
  %351 = and i32 %350, 255
  %352 = uitofp i32 %351 to float
  %353 = fmul fast float %352, 0x3F70101020000000
  %354 = bitcast float %278 to i32
  %355 = ashr i32 %354, 1
  %356 = sub nsw i32 1597463174, %355
  %357 = bitcast i32 %356 to float
  %358 = fmul fast float %278, 5.000000e-01
  %359 = fmul fast float %357, %357
  %360 = fmul fast float %359, %358
  %361 = fsub fast float 1.500000e+00, %360
  %362 = fmul fast float %357, %278
  %363 = fmul fast float %362, %361
  %364 = bitcast float %279 to i32
  %365 = ashr i32 %364, 1
  %366 = sub nsw i32 1597463174, %365
  %367 = bitcast i32 %366 to float
  %368 = fmul fast float %279, 5.000000e-01
  %369 = fmul fast float %367, %367
  %370 = fmul fast float %369, %368
  %371 = fsub fast float 1.500000e+00, %370
  %372 = fmul fast float %367, %279
  %373 = fmul fast float %372, %371
  %374 = bitcast float %280 to i32
  %375 = ashr i32 %374, 1
  %376 = sub nsw i32 1597463174, %375
  %377 = bitcast i32 %376 to float
  %378 = fmul fast float %280, 5.000000e-01
  %379 = fmul fast float %377, %377
  %380 = fmul fast float %379, %378
  %381 = fsub fast float 1.500000e+00, %380
  %382 = fmul fast float %377, %280
  %383 = fmul fast float %382, %381
  %384 = fsub fast float %363, %345
  %385 = fsub fast float %373, %349
  %386 = fsub fast float %383, %353
  %387 = fmul fast float %384, %313
  %388 = fmul fast float %385, %315
  %389 = fmul fast float %386, %320
  %390 = fadd fast float %387, %328
  %391 = fadd fast float %388, %332
  %392 = fadd fast float %389, %336
  %393 = call float @dx.op.unary.f32(i32 7, float %390)  ; Saturate(value)
  %394 = call float @dx.op.unary.f32(i32 7, float %391)  ; Saturate(value)
  %395 = call float @dx.op.unary.f32(i32 7, float %392)  ; Saturate(value)
  %396 = fmul fast float %393, %393
  %397 = fmul fast float %394, %394
  %398 = fmul fast float %395, %395
  %399 = fsub fast float %396, %278
  %400 = fsub fast float %397, %279
  %401 = fsub fast float %398, %280
  %402 = fmul fast float %399, %303
  %403 = fmul fast float %400, %303
  %404 = fmul fast float %401, %303
  %405 = fadd fast float %402, %278
  %406 = fadd fast float %403, %279
  %407 = fadd fast float %404, %280
  %408 = fadd fast float %325, %289
  %409 = fsub fast float %408, %342
  %410 = call float @dx.op.unary.f32(i32 7, float %409)  ; Saturate(value)
  %411 = fsub fast float %410, %289
  %412 = fmul fast float %411, %303
  %413 = fadd fast float %412, %289
  br label %467

; <label>:414                                     ; preds = %302
  %415 = and i32 %305, 134217728
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %451, label %417

; <label>:417                                     ; preds = %414
  %418 = call float @dx.op.unary.f32(i32 24, float %143)  ; Sqrt(value)
  %419 = call float @dx.op.unary.f32(i32 24, float %147)  ; Sqrt(value)
  %420 = call float @dx.op.unary.f32(i32 24, float %151)  ; Sqrt(value)
  %421 = fadd fast float %418, -5.000000e-01
  %422 = fadd fast float %419, -5.000000e-01
  %423 = fadd fast float %420, -5.000000e-01
  %424 = fmul fast float %421, %303
  %425 = fmul fast float %422, %303
  %426 = fmul fast float %423, %303
  %427 = fadd fast float %424, 5.000000e-01
  %428 = fadd fast float %425, 5.000000e-01
  %429 = fadd fast float %426, 5.000000e-01
  %430 = call float @dx.op.unary.f32(i32 24, float %278)  ; Sqrt(value)
  %431 = call float @dx.op.unary.f32(i32 24, float %279)  ; Sqrt(value)
  %432 = call float @dx.op.unary.f32(i32 24, float %280)  ; Sqrt(value)
  %433 = fmul fast float %427, 2.000000e+00
  %434 = fsub fast float 1.000000e+00, %433
  %435 = fmul fast float %434, %430
  %436 = fadd fast float %435, %433
  %437 = fmul fast float %436, %430
  %438 = fmul fast float %428, 2.000000e+00
  %439 = fsub fast float 1.000000e+00, %438
  %440 = fmul fast float %439, %431
  %441 = fadd fast float %440, %438
  %442 = fmul fast float %441, %431
  %443 = fmul fast float %429, 2.000000e+00
  %444 = fsub fast float 1.000000e+00, %443
  %445 = fmul fast float %444, %432
  %446 = fadd fast float %445, %443
  %447 = fmul fast float %446, %432
  %448 = fmul fast float %437, %437
  %449 = fmul fast float %442, %442
  %450 = fmul fast float %447, %447
  br label %467

; <label>:451                                     ; preds = %414
  %452 = fmul fast float %143, %143
  %453 = fmul fast float %147, %147
  %454 = fmul fast float %151, %151
  %455 = fadd fast float %452, -1.000000e+00
  %456 = fadd fast float %453, -1.000000e+00
  %457 = fadd fast float %454, -1.000000e+00
  %458 = fmul fast float %303, %455
  %459 = fmul fast float %303, %456
  %460 = fmul fast float %303, %457
  %461 = fadd fast float %458, 1.000000e+00
  %462 = fadd fast float %459, 1.000000e+00
  %463 = fadd fast float %460, 1.000000e+00
  %464 = fmul fast float %461, %278
  %465 = fmul fast float %462, %279
  %466 = fmul fast float %463, %280
  br label %467

; <label>:467                                     ; preds = %451, %417, %308, %266
  %468 = phi float [ %413, %308 ], [ %289, %417 ], [ %289, %451 ], [ 0x3FA23C0BE0000000, %266 ]
  %469 = phi float [ %405, %308 ], [ %448, %417 ], [ %464, %451 ], [ 1.000000e+00, %266 ]
  %470 = phi float [ %406, %308 ], [ %449, %417 ], [ %465, %451 ], [ 1.000000e+00, %266 ]
  %471 = phi float [ %407, %308 ], [ %450, %417 ], [ %466, %451 ], [ 1.000000e+00, %266 ]
  %472 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %473 = extractvalue %dx.types.CBufRet.i32 %472, 1
  %474 = and i32 %473, 1
  %475 = icmp ne i32 %474, 0
  %476 = add i32 %19, 116
  %477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %476, i32 undef)  ; BufferLoad(srv,index,wot)
  %478 = extractvalue %dx.types.ResRet.i32 %477, 0
  %479 = and i32 %478, 32
  %480 = icmp ne i32 %479, 0
  %481 = and i1 %475, %480
  %482 = select i1 %481, float 1.000000e+00, float %469
  %483 = select i1 %481, float 0x3FD3333340000000, float %470
  %484 = select i1 %481, float 0x3FD3333340000000, float %471
  %485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %158, i32 undef)  ; BufferLoad(srv,index,wot)
  %486 = extractvalue %dx.types.ResRet.i32 %485, 0
  %487 = and i32 %486, 32
  %488 = icmp eq i32 %487, 0
  br i1 %488, label %561, label %489

; <label>:489                                     ; preds = %467
  %490 = add i32 %19, 44
  %491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %490, i32 undef)  ; BufferLoad(srv,index,wot)
  %492 = extractvalue %dx.types.ResRet.i32 %491, 0
  %493 = add i32 %19, 124
  %494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %495 = extractvalue %dx.types.ResRet.i32 %494, 0
  %496 = add i32 %495, 0
  %497 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %496, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %498 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %497, %dx.types.Handle %32, float %267, float %268, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %499 = extractvalue %dx.types.ResRet.f32 %498, 0
  %500 = extractvalue %dx.types.ResRet.f32 %498, 1
  %501 = extractvalue %dx.types.ResRet.f32 %498, 2
  %502 = extractvalue %dx.types.ResRet.f32 %498, 3
  %503 = and i32 %492, 255
  %504 = uitofp i32 %503 to float
  %505 = lshr i32 %492, 8
  %506 = and i32 %505, 255
  %507 = uitofp i32 %506 to float
  %508 = lshr i32 %492, 16
  %509 = and i32 %508, 255
  %510 = uitofp i32 %509 to float
  %511 = fmul fast float %510, 0x3F70101000000000
  %512 = fmul fast float %499, %504
  %513 = fadd fast float %512, %507
  %514 = fmul fast float %513, 0x3F70101000000000
  %515 = fadd fast float %500, -5.000000e-01
  %516 = fadd fast float %502, -5.000000e-01
  %517 = fmul fast float %515, %511
  %518 = fmul fast float %516, %511
  %519 = fadd fast float %517, 5.000000e-01
  %520 = fadd fast float %518, 5.000000e-01
  %521 = fmul fast float %519, 2.000000e+00
  %522 = fadd fast float %521, -1.000000e+00
  %523 = fmul fast float %520, 2.000000e+00
  %524 = fadd fast float %523, -1.000000e+00
  %525 = fadd fast float %522, %524
  %526 = fmul fast float %525, 5.000000e-01
  %527 = fsub fast float %522, %524
  %528 = fmul fast float %527, 5.000000e-01
  %529 = call float @dx.op.unary.f32(i32 6, float %526)  ; FAbs(value)
  %530 = fsub fast float 1.000000e+00, %529
  %531 = call float @dx.op.unary.f32(i32 6, float %528)  ; FAbs(value)
  %532 = fsub fast float %530, %531
  %533 = call float @dx.op.dot3.f32(i32 55, float %526, float %528, float %532, float %526, float %528, float %532)  ; Dot3(ax,ay,az,bx,by,bz)
  %534 = call float @dx.op.unary.f32(i32 25, float %533)  ; Rsqrt(value)
  %535 = fmul fast float %526, %534
  %536 = fmul fast float %528, %534
  %537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %158, i32 undef)  ; BufferLoad(srv,index,wot)
  %538 = extractvalue %dx.types.ResRet.i32 %537, 0
  %539 = and i32 %538, 67108864
  %540 = icmp eq i32 %539, 0
  br i1 %540, label %557, label %541

; <label>:541                                     ; preds = %489
  %542 = add i32 %19, 88
  %543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %542, i32 undef)  ; BufferLoad(srv,index,wot)
  %544 = extractvalue %dx.types.ResRet.i32 %543, 0
  %545 = and i32 %544, 65535
  %546 = call float @dx.op.legacyF16ToF32(i32 131, i32 %545)  ; LegacyF16ToF32(value)
  %547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %177, i32 undef)  ; BufferLoad(srv,index,wot)
  %548 = extractvalue %dx.types.ResRet.i32 %547, 0
  %549 = and i32 %548, 65535
  %550 = call float @dx.op.legacyF16ToF32(i32 131, i32 %549)  ; LegacyF16ToF32(value)
  %551 = lshr i32 %544, 16
  %552 = call float @dx.op.legacyF16ToF32(i32 131, i32 %551)  ; LegacyF16ToF32(value)
  %553 = fsub fast float %514, %552
  %554 = fmul fast float %553, %546
  %555 = fadd fast float %554, %550
  %556 = call float @dx.op.unary.f32(i32 7, float %555)  ; Saturate(value)
  br label %557

; <label>:557                                     ; preds = %541, %489
  %558 = phi float [ %556, %541 ], [ %514, %489 ]
  %559 = call float @dx.op.dot2.f32(i32 54, float %535, float %536, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %560 = call float @dx.op.dot2.f32(i32 54, float %535, float %536, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %561

; <label>:561                                     ; preds = %557, %467
  %562 = phi float [ %558, %557 ], [ 0x3FD6666660000000, %467 ]
  %563 = phi float [ %559, %557 ], [ 0.000000e+00, %467 ]
  %564 = phi float [ %560, %557 ], [ 0.000000e+00, %467 ]
  %565 = phi float [ %501, %557 ], [ 1.000000e+00, %467 ]
  %566 = add i32 %19, 64
  %567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %566, i32 undef)  ; BufferLoad(srv,index,wot)
  %568 = extractvalue %dx.types.ResRet.i32 %567, 0
  %569 = lshr i32 %568, 22
  %570 = shl nuw nsw i32 %569, 5
  %571 = call float @dx.op.legacyF16ToF32(i32 131, i32 %570)  ; LegacyF16ToF32(value)
  %572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %158, i32 undef)  ; BufferLoad(srv,index,wot)
  %573 = extractvalue %dx.types.ResRet.i32 %572, 0
  %574 = and i32 %573, 64
  %575 = icmp eq i32 %574, 0
  br i1 %575, label %609, label %576

; <label>:576                                     ; preds = %561
  %577 = add i32 %19, 128
  %578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %577, i32 undef)  ; BufferLoad(srv,index,wot)
  %579 = extractvalue %dx.types.ResRet.i32 %578, 0
  %580 = add i32 %579, 0
  %581 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %580, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %158, i32 undef)  ; BufferLoad(srv,index,wot)
  %583 = extractvalue %dx.types.ResRet.i32 %582, 0
  %584 = and i32 %583, 131072
  %585 = icmp eq i32 %584, 0
  %586 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %581, %dx.types.Handle %32, float %267, float %268, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %587 = extractvalue %dx.types.ResRet.f32 %586, 0
  %588 = extractvalue %dx.types.ResRet.f32 %586, 1
  %589 = extractvalue %dx.types.ResRet.f32 %586, 2
  %590 = fmul fast float %587, %131
  %591 = fmul fast float %588, %134
  %592 = fmul fast float %589, %137
  br i1 %585, label %599, label %593

; <label>:593                                     ; preds = %576
  %594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %595 = extractvalue %dx.types.CBufRet.f32 %594, 0
  %596 = fmul fast float %595, %590
  %597 = fmul fast float %595, %591
  %598 = fmul fast float %595, %592
  br label %599

; <label>:599                                     ; preds = %593, %576
  %600 = phi float [ %596, %593 ], [ %590, %576 ]
  %601 = phi float [ %597, %593 ], [ %591, %576 ]
  %602 = phi float [ %598, %593 ], [ %592, %576 ]
  %603 = fmul fast float %600, %571
  %604 = select i1 %125, float %603, float %600
  %605 = call float @dx.op.dot3.f32(i32 55, float %604, float %601, float %602, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %606 = select i1 %125, float 0.000000e+00, float %600
  %607 = select i1 %125, float %605, float %601
  %608 = select i1 %125, float 0.000000e+00, float %602
  br label %609

; <label>:609                                     ; preds = %599, %561
  %610 = phi float [ %606, %599 ], [ 0.000000e+00, %561 ]
  %611 = phi float [ %607, %599 ], [ 0.000000e+00, %561 ]
  %612 = phi float [ %608, %599 ], [ 0.000000e+00, %561 ]
  %613 = add i32 %19, 48
  %614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %613, i32 undef)  ; BufferLoad(srv,index,wot)
  %615 = extractvalue %dx.types.ResRet.i32 %614, 0
  %616 = and i32 %615, 255
  %617 = uitofp i32 %616 to float
  %618 = lshr i32 %615, 8
  %619 = and i32 %618, 255
  %620 = uitofp i32 %619 to float
  %621 = call float @dx.op.dot3.f32(i32 55, float %482, float %483, float %484, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %622 = fmul fast float %620, %621
  %623 = fadd fast float %622, %617
  %624 = fmul fast float %623, 0x3F70101020000000
  %625 = call float @dx.op.unary.f32(i32 7, float %624)  ; Saturate(value)
  br label %626

; <label>:626                                     ; preds = %609, %124
  %627 = phi float [ 0.000000e+00, %124 ], [ %563, %609 ]
  %628 = phi float [ 0.000000e+00, %124 ], [ %564, %609 ]
  %629 = phi float [ 0.000000e+00, %124 ], [ %482, %609 ]
  %630 = phi float [ 0.000000e+00, %124 ], [ %483, %609 ]
  %631 = phi float [ 0.000000e+00, %124 ], [ %484, %609 ]
  %632 = phi float [ 0.000000e+00, %124 ], [ %610, %609 ]
  %633 = phi float [ 0.000000e+00, %124 ], [ %611, %609 ]
  %634 = phi float [ 0.000000e+00, %124 ], [ %612, %609 ]
  %635 = phi float [ 0.000000e+00, %124 ], [ %468, %609 ]
  %636 = phi float [ 0.000000e+00, %124 ], [ 1.000000e+00, %609 ]
  %637 = phi float [ 0.000000e+00, %124 ], [ %562, %609 ]
  %638 = phi float [ 0.000000e+00, %124 ], [ %565, %609 ]
  %639 = phi float [ 0.000000e+00, %124 ], [ %625, %609 ]
  %640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %641 = extractvalue %dx.types.CBufRet.f32 %640, 0
  %642 = call float @dx.op.dot2.f32(i32 54, float %627, float %628, float %627, float %628)  ; Dot2(ax,ay,bx,by)
  %643 = fmul fast float %642, 0x3FE3333340000000
  %644 = fsub fast float 1.000000e+00, %643
  %645 = call float @dx.op.dot3.f32(i32 55, float %627, float %628, float %644, float %627, float %628, float %644)  ; Dot3(ax,ay,az,bx,by,bz)
  %646 = call float @dx.op.unary.f32(i32 25, float %645)  ; Rsqrt(value)
  %647 = fmul fast float %646, %627
  %648 = fmul fast float %646, %628
  %649 = fmul fast float %644, %646
  %650 = fmul fast float %649, %39
  %651 = fmul fast float %649, %40
  %652 = fmul fast float %649, %41
  %653 = fmul fast float %647, %20
  %654 = fmul fast float %647, %21
  %655 = fmul fast float %647, %22
  %656 = fmul fast float %44, %23
  %657 = fmul fast float %656, %648
  %658 = fmul fast float %47, %23
  %659 = fmul fast float %658, %648
  %660 = fmul fast float %50, %23
  %661 = fmul fast float %660, %648
  %662 = fadd fast float %657, %653
  %663 = fmul fast float %662, %38
  %664 = fadd fast float %663, %650
  %665 = fadd fast float %659, %654
  %666 = fmul fast float %665, %38
  %667 = fadd fast float %666, %651
  %668 = fadd fast float %661, %655
  %669 = fmul fast float %668, %38
  %670 = fadd fast float %669, %652
  %671 = call float @dx.op.dot3.f32(i32 55, float %664, float %667, float %670, float %664, float %667, float %670)  ; Dot3(ax,ay,az,bx,by,bz)
  %672 = call float @dx.op.unary.f32(i32 25, float %671)  ; Rsqrt(value)
  %673 = fmul fast float %664, %672
  %674 = fmul fast float %667, %672
  %675 = fmul fast float %670, %672
  %676 = call float @dx.op.unary.f32(i32 83, float %84)  ; DerivCoarseX(value)
  %677 = call float @dx.op.unary.f32(i32 83, float %85)  ; DerivCoarseX(value)
  %678 = call float @dx.op.unary.f32(i32 83, float %86)  ; DerivCoarseX(value)
  %679 = call float @dx.op.unary.f32(i32 84, float %84)  ; DerivCoarseY(value)
  %680 = call float @dx.op.unary.f32(i32 84, float %85)  ; DerivCoarseY(value)
  %681 = call float @dx.op.unary.f32(i32 84, float %86)  ; DerivCoarseY(value)
  %682 = fadd fast float %676, %84
  %683 = fadd fast float %677, %85
  %684 = fadd fast float %678, %86
  %685 = fadd fast float %679, %84
  %686 = fadd fast float %680, %85
  %687 = fadd fast float %681, %86
  %688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %689 = extractvalue %dx.types.CBufRet.f32 %688, 0
  %690 = extractvalue %dx.types.CBufRet.f32 %688, 1
  %691 = extractvalue %dx.types.CBufRet.f32 %688, 2
  %692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %693 = extractvalue %dx.types.CBufRet.f32 %692, 2
  %694 = extractvalue %dx.types.CBufRet.f32 %692, 3
  %695 = fmul fast float %689, %36
  %696 = fmul fast float %695, %693
  %697 = fmul fast float %690, %37
  %698 = fmul fast float %697, %694
  %699 = fptoui float %696 to i32
  %700 = fptoui float %698 to i32
  %701 = fadd fast float %689, -1.000000e+00
  %702 = fadd fast float %690, -1.000000e+00
  %703 = fptoui float %701 to i32
  %704 = fptoui float %702 to i32
  %705 = call i32 @dx.op.binary.i32(i32 40, i32 %699, i32 %703)  ; UMin(a,b)
  %706 = call i32 @dx.op.binary.i32(i32 40, i32 %700, i32 %704)  ; UMin(a,b)
  %707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %708 = extractvalue %dx.types.CBufRet.f32 %707, 2
  %709 = extractvalue %dx.types.CBufRet.f32 %707, 3
  %710 = fmul fast float %708, %31
  %711 = fsub fast float %710, %709
  %712 = fadd fast float %691, -1.000000e+00
  %713 = call float @dx.op.binary.f32(i32 36, float %711, float %712)  ; FMin(a,b)
  %714 = fptoui float %713 to i32
  %715 = fptoui float %689 to i32
  %716 = fptoui float %690 to i32
  %717 = mul i32 %714, %716
  %718 = add i32 %717, %706
  %719 = mul i32 %718, %715
  %720 = add i32 %719, %705
  %721 = shl i32 %720, 2
  %722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %721, i32 undef)  ; BufferLoad(srv,index,wot)
  %723 = extractvalue %dx.types.ResRet.i32 %722, 0
  %724 = and i32 %723, 1023
  %725 = lshr i32 %723, 10
  %726 = icmp eq i32 %724, 0
  br i1 %726, label %1152, label %727

; <label>:727                                     ; preds = %626
  %728 = and i32 %723, 1023
  br label %729

; <label>:729                                     ; preds = %855, %727
  %730 = phi float [ %856, %855 ], [ 0.000000e+00, %727 ]
  %731 = phi float [ %857, %855 ], [ %641, %727 ]
  %732 = phi float [ %858, %855 ], [ %639, %727 ]
  %733 = phi float [ %859, %855 ], [ 0.000000e+00, %727 ]
  %734 = phi float [ %860, %855 ], [ 0.000000e+00, %727 ]
  %735 = phi float [ %861, %855 ], [ %632, %727 ]
  %736 = phi float [ %862, %855 ], [ %633, %727 ]
  %737 = phi float [ %863, %855 ], [ %634, %727 ]
  %738 = phi float [ %864, %855 ], [ %673, %727 ]
  %739 = phi float [ %865, %855 ], [ %674, %727 ]
  %740 = phi float [ %866, %855 ], [ %675, %727 ]
  %741 = phi float [ %867, %855 ], [ %638, %727 ]
  %742 = phi float [ %868, %855 ], [ %637, %727 ]
  %743 = phi float [ %869, %855 ], [ 0.000000e+00, %727 ]
  %744 = phi float [ %870, %855 ], [ %635, %727 ]
  %745 = phi float [ %871, %855 ], [ %629, %727 ]
  %746 = phi float [ %872, %855 ], [ %630, %727 ]
  %747 = phi float [ %873, %855 ], [ %631, %727 ]
  %748 = phi i32 [ %805, %855 ], [ 0, %727 ]
  %749 = add nuw nsw i32 %748, %725
  %750 = shl i32 %749, 2
  %751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %750, i32 undef)  ; BufferLoad(srv,index,wot)
  %752 = extractvalue %dx.types.ResRet.i32 %751, 0
  %753 = shl i32 %752, 8
  %754 = or i32 %753, 48
  %755 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %754, i32 undef)  ; BufferLoad(srv,index,wot)
  %756 = extractvalue %dx.types.ResRet.f32 %755, 0
  %757 = extractvalue %dx.types.ResRet.f32 %755, 1
  %758 = extractvalue %dx.types.ResRet.f32 %755, 2
  %759 = extractvalue %dx.types.ResRet.f32 %755, 3
  %760 = or i32 %753, 64
  %761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %760, i32 undef)  ; BufferLoad(srv,index,wot)
  %762 = extractvalue %dx.types.ResRet.i32 %761, 0
  %763 = extractvalue %dx.types.ResRet.i32 %761, 1
  %764 = or i32 %753, 80
  %765 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %764, i32 undef)  ; BufferLoad(srv,index,wot)
  %766 = extractvalue %dx.types.ResRet.f32 %765, 2
  %767 = extractvalue %dx.types.ResRet.f32 %765, 3
  %768 = or i32 %753, 96
  %769 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %768, i32 undef)  ; BufferLoad(srv,index,wot)
  %770 = extractvalue %dx.types.ResRet.f32 %769, 0
  %771 = extractvalue %dx.types.ResRet.f32 %769, 1
  %772 = extractvalue %dx.types.ResRet.f32 %769, 2
  %773 = extractvalue %dx.types.ResRet.f32 %769, 3
  %774 = or i32 %753, 112
  %775 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %774, i32 undef)  ; BufferLoad(srv,index,wot)
  %776 = extractvalue %dx.types.ResRet.f32 %775, 2
  %777 = or i32 %753, 128
  %778 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %777, i32 undef)  ; BufferLoad(srv,index,wot)
  %779 = extractvalue %dx.types.ResRet.f32 %778, 0
  %780 = extractvalue %dx.types.ResRet.f32 %778, 1
  %781 = extractvalue %dx.types.ResRet.f32 %778, 2
  %782 = extractvalue %dx.types.ResRet.f32 %778, 3
  %783 = or i32 %753, 144
  %784 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %783, i32 undef)  ; BufferLoad(srv,index,wot)
  %785 = extractvalue %dx.types.ResRet.f32 %784, 0
  %786 = extractvalue %dx.types.ResRet.f32 %784, 1
  %787 = extractvalue %dx.types.ResRet.f32 %784, 2
  %788 = extractvalue %dx.types.ResRet.f32 %784, 3
  %789 = or i32 %753, 160
  %790 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %789, i32 undef)  ; BufferLoad(srv,index,wot)
  %791 = extractvalue %dx.types.ResRet.f32 %790, 0
  %792 = extractvalue %dx.types.ResRet.f32 %790, 1
  %793 = extractvalue %dx.types.ResRet.f32 %790, 2
  %794 = extractvalue %dx.types.ResRet.f32 %790, 3
  %795 = or i32 %753, 192
  %796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %795, i32 undef)  ; BufferLoad(srv,index,wot)
  %797 = extractvalue %dx.types.ResRet.i32 %796, 0
  %798 = or i32 %753, 208
  %799 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %798, i32 undef)  ; BufferLoad(srv,index,wot)
  %800 = extractvalue %dx.types.ResRet.f32 %799, 0
  %801 = or i32 %753, 248
  %802 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %801, i32 undef)  ; BufferLoad(srv,index,wot)
  %803 = extractvalue %dx.types.ResRet.f32 %802, 0
  %804 = extractvalue %dx.types.ResRet.f32 %802, 1
  %805 = add nuw nsw i32 %748, 1
  %806 = bitcast float %759 to i32
  %807 = and i32 %806, 2560
  %808 = icmp eq i32 %807, 2048
  %809 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %753, i32 undef)  ; BufferLoad(srv,index,wot)
  %810 = extractvalue %dx.types.ResRet.f32 %809, 0
  %811 = extractvalue %dx.types.ResRet.f32 %809, 1
  %812 = extractvalue %dx.types.ResRet.f32 %809, 2
  %813 = extractvalue %dx.types.ResRet.f32 %809, 3
  %814 = call float @dx.op.dot4.f32(i32 56, float %810, float %811, float %812, float %813, float %84, float %85, float %86, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %815 = or i32 %753, 16
  %816 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %815, i32 undef)  ; BufferLoad(srv,index,wot)
  %817 = extractvalue %dx.types.ResRet.f32 %816, 0
  %818 = extractvalue %dx.types.ResRet.f32 %816, 1
  %819 = extractvalue %dx.types.ResRet.f32 %816, 2
  %820 = extractvalue %dx.types.ResRet.f32 %816, 3
  %821 = call float @dx.op.dot4.f32(i32 56, float %817, float %818, float %819, float %820, float %84, float %85, float %86, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %822 = or i32 %753, 32
  %823 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %822, i32 undef)  ; BufferLoad(srv,index,wot)
  %824 = extractvalue %dx.types.ResRet.f32 %823, 0
  %825 = extractvalue %dx.types.ResRet.f32 %823, 1
  %826 = extractvalue %dx.types.ResRet.f32 %823, 2
  %827 = extractvalue %dx.types.ResRet.f32 %823, 3
  %828 = call float @dx.op.dot4.f32(i32 56, float %824, float %825, float %826, float %827, float %84, float %85, float %86, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %829 = call float @dx.op.unary.f32(i32 27, float %814)  ; Round_ni(value)
  %830 = call float @dx.op.unary.f32(i32 6, float %829)  ; FAbs(value)
  %831 = call float @dx.op.unary.f32(i32 27, float %821)  ; Round_ni(value)
  %832 = call float @dx.op.unary.f32(i32 6, float %831)  ; FAbs(value)
  %833 = call float @dx.op.unary.f32(i32 6, float %828)  ; FAbs(value)
  %834 = call float @dx.op.unary.f32(i32 27, float %833)  ; Round_ni(value)
  %835 = fadd fast float %832, %830
  %836 = fadd fast float %835, %834
  %837 = fcmp fast oeq float %836, 0.000000e+00
  %838 = call float @dx.op.dot4.f32(i32 56, float %810, float %811, float %812, float %813, float %682, float %683, float %684, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %839 = call float @dx.op.dot4.f32(i32 56, float %817, float %818, float %819, float %820, float %682, float %683, float %684, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %840 = call float @dx.op.dot4.f32(i32 56, float %810, float %811, float %812, float %813, float %685, float %686, float %687, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %841 = call float @dx.op.dot4.f32(i32 56, float %817, float %818, float %819, float %820, float %685, float %686, float %687, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %842 = fsub fast float %838, %814
  %843 = fsub fast float %840, %814
  %844 = fsub fast float %839, %821
  %845 = fsub fast float %841, %821
  %846 = call float @dx.op.dot3.f32(i32 55, float %756, float %757, float %758, float %39, float %40, float %41)  ; Dot3(ax,ay,az,bx,by,bz)
  %847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %848 = extractvalue %dx.types.CBufRet.f32 %847, 2
  %849 = fadd fast float %848, %846
  %850 = call float @dx.op.unary.f32(i32 7, float %849)  ; Saturate(value)
  %851 = extractvalue %dx.types.CBufRet.f32 %847, 0
  %852 = fcmp fast ogt float %850, %851
  %853 = and i1 %837, %852
  %854 = and i1 %808, %853
  br i1 %854, label %875, label %855

; <label>:855                                     ; preds = %1138, %956, %875, %729
  %856 = phi float [ %730, %875 ], [ %959, %956 ], [ %959, %1138 ], [ %730, %729 ]
  %857 = phi float [ %731, %875 ], [ %731, %956 ], [ %1113, %1138 ], [ %731, %729 ]
  %858 = phi float [ %732, %875 ], [ %732, %956 ], [ %1111, %1138 ], [ %732, %729 ]
  %859 = phi float [ %733, %875 ], [ %733, %956 ], [ %1083, %1138 ], [ %733, %729 ]
  %860 = phi float [ %734, %875 ], [ %734, %956 ], [ %1081, %1138 ], [ %734, %729 ]
  %861 = phi float [ %735, %875 ], [ %735, %956 ], [ %1148, %1138 ], [ %735, %729 ]
  %862 = phi float [ %736, %875 ], [ %736, %956 ], [ %1149, %1138 ], [ %736, %729 ]
  %863 = phi float [ %737, %875 ], [ %737, %956 ], [ %1150, %1138 ], [ %737, %729 ]
  %864 = phi float [ %738, %875 ], [ %738, %956 ], [ %1062, %1138 ], [ %738, %729 ]
  %865 = phi float [ %739, %875 ], [ %739, %956 ], [ %1063, %1138 ], [ %739, %729 ]
  %866 = phi float [ %740, %875 ], [ %740, %956 ], [ %1064, %1138 ], [ %740, %729 ]
  %867 = phi float [ %741, %875 ], [ %741, %956 ], [ %1091, %1138 ], [ %741, %729 ]
  %868 = phi float [ %742, %875 ], [ %742, %956 ], [ %1088, %1138 ], [ %742, %729 ]
  %869 = phi float [ %743, %875 ], [ %743, %956 ], [ %1085, %1138 ], [ %743, %729 ]
  %870 = phi float [ %744, %875 ], [ %744, %956 ], [ %1079, %1138 ], [ %744, %729 ]
  %871 = phi float [ %745, %875 ], [ %745, %956 ], [ %1074, %1138 ], [ %745, %729 ]
  %872 = phi float [ %746, %875 ], [ %746, %956 ], [ %1075, %1138 ], [ %746, %729 ]
  %873 = phi float [ %747, %875 ], [ %747, %956 ], [ %1076, %1138 ], [ %747, %729 ]
  %874 = icmp eq i32 %805, %728
  br i1 %874, label %1151, label %729

; <label>:875                                     ; preds = %729
  %876 = extractvalue %dx.types.ResRet.f32 %775, 3
  %877 = extractvalue %dx.types.ResRet.f32 %775, 1
  %878 = extractvalue %dx.types.ResRet.f32 %775, 0
  %879 = extractvalue %dx.types.ResRet.f32 %765, 1
  %880 = extractvalue %dx.types.ResRet.f32 %765, 0
  %881 = extractvalue %dx.types.ResRet.i32 %761, 3
  %882 = extractvalue %dx.types.ResRet.i32 %761, 2
  %883 = add i32 %881, 0
  %884 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %883, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %885 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %886 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %884, %dx.types.Handle %885, float %814, float %821, float undef, float undef, i32 0, i32 0, i32 undef, float %842, float %844, float undef, float %843, float %845, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %887 = extractvalue %dx.types.ResRet.f32 %886, 0
  %888 = fmul fast float %887, %880
  %889 = fadd fast float %888, %879
  %890 = call float @dx.op.unary.f32(i32 7, float %889)  ; Saturate(value)
  %891 = fmul fast float %814, %770
  %892 = call float @dx.op.tertiary.f32(i32 46, float %771, float %821, float %891)  ; FMad(a,b,c)
  %893 = fadd fast float %892, %878
  %894 = fmul fast float %814, %772
  %895 = call float @dx.op.tertiary.f32(i32 46, float %773, float %821, float %894)  ; FMad(a,b,c)
  %896 = fadd fast float %895, %877
  %897 = fmul fast float %842, %770
  %898 = call float @dx.op.tertiary.f32(i32 46, float %771, float %844, float %897)  ; FMad(a,b,c)
  %899 = fmul fast float %842, %772
  %900 = call float @dx.op.tertiary.f32(i32 46, float %773, float %844, float %899)  ; FMad(a,b,c)
  %901 = fmul fast float %843, %770
  %902 = call float @dx.op.tertiary.f32(i32 46, float %771, float %845, float %901)  ; FMad(a,b,c)
  %903 = fmul fast float %843, %772
  %904 = call float @dx.op.tertiary.f32(i32 46, float %773, float %845, float %903)  ; FMad(a,b,c)
  %905 = add i32 %882, 0
  %906 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %905, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %907 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %906, %dx.types.Handle %885, float %893, float %896, float undef, float undef, i32 0, i32 0, i32 undef, float %898, float %900, float undef, float %902, float %904, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %908 = extractvalue %dx.types.ResRet.f32 %907, 0
  %909 = and i32 %806, 1024
  %910 = icmp ne i32 %909, 0
  %911 = fcmp fast ogt float %908, 0x3FE0101020000000
  %912 = uitofp i1 %911 to float
  %913 = select i1 %910, float %912, float %908
  %914 = and i32 %806, 8192
  %915 = icmp ne i32 %914, 0
  %916 = select i1 %915, float %876, float 1.000000e+00
  %917 = fmul fast float %814, 2.000000e+00
  %918 = fadd fast float %917, -1.000000e+00
  %919 = call float @dx.op.unary.f32(i32 6, float %918)  ; FAbs(value)
  %920 = fmul fast float %919, %803
  %921 = fsub fast float %920, %803
  %922 = call float @dx.op.unary.f32(i32 7, float %921)  ; Saturate(value)
  %923 = fmul fast float %821, 2.000000e+00
  %924 = fadd fast float %923, -1.000000e+00
  %925 = call float @dx.op.unary.f32(i32 6, float %924)  ; FAbs(value)
  %926 = fmul fast float %925, %804
  %927 = fsub fast float %926, %804
  %928 = call float @dx.op.unary.f32(i32 7, float %927)  ; Saturate(value)
  %929 = fmul fast float %833, %766
  %930 = fsub fast float %929, %766
  %931 = call float @dx.op.unary.f32(i32 7, float %930)  ; Saturate(value)
  %932 = fmul fast float %890, %916
  %933 = fmul fast float %932, %887
  %934 = fmul fast float %933, %922
  %935 = fmul fast float %934, %913
  %936 = fmul fast float %935, %928
  %937 = fmul fast float %936, %931
  %938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %939 = extractvalue %dx.types.CBufRet.f32 %938, 1
  %940 = extractvalue %dx.types.CBufRet.f32 %938, 0
  %941 = fsub fast float %850, %940
  %942 = fmul fast float %941, %939
  %943 = call float @dx.op.unary.f32(i32 7, float %942)  ; Saturate(value)
  %944 = fmul fast float %937, %767
  %945 = fadd fast float %937, %767
  %946 = fmul fast float %945, %776
  %947 = fsub fast float %946, %776
  %948 = call float @dx.op.unary.f32(i32 7, float %947)  ; Saturate(value)
  %949 = and i32 %806, 128
  %950 = icmp ne i32 %949, 0
  %951 = select i1 %950, float %948, float %944
  %952 = fmul fast float %951, %943
  %953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %954 = extractvalue %dx.types.CBufRet.f32 %953, 0
  %955 = fcmp fast ugt float %952, %954
  br i1 %955, label %956, label %855

; <label>:956                                     ; preds = %875
  %957 = select i1 %915, float %952, float 0.000000e+00
  %958 = fadd fast float %957, %730
  %959 = call float @dx.op.unary.f32(i32 7, float %958)  ; Saturate(value)
  br i1 %915, label %855, label %960

; <label>:960                                     ; preds = %956
  %961 = and i32 %806, 4
  %962 = and i32 %806, 8
  %963 = add i32 %762, 0
  %964 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %963, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %965 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %966 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %964, %dx.types.Handle %965, float %893, float %896, float undef, float undef, i32 0, i32 0, i32 undef, float %898, float %900, float undef, float %902, float %904, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %967 = extractvalue %dx.types.ResRet.f32 %966, 0
  %968 = extractvalue %dx.types.ResRet.f32 %966, 1
  %969 = extractvalue %dx.types.ResRet.f32 %966, 2
  %970 = extractvalue %dx.types.ResRet.f32 %966, 3
  %971 = bitcast float %788 to i32
  %972 = and i32 %971, 255
  %973 = uitofp i32 %972 to float
  %974 = lshr i32 %971, 8
  %975 = and i32 %974, 255
  %976 = uitofp i32 %975 to float
  %977 = fmul fast float %970, %973
  %978 = fadd fast float %977, %976
  %979 = fmul fast float %978, 0x3F70101000000000
  %980 = add i32 %763, 0
  %981 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %980, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %982 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %981, %dx.types.Handle %965, float %893, float %896, float undef, float undef, i32 0, i32 0, i32 undef, float %898, float %900, float undef, float %902, float %904, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %983 = extractvalue %dx.types.ResRet.f32 %982, 0
  %984 = extractvalue %dx.types.ResRet.f32 %982, 1
  %985 = extractvalue %dx.types.ResRet.f32 %982, 2
  %986 = extractvalue %dx.types.ResRet.f32 %982, 3
  %987 = bitcast float %782 to i32
  %988 = and i32 %987, 255
  %989 = uitofp i32 %988 to float
  %990 = lshr i32 %987, 8
  %991 = and i32 %990, 255
  %992 = uitofp i32 %991 to float
  %993 = lshr i32 %987, 16
  %994 = and i32 %993, 255
  %995 = uitofp i32 %994 to float
  %996 = fmul fast float %995, 0x3F70101000000000
  %997 = fmul fast float %983, %989
  %998 = fadd fast float %997, %992
  %999 = fmul fast float %998, 0x3F70101000000000
  %1000 = fadd fast float %984, -5.000000e-01
  %1001 = fadd fast float %986, -5.000000e-01
  %1002 = fmul fast float %1000, %996
  %1003 = fmul fast float %1001, %996
  %1004 = fadd fast float %1002, 5.000000e-01
  %1005 = fadd fast float %1003, 5.000000e-01
  %1006 = fmul fast float %967, %791
  %1007 = fmul fast float %968, %792
  %1008 = fmul fast float %969, %793
  %1009 = fmul fast float %1004, 2.000000e+00
  %1010 = fadd fast float %1009, -1.000000e+00
  %1011 = fmul fast float %1005, 2.000000e+00
  %1012 = fadd fast float %1011, -1.000000e+00
  %1013 = fadd fast float %1010, %1012
  %1014 = fmul fast float %1013, 5.000000e-01
  %1015 = fsub fast float %1010, %1012
  %1016 = fmul fast float %1015, 5.000000e-01
  %1017 = call float @dx.op.unary.f32(i32 6, float %1014)  ; FAbs(value)
  %1018 = fsub fast float 1.000000e+00, %1017
  %1019 = call float @dx.op.unary.f32(i32 6, float %1016)  ; FAbs(value)
  %1020 = fsub fast float %1018, %1019
  %1021 = call float @dx.op.dot3.f32(i32 55, float %1014, float %1016, float %1020, float %1014, float %1016, float %1020)  ; Dot3(ax,ay,az,bx,by,bz)
  %1022 = call float @dx.op.unary.f32(i32 25, float %1021)  ; Rsqrt(value)
  %1023 = fmul fast float %1014, %1022
  %1024 = fmul fast float %1016, %1022
  %1025 = fmul fast float %1022, %1020
  %1026 = fmul fast float %1025, %756
  %1027 = fmul fast float %1025, %757
  %1028 = fmul fast float %1025, %758
  %1029 = fmul fast float %1023, %779
  %1030 = fmul fast float %1023, %780
  %1031 = fmul fast float %1023, %781
  %1032 = fadd fast float %1029, %1026
  %1033 = fadd fast float %1030, %1027
  %1034 = fadd fast float %1031, %1028
  %1035 = fmul fast float %1024, %785
  %1036 = fmul fast float %1024, %786
  %1037 = fmul fast float %1024, %787
  %1038 = fadd fast float %1032, %1035
  %1039 = fadd fast float %1033, %1036
  %1040 = fadd fast float %1034, %1037
  %1041 = call float @dx.op.dot3.f32(i32 55, float %1038, float %1039, float %1040, float %1038, float %1039, float %1040)  ; Dot3(ax,ay,az,bx,by,bz)
  %1042 = call float @dx.op.unary.f32(i32 25, float %1041)  ; Rsqrt(value)
  %1043 = fmul fast float %1038, %1042
  %1044 = fmul fast float %1039, %1042
  %1045 = fmul fast float %1040, %1042
  %1046 = icmp ne i32 %962, 0
  %1047 = select i1 %1046, float 1.000000e+00, float 0.000000e+00
  %1048 = fmul fast float %952, %1047
  %1049 = and i32 %806, 1
  %1050 = icmp eq i32 %1049, 0
  br i1 %1050, label %1051, label %1055

; <label>:1051                                    ; preds = %960
  %1052 = fsub fast float %1043, %738
  %1053 = fsub fast float %1044, %739
  %1054 = fsub fast float %1045, %740
  br label %1055

; <label>:1055                                    ; preds = %1051, %960
  %1056 = phi float [ %1052, %1051 ], [ %1043, %960 ]
  %1057 = phi float [ %1053, %1051 ], [ %1044, %960 ]
  %1058 = phi float [ %1054, %1051 ], [ %1045, %960 ]
  %1059 = fmul float %1058, %1048
  %1060 = fmul float %1057, %1048
  %1061 = fmul float %1056, %1048
  %1062 = fadd fast float %1061, %738
  %1063 = fadd fast float %1060, %739
  %1064 = fadd fast float %1059, %740
  %1065 = icmp ne i32 %961, 0
  %1066 = select i1 %1065, float 1.000000e+00, float 0.000000e+00
  %1067 = fmul fast float %952, %1066
  %1068 = fsub fast float %1006, %745
  %1069 = fsub fast float %1007, %746
  %1070 = fsub fast float %1008, %747
  %1071 = fmul fast float %1068, %1067
  %1072 = fmul fast float %1069, %1067
  %1073 = fmul fast float %1070, %1067
  %1074 = fadd fast float %1071, %745
  %1075 = fadd fast float %1072, %746
  %1076 = fadd fast float %1073, %747
  %1077 = fsub fast float %979, %744
  %1078 = fmul fast float %1077, %1067
  %1079 = fadd fast float %1078, %744
  %1080 = fmul fast float %1067, %734
  %1081 = fsub fast float %734, %1080
  %1082 = fmul fast float %1067, %733
  %1083 = fsub fast float %733, %1082
  %1084 = fadd fast float %952, %743
  %1085 = call float @dx.op.unary.f32(i32 7, float %1084)  ; Saturate(value)
  %1086 = fsub fast float %999, %742
  %1087 = fmul fast float %1086, %1048
  %1088 = fadd fast float %1087, %742
  %1089 = fsub fast float %985, %741
  %1090 = fmul fast float %1089, %1048
  %1091 = fadd fast float %1090, %741
  %1092 = call float @dx.op.dot3.f32(i32 55, float %1006, float %1007, float %1008, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1094 = extractvalue %dx.types.CBufRet.f32 %1093, 0
  %1095 = extractvalue %dx.types.CBufRet.f32 %1093, 1
  %1096 = fmul fast float %1095, %1092
  %1097 = fadd fast float %1096, %1094
  %1098 = call float @dx.op.unary.f32(i32 7, float %1097)  ; Saturate(value)
  %1099 = bitcast float %794 to i32
  %1100 = and i32 %1099, 65535
  %1101 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1100)  ; LegacyF16ToF32(value)
  %1102 = lshr i32 %1099, 16
  %1103 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1102)  ; LegacyF16ToF32(value)
  %1104 = fcmp fast oge float %1101, 0.000000e+00
  %1105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1106 = extractvalue %dx.types.CBufRet.f32 %1105, 0
  %1107 = select i1 %1104, float %1101, float %1106
  %1108 = fadd fast float %1107, %1103
  %1109 = fsub fast float %1098, %732
  %1110 = fmul fast float %1109, %952
  %1111 = fadd fast float %1110, %732
  %1112 = fmul fast float %1108, %952
  %1113 = call float @dx.op.binary.f32(i32 35, float %731, float %1112)  ; FMax(a,b)
  %1114 = and i32 %806, 16
  %1115 = icmp eq i32 %1114, 0
  br i1 %1115, label %1138, label %1116

; <label>:1116                                    ; preds = %1055
  %1117 = bitcast float %800 to i32
  %1118 = add i32 %797, 0
  %1119 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1118, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1120 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1119, %dx.types.Handle %965, float %893, float %896, float undef, float undef, i32 0, i32 0, i32 undef, float %898, float %900, float undef, float %902, float %904, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1121 = extractvalue %dx.types.ResRet.f32 %1120, 0
  %1122 = extractvalue %dx.types.ResRet.f32 %1120, 1
  %1123 = extractvalue %dx.types.ResRet.f32 %1120, 2
  %1124 = and i32 %1117, 65535
  %1125 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1124)  ; LegacyF16ToF32(value)
  %1126 = fmul fast float %1121, %791
  %1127 = fmul fast float %1122, %792
  %1128 = fmul fast float %1123, %793
  %1129 = and i32 %806, 16384
  %1130 = icmp ne i32 %1129, 0
  %1131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1132 = extractvalue %dx.types.CBufRet.f32 %1131, 0
  %1133 = select i1 %1130, float %1132, float 1.000000e+00
  %1134 = fmul fast float %1133, %1125
  %1135 = fmul fast float %1126, %1134
  %1136 = fmul fast float %1127, %1134
  %1137 = fmul fast float %1128, %1134
  br label %1138

; <label>:1138                                    ; preds = %1116, %1055
  %1139 = phi float [ %1135, %1116 ], [ 0.000000e+00, %1055 ]
  %1140 = phi float [ %1136, %1116 ], [ 0.000000e+00, %1055 ]
  %1141 = phi float [ %1137, %1116 ], [ 0.000000e+00, %1055 ]
  %1142 = fsub fast float %1139, %735
  %1143 = fsub fast float %1140, %736
  %1144 = fsub fast float %1141, %737
  %1145 = fmul fast float %1142, %952
  %1146 = fmul fast float %1143, %952
  %1147 = fmul fast float %1144, %952
  %1148 = fadd fast float %1145, %735
  %1149 = fadd fast float %1146, %736
  %1150 = fadd fast float %1147, %737
  br label %855

; <label>:1151                                    ; preds = %855
  br label %1152

; <label>:1152                                    ; preds = %1151, %626
  %1153 = phi float [ 0.000000e+00, %626 ], [ %856, %1151 ]
  %1154 = phi float [ %641, %626 ], [ %857, %1151 ]
  %1155 = phi float [ %639, %626 ], [ %858, %1151 ]
  %1156 = phi float [ 0.000000e+00, %626 ], [ %859, %1151 ]
  %1157 = phi float [ 0.000000e+00, %626 ], [ %860, %1151 ]
  %1158 = phi float [ %632, %626 ], [ %861, %1151 ]
  %1159 = phi float [ %633, %626 ], [ %862, %1151 ]
  %1160 = phi float [ %634, %626 ], [ %863, %1151 ]
  %1161 = phi float [ %673, %626 ], [ %864, %1151 ]
  %1162 = phi float [ %674, %626 ], [ %865, %1151 ]
  %1163 = phi float [ %675, %626 ], [ %866, %1151 ]
  %1164 = phi float [ %638, %626 ], [ %867, %1151 ]
  %1165 = phi float [ %637, %626 ], [ %868, %1151 ]
  %1166 = phi float [ 0.000000e+00, %626 ], [ %869, %1151 ]
  %1167 = phi float [ %635, %626 ], [ %870, %1151 ]
  %1168 = phi float [ %629, %626 ], [ %871, %1151 ]
  %1169 = phi float [ %630, %626 ], [ %872, %1151 ]
  %1170 = phi float [ %631, %626 ], [ %873, %1151 ]
  %1171 = call float @dx.op.dot3.f32(i32 55, float %1161, float %1162, float %1163, float %1161, float %1162, float %1163)  ; Dot3(ax,ay,az,bx,by,bz)
  %1172 = call float @dx.op.unary.f32(i32 25, float %1171)  ; Rsqrt(value)
  %1173 = fmul fast float %1172, %1161
  %1174 = fmul fast float %1172, %1162
  %1175 = fmul fast float %1172, %1163
  %1176 = fadd fast float %1166, %636
  %1177 = call float @dx.op.unary.f32(i32 7, float %1176)  ; Saturate(value)
  %1178 = call float @dx.op.dot3.f32(i32 55, float %1173, float %1174, float %1175, float %1173, float %1174, float %1175)  ; Dot3(ax,ay,az,bx,by,bz)
  %1179 = call float @dx.op.unary.f32(i32 25, float %1178)  ; Rsqrt(value)
  %1180 = fmul fast float %1179, %1173
  %1181 = fmul fast float %1179, %1174
  %1182 = fmul fast float %1179, %1175
  %1183 = fadd fast float %1167, 0xBFB99999A0000000
  %1184 = call float @dx.op.unary.f32(i32 7, float %1183)  ; Saturate(value)
  %1185 = fmul fast float %1184, 0x3FF1C71C80000000
  %1186 = call float @dx.op.binary.f32(i32 36, float %1167, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1187 = fsub fast float 1.000000e+00, %1185
  %1188 = call float @dx.op.unary.f32(i32 7, float %1187)  ; Saturate(value)
  %1189 = fmul fast float %1188, %1168
  %1190 = fmul fast float %1188, %1169
  %1191 = fmul fast float %1188, %1170
  %1192 = call float @dx.op.unary.f32(i32 7, float %1189)  ; Saturate(value)
  %1193 = call float @dx.op.unary.f32(i32 7, float %1190)  ; Saturate(value)
  %1194 = call float @dx.op.unary.f32(i32 7, float %1191)  ; Saturate(value)
  %1195 = fmul fast float %1185, %1168
  %1196 = fmul fast float %1185, %1169
  %1197 = fmul fast float %1185, %1170
  %1198 = fadd fast float %1195, %1186
  %1199 = fadd fast float %1196, %1186
  %1200 = fadd fast float %1197, %1186
  %1201 = call float @dx.op.unary.f32(i32 7, float %1198)  ; Saturate(value)
  %1202 = call float @dx.op.unary.f32(i32 7, float %1199)  ; Saturate(value)
  %1203 = call float @dx.op.unary.f32(i32 7, float %1200)  ; Saturate(value)
  %1204 = call float @dx.op.unary.f32(i32 7, float %1165)  ; Saturate(value)
  %1205 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1206 = extractvalue %dx.types.CBufRet.i32 %1205, 3
  %1207 = and i32 %1206, 8
  %1208 = icmp ne i32 %1207, 0
  %1209 = call float @dx.op.binary.f32(i32 35, float %1192, float %1168)  ; FMax(a,b)
  %1210 = call float @dx.op.binary.f32(i32 35, float %1193, float %1168)  ; FMax(a,b)
  %1211 = call float @dx.op.binary.f32(i32 35, float %1194, float %1168)  ; FMax(a,b)
  %1212 = call float @dx.op.dot3.f32(i32 55, float %1192, float %1193, float %1194, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1213 = select i1 %125, float %1168, float %1192
  %1214 = select i1 %125, float %1212, float %1193
  %1215 = select i1 %125, float 1.000000e+00, float %1194
  %1216 = select i1 %1208, float %1209, float %1213
  %1217 = select i1 %1208, float %1210, float %1214
  %1218 = select i1 %1208, float %1211, float %1215
  %1219 = and i32 %101, 3
  %1220 = select i1 %95, i32 %1219, i32 0
  %1221 = icmp eq i32 %1220, 1
  br i1 %1221, label %1222, label %1298

; <label>:1222                                    ; preds = %1152
  %1223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1224 = extractvalue %dx.types.CBufRet.f32 %1223, 0
  %1225 = extractvalue %dx.types.CBufRet.f32 %1223, 1
  %1226 = fadd fast float %1224, %84
  %1227 = fadd fast float %1225, %85
  %1228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1229 = extractvalue %dx.types.CBufRet.f32 %1228, 0
  %1230 = extractvalue %dx.types.CBufRet.f32 %1228, 1
  %1231 = fsub fast float %1226, %1229
  %1232 = fsub fast float %1227, %1230
  %1233 = fmul fast float %1231, %1231
  %1234 = fmul fast float %1232, %1232
  %1235 = fadd fast float %1233, %1234
  %1236 = call float @dx.op.unary.f32(i32 24, float %1235)  ; Sqrt(value)
  %1237 = extractvalue %dx.types.CBufRet.f32 %1228, 2
  %1238 = fcmp fast olt float %1236, %1237
  br i1 %1238, label %1239, label %1292

; <label>:1239                                    ; preds = %1222
  %1240 = extractvalue %dx.types.CBufRet.f32 %1223, 2
  %1241 = fadd fast float %1240, %86
  %1242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1243 = extractvalue %dx.types.CBufRet.f32 %1242, 0
  %1244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1245 = extractvalue %dx.types.CBufRet.f32 %1244, 0
  %1246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1247 = extractvalue %dx.types.CBufRet.f32 %1246, 0
  %1248 = extractvalue %dx.types.CBufRet.f32 %1242, 1
  %1249 = extractvalue %dx.types.CBufRet.f32 %1244, 1
  %1250 = extractvalue %dx.types.CBufRet.f32 %1246, 1
  %1251 = extractvalue %dx.types.CBufRet.f32 %1242, 3
  %1252 = extractvalue %dx.types.CBufRet.f32 %1244, 3
  %1253 = extractvalue %dx.types.CBufRet.f32 %1246, 3
  %1254 = fadd fast float %1251, %1226
  %1255 = fadd fast float %1252, %1227
  %1256 = fadd fast float %1241, %1253
  %1257 = fmul fast float %1254, %1243
  %1258 = call float @dx.op.tertiary.f32(i32 46, float %1255, float %1245, float %1257)  ; FMad(a,b,c)
  %1259 = call float @dx.op.tertiary.f32(i32 46, float %1256, float %1247, float %1258)  ; FMad(a,b,c)
  %1260 = fmul fast float %1254, %1248
  %1261 = call float @dx.op.tertiary.f32(i32 46, float %1255, float %1249, float %1260)  ; FMad(a,b,c)
  %1262 = call float @dx.op.tertiary.f32(i32 46, float %1256, float %1250, float %1261)  ; FMad(a,b,c)
  %1263 = fsub fast float %1259, %1251
  %1264 = fsub fast float %1262, %1252
  %1265 = fsub fast float %1263, %1229
  %1266 = fadd fast float %1265, %1237
  %1267 = fsub fast float %1264, %1230
  %1268 = fadd fast float %1267, %1237
  %1269 = extractvalue %dx.types.CBufRet.f32 %1228, 3
  %1270 = fmul fast float %1266, %1269
  %1271 = fmul fast float %1268, %1269
  %1272 = call float @dx.op.unary.f32(i32 7, float %1270)  ; Saturate(value)
  %1273 = call float @dx.op.unary.f32(i32 7, float %1271)  ; Saturate(value)
  %1274 = fsub fast float 1.000000e+00, %1272
  %1275 = fsub fast float 1.000000e+00, %1273
  %1276 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %13, float %1274, float %1275, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1277 = extractvalue %dx.types.ResRet.f32 %1276, 0
  %1278 = fcmp fast ugt float %1277, 0.000000e+00
  br i1 %1278, label %1279, label %1292

; <label>:1279                                    ; preds = %1239
  %1280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1281 = extractvalue %dx.types.CBufRet.f32 %1280, 2
  %1282 = fmul fast float %1281, %1277
  %1283 = extractvalue %dx.types.CBufRet.f32 %1280, 3
  %1284 = fadd fast float %1283, %1282
  %1285 = extractvalue %dx.types.CBufRet.f32 %1246, 2
  %1286 = fadd fast float %1284, %1253
  %1287 = fmul fast float %1259, %1247
  %1288 = call float @dx.op.tertiary.f32(i32 46, float %1262, float %1250, float %1287)  ; FMad(a,b,c)
  %1289 = call float @dx.op.tertiary.f32(i32 46, float %1286, float %1285, float %1288)  ; FMad(a,b,c)
  %1290 = fsub fast float %1289, %1253
  %1291 = fsub fast float %1290, %1240
  br label %1292

; <label>:1292                                    ; preds = %1279, %1239, %1222
  %1293 = phi i1 [ true, %1279 ], [ false, %1239 ], [ false, %1222 ]
  %1294 = phi float [ %1291, %1279 ], [ -1.310720e+05, %1239 ], [ -1.310720e+05, %1222 ]
  %1295 = fsub fast float %1294, %86
  %1296 = call float @dx.op.unary.f32(i32 7, float %1295)  ; Saturate(value)
  %1297 = select i1 %1293, float %1296, float 1.000000e+00
  br label %1298

; <label>:1298                                    ; preds = %1292, %1152
  %1299 = phi float [ %1297, %1292 ], [ 0.000000e+00, %1152 ]
  %1300 = icmp eq i32 %1220, 3
  %1301 = select i1 %1300, float 1.000000e+00, float %1299
  %1302 = call float @dx.op.binary.f32(i32 35, float %1153, float %1301)  ; FMax(a,b)
  %1303 = call float @dx.op.unary.f32(i32 7, float %1302)  ; Saturate(value)
  %1304 = fcmp fast une float %1303, 0.000000e+00
  %1305 = call float @dx.op.dot3.f32(i32 55, float %84, float %85, float %86, float %84, float %85, float %86)  ; Dot3(ax,ay,az,bx,by,bz)
  %1306 = call float @dx.op.unary.f32(i32 25, float %1305)  ; Rsqrt(value)
  br i1 %1304, label %1314, label %1307

; <label>:1307                                    ; preds = %1298
  %1308 = fmul fast float %1306, %84
  %1309 = fmul fast float %1306, %85
  %1310 = fmul fast float %1306, %86
  %1311 = fsub fast float -0.000000e+00, %1308
  %1312 = fsub fast float -0.000000e+00, %1309
  %1313 = fsub fast float -0.000000e+00, %1310
  br label %1482

; <label>:1314                                    ; preds = %1298
  %1315 = fmul fast float %84, %1306
  %1316 = fsub fast float -0.000000e+00, %1315
  %1317 = fmul fast float %85, %1306
  %1318 = fsub fast float -0.000000e+00, %1317
  %1319 = fmul fast float %86, %1306
  %1320 = fsub fast float -0.000000e+00, %1319
  %1321 = call float @dx.op.dot3.f32(i32 55, float %1316, float %1318, float %1320, float %39, float %40, float %41)  ; Dot3(ax,ay,az,bx,by,bz)
  %1322 = fmul fast float %1303, 2.500000e+00
  %1323 = call float @dx.op.unary.f32(i32 7, float %1322)  ; Saturate(value)
  %1324 = fmul fast float %1303, 0x4013FFFFE0000000
  %1325 = fadd fast float %1324, 0xBFFFFFFFE0000000
  %1326 = call float @dx.op.unary.f32(i32 7, float %1325)  ; Saturate(value)
  %1327 = fmul fast float %1303, 0x4004000020000000
  %1328 = fadd fast float %1327, 0xBFF8000040000000
  %1329 = call float @dx.op.unary.f32(i32 7, float %1328)  ; Saturate(value)
  %1330 = call float @dx.op.unary.f32(i32 7, float %1323)  ; Saturate(value)
  %1331 = fmul fast float %1183, 1.000000e+01
  %1332 = call float @dx.op.unary.f32(i32 7, float %1331)  ; Saturate(value)
  %1333 = fmul fast float %1332, 2.000000e+00
  %1334 = fsub fast float 3.000000e+00, %1333
  %1335 = fmul fast float %1332, %1332
  %1336 = fmul fast float %1335, %1334
  %1337 = fsub fast float 1.000000e+00, %1336
  %1338 = fsub fast float 0x3FE3333340000000, %1204
  %1339 = fmul fast float %1338, 0x400AAAAAA0000000
  %1340 = call float @dx.op.unary.f32(i32 7, float %1339)  ; Saturate(value)
  %1341 = fmul fast float %1337, %1340
  %1342 = fmul fast float %1216, 0x3FEA2B8620000000
  %1343 = fmul fast float %1217, 0x3FEA2B8620000000
  %1344 = fmul fast float %1218, 0x3FEA2B8620000000
  %1345 = fadd fast float %1342, 0x3FC81DFBA0000000
  %1346 = fmul fast float %1345, %1216
  %1347 = fadd fast float %1346, 0x3F910E6020000000
  %1348 = fadd fast float %1343, 0x3FC81DFBA0000000
  %1349 = fmul fast float %1348, %1217
  %1350 = fadd fast float %1349, 0x3F910E6020000000
  %1351 = fadd fast float %1344, 0x3FC81DFBA0000000
  %1352 = fmul fast float %1351, %1218
  %1353 = fadd fast float %1352, 0x3F910E6020000000
  %1354 = call float @dx.op.unary.f32(i32 7, float %1347)  ; Saturate(value)
  %1355 = call float @dx.op.unary.f32(i32 7, float %1350)  ; Saturate(value)
  %1356 = call float @dx.op.unary.f32(i32 7, float %1353)  ; Saturate(value)
  %1357 = fsub fast float %1354, %1216
  %1358 = fsub fast float %1355, %1217
  %1359 = fsub fast float %1356, %1218
  %1360 = fmul fast float %1357, %1330
  %1361 = fmul fast float %1360, %1341
  %1362 = fmul fast float %1358, %1330
  %1363 = fmul fast float %1362, %1341
  %1364 = fmul fast float %1359, %1330
  %1365 = fmul fast float %1364, %1341
  %1366 = fadd fast float %1361, %1216
  %1367 = fadd fast float %1363, %1217
  %1368 = fadd fast float %1365, %1218
  %1369 = fmul fast float %1164, %1164
  %1370 = fmul fast float %1369, %1369
  %1371 = fadd fast float %1326, 1.000000e+00
  %1372 = fsub fast float %1371, %1341
  %1373 = call float @dx.op.unary.f32(i32 7, float %1372)  ; Saturate(value)
  %1374 = call float @dx.op.dot3.f32(i32 55, float %39, float %40, float %41, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1375 = call float @dx.op.unary.f32(i32 7, float %1374)  ; Saturate(value)
  %1376 = fsub fast float 1.000000e+00, %1370
  %1377 = call float @dx.op.binary.f32(i32 36, float %1373, float %1376)  ; FMin(a,b)
  %1378 = call float @dx.op.unary.f32(i32 7, float %1329)  ; Saturate(value)
  %1379 = call float @dx.op.binary.f32(i32 35, float %1377, float %1378)  ; FMax(a,b)
  %1380 = fadd fast float %1375, 0xBFE4CCCCC0000000
  %1381 = fmul fast float %1380, 0x4006DB6DA0000000
  %1382 = call float @dx.op.unary.f32(i32 7, float %1381)  ; Saturate(value)
  %1383 = fmul fast float %1382, 2.000000e+00
  %1384 = fsub fast float 3.000000e+00, %1383
  %1385 = bitcast float %1201 to i32
  %1386 = ashr i32 %1385, 1
  %1387 = add nsw i32 %1386, 532487669
  %1388 = bitcast i32 %1387 to float
  %1389 = fsub fast float 1.000000e+00, %1388
  %1390 = bitcast float %1389 to i32
  %1391 = sub nsw i32 2129859010, %1390
  %1392 = bitcast i32 %1391 to float
  %1393 = fmul fast float %1392, 2.000000e+00
  %1394 = bitcast float %1202 to i32
  %1395 = ashr i32 %1394, 1
  %1396 = add nsw i32 %1395, 532487669
  %1397 = bitcast i32 %1396 to float
  %1398 = fsub fast float 1.000000e+00, %1397
  %1399 = bitcast float %1398 to i32
  %1400 = sub nsw i32 2129859010, %1399
  %1401 = bitcast i32 %1400 to float
  %1402 = fmul fast float %1401, 2.000000e+00
  %1403 = bitcast float %1203 to i32
  %1404 = ashr i32 %1403, 1
  %1405 = add nsw i32 %1404, 532487669
  %1406 = bitcast i32 %1405 to float
  %1407 = fsub fast float 1.000000e+00, %1406
  %1408 = bitcast float %1407 to i32
  %1409 = sub nsw i32 2129859010, %1408
  %1410 = bitcast i32 %1409 to float
  %1411 = fmul fast float %1410, 2.000000e+00
  %1412 = fsub fast float 0x4002A9FBE0000000, %1393
  %1413 = fadd fast float %1393, 0x3FD54FDF00000000
  %1414 = bitcast float %1413 to i32
  %1415 = sub nsw i32 2129859010, %1414
  %1416 = bitcast i32 %1415 to float
  %1417 = fmul fast float %1416, %1412
  %1418 = fmul fast float %1417, %1417
  %1419 = fsub fast float 0x4002A9FBE0000000, %1402
  %1420 = fadd fast float %1402, 0x3FD54FDF00000000
  %1421 = bitcast float %1420 to i32
  %1422 = sub nsw i32 2129859010, %1421
  %1423 = bitcast i32 %1422 to float
  %1424 = fmul fast float %1423, %1419
  %1425 = fmul fast float %1424, %1424
  %1426 = fsub fast float 0x4002A9FBE0000000, %1411
  %1427 = fadd fast float %1411, 0x3FD54FDF00000000
  %1428 = bitcast float %1427 to i32
  %1429 = sub nsw i32 2129859010, %1428
  %1430 = bitcast i32 %1429 to float
  %1431 = fmul fast float %1430, %1426
  %1432 = fmul fast float %1431, %1431
  %1433 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1418)  ; FMax(a,b)
  %1434 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1425)  ; FMax(a,b)
  %1435 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1432)  ; FMax(a,b)
  %1436 = fsub fast float 1.000000e+00, %1321
  %1437 = fadd fast float %1436, %1337
  %1438 = call float @dx.op.unary.f32(i32 7, float %1437)  ; Saturate(value)
  %1439 = fsub fast float 1.000000e+00, %1301
  %1440 = fmul fast float %1379, %1439
  %1441 = fmul fast float %1382, %1382
  %1442 = fmul fast float %1441, %1440
  %1443 = fmul fast float %1442, %1384
  %1444 = fmul fast float %1439, 0xBFE99999A0000000
  %1445 = fmul fast float %1444, %1330
  %1446 = fmul fast float %1445, %1341
  %1447 = fadd fast float %1446, 1.000000e+00
  %1448 = fadd fast float %1204, -1.000000e+00
  %1449 = fmul fast float %1447, %1448
  %1450 = fadd fast float %1449, 1.000000e+00
  %1451 = fsub fast float %1433, %1201
  %1452 = fsub fast float %1434, %1202
  %1453 = fsub fast float %1435, %1203
  %1454 = fmul fast float %1443, %1451
  %1455 = fmul fast float %1443, %1452
  %1456 = fmul fast float %1443, %1453
  %1457 = fadd fast float %1454, %1201
  %1458 = fadd fast float %1455, %1202
  %1459 = fadd fast float %1456, %1203
  %1460 = fsub fast float %39, %1180
  %1461 = fsub fast float %40, %1181
  %1462 = fsub fast float %41, %1182
  %1463 = fmul fast float %1443, %1460
  %1464 = fmul fast float %1443, %1461
  %1465 = fmul fast float %1443, %1462
  %1466 = fadd fast float %1463, %1180
  %1467 = fadd fast float %1464, %1181
  %1468 = fadd fast float %1465, %1182
  %1469 = fmul fast float %1443, %1438
  %1470 = call float @dx.op.unary.f32(i32 7, float %1450)  ; Saturate(value)
  %1471 = fsub fast float 1.000000e+00, %1470
  %1472 = fmul fast float %1469, %1471
  %1473 = fadd fast float %1472, %1470
  %1474 = fsub fast float 1.000000e+00, %1164
  %1475 = fmul fast float %1443, %1474
  %1476 = fadd fast float %1475, %1164
  %1477 = call float @dx.op.dot3.f32(i32 55, float %1466, float %1467, float %1468, float %1466, float %1467, float %1468)  ; Dot3(ax,ay,az,bx,by,bz)
  %1478 = call float @dx.op.unary.f32(i32 25, float %1477)  ; Rsqrt(value)
  %1479 = fmul fast float %1466, %1478
  %1480 = fmul fast float %1467, %1478
  %1481 = fmul fast float %1468, %1478
  br label %1482

; <label>:1482                                    ; preds = %1314, %1307
  %1483 = phi float [ %1313, %1307 ], [ %1320, %1314 ]
  %1484 = phi float [ %1312, %1307 ], [ %1318, %1314 ]
  %1485 = phi float [ %1311, %1307 ], [ %1316, %1314 ]
  %1486 = phi float [ %1310, %1307 ], [ %1319, %1314 ]
  %1487 = phi float [ %1309, %1307 ], [ %1317, %1314 ]
  %1488 = phi float [ %1308, %1307 ], [ %1315, %1314 ]
  %1489 = phi float [ %1201, %1307 ], [ %1457, %1314 ]
  %1490 = phi float [ %1202, %1307 ], [ %1458, %1314 ]
  %1491 = phi float [ %1203, %1307 ], [ %1459, %1314 ]
  %1492 = phi float [ %1216, %1307 ], [ %1366, %1314 ]
  %1493 = phi float [ %1217, %1307 ], [ %1367, %1314 ]
  %1494 = phi float [ %1218, %1307 ], [ %1368, %1314 ]
  %1495 = phi float [ %1180, %1307 ], [ %1479, %1314 ]
  %1496 = phi float [ %1181, %1307 ], [ %1480, %1314 ]
  %1497 = phi float [ %1182, %1307 ], [ %1481, %1314 ]
  %1498 = phi float [ %1204, %1307 ], [ %1473, %1314 ]
  %1499 = phi float [ %1164, %1307 ], [ %1476, %1314 ]
  %1500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1501 = extractvalue %dx.types.CBufRet.f32 %1500, 2
  %1502 = extractvalue %dx.types.CBufRet.f32 %1500, 3
  %1503 = fmul fast float %1501, %36
  %1504 = fmul fast float %1502, %37
  %1505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %1506 = extractvalue %dx.types.CBufRet.f32 %1505, 0
  %1507 = extractvalue %dx.types.CBufRet.f32 %1505, 1
  %1508 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %13, float %1503, float %1504, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1509 = extractvalue %dx.types.ResRet.f32 %1508, 0
  %1510 = fmul fast float %1509, %1507
  %1511 = call float @dx.op.unary.f32(i32 7, float %1510)  ; Saturate(value)
  %1512 = fadd fast float %1511, -1.000000e+00
  %1513 = fmul fast float %1512, %1506
  %1514 = select i1 %125, float 0.000000e+00, float %1491
  %1515 = call float @dx.op.dot3.f32(i32 55, float %1495, float %1496, float %1497, float %1485, float %1484, float %1483)  ; Dot3(ax,ay,az,bx,by,bz)
  %1516 = call float @dx.op.unary.f32(i32 7, float %1515)  ; Saturate(value)
  %1517 = fsub fast float 1.000000e+00, %1499
  %1518 = bitcast float %1517 to i32
  %1519 = sub nsw i32 2129859010, %1518
  %1520 = fmul fast float %1177, %1158
  %1521 = fmul fast float %1177, %1159
  %1522 = fmul fast float %1177, %1160
  %1523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1524 = extractvalue %dx.types.CBufRet.f32 %1523, 3
  %1525 = fcmp fast oeq float %1524, 0.000000e+00
  br i1 %1525, label %1768, label %1526

; <label>:1526                                    ; preds = %1482
  %1527 = extractvalue %dx.types.CBufRet.f32 %1523, 0
  %1528 = extractvalue %dx.types.CBufRet.f32 %1523, 1
  %1529 = extractvalue %dx.types.CBufRet.f32 %1523, 2
  %1530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %1531 = extractvalue %dx.types.CBufRet.f32 %1530, 0
  %1532 = extractvalue %dx.types.CBufRet.f32 %1530, 1
  %1533 = extractvalue %dx.types.CBufRet.f32 %1530, 2
  %1534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %1535 = extractvalue %dx.types.CBufRet.f32 %1534, 0
  %1536 = extractvalue %dx.types.CBufRet.f32 %1534, 1
  %1537 = call float @dx.op.dot3.f32(i32 55, float %1531, float %1532, float %1533, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1538 = select i1 %125, float %1535, float %1531
  %1539 = select i1 %125, float %1537, float %1532
  %1540 = select i1 %125, float %1536, float %1533
  %1541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %1542 = extractvalue %dx.types.CBufRet.f32 %1541, 1
  %1543 = fcmp fast une float %1542, 0.000000e+00
  br i1 %1543, label %1544, label %1561

; <label>:1544                                    ; preds = %1526
  %1545 = fptoui float %36 to i32
  %1546 = fptoui float %37 to i32
  %1547 = lshr i32 %1545, 4
  %1548 = lshr i32 %1546, 4
  %1549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1550 = extractvalue %dx.types.CBufRet.f32 %1549, 0
  %1551 = fptoui float %1550 to i32
  %1552 = add i32 %1551, 15
  %1553 = lshr i32 %1552, 4
  %1554 = mul i32 %1553, %1548
  %1555 = add i32 %1554, %1547
  %1556 = shl i32 %1555, 3
  %1557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1556, i32 undef)  ; BufferLoad(srv,index,wot)
  %1558 = extractvalue %dx.types.ResRet.i32 %1557, 0
  %1559 = and i32 %1558, -268435456
  %1560 = icmp eq i32 %1559, -1342177280
  br i1 %1560, label %1566, label %1561

; <label>:1561                                    ; preds = %1544, %1526
  %1562 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %14, float %1503, float %1504, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1563 = extractvalue %dx.types.ResRet.f32 %1562, 0
  %1564 = extractvalue %dx.types.ResRet.f32 %1562, 1
  %1565 = extractvalue %dx.types.ResRet.f32 %1562, 2
  br label %1566

; <label>:1566                                    ; preds = %1561, %1544
  %1567 = phi float [ %1563, %1561 ], [ 0.000000e+00, %1544 ]
  %1568 = phi float [ %1564, %1561 ], [ 0.000000e+00, %1544 ]
  %1569 = phi float [ %1565, %1561 ], [ 0.000000e+00, %1544 ]
  %1570 = call float @dx.op.binary.f32(i32 36, float %1568, float %1569)  ; FMin(a,b)
  %1571 = call float @dx.op.binary.f32(i32 36, float %1567, float %1570)  ; FMin(a,b)
  %1572 = fcmp fast ogt float %1571, 0.000000e+00
  br i1 %1572, label %1573, label %1768, !dx.controlflow.hints !49

; <label>:1573                                    ; preds = %1566
  %1574 = fmul fast float %1567, %1538
  %1575 = fmul fast float %1568, %1539
  %1576 = fmul fast float %1569, %1540
  %1577 = fsub fast float %1527, %1488
  %1578 = fsub fast float %1528, %1487
  %1579 = fsub fast float %1529, %1486
  %1580 = call float @dx.op.dot3.f32(i32 55, float %1577, float %1578, float %1579, float %1577, float %1578, float %1579)  ; Dot3(ax,ay,az,bx,by,bz)
  %1581 = call float @dx.op.unary.f32(i32 25, float %1580)  ; Rsqrt(value)
  %1582 = fmul fast float %1581, %1577
  %1583 = fmul fast float %1581, %1578
  %1584 = fmul fast float %1581, %1579
  %1585 = call float @dx.op.dot3.f32(i32 55, float %1527, float %1528, float %1529, float %1495, float %1496, float %1497)  ; Dot3(ax,ay,az,bx,by,bz)
  %1586 = call float @dx.op.dot3.f32(i32 55, float %1485, float %1484, float %1483, float %1582, float %1583, float %1584)  ; Dot3(ax,ay,az,bx,by,bz)
  %1587 = call float @dx.op.unary.f32(i32 7, float %1585)  ; Saturate(value)
  %1588 = bitcast i32 %1519 to float
  %1589 = fmul fast float %1587, %1587
  %1590 = fmul fast float %1589, %1588
  %1591 = call float @dx.op.unary.f32(i32 7, float %1590)  ; Saturate(value)
  %1592 = fmul fast float %1591, %1587
  %1593 = call float @dx.op.dot3.f32(i32 55, float %1495, float %1496, float %1497, float %1582, float %1583, float %1584)  ; Dot3(ax,ay,az,bx,by,bz)
  %1594 = fmul fast float %1593, %1593
  %1595 = call float @dx.op.unary.f32(i32 6, float %1585)  ; FAbs(value)
  %1596 = fsub fast float 1.000000e+00, %1498
  %1597 = call float @dx.op.binary.f32(i32 35, float %1596, float 0x3F847AE140000000)  ; FMax(a,b)
  %1598 = fmul fast float %1597, %1597
  %1599 = fmul fast float %1598, %1598
  %1600 = fsub fast float 1.000000e+00, %1599
  %1601 = fmul fast float %1516, %1516
  %1602 = fmul fast float %1601, %1600
  %1603 = fadd fast float %1602, %1599
  %1604 = bitcast float %1603 to i32
  %1605 = ashr i32 %1604, 1
  %1606 = add nsw i32 %1605, 532487669
  %1607 = bitcast i32 %1606 to float
  %1608 = fadd fast float %1607, %1516
  %1609 = fmul fast float %1599, %1594
  %1610 = fsub fast float 1.000000e+00, %1594
  %1611 = fadd fast float %1610, %1609
  %1612 = fmul fast float %1595, %1595
  %1613 = fmul fast float %1612, %1600
  %1614 = fadd fast float %1613, %1599
  %1615 = bitcast float %1614 to i32
  %1616 = ashr i32 %1615, 1
  %1617 = add nsw i32 %1616, 532487669
  %1618 = bitcast i32 %1617 to float
  %1619 = fadd fast float %1618, %1595
  %1620 = fmul fast float %1611, %1611
  %1621 = fmul fast float %1620, %1608
  %1622 = fmul fast float %1621, %1619
  %1623 = fdiv fast float 0x3FF0A00000000000, %1622
  %1624 = fmul fast float %1623, %1599
  %1625 = call float @dx.op.unary.f32(i32 6, float %1586)  ; FAbs(value)
  %1626 = fsub fast float 1.000000e+00, %1625
  %1627 = bitcast float %1626 to i32
  %1628 = sitofp i32 %1627 to float
  %1629 = fmul fast float %1628, 5.000000e+00
  %1630 = fadd fast float %1629, 0xC1EFBF8940000000
  %1631 = fptosi float %1630 to i32
  %1632 = bitcast i32 %1631 to float
  %1633 = fsub fast float 1.000000e+00, %1489
  %1634 = fsub fast float 1.000000e+00, %1490
  %1635 = fsub fast float 1.000000e+00, %1514
  %1636 = fmul fast float %1632, %1633
  %1637 = fmul fast float %1632, %1634
  %1638 = fmul fast float %1632, %1635
  %1639 = fadd fast float %1636, %1489
  %1640 = fadd fast float %1637, %1490
  %1641 = fadd fast float %1638, %1514
  %1642 = fcmp fast ogt float %1157, 0.000000e+00
  br i1 %1642, label %1643, label %1666

; <label>:1643                                    ; preds = %1573
  %1644 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %13, float %1157, float %1625, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1645 = extractvalue %dx.types.ResRet.f32 %1644, 0
  %1646 = extractvalue %dx.types.ResRet.f32 %1644, 1
  %1647 = extractvalue %dx.types.ResRet.f32 %1644, 2
  %1648 = fadd fast float %1645, -5.000000e-01
  %1649 = fadd fast float %1646, -5.000000e-01
  %1650 = fadd fast float %1647, -5.000000e-01
  %1651 = fmul fast float %1489, 4.000000e+00
  %1652 = fmul fast float %1651, %1633
  %1653 = fmul fast float %1652, %1648
  %1654 = fmul fast float %1490, 4.000000e+00
  %1655 = fmul fast float %1654, %1634
  %1656 = fmul fast float %1655, %1649
  %1657 = fmul fast float %1514, 4.000000e+00
  %1658 = fmul fast float %1657, %1635
  %1659 = fmul fast float %1658, %1650
  %1660 = fadd fast float %1653, %1639
  %1661 = fadd fast float %1656, %1640
  %1662 = fadd fast float %1659, %1641
  %1663 = call float @dx.op.unary.f32(i32 7, float %1660)  ; Saturate(value)
  %1664 = call float @dx.op.unary.f32(i32 7, float %1661)  ; Saturate(value)
  %1665 = call float @dx.op.unary.f32(i32 7, float %1662)  ; Saturate(value)
  br label %1666

; <label>:1666                                    ; preds = %1643, %1573
  %1667 = phi float [ %1663, %1643 ], [ %1639, %1573 ]
  %1668 = phi float [ %1664, %1643 ], [ %1640, %1573 ]
  %1669 = phi float [ %1665, %1643 ], [ %1641, %1573 ]
  %1670 = fmul fast float %1585, 9.843750e-01
  %1671 = fmul fast float %1498, 9.843750e-01
  %1672 = fadd fast float %1670, 7.812500e-03
  %1673 = fadd fast float %1671, 7.812500e-03
  %1674 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %13, float %1672, float %1673, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1675 = extractvalue %dx.types.ResRet.f32 %1674, 2
  %1676 = extractvalue %dx.types.ResRet.f32 %1674, 3
  %1677 = fmul fast float %1675, %1489
  %1678 = fmul fast float %1675, %1490
  %1679 = fmul fast float %1675, %1514
  %1680 = fadd fast float %1677, %1676
  %1681 = fadd fast float %1678, %1676
  %1682 = fadd fast float %1679, %1676
  br i1 %1642, label %1683, label %1706

; <label>:1683                                    ; preds = %1666
  %1684 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %13, float %1157, float %1585, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1685 = extractvalue %dx.types.ResRet.f32 %1684, 0
  %1686 = extractvalue %dx.types.ResRet.f32 %1684, 1
  %1687 = extractvalue %dx.types.ResRet.f32 %1684, 2
  %1688 = fadd fast float %1685, -5.000000e-01
  %1689 = fadd fast float %1686, -5.000000e-01
  %1690 = fadd fast float %1687, -5.000000e-01
  %1691 = fmul fast float %1489, 4.000000e+00
  %1692 = fmul fast float %1691, %1633
  %1693 = fmul fast float %1692, %1688
  %1694 = fmul fast float %1490, 4.000000e+00
  %1695 = fmul fast float %1694, %1634
  %1696 = fmul fast float %1695, %1689
  %1697 = fmul fast float %1514, 4.000000e+00
  %1698 = fmul fast float %1697, %1635
  %1699 = fmul fast float %1698, %1690
  %1700 = fadd fast float %1693, %1680
  %1701 = fadd fast float %1696, %1681
  %1702 = fadd fast float %1699, %1682
  %1703 = call float @dx.op.unary.f32(i32 7, float %1700)  ; Saturate(value)
  %1704 = call float @dx.op.unary.f32(i32 7, float %1701)  ; Saturate(value)
  %1705 = call float @dx.op.unary.f32(i32 7, float %1702)  ; Saturate(value)
  br label %1706

; <label>:1706                                    ; preds = %1683, %1666
  %1707 = phi float [ %1703, %1683 ], [ %1680, %1666 ]
  %1708 = phi float [ %1704, %1683 ], [ %1681, %1666 ]
  %1709 = phi float [ %1705, %1683 ], [ %1682, %1666 ]
  %1710 = call float @dx.op.binary.f32(i32 35, float %1708, float %1709)  ; FMax(a,b)
  %1711 = call float @dx.op.binary.f32(i32 35, float %1707, float %1710)  ; FMax(a,b)
  %1712 = fsub fast float 1.000000e+00, %1711
  %1713 = fmul fast float %1667, %1624
  %1714 = fmul fast float %1668, %1624
  %1715 = fmul fast float %1669, %1624
  %1716 = call float @dx.op.dot3.f32(i32 55, float %1492, float %1493, float %1494, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1717 = fcmp fast ogt float %1716, 0x3E7FF19E20000000
  %1718 = fdiv fast float 1.000000e+00, %1716
  %1719 = select i1 %1717, float %1718, float 0.000000e+00
  %1720 = fmul fast float %1719, %1492
  %1721 = fmul fast float %1719, %1493
  %1722 = fmul fast float %1719, %1494
  %1723 = fadd fast float %1720, -1.000000e+00
  %1724 = fadd fast float %1721, -1.000000e+00
  %1725 = fadd fast float %1722, -1.000000e+00
  %1726 = fmul fast float %1723, 5.000000e-01
  %1727 = fmul fast float %1724, 5.000000e-01
  %1728 = fmul fast float %1725, 5.000000e-01
  %1729 = fadd fast float %1726, 1.000000e+00
  %1730 = fadd fast float %1727, 1.000000e+00
  %1731 = fadd fast float %1728, 1.000000e+00
  %1732 = fsub fast float 1.000000e+00, %1586
  %1733 = bitcast float %1732 to i32
  %1734 = sitofp i32 %1733 to float
  %1735 = fmul fast float %1734, 5.000000e+00
  %1736 = fadd fast float %1735, 0xC1EFBF8940000000
  %1737 = fptosi float %1736 to i32
  %1738 = bitcast i32 %1737 to float
  %1739 = fmul fast float %1738, %1156
  %1740 = fmul fast float %1712, %1739
  %1741 = fmul fast float %1740, %1729
  %1742 = fmul fast float %1740, %1730
  %1743 = fmul fast float %1740, %1731
  %1744 = fadd fast float %1741, %1713
  %1745 = fadd fast float %1742, %1714
  %1746 = fadd fast float %1743, %1715
  %1747 = fmul fast float %1592, %1574
  %1748 = fmul fast float %1747, %1744
  %1749 = fmul fast float %1592, %1575
  %1750 = fmul fast float %1749, %1745
  %1751 = fmul fast float %1592, %1576
  %1752 = fmul fast float %1751, %1746
  %1753 = fmul fast float %1574, %1177
  %1754 = fmul fast float %1753, %1592
  %1755 = fmul fast float %1754, %1712
  %1756 = fmul fast float %1575, %1177
  %1757 = fmul fast float %1756, %1592
  %1758 = fmul fast float %1757, %1712
  %1759 = fmul fast float %1576, %1177
  %1760 = fmul fast float %1759, %1592
  %1761 = fmul fast float %1760, %1712
  %1762 = fadd fast float %1748, %1158
  %1763 = fmul fast float %1762, %1177
  %1764 = fadd fast float %1750, %1159
  %1765 = fmul fast float %1764, %1177
  %1766 = fadd fast float %1752, %1160
  %1767 = fmul fast float %1766, %1177
  br label %1768

; <label>:1768                                    ; preds = %1706, %1566, %1482
  %1769 = phi float [ %1520, %1482 ], [ %1520, %1566 ], [ %1763, %1706 ]
  %1770 = phi float [ %1521, %1482 ], [ %1521, %1566 ], [ %1765, %1706 ]
  %1771 = phi float [ %1522, %1482 ], [ %1522, %1566 ], [ %1767, %1706 ]
  %1772 = phi float [ 0.000000e+00, %1482 ], [ 0.000000e+00, %1566 ], [ %1755, %1706 ]
  %1773 = phi float [ 0.000000e+00, %1482 ], [ 0.000000e+00, %1566 ], [ %1758, %1706 ]
  %1774 = phi float [ 0.000000e+00, %1482 ], [ 0.000000e+00, %1566 ], [ %1761, %1706 ]
  %1775 = call float @dx.op.unary.f32(i32 24, float %1492)  ; Sqrt(value)
  %1776 = call float @dx.op.unary.f32(i32 24, float %1493)  ; Sqrt(value)
  %1777 = call float @dx.op.unary.f32(i32 24, float %1494)  ; Sqrt(value)
  %1778 = fmul fast float %1775, %1772
  %1779 = fmul fast float %1776, %1773
  %1780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1781 = extractvalue %dx.types.CBufRet.f32 %1780, 0
  br i1 %125, label %1782, label %1806

; <label>:1782                                    ; preds = %1768
  %1783 = fadd fast float %1774, %1154
  %1784 = fmul fast float %1783, %1155
  %1785 = fsub fast float 1.000000e+00, %1155
  %1786 = call float @dx.op.unary.f32(i32 7, float %1785)  ; Saturate(value)
  %1787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1788 = extractvalue %dx.types.CBufRet.f32 %1787, 3
  %1789 = fmul fast float %1788, %1786
  %1790 = fsub fast float 1.000000e+00, %1516
  %1791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1792 = extractvalue %dx.types.CBufRet.f32 %1791, 0
  %1793 = fmul fast float %1792, %1790
  %1794 = extractvalue %dx.types.CBufRet.f32 %1791, 2
  %1795 = fmul fast float %1513, %1794
  %1796 = fadd fast float %1779, %1778
  %1797 = fmul fast float %1781, %1796
  %1798 = extractvalue %dx.types.CBufRet.f32 %1787, 1
  %1799 = fadd fast float %1789, %1784
  %1800 = fsub fast float %1799, %1793
  %1801 = fadd fast float %1800, %1795
  %1802 = fsub fast float %1801, %1798
  %1803 = extractvalue %dx.types.CBufRet.f32 %1787, 2
  %1804 = fmul fast float %1802, %1803
  %1805 = call float @dx.op.unary.f32(i32 7, float %1804)  ; Saturate(value)
  br label %1822

; <label>:1806                                    ; preds = %1768
  %1807 = fmul fast float %1777, %1774
  %1808 = fmul fast float %1781, %1778
  %1809 = fmul fast float %1781, %1779
  %1810 = fmul fast float %1807, %1781
  %1811 = add i32 %19, 116
  %1812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %1811, i32 undef)  ; BufferLoad(srv,index,wot)
  %1813 = extractvalue %dx.types.ResRet.i32 %1812, 0
  %1814 = and i32 %1813, 32
  %1815 = icmp eq i32 %1814, 0
  br i1 %1815, label %1822, label %1816

; <label>:1816                                    ; preds = %1806
  %1817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1818 = extractvalue %dx.types.CBufRet.f32 %1817, 0
  %1819 = fmul fast float %1818, 0x3FE99999A0000000
  %1820 = fadd fast float %1818, %1808
  %1821 = fadd fast float %1819, %1810
  br label %1822

; <label>:1822                                    ; preds = %1816, %1806, %1782
  %1823 = phi float [ %1797, %1782 ], [ %1820, %1816 ], [ %1808, %1806 ]
  %1824 = phi float [ %1805, %1782 ], [ %1809, %1816 ], [ %1809, %1806 ]
  %1825 = phi float [ 1.000000e+00, %1782 ], [ %1821, %1816 ], [ %1810, %1806 ]
  %1826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1827 = extractvalue %dx.types.CBufRet.f32 %1826, 0
  %1828 = fmul fast float %1827, %1770
  %1829 = fmul fast float %1827, %1771
  %1830 = fadd fast float %1770, %1769
  %1831 = select i1 %125, float %1830, float %1769
  %1832 = fmul float %1831, %1827
  %1833 = select i1 %125, float 0.000000e+00, float %1828
  %1834 = select i1 %125, float 0.000000e+00, float %1829
  %1835 = fmul fast float %1823, %1775
  %1836 = fmul fast float %1824, %1776
  %1837 = fmul fast float %1825, %1777
  %1838 = fadd fast float %1832, %1835
  %1839 = fadd fast float %1833, %1836
  %1840 = fadd fast float %1834, %1837
  %1841 = select i1 %125, float %1824, float %1839
  %1842 = select i1 %125, float %1825, float %1840
  %1843 = call float @dx.op.binary.f32(i32 36, float %1838, float 3.225500e+04)  ; FMin(a,b)
  %1844 = call float @dx.op.binary.f32(i32 36, float %1841, float 3.225500e+04)  ; FMin(a,b)
  %1845 = call float @dx.op.binary.f32(i32 36, float %1842, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1843)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1844)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1845)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!28}
!dx.entryPoints = !{!29}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !21, !24}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20}
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
!20 = !{i32 13, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 48, i32 1, i32 2, i32 0, !7}
!21 = !{!22, !23}
!22 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!23 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!24 = !{!25, !26, !27}
!25 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!26 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!27 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!28 = !{[24 x i32] [i32 22, i32 4, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7]}
!29 = !{void ()* @ps_main, !"ps_main", !30, !4, !48}
!30 = !{!31, !46, null}
!31 = !{!32, !35, !37, !38, !40, !42, !44, !45}
!32 = !{i32 0, !"SV_Position", i8 9, i8 3, !33, i8 4, i32 1, i8 4, i32 0, i8 0, !34}
!33 = !{i32 0}
!34 = !{i32 3, i32 11}
!35 = !{i32 1, !"TEXCOORDS", i8 9, i8 0, !33, i8 2, i32 1, i8 2, i32 1, i8 0, !36}
!36 = !{i32 3, i32 3}
!37 = !{i32 2, !"LMAPCOORDS", i8 9, i8 0, !33, i8 2, i32 1, i8 3, i32 2, i8 0, null}
!38 = !{i32 3, !"NORMAL", i8 9, i8 0, !33, i8 2, i32 1, i8 3, i32 3, i8 0, !39}
!39 = !{i32 3, i32 7}
!40 = !{i32 4, !"TANGENT", i8 9, i8 0, !33, i8 2, i32 1, i8 4, i32 4, i8 0, !41}
!41 = !{i32 3, i32 15}
!42 = !{i32 5, !"MATERIAL_DATA_OFFSET", i8 5, i8 0, !33, i8 1, i32 1, i8 1, i32 5, i8 0, !43}
!43 = !{i32 3, i32 1}
!44 = !{i32 6, !"SV_IsFrontFace", i8 5, i8 13, !33, i8 1, i32 1, i8 1, i32 5, i8 1, !43}
!45 = !{i32 7, !"SV_SampleIndex", i8 5, i8 12, !33, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!46 = !{!47}
!47 = !{i32 0, !"SV_Target", i8 9, i8 16, !33, i8 0, i32 1, i8 4, i32 0, i8 0, !41}
!48 = !{i32 0, i64 24}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 1}

