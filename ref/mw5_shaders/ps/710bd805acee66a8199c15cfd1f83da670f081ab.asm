;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy w
; COLOR                    0   xyzw        1     NONE   float   xyzw
; TEXCOORD                 0   xy          2     NONE   float   xy  
; TEXCOORD                 3   xyzw        3     NONE   float   xyzw
; TEXCOORD                 5   xy          4     NONE   float   xy  
; TEXCOORD                 8   xyzw        5     NONE   float   xyzw
; QUAD_POSITION            0   xyzw        6     NONE   float   xyzw
; COLOR                    3   xyz         7     NONE    uint   x z 
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
; shader hash: d4f3b1be0605b2fa36cc8018b7ffcbd1
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
; TEXCOORD                 0                 linear       
; TEXCOORD                 3                 linear       
; TEXCOORD                 5               centroid       
; TEXCOORD                 8                 linear       
; QUAD_POSITION            0        nointerpolation       
; COLOR                    3        nointerpolation       
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
;                                   texture     f32          2d      T3     t77,space2     1
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
; Number of inputs: 31, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 4, 5, 7, 8, 9, 12, 13, 14, 15, 16, 17, 20, 21, 22, 23, 24, 25, 26, 27, 28, 30 }
;   output 1 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 20, 21, 22, 23, 24, 25, 26, 27, 28, 30 }
;   output 2 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 22, 23, 24, 25, 26, 27, 28, 30 }
;   output 3 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 24, 25, 26, 27, 28, 30 }
;   output 4 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 24, 25, 26, 27, 28, 30 }
;   output 5 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 24, 25, 26, 27, 28, 30 }
;   output 6 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 24, 25, 26, 27, 28, 30 }
;   output 7 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 24, 25, 26, 27, 28, 30 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
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
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 77, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %15 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %16 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %17 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %18 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %19 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %20 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %21 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %42 = extractvalue %dx.types.CBufRet.f32 %41, 0
  %43 = fmul fast float %42, %36
  %44 = fmul fast float %42, %37
  %45 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %46 = extractvalue %dx.types.CBufRet.f32 %45, 2
  %47 = extractvalue %dx.types.CBufRet.f32 %45, 3
  %48 = fmul fast float %43, 2.000000e+00
  %49 = fmul fast float %48, %46
  %50 = fmul fast float %44, 2.000000e+00
  %51 = fmul fast float %50, %47
  %52 = fsub fast float 1.000000e+00, %49
  %53 = fsub fast float 1.000000e+00, %51
  %54 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %55 = extractvalue %dx.types.CBufRet.f32 %54, 0
  %56 = extractvalue %dx.types.CBufRet.f32 %54, 1
  %57 = extractvalue %dx.types.CBufRet.f32 %54, 2
  %58 = fmul fast float %52, %55
  %59 = fmul fast float %52, %56
  %60 = fmul fast float %52, %57
  %61 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %62 = extractvalue %dx.types.CBufRet.f32 %61, 0
  %63 = extractvalue %dx.types.CBufRet.f32 %61, 1
  %64 = extractvalue %dx.types.CBufRet.f32 %61, 2
  %65 = fmul fast float %53, %62
  %66 = fmul fast float %53, %63
  %67 = fmul fast float %53, %64
  %68 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %69 = extractvalue %dx.types.CBufRet.f32 %68, 0
  %70 = extractvalue %dx.types.CBufRet.f32 %68, 1
  %71 = extractvalue %dx.types.CBufRet.f32 %68, 2
  %72 = fadd fast float %65, %69
  %73 = fadd fast float %72, %58
  %74 = fadd fast float %66, %70
  %75 = fadd fast float %74, %59
  %76 = fadd fast float %67, %71
  %77 = fadd fast float %76, %60
  %78 = fmul fast float %73, %38
  %79 = fmul fast float %75, %38
  %80 = fmul fast float %77, %38
  %81 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %82 = extractvalue %dx.types.CBufRet.i32 %81, 3
  %83 = and i32 %82, 3
  %84 = icmp ne i32 %83, 0
  %85 = and i32 %82, 4
  %86 = icmp ne i32 %85, 0
  %87 = and i1 %84, %86
  br i1 %87, label %88, label %97

; <label>:88                                      ; preds = %0
  %89 = fmul fast float %47, %44
  %90 = fmul fast float %46, %43
  %91 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %10, float %90, float %89, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %92 = extractvalue %dx.types.ResRet.f32 %91, 0
  %93 = fsub fast float 1.000000e+00, %92
  %94 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %95 = extractvalue %dx.types.CBufRet.f32 %94, 0
  %96 = fcmp fast olt float %93, %95
  br label %100

; <label>:97                                      ; preds = %0
  %98 = icmp eq i32 %85, 0
  %99 = and i1 %84, %98
  br label %100

; <label>:100                                     ; preds = %97, %88
  %101 = phi i1 [ %96, %88 ], [ %99, %97 ]
  %102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %103 = extractvalue %dx.types.CBufRet.f32 %102, 2
  %104 = extractvalue %dx.types.CBufRet.f32 %102, 3
  %105 = fmul fast float %103, %43
  %106 = fmul fast float %104, %44
  %107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %108 = extractvalue %dx.types.ResRet.i32 %107, 0
  %109 = and i32 %108, 114688
  %110 = icmp ne i32 %109, 0
  %111 = select i1 %110, float %105, float 0.000000e+00
  %112 = select i1 %110, float %106, float 0.000000e+00
  %113 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %11, float %111, float %112, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %114 = extractvalue %dx.types.ResRet.f32 %113, 0
  %115 = fmul fast float %114, 2.550000e+02
  %116 = fptoui float %115 to i32
  %117 = select i1 %110, i32 %116, i32 0
  %118 = mul i32 %14, 208
  %119 = add i32 %118, 188
  %120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %119, i32 undef)  ; BufferLoad(srv,index,wot)
  %121 = extractvalue %dx.types.ResRet.i32 %120, 0
  %122 = and i32 %82, 114688
  %123 = and i32 %82, 8
  %124 = icmp ne i32 %123, 0
  %125 = or i1 %101, %124
  %126 = select i1 %125, i32 %122, i32 16384
  %127 = and i32 %126, %121
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %130

; <label>:129                                     ; preds = %100
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %130

