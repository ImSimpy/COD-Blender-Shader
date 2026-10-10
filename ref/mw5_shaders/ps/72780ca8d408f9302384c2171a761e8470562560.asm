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
; shader hash: 1d7741b7c078abc5ce682e537fef9cb7
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
;   output 1 depends on inputs: { 0, 1, 2, 3, 5, 7, 8, 9, 12, 13, 14, 16, 17, 24, 25, 26, 27, 28, 30 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 6, 7, 8, 9, 12, 13, 14, 16, 17, 24, 25, 26, 27, 28, 30 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 16, 17, 24, 25, 26, 27, 28, 30 }
;   output 4 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 16, 17, 24, 25, 26, 27, 28, 30 }
;   output 5 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 16, 17, 24, 25, 26, 27, 28, 30 }
;   output 6 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 16, 17, 24, 25, 26, 27, 28, 30 }
;   output 7 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 16, 17, 24, 25, 26, 27, 28, 30 }
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
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %45 = extractvalue %dx.types.CBufRet.f32 %44, 0
  %46 = fmul fast float %45, %39
  %47 = fmul fast float %45, %40
  %48 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %49 = extractvalue %dx.types.CBufRet.f32 %48, 2
  %50 = extractvalue %dx.types.CBufRet.f32 %48, 3
  %51 = fmul fast float %46, 2.000000e+00
  %52 = fmul fast float %51, %49
  %53 = fmul fast float %47, 2.000000e+00
  %54 = fmul fast float %53, %50
  %55 = fsub fast float 1.000000e+00, %52
  %56 = fsub fast float 1.000000e+00, %54
  %57 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %58 = extractvalue %dx.types.CBufRet.f32 %57, 0
  %59 = extractvalue %dx.types.CBufRet.f32 %57, 1
  %60 = extractvalue %dx.types.CBufRet.f32 %57, 2
  %61 = fmul fast float %55, %58
  %62 = fmul fast float %55, %59
  %63 = fmul fast float %55, %60
  %64 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %65 = extractvalue %dx.types.CBufRet.f32 %64, 0
  %66 = extractvalue %dx.types.CBufRet.f32 %64, 1
  %67 = extractvalue %dx.types.CBufRet.f32 %64, 2
  %68 = fmul fast float %56, %65
  %69 = fmul fast float %56, %66
  %70 = fmul fast float %56, %67
  %71 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %72 = extractvalue %dx.types.CBufRet.f32 %71, 0
  %73 = extractvalue %dx.types.CBufRet.f32 %71, 1
  %74 = extractvalue %dx.types.CBufRet.f32 %71, 2
  %75 = fadd fast float %68, %72
  %76 = fadd fast float %75, %61
  %77 = fadd fast float %69, %73
  %78 = fadd fast float %77, %62
  %79 = fadd fast float %70, %74
  %80 = fadd fast float %79, %63
  %81 = fmul fast float %76, %42
  %82 = fmul fast float %78, %42
  %83 = fmul fast float %80, %42
  %84 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %85 = extractvalue %dx.types.CBufRet.i32 %84, 3
  %86 = and i32 %85, 3
  %87 = icmp ne i32 %86, 0
  %88 = and i32 %85, 4
  %89 = icmp ne i32 %88, 0
  %90 = and i1 %87, %89
  br i1 %90, label %91, label %100

; <label>:91                                      ; preds = %0
  %92 = fmul fast float %50, %47
  %93 = fmul fast float %49, %46
  %94 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %18, float %93, float %92, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %95 = extractvalue %dx.types.ResRet.f32 %94, 0
  %96 = fsub fast float 1.000000e+00, %95
  %97 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %98 = extractvalue %dx.types.CBufRet.f32 %97, 0
  %99 = fcmp fast olt float %96, %98
  br label %103

; <label>:100                                     ; preds = %0
  %101 = icmp eq i32 %88, 0
  %102 = and i1 %87, %101
  br label %103

; <label>:103                                     ; preds = %100, %91
  %104 = phi i1 [ %99, %91 ], [ %102, %100 ]
  %105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %106 = extractvalue %dx.types.CBufRet.f32 %105, 2
  %107 = extractvalue %dx.types.CBufRet.f32 %105, 3
  %108 = fmul fast float %106, %46
  %109 = fmul fast float %107, %47
  %110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %111 = extractvalue %dx.types.ResRet.i32 %110, 0
  %112 = and i32 %111, 114688
  %113 = icmp ne i32 %112, 0
  %114 = select i1 %113, float %108, float 0.000000e+00
  %115 = select i1 %113, float %109, float 0.000000e+00
  %116 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %19, float %114, float %115, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %117 = extractvalue %dx.types.ResRet.f32 %116, 0
  %118 = fmul fast float %117, 2.550000e+02
  %119 = fptoui float %118 to i32
  %120 = select i1 %113, i32 %119, i32 0
  %121 = mul i32 %22, 208
  %122 = add i32 %121, 188
  %123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %122, i32 undef)  ; BufferLoad(srv,index,wot)
  %124 = extractvalue %dx.types.ResRet.i32 %123, 0
  %125 = and i32 %85, 114688
  %126 = and i32 %85, 8
  %127 = icmp ne i32 %126, 0
  %128 = or i1 %104, %127
  %129 = select i1 %128, i32 %125, i32 16384
  %130 = and i32 %129, %124
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %133

; <label>:132                                     ; preds = %103
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %133

; <label>:133                                     ; preds = %132, %103
  %134 = and i32 %124, 512
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %160, label %136

; <label>:136                                     ; preds = %133
  %137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.f32 %137, 2
  %139 = extractvalue %dx.types.CBufRet.f32 %137, 3
  %140 = fmul fast float %138, %46
  %141 = fmul fast float %139, %47
  %142 = extractvalue %dx.types.CBufRet.f32 %137, 0
  %143 = extractvalue %dx.types.CBufRet.f32 %137, 1
  %144 = fdiv fast float %142, %143
  %145 = fcmp fast ogt float %144, 0x3FFC71C720000000
  br i1 %145, label %146, label %152

; <label>:146                                     ; preds = %136
  %147 = fdiv fast float 0x3FFC71C720000000, %144
  %148 = fmul fast float %147, %141
  %149 = fsub fast float 1.000000e+00, %147
  %150 = fmul fast float %149, 5.000000e-01
  %151 = fadd fast float %150, %148
  br label %160

; <label>:152                                     ; preds = %136
  %153 = fcmp fast olt float %144, 0x3FFC71C720000000
  br i1 %153, label %154, label %160

; <label>:154                                     ; preds = %152
  %155 = fmul fast float %140, 5.625000e-01
  %156 = fmul fast float %155, %144
  %157 = fmul fast float %144, 2.812500e-01
  %158 = fsub fast float 5.000000e-01, %157
  %159 = fadd fast float %158, %156
  br label %160

; <label>:160                                     ; preds = %154, %152, %146, %133
  %161 = phi float [ %33, %133 ], [ %140, %146 ], [ %159, %154 ], [ %140, %152 ]
  %162 = phi float [ %34, %133 ], [ %151, %146 ], [ %141, %154 ], [ %141, %152 ]
  %163 = add i32 %23, 72
  %164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %163, i32 undef)  ; BufferLoad(srv,index,wot)
  %165 = extractvalue %dx.types.ResRet.i32 %164, 0
  %166 = extractvalue %dx.types.ResRet.i32 %164, 1
  %167 = bitcast i32 %165 to float
  %168 = bitcast i32 %166 to float
  %169 = fmul fast float %167, %33
  %170 = fmul fast float %168, %34
  %171 = call float @dx.op.unary.f32(i32 22, float %169)  ; Frc(value)
  %172 = call float @dx.op.unary.f32(i32 22, float %170)  ; Frc(value)
  %173 = and i32 %124, 16
  %174 = icmp ne i32 %173, 0
  %175 = select i1 %174, float 1.000000e+00, float %38
  %176 = add i32 %23, 104
  %177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %176, i32 undef)  ; BufferLoad(srv,index,wot)
  %178 = extractvalue %dx.types.ResRet.i32 %177, 0
  %179 = add i32 %178, 0
  %180 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %179, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %182 = extractvalue %dx.types.CBufRet.f32 %181, 2
  %183 = call %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32 61, %dx.types.Handle %180, %dx.types.Handle %43, float %161, float %162, float undef, float undef, i32 0, i32 0, i32 undef, float %182, float undef)  ; SampleBias(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,bias,clamp)
  %184 = extractvalue %dx.types.ResRet.f32 %183, 0
  %185 = fmul fast float %184, %175
  %186 = icmp eq i32 %173, 0
  br i1 %186, label %206, label %187, !dx.controlflow.hints !60

; <label>:187                                     ; preds = %160
  %188 = add i32 %121, 64
  %189 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %188, i32 undef)  ; BufferLoad(srv,index,wot)
  %190 = extractvalue %dx.types.ResRet.f32 %189, 0
  %191 = fadd fast float %190, 1.000000e+00
  %192 = fmul fast float %191, %38
  %193 = fsub fast float %192, %190
  %194 = fsub fast float %191, %193
  %195 = call float @dx.op.unary.f32(i32 7, float %194)  ; Saturate(value)
  %196 = fsub fast float 1.000000e+00, %192
  %197 = call float @dx.op.unary.f32(i32 7, float %196)  ; Saturate(value)
  %198 = fsub fast float %195, %197
  %199 = fsub fast float %185, %197
  %200 = fdiv fast float %199, %198
  %201 = call float @dx.op.unary.f32(i32 7, float %200)  ; Saturate(value)
  %202 = fmul fast float %201, 2.000000e+00
  %203 = fsub fast float 3.000000e+00, %202
  %204 = fmul fast float %201, %201
  %205 = fmul fast float %204, %203
  br label %206

