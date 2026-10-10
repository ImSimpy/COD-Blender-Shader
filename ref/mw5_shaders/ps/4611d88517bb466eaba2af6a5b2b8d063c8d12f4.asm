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
; TEXCOORD                 7     zw        5     NONE   float     zw
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: f05eb15f008c03c70dc7a35b486e4a92
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
;   [320 x i8] (type annotation not present)
;
; }
;
; cbuffer 
; {
;
;   [176 x i8] (type annotation not present)
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
;                                   sampler      NA          NA      S3             s4     1
;                                   sampler      NA          NA      S4             s5     1
;                                   texture     f32          3d      T0     t74,space2     1
;                                   texture     f32          2d      T1     t69,space2     1
;                                   texture     f32          2d      T2     t73,space2     1
;                                   texture     f32          2d      T3     t70,space2     1
;                                   texture    byte         r/o      T4     t15,space1     1
;                                   texture     f32          2d      T5             t0     1
;                                   texture     f32          2d      T6             t1     1
;                                   texture     f32          2d      T7             t2     1
;                                   texture     f32          3d      T8     t71,space2     1
;
;
; ViewId state:
;
; Number of inputs: 24, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 4, 5, 6, 7, 8, 9, 10, 11, 20, 21, 22, 23 }
;   output 1 depends on inputs: { 0, 1, 4, 5, 6, 7, 8, 9, 10, 11, 20, 21, 22, 23 }
;   output 2 depends on inputs: { 0, 1, 4, 5, 6, 7, 8, 9, 10, 11, 20, 21, 22, 23 }
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
%perObject = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%tonemapping = type { i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 71, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 70, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 73, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 74, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %20 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %21 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %34 = extractvalue %dx.types.CBufRet.f32 %33, 0
  %35 = extractvalue %dx.types.CBufRet.f32 %33, 1
  %36 = fsub fast float %31, %34
  %37 = fsub fast float %32, %35
  %38 = extractvalue %dx.types.CBufRet.f32 %33, 2
  %39 = extractvalue %dx.types.CBufRet.f32 %33, 3
  %40 = fmul fast float %36, %38
  %41 = fmul fast float %37, %39
  %42 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %43 = extractvalue %dx.types.CBufRet.f32 %42, 0
  %44 = extractvalue %dx.types.CBufRet.f32 %42, 1
  %45 = fmul fast float %40, %43
  %46 = fmul fast float %41, %44
  %47 = fptoui float %45 to i32
  %48 = fptoui float %46 to i32
  %49 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %50 = extractvalue %dx.types.CBufRet.i32 %49, 1
  %51 = shl i32 %50, 2
  %52 = extractvalue %dx.types.CBufRet.i32 %49, 3
  %53 = add i32 %51, %52
  %54 = lshr i32 %48, 2
  %55 = extractvalue %dx.types.CBufRet.i32 %49, 2
  %56 = mul i32 %54, %55
  %57 = lshr i32 %47, 3
  %58 = add i32 %53, %57
  %59 = add i32 %58, %56
  %60 = shl i32 %59, 2
  %61 = shl i32 %48, 3
  %62 = and i32 %61, 24
  %63 = and i32 %47, 7
  %64 = or i32 %62, %63
  %65 = shl i32 1, %64
  %66 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %60, i32 undef)  ; BufferLoad(srv,index,wot)
  %67 = extractvalue %dx.types.ResRet.i32 %66, 0
  %68 = and i32 %67, %65
  %69 = icmp ne i32 %68, 0
  %70 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 228)  ; CBufferLoadLegacy(handle,regIndex)
  %71 = extractvalue %dx.types.CBufRet.f32 %70, 2
  %72 = extractvalue %dx.types.CBufRet.f32 %70, 0
  %73 = call float @dx.op.binary.f32(i32 35, float %40, float %72)  ; FMax(a,b)
  %74 = call float @dx.op.binary.f32(i32 36, float %73, float %71)  ; FMin(a,b)
  %75 = call float @dx.op.binary.f32(i32 36, float %40, float %72)  ; FMin(a,b)
  %76 = call float @dx.op.binary.f32(i32 35, float %75, float %74)  ; FMax(a,b)
  %77 = fcmp fast oeq float %40, %76
  %78 = extractvalue %dx.types.CBufRet.f32 %70, 3
  %79 = extractvalue %dx.types.CBufRet.f32 %70, 1
  %80 = call float @dx.op.binary.f32(i32 35, float %41, float %79)  ; FMax(a,b)
  %81 = call float @dx.op.binary.f32(i32 36, float %80, float %78)  ; FMin(a,b)
  %82 = call float @dx.op.binary.f32(i32 36, float %41, float %79)  ; FMin(a,b)
  %83 = call float @dx.op.binary.f32(i32 35, float %82, float %81)  ; FMax(a,b)
  %84 = fcmp fast oeq float %41, %83
  %85 = and i1 %77, %84
  %86 = select i1 %85, float 0.000000e+00, float 1.000000e+00
  %87 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %88 = extractvalue %dx.types.CBufRet.f32 %87, 1
  %89 = fcmp fast une float %88, 0.000000e+00
  %90 = extractvalue %dx.types.CBufRet.f32 %87, 0
  %91 = select i1 %89, float %86, float %90
  %92 = fcmp fast oeq float %91, %90
  %93 = and i1 %69, %92
  br i1 %93, label %95, label %94, !dx.controlflow.hints !54

; <label>:94                                      ; preds = %0
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %95

; <label>:95                                      ; preds = %94, %0
  %96 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %97 = extractvalue %dx.types.CBufRet.f32 %96, 3
  %98 = fcmp fast ogt float %97, 0.000000e+00
  br i1 %98, label %99, label %149, !dx.controlflow.hints !55

; <label>:99                                      ; preds = %95
  %100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %101 = extractvalue %dx.types.CBufRet.f32 %100, 3
  %102 = fmul fast float %101, 1.000000e+01
  %103 = call float @dx.op.unary.f32(i32 27, float %102)  ; Round_ni(value)
  %104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %105 = extractvalue %dx.types.CBufRet.f32 %104, 0
  %106 = extractvalue %dx.types.CBufRet.f32 %104, 1
  %107 = fmul fast float %105, %31
  %108 = fmul fast float %106, %32
  %109 = call float @dx.op.unary.f32(i32 27, float %107)  ; Round_ni(value)
  %110 = call float @dx.op.unary.f32(i32 27, float %108)  ; Round_ni(value)
  %111 = fmul fast float %103, 0x4002B851E0000000
  %112 = call float @dx.op.unary.f32(i32 22, float %111)  ; Frc(value)
  %113 = fadd fast float %112, 0x3FB99999A0000000
  %114 = fadd fast float %113, %109
  %115 = fadd fast float %113, %110
  %116 = fmul fast float %114, 0x3FE1BEDF00000000
  %117 = call float @dx.op.unary.f32(i32 22, float %116)  ; Frc(value)
  %118 = fmul fast float %114, %117
  %119 = fadd fast float %118, %115
  %120 = fmul fast float %115, 0x3FD3BEBE20000000
  %121 = call float @dx.op.unary.f32(i32 22, float %120)  ; Frc(value)
  %122 = fmul fast float %115, %121
  %123 = fadd fast float %122, %114
  %124 = fmul fast float %119, %123
  %125 = call float @dx.op.unary.f32(i32 22, float %124)  ; Frc(value)
  %126 = extractvalue %dx.types.CBufRet.f32 %104, 3
  %127 = bitcast float %126 to i32
  %128 = and i32 %127, 255
  %129 = uitofp i32 %128 to float
  %130 = fmul fast float %125, 0x4085373340000000
  %131 = call float @dx.op.unary.f32(i32 22, float %130)  ; Frc(value)
  %132 = fmul fast float %129, 0x3F6CE9B6A0000000
  %133 = fcmp fast olt float %131, %132
  br i1 %133, label %134, label %149, !dx.controlflow.hints !56

; <label>:134                                     ; preds = %99
  %135 = fdiv fast float %131, %132
  %136 = fmul fast float %135, 2.000000e+00
  %137 = fadd fast float %136, -1.000000e+00
  %138 = lshr i32 %127, 8
  %139 = and i32 %138, 255
  %140 = uitofp i32 %139 to float
  %141 = call float @dx.op.unary.f32(i32 83, float %25)  ; DerivCoarseX(value)
  %142 = call float @dx.op.unary.f32(i32 83, float %26)  ; DerivCoarseX(value)
  %143 = fmul fast float %137, %141
  %144 = fmul fast float %143, %140
  %145 = fmul fast float %142, %137
  %146 = fmul fast float %145, %140
  %147 = fadd fast float %144, %25
  %148 = fadd fast float %146, %26
  br label %149

; <label>:149                                     ; preds = %134, %99, %95
  %150 = phi float [ %147, %134 ], [ %25, %99 ], [ %25, %95 ]
  %151 = phi float [ %148, %134 ], [ %26, %99 ], [ %26, %95 ]
  %152 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4, i32 0)  ; GetDimensions(handle,mipLevel)
  %153 = extractvalue %dx.types.Dimensions %152, 0
  %154 = sitofp i32 %153 to float
  %155 = extractvalue %dx.types.Dimensions %152, 1
  %156 = sitofp i32 %155 to float
  %157 = fdiv fast float 5.000000e-01, %154
  %158 = fdiv fast float 5.000000e-01, %156
  %159 = fsub fast float 1.000000e+00, %157
  %160 = call float @dx.op.binary.f32(i32 35, float %150, float %157)  ; FMax(a,b)
  %161 = call float @dx.op.binary.f32(i32 36, float %160, float %159)  ; FMin(a,b)
  %162 = fsub fast float 1.000000e+00, %158
  %163 = call float @dx.op.binary.f32(i32 35, float %151, float %158)  ; FMax(a,b)
  %164 = call float @dx.op.binary.f32(i32 36, float %163, float %162)  ; FMin(a,b)
  %165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %166 = extractvalue %dx.types.CBufRet.f32 %165, 3
  %167 = bitcast float %166 to i32
  %168 = and i32 %167, 1
  %169 = icmp ne i32 %168, 0
  %170 = select i1 %169, float %161, float %150
  %171 = and i32 %167, 2
  %172 = icmp ne i32 %171, 0
  %173 = select i1 %172, float %164, float %151
  %174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %175 = extractvalue %dx.types.CBufRet.f32 %174, 3
  %176 = bitcast float %175 to i32
  %177 = and i32 %176, 4
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %185, label %179, !dx.controlflow.hints !57