; <label>:130                                     ; preds = %129, %100
  %131 = and i32 %121, 512
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %157, label %133

; <label>:133                                     ; preds = %130
  %134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.f32 %134, 2
  %136 = extractvalue %dx.types.CBufRet.f32 %134, 3
  %137 = fmul fast float %135, %43
  %138 = fmul fast float %136, %44
  %139 = extractvalue %dx.types.CBufRet.f32 %134, 0
  %140 = extractvalue %dx.types.CBufRet.f32 %134, 1
  %141 = fdiv fast float %139, %140
  %142 = fcmp fast ogt float %141, 0x3FFC71C720000000
  br i1 %142, label %143, label %149

; <label>:143                                     ; preds = %133
  %144 = fdiv fast float 0x3FFC71C720000000, %141
  %145 = fmul fast float %144, %138
  %146 = fsub fast float 1.000000e+00, %144
  %147 = fmul fast float %146, 5.000000e-01
  %148 = fadd fast float %147, %145
  br label %157

; <label>:149                                     ; preds = %133
  %150 = fcmp fast olt float %141, 0x3FFC71C720000000
  br i1 %150, label %151, label %157

; <label>:151                                     ; preds = %149
  %152 = fmul fast float %137, 5.625000e-01
  %153 = fmul fast float %152, %141
  %154 = fmul fast float %141, 2.812500e-01
  %155 = fsub fast float 5.000000e-01, %154
  %156 = fadd fast float %155, %153
  br label %157

; <label>:157                                     ; preds = %151, %149, %143, %130
  %158 = phi float [ %30, %130 ], [ %137, %143 ], [ %156, %151 ], [ %137, %149 ]
  %159 = phi float [ %31, %130 ], [ %148, %143 ], [ %138, %151 ], [ %138, %149 ]
  %160 = and i32 %121, 16
  %161 = icmp ne i32 %160, 0
  %162 = select i1 %161, float 1.000000e+00, float %35
  %163 = icmp eq i32 %160, 0
  br i1 %163, label %183, label %164, !dx.controlflow.hints !51

; <label>:164                                     ; preds = %157
  %165 = add i32 %118, 64
  %166 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %165, i32 undef)  ; BufferLoad(srv,index,wot)
  %167 = extractvalue %dx.types.ResRet.f32 %166, 0
  %168 = fadd fast float %167, 1.000000e+00
  %169 = fmul fast float %168, %35
  %170 = fsub fast float %169, %167
  %171 = fsub fast float %168, %170
  %172 = call float @dx.op.unary.f32(i32 7, float %171)  ; Saturate(value)
  %173 = fsub fast float 1.000000e+00, %169
  %174 = call float @dx.op.unary.f32(i32 7, float %173)  ; Saturate(value)
  %175 = fsub fast float %172, %174
  %176 = fsub fast float %162, %174
  %177 = fdiv fast float %176, %175
  %178 = call float @dx.op.unary.f32(i32 7, float %177)  ; Saturate(value)
  %179 = fmul fast float %178, 2.000000e+00
  %180 = fsub fast float 3.000000e+00, %179
  %181 = fmul fast float %178, %178
  %182 = fmul fast float %181, %180
  br label %183

; <label>:183                                     ; preds = %164, %157
  %184 = phi float [ %182, %164 ], [ %162, %157 ]
  %185 = fcmp fast ogt float %184, 0.000000e+00
  br i1 %185, label %187, label %186

; <label>:186                                     ; preds = %183
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %187

; <label>:187                                     ; preds = %186, %183
  %188 = call float @dx.op.unary.f32(i32 7, float %184)  ; Saturate(value)
  %189 = fmul fast float %43, 5.000000e-01
  %190 = fmul fast float %44, 5.000000e-01
  %191 = fptosi float %189 to i32
  %192 = fptosi float %190 to i32
  %193 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %2, i32 0, i32 %191, i32 %192, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %194 = extractvalue %dx.types.ResRet.i32 %193, 0
  %195 = lshr i32 %194, 18
  %196 = uitofp i32 %195 to float
  %197 = fmul fast float %196, 0x3F4C00EBA0000000
  %198 = call float @dx.op.unary.f32(i32 21, float %197)  ; Exp(value)
  %199 = fadd fast float %198, -1.000000e+00
  %200 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2, i32 0)  ; GetDimensions(handle,mipLevel)
  %201 = extractvalue %dx.types.Dimensions %200, 0
  %202 = sitofp i32 %201 to float
  %203 = extractvalue %dx.types.Dimensions %200, 1
  %204 = sitofp i32 %203 to float
  %205 = fcmp fast oge float %189, %202
  %206 = fcmp fast oge float %190, %204
  %207 = or i1 %205, %206
  %208 = select i1 %207, float 0x4197782600000000, float %199
  %209 = fsub fast float %208, %38
  %210 = fcmp fast ogt float %209, 0.000000e+00
  %211 = and i32 %117, -2
  %212 = icmp eq i32 %211, 2
  %213 = and i1 %212, %210
  %214 = xor i1 %210, true
  %215 = icmp eq i32 %117, 1
  %216 = and i1 %215, %214
  %217 = or i1 %213, %216
  %218 = and i32 %121, 262144
  %219 = icmp ne i32 %218, 0
  %220 = and i1 %219, %217
  %221 = xor i1 %217, true
  %222 = and i32 %121, 131072
  %223 = icmp ne i32 %222, 0
  %224 = and i1 %223, %221
  %225 = or i1 %220, %224
  br i1 %225, label %226, label %227

; <label>:226                                     ; preds = %187
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %227

; <label>:227                                     ; preds = %226, %187
  %228 = and i32 %121, 32
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %506, label %230, !dx.controlflow.hints !52