; <label>:206                                     ; preds = %187, %160
  %207 = phi float [ %205, %187 ], [ %185, %160 ]
  %208 = fcmp fast ogt float %207, 0.000000e+00
  br i1 %208, label %210, label %209

; <label>:209                                     ; preds = %206
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %210

; <label>:210                                     ; preds = %209, %206
  %211 = call float @dx.op.unary.f32(i32 7, float %207)  ; Saturate(value)
  %212 = fmul fast float %46, 5.000000e-01
  %213 = fmul fast float %47, 5.000000e-01
  %214 = fptosi float %212 to i32
  %215 = fptosi float %213 to i32
  %216 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %214, i32 %215, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %217 = extractvalue %dx.types.ResRet.i32 %216, 0
  %218 = lshr i32 %217, 18
  %219 = uitofp i32 %218 to float
  %220 = fmul fast float %219, 0x3F4C00EBA0000000
  %221 = call float @dx.op.unary.f32(i32 21, float %220)  ; Exp(value)
  %222 = fadd fast float %221, -1.000000e+00
  %223 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %9, i32 0)  ; GetDimensions(handle,mipLevel)
  %224 = extractvalue %dx.types.Dimensions %223, 0
  %225 = sitofp i32 %224 to float
  %226 = extractvalue %dx.types.Dimensions %223, 1
  %227 = sitofp i32 %226 to float
  %228 = fcmp fast oge float %212, %225
  %229 = fcmp fast oge float %213, %227
  %230 = or i1 %228, %229
  %231 = select i1 %230, float 0x4197782600000000, float %222
  %232 = fsub fast float %231, %42
  %233 = fcmp fast ogt float %232, 0.000000e+00
  %234 = and i32 %120, -2
  %235 = icmp eq i32 %234, 2
  %236 = and i1 %235, %233
  %237 = xor i1 %233, true
  %238 = icmp eq i32 %120, 1
  %239 = and i1 %238, %237
  %240 = or i1 %236, %239
  %241 = and i32 %124, 262144
  %242 = icmp ne i32 %241, 0
  %243 = and i1 %242, %240
  %244 = xor i1 %240, true
  %245 = and i32 %124, 131072
  %246 = icmp ne i32 %245, 0
  %247 = and i1 %246, %244
  %248 = or i1 %243, %247
  br i1 %248, label %249, label %250

; <label>:249                                     ; preds = %210
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %250

; <label>:250                                     ; preds = %249, %210
  %251 = and i32 %124, 32
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %502, label %253, !dx.controlflow.hints !61

; <label>:253                                     ; preds = %250
  %254 = add i32 %121, 80
  %255 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %254, i32 undef)  ; BufferLoad(srv,index,wot)
  %256 = extractvalue %dx.types.ResRet.f32 %255, 0
  %257 = extractvalue %dx.types.ResRet.f32 %255, 1
  %258 = extractvalue %dx.types.ResRet.f32 %255, 2
  %259 = extractvalue %dx.types.ResRet.f32 %255, 3
  %260 = add i32 %121, 96
  %261 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %260, i32 undef)  ; BufferLoad(srv,index,wot)
  %262 = extractvalue %dx.types.ResRet.f32 %261, 0
  %263 = extractvalue %dx.types.ResRet.f32 %261, 1
  %264 = extractvalue %dx.types.ResRet.f32 %261, 2
  %265 = add i32 %121, 112
  %266 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %265, i32 undef)  ; BufferLoad(srv,index,wot)
  %267 = extractvalue %dx.types.ResRet.f32 %266, 0
  %268 = extractvalue %dx.types.ResRet.f32 %266, 1
  %269 = extractvalue %dx.types.ResRet.f32 %266, 2
  %270 = extractvalue %dx.types.ResRet.f32 %266, 3
  %271 = add i32 %121, 128
  %272 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %271, i32 undef)  ; BufferLoad(srv,index,wot)
  %273 = extractvalue %dx.types.ResRet.f32 %272, 0
  %274 = extractvalue %dx.types.ResRet.f32 %272, 1
  %275 = extractvalue %dx.types.ResRet.f32 %272, 2
  %276 = extractvalue %dx.types.ResRet.f32 %272, 3
  %277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %122, i32 undef)  ; BufferLoad(srv,index,wot)
  %278 = extractvalue %dx.types.ResRet.i32 %277, 0
  %279 = and i32 %278, 4096
  %280 = icmp ne i32 %279, 0
  %281 = fcmp fast une float %264, 0.000000e+00
  %282 = and i32 %278, 64
  %283 = icmp ne i32 %282, 0
  %284 = and i32 %278, 128
  %285 = icmp eq i32 %284, 0
  %286 = and i32 %278, 2048
  %287 = icmp eq i32 %286, 0
  %288 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %12, i32 0)  ; GetDimensions(handle,mipLevel)
  %289 = extractvalue %dx.types.Dimensions %288, 0
  %290 = sitofp i32 %289 to float
  %291 = extractvalue %dx.types.Dimensions %288, 1
  %292 = sitofp i32 %291 to float
  %293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %294 = extractvalue %dx.types.CBufRet.f32 %293, 2
  %295 = extractvalue %dx.types.CBufRet.f32 %293, 3
  %296 = fmul fast float %294, %46
  %297 = fmul fast float %295, %47
  %298 = fmul fast float %296, %290
  %299 = fmul fast float %297, %292
  %300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %301 = extractvalue %dx.types.CBufRet.f32 %300, 1
  %302 = fsub fast float -0.000000e+00, %301
  %303 = fptoui float %302 to i32
  %304 = fptoui float %298 to i32
  %305 = fptoui float %299 to i32
  %306 = and i32 %303, 31
  %307 = lshr i32 %304, %306
  %308 = lshr i32 %305, %306
  %309 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 %303, i32 %307, i32 %308, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %310 = extractvalue %dx.types.ResRet.f32 %309, 0
  %311 = fcmp fast ogt float %310, -1.000000e+00
  %312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %313 = extractvalue %dx.types.CBufRet.f32 %312, 1
  %314 = select i1 %311, float %313, float 1.000000e+00
  %315 = fadd fast float %310, 1.000000e+00
  %316 = fmul fast float %314, %315
  %317 = call float @dx.op.unary.f32(i32 6, float %316)  ; FAbs(value)
  %318 = extractvalue %dx.types.CBufRet.f32 %312, 3
  %319 = fcmp fast oge float %317, %318
  %320 = select i1 %319, float 0x4197782600000000, float %317
  br i1 %287, label %398, label %321, !dx.controlflow.hints !62

; <label>:321                                     ; preds = %253
  %322 = fmul fast float %51, %294
  %323 = fmul fast float %53, %295
  %324 = fsub fast float 1.000000e+00, %322
  %325 = fsub fast float 1.000000e+00, %323
  %326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %327 = extractvalue %dx.types.CBufRet.f32 %326, 0
  %328 = extractvalue %dx.types.CBufRet.f32 %326, 1
  %329 = extractvalue %dx.types.CBufRet.f32 %326, 2
  %330 = fmul fast float %324, %327
  %331 = fmul fast float %324, %328
  %332 = fmul fast float %324, %329
  %333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %334 = extractvalue %dx.types.CBufRet.f32 %333, 0
  %335 = extractvalue %dx.types.CBufRet.f32 %333, 1
  %336 = extractvalue %dx.types.CBufRet.f32 %333, 2
  %337 = fmul fast float %325, %334
  %338 = fmul fast float %325, %335
  %339 = fmul fast float %325, %336
  %340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %341 = extractvalue %dx.types.CBufRet.f32 %340, 0
  %342 = extractvalue %dx.types.CBufRet.f32 %340, 1
  %343 = extractvalue %dx.types.CBufRet.f32 %340, 2
  %344 = fadd fast float %337, %341
  %345 = fadd fast float %344, %330
  %346 = fadd fast float %338, %342
  %347 = fadd fast float %346, %331
  %348 = fadd fast float %339, %343
  %349 = fadd fast float %348, %332
  %350 = fmul fast float %345, %320
  %351 = fmul fast float %347, %320
  %352 = fmul fast float %349, %320
  %353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %354 = extractvalue %dx.types.CBufRet.f32 %353, 0
  %355 = extractvalue %dx.types.CBufRet.f32 %353, 1
  %356 = extractvalue %dx.types.CBufRet.f32 %353, 2
  %357 = fsub fast float %354, %24
  %358 = fadd fast float %357, %350
  %359 = fsub fast float %355, %25
  %360 = fadd fast float %359, %351
  %361 = fsub fast float %356, %26
  %362 = fadd fast float %361, %352
  %363 = fmul fast float %27, %27
  %364 = call float @dx.op.dot3.f32(i32 55, float %358, float %360, float %362, float %358, float %360, float %362)  ; Dot3(ax,ay,az,bx,by,bz)
  %365 = fsub fast float %363, %364
  %366 = fmul fast float %263, %363
  %367 = fmul fast float %262, %363
  %368 = fcmp fast olt float %365, %366
  %369 = fcmp fast ogt float %365, %367
  %370 = or i1 %368, %369
  %371 = select i1 %370, float 0.000000e+00, float %365
  %372 = fsub fast float %262, %263
  %373 = fmul fast float %372, %363
  %374 = fsub fast float %371, %366
  %375 = fdiv fast float %374, %373
  %376 = call float @dx.op.unary.f32(i32 7, float %375)  ; Saturate(value)
  %377 = fmul fast float %376, 2.000000e+00
  %378 = fsub fast float 3.000000e+00, %377
  %379 = fmul fast float %376, %376
  %380 = fmul fast float %379, %378
  %381 = fmul fast float %267, %35
  %382 = fmul fast float %268, %36
  %383 = fmul fast float %269, %37
  %384 = fsub fast float %381, %273
  %385 = fsub fast float %382, %274
  %386 = fsub fast float %383, %275
  %387 = fsub fast float %270, %276
  %388 = fmul fast float %380, %384
  %389 = fmul fast float %380, %385
  %390 = fmul fast float %380, %386
  %391 = fmul fast float %380, %387
  %392 = fadd fast float %388, %273
  %393 = fadd fast float %389, %274
  %394 = fadd fast float %390, %275
  %395 = fadd fast float %391, %276
  %396 = fmul fast float %256, %256
  %397 = fmul fast float %396, %371
  br label %493

