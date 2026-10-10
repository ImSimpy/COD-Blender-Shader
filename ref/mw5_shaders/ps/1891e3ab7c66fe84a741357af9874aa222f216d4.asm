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
; shader hash: a0a4555c01e976196ec34e7006db9fe1
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
;                                   texture    byte         r/o      T3     t16,space1     1
;                                   texture    byte         r/o      T4     t17,space1     1
;                                   texture     f32          2d      T5     t69,space2     1
;                                   texture     f32          2d      T6     t58,space2     1
;                                   texture     f32          2d      T7     t57,space2     1
;                                   texture    byte         r/o      T8     t69,space1     1
;
;
; ViewId state:
;
; Number of inputs: 22, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 4, 5, 12, 13, 14, 20 }
;   output 1 depends on inputs: { 0, 1, 3, 4, 5, 12, 13, 14, 16, 17, 18, 19, 20 }
;   output 2 depends on inputs: { 0, 1, 3, 4, 5, 12, 13, 14, 20 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %13 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %14 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %15 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %16 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %17 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %18 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %19 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %20 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %21 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %28 = extractvalue %dx.types.CBufRet.f32 %27, 0
  %29 = fmul fast float %28, %22
  %30 = fmul fast float %28, %23
  %31 = fmul fast float %18, %15
  %32 = fmul fast float %19, %14
  %33 = fsub fast float %31, %32
  %34 = fmul fast float %19, %13
  %35 = fmul fast float %17, %15
  %36 = fsub fast float %34, %35
  %37 = fmul fast float %17, %14
  %38 = fmul fast float %18, %13
  %39 = fsub fast float %37, %38
  %40 = fmul fast float %33, %16
  %41 = fmul fast float %36, %16
  %42 = fmul fast float %39, %16
  %43 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %44 = extractvalue %dx.types.CBufRet.f32 %43, 2
  %45 = extractvalue %dx.types.CBufRet.f32 %43, 3
  %46 = fmul fast float %44, 2.000000e+00
  %47 = fmul fast float %46, %29
  %48 = fmul fast float %45, 2.000000e+00
  %49 = fmul fast float %48, %30
  %50 = fsub fast float 1.000000e+00, %47
  %51 = fsub fast float 1.000000e+00, %49
  %52 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %53 = extractvalue %dx.types.CBufRet.f32 %52, 0
  %54 = extractvalue %dx.types.CBufRet.f32 %52, 1
  %55 = extractvalue %dx.types.CBufRet.f32 %52, 2
  %56 = fmul fast float %50, %53
  %57 = fmul fast float %50, %54
  %58 = fmul fast float %50, %55
  %59 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %60 = extractvalue %dx.types.CBufRet.f32 %59, 0
  %61 = extractvalue %dx.types.CBufRet.f32 %59, 1
  %62 = extractvalue %dx.types.CBufRet.f32 %59, 2
  %63 = fmul fast float %51, %60
  %64 = fmul fast float %51, %61
  %65 = fmul fast float %51, %62
  %66 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %67 = extractvalue %dx.types.CBufRet.f32 %66, 0
  %68 = extractvalue %dx.types.CBufRet.f32 %66, 1
  %69 = extractvalue %dx.types.CBufRet.f32 %66, 2
  %70 = fadd fast float %63, %67
  %71 = fadd fast float %70, %56
  %72 = fadd fast float %64, %68
  %73 = fadd fast float %72, %57
  %74 = fadd fast float %65, %69
  %75 = fadd fast float %74, %58
  %76 = fmul fast float %71, %24
  %77 = fmul fast float %73, %24
  %78 = fmul fast float %75, %24
  %79 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %80 = extractvalue %dx.types.CBufRet.f32 %79, 2
  %81 = extractvalue %dx.types.CBufRet.f32 %79, 3
  %82 = fmul fast float %80, %29
  %83 = fmul fast float %81, %30
  %84 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %85 = extractvalue %dx.types.ResRet.i32 %84, 0
  %86 = and i32 %85, 114688
  %87 = icmp ne i32 %86, 0
  %88 = select i1 %87, float %82, float 0.000000e+00
  %89 = select i1 %87, float %83, float 0.000000e+00
  %90 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %9, float %88, float %89, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %91 = extractvalue %dx.types.ResRet.f32 %90, 0
  %92 = fmul fast float %91, 2.550000e+02
  %93 = fptoui float %92 to i32
  %94 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %95 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %96 = extractvalue %dx.types.CBufRet.i32 %95, 3
  %97 = and i32 %96, 3
  %98 = icmp ne i32 %97, 0
  %99 = and i32 %96, 4
  %100 = icmp ne i32 %99, 0
  %101 = and i1 %98, %100
  br i1 %101, label %102, label %113

; <label>:102                                     ; preds = %0
  %103 = extractvalue %dx.types.CBufRet.f32 %94, 3
  %104 = fmul fast float %103, %30
  %105 = extractvalue %dx.types.CBufRet.f32 %94, 2
  %106 = fmul fast float %105, %29
  %107 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %8, float %106, float %104, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %108 = extractvalue %dx.types.ResRet.f32 %107, 0
  %109 = fsub fast float 1.000000e+00, %108
  %110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %111 = extractvalue %dx.types.CBufRet.f32 %110, 0
  %112 = fcmp fast olt float %109, %111
  br label %116

; <label>:113                                     ; preds = %0
  %114 = icmp eq i32 %99, 0
  %115 = and i1 %98, %114
  br label %116

; <label>:116                                     ; preds = %113, %102
  %117 = phi i1 [ %112, %102 ], [ %115, %113 ]
  %118 = add i32 %12, 60
  %119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %118, i32 undef)  ; BufferLoad(srv,index,wot)
  %120 = extractvalue %dx.types.ResRet.i32 %119, 0
  %121 = shl i32 %120, 4
  %122 = and i32 %121, 32752
  %123 = call float @dx.op.legacyF16ToF32(i32 131, i32 %122)  ; LegacyF16ToF32(value)
  %124 = lshr i32 %120, 7
  %125 = and i32 %124, 32752
  %126 = call float @dx.op.legacyF16ToF32(i32 131, i32 %125)  ; LegacyF16ToF32(value)
  %127 = lshr i32 %120, 22
  %128 = shl nuw nsw i32 %127, 5
  %129 = call float @dx.op.legacyF16ToF32(i32 131, i32 %128)  ; LegacyF16ToF32(value)
  %130 = add i32 %12, 72
  %131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %130, i32 undef)  ; BufferLoad(srv,index,wot)
  %132 = extractvalue %dx.types.ResRet.i32 %131, 0
  %133 = and i32 %132, 255
  %134 = uitofp i32 %133 to float
  %135 = fmul fast float %134, 0x3F70101020000000
  %136 = lshr i32 %132, 8
  %137 = and i32 %136, 255
  %138 = uitofp i32 %137 to float
  %139 = fmul fast float %138, 0x3F70101020000000
  %140 = lshr i32 %132, 16
  %141 = and i32 %140, 255
  %142 = uitofp i32 %141 to float
  %143 = fmul fast float %142, 0x3F70101020000000
  %144 = add i32 %12, 36
  %145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %144, i32 undef)  ; BufferLoad(srv,index,wot)
  %146 = extractvalue %dx.types.ResRet.i32 %145, 0
  %147 = add i32 %12, 96
  %148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %147, i32 undef)  ; BufferLoad(srv,index,wot)
  %149 = extractvalue %dx.types.ResRet.i32 %148, 0
  %150 = add i32 %12, 24
  %151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %150, i32 undef)  ; BufferLoad(srv,index,wot)
  %152 = extractvalue %dx.types.ResRet.i32 %151, 0
  %153 = add i32 %12, 28
  %154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %153, i32 undef)  ; BufferLoad(srv,index,wot)
  %155 = extractvalue %dx.types.ResRet.i32 %154, 0
  %156 = or i32 %155, %152
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %618, label %158

; <label>:158                                     ; preds = %116
  %159 = lshr i32 %149, 16
  %160 = call float @dx.op.legacyF16ToF32(i32 131, i32 %159)  ; LegacyF16ToF32(value)
  %161 = fmul fast float %160, 0x3F50624DE0000000
  %162 = and i32 %149, 65535
  %163 = call float @dx.op.legacyF16ToF32(i32 131, i32 %162)  ; LegacyF16ToF32(value)
  %164 = fmul fast float %163, 0x3F50624DE0000000
  %165 = lshr i32 %146, 16
  %166 = call float @dx.op.legacyF16ToF32(i32 131, i32 %165)  ; LegacyF16ToF32(value)
  %167 = and i32 %146, 65535
  %168 = call float @dx.op.legacyF16ToF32(i32 131, i32 %167)  ; LegacyF16ToF32(value)
  %169 = add i32 %12, 92
  %170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %169, i32 undef)  ; BufferLoad(srv,index,wot)
  %171 = extractvalue %dx.types.ResRet.i32 %170, 0
  %172 = lshr i32 %171, 16
  %173 = call float @dx.op.legacyF16ToF32(i32 131, i32 %172)  ; LegacyF16ToF32(value)
  %174 = fmul fast float %173, 0x3F50624DE0000000
  %175 = add i32 %12, 40
  %176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %175, i32 undef)  ; BufferLoad(srv,index,wot)
  %177 = extractvalue %dx.types.ResRet.i32 %176, 0
  %178 = lshr i32 %177, 16
  %179 = and i32 %178, 255
  %180 = lshr i32 %177, 24
  %181 = add i32 %12, 100
  %182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %181, i32 undef)  ; BufferLoad(srv,index,wot)
  %183 = extractvalue %dx.types.ResRet.i32 %182, 0
  %184 = and i32 %183, 65535
  %185 = call float @dx.op.legacyF16ToF32(i32 131, i32 %184)  ; LegacyF16ToF32(value)
  %186 = lshr i32 %183, 16
  %187 = call float @dx.op.legacyF16ToF32(i32 131, i32 %186)  ; LegacyF16ToF32(value)
  %188 = add i32 %12, 32
  %189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %188, i32 undef)  ; BufferLoad(srv,index,wot)
  %190 = extractvalue %dx.types.ResRet.i32 %189, 0
  %191 = lshr i32 %190, 22
  %192 = shl nuw nsw i32 %191, 5
  %193 = call float @dx.op.legacyF16ToF32(i32 131, i32 %192)  ; LegacyF16ToF32(value)
  %194 = shl i32 %190, 4
  %195 = and i32 %194, 32752
  %196 = call float @dx.op.legacyF16ToF32(i32 131, i32 %195)  ; LegacyF16ToF32(value)
  %197 = lshr i32 %190, 7
  %198 = and i32 %197, 32752
  %199 = call float @dx.op.legacyF16ToF32(i32 131, i32 %198)  ; LegacyF16ToF32(value)
  %200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %201 = extractvalue %dx.types.CBufRet.f32 %200, 3
  %202 = fmul fast float %201, 1.000000e+03
  %203 = fmul fast float %164, %202
  %204 = call float @dx.op.unary.f32(i32 22, float %203)  ; Frc(value)
  %205 = fadd fast float %204, %168
  %206 = fmul fast float %161, %202
  %207 = call float @dx.op.unary.f32(i32 22, float %206)  ; Frc(value)
  %208 = fadd fast float %207, %166
  %209 = fmul fast float %174, %202
  %210 = call float @dx.op.unary.f32(i32 22, float %209)  ; Frc(value)
  %211 = fmul fast float %210, 0x401921FB60000000
  %212 = fadd fast float %211, %193
  %213 = call float @dx.op.unary.f32(i32 13, float %212)  ; Sin(value)
  %214 = call float @dx.op.unary.f32(i32 12, float %212)  ; Cos(value)
  %215 = fsub fast float -0.000000e+00, %213
  %216 = fadd fast float %20, -5.000000e-01
  %217 = fadd fast float %21, -5.000000e-01
  %218 = fmul fast float %185, %216
  %219 = fmul fast float %187, %217
  %220 = fadd fast float %218, 5.000000e-01
  %221 = fadd fast float %219, 5.000000e-01
  %222 = fmul fast float %196, %220
  %223 = fmul fast float %199, %221
  %224 = fmul fast float %214, %222
  %225 = call float @dx.op.tertiary.f32(i32 46, float %215, float %223, float %224)  ; FMad(a,b,c)
  %226 = fmul fast float %213, %222
  %227 = call float @dx.op.tertiary.f32(i32 46, float %214, float %223, float %226)  ; FMad(a,b,c)
  %228 = fadd fast float %205, %225
  %229 = fadd fast float %208, %227
  %230 = icmp ugt i32 %179, 1
  %231 = icmp ugt i32 %177, 33554431
  %232 = or i1 %231, %230
  br i1 %232, label %233, label %258

