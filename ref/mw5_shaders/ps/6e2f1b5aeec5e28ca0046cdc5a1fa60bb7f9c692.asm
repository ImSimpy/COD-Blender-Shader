;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float      w
; TEXCOORD                 0   xyzw        2     NONE   float   xyzw
; TEXCOORD                 3   xyzw        3     NONE   float   xyzw
; TEXCOORD                 4   xyzw        4     NONE   float   xy  
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
; shader hash: 4f8e5d6942631bfa01e1a8ee4c49f58f
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
; TEXCOORD                 4                 linear       
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
;   output 0 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 20, 21, 24, 25, 26, 27, 28, 29, 30, 31, 32, 34 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 20, 21, 24, 25, 26, 27, 28, 29, 30, 31, 32, 34 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 20, 21, 26, 27, 28, 29, 30, 31, 32, 34 }
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
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %51 = extractvalue %dx.types.CBufRet.f32 %50, 0
  %52 = fmul fast float %51, %44
  %53 = fmul fast float %51, %45
  %54 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %55 = extractvalue %dx.types.CBufRet.f32 %54, 2
  %56 = extractvalue %dx.types.CBufRet.f32 %54, 3
  %57 = fmul fast float %52, 2.000000e+00
  %58 = fmul fast float %57, %55
  %59 = fmul fast float %53, 2.000000e+00
  %60 = fmul fast float %59, %56
  %61 = fsub fast float 1.000000e+00, %58
  %62 = fsub fast float 1.000000e+00, %60
  %63 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %64 = extractvalue %dx.types.CBufRet.f32 %63, 0
  %65 = extractvalue %dx.types.CBufRet.f32 %63, 1
  %66 = extractvalue %dx.types.CBufRet.f32 %63, 2
  %67 = fmul fast float %61, %64
  %68 = fmul fast float %61, %65
  %69 = fmul fast float %61, %66
  %70 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %71 = extractvalue %dx.types.CBufRet.f32 %70, 0
  %72 = extractvalue %dx.types.CBufRet.f32 %70, 1
  %73 = extractvalue %dx.types.CBufRet.f32 %70, 2
  %74 = fmul fast float %62, %71
  %75 = fmul fast float %62, %72
  %76 = fmul fast float %62, %73
  %77 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %78 = extractvalue %dx.types.CBufRet.f32 %77, 0
  %79 = extractvalue %dx.types.CBufRet.f32 %77, 1
  %80 = extractvalue %dx.types.CBufRet.f32 %77, 2
  %81 = fadd fast float %74, %78
  %82 = fadd fast float %81, %67
  %83 = fadd fast float %75, %79
  %84 = fadd fast float %83, %68
  %85 = fadd fast float %76, %80
  %86 = fadd fast float %85, %69
  %87 = fmul fast float %82, %47
  %88 = fmul fast float %84, %47
  %89 = fmul fast float %86, %47
  %90 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %91 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %92 = extractvalue %dx.types.CBufRet.i32 %91, 3
  %93 = and i32 %92, 3
  %94 = icmp ne i32 %93, 0
  %95 = and i32 %92, 4
  %96 = icmp ne i32 %95, 0
  %97 = and i1 %94, %96
  br i1 %97, label %98, label %109

; <label>:98                                      ; preds = %0
  %99 = extractvalue %dx.types.CBufRet.f32 %90, 3
  %100 = fmul fast float %99, %53
  %101 = extractvalue %dx.types.CBufRet.f32 %90, 2
  %102 = fmul fast float %101, %52
  %103 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %17, float %102, float %100, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %104 = extractvalue %dx.types.ResRet.f32 %103, 0
  %105 = fsub fast float 1.000000e+00, %104
  %106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %107 = extractvalue %dx.types.CBufRet.f32 %106, 0
  %108 = fcmp fast olt float %105, %107
  br label %112

; <label>:109                                     ; preds = %0
  %110 = icmp eq i32 %95, 0
  %111 = and i1 %94, %110
  br label %112

; <label>:112                                     ; preds = %109, %98
  %113 = phi i1 [ %108, %98 ], [ %111, %109 ]
  %114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %115 = extractvalue %dx.types.CBufRet.f32 %114, 2
  %116 = extractvalue %dx.types.CBufRet.f32 %114, 3
  %117 = fmul fast float %115, %52
  %118 = fmul fast float %116, %53
  %119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %120 = extractvalue %dx.types.ResRet.i32 %119, 0
  %121 = and i32 %120, 114688
  %122 = icmp ne i32 %121, 0
  %123 = select i1 %122, float %117, float 0.000000e+00
  %124 = select i1 %122, float %118, float 0.000000e+00
  %125 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %18, float %123, float %124, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %126 = extractvalue %dx.types.ResRet.f32 %125, 0
  %127 = fmul fast float %126, 2.550000e+02
  %128 = fptoui float %127 to i32
  %129 = select i1 %122, i32 %128, i32 0
  %130 = mul i32 %21, 208
  %131 = add i32 %130, 188
  %132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %131, i32 undef)  ; BufferLoad(srv,index,wot)
  %133 = extractvalue %dx.types.ResRet.i32 %132, 0
  %134 = and i32 %92, 114688
  %135 = and i32 %92, 8
  %136 = icmp ne i32 %135, 0
  %137 = or i1 %113, %136
  %138 = select i1 %137, i32 %134, i32 16384
  %139 = and i32 %138, %133
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %142

; <label>:141                                     ; preds = %112
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %142

; <label>:142                                     ; preds = %141, %112
  %143 = and i32 %133, 512
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %169, label %145

; <label>:145                                     ; preds = %142
  %146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %147 = extractvalue %dx.types.CBufRet.f32 %146, 2
  %148 = extractvalue %dx.types.CBufRet.f32 %146, 3
  %149 = fmul fast float %147, %52
  %150 = fmul fast float %148, %53
  %151 = extractvalue %dx.types.CBufRet.f32 %146, 0
  %152 = extractvalue %dx.types.CBufRet.f32 %146, 1
  %153 = fdiv fast float %151, %152
  %154 = fcmp fast ogt float %153, 0x3FFC71C720000000
  br i1 %154, label %155, label %161

; <label>:155                                     ; preds = %145
  %156 = fdiv fast float 0x3FFC71C720000000, %153
  %157 = fmul fast float %156, %150
  %158 = fsub fast float 1.000000e+00, %156
  %159 = fmul fast float %158, 5.000000e-01
  %160 = fadd fast float %159, %157
  br label %169

; <label>:161                                     ; preds = %145
  %162 = fcmp fast olt float %153, 0x3FFC71C720000000
  br i1 %162, label %163, label %169

; <label>:163                                     ; preds = %161
  %164 = fmul fast float %149, 5.625000e-01
  %165 = fmul fast float %164, %153
  %166 = fmul fast float %153, 2.812500e-01
  %167 = fsub fast float 5.000000e-01, %166
  %168 = fadd fast float %167, %165
  br label %169

; <label>:169                                     ; preds = %163, %161, %155, %142
  %170 = phi float [ %39, %142 ], [ %149, %155 ], [ %168, %163 ], [ %149, %161 ]
  %171 = phi float [ %40, %142 ], [ %160, %155 ], [ %150, %163 ], [ %150, %161 ]
  %172 = add i32 %22, 104
  %173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %172, i32 undef)  ; BufferLoad(srv,index,wot)
  %174 = extractvalue %dx.types.ResRet.i32 %173, 0
  %175 = bitcast i32 %174 to float
  %176 = add i32 %22, 88
  %177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %176, i32 undef)  ; BufferLoad(srv,index,wot)
  %178 = extractvalue %dx.types.ResRet.i32 %177, 0
  %179 = extractvalue %dx.types.ResRet.i32 %177, 1
  %180 = extractvalue %dx.types.ResRet.i32 %177, 2
  %181 = extractvalue %dx.types.ResRet.i32 %177, 3
  %182 = bitcast i32 %178 to float
  %183 = bitcast i32 %179 to float
  %184 = bitcast i32 %180 to float
  %185 = bitcast i32 %181 to float
  %186 = add i32 %22, 124
  %187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %186, i32 undef)  ; BufferLoad(srv,index,wot)
  %188 = extractvalue %dx.types.ResRet.i32 %187, 0
  %189 = add i32 %188, 0
  %190 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %189, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %191 = fmul fast float %184, %39
  %192 = fmul fast float %185, %40
  %193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %194 = extractvalue %dx.types.CBufRet.f32 %193, 3
  %195 = fmul fast float %194, %182
  %196 = fmul fast float %194, %183
  %197 = fadd fast float %195, %191
  %198 = fadd fast float %196, %192
  %199 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %190, %dx.types.Handle %49, float %197, float %198, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %200 = extractvalue %dx.types.ResRet.f32 %199, 0
  %201 = extractvalue %dx.types.ResRet.f32 %199, 1
  %202 = fmul fast float %200, 2.000000e+00
  %203 = fmul fast float %201, 2.000000e+00
  %204 = fadd fast float %202, -1.000000e+00
  %205 = fadd fast float %203, -1.000000e+00
  %206 = fmul fast float %204, %175
  %207 = fmul fast float %205, %175
  %208 = fadd fast float %206, %170
  %209 = fadd fast float %207, %171
  %210 = and i32 %133, 16
  %211 = icmp ne i32 %210, 0
  %212 = select i1 %211, float 1.000000e+00, float %43
  %213 = icmp eq i32 %210, 0
  br i1 %213, label %233, label %214, !dx.controlflow.hints !61

; <label>:214                                     ; preds = %169
  %215 = add i32 %130, 64
  %216 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %215, i32 undef)  ; BufferLoad(srv,index,wot)
  %217 = extractvalue %dx.types.ResRet.f32 %216, 0
  %218 = fadd fast float %217, 1.000000e+00
  %219 = fmul fast float %218, %43
  %220 = fsub fast float %219, %217
  %221 = fsub fast float %218, %220
  %222 = call float @dx.op.unary.f32(i32 7, float %221)  ; Saturate(value)
  %223 = fsub fast float 1.000000e+00, %219
  %224 = call float @dx.op.unary.f32(i32 7, float %223)  ; Saturate(value)
  %225 = fsub fast float %222, %224
  %226 = fsub fast float %212, %224
  %227 = fdiv fast float %226, %225
  %228 = call float @dx.op.unary.f32(i32 7, float %227)  ; Saturate(value)
  %229 = fmul fast float %228, 2.000000e+00
  %230 = fsub fast float 3.000000e+00, %229
  %231 = fmul fast float %228, %228
  %232 = fmul fast float %231, %230
  br label %233

