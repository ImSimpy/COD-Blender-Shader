;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float   xyzw
; TEXCOORD                 0   xyzw        2     NONE   float   xyzw
; TEXCOORD                 3   xyzw        3     NONE   float   xyz 
; TEXCOORD                 4   xyzw        4     NONE   float   xy  
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
; shader hash: 7c23dc9619e6d8fb354620c518489402
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
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 20, 21, 28, 29, 30, 31, 32, 34 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 20, 21, 28, 29, 30, 31, 32, 34 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 20, 21, 28, 29, 30, 31, 32, 34 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 20, 21, 28, 29, 30, 31, 32, 34 }
;   output 4 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 20, 21, 28, 29, 30, 31, 32, 34 }
;   output 5 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 20, 21, 28, 29, 30, 31, 32, 34 }
;   output 6 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 20, 21, 28, 29, 30, 31, 32, 34 }
;   output 7 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 20, 21, 28, 29, 30, 31, 32, 34 }
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
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %50 = extractvalue %dx.types.CBufRet.f32 %49, 0
  %51 = fmul fast float %50, %43
  %52 = fmul fast float %50, %44
  %53 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %54 = extractvalue %dx.types.CBufRet.f32 %53, 2
  %55 = extractvalue %dx.types.CBufRet.f32 %53, 3
  %56 = fmul fast float %51, 2.000000e+00
  %57 = fmul fast float %56, %54
  %58 = fmul fast float %52, 2.000000e+00
  %59 = fmul fast float %58, %55
  %60 = fsub fast float 1.000000e+00, %57
  %61 = fsub fast float 1.000000e+00, %59
  %62 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %63 = extractvalue %dx.types.CBufRet.f32 %62, 0
  %64 = extractvalue %dx.types.CBufRet.f32 %62, 1
  %65 = extractvalue %dx.types.CBufRet.f32 %62, 2
  %66 = fmul fast float %60, %63
  %67 = fmul fast float %60, %64
  %68 = fmul fast float %60, %65
  %69 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %70 = extractvalue %dx.types.CBufRet.f32 %69, 0
  %71 = extractvalue %dx.types.CBufRet.f32 %69, 1
  %72 = extractvalue %dx.types.CBufRet.f32 %69, 2
  %73 = fmul fast float %61, %70
  %74 = fmul fast float %61, %71
  %75 = fmul fast float %61, %72
  %76 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %77 = extractvalue %dx.types.CBufRet.f32 %76, 0
  %78 = extractvalue %dx.types.CBufRet.f32 %76, 1
  %79 = extractvalue %dx.types.CBufRet.f32 %76, 2
  %80 = fadd fast float %73, %77
  %81 = fadd fast float %80, %66
  %82 = fadd fast float %74, %78
  %83 = fadd fast float %82, %67
  %84 = fadd fast float %75, %79
  %85 = fadd fast float %84, %68
  %86 = fmul fast float %81, %46
  %87 = fmul fast float %83, %46
  %88 = fmul fast float %85, %46
  %89 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %90 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %91 = extractvalue %dx.types.CBufRet.i32 %90, 3
  %92 = and i32 %91, 3
  %93 = icmp ne i32 %92, 0
  %94 = and i32 %91, 4
  %95 = icmp ne i32 %94, 0
  %96 = and i1 %93, %95
  br i1 %96, label %97, label %108

; <label>:97                                      ; preds = %0
  %98 = extractvalue %dx.types.CBufRet.f32 %89, 3
  %99 = fmul fast float %98, %52
  %100 = extractvalue %dx.types.CBufRet.f32 %89, 2
  %101 = fmul fast float %100, %51
  %102 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %18, float %101, float %99, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %103 = extractvalue %dx.types.ResRet.f32 %102, 0
  %104 = fsub fast float 1.000000e+00, %103
  %105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %106 = extractvalue %dx.types.CBufRet.f32 %105, 0
  %107 = fcmp fast olt float %104, %106
  br label %111

; <label>:108                                     ; preds = %0
  %109 = icmp eq i32 %94, 0
  %110 = and i1 %93, %109
  br label %111

; <label>:111                                     ; preds = %108, %97
  %112 = phi i1 [ %107, %97 ], [ %110, %108 ]
  %113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %114 = extractvalue %dx.types.CBufRet.f32 %113, 2
  %115 = extractvalue %dx.types.CBufRet.f32 %113, 3
  %116 = fmul fast float %114, %51
  %117 = fmul fast float %115, %52
  %118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %119 = extractvalue %dx.types.ResRet.i32 %118, 0
  %120 = and i32 %119, 114688
  %121 = icmp ne i32 %120, 0
  %122 = select i1 %121, float %116, float 0.000000e+00
  %123 = select i1 %121, float %117, float 0.000000e+00
  %124 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %19, float %122, float %123, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %125 = extractvalue %dx.types.ResRet.f32 %124, 0
  %126 = fmul fast float %125, 2.550000e+02
  %127 = fptoui float %126 to i32
  %128 = select i1 %121, i32 %127, i32 0
  %129 = mul i32 %22, 208
  %130 = add i32 %129, 188
  %131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %130, i32 undef)  ; BufferLoad(srv,index,wot)
  %132 = extractvalue %dx.types.ResRet.i32 %131, 0
  %133 = and i32 %91, 114688
  %134 = and i32 %91, 8
  %135 = icmp ne i32 %134, 0
  %136 = or i1 %112, %135
  %137 = select i1 %136, i32 %133, i32 16384
  %138 = and i32 %137, %132
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %141

; <label>:140                                     ; preds = %111
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %141

; <label>:141                                     ; preds = %140, %111
  %142 = and i32 %132, 512
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %168, label %144

; <label>:144                                     ; preds = %141
  %145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %146 = extractvalue %dx.types.CBufRet.f32 %145, 2
  %147 = extractvalue %dx.types.CBufRet.f32 %145, 3
  %148 = fmul fast float %146, %51
  %149 = fmul fast float %147, %52
  %150 = extractvalue %dx.types.CBufRet.f32 %145, 0
  %151 = extractvalue %dx.types.CBufRet.f32 %145, 1
  %152 = fdiv fast float %150, %151
  %153 = fcmp fast ogt float %152, 0x3FFC71C720000000
  br i1 %153, label %154, label %160

; <label>:154                                     ; preds = %144
  %155 = fdiv fast float 0x3FFC71C720000000, %152
  %156 = fmul fast float %155, %149
  %157 = fsub fast float 1.000000e+00, %155
  %158 = fmul fast float %157, 5.000000e-01
  %159 = fadd fast float %158, %156
  br label %168

; <label>:160                                     ; preds = %144
  %161 = fcmp fast olt float %152, 0x3FFC71C720000000
  br i1 %161, label %162, label %168

; <label>:162                                     ; preds = %160
  %163 = fmul fast float %148, 5.625000e-01
  %164 = fmul fast float %163, %152
  %165 = fmul fast float %152, 2.812500e-01
  %166 = fsub fast float 5.000000e-01, %165
  %167 = fadd fast float %166, %164
  br label %168

; <label>:168                                     ; preds = %162, %160, %154, %141
  %169 = phi float [ %35, %141 ], [ %148, %154 ], [ %167, %162 ], [ %148, %160 ]
  %170 = phi float [ %36, %141 ], [ %159, %154 ], [ %149, %162 ], [ %149, %160 ]
  %171 = and i32 %132, 16
  %172 = icmp ne i32 %171, 0
  %173 = select i1 %172, float 1.000000e+00, float %42
  %174 = icmp eq i32 %171, 0
  br i1 %174, label %194, label %175, !dx.controlflow.hints !62

; <label>:175                                     ; preds = %168
  %176 = add i32 %129, 64
  %177 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %176, i32 undef)  ; BufferLoad(srv,index,wot)
  %178 = extractvalue %dx.types.ResRet.f32 %177, 0
  %179 = fadd fast float %178, 1.000000e+00
  %180 = fmul fast float %179, %42
  %181 = fsub fast float %180, %178
  %182 = fsub fast float %179, %181
  %183 = call float @dx.op.unary.f32(i32 7, float %182)  ; Saturate(value)
  %184 = fsub fast float 1.000000e+00, %180
  %185 = call float @dx.op.unary.f32(i32 7, float %184)  ; Saturate(value)
  %186 = fsub fast float %183, %185
  %187 = fsub fast float %173, %185
  %188 = fdiv fast float %187, %186
  %189 = call float @dx.op.unary.f32(i32 7, float %188)  ; Saturate(value)
  %190 = fmul fast float %189, 2.000000e+00
  %191 = fsub fast float 3.000000e+00, %190
  %192 = fmul fast float %189, %189
  %193 = fmul fast float %192, %191
  br label %194

; <label>:194                                     ; preds = %175, %168
  %195 = phi float [ %193, %175 ], [ %173, %168 ]
  %196 = and i32 %132, 1024
  %197 = icmp eq i32 %196, 0
  %198 = add i32 %23, 128
  br i1 %197, label %258, label %199, !dx.controlflow.hints !63

