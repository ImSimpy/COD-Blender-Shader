;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy w
; COLOR                    0   xyzw        1     NONE   float       
; TEXCOORDS                0   xy          2     NONE   float   xy  
; LMAPCOORDS               0   xyz         3     NONE   float       
; NORMAL                   0   xyz         4     NONE   float   xyz 
; TANGENT                  0   xyzw        5     NONE   float   xyzw
; MATERIAL_DATA_OFFSET     0   x           6     NONE    uint   x   
; TRANSIENT_INDEX          0    y          6     NONE    uint       
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 6e4e560480ff14eb7b008b3680ab948a
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
;                                   texture     f32          2d     T13     t48,space2     1
;
;
; ViewId state:
;
; Number of inputs: 26, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 8, 9, 16, 17, 18, 20, 21, 22, 23, 24 }
;   output 1 depends on inputs: { 0, 1, 3, 8, 9, 16, 17, 18, 20, 21, 22, 23, 24 }
;   output 2 depends on inputs: { 0, 1, 3, 8, 9, 16, 17, 18, 20, 21, 22, 23, 24 }
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
  %18 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %19 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %20 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %21 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %33 = extractvalue %dx.types.CBufRet.f32 %32, 0
  %34 = fmul fast float %33, %27
  %35 = fmul fast float %33, %28
  %36 = fmul fast float %23, %20
  %37 = fmul fast float %24, %19
  %38 = fsub fast float %36, %37
  %39 = fmul fast float %24, %18
  %40 = fmul fast float %22, %20
  %41 = fsub fast float %39, %40
  %42 = fmul fast float %22, %19
  %43 = fmul fast float %23, %18
  %44 = fsub fast float %42, %43
  %45 = fmul fast float %38, %21
  %46 = fmul fast float %41, %21
  %47 = fmul fast float %44, %21
  %48 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %49 = extractvalue %dx.types.CBufRet.f32 %48, 2
  %50 = extractvalue %dx.types.CBufRet.f32 %48, 3
  %51 = fmul fast float %49, 2.000000e+00
  %52 = fmul fast float %51, %34
  %53 = fmul fast float %50, 2.000000e+00
  %54 = fmul fast float %53, %35
  %55 = fsub fast float 1.000000e+00, %52
  %56 = fsub fast float 1.000000e+00, %54
  %57 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %58 = extractvalue %dx.types.CBufRet.f32 %57, 0
  %59 = extractvalue %dx.types.CBufRet.f32 %57, 1
  %60 = extractvalue %dx.types.CBufRet.f32 %57, 2
  %61 = fmul fast float %55, %58
  %62 = fmul fast float %55, %59
  %63 = fmul fast float %55, %60
  %64 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %65 = extractvalue %dx.types.CBufRet.f32 %64, 0
  %66 = extractvalue %dx.types.CBufRet.f32 %64, 1
  %67 = extractvalue %dx.types.CBufRet.f32 %64, 2
  %68 = fmul fast float %56, %65
  %69 = fmul fast float %56, %66
  %70 = fmul fast float %56, %67
  %71 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %72 = extractvalue %dx.types.CBufRet.f32 %71, 0
  %73 = extractvalue %dx.types.CBufRet.f32 %71, 1
  %74 = extractvalue %dx.types.CBufRet.f32 %71, 2
  %75 = fadd fast float %68, %72
  %76 = fadd fast float %75, %61
  %77 = fadd fast float %69, %73
  %78 = fadd fast float %77, %62
  %79 = fadd fast float %70, %74
  %80 = fadd fast float %79, %63
  %81 = fmul fast float %76, %29
  %82 = fmul fast float %78, %29
  %83 = fmul fast float %80, %29
  %84 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %85 = extractvalue %dx.types.CBufRet.f32 %84, 2
  %86 = extractvalue %dx.types.CBufRet.f32 %84, 3
  %87 = fmul fast float %85, %34
  %88 = fmul fast float %86, %35
  %89 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %90 = extractvalue %dx.types.ResRet.i32 %89, 0
  %91 = and i32 %90, 114688
  %92 = icmp ne i32 %91, 0
  %93 = select i1 %92, float %87, float 0.000000e+00
  %94 = select i1 %92, float %88, float 0.000000e+00
  %95 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %14, float %93, float %94, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %96 = extractvalue %dx.types.ResRet.f32 %95, 0
  %97 = fmul fast float %96, 2.550000e+02
  %98 = fptoui float %97 to i32
  %99 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %100 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %101 = extractvalue %dx.types.CBufRet.i32 %100, 3
  %102 = and i32 %101, 3
  %103 = icmp ne i32 %102, 0
  %104 = and i32 %101, 4
  %105 = icmp ne i32 %104, 0
  %106 = and i1 %103, %105
  br i1 %106, label %107, label %118

; <label>:107                                     ; preds = %0
  %108 = extractvalue %dx.types.CBufRet.f32 %99, 3
  %109 = fmul fast float %108, %35
  %110 = extractvalue %dx.types.CBufRet.f32 %99, 2
  %111 = fmul fast float %110, %34
  %112 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %13, float %111, float %109, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %113 = extractvalue %dx.types.ResRet.f32 %112, 0
  %114 = fsub fast float 1.000000e+00, %113
  %115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %116 = extractvalue %dx.types.CBufRet.f32 %115, 0
  %117 = fcmp fast olt float %114, %116
  br label %121

; <label>:118                                     ; preds = %0
  %119 = icmp eq i32 %104, 0
  %120 = and i1 %103, %119
  br label %121

; <label>:121                                     ; preds = %118, %107
  %122 = phi i1 [ %117, %107 ], [ %120, %118 ]
  %123 = add i32 %17, 60
  %124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %123, i32 undef)  ; BufferLoad(srv,index,wot)
  %125 = extractvalue %dx.types.ResRet.i32 %124, 0
  %126 = shl i32 %125, 4
  %127 = and i32 %126, 32752
  %128 = call float @dx.op.legacyF16ToF32(i32 131, i32 %127)  ; LegacyF16ToF32(value)
  %129 = lshr i32 %125, 7
  %130 = and i32 %129, 32752
  %131 = call float @dx.op.legacyF16ToF32(i32 131, i32 %130)  ; LegacyF16ToF32(value)
  %132 = lshr i32 %125, 22
  %133 = shl nuw nsw i32 %132, 5
  %134 = call float @dx.op.legacyF16ToF32(i32 131, i32 %133)  ; LegacyF16ToF32(value)
  %135 = add i32 %17, 72
  %136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %135, i32 undef)  ; BufferLoad(srv,index,wot)
  %137 = extractvalue %dx.types.ResRet.i32 %136, 0
  %138 = and i32 %137, 255
  %139 = uitofp i32 %138 to float
  %140 = fmul fast float %139, 0x3F70101020000000
  %141 = lshr i32 %137, 8
  %142 = and i32 %141, 255
  %143 = uitofp i32 %142 to float
  %144 = fmul fast float %143, 0x3F70101020000000
  %145 = lshr i32 %137, 16
  %146 = and i32 %145, 255
  %147 = uitofp i32 %146 to float
  %148 = fmul fast float %147, 0x3F70101020000000
  %149 = add i32 %17, 36
  %150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %149, i32 undef)  ; BufferLoad(srv,index,wot)
  %151 = extractvalue %dx.types.ResRet.i32 %150, 0
  %152 = add i32 %17, 96
  %153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %152, i32 undef)  ; BufferLoad(srv,index,wot)
  %154 = extractvalue %dx.types.ResRet.i32 %153, 0
  %155 = add i32 %17, 24
  %156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %155, i32 undef)  ; BufferLoad(srv,index,wot)
  %157 = extractvalue %dx.types.ResRet.i32 %156, 0
  %158 = add i32 %17, 28
  %159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %158, i32 undef)  ; BufferLoad(srv,index,wot)
  %160 = extractvalue %dx.types.ResRet.i32 %159, 0
  %161 = or i32 %160, %157
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %623, label %163

; <label>:163                                     ; preds = %121
  %164 = lshr i32 %154, 16
  %165 = call float @dx.op.legacyF16ToF32(i32 131, i32 %164)  ; LegacyF16ToF32(value)
  %166 = fmul fast float %165, 0x3F50624DE0000000
  %167 = and i32 %154, 65535
  %168 = call float @dx.op.legacyF16ToF32(i32 131, i32 %167)  ; LegacyF16ToF32(value)
  %169 = fmul fast float %168, 0x3F50624DE0000000
  %170 = lshr i32 %151, 16
  %171 = call float @dx.op.legacyF16ToF32(i32 131, i32 %170)  ; LegacyF16ToF32(value)
  %172 = and i32 %151, 65535
  %173 = call float @dx.op.legacyF16ToF32(i32 131, i32 %172)  ; LegacyF16ToF32(value)
  %174 = add i32 %17, 92
  %175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %174, i32 undef)  ; BufferLoad(srv,index,wot)
  %176 = extractvalue %dx.types.ResRet.i32 %175, 0
  %177 = lshr i32 %176, 16
  %178 = call float @dx.op.legacyF16ToF32(i32 131, i32 %177)  ; LegacyF16ToF32(value)
  %179 = fmul fast float %178, 0x3F50624DE0000000
  %180 = add i32 %17, 40
  %181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %180, i32 undef)  ; BufferLoad(srv,index,wot)
  %182 = extractvalue %dx.types.ResRet.i32 %181, 0
  %183 = lshr i32 %182, 16
  %184 = and i32 %183, 255
  %185 = lshr i32 %182, 24
  %186 = add i32 %17, 100
  %187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %186, i32 undef)  ; BufferLoad(srv,index,wot)
  %188 = extractvalue %dx.types.ResRet.i32 %187, 0
  %189 = and i32 %188, 65535
  %190 = call float @dx.op.legacyF16ToF32(i32 131, i32 %189)  ; LegacyF16ToF32(value)
  %191 = lshr i32 %188, 16
  %192 = call float @dx.op.legacyF16ToF32(i32 131, i32 %191)  ; LegacyF16ToF32(value)
  %193 = add i32 %17, 32
  %194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %193, i32 undef)  ; BufferLoad(srv,index,wot)
  %195 = extractvalue %dx.types.ResRet.i32 %194, 0
  %196 = lshr i32 %195, 22
  %197 = shl nuw nsw i32 %196, 5
  %198 = call float @dx.op.legacyF16ToF32(i32 131, i32 %197)  ; LegacyF16ToF32(value)
  %199 = shl i32 %195, 4
  %200 = and i32 %199, 32752
  %201 = call float @dx.op.legacyF16ToF32(i32 131, i32 %200)  ; LegacyF16ToF32(value)
  %202 = lshr i32 %195, 7
  %203 = and i32 %202, 32752
  %204 = call float @dx.op.legacyF16ToF32(i32 131, i32 %203)  ; LegacyF16ToF32(value)
  %205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %206 = extractvalue %dx.types.CBufRet.f32 %205, 3
  %207 = fmul fast float %206, 1.000000e+03
  %208 = fmul fast float %169, %207
  %209 = call float @dx.op.unary.f32(i32 22, float %208)  ; Frc(value)
  %210 = fadd fast float %209, %173
  %211 = fmul fast float %166, %207
  %212 = call float @dx.op.unary.f32(i32 22, float %211)  ; Frc(value)
  %213 = fadd fast float %212, %171
  %214 = fmul fast float %179, %207
  %215 = call float @dx.op.unary.f32(i32 22, float %214)  ; Frc(value)
  %216 = fmul fast float %215, 0x401921FB60000000
  %217 = fadd fast float %216, %198
  %218 = call float @dx.op.unary.f32(i32 13, float %217)  ; Sin(value)
  %219 = call float @dx.op.unary.f32(i32 12, float %217)  ; Cos(value)
  %220 = fsub fast float -0.000000e+00, %218
  %221 = fadd fast float %25, -5.000000e-01
  %222 = fadd fast float %26, -5.000000e-01
  %223 = fmul fast float %190, %221
  %224 = fmul fast float %192, %222
  %225 = fadd fast float %223, 5.000000e-01
  %226 = fadd fast float %224, 5.000000e-01
  %227 = fmul fast float %201, %225
  %228 = fmul fast float %204, %226
  %229 = fmul fast float %219, %227
  %230 = call float @dx.op.tertiary.f32(i32 46, float %220, float %228, float %229)  ; FMad(a,b,c)
  %231 = fmul fast float %218, %227
  %232 = call float @dx.op.tertiary.f32(i32 46, float %219, float %228, float %231)  ; FMad(a,b,c)
  %233 = fadd fast float %210, %230
  %234 = fadd fast float %213, %232
  %235 = icmp ugt i32 %184, 1
  %236 = icmp ugt i32 %182, 33554431
  %237 = or i1 %236, %235
  br i1 %237, label %238, label %263

; <label>:238                                     ; preds = %163
  %239 = add i32 %17, 84
  %240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %239, i32 undef)  ; BufferLoad(srv,index,wot)
  %241 = extractvalue %dx.types.ResRet.i32 %240, 0
  %242 = lshr i32 %241, 16
  %243 = call float @dx.op.legacyF16ToF32(i32 131, i32 %242)  ; LegacyF16ToF32(value)
  %244 = fmul fast float %206, %243
  %245 = call float @dx.op.unary.f32(i32 22, float %244)  ; Frc(value)
  %246 = mul nuw nsw i32 %184, %185
  %247 = uitofp i32 %246 to float
  %248 = fmul fast float %245, %247
  %249 = call float @dx.op.unary.f32(i32 27, float %248)  ; Round_ni(value)
  %250 = fptoui float %249 to i32
  %251 = urem i32 %250, %184
  %252 = udiv i32 %250, %185
  %253 = call float @dx.op.unary.f32(i32 22, float %233)  ; Frc(value)
  %254 = call float @dx.op.unary.f32(i32 22, float %234)  ; Frc(value)
  %255 = uitofp i32 %251 to float
  %256 = uitofp i32 %252 to float
  %257 = fadd fast float %253, %255
  %258 = fadd fast float %254, %256
  %259 = uitofp i32 %184 to float
  %260 = uitofp i32 %185 to float
  %261 = fdiv fast float %257, %259
  %262 = fdiv fast float %258, %260
  br label %263

; <label>:263                                     ; preds = %238, %163
  %264 = phi float [ %261, %238 ], [ %233, %163 ]
  %265 = phi float [ %262, %238 ], [ %234, %163 ]
  %266 = and i32 %157, 16
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %464, label %268

