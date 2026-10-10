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
; COLOR                    3   xyz         6     NONE    uint   x   
; COLOR                    4      w        6     NONE    uint       
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
; shader hash: 9e42efcfb8a6da3689893303a945f9b8
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
; COLOR                    3        nointerpolation       
; COLOR                    4        nointerpolation       
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
;                                   sampler      NA          NA      S3             s3     1
;                                   sampler      NA          NA      S4             s4     1
;                                   texture     f32          2d      T0      t0,space3unbounded
;                                   texture     f32          2d      T1      t0,space4unbounded
;                                   texture     f32          2d      T2     t37,space2     1
;                                   texture    byte         r/o      T3             t0     1
;                                   texture     f32          2d      T4     t77,space2     1
;                                   texture     f32          2d      T5     t69,space2     1
;                                   texture     f32          2d      T6             t1     1
;                                   texture     f32          2d      T7     t57,space2     1
;                                   texture    byte         r/o      T8     t69,space1     1
;                                   texture     u32          2d      T9     t56,space2     1
;                                   texture     f32          3d     T10     t44,space2     1
;                                   texture     f32          3d     T11     t45,space2     1
;                                   texture     f32     2darray     T12     t47,space2     1
;                                   textureunorm_f32     2darray     T13     t85,space2     1
;                                   texture     f32          2d     T14     t83,space2     1
;                                   texture     f32          2d     T15     t86,space2     1
;                                   texture     f32     2darray     T16             t2     1
;                                   texture    byte         r/o     T17             t3     1
;
;
; ViewId state:
;
; Number of inputs: 28, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 7, 8, 9, 12, 13, 14, 16, 17, 24 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 24 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 24 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 24 }
;   output 4 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 24 }
;   output 5 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 24 }
;   output 6 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 24 }
;   output 7 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 24 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 77, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %42 = extractvalue %dx.types.CBufRet.f32 %41, 0
  %43 = fmul fast float %42, %35
  %44 = fmul fast float %42, %36
  %45 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %46 = extractvalue %dx.types.CBufRet.f32 %45, 2
  %47 = extractvalue %dx.types.CBufRet.f32 %45, 3
  %48 = fmul fast float %43, 2.000000e+00
  %49 = fmul fast float %48, %46
  %50 = fmul fast float %44, 2.000000e+00
  %51 = fmul fast float %50, %47
  %52 = fsub fast float 1.000000e+00, %49
  %53 = fsub fast float 1.000000e+00, %51
  %54 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %55 = extractvalue %dx.types.CBufRet.f32 %54, 0
  %56 = extractvalue %dx.types.CBufRet.f32 %54, 1
  %57 = extractvalue %dx.types.CBufRet.f32 %54, 2
  %58 = fmul fast float %52, %55
  %59 = fmul fast float %52, %56
  %60 = fmul fast float %52, %57
  %61 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %62 = extractvalue %dx.types.CBufRet.f32 %61, 0
  %63 = extractvalue %dx.types.CBufRet.f32 %61, 1
  %64 = extractvalue %dx.types.CBufRet.f32 %61, 2
  %65 = fmul fast float %53, %62
  %66 = fmul fast float %53, %63
  %67 = fmul fast float %53, %64
  %68 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
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
  %81 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
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
  %91 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %19, float %90, float %89, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %92 = extractvalue %dx.types.ResRet.f32 %91, 0
  %93 = fsub fast float 1.000000e+00, %92
  %94 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %95 = extractvalue %dx.types.CBufRet.f32 %94, 0
  %96 = fcmp fast olt float %93, %95
  br label %100

; <label>:97                                      ; preds = %0
  %98 = icmp eq i32 %85, 0
  %99 = and i1 %84, %98
  br label %100

; <label>:100                                     ; preds = %97, %88
  %101 = phi i1 [ %96, %88 ], [ %99, %97 ]
  %102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %103 = extractvalue %dx.types.CBufRet.f32 %102, 2
  %104 = extractvalue %dx.types.CBufRet.f32 %102, 3
  %105 = fmul fast float %103, %43
  %106 = fmul fast float %104, %44
  %107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %108 = extractvalue %dx.types.ResRet.i32 %107, 0
  %109 = and i32 %108, 114688
  %110 = icmp ne i32 %109, 0
  %111 = select i1 %110, float %105, float 0.000000e+00
  %112 = select i1 %110, float %106, float 0.000000e+00
  %113 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %20, float %111, float %112, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %114 = extractvalue %dx.types.ResRet.f32 %113, 0
  %115 = fmul fast float %114, 2.550000e+02
  %116 = fptoui float %115 to i32
  %117 = select i1 %110, i32 %116, i32 0
  %118 = mul i32 %23, 208
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
  %131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 112, i32 undef)  ; BufferLoad(srv,index,wot)
  %132 = extractvalue %dx.types.ResRet.i32 %131, 0
  %133 = add i32 %132, 0
  %134 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %133, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %136 = extractvalue %dx.types.ResRet.i32 %135, 0
  %137 = add i32 %136, 0
  %138 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %137, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %139 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %138, %dx.types.Handle %18, float %29, float %30, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %140 = extractvalue %dx.types.ResRet.f32 %139, 0
  %141 = extractvalue %dx.types.ResRet.f32 %139, 1
  %142 = extractvalue %dx.types.ResRet.f32 %139, 2
  %143 = fmul fast float %140, 2.000000e+00
  %144 = fmul fast float %141, 2.000000e+00
  %145 = fadd fast float %143, -1.000000e+00
  %146 = fadd fast float %144, -1.000000e+00
  %147 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %134, %dx.types.Handle %18, float %29, float %30, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %148 = extractvalue %dx.types.ResRet.f32 %147, 0
  %149 = extractvalue %dx.types.ResRet.f32 %147, 3
  %150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %151 = extractvalue %dx.types.ResRet.i32 %150, 0
  %152 = extractvalue %dx.types.ResRet.i32 %150, 1
  %153 = bitcast i32 %151 to float
  %154 = bitcast i32 %152 to float
  %155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %156 = extractvalue %dx.types.CBufRet.f32 %155, 3
  %157 = fmul fast float %154, 5.000000e-01
  %158 = fadd fast float %156, %149
  %159 = fadd fast float %158, %157
  %160 = fdiv fast float %158, %154
  %161 = fdiv fast float %159, %154
  %162 = fsub fast float -0.000000e+00, %160
  %163 = fsub fast float -0.000000e+00, %161
  %164 = fcmp fast oge float %160, %162
  %165 = fcmp fast oge float %161, %163
  %166 = call float @dx.op.unary.f32(i32 6, float %160)  ; FAbs(value)
  %167 = call float @dx.op.unary.f32(i32 6, float %161)  ; FAbs(value)
  %168 = call float @dx.op.unary.f32(i32 22, float %166)  ; Frc(value)
  %169 = call float @dx.op.unary.f32(i32 22, float %167)  ; Frc(value)
  %170 = fsub fast float -0.000000e+00, %168
  %171 = fsub fast float -0.000000e+00, %169
  %172 = select i1 %164, float %168, float %170
  %173 = select i1 %165, float %169, float %171
  %174 = fmul fast float %172, %154
  %175 = fmul fast float %173, %154
  %176 = fmul fast float %153, %142
  %177 = fmul fast float %176, %145
  %178 = fmul fast float %176, %146
  %179 = fmul fast float %174, %177
  %180 = fmul fast float %174, %178
  %181 = fmul fast float %175, %177
  %182 = fmul fast float %175, %178
  %183 = fsub fast float %29, %179
  %184 = fsub fast float %30, %180
  %185 = fsub fast float %29, %181
  %186 = fsub fast float %30, %182
  %187 = fsub fast float 5.000000e-01, %172
  %188 = fmul fast float %187, %154
  %189 = call float @dx.op.unary.f32(i32 6, float %188)  ; FAbs(value)
  %190 = fdiv fast float %189, %157
  %191 = call float @dx.op.unary.f32(i32 7, float %190)  ; Saturate(value)
  %192 = fmul fast float %148, %34
  %193 = and i32 %121, 16
  %194 = icmp ne i32 %193, 0
  %195 = select i1 %194, float 1.000000e+00, float %192
  %196 = icmp eq i32 %193, 0
  br i1 %196, label %216, label %197, !dx.controlflow.hints !63

; <label>:197                                     ; preds = %130
  %198 = add i32 %118, 64
  %199 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %198, i32 undef)  ; BufferLoad(srv,index,wot)
  %200 = extractvalue %dx.types.ResRet.f32 %199, 0
  %201 = fadd fast float %200, 1.000000e+00
  %202 = fmul fast float %201, %192
  %203 = fsub fast float %202, %200
  %204 = fsub fast float %201, %203
  %205 = call float @dx.op.unary.f32(i32 7, float %204)  ; Saturate(value)
  %206 = fsub fast float 1.000000e+00, %202
  %207 = call float @dx.op.unary.f32(i32 7, float %206)  ; Saturate(value)
  %208 = fsub fast float %205, %207
  %209 = fsub fast float %195, %207
  %210 = fdiv fast float %209, %208
  %211 = call float @dx.op.unary.f32(i32 7, float %210)  ; Saturate(value)
  %212 = fmul fast float %211, 2.000000e+00
  %213 = fsub fast float 3.000000e+00, %212
  %214 = fmul fast float %211, %211
  %215 = fmul fast float %214, %213
  br label %216

; <label>:216                                     ; preds = %197, %130
  %217 = phi float [ %215, %197 ], [ %195, %130 ]
  %218 = fcmp fast ogt float %217, 0.000000e+00
  br i1 %218, label %220, label %219

; <label>:219                                     ; preds = %216
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %220

; <label>:220                                     ; preds = %219, %216
  %221 = call float @dx.op.unary.f32(i32 7, float %217)  ; Saturate(value)
  %222 = fmul fast float %43, 5.000000e-01
  %223 = fmul fast float %44, 5.000000e-01
  %224 = fptosi float %222 to i32
  %225 = fptosi float %223 to i32
  %226 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %224, i32 %225, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %227 = extractvalue %dx.types.ResRet.i32 %226, 0
  %228 = lshr i32 %227, 18
  %229 = uitofp i32 %228 to float
  %230 = fmul fast float %229, 0x3F4C00EBA0000000
  %231 = call float @dx.op.unary.f32(i32 21, float %230)  ; Exp(value)
  %232 = fadd fast float %231, -1.000000e+00
  %233 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %9, i32 0)  ; GetDimensions(handle,mipLevel)
  %234 = extractvalue %dx.types.Dimensions %233, 0
  %235 = sitofp i32 %234 to float
  %236 = extractvalue %dx.types.Dimensions %233, 1
  %237 = sitofp i32 %236 to float
  %238 = fcmp fast oge float %222, %235
  %239 = fcmp fast oge float %223, %237
  %240 = or i1 %238, %239
  %241 = select i1 %240, float 0x4197782600000000, float %232
  %242 = fsub fast float %241, %38
  %243 = fcmp fast ogt float %242, 0.000000e+00
  %244 = and i32 %117, -2
  %245 = icmp eq i32 %244, 2
  %246 = and i1 %245, %243
  %247 = xor i1 %243, true
  %248 = icmp eq i32 %117, 1
  %249 = and i1 %248, %247
  %250 = or i1 %246, %249
  %251 = and i32 %121, 262144
  %252 = icmp ne i32 %251, 0
  %253 = and i1 %252, %250
  %254 = xor i1 %250, true
  %255 = and i32 %121, 131072
  %256 = icmp ne i32 %255, 0
  %257 = and i1 %256, %254
  %258 = or i1 %253, %257
  br i1 %258, label %259, label %260

