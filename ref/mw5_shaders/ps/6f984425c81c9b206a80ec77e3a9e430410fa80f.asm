;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float   xyzw
; TEXCOORD                 0   xy          2     NONE   float   xy  
; TEXCOORD                 3   xyzw        3     NONE   float   xyzw
; TEXCOORD                 5   xy          4     NONE   float   xy  
; TEXCOORD                 8   xyzw        5     NONE   float   xyzw
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
; shader hash: c3e254ef3c4eb0784eea955c0a7ce9c6
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
;                                   texture     f32          3d     T17     t46,space2     1
;
;
; ViewId state:
;
; Number of inputs: 31, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 7, 8, 9, 12, 13, 14, 15, 16, 17, 20, 21, 22, 23, 24, 25, 26, 27, 28, 30 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 20, 21, 22, 23, 24, 25, 26, 27, 28, 30 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 22, 23, 24, 25, 26, 27, 28, 30 }
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
  %23 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %52 = extractvalue %dx.types.CBufRet.f32 %51, 0
  %53 = fmul fast float %52, %45
  %54 = fmul fast float %52, %46
  %55 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %56 = extractvalue %dx.types.CBufRet.f32 %55, 2
  %57 = extractvalue %dx.types.CBufRet.f32 %55, 3
  %58 = fmul fast float %53, 2.000000e+00
  %59 = fmul fast float %58, %56
  %60 = fmul fast float %54, 2.000000e+00
  %61 = fmul fast float %60, %57
  %62 = fsub fast float 1.000000e+00, %59
  %63 = fsub fast float 1.000000e+00, %61
  %64 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %65 = extractvalue %dx.types.CBufRet.f32 %64, 0
  %66 = extractvalue %dx.types.CBufRet.f32 %64, 1
  %67 = extractvalue %dx.types.CBufRet.f32 %64, 2
  %68 = fmul fast float %62, %65
  %69 = fmul fast float %62, %66
  %70 = fmul fast float %62, %67
  %71 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %72 = extractvalue %dx.types.CBufRet.f32 %71, 0
  %73 = extractvalue %dx.types.CBufRet.f32 %71, 1
  %74 = extractvalue %dx.types.CBufRet.f32 %71, 2
  %75 = fmul fast float %63, %72
  %76 = fmul fast float %63, %73
  %77 = fmul fast float %63, %74
  %78 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %79 = extractvalue %dx.types.CBufRet.f32 %78, 0
  %80 = extractvalue %dx.types.CBufRet.f32 %78, 1
  %81 = extractvalue %dx.types.CBufRet.f32 %78, 2
  %82 = fadd fast float %75, %79
  %83 = fadd fast float %82, %68
  %84 = fadd fast float %76, %80
  %85 = fadd fast float %84, %69
  %86 = fadd fast float %77, %81
  %87 = fadd fast float %86, %70
  %88 = fmul fast float %83, %48
  %89 = fmul fast float %85, %48
  %90 = fmul fast float %87, %48
  %91 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %92 = extractvalue %dx.types.CBufRet.i32 %91, 3
  %93 = and i32 %92, 3
  %94 = icmp ne i32 %93, 0
  %95 = and i32 %92, 4
  %96 = icmp ne i32 %95, 0
  %97 = and i1 %94, %96
  br i1 %97, label %98, label %107

; <label>:98                                      ; preds = %0
  %99 = fmul fast float %57, %54
  %100 = fmul fast float %56, %53
  %101 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %19, float %100, float %99, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %102 = extractvalue %dx.types.ResRet.f32 %101, 0
  %103 = fsub fast float 1.000000e+00, %102
  %104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %105 = extractvalue %dx.types.CBufRet.f32 %104, 0
  %106 = fcmp fast olt float %103, %105
  br label %110

; <label>:107                                     ; preds = %0
  %108 = icmp eq i32 %95, 0
  %109 = and i1 %94, %108
  br label %110

; <label>:110                                     ; preds = %107, %98
  %111 = phi i1 [ %106, %98 ], [ %109, %107 ]
  %112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %113 = extractvalue %dx.types.CBufRet.f32 %112, 2
  %114 = extractvalue %dx.types.CBufRet.f32 %112, 3
  %115 = fmul fast float %113, %53
  %116 = fmul fast float %114, %54
  %117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %118 = extractvalue %dx.types.ResRet.i32 %117, 0
  %119 = and i32 %118, 114688
  %120 = icmp ne i32 %119, 0
  %121 = select i1 %120, float %115, float 0.000000e+00
  %122 = select i1 %120, float %116, float 0.000000e+00
  %123 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %20, float %121, float %122, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %124 = extractvalue %dx.types.ResRet.f32 %123, 0
  %125 = fmul fast float %124, 2.550000e+02
  %126 = fptoui float %125 to i32
  %127 = select i1 %120, i32 %126, i32 0
  %128 = mul i32 %23, 208
  %129 = add i32 %128, 188
  %130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %129, i32 undef)  ; BufferLoad(srv,index,wot)
  %131 = extractvalue %dx.types.ResRet.i32 %130, 0
  %132 = and i32 %92, 114688
  %133 = and i32 %92, 8
  %134 = icmp ne i32 %133, 0
  %135 = or i1 %111, %134
  %136 = select i1 %135, i32 %132, i32 16384
  %137 = and i32 %136, %131
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %140

; <label>:139                                     ; preds = %110
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %140

; <label>:140                                     ; preds = %139, %110
  %141 = and i32 %131, 512
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %167, label %143

; <label>:143                                     ; preds = %140
  %144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %145 = extractvalue %dx.types.CBufRet.f32 %144, 2
  %146 = extractvalue %dx.types.CBufRet.f32 %144, 3
  %147 = fmul fast float %145, %53
  %148 = fmul fast float %146, %54
  %149 = extractvalue %dx.types.CBufRet.f32 %144, 0
  %150 = extractvalue %dx.types.CBufRet.f32 %144, 1
  %151 = fdiv fast float %149, %150
  %152 = fcmp fast ogt float %151, 0x3FFC71C720000000
  br i1 %152, label %153, label %159

; <label>:153                                     ; preds = %143
  %154 = fdiv fast float 0x3FFC71C720000000, %151
  %155 = fmul fast float %154, %148
  %156 = fsub fast float 1.000000e+00, %154
  %157 = fmul fast float %156, 5.000000e-01
  %158 = fadd fast float %157, %155
  br label %167

; <label>:159                                     ; preds = %143
  %160 = fcmp fast olt float %151, 0x3FFC71C720000000
  br i1 %160, label %161, label %167

; <label>:161                                     ; preds = %159
  %162 = fmul fast float %147, 5.625000e-01
  %163 = fmul fast float %162, %151
  %164 = fmul fast float %151, 2.812500e-01
  %165 = fsub fast float 5.000000e-01, %164
  %166 = fadd fast float %165, %163
  br label %167

; <label>:167                                     ; preds = %161, %159, %153, %140
  %168 = phi float [ %39, %140 ], [ %147, %153 ], [ %166, %161 ], [ %147, %159 ]
  %169 = phi float [ %40, %140 ], [ %158, %153 ], [ %148, %161 ], [ %148, %159 ]
  %170 = add i32 %24, 72
  %171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %170, i32 undef)  ; BufferLoad(srv,index,wot)
  %172 = extractvalue %dx.types.ResRet.i32 %171, 0
  %173 = extractvalue %dx.types.ResRet.i32 %171, 1
  %174 = bitcast i32 %172 to float
  %175 = bitcast i32 %173 to float
  %176 = fmul fast float %174, %39
  %177 = fmul fast float %175, %40
  %178 = call float @dx.op.unary.f32(i32 22, float %176)  ; Frc(value)
  %179 = call float @dx.op.unary.f32(i32 22, float %177)  ; Frc(value)
  %180 = and i32 %131, 16
  %181 = icmp ne i32 %180, 0
  %182 = select i1 %181, float 1.000000e+00, float %44
  %183 = add i32 %24, 128
  %184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %183, i32 undef)  ; BufferLoad(srv,index,wot)
  %185 = extractvalue %dx.types.ResRet.i32 %184, 0
  %186 = add i32 %185, 0
  %187 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %186, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %189 = extractvalue %dx.types.CBufRet.f32 %188, 2
  %190 = call %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32 61, %dx.types.Handle %187, %dx.types.Handle %50, float %168, float %169, float undef, float undef, i32 0, i32 0, i32 undef, float %189, float undef)  ; SampleBias(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,bias,clamp)
  %191 = extractvalue %dx.types.ResRet.f32 %190, 0
  %192 = fmul fast float %191, %182
  %193 = icmp eq i32 %180, 0
  br i1 %193, label %213, label %194, !dx.controlflow.hints !60

; <label>:194                                     ; preds = %167
  %195 = add i32 %128, 64
  %196 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %195, i32 undef)  ; BufferLoad(srv,index,wot)
  %197 = extractvalue %dx.types.ResRet.f32 %196, 0
  %198 = fadd fast float %197, 1.000000e+00
  %199 = fmul fast float %198, %44
  %200 = fsub fast float %199, %197
  %201 = fsub fast float %198, %200
  %202 = call float @dx.op.unary.f32(i32 7, float %201)  ; Saturate(value)
  %203 = fsub fast float 1.000000e+00, %199
  %204 = call float @dx.op.unary.f32(i32 7, float %203)  ; Saturate(value)
  %205 = fsub fast float %202, %204
  %206 = fsub fast float %192, %204
  %207 = fdiv fast float %206, %205
  %208 = call float @dx.op.unary.f32(i32 7, float %207)  ; Saturate(value)
  %209 = fmul fast float %208, 2.000000e+00
  %210 = fsub fast float 3.000000e+00, %209
  %211 = fmul fast float %208, %208
  %212 = fmul fast float %211, %210
  br label %213

; <label>:213                                     ; preds = %194, %167
  %214 = phi float [ %212, %194 ], [ %192, %167 ]
  %215 = fcmp fast ogt float %214, 0.000000e+00
  br i1 %215, label %217, label %216

; <label>:216                                     ; preds = %213
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %217

; <label>:217                                     ; preds = %216, %213
  %218 = call float @dx.op.unary.f32(i32 7, float %214)  ; Saturate(value)
  %219 = fmul fast float %53, 5.000000e-01
  %220 = fmul fast float %54, 5.000000e-01
  %221 = fptosi float %219 to i32
  %222 = fptosi float %220 to i32
  %223 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %221, i32 %222, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %224 = extractvalue %dx.types.ResRet.i32 %223, 0
  %225 = lshr i32 %224, 18
  %226 = uitofp i32 %225 to float
  %227 = fmul fast float %226, 0x3F4C00EBA0000000
  %228 = call float @dx.op.unary.f32(i32 21, float %227)  ; Exp(value)
  %229 = fadd fast float %228, -1.000000e+00
  %230 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %10, i32 0)  ; GetDimensions(handle,mipLevel)
  %231 = extractvalue %dx.types.Dimensions %230, 0
  %232 = sitofp i32 %231 to float
  %233 = extractvalue %dx.types.Dimensions %230, 1
  %234 = sitofp i32 %233 to float
  %235 = fcmp fast oge float %219, %232
  %236 = fcmp fast oge float %220, %234
  %237 = or i1 %235, %236
  %238 = select i1 %237, float 0x4197782600000000, float %229
  %239 = fsub fast float %238, %48
  %240 = fcmp fast ogt float %239, 0.000000e+00
  %241 = and i32 %127, -2
  %242 = icmp eq i32 %241, 2
  %243 = and i1 %242, %240
  %244 = xor i1 %240, true
  %245 = icmp eq i32 %127, 1
  %246 = and i1 %245, %244
  %247 = or i1 %243, %246
  %248 = and i32 %131, 262144
  %249 = icmp ne i32 %248, 0
  %250 = and i1 %249, %247
  %251 = xor i1 %247, true
  %252 = and i32 %131, 131072
  %253 = icmp ne i32 %252, 0
  %254 = and i1 %253, %251
  %255 = or i1 %250, %254
  br i1 %255, label %256, label %257