; <label>:268                                     ; preds = %263
  %269 = add i32 %17, 120
  %270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %269, i32 undef)  ; BufferLoad(srv,index,wot)
  %271 = extractvalue %dx.types.ResRet.i32 %270, 0
  %272 = add i32 %271, 0
  %273 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %272, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %274 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %273, %dx.types.Handle %30, float %264, float %265, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %275 = extractvalue %dx.types.ResRet.f32 %274, 0
  %276 = extractvalue %dx.types.ResRet.f32 %274, 1
  %277 = extractvalue %dx.types.ResRet.f32 %274, 2
  %278 = extractvalue %dx.types.ResRet.f32 %274, 3
  %279 = and i32 %182, 255
  %280 = uitofp i32 %279 to float
  %281 = lshr i32 %182, 8
  %282 = and i32 %281, 255
  %283 = uitofp i32 %282 to float
  %284 = fmul fast float %278, %280
  %285 = fadd fast float %284, %283
  %286 = fmul fast float %285, 0x3F70101000000000
  %287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %155, i32 undef)  ; BufferLoad(srv,index,wot)
  %288 = extractvalue %dx.types.ResRet.i32 %287, 0
  %289 = and i32 %288, 512
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %299, label %291

; <label>:291                                     ; preds = %268
  %292 = add i32 %17, 140
  %293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %292, i32 undef)  ; BufferLoad(srv,index,wot)
  %294 = extractvalue %dx.types.ResRet.i32 %293, 0
  %295 = add i32 %294, 0
  %296 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %295, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %297 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %296, %dx.types.Handle %31, float %264, float %265, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %298 = extractvalue %dx.types.ResRet.f32 %297, 0
  br label %299

; <label>:299                                     ; preds = %291, %268
  %300 = phi float [ %298, %291 ], [ 1.000000e+00, %268 ]
  %301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %155, i32 undef)  ; BufferLoad(srv,index,wot)
  %302 = extractvalue %dx.types.ResRet.i32 %301, 0
  %303 = and i32 %302, 33554432
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %411, label %305

; <label>:305                                     ; preds = %299
  %306 = add i32 %17, 80
  %307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %308 = extractvalue %dx.types.ResRet.i32 %307, 0
  %309 = and i32 %308, 65535
  %310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %309)  ; LegacyF16ToF32(value)
  %311 = lshr i32 %308, 16
  %312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %311)  ; LegacyF16ToF32(value)
  %313 = add i32 %17, 84
  %314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %315 = extractvalue %dx.types.ResRet.i32 %314, 0
  %316 = and i32 %315, 65535
  %317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %316)  ; LegacyF16ToF32(value)
  %318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %135, i32 undef)  ; BufferLoad(srv,index,wot)
  %319 = extractvalue %dx.types.ResRet.i32 %318, 0
  %320 = lshr i32 %319, 24
  %321 = uitofp i32 %320 to float
  %322 = fmul fast float %321, 0x3F70101020000000
  %323 = and i32 %319, 255
  %324 = uitofp i32 %323 to float
  %325 = fmul fast float %324, 0x3F70101020000000
  %326 = lshr i32 %319, 8
  %327 = and i32 %326, 255
  %328 = uitofp i32 %327 to float
  %329 = fmul fast float %328, 0x3F70101020000000
  %330 = lshr i32 %319, 16
  %331 = and i32 %330, 255
  %332 = uitofp i32 %331 to float
  %333 = fmul fast float %332, 0x3F70101020000000
  %334 = add i32 %17, 76
  %335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %334, i32 undef)  ; BufferLoad(srv,index,wot)
  %336 = extractvalue %dx.types.ResRet.i32 %335, 0
  %337 = lshr i32 %336, 24
  %338 = uitofp i32 %337 to float
  %339 = fmul fast float %338, 0x3F70101020000000
  %340 = and i32 %336, 255
  %341 = uitofp i32 %340 to float
  %342 = fmul fast float %341, 0x3F70101020000000
  %343 = lshr i32 %336, 8
  %344 = and i32 %343, 255
  %345 = uitofp i32 %344 to float
  %346 = fmul fast float %345, 0x3F70101020000000
  %347 = lshr i32 %336, 16
  %348 = and i32 %347, 255
  %349 = uitofp i32 %348 to float
  %350 = fmul fast float %349, 0x3F70101020000000
  %351 = bitcast float %275 to i32
  %352 = ashr i32 %351, 1
  %353 = sub nsw i32 1597463174, %352
  %354 = bitcast i32 %353 to float
  %355 = fmul fast float %275, 5.000000e-01
  %356 = fmul fast float %354, %354
  %357 = fmul fast float %356, %355
  %358 = fsub fast float 1.500000e+00, %357
  %359 = fmul fast float %354, %275
  %360 = fmul fast float %359, %358
  %361 = bitcast float %276 to i32
  %362 = ashr i32 %361, 1
  %363 = sub nsw i32 1597463174, %362
  %364 = bitcast i32 %363 to float
  %365 = fmul fast float %276, 5.000000e-01
  %366 = fmul fast float %364, %364
  %367 = fmul fast float %366, %365
  %368 = fsub fast float 1.500000e+00, %367
  %369 = fmul fast float %364, %276
  %370 = fmul fast float %369, %368
  %371 = bitcast float %277 to i32
  %372 = ashr i32 %371, 1
  %373 = sub nsw i32 1597463174, %372
  %374 = bitcast i32 %373 to float
  %375 = fmul fast float %277, 5.000000e-01
  %376 = fmul fast float %374, %374
  %377 = fmul fast float %376, %375
  %378 = fsub fast float 1.500000e+00, %377
  %379 = fmul fast float %374, %277
  %380 = fmul fast float %379, %378
  %381 = fsub fast float %360, %342
  %382 = fsub fast float %370, %346
  %383 = fsub fast float %380, %350
  %384 = fmul fast float %381, %310
  %385 = fmul fast float %382, %312
  %386 = fmul fast float %383, %317
  %387 = fadd fast float %384, %325
  %388 = fadd fast float %385, %329
  %389 = fadd fast float %386, %333
  %390 = call float @dx.op.unary.f32(i32 7, float %387)  ; Saturate(value)
  %391 = call float @dx.op.unary.f32(i32 7, float %388)  ; Saturate(value)
  %392 = call float @dx.op.unary.f32(i32 7, float %389)  ; Saturate(value)
  %393 = fmul fast float %390, %390
  %394 = fmul fast float %391, %391
  %395 = fmul fast float %392, %392
  %396 = fsub fast float %393, %275
  %397 = fsub fast float %394, %276
  %398 = fsub fast float %395, %277
  %399 = fmul fast float %396, %300
  %400 = fmul fast float %397, %300
  %401 = fmul fast float %398, %300
  %402 = fadd fast float %399, %275
  %403 = fadd fast float %400, %276
  %404 = fadd fast float %401, %277
  %405 = fadd fast float %322, %286
  %406 = fsub fast float %405, %339
  %407 = call float @dx.op.unary.f32(i32 7, float %406)  ; Saturate(value)
  %408 = fsub fast float %407, %286
  %409 = fmul fast float %408, %300
  %410 = fadd fast float %409, %286
  br label %464

; <label>:411                                     ; preds = %299
  %412 = and i32 %302, 134217728
  %413 = icmp eq i32 %412, 0
  br i1 %413, label %448, label %414

; <label>:414                                     ; preds = %411
  %415 = call float @dx.op.unary.f32(i32 24, float %140)  ; Sqrt(value)
  %416 = call float @dx.op.unary.f32(i32 24, float %144)  ; Sqrt(value)
  %417 = call float @dx.op.unary.f32(i32 24, float %148)  ; Sqrt(value)
  %418 = fadd fast float %415, -5.000000e-01
  %419 = fadd fast float %416, -5.000000e-01
  %420 = fadd fast float %417, -5.000000e-01
  %421 = fmul fast float %418, %300
  %422 = fmul fast float %419, %300
  %423 = fmul fast float %420, %300
  %424 = fadd fast float %421, 5.000000e-01
  %425 = fadd fast float %422, 5.000000e-01
  %426 = fadd fast float %423, 5.000000e-01
  %427 = call float @dx.op.unary.f32(i32 24, float %275)  ; Sqrt(value)
  %428 = call float @dx.op.unary.f32(i32 24, float %276)  ; Sqrt(value)
  %429 = call float @dx.op.unary.f32(i32 24, float %277)  ; Sqrt(value)
  %430 = fmul fast float %424, 2.000000e+00
  %431 = fsub fast float 1.000000e+00, %430
  %432 = fmul fast float %431, %427
  %433 = fadd fast float %432, %430
  %434 = fmul fast float %433, %427
  %435 = fmul fast float %425, 2.000000e+00
  %436 = fsub fast float 1.000000e+00, %435
  %437 = fmul fast float %436, %428
  %438 = fadd fast float %437, %435
  %439 = fmul fast float %438, %428
  %440 = fmul fast float %426, 2.000000e+00
  %441 = fsub fast float 1.000000e+00, %440
  %442 = fmul fast float %441, %429
  %443 = fadd fast float %442, %440
  %444 = fmul fast float %443, %429
  %445 = fmul fast float %434, %434
  %446 = fmul fast float %439, %439
  %447 = fmul fast float %444, %444
  br label %464

; <label>:448                                     ; preds = %411
  %449 = fmul fast float %140, %140
  %450 = fmul fast float %144, %144
  %451 = fmul fast float %148, %148
  %452 = fadd fast float %449, -1.000000e+00
  %453 = fadd fast float %450, -1.000000e+00
  %454 = fadd fast float %451, -1.000000e+00
  %455 = fmul fast float %300, %452
  %456 = fmul fast float %300, %453
  %457 = fmul fast float %300, %454
  %458 = fadd fast float %455, 1.000000e+00
  %459 = fadd fast float %456, 1.000000e+00
  %460 = fadd fast float %457, 1.000000e+00
  %461 = fmul fast float %458, %275
  %462 = fmul fast float %459, %276
  %463 = fmul fast float %460, %277
  br label %464

; <label>:464                                     ; preds = %448, %414, %305, %263
  %465 = phi float [ %410, %305 ], [ %286, %414 ], [ %286, %448 ], [ 0x3FA23C0BE0000000, %263 ]
  %466 = phi float [ %402, %305 ], [ %445, %414 ], [ %461, %448 ], [ 1.000000e+00, %263 ]
  %467 = phi float [ %403, %305 ], [ %446, %414 ], [ %462, %448 ], [ 1.000000e+00, %263 ]
  %468 = phi float [ %404, %305 ], [ %447, %414 ], [ %463, %448 ], [ 1.000000e+00, %263 ]
  %469 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %470 = extractvalue %dx.types.CBufRet.i32 %469, 1
  %471 = and i32 %470, 1
  %472 = icmp ne i32 %471, 0
  %473 = add i32 %17, 116
  %474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %473, i32 undef)  ; BufferLoad(srv,index,wot)
  %475 = extractvalue %dx.types.ResRet.i32 %474, 0
  %476 = and i32 %475, 32
  %477 = icmp ne i32 %476, 0
  %478 = and i1 %472, %477
  %479 = select i1 %478, float 1.000000e+00, float %466
  %480 = select i1 %478, float 0x3FD3333340000000, float %467
  %481 = select i1 %478, float 0x3FD3333340000000, float %468
  %482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %155, i32 undef)  ; BufferLoad(srv,index,wot)
  %483 = extractvalue %dx.types.ResRet.i32 %482, 0
  %484 = and i32 %483, 32
  %485 = icmp eq i32 %484, 0
  br i1 %485, label %558, label %486

; <label>:486                                     ; preds = %464
  %487 = add i32 %17, 44
  %488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %487, i32 undef)  ; BufferLoad(srv,index,wot)
  %489 = extractvalue %dx.types.ResRet.i32 %488, 0
  %490 = add i32 %17, 124
  %491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %490, i32 undef)  ; BufferLoad(srv,index,wot)
  %492 = extractvalue %dx.types.ResRet.i32 %491, 0
  %493 = add i32 %492, 0
  %494 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %493, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %495 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %494, %dx.types.Handle %30, float %264, float %265, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %496 = extractvalue %dx.types.ResRet.f32 %495, 0
  %497 = extractvalue %dx.types.ResRet.f32 %495, 1
  %498 = extractvalue %dx.types.ResRet.f32 %495, 2
  %499 = extractvalue %dx.types.ResRet.f32 %495, 3
  %500 = and i32 %489, 255
  %501 = uitofp i32 %500 to float
  %502 = lshr i32 %489, 8
  %503 = and i32 %502, 255
  %504 = uitofp i32 %503 to float
  %505 = lshr i32 %489, 16
  %506 = and i32 %505, 255
  %507 = uitofp i32 %506 to float
  %508 = fmul fast float %507, 0x3F70101000000000
  %509 = fmul fast float %496, %501
  %510 = fadd fast float %509, %504
  %511 = fmul fast float %510, 0x3F70101000000000
  %512 = fadd fast float %497, -5.000000e-01
  %513 = fadd fast float %499, -5.000000e-01
  %514 = fmul fast float %512, %508
  %515 = fmul fast float %513, %508
  %516 = fadd fast float %514, 5.000000e-01
  %517 = fadd fast float %515, 5.000000e-01
  %518 = fmul fast float %516, 2.000000e+00
  %519 = fadd fast float %518, -1.000000e+00
  %520 = fmul fast float %517, 2.000000e+00
  %521 = fadd fast float %520, -1.000000e+00
  %522 = fadd fast float %519, %521
  %523 = fmul fast float %522, 5.000000e-01
  %524 = fsub fast float %519, %521
  %525 = fmul fast float %524, 5.000000e-01
  %526 = call float @dx.op.unary.f32(i32 6, float %523)  ; FAbs(value)
  %527 = fsub fast float 1.000000e+00, %526
  %528 = call float @dx.op.unary.f32(i32 6, float %525)  ; FAbs(value)
  %529 = fsub fast float %527, %528
  %530 = call float @dx.op.dot3.f32(i32 55, float %523, float %525, float %529, float %523, float %525, float %529)  ; Dot3(ax,ay,az,bx,by,bz)
  %531 = call float @dx.op.unary.f32(i32 25, float %530)  ; Rsqrt(value)
  %532 = fmul fast float %523, %531
  %533 = fmul fast float %525, %531
  %534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %155, i32 undef)  ; BufferLoad(srv,index,wot)
  %535 = extractvalue %dx.types.ResRet.i32 %534, 0
  %536 = and i32 %535, 67108864
  %537 = icmp eq i32 %536, 0
  br i1 %537, label %554, label %538

