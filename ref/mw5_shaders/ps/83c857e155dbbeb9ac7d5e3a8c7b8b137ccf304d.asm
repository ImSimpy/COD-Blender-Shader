;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float   xyzw
; TEXCOORD                 0   xy          2     NONE   float   xy  
; TEXCOORD                 2   xyzw        3     NONE   float   xyz 
; TEXCOORD                 3   xyzw        4     NONE   float   xyz 
; TEXCOORD                 5   xy          5     NONE   float   xy  
; TEXCOORD                 8   xyzw        6     NONE   float       
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
; shader hash: a656d7e4458ca13728067f33472fe84a
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
;
;
; ViewId state:
;
; Number of inputs: 35, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 28, 29, 30, 31, 32, 34 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 28, 29, 30, 31, 32, 34 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 28, 29, 30, 31, 32, 34 }
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
  %22 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %49 = extractvalue %dx.types.CBufRet.f32 %48, 0
  %50 = fmul fast float %49, %42
  %51 = fmul fast float %49, %43
  %52 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %53 = extractvalue %dx.types.CBufRet.f32 %52, 2
  %54 = extractvalue %dx.types.CBufRet.f32 %52, 3
  %55 = fmul fast float %50, 2.000000e+00
  %56 = fmul fast float %55, %53
  %57 = fmul fast float %51, 2.000000e+00
  %58 = fmul fast float %57, %54
  %59 = fsub fast float 1.000000e+00, %56
  %60 = fsub fast float 1.000000e+00, %58
  %61 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %62 = extractvalue %dx.types.CBufRet.f32 %61, 0
  %63 = extractvalue %dx.types.CBufRet.f32 %61, 1
  %64 = extractvalue %dx.types.CBufRet.f32 %61, 2
  %65 = fmul fast float %59, %62
  %66 = fmul fast float %59, %63
  %67 = fmul fast float %59, %64
  %68 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %69 = extractvalue %dx.types.CBufRet.f32 %68, 0
  %70 = extractvalue %dx.types.CBufRet.f32 %68, 1
  %71 = extractvalue %dx.types.CBufRet.f32 %68, 2
  %72 = fmul fast float %60, %69
  %73 = fmul fast float %60, %70
  %74 = fmul fast float %60, %71
  %75 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %76 = extractvalue %dx.types.CBufRet.f32 %75, 0
  %77 = extractvalue %dx.types.CBufRet.f32 %75, 1
  %78 = extractvalue %dx.types.CBufRet.f32 %75, 2
  %79 = fadd fast float %72, %76
  %80 = fadd fast float %79, %65
  %81 = fadd fast float %73, %77
  %82 = fadd fast float %81, %66
  %83 = fadd fast float %74, %78
  %84 = fadd fast float %83, %67
  %85 = fmul fast float %80, %45
  %86 = fmul fast float %82, %45
  %87 = fmul fast float %84, %45
  %88 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
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
  %98 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %18, float %97, float %96, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %99 = extractvalue %dx.types.ResRet.f32 %98, 0
  %100 = fsub fast float 1.000000e+00, %99
  %101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %102 = extractvalue %dx.types.CBufRet.f32 %101, 0
  %103 = fcmp fast olt float %100, %102
  br label %107

; <label>:104                                     ; preds = %0
  %105 = icmp eq i32 %92, 0
  %106 = and i1 %91, %105
  br label %107

; <label>:107                                     ; preds = %104, %95
  %108 = phi i1 [ %103, %95 ], [ %106, %104 ]
  %109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %110 = extractvalue %dx.types.CBufRet.f32 %109, 2
  %111 = extractvalue %dx.types.CBufRet.f32 %109, 3
  %112 = fmul fast float %110, %50
  %113 = fmul fast float %111, %51
  %114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %115 = extractvalue %dx.types.ResRet.i32 %114, 0
  %116 = and i32 %115, 114688
  %117 = icmp ne i32 %116, 0
  %118 = select i1 %117, float %112, float 0.000000e+00
  %119 = select i1 %117, float %113, float 0.000000e+00
  %120 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %19, float %118, float %119, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %121 = extractvalue %dx.types.ResRet.f32 %120, 0
  %122 = fmul fast float %121, 2.550000e+02
  %123 = fptoui float %122 to i32
  %124 = select i1 %117, i32 %123, i32 0
  %125 = mul i32 %22, 208
  %126 = add i32 %125, 188
  %127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %126, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
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
  %165 = phi float [ %36, %137 ], [ %144, %150 ], [ %163, %158 ], [ %144, %156 ]
  %166 = phi float [ %37, %137 ], [ %155, %150 ], [ %145, %158 ], [ %145, %156 ]
  %167 = fadd fast float %36, %33
  %168 = fadd fast float %37, %34
  %169 = add i32 %23, 72
  %170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %169, i32 undef)  ; BufferLoad(srv,index,wot)
  %171 = extractvalue %dx.types.ResRet.i32 %170, 0
  %172 = extractvalue %dx.types.ResRet.i32 %170, 1
  %173 = bitcast i32 %171 to float
  %174 = bitcast i32 %172 to float
  %175 = fmul fast float %173, %36
  %176 = fmul fast float %174, %37
  %177 = call float @dx.op.unary.f32(i32 22, float %175)  ; Frc(value)
  %178 = call float @dx.op.unary.f32(i32 22, float %176)  ; Frc(value)
  %179 = and i32 %128, 16
  %180 = icmp ne i32 %179, 0
  %181 = select i1 %180, float 1.000000e+00, float %41
  %182 = add i32 %23, 108
  %183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %182, i32 undef)  ; BufferLoad(srv,index,wot)
  %184 = extractvalue %dx.types.ResRet.i32 %183, 0
  %185 = add i32 %184, 0
  %186 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %185, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %188 = extractvalue %dx.types.CBufRet.f32 %187, 2
  %189 = call %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32 61, %dx.types.Handle %186, %dx.types.Handle %47, float %165, float %166, float undef, float undef, i32 0, i32 0, i32 undef, float %188, float undef)  ; SampleBias(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,bias,clamp)
  %190 = extractvalue %dx.types.ResRet.f32 %189, 0
  %191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %182, i32 undef)  ; BufferLoad(srv,index,wot)
  %192 = extractvalue %dx.types.ResRet.i32 %191, 0
  %193 = add i32 %192, 0
  %194 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %193, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %196 = extractvalue %dx.types.CBufRet.f32 %195, 2
  %197 = call %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32 61, %dx.types.Handle %194, %dx.types.Handle %47, float %167, float %168, float undef, float undef, i32 0, i32 0, i32 undef, float %196, float undef)  ; SampleBias(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,bias,clamp)
  %198 = extractvalue %dx.types.ResRet.f32 %197, 0
  %199 = fsub fast float %198, %190
  %200 = fmul fast float %199, %35
  %201 = fadd fast float %200, %190
  %202 = fmul fast float %201, %181
  %203 = icmp eq i32 %179, 0
  br i1 %203, label %223, label %204, !dx.controlflow.hints !62

; <label>:204                                     ; preds = %164
  %205 = add i32 %125, 64
  %206 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %205, i32 undef)  ; BufferLoad(srv,index,wot)
  %207 = extractvalue %dx.types.ResRet.f32 %206, 0
  %208 = fadd fast float %207, 1.000000e+00
  %209 = fmul fast float %208, %41
  %210 = fsub fast float %209, %207
  %211 = fsub fast float %208, %210
  %212 = call float @dx.op.unary.f32(i32 7, float %211)  ; Saturate(value)
  %213 = fsub fast float 1.000000e+00, %209
  %214 = call float @dx.op.unary.f32(i32 7, float %213)  ; Saturate(value)
  %215 = fsub fast float %212, %214
  %216 = fsub fast float %202, %214
  %217 = fdiv fast float %216, %215
  %218 = call float @dx.op.unary.f32(i32 7, float %217)  ; Saturate(value)
  %219 = fmul fast float %218, 2.000000e+00
  %220 = fsub fast float 3.000000e+00, %219
  %221 = fmul fast float %218, %218
  %222 = fmul fast float %221, %220
  br label %223

; <label>:223                                     ; preds = %204, %164
  %224 = phi float [ %222, %204 ], [ %202, %164 ]
  %225 = fcmp fast ogt float %224, 0.000000e+00
  br i1 %225, label %227, label %226

; <label>:226                                     ; preds = %223
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %227

; <label>:227                                     ; preds = %226, %223
  %228 = call float @dx.op.unary.f32(i32 7, float %224)  ; Saturate(value)
  %229 = fmul fast float %50, 5.000000e-01
  %230 = fmul fast float %51, 5.000000e-01
  %231 = fptosi float %229 to i32
  %232 = fptosi float %230 to i32
  %233 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %231, i32 %232, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %234 = extractvalue %dx.types.ResRet.i32 %233, 0
  %235 = lshr i32 %234, 18
  %236 = uitofp i32 %235 to float
  %237 = fmul fast float %236, 0x3F4C00EBA0000000
  %238 = call float @dx.op.unary.f32(i32 21, float %237)  ; Exp(value)
  %239 = fadd fast float %238, -1.000000e+00
  %240 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %9, i32 0)  ; GetDimensions(handle,mipLevel)
  %241 = extractvalue %dx.types.Dimensions %240, 0
  %242 = sitofp i32 %241 to float
  %243 = extractvalue %dx.types.Dimensions %240, 1
  %244 = sitofp i32 %243 to float
  %245 = fcmp fast oge float %229, %242
  %246 = fcmp fast oge float %230, %244
  %247 = or i1 %245, %246
  %248 = select i1 %247, float 0x4197782600000000, float %239
  %249 = fsub fast float %248, %45
  %250 = fcmp fast ogt float %249, 0.000000e+00
  %251 = and i32 %124, -2
  %252 = icmp eq i32 %251, 2
  %253 = and i1 %252, %250
  %254 = xor i1 %250, true
  %255 = icmp eq i32 %124, 1
  %256 = and i1 %255, %254
  %257 = or i1 %253, %256
  %258 = and i32 %128, 262144
  %259 = icmp ne i32 %258, 0
  %260 = and i1 %259, %257
  %261 = xor i1 %257, true
  %262 = and i32 %128, 131072
  %263 = icmp ne i32 %262, 0
  %264 = and i1 %263, %261
  %265 = or i1 %260, %264
  br i1 %265, label %266, label %267

; <label>:266                                     ; preds = %227
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %267

; <label>:267                                     ; preds = %266, %227
  %268 = and i32 %128, 32
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %519, label %270, !dx.controlflow.hints !63