; <label>:230                                     ; preds = %227
  %231 = add i32 %118, 80
  %232 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %231, i32 undef)  ; BufferLoad(srv,index,wot)
  %233 = extractvalue %dx.types.ResRet.f32 %232, 0
  %234 = extractvalue %dx.types.ResRet.f32 %232, 1
  %235 = extractvalue %dx.types.ResRet.f32 %232, 2
  %236 = extractvalue %dx.types.ResRet.f32 %232, 3
  %237 = add i32 %118, 96
  %238 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %237, i32 undef)  ; BufferLoad(srv,index,wot)
  %239 = extractvalue %dx.types.ResRet.f32 %238, 0
  %240 = extractvalue %dx.types.ResRet.f32 %238, 1
  %241 = extractvalue %dx.types.ResRet.f32 %238, 2
  %242 = add i32 %118, 112
  %243 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %242, i32 undef)  ; BufferLoad(srv,index,wot)
  %244 = extractvalue %dx.types.ResRet.f32 %243, 0
  %245 = extractvalue %dx.types.ResRet.f32 %243, 1
  %246 = extractvalue %dx.types.ResRet.f32 %243, 2
  %247 = extractvalue %dx.types.ResRet.f32 %243, 3
  %248 = add i32 %118, 128
  %249 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %248, i32 undef)  ; BufferLoad(srv,index,wot)
  %250 = extractvalue %dx.types.ResRet.f32 %249, 0
  %251 = extractvalue %dx.types.ResRet.f32 %249, 1
  %252 = extractvalue %dx.types.ResRet.f32 %249, 2
  %253 = extractvalue %dx.types.ResRet.f32 %249, 3
  %254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %119, i32 undef)  ; BufferLoad(srv,index,wot)
  %255 = extractvalue %dx.types.ResRet.i32 %254, 0
  %256 = and i32 %255, 4096
  %257 = icmp ne i32 %256, 0
  %258 = fcmp fast une float %241, 0.000000e+00
  %259 = and i32 %255, 64
  %260 = icmp ne i32 %259, 0
  %261 = and i32 %255, 128
  %262 = icmp eq i32 %261, 0
  %263 = and i32 %255, 2048
  %264 = icmp eq i32 %263, 0
  %265 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5, i32 0)  ; GetDimensions(handle,mipLevel)
  %266 = extractvalue %dx.types.Dimensions %265, 0
  %267 = sitofp i32 %266 to float
  %268 = extractvalue %dx.types.Dimensions %265, 1
  %269 = sitofp i32 %268 to float
  %270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %271 = extractvalue %dx.types.CBufRet.f32 %270, 2
  %272 = extractvalue %dx.types.CBufRet.f32 %270, 3
  %273 = fmul fast float %271, %43
  %274 = fmul fast float %272, %44
  %275 = fmul fast float %273, %267
  %276 = fmul fast float %274, %269
  %277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %278 = extractvalue %dx.types.CBufRet.f32 %277, 1
  %279 = fsub fast float -0.000000e+00, %278
  %280 = fptoui float %279 to i32
  %281 = fptoui float %275 to i32
  %282 = fptoui float %276 to i32
  %283 = and i32 %280, 31
  %284 = lshr i32 %281, %283
  %285 = lshr i32 %282, %283
  %286 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 %280, i32 %284, i32 %285, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %287 = extractvalue %dx.types.ResRet.f32 %286, 0
  %288 = fcmp fast ogt float %287, -1.000000e+00
  %289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %290 = extractvalue %dx.types.CBufRet.f32 %289, 1
  %291 = select i1 %288, float %290, float 1.000000e+00
  %292 = fadd fast float %287, 1.000000e+00
  %293 = fmul fast float %291, %292
  %294 = call float @dx.op.unary.f32(i32 6, float %293)  ; FAbs(value)
  %295 = extractvalue %dx.types.CBufRet.f32 %289, 3
  %296 = fcmp fast oge float %294, %295
  %297 = select i1 %296, float 0x4197782600000000, float %294
  br i1 %264, label %387, label %298, !dx.controlflow.hints !53

; <label>:298                                     ; preds = %230
  %299 = fmul fast float %48, %271
  %300 = fmul fast float %50, %272
  %301 = fsub fast float 1.000000e+00, %299
  %302 = fsub fast float 1.000000e+00, %300
  %303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %304 = extractvalue %dx.types.CBufRet.f32 %303, 0
  %305 = extractvalue %dx.types.CBufRet.f32 %303, 1
  %306 = extractvalue %dx.types.CBufRet.f32 %303, 2
  %307 = fmul fast float %301, %304
  %308 = fmul fast float %301, %305
  %309 = fmul fast float %301, %306
  %310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %311 = extractvalue %dx.types.CBufRet.f32 %310, 0
  %312 = extractvalue %dx.types.CBufRet.f32 %310, 1
  %313 = extractvalue %dx.types.CBufRet.f32 %310, 2
  %314 = fmul fast float %302, %311
  %315 = fmul fast float %302, %312
  %316 = fmul fast float %302, %313
  %317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %318 = extractvalue %dx.types.CBufRet.f32 %317, 0
  %319 = extractvalue %dx.types.CBufRet.f32 %317, 1
  %320 = extractvalue %dx.types.CBufRet.f32 %317, 2
  %321 = fadd fast float %314, %318
  %322 = fadd fast float %321, %307
  %323 = fadd fast float %315, %319
  %324 = fadd fast float %323, %308
  %325 = fadd fast float %316, %320
  %326 = fadd fast float %325, %309
  %327 = fmul fast float %322, %297
  %328 = fmul fast float %324, %297
  %329 = fmul fast float %326, %297
  %330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %331 = extractvalue %dx.types.CBufRet.f32 %330, 0
  %332 = extractvalue %dx.types.CBufRet.f32 %330, 1
  %333 = extractvalue %dx.types.CBufRet.f32 %330, 2
  %334 = fsub fast float %331, %16
  %335 = fadd fast float %334, %327
  %336 = fsub fast float %332, %17
  %337 = fadd fast float %336, %328
  %338 = fsub fast float %333, %18
  %339 = fadd fast float %338, %329
  %340 = fmul fast float %19, %19
  %341 = call float @dx.op.dot3.f32(i32 55, float %335, float %337, float %339, float %335, float %337, float %339)  ; Dot3(ax,ay,az,bx,by,bz)
  %342 = fsub fast float %340, %341
  %343 = fmul fast float %240, %340
  %344 = fmul fast float %239, %340
  %345 = fcmp fast olt float %342, %343
  %346 = fcmp fast ogt float %342, %344
  %347 = or i1 %345, %346
  %348 = select i1 %347, float 0.000000e+00, float %342
  %349 = fsub fast float %239, %240
  %350 = fmul fast float %349, %340
  %351 = fsub fast float %348, %343
  %352 = fdiv fast float %351, %350
  %353 = call float @dx.op.unary.f32(i32 7, float %352)  ; Saturate(value)
  %354 = fmul fast float %353, 2.000000e+00
  %355 = fsub fast float 3.000000e+00, %354
  %356 = fmul fast float %353, %353
  %357 = fmul fast float %356, %355
  %358 = fmul fast float %244, %32
  %359 = fmul fast float %245, %33
  %360 = fmul fast float %246, %34
  %361 = fsub fast float %358, %250
  %362 = fsub fast float %359, %251
  %363 = fsub fast float %360, %252
  %364 = fsub fast float %247, %253
  %365 = fmul fast float %357, %361
  %366 = fmul fast float %357, %362
  %367 = fmul fast float %357, %363
  %368 = fmul fast float %357, %364
  %369 = fadd fast float %365, %250
  %370 = fadd fast float %366, %251
  %371 = fadd fast float %367, %252
  %372 = fadd fast float %368, %253
  %373 = fmul fast float %244, %20
  %374 = fmul fast float %245, %21
  %375 = fmul fast float %246, %22
  %376 = fsub fast float %373, %250
  %377 = fsub fast float %374, %251
  %378 = fsub fast float %375, %252
  %379 = fmul fast float %357, %376
  %380 = fmul fast float %357, %377
  %381 = fmul fast float %357, %378
  %382 = fadd fast float %379, %250
  %383 = fadd fast float %380, %251
  %384 = fadd fast float %381, %252
  %385 = fmul fast float %233, %233
  %386 = fmul fast float %385, %348
  br label %494

