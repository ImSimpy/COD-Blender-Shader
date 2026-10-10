;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float   xyzw
; TEXCOORD                 0   xy          2     NONE   float   xy  
; TEXCOORD                 3   xyzw        3     NONE   float   xyz 
; TEXCOORD                 5   xy          4     NONE   float   xy  
; TEXCOORD                 8   xyzw        5     NONE   float       
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
; shader hash: 281ee514337b6ff695be6a041497778e
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
;                                   texture     f32          3d      T9     t44,space2     1
;                                   texture     f32          3d     T10     t45,space2     1
;                                   texture     f32     2darray     T11     t47,space2     1
;                                   textureunorm_f32     2darray     T12     t85,space2     1
;                                   texture     f32          2d     T13     t83,space2     1
;                                   texture     f32          2d     T14     t86,space2     1
;                                   texture     f32     2darray     T15             t1     1
;                                   texture    byte         r/o     T16             t2     1
;
;
; ViewId state:
;
; Number of inputs: 31, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 7, 8, 9, 12, 13, 14, 16, 17, 24, 25, 26, 27, 28, 30 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 24, 25, 26, 27, 28, 30 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 24, 25, 26, 27, 28, 30 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 24, 25, 26, 27, 28, 30 }
;   output 4 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 24, 25, 26, 27, 28, 30 }
;   output 5 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 24, 25, 26, 27, 28, 30 }
;   output 6 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 24, 25, 26, 27, 28, 30 }
;   output 7 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 24, 25, 26, 27, 28, 30 }
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
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 77, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %46 = extractvalue %dx.types.CBufRet.f32 %45, 0
  %47 = fmul fast float %46, %39
  %48 = fmul fast float %46, %40
  %49 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %50 = extractvalue %dx.types.CBufRet.f32 %49, 2
  %51 = extractvalue %dx.types.CBufRet.f32 %49, 3
  %52 = fmul fast float %47, 2.000000e+00
  %53 = fmul fast float %52, %50
  %54 = fmul fast float %48, 2.000000e+00
  %55 = fmul fast float %54, %51
  %56 = fsub fast float 1.000000e+00, %53
  %57 = fsub fast float 1.000000e+00, %55
  %58 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %59 = extractvalue %dx.types.CBufRet.f32 %58, 0
  %60 = extractvalue %dx.types.CBufRet.f32 %58, 1
  %61 = extractvalue %dx.types.CBufRet.f32 %58, 2
  %62 = fmul fast float %56, %59
  %63 = fmul fast float %56, %60
  %64 = fmul fast float %56, %61
  %65 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %66 = extractvalue %dx.types.CBufRet.f32 %65, 0
  %67 = extractvalue %dx.types.CBufRet.f32 %65, 1
  %68 = extractvalue %dx.types.CBufRet.f32 %65, 2
  %69 = fmul fast float %57, %66
  %70 = fmul fast float %57, %67
  %71 = fmul fast float %57, %68
  %72 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %73 = extractvalue %dx.types.CBufRet.f32 %72, 0
  %74 = extractvalue %dx.types.CBufRet.f32 %72, 1
  %75 = extractvalue %dx.types.CBufRet.f32 %72, 2
  %76 = fadd fast float %69, %73
  %77 = fadd fast float %76, %62
  %78 = fadd fast float %70, %74
  %79 = fadd fast float %78, %63
  %80 = fadd fast float %71, %75
  %81 = fadd fast float %80, %64
  %82 = fmul fast float %77, %42
  %83 = fmul fast float %79, %42
  %84 = fmul fast float %81, %42
  %85 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %86 = extractvalue %dx.types.CBufRet.i32 %85, 3
  %87 = and i32 %86, 3
  %88 = icmp ne i32 %87, 0
  %89 = and i32 %86, 4
  %90 = icmp ne i32 %89, 0
  %91 = and i1 %88, %90
  br i1 %91, label %92, label %101

; <label>:92                                      ; preds = %0
  %93 = fmul fast float %51, %48
  %94 = fmul fast float %50, %47
  %95 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %18, float %94, float %93, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %96 = extractvalue %dx.types.ResRet.f32 %95, 0
  %97 = fsub fast float 1.000000e+00, %96
  %98 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %99 = extractvalue %dx.types.CBufRet.f32 %98, 0
  %100 = fcmp fast olt float %97, %99
  br label %104

; <label>:101                                     ; preds = %0
  %102 = icmp eq i32 %89, 0
  %103 = and i1 %88, %102
  br label %104

; <label>:104                                     ; preds = %101, %92
  %105 = phi i1 [ %100, %92 ], [ %103, %101 ]
  %106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %107 = extractvalue %dx.types.CBufRet.f32 %106, 2
  %108 = extractvalue %dx.types.CBufRet.f32 %106, 3
  %109 = fmul fast float %107, %47
  %110 = fmul fast float %108, %48
  %111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %112 = extractvalue %dx.types.ResRet.i32 %111, 0
  %113 = and i32 %112, 114688
  %114 = icmp ne i32 %113, 0
  %115 = select i1 %114, float %109, float 0.000000e+00
  %116 = select i1 %114, float %110, float 0.000000e+00
  %117 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %19, float %115, float %116, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %118 = extractvalue %dx.types.ResRet.f32 %117, 0
  %119 = fmul fast float %118, 2.550000e+02
  %120 = fptoui float %119 to i32
  %121 = select i1 %114, i32 %120, i32 0
  %122 = mul i32 %22, 208
  %123 = add i32 %122, 188
  %124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %123, i32 undef)  ; BufferLoad(srv,index,wot)
  %125 = extractvalue %dx.types.ResRet.i32 %124, 0
  %126 = and i32 %86, 114688
  %127 = and i32 %86, 8
  %128 = icmp ne i32 %127, 0
  %129 = or i1 %105, %128
  %130 = select i1 %129, i32 %126, i32 16384
  %131 = and i32 %130, %125
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %134

; <label>:133                                     ; preds = %104
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %134

; <label>:134                                     ; preds = %133, %104
  %135 = and i32 %125, 512
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %161, label %137

; <label>:137                                     ; preds = %134
  %138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %139 = extractvalue %dx.types.CBufRet.f32 %138, 2
  %140 = extractvalue %dx.types.CBufRet.f32 %138, 3
  %141 = fmul fast float %139, %47
  %142 = fmul fast float %140, %48
  %143 = extractvalue %dx.types.CBufRet.f32 %138, 0
  %144 = extractvalue %dx.types.CBufRet.f32 %138, 1
  %145 = fdiv fast float %143, %144
  %146 = fcmp fast ogt float %145, 0x3FFC71C720000000
  br i1 %146, label %147, label %153

; <label>:147                                     ; preds = %137
  %148 = fdiv fast float 0x3FFC71C720000000, %145
  %149 = fmul fast float %148, %142
  %150 = fsub fast float 1.000000e+00, %148
  %151 = fmul fast float %150, 5.000000e-01
  %152 = fadd fast float %151, %149
  br label %161

; <label>:153                                     ; preds = %137
  %154 = fcmp fast olt float %145, 0x3FFC71C720000000
  br i1 %154, label %155, label %161

; <label>:155                                     ; preds = %153
  %156 = fmul fast float %141, 5.625000e-01
  %157 = fmul fast float %156, %145
  %158 = fmul fast float %145, 2.812500e-01
  %159 = fsub fast float 5.000000e-01, %158
  %160 = fadd fast float %159, %157
  br label %161

; <label>:161                                     ; preds = %155, %153, %147, %134
  %162 = phi float [ %33, %134 ], [ %141, %147 ], [ %160, %155 ], [ %141, %153 ]
  %163 = phi float [ %34, %134 ], [ %152, %147 ], [ %142, %155 ], [ %142, %153 ]
  %164 = and i32 %125, 16
  %165 = icmp ne i32 %164, 0
  %166 = select i1 %165, float 1.000000e+00, float %38
  %167 = add i32 %23, 92
  %168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %167, i32 undef)  ; BufferLoad(srv,index,wot)
  %169 = extractvalue %dx.types.ResRet.i32 %168, 0
  %170 = add i32 %169, 0
  %171 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %170, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %173 = extractvalue %dx.types.CBufRet.f32 %172, 2
  %174 = call %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32 61, %dx.types.Handle %171, %dx.types.Handle %44, float %162, float %163, float undef, float undef, i32 0, i32 0, i32 undef, float %173, float undef)  ; SampleBias(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,bias,clamp)
  %175 = extractvalue %dx.types.ResRet.f32 %174, 0
  %176 = fmul fast float %175, %166
  %177 = icmp eq i32 %164, 0
  br i1 %177, label %197, label %178, !dx.controlflow.hints !60

; <label>:178                                     ; preds = %161
  %179 = add i32 %122, 64
  %180 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %179, i32 undef)  ; BufferLoad(srv,index,wot)
  %181 = extractvalue %dx.types.ResRet.f32 %180, 0
  %182 = fadd fast float %181, 1.000000e+00
  %183 = fmul fast float %182, %38
  %184 = fsub fast float %183, %181
  %185 = fsub fast float %182, %184
  %186 = call float @dx.op.unary.f32(i32 7, float %185)  ; Saturate(value)
  %187 = fsub fast float 1.000000e+00, %183
  %188 = call float @dx.op.unary.f32(i32 7, float %187)  ; Saturate(value)
  %189 = fsub fast float %186, %188
  %190 = fsub fast float %176, %188
  %191 = fdiv fast float %190, %189
  %192 = call float @dx.op.unary.f32(i32 7, float %191)  ; Saturate(value)
  %193 = fmul fast float %192, 2.000000e+00
  %194 = fsub fast float 3.000000e+00, %193
  %195 = fmul fast float %192, %192
  %196 = fmul fast float %195, %194
  br label %197

; <label>:197                                     ; preds = %178, %161
  %198 = phi float [ %196, %178 ], [ %176, %161 ]
  %199 = fcmp fast ogt float %198, 0.000000e+00
  br i1 %199, label %201, label %200

; <label>:200                                     ; preds = %197
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %201

