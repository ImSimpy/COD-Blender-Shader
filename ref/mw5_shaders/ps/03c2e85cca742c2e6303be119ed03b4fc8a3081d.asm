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
; shader hash: 9342aa690d7121d5dd3fa387d13b85e7
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
  br i1 %256, label %533, label %257, !dx.controlflow.hints !63

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
  %531 = fmul fast float %529, %215
  %532 = fmul fast float %531, %530
  br label %533

; <label>:533                                     ; preds = %521, %254
  %534 = phi float [ %526, %521 ], [ %45, %254 ]
  %535 = phi float [ %527, %521 ], [ %46, %254 ]
  %536 = phi float [ %528, %521 ], [ %47, %254 ]
  %537 = phi float [ %532, %521 ], [ %215, %254 ]
  %538 = phi float [ %523, %521 ], [ %30, %254 ]
  %539 = phi float [ %524, %521 ], [ %31, %254 ]
  %540 = phi float [ %525, %521 ], [ %32, %254 ]
  %541 = fmul fast float %538, %33
  %542 = fmul fast float %539, %33
  %543 = fmul fast float %540, %33
  %544 = fmul fast float %538, %39
  %545 = fmul fast float %539, %39
  %546 = fmul fast float %540, %39
  %547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %548 = extractvalue %dx.types.CBufRet.f32 %547, 2
  %549 = fptosi float %52 to i32
  %550 = sitofp i32 %549 to float
  %551 = fadd fast float %548, %550
  %552 = fmul fast float %551, 0x3FE3C6EF40000000
  %553 = frem fast float %57, 2.560000e+02
  %554 = frem fast float %58, 2.560000e+02
  %555 = fptoui float %553 to i32
  %556 = fptoui float %554 to i32
  %557 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %17, i32 0, i32 %555, i32 %556, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %558 = extractvalue %dx.types.ResRet.f32 %557, 0
  %559 = fadd fast float %558, %552
  %560 = call float @dx.op.unary.f32(i32 22, float %559)  ; Frc(value)
  %561 = and i32 %136, 1
  %562 = icmp eq i32 %561, 0
  br i1 %562, label %622, label %563, !dx.controlflow.hints !66

; <label>:563                                     ; preds = %533
  %564 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %133, i32 undef)  ; BufferLoad(srv,index,wot)
  %565 = extractvalue %dx.types.ResRet.f32 %564, 2
  %566 = extractvalue %dx.types.ResRet.f32 %564, 3
  %567 = add i32 %133, 16
  %568 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %567, i32 undef)  ; BufferLoad(srv,index,wot)
  %569 = extractvalue %dx.types.ResRet.f32 %568, 0
  %570 = extractvalue %dx.types.ResRet.f32 %568, 1
  %571 = extractvalue %dx.types.ResRet.f32 %568, 2
  %572 = add i32 %133, 32
  %573 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %572, i32 undef)  ; BufferLoad(srv,index,wot)
  %574 = extractvalue %dx.types.ResRet.f32 %573, 0
  %575 = extractvalue %dx.types.ResRet.f32 %573, 1
  %576 = extractvalue %dx.types.ResRet.f32 %573, 2
  %577 = and i32 %136, 2
  %578 = icmp eq i32 %577, 0
  %579 = call float @dx.op.dot3.f32(i32 55, float %36, float %37, float %38, float %36, float %37, float %38)  ; Dot3(ax,ay,az,bx,by,bz)
  %580 = call float @dx.op.unary.f32(i32 25, float %579)  ; Rsqrt(value)
  %581 = fmul fast float %580, %36
  %582 = fmul fast float %580, %37
  %583 = fmul fast float %580, %38
  %584 = call float @dx.op.dot3.f32(i32 55, float %92, float %93, float %94, float %92, float %93, float %94)  ; Dot3(ax,ay,az,bx,by,bz)
  %585 = call float @dx.op.unary.f32(i32 25, float %584)  ; Rsqrt(value)
  %586 = fmul fast float %585, %92
  %587 = fmul fast float %585, %93
  %588 = fmul fast float %585, %94
  %589 = call float @dx.op.dot3.f32(i32 55, float %586, float %587, float %588, float %581, float %582, float %583)  ; Dot3(ax,ay,az,bx,by,bz)
  %590 = fmul fast float %589, %589
  %591 = fmul fast float %590, %565
  %592 = fadd fast float %591, %566
  %593 = call float @dx.op.unary.f32(i32 7, float %592)  ; Saturate(value)
  br i1 %578, label %594, label %604, !dx.controlflow.hints !67

; <label>:594                                     ; preds = %563
  %595 = extractvalue %dx.types.ResRet.f32 %564, 1
  %596 = extractvalue %dx.types.ResRet.f32 %564, 0
  %597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %598 = extractvalue %dx.types.CBufRet.f32 %597, 3
  %599 = fmul fast float %598, %584
  %600 = fsub fast float %596, %599
  %601 = fmul fast float %600, %595
  %602 = call float @dx.op.unary.f32(i32 7, float %601)  ; Saturate(value)
  %603 = fmul fast float %602, %593
  br label %604

; <label>:604                                     ; preds = %594, %563
  %605 = phi float [ %603, %594 ], [ %593, %563 ]
  %606 = fsub fast float %569, %574
  %607 = fsub fast float %570, %575
  %608 = fsub fast float %571, %576
  %609 = fmul fast float %605, %606
  %610 = fmul fast float %605, %607
  %611 = fmul fast float %605, %608
  %612 = fadd fast float %609, %574
  %613 = fadd fast float %610, %575
  %614 = fadd fast float %611, %576
  %615 = fmul fast float %612, %534
  %616 = fmul fast float %613, %535
  %617 = fmul fast float %614, %536
  %618 = fmul fast float %612, %541
  %619 = fmul fast float %613, %542
  %620 = fmul fast float %614, %543
  %621 = fmul fast float %605, %537
  br label %622