; <label>:199                                     ; preds = %194
  %200 = add i32 %129, 48
  %201 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %200, i32 undef)  ; BufferLoad(srv,index,wot)
  %202 = extractvalue %dx.types.ResRet.f32 %201, 0
  %203 = extractvalue %dx.types.ResRet.f32 %201, 1
  %204 = fadd fast float %37, -5.000000e-01
  %205 = fmul fast float %204, 2.000000e+00
  %206 = fmul fast float %30, %205
  %207 = fmul fast float %31, %205
  %208 = fmul fast float %206, %203
  %209 = fmul fast float %207, %203
  %210 = call float @dx.op.dot2.f32(i32 54, float %30, float %31, float %30, float %31)  ; Dot2(ax,ay,bx,by)
  %211 = call float @dx.op.unary.f32(i32 25, float %210)  ; Rsqrt(value)
  %212 = fmul fast float %208, %211
  %213 = fmul fast float %209, %211
  %214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %215 = extractvalue %dx.types.CBufRet.f32 %214, 0
  %216 = extractvalue %dx.types.CBufRet.f32 %214, 1
  %217 = fsub fast float %86, %208
  %218 = fadd fast float %217, %215
  %219 = fadd fast float %218, %212
  %220 = fsub fast float %87, %209
  %221 = fadd fast float %220, %216
  %222 = fadd fast float %221, %213
  %223 = fmul fast float %219, %202
  %224 = fmul fast float %222, %202
  %225 = add i32 %23, 88
  %226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %225, i32 undef)  ; BufferLoad(srv,index,wot)
  %227 = extractvalue %dx.types.ResRet.i32 %226, 0
  %228 = extractvalue %dx.types.ResRet.i32 %226, 1
  %229 = extractvalue %dx.types.ResRet.i32 %226, 2
  %230 = bitcast i32 %227 to float
  %231 = bitcast i32 %228 to float
  %232 = bitcast i32 %229 to float
  %233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %234 = extractvalue %dx.types.CBufRet.f32 %233, 3
  %235 = fmul fast float %232, %234
  %236 = call float @dx.op.unary.f32(i32 12, float %235)  ; Cos(value)
  %237 = call float @dx.op.unary.f32(i32 13, float %235)  ; Sin(value)
  %238 = fadd fast float %224, -5.000000e-01
  %239 = fadd fast float %223, -5.000000e-01
  %240 = fmul fast float %238, %236
  %241 = fmul fast float %237, %239
  %242 = fmul fast float %237, %238
  %243 = fmul fast float %239, %236
  %244 = fmul fast float %234, %230
  %245 = fmul fast float %234, %231
  %246 = fsub fast float 5.000000e-01, %241
  %247 = fadd fast float %246, %240
  %248 = fadd fast float %247, %244
  %249 = fadd fast float %243, 5.000000e-01
  %250 = fadd fast float %249, %242
  %251 = fadd fast float %250, %245
  %252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %198, i32 undef)  ; BufferLoad(srv,index,wot)
  %253 = extractvalue %dx.types.ResRet.i32 %252, 0
  %254 = add i32 %253, 0
  %255 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %254, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %256 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %255, %dx.types.Handle %48, float %248, float %251, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %257 = extractvalue %dx.types.ResRet.f32 %256, 0
  br label %265

; <label>:258                                     ; preds = %194
  %259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %198, i32 undef)  ; BufferLoad(srv,index,wot)
  %260 = extractvalue %dx.types.ResRet.i32 %259, 0
  %261 = add i32 %260, 0
  %262 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %261, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %263 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %262, %dx.types.Handle %48, float %37, float %38, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %264 = extractvalue %dx.types.ResRet.f32 %263, 0
  br label %265

; <label>:265                                     ; preds = %258, %199
  %266 = phi float [ %257, %199 ], [ %264, %258 ]
  %267 = fmul fast float %266, %195
  %268 = fcmp fast ogt float %267, 0.000000e+00
  br i1 %268, label %270, label %269

; <label>:269                                     ; preds = %265
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %270

; <label>:270                                     ; preds = %269, %265
  %271 = call float @dx.op.unary.f32(i32 7, float %267)  ; Saturate(value)
  %272 = fmul fast float %51, 5.000000e-01
  %273 = fmul fast float %52, 5.000000e-01
  %274 = fptosi float %272 to i32
  %275 = fptosi float %273 to i32
  %276 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %274, i32 %275, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %277 = extractvalue %dx.types.ResRet.i32 %276, 0
  %278 = lshr i32 %277, 18
  %279 = uitofp i32 %278 to float
  %280 = fmul fast float %279, 0x3F4C00EBA0000000
  %281 = call float @dx.op.unary.f32(i32 21, float %280)  ; Exp(value)
  %282 = fadd fast float %281, -1.000000e+00
  %283 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %9, i32 0)  ; GetDimensions(handle,mipLevel)
  %284 = extractvalue %dx.types.Dimensions %283, 0
  %285 = sitofp i32 %284 to float
  %286 = extractvalue %dx.types.Dimensions %283, 1
  %287 = sitofp i32 %286 to float
  %288 = fcmp fast oge float %272, %285
  %289 = fcmp fast oge float %273, %287
  %290 = or i1 %288, %289
  %291 = select i1 %290, float 0x4197782600000000, float %282
  %292 = fsub fast float %291, %46
  %293 = fcmp fast ogt float %292, 0.000000e+00
  %294 = and i32 %128, -2
  %295 = icmp eq i32 %294, 2
  %296 = and i1 %295, %293
  %297 = xor i1 %293, true
  %298 = icmp eq i32 %128, 1
  %299 = and i1 %298, %297
  %300 = or i1 %296, %299
  %301 = and i32 %132, 262144
  %302 = icmp ne i32 %301, 0
  %303 = and i1 %302, %300
  %304 = xor i1 %300, true
  %305 = and i32 %132, 131072
  %306 = icmp ne i32 %305, 0
  %307 = and i1 %306, %304
  %308 = or i1 %303, %307
  br i1 %308, label %309, label %310

; <label>:309                                     ; preds = %270
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %310

; <label>:310                                     ; preds = %309, %270
  %311 = and i32 %132, 32
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %563, label %313, !dx.controlflow.hints !64

; <label>:313                                     ; preds = %310
  %314 = add i32 %129, 80
  %315 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %314, i32 undef)  ; BufferLoad(srv,index,wot)
  %316 = extractvalue %dx.types.ResRet.f32 %315, 0
  %317 = extractvalue %dx.types.ResRet.f32 %315, 1
  %318 = extractvalue %dx.types.ResRet.f32 %315, 2
  %319 = extractvalue %dx.types.ResRet.f32 %315, 3
  %320 = add i32 %129, 96
  %321 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %320, i32 undef)  ; BufferLoad(srv,index,wot)
  %322 = extractvalue %dx.types.ResRet.f32 %321, 0
  %323 = extractvalue %dx.types.ResRet.f32 %321, 1
  %324 = extractvalue %dx.types.ResRet.f32 %321, 2
  %325 = add i32 %129, 112
  %326 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %327 = extractvalue %dx.types.ResRet.f32 %326, 0
  %328 = extractvalue %dx.types.ResRet.f32 %326, 1
  %329 = extractvalue %dx.types.ResRet.f32 %326, 2
  %330 = extractvalue %dx.types.ResRet.f32 %326, 3
  %331 = add i32 %129, 128
  %332 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %331, i32 undef)  ; BufferLoad(srv,index,wot)
  %333 = extractvalue %dx.types.ResRet.f32 %332, 0
  %334 = extractvalue %dx.types.ResRet.f32 %332, 1
  %335 = extractvalue %dx.types.ResRet.f32 %332, 2
  %336 = extractvalue %dx.types.ResRet.f32 %332, 3
  %337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %130, i32 undef)  ; BufferLoad(srv,index,wot)
  %338 = extractvalue %dx.types.ResRet.i32 %337, 0
  %339 = and i32 %338, 4096
  %340 = icmp ne i32 %339, 0
  %341 = fcmp fast une float %324, 0.000000e+00
  %342 = and i32 %338, 64
  %343 = icmp ne i32 %342, 0
  %344 = and i32 %338, 128
  %345 = icmp eq i32 %344, 0
  %346 = and i32 %338, 2048
  %347 = icmp eq i32 %346, 0
  %348 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %12, i32 0)  ; GetDimensions(handle,mipLevel)
  %349 = extractvalue %dx.types.Dimensions %348, 0
  %350 = sitofp i32 %349 to float
  %351 = extractvalue %dx.types.Dimensions %348, 1
  %352 = sitofp i32 %351 to float
  %353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %354 = extractvalue %dx.types.CBufRet.f32 %353, 2
  %355 = extractvalue %dx.types.CBufRet.f32 %353, 3
  %356 = fmul fast float %354, %51
  %357 = fmul fast float %355, %52
  %358 = fmul fast float %356, %350
  %359 = fmul fast float %357, %352
  %360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %361 = extractvalue %dx.types.CBufRet.f32 %360, 1
  %362 = fsub fast float -0.000000e+00, %361
  %363 = fptoui float %362 to i32
  %364 = fptoui float %358 to i32
  %365 = fptoui float %359 to i32
  %366 = and i32 %363, 31
  %367 = lshr i32 %364, %366
  %368 = lshr i32 %365, %366
  %369 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 %363, i32 %367, i32 %368, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %370 = extractvalue %dx.types.ResRet.f32 %369, 0
  %371 = fcmp fast ogt float %370, -1.000000e+00
  %372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %373 = extractvalue %dx.types.CBufRet.f32 %372, 1
  %374 = select i1 %371, float %373, float 1.000000e+00
  %375 = fadd fast float %370, 1.000000e+00
  %376 = fmul fast float %374, %375
  %377 = call float @dx.op.unary.f32(i32 6, float %376)  ; FAbs(value)
  %378 = extractvalue %dx.types.CBufRet.f32 %372, 3
  %379 = fcmp fast oge float %377, %378
  %380 = select i1 %379, float 0x4197782600000000, float %377
  br i1 %347, label %458, label %381, !dx.controlflow.hints !65

; <label>:381                                     ; preds = %313
  %382 = fmul fast float %56, %354
  %383 = fmul fast float %58, %355
  %384 = fsub fast float 1.000000e+00, %382
  %385 = fsub fast float 1.000000e+00, %383
  %386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %387 = extractvalue %dx.types.CBufRet.f32 %386, 0
  %388 = extractvalue %dx.types.CBufRet.f32 %386, 1
  %389 = extractvalue %dx.types.CBufRet.f32 %386, 2
  %390 = fmul fast float %384, %387
  %391 = fmul fast float %384, %388
  %392 = fmul fast float %384, %389
  %393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %394 = extractvalue %dx.types.CBufRet.f32 %393, 0
  %395 = extractvalue %dx.types.CBufRet.f32 %393, 1
  %396 = extractvalue %dx.types.CBufRet.f32 %393, 2
  %397 = fmul fast float %385, %394
  %398 = fmul fast float %385, %395
  %399 = fmul fast float %385, %396
  %400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %401 = extractvalue %dx.types.CBufRet.f32 %400, 0
  %402 = extractvalue %dx.types.CBufRet.f32 %400, 1
  %403 = extractvalue %dx.types.CBufRet.f32 %400, 2
  %404 = fadd fast float %397, %401
  %405 = fadd fast float %404, %390
  %406 = fadd fast float %398, %402
  %407 = fadd fast float %406, %391
  %408 = fadd fast float %399, %403
  %409 = fadd fast float %408, %392
  %410 = fmul fast float %405, %380
  %411 = fmul fast float %407, %380
  %412 = fmul fast float %409, %380
  %413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %414 = extractvalue %dx.types.CBufRet.f32 %413, 0
  %415 = extractvalue %dx.types.CBufRet.f32 %413, 1
  %416 = extractvalue %dx.types.CBufRet.f32 %413, 2
  %417 = fsub fast float %414, %24
  %418 = fadd fast float %417, %410
  %419 = fsub fast float %415, %25
  %420 = fadd fast float %419, %411
  %421 = fsub fast float %416, %26
  %422 = fadd fast float %421, %412
  %423 = fmul fast float %27, %27
  %424 = call float @dx.op.dot3.f32(i32 55, float %418, float %420, float %422, float %418, float %420, float %422)  ; Dot3(ax,ay,az,bx,by,bz)
  %425 = fsub fast float %423, %424
  %426 = fmul fast float %323, %423
  %427 = fmul fast float %322, %423
  %428 = fcmp fast olt float %425, %426
  %429 = fcmp fast ogt float %425, %427
  %430 = or i1 %428, %429
  %431 = select i1 %430, float 0.000000e+00, float %425
  %432 = fsub fast float %322, %323
  %433 = fmul fast float %432, %423
  %434 = fsub fast float %431, %426
  %435 = fdiv fast float %434, %433
  %436 = call float @dx.op.unary.f32(i32 7, float %435)  ; Saturate(value)
  %437 = fmul fast float %436, 2.000000e+00
  %438 = fsub fast float 3.000000e+00, %437
  %439 = fmul fast float %436, %436
  %440 = fmul fast float %439, %438
  %441 = fmul fast float %327, %39
  %442 = fmul fast float %328, %40
  %443 = fmul fast float %329, %41
  %444 = fsub fast float %441, %333
  %445 = fsub fast float %442, %334
  %446 = fsub fast float %443, %335
  %447 = fsub fast float %330, %336
  %448 = fmul fast float %440, %444
  %449 = fmul fast float %440, %445
  %450 = fmul fast float %440, %446
  %451 = fmul fast float %440, %447
  %452 = fadd fast float %448, %333
  %453 = fadd fast float %449, %334
  %454 = fadd fast float %450, %335
  %455 = fadd fast float %451, %336
  %456 = fmul fast float %316, %316
  %457 = fmul fast float %456, %431
  br label %553