; <label>:270                                     ; preds = %267
  %271 = add i32 %125, 80
  %272 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %271, i32 undef)  ; BufferLoad(srv,index,wot)
  %273 = extractvalue %dx.types.ResRet.f32 %272, 0
  %274 = extractvalue %dx.types.ResRet.f32 %272, 1
  %275 = extractvalue %dx.types.ResRet.f32 %272, 2
  %276 = extractvalue %dx.types.ResRet.f32 %272, 3
  %277 = add i32 %125, 96
  %278 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %277, i32 undef)  ; BufferLoad(srv,index,wot)
  %279 = extractvalue %dx.types.ResRet.f32 %278, 0
  %280 = extractvalue %dx.types.ResRet.f32 %278, 1
  %281 = extractvalue %dx.types.ResRet.f32 %278, 2
  %282 = add i32 %125, 112
  %283 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %282, i32 undef)  ; BufferLoad(srv,index,wot)
  %284 = extractvalue %dx.types.ResRet.f32 %283, 0
  %285 = extractvalue %dx.types.ResRet.f32 %283, 1
  %286 = extractvalue %dx.types.ResRet.f32 %283, 2
  %287 = extractvalue %dx.types.ResRet.f32 %283, 3
  %288 = add i32 %125, 128
  %289 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %288, i32 undef)  ; BufferLoad(srv,index,wot)
  %290 = extractvalue %dx.types.ResRet.f32 %289, 0
  %291 = extractvalue %dx.types.ResRet.f32 %289, 1
  %292 = extractvalue %dx.types.ResRet.f32 %289, 2
  %293 = extractvalue %dx.types.ResRet.f32 %289, 3
  %294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %126, i32 undef)  ; BufferLoad(srv,index,wot)
  %295 = extractvalue %dx.types.ResRet.i32 %294, 0
  %296 = and i32 %295, 4096
  %297 = icmp ne i32 %296, 0
  %298 = fcmp fast une float %281, 0.000000e+00
  %299 = and i32 %295, 64
  %300 = icmp ne i32 %299, 0
  %301 = and i32 %295, 128
  %302 = icmp eq i32 %301, 0
  %303 = and i32 %295, 2048
  %304 = icmp eq i32 %303, 0
  %305 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %12, i32 0)  ; GetDimensions(handle,mipLevel)
  %306 = extractvalue %dx.types.Dimensions %305, 0
  %307 = sitofp i32 %306 to float
  %308 = extractvalue %dx.types.Dimensions %305, 1
  %309 = sitofp i32 %308 to float
  %310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %311 = extractvalue %dx.types.CBufRet.f32 %310, 2
  %312 = extractvalue %dx.types.CBufRet.f32 %310, 3
  %313 = fmul fast float %311, %50
  %314 = fmul fast float %312, %51
  %315 = fmul fast float %313, %307
  %316 = fmul fast float %314, %309
  %317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %318 = extractvalue %dx.types.CBufRet.f32 %317, 1
  %319 = fsub fast float -0.000000e+00, %318
  %320 = fptoui float %319 to i32
  %321 = fptoui float %315 to i32
  %322 = fptoui float %316 to i32
  %323 = and i32 %320, 31
  %324 = lshr i32 %321, %323
  %325 = lshr i32 %322, %323
  %326 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 %320, i32 %324, i32 %325, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %327 = extractvalue %dx.types.ResRet.f32 %326, 0
  %328 = fcmp fast ogt float %327, -1.000000e+00
  %329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %330 = extractvalue %dx.types.CBufRet.f32 %329, 1
  %331 = select i1 %328, float %330, float 1.000000e+00
  %332 = fadd fast float %327, 1.000000e+00
  %333 = fmul fast float %331, %332
  %334 = call float @dx.op.unary.f32(i32 6, float %333)  ; FAbs(value)
  %335 = extractvalue %dx.types.CBufRet.f32 %329, 3
  %336 = fcmp fast oge float %334, %335
  %337 = select i1 %336, float 0x4197782600000000, float %334
  br i1 %304, label %415, label %338, !dx.controlflow.hints !64

; <label>:338                                     ; preds = %270
  %339 = fmul fast float %55, %311
  %340 = fmul fast float %57, %312
  %341 = fsub fast float 1.000000e+00, %339
  %342 = fsub fast float 1.000000e+00, %340
  %343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %344 = extractvalue %dx.types.CBufRet.f32 %343, 0
  %345 = extractvalue %dx.types.CBufRet.f32 %343, 1
  %346 = extractvalue %dx.types.CBufRet.f32 %343, 2
  %347 = fmul fast float %341, %344
  %348 = fmul fast float %341, %345
  %349 = fmul fast float %341, %346
  %350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %351 = extractvalue %dx.types.CBufRet.f32 %350, 0
  %352 = extractvalue %dx.types.CBufRet.f32 %350, 1
  %353 = extractvalue %dx.types.CBufRet.f32 %350, 2
  %354 = fmul fast float %342, %351
  %355 = fmul fast float %342, %352
  %356 = fmul fast float %342, %353
  %357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %358 = extractvalue %dx.types.CBufRet.f32 %357, 0
  %359 = extractvalue %dx.types.CBufRet.f32 %357, 1
  %360 = extractvalue %dx.types.CBufRet.f32 %357, 2
  %361 = fadd fast float %354, %358
  %362 = fadd fast float %361, %347
  %363 = fadd fast float %355, %359
  %364 = fadd fast float %363, %348
  %365 = fadd fast float %356, %360
  %366 = fadd fast float %365, %349
  %367 = fmul fast float %362, %337
  %368 = fmul fast float %364, %337
  %369 = fmul fast float %366, %337
  %370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %371 = extractvalue %dx.types.CBufRet.f32 %370, 0
  %372 = extractvalue %dx.types.CBufRet.f32 %370, 1
  %373 = extractvalue %dx.types.CBufRet.f32 %370, 2
  %374 = fsub fast float %371, %24
  %375 = fadd fast float %374, %367
  %376 = fsub fast float %372, %25
  %377 = fadd fast float %376, %368
  %378 = fsub fast float %373, %26
  %379 = fadd fast float %378, %369
  %380 = fmul fast float %27, %27
  %381 = call float @dx.op.dot3.f32(i32 55, float %375, float %377, float %379, float %375, float %377, float %379)  ; Dot3(ax,ay,az,bx,by,bz)
  %382 = fsub fast float %380, %381
  %383 = fmul fast float %280, %380
  %384 = fmul fast float %279, %380
  %385 = fcmp fast olt float %382, %383
  %386 = fcmp fast ogt float %382, %384
  %387 = or i1 %385, %386
  %388 = select i1 %387, float 0.000000e+00, float %382
  %389 = fsub fast float %279, %280
  %390 = fmul fast float %389, %380
  %391 = fsub fast float %388, %383
  %392 = fdiv fast float %391, %390
  %393 = call float @dx.op.unary.f32(i32 7, float %392)  ; Saturate(value)
  %394 = fmul fast float %393, 2.000000e+00
  %395 = fsub fast float 3.000000e+00, %394
  %396 = fmul fast float %393, %393
  %397 = fmul fast float %396, %395
  %398 = fmul fast float %284, %38
  %399 = fmul fast float %285, %39
  %400 = fmul fast float %286, %40
  %401 = fsub fast float %398, %290
  %402 = fsub fast float %399, %291
  %403 = fsub fast float %400, %292
  %404 = fsub fast float %287, %293
  %405 = fmul fast float %397, %401
  %406 = fmul fast float %397, %402
  %407 = fmul fast float %397, %403
  %408 = fmul fast float %397, %404
  %409 = fadd fast float %405, %290
  %410 = fadd fast float %406, %291
  %411 = fadd fast float %407, %292
  %412 = fadd fast float %408, %293
  %413 = fmul fast float %273, %273
  %414 = fmul fast float %413, %388
  br label %510

; <label>:415                                     ; preds = %270
  %416 = and i32 %295, 256
  %417 = icmp eq i32 %416, 0
  %418 = fsub fast float %337, %45
  br i1 %417, label %467, label %419

; <label>:419                                     ; preds = %415
  %420 = fadd fast float %279, %45
  %421 = fcmp fast olt float %337, %45
  %422 = fcmp fast ogt float %337, %420
  %423 = or i1 %421, %422
  %424 = select i1 %423, float 0.000000e+00, float %418
  %425 = call float @dx.op.unary.f32(i32 83, float %337)  ; DerivCoarseX(value)
  %426 = call float @dx.op.unary.f32(i32 84, float %337)  ; DerivCoarseY(value)
  %427 = fmul fast float %425, %425
  %428 = fmul fast float %426, %426
  %429 = fadd fast float %428, %427
  %430 = call float @dx.op.unary.f32(i32 24, float %429)  ; Sqrt(value)
  %431 = extractvalue %dx.types.CBufRet.f32 %317, 2
  %432 = fmul fast float %431, %430
  %433 = call float @dx.op.unary.f32(i32 7, float %432)  ; Saturate(value)
  %434 = fmul fast float %433, %280
  %435 = fdiv fast float %418, %434
  %436 = call float @dx.op.unary.f32(i32 7, float %435)  ; Saturate(value)
  %437 = fmul fast float %436, 2.000000e+00
  %438 = fsub fast float 3.000000e+00, %437
  %439 = fmul fast float %436, %436
  %440 = fmul fast float %439, %438
  %441 = fsub fast float %337, %420
  %442 = fadd fast float %441, %434
  %443 = fdiv fast float %442, %434
  %444 = call float @dx.op.unary.f32(i32 7, float %443)  ; Saturate(value)
  %445 = fmul fast float %444, 2.000000e+00
  %446 = fsub fast float 3.000000e+00, %445
  %447 = fmul fast float %444, %444
  %448 = fmul fast float %447, %446
  %449 = fsub fast float %440, %448
  %450 = fmul fast float %284, %38
  %451 = fmul fast float %285, %39
  %452 = fmul fast float %286, %40
  %453 = fsub fast float %450, %290
  %454 = fsub fast float %451, %291
  %455 = fsub fast float %452, %292
  %456 = fsub fast float %287, %293
  %457 = fmul fast float %449, %453
  %458 = fmul fast float %449, %454
  %459 = fmul fast float %449, %455
  %460 = fmul fast float %449, %456
  %461 = fadd fast float %457, %290
  %462 = fadd fast float %458, %291
  %463 = fadd fast float %459, %292
  %464 = fadd fast float %460, %293
  %465 = fmul fast float %424, %273
  %466 = call float @dx.op.unary.f32(i32 6, float %465)  ; FAbs(value)
  br label %510

; <label>:467                                     ; preds = %415
  br i1 %298, label %468, label %481