; <label>:201                                     ; preds = %200, %197
  %202 = call float @dx.op.unary.f32(i32 7, float %198)  ; Saturate(value)
  %203 = fmul fast float %47, 5.000000e-01
  %204 = fmul fast float %48, 5.000000e-01
  %205 = fptosi float %203 to i32
  %206 = fptosi float %204 to i32
  %207 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %205, i32 %206, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %208 = extractvalue %dx.types.ResRet.i32 %207, 0
  %209 = lshr i32 %208, 18
  %210 = uitofp i32 %209 to float
  %211 = fmul fast float %210, 0x3F4C00EBA0000000
  %212 = call float @dx.op.unary.f32(i32 21, float %211)  ; Exp(value)
  %213 = fadd fast float %212, -1.000000e+00
  %214 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %9, i32 0)  ; GetDimensions(handle,mipLevel)
  %215 = extractvalue %dx.types.Dimensions %214, 0
  %216 = sitofp i32 %215 to float
  %217 = extractvalue %dx.types.Dimensions %214, 1
  %218 = sitofp i32 %217 to float
  %219 = fcmp fast oge float %203, %216
  %220 = fcmp fast oge float %204, %218
  %221 = or i1 %219, %220
  %222 = select i1 %221, float 0x4197782600000000, float %213
  %223 = fsub fast float %222, %42
  %224 = fcmp fast ogt float %223, 0.000000e+00
  %225 = and i32 %121, -2
  %226 = icmp eq i32 %225, 2
  %227 = and i1 %226, %224
  %228 = xor i1 %224, true
  %229 = icmp eq i32 %121, 1
  %230 = and i1 %229, %228
  %231 = or i1 %227, %230
  %232 = and i32 %125, 262144
  %233 = icmp ne i32 %232, 0
  %234 = and i1 %233, %231
  %235 = xor i1 %231, true
  %236 = and i32 %125, 131072
  %237 = icmp ne i32 %236, 0
  %238 = and i1 %237, %235
  %239 = or i1 %234, %238
  br i1 %239, label %240, label %241

; <label>:240                                     ; preds = %201
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %241

; <label>:241                                     ; preds = %240, %201
  %242 = and i32 %125, 32
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %493, label %244, !dx.controlflow.hints !61

; <label>:244                                     ; preds = %241
  %245 = add i32 %122, 80
  %246 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %245, i32 undef)  ; BufferLoad(srv,index,wot)
  %247 = extractvalue %dx.types.ResRet.f32 %246, 0
  %248 = extractvalue %dx.types.ResRet.f32 %246, 1
  %249 = extractvalue %dx.types.ResRet.f32 %246, 2
  %250 = extractvalue %dx.types.ResRet.f32 %246, 3
  %251 = add i32 %122, 96
  %252 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %251, i32 undef)  ; BufferLoad(srv,index,wot)
  %253 = extractvalue %dx.types.ResRet.f32 %252, 0
  %254 = extractvalue %dx.types.ResRet.f32 %252, 1
  %255 = extractvalue %dx.types.ResRet.f32 %252, 2
  %256 = add i32 %122, 112
  %257 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %256, i32 undef)  ; BufferLoad(srv,index,wot)
  %258 = extractvalue %dx.types.ResRet.f32 %257, 0
  %259 = extractvalue %dx.types.ResRet.f32 %257, 1
  %260 = extractvalue %dx.types.ResRet.f32 %257, 2
  %261 = extractvalue %dx.types.ResRet.f32 %257, 3
  %262 = add i32 %122, 128
  %263 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %262, i32 undef)  ; BufferLoad(srv,index,wot)
  %264 = extractvalue %dx.types.ResRet.f32 %263, 0
  %265 = extractvalue %dx.types.ResRet.f32 %263, 1
  %266 = extractvalue %dx.types.ResRet.f32 %263, 2
  %267 = extractvalue %dx.types.ResRet.f32 %263, 3
  %268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %123, i32 undef)  ; BufferLoad(srv,index,wot)
  %269 = extractvalue %dx.types.ResRet.i32 %268, 0
  %270 = and i32 %269, 4096
  %271 = icmp ne i32 %270, 0
  %272 = fcmp fast une float %255, 0.000000e+00
  %273 = and i32 %269, 64
  %274 = icmp ne i32 %273, 0
  %275 = and i32 %269, 128
  %276 = icmp eq i32 %275, 0
  %277 = and i32 %269, 2048
  %278 = icmp eq i32 %277, 0
  %279 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %12, i32 0)  ; GetDimensions(handle,mipLevel)
  %280 = extractvalue %dx.types.Dimensions %279, 0
  %281 = sitofp i32 %280 to float
  %282 = extractvalue %dx.types.Dimensions %279, 1
  %283 = sitofp i32 %282 to float
  %284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %285 = extractvalue %dx.types.CBufRet.f32 %284, 2
  %286 = extractvalue %dx.types.CBufRet.f32 %284, 3
  %287 = fmul fast float %285, %47
  %288 = fmul fast float %286, %48
  %289 = fmul fast float %287, %281
  %290 = fmul fast float %288, %283
  %291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %292 = extractvalue %dx.types.CBufRet.f32 %291, 1
  %293 = fsub fast float -0.000000e+00, %292
  %294 = fptoui float %293 to i32
  %295 = fptoui float %289 to i32
  %296 = fptoui float %290 to i32
  %297 = and i32 %294, 31
  %298 = lshr i32 %295, %297
  %299 = lshr i32 %296, %297
  %300 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 %294, i32 %298, i32 %299, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %301 = extractvalue %dx.types.ResRet.f32 %300, 0
  %302 = fcmp fast ogt float %301, -1.000000e+00
  %303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %304 = extractvalue %dx.types.CBufRet.f32 %303, 1
  %305 = select i1 %302, float %304, float 1.000000e+00
  %306 = fadd fast float %301, 1.000000e+00
  %307 = fmul fast float %305, %306
  %308 = call float @dx.op.unary.f32(i32 6, float %307)  ; FAbs(value)
  %309 = extractvalue %dx.types.CBufRet.f32 %303, 3
  %310 = fcmp fast oge float %308, %309
  %311 = select i1 %310, float 0x4197782600000000, float %308
  br i1 %278, label %389, label %312, !dx.controlflow.hints !62

; <label>:312                                     ; preds = %244
  %313 = fmul fast float %52, %285
  %314 = fmul fast float %54, %286
  %315 = fsub fast float 1.000000e+00, %313
  %316 = fsub fast float 1.000000e+00, %314
  %317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %318 = extractvalue %dx.types.CBufRet.f32 %317, 0
  %319 = extractvalue %dx.types.CBufRet.f32 %317, 1
  %320 = extractvalue %dx.types.CBufRet.f32 %317, 2
  %321 = fmul fast float %315, %318
  %322 = fmul fast float %315, %319
  %323 = fmul fast float %315, %320
  %324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %325 = extractvalue %dx.types.CBufRet.f32 %324, 0
  %326 = extractvalue %dx.types.CBufRet.f32 %324, 1
  %327 = extractvalue %dx.types.CBufRet.f32 %324, 2
  %328 = fmul fast float %316, %325
  %329 = fmul fast float %316, %326
  %330 = fmul fast float %316, %327
  %331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %332 = extractvalue %dx.types.CBufRet.f32 %331, 0
  %333 = extractvalue %dx.types.CBufRet.f32 %331, 1
  %334 = extractvalue %dx.types.CBufRet.f32 %331, 2
  %335 = fadd fast float %328, %332
  %336 = fadd fast float %335, %321
  %337 = fadd fast float %329, %333
  %338 = fadd fast float %337, %322
  %339 = fadd fast float %330, %334
  %340 = fadd fast float %339, %323
  %341 = fmul fast float %336, %311
  %342 = fmul fast float %338, %311
  %343 = fmul fast float %340, %311
  %344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %345 = extractvalue %dx.types.CBufRet.f32 %344, 0
  %346 = extractvalue %dx.types.CBufRet.f32 %344, 1
  %347 = extractvalue %dx.types.CBufRet.f32 %344, 2
  %348 = fsub fast float %345, %24
  %349 = fadd fast float %348, %341
  %350 = fsub fast float %346, %25
  %351 = fadd fast float %350, %342
  %352 = fsub fast float %347, %26
  %353 = fadd fast float %352, %343
  %354 = fmul fast float %27, %27
  %355 = call float @dx.op.dot3.f32(i32 55, float %349, float %351, float %353, float %349, float %351, float %353)  ; Dot3(ax,ay,az,bx,by,bz)
  %356 = fsub fast float %354, %355
  %357 = fmul fast float %254, %354
  %358 = fmul fast float %253, %354
  %359 = fcmp fast olt float %356, %357
  %360 = fcmp fast ogt float %356, %358
  %361 = or i1 %359, %360
  %362 = select i1 %361, float 0.000000e+00, float %356
  %363 = fsub fast float %253, %254
  %364 = fmul fast float %363, %354
  %365 = fsub fast float %362, %357
  %366 = fdiv fast float %365, %364
  %367 = call float @dx.op.unary.f32(i32 7, float %366)  ; Saturate(value)
  %368 = fmul fast float %367, 2.000000e+00
  %369 = fsub fast float 3.000000e+00, %368
  %370 = fmul fast float %367, %367
  %371 = fmul fast float %370, %369
  %372 = fmul fast float %258, %35
  %373 = fmul fast float %259, %36
  %374 = fmul fast float %260, %37
  %375 = fsub fast float %372, %264
  %376 = fsub fast float %373, %265
  %377 = fsub fast float %374, %266
  %378 = fsub fast float %261, %267
  %379 = fmul fast float %371, %375
  %380 = fmul fast float %371, %376
  %381 = fmul fast float %371, %377
  %382 = fmul fast float %371, %378
  %383 = fadd fast float %379, %264
  %384 = fadd fast float %380, %265
  %385 = fadd fast float %381, %266
  %386 = fadd fast float %382, %267
  %387 = fmul fast float %247, %247
  %388 = fmul fast float %387, %362
  br label %484

; <label>:389                                     ; preds = %244
  %390 = and i32 %269, 256
  %391 = icmp eq i32 %390, 0
  %392 = fsub fast float %311, %42
  br i1 %391, label %441, label %393

