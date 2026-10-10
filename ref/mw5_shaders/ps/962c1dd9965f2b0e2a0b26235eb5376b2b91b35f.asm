;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float      w
; TEXCOORD                 0   xy          2     NONE   float   xy  
; TEXCOORD                 2   xyzw        3     NONE   float   xyz 
; TEXCOORD                 3   xyzw        4     NONE   float   xyzw
; TEXCOORD                 5   xy          5     NONE   float   xy  
; TEXCOORD                 8   xyzw        6     NONE   float   xyzw
; QUAD_POSITION            0   xyzw        7     NONE   float   xyzw
; COLOR                    3   xyz         8     NONE    uint   x z 
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
; shader hash: 7a424f162634100907ead9bd770fb5cb
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
; TEXCOORD                 2        nointerpolation       
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
;                                   sampler      NA          NA      S3             s4     1
;                                   texture     f32          2d      T0      t0,space3unbounded
;                                   texture     f32          2d      T1     t37,space2     1
;                                   texture    byte         r/o      T2     t37,space1     1
;                                   texture     f32          2d      T3     t77,space2     1
;                                   texture     f32          2d      T4     t69,space2     1
;                                   texture     f32          2d      T5             t0     1
;                                   texture     f32          2d      T6     t57,space2     1
;                                   texture    byte         r/o      T7     t69,space1     1
;                                   texture     u32          2d      T8     t56,space2     1
;                                   texture     f32          3d      T9     t45,space2     1
;                                   texture     f32     2darray     T10     t47,space2     1
;                                   textureunorm_f32     2darray     T11     t85,space2     1
;                                   texture     f32          2d     T12     t83,space2     1
;                                   texture     f32     2darray     T13             t1     1
;                                   texture    byte         r/o     T14             t2     1
;                                   texture     f32          3d     T15     t46,space2     1
;
;
; ViewId state:
;
; Number of inputs: 35, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 24, 25, 26, 27, 28, 29, 30, 31, 32, 34 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 24, 25, 26, 27, 28, 29, 30, 31, 32, 34 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 26, 27, 28, 29, 30, 31, 32, 34 }
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
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2DArray<float>" = type { float, %"class.Texture2DArray<float>::mips_type" }
%"class.Texture2DArray<float>::mips_type" = type { i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 77, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %49 = extractvalue %dx.types.CBufRet.f32 %48, 0
  %50 = fmul fast float %49, %43
  %51 = fmul fast float %49, %44
  %52 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %53 = extractvalue %dx.types.CBufRet.f32 %52, 2
  %54 = extractvalue %dx.types.CBufRet.f32 %52, 3
  %55 = fmul fast float %50, 2.000000e+00
  %56 = fmul fast float %55, %53
  %57 = fmul fast float %51, 2.000000e+00
  %58 = fmul fast float %57, %54
  %59 = fsub fast float 1.000000e+00, %56
  %60 = fsub fast float 1.000000e+00, %58
  %61 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %62 = extractvalue %dx.types.CBufRet.f32 %61, 0
  %63 = extractvalue %dx.types.CBufRet.f32 %61, 1
  %64 = extractvalue %dx.types.CBufRet.f32 %61, 2
  %65 = fmul fast float %59, %62
  %66 = fmul fast float %59, %63
  %67 = fmul fast float %59, %64
  %68 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %69 = extractvalue %dx.types.CBufRet.f32 %68, 0
  %70 = extractvalue %dx.types.CBufRet.f32 %68, 1
  %71 = extractvalue %dx.types.CBufRet.f32 %68, 2
  %72 = fmul fast float %60, %69
  %73 = fmul fast float %60, %70
  %74 = fmul fast float %60, %71
  %75 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %76 = extractvalue %dx.types.CBufRet.f32 %75, 0
  %77 = extractvalue %dx.types.CBufRet.f32 %75, 1
  %78 = extractvalue %dx.types.CBufRet.f32 %75, 2
  %79 = fadd fast float %72, %76
  %80 = fadd fast float %79, %65
  %81 = fadd fast float %73, %77
  %82 = fadd fast float %81, %66
  %83 = fadd fast float %74, %78
  %84 = fadd fast float %83, %67
  %85 = fmul fast float %80, %46
  %86 = fmul fast float %82, %46
  %87 = fmul fast float %84, %46
  %88 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %89 = extractvalue %dx.types.CBufRet.i32 %88, 3
  %90 = and i32 %89, 3
  %91 = icmp ne i32 %90, 0
  %92 = and i32 %89, 4
  %93 = icmp ne i32 %92, 0
  %94 = and i1 %91, %93
  br i1 %94, label %95, label %104

; <label>:95                                      ; preds = %0
  %96 = fmul fast float %54, %51
  %97 = fmul fast float %53, %50
  %98 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %17, float %97, float %96, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %99 = extractvalue %dx.types.ResRet.f32 %98, 0
  %100 = fsub fast float 1.000000e+00, %99
  %101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %102 = extractvalue %dx.types.CBufRet.f32 %101, 0
  %103 = fcmp fast olt float %100, %102
  br label %107

; <label>:104                                     ; preds = %0
  %105 = icmp eq i32 %92, 0
  %106 = and i1 %91, %105
  br label %107

; <label>:107                                     ; preds = %104, %95
  %108 = phi i1 [ %103, %95 ], [ %106, %104 ]
  %109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %110 = extractvalue %dx.types.CBufRet.f32 %109, 2
  %111 = extractvalue %dx.types.CBufRet.f32 %109, 3
  %112 = fmul fast float %110, %50
  %113 = fmul fast float %111, %51
  %114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %115 = extractvalue %dx.types.ResRet.i32 %114, 0
  %116 = and i32 %115, 114688
  %117 = icmp ne i32 %116, 0
  %118 = select i1 %117, float %112, float 0.000000e+00
  %119 = select i1 %117, float %113, float 0.000000e+00
  %120 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %18, float %118, float %119, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %121 = extractvalue %dx.types.ResRet.f32 %120, 0
  %122 = fmul fast float %121, 2.550000e+02
  %123 = fptoui float %122 to i32
  %124 = select i1 %117, i32 %123, i32 0
  %125 = mul i32 %21, 208
  %126 = add i32 %125, 188
  %127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %126, i32 undef)  ; BufferLoad(srv,index,wot)
  %128 = extractvalue %dx.types.ResRet.i32 %127, 0
  %129 = and i32 %89, 114688
  %130 = and i32 %89, 8
  %131 = icmp ne i32 %130, 0
  %132 = or i1 %108, %131
  %133 = select i1 %132, i32 %129, i32 16384
  %134 = and i32 %133, %128
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %137

; <label>:136                                     ; preds = %107
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %137

; <label>:137                                     ; preds = %136, %107
  %138 = and i32 %128, 512
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %164, label %140

; <label>:140                                     ; preds = %137
  %141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %142 = extractvalue %dx.types.CBufRet.f32 %141, 2
  %143 = extractvalue %dx.types.CBufRet.f32 %141, 3
  %144 = fmul fast float %142, %50
  %145 = fmul fast float %143, %51
  %146 = extractvalue %dx.types.CBufRet.f32 %141, 0
  %147 = extractvalue %dx.types.CBufRet.f32 %141, 1
  %148 = fdiv fast float %146, %147
  %149 = fcmp fast ogt float %148, 0x3FFC71C720000000
  br i1 %149, label %150, label %156

; <label>:150                                     ; preds = %140
  %151 = fdiv fast float 0x3FFC71C720000000, %148
  %152 = fmul fast float %151, %145
  %153 = fsub fast float 1.000000e+00, %151
  %154 = fmul fast float %153, 5.000000e-01
  %155 = fadd fast float %154, %152
  br label %164

; <label>:156                                     ; preds = %140
  %157 = fcmp fast olt float %148, 0x3FFC71C720000000
  br i1 %157, label %158, label %164

; <label>:158                                     ; preds = %156
  %159 = fmul fast float %144, 5.625000e-01
  %160 = fmul fast float %159, %148
  %161 = fmul fast float %148, 2.812500e-01
  %162 = fsub fast float 5.000000e-01, %161
  %163 = fadd fast float %162, %160
  br label %164

; <label>:164                                     ; preds = %158, %156, %150, %137
  %165 = phi float [ %40, %137 ], [ %144, %150 ], [ %163, %158 ], [ %144, %156 ]
  %166 = phi float [ %41, %137 ], [ %155, %150 ], [ %145, %158 ], [ %145, %156 ]
  %167 = fadd fast float %40, %37
  %168 = fadd fast float %41, %38
  %169 = add i32 %22, 72
  %170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %169, i32 undef)  ; BufferLoad(srv,index,wot)
  %171 = extractvalue %dx.types.ResRet.i32 %170, 0
  %172 = extractvalue %dx.types.ResRet.i32 %170, 1
  %173 = bitcast i32 %171 to float
  %174 = bitcast i32 %172 to float
  %175 = fmul fast float %173, %40
  %176 = fmul fast float %174, %41
  %177 = call float @dx.op.unary.f32(i32 22, float %175)  ; Frc(value)
  %178 = call float @dx.op.unary.f32(i32 22, float %176)  ; Frc(value)
  %179 = and i32 %128, 16
  %180 = icmp ne i32 %179, 0
  %181 = select i1 %180, float 1.000000e+00, float %42
  %182 = icmp eq i32 %179, 0
  br i1 %182, label %202, label %183, !dx.controlflow.hints !62

; <label>:183                                     ; preds = %164
  %184 = add i32 %125, 64
  %185 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %184, i32 undef)  ; BufferLoad(srv,index,wot)
  %186 = extractvalue %dx.types.ResRet.f32 %185, 0
  %187 = fadd fast float %186, 1.000000e+00
  %188 = fmul fast float %187, %42
  %189 = fsub fast float %188, %186
  %190 = fsub fast float %187, %189
  %191 = call float @dx.op.unary.f32(i32 7, float %190)  ; Saturate(value)
  %192 = fsub fast float 1.000000e+00, %188
  %193 = call float @dx.op.unary.f32(i32 7, float %192)  ; Saturate(value)
  %194 = fsub fast float %191, %193
  %195 = fsub fast float %181, %193
  %196 = fdiv fast float %195, %194
  %197 = call float @dx.op.unary.f32(i32 7, float %196)  ; Saturate(value)
  %198 = fmul fast float %197, 2.000000e+00
  %199 = fsub fast float 3.000000e+00, %198
  %200 = fmul fast float %197, %197
  %201 = fmul fast float %200, %199
  br label %202

