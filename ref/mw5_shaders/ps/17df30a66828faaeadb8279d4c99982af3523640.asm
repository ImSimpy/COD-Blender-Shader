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
; shader hash: 15820f238d04f4344f0b02c86b4b4023
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
  %164 = add i32 %23, 72
  %165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %164, i32 undef)  ; BufferLoad(srv,index,wot)
  %166 = extractvalue %dx.types.ResRet.i32 %165, 0
  %167 = extractvalue %dx.types.ResRet.i32 %165, 1
  %168 = bitcast i32 %166 to float
  %169 = bitcast i32 %167 to float
  %170 = fmul fast float %168, %33
  %171 = fmul fast float %169, %34
  %172 = call float @dx.op.unary.f32(i32 22, float %170)  ; Frc(value)
  %173 = call float @dx.op.unary.f32(i32 22, float %171)  ; Frc(value)
  %174 = and i32 %125, 16
  %175 = icmp ne i32 %174, 0
  %176 = select i1 %175, float 1.000000e+00, float %38
  %177 = add i32 %23, 124
  %178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %177, i32 undef)  ; BufferLoad(srv,index,wot)
  %179 = extractvalue %dx.types.ResRet.i32 %178, 0
  %180 = add i32 %179, 0
  %181 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %180, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %183 = extractvalue %dx.types.CBufRet.f32 %182, 2
  %184 = call %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32 61, %dx.types.Handle %181, %dx.types.Handle %44, float %162, float %163, float undef, float undef, i32 0, i32 0, i32 undef, float %183, float undef)  ; SampleBias(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,bias,clamp)
  %185 = extractvalue %dx.types.ResRet.f32 %184, 0
  %186 = fmul fast float %185, %176
  %187 = icmp eq i32 %174, 0
  br i1 %187, label %207, label %188, !dx.controlflow.hints !60

; <label>:188                                     ; preds = %161
  %189 = add i32 %122, 64
  %190 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %189, i32 undef)  ; BufferLoad(srv,index,wot)
  %191 = extractvalue %dx.types.ResRet.f32 %190, 0
  %192 = fadd fast float %191, 1.000000e+00
  %193 = fmul fast float %192, %38
  %194 = fsub fast float %193, %191
  %195 = fsub fast float %192, %194
  %196 = call float @dx.op.unary.f32(i32 7, float %195)  ; Saturate(value)
  %197 = fsub fast float 1.000000e+00, %193
  %198 = call float @dx.op.unary.f32(i32 7, float %197)  ; Saturate(value)
  %199 = fsub fast float %196, %198
  %200 = fsub fast float %186, %198
  %201 = fdiv fast float %200, %199
  %202 = call float @dx.op.unary.f32(i32 7, float %201)  ; Saturate(value)
  %203 = fmul fast float %202, 2.000000e+00
  %204 = fsub fast float 3.000000e+00, %203
  %205 = fmul fast float %202, %202
  %206 = fmul fast float %205, %204
  br label %207

; <label>:207                                     ; preds = %188, %161
  %208 = phi float [ %206, %188 ], [ %186, %161 ]
  %209 = fcmp fast ogt float %208, 0.000000e+00
  br i1 %209, label %211, label %210

; <label>:210                                     ; preds = %207
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %211

; <label>:211                                     ; preds = %210, %207
  %212 = call float @dx.op.unary.f32(i32 7, float %208)  ; Saturate(value)
  %213 = fmul fast float %47, 5.000000e-01
  %214 = fmul fast float %48, 5.000000e-01
  %215 = fptosi float %213 to i32
  %216 = fptosi float %214 to i32
  %217 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %215, i32 %216, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %218 = extractvalue %dx.types.ResRet.i32 %217, 0
  %219 = lshr i32 %218, 18
  %220 = uitofp i32 %219 to float
  %221 = fmul fast float %220, 0x3F4C00EBA0000000
  %222 = call float @dx.op.unary.f32(i32 21, float %221)  ; Exp(value)
  %223 = fadd fast float %222, -1.000000e+00
  %224 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %9, i32 0)  ; GetDimensions(handle,mipLevel)
  %225 = extractvalue %dx.types.Dimensions %224, 0
  %226 = sitofp i32 %225 to float
  %227 = extractvalue %dx.types.Dimensions %224, 1
  %228 = sitofp i32 %227 to float
  %229 = fcmp fast oge float %213, %226
  %230 = fcmp fast oge float %214, %228
  %231 = or i1 %229, %230
  %232 = select i1 %231, float 0x4197782600000000, float %223
  %233 = fsub fast float %232, %42
  %234 = fcmp fast ogt float %233, 0.000000e+00
  %235 = and i32 %121, -2
  %236 = icmp eq i32 %235, 2
  %237 = and i1 %236, %234
  %238 = xor i1 %234, true
  %239 = icmp eq i32 %121, 1
  %240 = and i1 %239, %238
  %241 = or i1 %237, %240
  %242 = and i32 %125, 262144
  %243 = icmp ne i32 %242, 0
  %244 = and i1 %243, %241
  %245 = xor i1 %241, true
  %246 = and i32 %125, 131072
  %247 = icmp ne i32 %246, 0
  %248 = and i1 %247, %245
  %249 = or i1 %244, %248
  br i1 %249, label %250, label %251

; <label>:250                                     ; preds = %211
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %251

; <label>:251                                     ; preds = %250, %211
  %252 = and i32 %125, 32
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %503, label %254, !dx.controlflow.hints !61

; <label>:254                                     ; preds = %251
  %255 = add i32 %122, 80
  %256 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %255, i32 undef)  ; BufferLoad(srv,index,wot)
  %257 = extractvalue %dx.types.ResRet.f32 %256, 0
  %258 = extractvalue %dx.types.ResRet.f32 %256, 1
  %259 = extractvalue %dx.types.ResRet.f32 %256, 2
  %260 = extractvalue %dx.types.ResRet.f32 %256, 3
  %261 = add i32 %122, 96
  %262 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %261, i32 undef)  ; BufferLoad(srv,index,wot)
  %263 = extractvalue %dx.types.ResRet.f32 %262, 0
  %264 = extractvalue %dx.types.ResRet.f32 %262, 1
  %265 = extractvalue %dx.types.ResRet.f32 %262, 2
  %266 = add i32 %122, 112
  %267 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %266, i32 undef)  ; BufferLoad(srv,index,wot)
  %268 = extractvalue %dx.types.ResRet.f32 %267, 0
  %269 = extractvalue %dx.types.ResRet.f32 %267, 1
  %270 = extractvalue %dx.types.ResRet.f32 %267, 2
  %271 = extractvalue %dx.types.ResRet.f32 %267, 3
  %272 = add i32 %122, 128
  %273 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %272, i32 undef)  ; BufferLoad(srv,index,wot)
  %274 = extractvalue %dx.types.ResRet.f32 %273, 0
  %275 = extractvalue %dx.types.ResRet.f32 %273, 1
  %276 = extractvalue %dx.types.ResRet.f32 %273, 2
  %277 = extractvalue %dx.types.ResRet.f32 %273, 3
  %278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %123, i32 undef)  ; BufferLoad(srv,index,wot)
  %279 = extractvalue %dx.types.ResRet.i32 %278, 0
  %280 = and i32 %279, 4096
  %281 = icmp ne i32 %280, 0
  %282 = fcmp fast une float %265, 0.000000e+00
  %283 = and i32 %279, 64
  %284 = icmp ne i32 %283, 0
  %285 = and i32 %279, 128
  %286 = icmp eq i32 %285, 0
  %287 = and i32 %279, 2048
  %288 = icmp eq i32 %287, 0
  %289 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %12, i32 0)  ; GetDimensions(handle,mipLevel)
  %290 = extractvalue %dx.types.Dimensions %289, 0
  %291 = sitofp i32 %290 to float
  %292 = extractvalue %dx.types.Dimensions %289, 1
  %293 = sitofp i32 %292 to float
  %294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %295 = extractvalue %dx.types.CBufRet.f32 %294, 2
  %296 = extractvalue %dx.types.CBufRet.f32 %294, 3
  %297 = fmul fast float %295, %47
  %298 = fmul fast float %296, %48
  %299 = fmul fast float %297, %291
  %300 = fmul fast float %298, %293
  %301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %302 = extractvalue %dx.types.CBufRet.f32 %301, 1
  %303 = fsub fast float -0.000000e+00, %302
  %304 = fptoui float %303 to i32
  %305 = fptoui float %299 to i32
  %306 = fptoui float %300 to i32
  %307 = and i32 %304, 31
  %308 = lshr i32 %305, %307
  %309 = lshr i32 %306, %307
  %310 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 %304, i32 %308, i32 %309, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %311 = extractvalue %dx.types.ResRet.f32 %310, 0
  %312 = fcmp fast ogt float %311, -1.000000e+00
  %313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %314 = extractvalue %dx.types.CBufRet.f32 %313, 1
  %315 = select i1 %312, float %314, float 1.000000e+00
  %316 = fadd fast float %311, 1.000000e+00
  %317 = fmul fast float %315, %316
  %318 = call float @dx.op.unary.f32(i32 6, float %317)  ; FAbs(value)
  %319 = extractvalue %dx.types.CBufRet.f32 %313, 3
  %320 = fcmp fast oge float %318, %319
  %321 = select i1 %320, float 0x4197782600000000, float %318
  br i1 %288, label %399, label %322, !dx.controlflow.hints !62