; <label>:468                                     ; preds = %467
  %469 = fdiv fast float 5.000000e+01, %27
  %470 = select i1 %300, float %469, float 1.000000e+00
  %471 = fmul fast float %470, %273
  %472 = fmul fast float %177, 2.000000e+00
  %473 = fmul fast float %178, 2.000000e+00
  %474 = fadd fast float %472, -1.000000e+00
  %475 = fadd fast float %473, -1.000000e+00
  %476 = call float @dx.op.dot2.f32(i32 54, float %474, float %475, float %474, float %475)  ; Dot2(ax,ay,bx,by)
  %477 = fmul fast float %281, %27
  %478 = fmul fast float %477, %476
  %479 = fsub fast float %418, %478
  %480 = fmul fast float %471, %479
  br label %510

; <label>:481                                     ; preds = %467
  br i1 %302, label %502, label %482

; <label>:482                                     ; preds = %481
  %483 = fmul fast float %27, 0x3F947AE140000000
  %484 = select i1 %300, float %483, float 1.000000e+00
  %485 = fdiv fast float 1.000000e+00, %484
  %486 = fmul fast float %484, %274
  %487 = fmul fast float %484, %275
  %488 = fmul fast float %485, %276
  %489 = call float @dx.op.unary.f32(i32 6, float %418)  ; FAbs(value)
  %490 = fcmp fast olt float %489, %486
  br i1 %490, label %491, label %495, !dx.controlflow.hints !65

; <label>:491                                     ; preds = %482
  %492 = fmul fast float %485, %273
  %493 = fmul fast float %492, %489
  %494 = call float @dx.op.unary.f32(i32 6, float %493)  ; FAbs(value)
  br label %510

; <label>:495                                     ; preds = %482
  %496 = fcmp fast ogt float %489, %487
  br i1 %496, label %497, label %510

; <label>:497                                     ; preds = %495
  %498 = fsub fast float %489, %487
  %499 = fmul fast float %488, %498
  %500 = call float @dx.op.unary.f32(i32 6, float %499)  ; FAbs(value)
  %501 = fsub fast float 1.000000e+00, %500
  br label %510

; <label>:502                                     ; preds = %481
  %503 = fdiv fast float 5.000000e+01, %27
  %504 = select i1 %300, float %503, float 1.000000e+00
  %505 = fmul fast float %504, %273
  %506 = call float @dx.op.unary.f32(i32 6, float %249)  ; FAbs(value)
  %507 = select i1 %297, float %506, float 0x47EFFFFFE0000000
  %508 = call float @dx.op.binary.f32(i32 36, float %418, float %507)  ; FMin(a,b)
  %509 = fmul fast float %505, %508
  br label %510

; <label>:510                                     ; preds = %502, %497, %495, %491, %468, %419, %338
  %511 = phi float [ %414, %338 ], [ %466, %419 ], [ %480, %468 ], [ %509, %502 ], [ %494, %491 ], [ %501, %497 ], [ %489, %495 ]
  %512 = phi float [ %409, %338 ], [ %461, %419 ], [ %38, %468 ], [ %38, %502 ], [ %38, %491 ], [ %38, %497 ], [ %38, %495 ]
  %513 = phi float [ %410, %338 ], [ %462, %419 ], [ %39, %468 ], [ %39, %502 ], [ %39, %491 ], [ %39, %497 ], [ %39, %495 ]
  %514 = phi float [ %411, %338 ], [ %463, %419 ], [ %40, %468 ], [ %40, %502 ], [ %40, %491 ], [ %40, %497 ], [ %40, %495 ]
  %515 = phi float [ %412, %338 ], [ %464, %419 ], [ 1.000000e+00, %468 ], [ 1.000000e+00, %502 ], [ 1.000000e+00, %491 ], [ 1.000000e+00, %497 ], [ 1.000000e+00, %495 ]
  %516 = call float @dx.op.unary.f32(i32 7, float %511)  ; Saturate(value)
  %517 = fmul fast float %515, %228
  %518 = fmul fast float %517, %516
  br label %519

; <label>:519                                     ; preds = %510, %267
  %520 = phi float [ %512, %510 ], [ %38, %267 ]
  %521 = phi float [ %513, %510 ], [ %39, %267 ]
  %522 = phi float [ %514, %510 ], [ %40, %267 ]
  %523 = phi float [ %518, %510 ], [ %228, %267 ]
  %524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %525 = extractvalue %dx.types.CBufRet.f32 %524, 2
  %526 = fptosi float %45 to i32
  %527 = sitofp i32 %526 to float
  %528 = fadd fast float %525, %527
  %529 = fmul fast float %528, 0x3FE3C6EF40000000
  %530 = frem fast float %50, 2.560000e+02
  %531 = frem fast float %51, 2.560000e+02
  %532 = fptoui float %530 to i32
  %533 = fptoui float %531 to i32
  %534 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %532, i32 %533, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %535 = extractvalue %dx.types.ResRet.f32 %534, 0
  %536 = fadd fast float %535, %529
  %537 = call float @dx.op.unary.f32(i32 22, float %536)  ; Frc(value)
  %538 = and i32 %128, 1
  %539 = icmp eq i32 %538, 0
  br i1 %539, label %596, label %540, !dx.controlflow.hints !66

