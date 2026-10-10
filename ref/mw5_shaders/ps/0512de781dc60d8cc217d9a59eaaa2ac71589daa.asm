;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float   xyzw
; TEXCOORD                 0   xy          2     NONE   float   xy  
; TEXCOORD                 2   xyzw        3     NONE   float   xyz 
; TEXCOORD                 3   xyzw        4     NONE   float   xyzw
; TEXCOORD                 5   xy          5     NONE   float   xy  
; TEXCOORD                 8   xyzw        6     NONE   float   xyzw
; QUAD_POSITION            0   xyzw        7     NONE   float   xyzw
; COLOR                    3   xyz         8     NONE    uint   xyz 
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
; shader hash: 405d67d7afc0d55d7b5d8c9b0f0e4765
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
;                                   texture     f32          3d      T9     t44,space2     1
;                                   texture     f32          3d     T10     t45,space2     1
;                                   texture     f32     2darray     T11     t47,space2     1
;                                   textureunorm_f32     2darray     T12     t85,space2     1
;                                   texture     f32          2d     T13     t83,space2     1
;                                   texture     f32          2d     T14     t86,space2     1
;                                   texture     f32     2darray     T15             t1     1
;                                   texture    byte         r/o     T16             t2     1
;                                   texture     f32          3d     T17     t46,space2     1
;
;
; ViewId state:
;
; Number of inputs: 35, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 24, 25, 26, 27, 28, 29, 30, 31, 32, 34 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 26, 27, 28, 29, 30, 31, 32, 33, 34 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 28, 29, 30, 31, 32, 33, 34 }
;   output 4 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 28, 29, 30, 31, 32, 33, 34 }
;   output 5 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 28, 29, 30, 31, 32, 33, 34 }
;   output 6 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 28, 29, 30, 31, 32, 33, 34 }
;   output 7 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 28, 29, 30, 31, 32, 33, 34 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 77, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %54 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %55 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %56 = extractvalue %dx.types.CBufRet.f32 %55, 0
  %57 = fmul fast float %56, %49
  %58 = fmul fast float %56, %50
  %59 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %60 = extractvalue %dx.types.CBufRet.f32 %59, 2
  %61 = extractvalue %dx.types.CBufRet.f32 %59, 3
  %62 = fmul fast float %57, 2.000000e+00
  %63 = fmul fast float %62, %60
  %64 = fmul fast float %58, 2.000000e+00
  %65 = fmul fast float %64, %61
  %66 = fsub fast float 1.000000e+00, %63
  %67 = fsub fast float 1.000000e+00, %65
  %68 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %69 = extractvalue %dx.types.CBufRet.f32 %68, 0
  %70 = extractvalue %dx.types.CBufRet.f32 %68, 1
  %71 = extractvalue %dx.types.CBufRet.f32 %68, 2
  %72 = fmul fast float %66, %69
  %73 = fmul fast float %66, %70
  %74 = fmul fast float %66, %71
  %75 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %76 = extractvalue %dx.types.CBufRet.f32 %75, 0
  %77 = extractvalue %dx.types.CBufRet.f32 %75, 1
  %78 = extractvalue %dx.types.CBufRet.f32 %75, 2
  %79 = fmul fast float %67, %76
  %80 = fmul fast float %67, %77
  %81 = fmul fast float %67, %78
  %82 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %83 = extractvalue %dx.types.CBufRet.f32 %82, 0
  %84 = extractvalue %dx.types.CBufRet.f32 %82, 1
  %85 = extractvalue %dx.types.CBufRet.f32 %82, 2
  %86 = fadd fast float %79, %83
  %87 = fadd fast float %86, %72
  %88 = fadd fast float %80, %84
  %89 = fadd fast float %88, %73
  %90 = fadd fast float %81, %85
  %91 = fadd fast float %90, %74
  %92 = fmul fast float %87, %52
  %93 = fmul fast float %89, %52
  %94 = fmul fast float %91, %52
  %95 = bitcast i32 %24 to float
  %96 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %97 = extractvalue %dx.types.CBufRet.i32 %96, 3
  %98 = and i32 %97, 3
  %99 = icmp ne i32 %98, 0
  %100 = and i32 %97, 4
  %101 = icmp ne i32 %100, 0
  %102 = and i1 %99, %101
  br i1 %102, label %103, label %112

; <label>:103                                     ; preds = %0
  %104 = fmul fast float %61, %58
  %105 = fmul fast float %60, %57
  %106 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %19, float %105, float %104, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %107 = extractvalue %dx.types.ResRet.f32 %106, 0
  %108 = fsub fast float 1.000000e+00, %107
  %109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %110 = extractvalue %dx.types.CBufRet.f32 %109, 0
  %111 = fcmp fast olt float %108, %110
  br label %115

; <label>:112                                     ; preds = %0
  %113 = icmp eq i32 %100, 0
  %114 = and i1 %99, %113
  br label %115

; <label>:115                                     ; preds = %112, %103
  %116 = phi i1 [ %111, %103 ], [ %114, %112 ]
  %117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %118 = extractvalue %dx.types.CBufRet.f32 %117, 2
  %119 = extractvalue %dx.types.CBufRet.f32 %117, 3
  %120 = fmul fast float %118, %57
  %121 = fmul fast float %119, %58
  %122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %123 = extractvalue %dx.types.ResRet.i32 %122, 0
  %124 = and i32 %123, 114688
  %125 = icmp ne i32 %124, 0
  %126 = select i1 %125, float %120, float 0.000000e+00
  %127 = select i1 %125, float %121, float 0.000000e+00
  %128 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %20, float %126, float %127, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %129 = extractvalue %dx.types.ResRet.f32 %128, 0
  %130 = fmul fast float %129, 2.550000e+02
  %131 = fptoui float %130 to i32
  %132 = select i1 %125, i32 %131, i32 0
  %133 = mul i32 %23, 208
  %134 = add i32 %133, 188
  %135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %134, i32 undef)  ; BufferLoad(srv,index,wot)
  %136 = extractvalue %dx.types.ResRet.i32 %135, 0
  %137 = and i32 %97, 114688
  %138 = and i32 %97, 8
  %139 = icmp ne i32 %138, 0
  %140 = or i1 %116, %139
  %141 = select i1 %140, i32 %137, i32 16384
  %142 = and i32 %141, %136
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %145

; <label>:144                                     ; preds = %115
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %145

; <label>:145                                     ; preds = %144, %115
  %146 = and i32 %136, 512
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %172, label %148

; <label>:148                                     ; preds = %145
  %149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %150 = extractvalue %dx.types.CBufRet.f32 %149, 2
  %151 = extractvalue %dx.types.CBufRet.f32 %149, 3
  %152 = fmul fast float %150, %57
  %153 = fmul fast float %151, %58
  %154 = extractvalue %dx.types.CBufRet.f32 %149, 0
  %155 = extractvalue %dx.types.CBufRet.f32 %149, 1
  %156 = fdiv fast float %154, %155
  %157 = fcmp fast ogt float %156, 0x3FFC71C720000000
  br i1 %157, label %158, label %164

; <label>:158                                     ; preds = %148
  %159 = fdiv fast float 0x3FFC71C720000000, %156
  %160 = fmul fast float %159, %153
  %161 = fsub fast float 1.000000e+00, %159
  %162 = fmul fast float %161, 5.000000e-01
  %163 = fadd fast float %162, %160
  br label %172

; <label>:164                                     ; preds = %148
  %165 = fcmp fast olt float %156, 0x3FFC71C720000000
  br i1 %165, label %166, label %172

; <label>:166                                     ; preds = %164
  %167 = fmul fast float %152, 5.625000e-01
  %168 = fmul fast float %167, %156
  %169 = fmul fast float %156, 2.812500e-01
  %170 = fsub fast float 5.000000e-01, %169
  %171 = fadd fast float %170, %168
  br label %172

; <label>:172                                     ; preds = %166, %164, %158, %145
  %173 = phi float [ %43, %145 ], [ %152, %158 ], [ %171, %166 ], [ %152, %164 ]
  %174 = phi float [ %44, %145 ], [ %163, %158 ], [ %153, %166 ], [ %153, %164 ]
  %175 = fadd fast float %43, %40
  %176 = fadd fast float %44, %41
  %177 = add i32 %25, 72
  %178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %177, i32 undef)  ; BufferLoad(srv,index,wot)
  %179 = extractvalue %dx.types.ResRet.i32 %178, 0
  %180 = extractvalue %dx.types.ResRet.i32 %178, 1
  %181 = bitcast i32 %179 to float
  %182 = bitcast i32 %180 to float
  %183 = fmul fast float %181, %43
  %184 = fmul fast float %182, %44
  %185 = call float @dx.op.unary.f32(i32 22, float %183)  ; Frc(value)
  %186 = call float @dx.op.unary.f32(i32 22, float %184)  ; Frc(value)
  %187 = and i32 %136, 16
  %188 = icmp ne i32 %187, 0
  %189 = select i1 %188, float 1.000000e+00, float %48
  %190 = icmp eq i32 %187, 0
  br i1 %190, label %210, label %191, !dx.controlflow.hints !62

; <label>:191                                     ; preds = %172
  %192 = add i32 %133, 64
  %193 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %192, i32 undef)  ; BufferLoad(srv,index,wot)
  %194 = extractvalue %dx.types.ResRet.f32 %193, 0
  %195 = fadd fast float %194, 1.000000e+00
  %196 = fmul fast float %195, %48
  %197 = fsub fast float %196, %194
  %198 = fsub fast float %195, %197
  %199 = call float @dx.op.unary.f32(i32 7, float %198)  ; Saturate(value)
  %200 = fsub fast float 1.000000e+00, %196
  %201 = call float @dx.op.unary.f32(i32 7, float %200)  ; Saturate(value)
  %202 = fsub fast float %199, %201
  %203 = fsub fast float %189, %201
  %204 = fdiv fast float %203, %202
  %205 = call float @dx.op.unary.f32(i32 7, float %204)  ; Saturate(value)
  %206 = fmul fast float %205, 2.000000e+00
  %207 = fsub fast float 3.000000e+00, %206
  %208 = fmul fast float %205, %205
  %209 = fmul fast float %208, %207
  br label %210

; <label>:210                                     ; preds = %191, %172
  %211 = phi float [ %209, %191 ], [ %189, %172 ]
  %212 = fcmp fast ogt float %211, 0.000000e+00
  br i1 %212, label %214, label %213

; <label>:213                                     ; preds = %210
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %214

; <label>:214                                     ; preds = %213, %210
  %215 = call float @dx.op.unary.f32(i32 7, float %211)  ; Saturate(value)
  %216 = fmul fast float %57, 5.000000e-01
  %217 = fmul fast float %58, 5.000000e-01
  %218 = fptosi float %216 to i32
  %219 = fptosi float %217 to i32
  %220 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %218, i32 %219, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %221 = extractvalue %dx.types.ResRet.i32 %220, 0
  %222 = lshr i32 %221, 18
  %223 = uitofp i32 %222 to float
  %224 = fmul fast float %223, 0x3F4C00EBA0000000
  %225 = call float @dx.op.unary.f32(i32 21, float %224)  ; Exp(value)
  %226 = fadd fast float %225, -1.000000e+00
  %227 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %10, i32 0)  ; GetDimensions(handle,mipLevel)
  %228 = extractvalue %dx.types.Dimensions %227, 0
  %229 = sitofp i32 %228 to float
  %230 = extractvalue %dx.types.Dimensions %227, 1
  %231 = sitofp i32 %230 to float
  %232 = fcmp fast oge float %216, %229
  %233 = fcmp fast oge float %217, %231
  %234 = or i1 %232, %233
  %235 = select i1 %234, float 0x4197782600000000, float %226
  %236 = fsub fast float %235, %52
  %237 = fcmp fast ogt float %236, 0.000000e+00
  %238 = and i32 %132, -2
  %239 = icmp eq i32 %238, 2
  %240 = and i1 %239, %237
  %241 = xor i1 %237, true
  %242 = icmp eq i32 %132, 1
  %243 = and i1 %242, %241
  %244 = or i1 %240, %243
  %245 = and i32 %136, 262144
  %246 = icmp ne i32 %245, 0
  %247 = and i1 %246, %244
  %248 = xor i1 %244, true
  %249 = and i32 %136, 131072
  %250 = icmp ne i32 %249, 0
  %251 = and i1 %250, %248
  %252 = or i1 %247, %251
  br i1 %252, label %253, label %254

; <label>:253                                     ; preds = %214
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %254

; <label>:254                                     ; preds = %253, %214
  %255 = and i32 %136, 32
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %534, label %257, !dx.controlflow.hints !63