; <label>:322                                     ; preds = %254
  %323 = fmul fast float %52, %295
  %324 = fmul fast float %54, %296
  %325 = fsub fast float 1.000000e+00, %323
  %326 = fsub fast float 1.000000e+00, %324
  %327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %328 = extractvalue %dx.types.CBufRet.f32 %327, 0
  %329 = extractvalue %dx.types.CBufRet.f32 %327, 1
  %330 = extractvalue %dx.types.CBufRet.f32 %327, 2
  %331 = fmul fast float %325, %328
  %332 = fmul fast float %325, %329
  %333 = fmul fast float %325, %330
  %334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %335 = extractvalue %dx.types.CBufRet.f32 %334, 0
  %336 = extractvalue %dx.types.CBufRet.f32 %334, 1
  %337 = extractvalue %dx.types.CBufRet.f32 %334, 2
  %338 = fmul fast float %326, %335
  %339 = fmul fast float %326, %336
  %340 = fmul fast float %326, %337
  %341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %342 = extractvalue %dx.types.CBufRet.f32 %341, 0
  %343 = extractvalue %dx.types.CBufRet.f32 %341, 1
  %344 = extractvalue %dx.types.CBufRet.f32 %341, 2
  %345 = fadd fast float %338, %342
  %346 = fadd fast float %345, %331
  %347 = fadd fast float %339, %343
  %348 = fadd fast float %347, %332
  %349 = fadd fast float %340, %344
  %350 = fadd fast float %349, %333
  %351 = fmul fast float %346, %321
  %352 = fmul fast float %348, %321
  %353 = fmul fast float %350, %321
  %354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %355 = extractvalue %dx.types.CBufRet.f32 %354, 0
  %356 = extractvalue %dx.types.CBufRet.f32 %354, 1
  %357 = extractvalue %dx.types.CBufRet.f32 %354, 2
  %358 = fsub fast float %355, %24
  %359 = fadd fast float %358, %351
  %360 = fsub fast float %356, %25
  %361 = fadd fast float %360, %352
  %362 = fsub fast float %357, %26
  %363 = fadd fast float %362, %353
  %364 = fmul fast float %27, %27
  %365 = call float @dx.op.dot3.f32(i32 55, float %359, float %361, float %363, float %359, float %361, float %363)  ; Dot3(ax,ay,az,bx,by,bz)
  %366 = fsub fast float %364, %365
  %367 = fmul fast float %264, %364
  %368 = fmul fast float %263, %364
  %369 = fcmp fast olt float %366, %367
  %370 = fcmp fast ogt float %366, %368
  %371 = or i1 %369, %370
  %372 = select i1 %371, float 0.000000e+00, float %366
  %373 = fsub fast float %263, %264
  %374 = fmul fast float %373, %364
  %375 = fsub fast float %372, %367
  %376 = fdiv fast float %375, %374
  %377 = call float @dx.op.unary.f32(i32 7, float %376)  ; Saturate(value)
  %378 = fmul fast float %377, 2.000000e+00
  %379 = fsub fast float 3.000000e+00, %378
  %380 = fmul fast float %377, %377
  %381 = fmul fast float %380, %379
  %382 = fmul fast float %268, %35
  %383 = fmul fast float %269, %36
  %384 = fmul fast float %270, %37
  %385 = fsub fast float %382, %274
  %386 = fsub fast float %383, %275
  %387 = fsub fast float %384, %276
  %388 = fsub fast float %271, %277
  %389 = fmul fast float %381, %385
  %390 = fmul fast float %381, %386
  %391 = fmul fast float %381, %387
  %392 = fmul fast float %381, %388
  %393 = fadd fast float %389, %274
  %394 = fadd fast float %390, %275
  %395 = fadd fast float %391, %276
  %396 = fadd fast float %392, %277
  %397 = fmul fast float %257, %257
  %398 = fmul fast float %397, %372
  br label %494

; <label>:399                                     ; preds = %254
  %400 = and i32 %279, 256
  %401 = icmp eq i32 %400, 0
  %402 = fsub fast float %321, %42
  br i1 %401, label %451, label %403

; <label>:403                                     ; preds = %399
  %404 = fadd fast float %263, %42
  %405 = fcmp fast olt float %321, %42
  %406 = fcmp fast ogt float %321, %404
  %407 = or i1 %405, %406
  %408 = select i1 %407, float 0.000000e+00, float %402
  %409 = call float @dx.op.unary.f32(i32 83, float %321)  ; DerivCoarseX(value)
  %410 = call float @dx.op.unary.f32(i32 84, float %321)  ; DerivCoarseY(value)
  %411 = fmul fast float %409, %409
  %412 = fmul fast float %410, %410
  %413 = fadd fast float %412, %411
  %414 = call float @dx.op.unary.f32(i32 24, float %413)  ; Sqrt(value)
  %415 = extractvalue %dx.types.CBufRet.f32 %301, 2
  %416 = fmul fast float %415, %414
  %417 = call float @dx.op.unary.f32(i32 7, float %416)  ; Saturate(value)
  %418 = fmul fast float %417, %264
  %419 = fdiv fast float %402, %418
  %420 = call float @dx.op.unary.f32(i32 7, float %419)  ; Saturate(value)
  %421 = fmul fast float %420, 2.000000e+00
  %422 = fsub fast float 3.000000e+00, %421
  %423 = fmul fast float %420, %420
  %424 = fmul fast float %423, %422
  %425 = fsub fast float %321, %404
  %426 = fadd fast float %425, %418
  %427 = fdiv fast float %426, %418
  %428 = call float @dx.op.unary.f32(i32 7, float %427)  ; Saturate(value)
  %429 = fmul fast float %428, 2.000000e+00
  %430 = fsub fast float 3.000000e+00, %429
  %431 = fmul fast float %428, %428
  %432 = fmul fast float %431, %430
  %433 = fsub fast float %424, %432
  %434 = fmul fast float %268, %35
  %435 = fmul fast float %269, %36
  %436 = fmul fast float %270, %37
  %437 = fsub fast float %434, %274
  %438 = fsub fast float %435, %275
  %439 = fsub fast float %436, %276
  %440 = fsub fast float %271, %277
  %441 = fmul fast float %433, %437
  %442 = fmul fast float %433, %438
  %443 = fmul fast float %433, %439
  %444 = fmul fast float %433, %440
  %445 = fadd fast float %441, %274
  %446 = fadd fast float %442, %275
  %447 = fadd fast float %443, %276
  %448 = fadd fast float %444, %277
  %449 = fmul fast float %408, %257
  %450 = call float @dx.op.unary.f32(i32 6, float %449)  ; FAbs(value)
  br label %494

; <label>:451                                     ; preds = %399
  br i1 %282, label %452, label %465

; <label>:452                                     ; preds = %451
  %453 = fdiv fast float 5.000000e+01, %27
  %454 = select i1 %284, float %453, float 1.000000e+00
  %455 = fmul fast float %454, %257
  %456 = fmul fast float %172, 2.000000e+00
  %457 = fmul fast float %173, 2.000000e+00
  %458 = fadd fast float %456, -1.000000e+00
  %459 = fadd fast float %457, -1.000000e+00
  %460 = call float @dx.op.dot2.f32(i32 54, float %458, float %459, float %458, float %459)  ; Dot2(ax,ay,bx,by)
  %461 = fmul fast float %265, %27
  %462 = fmul fast float %461, %460
  %463 = fsub fast float %402, %462
  %464 = fmul fast float %455, %463
  br label %494

; <label>:465                                     ; preds = %451
  br i1 %286, label %486, label %466

; <label>:466                                     ; preds = %465
  %467 = fmul fast float %27, 0x3F947AE140000000
  %468 = select i1 %284, float %467, float 1.000000e+00
  %469 = fdiv fast float 1.000000e+00, %468
  %470 = fmul fast float %468, %258
  %471 = fmul fast float %468, %259
  %472 = fmul fast float %469, %260
  %473 = call float @dx.op.unary.f32(i32 6, float %402)  ; FAbs(value)
  %474 = fcmp fast olt float %473, %470
  br i1 %474, label %475, label %479, !dx.controlflow.hints !63

; <label>:475                                     ; preds = %466
  %476 = fmul fast float %469, %257
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
  %487 = fdiv fast float 5.000000e+01, %27
  %488 = select i1 %284, float %487, float 1.000000e+00
  %489 = fmul fast float %488, %257
  %490 = call float @dx.op.unary.f32(i32 6, float %233)  ; FAbs(value)
  %491 = select i1 %281, float %490, float 0x47EFFFFFE0000000
  %492 = call float @dx.op.binary.f32(i32 36, float %402, float %491)  ; FMin(a,b)
  %493 = fmul fast float %489, %492
  br label %494

