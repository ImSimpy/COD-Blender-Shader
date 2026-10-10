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
; shader hash: e3d5e450d75c8f70da6fd1c886a7587e
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
  %188 = add i32 %24, 128
  %189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %188, i32 undef)  ; BufferLoad(srv,index,wot)
  %190 = extractvalue %dx.types.ResRet.i32 %189, 0
  %191 = add i32 %190, 0
  %192 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %191, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %194 = extractvalue %dx.types.CBufRet.f32 %193, 2
  %195 = call %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32 61, %dx.types.Handle %192, %dx.types.Handle %53, float %171, float %172, float undef, float undef, i32 0, i32 0, i32 undef, float %194, float undef)  ; SampleBias(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,bias,clamp)
  %196 = extractvalue %dx.types.ResRet.f32 %195, 0
  %197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %188, i32 undef)  ; BufferLoad(srv,index,wot)
  %198 = extractvalue %dx.types.ResRet.i32 %197, 0
  %199 = add i32 %198, 0
  %200 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %199, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %202 = extractvalue %dx.types.CBufRet.f32 %201, 2
  %203 = call %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32 61, %dx.types.Handle %200, %dx.types.Handle %53, float %173, float %174, float undef, float undef, i32 0, i32 0, i32 undef, float %202, float undef)  ; SampleBias(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,bias,clamp)
  %204 = extractvalue %dx.types.ResRet.f32 %203, 0
  %205 = fsub fast float %204, %196
  %206 = fmul fast float %205, %41
  %207 = fadd fast float %206, %196
  %208 = fmul fast float %207, %187
  %209 = icmp eq i32 %185, 0
  br i1 %209, label %229, label %210, !dx.controlflow.hints !63

; <label>:210                                     ; preds = %170
  %211 = add i32 %131, 64
  %212 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %211, i32 undef)  ; BufferLoad(srv,index,wot)
  %213 = extractvalue %dx.types.ResRet.f32 %212, 0
  %214 = fadd fast float %213, 1.000000e+00
  %215 = fmul fast float %214, %47
  %216 = fsub fast float %215, %213
  %217 = fsub fast float %214, %216
  %218 = call float @dx.op.unary.f32(i32 7, float %217)  ; Saturate(value)
  %219 = fsub fast float 1.000000e+00, %215
  %220 = call float @dx.op.unary.f32(i32 7, float %219)  ; Saturate(value)
  %221 = fsub fast float %218, %220
  %222 = fsub fast float %208, %220
  %223 = fdiv fast float %222, %221
  %224 = call float @dx.op.unary.f32(i32 7, float %223)  ; Saturate(value)
  %225 = fmul fast float %224, 2.000000e+00
  %226 = fsub fast float 3.000000e+00, %225
  %227 = fmul fast float %224, %224
  %228 = fmul fast float %227, %226
  br label %229

; <label>:229                                     ; preds = %210, %170
  %230 = phi float [ %228, %210 ], [ %208, %170 ]
  %231 = fcmp fast ogt float %230, 0.000000e+00
  br i1 %231, label %233, label %232

; <label>:232                                     ; preds = %229
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %233

; <label>:233                                     ; preds = %232, %229
  %234 = call float @dx.op.unary.f32(i32 7, float %230)  ; Saturate(value)
  %235 = fmul fast float %56, 5.000000e-01
  %236 = fmul fast float %57, 5.000000e-01
  %237 = fptosi float %235 to i32
  %238 = fptosi float %236 to i32
  %239 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %237, i32 %238, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %240 = extractvalue %dx.types.ResRet.i32 %239, 0
  %241 = lshr i32 %240, 18
  %242 = uitofp i32 %241 to float
  %243 = fmul fast float %242, 0x3F4C00EBA0000000
  %244 = call float @dx.op.unary.f32(i32 21, float %243)  ; Exp(value)
  %245 = fadd fast float %244, -1.000000e+00
  %246 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %10, i32 0)  ; GetDimensions(handle,mipLevel)
  %247 = extractvalue %dx.types.Dimensions %246, 0
  %248 = sitofp i32 %247 to float
  %249 = extractvalue %dx.types.Dimensions %246, 1
  %250 = sitofp i32 %249 to float
  %251 = fcmp fast oge float %235, %248
  %252 = fcmp fast oge float %236, %250
  %253 = or i1 %251, %252
  %254 = select i1 %253, float 0x4197782600000000, float %245
  %255 = fsub fast float %254, %51
  %256 = fcmp fast ogt float %255, 0.000000e+00
  %257 = and i32 %130, -2
  %258 = icmp eq i32 %257, 2
  %259 = and i1 %258, %256
  %260 = xor i1 %256, true
  %261 = icmp eq i32 %130, 1
  %262 = and i1 %261, %260
  %263 = or i1 %259, %262
  %264 = and i32 %134, 262144
  %265 = icmp ne i32 %264, 0
  %266 = and i1 %265, %263
  %267 = xor i1 %263, true
  %268 = and i32 %134, 131072
  %269 = icmp ne i32 %268, 0
  %270 = and i1 %269, %267
  %271 = or i1 %266, %270
  br i1 %271, label %272, label %273

; <label>:272                                     ; preds = %233
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %273

; <label>:273                                     ; preds = %272, %233
  %274 = and i32 %134, 32
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %553, label %276, !dx.controlflow.hints !64

; <label>:276                                     ; preds = %273
  %277 = add i32 %131, 80
  %278 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %277, i32 undef)  ; BufferLoad(srv,index,wot)
  %279 = extractvalue %dx.types.ResRet.f32 %278, 0
  %280 = extractvalue %dx.types.ResRet.f32 %278, 1
  %281 = extractvalue %dx.types.ResRet.f32 %278, 2
  %282 = extractvalue %dx.types.ResRet.f32 %278, 3
  %283 = add i32 %131, 96
  %284 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %285 = extractvalue %dx.types.ResRet.f32 %284, 0
  %286 = extractvalue %dx.types.ResRet.f32 %284, 1
  %287 = extractvalue %dx.types.ResRet.f32 %284, 2
  %288 = add i32 %131, 112
  %289 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %288, i32 undef)  ; BufferLoad(srv,index,wot)
  %290 = extractvalue %dx.types.ResRet.f32 %289, 0
  %291 = extractvalue %dx.types.ResRet.f32 %289, 1
  %292 = extractvalue %dx.types.ResRet.f32 %289, 2
  %293 = extractvalue %dx.types.ResRet.f32 %289, 3
  %294 = add i32 %131, 128
  %295 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %294, i32 undef)  ; BufferLoad(srv,index,wot)
  %296 = extractvalue %dx.types.ResRet.f32 %295, 0
  %297 = extractvalue %dx.types.ResRet.f32 %295, 1
  %298 = extractvalue %dx.types.ResRet.f32 %295, 2
  %299 = extractvalue %dx.types.ResRet.f32 %295, 3
  %300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %132, i32 undef)  ; BufferLoad(srv,index,wot)
  %301 = extractvalue %dx.types.ResRet.i32 %300, 0
  %302 = and i32 %301, 4096
  %303 = icmp ne i32 %302, 0
  %304 = fcmp fast une float %287, 0.000000e+00
  %305 = and i32 %301, 64
  %306 = icmp ne i32 %305, 0
  %307 = and i32 %301, 128
  %308 = icmp eq i32 %307, 0
  %309 = and i32 %301, 2048
  %310 = icmp eq i32 %309, 0
  %311 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %13, i32 0)  ; GetDimensions(handle,mipLevel)
  %312 = extractvalue %dx.types.Dimensions %311, 0
  %313 = sitofp i32 %312 to float
  %314 = extractvalue %dx.types.Dimensions %311, 1
  %315 = sitofp i32 %314 to float
  %316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %317 = extractvalue %dx.types.CBufRet.f32 %316, 2
  %318 = extractvalue %dx.types.CBufRet.f32 %316, 3
  %319 = fmul fast float %317, %56
  %320 = fmul fast float %318, %57
  %321 = fmul fast float %319, %313
  %322 = fmul fast float %320, %315
  %323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %324 = extractvalue %dx.types.CBufRet.f32 %323, 1
  %325 = fsub fast float -0.000000e+00, %324
  %326 = fptoui float %325 to i32
  %327 = fptoui float %321 to i32
  %328 = fptoui float %322 to i32
  %329 = and i32 %326, 31
  %330 = lshr i32 %327, %329
  %331 = lshr i32 %328, %329
  %332 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %13, i32 %326, i32 %330, i32 %331, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %333 = extractvalue %dx.types.ResRet.f32 %332, 0
  %334 = fcmp fast ogt float %333, -1.000000e+00
  %335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %336 = extractvalue %dx.types.CBufRet.f32 %335, 1
  %337 = select i1 %334, float %336, float 1.000000e+00
  %338 = fadd fast float %333, 1.000000e+00
  %339 = fmul fast float %337, %338
  %340 = call float @dx.op.unary.f32(i32 6, float %339)  ; FAbs(value)
  %341 = extractvalue %dx.types.CBufRet.f32 %335, 3
  %342 = fcmp fast oge float %340, %341
  %343 = select i1 %342, float 0x4197782600000000, float %340
  br i1 %310, label %433, label %344, !dx.controlflow.hints !65

; <label>:344                                     ; preds = %276
  %345 = fmul fast float %61, %317
  %346 = fmul fast float %63, %318
  %347 = fsub fast float 1.000000e+00, %345
  %348 = fsub fast float 1.000000e+00, %346
  %349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %350 = extractvalue %dx.types.CBufRet.f32 %349, 0
  %351 = extractvalue %dx.types.CBufRet.f32 %349, 1
  %352 = extractvalue %dx.types.CBufRet.f32 %349, 2
  %353 = fmul fast float %347, %350
  %354 = fmul fast float %347, %351
  %355 = fmul fast float %347, %352
  %356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %357 = extractvalue %dx.types.CBufRet.f32 %356, 0
  %358 = extractvalue %dx.types.CBufRet.f32 %356, 1
  %359 = extractvalue %dx.types.CBufRet.f32 %356, 2
  %360 = fmul fast float %348, %357
  %361 = fmul fast float %348, %358
  %362 = fmul fast float %348, %359
  %363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %364 = extractvalue %dx.types.CBufRet.f32 %363, 0
  %365 = extractvalue %dx.types.CBufRet.f32 %363, 1
  %366 = extractvalue %dx.types.CBufRet.f32 %363, 2
  %367 = fadd fast float %360, %364
  %368 = fadd fast float %367, %353
  %369 = fadd fast float %361, %365
  %370 = fadd fast float %369, %354
  %371 = fadd fast float %362, %366
  %372 = fadd fast float %371, %355
  %373 = fmul fast float %368, %343
  %374 = fmul fast float %370, %343
  %375 = fmul fast float %372, %343
  %376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %377 = extractvalue %dx.types.CBufRet.f32 %376, 0
  %378 = extractvalue %dx.types.CBufRet.f32 %376, 1
  %379 = extractvalue %dx.types.CBufRet.f32 %376, 2
  %380 = fsub fast float %377, %25
  %381 = fadd fast float %380, %373
  %382 = fsub fast float %378, %26
  %383 = fadd fast float %382, %374
  %384 = fsub fast float %379, %27
  %385 = fadd fast float %384, %375
  %386 = fmul fast float %28, %28
  %387 = call float @dx.op.dot3.f32(i32 55, float %381, float %383, float %385, float %381, float %383, float %385)  ; Dot3(ax,ay,az,bx,by,bz)
  %388 = fsub fast float %386, %387
  %389 = fmul fast float %286, %386
  %390 = fmul fast float %285, %386
  %391 = fcmp fast olt float %388, %389
  %392 = fcmp fast ogt float %388, %390
  %393 = or i1 %391, %392
  %394 = select i1 %393, float 0.000000e+00, float %388
  %395 = fsub fast float %285, %286
  %396 = fmul fast float %395, %386
  %397 = fsub fast float %394, %389
  %398 = fdiv fast float %397, %396
  %399 = call float @dx.op.unary.f32(i32 7, float %398)  ; Saturate(value)
  %400 = fmul fast float %399, 2.000000e+00
  %401 = fsub fast float 3.000000e+00, %400
  %402 = fmul fast float %399, %399
  %403 = fmul fast float %402, %401
  %404 = fmul fast float %290, %44
  %405 = fmul fast float %291, %45
  %406 = fmul fast float %292, %46
  %407 = fsub fast float %404, %296
  %408 = fsub fast float %405, %297
  %409 = fsub fast float %406, %298
  %410 = fsub fast float %293, %299
  %411 = fmul fast float %403, %407
  %412 = fmul fast float %403, %408
  %413 = fmul fast float %403, %409
  %414 = fmul fast float %403, %410
  %415 = fadd fast float %411, %296
  %416 = fadd fast float %412, %297
  %417 = fadd fast float %413, %298
  %418 = fadd fast float %414, %299
  %419 = fmul fast float %290, %29
  %420 = fmul fast float %291, %30
  %421 = fmul fast float %292, %31
  %422 = fsub fast float %419, %296
  %423 = fsub fast float %420, %297
  %424 = fsub fast float %421, %298
  %425 = fmul fast float %403, %422
  %426 = fmul fast float %403, %423
  %427 = fmul fast float %403, %424
  %428 = fadd fast float %425, %296
  %429 = fadd fast float %426, %297
  %430 = fadd fast float %427, %298
  %431 = fmul fast float %279, %279
  %432 = fmul fast float %431, %394
  br label %540