; <label>:398                                     ; preds = %253
  %399 = and i32 %278, 256
  %400 = icmp eq i32 %399, 0
  %401 = fsub fast float %320, %42
  br i1 %400, label %450, label %402

; <label>:402                                     ; preds = %398
  %403 = fadd fast float %262, %42
  %404 = fcmp fast olt float %320, %42
  %405 = fcmp fast ogt float %320, %403
  %406 = or i1 %404, %405
  %407 = select i1 %406, float 0.000000e+00, float %401
  %408 = call float @dx.op.unary.f32(i32 83, float %320)  ; DerivCoarseX(value)
  %409 = call float @dx.op.unary.f32(i32 84, float %320)  ; DerivCoarseY(value)
  %410 = fmul fast float %408, %408
  %411 = fmul fast float %409, %409
  %412 = fadd fast float %411, %410
  %413 = call float @dx.op.unary.f32(i32 24, float %412)  ; Sqrt(value)
  %414 = extractvalue %dx.types.CBufRet.f32 %300, 2
  %415 = fmul fast float %414, %413
  %416 = call float @dx.op.unary.f32(i32 7, float %415)  ; Saturate(value)
  %417 = fmul fast float %416, %263
  %418 = fdiv fast float %401, %417
  %419 = call float @dx.op.unary.f32(i32 7, float %418)  ; Saturate(value)
  %420 = fmul fast float %419, 2.000000e+00
  %421 = fsub fast float 3.000000e+00, %420
  %422 = fmul fast float %419, %419
  %423 = fmul fast float %422, %421
  %424 = fsub fast float %320, %403
  %425 = fadd fast float %424, %417
  %426 = fdiv fast float %425, %417
  %427 = call float @dx.op.unary.f32(i32 7, float %426)  ; Saturate(value)
  %428 = fmul fast float %427, 2.000000e+00
  %429 = fsub fast float 3.000000e+00, %428
  %430 = fmul fast float %427, %427
  %431 = fmul fast float %430, %429
  %432 = fsub fast float %423, %431
  %433 = fmul fast float %267, %35
  %434 = fmul fast float %268, %36
  %435 = fmul fast float %269, %37
  %436 = fsub fast float %433, %273
  %437 = fsub fast float %434, %274
  %438 = fsub fast float %435, %275
  %439 = fsub fast float %270, %276
  %440 = fmul fast float %432, %436
  %441 = fmul fast float %432, %437
  %442 = fmul fast float %432, %438
  %443 = fmul fast float %432, %439
  %444 = fadd fast float %440, %273
  %445 = fadd fast float %441, %274
  %446 = fadd fast float %442, %275
  %447 = fadd fast float %443, %276
  %448 = fmul fast float %407, %256
  %449 = call float @dx.op.unary.f32(i32 6, float %448)  ; FAbs(value)
  br label %493

; <label>:450                                     ; preds = %398
  br i1 %281, label %451, label %464

; <label>:451                                     ; preds = %450
  %452 = fdiv fast float 5.000000e+01, %27
  %453 = select i1 %283, float %452, float 1.000000e+00
  %454 = fmul fast float %453, %256
  %455 = fmul fast float %171, 2.000000e+00
  %456 = fmul fast float %172, 2.000000e+00
  %457 = fadd fast float %455, -1.000000e+00
  %458 = fadd fast float %456, -1.000000e+00
  %459 = call float @dx.op.dot2.f32(i32 54, float %457, float %458, float %457, float %458)  ; Dot2(ax,ay,bx,by)
  %460 = fmul fast float %264, %27
  %461 = fmul fast float %460, %459
  %462 = fsub fast float %401, %461
  %463 = fmul fast float %454, %462
  br label %493

; <label>:464                                     ; preds = %450
  br i1 %285, label %485, label %465

; <label>:465                                     ; preds = %464
  %466 = fmul fast float %27, 0x3F947AE140000000
  %467 = select i1 %283, float %466, float 1.000000e+00
  %468 = fdiv fast float 1.000000e+00, %467
  %469 = fmul fast float %467, %257
  %470 = fmul fast float %467, %258
  %471 = fmul fast float %468, %259
  %472 = call float @dx.op.unary.f32(i32 6, float %401)  ; FAbs(value)
  %473 = fcmp fast olt float %472, %469
  br i1 %473, label %474, label %478, !dx.controlflow.hints !63

; <label>:474                                     ; preds = %465
  %475 = fmul fast float %468, %256
  %476 = fmul fast float %475, %472
  %477 = call float @dx.op.unary.f32(i32 6, float %476)  ; FAbs(value)
  br label %493

; <label>:478                                     ; preds = %465
  %479 = fcmp fast ogt float %472, %470
  br i1 %479, label %480, label %493

; <label>:480                                     ; preds = %478
  %481 = fsub fast float %472, %470
  %482 = fmul fast float %471, %481
  %483 = call float @dx.op.unary.f32(i32 6, float %482)  ; FAbs(value)
  %484 = fsub fast float 1.000000e+00, %483
  br label %493

; <label>:485                                     ; preds = %464
  %486 = fdiv fast float 5.000000e+01, %27
  %487 = select i1 %283, float %486, float 1.000000e+00
  %488 = fmul fast float %487, %256
  %489 = call float @dx.op.unary.f32(i32 6, float %232)  ; FAbs(value)
  %490 = select i1 %280, float %489, float 0x47EFFFFFE0000000
  %491 = call float @dx.op.binary.f32(i32 36, float %401, float %490)  ; FMin(a,b)
  %492 = fmul fast float %488, %491
  br label %493

; <label>:493                                     ; preds = %485, %480, %478, %474, %451, %402, %321
  %494 = phi float [ %397, %321 ], [ %449, %402 ], [ %463, %451 ], [ %492, %485 ], [ %477, %474 ], [ %484, %480 ], [ %472, %478 ]
  %495 = phi float [ %392, %321 ], [ %444, %402 ], [ %35, %451 ], [ %35, %485 ], [ %35, %474 ], [ %35, %480 ], [ %35, %478 ]
  %496 = phi float [ %393, %321 ], [ %445, %402 ], [ %36, %451 ], [ %36, %485 ], [ %36, %474 ], [ %36, %480 ], [ %36, %478 ]
  %497 = phi float [ %394, %321 ], [ %446, %402 ], [ %37, %451 ], [ %37, %485 ], [ %37, %474 ], [ %37, %480 ], [ %37, %478 ]
  %498 = phi float [ %395, %321 ], [ %447, %402 ], [ 1.000000e+00, %451 ], [ 1.000000e+00, %485 ], [ 1.000000e+00, %474 ], [ 1.000000e+00, %480 ], [ 1.000000e+00, %478 ]
  %499 = call float @dx.op.unary.f32(i32 7, float %494)  ; Saturate(value)
  %500 = fmul fast float %498, %211
  %501 = fmul fast float %500, %499
  br label %502

; <label>:502                                     ; preds = %493, %250
  %503 = phi float [ %495, %493 ], [ %35, %250 ]
  %504 = phi float [ %496, %493 ], [ %36, %250 ]
  %505 = phi float [ %497, %493 ], [ %37, %250 ]
  %506 = phi float [ %501, %493 ], [ %211, %250 ]
  %507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %508 = extractvalue %dx.types.CBufRet.f32 %507, 2
  %509 = fptosi float %42 to i32
  %510 = sitofp i32 %509 to float
  %511 = fadd fast float %508, %510
  %512 = fmul fast float %511, 0x3FE3C6EF40000000
  %513 = frem fast float %46, 2.560000e+02
  %514 = frem fast float %47, 2.560000e+02
  %515 = fptoui float %513 to i32
  %516 = fptoui float %514 to i32
  %517 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %515, i32 %516, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %518 = extractvalue %dx.types.ResRet.f32 %517, 0
  %519 = fadd fast float %518, %512
  %520 = call float @dx.op.unary.f32(i32 22, float %519)  ; Frc(value)
  %521 = and i32 %124, 1
  %522 = icmp eq i32 %521, 0
  br i1 %522, label %579, label %523, !dx.controlflow.hints !64

; <label>:523                                     ; preds = %502
  %524 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %121, i32 undef)  ; BufferLoad(srv,index,wot)
  %525 = extractvalue %dx.types.ResRet.f32 %524, 2
  %526 = extractvalue %dx.types.ResRet.f32 %524, 3
  %527 = add i32 %121, 16
  %528 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %527, i32 undef)  ; BufferLoad(srv,index,wot)
  %529 = extractvalue %dx.types.ResRet.f32 %528, 0
  %530 = extractvalue %dx.types.ResRet.f32 %528, 1
  %531 = extractvalue %dx.types.ResRet.f32 %528, 2
  %532 = add i32 %121, 32
  %533 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %532, i32 undef)  ; BufferLoad(srv,index,wot)
  %534 = extractvalue %dx.types.ResRet.f32 %533, 0
  %535 = extractvalue %dx.types.ResRet.f32 %533, 1
  %536 = extractvalue %dx.types.ResRet.f32 %533, 2
  %537 = and i32 %124, 2
  %538 = icmp eq i32 %537, 0
  %539 = call float @dx.op.dot3.f32(i32 55, float %30, float %31, float %32, float %30, float %31, float %32)  ; Dot3(ax,ay,az,bx,by,bz)
  %540 = call float @dx.op.unary.f32(i32 25, float %539)  ; Rsqrt(value)
  %541 = fmul fast float %540, %30
  %542 = fmul fast float %540, %31
  %543 = fmul fast float %540, %32
  %544 = call float @dx.op.dot3.f32(i32 55, float %81, float %82, float %83, float %81, float %82, float %83)  ; Dot3(ax,ay,az,bx,by,bz)
  %545 = call float @dx.op.unary.f32(i32 25, float %544)  ; Rsqrt(value)
  %546 = fmul fast float %545, %81
  %547 = fmul fast float %545, %82
  %548 = fmul fast float %545, %83
  %549 = call float @dx.op.dot3.f32(i32 55, float %546, float %547, float %548, float %541, float %542, float %543)  ; Dot3(ax,ay,az,bx,by,bz)
  %550 = fmul fast float %549, %549
  %551 = fmul fast float %550, %525
  %552 = fadd fast float %551, %526
  %553 = call float @dx.op.unary.f32(i32 7, float %552)  ; Saturate(value)
  br i1 %538, label %554, label %564, !dx.controlflow.hints !65