; <label>:257                                     ; preds = %254
  %258 = add i32 %133, 80
  %259 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %258, i32 undef)  ; BufferLoad(srv,index,wot)
  %260 = extractvalue %dx.types.ResRet.f32 %259, 0
  %261 = extractvalue %dx.types.ResRet.f32 %259, 1
  %262 = extractvalue %dx.types.ResRet.f32 %259, 2
  %263 = extractvalue %dx.types.ResRet.f32 %259, 3
  %264 = add i32 %133, 96
  %265 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %264, i32 undef)  ; BufferLoad(srv,index,wot)
  %266 = extractvalue %dx.types.ResRet.f32 %265, 0
  %267 = extractvalue %dx.types.ResRet.f32 %265, 1
  %268 = extractvalue %dx.types.ResRet.f32 %265, 2
  %269 = add i32 %133, 112
  %270 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %269, i32 undef)  ; BufferLoad(srv,index,wot)
  %271 = extractvalue %dx.types.ResRet.f32 %270, 0
  %272 = extractvalue %dx.types.ResRet.f32 %270, 1
  %273 = extractvalue %dx.types.ResRet.f32 %270, 2
  %274 = extractvalue %dx.types.ResRet.f32 %270, 3
  %275 = add i32 %133, 128
  %276 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %275, i32 undef)  ; BufferLoad(srv,index,wot)
  %277 = extractvalue %dx.types.ResRet.f32 %276, 0
  %278 = extractvalue %dx.types.ResRet.f32 %276, 1
  %279 = extractvalue %dx.types.ResRet.f32 %276, 2
  %280 = extractvalue %dx.types.ResRet.f32 %276, 3
  %281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %134, i32 undef)  ; BufferLoad(srv,index,wot)
  %282 = extractvalue %dx.types.ResRet.i32 %281, 0
  %283 = and i32 %282, 4096
  %284 = icmp ne i32 %283, 0
  %285 = fcmp fast une float %268, 0.000000e+00
  %286 = and i32 %282, 64
  %287 = icmp ne i32 %286, 0
  %288 = and i32 %282, 128
  %289 = icmp eq i32 %288, 0
  %290 = and i32 %282, 2048
  %291 = icmp eq i32 %290, 0
  %292 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %13, i32 0)  ; GetDimensions(handle,mipLevel)
  %293 = extractvalue %dx.types.Dimensions %292, 0
  %294 = sitofp i32 %293 to float
  %295 = extractvalue %dx.types.Dimensions %292, 1
  %296 = sitofp i32 %295 to float
  %297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %298 = extractvalue %dx.types.CBufRet.f32 %297, 2
  %299 = extractvalue %dx.types.CBufRet.f32 %297, 3
  %300 = fmul fast float %298, %57
  %301 = fmul fast float %299, %58
  %302 = fmul fast float %300, %294
  %303 = fmul fast float %301, %296
  %304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %305 = extractvalue %dx.types.CBufRet.f32 %304, 1
  %306 = fsub fast float -0.000000e+00, %305
  %307 = fptoui float %306 to i32
  %308 = fptoui float %302 to i32
  %309 = fptoui float %303 to i32
  %310 = and i32 %307, 31
  %311 = lshr i32 %308, %310
  %312 = lshr i32 %309, %310
  %313 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %13, i32 %307, i32 %311, i32 %312, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %314 = extractvalue %dx.types.ResRet.f32 %313, 0
  %315 = fcmp fast ogt float %314, -1.000000e+00
  %316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %317 = extractvalue %dx.types.CBufRet.f32 %316, 1
  %318 = select i1 %315, float %317, float 1.000000e+00
  %319 = fadd fast float %314, 1.000000e+00
  %320 = fmul fast float %318, %319
  %321 = call float @dx.op.unary.f32(i32 6, float %320)  ; FAbs(value)
  %322 = extractvalue %dx.types.CBufRet.f32 %316, 3
  %323 = fcmp fast oge float %321, %322
  %324 = select i1 %323, float 0x4197782600000000, float %321
  br i1 %291, label %414, label %325, !dx.controlflow.hints !64

; <label>:325                                     ; preds = %257
  %326 = fmul fast float %62, %298
  %327 = fmul fast float %64, %299
  %328 = fsub fast float 1.000000e+00, %326
  %329 = fsub fast float 1.000000e+00, %327
  %330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %331 = extractvalue %dx.types.CBufRet.f32 %330, 0
  %332 = extractvalue %dx.types.CBufRet.f32 %330, 1
  %333 = extractvalue %dx.types.CBufRet.f32 %330, 2
  %334 = fmul fast float %328, %331
  %335 = fmul fast float %328, %332
  %336 = fmul fast float %328, %333
  %337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %338 = extractvalue %dx.types.CBufRet.f32 %337, 0
  %339 = extractvalue %dx.types.CBufRet.f32 %337, 1
  %340 = extractvalue %dx.types.CBufRet.f32 %337, 2
  %341 = fmul fast float %329, %338
  %342 = fmul fast float %329, %339
  %343 = fmul fast float %329, %340
  %344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %345 = extractvalue %dx.types.CBufRet.f32 %344, 0
  %346 = extractvalue %dx.types.CBufRet.f32 %344, 1
  %347 = extractvalue %dx.types.CBufRet.f32 %344, 2
  %348 = fadd fast float %341, %345
  %349 = fadd fast float %348, %334
  %350 = fadd fast float %342, %346
  %351 = fadd fast float %350, %335
  %352 = fadd fast float %343, %347
  %353 = fadd fast float %352, %336
  %354 = fmul fast float %349, %324
  %355 = fmul fast float %351, %324
  %356 = fmul fast float %353, %324
  %357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %358 = extractvalue %dx.types.CBufRet.f32 %357, 0
  %359 = extractvalue %dx.types.CBufRet.f32 %357, 1
  %360 = extractvalue %dx.types.CBufRet.f32 %357, 2
  %361 = fsub fast float %358, %26
  %362 = fadd fast float %361, %354
  %363 = fsub fast float %359, %27
  %364 = fadd fast float %363, %355
  %365 = fsub fast float %360, %28
  %366 = fadd fast float %365, %356
  %367 = fmul fast float %29, %29
  %368 = call float @dx.op.dot3.f32(i32 55, float %362, float %364, float %366, float %362, float %364, float %366)  ; Dot3(ax,ay,az,bx,by,bz)
  %369 = fsub fast float %367, %368
  %370 = fmul fast float %267, %367
  %371 = fmul fast float %266, %367
  %372 = fcmp fast olt float %369, %370
  %373 = fcmp fast ogt float %369, %371
  %374 = or i1 %372, %373
  %375 = select i1 %374, float 0.000000e+00, float %369
  %376 = fsub fast float %266, %267
  %377 = fmul fast float %376, %367
  %378 = fsub fast float %375, %370
  %379 = fdiv fast float %378, %377
  %380 = call float @dx.op.unary.f32(i32 7, float %379)  ; Saturate(value)
  %381 = fmul fast float %380, 2.000000e+00
  %382 = fsub fast float 3.000000e+00, %381
  %383 = fmul fast float %380, %380
  %384 = fmul fast float %383, %382
  %385 = fmul fast float %271, %45
  %386 = fmul fast float %272, %46
  %387 = fmul fast float %273, %47
  %388 = fsub fast float %385, %277
  %389 = fsub fast float %386, %278
  %390 = fsub fast float %387, %279
  %391 = fsub fast float %274, %280
  %392 = fmul fast float %384, %388
  %393 = fmul fast float %384, %389
  %394 = fmul fast float %384, %390
  %395 = fmul fast float %384, %391
  %396 = fadd fast float %392, %277
  %397 = fadd fast float %393, %278
  %398 = fadd fast float %394, %279
  %399 = fadd fast float %395, %280
  %400 = fmul fast float %271, %30
  %401 = fmul fast float %272, %31
  %402 = fmul fast float %273, %32
  %403 = fsub fast float %400, %277
  %404 = fsub fast float %401, %278
  %405 = fsub fast float %402, %279
  %406 = fmul fast float %384, %403
  %407 = fmul fast float %384, %404
  %408 = fmul fast float %384, %405
  %409 = fadd fast float %406, %277
  %410 = fadd fast float %407, %278
  %411 = fadd fast float %408, %279
  %412 = fmul fast float %260, %260
  %413 = fmul fast float %412, %375
  br label %521

; <label>:414                                     ; preds = %257
  %415 = and i32 %282, 256
  %416 = icmp eq i32 %415, 0
  %417 = fsub fast float %324, %52
  br i1 %416, label %478, label %418

; <label>:418                                     ; preds = %414
  %419 = fadd fast float %266, %52
  %420 = fcmp fast olt float %324, %52
  %421 = fcmp fast ogt float %324, %419
  %422 = or i1 %420, %421
  %423 = select i1 %422, float 0.000000e+00, float %417
  %424 = call float @dx.op.unary.f32(i32 83, float %324)  ; DerivCoarseX(value)
  %425 = call float @dx.op.unary.f32(i32 84, float %324)  ; DerivCoarseY(value)
  %426 = fmul fast float %424, %424
  %427 = fmul fast float %425, %425
  %428 = fadd fast float %427, %426
  %429 = call float @dx.op.unary.f32(i32 24, float %428)  ; Sqrt(value)
  %430 = extractvalue %dx.types.CBufRet.f32 %304, 2
  %431 = fmul fast float %430, %429
  %432 = call float @dx.op.unary.f32(i32 7, float %431)  ; Saturate(value)
  %433 = fmul fast float %432, %267
  %434 = fdiv fast float %417, %433
  %435 = call float @dx.op.unary.f32(i32 7, float %434)  ; Saturate(value)
  %436 = fmul fast float %435, 2.000000e+00
  %437 = fsub fast float 3.000000e+00, %436
  %438 = fmul fast float %435, %435
  %439 = fmul fast float %438, %437
  %440 = fsub fast float %324, %419
  %441 = fadd fast float %440, %433
  %442 = fdiv fast float %441, %433
  %443 = call float @dx.op.unary.f32(i32 7, float %442)  ; Saturate(value)
  %444 = fmul fast float %443, 2.000000e+00
  %445 = fsub fast float 3.000000e+00, %444
  %446 = fmul fast float %443, %443
  %447 = fmul fast float %446, %445
  %448 = fsub fast float %439, %447
  %449 = fmul fast float %271, %45
  %450 = fmul fast float %272, %46
  %451 = fmul fast float %273, %47
  %452 = fsub fast float %449, %277
  %453 = fsub fast float %450, %278
  %454 = fsub fast float %451, %279
  %455 = fsub fast float %274, %280
  %456 = fmul fast float %448, %452
  %457 = fmul fast float %448, %453
  %458 = fmul fast float %448, %454
  %459 = fmul fast float %448, %455
  %460 = fadd fast float %456, %277
  %461 = fadd fast float %457, %278
  %462 = fadd fast float %458, %279
  %463 = fadd fast float %459, %280
  %464 = fmul fast float %271, %30
  %465 = fmul fast float %272, %31
  %466 = fmul fast float %273, %32
  %467 = fsub fast float %464, %277
  %468 = fsub fast float %465, %278
  %469 = fsub fast float %466, %279
  %470 = fmul fast float %448, %467
  %471 = fmul fast float %448, %468
  %472 = fmul fast float %448, %469
  %473 = fadd fast float %470, %277
  %474 = fadd fast float %471, %278
  %475 = fadd fast float %472, %279
  %476 = fmul fast float %423, %260
  %477 = call float @dx.op.unary.f32(i32 6, float %476)  ; FAbs(value)
  br label %521

; <label>:478                                     ; preds = %414
  br i1 %285, label %479, label %492

; <label>:479                                     ; preds = %478
  %480 = fdiv fast float 5.000000e+01, %29
  %481 = select i1 %287, float %480, float 1.000000e+00
  %482 = fmul fast float %481, %260
  %483 = fmul fast float %185, 2.000000e+00
  %484 = fmul fast float %186, 2.000000e+00
  %485 = fadd fast float %483, -1.000000e+00
  %486 = fadd fast float %484, -1.000000e+00
  %487 = call float @dx.op.dot2.f32(i32 54, float %485, float %486, float %485, float %486)  ; Dot2(ax,ay,bx,by)
  %488 = fmul fast float %268, %29
  %489 = fmul fast float %488, %487
  %490 = fsub fast float %417, %489
  %491 = fmul fast float %482, %490
  br label %521

; <label>:492                                     ; preds = %478
  br i1 %289, label %513, label %493

; <label>:493                                     ; preds = %492
  %494 = fmul fast float %29, 0x3F947AE140000000
  %495 = select i1 %287, float %494, float 1.000000e+00
  %496 = fdiv fast float 1.000000e+00, %495
  %497 = fmul fast float %495, %261
  %498 = fmul fast float %495, %262
  %499 = fmul fast float %496, %263
  %500 = call float @dx.op.unary.f32(i32 6, float %417)  ; FAbs(value)
  %501 = fcmp fast olt float %500, %497
  br i1 %501, label %502, label %506, !dx.controlflow.hints !65

; <label>:502                                     ; preds = %493
  %503 = fmul fast float %496, %260
  %504 = fmul fast float %503, %500
  %505 = call float @dx.op.unary.f32(i32 6, float %504)  ; FAbs(value)
  br label %521

