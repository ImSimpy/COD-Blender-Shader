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
; shader hash: ef903bae0edd474cf60eb21cbc5598de
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
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 24, 25, 26, 27, 28, 29, 30, 31, 32, 34 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 26, 27, 28, 29, 30, 31, 32, 34 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 28, 29, 30, 31, 32, 34 }
;   output 4 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 28, 29, 30, 31, 32, 34 }
;   output 5 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 28, 29, 30, 31, 32, 34 }
;   output 6 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 28, 29, 30, 31, 32, 34 }
;   output 7 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 28, 29, 30, 31, 32, 34 }
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
  %24 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %54 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %55 = extractvalue %dx.types.CBufRet.f32 %54, 0
  %56 = fmul fast float %55, %48
  %57 = fmul fast float %55, %49
  %58 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %59 = extractvalue %dx.types.CBufRet.f32 %58, 2
  %60 = extractvalue %dx.types.CBufRet.f32 %58, 3
  %61 = fmul fast float %56, 2.000000e+00
  %62 = fmul fast float %61, %59
  %63 = fmul fast float %57, 2.000000e+00
  %64 = fmul fast float %63, %60
  %65 = fsub fast float 1.000000e+00, %62
  %66 = fsub fast float 1.000000e+00, %64
  %67 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %68 = extractvalue %dx.types.CBufRet.f32 %67, 0
  %69 = extractvalue %dx.types.CBufRet.f32 %67, 1
  %70 = extractvalue %dx.types.CBufRet.f32 %67, 2
  %71 = fmul fast float %65, %68
  %72 = fmul fast float %65, %69
  %73 = fmul fast float %65, %70
  %74 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %75 = extractvalue %dx.types.CBufRet.f32 %74, 0
  %76 = extractvalue %dx.types.CBufRet.f32 %74, 1
  %77 = extractvalue %dx.types.CBufRet.f32 %74, 2
  %78 = fmul fast float %66, %75
  %79 = fmul fast float %66, %76
  %80 = fmul fast float %66, %77
  %81 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %82 = extractvalue %dx.types.CBufRet.f32 %81, 0
  %83 = extractvalue %dx.types.CBufRet.f32 %81, 1
  %84 = extractvalue %dx.types.CBufRet.f32 %81, 2
  %85 = fadd fast float %78, %82
  %86 = fadd fast float %85, %71
  %87 = fadd fast float %79, %83
  %88 = fadd fast float %87, %72
  %89 = fadd fast float %80, %84
  %90 = fadd fast float %89, %73
  %91 = fmul fast float %86, %51
  %92 = fmul fast float %88, %51
  %93 = fmul fast float %90, %51
  %94 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %95 = extractvalue %dx.types.CBufRet.i32 %94, 3
  %96 = and i32 %95, 3
  %97 = icmp ne i32 %96, 0
  %98 = and i32 %95, 4
  %99 = icmp ne i32 %98, 0
  %100 = and i1 %97, %99
  br i1 %100, label %101, label %110

; <label>:101                                     ; preds = %0
  %102 = fmul fast float %60, %57
  %103 = fmul fast float %59, %56
  %104 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %19, float %103, float %102, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %105 = extractvalue %dx.types.ResRet.f32 %104, 0
  %106 = fsub fast float 1.000000e+00, %105
  %107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %108 = extractvalue %dx.types.CBufRet.f32 %107, 0
  %109 = fcmp fast olt float %106, %108
  br label %113

; <label>:110                                     ; preds = %0
  %111 = icmp eq i32 %98, 0
  %112 = and i1 %97, %111
  br label %113

; <label>:113                                     ; preds = %110, %101
  %114 = phi i1 [ %109, %101 ], [ %112, %110 ]
  %115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %116 = extractvalue %dx.types.CBufRet.f32 %115, 2
  %117 = extractvalue %dx.types.CBufRet.f32 %115, 3
  %118 = fmul fast float %116, %56
  %119 = fmul fast float %117, %57
  %120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %121 = extractvalue %dx.types.ResRet.i32 %120, 0
  %122 = and i32 %121, 114688
  %123 = icmp ne i32 %122, 0
  %124 = select i1 %123, float %118, float 0.000000e+00
  %125 = select i1 %123, float %119, float 0.000000e+00
  %126 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %20, float %124, float %125, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %127 = extractvalue %dx.types.ResRet.f32 %126, 0
  %128 = fmul fast float %127, 2.550000e+02
  %129 = fptoui float %128 to i32
  %130 = select i1 %123, i32 %129, i32 0
  %131 = mul i32 %23, 208
  %132 = add i32 %131, 188
  %133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %132, i32 undef)  ; BufferLoad(srv,index,wot)
  %134 = extractvalue %dx.types.ResRet.i32 %133, 0
  %135 = and i32 %95, 114688
  %136 = and i32 %95, 8
  %137 = icmp ne i32 %136, 0
  %138 = or i1 %114, %137
  %139 = select i1 %138, i32 %135, i32 16384
  %140 = and i32 %139, %134
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %143

; <label>:142                                     ; preds = %113
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %143

; <label>:143                                     ; preds = %142, %113
  %144 = and i32 %134, 512
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %170, label %146

; <label>:146                                     ; preds = %143
  %147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %148 = extractvalue %dx.types.CBufRet.f32 %147, 2
  %149 = extractvalue %dx.types.CBufRet.f32 %147, 3
  %150 = fmul fast float %148, %56
  %151 = fmul fast float %149, %57
  %152 = extractvalue %dx.types.CBufRet.f32 %147, 0
  %153 = extractvalue %dx.types.CBufRet.f32 %147, 1
  %154 = fdiv fast float %152, %153
  %155 = fcmp fast ogt float %154, 0x3FFC71C720000000
  br i1 %155, label %156, label %162

; <label>:156                                     ; preds = %146
  %157 = fdiv fast float 0x3FFC71C720000000, %154
  %158 = fmul fast float %157, %151
  %159 = fsub fast float 1.000000e+00, %157
  %160 = fmul fast float %159, 5.000000e-01
  %161 = fadd fast float %160, %158
  br label %170

; <label>:162                                     ; preds = %146
  %163 = fcmp fast olt float %154, 0x3FFC71C720000000
  br i1 %163, label %164, label %170

; <label>:164                                     ; preds = %162
  %165 = fmul fast float %150, 5.625000e-01
  %166 = fmul fast float %165, %154
  %167 = fmul fast float %154, 2.812500e-01
  %168 = fsub fast float 5.000000e-01, %167
  %169 = fadd fast float %168, %166
  br label %170

; <label>:170                                     ; preds = %164, %162, %156, %143
  %171 = phi float [ %42, %143 ], [ %150, %156 ], [ %169, %164 ], [ %150, %162 ]
  %172 = phi float [ %43, %143 ], [ %161, %156 ], [ %151, %164 ], [ %151, %162 ]
  %173 = fadd fast float %42, %39
  %174 = fadd fast float %43, %40
  %175 = add i32 %24, 72
  %176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %175, i32 undef)  ; BufferLoad(srv,index,wot)
  %177 = extractvalue %dx.types.ResRet.i32 %176, 0
  %178 = extractvalue %dx.types.ResRet.i32 %176, 1
  %179 = bitcast i32 %177 to float
  %180 = bitcast i32 %178 to float
  %181 = fmul fast float %179, %42
  %182 = fmul fast float %180, %43
  %183 = call float @dx.op.unary.f32(i32 22, float %181)  ; Frc(value)
  %184 = call float @dx.op.unary.f32(i32 22, float %182)  ; Frc(value)
  %185 = and i32 %134, 16
  %186 = icmp ne i32 %185, 0
  %187 = select i1 %186, float 1.000000e+00, float %47
  %188 = icmp eq i32 %185, 0
  br i1 %188, label %208, label %189, !dx.controlflow.hints !63

; <label>:189                                     ; preds = %170
  %190 = add i32 %131, 64
  %191 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %190, i32 undef)  ; BufferLoad(srv,index,wot)
  %192 = extractvalue %dx.types.ResRet.f32 %191, 0
  %193 = fadd fast float %192, 1.000000e+00
  %194 = fmul fast float %193, %47
  %195 = fsub fast float %194, %192
  %196 = fsub fast float %193, %195
  %197 = call float @dx.op.unary.f32(i32 7, float %196)  ; Saturate(value)
  %198 = fsub fast float 1.000000e+00, %194
  %199 = call float @dx.op.unary.f32(i32 7, float %198)  ; Saturate(value)
  %200 = fsub fast float %197, %199
  %201 = fsub fast float %187, %199
  %202 = fdiv fast float %201, %200
  %203 = call float @dx.op.unary.f32(i32 7, float %202)  ; Saturate(value)
  %204 = fmul fast float %203, 2.000000e+00
  %205 = fsub fast float 3.000000e+00, %204
  %206 = fmul fast float %203, %203
  %207 = fmul fast float %206, %205
  br label %208

; <label>:208                                     ; preds = %189, %170
  %209 = phi float [ %207, %189 ], [ %187, %170 ]
  %210 = fcmp fast ogt float %209, 0.000000e+00
  br i1 %210, label %212, label %211

; <label>:211                                     ; preds = %208
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %212

; <label>:212                                     ; preds = %211, %208
  %213 = call float @dx.op.unary.f32(i32 7, float %209)  ; Saturate(value)
  %214 = fmul fast float %56, 5.000000e-01
  %215 = fmul fast float %57, 5.000000e-01
  %216 = fptosi float %214 to i32
  %217 = fptosi float %215 to i32
  %218 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %216, i32 %217, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %219 = extractvalue %dx.types.ResRet.i32 %218, 0
  %220 = lshr i32 %219, 18
  %221 = uitofp i32 %220 to float
  %222 = fmul fast float %221, 0x3F4C00EBA0000000
  %223 = call float @dx.op.unary.f32(i32 21, float %222)  ; Exp(value)
  %224 = fadd fast float %223, -1.000000e+00
  %225 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %10, i32 0)  ; GetDimensions(handle,mipLevel)
  %226 = extractvalue %dx.types.Dimensions %225, 0
  %227 = sitofp i32 %226 to float
  %228 = extractvalue %dx.types.Dimensions %225, 1
  %229 = sitofp i32 %228 to float
  %230 = fcmp fast oge float %214, %227
  %231 = fcmp fast oge float %215, %229
  %232 = or i1 %230, %231
  %233 = select i1 %232, float 0x4197782600000000, float %224
  %234 = fsub fast float %233, %51
  %235 = fcmp fast ogt float %234, 0.000000e+00
  %236 = and i32 %130, -2
  %237 = icmp eq i32 %236, 2
  %238 = and i1 %237, %235
  %239 = xor i1 %235, true
  %240 = icmp eq i32 %130, 1
  %241 = and i1 %240, %239
  %242 = or i1 %238, %241
  %243 = and i32 %134, 262144
  %244 = icmp ne i32 %243, 0
  %245 = and i1 %244, %242
  %246 = xor i1 %242, true
  %247 = and i32 %134, 131072
  %248 = icmp ne i32 %247, 0
  %249 = and i1 %248, %246
  %250 = or i1 %245, %249
  br i1 %250, label %251, label %252

; <label>:251                                     ; preds = %212
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %252

; <label>:252                                     ; preds = %251, %212
  %253 = and i32 %134, 32
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %531, label %255, !dx.controlflow.hints !64