; <label>:433                                     ; preds = %276
  %434 = and i32 %301, 256
  %435 = icmp eq i32 %434, 0
  %436 = fsub fast float %343, %51
  br i1 %435, label %497, label %437

; <label>:437                                     ; preds = %433
  %438 = fadd fast float %285, %51
  %439 = fcmp fast olt float %343, %51
  %440 = fcmp fast ogt float %343, %438
  %441 = or i1 %439, %440
  %442 = select i1 %441, float 0.000000e+00, float %436
  %443 = call float @dx.op.unary.f32(i32 83, float %343)  ; DerivCoarseX(value)
  %444 = call float @dx.op.unary.f32(i32 84, float %343)  ; DerivCoarseY(value)
  %445 = fmul fast float %443, %443
  %446 = fmul fast float %444, %444
  %447 = fadd fast float %446, %445
  %448 = call float @dx.op.unary.f32(i32 24, float %447)  ; Sqrt(value)
  %449 = extractvalue %dx.types.CBufRet.f32 %323, 2
  %450 = fmul fast float %449, %448
  %451 = call float @dx.op.unary.f32(i32 7, float %450)  ; Saturate(value)
  %452 = fmul fast float %451, %286
  %453 = fdiv fast float %436, %452
  %454 = call float @dx.op.unary.f32(i32 7, float %453)  ; Saturate(value)
  %455 = fmul fast float %454, 2.000000e+00
  %456 = fsub fast float 3.000000e+00, %455
  %457 = fmul fast float %454, %454
  %458 = fmul fast float %457, %456
  %459 = fsub fast float %343, %438
  %460 = fadd fast float %459, %452
  %461 = fdiv fast float %460, %452
  %462 = call float @dx.op.unary.f32(i32 7, float %461)  ; Saturate(value)
  %463 = fmul fast float %462, 2.000000e+00
  %464 = fsub fast float 3.000000e+00, %463
  %465 = fmul fast float %462, %462
  %466 = fmul fast float %465, %464
  %467 = fsub fast float %458, %466
  %468 = fmul fast float %290, %44
  %469 = fmul fast float %291, %45
  %470 = fmul fast float %292, %46
  %471 = fsub fast float %468, %296
  %472 = fsub fast float %469, %297
  %473 = fsub fast float %470, %298
  %474 = fsub fast float %293, %299
  %475 = fmul fast float %467, %471
  %476 = fmul fast float %467, %472
  %477 = fmul fast float %467, %473
  %478 = fmul fast float %467, %474
  %479 = fadd fast float %475, %296
  %480 = fadd fast float %476, %297
  %481 = fadd fast float %477, %298
  %482 = fadd fast float %478, %299
  %483 = fmul fast float %290, %29
  %484 = fmul fast float %291, %30
  %485 = fmul fast float %292, %31
  %486 = fsub fast float %483, %296
  %487 = fsub fast float %484, %297
  %488 = fsub fast float %485, %298
  %489 = fmul fast float %467, %486
  %490 = fmul fast float %467, %487
  %491 = fmul fast float %467, %488
  %492 = fadd fast float %489, %296
  %493 = fadd fast float %490, %297
  %494 = fadd fast float %491, %298
  %495 = fmul fast float %442, %279
  %496 = call float @dx.op.unary.f32(i32 6, float %495)  ; FAbs(value)
  br label %540

; <label>:497                                     ; preds = %433
  br i1 %304, label %498, label %511

; <label>:498                                     ; preds = %497
  %499 = fdiv fast float 5.000000e+01, %28
  %500 = select i1 %306, float %499, float 1.000000e+00
  %501 = fmul fast float %500, %279
  %502 = fmul fast float %183, 2.000000e+00
  %503 = fmul fast float %184, 2.000000e+00
  %504 = fadd fast float %502, -1.000000e+00
  %505 = fadd fast float %503, -1.000000e+00
  %506 = call float @dx.op.dot2.f32(i32 54, float %504, float %505, float %504, float %505)  ; Dot2(ax,ay,bx,by)
  %507 = fmul fast float %287, %28
  %508 = fmul fast float %507, %506
  %509 = fsub fast float %436, %508
  %510 = fmul fast float %501, %509
  br label %540

; <label>:511                                     ; preds = %497
  br i1 %308, label %532, label %512

; <label>:512                                     ; preds = %511
  %513 = fmul fast float %28, 0x3F947AE140000000
  %514 = select i1 %306, float %513, float 1.000000e+00
  %515 = fdiv fast float 1.000000e+00, %514
  %516 = fmul fast float %514, %280
  %517 = fmul fast float %514, %281
  %518 = fmul fast float %515, %282
  %519 = call float @dx.op.unary.f32(i32 6, float %436)  ; FAbs(value)
  %520 = fcmp fast olt float %519, %516
  br i1 %520, label %521, label %525, !dx.controlflow.hints !66

; <label>:521                                     ; preds = %512
  %522 = fmul fast float %515, %279
  %523 = fmul fast float %522, %519
  %524 = call float @dx.op.unary.f32(i32 6, float %523)  ; FAbs(value)
  br label %540

; <label>:525                                     ; preds = %512
  %526 = fcmp fast ogt float %519, %517
  br i1 %526, label %527, label %540

; <label>:527                                     ; preds = %525
  %528 = fsub fast float %519, %517
  %529 = fmul fast float %518, %528
  %530 = call float @dx.op.unary.f32(i32 6, float %529)  ; FAbs(value)
  %531 = fsub fast float 1.000000e+00, %530
  br label %540

; <label>:532                                     ; preds = %511
  %533 = fdiv fast float 5.000000e+01, %28
  %534 = select i1 %306, float %533, float 1.000000e+00
  %535 = fmul fast float %534, %279
  %536 = call float @dx.op.unary.f32(i32 6, float %255)  ; FAbs(value)
  %537 = select i1 %303, float %536, float 0x47EFFFFFE0000000
  %538 = call float @dx.op.binary.f32(i32 36, float %436, float %537)  ; FMin(a,b)
  %539 = fmul fast float %535, %538
  br label %540

; <label>:540                                     ; preds = %532, %527, %525, %521, %498, %437, %344
  %541 = phi float [ %432, %344 ], [ %496, %437 ], [ %510, %498 ], [ %539, %532 ], [ %524, %521 ], [ %531, %527 ], [ %519, %525 ]
  %542 = phi float [ %428, %344 ], [ %492, %437 ], [ %29, %498 ], [ %29, %532 ], [ %29, %521 ], [ %29, %527 ], [ %29, %525 ]
  %543 = phi float [ %429, %344 ], [ %493, %437 ], [ %30, %498 ], [ %30, %532 ], [ %30, %521 ], [ %30, %527 ], [ %30, %525 ]
  %544 = phi float [ %430, %344 ], [ %494, %437 ], [ %31, %498 ], [ %31, %532 ], [ %31, %521 ], [ %31, %527 ], [ %31, %525 ]
  %545 = phi float [ %415, %344 ], [ %479, %437 ], [ %44, %498 ], [ %44, %532 ], [ %44, %521 ], [ %44, %527 ], [ %44, %525 ]
  %546 = phi float [ %416, %344 ], [ %480, %437 ], [ %45, %498 ], [ %45, %532 ], [ %45, %521 ], [ %45, %527 ], [ %45, %525 ]
  %547 = phi float [ %417, %344 ], [ %481, %437 ], [ %46, %498 ], [ %46, %532 ], [ %46, %521 ], [ %46, %527 ], [ %46, %525 ]
  %548 = phi float [ %418, %344 ], [ %482, %437 ], [ 1.000000e+00, %498 ], [ 1.000000e+00, %532 ], [ 1.000000e+00, %521 ], [ 1.000000e+00, %527 ], [ 1.000000e+00, %525 ]
  %549 = call float @dx.op.unary.f32(i32 7, float %541)  ; Saturate(value)
  %550 = fmul fast float %549, %47
  %551 = fmul fast float %548, %234
  %552 = fmul fast float %551, %549
  br label %553

; <label>:553                                     ; preds = %540, %273
  %554 = phi float [ %545, %540 ], [ %44, %273 ]
  %555 = phi float [ %546, %540 ], [ %45, %273 ]
  %556 = phi float [ %547, %540 ], [ %46, %273 ]
  %557 = phi float [ %552, %540 ], [ %234, %273 ]
  %558 = phi float [ %550, %540 ], [ %47, %273 ]
  %559 = phi float [ %542, %540 ], [ %29, %273 ]
  %560 = phi float [ %543, %540 ], [ %30, %273 ]
  %561 = phi float [ %544, %540 ], [ %31, %273 ]
  %562 = fmul fast float %559, %32
  %563 = fmul fast float %560, %32
  %564 = fmul fast float %561, %32
  %565 = fmul fast float %559, %38
  %566 = fmul fast float %560, %38
  %567 = fmul fast float %561, %38
  %568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %569 = extractvalue %dx.types.CBufRet.f32 %568, 2
  %570 = fptosi float %51 to i32
  %571 = sitofp i32 %570 to float
  %572 = fadd fast float %569, %571
  %573 = fmul fast float %572, 0x3FE3C6EF40000000
  %574 = frem fast float %56, 2.560000e+02
  %575 = frem fast float %57, 2.560000e+02
  %576 = fptoui float %574 to i32
  %577 = fptoui float %575 to i32
  %578 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %17, i32 0, i32 %576, i32 %577, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %579 = extractvalue %dx.types.ResRet.f32 %578, 0
  %580 = fadd fast float %579, %573
  %581 = call float @dx.op.unary.f32(i32 22, float %580)  ; Frc(value)
  %582 = and i32 %134, 1
  %583 = icmp eq i32 %582, 0
  br i1 %583, label %644, label %584, !dx.controlflow.hints !67