; <label>:554                                     ; preds = %523
  %555 = extractvalue %dx.types.ResRet.f32 %524, 1
  %556 = extractvalue %dx.types.ResRet.f32 %524, 0
  %557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %558 = extractvalue %dx.types.CBufRet.f32 %557, 3
  %559 = fmul fast float %558, %544
  %560 = fsub fast float %556, %559
  %561 = fmul fast float %560, %555
  %562 = call float @dx.op.unary.f32(i32 7, float %561)  ; Saturate(value)
  %563 = fmul fast float %562, %553
  br label %564

; <label>:564                                     ; preds = %554, %523
  %565 = phi float [ %563, %554 ], [ %553, %523 ]
  %566 = fsub fast float %529, %534
  %567 = fsub fast float %530, %535
  %568 = fsub fast float %531, %536
  %569 = fmul fast float %565, %566
  %570 = fmul fast float %565, %567
  %571 = fmul fast float %565, %568
  %572 = fadd fast float %569, %534
  %573 = fadd fast float %570, %535
  %574 = fadd fast float %571, %536
  %575 = fmul fast float %572, %503
  %576 = fmul fast float %573, %504
  %577 = fmul fast float %574, %505
  %578 = fmul fast float %565, %506
  br label %579

; <label>:579                                     ; preds = %564, %502
  %580 = phi float [ %575, %564 ], [ %503, %502 ]
  %581 = phi float [ %576, %564 ], [ %504, %502 ]
  %582 = phi float [ %577, %564 ], [ %505, %502 ]
  %583 = phi float [ %578, %564 ], [ %506, %502 ]
  %584 = add i32 %23, 40
  %585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %584, i32 undef)  ; BufferLoad(srv,index,wot)
  %586 = extractvalue %dx.types.ResRet.i32 %585, 0
  %587 = and i32 %586, 255
  %588 = uitofp i32 %587 to float
  %589 = fmul fast float %588, 0x3F70101020000000
  %590 = lshr i32 %586, 8
  %591 = and i32 %590, 255
  %592 = uitofp i32 %591 to float
  %593 = fmul fast float %592, 0x3F70101020000000
  %594 = lshr i32 %586, 16
  %595 = and i32 %594, 255
  %596 = uitofp i32 %595 to float
  %597 = fmul fast float %596, 0x3F70101020000000
  %598 = fmul fast float %589, %589
  %599 = fmul fast float %593, %593
  %600 = fmul fast float %597, %597
  %601 = add i32 %23, 108
  %602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %601, i32 undef)  ; BufferLoad(srv,index,wot)
  %603 = extractvalue %dx.types.ResRet.i32 %602, 0
  %604 = add i32 %603, 0
  %605 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %604, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %606 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %605, %dx.types.Handle %43, float %161, float %162, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %607 = extractvalue %dx.types.ResRet.f32 %606, 0
  %608 = extractvalue %dx.types.ResRet.f32 %606, 1
  %609 = extractvalue %dx.types.ResRet.f32 %606, 2
  %610 = fmul fast float %598, %607
  %611 = fmul fast float %599, %608
  %612 = fmul fast float %600, %609
  %613 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %28, float %29, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %614 = extractvalue %dx.types.ResRet.f32 %613, 0
  %615 = extractvalue %dx.types.ResRet.f32 %613, 1
  %616 = extractvalue %dx.types.ResRet.f32 %613, 2
  %617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %618 = extractvalue %dx.types.CBufRet.f32 %617, 1
  %619 = call float @dx.op.unary.f32(i32 7, float %580)  ; Saturate(value)
  %620 = call float @dx.op.unary.f32(i32 7, float %581)  ; Saturate(value)
  %621 = call float @dx.op.unary.f32(i32 7, float %582)  ; Saturate(value)
  %622 = add i32 %23, 32
  %623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %622, i32 undef)  ; BufferLoad(srv,index,wot)
  %624 = extractvalue %dx.types.ResRet.i32 %623, 0
  %625 = and i32 %624, 255
  %626 = uitofp i32 %625 to float
  %627 = lshr i32 %624, 8
  %628 = and i32 %627, 255
  %629 = uitofp i32 %628 to float
  %630 = fadd fast float %629, %626
  %631 = fmul fast float %630, 0x3F70101020000000
  %632 = call float @dx.op.unary.f32(i32 7, float %631)  ; Saturate(value)
  %633 = and i32 %124, 8192
  %634 = icmp eq i32 %633, 0
  %635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %636 = extractvalue %dx.types.CBufRet.f32 %635, 0
  br i1 %634, label %643, label %637, !dx.controlflow.hints !66

; <label>:637                                     ; preds = %579
  %638 = add i32 %121, 176
  %639 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %638, i32 undef)  ; BufferLoad(srv,index,wot)
  %640 = extractvalue %dx.types.ResRet.f32 %639, 0
  %641 = fcmp fast oge float %640, 0.000000e+00
  %642 = select i1 %641, float %640, float %636
  br label %643

; <label>:643                                     ; preds = %637, %579
  %644 = phi float [ %642, %637 ], [ %636, %579 ]
  %645 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %214, i32 %215, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %646 = extractvalue %dx.types.ResRet.i32 %645, 0
  %647 = lshr i32 %646, 18
  %648 = uitofp i32 %647 to float
  %649 = fmul fast float %648, 0x3F4C00EBA0000000
  %650 = call float @dx.op.unary.f32(i32 21, float %649)  ; Exp(value)
  %651 = fadd fast float %650, -1.000000e+00
  %652 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %9, i32 0)  ; GetDimensions(handle,mipLevel)
  %653 = extractvalue %dx.types.Dimensions %652, 0
  %654 = sitofp i32 %653 to float
  %655 = extractvalue %dx.types.Dimensions %652, 1
  %656 = sitofp i32 %655 to float
  %657 = fcmp fast oge float %212, %654
  %658 = fcmp fast oge float %213, %656
  %659 = or i1 %657, %658
  %660 = select i1 %659, float 0x4197782600000000, float %651
  %661 = fadd fast float %610, -1.000000e+00
  %662 = fadd fast float %611, -1.000000e+00
  %663 = fadd fast float %612, -1.000000e+00
  %664 = fmul fast float %661, %583
  %665 = fmul fast float %662, %583
  %666 = fmul fast float %663, %583
  %667 = fadd fast float %664, 1.000000e+00
  %668 = fadd fast float %665, 1.000000e+00
  %669 = fadd fast float %666, 1.000000e+00
  %670 = call float @dx.op.dot3.f32(i32 55, float %667, float %668, float %669, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %671 = fsub fast float 1.000000e+00, %670
  %672 = fmul fast float %644, %632
  %673 = fsub fast float 1.000000e+00, %632
  %674 = call float @dx.op.unary.f32(i32 7, float %673)  ; Saturate(value)
  %675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %676 = extractvalue %dx.types.CBufRet.f32 %675, 3
  %677 = fmul fast float %676, %674
  %678 = fadd fast float %677, %672
  %679 = and i32 %124, 2097152
  %680 = icmp eq i32 %679, 0
  br i1 %680, label %685, label %681, !dx.controlflow.hints !67

; <label>:681                                     ; preds = %643
  %682 = add i32 %121, 192
  %683 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %682, i32 undef)  ; BufferLoad(srv,index,wot)
  %684 = extractvalue %dx.types.ResRet.f32 %683, 0
  br label %688

; <label>:685                                     ; preds = %643
  %686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %687 = extractvalue %dx.types.CBufRet.f32 %686, 3
  br label %688

; <label>:688                                     ; preds = %685, %681
  %689 = phi float [ %684, %681 ], [ %687, %685 ]
  %690 = fmul fast float %614, %583
  %691 = fmul fast float %690, %618
  %692 = fmul fast float %691, %619
  %693 = fmul fast float %615, %583
  %694 = fmul fast float %693, %618
  %695 = fmul fast float %694, %620
  %696 = fmul fast float %616, %583
  %697 = fmul fast float %696, %618
  %698 = fmul fast float %697, %621
  %699 = icmp eq i32 %120, 3
  %700 = fcmp fast ogt float %42, %660
  %701 = and i1 %238, %700
  %702 = or i1 %699, %701
  %703 = icmp eq i32 %120, 2
  %704 = fcmp fast ole float %42, %660
  %705 = and i1 %703, %704
  %706 = or i1 %705, %702
  br i1 %701, label %707, label %813