; <label>:540                                     ; preds = %519
  %541 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %125, i32 undef)  ; BufferLoad(srv,index,wot)
  %542 = extractvalue %dx.types.ResRet.f32 %541, 2
  %543 = extractvalue %dx.types.ResRet.f32 %541, 3
  %544 = add i32 %125, 16
  %545 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %544, i32 undef)  ; BufferLoad(srv,index,wot)
  %546 = extractvalue %dx.types.ResRet.f32 %545, 0
  %547 = extractvalue %dx.types.ResRet.f32 %545, 1
  %548 = extractvalue %dx.types.ResRet.f32 %545, 2
  %549 = add i32 %125, 32
  %550 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %549, i32 undef)  ; BufferLoad(srv,index,wot)
  %551 = extractvalue %dx.types.ResRet.f32 %550, 0
  %552 = extractvalue %dx.types.ResRet.f32 %550, 1
  %553 = extractvalue %dx.types.ResRet.f32 %550, 2
  %554 = and i32 %128, 2
  %555 = icmp eq i32 %554, 0
  %556 = call float @dx.op.dot3.f32(i32 55, float %30, float %31, float %32, float %30, float %31, float %32)  ; Dot3(ax,ay,az,bx,by,bz)
  %557 = call float @dx.op.unary.f32(i32 25, float %556)  ; Rsqrt(value)
  %558 = fmul fast float %557, %30
  %559 = fmul fast float %557, %31
  %560 = fmul fast float %557, %32
  %561 = call float @dx.op.dot3.f32(i32 55, float %85, float %86, float %87, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %562 = call float @dx.op.unary.f32(i32 25, float %561)  ; Rsqrt(value)
  %563 = fmul fast float %562, %85
  %564 = fmul fast float %562, %86
  %565 = fmul fast float %562, %87
  %566 = call float @dx.op.dot3.f32(i32 55, float %563, float %564, float %565, float %558, float %559, float %560)  ; Dot3(ax,ay,az,bx,by,bz)
  %567 = fmul fast float %566, %566
  %568 = fmul fast float %567, %542
  %569 = fadd fast float %568, %543
  %570 = call float @dx.op.unary.f32(i32 7, float %569)  ; Saturate(value)
  br i1 %555, label %571, label %581, !dx.controlflow.hints !67

; <label>:571                                     ; preds = %540
  %572 = extractvalue %dx.types.ResRet.f32 %541, 1
  %573 = extractvalue %dx.types.ResRet.f32 %541, 0
  %574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %575 = extractvalue %dx.types.CBufRet.f32 %574, 3
  %576 = fmul fast float %575, %561
  %577 = fsub fast float %573, %576
  %578 = fmul fast float %577, %572
  %579 = call float @dx.op.unary.f32(i32 7, float %578)  ; Saturate(value)
  %580 = fmul fast float %579, %570
  br label %581

; <label>:581                                     ; preds = %571, %540
  %582 = phi float [ %580, %571 ], [ %570, %540 ]
  %583 = fsub fast float %546, %551
  %584 = fsub fast float %547, %552
  %585 = fsub fast float %548, %553
  %586 = fmul fast float %582, %583
  %587 = fmul fast float %582, %584
  %588 = fmul fast float %582, %585
  %589 = fadd fast float %586, %551
  %590 = fadd fast float %587, %552
  %591 = fadd fast float %588, %553
  %592 = fmul fast float %589, %520
  %593 = fmul fast float %590, %521
  %594 = fmul fast float %591, %522
  %595 = fmul fast float %582, %523
  br label %596

; <label>:596                                     ; preds = %581, %519
  %597 = phi float [ %592, %581 ], [ %520, %519 ]
  %598 = phi float [ %593, %581 ], [ %521, %519 ]
  %599 = phi float [ %594, %581 ], [ %522, %519 ]
  %600 = phi float [ %595, %581 ], [ %523, %519 ]
  %601 = add i32 %23, 104
  %602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %601, i32 undef)  ; BufferLoad(srv,index,wot)
  %603 = extractvalue %dx.types.ResRet.i32 %602, 0
  %604 = add i32 %603, 0
  %605 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %604, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %606 = add i32 %23, 24
  %607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %606, i32 undef)  ; BufferLoad(srv,index,wot)
  %608 = extractvalue %dx.types.ResRet.i32 %607, 0
  %609 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %605, %dx.types.Handle %46, float %165, float %166, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %610 = extractvalue %dx.types.ResRet.f32 %609, 0
  %611 = extractvalue %dx.types.ResRet.f32 %609, 1
  %612 = extractvalue %dx.types.ResRet.f32 %609, 2
  %613 = extractvalue %dx.types.ResRet.f32 %609, 3
  %614 = and i32 %608, 255
  %615 = uitofp i32 %614 to float
  %616 = lshr i32 %608, 8
  %617 = and i32 %616, 255
  %618 = uitofp i32 %617 to float
  %619 = fmul fast float %613, %615
  %620 = fadd fast float %619, %618
  %621 = add i32 %23, 56
  %622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %621, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %636 = fmul fast float %635, %610
  %637 = fmul fast float %630, %630
  %638 = fmul fast float %637, %611
  %639 = fmul fast float %634, %634
  %640 = fmul fast float %639, %612
  %641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %601, i32 undef)  ; BufferLoad(srv,index,wot)
  %642 = extractvalue %dx.types.ResRet.i32 %641, 0
  %643 = add i32 %642, 0
  %644 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %643, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %606, i32 undef)  ; BufferLoad(srv,index,wot)
  %646 = extractvalue %dx.types.ResRet.i32 %645, 0
  %647 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %644, %dx.types.Handle %46, float %167, float %168, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %648 = extractvalue %dx.types.ResRet.f32 %647, 0
  %649 = extractvalue %dx.types.ResRet.f32 %647, 1
  %650 = extractvalue %dx.types.ResRet.f32 %647, 2
  %651 = extractvalue %dx.types.ResRet.f32 %647, 3
  %652 = and i32 %646, 255
  %653 = uitofp i32 %652 to float
  %654 = lshr i32 %646, 8
  %655 = and i32 %654, 255
  %656 = uitofp i32 %655 to float
  %657 = fmul fast float %651, %653
  %658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %621, i32 undef)  ; BufferLoad(srv,index,wot)
  %659 = extractvalue %dx.types.ResRet.i32 %658, 0
  %660 = and i32 %659, 255
  %661 = uitofp i32 %660 to float
  %662 = fmul fast float %661, 0x3F70101020000000
  %663 = lshr i32 %659, 8
  %664 = and i32 %663, 255
  %665 = uitofp i32 %664 to float
  %666 = fmul fast float %665, 0x3F70101020000000
  %667 = lshr i32 %659, 16
  %668 = and i32 %667, 255
  %669 = uitofp i32 %668 to float
  %670 = fmul fast float %669, 0x3F70101020000000
  %671 = fmul fast float %662, %662
  %672 = fmul fast float %671, %648
  %673 = fmul fast float %666, %666
  %674 = fmul fast float %673, %649
  %675 = fmul fast float %670, %670
  %676 = fmul fast float %675, %650
  %677 = fsub fast float %672, %636
  %678 = fsub fast float %674, %638
  %679 = fsub fast float %676, %640
  %680 = fmul fast float %677, %35
  %681 = fmul fast float %678, %35
  %682 = fmul fast float %679, %35
  %683 = fadd fast float %680, %636
  %684 = fadd fast float %681, %638
  %685 = fadd fast float %682, %640
  %686 = fsub fast float %656, %620
  %687 = fadd fast float %686, %657
  %688 = fmul fast float %687, %35
  %689 = fmul fast float %683, %597
  %690 = fmul fast float %684, %598
  %691 = fmul fast float %685, %599
  %692 = add i32 %23, 40
  %693 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %692, i32 undef)  ; BufferLoad(srv,index,wot)
  %694 = extractvalue %dx.types.ResRet.i32 %693, 0
  %695 = and i32 %694, 255
  %696 = uitofp i32 %695 to float
  %697 = fmul fast float %696, 0x3F70101020000000
  %698 = lshr i32 %694, 8
  %699 = and i32 %698, 255
  %700 = uitofp i32 %699 to float
  %701 = fmul fast float %700, 0x3F70101020000000
  %702 = lshr i32 %694, 16
  %703 = and i32 %702, 255
  %704 = uitofp i32 %703 to float
  %705 = fmul fast float %704, 0x3F70101020000000
  %706 = fmul fast float %697, %697
  %707 = fmul fast float %701, %701
  %708 = fmul fast float %705, %705
  %709 = add i32 %23, 112
  %710 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %709, i32 undef)  ; BufferLoad(srv,index,wot)
  %711 = extractvalue %dx.types.ResRet.i32 %710, 0
  %712 = add i32 %711, 0
  %713 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %712, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %714 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %713, %dx.types.Handle %47, float %165, float %166, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %715 = extractvalue %dx.types.ResRet.f32 %714, 0
  %716 = extractvalue %dx.types.ResRet.f32 %714, 1
  %717 = extractvalue %dx.types.ResRet.f32 %714, 2
  %718 = fmul fast float %706, %715
  %719 = fmul fast float %707, %716
  %720 = fmul fast float %708, %717
  %721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %692, i32 undef)  ; BufferLoad(srv,index,wot)
  %722 = extractvalue %dx.types.ResRet.i32 %721, 0
  %723 = and i32 %722, 255
  %724 = uitofp i32 %723 to float
  %725 = fmul fast float %724, 0x3F70101020000000
  %726 = lshr i32 %722, 8
  %727 = and i32 %726, 255
  %728 = uitofp i32 %727 to float
  %729 = fmul fast float %728, 0x3F70101020000000
  %730 = lshr i32 %722, 16
  %731 = and i32 %730, 255
  %732 = uitofp i32 %731 to float
  %733 = fmul fast float %732, 0x3F70101020000000
  %734 = fmul fast float %725, %725
  %735 = fmul fast float %729, %729
  %736 = fmul fast float %733, %733
  %737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %709, i32 undef)  ; BufferLoad(srv,index,wot)
  %738 = extractvalue %dx.types.ResRet.i32 %737, 0
  %739 = add i32 %738, 0
  %740 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %739, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %741 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %740, %dx.types.Handle %47, float %167, float %168, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %742 = extractvalue %dx.types.ResRet.f32 %741, 0
  %743 = extractvalue %dx.types.ResRet.f32 %741, 1
  %744 = extractvalue %dx.types.ResRet.f32 %741, 2
  %745 = fmul fast float %734, %742
  %746 = fmul fast float %735, %743
  %747 = fmul fast float %736, %744
  %748 = fsub fast float %745, %718
  %749 = fsub fast float %746, %719
  %750 = fsub fast float %747, %720
  %751 = fmul fast float %748, %35
  %752 = fmul fast float %749, %35
  %753 = fmul fast float %750, %35
  %754 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %28, float %29, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %755 = extractvalue %dx.types.ResRet.f32 %754, 0
  %756 = extractvalue %dx.types.ResRet.f32 %754, 1
  %757 = extractvalue %dx.types.ResRet.f32 %754, 2
  %758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %759 = extractvalue %dx.types.CBufRet.f32 %758, 1
  %760 = fadd fast float %688, %620
  %761 = fmul fast float %760, 0x3F70101000000000
  %762 = fadd fast float %761, 0xBFB99999A0000000
  %763 = call float @dx.op.unary.f32(i32 7, float %762)  ; Saturate(value)
  %764 = fmul fast float %763, 0x3FF1C71C80000000
  %765 = fsub fast float 1.000000e+00, %764
  %766 = call float @dx.op.unary.f32(i32 7, float %765)  ; Saturate(value)
  %767 = fmul fast float %689, %766
  %768 = fmul fast float %690, %766
  %769 = fmul fast float %691, %766
  %770 = call float @dx.op.unary.f32(i32 7, float %767)  ; Saturate(value)
  %771 = call float @dx.op.unary.f32(i32 7, float %768)  ; Saturate(value)
  %772 = call float @dx.op.unary.f32(i32 7, float %769)  ; Saturate(value)
  %773 = call float @dx.op.dot3.f32(i32 55, float %770, float %771, float %772, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %774 = add i32 %23, 32
  %775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %774, i32 undef)  ; BufferLoad(srv,index,wot)
  %776 = extractvalue %dx.types.ResRet.i32 %775, 0
  %777 = and i32 %776, 255
  %778 = uitofp i32 %777 to float
  %779 = lshr i32 %776, 8
  %780 = and i32 %779, 255
  %781 = uitofp i32 %780 to float
  %782 = fmul fast float %781, %773
  %783 = fadd fast float %782, %778
  %784 = fmul fast float %783, 0x3F70101020000000
  %785 = call float @dx.op.unary.f32(i32 7, float %784)  ; Saturate(value)
  %786 = and i32 %128, 8192
  %787 = icmp eq i32 %786, 0
  %788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %789 = extractvalue %dx.types.CBufRet.f32 %788, 0
  br i1 %787, label %796, label %790, !dx.controlflow.hints !68

; <label>:790                                     ; preds = %596
  %791 = add i32 %125, 176
  %792 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %791, i32 undef)  ; BufferLoad(srv,index,wot)
  %793 = extractvalue %dx.types.ResRet.f32 %792, 0
  %794 = fcmp fast oge float %793, 0.000000e+00
  %795 = select i1 %794, float %793, float %789
  br label %796

; <label>:796                                     ; preds = %790, %596
  %797 = phi float [ %795, %790 ], [ %789, %596 ]
  %798 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %231, i32 %232, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %799 = extractvalue %dx.types.ResRet.i32 %798, 0
  %800 = lshr i32 %799, 18
  %801 = uitofp i32 %800 to float
  %802 = fmul fast float %801, 0x3F4C00EBA0000000
  %803 = call float @dx.op.unary.f32(i32 21, float %802)  ; Exp(value)
  %804 = fadd fast float %803, -1.000000e+00
  %805 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %9, i32 0)  ; GetDimensions(handle,mipLevel)
  %806 = extractvalue %dx.types.Dimensions %805, 0
  %807 = sitofp i32 %806 to float
  %808 = extractvalue %dx.types.Dimensions %805, 1
  %809 = sitofp i32 %808 to float
  %810 = fcmp fast oge float %229, %807
  %811 = fcmp fast oge float %230, %809
  %812 = or i1 %810, %811
  %813 = select i1 %812, float 0x4197782600000000, float %804
  %814 = fadd fast float %718, -1.000000e+00
  %815 = fadd fast float %814, %751
  %816 = fadd fast float %719, -1.000000e+00
  %817 = fadd fast float %816, %752
  %818 = fadd fast float %720, -1.000000e+00
  %819 = fadd fast float %818, %753
  %820 = fmul fast float %815, %600
  %821 = fmul fast float %817, %600
  %822 = fmul fast float %819, %600
  %823 = fadd fast float %820, 1.000000e+00
  %824 = fadd fast float %821, 1.000000e+00
  %825 = fadd fast float %822, 1.000000e+00
  %826 = call float @dx.op.dot3.f32(i32 55, float %823, float %824, float %825, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %827 = fsub fast float 1.000000e+00, %826
  %828 = fmul fast float %797, %785
  %829 = fsub fast float 1.000000e+00, %785
  %830 = call float @dx.op.unary.f32(i32 7, float %829)  ; Saturate(value)
  %831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %832 = extractvalue %dx.types.CBufRet.f32 %831, 3
  %833 = fmul fast float %832, %830
  %834 = fadd fast float %833, %828
  %835 = and i32 %128, 2097152
  %836 = icmp eq i32 %835, 0
  br i1 %836, label %841, label %837, !dx.controlflow.hints !69

; <label>:837                                     ; preds = %796
  %838 = add i32 %125, 192
  %839 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %838, i32 undef)  ; BufferLoad(srv,index,wot)
  %840 = extractvalue %dx.types.ResRet.f32 %839, 0
  br label %844

; <label>:841                                     ; preds = %796
  %842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %843 = extractvalue %dx.types.CBufRet.f32 %842, 3
  br label %844

; <label>:844                                     ; preds = %841, %837
  %845 = phi float [ %840, %837 ], [ %843, %841 ]
  %846 = fmul fast float %755, %600
  %847 = fmul fast float %846, %759
  %848 = fmul fast float %847, %770
  %849 = fmul fast float %756, %600
  %850 = fmul fast float %849, %759
  %851 = fmul fast float %850, %771
  %852 = fmul fast float %757, %600
  %853 = fmul fast float %852, %759
  %854 = fmul fast float %853, %772
  %855 = icmp eq i32 %124, 3
  %856 = fcmp fast ogt float %45, %813
  %857 = and i1 %255, %856
  %858 = or i1 %855, %857
  %859 = icmp eq i32 %124, 2
  %860 = fcmp fast ole float %45, %813
  %861 = and i1 %859, %860
  %862 = or i1 %861, %858
  br i1 %857, label %863, label %969