; <label>:202                                     ; preds = %183, %164
  %203 = phi float [ %201, %183 ], [ %181, %164 ]
  %204 = fcmp fast ogt float %203, 0.000000e+00
  br i1 %204, label %206, label %205

; <label>:205                                     ; preds = %202
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %206

; <label>:206                                     ; preds = %205, %202
  %207 = call float @dx.op.unary.f32(i32 7, float %203)  ; Saturate(value)
  %208 = fmul fast float %50, 5.000000e-01
  %209 = fmul fast float %51, 5.000000e-01
  %210 = fptosi float %208 to i32
  %211 = fptosi float %209 to i32
  %212 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %8, i32 0, i32 %210, i32 %211, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %213 = extractvalue %dx.types.ResRet.i32 %212, 0
  %214 = lshr i32 %213, 18
  %215 = uitofp i32 %214 to float
  %216 = fmul fast float %215, 0x3F4C00EBA0000000
  %217 = call float @dx.op.unary.f32(i32 21, float %216)  ; Exp(value)
  %218 = fadd fast float %217, -1.000000e+00
  %219 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %8, i32 0)  ; GetDimensions(handle,mipLevel)
  %220 = extractvalue %dx.types.Dimensions %219, 0
  %221 = sitofp i32 %220 to float
  %222 = extractvalue %dx.types.Dimensions %219, 1
  %223 = sitofp i32 %222 to float
  %224 = fcmp fast oge float %208, %221
  %225 = fcmp fast oge float %209, %223
  %226 = or i1 %224, %225
  %227 = select i1 %226, float 0x4197782600000000, float %218
  %228 = fsub fast float %227, %46
  %229 = fcmp fast ogt float %228, 0.000000e+00
  %230 = and i32 %124, -2
  %231 = icmp eq i32 %230, 2
  %232 = and i1 %231, %229
  %233 = xor i1 %229, true
  %234 = icmp eq i32 %124, 1
  %235 = and i1 %234, %233
  %236 = or i1 %232, %235
  %237 = and i32 %128, 262144
  %238 = icmp ne i32 %237, 0
  %239 = and i1 %238, %236
  %240 = xor i1 %236, true
  %241 = and i32 %128, 131072
  %242 = icmp ne i32 %241, 0
  %243 = and i1 %242, %240
  %244 = or i1 %239, %243
  br i1 %244, label %245, label %246

; <label>:245                                     ; preds = %206
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %246

; <label>:246                                     ; preds = %245, %206
  %247 = and i32 %128, 32
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %498, label %249, !dx.controlflow.hints !63

; <label>:249                                     ; preds = %246
  %250 = add i32 %125, 80
  %251 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %250, i32 undef)  ; BufferLoad(srv,index,wot)
  %252 = extractvalue %dx.types.ResRet.f32 %251, 0
  %253 = extractvalue %dx.types.ResRet.f32 %251, 1
  %254 = extractvalue %dx.types.ResRet.f32 %251, 2
  %255 = extractvalue %dx.types.ResRet.f32 %251, 3
  %256 = add i32 %125, 96
  %257 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %256, i32 undef)  ; BufferLoad(srv,index,wot)
  %258 = extractvalue %dx.types.ResRet.f32 %257, 0
  %259 = extractvalue %dx.types.ResRet.f32 %257, 1
  %260 = extractvalue %dx.types.ResRet.f32 %257, 2
  %261 = add i32 %125, 112
  %262 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %261, i32 undef)  ; BufferLoad(srv,index,wot)
  %263 = extractvalue %dx.types.ResRet.f32 %262, 0
  %264 = extractvalue %dx.types.ResRet.f32 %262, 1
  %265 = extractvalue %dx.types.ResRet.f32 %262, 2
  %266 = extractvalue %dx.types.ResRet.f32 %262, 3
  %267 = add i32 %125, 128
  %268 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %267, i32 undef)  ; BufferLoad(srv,index,wot)
  %269 = extractvalue %dx.types.ResRet.f32 %268, 0
  %270 = extractvalue %dx.types.ResRet.f32 %268, 1
  %271 = extractvalue %dx.types.ResRet.f32 %268, 2
  %272 = extractvalue %dx.types.ResRet.f32 %268, 3
  %273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %126, i32 undef)  ; BufferLoad(srv,index,wot)
  %274 = extractvalue %dx.types.ResRet.i32 %273, 0
  %275 = and i32 %274, 4096
  %276 = icmp ne i32 %275, 0
  %277 = fcmp fast une float %260, 0.000000e+00
  %278 = and i32 %274, 64
  %279 = icmp ne i32 %278, 0
  %280 = and i32 %274, 128
  %281 = icmp eq i32 %280, 0
  %282 = and i32 %274, 2048
  %283 = icmp eq i32 %282, 0
  %284 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %285 = extractvalue %dx.types.Dimensions %284, 0
  %286 = sitofp i32 %285 to float
  %287 = extractvalue %dx.types.Dimensions %284, 1
  %288 = sitofp i32 %287 to float
  %289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %290 = extractvalue %dx.types.CBufRet.f32 %289, 2
  %291 = extractvalue %dx.types.CBufRet.f32 %289, 3
  %292 = fmul fast float %290, %50
  %293 = fmul fast float %291, %51
  %294 = fmul fast float %292, %286
  %295 = fmul fast float %293, %288
  %296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %297 = extractvalue %dx.types.CBufRet.f32 %296, 1
  %298 = fsub fast float -0.000000e+00, %297
  %299 = fptoui float %298 to i32
  %300 = fptoui float %294 to i32
  %301 = fptoui float %295 to i32
  %302 = and i32 %299, 31
  %303 = lshr i32 %300, %302
  %304 = lshr i32 %301, %302
  %305 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 %299, i32 %303, i32 %304, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %306 = extractvalue %dx.types.ResRet.f32 %305, 0
  %307 = fcmp fast ogt float %306, -1.000000e+00
  %308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %309 = extractvalue %dx.types.CBufRet.f32 %308, 1
  %310 = select i1 %307, float %309, float 1.000000e+00
  %311 = fadd fast float %306, 1.000000e+00
  %312 = fmul fast float %310, %311
  %313 = call float @dx.op.unary.f32(i32 6, float %312)  ; FAbs(value)
  %314 = extractvalue %dx.types.CBufRet.f32 %308, 3
  %315 = fcmp fast oge float %313, %314
  %316 = select i1 %315, float 0x4197782600000000, float %313
  br i1 %283, label %394, label %317, !dx.controlflow.hints !64

; <label>:317                                     ; preds = %249
  %318 = fmul fast float %55, %290
  %319 = fmul fast float %57, %291
  %320 = fsub fast float 1.000000e+00, %318
  %321 = fsub fast float 1.000000e+00, %319
  %322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %323 = extractvalue %dx.types.CBufRet.f32 %322, 0
  %324 = extractvalue %dx.types.CBufRet.f32 %322, 1
  %325 = extractvalue %dx.types.CBufRet.f32 %322, 2
  %326 = fmul fast float %320, %323
  %327 = fmul fast float %320, %324
  %328 = fmul fast float %320, %325
  %329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %330 = extractvalue %dx.types.CBufRet.f32 %329, 0
  %331 = extractvalue %dx.types.CBufRet.f32 %329, 1
  %332 = extractvalue %dx.types.CBufRet.f32 %329, 2
  %333 = fmul fast float %321, %330
  %334 = fmul fast float %321, %331
  %335 = fmul fast float %321, %332
  %336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %337 = extractvalue %dx.types.CBufRet.f32 %336, 0
  %338 = extractvalue %dx.types.CBufRet.f32 %336, 1
  %339 = extractvalue %dx.types.CBufRet.f32 %336, 2
  %340 = fadd fast float %333, %337
  %341 = fadd fast float %340, %326
  %342 = fadd fast float %334, %338
  %343 = fadd fast float %342, %327
  %344 = fadd fast float %335, %339
  %345 = fadd fast float %344, %328
  %346 = fmul fast float %341, %316
  %347 = fmul fast float %343, %316
  %348 = fmul fast float %345, %316
  %349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %350 = extractvalue %dx.types.CBufRet.f32 %349, 0
  %351 = extractvalue %dx.types.CBufRet.f32 %349, 1
  %352 = extractvalue %dx.types.CBufRet.f32 %349, 2
  %353 = fsub fast float %350, %23
  %354 = fadd fast float %353, %346
  %355 = fsub fast float %351, %24
  %356 = fadd fast float %355, %347
  %357 = fsub fast float %352, %25
  %358 = fadd fast float %357, %348
  %359 = fmul fast float %26, %26
  %360 = call float @dx.op.dot3.f32(i32 55, float %354, float %356, float %358, float %354, float %356, float %358)  ; Dot3(ax,ay,az,bx,by,bz)
  %361 = fsub fast float %359, %360
  %362 = fmul fast float %259, %359
  %363 = fmul fast float %258, %359
  %364 = fcmp fast olt float %361, %362
  %365 = fcmp fast ogt float %361, %363
  %366 = or i1 %364, %365
  %367 = select i1 %366, float 0.000000e+00, float %361
  %368 = fsub fast float %258, %259
  %369 = fmul fast float %368, %359
  %370 = fsub fast float %367, %362
  %371 = fdiv fast float %370, %369
  %372 = call float @dx.op.unary.f32(i32 7, float %371)  ; Saturate(value)
  %373 = fmul fast float %372, 2.000000e+00
  %374 = fsub fast float 3.000000e+00, %373
  %375 = fmul fast float %372, %372
  %376 = fmul fast float %375, %374
  %377 = fsub fast float %266, %272
  %378 = fmul fast float %376, %377
  %379 = fadd fast float %378, %272
  %380 = fmul fast float %263, %27
  %381 = fmul fast float %264, %28
  %382 = fmul fast float %265, %29
  %383 = fsub fast float %380, %269
  %384 = fsub fast float %381, %270
  %385 = fsub fast float %382, %271
  %386 = fmul fast float %376, %383
  %387 = fmul fast float %376, %384
  %388 = fmul fast float %376, %385
  %389 = fadd fast float %386, %269
  %390 = fadd fast float %387, %270
  %391 = fadd fast float %388, %271
  %392 = fmul fast float %252, %252
  %393 = fmul fast float %392, %367
  br label %489