; <label>:393                                     ; preds = %389
  %394 = fadd fast float %253, %42
  %395 = fcmp fast olt float %311, %42
  %396 = fcmp fast ogt float %311, %394
  %397 = or i1 %395, %396
  %398 = select i1 %397, float 0.000000e+00, float %392
  %399 = call float @dx.op.unary.f32(i32 83, float %311)  ; DerivCoarseX(value)
  %400 = call float @dx.op.unary.f32(i32 84, float %311)  ; DerivCoarseY(value)
  %401 = fmul fast float %399, %399
  %402 = fmul fast float %400, %400
  %403 = fadd fast float %402, %401
  %404 = call float @dx.op.unary.f32(i32 24, float %403)  ; Sqrt(value)
  %405 = extractvalue %dx.types.CBufRet.f32 %291, 2
  %406 = fmul fast float %405, %404
  %407 = call float @dx.op.unary.f32(i32 7, float %406)  ; Saturate(value)
  %408 = fmul fast float %407, %254
  %409 = fdiv fast float %392, %408
  %410 = call float @dx.op.unary.f32(i32 7, float %409)  ; Saturate(value)
  %411 = fmul fast float %410, 2.000000e+00
  %412 = fsub fast float 3.000000e+00, %411
  %413 = fmul fast float %410, %410
  %414 = fmul fast float %413, %412
  %415 = fsub fast float %311, %394
  %416 = fadd fast float %415, %408
  %417 = fdiv fast float %416, %408
  %418 = call float @dx.op.unary.f32(i32 7, float %417)  ; Saturate(value)
  %419 = fmul fast float %418, 2.000000e+00
  %420 = fsub fast float 3.000000e+00, %419
  %421 = fmul fast float %418, %418
  %422 = fmul fast float %421, %420
  %423 = fsub fast float %414, %422
  %424 = fmul fast float %258, %35
  %425 = fmul fast float %259, %36
  %426 = fmul fast float %260, %37
  %427 = fsub fast float %424, %264
  %428 = fsub fast float %425, %265
  %429 = fsub fast float %426, %266
  %430 = fsub fast float %261, %267
  %431 = fmul fast float %423, %427
  %432 = fmul fast float %423, %428
  %433 = fmul fast float %423, %429
  %434 = fmul fast float %423, %430
  %435 = fadd fast float %431, %264
  %436 = fadd fast float %432, %265
  %437 = fadd fast float %433, %266
  %438 = fadd fast float %434, %267
  %439 = fmul fast float %398, %247
  %440 = call float @dx.op.unary.f32(i32 6, float %439)  ; FAbs(value)
  br label %484

; <label>:441                                     ; preds = %389
  br i1 %272, label %442, label %455

; <label>:442                                     ; preds = %441
  %443 = fdiv fast float 5.000000e+01, %27
  %444 = select i1 %274, float %443, float 1.000000e+00
  %445 = fmul fast float %444, %247
  %446 = fmul fast float %33, 2.000000e+00
  %447 = fmul fast float %34, 2.000000e+00
  %448 = fadd fast float %446, -1.000000e+00
  %449 = fadd fast float %447, -1.000000e+00
  %450 = call float @dx.op.dot2.f32(i32 54, float %448, float %449, float %448, float %449)  ; Dot2(ax,ay,bx,by)
  %451 = fmul fast float %255, %27
  %452 = fmul fast float %451, %450
  %453 = fsub fast float %392, %452
  %454 = fmul fast float %445, %453
  br label %484

; <label>:455                                     ; preds = %441
  br i1 %276, label %476, label %456

; <label>:456                                     ; preds = %455
  %457 = fmul fast float %27, 0x3F947AE140000000
  %458 = select i1 %274, float %457, float 1.000000e+00
  %459 = fdiv fast float 1.000000e+00, %458
  %460 = fmul fast float %458, %248
  %461 = fmul fast float %458, %249
  %462 = fmul fast float %459, %250
  %463 = call float @dx.op.unary.f32(i32 6, float %392)  ; FAbs(value)
  %464 = fcmp fast olt float %463, %460
  br i1 %464, label %465, label %469, !dx.controlflow.hints !63

; <label>:465                                     ; preds = %456
  %466 = fmul fast float %459, %247
  %467 = fmul fast float %466, %463
  %468 = call float @dx.op.unary.f32(i32 6, float %467)  ; FAbs(value)
  br label %484

; <label>:469                                     ; preds = %456
  %470 = fcmp fast ogt float %463, %461
  br i1 %470, label %471, label %484

; <label>:471                                     ; preds = %469
  %472 = fsub fast float %463, %461
  %473 = fmul fast float %462, %472
  %474 = call float @dx.op.unary.f32(i32 6, float %473)  ; FAbs(value)
  %475 = fsub fast float 1.000000e+00, %474
  br label %484

; <label>:476                                     ; preds = %455
  %477 = fdiv fast float 5.000000e+01, %27
  %478 = select i1 %274, float %477, float 1.000000e+00
  %479 = fmul fast float %478, %247
  %480 = call float @dx.op.unary.f32(i32 6, float %223)  ; FAbs(value)
  %481 = select i1 %271, float %480, float 0x47EFFFFFE0000000
  %482 = call float @dx.op.binary.f32(i32 36, float %392, float %481)  ; FMin(a,b)
  %483 = fmul fast float %479, %482
  br label %484

; <label>:484                                     ; preds = %476, %471, %469, %465, %442, %393, %312
  %485 = phi float [ %388, %312 ], [ %440, %393 ], [ %454, %442 ], [ %483, %476 ], [ %468, %465 ], [ %475, %471 ], [ %463, %469 ]
  %486 = phi float [ %383, %312 ], [ %435, %393 ], [ %35, %442 ], [ %35, %476 ], [ %35, %465 ], [ %35, %471 ], [ %35, %469 ]
  %487 = phi float [ %384, %312 ], [ %436, %393 ], [ %36, %442 ], [ %36, %476 ], [ %36, %465 ], [ %36, %471 ], [ %36, %469 ]
  %488 = phi float [ %385, %312 ], [ %437, %393 ], [ %37, %442 ], [ %37, %476 ], [ %37, %465 ], [ %37, %471 ], [ %37, %469 ]
  %489 = phi float [ %386, %312 ], [ %438, %393 ], [ 1.000000e+00, %442 ], [ 1.000000e+00, %476 ], [ 1.000000e+00, %465 ], [ 1.000000e+00, %471 ], [ 1.000000e+00, %469 ]
  %490 = call float @dx.op.unary.f32(i32 7, float %485)  ; Saturate(value)
  %491 = fmul fast float %489, %202
  %492 = fmul fast float %491, %490
  br label %493

; <label>:493                                     ; preds = %484, %241
  %494 = phi float [ %486, %484 ], [ %35, %241 ]
  %495 = phi float [ %487, %484 ], [ %36, %241 ]
  %496 = phi float [ %488, %484 ], [ %37, %241 ]
  %497 = phi float [ %492, %484 ], [ %202, %241 ]
  %498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %499 = extractvalue %dx.types.CBufRet.f32 %498, 2
  %500 = fptosi float %42 to i32
  %501 = sitofp i32 %500 to float
  %502 = fadd fast float %499, %501
  %503 = fmul fast float %502, 0x3FE3C6EF40000000
  %504 = frem fast float %47, 2.560000e+02
  %505 = frem fast float %48, 2.560000e+02
  %506 = fptoui float %504 to i32
  %507 = fptoui float %505 to i32
  %508 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %506, i32 %507, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %509 = extractvalue %dx.types.ResRet.f32 %508, 0
  %510 = fadd fast float %509, %503
  %511 = call float @dx.op.unary.f32(i32 22, float %510)  ; Frc(value)
  %512 = and i32 %125, 1
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %570, label %514, !dx.controlflow.hints !64

; <label>:514                                     ; preds = %493
  %515 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %122, i32 undef)  ; BufferLoad(srv,index,wot)
  %516 = extractvalue %dx.types.ResRet.f32 %515, 2
  %517 = extractvalue %dx.types.ResRet.f32 %515, 3
  %518 = add i32 %122, 16
  %519 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %518, i32 undef)  ; BufferLoad(srv,index,wot)
  %520 = extractvalue %dx.types.ResRet.f32 %519, 0
  %521 = extractvalue %dx.types.ResRet.f32 %519, 1
  %522 = extractvalue %dx.types.ResRet.f32 %519, 2
  %523 = add i32 %122, 32
  %524 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %523, i32 undef)  ; BufferLoad(srv,index,wot)
  %525 = extractvalue %dx.types.ResRet.f32 %524, 0
  %526 = extractvalue %dx.types.ResRet.f32 %524, 1
  %527 = extractvalue %dx.types.ResRet.f32 %524, 2
  %528 = and i32 %125, 2
  %529 = icmp eq i32 %528, 0
  %530 = call float @dx.op.dot3.f32(i32 55, float %30, float %31, float %32, float %30, float %31, float %32)  ; Dot3(ax,ay,az,bx,by,bz)
  %531 = call float @dx.op.unary.f32(i32 25, float %530)  ; Rsqrt(value)
  %532 = fmul fast float %531, %30
  %533 = fmul fast float %531, %31
  %534 = fmul fast float %531, %32
  %535 = call float @dx.op.dot3.f32(i32 55, float %82, float %83, float %84, float %82, float %83, float %84)  ; Dot3(ax,ay,az,bx,by,bz)
  %536 = call float @dx.op.unary.f32(i32 25, float %535)  ; Rsqrt(value)
  %537 = fmul fast float %536, %82
  %538 = fmul fast float %536, %83
  %539 = fmul fast float %536, %84
  %540 = call float @dx.op.dot3.f32(i32 55, float %537, float %538, float %539, float %532, float %533, float %534)  ; Dot3(ax,ay,az,bx,by,bz)
  %541 = fmul fast float %540, %540
  %542 = fmul fast float %541, %516
  %543 = fadd fast float %542, %517
  %544 = call float @dx.op.unary.f32(i32 7, float %543)  ; Saturate(value)
  br i1 %529, label %545, label %555, !dx.controlflow.hints !65

; <label>:545                                     ; preds = %514
  %546 = extractvalue %dx.types.ResRet.f32 %515, 1
  %547 = extractvalue %dx.types.ResRet.f32 %515, 0
  %548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %549 = extractvalue %dx.types.CBufRet.f32 %548, 3
  %550 = fmul fast float %549, %535
  %551 = fsub fast float %547, %550
  %552 = fmul fast float %551, %546
  %553 = call float @dx.op.unary.f32(i32 7, float %552)  ; Saturate(value)
  %554 = fmul fast float %553, %544
  br label %555