; <label>:233                                     ; preds = %214, %169
  %234 = phi float [ %232, %214 ], [ %212, %169 ]
  %235 = and i32 %133, 1024
  %236 = icmp eq i32 %235, 0
  %237 = add i32 %22, 128
  br i1 %236, label %270, label %238, !dx.controlflow.hints !62

; <label>:238                                     ; preds = %233
  %239 = add i32 %130, 48
  %240 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %239, i32 undef)  ; BufferLoad(srv,index,wot)
  %241 = extractvalue %dx.types.ResRet.f32 %240, 0
  %242 = extractvalue %dx.types.ResRet.f32 %240, 1
  %243 = fadd fast float %41, -5.000000e-01
  %244 = fmul fast float %243, 2.000000e+00
  %245 = fmul fast float %33, %244
  %246 = fmul fast float %34, %244
  %247 = fmul fast float %245, %242
  %248 = fmul fast float %246, %242
  %249 = call float @dx.op.dot2.f32(i32 54, float %33, float %34, float %33, float %34)  ; Dot2(ax,ay,bx,by)
  %250 = call float @dx.op.unary.f32(i32 25, float %249)  ; Rsqrt(value)
  %251 = fmul fast float %247, %250
  %252 = fmul fast float %248, %250
  %253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %254 = extractvalue %dx.types.CBufRet.f32 %253, 0
  %255 = extractvalue %dx.types.CBufRet.f32 %253, 1
  %256 = fsub fast float %87, %247
  %257 = fadd fast float %256, %254
  %258 = fadd fast float %257, %251
  %259 = fsub fast float %88, %248
  %260 = fadd fast float %259, %255
  %261 = fadd fast float %260, %252
  %262 = fmul fast float %258, %241
  %263 = fmul fast float %261, %241
  %264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %237, i32 undef)  ; BufferLoad(srv,index,wot)
  %265 = extractvalue %dx.types.ResRet.i32 %264, 0
  %266 = add i32 %265, 0
  %267 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %266, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %268 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %267, %dx.types.Handle %49, float %263, float %262, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %269 = extractvalue %dx.types.ResRet.f32 %268, 0
  br label %277

; <label>:270                                     ; preds = %233
  %271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %237, i32 undef)  ; BufferLoad(srv,index,wot)
  %272 = extractvalue %dx.types.ResRet.i32 %271, 0
  %273 = add i32 %272, 0
  %274 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %273, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %275 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %274, %dx.types.Handle %49, float %41, float %42, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %276 = extractvalue %dx.types.ResRet.f32 %275, 0
  br label %277

; <label>:277                                     ; preds = %270, %238
  %278 = phi float [ %269, %238 ], [ %276, %270 ]
  %279 = fmul fast float %278, %234
  %280 = fcmp fast ogt float %279, 0.000000e+00
  br i1 %280, label %282, label %281

; <label>:281                                     ; preds = %277
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %282

; <label>:282                                     ; preds = %281, %277
  %283 = call float @dx.op.unary.f32(i32 7, float %279)  ; Saturate(value)
  %284 = fmul fast float %52, 5.000000e-01
  %285 = fmul fast float %53, 5.000000e-01
  %286 = fptosi float %284 to i32
  %287 = fptosi float %285 to i32
  %288 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %8, i32 0, i32 %286, i32 %287, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %289 = extractvalue %dx.types.ResRet.i32 %288, 0
  %290 = lshr i32 %289, 18
  %291 = uitofp i32 %290 to float
  %292 = fmul fast float %291, 0x3F4C00EBA0000000
  %293 = call float @dx.op.unary.f32(i32 21, float %292)  ; Exp(value)
  %294 = fadd fast float %293, -1.000000e+00
  %295 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %8, i32 0)  ; GetDimensions(handle,mipLevel)
  %296 = extractvalue %dx.types.Dimensions %295, 0
  %297 = sitofp i32 %296 to float
  %298 = extractvalue %dx.types.Dimensions %295, 1
  %299 = sitofp i32 %298 to float
  %300 = fcmp fast oge float %284, %297
  %301 = fcmp fast oge float %285, %299
  %302 = or i1 %300, %301
  %303 = select i1 %302, float 0x4197782600000000, float %294
  %304 = fsub fast float %303, %47
  %305 = fcmp fast ogt float %304, 0.000000e+00
  %306 = and i32 %129, -2
  %307 = icmp eq i32 %306, 2
  %308 = and i1 %307, %305
  %309 = xor i1 %305, true
  %310 = icmp eq i32 %129, 1
  %311 = and i1 %310, %309
  %312 = or i1 %308, %311
  %313 = and i32 %133, 262144
  %314 = icmp ne i32 %313, 0
  %315 = and i1 %314, %312
  %316 = xor i1 %312, true
  %317 = and i32 %133, 131072
  %318 = icmp ne i32 %317, 0
  %319 = and i1 %318, %316
  %320 = or i1 %315, %319
  br i1 %320, label %321, label %322

; <label>:321                                     ; preds = %282
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %322

; <label>:322                                     ; preds = %321, %282
  %323 = and i32 %133, 32
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %574, label %325, !dx.controlflow.hints !63

; <label>:325                                     ; preds = %322
  %326 = add i32 %130, 80
  %327 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %328 = extractvalue %dx.types.ResRet.f32 %327, 0
  %329 = extractvalue %dx.types.ResRet.f32 %327, 1
  %330 = extractvalue %dx.types.ResRet.f32 %327, 2
  %331 = extractvalue %dx.types.ResRet.f32 %327, 3
  %332 = add i32 %130, 96
  %333 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %332, i32 undef)  ; BufferLoad(srv,index,wot)
  %334 = extractvalue %dx.types.ResRet.f32 %333, 0
  %335 = extractvalue %dx.types.ResRet.f32 %333, 1
  %336 = extractvalue %dx.types.ResRet.f32 %333, 2
  %337 = add i32 %130, 112
  %338 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %337, i32 undef)  ; BufferLoad(srv,index,wot)
  %339 = extractvalue %dx.types.ResRet.f32 %338, 0
  %340 = extractvalue %dx.types.ResRet.f32 %338, 1
  %341 = extractvalue %dx.types.ResRet.f32 %338, 2
  %342 = extractvalue %dx.types.ResRet.f32 %338, 3
  %343 = add i32 %130, 128
  %344 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %343, i32 undef)  ; BufferLoad(srv,index,wot)
  %345 = extractvalue %dx.types.ResRet.f32 %344, 0
  %346 = extractvalue %dx.types.ResRet.f32 %344, 1
  %347 = extractvalue %dx.types.ResRet.f32 %344, 2
  %348 = extractvalue %dx.types.ResRet.f32 %344, 3
  %349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %131, i32 undef)  ; BufferLoad(srv,index,wot)
  %350 = extractvalue %dx.types.ResRet.i32 %349, 0
  %351 = and i32 %350, 4096
  %352 = icmp ne i32 %351, 0
  %353 = fcmp fast une float %336, 0.000000e+00
  %354 = and i32 %350, 64
  %355 = icmp ne i32 %354, 0
  %356 = and i32 %350, 128
  %357 = icmp eq i32 %356, 0
  %358 = and i32 %350, 2048
  %359 = icmp eq i32 %358, 0
  %360 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %361 = extractvalue %dx.types.Dimensions %360, 0
  %362 = sitofp i32 %361 to float
  %363 = extractvalue %dx.types.Dimensions %360, 1
  %364 = sitofp i32 %363 to float
  %365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %366 = extractvalue %dx.types.CBufRet.f32 %365, 2
  %367 = extractvalue %dx.types.CBufRet.f32 %365, 3
  %368 = fmul fast float %366, %52
  %369 = fmul fast float %367, %53
  %370 = fmul fast float %368, %362
  %371 = fmul fast float %369, %364
  %372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %373 = extractvalue %dx.types.CBufRet.f32 %372, 1
  %374 = fsub fast float -0.000000e+00, %373
  %375 = fptoui float %374 to i32
  %376 = fptoui float %370 to i32
  %377 = fptoui float %371 to i32
  %378 = and i32 %375, 31
  %379 = lshr i32 %376, %378
  %380 = lshr i32 %377, %378
  %381 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 %375, i32 %379, i32 %380, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %382 = extractvalue %dx.types.ResRet.f32 %381, 0
  %383 = fcmp fast ogt float %382, -1.000000e+00
  %384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %385 = extractvalue %dx.types.CBufRet.f32 %384, 1
  %386 = select i1 %383, float %385, float 1.000000e+00
  %387 = fadd fast float %382, 1.000000e+00
  %388 = fmul fast float %386, %387
  %389 = call float @dx.op.unary.f32(i32 6, float %388)  ; FAbs(value)
  %390 = extractvalue %dx.types.CBufRet.f32 %384, 3
  %391 = fcmp fast oge float %389, %390
  %392 = select i1 %391, float 0x4197782600000000, float %389
  br i1 %359, label %470, label %393, !dx.controlflow.hints !64