; <label>:259                                     ; preds = %220
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %260

; <label>:260                                     ; preds = %259, %220
  %261 = and i32 %121, 32
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %502, label %263, !dx.controlflow.hints !64

; <label>:263                                     ; preds = %260
  %264 = add i32 %118, 80
  %265 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %264, i32 undef)  ; BufferLoad(srv,index,wot)
  %266 = extractvalue %dx.types.ResRet.f32 %265, 0
  %267 = extractvalue %dx.types.ResRet.f32 %265, 1
  %268 = extractvalue %dx.types.ResRet.f32 %265, 2
  %269 = extractvalue %dx.types.ResRet.f32 %265, 3
  %270 = add i32 %118, 96
  %271 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %270, i32 undef)  ; BufferLoad(srv,index,wot)
  %272 = extractvalue %dx.types.ResRet.f32 %271, 0
  %273 = extractvalue %dx.types.ResRet.f32 %271, 1
  %274 = extractvalue %dx.types.ResRet.f32 %271, 2
  %275 = add i32 %118, 112
  %276 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %275, i32 undef)  ; BufferLoad(srv,index,wot)
  %277 = extractvalue %dx.types.ResRet.f32 %276, 0
  %278 = extractvalue %dx.types.ResRet.f32 %276, 1
  %279 = extractvalue %dx.types.ResRet.f32 %276, 2
  %280 = extractvalue %dx.types.ResRet.f32 %276, 3
  %281 = add i32 %118, 128
  %282 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %281, i32 undef)  ; BufferLoad(srv,index,wot)
  %283 = extractvalue %dx.types.ResRet.f32 %282, 0
  %284 = extractvalue %dx.types.ResRet.f32 %282, 1
  %285 = extractvalue %dx.types.ResRet.f32 %282, 2
  %286 = extractvalue %dx.types.ResRet.f32 %282, 3
  %287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %119, i32 undef)  ; BufferLoad(srv,index,wot)
  %288 = extractvalue %dx.types.ResRet.i32 %287, 0
  %289 = and i32 %288, 4096
  %290 = icmp ne i32 %289, 0
  %291 = fcmp fast une float %274, 0.000000e+00
  %292 = and i32 %288, 64
  %293 = icmp ne i32 %292, 0
  %294 = and i32 %288, 128
  %295 = icmp eq i32 %294, 0
  %296 = and i32 %288, 2048
  %297 = icmp eq i32 %296, 0
  %298 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %12, i32 0)  ; GetDimensions(handle,mipLevel)
  %299 = extractvalue %dx.types.Dimensions %298, 0
  %300 = sitofp i32 %299 to float
  %301 = extractvalue %dx.types.Dimensions %298, 1
  %302 = sitofp i32 %301 to float
  %303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %304 = extractvalue %dx.types.CBufRet.f32 %303, 2
  %305 = extractvalue %dx.types.CBufRet.f32 %303, 3
  %306 = fmul fast float %304, %43
  %307 = fmul fast float %305, %44
  %308 = fmul fast float %306, %300
  %309 = fmul fast float %307, %302
  %310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %311 = extractvalue %dx.types.CBufRet.f32 %310, 1
  %312 = fsub fast float -0.000000e+00, %311
  %313 = fptoui float %312 to i32
  %314 = fptoui float %308 to i32
  %315 = fptoui float %309 to i32
  %316 = and i32 %313, 31
  %317 = lshr i32 %314, %316
  %318 = lshr i32 %315, %316
  %319 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 %313, i32 %317, i32 %318, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %320 = extractvalue %dx.types.ResRet.f32 %319, 0
  %321 = fcmp fast ogt float %320, -1.000000e+00
  %322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %323 = extractvalue %dx.types.CBufRet.f32 %322, 1
  %324 = select i1 %321, float %323, float 1.000000e+00
  %325 = fadd fast float %320, 1.000000e+00
  %326 = fmul fast float %324, %325
  %327 = call float @dx.op.unary.f32(i32 6, float %326)  ; FAbs(value)
  %328 = extractvalue %dx.types.CBufRet.f32 %322, 3
  %329 = fcmp fast oge float %327, %328
  %330 = select i1 %329, float 0x4197782600000000, float %327
  br i1 %297, label %401, label %331, !dx.controlflow.hints !65

; <label>:331                                     ; preds = %263
  %332 = fmul fast float %48, %304
  %333 = fmul fast float %50, %305
  %334 = fsub fast float 1.000000e+00, %332
  %335 = fsub fast float 1.000000e+00, %333
  %336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %337 = extractvalue %dx.types.CBufRet.f32 %336, 0
  %338 = extractvalue %dx.types.CBufRet.f32 %336, 1
  %339 = extractvalue %dx.types.CBufRet.f32 %336, 2
  %340 = fmul fast float %334, %337
  %341 = fmul fast float %334, %338
  %342 = fmul fast float %334, %339
  %343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %344 = extractvalue %dx.types.CBufRet.f32 %343, 0
  %345 = extractvalue %dx.types.CBufRet.f32 %343, 1
  %346 = extractvalue %dx.types.CBufRet.f32 %343, 2
  %347 = fmul fast float %335, %344
  %348 = fmul fast float %335, %345
  %349 = fmul fast float %335, %346
  %350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %351 = extractvalue %dx.types.CBufRet.f32 %350, 0
  %352 = extractvalue %dx.types.CBufRet.f32 %350, 1
  %353 = extractvalue %dx.types.CBufRet.f32 %350, 2
  %354 = fadd fast float %347, %351
  %355 = fadd fast float %354, %340
  %356 = fadd fast float %348, %352
  %357 = fadd fast float %356, %341
  %358 = fadd fast float %349, %353
  %359 = fadd fast float %358, %342
  %360 = fmul fast float %355, %330
  %361 = fmul fast float %357, %330
  %362 = fmul fast float %359, %330
  %363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %364 = extractvalue %dx.types.CBufRet.f32 %363, 0
  %365 = extractvalue %dx.types.CBufRet.f32 %363, 1
  %366 = extractvalue %dx.types.CBufRet.f32 %363, 2
  %367 = fadd fast float %360, %364
  %368 = fadd fast float %361, %365
  %369 = fadd fast float %362, %366
  %370 = call float @dx.op.dot3.f32(i32 55, float %367, float %368, float %369, float %367, float %368, float %369)  ; Dot3(ax,ay,az,bx,by,bz)
  %371 = fsub fast float 1.000000e+00, %370
  %372 = fcmp fast olt float %371, %273
  %373 = fcmp fast ogt float %371, %272
  %374 = or i1 %372, %373
  %375 = select i1 %374, float 0.000000e+00, float %371
  %376 = fsub fast float %272, %273
  %377 = fsub fast float %375, %273
  %378 = fdiv fast float %377, %376
  %379 = call float @dx.op.unary.f32(i32 7, float %378)  ; Saturate(value)
  %380 = fmul fast float %379, 2.000000e+00
  %381 = fsub fast float 3.000000e+00, %380
  %382 = fmul fast float %379, %379
  %383 = fmul fast float %382, %381
  %384 = fmul fast float %277, %31
  %385 = fmul fast float %278, %32
  %386 = fmul fast float %279, %33
  %387 = fsub fast float %384, %283
  %388 = fsub fast float %385, %284
  %389 = fsub fast float %386, %285
  %390 = fsub fast float %280, %286
  %391 = fmul fast float %383, %387
  %392 = fmul fast float %383, %388
  %393 = fmul fast float %383, %389
  %394 = fmul fast float %383, %390
  %395 = fadd fast float %391, %283
  %396 = fadd fast float %392, %284
  %397 = fadd fast float %393, %285
  %398 = fadd fast float %394, %286
  %399 = fmul fast float %266, %266
  %400 = fmul fast float %399, %375
  br label %492

; <label>:401                                     ; preds = %263
  %402 = and i32 %288, 256
  %403 = icmp eq i32 %402, 0
  %404 = fsub fast float %330, %38
  br i1 %403, label %453, label %405

; <label>:405                                     ; preds = %401
  %406 = fadd fast float %272, %38
  %407 = fcmp fast olt float %330, %38
  %408 = fcmp fast ogt float %330, %406
  %409 = or i1 %407, %408
  %410 = select i1 %409, float 0.000000e+00, float %404
  %411 = call float @dx.op.unary.f32(i32 83, float %330)  ; DerivCoarseX(value)
  %412 = call float @dx.op.unary.f32(i32 84, float %330)  ; DerivCoarseY(value)
  %413 = fmul fast float %411, %411
  %414 = fmul fast float %412, %412
  %415 = fadd fast float %414, %413
  %416 = call float @dx.op.unary.f32(i32 24, float %415)  ; Sqrt(value)
  %417 = extractvalue %dx.types.CBufRet.f32 %310, 2
  %418 = fmul fast float %417, %416
  %419 = call float @dx.op.unary.f32(i32 7, float %418)  ; Saturate(value)
  %420 = fmul fast float %419, %273
  %421 = fdiv fast float %404, %420
  %422 = call float @dx.op.unary.f32(i32 7, float %421)  ; Saturate(value)
  %423 = fmul fast float %422, 2.000000e+00
  %424 = fsub fast float 3.000000e+00, %423
  %425 = fmul fast float %422, %422
  %426 = fmul fast float %425, %424
  %427 = fsub fast float %330, %406
  %428 = fadd fast float %427, %420
  %429 = fdiv fast float %428, %420
  %430 = call float @dx.op.unary.f32(i32 7, float %429)  ; Saturate(value)
  %431 = fmul fast float %430, 2.000000e+00
  %432 = fsub fast float 3.000000e+00, %431
  %433 = fmul fast float %430, %430
  %434 = fmul fast float %433, %432
  %435 = fsub fast float %426, %434
  %436 = fmul fast float %277, %31
  %437 = fmul fast float %278, %32
  %438 = fmul fast float %279, %33
  %439 = fsub fast float %436, %283
  %440 = fsub fast float %437, %284
  %441 = fsub fast float %438, %285
  %442 = fsub fast float %280, %286
  %443 = fmul fast float %435, %439
  %444 = fmul fast float %435, %440
  %445 = fmul fast float %435, %441
  %446 = fmul fast float %435, %442
  %447 = fadd fast float %443, %283
  %448 = fadd fast float %444, %284
  %449 = fadd fast float %445, %285
  %450 = fadd fast float %446, %286
  %451 = fmul fast float %410, %266
  %452 = call float @dx.op.unary.f32(i32 6, float %451)  ; FAbs(value)
  br label %492

; <label>:453                                     ; preds = %401
  br i1 %291, label %454, label %465

; <label>:454                                     ; preds = %453
  %455 = select i1 %293, float 5.000000e+01, float 1.000000e+00
  %456 = fmul fast float %455, %266
  %457 = fmul fast float %183, 2.000000e+00
  %458 = fmul fast float %184, 2.000000e+00
  %459 = fadd fast float %457, -1.000000e+00
  %460 = fadd fast float %458, -1.000000e+00
  %461 = call float @dx.op.dot2.f32(i32 54, float %459, float %460, float %459, float %460)  ; Dot2(ax,ay,bx,by)
  %462 = fmul fast float %461, %274
  %463 = fsub fast float %404, %462
  %464 = fmul fast float %456, %463
  br label %492