; <label>:622                                     ; preds = %604, %533
  %623 = phi float [ %615, %604 ], [ %534, %533 ]
  %624 = phi float [ %616, %604 ], [ %535, %533 ]
  %625 = phi float [ %617, %604 ], [ %536, %533 ]
  %626 = phi float [ %621, %604 ], [ %537, %533 ]
  %627 = phi float [ %618, %604 ], [ %541, %533 ]
  %628 = phi float [ %619, %604 ], [ %542, %533 ]
  %629 = phi float [ %620, %604 ], [ %543, %533 ]
  %630 = add i32 %25, 120
  %631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %630, i32 undef)  ; BufferLoad(srv,index,wot)
  %632 = extractvalue %dx.types.ResRet.i32 %631, 0
  %633 = add i32 %632, 0
  %634 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %633, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %635 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %634, %dx.types.Handle %53, float %173, float %174, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %636 = extractvalue %dx.types.ResRet.f32 %635, 0
  %637 = extractvalue %dx.types.ResRet.f32 %635, 1
  %638 = extractvalue %dx.types.ResRet.f32 %635, 2
  %639 = add i32 %25, 56
  %640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %639, i32 undef)  ; BufferLoad(srv,index,wot)
  %641 = extractvalue %dx.types.ResRet.i32 %640, 0
  %642 = and i32 %641, 255
  %643 = uitofp i32 %642 to float
  %644 = fmul fast float %643, 0x3F70101020000000
  %645 = lshr i32 %641, 8
  %646 = and i32 %645, 255
  %647 = uitofp i32 %646 to float
  %648 = fmul fast float %647, 0x3F70101020000000
  %649 = lshr i32 %641, 16
  %650 = and i32 %649, 255
  %651 = uitofp i32 %650 to float
  %652 = fmul fast float %651, 0x3F70101020000000
  %653 = fmul fast float %644, %644
  %654 = fmul fast float %653, %636
  %655 = fmul fast float %648, %648
  %656 = fmul fast float %655, %637
  %657 = fmul fast float %652, %652
  %658 = fmul fast float %657, %638
  %659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %630, i32 undef)  ; BufferLoad(srv,index,wot)
  %660 = extractvalue %dx.types.ResRet.i32 %659, 0
  %661 = add i32 %660, 0
  %662 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %661, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %663 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %662, %dx.types.Handle %53, float %175, float %176, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %664 = extractvalue %dx.types.ResRet.f32 %663, 0
  %665 = extractvalue %dx.types.ResRet.f32 %663, 1
  %666 = extractvalue %dx.types.ResRet.f32 %663, 2
  %667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %639, i32 undef)  ; BufferLoad(srv,index,wot)
  %668 = extractvalue %dx.types.ResRet.i32 %667, 0
  %669 = and i32 %668, 255
  %670 = uitofp i32 %669 to float
  %671 = fmul fast float %670, 0x3F70101020000000
  %672 = lshr i32 %668, 8
  %673 = and i32 %672, 255
  %674 = uitofp i32 %673 to float
  %675 = fmul fast float %674, 0x3F70101020000000
  %676 = lshr i32 %668, 16
  %677 = and i32 %676, 255
  %678 = uitofp i32 %677 to float
  %679 = fmul fast float %678, 0x3F70101020000000
  %680 = fmul fast float %671, %671
  %681 = fmul fast float %680, %664
  %682 = fmul fast float %675, %675
  %683 = fmul fast float %682, %665
  %684 = fmul fast float %679, %679
  %685 = fmul fast float %684, %666
  %686 = fsub fast float %681, %654
  %687 = fsub fast float %683, %656
  %688 = fsub fast float %685, %658
  %689 = fmul fast float %686, %42
  %690 = fmul fast float %687, %42
  %691 = fmul fast float %688, %42
  %692 = fadd fast float %689, %654
  %693 = fadd fast float %690, %656
  %694 = fadd fast float %691, %658
  %695 = fmul fast float %692, %623
  %696 = fmul fast float %693, %624
  %697 = fmul fast float %694, %625
  %698 = add i32 %25, 124
  %699 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %698, i32 undef)  ; BufferLoad(srv,index,wot)
  %700 = extractvalue %dx.types.ResRet.i32 %699, 0
  %701 = add i32 %700, 0
  %702 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %701, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %703 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %702, %dx.types.Handle %53, float %173, float %174, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %704 = extractvalue %dx.types.ResRet.f32 %703, 0
  %705 = extractvalue %dx.types.ResRet.f32 %703, 1
  %706 = extractvalue %dx.types.ResRet.f32 %703, 2
  %707 = add i32 %25, 44
  %708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %707, i32 undef)  ; BufferLoad(srv,index,wot)
  %709 = extractvalue %dx.types.ResRet.i32 %708, 0
  %710 = shl i32 %709, 4
  %711 = and i32 %710, 32752
  %712 = call float @dx.op.legacyF16ToF32(i32 131, i32 %711)  ; LegacyF16ToF32(value)
  %713 = lshr i32 %709, 7
  %714 = and i32 %713, 32752
  %715 = call float @dx.op.legacyF16ToF32(i32 131, i32 %714)  ; LegacyF16ToF32(value)
  %716 = lshr i32 %709, 22
  %717 = shl nuw nsw i32 %716, 5
  %718 = call float @dx.op.legacyF16ToF32(i32 131, i32 %717)  ; LegacyF16ToF32(value)
  %719 = fmul fast float %712, %704
  %720 = fmul fast float %715, %705
  %721 = fmul fast float %718, %706
  %722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %723 = extractvalue %dx.types.CBufRet.f32 %722, 0
  %724 = fmul fast float %719, %723
  %725 = fmul fast float %720, %723
  %726 = fmul fast float %721, %723
  %727 = add i32 %25, 48
  %728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %727, i32 undef)  ; BufferLoad(srv,index,wot)
  %729 = extractvalue %dx.types.ResRet.i32 %728, 0
  %730 = lshr i32 %729, 22
  %731 = shl nuw nsw i32 %730, 5
  %732 = call float @dx.op.legacyF16ToF32(i32 131, i32 %731)  ; LegacyF16ToF32(value)
  %733 = fmul fast float %732, %724
  %734 = select i1 %116, float %733, float %724
  %735 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %698, i32 undef)  ; BufferLoad(srv,index,wot)
  %736 = extractvalue %dx.types.ResRet.i32 %735, 0
  %737 = add i32 %736, 0
  %738 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %737, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %739 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %738, %dx.types.Handle %53, float %175, float %176, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %740 = extractvalue %dx.types.ResRet.f32 %739, 0
  %741 = extractvalue %dx.types.ResRet.f32 %739, 1
  %742 = extractvalue %dx.types.ResRet.f32 %739, 2
  %743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %707, i32 undef)  ; BufferLoad(srv,index,wot)
  %744 = extractvalue %dx.types.ResRet.i32 %743, 0
  %745 = shl i32 %744, 4
  %746 = and i32 %745, 32752
  %747 = call float @dx.op.legacyF16ToF32(i32 131, i32 %746)  ; LegacyF16ToF32(value)
  %748 = lshr i32 %744, 7
  %749 = and i32 %748, 32752
  %750 = call float @dx.op.legacyF16ToF32(i32 131, i32 %749)  ; LegacyF16ToF32(value)
  %751 = lshr i32 %744, 22
  %752 = shl nuw nsw i32 %751, 5
  %753 = call float @dx.op.legacyF16ToF32(i32 131, i32 %752)  ; LegacyF16ToF32(value)
  %754 = fmul fast float %747, %740
  %755 = fmul fast float %750, %741
  %756 = fmul fast float %753, %742
  %757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %758 = extractvalue %dx.types.CBufRet.f32 %757, 0
  %759 = fmul fast float %754, %758
  %760 = fmul fast float %755, %758
  %761 = fmul fast float %756, %758
  %762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %727, i32 undef)  ; BufferLoad(srv,index,wot)
  %763 = extractvalue %dx.types.ResRet.i32 %762, 0
  %764 = lshr i32 %763, 22
  %765 = shl nuw nsw i32 %764, 5
  %766 = call float @dx.op.legacyF16ToF32(i32 131, i32 %765)  ; LegacyF16ToF32(value)
  %767 = fmul fast float %766, %759
  %768 = select i1 %116, float %767, float %759
  %769 = fsub fast float %768, %734
  %770 = fsub fast float %760, %725
  %771 = fsub fast float %761, %726
  %772 = fmul fast float %769, %42
  %773 = fmul fast float %770, %42
  %774 = fmul fast float %771, %42
  %775 = fadd fast float %772, %734
  %776 = fadd fast float %773, %725
  %777 = fadd fast float %774, %726
  %778 = add i32 %25, 40
  %779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %778, i32 undef)  ; BufferLoad(srv,index,wot)
  %780 = extractvalue %dx.types.ResRet.i32 %779, 0
  %781 = and i32 %780, 255
  %782 = uitofp i32 %781 to float
  %783 = fmul fast float %782, 0x3F70101020000000
  %784 = fmul fast float %783, %783
  %785 = add i32 %25, 132
  %786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %785, i32 undef)  ; BufferLoad(srv,index,wot)
  %787 = extractvalue %dx.types.ResRet.i32 %786, 0
  %788 = add i32 %787, 0
  %789 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %788, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %790 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %789, %dx.types.Handle %54, float %173, float %174, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %791 = extractvalue %dx.types.ResRet.f32 %790, 0
  %792 = fmul fast float %784, %791
  %793 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %778, i32 undef)  ; BufferLoad(srv,index,wot)
  %794 = extractvalue %dx.types.ResRet.i32 %793, 0
  %795 = and i32 %794, 255
  %796 = uitofp i32 %795 to float
  %797 = fmul fast float %796, 0x3F70101020000000
  %798 = fmul fast float %797, %797
  %799 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %785, i32 undef)  ; BufferLoad(srv,index,wot)
  %800 = extractvalue %dx.types.ResRet.i32 %799, 0
  %801 = add i32 %800, 0
  %802 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %801, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %803 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %802, %dx.types.Handle %54, float %175, float %176, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %804 = extractvalue %dx.types.ResRet.f32 %803, 0
  %805 = fmul fast float %798, %804
  %806 = fsub fast float %805, %792
  %807 = fmul fast float %806, %42
  %808 = fadd fast float %807, %792
  %809 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %19, float %34, float %35, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %810 = extractvalue %dx.types.ResRet.f32 %809, 0
  %811 = extractvalue %dx.types.ResRet.f32 %809, 1
  %812 = extractvalue %dx.types.ResRet.f32 %809, 2
  %813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %814 = extractvalue %dx.types.CBufRet.f32 %813, 1
  %815 = fmul fast float %814, %810
  %816 = fmul fast float %814, %811
  %817 = fmul fast float %814, %812
  %818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %819 = extractvalue %dx.types.CBufRet.f32 %818, 0
  %820 = fmul fast float %695, %819
  %821 = fmul fast float %696, %819
  %822 = fmul fast float %697, %819
  %823 = fmul fast float %775, %627
  %824 = fmul fast float %776, %628
  %825 = fmul fast float %777, %629
  %826 = call float @dx.op.dot3.f32(i32 55, float %823, float %824, float %825, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %827 = select i1 %116, float 0.000000e+00, float %823
  %828 = select i1 %116, float %826, float %824
  %829 = select i1 %116, float 0.000000e+00, float %825
  %830 = fmul fast float %544, %775
  %831 = fmul fast float %545, %776
  %832 = fmul fast float %546, %777
  %833 = call float @dx.op.dot3.f32(i32 55, float %820, float %821, float %822, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %834 = add i32 %25, 32
  %835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %834, i32 undef)  ; BufferLoad(srv,index,wot)
  %836 = extractvalue %dx.types.ResRet.i32 %835, 0
  %837 = and i32 %836, 255
  %838 = uitofp i32 %837 to float
  %839 = lshr i32 %836, 8
  %840 = and i32 %839, 255
  %841 = uitofp i32 %840 to float
  %842 = fmul fast float %841, %833
  %843 = fadd fast float %842, %838
  %844 = fmul fast float %843, 0x3F70101020000000
  %845 = call float @dx.op.unary.f32(i32 7, float %844)  ; Saturate(value)
  %846 = add i32 %25, 128
  %847 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %846, i32 undef)  ; BufferLoad(srv,index,wot)
  %848 = extractvalue %dx.types.ResRet.i32 %847, 0
  %849 = add i32 %848, 0
  %850 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %849, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %851 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %850, %dx.types.Handle %54, float %173, float %174, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %852 = extractvalue %dx.types.ResRet.f32 %851, 0
  %853 = and i32 %136, 8192
  %854 = icmp eq i32 %853, 0
  %855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %856 = extractvalue %dx.types.CBufRet.f32 %855, 0
  br i1 %854, label %867, label %857, !dx.controlflow.hints !68