; <label>:393                                     ; preds = %325
  %394 = fmul fast float %57, %366
  %395 = fmul fast float %59, %367
  %396 = fsub fast float 1.000000e+00, %394
  %397 = fsub fast float 1.000000e+00, %395
  %398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %399 = extractvalue %dx.types.CBufRet.f32 %398, 0
  %400 = extractvalue %dx.types.CBufRet.f32 %398, 1
  %401 = extractvalue %dx.types.CBufRet.f32 %398, 2
  %402 = fmul fast float %396, %399
  %403 = fmul fast float %396, %400
  %404 = fmul fast float %396, %401
  %405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %406 = extractvalue %dx.types.CBufRet.f32 %405, 0
  %407 = extractvalue %dx.types.CBufRet.f32 %405, 1
  %408 = extractvalue %dx.types.CBufRet.f32 %405, 2
  %409 = fmul fast float %397, %406
  %410 = fmul fast float %397, %407
  %411 = fmul fast float %397, %408
  %412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %413 = extractvalue %dx.types.CBufRet.f32 %412, 0
  %414 = extractvalue %dx.types.CBufRet.f32 %412, 1
  %415 = extractvalue %dx.types.CBufRet.f32 %412, 2
  %416 = fadd fast float %409, %413
  %417 = fadd fast float %416, %402
  %418 = fadd fast float %410, %414
  %419 = fadd fast float %418, %403
  %420 = fadd fast float %411, %415
  %421 = fadd fast float %420, %404
  %422 = fmul fast float %417, %392
  %423 = fmul fast float %419, %392
  %424 = fmul fast float %421, %392
  %425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %426 = extractvalue %dx.types.CBufRet.f32 %425, 0
  %427 = extractvalue %dx.types.CBufRet.f32 %425, 1
  %428 = extractvalue %dx.types.CBufRet.f32 %425, 2
  %429 = fsub fast float %426, %23
  %430 = fadd fast float %429, %422
  %431 = fsub fast float %427, %24
  %432 = fadd fast float %431, %423
  %433 = fsub fast float %428, %25
  %434 = fadd fast float %433, %424
  %435 = fmul fast float %26, %26
  %436 = call float @dx.op.dot3.f32(i32 55, float %430, float %432, float %434, float %430, float %432, float %434)  ; Dot3(ax,ay,az,bx,by,bz)
  %437 = fsub fast float %435, %436
  %438 = fmul fast float %335, %435
  %439 = fmul fast float %334, %435
  %440 = fcmp fast olt float %437, %438
  %441 = fcmp fast ogt float %437, %439
  %442 = or i1 %440, %441
  %443 = select i1 %442, float 0.000000e+00, float %437
  %444 = fsub fast float %334, %335
  %445 = fmul fast float %444, %435
  %446 = fsub fast float %443, %438
  %447 = fdiv fast float %446, %445
  %448 = call float @dx.op.unary.f32(i32 7, float %447)  ; Saturate(value)
  %449 = fmul fast float %448, 2.000000e+00
  %450 = fsub fast float 3.000000e+00, %449
  %451 = fmul fast float %448, %448
  %452 = fmul fast float %451, %450
  %453 = fsub fast float %342, %348
  %454 = fmul fast float %452, %453
  %455 = fadd fast float %454, %348
  %456 = fmul fast float %339, %27
  %457 = fmul fast float %340, %28
  %458 = fmul fast float %341, %29
  %459 = fsub fast float %456, %345
  %460 = fsub fast float %457, %346
  %461 = fsub fast float %458, %347
  %462 = fmul fast float %452, %459
  %463 = fmul fast float %452, %460
  %464 = fmul fast float %452, %461
  %465 = fadd fast float %462, %345
  %466 = fadd fast float %463, %346
  %467 = fadd fast float %464, %347
  %468 = fmul fast float %328, %328
  %469 = fmul fast float %468, %443
  br label %565

; <label>:470                                     ; preds = %325
  %471 = and i32 %350, 256
  %472 = icmp eq i32 %471, 0
  %473 = fsub fast float %392, %47
  br i1 %472, label %522, label %474

; <label>:474                                     ; preds = %470
  %475 = fadd fast float %334, %47
  %476 = fcmp fast olt float %392, %47
  %477 = fcmp fast ogt float %392, %475
  %478 = or i1 %476, %477
  %479 = select i1 %478, float 0.000000e+00, float %473
  %480 = call float @dx.op.unary.f32(i32 83, float %392)  ; DerivCoarseX(value)
  %481 = call float @dx.op.unary.f32(i32 84, float %392)  ; DerivCoarseY(value)
  %482 = fmul fast float %480, %480
  %483 = fmul fast float %481, %481
  %484 = fadd fast float %483, %482
  %485 = call float @dx.op.unary.f32(i32 24, float %484)  ; Sqrt(value)
  %486 = extractvalue %dx.types.CBufRet.f32 %372, 2
  %487 = fmul fast float %486, %485
  %488 = call float @dx.op.unary.f32(i32 7, float %487)  ; Saturate(value)
  %489 = fmul fast float %488, %335
  %490 = fdiv fast float %473, %489
  %491 = call float @dx.op.unary.f32(i32 7, float %490)  ; Saturate(value)
  %492 = fmul fast float %491, 2.000000e+00
  %493 = fsub fast float 3.000000e+00, %492
  %494 = fmul fast float %491, %491
  %495 = fmul fast float %494, %493
  %496 = fsub fast float %392, %475
  %497 = fadd fast float %496, %489
  %498 = fdiv fast float %497, %489
  %499 = call float @dx.op.unary.f32(i32 7, float %498)  ; Saturate(value)
  %500 = fmul fast float %499, 2.000000e+00
  %501 = fsub fast float 3.000000e+00, %500
  %502 = fmul fast float %499, %499
  %503 = fmul fast float %502, %501
  %504 = fsub fast float %495, %503
  %505 = fsub fast float %342, %348
  %506 = fmul fast float %504, %505
  %507 = fadd fast float %506, %348
  %508 = fmul fast float %339, %27
  %509 = fmul fast float %340, %28
  %510 = fmul fast float %341, %29
  %511 = fsub fast float %508, %345
  %512 = fsub fast float %509, %346
  %513 = fsub fast float %510, %347
  %514 = fmul fast float %504, %511
  %515 = fmul fast float %504, %512
  %516 = fmul fast float %504, %513
  %517 = fadd fast float %514, %345
  %518 = fadd fast float %515, %346
  %519 = fadd fast float %516, %347
  %520 = fmul fast float %479, %328
  %521 = call float @dx.op.unary.f32(i32 6, float %520)  ; FAbs(value)
  br label %565

; <label>:522                                     ; preds = %470
  br i1 %353, label %523, label %536

; <label>:523                                     ; preds = %522
  %524 = fdiv fast float 5.000000e+01, %26
  %525 = select i1 %355, float %524, float 1.000000e+00
  %526 = fmul fast float %525, %328
  %527 = fmul fast float %39, 2.000000e+00
  %528 = fmul fast float %40, 2.000000e+00
  %529 = fadd fast float %527, -1.000000e+00
  %530 = fadd fast float %528, -1.000000e+00
  %531 = call float @dx.op.dot2.f32(i32 54, float %529, float %530, float %529, float %530)  ; Dot2(ax,ay,bx,by)
  %532 = fmul fast float %336, %26
  %533 = fmul fast float %532, %531
  %534 = fsub fast float %473, %533
  %535 = fmul fast float %526, %534
  br label %565

; <label>:536                                     ; preds = %522
  br i1 %357, label %557, label %537

; <label>:537                                     ; preds = %536
  %538 = fmul fast float %26, 0x3F947AE140000000
  %539 = select i1 %355, float %538, float 1.000000e+00
  %540 = fdiv fast float 1.000000e+00, %539
  %541 = fmul fast float %539, %329
  %542 = fmul fast float %539, %330
  %543 = fmul fast float %540, %331
  %544 = call float @dx.op.unary.f32(i32 6, float %473)  ; FAbs(value)
  %545 = fcmp fast olt float %544, %541
  br i1 %545, label %546, label %550, !dx.controlflow.hints !65

; <label>:546                                     ; preds = %537
  %547 = fmul fast float %540, %328
  %548 = fmul fast float %547, %544
  %549 = call float @dx.op.unary.f32(i32 6, float %548)  ; FAbs(value)
  br label %565

; <label>:550                                     ; preds = %537
  %551 = fcmp fast ogt float %544, %542
  br i1 %551, label %552, label %565

; <label>:552                                     ; preds = %550
  %553 = fsub fast float %544, %542
  %554 = fmul fast float %543, %553
  %555 = call float @dx.op.unary.f32(i32 6, float %554)  ; FAbs(value)
  %556 = fsub fast float 1.000000e+00, %555
  br label %565

; <label>:557                                     ; preds = %536
  %558 = fdiv fast float 5.000000e+01, %26
  %559 = select i1 %355, float %558, float 1.000000e+00
  %560 = fmul fast float %559, %328
  %561 = call float @dx.op.unary.f32(i32 6, float %304)  ; FAbs(value)
  %562 = select i1 %352, float %561, float 0x47EFFFFFE0000000
  %563 = call float @dx.op.binary.f32(i32 36, float %473, float %562)  ; FMin(a,b)
  %564 = fmul fast float %560, %563
  br label %565

; <label>:565                                     ; preds = %557, %552, %550, %546, %523, %474, %393
  %566 = phi float [ %469, %393 ], [ %521, %474 ], [ %535, %523 ], [ %564, %557 ], [ %549, %546 ], [ %556, %552 ], [ %544, %550 ]
  %567 = phi float [ %465, %393 ], [ %517, %474 ], [ %27, %523 ], [ %27, %557 ], [ %27, %546 ], [ %27, %552 ], [ %27, %550 ]
  %568 = phi float [ %466, %393 ], [ %518, %474 ], [ %28, %523 ], [ %28, %557 ], [ %28, %546 ], [ %28, %552 ], [ %28, %550 ]
  %569 = phi float [ %467, %393 ], [ %519, %474 ], [ %29, %523 ], [ %29, %557 ], [ %29, %546 ], [ %29, %552 ], [ %29, %550 ]
  %570 = phi float [ %455, %393 ], [ %507, %474 ], [ 1.000000e+00, %523 ], [ 1.000000e+00, %557 ], [ 1.000000e+00, %546 ], [ 1.000000e+00, %552 ], [ 1.000000e+00, %550 ]
  %571 = call float @dx.op.unary.f32(i32 7, float %566)  ; Saturate(value)
  %572 = fmul fast float %570, %283
  %573 = fmul fast float %572, %571
  br label %574