; <label>:458                                     ; preds = %313
  %459 = and i32 %338, 256
  %460 = icmp eq i32 %459, 0
  %461 = fsub fast float %380, %46
  br i1 %460, label %510, label %462

; <label>:462                                     ; preds = %458
  %463 = fadd fast float %322, %46
  %464 = fcmp fast olt float %380, %46
  %465 = fcmp fast ogt float %380, %463
  %466 = or i1 %464, %465
  %467 = select i1 %466, float 0.000000e+00, float %461
  %468 = call float @dx.op.unary.f32(i32 83, float %380)  ; DerivCoarseX(value)
  %469 = call float @dx.op.unary.f32(i32 84, float %380)  ; DerivCoarseY(value)
  %470 = fmul fast float %468, %468
  %471 = fmul fast float %469, %469
  %472 = fadd fast float %471, %470
  %473 = call float @dx.op.unary.f32(i32 24, float %472)  ; Sqrt(value)
  %474 = extractvalue %dx.types.CBufRet.f32 %360, 2
  %475 = fmul fast float %474, %473
  %476 = call float @dx.op.unary.f32(i32 7, float %475)  ; Saturate(value)
  %477 = fmul fast float %476, %323
  %478 = fdiv fast float %461, %477
  %479 = call float @dx.op.unary.f32(i32 7, float %478)  ; Saturate(value)
  %480 = fmul fast float %479, 2.000000e+00
  %481 = fsub fast float 3.000000e+00, %480
  %482 = fmul fast float %479, %479
  %483 = fmul fast float %482, %481
  %484 = fsub fast float %380, %463
  %485 = fadd fast float %484, %477
  %486 = fdiv fast float %485, %477
  %487 = call float @dx.op.unary.f32(i32 7, float %486)  ; Saturate(value)
  %488 = fmul fast float %487, 2.000000e+00
  %489 = fsub fast float 3.000000e+00, %488
  %490 = fmul fast float %487, %487
  %491 = fmul fast float %490, %489
  %492 = fsub fast float %483, %491
  %493 = fmul fast float %327, %39
  %494 = fmul fast float %328, %40
  %495 = fmul fast float %329, %41
  %496 = fsub fast float %493, %333
  %497 = fsub fast float %494, %334
  %498 = fsub fast float %495, %335
  %499 = fsub fast float %330, %336
  %500 = fmul fast float %492, %496
  %501 = fmul fast float %492, %497
  %502 = fmul fast float %492, %498
  %503 = fmul fast float %492, %499
  %504 = fadd fast float %500, %333
  %505 = fadd fast float %501, %334
  %506 = fadd fast float %502, %335
  %507 = fadd fast float %503, %336
  %508 = fmul fast float %467, %316
  %509 = call float @dx.op.unary.f32(i32 6, float %508)  ; FAbs(value)
  br label %553

; <label>:510                                     ; preds = %458
  br i1 %341, label %511, label %524

; <label>:511                                     ; preds = %510
  %512 = fdiv fast float 5.000000e+01, %27
  %513 = select i1 %343, float %512, float 1.000000e+00
  %514 = fmul fast float %513, %316
  %515 = fmul fast float %35, 2.000000e+00
  %516 = fmul fast float %36, 2.000000e+00
  %517 = fadd fast float %515, -1.000000e+00
  %518 = fadd fast float %516, -1.000000e+00
  %519 = call float @dx.op.dot2.f32(i32 54, float %517, float %518, float %517, float %518)  ; Dot2(ax,ay,bx,by)
  %520 = fmul fast float %324, %27
  %521 = fmul fast float %520, %519
  %522 = fsub fast float %461, %521
  %523 = fmul fast float %514, %522
  br label %553

; <label>:524                                     ; preds = %510
  br i1 %345, label %545, label %525

; <label>:525                                     ; preds = %524
  %526 = fmul fast float %27, 0x3F947AE140000000
  %527 = select i1 %343, float %526, float 1.000000e+00
  %528 = fdiv fast float 1.000000e+00, %527
  %529 = fmul fast float %527, %317
  %530 = fmul fast float %527, %318
  %531 = fmul fast float %528, %319
  %532 = call float @dx.op.unary.f32(i32 6, float %461)  ; FAbs(value)
  %533 = fcmp fast olt float %532, %529
  br i1 %533, label %534, label %538, !dx.controlflow.hints !66

; <label>:534                                     ; preds = %525
  %535 = fmul fast float %528, %316
  %536 = fmul fast float %535, %532
  %537 = call float @dx.op.unary.f32(i32 6, float %536)  ; FAbs(value)
  br label %553

; <label>:538                                     ; preds = %525
  %539 = fcmp fast ogt float %532, %530
  br i1 %539, label %540, label %553

; <label>:540                                     ; preds = %538
  %541 = fsub fast float %532, %530
  %542 = fmul fast float %531, %541
  %543 = call float @dx.op.unary.f32(i32 6, float %542)  ; FAbs(value)
  %544 = fsub fast float 1.000000e+00, %543
  br label %553

; <label>:545                                     ; preds = %524
  %546 = fdiv fast float 5.000000e+01, %27
  %547 = select i1 %343, float %546, float 1.000000e+00
  %548 = fmul fast float %547, %316
  %549 = call float @dx.op.unary.f32(i32 6, float %292)  ; FAbs(value)
  %550 = select i1 %340, float %549, float 0x47EFFFFFE0000000
  %551 = call float @dx.op.binary.f32(i32 36, float %461, float %550)  ; FMin(a,b)
  %552 = fmul fast float %548, %551
  br label %553

; <label>:553                                     ; preds = %545, %540, %538, %534, %511, %462, %381
  %554 = phi float [ %457, %381 ], [ %509, %462 ], [ %523, %511 ], [ %552, %545 ], [ %537, %534 ], [ %544, %540 ], [ %532, %538 ]
  %555 = phi float [ %452, %381 ], [ %504, %462 ], [ %39, %511 ], [ %39, %545 ], [ %39, %534 ], [ %39, %540 ], [ %39, %538 ]
  %556 = phi float [ %453, %381 ], [ %505, %462 ], [ %40, %511 ], [ %40, %545 ], [ %40, %534 ], [ %40, %540 ], [ %40, %538 ]
  %557 = phi float [ %454, %381 ], [ %506, %462 ], [ %41, %511 ], [ %41, %545 ], [ %41, %534 ], [ %41, %540 ], [ %41, %538 ]
  %558 = phi float [ %455, %381 ], [ %507, %462 ], [ 1.000000e+00, %511 ], [ 1.000000e+00, %545 ], [ 1.000000e+00, %534 ], [ 1.000000e+00, %540 ], [ 1.000000e+00, %538 ]
  %559 = call float @dx.op.unary.f32(i32 7, float %554)  ; Saturate(value)
  %560 = fmul fast float %559, %42
  %561 = fmul fast float %558, %271
  %562 = fmul fast float %561, %559
  br label %563

; <label>:563                                     ; preds = %553, %310
  %564 = phi float [ %555, %553 ], [ %39, %310 ]
  %565 = phi float [ %556, %553 ], [ %40, %310 ]
  %566 = phi float [ %557, %553 ], [ %41, %310 ]
  %567 = phi float [ %562, %553 ], [ %271, %310 ]
  %568 = phi float [ %560, %553 ], [ %42, %310 ]
  %569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %570 = extractvalue %dx.types.CBufRet.f32 %569, 2
  %571 = fptosi float %46 to i32
  %572 = sitofp i32 %571 to float
  %573 = fadd fast float %570, %572
  %574 = fmul fast float %573, 0x3FE3C6EF40000000
  %575 = frem fast float %51, 2.560000e+02
  %576 = frem fast float %52, 2.560000e+02
  %577 = fptoui float %575 to i32
  %578 = fptoui float %576 to i32
  %579 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %577, i32 %578, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %580 = extractvalue %dx.types.ResRet.f32 %579, 0
  %581 = fadd fast float %580, %574
  %582 = call float @dx.op.unary.f32(i32 22, float %581)  ; Frc(value)
  %583 = and i32 %132, 1
  %584 = icmp eq i32 %583, 0
  br i1 %584, label %642, label %585, !dx.controlflow.hints !67