; <label>:179                                     ; preds = %149
  %180 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4, %dx.types.Handle %10, float %170, float %173, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %181 = extractvalue %dx.types.ResRet.f32 %180, 0
  %182 = extractvalue %dx.types.ResRet.f32 %180, 1
  %183 = extractvalue %dx.types.ResRet.f32 %180, 2
  %184 = extractvalue %dx.types.ResRet.f32 %180, 3
  br label %193

; <label>:185                                     ; preds = %149
  %186 = call float @dx.op.unary.f32(i32 22, float %170)  ; Frc(value)
  %187 = call float @dx.op.unary.f32(i32 22, float %173)  ; Frc(value)
  %188 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4, %dx.types.Handle %14, float %186, float %187, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %189 = extractvalue %dx.types.ResRet.f32 %188, 0
  %190 = extractvalue %dx.types.ResRet.f32 %188, 1
  %191 = extractvalue %dx.types.ResRet.f32 %188, 2
  %192 = extractvalue %dx.types.ResRet.f32 %188, 3
  br label %193

; <label>:193                                     ; preds = %185, %179
  %194 = phi float [ %181, %179 ], [ %189, %185 ]
  %195 = phi float [ %182, %179 ], [ %190, %185 ]
  %196 = phi float [ %183, %179 ], [ %191, %185 ]
  %197 = phi float [ %184, %179 ], [ %192, %185 ]
  %198 = and i32 %176, 8
  %199 = icmp ne i32 %198, 0
  %200 = select i1 %199, float 1.000000e+00, float %194
  %201 = select i1 %199, float 1.000000e+00, float %195
  %202 = select i1 %199, float 1.000000e+00, float %196
  %203 = select i1 %199, float %194, float %197
  %204 = fmul fast float %200, %27
  %205 = fmul fast float %201, %28
  %206 = fmul fast float %202, %29
  %207 = fmul fast float %203, %30
  %208 = fcmp fast oeq float %91, 0.000000e+00
  %209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %210 = extractvalue %dx.types.CBufRet.f32 %209, 3
  %211 = fcmp fast une float %210, 0.000000e+00
  %212 = and i1 %208, %211
  br i1 %212, label %213, label %229

; <label>:213                                     ; preds = %193
  %214 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %13, float %40, float %41, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %215 = extractvalue %dx.types.ResRet.f32 %214, 0
  %216 = fsub fast float 1.000000e+00, %215
  %217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %218 = extractvalue %dx.types.CBufRet.f32 %217, 0
  %219 = extractvalue %dx.types.CBufRet.f32 %217, 1
  %220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 222)  ; CBufferLoadLegacy(handle,regIndex)
  %221 = extractvalue %dx.types.CBufRet.f32 %220, 3
  %222 = fdiv fast float %216, %221
  %223 = fsub fast float %222, %218
  %224 = fmul fast float %223, %219
  %225 = call float @dx.op.unary.f32(i32 7, float %224)  ; Saturate(value)
  %226 = fsub fast float 1.000000e+00, %225
  %227 = fmul fast float %226, %226
  %228 = fmul fast float %227, %207
  br label %229

; <label>:229                                     ; preds = %213, %193
  %230 = phi float [ %228, %213 ], [ %207, %193 ]
  %231 = and i32 %176, 512
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %327, label %233

; <label>:233                                     ; preds = %229
  %234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %235 = extractvalue %dx.types.CBufRet.f32 %234, 3
  %236 = bitcast float %235 to i32
  %237 = and i32 %236, 65535
  %238 = call float @dx.op.legacyF16ToF32(i32 131, i32 %237)  ; LegacyF16ToF32(value)
  %239 = lshr i32 %236, 16
  %240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %239)  ; LegacyF16ToF32(value)
  %241 = extractvalue %dx.types.CBufRet.f32 %234, 2
  %242 = bitcast float %241 to i32
  %243 = and i32 %242, 65535
  %244 = call float @dx.op.legacyF16ToF32(i32 131, i32 %243)  ; LegacyF16ToF32(value)
  %245 = lshr i32 %242, 16
  %246 = call float @dx.op.legacyF16ToF32(i32 131, i32 %245)  ; LegacyF16ToF32(value)
  %247 = and i32 %176, 16
  %248 = icmp ne i32 %247, 0
  %249 = fcmp fast ogt float %238, 0.000000e+00
  %250 = fcmp fast ogt float %240, 0.000000e+00
  %251 = and i1 %249, %250
  %252 = fcmp fast ogt float %244, 0.000000e+00
  br i1 %251, label %253, label %313

; <label>:253                                     ; preds = %233
  br i1 %252, label %254, label %262

; <label>:254                                     ; preds = %253
  %255 = fmul fast float %240, %24
  %256 = fmul fast float %238, %23
  %257 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %11, float %256, float %255, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %258 = extractvalue %dx.types.ResRet.f32 %257, 0
  %259 = fsub fast float 1.000000e+00, %258
  %260 = select i1 %248, float %259, float %258
  %261 = fmul fast float %260, %244
  br label %262

; <label>:262                                     ; preds = %254, %253
  %263 = phi float [ %261, %254 ], [ 0.000000e+00, %253 ]
  %264 = fadd fast float %263, %246
  %265 = call float @dx.op.unary.f32(i32 7, float %264)  ; Saturate(value)
  br i1 %252, label %266, label %276

; <label>:266                                     ; preds = %262
  %267 = fmul fast float %240, %24
  %268 = fsub fast float 1.000000e+00, %23
  %269 = fmul fast float %238, %268
  %270 = fsub fast float 1.000000e+00, %269
  %271 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %11, float %270, float %267, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %272 = extractvalue %dx.types.ResRet.f32 %271, 1
  %273 = fsub fast float 1.000000e+00, %272
  %274 = select i1 %248, float %273, float %272
  %275 = fmul fast float %274, %244
  br label %276

; <label>:276                                     ; preds = %266, %262
  %277 = phi float [ %275, %266 ], [ 0.000000e+00, %262 ]
  %278 = fadd fast float %277, %246
  %279 = call float @dx.op.unary.f32(i32 7, float %278)  ; Saturate(value)
  %280 = fmul fast float %279, %265
  br i1 %252, label %281, label %293

; <label>:281                                     ; preds = %276
  %282 = fsub fast float 1.000000e+00, %24
  %283 = fmul fast float %240, %282
  %284 = fsub fast float 1.000000e+00, %283
  %285 = fsub fast float 1.000000e+00, %23
  %286 = fmul fast float %238, %285
  %287 = fsub fast float 1.000000e+00, %286
  %288 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %11, float %287, float %284, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %289 = extractvalue %dx.types.ResRet.f32 %288, 2
  %290 = fsub fast float 1.000000e+00, %289
  %291 = select i1 %248, float %290, float %289
  %292 = fmul fast float %291, %244
  br label %293

; <label>:293                                     ; preds = %281, %276
  %294 = phi float [ %292, %281 ], [ 0.000000e+00, %276 ]
  %295 = fadd fast float %294, %246
  %296 = call float @dx.op.unary.f32(i32 7, float %295)  ; Saturate(value)
  %297 = fmul fast float %280, %296
  br i1 %252, label %298, label %308

; <label>:298                                     ; preds = %293
  %299 = fsub fast float 1.000000e+00, %24
  %300 = fmul fast float %240, %299
  %301 = fsub fast float 1.000000e+00, %300
  %302 = fmul fast float %238, %23
  %303 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %11, float %302, float %301, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %304 = extractvalue %dx.types.ResRet.f32 %303, 3
  %305 = fsub fast float 1.000000e+00, %304
  %306 = select i1 %248, float %305, float %304
  %307 = fmul fast float %306, %244
  br label %308

; <label>:308                                     ; preds = %298, %293
  %309 = phi float [ %307, %298 ], [ 0.000000e+00, %293 ]
  %310 = fadd fast float %309, %246
  %311 = call float @dx.op.unary.f32(i32 7, float %310)  ; Saturate(value)
  %312 = fmul fast float %297, %311
  br label %324

; <label>:313                                     ; preds = %233
  br i1 %252, label %314, label %320

; <label>:314                                     ; preds = %313
  %315 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %11, float %23, float %24, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %316 = extractvalue %dx.types.ResRet.f32 %315, 0
  %317 = fsub fast float 1.000000e+00, %316
  %318 = select i1 %248, float %317, float %316
  %319 = fmul fast float %318, %244
  br label %320

; <label>:320                                     ; preds = %314, %313
  %321 = phi float [ %319, %314 ], [ 0.000000e+00, %313 ]
  %322 = fadd fast float %321, %246
  %323 = call float @dx.op.unary.f32(i32 7, float %322)  ; Saturate(value)
  br label %324

; <label>:324                                     ; preds = %320, %308
  %325 = phi float [ %312, %308 ], [ %323, %320 ]
  %326 = fmul fast float %325, %230
  br label %327

; <label>:327                                     ; preds = %324, %229
  %328 = phi float [ %326, %324 ], [ %230, %229 ]
  %329 = call float @dx.op.binary.f32(i32 35, float %328, float 0.000000e+00)  ; FMax(a,b)
  %330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %331 = extractvalue %dx.types.CBufRet.f32 %330, 3
  %332 = bitcast float %331 to i32
  %333 = and i32 %332, 1
  %334 = icmp eq i32 %333, 0
  %335 = and i32 %332, 4
  %336 = icmp eq i32 %335, 0
  br i1 %334, label %410, label %337, !dx.controlflow.hints !58

; <label>:337                                     ; preds = %327
  %338 = and i32 %332, 2
  %339 = icmp eq i32 %338, 0
  %340 = extractvalue %dx.types.CBufRet.f32 %330, 0
  %341 = extractvalue %dx.types.CBufRet.f32 %330, 1
  %342 = extractvalue %dx.types.CBufRet.f32 %330, 2
  %343 = fmul fast float %340, %204
  %344 = fmul fast float %341, %205
  %345 = fmul fast float %342, %206
  %346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %347 = extractvalue %dx.types.CBufRet.f32 %346, 0
  %348 = fmul fast float %347, %343
  %349 = fmul fast float %347, %344
  %350 = fmul fast float %347, %345
  br i1 %339, label %410, label %351, !dx.controlflow.hints !59