; <label>:584                                     ; preds = %553
  %585 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %131, i32 undef)  ; BufferLoad(srv,index,wot)
  %586 = extractvalue %dx.types.ResRet.f32 %585, 2
  %587 = extractvalue %dx.types.ResRet.f32 %585, 3
  %588 = add i32 %131, 16
  %589 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %588, i32 undef)  ; BufferLoad(srv,index,wot)
  %590 = extractvalue %dx.types.ResRet.f32 %589, 0
  %591 = extractvalue %dx.types.ResRet.f32 %589, 1
  %592 = extractvalue %dx.types.ResRet.f32 %589, 2
  %593 = add i32 %131, 32
  %594 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %593, i32 undef)  ; BufferLoad(srv,index,wot)
  %595 = extractvalue %dx.types.ResRet.f32 %594, 0
  %596 = extractvalue %dx.types.ResRet.f32 %594, 1
  %597 = extractvalue %dx.types.ResRet.f32 %594, 2
  %598 = and i32 %134, 2
  %599 = icmp eq i32 %598, 0
  %600 = call float @dx.op.dot3.f32(i32 55, float %35, float %36, float %37, float %35, float %36, float %37)  ; Dot3(ax,ay,az,bx,by,bz)
  %601 = call float @dx.op.unary.f32(i32 25, float %600)  ; Rsqrt(value)
  %602 = fmul fast float %601, %35
  %603 = fmul fast float %601, %36
  %604 = fmul fast float %601, %37
  %605 = call float @dx.op.dot3.f32(i32 55, float %91, float %92, float %93, float %91, float %92, float %93)  ; Dot3(ax,ay,az,bx,by,bz)
  %606 = call float @dx.op.unary.f32(i32 25, float %605)  ; Rsqrt(value)
  %607 = fmul fast float %606, %91
  %608 = fmul fast float %606, %92
  %609 = fmul fast float %606, %93
  %610 = call float @dx.op.dot3.f32(i32 55, float %607, float %608, float %609, float %602, float %603, float %604)  ; Dot3(ax,ay,az,bx,by,bz)
  %611 = fmul fast float %610, %610
  %612 = fmul fast float %611, %586
  %613 = fadd fast float %612, %587
  %614 = call float @dx.op.unary.f32(i32 7, float %613)  ; Saturate(value)
  br i1 %599, label %615, label %625, !dx.controlflow.hints !68

; <label>:615                                     ; preds = %584
  %616 = extractvalue %dx.types.ResRet.f32 %585, 1
  %617 = extractvalue %dx.types.ResRet.f32 %585, 0
  %618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %619 = extractvalue %dx.types.CBufRet.f32 %618, 3
  %620 = fmul fast float %619, %605
  %621 = fsub fast float %617, %620
  %622 = fmul fast float %621, %616
  %623 = call float @dx.op.unary.f32(i32 7, float %622)  ; Saturate(value)
  %624 = fmul fast float %623, %614
  br label %625

; <label>:625                                     ; preds = %615, %584
  %626 = phi float [ %624, %615 ], [ %614, %584 ]
  %627 = fsub fast float %590, %595
  %628 = fsub fast float %591, %596
  %629 = fsub fast float %592, %597
  %630 = fmul fast float %626, %627
  %631 = fmul fast float %626, %628
  %632 = fmul fast float %626, %629
  %633 = fadd fast float %630, %595
  %634 = fadd fast float %631, %596
  %635 = fadd fast float %632, %597
  %636 = fmul fast float %633, %554
  %637 = fmul fast float %634, %555
  %638 = fmul fast float %635, %556
  %639 = fmul fast float %633, %562
  %640 = fmul fast float %634, %563
  %641 = fmul fast float %635, %564
  %642 = fmul fast float %626, %557
  %643 = fmul fast float %626, %558
  br label %644

; <label>:644                                     ; preds = %625, %553
  %645 = phi float [ %636, %625 ], [ %554, %553 ]
  %646 = phi float [ %637, %625 ], [ %555, %553 ]
  %647 = phi float [ %638, %625 ], [ %556, %553 ]
  %648 = phi float [ %642, %625 ], [ %557, %553 ]
  %649 = phi float [ %643, %625 ], [ %558, %553 ]
  %650 = phi float [ %639, %625 ], [ %562, %553 ]
  %651 = phi float [ %640, %625 ], [ %563, %553 ]
  %652 = phi float [ %641, %625 ], [ %564, %553 ]
  %653 = add i32 %24, 120
  %654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %653, i32 undef)  ; BufferLoad(srv,index,wot)
  %655 = extractvalue %dx.types.ResRet.i32 %654, 0
  %656 = add i32 %655, 0
  %657 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %656, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %658 = add i32 %24, 24
  %659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %658, i32 undef)  ; BufferLoad(srv,index,wot)
  %660 = extractvalue %dx.types.ResRet.i32 %659, 0
  %661 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %657, %dx.types.Handle %52, float %171, float %172, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %662 = extractvalue %dx.types.ResRet.f32 %661, 0
  %663 = extractvalue %dx.types.ResRet.f32 %661, 1
  %664 = extractvalue %dx.types.ResRet.f32 %661, 2
  %665 = extractvalue %dx.types.ResRet.f32 %661, 3
  %666 = and i32 %660, 255
  %667 = uitofp i32 %666 to float
  %668 = lshr i32 %660, 8
  %669 = and i32 %668, 255
  %670 = uitofp i32 %669 to float
  %671 = fmul fast float %665, %667
  %672 = fadd fast float %671, %670
  %673 = add i32 %24, 56
  %674 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %673, i32 undef)  ; BufferLoad(srv,index,wot)
  %675 = extractvalue %dx.types.ResRet.i32 %674, 0
  %676 = and i32 %675, 255
  %677 = uitofp i32 %676 to float
  %678 = fmul fast float %677, 0x3F70101020000000
  %679 = lshr i32 %675, 8
  %680 = and i32 %679, 255
  %681 = uitofp i32 %680 to float
  %682 = fmul fast float %681, 0x3F70101020000000
  %683 = lshr i32 %675, 16
  %684 = and i32 %683, 255
  %685 = uitofp i32 %684 to float
  %686 = fmul fast float %685, 0x3F70101020000000
  %687 = fmul fast float %678, %678
  %688 = fmul fast float %687, %662
  %689 = fmul fast float %682, %682
  %690 = fmul fast float %689, %663
  %691 = fmul fast float %686, %686
  %692 = fmul fast float %691, %664
  %693 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %653, i32 undef)  ; BufferLoad(srv,index,wot)
  %694 = extractvalue %dx.types.ResRet.i32 %693, 0
  %695 = add i32 %694, 0
  %696 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %695, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %658, i32 undef)  ; BufferLoad(srv,index,wot)
  %698 = extractvalue %dx.types.ResRet.i32 %697, 0
  %699 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %696, %dx.types.Handle %52, float %173, float %174, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %700 = extractvalue %dx.types.ResRet.f32 %699, 0
  %701 = extractvalue %dx.types.ResRet.f32 %699, 1
  %702 = extractvalue %dx.types.ResRet.f32 %699, 2
  %703 = extractvalue %dx.types.ResRet.f32 %699, 3
  %704 = and i32 %698, 255
  %705 = uitofp i32 %704 to float
  %706 = lshr i32 %698, 8
  %707 = and i32 %706, 255
  %708 = uitofp i32 %707 to float
  %709 = fmul fast float %703, %705
  %710 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %673, i32 undef)  ; BufferLoad(srv,index,wot)
  %711 = extractvalue %dx.types.ResRet.i32 %710, 0
  %712 = and i32 %711, 255
  %713 = uitofp i32 %712 to float
  %714 = fmul fast float %713, 0x3F70101020000000
  %715 = lshr i32 %711, 8
  %716 = and i32 %715, 255
  %717 = uitofp i32 %716 to float
  %718 = fmul fast float %717, 0x3F70101020000000
  %719 = lshr i32 %711, 16
  %720 = and i32 %719, 255
  %721 = uitofp i32 %720 to float
  %722 = fmul fast float %721, 0x3F70101020000000
  %723 = fmul fast float %714, %714
  %724 = fmul fast float %723, %700
  %725 = fmul fast float %718, %718
  %726 = fmul fast float %725, %701
  %727 = fmul fast float %722, %722
  %728 = fmul fast float %727, %702
  %729 = fsub fast float %724, %688
  %730 = fsub fast float %726, %690
  %731 = fsub fast float %728, %692
  %732 = fmul fast float %729, %41
  %733 = fmul fast float %730, %41
  %734 = fmul fast float %731, %41
  %735 = fadd fast float %732, %688
  %736 = fadd fast float %733, %690
  %737 = fadd fast float %734, %692
  %738 = fsub fast float %708, %672
  %739 = fadd fast float %738, %709
  %740 = fmul fast float %739, %41
  %741 = fmul fast float %735, %645
  %742 = fmul fast float %736, %646
  %743 = fmul fast float %737, %647
  %744 = add i32 %24, 124
  %745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %744, i32 undef)  ; BufferLoad(srv,index,wot)
  %746 = extractvalue %dx.types.ResRet.i32 %745, 0
  %747 = add i32 %746, 0
  %748 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %747, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %749 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %748, %dx.types.Handle %52, float %171, float %172, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %750 = extractvalue %dx.types.ResRet.f32 %749, 0
  %751 = extractvalue %dx.types.ResRet.f32 %749, 1
  %752 = extractvalue %dx.types.ResRet.f32 %749, 2
  %753 = add i32 %24, 44
  %754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %753, i32 undef)  ; BufferLoad(srv,index,wot)
  %755 = extractvalue %dx.types.ResRet.i32 %754, 0
  %756 = shl i32 %755, 4
  %757 = and i32 %756, 32752
  %758 = call float @dx.op.legacyF16ToF32(i32 131, i32 %757)  ; LegacyF16ToF32(value)
  %759 = lshr i32 %755, 7
  %760 = and i32 %759, 32752
  %761 = call float @dx.op.legacyF16ToF32(i32 131, i32 %760)  ; LegacyF16ToF32(value)
  %762 = lshr i32 %755, 22
  %763 = shl nuw nsw i32 %762, 5
  %764 = call float @dx.op.legacyF16ToF32(i32 131, i32 %763)  ; LegacyF16ToF32(value)
  %765 = fmul fast float %758, %750
  %766 = fmul fast float %761, %751
  %767 = fmul fast float %764, %752
  %768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %769 = extractvalue %dx.types.CBufRet.f32 %768, 0
  %770 = fmul fast float %765, %769
  %771 = fmul fast float %766, %769
  %772 = fmul fast float %767, %769
  %773 = add i32 %24, 48
  %774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %773, i32 undef)  ; BufferLoad(srv,index,wot)
  %775 = extractvalue %dx.types.ResRet.i32 %774, 0
  %776 = lshr i32 %775, 22
  %777 = shl nuw nsw i32 %776, 5
  %778 = call float @dx.op.legacyF16ToF32(i32 131, i32 %777)  ; LegacyF16ToF32(value)
  %779 = fmul fast float %778, %770
  %780 = select i1 %114, float %779, float %770
  %781 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %744, i32 undef)  ; BufferLoad(srv,index,wot)
  %782 = extractvalue %dx.types.ResRet.i32 %781, 0
  %783 = add i32 %782, 0
  %784 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %783, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %785 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %784, %dx.types.Handle %52, float %173, float %174, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %786 = extractvalue %dx.types.ResRet.f32 %785, 0
  %787 = extractvalue %dx.types.ResRet.f32 %785, 1
  %788 = extractvalue %dx.types.ResRet.f32 %785, 2
  %789 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %753, i32 undef)  ; BufferLoad(srv,index,wot)
  %790 = extractvalue %dx.types.ResRet.i32 %789, 0
  %791 = shl i32 %790, 4
  %792 = and i32 %791, 32752
  %793 = call float @dx.op.legacyF16ToF32(i32 131, i32 %792)  ; LegacyF16ToF32(value)
  %794 = lshr i32 %790, 7
  %795 = and i32 %794, 32752
  %796 = call float @dx.op.legacyF16ToF32(i32 131, i32 %795)  ; LegacyF16ToF32(value)
  %797 = lshr i32 %790, 22
  %798 = shl nuw nsw i32 %797, 5
  %799 = call float @dx.op.legacyF16ToF32(i32 131, i32 %798)  ; LegacyF16ToF32(value)
  %800 = fmul fast float %793, %786
  %801 = fmul fast float %796, %787
  %802 = fmul fast float %799, %788
  %803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %804 = extractvalue %dx.types.CBufRet.f32 %803, 0
  %805 = fmul fast float %800, %804
  %806 = fmul fast float %801, %804
  %807 = fmul fast float %802, %804
  %808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %773, i32 undef)  ; BufferLoad(srv,index,wot)
  %809 = extractvalue %dx.types.ResRet.i32 %808, 0
  %810 = lshr i32 %809, 22
  %811 = shl nuw nsw i32 %810, 5
  %812 = call float @dx.op.legacyF16ToF32(i32 131, i32 %811)  ; LegacyF16ToF32(value)
  %813 = fmul fast float %812, %805
  %814 = select i1 %114, float %813, float %805
  %815 = fsub fast float %814, %780
  %816 = fsub fast float %806, %771
  %817 = fsub fast float %807, %772
  %818 = fmul fast float %815, %41
  %819 = fmul fast float %816, %41
  %820 = fmul fast float %817, %41
  %821 = fadd fast float %818, %780
  %822 = fadd fast float %819, %771
  %823 = fadd fast float %820, %772
  %824 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %19, float %33, float %34, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %825 = extractvalue %dx.types.ResRet.f32 %824, 0
  %826 = extractvalue %dx.types.ResRet.f32 %824, 1
  %827 = extractvalue %dx.types.ResRet.f32 %824, 2
  %828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %829 = extractvalue %dx.types.CBufRet.f32 %828, 1
  %830 = fmul fast float %829, %825
  %831 = fmul fast float %829, %826
  %832 = fmul fast float %829, %827
  %833 = fadd fast float %740, %672
  %834 = fmul fast float %833, 0x3F70101000000000
  %835 = fadd fast float %834, 0xBFB99999A0000000
  %836 = call float @dx.op.unary.f32(i32 7, float %835)  ; Saturate(value)
  %837 = fmul fast float %836, 0x3FF1C71C80000000
  %838 = fsub fast float 1.000000e+00, %837
  %839 = call float @dx.op.unary.f32(i32 7, float %838)  ; Saturate(value)
  %840 = fmul fast float %741, %839
  %841 = fmul fast float %742, %839
  %842 = fmul fast float %743, %839
  %843 = call float @dx.op.unary.f32(i32 7, float %840)  ; Saturate(value)
  %844 = call float @dx.op.unary.f32(i32 7, float %841)  ; Saturate(value)
  %845 = call float @dx.op.unary.f32(i32 7, float %842)  ; Saturate(value)
  %846 = fmul fast float %821, %650
  %847 = fmul fast float %822, %651
  %848 = fmul fast float %823, %652
  %849 = call float @dx.op.dot3.f32(i32 55, float %846, float %847, float %848, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %850 = select i1 %114, float 0.000000e+00, float %846
  %851 = select i1 %114, float %849, float %847
  %852 = select i1 %114, float 0.000000e+00, float %848
  %853 = fmul fast float %565, %821
  %854 = fmul fast float %566, %822
  %855 = fmul fast float %567, %823
  %856 = call float @dx.op.dot3.f32(i32 55, float %843, float %844, float %845, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %857 = add i32 %24, 32
  %858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %857, i32 undef)  ; BufferLoad(srv,index,wot)
  %859 = extractvalue %dx.types.ResRet.i32 %858, 0
  %860 = and i32 %859, 255
  %861 = uitofp i32 %860 to float
  %862 = lshr i32 %859, 8
  %863 = and i32 %862, 255
  %864 = uitofp i32 %863 to float
  %865 = fmul fast float %864, %856
  %866 = fadd fast float %865, %861
  %867 = fmul fast float %866, 0x3F70101020000000
  %868 = call float @dx.op.unary.f32(i32 7, float %867)  ; Saturate(value)
  %869 = and i32 %134, 8192
  %870 = icmp eq i32 %869, 0
  %871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %872 = extractvalue %dx.types.CBufRet.f32 %871, 0
  br i1 %870, label %879, label %873, !dx.controlflow.hints !69

; <label>:873                                     ; preds = %644
  %874 = add i32 %131, 176
  %875 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %874, i32 undef)  ; BufferLoad(srv,index,wot)
  %876 = extractvalue %dx.types.ResRet.f32 %875, 0
  %877 = fcmp fast oge float %876, 0.000000e+00
  %878 = select i1 %877, float %876, float %872
  br label %886