; <label>:863                                     ; preds = %844
  %864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %865 = extractvalue %dx.types.CBufRet.f32 %864, 2
  %866 = extractvalue %dx.types.CBufRet.f32 %864, 3
  %867 = fmul fast float %865, %50
  %868 = fmul fast float %866, %51
  %869 = call float @dx.op.unary.f32(i32 7, float %867)  ; Saturate(value)
  %870 = call float @dx.op.unary.f32(i32 7, float %868)  ; Saturate(value)
  %871 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %869, float %870, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %872 = extractvalue %dx.types.ResRet.f32 %871, 0
  %873 = extractvalue %dx.types.ResRet.f32 %871, 1
  %874 = extractvalue %dx.types.ResRet.f32 %871, 2
  %875 = extractvalue %dx.types.ResRet.f32 %871, 3
  %876 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %869, float %870, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %877 = extractvalue %dx.types.ResRet.f32 %876, 0
  %878 = extractvalue %dx.types.ResRet.f32 %876, 1
  %879 = extractvalue %dx.types.ResRet.f32 %876, 2
  %880 = extractvalue %dx.types.ResRet.f32 %876, 3
  %881 = call float @dx.op.binary.f32(i32 35, float %873, float %874)  ; FMax(a,b)
  %882 = call float @dx.op.binary.f32(i32 35, float %872, float %881)  ; FMax(a,b)
  %883 = call float @dx.op.binary.f32(i32 35, float %882, float %875)  ; FMax(a,b)
  %884 = call float @dx.op.binary.f32(i32 36, float %878, float %879)  ; FMin(a,b)
  %885 = call float @dx.op.binary.f32(i32 36, float %877, float %884)  ; FMin(a,b)
  %886 = call float @dx.op.binary.f32(i32 36, float %885, float %880)  ; FMin(a,b)
  %887 = fmul fast float %883, 2.550000e+02
  %888 = fadd fast float %887, 0x3F70101020000000
  %889 = fptoui float %888 to i32
  %890 = fmul fast float %886, 2.550000e+02
  %891 = fadd fast float %890, 0x3F70101020000000
  %892 = fptoui float %891 to i32
  %893 = icmp ult i32 %889, %892
  br i1 %893, label %894, label %945

; <label>:894                                     ; preds = %863
  %895 = fcmp fast ogt float %44, 9.843750e-01
  %896 = fadd fast float %45, -4.000000e+00
  %897 = select i1 %895, float -4.000000e+00, float %896
  %898 = call float @dx.op.binary.f32(i32 35, float %897, float 0.000000e+00)  ; FMax(a,b)
  %899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %900 = extractvalue %dx.types.CBufRet.f32 %899, 0
  %901 = fadd fast float %900, %898
  %902 = extractvalue %dx.types.CBufRet.f32 %899, 2
  %903 = fmul fast float %901, %902
  %904 = call float @dx.op.unary.f32(i32 23, float %903)  ; Log(value)
  %905 = extractvalue %dx.types.CBufRet.f32 %899, 3
  %906 = fmul fast float %905, %904
  %907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %908 = extractvalue %dx.types.CBufRet.f32 %907, 2
  %909 = fmul fast float %906, %908
  %910 = call float @dx.op.unary.f32(i32 7, float %909)  ; Saturate(value)
  %911 = uitofp i32 %889 to float
  %912 = uitofp i32 %892 to float
  %913 = fadd fast float %911, 5.000000e-01
  %914 = fadd fast float %912, 5.000000e-01
  %915 = fmul fast float %908, %913
  %916 = fmul fast float %908, %914
  %917 = fadd fast float %915, 0x3F0FFB4800000000
  %918 = fadd fast float %916, 0xBF0FFB4800000000
  %919 = call float @dx.op.binary.f32(i32 35, float %910, float %917)  ; FMax(a,b)
  %920 = call float @dx.op.binary.f32(i32 36, float %919, float %918)  ; FMin(a,b)
  %921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %922 = extractvalue %dx.types.CBufRet.f32 %921, 1
  %923 = extractvalue %dx.types.CBufRet.f32 %921, 2
  %924 = extractvalue %dx.types.CBufRet.f32 %921, 0
  %925 = fmul fast float %922, %920
  %926 = fadd fast float %924, %925
  %927 = fadd fast float %924, %923
  %928 = fsub fast float %922, %923
  %929 = fadd fast float %928, %924
  %930 = call float @dx.op.binary.f32(i32 35, float %926, float %927)  ; FMax(a,b)
  %931 = call float @dx.op.binary.f32(i32 36, float %930, float %929)  ; FMin(a,b)
  %932 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %17, float %869, float %870, float %931, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %933 = extractvalue %dx.types.ResRet.f32 %932, 0
  %934 = extractvalue %dx.types.ResRet.f32 %932, 1
  %935 = extractvalue %dx.types.ResRet.f32 %932, 2
  %936 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %869, float %870, float %931, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %937 = extractvalue %dx.types.ResRet.f32 %936, 0
  %938 = extractvalue %dx.types.ResRet.f32 %936, 1
  %939 = extractvalue %dx.types.ResRet.f32 %936, 2
  %940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %941 = extractvalue %dx.types.CBufRet.f32 %940, 1
  %942 = fmul fast float %941, %937
  %943 = fmul fast float %941, %938
  %944 = fmul fast float %941, %939
  br label %945

; <label>:945                                     ; preds = %894, %863
  %946 = phi float [ %933, %894 ], [ 1.000000e+00, %863 ]
  %947 = phi float [ %934, %894 ], [ 1.000000e+00, %863 ]
  %948 = phi float [ %935, %894 ], [ 1.000000e+00, %863 ]
  %949 = phi float [ %942, %894 ], [ 0.000000e+00, %863 ]
  %950 = phi float [ %943, %894 ], [ 0.000000e+00, %863 ]
  %951 = phi float [ %944, %894 ], [ 0.000000e+00, %863 ]
  %952 = fmul fast float %949, %827
  %953 = fmul fast float %950, %827
  %954 = fmul fast float %951, %827
  %955 = call float @dx.op.dot3.f32(i32 55, float %946, float %947, float %948, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %956 = call float @dx.op.dot3.f32(i32 55, float %952, float %953, float %954, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %957 = select i1 %108, float %955, float %946
  %958 = select i1 %108, float %955, float %947
  %959 = select i1 %108, float 1.000000e+00, float %948
  %960 = select i1 %108, float %956, float %952
  %961 = select i1 %108, float 0.000000e+00, float %953
  %962 = select i1 %108, float 0.000000e+00, float %954
  %963 = fmul fast float %957, %848
  %964 = fmul fast float %958, %851
  %965 = fmul fast float %959, %854
  %966 = fadd fast float %963, %960
  %967 = fadd fast float %964, %961
  %968 = fadd fast float %962, %965
  br label %969

; <label>:969                                     ; preds = %945, %844
  %970 = phi float [ %813, %945 ], [ %45, %844 ]
  %971 = phi float [ %966, %945 ], [ %848, %844 ]
  %972 = phi float [ %967, %945 ], [ %851, %844 ]
  %973 = phi float [ %968, %945 ], [ %854, %844 ]
  %974 = phi float [ %946, %945 ], [ 1.000000e+00, %844 ]
  br i1 %862, label %1270, label %975

; <label>:975                                     ; preds = %969
  %976 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %18, float %28, float %29, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %977 = extractvalue %dx.types.ResRet.f32 %976, 0
  %978 = extractvalue %dx.types.ResRet.f32 %976, 1
  %979 = extractvalue %dx.types.ResRet.f32 %976, 2
  %980 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %18, float %28, float %29, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %981 = extractvalue %dx.types.ResRet.f32 %980, 0
  %982 = extractvalue %dx.types.ResRet.f32 %980, 1
  %983 = extractvalue %dx.types.ResRet.f32 %980, 2
  %984 = fmul fast float %977, %827
  %985 = fmul fast float %978, %827
  %986 = fmul fast float %979, %827
  %987 = fmul fast float %981, %974
  %988 = call float @dx.op.dot3.f32(i32 55, float %981, float %982, float %983, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %989 = call float @dx.op.dot3.f32(i32 55, float %984, float %985, float %986, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %990 = select i1 %108, float %988, float %981
  %991 = select i1 %108, float %988, float %982
  %992 = select i1 %108, float 1.000000e+00, float %983
  %993 = select i1 %108, float %989, float %984
  %994 = select i1 %108, float 0.000000e+00, float %985
  %995 = select i1 %108, float 0.000000e+00, float %986
  %996 = fmul fast float %990, %971
  %997 = fmul fast float %991, %972
  %998 = fmul fast float %992, %973
  %999 = fadd fast float %996, %993
  %1000 = fadd fast float %997, %994
  %1001 = fadd fast float %998, %995
  %1002 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1003 = extractvalue %dx.types.CBufRet.i32 %1002, 0
  %1004 = icmp eq i32 %1003, 0
  br i1 %1004, label %1270, label %1005, !dx.controlflow.hints !70

; <label>:1005                                    ; preds = %975
  %1006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1007 = extractvalue %dx.types.CBufRet.f32 %1006, 2
  %1008 = extractvalue %dx.types.CBufRet.f32 %1006, 3
  %1009 = fmul fast float %1007, %50
  %1010 = fmul fast float %1008, %51
  %1011 = fmul fast float %1009, 2.000000e+00
  %1012 = fmul fast float %1010, 2.000000e+00
  %1013 = fsub fast float 1.000000e+00, %1011
  %1014 = fsub fast float 1.000000e+00, %1012
  %1015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1016 = extractvalue %dx.types.CBufRet.f32 %1015, 0
  %1017 = extractvalue %dx.types.CBufRet.f32 %1015, 1
  %1018 = extractvalue %dx.types.CBufRet.f32 %1015, 2
  %1019 = fmul fast float %1013, %1016
  %1020 = fmul fast float %1013, %1017
  %1021 = fmul fast float %1013, %1018
  %1022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1023 = extractvalue %dx.types.CBufRet.f32 %1022, 0
  %1024 = extractvalue %dx.types.CBufRet.f32 %1022, 1
  %1025 = extractvalue %dx.types.CBufRet.f32 %1022, 2
  %1026 = fmul fast float %1014, %1023
  %1027 = fmul fast float %1014, %1024
  %1028 = fmul fast float %1014, %1025
  %1029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1030 = extractvalue %dx.types.CBufRet.f32 %1029, 0
  %1031 = extractvalue %dx.types.CBufRet.f32 %1029, 1
  %1032 = extractvalue %dx.types.CBufRet.f32 %1029, 2
  %1033 = fadd fast float %1026, %1030
  %1034 = fadd fast float %1033, %1019
  %1035 = fadd fast float %1027, %1031
  %1036 = fadd fast float %1035, %1020
  %1037 = fadd fast float %1028, %1032
  %1038 = fadd fast float %1037, %1021
  %1039 = fmul fast float %1034, %970
  %1040 = fmul fast float %1036, %970
  %1041 = fmul fast float %1038, %970
  %1042 = fmul fast float %1039, %1039
  %1043 = fmul fast float %1040, %1040
  %1044 = fadd fast float %1042, %1043
  %1045 = fmul fast float %1041, %1041
  %1046 = fadd fast float %1044, %1045
  %1047 = call float @dx.op.unary.f32(i32 24, float %1046)  ; Sqrt(value)
  %1048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1049 = extractvalue %dx.types.CBufRet.f32 %1048, 0
  %1050 = fsub fast float %1047, %1049
  %1051 = extractvalue %dx.types.CBufRet.f32 %1048, 2
  %1052 = fmul fast float %1050, %1051
  %1053 = call float @dx.op.unary.f32(i32 7, float %1052)  ; Saturate(value)
  %1054 = fadd fast float %1053, -5.000000e-01
  %1055 = fmul fast float %1054, 2.000000e+00
  %1056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1057 = extractvalue %dx.types.CBufRet.f32 %1056, 2
  %1058 = call float @dx.op.binary.f32(i32 36, float %1057, float %1055)  ; FMin(a,b)
  %1059 = fsub fast float -0.000000e+00, %1057
  %1060 = fcmp fast ogt float %1058, %1059
  br i1 %1060, label %1061, label %1270, !dx.controlflow.hints !71

; <label>:1061                                    ; preds = %1005
  %1062 = fmul fast float %1058, 5.000000e-01
  %1063 = fadd fast float %1062, 5.000000e-01
  %1064 = call float @dx.op.unary.f32(i32 22, float %1063)  ; Frc(value)
  %1065 = call float @dx.op.unary.f32(i32 27, float %1064)  ; Round_ni(value)
  %1066 = call float @dx.op.unary.f32(i32 22, float %1064)  ; Frc(value)
  %1067 = fmul fast float %1066, 2.000000e+00
  %1068 = fadd fast float %1067, -1.000000e+00
  %1069 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %18, float %1009, float %1010, float %1065, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1070 = extractvalue %dx.types.ResRet.f32 %1069, 0
  %1071 = extractvalue %dx.types.ResRet.f32 %1069, 1
  %1072 = extractvalue %dx.types.ResRet.f32 %1069, 2
  %1073 = extractvalue %dx.types.ResRet.f32 %1069, 3
  %1074 = fadd fast float %1070, -5.000000e-01
  %1075 = fadd fast float %1072, -5.000000e-01
  %1076 = fmul fast float %1074, 0xBFD5555560000000
  %1077 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1075, float %1076)  ; FMad(a,b,c)
  %1078 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1071, float 0.000000e+00)  ; FMad(a,b,c)
  %1079 = fadd fast float %1078, %1073
  %1080 = fmul fast float %1074, -7.500000e-01
  %1081 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1075, float %1080)  ; FMad(a,b,c)
  %1082 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1071, float 0.000000e+00)  ; FMad(a,b,c)
  %1083 = fadd fast float %1082, %1073
  %1084 = call float @dx.op.binary.f32(i32 35, float %1077, float -1.000000e+00)  ; FMax(a,b)
  %1085 = call float @dx.op.binary.f32(i32 35, float %1079, float -1.000000e+00)  ; FMax(a,b)
  %1086 = call float @dx.op.binary.f32(i32 35, float %1081, float -1.000000e+00)  ; FMax(a,b)
  %1087 = call float @dx.op.binary.f32(i32 35, float %1083, float -1.000000e+00)  ; FMax(a,b)
  %1088 = call float @dx.op.binary.f32(i32 36, float %1084, float 1.000000e+00)  ; FMin(a,b)
  %1089 = call float @dx.op.binary.f32(i32 36, float %1085, float 1.000000e+00)  ; FMin(a,b)
  %1090 = call float @dx.op.binary.f32(i32 36, float %1086, float 1.000000e+00)  ; FMin(a,b)
  %1091 = call float @dx.op.binary.f32(i32 36, float %1087, float 1.000000e+00)  ; FMin(a,b)
  %1092 = fcmp fast olt float %1088, 0x3FEFFF8020000000
  br i1 %1092, label %1093, label %1208, !dx.controlflow.hints !72