; <label>:394                                     ; preds = %249
  %395 = and i32 %274, 256
  %396 = icmp eq i32 %395, 0
  %397 = fsub fast float %316, %46
  br i1 %396, label %446, label %398

; <label>:398                                     ; preds = %394
  %399 = fadd fast float %258, %46
  %400 = fcmp fast olt float %316, %46
  %401 = fcmp fast ogt float %316, %399
  %402 = or i1 %400, %401
  %403 = select i1 %402, float 0.000000e+00, float %397
  %404 = call float @dx.op.unary.f32(i32 83, float %316)  ; DerivCoarseX(value)
  %405 = call float @dx.op.unary.f32(i32 84, float %316)  ; DerivCoarseY(value)
  %406 = fmul fast float %404, %404
  %407 = fmul fast float %405, %405
  %408 = fadd fast float %407, %406
  %409 = call float @dx.op.unary.f32(i32 24, float %408)  ; Sqrt(value)
  %410 = extractvalue %dx.types.CBufRet.f32 %296, 2
  %411 = fmul fast float %410, %409
  %412 = call float @dx.op.unary.f32(i32 7, float %411)  ; Saturate(value)
  %413 = fmul fast float %412, %259
  %414 = fdiv fast float %397, %413
  %415 = call float @dx.op.unary.f32(i32 7, float %414)  ; Saturate(value)
  %416 = fmul fast float %415, 2.000000e+00
  %417 = fsub fast float 3.000000e+00, %416
  %418 = fmul fast float %415, %415
  %419 = fmul fast float %418, %417
  %420 = fsub fast float %316, %399
  %421 = fadd fast float %420, %413
  %422 = fdiv fast float %421, %413
  %423 = call float @dx.op.unary.f32(i32 7, float %422)  ; Saturate(value)
  %424 = fmul fast float %423, 2.000000e+00
  %425 = fsub fast float 3.000000e+00, %424
  %426 = fmul fast float %423, %423
  %427 = fmul fast float %426, %425
  %428 = fsub fast float %419, %427
  %429 = fsub fast float %266, %272
  %430 = fmul fast float %428, %429
  %431 = fadd fast float %430, %272
  %432 = fmul fast float %263, %27
  %433 = fmul fast float %264, %28
  %434 = fmul fast float %265, %29
  %435 = fsub fast float %432, %269
  %436 = fsub fast float %433, %270
  %437 = fsub fast float %434, %271
  %438 = fmul fast float %428, %435
  %439 = fmul fast float %428, %436
  %440 = fmul fast float %428, %437
  %441 = fadd fast float %438, %269
  %442 = fadd fast float %439, %270
  %443 = fadd fast float %440, %271
  %444 = fmul fast float %403, %252
  %445 = call float @dx.op.unary.f32(i32 6, float %444)  ; FAbs(value)
  br label %489

; <label>:446                                     ; preds = %394
  br i1 %277, label %447, label %460

; <label>:447                                     ; preds = %446
  %448 = fdiv fast float 5.000000e+01, %26
  %449 = select i1 %279, float %448, float 1.000000e+00
  %450 = fmul fast float %449, %252
  %451 = fmul fast float %177, 2.000000e+00
  %452 = fmul fast float %178, 2.000000e+00
  %453 = fadd fast float %451, -1.000000e+00
  %454 = fadd fast float %452, -1.000000e+00
  %455 = call float @dx.op.dot2.f32(i32 54, float %453, float %454, float %453, float %454)  ; Dot2(ax,ay,bx,by)
  %456 = fmul fast float %260, %26
  %457 = fmul fast float %456, %455
  %458 = fsub fast float %397, %457
  %459 = fmul fast float %450, %458
  br label %489

; <label>:460                                     ; preds = %446
  br i1 %281, label %481, label %461

; <label>:461                                     ; preds = %460
  %462 = fmul fast float %26, 0x3F947AE140000000
  %463 = select i1 %279, float %462, float 1.000000e+00
  %464 = fdiv fast float 1.000000e+00, %463
  %465 = fmul fast float %463, %253
  %466 = fmul fast float %463, %254
  %467 = fmul fast float %464, %255
  %468 = call float @dx.op.unary.f32(i32 6, float %397)  ; FAbs(value)
  %469 = fcmp fast olt float %468, %465
  br i1 %469, label %470, label %474, !dx.controlflow.hints !65

; <label>:470                                     ; preds = %461
  %471 = fmul fast float %464, %252
  %472 = fmul fast float %471, %468
  %473 = call float @dx.op.unary.f32(i32 6, float %472)  ; FAbs(value)
  br label %489

; <label>:474                                     ; preds = %461
  %475 = fcmp fast ogt float %468, %466
  br i1 %475, label %476, label %489

; <label>:476                                     ; preds = %474
  %477 = fsub fast float %468, %466
  %478 = fmul fast float %467, %477
  %479 = call float @dx.op.unary.f32(i32 6, float %478)  ; FAbs(value)
  %480 = fsub fast float 1.000000e+00, %479
  br label %489

; <label>:481                                     ; preds = %460
  %482 = fdiv fast float 5.000000e+01, %26
  %483 = select i1 %279, float %482, float 1.000000e+00
  %484 = fmul fast float %483, %252
  %485 = call float @dx.op.unary.f32(i32 6, float %228)  ; FAbs(value)
  %486 = select i1 %276, float %485, float 0x47EFFFFFE0000000
  %487 = call float @dx.op.binary.f32(i32 36, float %397, float %486)  ; FMin(a,b)
  %488 = fmul fast float %484, %487
  br label %489

; <label>:489                                     ; preds = %481, %476, %474, %470, %447, %398, %317
  %490 = phi float [ %393, %317 ], [ %445, %398 ], [ %459, %447 ], [ %488, %481 ], [ %473, %470 ], [ %480, %476 ], [ %468, %474 ]
  %491 = phi float [ %389, %317 ], [ %441, %398 ], [ %27, %447 ], [ %27, %481 ], [ %27, %470 ], [ %27, %476 ], [ %27, %474 ]
  %492 = phi float [ %390, %317 ], [ %442, %398 ], [ %28, %447 ], [ %28, %481 ], [ %28, %470 ], [ %28, %476 ], [ %28, %474 ]
  %493 = phi float [ %391, %317 ], [ %443, %398 ], [ %29, %447 ], [ %29, %481 ], [ %29, %470 ], [ %29, %476 ], [ %29, %474 ]
  %494 = phi float [ %379, %317 ], [ %431, %398 ], [ 1.000000e+00, %447 ], [ 1.000000e+00, %481 ], [ 1.000000e+00, %470 ], [ 1.000000e+00, %476 ], [ 1.000000e+00, %474 ]
  %495 = call float @dx.op.unary.f32(i32 7, float %490)  ; Saturate(value)
  %496 = fmul fast float %494, %207
  %497 = fmul fast float %496, %495
  br label %498

; <label>:498                                     ; preds = %489, %246
  %499 = phi float [ %497, %489 ], [ %207, %246 ]
  %500 = phi float [ %491, %489 ], [ %27, %246 ]
  %501 = phi float [ %492, %489 ], [ %28, %246 ]
  %502 = phi float [ %493, %489 ], [ %29, %246 ]
  %503 = fmul fast float %500, %30
  %504 = fmul fast float %501, %30
  %505 = fmul fast float %502, %30
  %506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %507 = extractvalue %dx.types.CBufRet.f32 %506, 2
  %508 = fptosi float %46 to i32
  %509 = sitofp i32 %508 to float
  %510 = fadd fast float %507, %509
  %511 = fmul fast float %510, 0x3FE3C6EF40000000
  %512 = frem fast float %50, 2.560000e+02
  %513 = frem fast float %51, 2.560000e+02
  %514 = fptoui float %512 to i32
  %515 = fptoui float %513 to i32
  %516 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %514, i32 %515, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %517 = extractvalue %dx.types.ResRet.f32 %516, 0
  %518 = fadd fast float %517, %511
  %519 = call float @dx.op.unary.f32(i32 22, float %518)  ; Frc(value)
  %520 = and i32 %128, 1
  %521 = icmp eq i32 %520, 0
  br i1 %521, label %578, label %522, !dx.controlflow.hints !66

