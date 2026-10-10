;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy w
; COLOR                    0   xyzw        1     NONE   float   x   
; TEXCOORDS                0   xyzw        2     NONE   float   xy  
; NORMAL                   0   xyz         3     NONE   float   xyz 
; ENTITY_IDS               0   xy          4     NONE    uint   x   
; SV_IsFrontFace           0     z         4    FFACE    uint     z 
; TEXCOORD                 9   xy          5     NONE   float   xy  
; PACKED_TRI_DATA          0   xyzw        6     NONE    uint   x   
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
; shader hash: 8e228ebae40c92301f6098c555e00ab2
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
; NORMAL                   0                 linear       
; ENTITY_IDS               0        nointerpolation       
; TEXCOORD                 9                 linear       
; PACKED_TRI_DATA          0        nointerpolation       
; SV_IsFrontFace           0        nointerpolation       
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
;                                   texture     f32          2d      T1     t37,space2     1
;                                   texture    byte         r/o      T2     t37,space1     1
;                                   texture    byte         r/o      T3     t22,space1     1
;                                   texture     f32          2d      T4     t69,space2     1
;                                   texture     f32          2d      T5             t0     1
;                                   texture     f32          2d      T6     t57,space2     1
;                                   texture    byte         r/o      T7     t69,space1     1
;                                   texture     u32          2d      T8     t56,space2     1
;                                   texture    byte         r/o      T9             t1     1
;
;
; ViewId state:
;
; Number of inputs: 28, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 4, 8, 9, 12, 13, 14, 16, 18, 20, 21, 24 }
;   output 1 depends on inputs: { 0, 1, 3, 4, 8, 9, 12, 13, 14, 16, 18, 20, 21, 24 }
;   output 2 depends on inputs: { 0, 1, 3, 4, 8, 9, 12, 13, 14, 16, 18, 20, 21, 24 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %15 = icmp ne i32 %14, 0
  %16 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %17 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %18 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %19 = call i32 @dx.op.loadInput.i32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %20 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %21 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %32 = extractvalue %dx.types.CBufRet.f32 %31, 0
  %33 = fmul fast float %32, %26
  %34 = fmul fast float %32, %27
  %35 = select i1 %15, float 1.000000e+00, float -1.000000e+00
  %36 = call float @dx.op.dot3.f32(i32 55, float %20, float %21, float %22, float %20, float %21, float %22)  ; Dot3(ax,ay,az,bx,by,bz)
  %37 = bitcast float %36 to i32
  %38 = ashr i32 %37, 1
  %39 = sub nsw i32 1597250115, %38
  %40 = bitcast i32 %39 to float
  %41 = fmul fast float %20, %35
  %42 = fmul fast float %41, %40
  %43 = fmul fast float %21, %35
  %44 = fmul fast float %43, %40
  %45 = fmul fast float %22, %35
  %46 = fmul fast float %45, %40
  %47 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %48 = extractvalue %dx.types.CBufRet.f32 %47, 2
  %49 = extractvalue %dx.types.CBufRet.f32 %47, 3
  %50 = fmul fast float %33, 2.000000e+00
  %51 = fmul fast float %50, %48
  %52 = fmul fast float %34, 2.000000e+00
  %53 = fmul fast float %52, %49
  %54 = fsub fast float 1.000000e+00, %51
  %55 = fsub fast float 1.000000e+00, %53
  %56 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %57 = extractvalue %dx.types.CBufRet.f32 %56, 0
  %58 = extractvalue %dx.types.CBufRet.f32 %56, 1
  %59 = extractvalue %dx.types.CBufRet.f32 %56, 2
  %60 = fmul fast float %54, %57
  %61 = fmul fast float %54, %58
  %62 = fmul fast float %54, %59
  %63 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %64 = extractvalue %dx.types.CBufRet.f32 %63, 0
  %65 = extractvalue %dx.types.CBufRet.f32 %63, 1
  %66 = extractvalue %dx.types.CBufRet.f32 %63, 2
  %67 = fmul fast float %55, %64
  %68 = fmul fast float %55, %65
  %69 = fmul fast float %55, %66
  %70 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
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
  %83 = shl i32 %19, 5
  %84 = add i32 %83, 4194304
  %85 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %84, i32 undef)  ; BufferLoad(srv,index,wot)
  %86 = extractvalue %dx.types.ResRet.i32 %85, 1
  %87 = extractvalue %dx.types.ResRet.i32 %85, 2
  %88 = extractvalue %dx.types.ResRet.i32 %85, 3
  %89 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %90 = extractvalue %dx.types.CBufRet.i32 %89, 3
  %91 = and i32 %90, 3
  %92 = icmp ne i32 %91, 0
  %93 = and i32 %90, 4
  %94 = icmp ne i32 %93, 0
  %95 = and i1 %92, %94
  br i1 %95, label %96, label %105