; <label>:506                                     ; preds = %493
  %507 = fcmp fast ogt float %500, %498
  br i1 %507, label %508, label %521

; <label>:508                                     ; preds = %506
  %509 = fsub fast float %500, %498
  %510 = fmul fast float %499, %509
  %511 = call float @dx.op.unary.f32(i32 6, float %510)  ; FAbs(value)
  %512 = fsub fast float 1.000000e+00, %511
  br label %521

; <label>:513                                     ; preds = %492
  %514 = fdiv fast float 5.000000e+01, %29
  %515 = select i1 %287, float %514, float 1.000000e+00
  %516 = fmul fast float %515, %260
  %517 = call float @dx.op.unary.f32(i32 6, float %236)  ; FAbs(value)
  %518 = select i1 %284, float %517, float 0x47EFFFFFE0000000
  %519 = call float @dx.op.binary.f32(i32 36, float %417, float %518)  ; FMin(a,b)
  %520 = fmul fast float %516, %519
  br label %521

; <label>:521                                     ; preds = %513, %508, %506, %502, %479, %418, %325
  %522 = phi float [ %413, %325 ], [ %477, %418 ], [ %491, %479 ], [ %520, %513 ], [ %505, %502 ], [ %512, %508 ], [ %500, %506 ]
  %523 = phi float [ %409, %325 ], [ %473, %418 ], [ %30, %479 ], [ %30, %513 ], [ %30, %502 ], [ %30, %508 ], [ %30, %506 ]
  %524 = phi float [ %410, %325 ], [ %474, %418 ], [ %31, %479 ], [ %31, %513 ], [ %31, %502 ], [ %31, %508 ], [ %31, %506 ]
  %525 = phi float [ %411, %325 ], [ %475, %418 ], [ %32, %479 ], [ %32, %513 ], [ %32, %502 ], [ %32, %508 ], [ %32, %506 ]
  %526 = phi float [ %396, %325 ], [ %460, %418 ], [ %45, %479 ], [ %45, %513 ], [ %45, %502 ], [ %45, %508 ], [ %45, %506 ]
  %527 = phi float [ %397, %325 ], [ %461, %418 ], [ %46, %479 ], [ %46, %513 ], [ %46, %502 ], [ %46, %508 ], [ %46, %506 ]
  %528 = phi float [ %398, %325 ], [ %462, %418 ], [ %47, %479 ], [ %47, %513 ], [ %47, %502 ], [ %47, %508 ], [ %47, %506 ]
  %529 = phi float [ %399, %325 ], [ %463, %418 ], [ 1.000000e+00, %479 ], [ 1.000000e+00, %513 ], [ 1.000000e+00, %502 ], [ 1.000000e+00, %508 ], [ 1.000000e+00, %506 ]
  %530 = call float @dx.op.unary.f32(i32 7, float %522)  ; Saturate(value)
  %531 = fmul fast float %530, %48
  %532 = fmul fast float %529, %215
  %533 = fmul fast float %532, %530
  br label %534

; <label>:534                                     ; preds = %521, %254
  %535 = phi float [ %526, %521 ], [ %45, %254 ]
  %536 = phi float [ %527, %521 ], [ %46, %254 ]
  %537 = phi float [ %528, %521 ], [ %47, %254 ]
  %538 = phi float [ %533, %521 ], [ %215, %254 ]
  %539 = phi float [ %531, %521 ], [ %48, %254 ]
  %540 = phi float [ %523, %521 ], [ %30, %254 ]
  %541 = phi float [ %524, %521 ], [ %31, %254 ]
  %542 = phi float [ %525, %521 ], [ %32, %254 ]
  %543 = fmul fast float %540, %33
  %544 = fmul fast float %541, %33
  %545 = fmul fast float %542, %33
  %546 = fmul fast float %540, %39
  %547 = fmul fast float %541, %39
  %548 = fmul fast float %542, %39
  %549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %550 = extractvalue %dx.types.CBufRet.f32 %549, 2
  %551 = fptosi float %52 to i32
  %552 = sitofp i32 %551 to float
  %553 = fadd fast float %550, %552
  %554 = fmul fast float %553, 0x3FE3C6EF40000000
  %555 = frem fast float %57, 2.560000e+02
  %556 = frem fast float %58, 2.560000e+02
  %557 = fptoui float %555 to i32
  %558 = fptoui float %556 to i32
  %559 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %17, i32 0, i32 %557, i32 %558, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %560 = extractvalue %dx.types.ResRet.f32 %559, 0
  %561 = fadd fast float %560, %554
  %562 = call float @dx.op.unary.f32(i32 22, float %561)  ; Frc(value)
  %563 = and i32 %136, 1
  %564 = icmp eq i32 %563, 0
  br i1 %564, label %625, label %565, !dx.controlflow.hints !66

; <label>:565                                     ; preds = %534
  %566 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %133, i32 undef)  ; BufferLoad(srv,index,wot)
  %567 = extractvalue %dx.types.ResRet.f32 %566, 2
  %568 = extractvalue %dx.types.ResRet.f32 %566, 3
  %569 = add i32 %133, 16
  %570 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %569, i32 undef)  ; BufferLoad(srv,index,wot)
  %571 = extractvalue %dx.types.ResRet.f32 %570, 0
  %572 = extractvalue %dx.types.ResRet.f32 %570, 1
  %573 = extractvalue %dx.types.ResRet.f32 %570, 2
  %574 = add i32 %133, 32
  %575 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %574, i32 undef)  ; BufferLoad(srv,index,wot)
  %576 = extractvalue %dx.types.ResRet.f32 %575, 0
  %577 = extractvalue %dx.types.ResRet.f32 %575, 1
  %578 = extractvalue %dx.types.ResRet.f32 %575, 2
  %579 = and i32 %136, 2
  %580 = icmp eq i32 %579, 0
  %581 = call float @dx.op.dot3.f32(i32 55, float %36, float %37, float %38, float %36, float %37, float %38)  ; Dot3(ax,ay,az,bx,by,bz)
  %582 = call float @dx.op.unary.f32(i32 25, float %581)  ; Rsqrt(value)
  %583 = fmul fast float %582, %36
  %584 = fmul fast float %582, %37
  %585 = fmul fast float %582, %38
  %586 = call float @dx.op.dot3.f32(i32 55, float %92, float %93, float %94, float %92, float %93, float %94)  ; Dot3(ax,ay,az,bx,by,bz)
  %587 = call float @dx.op.unary.f32(i32 25, float %586)  ; Rsqrt(value)
  %588 = fmul fast float %587, %92
  %589 = fmul fast float %587, %93
  %590 = fmul fast float %587, %94
  %591 = call float @dx.op.dot3.f32(i32 55, float %588, float %589, float %590, float %583, float %584, float %585)  ; Dot3(ax,ay,az,bx,by,bz)
  %592 = fmul fast float %591, %591
  %593 = fmul fast float %592, %567
  %594 = fadd fast float %593, %568
  %595 = call float @dx.op.unary.f32(i32 7, float %594)  ; Saturate(value)
  br i1 %580, label %596, label %606, !dx.controlflow.hints !67

; <label>:596                                     ; preds = %565
  %597 = extractvalue %dx.types.ResRet.f32 %566, 1
  %598 = extractvalue %dx.types.ResRet.f32 %566, 0
  %599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %600 = extractvalue %dx.types.CBufRet.f32 %599, 3
  %601 = fmul fast float %600, %586
  %602 = fsub fast float %598, %601
  %603 = fmul fast float %602, %597
  %604 = call float @dx.op.unary.f32(i32 7, float %603)  ; Saturate(value)
  %605 = fmul fast float %604, %595
  br label %606

; <label>:606                                     ; preds = %596, %565
  %607 = phi float [ %605, %596 ], [ %595, %565 ]
  %608 = fsub fast float %571, %576
  %609 = fsub fast float %572, %577
  %610 = fsub fast float %573, %578
  %611 = fmul fast float %607, %608
  %612 = fmul fast float %607, %609
  %613 = fmul fast float %607, %610
  %614 = fadd fast float %611, %576
  %615 = fadd fast float %612, %577
  %616 = fadd fast float %613, %578
  %617 = fmul fast float %614, %535
  %618 = fmul fast float %615, %536
  %619 = fmul fast float %616, %537
  %620 = fmul fast float %614, %543
  %621 = fmul fast float %615, %544
  %622 = fmul fast float %616, %545
  %623 = fmul fast float %607, %538
  %624 = fmul fast float %607, %539
  br label %625