; <label>:387                                     ; preds = %230
  %388 = and i32 %255, 256
  %389 = icmp eq i32 %388, 0
  %390 = fsub fast float %297, %38
  br i1 %389, label %451, label %391

; <label>:391                                     ; preds = %387
  %392 = fadd fast float %239, %38
  %393 = fcmp fast olt float %297, %38
  %394 = fcmp fast ogt float %297, %392
  %395 = or i1 %393, %394
  %396 = select i1 %395, float 0.000000e+00, float %390
  %397 = call float @dx.op.unary.f32(i32 83, float %297)  ; DerivCoarseX(value)
  %398 = call float @dx.op.unary.f32(i32 84, float %297)  ; DerivCoarseY(value)
  %399 = fmul fast float %397, %397
  %400 = fmul fast float %398, %398
  %401 = fadd fast float %400, %399
  %402 = call float @dx.op.unary.f32(i32 24, float %401)  ; Sqrt(value)
  %403 = extractvalue %dx.types.CBufRet.f32 %277, 2
  %404 = fmul fast float %403, %402
  %405 = call float @dx.op.unary.f32(i32 7, float %404)  ; Saturate(value)
  %406 = fmul fast float %405, %240
  %407 = fdiv fast float %390, %406
  %408 = call float @dx.op.unary.f32(i32 7, float %407)  ; Saturate(value)
  %409 = fmul fast float %408, 2.000000e+00
  %410 = fsub fast float 3.000000e+00, %409
  %411 = fmul fast float %408, %408
  %412 = fmul fast float %411, %410
  %413 = fsub fast float %297, %392
  %414 = fadd fast float %413, %406
  %415 = fdiv fast float %414, %406
  %416 = call float @dx.op.unary.f32(i32 7, float %415)  ; Saturate(value)
  %417 = fmul fast float %416, 2.000000e+00
  %418 = fsub fast float 3.000000e+00, %417
  %419 = fmul fast float %416, %416
  %420 = fmul fast float %419, %418
  %421 = fsub fast float %412, %420
  %422 = fmul fast float %244, %32
  %423 = fmul fast float %245, %33
  %424 = fmul fast float %246, %34
  %425 = fsub fast float %422, %250
  %426 = fsub fast float %423, %251
  %427 = fsub fast float %424, %252
  %428 = fsub fast float %247, %253
  %429 = fmul fast float %421, %425
  %430 = fmul fast float %421, %426
  %431 = fmul fast float %421, %427
  %432 = fmul fast float %421, %428
  %433 = fadd fast float %429, %250
  %434 = fadd fast float %430, %251
  %435 = fadd fast float %431, %252
  %436 = fadd fast float %432, %253
  %437 = fmul fast float %244, %20
  %438 = fmul fast float %245, %21
  %439 = fmul fast float %246, %22
  %440 = fsub fast float %437, %250
  %441 = fsub fast float %438, %251
  %442 = fsub fast float %439, %252
  %443 = fmul fast float %421, %440
  %444 = fmul fast float %421, %441
  %445 = fmul fast float %421, %442
  %446 = fadd fast float %443, %250
  %447 = fadd fast float %444, %251
  %448 = fadd fast float %445, %252
  %449 = fmul fast float %396, %233
  %450 = call float @dx.op.unary.f32(i32 6, float %449)  ; FAbs(value)
  br label %494

; <label>:451                                     ; preds = %387
  br i1 %258, label %452, label %465

; <label>:452                                     ; preds = %451
  %453 = fdiv fast float 5.000000e+01, %19
  %454 = select i1 %260, float %453, float 1.000000e+00
  %455 = fmul fast float %454, %233
  %456 = fmul fast float %30, 2.000000e+00
  %457 = fmul fast float %31, 2.000000e+00
  %458 = fadd fast float %456, -1.000000e+00
  %459 = fadd fast float %457, -1.000000e+00
  %460 = call float @dx.op.dot2.f32(i32 54, float %458, float %459, float %458, float %459)  ; Dot2(ax,ay,bx,by)
  %461 = fmul fast float %241, %19
  %462 = fmul fast float %461, %460
  %463 = fsub fast float %390, %462
  %464 = fmul fast float %455, %463
  br label %494

; <label>:465                                     ; preds = %451
  br i1 %262, label %486, label %466

; <label>:466                                     ; preds = %465
  %467 = fmul fast float %19, 0x3F947AE140000000
  %468 = select i1 %260, float %467, float 1.000000e+00
  %469 = fdiv fast float 1.000000e+00, %468
  %470 = fmul fast float %468, %234
  %471 = fmul fast float %468, %235
  %472 = fmul fast float %469, %236
  %473 = call float @dx.op.unary.f32(i32 6, float %390)  ; FAbs(value)
  %474 = fcmp fast olt float %473, %470
  br i1 %474, label %475, label %479, !dx.controlflow.hints !54