; <label>:256                                     ; preds = %217
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %257

; <label>:257                                     ; preds = %256, %217
  %258 = and i32 %131, 32
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %537, label %260, !dx.controlflow.hints !61

; <label>:260                                     ; preds = %257
  %261 = add i32 %128, 80
  %262 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %261, i32 undef)  ; BufferLoad(srv,index,wot)
  %263 = extractvalue %dx.types.ResRet.f32 %262, 0
  %264 = extractvalue %dx.types.ResRet.f32 %262, 1
  %265 = extractvalue %dx.types.ResRet.f32 %262, 2
  %266 = extractvalue %dx.types.ResRet.f32 %262, 3
  %267 = add i32 %128, 96
  %268 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %267, i32 undef)  ; BufferLoad(srv,index,wot)
  %269 = extractvalue %dx.types.ResRet.f32 %268, 0
  %270 = extractvalue %dx.types.ResRet.f32 %268, 1
  %271 = extractvalue %dx.types.ResRet.f32 %268, 2
  %272 = add i32 %128, 112
  %273 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %272, i32 undef)  ; BufferLoad(srv,index,wot)
  %274 = extractvalue %dx.types.ResRet.f32 %273, 0
  %275 = extractvalue %dx.types.ResRet.f32 %273, 1
  %276 = extractvalue %dx.types.ResRet.f32 %273, 2
  %277 = extractvalue %dx.types.ResRet.f32 %273, 3
  %278 = add i32 %128, 128
  %279 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %278, i32 undef)  ; BufferLoad(srv,index,wot)
  %280 = extractvalue %dx.types.ResRet.f32 %279, 0
  %281 = extractvalue %dx.types.ResRet.f32 %279, 1
  %282 = extractvalue %dx.types.ResRet.f32 %279, 2
  %283 = extractvalue %dx.types.ResRet.f32 %279, 3
  %284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %129, i32 undef)  ; BufferLoad(srv,index,wot)
  %285 = extractvalue %dx.types.ResRet.i32 %284, 0
  %286 = and i32 %285, 4096
  %287 = icmp ne i32 %286, 0
  %288 = fcmp fast une float %271, 0.000000e+00
  %289 = and i32 %285, 64
  %290 = icmp ne i32 %289, 0
  %291 = and i32 %285, 128
  %292 = icmp eq i32 %291, 0
  %293 = and i32 %285, 2048
  %294 = icmp eq i32 %293, 0
  %295 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %13, i32 0)  ; GetDimensions(handle,mipLevel)
  %296 = extractvalue %dx.types.Dimensions %295, 0
  %297 = sitofp i32 %296 to float
  %298 = extractvalue %dx.types.Dimensions %295, 1
  %299 = sitofp i32 %298 to float
  %300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %301 = extractvalue %dx.types.CBufRet.f32 %300, 2
  %302 = extractvalue %dx.types.CBufRet.f32 %300, 3
  %303 = fmul fast float %301, %53
  %304 = fmul fast float %302, %54
  %305 = fmul fast float %303, %297
  %306 = fmul fast float %304, %299
  %307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %308 = extractvalue %dx.types.CBufRet.f32 %307, 1
  %309 = fsub fast float -0.000000e+00, %308
  %310 = fptoui float %309 to i32
  %311 = fptoui float %305 to i32
  %312 = fptoui float %306 to i32
  %313 = and i32 %310, 31
  %314 = lshr i32 %311, %313
  %315 = lshr i32 %312, %313
  %316 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %13, i32 %310, i32 %314, i32 %315, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %317 = extractvalue %dx.types.ResRet.f32 %316, 0
  %318 = fcmp fast ogt float %317, -1.000000e+00
  %319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %320 = extractvalue %dx.types.CBufRet.f32 %319, 1
  %321 = select i1 %318, float %320, float 1.000000e+00
  %322 = fadd fast float %317, 1.000000e+00
  %323 = fmul fast float %321, %322
  %324 = call float @dx.op.unary.f32(i32 6, float %323)  ; FAbs(value)
  %325 = extractvalue %dx.types.CBufRet.f32 %319, 3
  %326 = fcmp fast oge float %324, %325
  %327 = select i1 %326, float 0x4197782600000000, float %324
  br i1 %294, label %417, label %328, !dx.controlflow.hints !62

; <label>:328                                     ; preds = %260
  %329 = fmul fast float %58, %301
  %330 = fmul fast float %60, %302
  %331 = fsub fast float 1.000000e+00, %329
  %332 = fsub fast float 1.000000e+00, %330
  %333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %334 = extractvalue %dx.types.CBufRet.f32 %333, 0
  %335 = extractvalue %dx.types.CBufRet.f32 %333, 1
  %336 = extractvalue %dx.types.CBufRet.f32 %333, 2
  %337 = fmul fast float %331, %334
  %338 = fmul fast float %331, %335
  %339 = fmul fast float %331, %336
  %340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %341 = extractvalue %dx.types.CBufRet.f32 %340, 0
  %342 = extractvalue %dx.types.CBufRet.f32 %340, 1
  %343 = extractvalue %dx.types.CBufRet.f32 %340, 2
  %344 = fmul fast float %332, %341
  %345 = fmul fast float %332, %342
  %346 = fmul fast float %332, %343
  %347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %348 = extractvalue %dx.types.CBufRet.f32 %347, 0
  %349 = extractvalue %dx.types.CBufRet.f32 %347, 1
  %350 = extractvalue %dx.types.CBufRet.f32 %347, 2
  %351 = fadd fast float %344, %348
  %352 = fadd fast float %351, %337
  %353 = fadd fast float %345, %349
  %354 = fadd fast float %353, %338
  %355 = fadd fast float %346, %350
  %356 = fadd fast float %355, %339
  %357 = fmul fast float %352, %327
  %358 = fmul fast float %354, %327
  %359 = fmul fast float %356, %327
  %360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %361 = extractvalue %dx.types.CBufRet.f32 %360, 0
  %362 = extractvalue %dx.types.CBufRet.f32 %360, 1
  %363 = extractvalue %dx.types.CBufRet.f32 %360, 2
  %364 = fsub fast float %361, %25
  %365 = fadd fast float %364, %357
  %366 = fsub fast float %362, %26
  %367 = fadd fast float %366, %358
  %368 = fsub fast float %363, %27
  %369 = fadd fast float %368, %359
  %370 = fmul fast float %28, %28
  %371 = call float @dx.op.dot3.f32(i32 55, float %365, float %367, float %369, float %365, float %367, float %369)  ; Dot3(ax,ay,az,bx,by,bz)
  %372 = fsub fast float %370, %371
  %373 = fmul fast float %270, %370
  %374 = fmul fast float %269, %370
  %375 = fcmp fast olt float %372, %373
  %376 = fcmp fast ogt float %372, %374
  %377 = or i1 %375, %376
  %378 = select i1 %377, float 0.000000e+00, float %372
  %379 = fsub fast float %269, %270
  %380 = fmul fast float %379, %370
  %381 = fsub fast float %378, %373
  %382 = fdiv fast float %381, %380
  %383 = call float @dx.op.unary.f32(i32 7, float %382)  ; Saturate(value)
  %384 = fmul fast float %383, 2.000000e+00
  %385 = fsub fast float 3.000000e+00, %384
  %386 = fmul fast float %383, %383
  %387 = fmul fast float %386, %385
  %388 = fmul fast float %274, %41
  %389 = fmul fast float %275, %42
  %390 = fmul fast float %276, %43
  %391 = fsub fast float %388, %280
  %392 = fsub fast float %389, %281
  %393 = fsub fast float %390, %282
  %394 = fsub fast float %277, %283
  %395 = fmul fast float %387, %391
  %396 = fmul fast float %387, %392
  %397 = fmul fast float %387, %393
  %398 = fmul fast float %387, %394
  %399 = fadd fast float %395, %280
  %400 = fadd fast float %396, %281
  %401 = fadd fast float %397, %282
  %402 = fadd fast float %398, %283
  %403 = fmul fast float %274, %29
  %404 = fmul fast float %275, %30
  %405 = fmul fast float %276, %31
  %406 = fsub fast float %403, %280
  %407 = fsub fast float %404, %281
  %408 = fsub fast float %405, %282
  %409 = fmul fast float %387, %406
  %410 = fmul fast float %387, %407
  %411 = fmul fast float %387, %408
  %412 = fadd fast float %409, %280
  %413 = fadd fast float %410, %281
  %414 = fadd fast float %411, %282
  %415 = fmul fast float %263, %263
  %416 = fmul fast float %415, %378
  br label %524

; <label>:417                                     ; preds = %260
  %418 = and i32 %285, 256
  %419 = icmp eq i32 %418, 0
  %420 = fsub fast float %327, %48
  br i1 %419, label %481, label %421

; <label>:421                                     ; preds = %417
  %422 = fadd fast float %269, %48
  %423 = fcmp fast olt float %327, %48
  %424 = fcmp fast ogt float %327, %422
  %425 = or i1 %423, %424
  %426 = select i1 %425, float 0.000000e+00, float %420
  %427 = call float @dx.op.unary.f32(i32 83, float %327)  ; DerivCoarseX(value)
  %428 = call float @dx.op.unary.f32(i32 84, float %327)  ; DerivCoarseY(value)
  %429 = fmul fast float %427, %427
  %430 = fmul fast float %428, %428
  %431 = fadd fast float %430, %429
  %432 = call float @dx.op.unary.f32(i32 24, float %431)  ; Sqrt(value)
  %433 = extractvalue %dx.types.CBufRet.f32 %307, 2
  %434 = fmul fast float %433, %432
  %435 = call float @dx.op.unary.f32(i32 7, float %434)  ; Saturate(value)
  %436 = fmul fast float %435, %270
  %437 = fdiv fast float %420, %436
  %438 = call float @dx.op.unary.f32(i32 7, float %437)  ; Saturate(value)
  %439 = fmul fast float %438, 2.000000e+00
  %440 = fsub fast float 3.000000e+00, %439
  %441 = fmul fast float %438, %438
  %442 = fmul fast float %441, %440
  %443 = fsub fast float %327, %422
  %444 = fadd fast float %443, %436
  %445 = fdiv fast float %444, %436
  %446 = call float @dx.op.unary.f32(i32 7, float %445)  ; Saturate(value)
  %447 = fmul fast float %446, 2.000000e+00
  %448 = fsub fast float 3.000000e+00, %447
  %449 = fmul fast float %446, %446
  %450 = fmul fast float %449, %448
  %451 = fsub fast float %442, %450
  %452 = fmul fast float %274, %41
  %453 = fmul fast float %275, %42
  %454 = fmul fast float %276, %43
  %455 = fsub fast float %452, %280
  %456 = fsub fast float %453, %281
  %457 = fsub fast float %454, %282
  %458 = fsub fast float %277, %283
  %459 = fmul fast float %451, %455
  %460 = fmul fast float %451, %456
  %461 = fmul fast float %451, %457
  %462 = fmul fast float %451, %458
  %463 = fadd fast float %459, %280
  %464 = fadd fast float %460, %281
  %465 = fadd fast float %461, %282
  %466 = fadd fast float %462, %283
  %467 = fmul fast float %274, %29
  %468 = fmul fast float %275, %30
  %469 = fmul fast float %276, %31
  %470 = fsub fast float %467, %280
  %471 = fsub fast float %468, %281
  %472 = fsub fast float %469, %282
  %473 = fmul fast float %451, %470
  %474 = fmul fast float %451, %471
  %475 = fmul fast float %451, %472
  %476 = fadd fast float %473, %280
  %477 = fadd fast float %474, %281
  %478 = fadd fast float %475, %282
  %479 = fmul fast float %426, %263
  %480 = call float @dx.op.unary.f32(i32 6, float %479)  ; FAbs(value)
  br label %524

; <label>:481                                     ; preds = %417
  br i1 %288, label %482, label %495