; <label>:625                                     ; preds = %606, %534
  %626 = phi float [ %617, %606 ], [ %535, %534 ]
  %627 = phi float [ %618, %606 ], [ %536, %534 ]
  %628 = phi float [ %619, %606 ], [ %537, %534 ]
  %629 = phi float [ %623, %606 ], [ %538, %534 ]
  %630 = phi float [ %624, %606 ], [ %539, %534 ]
  %631 = phi float [ %620, %606 ], [ %543, %534 ]
  %632 = phi float [ %621, %606 ], [ %544, %534 ]
  %633 = phi float [ %622, %606 ], [ %545, %534 ]
  %634 = add i32 %25, 120
  %635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %634, i32 undef)  ; BufferLoad(srv,index,wot)
  %636 = extractvalue %dx.types.ResRet.i32 %635, 0
  %637 = add i32 %636, 0
  %638 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %637, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %639 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %638, %dx.types.Handle %53, float %173, float %174, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %640 = extractvalue %dx.types.ResRet.f32 %639, 0
  %641 = extractvalue %dx.types.ResRet.f32 %639, 1
  %642 = extractvalue %dx.types.ResRet.f32 %639, 2
  %643 = add i32 %25, 56
  %644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %643, i32 undef)  ; BufferLoad(srv,index,wot)
  %645 = extractvalue %dx.types.ResRet.i32 %644, 0
  %646 = and i32 %645, 255
  %647 = uitofp i32 %646 to float
  %648 = fmul fast float %647, 0x3F70101020000000
  %649 = lshr i32 %645, 8
  %650 = and i32 %649, 255
  %651 = uitofp i32 %650 to float
  %652 = fmul fast float %651, 0x3F70101020000000
  %653 = lshr i32 %645, 16
  %654 = and i32 %653, 255
  %655 = uitofp i32 %654 to float
  %656 = fmul fast float %655, 0x3F70101020000000
  %657 = fmul fast float %648, %648
  %658 = fmul fast float %657, %640
  %659 = fmul fast float %652, %652
  %660 = fmul fast float %659, %641
  %661 = fmul fast float %656, %656
  %662 = fmul fast float %661, %642
  %663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %634, i32 undef)  ; BufferLoad(srv,index,wot)
  %664 = extractvalue %dx.types.ResRet.i32 %663, 0
  %665 = add i32 %664, 0
  %666 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %665, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %667 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %666, %dx.types.Handle %53, float %175, float %176, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %668 = extractvalue %dx.types.ResRet.f32 %667, 0
  %669 = extractvalue %dx.types.ResRet.f32 %667, 1
  %670 = extractvalue %dx.types.ResRet.f32 %667, 2
  %671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %643, i32 undef)  ; BufferLoad(srv,index,wot)
  %672 = extractvalue %dx.types.ResRet.i32 %671, 0
  %673 = and i32 %672, 255
  %674 = uitofp i32 %673 to float
  %675 = fmul fast float %674, 0x3F70101020000000
  %676 = lshr i32 %672, 8
  %677 = and i32 %676, 255
  %678 = uitofp i32 %677 to float
  %679 = fmul fast float %678, 0x3F70101020000000
  %680 = lshr i32 %672, 16
  %681 = and i32 %680, 255
  %682 = uitofp i32 %681 to float
  %683 = fmul fast float %682, 0x3F70101020000000
  %684 = fmul fast float %675, %675
  %685 = fmul fast float %684, %668
  %686 = fmul fast float %679, %679
  %687 = fmul fast float %686, %669
  %688 = fmul fast float %683, %683
  %689 = fmul fast float %688, %670
  %690 = fsub fast float %685, %658
  %691 = fsub fast float %687, %660
  %692 = fsub fast float %689, %662
  %693 = fmul fast float %690, %42
  %694 = fmul fast float %691, %42
  %695 = fmul fast float %692, %42
  %696 = fadd fast float %693, %658
  %697 = fadd fast float %694, %660
  %698 = fadd fast float %695, %662
  %699 = fmul fast float %696, %626
  %700 = fmul fast float %697, %627
  %701 = fmul fast float %698, %628
  %702 = add i32 %25, 124
  %703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %702, i32 undef)  ; BufferLoad(srv,index,wot)
  %704 = extractvalue %dx.types.ResRet.i32 %703, 0
  %705 = add i32 %704, 0
  %706 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %705, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %707 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %706, %dx.types.Handle %53, float %173, float %174, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %708 = extractvalue %dx.types.ResRet.f32 %707, 0
  %709 = extractvalue %dx.types.ResRet.f32 %707, 1
  %710 = extractvalue %dx.types.ResRet.f32 %707, 2
  %711 = add i32 %25, 44
  %712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %711, i32 undef)  ; BufferLoad(srv,index,wot)
  %713 = extractvalue %dx.types.ResRet.i32 %712, 0
  %714 = shl i32 %713, 4
  %715 = and i32 %714, 32752
  %716 = call float @dx.op.legacyF16ToF32(i32 131, i32 %715)  ; LegacyF16ToF32(value)
  %717 = lshr i32 %713, 7
  %718 = and i32 %717, 32752
  %719 = call float @dx.op.legacyF16ToF32(i32 131, i32 %718)  ; LegacyF16ToF32(value)
  %720 = lshr i32 %713, 22
  %721 = shl nuw nsw i32 %720, 5
  %722 = call float @dx.op.legacyF16ToF32(i32 131, i32 %721)  ; LegacyF16ToF32(value)
  %723 = fmul fast float %716, %708
  %724 = fmul fast float %719, %709
  %725 = fmul fast float %722, %710
  %726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %727 = extractvalue %dx.types.CBufRet.f32 %726, 0
  %728 = fmul fast float %723, %727
  %729 = fmul fast float %724, %727
  %730 = fmul fast float %725, %727
  %731 = add i32 %25, 48
  %732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %731, i32 undef)  ; BufferLoad(srv,index,wot)
  %733 = extractvalue %dx.types.ResRet.i32 %732, 0
  %734 = lshr i32 %733, 22
  %735 = shl nuw nsw i32 %734, 5
  %736 = call float @dx.op.legacyF16ToF32(i32 131, i32 %735)  ; LegacyF16ToF32(value)
  %737 = fmul fast float %736, %728
  %738 = select i1 %116, float %737, float %728
  %739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %702, i32 undef)  ; BufferLoad(srv,index,wot)
  %740 = extractvalue %dx.types.ResRet.i32 %739, 0
  %741 = add i32 %740, 0
  %742 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %741, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %743 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %742, %dx.types.Handle %53, float %175, float %176, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %744 = extractvalue %dx.types.ResRet.f32 %743, 0
  %745 = extractvalue %dx.types.ResRet.f32 %743, 1
  %746 = extractvalue %dx.types.ResRet.f32 %743, 2
  %747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %711, i32 undef)  ; BufferLoad(srv,index,wot)
  %748 = extractvalue %dx.types.ResRet.i32 %747, 0
  %749 = shl i32 %748, 4
  %750 = and i32 %749, 32752
  %751 = call float @dx.op.legacyF16ToF32(i32 131, i32 %750)  ; LegacyF16ToF32(value)
  %752 = lshr i32 %748, 7
  %753 = and i32 %752, 32752
  %754 = call float @dx.op.legacyF16ToF32(i32 131, i32 %753)  ; LegacyF16ToF32(value)
  %755 = lshr i32 %748, 22
  %756 = shl nuw nsw i32 %755, 5
  %757 = call float @dx.op.legacyF16ToF32(i32 131, i32 %756)  ; LegacyF16ToF32(value)
  %758 = fmul fast float %751, %744
  %759 = fmul fast float %754, %745
  %760 = fmul fast float %757, %746
  %761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %762 = extractvalue %dx.types.CBufRet.f32 %761, 0
  %763 = fmul fast float %758, %762
  %764 = fmul fast float %759, %762
  %765 = fmul fast float %760, %762
  %766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %731, i32 undef)  ; BufferLoad(srv,index,wot)
  %767 = extractvalue %dx.types.ResRet.i32 %766, 0
  %768 = lshr i32 %767, 22
  %769 = shl nuw nsw i32 %768, 5
  %770 = call float @dx.op.legacyF16ToF32(i32 131, i32 %769)  ; LegacyF16ToF32(value)
  %771 = fmul fast float %770, %763
  %772 = select i1 %116, float %771, float %763
  %773 = fsub fast float %772, %738
  %774 = fsub fast float %764, %729
  %775 = fsub fast float %765, %730
  %776 = fmul fast float %773, %42
  %777 = fmul fast float %774, %42
  %778 = fmul fast float %775, %42
  %779 = fadd fast float %776, %738
  %780 = fadd fast float %777, %729
  %781 = fadd fast float %778, %730
  %782 = add i32 %25, 40
  %783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %782, i32 undef)  ; BufferLoad(srv,index,wot)
  %784 = extractvalue %dx.types.ResRet.i32 %783, 0
  %785 = and i32 %784, 255
  %786 = uitofp i32 %785 to float
  %787 = fmul fast float %786, 0x3F70101020000000
  %788 = fmul fast float %787, %787
  %789 = add i32 %25, 132
  %790 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %789, i32 undef)  ; BufferLoad(srv,index,wot)
  %791 = extractvalue %dx.types.ResRet.i32 %790, 0
  %792 = add i32 %791, 0
  %793 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %792, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %794 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %793, %dx.types.Handle %54, float %173, float %174, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %795 = extractvalue %dx.types.ResRet.f32 %794, 0
  %796 = fmul fast float %788, %795
  %797 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %782, i32 undef)  ; BufferLoad(srv,index,wot)
  %798 = extractvalue %dx.types.ResRet.i32 %797, 0
  %799 = and i32 %798, 255
  %800 = uitofp i32 %799 to float
  %801 = fmul fast float %800, 0x3F70101020000000
  %802 = fmul fast float %801, %801
  %803 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %789, i32 undef)  ; BufferLoad(srv,index,wot)
  %804 = extractvalue %dx.types.ResRet.i32 %803, 0
  %805 = add i32 %804, 0
  %806 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %805, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %807 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %806, %dx.types.Handle %54, float %175, float %176, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %808 = extractvalue %dx.types.ResRet.f32 %807, 0
  %809 = fmul fast float %802, %808
  %810 = fsub fast float %809, %796
  %811 = fmul fast float %810, %42
  %812 = fadd fast float %811, %796
  %813 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %19, float %34, float %35, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %814 = extractvalue %dx.types.ResRet.f32 %813, 0
  %815 = extractvalue %dx.types.ResRet.f32 %813, 1
  %816 = extractvalue %dx.types.ResRet.f32 %813, 2
  %817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %818 = extractvalue %dx.types.CBufRet.f32 %817, 1
  %819 = fmul fast float %818, %814
  %820 = fmul fast float %818, %815
  %821 = fmul fast float %818, %816
  %822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %823 = extractvalue %dx.types.CBufRet.f32 %822, 0
  %824 = fmul fast float %699, %823
  %825 = fmul fast float %700, %823
  %826 = fmul fast float %701, %823
  %827 = fmul fast float %779, %631
  %828 = fmul fast float %780, %632
  %829 = fmul fast float %781, %633
  %830 = call float @dx.op.dot3.f32(i32 55, float %827, float %828, float %829, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %831 = select i1 %116, float 0.000000e+00, float %827
  %832 = select i1 %116, float %830, float %828
  %833 = select i1 %116, float 0.000000e+00, float %829
  %834 = fmul fast float %546, %779
  %835 = fmul fast float %547, %780
  %836 = fmul fast float %548, %781
  %837 = call float @dx.op.dot3.f32(i32 55, float %824, float %825, float %826, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %838 = add i32 %25, 32
  %839 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %838, i32 undef)  ; BufferLoad(srv,index,wot)
  %840 = extractvalue %dx.types.ResRet.i32 %839, 0
  %841 = and i32 %840, 255
  %842 = uitofp i32 %841 to float
  %843 = lshr i32 %840, 8
  %844 = and i32 %843, 255
  %845 = uitofp i32 %844 to float
  %846 = fmul fast float %845, %837
  %847 = fadd fast float %846, %842
  %848 = fmul fast float %847, 0x3F70101020000000
  %849 = call float @dx.op.unary.f32(i32 7, float %848)  ; Saturate(value)
  %850 = add i32 %25, 128
  %851 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %850, i32 undef)  ; BufferLoad(srv,index,wot)
  %852 = extractvalue %dx.types.ResRet.i32 %851, 0
  %853 = add i32 %852, 0
  %854 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %853, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %855 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %854, %dx.types.Handle %54, float %173, float %174, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %856 = extractvalue %dx.types.ResRet.f32 %855, 0
  %857 = and i32 %136, 8192
  %858 = icmp eq i32 %857, 0
  %859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %860 = extractvalue %dx.types.CBufRet.f32 %859, 0
  br i1 %858, label %871, label %861, !dx.controlflow.hints !68

; <label>:861                                     ; preds = %625
  %862 = add i32 %133, 176
  %863 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %862, i32 undef)  ; BufferLoad(srv,index,wot)
  %864 = extractvalue %dx.types.ResRet.f32 %863, 0
  %865 = extractvalue %dx.types.ResRet.f32 %863, 1
  %866 = fcmp fast oge float %864, 0.000000e+00
  %867 = select i1 %866, float %864, float %860
  %868 = fmul fast float %856, %95
  %869 = fmul fast float %868, %865
  %870 = fadd fast float %869, %867
  br label %882

; <label>:871                                     ; preds = %625
  %872 = add i32 %25, 104
  %873 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %872, i32 undef)  ; BufferLoad(srv,index,wot)
  %874 = extractvalue %dx.types.ResRet.i32 %873, 0
  %875 = extractvalue %dx.types.ResRet.i32 %873, 1
  %876 = bitcast i32 %874 to float
  %877 = bitcast i32 %875 to float
  %878 = fcmp fast oge float %876, 0.000000e+00
  %879 = select i1 %878, float %876, float %860
  %880 = fmul fast float %877, %856
  %881 = fadd fast float %879, %880
  br label %882