; <label>:857                                     ; preds = %622
  %858 = add i32 %133, 176
  %859 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %858, i32 undef)  ; BufferLoad(srv,index,wot)
  %860 = extractvalue %dx.types.ResRet.f32 %859, 0
  %861 = extractvalue %dx.types.ResRet.f32 %859, 1
  %862 = fcmp fast oge float %860, 0.000000e+00
  %863 = select i1 %862, float %860, float %856
  %864 = fmul fast float %852, %95
  %865 = fmul fast float %864, %861
  %866 = fadd fast float %865, %863
  br label %878

; <label>:867                                     ; preds = %622
  %868 = add i32 %25, 104
  %869 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %868, i32 undef)  ; BufferLoad(srv,index,wot)
  %870 = extractvalue %dx.types.ResRet.i32 %869, 0
  %871 = extractvalue %dx.types.ResRet.i32 %869, 1
  %872 = bitcast i32 %870 to float
  %873 = bitcast i32 %871 to float
  %874 = fcmp fast oge float %872, 0.000000e+00
  %875 = select i1 %874, float %872, float %856
  %876 = fmul fast float %873, %852
  %877 = fadd fast float %875, %876
  br label %878

; <label>:878                                     ; preds = %867, %857
  %879 = phi float [ %866, %857 ], [ %877, %867 ]
  %880 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %218, i32 %219, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %881 = extractvalue %dx.types.ResRet.i32 %880, 0
  %882 = lshr i32 %881, 18
  %883 = uitofp i32 %882 to float
  %884 = fmul fast float %883, 0x3F4C00EBA0000000
  %885 = call float @dx.op.unary.f32(i32 21, float %884)  ; Exp(value)
  %886 = fadd fast float %885, -1.000000e+00
  %887 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %10, i32 0)  ; GetDimensions(handle,mipLevel)
  %888 = extractvalue %dx.types.Dimensions %887, 0
  %889 = sitofp i32 %888 to float
  %890 = extractvalue %dx.types.Dimensions %887, 1
  %891 = sitofp i32 %890 to float
  %892 = fcmp fast oge float %216, %889
  %893 = fcmp fast oge float %217, %891
  %894 = or i1 %892, %893
  %895 = select i1 %894, float 0x4197782600000000, float %886
  %896 = icmp eq i32 %132, 3
  %897 = fcmp fast ogt float %52, %895
  %898 = and i1 %242, %897
  %899 = or i1 %896, %898
  %900 = icmp eq i32 %132, 2
  %901 = fcmp fast ole float %52, %895
  %902 = and i1 %900, %901
  %903 = or i1 %902, %899
  %904 = fmul fast float %830, %815
  %905 = fmul fast float %831, %816
  %906 = fmul fast float %832, %817
  %907 = fadd fast float %904, %827
  %908 = fadd fast float %828, %905
  %909 = fadd fast float %906, %829
  %910 = fmul fast float %907, %626
  %911 = fmul fast float %908, %626
  %912 = fmul fast float %909, %626
  %913 = fmul fast float %815, %626
  %914 = fmul fast float %816, %626
  %915 = fmul fast float %817, %626
  %916 = fadd fast float %808, -1.000000e+00
  %917 = fmul fast float %916, %626
  %918 = fadd fast float %917, 1.000000e+00
  %919 = call float @dx.op.dot3.f32(i32 55, float %918, float %918, float %918, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %920 = fsub fast float 1.000000e+00, %919
  %921 = fmul fast float %879, %845
  %922 = fsub fast float 1.000000e+00, %845
  %923 = call float @dx.op.unary.f32(i32 7, float %922)  ; Saturate(value)
  %924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %925 = extractvalue %dx.types.CBufRet.f32 %924, 3
  %926 = fmul fast float %925, %923
  %927 = fadd fast float %926, %921
  %928 = and i32 %136, 1048576
  %929 = icmp eq i32 %928, 0
  br i1 %929, label %1021, label %930, !dx.controlflow.hints !69

; <label>:930                                     ; preds = %878
  %931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %932 = extractvalue %dx.types.CBufRet.f32 %931, 2
  %933 = extractvalue %dx.types.CBufRet.f32 %931, 3
  %934 = fmul fast float %932, %57
  %935 = fmul fast float %933, %58
  %936 = call float @dx.op.unary.f32(i32 7, float %934)  ; Saturate(value)
  %937 = call float @dx.op.unary.f32(i32 7, float %935)  ; Saturate(value)
  %938 = select i1 %903, i32 2, i32 0
  %939 = or i32 %938, 1
  %940 = uitofp i32 %939 to float
  %941 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %936, float %937, float %940, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %942 = extractvalue %dx.types.ResRet.f32 %941, 0
  %943 = extractvalue %dx.types.ResRet.f32 %941, 1
  %944 = extractvalue %dx.types.ResRet.f32 %941, 2
  %945 = extractvalue %dx.types.ResRet.f32 %941, 3
  %946 = add nuw nsw i32 %938, 2
  %947 = uitofp i32 %946 to float
  %948 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %936, float %937, float %947, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %949 = extractvalue %dx.types.ResRet.f32 %948, 0
  %950 = extractvalue %dx.types.ResRet.f32 %948, 1
  %951 = extractvalue %dx.types.ResRet.f32 %948, 2
  %952 = extractvalue %dx.types.ResRet.f32 %948, 3
  %953 = call float @dx.op.binary.f32(i32 35, float %943, float %944)  ; FMax(a,b)
  %954 = call float @dx.op.binary.f32(i32 35, float %942, float %953)  ; FMax(a,b)
  %955 = call float @dx.op.binary.f32(i32 35, float %954, float %945)  ; FMax(a,b)
  %956 = call float @dx.op.binary.f32(i32 36, float %950, float %951)  ; FMin(a,b)
  %957 = call float @dx.op.binary.f32(i32 36, float %949, float %956)  ; FMin(a,b)
  %958 = call float @dx.op.binary.f32(i32 36, float %957, float %952)  ; FMin(a,b)
  %959 = fmul fast float %955, 2.550000e+02
  %960 = fadd fast float %959, 0x3F70101020000000
  %961 = fptoui float %960 to i32
  %962 = fmul fast float %958, 2.550000e+02
  %963 = fadd fast float %962, 0x3F70101020000000
  %964 = fptoui float %963 to i32
  %965 = icmp ult i32 %961, %964
  br i1 %965, label %966, label %1014

; <label>:966                                     ; preds = %930
  %967 = fcmp fast ogt float %51, 9.843750e-01
  %968 = fadd fast float %52, -4.000000e+00
  %969 = select i1 %967, float -4.000000e+00, float %968
  %970 = call float @dx.op.binary.f32(i32 35, float %969, float 0.000000e+00)  ; FMax(a,b)
  %971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %972 = extractvalue %dx.types.CBufRet.f32 %971, 0
  %973 = fadd fast float %972, %970
  %974 = extractvalue %dx.types.CBufRet.f32 %971, 2
  %975 = fmul fast float %973, %974
  %976 = call float @dx.op.unary.f32(i32 23, float %975)  ; Log(value)
  %977 = extractvalue %dx.types.CBufRet.f32 %971, 3
  %978 = fmul fast float %977, %976
  %979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %980 = extractvalue %dx.types.CBufRet.f32 %979, 2
  %981 = fmul fast float %978, %980
  %982 = call float @dx.op.unary.f32(i32 7, float %981)  ; Saturate(value)
  %983 = uitofp i32 %961 to float
  %984 = uitofp i32 %964 to float
  %985 = fadd fast float %983, 5.000000e-01
  %986 = fadd fast float %984, 5.000000e-01
  %987 = fmul fast float %980, %985
  %988 = fmul fast float %980, %986
  %989 = fadd fast float %987, 0x3F0FFB4800000000
  %990 = fadd fast float %988, 0xBF0FFB4800000000
  %991 = call float @dx.op.binary.f32(i32 35, float %982, float %989)  ; FMax(a,b)
  %992 = call float @dx.op.binary.f32(i32 36, float %991, float %990)  ; FMin(a,b)
  %993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %994 = extractvalue %dx.types.CBufRet.f32 %993, 1
  %995 = extractvalue %dx.types.CBufRet.f32 %993, 2
  %996 = extractvalue %dx.types.CBufRet.f32 %993, 0
  %997 = select i1 %903, float %996, float 0.000000e+00
  %998 = fmul fast float %994, %992
  %999 = fadd fast float %997, %998
  %1000 = fadd fast float %997, %995
  %1001 = fsub fast float %994, %995
  %1002 = fadd fast float %1001, %997
  %1003 = call float @dx.op.binary.f32(i32 35, float %999, float %1000)  ; FMax(a,b)
  %1004 = call float @dx.op.binary.f32(i32 36, float %1003, float %1002)  ; FMin(a,b)
  %1005 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %18, float %936, float %937, float %1004, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1006 = extractvalue %dx.types.ResRet.f32 %1005, 0
  %1007 = extractvalue %dx.types.ResRet.f32 %1005, 1
  %1008 = extractvalue %dx.types.ResRet.f32 %1005, 2
  %1009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1010 = extractvalue %dx.types.CBufRet.f32 %1009, 1
  %1011 = fmul fast float %1010, %1006
  %1012 = fmul fast float %1010, %1007
  %1013 = fmul fast float %1010, %1008
  br label %1014

; <label>:1014                                    ; preds = %966, %930
  %1015 = phi float [ %1011, %966 ], [ 1.000000e+00, %930 ]
  %1016 = phi float [ %1012, %966 ], [ 1.000000e+00, %930 ]
  %1017 = phi float [ %1013, %966 ], [ 1.000000e+00, %930 ]
  %1018 = fmul fast float %1015, %910
  %1019 = fmul fast float %1016, %911
  %1020 = fmul fast float %1017, %912
  br label %1021

; <label>:1021                                    ; preds = %1014, %878
  %1022 = phi float [ %1018, %1014 ], [ %910, %878 ]
  %1023 = phi float [ %1019, %1014 ], [ %911, %878 ]
  %1024 = phi float [ %1020, %1014 ], [ %912, %878 ]
  %1025 = and i32 %136, 2097152
  %1026 = icmp eq i32 %1025, 0
  br i1 %1026, label %1031, label %1027, !dx.controlflow.hints !70

; <label>:1027                                    ; preds = %1021
  %1028 = add i32 %133, 192
  %1029 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %1028, i32 undef)  ; BufferLoad(srv,index,wot)
  %1030 = extractvalue %dx.types.ResRet.f32 %1029, 0
  br label %1034