; <label>:255                                     ; preds = %252
  %256 = add i32 %131, 80
  %257 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %256, i32 undef)  ; BufferLoad(srv,index,wot)
  %258 = extractvalue %dx.types.ResRet.f32 %257, 0
  %259 = extractvalue %dx.types.ResRet.f32 %257, 1
  %260 = extractvalue %dx.types.ResRet.f32 %257, 2
  %261 = extractvalue %dx.types.ResRet.f32 %257, 3
  %262 = add i32 %131, 96
  %263 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %262, i32 undef)  ; BufferLoad(srv,index,wot)
  %264 = extractvalue %dx.types.ResRet.f32 %263, 0
  %265 = extractvalue %dx.types.ResRet.f32 %263, 1
  %266 = extractvalue %dx.types.ResRet.f32 %263, 2
  %267 = add i32 %131, 112
  %268 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %267, i32 undef)  ; BufferLoad(srv,index,wot)
  %269 = extractvalue %dx.types.ResRet.f32 %268, 0
  %270 = extractvalue %dx.types.ResRet.f32 %268, 1
  %271 = extractvalue %dx.types.ResRet.f32 %268, 2
  %272 = extractvalue %dx.types.ResRet.f32 %268, 3
  %273 = add i32 %131, 128
  %274 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %273, i32 undef)  ; BufferLoad(srv,index,wot)
  %275 = extractvalue %dx.types.ResRet.f32 %274, 0
  %276 = extractvalue %dx.types.ResRet.f32 %274, 1
  %277 = extractvalue %dx.types.ResRet.f32 %274, 2
  %278 = extractvalue %dx.types.ResRet.f32 %274, 3
  %279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %132, i32 undef)  ; BufferLoad(srv,index,wot)
  %280 = extractvalue %dx.types.ResRet.i32 %279, 0
  %281 = and i32 %280, 4096
  %282 = icmp ne i32 %281, 0
  %283 = fcmp fast une float %266, 0.000000e+00
  %284 = and i32 %280, 64
  %285 = icmp ne i32 %284, 0
  %286 = and i32 %280, 128
  %287 = icmp eq i32 %286, 0
  %288 = and i32 %280, 2048
  %289 = icmp eq i32 %288, 0
  %290 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %13, i32 0)  ; GetDimensions(handle,mipLevel)
  %291 = extractvalue %dx.types.Dimensions %290, 0
  %292 = sitofp i32 %291 to float
  %293 = extractvalue %dx.types.Dimensions %290, 1
  %294 = sitofp i32 %293 to float
  %295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %296 = extractvalue %dx.types.CBufRet.f32 %295, 2
  %297 = extractvalue %dx.types.CBufRet.f32 %295, 3
  %298 = fmul fast float %296, %56
  %299 = fmul fast float %297, %57
  %300 = fmul fast float %298, %292
  %301 = fmul fast float %299, %294
  %302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %303 = extractvalue %dx.types.CBufRet.f32 %302, 1
  %304 = fsub fast float -0.000000e+00, %303
  %305 = fptoui float %304 to i32
  %306 = fptoui float %300 to i32
  %307 = fptoui float %301 to i32
  %308 = and i32 %305, 31
  %309 = lshr i32 %306, %308
  %310 = lshr i32 %307, %308
  %311 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %13, i32 %305, i32 %309, i32 %310, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %312 = extractvalue %dx.types.ResRet.f32 %311, 0
  %313 = fcmp fast ogt float %312, -1.000000e+00
  %314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %315 = extractvalue %dx.types.CBufRet.f32 %314, 1
  %316 = select i1 %313, float %315, float 1.000000e+00
  %317 = fadd fast float %312, 1.000000e+00
  %318 = fmul fast float %316, %317
  %319 = call float @dx.op.unary.f32(i32 6, float %318)  ; FAbs(value)
  %320 = extractvalue %dx.types.CBufRet.f32 %314, 3
  %321 = fcmp fast oge float %319, %320
  %322 = select i1 %321, float 0x4197782600000000, float %319
  br i1 %289, label %412, label %323, !dx.controlflow.hints !65

; <label>:323                                     ; preds = %255
  %324 = fmul fast float %61, %296
  %325 = fmul fast float %63, %297
  %326 = fsub fast float 1.000000e+00, %324
  %327 = fsub fast float 1.000000e+00, %325
  %328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %329 = extractvalue %dx.types.CBufRet.f32 %328, 0
  %330 = extractvalue %dx.types.CBufRet.f32 %328, 1
  %331 = extractvalue %dx.types.CBufRet.f32 %328, 2
  %332 = fmul fast float %326, %329
  %333 = fmul fast float %326, %330
  %334 = fmul fast float %326, %331
  %335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %336 = extractvalue %dx.types.CBufRet.f32 %335, 0
  %337 = extractvalue %dx.types.CBufRet.f32 %335, 1
  %338 = extractvalue %dx.types.CBufRet.f32 %335, 2
  %339 = fmul fast float %327, %336
  %340 = fmul fast float %327, %337
  %341 = fmul fast float %327, %338
  %342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %343 = extractvalue %dx.types.CBufRet.f32 %342, 0
  %344 = extractvalue %dx.types.CBufRet.f32 %342, 1
  %345 = extractvalue %dx.types.CBufRet.f32 %342, 2
  %346 = fadd fast float %339, %343
  %347 = fadd fast float %346, %332
  %348 = fadd fast float %340, %344
  %349 = fadd fast float %348, %333
  %350 = fadd fast float %341, %345
  %351 = fadd fast float %350, %334
  %352 = fmul fast float %347, %322
  %353 = fmul fast float %349, %322
  %354 = fmul fast float %351, %322
  %355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %356 = extractvalue %dx.types.CBufRet.f32 %355, 0
  %357 = extractvalue %dx.types.CBufRet.f32 %355, 1
  %358 = extractvalue %dx.types.CBufRet.f32 %355, 2
  %359 = fsub fast float %356, %25
  %360 = fadd fast float %359, %352
  %361 = fsub fast float %357, %26
  %362 = fadd fast float %361, %353
  %363 = fsub fast float %358, %27
  %364 = fadd fast float %363, %354
  %365 = fmul fast float %28, %28
  %366 = call float @dx.op.dot3.f32(i32 55, float %360, float %362, float %364, float %360, float %362, float %364)  ; Dot3(ax,ay,az,bx,by,bz)
  %367 = fsub fast float %365, %366
  %368 = fmul fast float %265, %365
  %369 = fmul fast float %264, %365
  %370 = fcmp fast olt float %367, %368
  %371 = fcmp fast ogt float %367, %369
  %372 = or i1 %370, %371
  %373 = select i1 %372, float 0.000000e+00, float %367
  %374 = fsub fast float %264, %265
  %375 = fmul fast float %374, %365
  %376 = fsub fast float %373, %368
  %377 = fdiv fast float %376, %375
  %378 = call float @dx.op.unary.f32(i32 7, float %377)  ; Saturate(value)
  %379 = fmul fast float %378, 2.000000e+00
  %380 = fsub fast float 3.000000e+00, %379
  %381 = fmul fast float %378, %378
  %382 = fmul fast float %381, %380
  %383 = fmul fast float %269, %44
  %384 = fmul fast float %270, %45
  %385 = fmul fast float %271, %46
  %386 = fsub fast float %383, %275
  %387 = fsub fast float %384, %276
  %388 = fsub fast float %385, %277
  %389 = fsub fast float %272, %278
  %390 = fmul fast float %382, %386
  %391 = fmul fast float %382, %387
  %392 = fmul fast float %382, %388
  %393 = fmul fast float %382, %389
  %394 = fadd fast float %390, %275
  %395 = fadd fast float %391, %276
  %396 = fadd fast float %392, %277
  %397 = fadd fast float %393, %278
  %398 = fmul fast float %269, %29
  %399 = fmul fast float %270, %30
  %400 = fmul fast float %271, %31
  %401 = fsub fast float %398, %275
  %402 = fsub fast float %399, %276
  %403 = fsub fast float %400, %277
  %404 = fmul fast float %382, %401
  %405 = fmul fast float %382, %402
  %406 = fmul fast float %382, %403
  %407 = fadd fast float %404, %275
  %408 = fadd fast float %405, %276
  %409 = fadd fast float %406, %277
  %410 = fmul fast float %258, %258
  %411 = fmul fast float %410, %373
  br label %519

; <label>:412                                     ; preds = %255
  %413 = and i32 %280, 256
  %414 = icmp eq i32 %413, 0
  %415 = fsub fast float %322, %51
  br i1 %414, label %476, label %416

; <label>:416                                     ; preds = %412
  %417 = fadd fast float %264, %51
  %418 = fcmp fast olt float %322, %51
  %419 = fcmp fast ogt float %322, %417
  %420 = or i1 %418, %419
  %421 = select i1 %420, float 0.000000e+00, float %415
  %422 = call float @dx.op.unary.f32(i32 83, float %322)  ; DerivCoarseX(value)
  %423 = call float @dx.op.unary.f32(i32 84, float %322)  ; DerivCoarseY(value)
  %424 = fmul fast float %422, %422
  %425 = fmul fast float %423, %423
  %426 = fadd fast float %425, %424
  %427 = call float @dx.op.unary.f32(i32 24, float %426)  ; Sqrt(value)
  %428 = extractvalue %dx.types.CBufRet.f32 %302, 2
  %429 = fmul fast float %428, %427
  %430 = call float @dx.op.unary.f32(i32 7, float %429)  ; Saturate(value)
  %431 = fmul fast float %430, %265
  %432 = fdiv fast float %415, %431
  %433 = call float @dx.op.unary.f32(i32 7, float %432)  ; Saturate(value)
  %434 = fmul fast float %433, 2.000000e+00
  %435 = fsub fast float 3.000000e+00, %434
  %436 = fmul fast float %433, %433
  %437 = fmul fast float %436, %435
  %438 = fsub fast float %322, %417
  %439 = fadd fast float %438, %431
  %440 = fdiv fast float %439, %431
  %441 = call float @dx.op.unary.f32(i32 7, float %440)  ; Saturate(value)
  %442 = fmul fast float %441, 2.000000e+00
  %443 = fsub fast float 3.000000e+00, %442
  %444 = fmul fast float %441, %441
  %445 = fmul fast float %444, %443
  %446 = fsub fast float %437, %445
  %447 = fmul fast float %269, %44
  %448 = fmul fast float %270, %45
  %449 = fmul fast float %271, %46
  %450 = fsub fast float %447, %275
  %451 = fsub fast float %448, %276
  %452 = fsub fast float %449, %277
  %453 = fsub fast float %272, %278
  %454 = fmul fast float %446, %450
  %455 = fmul fast float %446, %451
  %456 = fmul fast float %446, %452
  %457 = fmul fast float %446, %453
  %458 = fadd fast float %454, %275
  %459 = fadd fast float %455, %276
  %460 = fadd fast float %456, %277
  %461 = fadd fast float %457, %278
  %462 = fmul fast float %269, %29
  %463 = fmul fast float %270, %30
  %464 = fmul fast float %271, %31
  %465 = fsub fast float %462, %275
  %466 = fsub fast float %463, %276
  %467 = fsub fast float %464, %277
  %468 = fmul fast float %446, %465
  %469 = fmul fast float %446, %466
  %470 = fmul fast float %446, %467
  %471 = fadd fast float %468, %275
  %472 = fadd fast float %469, %276
  %473 = fadd fast float %470, %277
  %474 = fmul fast float %421, %258
  %475 = call float @dx.op.unary.f32(i32 6, float %474)  ; FAbs(value)
  br label %519

; <label>:476                                     ; preds = %412
  br i1 %283, label %477, label %490

; <label>:477                                     ; preds = %476
  %478 = fdiv fast float 5.000000e+01, %28
  %479 = select i1 %285, float %478, float 1.000000e+00
  %480 = fmul fast float %479, %258
  %481 = fmul fast float %183, 2.000000e+00
  %482 = fmul fast float %184, 2.000000e+00
  %483 = fadd fast float %481, -1.000000e+00
  %484 = fadd fast float %482, -1.000000e+00
  %485 = call float @dx.op.dot2.f32(i32 54, float %483, float %484, float %483, float %484)  ; Dot2(ax,ay,bx,by)
  %486 = fmul fast float %266, %28
  %487 = fmul fast float %486, %485
  %488 = fsub fast float %415, %487
  %489 = fmul fast float %480, %488
  br label %519

; <label>:490                                     ; preds = %476
  br i1 %287, label %511, label %491

; <label>:491                                     ; preds = %490
  %492 = fmul fast float %28, 0x3F947AE140000000
  %493 = select i1 %285, float %492, float 1.000000e+00
  %494 = fdiv fast float 1.000000e+00, %493
  %495 = fmul fast float %493, %259
  %496 = fmul fast float %493, %260
  %497 = fmul fast float %494, %261
  %498 = call float @dx.op.unary.f32(i32 6, float %415)  ; FAbs(value)
  %499 = fcmp fast olt float %498, %495
  br i1 %499, label %500, label %504, !dx.controlflow.hints !66

; <label>:500                                     ; preds = %491
  %501 = fmul fast float %494, %258
  %502 = fmul fast float %501, %498
  %503 = call float @dx.op.unary.f32(i32 6, float %502)  ; FAbs(value)
  br label %519

; <label>:504                                     ; preds = %491
  %505 = fcmp fast ogt float %498, %496
  br i1 %505, label %506, label %519