; <label>:233                                     ; preds = %158
  %234 = add i32 %12, 84
  %235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %234, i32 undef)  ; BufferLoad(srv,index,wot)
  %236 = extractvalue %dx.types.ResRet.i32 %235, 0
  %237 = lshr i32 %236, 16
  %238 = call float @dx.op.legacyF16ToF32(i32 131, i32 %237)  ; LegacyF16ToF32(value)
  %239 = fmul fast float %201, %238
  %240 = call float @dx.op.unary.f32(i32 22, float %239)  ; Frc(value)
  %241 = mul nuw nsw i32 %179, %180
  %242 = uitofp i32 %241 to float
  %243 = fmul fast float %240, %242
  %244 = call float @dx.op.unary.f32(i32 27, float %243)  ; Round_ni(value)
  %245 = fptoui float %244 to i32
  %246 = urem i32 %245, %179
  %247 = udiv i32 %245, %180
  %248 = call float @dx.op.unary.f32(i32 22, float %228)  ; Frc(value)
  %249 = call float @dx.op.unary.f32(i32 22, float %229)  ; Frc(value)
  %250 = uitofp i32 %246 to float
  %251 = uitofp i32 %247 to float
  %252 = fadd fast float %248, %250
  %253 = fadd fast float %249, %251
  %254 = uitofp i32 %179 to float
  %255 = uitofp i32 %180 to float
  %256 = fdiv fast float %252, %254
  %257 = fdiv fast float %253, %255
  br label %258

; <label>:258                                     ; preds = %233, %158
  %259 = phi float [ %256, %233 ], [ %228, %158 ]
  %260 = phi float [ %257, %233 ], [ %229, %158 ]
  %261 = and i32 %152, 16
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %459, label %263

; <label>:263                                     ; preds = %258
  %264 = add i32 %12, 120
  %265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %264, i32 undef)  ; BufferLoad(srv,index,wot)
  %266 = extractvalue %dx.types.ResRet.i32 %265, 0
  %267 = add i32 %266, 0
  %268 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %267, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %269 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %268, %dx.types.Handle %25, float %259, float %260, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %270 = extractvalue %dx.types.ResRet.f32 %269, 0
  %271 = extractvalue %dx.types.ResRet.f32 %269, 1
  %272 = extractvalue %dx.types.ResRet.f32 %269, 2
  %273 = extractvalue %dx.types.ResRet.f32 %269, 3
  %274 = and i32 %177, 255
  %275 = uitofp i32 %274 to float
  %276 = lshr i32 %177, 8
  %277 = and i32 %276, 255
  %278 = uitofp i32 %277 to float
  %279 = fmul fast float %273, %275
  %280 = fadd fast float %279, %278
  %281 = fmul fast float %280, 0x3F70101000000000
  %282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %150, i32 undef)  ; BufferLoad(srv,index,wot)
  %283 = extractvalue %dx.types.ResRet.i32 %282, 0
  %284 = and i32 %283, 512
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %294, label %286

; <label>:286                                     ; preds = %263
  %287 = add i32 %12, 140
  %288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %287, i32 undef)  ; BufferLoad(srv,index,wot)
  %289 = extractvalue %dx.types.ResRet.i32 %288, 0
  %290 = add i32 %289, 0
  %291 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %290, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %292 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %291, %dx.types.Handle %26, float %259, float %260, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %293 = extractvalue %dx.types.ResRet.f32 %292, 0
  br label %294

; <label>:294                                     ; preds = %286, %263
  %295 = phi float [ %293, %286 ], [ 1.000000e+00, %263 ]
  %296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %150, i32 undef)  ; BufferLoad(srv,index,wot)
  %297 = extractvalue %dx.types.ResRet.i32 %296, 0
  %298 = and i32 %297, 33554432
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %406, label %300

; <label>:300                                     ; preds = %294
  %301 = add i32 %12, 80
  %302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %301, i32 undef)  ; BufferLoad(srv,index,wot)
  %303 = extractvalue %dx.types.ResRet.i32 %302, 0
  %304 = and i32 %303, 65535
  %305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %304)  ; LegacyF16ToF32(value)
  %306 = lshr i32 %303, 16
  %307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %306)  ; LegacyF16ToF32(value)
  %308 = add i32 %12, 84
  %309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %308, i32 undef)  ; BufferLoad(srv,index,wot)
  %310 = extractvalue %dx.types.ResRet.i32 %309, 0
  %311 = and i32 %310, 65535
  %312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %311)  ; LegacyF16ToF32(value)
  %313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %130, i32 undef)  ; BufferLoad(srv,index,wot)
  %314 = extractvalue %dx.types.ResRet.i32 %313, 0
  %315 = lshr i32 %314, 24
  %316 = uitofp i32 %315 to float
  %317 = fmul fast float %316, 0x3F70101020000000
  %318 = and i32 %314, 255
  %319 = uitofp i32 %318 to float
  %320 = fmul fast float %319, 0x3F70101020000000
  %321 = lshr i32 %314, 8
  %322 = and i32 %321, 255
  %323 = uitofp i32 %322 to float
  %324 = fmul fast float %323, 0x3F70101020000000
  %325 = lshr i32 %314, 16
  %326 = and i32 %325, 255
  %327 = uitofp i32 %326 to float
  %328 = fmul fast float %327, 0x3F70101020000000
  %329 = add i32 %12, 76
  %330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %329, i32 undef)  ; BufferLoad(srv,index,wot)
  %331 = extractvalue %dx.types.ResRet.i32 %330, 0
  %332 = lshr i32 %331, 24
  %333 = uitofp i32 %332 to float
  %334 = fmul fast float %333, 0x3F70101020000000
  %335 = and i32 %331, 255
  %336 = uitofp i32 %335 to float
  %337 = fmul fast float %336, 0x3F70101020000000
  %338 = lshr i32 %331, 8
  %339 = and i32 %338, 255
  %340 = uitofp i32 %339 to float
  %341 = fmul fast float %340, 0x3F70101020000000
  %342 = lshr i32 %331, 16
  %343 = and i32 %342, 255
  %344 = uitofp i32 %343 to float
  %345 = fmul fast float %344, 0x3F70101020000000
  %346 = bitcast float %270 to i32
  %347 = ashr i32 %346, 1
  %348 = sub nsw i32 1597463174, %347
  %349 = bitcast i32 %348 to float
  %350 = fmul fast float %270, 5.000000e-01
  %351 = fmul fast float %349, %349
  %352 = fmul fast float %351, %350
  %353 = fsub fast float 1.500000e+00, %352
  %354 = fmul fast float %349, %270
  %355 = fmul fast float %354, %353
  %356 = bitcast float %271 to i32
  %357 = ashr i32 %356, 1
  %358 = sub nsw i32 1597463174, %357
  %359 = bitcast i32 %358 to float
  %360 = fmul fast float %271, 5.000000e-01
  %361 = fmul fast float %359, %359
  %362 = fmul fast float %361, %360
  %363 = fsub fast float 1.500000e+00, %362
  %364 = fmul fast float %359, %271
  %365 = fmul fast float %364, %363
  %366 = bitcast float %272 to i32
  %367 = ashr i32 %366, 1
  %368 = sub nsw i32 1597463174, %367
  %369 = bitcast i32 %368 to float
  %370 = fmul fast float %272, 5.000000e-01
  %371 = fmul fast float %369, %369
  %372 = fmul fast float %371, %370
  %373 = fsub fast float 1.500000e+00, %372
  %374 = fmul fast float %369, %272
  %375 = fmul fast float %374, %373
  %376 = fsub fast float %355, %337
  %377 = fsub fast float %365, %341
  %378 = fsub fast float %375, %345
  %379 = fmul fast float %376, %305
  %380 = fmul fast float %377, %307
  %381 = fmul fast float %378, %312
  %382 = fadd fast float %379, %320
  %383 = fadd fast float %380, %324
  %384 = fadd fast float %381, %328
  %385 = call float @dx.op.unary.f32(i32 7, float %382)  ; Saturate(value)
  %386 = call float @dx.op.unary.f32(i32 7, float %383)  ; Saturate(value)
  %387 = call float @dx.op.unary.f32(i32 7, float %384)  ; Saturate(value)
  %388 = fmul fast float %385, %385
  %389 = fmul fast float %386, %386
  %390 = fmul fast float %387, %387
  %391 = fsub fast float %388, %270
  %392 = fsub fast float %389, %271
  %393 = fsub fast float %390, %272
  %394 = fmul fast float %391, %295
  %395 = fmul fast float %392, %295
  %396 = fmul fast float %393, %295
  %397 = fadd fast float %394, %270
  %398 = fadd fast float %395, %271
  %399 = fadd fast float %396, %272
  %400 = fadd fast float %317, %281
  %401 = fsub fast float %400, %334
  %402 = call float @dx.op.unary.f32(i32 7, float %401)  ; Saturate(value)
  %403 = fsub fast float %402, %281
  %404 = fmul fast float %403, %295
  %405 = fadd fast float %404, %281
  br label %459

; <label>:406                                     ; preds = %294
  %407 = and i32 %297, 134217728
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %443, label %409

; <label>:409                                     ; preds = %406
  %410 = call float @dx.op.unary.f32(i32 24, float %135)  ; Sqrt(value)
  %411 = call float @dx.op.unary.f32(i32 24, float %139)  ; Sqrt(value)
  %412 = call float @dx.op.unary.f32(i32 24, float %143)  ; Sqrt(value)
  %413 = fadd fast float %410, -5.000000e-01
  %414 = fadd fast float %411, -5.000000e-01
  %415 = fadd fast float %412, -5.000000e-01
  %416 = fmul fast float %413, %295
  %417 = fmul fast float %414, %295
  %418 = fmul fast float %415, %295
  %419 = fadd fast float %416, 5.000000e-01
  %420 = fadd fast float %417, 5.000000e-01
  %421 = fadd fast float %418, 5.000000e-01
  %422 = call float @dx.op.unary.f32(i32 24, float %270)  ; Sqrt(value)
  %423 = call float @dx.op.unary.f32(i32 24, float %271)  ; Sqrt(value)
  %424 = call float @dx.op.unary.f32(i32 24, float %272)  ; Sqrt(value)
  %425 = fmul fast float %419, 2.000000e+00
  %426 = fsub fast float 1.000000e+00, %425
  %427 = fmul fast float %426, %422
  %428 = fadd fast float %427, %425
  %429 = fmul fast float %428, %422
  %430 = fmul fast float %420, 2.000000e+00
  %431 = fsub fast float 1.000000e+00, %430
  %432 = fmul fast float %431, %423
  %433 = fadd fast float %432, %430
  %434 = fmul fast float %433, %423
  %435 = fmul fast float %421, 2.000000e+00
  %436 = fsub fast float 1.000000e+00, %435
  %437 = fmul fast float %436, %424
  %438 = fadd fast float %437, %435
  %439 = fmul fast float %438, %424
  %440 = fmul fast float %429, %429
  %441 = fmul fast float %434, %434
  %442 = fmul fast float %439, %439
  br label %459