; <label>:522                                     ; preds = %498
  %523 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %125, i32 undef)  ; BufferLoad(srv,index,wot)
  %524 = extractvalue %dx.types.ResRet.f32 %523, 2
  %525 = extractvalue %dx.types.ResRet.f32 %523, 3
  %526 = add i32 %125, 16
  %527 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %526, i32 undef)  ; BufferLoad(srv,index,wot)
  %528 = extractvalue %dx.types.ResRet.f32 %527, 0
  %529 = extractvalue %dx.types.ResRet.f32 %527, 1
  %530 = extractvalue %dx.types.ResRet.f32 %527, 2
  %531 = add i32 %125, 32
  %532 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %531, i32 undef)  ; BufferLoad(srv,index,wot)
  %533 = extractvalue %dx.types.ResRet.f32 %532, 0
  %534 = extractvalue %dx.types.ResRet.f32 %532, 1
  %535 = extractvalue %dx.types.ResRet.f32 %532, 2
  %536 = and i32 %128, 2
  %537 = icmp eq i32 %536, 0
  %538 = call float @dx.op.dot3.f32(i32 55, float %33, float %34, float %35, float %33, float %34, float %35)  ; Dot3(ax,ay,az,bx,by,bz)
  %539 = call float @dx.op.unary.f32(i32 25, float %538)  ; Rsqrt(value)
  %540 = fmul fast float %539, %33
  %541 = fmul fast float %539, %34
  %542 = fmul fast float %539, %35
  %543 = call float @dx.op.dot3.f32(i32 55, float %85, float %86, float %87, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %544 = call float @dx.op.unary.f32(i32 25, float %543)  ; Rsqrt(value)
  %545 = fmul fast float %544, %85
  %546 = fmul fast float %544, %86
  %547 = fmul fast float %544, %87
  %548 = call float @dx.op.dot3.f32(i32 55, float %545, float %546, float %547, float %540, float %541, float %542)  ; Dot3(ax,ay,az,bx,by,bz)
  %549 = fmul fast float %548, %548
  %550 = fmul fast float %549, %524
  %551 = fadd fast float %550, %525
  %552 = call float @dx.op.unary.f32(i32 7, float %551)  ; Saturate(value)
  br i1 %537, label %553, label %563, !dx.controlflow.hints !67

; <label>:553                                     ; preds = %522
  %554 = extractvalue %dx.types.ResRet.f32 %523, 1
  %555 = extractvalue %dx.types.ResRet.f32 %523, 0
  %556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %557 = extractvalue %dx.types.CBufRet.f32 %556, 3
  %558 = fmul fast float %557, %543
  %559 = fsub fast float %555, %558
  %560 = fmul fast float %559, %554
  %561 = call float @dx.op.unary.f32(i32 7, float %560)  ; Saturate(value)
  %562 = fmul fast float %561, %552
  br label %563

; <label>:563                                     ; preds = %553, %522
  %564 = phi float [ %562, %553 ], [ %552, %522 ]
  %565 = fsub fast float %528, %533
  %566 = fsub fast float %529, %534
  %567 = fsub fast float %530, %535
  %568 = fmul fast float %564, %565
  %569 = fmul fast float %564, %566
  %570 = fmul fast float %564, %567
  %571 = fadd fast float %568, %533
  %572 = fadd fast float %569, %534
  %573 = fadd fast float %570, %535
  %574 = fmul fast float %571, %503
  %575 = fmul fast float %572, %504
  %576 = fmul fast float %573, %505
  %577 = fmul fast float %564, %499
  br label %578

; <label>:578                                     ; preds = %563, %498
  %579 = phi float [ %577, %563 ], [ %499, %498 ]
  %580 = phi float [ %574, %563 ], [ %503, %498 ]
  %581 = phi float [ %575, %563 ], [ %504, %498 ]
  %582 = phi float [ %576, %563 ], [ %505, %498 ]
  %583 = add i32 %22, 104
  %584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %583, i32 undef)  ; BufferLoad(srv,index,wot)
  %585 = extractvalue %dx.types.ResRet.i32 %584, 0
  %586 = add i32 %585, 0
  %587 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %586, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %588 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %587, %dx.types.Handle %47, float %165, float %166, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %589 = extractvalue %dx.types.ResRet.f32 %588, 0
  %590 = extractvalue %dx.types.ResRet.f32 %588, 1
  %591 = extractvalue %dx.types.ResRet.f32 %588, 2
  %592 = add i32 %22, 44
  %593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %592, i32 undef)  ; BufferLoad(srv,index,wot)
  %594 = extractvalue %dx.types.ResRet.i32 %593, 0
  %595 = shl i32 %594, 4
  %596 = and i32 %595, 32752
  %597 = call float @dx.op.legacyF16ToF32(i32 131, i32 %596)  ; LegacyF16ToF32(value)
  %598 = lshr i32 %594, 7
  %599 = and i32 %598, 32752
  %600 = call float @dx.op.legacyF16ToF32(i32 131, i32 %599)  ; LegacyF16ToF32(value)
  %601 = lshr i32 %594, 22
  %602 = shl nuw nsw i32 %601, 5
  %603 = call float @dx.op.legacyF16ToF32(i32 131, i32 %602)  ; LegacyF16ToF32(value)
  %604 = fmul fast float %597, %589
  %605 = fmul fast float %600, %590
  %606 = fmul fast float %603, %591
  %607 = add i32 %22, 48
  %608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %607, i32 undef)  ; BufferLoad(srv,index,wot)
  %609 = extractvalue %dx.types.ResRet.i32 %608, 0
  %610 = lshr i32 %609, 22
  %611 = shl nuw nsw i32 %610, 5
  %612 = call float @dx.op.legacyF16ToF32(i32 131, i32 %611)  ; LegacyF16ToF32(value)
  %613 = fmul fast float %612, %604
  %614 = select i1 %108, float %613, float %604
  %615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %583, i32 undef)  ; BufferLoad(srv,index,wot)
  %616 = extractvalue %dx.types.ResRet.i32 %615, 0
  %617 = add i32 %616, 0
  %618 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %617, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %619 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %618, %dx.types.Handle %47, float %167, float %168, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %620 = extractvalue %dx.types.ResRet.f32 %619, 0
  %621 = extractvalue %dx.types.ResRet.f32 %619, 1
  %622 = extractvalue %dx.types.ResRet.f32 %619, 2
  %623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %592, i32 undef)  ; BufferLoad(srv,index,wot)
  %624 = extractvalue %dx.types.ResRet.i32 %623, 0
  %625 = shl i32 %624, 4
  %626 = and i32 %625, 32752
  %627 = call float @dx.op.legacyF16ToF32(i32 131, i32 %626)  ; LegacyF16ToF32(value)
  %628 = lshr i32 %624, 7
  %629 = and i32 %628, 32752
  %630 = call float @dx.op.legacyF16ToF32(i32 131, i32 %629)  ; LegacyF16ToF32(value)
  %631 = lshr i32 %624, 22
  %632 = shl nuw nsw i32 %631, 5
  %633 = call float @dx.op.legacyF16ToF32(i32 131, i32 %632)  ; LegacyF16ToF32(value)
  %634 = fmul fast float %627, %620
  %635 = fmul fast float %630, %621
  %636 = fmul fast float %633, %622
  %637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %607, i32 undef)  ; BufferLoad(srv,index,wot)
  %638 = extractvalue %dx.types.ResRet.i32 %637, 0
  %639 = lshr i32 %638, 22
  %640 = shl nuw nsw i32 %639, 5
  %641 = call float @dx.op.legacyF16ToF32(i32 131, i32 %640)  ; LegacyF16ToF32(value)
  %642 = fmul fast float %641, %634
  %643 = select i1 %108, float %642, float %634
  %644 = fsub fast float %643, %614
  %645 = fsub fast float %635, %605
  %646 = fsub fast float %636, %606
  %647 = fmul fast float %644, %39
  %648 = fmul fast float %645, %39
  %649 = fmul fast float %646, %39
  %650 = fadd fast float %647, %614
  %651 = fadd fast float %648, %605
  %652 = fadd fast float %649, %606
  %653 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %31, float %32, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %654 = extractvalue %dx.types.ResRet.f32 %653, 0
  %655 = extractvalue %dx.types.ResRet.f32 %653, 1
  %656 = extractvalue %dx.types.ResRet.f32 %653, 2
  %657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %658 = extractvalue %dx.types.CBufRet.f32 %657, 1
  %659 = fmul fast float %650, %580
  %660 = fmul fast float %651, %581
  %661 = fmul fast float %652, %582
  %662 = call float @dx.op.dot3.f32(i32 55, float %659, float %660, float %661, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %663 = select i1 %108, float 0.000000e+00, float %659
  %664 = select i1 %108, float %662, float %660
  %665 = select i1 %108, float 0.000000e+00, float %661
  %666 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %8, i32 0, i32 %210, i32 %211, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %667 = extractvalue %dx.types.ResRet.i32 %666, 0
  %668 = lshr i32 %667, 18
  %669 = uitofp i32 %668 to float
  %670 = fmul fast float %669, 0x3F4C00EBA0000000
  %671 = call float @dx.op.unary.f32(i32 21, float %670)  ; Exp(value)
  %672 = fadd fast float %671, -1.000000e+00
  %673 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %8, i32 0)  ; GetDimensions(handle,mipLevel)
  %674 = extractvalue %dx.types.Dimensions %673, 0
  %675 = sitofp i32 %674 to float
  %676 = extractvalue %dx.types.Dimensions %673, 1
  %677 = sitofp i32 %676 to float
  %678 = fcmp fast oge float %208, %675
  %679 = fcmp fast oge float %209, %677
  %680 = or i1 %678, %679
  %681 = select i1 %680, float 0x4197782600000000, float %672
  %682 = icmp eq i32 %124, 3
  %683 = fcmp fast ogt float %46, %681
  %684 = and i1 %234, %683
  %685 = or i1 %682, %684
  %686 = icmp eq i32 %124, 2
  %687 = fcmp fast ole float %46, %681
  %688 = and i1 %686, %687
  %689 = or i1 %688, %685
  %690 = fmul fast float %500, %36
  %691 = fmul fast float %690, %650
  %692 = fmul fast float %691, %654
  %693 = fmul fast float %692, %658
  %694 = fmul fast float %501, %36
  %695 = fmul fast float %694, %651
  %696 = fmul fast float %695, %655
  %697 = fmul fast float %696, %658
  %698 = fmul fast float %502, %36
  %699 = fmul fast float %698, %652
  %700 = fmul fast float %699, %656
  %701 = fmul fast float %700, %658
  %702 = fadd fast float %693, %663
  %703 = fadd fast float %664, %697
  %704 = fadd fast float %701, %665
  %705 = fmul fast float %702, %579
  %706 = fmul fast float %703, %579
  %707 = fmul fast float %704, %579
  %708 = and i32 %128, 1048576
  %709 = icmp eq i32 %708, 0
  br i1 %709, label %801, label %710, !dx.controlflow.hints !68