; <label>:96                                      ; preds = %0
  %97 = fmul fast float %49, %34
  %98 = fmul fast float %48, %33
  %99 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %10, float %98, float %97, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %100 = extractvalue %dx.types.ResRet.f32 %99, 0
  %101 = fsub fast float 1.000000e+00, %100
  %102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %103 = extractvalue %dx.types.CBufRet.f32 %102, 0
  %104 = fcmp fast olt float %101, %103
  br label %108

; <label>:105                                     ; preds = %0
  %106 = icmp eq i32 %93, 0
  %107 = and i1 %92, %106
  br label %108

; <label>:108                                     ; preds = %105, %96
  %109 = phi i1 [ %104, %96 ], [ %107, %105 ]
  %110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %111 = extractvalue %dx.types.CBufRet.f32 %110, 2
  %112 = extractvalue %dx.types.CBufRet.f32 %110, 3
  %113 = fmul fast float %111, %33
  %114 = fmul fast float %112, %34
  %115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %116 = extractvalue %dx.types.ResRet.i32 %115, 0
  %117 = and i32 %116, 114688
  %118 = icmp ne i32 %117, 0
  %119 = select i1 %118, float %113, float 0.000000e+00
  %120 = select i1 %118, float %114, float 0.000000e+00
  %121 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %11, float %119, float %120, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %122 = extractvalue %dx.types.ResRet.f32 %121, 0
  %123 = fmul fast float %122, 2.550000e+02
  %124 = fptoui float %123 to i32
  %125 = select i1 %118, i32 %124, i32 0
  %126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 188, i32 undef)  ; BufferLoad(srv,index,wot)
  %127 = extractvalue %dx.types.ResRet.i32 %126, 0
  %128 = lshr i32 %86, 16
  %129 = call float @dx.op.legacyF16ToF32(i32 131, i32 %128)  ; LegacyF16ToF32(value)
  %130 = fmul fast float %129, %25
  %131 = and i32 %88, 65535
  %132 = call float @dx.op.legacyF16ToF32(i32 131, i32 %131)  ; LegacyF16ToF32(value)
  %133 = shl i32 %87, 4
  %134 = and i32 %133, 32752
  %135 = call float @dx.op.legacyF16ToF32(i32 131, i32 %134)  ; LegacyF16ToF32(value)
  %136 = lshr i32 %87, 7
  %137 = and i32 %136, 32752
  %138 = call float @dx.op.legacyF16ToF32(i32 131, i32 %137)  ; LegacyF16ToF32(value)
  %139 = lshr i32 %87, 22
  %140 = shl nuw nsw i32 %139, 5
  %141 = call float @dx.op.legacyF16ToF32(i32 131, i32 %140)  ; LegacyF16ToF32(value)
  %142 = fmul fast float %135, %132
  %143 = and i32 %127, 16
  %144 = icmp ne i32 %143, 0
  %145 = select i1 %144, float 1.000000e+00, float %130
  %146 = add i32 %16, 220
  %147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %146, i32 undef)  ; BufferLoad(srv,index,wot)
  %148 = extractvalue %dx.types.ResRet.i32 %147, 0
  %149 = add i32 %148, 0
  %150 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %149, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %151 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %150, %dx.types.Handle %30, float %17, float %18, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %152 = extractvalue %dx.types.ResRet.f32 %151, 0
  %153 = fmul fast float %152, %145
  %154 = fcmp fast ogt float %153, 0.000000e+00
  br i1 %154, label %156, label %155