; <label>:494                                     ; preds = %486, %481, %479, %475, %452, %403, %322
  %495 = phi float [ %398, %322 ], [ %450, %403 ], [ %464, %452 ], [ %493, %486 ], [ %478, %475 ], [ %485, %481 ], [ %473, %479 ]
  %496 = phi float [ %393, %322 ], [ %445, %403 ], [ %35, %452 ], [ %35, %486 ], [ %35, %475 ], [ %35, %481 ], [ %35, %479 ]
  %497 = phi float [ %394, %322 ], [ %446, %403 ], [ %36, %452 ], [ %36, %486 ], [ %36, %475 ], [ %36, %481 ], [ %36, %479 ]
  %498 = phi float [ %395, %322 ], [ %447, %403 ], [ %37, %452 ], [ %37, %486 ], [ %37, %475 ], [ %37, %481 ], [ %37, %479 ]
  %499 = phi float [ %396, %322 ], [ %448, %403 ], [ 1.000000e+00, %452 ], [ 1.000000e+00, %486 ], [ 1.000000e+00, %475 ], [ 1.000000e+00, %481 ], [ 1.000000e+00, %479 ]
  %500 = call float @dx.op.unary.f32(i32 7, float %495)  ; Saturate(value)
  %501 = fmul fast float %499, %212
  %502 = fmul fast float %501, %500
  br label %503

; <label>:503                                     ; preds = %494, %251
  %504 = phi float [ %496, %494 ], [ %35, %251 ]
  %505 = phi float [ %497, %494 ], [ %36, %251 ]
  %506 = phi float [ %498, %494 ], [ %37, %251 ]
  %507 = phi float [ %502, %494 ], [ %212, %251 ]
  %508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %509 = extractvalue %dx.types.CBufRet.f32 %508, 2
  %510 = fptosi float %42 to i32
  %511 = sitofp i32 %510 to float
  %512 = fadd fast float %509, %511
  %513 = fmul fast float %512, 0x3FE3C6EF40000000
  %514 = frem fast float %47, 2.560000e+02
  %515 = frem fast float %48, 2.560000e+02
  %516 = fptoui float %514 to i32
  %517 = fptoui float %515 to i32
  %518 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %516, i32 %517, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %519 = extractvalue %dx.types.ResRet.f32 %518, 0
  %520 = fadd fast float %519, %513
  %521 = call float @dx.op.unary.f32(i32 22, float %520)  ; Frc(value)
  %522 = and i32 %125, 1
  %523 = icmp eq i32 %522, 0
  br i1 %523, label %580, label %524, !dx.controlflow.hints !64

; <label>:524                                     ; preds = %503
  %525 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %122, i32 undef)  ; BufferLoad(srv,index,wot)
  %526 = extractvalue %dx.types.ResRet.f32 %525, 2
  %527 = extractvalue %dx.types.ResRet.f32 %525, 3
  %528 = add i32 %122, 16
  %529 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %528, i32 undef)  ; BufferLoad(srv,index,wot)
  %530 = extractvalue %dx.types.ResRet.f32 %529, 0
  %531 = extractvalue %dx.types.ResRet.f32 %529, 1
  %532 = extractvalue %dx.types.ResRet.f32 %529, 2
  %533 = add i32 %122, 32
  %534 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %533, i32 undef)  ; BufferLoad(srv,index,wot)
  %535 = extractvalue %dx.types.ResRet.f32 %534, 0
  %536 = extractvalue %dx.types.ResRet.f32 %534, 1
  %537 = extractvalue %dx.types.ResRet.f32 %534, 2
  %538 = and i32 %125, 2
  %539 = icmp eq i32 %538, 0
  %540 = call float @dx.op.dot3.f32(i32 55, float %30, float %31, float %32, float %30, float %31, float %32)  ; Dot3(ax,ay,az,bx,by,bz)
  %541 = call float @dx.op.unary.f32(i32 25, float %540)  ; Rsqrt(value)
  %542 = fmul fast float %541, %30
  %543 = fmul fast float %541, %31
  %544 = fmul fast float %541, %32
  %545 = call float @dx.op.dot3.f32(i32 55, float %82, float %83, float %84, float %82, float %83, float %84)  ; Dot3(ax,ay,az,bx,by,bz)
  %546 = call float @dx.op.unary.f32(i32 25, float %545)  ; Rsqrt(value)
  %547 = fmul fast float %546, %82
  %548 = fmul fast float %546, %83
  %549 = fmul fast float %546, %84
  %550 = call float @dx.op.dot3.f32(i32 55, float %547, float %548, float %549, float %542, float %543, float %544)  ; Dot3(ax,ay,az,bx,by,bz)
  %551 = fmul fast float %550, %550
  %552 = fmul fast float %551, %526
  %553 = fadd fast float %552, %527
  %554 = call float @dx.op.unary.f32(i32 7, float %553)  ; Saturate(value)
  br i1 %539, label %555, label %565, !dx.controlflow.hints !65

; <label>:555                                     ; preds = %524
  %556 = extractvalue %dx.types.ResRet.f32 %525, 1
  %557 = extractvalue %dx.types.ResRet.f32 %525, 0
  %558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
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
  %576 = fmul fast float %573, %504
  %577 = fmul fast float %574, %505
  %578 = fmul fast float %575, %506
  %579 = fmul fast float %566, %507
  br label %580

; <label>:580                                     ; preds = %565, %503
  %581 = phi float [ %576, %565 ], [ %504, %503 ]
  %582 = phi float [ %577, %565 ], [ %505, %503 ]
  %583 = phi float [ %578, %565 ], [ %506, %503 ]
  %584 = phi float [ %579, %565 ], [ %507, %503 ]
  %585 = add i32 %23, 120
  %586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %585, i32 undef)  ; BufferLoad(srv,index,wot)
  %587 = extractvalue %dx.types.ResRet.i32 %586, 0
  %588 = add i32 %587, 0
  %589 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %588, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %590 = add i32 %23, 24
  %591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %590, i32 undef)  ; BufferLoad(srv,index,wot)
  %592 = extractvalue %dx.types.ResRet.i32 %591, 0
  %593 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %589, %dx.types.Handle %43, float %162, float %163, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %594 = extractvalue %dx.types.ResRet.f32 %593, 0
  %595 = extractvalue %dx.types.ResRet.f32 %593, 1
  %596 = extractvalue %dx.types.ResRet.f32 %593, 2
  %597 = extractvalue %dx.types.ResRet.f32 %593, 3
  %598 = and i32 %592, 255
  %599 = uitofp i32 %598 to float
  %600 = lshr i32 %592, 8
  %601 = and i32 %600, 255
  %602 = uitofp i32 %601 to float
  %603 = fmul fast float %597, %599
  %604 = fadd fast float %603, %602
  %605 = fmul fast float %604, 0x3F70101000000000
  %606 = add i32 %23, 56
  %607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %606, i32 undef)  ; BufferLoad(srv,index,wot)
  %608 = extractvalue %dx.types.ResRet.i32 %607, 0
  %609 = and i32 %608, 255
  %610 = uitofp i32 %609 to float
  %611 = fmul fast float %610, 0x3F70101020000000
  %612 = lshr i32 %608, 8
  %613 = and i32 %612, 255
  %614 = uitofp i32 %613 to float
  %615 = fmul fast float %614, 0x3F70101020000000
  %616 = lshr i32 %608, 16
  %617 = and i32 %616, 255
  %618 = uitofp i32 %617 to float
  %619 = fmul fast float %618, 0x3F70101020000000
  %620 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %28, float %29, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %621 = extractvalue %dx.types.ResRet.f32 %620, 0
  %622 = extractvalue %dx.types.ResRet.f32 %620, 1
  %623 = extractvalue %dx.types.ResRet.f32 %620, 2
  %624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %625 = extractvalue %dx.types.CBufRet.f32 %624, 1
  %626 = fadd fast float %605, 0xBFB99999A0000000
  %627 = call float @dx.op.unary.f32(i32 7, float %626)  ; Saturate(value)
  %628 = fmul fast float %627, 0x3FF1C71C80000000
  %629 = fsub fast float 1.000000e+00, %628
  %630 = call float @dx.op.unary.f32(i32 7, float %629)  ; Saturate(value)
  %631 = fmul fast float %594, %581
  %632 = fmul fast float %611, %611
  %633 = fmul fast float %632, %631
  %634 = fmul fast float %633, %630
  %635 = fmul fast float %595, %582
  %636 = fmul fast float %615, %615
  %637 = fmul fast float %636, %635
  %638 = fmul fast float %637, %630
  %639 = fmul fast float %596, %583
  %640 = fmul fast float %619, %619
  %641 = fmul fast float %640, %639
  %642 = fmul fast float %641, %630
  %643 = call float @dx.op.unary.f32(i32 7, float %634)  ; Saturate(value)
  %644 = call float @dx.op.unary.f32(i32 7, float %638)  ; Saturate(value)
  %645 = call float @dx.op.unary.f32(i32 7, float %642)  ; Saturate(value)
  %646 = call float @dx.op.dot3.f32(i32 55, float %643, float %644, float %645, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %647 = add i32 %23, 32
  %648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %647, i32 undef)  ; BufferLoad(srv,index,wot)
  %649 = extractvalue %dx.types.ResRet.i32 %648, 0
  %650 = and i32 %649, 255
  %651 = uitofp i32 %650 to float
  %652 = lshr i32 %649, 8
  %653 = and i32 %652, 255
  %654 = uitofp i32 %653 to float
  %655 = fmul fast float %654, %646
  %656 = fadd fast float %655, %651
  %657 = fmul fast float %656, 0x3F70101020000000
  %658 = call float @dx.op.unary.f32(i32 7, float %657)  ; Saturate(value)
  %659 = and i32 %125, 8192
  %660 = icmp eq i32 %659, 0
  %661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %662 = extractvalue %dx.types.CBufRet.f32 %661, 0
  br i1 %660, label %669, label %663, !dx.controlflow.hints !66