; <label>:574                                     ; preds = %565, %322
  %575 = phi float [ %573, %565 ], [ %283, %322 ]
  %576 = phi float [ %567, %565 ], [ %27, %322 ]
  %577 = phi float [ %568, %565 ], [ %28, %322 ]
  %578 = phi float [ %569, %565 ], [ %29, %322 ]
  %579 = fmul fast float %576, %30
  %580 = fmul fast float %577, %30
  %581 = fmul fast float %578, %30
  %582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %583 = extractvalue %dx.types.CBufRet.f32 %582, 2
  %584 = fptosi float %47 to i32
  %585 = sitofp i32 %584 to float
  %586 = fadd fast float %583, %585
  %587 = fmul fast float %586, 0x3FE3C6EF40000000
  %588 = frem fast float %52, 2.560000e+02
  %589 = frem fast float %53, 2.560000e+02
  %590 = fptoui float %588 to i32
  %591 = fptoui float %589 to i32
  %592 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %590, i32 %591, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %593 = extractvalue %dx.types.ResRet.f32 %592, 0
  %594 = fadd fast float %593, %587
  %595 = call float @dx.op.unary.f32(i32 22, float %594)  ; Frc(value)
  %596 = and i32 %133, 1
  %597 = icmp eq i32 %596, 0
  br i1 %597, label %654, label %598, !dx.controlflow.hints !66

; <label>:598                                     ; preds = %574
  %599 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %130, i32 undef)  ; BufferLoad(srv,index,wot)
  %600 = extractvalue %dx.types.ResRet.f32 %599, 2
  %601 = extractvalue %dx.types.ResRet.f32 %599, 3
  %602 = add i32 %130, 16
  %603 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %602, i32 undef)  ; BufferLoad(srv,index,wot)
  %604 = extractvalue %dx.types.ResRet.f32 %603, 0
  %605 = extractvalue %dx.types.ResRet.f32 %603, 1
  %606 = extractvalue %dx.types.ResRet.f32 %603, 2
  %607 = add i32 %130, 32
  %608 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %607, i32 undef)  ; BufferLoad(srv,index,wot)
  %609 = extractvalue %dx.types.ResRet.f32 %608, 0
  %610 = extractvalue %dx.types.ResRet.f32 %608, 1
  %611 = extractvalue %dx.types.ResRet.f32 %608, 2
  %612 = and i32 %133, 2
  %613 = icmp eq i32 %612, 0
  %614 = call float @dx.op.dot3.f32(i32 55, float %35, float %36, float %37, float %35, float %36, float %37)  ; Dot3(ax,ay,az,bx,by,bz)
  %615 = call float @dx.op.unary.f32(i32 25, float %614)  ; Rsqrt(value)
  %616 = fmul fast float %615, %35
  %617 = fmul fast float %615, %36
  %618 = fmul fast float %615, %37
  %619 = call float @dx.op.dot3.f32(i32 55, float %87, float %88, float %89, float %87, float %88, float %89)  ; Dot3(ax,ay,az,bx,by,bz)
  %620 = call float @dx.op.unary.f32(i32 25, float %619)  ; Rsqrt(value)
  %621 = fmul fast float %620, %87
  %622 = fmul fast float %620, %88
  %623 = fmul fast float %620, %89
  %624 = call float @dx.op.dot3.f32(i32 55, float %621, float %622, float %623, float %616, float %617, float %618)  ; Dot3(ax,ay,az,bx,by,bz)
  %625 = fmul fast float %624, %624
  %626 = fmul fast float %625, %600
  %627 = fadd fast float %626, %601
  %628 = call float @dx.op.unary.f32(i32 7, float %627)  ; Saturate(value)
  br i1 %613, label %629, label %639, !dx.controlflow.hints !67

; <label>:629                                     ; preds = %598
  %630 = extractvalue %dx.types.ResRet.f32 %599, 1
  %631 = extractvalue %dx.types.ResRet.f32 %599, 0
  %632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %633 = extractvalue %dx.types.CBufRet.f32 %632, 3
  %634 = fmul fast float %633, %619
  %635 = fsub fast float %631, %634
  %636 = fmul fast float %635, %630
  %637 = call float @dx.op.unary.f32(i32 7, float %636)  ; Saturate(value)
  %638 = fmul fast float %637, %628
  br label %639

; <label>:639                                     ; preds = %629, %598
  %640 = phi float [ %638, %629 ], [ %628, %598 ]
  %641 = fsub fast float %604, %609
  %642 = fsub fast float %605, %610
  %643 = fsub fast float %606, %611
  %644 = fmul fast float %640, %641
  %645 = fmul fast float %640, %642
  %646 = fmul fast float %640, %643
  %647 = fadd fast float %644, %609
  %648 = fadd fast float %645, %610
  %649 = fadd fast float %646, %611
  %650 = fmul fast float %647, %579
  %651 = fmul fast float %648, %580
  %652 = fmul fast float %649, %581
  %653 = fmul fast float %640, %575
  br label %654

; <label>:654                                     ; preds = %639, %574
  %655 = phi float [ %653, %639 ], [ %575, %574 ]
  %656 = phi float [ %650, %639 ], [ %579, %574 ]
  %657 = phi float [ %651, %639 ], [ %580, %574 ]
  %658 = phi float [ %652, %639 ], [ %581, %574 ]
  %659 = add i32 %22, 120
  %660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %659, i32 undef)  ; BufferLoad(srv,index,wot)
  %661 = extractvalue %dx.types.ResRet.i32 %660, 0
  %662 = add i32 %661, 0
  %663 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %662, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %664 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %663, %dx.types.Handle %48, float %208, float %209, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %665 = extractvalue %dx.types.ResRet.f32 %664, 0
  %666 = extractvalue %dx.types.ResRet.f32 %664, 1
  %667 = extractvalue %dx.types.ResRet.f32 %664, 2
  %668 = add i32 %22, 44
  %669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %668, i32 undef)  ; BufferLoad(srv,index,wot)
  %670 = extractvalue %dx.types.ResRet.i32 %669, 0
  %671 = shl i32 %670, 4
  %672 = and i32 %671, 32752
  %673 = call float @dx.op.legacyF16ToF32(i32 131, i32 %672)  ; LegacyF16ToF32(value)
  %674 = lshr i32 %670, 7
  %675 = and i32 %674, 32752
  %676 = call float @dx.op.legacyF16ToF32(i32 131, i32 %675)  ; LegacyF16ToF32(value)
  %677 = lshr i32 %670, 22
  %678 = shl nuw nsw i32 %677, 5
  %679 = call float @dx.op.legacyF16ToF32(i32 131, i32 %678)  ; LegacyF16ToF32(value)
  %680 = fmul fast float %673, %665
  %681 = fmul fast float %676, %666
  %682 = fmul fast float %679, %667
  %683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %684 = extractvalue %dx.types.CBufRet.f32 %683, 0
  %685 = fmul fast float %680, %684
  %686 = fmul fast float %681, %684
  %687 = fmul fast float %682, %684
  %688 = add i32 %22, 48
  %689 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %688, i32 undef)  ; BufferLoad(srv,index,wot)
  %690 = extractvalue %dx.types.ResRet.i32 %689, 0
  %691 = lshr i32 %690, 22
  %692 = shl nuw nsw i32 %691, 5
  %693 = call float @dx.op.legacyF16ToF32(i32 131, i32 %692)  ; LegacyF16ToF32(value)
  %694 = fmul fast float %693, %685
  %695 = select i1 %113, float %694, float %685
  %696 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %31, float %32, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %697 = extractvalue %dx.types.ResRet.f32 %696, 0
  %698 = extractvalue %dx.types.ResRet.f32 %696, 1
  %699 = extractvalue %dx.types.ResRet.f32 %696, 2
  %700 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %701 = extractvalue %dx.types.CBufRet.f32 %700, 1
  %702 = fmul fast float %695, %656
  %703 = fmul fast float %686, %657
  %704 = fmul fast float %687, %658
  %705 = call float @dx.op.dot3.f32(i32 55, float %702, float %703, float %704, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %706 = select i1 %113, float 0.000000e+00, float %702
  %707 = select i1 %113, float %705, float %703
  %708 = select i1 %113, float 0.000000e+00, float %704
  %709 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %8, i32 0, i32 %286, i32 %287, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %710 = extractvalue %dx.types.ResRet.i32 %709, 0
  %711 = lshr i32 %710, 18
  %712 = uitofp i32 %711 to float
  %713 = fmul fast float %712, 0x3F4C00EBA0000000
  %714 = call float @dx.op.unary.f32(i32 21, float %713)  ; Exp(value)
  %715 = fadd fast float %714, -1.000000e+00
  %716 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %8, i32 0)  ; GetDimensions(handle,mipLevel)
  %717 = extractvalue %dx.types.Dimensions %716, 0
  %718 = sitofp i32 %717 to float
  %719 = extractvalue %dx.types.Dimensions %716, 1
  %720 = sitofp i32 %719 to float
  %721 = fcmp fast oge float %284, %718
  %722 = fcmp fast oge float %285, %720
  %723 = or i1 %721, %722
  %724 = select i1 %723, float 0x4197782600000000, float %715
  %725 = icmp eq i32 %129, 3
  %726 = fcmp fast ogt float %47, %724
  %727 = and i1 %310, %726
  %728 = or i1 %725, %727
  %729 = icmp eq i32 %129, 2
  %730 = fcmp fast ole float %47, %724
  %731 = and i1 %729, %730
  %732 = or i1 %731, %728
  %733 = fmul fast float %576, %38
  %734 = fmul fast float %733, %695
  %735 = fmul fast float %734, %697
  %736 = fmul fast float %735, %701
  %737 = fmul fast float %577, %38
  %738 = fmul fast float %737, %686
  %739 = fmul fast float %738, %698
  %740 = fmul fast float %739, %701
  %741 = fmul fast float %578, %38
  %742 = fmul fast float %741, %687
  %743 = fmul fast float %742, %699
  %744 = fmul fast float %743, %701
  %745 = fadd fast float %736, %706
  %746 = fadd fast float %707, %740
  %747 = fadd fast float %744, %708
  %748 = fmul fast float %745, %655
  %749 = fmul fast float %746, %655
  %750 = fmul fast float %747, %655
  %751 = and i32 %133, 1048576
  %752 = icmp eq i32 %751, 0
  br i1 %752, label %844, label %753, !dx.controlflow.hints !68