; <label>:465                                     ; preds = %453
  br i1 %295, label %485, label %466

; <label>:466                                     ; preds = %465
  %467 = select i1 %293, float 0x3F947AE140000000, float 1.000000e+00
  %468 = fdiv fast float 1.000000e+00, %467
  %469 = fmul fast float %467, %267
  %470 = fmul fast float %467, %268
  %471 = fmul fast float %468, %269
  %472 = call float @dx.op.unary.f32(i32 6, float %404)  ; FAbs(value)
  %473 = fcmp fast olt float %472, %469
  br i1 %473, label %474, label %478, !dx.controlflow.hints !66

; <label>:474                                     ; preds = %466
  %475 = fmul fast float %468, %266
  %476 = fmul fast float %475, %472
  %477 = call float @dx.op.unary.f32(i32 6, float %476)  ; FAbs(value)
  br label %492

; <label>:478                                     ; preds = %466
  %479 = fcmp fast ogt float %472, %470
  br i1 %479, label %480, label %492

; <label>:480                                     ; preds = %478
  %481 = fsub fast float %472, %470
  %482 = fmul fast float %471, %481
  %483 = call float @dx.op.unary.f32(i32 6, float %482)  ; FAbs(value)
  %484 = fsub fast float 1.000000e+00, %483
  br label %492

; <label>:485                                     ; preds = %465
  %486 = select i1 %293, float 5.000000e+01, float 1.000000e+00
  %487 = fmul fast float %486, %266
  %488 = call float @dx.op.unary.f32(i32 6, float %242)  ; FAbs(value)
  %489 = select i1 %290, float %488, float 0x47EFFFFFE0000000
  %490 = call float @dx.op.binary.f32(i32 36, float %404, float %489)  ; FMin(a,b)
  %491 = fmul fast float %487, %490
  br label %492

; <label>:492                                     ; preds = %485, %480, %478, %474, %454, %405, %331
  %493 = phi float [ %400, %331 ], [ %452, %405 ], [ %464, %454 ], [ %491, %485 ], [ %477, %474 ], [ %484, %480 ], [ %472, %478 ]
  %494 = phi float [ %395, %331 ], [ %447, %405 ], [ %31, %454 ], [ %31, %485 ], [ %31, %474 ], [ %31, %480 ], [ %31, %478 ]
  %495 = phi float [ %396, %331 ], [ %448, %405 ], [ %32, %454 ], [ %32, %485 ], [ %32, %474 ], [ %32, %480 ], [ %32, %478 ]
  %496 = phi float [ %397, %331 ], [ %449, %405 ], [ %33, %454 ], [ %33, %485 ], [ %33, %474 ], [ %33, %480 ], [ %33, %478 ]
  %497 = phi float [ %398, %331 ], [ %450, %405 ], [ 1.000000e+00, %454 ], [ 1.000000e+00, %485 ], [ 1.000000e+00, %474 ], [ 1.000000e+00, %480 ], [ 1.000000e+00, %478 ]
  %498 = call float @dx.op.unary.f32(i32 7, float %493)  ; Saturate(value)
  %499 = fmul fast float %498, %34
  %500 = fmul fast float %497, %221
  %501 = fmul fast float %500, %498
  br label %502

; <label>:502                                     ; preds = %492, %260
  %503 = phi float [ %494, %492 ], [ %31, %260 ]
  %504 = phi float [ %495, %492 ], [ %32, %260 ]
  %505 = phi float [ %496, %492 ], [ %33, %260 ]
  %506 = phi float [ %501, %492 ], [ %221, %260 ]
  %507 = phi float [ %499, %492 ], [ %34, %260 ]
  %508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %509 = extractvalue %dx.types.CBufRet.f32 %508, 2
  %510 = fptosi float %38 to i32
  %511 = sitofp i32 %510 to float
  %512 = fadd fast float %509, %511
  %513 = fmul fast float %512, 0x3FE3C6EF40000000
  %514 = frem fast float %43, 2.560000e+02
  %515 = frem fast float %44, 2.560000e+02
  %516 = fptoui float %514 to i32
  %517 = fptoui float %515 to i32
  %518 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %516, i32 %517, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %519 = extractvalue %dx.types.ResRet.f32 %518, 0
  %520 = fadd fast float %519, %513
  %521 = call float @dx.op.unary.f32(i32 22, float %520)  ; Frc(value)
  %522 = and i32 %121, 1
  %523 = icmp eq i32 %522, 0
  br i1 %523, label %581, label %524, !dx.controlflow.hints !67

; <label>:524                                     ; preds = %502
  %525 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %118, i32 undef)  ; BufferLoad(srv,index,wot)
  %526 = extractvalue %dx.types.ResRet.f32 %525, 2
  %527 = extractvalue %dx.types.ResRet.f32 %525, 3
  %528 = add i32 %118, 16
  %529 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %528, i32 undef)  ; BufferLoad(srv,index,wot)
  %530 = extractvalue %dx.types.ResRet.f32 %529, 0
  %531 = extractvalue %dx.types.ResRet.f32 %529, 1
  %532 = extractvalue %dx.types.ResRet.f32 %529, 2
  %533 = add i32 %118, 32
  %534 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %533, i32 undef)  ; BufferLoad(srv,index,wot)
  %535 = extractvalue %dx.types.ResRet.f32 %534, 0
  %536 = extractvalue %dx.types.ResRet.f32 %534, 1
  %537 = extractvalue %dx.types.ResRet.f32 %534, 2
  %538 = and i32 %121, 2
  %539 = icmp eq i32 %538, 0
  %540 = call float @dx.op.dot3.f32(i32 55, float %26, float %27, float %28, float %26, float %27, float %28)  ; Dot3(ax,ay,az,bx,by,bz)
  %541 = call float @dx.op.unary.f32(i32 25, float %540)  ; Rsqrt(value)
  %542 = fmul fast float %541, %26
  %543 = fmul fast float %541, %27
  %544 = fmul fast float %541, %28
  %545 = call float @dx.op.dot3.f32(i32 55, float %78, float %79, float %80, float %78, float %79, float %80)  ; Dot3(ax,ay,az,bx,by,bz)
  %546 = call float @dx.op.unary.f32(i32 25, float %545)  ; Rsqrt(value)
  %547 = fmul fast float %546, %78
  %548 = fmul fast float %546, %79
  %549 = fmul fast float %546, %80
  %550 = call float @dx.op.dot3.f32(i32 55, float %547, float %548, float %549, float %542, float %543, float %544)  ; Dot3(ax,ay,az,bx,by,bz)
  %551 = fmul fast float %550, %550
  %552 = fmul fast float %551, %526
  %553 = fadd fast float %552, %527
  %554 = call float @dx.op.unary.f32(i32 7, float %553)  ; Saturate(value)
  br i1 %539, label %555, label %565, !dx.controlflow.hints !68

; <label>:555                                     ; preds = %524
  %556 = extractvalue %dx.types.ResRet.f32 %525, 1
  %557 = extractvalue %dx.types.ResRet.f32 %525, 0
  %558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %559 = extractvalue %dx.types.CBufRet.f32 %558, 3
  %560 = fmul fast float %559, %545
  %561 = fsub fast float %557, %560
  %562 = fmul fast float %561, %556
  %563 = call float @dx.op.unary.f32(i32 7, float %562)  ; Saturate(value)
  %564 = fmul fast float %563, %554
  br label %565

; <label>:565                                     ; preds = %555, %524
  %566 = phi float [ %564, %555 ], [ %554, %524 ]
  %567 = fsub fast float %530, %535
  %568 = fsub fast float %531, %536
  %569 = fsub fast float %532, %537
  %570 = fmul fast float %566, %567
  %571 = fmul fast float %566, %568
  %572 = fmul fast float %566, %569
  %573 = fadd fast float %570, %535
  %574 = fadd fast float %571, %536
  %575 = fadd fast float %572, %537
  %576 = fmul fast float %573, %503
  %577 = fmul fast float %574, %504
  %578 = fmul fast float %575, %505
  %579 = fmul fast float %566, %506
  %580 = fmul fast float %566, %507
  br label %581