; <label>:663                                     ; preds = %580
  %664 = add i32 %122, 176
  %665 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %664, i32 undef)  ; BufferLoad(srv,index,wot)
  %666 = extractvalue %dx.types.ResRet.f32 %665, 0
  %667 = fcmp fast oge float %666, 0.000000e+00
  %668 = select i1 %667, float %666, float %662
  br label %676

; <label>:669                                     ; preds = %580
  %670 = add i32 %23, 104
  %671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %670, i32 undef)  ; BufferLoad(srv,index,wot)
  %672 = extractvalue %dx.types.ResRet.i32 %671, 0
  %673 = bitcast i32 %672 to float
  %674 = fcmp fast oge float %673, 0.000000e+00
  %675 = select i1 %674, float %673, float %662
  br label %676

; <label>:676                                     ; preds = %669, %663
  %677 = phi float [ %668, %663 ], [ %675, %669 ]
  %678 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %215, i32 %216, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %679 = extractvalue %dx.types.ResRet.i32 %678, 0
  %680 = lshr i32 %679, 18
  %681 = uitofp i32 %680 to float
  %682 = fmul fast float %681, 0x3F4C00EBA0000000
  %683 = call float @dx.op.unary.f32(i32 21, float %682)  ; Exp(value)
  %684 = fadd fast float %683, -1.000000e+00
  %685 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %9, i32 0)  ; GetDimensions(handle,mipLevel)
  %686 = extractvalue %dx.types.Dimensions %685, 0
  %687 = sitofp i32 %686 to float
  %688 = extractvalue %dx.types.Dimensions %685, 1
  %689 = sitofp i32 %688 to float
  %690 = fcmp fast oge float %213, %687
  %691 = fcmp fast oge float %214, %689
  %692 = or i1 %690, %691
  %693 = select i1 %692, float 0x4197782600000000, float %684
  %694 = fsub fast float 1.000000e+00, %584
  %695 = call float @dx.op.dot3.f32(i32 55, float %694, float %694, float %694, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %696 = fsub fast float 1.000000e+00, %695
  %697 = fmul fast float %677, %658
  %698 = fsub fast float 1.000000e+00, %658
  %699 = call float @dx.op.unary.f32(i32 7, float %698)  ; Saturate(value)
  %700 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %701 = extractvalue %dx.types.CBufRet.f32 %700, 3
  %702 = fmul fast float %701, %699
  %703 = fadd fast float %702, %697
  %704 = and i32 %125, 2097152
  %705 = icmp eq i32 %704, 0
  br i1 %705, label %710, label %706, !dx.controlflow.hints !67

; <label>:706                                     ; preds = %676
  %707 = add i32 %122, 192
  %708 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %707, i32 undef)  ; BufferLoad(srv,index,wot)
  %709 = extractvalue %dx.types.ResRet.f32 %708, 0
  br label %713

; <label>:710                                     ; preds = %676
  %711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %712 = extractvalue %dx.types.CBufRet.f32 %711, 3
  br label %713

; <label>:713                                     ; preds = %710, %706
  %714 = phi float [ %709, %706 ], [ %712, %710 ]
  %715 = fmul fast float %621, %584
  %716 = fmul fast float %715, %625
  %717 = fmul fast float %716, %643
  %718 = fmul fast float %622, %584
  %719 = fmul fast float %718, %625
  %720 = fmul fast float %719, %644
  %721 = fmul fast float %623, %584
  %722 = fmul fast float %721, %625
  %723 = fmul fast float %722, %645
  %724 = icmp eq i32 %121, 3
  %725 = fcmp fast ogt float %42, %693
  %726 = and i1 %239, %725
  %727 = or i1 %724, %726
  %728 = icmp eq i32 %121, 2
  %729 = fcmp fast ole float %42, %693
  %730 = and i1 %728, %729
  %731 = or i1 %730, %727
  br i1 %726, label %732, label %838

; <label>:732                                     ; preds = %713
  %733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %734 = extractvalue %dx.types.CBufRet.f32 %733, 2
  %735 = extractvalue %dx.types.CBufRet.f32 %733, 3
  %736 = fmul fast float %734, %47
  %737 = fmul fast float %735, %48
  %738 = call float @dx.op.unary.f32(i32 7, float %736)  ; Saturate(value)
  %739 = call float @dx.op.unary.f32(i32 7, float %737)  ; Saturate(value)
  %740 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %738, float %739, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %741 = extractvalue %dx.types.ResRet.f32 %740, 0
  %742 = extractvalue %dx.types.ResRet.f32 %740, 1
  %743 = extractvalue %dx.types.ResRet.f32 %740, 2
  %744 = extractvalue %dx.types.ResRet.f32 %740, 3
  %745 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %738, float %739, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %746 = extractvalue %dx.types.ResRet.f32 %745, 0
  %747 = extractvalue %dx.types.ResRet.f32 %745, 1
  %748 = extractvalue %dx.types.ResRet.f32 %745, 2
  %749 = extractvalue %dx.types.ResRet.f32 %745, 3
  %750 = call float @dx.op.binary.f32(i32 35, float %742, float %743)  ; FMax(a,b)
  %751 = call float @dx.op.binary.f32(i32 35, float %741, float %750)  ; FMax(a,b)
  %752 = call float @dx.op.binary.f32(i32 35, float %751, float %744)  ; FMax(a,b)
  %753 = call float @dx.op.binary.f32(i32 36, float %747, float %748)  ; FMin(a,b)
  %754 = call float @dx.op.binary.f32(i32 36, float %746, float %753)  ; FMin(a,b)
  %755 = call float @dx.op.binary.f32(i32 36, float %754, float %749)  ; FMin(a,b)
  %756 = fmul fast float %752, 2.550000e+02
  %757 = fadd fast float %756, 0x3F70101020000000
  %758 = fptoui float %757 to i32
  %759 = fmul fast float %755, 2.550000e+02
  %760 = fadd fast float %759, 0x3F70101020000000
  %761 = fptoui float %760 to i32
  %762 = icmp ult i32 %758, %761
  br i1 %762, label %763, label %814

; <label>:763                                     ; preds = %732
  %764 = fcmp fast ogt float %41, 9.843750e-01
  %765 = fadd fast float %42, -4.000000e+00
  %766 = select i1 %764, float -4.000000e+00, float %765
  %767 = call float @dx.op.binary.f32(i32 35, float %766, float 0.000000e+00)  ; FMax(a,b)
  %768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %769 = extractvalue %dx.types.CBufRet.f32 %768, 0
  %770 = fadd fast float %769, %767
  %771 = extractvalue %dx.types.CBufRet.f32 %768, 2
  %772 = fmul fast float %770, %771
  %773 = call float @dx.op.unary.f32(i32 23, float %772)  ; Log(value)
  %774 = extractvalue %dx.types.CBufRet.f32 %768, 3
  %775 = fmul fast float %774, %773
  %776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %777 = extractvalue %dx.types.CBufRet.f32 %776, 2
  %778 = fmul fast float %775, %777
  %779 = call float @dx.op.unary.f32(i32 7, float %778)  ; Saturate(value)
  %780 = uitofp i32 %758 to float
  %781 = uitofp i32 %761 to float
  %782 = fadd fast float %780, 5.000000e-01
  %783 = fadd fast float %781, 5.000000e-01
  %784 = fmul fast float %777, %782
  %785 = fmul fast float %777, %783
  %786 = fadd fast float %784, 0x3F0FFB4800000000
  %787 = fadd fast float %785, 0xBF0FFB4800000000
  %788 = call float @dx.op.binary.f32(i32 35, float %779, float %786)  ; FMax(a,b)
  %789 = call float @dx.op.binary.f32(i32 36, float %788, float %787)  ; FMin(a,b)
  %790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %791 = extractvalue %dx.types.CBufRet.f32 %790, 1
  %792 = extractvalue %dx.types.CBufRet.f32 %790, 2
  %793 = extractvalue %dx.types.CBufRet.f32 %790, 0
  %794 = fmul fast float %791, %789
  %795 = fadd fast float %793, %794
  %796 = fadd fast float %793, %792
  %797 = fsub fast float %791, %792
  %798 = fadd fast float %797, %793
  %799 = call float @dx.op.binary.f32(i32 35, float %795, float %796)  ; FMax(a,b)
  %800 = call float @dx.op.binary.f32(i32 36, float %799, float %798)  ; FMin(a,b)
  %801 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %17, float %738, float %739, float %800, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %802 = extractvalue %dx.types.ResRet.f32 %801, 0
  %803 = extractvalue %dx.types.ResRet.f32 %801, 1
  %804 = extractvalue %dx.types.ResRet.f32 %801, 2
  %805 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %738, float %739, float %800, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %806 = extractvalue %dx.types.ResRet.f32 %805, 0
  %807 = extractvalue %dx.types.ResRet.f32 %805, 1
  %808 = extractvalue %dx.types.ResRet.f32 %805, 2
  %809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %810 = extractvalue %dx.types.CBufRet.f32 %809, 1
  %811 = fmul fast float %810, %806
  %812 = fmul fast float %810, %807
  %813 = fmul fast float %810, %808
  br label %814