; <label>:155                                     ; preds = %108
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %156

; <label>:156                                     ; preds = %155, %108
  %157 = call float @dx.op.unary.f32(i32 7, float %153)  ; Saturate(value)
  %158 = fmul fast float %33, 5.000000e-01
  %159 = fmul fast float %34, 5.000000e-01
  %160 = fptosi float %158 to i32
  %161 = fptosi float %159 to i32
  %162 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %2, i32 0, i32 %160, i32 %161, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
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
  %174 = fcmp fast oge float %158, %171
  %175 = fcmp fast oge float %159, %173
  %176 = or i1 %174, %175
  %177 = select i1 %176, float 0x4197782600000000, float %168
  %178 = fsub fast float %177, %28
  %179 = fcmp fast ogt float %178, 0.000000e+00
  %180 = and i32 %125, -2
  %181 = icmp eq i32 %180, 2
  %182 = and i1 %181, %179
  %183 = xor i1 %179, true
  %184 = icmp eq i32 %125, 1
  %185 = and i1 %184, %183
  %186 = or i1 %182, %185
  %187 = and i32 %127, 262144
  %188 = icmp ne i32 %187, 0
  %189 = and i1 %188, %186
  %190 = xor i1 %186, true
  %191 = and i32 %127, 131072
  %192 = icmp ne i32 %191, 0
  %193 = and i1 %192, %190
  %194 = or i1 %189, %193
  br i1 %194, label %195, label %196

; <label>:195                                     ; preds = %156
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %196

; <label>:196                                     ; preds = %195, %156
  %197 = add i32 %16, 152
  %198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %197, i32 undef)  ; BufferLoad(srv,index,wot)
  %199 = extractvalue %dx.types.ResRet.i32 %198, 0
  %200 = extractvalue %dx.types.ResRet.i32 %198, 1
  %201 = extractvalue %dx.types.ResRet.i32 %198, 2
  %202 = extractvalue %dx.types.ResRet.i32 %198, 3
  %203 = bitcast i32 %199 to float
  %204 = bitcast i32 %200 to float
  %205 = bitcast i32 %201 to float
  %206 = bitcast i32 %202 to float
  %207 = add i32 %16, 168
  %208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %207, i32 undef)  ; BufferLoad(srv,index,wot)
  %209 = extractvalue %dx.types.ResRet.i32 %208, 2
  %210 = bitcast i32 %209 to float
  %211 = add i32 %16, 184
  %212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %211, i32 undef)  ; BufferLoad(srv,index,wot)
  %213 = add i32 %16, 200
  %214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %213, i32 undef)  ; BufferLoad(srv,index,wot)
  %215 = extractvalue %dx.types.ResRet.i32 %214, 3
  %216 = bitcast i32 %215 to float
  %217 = add i32 %16, 92
  %218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %217, i32 undef)  ; BufferLoad(srv,index,wot)
  %219 = extractvalue %dx.types.ResRet.i32 %218, 0
  %220 = and i32 %219, 2
  %221 = icmp ne i32 %220, 0
  %222 = and i32 %219, 1
  %223 = icmp eq i32 %222, 0
  %224 = and i32 %219, 8
  %225 = icmp eq i32 %224, 0
  %226 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5, i32 0)  ; GetDimensions(handle,mipLevel)
  %227 = extractvalue %dx.types.Dimensions %226, 0
  %228 = sitofp i32 %227 to float
  %229 = extractvalue %dx.types.Dimensions %226, 1
  %230 = sitofp i32 %229 to float
  %231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %232 = extractvalue %dx.types.CBufRet.f32 %231, 2
  %233 = extractvalue %dx.types.CBufRet.f32 %231, 3
  %234 = fmul fast float %232, %33
  %235 = fmul fast float %233, %34
  %236 = fmul fast float %234, %228
  %237 = fmul fast float %235, %230
  %238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %239 = extractvalue %dx.types.CBufRet.f32 %238, 1
  %240 = fsub fast float -0.000000e+00, %239
  %241 = fptoui float %240 to i32
  %242 = fptoui float %236 to i32
  %243 = fptoui float %237 to i32
  %244 = and i32 %241, 31
  %245 = lshr i32 %242, %244
  %246 = lshr i32 %243, %244
  %247 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 %241, i32 %245, i32 %246, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %248 = extractvalue %dx.types.ResRet.f32 %247, 0
  %249 = fcmp fast ogt float %248, -1.000000e+00
  %250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %251 = extractvalue %dx.types.CBufRet.f32 %250, 1
  %252 = select i1 %249, float %251, float 1.000000e+00
  %253 = fadd fast float %248, 1.000000e+00
  %254 = fmul fast float %252, %253
  %255 = call float @dx.op.unary.f32(i32 6, float %254)  ; FAbs(value)
  %256 = extractvalue %dx.types.CBufRet.f32 %250, 3
  %257 = fcmp fast oge float %255, %256
  %258 = select i1 %257, float 0x4197782600000000, float %255
  %259 = fsub fast float %258, %28
  br i1 %225, label %303, label %260