; <label>:538                                     ; preds = %486
  %539 = add i32 %17, 88
  %540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %539, i32 undef)  ; BufferLoad(srv,index,wot)
  %541 = extractvalue %dx.types.ResRet.i32 %540, 0
  %542 = and i32 %541, 65535
  %543 = call float @dx.op.legacyF16ToF32(i32 131, i32 %542)  ; LegacyF16ToF32(value)
  %544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %174, i32 undef)  ; BufferLoad(srv,index,wot)
  %545 = extractvalue %dx.types.ResRet.i32 %544, 0
  %546 = and i32 %545, 65535
  %547 = call float @dx.op.legacyF16ToF32(i32 131, i32 %546)  ; LegacyF16ToF32(value)
  %548 = lshr i32 %541, 16
  %549 = call float @dx.op.legacyF16ToF32(i32 131, i32 %548)  ; LegacyF16ToF32(value)
  %550 = fsub fast float %511, %549
  %551 = fmul fast float %550, %543
  %552 = fadd fast float %551, %547
  %553 = call float @dx.op.unary.f32(i32 7, float %552)  ; Saturate(value)
  br label %554

; <label>:554                                     ; preds = %538, %486
  %555 = phi float [ %553, %538 ], [ %511, %486 ]
  %556 = call float @dx.op.dot2.f32(i32 54, float %532, float %533, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %557 = call float @dx.op.dot2.f32(i32 54, float %532, float %533, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %558

; <label>:558                                     ; preds = %554, %464
  %559 = phi float [ %555, %554 ], [ 0x3FD6666660000000, %464 ]
  %560 = phi float [ %556, %554 ], [ 0.000000e+00, %464 ]
  %561 = phi float [ %557, %554 ], [ 0.000000e+00, %464 ]
  %562 = phi float [ %498, %554 ], [ 1.000000e+00, %464 ]
  %563 = add i32 %17, 64
  %564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %563, i32 undef)  ; BufferLoad(srv,index,wot)
  %565 = extractvalue %dx.types.ResRet.i32 %564, 0
  %566 = lshr i32 %565, 22
  %567 = shl nuw nsw i32 %566, 5
  %568 = call float @dx.op.legacyF16ToF32(i32 131, i32 %567)  ; LegacyF16ToF32(value)
  %569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %155, i32 undef)  ; BufferLoad(srv,index,wot)
  %570 = extractvalue %dx.types.ResRet.i32 %569, 0
  %571 = and i32 %570, 64
  %572 = icmp eq i32 %571, 0
  br i1 %572, label %606, label %573

; <label>:573                                     ; preds = %558
  %574 = add i32 %17, 128
  %575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %574, i32 undef)  ; BufferLoad(srv,index,wot)
  %576 = extractvalue %dx.types.ResRet.i32 %575, 0
  %577 = add i32 %576, 0
  %578 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %577, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %155, i32 undef)  ; BufferLoad(srv,index,wot)
  %580 = extractvalue %dx.types.ResRet.i32 %579, 0
  %581 = and i32 %580, 131072
  %582 = icmp eq i32 %581, 0
  %583 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %578, %dx.types.Handle %30, float %264, float %265, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %584 = extractvalue %dx.types.ResRet.f32 %583, 0
  %585 = extractvalue %dx.types.ResRet.f32 %583, 1
  %586 = extractvalue %dx.types.ResRet.f32 %583, 2
  %587 = fmul fast float %584, %128
  %588 = fmul fast float %585, %131
  %589 = fmul fast float %586, %134
  br i1 %582, label %596, label %590

; <label>:590                                     ; preds = %573
  %591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %592 = extractvalue %dx.types.CBufRet.f32 %591, 0
  %593 = fmul fast float %592, %587
  %594 = fmul fast float %592, %588
  %595 = fmul fast float %592, %589
  br label %596

; <label>:596                                     ; preds = %590, %573
  %597 = phi float [ %593, %590 ], [ %587, %573 ]
  %598 = phi float [ %594, %590 ], [ %588, %573 ]
  %599 = phi float [ %595, %590 ], [ %589, %573 ]
  %600 = fmul fast float %597, %568
  %601 = select i1 %122, float %600, float %597
  %602 = call float @dx.op.dot3.f32(i32 55, float %601, float %598, float %599, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %603 = select i1 %122, float 0.000000e+00, float %597
  %604 = select i1 %122, float %602, float %598
  %605 = select i1 %122, float 0.000000e+00, float %599
  br label %606

; <label>:606                                     ; preds = %596, %558
  %607 = phi float [ %603, %596 ], [ 0.000000e+00, %558 ]
  %608 = phi float [ %604, %596 ], [ 0.000000e+00, %558 ]
  %609 = phi float [ %605, %596 ], [ 0.000000e+00, %558 ]
  %610 = add i32 %17, 48
  %611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %610, i32 undef)  ; BufferLoad(srv,index,wot)
  %612 = extractvalue %dx.types.ResRet.i32 %611, 0
  %613 = and i32 %612, 255
  %614 = uitofp i32 %613 to float
  %615 = lshr i32 %612, 8
  %616 = and i32 %615, 255
  %617 = uitofp i32 %616 to float
  %618 = call float @dx.op.dot3.f32(i32 55, float %479, float %480, float %481, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %619 = fmul fast float %617, %618
  %620 = fadd fast float %619, %614
  %621 = fmul fast float %620, 0x3F70101020000000
  %622 = call float @dx.op.unary.f32(i32 7, float %621)  ; Saturate(value)
  br label %623

; <label>:623                                     ; preds = %606, %121
  %624 = phi float [ 0.000000e+00, %121 ], [ %560, %606 ]
  %625 = phi float [ 0.000000e+00, %121 ], [ %561, %606 ]
  %626 = phi float [ 0.000000e+00, %121 ], [ %479, %606 ]
  %627 = phi float [ 0.000000e+00, %121 ], [ %480, %606 ]
  %628 = phi float [ 0.000000e+00, %121 ], [ %481, %606 ]
  %629 = phi float [ 0.000000e+00, %121 ], [ %607, %606 ]
  %630 = phi float [ 0.000000e+00, %121 ], [ %608, %606 ]
  %631 = phi float [ 0.000000e+00, %121 ], [ %609, %606 ]
  %632 = phi float [ 0.000000e+00, %121 ], [ %465, %606 ]
  %633 = phi float [ 0.000000e+00, %121 ], [ 1.000000e+00, %606 ]
  %634 = phi float [ 0.000000e+00, %121 ], [ %559, %606 ]
  %635 = phi float [ 0.000000e+00, %121 ], [ %562, %606 ]
  %636 = phi float [ 0.000000e+00, %121 ], [ %622, %606 ]
  %637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %638 = extractvalue %dx.types.CBufRet.f32 %637, 0
  %639 = call float @dx.op.dot2.f32(i32 54, float %624, float %625, float %624, float %625)  ; Dot2(ax,ay,bx,by)
  %640 = fmul fast float %639, 0x3FE3333340000000
  %641 = fsub fast float 1.000000e+00, %640
  %642 = call float @dx.op.dot3.f32(i32 55, float %624, float %625, float %641, float %624, float %625, float %641)  ; Dot3(ax,ay,az,bx,by,bz)
  %643 = call float @dx.op.unary.f32(i32 25, float %642)  ; Rsqrt(value)
  %644 = fmul fast float %643, %624
  %645 = fmul fast float %643, %625
  %646 = fmul fast float %641, %643
  %647 = fmul fast float %646, %22
  %648 = fmul fast float %646, %23
  %649 = fmul fast float %646, %24
  %650 = fmul fast float %644, %18
  %651 = fmul fast float %644, %19
  %652 = fmul fast float %644, %20
  %653 = fadd fast float %647, %650
  %654 = fadd fast float %648, %651
  %655 = fadd fast float %649, %652
  %656 = fmul fast float %45, %645
  %657 = fmul fast float %46, %645
  %658 = fmul fast float %47, %645
  %659 = fadd fast float %653, %656
  %660 = fadd fast float %654, %657
  %661 = fadd fast float %655, %658
  %662 = call float @dx.op.dot3.f32(i32 55, float %659, float %660, float %661, float %659, float %660, float %661)  ; Dot3(ax,ay,az,bx,by,bz)
  %663 = call float @dx.op.unary.f32(i32 25, float %662)  ; Rsqrt(value)
  %664 = fmul fast float %659, %663
  %665 = fmul fast float %660, %663
  %666 = fmul fast float %661, %663
  %667 = call float @dx.op.unary.f32(i32 83, float %81)  ; DerivCoarseX(value)
  %668 = call float @dx.op.unary.f32(i32 83, float %82)  ; DerivCoarseX(value)
  %669 = call float @dx.op.unary.f32(i32 83, float %83)  ; DerivCoarseX(value)
  %670 = call float @dx.op.unary.f32(i32 84, float %81)  ; DerivCoarseY(value)
  %671 = call float @dx.op.unary.f32(i32 84, float %82)  ; DerivCoarseY(value)
  %672 = call float @dx.op.unary.f32(i32 84, float %83)  ; DerivCoarseY(value)
  %673 = fadd fast float %667, %81
  %674 = fadd fast float %668, %82
  %675 = fadd fast float %669, %83
  %676 = fadd fast float %670, %81
  %677 = fadd fast float %671, %82
  %678 = fadd fast float %672, %83
  %679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %680 = extractvalue %dx.types.CBufRet.f32 %679, 0
  %681 = extractvalue %dx.types.CBufRet.f32 %679, 1
  %682 = extractvalue %dx.types.CBufRet.f32 %679, 2
  %683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %684 = extractvalue %dx.types.CBufRet.f32 %683, 2
  %685 = extractvalue %dx.types.CBufRet.f32 %683, 3
  %686 = fmul fast float %680, %34
  %687 = fmul fast float %686, %684
  %688 = fmul fast float %681, %35
  %689 = fmul fast float %688, %685
  %690 = fptoui float %687 to i32
  %691 = fptoui float %689 to i32
  %692 = fadd fast float %680, -1.000000e+00
  %693 = fadd fast float %681, -1.000000e+00
  %694 = fptoui float %692 to i32
  %695 = fptoui float %693 to i32
  %696 = call i32 @dx.op.binary.i32(i32 40, i32 %690, i32 %694)  ; UMin(a,b)
  %697 = call i32 @dx.op.binary.i32(i32 40, i32 %691, i32 %695)  ; UMin(a,b)
  %698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %699 = extractvalue %dx.types.CBufRet.f32 %698, 2
  %700 = extractvalue %dx.types.CBufRet.f32 %698, 3
  %701 = fmul fast float %699, %29
  %702 = fsub fast float %701, %700
  %703 = fadd fast float %682, -1.000000e+00
  %704 = call float @dx.op.binary.f32(i32 36, float %702, float %703)  ; FMin(a,b)
  %705 = fptoui float %704 to i32
  %706 = fptoui float %680 to i32
  %707 = fptoui float %681 to i32
  %708 = mul i32 %705, %707
  %709 = add i32 %708, %697
  %710 = mul i32 %709, %706
  %711 = add i32 %710, %696
  %712 = shl i32 %711, 2
  %713 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %712, i32 undef)  ; BufferLoad(srv,index,wot)
  %714 = extractvalue %dx.types.ResRet.i32 %713, 0
  %715 = and i32 %714, 1023
  %716 = lshr i32 %714, 10
  %717 = icmp eq i32 %715, 0
  br i1 %717, label %1146, label %718

; <label>:718                                     ; preds = %623
  %719 = and i32 %714, 1023
  br label %720