; <label>:443                                     ; preds = %406
  %444 = fmul fast float %135, %135
  %445 = fmul fast float %139, %139
  %446 = fmul fast float %143, %143
  %447 = fadd fast float %444, -1.000000e+00
  %448 = fadd fast float %445, -1.000000e+00
  %449 = fadd fast float %446, -1.000000e+00
  %450 = fmul fast float %295, %447
  %451 = fmul fast float %295, %448
  %452 = fmul fast float %295, %449
  %453 = fadd fast float %450, 1.000000e+00
  %454 = fadd fast float %451, 1.000000e+00
  %455 = fadd fast float %452, 1.000000e+00
  %456 = fmul fast float %453, %270
  %457 = fmul fast float %454, %271
  %458 = fmul fast float %455, %272
  br label %459

; <label>:459                                     ; preds = %443, %409, %300, %258
  %460 = phi float [ %405, %300 ], [ %281, %409 ], [ %281, %443 ], [ 0x3FA23C0BE0000000, %258 ]
  %461 = phi float [ %397, %300 ], [ %440, %409 ], [ %456, %443 ], [ 1.000000e+00, %258 ]
  %462 = phi float [ %398, %300 ], [ %441, %409 ], [ %457, %443 ], [ 1.000000e+00, %258 ]
  %463 = phi float [ %399, %300 ], [ %442, %409 ], [ %458, %443 ], [ 1.000000e+00, %258 ]
  %464 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %465 = extractvalue %dx.types.CBufRet.i32 %464, 1
  %466 = and i32 %465, 1
  %467 = icmp ne i32 %466, 0
  %468 = add i32 %12, 116
  %469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %468, i32 undef)  ; BufferLoad(srv,index,wot)
  %470 = extractvalue %dx.types.ResRet.i32 %469, 0
  %471 = and i32 %470, 32
  %472 = icmp ne i32 %471, 0
  %473 = and i1 %467, %472
  %474 = select i1 %473, float 1.000000e+00, float %461
  %475 = select i1 %473, float 0x3FD3333340000000, float %462
  %476 = select i1 %473, float 0x3FD3333340000000, float %463
  %477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %150, i32 undef)  ; BufferLoad(srv,index,wot)
  %478 = extractvalue %dx.types.ResRet.i32 %477, 0
  %479 = and i32 %478, 32
  %480 = icmp eq i32 %479, 0
  br i1 %480, label %553, label %481

; <label>:481                                     ; preds = %459
  %482 = add i32 %12, 44
  %483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %482, i32 undef)  ; BufferLoad(srv,index,wot)
  %484 = extractvalue %dx.types.ResRet.i32 %483, 0
  %485 = add i32 %12, 124
  %486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %485, i32 undef)  ; BufferLoad(srv,index,wot)
  %487 = extractvalue %dx.types.ResRet.i32 %486, 0
  %488 = add i32 %487, 0
  %489 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %488, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %490 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %489, %dx.types.Handle %25, float %259, float %260, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %491 = extractvalue %dx.types.ResRet.f32 %490, 0
  %492 = extractvalue %dx.types.ResRet.f32 %490, 1
  %493 = extractvalue %dx.types.ResRet.f32 %490, 2
  %494 = extractvalue %dx.types.ResRet.f32 %490, 3
  %495 = and i32 %484, 255
  %496 = uitofp i32 %495 to float
  %497 = lshr i32 %484, 8
  %498 = and i32 %497, 255
  %499 = uitofp i32 %498 to float
  %500 = lshr i32 %484, 16
  %501 = and i32 %500, 255
  %502 = uitofp i32 %501 to float
  %503 = fmul fast float %502, 0x3F70101000000000
  %504 = fmul fast float %491, %496
  %505 = fadd fast float %504, %499
  %506 = fmul fast float %505, 0x3F70101000000000
  %507 = fadd fast float %492, -5.000000e-01
  %508 = fadd fast float %494, -5.000000e-01
  %509 = fmul fast float %507, %503
  %510 = fmul fast float %508, %503
  %511 = fadd fast float %509, 5.000000e-01
  %512 = fadd fast float %510, 5.000000e-01
  %513 = fmul fast float %511, 2.000000e+00
  %514 = fadd fast float %513, -1.000000e+00
  %515 = fmul fast float %512, 2.000000e+00
  %516 = fadd fast float %515, -1.000000e+00
  %517 = fadd fast float %514, %516
  %518 = fmul fast float %517, 5.000000e-01
  %519 = fsub fast float %514, %516
  %520 = fmul fast float %519, 5.000000e-01
  %521 = call float @dx.op.unary.f32(i32 6, float %518)  ; FAbs(value)
  %522 = fsub fast float 1.000000e+00, %521
  %523 = call float @dx.op.unary.f32(i32 6, float %520)  ; FAbs(value)
  %524 = fsub fast float %522, %523
  %525 = call float @dx.op.dot3.f32(i32 55, float %518, float %520, float %524, float %518, float %520, float %524)  ; Dot3(ax,ay,az,bx,by,bz)
  %526 = call float @dx.op.unary.f32(i32 25, float %525)  ; Rsqrt(value)
  %527 = fmul fast float %518, %526
  %528 = fmul fast float %520, %526
  %529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %150, i32 undef)  ; BufferLoad(srv,index,wot)
  %530 = extractvalue %dx.types.ResRet.i32 %529, 0
  %531 = and i32 %530, 67108864
  %532 = icmp eq i32 %531, 0
  br i1 %532, label %549, label %533

; <label>:533                                     ; preds = %481
  %534 = add i32 %12, 88
  %535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %534, i32 undef)  ; BufferLoad(srv,index,wot)
  %536 = extractvalue %dx.types.ResRet.i32 %535, 0
  %537 = and i32 %536, 65535
  %538 = call float @dx.op.legacyF16ToF32(i32 131, i32 %537)  ; LegacyF16ToF32(value)
  %539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %169, i32 undef)  ; BufferLoad(srv,index,wot)
  %540 = extractvalue %dx.types.ResRet.i32 %539, 0
  %541 = and i32 %540, 65535
  %542 = call float @dx.op.legacyF16ToF32(i32 131, i32 %541)  ; LegacyF16ToF32(value)
  %543 = lshr i32 %536, 16
  %544 = call float @dx.op.legacyF16ToF32(i32 131, i32 %543)  ; LegacyF16ToF32(value)
  %545 = fsub fast float %506, %544
  %546 = fmul fast float %545, %538
  %547 = fadd fast float %546, %542
  %548 = call float @dx.op.unary.f32(i32 7, float %547)  ; Saturate(value)
  br label %549

; <label>:549                                     ; preds = %533, %481
  %550 = phi float [ %548, %533 ], [ %506, %481 ]
  %551 = call float @dx.op.dot2.f32(i32 54, float %527, float %528, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %552 = call float @dx.op.dot2.f32(i32 54, float %527, float %528, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %553

; <label>:553                                     ; preds = %549, %459
  %554 = phi float [ %550, %549 ], [ 0x3FD6666660000000, %459 ]
  %555 = phi float [ %551, %549 ], [ 0.000000e+00, %459 ]
  %556 = phi float [ %552, %549 ], [ 0.000000e+00, %459 ]
  %557 = phi float [ %493, %549 ], [ 1.000000e+00, %459 ]
  %558 = add i32 %12, 64
  %559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %558, i32 undef)  ; BufferLoad(srv,index,wot)
  %560 = extractvalue %dx.types.ResRet.i32 %559, 0
  %561 = lshr i32 %560, 22
  %562 = shl nuw nsw i32 %561, 5
  %563 = call float @dx.op.legacyF16ToF32(i32 131, i32 %562)  ; LegacyF16ToF32(value)
  %564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %150, i32 undef)  ; BufferLoad(srv,index,wot)
  %565 = extractvalue %dx.types.ResRet.i32 %564, 0
  %566 = and i32 %565, 64
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %601, label %568

; <label>:568                                     ; preds = %553
  %569 = add i32 %12, 128
  %570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %569, i32 undef)  ; BufferLoad(srv,index,wot)
  %571 = extractvalue %dx.types.ResRet.i32 %570, 0
  %572 = add i32 %571, 0
  %573 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %572, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %150, i32 undef)  ; BufferLoad(srv,index,wot)
  %575 = extractvalue %dx.types.ResRet.i32 %574, 0
  %576 = and i32 %575, 131072
  %577 = icmp eq i32 %576, 0
  %578 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %573, %dx.types.Handle %25, float %259, float %260, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %579 = extractvalue %dx.types.ResRet.f32 %578, 0
  %580 = extractvalue %dx.types.ResRet.f32 %578, 1
  %581 = extractvalue %dx.types.ResRet.f32 %578, 2
  %582 = fmul fast float %579, %123
  %583 = fmul fast float %580, %126
  %584 = fmul fast float %581, %129
  br i1 %577, label %591, label %585

; <label>:585                                     ; preds = %568
  %586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %587 = extractvalue %dx.types.CBufRet.f32 %586, 0
  %588 = fmul fast float %587, %582
  %589 = fmul fast float %587, %583
  %590 = fmul fast float %587, %584
  br label %591