; <label>:475                                     ; preds = %466
  %476 = fmul fast float %469, %233
  %477 = fmul fast float %476, %473
  %478 = call float @dx.op.unary.f32(i32 6, float %477)  ; FAbs(value)
  br label %494

; <label>:479                                     ; preds = %466
  %480 = fcmp fast ogt float %473, %471
  br i1 %480, label %481, label %494

; <label>:481                                     ; preds = %479
  %482 = fsub fast float %473, %471
  %483 = fmul fast float %472, %482
  %484 = call float @dx.op.unary.f32(i32 6, float %483)  ; FAbs(value)
  %485 = fsub fast float 1.000000e+00, %484
  br label %494

; <label>:486                                     ; preds = %465
  %487 = fdiv fast float 5.000000e+01, %19
  %488 = select i1 %260, float %487, float 1.000000e+00
  %489 = fmul fast float %488, %233
  %490 = call float @dx.op.unary.f32(i32 6, float %209)  ; FAbs(value)
  %491 = select i1 %257, float %490, float 0x47EFFFFFE0000000
  %492 = call float @dx.op.binary.f32(i32 36, float %390, float %491)  ; FMin(a,b)
  %493 = fmul fast float %489, %492
  br label %494

; <label>:494                                     ; preds = %486, %481, %479, %475, %452, %391, %298
  %495 = phi float [ %386, %298 ], [ %450, %391 ], [ %464, %452 ], [ %493, %486 ], [ %478, %475 ], [ %485, %481 ], [ %473, %479 ]
  %496 = phi float [ %382, %298 ], [ %446, %391 ], [ %20, %452 ], [ %20, %486 ], [ %20, %475 ], [ %20, %481 ], [ %20, %479 ]
  %497 = phi float [ %383, %298 ], [ %447, %391 ], [ %21, %452 ], [ %21, %486 ], [ %21, %475 ], [ %21, %481 ], [ %21, %479 ]
  %498 = phi float [ %384, %298 ], [ %448, %391 ], [ %22, %452 ], [ %22, %486 ], [ %22, %475 ], [ %22, %481 ], [ %22, %479 ]
  %499 = phi float [ %369, %298 ], [ %433, %391 ], [ %32, %452 ], [ %32, %486 ], [ %32, %475 ], [ %32, %481 ], [ %32, %479 ]
  %500 = phi float [ %370, %298 ], [ %434, %391 ], [ %33, %452 ], [ %33, %486 ], [ %33, %475 ], [ %33, %481 ], [ %33, %479 ]
  %501 = phi float [ %371, %298 ], [ %435, %391 ], [ %34, %452 ], [ %34, %486 ], [ %34, %475 ], [ %34, %481 ], [ %34, %479 ]
  %502 = phi float [ %372, %298 ], [ %436, %391 ], [ 1.000000e+00, %452 ], [ 1.000000e+00, %486 ], [ 1.000000e+00, %475 ], [ 1.000000e+00, %481 ], [ 1.000000e+00, %479 ]
  %503 = call float @dx.op.unary.f32(i32 7, float %495)  ; Saturate(value)
  %504 = fmul fast float %502, %188
  %505 = fmul fast float %504, %503
  br label %506

; <label>:506                                     ; preds = %494, %227
  %507 = phi float [ %499, %494 ], [ %32, %227 ]
  %508 = phi float [ %500, %494 ], [ %33, %227 ]
  %509 = phi float [ %501, %494 ], [ %34, %227 ]
  %510 = phi float [ %505, %494 ], [ %188, %227 ]
  %511 = phi float [ %496, %494 ], [ %20, %227 ]
  %512 = phi float [ %497, %494 ], [ %21, %227 ]
  %513 = phi float [ %498, %494 ], [ %22, %227 ]
  %514 = fmul fast float %511, %23
  %515 = fmul fast float %512, %23
  %516 = fmul fast float %513, %23
  %517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %518 = extractvalue %dx.types.CBufRet.f32 %517, 2
  %519 = fptosi float %38 to i32
  %520 = sitofp i32 %519 to float
  %521 = fadd fast float %518, %520
  %522 = fmul fast float %521, 0x3FE3C6EF40000000
  %523 = frem fast float %43, 2.560000e+02
  %524 = frem fast float %44, 2.560000e+02
  %525 = fptoui float %523 to i32
  %526 = fptoui float %524 to i32
  %527 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 0, i32 %525, i32 %526, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %528 = extractvalue %dx.types.ResRet.f32 %527, 0
  %529 = fadd fast float %528, %522
  %530 = call float @dx.op.unary.f32(i32 22, float %529)  ; Frc(value)
  %531 = and i32 %121, 1
  %532 = icmp eq i32 %531, 0
  br i1 %532, label %592, label %533, !dx.controlflow.hints !55

; <label>:533                                     ; preds = %506
  %534 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %118, i32 undef)  ; BufferLoad(srv,index,wot)
  %535 = extractvalue %dx.types.ResRet.f32 %534, 2
  %536 = extractvalue %dx.types.ResRet.f32 %534, 3
  %537 = add i32 %118, 16
  %538 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %539 = extractvalue %dx.types.ResRet.f32 %538, 0
  %540 = extractvalue %dx.types.ResRet.f32 %538, 1
  %541 = extractvalue %dx.types.ResRet.f32 %538, 2
  %542 = add i32 %118, 32
  %543 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %542, i32 undef)  ; BufferLoad(srv,index,wot)
  %544 = extractvalue %dx.types.ResRet.f32 %543, 0
  %545 = extractvalue %dx.types.ResRet.f32 %543, 1
  %546 = extractvalue %dx.types.ResRet.f32 %543, 2
  %547 = and i32 %121, 2
  %548 = icmp eq i32 %547, 0
  %549 = call float @dx.op.dot3.f32(i32 55, float %26, float %27, float %28, float %26, float %27, float %28)  ; Dot3(ax,ay,az,bx,by,bz)
  %550 = call float @dx.op.unary.f32(i32 25, float %549)  ; Rsqrt(value)
  %551 = fmul fast float %550, %26
  %552 = fmul fast float %550, %27
  %553 = fmul fast float %550, %28
  %554 = call float @dx.op.dot3.f32(i32 55, float %78, float %79, float %80, float %78, float %79, float %80)  ; Dot3(ax,ay,az,bx,by,bz)
  %555 = call float @dx.op.unary.f32(i32 25, float %554)  ; Rsqrt(value)
  %556 = fmul fast float %555, %78
  %557 = fmul fast float %555, %79
  %558 = fmul fast float %555, %80
  %559 = call float @dx.op.dot3.f32(i32 55, float %556, float %557, float %558, float %551, float %552, float %553)  ; Dot3(ax,ay,az,bx,by,bz)
  %560 = fmul fast float %559, %559
  %561 = fmul fast float %560, %535
  %562 = fadd fast float %561, %536
  %563 = call float @dx.op.unary.f32(i32 7, float %562)  ; Saturate(value)
  br i1 %548, label %564, label %574, !dx.controlflow.hints !56