; <label>:555                                     ; preds = %545, %514
  %556 = phi float [ %554, %545 ], [ %544, %514 ]
  %557 = fsub fast float %520, %525
  %558 = fsub fast float %521, %526
  %559 = fsub fast float %522, %527
  %560 = fmul fast float %556, %557
  %561 = fmul fast float %556, %558
  %562 = fmul fast float %556, %559
  %563 = fadd fast float %560, %525
  %564 = fadd fast float %561, %526
  %565 = fadd fast float %562, %527
  %566 = fmul fast float %563, %494
  %567 = fmul fast float %564, %495
  %568 = fmul fast float %565, %496
  %569 = fmul fast float %556, %497
  br label %570

; <label>:570                                     ; preds = %555, %493
  %571 = phi float [ %566, %555 ], [ %494, %493 ]
  %572 = phi float [ %567, %555 ], [ %495, %493 ]
  %573 = phi float [ %568, %555 ], [ %496, %493 ]
  %574 = phi float [ %569, %555 ], [ %497, %493 ]
  %575 = add i32 %23, 88
  %576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %575, i32 undef)  ; BufferLoad(srv,index,wot)
  %577 = extractvalue %dx.types.ResRet.i32 %576, 0
  %578 = add i32 %577, 0
  %579 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %578, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %580 = add i32 %23, 24
  %581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %580, i32 undef)  ; BufferLoad(srv,index,wot)
  %582 = extractvalue %dx.types.ResRet.i32 %581, 0
  %583 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %579, %dx.types.Handle %43, float %162, float %163, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %584 = extractvalue %dx.types.ResRet.f32 %583, 0
  %585 = extractvalue %dx.types.ResRet.f32 %583, 1
  %586 = extractvalue %dx.types.ResRet.f32 %583, 2
  %587 = extractvalue %dx.types.ResRet.f32 %583, 3
  %588 = and i32 %582, 255
  %589 = uitofp i32 %588 to float
  %590 = lshr i32 %582, 8
  %591 = and i32 %590, 255
  %592 = uitofp i32 %591 to float
  %593 = fmul fast float %587, %589
  %594 = fadd fast float %593, %592
  %595 = fmul fast float %594, 0x3F70101000000000
  %596 = add i32 %23, 56
  %597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %596, i32 undef)  ; BufferLoad(srv,index,wot)
  %598 = extractvalue %dx.types.ResRet.i32 %597, 0
  %599 = and i32 %598, 255
  %600 = uitofp i32 %599 to float
  %601 = fmul fast float %600, 0x3F70101020000000
  %602 = lshr i32 %598, 8
  %603 = and i32 %602, 255
  %604 = uitofp i32 %603 to float
  %605 = fmul fast float %604, 0x3F70101020000000
  %606 = lshr i32 %598, 16
  %607 = and i32 %606, 255
  %608 = uitofp i32 %607 to float
  %609 = fmul fast float %608, 0x3F70101020000000
  %610 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %28, float %29, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %611 = extractvalue %dx.types.ResRet.f32 %610, 0
  %612 = extractvalue %dx.types.ResRet.f32 %610, 1
  %613 = extractvalue %dx.types.ResRet.f32 %610, 2
  %614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %615 = extractvalue %dx.types.CBufRet.f32 %614, 1
  %616 = fadd fast float %595, 0xBFB99999A0000000
  %617 = call float @dx.op.unary.f32(i32 7, float %616)  ; Saturate(value)
  %618 = fmul fast float %617, 0x3FF1C71C80000000
  %619 = fsub fast float 1.000000e+00, %618
  %620 = call float @dx.op.unary.f32(i32 7, float %619)  ; Saturate(value)
  %621 = fmul fast float %584, %571
  %622 = fmul fast float %601, %601
  %623 = fmul fast float %622, %621
  %624 = fmul fast float %623, %620
  %625 = fmul fast float %585, %572
  %626 = fmul fast float %605, %605
  %627 = fmul fast float %626, %625
  %628 = fmul fast float %627, %620
  %629 = fmul fast float %586, %573
  %630 = fmul fast float %609, %609
  %631 = fmul fast float %630, %629
  %632 = fmul fast float %631, %620
  %633 = call float @dx.op.unary.f32(i32 7, float %624)  ; Saturate(value)
  %634 = call float @dx.op.unary.f32(i32 7, float %628)  ; Saturate(value)
  %635 = call float @dx.op.unary.f32(i32 7, float %632)  ; Saturate(value)
  %636 = call float @dx.op.dot3.f32(i32 55, float %633, float %634, float %635, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %637 = add i32 %23, 32
  %638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %637, i32 undef)  ; BufferLoad(srv,index,wot)
  %639 = extractvalue %dx.types.ResRet.i32 %638, 0
  %640 = and i32 %639, 255
  %641 = uitofp i32 %640 to float
  %642 = lshr i32 %639, 8
  %643 = and i32 %642, 255
  %644 = uitofp i32 %643 to float
  %645 = fmul fast float %644, %636
  %646 = fadd fast float %645, %641
  %647 = fmul fast float %646, 0x3F70101020000000
  %648 = call float @dx.op.unary.f32(i32 7, float %647)  ; Saturate(value)
  %649 = and i32 %125, 8192
  %650 = icmp eq i32 %649, 0
  %651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %652 = extractvalue %dx.types.CBufRet.f32 %651, 0
  br i1 %650, label %659, label %653, !dx.controlflow.hints !66

; <label>:653                                     ; preds = %570
  %654 = add i32 %122, 176
  %655 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %654, i32 undef)  ; BufferLoad(srv,index,wot)
  %656 = extractvalue %dx.types.ResRet.f32 %655, 0
  %657 = fcmp fast oge float %656, 0.000000e+00
  %658 = select i1 %657, float %656, float %652
  br label %666

; <label>:659                                     ; preds = %570
  %660 = add i32 %23, 72
  %661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %660, i32 undef)  ; BufferLoad(srv,index,wot)
  %662 = extractvalue %dx.types.ResRet.i32 %661, 0
  %663 = bitcast i32 %662 to float
  %664 = fcmp fast oge float %663, 0.000000e+00
  %665 = select i1 %664, float %663, float %652
  br label %666

; <label>:666                                     ; preds = %659, %653
  %667 = phi float [ %658, %653 ], [ %665, %659 ]
  %668 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %205, i32 %206, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %669 = extractvalue %dx.types.ResRet.i32 %668, 0
  %670 = lshr i32 %669, 18
  %671 = uitofp i32 %670 to float
  %672 = fmul fast float %671, 0x3F4C00EBA0000000
  %673 = call float @dx.op.unary.f32(i32 21, float %672)  ; Exp(value)
  %674 = fadd fast float %673, -1.000000e+00
  %675 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %9, i32 0)  ; GetDimensions(handle,mipLevel)
  %676 = extractvalue %dx.types.Dimensions %675, 0
  %677 = sitofp i32 %676 to float
  %678 = extractvalue %dx.types.Dimensions %675, 1
  %679 = sitofp i32 %678 to float
  %680 = fcmp fast oge float %203, %677
  %681 = fcmp fast oge float %204, %679
  %682 = or i1 %680, %681
  %683 = select i1 %682, float 0x4197782600000000, float %674
  %684 = fsub fast float 1.000000e+00, %574
  %685 = call float @dx.op.dot3.f32(i32 55, float %684, float %684, float %684, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %686 = fsub fast float 1.000000e+00, %685
  %687 = fmul fast float %667, %648
  %688 = fsub fast float 1.000000e+00, %648
  %689 = call float @dx.op.unary.f32(i32 7, float %688)  ; Saturate(value)
  %690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %691 = extractvalue %dx.types.CBufRet.f32 %690, 3
  %692 = fmul fast float %691, %689
  %693 = fadd fast float %692, %687
  %694 = and i32 %125, 2097152
  %695 = icmp eq i32 %694, 0
  br i1 %695, label %700, label %696, !dx.controlflow.hints !67

; <label>:696                                     ; preds = %666
  %697 = add i32 %122, 192
  %698 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %697, i32 undef)  ; BufferLoad(srv,index,wot)
  %699 = extractvalue %dx.types.ResRet.f32 %698, 0
  br label %703

; <label>:700                                     ; preds = %666
  %701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %702 = extractvalue %dx.types.CBufRet.f32 %701, 3
  br label %703

; <label>:703                                     ; preds = %700, %696
  %704 = phi float [ %699, %696 ], [ %702, %700 ]
  %705 = fmul fast float %611, %574
  %706 = fmul fast float %705, %615
  %707 = fmul fast float %706, %633
  %708 = fmul fast float %612, %574
  %709 = fmul fast float %708, %615
  %710 = fmul fast float %709, %634
  %711 = fmul fast float %613, %574
  %712 = fmul fast float %711, %615
  %713 = fmul fast float %712, %635
  %714 = icmp eq i32 %121, 3
  %715 = fcmp fast ogt float %42, %683
  %716 = and i1 %229, %715
  %717 = or i1 %714, %716
  %718 = icmp eq i32 %121, 2
  %719 = fcmp fast ole float %42, %683
  %720 = and i1 %718, %719
  %721 = or i1 %720, %717
  br i1 %716, label %722, label %828

; <label>:722                                     ; preds = %703
  %723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %724 = extractvalue %dx.types.CBufRet.f32 %723, 2
  %725 = extractvalue %dx.types.CBufRet.f32 %723, 3
  %726 = fmul fast float %724, %47
  %727 = fmul fast float %725, %48
  %728 = call float @dx.op.unary.f32(i32 7, float %726)  ; Saturate(value)
  %729 = call float @dx.op.unary.f32(i32 7, float %727)  ; Saturate(value)
  %730 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %728, float %729, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %731 = extractvalue %dx.types.ResRet.f32 %730, 0
  %732 = extractvalue %dx.types.ResRet.f32 %730, 1
  %733 = extractvalue %dx.types.ResRet.f32 %730, 2
  %734 = extractvalue %dx.types.ResRet.f32 %730, 3
  %735 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %728, float %729, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %736 = extractvalue %dx.types.ResRet.f32 %735, 0
  %737 = extractvalue %dx.types.ResRet.f32 %735, 1
  %738 = extractvalue %dx.types.ResRet.f32 %735, 2
  %739 = extractvalue %dx.types.ResRet.f32 %735, 3
  %740 = call float @dx.op.binary.f32(i32 35, float %732, float %733)  ; FMax(a,b)
  %741 = call float @dx.op.binary.f32(i32 35, float %731, float %740)  ; FMax(a,b)
  %742 = call float @dx.op.binary.f32(i32 35, float %741, float %734)  ; FMax(a,b)
  %743 = call float @dx.op.binary.f32(i32 36, float %737, float %738)  ; FMin(a,b)
  %744 = call float @dx.op.binary.f32(i32 36, float %736, float %743)  ; FMin(a,b)
  %745 = call float @dx.op.binary.f32(i32 36, float %744, float %739)  ; FMin(a,b)
  %746 = fmul fast float %742, 2.550000e+02
  %747 = fadd fast float %746, 0x3F70101020000000
  %748 = fptoui float %747 to i32
  %749 = fmul fast float %745, 2.550000e+02
  %750 = fadd fast float %749, 0x3F70101020000000
  %751 = fptoui float %750 to i32
  %752 = icmp ult i32 %748, %751
  br i1 %752, label %753, label %804