; <label>:720                                     ; preds = %847, %718
  %721 = phi float [ %848, %847 ], [ 0.000000e+00, %718 ]
  %722 = phi float [ %849, %847 ], [ %633, %718 ]
  %723 = phi float [ %850, %847 ], [ %638, %718 ]
  %724 = phi float [ %851, %847 ], [ %636, %718 ]
  %725 = phi float [ %852, %847 ], [ 0.000000e+00, %718 ]
  %726 = phi float [ %853, %847 ], [ 0.000000e+00, %718 ]
  %727 = phi float [ %854, %847 ], [ %629, %718 ]
  %728 = phi float [ %855, %847 ], [ %630, %718 ]
  %729 = phi float [ %856, %847 ], [ %631, %718 ]
  %730 = phi float [ %857, %847 ], [ %664, %718 ]
  %731 = phi float [ %858, %847 ], [ %665, %718 ]
  %732 = phi float [ %859, %847 ], [ %666, %718 ]
  %733 = phi float [ %860, %847 ], [ %635, %718 ]
  %734 = phi float [ %861, %847 ], [ %634, %718 ]
  %735 = phi float [ %862, %847 ], [ 0.000000e+00, %718 ]
  %736 = phi float [ %863, %847 ], [ %632, %718 ]
  %737 = phi float [ %864, %847 ], [ %626, %718 ]
  %738 = phi float [ %865, %847 ], [ %627, %718 ]
  %739 = phi float [ %866, %847 ], [ %628, %718 ]
  %740 = phi i32 [ %797, %847 ], [ 0, %718 ]
  %741 = add nuw nsw i32 %740, %716
  %742 = shl i32 %741, 2
  %743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %742, i32 undef)  ; BufferLoad(srv,index,wot)
  %744 = extractvalue %dx.types.ResRet.i32 %743, 0
  %745 = shl i32 %744, 8
  %746 = or i32 %745, 48
  %747 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %746, i32 undef)  ; BufferLoad(srv,index,wot)
  %748 = extractvalue %dx.types.ResRet.f32 %747, 0
  %749 = extractvalue %dx.types.ResRet.f32 %747, 1
  %750 = extractvalue %dx.types.ResRet.f32 %747, 2
  %751 = extractvalue %dx.types.ResRet.f32 %747, 3
  %752 = or i32 %745, 64
  %753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %752, i32 undef)  ; BufferLoad(srv,index,wot)
  %754 = extractvalue %dx.types.ResRet.i32 %753, 0
  %755 = extractvalue %dx.types.ResRet.i32 %753, 1
  %756 = or i32 %745, 80
  %757 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %756, i32 undef)  ; BufferLoad(srv,index,wot)
  %758 = extractvalue %dx.types.ResRet.f32 %757, 2
  %759 = extractvalue %dx.types.ResRet.f32 %757, 3
  %760 = or i32 %745, 96
  %761 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %760, i32 undef)  ; BufferLoad(srv,index,wot)
  %762 = extractvalue %dx.types.ResRet.f32 %761, 0
  %763 = extractvalue %dx.types.ResRet.f32 %761, 1
  %764 = extractvalue %dx.types.ResRet.f32 %761, 2
  %765 = extractvalue %dx.types.ResRet.f32 %761, 3
  %766 = or i32 %745, 112
  %767 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %766, i32 undef)  ; BufferLoad(srv,index,wot)
  %768 = extractvalue %dx.types.ResRet.f32 %767, 2
  %769 = or i32 %745, 128
  %770 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %769, i32 undef)  ; BufferLoad(srv,index,wot)
  %771 = extractvalue %dx.types.ResRet.f32 %770, 0
  %772 = extractvalue %dx.types.ResRet.f32 %770, 1
  %773 = extractvalue %dx.types.ResRet.f32 %770, 2
  %774 = extractvalue %dx.types.ResRet.f32 %770, 3
  %775 = or i32 %745, 144
  %776 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %775, i32 undef)  ; BufferLoad(srv,index,wot)
  %777 = extractvalue %dx.types.ResRet.f32 %776, 0
  %778 = extractvalue %dx.types.ResRet.f32 %776, 1
  %779 = extractvalue %dx.types.ResRet.f32 %776, 2
  %780 = extractvalue %dx.types.ResRet.f32 %776, 3
  %781 = or i32 %745, 160
  %782 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %781, i32 undef)  ; BufferLoad(srv,index,wot)
  %783 = extractvalue %dx.types.ResRet.f32 %782, 0
  %784 = extractvalue %dx.types.ResRet.f32 %782, 1
  %785 = extractvalue %dx.types.ResRet.f32 %782, 2
  %786 = extractvalue %dx.types.ResRet.f32 %782, 3
  %787 = or i32 %745, 192
  %788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %787, i32 undef)  ; BufferLoad(srv,index,wot)
  %789 = extractvalue %dx.types.ResRet.i32 %788, 0
  %790 = or i32 %745, 208
  %791 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %790, i32 undef)  ; BufferLoad(srv,index,wot)
  %792 = extractvalue %dx.types.ResRet.f32 %791, 0
  %793 = or i32 %745, 248
  %794 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %793, i32 undef)  ; BufferLoad(srv,index,wot)
  %795 = extractvalue %dx.types.ResRet.f32 %794, 0
  %796 = extractvalue %dx.types.ResRet.f32 %794, 1
  %797 = add nuw nsw i32 %740, 1
  %798 = bitcast float %751 to i32
  %799 = and i32 %798, 2560
  %800 = icmp eq i32 %799, 0
  %801 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %745, i32 undef)  ; BufferLoad(srv,index,wot)
  %802 = extractvalue %dx.types.ResRet.f32 %801, 0
  %803 = extractvalue %dx.types.ResRet.f32 %801, 1
  %804 = extractvalue %dx.types.ResRet.f32 %801, 2
  %805 = extractvalue %dx.types.ResRet.f32 %801, 3
  %806 = call float @dx.op.dot4.f32(i32 56, float %802, float %803, float %804, float %805, float %81, float %82, float %83, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %807 = or i32 %745, 16
  %808 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %807, i32 undef)  ; BufferLoad(srv,index,wot)
  %809 = extractvalue %dx.types.ResRet.f32 %808, 0
  %810 = extractvalue %dx.types.ResRet.f32 %808, 1
  %811 = extractvalue %dx.types.ResRet.f32 %808, 2
  %812 = extractvalue %dx.types.ResRet.f32 %808, 3
  %813 = call float @dx.op.dot4.f32(i32 56, float %809, float %810, float %811, float %812, float %81, float %82, float %83, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %814 = or i32 %745, 32
  %815 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %814, i32 undef)  ; BufferLoad(srv,index,wot)
  %816 = extractvalue %dx.types.ResRet.f32 %815, 0
  %817 = extractvalue %dx.types.ResRet.f32 %815, 1
  %818 = extractvalue %dx.types.ResRet.f32 %815, 2
  %819 = extractvalue %dx.types.ResRet.f32 %815, 3
  %820 = call float @dx.op.dot4.f32(i32 56, float %816, float %817, float %818, float %819, float %81, float %82, float %83, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %821 = call float @dx.op.unary.f32(i32 27, float %806)  ; Round_ni(value)
  %822 = call float @dx.op.unary.f32(i32 6, float %821)  ; FAbs(value)
  %823 = call float @dx.op.unary.f32(i32 27, float %813)  ; Round_ni(value)
  %824 = call float @dx.op.unary.f32(i32 6, float %823)  ; FAbs(value)
  %825 = call float @dx.op.unary.f32(i32 6, float %820)  ; FAbs(value)
  %826 = call float @dx.op.unary.f32(i32 27, float %825)  ; Round_ni(value)
  %827 = fadd fast float %824, %822
  %828 = fadd fast float %827, %826
  %829 = fcmp fast oeq float %828, 0.000000e+00
  %830 = call float @dx.op.dot4.f32(i32 56, float %802, float %803, float %804, float %805, float %673, float %674, float %675, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %831 = call float @dx.op.dot4.f32(i32 56, float %809, float %810, float %811, float %812, float %673, float %674, float %675, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %832 = call float @dx.op.dot4.f32(i32 56, float %802, float %803, float %804, float %805, float %676, float %677, float %678, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %833 = call float @dx.op.dot4.f32(i32 56, float %809, float %810, float %811, float %812, float %676, float %677, float %678, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %834 = fsub fast float %830, %806
  %835 = fsub fast float %832, %806
  %836 = fsub fast float %831, %813
  %837 = fsub fast float %833, %813
  %838 = call float @dx.op.dot3.f32(i32 55, float %748, float %749, float %750, float %22, float %23, float %24)  ; Dot3(ax,ay,az,bx,by,bz)
  %839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %840 = extractvalue %dx.types.CBufRet.f32 %839, 2
  %841 = fadd fast float %840, %838
  %842 = call float @dx.op.unary.f32(i32 7, float %841)  ; Saturate(value)
  %843 = extractvalue %dx.types.CBufRet.f32 %839, 0
  %844 = fcmp fast ogt float %842, %843
  %845 = and i1 %829, %844
  %846 = and i1 %800, %845
  br i1 %846, label %868, label %847

; <label>:847                                     ; preds = %1132, %949, %868, %720
  %848 = phi float [ %721, %868 ], [ %952, %949 ], [ %952, %1132 ], [ %721, %720 ]
  %849 = phi float [ %722, %868 ], [ %722, %949 ], [ %1107, %1132 ], [ %722, %720 ]
  %850 = phi float [ %723, %868 ], [ %723, %949 ], [ %1106, %1132 ], [ %723, %720 ]
  %851 = phi float [ %724, %868 ], [ %724, %949 ], [ %1104, %1132 ], [ %724, %720 ]
  %852 = phi float [ %725, %868 ], [ %725, %949 ], [ %1076, %1132 ], [ %725, %720 ]
  %853 = phi float [ %726, %868 ], [ %726, %949 ], [ %1074, %1132 ], [ %726, %720 ]
  %854 = phi float [ %727, %868 ], [ %727, %949 ], [ %1142, %1132 ], [ %727, %720 ]
  %855 = phi float [ %728, %868 ], [ %728, %949 ], [ %1143, %1132 ], [ %728, %720 ]
  %856 = phi float [ %729, %868 ], [ %729, %949 ], [ %1144, %1132 ], [ %729, %720 ]
  %857 = phi float [ %730, %868 ], [ %730, %949 ], [ %1055, %1132 ], [ %730, %720 ]
  %858 = phi float [ %731, %868 ], [ %731, %949 ], [ %1056, %1132 ], [ %731, %720 ]
  %859 = phi float [ %732, %868 ], [ %732, %949 ], [ %1057, %1132 ], [ %732, %720 ]
  %860 = phi float [ %733, %868 ], [ %733, %949 ], [ %1084, %1132 ], [ %733, %720 ]
  %861 = phi float [ %734, %868 ], [ %734, %949 ], [ %1081, %1132 ], [ %734, %720 ]
  %862 = phi float [ %735, %868 ], [ %735, %949 ], [ %1078, %1132 ], [ %735, %720 ]
  %863 = phi float [ %736, %868 ], [ %736, %949 ], [ %1072, %1132 ], [ %736, %720 ]
  %864 = phi float [ %737, %868 ], [ %737, %949 ], [ %1067, %1132 ], [ %737, %720 ]
  %865 = phi float [ %738, %868 ], [ %738, %949 ], [ %1068, %1132 ], [ %738, %720 ]
  %866 = phi float [ %739, %868 ], [ %739, %949 ], [ %1069, %1132 ], [ %739, %720 ]
  %867 = icmp eq i32 %797, %719
  br i1 %867, label %1145, label %720

; <label>:868                                     ; preds = %720
  %869 = extractvalue %dx.types.ResRet.f32 %767, 3
  %870 = extractvalue %dx.types.ResRet.f32 %767, 1
  %871 = extractvalue %dx.types.ResRet.f32 %767, 0
  %872 = extractvalue %dx.types.ResRet.f32 %757, 1
  %873 = extractvalue %dx.types.ResRet.f32 %757, 0
  %874 = extractvalue %dx.types.ResRet.i32 %753, 3
  %875 = extractvalue %dx.types.ResRet.i32 %753, 2
  %876 = add i32 %874, 0
  %877 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %876, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %878 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %879 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %877, %dx.types.Handle %878, float %806, float %813, float undef, float undef, i32 0, i32 0, i32 undef, float %834, float %836, float undef, float %835, float %837, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %880 = extractvalue %dx.types.ResRet.f32 %879, 0
  %881 = fmul fast float %880, %873
  %882 = fadd fast float %881, %872
  %883 = call float @dx.op.unary.f32(i32 7, float %882)  ; Saturate(value)
  %884 = fmul fast float %806, %762
  %885 = call float @dx.op.tertiary.f32(i32 46, float %763, float %813, float %884)  ; FMad(a,b,c)
  %886 = fadd fast float %885, %871
  %887 = fmul fast float %806, %764
  %888 = call float @dx.op.tertiary.f32(i32 46, float %765, float %813, float %887)  ; FMad(a,b,c)
  %889 = fadd fast float %888, %870
  %890 = fmul fast float %834, %762
  %891 = call float @dx.op.tertiary.f32(i32 46, float %763, float %836, float %890)  ; FMad(a,b,c)
  %892 = fmul fast float %834, %764
  %893 = call float @dx.op.tertiary.f32(i32 46, float %765, float %836, float %892)  ; FMad(a,b,c)
  %894 = fmul fast float %835, %762
  %895 = call float @dx.op.tertiary.f32(i32 46, float %763, float %837, float %894)  ; FMad(a,b,c)
  %896 = fmul fast float %835, %764
  %897 = call float @dx.op.tertiary.f32(i32 46, float %765, float %837, float %896)  ; FMad(a,b,c)
  %898 = add i32 %875, 0
  %899 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %898, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %900 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %899, %dx.types.Handle %878, float %886, float %889, float undef, float undef, i32 0, i32 0, i32 undef, float %891, float %893, float undef, float %895, float %897, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %901 = extractvalue %dx.types.ResRet.f32 %900, 0
  %902 = and i32 %798, 1024
  %903 = icmp ne i32 %902, 0
  %904 = fcmp fast ogt float %901, 0x3FE0101020000000
  %905 = uitofp i1 %904 to float
  %906 = select i1 %903, float %905, float %901
  %907 = and i32 %798, 8192
  %908 = icmp ne i32 %907, 0
  %909 = select i1 %908, float %869, float 1.000000e+00
  %910 = fmul fast float %806, 2.000000e+00
  %911 = fadd fast float %910, -1.000000e+00
  %912 = call float @dx.op.unary.f32(i32 6, float %911)  ; FAbs(value)
  %913 = fmul fast float %912, %795
  %914 = fsub fast float %913, %795
  %915 = call float @dx.op.unary.f32(i32 7, float %914)  ; Saturate(value)
  %916 = fmul fast float %813, 2.000000e+00
  %917 = fadd fast float %916, -1.000000e+00
  %918 = call float @dx.op.unary.f32(i32 6, float %917)  ; FAbs(value)
  %919 = fmul fast float %918, %796
  %920 = fsub fast float %919, %796
  %921 = call float @dx.op.unary.f32(i32 7, float %920)  ; Saturate(value)
  %922 = fmul fast float %825, %758
  %923 = fsub fast float %922, %758
  %924 = call float @dx.op.unary.f32(i32 7, float %923)  ; Saturate(value)
  %925 = fmul fast float %883, %909
  %926 = fmul fast float %925, %880
  %927 = fmul fast float %926, %915
  %928 = fmul fast float %927, %906
  %929 = fmul fast float %928, %921
  %930 = fmul fast float %929, %924
  %931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %932 = extractvalue %dx.types.CBufRet.f32 %931, 1
  %933 = extractvalue %dx.types.CBufRet.f32 %931, 0
  %934 = fsub fast float %842, %933
  %935 = fmul fast float %934, %932
  %936 = call float @dx.op.unary.f32(i32 7, float %935)  ; Saturate(value)
  %937 = fmul fast float %930, %759
  %938 = fadd fast float %930, %759
  %939 = fmul fast float %938, %768
  %940 = fsub fast float %939, %768
  %941 = call float @dx.op.unary.f32(i32 7, float %940)  ; Saturate(value)
  %942 = and i32 %798, 128
  %943 = icmp ne i32 %942, 0
  %944 = select i1 %943, float %941, float %937
  %945 = fmul fast float %944, %936
  %946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %947 = extractvalue %dx.types.CBufRet.f32 %946, 0
  %948 = fcmp fast ugt float %945, %947
  br i1 %948, label %949, label %847

; <label>:949                                     ; preds = %868
  %950 = select i1 %908, float %945, float 0.000000e+00
  %951 = fadd fast float %950, %721
  %952 = call float @dx.op.unary.f32(i32 7, float %951)  ; Saturate(value)
  br i1 %908, label %847, label %953

; <label>:953                                     ; preds = %949
  %954 = and i32 %798, 4
  %955 = and i32 %798, 8
  %956 = add i32 %754, 0
  %957 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %956, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %958 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %959 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %957, %dx.types.Handle %958, float %886, float %889, float undef, float undef, i32 0, i32 0, i32 undef, float %891, float %893, float undef, float %895, float %897, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %960 = extractvalue %dx.types.ResRet.f32 %959, 0
  %961 = extractvalue %dx.types.ResRet.f32 %959, 1
  %962 = extractvalue %dx.types.ResRet.f32 %959, 2
  %963 = extractvalue %dx.types.ResRet.f32 %959, 3
  %964 = bitcast float %780 to i32
  %965 = and i32 %964, 255
  %966 = uitofp i32 %965 to float
  %967 = lshr i32 %964, 8
  %968 = and i32 %967, 255
  %969 = uitofp i32 %968 to float
  %970 = fmul fast float %963, %966
  %971 = fadd fast float %970, %969
  %972 = fmul fast float %971, 0x3F70101000000000
  %973 = add i32 %755, 0
  %974 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %973, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %975 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %974, %dx.types.Handle %958, float %886, float %889, float undef, float undef, i32 0, i32 0, i32 undef, float %891, float %893, float undef, float %895, float %897, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %976 = extractvalue %dx.types.ResRet.f32 %975, 0
  %977 = extractvalue %dx.types.ResRet.f32 %975, 1
  %978 = extractvalue %dx.types.ResRet.f32 %975, 2
  %979 = extractvalue %dx.types.ResRet.f32 %975, 3
  %980 = bitcast float %774 to i32
  %981 = and i32 %980, 255
  %982 = uitofp i32 %981 to float
  %983 = lshr i32 %980, 8
  %984 = and i32 %983, 255
  %985 = uitofp i32 %984 to float
  %986 = lshr i32 %980, 16
  %987 = and i32 %986, 255
  %988 = uitofp i32 %987 to float
  %989 = fmul fast float %988, 0x3F70101000000000
  %990 = fmul fast float %976, %982
  %991 = fadd fast float %990, %985
  %992 = fmul fast float %991, 0x3F70101000000000
  %993 = fadd fast float %977, -5.000000e-01
  %994 = fadd fast float %979, -5.000000e-01
  %995 = fmul fast float %993, %989
  %996 = fmul fast float %994, %989
  %997 = fadd fast float %995, 5.000000e-01
  %998 = fadd fast float %996, 5.000000e-01
  %999 = fmul fast float %960, %783
  %1000 = fmul fast float %961, %784
  %1001 = fmul fast float %962, %785
  %1002 = fmul fast float %997, 2.000000e+00
  %1003 = fadd fast float %1002, -1.000000e+00
  %1004 = fmul fast float %998, 2.000000e+00
  %1005 = fadd fast float %1004, -1.000000e+00
  %1006 = fadd fast float %1003, %1005
  %1007 = fmul fast float %1006, 5.000000e-01
  %1008 = fsub fast float %1003, %1005
  %1009 = fmul fast float %1008, 5.000000e-01
  %1010 = call float @dx.op.unary.f32(i32 6, float %1007)  ; FAbs(value)
  %1011 = fsub fast float 1.000000e+00, %1010
  %1012 = call float @dx.op.unary.f32(i32 6, float %1009)  ; FAbs(value)
  %1013 = fsub fast float %1011, %1012
  %1014 = call float @dx.op.dot3.f32(i32 55, float %1007, float %1009, float %1013, float %1007, float %1009, float %1013)  ; Dot3(ax,ay,az,bx,by,bz)
  %1015 = call float @dx.op.unary.f32(i32 25, float %1014)  ; Rsqrt(value)
  %1016 = fmul fast float %1007, %1015
  %1017 = fmul fast float %1009, %1015
  %1018 = fmul fast float %1015, %1013
  %1019 = fmul fast float %1018, %748
  %1020 = fmul fast float %1018, %749
  %1021 = fmul fast float %1018, %750
  %1022 = fmul fast float %1016, %771
  %1023 = fmul fast float %1016, %772
  %1024 = fmul fast float %1016, %773
  %1025 = fadd fast float %1022, %1019
  %1026 = fadd fast float %1023, %1020
  %1027 = fadd fast float %1024, %1021
  %1028 = fmul fast float %1017, %777
  %1029 = fmul fast float %1017, %778
  %1030 = fmul fast float %1017, %779
  %1031 = fadd fast float %1025, %1028
  %1032 = fadd fast float %1026, %1029
  %1033 = fadd fast float %1027, %1030
  %1034 = call float @dx.op.dot3.f32(i32 55, float %1031, float %1032, float %1033, float %1031, float %1032, float %1033)  ; Dot3(ax,ay,az,bx,by,bz)
  %1035 = call float @dx.op.unary.f32(i32 25, float %1034)  ; Rsqrt(value)
  %1036 = fmul fast float %1031, %1035
  %1037 = fmul fast float %1032, %1035
  %1038 = fmul fast float %1033, %1035
  %1039 = icmp ne i32 %955, 0
  %1040 = select i1 %1039, float 1.000000e+00, float 0.000000e+00
  %1041 = fmul fast float %945, %1040
  %1042 = and i32 %798, 1
  %1043 = icmp eq i32 %1042, 0
  br i1 %1043, label %1044, label %1048

; <label>:1044                                    ; preds = %953
  %1045 = fsub fast float %1036, %730
  %1046 = fsub fast float %1037, %731
  %1047 = fsub fast float %1038, %732
  br label %1048

; <label>:1048                                    ; preds = %1044, %953
  %1049 = phi float [ %1045, %1044 ], [ %1036, %953 ]
  %1050 = phi float [ %1046, %1044 ], [ %1037, %953 ]
  %1051 = phi float [ %1047, %1044 ], [ %1038, %953 ]
  %1052 = fmul float %1051, %1041
  %1053 = fmul float %1050, %1041
  %1054 = fmul float %1049, %1041
  %1055 = fadd fast float %1054, %730
  %1056 = fadd fast float %1053, %731
  %1057 = fadd fast float %1052, %732
  %1058 = icmp ne i32 %954, 0
  %1059 = select i1 %1058, float 1.000000e+00, float 0.000000e+00
  %1060 = fmul fast float %945, %1059
  %1061 = fsub fast float %999, %737
  %1062 = fsub fast float %1000, %738
  %1063 = fsub fast float %1001, %739
  %1064 = fmul fast float %1061, %1060
  %1065 = fmul fast float %1062, %1060
  %1066 = fmul fast float %1063, %1060
  %1067 = fadd fast float %1064, %737
  %1068 = fadd fast float %1065, %738
  %1069 = fadd fast float %1066, %739
  %1070 = fsub fast float %972, %736
  %1071 = fmul fast float %1070, %1060
  %1072 = fadd fast float %1071, %736
  %1073 = fmul fast float %1060, %726
  %1074 = fsub fast float %726, %1073
  %1075 = fmul fast float %1060, %725
  %1076 = fsub fast float %725, %1075
  %1077 = fadd fast float %945, %735
  %1078 = call float @dx.op.unary.f32(i32 7, float %1077)  ; Saturate(value)
  %1079 = fsub fast float %992, %734
  %1080 = fmul fast float %1079, %1041
  %1081 = fadd fast float %1080, %734
  %1082 = fsub fast float %978, %733
  %1083 = fmul fast float %1082, %1041
  %1084 = fadd fast float %1083, %733
  %1085 = call float @dx.op.dot3.f32(i32 55, float %999, float %1000, float %1001, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1087 = extractvalue %dx.types.CBufRet.f32 %1086, 0
  %1088 = extractvalue %dx.types.CBufRet.f32 %1086, 1
  %1089 = fmul fast float %1088, %1085
  %1090 = fadd fast float %1089, %1087
  %1091 = call float @dx.op.unary.f32(i32 7, float %1090)  ; Saturate(value)
  %1092 = bitcast float %786 to i32
  %1093 = and i32 %1092, 65535
  %1094 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1093)  ; LegacyF16ToF32(value)
  %1095 = lshr i32 %1092, 16
  %1096 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1095)  ; LegacyF16ToF32(value)
  %1097 = fcmp fast oge float %1094, 0.000000e+00
  %1098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1099 = extractvalue %dx.types.CBufRet.f32 %1098, 0
  %1100 = select i1 %1097, float %1094, float %1099
  %1101 = fadd fast float %1100, %1096
  %1102 = fsub fast float %1091, %724
  %1103 = fmul fast float %1102, %945
  %1104 = fadd fast float %1103, %724
  %1105 = fmul fast float %1101, %945
  %1106 = call float @dx.op.binary.f32(i32 35, float %723, float %1105)  ; FMax(a,b)
  %1107 = call float @dx.op.binary.f32(i32 35, float %722, float %945)  ; FMax(a,b)
  %1108 = and i32 %798, 16
  %1109 = icmp eq i32 %1108, 0
  br i1 %1109, label %1132, label %1110

; <label>:1110                                    ; preds = %1048
  %1111 = bitcast float %792 to i32
  %1112 = add i32 %789, 0
  %1113 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1112, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1114 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1113, %dx.types.Handle %958, float %886, float %889, float undef, float undef, i32 0, i32 0, i32 undef, float %891, float %893, float undef, float %895, float %897, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1115 = extractvalue %dx.types.ResRet.f32 %1114, 0
  %1116 = extractvalue %dx.types.ResRet.f32 %1114, 1
  %1117 = extractvalue %dx.types.ResRet.f32 %1114, 2
  %1118 = and i32 %1111, 65535
  %1119 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1118)  ; LegacyF16ToF32(value)
  %1120 = fmul fast float %1115, %783
  %1121 = fmul fast float %1116, %784
  %1122 = fmul fast float %1117, %785
  %1123 = and i32 %798, 16384
  %1124 = icmp ne i32 %1123, 0
  %1125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1126 = extractvalue %dx.types.CBufRet.f32 %1125, 0
  %1127 = select i1 %1124, float %1126, float 1.000000e+00
  %1128 = fmul fast float %1127, %1119
  %1129 = fmul fast float %1120, %1128
  %1130 = fmul fast float %1121, %1128
  %1131 = fmul fast float %1122, %1128
  br label %1132

; <label>:1132                                    ; preds = %1110, %1048
  %1133 = phi float [ %1129, %1110 ], [ 0.000000e+00, %1048 ]
  %1134 = phi float [ %1130, %1110 ], [ 0.000000e+00, %1048 ]
  %1135 = phi float [ %1131, %1110 ], [ 0.000000e+00, %1048 ]
  %1136 = fsub fast float %1133, %727
  %1137 = fsub fast float %1134, %728
  %1138 = fsub fast float %1135, %729
  %1139 = fmul fast float %1136, %945
  %1140 = fmul fast float %1137, %945
  %1141 = fmul fast float %1138, %945
  %1142 = fadd fast float %1139, %727
  %1143 = fadd fast float %1140, %728
  %1144 = fadd fast float %1141, %729
  br label %847

; <label>:1145                                    ; preds = %847
  br label %1146

; <label>:1146                                    ; preds = %1145, %623
  %1147 = phi float [ 0.000000e+00, %623 ], [ %848, %1145 ]
  %1148 = phi float [ %633, %623 ], [ %849, %1145 ]
  %1149 = phi float [ %638, %623 ], [ %850, %1145 ]
  %1150 = phi float [ %636, %623 ], [ %851, %1145 ]
  %1151 = phi float [ 0.000000e+00, %623 ], [ %852, %1145 ]
  %1152 = phi float [ 0.000000e+00, %623 ], [ %853, %1145 ]
  %1153 = phi float [ %629, %623 ], [ %854, %1145 ]
  %1154 = phi float [ %630, %623 ], [ %855, %1145 ]
  %1155 = phi float [ %631, %623 ], [ %856, %1145 ]
  %1156 = phi float [ %664, %623 ], [ %857, %1145 ]
  %1157 = phi float [ %665, %623 ], [ %858, %1145 ]
  %1158 = phi float [ %666, %623 ], [ %859, %1145 ]
  %1159 = phi float [ %635, %623 ], [ %860, %1145 ]
  %1160 = phi float [ %634, %623 ], [ %861, %1145 ]
  %1161 = phi float [ 0.000000e+00, %623 ], [ %862, %1145 ]
  %1162 = phi float [ %632, %623 ], [ %863, %1145 ]
  %1163 = phi float [ %626, %623 ], [ %864, %1145 ]
  %1164 = phi float [ %627, %623 ], [ %865, %1145 ]
  %1165 = phi float [ %628, %623 ], [ %866, %1145 ]
  %1166 = call float @dx.op.dot3.f32(i32 55, float %1156, float %1157, float %1158, float %1156, float %1157, float %1158)  ; Dot3(ax,ay,az,bx,by,bz)
  %1167 = call float @dx.op.unary.f32(i32 25, float %1166)  ; Rsqrt(value)
  %1168 = fmul fast float %1167, %1156
  %1169 = fmul fast float %1167, %1157
  %1170 = fmul fast float %1167, %1158
  %1171 = fadd fast float %1161, %633
  %1172 = call float @dx.op.unary.f32(i32 7, float %1171)  ; Saturate(value)
  %1173 = call float @dx.op.dot3.f32(i32 55, float %1168, float %1169, float %1170, float %1168, float %1169, float %1170)  ; Dot3(ax,ay,az,bx,by,bz)
  %1174 = call float @dx.op.unary.f32(i32 25, float %1173)  ; Rsqrt(value)
  %1175 = fmul fast float %1174, %1168
  %1176 = fmul fast float %1174, %1169
  %1177 = fmul fast float %1174, %1170
  %1178 = fadd fast float %1162, 0xBFB99999A0000000
  %1179 = call float @dx.op.unary.f32(i32 7, float %1178)  ; Saturate(value)
  %1180 = fmul fast float %1179, 0x3FF1C71C80000000
  %1181 = call float @dx.op.binary.f32(i32 36, float %1162, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1182 = fsub fast float 1.000000e+00, %1180
  %1183 = call float @dx.op.unary.f32(i32 7, float %1182)  ; Saturate(value)
  %1184 = fmul fast float %1183, %1163
  %1185 = fmul fast float %1183, %1164
  %1186 = fmul fast float %1183, %1165
  %1187 = call float @dx.op.unary.f32(i32 7, float %1184)  ; Saturate(value)
  %1188 = call float @dx.op.unary.f32(i32 7, float %1185)  ; Saturate(value)
  %1189 = call float @dx.op.unary.f32(i32 7, float %1186)  ; Saturate(value)
  %1190 = fmul fast float %1180, %1163
  %1191 = fmul fast float %1180, %1164
  %1192 = fmul fast float %1180, %1165
  %1193 = fadd fast float %1190, %1181
  %1194 = fadd fast float %1191, %1181
  %1195 = fadd fast float %1192, %1181
  %1196 = call float @dx.op.unary.f32(i32 7, float %1193)  ; Saturate(value)
  %1197 = call float @dx.op.unary.f32(i32 7, float %1194)  ; Saturate(value)
  %1198 = call float @dx.op.unary.f32(i32 7, float %1195)  ; Saturate(value)
  %1199 = call float @dx.op.unary.f32(i32 7, float %1160)  ; Saturate(value)
  %1200 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1201 = extractvalue %dx.types.CBufRet.i32 %1200, 3
  %1202 = and i32 %1201, 8
  %1203 = icmp ne i32 %1202, 0
  %1204 = call float @dx.op.binary.f32(i32 35, float %1187, float %1163)  ; FMax(a,b)
  %1205 = call float @dx.op.binary.f32(i32 35, float %1188, float %1163)  ; FMax(a,b)
  %1206 = call float @dx.op.binary.f32(i32 35, float %1189, float %1163)  ; FMax(a,b)
  %1207 = call float @dx.op.dot3.f32(i32 55, float %1187, float %1188, float %1189, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1208 = select i1 %122, float %1163, float %1187
  %1209 = select i1 %122, float %1207, float %1188
  %1210 = select i1 %122, float 1.000000e+00, float %1189
  %1211 = select i1 %1203, float %1204, float %1208
  %1212 = select i1 %1203, float %1205, float %1209
  %1213 = select i1 %1203, float %1206, float %1210
  %1214 = and i32 %98, 3
  %1215 = select i1 %92, i32 %1214, i32 0
  %1216 = icmp eq i32 %1215, 1
  br i1 %1216, label %1217, label %1293

; <label>:1217                                    ; preds = %1146
  %1218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1219 = extractvalue %dx.types.CBufRet.f32 %1218, 0
  %1220 = extractvalue %dx.types.CBufRet.f32 %1218, 1
  %1221 = fadd fast float %1219, %81
  %1222 = fadd fast float %1220, %82
  %1223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1224 = extractvalue %dx.types.CBufRet.f32 %1223, 0
  %1225 = extractvalue %dx.types.CBufRet.f32 %1223, 1
  %1226 = fsub fast float %1221, %1224
  %1227 = fsub fast float %1222, %1225
  %1228 = fmul fast float %1226, %1226
  %1229 = fmul fast float %1227, %1227
  %1230 = fadd fast float %1228, %1229
  %1231 = call float @dx.op.unary.f32(i32 24, float %1230)  ; Sqrt(value)
  %1232 = extractvalue %dx.types.CBufRet.f32 %1223, 2
  %1233 = fcmp fast olt float %1231, %1232
  br i1 %1233, label %1234, label %1287

; <label>:1234                                    ; preds = %1217
  %1235 = extractvalue %dx.types.CBufRet.f32 %1218, 2
  %1236 = fadd fast float %1235, %83
  %1237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1238 = extractvalue %dx.types.CBufRet.f32 %1237, 0
  %1239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1240 = extractvalue %dx.types.CBufRet.f32 %1239, 0
  %1241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1242 = extractvalue %dx.types.CBufRet.f32 %1241, 0
  %1243 = extractvalue %dx.types.CBufRet.f32 %1237, 1
  %1244 = extractvalue %dx.types.CBufRet.f32 %1239, 1
  %1245 = extractvalue %dx.types.CBufRet.f32 %1241, 1
  %1246 = extractvalue %dx.types.CBufRet.f32 %1237, 3
  %1247 = extractvalue %dx.types.CBufRet.f32 %1239, 3
  %1248 = extractvalue %dx.types.CBufRet.f32 %1241, 3
  %1249 = fadd fast float %1246, %1221
  %1250 = fadd fast float %1247, %1222
  %1251 = fadd fast float %1236, %1248
  %1252 = fmul fast float %1249, %1238
  %1253 = call float @dx.op.tertiary.f32(i32 46, float %1250, float %1240, float %1252)  ; FMad(a,b,c)
  %1254 = call float @dx.op.tertiary.f32(i32 46, float %1251, float %1242, float %1253)  ; FMad(a,b,c)
  %1255 = fmul fast float %1249, %1243
  %1256 = call float @dx.op.tertiary.f32(i32 46, float %1250, float %1244, float %1255)  ; FMad(a,b,c)
  %1257 = call float @dx.op.tertiary.f32(i32 46, float %1251, float %1245, float %1256)  ; FMad(a,b,c)
  %1258 = fsub fast float %1254, %1246
  %1259 = fsub fast float %1257, %1247
  %1260 = fsub fast float %1258, %1224
  %1261 = fadd fast float %1260, %1232
  %1262 = fsub fast float %1259, %1225
  %1263 = fadd fast float %1262, %1232
  %1264 = extractvalue %dx.types.CBufRet.f32 %1223, 3
  %1265 = fmul fast float %1261, %1264
  %1266 = fmul fast float %1263, %1264
  %1267 = call float @dx.op.unary.f32(i32 7, float %1265)  ; Saturate(value)
  %1268 = call float @dx.op.unary.f32(i32 7, float %1266)  ; Saturate(value)
  %1269 = fsub fast float 1.000000e+00, %1267
  %1270 = fsub fast float 1.000000e+00, %1268
  %1271 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %13, float %1269, float %1270, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1272 = extractvalue %dx.types.ResRet.f32 %1271, 0
  %1273 = fcmp fast ugt float %1272, 0.000000e+00
  br i1 %1273, label %1274, label %1287

; <label>:1274                                    ; preds = %1234
  %1275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1276 = extractvalue %dx.types.CBufRet.f32 %1275, 2
  %1277 = fmul fast float %1276, %1272
  %1278 = extractvalue %dx.types.CBufRet.f32 %1275, 3
  %1279 = fadd fast float %1278, %1277
  %1280 = extractvalue %dx.types.CBufRet.f32 %1241, 2
  %1281 = fadd fast float %1279, %1248
  %1282 = fmul fast float %1254, %1242
  %1283 = call float @dx.op.tertiary.f32(i32 46, float %1257, float %1245, float %1282)  ; FMad(a,b,c)
  %1284 = call float @dx.op.tertiary.f32(i32 46, float %1281, float %1280, float %1283)  ; FMad(a,b,c)
  %1285 = fsub fast float %1284, %1248
  %1286 = fsub fast float %1285, %1235
  br label %1287

; <label>:1287                                    ; preds = %1274, %1234, %1217
  %1288 = phi i1 [ true, %1274 ], [ false, %1234 ], [ false, %1217 ]
  %1289 = phi float [ %1286, %1274 ], [ -1.310720e+05, %1234 ], [ -1.310720e+05, %1217 ]
  %1290 = fsub fast float %1289, %83
  %1291 = call float @dx.op.unary.f32(i32 7, float %1290)  ; Saturate(value)
  %1292 = select i1 %1288, float %1291, float 1.000000e+00
  br label %1293

; <label>:1293                                    ; preds = %1287, %1146
  %1294 = phi float [ %1292, %1287 ], [ 0.000000e+00, %1146 ]
  %1295 = icmp eq i32 %1215, 3
  %1296 = select i1 %1295, float 1.000000e+00, float %1294
  %1297 = call float @dx.op.binary.f32(i32 35, float %1147, float %1296)  ; FMax(a,b)
  %1298 = call float @dx.op.unary.f32(i32 7, float %1297)  ; Saturate(value)
  %1299 = fcmp fast une float %1298, 0.000000e+00
  %1300 = call float @dx.op.dot3.f32(i32 55, float %81, float %82, float %83, float %81, float %82, float %83)  ; Dot3(ax,ay,az,bx,by,bz)
  %1301 = call float @dx.op.unary.f32(i32 25, float %1300)  ; Rsqrt(value)
  br i1 %1299, label %1309, label %1302

; <label>:1302                                    ; preds = %1293
  %1303 = fmul fast float %1301, %81
  %1304 = fmul fast float %1301, %82
  %1305 = fmul fast float %1301, %83
  %1306 = fsub fast float -0.000000e+00, %1303
  %1307 = fsub fast float -0.000000e+00, %1304
  %1308 = fsub fast float -0.000000e+00, %1305
  br label %1477

; <label>:1309                                    ; preds = %1293
  %1310 = fmul fast float %81, %1301
  %1311 = fsub fast float -0.000000e+00, %1310
  %1312 = fmul fast float %82, %1301
  %1313 = fsub fast float -0.000000e+00, %1312
  %1314 = fmul fast float %83, %1301
  %1315 = fsub fast float -0.000000e+00, %1314
  %1316 = call float @dx.op.dot3.f32(i32 55, float %1311, float %1313, float %1315, float %22, float %23, float %24)  ; Dot3(ax,ay,az,bx,by,bz)
  %1317 = fmul fast float %1298, 2.500000e+00
  %1318 = call float @dx.op.unary.f32(i32 7, float %1317)  ; Saturate(value)
  %1319 = fmul fast float %1298, 0x4013FFFFE0000000
  %1320 = fadd fast float %1319, 0xBFFFFFFFE0000000
  %1321 = call float @dx.op.unary.f32(i32 7, float %1320)  ; Saturate(value)
  %1322 = fmul fast float %1298, 0x4004000020000000
  %1323 = fadd fast float %1322, 0xBFF8000040000000
  %1324 = call float @dx.op.unary.f32(i32 7, float %1323)  ; Saturate(value)
  %1325 = call float @dx.op.unary.f32(i32 7, float %1318)  ; Saturate(value)
  %1326 = fmul fast float %1178, 1.000000e+01
  %1327 = call float @dx.op.unary.f32(i32 7, float %1326)  ; Saturate(value)
  %1328 = fmul fast float %1327, 2.000000e+00
  %1329 = fsub fast float 3.000000e+00, %1328
  %1330 = fmul fast float %1327, %1327
  %1331 = fmul fast float %1330, %1329
  %1332 = fsub fast float 1.000000e+00, %1331
  %1333 = fsub fast float 0x3FE3333340000000, %1199
  %1334 = fmul fast float %1333, 0x400AAAAAA0000000
  %1335 = call float @dx.op.unary.f32(i32 7, float %1334)  ; Saturate(value)
  %1336 = fmul fast float %1332, %1335
  %1337 = fmul fast float %1211, 0x3FEA2B8620000000
  %1338 = fmul fast float %1212, 0x3FEA2B8620000000
  %1339 = fmul fast float %1213, 0x3FEA2B8620000000
  %1340 = fadd fast float %1337, 0x3FC81DFBA0000000
  %1341 = fmul fast float %1340, %1211
  %1342 = fadd fast float %1341, 0x3F910E6020000000
  %1343 = fadd fast float %1338, 0x3FC81DFBA0000000
  %1344 = fmul fast float %1343, %1212
  %1345 = fadd fast float %1344, 0x3F910E6020000000
  %1346 = fadd fast float %1339, 0x3FC81DFBA0000000
  %1347 = fmul fast float %1346, %1213
  %1348 = fadd fast float %1347, 0x3F910E6020000000
  %1349 = call float @dx.op.unary.f32(i32 7, float %1342)  ; Saturate(value)
  %1350 = call float @dx.op.unary.f32(i32 7, float %1345)  ; Saturate(value)
  %1351 = call float @dx.op.unary.f32(i32 7, float %1348)  ; Saturate(value)
  %1352 = fsub fast float %1349, %1211
  %1353 = fsub fast float %1350, %1212
  %1354 = fsub fast float %1351, %1213
  %1355 = fmul fast float %1352, %1325
  %1356 = fmul fast float %1355, %1336
  %1357 = fmul fast float %1353, %1325
  %1358 = fmul fast float %1357, %1336
  %1359 = fmul fast float %1354, %1325
  %1360 = fmul fast float %1359, %1336
  %1361 = fadd fast float %1356, %1211
  %1362 = fadd fast float %1358, %1212
  %1363 = fadd fast float %1360, %1213
  %1364 = fmul fast float %1159, %1159
  %1365 = fmul fast float %1364, %1364
  %1366 = fadd fast float %1321, 1.000000e+00
  %1367 = fsub fast float %1366, %1336
  %1368 = call float @dx.op.unary.f32(i32 7, float %1367)  ; Saturate(value)
  %1369 = call float @dx.op.dot3.f32(i32 55, float %22, float %23, float %24, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1370 = call float @dx.op.unary.f32(i32 7, float %1369)  ; Saturate(value)
  %1371 = fsub fast float 1.000000e+00, %1365
  %1372 = call float @dx.op.binary.f32(i32 36, float %1368, float %1371)  ; FMin(a,b)
  %1373 = call float @dx.op.unary.f32(i32 7, float %1324)  ; Saturate(value)
  %1374 = call float @dx.op.binary.f32(i32 35, float %1372, float %1373)  ; FMax(a,b)
  %1375 = fadd fast float %1370, 0xBFE4CCCCC0000000
  %1376 = fmul fast float %1375, 0x4006DB6DA0000000
  %1377 = call float @dx.op.unary.f32(i32 7, float %1376)  ; Saturate(value)
  %1378 = fmul fast float %1377, 2.000000e+00
  %1379 = fsub fast float 3.000000e+00, %1378
  %1380 = bitcast float %1196 to i32
  %1381 = ashr i32 %1380, 1
  %1382 = add nsw i32 %1381, 532487669
  %1383 = bitcast i32 %1382 to float
  %1384 = fsub fast float 1.000000e+00, %1383
  %1385 = bitcast float %1384 to i32
  %1386 = sub nsw i32 2129859010, %1385
  %1387 = bitcast i32 %1386 to float
  %1388 = fmul fast float %1387, 2.000000e+00
  %1389 = bitcast float %1197 to i32
  %1390 = ashr i32 %1389, 1
  %1391 = add nsw i32 %1390, 532487669
  %1392 = bitcast i32 %1391 to float
  %1393 = fsub fast float 1.000000e+00, %1392
  %1394 = bitcast float %1393 to i32
  %1395 = sub nsw i32 2129859010, %1394
  %1396 = bitcast i32 %1395 to float
  %1397 = fmul fast float %1396, 2.000000e+00
  %1398 = bitcast float %1198 to i32
  %1399 = ashr i32 %1398, 1
  %1400 = add nsw i32 %1399, 532487669
  %1401 = bitcast i32 %1400 to float
  %1402 = fsub fast float 1.000000e+00, %1401
  %1403 = bitcast float %1402 to i32
  %1404 = sub nsw i32 2129859010, %1403
  %1405 = bitcast i32 %1404 to float
  %1406 = fmul fast float %1405, 2.000000e+00
  %1407 = fsub fast float 0x4002A9FBE0000000, %1388
  %1408 = fadd fast float %1388, 0x3FD54FDF00000000
  %1409 = bitcast float %1408 to i32
  %1410 = sub nsw i32 2129859010, %1409
  %1411 = bitcast i32 %1410 to float
  %1412 = fmul fast float %1411, %1407
  %1413 = fmul fast float %1412, %1412
  %1414 = fsub fast float 0x4002A9FBE0000000, %1397
  %1415 = fadd fast float %1397, 0x3FD54FDF00000000
  %1416 = bitcast float %1415 to i32
  %1417 = sub nsw i32 2129859010, %1416
  %1418 = bitcast i32 %1417 to float
  %1419 = fmul fast float %1418, %1414
  %1420 = fmul fast float %1419, %1419
  %1421 = fsub fast float 0x4002A9FBE0000000, %1406
  %1422 = fadd fast float %1406, 0x3FD54FDF00000000
  %1423 = bitcast float %1422 to i32
  %1424 = sub nsw i32 2129859010, %1423
  %1425 = bitcast i32 %1424 to float
  %1426 = fmul fast float %1425, %1421
  %1427 = fmul fast float %1426, %1426
  %1428 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1413)  ; FMax(a,b)
  %1429 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1420)  ; FMax(a,b)
  %1430 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1427)  ; FMax(a,b)
  %1431 = fsub fast float 1.000000e+00, %1316
  %1432 = fadd fast float %1431, %1332
  %1433 = call float @dx.op.unary.f32(i32 7, float %1432)  ; Saturate(value)
  %1434 = fsub fast float 1.000000e+00, %1296
  %1435 = fmul fast float %1374, %1434
  %1436 = fmul fast float %1377, %1377
  %1437 = fmul fast float %1436, %1435
  %1438 = fmul fast float %1437, %1379
  %1439 = fmul fast float %1434, 0xBFE99999A0000000
  %1440 = fmul fast float %1439, %1325
  %1441 = fmul fast float %1440, %1336
  %1442 = fadd fast float %1441, 1.000000e+00
  %1443 = fadd fast float %1199, -1.000000e+00
  %1444 = fmul fast float %1442, %1443
  %1445 = fadd fast float %1444, 1.000000e+00
  %1446 = fsub fast float %1428, %1196
  %1447 = fsub fast float %1429, %1197
  %1448 = fsub fast float %1430, %1198
  %1449 = fmul fast float %1438, %1446
  %1450 = fmul fast float %1438, %1447
  %1451 = fmul fast float %1438, %1448
  %1452 = fadd fast float %1449, %1196
  %1453 = fadd fast float %1450, %1197
  %1454 = fadd fast float %1451, %1198
  %1455 = fsub fast float %22, %1175
  %1456 = fsub fast float %23, %1176
  %1457 = fsub fast float %24, %1177
  %1458 = fmul fast float %1438, %1455
  %1459 = fmul fast float %1438, %1456
  %1460 = fmul fast float %1438, %1457
  %1461 = fadd fast float %1458, %1175
  %1462 = fadd fast float %1459, %1176
  %1463 = fadd fast float %1460, %1177
  %1464 = fmul fast float %1438, %1433
  %1465 = call float @dx.op.unary.f32(i32 7, float %1445)  ; Saturate(value)
  %1466 = fsub fast float 1.000000e+00, %1465
  %1467 = fmul fast float %1464, %1466
  %1468 = fadd fast float %1467, %1465
  %1469 = fsub fast float 1.000000e+00, %1159
  %1470 = fmul fast float %1438, %1469
  %1471 = fadd fast float %1470, %1159
  %1472 = call float @dx.op.dot3.f32(i32 55, float %1461, float %1462, float %1463, float %1461, float %1462, float %1463)  ; Dot3(ax,ay,az,bx,by,bz)
  %1473 = call float @dx.op.unary.f32(i32 25, float %1472)  ; Rsqrt(value)
  %1474 = fmul fast float %1461, %1473
  %1475 = fmul fast float %1462, %1473
  %1476 = fmul fast float %1463, %1473
  br label %1477

; <label>:1477                                    ; preds = %1309, %1302
  %1478 = phi float [ %1308, %1302 ], [ %1315, %1309 ]
  %1479 = phi float [ %1307, %1302 ], [ %1313, %1309 ]
  %1480 = phi float [ %1306, %1302 ], [ %1311, %1309 ]
  %1481 = phi float [ %1305, %1302 ], [ %1314, %1309 ]
  %1482 = phi float [ %1304, %1302 ], [ %1312, %1309 ]
  %1483 = phi float [ %1303, %1302 ], [ %1310, %1309 ]
  %1484 = phi float [ %1211, %1302 ], [ %1361, %1309 ]
  %1485 = phi float [ %1212, %1302 ], [ %1362, %1309 ]
  %1486 = phi float [ %1213, %1302 ], [ %1363, %1309 ]
  %1487 = phi float [ %1175, %1302 ], [ %1474, %1309 ]
  %1488 = phi float [ %1176, %1302 ], [ %1475, %1309 ]
  %1489 = phi float [ %1177, %1302 ], [ %1476, %1309 ]
  %1490 = phi float [ %1196, %1302 ], [ %1452, %1309 ]
  %1491 = phi float [ %1197, %1302 ], [ %1453, %1309 ]
  %1492 = phi float [ %1198, %1302 ], [ %1454, %1309 ]
  %1493 = phi float [ %1199, %1302 ], [ %1468, %1309 ]
  %1494 = phi float [ %1159, %1302 ], [ %1471, %1309 ]
  %1495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1496 = extractvalue %dx.types.CBufRet.f32 %1495, 2
  %1497 = extractvalue %dx.types.CBufRet.f32 %1495, 3
  %1498 = fmul fast float %1496, %34
  %1499 = fmul fast float %1497, %35
  %1500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %1501 = extractvalue %dx.types.CBufRet.f32 %1500, 0
  %1502 = extractvalue %dx.types.CBufRet.f32 %1500, 1
  %1503 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %13, float %1498, float %1499, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1504 = extractvalue %dx.types.ResRet.f32 %1503, 0
  %1505 = fmul fast float %1504, %1502
  %1506 = call float @dx.op.unary.f32(i32 7, float %1505)  ; Saturate(value)
  %1507 = fadd fast float %1506, -1.000000e+00
  %1508 = fmul fast float %1507, %1501
  %1509 = select i1 %122, float 0.000000e+00, float %1492
  %1510 = call float @dx.op.dot3.f32(i32 55, float %1487, float %1488, float %1489, float %1480, float %1479, float %1478)  ; Dot3(ax,ay,az,bx,by,bz)
  %1511 = call float @dx.op.unary.f32(i32 7, float %1510)  ; Saturate(value)
  %1512 = fsub fast float 1.000000e+00, %1494
  %1513 = bitcast float %1512 to i32
  %1514 = sub nsw i32 2129859010, %1513
  %1515 = fmul fast float %1172, %1153
  %1516 = fmul fast float %1172, %1154
  %1517 = fmul fast float %1172, %1155
  %1518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1519 = extractvalue %dx.types.CBufRet.f32 %1518, 3
  %1520 = fcmp fast oeq float %1519, 0.000000e+00
  br i1 %1520, label %1763, label %1521

; <label>:1521                                    ; preds = %1477
  %1522 = extractvalue %dx.types.CBufRet.f32 %1518, 0
  %1523 = extractvalue %dx.types.CBufRet.f32 %1518, 1
  %1524 = extractvalue %dx.types.CBufRet.f32 %1518, 2
  %1525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %1526 = extractvalue %dx.types.CBufRet.f32 %1525, 0
  %1527 = extractvalue %dx.types.CBufRet.f32 %1525, 1
  %1528 = extractvalue %dx.types.CBufRet.f32 %1525, 2
  %1529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %1530 = extractvalue %dx.types.CBufRet.f32 %1529, 0
  %1531 = extractvalue %dx.types.CBufRet.f32 %1529, 1
  %1532 = call float @dx.op.dot3.f32(i32 55, float %1526, float %1527, float %1528, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1533 = select i1 %122, float %1530, float %1526
  %1534 = select i1 %122, float %1532, float %1527
  %1535 = select i1 %122, float %1531, float %1528
  %1536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %1537 = extractvalue %dx.types.CBufRet.f32 %1536, 1
  %1538 = fcmp fast une float %1537, 0.000000e+00
  br i1 %1538, label %1539, label %1556

; <label>:1539                                    ; preds = %1521
  %1540 = fptoui float %34 to i32
  %1541 = fptoui float %35 to i32
  %1542 = lshr i32 %1540, 4
  %1543 = lshr i32 %1541, 4
  %1544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1545 = extractvalue %dx.types.CBufRet.f32 %1544, 0
  %1546 = fptoui float %1545 to i32
  %1547 = add i32 %1546, 15
  %1548 = lshr i32 %1547, 4
  %1549 = mul i32 %1548, %1543
  %1550 = add i32 %1549, %1542
  %1551 = shl i32 %1550, 3
  %1552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1551, i32 undef)  ; BufferLoad(srv,index,wot)
  %1553 = extractvalue %dx.types.ResRet.i32 %1552, 0
  %1554 = and i32 %1553, -268435456
  %1555 = icmp eq i32 %1554, -1342177280
  br i1 %1555, label %1561, label %1556

; <label>:1556                                    ; preds = %1539, %1521
  %1557 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %14, float %1498, float %1499, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1558 = extractvalue %dx.types.ResRet.f32 %1557, 0
  %1559 = extractvalue %dx.types.ResRet.f32 %1557, 1
  %1560 = extractvalue %dx.types.ResRet.f32 %1557, 2
  br label %1561

; <label>:1561                                    ; preds = %1556, %1539
  %1562 = phi float [ %1558, %1556 ], [ 0.000000e+00, %1539 ]
  %1563 = phi float [ %1559, %1556 ], [ 0.000000e+00, %1539 ]
  %1564 = phi float [ %1560, %1556 ], [ 0.000000e+00, %1539 ]
  %1565 = call float @dx.op.binary.f32(i32 36, float %1563, float %1564)  ; FMin(a,b)
  %1566 = call float @dx.op.binary.f32(i32 36, float %1562, float %1565)  ; FMin(a,b)
  %1567 = fcmp fast ogt float %1566, 0.000000e+00
  br i1 %1567, label %1568, label %1763, !dx.controlflow.hints !50

; <label>:1568                                    ; preds = %1561
  %1569 = fmul fast float %1562, %1533
  %1570 = fmul fast float %1563, %1534
  %1571 = fmul fast float %1564, %1535
  %1572 = fsub fast float %1522, %1483
  %1573 = fsub fast float %1523, %1482
  %1574 = fsub fast float %1524, %1481
  %1575 = call float @dx.op.dot3.f32(i32 55, float %1572, float %1573, float %1574, float %1572, float %1573, float %1574)  ; Dot3(ax,ay,az,bx,by,bz)
  %1576 = call float @dx.op.unary.f32(i32 25, float %1575)  ; Rsqrt(value)
  %1577 = fmul fast float %1576, %1572
  %1578 = fmul fast float %1576, %1573
  %1579 = fmul fast float %1576, %1574
  %1580 = call float @dx.op.dot3.f32(i32 55, float %1522, float %1523, float %1524, float %1487, float %1488, float %1489)  ; Dot3(ax,ay,az,bx,by,bz)
  %1581 = call float @dx.op.dot3.f32(i32 55, float %1480, float %1479, float %1478, float %1577, float %1578, float %1579)  ; Dot3(ax,ay,az,bx,by,bz)
  %1582 = call float @dx.op.unary.f32(i32 7, float %1580)  ; Saturate(value)
  %1583 = bitcast i32 %1514 to float
  %1584 = fmul fast float %1582, %1582
  %1585 = fmul fast float %1584, %1583
  %1586 = call float @dx.op.unary.f32(i32 7, float %1585)  ; Saturate(value)
  %1587 = fmul fast float %1586, %1582
  %1588 = call float @dx.op.dot3.f32(i32 55, float %1487, float %1488, float %1489, float %1577, float %1578, float %1579)  ; Dot3(ax,ay,az,bx,by,bz)
  %1589 = fmul fast float %1588, %1588
  %1590 = call float @dx.op.unary.f32(i32 6, float %1580)  ; FAbs(value)
  %1591 = fsub fast float 1.000000e+00, %1493
  %1592 = call float @dx.op.binary.f32(i32 35, float %1591, float 0x3F847AE140000000)  ; FMax(a,b)
  %1593 = fmul fast float %1592, %1592
  %1594 = fmul fast float %1593, %1593
  %1595 = fsub fast float 1.000000e+00, %1594
  %1596 = fmul fast float %1511, %1511
  %1597 = fmul fast float %1596, %1595
  %1598 = fadd fast float %1597, %1594
  %1599 = bitcast float %1598 to i32
  %1600 = ashr i32 %1599, 1
  %1601 = add nsw i32 %1600, 532487669
  %1602 = bitcast i32 %1601 to float
  %1603 = fadd fast float %1602, %1511
  %1604 = fmul fast float %1594, %1589
  %1605 = fsub fast float 1.000000e+00, %1589
  %1606 = fadd fast float %1605, %1604
  %1607 = fmul fast float %1590, %1590
  %1608 = fmul fast float %1607, %1595
  %1609 = fadd fast float %1608, %1594
  %1610 = bitcast float %1609 to i32
  %1611 = ashr i32 %1610, 1
  %1612 = add nsw i32 %1611, 532487669
  %1613 = bitcast i32 %1612 to float
  %1614 = fadd fast float %1613, %1590
  %1615 = fmul fast float %1606, %1606
  %1616 = fmul fast float %1615, %1603
  %1617 = fmul fast float %1616, %1614
  %1618 = fdiv fast float 0x3FF0A00000000000, %1617
  %1619 = fmul fast float %1618, %1594
  %1620 = call float @dx.op.unary.f32(i32 6, float %1581)  ; FAbs(value)
  %1621 = fsub fast float 1.000000e+00, %1620
  %1622 = bitcast float %1621 to i32
  %1623 = sitofp i32 %1622 to float
  %1624 = fmul fast float %1623, 5.000000e+00
  %1625 = fadd fast float %1624, 0xC1EFBF8940000000
  %1626 = fptosi float %1625 to i32
  %1627 = bitcast i32 %1626 to float
  %1628 = fsub fast float 1.000000e+00, %1490
  %1629 = fsub fast float 1.000000e+00, %1491
  %1630 = fsub fast float 1.000000e+00, %1509
  %1631 = fmul fast float %1627, %1628
  %1632 = fmul fast float %1627, %1629
  %1633 = fmul fast float %1627, %1630
  %1634 = fadd fast float %1631, %1490
  %1635 = fadd fast float %1632, %1491
  %1636 = fadd fast float %1633, %1509
  %1637 = fcmp fast ogt float %1152, 0.000000e+00
  br i1 %1637, label %1638, label %1661

; <label>:1638                                    ; preds = %1568
  %1639 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %13, float %1152, float %1620, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1640 = extractvalue %dx.types.ResRet.f32 %1639, 0
  %1641 = extractvalue %dx.types.ResRet.f32 %1639, 1
  %1642 = extractvalue %dx.types.ResRet.f32 %1639, 2
  %1643 = fadd fast float %1640, -5.000000e-01
  %1644 = fadd fast float %1641, -5.000000e-01
  %1645 = fadd fast float %1642, -5.000000e-01
  %1646 = fmul fast float %1490, 4.000000e+00
  %1647 = fmul fast float %1646, %1628
  %1648 = fmul fast float %1647, %1643
  %1649 = fmul fast float %1491, 4.000000e+00
  %1650 = fmul fast float %1649, %1629
  %1651 = fmul fast float %1650, %1644
  %1652 = fmul fast float %1509, 4.000000e+00
  %1653 = fmul fast float %1652, %1630
  %1654 = fmul fast float %1653, %1645
  %1655 = fadd fast float %1648, %1634
  %1656 = fadd fast float %1651, %1635
  %1657 = fadd fast float %1654, %1636
  %1658 = call float @dx.op.unary.f32(i32 7, float %1655)  ; Saturate(value)
  %1659 = call float @dx.op.unary.f32(i32 7, float %1656)  ; Saturate(value)
  %1660 = call float @dx.op.unary.f32(i32 7, float %1657)  ; Saturate(value)
  br label %1661

; <label>:1661                                    ; preds = %1638, %1568
  %1662 = phi float [ %1658, %1638 ], [ %1634, %1568 ]
  %1663 = phi float [ %1659, %1638 ], [ %1635, %1568 ]
  %1664 = phi float [ %1660, %1638 ], [ %1636, %1568 ]
  %1665 = fmul fast float %1580, 9.843750e-01
  %1666 = fmul fast float %1493, 9.843750e-01
  %1667 = fadd fast float %1665, 7.812500e-03
  %1668 = fadd fast float %1666, 7.812500e-03
  %1669 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %13, float %1667, float %1668, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1670 = extractvalue %dx.types.ResRet.f32 %1669, 2
  %1671 = extractvalue %dx.types.ResRet.f32 %1669, 3
  %1672 = fmul fast float %1670, %1490
  %1673 = fmul fast float %1670, %1491
  %1674 = fmul fast float %1670, %1509
  %1675 = fadd fast float %1672, %1671
  %1676 = fadd fast float %1673, %1671
  %1677 = fadd fast float %1674, %1671
  br i1 %1637, label %1678, label %1701

; <label>:1678                                    ; preds = %1661
  %1679 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %13, float %1152, float %1580, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1680 = extractvalue %dx.types.ResRet.f32 %1679, 0
  %1681 = extractvalue %dx.types.ResRet.f32 %1679, 1
  %1682 = extractvalue %dx.types.ResRet.f32 %1679, 2
  %1683 = fadd fast float %1680, -5.000000e-01
  %1684 = fadd fast float %1681, -5.000000e-01
  %1685 = fadd fast float %1682, -5.000000e-01
  %1686 = fmul fast float %1490, 4.000000e+00
  %1687 = fmul fast float %1686, %1628
  %1688 = fmul fast float %1687, %1683
  %1689 = fmul fast float %1491, 4.000000e+00
  %1690 = fmul fast float %1689, %1629
  %1691 = fmul fast float %1690, %1684
  %1692 = fmul fast float %1509, 4.000000e+00
  %1693 = fmul fast float %1692, %1630
  %1694 = fmul fast float %1693, %1685
  %1695 = fadd fast float %1688, %1675
  %1696 = fadd fast float %1691, %1676
  %1697 = fadd fast float %1694, %1677
  %1698 = call float @dx.op.unary.f32(i32 7, float %1695)  ; Saturate(value)
  %1699 = call float @dx.op.unary.f32(i32 7, float %1696)  ; Saturate(value)
  %1700 = call float @dx.op.unary.f32(i32 7, float %1697)  ; Saturate(value)
  br label %1701

; <label>:1701                                    ; preds = %1678, %1661
  %1702 = phi float [ %1698, %1678 ], [ %1675, %1661 ]
  %1703 = phi float [ %1699, %1678 ], [ %1676, %1661 ]
  %1704 = phi float [ %1700, %1678 ], [ %1677, %1661 ]
  %1705 = call float @dx.op.binary.f32(i32 35, float %1703, float %1704)  ; FMax(a,b)
  %1706 = call float @dx.op.binary.f32(i32 35, float %1702, float %1705)  ; FMax(a,b)
  %1707 = fsub fast float 1.000000e+00, %1706
  %1708 = fmul fast float %1662, %1619
  %1709 = fmul fast float %1663, %1619
  %1710 = fmul fast float %1664, %1619
  %1711 = call float @dx.op.dot3.f32(i32 55, float %1484, float %1485, float %1486, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1712 = fcmp fast ogt float %1711, 0x3E7FF19E20000000
  %1713 = fdiv fast float 1.000000e+00, %1711
  %1714 = select i1 %1712, float %1713, float 0.000000e+00
  %1715 = fmul fast float %1714, %1484
  %1716 = fmul fast float %1714, %1485
  %1717 = fmul fast float %1714, %1486
  %1718 = fadd fast float %1715, -1.000000e+00
  %1719 = fadd fast float %1716, -1.000000e+00
  %1720 = fadd fast float %1717, -1.000000e+00
  %1721 = fmul fast float %1718, 5.000000e-01
  %1722 = fmul fast float %1719, 5.000000e-01
  %1723 = fmul fast float %1720, 5.000000e-01
  %1724 = fadd fast float %1721, 1.000000e+00
  %1725 = fadd fast float %1722, 1.000000e+00
  %1726 = fadd fast float %1723, 1.000000e+00
  %1727 = fsub fast float 1.000000e+00, %1581
  %1728 = bitcast float %1727 to i32
  %1729 = sitofp i32 %1728 to float
  %1730 = fmul fast float %1729, 5.000000e+00
  %1731 = fadd fast float %1730, 0xC1EFBF8940000000
  %1732 = fptosi float %1731 to i32
  %1733 = bitcast i32 %1732 to float
  %1734 = fmul fast float %1733, %1151
  %1735 = fmul fast float %1707, %1734
  %1736 = fmul fast float %1735, %1724
  %1737 = fmul fast float %1735, %1725
  %1738 = fmul fast float %1735, %1726
  %1739 = fadd fast float %1736, %1708
  %1740 = fadd fast float %1737, %1709
  %1741 = fadd fast float %1738, %1710
  %1742 = fmul fast float %1587, %1569
  %1743 = fmul fast float %1742, %1739
  %1744 = fmul fast float %1587, %1570
  %1745 = fmul fast float %1744, %1740
  %1746 = fmul fast float %1587, %1571
  %1747 = fmul fast float %1746, %1741
  %1748 = fmul fast float %1569, %1172
  %1749 = fmul fast float %1748, %1587
  %1750 = fmul fast float %1749, %1707
  %1751 = fmul fast float %1570, %1172
  %1752 = fmul fast float %1751, %1587
  %1753 = fmul fast float %1752, %1707
  %1754 = fmul fast float %1571, %1172
  %1755 = fmul fast float %1754, %1587
  %1756 = fmul fast float %1755, %1707
  %1757 = fadd fast float %1743, %1153
  %1758 = fmul fast float %1757, %1172
  %1759 = fadd fast float %1745, %1154
  %1760 = fmul fast float %1759, %1172
  %1761 = fadd fast float %1747, %1155
  %1762 = fmul fast float %1761, %1172
  br label %1763

; <label>:1763                                    ; preds = %1701, %1561, %1477
  %1764 = phi float [ %1515, %1477 ], [ %1515, %1561 ], [ %1758, %1701 ]
  %1765 = phi float [ %1516, %1477 ], [ %1516, %1561 ], [ %1760, %1701 ]
  %1766 = phi float [ %1517, %1477 ], [ %1517, %1561 ], [ %1762, %1701 ]
  %1767 = phi float [ 0.000000e+00, %1477 ], [ 0.000000e+00, %1561 ], [ %1750, %1701 ]
  %1768 = phi float [ 0.000000e+00, %1477 ], [ 0.000000e+00, %1561 ], [ %1753, %1701 ]
  %1769 = phi float [ 0.000000e+00, %1477 ], [ 0.000000e+00, %1561 ], [ %1756, %1701 ]
  %1770 = call float @dx.op.unary.f32(i32 24, float %1484)  ; Sqrt(value)
  %1771 = call float @dx.op.unary.f32(i32 24, float %1485)  ; Sqrt(value)
  %1772 = call float @dx.op.unary.f32(i32 24, float %1486)  ; Sqrt(value)
  %1773 = fmul fast float %1770, %1767
  %1774 = fmul fast float %1771, %1768
  %1775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1776 = extractvalue %dx.types.CBufRet.f32 %1775, 0
  br i1 %122, label %1777, label %1810

; <label>:1777                                    ; preds = %1763
  %1778 = fadd fast float %1769, %1149
  %1779 = fmul fast float %1778, %1150
  %1780 = fsub fast float 1.000000e+00, %1150
  %1781 = call float @dx.op.unary.f32(i32 7, float %1780)  ; Saturate(value)
  %1782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1783 = extractvalue %dx.types.CBufRet.f32 %1782, 3
  %1784 = fmul fast float %1783, %1781
  %1785 = fsub fast float 1.000000e+00, %1511
  %1786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1787 = extractvalue %dx.types.CBufRet.f32 %1786, 0
  %1788 = fmul fast float %1787, %1785
  %1789 = extractvalue %dx.types.CBufRet.f32 %1786, 2
  %1790 = fmul fast float %1508, %1789
  %1791 = fadd fast float %1774, %1773
  %1792 = fmul fast float %1776, %1791
  %1793 = extractvalue %dx.types.CBufRet.f32 %1782, 1
  %1794 = fadd fast float %1784, %1779
  %1795 = fsub fast float %1794, %1788
  %1796 = fadd fast float %1795, %1790
  %1797 = fsub fast float %1796, %1793
  %1798 = extractvalue %dx.types.CBufRet.f32 %1782, 2
  %1799 = fmul fast float %1797, %1798
  %1800 = call float @dx.op.unary.f32(i32 7, float %1799)  ; Saturate(value)
  %1801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1802 = extractvalue %dx.types.CBufRet.f32 %1801, 0
  %1803 = fsub fast float %1800, %1802
  %1804 = fmul fast float %1803, 1.000000e+01
  %1805 = call float @dx.op.unary.f32(i32 7, float %1804)  ; Saturate(value)
  %1806 = fadd fast float %1148, -1.000000e+00
  %1807 = fmul fast float %1805, %1806
  %1808 = fadd fast float %1807, 1.000000e+00
  %1809 = fmul fast float %1808, %1800
  br label %1826

; <label>:1810                                    ; preds = %1763
  %1811 = fmul fast float %1772, %1769
  %1812 = fmul fast float %1776, %1773
  %1813 = fmul fast float %1776, %1774
  %1814 = fmul fast float %1811, %1776
  %1815 = add i32 %17, 116
  %1816 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %1815, i32 undef)  ; BufferLoad(srv,index,wot)
  %1817 = extractvalue %dx.types.ResRet.i32 %1816, 0
  %1818 = and i32 %1817, 32
  %1819 = icmp eq i32 %1818, 0
  br i1 %1819, label %1826, label %1820

; <label>:1820                                    ; preds = %1810
  %1821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1822 = extractvalue %dx.types.CBufRet.f32 %1821, 0
  %1823 = fmul fast float %1822, 0x3FE99999A0000000
  %1824 = fadd fast float %1822, %1812
  %1825 = fadd fast float %1823, %1814
  br label %1826

; <label>:1826                                    ; preds = %1820, %1810, %1777
  %1827 = phi float [ %1792, %1777 ], [ %1824, %1820 ], [ %1812, %1810 ]
  %1828 = phi float [ %1809, %1777 ], [ %1813, %1820 ], [ %1813, %1810 ]
  %1829 = phi float [ %1808, %1777 ], [ %1825, %1820 ], [ %1814, %1810 ]
  %1830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1831 = extractvalue %dx.types.CBufRet.f32 %1830, 0
  %1832 = fmul fast float %1831, %1765
  %1833 = fmul fast float %1831, %1766
  %1834 = fadd fast float %1765, %1764
  %1835 = select i1 %122, float %1834, float %1764
  %1836 = fmul float %1835, %1831
  %1837 = select i1 %122, float 0.000000e+00, float %1832
  %1838 = select i1 %122, float 0.000000e+00, float %1833
  %1839 = fmul fast float %1827, %1770
  %1840 = fmul fast float %1828, %1771
  %1841 = fmul fast float %1829, %1772
  %1842 = fadd fast float %1836, %1839
  %1843 = fadd fast float %1837, %1840
  %1844 = fadd fast float %1838, %1841
  %1845 = select i1 %122, float %1828, float %1843
  %1846 = select i1 %122, float %1829, float %1844
  %1847 = call float @dx.op.binary.f32(i32 36, float %1842, float 3.225500e+04)  ; FMin(a,b)
  %1848 = call float @dx.op.binary.f32(i32 36, float %1845, float 3.225500e+04)  ; FMin(a,b)
  %1849 = call float @dx.op.binary.f32(i32 36, float %1846, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1847)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1848)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1849)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!28 = !{[28 x i32] [i32 26, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0]}
!29 = !{void ()* @ps_main, !"ps_main", !30, !4, !49}
!30 = !{!31, !47, null}
!31 = !{!32, !35, !36, !38, !39, !41, !43, !45, !46}
!32 = !{i32 0, !"SV_Position", i8 9, i8 3, !33, i8 4, i32 1, i8 4, i32 0, i8 0, !34}
!33 = !{i32 0}
!34 = !{i32 3, i32 11}
!35 = !{i32 1, !"COLOR", i8 9, i8 0, !33, i8 2, i32 1, i8 4, i32 1, i8 0, null}
!36 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !33, i8 2, i32 1, i8 2, i32 2, i8 0, !37}
!37 = !{i32 3, i32 3}
!38 = !{i32 3, !"LMAPCOORDS", i8 9, i8 0, !33, i8 2, i32 1, i8 3, i32 3, i8 0, null}
!39 = !{i32 4, !"NORMAL", i8 9, i8 0, !33, i8 2, i32 1, i8 3, i32 4, i8 0, !40}
!40 = !{i32 3, i32 7}
!41 = !{i32 5, !"TANGENT", i8 9, i8 0, !33, i8 2, i32 1, i8 4, i32 5, i8 0, !42}
!42 = !{i32 3, i32 15}
!43 = !{i32 6, !"MATERIAL_DATA_OFFSET", i8 5, i8 0, !33, i8 1, i32 1, i8 1, i32 6, i8 0, !44}
!44 = !{i32 3, i32 1}
!45 = !{i32 7, !"TRANSIENT_INDEX", i8 5, i8 0, !33, i8 1, i32 1, i8 1, i32 6, i8 1, null}
!46 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !33, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!47 = !{!48}
!48 = !{i32 0, !"SV_Target", i8 9, i8 16, !33, i8 0, i32 1, i8 4, i32 0, i8 0, !42}
!49 = !{i32 0, i64 24}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 1}