; <label>:506                                     ; preds = %504
  %507 = fsub fast float %498, %496
  %508 = fmul fast float %497, %507
  %509 = call float @dx.op.unary.f32(i32 6, float %508)  ; FAbs(value)
  %510 = fsub fast float 1.000000e+00, %509
  br label %519

; <label>:511                                     ; preds = %490
  %512 = fdiv fast float 5.000000e+01, %28
  %513 = select i1 %285, float %512, float 1.000000e+00
  %514 = fmul fast float %513, %258
  %515 = call float @dx.op.unary.f32(i32 6, float %234)  ; FAbs(value)
  %516 = select i1 %282, float %515, float 0x47EFFFFFE0000000
  %517 = call float @dx.op.binary.f32(i32 36, float %415, float %516)  ; FMin(a,b)
  %518 = fmul fast float %514, %517
  br label %519

; <label>:519                                     ; preds = %511, %506, %504, %500, %477, %416, %323
  %520 = phi float [ %411, %323 ], [ %475, %416 ], [ %489, %477 ], [ %518, %511 ], [ %503, %500 ], [ %510, %506 ], [ %498, %504 ]
  %521 = phi float [ %407, %323 ], [ %471, %416 ], [ %29, %477 ], [ %29, %511 ], [ %29, %500 ], [ %29, %506 ], [ %29, %504 ]
  %522 = phi float [ %408, %323 ], [ %472, %416 ], [ %30, %477 ], [ %30, %511 ], [ %30, %500 ], [ %30, %506 ], [ %30, %504 ]
  %523 = phi float [ %409, %323 ], [ %473, %416 ], [ %31, %477 ], [ %31, %511 ], [ %31, %500 ], [ %31, %506 ], [ %31, %504 ]
  %524 = phi float [ %394, %323 ], [ %458, %416 ], [ %44, %477 ], [ %44, %511 ], [ %44, %500 ], [ %44, %506 ], [ %44, %504 ]
  %525 = phi float [ %395, %323 ], [ %459, %416 ], [ %45, %477 ], [ %45, %511 ], [ %45, %500 ], [ %45, %506 ], [ %45, %504 ]
  %526 = phi float [ %396, %323 ], [ %460, %416 ], [ %46, %477 ], [ %46, %511 ], [ %46, %500 ], [ %46, %506 ], [ %46, %504 ]
  %527 = phi float [ %397, %323 ], [ %461, %416 ], [ 1.000000e+00, %477 ], [ 1.000000e+00, %511 ], [ 1.000000e+00, %500 ], [ 1.000000e+00, %506 ], [ 1.000000e+00, %504 ]
  %528 = call float @dx.op.unary.f32(i32 7, float %520)  ; Saturate(value)
  %529 = fmul fast float %527, %213
  %530 = fmul fast float %529, %528
  br label %531

; <label>:531                                     ; preds = %519, %252
  %532 = phi float [ %524, %519 ], [ %44, %252 ]
  %533 = phi float [ %525, %519 ], [ %45, %252 ]
  %534 = phi float [ %526, %519 ], [ %46, %252 ]
  %535 = phi float [ %530, %519 ], [ %213, %252 ]
  %536 = phi float [ %521, %519 ], [ %29, %252 ]
  %537 = phi float [ %522, %519 ], [ %30, %252 ]
  %538 = phi float [ %523, %519 ], [ %31, %252 ]
  %539 = fmul fast float %536, %32
  %540 = fmul fast float %537, %32
  %541 = fmul fast float %538, %32
  %542 = fmul fast float %536, %38
  %543 = fmul fast float %537, %38
  %544 = fmul fast float %538, %38
  %545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %546 = extractvalue %dx.types.CBufRet.f32 %545, 2
  %547 = fptosi float %51 to i32
  %548 = sitofp i32 %547 to float
  %549 = fadd fast float %546, %548
  %550 = fmul fast float %549, 0x3FE3C6EF40000000
  %551 = frem fast float %56, 2.560000e+02
  %552 = frem fast float %57, 2.560000e+02
  %553 = fptoui float %551 to i32
  %554 = fptoui float %552 to i32
  %555 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %17, i32 0, i32 %553, i32 %554, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %556 = extractvalue %dx.types.ResRet.f32 %555, 0
  %557 = fadd fast float %556, %550
  %558 = call float @dx.op.unary.f32(i32 22, float %557)  ; Frc(value)
  %559 = and i32 %134, 1
  %560 = icmp eq i32 %559, 0
  br i1 %560, label %620, label %561, !dx.controlflow.hints !67

; <label>:561                                     ; preds = %531
  %562 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %131, i32 undef)  ; BufferLoad(srv,index,wot)
  %563 = extractvalue %dx.types.ResRet.f32 %562, 2
  %564 = extractvalue %dx.types.ResRet.f32 %562, 3
  %565 = add i32 %131, 16
  %566 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %565, i32 undef)  ; BufferLoad(srv,index,wot)
  %567 = extractvalue %dx.types.ResRet.f32 %566, 0
  %568 = extractvalue %dx.types.ResRet.f32 %566, 1
  %569 = extractvalue %dx.types.ResRet.f32 %566, 2
  %570 = add i32 %131, 32
  %571 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %570, i32 undef)  ; BufferLoad(srv,index,wot)
  %572 = extractvalue %dx.types.ResRet.f32 %571, 0
  %573 = extractvalue %dx.types.ResRet.f32 %571, 1
  %574 = extractvalue %dx.types.ResRet.f32 %571, 2
  %575 = and i32 %134, 2
  %576 = icmp eq i32 %575, 0
  %577 = call float @dx.op.dot3.f32(i32 55, float %35, float %36, float %37, float %35, float %36, float %37)  ; Dot3(ax,ay,az,bx,by,bz)
  %578 = call float @dx.op.unary.f32(i32 25, float %577)  ; Rsqrt(value)
  %579 = fmul fast float %578, %35
  %580 = fmul fast float %578, %36
  %581 = fmul fast float %578, %37
  %582 = call float @dx.op.dot3.f32(i32 55, float %91, float %92, float %93, float %91, float %92, float %93)  ; Dot3(ax,ay,az,bx,by,bz)
  %583 = call float @dx.op.unary.f32(i32 25, float %582)  ; Rsqrt(value)
  %584 = fmul fast float %583, %91
  %585 = fmul fast float %583, %92
  %586 = fmul fast float %583, %93
  %587 = call float @dx.op.dot3.f32(i32 55, float %584, float %585, float %586, float %579, float %580, float %581)  ; Dot3(ax,ay,az,bx,by,bz)
  %588 = fmul fast float %587, %587
  %589 = fmul fast float %588, %563
  %590 = fadd fast float %589, %564
  %591 = call float @dx.op.unary.f32(i32 7, float %590)  ; Saturate(value)
  br i1 %576, label %592, label %602, !dx.controlflow.hints !68

; <label>:592                                     ; preds = %561
  %593 = extractvalue %dx.types.ResRet.f32 %562, 1
  %594 = extractvalue %dx.types.ResRet.f32 %562, 0
  %595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %596 = extractvalue %dx.types.CBufRet.f32 %595, 3
  %597 = fmul fast float %596, %582
  %598 = fsub fast float %594, %597
  %599 = fmul fast float %598, %593
  %600 = call float @dx.op.unary.f32(i32 7, float %599)  ; Saturate(value)
  %601 = fmul fast float %600, %591
  br label %602

; <label>:602                                     ; preds = %592, %561
  %603 = phi float [ %601, %592 ], [ %591, %561 ]
  %604 = fsub fast float %567, %572
  %605 = fsub fast float %568, %573
  %606 = fsub fast float %569, %574
  %607 = fmul fast float %603, %604
  %608 = fmul fast float %603, %605
  %609 = fmul fast float %603, %606
  %610 = fadd fast float %607, %572
  %611 = fadd fast float %608, %573
  %612 = fadd fast float %609, %574
  %613 = fmul fast float %610, %532
  %614 = fmul fast float %611, %533
  %615 = fmul fast float %612, %534
  %616 = fmul fast float %610, %539
  %617 = fmul fast float %611, %540
  %618 = fmul fast float %612, %541
  %619 = fmul fast float %603, %535
  br label %620