; <label>:564                                     ; preds = %533
  %565 = extractvalue %dx.types.ResRet.f32 %534, 1
  %566 = extractvalue %dx.types.ResRet.f32 %534, 0
  %567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %568 = extractvalue %dx.types.CBufRet.f32 %567, 3
  %569 = fmul fast float %568, %554
  %570 = fsub fast float %566, %569
  %571 = fmul fast float %570, %565
  %572 = call float @dx.op.unary.f32(i32 7, float %571)  ; Saturate(value)
  %573 = fmul fast float %572, %563
  br label %574

; <label>:574                                     ; preds = %564, %533
  %575 = phi float [ %573, %564 ], [ %563, %533 ]
  %576 = fsub fast float %539, %544
  %577 = fsub fast float %540, %545
  %578 = fsub fast float %541, %546
  %579 = fmul fast float %575, %576
  %580 = fmul fast float %575, %577
  %581 = fmul fast float %575, %578
  %582 = fadd fast float %579, %544
  %583 = fadd fast float %580, %545
  %584 = fadd fast float %581, %546
  %585 = fmul fast float %582, %507
  %586 = fmul fast float %583, %508
  %587 = fmul fast float %584, %509
  %588 = fmul fast float %582, %514
  %589 = fmul fast float %583, %515
  %590 = fmul fast float %584, %516
  %591 = fmul fast float %575, %510
  br label %592

; <label>:592                                     ; preds = %574, %506
  %593 = phi float [ %585, %574 ], [ %507, %506 ]
  %594 = phi float [ %586, %574 ], [ %508, %506 ]
  %595 = phi float [ %587, %574 ], [ %509, %506 ]
  %596 = phi float [ %591, %574 ], [ %510, %506 ]
  %597 = phi float [ %588, %574 ], [ %514, %506 ]
  %598 = phi float [ %589, %574 ], [ %515, %506 ]
  %599 = phi float [ %590, %574 ], [ %516, %506 ]
  %600 = add i32 %15, 72
  %601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %600, i32 undef)  ; BufferLoad(srv,index,wot)
  %602 = extractvalue %dx.types.ResRet.i32 %601, 0
  %603 = add i32 %602, 0
  %604 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %603, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %605 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %604, %dx.types.Handle %39, float %158, float %159, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %606 = extractvalue %dx.types.ResRet.f32 %605, 0
  %607 = extractvalue %dx.types.ResRet.f32 %605, 1
  %608 = extractvalue %dx.types.ResRet.f32 %605, 2
  %609 = add i32 %15, 56
  %610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %609, i32 undef)  ; BufferLoad(srv,index,wot)
  %611 = extractvalue %dx.types.ResRet.i32 %610, 0
  %612 = and i32 %611, 255
  %613 = uitofp i32 %612 to float
  %614 = fmul fast float %613, 0x3F70101020000000
  %615 = lshr i32 %611, 8
  %616 = and i32 %615, 255
  %617 = uitofp i32 %616 to float
  %618 = fmul fast float %617, 0x3F70101020000000
  %619 = lshr i32 %611, 16
  %620 = and i32 %619, 255
  %621 = uitofp i32 %620 to float
  %622 = fmul fast float %621, 0x3F70101020000000
  %623 = add i32 %15, 76
  %624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %623, i32 undef)  ; BufferLoad(srv,index,wot)
  %625 = extractvalue %dx.types.ResRet.i32 %624, 0
  %626 = add i32 %625, 0
  %627 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %626, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %628 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %627, %dx.types.Handle %39, float %158, float %159, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %629 = extractvalue %dx.types.ResRet.f32 %628, 0
  %630 = extractvalue %dx.types.ResRet.f32 %628, 1
  %631 = extractvalue %dx.types.ResRet.f32 %628, 2
  %632 = add i32 %15, 44
  %633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %632, i32 undef)  ; BufferLoad(srv,index,wot)
  %634 = extractvalue %dx.types.ResRet.i32 %633, 0
  %635 = shl i32 %634, 4
  %636 = and i32 %635, 32752
  %637 = call float @dx.op.legacyF16ToF32(i32 131, i32 %636)  ; LegacyF16ToF32(value)
  %638 = lshr i32 %634, 7
  %639 = and i32 %638, 32752
  %640 = call float @dx.op.legacyF16ToF32(i32 131, i32 %639)  ; LegacyF16ToF32(value)
  %641 = lshr i32 %634, 22
  %642 = shl nuw nsw i32 %641, 5
  %643 = call float @dx.op.legacyF16ToF32(i32 131, i32 %642)  ; LegacyF16ToF32(value)
  %644 = fmul fast float %637, %629
  %645 = fmul fast float %640, %630
  %646 = fmul fast float %643, %631
  %647 = add i32 %15, 48
  %648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %647, i32 undef)  ; BufferLoad(srv,index,wot)
  %649 = extractvalue %dx.types.ResRet.i32 %648, 0
  %650 = lshr i32 %649, 22
  %651 = shl nuw nsw i32 %650, 5
  %652 = call float @dx.op.legacyF16ToF32(i32 131, i32 %651)  ; LegacyF16ToF32(value)
  %653 = fmul fast float %652, %644
  %654 = select i1 %101, float %653, float %644
  %655 = add i32 %15, 40
  %656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %655, i32 undef)  ; BufferLoad(srv,index,wot)
  %657 = extractvalue %dx.types.ResRet.i32 %656, 0
  %658 = and i32 %657, 255
  %659 = uitofp i32 %658 to float
  %660 = fmul fast float %659, 0x3F70101020000000
  %661 = fmul fast float %660, %660
  %662 = add i32 %15, 80
  %663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %662, i32 undef)  ; BufferLoad(srv,index,wot)
  %664 = extractvalue %dx.types.ResRet.i32 %663, 0
  %665 = add i32 %664, 0
  %666 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %665, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %667 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %666, %dx.types.Handle %40, float %158, float %159, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %668 = extractvalue %dx.types.ResRet.f32 %667, 0
  %669 = fmul fast float %661, %668
  %670 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %10, float %24, float %25, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %671 = extractvalue %dx.types.ResRet.f32 %670, 0
  %672 = extractvalue %dx.types.ResRet.f32 %670, 1
  %673 = extractvalue %dx.types.ResRet.f32 %670, 2
  %674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %675 = extractvalue %dx.types.CBufRet.f32 %674, 1
  %676 = fmul fast float %675, %671
  %677 = fmul fast float %675, %672
  %678 = fmul fast float %675, %673
  %679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %680 = extractvalue %dx.types.CBufRet.f32 %679, 0
  %681 = fmul fast float %606, %593
  %682 = fmul fast float %614, %614
  %683 = fmul fast float %682, %681
  %684 = fmul fast float %683, %680
  %685 = fmul fast float %607, %594
  %686 = fmul fast float %618, %618
  %687 = fmul fast float %686, %685
  %688 = fmul fast float %687, %680
  %689 = fmul fast float %608, %595
  %690 = fmul fast float %622, %622
  %691 = fmul fast float %690, %689
  %692 = fmul fast float %691, %680
  %693 = fmul fast float %654, %597
  %694 = fmul fast float %645, %598
  %695 = fmul fast float %646, %599
  %696 = call float @dx.op.dot3.f32(i32 55, float %693, float %694, float %695, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %697 = select i1 %101, float 0.000000e+00, float %693
  %698 = select i1 %101, float %696, float %694
  %699 = select i1 %101, float 0.000000e+00, float %695
  %700 = call float @dx.op.dot3.f32(i32 55, float %684, float %688, float %692, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %701 = add i32 %15, 32
  %702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %701, i32 undef)  ; BufferLoad(srv,index,wot)
  %703 = extractvalue %dx.types.ResRet.i32 %702, 0
  %704 = and i32 %703, 255
  %705 = uitofp i32 %704 to float
  %706 = lshr i32 %703, 8
  %707 = and i32 %706, 255
  %708 = uitofp i32 %707 to float
  %709 = fmul fast float %708, %700
  %710 = fadd fast float %709, %705
  %711 = fmul fast float %710, 0x3F70101020000000
  %712 = call float @dx.op.unary.f32(i32 7, float %711)  ; Saturate(value)
  %713 = and i32 %121, 8192
  %714 = icmp eq i32 %713, 0
  %715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %716 = extractvalue %dx.types.CBufRet.f32 %715, 0
  br i1 %714, label %723, label %717, !dx.controlflow.hints !57

; <label>:717                                     ; preds = %592
  %718 = add i32 %118, 176
  %719 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %718, i32 undef)  ; BufferLoad(srv,index,wot)
  %720 = extractvalue %dx.types.ResRet.f32 %719, 0
  %721 = fcmp fast oge float %720, 0.000000e+00
  %722 = select i1 %721, float %720, float %716
  br label %723