; <label>:753                                     ; preds = %722
  %754 = fcmp fast ogt float %41, 9.843750e-01
  %755 = fadd fast float %42, -4.000000e+00
  %756 = select i1 %754, float -4.000000e+00, float %755
  %757 = call float @dx.op.binary.f32(i32 35, float %756, float 0.000000e+00)  ; FMax(a,b)
  %758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %759 = extractvalue %dx.types.CBufRet.f32 %758, 0
  %760 = fadd fast float %759, %757
  %761 = extractvalue %dx.types.CBufRet.f32 %758, 2
  %762 = fmul fast float %760, %761
  %763 = call float @dx.op.unary.f32(i32 23, float %762)  ; Log(value)
  %764 = extractvalue %dx.types.CBufRet.f32 %758, 3
  %765 = fmul fast float %764, %763
  %766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %767 = extractvalue %dx.types.CBufRet.f32 %766, 2
  %768 = fmul fast float %765, %767
  %769 = call float @dx.op.unary.f32(i32 7, float %768)  ; Saturate(value)
  %770 = uitofp i32 %748 to float
  %771 = uitofp i32 %751 to float
  %772 = fadd fast float %770, 5.000000e-01
  %773 = fadd fast float %771, 5.000000e-01
  %774 = fmul fast float %767, %772
  %775 = fmul fast float %767, %773
  %776 = fadd fast float %774, 0x3F0FFB4800000000
  %777 = fadd fast float %775, 0xBF0FFB4800000000
  %778 = call float @dx.op.binary.f32(i32 35, float %769, float %776)  ; FMax(a,b)
  %779 = call float @dx.op.binary.f32(i32 36, float %778, float %777)  ; FMin(a,b)
  %780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %781 = extractvalue %dx.types.CBufRet.f32 %780, 1
  %782 = extractvalue %dx.types.CBufRet.f32 %780, 2
  %783 = extractvalue %dx.types.CBufRet.f32 %780, 0
  %784 = fmul fast float %781, %779
  %785 = fadd fast float %783, %784
  %786 = fadd fast float %783, %782
  %787 = fsub fast float %781, %782
  %788 = fadd fast float %787, %783
  %789 = call float @dx.op.binary.f32(i32 35, float %785, float %786)  ; FMax(a,b)
  %790 = call float @dx.op.binary.f32(i32 36, float %789, float %788)  ; FMin(a,b)
  %791 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %17, float %728, float %729, float %790, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %792 = extractvalue %dx.types.ResRet.f32 %791, 0
  %793 = extractvalue %dx.types.ResRet.f32 %791, 1
  %794 = extractvalue %dx.types.ResRet.f32 %791, 2
  %795 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %728, float %729, float %790, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %796 = extractvalue %dx.types.ResRet.f32 %795, 0
  %797 = extractvalue %dx.types.ResRet.f32 %795, 1
  %798 = extractvalue %dx.types.ResRet.f32 %795, 2
  %799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %800 = extractvalue %dx.types.CBufRet.f32 %799, 1
  %801 = fmul fast float %800, %796
  %802 = fmul fast float %800, %797
  %803 = fmul fast float %800, %798
  br label %804

; <label>:804                                     ; preds = %753, %722
  %805 = phi float [ %792, %753 ], [ 1.000000e+00, %722 ]
  %806 = phi float [ %793, %753 ], [ 1.000000e+00, %722 ]
  %807 = phi float [ %794, %753 ], [ 1.000000e+00, %722 ]
  %808 = phi float [ %801, %753 ], [ 0.000000e+00, %722 ]
  %809 = phi float [ %802, %753 ], [ 0.000000e+00, %722 ]
  %810 = phi float [ %803, %753 ], [ 0.000000e+00, %722 ]
  %811 = fmul fast float %808, %686
  %812 = fmul fast float %809, %686
  %813 = fmul fast float %810, %686
  %814 = call float @dx.op.dot3.f32(i32 55, float %805, float %806, float %807, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %815 = call float @dx.op.dot3.f32(i32 55, float %811, float %812, float %813, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %816 = select i1 %105, float %814, float %805
  %817 = select i1 %105, float %814, float %806
  %818 = select i1 %105, float 1.000000e+00, float %807
  %819 = select i1 %105, float %815, float %811
  %820 = select i1 %105, float 0.000000e+00, float %812
  %821 = select i1 %105, float 0.000000e+00, float %813
  %822 = fmul fast float %816, %707
  %823 = fmul fast float %817, %710
  %824 = fmul fast float %818, %713
  %825 = fadd fast float %822, %819
  %826 = fadd fast float %823, %820
  %827 = fadd fast float %821, %824
  br label %828

; <label>:828                                     ; preds = %804, %703
  %829 = phi float [ %683, %804 ], [ %42, %703 ]
  %830 = phi float [ %825, %804 ], [ %707, %703 ]
  %831 = phi float [ %826, %804 ], [ %710, %703 ]
  %832 = phi float [ %827, %804 ], [ %713, %703 ]
  %833 = phi float [ %805, %804 ], [ 1.000000e+00, %703 ]
  br i1 %721, label %1129, label %834

; <label>:834                                     ; preds = %828
  %835 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %18, float %28, float %29, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %836 = extractvalue %dx.types.ResRet.f32 %835, 0
  %837 = extractvalue %dx.types.ResRet.f32 %835, 1
  %838 = extractvalue %dx.types.ResRet.f32 %835, 2
  %839 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %18, float %28, float %29, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %840 = extractvalue %dx.types.ResRet.f32 %839, 0
  %841 = extractvalue %dx.types.ResRet.f32 %839, 1
  %842 = extractvalue %dx.types.ResRet.f32 %839, 2
  %843 = fmul fast float %836, %686
  %844 = fmul fast float %837, %686
  %845 = fmul fast float %838, %686
  %846 = fmul fast float %840, %833
  %847 = call float @dx.op.dot3.f32(i32 55, float %840, float %841, float %842, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %848 = call float @dx.op.dot3.f32(i32 55, float %843, float %844, float %845, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %849 = select i1 %105, float %847, float %840
  %850 = select i1 %105, float %847, float %841
  %851 = select i1 %105, float 1.000000e+00, float %842
  %852 = select i1 %105, float %848, float %843
  %853 = select i1 %105, float 0.000000e+00, float %844
  %854 = select i1 %105, float 0.000000e+00, float %845
  %855 = fmul fast float %849, %830
  %856 = fmul fast float %850, %831
  %857 = fmul fast float %851, %832
  %858 = fadd fast float %855, %852
  %859 = fadd fast float %856, %853
  %860 = fadd fast float %857, %854
  %861 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %862 = extractvalue %dx.types.CBufRet.i32 %861, 0
  %863 = icmp eq i32 %862, 0
  br i1 %863, label %1129, label %864, !dx.controlflow.hints !68

; <label>:864                                     ; preds = %834
  %865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %866 = extractvalue %dx.types.CBufRet.f32 %865, 2
  %867 = extractvalue %dx.types.CBufRet.f32 %865, 3
  %868 = fmul fast float %866, %47
  %869 = fmul fast float %867, %48
  %870 = fmul fast float %868, 2.000000e+00
  %871 = fmul fast float %869, 2.000000e+00
  %872 = fsub fast float 1.000000e+00, %870
  %873 = fsub fast float 1.000000e+00, %871
  %874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %875 = extractvalue %dx.types.CBufRet.f32 %874, 0
  %876 = extractvalue %dx.types.CBufRet.f32 %874, 1
  %877 = extractvalue %dx.types.CBufRet.f32 %874, 2
  %878 = fmul fast float %872, %875
  %879 = fmul fast float %872, %876
  %880 = fmul fast float %872, %877
  %881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %882 = extractvalue %dx.types.CBufRet.f32 %881, 0
  %883 = extractvalue %dx.types.CBufRet.f32 %881, 1
  %884 = extractvalue %dx.types.CBufRet.f32 %881, 2
  %885 = fmul fast float %873, %882
  %886 = fmul fast float %873, %883
  %887 = fmul fast float %873, %884
  %888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %889 = extractvalue %dx.types.CBufRet.f32 %888, 0
  %890 = extractvalue %dx.types.CBufRet.f32 %888, 1
  %891 = extractvalue %dx.types.CBufRet.f32 %888, 2
  %892 = fadd fast float %885, %889
  %893 = fadd fast float %892, %878
  %894 = fadd fast float %886, %890
  %895 = fadd fast float %894, %879
  %896 = fadd fast float %887, %891
  %897 = fadd fast float %896, %880
  %898 = fmul fast float %893, %829
  %899 = fmul fast float %895, %829
  %900 = fmul fast float %897, %829
  %901 = fmul fast float %898, %898
  %902 = fmul fast float %899, %899
  %903 = fadd fast float %901, %902
  %904 = fmul fast float %900, %900
  %905 = fadd fast float %903, %904
  %906 = call float @dx.op.unary.f32(i32 24, float %905)  ; Sqrt(value)
  %907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %908 = extractvalue %dx.types.CBufRet.f32 %907, 0
  %909 = fsub fast float %906, %908
  %910 = extractvalue %dx.types.CBufRet.f32 %907, 2
  %911 = fmul fast float %909, %910
  %912 = call float @dx.op.unary.f32(i32 7, float %911)  ; Saturate(value)
  %913 = fadd fast float %912, -5.000000e-01
  %914 = fmul fast float %913, 2.000000e+00
  %915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %916 = extractvalue %dx.types.CBufRet.f32 %915, 2
  %917 = call float @dx.op.binary.f32(i32 36, float %916, float %914)  ; FMin(a,b)
  %918 = fsub fast float -0.000000e+00, %916
  %919 = fcmp fast ogt float %917, %918
  br i1 %919, label %920, label %1129, !dx.controlflow.hints !69

; <label>:920                                     ; preds = %864
  %921 = fmul fast float %917, 5.000000e-01
  %922 = fadd fast float %921, 5.000000e-01
  %923 = call float @dx.op.unary.f32(i32 22, float %922)  ; Frc(value)
  %924 = call float @dx.op.unary.f32(i32 27, float %923)  ; Round_ni(value)
  %925 = call float @dx.op.unary.f32(i32 22, float %923)  ; Frc(value)
  %926 = fmul fast float %925, 2.000000e+00
  %927 = fadd fast float %926, -1.000000e+00
  %928 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %18, float %868, float %869, float %924, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %929 = extractvalue %dx.types.ResRet.f32 %928, 0
  %930 = extractvalue %dx.types.ResRet.f32 %928, 1
  %931 = extractvalue %dx.types.ResRet.f32 %928, 2
  %932 = extractvalue %dx.types.ResRet.f32 %928, 3
  %933 = fadd fast float %929, -5.000000e-01
  %934 = fadd fast float %931, -5.000000e-01
  %935 = fmul fast float %933, 0xBFD5555560000000
  %936 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %934, float %935)  ; FMad(a,b,c)
  %937 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %930, float 0.000000e+00)  ; FMad(a,b,c)
  %938 = fadd fast float %937, %932
  %939 = fmul fast float %933, -7.500000e-01
  %940 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %934, float %939)  ; FMad(a,b,c)
  %941 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %930, float 0.000000e+00)  ; FMad(a,b,c)
  %942 = fadd fast float %941, %932
  %943 = call float @dx.op.binary.f32(i32 35, float %936, float -1.000000e+00)  ; FMax(a,b)
  %944 = call float @dx.op.binary.f32(i32 35, float %938, float -1.000000e+00)  ; FMax(a,b)
  %945 = call float @dx.op.binary.f32(i32 35, float %940, float -1.000000e+00)  ; FMax(a,b)
  %946 = call float @dx.op.binary.f32(i32 35, float %942, float -1.000000e+00)  ; FMax(a,b)
  %947 = call float @dx.op.binary.f32(i32 36, float %943, float 1.000000e+00)  ; FMin(a,b)
  %948 = call float @dx.op.binary.f32(i32 36, float %944, float 1.000000e+00)  ; FMin(a,b)
  %949 = call float @dx.op.binary.f32(i32 36, float %945, float 1.000000e+00)  ; FMin(a,b)
  %950 = call float @dx.op.binary.f32(i32 36, float %946, float 1.000000e+00)  ; FMin(a,b)
  %951 = fcmp fast olt float %947, 0x3FEFFF8020000000
  br i1 %951, label %952, label %1067, !dx.controlflow.hints !70

