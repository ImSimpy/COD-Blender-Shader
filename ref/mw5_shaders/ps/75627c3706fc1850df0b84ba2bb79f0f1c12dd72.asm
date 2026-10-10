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
; shader hash: 3c1bfe13f8274ca64c967ee9fa42b839
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
  %17 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %18 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %19 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %20 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %21 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
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
  %625 = phi float [ 0.000000e+00, %120 ], [ %478, %605 ]
  %626 = phi float [ 0.000000e+00, %120 ], [ %479, %605 ]
  %627 = phi float [ 0.000000e+00, %120 ], [ %480, %605 ]
  %628 = phi float [ 0.000000e+00, %120 ], [ %606, %605 ]
  %629 = phi float [ 0.000000e+00, %120 ], [ %607, %605 ]
  %630 = phi float [ 0.000000e+00, %120 ], [ %608, %605 ]
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
  br i1 %716, label %1145, label %717

; <label>:717                                     ; preds = %622
  %718 = and i32 %713, 1023
  br label %719

; <label>:719                                     ; preds = %846, %717
  %720 = phi float [ %847, %846 ], [ 0.000000e+00, %717 ]
  %721 = phi float [ %848, %846 ], [ %632, %717 ]
  %722 = phi float [ %849, %846 ], [ %637, %717 ]
  %723 = phi float [ %850, %846 ], [ %635, %717 ]
  %724 = phi float [ %851, %846 ], [ 0.000000e+00, %717 ]
  %725 = phi float [ %852, %846 ], [ 0.000000e+00, %717 ]
  %726 = phi float [ %853, %846 ], [ %628, %717 ]
  %727 = phi float [ %854, %846 ], [ %629, %717 ]
  %728 = phi float [ %855, %846 ], [ %630, %717 ]
  %729 = phi float [ %856, %846 ], [ %663, %717 ]
  %730 = phi float [ %857, %846 ], [ %664, %717 ]
  %731 = phi float [ %858, %846 ], [ %665, %717 ]
  %732 = phi float [ %859, %846 ], [ %634, %717 ]
  %733 = phi float [ %860, %846 ], [ %633, %717 ]
  %734 = phi float [ %861, %846 ], [ 0.000000e+00, %717 ]
  %735 = phi float [ %862, %846 ], [ %631, %717 ]
  %736 = phi float [ %863, %846 ], [ %625, %717 ]
  %737 = phi float [ %864, %846 ], [ %626, %717 ]
  %738 = phi float [ %865, %846 ], [ %627, %717 ]
  %739 = phi i32 [ %796, %846 ], [ 0, %717 ]
  %740 = add nuw nsw i32 %739, %715
  %741 = shl i32 %740, 2
  %742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %741, i32 undef)  ; BufferLoad(srv,index,wot)
  %743 = extractvalue %dx.types.ResRet.i32 %742, 0
  %744 = shl i32 %743, 8
  %745 = or i32 %744, 48
  %746 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %745, i32 undef)  ; BufferLoad(srv,index,wot)
  %747 = extractvalue %dx.types.ResRet.f32 %746, 0
  %748 = extractvalue %dx.types.ResRet.f32 %746, 1
  %749 = extractvalue %dx.types.ResRet.f32 %746, 2
  %750 = extractvalue %dx.types.ResRet.f32 %746, 3
  %751 = or i32 %744, 64
  %752 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %751, i32 undef)  ; BufferLoad(srv,index,wot)
  %753 = extractvalue %dx.types.ResRet.i32 %752, 0
  %754 = extractvalue %dx.types.ResRet.i32 %752, 1
  %755 = or i32 %744, 80
  %756 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %755, i32 undef)  ; BufferLoad(srv,index,wot)
  %757 = extractvalue %dx.types.ResRet.f32 %756, 2
  %758 = extractvalue %dx.types.ResRet.f32 %756, 3
  %759 = or i32 %744, 96
  %760 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %759, i32 undef)  ; BufferLoad(srv,index,wot)
  %761 = extractvalue %dx.types.ResRet.f32 %760, 0
  %762 = extractvalue %dx.types.ResRet.f32 %760, 1
  %763 = extractvalue %dx.types.ResRet.f32 %760, 2
  %764 = extractvalue %dx.types.ResRet.f32 %760, 3
  %765 = or i32 %744, 112
  %766 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %765, i32 undef)  ; BufferLoad(srv,index,wot)
  %767 = extractvalue %dx.types.ResRet.f32 %766, 2
  %768 = or i32 %744, 128
  %769 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %768, i32 undef)  ; BufferLoad(srv,index,wot)
  %770 = extractvalue %dx.types.ResRet.f32 %769, 0
  %771 = extractvalue %dx.types.ResRet.f32 %769, 1
  %772 = extractvalue %dx.types.ResRet.f32 %769, 2
  %773 = extractvalue %dx.types.ResRet.f32 %769, 3
  %774 = or i32 %744, 144
  %775 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %774, i32 undef)  ; BufferLoad(srv,index,wot)
  %776 = extractvalue %dx.types.ResRet.f32 %775, 0
  %777 = extractvalue %dx.types.ResRet.f32 %775, 1
  %778 = extractvalue %dx.types.ResRet.f32 %775, 2
  %779 = extractvalue %dx.types.ResRet.f32 %775, 3
  %780 = or i32 %744, 160
  %781 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %780, i32 undef)  ; BufferLoad(srv,index,wot)
  %782 = extractvalue %dx.types.ResRet.f32 %781, 0
  %783 = extractvalue %dx.types.ResRet.f32 %781, 1
  %784 = extractvalue %dx.types.ResRet.f32 %781, 2
  %785 = extractvalue %dx.types.ResRet.f32 %781, 3
  %786 = or i32 %744, 192
  %787 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %786, i32 undef)  ; BufferLoad(srv,index,wot)
  %788 = extractvalue %dx.types.ResRet.i32 %787, 0
  %789 = or i32 %744, 208
  %790 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %789, i32 undef)  ; BufferLoad(srv,index,wot)
  %791 = extractvalue %dx.types.ResRet.f32 %790, 0
  %792 = or i32 %744, 248
  %793 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %792, i32 undef)  ; BufferLoad(srv,index,wot)
  %794 = extractvalue %dx.types.ResRet.f32 %793, 0
  %795 = extractvalue %dx.types.ResRet.f32 %793, 1
  %796 = add nuw nsw i32 %739, 1
  %797 = bitcast float %750 to i32
  %798 = and i32 %797, 2560
  %799 = icmp eq i32 %798, 0
  %800 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %744, i32 undef)  ; BufferLoad(srv,index,wot)
  %801 = extractvalue %dx.types.ResRet.f32 %800, 0
  %802 = extractvalue %dx.types.ResRet.f32 %800, 1
  %803 = extractvalue %dx.types.ResRet.f32 %800, 2
  %804 = extractvalue %dx.types.ResRet.f32 %800, 3
  %805 = call float @dx.op.dot4.f32(i32 56, float %801, float %802, float %803, float %804, float %80, float %81, float %82, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %806 = or i32 %744, 16
  %807 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %806, i32 undef)  ; BufferLoad(srv,index,wot)
  %808 = extractvalue %dx.types.ResRet.f32 %807, 0
  %809 = extractvalue %dx.types.ResRet.f32 %807, 1
  %810 = extractvalue %dx.types.ResRet.f32 %807, 2
  %811 = extractvalue %dx.types.ResRet.f32 %807, 3
  %812 = call float @dx.op.dot4.f32(i32 56, float %808, float %809, float %810, float %811, float %80, float %81, float %82, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %813 = or i32 %744, 32
  %814 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %813, i32 undef)  ; BufferLoad(srv,index,wot)
  %815 = extractvalue %dx.types.ResRet.f32 %814, 0
  %816 = extractvalue %dx.types.ResRet.f32 %814, 1
  %817 = extractvalue %dx.types.ResRet.f32 %814, 2
  %818 = extractvalue %dx.types.ResRet.f32 %814, 3
  %819 = call float @dx.op.dot4.f32(i32 56, float %815, float %816, float %817, float %818, float %80, float %81, float %82, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %820 = call float @dx.op.unary.f32(i32 27, float %805)  ; Round_ni(value)
  %821 = call float @dx.op.unary.f32(i32 6, float %820)  ; FAbs(value)
  %822 = call float @dx.op.unary.f32(i32 27, float %812)  ; Round_ni(value)
  %823 = call float @dx.op.unary.f32(i32 6, float %822)  ; FAbs(value)
  %824 = call float @dx.op.unary.f32(i32 6, float %819)  ; FAbs(value)
  %825 = call float @dx.op.unary.f32(i32 27, float %824)  ; Round_ni(value)
  %826 = fadd fast float %823, %821
  %827 = fadd fast float %826, %825
  %828 = fcmp fast oeq float %827, 0.000000e+00
  %829 = call float @dx.op.dot4.f32(i32 56, float %801, float %802, float %803, float %804, float %672, float %673, float %674, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %830 = call float @dx.op.dot4.f32(i32 56, float %808, float %809, float %810, float %811, float %672, float %673, float %674, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %831 = call float @dx.op.dot4.f32(i32 56, float %801, float %802, float %803, float %804, float %675, float %676, float %677, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %832 = call float @dx.op.dot4.f32(i32 56, float %808, float %809, float %810, float %811, float %675, float %676, float %677, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %833 = fsub fast float %829, %805
  %834 = fsub fast float %831, %805
  %835 = fsub fast float %830, %812
  %836 = fsub fast float %832, %812
  %837 = call float @dx.op.dot3.f32(i32 55, float %747, float %748, float %749, float %21, float %22, float %23)  ; Dot3(ax,ay,az,bx,by,bz)
  %838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %839 = extractvalue %dx.types.CBufRet.f32 %838, 2
  %840 = fadd fast float %839, %837
  %841 = call float @dx.op.unary.f32(i32 7, float %840)  ; Saturate(value)
  %842 = extractvalue %dx.types.CBufRet.f32 %838, 0
  %843 = fcmp fast ogt float %841, %842
  %844 = and i1 %828, %843
  %845 = and i1 %799, %844
  br i1 %845, label %867, label %846

; <label>:846                                     ; preds = %1131, %948, %867, %719
  %847 = phi float [ %720, %867 ], [ %951, %948 ], [ %951, %1131 ], [ %720, %719 ]
  %848 = phi float [ %721, %867 ], [ %721, %948 ], [ %1106, %1131 ], [ %721, %719 ]
  %849 = phi float [ %722, %867 ], [ %722, %948 ], [ %1105, %1131 ], [ %722, %719 ]
  %850 = phi float [ %723, %867 ], [ %723, %948 ], [ %1103, %1131 ], [ %723, %719 ]
  %851 = phi float [ %724, %867 ], [ %724, %948 ], [ %1075, %1131 ], [ %724, %719 ]
  %852 = phi float [ %725, %867 ], [ %725, %948 ], [ %1073, %1131 ], [ %725, %719 ]
  %853 = phi float [ %726, %867 ], [ %726, %948 ], [ %1141, %1131 ], [ %726, %719 ]
  %854 = phi float [ %727, %867 ], [ %727, %948 ], [ %1142, %1131 ], [ %727, %719 ]
  %855 = phi float [ %728, %867 ], [ %728, %948 ], [ %1143, %1131 ], [ %728, %719 ]
  %856 = phi float [ %729, %867 ], [ %729, %948 ], [ %1054, %1131 ], [ %729, %719 ]
  %857 = phi float [ %730, %867 ], [ %730, %948 ], [ %1055, %1131 ], [ %730, %719 ]
  %858 = phi float [ %731, %867 ], [ %731, %948 ], [ %1056, %1131 ], [ %731, %719 ]
  %859 = phi float [ %732, %867 ], [ %732, %948 ], [ %1083, %1131 ], [ %732, %719 ]
  %860 = phi float [ %733, %867 ], [ %733, %948 ], [ %1080, %1131 ], [ %733, %719 ]
  %861 = phi float [ %734, %867 ], [ %734, %948 ], [ %1077, %1131 ], [ %734, %719 ]
  %862 = phi float [ %735, %867 ], [ %735, %948 ], [ %1071, %1131 ], [ %735, %719 ]
  %863 = phi float [ %736, %867 ], [ %736, %948 ], [ %1066, %1131 ], [ %736, %719 ]
  %864 = phi float [ %737, %867 ], [ %737, %948 ], [ %1067, %1131 ], [ %737, %719 ]
  %865 = phi float [ %738, %867 ], [ %738, %948 ], [ %1068, %1131 ], [ %738, %719 ]
  %866 = icmp eq i32 %796, %718
  br i1 %866, label %1144, label %719

; <label>:867                                     ; preds = %719
  %868 = extractvalue %dx.types.ResRet.f32 %766, 3
  %869 = extractvalue %dx.types.ResRet.f32 %766, 1
  %870 = extractvalue %dx.types.ResRet.f32 %766, 0
  %871 = extractvalue %dx.types.ResRet.f32 %756, 1
  %872 = extractvalue %dx.types.ResRet.f32 %756, 0
  %873 = extractvalue %dx.types.ResRet.i32 %752, 3
  %874 = extractvalue %dx.types.ResRet.i32 %752, 2
  %875 = add i32 %873, 0
  %876 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %875, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %877 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %878 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %876, %dx.types.Handle %877, float %805, float %812, float undef, float undef, i32 0, i32 0, i32 undef, float %833, float %835, float undef, float %834, float %836, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %879 = extractvalue %dx.types.ResRet.f32 %878, 0
  %880 = fmul fast float %879, %872
  %881 = fadd fast float %880, %871
  %882 = call float @dx.op.unary.f32(i32 7, float %881)  ; Saturate(value)
  %883 = fmul fast float %805, %761
  %884 = call float @dx.op.tertiary.f32(i32 46, float %762, float %812, float %883)  ; FMad(a,b,c)
  %885 = fadd fast float %884, %870
  %886 = fmul fast float %805, %763
  %887 = call float @dx.op.tertiary.f32(i32 46, float %764, float %812, float %886)  ; FMad(a,b,c)
  %888 = fadd fast float %887, %869
  %889 = fmul fast float %833, %761
  %890 = call float @dx.op.tertiary.f32(i32 46, float %762, float %835, float %889)  ; FMad(a,b,c)
  %891 = fmul fast float %833, %763
  %892 = call float @dx.op.tertiary.f32(i32 46, float %764, float %835, float %891)  ; FMad(a,b,c)
  %893 = fmul fast float %834, %761
  %894 = call float @dx.op.tertiary.f32(i32 46, float %762, float %836, float %893)  ; FMad(a,b,c)
  %895 = fmul fast float %834, %763
  %896 = call float @dx.op.tertiary.f32(i32 46, float %764, float %836, float %895)  ; FMad(a,b,c)
  %897 = add i32 %874, 0
  %898 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %897, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %899 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %898, %dx.types.Handle %877, float %885, float %888, float undef, float undef, i32 0, i32 0, i32 undef, float %890, float %892, float undef, float %894, float %896, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %900 = extractvalue %dx.types.ResRet.f32 %899, 0
  %901 = and i32 %797, 1024
  %902 = icmp ne i32 %901, 0
  %903 = fcmp fast ogt float %900, 0x3FE0101020000000
  %904 = uitofp i1 %903 to float
  %905 = select i1 %902, float %904, float %900
  %906 = and i32 %797, 8192
  %907 = icmp ne i32 %906, 0
  %908 = select i1 %907, float %868, float 1.000000e+00
  %909 = fmul fast float %805, 2.000000e+00
  %910 = fadd fast float %909, -1.000000e+00
  %911 = call float @dx.op.unary.f32(i32 6, float %910)  ; FAbs(value)
  %912 = fmul fast float %911, %794
  %913 = fsub fast float %912, %794
  %914 = call float @dx.op.unary.f32(i32 7, float %913)  ; Saturate(value)
  %915 = fmul fast float %812, 2.000000e+00
  %916 = fadd fast float %915, -1.000000e+00
  %917 = call float @dx.op.unary.f32(i32 6, float %916)  ; FAbs(value)
  %918 = fmul fast float %917, %795
  %919 = fsub fast float %918, %795
  %920 = call float @dx.op.unary.f32(i32 7, float %919)  ; Saturate(value)
  %921 = fmul fast float %824, %757
  %922 = fsub fast float %921, %757
  %923 = call float @dx.op.unary.f32(i32 7, float %922)  ; Saturate(value)
  %924 = fmul fast float %882, %908
  %925 = fmul fast float %924, %879
  %926 = fmul fast float %925, %914
  %927 = fmul fast float %926, %905
  %928 = fmul fast float %927, %920
  %929 = fmul fast float %928, %923
  %930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %931 = extractvalue %dx.types.CBufRet.f32 %930, 1
  %932 = extractvalue %dx.types.CBufRet.f32 %930, 0
  %933 = fsub fast float %841, %932
  %934 = fmul fast float %933, %931
  %935 = call float @dx.op.unary.f32(i32 7, float %934)  ; Saturate(value)
  %936 = fmul fast float %929, %758
  %937 = fadd fast float %929, %758
  %938 = fmul fast float %937, %767
  %939 = fsub fast float %938, %767
  %940 = call float @dx.op.unary.f32(i32 7, float %939)  ; Saturate(value)
  %941 = and i32 %797, 128
  %942 = icmp ne i32 %941, 0
  %943 = select i1 %942, float %940, float %936
  %944 = fmul fast float %943, %935
  %945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %946 = extractvalue %dx.types.CBufRet.f32 %945, 0
  %947 = fcmp fast ugt float %944, %946
  br i1 %947, label %948, label %846

; <label>:948                                     ; preds = %867
  %949 = select i1 %907, float %944, float 0.000000e+00
  %950 = fadd fast float %949, %720
  %951 = call float @dx.op.unary.f32(i32 7, float %950)  ; Saturate(value)
  br i1 %907, label %846, label %952

; <label>:952                                     ; preds = %948
  %953 = and i32 %797, 4
  %954 = and i32 %797, 8
  %955 = add i32 %753, 0
  %956 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %955, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %957 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %958 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %956, %dx.types.Handle %957, float %885, float %888, float undef, float undef, i32 0, i32 0, i32 undef, float %890, float %892, float undef, float %894, float %896, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %959 = extractvalue %dx.types.ResRet.f32 %958, 0
  %960 = extractvalue %dx.types.ResRet.f32 %958, 1
  %961 = extractvalue %dx.types.ResRet.f32 %958, 2
  %962 = extractvalue %dx.types.ResRet.f32 %958, 3
  %963 = bitcast float %779 to i32
  %964 = and i32 %963, 255
  %965 = uitofp i32 %964 to float
  %966 = lshr i32 %963, 8
  %967 = and i32 %966, 255
  %968 = uitofp i32 %967 to float
  %969 = fmul fast float %962, %965
  %970 = fadd fast float %969, %968
  %971 = fmul fast float %970, 0x3F70101000000000
  %972 = add i32 %754, 0
  %973 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %972, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %974 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %973, %dx.types.Handle %957, float %885, float %888, float undef, float undef, i32 0, i32 0, i32 undef, float %890, float %892, float undef, float %894, float %896, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %975 = extractvalue %dx.types.ResRet.f32 %974, 0
  %976 = extractvalue %dx.types.ResRet.f32 %974, 1
  %977 = extractvalue %dx.types.ResRet.f32 %974, 2
  %978 = extractvalue %dx.types.ResRet.f32 %974, 3
  %979 = bitcast float %773 to i32
  %980 = and i32 %979, 255
  %981 = uitofp i32 %980 to float
  %982 = lshr i32 %979, 8
  %983 = and i32 %982, 255
  %984 = uitofp i32 %983 to float
  %985 = lshr i32 %979, 16
  %986 = and i32 %985, 255
  %987 = uitofp i32 %986 to float
  %988 = fmul fast float %987, 0x3F70101000000000
  %989 = fmul fast float %975, %981
  %990 = fadd fast float %989, %984
  %991 = fmul fast float %990, 0x3F70101000000000
  %992 = fadd fast float %976, -5.000000e-01
  %993 = fadd fast float %978, -5.000000e-01
  %994 = fmul fast float %992, %988
  %995 = fmul fast float %993, %988
  %996 = fadd fast float %994, 5.000000e-01
  %997 = fadd fast float %995, 5.000000e-01
  %998 = fmul fast float %959, %782
  %999 = fmul fast float %960, %783
  %1000 = fmul fast float %961, %784
  %1001 = fmul fast float %996, 2.000000e+00
  %1002 = fadd fast float %1001, -1.000000e+00
  %1003 = fmul fast float %997, 2.000000e+00
  %1004 = fadd fast float %1003, -1.000000e+00
  %1005 = fadd fast float %1002, %1004
  %1006 = fmul fast float %1005, 5.000000e-01
  %1007 = fsub fast float %1002, %1004
  %1008 = fmul fast float %1007, 5.000000e-01
  %1009 = call float @dx.op.unary.f32(i32 6, float %1006)  ; FAbs(value)
  %1010 = fsub fast float 1.000000e+00, %1009
  %1011 = call float @dx.op.unary.f32(i32 6, float %1008)  ; FAbs(value)
  %1012 = fsub fast float %1010, %1011
  %1013 = call float @dx.op.dot3.f32(i32 55, float %1006, float %1008, float %1012, float %1006, float %1008, float %1012)  ; Dot3(ax,ay,az,bx,by,bz)
  %1014 = call float @dx.op.unary.f32(i32 25, float %1013)  ; Rsqrt(value)
  %1015 = fmul fast float %1006, %1014
  %1016 = fmul fast float %1008, %1014
  %1017 = fmul fast float %1014, %1012
  %1018 = fmul fast float %1017, %747
  %1019 = fmul fast float %1017, %748
  %1020 = fmul fast float %1017, %749
  %1021 = fmul fast float %1015, %770
  %1022 = fmul fast float %1015, %771
  %1023 = fmul fast float %1015, %772
  %1024 = fadd fast float %1021, %1018
  %1025 = fadd fast float %1022, %1019
  %1026 = fadd fast float %1023, %1020
  %1027 = fmul fast float %1016, %776
  %1028 = fmul fast float %1016, %777
  %1029 = fmul fast float %1016, %778
  %1030 = fadd fast float %1024, %1027
  %1031 = fadd fast float %1025, %1028
  %1032 = fadd fast float %1026, %1029
  %1033 = call float @dx.op.dot3.f32(i32 55, float %1030, float %1031, float %1032, float %1030, float %1031, float %1032)  ; Dot3(ax,ay,az,bx,by,bz)
  %1034 = call float @dx.op.unary.f32(i32 25, float %1033)  ; Rsqrt(value)
  %1035 = fmul fast float %1030, %1034
  %1036 = fmul fast float %1031, %1034
  %1037 = fmul fast float %1032, %1034
  %1038 = icmp ne i32 %954, 0
  %1039 = select i1 %1038, float 1.000000e+00, float 0.000000e+00
  %1040 = fmul fast float %944, %1039
  %1041 = and i32 %797, 1
  %1042 = icmp eq i32 %1041, 0
  br i1 %1042, label %1043, label %1047

; <label>:1043                                    ; preds = %952
  %1044 = fsub fast float %1035, %729
  %1045 = fsub fast float %1036, %730
  %1046 = fsub fast float %1037, %731
  br label %1047

; <label>:1047                                    ; preds = %1043, %952
  %1048 = phi float [ %1044, %1043 ], [ %1035, %952 ]
  %1049 = phi float [ %1045, %1043 ], [ %1036, %952 ]
  %1050 = phi float [ %1046, %1043 ], [ %1037, %952 ]
  %1051 = fmul float %1050, %1040
  %1052 = fmul float %1049, %1040
  %1053 = fmul float %1048, %1040
  %1054 = fadd fast float %1053, %729
  %1055 = fadd fast float %1052, %730
  %1056 = fadd fast float %1051, %731
  %1057 = icmp ne i32 %953, 0
  %1058 = select i1 %1057, float 1.000000e+00, float 0.000000e+00
  %1059 = fmul fast float %944, %1058
  %1060 = fsub fast float %998, %736
  %1061 = fsub fast float %999, %737
  %1062 = fsub fast float %1000, %738
  %1063 = fmul fast float %1060, %1059
  %1064 = fmul fast float %1061, %1059
  %1065 = fmul fast float %1062, %1059
  %1066 = fadd fast float %1063, %736
  %1067 = fadd fast float %1064, %737
  %1068 = fadd fast float %1065, %738
  %1069 = fsub fast float %971, %735
  %1070 = fmul fast float %1069, %1059
  %1071 = fadd fast float %1070, %735
  %1072 = fmul fast float %1059, %725
  %1073 = fsub fast float %725, %1072
  %1074 = fmul fast float %1059, %724
  %1075 = fsub fast float %724, %1074
  %1076 = fadd fast float %944, %734
  %1077 = call float @dx.op.unary.f32(i32 7, float %1076)  ; Saturate(value)
  %1078 = fsub fast float %991, %733
  %1079 = fmul fast float %1078, %1040
  %1080 = fadd fast float %1079, %733
  %1081 = fsub fast float %977, %732
  %1082 = fmul fast float %1081, %1040
  %1083 = fadd fast float %1082, %732
  %1084 = call float @dx.op.dot3.f32(i32 55, float %998, float %999, float %1000, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1086 = extractvalue %dx.types.CBufRet.f32 %1085, 0
  %1087 = extractvalue %dx.types.CBufRet.f32 %1085, 1
  %1088 = fmul fast float %1087, %1084
  %1089 = fadd fast float %1088, %1086
  %1090 = call float @dx.op.unary.f32(i32 7, float %1089)  ; Saturate(value)
  %1091 = bitcast float %785 to i32
  %1092 = and i32 %1091, 65535
  %1093 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1092)  ; LegacyF16ToF32(value)
  %1094 = lshr i32 %1091, 16
  %1095 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1094)  ; LegacyF16ToF32(value)
  %1096 = fcmp fast oge float %1093, 0.000000e+00
  %1097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1098 = extractvalue %dx.types.CBufRet.f32 %1097, 0
  %1099 = select i1 %1096, float %1093, float %1098
  %1100 = fadd fast float %1099, %1095
  %1101 = fsub fast float %1090, %723
  %1102 = fmul fast float %1101, %944
  %1103 = fadd fast float %1102, %723
  %1104 = fmul fast float %1100, %944
  %1105 = call float @dx.op.binary.f32(i32 35, float %722, float %1104)  ; FMax(a,b)
  %1106 = call float @dx.op.binary.f32(i32 35, float %721, float %944)  ; FMax(a,b)
  %1107 = and i32 %797, 16
  %1108 = icmp eq i32 %1107, 0
  br i1 %1108, label %1131, label %1109

; <label>:1109                                    ; preds = %1047
  %1110 = bitcast float %791 to i32
  %1111 = add i32 %788, 0
  %1112 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1111, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1113 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1112, %dx.types.Handle %957, float %885, float %888, float undef, float undef, i32 0, i32 0, i32 undef, float %890, float %892, float undef, float %894, float %896, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1114 = extractvalue %dx.types.ResRet.f32 %1113, 0
  %1115 = extractvalue %dx.types.ResRet.f32 %1113, 1
  %1116 = extractvalue %dx.types.ResRet.f32 %1113, 2
  %1117 = and i32 %1110, 65535
  %1118 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1117)  ; LegacyF16ToF32(value)
  %1119 = fmul fast float %1114, %782
  %1120 = fmul fast float %1115, %783
  %1121 = fmul fast float %1116, %784
  %1122 = and i32 %797, 16384
  %1123 = icmp ne i32 %1122, 0
  %1124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1125 = extractvalue %dx.types.CBufRet.f32 %1124, 0
  %1126 = select i1 %1123, float %1125, float 1.000000e+00
  %1127 = fmul fast float %1126, %1118
  %1128 = fmul fast float %1119, %1127
  %1129 = fmul fast float %1120, %1127
  %1130 = fmul fast float %1121, %1127
  br label %1131

; <label>:1131                                    ; preds = %1109, %1047
  %1132 = phi float [ %1128, %1109 ], [ 0.000000e+00, %1047 ]
  %1133 = phi float [ %1129, %1109 ], [ 0.000000e+00, %1047 ]
  %1134 = phi float [ %1130, %1109 ], [ 0.000000e+00, %1047 ]
  %1135 = fsub fast float %1132, %726
  %1136 = fsub fast float %1133, %727
  %1137 = fsub fast float %1134, %728
  %1138 = fmul fast float %1135, %944
  %1139 = fmul fast float %1136, %944
  %1140 = fmul fast float %1137, %944
  %1141 = fadd fast float %1138, %726
  %1142 = fadd fast float %1139, %727
  %1143 = fadd fast float %1140, %728
  br label %846

; <label>:1144                                    ; preds = %846
  br label %1145

; <label>:1145                                    ; preds = %1144, %622
  %1146 = phi float [ 0.000000e+00, %622 ], [ %847, %1144 ]
  %1147 = phi float [ %632, %622 ], [ %848, %1144 ]
  %1148 = phi float [ %637, %622 ], [ %849, %1144 ]
  %1149 = phi float [ %635, %622 ], [ %850, %1144 ]
  %1150 = phi float [ 0.000000e+00, %622 ], [ %851, %1144 ]
  %1151 = phi float [ 0.000000e+00, %622 ], [ %852, %1144 ]
  %1152 = phi float [ %628, %622 ], [ %853, %1144 ]
  %1153 = phi float [ %629, %622 ], [ %854, %1144 ]
  %1154 = phi float [ %630, %622 ], [ %855, %1144 ]
  %1155 = phi float [ %663, %622 ], [ %856, %1144 ]
  %1156 = phi float [ %664, %622 ], [ %857, %1144 ]
  %1157 = phi float [ %665, %622 ], [ %858, %1144 ]
  %1158 = phi float [ %634, %622 ], [ %859, %1144 ]
  %1159 = phi float [ %633, %622 ], [ %860, %1144 ]
  %1160 = phi float [ 0.000000e+00, %622 ], [ %861, %1144 ]
  %1161 = phi float [ %631, %622 ], [ %862, %1144 ]
  %1162 = phi float [ %625, %622 ], [ %863, %1144 ]
  %1163 = phi float [ %626, %622 ], [ %864, %1144 ]
  %1164 = phi float [ %627, %622 ], [ %865, %1144 ]
  %1165 = call float @dx.op.dot3.f32(i32 55, float %1155, float %1156, float %1157, float %1155, float %1156, float %1157)  ; Dot3(ax,ay,az,bx,by,bz)
  %1166 = call float @dx.op.unary.f32(i32 25, float %1165)  ; Rsqrt(value)
  %1167 = fmul fast float %1166, %1155
  %1168 = fmul fast float %1166, %1156
  %1169 = fmul fast float %1166, %1157
  %1170 = fadd fast float %1160, %632
  %1171 = call float @dx.op.unary.f32(i32 7, float %1170)  ; Saturate(value)
  %1172 = call float @dx.op.dot3.f32(i32 55, float %1167, float %1168, float %1169, float %1167, float %1168, float %1169)  ; Dot3(ax,ay,az,bx,by,bz)
  %1173 = call float @dx.op.unary.f32(i32 25, float %1172)  ; Rsqrt(value)
  %1174 = fmul fast float %1173, %1167
  %1175 = fmul fast float %1173, %1168
  %1176 = fmul fast float %1173, %1169
  %1177 = fadd fast float %1161, 0xBFB99999A0000000
  %1178 = call float @dx.op.unary.f32(i32 7, float %1177)  ; Saturate(value)
  %1179 = fmul fast float %1178, 0x3FF1C71C80000000
  %1180 = call float @dx.op.binary.f32(i32 36, float %1161, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1181 = fsub fast float 1.000000e+00, %1179
  %1182 = call float @dx.op.unary.f32(i32 7, float %1181)  ; Saturate(value)
  %1183 = fmul fast float %1182, %1162
  %1184 = fmul fast float %1182, %1163
  %1185 = fmul fast float %1182, %1164
  %1186 = call float @dx.op.unary.f32(i32 7, float %1183)  ; Saturate(value)
  %1187 = call float @dx.op.unary.f32(i32 7, float %1184)  ; Saturate(value)
  %1188 = call float @dx.op.unary.f32(i32 7, float %1185)  ; Saturate(value)
  %1189 = fmul fast float %1179, %1162
  %1190 = fmul fast float %1179, %1163
  %1191 = fmul fast float %1179, %1164
  %1192 = fadd fast float %1189, %1180
  %1193 = fadd fast float %1190, %1180
  %1194 = fadd fast float %1191, %1180
  %1195 = call float @dx.op.unary.f32(i32 7, float %1192)  ; Saturate(value)
  %1196 = call float @dx.op.unary.f32(i32 7, float %1193)  ; Saturate(value)
  %1197 = call float @dx.op.unary.f32(i32 7, float %1194)  ; Saturate(value)
  %1198 = call float @dx.op.unary.f32(i32 7, float %1159)  ; Saturate(value)
  %1199 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1200 = extractvalue %dx.types.CBufRet.i32 %1199, 3
  %1201 = and i32 %1200, 8
  %1202 = icmp ne i32 %1201, 0
  %1203 = call float @dx.op.binary.f32(i32 35, float %1186, float %1162)  ; FMax(a,b)
  %1204 = call float @dx.op.binary.f32(i32 35, float %1187, float %1162)  ; FMax(a,b)
  %1205 = call float @dx.op.binary.f32(i32 35, float %1188, float %1162)  ; FMax(a,b)
  %1206 = call float @dx.op.dot3.f32(i32 55, float %1186, float %1187, float %1188, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1207 = select i1 %121, float %1162, float %1186
  %1208 = select i1 %121, float %1206, float %1187
  %1209 = select i1 %121, float 1.000000e+00, float %1188
  %1210 = select i1 %1202, float %1203, float %1207
  %1211 = select i1 %1202, float %1204, float %1208
  %1212 = select i1 %1202, float %1205, float %1209
  %1213 = and i32 %97, 3
  %1214 = select i1 %91, i32 %1213, i32 0
  %1215 = icmp eq i32 %1214, 1
  br i1 %1215, label %1216, label %1292

; <label>:1216                                    ; preds = %1145
  %1217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1218 = extractvalue %dx.types.CBufRet.f32 %1217, 0
  %1219 = extractvalue %dx.types.CBufRet.f32 %1217, 1
  %1220 = fadd fast float %1218, %80
  %1221 = fadd fast float %1219, %81
  %1222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1223 = extractvalue %dx.types.CBufRet.f32 %1222, 0
  %1224 = extractvalue %dx.types.CBufRet.f32 %1222, 1
  %1225 = fsub fast float %1220, %1223
  %1226 = fsub fast float %1221, %1224
  %1227 = fmul fast float %1225, %1225
  %1228 = fmul fast float %1226, %1226
  %1229 = fadd fast float %1227, %1228
  %1230 = call float @dx.op.unary.f32(i32 24, float %1229)  ; Sqrt(value)
  %1231 = extractvalue %dx.types.CBufRet.f32 %1222, 2
  %1232 = fcmp fast olt float %1230, %1231
  br i1 %1232, label %1233, label %1286

; <label>:1233                                    ; preds = %1216
  %1234 = extractvalue %dx.types.CBufRet.f32 %1217, 2
  %1235 = fadd fast float %1234, %82
  %1236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1237 = extractvalue %dx.types.CBufRet.f32 %1236, 0
  %1238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1239 = extractvalue %dx.types.CBufRet.f32 %1238, 0
  %1240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1241 = extractvalue %dx.types.CBufRet.f32 %1240, 0
  %1242 = extractvalue %dx.types.CBufRet.f32 %1236, 1
  %1243 = extractvalue %dx.types.CBufRet.f32 %1238, 1
  %1244 = extractvalue %dx.types.CBufRet.f32 %1240, 1
  %1245 = extractvalue %dx.types.CBufRet.f32 %1236, 3
  %1246 = extractvalue %dx.types.CBufRet.f32 %1238, 3
  %1247 = extractvalue %dx.types.CBufRet.f32 %1240, 3
  %1248 = fadd fast float %1245, %1220
  %1249 = fadd fast float %1246, %1221
  %1250 = fadd fast float %1235, %1247
  %1251 = fmul fast float %1248, %1237
  %1252 = call float @dx.op.tertiary.f32(i32 46, float %1249, float %1239, float %1251)  ; FMad(a,b,c)
  %1253 = call float @dx.op.tertiary.f32(i32 46, float %1250, float %1241, float %1252)  ; FMad(a,b,c)
  %1254 = fmul fast float %1248, %1242
  %1255 = call float @dx.op.tertiary.f32(i32 46, float %1249, float %1243, float %1254)  ; FMad(a,b,c)
  %1256 = call float @dx.op.tertiary.f32(i32 46, float %1250, float %1244, float %1255)  ; FMad(a,b,c)
  %1257 = fsub fast float %1253, %1245
  %1258 = fsub fast float %1256, %1246
  %1259 = fsub fast float %1257, %1223
  %1260 = fadd fast float %1259, %1231
  %1261 = fsub fast float %1258, %1224
  %1262 = fadd fast float %1261, %1231
  %1263 = extractvalue %dx.types.CBufRet.f32 %1222, 3
  %1264 = fmul fast float %1260, %1263
  %1265 = fmul fast float %1262, %1263
  %1266 = call float @dx.op.unary.f32(i32 7, float %1264)  ; Saturate(value)
  %1267 = call float @dx.op.unary.f32(i32 7, float %1265)  ; Saturate(value)
  %1268 = fsub fast float 1.000000e+00, %1266
  %1269 = fsub fast float 1.000000e+00, %1267
  %1270 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %12, float %1268, float %1269, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1271 = extractvalue %dx.types.ResRet.f32 %1270, 0
  %1272 = fcmp fast ugt float %1271, 0.000000e+00
  br i1 %1272, label %1273, label %1286

; <label>:1273                                    ; preds = %1233
  %1274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1275 = extractvalue %dx.types.CBufRet.f32 %1274, 2
  %1276 = fmul fast float %1275, %1271
  %1277 = extractvalue %dx.types.CBufRet.f32 %1274, 3
  %1278 = fadd fast float %1277, %1276
  %1279 = extractvalue %dx.types.CBufRet.f32 %1240, 2
  %1280 = fadd fast float %1278, %1247
  %1281 = fmul fast float %1253, %1241
  %1282 = call float @dx.op.tertiary.f32(i32 46, float %1256, float %1244, float %1281)  ; FMad(a,b,c)
  %1283 = call float @dx.op.tertiary.f32(i32 46, float %1280, float %1279, float %1282)  ; FMad(a,b,c)
  %1284 = fsub fast float %1283, %1247
  %1285 = fsub fast float %1284, %1234
  br label %1286

; <label>:1286                                    ; preds = %1273, %1233, %1216
  %1287 = phi i1 [ true, %1273 ], [ false, %1233 ], [ false, %1216 ]
  %1288 = phi float [ %1285, %1273 ], [ -1.310720e+05, %1233 ], [ -1.310720e+05, %1216 ]
  %1289 = fsub fast float %1288, %82
  %1290 = call float @dx.op.unary.f32(i32 7, float %1289)  ; Saturate(value)
  %1291 = select i1 %1287, float %1290, float 1.000000e+00
  br label %1292

; <label>:1292                                    ; preds = %1286, %1145
  %1293 = phi float [ %1291, %1286 ], [ 0.000000e+00, %1145 ]
  %1294 = icmp eq i32 %1214, 3
  %1295 = select i1 %1294, float 1.000000e+00, float %1293
  %1296 = call float @dx.op.binary.f32(i32 35, float %1146, float %1295)  ; FMax(a,b)
  %1297 = call float @dx.op.unary.f32(i32 7, float %1296)  ; Saturate(value)
  %1298 = fcmp fast une float %1297, 0.000000e+00
  %1299 = call float @dx.op.dot3.f32(i32 55, float %80, float %81, float %82, float %80, float %81, float %82)  ; Dot3(ax,ay,az,bx,by,bz)
  %1300 = call float @dx.op.unary.f32(i32 25, float %1299)  ; Rsqrt(value)
  br i1 %1298, label %1308, label %1301

; <label>:1301                                    ; preds = %1292
  %1302 = fmul fast float %1300, %80
  %1303 = fmul fast float %1300, %81
  %1304 = fmul fast float %1300, %82
  %1305 = fsub fast float -0.000000e+00, %1302
  %1306 = fsub fast float -0.000000e+00, %1303
  %1307 = fsub fast float -0.000000e+00, %1304
  br label %1476

; <label>:1308                                    ; preds = %1292
  %1309 = fmul fast float %80, %1300
  %1310 = fsub fast float -0.000000e+00, %1309
  %1311 = fmul fast float %81, %1300
  %1312 = fsub fast float -0.000000e+00, %1311
  %1313 = fmul fast float %82, %1300
  %1314 = fsub fast float -0.000000e+00, %1313
  %1315 = call float @dx.op.dot3.f32(i32 55, float %1310, float %1312, float %1314, float %21, float %22, float %23)  ; Dot3(ax,ay,az,bx,by,bz)
  %1316 = fmul fast float %1297, 2.500000e+00
  %1317 = call float @dx.op.unary.f32(i32 7, float %1316)  ; Saturate(value)
  %1318 = fmul fast float %1297, 0x4013FFFFE0000000
  %1319 = fadd fast float %1318, 0xBFFFFFFFE0000000
  %1320 = call float @dx.op.unary.f32(i32 7, float %1319)  ; Saturate(value)
  %1321 = fmul fast float %1297, 0x4004000020000000
  %1322 = fadd fast float %1321, 0xBFF8000040000000
  %1323 = call float @dx.op.unary.f32(i32 7, float %1322)  ; Saturate(value)
  %1324 = call float @dx.op.unary.f32(i32 7, float %1317)  ; Saturate(value)
  %1325 = fmul fast float %1177, 1.000000e+01
  %1326 = call float @dx.op.unary.f32(i32 7, float %1325)  ; Saturate(value)
  %1327 = fmul fast float %1326, 2.000000e+00
  %1328 = fsub fast float 3.000000e+00, %1327
  %1329 = fmul fast float %1326, %1326
  %1330 = fmul fast float %1329, %1328
  %1331 = fsub fast float 1.000000e+00, %1330
  %1332 = fsub fast float 0x3FE3333340000000, %1198
  %1333 = fmul fast float %1332, 0x400AAAAAA0000000
  %1334 = call float @dx.op.unary.f32(i32 7, float %1333)  ; Saturate(value)
  %1335 = fmul fast float %1331, %1334
  %1336 = fmul fast float %1210, 0x3FEA2B8620000000
  %1337 = fmul fast float %1211, 0x3FEA2B8620000000
  %1338 = fmul fast float %1212, 0x3FEA2B8620000000
  %1339 = fadd fast float %1336, 0x3FC81DFBA0000000
  %1340 = fmul fast float %1339, %1210
  %1341 = fadd fast float %1340, 0x3F910E6020000000
  %1342 = fadd fast float %1337, 0x3FC81DFBA0000000
  %1343 = fmul fast float %1342, %1211
  %1344 = fadd fast float %1343, 0x3F910E6020000000
  %1345 = fadd fast float %1338, 0x3FC81DFBA0000000
  %1346 = fmul fast float %1345, %1212
  %1347 = fadd fast float %1346, 0x3F910E6020000000
  %1348 = call float @dx.op.unary.f32(i32 7, float %1341)  ; Saturate(value)
  %1349 = call float @dx.op.unary.f32(i32 7, float %1344)  ; Saturate(value)
  %1350 = call float @dx.op.unary.f32(i32 7, float %1347)  ; Saturate(value)
  %1351 = fsub fast float %1348, %1210
  %1352 = fsub fast float %1349, %1211
  %1353 = fsub fast float %1350, %1212
  %1354 = fmul fast float %1351, %1324
  %1355 = fmul fast float %1354, %1335
  %1356 = fmul fast float %1352, %1324
  %1357 = fmul fast float %1356, %1335
  %1358 = fmul fast float %1353, %1324
  %1359 = fmul fast float %1358, %1335
  %1360 = fadd fast float %1355, %1210
  %1361 = fadd fast float %1357, %1211
  %1362 = fadd fast float %1359, %1212
  %1363 = fmul fast float %1158, %1158
  %1364 = fmul fast float %1363, %1363
  %1365 = fadd fast float %1320, 1.000000e+00
  %1366 = fsub fast float %1365, %1335
  %1367 = call float @dx.op.unary.f32(i32 7, float %1366)  ; Saturate(value)
  %1368 = call float @dx.op.dot3.f32(i32 55, float %21, float %22, float %23, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1369 = call float @dx.op.unary.f32(i32 7, float %1368)  ; Saturate(value)
  %1370 = fsub fast float 1.000000e+00, %1364
  %1371 = call float @dx.op.binary.f32(i32 36, float %1367, float %1370)  ; FMin(a,b)
  %1372 = call float @dx.op.unary.f32(i32 7, float %1323)  ; Saturate(value)
  %1373 = call float @dx.op.binary.f32(i32 35, float %1371, float %1372)  ; FMax(a,b)
  %1374 = fadd fast float %1369, 0xBFE4CCCCC0000000
  %1375 = fmul fast float %1374, 0x4006DB6DA0000000
  %1376 = call float @dx.op.unary.f32(i32 7, float %1375)  ; Saturate(value)
  %1377 = fmul fast float %1376, 2.000000e+00
  %1378 = fsub fast float 3.000000e+00, %1377
  %1379 = bitcast float %1195 to i32
  %1380 = ashr i32 %1379, 1
  %1381 = add nsw i32 %1380, 532487669
  %1382 = bitcast i32 %1381 to float
  %1383 = fsub fast float 1.000000e+00, %1382
  %1384 = bitcast float %1383 to i32
  %1385 = sub nsw i32 2129859010, %1384
  %1386 = bitcast i32 %1385 to float
  %1387 = fmul fast float %1386, 2.000000e+00
  %1388 = bitcast float %1196 to i32
  %1389 = ashr i32 %1388, 1
  %1390 = add nsw i32 %1389, 532487669
  %1391 = bitcast i32 %1390 to float
  %1392 = fsub fast float 1.000000e+00, %1391
  %1393 = bitcast float %1392 to i32
  %1394 = sub nsw i32 2129859010, %1393
  %1395 = bitcast i32 %1394 to float
  %1396 = fmul fast float %1395, 2.000000e+00
  %1397 = bitcast float %1197 to i32
  %1398 = ashr i32 %1397, 1
  %1399 = add nsw i32 %1398, 532487669
  %1400 = bitcast i32 %1399 to float
  %1401 = fsub fast float 1.000000e+00, %1400
  %1402 = bitcast float %1401 to i32
  %1403 = sub nsw i32 2129859010, %1402
  %1404 = bitcast i32 %1403 to float
  %1405 = fmul fast float %1404, 2.000000e+00
  %1406 = fsub fast float 0x4002A9FBE0000000, %1387
  %1407 = fadd fast float %1387, 0x3FD54FDF00000000
  %1408 = bitcast float %1407 to i32
  %1409 = sub nsw i32 2129859010, %1408
  %1410 = bitcast i32 %1409 to float
  %1411 = fmul fast float %1410, %1406
  %1412 = fmul fast float %1411, %1411
  %1413 = fsub fast float 0x4002A9FBE0000000, %1396
  %1414 = fadd fast float %1396, 0x3FD54FDF00000000
  %1415 = bitcast float %1414 to i32
  %1416 = sub nsw i32 2129859010, %1415
  %1417 = bitcast i32 %1416 to float
  %1418 = fmul fast float %1417, %1413
  %1419 = fmul fast float %1418, %1418
  %1420 = fsub fast float 0x4002A9FBE0000000, %1405
  %1421 = fadd fast float %1405, 0x3FD54FDF00000000
  %1422 = bitcast float %1421 to i32
  %1423 = sub nsw i32 2129859010, %1422
  %1424 = bitcast i32 %1423 to float
  %1425 = fmul fast float %1424, %1420
  %1426 = fmul fast float %1425, %1425
  %1427 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1412)  ; FMax(a,b)
  %1428 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1419)  ; FMax(a,b)
  %1429 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1426)  ; FMax(a,b)
  %1430 = fsub fast float 1.000000e+00, %1315
  %1431 = fadd fast float %1430, %1331
  %1432 = call float @dx.op.unary.f32(i32 7, float %1431)  ; Saturate(value)
  %1433 = fsub fast float 1.000000e+00, %1295
  %1434 = fmul fast float %1373, %1433
  %1435 = fmul fast float %1376, %1376
  %1436 = fmul fast float %1435, %1434
  %1437 = fmul fast float %1436, %1378
  %1438 = fmul fast float %1433, 0xBFE99999A0000000
  %1439 = fmul fast float %1438, %1324
  %1440 = fmul fast float %1439, %1335
  %1441 = fadd fast float %1440, 1.000000e+00
  %1442 = fadd fast float %1198, -1.000000e+00
  %1443 = fmul fast float %1441, %1442
  %1444 = fadd fast float %1443, 1.000000e+00
  %1445 = fsub fast float %1427, %1195
  %1446 = fsub fast float %1428, %1196
  %1447 = fsub fast float %1429, %1197
  %1448 = fmul fast float %1437, %1445
  %1449 = fmul fast float %1437, %1446
  %1450 = fmul fast float %1437, %1447
  %1451 = fadd fast float %1448, %1195
  %1452 = fadd fast float %1449, %1196
  %1453 = fadd fast float %1450, %1197
  %1454 = fsub fast float %21, %1174
  %1455 = fsub fast float %22, %1175
  %1456 = fsub fast float %23, %1176
  %1457 = fmul fast float %1437, %1454
  %1458 = fmul fast float %1437, %1455
  %1459 = fmul fast float %1437, %1456
  %1460 = fadd fast float %1457, %1174
  %1461 = fadd fast float %1458, %1175
  %1462 = fadd fast float %1459, %1176
  %1463 = fmul fast float %1437, %1432
  %1464 = call float @dx.op.unary.f32(i32 7, float %1444)  ; Saturate(value)
  %1465 = fsub fast float 1.000000e+00, %1464
  %1466 = fmul fast float %1463, %1465
  %1467 = fadd fast float %1466, %1464
  %1468 = fsub fast float 1.000000e+00, %1158
  %1469 = fmul fast float %1437, %1468
  %1470 = fadd fast float %1469, %1158
  %1471 = call float @dx.op.dot3.f32(i32 55, float %1460, float %1461, float %1462, float %1460, float %1461, float %1462)  ; Dot3(ax,ay,az,bx,by,bz)
  %1472 = call float @dx.op.unary.f32(i32 25, float %1471)  ; Rsqrt(value)
  %1473 = fmul fast float %1460, %1472
  %1474 = fmul fast float %1461, %1472
  %1475 = fmul fast float %1462, %1472
  br label %1476

; <label>:1476                                    ; preds = %1308, %1301
  %1477 = phi float [ %1307, %1301 ], [ %1314, %1308 ]
  %1478 = phi float [ %1306, %1301 ], [ %1312, %1308 ]
  %1479 = phi float [ %1305, %1301 ], [ %1310, %1308 ]
  %1480 = phi float [ %1304, %1301 ], [ %1313, %1308 ]
  %1481 = phi float [ %1303, %1301 ], [ %1311, %1308 ]
  %1482 = phi float [ %1302, %1301 ], [ %1309, %1308 ]
  %1483 = phi float [ %1195, %1301 ], [ %1451, %1308 ]
  %1484 = phi float [ %1196, %1301 ], [ %1452, %1308 ]
  %1485 = phi float [ %1197, %1301 ], [ %1453, %1308 ]
  %1486 = phi float [ %1174, %1301 ], [ %1473, %1308 ]
  %1487 = phi float [ %1175, %1301 ], [ %1474, %1308 ]
  %1488 = phi float [ %1176, %1301 ], [ %1475, %1308 ]
  %1489 = phi float [ %1210, %1301 ], [ %1360, %1308 ]
  %1490 = phi float [ %1211, %1301 ], [ %1361, %1308 ]
  %1491 = phi float [ %1212, %1301 ], [ %1362, %1308 ]
  %1492 = phi float [ %1198, %1301 ], [ %1467, %1308 ]
  %1493 = phi float [ %1158, %1301 ], [ %1470, %1308 ]
  %1494 = select i1 %121, float 0.000000e+00, float %1485
  %1495 = call float @dx.op.dot3.f32(i32 55, float %1486, float %1487, float %1488, float %1479, float %1478, float %1477)  ; Dot3(ax,ay,az,bx,by,bz)
  %1496 = call float @dx.op.unary.f32(i32 7, float %1495)  ; Saturate(value)
  %1497 = fsub fast float 1.000000e+00, %1493
  %1498 = bitcast float %1497 to i32
  %1499 = sub nsw i32 2129859010, %1498
  %1500 = fmul fast float %1171, %1152
  %1501 = fmul fast float %1171, %1153
  %1502 = fmul fast float %1171, %1154
  %1503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1504 = extractvalue %dx.types.CBufRet.f32 %1503, 3
  %1505 = fcmp fast oeq float %1504, 0.000000e+00
  br i1 %1505, label %1753, label %1506

; <label>:1506                                    ; preds = %1476
  %1507 = extractvalue %dx.types.CBufRet.f32 %1503, 0
  %1508 = extractvalue %dx.types.CBufRet.f32 %1503, 1
  %1509 = extractvalue %dx.types.CBufRet.f32 %1503, 2
  %1510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %1511 = extractvalue %dx.types.CBufRet.f32 %1510, 0
  %1512 = extractvalue %dx.types.CBufRet.f32 %1510, 1
  %1513 = extractvalue %dx.types.CBufRet.f32 %1510, 2
  %1514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %1515 = extractvalue %dx.types.CBufRet.f32 %1514, 0
  %1516 = extractvalue %dx.types.CBufRet.f32 %1514, 1
  %1517 = call float @dx.op.dot3.f32(i32 55, float %1511, float %1512, float %1513, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1518 = select i1 %121, float %1515, float %1511
  %1519 = select i1 %121, float %1517, float %1512
  %1520 = select i1 %121, float %1516, float %1513
  %1521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %1522 = extractvalue %dx.types.CBufRet.f32 %1521, 1
  %1523 = fcmp fast une float %1522, 0.000000e+00
  br i1 %1523, label %1524, label %1541

; <label>:1524                                    ; preds = %1506
  %1525 = fptoui float %33 to i32
  %1526 = fptoui float %34 to i32
  %1527 = lshr i32 %1525, 4
  %1528 = lshr i32 %1526, 4
  %1529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1530 = extractvalue %dx.types.CBufRet.f32 %1529, 0
  %1531 = fptoui float %1530 to i32
  %1532 = add i32 %1531, 15
  %1533 = lshr i32 %1532, 4
  %1534 = mul i32 %1533, %1528
  %1535 = add i32 %1534, %1527
  %1536 = shl i32 %1535, 3
  %1537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1536, i32 undef)  ; BufferLoad(srv,index,wot)
  %1538 = extractvalue %dx.types.ResRet.i32 %1537, 0
  %1539 = and i32 %1538, -268435456
  %1540 = icmp eq i32 %1539, -1342177280
  br i1 %1540, label %1551, label %1541

; <label>:1541                                    ; preds = %1524, %1506
  %1542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1543 = extractvalue %dx.types.CBufRet.f32 %1542, 2
  %1544 = extractvalue %dx.types.CBufRet.f32 %1542, 3
  %1545 = fmul fast float %1543, %33
  %1546 = fmul fast float %1544, %34
  %1547 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %13, float %1545, float %1546, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1548 = extractvalue %dx.types.ResRet.f32 %1547, 0
  %1549 = extractvalue %dx.types.ResRet.f32 %1547, 1
  %1550 = extractvalue %dx.types.ResRet.f32 %1547, 2
  br label %1551

; <label>:1551                                    ; preds = %1541, %1524
  %1552 = phi float [ %1548, %1541 ], [ 0.000000e+00, %1524 ]
  %1553 = phi float [ %1549, %1541 ], [ 0.000000e+00, %1524 ]
  %1554 = phi float [ %1550, %1541 ], [ 0.000000e+00, %1524 ]
  %1555 = call float @dx.op.binary.f32(i32 36, float %1553, float %1554)  ; FMin(a,b)
  %1556 = call float @dx.op.binary.f32(i32 36, float %1552, float %1555)  ; FMin(a,b)
  %1557 = fcmp fast ogt float %1556, 0.000000e+00
  br i1 %1557, label %1558, label %1753, !dx.controlflow.hints !49

; <label>:1558                                    ; preds = %1551
  %1559 = fmul fast float %1552, %1518
  %1560 = fmul fast float %1553, %1519
  %1561 = fmul fast float %1554, %1520
  %1562 = fsub fast float %1507, %1482
  %1563 = fsub fast float %1508, %1481
  %1564 = fsub fast float %1509, %1480
  %1565 = call float @dx.op.dot3.f32(i32 55, float %1562, float %1563, float %1564, float %1562, float %1563, float %1564)  ; Dot3(ax,ay,az,bx,by,bz)
  %1566 = call float @dx.op.unary.f32(i32 25, float %1565)  ; Rsqrt(value)
  %1567 = fmul fast float %1566, %1562
  %1568 = fmul fast float %1566, %1563
  %1569 = fmul fast float %1566, %1564
  %1570 = call float @dx.op.dot3.f32(i32 55, float %1507, float %1508, float %1509, float %1486, float %1487, float %1488)  ; Dot3(ax,ay,az,bx,by,bz)
  %1571 = call float @dx.op.dot3.f32(i32 55, float %1479, float %1478, float %1477, float %1567, float %1568, float %1569)  ; Dot3(ax,ay,az,bx,by,bz)
  %1572 = call float @dx.op.unary.f32(i32 7, float %1570)  ; Saturate(value)
  %1573 = bitcast i32 %1499 to float
  %1574 = fmul fast float %1572, %1572
  %1575 = fmul fast float %1574, %1573
  %1576 = call float @dx.op.unary.f32(i32 7, float %1575)  ; Saturate(value)
  %1577 = fmul fast float %1576, %1572
  %1578 = call float @dx.op.dot3.f32(i32 55, float %1486, float %1487, float %1488, float %1567, float %1568, float %1569)  ; Dot3(ax,ay,az,bx,by,bz)
  %1579 = fmul fast float %1578, %1578
  %1580 = call float @dx.op.unary.f32(i32 6, float %1570)  ; FAbs(value)
  %1581 = fsub fast float 1.000000e+00, %1492
  %1582 = call float @dx.op.binary.f32(i32 35, float %1581, float 0x3F847AE140000000)  ; FMax(a,b)
  %1583 = fmul fast float %1582, %1582
  %1584 = fmul fast float %1583, %1583
  %1585 = fsub fast float 1.000000e+00, %1584
  %1586 = fmul fast float %1496, %1496
  %1587 = fmul fast float %1586, %1585
  %1588 = fadd fast float %1587, %1584
  %1589 = bitcast float %1588 to i32
  %1590 = ashr i32 %1589, 1
  %1591 = add nsw i32 %1590, 532487669
  %1592 = bitcast i32 %1591 to float
  %1593 = fadd fast float %1592, %1496
  %1594 = fmul fast float %1584, %1579
  %1595 = fsub fast float 1.000000e+00, %1579
  %1596 = fadd fast float %1595, %1594
  %1597 = fmul fast float %1580, %1580
  %1598 = fmul fast float %1597, %1585
  %1599 = fadd fast float %1598, %1584
  %1600 = bitcast float %1599 to i32
  %1601 = ashr i32 %1600, 1
  %1602 = add nsw i32 %1601, 532487669
  %1603 = bitcast i32 %1602 to float
  %1604 = fadd fast float %1603, %1580
  %1605 = fmul fast float %1596, %1596
  %1606 = fmul fast float %1605, %1593
  %1607 = fmul fast float %1606, %1604
  %1608 = fdiv fast float 0x3FF0A00000000000, %1607
  %1609 = fmul fast float %1608, %1584
  %1610 = call float @dx.op.unary.f32(i32 6, float %1571)  ; FAbs(value)
  %1611 = fsub fast float 1.000000e+00, %1610
  %1612 = bitcast float %1611 to i32
  %1613 = sitofp i32 %1612 to float
  %1614 = fmul fast float %1613, 5.000000e+00
  %1615 = fadd fast float %1614, 0xC1EFBF8940000000
  %1616 = fptosi float %1615 to i32
  %1617 = bitcast i32 %1616 to float
  %1618 = fsub fast float 1.000000e+00, %1483
  %1619 = fsub fast float 1.000000e+00, %1484
  %1620 = fsub fast float 1.000000e+00, %1494
  %1621 = fmul fast float %1617, %1618
  %1622 = fmul fast float %1617, %1619
  %1623 = fmul fast float %1617, %1620
  %1624 = fadd fast float %1621, %1483
  %1625 = fadd fast float %1622, %1484
  %1626 = fadd fast float %1623, %1494
  %1627 = fcmp fast ogt float %1151, 0.000000e+00
  br i1 %1627, label %1628, label %1651

; <label>:1628                                    ; preds = %1558
  %1629 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %12, float %1151, float %1610, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1630 = extractvalue %dx.types.ResRet.f32 %1629, 0
  %1631 = extractvalue %dx.types.ResRet.f32 %1629, 1
  %1632 = extractvalue %dx.types.ResRet.f32 %1629, 2
  %1633 = fadd fast float %1630, -5.000000e-01
  %1634 = fadd fast float %1631, -5.000000e-01
  %1635 = fadd fast float %1632, -5.000000e-01
  %1636 = fmul fast float %1483, 4.000000e+00
  %1637 = fmul fast float %1636, %1618
  %1638 = fmul fast float %1637, %1633
  %1639 = fmul fast float %1484, 4.000000e+00
  %1640 = fmul fast float %1639, %1619
  %1641 = fmul fast float %1640, %1634
  %1642 = fmul fast float %1494, 4.000000e+00
  %1643 = fmul fast float %1642, %1620
  %1644 = fmul fast float %1643, %1635
  %1645 = fadd fast float %1638, %1624
  %1646 = fadd fast float %1641, %1625
  %1647 = fadd fast float %1644, %1626
  %1648 = call float @dx.op.unary.f32(i32 7, float %1645)  ; Saturate(value)
  %1649 = call float @dx.op.unary.f32(i32 7, float %1646)  ; Saturate(value)
  %1650 = call float @dx.op.unary.f32(i32 7, float %1647)  ; Saturate(value)
  br label %1651

; <label>:1651                                    ; preds = %1628, %1558
  %1652 = phi float [ %1648, %1628 ], [ %1624, %1558 ]
  %1653 = phi float [ %1649, %1628 ], [ %1625, %1558 ]
  %1654 = phi float [ %1650, %1628 ], [ %1626, %1558 ]
  %1655 = fmul fast float %1570, 9.843750e-01
  %1656 = fmul fast float %1492, 9.843750e-01
  %1657 = fadd fast float %1655, 7.812500e-03
  %1658 = fadd fast float %1656, 7.812500e-03
  %1659 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %12, float %1657, float %1658, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1660 = extractvalue %dx.types.ResRet.f32 %1659, 2
  %1661 = extractvalue %dx.types.ResRet.f32 %1659, 3
  %1662 = fmul fast float %1660, %1483
  %1663 = fmul fast float %1660, %1484
  %1664 = fmul fast float %1660, %1494
  %1665 = fadd fast float %1662, %1661
  %1666 = fadd fast float %1663, %1661
  %1667 = fadd fast float %1664, %1661
  br i1 %1627, label %1668, label %1691

; <label>:1668                                    ; preds = %1651
  %1669 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %12, float %1151, float %1570, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1670 = extractvalue %dx.types.ResRet.f32 %1669, 0
  %1671 = extractvalue %dx.types.ResRet.f32 %1669, 1
  %1672 = extractvalue %dx.types.ResRet.f32 %1669, 2
  %1673 = fadd fast float %1670, -5.000000e-01
  %1674 = fadd fast float %1671, -5.000000e-01
  %1675 = fadd fast float %1672, -5.000000e-01
  %1676 = fmul fast float %1483, 4.000000e+00
  %1677 = fmul fast float %1676, %1618
  %1678 = fmul fast float %1677, %1673
  %1679 = fmul fast float %1484, 4.000000e+00
  %1680 = fmul fast float %1679, %1619
  %1681 = fmul fast float %1680, %1674
  %1682 = fmul fast float %1494, 4.000000e+00
  %1683 = fmul fast float %1682, %1620
  %1684 = fmul fast float %1683, %1675
  %1685 = fadd fast float %1678, %1665
  %1686 = fadd fast float %1681, %1666
  %1687 = fadd fast float %1684, %1667
  %1688 = call float @dx.op.unary.f32(i32 7, float %1685)  ; Saturate(value)
  %1689 = call float @dx.op.unary.f32(i32 7, float %1686)  ; Saturate(value)
  %1690 = call float @dx.op.unary.f32(i32 7, float %1687)  ; Saturate(value)
  br label %1691

; <label>:1691                                    ; preds = %1668, %1651
  %1692 = phi float [ %1688, %1668 ], [ %1665, %1651 ]
  %1693 = phi float [ %1689, %1668 ], [ %1666, %1651 ]
  %1694 = phi float [ %1690, %1668 ], [ %1667, %1651 ]
  %1695 = call float @dx.op.binary.f32(i32 35, float %1693, float %1694)  ; FMax(a,b)
  %1696 = call float @dx.op.binary.f32(i32 35, float %1692, float %1695)  ; FMax(a,b)
  %1697 = fsub fast float 1.000000e+00, %1696
  %1698 = fmul fast float %1652, %1609
  %1699 = fmul fast float %1653, %1609
  %1700 = fmul fast float %1654, %1609
  %1701 = call float @dx.op.dot3.f32(i32 55, float %1489, float %1490, float %1491, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1702 = fcmp fast ogt float %1701, 0x3E7FF19E20000000
  %1703 = fdiv fast float 1.000000e+00, %1701
  %1704 = select i1 %1702, float %1703, float 0.000000e+00
  %1705 = fmul fast float %1704, %1489
  %1706 = fmul fast float %1704, %1490
  %1707 = fmul fast float %1704, %1491
  %1708 = fadd fast float %1705, -1.000000e+00
  %1709 = fadd fast float %1706, -1.000000e+00
  %1710 = fadd fast float %1707, -1.000000e+00
  %1711 = fmul fast float %1708, 5.000000e-01
  %1712 = fmul fast float %1709, 5.000000e-01
  %1713 = fmul fast float %1710, 5.000000e-01
  %1714 = fadd fast float %1711, 1.000000e+00
  %1715 = fadd fast float %1712, 1.000000e+00
  %1716 = fadd fast float %1713, 1.000000e+00
  %1717 = fsub fast float 1.000000e+00, %1571
  %1718 = bitcast float %1717 to i32
  %1719 = sitofp i32 %1718 to float
  %1720 = fmul fast float %1719, 5.000000e+00
  %1721 = fadd fast float %1720, 0xC1EFBF8940000000
  %1722 = fptosi float %1721 to i32
  %1723 = bitcast i32 %1722 to float
  %1724 = fmul fast float %1723, %1150
  %1725 = fmul fast float %1697, %1724
  %1726 = fmul fast float %1725, %1714
  %1727 = fmul fast float %1725, %1715
  %1728 = fmul fast float %1725, %1716
  %1729 = fadd fast float %1726, %1698
  %1730 = fadd fast float %1727, %1699
  %1731 = fadd fast float %1728, %1700
  %1732 = fmul fast float %1577, %1559
  %1733 = fmul fast float %1732, %1729
  %1734 = fmul fast float %1577, %1560
  %1735 = fmul fast float %1734, %1730
  %1736 = fmul fast float %1577, %1561
  %1737 = fmul fast float %1736, %1731
  %1738 = fmul fast float %1559, %1171
  %1739 = fmul fast float %1738, %1577
  %1740 = fmul fast float %1739, %1697
  %1741 = fmul fast float %1560, %1171
  %1742 = fmul fast float %1741, %1577
  %1743 = fmul fast float %1742, %1697
  %1744 = fmul fast float %1561, %1171
  %1745 = fmul fast float %1744, %1577
  %1746 = fmul fast float %1745, %1697
  %1747 = fadd fast float %1733, %1152
  %1748 = fmul fast float %1747, %1171
  %1749 = fadd fast float %1735, %1153
  %1750 = fmul fast float %1749, %1171
  %1751 = fadd fast float %1737, %1154
  %1752 = fmul fast float %1751, %1171
  br label %1753

; <label>:1753                                    ; preds = %1691, %1551, %1476
  %1754 = phi float [ %1500, %1476 ], [ %1500, %1551 ], [ %1748, %1691 ]
  %1755 = phi float [ %1501, %1476 ], [ %1501, %1551 ], [ %1750, %1691 ]
  %1756 = phi float [ %1502, %1476 ], [ %1502, %1551 ], [ %1752, %1691 ]
  %1757 = phi float [ 0.000000e+00, %1476 ], [ 0.000000e+00, %1551 ], [ %1740, %1691 ]
  %1758 = phi float [ 0.000000e+00, %1476 ], [ 0.000000e+00, %1551 ], [ %1743, %1691 ]
  %1759 = phi float [ 0.000000e+00, %1476 ], [ 0.000000e+00, %1551 ], [ %1746, %1691 ]
  %1760 = call float @dx.op.unary.f32(i32 24, float %1489)  ; Sqrt(value)
  %1761 = call float @dx.op.unary.f32(i32 24, float %1490)  ; Sqrt(value)
  %1762 = call float @dx.op.unary.f32(i32 24, float %1491)  ; Sqrt(value)
  %1763 = fmul fast float %1760, %1757
  %1764 = fmul fast float %1761, %1758
  %1765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1766 = extractvalue %dx.types.CBufRet.f32 %1765, 0
  br i1 %121, label %1767, label %1797

; <label>:1767                                    ; preds = %1753
  %1768 = fadd fast float %1759, %1148
  %1769 = fmul fast float %1768, %1149
  %1770 = fsub fast float 1.000000e+00, %1149
  %1771 = call float @dx.op.unary.f32(i32 7, float %1770)  ; Saturate(value)
  %1772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1773 = extractvalue %dx.types.CBufRet.f32 %1772, 3
  %1774 = fmul fast float %1773, %1771
  %1775 = fadd fast float %1774, %1769
  %1776 = fsub fast float 1.000000e+00, %1496
  %1777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1778 = extractvalue %dx.types.CBufRet.f32 %1777, 0
  %1779 = fmul fast float %1778, %1776
  %1780 = fsub fast float %1775, %1779
  %1781 = fadd fast float %1764, %1763
  %1782 = fmul fast float %1766, %1781
  %1783 = extractvalue %dx.types.CBufRet.f32 %1772, 1
  %1784 = fsub fast float %1780, %1783
  %1785 = extractvalue %dx.types.CBufRet.f32 %1772, 2
  %1786 = fmul fast float %1784, %1785
  %1787 = call float @dx.op.unary.f32(i32 7, float %1786)  ; Saturate(value)
  %1788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1789 = extractvalue %dx.types.CBufRet.f32 %1788, 0
  %1790 = fsub fast float %1787, %1789
  %1791 = fmul fast float %1790, 1.000000e+01
  %1792 = call float @dx.op.unary.f32(i32 7, float %1791)  ; Saturate(value)
  %1793 = fadd fast float %1147, -1.000000e+00
  %1794 = fmul fast float %1792, %1793
  %1795 = fadd fast float %1794, 1.000000e+00
  %1796 = fmul fast float %1795, %1787
  br label %1813

; <label>:1797                                    ; preds = %1753
  %1798 = fmul fast float %1762, %1759
  %1799 = fmul fast float %1766, %1763
  %1800 = fmul fast float %1766, %1764
  %1801 = fmul fast float %1798, %1766
  %1802 = add i32 %16, 116
  %1803 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1802, i32 undef)  ; BufferLoad(srv,index,wot)
  %1804 = extractvalue %dx.types.ResRet.i32 %1803, 0
  %1805 = and i32 %1804, 32
  %1806 = icmp eq i32 %1805, 0
  br i1 %1806, label %1813, label %1807

; <label>:1807                                    ; preds = %1797
  %1808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1809 = extractvalue %dx.types.CBufRet.f32 %1808, 0
  %1810 = fmul fast float %1809, 0x3FE99999A0000000
  %1811 = fadd fast float %1809, %1799
  %1812 = fadd fast float %1810, %1801
  br label %1813

; <label>:1813                                    ; preds = %1807, %1797, %1767
  %1814 = phi float [ %1782, %1767 ], [ %1811, %1807 ], [ %1799, %1797 ]
  %1815 = phi float [ %1796, %1767 ], [ %1800, %1807 ], [ %1800, %1797 ]
  %1816 = phi float [ %1795, %1767 ], [ %1812, %1807 ], [ %1801, %1797 ]
  %1817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1818 = extractvalue %dx.types.CBufRet.f32 %1817, 0
  %1819 = fmul fast float %1818, %1755
  %1820 = fmul fast float %1818, %1756
  %1821 = fadd fast float %1755, %1754
  %1822 = select i1 %121, float %1821, float %1754
  %1823 = fmul float %1822, %1818
  %1824 = select i1 %121, float 0.000000e+00, float %1819
  %1825 = select i1 %121, float 0.000000e+00, float %1820
  %1826 = fmul fast float %1814, %1760
  %1827 = fmul fast float %1815, %1761
  %1828 = fmul fast float %1816, %1762
  %1829 = fadd fast float %1823, %1826
  %1830 = fadd fast float %1824, %1827
  %1831 = fadd fast float %1825, %1828
  %1832 = select i1 %121, float %1815, float %1830
  %1833 = select i1 %121, float %1816, float %1831
  %1834 = call float @dx.op.binary.f32(i32 36, float %1829, float 3.225500e+04)  ; FMin(a,b)
  %1835 = call float @dx.op.binary.f32(i32 36, float %1832, float 3.225500e+04)  ; FMin(a,b)
  %1836 = call float @dx.op.binary.f32(i32 36, float %1833, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1834)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1835)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1836)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!27 = !{[28 x i32] [i32 26, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0]}
!28 = !{void ()* @ps_main, !"ps_main", !29, !4, !48}
!29 = !{!30, !46, null}
!30 = !{!31, !34, !35, !37, !38, !40, !42, !44, !45}
!31 = !{i32 0, !"SV_Position", i8 9, i8 3, !32, i8 4, i32 1, i8 4, i32 0, i8 0, !33}
!32 = !{i32 0}
!33 = !{i32 3, i32 11}
!34 = !{i32 1, !"COLOR", i8 9, i8 0, !32, i8 2, i32 1, i8 4, i32 1, i8 0, null}
!35 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !32, i8 2, i32 1, i8 2, i32 2, i8 0, !36}
!36 = !{i32 3, i32 3}
!37 = !{i32 3, !"LMAPCOORDS", i8 9, i8 0, !32, i8 2, i32 1, i8 3, i32 3, i8 0, null}
!38 = !{i32 4, !"NORMAL", i8 9, i8 0, !32, i8 2, i32 1, i8 3, i32 4, i8 0, !39}
!39 = !{i32 3, i32 7}
!40 = !{i32 5, !"TANGENT", i8 9, i8 0, !32, i8 2, i32 1, i8 4, i32 5, i8 0, !41}
!41 = !{i32 3, i32 15}
!42 = !{i32 6, !"MATERIAL_DATA_OFFSET", i8 5, i8 0, !32, i8 1, i32 1, i8 1, i32 6, i8 0, !43}
!43 = !{i32 3, i32 1}
!44 = !{i32 7, !"TRANSIENT_INDEX", i8 5, i8 0, !32, i8 1, i32 1, i8 1, i32 6, i8 1, null}
!45 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !32, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!46 = !{!47}
!47 = !{i32 0, !"SV_Target", i8 9, i8 16, !32, i8 0, i32 1, i8 4, i32 0, i8 0, !41}
!48 = !{i32 0, i64 24}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 1}