; <label>:1093                                    ; preds = %1061
  %1094 = extractvalue %dx.types.CBufRet.f32 %1056, 3
  %1095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1096 = extractvalue %dx.types.CBufRet.f32 %1095, 0
  %1097 = extractvalue %dx.types.CBufRet.f32 %1095, 1
  %1098 = extractvalue %dx.types.CBufRet.f32 %1095, 2
  %1099 = extractvalue %dx.types.CBufRet.f32 %1095, 3
  %1100 = fsub fast float %1096, %1088
  %1101 = fsub fast float %1097, %1089
  %1102 = fsub fast float %1098, %1090
  %1103 = fsub fast float %1099, %1091
  %1104 = fmul fast float %1100, %1094
  %1105 = fmul fast float %1101, %1094
  %1106 = fmul fast float %1102, %1094
  %1107 = fmul fast float %1103, %1094
  %1108 = fadd fast float %1104, %1088
  %1109 = fadd fast float %1105, %1089
  %1110 = fsub fast float -0.000000e+00, %1109
  %1111 = fadd fast float %1106, %1090
  %1112 = fadd fast float %1107, %1091
  %1113 = fmul fast float %1108, %1108
  %1114 = fsub fast float %1109, %1113
  %1115 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1114)  ; FMax(a,b)
  %1116 = fdiv fast float 1.000000e+00, %1115
  %1117 = fmul fast float %1109, %1108
  %1118 = fsub fast float %1111, %1117
  %1119 = fsub fast float %1068, %1108
  %1120 = fmul fast float %1068, %1068
  %1121 = fsub fast float %1120, %1109
  %1122 = fmul fast float %1119, %1116
  %1123 = fmul fast float %1122, %1118
  %1124 = fsub fast float %1121, %1123
  %1125 = fmul fast float %1109, %1109
  %1126 = fsub fast float %1112, %1125
  %1127 = fmul fast float %1118, %1118
  %1128 = fmul fast float %1127, %1116
  %1129 = fsub fast float %1126, %1128
  %1130 = fdiv fast float %1124, %1129
  %1131 = fmul fast float %1118, %1130
  %1132 = fsub fast float %1119, %1131
  %1133 = fmul fast float %1132, %1116
  %1134 = fmul fast float %1133, %1108
  %1135 = fsub fast float 1.000000e+00, %1134
  %1136 = fmul fast float %1109, %1130
  %1137 = fsub fast float %1135, %1136
  %1138 = fmul fast float %1133, %1133
  %1139 = fmul fast float %1130, 4.000000e+00
  %1140 = fmul fast float %1139, %1137
  %1141 = fsub fast float %1138, %1140
  %1142 = call float @dx.op.unary.f32(i32 24, float %1141)  ; Sqrt(value)
  %1143 = fcmp fast oge float %1133, 0.000000e+00
  %1144 = fsub fast float -0.000000e+00, %1142
  %1145 = select i1 %1143, float %1144, float %1142
  %1146 = fsub fast float %1145, %1133
  %1147 = fdiv fast float %1146, %1130
  %1148 = fdiv fast float %1137, %1146
  %1149 = fmul fast float %1147, 5.000000e-01
  %1150 = fmul fast float %1148, 2.000000e+00
  %1151 = select i1 %1143, float %1149, float %1150
  %1152 = select i1 %1143, float %1150, float %1149
  %1153 = call float @dx.op.binary.f32(i32 35, float %1151, float %1152)  ; FMax(a,b)
  %1154 = call float @dx.op.binary.f32(i32 36, float %1151, float %1152)  ; FMin(a,b)
  %1155 = fcmp fast ogt float %1068, %1154
  br i1 %1155, label %1156, label %1166

; <label>:1156                                    ; preds = %1093
  %1157 = fsub fast float %1068, %1154
  %1158 = fsub fast float %1153, %1154
  %1159 = fmul fast float %1157, %1158
  %1160 = fmul fast float %1153, %1068
  %1161 = fadd fast float %1153, %1068
  %1162 = fmul fast float %1161, %1108
  %1163 = fadd fast float %1160, %1109
  %1164 = fsub fast float %1163, %1162
  %1165 = fdiv fast float %1164, %1159
  br label %1166

; <label>:1166                                    ; preds = %1156, %1093
  %1167 = phi float [ %1165, %1156 ], [ 0.000000e+00, %1093 ]
  %1168 = fcmp fast ogt float %1068, %1153
  %1169 = fsub fast float %1068, %1153
  br i1 %1168, label %1170, label %1180

; <label>:1170                                    ; preds = %1166
  %1171 = fsub fast float %1153, %1154
  %1172 = fmul fast float %1171, %1169
  %1173 = fmul fast float %1154, %1068
  %1174 = fadd fast float %1154, %1068
  %1175 = fmul fast float %1174, %1108
  %1176 = fsub fast float %1110, %1173
  %1177 = fadd fast float %1176, %1175
  %1178 = fdiv fast float %1177, %1172
  %1179 = fadd fast float %1178, %1167
  br label %1180

; <label>:1180                                    ; preds = %1170, %1166
  %1181 = phi float [ %1179, %1170 ], [ %1167, %1166 ]
  %1182 = fsub fast float %1068, %1154
  %1183 = fmul fast float %1182, %1169
  %1184 = fmul fast float %1154, %1153
  %1185 = fadd fast float %1154, %1153
  %1186 = fmul fast float %1185, %1108
  %1187 = fadd fast float %1184, %1109
  %1188 = fsub fast float %1187, %1186
  %1189 = fdiv fast float %1188, %1183
  %1190 = call float @dx.op.unary.f32(i32 7, float %1181)  ; Saturate(value)
  %1191 = fcmp fast oeq float %845, 0.000000e+00
  %1192 = extractvalue %dx.types.CBufRet.f32 %1056, 0
  %1193 = fcmp fast oeq float %1192, 0.000000e+00
  %1194 = or i1 %1191, %1193
  %1195 = fmul fast float %1192, 2.000000e+00
  %1196 = fadd fast float %1057, %1058
  %1197 = fdiv fast float %1196, %1195
  %1198 = call float @dx.op.unary.f32(i32 7, float %1197)  ; Saturate(value)
  %1199 = fmul fast float %1198, 2.000000e+00
  %1200 = fsub fast float 3.000000e+00, %1199
  %1201 = fmul fast float %1198, %1198
  %1202 = fmul fast float %1201, %1200
  %1203 = select i1 %1194, float 1.000000e+00, float %1202
  %1204 = fmul fast float %1189, %845
  %1205 = fadd fast float %1190, %1204
  %1206 = call float @dx.op.unary.f32(i32 7, float %1205)  ; Saturate(value)
  %1207 = fmul fast float %1203, %1206
  br label %1208