; <label>:814                                     ; preds = %763, %732
  %815 = phi float [ %802, %763 ], [ 1.000000e+00, %732 ]
  %816 = phi float [ %803, %763 ], [ 1.000000e+00, %732 ]
  %817 = phi float [ %804, %763 ], [ 1.000000e+00, %732 ]
  %818 = phi float [ %811, %763 ], [ 0.000000e+00, %732 ]
  %819 = phi float [ %812, %763 ], [ 0.000000e+00, %732 ]
  %820 = phi float [ %813, %763 ], [ 0.000000e+00, %732 ]
  %821 = fmul fast float %818, %696
  %822 = fmul fast float %819, %696
  %823 = fmul fast float %820, %696
  %824 = call float @dx.op.dot3.f32(i32 55, float %815, float %816, float %817, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %825 = call float @dx.op.dot3.f32(i32 55, float %821, float %822, float %823, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %826 = select i1 %105, float %824, float %815
  %827 = select i1 %105, float %824, float %816
  %828 = select i1 %105, float 1.000000e+00, float %817
  %829 = select i1 %105, float %825, float %821
  %830 = select i1 %105, float 0.000000e+00, float %822
  %831 = select i1 %105, float 0.000000e+00, float %823
  %832 = fmul fast float %826, %717
  %833 = fmul fast float %827, %720
  %834 = fmul fast float %828, %723
  %835 = fadd fast float %832, %829
  %836 = fadd fast float %833, %830
  %837 = fadd fast float %831, %834
  br label %838

; <label>:838                                     ; preds = %814, %713
  %839 = phi float [ %693, %814 ], [ %42, %713 ]
  %840 = phi float [ %835, %814 ], [ %717, %713 ]
  %841 = phi float [ %836, %814 ], [ %720, %713 ]
  %842 = phi float [ %837, %814 ], [ %723, %713 ]
  %843 = phi float [ %815, %814 ], [ 1.000000e+00, %713 ]
  br i1 %731, label %1139, label %844

; <label>:844                                     ; preds = %838
  %845 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %18, float %28, float %29, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %846 = extractvalue %dx.types.ResRet.f32 %845, 0
  %847 = extractvalue %dx.types.ResRet.f32 %845, 1
  %848 = extractvalue %dx.types.ResRet.f32 %845, 2
  %849 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %18, float %28, float %29, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %850 = extractvalue %dx.types.ResRet.f32 %849, 0
  %851 = extractvalue %dx.types.ResRet.f32 %849, 1
  %852 = extractvalue %dx.types.ResRet.f32 %849, 2
  %853 = fmul fast float %846, %696
  %854 = fmul fast float %847, %696
  %855 = fmul fast float %848, %696
  %856 = fmul fast float %850, %843
  %857 = call float @dx.op.dot3.f32(i32 55, float %850, float %851, float %852, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %858 = call float @dx.op.dot3.f32(i32 55, float %853, float %854, float %855, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %859 = select i1 %105, float %857, float %850
  %860 = select i1 %105, float %857, float %851
  %861 = select i1 %105, float 1.000000e+00, float %852
  %862 = select i1 %105, float %858, float %853
  %863 = select i1 %105, float 0.000000e+00, float %854
  %864 = select i1 %105, float 0.000000e+00, float %855
  %865 = fmul fast float %859, %840
  %866 = fmul fast float %860, %841
  %867 = fmul fast float %861, %842
  %868 = fadd fast float %865, %862
  %869 = fadd fast float %866, %863
  %870 = fadd fast float %867, %864
  %871 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %872 = extractvalue %dx.types.CBufRet.i32 %871, 0
  %873 = icmp eq i32 %872, 0
  br i1 %873, label %1139, label %874, !dx.controlflow.hints !68

; <label>:874                                     ; preds = %844
  %875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %876 = extractvalue %dx.types.CBufRet.f32 %875, 2
  %877 = extractvalue %dx.types.CBufRet.f32 %875, 3
  %878 = fmul fast float %876, %47
  %879 = fmul fast float %877, %48
  %880 = fmul fast float %878, 2.000000e+00
  %881 = fmul fast float %879, 2.000000e+00
  %882 = fsub fast float 1.000000e+00, %880
  %883 = fsub fast float 1.000000e+00, %881
  %884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %885 = extractvalue %dx.types.CBufRet.f32 %884, 0
  %886 = extractvalue %dx.types.CBufRet.f32 %884, 1
  %887 = extractvalue %dx.types.CBufRet.f32 %884, 2
  %888 = fmul fast float %882, %885
  %889 = fmul fast float %882, %886
  %890 = fmul fast float %882, %887
  %891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %892 = extractvalue %dx.types.CBufRet.f32 %891, 0
  %893 = extractvalue %dx.types.CBufRet.f32 %891, 1
  %894 = extractvalue %dx.types.CBufRet.f32 %891, 2
  %895 = fmul fast float %883, %892
  %896 = fmul fast float %883, %893
  %897 = fmul fast float %883, %894
  %898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %899 = extractvalue %dx.types.CBufRet.f32 %898, 0
  %900 = extractvalue %dx.types.CBufRet.f32 %898, 1
  %901 = extractvalue %dx.types.CBufRet.f32 %898, 2
  %902 = fadd fast float %895, %899
  %903 = fadd fast float %902, %888
  %904 = fadd fast float %896, %900
  %905 = fadd fast float %904, %889
  %906 = fadd fast float %897, %901
  %907 = fadd fast float %906, %890
  %908 = fmul fast float %903, %839
  %909 = fmul fast float %905, %839
  %910 = fmul fast float %907, %839
  %911 = fmul fast float %908, %908
  %912 = fmul fast float %909, %909
  %913 = fadd fast float %911, %912
  %914 = fmul fast float %910, %910
  %915 = fadd fast float %913, %914
  %916 = call float @dx.op.unary.f32(i32 24, float %915)  ; Sqrt(value)
  %917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %918 = extractvalue %dx.types.CBufRet.f32 %917, 0
  %919 = fsub fast float %916, %918
  %920 = extractvalue %dx.types.CBufRet.f32 %917, 2
  %921 = fmul fast float %919, %920
  %922 = call float @dx.op.unary.f32(i32 7, float %921)  ; Saturate(value)
  %923 = fadd fast float %922, -5.000000e-01
  %924 = fmul fast float %923, 2.000000e+00
  %925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %926 = extractvalue %dx.types.CBufRet.f32 %925, 2
  %927 = call float @dx.op.binary.f32(i32 36, float %926, float %924)  ; FMin(a,b)
  %928 = fsub fast float -0.000000e+00, %926
  %929 = fcmp fast ogt float %927, %928
  br i1 %929, label %930, label %1139, !dx.controlflow.hints !69

; <label>:930                                     ; preds = %874
  %931 = fmul fast float %927, 5.000000e-01
  %932 = fadd fast float %931, 5.000000e-01
  %933 = call float @dx.op.unary.f32(i32 22, float %932)  ; Frc(value)
  %934 = call float @dx.op.unary.f32(i32 27, float %933)  ; Round_ni(value)
  %935 = call float @dx.op.unary.f32(i32 22, float %933)  ; Frc(value)
  %936 = fmul fast float %935, 2.000000e+00
  %937 = fadd fast float %936, -1.000000e+00
  %938 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %18, float %878, float %879, float %934, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %939 = extractvalue %dx.types.ResRet.f32 %938, 0
  %940 = extractvalue %dx.types.ResRet.f32 %938, 1
  %941 = extractvalue %dx.types.ResRet.f32 %938, 2
  %942 = extractvalue %dx.types.ResRet.f32 %938, 3
  %943 = fadd fast float %939, -5.000000e-01
  %944 = fadd fast float %941, -5.000000e-01
  %945 = fmul fast float %943, 0xBFD5555560000000
  %946 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %944, float %945)  ; FMad(a,b,c)
  %947 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %940, float 0.000000e+00)  ; FMad(a,b,c)
  %948 = fadd fast float %947, %942
  %949 = fmul fast float %943, -7.500000e-01
  %950 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %944, float %949)  ; FMad(a,b,c)
  %951 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %940, float 0.000000e+00)  ; FMad(a,b,c)
  %952 = fadd fast float %951, %942
  %953 = call float @dx.op.binary.f32(i32 35, float %946, float -1.000000e+00)  ; FMax(a,b)
  %954 = call float @dx.op.binary.f32(i32 35, float %948, float -1.000000e+00)  ; FMax(a,b)
  %955 = call float @dx.op.binary.f32(i32 35, float %950, float -1.000000e+00)  ; FMax(a,b)
  %956 = call float @dx.op.binary.f32(i32 35, float %952, float -1.000000e+00)  ; FMax(a,b)
  %957 = call float @dx.op.binary.f32(i32 36, float %953, float 1.000000e+00)  ; FMin(a,b)
  %958 = call float @dx.op.binary.f32(i32 36, float %954, float 1.000000e+00)  ; FMin(a,b)
  %959 = call float @dx.op.binary.f32(i32 36, float %955, float 1.000000e+00)  ; FMin(a,b)
  %960 = call float @dx.op.binary.f32(i32 36, float %956, float 1.000000e+00)  ; FMin(a,b)
  %961 = fcmp fast olt float %957, 0x3FEFFF8020000000
  br i1 %961, label %962, label %1077, !dx.controlflow.hints !70