; <label>:591                                     ; preds = %585, %568
  %592 = phi float [ %588, %585 ], [ %582, %568 ]
  %593 = phi float [ %589, %585 ], [ %583, %568 ]
  %594 = phi float [ %590, %585 ], [ %584, %568 ]
  %595 = fmul fast float %592, %563
  %596 = select i1 %117, float %595, float %592
  %597 = call float @dx.op.dot3.f32(i32 55, float %596, float %593, float %594, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %598 = select i1 %117, float 0.000000e+00, float %592
  %599 = select i1 %117, float %597, float %593
  %600 = select i1 %117, float 0.000000e+00, float %594
  br label %601

; <label>:601                                     ; preds = %591, %553
  %602 = phi float [ %598, %591 ], [ 0.000000e+00, %553 ]
  %603 = phi float [ %599, %591 ], [ 0.000000e+00, %553 ]
  %604 = phi float [ %600, %591 ], [ 0.000000e+00, %553 ]
  %605 = add i32 %12, 48
  %606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %605, i32 undef)  ; BufferLoad(srv,index,wot)
  %607 = extractvalue %dx.types.ResRet.i32 %606, 0
  %608 = and i32 %607, 255
  %609 = uitofp i32 %608 to float
  %610 = lshr i32 %607, 8
  %611 = and i32 %610, 255
  %612 = uitofp i32 %611 to float
  %613 = call float @dx.op.dot3.f32(i32 55, float %474, float %475, float %476, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %614 = fmul fast float %612, %613
  %615 = fadd fast float %614, %609
  %616 = fmul fast float %615, 0x3F70101020000000
  %617 = call float @dx.op.unary.f32(i32 7, float %616)  ; Saturate(value)
  br label %618

; <label>:618                                     ; preds = %601, %116
  %619 = phi float [ 0.000000e+00, %116 ], [ %555, %601 ]
  %620 = phi float [ 0.000000e+00, %116 ], [ %556, %601 ]
  %621 = phi float [ 0.000000e+00, %116 ], [ %474, %601 ]
  %622 = phi float [ 0.000000e+00, %116 ], [ %475, %601 ]
  %623 = phi float [ 0.000000e+00, %116 ], [ %476, %601 ]
  %624 = phi float [ 0.000000e+00, %116 ], [ %602, %601 ]
  %625 = phi float [ 0.000000e+00, %116 ], [ %603, %601 ]
  %626 = phi float [ 0.000000e+00, %116 ], [ %604, %601 ]
  %627 = phi float [ 0.000000e+00, %116 ], [ %460, %601 ]
  %628 = phi float [ 0.000000e+00, %116 ], [ 1.000000e+00, %601 ]
  %629 = phi float [ 0.000000e+00, %116 ], [ %554, %601 ]
  %630 = phi float [ 0.000000e+00, %116 ], [ %557, %601 ]
  %631 = phi float [ 0.000000e+00, %116 ], [ %617, %601 ]
  %632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %633 = extractvalue %dx.types.CBufRet.f32 %632, 0
  %634 = call float @dx.op.dot2.f32(i32 54, float %619, float %620, float %619, float %620)  ; Dot2(ax,ay,bx,by)
  %635 = fmul fast float %634, 0x3FE3333340000000
  %636 = fsub fast float 1.000000e+00, %635
  %637 = call float @dx.op.dot3.f32(i32 55, float %619, float %620, float %636, float %619, float %620, float %636)  ; Dot3(ax,ay,az,bx,by,bz)
  %638 = call float @dx.op.unary.f32(i32 25, float %637)  ; Rsqrt(value)
  %639 = fmul fast float %638, %619
  %640 = fmul fast float %638, %620
  %641 = fmul fast float %636, %638
  %642 = fmul fast float %641, %17
  %643 = fmul fast float %641, %18
  %644 = fmul fast float %641, %19
  %645 = fmul fast float %639, %13
  %646 = fmul fast float %639, %14
  %647 = fmul fast float %639, %15
  %648 = fadd fast float %642, %645
  %649 = fadd fast float %643, %646
  %650 = fadd fast float %644, %647
  %651 = fmul fast float %40, %640
  %652 = fmul fast float %41, %640
  %653 = fmul fast float %42, %640
  %654 = fadd fast float %648, %651
  %655 = fadd fast float %649, %652
  %656 = fadd fast float %650, %653
  %657 = call float @dx.op.dot3.f32(i32 55, float %654, float %655, float %656, float %654, float %655, float %656)  ; Dot3(ax,ay,az,bx,by,bz)
  %658 = call float @dx.op.unary.f32(i32 25, float %657)  ; Rsqrt(value)
  %659 = fmul fast float %654, %658
  %660 = fmul fast float %655, %658
  %661 = fmul fast float %656, %658
  %662 = call float @dx.op.unary.f32(i32 83, float %76)  ; DerivCoarseX(value)
  %663 = call float @dx.op.unary.f32(i32 83, float %77)  ; DerivCoarseX(value)
  %664 = call float @dx.op.unary.f32(i32 83, float %78)  ; DerivCoarseX(value)
  %665 = call float @dx.op.unary.f32(i32 84, float %76)  ; DerivCoarseY(value)
  %666 = call float @dx.op.unary.f32(i32 84, float %77)  ; DerivCoarseY(value)
  %667 = call float @dx.op.unary.f32(i32 84, float %78)  ; DerivCoarseY(value)
  %668 = fadd fast float %662, %76
  %669 = fadd fast float %663, %77
  %670 = fadd fast float %664, %78
  %671 = fadd fast float %665, %76
  %672 = fadd fast float %666, %77
  %673 = fadd fast float %667, %78
  %674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %675 = extractvalue %dx.types.CBufRet.f32 %674, 0
  %676 = extractvalue %dx.types.CBufRet.f32 %674, 1
  %677 = extractvalue %dx.types.CBufRet.f32 %674, 2
  %678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %679 = extractvalue %dx.types.CBufRet.f32 %678, 2
  %680 = extractvalue %dx.types.CBufRet.f32 %678, 3
  %681 = fmul fast float %675, %29
  %682 = fmul fast float %681, %679
  %683 = fmul fast float %676, %30
  %684 = fmul fast float %683, %680
  %685 = fptoui float %682 to i32
  %686 = fptoui float %684 to i32
  %687 = fadd fast float %675, -1.000000e+00
  %688 = fadd fast float %676, -1.000000e+00
  %689 = fptoui float %687 to i32
  %690 = fptoui float %688 to i32
  %691 = call i32 @dx.op.binary.i32(i32 40, i32 %685, i32 %689)  ; UMin(a,b)
  %692 = call i32 @dx.op.binary.i32(i32 40, i32 %686, i32 %690)  ; UMin(a,b)
  %693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %694 = extractvalue %dx.types.CBufRet.f32 %693, 2
  %695 = extractvalue %dx.types.CBufRet.f32 %693, 3
  %696 = fmul fast float %694, %24
  %697 = fsub fast float %696, %695
  %698 = fadd fast float %677, -1.000000e+00
  %699 = call float @dx.op.binary.f32(i32 36, float %697, float %698)  ; FMin(a,b)
  %700 = fptoui float %699 to i32
  %701 = fptoui float %675 to i32
  %702 = fptoui float %676 to i32
  %703 = mul i32 %700, %702
  %704 = add i32 %703, %692
  %705 = mul i32 %704, %701
  %706 = add i32 %705, %691
  %707 = shl i32 %706, 2
  %708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %707, i32 undef)  ; BufferLoad(srv,index,wot)
  %709 = extractvalue %dx.types.ResRet.i32 %708, 0
  %710 = and i32 %709, 1023
  %711 = lshr i32 %709, 10
  %712 = icmp eq i32 %710, 0
  br i1 %712, label %1130, label %713

; <label>:713                                     ; preds = %618
  %714 = and i32 %709, 1023
  br label %715