; <label>:753                                     ; preds = %654
  %754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %755 = extractvalue %dx.types.CBufRet.f32 %754, 2
  %756 = extractvalue %dx.types.CBufRet.f32 %754, 3
  %757 = fmul fast float %755, %52
  %758 = fmul fast float %756, %53
  %759 = call float @dx.op.unary.f32(i32 7, float %757)  ; Saturate(value)
  %760 = call float @dx.op.unary.f32(i32 7, float %758)  ; Saturate(value)
  %761 = select i1 %732, i32 2, i32 0
  %762 = or i32 %761, 1
  %763 = uitofp i32 %762 to float
  %764 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %759, float %760, float %763, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %765 = extractvalue %dx.types.ResRet.f32 %764, 0
  %766 = extractvalue %dx.types.ResRet.f32 %764, 1
  %767 = extractvalue %dx.types.ResRet.f32 %764, 2
  %768 = extractvalue %dx.types.ResRet.f32 %764, 3
  %769 = add nuw nsw i32 %761, 2
  %770 = uitofp i32 %769 to float
  %771 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %759, float %760, float %770, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %772 = extractvalue %dx.types.ResRet.f32 %771, 0
  %773 = extractvalue %dx.types.ResRet.f32 %771, 1
  %774 = extractvalue %dx.types.ResRet.f32 %771, 2
  %775 = extractvalue %dx.types.ResRet.f32 %771, 3
  %776 = call float @dx.op.binary.f32(i32 35, float %766, float %767)  ; FMax(a,b)
  %777 = call float @dx.op.binary.f32(i32 35, float %765, float %776)  ; FMax(a,b)
  %778 = call float @dx.op.binary.f32(i32 35, float %777, float %768)  ; FMax(a,b)
  %779 = call float @dx.op.binary.f32(i32 36, float %773, float %774)  ; FMin(a,b)
  %780 = call float @dx.op.binary.f32(i32 36, float %772, float %779)  ; FMin(a,b)
  %781 = call float @dx.op.binary.f32(i32 36, float %780, float %775)  ; FMin(a,b)
  %782 = fmul fast float %778, 2.550000e+02
  %783 = fadd fast float %782, 0x3F70101020000000
  %784 = fptoui float %783 to i32
  %785 = fmul fast float %781, 2.550000e+02
  %786 = fadd fast float %785, 0x3F70101020000000
  %787 = fptoui float %786 to i32
  %788 = icmp ult i32 %784, %787
  br i1 %788, label %789, label %837

; <label>:789                                     ; preds = %753
  %790 = fcmp fast ogt float %46, 9.843750e-01
  %791 = fadd fast float %47, -4.000000e+00
  %792 = select i1 %790, float -4.000000e+00, float %791
  %793 = call float @dx.op.binary.f32(i32 35, float %792, float 0.000000e+00)  ; FMax(a,b)
  %794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %795 = extractvalue %dx.types.CBufRet.f32 %794, 0
  %796 = fadd fast float %795, %793
  %797 = extractvalue %dx.types.CBufRet.f32 %794, 2
  %798 = fmul fast float %796, %797
  %799 = call float @dx.op.unary.f32(i32 23, float %798)  ; Log(value)
  %800 = extractvalue %dx.types.CBufRet.f32 %794, 3
  %801 = fmul fast float %800, %799
  %802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %803 = extractvalue %dx.types.CBufRet.f32 %802, 2
  %804 = fmul fast float %801, %803
  %805 = call float @dx.op.unary.f32(i32 7, float %804)  ; Saturate(value)
  %806 = uitofp i32 %784 to float
  %807 = uitofp i32 %787 to float
  %808 = fadd fast float %806, 5.000000e-01
  %809 = fadd fast float %807, 5.000000e-01
  %810 = fmul fast float %803, %808
  %811 = fmul fast float %803, %809
  %812 = fadd fast float %810, 0x3F0FFB4800000000
  %813 = fadd fast float %811, 0xBF0FFB4800000000
  %814 = call float @dx.op.binary.f32(i32 35, float %805, float %812)  ; FMax(a,b)
  %815 = call float @dx.op.binary.f32(i32 36, float %814, float %813)  ; FMin(a,b)
  %816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %817 = extractvalue %dx.types.CBufRet.f32 %816, 1
  %818 = extractvalue %dx.types.CBufRet.f32 %816, 2
  %819 = extractvalue %dx.types.CBufRet.f32 %816, 0
  %820 = select i1 %732, float %819, float 0.000000e+00
  %821 = fmul fast float %817, %815
  %822 = fadd fast float %820, %821
  %823 = fadd fast float %820, %818
  %824 = fsub fast float %817, %818
  %825 = fadd fast float %824, %820
  %826 = call float @dx.op.binary.f32(i32 35, float %822, float %823)  ; FMax(a,b)
  %827 = call float @dx.op.binary.f32(i32 36, float %826, float %825)  ; FMin(a,b)
  %828 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %16, float %759, float %760, float %827, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %829 = extractvalue %dx.types.ResRet.f32 %828, 0
  %830 = extractvalue %dx.types.ResRet.f32 %828, 1
  %831 = extractvalue %dx.types.ResRet.f32 %828, 2
  %832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %833 = extractvalue %dx.types.CBufRet.f32 %832, 1
  %834 = fmul fast float %833, %829
  %835 = fmul fast float %833, %830
  %836 = fmul fast float %833, %831
  br label %837

; <label>:837                                     ; preds = %789, %753
  %838 = phi float [ %834, %789 ], [ 1.000000e+00, %753 ]
  %839 = phi float [ %835, %789 ], [ 1.000000e+00, %753 ]
  %840 = phi float [ %836, %789 ], [ 1.000000e+00, %753 ]
  %841 = fmul fast float %838, %748
  %842 = fmul fast float %839, %749
  %843 = fmul fast float %840, %750
  br label %844

; <label>:844                                     ; preds = %837, %654
  %845 = phi float [ %841, %837 ], [ %748, %654 ]
  %846 = phi float [ %842, %837 ], [ %749, %654 ]
  %847 = phi float [ %843, %837 ], [ %750, %654 ]
  %848 = and i32 %133, 2097152
  %849 = icmp eq i32 %848, 0
  br i1 %849, label %854, label %850, !dx.controlflow.hints !69

; <label>:850                                     ; preds = %844
  %851 = add i32 %130, 192
  %852 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %851, i32 undef)  ; BufferLoad(srv,index,wot)
  %853 = extractvalue %dx.types.ResRet.f32 %852, 0
  br label %857

; <label>:854                                     ; preds = %844
  %855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %856 = extractvalue %dx.types.CBufRet.f32 %855, 3
  br label %857

; <label>:857                                     ; preds = %854, %850
  %858 = phi float [ %853, %850 ], [ %856, %854 ]
  br i1 %727, label %859, label %943

; <label>:859                                     ; preds = %857
  %860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %861 = extractvalue %dx.types.CBufRet.f32 %860, 2
  %862 = extractvalue %dx.types.CBufRet.f32 %860, 3
  %863 = fmul fast float %861, %52
  %864 = fmul fast float %862, %53
  %865 = call float @dx.op.unary.f32(i32 7, float %863)  ; Saturate(value)
  %866 = call float @dx.op.unary.f32(i32 7, float %864)  ; Saturate(value)
  %867 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %865, float %866, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %868 = extractvalue %dx.types.ResRet.f32 %867, 0
  %869 = extractvalue %dx.types.ResRet.f32 %867, 1
  %870 = extractvalue %dx.types.ResRet.f32 %867, 2
  %871 = extractvalue %dx.types.ResRet.f32 %867, 3
  %872 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %865, float %866, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %873 = extractvalue %dx.types.ResRet.f32 %872, 0
  %874 = extractvalue %dx.types.ResRet.f32 %872, 1
  %875 = extractvalue %dx.types.ResRet.f32 %872, 2
  %876 = extractvalue %dx.types.ResRet.f32 %872, 3
  %877 = call float @dx.op.binary.f32(i32 35, float %869, float %870)  ; FMax(a,b)
  %878 = call float @dx.op.binary.f32(i32 35, float %868, float %877)  ; FMax(a,b)
  %879 = call float @dx.op.binary.f32(i32 35, float %878, float %871)  ; FMax(a,b)
  %880 = call float @dx.op.binary.f32(i32 36, float %874, float %875)  ; FMin(a,b)
  %881 = call float @dx.op.binary.f32(i32 36, float %873, float %880)  ; FMin(a,b)
  %882 = call float @dx.op.binary.f32(i32 36, float %881, float %876)  ; FMin(a,b)
  %883 = fmul fast float %879, 2.550000e+02
  %884 = fadd fast float %883, 0x3F70101020000000
  %885 = fptoui float %884 to i32
  %886 = fmul fast float %882, 2.550000e+02
  %887 = fadd fast float %886, 0x3F70101020000000
  %888 = fptoui float %887 to i32
  %889 = icmp ult i32 %885, %888
  br i1 %889, label %890, label %932

; <label>:890                                     ; preds = %859
  %891 = fcmp fast ogt float %46, 9.843750e-01
  %892 = fadd fast float %47, -4.000000e+00
  %893 = select i1 %891, float -4.000000e+00, float %892
  %894 = call float @dx.op.binary.f32(i32 35, float %893, float 0.000000e+00)  ; FMax(a,b)
  %895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %896 = extractvalue %dx.types.CBufRet.f32 %895, 0
  %897 = fadd fast float %896, %894
  %898 = extractvalue %dx.types.CBufRet.f32 %895, 2
  %899 = fmul fast float %897, %898
  %900 = call float @dx.op.unary.f32(i32 23, float %899)  ; Log(value)
  %901 = extractvalue %dx.types.CBufRet.f32 %895, 3
  %902 = fmul fast float %901, %900
  %903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %904 = extractvalue %dx.types.CBufRet.f32 %903, 2
  %905 = fmul fast float %902, %904
  %906 = call float @dx.op.unary.f32(i32 7, float %905)  ; Saturate(value)
  %907 = uitofp i32 %885 to float
  %908 = uitofp i32 %888 to float
  %909 = fadd fast float %907, 5.000000e-01
  %910 = fadd fast float %908, 5.000000e-01
  %911 = fmul fast float %904, %909
  %912 = fmul fast float %904, %910
  %913 = fadd fast float %911, 0x3F0FFB4800000000
  %914 = fadd fast float %912, 0xBF0FFB4800000000
  %915 = call float @dx.op.binary.f32(i32 35, float %906, float %913)  ; FMax(a,b)
  %916 = call float @dx.op.binary.f32(i32 36, float %915, float %914)  ; FMin(a,b)
  %917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %918 = extractvalue %dx.types.CBufRet.f32 %917, 1
  %919 = extractvalue %dx.types.CBufRet.f32 %917, 2
  %920 = extractvalue %dx.types.CBufRet.f32 %917, 0
  %921 = fmul fast float %918, %916
  %922 = fadd fast float %920, %921
  %923 = fadd fast float %920, %919
  %924 = fsub fast float %918, %919
  %925 = fadd fast float %924, %920
  %926 = call float @dx.op.binary.f32(i32 35, float %922, float %923)  ; FMax(a,b)
  %927 = call float @dx.op.binary.f32(i32 36, float %926, float %925)  ; FMin(a,b)
  %928 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %865, float %866, float %927, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %929 = extractvalue %dx.types.ResRet.f32 %928, 0
  %930 = extractvalue %dx.types.ResRet.f32 %928, 1
  %931 = extractvalue %dx.types.ResRet.f32 %928, 2
  br label %932