; <label>:620                                     ; preds = %602, %531
  %621 = phi float [ %613, %602 ], [ %532, %531 ]
  %622 = phi float [ %614, %602 ], [ %533, %531 ]
  %623 = phi float [ %615, %602 ], [ %534, %531 ]
  %624 = phi float [ %619, %602 ], [ %535, %531 ]
  %625 = phi float [ %616, %602 ], [ %539, %531 ]
  %626 = phi float [ %617, %602 ], [ %540, %531 ]
  %627 = phi float [ %618, %602 ], [ %541, %531 ]
  %628 = add i32 %24, 104
  %629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %628, i32 undef)  ; BufferLoad(srv,index,wot)
  %630 = extractvalue %dx.types.ResRet.i32 %629, 0
  %631 = add i32 %630, 0
  %632 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %631, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %633 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %632, %dx.types.Handle %52, float %171, float %172, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %634 = extractvalue %dx.types.ResRet.f32 %633, 0
  %635 = extractvalue %dx.types.ResRet.f32 %633, 1
  %636 = extractvalue %dx.types.ResRet.f32 %633, 2
  %637 = add i32 %24, 56
  %638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %637, i32 undef)  ; BufferLoad(srv,index,wot)
  %639 = extractvalue %dx.types.ResRet.i32 %638, 0
  %640 = and i32 %639, 255
  %641 = uitofp i32 %640 to float
  %642 = fmul fast float %641, 0x3F70101020000000
  %643 = lshr i32 %639, 8
  %644 = and i32 %643, 255
  %645 = uitofp i32 %644 to float
  %646 = fmul fast float %645, 0x3F70101020000000
  %647 = lshr i32 %639, 16
  %648 = and i32 %647, 255
  %649 = uitofp i32 %648 to float
  %650 = fmul fast float %649, 0x3F70101020000000
  %651 = fmul fast float %642, %642
  %652 = fmul fast float %651, %634
  %653 = fmul fast float %646, %646
  %654 = fmul fast float %653, %635
  %655 = fmul fast float %650, %650
  %656 = fmul fast float %655, %636
  %657 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %628, i32 undef)  ; BufferLoad(srv,index,wot)
  %658 = extractvalue %dx.types.ResRet.i32 %657, 0
  %659 = add i32 %658, 0
  %660 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %659, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %661 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %660, %dx.types.Handle %52, float %173, float %174, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %662 = extractvalue %dx.types.ResRet.f32 %661, 0
  %663 = extractvalue %dx.types.ResRet.f32 %661, 1
  %664 = extractvalue %dx.types.ResRet.f32 %661, 2
  %665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %637, i32 undef)  ; BufferLoad(srv,index,wot)
  %666 = extractvalue %dx.types.ResRet.i32 %665, 0
  %667 = and i32 %666, 255
  %668 = uitofp i32 %667 to float
  %669 = fmul fast float %668, 0x3F70101020000000
  %670 = lshr i32 %666, 8
  %671 = and i32 %670, 255
  %672 = uitofp i32 %671 to float
  %673 = fmul fast float %672, 0x3F70101020000000
  %674 = lshr i32 %666, 16
  %675 = and i32 %674, 255
  %676 = uitofp i32 %675 to float
  %677 = fmul fast float %676, 0x3F70101020000000
  %678 = fmul fast float %669, %669
  %679 = fmul fast float %678, %662
  %680 = fmul fast float %673, %673
  %681 = fmul fast float %680, %663
  %682 = fmul fast float %677, %677
  %683 = fmul fast float %682, %664
  %684 = fsub fast float %679, %652
  %685 = fsub fast float %681, %654
  %686 = fsub fast float %683, %656
  %687 = fmul fast float %684, %41
  %688 = fmul fast float %685, %41
  %689 = fmul fast float %686, %41
  %690 = fadd fast float %687, %652
  %691 = fadd fast float %688, %654
  %692 = fadd fast float %689, %656
  %693 = fmul fast float %690, %621
  %694 = fmul fast float %691, %622
  %695 = fmul fast float %692, %623
  %696 = add i32 %24, 108
  %697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %696, i32 undef)  ; BufferLoad(srv,index,wot)
  %698 = extractvalue %dx.types.ResRet.i32 %697, 0
  %699 = add i32 %698, 0
  %700 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %699, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %701 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %700, %dx.types.Handle %52, float %171, float %172, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %702 = extractvalue %dx.types.ResRet.f32 %701, 0
  %703 = extractvalue %dx.types.ResRet.f32 %701, 1
  %704 = extractvalue %dx.types.ResRet.f32 %701, 2
  %705 = add i32 %24, 44
  %706 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %705, i32 undef)  ; BufferLoad(srv,index,wot)
  %707 = extractvalue %dx.types.ResRet.i32 %706, 0
  %708 = shl i32 %707, 4
  %709 = and i32 %708, 32752
  %710 = call float @dx.op.legacyF16ToF32(i32 131, i32 %709)  ; LegacyF16ToF32(value)
  %711 = lshr i32 %707, 7
  %712 = and i32 %711, 32752
  %713 = call float @dx.op.legacyF16ToF32(i32 131, i32 %712)  ; LegacyF16ToF32(value)
  %714 = lshr i32 %707, 22
  %715 = shl nuw nsw i32 %714, 5
  %716 = call float @dx.op.legacyF16ToF32(i32 131, i32 %715)  ; LegacyF16ToF32(value)
  %717 = fmul fast float %710, %702
  %718 = fmul fast float %713, %703
  %719 = fmul fast float %716, %704
  %720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %721 = extractvalue %dx.types.CBufRet.f32 %720, 0
  %722 = fmul fast float %717, %721
  %723 = fmul fast float %718, %721
  %724 = fmul fast float %719, %721
  %725 = add i32 %24, 48
  %726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %725, i32 undef)  ; BufferLoad(srv,index,wot)
  %727 = extractvalue %dx.types.ResRet.i32 %726, 0
  %728 = lshr i32 %727, 22
  %729 = shl nuw nsw i32 %728, 5
  %730 = call float @dx.op.legacyF16ToF32(i32 131, i32 %729)  ; LegacyF16ToF32(value)
  %731 = fmul fast float %730, %722
  %732 = select i1 %114, float %731, float %722
  %733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %696, i32 undef)  ; BufferLoad(srv,index,wot)
  %734 = extractvalue %dx.types.ResRet.i32 %733, 0
  %735 = add i32 %734, 0
  %736 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %735, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %737 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %736, %dx.types.Handle %52, float %173, float %174, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %738 = extractvalue %dx.types.ResRet.f32 %737, 0
  %739 = extractvalue %dx.types.ResRet.f32 %737, 1
  %740 = extractvalue %dx.types.ResRet.f32 %737, 2
  %741 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %705, i32 undef)  ; BufferLoad(srv,index,wot)
  %742 = extractvalue %dx.types.ResRet.i32 %741, 0
  %743 = shl i32 %742, 4
  %744 = and i32 %743, 32752
  %745 = call float @dx.op.legacyF16ToF32(i32 131, i32 %744)  ; LegacyF16ToF32(value)
  %746 = lshr i32 %742, 7
  %747 = and i32 %746, 32752
  %748 = call float @dx.op.legacyF16ToF32(i32 131, i32 %747)  ; LegacyF16ToF32(value)
  %749 = lshr i32 %742, 22
  %750 = shl nuw nsw i32 %749, 5
  %751 = call float @dx.op.legacyF16ToF32(i32 131, i32 %750)  ; LegacyF16ToF32(value)
  %752 = fmul fast float %745, %738
  %753 = fmul fast float %748, %739
  %754 = fmul fast float %751, %740
  %755 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %756 = extractvalue %dx.types.CBufRet.f32 %755, 0
  %757 = fmul fast float %752, %756
  %758 = fmul fast float %753, %756
  %759 = fmul fast float %754, %756
  %760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %725, i32 undef)  ; BufferLoad(srv,index,wot)
  %761 = extractvalue %dx.types.ResRet.i32 %760, 0
  %762 = lshr i32 %761, 22
  %763 = shl nuw nsw i32 %762, 5
  %764 = call float @dx.op.legacyF16ToF32(i32 131, i32 %763)  ; LegacyF16ToF32(value)
  %765 = fmul fast float %764, %757
  %766 = select i1 %114, float %765, float %757
  %767 = fsub fast float %766, %732
  %768 = fsub fast float %758, %723
  %769 = fsub fast float %759, %724
  %770 = fmul fast float %767, %41
  %771 = fmul fast float %768, %41
  %772 = fmul fast float %769, %41
  %773 = fadd fast float %770, %732
  %774 = fadd fast float %771, %723
  %775 = fadd fast float %772, %724
  %776 = add i32 %24, 40
  %777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %776, i32 undef)  ; BufferLoad(srv,index,wot)
  %778 = extractvalue %dx.types.ResRet.i32 %777, 0
  %779 = and i32 %778, 255
  %780 = uitofp i32 %779 to float
  %781 = fmul fast float %780, 0x3F70101020000000
  %782 = fmul fast float %781, %781
  %783 = add i32 %24, 112
  %784 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %783, i32 undef)  ; BufferLoad(srv,index,wot)
  %785 = extractvalue %dx.types.ResRet.i32 %784, 0
  %786 = add i32 %785, 0
  %787 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %786, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %788 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %787, %dx.types.Handle %53, float %171, float %172, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %789 = extractvalue %dx.types.ResRet.f32 %788, 0
  %790 = fmul fast float %782, %789
  %791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %776, i32 undef)  ; BufferLoad(srv,index,wot)
  %792 = extractvalue %dx.types.ResRet.i32 %791, 0
  %793 = and i32 %792, 255
  %794 = uitofp i32 %793 to float
  %795 = fmul fast float %794, 0x3F70101020000000
  %796 = fmul fast float %795, %795
  %797 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %783, i32 undef)  ; BufferLoad(srv,index,wot)
  %798 = extractvalue %dx.types.ResRet.i32 %797, 0
  %799 = add i32 %798, 0
  %800 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %799, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %801 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %800, %dx.types.Handle %53, float %173, float %174, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %802 = extractvalue %dx.types.ResRet.f32 %801, 0
  %803 = fmul fast float %796, %802
  %804 = fsub fast float %803, %790
  %805 = fmul fast float %804, %41
  %806 = fadd fast float %805, %790
  %807 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %19, float %33, float %34, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %808 = extractvalue %dx.types.ResRet.f32 %807, 0
  %809 = extractvalue %dx.types.ResRet.f32 %807, 1
  %810 = extractvalue %dx.types.ResRet.f32 %807, 2
  %811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %812 = extractvalue %dx.types.CBufRet.f32 %811, 1
  %813 = fmul fast float %812, %808
  %814 = fmul fast float %812, %809
  %815 = fmul fast float %812, %810
  %816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %817 = extractvalue %dx.types.CBufRet.f32 %816, 0
  %818 = fmul fast float %693, %817
  %819 = fmul fast float %694, %817
  %820 = fmul fast float %695, %817
  %821 = fmul fast float %773, %625
  %822 = fmul fast float %774, %626
  %823 = fmul fast float %775, %627
  %824 = call float @dx.op.dot3.f32(i32 55, float %821, float %822, float %823, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %825 = select i1 %114, float 0.000000e+00, float %821
  %826 = select i1 %114, float %824, float %822
  %827 = select i1 %114, float 0.000000e+00, float %823
  %828 = fmul fast float %542, %773
  %829 = fmul fast float %543, %774
  %830 = fmul fast float %544, %775
  %831 = call float @dx.op.dot3.f32(i32 55, float %818, float %819, float %820, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %832 = add i32 %24, 32
  %833 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %832, i32 undef)  ; BufferLoad(srv,index,wot)
  %834 = extractvalue %dx.types.ResRet.i32 %833, 0
  %835 = and i32 %834, 255
  %836 = uitofp i32 %835 to float
  %837 = lshr i32 %834, 8
  %838 = and i32 %837, 255
  %839 = uitofp i32 %838 to float
  %840 = fmul fast float %839, %831
  %841 = fadd fast float %840, %836
  %842 = fmul fast float %841, 0x3F70101020000000
  %843 = call float @dx.op.unary.f32(i32 7, float %842)  ; Saturate(value)
  %844 = and i32 %134, 8192
  %845 = icmp eq i32 %844, 0
  %846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %847 = extractvalue %dx.types.CBufRet.f32 %846, 0
  br i1 %845, label %854, label %848, !dx.controlflow.hints !69

; <label>:848                                     ; preds = %620
  %849 = add i32 %131, 176
  %850 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %849, i32 undef)  ; BufferLoad(srv,index,wot)
  %851 = extractvalue %dx.types.ResRet.f32 %850, 0
  %852 = fcmp fast oge float %851, 0.000000e+00
  %853 = select i1 %852, float %851, float %847
  br label %854