; <label>:882                                     ; preds = %871, %861
  %883 = phi float [ %870, %861 ], [ %881, %871 ]
  %884 = fsub fast float 1.000000e+00, %812
  %885 = fmul fast float %884, %630
  %886 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %218, i32 %219, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %887 = extractvalue %dx.types.ResRet.i32 %886, 0
  %888 = lshr i32 %887, 18
  %889 = uitofp i32 %888 to float
  %890 = fmul fast float %889, 0x3F4C00EBA0000000
  %891 = call float @dx.op.unary.f32(i32 21, float %890)  ; Exp(value)
  %892 = fadd fast float %891, -1.000000e+00
  %893 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %10, i32 0)  ; GetDimensions(handle,mipLevel)
  %894 = extractvalue %dx.types.Dimensions %893, 0
  %895 = sitofp i32 %894 to float
  %896 = extractvalue %dx.types.Dimensions %893, 1
  %897 = sitofp i32 %896 to float
  %898 = fcmp fast oge float %216, %895
  %899 = fcmp fast oge float %217, %897
  %900 = or i1 %898, %899
  %901 = select i1 %900, float 0x4197782600000000, float %892
  %902 = icmp eq i32 %132, 3
  %903 = fcmp fast ogt float %52, %901
  %904 = and i1 %242, %903
  %905 = or i1 %902, %904
  %906 = icmp eq i32 %132, 2
  %907 = fcmp fast ole float %52, %901
  %908 = and i1 %906, %907
  %909 = or i1 %908, %905
  %910 = fmul fast float %834, %819
  %911 = fmul fast float %835, %820
  %912 = fmul fast float %836, %821
  %913 = fadd fast float %910, %831
  %914 = fadd fast float %832, %911
  %915 = fadd fast float %912, %833
  %916 = fmul fast float %913, %629
  %917 = fmul fast float %914, %629
  %918 = fmul fast float %915, %629
  %919 = fmul fast float %819, %629
  %920 = fmul fast float %820, %629
  %921 = fmul fast float %821, %629
  %922 = fadd fast float %812, -1.000000e+00
  %923 = fmul fast float %922, %629
  %924 = fadd fast float %923, 1.000000e+00
  %925 = call float @dx.op.dot3.f32(i32 55, float %924, float %924, float %924, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %926 = fsub fast float 1.000000e+00, %925
  %927 = fmul fast float %883, %849
  %928 = fsub fast float 1.000000e+00, %885
  %929 = fsub fast float %928, %849
  %930 = call float @dx.op.unary.f32(i32 7, float %929)  ; Saturate(value)
  %931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %932 = extractvalue %dx.types.CBufRet.f32 %931, 3
  %933 = fmul fast float %932, %930
  %934 = fadd fast float %933, %927
  %935 = and i32 %136, 1048576
  %936 = icmp eq i32 %935, 0
  br i1 %936, label %1028, label %937, !dx.controlflow.hints !69

; <label>:937                                     ; preds = %882
  %938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %939 = extractvalue %dx.types.CBufRet.f32 %938, 2
  %940 = extractvalue %dx.types.CBufRet.f32 %938, 3
  %941 = fmul fast float %939, %57
  %942 = fmul fast float %940, %58
  %943 = call float @dx.op.unary.f32(i32 7, float %941)  ; Saturate(value)
  %944 = call float @dx.op.unary.f32(i32 7, float %942)  ; Saturate(value)
  %945 = select i1 %909, i32 2, i32 0
  %946 = or i32 %945, 1
  %947 = uitofp i32 %946 to float
  %948 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %943, float %944, float %947, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %949 = extractvalue %dx.types.ResRet.f32 %948, 0
  %950 = extractvalue %dx.types.ResRet.f32 %948, 1
  %951 = extractvalue %dx.types.ResRet.f32 %948, 2
  %952 = extractvalue %dx.types.ResRet.f32 %948, 3
  %953 = add nuw nsw i32 %945, 2
  %954 = uitofp i32 %953 to float
  %955 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %943, float %944, float %954, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %956 = extractvalue %dx.types.ResRet.f32 %955, 0
  %957 = extractvalue %dx.types.ResRet.f32 %955, 1
  %958 = extractvalue %dx.types.ResRet.f32 %955, 2
  %959 = extractvalue %dx.types.ResRet.f32 %955, 3
  %960 = call float @dx.op.binary.f32(i32 35, float %950, float %951)  ; FMax(a,b)
  %961 = call float @dx.op.binary.f32(i32 35, float %949, float %960)  ; FMax(a,b)
  %962 = call float @dx.op.binary.f32(i32 35, float %961, float %952)  ; FMax(a,b)
  %963 = call float @dx.op.binary.f32(i32 36, float %957, float %958)  ; FMin(a,b)
  %964 = call float @dx.op.binary.f32(i32 36, float %956, float %963)  ; FMin(a,b)
  %965 = call float @dx.op.binary.f32(i32 36, float %964, float %959)  ; FMin(a,b)
  %966 = fmul fast float %962, 2.550000e+02
  %967 = fadd fast float %966, 0x3F70101020000000
  %968 = fptoui float %967 to i32
  %969 = fmul fast float %965, 2.550000e+02
  %970 = fadd fast float %969, 0x3F70101020000000
  %971 = fptoui float %970 to i32
  %972 = icmp ult i32 %968, %971
  br i1 %972, label %973, label %1021

; <label>:973                                     ; preds = %937
  %974 = fcmp fast ogt float %51, 9.843750e-01
  %975 = fadd fast float %52, -4.000000e+00
  %976 = select i1 %974, float -4.000000e+00, float %975
  %977 = call float @dx.op.binary.f32(i32 35, float %976, float 0.000000e+00)  ; FMax(a,b)
  %978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %979 = extractvalue %dx.types.CBufRet.f32 %978, 0
  %980 = fadd fast float %979, %977
  %981 = extractvalue %dx.types.CBufRet.f32 %978, 2
  %982 = fmul fast float %980, %981
  %983 = call float @dx.op.unary.f32(i32 23, float %982)  ; Log(value)
  %984 = extractvalue %dx.types.CBufRet.f32 %978, 3
  %985 = fmul fast float %984, %983
  %986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %987 = extractvalue %dx.types.CBufRet.f32 %986, 2
  %988 = fmul fast float %985, %987
  %989 = call float @dx.op.unary.f32(i32 7, float %988)  ; Saturate(value)
  %990 = uitofp i32 %968 to float
  %991 = uitofp i32 %971 to float
  %992 = fadd fast float %990, 5.000000e-01
  %993 = fadd fast float %991, 5.000000e-01
  %994 = fmul fast float %987, %992
  %995 = fmul fast float %987, %993
  %996 = fadd fast float %994, 0x3F0FFB4800000000
  %997 = fadd fast float %995, 0xBF0FFB4800000000
  %998 = call float @dx.op.binary.f32(i32 35, float %989, float %996)  ; FMax(a,b)
  %999 = call float @dx.op.binary.f32(i32 36, float %998, float %997)  ; FMin(a,b)
  %1000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1001 = extractvalue %dx.types.CBufRet.f32 %1000, 1
  %1002 = extractvalue %dx.types.CBufRet.f32 %1000, 2
  %1003 = extractvalue %dx.types.CBufRet.f32 %1000, 0
  %1004 = select i1 %909, float %1003, float 0.000000e+00
  %1005 = fmul fast float %1001, %999
  %1006 = fadd fast float %1004, %1005
  %1007 = fadd fast float %1004, %1002
  %1008 = fsub fast float %1001, %1002
  %1009 = fadd fast float %1008, %1004
  %1010 = call float @dx.op.binary.f32(i32 35, float %1006, float %1007)  ; FMax(a,b)
  %1011 = call float @dx.op.binary.f32(i32 36, float %1010, float %1009)  ; FMin(a,b)
  %1012 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %18, float %943, float %944, float %1011, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1013 = extractvalue %dx.types.ResRet.f32 %1012, 0
  %1014 = extractvalue %dx.types.ResRet.f32 %1012, 1
  %1015 = extractvalue %dx.types.ResRet.f32 %1012, 2
  %1016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1017 = extractvalue %dx.types.CBufRet.f32 %1016, 1
  %1018 = fmul fast float %1017, %1013
  %1019 = fmul fast float %1017, %1014
  %1020 = fmul fast float %1017, %1015
  br label %1021

; <label>:1021                                    ; preds = %973, %937
  %1022 = phi float [ %1018, %973 ], [ 1.000000e+00, %937 ]
  %1023 = phi float [ %1019, %973 ], [ 1.000000e+00, %937 ]
  %1024 = phi float [ %1020, %973 ], [ 1.000000e+00, %937 ]
  %1025 = fmul fast float %1022, %916
  %1026 = fmul fast float %1023, %917
  %1027 = fmul fast float %1024, %918
  br label %1028

; <label>:1028                                    ; preds = %1021, %882
  %1029 = phi float [ %1025, %1021 ], [ %916, %882 ]
  %1030 = phi float [ %1026, %1021 ], [ %917, %882 ]
  %1031 = phi float [ %1027, %1021 ], [ %918, %882 ]
  %1032 = and i32 %136, 2097152
  %1033 = icmp eq i32 %1032, 0
  br i1 %1033, label %1038, label %1034, !dx.controlflow.hints !70

; <label>:1034                                    ; preds = %1028
  %1035 = add i32 %133, 192
  %1036 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %1035, i32 undef)  ; BufferLoad(srv,index,wot)
  %1037 = extractvalue %dx.types.ResRet.f32 %1036, 0
  br label %1041

; <label>:1038                                    ; preds = %1028
  %1039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1040 = extractvalue %dx.types.CBufRet.f32 %1039, 3
  br label %1041

; <label>:1041                                    ; preds = %1038, %1034
  %1042 = phi float [ %1037, %1034 ], [ %1040, %1038 ]
  %1043 = fmul fast float %919, %824
  %1044 = fmul fast float %920, %825
  %1045 = fmul fast float %921, %826
  br i1 %904, label %1046, label %1155

; <label>:1046                                    ; preds = %1041
  %1047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1048 = extractvalue %dx.types.CBufRet.f32 %1047, 2
  %1049 = extractvalue %dx.types.CBufRet.f32 %1047, 3
  %1050 = fmul fast float %1048, %57
  %1051 = fmul fast float %1049, %58
  %1052 = call float @dx.op.unary.f32(i32 7, float %1050)  ; Saturate(value)
  %1053 = call float @dx.op.unary.f32(i32 7, float %1051)  ; Saturate(value)
  %1054 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %1052, float %1053, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1055 = extractvalue %dx.types.ResRet.f32 %1054, 0
  %1056 = extractvalue %dx.types.ResRet.f32 %1054, 1
  %1057 = extractvalue %dx.types.ResRet.f32 %1054, 2
  %1058 = extractvalue %dx.types.ResRet.f32 %1054, 3
  %1059 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %1052, float %1053, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1060 = extractvalue %dx.types.ResRet.f32 %1059, 0
  %1061 = extractvalue %dx.types.ResRet.f32 %1059, 1
  %1062 = extractvalue %dx.types.ResRet.f32 %1059, 2
  %1063 = extractvalue %dx.types.ResRet.f32 %1059, 3
  %1064 = call float @dx.op.binary.f32(i32 35, float %1056, float %1057)  ; FMax(a,b)
  %1065 = call float @dx.op.binary.f32(i32 35, float %1055, float %1064)  ; FMax(a,b)
  %1066 = call float @dx.op.binary.f32(i32 35, float %1065, float %1058)  ; FMax(a,b)
  %1067 = call float @dx.op.binary.f32(i32 36, float %1061, float %1062)  ; FMin(a,b)
  %1068 = call float @dx.op.binary.f32(i32 36, float %1060, float %1067)  ; FMin(a,b)
  %1069 = call float @dx.op.binary.f32(i32 36, float %1068, float %1063)  ; FMin(a,b)
  %1070 = fmul fast float %1066, 2.550000e+02
  %1071 = fadd fast float %1070, 0x3F70101020000000
  %1072 = fptoui float %1071 to i32
  %1073 = fmul fast float %1069, 2.550000e+02
  %1074 = fadd fast float %1073, 0x3F70101020000000
  %1075 = fptoui float %1074 to i32
  %1076 = icmp ult i32 %1072, %1075
  br i1 %1076, label %1077, label %1128

; <label>:1077                                    ; preds = %1046
  %1078 = fcmp fast ogt float %51, 9.843750e-01
  %1079 = fadd fast float %52, -4.000000e+00
  %1080 = select i1 %1078, float -4.000000e+00, float %1079
  %1081 = call float @dx.op.binary.f32(i32 35, float %1080, float 0.000000e+00)  ; FMax(a,b)
  %1082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1083 = extractvalue %dx.types.CBufRet.f32 %1082, 0
  %1084 = fadd fast float %1083, %1081
  %1085 = extractvalue %dx.types.CBufRet.f32 %1082, 2
  %1086 = fmul fast float %1084, %1085
  %1087 = call float @dx.op.unary.f32(i32 23, float %1086)  ; Log(value)
  %1088 = extractvalue %dx.types.CBufRet.f32 %1082, 3
  %1089 = fmul fast float %1088, %1087
  %1090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1091 = extractvalue %dx.types.CBufRet.f32 %1090, 2
  %1092 = fmul fast float %1089, %1091
  %1093 = call float @dx.op.unary.f32(i32 7, float %1092)  ; Saturate(value)
  %1094 = uitofp i32 %1072 to float
  %1095 = uitofp i32 %1075 to float
  %1096 = fadd fast float %1094, 5.000000e-01
  %1097 = fadd fast float %1095, 5.000000e-01
  %1098 = fmul fast float %1091, %1096
  %1099 = fmul fast float %1091, %1097
  %1100 = fadd fast float %1098, 0x3F0FFB4800000000
  %1101 = fadd fast float %1099, 0xBF0FFB4800000000
  %1102 = call float @dx.op.binary.f32(i32 35, float %1093, float %1100)  ; FMax(a,b)
  %1103 = call float @dx.op.binary.f32(i32 36, float %1102, float %1101)  ; FMin(a,b)
  %1104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1105 = extractvalue %dx.types.CBufRet.f32 %1104, 1
  %1106 = extractvalue %dx.types.CBufRet.f32 %1104, 2
  %1107 = extractvalue %dx.types.CBufRet.f32 %1104, 0
  %1108 = fmul fast float %1105, %1103
  %1109 = fadd fast float %1107, %1108
  %1110 = fadd fast float %1107, %1106
  %1111 = fsub fast float %1105, %1106
  %1112 = fadd fast float %1111, %1107
  %1113 = call float @dx.op.binary.f32(i32 35, float %1109, float %1110)  ; FMax(a,b)
  %1114 = call float @dx.op.binary.f32(i32 36, float %1113, float %1112)  ; FMin(a,b)
  %1115 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %1052, float %1053, float %1114, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1116 = extractvalue %dx.types.ResRet.f32 %1115, 0
  %1117 = extractvalue %dx.types.ResRet.f32 %1115, 1
  %1118 = extractvalue %dx.types.ResRet.f32 %1115, 2
  %1119 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %1052, float %1053, float %1114, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1120 = extractvalue %dx.types.ResRet.f32 %1119, 0
  %1121 = extractvalue %dx.types.ResRet.f32 %1119, 1
  %1122 = extractvalue %dx.types.ResRet.f32 %1119, 2
  %1123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1124 = extractvalue %dx.types.CBufRet.f32 %1123, 1
  %1125 = fmul fast float %1124, %1120
  %1126 = fmul fast float %1124, %1121
  %1127 = fmul fast float %1124, %1122
  br label %1128