; <label>:952                                     ; preds = %920
  %953 = extractvalue %dx.types.CBufRet.f32 %915, 3
  %954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %955 = extractvalue %dx.types.CBufRet.f32 %954, 0
  %956 = extractvalue %dx.types.CBufRet.f32 %954, 1
  %957 = extractvalue %dx.types.CBufRet.f32 %954, 2
  %958 = extractvalue %dx.types.CBufRet.f32 %954, 3
  %959 = fsub fast float %955, %947
  %960 = fsub fast float %956, %948
  %961 = fsub fast float %957, %949
  %962 = fsub fast float %958, %950
  %963 = fmul fast float %959, %953
  %964 = fmul fast float %960, %953
  %965 = fmul fast float %961, %953
  %966 = fmul fast float %962, %953
  %967 = fadd fast float %963, %947
  %968 = fadd fast float %964, %948
  %969 = fsub fast float -0.000000e+00, %968
  %970 = fadd fast float %965, %949
  %971 = fadd fast float %966, %950
  %972 = fmul fast float %967, %967
  %973 = fsub fast float %968, %972
  %974 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %973)  ; FMax(a,b)
  %975 = fdiv fast float 1.000000e+00, %974
  %976 = fmul fast float %968, %967
  %977 = fsub fast float %970, %976
  %978 = fsub fast float %927, %967
  %979 = fmul fast float %927, %927
  %980 = fsub fast float %979, %968
  %981 = fmul fast float %978, %975
  %982 = fmul fast float %981, %977
  %983 = fsub fast float %980, %982
  %984 = fmul fast float %968, %968
  %985 = fsub fast float %971, %984
  %986 = fmul fast float %977, %977
  %987 = fmul fast float %986, %975
  %988 = fsub fast float %985, %987
  %989 = fdiv fast float %983, %988
  %990 = fmul fast float %977, %989
  %991 = fsub fast float %978, %990
  %992 = fmul fast float %991, %975
  %993 = fmul fast float %992, %967
  %994 = fsub fast float 1.000000e+00, %993
  %995 = fmul fast float %968, %989
  %996 = fsub fast float %994, %995
  %997 = fmul fast float %992, %992
  %998 = fmul fast float %989, 4.000000e+00
  %999 = fmul fast float %998, %996
  %1000 = fsub fast float %997, %999
  %1001 = call float @dx.op.unary.f32(i32 24, float %1000)  ; Sqrt(value)
  %1002 = fcmp fast oge float %992, 0.000000e+00
  %1003 = fsub fast float -0.000000e+00, %1001
  %1004 = select i1 %1002, float %1003, float %1001
  %1005 = fsub fast float %1004, %992
  %1006 = fdiv fast float %1005, %989
  %1007 = fdiv fast float %996, %1005
  %1008 = fmul fast float %1006, 5.000000e-01
  %1009 = fmul fast float %1007, 2.000000e+00
  %1010 = select i1 %1002, float %1008, float %1009
  %1011 = select i1 %1002, float %1009, float %1008
  %1012 = call float @dx.op.binary.f32(i32 35, float %1010, float %1011)  ; FMax(a,b)
  %1013 = call float @dx.op.binary.f32(i32 36, float %1010, float %1011)  ; FMin(a,b)
  %1014 = fcmp fast ogt float %927, %1013
  br i1 %1014, label %1015, label %1025

; <label>:1015                                    ; preds = %952
  %1016 = fsub fast float %927, %1013
  %1017 = fsub fast float %1012, %1013
  %1018 = fmul fast float %1016, %1017
  %1019 = fmul fast float %1012, %927
  %1020 = fadd fast float %1012, %927
  %1021 = fmul fast float %1020, %967
  %1022 = fadd fast float %1019, %968
  %1023 = fsub fast float %1022, %1021
  %1024 = fdiv fast float %1023, %1018
  br label %1025

; <label>:1025                                    ; preds = %1015, %952
  %1026 = phi float [ %1024, %1015 ], [ 0.000000e+00, %952 ]
  %1027 = fcmp fast ogt float %927, %1012
  %1028 = fsub fast float %927, %1012
  br i1 %1027, label %1029, label %1039

; <label>:1029                                    ; preds = %1025
  %1030 = fsub fast float %1012, %1013
  %1031 = fmul fast float %1030, %1028
  %1032 = fmul fast float %1013, %927
  %1033 = fadd fast float %1013, %927
  %1034 = fmul fast float %1033, %967
  %1035 = fsub fast float %969, %1032
  %1036 = fadd fast float %1035, %1034
  %1037 = fdiv fast float %1036, %1031
  %1038 = fadd fast float %1037, %1026
  br label %1039

; <label>:1039                                    ; preds = %1029, %1025
  %1040 = phi float [ %1038, %1029 ], [ %1026, %1025 ]
  %1041 = fsub fast float %927, %1013
  %1042 = fmul fast float %1041, %1028
  %1043 = fmul fast float %1013, %1012
  %1044 = fadd fast float %1013, %1012
  %1045 = fmul fast float %1044, %967
  %1046 = fadd fast float %1043, %968
  %1047 = fsub fast float %1046, %1045
  %1048 = fdiv fast float %1047, %1042
  %1049 = call float @dx.op.unary.f32(i32 7, float %1040)  ; Saturate(value)
  %1050 = fcmp fast oeq float %704, 0.000000e+00
  %1051 = extractvalue %dx.types.CBufRet.f32 %915, 0
  %1052 = fcmp fast oeq float %1051, 0.000000e+00
  %1053 = or i1 %1050, %1052
  %1054 = fmul fast float %1051, 2.000000e+00
  %1055 = fadd fast float %916, %917
  %1056 = fdiv fast float %1055, %1054
  %1057 = call float @dx.op.unary.f32(i32 7, float %1056)  ; Saturate(value)
  %1058 = fmul fast float %1057, 2.000000e+00
  %1059 = fsub fast float 3.000000e+00, %1058
  %1060 = fmul fast float %1057, %1057
  %1061 = fmul fast float %1060, %1059
  %1062 = select i1 %1053, float 1.000000e+00, float %1061
  %1063 = fmul fast float %1048, %704
  %1064 = fadd fast float %1049, %1063
  %1065 = call float @dx.op.unary.f32(i32 7, float %1064)  ; Saturate(value)
  %1066 = fmul fast float %1062, %1065
  br label %1067

; <label>:1067                                    ; preds = %1039, %920
  %1068 = phi float [ %1066, %1039 ], [ 0.000000e+00, %920 ]
  %1069 = fsub fast float 1.000000e+00, %1068
  %1070 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %18, float %868, float %869, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1071 = extractvalue %dx.types.ResRet.f32 %1070, 0
  %1072 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1073 = extractvalue %dx.types.CBufRet.i32 %1072, 2
  %1074 = icmp eq i32 %1073, 0
  br i1 %1074, label %1080, label %1075

; <label>:1075                                    ; preds = %1067
  %1076 = call float @dx.op.unary.f32(i32 7, float %1068)  ; Saturate(value)
  %1077 = fadd fast float %1071, -1.000000e+00
  %1078 = fmul fast float %1076, %1077
  %1079 = fadd fast float %1078, 1.000000e+00
  br label %1080