; <label>:879                                     ; preds = %644
  %880 = add i32 %24, 104
  %881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %880, i32 undef)  ; BufferLoad(srv,index,wot)
  %882 = extractvalue %dx.types.ResRet.i32 %881, 0
  %883 = bitcast i32 %882 to float
  %884 = fcmp fast oge float %883, 0.000000e+00
  %885 = select i1 %884, float %883, float %872
  br label %886

; <label>:886                                     ; preds = %879, %873
  %887 = phi float [ %878, %873 ], [ %885, %879 ]
  %888 = fmul fast float %649, %648
  %889 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %237, i32 %238, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %890 = extractvalue %dx.types.ResRet.i32 %889, 0
  %891 = lshr i32 %890, 18
  %892 = uitofp i32 %891 to float
  %893 = fmul fast float %892, 0x3F4C00EBA0000000
  %894 = call float @dx.op.unary.f32(i32 21, float %893)  ; Exp(value)
  %895 = fadd fast float %894, -1.000000e+00
  %896 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %10, i32 0)  ; GetDimensions(handle,mipLevel)
  %897 = extractvalue %dx.types.Dimensions %896, 0
  %898 = sitofp i32 %897 to float
  %899 = extractvalue %dx.types.Dimensions %896, 1
  %900 = sitofp i32 %899 to float
  %901 = fcmp fast oge float %235, %898
  %902 = fcmp fast oge float %236, %900
  %903 = or i1 %901, %902
  %904 = select i1 %903, float 0x4197782600000000, float %895
  %905 = icmp eq i32 %130, 3
  %906 = fcmp fast ogt float %51, %904
  %907 = and i1 %261, %906
  %908 = or i1 %905, %907
  %909 = icmp eq i32 %130, 2
  %910 = fcmp fast ole float %51, %904
  %911 = and i1 %909, %910
  %912 = or i1 %911, %908
  %913 = fmul fast float %853, %830
  %914 = fmul fast float %854, %831
  %915 = fmul fast float %855, %832
  %916 = fadd fast float %913, %850
  %917 = fadd fast float %851, %914
  %918 = fadd fast float %915, %852
  %919 = fmul fast float %916, %648
  %920 = fmul fast float %917, %648
  %921 = fmul fast float %918, %648
  %922 = fmul fast float %830, %648
  %923 = fmul fast float %831, %648
  %924 = fmul fast float %832, %648
  %925 = fsub fast float 1.000000e+00, %648
  %926 = call float @dx.op.dot3.f32(i32 55, float %925, float %925, float %925, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %927 = fsub fast float 1.000000e+00, %926
  %928 = fmul fast float %887, %868
  %929 = fsub fast float 1.000000e+00, %888
  %930 = fsub fast float %929, %868
  %931 = call float @dx.op.unary.f32(i32 7, float %930)  ; Saturate(value)
  %932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %933 = extractvalue %dx.types.CBufRet.f32 %932, 3
  %934 = fmul fast float %933, %931
  %935 = fadd fast float %934, %928
  %936 = and i32 %134, 1048576
  %937 = icmp eq i32 %936, 0
  br i1 %937, label %1029, label %938, !dx.controlflow.hints !70

; <label>:938                                     ; preds = %886
  %939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %940 = extractvalue %dx.types.CBufRet.f32 %939, 2
  %941 = extractvalue %dx.types.CBufRet.f32 %939, 3
  %942 = fmul fast float %940, %56
  %943 = fmul fast float %941, %57
  %944 = call float @dx.op.unary.f32(i32 7, float %942)  ; Saturate(value)
  %945 = call float @dx.op.unary.f32(i32 7, float %943)  ; Saturate(value)
  %946 = select i1 %912, i32 2, i32 0
  %947 = or i32 %946, 1
  %948 = uitofp i32 %947 to float
  %949 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %944, float %945, float %948, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %950 = extractvalue %dx.types.ResRet.f32 %949, 0
  %951 = extractvalue %dx.types.ResRet.f32 %949, 1
  %952 = extractvalue %dx.types.ResRet.f32 %949, 2
  %953 = extractvalue %dx.types.ResRet.f32 %949, 3
  %954 = add nuw nsw i32 %946, 2
  %955 = uitofp i32 %954 to float
  %956 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %944, float %945, float %955, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %957 = extractvalue %dx.types.ResRet.f32 %956, 0
  %958 = extractvalue %dx.types.ResRet.f32 %956, 1
  %959 = extractvalue %dx.types.ResRet.f32 %956, 2
  %960 = extractvalue %dx.types.ResRet.f32 %956, 3
  %961 = call float @dx.op.binary.f32(i32 35, float %951, float %952)  ; FMax(a,b)
  %962 = call float @dx.op.binary.f32(i32 35, float %950, float %961)  ; FMax(a,b)
  %963 = call float @dx.op.binary.f32(i32 35, float %962, float %953)  ; FMax(a,b)
  %964 = call float @dx.op.binary.f32(i32 36, float %958, float %959)  ; FMin(a,b)
  %965 = call float @dx.op.binary.f32(i32 36, float %957, float %964)  ; FMin(a,b)
  %966 = call float @dx.op.binary.f32(i32 36, float %965, float %960)  ; FMin(a,b)
  %967 = fmul fast float %963, 2.550000e+02
  %968 = fadd fast float %967, 0x3F70101020000000
  %969 = fptoui float %968 to i32
  %970 = fmul fast float %966, 2.550000e+02
  %971 = fadd fast float %970, 0x3F70101020000000
  %972 = fptoui float %971 to i32
  %973 = icmp ult i32 %969, %972
  br i1 %973, label %974, label %1022

; <label>:974                                     ; preds = %938
  %975 = fcmp fast ogt float %50, 9.843750e-01
  %976 = fadd fast float %51, -4.000000e+00
  %977 = select i1 %975, float -4.000000e+00, float %976
  %978 = call float @dx.op.binary.f32(i32 35, float %977, float 0.000000e+00)  ; FMax(a,b)
  %979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %980 = extractvalue %dx.types.CBufRet.f32 %979, 0
  %981 = fadd fast float %980, %978
  %982 = extractvalue %dx.types.CBufRet.f32 %979, 2
  %983 = fmul fast float %981, %982
  %984 = call float @dx.op.unary.f32(i32 23, float %983)  ; Log(value)
  %985 = extractvalue %dx.types.CBufRet.f32 %979, 3
  %986 = fmul fast float %985, %984
  %987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %988 = extractvalue %dx.types.CBufRet.f32 %987, 2
  %989 = fmul fast float %986, %988
  %990 = call float @dx.op.unary.f32(i32 7, float %989)  ; Saturate(value)
  %991 = uitofp i32 %969 to float
  %992 = uitofp i32 %972 to float
  %993 = fadd fast float %991, 5.000000e-01
  %994 = fadd fast float %992, 5.000000e-01
  %995 = fmul fast float %988, %993
  %996 = fmul fast float %988, %994
  %997 = fadd fast float %995, 0x3F0FFB4800000000
  %998 = fadd fast float %996, 0xBF0FFB4800000000
  %999 = call float @dx.op.binary.f32(i32 35, float %990, float %997)  ; FMax(a,b)
  %1000 = call float @dx.op.binary.f32(i32 36, float %999, float %998)  ; FMin(a,b)
  %1001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1002 = extractvalue %dx.types.CBufRet.f32 %1001, 1
  %1003 = extractvalue %dx.types.CBufRet.f32 %1001, 2
  %1004 = extractvalue %dx.types.CBufRet.f32 %1001, 0
  %1005 = select i1 %912, float %1004, float 0.000000e+00
  %1006 = fmul fast float %1002, %1000
  %1007 = fadd fast float %1005, %1006
  %1008 = fadd fast float %1005, %1003
  %1009 = fsub fast float %1002, %1003
  %1010 = fadd fast float %1009, %1005
  %1011 = call float @dx.op.binary.f32(i32 35, float %1007, float %1008)  ; FMax(a,b)
  %1012 = call float @dx.op.binary.f32(i32 36, float %1011, float %1010)  ; FMin(a,b)
  %1013 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %18, float %944, float %945, float %1012, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1014 = extractvalue %dx.types.ResRet.f32 %1013, 0
  %1015 = extractvalue %dx.types.ResRet.f32 %1013, 1
  %1016 = extractvalue %dx.types.ResRet.f32 %1013, 2
  %1017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1018 = extractvalue %dx.types.CBufRet.f32 %1017, 1
  %1019 = fmul fast float %1018, %1014
  %1020 = fmul fast float %1018, %1015
  %1021 = fmul fast float %1018, %1016
  br label %1022

; <label>:1022                                    ; preds = %974, %938
  %1023 = phi float [ %1019, %974 ], [ 1.000000e+00, %938 ]
  %1024 = phi float [ %1020, %974 ], [ 1.000000e+00, %938 ]
  %1025 = phi float [ %1021, %974 ], [ 1.000000e+00, %938 ]
  %1026 = fmul fast float %1023, %919
  %1027 = fmul fast float %1024, %920
  %1028 = fmul fast float %1025, %921
  br label %1029

; <label>:1029                                    ; preds = %1022, %886
  %1030 = phi float [ %1026, %1022 ], [ %919, %886 ]
  %1031 = phi float [ %1027, %1022 ], [ %920, %886 ]
  %1032 = phi float [ %1028, %1022 ], [ %921, %886 ]
  %1033 = and i32 %134, 2097152
  %1034 = icmp eq i32 %1033, 0
  br i1 %1034, label %1039, label %1035, !dx.controlflow.hints !71

; <label>:1035                                    ; preds = %1029
  %1036 = add i32 %131, 192
  %1037 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %1036, i32 undef)  ; BufferLoad(srv,index,wot)
  %1038 = extractvalue %dx.types.ResRet.f32 %1037, 0
  br label %1042