; <label>:962                                     ; preds = %930
  %963 = extractvalue %dx.types.CBufRet.f32 %925, 3
  %964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %965 = extractvalue %dx.types.CBufRet.f32 %964, 0
  %966 = extractvalue %dx.types.CBufRet.f32 %964, 1
  %967 = extractvalue %dx.types.CBufRet.f32 %964, 2
  %968 = extractvalue %dx.types.CBufRet.f32 %964, 3
  %969 = fsub fast float %965, %957
  %970 = fsub fast float %966, %958
  %971 = fsub fast float %967, %959
  %972 = fsub fast float %968, %960
  %973 = fmul fast float %969, %963
  %974 = fmul fast float %970, %963
  %975 = fmul fast float %971, %963
  %976 = fmul fast float %972, %963
  %977 = fadd fast float %973, %957
  %978 = fadd fast float %974, %958
  %979 = fsub fast float -0.000000e+00, %978
  %980 = fadd fast float %975, %959
  %981 = fadd fast float %976, %960
  %982 = fmul fast float %977, %977
  %983 = fsub fast float %978, %982
  %984 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %983)  ; FMax(a,b)
  %985 = fdiv fast float 1.000000e+00, %984
  %986 = fmul fast float %978, %977
  %987 = fsub fast float %980, %986
  %988 = fsub fast float %937, %977
  %989 = fmul fast float %937, %937
  %990 = fsub fast float %989, %978
  %991 = fmul fast float %988, %985
  %992 = fmul fast float %991, %987
  %993 = fsub fast float %990, %992
  %994 = fmul fast float %978, %978
  %995 = fsub fast float %981, %994
  %996 = fmul fast float %987, %987
  %997 = fmul fast float %996, %985
  %998 = fsub fast float %995, %997
  %999 = fdiv fast float %993, %998
  %1000 = fmul fast float %987, %999
  %1001 = fsub fast float %988, %1000
  %1002 = fmul fast float %1001, %985
  %1003 = fmul fast float %1002, %977
  %1004 = fsub fast float 1.000000e+00, %1003
  %1005 = fmul fast float %978, %999
  %1006 = fsub fast float %1004, %1005
  %1007 = fmul fast float %1002, %1002
  %1008 = fmul fast float %999, 4.000000e+00
  %1009 = fmul fast float %1008, %1006
  %1010 = fsub fast float %1007, %1009
  %1011 = call float @dx.op.unary.f32(i32 24, float %1010)  ; Sqrt(value)
  %1012 = fcmp fast oge float %1002, 0.000000e+00
  %1013 = fsub fast float -0.000000e+00, %1011
  %1014 = select i1 %1012, float %1013, float %1011
  %1015 = fsub fast float %1014, %1002
  %1016 = fdiv fast float %1015, %999
  %1017 = fdiv fast float %1006, %1015
  %1018 = fmul fast float %1016, 5.000000e-01
  %1019 = fmul fast float %1017, 2.000000e+00
  %1020 = select i1 %1012, float %1018, float %1019
  %1021 = select i1 %1012, float %1019, float %1018
  %1022 = call float @dx.op.binary.f32(i32 35, float %1020, float %1021)  ; FMax(a,b)
  %1023 = call float @dx.op.binary.f32(i32 36, float %1020, float %1021)  ; FMin(a,b)
  %1024 = fcmp fast ogt float %937, %1023
  br i1 %1024, label %1025, label %1035

; <label>:1025                                    ; preds = %962
  %1026 = fsub fast float %937, %1023
  %1027 = fsub fast float %1022, %1023
  %1028 = fmul fast float %1026, %1027
  %1029 = fmul fast float %1022, %937
  %1030 = fadd fast float %1022, %937
  %1031 = fmul fast float %1030, %977
  %1032 = fadd fast float %1029, %978
  %1033 = fsub fast float %1032, %1031
  %1034 = fdiv fast float %1033, %1028
  br label %1035

; <label>:1035                                    ; preds = %1025, %962
  %1036 = phi float [ %1034, %1025 ], [ 0.000000e+00, %962 ]
  %1037 = fcmp fast ogt float %937, %1022
  %1038 = fsub fast float %937, %1022
  br i1 %1037, label %1039, label %1049

; <label>:1039                                    ; preds = %1035
  %1040 = fsub fast float %1022, %1023
  %1041 = fmul fast float %1040, %1038
  %1042 = fmul fast float %1023, %937
  %1043 = fadd fast float %1023, %937
  %1044 = fmul fast float %1043, %977
  %1045 = fsub fast float %979, %1042
  %1046 = fadd fast float %1045, %1044
  %1047 = fdiv fast float %1046, %1041
  %1048 = fadd fast float %1047, %1036
  br label %1049

; <label>:1049                                    ; preds = %1039, %1035
  %1050 = phi float [ %1048, %1039 ], [ %1036, %1035 ]
  %1051 = fsub fast float %937, %1023
  %1052 = fmul fast float %1051, %1038
  %1053 = fmul fast float %1023, %1022
  %1054 = fadd fast float %1023, %1022
  %1055 = fmul fast float %1054, %977
  %1056 = fadd fast float %1053, %978
  %1057 = fsub fast float %1056, %1055
  %1058 = fdiv fast float %1057, %1052
  %1059 = call float @dx.op.unary.f32(i32 7, float %1050)  ; Saturate(value)
  %1060 = fcmp fast oeq float %714, 0.000000e+00
  %1061 = extractvalue %dx.types.CBufRet.f32 %925, 0
  %1062 = fcmp fast oeq float %1061, 0.000000e+00
  %1063 = or i1 %1060, %1062
  %1064 = fmul fast float %1061, 2.000000e+00
  %1065 = fadd fast float %926, %927
  %1066 = fdiv fast float %1065, %1064
  %1067 = call float @dx.op.unary.f32(i32 7, float %1066)  ; Saturate(value)
  %1068 = fmul fast float %1067, 2.000000e+00
  %1069 = fsub fast float 3.000000e+00, %1068
  %1070 = fmul fast float %1067, %1067
  %1071 = fmul fast float %1070, %1069
  %1072 = select i1 %1063, float 1.000000e+00, float %1071
  %1073 = fmul fast float %1058, %714
  %1074 = fadd fast float %1059, %1073
  %1075 = call float @dx.op.unary.f32(i32 7, float %1074)  ; Saturate(value)
  %1076 = fmul fast float %1072, %1075
  br label %1077

; <label>:1077                                    ; preds = %1049, %930
  %1078 = phi float [ %1076, %1049 ], [ 0.000000e+00, %930 ]
  %1079 = fsub fast float 1.000000e+00, %1078
  %1080 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %18, float %878, float %879, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1081 = extractvalue %dx.types.ResRet.f32 %1080, 0
  %1082 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1083 = extractvalue %dx.types.CBufRet.i32 %1082, 2
  %1084 = icmp eq i32 %1083, 0
  br i1 %1084, label %1090, label %1085

; <label>:1085                                    ; preds = %1077
  %1086 = call float @dx.op.unary.f32(i32 7, float %1078)  ; Saturate(value)
  %1087 = fadd fast float %1081, -1.000000e+00
  %1088 = fmul fast float %1086, %1087
  %1089 = fadd fast float %1088, 1.000000e+00
  br label %1090