; <label>:351                                     ; preds = %337
  %352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %353 = extractvalue %dx.types.CBufRet.f32 %352, 0
  %354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %355 = extractvalue %dx.types.CBufRet.f32 %354, 0
  %356 = extractvalue %dx.types.CBufRet.f32 %354, 1
  %357 = extractvalue %dx.types.CBufRet.f32 %354, 2
  %358 = call float @dx.op.dot3.f32(i32 55, float %348, float %349, float %350, float %355, float %356, float %357)  ; Dot3(ax,ay,az,bx,by,bz)
  %359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %360 = extractvalue %dx.types.CBufRet.f32 %359, 0
  %361 = extractvalue %dx.types.CBufRet.f32 %359, 1
  %362 = extractvalue %dx.types.CBufRet.f32 %359, 2
  %363 = call float @dx.op.dot3.f32(i32 55, float %348, float %349, float %350, float %360, float %361, float %362)  ; Dot3(ax,ay,az,bx,by,bz)
  %364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %365 = extractvalue %dx.types.CBufRet.f32 %364, 0
  %366 = extractvalue %dx.types.CBufRet.f32 %364, 1
  %367 = extractvalue %dx.types.CBufRet.f32 %364, 2
  %368 = call float @dx.op.dot3.f32(i32 55, float %348, float %349, float %350, float %365, float %366, float %367)  ; Dot3(ax,ay,az,bx,by,bz)
  %369 = fmul fast float %358, %353
  %370 = fmul fast float %363, %353
  %371 = fmul fast float %368, %353
  %372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %373 = extractvalue %dx.types.CBufRet.f32 %372, 2
  %374 = fmul fast float %369, %373
  %375 = fmul fast float %370, %373
  %376 = fmul fast float %371, %373
  %377 = fadd fast float %374, 9.765625e-04
  %378 = fadd fast float %375, 9.765625e-04
  %379 = fadd fast float %376, 9.765625e-04
  %380 = call float @dx.op.unary.f32(i32 23, float %377)  ; Log(value)
  %381 = call float @dx.op.unary.f32(i32 23, float %378)  ; Log(value)
  %382 = call float @dx.op.unary.f32(i32 23, float %379)  ; Log(value)
  %383 = fadd fast float %380, 1.000000e+01
  %384 = fadd fast float %381, 1.000000e+01
  %385 = fadd fast float %382, 1.000000e+01
  %386 = fmul fast float %383, 0x3FA99999A0000000
  %387 = fmul fast float %384, 0x3FA99999A0000000
  %388 = fmul fast float %385, 0x3FA99999A0000000
  %389 = call float @dx.op.unary.f32(i32 7, float %386)  ; Saturate(value)
  %390 = call float @dx.op.unary.f32(i32 7, float %387)  ; Saturate(value)
  %391 = call float @dx.op.unary.f32(i32 7, float %388)  ; Saturate(value)
  %392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %393 = extractvalue %dx.types.CBufRet.f32 %392, 0
  %394 = extractvalue %dx.types.CBufRet.f32 %392, 1
  %395 = extractvalue %dx.types.CBufRet.f32 %392, 2
  %396 = fmul fast float %393, %389
  %397 = fmul fast float %394, %390
  %398 = fmul fast float %395, %391
  %399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %400 = extractvalue %dx.types.CBufRet.f32 %399, 0
  %401 = extractvalue %dx.types.CBufRet.f32 %399, 1
  %402 = extractvalue %dx.types.CBufRet.f32 %399, 2
  %403 = fadd fast float %396, %400
  %404 = fadd fast float %397, %401
  %405 = fadd fast float %398, %402
  %406 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %13, float %403, float %404, float %405, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %407 = extractvalue %dx.types.ResRet.f32 %406, 0
  %408 = extractvalue %dx.types.ResRet.f32 %406, 1
  %409 = extractvalue %dx.types.ResRet.f32 %406, 2
  br label %410

; <label>:410                                     ; preds = %351, %337, %327
  %411 = phi float [ %407, %351 ], [ %204, %327 ], [ %348, %337 ]
  %412 = phi float [ %408, %351 ], [ %205, %327 ], [ %349, %337 ]
  %413 = phi float [ %409, %351 ], [ %206, %327 ], [ %350, %337 ]
  %414 = fcmp fast oeq float %329, 0.000000e+00
  br i1 %414, label %415, label %416, !dx.controlflow.hints !60

; <label>:415                                     ; preds = %410
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %416

; <label>:416                                     ; preds = %415, %410
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %417 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %12, float %19, float %20, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %418 = extractvalue %dx.types.ResRet.f32 %417, 0
  %419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %420 = extractvalue %dx.types.CBufRet.f32 %419, 3
  %421 = bitcast float %420 to i32
  %422 = and i32 %421, 65535
  %423 = call float @dx.op.legacyF16ToF32(i32 131, i32 %422)  ; LegacyF16ToF32(value)
  %424 = fcmp fast une float %423, 0.000000e+00
  %425 = select i1 %424, float 0.000000e+00, float 1.000000e+00
  %426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %427 = extractvalue %dx.types.CBufRet.f32 %426, 3
  %428 = fmul fast float %427, %418
  %429 = fmul fast float %428, %425
  %430 = fsub fast float 1.000000e+00, %429
  %431 = fmul fast float %430, %411
  %432 = fmul fast float %430, %412
  %433 = fmul fast float %430, %413
  %434 = extractvalue %dx.types.CBufRet.f32 %426, 0
  %435 = extractvalue %dx.types.CBufRet.f32 %426, 1
  %436 = extractvalue %dx.types.CBufRet.f32 %426, 2
  %437 = fmul fast float %434, %428
  %438 = fmul fast float %435, %428
  %439 = fmul fast float %436, %428
  %440 = fadd fast float %431, %437
  %441 = fadd fast float %432, %438
  %442 = fadd fast float %433, %439
  %443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %444 = extractvalue %dx.types.CBufRet.f32 %443, 2
  %445 = fcmp fast ogt float %444, 0.000000e+00
  br i1 %445, label %446, label %512, !dx.controlflow.hints !61

; <label>:446                                     ; preds = %416
  %447 = fcmp fast oeq float %444, 2.000000e+00
  br i1 %447, label %448, label %500, !dx.controlflow.hints !62

; <label>:448                                     ; preds = %446
  %449 = fcmp fast ole float %440, 0x3F69A5C380000000
  %450 = fcmp fast ole float %441, 0x3F69A5C380000000
  %451 = fcmp fast ole float %442, 0x3F69A5C380000000
  %452 = fmul fast float %440, 0x4029D70A40000000
  %453 = fmul fast float %441, 0x4029D70A40000000
  %454 = fmul fast float %442, 0x4029D70A40000000
  %455 = call float @dx.op.unary.f32(i32 23, float %440)  ; Log(value)
  %456 = call float @dx.op.unary.f32(i32 23, float %441)  ; Log(value)
  %457 = call float @dx.op.unary.f32(i32 23, float %442)  ; Log(value)
  %458 = fmul fast float %455, 0x3FDAAAAAA0000000
  %459 = fmul fast float %456, 0x3FDAAAAAA0000000
  %460 = fmul fast float %457, 0x3FDAAAAAA0000000
  %461 = call float @dx.op.unary.f32(i32 21, float %458)  ; Exp(value)
  %462 = call float @dx.op.unary.f32(i32 21, float %459)  ; Exp(value)
  %463 = call float @dx.op.unary.f32(i32 21, float %460)  ; Exp(value)
  %464 = fmul fast float %461, 0x3FF0E147A0000000
  %465 = fmul fast float %462, 0x3FF0E147A0000000
  %466 = fmul fast float %463, 0x3FF0E147A0000000
  %467 = fadd fast float %464, 0xBFAC28F5C0000000
  %468 = fadd fast float %465, 0xBFAC28F5C0000000
  %469 = fadd fast float %466, 0xBFAC28F5C0000000
  %470 = select i1 %449, float %452, float %467
  %471 = select i1 %450, float %453, float %468
  %472 = select i1 %451, float %454, float %469
  %473 = fsub fast float 1.000000e+00, %470
  %474 = fsub fast float 1.000000e+00, %471
  %475 = fsub fast float 1.000000e+00, %472
  %476 = fcmp fast ole float %473, 0x3FA4B5DCC0000000
  %477 = fmul fast float %473, 0x3FB3D07220000000
  %478 = fsub fast float 0x3FF0E147A0000000, %470
  %479 = fmul fast float %478, 0x3FEE54EDE0000000
  %480 = call float @dx.op.unary.f32(i32 23, float %479)  ; Log(value)
  %481 = fmul fast float %480, 0x4003333340000000
  %482 = call float @dx.op.unary.f32(i32 21, float %481)  ; Exp(value)
  %483 = select i1 %476, float %477, float %482
  %484 = fcmp fast ole float %474, 0x3FA4B5DCC0000000
  %485 = fmul fast float %474, 0x3FB3D07220000000
  %486 = fsub fast float 0x3FF0E147A0000000, %471
  %487 = fmul fast float %486, 0x3FEE54EDE0000000
  %488 = call float @dx.op.unary.f32(i32 23, float %487)  ; Log(value)
  %489 = fmul fast float %488, 0x4003333340000000
  %490 = call float @dx.op.unary.f32(i32 21, float %489)  ; Exp(value)
  %491 = select i1 %484, float %485, float %490
  %492 = fcmp fast ole float %475, 0x3FA4B5DCC0000000
  %493 = fmul fast float %475, 0x3FB3D07220000000
  %494 = fsub fast float 0x3FF0E147A0000000, %472
  %495 = fmul fast float %494, 0x3FEE54EDE0000000
  %496 = call float @dx.op.unary.f32(i32 23, float %495)  ; Log(value)
  %497 = fmul fast float %496, 0x4003333340000000
  %498 = call float @dx.op.unary.f32(i32 21, float %497)  ; Exp(value)
  %499 = select i1 %492, float %493, float %498
  br label %512