; <label>:1128                                    ; preds = %1077, %1046
  %1129 = phi float [ %1116, %1077 ], [ 1.000000e+00, %1046 ]
  %1130 = phi float [ %1117, %1077 ], [ 1.000000e+00, %1046 ]
  %1131 = phi float [ %1118, %1077 ], [ 1.000000e+00, %1046 ]
  %1132 = phi float [ %1125, %1077 ], [ 0.000000e+00, %1046 ]
  %1133 = phi float [ %1126, %1077 ], [ 0.000000e+00, %1046 ]
  %1134 = phi float [ %1127, %1077 ], [ 0.000000e+00, %1046 ]
  %1135 = fmul fast float %1132, %926
  %1136 = fmul fast float %1133, %926
  %1137 = fmul fast float %1134, %926
  %1138 = call float @dx.op.dot3.f32(i32 55, float %1129, float %1130, float %1131, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1139 = call float @dx.op.dot3.f32(i32 55, float %1135, float %1136, float %1137, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1140 = select i1 %116, float %1138, float %1129
  %1141 = select i1 %116, float %1138, float %1130
  %1142 = select i1 %116, float 1.000000e+00, float %1131
  %1143 = select i1 %116, float %1139, float %1135
  %1144 = select i1 %116, float 0.000000e+00, float %1136
  %1145 = select i1 %116, float 0.000000e+00, float %1137
  %1146 = fmul fast float %1140, %1043
  %1147 = fmul fast float %1141, %1044
  %1148 = fmul fast float %1142, %1045
  %1149 = fadd fast float %1146, %1143
  %1150 = fadd fast float %1147, %1144
  %1151 = fadd fast float %1145, %1148
  %1152 = fmul fast float %1140, %1029
  %1153 = fmul fast float %1141, %1030
  %1154 = fmul fast float %1142, %1031
  br label %1155

; <label>:1155                                    ; preds = %1128, %1041
  %1156 = phi float [ %901, %1128 ], [ %52, %1041 ]
  %1157 = phi float [ %1149, %1128 ], [ %1043, %1041 ]
  %1158 = phi float [ %1150, %1128 ], [ %1044, %1041 ]
  %1159 = phi float [ %1151, %1128 ], [ %1045, %1041 ]
  %1160 = phi float [ %1152, %1128 ], [ %1029, %1041 ]
  %1161 = phi float [ %1153, %1128 ], [ %1030, %1041 ]
  %1162 = phi float [ %1154, %1128 ], [ %1031, %1041 ]
  %1163 = phi float [ %1129, %1128 ], [ 1.000000e+00, %1041 ]
  br i1 %909, label %1465, label %1164

; <label>:1164                                    ; preds = %1155
  %1165 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %19, float %34, float %35, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1166 = extractvalue %dx.types.ResRet.f32 %1165, 0
  %1167 = extractvalue %dx.types.ResRet.f32 %1165, 1
  %1168 = extractvalue %dx.types.ResRet.f32 %1165, 2
  %1169 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %19, float %34, float %35, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1170 = extractvalue %dx.types.ResRet.f32 %1169, 0
  %1171 = extractvalue %dx.types.ResRet.f32 %1169, 1
  %1172 = extractvalue %dx.types.ResRet.f32 %1169, 2
  %1173 = fmul fast float %1166, %926
  %1174 = fmul fast float %1167, %926
  %1175 = fmul fast float %1168, %926
  %1176 = fmul fast float %1170, %1163
  %1177 = call float @dx.op.dot3.f32(i32 55, float %1170, float %1171, float %1172, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1178 = call float @dx.op.dot3.f32(i32 55, float %1173, float %1174, float %1175, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1179 = select i1 %116, float %1177, float %1170
  %1180 = select i1 %116, float %1177, float %1171
  %1181 = select i1 %116, float 1.000000e+00, float %1172
  %1182 = select i1 %116, float %1178, float %1173
  %1183 = select i1 %116, float 0.000000e+00, float %1174
  %1184 = select i1 %116, float 0.000000e+00, float %1175
  %1185 = fmul fast float %1179, %1157
  %1186 = fmul fast float %1180, %1158
  %1187 = fmul fast float %1181, %1159
  %1188 = fadd fast float %1185, %1182
  %1189 = fadd fast float %1186, %1183
  %1190 = fadd fast float %1187, %1184
  %1191 = fmul fast float %1179, %1160
  %1192 = fmul fast float %1180, %1161
  %1193 = fmul fast float %1181, %1162
  %1194 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1195 = extractvalue %dx.types.CBufRet.i32 %1194, 0
  %1196 = icmp eq i32 %1195, 0
  br i1 %1196, label %1465, label %1197, !dx.controlflow.hints !71

; <label>:1197                                    ; preds = %1164
  %1198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1199 = extractvalue %dx.types.CBufRet.f32 %1198, 2
  %1200 = extractvalue %dx.types.CBufRet.f32 %1198, 3
  %1201 = fmul fast float %1199, %57
  %1202 = fmul fast float %1200, %58
  %1203 = fmul fast float %1201, 2.000000e+00
  %1204 = fmul fast float %1202, 2.000000e+00
  %1205 = fsub fast float 1.000000e+00, %1203
  %1206 = fsub fast float 1.000000e+00, %1204
  %1207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1208 = extractvalue %dx.types.CBufRet.f32 %1207, 0
  %1209 = extractvalue %dx.types.CBufRet.f32 %1207, 1
  %1210 = extractvalue %dx.types.CBufRet.f32 %1207, 2
  %1211 = fmul fast float %1205, %1208
  %1212 = fmul fast float %1205, %1209
  %1213 = fmul fast float %1205, %1210
  %1214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1215 = extractvalue %dx.types.CBufRet.f32 %1214, 0
  %1216 = extractvalue %dx.types.CBufRet.f32 %1214, 1
  %1217 = extractvalue %dx.types.CBufRet.f32 %1214, 2
  %1218 = fmul fast float %1206, %1215
  %1219 = fmul fast float %1206, %1216
  %1220 = fmul fast float %1206, %1217
  %1221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1222 = extractvalue %dx.types.CBufRet.f32 %1221, 0
  %1223 = extractvalue %dx.types.CBufRet.f32 %1221, 1
  %1224 = extractvalue %dx.types.CBufRet.f32 %1221, 2
  %1225 = fadd fast float %1218, %1222
  %1226 = fadd fast float %1225, %1211
  %1227 = fadd fast float %1219, %1223
  %1228 = fadd fast float %1227, %1212
  %1229 = fadd fast float %1220, %1224
  %1230 = fadd fast float %1229, %1213
  %1231 = fmul fast float %1226, %1156
  %1232 = fmul fast float %1228, %1156
  %1233 = fmul fast float %1230, %1156
  %1234 = fmul fast float %1231, %1231
  %1235 = fmul fast float %1232, %1232
  %1236 = fadd fast float %1234, %1235
  %1237 = fmul fast float %1233, %1233
  %1238 = fadd fast float %1236, %1237
  %1239 = call float @dx.op.unary.f32(i32 24, float %1238)  ; Sqrt(value)
  %1240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1241 = extractvalue %dx.types.CBufRet.f32 %1240, 0
  %1242 = fsub fast float %1239, %1241
  %1243 = extractvalue %dx.types.CBufRet.f32 %1240, 2
  %1244 = fmul fast float %1242, %1243
  %1245 = call float @dx.op.unary.f32(i32 7, float %1244)  ; Saturate(value)
  %1246 = fadd fast float %1245, -5.000000e-01
  %1247 = fmul fast float %1246, 2.000000e+00
  %1248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1249 = extractvalue %dx.types.CBufRet.f32 %1248, 2
  %1250 = call float @dx.op.binary.f32(i32 36, float %1249, float %1247)  ; FMin(a,b)
  %1251 = fsub fast float -0.000000e+00, %1249
  %1252 = fcmp fast ogt float %1250, %1251
  br i1 %1252, label %1253, label %1465, !dx.controlflow.hints !72

; <label>:1253                                    ; preds = %1197
  %1254 = fmul fast float %1250, 5.000000e-01
  %1255 = fadd fast float %1254, 5.000000e-01
  %1256 = call float @dx.op.unary.f32(i32 22, float %1255)  ; Frc(value)
  %1257 = call float @dx.op.unary.f32(i32 27, float %1256)  ; Round_ni(value)
  %1258 = call float @dx.op.unary.f32(i32 22, float %1256)  ; Frc(value)
  %1259 = fmul fast float %1258, 2.000000e+00
  %1260 = fadd fast float %1259, -1.000000e+00
  %1261 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %19, float %1201, float %1202, float %1257, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1262 = extractvalue %dx.types.ResRet.f32 %1261, 0
  %1263 = extractvalue %dx.types.ResRet.f32 %1261, 1
  %1264 = extractvalue %dx.types.ResRet.f32 %1261, 2
  %1265 = extractvalue %dx.types.ResRet.f32 %1261, 3
  %1266 = fadd fast float %1262, -5.000000e-01
  %1267 = fadd fast float %1264, -5.000000e-01
  %1268 = fmul fast float %1266, 0xBFD5555560000000
  %1269 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1267, float %1268)  ; FMad(a,b,c)
  %1270 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1263, float 0.000000e+00)  ; FMad(a,b,c)
  %1271 = fadd fast float %1270, %1265
  %1272 = fmul fast float %1266, -7.500000e-01
  %1273 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1267, float %1272)  ; FMad(a,b,c)
  %1274 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1263, float 0.000000e+00)  ; FMad(a,b,c)
  %1275 = fadd fast float %1274, %1265
  %1276 = call float @dx.op.binary.f32(i32 35, float %1269, float -1.000000e+00)  ; FMax(a,b)
  %1277 = call float @dx.op.binary.f32(i32 35, float %1271, float -1.000000e+00)  ; FMax(a,b)
  %1278 = call float @dx.op.binary.f32(i32 35, float %1273, float -1.000000e+00)  ; FMax(a,b)
  %1279 = call float @dx.op.binary.f32(i32 35, float %1275, float -1.000000e+00)  ; FMax(a,b)
  %1280 = call float @dx.op.binary.f32(i32 36, float %1276, float 1.000000e+00)  ; FMin(a,b)
  %1281 = call float @dx.op.binary.f32(i32 36, float %1277, float 1.000000e+00)  ; FMin(a,b)
  %1282 = call float @dx.op.binary.f32(i32 36, float %1278, float 1.000000e+00)  ; FMin(a,b)
  %1283 = call float @dx.op.binary.f32(i32 36, float %1279, float 1.000000e+00)  ; FMin(a,b)
  %1284 = fcmp fast olt float %1280, 0x3FEFFF8020000000
  br i1 %1284, label %1285, label %1400, !dx.controlflow.hints !73

; <label>:1285                                    ; preds = %1253
  %1286 = extractvalue %dx.types.CBufRet.f32 %1248, 3
  %1287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1288 = extractvalue %dx.types.CBufRet.f32 %1287, 0
  %1289 = extractvalue %dx.types.CBufRet.f32 %1287, 1
  %1290 = extractvalue %dx.types.CBufRet.f32 %1287, 2
  %1291 = extractvalue %dx.types.CBufRet.f32 %1287, 3
  %1292 = fsub fast float %1288, %1280
  %1293 = fsub fast float %1289, %1281
  %1294 = fsub fast float %1290, %1282
  %1295 = fsub fast float %1291, %1283
  %1296 = fmul fast float %1292, %1286
  %1297 = fmul fast float %1293, %1286
  %1298 = fmul fast float %1294, %1286
  %1299 = fmul fast float %1295, %1286
  %1300 = fadd fast float %1296, %1280
  %1301 = fadd fast float %1297, %1281
  %1302 = fsub fast float -0.000000e+00, %1301
  %1303 = fadd fast float %1298, %1282
  %1304 = fadd fast float %1299, %1283
  %1305 = fmul fast float %1300, %1300
  %1306 = fsub fast float %1301, %1305
  %1307 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1306)  ; FMax(a,b)
  %1308 = fdiv fast float 1.000000e+00, %1307
  %1309 = fmul fast float %1301, %1300
  %1310 = fsub fast float %1303, %1309
  %1311 = fsub fast float %1260, %1300
  %1312 = fmul fast float %1260, %1260
  %1313 = fsub fast float %1312, %1301
  %1314 = fmul fast float %1311, %1308
  %1315 = fmul fast float %1314, %1310
  %1316 = fsub fast float %1313, %1315
  %1317 = fmul fast float %1301, %1301
  %1318 = fsub fast float %1304, %1317
  %1319 = fmul fast float %1310, %1310
  %1320 = fmul fast float %1319, %1308
  %1321 = fsub fast float %1318, %1320
  %1322 = fdiv fast float %1316, %1321
  %1323 = fmul fast float %1310, %1322
  %1324 = fsub fast float %1311, %1323
  %1325 = fmul fast float %1324, %1308
  %1326 = fmul fast float %1325, %1300
  %1327 = fsub fast float 1.000000e+00, %1326
  %1328 = fmul fast float %1301, %1322
  %1329 = fsub fast float %1327, %1328
  %1330 = fmul fast float %1325, %1325
  %1331 = fmul fast float %1322, 4.000000e+00
  %1332 = fmul fast float %1331, %1329
  %1333 = fsub fast float %1330, %1332
  %1334 = call float @dx.op.unary.f32(i32 24, float %1333)  ; Sqrt(value)
  %1335 = fcmp fast oge float %1325, 0.000000e+00
  %1336 = fsub fast float -0.000000e+00, %1334
  %1337 = select i1 %1335, float %1336, float %1334
  %1338 = fsub fast float %1337, %1325
  %1339 = fdiv fast float %1338, %1322
  %1340 = fdiv fast float %1329, %1338
  %1341 = fmul fast float %1339, 5.000000e-01
  %1342 = fmul fast float %1340, 2.000000e+00
  %1343 = select i1 %1335, float %1341, float %1342
  %1344 = select i1 %1335, float %1342, float %1341
  %1345 = call float @dx.op.binary.f32(i32 35, float %1343, float %1344)  ; FMax(a,b)
  %1346 = call float @dx.op.binary.f32(i32 36, float %1343, float %1344)  ; FMin(a,b)
  %1347 = fcmp fast ogt float %1260, %1346
  br i1 %1347, label %1348, label %1358