; <label>:1090                                    ; preds = %1085, %1077
  %1091 = phi float [ %1089, %1085 ], [ %1079, %1077 ]
  %1092 = call float @dx.op.binary.f32(i32 35, float %1081, float %1091)  ; FMax(a,b)
  %1093 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %1094 = extractvalue %dx.types.CBufRet.i32 %1093, 2
  %1095 = and i32 %1094, 1
  %1096 = icmp eq i32 %1095, 0
  %1097 = fcmp fast une float %1092, 1.000000e+00
  %1098 = and i1 %1097, %1096
  br i1 %1098, label %1099, label %1118

; <label>:1099                                    ; preds = %1090
  %1100 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %18, float %878, float %879, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1101 = extractvalue %dx.types.ResRet.f32 %1100, 0
  %1102 = extractvalue %dx.types.ResRet.f32 %1100, 1
  %1103 = extractvalue %dx.types.ResRet.f32 %1100, 2
  %1104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1105 = extractvalue %dx.types.CBufRet.f32 %1104, 1
  %1106 = fmul fast float %1105, %1101
  %1107 = fmul fast float %1105, %1102
  %1108 = fmul fast float %1105, %1103
  %1109 = fcmp fast ogt float %1081, 0x3FEFFF2E40000000
  %1110 = fsub fast float 1.000000e+00, %1092
  %1111 = fsub fast float 1.000000e+00, %1081
  %1112 = fdiv fast float %1110, %1111
  %1113 = call float @dx.op.unary.f32(i32 7, float %1112)  ; Saturate(value)
  %1114 = select i1 %1109, float 0.000000e+00, float %1113
  %1115 = fmul fast float %1106, %1114
  %1116 = fmul fast float %1107, %1114
  %1117 = fmul fast float %1108, %1114
  br label %1118