; <label>:707                                     ; preds = %688
  %708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %709 = extractvalue %dx.types.CBufRet.f32 %708, 2
  %710 = extractvalue %dx.types.CBufRet.f32 %708, 3
  %711 = fmul fast float %709, %46
  %712 = fmul fast float %710, %47
  %713 = call float @dx.op.unary.f32(i32 7, float %711)  ; Saturate(value)
  %714 = call float @dx.op.unary.f32(i32 7, float %712)  ; Saturate(value)
  %715 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %713, float %714, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %716 = extractvalue %dx.types.ResRet.f32 %715, 0
  %717 = extractvalue %dx.types.ResRet.f32 %715, 1
  %718 = extractvalue %dx.types.ResRet.f32 %715, 2
  %719 = extractvalue %dx.types.ResRet.f32 %715, 3
  %720 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %713, float %714, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %721 = extractvalue %dx.types.ResRet.f32 %720, 0
  %722 = extractvalue %dx.types.ResRet.f32 %720, 1
  %723 = extractvalue %dx.types.ResRet.f32 %720, 2
  %724 = extractvalue %dx.types.ResRet.f32 %720, 3
  %725 = call float @dx.op.binary.f32(i32 35, float %717, float %718)  ; FMax(a,b)
  %726 = call float @dx.op.binary.f32(i32 35, float %716, float %725)  ; FMax(a,b)
  %727 = call float @dx.op.binary.f32(i32 35, float %726, float %719)  ; FMax(a,b)
  %728 = call float @dx.op.binary.f32(i32 36, float %722, float %723)  ; FMin(a,b)
  %729 = call float @dx.op.binary.f32(i32 36, float %721, float %728)  ; FMin(a,b)
  %730 = call float @dx.op.binary.f32(i32 36, float %729, float %724)  ; FMin(a,b)
  %731 = fmul fast float %727, 2.550000e+02
  %732 = fadd fast float %731, 0x3F70101020000000
  %733 = fptoui float %732 to i32
  %734 = fmul fast float %730, 2.550000e+02
  %735 = fadd fast float %734, 0x3F70101020000000
  %736 = fptoui float %735 to i32
  %737 = icmp ult i32 %733, %736
  br i1 %737, label %738, label %789

; <label>:738                                     ; preds = %707
  %739 = fcmp fast ogt float %41, 9.843750e-01
  %740 = fadd fast float %42, -4.000000e+00
  %741 = select i1 %739, float -4.000000e+00, float %740
  %742 = call float @dx.op.binary.f32(i32 35, float %741, float 0.000000e+00)  ; FMax(a,b)
  %743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %744 = extractvalue %dx.types.CBufRet.f32 %743, 0
  %745 = fadd fast float %744, %742
  %746 = extractvalue %dx.types.CBufRet.f32 %743, 2
  %747 = fmul fast float %745, %746
  %748 = call float @dx.op.unary.f32(i32 23, float %747)  ; Log(value)
  %749 = extractvalue %dx.types.CBufRet.f32 %743, 3
  %750 = fmul fast float %749, %748
  %751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %752 = extractvalue %dx.types.CBufRet.f32 %751, 2
  %753 = fmul fast float %750, %752
  %754 = call float @dx.op.unary.f32(i32 7, float %753)  ; Saturate(value)
  %755 = uitofp i32 %733 to float
  %756 = uitofp i32 %736 to float
  %757 = fadd fast float %755, 5.000000e-01
  %758 = fadd fast float %756, 5.000000e-01
  %759 = fmul fast float %752, %757
  %760 = fmul fast float %752, %758
  %761 = fadd fast float %759, 0x3F0FFB4800000000
  %762 = fadd fast float %760, 0xBF0FFB4800000000
  %763 = call float @dx.op.binary.f32(i32 35, float %754, float %761)  ; FMax(a,b)
  %764 = call float @dx.op.binary.f32(i32 36, float %763, float %762)  ; FMin(a,b)
  %765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %766 = extractvalue %dx.types.CBufRet.f32 %765, 1
  %767 = extractvalue %dx.types.CBufRet.f32 %765, 2
  %768 = extractvalue %dx.types.CBufRet.f32 %765, 0
  %769 = fmul fast float %766, %764
  %770 = fadd fast float %768, %769
  %771 = fadd fast float %768, %767
  %772 = fsub fast float %766, %767
  %773 = fadd fast float %772, %768
  %774 = call float @dx.op.binary.f32(i32 35, float %770, float %771)  ; FMax(a,b)
  %775 = call float @dx.op.binary.f32(i32 36, float %774, float %773)  ; FMin(a,b)
  %776 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %17, float %713, float %714, float %775, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %777 = extractvalue %dx.types.ResRet.f32 %776, 0
  %778 = extractvalue %dx.types.ResRet.f32 %776, 1
  %779 = extractvalue %dx.types.ResRet.f32 %776, 2
  %780 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %713, float %714, float %775, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %781 = extractvalue %dx.types.ResRet.f32 %780, 0
  %782 = extractvalue %dx.types.ResRet.f32 %780, 1
  %783 = extractvalue %dx.types.ResRet.f32 %780, 2
  %784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %785 = extractvalue %dx.types.CBufRet.f32 %784, 1
  %786 = fmul fast float %785, %781
  %787 = fmul fast float %785, %782
  %788 = fmul fast float %785, %783
  br label %789

; <label>:789                                     ; preds = %738, %707
  %790 = phi float [ %777, %738 ], [ 1.000000e+00, %707 ]
  %791 = phi float [ %778, %738 ], [ 1.000000e+00, %707 ]
  %792 = phi float [ %779, %738 ], [ 1.000000e+00, %707 ]
  %793 = phi float [ %786, %738 ], [ 0.000000e+00, %707 ]
  %794 = phi float [ %787, %738 ], [ 0.000000e+00, %707 ]
  %795 = phi float [ %788, %738 ], [ 0.000000e+00, %707 ]
  %796 = fmul fast float %793, %671
  %797 = fmul fast float %794, %671
  %798 = fmul fast float %795, %671
  %799 = call float @dx.op.dot3.f32(i32 55, float %790, float %791, float %792, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %800 = call float @dx.op.dot3.f32(i32 55, float %796, float %797, float %798, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %801 = select i1 %104, float %799, float %790
  %802 = select i1 %104, float %799, float %791
  %803 = select i1 %104, float 1.000000e+00, float %792
  %804 = select i1 %104, float %800, float %796
  %805 = select i1 %104, float 0.000000e+00, float %797
  %806 = select i1 %104, float 0.000000e+00, float %798
  %807 = fmul fast float %801, %692
  %808 = fmul fast float %802, %695
  %809 = fmul fast float %803, %698
  %810 = fadd fast float %807, %804
  %811 = fadd fast float %808, %805
  %812 = fadd fast float %806, %809
  br label %813

; <label>:813                                     ; preds = %789, %688
  %814 = phi float [ %660, %789 ], [ %42, %688 ]
  %815 = phi float [ %810, %789 ], [ %692, %688 ]
  %816 = phi float [ %811, %789 ], [ %695, %688 ]
  %817 = phi float [ %812, %789 ], [ %698, %688 ]
  %818 = phi float [ %790, %789 ], [ 1.000000e+00, %688 ]
  br i1 %706, label %1114, label %819

; <label>:819                                     ; preds = %813
  %820 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %18, float %28, float %29, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %821 = extractvalue %dx.types.ResRet.f32 %820, 0
  %822 = extractvalue %dx.types.ResRet.f32 %820, 1
  %823 = extractvalue %dx.types.ResRet.f32 %820, 2
  %824 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %18, float %28, float %29, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %825 = extractvalue %dx.types.ResRet.f32 %824, 0
  %826 = extractvalue %dx.types.ResRet.f32 %824, 1
  %827 = extractvalue %dx.types.ResRet.f32 %824, 2
  %828 = fmul fast float %821, %671
  %829 = fmul fast float %822, %671
  %830 = fmul fast float %823, %671
  %831 = fmul fast float %825, %818
  %832 = call float @dx.op.dot3.f32(i32 55, float %825, float %826, float %827, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %833 = call float @dx.op.dot3.f32(i32 55, float %828, float %829, float %830, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %834 = select i1 %104, float %832, float %825
  %835 = select i1 %104, float %832, float %826
  %836 = select i1 %104, float 1.000000e+00, float %827
  %837 = select i1 %104, float %833, float %828
  %838 = select i1 %104, float 0.000000e+00, float %829
  %839 = select i1 %104, float 0.000000e+00, float %830
  %840 = fmul fast float %834, %815
  %841 = fmul fast float %835, %816
  %842 = fmul fast float %836, %817
  %843 = fadd fast float %840, %837
  %844 = fadd fast float %841, %838
  %845 = fadd fast float %842, %839
  %846 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %847 = extractvalue %dx.types.CBufRet.i32 %846, 0
  %848 = icmp eq i32 %847, 0
  br i1 %848, label %1114, label %849, !dx.controlflow.hints !68

; <label>:849                                     ; preds = %819
  %850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %851 = extractvalue %dx.types.CBufRet.f32 %850, 2
  %852 = extractvalue %dx.types.CBufRet.f32 %850, 3
  %853 = fmul fast float %851, %46
  %854 = fmul fast float %852, %47
  %855 = fmul fast float %853, 2.000000e+00
  %856 = fmul fast float %854, 2.000000e+00
  %857 = fsub fast float 1.000000e+00, %855
  %858 = fsub fast float 1.000000e+00, %856
  %859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %860 = extractvalue %dx.types.CBufRet.f32 %859, 0
  %861 = extractvalue %dx.types.CBufRet.f32 %859, 1
  %862 = extractvalue %dx.types.CBufRet.f32 %859, 2
  %863 = fmul fast float %857, %860
  %864 = fmul fast float %857, %861
  %865 = fmul fast float %857, %862
  %866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %867 = extractvalue %dx.types.CBufRet.f32 %866, 0
  %868 = extractvalue %dx.types.CBufRet.f32 %866, 1
  %869 = extractvalue %dx.types.CBufRet.f32 %866, 2
  %870 = fmul fast float %858, %867
  %871 = fmul fast float %858, %868
  %872 = fmul fast float %858, %869
  %873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %874 = extractvalue %dx.types.CBufRet.f32 %873, 0
  %875 = extractvalue %dx.types.CBufRet.f32 %873, 1
  %876 = extractvalue %dx.types.CBufRet.f32 %873, 2
  %877 = fadd fast float %870, %874
  %878 = fadd fast float %877, %863
  %879 = fadd fast float %871, %875
  %880 = fadd fast float %879, %864
  %881 = fadd fast float %872, %876
  %882 = fadd fast float %881, %865
  %883 = fmul fast float %878, %814
  %884 = fmul fast float %880, %814
  %885 = fmul fast float %882, %814
  %886 = fmul fast float %883, %883
  %887 = fmul fast float %884, %884
  %888 = fadd fast float %886, %887
  %889 = fmul fast float %885, %885
  %890 = fadd fast float %888, %889
  %891 = call float @dx.op.unary.f32(i32 24, float %890)  ; Sqrt(value)
  %892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %893 = extractvalue %dx.types.CBufRet.f32 %892, 0
  %894 = fsub fast float %891, %893
  %895 = extractvalue %dx.types.CBufRet.f32 %892, 2
  %896 = fmul fast float %894, %895
  %897 = call float @dx.op.unary.f32(i32 7, float %896)  ; Saturate(value)
  %898 = fadd fast float %897, -5.000000e-01
  %899 = fmul fast float %898, 2.000000e+00
  %900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %901 = extractvalue %dx.types.CBufRet.f32 %900, 2
  %902 = call float @dx.op.binary.f32(i32 36, float %901, float %899)  ; FMin(a,b)
  %903 = fsub fast float -0.000000e+00, %901
  %904 = fcmp fast ogt float %902, %903
  br i1 %904, label %905, label %1114, !dx.controlflow.hints !69

; <label>:905                                     ; preds = %849
  %906 = fmul fast float %902, 5.000000e-01
  %907 = fadd fast float %906, 5.000000e-01
  %908 = call float @dx.op.unary.f32(i32 22, float %907)  ; Frc(value)
  %909 = call float @dx.op.unary.f32(i32 27, float %908)  ; Round_ni(value)
  %910 = call float @dx.op.unary.f32(i32 22, float %908)  ; Frc(value)
  %911 = fmul fast float %910, 2.000000e+00
  %912 = fadd fast float %911, -1.000000e+00
  %913 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %18, float %853, float %854, float %909, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %914 = extractvalue %dx.types.ResRet.f32 %913, 0
  %915 = extractvalue %dx.types.ResRet.f32 %913, 1
  %916 = extractvalue %dx.types.ResRet.f32 %913, 2
  %917 = extractvalue %dx.types.ResRet.f32 %913, 3
  %918 = fadd fast float %914, -5.000000e-01
  %919 = fadd fast float %916, -5.000000e-01
  %920 = fmul fast float %918, 0xBFD5555560000000
  %921 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %919, float %920)  ; FMad(a,b,c)
  %922 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %915, float 0.000000e+00)  ; FMad(a,b,c)
  %923 = fadd fast float %922, %917
  %924 = fmul fast float %918, -7.500000e-01
  %925 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %919, float %924)  ; FMad(a,b,c)
  %926 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %915, float 0.000000e+00)  ; FMad(a,b,c)
  %927 = fadd fast float %926, %917
  %928 = call float @dx.op.binary.f32(i32 35, float %921, float -1.000000e+00)  ; FMax(a,b)
  %929 = call float @dx.op.binary.f32(i32 35, float %923, float -1.000000e+00)  ; FMax(a,b)
  %930 = call float @dx.op.binary.f32(i32 35, float %925, float -1.000000e+00)  ; FMax(a,b)
  %931 = call float @dx.op.binary.f32(i32 35, float %927, float -1.000000e+00)  ; FMax(a,b)
  %932 = call float @dx.op.binary.f32(i32 36, float %928, float 1.000000e+00)  ; FMin(a,b)
  %933 = call float @dx.op.binary.f32(i32 36, float %929, float 1.000000e+00)  ; FMin(a,b)
  %934 = call float @dx.op.binary.f32(i32 36, float %930, float 1.000000e+00)  ; FMin(a,b)
  %935 = call float @dx.op.binary.f32(i32 36, float %931, float 1.000000e+00)  ; FMin(a,b)
  %936 = fcmp fast olt float %932, 0x3FEFFF8020000000
  br i1 %936, label %937, label %1052, !dx.controlflow.hints !70