; <label>:854                                     ; preds = %848, %620
  %855 = phi float [ %853, %848 ], [ %847, %620 ]
  %856 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %216, i32 %217, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %857 = extractvalue %dx.types.ResRet.i32 %856, 0
  %858 = lshr i32 %857, 18
  %859 = uitofp i32 %858 to float
  %860 = fmul fast float %859, 0x3F4C00EBA0000000
  %861 = call float @dx.op.unary.f32(i32 21, float %860)  ; Exp(value)
  %862 = fadd fast float %861, -1.000000e+00
  %863 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %10, i32 0)  ; GetDimensions(handle,mipLevel)
  %864 = extractvalue %dx.types.Dimensions %863, 0
  %865 = sitofp i32 %864 to float
  %866 = extractvalue %dx.types.Dimensions %863, 1
  %867 = sitofp i32 %866 to float
  %868 = fcmp fast oge float %214, %865
  %869 = fcmp fast oge float %215, %867
  %870 = or i1 %868, %869
  %871 = select i1 %870, float 0x4197782600000000, float %862
  %872 = icmp eq i32 %130, 3
  %873 = fcmp fast ogt float %51, %871
  %874 = and i1 %240, %873
  %875 = or i1 %872, %874
  %876 = icmp eq i32 %130, 2
  %877 = fcmp fast ole float %51, %871
  %878 = and i1 %876, %877
  %879 = or i1 %878, %875
  %880 = fmul fast float %828, %813
  %881 = fmul fast float %829, %814
  %882 = fmul fast float %830, %815
  %883 = fadd fast float %880, %825
  %884 = fadd fast float %826, %881
  %885 = fadd fast float %882, %827
  %886 = fmul fast float %883, %624
  %887 = fmul fast float %884, %624
  %888 = fmul fast float %885, %624
  %889 = fmul fast float %813, %624
  %890 = fmul fast float %814, %624
  %891 = fmul fast float %815, %624
  %892 = fadd fast float %806, -1.000000e+00
  %893 = fmul fast float %892, %624
  %894 = fadd fast float %893, 1.000000e+00
  %895 = call float @dx.op.dot3.f32(i32 55, float %894, float %894, float %894, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %896 = fsub fast float 1.000000e+00, %895
  %897 = fmul fast float %855, %843
  %898 = fsub fast float 1.000000e+00, %843
  %899 = call float @dx.op.unary.f32(i32 7, float %898)  ; Saturate(value)
  %900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %901 = extractvalue %dx.types.CBufRet.f32 %900, 3
  %902 = fmul fast float %901, %899
  %903 = fadd fast float %902, %897
  %904 = and i32 %134, 1048576
  %905 = icmp eq i32 %904, 0
  br i1 %905, label %997, label %906, !dx.controlflow.hints !70

; <label>:906                                     ; preds = %854
  %907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %908 = extractvalue %dx.types.CBufRet.f32 %907, 2
  %909 = extractvalue %dx.types.CBufRet.f32 %907, 3
  %910 = fmul fast float %908, %56
  %911 = fmul fast float %909, %57
  %912 = call float @dx.op.unary.f32(i32 7, float %910)  ; Saturate(value)
  %913 = call float @dx.op.unary.f32(i32 7, float %911)  ; Saturate(value)
  %914 = select i1 %879, i32 2, i32 0
  %915 = or i32 %914, 1
  %916 = uitofp i32 %915 to float
  %917 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %912, float %913, float %916, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %918 = extractvalue %dx.types.ResRet.f32 %917, 0
  %919 = extractvalue %dx.types.ResRet.f32 %917, 1
  %920 = extractvalue %dx.types.ResRet.f32 %917, 2
  %921 = extractvalue %dx.types.ResRet.f32 %917, 3
  %922 = add nuw nsw i32 %914, 2
  %923 = uitofp i32 %922 to float
  %924 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %912, float %913, float %923, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %925 = extractvalue %dx.types.ResRet.f32 %924, 0
  %926 = extractvalue %dx.types.ResRet.f32 %924, 1
  %927 = extractvalue %dx.types.ResRet.f32 %924, 2
  %928 = extractvalue %dx.types.ResRet.f32 %924, 3
  %929 = call float @dx.op.binary.f32(i32 35, float %919, float %920)  ; FMax(a,b)
  %930 = call float @dx.op.binary.f32(i32 35, float %918, float %929)  ; FMax(a,b)
  %931 = call float @dx.op.binary.f32(i32 35, float %930, float %921)  ; FMax(a,b)
  %932 = call float @dx.op.binary.f32(i32 36, float %926, float %927)  ; FMin(a,b)
  %933 = call float @dx.op.binary.f32(i32 36, float %925, float %932)  ; FMin(a,b)
  %934 = call float @dx.op.binary.f32(i32 36, float %933, float %928)  ; FMin(a,b)
  %935 = fmul fast float %931, 2.550000e+02
  %936 = fadd fast float %935, 0x3F70101020000000
  %937 = fptoui float %936 to i32
  %938 = fmul fast float %934, 2.550000e+02
  %939 = fadd fast float %938, 0x3F70101020000000
  %940 = fptoui float %939 to i32
  %941 = icmp ult i32 %937, %940
  br i1 %941, label %942, label %990

; <label>:942                                     ; preds = %906
  %943 = fcmp fast ogt float %50, 9.843750e-01
  %944 = fadd fast float %51, -4.000000e+00
  %945 = select i1 %943, float -4.000000e+00, float %944
  %946 = call float @dx.op.binary.f32(i32 35, float %945, float 0.000000e+00)  ; FMax(a,b)
  %947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %948 = extractvalue %dx.types.CBufRet.f32 %947, 0
  %949 = fadd fast float %948, %946
  %950 = extractvalue %dx.types.CBufRet.f32 %947, 2
  %951 = fmul fast float %949, %950
  %952 = call float @dx.op.unary.f32(i32 23, float %951)  ; Log(value)
  %953 = extractvalue %dx.types.CBufRet.f32 %947, 3
  %954 = fmul fast float %953, %952
  %955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %956 = extractvalue %dx.types.CBufRet.f32 %955, 2
  %957 = fmul fast float %954, %956
  %958 = call float @dx.op.unary.f32(i32 7, float %957)  ; Saturate(value)
  %959 = uitofp i32 %937 to float
  %960 = uitofp i32 %940 to float
  %961 = fadd fast float %959, 5.000000e-01
  %962 = fadd fast float %960, 5.000000e-01
  %963 = fmul fast float %956, %961
  %964 = fmul fast float %956, %962
  %965 = fadd fast float %963, 0x3F0FFB4800000000
  %966 = fadd fast float %964, 0xBF0FFB4800000000
  %967 = call float @dx.op.binary.f32(i32 35, float %958, float %965)  ; FMax(a,b)
  %968 = call float @dx.op.binary.f32(i32 36, float %967, float %966)  ; FMin(a,b)
  %969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %970 = extractvalue %dx.types.CBufRet.f32 %969, 1
  %971 = extractvalue %dx.types.CBufRet.f32 %969, 2
  %972 = extractvalue %dx.types.CBufRet.f32 %969, 0
  %973 = select i1 %879, float %972, float 0.000000e+00
  %974 = fmul fast float %970, %968
  %975 = fadd fast float %973, %974
  %976 = fadd fast float %973, %971
  %977 = fsub fast float %970, %971
  %978 = fadd fast float %977, %973
  %979 = call float @dx.op.binary.f32(i32 35, float %975, float %976)  ; FMax(a,b)
  %980 = call float @dx.op.binary.f32(i32 36, float %979, float %978)  ; FMin(a,b)
  %981 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %18, float %912, float %913, float %980, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %982 = extractvalue %dx.types.ResRet.f32 %981, 0
  %983 = extractvalue %dx.types.ResRet.f32 %981, 1
  %984 = extractvalue %dx.types.ResRet.f32 %981, 2
  %985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %986 = extractvalue %dx.types.CBufRet.f32 %985, 1
  %987 = fmul fast float %986, %982
  %988 = fmul fast float %986, %983
  %989 = fmul fast float %986, %984
  br label %990

; <label>:990                                     ; preds = %942, %906
  %991 = phi float [ %987, %942 ], [ 1.000000e+00, %906 ]
  %992 = phi float [ %988, %942 ], [ 1.000000e+00, %906 ]
  %993 = phi float [ %989, %942 ], [ 1.000000e+00, %906 ]
  %994 = fmul fast float %991, %886
  %995 = fmul fast float %992, %887
  %996 = fmul fast float %993, %888
  br label %997

; <label>:997                                     ; preds = %990, %854
  %998 = phi float [ %994, %990 ], [ %886, %854 ]
  %999 = phi float [ %995, %990 ], [ %887, %854 ]
  %1000 = phi float [ %996, %990 ], [ %888, %854 ]
  %1001 = and i32 %134, 2097152
  %1002 = icmp eq i32 %1001, 0
  br i1 %1002, label %1007, label %1003, !dx.controlflow.hints !71

; <label>:1003                                    ; preds = %997
  %1004 = add i32 %131, 192
  %1005 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %1004, i32 undef)  ; BufferLoad(srv,index,wot)
  %1006 = extractvalue %dx.types.ResRet.f32 %1005, 0
  br label %1010

; <label>:1007                                    ; preds = %997
  %1008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1009 = extractvalue %dx.types.CBufRet.f32 %1008, 3
  br label %1010

; <label>:1010                                    ; preds = %1007, %1003
  %1011 = phi float [ %1006, %1003 ], [ %1009, %1007 ]
  %1012 = fmul fast float %889, %818
  %1013 = fmul fast float %890, %819
  %1014 = fmul fast float %891, %820
  br i1 %874, label %1015, label %1124

; <label>:1015                                    ; preds = %1010
  %1016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1017 = extractvalue %dx.types.CBufRet.f32 %1016, 2
  %1018 = extractvalue %dx.types.CBufRet.f32 %1016, 3
  %1019 = fmul fast float %1017, %56
  %1020 = fmul fast float %1018, %57
  %1021 = call float @dx.op.unary.f32(i32 7, float %1019)  ; Saturate(value)
  %1022 = call float @dx.op.unary.f32(i32 7, float %1020)  ; Saturate(value)
  %1023 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %1021, float %1022, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1024 = extractvalue %dx.types.ResRet.f32 %1023, 0
  %1025 = extractvalue %dx.types.ResRet.f32 %1023, 1
  %1026 = extractvalue %dx.types.ResRet.f32 %1023, 2
  %1027 = extractvalue %dx.types.ResRet.f32 %1023, 3
  %1028 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %1021, float %1022, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1029 = extractvalue %dx.types.ResRet.f32 %1028, 0
  %1030 = extractvalue %dx.types.ResRet.f32 %1028, 1
  %1031 = extractvalue %dx.types.ResRet.f32 %1028, 2
  %1032 = extractvalue %dx.types.ResRet.f32 %1028, 3
  %1033 = call float @dx.op.binary.f32(i32 35, float %1025, float %1026)  ; FMax(a,b)
  %1034 = call float @dx.op.binary.f32(i32 35, float %1024, float %1033)  ; FMax(a,b)
  %1035 = call float @dx.op.binary.f32(i32 35, float %1034, float %1027)  ; FMax(a,b)
  %1036 = call float @dx.op.binary.f32(i32 36, float %1030, float %1031)  ; FMin(a,b)
  %1037 = call float @dx.op.binary.f32(i32 36, float %1029, float %1036)  ; FMin(a,b)
  %1038 = call float @dx.op.binary.f32(i32 36, float %1037, float %1032)  ; FMin(a,b)
  %1039 = fmul fast float %1035, 2.550000e+02
  %1040 = fadd fast float %1039, 0x3F70101020000000
  %1041 = fptoui float %1040 to i32
  %1042 = fmul fast float %1038, 2.550000e+02
  %1043 = fadd fast float %1042, 0x3F70101020000000
  %1044 = fptoui float %1043 to i32
  %1045 = icmp ult i32 %1041, %1044
  br i1 %1045, label %1046, label %1097

; <label>:1046                                    ; preds = %1015
  %1047 = fcmp fast ogt float %50, 9.843750e-01
  %1048 = fadd fast float %51, -4.000000e+00
  %1049 = select i1 %1047, float -4.000000e+00, float %1048
  %1050 = call float @dx.op.binary.f32(i32 35, float %1049, float 0.000000e+00)  ; FMax(a,b)
  %1051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1052 = extractvalue %dx.types.CBufRet.f32 %1051, 0
  %1053 = fadd fast float %1052, %1050
  %1054 = extractvalue %dx.types.CBufRet.f32 %1051, 2
  %1055 = fmul fast float %1053, %1054
  %1056 = call float @dx.op.unary.f32(i32 23, float %1055)  ; Log(value)
  %1057 = extractvalue %dx.types.CBufRet.f32 %1051, 3
  %1058 = fmul fast float %1057, %1056
  %1059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1060 = extractvalue %dx.types.CBufRet.f32 %1059, 2
  %1061 = fmul fast float %1058, %1060
  %1062 = call float @dx.op.unary.f32(i32 7, float %1061)  ; Saturate(value)
  %1063 = uitofp i32 %1041 to float
  %1064 = uitofp i32 %1044 to float
  %1065 = fadd fast float %1063, 5.000000e-01
  %1066 = fadd fast float %1064, 5.000000e-01
  %1067 = fmul fast float %1060, %1065
  %1068 = fmul fast float %1060, %1066
  %1069 = fadd fast float %1067, 0x3F0FFB4800000000
  %1070 = fadd fast float %1068, 0xBF0FFB4800000000
  %1071 = call float @dx.op.binary.f32(i32 35, float %1062, float %1069)  ; FMax(a,b)
  %1072 = call float @dx.op.binary.f32(i32 36, float %1071, float %1070)  ; FMin(a,b)
  %1073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1074 = extractvalue %dx.types.CBufRet.f32 %1073, 1
  %1075 = extractvalue %dx.types.CBufRet.f32 %1073, 2
  %1076 = extractvalue %dx.types.CBufRet.f32 %1073, 0
  %1077 = fmul fast float %1074, %1072
  %1078 = fadd fast float %1076, %1077
  %1079 = fadd fast float %1076, %1075
  %1080 = fsub fast float %1074, %1075
  %1081 = fadd fast float %1080, %1076
  %1082 = call float @dx.op.binary.f32(i32 35, float %1078, float %1079)  ; FMax(a,b)
  %1083 = call float @dx.op.binary.f32(i32 36, float %1082, float %1081)  ; FMin(a,b)
  %1084 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %1021, float %1022, float %1083, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1085 = extractvalue %dx.types.ResRet.f32 %1084, 0
  %1086 = extractvalue %dx.types.ResRet.f32 %1084, 1
  %1087 = extractvalue %dx.types.ResRet.f32 %1084, 2
  %1088 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %1021, float %1022, float %1083, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1089 = extractvalue %dx.types.ResRet.f32 %1088, 0
  %1090 = extractvalue %dx.types.ResRet.f32 %1088, 1
  %1091 = extractvalue %dx.types.ResRet.f32 %1088, 2
  %1092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1093 = extractvalue %dx.types.CBufRet.f32 %1092, 1
  %1094 = fmul fast float %1093, %1089
  %1095 = fmul fast float %1093, %1090
  %1096 = fmul fast float %1093, %1091
  br label %1097