; <label>:500                                     ; preds = %446
  %501 = call float @dx.op.dot3.f32(i32 55, float %440, float %441, float %442, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %502 = extractvalue %dx.types.CBufRet.f32 %443, 3
  %503 = fsub fast float %440, %501
  %504 = fsub fast float %441, %501
  %505 = fsub fast float %442, %501
  %506 = fmul fast float %502, %503
  %507 = fmul fast float %502, %504
  %508 = fmul fast float %502, %505
  %509 = fadd fast float %506, %501
  %510 = fadd fast float %507, %501
  %511 = fadd fast float %508, %501
  br label %512

; <label>:512                                     ; preds = %500, %448, %416
  %513 = phi float [ %483, %448 ], [ %509, %500 ], [ %440, %416 ]
  %514 = phi float [ %491, %448 ], [ %510, %500 ], [ %441, %416 ]
  %515 = phi float [ %499, %448 ], [ %511, %500 ], [ %442, %416 ]
  %516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %517 = extractvalue %dx.types.CBufRet.f32 %516, 0
  %518 = fcmp fast une float %517, 0.000000e+00
  br i1 %518, label %519, label %693, !dx.controlflow.hints !63

; <label>:519                                     ; preds = %512
  %520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %521 = extractvalue %dx.types.CBufRet.f32 %520, 0
  %522 = extractvalue %dx.types.CBufRet.f32 %520, 1
  %523 = fsub fast float %31, %521
  %524 = fsub fast float %32, %522
  %525 = extractvalue %dx.types.CBufRet.f32 %520, 2
  %526 = extractvalue %dx.types.CBufRet.f32 %520, 3
  %527 = fmul fast float %523, %525
  %528 = fmul fast float %524, %526
  %529 = call float @dx.op.unary.f32(i32 6, float %517)  ; FAbs(value)
  %530 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %13, float %527, float %528, float undef, float undef, i32 0, i32 0, i32 undef, float %529)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %531 = extractvalue %dx.types.ResRet.f32 %530, 0
  %532 = extractvalue %dx.types.ResRet.f32 %530, 1
  %533 = extractvalue %dx.types.ResRet.f32 %530, 2
  %534 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %535 = extractvalue %dx.types.CBufRet.i32 %534, 3
  %536 = and i32 %535, 3
  %537 = icmp ne i32 %536, 0
  %538 = and i32 %535, 4
  %539 = icmp eq i32 %538, 0
  %540 = and i1 %537, %539
  br i1 %540, label %541, label %585

; <label>:541                                     ; preds = %519
  %542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %543 = extractvalue %dx.types.CBufRet.f32 %542, 0
  %544 = fcmp fast oge float %532, %543
  %545 = zext i1 %544 to i32
  br i1 %544, label %546, label %585

; <label>:546                                     ; preds = %541
  %547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 237)  ; CBufferLoadLegacy(handle,regIndex)
  %548 = extractvalue %dx.types.CBufRet.f32 %547, 3
  %549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %550 = extractvalue %dx.types.CBufRet.f32 %549, 2
  %551 = fcmp fast ogt float %550, 0.000000e+00
  br i1 %551, label %552, label %560, !dx.controlflow.hints !64

; <label>:552                                     ; preds = %546
  %553 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %13, float %532, float 0.000000e+00, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %554 = extractvalue %dx.types.ResRet.f32 %553, 0
  %555 = extractvalue %dx.types.ResRet.f32 %553, 1
  %556 = extractvalue %dx.types.ResRet.f32 %553, 2
  %557 = fcmp fast ogt float %550, 1.500000e+00
  %558 = select i1 %557, float %554, float %555
  %559 = select i1 %557, float %554, float %556
  br label %578

; <label>:560                                     ; preds = %546
  %561 = call float @dx.op.unary.f32(i32 7, float %532)  ; Saturate(value)
  %562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 238)  ; CBufferLoadLegacy(handle,regIndex)
  %563 = extractvalue %dx.types.CBufRet.f32 %562, 0
  %564 = extractvalue %dx.types.CBufRet.f32 %562, 1
  %565 = extractvalue %dx.types.CBufRet.f32 %562, 2
  %566 = extractvalue %dx.types.CBufRet.f32 %547, 0
  %567 = extractvalue %dx.types.CBufRet.f32 %547, 1
  %568 = extractvalue %dx.types.CBufRet.f32 %547, 2
  %569 = fsub fast float %563, %566
  %570 = fsub fast float %564, %567
  %571 = fsub fast float %565, %568
  %572 = fmul fast float %569, %561
  %573 = fmul fast float %570, %561
  %574 = fmul fast float %571, %561
  %575 = fadd fast float %572, %566
  %576 = fadd fast float %573, %567
  %577 = fadd fast float %574, %568
  br label %578

; <label>:578                                     ; preds = %560, %552
  %579 = phi float [ %554, %552 ], [ %575, %560 ]
  %580 = phi float [ %558, %552 ], [ %576, %560 ]
  %581 = phi float [ %559, %552 ], [ %577, %560 ]
  %582 = fmul fast float %579, %548
  %583 = fmul fast float %580, %548
  %584 = fmul fast float %581, %548
  br label %585

; <label>:585                                     ; preds = %578, %541, %519
  %586 = phi float [ %582, %578 ], [ %531, %519 ], [ %531, %541 ]
  %587 = phi float [ %583, %578 ], [ %532, %519 ], [ %531, %541 ]
  %588 = phi float [ %584, %578 ], [ %533, %519 ], [ %531, %541 ]
  %589 = phi i32 [ %545, %578 ], [ 0, %519 ], [ %545, %541 ]
  %590 = icmp eq i32 %589, 0
  br i1 %590, label %591, label %645

; <label>:591                                     ; preds = %585
  %592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %593 = extractvalue %dx.types.CBufRet.f32 %592, 0
  %594 = extractvalue %dx.types.CBufRet.f32 %592, 1
  %595 = extractvalue %dx.types.CBufRet.f32 %592, 2
  %596 = call float @dx.op.dot3.f32(i32 55, float %586, float %587, float %588, float %593, float %594, float %595)  ; Dot3(ax,ay,az,bx,by,bz)
  %597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %598 = extractvalue %dx.types.CBufRet.f32 %597, 0
  %599 = extractvalue %dx.types.CBufRet.f32 %597, 1
  %600 = extractvalue %dx.types.CBufRet.f32 %597, 2
  %601 = call float @dx.op.dot3.f32(i32 55, float %586, float %587, float %588, float %598, float %599, float %600)  ; Dot3(ax,ay,az,bx,by,bz)
  %602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %603 = extractvalue %dx.types.CBufRet.f32 %602, 0
  %604 = extractvalue %dx.types.CBufRet.f32 %602, 1
  %605 = extractvalue %dx.types.CBufRet.f32 %602, 2
  %606 = call float @dx.op.dot3.f32(i32 55, float %586, float %587, float %588, float %603, float %604, float %605)  ; Dot3(ax,ay,az,bx,by,bz)
  %607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %608 = extractvalue %dx.types.CBufRet.f32 %607, 2
  %609 = fmul fast float %608, %596
  %610 = fmul fast float %608, %601
  %611 = fmul fast float %608, %606
  %612 = fadd fast float %609, 9.765625e-04
  %613 = fadd fast float %610, 9.765625e-04
  %614 = fadd fast float %611, 9.765625e-04
  %615 = call float @dx.op.unary.f32(i32 23, float %612)  ; Log(value)
  %616 = call float @dx.op.unary.f32(i32 23, float %613)  ; Log(value)
  %617 = call float @dx.op.unary.f32(i32 23, float %614)  ; Log(value)
  %618 = fadd fast float %615, 1.000000e+01
  %619 = fadd fast float %616, 1.000000e+01
  %620 = fadd fast float %617, 1.000000e+01
  %621 = fmul fast float %618, 0x3FA99999A0000000
  %622 = fmul fast float %619, 0x3FA99999A0000000
  %623 = fmul fast float %620, 0x3FA99999A0000000
  %624 = call float @dx.op.unary.f32(i32 7, float %621)  ; Saturate(value)
  %625 = call float @dx.op.unary.f32(i32 7, float %622)  ; Saturate(value)
  %626 = call float @dx.op.unary.f32(i32 7, float %623)  ; Saturate(value)
  %627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %628 = extractvalue %dx.types.CBufRet.f32 %627, 0
  %629 = extractvalue %dx.types.CBufRet.f32 %627, 1
  %630 = extractvalue %dx.types.CBufRet.f32 %627, 2
  %631 = fmul fast float %628, %624
  %632 = fmul fast float %629, %625
  %633 = fmul fast float %630, %626
  %634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %635 = extractvalue %dx.types.CBufRet.f32 %634, 0
  %636 = extractvalue %dx.types.CBufRet.f32 %634, 1
  %637 = extractvalue %dx.types.CBufRet.f32 %634, 2
  %638 = fadd fast float %631, %635
  %639 = fadd fast float %632, %636
  %640 = fadd fast float %633, %637
  %641 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %13, float %638, float %639, float %640, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %642 = extractvalue %dx.types.ResRet.f32 %641, 0
  %643 = extractvalue %dx.types.ResRet.f32 %641, 1
  %644 = extractvalue %dx.types.ResRet.f32 %641, 2
  br label %645