; <label>:932                                     ; preds = %890, %859
  %933 = phi float [ %929, %890 ], [ 1.000000e+00, %859 ]
  %934 = phi float [ %930, %890 ], [ 1.000000e+00, %859 ]
  %935 = phi float [ %931, %890 ], [ 1.000000e+00, %859 ]
  %936 = call float @dx.op.dot3.f32(i32 55, float %933, float %934, float %935, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %937 = select i1 %113, float %936, float %933
  %938 = select i1 %113, float %936, float %934
  %939 = select i1 %113, float 1.000000e+00, float %935
  %940 = fmul fast float %937, %845
  %941 = fmul fast float %938, %846
  %942 = fmul fast float %939, %847
  br label %943

; <label>:943                                     ; preds = %932, %857
  %944 = phi float [ %724, %932 ], [ %47, %857 ]
  %945 = phi float [ %940, %932 ], [ %845, %857 ]
  %946 = phi float [ %941, %932 ], [ %846, %857 ]
  %947 = phi float [ %942, %932 ], [ %847, %857 ]
  br i1 %732, label %1188, label %948

; <label>:948                                     ; preds = %943
  %949 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %17, float %31, float %32, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %950 = extractvalue %dx.types.ResRet.f32 %949, 0
  %951 = extractvalue %dx.types.ResRet.f32 %949, 1
  %952 = extractvalue %dx.types.ResRet.f32 %949, 2
  %953 = call float @dx.op.dot3.f32(i32 55, float %950, float %951, float %952, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %954 = select i1 %113, float %953, float %950
  %955 = select i1 %113, float %953, float %951
  %956 = select i1 %113, float 1.000000e+00, float %952
  %957 = fmul fast float %954, %945
  %958 = fmul fast float %955, %946
  %959 = fmul fast float %956, %947
  %960 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %961 = extractvalue %dx.types.CBufRet.i32 %960, 0
  %962 = icmp eq i32 %961, 0
  br i1 %962, label %1188, label %963, !dx.controlflow.hints !70

; <label>:963                                     ; preds = %948
  %964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %965 = extractvalue %dx.types.CBufRet.f32 %964, 2
  %966 = extractvalue %dx.types.CBufRet.f32 %964, 3
  %967 = fmul fast float %965, %52
  %968 = fmul fast float %966, %53
  %969 = fmul fast float %967, 2.000000e+00
  %970 = fmul fast float %968, 2.000000e+00
  %971 = fsub fast float 1.000000e+00, %969
  %972 = fsub fast float 1.000000e+00, %970
  %973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %974 = extractvalue %dx.types.CBufRet.f32 %973, 0
  %975 = extractvalue %dx.types.CBufRet.f32 %973, 1
  %976 = extractvalue %dx.types.CBufRet.f32 %973, 2
  %977 = fmul fast float %971, %974
  %978 = fmul fast float %971, %975
  %979 = fmul fast float %971, %976
  %980 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %981 = extractvalue %dx.types.CBufRet.f32 %980, 0
  %982 = extractvalue %dx.types.CBufRet.f32 %980, 1
  %983 = extractvalue %dx.types.CBufRet.f32 %980, 2
  %984 = fmul fast float %972, %981
  %985 = fmul fast float %972, %982
  %986 = fmul fast float %972, %983
  %987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %988 = extractvalue %dx.types.CBufRet.f32 %987, 0
  %989 = extractvalue %dx.types.CBufRet.f32 %987, 1
  %990 = extractvalue %dx.types.CBufRet.f32 %987, 2
  %991 = fadd fast float %984, %988
  %992 = fadd fast float %991, %977
  %993 = fadd fast float %985, %989
  %994 = fadd fast float %993, %978
  %995 = fadd fast float %986, %990
  %996 = fadd fast float %995, %979
  %997 = fmul fast float %992, %944
  %998 = fmul fast float %994, %944
  %999 = fmul fast float %996, %944
  %1000 = fmul fast float %997, %997
  %1001 = fmul fast float %998, %998
  %1002 = fadd fast float %1000, %1001
  %1003 = fmul fast float %999, %999
  %1004 = fadd fast float %1002, %1003
  %1005 = call float @dx.op.unary.f32(i32 24, float %1004)  ; Sqrt(value)
  %1006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1007 = extractvalue %dx.types.CBufRet.f32 %1006, 0
  %1008 = fsub fast float %1005, %1007
  %1009 = extractvalue %dx.types.CBufRet.f32 %1006, 2
  %1010 = fmul fast float %1008, %1009
  %1011 = call float @dx.op.unary.f32(i32 7, float %1010)  ; Saturate(value)
  %1012 = fadd fast float %1011, -5.000000e-01
  %1013 = fmul fast float %1012, 2.000000e+00
  %1014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1015 = extractvalue %dx.types.CBufRet.f32 %1014, 2
  %1016 = call float @dx.op.binary.f32(i32 36, float %1015, float %1013)  ; FMin(a,b)
  %1017 = fsub fast float -0.000000e+00, %1015
  %1018 = fcmp fast ogt float %1016, %1017
  br i1 %1018, label %1019, label %1188, !dx.controlflow.hints !71

; <label>:1019                                    ; preds = %963
  %1020 = fmul fast float %1016, 5.000000e-01
  %1021 = fadd fast float %1020, 5.000000e-01
  %1022 = call float @dx.op.unary.f32(i32 22, float %1021)  ; Frc(value)
  %1023 = call float @dx.op.unary.f32(i32 27, float %1022)  ; Round_ni(value)
  %1024 = call float @dx.op.unary.f32(i32 22, float %1022)  ; Frc(value)
  %1025 = fmul fast float %1024, 2.000000e+00
  %1026 = fadd fast float %1025, -1.000000e+00
  %1027 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %17, float %967, float %968, float %1023, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1028 = extractvalue %dx.types.ResRet.f32 %1027, 0
  %1029 = extractvalue %dx.types.ResRet.f32 %1027, 1
  %1030 = extractvalue %dx.types.ResRet.f32 %1027, 2
  %1031 = extractvalue %dx.types.ResRet.f32 %1027, 3
  %1032 = fadd fast float %1028, -5.000000e-01
  %1033 = fadd fast float %1030, -5.000000e-01
  %1034 = fmul fast float %1032, 0xBFD5555560000000
  %1035 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1033, float %1034)  ; FMad(a,b,c)
  %1036 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1029, float 0.000000e+00)  ; FMad(a,b,c)
  %1037 = fadd fast float %1036, %1031
  %1038 = fmul fast float %1032, -7.500000e-01
  %1039 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1033, float %1038)  ; FMad(a,b,c)
  %1040 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1029, float 0.000000e+00)  ; FMad(a,b,c)
  %1041 = fadd fast float %1040, %1031
  %1042 = call float @dx.op.binary.f32(i32 35, float %1035, float -1.000000e+00)  ; FMax(a,b)
  %1043 = call float @dx.op.binary.f32(i32 35, float %1037, float -1.000000e+00)  ; FMax(a,b)
  %1044 = call float @dx.op.binary.f32(i32 35, float %1039, float -1.000000e+00)  ; FMax(a,b)
  %1045 = call float @dx.op.binary.f32(i32 35, float %1041, float -1.000000e+00)  ; FMax(a,b)
  %1046 = call float @dx.op.binary.f32(i32 36, float %1042, float 1.000000e+00)  ; FMin(a,b)
  %1047 = call float @dx.op.binary.f32(i32 36, float %1043, float 1.000000e+00)  ; FMin(a,b)
  %1048 = call float @dx.op.binary.f32(i32 36, float %1044, float 1.000000e+00)  ; FMin(a,b)
  %1049 = call float @dx.op.binary.f32(i32 36, float %1045, float 1.000000e+00)  ; FMin(a,b)
  %1050 = fcmp fast olt float %1046, 0x3FEFFF8020000000
  br i1 %1050, label %1051, label %1166, !dx.controlflow.hints !72