; <label>:1097                                    ; preds = %1046, %1015
  %1098 = phi float [ %1085, %1046 ], [ 1.000000e+00, %1015 ]
  %1099 = phi float [ %1086, %1046 ], [ 1.000000e+00, %1015 ]
  %1100 = phi float [ %1087, %1046 ], [ 1.000000e+00, %1015 ]
  %1101 = phi float [ %1094, %1046 ], [ 0.000000e+00, %1015 ]
  %1102 = phi float [ %1095, %1046 ], [ 0.000000e+00, %1015 ]
  %1103 = phi float [ %1096, %1046 ], [ 0.000000e+00, %1015 ]
  %1104 = fmul fast float %1101, %896
  %1105 = fmul fast float %1102, %896
  %1106 = fmul fast float %1103, %896
  %1107 = call float @dx.op.dot3.f32(i32 55, float %1098, float %1099, float %1100, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1108 = call float @dx.op.dot3.f32(i32 55, float %1104, float %1105, float %1106, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1109 = select i1 %114, float %1107, float %1098
  %1110 = select i1 %114, float %1107, float %1099
  %1111 = select i1 %114, float 1.000000e+00, float %1100
  %1112 = select i1 %114, float %1108, float %1104
  %1113 = select i1 %114, float 0.000000e+00, float %1105
  %1114 = select i1 %114, float 0.000000e+00, float %1106
  %1115 = fmul fast float %1109, %1012
  %1116 = fmul fast float %1110, %1013
  %1117 = fmul fast float %1111, %1014
  %1118 = fadd fast float %1115, %1112
  %1119 = fadd fast float %1116, %1113
  %1120 = fadd fast float %1114, %1117
  %1121 = fmul fast float %1109, %998
  %1122 = fmul fast float %1110, %999
  %1123 = fmul fast float %1111, %1000
  br label %1124

; <label>:1124                                    ; preds = %1097, %1010
  %1125 = phi float [ %871, %1097 ], [ %51, %1010 ]
  %1126 = phi float [ %1118, %1097 ], [ %1012, %1010 ]
  %1127 = phi float [ %1119, %1097 ], [ %1013, %1010 ]
  %1128 = phi float [ %1120, %1097 ], [ %1014, %1010 ]
  %1129 = phi float [ %1121, %1097 ], [ %998, %1010 ]
  %1130 = phi float [ %1122, %1097 ], [ %999, %1010 ]
  %1131 = phi float [ %1123, %1097 ], [ %1000, %1010 ]
  %1132 = phi float [ %1098, %1097 ], [ 1.000000e+00, %1010 ]
  br i1 %879, label %1434, label %1133

; <label>:1133                                    ; preds = %1124
  %1134 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %19, float %33, float %34, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1135 = extractvalue %dx.types.ResRet.f32 %1134, 0
  %1136 = extractvalue %dx.types.ResRet.f32 %1134, 1
  %1137 = extractvalue %dx.types.ResRet.f32 %1134, 2
  %1138 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %19, float %33, float %34, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1139 = extractvalue %dx.types.ResRet.f32 %1138, 0
  %1140 = extractvalue %dx.types.ResRet.f32 %1138, 1
  %1141 = extractvalue %dx.types.ResRet.f32 %1138, 2
  %1142 = fmul fast float %1135, %896
  %1143 = fmul fast float %1136, %896
  %1144 = fmul fast float %1137, %896
  %1145 = fmul fast float %1139, %1132
  %1146 = call float @dx.op.dot3.f32(i32 55, float %1139, float %1140, float %1141, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1147 = call float @dx.op.dot3.f32(i32 55, float %1142, float %1143, float %1144, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1148 = select i1 %114, float %1146, float %1139
  %1149 = select i1 %114, float %1146, float %1140
  %1150 = select i1 %114, float 1.000000e+00, float %1141
  %1151 = select i1 %114, float %1147, float %1142
  %1152 = select i1 %114, float 0.000000e+00, float %1143
  %1153 = select i1 %114, float 0.000000e+00, float %1144
  %1154 = fmul fast float %1148, %1126
  %1155 = fmul fast float %1149, %1127
  %1156 = fmul fast float %1150, %1128
  %1157 = fadd fast float %1154, %1151
  %1158 = fadd fast float %1155, %1152
  %1159 = fadd fast float %1156, %1153
  %1160 = fmul fast float %1148, %1129
  %1161 = fmul fast float %1149, %1130
  %1162 = fmul fast float %1150, %1131
  %1163 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1164 = extractvalue %dx.types.CBufRet.i32 %1163, 0
  %1165 = icmp eq i32 %1164, 0
  br i1 %1165, label %1434, label %1166, !dx.controlflow.hints !72

; <label>:1166                                    ; preds = %1133
  %1167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1168 = extractvalue %dx.types.CBufRet.f32 %1167, 2
  %1169 = extractvalue %dx.types.CBufRet.f32 %1167, 3
  %1170 = fmul fast float %1168, %56
  %1171 = fmul fast float %1169, %57
  %1172 = fmul fast float %1170, 2.000000e+00
  %1173 = fmul fast float %1171, 2.000000e+00
  %1174 = fsub fast float 1.000000e+00, %1172
  %1175 = fsub fast float 1.000000e+00, %1173
  %1176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1177 = extractvalue %dx.types.CBufRet.f32 %1176, 0
  %1178 = extractvalue %dx.types.CBufRet.f32 %1176, 1
  %1179 = extractvalue %dx.types.CBufRet.f32 %1176, 2
  %1180 = fmul fast float %1174, %1177
  %1181 = fmul fast float %1174, %1178
  %1182 = fmul fast float %1174, %1179
  %1183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1184 = extractvalue %dx.types.CBufRet.f32 %1183, 0
  %1185 = extractvalue %dx.types.CBufRet.f32 %1183, 1
  %1186 = extractvalue %dx.types.CBufRet.f32 %1183, 2
  %1187 = fmul fast float %1175, %1184
  %1188 = fmul fast float %1175, %1185
  %1189 = fmul fast float %1175, %1186
  %1190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1191 = extractvalue %dx.types.CBufRet.f32 %1190, 0
  %1192 = extractvalue %dx.types.CBufRet.f32 %1190, 1
  %1193 = extractvalue %dx.types.CBufRet.f32 %1190, 2
  %1194 = fadd fast float %1187, %1191
  %1195 = fadd fast float %1194, %1180
  %1196 = fadd fast float %1188, %1192
  %1197 = fadd fast float %1196, %1181
  %1198 = fadd fast float %1189, %1193
  %1199 = fadd fast float %1198, %1182
  %1200 = fmul fast float %1195, %1125
  %1201 = fmul fast float %1197, %1125
  %1202 = fmul fast float %1199, %1125
  %1203 = fmul fast float %1200, %1200
  %1204 = fmul fast float %1201, %1201
  %1205 = fadd fast float %1203, %1204
  %1206 = fmul fast float %1202, %1202
  %1207 = fadd fast float %1205, %1206
  %1208 = call float @dx.op.unary.f32(i32 24, float %1207)  ; Sqrt(value)
  %1209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1210 = extractvalue %dx.types.CBufRet.f32 %1209, 0
  %1211 = fsub fast float %1208, %1210
  %1212 = extractvalue %dx.types.CBufRet.f32 %1209, 2
  %1213 = fmul fast float %1211, %1212
  %1214 = call float @dx.op.unary.f32(i32 7, float %1213)  ; Saturate(value)
  %1215 = fadd fast float %1214, -5.000000e-01
  %1216 = fmul fast float %1215, 2.000000e+00
  %1217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1218 = extractvalue %dx.types.CBufRet.f32 %1217, 2
  %1219 = call float @dx.op.binary.f32(i32 36, float %1218, float %1216)  ; FMin(a,b)
  %1220 = fsub fast float -0.000000e+00, %1218
  %1221 = fcmp fast ogt float %1219, %1220
  br i1 %1221, label %1222, label %1434, !dx.controlflow.hints !73

; <label>:1222                                    ; preds = %1166
  %1223 = fmul fast float %1219, 5.000000e-01
  %1224 = fadd fast float %1223, 5.000000e-01
  %1225 = call float @dx.op.unary.f32(i32 22, float %1224)  ; Frc(value)
  %1226 = call float @dx.op.unary.f32(i32 27, float %1225)  ; Round_ni(value)
  %1227 = call float @dx.op.unary.f32(i32 22, float %1225)  ; Frc(value)
  %1228 = fmul fast float %1227, 2.000000e+00
  %1229 = fadd fast float %1228, -1.000000e+00
  %1230 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %19, float %1170, float %1171, float %1226, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1231 = extractvalue %dx.types.ResRet.f32 %1230, 0
  %1232 = extractvalue %dx.types.ResRet.f32 %1230, 1
  %1233 = extractvalue %dx.types.ResRet.f32 %1230, 2
  %1234 = extractvalue %dx.types.ResRet.f32 %1230, 3
  %1235 = fadd fast float %1231, -5.000000e-01
  %1236 = fadd fast float %1233, -5.000000e-01
  %1237 = fmul fast float %1235, 0xBFD5555560000000
  %1238 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1236, float %1237)  ; FMad(a,b,c)
  %1239 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1232, float 0.000000e+00)  ; FMad(a,b,c)
  %1240 = fadd fast float %1239, %1234
  %1241 = fmul fast float %1235, -7.500000e-01
  %1242 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1236, float %1241)  ; FMad(a,b,c)
  %1243 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1232, float 0.000000e+00)  ; FMad(a,b,c)
  %1244 = fadd fast float %1243, %1234
  %1245 = call float @dx.op.binary.f32(i32 35, float %1238, float -1.000000e+00)  ; FMax(a,b)
  %1246 = call float @dx.op.binary.f32(i32 35, float %1240, float -1.000000e+00)  ; FMax(a,b)
  %1247 = call float @dx.op.binary.f32(i32 35, float %1242, float -1.000000e+00)  ; FMax(a,b)
  %1248 = call float @dx.op.binary.f32(i32 35, float %1244, float -1.000000e+00)  ; FMax(a,b)
  %1249 = call float @dx.op.binary.f32(i32 36, float %1245, float 1.000000e+00)  ; FMin(a,b)
  %1250 = call float @dx.op.binary.f32(i32 36, float %1246, float 1.000000e+00)  ; FMin(a,b)
  %1251 = call float @dx.op.binary.f32(i32 36, float %1247, float 1.000000e+00)  ; FMin(a,b)
  %1252 = call float @dx.op.binary.f32(i32 36, float %1248, float 1.000000e+00)  ; FMin(a,b)
  %1253 = fcmp fast olt float %1249, 0x3FEFFF8020000000
  br i1 %1253, label %1254, label %1369, !dx.controlflow.hints !74

; <label>:1254                                    ; preds = %1222
  %1255 = extractvalue %dx.types.CBufRet.f32 %1217, 3
  %1256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1257 = extractvalue %dx.types.CBufRet.f32 %1256, 0
  %1258 = extractvalue %dx.types.CBufRet.f32 %1256, 1
  %1259 = extractvalue %dx.types.CBufRet.f32 %1256, 2
  %1260 = extractvalue %dx.types.CBufRet.f32 %1256, 3
  %1261 = fsub fast float %1257, %1249
  %1262 = fsub fast float %1258, %1250
  %1263 = fsub fast float %1259, %1251
  %1264 = fsub fast float %1260, %1252
  %1265 = fmul fast float %1261, %1255
  %1266 = fmul fast float %1262, %1255
  %1267 = fmul fast float %1263, %1255
  %1268 = fmul fast float %1264, %1255
  %1269 = fadd fast float %1265, %1249
  %1270 = fadd fast float %1266, %1250
  %1271 = fsub fast float -0.000000e+00, %1270
  %1272 = fadd fast float %1267, %1251
  %1273 = fadd fast float %1268, %1252
  %1274 = fmul fast float %1269, %1269
  %1275 = fsub fast float %1270, %1274
  %1276 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1275)  ; FMax(a,b)
  %1277 = fdiv fast float 1.000000e+00, %1276
  %1278 = fmul fast float %1270, %1269
  %1279 = fsub fast float %1272, %1278
  %1280 = fsub fast float %1229, %1269
  %1281 = fmul fast float %1229, %1229
  %1282 = fsub fast float %1281, %1270
  %1283 = fmul fast float %1280, %1277
  %1284 = fmul fast float %1283, %1279
  %1285 = fsub fast float %1282, %1284
  %1286 = fmul fast float %1270, %1270
  %1287 = fsub fast float %1273, %1286
  %1288 = fmul fast float %1279, %1279
  %1289 = fmul fast float %1288, %1277
  %1290 = fsub fast float %1287, %1289
  %1291 = fdiv fast float %1285, %1290
  %1292 = fmul fast float %1279, %1291
  %1293 = fsub fast float %1280, %1292
  %1294 = fmul fast float %1293, %1277
  %1295 = fmul fast float %1294, %1269
  %1296 = fsub fast float 1.000000e+00, %1295
  %1297 = fmul fast float %1270, %1291
  %1298 = fsub fast float %1296, %1297
  %1299 = fmul fast float %1294, %1294
  %1300 = fmul fast float %1291, 4.000000e+00
  %1301 = fmul fast float %1300, %1298
  %1302 = fsub fast float %1299, %1301
  %1303 = call float @dx.op.unary.f32(i32 24, float %1302)  ; Sqrt(value)
  %1304 = fcmp fast oge float %1294, 0.000000e+00
  %1305 = fsub fast float -0.000000e+00, %1303
  %1306 = select i1 %1304, float %1305, float %1303
  %1307 = fsub fast float %1306, %1294
  %1308 = fdiv fast float %1307, %1291
  %1309 = fdiv fast float %1298, %1307
  %1310 = fmul fast float %1308, 5.000000e-01
  %1311 = fmul fast float %1309, 2.000000e+00
  %1312 = select i1 %1304, float %1310, float %1311
  %1313 = select i1 %1304, float %1311, float %1310
  %1314 = call float @dx.op.binary.f32(i32 35, float %1312, float %1313)  ; FMax(a,b)
  %1315 = call float @dx.op.binary.f32(i32 36, float %1312, float %1313)  ; FMin(a,b)
  %1316 = fcmp fast ogt float %1229, %1315
  br i1 %1316, label %1317, label %1327