; <label>:645                                     ; preds = %591, %585
  %646 = phi float [ %586, %585 ], [ %642, %591 ]
  %647 = phi float [ %587, %585 ], [ %643, %591 ]
  %648 = phi float [ %588, %585 ], [ %644, %591 ]
  %649 = fcmp fast ole float %646, 0x3FA4B5DCC0000000
  %650 = fmul fast float %646, 0x3FB3D07220000000
  %651 = fadd fast float %646, 0x3FAC28F5C0000000
  %652 = fmul fast float %651, 0x3FEE54EDE0000000
  %653 = call float @dx.op.unary.f32(i32 23, float %652)  ; Log(value)
  %654 = fmul fast float %653, 0x4003333340000000
  %655 = call float @dx.op.unary.f32(i32 21, float %654)  ; Exp(value)
  %656 = select i1 %649, float %650, float %655
  %657 = fcmp fast ole float %647, 0x3FA4B5DCC0000000
  %658 = fmul fast float %647, 0x3FB3D07220000000
  %659 = fadd fast float %647, 0x3FAC28F5C0000000
  %660 = fmul fast float %659, 0x3FEE54EDE0000000
  %661 = call float @dx.op.unary.f32(i32 23, float %660)  ; Log(value)
  %662 = fmul fast float %661, 0x4003333340000000
  %663 = call float @dx.op.unary.f32(i32 21, float %662)  ; Exp(value)
  %664 = select i1 %657, float %658, float %663
  %665 = fcmp fast ole float %648, 0x3FA4B5DCC0000000
  %666 = fmul fast float %648, 0x3FB3D07220000000
  %667 = fadd fast float %648, 0x3FAC28F5C0000000
  %668 = fmul fast float %667, 0x3FEE54EDE0000000
  %669 = call float @dx.op.unary.f32(i32 23, float %668)  ; Log(value)
  %670 = fmul fast float %669, 0x4003333340000000
  %671 = call float @dx.op.unary.f32(i32 21, float %670)  ; Exp(value)
  %672 = select i1 %665, float %666, float %671
  %673 = fcmp fast olt float %517, 0.000000e+00
  br i1 %673, label %674, label %686

; <label>:674                                     ; preds = %645
  %675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %676 = extractvalue %dx.types.CBufRet.f32 %675, 0
  %677 = extractvalue %dx.types.CBufRet.f32 %675, 1
  %678 = extractvalue %dx.types.CBufRet.f32 %675, 2
  %679 = call float @dx.op.dot3.f32(i32 55, float %656, float %664, float %672, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %680 = fsub fast float %679, %676
  %681 = fmul fast float %680, %677
  %682 = call float @dx.op.unary.f32(i32 7, float %681)  ; Saturate(value)
  %683 = fsub fast float 1.000000e+00, %678
  %684 = fmul fast float %682, %683
  %685 = fadd fast float %684, %678
  br label %686

; <label>:686                                     ; preds = %674, %645
  %687 = phi float [ %685, %674 ], [ %656, %645 ]
  %688 = phi float [ %685, %674 ], [ %664, %645 ]
  %689 = phi float [ %685, %674 ], [ %672, %645 ]
  %690 = fmul fast float %687, %513
  %691 = fmul fast float %688, %514
  %692 = fmul fast float %689, %515
  br label %693

; <label>:693                                     ; preds = %686, %512
  %694 = phi float [ %690, %686 ], [ %513, %512 ]
  %695 = phi float [ %691, %686 ], [ %514, %512 ]
  %696 = phi float [ %692, %686 ], [ %515, %512 ]
  %697 = extractvalue %dx.types.CBufRet.f32 %516, 1
  %698 = fcmp fast ogt float %697, 0.000000e+00
  br i1 %698, label %699, label %740, !dx.controlflow.hints !65

; <label>:699                                     ; preds = %693
  %700 = extractvalue %dx.types.CBufRet.f32 %516, 2
  %701 = bitcast float %700 to i32
  %702 = and i32 %701, 255
  %703 = uitofp i32 %702 to float
  %704 = lshr i32 %701, 8
  %705 = and i32 %704, 255
  %706 = uitofp i32 %705 to float
  %707 = lshr i32 %701, 16
  %708 = and i32 %707, 255
  %709 = uitofp i32 %708 to float
  %710 = fmul fast float %709, 0x3F70101020000000
  %711 = lshr i32 %701, 24
  %712 = uitofp i32 %711 to float
  %713 = fmul fast float %712, 0x3F70101020000000
  %714 = fadd fast float %709, %703
  %715 = fmul fast float %714, 0x3F70101020000000
  %716 = fadd fast float %706, %712
  %717 = fmul fast float %716, 0x3F70101020000000
  %718 = fdiv fast float %31, %715
  %719 = fdiv fast float %32, %717
  %720 = fsub fast float -0.000000e+00, %718
  %721 = fsub fast float -0.000000e+00, %719
  %722 = fcmp fast oge float %718, %720
  %723 = fcmp fast oge float %719, %721
  %724 = call float @dx.op.unary.f32(i32 6, float %718)  ; FAbs(value)
  %725 = call float @dx.op.unary.f32(i32 6, float %719)  ; FAbs(value)
  %726 = call float @dx.op.unary.f32(i32 22, float %724)  ; Frc(value)
  %727 = call float @dx.op.unary.f32(i32 22, float %725)  ; Frc(value)
  %728 = fsub fast float -0.000000e+00, %726
  %729 = fsub fast float -0.000000e+00, %727
  %730 = select i1 %722, float %726, float %728
  %731 = select i1 %723, float %727, float %729
  %732 = fmul fast float %715, %730
  %733 = fmul fast float %731, %717
  %734 = fcmp fast olt float %732, %710
  %735 = fcmp fast olt float %733, %713
  %736 = or i1 %734, %735
  br i1 %736, label %737, label %740, !dx.controlflow.hints !66

; <label>:737                                     ; preds = %699
  %738 = fsub fast float 1.000000e+00, %697
  %739 = fmul fast float %738, %329
  br label %740

; <label>:740                                     ; preds = %737, %699, %693
  %741 = phi float [ %739, %737 ], [ %329, %699 ], [ %329, %693 ]
  %742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %743 = extractvalue %dx.types.CBufRet.f32 %742, 3
  %744 = fcmp fast ogt float %743, 0.000000e+00
  br i1 %744, label %745, label %828, !dx.controlflow.hints !67

; <label>:745                                     ; preds = %740
  %746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %747 = extractvalue %dx.types.CBufRet.f32 %746, 2
  %748 = extractvalue %dx.types.CBufRet.f32 %746, 3
  %749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %750 = extractvalue %dx.types.CBufRet.f32 %749, 3
  %751 = fmul fast float %750, 1.000000e+01
  %752 = call float @dx.op.unary.f32(i32 27, float %751)  ; Round_ni(value)
  %753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %754 = extractvalue %dx.types.CBufRet.f32 %753, 0
  %755 = extractvalue %dx.types.CBufRet.f32 %753, 1
  %756 = fmul fast float %754, %31
  %757 = fmul fast float %755, %32
  %758 = call float @dx.op.unary.f32(i32 27, float %756)  ; Round_ni(value)
  %759 = call float @dx.op.unary.f32(i32 27, float %757)  ; Round_ni(value)
  %760 = fmul fast float %752, 0x4002B851E0000000
  %761 = call float @dx.op.unary.f32(i32 22, float %760)  ; Frc(value)
  %762 = fadd fast float %761, 0x3FB99999A0000000
  %763 = fadd fast float %762, %758
  %764 = fadd fast float %762, %759
  %765 = fmul fast float %763, 0x3FE1BEDF00000000
  %766 = call float @dx.op.unary.f32(i32 22, float %765)  ; Frc(value)
  %767 = fmul fast float %763, %766
  %768 = fadd fast float %767, %764
  %769 = fmul fast float %764, 0x3FD3BEBE20000000
  %770 = call float @dx.op.unary.f32(i32 22, float %769)  ; Frc(value)
  %771 = fmul fast float %764, %770
  %772 = fadd fast float %771, %763
  %773 = fmul fast float %768, %772
  %774 = call float @dx.op.unary.f32(i32 22, float %773)  ; Frc(value)
  %775 = extractvalue %dx.types.CBufRet.f32 %753, 3
  %776 = bitcast float %775 to i32
  %777 = and i32 %776, 255
  %778 = uitofp i32 %777 to float
  %779 = fmul fast float %778, 0x3F70101020000000
  %780 = fmul fast float %779, %747
  %781 = fcmp fast olt float %774, %780
  br i1 %781, label %782, label %789, !dx.controlflow.hints !68

; <label>:782                                     ; preds = %745
  %783 = fmul fast float %774, 0x4057091680000000
  %784 = call float @dx.op.unary.f32(i32 22, float %783)  ; Frc(value)
  %785 = fmul fast float %784, %694
  %786 = fmul fast float %784, %696
  %787 = fsub fast float 1.000000e+00, %784
  %788 = fmul fast float %787, %695
  br label %789

; <label>:789                                     ; preds = %782, %745
  %790 = phi float [ %785, %782 ], [ %694, %745 ]
  %791 = phi float [ %788, %782 ], [ %695, %745 ]
  %792 = phi float [ %786, %782 ], [ %696, %745 ]
  %793 = fmul fast float %774, 0x4028B0A3E0000000
  %794 = call float @dx.op.unary.f32(i32 22, float %793)  ; Frc(value)
  %795 = fmul fast float %779, %748
  %796 = fcmp fast olt float %794, %795
  br i1 %796, label %797, label %816, !dx.controlflow.hints !69

; <label>:797                                     ; preds = %789
  %798 = extractvalue %dx.types.CBufRet.f32 %753, 2
  %799 = fmul fast float %798, %31
  %800 = call float @dx.op.unary.f32(i32 27, float %799)  ; Round_ni(value)
  %801 = fmul fast float %800, 0x3FD5555560000000
  %802 = call float @dx.op.unary.f32(i32 22, float %801)  ; Frc(value)
  %803 = extractvalue %dx.types.CBufRet.f32 %746, 0
  %804 = extractvalue %dx.types.CBufRet.f32 %746, 1
  %805 = fcmp fast olt float %802, 0x3FD51EB860000000
  br i1 %805, label %809, label %806, !dx.controlflow.hints !70

; <label>:806                                     ; preds = %797
  %807 = fcmp fast olt float %802, 0x3FE51EB860000000
  br i1 %807, label %809, label %808, !dx.controlflow.hints !71

; <label>:808                                     ; preds = %806
  br label %809

; <label>:809                                     ; preds = %808, %806, %797
  %810 = phi float [ %803, %808 ], [ %804, %797 ], [ %803, %806 ]
  %811 = phi float [ %803, %808 ], [ %803, %797 ], [ %804, %806 ]
  %812 = phi float [ %804, %808 ], [ %803, %797 ], [ %803, %806 ]
  %813 = fmul fast float %810, %790
  %814 = fmul fast float %811, %791
  %815 = fmul fast float %812, %792
  br label %816

; <label>:816                                     ; preds = %809, %789
  %817 = phi float [ %813, %809 ], [ %790, %789 ]
  %818 = phi float [ %814, %809 ], [ %791, %789 ]
  %819 = phi float [ %815, %809 ], [ %792, %789 ]
  %820 = fmul fast float %774, 0x40223EF9E0000000
  %821 = call float @dx.op.unary.f32(i32 22, float %820)  ; Frc(value)
  %822 = fmul fast float %779, %743
  %823 = fmul fast float %821, %821
  %824 = fmul fast float %823, %822
  %825 = fsub fast float 1.000000e+00, %824
  %826 = call float @dx.op.unary.f32(i32 7, float %825)  ; Saturate(value)
  %827 = fmul fast float %826, %741
  br label %828

; <label>:828                                     ; preds = %816, %740
  %829 = phi float [ %817, %816 ], [ %694, %740 ]
  %830 = phi float [ %818, %816 ], [ %695, %740 ]
  %831 = phi float [ %819, %816 ], [ %696, %740 ]
  %832 = phi float [ %827, %816 ], [ %741, %740 ]
  %833 = extractvalue %dx.types.CBufRet.f32 %443, 0
  %834 = fcmp fast ogt float %833, 0.000000e+00
  br i1 %834, label %835, label %884, !dx.controlflow.hints !72

; <label>:835                                     ; preds = %828
  %836 = extractvalue %dx.types.CBufRet.f32 %443, 1
  %837 = fmul fast float %833, %21
  %838 = fmul fast float %836, %22
  %839 = call float @dx.op.unary.f32(i32 85, float %837)  ; DerivFineX(value)
  %840 = call float @dx.op.unary.f32(i32 86, float %837)  ; DerivFineY(value)
  %841 = call float @dx.op.unary.f32(i32 85, float %838)  ; DerivFineX(value)
  %842 = call float @dx.op.unary.f32(i32 86, float %838)  ; DerivFineY(value)
  %843 = fmul fast float %842, %839
  %844 = fmul fast float %841, %840
  %845 = fsub fast float %843, %844
  %846 = fdiv fast float 1.000000e+00, %845
  %847 = fmul fast float %846, %842
  %848 = fmul fast float %846, %840
  %849 = fmul fast float %846, %841
  %850 = fmul fast float %846, %839
  %851 = fmul fast float %847, %847
  %852 = fmul fast float %849, %849
  %853 = fadd fast float %851, %852
  %854 = call float @dx.op.unary.f32(i32 24, float %853)  ; Sqrt(value)
  %855 = fmul fast float %848, %848
  %856 = fmul fast float %850, %850
  %857 = fadd fast float %855, %856
  %858 = call float @dx.op.unary.f32(i32 24, float %857)  ; Sqrt(value)
  %859 = fmul fast float %854, %837
  %860 = fmul fast float %858, %838
  %861 = fsub fast float %859, %854
  %862 = fsub fast float %860, %858
  %863 = fsub fast float -0.000000e+00, %859
  %864 = fsub fast float -0.000000e+00, %860
  %865 = call float @dx.op.binary.f32(i32 35, float %863, float %861)  ; FMax(a,b)
  %866 = call float @dx.op.binary.f32(i32 35, float %864, float %862)  ; FMax(a,b)
  %867 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %865)  ; FMax(a,b)
  %868 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %866)  ; FMax(a,b)
  %869 = fmul fast float %867, %867
  %870 = fmul fast float %868, %868
  %871 = fadd fast float %870, %869
  %872 = call float @dx.op.unary.f32(i32 24, float %871)  ; Sqrt(value)
  %873 = call float @dx.op.binary.f32(i32 35, float %865, float %866)  ; FMax(a,b)
  %874 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %873)  ; FMin(a,b)
  %875 = fadd fast float %872, -1.000000e+00
  %876 = fadd fast float %875, %874
  %877 = fmul fast float %876, -5.000000e-01
  %878 = call float @dx.op.unary.f32(i32 7, float %877)  ; Saturate(value)
  %879 = fmul fast float %878, 2.000000e+00
  %880 = fsub fast float 3.000000e+00, %879
  %881 = fmul fast float %878, %878
  %882 = fmul fast float %881, %832
  %883 = fmul fast float %882, %880
  br label %884