; <label>:1031                                    ; preds = %1021
  %1032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1033 = extractvalue %dx.types.CBufRet.f32 %1032, 3
  br label %1034

; <label>:1034                                    ; preds = %1031, %1027
  %1035 = phi float [ %1030, %1027 ], [ %1033, %1031 ]
  %1036 = fmul fast float %913, %820
  %1037 = fmul fast float %914, %821
  %1038 = fmul fast float %915, %822
  br i1 %898, label %1039, label %1148

; <label>:1039                                    ; preds = %1034
  %1040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1041 = extractvalue %dx.types.CBufRet.f32 %1040, 2
  %1042 = extractvalue %dx.types.CBufRet.f32 %1040, 3
  %1043 = fmul fast float %1041, %57
  %1044 = fmul fast float %1042, %58
  %1045 = call float @dx.op.unary.f32(i32 7, float %1043)  ; Saturate(value)
  %1046 = call float @dx.op.unary.f32(i32 7, float %1044)  ; Saturate(value)
  %1047 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %1045, float %1046, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1048 = extractvalue %dx.types.ResRet.f32 %1047, 0
  %1049 = extractvalue %dx.types.ResRet.f32 %1047, 1
  %1050 = extractvalue %dx.types.ResRet.f32 %1047, 2
  %1051 = extractvalue %dx.types.ResRet.f32 %1047, 3
  %1052 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %1045, float %1046, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1053 = extractvalue %dx.types.ResRet.f32 %1052, 0
  %1054 = extractvalue %dx.types.ResRet.f32 %1052, 1
  %1055 = extractvalue %dx.types.ResRet.f32 %1052, 2
  %1056 = extractvalue %dx.types.ResRet.f32 %1052, 3
  %1057 = call float @dx.op.binary.f32(i32 35, float %1049, float %1050)  ; FMax(a,b)
  %1058 = call float @dx.op.binary.f32(i32 35, float %1048, float %1057)  ; FMax(a,b)
  %1059 = call float @dx.op.binary.f32(i32 35, float %1058, float %1051)  ; FMax(a,b)
  %1060 = call float @dx.op.binary.f32(i32 36, float %1054, float %1055)  ; FMin(a,b)
  %1061 = call float @dx.op.binary.f32(i32 36, float %1053, float %1060)  ; FMin(a,b)
  %1062 = call float @dx.op.binary.f32(i32 36, float %1061, float %1056)  ; FMin(a,b)
  %1063 = fmul fast float %1059, 2.550000e+02
  %1064 = fadd fast float %1063, 0x3F70101020000000
  %1065 = fptoui float %1064 to i32
  %1066 = fmul fast float %1062, 2.550000e+02
  %1067 = fadd fast float %1066, 0x3F70101020000000
  %1068 = fptoui float %1067 to i32
  %1069 = icmp ult i32 %1065, %1068
  br i1 %1069, label %1070, label %1121

; <label>:1070                                    ; preds = %1039
  %1071 = fcmp fast ogt float %51, 9.843750e-01
  %1072 = fadd fast float %52, -4.000000e+00
  %1073 = select i1 %1071, float -4.000000e+00, float %1072
  %1074 = call float @dx.op.binary.f32(i32 35, float %1073, float 0.000000e+00)  ; FMax(a,b)
  %1075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1076 = extractvalue %dx.types.CBufRet.f32 %1075, 0
  %1077 = fadd fast float %1076, %1074
  %1078 = extractvalue %dx.types.CBufRet.f32 %1075, 2
  %1079 = fmul fast float %1077, %1078
  %1080 = call float @dx.op.unary.f32(i32 23, float %1079)  ; Log(value)
  %1081 = extractvalue %dx.types.CBufRet.f32 %1075, 3
  %1082 = fmul fast float %1081, %1080
  %1083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1084 = extractvalue %dx.types.CBufRet.f32 %1083, 2
  %1085 = fmul fast float %1082, %1084
  %1086 = call float @dx.op.unary.f32(i32 7, float %1085)  ; Saturate(value)
  %1087 = uitofp i32 %1065 to float
  %1088 = uitofp i32 %1068 to float
  %1089 = fadd fast float %1087, 5.000000e-01
  %1090 = fadd fast float %1088, 5.000000e-01
  %1091 = fmul fast float %1084, %1089
  %1092 = fmul fast float %1084, %1090
  %1093 = fadd fast float %1091, 0x3F0FFB4800000000
  %1094 = fadd fast float %1092, 0xBF0FFB4800000000
  %1095 = call float @dx.op.binary.f32(i32 35, float %1086, float %1093)  ; FMax(a,b)
  %1096 = call float @dx.op.binary.f32(i32 36, float %1095, float %1094)  ; FMin(a,b)
  %1097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1098 = extractvalue %dx.types.CBufRet.f32 %1097, 1
  %1099 = extractvalue %dx.types.CBufRet.f32 %1097, 2
  %1100 = extractvalue %dx.types.CBufRet.f32 %1097, 0
  %1101 = fmul fast float %1098, %1096
  %1102 = fadd fast float %1100, %1101
  %1103 = fadd fast float %1100, %1099
  %1104 = fsub fast float %1098, %1099
  %1105 = fadd fast float %1104, %1100
  %1106 = call float @dx.op.binary.f32(i32 35, float %1102, float %1103)  ; FMax(a,b)
  %1107 = call float @dx.op.binary.f32(i32 36, float %1106, float %1105)  ; FMin(a,b)
  %1108 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %1045, float %1046, float %1107, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1109 = extractvalue %dx.types.ResRet.f32 %1108, 0
  %1110 = extractvalue %dx.types.ResRet.f32 %1108, 1
  %1111 = extractvalue %dx.types.ResRet.f32 %1108, 2
  %1112 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %1045, float %1046, float %1107, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1113 = extractvalue %dx.types.ResRet.f32 %1112, 0
  %1114 = extractvalue %dx.types.ResRet.f32 %1112, 1
  %1115 = extractvalue %dx.types.ResRet.f32 %1112, 2
  %1116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1117 = extractvalue %dx.types.CBufRet.f32 %1116, 1
  %1118 = fmul fast float %1117, %1113
  %1119 = fmul fast float %1117, %1114
  %1120 = fmul fast float %1117, %1115
  br label %1121