; <label>:581                                     ; preds = %565, %502
  %582 = phi float [ %576, %565 ], [ %503, %502 ]
  %583 = phi float [ %577, %565 ], [ %504, %502 ]
  %584 = phi float [ %578, %565 ], [ %505, %502 ]
  %585 = phi float [ %579, %565 ], [ %506, %502 ]
  %586 = phi float [ %580, %565 ], [ %507, %502 ]
  %587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 104, i32 undef)  ; BufferLoad(srv,index,wot)
  %588 = extractvalue %dx.types.ResRet.i32 %587, 0
  %589 = add i32 %588, 0
  %590 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %589, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %591 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %590, %dx.types.Handle %39, float %183, float %184, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %592 = extractvalue %dx.types.ResRet.f32 %591, 0
  %593 = extractvalue %dx.types.ResRet.f32 %591, 1
  %594 = extractvalue %dx.types.ResRet.f32 %591, 2
  %595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %596 = extractvalue %dx.types.ResRet.i32 %595, 0
  %597 = and i32 %596, 255
  %598 = uitofp i32 %597 to float
  %599 = fmul fast float %598, 0x3F70101020000000
  %600 = lshr i32 %596, 8
  %601 = and i32 %600, 255
  %602 = uitofp i32 %601 to float
  %603 = fmul fast float %602, 0x3F70101020000000
  %604 = lshr i32 %596, 16
  %605 = and i32 %604, 255
  %606 = uitofp i32 %605 to float
  %607 = fmul fast float %606, 0x3F70101020000000
  %608 = fmul fast float %599, %599
  %609 = fmul fast float %608, %592
  %610 = fmul fast float %603, %603
  %611 = fmul fast float %610, %593
  %612 = fmul fast float %607, %607
  %613 = fmul fast float %612, %594
  %614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 104, i32 undef)  ; BufferLoad(srv,index,wot)
  %615 = extractvalue %dx.types.ResRet.i32 %614, 0
  %616 = add i32 %615, 0
  %617 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %616, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %618 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %617, %dx.types.Handle %39, float %185, float %186, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %619 = extractvalue %dx.types.ResRet.f32 %618, 0
  %620 = extractvalue %dx.types.ResRet.f32 %618, 1
  %621 = extractvalue %dx.types.ResRet.f32 %618, 2
  %622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %623 = extractvalue %dx.types.ResRet.i32 %622, 0
  %624 = and i32 %623, 255
  %625 = uitofp i32 %624 to float
  %626 = fmul fast float %625, 0x3F70101020000000
  %627 = lshr i32 %623, 8
  %628 = and i32 %627, 255
  %629 = uitofp i32 %628 to float
  %630 = fmul fast float %629, 0x3F70101020000000
  %631 = lshr i32 %623, 16
  %632 = and i32 %631, 255
  %633 = uitofp i32 %632 to float
  %634 = fmul fast float %633, 0x3F70101020000000
  %635 = fmul fast float %626, %626
  %636 = fmul fast float %635, %619
  %637 = fmul fast float %630, %630
  %638 = fmul fast float %637, %620
  %639 = fmul fast float %634, %634
  %640 = fmul fast float %639, %621
  %641 = fsub fast float %636, %609
  %642 = fsub fast float %638, %611
  %643 = fsub fast float %640, %613
  %644 = fmul fast float %641, %191
  %645 = fmul fast float %642, %191
  %646 = fmul fast float %643, %191
  %647 = fadd fast float %644, %609
  %648 = fadd fast float %645, %611
  %649 = fadd fast float %646, %613
  %650 = fmul fast float %647, %582
  %651 = fmul fast float %648, %583
  %652 = fmul fast float %649, %584
  %653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %654 = extractvalue %dx.types.ResRet.i32 %653, 0
  %655 = and i32 %654, 255
  %656 = uitofp i32 %655 to float
  %657 = fmul fast float %656, 0x3F70101020000000
  %658 = fmul fast float %657, %657
  %659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 116, i32 undef)  ; BufferLoad(srv,index,wot)
  %660 = extractvalue %dx.types.ResRet.i32 %659, 0
  %661 = add i32 %660, 0
  %662 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %661, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %663 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %662, %dx.types.Handle %40, float %183, float %184, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %664 = extractvalue %dx.types.ResRet.f32 %663, 0
  %665 = fmul fast float %658, %664
  %666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %667 = extractvalue %dx.types.ResRet.i32 %666, 0
  %668 = and i32 %667, 255
  %669 = uitofp i32 %668 to float
  %670 = fmul fast float %669, 0x3F70101020000000
  %671 = fmul fast float %670, %670
  %672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 116, i32 undef)  ; BufferLoad(srv,index,wot)
  %673 = extractvalue %dx.types.ResRet.i32 %672, 0
  %674 = add i32 %673, 0
  %675 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %674, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %676 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %675, %dx.types.Handle %40, float %185, float %186, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %677 = extractvalue %dx.types.ResRet.f32 %676, 0
  %678 = fmul fast float %671, %677
  %679 = fsub fast float %678, %665
  %680 = fmul fast float %679, %191
  %681 = fadd fast float %680, %665
  %682 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %19, float %24, float %25, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %683 = extractvalue %dx.types.ResRet.f32 %682, 0
  %684 = extractvalue %dx.types.ResRet.f32 %682, 1
  %685 = extractvalue %dx.types.ResRet.f32 %682, 2
  %686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %687 = extractvalue %dx.types.CBufRet.f32 %686, 1
  %688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %689 = extractvalue %dx.types.CBufRet.f32 %688, 0
  %690 = fmul fast float %650, %689
  %691 = fmul fast float %651, %689
  %692 = fmul fast float %652, %689
  %693 = call float @dx.op.dot3.f32(i32 55, float %690, float %691, float %692, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %695 = extractvalue %dx.types.ResRet.i32 %694, 0
  %696 = and i32 %695, 255
  %697 = uitofp i32 %696 to float
  %698 = lshr i32 %695, 8
  %699 = and i32 %698, 255
  %700 = uitofp i32 %699 to float
  %701 = fmul fast float %700, %693
  %702 = fadd fast float %701, %697
  %703 = fmul fast float %702, 0x3F70101020000000
  %704 = call float @dx.op.unary.f32(i32 7, float %703)  ; Saturate(value)
  %705 = and i32 %121, 8192
  %706 = icmp eq i32 %705, 0
  %707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %708 = extractvalue %dx.types.CBufRet.f32 %707, 0
  br i1 %706, label %715, label %709, !dx.controlflow.hints !69

; <label>:709                                     ; preds = %581
  %710 = add i32 %118, 176
  %711 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %710, i32 undef)  ; BufferLoad(srv,index,wot)
  %712 = extractvalue %dx.types.ResRet.f32 %711, 0
  %713 = fcmp fast oge float %712, 0.000000e+00
  %714 = select i1 %713, float %712, float %708
  br label %721

; <label>:715                                     ; preds = %581
  %716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 88, i32 undef)  ; BufferLoad(srv,index,wot)
  %717 = extractvalue %dx.types.ResRet.i32 %716, 0
  %718 = bitcast i32 %717 to float
  %719 = fcmp fast oge float %718, 0.000000e+00
  %720 = select i1 %719, float %718, float %708
  br label %721

; <label>:721                                     ; preds = %715, %709
  %722 = phi float [ %714, %709 ], [ %720, %715 ]
  %723 = fsub fast float 1.000000e+00, %681
  %724 = fmul fast float %723, %586
  %725 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %224, i32 %225, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %726 = extractvalue %dx.types.ResRet.i32 %725, 0
  %727 = lshr i32 %726, 18
  %728 = uitofp i32 %727 to float
  %729 = fmul fast float %728, 0x3F4C00EBA0000000
  %730 = call float @dx.op.unary.f32(i32 21, float %729)  ; Exp(value)
  %731 = fadd fast float %730, -1.000000e+00
  %732 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %9, i32 0)  ; GetDimensions(handle,mipLevel)
  %733 = extractvalue %dx.types.Dimensions %732, 0
  %734 = sitofp i32 %733 to float
  %735 = extractvalue %dx.types.Dimensions %732, 1
  %736 = sitofp i32 %735 to float
  %737 = fcmp fast oge float %222, %734
  %738 = fcmp fast oge float %223, %736
  %739 = or i1 %737, %738
  %740 = select i1 %739, float 0x4197782600000000, float %731
  %741 = fadd fast float %681, -1.000000e+00
  %742 = fmul fast float %741, %585
  %743 = fadd fast float %742, 1.000000e+00
  %744 = call float @dx.op.dot3.f32(i32 55, float %743, float %743, float %743, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %745 = fsub fast float 1.000000e+00, %744
  %746 = fmul fast float %722, %704
  %747 = fsub fast float 1.000000e+00, %724
  %748 = fsub fast float %747, %704
  %749 = call float @dx.op.unary.f32(i32 7, float %748)  ; Saturate(value)
  %750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %751 = extractvalue %dx.types.CBufRet.f32 %750, 3
  %752 = fmul fast float %751, %749
  %753 = fadd fast float %752, %746
  %754 = and i32 %121, 2097152
  %755 = icmp eq i32 %754, 0
  br i1 %755, label %760, label %756, !dx.controlflow.hints !70

; <label>:756                                     ; preds = %721
  %757 = add i32 %118, 192
  %758 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %757, i32 undef)  ; BufferLoad(srv,index,wot)
  %759 = extractvalue %dx.types.ResRet.f32 %758, 0
  br label %763

; <label>:760                                     ; preds = %721
  %761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %762 = extractvalue %dx.types.CBufRet.f32 %761, 3
  br label %763

; <label>:763                                     ; preds = %760, %756
  %764 = phi float [ %759, %756 ], [ %762, %760 ]
  %765 = fmul fast float %683, %585
  %766 = fmul fast float %765, %687
  %767 = fmul fast float %766, %690
  %768 = fmul fast float %684, %585
  %769 = fmul fast float %768, %687
  %770 = fmul fast float %769, %691
  %771 = fmul fast float %685, %585
  %772 = fmul fast float %771, %687
  %773 = fmul fast float %772, %692
  %774 = icmp eq i32 %117, 3
  %775 = fcmp fast ogt float %38, %740
  %776 = and i1 %248, %775
  %777 = or i1 %774, %776
  %778 = icmp eq i32 %117, 2
  %779 = fcmp fast ole float %38, %740
  %780 = and i1 %778, %779
  %781 = or i1 %780, %777
  br i1 %776, label %782, label %888

; <label>:782                                     ; preds = %763
  %783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %784 = extractvalue %dx.types.CBufRet.f32 %783, 2
  %785 = extractvalue %dx.types.CBufRet.f32 %783, 3
  %786 = fmul fast float %784, %43
  %787 = fmul fast float %785, %44
  %788 = call float @dx.op.unary.f32(i32 7, float %786)  ; Saturate(value)
  %789 = call float @dx.op.unary.f32(i32 7, float %787)  ; Saturate(value)
  %790 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %19, float %788, float %789, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %791 = extractvalue %dx.types.ResRet.f32 %790, 0
  %792 = extractvalue %dx.types.ResRet.f32 %790, 1
  %793 = extractvalue %dx.types.ResRet.f32 %790, 2
  %794 = extractvalue %dx.types.ResRet.f32 %790, 3
  %795 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %19, float %788, float %789, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %796 = extractvalue %dx.types.ResRet.f32 %795, 0
  %797 = extractvalue %dx.types.ResRet.f32 %795, 1
  %798 = extractvalue %dx.types.ResRet.f32 %795, 2
  %799 = extractvalue %dx.types.ResRet.f32 %795, 3
  %800 = call float @dx.op.binary.f32(i32 35, float %792, float %793)  ; FMax(a,b)
  %801 = call float @dx.op.binary.f32(i32 35, float %791, float %800)  ; FMax(a,b)
  %802 = call float @dx.op.binary.f32(i32 35, float %801, float %794)  ; FMax(a,b)
  %803 = call float @dx.op.binary.f32(i32 36, float %797, float %798)  ; FMin(a,b)
  %804 = call float @dx.op.binary.f32(i32 36, float %796, float %803)  ; FMin(a,b)
  %805 = call float @dx.op.binary.f32(i32 36, float %804, float %799)  ; FMin(a,b)
  %806 = fmul fast float %802, 2.550000e+02
  %807 = fadd fast float %806, 0x3F70101020000000
  %808 = fptoui float %807 to i32
  %809 = fmul fast float %805, 2.550000e+02
  %810 = fadd fast float %809, 0x3F70101020000000
  %811 = fptoui float %810 to i32
  %812 = icmp ult i32 %808, %811
  br i1 %812, label %813, label %864

; <label>:813                                     ; preds = %782
  %814 = fcmp fast ogt float %37, 9.843750e-01
  %815 = fadd fast float %38, -4.000000e+00
  %816 = select i1 %814, float -4.000000e+00, float %815
  %817 = call float @dx.op.binary.f32(i32 35, float %816, float 0.000000e+00)  ; FMax(a,b)
  %818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %819 = extractvalue %dx.types.CBufRet.f32 %818, 0
  %820 = fadd fast float %819, %817
  %821 = extractvalue %dx.types.CBufRet.f32 %818, 2
  %822 = fmul fast float %820, %821
  %823 = call float @dx.op.unary.f32(i32 23, float %822)  ; Log(value)
  %824 = extractvalue %dx.types.CBufRet.f32 %818, 3
  %825 = fmul fast float %824, %823
  %826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %827 = extractvalue %dx.types.CBufRet.f32 %826, 2
  %828 = fmul fast float %825, %827
  %829 = call float @dx.op.unary.f32(i32 7, float %828)  ; Saturate(value)
  %830 = uitofp i32 %808 to float
  %831 = uitofp i32 %811 to float
  %832 = fadd fast float %830, 5.000000e-01
  %833 = fadd fast float %831, 5.000000e-01
  %834 = fmul fast float %827, %832
  %835 = fmul fast float %827, %833
  %836 = fadd fast float %834, 0x3F0FFB4800000000
  %837 = fadd fast float %835, 0xBF0FFB4800000000
  %838 = call float @dx.op.binary.f32(i32 35, float %829, float %836)  ; FMax(a,b)
  %839 = call float @dx.op.binary.f32(i32 36, float %838, float %837)  ; FMin(a,b)
  %840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %841 = extractvalue %dx.types.CBufRet.f32 %840, 1
  %842 = extractvalue %dx.types.CBufRet.f32 %840, 2
  %843 = extractvalue %dx.types.CBufRet.f32 %840, 0
  %844 = fmul fast float %841, %839
  %845 = fadd fast float %843, %844
  %846 = fadd fast float %843, %842
  %847 = fsub fast float %841, %842
  %848 = fadd fast float %847, %843
  %849 = call float @dx.op.binary.f32(i32 35, float %845, float %846)  ; FMax(a,b)
  %850 = call float @dx.op.binary.f32(i32 36, float %849, float %848)  ; FMin(a,b)
  %851 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %17, float %788, float %789, float %850, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %852 = extractvalue %dx.types.ResRet.f32 %851, 0
  %853 = extractvalue %dx.types.ResRet.f32 %851, 1
  %854 = extractvalue %dx.types.ResRet.f32 %851, 2
  %855 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %788, float %789, float %850, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %856 = extractvalue %dx.types.ResRet.f32 %855, 0
  %857 = extractvalue %dx.types.ResRet.f32 %855, 1
  %858 = extractvalue %dx.types.ResRet.f32 %855, 2
  %859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %860 = extractvalue %dx.types.CBufRet.f32 %859, 1
  %861 = fmul fast float %860, %856
  %862 = fmul fast float %860, %857
  %863 = fmul fast float %860, %858
  br label %864