; <label>:1039                                    ; preds = %1029
  %1040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1041 = extractvalue %dx.types.CBufRet.f32 %1040, 3
  br label %1042

; <label>:1042                                    ; preds = %1039, %1035
  %1043 = phi float [ %1038, %1035 ], [ %1041, %1039 ]
  %1044 = fmul fast float %922, %843
  %1045 = fmul fast float %923, %844
  %1046 = fmul fast float %924, %845
  br i1 %907, label %1047, label %1156

; <label>:1047                                    ; preds = %1042
  %1048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1049 = extractvalue %dx.types.CBufRet.f32 %1048, 2
  %1050 = extractvalue %dx.types.CBufRet.f32 %1048, 3
  %1051 = fmul fast float %1049, %56
  %1052 = fmul fast float %1050, %57
  %1053 = call float @dx.op.unary.f32(i32 7, float %1051)  ; Saturate(value)
  %1054 = call float @dx.op.unary.f32(i32 7, float %1052)  ; Saturate(value)
  %1055 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %1053, float %1054, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1056 = extractvalue %dx.types.ResRet.f32 %1055, 0
  %1057 = extractvalue %dx.types.ResRet.f32 %1055, 1
  %1058 = extractvalue %dx.types.ResRet.f32 %1055, 2
  %1059 = extractvalue %dx.types.ResRet.f32 %1055, 3
  %1060 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %1053, float %1054, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1061 = extractvalue %dx.types.ResRet.f32 %1060, 0
  %1062 = extractvalue %dx.types.ResRet.f32 %1060, 1
  %1063 = extractvalue %dx.types.ResRet.f32 %1060, 2
  %1064 = extractvalue %dx.types.ResRet.f32 %1060, 3
  %1065 = call float @dx.op.binary.f32(i32 35, float %1057, float %1058)  ; FMax(a,b)
  %1066 = call float @dx.op.binary.f32(i32 35, float %1056, float %1065)  ; FMax(a,b)
  %1067 = call float @dx.op.binary.f32(i32 35, float %1066, float %1059)  ; FMax(a,b)
  %1068 = call float @dx.op.binary.f32(i32 36, float %1062, float %1063)  ; FMin(a,b)
  %1069 = call float @dx.op.binary.f32(i32 36, float %1061, float %1068)  ; FMin(a,b)
  %1070 = call float @dx.op.binary.f32(i32 36, float %1069, float %1064)  ; FMin(a,b)
  %1071 = fmul fast float %1067, 2.550000e+02
  %1072 = fadd fast float %1071, 0x3F70101020000000
  %1073 = fptoui float %1072 to i32
  %1074 = fmul fast float %1070, 2.550000e+02
  %1075 = fadd fast float %1074, 0x3F70101020000000
  %1076 = fptoui float %1075 to i32
  %1077 = icmp ult i32 %1073, %1076
  br i1 %1077, label %1078, label %1129

; <label>:1078                                    ; preds = %1047
  %1079 = fcmp fast ogt float %50, 9.843750e-01
  %1080 = fadd fast float %51, -4.000000e+00
  %1081 = select i1 %1079, float -4.000000e+00, float %1080
  %1082 = call float @dx.op.binary.f32(i32 35, float %1081, float 0.000000e+00)  ; FMax(a,b)
  %1083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1084 = extractvalue %dx.types.CBufRet.f32 %1083, 0
  %1085 = fadd fast float %1084, %1082
  %1086 = extractvalue %dx.types.CBufRet.f32 %1083, 2
  %1087 = fmul fast float %1085, %1086
  %1088 = call float @dx.op.unary.f32(i32 23, float %1087)  ; Log(value)
  %1089 = extractvalue %dx.types.CBufRet.f32 %1083, 3
  %1090 = fmul fast float %1089, %1088
  %1091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1092 = extractvalue %dx.types.CBufRet.f32 %1091, 2
  %1093 = fmul fast float %1090, %1092
  %1094 = call float @dx.op.unary.f32(i32 7, float %1093)  ; Saturate(value)
  %1095 = uitofp i32 %1073 to float
  %1096 = uitofp i32 %1076 to float
  %1097 = fadd fast float %1095, 5.000000e-01
  %1098 = fadd fast float %1096, 5.000000e-01
  %1099 = fmul fast float %1092, %1097
  %1100 = fmul fast float %1092, %1098
  %1101 = fadd fast float %1099, 0x3F0FFB4800000000
  %1102 = fadd fast float %1100, 0xBF0FFB4800000000
  %1103 = call float @dx.op.binary.f32(i32 35, float %1094, float %1101)  ; FMax(a,b)
  %1104 = call float @dx.op.binary.f32(i32 36, float %1103, float %1102)  ; FMin(a,b)
  %1105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1106 = extractvalue %dx.types.CBufRet.f32 %1105, 1
  %1107 = extractvalue %dx.types.CBufRet.f32 %1105, 2
  %1108 = extractvalue %dx.types.CBufRet.f32 %1105, 0
  %1109 = fmul fast float %1106, %1104
  %1110 = fadd fast float %1108, %1109
  %1111 = fadd fast float %1108, %1107
  %1112 = fsub fast float %1106, %1107
  %1113 = fadd fast float %1112, %1108
  %1114 = call float @dx.op.binary.f32(i32 35, float %1110, float %1111)  ; FMax(a,b)
  %1115 = call float @dx.op.binary.f32(i32 36, float %1114, float %1113)  ; FMin(a,b)
  %1116 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %1053, float %1054, float %1115, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1117 = extractvalue %dx.types.ResRet.f32 %1116, 0
  %1118 = extractvalue %dx.types.ResRet.f32 %1116, 1
  %1119 = extractvalue %dx.types.ResRet.f32 %1116, 2
  %1120 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %1053, float %1054, float %1115, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1121 = extractvalue %dx.types.ResRet.f32 %1120, 0
  %1122 = extractvalue %dx.types.ResRet.f32 %1120, 1
  %1123 = extractvalue %dx.types.ResRet.f32 %1120, 2
  %1124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1125 = extractvalue %dx.types.CBufRet.f32 %1124, 1
  %1126 = fmul fast float %1125, %1121
  %1127 = fmul fast float %1125, %1122
  %1128 = fmul fast float %1125, %1123
  br label %1129