; <label>:585                                     ; preds = %563
  %586 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %129, i32 undef)  ; BufferLoad(srv,index,wot)
  %587 = extractvalue %dx.types.ResRet.f32 %586, 2
  %588 = extractvalue %dx.types.ResRet.f32 %586, 3
  %589 = add i32 %129, 16
  %590 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %589, i32 undef)  ; BufferLoad(srv,index,wot)
  %591 = extractvalue %dx.types.ResRet.f32 %590, 0
  %592 = extractvalue %dx.types.ResRet.f32 %590, 1
  %593 = extractvalue %dx.types.ResRet.f32 %590, 2
  %594 = add i32 %129, 32
  %595 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %594, i32 undef)  ; BufferLoad(srv,index,wot)
  %596 = extractvalue %dx.types.ResRet.f32 %595, 0
  %597 = extractvalue %dx.types.ResRet.f32 %595, 1
  %598 = extractvalue %dx.types.ResRet.f32 %595, 2
  %599 = and i32 %132, 2
  %600 = icmp eq i32 %599, 0
  %601 = call float @dx.op.dot3.f32(i32 55, float %32, float %33, float %34, float %32, float %33, float %34)  ; Dot3(ax,ay,az,bx,by,bz)
  %602 = call float @dx.op.unary.f32(i32 25, float %601)  ; Rsqrt(value)
  %603 = fmul fast float %602, %32
  %604 = fmul fast float %602, %33
  %605 = fmul fast float %602, %34
  %606 = call float @dx.op.dot3.f32(i32 55, float %86, float %87, float %88, float %86, float %87, float %88)  ; Dot3(ax,ay,az,bx,by,bz)
  %607 = call float @dx.op.unary.f32(i32 25, float %606)  ; Rsqrt(value)
  %608 = fmul fast float %607, %86
  %609 = fmul fast float %607, %87
  %610 = fmul fast float %607, %88
  %611 = call float @dx.op.dot3.f32(i32 55, float %608, float %609, float %610, float %603, float %604, float %605)  ; Dot3(ax,ay,az,bx,by,bz)
  %612 = fmul fast float %611, %611
  %613 = fmul fast float %612, %587
  %614 = fadd fast float %613, %588
  %615 = call float @dx.op.unary.f32(i32 7, float %614)  ; Saturate(value)
  br i1 %600, label %616, label %626, !dx.controlflow.hints !68

; <label>:616                                     ; preds = %585
  %617 = extractvalue %dx.types.ResRet.f32 %586, 1
  %618 = extractvalue %dx.types.ResRet.f32 %586, 0
  %619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %620 = extractvalue %dx.types.CBufRet.f32 %619, 3
  %621 = fmul fast float %620, %606
  %622 = fsub fast float %618, %621
  %623 = fmul fast float %622, %617
  %624 = call float @dx.op.unary.f32(i32 7, float %623)  ; Saturate(value)
  %625 = fmul fast float %624, %615
  br label %626

; <label>:626                                     ; preds = %616, %585
  %627 = phi float [ %625, %616 ], [ %615, %585 ]
  %628 = fsub fast float %591, %596
  %629 = fsub fast float %592, %597
  %630 = fsub fast float %593, %598
  %631 = fmul fast float %627, %628
  %632 = fmul fast float %627, %629
  %633 = fmul fast float %627, %630
  %634 = fadd fast float %631, %596
  %635 = fadd fast float %632, %597
  %636 = fadd fast float %633, %598
  %637 = fmul fast float %634, %564
  %638 = fmul fast float %635, %565
  %639 = fmul fast float %636, %566
  %640 = fmul fast float %627, %567
  %641 = fmul fast float %627, %568
  br label %642

; <label>:642                                     ; preds = %626, %563
  %643 = phi float [ %637, %626 ], [ %564, %563 ]
  %644 = phi float [ %638, %626 ], [ %565, %563 ]
  %645 = phi float [ %639, %626 ], [ %566, %563 ]
  %646 = phi float [ %640, %626 ], [ %567, %563 ]
  %647 = phi float [ %641, %626 ], [ %568, %563 ]
  %648 = add i32 %23, 120
  %649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %648, i32 undef)  ; BufferLoad(srv,index,wot)
  %650 = extractvalue %dx.types.ResRet.i32 %649, 0
  %651 = add i32 %650, 0
  %652 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %651, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %653 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %652, %dx.types.Handle %47, float %169, float %170, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %654 = extractvalue %dx.types.ResRet.f32 %653, 0
  %655 = extractvalue %dx.types.ResRet.f32 %653, 1
  %656 = extractvalue %dx.types.ResRet.f32 %653, 2
  %657 = add i32 %23, 56
  %658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %657, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %671 = add i32 %23, 40
  %672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %671, i32 undef)  ; BufferLoad(srv,index,wot)
  %673 = extractvalue %dx.types.ResRet.i32 %672, 0
  %674 = and i32 %673, 255
  %675 = uitofp i32 %674 to float
  %676 = fmul fast float %675, 0x3F70101020000000
  %677 = fmul fast float %676, %676
  %678 = add i32 %23, 124
  %679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %678, i32 undef)  ; BufferLoad(srv,index,wot)
  %680 = extractvalue %dx.types.ResRet.i32 %679, 0
  %681 = add i32 %680, 0
  %682 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %681, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %683 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %682, %dx.types.Handle %48, float %169, float %170, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %684 = extractvalue %dx.types.ResRet.f32 %683, 0
  %685 = fmul fast float %677, %684
  %686 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %28, float %29, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %687 = extractvalue %dx.types.ResRet.f32 %686, 0
  %688 = extractvalue %dx.types.ResRet.f32 %686, 1
  %689 = extractvalue %dx.types.ResRet.f32 %686, 2
  %690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %691 = extractvalue %dx.types.CBufRet.f32 %690, 1
  %692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %693 = extractvalue %dx.types.CBufRet.f32 %692, 0
  %694 = fmul fast float %654, %643
  %695 = fmul fast float %662, %662
  %696 = fmul fast float %695, %694
  %697 = fmul fast float %696, %693
  %698 = fmul fast float %655, %644
  %699 = fmul fast float %666, %666
  %700 = fmul fast float %699, %698
  %701 = fmul fast float %700, %693
  %702 = fmul fast float %656, %645
  %703 = fmul fast float %670, %670
  %704 = fmul fast float %703, %702
  %705 = fmul fast float %704, %693
  %706 = call float @dx.op.dot3.f32(i32 55, float %697, float %701, float %705, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %707 = add i32 %23, 32
  %708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %707, i32 undef)  ; BufferLoad(srv,index,wot)
  %709 = extractvalue %dx.types.ResRet.i32 %708, 0
  %710 = and i32 %709, 255
  %711 = uitofp i32 %710 to float
  %712 = lshr i32 %709, 8
  %713 = and i32 %712, 255
  %714 = uitofp i32 %713 to float
  %715 = fmul fast float %714, %706
  %716 = fadd fast float %715, %711
  %717 = fmul fast float %716, 0x3F70101020000000
  %718 = call float @dx.op.unary.f32(i32 7, float %717)  ; Saturate(value)
  %719 = and i32 %132, 8192
  %720 = icmp eq i32 %719, 0
  %721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %722 = extractvalue %dx.types.CBufRet.f32 %721, 0
  br i1 %720, label %729, label %723, !dx.controlflow.hints !69

; <label>:723                                     ; preds = %642
  %724 = add i32 %129, 176
  %725 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %724, i32 undef)  ; BufferLoad(srv,index,wot)
  %726 = extractvalue %dx.types.ResRet.f32 %725, 0
  %727 = fcmp fast oge float %726, 0.000000e+00
  %728 = select i1 %727, float %726, float %722
  br label %736

; <label>:729                                     ; preds = %642
  %730 = add i32 %23, 104
  %731 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %730, i32 undef)  ; BufferLoad(srv,index,wot)
  %732 = extractvalue %dx.types.ResRet.i32 %731, 0
  %733 = bitcast i32 %732 to float
  %734 = fcmp fast oge float %733, 0.000000e+00
  %735 = select i1 %734, float %733, float %722
  br label %736

; <label>:736                                     ; preds = %729, %723
  %737 = phi float [ %728, %723 ], [ %735, %729 ]
  %738 = fsub fast float 1.000000e+00, %685
  %739 = fmul fast float %738, %647
  %740 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %274, i32 %275, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %741 = extractvalue %dx.types.ResRet.i32 %740, 0
  %742 = lshr i32 %741, 18
  %743 = uitofp i32 %742 to float
  %744 = fmul fast float %743, 0x3F4C00EBA0000000
  %745 = call float @dx.op.unary.f32(i32 21, float %744)  ; Exp(value)
  %746 = fadd fast float %745, -1.000000e+00
  %747 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %9, i32 0)  ; GetDimensions(handle,mipLevel)
  %748 = extractvalue %dx.types.Dimensions %747, 0
  %749 = sitofp i32 %748 to float
  %750 = extractvalue %dx.types.Dimensions %747, 1
  %751 = sitofp i32 %750 to float
  %752 = fcmp fast oge float %272, %749
  %753 = fcmp fast oge float %273, %751
  %754 = or i1 %752, %753
  %755 = select i1 %754, float 0x4197782600000000, float %746
  %756 = fadd fast float %685, -1.000000e+00
  %757 = fmul fast float %756, %646
  %758 = fadd fast float %757, 1.000000e+00
  %759 = call float @dx.op.dot3.f32(i32 55, float %758, float %758, float %758, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %760 = fsub fast float 1.000000e+00, %759
  %761 = fmul fast float %737, %718
  %762 = fsub fast float 1.000000e+00, %739
  %763 = fsub fast float %762, %718
  %764 = call float @dx.op.unary.f32(i32 7, float %763)  ; Saturate(value)
  %765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %766 = extractvalue %dx.types.CBufRet.f32 %765, 3
  %767 = fmul fast float %766, %764
  %768 = fadd fast float %767, %761
  %769 = and i32 %132, 2097152
  %770 = icmp eq i32 %769, 0
  br i1 %770, label %775, label %771, !dx.controlflow.hints !70

; <label>:771                                     ; preds = %736
  %772 = add i32 %129, 192
  %773 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %772, i32 undef)  ; BufferLoad(srv,index,wot)
  %774 = extractvalue %dx.types.ResRet.f32 %773, 0
  br label %778

; <label>:775                                     ; preds = %736
  %776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %777 = extractvalue %dx.types.CBufRet.f32 %776, 3
  br label %778

; <label>:778                                     ; preds = %775, %771
  %779 = phi float [ %774, %771 ], [ %777, %775 ]
  %780 = fmul fast float %687, %646
  %781 = fmul fast float %780, %691
  %782 = fmul fast float %781, %697
  %783 = fmul fast float %688, %646
  %784 = fmul fast float %783, %691
  %785 = fmul fast float %784, %701
  %786 = fmul fast float %689, %646
  %787 = fmul fast float %786, %691
  %788 = fmul fast float %787, %705
  %789 = icmp eq i32 %128, 3
  %790 = fcmp fast ogt float %46, %755
  %791 = and i1 %298, %790
  %792 = or i1 %789, %791
  %793 = icmp eq i32 %128, 2
  %794 = fcmp fast ole float %46, %755
  %795 = and i1 %793, %794
  %796 = or i1 %795, %792
  br i1 %791, label %797, label %903