; <label>:1208                                    ; preds = %1180, %1061
  %1209 = phi float [ %1207, %1180 ], [ 0.000000e+00, %1061 ]
  %1210 = fsub fast float 1.000000e+00, %1209
  %1211 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %18, float %1009, float %1010, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1212 = extractvalue %dx.types.ResRet.f32 %1211, 0
  %1213 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1214 = extractvalue %dx.types.CBufRet.i32 %1213, 2
  %1215 = icmp eq i32 %1214, 0
  br i1 %1215, label %1221, label %1216

; <label>:1216                                    ; preds = %1208
  %1217 = call float @dx.op.unary.f32(i32 7, float %1209)  ; Saturate(value)
  %1218 = fadd fast float %1212, -1.000000e+00
  %1219 = fmul fast float %1217, %1218
  %1220 = fadd fast float %1219, 1.000000e+00
  br label %1221

; <label>:1221                                    ; preds = %1216, %1208
  %1222 = phi float [ %1220, %1216 ], [ %1210, %1208 ]
  %1223 = call float @dx.op.binary.f32(i32 35, float %1212, float %1222)  ; FMax(a,b)
  %1224 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %1225 = extractvalue %dx.types.CBufRet.i32 %1224, 2
  %1226 = and i32 %1225, 1
  %1227 = icmp eq i32 %1226, 0
  %1228 = fcmp fast une float %1223, 1.000000e+00
  %1229 = and i1 %1228, %1227
  br i1 %1229, label %1230, label %1249

; <label>:1230                                    ; preds = %1221
  %1231 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %18, float %1009, float %1010, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1232 = extractvalue %dx.types.ResRet.f32 %1231, 0
  %1233 = extractvalue %dx.types.ResRet.f32 %1231, 1
  %1234 = extractvalue %dx.types.ResRet.f32 %1231, 2
  %1235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1236 = extractvalue %dx.types.CBufRet.f32 %1235, 1
  %1237 = fmul fast float %1236, %1232
  %1238 = fmul fast float %1236, %1233
  %1239 = fmul fast float %1236, %1234
  %1240 = fcmp fast ogt float %1212, 0x3FEFFF2E40000000
  %1241 = fsub fast float 1.000000e+00, %1223
  %1242 = fsub fast float 1.000000e+00, %1212
  %1243 = fdiv fast float %1241, %1242
  %1244 = call float @dx.op.unary.f32(i32 7, float %1243)  ; Saturate(value)
  %1245 = select i1 %1240, float 0.000000e+00, float %1244
  %1246 = fmul fast float %1237, %1245
  %1247 = fmul fast float %1238, %1245
  %1248 = fmul fast float %1239, %1245
  br label %1249