; <label>:1121                                    ; preds = %1070, %1039
  %1122 = phi float [ %1109, %1070 ], [ 1.000000e+00, %1039 ]
  %1123 = phi float [ %1110, %1070 ], [ 1.000000e+00, %1039 ]
  %1124 = phi float [ %1111, %1070 ], [ 1.000000e+00, %1039 ]
  %1125 = phi float [ %1118, %1070 ], [ 0.000000e+00, %1039 ]
  %1126 = phi float [ %1119, %1070 ], [ 0.000000e+00, %1039 ]
  %1127 = phi float [ %1120, %1070 ], [ 0.000000e+00, %1039 ]
  %1128 = fmul fast float %1125, %920
  %1129 = fmul fast float %1126, %920
  %1130 = fmul fast float %1127, %920
  %1131 = call float @dx.op.dot3.f32(i32 55, float %1122, float %1123, float %1124, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1132 = call float @dx.op.dot3.f32(i32 55, float %1128, float %1129, float %1130, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1133 = select i1 %116, float %1131, float %1122
  %1134 = select i1 %116, float %1131, float %1123
  %1135 = select i1 %116, float 1.000000e+00, float %1124
  %1136 = select i1 %116, float %1132, float %1128
  %1137 = select i1 %116, float 0.000000e+00, float %1129
  %1138 = select i1 %116, float 0.000000e+00, float %1130
  %1139 = fmul fast float %1133, %1036
  %1140 = fmul fast float %1134, %1037
  %1141 = fmul fast float %1135, %1038
  %1142 = fadd fast float %1139, %1136
  %1143 = fadd fast float %1140, %1137
  %1144 = fadd fast float %1138, %1141
  %1145 = fmul fast float %1133, %1022
  %1146 = fmul fast float %1134, %1023
  %1147 = fmul fast float %1135, %1024
  br label %1148

; <label>:1148                                    ; preds = %1121, %1034
  %1149 = phi float [ %895, %1121 ], [ %52, %1034 ]
  %1150 = phi float [ %1142, %1121 ], [ %1036, %1034 ]
  %1151 = phi float [ %1143, %1121 ], [ %1037, %1034 ]
  %1152 = phi float [ %1144, %1121 ], [ %1038, %1034 ]
  %1153 = phi float [ %1145, %1121 ], [ %1022, %1034 ]
  %1154 = phi float [ %1146, %1121 ], [ %1023, %1034 ]
  %1155 = phi float [ %1147, %1121 ], [ %1024, %1034 ]
  %1156 = phi float [ %1122, %1121 ], [ 1.000000e+00, %1034 ]
  br i1 %903, label %1458, label %1157

; <label>:1157                                    ; preds = %1148
  %1158 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %19, float %34, float %35, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1159 = extractvalue %dx.types.ResRet.f32 %1158, 0
  %1160 = extractvalue %dx.types.ResRet.f32 %1158, 1
  %1161 = extractvalue %dx.types.ResRet.f32 %1158, 2
  %1162 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %19, float %34, float %35, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1163 = extractvalue %dx.types.ResRet.f32 %1162, 0
  %1164 = extractvalue %dx.types.ResRet.f32 %1162, 1
  %1165 = extractvalue %dx.types.ResRet.f32 %1162, 2
  %1166 = fmul fast float %1159, %920
  %1167 = fmul fast float %1160, %920
  %1168 = fmul fast float %1161, %920
  %1169 = fmul fast float %1163, %1156
  %1170 = call float @dx.op.dot3.f32(i32 55, float %1163, float %1164, float %1165, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1171 = call float @dx.op.dot3.f32(i32 55, float %1166, float %1167, float %1168, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1172 = select i1 %116, float %1170, float %1163
  %1173 = select i1 %116, float %1170, float %1164
  %1174 = select i1 %116, float 1.000000e+00, float %1165
  %1175 = select i1 %116, float %1171, float %1166
  %1176 = select i1 %116, float 0.000000e+00, float %1167
  %1177 = select i1 %116, float 0.000000e+00, float %1168
  %1178 = fmul fast float %1172, %1150
  %1179 = fmul fast float %1173, %1151
  %1180 = fmul fast float %1174, %1152
  %1181 = fadd fast float %1178, %1175
  %1182 = fadd fast float %1179, %1176
  %1183 = fadd fast float %1180, %1177
  %1184 = fmul fast float %1172, %1153
  %1185 = fmul fast float %1173, %1154
  %1186 = fmul fast float %1174, %1155
  %1187 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1188 = extractvalue %dx.types.CBufRet.i32 %1187, 0
  %1189 = icmp eq i32 %1188, 0
  br i1 %1189, label %1458, label %1190, !dx.controlflow.hints !71

; <label>:1190                                    ; preds = %1157
  %1191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1192 = extractvalue %dx.types.CBufRet.f32 %1191, 2
  %1193 = extractvalue %dx.types.CBufRet.f32 %1191, 3
  %1194 = fmul fast float %1192, %57
  %1195 = fmul fast float %1193, %58
  %1196 = fmul fast float %1194, 2.000000e+00
  %1197 = fmul fast float %1195, 2.000000e+00
  %1198 = fsub fast float 1.000000e+00, %1196
  %1199 = fsub fast float 1.000000e+00, %1197
  %1200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1201 = extractvalue %dx.types.CBufRet.f32 %1200, 0
  %1202 = extractvalue %dx.types.CBufRet.f32 %1200, 1
  %1203 = extractvalue %dx.types.CBufRet.f32 %1200, 2
  %1204 = fmul fast float %1198, %1201
  %1205 = fmul fast float %1198, %1202
  %1206 = fmul fast float %1198, %1203
  %1207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1208 = extractvalue %dx.types.CBufRet.f32 %1207, 0
  %1209 = extractvalue %dx.types.CBufRet.f32 %1207, 1
  %1210 = extractvalue %dx.types.CBufRet.f32 %1207, 2
  %1211 = fmul fast float %1199, %1208
  %1212 = fmul fast float %1199, %1209
  %1213 = fmul fast float %1199, %1210
  %1214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1215 = extractvalue %dx.types.CBufRet.f32 %1214, 0
  %1216 = extractvalue %dx.types.CBufRet.f32 %1214, 1
  %1217 = extractvalue %dx.types.CBufRet.f32 %1214, 2
  %1218 = fadd fast float %1211, %1215
  %1219 = fadd fast float %1218, %1204
  %1220 = fadd fast float %1212, %1216
  %1221 = fadd fast float %1220, %1205
  %1222 = fadd fast float %1213, %1217
  %1223 = fadd fast float %1222, %1206
  %1224 = fmul fast float %1219, %1149
  %1225 = fmul fast float %1221, %1149
  %1226 = fmul fast float %1223, %1149
  %1227 = fmul fast float %1224, %1224
  %1228 = fmul fast float %1225, %1225
  %1229 = fadd fast float %1227, %1228
  %1230 = fmul fast float %1226, %1226
  %1231 = fadd fast float %1229, %1230
  %1232 = call float @dx.op.unary.f32(i32 24, float %1231)  ; Sqrt(value)
  %1233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1234 = extractvalue %dx.types.CBufRet.f32 %1233, 0
  %1235 = fsub fast float %1232, %1234
  %1236 = extractvalue %dx.types.CBufRet.f32 %1233, 2
  %1237 = fmul fast float %1235, %1236
  %1238 = call float @dx.op.unary.f32(i32 7, float %1237)  ; Saturate(value)
  %1239 = fadd fast float %1238, -5.000000e-01
  %1240 = fmul fast float %1239, 2.000000e+00
  %1241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1242 = extractvalue %dx.types.CBufRet.f32 %1241, 2
  %1243 = call float @dx.op.binary.f32(i32 36, float %1242, float %1240)  ; FMin(a,b)
  %1244 = fsub fast float -0.000000e+00, %1242
  %1245 = fcmp fast ogt float %1243, %1244
  br i1 %1245, label %1246, label %1458, !dx.controlflow.hints !72

; <label>:1246                                    ; preds = %1190
  %1247 = fmul fast float %1243, 5.000000e-01
  %1248 = fadd fast float %1247, 5.000000e-01
  %1249 = call float @dx.op.unary.f32(i32 22, float %1248)  ; Frc(value)
  %1250 = call float @dx.op.unary.f32(i32 27, float %1249)  ; Round_ni(value)
  %1251 = call float @dx.op.unary.f32(i32 22, float %1249)  ; Frc(value)
  %1252 = fmul fast float %1251, 2.000000e+00
  %1253 = fadd fast float %1252, -1.000000e+00
  %1254 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %19, float %1194, float %1195, float %1250, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1255 = extractvalue %dx.types.ResRet.f32 %1254, 0
  %1256 = extractvalue %dx.types.ResRet.f32 %1254, 1
  %1257 = extractvalue %dx.types.ResRet.f32 %1254, 2
  %1258 = extractvalue %dx.types.ResRet.f32 %1254, 3
  %1259 = fadd fast float %1255, -5.000000e-01
  %1260 = fadd fast float %1257, -5.000000e-01
  %1261 = fmul fast float %1259, 0xBFD5555560000000
  %1262 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1260, float %1261)  ; FMad(a,b,c)
  %1263 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1256, float 0.000000e+00)  ; FMad(a,b,c)
  %1264 = fadd fast float %1263, %1258
  %1265 = fmul fast float %1259, -7.500000e-01
  %1266 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1260, float %1265)  ; FMad(a,b,c)
  %1267 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1256, float 0.000000e+00)  ; FMad(a,b,c)
  %1268 = fadd fast float %1267, %1258
  %1269 = call float @dx.op.binary.f32(i32 35, float %1262, float -1.000000e+00)  ; FMax(a,b)
  %1270 = call float @dx.op.binary.f32(i32 35, float %1264, float -1.000000e+00)  ; FMax(a,b)
  %1271 = call float @dx.op.binary.f32(i32 35, float %1266, float -1.000000e+00)  ; FMax(a,b)
  %1272 = call float @dx.op.binary.f32(i32 35, float %1268, float -1.000000e+00)  ; FMax(a,b)
  %1273 = call float @dx.op.binary.f32(i32 36, float %1269, float 1.000000e+00)  ; FMin(a,b)
  %1274 = call float @dx.op.binary.f32(i32 36, float %1270, float 1.000000e+00)  ; FMin(a,b)
  %1275 = call float @dx.op.binary.f32(i32 36, float %1271, float 1.000000e+00)  ; FMin(a,b)
  %1276 = call float @dx.op.binary.f32(i32 36, float %1272, float 1.000000e+00)  ; FMin(a,b)
  %1277 = fcmp fast olt float %1273, 0x3FEFFF8020000000
  br i1 %1277, label %1278, label %1393, !dx.controlflow.hints !73