; <label>:797                                     ; preds = %778
  %798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %799 = extractvalue %dx.types.CBufRet.f32 %798, 2
  %800 = extractvalue %dx.types.CBufRet.f32 %798, 3
  %801 = fmul fast float %799, %51
  %802 = fmul fast float %800, %52
  %803 = call float @dx.op.unary.f32(i32 7, float %801)  ; Saturate(value)
  %804 = call float @dx.op.unary.f32(i32 7, float %802)  ; Saturate(value)
  %805 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %803, float %804, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %806 = extractvalue %dx.types.ResRet.f32 %805, 0
  %807 = extractvalue %dx.types.ResRet.f32 %805, 1
  %808 = extractvalue %dx.types.ResRet.f32 %805, 2
  %809 = extractvalue %dx.types.ResRet.f32 %805, 3
  %810 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %803, float %804, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %811 = extractvalue %dx.types.ResRet.f32 %810, 0
  %812 = extractvalue %dx.types.ResRet.f32 %810, 1
  %813 = extractvalue %dx.types.ResRet.f32 %810, 2
  %814 = extractvalue %dx.types.ResRet.f32 %810, 3
  %815 = call float @dx.op.binary.f32(i32 35, float %807, float %808)  ; FMax(a,b)
  %816 = call float @dx.op.binary.f32(i32 35, float %806, float %815)  ; FMax(a,b)
  %817 = call float @dx.op.binary.f32(i32 35, float %816, float %809)  ; FMax(a,b)
  %818 = call float @dx.op.binary.f32(i32 36, float %812, float %813)  ; FMin(a,b)
  %819 = call float @dx.op.binary.f32(i32 36, float %811, float %818)  ; FMin(a,b)
  %820 = call float @dx.op.binary.f32(i32 36, float %819, float %814)  ; FMin(a,b)
  %821 = fmul fast float %817, 2.550000e+02
  %822 = fadd fast float %821, 0x3F70101020000000
  %823 = fptoui float %822 to i32
  %824 = fmul fast float %820, 2.550000e+02
  %825 = fadd fast float %824, 0x3F70101020000000
  %826 = fptoui float %825 to i32
  %827 = icmp ult i32 %823, %826
  br i1 %827, label %828, label %879

; <label>:828                                     ; preds = %797
  %829 = fcmp fast ogt float %45, 9.843750e-01
  %830 = fadd fast float %46, -4.000000e+00
  %831 = select i1 %829, float -4.000000e+00, float %830
  %832 = call float @dx.op.binary.f32(i32 35, float %831, float 0.000000e+00)  ; FMax(a,b)
  %833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %834 = extractvalue %dx.types.CBufRet.f32 %833, 0
  %835 = fadd fast float %834, %832
  %836 = extractvalue %dx.types.CBufRet.f32 %833, 2
  %837 = fmul fast float %835, %836
  %838 = call float @dx.op.unary.f32(i32 23, float %837)  ; Log(value)
  %839 = extractvalue %dx.types.CBufRet.f32 %833, 3
  %840 = fmul fast float %839, %838
  %841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %842 = extractvalue %dx.types.CBufRet.f32 %841, 2
  %843 = fmul fast float %840, %842
  %844 = call float @dx.op.unary.f32(i32 7, float %843)  ; Saturate(value)
  %845 = uitofp i32 %823 to float
  %846 = uitofp i32 %826 to float
  %847 = fadd fast float %845, 5.000000e-01
  %848 = fadd fast float %846, 5.000000e-01
  %849 = fmul fast float %842, %847
  %850 = fmul fast float %842, %848
  %851 = fadd fast float %849, 0x3F0FFB4800000000
  %852 = fadd fast float %850, 0xBF0FFB4800000000
  %853 = call float @dx.op.binary.f32(i32 35, float %844, float %851)  ; FMax(a,b)
  %854 = call float @dx.op.binary.f32(i32 36, float %853, float %852)  ; FMin(a,b)
  %855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %856 = extractvalue %dx.types.CBufRet.f32 %855, 1
  %857 = extractvalue %dx.types.CBufRet.f32 %855, 2
  %858 = extractvalue %dx.types.CBufRet.f32 %855, 0
  %859 = fmul fast float %856, %854
  %860 = fadd fast float %858, %859
  %861 = fadd fast float %858, %857
  %862 = fsub fast float %856, %857
  %863 = fadd fast float %862, %858
  %864 = call float @dx.op.binary.f32(i32 35, float %860, float %861)  ; FMax(a,b)
  %865 = call float @dx.op.binary.f32(i32 36, float %864, float %863)  ; FMin(a,b)
  %866 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %17, float %803, float %804, float %865, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %867 = extractvalue %dx.types.ResRet.f32 %866, 0
  %868 = extractvalue %dx.types.ResRet.f32 %866, 1
  %869 = extractvalue %dx.types.ResRet.f32 %866, 2
  %870 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %803, float %804, float %865, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %871 = extractvalue %dx.types.ResRet.f32 %870, 0
  %872 = extractvalue %dx.types.ResRet.f32 %870, 1
  %873 = extractvalue %dx.types.ResRet.f32 %870, 2
  %874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %875 = extractvalue %dx.types.CBufRet.f32 %874, 1
  %876 = fmul fast float %875, %871
  %877 = fmul fast float %875, %872
  %878 = fmul fast float %875, %873
  br label %879

; <label>:879                                     ; preds = %828, %797
  %880 = phi float [ %867, %828 ], [ 1.000000e+00, %797 ]
  %881 = phi float [ %868, %828 ], [ 1.000000e+00, %797 ]
  %882 = phi float [ %869, %828 ], [ 1.000000e+00, %797 ]
  %883 = phi float [ %876, %828 ], [ 0.000000e+00, %797 ]
  %884 = phi float [ %877, %828 ], [ 0.000000e+00, %797 ]
  %885 = phi float [ %878, %828 ], [ 0.000000e+00, %797 ]
  %886 = fmul fast float %883, %760
  %887 = fmul fast float %884, %760
  %888 = fmul fast float %885, %760
  %889 = call float @dx.op.dot3.f32(i32 55, float %880, float %881, float %882, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %890 = call float @dx.op.dot3.f32(i32 55, float %886, float %887, float %888, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %891 = select i1 %112, float %889, float %880
  %892 = select i1 %112, float %889, float %881
  %893 = select i1 %112, float 1.000000e+00, float %882
  %894 = select i1 %112, float %890, float %886
  %895 = select i1 %112, float 0.000000e+00, float %887
  %896 = select i1 %112, float 0.000000e+00, float %888
  %897 = fmul fast float %891, %782
  %898 = fmul fast float %892, %785
  %899 = fmul fast float %893, %788
  %900 = fadd fast float %897, %894
  %901 = fadd fast float %898, %895
  %902 = fadd fast float %896, %899
  br label %903

; <label>:903                                     ; preds = %879, %778
  %904 = phi float [ %755, %879 ], [ %46, %778 ]
  %905 = phi float [ %900, %879 ], [ %782, %778 ]
  %906 = phi float [ %901, %879 ], [ %785, %778 ]
  %907 = phi float [ %902, %879 ], [ %788, %778 ]
  %908 = phi float [ %880, %879 ], [ 1.000000e+00, %778 ]
  br i1 %796, label %1204, label %909

; <label>:909                                     ; preds = %903
  %910 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %18, float %28, float %29, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %911 = extractvalue %dx.types.ResRet.f32 %910, 0
  %912 = extractvalue %dx.types.ResRet.f32 %910, 1
  %913 = extractvalue %dx.types.ResRet.f32 %910, 2
  %914 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %18, float %28, float %29, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %915 = extractvalue %dx.types.ResRet.f32 %914, 0
  %916 = extractvalue %dx.types.ResRet.f32 %914, 1
  %917 = extractvalue %dx.types.ResRet.f32 %914, 2
  %918 = fmul fast float %911, %760
  %919 = fmul fast float %912, %760
  %920 = fmul fast float %913, %760
  %921 = fmul fast float %915, %908
  %922 = call float @dx.op.dot3.f32(i32 55, float %915, float %916, float %917, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %923 = call float @dx.op.dot3.f32(i32 55, float %918, float %919, float %920, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %924 = select i1 %112, float %922, float %915
  %925 = select i1 %112, float %922, float %916
  %926 = select i1 %112, float 1.000000e+00, float %917
  %927 = select i1 %112, float %923, float %918
  %928 = select i1 %112, float 0.000000e+00, float %919
  %929 = select i1 %112, float 0.000000e+00, float %920
  %930 = fmul fast float %924, %905
  %931 = fmul fast float %925, %906
  %932 = fmul fast float %926, %907
  %933 = fadd fast float %930, %927
  %934 = fadd fast float %931, %928
  %935 = fadd fast float %932, %929
  %936 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %937 = extractvalue %dx.types.CBufRet.i32 %936, 0
  %938 = icmp eq i32 %937, 0
  br i1 %938, label %1204, label %939, !dx.controlflow.hints !71

; <label>:939                                     ; preds = %909
  %940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %941 = extractvalue %dx.types.CBufRet.f32 %940, 2
  %942 = extractvalue %dx.types.CBufRet.f32 %940, 3
  %943 = fmul fast float %941, %51
  %944 = fmul fast float %942, %52
  %945 = fmul fast float %943, 2.000000e+00
  %946 = fmul fast float %944, 2.000000e+00
  %947 = fsub fast float 1.000000e+00, %945
  %948 = fsub fast float 1.000000e+00, %946
  %949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %950 = extractvalue %dx.types.CBufRet.f32 %949, 0
  %951 = extractvalue %dx.types.CBufRet.f32 %949, 1
  %952 = extractvalue %dx.types.CBufRet.f32 %949, 2
  %953 = fmul fast float %947, %950
  %954 = fmul fast float %947, %951
  %955 = fmul fast float %947, %952
  %956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %957 = extractvalue %dx.types.CBufRet.f32 %956, 0
  %958 = extractvalue %dx.types.CBufRet.f32 %956, 1
  %959 = extractvalue %dx.types.CBufRet.f32 %956, 2
  %960 = fmul fast float %948, %957
  %961 = fmul fast float %948, %958
  %962 = fmul fast float %948, %959
  %963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %964 = extractvalue %dx.types.CBufRet.f32 %963, 0
  %965 = extractvalue %dx.types.CBufRet.f32 %963, 1
  %966 = extractvalue %dx.types.CBufRet.f32 %963, 2
  %967 = fadd fast float %960, %964
  %968 = fadd fast float %967, %953
  %969 = fadd fast float %961, %965
  %970 = fadd fast float %969, %954
  %971 = fadd fast float %962, %966
  %972 = fadd fast float %971, %955
  %973 = fmul fast float %968, %904
  %974 = fmul fast float %970, %904
  %975 = fmul fast float %972, %904
  %976 = fmul fast float %973, %973
  %977 = fmul fast float %974, %974
  %978 = fadd fast float %976, %977
  %979 = fmul fast float %975, %975
  %980 = fadd fast float %978, %979
  %981 = call float @dx.op.unary.f32(i32 24, float %980)  ; Sqrt(value)
  %982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %983 = extractvalue %dx.types.CBufRet.f32 %982, 0
  %984 = fsub fast float %981, %983
  %985 = extractvalue %dx.types.CBufRet.f32 %982, 2
  %986 = fmul fast float %984, %985
  %987 = call float @dx.op.unary.f32(i32 7, float %986)  ; Saturate(value)
  %988 = fadd fast float %987, -5.000000e-01
  %989 = fmul fast float %988, 2.000000e+00
  %990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %991 = extractvalue %dx.types.CBufRet.f32 %990, 2
  %992 = call float @dx.op.binary.f32(i32 36, float %991, float %989)  ; FMin(a,b)
  %993 = fsub fast float -0.000000e+00, %991
  %994 = fcmp fast ogt float %992, %993
  br i1 %994, label %995, label %1204, !dx.controlflow.hints !72

; <label>:995                                     ; preds = %939
  %996 = fmul fast float %992, 5.000000e-01
  %997 = fadd fast float %996, 5.000000e-01
  %998 = call float @dx.op.unary.f32(i32 22, float %997)  ; Frc(value)
  %999 = call float @dx.op.unary.f32(i32 27, float %998)  ; Round_ni(value)
  %1000 = call float @dx.op.unary.f32(i32 22, float %998)  ; Frc(value)
  %1001 = fmul fast float %1000, 2.000000e+00
  %1002 = fadd fast float %1001, -1.000000e+00
  %1003 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %18, float %943, float %944, float %999, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1004 = extractvalue %dx.types.ResRet.f32 %1003, 0
  %1005 = extractvalue %dx.types.ResRet.f32 %1003, 1
  %1006 = extractvalue %dx.types.ResRet.f32 %1003, 2
  %1007 = extractvalue %dx.types.ResRet.f32 %1003, 3
  %1008 = fadd fast float %1004, -5.000000e-01
  %1009 = fadd fast float %1006, -5.000000e-01
  %1010 = fmul fast float %1008, 0xBFD5555560000000
  %1011 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1009, float %1010)  ; FMad(a,b,c)
  %1012 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1005, float 0.000000e+00)  ; FMad(a,b,c)
  %1013 = fadd fast float %1012, %1007
  %1014 = fmul fast float %1008, -7.500000e-01
  %1015 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1009, float %1014)  ; FMad(a,b,c)
  %1016 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1005, float 0.000000e+00)  ; FMad(a,b,c)
  %1017 = fadd fast float %1016, %1007
  %1018 = call float @dx.op.binary.f32(i32 35, float %1011, float -1.000000e+00)  ; FMax(a,b)
  %1019 = call float @dx.op.binary.f32(i32 35, float %1013, float -1.000000e+00)  ; FMax(a,b)
  %1020 = call float @dx.op.binary.f32(i32 35, float %1015, float -1.000000e+00)  ; FMax(a,b)
  %1021 = call float @dx.op.binary.f32(i32 35, float %1017, float -1.000000e+00)  ; FMax(a,b)
  %1022 = call float @dx.op.binary.f32(i32 36, float %1018, float 1.000000e+00)  ; FMin(a,b)
  %1023 = call float @dx.op.binary.f32(i32 36, float %1019, float 1.000000e+00)  ; FMin(a,b)
  %1024 = call float @dx.op.binary.f32(i32 36, float %1020, float 1.000000e+00)  ; FMin(a,b)
  %1025 = call float @dx.op.binary.f32(i32 36, float %1021, float 1.000000e+00)  ; FMin(a,b)
  %1026 = fcmp fast olt float %1022, 0x3FEFFF8020000000
  br i1 %1026, label %1027, label %1142, !dx.controlflow.hints !73