; <label>:1051                                    ; preds = %1019
  %1052 = extractvalue %dx.types.CBufRet.f32 %1014, 3
  %1053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1054 = extractvalue %dx.types.CBufRet.f32 %1053, 0
  %1055 = extractvalue %dx.types.CBufRet.f32 %1053, 1
  %1056 = extractvalue %dx.types.CBufRet.f32 %1053, 2
  %1057 = extractvalue %dx.types.CBufRet.f32 %1053, 3
  %1058 = fsub fast float %1054, %1046
  %1059 = fsub fast float %1055, %1047
  %1060 = fsub fast float %1056, %1048
  %1061 = fsub fast float %1057, %1049
  %1062 = fmul fast float %1058, %1052
  %1063 = fmul fast float %1059, %1052
  %1064 = fmul fast float %1060, %1052
  %1065 = fmul fast float %1061, %1052
  %1066 = fadd fast float %1062, %1046
  %1067 = fadd fast float %1063, %1047
  %1068 = fsub fast float -0.000000e+00, %1067
  %1069 = fadd fast float %1064, %1048
  %1070 = fadd fast float %1065, %1049
  %1071 = fmul fast float %1066, %1066
  %1072 = fsub fast float %1067, %1071
  %1073 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1072)  ; FMax(a,b)
  %1074 = fdiv fast float 1.000000e+00, %1073
  %1075 = fmul fast float %1067, %1066
  %1076 = fsub fast float %1069, %1075
  %1077 = fsub fast float %1026, %1066
  %1078 = fmul fast float %1026, %1026
  %1079 = fsub fast float %1078, %1067
  %1080 = fmul fast float %1077, %1074
  %1081 = fmul fast float %1080, %1076
  %1082 = fsub fast float %1079, %1081
  %1083 = fmul fast float %1067, %1067
  %1084 = fsub fast float %1070, %1083
  %1085 = fmul fast float %1076, %1076
  %1086 = fmul fast float %1085, %1074
  %1087 = fsub fast float %1084, %1086
  %1088 = fdiv fast float %1082, %1087
  %1089 = fmul fast float %1076, %1088
  %1090 = fsub fast float %1077, %1089
  %1091 = fmul fast float %1090, %1074
  %1092 = fmul fast float %1091, %1066
  %1093 = fsub fast float 1.000000e+00, %1092
  %1094 = fmul fast float %1067, %1088
  %1095 = fsub fast float %1093, %1094
  %1096 = fmul fast float %1091, %1091
  %1097 = fmul fast float %1088, 4.000000e+00
  %1098 = fmul fast float %1097, %1095
  %1099 = fsub fast float %1096, %1098
  %1100 = call float @dx.op.unary.f32(i32 24, float %1099)  ; Sqrt(value)
  %1101 = fcmp fast oge float %1091, 0.000000e+00
  %1102 = fsub fast float -0.000000e+00, %1100
  %1103 = select i1 %1101, float %1102, float %1100
  %1104 = fsub fast float %1103, %1091
  %1105 = fdiv fast float %1104, %1088
  %1106 = fdiv fast float %1095, %1104
  %1107 = fmul fast float %1105, 5.000000e-01
  %1108 = fmul fast float %1106, 2.000000e+00
  %1109 = select i1 %1101, float %1107, float %1108
  %1110 = select i1 %1101, float %1108, float %1107
  %1111 = call float @dx.op.binary.f32(i32 35, float %1109, float %1110)  ; FMax(a,b)
  %1112 = call float @dx.op.binary.f32(i32 36, float %1109, float %1110)  ; FMin(a,b)
  %1113 = fcmp fast ogt float %1026, %1112
  br i1 %1113, label %1114, label %1124

; <label>:1114                                    ; preds = %1051
  %1115 = fsub fast float %1026, %1112
  %1116 = fsub fast float %1111, %1112
  %1117 = fmul fast float %1115, %1116
  %1118 = fmul fast float %1111, %1026
  %1119 = fadd fast float %1111, %1026
  %1120 = fmul fast float %1119, %1066
  %1121 = fadd fast float %1118, %1067
  %1122 = fsub fast float %1121, %1120
  %1123 = fdiv fast float %1122, %1117
  br label %1124

; <label>:1124                                    ; preds = %1114, %1051
  %1125 = phi float [ %1123, %1114 ], [ 0.000000e+00, %1051 ]
  %1126 = fcmp fast ogt float %1026, %1111
  %1127 = fsub fast float %1026, %1111
  br i1 %1126, label %1128, label %1138

; <label>:1128                                    ; preds = %1124
  %1129 = fsub fast float %1111, %1112
  %1130 = fmul fast float %1129, %1127
  %1131 = fmul fast float %1112, %1026
  %1132 = fadd fast float %1112, %1026
  %1133 = fmul fast float %1132, %1066
  %1134 = fsub fast float %1068, %1131
  %1135 = fadd fast float %1134, %1133
  %1136 = fdiv fast float %1135, %1130
  %1137 = fadd fast float %1136, %1125
  br label %1138

; <label>:1138                                    ; preds = %1128, %1124
  %1139 = phi float [ %1137, %1128 ], [ %1125, %1124 ]
  %1140 = fsub fast float %1026, %1112
  %1141 = fmul fast float %1140, %1127
  %1142 = fmul fast float %1112, %1111
  %1143 = fadd fast float %1112, %1111
  %1144 = fmul fast float %1143, %1066
  %1145 = fadd fast float %1142, %1067
  %1146 = fsub fast float %1145, %1144
  %1147 = fdiv fast float %1146, %1141
  %1148 = call float @dx.op.unary.f32(i32 7, float %1139)  ; Saturate(value)
  %1149 = fcmp fast oeq float %858, 0.000000e+00
  %1150 = extractvalue %dx.types.CBufRet.f32 %1014, 0
  %1151 = fcmp fast oeq float %1150, 0.000000e+00
  %1152 = or i1 %1149, %1151
  %1153 = fmul fast float %1150, 2.000000e+00
  %1154 = fadd fast float %1015, %1016
  %1155 = fdiv fast float %1154, %1153
  %1156 = call float @dx.op.unary.f32(i32 7, float %1155)  ; Saturate(value)
  %1157 = fmul fast float %1156, 2.000000e+00
  %1158 = fsub fast float 3.000000e+00, %1157
  %1159 = fmul fast float %1156, %1156
  %1160 = fmul fast float %1159, %1158
  %1161 = select i1 %1152, float 1.000000e+00, float %1160
  %1162 = fmul fast float %1147, %858
  %1163 = fadd fast float %1148, %1162
  %1164 = call float @dx.op.unary.f32(i32 7, float %1163)  ; Saturate(value)
  %1165 = fmul fast float %1161, %1164
  br label %1166

; <label>:1166                                    ; preds = %1138, %1019
  %1167 = phi float [ %1165, %1138 ], [ 0.000000e+00, %1019 ]
  %1168 = fsub fast float 1.000000e+00, %1167
  %1169 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %17, float %967, float %968, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1170 = extractvalue %dx.types.ResRet.f32 %1169, 0
  %1171 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1172 = extractvalue %dx.types.CBufRet.i32 %1171, 2
  %1173 = icmp eq i32 %1172, 0
  br i1 %1173, label %1179, label %1174

; <label>:1174                                    ; preds = %1166
  %1175 = call float @dx.op.unary.f32(i32 7, float %1167)  ; Saturate(value)
  %1176 = fadd fast float %1170, -1.000000e+00
  %1177 = fmul fast float %1175, %1176
  %1178 = fadd fast float %1177, 1.000000e+00
  br label %1179