; <label>:1249                                    ; preds = %1230, %1221
  %1250 = phi float [ 0.000000e+00, %1221 ], [ %1246, %1230 ]
  %1251 = phi float [ 0.000000e+00, %1221 ], [ %1247, %1230 ]
  %1252 = phi float [ 0.000000e+00, %1221 ], [ %1248, %1230 ]
  %1253 = fmul fast float %1250, %827
  %1254 = fmul fast float %1251, %827
  %1255 = fmul fast float %1252, %827
  %1256 = fmul fast float %1223, %987
  %1257 = call float @dx.op.dot3.f32(i32 55, float %1223, float %1223, float %1223, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1258 = call float @dx.op.dot3.f32(i32 55, float %1253, float %1254, float %1255, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1259 = select i1 %108, float %1257, float %1223
  %1260 = select i1 %108, float 1.000000e+00, float %1223
  %1261 = select i1 %108, float %1258, float %1253
  %1262 = select i1 %108, float 0.000000e+00, float %1254
  %1263 = select i1 %108, float 0.000000e+00, float %1255
  %1264 = fmul fast float %1259, %999
  %1265 = fmul fast float %1259, %1000
  %1266 = fmul fast float %1260, %1001
  %1267 = fadd fast float %1264, %1261
  %1268 = fadd fast float %1265, %1262
  %1269 = fadd fast float %1263, %1266
  br label %1270

; <label>:1270                                    ; preds = %1249, %1005, %975, %969
  %1271 = phi float [ %971, %969 ], [ %999, %975 ], [ %1267, %1249 ], [ %999, %1005 ]
  %1272 = phi float [ %972, %969 ], [ %1000, %975 ], [ %1268, %1249 ], [ %1000, %1005 ]
  %1273 = phi float [ %973, %969 ], [ %1001, %975 ], [ %1269, %1249 ], [ %1001, %1005 ]
  %1274 = phi float [ %974, %969 ], [ %987, %975 ], [ %1256, %1249 ], [ %987, %1005 ]
  %1275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1276 = extractvalue %dx.types.CBufRet.f32 %1275, 2
  %1277 = extractvalue %dx.types.CBufRet.f32 %1275, 3
  %1278 = fmul fast float %1276, %50
  %1279 = fmul fast float %1277, %51
  %1280 = call float @dx.op.unary.f32(i32 7, float %1278)  ; Saturate(value)
  %1281 = call float @dx.op.unary.f32(i32 7, float %1279)  ; Saturate(value)
  %1282 = select i1 %862, i32 2, i32 0
  %1283 = or i32 %1282, 1
  %1284 = uitofp i32 %1283 to float
  %1285 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %1280, float %1281, float %1284, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1286 = extractvalue %dx.types.ResRet.f32 %1285, 0
  %1287 = extractvalue %dx.types.ResRet.f32 %1285, 1
  %1288 = extractvalue %dx.types.ResRet.f32 %1285, 2
  %1289 = extractvalue %dx.types.ResRet.f32 %1285, 3
  %1290 = add nuw nsw i32 %1282, 2
  %1291 = uitofp i32 %1290 to float
  %1292 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %1280, float %1281, float %1291, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1293 = extractvalue %dx.types.ResRet.f32 %1292, 0
  %1294 = extractvalue %dx.types.ResRet.f32 %1292, 1
  %1295 = extractvalue %dx.types.ResRet.f32 %1292, 2
  %1296 = extractvalue %dx.types.ResRet.f32 %1292, 3
  %1297 = call float @dx.op.binary.f32(i32 35, float %1287, float %1288)  ; FMax(a,b)
  %1298 = call float @dx.op.binary.f32(i32 35, float %1286, float %1297)  ; FMax(a,b)
  %1299 = call float @dx.op.binary.f32(i32 35, float %1298, float %1289)  ; FMax(a,b)
  %1300 = call float @dx.op.binary.f32(i32 36, float %1294, float %1295)  ; FMin(a,b)
  %1301 = call float @dx.op.binary.f32(i32 36, float %1293, float %1300)  ; FMin(a,b)
  %1302 = call float @dx.op.binary.f32(i32 36, float %1301, float %1296)  ; FMin(a,b)
  %1303 = fmul fast float %1299, 2.550000e+02
  %1304 = fadd fast float %1303, 0x3F70101020000000
  %1305 = fptoui float %1304 to i32
  %1306 = fmul fast float %1302, 2.550000e+02
  %1307 = fadd fast float %1306, 0x3F70101020000000
  %1308 = fptoui float %1307 to i32
  %1309 = icmp ult i32 %1305, %1308
  br i1 %1309, label %1310, label %1362

; <label>:1310                                    ; preds = %1270
  %1311 = fcmp fast ogt float %44, 9.843750e-01
  %1312 = fadd fast float %970, -4.000000e+00
  %1313 = select i1 %1311, float -4.000000e+00, float %1312
  %1314 = call float @dx.op.binary.f32(i32 35, float %1313, float 0.000000e+00)  ; FMax(a,b)
  %1315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1316 = extractvalue %dx.types.CBufRet.f32 %1315, 0
  %1317 = fadd fast float %1316, %1314
  %1318 = extractvalue %dx.types.CBufRet.f32 %1315, 2
  %1319 = fmul fast float %1317, %1318
  %1320 = call float @dx.op.unary.f32(i32 23, float %1319)  ; Log(value)
  %1321 = extractvalue %dx.types.CBufRet.f32 %1315, 3
  %1322 = fmul fast float %1321, %1320
  %1323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1324 = extractvalue %dx.types.CBufRet.f32 %1323, 2
  %1325 = fmul fast float %1322, %1324
  %1326 = call float @dx.op.unary.f32(i32 7, float %1325)  ; Saturate(value)
  %1327 = uitofp i32 %1305 to float
  %1328 = uitofp i32 %1308 to float
  %1329 = fadd fast float %1327, 5.000000e-01
  %1330 = fadd fast float %1328, 5.000000e-01
  %1331 = fmul fast float %1324, %1329
  %1332 = fmul fast float %1324, %1330
  %1333 = fadd fast float %1331, 0x3F0FFB4800000000
  %1334 = fadd fast float %1332, 0xBF0FFB4800000000
  %1335 = call float @dx.op.binary.f32(i32 35, float %1326, float %1333)  ; FMax(a,b)
  %1336 = call float @dx.op.binary.f32(i32 36, float %1335, float %1334)  ; FMin(a,b)
  %1337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1338 = extractvalue %dx.types.CBufRet.f32 %1337, 1
  %1339 = extractvalue %dx.types.CBufRet.f32 %1337, 2
  %1340 = extractvalue %dx.types.CBufRet.f32 %1337, 0
  %1341 = select i1 %862, float %1340, float 0.000000e+00
  %1342 = fmul fast float %1338, %1336
  %1343 = fadd fast float %1341, %1342
  %1344 = fadd fast float %1341, %1339
  %1345 = fsub fast float %1338, %1339
  %1346 = fadd fast float %1345, %1341
  %1347 = call float @dx.op.binary.f32(i32 35, float %1343, float %1344)  ; FMax(a,b)
  %1348 = call float @dx.op.binary.f32(i32 36, float %1347, float %1346)  ; FMin(a,b)
  %1349 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %17, float %1280, float %1281, float %1348, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1350 = extractvalue %dx.types.ResRet.f32 %1349, 0
  %1351 = extractvalue %dx.types.ResRet.f32 %1349, 1
  %1352 = extractvalue %dx.types.ResRet.f32 %1349, 2
  %1353 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %1280, float %1281, float %1348, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1354 = extractvalue %dx.types.ResRet.f32 %1353, 0
  %1355 = extractvalue %dx.types.ResRet.f32 %1353, 1
  %1356 = extractvalue %dx.types.ResRet.f32 %1353, 2
  %1357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1358 = extractvalue %dx.types.CBufRet.f32 %1357, 1
  %1359 = fmul fast float %1358, %1354
  %1360 = fmul fast float %1358, %1355
  %1361 = fmul fast float %1358, %1356
  br label %1362

; <label>:1362                                    ; preds = %1310, %1270
  %1363 = phi float [ %1350, %1310 ], [ 1.000000e+00, %1270 ]
  %1364 = phi float [ %1351, %1310 ], [ 1.000000e+00, %1270 ]
  %1365 = phi float [ %1352, %1310 ], [ 1.000000e+00, %1270 ]
  %1366 = phi float [ %1359, %1310 ], [ 0.000000e+00, %1270 ]
  %1367 = phi float [ %1360, %1310 ], [ 0.000000e+00, %1270 ]
  %1368 = phi float [ %1361, %1310 ], [ 0.000000e+00, %1270 ]
  %1369 = fmul fast float %1366, %827
  %1370 = fmul fast float %1367, %827
  %1371 = fmul fast float %1368, %827
  %1372 = fmul fast float %1363, %1274
  %1373 = call float @dx.op.dot3.f32(i32 55, float %1363, float %1364, float %1365, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1374 = call float @dx.op.dot3.f32(i32 55, float %1369, float %1370, float %1371, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1375 = select i1 %108, float %1373, float %1363
  %1376 = select i1 %108, float %1373, float %1364
  %1377 = select i1 %108, float 1.000000e+00, float %1365
  %1378 = select i1 %108, float %1374, float %1369
  %1379 = select i1 %108, float 0.000000e+00, float %1370
  %1380 = select i1 %108, float 0.000000e+00, float %1371
  %1381 = fmul fast float %1375, %1271
  %1382 = fmul fast float %1376, %1272
  %1383 = fmul fast float %1377, %1273
  %1384 = fadd fast float %1381, %1378
  %1385 = fadd fast float %1382, %1379
  %1386 = fadd fast float %1380, %1383
  %1387 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1388 = extractvalue %dx.types.CBufRet.i32 %1387, 3
  %1389 = and i32 %1388, 3
  %1390 = icmp ne i32 %1389, 0
  %1391 = and i32 %1388, 4
  %1392 = icmp ne i32 %1391, 0
  %1393 = and i1 %1390, %1392
  %1394 = and i1 %108, %1393
  br i1 %1394, label %1395, label %1401

; <label>:1395                                    ; preds = %1362
  %1396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1397 = extractvalue %dx.types.CBufRet.f32 %1396, 1
  %1398 = fadd fast float %1372, -1.000000e+00
  %1399 = fmul fast float %1397, %1398
  %1400 = fadd fast float %1399, 1.000000e+00
  br label %1401

; <label>:1401                                    ; preds = %1395, %1362
  %1402 = phi float [ %1400, %1395 ], [ %1372, %1362 ]
  %1403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1404 = extractvalue %dx.types.CBufRet.f32 %1403, 0
  br i1 %108, label %1405, label %1426

; <label>:1405                                    ; preds = %1401
  %1406 = fadd fast float %1384, %1385
  %1407 = fmul fast float %1404, %1406
  %1408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1409 = extractvalue %dx.types.CBufRet.f32 %1408, 3
  %1410 = extractvalue %dx.types.CBufRet.f32 %831, 1
  %1411 = fsub fast float %834, %1410
  %1412 = extractvalue %dx.types.CBufRet.f32 %831, 2
  %1413 = fmul fast float %1411, %1412
  %1414 = call float @dx.op.unary.f32(i32 7, float %1413)  ; Saturate(value)
  %1415 = fsub fast float %1414, %1409
  %1416 = fmul fast float %1415, %1402
  %1417 = fadd fast float %1416, %1409
  %1418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1419 = extractvalue %dx.types.CBufRet.f32 %1418, 0
  %1420 = fsub fast float %1417, %1419
  %1421 = fmul fast float %1420, 1.000000e+01
  %1422 = call float @dx.op.unary.f32(i32 7, float %1421)  ; Saturate(value)
  %1423 = fmul fast float %1422, %827
  %1424 = fsub fast float %827, %1423
  %1425 = fmul fast float %1424, %1417
  br label %1435

; <label>:1426                                    ; preds = %1401
  %1427 = fmul fast float %1404, %1384
  %1428 = fmul fast float %1404, %1385
  %1429 = fmul fast float %1404, %1386
  %1430 = call float @dx.op.binary.f32(i32 35, float %1428, float %1429)  ; FMax(a,b)
  %1431 = call float @dx.op.binary.f32(i32 35, float %1427, float %1430)  ; FMax(a,b)
  %1432 = call float @dx.op.binary.f32(i32 35, float %1431, float %827)  ; FMax(a,b)
  %1433 = fcmp fast ugt float %1432, 0x3F10000000000000
  br i1 %1433, label %1435, label %1434

; <label>:1434                                    ; preds = %1426
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1435

; <label>:1435                                    ; preds = %1434, %1426, %1405
  %1436 = phi float [ %1407, %1405 ], [ %1427, %1434 ], [ %1427, %1426 ]
  %1437 = phi float [ %1425, %1405 ], [ %1428, %1434 ], [ %1428, %1426 ]
  %1438 = phi float [ %1424, %1405 ], [ %1429, %1434 ], [ %1429, %1426 ]
  %1439 = phi float [ %1424, %1405 ], [ %827, %1434 ], [ %827, %1426 ]
  %1440 = fadd fast float %537, 0x3FE3C6EF40000000
  %1441 = call float @dx.op.unary.f32(i32 22, float %1440)  ; Frc(value)
  %1442 = call float @dx.op.unary.f32(i32 23, float %1436)  ; Log(value)
  %1443 = fadd fast float %1442, -7.000000e+00
  %1444 = call float @dx.op.unary.f32(i32 21, float %1443)  ; Exp(value)
  %1445 = fmul fast float %1441, 2.000000e+00
  %1446 = fadd fast float %1445, -1.000000e+00
  %1447 = fmul fast float %1444, %1446
  %1448 = fcmp fast ogt float %1436, 0.000000e+00
  %1449 = select i1 %1448, float %1447, float 0.000000e+00
  %1450 = fadd fast float %1449, %1436
  %1451 = fadd fast float %537, 0x3FF3C6EF40000000
  %1452 = call float @dx.op.unary.f32(i32 22, float %1451)  ; Frc(value)
  %1453 = call float @dx.op.unary.f32(i32 23, float %1437)  ; Log(value)
  %1454 = fadd fast float %1453, -7.000000e+00
  %1455 = call float @dx.op.unary.f32(i32 21, float %1454)  ; Exp(value)
  %1456 = fmul fast float %1452, 2.000000e+00
  %1457 = fadd fast float %1456, -1.000000e+00
  %1458 = fmul fast float %1455, %1457
  %1459 = fcmp fast ogt float %1437, 0.000000e+00
  %1460 = select i1 %1459, float %1458, float 0.000000e+00
  %1461 = fadd fast float %1460, %1437
  %1462 = fadd fast float %537, 0x3FFDAA66E0000000
  %1463 = call float @dx.op.unary.f32(i32 22, float %1462)  ; Frc(value)
  %1464 = call float @dx.op.unary.f32(i32 23, float %1438)  ; Log(value)
  %1465 = fadd fast float %1464, -6.000000e+00
  %1466 = call float @dx.op.unary.f32(i32 21, float %1465)  ; Exp(value)
  %1467 = fmul fast float %1463, 2.000000e+00
  %1468 = fadd fast float %1467, -1.000000e+00
  %1469 = fmul fast float %1466, %1468
  %1470 = fcmp fast ogt float %1438, 0.000000e+00
  %1471 = select i1 %1470, float %1469, float 0.000000e+00
  %1472 = fadd fast float %1471, %1438
  %1473 = select i1 %108, float %1437, float %1461
  %1474 = select i1 %108, float %1438, float %1472
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1475 = call float @dx.op.binary.f32(i32 36, float %1450, float 3.225500e+04)  ; FMin(a,b)
  %1476 = call float @dx.op.binary.f32(i32 36, float %1473, float 3.225500e+04)  ; FMin(a,b)
  %1477 = call float @dx.op.binary.f32(i32 36, float %1474, float 3.225500e+04)  ; FMin(a,b)
  %1478 = call float @dx.op.binary.f32(i32 36, float %1439, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1475)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1476)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1477)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1478)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1439)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1439)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1439)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1439)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!34 = !{[37 x i32] [i32 35, i32 8, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 254, i32 255, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255, i32 255, i32 0, i32 255, i32 255, i32 255, i32 0, i32 255, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 255]}
!35 = !{void ()* @ps_main, !"ps_main", !36, !4, !61}
!36 = !{!37, !57, null}
!37 = !{!38, !41, !42, !44, !47, !49, !51, !53, !54, !56}
!38 = !{i32 0, !"SV_Position", i8 9, i8 3, !39, i8 4, i32 1, i8 4, i32 0, i8 0, !40}
!39 = !{i32 0}
!40 = !{i32 3, i32 15}
!41 = !{i32 1, !"COLOR", i8 9, i8 0, !39, i8 2, i32 1, i8 4, i32 1, i8 0, !40}
!42 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !39, i8 2, i32 1, i8 2, i32 2, i8 0, !43}
!43 = !{i32 3, i32 3}
!44 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !45, i8 1, i32 1, i8 4, i32 3, i8 0, !46}
!45 = !{i32 2}
!46 = !{i32 3, i32 7}
!47 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !48, i8 2, i32 1, i8 4, i32 4, i8 0, !46}
!48 = !{i32 3}
!49 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !50, i8 3, i32 1, i8 2, i32 5, i8 0, !43}
!50 = !{i32 5}
!51 = !{i32 6, !"TEXCOORD", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 6, i8 0, null}
!52 = !{i32 8}
!53 = !{i32 7, !"QUAD_POSITION", i8 9, i8 0, !39, i8 1, i32 1, i8 4, i32 7, i8 0, !40}
!54 = !{i32 8, !"COLOR", i8 5, i8 0, !48, i8 1, i32 1, i8 3, i32 8, i8 0, !55}
!55 = !{i32 3, i32 5}
!56 = !{i32 9, !"SV_SampleIndex", i8 5, i8 12, !39, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!57 = !{!58, !59}
!58 = !{i32 0, !"SV_Target", i8 9, i8 16, !39, i8 0, i32 1, i8 4, i32 0, i8 0, !40}
!59 = !{i32 1, !"SV_Target", i8 9, i8 16, !60, i8 0, i32 1, i8 4, i32 1, i8 0, !40}
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