; <label>:1129                                    ; preds = %1078, %1047
  %1130 = phi float [ %1117, %1078 ], [ 1.000000e+00, %1047 ]
  %1131 = phi float [ %1118, %1078 ], [ 1.000000e+00, %1047 ]
  %1132 = phi float [ %1119, %1078 ], [ 1.000000e+00, %1047 ]
  %1133 = phi float [ %1126, %1078 ], [ 0.000000e+00, %1047 ]
  %1134 = phi float [ %1127, %1078 ], [ 0.000000e+00, %1047 ]
  %1135 = phi float [ %1128, %1078 ], [ 0.000000e+00, %1047 ]
  %1136 = fmul fast float %1133, %927
  %1137 = fmul fast float %1134, %927
  %1138 = fmul fast float %1135, %927
  %1139 = call float @dx.op.dot3.f32(i32 55, float %1130, float %1131, float %1132, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1140 = call float @dx.op.dot3.f32(i32 55, float %1136, float %1137, float %1138, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1141 = select i1 %114, float %1139, float %1130
  %1142 = select i1 %114, float %1139, float %1131
  %1143 = select i1 %114, float 1.000000e+00, float %1132
  %1144 = select i1 %114, float %1140, float %1136
  %1145 = select i1 %114, float 0.000000e+00, float %1137
  %1146 = select i1 %114, float 0.000000e+00, float %1138
  %1147 = fmul fast float %1141, %1044
  %1148 = fmul fast float %1142, %1045
  %1149 = fmul fast float %1143, %1046
  %1150 = fadd fast float %1147, %1144
  %1151 = fadd fast float %1148, %1145
  %1152 = fadd fast float %1146, %1149
  %1153 = fmul fast float %1141, %1030
  %1154 = fmul fast float %1142, %1031
  %1155 = fmul fast float %1143, %1032
  br label %1156

; <label>:1156                                    ; preds = %1129, %1042
  %1157 = phi float [ %904, %1129 ], [ %51, %1042 ]
  %1158 = phi float [ %1150, %1129 ], [ %1044, %1042 ]
  %1159 = phi float [ %1151, %1129 ], [ %1045, %1042 ]
  %1160 = phi float [ %1152, %1129 ], [ %1046, %1042 ]
  %1161 = phi float [ %1153, %1129 ], [ %1030, %1042 ]
  %1162 = phi float [ %1154, %1129 ], [ %1031, %1042 ]
  %1163 = phi float [ %1155, %1129 ], [ %1032, %1042 ]
  %1164 = phi float [ %1130, %1129 ], [ 1.000000e+00, %1042 ]
  br i1 %912, label %1466, label %1165

; <label>:1165                                    ; preds = %1156
  %1166 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %19, float %33, float %34, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1167 = extractvalue %dx.types.ResRet.f32 %1166, 0
  %1168 = extractvalue %dx.types.ResRet.f32 %1166, 1
  %1169 = extractvalue %dx.types.ResRet.f32 %1166, 2
  %1170 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %19, float %33, float %34, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1171 = extractvalue %dx.types.ResRet.f32 %1170, 0
  %1172 = extractvalue %dx.types.ResRet.f32 %1170, 1
  %1173 = extractvalue %dx.types.ResRet.f32 %1170, 2
  %1174 = fmul fast float %1167, %927
  %1175 = fmul fast float %1168, %927
  %1176 = fmul fast float %1169, %927
  %1177 = fmul fast float %1171, %1164
  %1178 = call float @dx.op.dot3.f32(i32 55, float %1171, float %1172, float %1173, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1179 = call float @dx.op.dot3.f32(i32 55, float %1174, float %1175, float %1176, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1180 = select i1 %114, float %1178, float %1171
  %1181 = select i1 %114, float %1178, float %1172
  %1182 = select i1 %114, float 1.000000e+00, float %1173
  %1183 = select i1 %114, float %1179, float %1174
  %1184 = select i1 %114, float 0.000000e+00, float %1175
  %1185 = select i1 %114, float 0.000000e+00, float %1176
  %1186 = fmul fast float %1180, %1158
  %1187 = fmul fast float %1181, %1159
  %1188 = fmul fast float %1182, %1160
  %1189 = fadd fast float %1186, %1183
  %1190 = fadd fast float %1187, %1184
  %1191 = fadd fast float %1188, %1185
  %1192 = fmul fast float %1180, %1161
  %1193 = fmul fast float %1181, %1162
  %1194 = fmul fast float %1182, %1163
  %1195 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1196 = extractvalue %dx.types.CBufRet.i32 %1195, 0
  %1197 = icmp eq i32 %1196, 0
  br i1 %1197, label %1466, label %1198, !dx.controlflow.hints !72

; <label>:1198                                    ; preds = %1165
  %1199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1200 = extractvalue %dx.types.CBufRet.f32 %1199, 2
  %1201 = extractvalue %dx.types.CBufRet.f32 %1199, 3
  %1202 = fmul fast float %1200, %56
  %1203 = fmul fast float %1201, %57
  %1204 = fmul fast float %1202, 2.000000e+00
  %1205 = fmul fast float %1203, 2.000000e+00
  %1206 = fsub fast float 1.000000e+00, %1204
  %1207 = fsub fast float 1.000000e+00, %1205
  %1208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1209 = extractvalue %dx.types.CBufRet.f32 %1208, 0
  %1210 = extractvalue %dx.types.CBufRet.f32 %1208, 1
  %1211 = extractvalue %dx.types.CBufRet.f32 %1208, 2
  %1212 = fmul fast float %1206, %1209
  %1213 = fmul fast float %1206, %1210
  %1214 = fmul fast float %1206, %1211
  %1215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1216 = extractvalue %dx.types.CBufRet.f32 %1215, 0
  %1217 = extractvalue %dx.types.CBufRet.f32 %1215, 1
  %1218 = extractvalue %dx.types.CBufRet.f32 %1215, 2
  %1219 = fmul fast float %1207, %1216
  %1220 = fmul fast float %1207, %1217
  %1221 = fmul fast float %1207, %1218
  %1222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1223 = extractvalue %dx.types.CBufRet.f32 %1222, 0
  %1224 = extractvalue %dx.types.CBufRet.f32 %1222, 1
  %1225 = extractvalue %dx.types.CBufRet.f32 %1222, 2
  %1226 = fadd fast float %1219, %1223
  %1227 = fadd fast float %1226, %1212
  %1228 = fadd fast float %1220, %1224
  %1229 = fadd fast float %1228, %1213
  %1230 = fadd fast float %1221, %1225
  %1231 = fadd fast float %1230, %1214
  %1232 = fmul fast float %1227, %1157
  %1233 = fmul fast float %1229, %1157
  %1234 = fmul fast float %1231, %1157
  %1235 = fmul fast float %1232, %1232
  %1236 = fmul fast float %1233, %1233
  %1237 = fadd fast float %1235, %1236
  %1238 = fmul fast float %1234, %1234
  %1239 = fadd fast float %1237, %1238
  %1240 = call float @dx.op.unary.f32(i32 24, float %1239)  ; Sqrt(value)
  %1241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1242 = extractvalue %dx.types.CBufRet.f32 %1241, 0
  %1243 = fsub fast float %1240, %1242
  %1244 = extractvalue %dx.types.CBufRet.f32 %1241, 2
  %1245 = fmul fast float %1243, %1244
  %1246 = call float @dx.op.unary.f32(i32 7, float %1245)  ; Saturate(value)
  %1247 = fadd fast float %1246, -5.000000e-01
  %1248 = fmul fast float %1247, 2.000000e+00
  %1249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1250 = extractvalue %dx.types.CBufRet.f32 %1249, 2
  %1251 = call float @dx.op.binary.f32(i32 36, float %1250, float %1248)  ; FMin(a,b)
  %1252 = fsub fast float -0.000000e+00, %1250
  %1253 = fcmp fast ogt float %1251, %1252
  br i1 %1253, label %1254, label %1466, !dx.controlflow.hints !73

; <label>:1254                                    ; preds = %1198
  %1255 = fmul fast float %1251, 5.000000e-01
  %1256 = fadd fast float %1255, 5.000000e-01
  %1257 = call float @dx.op.unary.f32(i32 22, float %1256)  ; Frc(value)
  %1258 = call float @dx.op.unary.f32(i32 27, float %1257)  ; Round_ni(value)
  %1259 = call float @dx.op.unary.f32(i32 22, float %1257)  ; Frc(value)
  %1260 = fmul fast float %1259, 2.000000e+00
  %1261 = fadd fast float %1260, -1.000000e+00
  %1262 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %19, float %1202, float %1203, float %1258, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1263 = extractvalue %dx.types.ResRet.f32 %1262, 0
  %1264 = extractvalue %dx.types.ResRet.f32 %1262, 1
  %1265 = extractvalue %dx.types.ResRet.f32 %1262, 2
  %1266 = extractvalue %dx.types.ResRet.f32 %1262, 3
  %1267 = fadd fast float %1263, -5.000000e-01
  %1268 = fadd fast float %1265, -5.000000e-01
  %1269 = fmul fast float %1267, 0xBFD5555560000000
  %1270 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1268, float %1269)  ; FMad(a,b,c)
  %1271 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1264, float 0.000000e+00)  ; FMad(a,b,c)
  %1272 = fadd fast float %1271, %1266
  %1273 = fmul fast float %1267, -7.500000e-01
  %1274 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1268, float %1273)  ; FMad(a,b,c)
  %1275 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1264, float 0.000000e+00)  ; FMad(a,b,c)
  %1276 = fadd fast float %1275, %1266
  %1277 = call float @dx.op.binary.f32(i32 35, float %1270, float -1.000000e+00)  ; FMax(a,b)
  %1278 = call float @dx.op.binary.f32(i32 35, float %1272, float -1.000000e+00)  ; FMax(a,b)
  %1279 = call float @dx.op.binary.f32(i32 35, float %1274, float -1.000000e+00)  ; FMax(a,b)
  %1280 = call float @dx.op.binary.f32(i32 35, float %1276, float -1.000000e+00)  ; FMax(a,b)
  %1281 = call float @dx.op.binary.f32(i32 36, float %1277, float 1.000000e+00)  ; FMin(a,b)
  %1282 = call float @dx.op.binary.f32(i32 36, float %1278, float 1.000000e+00)  ; FMin(a,b)
  %1283 = call float @dx.op.binary.f32(i32 36, float %1279, float 1.000000e+00)  ; FMin(a,b)
  %1284 = call float @dx.op.binary.f32(i32 36, float %1280, float 1.000000e+00)  ; FMin(a,b)
  %1285 = fcmp fast olt float %1281, 0x3FEFFF8020000000
  br i1 %1285, label %1286, label %1401, !dx.controlflow.hints !74

; <label>:1286                                    ; preds = %1254
  %1287 = extractvalue %dx.types.CBufRet.f32 %1249, 3
  %1288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1289 = extractvalue %dx.types.CBufRet.f32 %1288, 0
  %1290 = extractvalue %dx.types.CBufRet.f32 %1288, 1
  %1291 = extractvalue %dx.types.CBufRet.f32 %1288, 2
  %1292 = extractvalue %dx.types.CBufRet.f32 %1288, 3
  %1293 = fsub fast float %1289, %1281
  %1294 = fsub fast float %1290, %1282
  %1295 = fsub fast float %1291, %1283
  %1296 = fsub fast float %1292, %1284
  %1297 = fmul fast float %1293, %1287
  %1298 = fmul fast float %1294, %1287
  %1299 = fmul fast float %1295, %1287
  %1300 = fmul fast float %1296, %1287
  %1301 = fadd fast float %1297, %1281
  %1302 = fadd fast float %1298, %1282
  %1303 = fsub fast float -0.000000e+00, %1302
  %1304 = fadd fast float %1299, %1283
  %1305 = fadd fast float %1300, %1284
  %1306 = fmul fast float %1301, %1301
  %1307 = fsub fast float %1302, %1306
  %1308 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1307)  ; FMax(a,b)
  %1309 = fdiv fast float 1.000000e+00, %1308
  %1310 = fmul fast float %1302, %1301
  %1311 = fsub fast float %1304, %1310
  %1312 = fsub fast float %1261, %1301
  %1313 = fmul fast float %1261, %1261
  %1314 = fsub fast float %1313, %1302
  %1315 = fmul fast float %1312, %1309
  %1316 = fmul fast float %1315, %1311
  %1317 = fsub fast float %1314, %1316
  %1318 = fmul fast float %1302, %1302
  %1319 = fsub fast float %1305, %1318
  %1320 = fmul fast float %1311, %1311
  %1321 = fmul fast float %1320, %1309
  %1322 = fsub fast float %1319, %1321
  %1323 = fdiv fast float %1317, %1322
  %1324 = fmul fast float %1311, %1323
  %1325 = fsub fast float %1312, %1324
  %1326 = fmul fast float %1325, %1309
  %1327 = fmul fast float %1326, %1301
  %1328 = fsub fast float 1.000000e+00, %1327
  %1329 = fmul fast float %1302, %1323
  %1330 = fsub fast float %1328, %1329
  %1331 = fmul fast float %1326, %1326
  %1332 = fmul fast float %1323, 4.000000e+00
  %1333 = fmul fast float %1332, %1330
  %1334 = fsub fast float %1331, %1333
  %1335 = call float @dx.op.unary.f32(i32 24, float %1334)  ; Sqrt(value)
  %1336 = fcmp fast oge float %1326, 0.000000e+00
  %1337 = fsub fast float -0.000000e+00, %1335
  %1338 = select i1 %1336, float %1337, float %1335
  %1339 = fsub fast float %1338, %1326
  %1340 = fdiv fast float %1339, %1323
  %1341 = fdiv fast float %1330, %1339
  %1342 = fmul fast float %1340, 5.000000e-01
  %1343 = fmul fast float %1341, 2.000000e+00
  %1344 = select i1 %1336, float %1342, float %1343
  %1345 = select i1 %1336, float %1343, float %1342
  %1346 = call float @dx.op.binary.f32(i32 35, float %1344, float %1345)  ; FMax(a,b)
  %1347 = call float @dx.op.binary.f32(i32 36, float %1344, float %1345)  ; FMin(a,b)
  %1348 = fcmp fast ogt float %1261, %1347
  br i1 %1348, label %1349, label %1359