; <label>:723                                     ; preds = %717, %592
  %724 = phi float [ %722, %717 ], [ %716, %592 ]
  %725 = fmul fast float %511, %29
  %726 = fmul fast float %725, %654
  %727 = fmul fast float %512, %29
  %728 = fmul fast float %727, %645
  %729 = fadd fast float %669, -1.000000e+00
  %730 = fmul fast float %729, %596
  %731 = fadd fast float %730, 1.000000e+00
  %732 = call float @dx.op.dot3.f32(i32 55, float %731, float %731, float %731, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %733 = fsub fast float 1.000000e+00, %732
  %734 = fadd fast float %684, %726
  %735 = fmul fast float %676, %734
  %736 = fadd fast float %735, %697
  %737 = fadd fast float %688, %728
  %738 = fmul fast float %677, %737
  %739 = fadd fast float %738, %698
  %740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %741 = extractvalue %dx.types.CBufRet.f32 %740, 0
  br i1 %101, label %742, label %766

; <label>:742                                     ; preds = %723
  %743 = fmul fast float %724, %712
  %744 = fsub fast float 1.000000e+00, %712
  %745 = call float @dx.op.unary.f32(i32 7, float %744)  ; Saturate(value)
  %746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %747 = extractvalue %dx.types.CBufRet.f32 %746, 3
  %748 = fmul fast float %747, %745
  %749 = fadd fast float %748, %743
  %750 = fadd fast float %736, %739
  %751 = fmul fast float %596, %750
  %752 = fmul fast float %741, %751
  %753 = extractvalue %dx.types.CBufRet.f32 %746, 1
  %754 = fsub fast float %749, %753
  %755 = extractvalue %dx.types.CBufRet.f32 %746, 2
  %756 = fmul fast float %754, %755
  %757 = call float @dx.op.unary.f32(i32 7, float %756)  ; Saturate(value)
  %758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %759 = extractvalue %dx.types.CBufRet.f32 %758, 0
  %760 = fsub fast float %757, %759
  %761 = fmul fast float %760, 1.000000e+01
  %762 = call float @dx.op.unary.f32(i32 7, float %761)  ; Saturate(value)
  %763 = fmul fast float %762, %733
  %764 = fsub fast float %733, %763
  %765 = fmul fast float %764, %757
  br label %783

; <label>:766                                     ; preds = %723
  %767 = fmul fast float %736, %596
  %768 = fmul fast float %739, %596
  %769 = fmul fast float %513, %29
  %770 = fmul fast float %769, %646
  %771 = fadd fast float %692, %770
  %772 = fmul fast float %678, %771
  %773 = fadd fast float %772, %699
  %774 = fmul fast float %596, %773
  %775 = fmul fast float %741, %767
  %776 = fmul fast float %741, %768
  %777 = fmul fast float %774, %741
  %778 = call float @dx.op.binary.f32(i32 35, float %776, float %777)  ; FMax(a,b)
  %779 = call float @dx.op.binary.f32(i32 35, float %775, float %778)  ; FMax(a,b)
  %780 = call float @dx.op.binary.f32(i32 35, float %779, float %733)  ; FMax(a,b)
  %781 = fcmp fast ugt float %780, 0x3F10000000000000
  br i1 %781, label %783, label %782

; <label>:782                                     ; preds = %766
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %783

; <label>:783                                     ; preds = %782, %766, %742
  %784 = phi float [ %752, %742 ], [ %775, %782 ], [ %775, %766 ]
  %785 = phi float [ %765, %742 ], [ %776, %782 ], [ %776, %766 ]
  %786 = phi float [ %764, %742 ], [ %777, %782 ], [ %777, %766 ]
  %787 = phi float [ %764, %742 ], [ %733, %782 ], [ %733, %766 ]
  %788 = fadd fast float %530, 0x3FE3C6EF40000000
  %789 = call float @dx.op.unary.f32(i32 22, float %788)  ; Frc(value)
  %790 = call float @dx.op.unary.f32(i32 23, float %784)  ; Log(value)
  %791 = fadd fast float %790, -7.000000e+00
  %792 = call float @dx.op.unary.f32(i32 21, float %791)  ; Exp(value)
  %793 = fmul fast float %789, 2.000000e+00
  %794 = fadd fast float %793, -1.000000e+00
  %795 = fmul fast float %792, %794
  %796 = fcmp fast ogt float %784, 0.000000e+00
  %797 = select i1 %796, float %795, float 0.000000e+00
  %798 = fadd fast float %797, %784
  %799 = fadd fast float %530, 0x3FF3C6EF40000000
  %800 = call float @dx.op.unary.f32(i32 22, float %799)  ; Frc(value)
  %801 = call float @dx.op.unary.f32(i32 23, float %785)  ; Log(value)
  %802 = fadd fast float %801, -7.000000e+00
  %803 = call float @dx.op.unary.f32(i32 21, float %802)  ; Exp(value)
  %804 = fmul fast float %800, 2.000000e+00
  %805 = fadd fast float %804, -1.000000e+00
  %806 = fmul fast float %803, %805
  %807 = fcmp fast ogt float %785, 0.000000e+00
  %808 = select i1 %807, float %806, float 0.000000e+00
  %809 = fadd fast float %808, %785
  %810 = fadd fast float %530, 0x3FFDAA66E0000000
  %811 = call float @dx.op.unary.f32(i32 22, float %810)  ; Frc(value)
  %812 = call float @dx.op.unary.f32(i32 23, float %786)  ; Log(value)
  %813 = fadd fast float %812, -6.000000e+00
  %814 = call float @dx.op.unary.f32(i32 21, float %813)  ; Exp(value)
  %815 = fmul fast float %811, 2.000000e+00
  %816 = fadd fast float %815, -1.000000e+00
  %817 = fmul fast float %814, %816
  %818 = fcmp fast ogt float %786, 0.000000e+00
  %819 = select i1 %818, float %817, float 0.000000e+00
  %820 = fadd fast float %819, %786
  %821 = select i1 %101, float %785, float %809
  %822 = select i1 %101, float %786, float %820
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %823 = call float @dx.op.binary.f32(i32 36, float %798, float 3.225500e+04)  ; FMin(a,b)
  %824 = call float @dx.op.binary.f32(i32 36, float %821, float 3.225500e+04)  ; FMin(a,b)
  %825 = call float @dx.op.binary.f32(i32 36, float %822, float 3.225500e+04)  ; FMin(a,b)
  %826 = call float @dx.op.binary.f32(i32 36, float %787, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %823)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %824)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %825)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %826)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %787)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %787)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %787)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %787)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 77, i32 1, i32 2, i32 0, !7}
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
!25 = !{[33 x i32] [i32 31, i32 8, i32 255, i32 255, i32 0, i32 255, i32 255, i32 255, i32 254, i32 255, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255, i32 255, i32 7, i32 7, i32 7, i32 0, i32 0, i32 3, i32 3, i32 7, i32 7, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 255]}
!26 = !{void ()* @ps_main, !"ps_main", !27, !4, !50}
!27 = !{!28, !46, null}
!28 = !{!29, !32, !34, !36, !38, !40, !42, !43, !45}
!29 = !{i32 0, !"SV_Position", i8 9, i8 3, !30, i8 4, i32 1, i8 4, i32 0, i8 0, !31}
!30 = !{i32 0}
!31 = !{i32 3, i32 11}
!32 = !{i32 1, !"COLOR", i8 9, i8 0, !30, i8 2, i32 1, i8 4, i32 1, i8 0, !33}
!33 = !{i32 3, i32 15}
!34 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !30, i8 2, i32 1, i8 2, i32 2, i8 0, !35}
!35 = !{i32 3, i32 3}
!36 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !37, i8 2, i32 1, i8 4, i32 3, i8 0, !33}
!37 = !{i32 3}
!38 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !39, i8 3, i32 1, i8 2, i32 4, i8 0, !35}
!39 = !{i32 5}
!40 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !41, i8 2, i32 1, i8 4, i32 5, i8 0, !33}
!41 = !{i32 8}
!42 = !{i32 6, !"QUAD_POSITION", i8 9, i8 0, !30, i8 1, i32 1, i8 4, i32 6, i8 0, !33}
!43 = !{i32 7, !"COLOR", i8 5, i8 0, !37, i8 1, i32 1, i8 3, i32 7, i8 0, !44}
!44 = !{i32 3, i32 5}
!45 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !30, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!46 = !{!47, !48}
!47 = !{i32 0, !"SV_Target", i8 9, i8 16, !30, i8 0, i32 1, i8 4, i32 0, i8 0, !33}
!48 = !{i32 1, !"SV_Target", i8 9, i8 16, !49, i8 0, i32 1, i8 4, i32 1, i8 0, !33}
!49 = !{i32 1}
!50 = !{i32 0, i64 24}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 1}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 1}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 1}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 1}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 1}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 1}