; <label>:864                                     ; preds = %813, %782
  %865 = phi float [ %852, %813 ], [ 1.000000e+00, %782 ]
  %866 = phi float [ %853, %813 ], [ 1.000000e+00, %782 ]
  %867 = phi float [ %854, %813 ], [ 1.000000e+00, %782 ]
  %868 = phi float [ %861, %813 ], [ 0.000000e+00, %782 ]
  %869 = phi float [ %862, %813 ], [ 0.000000e+00, %782 ]
  %870 = phi float [ %863, %813 ], [ 0.000000e+00, %782 ]
  %871 = fmul fast float %868, %745
  %872 = fmul fast float %869, %745
  %873 = fmul fast float %870, %745
  %874 = call float @dx.op.dot3.f32(i32 55, float %865, float %866, float %867, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %875 = call float @dx.op.dot3.f32(i32 55, float %871, float %872, float %873, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %876 = select i1 %101, float %874, float %865
  %877 = select i1 %101, float %874, float %866
  %878 = select i1 %101, float 1.000000e+00, float %867
  %879 = select i1 %101, float %875, float %871
  %880 = select i1 %101, float 0.000000e+00, float %872
  %881 = select i1 %101, float 0.000000e+00, float %873
  %882 = fmul fast float %876, %767
  %883 = fmul fast float %877, %770
  %884 = fmul fast float %878, %773
  %885 = fadd fast float %882, %879
  %886 = fadd fast float %883, %880
  %887 = fadd fast float %881, %884
  br label %888

; <label>:888                                     ; preds = %864, %763
  %889 = phi float [ %740, %864 ], [ %38, %763 ]
  %890 = phi float [ %885, %864 ], [ %767, %763 ]
  %891 = phi float [ %886, %864 ], [ %770, %763 ]
  %892 = phi float [ %887, %864 ], [ %773, %763 ]
  %893 = phi float [ %865, %864 ], [ 1.000000e+00, %763 ]
  br i1 %781, label %1289, label %894

; <label>:894                                     ; preds = %888
  %895 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %19, float %24, float %25, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %896 = extractvalue %dx.types.ResRet.f32 %895, 0
  %897 = extractvalue %dx.types.ResRet.f32 %895, 1
  %898 = extractvalue %dx.types.ResRet.f32 %895, 2
  %899 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %19, float %24, float %25, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %900 = extractvalue %dx.types.ResRet.f32 %899, 0
  %901 = extractvalue %dx.types.ResRet.f32 %899, 1
  %902 = extractvalue %dx.types.ResRet.f32 %899, 2
  %903 = fmul fast float %896, %745
  %904 = fmul fast float %897, %745
  %905 = fmul fast float %898, %745
  %906 = fmul fast float %900, %893
  %907 = call float @dx.op.dot3.f32(i32 55, float %900, float %901, float %902, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %908 = call float @dx.op.dot3.f32(i32 55, float %903, float %904, float %905, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %909 = select i1 %101, float %907, float %900
  %910 = select i1 %101, float %907, float %901
  %911 = select i1 %101, float 1.000000e+00, float %902
  %912 = select i1 %101, float %908, float %903
  %913 = select i1 %101, float 0.000000e+00, float %904
  %914 = select i1 %101, float 0.000000e+00, float %905
  %915 = fmul fast float %909, %890
  %916 = fmul fast float %910, %891
  %917 = fmul fast float %911, %892
  %918 = fadd fast float %915, %912
  %919 = fadd fast float %916, %913
  %920 = fadd fast float %917, %914
  %921 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %922 = extractvalue %dx.types.CBufRet.i32 %921, 0
  %923 = icmp eq i32 %922, 0
  br i1 %923, label %1289, label %924, !dx.controlflow.hints !71

; <label>:924                                     ; preds = %894
  %925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %926 = extractvalue %dx.types.CBufRet.f32 %925, 2
  %927 = extractvalue %dx.types.CBufRet.f32 %925, 3
  %928 = fmul fast float %926, %43
  %929 = fmul fast float %927, %44
  %930 = fmul fast float %928, 2.000000e+00
  %931 = fmul fast float %929, 2.000000e+00
  %932 = fsub fast float 1.000000e+00, %930
  %933 = fsub fast float 1.000000e+00, %931
  %934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %935 = extractvalue %dx.types.CBufRet.f32 %934, 0
  %936 = extractvalue %dx.types.CBufRet.f32 %934, 1
  %937 = extractvalue %dx.types.CBufRet.f32 %934, 2
  %938 = fmul fast float %932, %935
  %939 = fmul fast float %932, %936
  %940 = fmul fast float %932, %937
  %941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %942 = extractvalue %dx.types.CBufRet.f32 %941, 0
  %943 = extractvalue %dx.types.CBufRet.f32 %941, 1
  %944 = extractvalue %dx.types.CBufRet.f32 %941, 2
  %945 = fmul fast float %933, %942
  %946 = fmul fast float %933, %943
  %947 = fmul fast float %933, %944
  %948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %949 = extractvalue %dx.types.CBufRet.f32 %948, 0
  %950 = extractvalue %dx.types.CBufRet.f32 %948, 1
  %951 = extractvalue %dx.types.CBufRet.f32 %948, 2
  %952 = fadd fast float %945, %949
  %953 = fadd fast float %952, %938
  %954 = fadd fast float %946, %950
  %955 = fadd fast float %954, %939
  %956 = fadd fast float %947, %951
  %957 = fadd fast float %956, %940
  %958 = fmul fast float %953, %889
  %959 = fmul fast float %955, %889
  %960 = fmul fast float %957, %889
  %961 = fmul fast float %958, %958
  %962 = fmul fast float %959, %959
  %963 = fadd fast float %961, %962
  %964 = fmul fast float %960, %960
  %965 = fadd fast float %963, %964
  %966 = call float @dx.op.unary.f32(i32 24, float %965)  ; Sqrt(value)
  %967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %968 = extractvalue %dx.types.CBufRet.f32 %967, 0
  %969 = fsub fast float %966, %968
  %970 = extractvalue %dx.types.CBufRet.f32 %967, 2
  %971 = fmul fast float %969, %970
  %972 = call float @dx.op.unary.f32(i32 7, float %971)  ; Saturate(value)
  %973 = fadd fast float %972, -5.000000e-01
  %974 = fmul fast float %973, 2.000000e+00
  %975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %976 = extractvalue %dx.types.CBufRet.f32 %975, 2
  %977 = call float @dx.op.binary.f32(i32 36, float %976, float %974)  ; FMin(a,b)
  %978 = fsub fast float -0.000000e+00, %976
  %979 = fcmp fast ogt float %977, %978
  br i1 %979, label %980, label %1289, !dx.controlflow.hints !72

; <label>:980                                     ; preds = %924
  %981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %982 = extractvalue %dx.types.CBufRet.f32 %981, 3
  %983 = fcmp fast ogt float %982, 0.000000e+00
  br i1 %983, label %984, label %1059, !dx.controlflow.hints !73

; <label>:984                                     ; preds = %980
  %985 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %12, i32 0)  ; GetDimensions(handle,mipLevel)
  %986 = extractvalue %dx.types.Dimensions %985, 0
  %987 = sitofp i32 %986 to float
  %988 = extractvalue %dx.types.Dimensions %985, 1
  %989 = sitofp i32 %988 to float
  %990 = fmul fast float %928, %987
  %991 = fmul fast float %929, %989
  %992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %993 = extractvalue %dx.types.CBufRet.f32 %992, 1
  %994 = fsub fast float -0.000000e+00, %993
  %995 = fptoui float %994 to i32
  %996 = fptoui float %990 to i32
  %997 = fptoui float %991 to i32
  %998 = and i32 %995, 31
  %999 = lshr i32 %996, %998
  %1000 = lshr i32 %997, %998
  %1001 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 %995, i32 %999, i32 %1000, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1002 = extractvalue %dx.types.ResRet.f32 %1001, 0
  %1003 = fcmp fast olt float %1002, -1.000000e+00
  %1004 = fcmp fast ogt float %1002, -1.000000e+00
  %1005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1006 = extractvalue %dx.types.CBufRet.f32 %1005, 1
  %1007 = select i1 %1004, float %1006, float 1.000000e+00
  %1008 = fadd fast float %1002, 1.000000e+00
  %1009 = fmul fast float %1007, %1008
  %1010 = call float @dx.op.unary.f32(i32 6, float %1009)  ; FAbs(value)
  %1011 = extractvalue %dx.types.CBufRet.f32 %1005, 3
  %1012 = fcmp fast oge float %1010, %1011
  %1013 = select i1 %1012, float 0x4197782600000000, float %1010
  %1014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %1015 = extractvalue %dx.types.CBufRet.f32 %1014, 0
  %1016 = extractvalue %dx.types.CBufRet.f32 %1014, 1
  %1017 = extractvalue %dx.types.CBufRet.f32 %1014, 2
  %1018 = select i1 %1003, float %1015, float %935
  %1019 = select i1 %1003, float %1016, float %936
  %1020 = select i1 %1003, float %1017, float %937
  %1021 = fmul fast float %1018, %932
  %1022 = fmul fast float %1019, %932
  %1023 = fmul fast float %1020, %932
  %1024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %1025 = extractvalue %dx.types.CBufRet.f32 %1024, 0
  %1026 = extractvalue %dx.types.CBufRet.f32 %1024, 1
  %1027 = extractvalue %dx.types.CBufRet.f32 %1024, 2
  %1028 = select i1 %1003, float %1025, float %942
  %1029 = select i1 %1003, float %1026, float %943
  %1030 = select i1 %1003, float %1027, float %944
  %1031 = fmul fast float %1028, %933
  %1032 = fmul fast float %1029, %933
  %1033 = fmul fast float %1030, %933
  %1034 = fadd fast float %1031, %1021
  %1035 = fadd fast float %1032, %1022
  %1036 = fadd fast float %1033, %1023
  %1037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %1038 = extractvalue %dx.types.CBufRet.f32 %1037, 0
  %1039 = extractvalue %dx.types.CBufRet.f32 %1037, 1
  %1040 = extractvalue %dx.types.CBufRet.f32 %1037, 2
  %1041 = select i1 %1003, float %1038, float %949
  %1042 = select i1 %1003, float %1039, float %950
  %1043 = select i1 %1003, float %1040, float %951
  %1044 = fadd fast float %1034, %1041
  %1045 = fadd fast float %1035, %1042
  %1046 = fadd fast float %1036, %1043
  %1047 = fmul fast float %1044, %1013
  %1048 = fmul fast float %1045, %1013
  %1049 = fmul fast float %1046, %1013
  %1050 = fmul fast float %1047, %1047
  %1051 = fmul fast float %1048, %1048
  %1052 = fadd fast float %1050, %1051
  %1053 = fmul fast float %1049, %1049
  %1054 = fadd fast float %1052, %1053
  %1055 = call float @dx.op.unary.f32(i32 24, float %1054)  ; Sqrt(value)
  %1056 = fsub fast float %1055, %968
  %1057 = fmul fast float %1056, %970
  %1058 = call float @dx.op.unary.f32(i32 7, float %1057)  ; Saturate(value)
  br label %1059

; <label>:1059                                    ; preds = %984, %980
  %1060 = phi float [ %1058, %984 ], [ 1.000000e+00, %980 ]
  %1061 = fmul fast float %977, 5.000000e-01
  %1062 = fadd fast float %1061, 5.000000e-01
  %1063 = call float @dx.op.unary.f32(i32 22, float %1062)  ; Frc(value)
  %1064 = call float @dx.op.unary.f32(i32 27, float %1063)  ; Round_ni(value)
  %1065 = call float @dx.op.unary.f32(i32 22, float %1063)  ; Frc(value)
  %1066 = fmul fast float %1065, 2.000000e+00
  %1067 = fadd fast float %1066, -1.000000e+00
  %1068 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %19, float %928, float %929, float %1064, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1069 = extractvalue %dx.types.ResRet.f32 %1068, 0
  %1070 = extractvalue %dx.types.ResRet.f32 %1068, 1
  %1071 = extractvalue %dx.types.ResRet.f32 %1068, 2
  %1072 = extractvalue %dx.types.ResRet.f32 %1068, 3
  %1073 = fadd fast float %1069, -5.000000e-01
  %1074 = fadd fast float %1071, -5.000000e-01
  %1075 = fmul fast float %1073, 0xBFD5555560000000
  %1076 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1074, float %1075)  ; FMad(a,b,c)
  %1077 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1070, float 0.000000e+00)  ; FMad(a,b,c)
  %1078 = fadd fast float %1077, %1072
  %1079 = fmul fast float %1073, -7.500000e-01
  %1080 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1074, float %1079)  ; FMad(a,b,c)
  %1081 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1070, float 0.000000e+00)  ; FMad(a,b,c)
  %1082 = fadd fast float %1081, %1072
  %1083 = call float @dx.op.binary.f32(i32 35, float %1076, float -1.000000e+00)  ; FMax(a,b)
  %1084 = call float @dx.op.binary.f32(i32 35, float %1078, float -1.000000e+00)  ; FMax(a,b)
  %1085 = call float @dx.op.binary.f32(i32 35, float %1080, float -1.000000e+00)  ; FMax(a,b)
  %1086 = call float @dx.op.binary.f32(i32 35, float %1082, float -1.000000e+00)  ; FMax(a,b)
  %1087 = call float @dx.op.binary.f32(i32 36, float %1083, float 1.000000e+00)  ; FMin(a,b)
  %1088 = call float @dx.op.binary.f32(i32 36, float %1084, float 1.000000e+00)  ; FMin(a,b)
  %1089 = call float @dx.op.binary.f32(i32 36, float %1085, float 1.000000e+00)  ; FMin(a,b)
  %1090 = call float @dx.op.binary.f32(i32 36, float %1086, float 1.000000e+00)  ; FMin(a,b)
  %1091 = fcmp fast olt float %1087, 0x3FEFFF8020000000
  br i1 %1091, label %1092, label %1207, !dx.controlflow.hints !74