; <label>:884                                     ; preds = %835, %828
  %885 = phi float [ %883, %835 ], [ %832, %828 ]
  %886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %887 = extractvalue %dx.types.CBufRet.f32 %886, 0
  %888 = extractvalue %dx.types.CBufRet.f32 %886, 1
  %889 = extractvalue %dx.types.CBufRet.f32 %886, 2
  %890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %891 = extractvalue %dx.types.CBufRet.f32 %890, 0
  %892 = extractvalue %dx.types.CBufRet.f32 %890, 1
  %893 = extractvalue %dx.types.CBufRet.f32 %890, 2
  %894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %895 = extractvalue %dx.types.CBufRet.f32 %894, 0
  %896 = extractvalue %dx.types.CBufRet.f32 %894, 1
  %897 = extractvalue %dx.types.CBufRet.f32 %894, 2
  %898 = fmul fast float %887, %829
  %899 = call float @dx.op.tertiary.f32(i32 46, float %888, float %830, float %898)  ; FMad(a,b,c)
  %900 = call float @dx.op.tertiary.f32(i32 46, float %889, float %831, float %899)  ; FMad(a,b,c)
  %901 = fmul fast float %891, %829
  %902 = call float @dx.op.tertiary.f32(i32 46, float %892, float %830, float %901)  ; FMad(a,b,c)
  %903 = call float @dx.op.tertiary.f32(i32 46, float %893, float %831, float %902)  ; FMad(a,b,c)
  %904 = fmul fast float %895, %829
  %905 = call float @dx.op.tertiary.f32(i32 46, float %896, float %830, float %904)  ; FMad(a,b,c)
  %906 = call float @dx.op.tertiary.f32(i32 46, float %897, float %831, float %905)  ; FMad(a,b,c)
  br i1 %336, label %907, label %1214, !dx.controlflow.hints !73

; <label>:907                                     ; preds = %884
  %908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %909 = extractvalue %dx.types.CBufRet.f32 %908, 0
  %910 = bitcast float %909 to i32
  %911 = and i32 %910, 128
  %912 = icmp eq i32 %911, 0
  br i1 %912, label %927, label %913

; <label>:913                                     ; preds = %907
  %914 = call float @dx.op.unary.f32(i32 24, float %900)  ; Sqrt(value)
  %915 = call float @dx.op.unary.f32(i32 24, float %903)  ; Sqrt(value)
  %916 = call float @dx.op.unary.f32(i32 24, float %906)  ; Sqrt(value)
  %917 = fmul fast float %914, 9.687500e-01
  %918 = fmul fast float %915, 9.687500e-01
  %919 = fmul fast float %916, 9.687500e-01
  %920 = fadd fast float %917, 1.562500e-02
  %921 = fadd fast float %918, 1.562500e-02
  %922 = fadd fast float %919, 1.562500e-02
  %923 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %13, float %920, float %921, float %922, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %924 = extractvalue %dx.types.ResRet.f32 %923, 0
  %925 = extractvalue %dx.types.ResRet.f32 %923, 1
  %926 = extractvalue %dx.types.ResRet.f32 %923, 2
  br label %1214

; <label>:927                                     ; preds = %907
  %928 = and i32 %910, 127
  switch i32 %928, label %1214 [
    i32 1, label %929
    i32 2, label %929
    i32 0, label %929
    i32 3, label %959
    i32 4, label %1080
  ]

; <label>:929                                     ; preds = %927, %927, %927
  %930 = call float @dx.op.unary.f32(i32 7, float %900)  ; Saturate(value)
  %931 = call float @dx.op.unary.f32(i32 7, float %903)  ; Saturate(value)
  %932 = call float @dx.op.unary.f32(i32 7, float %906)  ; Saturate(value)
  %933 = call float @dx.op.unary.f32(i32 23, float %930)  ; Log(value)
  %934 = call float @dx.op.unary.f32(i32 23, float %931)  ; Log(value)
  %935 = call float @dx.op.unary.f32(i32 23, float %932)  ; Log(value)
  %936 = fmul fast float %933, 0x3FDAAAAAA0000000
  %937 = fmul fast float %934, 0x3FDAAAAAA0000000
  %938 = fmul fast float %935, 0x3FDAAAAAA0000000
  %939 = call float @dx.op.unary.f32(i32 21, float %936)  ; Exp(value)
  %940 = call float @dx.op.unary.f32(i32 21, float %937)  ; Exp(value)
  %941 = call float @dx.op.unary.f32(i32 21, float %938)  ; Exp(value)
  %942 = fmul fast float %939, 0x3FF0E147A0000000
  %943 = fmul fast float %940, 0x3FF0E147A0000000
  %944 = fmul fast float %941, 0x3FF0E147A0000000
  %945 = fadd fast float %942, 0xBFAC28F5C0000000
  %946 = fadd fast float %943, 0xBFAC28F5C0000000
  %947 = fadd fast float %944, 0xBFAC28F5C0000000
  %948 = call float @dx.op.unary.f32(i32 7, float %945)  ; Saturate(value)
  %949 = call float @dx.op.unary.f32(i32 7, float %946)  ; Saturate(value)
  %950 = call float @dx.op.unary.f32(i32 7, float %947)  ; Saturate(value)
  %951 = extractvalue %dx.types.CBufRet.f32 %908, 2
  %952 = extractvalue %dx.types.CBufRet.f32 %908, 3
  %953 = fmul fast float %951, %948
  %954 = fmul fast float %951, %949
  %955 = fmul fast float %951, %950
  %956 = fadd fast float %953, %952
  %957 = fadd fast float %954, %952
  %958 = fadd fast float %955, %952
  br label %1214