; <label>:937                                     ; preds = %905
  %938 = extractvalue %dx.types.CBufRet.f32 %900, 3
  %939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %940 = extractvalue %dx.types.CBufRet.f32 %939, 0
  %941 = extractvalue %dx.types.CBufRet.f32 %939, 1
  %942 = extractvalue %dx.types.CBufRet.f32 %939, 2
  %943 = extractvalue %dx.types.CBufRet.f32 %939, 3
  %944 = fsub fast float %940, %932
  %945 = fsub fast float %941, %933
  %946 = fsub fast float %942, %934
  %947 = fsub fast float %943, %935
  %948 = fmul fast float %944, %938
  %949 = fmul fast float %945, %938
  %950 = fmul fast float %946, %938
  %951 = fmul fast float %947, %938
  %952 = fadd fast float %948, %932
  %953 = fadd fast float %949, %933
  %954 = fsub fast float -0.000000e+00, %953
  %955 = fadd fast float %950, %934
  %956 = fadd fast float %951, %935
  %957 = fmul fast float %952, %952
  %958 = fsub fast float %953, %957
  %959 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %958)  ; FMax(a,b)
  %960 = fdiv fast float 1.000000e+00, %959
  %961 = fmul fast float %953, %952
  %962 = fsub fast float %955, %961
  %963 = fsub fast float %912, %952
  %964 = fmul fast float %912, %912
  %965 = fsub fast float %964, %953
  %966 = fmul fast float %963, %960
  %967 = fmul fast float %966, %962
  %968 = fsub fast float %965, %967
  %969 = fmul fast float %953, %953
  %970 = fsub fast float %956, %969
  %971 = fmul fast float %962, %962
  %972 = fmul fast float %971, %960
  %973 = fsub fast float %970, %972
  %974 = fdiv fast float %968, %973
  %975 = fmul fast float %962, %974
  %976 = fsub fast float %963, %975
  %977 = fmul fast float %976, %960
  %978 = fmul fast float %977, %952
  %979 = fsub fast float 1.000000e+00, %978
  %980 = fmul fast float %953, %974
  %981 = fsub fast float %979, %980
  %982 = fmul fast float %977, %977
  %983 = fmul fast float %974, 4.000000e+00
  %984 = fmul fast float %983, %981
  %985 = fsub fast float %982, %984
  %986 = call float @dx.op.unary.f32(i32 24, float %985)  ; Sqrt(value)
  %987 = fcmp fast oge float %977, 0.000000e+00
  %988 = fsub fast float -0.000000e+00, %986
  %989 = select i1 %987, float %988, float %986
  %990 = fsub fast float %989, %977
  %991 = fdiv fast float %990, %974
  %992 = fdiv fast float %981, %990
  %993 = fmul fast float %991, 5.000000e-01
  %994 = fmul fast float %992, 2.000000e+00
  %995 = select i1 %987, float %993, float %994
  %996 = select i1 %987, float %994, float %993
  %997 = call float @dx.op.binary.f32(i32 35, float %995, float %996)  ; FMax(a,b)
  %998 = call float @dx.op.binary.f32(i32 36, float %995, float %996)  ; FMin(a,b)
  %999 = fcmp fast ogt float %912, %998
  br i1 %999, label %1000, label %1010

; <label>:1000                                    ; preds = %937
  %1001 = fsub fast float %912, %998
  %1002 = fsub fast float %997, %998
  %1003 = fmul fast float %1001, %1002
  %1004 = fmul fast float %997, %912
  %1005 = fadd fast float %997, %912
  %1006 = fmul fast float %1005, %952
  %1007 = fadd fast float %1004, %953
  %1008 = fsub fast float %1007, %1006
  %1009 = fdiv fast float %1008, %1003
  br label %1010

; <label>:1010                                    ; preds = %1000, %937
  %1011 = phi float [ %1009, %1000 ], [ 0.000000e+00, %937 ]
  %1012 = fcmp fast ogt float %912, %997
  %1013 = fsub fast float %912, %997
  br i1 %1012, label %1014, label %1024

; <label>:1014                                    ; preds = %1010
  %1015 = fsub fast float %997, %998
  %1016 = fmul fast float %1015, %1013
  %1017 = fmul fast float %998, %912
  %1018 = fadd fast float %998, %912
  %1019 = fmul fast float %1018, %952
  %1020 = fsub fast float %954, %1017
  %1021 = fadd fast float %1020, %1019
  %1022 = fdiv fast float %1021, %1016
  %1023 = fadd fast float %1022, %1011
  br label %1024

; <label>:1024                                    ; preds = %1014, %1010
  %1025 = phi float [ %1023, %1014 ], [ %1011, %1010 ]
  %1026 = fsub fast float %912, %998
  %1027 = fmul fast float %1026, %1013
  %1028 = fmul fast float %998, %997
  %1029 = fadd fast float %998, %997
  %1030 = fmul fast float %1029, %952
  %1031 = fadd fast float %1028, %953
  %1032 = fsub fast float %1031, %1030
  %1033 = fdiv fast float %1032, %1027
  %1034 = call float @dx.op.unary.f32(i32 7, float %1025)  ; Saturate(value)
  %1035 = fcmp fast oeq float %689, 0.000000e+00
  %1036 = extractvalue %dx.types.CBufRet.f32 %900, 0
  %1037 = fcmp fast oeq float %1036, 0.000000e+00
  %1038 = or i1 %1035, %1037
  %1039 = fmul fast float %1036, 2.000000e+00
  %1040 = fadd fast float %901, %902
  %1041 = fdiv fast float %1040, %1039
  %1042 = call float @dx.op.unary.f32(i32 7, float %1041)  ; Saturate(value)
  %1043 = fmul fast float %1042, 2.000000e+00
  %1044 = fsub fast float 3.000000e+00, %1043
  %1045 = fmul fast float %1042, %1042
  %1046 = fmul fast float %1045, %1044
  %1047 = select i1 %1038, float 1.000000e+00, float %1046
  %1048 = fmul fast float %1033, %689
  %1049 = fadd fast float %1034, %1048
  %1050 = call float @dx.op.unary.f32(i32 7, float %1049)  ; Saturate(value)
  %1051 = fmul fast float %1047, %1050
  br label %1052