; <label>:482                                     ; preds = %481
  %483 = fdiv fast float 5.000000e+01, %28
  %484 = select i1 %290, float %483, float 1.000000e+00
  %485 = fmul fast float %484, %263
  %486 = fmul fast float %178, 2.000000e+00
  %487 = fmul fast float %179, 2.000000e+00
  %488 = fadd fast float %486, -1.000000e+00
  %489 = fadd fast float %487, -1.000000e+00
  %490 = call float @dx.op.dot2.f32(i32 54, float %488, float %489, float %488, float %489)  ; Dot2(ax,ay,bx,by)
  %491 = fmul fast float %271, %28
  %492 = fmul fast float %491, %490
  %493 = fsub fast float %420, %492
  %494 = fmul fast float %485, %493
  br label %524

; <label>:495                                     ; preds = %481
  br i1 %292, label %516, label %496

; <label>:496                                     ; preds = %495
  %497 = fmul fast float %28, 0x3F947AE140000000
  %498 = select i1 %290, float %497, float 1.000000e+00
  %499 = fdiv fast float 1.000000e+00, %498
  %500 = fmul fast float %498, %264
  %501 = fmul fast float %498, %265
  %502 = fmul fast float %499, %266
  %503 = call float @dx.op.unary.f32(i32 6, float %420)  ; FAbs(value)
  %504 = fcmp fast olt float %503, %500
  br i1 %504, label %505, label %509, !dx.controlflow.hints !63

; <label>:505                                     ; preds = %496
  %506 = fmul fast float %499, %263
  %507 = fmul fast float %506, %503
  %508 = call float @dx.op.unary.f32(i32 6, float %507)  ; FAbs(value)
  br label %524

; <label>:509                                     ; preds = %496
  %510 = fcmp fast ogt float %503, %501
  br i1 %510, label %511, label %524

; <label>:511                                     ; preds = %509
  %512 = fsub fast float %503, %501
  %513 = fmul fast float %502, %512
  %514 = call float @dx.op.unary.f32(i32 6, float %513)  ; FAbs(value)
  %515 = fsub fast float 1.000000e+00, %514
  br label %524

; <label>:516                                     ; preds = %495
  %517 = fdiv fast float 5.000000e+01, %28
  %518 = select i1 %290, float %517, float 1.000000e+00
  %519 = fmul fast float %518, %263
  %520 = call float @dx.op.unary.f32(i32 6, float %239)  ; FAbs(value)
  %521 = select i1 %287, float %520, float 0x47EFFFFFE0000000
  %522 = call float @dx.op.binary.f32(i32 36, float %420, float %521)  ; FMin(a,b)
  %523 = fmul fast float %519, %522
  br label %524

; <label>:524                                     ; preds = %516, %511, %509, %505, %482, %421, %328
  %525 = phi float [ %416, %328 ], [ %480, %421 ], [ %494, %482 ], [ %523, %516 ], [ %508, %505 ], [ %515, %511 ], [ %503, %509 ]
  %526 = phi float [ %412, %328 ], [ %476, %421 ], [ %29, %482 ], [ %29, %516 ], [ %29, %505 ], [ %29, %511 ], [ %29, %509 ]
  %527 = phi float [ %413, %328 ], [ %477, %421 ], [ %30, %482 ], [ %30, %516 ], [ %30, %505 ], [ %30, %511 ], [ %30, %509 ]
  %528 = phi float [ %414, %328 ], [ %478, %421 ], [ %31, %482 ], [ %31, %516 ], [ %31, %505 ], [ %31, %511 ], [ %31, %509 ]
  %529 = phi float [ %399, %328 ], [ %463, %421 ], [ %41, %482 ], [ %41, %516 ], [ %41, %505 ], [ %41, %511 ], [ %41, %509 ]
  %530 = phi float [ %400, %328 ], [ %464, %421 ], [ %42, %482 ], [ %42, %516 ], [ %42, %505 ], [ %42, %511 ], [ %42, %509 ]
  %531 = phi float [ %401, %328 ], [ %465, %421 ], [ %43, %482 ], [ %43, %516 ], [ %43, %505 ], [ %43, %511 ], [ %43, %509 ]
  %532 = phi float [ %402, %328 ], [ %466, %421 ], [ 1.000000e+00, %482 ], [ 1.000000e+00, %516 ], [ 1.000000e+00, %505 ], [ 1.000000e+00, %511 ], [ 1.000000e+00, %509 ]
  %533 = call float @dx.op.unary.f32(i32 7, float %525)  ; Saturate(value)
  %534 = fmul fast float %533, %44
  %535 = fmul fast float %532, %218
  %536 = fmul fast float %535, %533
  br label %537

; <label>:537                                     ; preds = %524, %257
  %538 = phi float [ %529, %524 ], [ %41, %257 ]
  %539 = phi float [ %530, %524 ], [ %42, %257 ]
  %540 = phi float [ %531, %524 ], [ %43, %257 ]
  %541 = phi float [ %536, %524 ], [ %218, %257 ]
  %542 = phi float [ %534, %524 ], [ %44, %257 ]
  %543 = phi float [ %526, %524 ], [ %29, %257 ]
  %544 = phi float [ %527, %524 ], [ %30, %257 ]
  %545 = phi float [ %528, %524 ], [ %31, %257 ]
  %546 = fmul fast float %543, %32
  %547 = fmul fast float %544, %32
  %548 = fmul fast float %545, %32
  %549 = fmul fast float %543, %38
  %550 = fmul fast float %544, %38
  %551 = fmul fast float %545, %38
  %552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %553 = extractvalue %dx.types.CBufRet.f32 %552, 2
  %554 = fptosi float %48 to i32
  %555 = sitofp i32 %554 to float
  %556 = fadd fast float %553, %555
  %557 = fmul fast float %556, 0x3FE3C6EF40000000
  %558 = frem fast float %53, 2.560000e+02
  %559 = frem fast float %54, 2.560000e+02
  %560 = fptoui float %558 to i32
  %561 = fptoui float %559 to i32
  %562 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %17, i32 0, i32 %560, i32 %561, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %563 = extractvalue %dx.types.ResRet.f32 %562, 0
  %564 = fadd fast float %563, %557
  %565 = call float @dx.op.unary.f32(i32 22, float %564)  ; Frc(value)
  %566 = and i32 %131, 1
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %628, label %568, !dx.controlflow.hints !64

; <label>:568                                     ; preds = %537
  %569 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %128, i32 undef)  ; BufferLoad(srv,index,wot)
  %570 = extractvalue %dx.types.ResRet.f32 %569, 2
  %571 = extractvalue %dx.types.ResRet.f32 %569, 3
  %572 = add i32 %128, 16
  %573 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %572, i32 undef)  ; BufferLoad(srv,index,wot)
  %574 = extractvalue %dx.types.ResRet.f32 %573, 0
  %575 = extractvalue %dx.types.ResRet.f32 %573, 1
  %576 = extractvalue %dx.types.ResRet.f32 %573, 2
  %577 = add i32 %128, 32
  %578 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %577, i32 undef)  ; BufferLoad(srv,index,wot)
  %579 = extractvalue %dx.types.ResRet.f32 %578, 0
  %580 = extractvalue %dx.types.ResRet.f32 %578, 1
  %581 = extractvalue %dx.types.ResRet.f32 %578, 2
  %582 = and i32 %131, 2
  %583 = icmp eq i32 %582, 0
  %584 = call float @dx.op.dot3.f32(i32 55, float %35, float %36, float %37, float %35, float %36, float %37)  ; Dot3(ax,ay,az,bx,by,bz)
  %585 = call float @dx.op.unary.f32(i32 25, float %584)  ; Rsqrt(value)
  %586 = fmul fast float %585, %35
  %587 = fmul fast float %585, %36
  %588 = fmul fast float %585, %37
  %589 = call float @dx.op.dot3.f32(i32 55, float %88, float %89, float %90, float %88, float %89, float %90)  ; Dot3(ax,ay,az,bx,by,bz)
  %590 = call float @dx.op.unary.f32(i32 25, float %589)  ; Rsqrt(value)
  %591 = fmul fast float %590, %88
  %592 = fmul fast float %590, %89
  %593 = fmul fast float %590, %90
  %594 = call float @dx.op.dot3.f32(i32 55, float %591, float %592, float %593, float %586, float %587, float %588)  ; Dot3(ax,ay,az,bx,by,bz)
  %595 = fmul fast float %594, %594
  %596 = fmul fast float %595, %570
  %597 = fadd fast float %596, %571
  %598 = call float @dx.op.unary.f32(i32 7, float %597)  ; Saturate(value)
  br i1 %583, label %599, label %609, !dx.controlflow.hints !65

; <label>:599                                     ; preds = %568
  %600 = extractvalue %dx.types.ResRet.f32 %569, 1
  %601 = extractvalue %dx.types.ResRet.f32 %569, 0
  %602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %603 = extractvalue %dx.types.CBufRet.f32 %602, 3
  %604 = fmul fast float %603, %589
  %605 = fsub fast float %601, %604
  %606 = fmul fast float %605, %600
  %607 = call float @dx.op.unary.f32(i32 7, float %606)  ; Saturate(value)
  %608 = fmul fast float %607, %598
  br label %609

; <label>:609                                     ; preds = %599, %568
  %610 = phi float [ %608, %599 ], [ %598, %568 ]
  %611 = fsub fast float %574, %579
  %612 = fsub fast float %575, %580
  %613 = fsub fast float %576, %581
  %614 = fmul fast float %610, %611
  %615 = fmul fast float %610, %612
  %616 = fmul fast float %610, %613
  %617 = fadd fast float %614, %579
  %618 = fadd fast float %615, %580
  %619 = fadd fast float %616, %581
  %620 = fmul fast float %617, %538
  %621 = fmul fast float %618, %539
  %622 = fmul fast float %619, %540
  %623 = fmul fast float %617, %546
  %624 = fmul fast float %618, %547
  %625 = fmul fast float %619, %548
  %626 = fmul fast float %610, %541
  %627 = fmul fast float %610, %542
  br label %628