; <label>:959                                     ; preds = %927
  %960 = fmul fast float %900, 0x4163D57C00000000
  %961 = fmul fast float %903, 0x4163D57C00000000
  %962 = fmul fast float %906, 0x4163D57C00000000
  %963 = fadd fast float %960, 9.999980e+05
  %964 = fadd fast float %961, 9.999980e+05
  %965 = fadd fast float %962, 9.999980e+05
  %966 = fmul fast float %963, %900
  %967 = fmul fast float %964, %903
  %968 = fmul fast float %965, %906
  %969 = fadd fast float %966, 0xC0AFE17A60000000
  %970 = fadd fast float %967, 0xC0AFE17A60000000
  %971 = fadd fast float %968, 0xC0AFE17A60000000
  %972 = fmul fast float %969, %900
  %973 = fmul fast float %970, %903
  %974 = fmul fast float %971, %906
  %975 = fmul fast float %900, 0x40F753C340000000
  %976 = fmul fast float %903, 0x40F753C340000000
  %977 = fmul fast float %906, 0x40F753C340000000
  %978 = fsub fast float 9.999990e+06, %975
  %979 = fsub fast float 9.999990e+06, %976
  %980 = fsub fast float 9.999990e+06, %977
  %981 = fmul fast float %978, %900
  %982 = fmul fast float %979, %903
  %983 = fmul fast float %980, %906
  %984 = fadd fast float %981, 0x4136D1DD80000000
  %985 = fadd fast float %982, 0x4136D1DD80000000
  %986 = fadd fast float %983, 0x4136D1DD80000000
  %987 = fmul fast float %984, %900
  %988 = fmul fast float %985, %903
  %989 = fmul fast float %986, %906
  %990 = fadd fast float %987, 1.000000e+00
  %991 = fadd fast float %988, 1.000000e+00
  %992 = fadd fast float %989, 1.000000e+00
  %993 = fdiv fast float %972, %990
  %994 = fdiv fast float %973, %991
  %995 = fdiv fast float %974, %992
  %996 = call float @dx.op.unary.f32(i32 7, float %993)  ; Saturate(value)
  %997 = call float @dx.op.unary.f32(i32 7, float %994)  ; Saturate(value)
  %998 = call float @dx.op.unary.f32(i32 7, float %995)  ; Saturate(value)
  %999 = extractvalue %dx.types.CBufRet.f32 %908, 1
  %1000 = fmul fast float %996, 0x3FE413A920000000
  %1001 = call float @dx.op.tertiary.f32(i32 46, float 0x3FD5134040000000, float %997, float %1000)  ; FMad(a,b,c)
  %1002 = call float @dx.op.tertiary.f32(i32 46, float 0x3FA62B6AE0000000, float %998, float %1001)  ; FMad(a,b,c)
  %1003 = fmul fast float %996, 0x3FB1B089A0000000
  %1004 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED6C8B40000000, float %997, float %1003)  ; FMad(a,b,c)
  %1005 = call float @dx.op.tertiary.f32(i32 46, float 0x3F8758E220000000, float %998, float %1004)  ; FMad(a,b,c)
  %1006 = fmul fast float %996, 0x3F90CB2960000000
  %1007 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB6872B00000000, float %997, float %1006)  ; FMad(a,b,c)
  %1008 = call float @dx.op.tertiary.f32(i32 46, float 0x3FECA8C160000000, float %998, float %1007)  ; FMad(a,b,c)
  %1009 = fmul fast float %1002, %999
  %1010 = fmul fast float %1005, %999
  %1011 = fmul fast float %1008, %999
  %1012 = fmul fast float %1009, 0x3F847AE140000000
  %1013 = fmul fast float %1010, 0x3F847AE140000000
  %1014 = fmul fast float %1011, 0x3F847AE140000000
  %1015 = fmul fast float %1009, 0x40B4D2F520000000
  %1016 = fmul fast float %1010, 0x40B4D2F520000000
  %1017 = fmul fast float %1011, 0x40B4D2F520000000
  %1018 = fadd fast float %1015, 0x41869ECF20000000
  %1019 = fadd fast float %1016, 0x41869ECF20000000
  %1020 = fadd fast float %1017, 0x41869ECF20000000
  %1021 = fmul fast float %1018, %1012
  %1022 = fmul fast float %1019, %1013
  %1023 = fmul fast float %1020, %1014
  %1024 = fadd fast float %1021, 0x417BB79C60000000
  %1025 = fadd fast float %1022, 0x417BB79C60000000
  %1026 = fadd fast float %1023, 0x417BB79C60000000
  %1027 = fmul fast float %1024, %1012
  %1028 = fmul fast float %1025, %1013
  %1029 = fmul fast float %1026, %1014
  %1030 = fadd fast float %1027, 0x41218DE180000000
  %1031 = fadd fast float %1028, 0x41218DE180000000
  %1032 = fadd fast float %1029, 0x41218DE180000000
  %1033 = fmul fast float %1030, %1012
  %1034 = fmul fast float %1031, %1013
  %1035 = fmul fast float %1032, %1014
  %1036 = fadd fast float %1033, 0x4077F174E0000000
  %1037 = fadd fast float %1034, 0x4077F174E0000000
  %1038 = fadd fast float %1035, 0x4077F174E0000000
  %1039 = fmul fast float %1036, %1012
  %1040 = fmul fast float %1037, %1013
  %1041 = fmul fast float %1038, %1014
  %1042 = fadd fast float %1039, 0x3F3FF79B80000000
  %1043 = fadd fast float %1040, 0x3F3FF79B80000000
  %1044 = fadd fast float %1041, 0x3F3FF79B80000000
  %1045 = fmul fast float %1009, 0x412442D320000000
  %1046 = fmul fast float %1010, 0x412442D320000000
  %1047 = fmul fast float %1011, 0x412442D320000000
  %1048 = fadd fast float %1045, 0x419385D5C0000000
  %1049 = fadd fast float %1046, 0x419385D5C0000000
  %1050 = fadd fast float %1047, 0x419385D5C0000000
  %1051 = fmul fast float %1048, %1012
  %1052 = fmul fast float %1049, %1013
  %1053 = fmul fast float %1050, %1014
  %1054 = fadd fast float %1051, 4.182885e+06
  %1055 = fadd fast float %1052, 4.182885e+06
  %1056 = fadd fast float %1053, 4.182885e+06
  %1057 = fmul fast float %1054, %1012
  %1058 = fmul fast float %1055, %1013
  %1059 = fmul fast float %1056, %1014
  %1060 = fadd fast float %1057, 0x40C4D633C0000000
  %1061 = fadd fast float %1058, 0x40C4D633C0000000
  %1062 = fadd fast float %1059, 0x40C4D633C0000000
  %1063 = fmul fast float %1060, %1012
  %1064 = fmul fast float %1061, %1013
  %1065 = fmul fast float %1062, %1014
  %1066 = fadd fast float %1063, 1.000000e+00
  %1067 = fadd fast float %1064, 1.000000e+00
  %1068 = fadd fast float %1065, 1.000000e+00
  %1069 = fdiv fast float %1042, %1066
  %1070 = fdiv fast float %1043, %1067
  %1071 = fdiv fast float %1044, %1068
  %1072 = extractvalue %dx.types.CBufRet.f32 %908, 2
  %1073 = extractvalue %dx.types.CBufRet.f32 %908, 3
  %1074 = fmul fast float %1072, %1069
  %1075 = fmul fast float %1072, %1070
  %1076 = fmul fast float %1072, %1071
  %1077 = fadd fast float %1074, %1073
  %1078 = fadd fast float %1075, %1073
  %1079 = fadd fast float %1076, %1073
  br label %1214