; <label>:1349                                    ; preds = %1286
  %1350 = fsub fast float %1261, %1347
  %1351 = fsub fast float %1346, %1347
  %1352 = fmul fast float %1350, %1351
  %1353 = fmul fast float %1346, %1261
  %1354 = fadd fast float %1346, %1261
  %1355 = fmul fast float %1354, %1301
  %1356 = fadd fast float %1353, %1302
  %1357 = fsub fast float %1356, %1355
  %1358 = fdiv fast float %1357, %1352
  br label %1359

; <label>:1359                                    ; preds = %1349, %1286
  %1360 = phi float [ %1358, %1349 ], [ 0.000000e+00, %1286 ]
  %1361 = fcmp fast ogt float %1261, %1346
  %1362 = fsub fast float %1261, %1346
  br i1 %1361, label %1363, label %1373

; <label>:1363                                    ; preds = %1359
  %1364 = fsub fast float %1346, %1347
  %1365 = fmul fast float %1364, %1362
  %1366 = fmul fast float %1347, %1261
  %1367 = fadd fast float %1347, %1261
  %1368 = fmul fast float %1367, %1301
  %1369 = fsub fast float %1303, %1366
  %1370 = fadd fast float %1369, %1368
  %1371 = fdiv fast float %1370, %1365
  %1372 = fadd fast float %1371, %1360
  br label %1373

; <label>:1373                                    ; preds = %1363, %1359
  %1374 = phi float [ %1372, %1363 ], [ %1360, %1359 ]
  %1375 = fsub fast float %1261, %1347
  %1376 = fmul fast float %1375, %1362
  %1377 = fmul fast float %1347, %1346
  %1378 = fadd fast float %1347, %1346
  %1379 = fmul fast float %1378, %1301
  %1380 = fadd fast float %1377, %1302
  %1381 = fsub fast float %1380, %1379
  %1382 = fdiv fast float %1381, %1376
  %1383 = call float @dx.op.unary.f32(i32 7, float %1374)  ; Saturate(value)
  %1384 = fcmp fast oeq float %1043, 0.000000e+00
  %1385 = extractvalue %dx.types.CBufRet.f32 %1249, 0
  %1386 = fcmp fast oeq float %1385, 0.000000e+00
  %1387 = or i1 %1384, %1386
  %1388 = fmul fast float %1385, 2.000000e+00
  %1389 = fadd fast float %1250, %1251
  %1390 = fdiv fast float %1389, %1388
  %1391 = call float @dx.op.unary.f32(i32 7, float %1390)  ; Saturate(value)
  %1392 = fmul fast float %1391, 2.000000e+00
  %1393 = fsub fast float 3.000000e+00, %1392
  %1394 = fmul fast float %1391, %1391
  %1395 = fmul fast float %1394, %1393
  %1396 = select i1 %1387, float 1.000000e+00, float %1395
  %1397 = fmul fast float %1382, %1043
  %1398 = fadd fast float %1383, %1397
  %1399 = call float @dx.op.unary.f32(i32 7, float %1398)  ; Saturate(value)
  %1400 = fmul fast float %1396, %1399
  br label %1401

; <label>:1401                                    ; preds = %1373, %1254
  %1402 = phi float [ %1400, %1373 ], [ 0.000000e+00, %1254 ]
  %1403 = fsub fast float 1.000000e+00, %1402
  %1404 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %19, float %1202, float %1203, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1405 = extractvalue %dx.types.ResRet.f32 %1404, 0
  %1406 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1407 = extractvalue %dx.types.CBufRet.i32 %1406, 2
  %1408 = icmp eq i32 %1407, 0
  br i1 %1408, label %1414, label %1409

; <label>:1409                                    ; preds = %1401
  %1410 = call float @dx.op.unary.f32(i32 7, float %1402)  ; Saturate(value)
  %1411 = fadd fast float %1405, -1.000000e+00
  %1412 = fmul fast float %1410, %1411
  %1413 = fadd fast float %1412, 1.000000e+00
  br label %1414

; <label>:1414                                    ; preds = %1409, %1401
  %1415 = phi float [ %1413, %1409 ], [ %1403, %1401 ]
  %1416 = call float @dx.op.binary.f32(i32 35, float %1405, float %1415)  ; FMax(a,b)
  %1417 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %1418 = extractvalue %dx.types.CBufRet.i32 %1417, 2
  %1419 = and i32 %1418, 1
  %1420 = icmp eq i32 %1419, 0
  %1421 = fcmp fast une float %1416, 1.000000e+00
  %1422 = and i1 %1421, %1420
  br i1 %1422, label %1423, label %1442

; <label>:1423                                    ; preds = %1414
  %1424 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %19, float %1202, float %1203, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1425 = extractvalue %dx.types.ResRet.f32 %1424, 0
  %1426 = extractvalue %dx.types.ResRet.f32 %1424, 1
  %1427 = extractvalue %dx.types.ResRet.f32 %1424, 2
  %1428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1429 = extractvalue %dx.types.CBufRet.f32 %1428, 1
  %1430 = fmul fast float %1429, %1425
  %1431 = fmul fast float %1429, %1426
  %1432 = fmul fast float %1429, %1427
  %1433 = fcmp fast ogt float %1405, 0x3FEFFF2E40000000
  %1434 = fsub fast float 1.000000e+00, %1416
  %1435 = fsub fast float 1.000000e+00, %1405
  %1436 = fdiv fast float %1434, %1435
  %1437 = call float @dx.op.unary.f32(i32 7, float %1436)  ; Saturate(value)
  %1438 = select i1 %1433, float 0.000000e+00, float %1437
  %1439 = fmul fast float %1430, %1438
  %1440 = fmul fast float %1431, %1438
  %1441 = fmul fast float %1432, %1438
  br label %1442