; <label>:628                                     ; preds = %609, %537
  %629 = phi float [ %620, %609 ], [ %538, %537 ]
  %630 = phi float [ %621, %609 ], [ %539, %537 ]
  %631 = phi float [ %622, %609 ], [ %540, %537 ]
  %632 = phi float [ %626, %609 ], [ %541, %537 ]
  %633 = phi float [ %627, %609 ], [ %542, %537 ]
  %634 = phi float [ %623, %609 ], [ %546, %537 ]
  %635 = phi float [ %624, %609 ], [ %547, %537 ]
  %636 = phi float [ %625, %609 ], [ %548, %537 ]
  %637 = add i32 %24, 120
  %638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %637, i32 undef)  ; BufferLoad(srv,index,wot)
  %639 = extractvalue %dx.types.ResRet.i32 %638, 0
  %640 = add i32 %639, 0
  %641 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %640, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %642 = add i32 %24, 24
  %643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %642, i32 undef)  ; BufferLoad(srv,index,wot)
  %644 = extractvalue %dx.types.ResRet.i32 %643, 0
  %645 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %641, %dx.types.Handle %49, float %168, float %169, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %646 = extractvalue %dx.types.ResRet.f32 %645, 0
  %647 = extractvalue %dx.types.ResRet.f32 %645, 1
  %648 = extractvalue %dx.types.ResRet.f32 %645, 2
  %649 = extractvalue %dx.types.ResRet.f32 %645, 3
  %650 = and i32 %644, 255
  %651 = uitofp i32 %650 to float
  %652 = lshr i32 %644, 8
  %653 = and i32 %652, 255
  %654 = uitofp i32 %653 to float
  %655 = fmul fast float %649, %651
  %656 = fadd fast float %655, %654
  %657 = fmul fast float %656, 0x3F70101000000000
  %658 = add i32 %24, 56
  %659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %658, i32 undef)  ; BufferLoad(srv,index,wot)
  %660 = extractvalue %dx.types.ResRet.i32 %659, 0
  %661 = and i32 %660, 255
  %662 = uitofp i32 %661 to float
  %663 = fmul fast float %662, 0x3F70101020000000
  %664 = lshr i32 %660, 8
  %665 = and i32 %664, 255
  %666 = uitofp i32 %665 to float
  %667 = fmul fast float %666, 0x3F70101020000000
  %668 = lshr i32 %660, 16
  %669 = and i32 %668, 255
  %670 = uitofp i32 %669 to float
  %671 = fmul fast float %670, 0x3F70101020000000
  %672 = add i32 %24, 124
  %673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %672, i32 undef)  ; BufferLoad(srv,index,wot)
  %674 = extractvalue %dx.types.ResRet.i32 %673, 0
  %675 = add i32 %674, 0
  %676 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %675, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %677 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %676, %dx.types.Handle %49, float %168, float %169, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %678 = extractvalue %dx.types.ResRet.f32 %677, 0
  %679 = extractvalue %dx.types.ResRet.f32 %677, 1
  %680 = extractvalue %dx.types.ResRet.f32 %677, 2
  %681 = add i32 %24, 44
  %682 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %681, i32 undef)  ; BufferLoad(srv,index,wot)
  %683 = extractvalue %dx.types.ResRet.i32 %682, 0
  %684 = shl i32 %683, 4
  %685 = and i32 %684, 32752
  %686 = call float @dx.op.legacyF16ToF32(i32 131, i32 %685)  ; LegacyF16ToF32(value)
  %687 = lshr i32 %683, 7
  %688 = and i32 %687, 32752
  %689 = call float @dx.op.legacyF16ToF32(i32 131, i32 %688)  ; LegacyF16ToF32(value)
  %690 = lshr i32 %683, 22
  %691 = shl nuw nsw i32 %690, 5
  %692 = call float @dx.op.legacyF16ToF32(i32 131, i32 %691)  ; LegacyF16ToF32(value)
  %693 = fmul fast float %686, %678
  %694 = fmul fast float %689, %679
  %695 = fmul fast float %692, %680
  %696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %697 = extractvalue %dx.types.CBufRet.f32 %696, 0
  %698 = fmul fast float %693, %697
  %699 = fmul fast float %694, %697
  %700 = fmul fast float %695, %697
  %701 = add i32 %24, 48
  %702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %701, i32 undef)  ; BufferLoad(srv,index,wot)
  %703 = extractvalue %dx.types.ResRet.i32 %702, 0
  %704 = lshr i32 %703, 22
  %705 = shl nuw nsw i32 %704, 5
  %706 = call float @dx.op.legacyF16ToF32(i32 131, i32 %705)  ; LegacyF16ToF32(value)
  %707 = fmul fast float %706, %698
  %708 = select i1 %111, float %707, float %698
  %709 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %19, float %33, float %34, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %710 = extractvalue %dx.types.ResRet.f32 %709, 0
  %711 = extractvalue %dx.types.ResRet.f32 %709, 1
  %712 = extractvalue %dx.types.ResRet.f32 %709, 2
  %713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %714 = extractvalue %dx.types.CBufRet.f32 %713, 1
  %715 = fmul fast float %714, %710
  %716 = fmul fast float %714, %711
  %717 = fmul fast float %714, %712
  %718 = fadd fast float %657, 0xBFB99999A0000000
  %719 = call float @dx.op.unary.f32(i32 7, float %718)  ; Saturate(value)
  %720 = fmul fast float %719, 0x3FF1C71C80000000
  %721 = fsub fast float 1.000000e+00, %720
  %722 = call float @dx.op.unary.f32(i32 7, float %721)  ; Saturate(value)
  %723 = fmul fast float %646, %629
  %724 = fmul fast float %663, %663
  %725 = fmul fast float %724, %723
  %726 = fmul fast float %725, %722
  %727 = fmul fast float %647, %630
  %728 = fmul fast float %667, %667
  %729 = fmul fast float %728, %727
  %730 = fmul fast float %729, %722
  %731 = fmul fast float %648, %631
  %732 = fmul fast float %671, %671
  %733 = fmul fast float %732, %731
  %734 = fmul fast float %733, %722
  %735 = call float @dx.op.unary.f32(i32 7, float %726)  ; Saturate(value)
  %736 = call float @dx.op.unary.f32(i32 7, float %730)  ; Saturate(value)
  %737 = call float @dx.op.unary.f32(i32 7, float %734)  ; Saturate(value)
  %738 = fmul fast float %708, %634
  %739 = fmul fast float %699, %635
  %740 = fmul fast float %700, %636
  %741 = call float @dx.op.dot3.f32(i32 55, float %738, float %739, float %740, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %742 = select i1 %111, float 0.000000e+00, float %738
  %743 = select i1 %111, float %741, float %739
  %744 = select i1 %111, float 0.000000e+00, float %740
  %745 = fmul fast float %549, %708
  %746 = fmul fast float %550, %699
  %747 = fmul fast float %551, %700
  %748 = call float @dx.op.dot3.f32(i32 55, float %735, float %736, float %737, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %749 = add i32 %24, 32
  %750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %749, i32 undef)  ; BufferLoad(srv,index,wot)
  %751 = extractvalue %dx.types.ResRet.i32 %750, 0
  %752 = and i32 %751, 255
  %753 = uitofp i32 %752 to float
  %754 = lshr i32 %751, 8
  %755 = and i32 %754, 255
  %756 = uitofp i32 %755 to float
  %757 = fmul fast float %756, %748
  %758 = fadd fast float %757, %753
  %759 = fmul fast float %758, 0x3F70101020000000
  %760 = call float @dx.op.unary.f32(i32 7, float %759)  ; Saturate(value)
  %761 = and i32 %131, 8192
  %762 = icmp eq i32 %761, 0
  %763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %764 = extractvalue %dx.types.CBufRet.f32 %763, 0
  br i1 %762, label %771, label %765, !dx.controlflow.hints !66

; <label>:765                                     ; preds = %628
  %766 = add i32 %128, 176
  %767 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %766, i32 undef)  ; BufferLoad(srv,index,wot)
  %768 = extractvalue %dx.types.ResRet.f32 %767, 0
  %769 = fcmp fast oge float %768, 0.000000e+00
  %770 = select i1 %769, float %768, float %764
  br label %778

; <label>:771                                     ; preds = %628
  %772 = add i32 %24, 104
  %773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %772, i32 undef)  ; BufferLoad(srv,index,wot)
  %774 = extractvalue %dx.types.ResRet.i32 %773, 0
  %775 = bitcast i32 %774 to float
  %776 = fcmp fast oge float %775, 0.000000e+00
  %777 = select i1 %776, float %775, float %764
  br label %778

; <label>:778                                     ; preds = %771, %765
  %779 = phi float [ %770, %765 ], [ %777, %771 ]
  %780 = fmul fast float %633, %632
  %781 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %221, i32 %222, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %782 = extractvalue %dx.types.ResRet.i32 %781, 0
  %783 = lshr i32 %782, 18
  %784 = uitofp i32 %783 to float
  %785 = fmul fast float %784, 0x3F4C00EBA0000000
  %786 = call float @dx.op.unary.f32(i32 21, float %785)  ; Exp(value)
  %787 = fadd fast float %786, -1.000000e+00
  %788 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %10, i32 0)  ; GetDimensions(handle,mipLevel)
  %789 = extractvalue %dx.types.Dimensions %788, 0
  %790 = sitofp i32 %789 to float
  %791 = extractvalue %dx.types.Dimensions %788, 1
  %792 = sitofp i32 %791 to float
  %793 = fcmp fast oge float %219, %790
  %794 = fcmp fast oge float %220, %792
  %795 = or i1 %793, %794
  %796 = select i1 %795, float 0x4197782600000000, float %787
  %797 = icmp eq i32 %127, 3
  %798 = fcmp fast ogt float %48, %796
  %799 = and i1 %245, %798
  %800 = or i1 %797, %799
  %801 = icmp eq i32 %127, 2
  %802 = fcmp fast ole float %48, %796
  %803 = and i1 %801, %802
  %804 = or i1 %803, %800
  %805 = fmul fast float %745, %715
  %806 = fmul fast float %746, %716
  %807 = fmul fast float %747, %717
  %808 = fadd fast float %805, %742
  %809 = fadd fast float %743, %806
  %810 = fadd fast float %807, %744
  %811 = fmul fast float %808, %632
  %812 = fmul fast float %809, %632
  %813 = fmul fast float %810, %632
  %814 = fmul fast float %715, %632
  %815 = fmul fast float %716, %632
  %816 = fmul fast float %717, %632
  %817 = fsub fast float 1.000000e+00, %632
  %818 = call float @dx.op.dot3.f32(i32 55, float %817, float %817, float %817, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %819 = fsub fast float 1.000000e+00, %818
  %820 = fmul fast float %779, %760
  %821 = fsub fast float 1.000000e+00, %780
  %822 = fsub fast float %821, %760
  %823 = call float @dx.op.unary.f32(i32 7, float %822)  ; Saturate(value)
  %824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %825 = extractvalue %dx.types.CBufRet.f32 %824, 3
  %826 = fmul fast float %825, %823
  %827 = fadd fast float %826, %820
  %828 = and i32 %131, 1048576
  %829 = icmp eq i32 %828, 0
  br i1 %829, label %921, label %830, !dx.controlflow.hints !67

; <label>:830                                     ; preds = %778
  %831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %832 = extractvalue %dx.types.CBufRet.f32 %831, 2
  %833 = extractvalue %dx.types.CBufRet.f32 %831, 3
  %834 = fmul fast float %832, %53
  %835 = fmul fast float %833, %54
  %836 = call float @dx.op.unary.f32(i32 7, float %834)  ; Saturate(value)
  %837 = call float @dx.op.unary.f32(i32 7, float %835)  ; Saturate(value)
  %838 = select i1 %804, i32 2, i32 0
  %839 = or i32 %838, 1
  %840 = uitofp i32 %839 to float
  %841 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %836, float %837, float %840, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %842 = extractvalue %dx.types.ResRet.f32 %841, 0
  %843 = extractvalue %dx.types.ResRet.f32 %841, 1
  %844 = extractvalue %dx.types.ResRet.f32 %841, 2
  %845 = extractvalue %dx.types.ResRet.f32 %841, 3
  %846 = add nuw nsw i32 %838, 2
  %847 = uitofp i32 %846 to float
  %848 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %836, float %837, float %847, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %849 = extractvalue %dx.types.ResRet.f32 %848, 0
  %850 = extractvalue %dx.types.ResRet.f32 %848, 1
  %851 = extractvalue %dx.types.ResRet.f32 %848, 2
  %852 = extractvalue %dx.types.ResRet.f32 %848, 3
  %853 = call float @dx.op.binary.f32(i32 35, float %843, float %844)  ; FMax(a,b)
  %854 = call float @dx.op.binary.f32(i32 35, float %842, float %853)  ; FMax(a,b)
  %855 = call float @dx.op.binary.f32(i32 35, float %854, float %845)  ; FMax(a,b)
  %856 = call float @dx.op.binary.f32(i32 36, float %850, float %851)  ; FMin(a,b)
  %857 = call float @dx.op.binary.f32(i32 36, float %849, float %856)  ; FMin(a,b)
  %858 = call float @dx.op.binary.f32(i32 36, float %857, float %852)  ; FMin(a,b)
  %859 = fmul fast float %855, 2.550000e+02
  %860 = fadd fast float %859, 0x3F70101020000000
  %861 = fptoui float %860 to i32
  %862 = fmul fast float %858, 2.550000e+02
  %863 = fadd fast float %862, 0x3F70101020000000
  %864 = fptoui float %863 to i32
  %865 = icmp ult i32 %861, %864
  br i1 %865, label %866, label %914

; <label>:866                                     ; preds = %830
  %867 = fcmp fast ogt float %47, 9.843750e-01
  %868 = fadd fast float %48, -4.000000e+00
  %869 = select i1 %867, float -4.000000e+00, float %868
  %870 = call float @dx.op.binary.f32(i32 35, float %869, float 0.000000e+00)  ; FMax(a,b)
  %871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %872 = extractvalue %dx.types.CBufRet.f32 %871, 0
  %873 = fadd fast float %872, %870
  %874 = extractvalue %dx.types.CBufRet.f32 %871, 2
  %875 = fmul fast float %873, %874
  %876 = call float @dx.op.unary.f32(i32 23, float %875)  ; Log(value)
  %877 = extractvalue %dx.types.CBufRet.f32 %871, 3
  %878 = fmul fast float %877, %876
  %879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %880 = extractvalue %dx.types.CBufRet.f32 %879, 2
  %881 = fmul fast float %878, %880
  %882 = call float @dx.op.unary.f32(i32 7, float %881)  ; Saturate(value)
  %883 = uitofp i32 %861 to float
  %884 = uitofp i32 %864 to float
  %885 = fadd fast float %883, 5.000000e-01
  %886 = fadd fast float %884, 5.000000e-01
  %887 = fmul fast float %880, %885
  %888 = fmul fast float %880, %886
  %889 = fadd fast float %887, 0x3F0FFB4800000000
  %890 = fadd fast float %888, 0xBF0FFB4800000000
  %891 = call float @dx.op.binary.f32(i32 35, float %882, float %889)  ; FMax(a,b)
  %892 = call float @dx.op.binary.f32(i32 36, float %891, float %890)  ; FMin(a,b)
  %893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %894 = extractvalue %dx.types.CBufRet.f32 %893, 1
  %895 = extractvalue %dx.types.CBufRet.f32 %893, 2
  %896 = extractvalue %dx.types.CBufRet.f32 %893, 0
  %897 = select i1 %804, float %896, float 0.000000e+00
  %898 = fmul fast float %894, %892
  %899 = fadd fast float %897, %898
  %900 = fadd fast float %897, %895
  %901 = fsub fast float %894, %895
  %902 = fadd fast float %901, %897
  %903 = call float @dx.op.binary.f32(i32 35, float %899, float %900)  ; FMax(a,b)
  %904 = call float @dx.op.binary.f32(i32 36, float %903, float %902)  ; FMin(a,b)
  %905 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %18, float %836, float %837, float %904, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %906 = extractvalue %dx.types.ResRet.f32 %905, 0
  %907 = extractvalue %dx.types.ResRet.f32 %905, 1
  %908 = extractvalue %dx.types.ResRet.f32 %905, 2
  %909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %910 = extractvalue %dx.types.CBufRet.f32 %909, 1
  %911 = fmul fast float %910, %906
  %912 = fmul fast float %910, %907
  %913 = fmul fast float %910, %908
  br label %914

; <label>:914                                     ; preds = %866, %830
  %915 = phi float [ %911, %866 ], [ 1.000000e+00, %830 ]
  %916 = phi float [ %912, %866 ], [ 1.000000e+00, %830 ]
  %917 = phi float [ %913, %866 ], [ 1.000000e+00, %830 ]
  %918 = fmul fast float %915, %811
  %919 = fmul fast float %916, %812
  %920 = fmul fast float %917, %813
  br label %921

; <label>:921                                     ; preds = %914, %778
  %922 = phi float [ %918, %914 ], [ %811, %778 ]
  %923 = phi float [ %919, %914 ], [ %812, %778 ]
  %924 = phi float [ %920, %914 ], [ %813, %778 ]
  %925 = and i32 %131, 2097152
  %926 = icmp eq i32 %925, 0
  br i1 %926, label %931, label %927, !dx.controlflow.hints !68

; <label>:927                                     ; preds = %921
  %928 = add i32 %128, 192
  %929 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %928, i32 undef)  ; BufferLoad(srv,index,wot)
  %930 = extractvalue %dx.types.ResRet.f32 %929, 0
  br label %934