; <label>:1027                                    ; preds = %995
  %1028 = extractvalue %dx.types.CBufRet.f32 %990, 3
  %1029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1030 = extractvalue %dx.types.CBufRet.f32 %1029, 0
  %1031 = extractvalue %dx.types.CBufRet.f32 %1029, 1
  %1032 = extractvalue %dx.types.CBufRet.f32 %1029, 2
  %1033 = extractvalue %dx.types.CBufRet.f32 %1029, 3
  %1034 = fsub fast float %1030, %1022
  %1035 = fsub fast float %1031, %1023
  %1036 = fsub fast float %1032, %1024
  %1037 = fsub fast float %1033, %1025
  %1038 = fmul fast float %1034, %1028
  %1039 = fmul fast float %1035, %1028
  %1040 = fmul fast float %1036, %1028
  %1041 = fmul fast float %1037, %1028
  %1042 = fadd fast float %1038, %1022
  %1043 = fadd fast float %1039, %1023
  %1044 = fsub fast float -0.000000e+00, %1043
  %1045 = fadd fast float %1040, %1024
  %1046 = fadd fast float %1041, %1025
  %1047 = fmul fast float %1042, %1042
  %1048 = fsub fast float %1043, %1047
  %1049 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1048)  ; FMax(a,b)
  %1050 = fdiv fast float 1.000000e+00, %1049
  %1051 = fmul fast float %1043, %1042
  %1052 = fsub fast float %1045, %1051
  %1053 = fsub fast float %1002, %1042
  %1054 = fmul fast float %1002, %1002
  %1055 = fsub fast float %1054, %1043
  %1056 = fmul fast float %1053, %1050
  %1057 = fmul fast float %1056, %1052
  %1058 = fsub fast float %1055, %1057
  %1059 = fmul fast float %1043, %1043
  %1060 = fsub fast float %1046, %1059
  %1061 = fmul fast float %1052, %1052
  %1062 = fmul fast float %1061, %1050
  %1063 = fsub fast float %1060, %1062
  %1064 = fdiv fast float %1058, %1063
  %1065 = fmul fast float %1052, %1064
  %1066 = fsub fast float %1053, %1065
  %1067 = fmul fast float %1066, %1050
  %1068 = fmul fast float %1067, %1042
  %1069 = fsub fast float 1.000000e+00, %1068
  %1070 = fmul fast float %1043, %1064
  %1071 = fsub fast float %1069, %1070
  %1072 = fmul fast float %1067, %1067
  %1073 = fmul fast float %1064, 4.000000e+00
  %1074 = fmul fast float %1073, %1071
  %1075 = fsub fast float %1072, %1074
  %1076 = call float @dx.op.unary.f32(i32 24, float %1075)  ; Sqrt(value)
  %1077 = fcmp fast oge float %1067, 0.000000e+00
  %1078 = fsub fast float -0.000000e+00, %1076
  %1079 = select i1 %1077, float %1078, float %1076
  %1080 = fsub fast float %1079, %1067
  %1081 = fdiv fast float %1080, %1064
  %1082 = fdiv fast float %1071, %1080
  %1083 = fmul fast float %1081, 5.000000e-01
  %1084 = fmul fast float %1082, 2.000000e+00
  %1085 = select i1 %1077, float %1083, float %1084
  %1086 = select i1 %1077, float %1084, float %1083
  %1087 = call float @dx.op.binary.f32(i32 35, float %1085, float %1086)  ; FMax(a,b)
  %1088 = call float @dx.op.binary.f32(i32 36, float %1085, float %1086)  ; FMin(a,b)
  %1089 = fcmp fast ogt float %1002, %1088
  br i1 %1089, label %1090, label %1100

; <label>:1090                                    ; preds = %1027
  %1091 = fsub fast float %1002, %1088
  %1092 = fsub fast float %1087, %1088
  %1093 = fmul fast float %1091, %1092
  %1094 = fmul fast float %1087, %1002
  %1095 = fadd fast float %1087, %1002
  %1096 = fmul fast float %1095, %1042
  %1097 = fadd fast float %1094, %1043
  %1098 = fsub fast float %1097, %1096
  %1099 = fdiv fast float %1098, %1093
  br label %1100

; <label>:1100                                    ; preds = %1090, %1027
  %1101 = phi float [ %1099, %1090 ], [ 0.000000e+00, %1027 ]
  %1102 = fcmp fast ogt float %1002, %1087
  %1103 = fsub fast float %1002, %1087
  br i1 %1102, label %1104, label %1114

; <label>:1104                                    ; preds = %1100
  %1105 = fsub fast float %1087, %1088
  %1106 = fmul fast float %1105, %1103
  %1107 = fmul fast float %1088, %1002
  %1108 = fadd fast float %1088, %1002
  %1109 = fmul fast float %1108, %1042
  %1110 = fsub fast float %1044, %1107
  %1111 = fadd fast float %1110, %1109
  %1112 = fdiv fast float %1111, %1106
  %1113 = fadd fast float %1112, %1101
  br label %1114

; <label>:1114                                    ; preds = %1104, %1100
  %1115 = phi float [ %1113, %1104 ], [ %1101, %1100 ]
  %1116 = fsub fast float %1002, %1088
  %1117 = fmul fast float %1116, %1103
  %1118 = fmul fast float %1088, %1087
  %1119 = fadd fast float %1088, %1087
  %1120 = fmul fast float %1119, %1042
  %1121 = fadd fast float %1118, %1043
  %1122 = fsub fast float %1121, %1120
  %1123 = fdiv fast float %1122, %1117
  %1124 = call float @dx.op.unary.f32(i32 7, float %1115)  ; Saturate(value)
  %1125 = fcmp fast oeq float %779, 0.000000e+00
  %1126 = extractvalue %dx.types.CBufRet.f32 %990, 0
  %1127 = fcmp fast oeq float %1126, 0.000000e+00
  %1128 = or i1 %1125, %1127
  %1129 = fmul fast float %1126, 2.000000e+00
  %1130 = fadd fast float %991, %992
  %1131 = fdiv fast float %1130, %1129
  %1132 = call float @dx.op.unary.f32(i32 7, float %1131)  ; Saturate(value)
  %1133 = fmul fast float %1132, 2.000000e+00
  %1134 = fsub fast float 3.000000e+00, %1133
  %1135 = fmul fast float %1132, %1132
  %1136 = fmul fast float %1135, %1134
  %1137 = select i1 %1128, float 1.000000e+00, float %1136
  %1138 = fmul fast float %1123, %779
  %1139 = fadd fast float %1124, %1138
  %1140 = call float @dx.op.unary.f32(i32 7, float %1139)  ; Saturate(value)
  %1141 = fmul fast float %1137, %1140
  br label %1142