; <label>:260                                     ; preds = %196
  %261 = extractvalue %dx.types.ResRet.i32 %208, 1
  %262 = bitcast i32 %261 to float
  %263 = extractvalue %dx.types.ResRet.i32 %212, 3
  %264 = bitcast i32 %263 to float
  %265 = extractvalue %dx.types.ResRet.i32 %208, 0
  %266 = bitcast i32 %265 to float
  %267 = fadd fast float %266, %28
  %268 = fcmp fast olt float %258, %28
  %269 = fcmp fast ogt float %258, %267
  %270 = or i1 %268, %269
  %271 = select i1 %270, float 0.000000e+00, float %259
  %272 = call float @dx.op.unary.f32(i32 83, float %258)  ; DerivCoarseX(value)
  %273 = call float @dx.op.unary.f32(i32 84, float %258)  ; DerivCoarseY(value)
  %274 = fmul fast float %272, %272
  %275 = fmul fast float %273, %273
  %276 = fadd fast float %275, %274
  %277 = call float @dx.op.unary.f32(i32 24, float %276)  ; Sqrt(value)
  %278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %279 = extractvalue %dx.types.CBufRet.f32 %278, 2
  %280 = fmul fast float %279, %277
  %281 = call float @dx.op.unary.f32(i32 7, float %280)  ; Saturate(value)
  %282 = fmul fast float %281, %262
  %283 = fdiv fast float %259, %282
  %284 = call float @dx.op.unary.f32(i32 7, float %283)  ; Saturate(value)
  %285 = fmul fast float %284, 2.000000e+00
  %286 = fsub fast float 3.000000e+00, %285
  %287 = fmul fast float %284, %284
  %288 = fmul fast float %287, %286
  %289 = fsub fast float %258, %267
  %290 = fadd fast float %289, %282
  %291 = fdiv fast float %290, %282
  %292 = call float @dx.op.unary.f32(i32 7, float %291)  ; Saturate(value)
  %293 = fmul fast float %292, 2.000000e+00
  %294 = fsub fast float 3.000000e+00, %293
  %295 = fmul fast float %292, %292
  %296 = fmul fast float %295, %294
  %297 = fsub fast float %288, %296
  %298 = fsub fast float %264, %216
  %299 = fmul fast float %297, %298
  %300 = fadd fast float %299, %216
  %301 = fmul fast float %271, %203
  %302 = call float @dx.op.unary.f32(i32 6, float %301)  ; FAbs(value)
  br label %342

; <label>:303                                     ; preds = %196
  %304 = and i32 %219, 4
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %317, label %306

; <label>:306                                     ; preds = %303
  %307 = select i1 %221, float 5.000000e+01, float 1.000000e+00
  %308 = fmul fast float %307, %203
  %309 = fmul fast float %23, 2.000000e+00
  %310 = fmul fast float %24, 2.000000e+00
  %311 = fadd fast float %309, -1.000000e+00
  %312 = fadd fast float %310, -1.000000e+00
  %313 = call float @dx.op.dot2.f32(i32 54, float %311, float %312, float %311, float %312)  ; Dot2(ax,ay,bx,by)
  %314 = fmul fast float %313, %210
  %315 = fsub fast float %259, %314
  %316 = fmul fast float %308, %315
  br label %342