; <label>:1348                                    ; preds = %1285
  %1349 = fsub fast float %1260, %1346
  %1350 = fsub fast float %1345, %1346
  %1351 = fmul fast float %1349, %1350
  %1352 = fmul fast float %1345, %1260
  %1353 = fadd fast float %1345, %1260
  %1354 = fmul fast float %1353, %1300
  %1355 = fadd fast float %1352, %1301
  %1356 = fsub fast float %1355, %1354
  %1357 = fdiv fast float %1356, %1351
  br label %1358

; <label>:1358                                    ; preds = %1348, %1285
  %1359 = phi float [ %1357, %1348 ], [ 0.000000e+00, %1285 ]
  %1360 = fcmp fast ogt float %1260, %1345
  %1361 = fsub fast float %1260, %1345
  br i1 %1360, label %1362, label %1372

; <label>:1362                                    ; preds = %1358
  %1363 = fsub fast float %1345, %1346
  %1364 = fmul fast float %1363, %1361
  %1365 = fmul fast float %1346, %1260
  %1366 = fadd fast float %1346, %1260
  %1367 = fmul fast float %1366, %1300
  %1368 = fsub fast float %1302, %1365
  %1369 = fadd fast float %1368, %1367
  %1370 = fdiv fast float %1369, %1364
  %1371 = fadd fast float %1370, %1359
  br label %1372

; <label>:1372                                    ; preds = %1362, %1358
  %1373 = phi float [ %1371, %1362 ], [ %1359, %1358 ]
  %1374 = fsub fast float %1260, %1346
  %1375 = fmul fast float %1374, %1361
  %1376 = fmul fast float %1346, %1345
  %1377 = fadd fast float %1346, %1345
  %1378 = fmul fast float %1377, %1300
  %1379 = fadd fast float %1376, %1301
  %1380 = fsub fast float %1379, %1378
  %1381 = fdiv fast float %1380, %1375
  %1382 = call float @dx.op.unary.f32(i32 7, float %1373)  ; Saturate(value)
  %1383 = fcmp fast oeq float %1042, 0.000000e+00
  %1384 = extractvalue %dx.types.CBufRet.f32 %1248, 0
  %1385 = fcmp fast oeq float %1384, 0.000000e+00
  %1386 = or i1 %1383, %1385
  %1387 = fmul fast float %1384, 2.000000e+00
  %1388 = fadd fast float %1249, %1250
  %1389 = fdiv fast float %1388, %1387
  %1390 = call float @dx.op.unary.f32(i32 7, float %1389)  ; Saturate(value)
  %1391 = fmul fast float %1390, 2.000000e+00
  %1392 = fsub fast float 3.000000e+00, %1391
  %1393 = fmul fast float %1390, %1390
  %1394 = fmul fast float %1393, %1392
  %1395 = select i1 %1386, float 1.000000e+00, float %1394
  %1396 = fmul fast float %1381, %1042
  %1397 = fadd fast float %1382, %1396
  %1398 = call float @dx.op.unary.f32(i32 7, float %1397)  ; Saturate(value)
  %1399 = fmul fast float %1395, %1398
  br label %1400

; <label>:1400                                    ; preds = %1372, %1253
  %1401 = phi float [ %1399, %1372 ], [ 0.000000e+00, %1253 ]
  %1402 = fsub fast float 1.000000e+00, %1401
  %1403 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %19, float %1201, float %1202, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1404 = extractvalue %dx.types.ResRet.f32 %1403, 0
  %1405 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1406 = extractvalue %dx.types.CBufRet.i32 %1405, 2
  %1407 = icmp eq i32 %1406, 0
  br i1 %1407, label %1413, label %1408

; <label>:1408                                    ; preds = %1400
  %1409 = call float @dx.op.unary.f32(i32 7, float %1401)  ; Saturate(value)
  %1410 = fadd fast float %1404, -1.000000e+00
  %1411 = fmul fast float %1409, %1410
  %1412 = fadd fast float %1411, 1.000000e+00
  br label %1413

; <label>:1413                                    ; preds = %1408, %1400
  %1414 = phi float [ %1412, %1408 ], [ %1402, %1400 ]
  %1415 = call float @dx.op.binary.f32(i32 35, float %1404, float %1414)  ; FMax(a,b)
  %1416 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %1417 = extractvalue %dx.types.CBufRet.i32 %1416, 2
  %1418 = and i32 %1417, 1
  %1419 = icmp eq i32 %1418, 0
  %1420 = fcmp fast une float %1415, 1.000000e+00
  %1421 = and i1 %1420, %1419
  br i1 %1421, label %1422, label %1441

; <label>:1422                                    ; preds = %1413
  %1423 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %19, float %1201, float %1202, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1424 = extractvalue %dx.types.ResRet.f32 %1423, 0
  %1425 = extractvalue %dx.types.ResRet.f32 %1423, 1
  %1426 = extractvalue %dx.types.ResRet.f32 %1423, 2
  %1427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1428 = extractvalue %dx.types.CBufRet.f32 %1427, 1
  %1429 = fmul fast float %1428, %1424
  %1430 = fmul fast float %1428, %1425
  %1431 = fmul fast float %1428, %1426
  %1432 = fcmp fast ogt float %1404, 0x3FEFFF2E40000000
  %1433 = fsub fast float 1.000000e+00, %1415
  %1434 = fsub fast float 1.000000e+00, %1404
  %1435 = fdiv fast float %1433, %1434
  %1436 = call float @dx.op.unary.f32(i32 7, float %1435)  ; Saturate(value)
  %1437 = select i1 %1432, float 0.000000e+00, float %1436
  %1438 = fmul fast float %1429, %1437
  %1439 = fmul fast float %1430, %1437
  %1440 = fmul fast float %1431, %1437
  br label %1441