; <label>:931                                     ; preds = %921
  %932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %933 = extractvalue %dx.types.CBufRet.f32 %932, 3
  br label %934

; <label>:934                                     ; preds = %931, %927
  %935 = phi float [ %930, %927 ], [ %933, %931 ]
  %936 = fmul fast float %814, %735
  %937 = fmul fast float %815, %736
  %938 = fmul fast float %816, %737
  br i1 %799, label %939, label %1048

; <label>:939                                     ; preds = %934
  %940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %941 = extractvalue %dx.types.CBufRet.f32 %940, 2
  %942 = extractvalue %dx.types.CBufRet.f32 %940, 3
  %943 = fmul fast float %941, %53
  %944 = fmul fast float %942, %54
  %945 = call float @dx.op.unary.f32(i32 7, float %943)  ; Saturate(value)
  %946 = call float @dx.op.unary.f32(i32 7, float %944)  ; Saturate(value)
  %947 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %945, float %946, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %948 = extractvalue %dx.types.ResRet.f32 %947, 0
  %949 = extractvalue %dx.types.ResRet.f32 %947, 1
  %950 = extractvalue %dx.types.ResRet.f32 %947, 2
  %951 = extractvalue %dx.types.ResRet.f32 %947, 3
  %952 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %945, float %946, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %953 = extractvalue %dx.types.ResRet.f32 %952, 0
  %954 = extractvalue %dx.types.ResRet.f32 %952, 1
  %955 = extractvalue %dx.types.ResRet.f32 %952, 2
  %956 = extractvalue %dx.types.ResRet.f32 %952, 3
  %957 = call float @dx.op.binary.f32(i32 35, float %949, float %950)  ; FMax(a,b)
  %958 = call float @dx.op.binary.f32(i32 35, float %948, float %957)  ; FMax(a,b)
  %959 = call float @dx.op.binary.f32(i32 35, float %958, float %951)  ; FMax(a,b)
  %960 = call float @dx.op.binary.f32(i32 36, float %954, float %955)  ; FMin(a,b)
  %961 = call float @dx.op.binary.f32(i32 36, float %953, float %960)  ; FMin(a,b)
  %962 = call float @dx.op.binary.f32(i32 36, float %961, float %956)  ; FMin(a,b)
  %963 = fmul fast float %959, 2.550000e+02
  %964 = fadd fast float %963, 0x3F70101020000000
  %965 = fptoui float %964 to i32
  %966 = fmul fast float %962, 2.550000e+02
  %967 = fadd fast float %966, 0x3F70101020000000
  %968 = fptoui float %967 to i32
  %969 = icmp ult i32 %965, %968
  br i1 %969, label %970, label %1021

; <label>:970                                     ; preds = %939
  %971 = fcmp fast ogt float %47, 9.843750e-01
  %972 = fadd fast float %48, -4.000000e+00
  %973 = select i1 %971, float -4.000000e+00, float %972
  %974 = call float @dx.op.binary.f32(i32 35, float %973, float 0.000000e+00)  ; FMax(a,b)
  %975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %976 = extractvalue %dx.types.CBufRet.f32 %975, 0
  %977 = fadd fast float %976, %974
  %978 = extractvalue %dx.types.CBufRet.f32 %975, 2
  %979 = fmul fast float %977, %978
  %980 = call float @dx.op.unary.f32(i32 23, float %979)  ; Log(value)
  %981 = extractvalue %dx.types.CBufRet.f32 %975, 3
  %982 = fmul fast float %981, %980
  %983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %984 = extractvalue %dx.types.CBufRet.f32 %983, 2
  %985 = fmul fast float %982, %984
  %986 = call float @dx.op.unary.f32(i32 7, float %985)  ; Saturate(value)
  %987 = uitofp i32 %965 to float
  %988 = uitofp i32 %968 to float
  %989 = fadd fast float %987, 5.000000e-01
  %990 = fadd fast float %988, 5.000000e-01
  %991 = fmul fast float %984, %989
  %992 = fmul fast float %984, %990
  %993 = fadd fast float %991, 0x3F0FFB4800000000
  %994 = fadd fast float %992, 0xBF0FFB4800000000
  %995 = call float @dx.op.binary.f32(i32 35, float %986, float %993)  ; FMax(a,b)
  %996 = call float @dx.op.binary.f32(i32 36, float %995, float %994)  ; FMin(a,b)
  %997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %998 = extractvalue %dx.types.CBufRet.f32 %997, 1
  %999 = extractvalue %dx.types.CBufRet.f32 %997, 2
  %1000 = extractvalue %dx.types.CBufRet.f32 %997, 0
  %1001 = fmul fast float %998, %996
  %1002 = fadd fast float %1000, %1001
  %1003 = fadd fast float %1000, %999
  %1004 = fsub fast float %998, %999
  %1005 = fadd fast float %1004, %1000
  %1006 = call float @dx.op.binary.f32(i32 35, float %1002, float %1003)  ; FMax(a,b)
  %1007 = call float @dx.op.binary.f32(i32 36, float %1006, float %1005)  ; FMin(a,b)
  %1008 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %945, float %946, float %1007, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1009 = extractvalue %dx.types.ResRet.f32 %1008, 0
  %1010 = extractvalue %dx.types.ResRet.f32 %1008, 1
  %1011 = extractvalue %dx.types.ResRet.f32 %1008, 2
  %1012 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %945, float %946, float %1007, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1013 = extractvalue %dx.types.ResRet.f32 %1012, 0
  %1014 = extractvalue %dx.types.ResRet.f32 %1012, 1
  %1015 = extractvalue %dx.types.ResRet.f32 %1012, 2
  %1016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1017 = extractvalue %dx.types.CBufRet.f32 %1016, 1
  %1018 = fmul fast float %1017, %1013
  %1019 = fmul fast float %1017, %1014
  %1020 = fmul fast float %1017, %1015
  br label %1021