; <label>:317                                     ; preds = %303
  br i1 %223, label %337, label %318

; <label>:318                                     ; preds = %317
  %319 = select i1 %221, float 0x3F947AE140000000, float 1.000000e+00
  %320 = fdiv fast float 1.000000e+00, %319
  %321 = fmul fast float %319, %204
  %322 = fmul fast float %319, %205
  %323 = fmul fast float %320, %206
  %324 = call float @dx.op.unary.f32(i32 6, float %259)  ; FAbs(value)
  %325 = fcmp fast olt float %324, %321
  br i1 %325, label %326, label %330, !dx.controlflow.hints !50

; <label>:326                                     ; preds = %318
  %327 = fmul fast float %320, %203
  %328 = fmul fast float %327, %324
  %329 = call float @dx.op.unary.f32(i32 6, float %328)  ; FAbs(value)
  br label %342

; <label>:330                                     ; preds = %318
  %331 = fcmp fast ogt float %324, %322
  br i1 %331, label %332, label %342

; <label>:332                                     ; preds = %330
  %333 = fsub fast float %324, %322
  %334 = fmul fast float %323, %333
  %335 = call float @dx.op.unary.f32(i32 6, float %334)  ; FAbs(value)
  %336 = fsub fast float 1.000000e+00, %335
  br label %342

; <label>:337                                     ; preds = %317
  %338 = select i1 %221, float 5.000000e+01, float 1.000000e+00
  %339 = fmul fast float %338, %203
  %340 = call float @dx.op.binary.f32(i32 36, float %259, float 0x47EFFFFFE0000000)  ; FMin(a,b)
  %341 = fmul fast float %339, %340
  br label %342