; <label>:1442                                    ; preds = %1423, %1414
  %1443 = phi float [ 0.000000e+00, %1414 ], [ %1439, %1423 ]
  %1444 = phi float [ 0.000000e+00, %1414 ], [ %1440, %1423 ]
  %1445 = phi float [ 0.000000e+00, %1414 ], [ %1441, %1423 ]
  %1446 = fmul fast float %1443, %927
  %1447 = fmul fast float %1444, %927
  %1448 = fmul fast float %1445, %927
  %1449 = fmul fast float %1416, %1177
  %1450 = call float @dx.op.dot3.f32(i32 55, float %1416, float %1416, float %1416, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1451 = call float @dx.op.dot3.f32(i32 55, float %1446, float %1447, float %1448, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1452 = select i1 %114, float %1450, float %1416
  %1453 = select i1 %114, float 1.000000e+00, float %1416
  %1454 = select i1 %114, float %1451, float %1446
  %1455 = select i1 %114, float 0.000000e+00, float %1447
  %1456 = select i1 %114, float 0.000000e+00, float %1448
  %1457 = fmul fast float %1452, %1189
  %1458 = fmul fast float %1452, %1190
  %1459 = fmul fast float %1453, %1191
  %1460 = fadd fast float %1457, %1454
  %1461 = fadd fast float %1458, %1455
  %1462 = fadd fast float %1456, %1459
  %1463 = fmul fast float %1452, %1192
  %1464 = fmul fast float %1452, %1193
  %1465 = fmul fast float %1453, %1194
  br label %1466

; <label>:1466                                    ; preds = %1442, %1198, %1165, %1156
  %1467 = phi float [ %1158, %1156 ], [ %1189, %1165 ], [ %1460, %1442 ], [ %1189, %1198 ]
  %1468 = phi float [ %1159, %1156 ], [ %1190, %1165 ], [ %1461, %1442 ], [ %1190, %1198 ]
  %1469 = phi float [ %1160, %1156 ], [ %1191, %1165 ], [ %1462, %1442 ], [ %1191, %1198 ]
  %1470 = phi float [ %1161, %1156 ], [ %1192, %1165 ], [ %1463, %1442 ], [ %1192, %1198 ]
  %1471 = phi float [ %1162, %1156 ], [ %1193, %1165 ], [ %1464, %1442 ], [ %1193, %1198 ]
  %1472 = phi float [ %1163, %1156 ], [ %1194, %1165 ], [ %1465, %1442 ], [ %1194, %1198 ]
  %1473 = phi float [ %1164, %1156 ], [ %1177, %1165 ], [ %1449, %1442 ], [ %1177, %1198 ]
  %1474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1475 = extractvalue %dx.types.CBufRet.f32 %1474, 2
  %1476 = extractvalue %dx.types.CBufRet.f32 %1474, 3
  %1477 = fmul fast float %1475, %56
  %1478 = fmul fast float %1476, %57
  %1479 = call float @dx.op.unary.f32(i32 7, float %1477)  ; Saturate(value)
  %1480 = call float @dx.op.unary.f32(i32 7, float %1478)  ; Saturate(value)
  %1481 = select i1 %912, i32 2, i32 0
  %1482 = or i32 %1481, 1
  %1483 = uitofp i32 %1482 to float
  %1484 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %1479, float %1480, float %1483, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1485 = extractvalue %dx.types.ResRet.f32 %1484, 0
  %1486 = extractvalue %dx.types.ResRet.f32 %1484, 1
  %1487 = extractvalue %dx.types.ResRet.f32 %1484, 2
  %1488 = extractvalue %dx.types.ResRet.f32 %1484, 3
  %1489 = add nuw nsw i32 %1481, 2
  %1490 = uitofp i32 %1489 to float
  %1491 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %1479, float %1480, float %1490, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1492 = extractvalue %dx.types.ResRet.f32 %1491, 0
  %1493 = extractvalue %dx.types.ResRet.f32 %1491, 1
  %1494 = extractvalue %dx.types.ResRet.f32 %1491, 2
  %1495 = extractvalue %dx.types.ResRet.f32 %1491, 3
  %1496 = call float @dx.op.binary.f32(i32 35, float %1486, float %1487)  ; FMax(a,b)
  %1497 = call float @dx.op.binary.f32(i32 35, float %1485, float %1496)  ; FMax(a,b)
  %1498 = call float @dx.op.binary.f32(i32 35, float %1497, float %1488)  ; FMax(a,b)
  %1499 = call float @dx.op.binary.f32(i32 36, float %1493, float %1494)  ; FMin(a,b)
  %1500 = call float @dx.op.binary.f32(i32 36, float %1492, float %1499)  ; FMin(a,b)
  %1501 = call float @dx.op.binary.f32(i32 36, float %1500, float %1495)  ; FMin(a,b)
  %1502 = fmul fast float %1498, 2.550000e+02
  %1503 = fadd fast float %1502, 0x3F70101020000000
  %1504 = fptoui float %1503 to i32
  %1505 = fmul fast float %1501, 2.550000e+02
  %1506 = fadd fast float %1505, 0x3F70101020000000
  %1507 = fptoui float %1506 to i32
  %1508 = icmp ult i32 %1504, %1507
  br i1 %1508, label %1509, label %1561

; <label>:1509                                    ; preds = %1466
  %1510 = fcmp fast ogt float %50, 9.843750e-01
  %1511 = fadd fast float %1157, -4.000000e+00
  %1512 = select i1 %1510, float -4.000000e+00, float %1511
  %1513 = call float @dx.op.binary.f32(i32 35, float %1512, float 0.000000e+00)  ; FMax(a,b)
  %1514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1515 = extractvalue %dx.types.CBufRet.f32 %1514, 0
  %1516 = fadd fast float %1515, %1513
  %1517 = extractvalue %dx.types.CBufRet.f32 %1514, 2
  %1518 = fmul fast float %1516, %1517
  %1519 = call float @dx.op.unary.f32(i32 23, float %1518)  ; Log(value)
  %1520 = extractvalue %dx.types.CBufRet.f32 %1514, 3
  %1521 = fmul fast float %1520, %1519
  %1522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1523 = extractvalue %dx.types.CBufRet.f32 %1522, 2
  %1524 = fmul fast float %1521, %1523
  %1525 = call float @dx.op.unary.f32(i32 7, float %1524)  ; Saturate(value)
  %1526 = uitofp i32 %1504 to float
  %1527 = uitofp i32 %1507 to float
  %1528 = fadd fast float %1526, 5.000000e-01
  %1529 = fadd fast float %1527, 5.000000e-01
  %1530 = fmul fast float %1523, %1528
  %1531 = fmul fast float %1523, %1529
  %1532 = fadd fast float %1530, 0x3F0FFB4800000000
  %1533 = fadd fast float %1531, 0xBF0FFB4800000000
  %1534 = call float @dx.op.binary.f32(i32 35, float %1525, float %1532)  ; FMax(a,b)
  %1535 = call float @dx.op.binary.f32(i32 36, float %1534, float %1533)  ; FMin(a,b)
  %1536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1537 = extractvalue %dx.types.CBufRet.f32 %1536, 1
  %1538 = extractvalue %dx.types.CBufRet.f32 %1536, 2
  %1539 = extractvalue %dx.types.CBufRet.f32 %1536, 0
  %1540 = select i1 %912, float %1539, float 0.000000e+00
  %1541 = fmul fast float %1537, %1535
  %1542 = fadd fast float %1540, %1541
  %1543 = fadd fast float %1540, %1538
  %1544 = fsub fast float %1537, %1538
  %1545 = fadd fast float %1544, %1540
  %1546 = call float @dx.op.binary.f32(i32 35, float %1542, float %1543)  ; FMax(a,b)
  %1547 = call float @dx.op.binary.f32(i32 36, float %1546, float %1545)  ; FMin(a,b)
  %1548 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %1479, float %1480, float %1547, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1549 = extractvalue %dx.types.ResRet.f32 %1548, 0
  %1550 = extractvalue %dx.types.ResRet.f32 %1548, 1
  %1551 = extractvalue %dx.types.ResRet.f32 %1548, 2
  %1552 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %1479, float %1480, float %1547, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1553 = extractvalue %dx.types.ResRet.f32 %1552, 0
  %1554 = extractvalue %dx.types.ResRet.f32 %1552, 1
  %1555 = extractvalue %dx.types.ResRet.f32 %1552, 2
  %1556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1557 = extractvalue %dx.types.CBufRet.f32 %1556, 1
  %1558 = fmul fast float %1557, %1553
  %1559 = fmul fast float %1557, %1554
  %1560 = fmul fast float %1557, %1555
  br label %1561

; <label>:1561                                    ; preds = %1509, %1466
  %1562 = phi float [ %1549, %1509 ], [ 1.000000e+00, %1466 ]
  %1563 = phi float [ %1550, %1509 ], [ 1.000000e+00, %1466 ]
  %1564 = phi float [ %1551, %1509 ], [ 1.000000e+00, %1466 ]
  %1565 = phi float [ %1558, %1509 ], [ 0.000000e+00, %1466 ]
  %1566 = phi float [ %1559, %1509 ], [ 0.000000e+00, %1466 ]
  %1567 = phi float [ %1560, %1509 ], [ 0.000000e+00, %1466 ]
  %1568 = fmul fast float %1565, %927
  %1569 = fmul fast float %1566, %927
  %1570 = fmul fast float %1567, %927
  %1571 = fmul fast float %1562, %1473
  %1572 = call float @dx.op.dot3.f32(i32 55, float %1562, float %1563, float %1564, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1573 = call float @dx.op.dot3.f32(i32 55, float %1568, float %1569, float %1570, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1574 = select i1 %114, float %1572, float %1562
  %1575 = select i1 %114, float %1572, float %1563
  %1576 = select i1 %114, float 1.000000e+00, float %1564
  %1577 = select i1 %114, float %1573, float %1568
  %1578 = select i1 %114, float 0.000000e+00, float %1569
  %1579 = select i1 %114, float 0.000000e+00, float %1570
  %1580 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1581 = extractvalue %dx.types.CBufRet.i32 %1580, 3
  %1582 = and i32 %1581, 3
  %1583 = icmp ne i32 %1582, 0
  %1584 = and i32 %1581, 4
  %1585 = icmp ne i32 %1584, 0
  %1586 = and i1 %1583, %1585
  %1587 = and i1 %114, %1586
  br i1 %1587, label %1588, label %1594

; <label>:1588                                    ; preds = %1561
  %1589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1590 = extractvalue %dx.types.CBufRet.f32 %1589, 1
  %1591 = fadd fast float %1571, -1.000000e+00
  %1592 = fmul fast float %1590, %1591
  %1593 = fadd fast float %1592, 1.000000e+00
  br label %1594

; <label>:1594                                    ; preds = %1588, %1561
  %1595 = phi float [ %1593, %1588 ], [ %1571, %1561 ]
  %1596 = fadd fast float %1470, %1467
  %1597 = fmul fast float %1574, %1596
  %1598 = fadd fast float %1597, %1577
  %1599 = fadd fast float %1471, %1468
  %1600 = fmul fast float %1575, %1599
  %1601 = fadd fast float %1600, %1578
  %1602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1603 = extractvalue %dx.types.CBufRet.f32 %1602, 0
  br i1 %114, label %1604, label %1626

; <label>:1604                                    ; preds = %1594
  %1605 = fadd fast float %1598, %1601
  %1606 = fmul fast float %1603, %1605
  %1607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1608 = extractvalue %dx.types.CBufRet.f32 %1607, 3
  %1609 = extractvalue %dx.types.CBufRet.f32 %932, 1
  %1610 = fsub fast float %935, %1609
  %1611 = extractvalue %dx.types.CBufRet.f32 %932, 2
  %1612 = fmul fast float %1610, %1611
  %1613 = call float @dx.op.unary.f32(i32 7, float %1612)  ; Saturate(value)
  %1614 = fsub fast float %1613, %1608
  %1615 = fmul fast float %1614, %1595
  %1616 = fadd fast float %1615, %1608
  %1617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1618 = extractvalue %dx.types.CBufRet.f32 %1617, 0
  %1619 = fsub fast float %1616, %1618
  %1620 = fmul fast float %1619, 1.000000e+01
  %1621 = call float @dx.op.unary.f32(i32 7, float %1620)  ; Saturate(value)
  %1622 = fsub fast float %888, %927
  %1623 = fmul fast float %1621, %1622
  %1624 = fadd fast float %1623, %927
  %1625 = fmul fast float %1624, %1616
  br label %1638

; <label>:1626                                    ; preds = %1594
  %1627 = fadd fast float %1472, %1469
  %1628 = fmul fast float %1576, %1627
  %1629 = fadd fast float %1628, %1579
  %1630 = fmul fast float %1603, %1598
  %1631 = fmul fast float %1603, %1601
  %1632 = fmul fast float %1603, %1629
  %1633 = call float @dx.op.binary.f32(i32 35, float %1631, float %1632)  ; FMax(a,b)
  %1634 = call float @dx.op.binary.f32(i32 35, float %1630, float %1633)  ; FMax(a,b)
  %1635 = call float @dx.op.binary.f32(i32 35, float %1634, float %927)  ; FMax(a,b)
  %1636 = fcmp fast ugt float %1635, 0x3F10000000000000
  br i1 %1636, label %1638, label %1637

; <label>:1637                                    ; preds = %1626
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1638

; <label>:1638                                    ; preds = %1637, %1626, %1604
  %1639 = phi float [ %1606, %1604 ], [ %1630, %1637 ], [ %1630, %1626 ]
  %1640 = phi float [ %1625, %1604 ], [ %1631, %1637 ], [ %1631, %1626 ]
  %1641 = phi float [ %1624, %1604 ], [ %1632, %1637 ], [ %1632, %1626 ]
  %1642 = phi float [ %1624, %1604 ], [ %927, %1637 ], [ %927, %1626 ]
  %1643 = fadd fast float %581, 0x3FE3C6EF40000000
  %1644 = call float @dx.op.unary.f32(i32 22, float %1643)  ; Frc(value)
  %1645 = call float @dx.op.unary.f32(i32 23, float %1639)  ; Log(value)
  %1646 = fadd fast float %1645, -7.000000e+00
  %1647 = call float @dx.op.unary.f32(i32 21, float %1646)  ; Exp(value)
  %1648 = fmul fast float %1644, 2.000000e+00
  %1649 = fadd fast float %1648, -1.000000e+00
  %1650 = fmul fast float %1647, %1649
  %1651 = fcmp fast ogt float %1639, 0.000000e+00
  %1652 = select i1 %1651, float %1650, float 0.000000e+00
  %1653 = fadd fast float %1652, %1639
  %1654 = fadd fast float %581, 0x3FF3C6EF40000000
  %1655 = call float @dx.op.unary.f32(i32 22, float %1654)  ; Frc(value)
  %1656 = call float @dx.op.unary.f32(i32 23, float %1640)  ; Log(value)
  %1657 = fadd fast float %1656, -7.000000e+00
  %1658 = call float @dx.op.unary.f32(i32 21, float %1657)  ; Exp(value)
  %1659 = fmul fast float %1655, 2.000000e+00
  %1660 = fadd fast float %1659, -1.000000e+00
  %1661 = fmul fast float %1658, %1660
  %1662 = fcmp fast ogt float %1640, 0.000000e+00
  %1663 = select i1 %1662, float %1661, float 0.000000e+00
  %1664 = fadd fast float %1663, %1640
  %1665 = fadd fast float %581, 0x3FFDAA66E0000000
  %1666 = call float @dx.op.unary.f32(i32 22, float %1665)  ; Frc(value)
  %1667 = call float @dx.op.unary.f32(i32 23, float %1641)  ; Log(value)
  %1668 = fadd fast float %1667, -6.000000e+00
  %1669 = call float @dx.op.unary.f32(i32 21, float %1668)  ; Exp(value)
  %1670 = fmul fast float %1666, 2.000000e+00
  %1671 = fadd fast float %1670, -1.000000e+00
  %1672 = fmul fast float %1669, %1671
  %1673 = fcmp fast ogt float %1641, 0.000000e+00
  %1674 = select i1 %1673, float %1672, float 0.000000e+00
  %1675 = fadd fast float %1674, %1641
  %1676 = select i1 %114, float %1640, float %1664
  %1677 = select i1 %114, float %1641, float %1675
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1678 = call float @dx.op.binary.f32(i32 36, float %1653, float 3.225500e+04)  ; FMin(a,b)
  %1679 = call float @dx.op.binary.f32(i32 36, float %1676, float 3.225500e+04)  ; FMin(a,b)
  %1680 = call float @dx.op.binary.f32(i32 36, float %1677, float 3.225500e+04)  ; FMin(a,b)
  %1681 = call float @dx.op.binary.f32(i32 36, float %1642, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1678)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1679)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1680)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1681)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1642)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1642)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1642)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1642)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