; <label>:710                                     ; preds = %578
  %711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %712 = extractvalue %dx.types.CBufRet.f32 %711, 2
  %713 = extractvalue %dx.types.CBufRet.f32 %711, 3
  %714 = fmul fast float %712, %50
  %715 = fmul fast float %713, %51
  %716 = call float @dx.op.unary.f32(i32 7, float %714)  ; Saturate(value)
  %717 = call float @dx.op.unary.f32(i32 7, float %715)  ; Saturate(value)
  %718 = select i1 %689, i32 2, i32 0
  %719 = or i32 %718, 1
  %720 = uitofp i32 %719 to float
  %721 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %716, float %717, float %720, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %722 = extractvalue %dx.types.ResRet.f32 %721, 0
  %723 = extractvalue %dx.types.ResRet.f32 %721, 1
  %724 = extractvalue %dx.types.ResRet.f32 %721, 2
  %725 = extractvalue %dx.types.ResRet.f32 %721, 3
  %726 = add nuw nsw i32 %718, 2
  %727 = uitofp i32 %726 to float
  %728 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %716, float %717, float %727, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %729 = extractvalue %dx.types.ResRet.f32 %728, 0
  %730 = extractvalue %dx.types.ResRet.f32 %728, 1
  %731 = extractvalue %dx.types.ResRet.f32 %728, 2
  %732 = extractvalue %dx.types.ResRet.f32 %728, 3
  %733 = call float @dx.op.binary.f32(i32 35, float %723, float %724)  ; FMax(a,b)
  %734 = call float @dx.op.binary.f32(i32 35, float %722, float %733)  ; FMax(a,b)
  %735 = call float @dx.op.binary.f32(i32 35, float %734, float %725)  ; FMax(a,b)
  %736 = call float @dx.op.binary.f32(i32 36, float %730, float %731)  ; FMin(a,b)
  %737 = call float @dx.op.binary.f32(i32 36, float %729, float %736)  ; FMin(a,b)
  %738 = call float @dx.op.binary.f32(i32 36, float %737, float %732)  ; FMin(a,b)
  %739 = fmul fast float %735, 2.550000e+02
  %740 = fadd fast float %739, 0x3F70101020000000
  %741 = fptoui float %740 to i32
  %742 = fmul fast float %738, 2.550000e+02
  %743 = fadd fast float %742, 0x3F70101020000000
  %744 = fptoui float %743 to i32
  %745 = icmp ult i32 %741, %744
  br i1 %745, label %746, label %794

; <label>:746                                     ; preds = %710
  %747 = fcmp fast ogt float %45, 9.843750e-01
  %748 = fadd fast float %46, -4.000000e+00
  %749 = select i1 %747, float -4.000000e+00, float %748
  %750 = call float @dx.op.binary.f32(i32 35, float %749, float 0.000000e+00)  ; FMax(a,b)
  %751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %752 = extractvalue %dx.types.CBufRet.f32 %751, 0
  %753 = fadd fast float %752, %750
  %754 = extractvalue %dx.types.CBufRet.f32 %751, 2
  %755 = fmul fast float %753, %754
  %756 = call float @dx.op.unary.f32(i32 23, float %755)  ; Log(value)
  %757 = extractvalue %dx.types.CBufRet.f32 %751, 3
  %758 = fmul fast float %757, %756
  %759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %760 = extractvalue %dx.types.CBufRet.f32 %759, 2
  %761 = fmul fast float %758, %760
  %762 = call float @dx.op.unary.f32(i32 7, float %761)  ; Saturate(value)
  %763 = uitofp i32 %741 to float
  %764 = uitofp i32 %744 to float
  %765 = fadd fast float %763, 5.000000e-01
  %766 = fadd fast float %764, 5.000000e-01
  %767 = fmul fast float %760, %765
  %768 = fmul fast float %760, %766
  %769 = fadd fast float %767, 0x3F0FFB4800000000
  %770 = fadd fast float %768, 0xBF0FFB4800000000
  %771 = call float @dx.op.binary.f32(i32 35, float %762, float %769)  ; FMax(a,b)
  %772 = call float @dx.op.binary.f32(i32 36, float %771, float %770)  ; FMin(a,b)
  %773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %774 = extractvalue %dx.types.CBufRet.f32 %773, 1
  %775 = extractvalue %dx.types.CBufRet.f32 %773, 2
  %776 = extractvalue %dx.types.CBufRet.f32 %773, 0
  %777 = select i1 %689, float %776, float 0.000000e+00
  %778 = fmul fast float %774, %772
  %779 = fadd fast float %777, %778
  %780 = fadd fast float %777, %775
  %781 = fsub fast float %774, %775
  %782 = fadd fast float %781, %777
  %783 = call float @dx.op.binary.f32(i32 35, float %779, float %780)  ; FMax(a,b)
  %784 = call float @dx.op.binary.f32(i32 36, float %783, float %782)  ; FMin(a,b)
  %785 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %16, float %716, float %717, float %784, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %786 = extractvalue %dx.types.ResRet.f32 %785, 0
  %787 = extractvalue %dx.types.ResRet.f32 %785, 1
  %788 = extractvalue %dx.types.ResRet.f32 %785, 2
  %789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %790 = extractvalue %dx.types.CBufRet.f32 %789, 1
  %791 = fmul fast float %790, %786
  %792 = fmul fast float %790, %787
  %793 = fmul fast float %790, %788
  br label %794

; <label>:794                                     ; preds = %746, %710
  %795 = phi float [ %791, %746 ], [ 1.000000e+00, %710 ]
  %796 = phi float [ %792, %746 ], [ 1.000000e+00, %710 ]
  %797 = phi float [ %793, %746 ], [ 1.000000e+00, %710 ]
  %798 = fmul fast float %795, %705
  %799 = fmul fast float %796, %706
  %800 = fmul fast float %797, %707
  br label %801

; <label>:801                                     ; preds = %794, %578
  %802 = phi float [ %798, %794 ], [ %705, %578 ]
  %803 = phi float [ %799, %794 ], [ %706, %578 ]
  %804 = phi float [ %800, %794 ], [ %707, %578 ]
  %805 = and i32 %128, 2097152
  %806 = icmp eq i32 %805, 0
  br i1 %806, label %811, label %807, !dx.controlflow.hints !69

; <label>:807                                     ; preds = %801
  %808 = add i32 %125, 192
  %809 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %808, i32 undef)  ; BufferLoad(srv,index,wot)
  %810 = extractvalue %dx.types.ResRet.f32 %809, 0
  br label %814

; <label>:811                                     ; preds = %801
  %812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %813 = extractvalue %dx.types.CBufRet.f32 %812, 3
  br label %814

; <label>:814                                     ; preds = %811, %807
  %815 = phi float [ %810, %807 ], [ %813, %811 ]
  br i1 %684, label %816, label %900

; <label>:816                                     ; preds = %814
  %817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %818 = extractvalue %dx.types.CBufRet.f32 %817, 2
  %819 = extractvalue %dx.types.CBufRet.f32 %817, 3
  %820 = fmul fast float %818, %50
  %821 = fmul fast float %819, %51
  %822 = call float @dx.op.unary.f32(i32 7, float %820)  ; Saturate(value)
  %823 = call float @dx.op.unary.f32(i32 7, float %821)  ; Saturate(value)
  %824 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %822, float %823, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %825 = extractvalue %dx.types.ResRet.f32 %824, 0
  %826 = extractvalue %dx.types.ResRet.f32 %824, 1
  %827 = extractvalue %dx.types.ResRet.f32 %824, 2
  %828 = extractvalue %dx.types.ResRet.f32 %824, 3
  %829 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %822, float %823, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %830 = extractvalue %dx.types.ResRet.f32 %829, 0
  %831 = extractvalue %dx.types.ResRet.f32 %829, 1
  %832 = extractvalue %dx.types.ResRet.f32 %829, 2
  %833 = extractvalue %dx.types.ResRet.f32 %829, 3
  %834 = call float @dx.op.binary.f32(i32 35, float %826, float %827)  ; FMax(a,b)
  %835 = call float @dx.op.binary.f32(i32 35, float %825, float %834)  ; FMax(a,b)
  %836 = call float @dx.op.binary.f32(i32 35, float %835, float %828)  ; FMax(a,b)
  %837 = call float @dx.op.binary.f32(i32 36, float %831, float %832)  ; FMin(a,b)
  %838 = call float @dx.op.binary.f32(i32 36, float %830, float %837)  ; FMin(a,b)
  %839 = call float @dx.op.binary.f32(i32 36, float %838, float %833)  ; FMin(a,b)
  %840 = fmul fast float %836, 2.550000e+02
  %841 = fadd fast float %840, 0x3F70101020000000
  %842 = fptoui float %841 to i32
  %843 = fmul fast float %839, 2.550000e+02
  %844 = fadd fast float %843, 0x3F70101020000000
  %845 = fptoui float %844 to i32
  %846 = icmp ult i32 %842, %845
  br i1 %846, label %847, label %889

; <label>:847                                     ; preds = %816
  %848 = fcmp fast ogt float %45, 9.843750e-01
  %849 = fadd fast float %46, -4.000000e+00
  %850 = select i1 %848, float -4.000000e+00, float %849
  %851 = call float @dx.op.binary.f32(i32 35, float %850, float 0.000000e+00)  ; FMax(a,b)
  %852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %853 = extractvalue %dx.types.CBufRet.f32 %852, 0
  %854 = fadd fast float %853, %851
  %855 = extractvalue %dx.types.CBufRet.f32 %852, 2
  %856 = fmul fast float %854, %855
  %857 = call float @dx.op.unary.f32(i32 23, float %856)  ; Log(value)
  %858 = extractvalue %dx.types.CBufRet.f32 %852, 3
  %859 = fmul fast float %858, %857
  %860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %861 = extractvalue %dx.types.CBufRet.f32 %860, 2
  %862 = fmul fast float %859, %861
  %863 = call float @dx.op.unary.f32(i32 7, float %862)  ; Saturate(value)
  %864 = uitofp i32 %842 to float
  %865 = uitofp i32 %845 to float
  %866 = fadd fast float %864, 5.000000e-01
  %867 = fadd fast float %865, 5.000000e-01
  %868 = fmul fast float %861, %866
  %869 = fmul fast float %861, %867
  %870 = fadd fast float %868, 0x3F0FFB4800000000
  %871 = fadd fast float %869, 0xBF0FFB4800000000
  %872 = call float @dx.op.binary.f32(i32 35, float %863, float %870)  ; FMax(a,b)
  %873 = call float @dx.op.binary.f32(i32 36, float %872, float %871)  ; FMin(a,b)
  %874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %875 = extractvalue %dx.types.CBufRet.f32 %874, 1
  %876 = extractvalue %dx.types.CBufRet.f32 %874, 2
  %877 = extractvalue %dx.types.CBufRet.f32 %874, 0
  %878 = fmul fast float %875, %873
  %879 = fadd fast float %877, %878
  %880 = fadd fast float %877, %876
  %881 = fsub fast float %875, %876
  %882 = fadd fast float %881, %877
  %883 = call float @dx.op.binary.f32(i32 35, float %879, float %880)  ; FMax(a,b)
  %884 = call float @dx.op.binary.f32(i32 36, float %883, float %882)  ; FMin(a,b)
  %885 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %822, float %823, float %884, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %886 = extractvalue %dx.types.ResRet.f32 %885, 0
  %887 = extractvalue %dx.types.ResRet.f32 %885, 1
  %888 = extractvalue %dx.types.ResRet.f32 %885, 2
  br label %889