; <label>:1080                                    ; preds = %1075, %1067
  %1081 = phi float [ %1079, %1075 ], [ %1069, %1067 ]
  %1082 = call float @dx.op.binary.f32(i32 35, float %1071, float %1081)  ; FMax(a,b)
  %1083 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %1084 = extractvalue %dx.types.CBufRet.i32 %1083, 2
  %1085 = and i32 %1084, 1
  %1086 = icmp eq i32 %1085, 0
  %1087 = fcmp fast une float %1082, 1.000000e+00
  %1088 = and i1 %1087, %1086
  br i1 %1088, label %1089, label %1108

; <label>:1089                                    ; preds = %1080
  %1090 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %18, float %868, float %869, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1091 = extractvalue %dx.types.ResRet.f32 %1090, 0
  %1092 = extractvalue %dx.types.ResRet.f32 %1090, 1
  %1093 = extractvalue %dx.types.ResRet.f32 %1090, 2
  %1094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1095 = extractvalue %dx.types.CBufRet.f32 %1094, 1
  %1096 = fmul fast float %1095, %1091
  %1097 = fmul fast float %1095, %1092
  %1098 = fmul fast float %1095, %1093
  %1099 = fcmp fast ogt float %1071, 0x3FEFFF2E40000000
  %1100 = fsub fast float 1.000000e+00, %1082
  %1101 = fsub fast float 1.000000e+00, %1071
  %1102 = fdiv fast float %1100, %1101
  %1103 = call float @dx.op.unary.f32(i32 7, float %1102)  ; Saturate(value)
  %1104 = select i1 %1099, float 0.000000e+00, float %1103
  %1105 = fmul fast float %1096, %1104
  %1106 = fmul fast float %1097, %1104
  %1107 = fmul fast float %1098, %1104
  br label %1108