; <label>:1278                                    ; preds = %1246
  %1279 = extractvalue %dx.types.CBufRet.f32 %1241, 3
  %1280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1281 = extractvalue %dx.types.CBufRet.f32 %1280, 0
  %1282 = extractvalue %dx.types.CBufRet.f32 %1280, 1
  %1283 = extractvalue %dx.types.CBufRet.f32 %1280, 2
  %1284 = extractvalue %dx.types.CBufRet.f32 %1280, 3
  %1285 = fsub fast float %1281, %1273
  %1286 = fsub fast float %1282, %1274
  %1287 = fsub fast float %1283, %1275
  %1288 = fsub fast float %1284, %1276
  %1289 = fmul fast float %1285, %1279
  %1290 = fmul fast float %1286, %1279
  %1291 = fmul fast float %1287, %1279
  %1292 = fmul fast float %1288, %1279
  %1293 = fadd fast float %1289, %1273
  %1294 = fadd fast float %1290, %1274
  %1295 = fsub fast float -0.000000e+00, %1294
  %1296 = fadd fast float %1291, %1275
  %1297 = fadd fast float %1292, %1276
  %1298 = fmul fast float %1293, %1293
  %1299 = fsub fast float %1294, %1298
  %1300 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1299)  ; FMax(a,b)
  %1301 = fdiv fast float 1.000000e+00, %1300
  %1302 = fmul fast float %1294, %1293
  %1303 = fsub fast float %1296, %1302
  %1304 = fsub fast float %1253, %1293
  %1305 = fmul fast float %1253, %1253
  %1306 = fsub fast float %1305, %1294
  %1307 = fmul fast float %1304, %1301
  %1308 = fmul fast float %1307, %1303
  %1309 = fsub fast float %1306, %1308
  %1310 = fmul fast float %1294, %1294
  %1311 = fsub fast float %1297, %1310
  %1312 = fmul fast float %1303, %1303
  %1313 = fmul fast float %1312, %1301
  %1314 = fsub fast float %1311, %1313
  %1315 = fdiv fast float %1309, %1314
  %1316 = fmul fast float %1303, %1315
  %1317 = fsub fast float %1304, %1316
  %1318 = fmul fast float %1317, %1301
  %1319 = fmul fast float %1318, %1293
  %1320 = fsub fast float 1.000000e+00, %1319
  %1321 = fmul fast float %1294, %1315
  %1322 = fsub fast float %1320, %1321
  %1323 = fmul fast float %1318, %1318
  %1324 = fmul fast float %1315, 4.000000e+00
  %1325 = fmul fast float %1324, %1322
  %1326 = fsub fast float %1323, %1325
  %1327 = call float @dx.op.unary.f32(i32 24, float %1326)  ; Sqrt(value)
  %1328 = fcmp fast oge float %1318, 0.000000e+00
  %1329 = fsub fast float -0.000000e+00, %1327
  %1330 = select i1 %1328, float %1329, float %1327
  %1331 = fsub fast float %1330, %1318
  %1332 = fdiv fast float %1331, %1315
  %1333 = fdiv fast float %1322, %1331
  %1334 = fmul fast float %1332, 5.000000e-01
  %1335 = fmul fast float %1333, 2.000000e+00
  %1336 = select i1 %1328, float %1334, float %1335
  %1337 = select i1 %1328, float %1335, float %1334
  %1338 = call float @dx.op.binary.f32(i32 35, float %1336, float %1337)  ; FMax(a,b)
  %1339 = call float @dx.op.binary.f32(i32 36, float %1336, float %1337)  ; FMin(a,b)
  %1340 = fcmp fast ogt float %1253, %1339
  br i1 %1340, label %1341, label %1351

; <label>:1341                                    ; preds = %1278
  %1342 = fsub fast float %1253, %1339
  %1343 = fsub fast float %1338, %1339
  %1344 = fmul fast float %1342, %1343
  %1345 = fmul fast float %1338, %1253
  %1346 = fadd fast float %1338, %1253
  %1347 = fmul fast float %1346, %1293
  %1348 = fadd fast float %1345, %1294
  %1349 = fsub fast float %1348, %1347
  %1350 = fdiv fast float %1349, %1344
  br label %1351

; <label>:1351                                    ; preds = %1341, %1278
  %1352 = phi float [ %1350, %1341 ], [ 0.000000e+00, %1278 ]
  %1353 = fcmp fast ogt float %1253, %1338
  %1354 = fsub fast float %1253, %1338
  br i1 %1353, label %1355, label %1365

; <label>:1355                                    ; preds = %1351
  %1356 = fsub fast float %1338, %1339
  %1357 = fmul fast float %1356, %1354
  %1358 = fmul fast float %1339, %1253
  %1359 = fadd fast float %1339, %1253
  %1360 = fmul fast float %1359, %1293
  %1361 = fsub fast float %1295, %1358
  %1362 = fadd fast float %1361, %1360
  %1363 = fdiv fast float %1362, %1357
  %1364 = fadd fast float %1363, %1352
  br label %1365

; <label>:1365                                    ; preds = %1355, %1351
  %1366 = phi float [ %1364, %1355 ], [ %1352, %1351 ]
  %1367 = fsub fast float %1253, %1339
  %1368 = fmul fast float %1367, %1354
  %1369 = fmul fast float %1339, %1338
  %1370 = fadd fast float %1339, %1338
  %1371 = fmul fast float %1370, %1293
  %1372 = fadd fast float %1369, %1294
  %1373 = fsub fast float %1372, %1371
  %1374 = fdiv fast float %1373, %1368
  %1375 = call float @dx.op.unary.f32(i32 7, float %1366)  ; Saturate(value)
  %1376 = fcmp fast oeq float %1035, 0.000000e+00
  %1377 = extractvalue %dx.types.CBufRet.f32 %1241, 0
  %1378 = fcmp fast oeq float %1377, 0.000000e+00
  %1379 = or i1 %1376, %1378
  %1380 = fmul fast float %1377, 2.000000e+00
  %1381 = fadd fast float %1242, %1243
  %1382 = fdiv fast float %1381, %1380
  %1383 = call float @dx.op.unary.f32(i32 7, float %1382)  ; Saturate(value)
  %1384 = fmul fast float %1383, 2.000000e+00
  %1385 = fsub fast float 3.000000e+00, %1384
  %1386 = fmul fast float %1383, %1383
  %1387 = fmul fast float %1386, %1385
  %1388 = select i1 %1379, float 1.000000e+00, float %1387
  %1389 = fmul fast float %1374, %1035
  %1390 = fadd fast float %1375, %1389
  %1391 = call float @dx.op.unary.f32(i32 7, float %1390)  ; Saturate(value)
  %1392 = fmul fast float %1388, %1391
  br label %1393

; <label>:1393                                    ; preds = %1365, %1246
  %1394 = phi float [ %1392, %1365 ], [ 0.000000e+00, %1246 ]
  %1395 = fsub fast float 1.000000e+00, %1394
  %1396 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %19, float %1194, float %1195, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1397 = extractvalue %dx.types.ResRet.f32 %1396, 0
  %1398 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1399 = extractvalue %dx.types.CBufRet.i32 %1398, 2
  %1400 = icmp eq i32 %1399, 0
  br i1 %1400, label %1406, label %1401

; <label>:1401                                    ; preds = %1393
  %1402 = call float @dx.op.unary.f32(i32 7, float %1394)  ; Saturate(value)
  %1403 = fadd fast float %1397, -1.000000e+00
  %1404 = fmul fast float %1402, %1403
  %1405 = fadd fast float %1404, 1.000000e+00
  br label %1406

; <label>:1406                                    ; preds = %1401, %1393
  %1407 = phi float [ %1405, %1401 ], [ %1395, %1393 ]
  %1408 = call float @dx.op.binary.f32(i32 35, float %1397, float %1407)  ; FMax(a,b)
  %1409 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %1410 = extractvalue %dx.types.CBufRet.i32 %1409, 2
  %1411 = and i32 %1410, 1
  %1412 = icmp eq i32 %1411, 0
  %1413 = fcmp fast une float %1408, 1.000000e+00
  %1414 = and i1 %1413, %1412
  br i1 %1414, label %1415, label %1434