; <label>:889                                     ; preds = %847, %816
  %890 = phi float [ %886, %847 ], [ 1.000000e+00, %816 ]
  %891 = phi float [ %887, %847 ], [ 1.000000e+00, %816 ]
  %892 = phi float [ %888, %847 ], [ 1.000000e+00, %816 ]
  %893 = call float @dx.op.dot3.f32(i32 55, float %890, float %891, float %892, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %894 = select i1 %108, float %893, float %890
  %895 = select i1 %108, float %893, float %891
  %896 = select i1 %108, float 1.000000e+00, float %892
  %897 = fmul fast float %894, %802
  %898 = fmul fast float %895, %803
  %899 = fmul fast float %896, %804
  br label %900

; <label>:900                                     ; preds = %889, %814
  %901 = phi float [ %681, %889 ], [ %46, %814 ]
  %902 = phi float [ %897, %889 ], [ %802, %814 ]
  %903 = phi float [ %898, %889 ], [ %803, %814 ]
  %904 = phi float [ %899, %889 ], [ %804, %814 ]
  br i1 %689, label %1145, label %905

; <label>:905                                     ; preds = %900
  %906 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %17, float %31, float %32, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %907 = extractvalue %dx.types.ResRet.f32 %906, 0
  %908 = extractvalue %dx.types.ResRet.f32 %906, 1
  %909 = extractvalue %dx.types.ResRet.f32 %906, 2
  %910 = call float @dx.op.dot3.f32(i32 55, float %907, float %908, float %909, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %911 = select i1 %108, float %910, float %907
  %912 = select i1 %108, float %910, float %908
  %913 = select i1 %108, float 1.000000e+00, float %909
  %914 = fmul fast float %911, %902
  %915 = fmul fast float %912, %903
  %916 = fmul fast float %913, %904
  %917 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %918 = extractvalue %dx.types.CBufRet.i32 %917, 0
  %919 = icmp eq i32 %918, 0
  br i1 %919, label %1145, label %920, !dx.controlflow.hints !70

; <label>:920                                     ; preds = %905
  %921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %922 = extractvalue %dx.types.CBufRet.f32 %921, 2
  %923 = extractvalue %dx.types.CBufRet.f32 %921, 3
  %924 = fmul fast float %922, %50
  %925 = fmul fast float %923, %51
  %926 = fmul fast float %924, 2.000000e+00
  %927 = fmul fast float %925, 2.000000e+00
  %928 = fsub fast float 1.000000e+00, %926
  %929 = fsub fast float 1.000000e+00, %927
  %930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %931 = extractvalue %dx.types.CBufRet.f32 %930, 0
  %932 = extractvalue %dx.types.CBufRet.f32 %930, 1
  %933 = extractvalue %dx.types.CBufRet.f32 %930, 2
  %934 = fmul fast float %928, %931
  %935 = fmul fast float %928, %932
  %936 = fmul fast float %928, %933
  %937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %938 = extractvalue %dx.types.CBufRet.f32 %937, 0
  %939 = extractvalue %dx.types.CBufRet.f32 %937, 1
  %940 = extractvalue %dx.types.CBufRet.f32 %937, 2
  %941 = fmul fast float %929, %938
  %942 = fmul fast float %929, %939
  %943 = fmul fast float %929, %940
  %944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %945 = extractvalue %dx.types.CBufRet.f32 %944, 0
  %946 = extractvalue %dx.types.CBufRet.f32 %944, 1
  %947 = extractvalue %dx.types.CBufRet.f32 %944, 2
  %948 = fadd fast float %941, %945
  %949 = fadd fast float %948, %934
  %950 = fadd fast float %942, %946
  %951 = fadd fast float %950, %935
  %952 = fadd fast float %943, %947
  %953 = fadd fast float %952, %936
  %954 = fmul fast float %949, %901
  %955 = fmul fast float %951, %901
  %956 = fmul fast float %953, %901
  %957 = fmul fast float %954, %954
  %958 = fmul fast float %955, %955
  %959 = fadd fast float %957, %958
  %960 = fmul fast float %956, %956
  %961 = fadd fast float %959, %960
  %962 = call float @dx.op.unary.f32(i32 24, float %961)  ; Sqrt(value)
  %963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %964 = extractvalue %dx.types.CBufRet.f32 %963, 0
  %965 = fsub fast float %962, %964
  %966 = extractvalue %dx.types.CBufRet.f32 %963, 2
  %967 = fmul fast float %965, %966
  %968 = call float @dx.op.unary.f32(i32 7, float %967)  ; Saturate(value)
  %969 = fadd fast float %968, -5.000000e-01
  %970 = fmul fast float %969, 2.000000e+00
  %971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %972 = extractvalue %dx.types.CBufRet.f32 %971, 2
  %973 = call float @dx.op.binary.f32(i32 36, float %972, float %970)  ; FMin(a,b)
  %974 = fsub fast float -0.000000e+00, %972
  %975 = fcmp fast ogt float %973, %974
  br i1 %975, label %976, label %1145, !dx.controlflow.hints !71

; <label>:976                                     ; preds = %920
  %977 = fmul fast float %973, 5.000000e-01
  %978 = fadd fast float %977, 5.000000e-01
  %979 = call float @dx.op.unary.f32(i32 22, float %978)  ; Frc(value)
  %980 = call float @dx.op.unary.f32(i32 27, float %979)  ; Round_ni(value)
  %981 = call float @dx.op.unary.f32(i32 22, float %979)  ; Frc(value)
  %982 = fmul fast float %981, 2.000000e+00
  %983 = fadd fast float %982, -1.000000e+00
  %984 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %17, float %924, float %925, float %980, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %985 = extractvalue %dx.types.ResRet.f32 %984, 0
  %986 = extractvalue %dx.types.ResRet.f32 %984, 1
  %987 = extractvalue %dx.types.ResRet.f32 %984, 2
  %988 = extractvalue %dx.types.ResRet.f32 %984, 3
  %989 = fadd fast float %985, -5.000000e-01
  %990 = fadd fast float %987, -5.000000e-01
  %991 = fmul fast float %989, 0xBFD5555560000000
  %992 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %990, float %991)  ; FMad(a,b,c)
  %993 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %986, float 0.000000e+00)  ; FMad(a,b,c)
  %994 = fadd fast float %993, %988
  %995 = fmul fast float %989, -7.500000e-01
  %996 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %990, float %995)  ; FMad(a,b,c)
  %997 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %986, float 0.000000e+00)  ; FMad(a,b,c)
  %998 = fadd fast float %997, %988
  %999 = call float @dx.op.binary.f32(i32 35, float %992, float -1.000000e+00)  ; FMax(a,b)
  %1000 = call float @dx.op.binary.f32(i32 35, float %994, float -1.000000e+00)  ; FMax(a,b)
  %1001 = call float @dx.op.binary.f32(i32 35, float %996, float -1.000000e+00)  ; FMax(a,b)
  %1002 = call float @dx.op.binary.f32(i32 35, float %998, float -1.000000e+00)  ; FMax(a,b)
  %1003 = call float @dx.op.binary.f32(i32 36, float %999, float 1.000000e+00)  ; FMin(a,b)
  %1004 = call float @dx.op.binary.f32(i32 36, float %1000, float 1.000000e+00)  ; FMin(a,b)
  %1005 = call float @dx.op.binary.f32(i32 36, float %1001, float 1.000000e+00)  ; FMin(a,b)
  %1006 = call float @dx.op.binary.f32(i32 36, float %1002, float 1.000000e+00)  ; FMin(a,b)
  %1007 = fcmp fast olt float %1003, 0x3FEFFF8020000000
  br i1 %1007, label %1008, label %1123, !dx.controlflow.hints !72