; <label>:1092                                    ; preds = %1059
  %1093 = extractvalue %dx.types.CBufRet.f32 %975, 3
  %1094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1095 = extractvalue %dx.types.CBufRet.f32 %1094, 0
  %1096 = extractvalue %dx.types.CBufRet.f32 %1094, 1
  %1097 = extractvalue %dx.types.CBufRet.f32 %1094, 2
  %1098 = extractvalue %dx.types.CBufRet.f32 %1094, 3
  %1099 = fsub fast float %1095, %1087
  %1100 = fsub fast float %1096, %1088
  %1101 = fsub fast float %1097, %1089
  %1102 = fsub fast float %1098, %1090
  %1103 = fmul fast float %1099, %1093
  %1104 = fmul fast float %1100, %1093
  %1105 = fmul fast float %1101, %1093
  %1106 = fmul fast float %1102, %1093
  %1107 = fadd fast float %1103, %1087
  %1108 = fadd fast float %1104, %1088
  %1109 = fsub fast float -0.000000e+00, %1108
  %1110 = fadd fast float %1105, %1089
  %1111 = fadd fast float %1106, %1090
  %1112 = fmul fast float %1107, %1107
  %1113 = fsub fast float %1108, %1112
  %1114 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1113)  ; FMax(a,b)
  %1115 = fdiv fast float 1.000000e+00, %1114
  %1116 = fmul fast float %1108, %1107
  %1117 = fsub fast float %1110, %1116
  %1118 = fsub fast float %1067, %1107
  %1119 = fmul fast float %1067, %1067
  %1120 = fsub fast float %1119, %1108
  %1121 = fmul fast float %1118, %1115
  %1122 = fmul fast float %1121, %1117
  %1123 = fsub fast float %1120, %1122
  %1124 = fmul fast float %1108, %1108
  %1125 = fsub fast float %1111, %1124
  %1126 = fmul fast float %1117, %1117
  %1127 = fmul fast float %1126, %1115
  %1128 = fsub fast float %1125, %1127
  %1129 = fdiv fast float %1123, %1128
  %1130 = fmul fast float %1117, %1129
  %1131 = fsub fast float %1118, %1130
  %1132 = fmul fast float %1131, %1115
  %1133 = fmul fast float %1132, %1107
  %1134 = fsub fast float 1.000000e+00, %1133
  %1135 = fmul fast float %1108, %1129
  %1136 = fsub fast float %1134, %1135
  %1137 = fmul fast float %1132, %1132
  %1138 = fmul fast float %1129, 4.000000e+00
  %1139 = fmul fast float %1138, %1136
  %1140 = fsub fast float %1137, %1139
  %1141 = call float @dx.op.unary.f32(i32 24, float %1140)  ; Sqrt(value)
  %1142 = fcmp fast oge float %1132, 0.000000e+00
  %1143 = fsub fast float -0.000000e+00, %1141
  %1144 = select i1 %1142, float %1143, float %1141
  %1145 = fsub fast float %1144, %1132
  %1146 = fdiv fast float %1145, %1129
  %1147 = fdiv fast float %1136, %1145
  %1148 = fmul fast float %1146, 5.000000e-01
  %1149 = fmul fast float %1147, 2.000000e+00
  %1150 = select i1 %1142, float %1148, float %1149
  %1151 = select i1 %1142, float %1149, float %1148
  %1152 = call float @dx.op.binary.f32(i32 35, float %1150, float %1151)  ; FMax(a,b)
  %1153 = call float @dx.op.binary.f32(i32 36, float %1150, float %1151)  ; FMin(a,b)
  %1154 = fcmp fast ogt float %1067, %1153
  br i1 %1154, label %1155, label %1165

; <label>:1155                                    ; preds = %1092
  %1156 = fsub fast float %1067, %1153
  %1157 = fsub fast float %1152, %1153
  %1158 = fmul fast float %1156, %1157
  %1159 = fmul fast float %1152, %1067
  %1160 = fadd fast float %1152, %1067
  %1161 = fmul fast float %1160, %1107
  %1162 = fadd fast float %1159, %1108
  %1163 = fsub fast float %1162, %1161
  %1164 = fdiv fast float %1163, %1158
  br label %1165

; <label>:1165                                    ; preds = %1155, %1092
  %1166 = phi float [ %1164, %1155 ], [ 0.000000e+00, %1092 ]
  %1167 = fcmp fast ogt float %1067, %1152
  %1168 = fsub fast float %1067, %1152
  br i1 %1167, label %1169, label %1179

; <label>:1169                                    ; preds = %1165
  %1170 = fsub fast float %1152, %1153
  %1171 = fmul fast float %1170, %1168
  %1172 = fmul fast float %1153, %1067
  %1173 = fadd fast float %1153, %1067
  %1174 = fmul fast float %1173, %1107
  %1175 = fsub fast float %1109, %1172
  %1176 = fadd fast float %1175, %1174
  %1177 = fdiv fast float %1176, %1171
  %1178 = fadd fast float %1177, %1166
  br label %1179

; <label>:1179                                    ; preds = %1169, %1165
  %1180 = phi float [ %1178, %1169 ], [ %1166, %1165 ]
  %1181 = fsub fast float %1067, %1153
  %1182 = fmul fast float %1181, %1168
  %1183 = fmul fast float %1153, %1152
  %1184 = fadd fast float %1153, %1152
  %1185 = fmul fast float %1184, %1107
  %1186 = fadd fast float %1183, %1108
  %1187 = fsub fast float %1186, %1185
  %1188 = fdiv fast float %1187, %1182
  %1189 = call float @dx.op.unary.f32(i32 7, float %1180)  ; Saturate(value)
  %1190 = fcmp fast oeq float %764, 0.000000e+00
  %1191 = extractvalue %dx.types.CBufRet.f32 %975, 0
  %1192 = fcmp fast oeq float %1191, 0.000000e+00
  %1193 = or i1 %1190, %1192
  %1194 = fmul fast float %1191, 2.000000e+00
  %1195 = fadd fast float %976, %977
  %1196 = fdiv fast float %1195, %1194
  %1197 = call float @dx.op.unary.f32(i32 7, float %1196)  ; Saturate(value)
  %1198 = fmul fast float %1197, 2.000000e+00
  %1199 = fsub fast float 3.000000e+00, %1198
  %1200 = fmul fast float %1197, %1197
  %1201 = fmul fast float %1200, %1199
  %1202 = select i1 %1193, float 1.000000e+00, float %1201
  %1203 = fmul fast float %1188, %764
  %1204 = fadd fast float %1189, %1203
  %1205 = call float @dx.op.unary.f32(i32 7, float %1204)  ; Saturate(value)
  %1206 = fmul fast float %1202, %1205
  br label %1207

; <label>:1207                                    ; preds = %1179, %1059
  %1208 = phi float [ %1206, %1179 ], [ 0.000000e+00, %1059 ]
  %1209 = fsub fast float 1.000000e+00, %1208
  %1210 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %19, float %928, float %929, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1211 = extractvalue %dx.types.ResRet.f32 %1210, 0
  %1212 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1213 = extractvalue %dx.types.CBufRet.i32 %1212, 2
  %1214 = icmp eq i32 %1213, 0
  br i1 %1214, label %1220, label %1215