; <label>:1441                                    ; preds = %1422, %1413
  %1442 = phi float [ 0.000000e+00, %1413 ], [ %1438, %1422 ]
  %1443 = phi float [ 0.000000e+00, %1413 ], [ %1439, %1422 ]
  %1444 = phi float [ 0.000000e+00, %1413 ], [ %1440, %1422 ]
  %1445 = fmul fast float %1442, %926
  %1446 = fmul fast float %1443, %926
  %1447 = fmul fast float %1444, %926
  %1448 = fmul fast float %1415, %1176
  %1449 = call float @dx.op.dot3.f32(i32 55, float %1415, float %1415, float %1415, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1450 = call float @dx.op.dot3.f32(i32 55, float %1445, float %1446, float %1447, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1451 = select i1 %116, float %1449, float %1415
  %1452 = select i1 %116, float 1.000000e+00, float %1415
  %1453 = select i1 %116, float %1450, float %1445
  %1454 = select i1 %116, float 0.000000e+00, float %1446
  %1455 = select i1 %116, float 0.000000e+00, float %1447
  %1456 = fmul fast float %1451, %1188
  %1457 = fmul fast float %1451, %1189
  %1458 = fmul fast float %1452, %1190
  %1459 = fadd fast float %1456, %1453
  %1460 = fadd fast float %1457, %1454
  %1461 = fadd fast float %1455, %1458
  %1462 = fmul fast float %1451, %1191
  %1463 = fmul fast float %1451, %1192
  %1464 = fmul fast float %1452, %1193
  br label %1465

; <label>:1465                                    ; preds = %1441, %1197, %1164, %1155
  %1466 = phi float [ %1157, %1155 ], [ %1188, %1164 ], [ %1459, %1441 ], [ %1188, %1197 ]
  %1467 = phi float [ %1158, %1155 ], [ %1189, %1164 ], [ %1460, %1441 ], [ %1189, %1197 ]
  %1468 = phi float [ %1159, %1155 ], [ %1190, %1164 ], [ %1461, %1441 ], [ %1190, %1197 ]
  %1469 = phi float [ %1160, %1155 ], [ %1191, %1164 ], [ %1462, %1441 ], [ %1191, %1197 ]
  %1470 = phi float [ %1161, %1155 ], [ %1192, %1164 ], [ %1463, %1441 ], [ %1192, %1197 ]
  %1471 = phi float [ %1162, %1155 ], [ %1193, %1164 ], [ %1464, %1441 ], [ %1193, %1197 ]
  %1472 = phi float [ %1163, %1155 ], [ %1176, %1164 ], [ %1448, %1441 ], [ %1176, %1197 ]
  %1473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1474 = extractvalue %dx.types.CBufRet.f32 %1473, 2
  %1475 = extractvalue %dx.types.CBufRet.f32 %1473, 3
  %1476 = fmul fast float %1474, %57
  %1477 = fmul fast float %1475, %58
  %1478 = call float @dx.op.unary.f32(i32 7, float %1476)  ; Saturate(value)
  %1479 = call float @dx.op.unary.f32(i32 7, float %1477)  ; Saturate(value)
  %1480 = select i1 %909, i32 2, i32 0
  %1481 = or i32 %1480, 1
  %1482 = uitofp i32 %1481 to float
  %1483 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %1478, float %1479, float %1482, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1484 = extractvalue %dx.types.ResRet.f32 %1483, 0
  %1485 = extractvalue %dx.types.ResRet.f32 %1483, 1
  %1486 = extractvalue %dx.types.ResRet.f32 %1483, 2
  %1487 = extractvalue %dx.types.ResRet.f32 %1483, 3
  %1488 = add nuw nsw i32 %1480, 2
  %1489 = uitofp i32 %1488 to float
  %1490 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %1478, float %1479, float %1489, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1491 = extractvalue %dx.types.ResRet.f32 %1490, 0
  %1492 = extractvalue %dx.types.ResRet.f32 %1490, 1
  %1493 = extractvalue %dx.types.ResRet.f32 %1490, 2
  %1494 = extractvalue %dx.types.ResRet.f32 %1490, 3
  %1495 = call float @dx.op.binary.f32(i32 35, float %1485, float %1486)  ; FMax(a,b)
  %1496 = call float @dx.op.binary.f32(i32 35, float %1484, float %1495)  ; FMax(a,b)
  %1497 = call float @dx.op.binary.f32(i32 35, float %1496, float %1487)  ; FMax(a,b)
  %1498 = call float @dx.op.binary.f32(i32 36, float %1492, float %1493)  ; FMin(a,b)
  %1499 = call float @dx.op.binary.f32(i32 36, float %1491, float %1498)  ; FMin(a,b)
  %1500 = call float @dx.op.binary.f32(i32 36, float %1499, float %1494)  ; FMin(a,b)
  %1501 = fmul fast float %1497, 2.550000e+02
  %1502 = fadd fast float %1501, 0x3F70101020000000
  %1503 = fptoui float %1502 to i32
  %1504 = fmul fast float %1500, 2.550000e+02
  %1505 = fadd fast float %1504, 0x3F70101020000000
  %1506 = fptoui float %1505 to i32
  %1507 = icmp ult i32 %1503, %1506
  br i1 %1507, label %1508, label %1560

; <label>:1508                                    ; preds = %1465
  %1509 = fcmp fast ogt float %51, 9.843750e-01
  %1510 = fadd fast float %1156, -4.000000e+00
  %1511 = select i1 %1509, float -4.000000e+00, float %1510
  %1512 = call float @dx.op.binary.f32(i32 35, float %1511, float 0.000000e+00)  ; FMax(a,b)
  %1513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1514 = extractvalue %dx.types.CBufRet.f32 %1513, 0
  %1515 = fadd fast float %1514, %1512
  %1516 = extractvalue %dx.types.CBufRet.f32 %1513, 2
  %1517 = fmul fast float %1515, %1516
  %1518 = call float @dx.op.unary.f32(i32 23, float %1517)  ; Log(value)
  %1519 = extractvalue %dx.types.CBufRet.f32 %1513, 3
  %1520 = fmul fast float %1519, %1518
  %1521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1522 = extractvalue %dx.types.CBufRet.f32 %1521, 2
  %1523 = fmul fast float %1520, %1522
  %1524 = call float @dx.op.unary.f32(i32 7, float %1523)  ; Saturate(value)
  %1525 = uitofp i32 %1503 to float
  %1526 = uitofp i32 %1506 to float
  %1527 = fadd fast float %1525, 5.000000e-01
  %1528 = fadd fast float %1526, 5.000000e-01
  %1529 = fmul fast float %1522, %1527
  %1530 = fmul fast float %1522, %1528
  %1531 = fadd fast float %1529, 0x3F0FFB4800000000
  %1532 = fadd fast float %1530, 0xBF0FFB4800000000
  %1533 = call float @dx.op.binary.f32(i32 35, float %1524, float %1531)  ; FMax(a,b)
  %1534 = call float @dx.op.binary.f32(i32 36, float %1533, float %1532)  ; FMin(a,b)
  %1535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1536 = extractvalue %dx.types.CBufRet.f32 %1535, 1
  %1537 = extractvalue %dx.types.CBufRet.f32 %1535, 2
  %1538 = extractvalue %dx.types.CBufRet.f32 %1535, 0
  %1539 = select i1 %909, float %1538, float 0.000000e+00
  %1540 = fmul fast float %1536, %1534
  %1541 = fadd fast float %1539, %1540
  %1542 = fadd fast float %1539, %1537
  %1543 = fsub fast float %1536, %1537
  %1544 = fadd fast float %1543, %1539
  %1545 = call float @dx.op.binary.f32(i32 35, float %1541, float %1542)  ; FMax(a,b)
  %1546 = call float @dx.op.binary.f32(i32 36, float %1545, float %1544)  ; FMin(a,b)
  %1547 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %1478, float %1479, float %1546, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1548 = extractvalue %dx.types.ResRet.f32 %1547, 0
  %1549 = extractvalue %dx.types.ResRet.f32 %1547, 1
  %1550 = extractvalue %dx.types.ResRet.f32 %1547, 2
  %1551 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %1478, float %1479, float %1546, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1552 = extractvalue %dx.types.ResRet.f32 %1551, 0
  %1553 = extractvalue %dx.types.ResRet.f32 %1551, 1
  %1554 = extractvalue %dx.types.ResRet.f32 %1551, 2
  %1555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1556 = extractvalue %dx.types.CBufRet.f32 %1555, 1
  %1557 = fmul fast float %1556, %1552
  %1558 = fmul fast float %1556, %1553
  %1559 = fmul fast float %1556, %1554
  br label %1560

; <label>:1560                                    ; preds = %1508, %1465
  %1561 = phi float [ %1548, %1508 ], [ 1.000000e+00, %1465 ]
  %1562 = phi float [ %1549, %1508 ], [ 1.000000e+00, %1465 ]
  %1563 = phi float [ %1550, %1508 ], [ 1.000000e+00, %1465 ]
  %1564 = phi float [ %1557, %1508 ], [ 0.000000e+00, %1465 ]
  %1565 = phi float [ %1558, %1508 ], [ 0.000000e+00, %1465 ]
  %1566 = phi float [ %1559, %1508 ], [ 0.000000e+00, %1465 ]
  %1567 = fmul fast float %1564, %926
  %1568 = fmul fast float %1565, %926
  %1569 = fmul fast float %1566, %926
  %1570 = fmul fast float %1561, %1472
  %1571 = call float @dx.op.dot3.f32(i32 55, float %1561, float %1562, float %1563, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1572 = call float @dx.op.dot3.f32(i32 55, float %1567, float %1568, float %1569, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1573 = select i1 %116, float %1571, float %1561
  %1574 = select i1 %116, float %1571, float %1562
  %1575 = select i1 %116, float 1.000000e+00, float %1563
  %1576 = select i1 %116, float %1572, float %1567
  %1577 = select i1 %116, float 0.000000e+00, float %1568
  %1578 = select i1 %116, float 0.000000e+00, float %1569
  %1579 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1580 = extractvalue %dx.types.CBufRet.i32 %1579, 3
  %1581 = and i32 %1580, 3
  %1582 = icmp ne i32 %1581, 0
  %1583 = and i32 %1580, 4
  %1584 = icmp ne i32 %1583, 0
  %1585 = and i1 %1582, %1584
  %1586 = and i1 %116, %1585
  br i1 %1586, label %1587, label %1593

; <label>:1587                                    ; preds = %1560
  %1588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1589 = extractvalue %dx.types.CBufRet.f32 %1588, 1
  %1590 = fadd fast float %1570, -1.000000e+00
  %1591 = fmul fast float %1589, %1590
  %1592 = fadd fast float %1591, 1.000000e+00
  br label %1593

; <label>:1593                                    ; preds = %1587, %1560
  %1594 = phi float [ %1592, %1587 ], [ %1570, %1560 ]
  %1595 = fadd fast float %1469, %1466
  %1596 = fmul fast float %1573, %1595
  %1597 = fadd fast float %1596, %1576
  %1598 = fadd fast float %1470, %1467
  %1599 = fmul fast float %1574, %1598
  %1600 = fadd fast float %1599, %1577
  %1601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1602 = extractvalue %dx.types.CBufRet.f32 %1601, 0
  br i1 %116, label %1603, label %1625

; <label>:1603                                    ; preds = %1593
  %1604 = fadd fast float %1597, %1600
  %1605 = fmul fast float %1602, %1604
  %1606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1607 = extractvalue %dx.types.CBufRet.f32 %1606, 3
  %1608 = extractvalue %dx.types.CBufRet.f32 %931, 1
  %1609 = fsub fast float %934, %1608
  %1610 = extractvalue %dx.types.CBufRet.f32 %931, 2
  %1611 = fmul fast float %1609, %1610
  %1612 = call float @dx.op.unary.f32(i32 7, float %1611)  ; Saturate(value)
  %1613 = fsub fast float %1612, %1607
  %1614 = fmul fast float %1613, %1594
  %1615 = fadd fast float %1614, %1607
  %1616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1617 = extractvalue %dx.types.CBufRet.f32 %1616, 0
  %1618 = fsub fast float %1615, %1617
  %1619 = fmul fast float %1618, 1.000000e+01
  %1620 = call float @dx.op.unary.f32(i32 7, float %1619)  ; Saturate(value)
  %1621 = fsub fast float %885, %926
  %1622 = fmul fast float %1620, %1621
  %1623 = fadd fast float %1622, %926
  %1624 = fmul fast float %1623, %1615
  br label %1637

; <label>:1625                                    ; preds = %1593
  %1626 = fadd fast float %1471, %1468
  %1627 = fmul fast float %1575, %1626
  %1628 = fadd fast float %1627, %1578
  %1629 = fmul fast float %1602, %1597
  %1630 = fmul fast float %1602, %1600
  %1631 = fmul fast float %1602, %1628
  %1632 = call float @dx.op.binary.f32(i32 35, float %1630, float %1631)  ; FMax(a,b)
  %1633 = call float @dx.op.binary.f32(i32 35, float %1629, float %1632)  ; FMax(a,b)
  %1634 = call float @dx.op.binary.f32(i32 35, float %1633, float %926)  ; FMax(a,b)
  %1635 = fcmp fast ugt float %1634, 0x3F10000000000000
  br i1 %1635, label %1637, label %1636

; <label>:1636                                    ; preds = %1625
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1637

; <label>:1637                                    ; preds = %1636, %1625, %1603
  %1638 = phi float [ %1605, %1603 ], [ %1629, %1636 ], [ %1629, %1625 ]
  %1639 = phi float [ %1624, %1603 ], [ %1630, %1636 ], [ %1630, %1625 ]
  %1640 = phi float [ %1623, %1603 ], [ %1631, %1636 ], [ %1631, %1625 ]
  %1641 = phi float [ %1623, %1603 ], [ %926, %1636 ], [ %926, %1625 ]
  %1642 = fadd fast float %562, 0x3FE3C6EF40000000
  %1643 = call float @dx.op.unary.f32(i32 22, float %1642)  ; Frc(value)
  %1644 = call float @dx.op.unary.f32(i32 23, float %1638)  ; Log(value)
  %1645 = fadd fast float %1644, -7.000000e+00
  %1646 = call float @dx.op.unary.f32(i32 21, float %1645)  ; Exp(value)
  %1647 = fmul fast float %1643, 2.000000e+00
  %1648 = fadd fast float %1647, -1.000000e+00
  %1649 = fmul fast float %1646, %1648
  %1650 = fcmp fast ogt float %1638, 0.000000e+00
  %1651 = select i1 %1650, float %1649, float 0.000000e+00
  %1652 = fadd fast float %1651, %1638
  %1653 = fadd fast float %562, 0x3FF3C6EF40000000
  %1654 = call float @dx.op.unary.f32(i32 22, float %1653)  ; Frc(value)
  %1655 = call float @dx.op.unary.f32(i32 23, float %1639)  ; Log(value)
  %1656 = fadd fast float %1655, -7.000000e+00
  %1657 = call float @dx.op.unary.f32(i32 21, float %1656)  ; Exp(value)
  %1658 = fmul fast float %1654, 2.000000e+00
  %1659 = fadd fast float %1658, -1.000000e+00
  %1660 = fmul fast float %1657, %1659
  %1661 = fcmp fast ogt float %1639, 0.000000e+00
  %1662 = select i1 %1661, float %1660, float 0.000000e+00
  %1663 = fadd fast float %1662, %1639
  %1664 = fadd fast float %562, 0x3FFDAA66E0000000
  %1665 = call float @dx.op.unary.f32(i32 22, float %1664)  ; Frc(value)
  %1666 = call float @dx.op.unary.f32(i32 23, float %1640)  ; Log(value)
  %1667 = fadd fast float %1666, -6.000000e+00
  %1668 = call float @dx.op.unary.f32(i32 21, float %1667)  ; Exp(value)
  %1669 = fmul fast float %1665, 2.000000e+00
  %1670 = fadd fast float %1669, -1.000000e+00
  %1671 = fmul fast float %1668, %1670
  %1672 = fcmp fast ogt float %1640, 0.000000e+00
  %1673 = select i1 %1672, float %1671, float 0.000000e+00
  %1674 = fadd fast float %1673, %1640
  %1675 = select i1 %116, float %1639, float %1663
  %1676 = select i1 %116, float %1640, float %1674
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1677 = call float @dx.op.binary.f32(i32 36, float %1652, float 3.225500e+04)  ; FMin(a,b)
  %1678 = call float @dx.op.binary.f32(i32 36, float %1675, float 3.225500e+04)  ; FMin(a,b)
  %1679 = call float @dx.op.binary.f32(i32 36, float %1676, float 3.225500e+04)  ; FMin(a,b)
  %1680 = call float @dx.op.binary.f32(i32 36, float %1641, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1677)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1678)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1679)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1680)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1641)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1641)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1641)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1641)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

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
!dx.viewIdState = !{!35}
!dx.entryPoints = !{!36}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !27, !30}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !17, !18, !19, !20, !22, !23, !24, !25, !26}
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
!26 = !{i32 17, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 46, i32 1, i32 4, i32 0, !7}
!27 = !{!28, !29}
!28 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!29 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!30 = !{!31, !32, !33, !34}
!31 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!32 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!33 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!34 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!35 = !{[37 x i32] [i32 35, i32 8, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 254, i32 255, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255, i32 255, i32 0, i32 255, i32 255, i32 255, i32 7, i32 255, i32 255, i32 0, i32 0, i32 3, i32 3, i32 7, i32 7, i32 255, i32 255, i32 255, i32 255, i32 255, i32 254, i32 255]}
!36 = !{void ()* @ps_main, !"ps_main", !37, !4, !61}
!37 = !{!38, !57, null}
!38 = !{!39, !42, !43, !45, !48, !50, !52, !54, !55, !56}
!39 = !{i32 0, !"SV_Position", i8 9, i8 3, !40, i8 4, i32 1, i8 4, i32 0, i8 0, !41}
!40 = !{i32 0}
!41 = !{i32 3, i32 15}
!42 = !{i32 1, !"COLOR", i8 9, i8 0, !40, i8 2, i32 1, i8 4, i32 1, i8 0, !41}
!43 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !40, i8 2, i32 1, i8 2, i32 2, i8 0, !44}
!44 = !{i32 3, i32 3}
!45 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !46, i8 1, i32 1, i8 4, i32 3, i8 0, !47}
!46 = !{i32 2}
!47 = !{i32 3, i32 7}
!48 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !49, i8 2, i32 1, i8 4, i32 4, i8 0, !41}
!49 = !{i32 3}
!50 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !51, i8 3, i32 1, i8 2, i32 5, i8 0, !44}
!51 = !{i32 5}
!52 = !{i32 6, !"TEXCOORD", i8 9, i8 0, !53, i8 2, i32 1, i8 4, i32 6, i8 0, !41}
!53 = !{i32 8}
!54 = !{i32 7, !"QUAD_POSITION", i8 9, i8 0, !40, i8 1, i32 1, i8 4, i32 7, i8 0, !41}
!55 = !{i32 8, !"COLOR", i8 5, i8 0, !49, i8 1, i32 1, i8 3, i32 8, i8 0, !47}
!56 = !{i32 9, !"SV_SampleIndex", i8 5, i8 12, !40, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!57 = !{!58, !59}
!58 = !{i32 0, !"SV_Target", i8 9, i8 16, !40, i8 0, i32 1, i8 4, i32 0, i8 0, !41}
!59 = !{i32 1, !"SV_Target", i8 9, i8 16, !60, i8 0, i32 1, i8 4, i32 1, i8 0, !41}
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
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}