; <label>:1008                                    ; preds = %976
  %1009 = extractvalue %dx.types.CBufRet.f32 %971, 3
  %1010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1011 = extractvalue %dx.types.CBufRet.f32 %1010, 0
  %1012 = extractvalue %dx.types.CBufRet.f32 %1010, 1
  %1013 = extractvalue %dx.types.CBufRet.f32 %1010, 2
  %1014 = extractvalue %dx.types.CBufRet.f32 %1010, 3
  %1015 = fsub fast float %1011, %1003
  %1016 = fsub fast float %1012, %1004
  %1017 = fsub fast float %1013, %1005
  %1018 = fsub fast float %1014, %1006
  %1019 = fmul fast float %1015, %1009
  %1020 = fmul fast float %1016, %1009
  %1021 = fmul fast float %1017, %1009
  %1022 = fmul fast float %1018, %1009
  %1023 = fadd fast float %1019, %1003
  %1024 = fadd fast float %1020, %1004
  %1025 = fsub fast float -0.000000e+00, %1024
  %1026 = fadd fast float %1021, %1005
  %1027 = fadd fast float %1022, %1006
  %1028 = fmul fast float %1023, %1023
  %1029 = fsub fast float %1024, %1028
  %1030 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1029)  ; FMax(a,b)
  %1031 = fdiv fast float 1.000000e+00, %1030
  %1032 = fmul fast float %1024, %1023
  %1033 = fsub fast float %1026, %1032
  %1034 = fsub fast float %983, %1023
  %1035 = fmul fast float %983, %983
  %1036 = fsub fast float %1035, %1024
  %1037 = fmul fast float %1034, %1031
  %1038 = fmul fast float %1037, %1033
  %1039 = fsub fast float %1036, %1038
  %1040 = fmul fast float %1024, %1024
  %1041 = fsub fast float %1027, %1040
  %1042 = fmul fast float %1033, %1033
  %1043 = fmul fast float %1042, %1031
  %1044 = fsub fast float %1041, %1043
  %1045 = fdiv fast float %1039, %1044
  %1046 = fmul fast float %1033, %1045
  %1047 = fsub fast float %1034, %1046
  %1048 = fmul fast float %1047, %1031
  %1049 = fmul fast float %1048, %1023
  %1050 = fsub fast float 1.000000e+00, %1049
  %1051 = fmul fast float %1024, %1045
  %1052 = fsub fast float %1050, %1051
  %1053 = fmul fast float %1048, %1048
  %1054 = fmul fast float %1045, 4.000000e+00
  %1055 = fmul fast float %1054, %1052
  %1056 = fsub fast float %1053, %1055
  %1057 = call float @dx.op.unary.f32(i32 24, float %1056)  ; Sqrt(value)
  %1058 = fcmp fast oge float %1048, 0.000000e+00
  %1059 = fsub fast float -0.000000e+00, %1057
  %1060 = select i1 %1058, float %1059, float %1057
  %1061 = fsub fast float %1060, %1048
  %1062 = fdiv fast float %1061, %1045
  %1063 = fdiv fast float %1052, %1061
  %1064 = fmul fast float %1062, 5.000000e-01
  %1065 = fmul fast float %1063, 2.000000e+00
  %1066 = select i1 %1058, float %1064, float %1065
  %1067 = select i1 %1058, float %1065, float %1064
  %1068 = call float @dx.op.binary.f32(i32 35, float %1066, float %1067)  ; FMax(a,b)
  %1069 = call float @dx.op.binary.f32(i32 36, float %1066, float %1067)  ; FMin(a,b)
  %1070 = fcmp fast ogt float %983, %1069
  br i1 %1070, label %1071, label %1081

; <label>:1071                                    ; preds = %1008
  %1072 = fsub fast float %983, %1069
  %1073 = fsub fast float %1068, %1069
  %1074 = fmul fast float %1072, %1073
  %1075 = fmul fast float %1068, %983
  %1076 = fadd fast float %1068, %983
  %1077 = fmul fast float %1076, %1023
  %1078 = fadd fast float %1075, %1024
  %1079 = fsub fast float %1078, %1077
  %1080 = fdiv fast float %1079, %1074
  br label %1081

; <label>:1081                                    ; preds = %1071, %1008
  %1082 = phi float [ %1080, %1071 ], [ 0.000000e+00, %1008 ]
  %1083 = fcmp fast ogt float %983, %1068
  %1084 = fsub fast float %983, %1068
  br i1 %1083, label %1085, label %1095

; <label>:1085                                    ; preds = %1081
  %1086 = fsub fast float %1068, %1069
  %1087 = fmul fast float %1086, %1084
  %1088 = fmul fast float %1069, %983
  %1089 = fadd fast float %1069, %983
  %1090 = fmul fast float %1089, %1023
  %1091 = fsub fast float %1025, %1088
  %1092 = fadd fast float %1091, %1090
  %1093 = fdiv fast float %1092, %1087
  %1094 = fadd fast float %1093, %1082
  br label %1095

; <label>:1095                                    ; preds = %1085, %1081
  %1096 = phi float [ %1094, %1085 ], [ %1082, %1081 ]
  %1097 = fsub fast float %983, %1069
  %1098 = fmul fast float %1097, %1084
  %1099 = fmul fast float %1069, %1068
  %1100 = fadd fast float %1069, %1068
  %1101 = fmul fast float %1100, %1023
  %1102 = fadd fast float %1099, %1024
  %1103 = fsub fast float %1102, %1101
  %1104 = fdiv fast float %1103, %1098
  %1105 = call float @dx.op.unary.f32(i32 7, float %1096)  ; Saturate(value)
  %1106 = fcmp fast oeq float %815, 0.000000e+00
  %1107 = extractvalue %dx.types.CBufRet.f32 %971, 0
  %1108 = fcmp fast oeq float %1107, 0.000000e+00
  %1109 = or i1 %1106, %1108
  %1110 = fmul fast float %1107, 2.000000e+00
  %1111 = fadd fast float %972, %973
  %1112 = fdiv fast float %1111, %1110
  %1113 = call float @dx.op.unary.f32(i32 7, float %1112)  ; Saturate(value)
  %1114 = fmul fast float %1113, 2.000000e+00
  %1115 = fsub fast float 3.000000e+00, %1114
  %1116 = fmul fast float %1113, %1113
  %1117 = fmul fast float %1116, %1115
  %1118 = select i1 %1109, float 1.000000e+00, float %1117
  %1119 = fmul fast float %1104, %815
  %1120 = fadd fast float %1105, %1119
  %1121 = call float @dx.op.unary.f32(i32 7, float %1120)  ; Saturate(value)
  %1122 = fmul fast float %1118, %1121
  br label %1123

; <label>:1123                                    ; preds = %1095, %976
  %1124 = phi float [ %1122, %1095 ], [ 0.000000e+00, %976 ]
  %1125 = fsub fast float 1.000000e+00, %1124
  %1126 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %17, float %924, float %925, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1127 = extractvalue %dx.types.ResRet.f32 %1126, 0
  %1128 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1129 = extractvalue %dx.types.CBufRet.i32 %1128, 2
  %1130 = icmp eq i32 %1129, 0
  br i1 %1130, label %1136, label %1131

; <label>:1131                                    ; preds = %1123
  %1132 = call float @dx.op.unary.f32(i32 7, float %1124)  ; Saturate(value)
  %1133 = fadd fast float %1127, -1.000000e+00
  %1134 = fmul fast float %1132, %1133
  %1135 = fadd fast float %1134, 1.000000e+00
  br label %1136