; <label>:1142                                    ; preds = %1114, %995
  %1143 = phi float [ %1141, %1114 ], [ 0.000000e+00, %995 ]
  %1144 = fsub fast float 1.000000e+00, %1143
  %1145 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %18, float %943, float %944, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1146 = extractvalue %dx.types.ResRet.f32 %1145, 0
  %1147 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1148 = extractvalue %dx.types.CBufRet.i32 %1147, 2
  %1149 = icmp eq i32 %1148, 0
  br i1 %1149, label %1155, label %1150

; <label>:1150                                    ; preds = %1142
  %1151 = call float @dx.op.unary.f32(i32 7, float %1143)  ; Saturate(value)
  %1152 = fadd fast float %1146, -1.000000e+00
  %1153 = fmul fast float %1151, %1152
  %1154 = fadd fast float %1153, 1.000000e+00
  br label %1155

; <label>:1155                                    ; preds = %1150, %1142
  %1156 = phi float [ %1154, %1150 ], [ %1144, %1142 ]
  %1157 = call float @dx.op.binary.f32(i32 35, float %1146, float %1156)  ; FMax(a,b)
  %1158 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %1159 = extractvalue %dx.types.CBufRet.i32 %1158, 2
  %1160 = and i32 %1159, 1
  %1161 = icmp eq i32 %1160, 0
  %1162 = fcmp fast une float %1157, 1.000000e+00
  %1163 = and i1 %1162, %1161
  br i1 %1163, label %1164, label %1183

; <label>:1164                                    ; preds = %1155
  %1165 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %18, float %943, float %944, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1166 = extractvalue %dx.types.ResRet.f32 %1165, 0
  %1167 = extractvalue %dx.types.ResRet.f32 %1165, 1
  %1168 = extractvalue %dx.types.ResRet.f32 %1165, 2
  %1169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1170 = extractvalue %dx.types.CBufRet.f32 %1169, 1
  %1171 = fmul fast float %1170, %1166
  %1172 = fmul fast float %1170, %1167
  %1173 = fmul fast float %1170, %1168
  %1174 = fcmp fast ogt float %1146, 0x3FEFFF2E40000000
  %1175 = fsub fast float 1.000000e+00, %1157
  %1176 = fsub fast float 1.000000e+00, %1146
  %1177 = fdiv fast float %1175, %1176
  %1178 = call float @dx.op.unary.f32(i32 7, float %1177)  ; Saturate(value)
  %1179 = select i1 %1174, float 0.000000e+00, float %1178
  %1180 = fmul fast float %1171, %1179
  %1181 = fmul fast float %1172, %1179
  %1182 = fmul fast float %1173, %1179
  br label %1183