; <label>:1052                                    ; preds = %1024, %905
  %1053 = phi float [ %1051, %1024 ], [ 0.000000e+00, %905 ]
  %1054 = fsub fast float 1.000000e+00, %1053
  %1055 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %18, float %853, float %854, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1056 = extractvalue %dx.types.ResRet.f32 %1055, 0
  %1057 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1058 = extractvalue %dx.types.CBufRet.i32 %1057, 2
  %1059 = icmp eq i32 %1058, 0
  br i1 %1059, label %1065, label %1060

; <label>:1060                                    ; preds = %1052
  %1061 = call float @dx.op.unary.f32(i32 7, float %1053)  ; Saturate(value)
  %1062 = fadd fast float %1056, -1.000000e+00
  %1063 = fmul fast float %1061, %1062
  %1064 = fadd fast float %1063, 1.000000e+00
  br label %1065

; <label>:1065                                    ; preds = %1060, %1052
  %1066 = phi float [ %1064, %1060 ], [ %1054, %1052 ]
  %1067 = call float @dx.op.binary.f32(i32 35, float %1056, float %1066)  ; FMax(a,b)
  %1068 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %1069 = extractvalue %dx.types.CBufRet.i32 %1068, 2
  %1070 = and i32 %1069, 1
  %1071 = icmp eq i32 %1070, 0
  %1072 = fcmp fast une float %1067, 1.000000e+00
  %1073 = and i1 %1072, %1071
  br i1 %1073, label %1074, label %1093

; <label>:1074                                    ; preds = %1065
  %1075 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %18, float %853, float %854, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1076 = extractvalue %dx.types.ResRet.f32 %1075, 0
  %1077 = extractvalue %dx.types.ResRet.f32 %1075, 1
  %1078 = extractvalue %dx.types.ResRet.f32 %1075, 2
  %1079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1080 = extractvalue %dx.types.CBufRet.f32 %1079, 1
  %1081 = fmul fast float %1080, %1076
  %1082 = fmul fast float %1080, %1077
  %1083 = fmul fast float %1080, %1078
  %1084 = fcmp fast ogt float %1056, 0x3FEFFF2E40000000
  %1085 = fsub fast float 1.000000e+00, %1067
  %1086 = fsub fast float 1.000000e+00, %1056
  %1087 = fdiv fast float %1085, %1086
  %1088 = call float @dx.op.unary.f32(i32 7, float %1087)  ; Saturate(value)
  %1089 = select i1 %1084, float 0.000000e+00, float %1088
  %1090 = fmul fast float %1081, %1089
  %1091 = fmul fast float %1082, %1089
  %1092 = fmul fast float %1083, %1089
  br label %1093