; <label>:1415                                    ; preds = %1406
  %1416 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %19, float %1194, float %1195, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1417 = extractvalue %dx.types.ResRet.f32 %1416, 0
  %1418 = extractvalue %dx.types.ResRet.f32 %1416, 1
  %1419 = extractvalue %dx.types.ResRet.f32 %1416, 2
  %1420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1421 = extractvalue %dx.types.CBufRet.f32 %1420, 1
  %1422 = fmul fast float %1421, %1417
  %1423 = fmul fast float %1421, %1418
  %1424 = fmul fast float %1421, %1419
  %1425 = fcmp fast ogt float %1397, 0x3FEFFF2E40000000
  %1426 = fsub fast float 1.000000e+00, %1408
  %1427 = fsub fast float 1.000000e+00, %1397
  %1428 = fdiv fast float %1426, %1427
  %1429 = call float @dx.op.unary.f32(i32 7, float %1428)  ; Saturate(value)
  %1430 = select i1 %1425, float 0.000000e+00, float %1429
  %1431 = fmul fast float %1422, %1430
  %1432 = fmul fast float %1423, %1430
  %1433 = fmul fast float %1424, %1430
  br label %1434

; <label>:1434                                    ; preds = %1415, %1406
  %1435 = phi float [ 0.000000e+00, %1406 ], [ %1431, %1415 ]
  %1436 = phi float [ 0.000000e+00, %1406 ], [ %1432, %1415 ]
  %1437 = phi float [ 0.000000e+00, %1406 ], [ %1433, %1415 ]
  %1438 = fmul fast float %1435, %920
  %1439 = fmul fast float %1436, %920
  %1440 = fmul fast float %1437, %920
  %1441 = fmul fast float %1408, %1169
  %1442 = call float @dx.op.dot3.f32(i32 55, float %1408, float %1408, float %1408, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1443 = call float @dx.op.dot3.f32(i32 55, float %1438, float %1439, float %1440, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1444 = select i1 %116, float %1442, float %1408
  %1445 = select i1 %116, float 1.000000e+00, float %1408
  %1446 = select i1 %116, float %1443, float %1438
  %1447 = select i1 %116, float 0.000000e+00, float %1439
  %1448 = select i1 %116, float 0.000000e+00, float %1440
  %1449 = fmul fast float %1444, %1181
  %1450 = fmul fast float %1444, %1182
  %1451 = fmul fast float %1445, %1183
  %1452 = fadd fast float %1449, %1446
  %1453 = fadd fast float %1450, %1447
  %1454 = fadd fast float %1448, %1451
  %1455 = fmul fast float %1444, %1184
  %1456 = fmul fast float %1444, %1185
  %1457 = fmul fast float %1445, %1186
  br label %1458

; <label>:1458                                    ; preds = %1434, %1190, %1157, %1148
  %1459 = phi float [ %1150, %1148 ], [ %1181, %1157 ], [ %1452, %1434 ], [ %1181, %1190 ]
  %1460 = phi float [ %1151, %1148 ], [ %1182, %1157 ], [ %1453, %1434 ], [ %1182, %1190 ]
  %1461 = phi float [ %1152, %1148 ], [ %1183, %1157 ], [ %1454, %1434 ], [ %1183, %1190 ]
  %1462 = phi float [ %1153, %1148 ], [ %1184, %1157 ], [ %1455, %1434 ], [ %1184, %1190 ]
  %1463 = phi float [ %1154, %1148 ], [ %1185, %1157 ], [ %1456, %1434 ], [ %1185, %1190 ]
  %1464 = phi float [ %1155, %1148 ], [ %1186, %1157 ], [ %1457, %1434 ], [ %1186, %1190 ]
  %1465 = phi float [ %1156, %1148 ], [ %1169, %1157 ], [ %1441, %1434 ], [ %1169, %1190 ]
  %1466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1467 = extractvalue %dx.types.CBufRet.f32 %1466, 2
  %1468 = extractvalue %dx.types.CBufRet.f32 %1466, 3
  %1469 = fmul fast float %1467, %57
  %1470 = fmul fast float %1468, %58
  %1471 = call float @dx.op.unary.f32(i32 7, float %1469)  ; Saturate(value)
  %1472 = call float @dx.op.unary.f32(i32 7, float %1470)  ; Saturate(value)
  %1473 = select i1 %903, i32 2, i32 0
  %1474 = or i32 %1473, 1
  %1475 = uitofp i32 %1474 to float
  %1476 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %1471, float %1472, float %1475, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1477 = extractvalue %dx.types.ResRet.f32 %1476, 0
  %1478 = extractvalue %dx.types.ResRet.f32 %1476, 1
  %1479 = extractvalue %dx.types.ResRet.f32 %1476, 2
  %1480 = extractvalue %dx.types.ResRet.f32 %1476, 3
  %1481 = add nuw nsw i32 %1473, 2
  %1482 = uitofp i32 %1481 to float
  %1483 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %1471, float %1472, float %1482, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1484 = extractvalue %dx.types.ResRet.f32 %1483, 0
  %1485 = extractvalue %dx.types.ResRet.f32 %1483, 1
  %1486 = extractvalue %dx.types.ResRet.f32 %1483, 2
  %1487 = extractvalue %dx.types.ResRet.f32 %1483, 3
  %1488 = call float @dx.op.binary.f32(i32 35, float %1478, float %1479)  ; FMax(a,b)
  %1489 = call float @dx.op.binary.f32(i32 35, float %1477, float %1488)  ; FMax(a,b)
  %1490 = call float @dx.op.binary.f32(i32 35, float %1489, float %1480)  ; FMax(a,b)
  %1491 = call float @dx.op.binary.f32(i32 36, float %1485, float %1486)  ; FMin(a,b)
  %1492 = call float @dx.op.binary.f32(i32 36, float %1484, float %1491)  ; FMin(a,b)
  %1493 = call float @dx.op.binary.f32(i32 36, float %1492, float %1487)  ; FMin(a,b)
  %1494 = fmul fast float %1490, 2.550000e+02
  %1495 = fadd fast float %1494, 0x3F70101020000000
  %1496 = fptoui float %1495 to i32
  %1497 = fmul fast float %1493, 2.550000e+02
  %1498 = fadd fast float %1497, 0x3F70101020000000
  %1499 = fptoui float %1498 to i32
  %1500 = icmp ult i32 %1496, %1499
  br i1 %1500, label %1501, label %1553

; <label>:1501                                    ; preds = %1458
  %1502 = fcmp fast ogt float %51, 9.843750e-01
  %1503 = fadd fast float %1149, -4.000000e+00
  %1504 = select i1 %1502, float -4.000000e+00, float %1503
  %1505 = call float @dx.op.binary.f32(i32 35, float %1504, float 0.000000e+00)  ; FMax(a,b)
  %1506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1507 = extractvalue %dx.types.CBufRet.f32 %1506, 0
  %1508 = fadd fast float %1507, %1505
  %1509 = extractvalue %dx.types.CBufRet.f32 %1506, 2
  %1510 = fmul fast float %1508, %1509
  %1511 = call float @dx.op.unary.f32(i32 23, float %1510)  ; Log(value)
  %1512 = extractvalue %dx.types.CBufRet.f32 %1506, 3
  %1513 = fmul fast float %1512, %1511
  %1514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1515 = extractvalue %dx.types.CBufRet.f32 %1514, 2
  %1516 = fmul fast float %1513, %1515
  %1517 = call float @dx.op.unary.f32(i32 7, float %1516)  ; Saturate(value)
  %1518 = uitofp i32 %1496 to float
  %1519 = uitofp i32 %1499 to float
  %1520 = fadd fast float %1518, 5.000000e-01
  %1521 = fadd fast float %1519, 5.000000e-01
  %1522 = fmul fast float %1515, %1520
  %1523 = fmul fast float %1515, %1521
  %1524 = fadd fast float %1522, 0x3F0FFB4800000000
  %1525 = fadd fast float %1523, 0xBF0FFB4800000000
  %1526 = call float @dx.op.binary.f32(i32 35, float %1517, float %1524)  ; FMax(a,b)
  %1527 = call float @dx.op.binary.f32(i32 36, float %1526, float %1525)  ; FMin(a,b)
  %1528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1529 = extractvalue %dx.types.CBufRet.f32 %1528, 1
  %1530 = extractvalue %dx.types.CBufRet.f32 %1528, 2
  %1531 = extractvalue %dx.types.CBufRet.f32 %1528, 0
  %1532 = select i1 %903, float %1531, float 0.000000e+00
  %1533 = fmul fast float %1529, %1527
  %1534 = fadd fast float %1532, %1533
  %1535 = fadd fast float %1532, %1530
  %1536 = fsub fast float %1529, %1530
  %1537 = fadd fast float %1536, %1532
  %1538 = call float @dx.op.binary.f32(i32 35, float %1534, float %1535)  ; FMax(a,b)
  %1539 = call float @dx.op.binary.f32(i32 36, float %1538, float %1537)  ; FMin(a,b)
  %1540 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %1471, float %1472, float %1539, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1541 = extractvalue %dx.types.ResRet.f32 %1540, 0
  %1542 = extractvalue %dx.types.ResRet.f32 %1540, 1
  %1543 = extractvalue %dx.types.ResRet.f32 %1540, 2
  %1544 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %1471, float %1472, float %1539, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1545 = extractvalue %dx.types.ResRet.f32 %1544, 0
  %1546 = extractvalue %dx.types.ResRet.f32 %1544, 1
  %1547 = extractvalue %dx.types.ResRet.f32 %1544, 2
  %1548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1549 = extractvalue %dx.types.CBufRet.f32 %1548, 1
  %1550 = fmul fast float %1549, %1545
  %1551 = fmul fast float %1549, %1546
  %1552 = fmul fast float %1549, %1547
  br label %1553

; <label>:1553                                    ; preds = %1501, %1458
  %1554 = phi float [ %1541, %1501 ], [ 1.000000e+00, %1458 ]
  %1555 = phi float [ %1542, %1501 ], [ 1.000000e+00, %1458 ]
  %1556 = phi float [ %1543, %1501 ], [ 1.000000e+00, %1458 ]
  %1557 = phi float [ %1550, %1501 ], [ 0.000000e+00, %1458 ]
  %1558 = phi float [ %1551, %1501 ], [ 0.000000e+00, %1458 ]
  %1559 = phi float [ %1552, %1501 ], [ 0.000000e+00, %1458 ]
  %1560 = fmul fast float %1557, %920
  %1561 = fmul fast float %1558, %920
  %1562 = fmul fast float %1559, %920
  %1563 = fmul fast float %1554, %1465
  %1564 = call float @dx.op.dot3.f32(i32 55, float %1554, float %1555, float %1556, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1565 = call float @dx.op.dot3.f32(i32 55, float %1560, float %1561, float %1562, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1566 = select i1 %116, float %1564, float %1554
  %1567 = select i1 %116, float %1564, float %1555
  %1568 = select i1 %116, float 1.000000e+00, float %1556
  %1569 = select i1 %116, float %1565, float %1560
  %1570 = select i1 %116, float 0.000000e+00, float %1561
  %1571 = select i1 %116, float 0.000000e+00, float %1562
  %1572 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1573 = extractvalue %dx.types.CBufRet.i32 %1572, 3
  %1574 = and i32 %1573, 3
  %1575 = icmp ne i32 %1574, 0
  %1576 = and i32 %1573, 4
  %1577 = icmp ne i32 %1576, 0
  %1578 = and i1 %1575, %1577
  %1579 = and i1 %116, %1578
  br i1 %1579, label %1580, label %1586

; <label>:1580                                    ; preds = %1553
  %1581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1582 = extractvalue %dx.types.CBufRet.f32 %1581, 1
  %1583 = fadd fast float %1563, -1.000000e+00
  %1584 = fmul fast float %1582, %1583
  %1585 = fadd fast float %1584, 1.000000e+00
  br label %1586

; <label>:1586                                    ; preds = %1580, %1553
  %1587 = phi float [ %1585, %1580 ], [ %1563, %1553 ]
  %1588 = fadd fast float %1462, %1459
  %1589 = fmul fast float %1566, %1588
  %1590 = fadd fast float %1589, %1569
  %1591 = fadd fast float %1463, %1460
  %1592 = fmul fast float %1567, %1591
  %1593 = fadd fast float %1592, %1570
  %1594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1595 = extractvalue %dx.types.CBufRet.f32 %1594, 0
  br i1 %116, label %1596, label %1617

; <label>:1596                                    ; preds = %1586
  %1597 = fadd fast float %1590, %1593
  %1598 = fmul fast float %1595, %1597
  %1599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1600 = extractvalue %dx.types.CBufRet.f32 %1599, 3
  %1601 = extractvalue %dx.types.CBufRet.f32 %924, 1
  %1602 = fsub fast float %927, %1601
  %1603 = extractvalue %dx.types.CBufRet.f32 %924, 2
  %1604 = fmul fast float %1602, %1603
  %1605 = call float @dx.op.unary.f32(i32 7, float %1604)  ; Saturate(value)
  %1606 = fsub fast float %1605, %1600
  %1607 = fmul fast float %1606, %1587
  %1608 = fadd fast float %1607, %1600
  %1609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1610 = extractvalue %dx.types.CBufRet.f32 %1609, 0
  %1611 = fsub fast float %1608, %1610
  %1612 = fmul fast float %1611, 1.000000e+01
  %1613 = call float @dx.op.unary.f32(i32 7, float %1612)  ; Saturate(value)
  %1614 = fmul fast float %1613, %920
  %1615 = fsub fast float %920, %1614
  %1616 = fmul fast float %1615, %1608
  br label %1629

; <label>:1617                                    ; preds = %1586
  %1618 = fadd fast float %1464, %1461
  %1619 = fmul fast float %1568, %1618
  %1620 = fadd fast float %1619, %1571
  %1621 = fmul fast float %1595, %1590
  %1622 = fmul fast float %1595, %1593
  %1623 = fmul fast float %1595, %1620
  %1624 = call float @dx.op.binary.f32(i32 35, float %1622, float %1623)  ; FMax(a,b)
  %1625 = call float @dx.op.binary.f32(i32 35, float %1621, float %1624)  ; FMax(a,b)
  %1626 = call float @dx.op.binary.f32(i32 35, float %1625, float %920)  ; FMax(a,b)
  %1627 = fcmp fast ugt float %1626, 0x3F10000000000000
  br i1 %1627, label %1629, label %1628

; <label>:1628                                    ; preds = %1617
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1629

; <label>:1629                                    ; preds = %1628, %1617, %1596
  %1630 = phi float [ %1598, %1596 ], [ %1621, %1628 ], [ %1621, %1617 ]
  %1631 = phi float [ %1616, %1596 ], [ %1622, %1628 ], [ %1622, %1617 ]
  %1632 = phi float [ %1615, %1596 ], [ %1623, %1628 ], [ %1623, %1617 ]
  %1633 = phi float [ %1615, %1596 ], [ %920, %1628 ], [ %920, %1617 ]
  %1634 = fadd fast float %560, 0x3FE3C6EF40000000
  %1635 = call float @dx.op.unary.f32(i32 22, float %1634)  ; Frc(value)
  %1636 = call float @dx.op.unary.f32(i32 23, float %1630)  ; Log(value)
  %1637 = fadd fast float %1636, -7.000000e+00
  %1638 = call float @dx.op.unary.f32(i32 21, float %1637)  ; Exp(value)
  %1639 = fmul fast float %1635, 2.000000e+00
  %1640 = fadd fast float %1639, -1.000000e+00
  %1641 = fmul fast float %1638, %1640
  %1642 = fcmp fast ogt float %1630, 0.000000e+00
  %1643 = select i1 %1642, float %1641, float 0.000000e+00
  %1644 = fadd fast float %1643, %1630
  %1645 = fadd fast float %560, 0x3FF3C6EF40000000
  %1646 = call float @dx.op.unary.f32(i32 22, float %1645)  ; Frc(value)
  %1647 = call float @dx.op.unary.f32(i32 23, float %1631)  ; Log(value)
  %1648 = fadd fast float %1647, -7.000000e+00
  %1649 = call float @dx.op.unary.f32(i32 21, float %1648)  ; Exp(value)
  %1650 = fmul fast float %1646, 2.000000e+00
  %1651 = fadd fast float %1650, -1.000000e+00
  %1652 = fmul fast float %1649, %1651
  %1653 = fcmp fast ogt float %1631, 0.000000e+00
  %1654 = select i1 %1653, float %1652, float 0.000000e+00
  %1655 = fadd fast float %1654, %1631
  %1656 = fadd fast float %560, 0x3FFDAA66E0000000
  %1657 = call float @dx.op.unary.f32(i32 22, float %1656)  ; Frc(value)
  %1658 = call float @dx.op.unary.f32(i32 23, float %1632)  ; Log(value)
  %1659 = fadd fast float %1658, -6.000000e+00
  %1660 = call float @dx.op.unary.f32(i32 21, float %1659)  ; Exp(value)
  %1661 = fmul fast float %1657, 2.000000e+00
  %1662 = fadd fast float %1661, -1.000000e+00
  %1663 = fmul fast float %1660, %1662
  %1664 = fcmp fast ogt float %1632, 0.000000e+00
  %1665 = select i1 %1664, float %1663, float 0.000000e+00
  %1666 = fadd fast float %1665, %1632
  %1667 = select i1 %116, float %1631, float %1655
  %1668 = select i1 %116, float %1632, float %1666
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1669 = call float @dx.op.binary.f32(i32 36, float %1644, float 3.225500e+04)  ; FMin(a,b)
  %1670 = call float @dx.op.binary.f32(i32 36, float %1667, float 3.225500e+04)  ; FMin(a,b)
  %1671 = call float @dx.op.binary.f32(i32 36, float %1668, float 3.225500e+04)  ; FMin(a,b)
  %1672 = call float @dx.op.binary.f32(i32 36, float %1633, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1669)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1670)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1671)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1672)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1633)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1633)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1633)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1633)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