; <label>:715                                     ; preds = %839, %713
  %716 = phi float [ %840, %839 ], [ 0.000000e+00, %713 ]
  %717 = phi float [ %841, %839 ], [ %633, %713 ]
  %718 = phi float [ %842, %839 ], [ %631, %713 ]
  %719 = phi float [ %843, %839 ], [ %624, %713 ]
  %720 = phi float [ %844, %839 ], [ %625, %713 ]
  %721 = phi float [ %845, %839 ], [ %626, %713 ]
  %722 = phi float [ %846, %839 ], [ %659, %713 ]
  %723 = phi float [ %847, %839 ], [ %660, %713 ]
  %724 = phi float [ %848, %839 ], [ %661, %713 ]
  %725 = phi float [ %849, %839 ], [ %630, %713 ]
  %726 = phi float [ %850, %839 ], [ %629, %713 ]
  %727 = phi float [ %851, %839 ], [ 0.000000e+00, %713 ]
  %728 = phi float [ %852, %839 ], [ %627, %713 ]
  %729 = phi float [ %853, %839 ], [ %621, %713 ]
  %730 = phi float [ %854, %839 ], [ %622, %713 ]
  %731 = phi float [ %855, %839 ], [ %623, %713 ]
  %732 = phi i32 [ %789, %839 ], [ 0, %713 ]
  %733 = add nuw nsw i32 %732, %711
  %734 = shl i32 %733, 2
  %735 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %734, i32 undef)  ; BufferLoad(srv,index,wot)
  %736 = extractvalue %dx.types.ResRet.i32 %735, 0
  %737 = shl i32 %736, 8
  %738 = or i32 %737, 48
  %739 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %738, i32 undef)  ; BufferLoad(srv,index,wot)
  %740 = extractvalue %dx.types.ResRet.f32 %739, 0
  %741 = extractvalue %dx.types.ResRet.f32 %739, 1
  %742 = extractvalue %dx.types.ResRet.f32 %739, 2
  %743 = extractvalue %dx.types.ResRet.f32 %739, 3
  %744 = or i32 %737, 64
  %745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %744, i32 undef)  ; BufferLoad(srv,index,wot)
  %746 = extractvalue %dx.types.ResRet.i32 %745, 0
  %747 = extractvalue %dx.types.ResRet.i32 %745, 1
  %748 = or i32 %737, 80
  %749 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %748, i32 undef)  ; BufferLoad(srv,index,wot)
  %750 = extractvalue %dx.types.ResRet.f32 %749, 2
  %751 = extractvalue %dx.types.ResRet.f32 %749, 3
  %752 = or i32 %737, 96
  %753 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %752, i32 undef)  ; BufferLoad(srv,index,wot)
  %754 = extractvalue %dx.types.ResRet.f32 %753, 0
  %755 = extractvalue %dx.types.ResRet.f32 %753, 1
  %756 = extractvalue %dx.types.ResRet.f32 %753, 2
  %757 = extractvalue %dx.types.ResRet.f32 %753, 3
  %758 = or i32 %737, 112
  %759 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %758, i32 undef)  ; BufferLoad(srv,index,wot)
  %760 = extractvalue %dx.types.ResRet.f32 %759, 2
  %761 = or i32 %737, 128
  %762 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %761, i32 undef)  ; BufferLoad(srv,index,wot)
  %763 = extractvalue %dx.types.ResRet.f32 %762, 0
  %764 = extractvalue %dx.types.ResRet.f32 %762, 1
  %765 = extractvalue %dx.types.ResRet.f32 %762, 2
  %766 = extractvalue %dx.types.ResRet.f32 %762, 3
  %767 = or i32 %737, 144
  %768 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %767, i32 undef)  ; BufferLoad(srv,index,wot)
  %769 = extractvalue %dx.types.ResRet.f32 %768, 0
  %770 = extractvalue %dx.types.ResRet.f32 %768, 1
  %771 = extractvalue %dx.types.ResRet.f32 %768, 2
  %772 = extractvalue %dx.types.ResRet.f32 %768, 3
  %773 = or i32 %737, 160
  %774 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %773, i32 undef)  ; BufferLoad(srv,index,wot)
  %775 = extractvalue %dx.types.ResRet.f32 %774, 0
  %776 = extractvalue %dx.types.ResRet.f32 %774, 1
  %777 = extractvalue %dx.types.ResRet.f32 %774, 2
  %778 = extractvalue %dx.types.ResRet.f32 %774, 3
  %779 = or i32 %737, 192
  %780 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %779, i32 undef)  ; BufferLoad(srv,index,wot)
  %781 = extractvalue %dx.types.ResRet.i32 %780, 0
  %782 = or i32 %737, 208
  %783 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %782, i32 undef)  ; BufferLoad(srv,index,wot)
  %784 = extractvalue %dx.types.ResRet.f32 %783, 0
  %785 = or i32 %737, 248
  %786 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %785, i32 undef)  ; BufferLoad(srv,index,wot)
  %787 = extractvalue %dx.types.ResRet.f32 %786, 0
  %788 = extractvalue %dx.types.ResRet.f32 %786, 1
  %789 = add nuw nsw i32 %732, 1
  %790 = bitcast float %743 to i32
  %791 = and i32 %790, 2560
  %792 = icmp eq i32 %791, 0
  %793 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %737, i32 undef)  ; BufferLoad(srv,index,wot)
  %794 = extractvalue %dx.types.ResRet.f32 %793, 0
  %795 = extractvalue %dx.types.ResRet.f32 %793, 1
  %796 = extractvalue %dx.types.ResRet.f32 %793, 2
  %797 = extractvalue %dx.types.ResRet.f32 %793, 3
  %798 = call float @dx.op.dot4.f32(i32 56, float %794, float %795, float %796, float %797, float %76, float %77, float %78, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %799 = or i32 %737, 16
  %800 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %799, i32 undef)  ; BufferLoad(srv,index,wot)
  %801 = extractvalue %dx.types.ResRet.f32 %800, 0
  %802 = extractvalue %dx.types.ResRet.f32 %800, 1
  %803 = extractvalue %dx.types.ResRet.f32 %800, 2
  %804 = extractvalue %dx.types.ResRet.f32 %800, 3
  %805 = call float @dx.op.dot4.f32(i32 56, float %801, float %802, float %803, float %804, float %76, float %77, float %78, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %806 = or i32 %737, 32
  %807 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %806, i32 undef)  ; BufferLoad(srv,index,wot)
  %808 = extractvalue %dx.types.ResRet.f32 %807, 0
  %809 = extractvalue %dx.types.ResRet.f32 %807, 1
  %810 = extractvalue %dx.types.ResRet.f32 %807, 2
  %811 = extractvalue %dx.types.ResRet.f32 %807, 3
  %812 = call float @dx.op.dot4.f32(i32 56, float %808, float %809, float %810, float %811, float %76, float %77, float %78, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %813 = call float @dx.op.unary.f32(i32 27, float %798)  ; Round_ni(value)
  %814 = call float @dx.op.unary.f32(i32 6, float %813)  ; FAbs(value)
  %815 = call float @dx.op.unary.f32(i32 27, float %805)  ; Round_ni(value)
  %816 = call float @dx.op.unary.f32(i32 6, float %815)  ; FAbs(value)
  %817 = call float @dx.op.unary.f32(i32 6, float %812)  ; FAbs(value)
  %818 = call float @dx.op.unary.f32(i32 27, float %817)  ; Round_ni(value)
  %819 = fadd fast float %816, %814
  %820 = fadd fast float %819, %818
  %821 = fcmp fast oeq float %820, 0.000000e+00
  %822 = call float @dx.op.dot4.f32(i32 56, float %794, float %795, float %796, float %797, float %668, float %669, float %670, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %823 = call float @dx.op.dot4.f32(i32 56, float %801, float %802, float %803, float %804, float %668, float %669, float %670, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %824 = call float @dx.op.dot4.f32(i32 56, float %794, float %795, float %796, float %797, float %671, float %672, float %673, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %825 = call float @dx.op.dot4.f32(i32 56, float %801, float %802, float %803, float %804, float %671, float %672, float %673, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %826 = fsub fast float %822, %798
  %827 = fsub fast float %824, %798
  %828 = fsub fast float %823, %805
  %829 = fsub fast float %825, %805
  %830 = call float @dx.op.dot3.f32(i32 55, float %740, float %741, float %742, float %17, float %18, float %19)  ; Dot3(ax,ay,az,bx,by,bz)
  %831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %832 = extractvalue %dx.types.CBufRet.f32 %831, 2
  %833 = fadd fast float %832, %830
  %834 = call float @dx.op.unary.f32(i32 7, float %833)  ; Saturate(value)
  %835 = extractvalue %dx.types.CBufRet.f32 %831, 0
  %836 = fcmp fast ogt float %834, %835
  %837 = and i1 %821, %836
  %838 = and i1 %792, %837
  br i1 %838, label %857, label %839

; <label>:839                                     ; preds = %1116, %938, %857, %715
  %840 = phi float [ %716, %857 ], [ %941, %938 ], [ %941, %1116 ], [ %716, %715 ]
  %841 = phi float [ %717, %857 ], [ %717, %938 ], [ %1091, %1116 ], [ %717, %715 ]
  %842 = phi float [ %718, %857 ], [ %718, %938 ], [ %1089, %1116 ], [ %718, %715 ]
  %843 = phi float [ %719, %857 ], [ %719, %938 ], [ %1126, %1116 ], [ %719, %715 ]
  %844 = phi float [ %720, %857 ], [ %720, %938 ], [ %1127, %1116 ], [ %720, %715 ]
  %845 = phi float [ %721, %857 ], [ %721, %938 ], [ %1128, %1116 ], [ %721, %715 ]
  %846 = phi float [ %722, %857 ], [ %722, %938 ], [ %1044, %1116 ], [ %722, %715 ]
  %847 = phi float [ %723, %857 ], [ %723, %938 ], [ %1045, %1116 ], [ %723, %715 ]
  %848 = phi float [ %724, %857 ], [ %724, %938 ], [ %1046, %1116 ], [ %724, %715 ]
  %849 = phi float [ %725, %857 ], [ %725, %938 ], [ %1069, %1116 ], [ %725, %715 ]
  %850 = phi float [ %726, %857 ], [ %726, %938 ], [ %1066, %1116 ], [ %726, %715 ]
  %851 = phi float [ %727, %857 ], [ %727, %938 ], [ %1063, %1116 ], [ %727, %715 ]
  %852 = phi float [ %728, %857 ], [ %728, %938 ], [ %1061, %1116 ], [ %728, %715 ]
  %853 = phi float [ %729, %857 ], [ %729, %938 ], [ %1056, %1116 ], [ %729, %715 ]
  %854 = phi float [ %730, %857 ], [ %730, %938 ], [ %1057, %1116 ], [ %730, %715 ]
  %855 = phi float [ %731, %857 ], [ %731, %938 ], [ %1058, %1116 ], [ %731, %715 ]
  %856 = icmp eq i32 %789, %714
  br i1 %856, label %1129, label %715

; <label>:857                                     ; preds = %715
  %858 = extractvalue %dx.types.ResRet.f32 %759, 3
  %859 = extractvalue %dx.types.ResRet.f32 %759, 1
  %860 = extractvalue %dx.types.ResRet.f32 %759, 0
  %861 = extractvalue %dx.types.ResRet.f32 %749, 1
  %862 = extractvalue %dx.types.ResRet.f32 %749, 0
  %863 = extractvalue %dx.types.ResRet.i32 %745, 3
  %864 = extractvalue %dx.types.ResRet.i32 %745, 2
  %865 = add i32 %863, 0
  %866 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %865, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %867 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %868 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %866, %dx.types.Handle %867, float %798, float %805, float undef, float undef, i32 0, i32 0, i32 undef, float %826, float %828, float undef, float %827, float %829, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %869 = extractvalue %dx.types.ResRet.f32 %868, 0
  %870 = fmul fast float %869, %862
  %871 = fadd fast float %870, %861
  %872 = call float @dx.op.unary.f32(i32 7, float %871)  ; Saturate(value)
  %873 = fmul fast float %798, %754
  %874 = call float @dx.op.tertiary.f32(i32 46, float %755, float %805, float %873)  ; FMad(a,b,c)
  %875 = fadd fast float %874, %860
  %876 = fmul fast float %798, %756
  %877 = call float @dx.op.tertiary.f32(i32 46, float %757, float %805, float %876)  ; FMad(a,b,c)
  %878 = fadd fast float %877, %859
  %879 = fmul fast float %826, %754
  %880 = call float @dx.op.tertiary.f32(i32 46, float %755, float %828, float %879)  ; FMad(a,b,c)
  %881 = fmul fast float %826, %756
  %882 = call float @dx.op.tertiary.f32(i32 46, float %757, float %828, float %881)  ; FMad(a,b,c)
  %883 = fmul fast float %827, %754
  %884 = call float @dx.op.tertiary.f32(i32 46, float %755, float %829, float %883)  ; FMad(a,b,c)
  %885 = fmul fast float %827, %756
  %886 = call float @dx.op.tertiary.f32(i32 46, float %757, float %829, float %885)  ; FMad(a,b,c)
  %887 = add i32 %864, 0
  %888 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %887, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %889 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %888, %dx.types.Handle %867, float %875, float %878, float undef, float undef, i32 0, i32 0, i32 undef, float %880, float %882, float undef, float %884, float %886, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %890 = extractvalue %dx.types.ResRet.f32 %889, 0
  %891 = and i32 %790, 1024
  %892 = icmp ne i32 %891, 0
  %893 = fcmp fast ogt float %890, 0x3FE0101020000000
  %894 = uitofp i1 %893 to float
  %895 = select i1 %892, float %894, float %890
  %896 = and i32 %790, 8192
  %897 = icmp ne i32 %896, 0
  %898 = select i1 %897, float %858, float 1.000000e+00
  %899 = fmul fast float %798, 2.000000e+00
  %900 = fadd fast float %899, -1.000000e+00
  %901 = call float @dx.op.unary.f32(i32 6, float %900)  ; FAbs(value)
  %902 = fmul fast float %901, %787
  %903 = fsub fast float %902, %787
  %904 = call float @dx.op.unary.f32(i32 7, float %903)  ; Saturate(value)
  %905 = fmul fast float %805, 2.000000e+00
  %906 = fadd fast float %905, -1.000000e+00
  %907 = call float @dx.op.unary.f32(i32 6, float %906)  ; FAbs(value)
  %908 = fmul fast float %907, %788
  %909 = fsub fast float %908, %788
  %910 = call float @dx.op.unary.f32(i32 7, float %909)  ; Saturate(value)
  %911 = fmul fast float %817, %750
  %912 = fsub fast float %911, %750
  %913 = call float @dx.op.unary.f32(i32 7, float %912)  ; Saturate(value)
  %914 = fmul fast float %872, %898
  %915 = fmul fast float %914, %869
  %916 = fmul fast float %915, %904
  %917 = fmul fast float %916, %895
  %918 = fmul fast float %917, %910
  %919 = fmul fast float %918, %913
  %920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %921 = extractvalue %dx.types.CBufRet.f32 %920, 1
  %922 = extractvalue %dx.types.CBufRet.f32 %920, 0
  %923 = fsub fast float %834, %922
  %924 = fmul fast float %923, %921
  %925 = call float @dx.op.unary.f32(i32 7, float %924)  ; Saturate(value)
  %926 = fmul fast float %919, %751
  %927 = fadd fast float %919, %751
  %928 = fmul fast float %927, %760
  %929 = fsub fast float %928, %760
  %930 = call float @dx.op.unary.f32(i32 7, float %929)  ; Saturate(value)
  %931 = and i32 %790, 128
  %932 = icmp ne i32 %931, 0
  %933 = select i1 %932, float %930, float %926
  %934 = fmul fast float %933, %925
  %935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %936 = extractvalue %dx.types.CBufRet.f32 %935, 0
  %937 = fcmp fast ugt float %934, %936
  br i1 %937, label %938, label %839

; <label>:938                                     ; preds = %857
  %939 = select i1 %897, float %934, float 0.000000e+00
  %940 = fadd fast float %939, %716
  %941 = call float @dx.op.unary.f32(i32 7, float %940)  ; Saturate(value)
  br i1 %897, label %839, label %942

; <label>:942                                     ; preds = %938
  %943 = and i32 %790, 4
  %944 = and i32 %790, 8
  %945 = add i32 %746, 0
  %946 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %945, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %947 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %948 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %946, %dx.types.Handle %947, float %875, float %878, float undef, float undef, i32 0, i32 0, i32 undef, float %880, float %882, float undef, float %884, float %886, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %949 = extractvalue %dx.types.ResRet.f32 %948, 0
  %950 = extractvalue %dx.types.ResRet.f32 %948, 1
  %951 = extractvalue %dx.types.ResRet.f32 %948, 2
  %952 = extractvalue %dx.types.ResRet.f32 %948, 3
  %953 = bitcast float %772 to i32
  %954 = and i32 %953, 255
  %955 = uitofp i32 %954 to float
  %956 = lshr i32 %953, 8
  %957 = and i32 %956, 255
  %958 = uitofp i32 %957 to float
  %959 = fmul fast float %952, %955
  %960 = fadd fast float %959, %958
  %961 = fmul fast float %960, 0x3F70101000000000
  %962 = add i32 %747, 0
  %963 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %962, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %964 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %963, %dx.types.Handle %947, float %875, float %878, float undef, float undef, i32 0, i32 0, i32 undef, float %880, float %882, float undef, float %884, float %886, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %965 = extractvalue %dx.types.ResRet.f32 %964, 0
  %966 = extractvalue %dx.types.ResRet.f32 %964, 1
  %967 = extractvalue %dx.types.ResRet.f32 %964, 2
  %968 = extractvalue %dx.types.ResRet.f32 %964, 3
  %969 = bitcast float %766 to i32
  %970 = and i32 %969, 255
  %971 = uitofp i32 %970 to float
  %972 = lshr i32 %969, 8
  %973 = and i32 %972, 255
  %974 = uitofp i32 %973 to float
  %975 = lshr i32 %969, 16
  %976 = and i32 %975, 255
  %977 = uitofp i32 %976 to float
  %978 = fmul fast float %977, 0x3F70101000000000
  %979 = fmul fast float %965, %971
  %980 = fadd fast float %979, %974
  %981 = fmul fast float %980, 0x3F70101000000000
  %982 = fadd fast float %966, -5.000000e-01
  %983 = fadd fast float %968, -5.000000e-01
  %984 = fmul fast float %982, %978
  %985 = fmul fast float %983, %978
  %986 = fadd fast float %984, 5.000000e-01
  %987 = fadd fast float %985, 5.000000e-01
  %988 = fmul fast float %949, %775
  %989 = fmul fast float %950, %776
  %990 = fmul fast float %951, %777
  %991 = fmul fast float %986, 2.000000e+00
  %992 = fadd fast float %991, -1.000000e+00
  %993 = fmul fast float %987, 2.000000e+00
  %994 = fadd fast float %993, -1.000000e+00
  %995 = fadd fast float %992, %994
  %996 = fmul fast float %995, 5.000000e-01
  %997 = fsub fast float %992, %994
  %998 = fmul fast float %997, 5.000000e-01
  %999 = call float @dx.op.unary.f32(i32 6, float %996)  ; FAbs(value)
  %1000 = fsub fast float 1.000000e+00, %999
  %1001 = call float @dx.op.unary.f32(i32 6, float %998)  ; FAbs(value)
  %1002 = fsub fast float %1000, %1001
  %1003 = call float @dx.op.dot3.f32(i32 55, float %996, float %998, float %1002, float %996, float %998, float %1002)  ; Dot3(ax,ay,az,bx,by,bz)
  %1004 = call float @dx.op.unary.f32(i32 25, float %1003)  ; Rsqrt(value)
  %1005 = fmul fast float %996, %1004
  %1006 = fmul fast float %998, %1004
  %1007 = fmul fast float %1004, %1002
  %1008 = fmul fast float %1007, %740
  %1009 = fmul fast float %1007, %741
  %1010 = fmul fast float %1007, %742
  %1011 = fmul fast float %1005, %763
  %1012 = fmul fast float %1005, %764
  %1013 = fmul fast float %1005, %765
  %1014 = fadd fast float %1011, %1008
  %1015 = fadd fast float %1012, %1009
  %1016 = fadd fast float %1013, %1010
  %1017 = fmul fast float %1006, %769
  %1018 = fmul fast float %1006, %770
  %1019 = fmul fast float %1006, %771
  %1020 = fadd fast float %1014, %1017
  %1021 = fadd fast float %1015, %1018
  %1022 = fadd fast float %1016, %1019
  %1023 = call float @dx.op.dot3.f32(i32 55, float %1020, float %1021, float %1022, float %1020, float %1021, float %1022)  ; Dot3(ax,ay,az,bx,by,bz)
  %1024 = call float @dx.op.unary.f32(i32 25, float %1023)  ; Rsqrt(value)
  %1025 = fmul fast float %1020, %1024
  %1026 = fmul fast float %1021, %1024
  %1027 = fmul fast float %1022, %1024
  %1028 = icmp ne i32 %944, 0
  %1029 = select i1 %1028, float 1.000000e+00, float 0.000000e+00
  %1030 = fmul fast float %934, %1029
  %1031 = and i32 %790, 1
  %1032 = icmp eq i32 %1031, 0
  br i1 %1032, label %1033, label %1037

; <label>:1033                                    ; preds = %942
  %1034 = fsub fast float %1025, %722
  %1035 = fsub fast float %1026, %723
  %1036 = fsub fast float %1027, %724
  br label %1037

; <label>:1037                                    ; preds = %1033, %942
  %1038 = phi float [ %1034, %1033 ], [ %1025, %942 ]
  %1039 = phi float [ %1035, %1033 ], [ %1026, %942 ]
  %1040 = phi float [ %1036, %1033 ], [ %1027, %942 ]
  %1041 = fmul float %1040, %1030
  %1042 = fmul float %1039, %1030
  %1043 = fmul float %1038, %1030
  %1044 = fadd fast float %1043, %722
  %1045 = fadd fast float %1042, %723
  %1046 = fadd fast float %1041, %724
  %1047 = icmp ne i32 %943, 0
  %1048 = select i1 %1047, float 1.000000e+00, float 0.000000e+00
  %1049 = fmul fast float %934, %1048
  %1050 = fsub fast float %988, %729
  %1051 = fsub fast float %989, %730
  %1052 = fsub fast float %990, %731
  %1053 = fmul fast float %1050, %1049
  %1054 = fmul fast float %1051, %1049
  %1055 = fmul fast float %1052, %1049
  %1056 = fadd fast float %1053, %729
  %1057 = fadd fast float %1054, %730
  %1058 = fadd fast float %1055, %731
  %1059 = fsub fast float %961, %728
  %1060 = fmul fast float %1059, %1049
  %1061 = fadd fast float %1060, %728
  %1062 = fadd fast float %934, %727
  %1063 = call float @dx.op.unary.f32(i32 7, float %1062)  ; Saturate(value)
  %1064 = fsub fast float %981, %726
  %1065 = fmul fast float %1064, %1030
  %1066 = fadd fast float %1065, %726
  %1067 = fsub fast float %967, %725
  %1068 = fmul fast float %1067, %1030
  %1069 = fadd fast float %1068, %725
  %1070 = call float @dx.op.dot3.f32(i32 55, float %988, float %989, float %990, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1072 = extractvalue %dx.types.CBufRet.f32 %1071, 0
  %1073 = extractvalue %dx.types.CBufRet.f32 %1071, 1
  %1074 = fmul fast float %1073, %1070
  %1075 = fadd fast float %1074, %1072
  %1076 = call float @dx.op.unary.f32(i32 7, float %1075)  ; Saturate(value)
  %1077 = bitcast float %778 to i32
  %1078 = and i32 %1077, 65535
  %1079 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1078)  ; LegacyF16ToF32(value)
  %1080 = lshr i32 %1077, 16
  %1081 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1080)  ; LegacyF16ToF32(value)
  %1082 = fcmp fast oge float %1079, 0.000000e+00
  %1083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1084 = extractvalue %dx.types.CBufRet.f32 %1083, 0
  %1085 = select i1 %1082, float %1079, float %1084
  %1086 = fadd fast float %1085, %1081
  %1087 = fsub fast float %1076, %718
  %1088 = fmul fast float %1087, %934
  %1089 = fadd fast float %1088, %718
  %1090 = fmul fast float %1086, %934
  %1091 = call float @dx.op.binary.f32(i32 35, float %717, float %1090)  ; FMax(a,b)
  %1092 = and i32 %790, 16
  %1093 = icmp eq i32 %1092, 0
  br i1 %1093, label %1116, label %1094

; <label>:1094                                    ; preds = %1037
  %1095 = bitcast float %784 to i32
  %1096 = add i32 %781, 0
  %1097 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1096, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1098 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1097, %dx.types.Handle %947, float %875, float %878, float undef, float undef, i32 0, i32 0, i32 undef, float %880, float %882, float undef, float %884, float %886, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1099 = extractvalue %dx.types.ResRet.f32 %1098, 0
  %1100 = extractvalue %dx.types.ResRet.f32 %1098, 1
  %1101 = extractvalue %dx.types.ResRet.f32 %1098, 2
  %1102 = and i32 %1095, 65535
  %1103 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1102)  ; LegacyF16ToF32(value)
  %1104 = fmul fast float %1099, %775
  %1105 = fmul fast float %1100, %776
  %1106 = fmul fast float %1101, %777
  %1107 = and i32 %790, 16384
  %1108 = icmp ne i32 %1107, 0
  %1109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1110 = extractvalue %dx.types.CBufRet.f32 %1109, 0
  %1111 = select i1 %1108, float %1110, float 1.000000e+00
  %1112 = fmul fast float %1111, %1103
  %1113 = fmul fast float %1104, %1112
  %1114 = fmul fast float %1105, %1112
  %1115 = fmul fast float %1106, %1112
  br label %1116

; <label>:1116                                    ; preds = %1094, %1037
  %1117 = phi float [ %1113, %1094 ], [ 0.000000e+00, %1037 ]
  %1118 = phi float [ %1114, %1094 ], [ 0.000000e+00, %1037 ]
  %1119 = phi float [ %1115, %1094 ], [ 0.000000e+00, %1037 ]
  %1120 = fsub fast float %1117, %719
  %1121 = fsub fast float %1118, %720
  %1122 = fsub fast float %1119, %721
  %1123 = fmul fast float %1120, %934
  %1124 = fmul fast float %1121, %934
  %1125 = fmul fast float %1122, %934
  %1126 = fadd fast float %1123, %719
  %1127 = fadd fast float %1124, %720
  %1128 = fadd fast float %1125, %721
  br label %839

; <label>:1129                                    ; preds = %839
  br label %1130

; <label>:1130                                    ; preds = %1129, %618
  %1131 = phi float [ 0.000000e+00, %618 ], [ %840, %1129 ]
  %1132 = phi float [ %633, %618 ], [ %841, %1129 ]
  %1133 = phi float [ %631, %618 ], [ %842, %1129 ]
  %1134 = phi float [ %624, %618 ], [ %843, %1129 ]
  %1135 = phi float [ %625, %618 ], [ %844, %1129 ]
  %1136 = phi float [ %626, %618 ], [ %845, %1129 ]
  %1137 = phi float [ %659, %618 ], [ %846, %1129 ]
  %1138 = phi float [ %660, %618 ], [ %847, %1129 ]
  %1139 = phi float [ %661, %618 ], [ %848, %1129 ]
  %1140 = phi float [ %630, %618 ], [ %849, %1129 ]
  %1141 = phi float [ %629, %618 ], [ %850, %1129 ]
  %1142 = phi float [ 0.000000e+00, %618 ], [ %851, %1129 ]
  %1143 = phi float [ %627, %618 ], [ %852, %1129 ]
  %1144 = phi float [ %621, %618 ], [ %853, %1129 ]
  %1145 = phi float [ %622, %618 ], [ %854, %1129 ]
  %1146 = phi float [ %623, %618 ], [ %855, %1129 ]
  %1147 = call float @dx.op.dot3.f32(i32 55, float %1137, float %1138, float %1139, float %1137, float %1138, float %1139)  ; Dot3(ax,ay,az,bx,by,bz)
  %1148 = call float @dx.op.unary.f32(i32 25, float %1147)  ; Rsqrt(value)
  %1149 = fmul fast float %1148, %1137
  %1150 = fmul fast float %1148, %1138
  %1151 = fmul fast float %1148, %1139
  %1152 = fadd fast float %1142, %628
  %1153 = call float @dx.op.unary.f32(i32 7, float %1152)  ; Saturate(value)
  %1154 = call float @dx.op.dot3.f32(i32 55, float %1149, float %1150, float %1151, float %1149, float %1150, float %1151)  ; Dot3(ax,ay,az,bx,by,bz)
  %1155 = call float @dx.op.unary.f32(i32 25, float %1154)  ; Rsqrt(value)
  %1156 = fmul fast float %1155, %1149
  %1157 = fmul fast float %1155, %1150
  %1158 = fmul fast float %1155, %1151
  %1159 = fadd fast float %1143, 0xBFB99999A0000000
  %1160 = call float @dx.op.unary.f32(i32 7, float %1159)  ; Saturate(value)
  %1161 = fmul fast float %1160, 0x3FF1C71C80000000
  %1162 = fsub fast float 1.000000e+00, %1161
  %1163 = call float @dx.op.unary.f32(i32 7, float %1162)  ; Saturate(value)
  %1164 = fmul fast float %1163, %1144
  %1165 = fmul fast float %1163, %1145
  %1166 = fmul fast float %1163, %1146
  %1167 = call float @dx.op.unary.f32(i32 7, float %1164)  ; Saturate(value)
  %1168 = call float @dx.op.unary.f32(i32 7, float %1165)  ; Saturate(value)
  %1169 = call float @dx.op.unary.f32(i32 7, float %1166)  ; Saturate(value)
  %1170 = call float @dx.op.unary.f32(i32 7, float %1141)  ; Saturate(value)
  %1171 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1172 = extractvalue %dx.types.CBufRet.i32 %1171, 3
  %1173 = and i32 %1172, 8
  %1174 = icmp ne i32 %1173, 0
  %1175 = call float @dx.op.binary.f32(i32 35, float %1167, float %1144)  ; FMax(a,b)
  %1176 = call float @dx.op.binary.f32(i32 35, float %1168, float %1144)  ; FMax(a,b)
  %1177 = call float @dx.op.binary.f32(i32 35, float %1169, float %1144)  ; FMax(a,b)
  %1178 = call float @dx.op.dot3.f32(i32 55, float %1167, float %1168, float %1169, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1179 = select i1 %117, float %1144, float %1167
  %1180 = select i1 %117, float %1178, float %1168
  %1181 = select i1 %117, float 1.000000e+00, float %1169
  %1182 = select i1 %1174, float %1175, float %1179
  %1183 = select i1 %1174, float %1176, float %1180
  %1184 = select i1 %1174, float %1177, float %1181
  %1185 = and i32 %93, 3
  %1186 = select i1 %87, i32 %1185, i32 0
  %1187 = icmp eq i32 %1186, 1
  br i1 %1187, label %1188, label %1264

; <label>:1188                                    ; preds = %1130
  %1189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1190 = extractvalue %dx.types.CBufRet.f32 %1189, 0
  %1191 = extractvalue %dx.types.CBufRet.f32 %1189, 1
  %1192 = fadd fast float %1190, %76
  %1193 = fadd fast float %1191, %77
  %1194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1195 = extractvalue %dx.types.CBufRet.f32 %1194, 0
  %1196 = extractvalue %dx.types.CBufRet.f32 %1194, 1
  %1197 = fsub fast float %1192, %1195
  %1198 = fsub fast float %1193, %1196
  %1199 = fmul fast float %1197, %1197
  %1200 = fmul fast float %1198, %1198
  %1201 = fadd fast float %1199, %1200
  %1202 = call float @dx.op.unary.f32(i32 24, float %1201)  ; Sqrt(value)
  %1203 = extractvalue %dx.types.CBufRet.f32 %1194, 2
  %1204 = fcmp fast olt float %1202, %1203
  br i1 %1204, label %1205, label %1258

; <label>:1205                                    ; preds = %1188
  %1206 = extractvalue %dx.types.CBufRet.f32 %1189, 2
  %1207 = fadd fast float %1206, %78
  %1208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1209 = extractvalue %dx.types.CBufRet.f32 %1208, 0
  %1210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1211 = extractvalue %dx.types.CBufRet.f32 %1210, 0
  %1212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1213 = extractvalue %dx.types.CBufRet.f32 %1212, 0
  %1214 = extractvalue %dx.types.CBufRet.f32 %1208, 1
  %1215 = extractvalue %dx.types.CBufRet.f32 %1210, 1
  %1216 = extractvalue %dx.types.CBufRet.f32 %1212, 1
  %1217 = extractvalue %dx.types.CBufRet.f32 %1208, 3
  %1218 = extractvalue %dx.types.CBufRet.f32 %1210, 3
  %1219 = extractvalue %dx.types.CBufRet.f32 %1212, 3
  %1220 = fadd fast float %1217, %1192
  %1221 = fadd fast float %1218, %1193
  %1222 = fadd fast float %1207, %1219
  %1223 = fmul fast float %1220, %1209
  %1224 = call float @dx.op.tertiary.f32(i32 46, float %1221, float %1211, float %1223)  ; FMad(a,b,c)
  %1225 = call float @dx.op.tertiary.f32(i32 46, float %1222, float %1213, float %1224)  ; FMad(a,b,c)
  %1226 = fmul fast float %1220, %1214
  %1227 = call float @dx.op.tertiary.f32(i32 46, float %1221, float %1215, float %1226)  ; FMad(a,b,c)
  %1228 = call float @dx.op.tertiary.f32(i32 46, float %1222, float %1216, float %1227)  ; FMad(a,b,c)
  %1229 = fsub fast float %1225, %1217
  %1230 = fsub fast float %1228, %1218
  %1231 = fsub fast float %1229, %1195
  %1232 = fadd fast float %1231, %1203
  %1233 = fsub fast float %1230, %1196
  %1234 = fadd fast float %1233, %1203
  %1235 = extractvalue %dx.types.CBufRet.f32 %1194, 3
  %1236 = fmul fast float %1232, %1235
  %1237 = fmul fast float %1234, %1235
  %1238 = call float @dx.op.unary.f32(i32 7, float %1236)  ; Saturate(value)
  %1239 = call float @dx.op.unary.f32(i32 7, float %1237)  ; Saturate(value)
  %1240 = fsub fast float 1.000000e+00, %1238
  %1241 = fsub fast float 1.000000e+00, %1239
  %1242 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %8, float %1240, float %1241, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1243 = extractvalue %dx.types.ResRet.f32 %1242, 0
  %1244 = fcmp fast ugt float %1243, 0.000000e+00
  br i1 %1244, label %1245, label %1258

; <label>:1245                                    ; preds = %1205
  %1246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1247 = extractvalue %dx.types.CBufRet.f32 %1246, 2
  %1248 = fmul fast float %1247, %1243
  %1249 = extractvalue %dx.types.CBufRet.f32 %1246, 3
  %1250 = fadd fast float %1249, %1248
  %1251 = extractvalue %dx.types.CBufRet.f32 %1212, 2
  %1252 = fadd fast float %1250, %1219
  %1253 = fmul fast float %1225, %1213
  %1254 = call float @dx.op.tertiary.f32(i32 46, float %1228, float %1216, float %1253)  ; FMad(a,b,c)
  %1255 = call float @dx.op.tertiary.f32(i32 46, float %1252, float %1251, float %1254)  ; FMad(a,b,c)
  %1256 = fsub fast float %1255, %1219
  %1257 = fsub fast float %1256, %1206
  br label %1258

; <label>:1258                                    ; preds = %1245, %1205, %1188
  %1259 = phi i1 [ true, %1245 ], [ false, %1205 ], [ false, %1188 ]
  %1260 = phi float [ %1257, %1245 ], [ -1.310720e+05, %1205 ], [ -1.310720e+05, %1188 ]
  %1261 = fsub fast float %1260, %78
  %1262 = call float @dx.op.unary.f32(i32 7, float %1261)  ; Saturate(value)
  %1263 = select i1 %1259, float %1262, float 1.000000e+00
  br label %1264

; <label>:1264                                    ; preds = %1258, %1130
  %1265 = phi float [ %1263, %1258 ], [ 0.000000e+00, %1130 ]
  %1266 = icmp eq i32 %1186, 3
  %1267 = select i1 %1266, float 1.000000e+00, float %1265
  %1268 = call float @dx.op.binary.f32(i32 35, float %1131, float %1267)  ; FMax(a,b)
  %1269 = call float @dx.op.unary.f32(i32 7, float %1268)  ; Saturate(value)
  %1270 = fcmp fast une float %1269, 0.000000e+00
  br i1 %1270, label %1271, label %1354

; <label>:1271                                    ; preds = %1264
  %1272 = fmul fast float %1269, 2.500000e+00
  %1273 = call float @dx.op.unary.f32(i32 7, float %1272)  ; Saturate(value)
  %1274 = fmul fast float %1269, 0x4013FFFFE0000000
  %1275 = fadd fast float %1274, 0xBFFFFFFFE0000000
  %1276 = call float @dx.op.unary.f32(i32 7, float %1275)  ; Saturate(value)
  %1277 = fmul fast float %1269, 0x4004000020000000
  %1278 = fadd fast float %1277, 0xBFF8000040000000
  %1279 = call float @dx.op.unary.f32(i32 7, float %1278)  ; Saturate(value)
  %1280 = call float @dx.op.unary.f32(i32 7, float %1273)  ; Saturate(value)
  %1281 = fmul fast float %1159, 1.000000e+01
  %1282 = call float @dx.op.unary.f32(i32 7, float %1281)  ; Saturate(value)
  %1283 = fmul fast float %1282, 2.000000e+00
  %1284 = fsub fast float 3.000000e+00, %1283
  %1285 = fmul fast float %1282, %1282
  %1286 = fmul fast float %1285, %1284
  %1287 = fsub fast float 1.000000e+00, %1286
  %1288 = fsub fast float 0x3FE3333340000000, %1170
  %1289 = fmul fast float %1288, 0x400AAAAAA0000000
  %1290 = call float @dx.op.unary.f32(i32 7, float %1289)  ; Saturate(value)
  %1291 = fmul fast float %1287, %1290
  %1292 = fmul fast float %1182, 0x3FEA2B8620000000
  %1293 = fmul fast float %1183, 0x3FEA2B8620000000
  %1294 = fmul fast float %1184, 0x3FEA2B8620000000
  %1295 = fadd fast float %1292, 0x3FC81DFBA0000000
  %1296 = fmul fast float %1295, %1182
  %1297 = fadd fast float %1296, 0x3F910E6020000000
  %1298 = fadd fast float %1293, 0x3FC81DFBA0000000
  %1299 = fmul fast float %1298, %1183
  %1300 = fadd fast float %1299, 0x3F910E6020000000
  %1301 = fadd fast float %1294, 0x3FC81DFBA0000000
  %1302 = fmul fast float %1301, %1184
  %1303 = fadd fast float %1302, 0x3F910E6020000000
  %1304 = call float @dx.op.unary.f32(i32 7, float %1297)  ; Saturate(value)
  %1305 = call float @dx.op.unary.f32(i32 7, float %1300)  ; Saturate(value)
  %1306 = call float @dx.op.unary.f32(i32 7, float %1303)  ; Saturate(value)
  %1307 = fsub fast float %1304, %1182
  %1308 = fsub fast float %1305, %1183
  %1309 = fsub fast float %1306, %1184
  %1310 = fmul fast float %1307, %1280
  %1311 = fmul fast float %1310, %1291
  %1312 = fmul fast float %1308, %1280
  %1313 = fmul fast float %1312, %1291
  %1314 = fmul fast float %1309, %1280
  %1315 = fmul fast float %1314, %1291
  %1316 = fadd fast float %1311, %1182
  %1317 = fadd fast float %1313, %1183
  %1318 = fadd fast float %1315, %1184
  %1319 = fmul fast float %1140, %1140
  %1320 = fmul fast float %1319, %1319
  %1321 = fadd fast float %1276, 1.000000e+00
  %1322 = fsub fast float %1321, %1291
  %1323 = call float @dx.op.unary.f32(i32 7, float %1322)  ; Saturate(value)
  %1324 = call float @dx.op.dot3.f32(i32 55, float %17, float %18, float %19, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1325 = call float @dx.op.unary.f32(i32 7, float %1324)  ; Saturate(value)
  %1326 = fsub fast float 1.000000e+00, %1320
  %1327 = call float @dx.op.binary.f32(i32 36, float %1323, float %1326)  ; FMin(a,b)
  %1328 = call float @dx.op.unary.f32(i32 7, float %1279)  ; Saturate(value)
  %1329 = call float @dx.op.binary.f32(i32 35, float %1327, float %1328)  ; FMax(a,b)
  %1330 = fadd fast float %1325, 0xBFE4CCCCC0000000
  %1331 = fmul fast float %1330, 0x4006DB6DA0000000
  %1332 = call float @dx.op.unary.f32(i32 7, float %1331)  ; Saturate(value)
  %1333 = fmul fast float %1332, 2.000000e+00
  %1334 = fsub fast float 3.000000e+00, %1333
  %1335 = fsub fast float 1.000000e+00, %1267
  %1336 = fmul fast float %1329, %1335
  %1337 = fmul fast float %1332, %1332
  %1338 = fmul fast float %1337, %1336
  %1339 = fmul fast float %1338, %1334
  %1340 = fsub fast float %17, %1156
  %1341 = fsub fast float %18, %1157
  %1342 = fsub fast float %19, %1158
  %1343 = fmul fast float %1339, %1340
  %1344 = fmul fast float %1339, %1341
  %1345 = fmul fast float %1339, %1342
  %1346 = fadd fast float %1343, %1156
  %1347 = fadd fast float %1344, %1157
  %1348 = fadd fast float %1345, %1158
  %1349 = call float @dx.op.dot3.f32(i32 55, float %1346, float %1347, float %1348, float %1346, float %1347, float %1348)  ; Dot3(ax,ay,az,bx,by,bz)
  %1350 = call float @dx.op.unary.f32(i32 25, float %1349)  ; Rsqrt(value)
  %1351 = fmul fast float %1346, %1350
  %1352 = fmul fast float %1347, %1350
  %1353 = fmul fast float %1348, %1350
  br label %1354

; <label>:1354                                    ; preds = %1271, %1264
  %1355 = phi float [ %1351, %1271 ], [ %1156, %1264 ]
  %1356 = phi float [ %1352, %1271 ], [ %1157, %1264 ]
  %1357 = phi float [ %1353, %1271 ], [ %1158, %1264 ]
  %1358 = phi float [ %1316, %1271 ], [ %1182, %1264 ]
  %1359 = phi float [ %1317, %1271 ], [ %1183, %1264 ]
  %1360 = phi float [ %1318, %1271 ], [ %1184, %1264 ]
  %1361 = fmul fast float %1153, %1135
  %1362 = fmul fast float %1153, %1136
  %1363 = call float @dx.op.dot3.f32(i32 55, float %76, float %77, float %78, float %76, float %77, float %78)  ; Dot3(ax,ay,az,bx,by,bz)
  %1364 = call float @dx.op.unary.f32(i32 25, float %1363)  ; Rsqrt(value)
  %1365 = call float @dx.op.unary.f32(i32 24, float %1358)  ; Sqrt(value)
  %1366 = call float @dx.op.unary.f32(i32 24, float %1359)  ; Sqrt(value)
  %1367 = call float @dx.op.unary.f32(i32 24, float %1360)  ; Sqrt(value)
  br i1 %117, label %1368, label %1394

; <label>:1368                                    ; preds = %1354
  %1369 = fmul fast float %1133, %1132
  %1370 = fsub fast float 1.000000e+00, %1133
  %1371 = call float @dx.op.unary.f32(i32 7, float %1370)  ; Saturate(value)
  %1372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1373 = extractvalue %dx.types.CBufRet.f32 %1372, 3
  %1374 = fmul fast float %1373, %1371
  %1375 = fadd fast float %1374, %1369
  %1376 = fmul fast float %76, %1364
  %1377 = fsub fast float -0.000000e+00, %1376
  %1378 = fmul fast float %77, %1364
  %1379 = fsub fast float -0.000000e+00, %1378
  %1380 = fmul fast float %78, %1364
  %1381 = fsub fast float -0.000000e+00, %1380
  %1382 = call float @dx.op.dot3.f32(i32 55, float %1355, float %1356, float %1357, float %1377, float %1379, float %1381)  ; Dot3(ax,ay,az,bx,by,bz)
  %1383 = call float @dx.op.unary.f32(i32 7, float %1382)  ; Saturate(value)
  %1384 = fsub fast float 1.000000e+00, %1383
  %1385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1386 = extractvalue %dx.types.CBufRet.f32 %1385, 0
  %1387 = fmul fast float %1386, %1384
  %1388 = fsub fast float %1375, %1387
  %1389 = extractvalue %dx.types.CBufRet.f32 %1372, 1
  %1390 = fsub fast float %1388, %1389
  %1391 = extractvalue %dx.types.CBufRet.f32 %1372, 2
  %1392 = fmul fast float %1390, %1391
  %1393 = call float @dx.op.unary.f32(i32 7, float %1392)  ; Saturate(value)
  br label %1404

; <label>:1394                                    ; preds = %1354
  %1395 = add i32 %12, 116
  %1396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1395, i32 undef)  ; BufferLoad(srv,index,wot)
  %1397 = extractvalue %dx.types.ResRet.i32 %1396, 0
  %1398 = and i32 %1397, 32
  %1399 = icmp eq i32 %1398, 0
  br i1 %1399, label %1404, label %1400

; <label>:1400                                    ; preds = %1394
  %1401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1402 = extractvalue %dx.types.CBufRet.f32 %1401, 0
  %1403 = fmul fast float %1402, 0x3FE99999A0000000
  br label %1404

; <label>:1404                                    ; preds = %1400, %1394, %1368
  %1405 = phi float [ 0.000000e+00, %1368 ], [ %1402, %1400 ], [ 0.000000e+00, %1394 ]
  %1406 = phi float [ %1393, %1368 ], [ 0.000000e+00, %1400 ], [ 0.000000e+00, %1394 ]
  %1407 = phi float [ 1.000000e+00, %1368 ], [ %1403, %1400 ], [ 0.000000e+00, %1394 ]
  %1408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1409 = extractvalue %dx.types.CBufRet.f32 %1408, 0
  %1410 = fmul fast float %1361, %1409
  %1411 = fmul fast float %1362, %1409
  %1412 = fadd fast float %1135, %1134
  %1413 = select i1 %117, float %1412, float %1134
  %1414 = fmul float %1413, %1153
  %1415 = fmul float %1414, %1409
  %1416 = select i1 %117, float 0.000000e+00, float %1410
  %1417 = select i1 %117, float 0.000000e+00, float %1411
  %1418 = fmul fast float %1405, %1365
  %1419 = fmul fast float %1406, %1366
  %1420 = fmul fast float %1407, %1367
  %1421 = fadd fast float %1415, %1418
  %1422 = fadd fast float %1416, %1419
  %1423 = fadd fast float %1417, %1420
  %1424 = select i1 %117, float %1406, float %1422
  %1425 = select i1 %117, float %1407, float %1423
  %1426 = call float @dx.op.binary.f32(i32 36, float %1421, float 3.225500e+04)  ; FMin(a,b)
  %1427 = call float @dx.op.binary.f32(i32 36, float %1424, float 3.225500e+04)  ; FMin(a,b)
  %1428 = call float @dx.op.binary.f32(i32 36, float %1425, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1426)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1427)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1428)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!23}
!dx.entryPoints = !{!24}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !16, !19}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!15 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!16 = !{!17, !18}
!17 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!18 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!19 = !{!20, !21, !22}
!20 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!21 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!22 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!23 = !{[24 x i32] [i32 22, i32 4, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 2, i32 2, i32 2, i32 2, i32 7, i32 0]}
!24 = !{void ()* @ps_main, !"ps_main", !25, !4, !43}
!25 = !{!26, !41, null}
!26 = !{!27, !30, !32, !33, !35, !37, !39, !40}
!27 = !{i32 0, !"SV_Position", i8 9, i8 3, !28, i8 4, i32 1, i8 4, i32 0, i8 0, !29}
!28 = !{i32 0}
!29 = !{i32 3, i32 11}
!30 = !{i32 1, !"TEXCOORDS", i8 9, i8 0, !28, i8 2, i32 1, i8 2, i32 1, i8 0, !31}
!31 = !{i32 3, i32 3}
!32 = !{i32 2, !"LMAPCOORDS", i8 9, i8 0, !28, i8 2, i32 1, i8 3, i32 2, i8 0, null}
!33 = !{i32 3, !"NORMAL", i8 9, i8 0, !28, i8 2, i32 1, i8 3, i32 3, i8 0, !34}
!34 = !{i32 3, i32 7}
!35 = !{i32 4, !"TANGENT", i8 9, i8 0, !28, i8 2, i32 1, i8 4, i32 4, i8 0, !36}
!36 = !{i32 3, i32 15}
!37 = !{i32 5, !"MATERIAL_DATA_OFFSET", i8 5, i8 0, !28, i8 1, i32 1, i8 1, i32 5, i8 0, !38}
!38 = !{i32 3, i32 1}
!39 = !{i32 6, !"TRANSIENT_INDEX", i8 5, i8 0, !28, i8 1, i32 1, i8 1, i32 5, i8 1, null}
!40 = !{i32 7, !"SV_SampleIndex", i8 5, i8 12, !28, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!41 = !{!42}
!42 = !{i32 0, !"SV_Target", i8 9, i8 16, !28, i8 0, i32 1, i8 4, i32 0, i8 0, !36}
!43 = !{i32 0, i64 24}