; <label>:1215                                    ; preds = %1207
  %1216 = call float @dx.op.unary.f32(i32 7, float %1208)  ; Saturate(value)
  %1217 = fadd fast float %1211, -1.000000e+00
  %1218 = fmul fast float %1216, %1217
  %1219 = fadd fast float %1218, 1.000000e+00
  br label %1220

; <label>:1220                                    ; preds = %1215, %1207
  %1221 = phi float [ %1219, %1215 ], [ %1209, %1207 ]
  br i1 %983, label %1222, label %1240

; <label>:1222                                    ; preds = %1220
  %1223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1224 = extractvalue %dx.types.CBufRet.f32 %1223, 1
  %1225 = fsub fast float %1060, %1224
  %1226 = call float @dx.op.unary.f32(i32 7, float %1225)  ; Saturate(value)
  %1227 = fsub fast float %1060, %982
  %1228 = call float @dx.op.unary.f32(i32 7, float %1227)  ; Saturate(value)
  %1229 = fsub fast float %1226, %1228
  %1230 = fsub fast float %1062, %1228
  %1231 = fdiv fast float %1230, %1229
  %1232 = call float @dx.op.unary.f32(i32 7, float %1231)  ; Saturate(value)
  %1233 = fmul fast float %1232, 2.000000e+00
  %1234 = fsub fast float 3.000000e+00, %1233
  %1235 = fsub fast float %1211, %1221
  %1236 = fmul fast float %1232, %1232
  %1237 = fmul fast float %1236, %1235
  %1238 = fmul fast float %1237, %1234
  %1239 = fadd fast float %1238, %1221
  br label %1240

; <label>:1240                                    ; preds = %1222, %1220
  %1241 = phi float [ %1239, %1222 ], [ %1221, %1220 ]
  %1242 = call float @dx.op.binary.f32(i32 35, float %1211, float %1241)  ; FMax(a,b)
  %1243 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %1244 = extractvalue %dx.types.CBufRet.i32 %1243, 2
  %1245 = and i32 %1244, 1
  %1246 = icmp eq i32 %1245, 0
  %1247 = fcmp fast une float %1242, 1.000000e+00
  %1248 = and i1 %1247, %1246
  br i1 %1248, label %1249, label %1268

; <label>:1249                                    ; preds = %1240
  %1250 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %19, float %928, float %929, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1251 = extractvalue %dx.types.ResRet.f32 %1250, 0
  %1252 = extractvalue %dx.types.ResRet.f32 %1250, 1
  %1253 = extractvalue %dx.types.ResRet.f32 %1250, 2
  %1254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1255 = extractvalue %dx.types.CBufRet.f32 %1254, 1
  %1256 = fmul fast float %1255, %1251
  %1257 = fmul fast float %1255, %1252
  %1258 = fmul fast float %1255, %1253
  %1259 = fcmp fast ogt float %1211, 0x3FEFFF2E40000000
  %1260 = fsub fast float 1.000000e+00, %1242
  %1261 = fsub fast float 1.000000e+00, %1211
  %1262 = fdiv fast float %1260, %1261
  %1263 = call float @dx.op.unary.f32(i32 7, float %1262)  ; Saturate(value)
  %1264 = select i1 %1259, float 0.000000e+00, float %1263
  %1265 = fmul fast float %1256, %1264
  %1266 = fmul fast float %1257, %1264
  %1267 = fmul fast float %1258, %1264
  br label %1268