; <label>:1317                                    ; preds = %1254
  %1318 = fsub fast float %1229, %1315
  %1319 = fsub fast float %1314, %1315
  %1320 = fmul fast float %1318, %1319
  %1321 = fmul fast float %1314, %1229
  %1322 = fadd fast float %1314, %1229
  %1323 = fmul fast float %1322, %1269
  %1324 = fadd fast float %1321, %1270
  %1325 = fsub fast float %1324, %1323
  %1326 = fdiv fast float %1325, %1320
  br label %1327

; <label>:1327                                    ; preds = %1317, %1254
  %1328 = phi float [ %1326, %1317 ], [ 0.000000e+00, %1254 ]
  %1329 = fcmp fast ogt float %1229, %1314
  %1330 = fsub fast float %1229, %1314
  br i1 %1329, label %1331, label %1341

; <label>:1331                                    ; preds = %1327
  %1332 = fsub fast float %1314, %1315
  %1333 = fmul fast float %1332, %1330
  %1334 = fmul fast float %1315, %1229
  %1335 = fadd fast float %1315, %1229
  %1336 = fmul fast float %1335, %1269
  %1337 = fsub fast float %1271, %1334
  %1338 = fadd fast float %1337, %1336
  %1339 = fdiv fast float %1338, %1333
  %1340 = fadd fast float %1339, %1328
  br label %1341

; <label>:1341                                    ; preds = %1331, %1327
  %1342 = phi float [ %1340, %1331 ], [ %1328, %1327 ]
  %1343 = fsub fast float %1229, %1315
  %1344 = fmul fast float %1343, %1330
  %1345 = fmul fast float %1315, %1314
  %1346 = fadd fast float %1315, %1314
  %1347 = fmul fast float %1346, %1269
  %1348 = fadd fast float %1345, %1270
  %1349 = fsub fast float %1348, %1347
  %1350 = fdiv fast float %1349, %1344
  %1351 = call float @dx.op.unary.f32(i32 7, float %1342)  ; Saturate(value)
  %1352 = fcmp fast oeq float %1011, 0.000000e+00
  %1353 = extractvalue %dx.types.CBufRet.f32 %1217, 0
  %1354 = fcmp fast oeq float %1353, 0.000000e+00
  %1355 = or i1 %1352, %1354
  %1356 = fmul fast float %1353, 2.000000e+00
  %1357 = fadd fast float %1218, %1219
  %1358 = fdiv fast float %1357, %1356
  %1359 = call float @dx.op.unary.f32(i32 7, float %1358)  ; Saturate(value)
  %1360 = fmul fast float %1359, 2.000000e+00
  %1361 = fsub fast float 3.000000e+00, %1360
  %1362 = fmul fast float %1359, %1359
  %1363 = fmul fast float %1362, %1361
  %1364 = select i1 %1355, float 1.000000e+00, float %1363
  %1365 = fmul fast float %1350, %1011
  %1366 = fadd fast float %1351, %1365
  %1367 = call float @dx.op.unary.f32(i32 7, float %1366)  ; Saturate(value)
  %1368 = fmul fast float %1364, %1367
  br label %1369

; <label>:1369                                    ; preds = %1341, %1222
  %1370 = phi float [ %1368, %1341 ], [ 0.000000e+00, %1222 ]
  %1371 = fsub fast float 1.000000e+00, %1370
  %1372 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %19, float %1170, float %1171, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1373 = extractvalue %dx.types.ResRet.f32 %1372, 0
  %1374 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1375 = extractvalue %dx.types.CBufRet.i32 %1374, 2
  %1376 = icmp eq i32 %1375, 0
  br i1 %1376, label %1382, label %1377

; <label>:1377                                    ; preds = %1369
  %1378 = call float @dx.op.unary.f32(i32 7, float %1370)  ; Saturate(value)
  %1379 = fadd fast float %1373, -1.000000e+00
  %1380 = fmul fast float %1378, %1379
  %1381 = fadd fast float %1380, 1.000000e+00
  br label %1382

; <label>:1382                                    ; preds = %1377, %1369
  %1383 = phi float [ %1381, %1377 ], [ %1371, %1369 ]
  %1384 = call float @dx.op.binary.f32(i32 35, float %1373, float %1383)  ; FMax(a,b)
  %1385 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %1386 = extractvalue %dx.types.CBufRet.i32 %1385, 2
  %1387 = and i32 %1386, 1
  %1388 = icmp eq i32 %1387, 0
  %1389 = fcmp fast une float %1384, 1.000000e+00
  %1390 = and i1 %1389, %1388
  br i1 %1390, label %1391, label %1410

; <label>:1391                                    ; preds = %1382
  %1392 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %19, float %1170, float %1171, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1393 = extractvalue %dx.types.ResRet.f32 %1392, 0
  %1394 = extractvalue %dx.types.ResRet.f32 %1392, 1
  %1395 = extractvalue %dx.types.ResRet.f32 %1392, 2
  %1396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1397 = extractvalue %dx.types.CBufRet.f32 %1396, 1
  %1398 = fmul fast float %1397, %1393
  %1399 = fmul fast float %1397, %1394
  %1400 = fmul fast float %1397, %1395
  %1401 = fcmp fast ogt float %1373, 0x3FEFFF2E40000000
  %1402 = fsub fast float 1.000000e+00, %1384
  %1403 = fsub fast float 1.000000e+00, %1373
  %1404 = fdiv fast float %1402, %1403
  %1405 = call float @dx.op.unary.f32(i32 7, float %1404)  ; Saturate(value)
  %1406 = select i1 %1401, float 0.000000e+00, float %1405
  %1407 = fmul fast float %1398, %1406
  %1408 = fmul fast float %1399, %1406
  %1409 = fmul fast float %1400, %1406
  br label %1410