; <label>:1118                                    ; preds = %1099, %1090
  %1119 = phi float [ 0.000000e+00, %1090 ], [ %1115, %1099 ]
  %1120 = phi float [ 0.000000e+00, %1090 ], [ %1116, %1099 ]
  %1121 = phi float [ 0.000000e+00, %1090 ], [ %1117, %1099 ]
  %1122 = fmul fast float %1119, %696
  %1123 = fmul fast float %1120, %696
  %1124 = fmul fast float %1121, %696
  %1125 = fmul fast float %1092, %856
  %1126 = call float @dx.op.dot3.f32(i32 55, float %1092, float %1092, float %1092, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1127 = call float @dx.op.dot3.f32(i32 55, float %1122, float %1123, float %1124, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1128 = select i1 %105, float %1126, float %1092
  %1129 = select i1 %105, float 1.000000e+00, float %1092
  %1130 = select i1 %105, float %1127, float %1122
  %1131 = select i1 %105, float 0.000000e+00, float %1123
  %1132 = select i1 %105, float 0.000000e+00, float %1124
  %1133 = fmul fast float %1128, %868
  %1134 = fmul fast float %1128, %869
  %1135 = fmul fast float %1129, %870
  %1136 = fadd fast float %1133, %1130
  %1137 = fadd fast float %1134, %1131
  %1138 = fadd fast float %1132, %1135
  br label %1139

; <label>:1139                                    ; preds = %1118, %874, %844, %838
  %1140 = phi float [ %840, %838 ], [ %868, %844 ], [ %1136, %1118 ], [ %868, %874 ]
  %1141 = phi float [ %841, %838 ], [ %869, %844 ], [ %1137, %1118 ], [ %869, %874 ]
  %1142 = phi float [ %842, %838 ], [ %870, %844 ], [ %1138, %1118 ], [ %870, %874 ]
  %1143 = phi float [ %843, %838 ], [ %856, %844 ], [ %1125, %1118 ], [ %856, %874 ]
  %1144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1145 = extractvalue %dx.types.CBufRet.f32 %1144, 2
  %1146 = extractvalue %dx.types.CBufRet.f32 %1144, 3
  %1147 = fmul fast float %1145, %47
  %1148 = fmul fast float %1146, %48
  %1149 = call float @dx.op.unary.f32(i32 7, float %1147)  ; Saturate(value)
  %1150 = call float @dx.op.unary.f32(i32 7, float %1148)  ; Saturate(value)
  %1151 = select i1 %731, i32 2, i32 0
  %1152 = or i32 %1151, 1
  %1153 = uitofp i32 %1152 to float
  %1154 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %1149, float %1150, float %1153, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1155 = extractvalue %dx.types.ResRet.f32 %1154, 0
  %1156 = extractvalue %dx.types.ResRet.f32 %1154, 1
  %1157 = extractvalue %dx.types.ResRet.f32 %1154, 2
  %1158 = extractvalue %dx.types.ResRet.f32 %1154, 3
  %1159 = add nuw nsw i32 %1151, 2
  %1160 = uitofp i32 %1159 to float
  %1161 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %1149, float %1150, float %1160, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1162 = extractvalue %dx.types.ResRet.f32 %1161, 0
  %1163 = extractvalue %dx.types.ResRet.f32 %1161, 1
  %1164 = extractvalue %dx.types.ResRet.f32 %1161, 2
  %1165 = extractvalue %dx.types.ResRet.f32 %1161, 3
  %1166 = call float @dx.op.binary.f32(i32 35, float %1156, float %1157)  ; FMax(a,b)
  %1167 = call float @dx.op.binary.f32(i32 35, float %1155, float %1166)  ; FMax(a,b)
  %1168 = call float @dx.op.binary.f32(i32 35, float %1167, float %1158)  ; FMax(a,b)
  %1169 = call float @dx.op.binary.f32(i32 36, float %1163, float %1164)  ; FMin(a,b)
  %1170 = call float @dx.op.binary.f32(i32 36, float %1162, float %1169)  ; FMin(a,b)
  %1171 = call float @dx.op.binary.f32(i32 36, float %1170, float %1165)  ; FMin(a,b)
  %1172 = fmul fast float %1168, 2.550000e+02
  %1173 = fadd fast float %1172, 0x3F70101020000000
  %1174 = fptoui float %1173 to i32
  %1175 = fmul fast float %1171, 2.550000e+02
  %1176 = fadd fast float %1175, 0x3F70101020000000
  %1177 = fptoui float %1176 to i32
  %1178 = icmp ult i32 %1174, %1177
  br i1 %1178, label %1179, label %1231

; <label>:1179                                    ; preds = %1139
  %1180 = fcmp fast ogt float %41, 9.843750e-01
  %1181 = fadd fast float %839, -4.000000e+00
  %1182 = select i1 %1180, float -4.000000e+00, float %1181
  %1183 = call float @dx.op.binary.f32(i32 35, float %1182, float 0.000000e+00)  ; FMax(a,b)
  %1184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1185 = extractvalue %dx.types.CBufRet.f32 %1184, 0
  %1186 = fadd fast float %1185, %1183
  %1187 = extractvalue %dx.types.CBufRet.f32 %1184, 2
  %1188 = fmul fast float %1186, %1187
  %1189 = call float @dx.op.unary.f32(i32 23, float %1188)  ; Log(value)
  %1190 = extractvalue %dx.types.CBufRet.f32 %1184, 3
  %1191 = fmul fast float %1190, %1189
  %1192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1193 = extractvalue %dx.types.CBufRet.f32 %1192, 2
  %1194 = fmul fast float %1191, %1193
  %1195 = call float @dx.op.unary.f32(i32 7, float %1194)  ; Saturate(value)
  %1196 = uitofp i32 %1174 to float
  %1197 = uitofp i32 %1177 to float
  %1198 = fadd fast float %1196, 5.000000e-01
  %1199 = fadd fast float %1197, 5.000000e-01
  %1200 = fmul fast float %1193, %1198
  %1201 = fmul fast float %1193, %1199
  %1202 = fadd fast float %1200, 0x3F0FFB4800000000
  %1203 = fadd fast float %1201, 0xBF0FFB4800000000
  %1204 = call float @dx.op.binary.f32(i32 35, float %1195, float %1202)  ; FMax(a,b)
  %1205 = call float @dx.op.binary.f32(i32 36, float %1204, float %1203)  ; FMin(a,b)
  %1206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1207 = extractvalue %dx.types.CBufRet.f32 %1206, 1
  %1208 = extractvalue %dx.types.CBufRet.f32 %1206, 2
  %1209 = extractvalue %dx.types.CBufRet.f32 %1206, 0
  %1210 = select i1 %731, float %1209, float 0.000000e+00
  %1211 = fmul fast float %1207, %1205
  %1212 = fadd fast float %1210, %1211
  %1213 = fadd fast float %1210, %1208
  %1214 = fsub fast float %1207, %1208
  %1215 = fadd fast float %1214, %1210
  %1216 = call float @dx.op.binary.f32(i32 35, float %1212, float %1213)  ; FMax(a,b)
  %1217 = call float @dx.op.binary.f32(i32 36, float %1216, float %1215)  ; FMin(a,b)
  %1218 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %17, float %1149, float %1150, float %1217, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1219 = extractvalue %dx.types.ResRet.f32 %1218, 0
  %1220 = extractvalue %dx.types.ResRet.f32 %1218, 1
  %1221 = extractvalue %dx.types.ResRet.f32 %1218, 2
  %1222 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %1149, float %1150, float %1217, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1223 = extractvalue %dx.types.ResRet.f32 %1222, 0
  %1224 = extractvalue %dx.types.ResRet.f32 %1222, 1
  %1225 = extractvalue %dx.types.ResRet.f32 %1222, 2
  %1226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1227 = extractvalue %dx.types.CBufRet.f32 %1226, 1
  %1228 = fmul fast float %1227, %1223
  %1229 = fmul fast float %1227, %1224
  %1230 = fmul fast float %1227, %1225
  br label %1231

; <label>:1231                                    ; preds = %1179, %1139
  %1232 = phi float [ %1219, %1179 ], [ 1.000000e+00, %1139 ]
  %1233 = phi float [ %1220, %1179 ], [ 1.000000e+00, %1139 ]
  %1234 = phi float [ %1221, %1179 ], [ 1.000000e+00, %1139 ]
  %1235 = phi float [ %1228, %1179 ], [ 0.000000e+00, %1139 ]
  %1236 = phi float [ %1229, %1179 ], [ 0.000000e+00, %1139 ]
  %1237 = phi float [ %1230, %1179 ], [ 0.000000e+00, %1139 ]
  %1238 = fmul fast float %1235, %696
  %1239 = fmul fast float %1236, %696
  %1240 = fmul fast float %1237, %696
  %1241 = fmul fast float %1232, %1143
  %1242 = call float @dx.op.dot3.f32(i32 55, float %1232, float %1233, float %1234, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1243 = call float @dx.op.dot3.f32(i32 55, float %1238, float %1239, float %1240, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1244 = select i1 %105, float %1242, float %1232
  %1245 = select i1 %105, float %1242, float %1233
  %1246 = select i1 %105, float 1.000000e+00, float %1234
  %1247 = select i1 %105, float %1243, float %1238
  %1248 = select i1 %105, float 0.000000e+00, float %1239
  %1249 = select i1 %105, float 0.000000e+00, float %1240
  %1250 = fmul fast float %1244, %1140
  %1251 = fmul fast float %1245, %1141
  %1252 = fmul fast float %1246, %1142
  %1253 = fadd fast float %1250, %1247
  %1254 = fadd fast float %1251, %1248
  %1255 = fadd fast float %1249, %1252
  %1256 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1257 = extractvalue %dx.types.CBufRet.i32 %1256, 3
  %1258 = and i32 %1257, 3
  %1259 = icmp ne i32 %1258, 0
  %1260 = and i32 %1257, 4
  %1261 = icmp ne i32 %1260, 0
  %1262 = and i1 %1259, %1261
  %1263 = and i1 %105, %1262
  br i1 %1263, label %1264, label %1270

; <label>:1264                                    ; preds = %1231
  %1265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1266 = extractvalue %dx.types.CBufRet.f32 %1265, 1
  %1267 = fadd fast float %1241, -1.000000e+00
  %1268 = fmul fast float %1266, %1267
  %1269 = fadd fast float %1268, 1.000000e+00
  br label %1270

; <label>:1270                                    ; preds = %1264, %1231
  %1271 = phi float [ %1269, %1264 ], [ %1241, %1231 ]
  %1272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1273 = extractvalue %dx.types.CBufRet.f32 %1272, 0
  br i1 %105, label %1274, label %1295

; <label>:1274                                    ; preds = %1270
  %1275 = fadd fast float %1253, %1254
  %1276 = fmul fast float %1273, %1275
  %1277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1278 = extractvalue %dx.types.CBufRet.f32 %1277, 3
  %1279 = extractvalue %dx.types.CBufRet.f32 %700, 1
  %1280 = fsub fast float %703, %1279
  %1281 = extractvalue %dx.types.CBufRet.f32 %700, 2
  %1282 = fmul fast float %1280, %1281
  %1283 = call float @dx.op.unary.f32(i32 7, float %1282)  ; Saturate(value)
  %1284 = fsub fast float %1283, %1278
  %1285 = fmul fast float %1284, %1271
  %1286 = fadd fast float %1285, %1278
  %1287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1288 = extractvalue %dx.types.CBufRet.f32 %1287, 0
  %1289 = fsub fast float %1286, %1288
  %1290 = fmul fast float %1289, 1.000000e+01
  %1291 = call float @dx.op.unary.f32(i32 7, float %1290)  ; Saturate(value)
  %1292 = fmul fast float %1291, %696
  %1293 = fsub fast float %696, %1292
  %1294 = fmul fast float %1293, %1286
  br label %1304

; <label>:1295                                    ; preds = %1270
  %1296 = fmul fast float %1273, %1253
  %1297 = fmul fast float %1273, %1254
  %1298 = fmul fast float %1273, %1255
  %1299 = call float @dx.op.binary.f32(i32 35, float %1297, float %1298)  ; FMax(a,b)
  %1300 = call float @dx.op.binary.f32(i32 35, float %1296, float %1299)  ; FMax(a,b)
  %1301 = call float @dx.op.binary.f32(i32 35, float %1300, float %696)  ; FMax(a,b)
  %1302 = fcmp fast ugt float %1301, 0x3F10000000000000
  br i1 %1302, label %1304, label %1303

; <label>:1303                                    ; preds = %1295
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1304

; <label>:1304                                    ; preds = %1303, %1295, %1274
  %1305 = phi float [ %1276, %1274 ], [ %1296, %1303 ], [ %1296, %1295 ]
  %1306 = phi float [ %1294, %1274 ], [ %1297, %1303 ], [ %1297, %1295 ]
  %1307 = phi float [ %1293, %1274 ], [ %1298, %1303 ], [ %1298, %1295 ]
  %1308 = phi float [ %1293, %1274 ], [ %696, %1303 ], [ %696, %1295 ]
  %1309 = fadd fast float %521, 0x3FE3C6EF40000000
  %1310 = call float @dx.op.unary.f32(i32 22, float %1309)  ; Frc(value)
  %1311 = call float @dx.op.unary.f32(i32 23, float %1305)  ; Log(value)
  %1312 = fadd fast float %1311, -7.000000e+00
  %1313 = call float @dx.op.unary.f32(i32 21, float %1312)  ; Exp(value)
  %1314 = fmul fast float %1310, 2.000000e+00
  %1315 = fadd fast float %1314, -1.000000e+00
  %1316 = fmul fast float %1313, %1315
  %1317 = fcmp fast ogt float %1305, 0.000000e+00
  %1318 = select i1 %1317, float %1316, float 0.000000e+00
  %1319 = fadd fast float %1318, %1305
  %1320 = fadd fast float %521, 0x3FF3C6EF40000000
  %1321 = call float @dx.op.unary.f32(i32 22, float %1320)  ; Frc(value)
  %1322 = call float @dx.op.unary.f32(i32 23, float %1306)  ; Log(value)
  %1323 = fadd fast float %1322, -7.000000e+00
  %1324 = call float @dx.op.unary.f32(i32 21, float %1323)  ; Exp(value)
  %1325 = fmul fast float %1321, 2.000000e+00
  %1326 = fadd fast float %1325, -1.000000e+00
  %1327 = fmul fast float %1324, %1326
  %1328 = fcmp fast ogt float %1306, 0.000000e+00
  %1329 = select i1 %1328, float %1327, float 0.000000e+00
  %1330 = fadd fast float %1329, %1306
  %1331 = fadd fast float %521, 0x3FFDAA66E0000000
  %1332 = call float @dx.op.unary.f32(i32 22, float %1331)  ; Frc(value)
  %1333 = call float @dx.op.unary.f32(i32 23, float %1307)  ; Log(value)
  %1334 = fadd fast float %1333, -6.000000e+00
  %1335 = call float @dx.op.unary.f32(i32 21, float %1334)  ; Exp(value)
  %1336 = fmul fast float %1332, 2.000000e+00
  %1337 = fadd fast float %1336, -1.000000e+00
  %1338 = fmul fast float %1335, %1337
  %1339 = fcmp fast ogt float %1307, 0.000000e+00
  %1340 = select i1 %1339, float %1338, float 0.000000e+00
  %1341 = fadd fast float %1340, %1307
  %1342 = select i1 %105, float %1306, float %1330
  %1343 = select i1 %105, float %1307, float %1341
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1344 = call float @dx.op.binary.f32(i32 36, float %1319, float 3.225500e+04)  ; FMin(a,b)
  %1345 = call float @dx.op.binary.f32(i32 36, float %1342, float 3.225500e+04)  ; FMin(a,b)
  %1346 = call float @dx.op.binary.f32(i32 36, float %1343, float 3.225500e+04)  ; FMin(a,b)
  %1347 = call float @dx.op.binary.f32(i32 36, float %1308, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1344)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1345)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1346)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1347)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1308)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1308)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1308)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1308)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