; <label>:1179                                    ; preds = %1174, %1166
  %1180 = phi float [ %1178, %1174 ], [ %1168, %1166 ]
  %1181 = call float @dx.op.binary.f32(i32 35, float %1170, float %1180)  ; FMax(a,b)
  %1182 = call float @dx.op.dot3.f32(i32 55, float %1181, float %1181, float %1181, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1183 = select i1 %113, float %1182, float %1181
  %1184 = select i1 %113, float 1.000000e+00, float %1181
  %1185 = fmul fast float %1183, %957
  %1186 = fmul fast float %1183, %958
  %1187 = fmul fast float %1184, %959
  br label %1188

; <label>:1188                                    ; preds = %1179, %963, %948, %943
  %1189 = phi float [ %945, %943 ], [ %957, %948 ], [ %1185, %1179 ], [ %957, %963 ]
  %1190 = phi float [ %946, %943 ], [ %958, %948 ], [ %1186, %1179 ], [ %958, %963 ]
  %1191 = phi float [ %947, %943 ], [ %959, %948 ], [ %1187, %1179 ], [ %959, %963 ]
  %1192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1193 = extractvalue %dx.types.CBufRet.f32 %1192, 2
  %1194 = extractvalue %dx.types.CBufRet.f32 %1192, 3
  %1195 = fmul fast float %1193, %52
  %1196 = fmul fast float %1194, %53
  %1197 = call float @dx.op.unary.f32(i32 7, float %1195)  ; Saturate(value)
  %1198 = call float @dx.op.unary.f32(i32 7, float %1196)  ; Saturate(value)
  %1199 = select i1 %732, i32 2, i32 0
  %1200 = or i32 %1199, 1
  %1201 = uitofp i32 %1200 to float
  %1202 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %1197, float %1198, float %1201, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1203 = extractvalue %dx.types.ResRet.f32 %1202, 0
  %1204 = extractvalue %dx.types.ResRet.f32 %1202, 1
  %1205 = extractvalue %dx.types.ResRet.f32 %1202, 2
  %1206 = extractvalue %dx.types.ResRet.f32 %1202, 3
  %1207 = add nuw nsw i32 %1199, 2
  %1208 = uitofp i32 %1207 to float
  %1209 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %1197, float %1198, float %1208, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1210 = extractvalue %dx.types.ResRet.f32 %1209, 0
  %1211 = extractvalue %dx.types.ResRet.f32 %1209, 1
  %1212 = extractvalue %dx.types.ResRet.f32 %1209, 2
  %1213 = extractvalue %dx.types.ResRet.f32 %1209, 3
  %1214 = call float @dx.op.binary.f32(i32 35, float %1204, float %1205)  ; FMax(a,b)
  %1215 = call float @dx.op.binary.f32(i32 35, float %1203, float %1214)  ; FMax(a,b)
  %1216 = call float @dx.op.binary.f32(i32 35, float %1215, float %1206)  ; FMax(a,b)
  %1217 = call float @dx.op.binary.f32(i32 36, float %1211, float %1212)  ; FMin(a,b)
  %1218 = call float @dx.op.binary.f32(i32 36, float %1210, float %1217)  ; FMin(a,b)
  %1219 = call float @dx.op.binary.f32(i32 36, float %1218, float %1213)  ; FMin(a,b)
  %1220 = fmul fast float %1216, 2.550000e+02
  %1221 = fadd fast float %1220, 0x3F70101020000000
  %1222 = fptoui float %1221 to i32
  %1223 = fmul fast float %1219, 2.550000e+02
  %1224 = fadd fast float %1223, 0x3F70101020000000
  %1225 = fptoui float %1224 to i32
  %1226 = icmp ult i32 %1222, %1225
  br i1 %1226, label %1227, label %1270

; <label>:1227                                    ; preds = %1188
  %1228 = fcmp fast ogt float %46, 9.843750e-01
  %1229 = fadd fast float %944, -4.000000e+00
  %1230 = select i1 %1228, float -4.000000e+00, float %1229
  %1231 = call float @dx.op.binary.f32(i32 35, float %1230, float 0.000000e+00)  ; FMax(a,b)
  %1232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1233 = extractvalue %dx.types.CBufRet.f32 %1232, 0
  %1234 = fadd fast float %1233, %1231
  %1235 = extractvalue %dx.types.CBufRet.f32 %1232, 2
  %1236 = fmul fast float %1234, %1235
  %1237 = call float @dx.op.unary.f32(i32 23, float %1236)  ; Log(value)
  %1238 = extractvalue %dx.types.CBufRet.f32 %1232, 3
  %1239 = fmul fast float %1238, %1237
  %1240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1241 = extractvalue %dx.types.CBufRet.f32 %1240, 2
  %1242 = fmul fast float %1239, %1241
  %1243 = call float @dx.op.unary.f32(i32 7, float %1242)  ; Saturate(value)
  %1244 = uitofp i32 %1222 to float
  %1245 = uitofp i32 %1225 to float
  %1246 = fadd fast float %1244, 5.000000e-01
  %1247 = fadd fast float %1245, 5.000000e-01
  %1248 = fmul fast float %1241, %1246
  %1249 = fmul fast float %1241, %1247
  %1250 = fadd fast float %1248, 0x3F0FFB4800000000
  %1251 = fadd fast float %1249, 0xBF0FFB4800000000
  %1252 = call float @dx.op.binary.f32(i32 35, float %1243, float %1250)  ; FMax(a,b)
  %1253 = call float @dx.op.binary.f32(i32 36, float %1252, float %1251)  ; FMin(a,b)
  %1254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1255 = extractvalue %dx.types.CBufRet.f32 %1254, 1
  %1256 = extractvalue %dx.types.CBufRet.f32 %1254, 2
  %1257 = extractvalue %dx.types.CBufRet.f32 %1254, 0
  %1258 = select i1 %732, float %1257, float 0.000000e+00
  %1259 = fmul fast float %1255, %1253
  %1260 = fadd fast float %1258, %1259
  %1261 = fadd fast float %1258, %1256
  %1262 = fsub fast float %1255, %1256
  %1263 = fadd fast float %1262, %1258
  %1264 = call float @dx.op.binary.f32(i32 35, float %1260, float %1261)  ; FMax(a,b)
  %1265 = call float @dx.op.binary.f32(i32 36, float %1264, float %1263)  ; FMin(a,b)
  %1266 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %1197, float %1198, float %1265, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1267 = extractvalue %dx.types.ResRet.f32 %1266, 0
  %1268 = extractvalue %dx.types.ResRet.f32 %1266, 1
  %1269 = extractvalue %dx.types.ResRet.f32 %1266, 2
  br label %1270

; <label>:1270                                    ; preds = %1227, %1188
  %1271 = phi float [ %1267, %1227 ], [ 1.000000e+00, %1188 ]
  %1272 = phi float [ %1268, %1227 ], [ 1.000000e+00, %1188 ]
  %1273 = phi float [ %1269, %1227 ], [ 1.000000e+00, %1188 ]
  %1274 = call float @dx.op.dot3.f32(i32 55, float %1271, float %1272, float %1273, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1275 = select i1 %113, float %1274, float %1271
  %1276 = select i1 %113, float %1274, float %1272
  %1277 = fmul fast float %1275, %1189
  %1278 = fmul fast float %1276, %1190
  %1279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1280 = extractvalue %dx.types.CBufRet.f32 %1279, 0
  br i1 %113, label %1281, label %1284

; <label>:1281                                    ; preds = %1270
  %1282 = fadd fast float %1277, %1278
  %1283 = fmul fast float %1280, %1282
  br label %1294

; <label>:1284                                    ; preds = %1270
  %1285 = fmul fast float %1273, %1191
  %1286 = fmul fast float %1280, %1277
  %1287 = fmul fast float %1280, %1278
  %1288 = fmul fast float %1285, %1280
  %1289 = call float @dx.op.binary.f32(i32 35, float %1287, float %1288)  ; FMax(a,b)
  %1290 = call float @dx.op.binary.f32(i32 35, float %1286, float %1289)  ; FMax(a,b)
  %1291 = call float @dx.op.binary.f32(i32 35, float %1290, float 0.000000e+00)  ; FMax(a,b)
  %1292 = fcmp fast ugt float %1291, 0x3F10000000000000
  br i1 %1292, label %1294, label %1293

; <label>:1293                                    ; preds = %1284
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1294

; <label>:1294                                    ; preds = %1293, %1284, %1281
  %1295 = phi float [ %1283, %1281 ], [ %1286, %1293 ], [ %1286, %1284 ]
  %1296 = phi float [ 0.000000e+00, %1281 ], [ %1287, %1293 ], [ %1287, %1284 ]
  %1297 = phi float [ 0.000000e+00, %1281 ], [ %1288, %1293 ], [ %1288, %1284 ]
  %1298 = fadd fast float %595, 0x3FE3C6EF40000000
  %1299 = call float @dx.op.unary.f32(i32 22, float %1298)  ; Frc(value)
  %1300 = call float @dx.op.unary.f32(i32 23, float %1295)  ; Log(value)
  %1301 = fadd fast float %1300, -7.000000e+00
  %1302 = call float @dx.op.unary.f32(i32 21, float %1301)  ; Exp(value)
  %1303 = fmul fast float %1299, 2.000000e+00
  %1304 = fadd fast float %1303, -1.000000e+00
  %1305 = fmul fast float %1302, %1304
  %1306 = fcmp fast ogt float %1295, 0.000000e+00
  %1307 = select i1 %1306, float %1305, float 0.000000e+00
  %1308 = fadd fast float %1307, %1295
  %1309 = fadd fast float %595, 0x3FF3C6EF40000000
  %1310 = call float @dx.op.unary.f32(i32 22, float %1309)  ; Frc(value)
  %1311 = call float @dx.op.unary.f32(i32 23, float %1296)  ; Log(value)
  %1312 = fadd fast float %1311, -7.000000e+00
  %1313 = call float @dx.op.unary.f32(i32 21, float %1312)  ; Exp(value)
  %1314 = fmul fast float %1310, 2.000000e+00
  %1315 = fadd fast float %1314, -1.000000e+00
  %1316 = fmul fast float %1313, %1315
  %1317 = fcmp fast ogt float %1296, 0.000000e+00
  %1318 = select i1 %1317, float %1316, float 0.000000e+00
  %1319 = fadd fast float %1318, %1296
  %1320 = fadd fast float %595, 0x3FFDAA66E0000000
  %1321 = call float @dx.op.unary.f32(i32 22, float %1320)  ; Frc(value)
  %1322 = call float @dx.op.unary.f32(i32 23, float %1297)  ; Log(value)
  %1323 = fadd fast float %1322, -6.000000e+00
  %1324 = call float @dx.op.unary.f32(i32 21, float %1323)  ; Exp(value)
  %1325 = fmul fast float %1321, 2.000000e+00
  %1326 = fadd fast float %1325, -1.000000e+00
  %1327 = fmul fast float %1324, %1326
  %1328 = fcmp fast ogt float %1297, 0.000000e+00
  %1329 = select i1 %1328, float %1327, float 0.000000e+00
  %1330 = fadd fast float %1329, %1297
  %1331 = select i1 %113, float %1296, float %1319
  %1332 = select i1 %113, float %1297, float %1330
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1333 = call float @dx.op.binary.f32(i32 36, float %1308, float 3.225500e+04)  ; FMin(a,b)
  %1334 = call float @dx.op.binary.f32(i32 36, float %1331, float 3.225500e+04)  ; FMin(a,b)
  %1335 = call float @dx.op.binary.f32(i32 36, float %1332, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1333)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1334)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1335)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

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
!33 = !{[37 x i32] [i32 35, i32 8, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 0, i32 0, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7]}
!34 = !{void ()* @ps_main, !"ps_main", !35, !4, !60}
!35 = !{!36, !56, null}
!36 = !{!37, !40, !42, !43, !45, !48, !50, !52, !53, !55}
!37 = !{i32 0, !"SV_Position", i8 9, i8 3, !38, i8 4, i32 1, i8 4, i32 0, i8 0, !39}
!38 = !{i32 0}
!39 = !{i32 3, i32 15}
!40 = !{i32 1, !"COLOR", i8 9, i8 0, !38, i8 2, i32 1, i8 4, i32 1, i8 0, !41}
!41 = !{i32 3, i32 8}
!42 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !38, i8 2, i32 1, i8 4, i32 2, i8 0, !39}
!43 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !44, i8 2, i32 1, i8 4, i32 3, i8 0, !39}
!44 = !{i32 3}
!45 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !46, i8 2, i32 1, i8 4, i32 4, i8 0, !47}
!46 = !{i32 4}
!47 = !{i32 3, i32 3}
!48 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !49, i8 3, i32 1, i8 2, i32 5, i8 0, !47}
!49 = !{i32 5}
!50 = !{i32 6, !"TEXCOORD", i8 9, i8 0, !51, i8 2, i32 1, i8 4, i32 6, i8 0, !39}
!51 = !{i32 8}
!52 = !{i32 7, !"QUAD_POSITION", i8 9, i8 0, !38, i8 1, i32 1, i8 4, i32 7, i8 0, !39}
!53 = !{i32 8, !"COLOR", i8 5, i8 0, !44, i8 1, i32 1, i8 3, i32 8, i8 0, !54}
!54 = !{i32 3, i32 5}
!55 = !{i32 9, !"SV_SampleIndex", i8 5, i8 12, !38, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!56 = !{!57, !58}
!57 = !{i32 0, !"SV_Target", i8 9, i8 16, !38, i8 0, i32 1, i8 4, i32 0, i8 0, !39}
!58 = !{i32 1, !"SV_Target", i8 9, i8 16, !59, i8 0, i32 1, i8 4, i32 1, i8 0, !39}
!59 = !{i32 1}
!60 = !{i32 0, i64 24}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 1}
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