; <label>:1108                                    ; preds = %1089, %1080
  %1109 = phi float [ 0.000000e+00, %1080 ], [ %1105, %1089 ]
  %1110 = phi float [ 0.000000e+00, %1080 ], [ %1106, %1089 ]
  %1111 = phi float [ 0.000000e+00, %1080 ], [ %1107, %1089 ]
  %1112 = fmul fast float %1109, %686
  %1113 = fmul fast float %1110, %686
  %1114 = fmul fast float %1111, %686
  %1115 = fmul fast float %1082, %846
  %1116 = call float @dx.op.dot3.f32(i32 55, float %1082, float %1082, float %1082, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1117 = call float @dx.op.dot3.f32(i32 55, float %1112, float %1113, float %1114, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1118 = select i1 %105, float %1116, float %1082
  %1119 = select i1 %105, float 1.000000e+00, float %1082
  %1120 = select i1 %105, float %1117, float %1112
  %1121 = select i1 %105, float 0.000000e+00, float %1113
  %1122 = select i1 %105, float 0.000000e+00, float %1114
  %1123 = fmul fast float %1118, %858
  %1124 = fmul fast float %1118, %859
  %1125 = fmul fast float %1119, %860
  %1126 = fadd fast float %1123, %1120
  %1127 = fadd fast float %1124, %1121
  %1128 = fadd fast float %1122, %1125
  br label %1129

; <label>:1129                                    ; preds = %1108, %864, %834, %828
  %1130 = phi float [ %830, %828 ], [ %858, %834 ], [ %1126, %1108 ], [ %858, %864 ]
  %1131 = phi float [ %831, %828 ], [ %859, %834 ], [ %1127, %1108 ], [ %859, %864 ]
  %1132 = phi float [ %832, %828 ], [ %860, %834 ], [ %1128, %1108 ], [ %860, %864 ]
  %1133 = phi float [ %833, %828 ], [ %846, %834 ], [ %1115, %1108 ], [ %846, %864 ]
  %1134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1135 = extractvalue %dx.types.CBufRet.f32 %1134, 2
  %1136 = extractvalue %dx.types.CBufRet.f32 %1134, 3
  %1137 = fmul fast float %1135, %47
  %1138 = fmul fast float %1136, %48
  %1139 = call float @dx.op.unary.f32(i32 7, float %1137)  ; Saturate(value)
  %1140 = call float @dx.op.unary.f32(i32 7, float %1138)  ; Saturate(value)
  %1141 = select i1 %721, i32 2, i32 0
  %1142 = or i32 %1141, 1
  %1143 = uitofp i32 %1142 to float
  %1144 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %1139, float %1140, float %1143, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1145 = extractvalue %dx.types.ResRet.f32 %1144, 0
  %1146 = extractvalue %dx.types.ResRet.f32 %1144, 1
  %1147 = extractvalue %dx.types.ResRet.f32 %1144, 2
  %1148 = extractvalue %dx.types.ResRet.f32 %1144, 3
  %1149 = add nuw nsw i32 %1141, 2
  %1150 = uitofp i32 %1149 to float
  %1151 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %1139, float %1140, float %1150, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1152 = extractvalue %dx.types.ResRet.f32 %1151, 0
  %1153 = extractvalue %dx.types.ResRet.f32 %1151, 1
  %1154 = extractvalue %dx.types.ResRet.f32 %1151, 2
  %1155 = extractvalue %dx.types.ResRet.f32 %1151, 3
  %1156 = call float @dx.op.binary.f32(i32 35, float %1146, float %1147)  ; FMax(a,b)
  %1157 = call float @dx.op.binary.f32(i32 35, float %1145, float %1156)  ; FMax(a,b)
  %1158 = call float @dx.op.binary.f32(i32 35, float %1157, float %1148)  ; FMax(a,b)
  %1159 = call float @dx.op.binary.f32(i32 36, float %1153, float %1154)  ; FMin(a,b)
  %1160 = call float @dx.op.binary.f32(i32 36, float %1152, float %1159)  ; FMin(a,b)
  %1161 = call float @dx.op.binary.f32(i32 36, float %1160, float %1155)  ; FMin(a,b)
  %1162 = fmul fast float %1158, 2.550000e+02
  %1163 = fadd fast float %1162, 0x3F70101020000000
  %1164 = fptoui float %1163 to i32
  %1165 = fmul fast float %1161, 2.550000e+02
  %1166 = fadd fast float %1165, 0x3F70101020000000
  %1167 = fptoui float %1166 to i32
  %1168 = icmp ult i32 %1164, %1167
  br i1 %1168, label %1169, label %1221

; <label>:1169                                    ; preds = %1129
  %1170 = fcmp fast ogt float %41, 9.843750e-01
  %1171 = fadd fast float %829, -4.000000e+00
  %1172 = select i1 %1170, float -4.000000e+00, float %1171
  %1173 = call float @dx.op.binary.f32(i32 35, float %1172, float 0.000000e+00)  ; FMax(a,b)
  %1174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1175 = extractvalue %dx.types.CBufRet.f32 %1174, 0
  %1176 = fadd fast float %1175, %1173
  %1177 = extractvalue %dx.types.CBufRet.f32 %1174, 2
  %1178 = fmul fast float %1176, %1177
  %1179 = call float @dx.op.unary.f32(i32 23, float %1178)  ; Log(value)
  %1180 = extractvalue %dx.types.CBufRet.f32 %1174, 3
  %1181 = fmul fast float %1180, %1179
  %1182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1183 = extractvalue %dx.types.CBufRet.f32 %1182, 2
  %1184 = fmul fast float %1181, %1183
  %1185 = call float @dx.op.unary.f32(i32 7, float %1184)  ; Saturate(value)
  %1186 = uitofp i32 %1164 to float
  %1187 = uitofp i32 %1167 to float
  %1188 = fadd fast float %1186, 5.000000e-01
  %1189 = fadd fast float %1187, 5.000000e-01
  %1190 = fmul fast float %1183, %1188
  %1191 = fmul fast float %1183, %1189
  %1192 = fadd fast float %1190, 0x3F0FFB4800000000
  %1193 = fadd fast float %1191, 0xBF0FFB4800000000
  %1194 = call float @dx.op.binary.f32(i32 35, float %1185, float %1192)  ; FMax(a,b)
  %1195 = call float @dx.op.binary.f32(i32 36, float %1194, float %1193)  ; FMin(a,b)
  %1196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1197 = extractvalue %dx.types.CBufRet.f32 %1196, 1
  %1198 = extractvalue %dx.types.CBufRet.f32 %1196, 2
  %1199 = extractvalue %dx.types.CBufRet.f32 %1196, 0
  %1200 = select i1 %721, float %1199, float 0.000000e+00
  %1201 = fmul fast float %1197, %1195
  %1202 = fadd fast float %1200, %1201
  %1203 = fadd fast float %1200, %1198
  %1204 = fsub fast float %1197, %1198
  %1205 = fadd fast float %1204, %1200
  %1206 = call float @dx.op.binary.f32(i32 35, float %1202, float %1203)  ; FMax(a,b)
  %1207 = call float @dx.op.binary.f32(i32 36, float %1206, float %1205)  ; FMin(a,b)
  %1208 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %17, float %1139, float %1140, float %1207, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1209 = extractvalue %dx.types.ResRet.f32 %1208, 0
  %1210 = extractvalue %dx.types.ResRet.f32 %1208, 1
  %1211 = extractvalue %dx.types.ResRet.f32 %1208, 2
  %1212 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %1139, float %1140, float %1207, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1213 = extractvalue %dx.types.ResRet.f32 %1212, 0
  %1214 = extractvalue %dx.types.ResRet.f32 %1212, 1
  %1215 = extractvalue %dx.types.ResRet.f32 %1212, 2
  %1216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1217 = extractvalue %dx.types.CBufRet.f32 %1216, 1
  %1218 = fmul fast float %1217, %1213
  %1219 = fmul fast float %1217, %1214
  %1220 = fmul fast float %1217, %1215
  br label %1221

; <label>:1221                                    ; preds = %1169, %1129
  %1222 = phi float [ %1209, %1169 ], [ 1.000000e+00, %1129 ]
  %1223 = phi float [ %1210, %1169 ], [ 1.000000e+00, %1129 ]
  %1224 = phi float [ %1211, %1169 ], [ 1.000000e+00, %1129 ]
  %1225 = phi float [ %1218, %1169 ], [ 0.000000e+00, %1129 ]
  %1226 = phi float [ %1219, %1169 ], [ 0.000000e+00, %1129 ]
  %1227 = phi float [ %1220, %1169 ], [ 0.000000e+00, %1129 ]
  %1228 = fmul fast float %1225, %686
  %1229 = fmul fast float %1226, %686
  %1230 = fmul fast float %1227, %686
  %1231 = fmul fast float %1222, %1133
  %1232 = call float @dx.op.dot3.f32(i32 55, float %1222, float %1223, float %1224, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1233 = call float @dx.op.dot3.f32(i32 55, float %1228, float %1229, float %1230, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1234 = select i1 %105, float %1232, float %1222
  %1235 = select i1 %105, float %1232, float %1223
  %1236 = select i1 %105, float 1.000000e+00, float %1224
  %1237 = select i1 %105, float %1233, float %1228
  %1238 = select i1 %105, float 0.000000e+00, float %1229
  %1239 = select i1 %105, float 0.000000e+00, float %1230
  %1240 = fmul fast float %1234, %1130
  %1241 = fmul fast float %1235, %1131
  %1242 = fmul fast float %1236, %1132
  %1243 = fadd fast float %1240, %1237
  %1244 = fadd fast float %1241, %1238
  %1245 = fadd fast float %1239, %1242
  %1246 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1247 = extractvalue %dx.types.CBufRet.i32 %1246, 3
  %1248 = and i32 %1247, 3
  %1249 = icmp ne i32 %1248, 0
  %1250 = and i32 %1247, 4
  %1251 = icmp ne i32 %1250, 0
  %1252 = and i1 %1249, %1251
  %1253 = and i1 %105, %1252
  br i1 %1253, label %1254, label %1260

; <label>:1254                                    ; preds = %1221
  %1255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1256 = extractvalue %dx.types.CBufRet.f32 %1255, 1
  %1257 = fadd fast float %1231, -1.000000e+00
  %1258 = fmul fast float %1256, %1257
  %1259 = fadd fast float %1258, 1.000000e+00
  br label %1260

; <label>:1260                                    ; preds = %1254, %1221
  %1261 = phi float [ %1259, %1254 ], [ %1231, %1221 ]
  %1262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1263 = extractvalue %dx.types.CBufRet.f32 %1262, 0
  br i1 %105, label %1264, label %1285

; <label>:1264                                    ; preds = %1260
  %1265 = fadd fast float %1243, %1244
  %1266 = fmul fast float %1263, %1265
  %1267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1268 = extractvalue %dx.types.CBufRet.f32 %1267, 3
  %1269 = extractvalue %dx.types.CBufRet.f32 %690, 1
  %1270 = fsub fast float %693, %1269
  %1271 = extractvalue %dx.types.CBufRet.f32 %690, 2
  %1272 = fmul fast float %1270, %1271
  %1273 = call float @dx.op.unary.f32(i32 7, float %1272)  ; Saturate(value)
  %1274 = fsub fast float %1273, %1268
  %1275 = fmul fast float %1274, %1261
  %1276 = fadd fast float %1275, %1268
  %1277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1278 = extractvalue %dx.types.CBufRet.f32 %1277, 0
  %1279 = fsub fast float %1276, %1278
  %1280 = fmul fast float %1279, 1.000000e+01
  %1281 = call float @dx.op.unary.f32(i32 7, float %1280)  ; Saturate(value)
  %1282 = fmul fast float %1281, %686
  %1283 = fsub fast float %686, %1282
  %1284 = fmul fast float %1283, %1276
  br label %1294

; <label>:1285                                    ; preds = %1260
  %1286 = fmul fast float %1263, %1243
  %1287 = fmul fast float %1263, %1244
  %1288 = fmul fast float %1263, %1245
  %1289 = call float @dx.op.binary.f32(i32 35, float %1287, float %1288)  ; FMax(a,b)
  %1290 = call float @dx.op.binary.f32(i32 35, float %1286, float %1289)  ; FMax(a,b)
  %1291 = call float @dx.op.binary.f32(i32 35, float %1290, float %686)  ; FMax(a,b)
  %1292 = fcmp fast ugt float %1291, 0x3F10000000000000
  br i1 %1292, label %1294, label %1293

; <label>:1293                                    ; preds = %1285
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1294

; <label>:1294                                    ; preds = %1293, %1285, %1264
  %1295 = phi float [ %1266, %1264 ], [ %1286, %1293 ], [ %1286, %1285 ]
  %1296 = phi float [ %1284, %1264 ], [ %1287, %1293 ], [ %1287, %1285 ]
  %1297 = phi float [ %1283, %1264 ], [ %1288, %1293 ], [ %1288, %1285 ]
  %1298 = phi float [ %1283, %1264 ], [ %686, %1293 ], [ %686, %1285 ]
  %1299 = fadd fast float %511, 0x3FE3C6EF40000000
  %1300 = call float @dx.op.unary.f32(i32 22, float %1299)  ; Frc(value)
  %1301 = call float @dx.op.unary.f32(i32 23, float %1295)  ; Log(value)
  %1302 = fadd fast float %1301, -7.000000e+00
  %1303 = call float @dx.op.unary.f32(i32 21, float %1302)  ; Exp(value)
  %1304 = fmul fast float %1300, 2.000000e+00
  %1305 = fadd fast float %1304, -1.000000e+00
  %1306 = fmul fast float %1303, %1305
  %1307 = fcmp fast ogt float %1295, 0.000000e+00
  %1308 = select i1 %1307, float %1306, float 0.000000e+00
  %1309 = fadd fast float %1308, %1295
  %1310 = fadd fast float %511, 0x3FF3C6EF40000000
  %1311 = call float @dx.op.unary.f32(i32 22, float %1310)  ; Frc(value)
  %1312 = call float @dx.op.unary.f32(i32 23, float %1296)  ; Log(value)
  %1313 = fadd fast float %1312, -7.000000e+00
  %1314 = call float @dx.op.unary.f32(i32 21, float %1313)  ; Exp(value)
  %1315 = fmul fast float %1311, 2.000000e+00
  %1316 = fadd fast float %1315, -1.000000e+00
  %1317 = fmul fast float %1314, %1316
  %1318 = fcmp fast ogt float %1296, 0.000000e+00
  %1319 = select i1 %1318, float %1317, float 0.000000e+00
  %1320 = fadd fast float %1319, %1296
  %1321 = fadd fast float %511, 0x3FFDAA66E0000000
  %1322 = call float @dx.op.unary.f32(i32 22, float %1321)  ; Frc(value)
  %1323 = call float @dx.op.unary.f32(i32 23, float %1297)  ; Log(value)
  %1324 = fadd fast float %1323, -6.000000e+00
  %1325 = call float @dx.op.unary.f32(i32 21, float %1324)  ; Exp(value)
  %1326 = fmul fast float %1322, 2.000000e+00
  %1327 = fadd fast float %1326, -1.000000e+00
  %1328 = fmul fast float %1325, %1327
  %1329 = fcmp fast ogt float %1297, 0.000000e+00
  %1330 = select i1 %1329, float %1328, float 0.000000e+00
  %1331 = fadd fast float %1330, %1297
  %1332 = select i1 %105, float %1296, float %1320
  %1333 = select i1 %105, float %1297, float %1331
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1334 = call float @dx.op.binary.f32(i32 36, float %1309, float 3.225500e+04)  ; FMin(a,b)
  %1335 = call float @dx.op.binary.f32(i32 36, float %1332, float 3.225500e+04)  ; FMin(a,b)
  %1336 = call float @dx.op.binary.f32(i32 36, float %1333, float 3.225500e+04)  ; FMin(a,b)
  %1337 = call float @dx.op.binary.f32(i32 36, float %1298, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1334)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1335)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1336)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1337)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1298)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1298)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1298)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1298)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float, float) #2

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
!dx.viewIdState = !{!34}
!dx.entryPoints = !{!35}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !26, !29}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !17, !18, !19, !20, !22, !23, !24, !25}
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
!17 = !{i32 9, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!18 = !{i32 10, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!19 = !{i32 11, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!20 = !{i32 12, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !21}
!21 = !{i32 0, i32 14}
!22 = !{i32 13, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!23 = !{i32 14, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!24 = !{i32 15, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 7, i32 0, !7}
!25 = !{i32 16, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!26 = !{!27, !28}
!27 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!28 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!29 = !{!30, !31, !32, !33}
!30 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!31 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!32 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!33 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!34 = !{[33 x i32] [i32 31, i32 8, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 254, i32 255, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255, i32 255, i32 0, i32 255, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 255]}
!35 = !{void ()* @ps_main, !"ps_main", !36, !4, !59}
!36 = !{!37, !55, null}
!37 = !{!38, !41, !42, !44, !47, !49, !51, !52, !54}
!38 = !{i32 0, !"SV_Position", i8 9, i8 3, !39, i8 4, i32 1, i8 4, i32 0, i8 0, !40}
!39 = !{i32 0}
!40 = !{i32 3, i32 15}
!41 = !{i32 1, !"COLOR", i8 9, i8 0, !39, i8 2, i32 1, i8 4, i32 1, i8 0, !40}
!42 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !39, i8 2, i32 1, i8 2, i32 2, i8 0, !43}
!43 = !{i32 3, i32 3}
!44 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !45, i8 2, i32 1, i8 4, i32 3, i8 0, !46}
!45 = !{i32 3}
!46 = !{i32 3, i32 7}
!47 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !48, i8 3, i32 1, i8 2, i32 4, i8 0, !43}
!48 = !{i32 5}
!49 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !50, i8 2, i32 1, i8 4, i32 5, i8 0, null}
!50 = !{i32 8}
!51 = !{i32 6, !"QUAD_POSITION", i8 9, i8 0, !39, i8 1, i32 1, i8 4, i32 6, i8 0, !40}
!52 = !{i32 7, !"COLOR", i8 5, i8 0, !45, i8 1, i32 1, i8 3, i32 7, i8 0, !53}
!53 = !{i32 3, i32 5}
!54 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !39, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!55 = !{!56, !57}
!56 = !{i32 0, !"SV_Target", i8 9, i8 16, !39, i8 0, i32 1, i8 4, i32 0, i8 0, !40}
!57 = !{i32 1, !"SV_Target", i8 9, i8 16, !58, i8 0, i32 1, i8 4, i32 1, i8 0, !40}
!58 = !{i32 1}
!59 = !{i32 0, i64 24}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 1}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 1}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 1}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 1}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 1}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 1}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 1}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 1}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 1}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 1}