; <label>:342                                     ; preds = %337, %332, %330, %326, %306, %260
  %343 = phi float [ %302, %260 ], [ %316, %306 ], [ %341, %337 ], [ %329, %326 ], [ %336, %332 ], [ %324, %330 ]
  %344 = phi float [ %300, %260 ], [ 1.000000e+00, %306 ], [ 1.000000e+00, %337 ], [ 1.000000e+00, %326 ], [ 1.000000e+00, %332 ], [ 1.000000e+00, %330 ]
  %345 = call float @dx.op.unary.f32(i32 7, float %343)  ; Saturate(value)
  %346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %347 = extractvalue %dx.types.CBufRet.f32 %346, 2
  %348 = fptosi float %28 to i32
  %349 = sitofp i32 %348 to float
  %350 = fadd fast float %347, %349
  %351 = fmul fast float %350, 0x3FE3C6EF40000000
  %352 = frem fast float %33, 2.560000e+02
  %353 = frem fast float %34, 2.560000e+02
  %354 = fptoui float %352 to i32
  %355 = fptoui float %353 to i32
  %356 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 0, i32 %354, i32 %355, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %357 = extractvalue %dx.types.ResRet.f32 %356, 0
  %358 = fadd fast float %357, %351
  %359 = call float @dx.op.unary.f32(i32 22, float %358)  ; Frc(value)
  %360 = add i32 %16, 104
  %361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %360, i32 undef)  ; BufferLoad(srv,index,wot)
  %362 = extractvalue %dx.types.ResRet.i32 %361, 0
  %363 = extractvalue %dx.types.ResRet.i32 %361, 1
  %364 = extractvalue %dx.types.ResRet.i32 %361, 2
  %365 = extractvalue %dx.types.ResRet.i32 %361, 3
  %366 = bitcast i32 %362 to float
  %367 = bitcast i32 %363 to float
  %368 = bitcast i32 %364 to float
  %369 = bitcast i32 %365 to float
  %370 = add i32 %16, 120
  %371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %370, i32 undef)  ; BufferLoad(srv,index,wot)
  %372 = extractvalue %dx.types.ResRet.i32 %371, 0
  %373 = extractvalue %dx.types.ResRet.i32 %371, 1
  %374 = extractvalue %dx.types.ResRet.i32 %371, 2
  %375 = bitcast i32 %372 to float
  %376 = bitcast i32 %373 to float
  %377 = bitcast i32 %374 to float
  %378 = add i32 %16, 136
  %379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %378, i32 undef)  ; BufferLoad(srv,index,wot)
  %380 = extractvalue %dx.types.ResRet.i32 %379, 0
  %381 = extractvalue %dx.types.ResRet.i32 %379, 1
  %382 = extractvalue %dx.types.ResRet.i32 %379, 2
  %383 = bitcast i32 %380 to float
  %384 = bitcast i32 %381 to float
  %385 = bitcast i32 %382 to float
  %386 = call float @dx.op.dot3.f32(i32 55, float %42, float %44, float %46, float %42, float %44, float %46)  ; Dot3(ax,ay,az,bx,by,bz)
  %387 = call float @dx.op.unary.f32(i32 25, float %386)  ; Rsqrt(value)
  %388 = fmul fast float %387, %42
  %389 = fmul fast float %387, %44
  %390 = fmul fast float %387, %46
  %391 = call float @dx.op.dot3.f32(i32 55, float %80, float %81, float %82, float %80, float %81, float %82)  ; Dot3(ax,ay,az,bx,by,bz)
  %392 = call float @dx.op.unary.f32(i32 25, float %391)  ; Rsqrt(value)
  %393 = fmul fast float %392, %80
  %394 = fmul fast float %392, %81
  %395 = fmul fast float %392, %82
  %396 = call float @dx.op.dot3.f32(i32 55, float %393, float %394, float %395, float %388, float %389, float %390)  ; Dot3(ax,ay,az,bx,by,bz)
  %397 = fmul fast float %396, %396
  %398 = fmul fast float %397, %368
  %399 = fadd fast float %398, %369
  %400 = call float @dx.op.unary.f32(i32 7, float %399)  ; Saturate(value)
  %401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %402 = extractvalue %dx.types.CBufRet.f32 %401, 3
  %403 = fmul fast float %402, %391
  %404 = fsub fast float %366, %403
  %405 = fmul fast float %404, %367
  %406 = call float @dx.op.unary.f32(i32 7, float %405)  ; Saturate(value)
  %407 = fmul fast float %406, %400
  %408 = fsub fast float %375, %383
  %409 = fsub fast float %376, %384
  %410 = fsub fast float %377, %385
  %411 = fmul fast float %407, %408
  %412 = fmul fast float %407, %409
  %413 = fmul fast float %407, %410
  %414 = fadd fast float %411, %383
  %415 = fadd fast float %412, %384
  %416 = fadd fast float %413, %385
  %417 = fmul fast float %142, %414
  %418 = fmul fast float %344, %157
  %419 = fmul fast float %418, %345
  %420 = fmul fast float %419, %407
  %421 = add i32 %16, 216
  %422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %421, i32 undef)  ; BufferLoad(srv,index,wot)
  %423 = extractvalue %dx.types.ResRet.i32 %422, 0
  %424 = add i32 %423, 0
  %425 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %424, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %426 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %425, %dx.types.Handle %29, float %23, float %24, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %427 = extractvalue %dx.types.ResRet.f32 %426, 0
  %428 = extractvalue %dx.types.ResRet.f32 %426, 1
  %429 = extractvalue %dx.types.ResRet.f32 %426, 2
  %430 = add i32 %16, 44
  %431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %432 = extractvalue %dx.types.ResRet.i32 %431, 0
  %433 = shl i32 %432, 4
  %434 = and i32 %433, 32752
  %435 = call float @dx.op.legacyF16ToF32(i32 131, i32 %434)  ; LegacyF16ToF32(value)
  %436 = lshr i32 %432, 7
  %437 = and i32 %436, 32752
  %438 = call float @dx.op.legacyF16ToF32(i32 131, i32 %437)  ; LegacyF16ToF32(value)
  %439 = lshr i32 %432, 22
  %440 = shl nuw nsw i32 %439, 5
  %441 = call float @dx.op.legacyF16ToF32(i32 131, i32 %440)  ; LegacyF16ToF32(value)
  %442 = fmul fast float %435, %427
  %443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %444 = extractvalue %dx.types.CBufRet.f32 %443, 0
  %445 = fmul fast float %442, %444
  %446 = add i32 %16, 48
  %447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %446, i32 undef)  ; BufferLoad(srv,index,wot)
  %448 = extractvalue %dx.types.ResRet.i32 %447, 0
  %449 = lshr i32 %448, 22
  %450 = shl nuw nsw i32 %449, 5
  %451 = call float @dx.op.legacyF16ToF32(i32 131, i32 %450)  ; LegacyF16ToF32(value)
  %452 = fmul fast float %451, %445
  %453 = select i1 %109, float %452, float %445
  %454 = fmul fast float %417, %453
  %455 = fmul fast float %138, %132
  %456 = fmul fast float %455, %415
  %457 = fmul fast float %456, %428
  %458 = fmul fast float %457, %438
  %459 = fmul fast float %458, %444
  %460 = fmul fast float %141, %132
  %461 = fmul fast float %460, %416
  %462 = fmul fast float %461, %429
  %463 = fmul fast float %462, %441
  %464 = fmul fast float %463, %444
  %465 = call float @dx.op.dot3.f32(i32 55, float %454, float %459, float %464, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %466 = select i1 %109, float 0.000000e+00, float %454
  %467 = select i1 %109, float %465, float %459
  %468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %469 = extractvalue %dx.types.CBufRet.f32 %468, 0
  br i1 %109, label %470, label %474

; <label>:470                                     ; preds = %342
  %471 = fadd fast float %466, %467
  %472 = fmul fast float %471, %420
  %473 = fmul fast float %472, %469
  br label %487

; <label>:474                                     ; preds = %342
  %475 = select i1 %109, float 0.000000e+00, float %464
  %476 = fmul fast float %466, %420
  %477 = fmul fast float %467, %420
  %478 = fmul fast float %475, %420
  %479 = fmul fast float %476, %469
  %480 = fmul fast float %477, %469
  %481 = fmul fast float %478, %469
  %482 = call float @dx.op.binary.f32(i32 35, float %480, float %481)  ; FMax(a,b)
  %483 = call float @dx.op.binary.f32(i32 35, float %479, float %482)  ; FMax(a,b)
  %484 = call float @dx.op.binary.f32(i32 35, float %483, float 0.000000e+00)  ; FMax(a,b)
  %485 = fcmp fast ugt float %484, 0x3F10000000000000
  br i1 %485, label %487, label %486

; <label>:486                                     ; preds = %474
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %487

; <label>:487                                     ; preds = %486, %474, %470
  %488 = phi float [ %473, %470 ], [ %479, %486 ], [ %479, %474 ]
  %489 = phi float [ 0.000000e+00, %470 ], [ %480, %486 ], [ %480, %474 ]
  %490 = phi float [ 0.000000e+00, %470 ], [ %481, %486 ], [ %481, %474 ]
  %491 = fadd fast float %359, 0x3FE3C6EF40000000
  %492 = call float @dx.op.unary.f32(i32 22, float %491)  ; Frc(value)
  %493 = call float @dx.op.unary.f32(i32 23, float %488)  ; Log(value)
  %494 = fadd fast float %493, -7.000000e+00
  %495 = call float @dx.op.unary.f32(i32 21, float %494)  ; Exp(value)
  %496 = fmul fast float %492, 2.000000e+00
  %497 = fadd fast float %496, -1.000000e+00
  %498 = fmul fast float %495, %497
  %499 = fcmp fast ogt float %488, 0.000000e+00
  %500 = select i1 %499, float %498, float 0.000000e+00
  %501 = fadd fast float %500, %488
  %502 = fadd fast float %359, 0x3FF3C6EF40000000
  %503 = call float @dx.op.unary.f32(i32 22, float %502)  ; Frc(value)
  %504 = call float @dx.op.unary.f32(i32 23, float %489)  ; Log(value)
  %505 = fadd fast float %504, -7.000000e+00
  %506 = call float @dx.op.unary.f32(i32 21, float %505)  ; Exp(value)
  %507 = fmul fast float %503, 2.000000e+00
  %508 = fadd fast float %507, -1.000000e+00
  %509 = fmul fast float %506, %508
  %510 = fcmp fast ogt float %489, 0.000000e+00
  %511 = select i1 %510, float %509, float 0.000000e+00
  %512 = fadd fast float %511, %489
  %513 = fadd fast float %359, 0x3FFDAA66E0000000
  %514 = call float @dx.op.unary.f32(i32 22, float %513)  ; Frc(value)
  %515 = call float @dx.op.unary.f32(i32 23, float %490)  ; Log(value)
  %516 = fadd fast float %515, -6.000000e+00
  %517 = call float @dx.op.unary.f32(i32 21, float %516)  ; Exp(value)
  %518 = fmul fast float %514, 2.000000e+00
  %519 = fadd fast float %518, -1.000000e+00
  %520 = fmul fast float %517, %519
  %521 = fcmp fast ogt float %490, 0.000000e+00
  %522 = select i1 %521, float %520, float 0.000000e+00
  %523 = fadd fast float %522, %490
  %524 = select i1 %109, float %489, float %512
  %525 = select i1 %109, float %490, float %523
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %526 = call float @dx.op.binary.f32(i32 36, float %501, float 3.225500e+04)  ; FMin(a,b)
  %527 = call float @dx.op.binary.f32(i32 36, float %524, float 3.225500e+04)  ; FMin(a,b)
  %528 = call float @dx.op.binary.f32(i32 36, float %525, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %526)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %527)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %528)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

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
!dx.viewIdState = !{!25}
!dx.entryPoints = !{!26}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !18, !21}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !17}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 22, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!15 = !{i32 8, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !16}
!16 = !{i32 0, i32 5}
!17 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!18 = !{!19, !20}
!19 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!20 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!21 = !{!22, !23, !24}
!22 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!23 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!24 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!25 = !{[30 x i32] [i32 28, i32 8, i32 7, i32 7, i32 0, i32 7, i32 7, i32 0, i32 0, i32 0, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 0, i32 0, i32 7, i32 0, i32 0, i32 0]}
!26 = !{void ()* @ps_main, !"ps_main", !27, !4, !49}
!27 = !{!28, !44, null}
!28 = !{!29, !32, !34, !36, !38, !39, !41, !42, !43}
!29 = !{i32 0, !"SV_Position", i8 9, i8 3, !30, i8 4, i32 1, i8 4, i32 0, i8 0, !31}
!30 = !{i32 0}
!31 = !{i32 3, i32 11}
!32 = !{i32 1, !"COLOR", i8 9, i8 0, !30, i8 2, i32 1, i8 4, i32 1, i8 0, !33}
!33 = !{i32 3, i32 1}
!34 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !30, i8 2, i32 1, i8 4, i32 2, i8 0, !35}
!35 = !{i32 3, i32 3}
!36 = !{i32 3, !"NORMAL", i8 9, i8 0, !30, i8 2, i32 1, i8 3, i32 3, i8 0, !37}
!37 = !{i32 3, i32 7}
!38 = !{i32 4, !"ENTITY_IDS", i8 5, i8 0, !30, i8 1, i32 1, i8 2, i32 4, i8 0, !33}
!39 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !40, i8 2, i32 1, i8 2, i32 5, i8 0, !35}
!40 = !{i32 9}
!41 = !{i32 6, !"PACKED_TRI_DATA", i8 5, i8 0, !30, i8 1, i32 1, i8 4, i32 6, i8 0, !33}
!42 = !{i32 7, !"SV_IsFrontFace", i8 5, i8 13, !30, i8 1, i32 1, i8 1, i32 4, i8 2, !33}
!43 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !30, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!44 = !{!45, !47}
!45 = !{i32 0, !"SV_Target", i8 9, i8 16, !30, i8 0, i32 1, i8 4, i32 0, i8 0, !46}
!46 = !{i32 3, i32 15}
!47 = !{i32 1, !"SV_Target", i8 9, i8 16, !48, i8 0, i32 1, i8 4, i32 1, i8 0, !46}
!48 = !{i32 1}
!49 = !{i32 0, i64 24}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}