; <label>:1136                                    ; preds = %1131, %1123
  %1137 = phi float [ %1135, %1131 ], [ %1125, %1123 ]
  %1138 = call float @dx.op.binary.f32(i32 35, float %1127, float %1137)  ; FMax(a,b)
  %1139 = call float @dx.op.dot3.f32(i32 55, float %1138, float %1138, float %1138, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1140 = select i1 %108, float %1139, float %1138
  %1141 = select i1 %108, float 1.000000e+00, float %1138
  %1142 = fmul fast float %1140, %914
  %1143 = fmul fast float %1140, %915
  %1144 = fmul fast float %1141, %916
  br label %1145

; <label>:1145                                    ; preds = %1136, %920, %905, %900
  %1146 = phi float [ %902, %900 ], [ %914, %905 ], [ %1142, %1136 ], [ %914, %920 ]
  %1147 = phi float [ %903, %900 ], [ %915, %905 ], [ %1143, %1136 ], [ %915, %920 ]
  %1148 = phi float [ %904, %900 ], [ %916, %905 ], [ %1144, %1136 ], [ %916, %920 ]
  %1149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1150 = extractvalue %dx.types.CBufRet.f32 %1149, 2
  %1151 = extractvalue %dx.types.CBufRet.f32 %1149, 3
  %1152 = fmul fast float %1150, %50
  %1153 = fmul fast float %1151, %51
  %1154 = call float @dx.op.unary.f32(i32 7, float %1152)  ; Saturate(value)
  %1155 = call float @dx.op.unary.f32(i32 7, float %1153)  ; Saturate(value)
  %1156 = select i1 %689, i32 2, i32 0
  %1157 = or i32 %1156, 1
  %1158 = uitofp i32 %1157 to float
  %1159 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %1154, float %1155, float %1158, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1160 = extractvalue %dx.types.ResRet.f32 %1159, 0
  %1161 = extractvalue %dx.types.ResRet.f32 %1159, 1
  %1162 = extractvalue %dx.types.ResRet.f32 %1159, 2
  %1163 = extractvalue %dx.types.ResRet.f32 %1159, 3
  %1164 = add nuw nsw i32 %1156, 2
  %1165 = uitofp i32 %1164 to float
  %1166 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %1154, float %1155, float %1165, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1167 = extractvalue %dx.types.ResRet.f32 %1166, 0
  %1168 = extractvalue %dx.types.ResRet.f32 %1166, 1
  %1169 = extractvalue %dx.types.ResRet.f32 %1166, 2
  %1170 = extractvalue %dx.types.ResRet.f32 %1166, 3
  %1171 = call float @dx.op.binary.f32(i32 35, float %1161, float %1162)  ; FMax(a,b)
  %1172 = call float @dx.op.binary.f32(i32 35, float %1160, float %1171)  ; FMax(a,b)
  %1173 = call float @dx.op.binary.f32(i32 35, float %1172, float %1163)  ; FMax(a,b)
  %1174 = call float @dx.op.binary.f32(i32 36, float %1168, float %1169)  ; FMin(a,b)
  %1175 = call float @dx.op.binary.f32(i32 36, float %1167, float %1174)  ; FMin(a,b)
  %1176 = call float @dx.op.binary.f32(i32 36, float %1175, float %1170)  ; FMin(a,b)
  %1177 = fmul fast float %1173, 2.550000e+02
  %1178 = fadd fast float %1177, 0x3F70101020000000
  %1179 = fptoui float %1178 to i32
  %1180 = fmul fast float %1176, 2.550000e+02
  %1181 = fadd fast float %1180, 0x3F70101020000000
  %1182 = fptoui float %1181 to i32
  %1183 = icmp ult i32 %1179, %1182
  br i1 %1183, label %1184, label %1227

; <label>:1184                                    ; preds = %1145
  %1185 = fcmp fast ogt float %45, 9.843750e-01
  %1186 = fadd fast float %901, -4.000000e+00
  %1187 = select i1 %1185, float -4.000000e+00, float %1186
  %1188 = call float @dx.op.binary.f32(i32 35, float %1187, float 0.000000e+00)  ; FMax(a,b)
  %1189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1190 = extractvalue %dx.types.CBufRet.f32 %1189, 0
  %1191 = fadd fast float %1190, %1188
  %1192 = extractvalue %dx.types.CBufRet.f32 %1189, 2
  %1193 = fmul fast float %1191, %1192
  %1194 = call float @dx.op.unary.f32(i32 23, float %1193)  ; Log(value)
  %1195 = extractvalue %dx.types.CBufRet.f32 %1189, 3
  %1196 = fmul fast float %1195, %1194
  %1197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1198 = extractvalue %dx.types.CBufRet.f32 %1197, 2
  %1199 = fmul fast float %1196, %1198
  %1200 = call float @dx.op.unary.f32(i32 7, float %1199)  ; Saturate(value)
  %1201 = uitofp i32 %1179 to float
  %1202 = uitofp i32 %1182 to float
  %1203 = fadd fast float %1201, 5.000000e-01
  %1204 = fadd fast float %1202, 5.000000e-01
  %1205 = fmul fast float %1198, %1203
  %1206 = fmul fast float %1198, %1204
  %1207 = fadd fast float %1205, 0x3F0FFB4800000000
  %1208 = fadd fast float %1206, 0xBF0FFB4800000000
  %1209 = call float @dx.op.binary.f32(i32 35, float %1200, float %1207)  ; FMax(a,b)
  %1210 = call float @dx.op.binary.f32(i32 36, float %1209, float %1208)  ; FMin(a,b)
  %1211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1212 = extractvalue %dx.types.CBufRet.f32 %1211, 1
  %1213 = extractvalue %dx.types.CBufRet.f32 %1211, 2
  %1214 = extractvalue %dx.types.CBufRet.f32 %1211, 0
  %1215 = select i1 %689, float %1214, float 0.000000e+00
  %1216 = fmul fast float %1212, %1210
  %1217 = fadd fast float %1215, %1216
  %1218 = fadd fast float %1215, %1213
  %1219 = fsub fast float %1212, %1213
  %1220 = fadd fast float %1219, %1215
  %1221 = call float @dx.op.binary.f32(i32 35, float %1217, float %1218)  ; FMax(a,b)
  %1222 = call float @dx.op.binary.f32(i32 36, float %1221, float %1220)  ; FMin(a,b)
  %1223 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %1154, float %1155, float %1222, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1224 = extractvalue %dx.types.ResRet.f32 %1223, 0
  %1225 = extractvalue %dx.types.ResRet.f32 %1223, 1
  %1226 = extractvalue %dx.types.ResRet.f32 %1223, 2
  br label %1227

; <label>:1227                                    ; preds = %1184, %1145
  %1228 = phi float [ %1224, %1184 ], [ 1.000000e+00, %1145 ]
  %1229 = phi float [ %1225, %1184 ], [ 1.000000e+00, %1145 ]
  %1230 = phi float [ %1226, %1184 ], [ 1.000000e+00, %1145 ]
  %1231 = call float @dx.op.dot3.f32(i32 55, float %1228, float %1229, float %1230, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1232 = select i1 %108, float %1231, float %1228
  %1233 = select i1 %108, float %1231, float %1229
  %1234 = fmul fast float %1232, %1146
  %1235 = fmul fast float %1233, %1147
  %1236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1237 = extractvalue %dx.types.CBufRet.f32 %1236, 0
  br i1 %108, label %1238, label %1241

; <label>:1238                                    ; preds = %1227
  %1239 = fadd fast float %1234, %1235
  %1240 = fmul fast float %1237, %1239
  br label %1251

; <label>:1241                                    ; preds = %1227
  %1242 = fmul fast float %1230, %1148
  %1243 = fmul fast float %1237, %1234
  %1244 = fmul fast float %1237, %1235
  %1245 = fmul fast float %1242, %1237
  %1246 = call float @dx.op.binary.f32(i32 35, float %1244, float %1245)  ; FMax(a,b)
  %1247 = call float @dx.op.binary.f32(i32 35, float %1243, float %1246)  ; FMax(a,b)
  %1248 = call float @dx.op.binary.f32(i32 35, float %1247, float 0.000000e+00)  ; FMax(a,b)
  %1249 = fcmp fast ugt float %1248, 0x3F10000000000000
  br i1 %1249, label %1251, label %1250

; <label>:1250                                    ; preds = %1241
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1251

; <label>:1251                                    ; preds = %1250, %1241, %1238
  %1252 = phi float [ %1240, %1238 ], [ %1243, %1250 ], [ %1243, %1241 ]
  %1253 = phi float [ 0.000000e+00, %1238 ], [ %1244, %1250 ], [ %1244, %1241 ]
  %1254 = phi float [ 0.000000e+00, %1238 ], [ %1245, %1250 ], [ %1245, %1241 ]
  %1255 = fadd fast float %519, 0x3FE3C6EF40000000
  %1256 = call float @dx.op.unary.f32(i32 22, float %1255)  ; Frc(value)
  %1257 = call float @dx.op.unary.f32(i32 23, float %1252)  ; Log(value)
  %1258 = fadd fast float %1257, -7.000000e+00
  %1259 = call float @dx.op.unary.f32(i32 21, float %1258)  ; Exp(value)
  %1260 = fmul fast float %1256, 2.000000e+00
  %1261 = fadd fast float %1260, -1.000000e+00
  %1262 = fmul fast float %1259, %1261
  %1263 = fcmp fast ogt float %1252, 0.000000e+00
  %1264 = select i1 %1263, float %1262, float 0.000000e+00
  %1265 = fadd fast float %1264, %1252
  %1266 = fadd fast float %519, 0x3FF3C6EF40000000
  %1267 = call float @dx.op.unary.f32(i32 22, float %1266)  ; Frc(value)
  %1268 = call float @dx.op.unary.f32(i32 23, float %1253)  ; Log(value)
  %1269 = fadd fast float %1268, -7.000000e+00
  %1270 = call float @dx.op.unary.f32(i32 21, float %1269)  ; Exp(value)
  %1271 = fmul fast float %1267, 2.000000e+00
  %1272 = fadd fast float %1271, -1.000000e+00
  %1273 = fmul fast float %1270, %1272
  %1274 = fcmp fast ogt float %1253, 0.000000e+00
  %1275 = select i1 %1274, float %1273, float 0.000000e+00
  %1276 = fadd fast float %1275, %1253
  %1277 = fadd fast float %519, 0x3FFDAA66E0000000
  %1278 = call float @dx.op.unary.f32(i32 22, float %1277)  ; Frc(value)
  %1279 = call float @dx.op.unary.f32(i32 23, float %1254)  ; Log(value)
  %1280 = fadd fast float %1279, -6.000000e+00
  %1281 = call float @dx.op.unary.f32(i32 21, float %1280)  ; Exp(value)
  %1282 = fmul fast float %1278, 2.000000e+00
  %1283 = fadd fast float %1282, -1.000000e+00
  %1284 = fmul fast float %1281, %1283
  %1285 = fcmp fast ogt float %1254, 0.000000e+00
  %1286 = select i1 %1285, float %1284, float 0.000000e+00
  %1287 = fadd fast float %1286, %1254
  %1288 = select i1 %108, float %1253, float %1276
  %1289 = select i1 %108, float %1254, float %1287
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1290 = call float @dx.op.binary.f32(i32 36, float %1265, float 3.225500e+04)  ; FMin(a,b)
  %1291 = call float @dx.op.binary.f32(i32 36, float %1288, float 3.225500e+04)  ; FMin(a,b)
  %1292 = call float @dx.op.binary.f32(i32 36, float %1289, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1290)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1291)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1292)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #2

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
!dx.viewIdState = !{!33}
!dx.entryPoints = !{!34}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !25, !28}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !17, !18, !19, !21, !22, !23, !24}
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
!17 = !{i32 9, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!18 = !{i32 10, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!19 = !{i32 11, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !20}
!20 = !{i32 0, i32 14}
!21 = !{i32 12, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!22 = !{i32 13, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 7, i32 0, !7}
!23 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!24 = !{i32 15, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 46, i32 1, i32 4, i32 0, !7}
!25 = !{!26, !27}
!26 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!27 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!28 = !{!29, !30, !31, !32}
!29 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!30 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!31 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!32 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!33 = !{[37 x i32] [i32 35, i32 8, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7]}
!34 = !{void ()* @ps_main, !"ps_main", !35, !4, !61}
!35 = !{!36, !57, null}
!36 = !{!37, !40, !42, !44, !47, !49, !51, !53, !54, !56}
!37 = !{i32 0, !"SV_Position", i8 9, i8 3, !38, i8 4, i32 1, i8 4, i32 0, i8 0, !39}
!38 = !{i32 0}
!39 = !{i32 3, i32 15}
!40 = !{i32 1, !"COLOR", i8 9, i8 0, !38, i8 2, i32 1, i8 4, i32 1, i8 0, !41}
!41 = !{i32 3, i32 8}
!42 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !38, i8 2, i32 1, i8 2, i32 2, i8 0, !43}
!43 = !{i32 3, i32 3}
!44 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !45, i8 1, i32 1, i8 4, i32 3, i8 0, !46}
!45 = !{i32 2}
!46 = !{i32 3, i32 7}
!47 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !48, i8 2, i32 1, i8 4, i32 4, i8 0, !39}
!48 = !{i32 3}
!49 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !50, i8 3, i32 1, i8 2, i32 5, i8 0, !43}
!50 = !{i32 5}
!51 = !{i32 6, !"TEXCOORD", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 6, i8 0, !39}
!52 = !{i32 8}
!53 = !{i32 7, !"QUAD_POSITION", i8 9, i8 0, !38, i8 1, i32 1, i8 4, i32 7, i8 0, !39}
!54 = !{i32 8, !"COLOR", i8 5, i8 0, !48, i8 1, i32 1, i8 3, i32 8, i8 0, !55}
!55 = !{i32 3, i32 5}
!56 = !{i32 9, !"SV_SampleIndex", i8 5, i8 12, !38, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!57 = !{!58, !59}
!58 = !{i32 0, !"SV_Target", i8 9, i8 16, !38, i8 0, i32 1, i8 4, i32 0, i8 0, !39}
!59 = !{i32 1, !"SV_Target", i8 9, i8 16, !60, i8 0, i32 1, i8 4, i32 1, i8 0, !39}
!60 = !{i32 1}
!61 = !{i32 0, i64 24}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 1}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 1}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 1}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 1}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 1}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 1}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 1}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 1}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}