; <label>:1021                                    ; preds = %970, %939
  %1022 = phi float [ %1009, %970 ], [ 1.000000e+00, %939 ]
  %1023 = phi float [ %1010, %970 ], [ 1.000000e+00, %939 ]
  %1024 = phi float [ %1011, %970 ], [ 1.000000e+00, %939 ]
  %1025 = phi float [ %1018, %970 ], [ 0.000000e+00, %939 ]
  %1026 = phi float [ %1019, %970 ], [ 0.000000e+00, %939 ]
  %1027 = phi float [ %1020, %970 ], [ 0.000000e+00, %939 ]
  %1028 = fmul fast float %1025, %819
  %1029 = fmul fast float %1026, %819
  %1030 = fmul fast float %1027, %819
  %1031 = call float @dx.op.dot3.f32(i32 55, float %1022, float %1023, float %1024, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1032 = call float @dx.op.dot3.f32(i32 55, float %1028, float %1029, float %1030, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1033 = select i1 %111, float %1031, float %1022
  %1034 = select i1 %111, float %1031, float %1023
  %1035 = select i1 %111, float 1.000000e+00, float %1024
  %1036 = select i1 %111, float %1032, float %1028
  %1037 = select i1 %111, float 0.000000e+00, float %1029
  %1038 = select i1 %111, float 0.000000e+00, float %1030
  %1039 = fmul fast float %1033, %936
  %1040 = fmul fast float %1034, %937
  %1041 = fmul fast float %1035, %938
  %1042 = fadd fast float %1039, %1036
  %1043 = fadd fast float %1040, %1037
  %1044 = fadd fast float %1038, %1041
  %1045 = fmul fast float %1033, %922
  %1046 = fmul fast float %1034, %923
  %1047 = fmul fast float %1035, %924
  br label %1048

; <label>:1048                                    ; preds = %1021, %934
  %1049 = phi float [ %796, %1021 ], [ %48, %934 ]
  %1050 = phi float [ %1042, %1021 ], [ %936, %934 ]
  %1051 = phi float [ %1043, %1021 ], [ %937, %934 ]
  %1052 = phi float [ %1044, %1021 ], [ %938, %934 ]
  %1053 = phi float [ %1045, %1021 ], [ %922, %934 ]
  %1054 = phi float [ %1046, %1021 ], [ %923, %934 ]
  %1055 = phi float [ %1047, %1021 ], [ %924, %934 ]
  %1056 = phi float [ %1022, %1021 ], [ 1.000000e+00, %934 ]
  br i1 %804, label %1358, label %1057

; <label>:1057                                    ; preds = %1048
  %1058 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %19, float %33, float %34, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1059 = extractvalue %dx.types.ResRet.f32 %1058, 0
  %1060 = extractvalue %dx.types.ResRet.f32 %1058, 1
  %1061 = extractvalue %dx.types.ResRet.f32 %1058, 2
  %1062 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %19, float %33, float %34, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1063 = extractvalue %dx.types.ResRet.f32 %1062, 0
  %1064 = extractvalue %dx.types.ResRet.f32 %1062, 1
  %1065 = extractvalue %dx.types.ResRet.f32 %1062, 2
  %1066 = fmul fast float %1059, %819
  %1067 = fmul fast float %1060, %819
  %1068 = fmul fast float %1061, %819
  %1069 = fmul fast float %1063, %1056
  %1070 = call float @dx.op.dot3.f32(i32 55, float %1063, float %1064, float %1065, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1071 = call float @dx.op.dot3.f32(i32 55, float %1066, float %1067, float %1068, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1072 = select i1 %111, float %1070, float %1063
  %1073 = select i1 %111, float %1070, float %1064
  %1074 = select i1 %111, float 1.000000e+00, float %1065
  %1075 = select i1 %111, float %1071, float %1066
  %1076 = select i1 %111, float 0.000000e+00, float %1067
  %1077 = select i1 %111, float 0.000000e+00, float %1068
  %1078 = fmul fast float %1072, %1050
  %1079 = fmul fast float %1073, %1051
  %1080 = fmul fast float %1074, %1052
  %1081 = fadd fast float %1078, %1075
  %1082 = fadd fast float %1079, %1076
  %1083 = fadd fast float %1080, %1077
  %1084 = fmul fast float %1072, %1053
  %1085 = fmul fast float %1073, %1054
  %1086 = fmul fast float %1074, %1055
  %1087 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1088 = extractvalue %dx.types.CBufRet.i32 %1087, 0
  %1089 = icmp eq i32 %1088, 0
  br i1 %1089, label %1358, label %1090, !dx.controlflow.hints !69

; <label>:1090                                    ; preds = %1057
  %1091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1092 = extractvalue %dx.types.CBufRet.f32 %1091, 2
  %1093 = extractvalue %dx.types.CBufRet.f32 %1091, 3
  %1094 = fmul fast float %1092, %53
  %1095 = fmul fast float %1093, %54
  %1096 = fmul fast float %1094, 2.000000e+00
  %1097 = fmul fast float %1095, 2.000000e+00
  %1098 = fsub fast float 1.000000e+00, %1096
  %1099 = fsub fast float 1.000000e+00, %1097
  %1100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1101 = extractvalue %dx.types.CBufRet.f32 %1100, 0
  %1102 = extractvalue %dx.types.CBufRet.f32 %1100, 1
  %1103 = extractvalue %dx.types.CBufRet.f32 %1100, 2
  %1104 = fmul fast float %1098, %1101
  %1105 = fmul fast float %1098, %1102
  %1106 = fmul fast float %1098, %1103
  %1107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1108 = extractvalue %dx.types.CBufRet.f32 %1107, 0
  %1109 = extractvalue %dx.types.CBufRet.f32 %1107, 1
  %1110 = extractvalue %dx.types.CBufRet.f32 %1107, 2
  %1111 = fmul fast float %1099, %1108
  %1112 = fmul fast float %1099, %1109
  %1113 = fmul fast float %1099, %1110
  %1114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1115 = extractvalue %dx.types.CBufRet.f32 %1114, 0
  %1116 = extractvalue %dx.types.CBufRet.f32 %1114, 1
  %1117 = extractvalue %dx.types.CBufRet.f32 %1114, 2
  %1118 = fadd fast float %1111, %1115
  %1119 = fadd fast float %1118, %1104
  %1120 = fadd fast float %1112, %1116
  %1121 = fadd fast float %1120, %1105
  %1122 = fadd fast float %1113, %1117
  %1123 = fadd fast float %1122, %1106
  %1124 = fmul fast float %1119, %1049
  %1125 = fmul fast float %1121, %1049
  %1126 = fmul fast float %1123, %1049
  %1127 = fmul fast float %1124, %1124
  %1128 = fmul fast float %1125, %1125
  %1129 = fadd fast float %1127, %1128
  %1130 = fmul fast float %1126, %1126
  %1131 = fadd fast float %1129, %1130
  %1132 = call float @dx.op.unary.f32(i32 24, float %1131)  ; Sqrt(value)
  %1133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1134 = extractvalue %dx.types.CBufRet.f32 %1133, 0
  %1135 = fsub fast float %1132, %1134
  %1136 = extractvalue %dx.types.CBufRet.f32 %1133, 2
  %1137 = fmul fast float %1135, %1136
  %1138 = call float @dx.op.unary.f32(i32 7, float %1137)  ; Saturate(value)
  %1139 = fadd fast float %1138, -5.000000e-01
  %1140 = fmul fast float %1139, 2.000000e+00
  %1141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1142 = extractvalue %dx.types.CBufRet.f32 %1141, 2
  %1143 = call float @dx.op.binary.f32(i32 36, float %1142, float %1140)  ; FMin(a,b)
  %1144 = fsub fast float -0.000000e+00, %1142
  %1145 = fcmp fast ogt float %1143, %1144
  br i1 %1145, label %1146, label %1358, !dx.controlflow.hints !70

; <label>:1146                                    ; preds = %1090
  %1147 = fmul fast float %1143, 5.000000e-01
  %1148 = fadd fast float %1147, 5.000000e-01
  %1149 = call float @dx.op.unary.f32(i32 22, float %1148)  ; Frc(value)
  %1150 = call float @dx.op.unary.f32(i32 27, float %1149)  ; Round_ni(value)
  %1151 = call float @dx.op.unary.f32(i32 22, float %1149)  ; Frc(value)
  %1152 = fmul fast float %1151, 2.000000e+00
  %1153 = fadd fast float %1152, -1.000000e+00
  %1154 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %19, float %1094, float %1095, float %1150, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1155 = extractvalue %dx.types.ResRet.f32 %1154, 0
  %1156 = extractvalue %dx.types.ResRet.f32 %1154, 1
  %1157 = extractvalue %dx.types.ResRet.f32 %1154, 2
  %1158 = extractvalue %dx.types.ResRet.f32 %1154, 3
  %1159 = fadd fast float %1155, -5.000000e-01
  %1160 = fadd fast float %1157, -5.000000e-01
  %1161 = fmul fast float %1159, 0xBFD5555560000000
  %1162 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1160, float %1161)  ; FMad(a,b,c)
  %1163 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1156, float 0.000000e+00)  ; FMad(a,b,c)
  %1164 = fadd fast float %1163, %1158
  %1165 = fmul fast float %1159, -7.500000e-01
  %1166 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1160, float %1165)  ; FMad(a,b,c)
  %1167 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1156, float 0.000000e+00)  ; FMad(a,b,c)
  %1168 = fadd fast float %1167, %1158
  %1169 = call float @dx.op.binary.f32(i32 35, float %1162, float -1.000000e+00)  ; FMax(a,b)
  %1170 = call float @dx.op.binary.f32(i32 35, float %1164, float -1.000000e+00)  ; FMax(a,b)
  %1171 = call float @dx.op.binary.f32(i32 35, float %1166, float -1.000000e+00)  ; FMax(a,b)
  %1172 = call float @dx.op.binary.f32(i32 35, float %1168, float -1.000000e+00)  ; FMax(a,b)
  %1173 = call float @dx.op.binary.f32(i32 36, float %1169, float 1.000000e+00)  ; FMin(a,b)
  %1174 = call float @dx.op.binary.f32(i32 36, float %1170, float 1.000000e+00)  ; FMin(a,b)
  %1175 = call float @dx.op.binary.f32(i32 36, float %1171, float 1.000000e+00)  ; FMin(a,b)
  %1176 = call float @dx.op.binary.f32(i32 36, float %1172, float 1.000000e+00)  ; FMin(a,b)
  %1177 = fcmp fast olt float %1173, 0x3FEFFF8020000000
  br i1 %1177, label %1178, label %1293, !dx.controlflow.hints !71

; <label>:1178                                    ; preds = %1146
  %1179 = extractvalue %dx.types.CBufRet.f32 %1141, 3
  %1180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1181 = extractvalue %dx.types.CBufRet.f32 %1180, 0
  %1182 = extractvalue %dx.types.CBufRet.f32 %1180, 1
  %1183 = extractvalue %dx.types.CBufRet.f32 %1180, 2
  %1184 = extractvalue %dx.types.CBufRet.f32 %1180, 3
  %1185 = fsub fast float %1181, %1173
  %1186 = fsub fast float %1182, %1174
  %1187 = fsub fast float %1183, %1175
  %1188 = fsub fast float %1184, %1176
  %1189 = fmul fast float %1185, %1179
  %1190 = fmul fast float %1186, %1179
  %1191 = fmul fast float %1187, %1179
  %1192 = fmul fast float %1188, %1179
  %1193 = fadd fast float %1189, %1173
  %1194 = fadd fast float %1190, %1174
  %1195 = fsub fast float -0.000000e+00, %1194
  %1196 = fadd fast float %1191, %1175
  %1197 = fadd fast float %1192, %1176
  %1198 = fmul fast float %1193, %1193
  %1199 = fsub fast float %1194, %1198
  %1200 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1199)  ; FMax(a,b)
  %1201 = fdiv fast float 1.000000e+00, %1200
  %1202 = fmul fast float %1194, %1193
  %1203 = fsub fast float %1196, %1202
  %1204 = fsub fast float %1153, %1193
  %1205 = fmul fast float %1153, %1153
  %1206 = fsub fast float %1205, %1194
  %1207 = fmul fast float %1204, %1201
  %1208 = fmul fast float %1207, %1203
  %1209 = fsub fast float %1206, %1208
  %1210 = fmul fast float %1194, %1194
  %1211 = fsub fast float %1197, %1210
  %1212 = fmul fast float %1203, %1203
  %1213 = fmul fast float %1212, %1201
  %1214 = fsub fast float %1211, %1213
  %1215 = fdiv fast float %1209, %1214
  %1216 = fmul fast float %1203, %1215
  %1217 = fsub fast float %1204, %1216
  %1218 = fmul fast float %1217, %1201
  %1219 = fmul fast float %1218, %1193
  %1220 = fsub fast float 1.000000e+00, %1219
  %1221 = fmul fast float %1194, %1215
  %1222 = fsub fast float %1220, %1221
  %1223 = fmul fast float %1218, %1218
  %1224 = fmul fast float %1215, 4.000000e+00
  %1225 = fmul fast float %1224, %1222
  %1226 = fsub fast float %1223, %1225
  %1227 = call float @dx.op.unary.f32(i32 24, float %1226)  ; Sqrt(value)
  %1228 = fcmp fast oge float %1218, 0.000000e+00
  %1229 = fsub fast float -0.000000e+00, %1227
  %1230 = select i1 %1228, float %1229, float %1227
  %1231 = fsub fast float %1230, %1218
  %1232 = fdiv fast float %1231, %1215
  %1233 = fdiv fast float %1222, %1231
  %1234 = fmul fast float %1232, 5.000000e-01
  %1235 = fmul fast float %1233, 2.000000e+00
  %1236 = select i1 %1228, float %1234, float %1235
  %1237 = select i1 %1228, float %1235, float %1234
  %1238 = call float @dx.op.binary.f32(i32 35, float %1236, float %1237)  ; FMax(a,b)
  %1239 = call float @dx.op.binary.f32(i32 36, float %1236, float %1237)  ; FMin(a,b)
  %1240 = fcmp fast ogt float %1153, %1239
  br i1 %1240, label %1241, label %1251

; <label>:1241                                    ; preds = %1178
  %1242 = fsub fast float %1153, %1239
  %1243 = fsub fast float %1238, %1239
  %1244 = fmul fast float %1242, %1243
  %1245 = fmul fast float %1238, %1153
  %1246 = fadd fast float %1238, %1153
  %1247 = fmul fast float %1246, %1193
  %1248 = fadd fast float %1245, %1194
  %1249 = fsub fast float %1248, %1247
  %1250 = fdiv fast float %1249, %1244
  br label %1251