; <label>:1183                                    ; preds = %1164, %1155
  %1184 = phi float [ 0.000000e+00, %1155 ], [ %1180, %1164 ]
  %1185 = phi float [ 0.000000e+00, %1155 ], [ %1181, %1164 ]
  %1186 = phi float [ 0.000000e+00, %1155 ], [ %1182, %1164 ]
  %1187 = fmul fast float %1184, %760
  %1188 = fmul fast float %1185, %760
  %1189 = fmul fast float %1186, %760
  %1190 = fmul fast float %1157, %921
  %1191 = call float @dx.op.dot3.f32(i32 55, float %1157, float %1157, float %1157, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1192 = call float @dx.op.dot3.f32(i32 55, float %1187, float %1188, float %1189, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1193 = select i1 %112, float %1191, float %1157
  %1194 = select i1 %112, float 1.000000e+00, float %1157
  %1195 = select i1 %112, float %1192, float %1187
  %1196 = select i1 %112, float 0.000000e+00, float %1188
  %1197 = select i1 %112, float 0.000000e+00, float %1189
  %1198 = fmul fast float %1193, %933
  %1199 = fmul fast float %1193, %934
  %1200 = fmul fast float %1194, %935
  %1201 = fadd fast float %1198, %1195
  %1202 = fadd fast float %1199, %1196
  %1203 = fadd fast float %1197, %1200
  br label %1204

; <label>:1204                                    ; preds = %1183, %939, %909, %903
  %1205 = phi float [ %905, %903 ], [ %933, %909 ], [ %1201, %1183 ], [ %933, %939 ]
  %1206 = phi float [ %906, %903 ], [ %934, %909 ], [ %1202, %1183 ], [ %934, %939 ]
  %1207 = phi float [ %907, %903 ], [ %935, %909 ], [ %1203, %1183 ], [ %935, %939 ]
  %1208 = phi float [ %908, %903 ], [ %921, %909 ], [ %1190, %1183 ], [ %921, %939 ]
  %1209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1210 = extractvalue %dx.types.CBufRet.f32 %1209, 2
  %1211 = extractvalue %dx.types.CBufRet.f32 %1209, 3
  %1212 = fmul fast float %1210, %51
  %1213 = fmul fast float %1211, %52
  %1214 = call float @dx.op.unary.f32(i32 7, float %1212)  ; Saturate(value)
  %1215 = call float @dx.op.unary.f32(i32 7, float %1213)  ; Saturate(value)
  %1216 = select i1 %796, i32 2, i32 0
  %1217 = or i32 %1216, 1
  %1218 = uitofp i32 %1217 to float
  %1219 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %1214, float %1215, float %1218, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1220 = extractvalue %dx.types.ResRet.f32 %1219, 0
  %1221 = extractvalue %dx.types.ResRet.f32 %1219, 1
  %1222 = extractvalue %dx.types.ResRet.f32 %1219, 2
  %1223 = extractvalue %dx.types.ResRet.f32 %1219, 3
  %1224 = add nuw nsw i32 %1216, 2
  %1225 = uitofp i32 %1224 to float
  %1226 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %1214, float %1215, float %1225, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1227 = extractvalue %dx.types.ResRet.f32 %1226, 0
  %1228 = extractvalue %dx.types.ResRet.f32 %1226, 1
  %1229 = extractvalue %dx.types.ResRet.f32 %1226, 2
  %1230 = extractvalue %dx.types.ResRet.f32 %1226, 3
  %1231 = call float @dx.op.binary.f32(i32 35, float %1221, float %1222)  ; FMax(a,b)
  %1232 = call float @dx.op.binary.f32(i32 35, float %1220, float %1231)  ; FMax(a,b)
  %1233 = call float @dx.op.binary.f32(i32 35, float %1232, float %1223)  ; FMax(a,b)
  %1234 = call float @dx.op.binary.f32(i32 36, float %1228, float %1229)  ; FMin(a,b)
  %1235 = call float @dx.op.binary.f32(i32 36, float %1227, float %1234)  ; FMin(a,b)
  %1236 = call float @dx.op.binary.f32(i32 36, float %1235, float %1230)  ; FMin(a,b)
  %1237 = fmul fast float %1233, 2.550000e+02
  %1238 = fadd fast float %1237, 0x3F70101020000000
  %1239 = fptoui float %1238 to i32
  %1240 = fmul fast float %1236, 2.550000e+02
  %1241 = fadd fast float %1240, 0x3F70101020000000
  %1242 = fptoui float %1241 to i32
  %1243 = icmp ult i32 %1239, %1242
  br i1 %1243, label %1244, label %1296

; <label>:1244                                    ; preds = %1204
  %1245 = fcmp fast ogt float %45, 9.843750e-01
  %1246 = fadd fast float %904, -4.000000e+00
  %1247 = select i1 %1245, float -4.000000e+00, float %1246
  %1248 = call float @dx.op.binary.f32(i32 35, float %1247, float 0.000000e+00)  ; FMax(a,b)
  %1249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1250 = extractvalue %dx.types.CBufRet.f32 %1249, 0
  %1251 = fadd fast float %1250, %1248
  %1252 = extractvalue %dx.types.CBufRet.f32 %1249, 2
  %1253 = fmul fast float %1251, %1252
  %1254 = call float @dx.op.unary.f32(i32 23, float %1253)  ; Log(value)
  %1255 = extractvalue %dx.types.CBufRet.f32 %1249, 3
  %1256 = fmul fast float %1255, %1254
  %1257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1258 = extractvalue %dx.types.CBufRet.f32 %1257, 2
  %1259 = fmul fast float %1256, %1258
  %1260 = call float @dx.op.unary.f32(i32 7, float %1259)  ; Saturate(value)
  %1261 = uitofp i32 %1239 to float
  %1262 = uitofp i32 %1242 to float
  %1263 = fadd fast float %1261, 5.000000e-01
  %1264 = fadd fast float %1262, 5.000000e-01
  %1265 = fmul fast float %1258, %1263
  %1266 = fmul fast float %1258, %1264
  %1267 = fadd fast float %1265, 0x3F0FFB4800000000
  %1268 = fadd fast float %1266, 0xBF0FFB4800000000
  %1269 = call float @dx.op.binary.f32(i32 35, float %1260, float %1267)  ; FMax(a,b)
  %1270 = call float @dx.op.binary.f32(i32 36, float %1269, float %1268)  ; FMin(a,b)
  %1271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1272 = extractvalue %dx.types.CBufRet.f32 %1271, 1
  %1273 = extractvalue %dx.types.CBufRet.f32 %1271, 2
  %1274 = extractvalue %dx.types.CBufRet.f32 %1271, 0
  %1275 = select i1 %796, float %1274, float 0.000000e+00
  %1276 = fmul fast float %1272, %1270
  %1277 = fadd fast float %1275, %1276
  %1278 = fadd fast float %1275, %1273
  %1279 = fsub fast float %1272, %1273
  %1280 = fadd fast float %1279, %1275
  %1281 = call float @dx.op.binary.f32(i32 35, float %1277, float %1278)  ; FMax(a,b)
  %1282 = call float @dx.op.binary.f32(i32 36, float %1281, float %1280)  ; FMin(a,b)
  %1283 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %17, float %1214, float %1215, float %1282, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1284 = extractvalue %dx.types.ResRet.f32 %1283, 0
  %1285 = extractvalue %dx.types.ResRet.f32 %1283, 1
  %1286 = extractvalue %dx.types.ResRet.f32 %1283, 2
  %1287 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %1214, float %1215, float %1282, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1288 = extractvalue %dx.types.ResRet.f32 %1287, 0
  %1289 = extractvalue %dx.types.ResRet.f32 %1287, 1
  %1290 = extractvalue %dx.types.ResRet.f32 %1287, 2
  %1291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1292 = extractvalue %dx.types.CBufRet.f32 %1291, 1
  %1293 = fmul fast float %1292, %1288
  %1294 = fmul fast float %1292, %1289
  %1295 = fmul fast float %1292, %1290
  br label %1296

; <label>:1296                                    ; preds = %1244, %1204
  %1297 = phi float [ %1284, %1244 ], [ 1.000000e+00, %1204 ]
  %1298 = phi float [ %1285, %1244 ], [ 1.000000e+00, %1204 ]
  %1299 = phi float [ %1286, %1244 ], [ 1.000000e+00, %1204 ]
  %1300 = phi float [ %1293, %1244 ], [ 0.000000e+00, %1204 ]
  %1301 = phi float [ %1294, %1244 ], [ 0.000000e+00, %1204 ]
  %1302 = phi float [ %1295, %1244 ], [ 0.000000e+00, %1204 ]
  %1303 = fmul fast float %1300, %760
  %1304 = fmul fast float %1301, %760
  %1305 = fmul fast float %1302, %760
  %1306 = fmul fast float %1297, %1208
  %1307 = call float @dx.op.dot3.f32(i32 55, float %1297, float %1298, float %1299, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1308 = call float @dx.op.dot3.f32(i32 55, float %1303, float %1304, float %1305, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1309 = select i1 %112, float %1307, float %1297
  %1310 = select i1 %112, float %1307, float %1298
  %1311 = select i1 %112, float 1.000000e+00, float %1299
  %1312 = select i1 %112, float %1308, float %1303
  %1313 = select i1 %112, float 0.000000e+00, float %1304
  %1314 = select i1 %112, float 0.000000e+00, float %1305
  %1315 = fmul fast float %1309, %1205
  %1316 = fmul fast float %1310, %1206
  %1317 = fmul fast float %1311, %1207
  %1318 = fadd fast float %1315, %1312
  %1319 = fadd fast float %1316, %1313
  %1320 = fadd fast float %1314, %1317
  %1321 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1322 = extractvalue %dx.types.CBufRet.i32 %1321, 3
  %1323 = and i32 %1322, 3
  %1324 = icmp ne i32 %1323, 0
  %1325 = and i32 %1322, 4
  %1326 = icmp ne i32 %1325, 0
  %1327 = and i1 %1324, %1326
  %1328 = and i1 %112, %1327
  br i1 %1328, label %1329, label %1335

; <label>:1329                                    ; preds = %1296
  %1330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1331 = extractvalue %dx.types.CBufRet.f32 %1330, 1
  %1332 = fadd fast float %1306, -1.000000e+00
  %1333 = fmul fast float %1331, %1332
  %1334 = fadd fast float %1333, 1.000000e+00
  br label %1335

; <label>:1335                                    ; preds = %1329, %1296
  %1336 = phi float [ %1334, %1329 ], [ %1306, %1296 ]
  %1337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1338 = extractvalue %dx.types.CBufRet.f32 %1337, 0
  br i1 %112, label %1339, label %1361

; <label>:1339                                    ; preds = %1335
  %1340 = fadd fast float %1318, %1319
  %1341 = fmul fast float %1338, %1340
  %1342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1343 = extractvalue %dx.types.CBufRet.f32 %1342, 3
  %1344 = extractvalue %dx.types.CBufRet.f32 %765, 1
  %1345 = fsub fast float %768, %1344
  %1346 = extractvalue %dx.types.CBufRet.f32 %765, 2
  %1347 = fmul fast float %1345, %1346
  %1348 = call float @dx.op.unary.f32(i32 7, float %1347)  ; Saturate(value)
  %1349 = fsub fast float %1348, %1343
  %1350 = fmul fast float %1349, %1336
  %1351 = fadd fast float %1350, %1343
  %1352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1353 = extractvalue %dx.types.CBufRet.f32 %1352, 0
  %1354 = fsub fast float %1351, %1353
  %1355 = fmul fast float %1354, 1.000000e+01
  %1356 = call float @dx.op.unary.f32(i32 7, float %1355)  ; Saturate(value)
  %1357 = fsub fast float %739, %760
  %1358 = fmul fast float %1356, %1357
  %1359 = fadd fast float %1358, %760
  %1360 = fmul fast float %1359, %1351
  br label %1370

; <label>:1361                                    ; preds = %1335
  %1362 = fmul fast float %1338, %1318
  %1363 = fmul fast float %1338, %1319
  %1364 = fmul fast float %1338, %1320
  %1365 = call float @dx.op.binary.f32(i32 35, float %1363, float %1364)  ; FMax(a,b)
  %1366 = call float @dx.op.binary.f32(i32 35, float %1362, float %1365)  ; FMax(a,b)
  %1367 = call float @dx.op.binary.f32(i32 35, float %1366, float %760)  ; FMax(a,b)
  %1368 = fcmp fast ugt float %1367, 0x3F10000000000000
  br i1 %1368, label %1370, label %1369

; <label>:1369                                    ; preds = %1361
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1370

; <label>:1370                                    ; preds = %1369, %1361, %1339
  %1371 = phi float [ %1341, %1339 ], [ %1362, %1369 ], [ %1362, %1361 ]
  %1372 = phi float [ %1360, %1339 ], [ %1363, %1369 ], [ %1363, %1361 ]
  %1373 = phi float [ %1359, %1339 ], [ %1364, %1369 ], [ %1364, %1361 ]
  %1374 = phi float [ %1359, %1339 ], [ %760, %1369 ], [ %760, %1361 ]
  %1375 = fadd fast float %582, 0x3FE3C6EF40000000
  %1376 = call float @dx.op.unary.f32(i32 22, float %1375)  ; Frc(value)
  %1377 = call float @dx.op.unary.f32(i32 23, float %1371)  ; Log(value)
  %1378 = fadd fast float %1377, -7.000000e+00
  %1379 = call float @dx.op.unary.f32(i32 21, float %1378)  ; Exp(value)
  %1380 = fmul fast float %1376, 2.000000e+00
  %1381 = fadd fast float %1380, -1.000000e+00
  %1382 = fmul fast float %1379, %1381
  %1383 = fcmp fast ogt float %1371, 0.000000e+00
  %1384 = select i1 %1383, float %1382, float 0.000000e+00
  %1385 = fadd fast float %1384, %1371
  %1386 = fadd fast float %582, 0x3FF3C6EF40000000
  %1387 = call float @dx.op.unary.f32(i32 22, float %1386)  ; Frc(value)
  %1388 = call float @dx.op.unary.f32(i32 23, float %1372)  ; Log(value)
  %1389 = fadd fast float %1388, -7.000000e+00
  %1390 = call float @dx.op.unary.f32(i32 21, float %1389)  ; Exp(value)
  %1391 = fmul fast float %1387, 2.000000e+00
  %1392 = fadd fast float %1391, -1.000000e+00
  %1393 = fmul fast float %1390, %1392
  %1394 = fcmp fast ogt float %1372, 0.000000e+00
  %1395 = select i1 %1394, float %1393, float 0.000000e+00
  %1396 = fadd fast float %1395, %1372
  %1397 = fadd fast float %582, 0x3FFDAA66E0000000
  %1398 = call float @dx.op.unary.f32(i32 22, float %1397)  ; Frc(value)
  %1399 = call float @dx.op.unary.f32(i32 23, float %1373)  ; Log(value)
  %1400 = fadd fast float %1399, -6.000000e+00
  %1401 = call float @dx.op.unary.f32(i32 21, float %1400)  ; Exp(value)
  %1402 = fmul fast float %1398, 2.000000e+00
  %1403 = fadd fast float %1402, -1.000000e+00
  %1404 = fmul fast float %1401, %1403
  %1405 = fcmp fast ogt float %1373, 0.000000e+00
  %1406 = select i1 %1405, float %1404, float 0.000000e+00
  %1407 = fadd fast float %1406, %1373
  %1408 = select i1 %112, float %1372, float %1396
  %1409 = select i1 %112, float %1373, float %1407
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1410 = call float @dx.op.binary.f32(i32 36, float %1385, float 3.225500e+04)  ; FMin(a,b)
  %1411 = call float @dx.op.binary.f32(i32 36, float %1408, float 3.225500e+04)  ; FMin(a,b)
  %1412 = call float @dx.op.binary.f32(i32 36, float %1409, float 3.225500e+04)  ; FMin(a,b)
  %1413 = call float @dx.op.binary.f32(i32 36, float %1374, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1410)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1411)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1412)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1413)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1374)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1374)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1374)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1374)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!34 = !{[37 x i32] [i32 35, i32 8, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 254, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 255]}
!35 = !{void ()* @ps_main, !"ps_main", !36, !4, !61}
!36 = !{!37, !57, null}
!37 = !{!38, !41, !42, !43, !46, !49, !51, !53, !54, !56}
!38 = !{i32 0, !"SV_Position", i8 9, i8 3, !39, i8 4, i32 1, i8 4, i32 0, i8 0, !40}
!39 = !{i32 0}
!40 = !{i32 3, i32 15}
!41 = !{i32 1, !"COLOR", i8 9, i8 0, !39, i8 2, i32 1, i8 4, i32 1, i8 0, !40}
!42 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !39, i8 2, i32 1, i8 4, i32 2, i8 0, !40}
!43 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !44, i8 2, i32 1, i8 4, i32 3, i8 0, !45}
!44 = !{i32 3}
!45 = !{i32 3, i32 7}
!46 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !47, i8 2, i32 1, i8 4, i32 4, i8 0, !48}
!47 = !{i32 4}
!48 = !{i32 3, i32 3}
!49 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !50, i8 3, i32 1, i8 2, i32 5, i8 0, !48}
!50 = !{i32 5}
!51 = !{i32 6, !"TEXCOORD", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 6, i8 0, null}
!52 = !{i32 8}
!53 = !{i32 7, !"QUAD_POSITION", i8 9, i8 0, !39, i8 1, i32 1, i8 4, i32 7, i8 0, !40}
!54 = !{i32 8, !"COLOR", i8 5, i8 0, !44, i8 1, i32 1, i8 3, i32 8, i8 0, !55}
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
!65 = distinct !{!65, !"dx.controlflow.hints", i32 1}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 1}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 1}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 1}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 1}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}