; <label>:1093                                    ; preds = %1074, %1065
  %1094 = phi float [ 0.000000e+00, %1065 ], [ %1090, %1074 ]
  %1095 = phi float [ 0.000000e+00, %1065 ], [ %1091, %1074 ]
  %1096 = phi float [ 0.000000e+00, %1065 ], [ %1092, %1074 ]
  %1097 = fmul fast float %1094, %671
  %1098 = fmul fast float %1095, %671
  %1099 = fmul fast float %1096, %671
  %1100 = fmul fast float %1067, %831
  %1101 = call float @dx.op.dot3.f32(i32 55, float %1067, float %1067, float %1067, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1102 = call float @dx.op.dot3.f32(i32 55, float %1097, float %1098, float %1099, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1103 = select i1 %104, float %1101, float %1067
  %1104 = select i1 %104, float 1.000000e+00, float %1067
  %1105 = select i1 %104, float %1102, float %1097
  %1106 = select i1 %104, float 0.000000e+00, float %1098
  %1107 = select i1 %104, float 0.000000e+00, float %1099
  %1108 = fmul fast float %1103, %843
  %1109 = fmul fast float %1103, %844
  %1110 = fmul fast float %1104, %845
  %1111 = fadd fast float %1108, %1105
  %1112 = fadd fast float %1109, %1106
  %1113 = fadd fast float %1107, %1110
  br label %1114

; <label>:1114                                    ; preds = %1093, %849, %819, %813
  %1115 = phi float [ %815, %813 ], [ %843, %819 ], [ %1111, %1093 ], [ %843, %849 ]
  %1116 = phi float [ %816, %813 ], [ %844, %819 ], [ %1112, %1093 ], [ %844, %849 ]
  %1117 = phi float [ %817, %813 ], [ %845, %819 ], [ %1113, %1093 ], [ %845, %849 ]
  %1118 = phi float [ %818, %813 ], [ %831, %819 ], [ %1100, %1093 ], [ %831, %849 ]
  %1119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1120 = extractvalue %dx.types.CBufRet.f32 %1119, 2
  %1121 = extractvalue %dx.types.CBufRet.f32 %1119, 3
  %1122 = fmul fast float %1120, %46
  %1123 = fmul fast float %1121, %47
  %1124 = call float @dx.op.unary.f32(i32 7, float %1122)  ; Saturate(value)
  %1125 = call float @dx.op.unary.f32(i32 7, float %1123)  ; Saturate(value)
  %1126 = select i1 %706, i32 2, i32 0
  %1127 = or i32 %1126, 1
  %1128 = uitofp i32 %1127 to float
  %1129 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %1124, float %1125, float %1128, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1130 = extractvalue %dx.types.ResRet.f32 %1129, 0
  %1131 = extractvalue %dx.types.ResRet.f32 %1129, 1
  %1132 = extractvalue %dx.types.ResRet.f32 %1129, 2
  %1133 = extractvalue %dx.types.ResRet.f32 %1129, 3
  %1134 = add nuw nsw i32 %1126, 2
  %1135 = uitofp i32 %1134 to float
  %1136 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %1124, float %1125, float %1135, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1137 = extractvalue %dx.types.ResRet.f32 %1136, 0
  %1138 = extractvalue %dx.types.ResRet.f32 %1136, 1
  %1139 = extractvalue %dx.types.ResRet.f32 %1136, 2
  %1140 = extractvalue %dx.types.ResRet.f32 %1136, 3
  %1141 = call float @dx.op.binary.f32(i32 35, float %1131, float %1132)  ; FMax(a,b)
  %1142 = call float @dx.op.binary.f32(i32 35, float %1130, float %1141)  ; FMax(a,b)
  %1143 = call float @dx.op.binary.f32(i32 35, float %1142, float %1133)  ; FMax(a,b)
  %1144 = call float @dx.op.binary.f32(i32 36, float %1138, float %1139)  ; FMin(a,b)
  %1145 = call float @dx.op.binary.f32(i32 36, float %1137, float %1144)  ; FMin(a,b)
  %1146 = call float @dx.op.binary.f32(i32 36, float %1145, float %1140)  ; FMin(a,b)
  %1147 = fmul fast float %1143, 2.550000e+02
  %1148 = fadd fast float %1147, 0x3F70101020000000
  %1149 = fptoui float %1148 to i32
  %1150 = fmul fast float %1146, 2.550000e+02
  %1151 = fadd fast float %1150, 0x3F70101020000000
  %1152 = fptoui float %1151 to i32
  %1153 = icmp ult i32 %1149, %1152
  br i1 %1153, label %1154, label %1206

; <label>:1154                                    ; preds = %1114
  %1155 = fcmp fast ogt float %41, 9.843750e-01
  %1156 = fadd fast float %814, -4.000000e+00
  %1157 = select i1 %1155, float -4.000000e+00, float %1156
  %1158 = call float @dx.op.binary.f32(i32 35, float %1157, float 0.000000e+00)  ; FMax(a,b)
  %1159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1160 = extractvalue %dx.types.CBufRet.f32 %1159, 0
  %1161 = fadd fast float %1160, %1158
  %1162 = extractvalue %dx.types.CBufRet.f32 %1159, 2
  %1163 = fmul fast float %1161, %1162
  %1164 = call float @dx.op.unary.f32(i32 23, float %1163)  ; Log(value)
  %1165 = extractvalue %dx.types.CBufRet.f32 %1159, 3
  %1166 = fmul fast float %1165, %1164
  %1167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1168 = extractvalue %dx.types.CBufRet.f32 %1167, 2
  %1169 = fmul fast float %1166, %1168
  %1170 = call float @dx.op.unary.f32(i32 7, float %1169)  ; Saturate(value)
  %1171 = uitofp i32 %1149 to float
  %1172 = uitofp i32 %1152 to float
  %1173 = fadd fast float %1171, 5.000000e-01
  %1174 = fadd fast float %1172, 5.000000e-01
  %1175 = fmul fast float %1168, %1173
  %1176 = fmul fast float %1168, %1174
  %1177 = fadd fast float %1175, 0x3F0FFB4800000000
  %1178 = fadd fast float %1176, 0xBF0FFB4800000000
  %1179 = call float @dx.op.binary.f32(i32 35, float %1170, float %1177)  ; FMax(a,b)
  %1180 = call float @dx.op.binary.f32(i32 36, float %1179, float %1178)  ; FMin(a,b)
  %1181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1182 = extractvalue %dx.types.CBufRet.f32 %1181, 1
  %1183 = extractvalue %dx.types.CBufRet.f32 %1181, 2
  %1184 = extractvalue %dx.types.CBufRet.f32 %1181, 0
  %1185 = select i1 %706, float %1184, float 0.000000e+00
  %1186 = fmul fast float %1182, %1180
  %1187 = fadd fast float %1185, %1186
  %1188 = fadd fast float %1185, %1183
  %1189 = fsub fast float %1182, %1183
  %1190 = fadd fast float %1189, %1185
  %1191 = call float @dx.op.binary.f32(i32 35, float %1187, float %1188)  ; FMax(a,b)
  %1192 = call float @dx.op.binary.f32(i32 36, float %1191, float %1190)  ; FMin(a,b)
  %1193 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %17, float %1124, float %1125, float %1192, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1194 = extractvalue %dx.types.ResRet.f32 %1193, 0
  %1195 = extractvalue %dx.types.ResRet.f32 %1193, 1
  %1196 = extractvalue %dx.types.ResRet.f32 %1193, 2
  %1197 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %1124, float %1125, float %1192, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1198 = extractvalue %dx.types.ResRet.f32 %1197, 0
  %1199 = extractvalue %dx.types.ResRet.f32 %1197, 1
  %1200 = extractvalue %dx.types.ResRet.f32 %1197, 2
  %1201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1202 = extractvalue %dx.types.CBufRet.f32 %1201, 1
  %1203 = fmul fast float %1202, %1198
  %1204 = fmul fast float %1202, %1199
  %1205 = fmul fast float %1202, %1200
  br label %1206

; <label>:1206                                    ; preds = %1154, %1114
  %1207 = phi float [ %1194, %1154 ], [ 1.000000e+00, %1114 ]
  %1208 = phi float [ %1195, %1154 ], [ 1.000000e+00, %1114 ]
  %1209 = phi float [ %1196, %1154 ], [ 1.000000e+00, %1114 ]
  %1210 = phi float [ %1203, %1154 ], [ 0.000000e+00, %1114 ]
  %1211 = phi float [ %1204, %1154 ], [ 0.000000e+00, %1114 ]
  %1212 = phi float [ %1205, %1154 ], [ 0.000000e+00, %1114 ]
  %1213 = fmul fast float %1210, %671
  %1214 = fmul fast float %1211, %671
  %1215 = fmul fast float %1212, %671
  %1216 = fmul fast float %1207, %1118
  %1217 = call float @dx.op.dot3.f32(i32 55, float %1207, float %1208, float %1209, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1218 = call float @dx.op.dot3.f32(i32 55, float %1213, float %1214, float %1215, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1219 = select i1 %104, float %1217, float %1207
  %1220 = select i1 %104, float %1217, float %1208
  %1221 = select i1 %104, float 1.000000e+00, float %1209
  %1222 = select i1 %104, float %1218, float %1213
  %1223 = select i1 %104, float 0.000000e+00, float %1214
  %1224 = select i1 %104, float 0.000000e+00, float %1215
  %1225 = fmul fast float %1219, %1115
  %1226 = fmul fast float %1220, %1116
  %1227 = fmul fast float %1221, %1117
  %1228 = fadd fast float %1225, %1222
  %1229 = fadd fast float %1226, %1223
  %1230 = fadd fast float %1224, %1227
  %1231 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1232 = extractvalue %dx.types.CBufRet.i32 %1231, 3
  %1233 = and i32 %1232, 3
  %1234 = icmp ne i32 %1233, 0
  %1235 = and i32 %1232, 4
  %1236 = icmp ne i32 %1235, 0
  %1237 = and i1 %1234, %1236
  %1238 = and i1 %104, %1237
  br i1 %1238, label %1239, label %1245

; <label>:1239                                    ; preds = %1206
  %1240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1241 = extractvalue %dx.types.CBufRet.f32 %1240, 1
  %1242 = fadd fast float %1216, -1.000000e+00
  %1243 = fmul fast float %1241, %1242
  %1244 = fadd fast float %1243, 1.000000e+00
  br label %1245

; <label>:1245                                    ; preds = %1239, %1206
  %1246 = phi float [ %1244, %1239 ], [ %1216, %1206 ]
  %1247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1248 = extractvalue %dx.types.CBufRet.f32 %1247, 0
  br i1 %104, label %1249, label %1270

; <label>:1249                                    ; preds = %1245
  %1250 = fadd fast float %1228, %1229
  %1251 = fmul fast float %1248, %1250
  %1252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1253 = extractvalue %dx.types.CBufRet.f32 %1252, 3
  %1254 = extractvalue %dx.types.CBufRet.f32 %675, 1
  %1255 = fsub fast float %678, %1254
  %1256 = extractvalue %dx.types.CBufRet.f32 %675, 2
  %1257 = fmul fast float %1255, %1256
  %1258 = call float @dx.op.unary.f32(i32 7, float %1257)  ; Saturate(value)
  %1259 = fsub fast float %1258, %1253
  %1260 = fmul fast float %1259, %1246
  %1261 = fadd fast float %1260, %1253
  %1262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1263 = extractvalue %dx.types.CBufRet.f32 %1262, 0
  %1264 = fsub fast float %1261, %1263
  %1265 = fmul fast float %1264, 1.000000e+01
  %1266 = call float @dx.op.unary.f32(i32 7, float %1265)  ; Saturate(value)
  %1267 = fmul fast float %1266, %671
  %1268 = fsub fast float %671, %1267
  %1269 = fmul fast float %1268, %1261
  br label %1279

; <label>:1270                                    ; preds = %1245
  %1271 = fmul fast float %1248, %1228
  %1272 = fmul fast float %1248, %1229
  %1273 = fmul fast float %1248, %1230
  %1274 = call float @dx.op.binary.f32(i32 35, float %1272, float %1273)  ; FMax(a,b)
  %1275 = call float @dx.op.binary.f32(i32 35, float %1271, float %1274)  ; FMax(a,b)
  %1276 = call float @dx.op.binary.f32(i32 35, float %1275, float %671)  ; FMax(a,b)
  %1277 = fcmp fast ugt float %1276, 0x3F10000000000000
  br i1 %1277, label %1279, label %1278

; <label>:1278                                    ; preds = %1270
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1279

; <label>:1279                                    ; preds = %1278, %1270, %1249
  %1280 = phi float [ %1251, %1249 ], [ %1271, %1278 ], [ %1271, %1270 ]
  %1281 = phi float [ %1269, %1249 ], [ %1272, %1278 ], [ %1272, %1270 ]
  %1282 = phi float [ %1268, %1249 ], [ %1273, %1278 ], [ %1273, %1270 ]
  %1283 = phi float [ %1268, %1249 ], [ %671, %1278 ], [ %671, %1270 ]
  %1284 = fadd fast float %520, 0x3FE3C6EF40000000
  %1285 = call float @dx.op.unary.f32(i32 22, float %1284)  ; Frc(value)
  %1286 = call float @dx.op.unary.f32(i32 23, float %1280)  ; Log(value)
  %1287 = fadd fast float %1286, -7.000000e+00
  %1288 = call float @dx.op.unary.f32(i32 21, float %1287)  ; Exp(value)
  %1289 = fmul fast float %1285, 2.000000e+00
  %1290 = fadd fast float %1289, -1.000000e+00
  %1291 = fmul fast float %1288, %1290
  %1292 = fcmp fast ogt float %1280, 0.000000e+00
  %1293 = select i1 %1292, float %1291, float 0.000000e+00
  %1294 = fadd fast float %1293, %1280
  %1295 = fadd fast float %520, 0x3FF3C6EF40000000
  %1296 = call float @dx.op.unary.f32(i32 22, float %1295)  ; Frc(value)
  %1297 = call float @dx.op.unary.f32(i32 23, float %1281)  ; Log(value)
  %1298 = fadd fast float %1297, -7.000000e+00
  %1299 = call float @dx.op.unary.f32(i32 21, float %1298)  ; Exp(value)
  %1300 = fmul fast float %1296, 2.000000e+00
  %1301 = fadd fast float %1300, -1.000000e+00
  %1302 = fmul fast float %1299, %1301
  %1303 = fcmp fast ogt float %1281, 0.000000e+00
  %1304 = select i1 %1303, float %1302, float 0.000000e+00
  %1305 = fadd fast float %1304, %1281
  %1306 = fadd fast float %520, 0x3FFDAA66E0000000
  %1307 = call float @dx.op.unary.f32(i32 22, float %1306)  ; Frc(value)
  %1308 = call float @dx.op.unary.f32(i32 23, float %1282)  ; Log(value)
  %1309 = fadd fast float %1308, -6.000000e+00
  %1310 = call float @dx.op.unary.f32(i32 21, float %1309)  ; Exp(value)
  %1311 = fmul fast float %1307, 2.000000e+00
  %1312 = fadd fast float %1311, -1.000000e+00
  %1313 = fmul fast float %1310, %1312
  %1314 = fcmp fast ogt float %1282, 0.000000e+00
  %1315 = select i1 %1314, float %1313, float 0.000000e+00
  %1316 = fadd fast float %1315, %1282
  %1317 = select i1 %104, float %1281, float %1305
  %1318 = select i1 %104, float %1282, float %1316
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1319 = call float @dx.op.binary.f32(i32 36, float %1294, float 3.225500e+04)  ; FMin(a,b)
  %1320 = call float @dx.op.binary.f32(i32 36, float %1317, float 3.225500e+04)  ; FMin(a,b)
  %1321 = call float @dx.op.binary.f32(i32 36, float %1318, float 3.225500e+04)  ; FMin(a,b)
  %1322 = call float @dx.op.binary.f32(i32 36, float %1283, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1319)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1320)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1321)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1322)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1283)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1283)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1283)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1283)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!34 = !{[33 x i32] [i32 31, i32 8, i32 255, i32 255, i32 255, i32 255, i32 1, i32 3, i32 4, i32 255, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255, i32 255, i32 0, i32 255, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 255]}
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