; <label>:1080                                    ; preds = %927
  %1081 = fmul fast float %900, 0x4163D57C00000000
  %1082 = fmul fast float %903, 0x4163D57C00000000
  %1083 = fmul fast float %906, 0x4163D57C00000000
  %1084 = fadd fast float %1081, 9.999980e+05
  %1085 = fadd fast float %1082, 9.999980e+05
  %1086 = fadd fast float %1083, 9.999980e+05
  %1087 = fmul fast float %1084, %900
  %1088 = fmul fast float %1085, %903
  %1089 = fmul fast float %1086, %906
  %1090 = fadd fast float %1087, 0xC0AFE17A60000000
  %1091 = fadd fast float %1088, 0xC0AFE17A60000000
  %1092 = fadd fast float %1089, 0xC0AFE17A60000000
  %1093 = fmul fast float %1090, %900
  %1094 = fmul fast float %1091, %903
  %1095 = fmul fast float %1092, %906
  %1096 = fmul fast float %900, 0x40F753C340000000
  %1097 = fmul fast float %903, 0x40F753C340000000
  %1098 = fmul fast float %906, 0x40F753C340000000
  %1099 = fsub fast float 9.999990e+06, %1096
  %1100 = fsub fast float 9.999990e+06, %1097
  %1101 = fsub fast float 9.999990e+06, %1098
  %1102 = fmul fast float %1099, %900
  %1103 = fmul fast float %1100, %903
  %1104 = fmul fast float %1101, %906
  %1105 = fadd fast float %1102, 0x4136D1DD80000000
  %1106 = fadd fast float %1103, 0x4136D1DD80000000
  %1107 = fadd fast float %1104, 0x4136D1DD80000000
  %1108 = fmul fast float %1105, %900
  %1109 = fmul fast float %1106, %903
  %1110 = fmul fast float %1107, %906
  %1111 = fadd fast float %1108, 1.000000e+00
  %1112 = fadd fast float %1109, 1.000000e+00
  %1113 = fadd fast float %1110, 1.000000e+00
  %1114 = fdiv fast float %1093, %1111
  %1115 = fdiv fast float %1094, %1112
  %1116 = fdiv fast float %1095, %1113
  %1117 = call float @dx.op.unary.f32(i32 7, float %1114)  ; Saturate(value)
  %1118 = call float @dx.op.unary.f32(i32 7, float %1115)  ; Saturate(value)
  %1119 = call float @dx.op.unary.f32(i32 7, float %1116)  ; Saturate(value)
  %1120 = extractvalue %dx.types.CBufRet.f32 %908, 1
  %1121 = fmul fast float %1117, 0x3FEA519BC0000000
  %1122 = call float @dx.op.tertiary.f32(i32 46, float 0x3FC6B990A0000000, float %1118, float %1121)  ; FMad(a,b,c)
  %1123 = fmul fast float %1117, 0x3FA0FED480000000
  %1124 = call float @dx.op.tertiary.f32(i32 46, float 0x3FEEF012C0000000, float %1118, float %1123)  ; FMad(a,b,c)
  %1125 = fmul fast float %1117, 0x3F917E1C00000000
  %1126 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB288A2E0000000, float %1118, float %1125)  ; FMad(a,b,c)
  %1127 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED22FAA0000000, float %1119, float %1126)  ; FMad(a,b,c)
  %1128 = call float @dx.op.binary.f32(i32 35, float %1117, float %1118)  ; FMax(a,b)
  %1129 = call float @dx.op.binary.f32(i32 35, float %1128, float %1119)  ; FMax(a,b)
  %1130 = fadd fast float %1129, -1.000000e+00
  %1131 = fmul fast float %1130, 2.500000e-01
  %1132 = call float @dx.op.unary.f32(i32 7, float %1131)  ; Saturate(value)
  %1133 = fsub fast float 1.000000e+00, %1132
  %1134 = fmul fast float %1133, %1122
  %1135 = fmul fast float %1133, %1124
  %1136 = fmul fast float %1133, %1127
  %1137 = fmul fast float %1132, %1117
  %1138 = fmul fast float %1132, %1118
  %1139 = fmul fast float %1132, %1119
  %1140 = fadd fast float %1134, %1137
  %1141 = fadd fast float %1135, %1138
  %1142 = fadd fast float %1136, %1139
  %1143 = fmul fast float %1140, %1120
  %1144 = fmul fast float %1141, %1120
  %1145 = fmul fast float %1142, %1120
  %1146 = fmul fast float %1143, 0x3F847AE140000000
  %1147 = fmul fast float %1144, 0x3F847AE140000000
  %1148 = fmul fast float %1145, 0x3F847AE140000000
  %1149 = fmul fast float %1143, 0x40B4D2F520000000
  %1150 = fmul fast float %1144, 0x40B4D2F520000000
  %1151 = fmul fast float %1145, 0x40B4D2F520000000
  %1152 = fadd fast float %1149, 0x41869ECF20000000
  %1153 = fadd fast float %1150, 0x41869ECF20000000
  %1154 = fadd fast float %1151, 0x41869ECF20000000
  %1155 = fmul fast float %1152, %1146
  %1156 = fmul fast float %1153, %1147
  %1157 = fmul fast float %1154, %1148
  %1158 = fadd fast float %1155, 0x417BB79C60000000
  %1159 = fadd fast float %1156, 0x417BB79C60000000
  %1160 = fadd fast float %1157, 0x417BB79C60000000
  %1161 = fmul fast float %1158, %1146
  %1162 = fmul fast float %1159, %1147
  %1163 = fmul fast float %1160, %1148
  %1164 = fadd fast float %1161, 0x41218DE180000000
  %1165 = fadd fast float %1162, 0x41218DE180000000
  %1166 = fadd fast float %1163, 0x41218DE180000000
  %1167 = fmul fast float %1164, %1146
  %1168 = fmul fast float %1165, %1147
  %1169 = fmul fast float %1166, %1148
  %1170 = fadd fast float %1167, 0x4077F174E0000000
  %1171 = fadd fast float %1168, 0x4077F174E0000000
  %1172 = fadd fast float %1169, 0x4077F174E0000000
  %1173 = fmul fast float %1170, %1146
  %1174 = fmul fast float %1171, %1147
  %1175 = fmul fast float %1172, %1148
  %1176 = fadd fast float %1173, 0x3F3FF79B80000000
  %1177 = fadd fast float %1174, 0x3F3FF79B80000000
  %1178 = fadd fast float %1175, 0x3F3FF79B80000000
  %1179 = fmul fast float %1143, 0x412442D320000000
  %1180 = fmul fast float %1144, 0x412442D320000000
  %1181 = fmul fast float %1145, 0x412442D320000000
  %1182 = fadd fast float %1179, 0x419385D5C0000000
  %1183 = fadd fast float %1180, 0x419385D5C0000000
  %1184 = fadd fast float %1181, 0x419385D5C0000000
  %1185 = fmul fast float %1182, %1146
  %1186 = fmul fast float %1183, %1147
  %1187 = fmul fast float %1184, %1148
  %1188 = fadd fast float %1185, 4.182885e+06
  %1189 = fadd fast float %1186, 4.182885e+06
  %1190 = fadd fast float %1187, 4.182885e+06
  %1191 = fmul fast float %1188, %1146
  %1192 = fmul fast float %1189, %1147
  %1193 = fmul fast float %1190, %1148
  %1194 = fadd fast float %1191, 0x40C4D633C0000000
  %1195 = fadd fast float %1192, 0x40C4D633C0000000
  %1196 = fadd fast float %1193, 0x40C4D633C0000000
  %1197 = fmul fast float %1194, %1146
  %1198 = fmul fast float %1195, %1147
  %1199 = fmul fast float %1196, %1148
  %1200 = fadd fast float %1197, 1.000000e+00
  %1201 = fadd fast float %1198, 1.000000e+00
  %1202 = fadd fast float %1199, 1.000000e+00
  %1203 = fdiv fast float %1176, %1200
  %1204 = fdiv fast float %1177, %1201
  %1205 = fdiv fast float %1178, %1202
  %1206 = extractvalue %dx.types.CBufRet.f32 %908, 2
  %1207 = extractvalue %dx.types.CBufRet.f32 %908, 3
  %1208 = fmul fast float %1206, %1203
  %1209 = fmul fast float %1206, %1204
  %1210 = fmul fast float %1206, %1205
  %1211 = fadd fast float %1208, %1207
  %1212 = fadd fast float %1209, %1207
  %1213 = fadd fast float %1210, %1207
  br label %1214

; <label>:1214                                    ; preds = %1080, %959, %929, %927, %913, %884
  %1215 = phi float [ %900, %884 ], [ %924, %913 ], [ %900, %927 ], [ %1211, %1080 ], [ %1077, %959 ], [ %956, %929 ]
  %1216 = phi float [ %903, %884 ], [ %925, %913 ], [ %903, %927 ], [ %1212, %1080 ], [ %1078, %959 ], [ %957, %929 ]
  %1217 = phi float [ %906, %884 ], [ %926, %913 ], [ %906, %927 ], [ %1213, %1080 ], [ %1079, %959 ], [ %958, %929 ]
  %1218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 225)  ; CBufferLoadLegacy(handle,regIndex)
  %1219 = extractvalue %dx.types.CBufRet.f32 %1218, 1
  %1220 = extractvalue %dx.types.CBufRet.f32 %1218, 3
  %1221 = select i1 %208, float %1219, float %1220
  %1222 = fmul fast float %1221, %885
  %1223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 234)  ; CBufferLoadLegacy(handle,regIndex)
  %1224 = extractvalue %dx.types.CBufRet.f32 %1223, 0
  %1225 = extractvalue %dx.types.CBufRet.f32 %1223, 2
  %1226 = call float @dx.op.unary.f32(i32 23, float %1222)  ; Log(value)
  %1227 = fmul fast float %1226, %1225
  %1228 = call float @dx.op.unary.f32(i32 21, float %1227)  ; Exp(value)
  %1229 = fmul fast float %1228, %1224
  %1230 = extractvalue %dx.types.CBufRet.f32 %1223, 1
  %1231 = extractvalue %dx.types.CBufRet.f32 %1223, 3
  %1232 = fmul fast float %1226, %1231
  %1233 = call float @dx.op.unary.f32(i32 21, float %1232)  ; Exp(value)
  %1234 = fmul fast float %1233, %1230
  %1235 = fadd fast float %1234, %1229
  %1236 = fmul fast float %1235, %1215
  %1237 = fmul fast float %1235, %1216
  %1238 = fmul fast float %1235, %1217
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1236)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1237)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1238)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1235)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

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
!dx.viewIdState = !{!27}
!dx.entryPoints = !{!28}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !16, !21}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{i32 0, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 74, i32 1, i32 4, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 73, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 70, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 15, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!15 = !{i32 8, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 71, i32 1, i32 4, i32 0, !7}
!16 = !{!17, !18, !19, !20}
!17 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!18 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 320, null}
!19 = !{i32 2, %perObject* undef, !"", i32 0, i32 1, i32 1, i32 176, null}
!20 = !{i32 3, %tonemapping* undef, !"", i32 0, i32 4, i32 1, i32 64, null}
!21 = !{!22, !23, !24, !25, !26}
!22 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!23 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!24 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!25 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!26 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!27 = !{[26 x i32] [i32 24, i32 4, i32 15, i32 15, i32 0, i32 0, i32 7, i32 7, i32 7, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 15, i32 15, i32 7, i32 7]}
!28 = !{void ()* @ps_main, !"ps_main", !29, !4, !53}
!29 = !{!30, !51, null}
!30 = !{!31, !34, !36, !37, !39, !41, !43, !45, !47, !49}
!31 = !{i32 0, !"SV_Position", i8 9, i8 3, !32, i8 4, i32 1, i8 4, i32 0, i8 0, !33}
!32 = !{i32 0}
!33 = !{i32 3, i32 3}
!34 = !{i32 1, !"COLOR", i8 9, i8 0, !32, i8 2, i32 1, i8 4, i32 1, i8 0, !35}
!35 = !{i32 3, i32 15}
!36 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !32, i8 2, i32 1, i8 2, i32 2, i8 0, !33}
!37 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !38, i8 2, i32 1, i8 2, i32 2, i8 2, !33}
!38 = !{i32 2}
!39 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !40, i8 2, i32 1, i8 2, i32 3, i8 0, null}
!40 = !{i32 3}
!41 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !42, i8 2, i32 1, i8 2, i32 3, i8 2, null}
!42 = !{i32 4}
!43 = !{i32 6, !"TEXCOORD", i8 9, i8 0, !44, i8 2, i32 1, i8 2, i32 4, i8 0, null}
!44 = !{i32 5}
!45 = !{i32 7, !"TEXCOORD", i8 9, i8 0, !46, i8 2, i32 1, i8 2, i32 4, i8 2, null}
!46 = !{i32 6}
!47 = !{i32 8, !"TEXCOORD", i8 9, i8 0, !48, i8 2, i32 1, i8 2, i32 5, i8 0, !33}
!48 = !{i32 1}
!49 = !{i32 9, !"TEXCOORD", i8 9, i8 0, !50, i8 2, i32 1, i8 2, i32 5, i8 2, !33}
!50 = !{i32 7}
!51 = !{!52}
!52 = !{i32 0, !"SV_Target", i8 9, i8 16, !32, i8 0, i32 1, i8 4, i32 0, i8 0, !35}
!53 = !{i32 0, i64 16}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 1}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 1}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 1}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 1}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 1}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 1}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 1}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 1}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 1}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 1}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 1}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 1}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}