; <label>:1251                                    ; preds = %1241, %1178
  %1252 = phi float [ %1250, %1241 ], [ 0.000000e+00, %1178 ]
  %1253 = fcmp fast ogt float %1153, %1238
  %1254 = fsub fast float %1153, %1238
  br i1 %1253, label %1255, label %1265

; <label>:1255                                    ; preds = %1251
  %1256 = fsub fast float %1238, %1239
  %1257 = fmul fast float %1256, %1254
  %1258 = fmul fast float %1239, %1153
  %1259 = fadd fast float %1239, %1153
  %1260 = fmul fast float %1259, %1193
  %1261 = fsub fast float %1195, %1258
  %1262 = fadd fast float %1261, %1260
  %1263 = fdiv fast float %1262, %1257
  %1264 = fadd fast float %1263, %1252
  br label %1265

; <label>:1265                                    ; preds = %1255, %1251
  %1266 = phi float [ %1264, %1255 ], [ %1252, %1251 ]
  %1267 = fsub fast float %1153, %1239
  %1268 = fmul fast float %1267, %1254
  %1269 = fmul fast float %1239, %1238
  %1270 = fadd fast float %1239, %1238
  %1271 = fmul fast float %1270, %1193
  %1272 = fadd fast float %1269, %1194
  %1273 = fsub fast float %1272, %1271
  %1274 = fdiv fast float %1273, %1268
  %1275 = call float @dx.op.unary.f32(i32 7, float %1266)  ; Saturate(value)
  %1276 = fcmp fast oeq float %935, 0.000000e+00
  %1277 = extractvalue %dx.types.CBufRet.f32 %1141, 0
  %1278 = fcmp fast oeq float %1277, 0.000000e+00
  %1279 = or i1 %1276, %1278
  %1280 = fmul fast float %1277, 2.000000e+00
  %1281 = fadd fast float %1142, %1143
  %1282 = fdiv fast float %1281, %1280
  %1283 = call float @dx.op.unary.f32(i32 7, float %1282)  ; Saturate(value)
  %1284 = fmul fast float %1283, 2.000000e+00
  %1285 = fsub fast float 3.000000e+00, %1284
  %1286 = fmul fast float %1283, %1283
  %1287 = fmul fast float %1286, %1285
  %1288 = select i1 %1279, float 1.000000e+00, float %1287
  %1289 = fmul fast float %1274, %935
  %1290 = fadd fast float %1275, %1289
  %1291 = call float @dx.op.unary.f32(i32 7, float %1290)  ; Saturate(value)
  %1292 = fmul fast float %1288, %1291
  br label %1293

; <label>:1293                                    ; preds = %1265, %1146
  %1294 = phi float [ %1292, %1265 ], [ 0.000000e+00, %1146 ]
  %1295 = fsub fast float 1.000000e+00, %1294
  %1296 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %19, float %1094, float %1095, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1297 = extractvalue %dx.types.ResRet.f32 %1296, 0
  %1298 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1299 = extractvalue %dx.types.CBufRet.i32 %1298, 2
  %1300 = icmp eq i32 %1299, 0
  br i1 %1300, label %1306, label %1301

; <label>:1301                                    ; preds = %1293
  %1302 = call float @dx.op.unary.f32(i32 7, float %1294)  ; Saturate(value)
  %1303 = fadd fast float %1297, -1.000000e+00
  %1304 = fmul fast float %1302, %1303
  %1305 = fadd fast float %1304, 1.000000e+00
  br label %1306

; <label>:1306                                    ; preds = %1301, %1293
  %1307 = phi float [ %1305, %1301 ], [ %1295, %1293 ]
  %1308 = call float @dx.op.binary.f32(i32 35, float %1297, float %1307)  ; FMax(a,b)
  %1309 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %1310 = extractvalue %dx.types.CBufRet.i32 %1309, 2
  %1311 = and i32 %1310, 1
  %1312 = icmp eq i32 %1311, 0
  %1313 = fcmp fast une float %1308, 1.000000e+00
  %1314 = and i1 %1313, %1312
  br i1 %1314, label %1315, label %1334

; <label>:1315                                    ; preds = %1306
  %1316 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %19, float %1094, float %1095, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1317 = extractvalue %dx.types.ResRet.f32 %1316, 0
  %1318 = extractvalue %dx.types.ResRet.f32 %1316, 1
  %1319 = extractvalue %dx.types.ResRet.f32 %1316, 2
  %1320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1321 = extractvalue %dx.types.CBufRet.f32 %1320, 1
  %1322 = fmul fast float %1321, %1317
  %1323 = fmul fast float %1321, %1318
  %1324 = fmul fast float %1321, %1319
  %1325 = fcmp fast ogt float %1297, 0x3FEFFF2E40000000
  %1326 = fsub fast float 1.000000e+00, %1308
  %1327 = fsub fast float 1.000000e+00, %1297
  %1328 = fdiv fast float %1326, %1327
  %1329 = call float @dx.op.unary.f32(i32 7, float %1328)  ; Saturate(value)
  %1330 = select i1 %1325, float 0.000000e+00, float %1329
  %1331 = fmul fast float %1322, %1330
  %1332 = fmul fast float %1323, %1330
  %1333 = fmul fast float %1324, %1330
  br label %1334