; <label>:1268                                    ; preds = %1249, %1240
  %1269 = phi float [ 0.000000e+00, %1240 ], [ %1265, %1249 ]
  %1270 = phi float [ 0.000000e+00, %1240 ], [ %1266, %1249 ]
  %1271 = phi float [ 0.000000e+00, %1240 ], [ %1267, %1249 ]
  %1272 = fmul fast float %1269, %745
  %1273 = fmul fast float %1270, %745
  %1274 = fmul fast float %1271, %745
  %1275 = fmul fast float %1242, %906
  %1276 = call float @dx.op.dot3.f32(i32 55, float %1242, float %1242, float %1242, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1277 = call float @dx.op.dot3.f32(i32 55, float %1272, float %1273, float %1274, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1278 = select i1 %101, float %1276, float %1242
  %1279 = select i1 %101, float 1.000000e+00, float %1242
  %1280 = select i1 %101, float %1277, float %1272
  %1281 = select i1 %101, float 0.000000e+00, float %1273
  %1282 = select i1 %101, float 0.000000e+00, float %1274
  %1283 = fmul fast float %1278, %918
  %1284 = fmul fast float %1278, %919
  %1285 = fmul fast float %1279, %920
  %1286 = fadd fast float %1283, %1280
  %1287 = fadd fast float %1284, %1281
  %1288 = fadd fast float %1282, %1285
  br label %1289

; <label>:1289                                    ; preds = %1268, %924, %894, %888
  %1290 = phi float [ %890, %888 ], [ %918, %894 ], [ %1286, %1268 ], [ %918, %924 ]
  %1291 = phi float [ %891, %888 ], [ %919, %894 ], [ %1287, %1268 ], [ %919, %924 ]
  %1292 = phi float [ %892, %888 ], [ %920, %894 ], [ %1288, %1268 ], [ %920, %924 ]
  %1293 = phi float [ %893, %888 ], [ %906, %894 ], [ %1275, %1268 ], [ %906, %924 ]
  %1294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1295 = extractvalue %dx.types.CBufRet.f32 %1294, 2
  %1296 = extractvalue %dx.types.CBufRet.f32 %1294, 3
  %1297 = fmul fast float %1295, %43
  %1298 = fmul fast float %1296, %44
  %1299 = call float @dx.op.unary.f32(i32 7, float %1297)  ; Saturate(value)
  %1300 = call float @dx.op.unary.f32(i32 7, float %1298)  ; Saturate(value)
  %1301 = select i1 %781, i32 2, i32 0
  %1302 = or i32 %1301, 1
  %1303 = uitofp i32 %1302 to float
  %1304 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %19, float %1299, float %1300, float %1303, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1305 = extractvalue %dx.types.ResRet.f32 %1304, 0
  %1306 = extractvalue %dx.types.ResRet.f32 %1304, 1
  %1307 = extractvalue %dx.types.ResRet.f32 %1304, 2
  %1308 = extractvalue %dx.types.ResRet.f32 %1304, 3
  %1309 = add nuw nsw i32 %1301, 2
  %1310 = uitofp i32 %1309 to float
  %1311 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %19, float %1299, float %1300, float %1310, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1312 = extractvalue %dx.types.ResRet.f32 %1311, 0
  %1313 = extractvalue %dx.types.ResRet.f32 %1311, 1
  %1314 = extractvalue %dx.types.ResRet.f32 %1311, 2
  %1315 = extractvalue %dx.types.ResRet.f32 %1311, 3
  %1316 = call float @dx.op.binary.f32(i32 35, float %1306, float %1307)  ; FMax(a,b)
  %1317 = call float @dx.op.binary.f32(i32 35, float %1305, float %1316)  ; FMax(a,b)
  %1318 = call float @dx.op.binary.f32(i32 35, float %1317, float %1308)  ; FMax(a,b)
  %1319 = call float @dx.op.binary.f32(i32 36, float %1313, float %1314)  ; FMin(a,b)
  %1320 = call float @dx.op.binary.f32(i32 36, float %1312, float %1319)  ; FMin(a,b)
  %1321 = call float @dx.op.binary.f32(i32 36, float %1320, float %1315)  ; FMin(a,b)
  %1322 = fmul fast float %1318, 2.550000e+02
  %1323 = fadd fast float %1322, 0x3F70101020000000
  %1324 = fptoui float %1323 to i32
  %1325 = fmul fast float %1321, 2.550000e+02
  %1326 = fadd fast float %1325, 0x3F70101020000000
  %1327 = fptoui float %1326 to i32
  %1328 = icmp ult i32 %1324, %1327
  br i1 %1328, label %1329, label %1381

; <label>:1329                                    ; preds = %1289
  %1330 = fcmp fast ogt float %37, 9.843750e-01
  %1331 = fadd fast float %889, -4.000000e+00
  %1332 = select i1 %1330, float -4.000000e+00, float %1331
  %1333 = call float @dx.op.binary.f32(i32 35, float %1332, float 0.000000e+00)  ; FMax(a,b)
  %1334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1335 = extractvalue %dx.types.CBufRet.f32 %1334, 0
  %1336 = fadd fast float %1335, %1333
  %1337 = extractvalue %dx.types.CBufRet.f32 %1334, 2
  %1338 = fmul fast float %1336, %1337
  %1339 = call float @dx.op.unary.f32(i32 23, float %1338)  ; Log(value)
  %1340 = extractvalue %dx.types.CBufRet.f32 %1334, 3
  %1341 = fmul fast float %1340, %1339
  %1342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1343 = extractvalue %dx.types.CBufRet.f32 %1342, 2
  %1344 = fmul fast float %1341, %1343
  %1345 = call float @dx.op.unary.f32(i32 7, float %1344)  ; Saturate(value)
  %1346 = uitofp i32 %1324 to float
  %1347 = uitofp i32 %1327 to float
  %1348 = fadd fast float %1346, 5.000000e-01
  %1349 = fadd fast float %1347, 5.000000e-01
  %1350 = fmul fast float %1343, %1348
  %1351 = fmul fast float %1343, %1349
  %1352 = fadd fast float %1350, 0x3F0FFB4800000000
  %1353 = fadd fast float %1351, 0xBF0FFB4800000000
  %1354 = call float @dx.op.binary.f32(i32 35, float %1345, float %1352)  ; FMax(a,b)
  %1355 = call float @dx.op.binary.f32(i32 36, float %1354, float %1353)  ; FMin(a,b)
  %1356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1357 = extractvalue %dx.types.CBufRet.f32 %1356, 1
  %1358 = extractvalue %dx.types.CBufRet.f32 %1356, 2
  %1359 = extractvalue %dx.types.CBufRet.f32 %1356, 0
  %1360 = select i1 %781, float %1359, float 0.000000e+00
  %1361 = fmul fast float %1357, %1355
  %1362 = fadd fast float %1360, %1361
  %1363 = fadd fast float %1360, %1358
  %1364 = fsub fast float %1357, %1358
  %1365 = fadd fast float %1364, %1360
  %1366 = call float @dx.op.binary.f32(i32 35, float %1362, float %1363)  ; FMax(a,b)
  %1367 = call float @dx.op.binary.f32(i32 36, float %1366, float %1365)  ; FMin(a,b)
  %1368 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %17, float %1299, float %1300, float %1367, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1369 = extractvalue %dx.types.ResRet.f32 %1368, 0
  %1370 = extractvalue %dx.types.ResRet.f32 %1368, 1
  %1371 = extractvalue %dx.types.ResRet.f32 %1368, 2
  %1372 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %1299, float %1300, float %1367, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1373 = extractvalue %dx.types.ResRet.f32 %1372, 0
  %1374 = extractvalue %dx.types.ResRet.f32 %1372, 1
  %1375 = extractvalue %dx.types.ResRet.f32 %1372, 2
  %1376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1377 = extractvalue %dx.types.CBufRet.f32 %1376, 1
  %1378 = fmul fast float %1377, %1373
  %1379 = fmul fast float %1377, %1374
  %1380 = fmul fast float %1377, %1375
  br label %1381

; <label>:1381                                    ; preds = %1329, %1289
  %1382 = phi float [ %1369, %1329 ], [ 1.000000e+00, %1289 ]
  %1383 = phi float [ %1370, %1329 ], [ 1.000000e+00, %1289 ]
  %1384 = phi float [ %1371, %1329 ], [ 1.000000e+00, %1289 ]
  %1385 = phi float [ %1378, %1329 ], [ 0.000000e+00, %1289 ]
  %1386 = phi float [ %1379, %1329 ], [ 0.000000e+00, %1289 ]
  %1387 = phi float [ %1380, %1329 ], [ 0.000000e+00, %1289 ]
  %1388 = fmul fast float %1385, %745
  %1389 = fmul fast float %1386, %745
  %1390 = fmul fast float %1387, %745
  %1391 = fmul fast float %1382, %1293
  %1392 = call float @dx.op.dot3.f32(i32 55, float %1382, float %1383, float %1384, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1393 = call float @dx.op.dot3.f32(i32 55, float %1388, float %1389, float %1390, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1394 = select i1 %101, float %1392, float %1382
  %1395 = select i1 %101, float %1392, float %1383
  %1396 = select i1 %101, float 1.000000e+00, float %1384
  %1397 = select i1 %101, float %1393, float %1388
  %1398 = select i1 %101, float 0.000000e+00, float %1389
  %1399 = select i1 %101, float 0.000000e+00, float %1390
  %1400 = fmul fast float %1394, %1290
  %1401 = fmul fast float %1395, %1291
  %1402 = fmul fast float %1396, %1292
  %1403 = fadd fast float %1400, %1397
  %1404 = fadd fast float %1401, %1398
  %1405 = fadd fast float %1399, %1402
  %1406 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1407 = extractvalue %dx.types.CBufRet.i32 %1406, 3
  %1408 = and i32 %1407, 3
  %1409 = icmp ne i32 %1408, 0
  %1410 = and i32 %1407, 4
  %1411 = icmp ne i32 %1410, 0
  %1412 = and i1 %1409, %1411
  %1413 = and i1 %101, %1412
  br i1 %1413, label %1414, label %1420

; <label>:1414                                    ; preds = %1381
  %1415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1416 = extractvalue %dx.types.CBufRet.f32 %1415, 1
  %1417 = fadd fast float %1391, -1.000000e+00
  %1418 = fmul fast float %1416, %1417
  %1419 = fadd fast float %1418, 1.000000e+00
  br label %1420

; <label>:1420                                    ; preds = %1414, %1381
  %1421 = phi float [ %1419, %1414 ], [ %1391, %1381 ]
  %1422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1423 = extractvalue %dx.types.CBufRet.f32 %1422, 0
  br i1 %101, label %1424, label %1446

; <label>:1424                                    ; preds = %1420
  %1425 = fadd fast float %1403, %1404
  %1426 = fmul fast float %1423, %1425
  %1427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1428 = extractvalue %dx.types.CBufRet.f32 %1427, 3
  %1429 = extractvalue %dx.types.CBufRet.f32 %750, 1
  %1430 = fsub fast float %753, %1429
  %1431 = extractvalue %dx.types.CBufRet.f32 %750, 2
  %1432 = fmul fast float %1430, %1431
  %1433 = call float @dx.op.unary.f32(i32 7, float %1432)  ; Saturate(value)
  %1434 = fsub fast float %1433, %1428
  %1435 = fmul fast float %1434, %1421
  %1436 = fadd fast float %1435, %1428
  %1437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1438 = extractvalue %dx.types.CBufRet.f32 %1437, 0
  %1439 = fsub fast float %1436, %1438
  %1440 = fmul fast float %1439, 1.000000e+01
  %1441 = call float @dx.op.unary.f32(i32 7, float %1440)  ; Saturate(value)
  %1442 = fsub fast float %724, %745
  %1443 = fmul fast float %1441, %1442
  %1444 = fadd fast float %1443, %745
  %1445 = fmul fast float %1444, %1436
  br label %1455

; <label>:1446                                    ; preds = %1420
  %1447 = fmul fast float %1423, %1403
  %1448 = fmul fast float %1423, %1404
  %1449 = fmul fast float %1423, %1405
  %1450 = call float @dx.op.binary.f32(i32 35, float %1448, float %1449)  ; FMax(a,b)
  %1451 = call float @dx.op.binary.f32(i32 35, float %1447, float %1450)  ; FMax(a,b)
  %1452 = call float @dx.op.binary.f32(i32 35, float %1451, float %745)  ; FMax(a,b)
  %1453 = fcmp fast ugt float %1452, 0x3F10000000000000
  br i1 %1453, label %1455, label %1454

; <label>:1454                                    ; preds = %1446
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1455

; <label>:1455                                    ; preds = %1454, %1446, %1424
  %1456 = phi float [ %1426, %1424 ], [ %1447, %1454 ], [ %1447, %1446 ]
  %1457 = phi float [ %1445, %1424 ], [ %1448, %1454 ], [ %1448, %1446 ]
  %1458 = phi float [ %1444, %1424 ], [ %1449, %1454 ], [ %1449, %1446 ]
  %1459 = phi float [ %1444, %1424 ], [ %745, %1454 ], [ %745, %1446 ]
  %1460 = fadd fast float %521, 0x3FE3C6EF40000000
  %1461 = call float @dx.op.unary.f32(i32 22, float %1460)  ; Frc(value)
  %1462 = call float @dx.op.unary.f32(i32 23, float %1456)  ; Log(value)
  %1463 = fadd fast float %1462, -7.000000e+00
  %1464 = call float @dx.op.unary.f32(i32 21, float %1463)  ; Exp(value)
  %1465 = fmul fast float %1461, 2.000000e+00
  %1466 = fadd fast float %1465, -1.000000e+00
  %1467 = fmul fast float %1464, %1466
  %1468 = fcmp fast ogt float %1456, 0.000000e+00
  %1469 = select i1 %1468, float %1467, float 0.000000e+00
  %1470 = fadd fast float %1469, %1456
  %1471 = fadd fast float %521, 0x3FF3C6EF40000000
  %1472 = call float @dx.op.unary.f32(i32 22, float %1471)  ; Frc(value)
  %1473 = call float @dx.op.unary.f32(i32 23, float %1457)  ; Log(value)
  %1474 = fadd fast float %1473, -7.000000e+00
  %1475 = call float @dx.op.unary.f32(i32 21, float %1474)  ; Exp(value)
  %1476 = fmul fast float %1472, 2.000000e+00
  %1477 = fadd fast float %1476, -1.000000e+00
  %1478 = fmul fast float %1475, %1477
  %1479 = fcmp fast ogt float %1457, 0.000000e+00
  %1480 = select i1 %1479, float %1478, float 0.000000e+00
  %1481 = fadd fast float %1480, %1457
  %1482 = fadd fast float %521, 0x3FFDAA66E0000000
  %1483 = call float @dx.op.unary.f32(i32 22, float %1482)  ; Frc(value)
  %1484 = call float @dx.op.unary.f32(i32 23, float %1458)  ; Log(value)
  %1485 = fadd fast float %1484, -6.000000e+00
  %1486 = call float @dx.op.unary.f32(i32 21, float %1485)  ; Exp(value)
  %1487 = fmul fast float %1483, 2.000000e+00
  %1488 = fadd fast float %1487, -1.000000e+00
  %1489 = fmul fast float %1486, %1488
  %1490 = fcmp fast ogt float %1458, 0.000000e+00
  %1491 = select i1 %1490, float %1489, float 0.000000e+00
  %1492 = fadd fast float %1491, %1458
  %1493 = select i1 %101, float %1457, float %1481
  %1494 = select i1 %101, float %1458, float %1492
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1495 = call float @dx.op.binary.f32(i32 36, float %1470, float 3.225500e+04)  ; FMin(a,b)
  %1496 = call float @dx.op.binary.f32(i32 36, float %1493, float 3.225500e+04)  ; FMin(a,b)
  %1497 = call float @dx.op.binary.f32(i32 36, float %1494, float 3.225500e+04)  ; FMin(a,b)
  %1498 = call float @dx.op.binary.f32(i32 36, float %1459, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1495)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1496)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1497)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1498)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1459)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1459)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1459)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1459)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!36}
!dx.entryPoints = !{!37}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !27, !30}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !18, !19, !20, !21, !23, !24, !25, !26}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 77, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!15 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!16 = !{i32 9, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !17}
!17 = !{i32 0, i32 5}
!18 = !{i32 10, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!19 = !{i32 11, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!20 = !{i32 12, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!21 = !{i32 13, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !22}
!22 = !{i32 0, i32 14}
!23 = !{i32 14, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!24 = !{i32 15, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!25 = !{i32 16, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 7, i32 0, !7}
!26 = !{i32 17, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 3, i32 1, i32 11, i32 0, null}
!27 = !{!28, !29}
!28 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!29 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!30 = !{!31, !32, !33, !34, !35}
!31 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!32 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!33 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!34 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!35 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!36 = !{[30 x i32] [i32 28, i32 8, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 254, i32 255, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255, i32 255, i32 0, i32 255, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 255, i32 0, i32 0, i32 0]}
!37 = !{void ()* @ps_main, !"ps_main", !38, !4, !62}
!38 = !{!39, !58, null}
!39 = !{!40, !43, !44, !46, !49, !51, !53, !55, !57}
!40 = !{i32 0, !"SV_Position", i8 9, i8 3, !41, i8 4, i32 1, i8 4, i32 0, i8 0, !42}
!41 = !{i32 0}
!42 = !{i32 3, i32 15}
!43 = !{i32 1, !"COLOR", i8 9, i8 0, !41, i8 2, i32 1, i8 4, i32 1, i8 0, !42}
!44 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !41, i8 2, i32 1, i8 2, i32 2, i8 0, !45}
!45 = !{i32 3, i32 3}
!46 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !47, i8 2, i32 1, i8 4, i32 3, i8 0, !48}
!47 = !{i32 3}
!48 = !{i32 3, i32 7}
!49 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !50, i8 3, i32 1, i8 2, i32 4, i8 0, !45}
!50 = !{i32 5}
!51 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 5, i8 0, null}
!52 = !{i32 8}
!53 = !{i32 6, !"COLOR", i8 5, i8 0, !47, i8 1, i32 1, i8 3, i32 6, i8 0, !54}
!54 = !{i32 3, i32 1}
!55 = !{i32 7, !"COLOR", i8 5, i8 0, !56, i8 1, i32 1, i8 1, i32 6, i8 3, null}
!56 = !{i32 4}
!57 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !41, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!58 = !{!59, !60}
!59 = !{i32 0, !"SV_Target", i8 9, i8 16, !41, i8 0, i32 1, i8 4, i32 0, i8 0, !42}
!60 = !{i32 1, !"SV_Target", i8 9, i8 16, !61, i8 0, i32 1, i8 4, i32 1, i8 0, !42}
!61 = !{i32 1}
!62 = !{i32 0, i64 24}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 1}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 1}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 1}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 1}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 1}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 1}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 1}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 1}