; <label>:1410                                    ; preds = %1391, %1382
  %1411 = phi float [ 0.000000e+00, %1382 ], [ %1407, %1391 ]
  %1412 = phi float [ 0.000000e+00, %1382 ], [ %1408, %1391 ]
  %1413 = phi float [ 0.000000e+00, %1382 ], [ %1409, %1391 ]
  %1414 = fmul fast float %1411, %896
  %1415 = fmul fast float %1412, %896
  %1416 = fmul fast float %1413, %896
  %1417 = fmul fast float %1384, %1145
  %1418 = call float @dx.op.dot3.f32(i32 55, float %1384, float %1384, float %1384, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1419 = call float @dx.op.dot3.f32(i32 55, float %1414, float %1415, float %1416, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1420 = select i1 %114, float %1418, float %1384
  %1421 = select i1 %114, float 1.000000e+00, float %1384
  %1422 = select i1 %114, float %1419, float %1414
  %1423 = select i1 %114, float 0.000000e+00, float %1415
  %1424 = select i1 %114, float 0.000000e+00, float %1416
  %1425 = fmul fast float %1420, %1157
  %1426 = fmul fast float %1420, %1158
  %1427 = fmul fast float %1421, %1159
  %1428 = fadd fast float %1425, %1422
  %1429 = fadd fast float %1426, %1423
  %1430 = fadd fast float %1424, %1427
  %1431 = fmul fast float %1420, %1160
  %1432 = fmul fast float %1420, %1161
  %1433 = fmul fast float %1421, %1162
  br label %1434

; <label>:1434                                    ; preds = %1410, %1166, %1133, %1124
  %1435 = phi float [ %1126, %1124 ], [ %1157, %1133 ], [ %1428, %1410 ], [ %1157, %1166 ]
  %1436 = phi float [ %1127, %1124 ], [ %1158, %1133 ], [ %1429, %1410 ], [ %1158, %1166 ]
  %1437 = phi float [ %1128, %1124 ], [ %1159, %1133 ], [ %1430, %1410 ], [ %1159, %1166 ]
  %1438 = phi float [ %1129, %1124 ], [ %1160, %1133 ], [ %1431, %1410 ], [ %1160, %1166 ]
  %1439 = phi float [ %1130, %1124 ], [ %1161, %1133 ], [ %1432, %1410 ], [ %1161, %1166 ]
  %1440 = phi float [ %1131, %1124 ], [ %1162, %1133 ], [ %1433, %1410 ], [ %1162, %1166 ]
  %1441 = phi float [ %1132, %1124 ], [ %1145, %1133 ], [ %1417, %1410 ], [ %1145, %1166 ]
  %1442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1443 = extractvalue %dx.types.CBufRet.f32 %1442, 2
  %1444 = extractvalue %dx.types.CBufRet.f32 %1442, 3
  %1445 = fmul fast float %1443, %56
  %1446 = fmul fast float %1444, %57
  %1447 = call float @dx.op.unary.f32(i32 7, float %1445)  ; Saturate(value)
  %1448 = call float @dx.op.unary.f32(i32 7, float %1446)  ; Saturate(value)
  %1449 = select i1 %879, i32 2, i32 0
  %1450 = or i32 %1449, 1
  %1451 = uitofp i32 %1450 to float
  %1452 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %1447, float %1448, float %1451, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1453 = extractvalue %dx.types.ResRet.f32 %1452, 0
  %1454 = extractvalue %dx.types.ResRet.f32 %1452, 1
  %1455 = extractvalue %dx.types.ResRet.f32 %1452, 2
  %1456 = extractvalue %dx.types.ResRet.f32 %1452, 3
  %1457 = add nuw nsw i32 %1449, 2
  %1458 = uitofp i32 %1457 to float
  %1459 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %1447, float %1448, float %1458, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1460 = extractvalue %dx.types.ResRet.f32 %1459, 0
  %1461 = extractvalue %dx.types.ResRet.f32 %1459, 1
  %1462 = extractvalue %dx.types.ResRet.f32 %1459, 2
  %1463 = extractvalue %dx.types.ResRet.f32 %1459, 3
  %1464 = call float @dx.op.binary.f32(i32 35, float %1454, float %1455)  ; FMax(a,b)
  %1465 = call float @dx.op.binary.f32(i32 35, float %1453, float %1464)  ; FMax(a,b)
  %1466 = call float @dx.op.binary.f32(i32 35, float %1465, float %1456)  ; FMax(a,b)
  %1467 = call float @dx.op.binary.f32(i32 36, float %1461, float %1462)  ; FMin(a,b)
  %1468 = call float @dx.op.binary.f32(i32 36, float %1460, float %1467)  ; FMin(a,b)
  %1469 = call float @dx.op.binary.f32(i32 36, float %1468, float %1463)  ; FMin(a,b)
  %1470 = fmul fast float %1466, 2.550000e+02
  %1471 = fadd fast float %1470, 0x3F70101020000000
  %1472 = fptoui float %1471 to i32
  %1473 = fmul fast float %1469, 2.550000e+02
  %1474 = fadd fast float %1473, 0x3F70101020000000
  %1475 = fptoui float %1474 to i32
  %1476 = icmp ult i32 %1472, %1475
  br i1 %1476, label %1477, label %1529

; <label>:1477                                    ; preds = %1434
  %1478 = fcmp fast ogt float %50, 9.843750e-01
  %1479 = fadd fast float %1125, -4.000000e+00
  %1480 = select i1 %1478, float -4.000000e+00, float %1479
  %1481 = call float @dx.op.binary.f32(i32 35, float %1480, float 0.000000e+00)  ; FMax(a,b)
  %1482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1483 = extractvalue %dx.types.CBufRet.f32 %1482, 0
  %1484 = fadd fast float %1483, %1481
  %1485 = extractvalue %dx.types.CBufRet.f32 %1482, 2
  %1486 = fmul fast float %1484, %1485
  %1487 = call float @dx.op.unary.f32(i32 23, float %1486)  ; Log(value)
  %1488 = extractvalue %dx.types.CBufRet.f32 %1482, 3
  %1489 = fmul fast float %1488, %1487
  %1490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1491 = extractvalue %dx.types.CBufRet.f32 %1490, 2
  %1492 = fmul fast float %1489, %1491
  %1493 = call float @dx.op.unary.f32(i32 7, float %1492)  ; Saturate(value)
  %1494 = uitofp i32 %1472 to float
  %1495 = uitofp i32 %1475 to float
  %1496 = fadd fast float %1494, 5.000000e-01
  %1497 = fadd fast float %1495, 5.000000e-01
  %1498 = fmul fast float %1491, %1496
  %1499 = fmul fast float %1491, %1497
  %1500 = fadd fast float %1498, 0x3F0FFB4800000000
  %1501 = fadd fast float %1499, 0xBF0FFB4800000000
  %1502 = call float @dx.op.binary.f32(i32 35, float %1493, float %1500)  ; FMax(a,b)
  %1503 = call float @dx.op.binary.f32(i32 36, float %1502, float %1501)  ; FMin(a,b)
  %1504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1505 = extractvalue %dx.types.CBufRet.f32 %1504, 1
  %1506 = extractvalue %dx.types.CBufRet.f32 %1504, 2
  %1507 = extractvalue %dx.types.CBufRet.f32 %1504, 0
  %1508 = select i1 %879, float %1507, float 0.000000e+00
  %1509 = fmul fast float %1505, %1503
  %1510 = fadd fast float %1508, %1509
  %1511 = fadd fast float %1508, %1506
  %1512 = fsub fast float %1505, %1506
  %1513 = fadd fast float %1512, %1508
  %1514 = call float @dx.op.binary.f32(i32 35, float %1510, float %1511)  ; FMax(a,b)
  %1515 = call float @dx.op.binary.f32(i32 36, float %1514, float %1513)  ; FMin(a,b)
  %1516 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %1447, float %1448, float %1515, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1517 = extractvalue %dx.types.ResRet.f32 %1516, 0
  %1518 = extractvalue %dx.types.ResRet.f32 %1516, 1
  %1519 = extractvalue %dx.types.ResRet.f32 %1516, 2
  %1520 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %1447, float %1448, float %1515, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1521 = extractvalue %dx.types.ResRet.f32 %1520, 0
  %1522 = extractvalue %dx.types.ResRet.f32 %1520, 1
  %1523 = extractvalue %dx.types.ResRet.f32 %1520, 2
  %1524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1525 = extractvalue %dx.types.CBufRet.f32 %1524, 1
  %1526 = fmul fast float %1525, %1521
  %1527 = fmul fast float %1525, %1522
  %1528 = fmul fast float %1525, %1523
  br label %1529

; <label>:1529                                    ; preds = %1477, %1434
  %1530 = phi float [ %1517, %1477 ], [ 1.000000e+00, %1434 ]
  %1531 = phi float [ %1518, %1477 ], [ 1.000000e+00, %1434 ]
  %1532 = phi float [ %1519, %1477 ], [ 1.000000e+00, %1434 ]
  %1533 = phi float [ %1526, %1477 ], [ 0.000000e+00, %1434 ]
  %1534 = phi float [ %1527, %1477 ], [ 0.000000e+00, %1434 ]
  %1535 = phi float [ %1528, %1477 ], [ 0.000000e+00, %1434 ]
  %1536 = fmul fast float %1533, %896
  %1537 = fmul fast float %1534, %896
  %1538 = fmul fast float %1535, %896
  %1539 = fmul fast float %1530, %1441
  %1540 = call float @dx.op.dot3.f32(i32 55, float %1530, float %1531, float %1532, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1541 = call float @dx.op.dot3.f32(i32 55, float %1536, float %1537, float %1538, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1542 = select i1 %114, float %1540, float %1530
  %1543 = select i1 %114, float %1540, float %1531
  %1544 = select i1 %114, float 1.000000e+00, float %1532
  %1545 = select i1 %114, float %1541, float %1536
  %1546 = select i1 %114, float 0.000000e+00, float %1537
  %1547 = select i1 %114, float 0.000000e+00, float %1538
  %1548 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1549 = extractvalue %dx.types.CBufRet.i32 %1548, 3
  %1550 = and i32 %1549, 3
  %1551 = icmp ne i32 %1550, 0
  %1552 = and i32 %1549, 4
  %1553 = icmp ne i32 %1552, 0
  %1554 = and i1 %1551, %1553
  %1555 = and i1 %114, %1554
  br i1 %1555, label %1556, label %1562

; <label>:1556                                    ; preds = %1529
  %1557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1558 = extractvalue %dx.types.CBufRet.f32 %1557, 1
  %1559 = fadd fast float %1539, -1.000000e+00
  %1560 = fmul fast float %1558, %1559
  %1561 = fadd fast float %1560, 1.000000e+00
  br label %1562

; <label>:1562                                    ; preds = %1556, %1529
  %1563 = phi float [ %1561, %1556 ], [ %1539, %1529 ]
  %1564 = fadd fast float %1438, %1435
  %1565 = fmul fast float %1542, %1564
  %1566 = fadd fast float %1565, %1545
  %1567 = fadd fast float %1439, %1436
  %1568 = fmul fast float %1543, %1567
  %1569 = fadd fast float %1568, %1546
  %1570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1571 = extractvalue %dx.types.CBufRet.f32 %1570, 0
  br i1 %114, label %1572, label %1593

; <label>:1572                                    ; preds = %1562
  %1573 = fadd fast float %1566, %1569
  %1574 = fmul fast float %1571, %1573
  %1575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1576 = extractvalue %dx.types.CBufRet.f32 %1575, 3
  %1577 = extractvalue %dx.types.CBufRet.f32 %900, 1
  %1578 = fsub fast float %903, %1577
  %1579 = extractvalue %dx.types.CBufRet.f32 %900, 2
  %1580 = fmul fast float %1578, %1579
  %1581 = call float @dx.op.unary.f32(i32 7, float %1580)  ; Saturate(value)
  %1582 = fsub fast float %1581, %1576
  %1583 = fmul fast float %1582, %1563
  %1584 = fadd fast float %1583, %1576
  %1585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1586 = extractvalue %dx.types.CBufRet.f32 %1585, 0
  %1587 = fsub fast float %1584, %1586
  %1588 = fmul fast float %1587, 1.000000e+01
  %1589 = call float @dx.op.unary.f32(i32 7, float %1588)  ; Saturate(value)
  %1590 = fmul fast float %1589, %896
  %1591 = fsub fast float %896, %1590
  %1592 = fmul fast float %1591, %1584
  br label %1605

; <label>:1593                                    ; preds = %1562
  %1594 = fadd fast float %1440, %1437
  %1595 = fmul fast float %1544, %1594
  %1596 = fadd fast float %1595, %1547
  %1597 = fmul fast float %1571, %1566
  %1598 = fmul fast float %1571, %1569
  %1599 = fmul fast float %1571, %1596
  %1600 = call float @dx.op.binary.f32(i32 35, float %1598, float %1599)  ; FMax(a,b)
  %1601 = call float @dx.op.binary.f32(i32 35, float %1597, float %1600)  ; FMax(a,b)
  %1602 = call float @dx.op.binary.f32(i32 35, float %1601, float %896)  ; FMax(a,b)
  %1603 = fcmp fast ugt float %1602, 0x3F10000000000000
  br i1 %1603, label %1605, label %1604

; <label>:1604                                    ; preds = %1593
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1605

; <label>:1605                                    ; preds = %1604, %1593, %1572
  %1606 = phi float [ %1574, %1572 ], [ %1597, %1604 ], [ %1597, %1593 ]
  %1607 = phi float [ %1592, %1572 ], [ %1598, %1604 ], [ %1598, %1593 ]
  %1608 = phi float [ %1591, %1572 ], [ %1599, %1604 ], [ %1599, %1593 ]
  %1609 = phi float [ %1591, %1572 ], [ %896, %1604 ], [ %896, %1593 ]
  %1610 = fadd fast float %558, 0x3FE3C6EF40000000
  %1611 = call float @dx.op.unary.f32(i32 22, float %1610)  ; Frc(value)
  %1612 = call float @dx.op.unary.f32(i32 23, float %1606)  ; Log(value)
  %1613 = fadd fast float %1612, -7.000000e+00
  %1614 = call float @dx.op.unary.f32(i32 21, float %1613)  ; Exp(value)
  %1615 = fmul fast float %1611, 2.000000e+00
  %1616 = fadd fast float %1615, -1.000000e+00
  %1617 = fmul fast float %1614, %1616
  %1618 = fcmp fast ogt float %1606, 0.000000e+00
  %1619 = select i1 %1618, float %1617, float 0.000000e+00
  %1620 = fadd fast float %1619, %1606
  %1621 = fadd fast float %558, 0x3FF3C6EF40000000
  %1622 = call float @dx.op.unary.f32(i32 22, float %1621)  ; Frc(value)
  %1623 = call float @dx.op.unary.f32(i32 23, float %1607)  ; Log(value)
  %1624 = fadd fast float %1623, -7.000000e+00
  %1625 = call float @dx.op.unary.f32(i32 21, float %1624)  ; Exp(value)
  %1626 = fmul fast float %1622, 2.000000e+00
  %1627 = fadd fast float %1626, -1.000000e+00
  %1628 = fmul fast float %1625, %1627
  %1629 = fcmp fast ogt float %1607, 0.000000e+00
  %1630 = select i1 %1629, float %1628, float 0.000000e+00
  %1631 = fadd fast float %1630, %1607
  %1632 = fadd fast float %558, 0x3FFDAA66E0000000
  %1633 = call float @dx.op.unary.f32(i32 22, float %1632)  ; Frc(value)
  %1634 = call float @dx.op.unary.f32(i32 23, float %1608)  ; Log(value)
  %1635 = fadd fast float %1634, -6.000000e+00
  %1636 = call float @dx.op.unary.f32(i32 21, float %1635)  ; Exp(value)
  %1637 = fmul fast float %1633, 2.000000e+00
  %1638 = fadd fast float %1637, -1.000000e+00
  %1639 = fmul fast float %1636, %1638
  %1640 = fcmp fast ogt float %1608, 0.000000e+00
  %1641 = select i1 %1640, float %1639, float 0.000000e+00
  %1642 = fadd fast float %1641, %1608
  %1643 = select i1 %114, float %1607, float %1631
  %1644 = select i1 %114, float %1608, float %1642
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1645 = call float @dx.op.binary.f32(i32 36, float %1620, float 3.225500e+04)  ; FMin(a,b)
  %1646 = call float @dx.op.binary.f32(i32 36, float %1643, float 3.225500e+04)  ; FMin(a,b)
  %1647 = call float @dx.op.binary.f32(i32 36, float %1644, float 3.225500e+04)  ; FMin(a,b)
  %1648 = call float @dx.op.binary.f32(i32 36, float %1609, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1645)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1646)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1647)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1648)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1609)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1609)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1609)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1609)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!35 = !{[37 x i32] [i32 35, i32 8, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 254, i32 255, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255, i32 255, i32 0, i32 255, i32 255, i32 255, i32 7, i32 255, i32 255, i32 0, i32 0, i32 3, i32 3, i32 7, i32 7, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 255]}
!36 = !{void ()* @ps_main, !"ps_main", !37, !4, !62}
!37 = !{!38, !58, null}
!38 = !{!39, !42, !43, !45, !48, !50, !52, !54, !55, !57}
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
!55 = !{i32 8, !"COLOR", i8 5, i8 0, !49, i8 1, i32 1, i8 3, i32 8, i8 0, !56}
!56 = !{i32 3, i32 5}
!57 = !{i32 9, !"SV_SampleIndex", i8 5, i8 12, !40, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!58 = !{!59, !60}
!59 = !{i32 0, !"SV_Target", i8 9, i8 16, !40, i8 0, i32 1, i8 4, i32 0, i8 0, !41}
!60 = !{i32 1, !"SV_Target", i8 9, i8 16, !61, i8 0, i32 1, i8 4, i32 1, i8 0, !41}
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