; <label>:1334                                    ; preds = %1315, %1306
  %1335 = phi float [ 0.000000e+00, %1306 ], [ %1331, %1315 ]
  %1336 = phi float [ 0.000000e+00, %1306 ], [ %1332, %1315 ]
  %1337 = phi float [ 0.000000e+00, %1306 ], [ %1333, %1315 ]
  %1338 = fmul fast float %1335, %819
  %1339 = fmul fast float %1336, %819
  %1340 = fmul fast float %1337, %819
  %1341 = fmul fast float %1308, %1069
  %1342 = call float @dx.op.dot3.f32(i32 55, float %1308, float %1308, float %1308, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1343 = call float @dx.op.dot3.f32(i32 55, float %1338, float %1339, float %1340, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1344 = select i1 %111, float %1342, float %1308
  %1345 = select i1 %111, float 1.000000e+00, float %1308
  %1346 = select i1 %111, float %1343, float %1338
  %1347 = select i1 %111, float 0.000000e+00, float %1339
  %1348 = select i1 %111, float 0.000000e+00, float %1340
  %1349 = fmul fast float %1344, %1081
  %1350 = fmul fast float %1344, %1082
  %1351 = fmul fast float %1345, %1083
  %1352 = fadd fast float %1349, %1346
  %1353 = fadd fast float %1350, %1347
  %1354 = fadd fast float %1348, %1351
  %1355 = fmul fast float %1344, %1084
  %1356 = fmul fast float %1344, %1085
  %1357 = fmul fast float %1345, %1086
  br label %1358

; <label>:1358                                    ; preds = %1334, %1090, %1057, %1048
  %1359 = phi float [ %1050, %1048 ], [ %1081, %1057 ], [ %1352, %1334 ], [ %1081, %1090 ]
  %1360 = phi float [ %1051, %1048 ], [ %1082, %1057 ], [ %1353, %1334 ], [ %1082, %1090 ]
  %1361 = phi float [ %1052, %1048 ], [ %1083, %1057 ], [ %1354, %1334 ], [ %1083, %1090 ]
  %1362 = phi float [ %1053, %1048 ], [ %1084, %1057 ], [ %1355, %1334 ], [ %1084, %1090 ]
  %1363 = phi float [ %1054, %1048 ], [ %1085, %1057 ], [ %1356, %1334 ], [ %1085, %1090 ]
  %1364 = phi float [ %1055, %1048 ], [ %1086, %1057 ], [ %1357, %1334 ], [ %1086, %1090 ]
  %1365 = phi float [ %1056, %1048 ], [ %1069, %1057 ], [ %1341, %1334 ], [ %1069, %1090 ]
  %1366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1367 = extractvalue %dx.types.CBufRet.f32 %1366, 2
  %1368 = extractvalue %dx.types.CBufRet.f32 %1366, 3
  %1369 = fmul fast float %1367, %53
  %1370 = fmul fast float %1368, %54
  %1371 = call float @dx.op.unary.f32(i32 7, float %1369)  ; Saturate(value)
  %1372 = call float @dx.op.unary.f32(i32 7, float %1370)  ; Saturate(value)
  %1373 = select i1 %804, i32 2, i32 0
  %1374 = or i32 %1373, 1
  %1375 = uitofp i32 %1374 to float
  %1376 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %1371, float %1372, float %1375, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1377 = extractvalue %dx.types.ResRet.f32 %1376, 0
  %1378 = extractvalue %dx.types.ResRet.f32 %1376, 1
  %1379 = extractvalue %dx.types.ResRet.f32 %1376, 2
  %1380 = extractvalue %dx.types.ResRet.f32 %1376, 3
  %1381 = add nuw nsw i32 %1373, 2
  %1382 = uitofp i32 %1381 to float
  %1383 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %1371, float %1372, float %1382, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1384 = extractvalue %dx.types.ResRet.f32 %1383, 0
  %1385 = extractvalue %dx.types.ResRet.f32 %1383, 1
  %1386 = extractvalue %dx.types.ResRet.f32 %1383, 2
  %1387 = extractvalue %dx.types.ResRet.f32 %1383, 3
  %1388 = call float @dx.op.binary.f32(i32 35, float %1378, float %1379)  ; FMax(a,b)
  %1389 = call float @dx.op.binary.f32(i32 35, float %1377, float %1388)  ; FMax(a,b)
  %1390 = call float @dx.op.binary.f32(i32 35, float %1389, float %1380)  ; FMax(a,b)
  %1391 = call float @dx.op.binary.f32(i32 36, float %1385, float %1386)  ; FMin(a,b)
  %1392 = call float @dx.op.binary.f32(i32 36, float %1384, float %1391)  ; FMin(a,b)
  %1393 = call float @dx.op.binary.f32(i32 36, float %1392, float %1387)  ; FMin(a,b)
  %1394 = fmul fast float %1390, 2.550000e+02
  %1395 = fadd fast float %1394, 0x3F70101020000000
  %1396 = fptoui float %1395 to i32
  %1397 = fmul fast float %1393, 2.550000e+02
  %1398 = fadd fast float %1397, 0x3F70101020000000
  %1399 = fptoui float %1398 to i32
  %1400 = icmp ult i32 %1396, %1399
  br i1 %1400, label %1401, label %1453

; <label>:1401                                    ; preds = %1358
  %1402 = fcmp fast ogt float %47, 9.843750e-01
  %1403 = fadd fast float %1049, -4.000000e+00
  %1404 = select i1 %1402, float -4.000000e+00, float %1403
  %1405 = call float @dx.op.binary.f32(i32 35, float %1404, float 0.000000e+00)  ; FMax(a,b)
  %1406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1407 = extractvalue %dx.types.CBufRet.f32 %1406, 0
  %1408 = fadd fast float %1407, %1405
  %1409 = extractvalue %dx.types.CBufRet.f32 %1406, 2
  %1410 = fmul fast float %1408, %1409
  %1411 = call float @dx.op.unary.f32(i32 23, float %1410)  ; Log(value)
  %1412 = extractvalue %dx.types.CBufRet.f32 %1406, 3
  %1413 = fmul fast float %1412, %1411
  %1414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1415 = extractvalue %dx.types.CBufRet.f32 %1414, 2
  %1416 = fmul fast float %1413, %1415
  %1417 = call float @dx.op.unary.f32(i32 7, float %1416)  ; Saturate(value)
  %1418 = uitofp i32 %1396 to float
  %1419 = uitofp i32 %1399 to float
  %1420 = fadd fast float %1418, 5.000000e-01
  %1421 = fadd fast float %1419, 5.000000e-01
  %1422 = fmul fast float %1415, %1420
  %1423 = fmul fast float %1415, %1421
  %1424 = fadd fast float %1422, 0x3F0FFB4800000000
  %1425 = fadd fast float %1423, 0xBF0FFB4800000000
  %1426 = call float @dx.op.binary.f32(i32 35, float %1417, float %1424)  ; FMax(a,b)
  %1427 = call float @dx.op.binary.f32(i32 36, float %1426, float %1425)  ; FMin(a,b)
  %1428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1429 = extractvalue %dx.types.CBufRet.f32 %1428, 1
  %1430 = extractvalue %dx.types.CBufRet.f32 %1428, 2
  %1431 = extractvalue %dx.types.CBufRet.f32 %1428, 0
  %1432 = select i1 %804, float %1431, float 0.000000e+00
  %1433 = fmul fast float %1429, %1427
  %1434 = fadd fast float %1432, %1433
  %1435 = fadd fast float %1432, %1430
  %1436 = fsub fast float %1429, %1430
  %1437 = fadd fast float %1436, %1432
  %1438 = call float @dx.op.binary.f32(i32 35, float %1434, float %1435)  ; FMax(a,b)
  %1439 = call float @dx.op.binary.f32(i32 36, float %1438, float %1437)  ; FMin(a,b)
  %1440 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %1371, float %1372, float %1439, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1441 = extractvalue %dx.types.ResRet.f32 %1440, 0
  %1442 = extractvalue %dx.types.ResRet.f32 %1440, 1
  %1443 = extractvalue %dx.types.ResRet.f32 %1440, 2
  %1444 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %1371, float %1372, float %1439, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1445 = extractvalue %dx.types.ResRet.f32 %1444, 0
  %1446 = extractvalue %dx.types.ResRet.f32 %1444, 1
  %1447 = extractvalue %dx.types.ResRet.f32 %1444, 2
  %1448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1449 = extractvalue %dx.types.CBufRet.f32 %1448, 1
  %1450 = fmul fast float %1449, %1445
  %1451 = fmul fast float %1449, %1446
  %1452 = fmul fast float %1449, %1447
  br label %1453

; <label>:1453                                    ; preds = %1401, %1358
  %1454 = phi float [ %1441, %1401 ], [ 1.000000e+00, %1358 ]
  %1455 = phi float [ %1442, %1401 ], [ 1.000000e+00, %1358 ]
  %1456 = phi float [ %1443, %1401 ], [ 1.000000e+00, %1358 ]
  %1457 = phi float [ %1450, %1401 ], [ 0.000000e+00, %1358 ]
  %1458 = phi float [ %1451, %1401 ], [ 0.000000e+00, %1358 ]
  %1459 = phi float [ %1452, %1401 ], [ 0.000000e+00, %1358 ]
  %1460 = fmul fast float %1457, %819
  %1461 = fmul fast float %1458, %819
  %1462 = fmul fast float %1459, %819
  %1463 = fmul fast float %1454, %1365
  %1464 = call float @dx.op.dot3.f32(i32 55, float %1454, float %1455, float %1456, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1465 = call float @dx.op.dot3.f32(i32 55, float %1460, float %1461, float %1462, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1466 = select i1 %111, float %1464, float %1454
  %1467 = select i1 %111, float %1464, float %1455
  %1468 = select i1 %111, float 1.000000e+00, float %1456
  %1469 = select i1 %111, float %1465, float %1460
  %1470 = select i1 %111, float 0.000000e+00, float %1461
  %1471 = select i1 %111, float 0.000000e+00, float %1462
  %1472 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1473 = extractvalue %dx.types.CBufRet.i32 %1472, 3
  %1474 = and i32 %1473, 3
  %1475 = icmp ne i32 %1474, 0
  %1476 = and i32 %1473, 4
  %1477 = icmp ne i32 %1476, 0
  %1478 = and i1 %1475, %1477
  %1479 = and i1 %111, %1478
  br i1 %1479, label %1480, label %1486

; <label>:1480                                    ; preds = %1453
  %1481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1482 = extractvalue %dx.types.CBufRet.f32 %1481, 1
  %1483 = fadd fast float %1463, -1.000000e+00
  %1484 = fmul fast float %1482, %1483
  %1485 = fadd fast float %1484, 1.000000e+00
  br label %1486

; <label>:1486                                    ; preds = %1480, %1453
  %1487 = phi float [ %1485, %1480 ], [ %1463, %1453 ]
  %1488 = fadd fast float %1362, %1359
  %1489 = fmul fast float %1466, %1488
  %1490 = fadd fast float %1489, %1469
  %1491 = fadd fast float %1363, %1360
  %1492 = fmul fast float %1467, %1491
  %1493 = fadd fast float %1492, %1470
  %1494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1495 = extractvalue %dx.types.CBufRet.f32 %1494, 0
  br i1 %111, label %1496, label %1518

; <label>:1496                                    ; preds = %1486
  %1497 = fadd fast float %1490, %1493
  %1498 = fmul fast float %1495, %1497
  %1499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1500 = extractvalue %dx.types.CBufRet.f32 %1499, 3
  %1501 = extractvalue %dx.types.CBufRet.f32 %824, 1
  %1502 = fsub fast float %827, %1501
  %1503 = extractvalue %dx.types.CBufRet.f32 %824, 2
  %1504 = fmul fast float %1502, %1503
  %1505 = call float @dx.op.unary.f32(i32 7, float %1504)  ; Saturate(value)
  %1506 = fsub fast float %1505, %1500
  %1507 = fmul fast float %1506, %1487
  %1508 = fadd fast float %1507, %1500
  %1509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1510 = extractvalue %dx.types.CBufRet.f32 %1509, 0
  %1511 = fsub fast float %1508, %1510
  %1512 = fmul fast float %1511, 1.000000e+01
  %1513 = call float @dx.op.unary.f32(i32 7, float %1512)  ; Saturate(value)
  %1514 = fsub fast float %780, %819
  %1515 = fmul fast float %1513, %1514
  %1516 = fadd fast float %1515, %819
  %1517 = fmul fast float %1516, %1508
  br label %1530

; <label>:1518                                    ; preds = %1486
  %1519 = fadd fast float %1364, %1361
  %1520 = fmul fast float %1468, %1519
  %1521 = fadd fast float %1520, %1471
  %1522 = fmul fast float %1495, %1490
  %1523 = fmul fast float %1495, %1493
  %1524 = fmul fast float %1495, %1521
  %1525 = call float @dx.op.binary.f32(i32 35, float %1523, float %1524)  ; FMax(a,b)
  %1526 = call float @dx.op.binary.f32(i32 35, float %1522, float %1525)  ; FMax(a,b)
  %1527 = call float @dx.op.binary.f32(i32 35, float %1526, float %819)  ; FMax(a,b)
  %1528 = fcmp fast ugt float %1527, 0x3F10000000000000
  br i1 %1528, label %1530, label %1529

; <label>:1529                                    ; preds = %1518
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1530

; <label>:1530                                    ; preds = %1529, %1518, %1496
  %1531 = phi float [ %1498, %1496 ], [ %1522, %1529 ], [ %1522, %1518 ]
  %1532 = phi float [ %1517, %1496 ], [ %1523, %1529 ], [ %1523, %1518 ]
  %1533 = phi float [ %1516, %1496 ], [ %1524, %1529 ], [ %1524, %1518 ]
  %1534 = phi float [ %1516, %1496 ], [ %819, %1529 ], [ %819, %1518 ]
  %1535 = fadd fast float %565, 0x3FE3C6EF40000000
  %1536 = call float @dx.op.unary.f32(i32 22, float %1535)  ; Frc(value)
  %1537 = call float @dx.op.unary.f32(i32 23, float %1531)  ; Log(value)
  %1538 = fadd fast float %1537, -7.000000e+00
  %1539 = call float @dx.op.unary.f32(i32 21, float %1538)  ; Exp(value)
  %1540 = fmul fast float %1536, 2.000000e+00
  %1541 = fadd fast float %1540, -1.000000e+00
  %1542 = fmul fast float %1539, %1541
  %1543 = fcmp fast ogt float %1531, 0.000000e+00
  %1544 = select i1 %1543, float %1542, float 0.000000e+00
  %1545 = fadd fast float %1544, %1531
  %1546 = fadd fast float %565, 0x3FF3C6EF40000000
  %1547 = call float @dx.op.unary.f32(i32 22, float %1546)  ; Frc(value)
  %1548 = call float @dx.op.unary.f32(i32 23, float %1532)  ; Log(value)
  %1549 = fadd fast float %1548, -7.000000e+00
  %1550 = call float @dx.op.unary.f32(i32 21, float %1549)  ; Exp(value)
  %1551 = fmul fast float %1547, 2.000000e+00
  %1552 = fadd fast float %1551, -1.000000e+00
  %1553 = fmul fast float %1550, %1552
  %1554 = fcmp fast ogt float %1532, 0.000000e+00
  %1555 = select i1 %1554, float %1553, float 0.000000e+00
  %1556 = fadd fast float %1555, %1532
  %1557 = fadd fast float %565, 0x3FFDAA66E0000000
  %1558 = call float @dx.op.unary.f32(i32 22, float %1557)  ; Frc(value)
  %1559 = call float @dx.op.unary.f32(i32 23, float %1533)  ; Log(value)
  %1560 = fadd fast float %1559, -6.000000e+00
  %1561 = call float @dx.op.unary.f32(i32 21, float %1560)  ; Exp(value)
  %1562 = fmul fast float %1558, 2.000000e+00
  %1563 = fadd fast float %1562, -1.000000e+00
  %1564 = fmul fast float %1561, %1563
  %1565 = fcmp fast ogt float %1533, 0.000000e+00
  %1566 = select i1 %1565, float %1564, float 0.000000e+00
  %1567 = fadd fast float %1566, %1533
  %1568 = select i1 %111, float %1532, float %1556
  %1569 = select i1 %111, float %1533, float %1567
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1570 = call float @dx.op.binary.f32(i32 36, float %1545, float 3.225500e+04)  ; FMin(a,b)
  %1571 = call float @dx.op.binary.f32(i32 36, float %1568, float 3.225500e+04)  ; FMin(a,b)
  %1572 = call float @dx.op.binary.f32(i32 36, float %1569, float 3.225500e+04)  ; FMin(a,b)
  %1573 = call float @dx.op.binary.f32(i32 36, float %1534, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1570)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1571)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1572)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1573)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1534)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1534)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1534)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1534)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!35 = !{[33 x i32] [i32 31, i32 8, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 254, i32 255, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255, i32 255, i32 7, i32 255, i32 255, i32 0, i32 0, i32 3, i32 3, i32 7, i32 7, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 255]}
!36 = !{void ()* @ps_main, !"ps_main", !37, !4, !59}
!37 = !{!38, !55, null}
!38 = !{!39, !42, !43, !45, !47, !49, !51, !52, !54}
!39 = !{i32 0, !"SV_Position", i8 9, i8 3, !40, i8 4, i32 1, i8 4, i32 0, i8 0, !41}
!40 = !{i32 0}
!41 = !{i32 3, i32 15}
!42 = !{i32 1, !"COLOR", i8 9, i8 0, !40, i8 2, i32 1, i8 4, i32 1, i8 0, !41}
!43 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !40, i8 2, i32 1, i8 2, i32 2, i8 0, !44}
!44 = !{i32 3, i32 3}
!45 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !46, i8 2, i32 1, i8 4, i32 3, i8 0, !41}
!46 = !{i32 3}
!47 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !48, i8 3, i32 1, i8 2, i32 4, i8 0, !44}
!48 = !{i32 5}
!49 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !50, i8 2, i32 1, i8 4, i32 5, i8 0, !41}
!50 = !{i32 8}
!51 = !{i32 6, !"QUAD_POSITION", i8 9, i8 0, !40, i8 1, i32 1, i8 4, i32 6, i8 0, !41}
!52 = !{i32 7, !"COLOR", i8 5, i8 0, !46, i8 1, i32 1, i8 3, i32 7, i8 0, !53}
!53 = !{i32 3, i32 5}
!54 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !40, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!55 = !{!56, !57}
!56 = !{i32 0, !"SV_Target", i8 9, i8 16, !40, i8 0, i32 1, i8 4, i32 0, i8 0, !41}
!57 = !{i32 1, !"SV_Target", i8 9, i8 16, !58, i8 0, i32 1, i8 4, i32 1, i8 0, !41}
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
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}

