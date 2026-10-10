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
; shader hash: 187141f857b85c4ae20e42bb7a685656
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
;   output 1 depends on inputs: { 0, 1, 2, 3, 5, 7, 8, 9, 12, 13, 14, 15, 16, 17, 20, 21, 22, 23, 24, 25, 26, 27, 28, 30 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 22, 23, 24, 25, 26, 27, 28, 30 }
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
  %183 = add i32 %24, 124
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
  %642 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %641, %dx.types.Handle %49, float %168, float %169, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %643 = extractvalue %dx.types.ResRet.f32 %642, 0
  %644 = extractvalue %dx.types.ResRet.f32 %642, 1
  %645 = extractvalue %dx.types.ResRet.f32 %642, 2
  %646 = add i32 %24, 44
  %647 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %646, i32 undef)  ; BufferLoad(srv,index,wot)
  %648 = extractvalue %dx.types.ResRet.i32 %647, 0
  %649 = shl i32 %648, 4
  %650 = and i32 %649, 32752
  %651 = call float @dx.op.legacyF16ToF32(i32 131, i32 %650)  ; LegacyF16ToF32(value)
  %652 = lshr i32 %648, 7
  %653 = and i32 %652, 32752
  %654 = call float @dx.op.legacyF16ToF32(i32 131, i32 %653)  ; LegacyF16ToF32(value)
  %655 = lshr i32 %648, 22
  %656 = shl nuw nsw i32 %655, 5
  %657 = call float @dx.op.legacyF16ToF32(i32 131, i32 %656)  ; LegacyF16ToF32(value)
  %658 = fmul fast float %651, %643
  %659 = fmul fast float %654, %644
  %660 = fmul fast float %657, %645
  %661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %662 = extractvalue %dx.types.CBufRet.f32 %661, 0
  %663 = fmul fast float %658, %662
  %664 = fmul fast float %659, %662
  %665 = fmul fast float %660, %662
  %666 = add i32 %24, 48
  %667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %666, i32 undef)  ; BufferLoad(srv,index,wot)
  %668 = extractvalue %dx.types.ResRet.i32 %667, 0
  %669 = lshr i32 %668, 22
  %670 = shl nuw nsw i32 %669, 5
  %671 = call float @dx.op.legacyF16ToF32(i32 131, i32 %670)  ; LegacyF16ToF32(value)
  %672 = fmul fast float %671, %663
  %673 = select i1 %111, float %672, float %663
  %674 = add i32 %24, 40
  %675 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %674, i32 undef)  ; BufferLoad(srv,index,wot)
  %676 = extractvalue %dx.types.ResRet.i32 %675, 0
  %677 = and i32 %676, 255
  %678 = uitofp i32 %677 to float
  %679 = fmul fast float %678, 0x3F70101020000000
  %680 = lshr i32 %676, 8
  %681 = and i32 %680, 255
  %682 = uitofp i32 %681 to float
  %683 = fmul fast float %682, 0x3F70101020000000
  %684 = lshr i32 %676, 16
  %685 = and i32 %684, 255
  %686 = uitofp i32 %685 to float
  %687 = fmul fast float %686, 0x3F70101020000000
  %688 = fmul fast float %679, %679
  %689 = fmul fast float %683, %683
  %690 = fmul fast float %687, %687
  %691 = add i32 %24, 128
  %692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %691, i32 undef)  ; BufferLoad(srv,index,wot)
  %693 = extractvalue %dx.types.ResRet.i32 %692, 0
  %694 = add i32 %693, 0
  %695 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %694, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %696 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %695, %dx.types.Handle %50, float %168, float %169, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %697 = extractvalue %dx.types.ResRet.f32 %696, 0
  %698 = extractvalue %dx.types.ResRet.f32 %696, 1
  %699 = extractvalue %dx.types.ResRet.f32 %696, 2
  %700 = fmul fast float %688, %697
  %701 = fmul fast float %689, %698
  %702 = fmul fast float %690, %699
  %703 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %19, float %33, float %34, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %704 = extractvalue %dx.types.ResRet.f32 %703, 0
  %705 = extractvalue %dx.types.ResRet.f32 %703, 1
  %706 = extractvalue %dx.types.ResRet.f32 %703, 2
  %707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %708 = extractvalue %dx.types.CBufRet.f32 %707, 1
  %709 = fmul fast float %708, %704
  %710 = fmul fast float %708, %705
  %711 = fmul fast float %708, %706
  %712 = call float @dx.op.unary.f32(i32 7, float %629)  ; Saturate(value)
  %713 = call float @dx.op.unary.f32(i32 7, float %630)  ; Saturate(value)
  %714 = call float @dx.op.unary.f32(i32 7, float %631)  ; Saturate(value)
  %715 = fmul fast float %673, %634
  %716 = fmul fast float %664, %635
  %717 = fmul fast float %665, %636
  %718 = call float @dx.op.dot3.f32(i32 55, float %715, float %716, float %717, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %719 = select i1 %111, float 0.000000e+00, float %715
  %720 = select i1 %111, float %718, float %716
  %721 = select i1 %111, float 0.000000e+00, float %717
  %722 = fmul fast float %549, %673
  %723 = fmul fast float %550, %664
  %724 = fmul fast float %551, %665
  %725 = call float @dx.op.dot3.f32(i32 55, float %643, float %644, float %645, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %726 = add i32 %24, 32
  %727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %726, i32 undef)  ; BufferLoad(srv,index,wot)
  %728 = extractvalue %dx.types.ResRet.i32 %727, 0
  %729 = and i32 %728, 255
  %730 = uitofp i32 %729 to float
  %731 = lshr i32 %728, 8
  %732 = and i32 %731, 255
  %733 = uitofp i32 %732 to float
  %734 = fmul fast float %733, %725
  %735 = fadd fast float %734, %730
  %736 = fmul fast float %735, 0x3F70101020000000
  %737 = call float @dx.op.unary.f32(i32 7, float %736)  ; Saturate(value)
  %738 = and i32 %131, 8192
  %739 = icmp eq i32 %738, 0
  %740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %741 = extractvalue %dx.types.CBufRet.f32 %740, 0
  br i1 %739, label %748, label %742, !dx.controlflow.hints !66

; <label>:742                                     ; preds = %628
  %743 = add i32 %128, 176
  %744 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %743, i32 undef)  ; BufferLoad(srv,index,wot)
  %745 = extractvalue %dx.types.ResRet.f32 %744, 0
  %746 = fcmp fast oge float %745, 0.000000e+00
  %747 = select i1 %746, float %745, float %741
  br label %755

; <label>:748                                     ; preds = %628
  %749 = add i32 %24, 104
  %750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %749, i32 undef)  ; BufferLoad(srv,index,wot)
  %751 = extractvalue %dx.types.ResRet.i32 %750, 0
  %752 = bitcast i32 %751 to float
  %753 = fcmp fast oge float %752, 0.000000e+00
  %754 = select i1 %753, float %752, float %741
  br label %755

; <label>:755                                     ; preds = %748, %742
  %756 = phi float [ %747, %742 ], [ %754, %748 ]
  %757 = fsub fast float 1.000000e+00, %700
  %758 = fmul fast float %757, %633
  %759 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %221, i32 %222, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %760 = extractvalue %dx.types.ResRet.i32 %759, 0
  %761 = lshr i32 %760, 18
  %762 = uitofp i32 %761 to float
  %763 = fmul fast float %762, 0x3F4C00EBA0000000
  %764 = call float @dx.op.unary.f32(i32 21, float %763)  ; Exp(value)
  %765 = fadd fast float %764, -1.000000e+00
  %766 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %10, i32 0)  ; GetDimensions(handle,mipLevel)
  %767 = extractvalue %dx.types.Dimensions %766, 0
  %768 = sitofp i32 %767 to float
  %769 = extractvalue %dx.types.Dimensions %766, 1
  %770 = sitofp i32 %769 to float
  %771 = fcmp fast oge float %219, %768
  %772 = fcmp fast oge float %220, %770
  %773 = or i1 %771, %772
  %774 = select i1 %773, float 0x4197782600000000, float %765
  %775 = icmp eq i32 %127, 3
  %776 = fcmp fast ogt float %48, %774
  %777 = and i1 %245, %776
  %778 = or i1 %775, %777
  %779 = icmp eq i32 %127, 2
  %780 = fcmp fast ole float %48, %774
  %781 = and i1 %779, %780
  %782 = or i1 %781, %778
  %783 = fmul fast float %722, %709
  %784 = fmul fast float %723, %710
  %785 = fmul fast float %724, %711
  %786 = fadd fast float %783, %719
  %787 = fadd fast float %720, %784
  %788 = fadd fast float %785, %721
  %789 = fmul fast float %786, %632
  %790 = fmul fast float %787, %632
  %791 = fmul fast float %788, %632
  %792 = fmul fast float %710, %632
  %793 = fmul fast float %711, %632
  %794 = fadd fast float %700, -1.000000e+00
  %795 = fadd fast float %701, -1.000000e+00
  %796 = fadd fast float %702, -1.000000e+00
  %797 = fmul fast float %794, %632
  %798 = fmul fast float %795, %632
  %799 = fmul fast float %796, %632
  %800 = fadd fast float %797, 1.000000e+00
  %801 = fadd fast float %798, 1.000000e+00
  %802 = fadd fast float %799, 1.000000e+00
  %803 = call float @dx.op.dot3.f32(i32 55, float %800, float %801, float %802, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %804 = fsub fast float 1.000000e+00, %803
  %805 = fmul fast float %756, %737
  %806 = fsub fast float 1.000000e+00, %758
  %807 = fsub fast float %806, %737
  %808 = call float @dx.op.unary.f32(i32 7, float %807)  ; Saturate(value)
  %809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %810 = extractvalue %dx.types.CBufRet.f32 %809, 3
  %811 = fmul fast float %810, %808
  %812 = fadd fast float %811, %805
  %813 = and i32 %131, 1048576
  %814 = icmp eq i32 %813, 0
  br i1 %814, label %906, label %815, !dx.controlflow.hints !67

; <label>:815                                     ; preds = %755
  %816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %817 = extractvalue %dx.types.CBufRet.f32 %816, 2
  %818 = extractvalue %dx.types.CBufRet.f32 %816, 3
  %819 = fmul fast float %817, %53
  %820 = fmul fast float %818, %54
  %821 = call float @dx.op.unary.f32(i32 7, float %819)  ; Saturate(value)
  %822 = call float @dx.op.unary.f32(i32 7, float %820)  ; Saturate(value)
  %823 = select i1 %782, i32 2, i32 0
  %824 = or i32 %823, 1
  %825 = uitofp i32 %824 to float
  %826 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %821, float %822, float %825, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %827 = extractvalue %dx.types.ResRet.f32 %826, 0
  %828 = extractvalue %dx.types.ResRet.f32 %826, 1
  %829 = extractvalue %dx.types.ResRet.f32 %826, 2
  %830 = extractvalue %dx.types.ResRet.f32 %826, 3
  %831 = add nuw nsw i32 %823, 2
  %832 = uitofp i32 %831 to float
  %833 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %821, float %822, float %832, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %834 = extractvalue %dx.types.ResRet.f32 %833, 0
  %835 = extractvalue %dx.types.ResRet.f32 %833, 1
  %836 = extractvalue %dx.types.ResRet.f32 %833, 2
  %837 = extractvalue %dx.types.ResRet.f32 %833, 3
  %838 = call float @dx.op.binary.f32(i32 35, float %828, float %829)  ; FMax(a,b)
  %839 = call float @dx.op.binary.f32(i32 35, float %827, float %838)  ; FMax(a,b)
  %840 = call float @dx.op.binary.f32(i32 35, float %839, float %830)  ; FMax(a,b)
  %841 = call float @dx.op.binary.f32(i32 36, float %835, float %836)  ; FMin(a,b)
  %842 = call float @dx.op.binary.f32(i32 36, float %834, float %841)  ; FMin(a,b)
  %843 = call float @dx.op.binary.f32(i32 36, float %842, float %837)  ; FMin(a,b)
  %844 = fmul fast float %840, 2.550000e+02
  %845 = fadd fast float %844, 0x3F70101020000000
  %846 = fptoui float %845 to i32
  %847 = fmul fast float %843, 2.550000e+02
  %848 = fadd fast float %847, 0x3F70101020000000
  %849 = fptoui float %848 to i32
  %850 = icmp ult i32 %846, %849
  br i1 %850, label %851, label %899

; <label>:851                                     ; preds = %815
  %852 = fcmp fast ogt float %47, 9.843750e-01
  %853 = fadd fast float %48, -4.000000e+00
  %854 = select i1 %852, float -4.000000e+00, float %853
  %855 = call float @dx.op.binary.f32(i32 35, float %854, float 0.000000e+00)  ; FMax(a,b)
  %856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %857 = extractvalue %dx.types.CBufRet.f32 %856, 0
  %858 = fadd fast float %857, %855
  %859 = extractvalue %dx.types.CBufRet.f32 %856, 2
  %860 = fmul fast float %858, %859
  %861 = call float @dx.op.unary.f32(i32 23, float %860)  ; Log(value)
  %862 = extractvalue %dx.types.CBufRet.f32 %856, 3
  %863 = fmul fast float %862, %861
  %864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %865 = extractvalue %dx.types.CBufRet.f32 %864, 2
  %866 = fmul fast float %863, %865
  %867 = call float @dx.op.unary.f32(i32 7, float %866)  ; Saturate(value)
  %868 = uitofp i32 %846 to float
  %869 = uitofp i32 %849 to float
  %870 = fadd fast float %868, 5.000000e-01
  %871 = fadd fast float %869, 5.000000e-01
  %872 = fmul fast float %865, %870
  %873 = fmul fast float %865, %871
  %874 = fadd fast float %872, 0x3F0FFB4800000000
  %875 = fadd fast float %873, 0xBF0FFB4800000000
  %876 = call float @dx.op.binary.f32(i32 35, float %867, float %874)  ; FMax(a,b)
  %877 = call float @dx.op.binary.f32(i32 36, float %876, float %875)  ; FMin(a,b)
  %878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %879 = extractvalue %dx.types.CBufRet.f32 %878, 1
  %880 = extractvalue %dx.types.CBufRet.f32 %878, 2
  %881 = extractvalue %dx.types.CBufRet.f32 %878, 0
  %882 = select i1 %782, float %881, float 0.000000e+00
  %883 = fmul fast float %879, %877
  %884 = fadd fast float %882, %883
  %885 = fadd fast float %882, %880
  %886 = fsub fast float %879, %880
  %887 = fadd fast float %886, %882
  %888 = call float @dx.op.binary.f32(i32 35, float %884, float %885)  ; FMax(a,b)
  %889 = call float @dx.op.binary.f32(i32 36, float %888, float %887)  ; FMin(a,b)
  %890 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %18, float %821, float %822, float %889, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %891 = extractvalue %dx.types.ResRet.f32 %890, 0
  %892 = extractvalue %dx.types.ResRet.f32 %890, 1
  %893 = extractvalue %dx.types.ResRet.f32 %890, 2
  %894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %895 = extractvalue %dx.types.CBufRet.f32 %894, 1
  %896 = fmul fast float %895, %891
  %897 = fmul fast float %895, %892
  %898 = fmul fast float %895, %893
  br label %899

; <label>:899                                     ; preds = %851, %815
  %900 = phi float [ %896, %851 ], [ 1.000000e+00, %815 ]
  %901 = phi float [ %897, %851 ], [ 1.000000e+00, %815 ]
  %902 = phi float [ %898, %851 ], [ 1.000000e+00, %815 ]
  %903 = fmul fast float %900, %789
  %904 = fmul fast float %901, %790
  %905 = fmul fast float %902, %791
  br label %906

; <label>:906                                     ; preds = %899, %755
  %907 = phi float [ %903, %899 ], [ %789, %755 ]
  %908 = phi float [ %904, %899 ], [ %790, %755 ]
  %909 = phi float [ %905, %899 ], [ %791, %755 ]
  %910 = and i32 %131, 2097152
  %911 = icmp eq i32 %910, 0
  br i1 %911, label %916, label %912, !dx.controlflow.hints !68

; <label>:912                                     ; preds = %906
  %913 = add i32 %128, 192
  %914 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %913, i32 undef)  ; BufferLoad(srv,index,wot)
  %915 = extractvalue %dx.types.ResRet.f32 %914, 0
  br label %919

; <label>:916                                     ; preds = %906
  %917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %918 = extractvalue %dx.types.CBufRet.f32 %917, 3
  br label %919

; <label>:919                                     ; preds = %916, %912
  %920 = phi float [ %915, %912 ], [ %918, %916 ]
  %921 = fmul fast float %712, %632
  %922 = fmul fast float %921, %709
  %923 = fmul fast float %792, %713
  %924 = fmul fast float %793, %714
  br i1 %777, label %925, label %1034

; <label>:925                                     ; preds = %919
  %926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %927 = extractvalue %dx.types.CBufRet.f32 %926, 2
  %928 = extractvalue %dx.types.CBufRet.f32 %926, 3
  %929 = fmul fast float %927, %53
  %930 = fmul fast float %928, %54
  %931 = call float @dx.op.unary.f32(i32 7, float %929)  ; Saturate(value)
  %932 = call float @dx.op.unary.f32(i32 7, float %930)  ; Saturate(value)
  %933 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %931, float %932, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %934 = extractvalue %dx.types.ResRet.f32 %933, 0
  %935 = extractvalue %dx.types.ResRet.f32 %933, 1
  %936 = extractvalue %dx.types.ResRet.f32 %933, 2
  %937 = extractvalue %dx.types.ResRet.f32 %933, 3
  %938 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %931, float %932, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %939 = extractvalue %dx.types.ResRet.f32 %938, 0
  %940 = extractvalue %dx.types.ResRet.f32 %938, 1
  %941 = extractvalue %dx.types.ResRet.f32 %938, 2
  %942 = extractvalue %dx.types.ResRet.f32 %938, 3
  %943 = call float @dx.op.binary.f32(i32 35, float %935, float %936)  ; FMax(a,b)
  %944 = call float @dx.op.binary.f32(i32 35, float %934, float %943)  ; FMax(a,b)
  %945 = call float @dx.op.binary.f32(i32 35, float %944, float %937)  ; FMax(a,b)
  %946 = call float @dx.op.binary.f32(i32 36, float %940, float %941)  ; FMin(a,b)
  %947 = call float @dx.op.binary.f32(i32 36, float %939, float %946)  ; FMin(a,b)
  %948 = call float @dx.op.binary.f32(i32 36, float %947, float %942)  ; FMin(a,b)
  %949 = fmul fast float %945, 2.550000e+02
  %950 = fadd fast float %949, 0x3F70101020000000
  %951 = fptoui float %950 to i32
  %952 = fmul fast float %948, 2.550000e+02
  %953 = fadd fast float %952, 0x3F70101020000000
  %954 = fptoui float %953 to i32
  %955 = icmp ult i32 %951, %954
  br i1 %955, label %956, label %1007

; <label>:956                                     ; preds = %925
  %957 = fcmp fast ogt float %47, 9.843750e-01
  %958 = fadd fast float %48, -4.000000e+00
  %959 = select i1 %957, float -4.000000e+00, float %958
  %960 = call float @dx.op.binary.f32(i32 35, float %959, float 0.000000e+00)  ; FMax(a,b)
  %961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %962 = extractvalue %dx.types.CBufRet.f32 %961, 0
  %963 = fadd fast float %962, %960
  %964 = extractvalue %dx.types.CBufRet.f32 %961, 2
  %965 = fmul fast float %963, %964
  %966 = call float @dx.op.unary.f32(i32 23, float %965)  ; Log(value)
  %967 = extractvalue %dx.types.CBufRet.f32 %961, 3
  %968 = fmul fast float %967, %966
  %969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %970 = extractvalue %dx.types.CBufRet.f32 %969, 2
  %971 = fmul fast float %968, %970
  %972 = call float @dx.op.unary.f32(i32 7, float %971)  ; Saturate(value)
  %973 = uitofp i32 %951 to float
  %974 = uitofp i32 %954 to float
  %975 = fadd fast float %973, 5.000000e-01
  %976 = fadd fast float %974, 5.000000e-01
  %977 = fmul fast float %970, %975
  %978 = fmul fast float %970, %976
  %979 = fadd fast float %977, 0x3F0FFB4800000000
  %980 = fadd fast float %978, 0xBF0FFB4800000000
  %981 = call float @dx.op.binary.f32(i32 35, float %972, float %979)  ; FMax(a,b)
  %982 = call float @dx.op.binary.f32(i32 36, float %981, float %980)  ; FMin(a,b)
  %983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %984 = extractvalue %dx.types.CBufRet.f32 %983, 1
  %985 = extractvalue %dx.types.CBufRet.f32 %983, 2
  %986 = extractvalue %dx.types.CBufRet.f32 %983, 0
  %987 = fmul fast float %984, %982
  %988 = fadd fast float %986, %987
  %989 = fadd fast float %986, %985
  %990 = fsub fast float %984, %985
  %991 = fadd fast float %990, %986
  %992 = call float @dx.op.binary.f32(i32 35, float %988, float %989)  ; FMax(a,b)
  %993 = call float @dx.op.binary.f32(i32 36, float %992, float %991)  ; FMin(a,b)
  %994 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %931, float %932, float %993, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %995 = extractvalue %dx.types.ResRet.f32 %994, 0
  %996 = extractvalue %dx.types.ResRet.f32 %994, 1
  %997 = extractvalue %dx.types.ResRet.f32 %994, 2
  %998 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %931, float %932, float %993, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %999 = extractvalue %dx.types.ResRet.f32 %998, 0
  %1000 = extractvalue %dx.types.ResRet.f32 %998, 1
  %1001 = extractvalue %dx.types.ResRet.f32 %998, 2
  %1002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1003 = extractvalue %dx.types.CBufRet.f32 %1002, 1
  %1004 = fmul fast float %1003, %999
  %1005 = fmul fast float %1003, %1000
  %1006 = fmul fast float %1003, %1001
  br label %1007

; <label>:1007                                    ; preds = %956, %925
  %1008 = phi float [ %995, %956 ], [ 1.000000e+00, %925 ]
  %1009 = phi float [ %996, %956 ], [ 1.000000e+00, %925 ]
  %1010 = phi float [ %997, %956 ], [ 1.000000e+00, %925 ]
  %1011 = phi float [ %1004, %956 ], [ 0.000000e+00, %925 ]
  %1012 = phi float [ %1005, %956 ], [ 0.000000e+00, %925 ]
  %1013 = phi float [ %1006, %956 ], [ 0.000000e+00, %925 ]
  %1014 = fmul fast float %1011, %804
  %1015 = fmul fast float %1012, %804
  %1016 = fmul fast float %1013, %804
  %1017 = call float @dx.op.dot3.f32(i32 55, float %1008, float %1009, float %1010, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1018 = call float @dx.op.dot3.f32(i32 55, float %1014, float %1015, float %1016, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1019 = select i1 %111, float %1017, float %1008
  %1020 = select i1 %111, float %1017, float %1009
  %1021 = select i1 %111, float 1.000000e+00, float %1010
  %1022 = select i1 %111, float %1018, float %1014
  %1023 = select i1 %111, float 0.000000e+00, float %1015
  %1024 = select i1 %111, float 0.000000e+00, float %1016
  %1025 = fmul fast float %1019, %922
  %1026 = fmul fast float %1020, %923
  %1027 = fmul fast float %1021, %924
  %1028 = fadd fast float %1025, %1022
  %1029 = fadd fast float %1026, %1023
  %1030 = fadd fast float %1024, %1027
  %1031 = fmul fast float %1019, %907
  %1032 = fmul fast float %1020, %908
  %1033 = fmul fast float %1021, %909
  br label %1034

; <label>:1034                                    ; preds = %1007, %919
  %1035 = phi float [ %774, %1007 ], [ %48, %919 ]
  %1036 = phi float [ %1028, %1007 ], [ %922, %919 ]
  %1037 = phi float [ %1029, %1007 ], [ %923, %919 ]
  %1038 = phi float [ %1030, %1007 ], [ %924, %919 ]
  %1039 = phi float [ %1031, %1007 ], [ %907, %919 ]
  %1040 = phi float [ %1032, %1007 ], [ %908, %919 ]
  %1041 = phi float [ %1033, %1007 ], [ %909, %919 ]
  %1042 = phi float [ %1008, %1007 ], [ 1.000000e+00, %919 ]
  br i1 %782, label %1344, label %1043

; <label>:1043                                    ; preds = %1034
  %1044 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %19, float %33, float %34, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1045 = extractvalue %dx.types.ResRet.f32 %1044, 0
  %1046 = extractvalue %dx.types.ResRet.f32 %1044, 1
  %1047 = extractvalue %dx.types.ResRet.f32 %1044, 2
  %1048 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %19, float %33, float %34, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1049 = extractvalue %dx.types.ResRet.f32 %1048, 0
  %1050 = extractvalue %dx.types.ResRet.f32 %1048, 1
  %1051 = extractvalue %dx.types.ResRet.f32 %1048, 2
  %1052 = fmul fast float %1045, %804
  %1053 = fmul fast float %1046, %804
  %1054 = fmul fast float %1047, %804
  %1055 = fmul fast float %1049, %1042
  %1056 = call float @dx.op.dot3.f32(i32 55, float %1049, float %1050, float %1051, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1057 = call float @dx.op.dot3.f32(i32 55, float %1052, float %1053, float %1054, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1058 = select i1 %111, float %1056, float %1049
  %1059 = select i1 %111, float %1056, float %1050
  %1060 = select i1 %111, float 1.000000e+00, float %1051
  %1061 = select i1 %111, float %1057, float %1052
  %1062 = select i1 %111, float 0.000000e+00, float %1053
  %1063 = select i1 %111, float 0.000000e+00, float %1054
  %1064 = fmul fast float %1058, %1036
  %1065 = fmul fast float %1059, %1037
  %1066 = fmul fast float %1060, %1038
  %1067 = fadd fast float %1064, %1061
  %1068 = fadd fast float %1065, %1062
  %1069 = fadd fast float %1066, %1063
  %1070 = fmul fast float %1058, %1039
  %1071 = fmul fast float %1059, %1040
  %1072 = fmul fast float %1060, %1041
  %1073 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1074 = extractvalue %dx.types.CBufRet.i32 %1073, 0
  %1075 = icmp eq i32 %1074, 0
  br i1 %1075, label %1344, label %1076, !dx.controlflow.hints !69

; <label>:1076                                    ; preds = %1043
  %1077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1078 = extractvalue %dx.types.CBufRet.f32 %1077, 2
  %1079 = extractvalue %dx.types.CBufRet.f32 %1077, 3
  %1080 = fmul fast float %1078, %53
  %1081 = fmul fast float %1079, %54
  %1082 = fmul fast float %1080, 2.000000e+00
  %1083 = fmul fast float %1081, 2.000000e+00
  %1084 = fsub fast float 1.000000e+00, %1082
  %1085 = fsub fast float 1.000000e+00, %1083
  %1086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1087 = extractvalue %dx.types.CBufRet.f32 %1086, 0
  %1088 = extractvalue %dx.types.CBufRet.f32 %1086, 1
  %1089 = extractvalue %dx.types.CBufRet.f32 %1086, 2
  %1090 = fmul fast float %1084, %1087
  %1091 = fmul fast float %1084, %1088
  %1092 = fmul fast float %1084, %1089
  %1093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1094 = extractvalue %dx.types.CBufRet.f32 %1093, 0
  %1095 = extractvalue %dx.types.CBufRet.f32 %1093, 1
  %1096 = extractvalue %dx.types.CBufRet.f32 %1093, 2
  %1097 = fmul fast float %1085, %1094
  %1098 = fmul fast float %1085, %1095
  %1099 = fmul fast float %1085, %1096
  %1100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1101 = extractvalue %dx.types.CBufRet.f32 %1100, 0
  %1102 = extractvalue %dx.types.CBufRet.f32 %1100, 1
  %1103 = extractvalue %dx.types.CBufRet.f32 %1100, 2
  %1104 = fadd fast float %1097, %1101
  %1105 = fadd fast float %1104, %1090
  %1106 = fadd fast float %1098, %1102
  %1107 = fadd fast float %1106, %1091
  %1108 = fadd fast float %1099, %1103
  %1109 = fadd fast float %1108, %1092
  %1110 = fmul fast float %1105, %1035
  %1111 = fmul fast float %1107, %1035
  %1112 = fmul fast float %1109, %1035
  %1113 = fmul fast float %1110, %1110
  %1114 = fmul fast float %1111, %1111
  %1115 = fadd fast float %1113, %1114
  %1116 = fmul fast float %1112, %1112
  %1117 = fadd fast float %1115, %1116
  %1118 = call float @dx.op.unary.f32(i32 24, float %1117)  ; Sqrt(value)
  %1119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1120 = extractvalue %dx.types.CBufRet.f32 %1119, 0
  %1121 = fsub fast float %1118, %1120
  %1122 = extractvalue %dx.types.CBufRet.f32 %1119, 2
  %1123 = fmul fast float %1121, %1122
  %1124 = call float @dx.op.unary.f32(i32 7, float %1123)  ; Saturate(value)
  %1125 = fadd fast float %1124, -5.000000e-01
  %1126 = fmul fast float %1125, 2.000000e+00
  %1127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1128 = extractvalue %dx.types.CBufRet.f32 %1127, 2
  %1129 = call float @dx.op.binary.f32(i32 36, float %1128, float %1126)  ; FMin(a,b)
  %1130 = fsub fast float -0.000000e+00, %1128
  %1131 = fcmp fast ogt float %1129, %1130
  br i1 %1131, label %1132, label %1344, !dx.controlflow.hints !70

; <label>:1132                                    ; preds = %1076
  %1133 = fmul fast float %1129, 5.000000e-01
  %1134 = fadd fast float %1133, 5.000000e-01
  %1135 = call float @dx.op.unary.f32(i32 22, float %1134)  ; Frc(value)
  %1136 = call float @dx.op.unary.f32(i32 27, float %1135)  ; Round_ni(value)
  %1137 = call float @dx.op.unary.f32(i32 22, float %1135)  ; Frc(value)
  %1138 = fmul fast float %1137, 2.000000e+00
  %1139 = fadd fast float %1138, -1.000000e+00
  %1140 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %19, float %1080, float %1081, float %1136, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1141 = extractvalue %dx.types.ResRet.f32 %1140, 0
  %1142 = extractvalue %dx.types.ResRet.f32 %1140, 1
  %1143 = extractvalue %dx.types.ResRet.f32 %1140, 2
  %1144 = extractvalue %dx.types.ResRet.f32 %1140, 3
  %1145 = fadd fast float %1141, -5.000000e-01
  %1146 = fadd fast float %1143, -5.000000e-01
  %1147 = fmul fast float %1145, 0xBFD5555560000000
  %1148 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1146, float %1147)  ; FMad(a,b,c)
  %1149 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1142, float 0.000000e+00)  ; FMad(a,b,c)
  %1150 = fadd fast float %1149, %1144
  %1151 = fmul fast float %1145, -7.500000e-01
  %1152 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1146, float %1151)  ; FMad(a,b,c)
  %1153 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1142, float 0.000000e+00)  ; FMad(a,b,c)
  %1154 = fadd fast float %1153, %1144
  %1155 = call float @dx.op.binary.f32(i32 35, float %1148, float -1.000000e+00)  ; FMax(a,b)
  %1156 = call float @dx.op.binary.f32(i32 35, float %1150, float -1.000000e+00)  ; FMax(a,b)
  %1157 = call float @dx.op.binary.f32(i32 35, float %1152, float -1.000000e+00)  ; FMax(a,b)
  %1158 = call float @dx.op.binary.f32(i32 35, float %1154, float -1.000000e+00)  ; FMax(a,b)
  %1159 = call float @dx.op.binary.f32(i32 36, float %1155, float 1.000000e+00)  ; FMin(a,b)
  %1160 = call float @dx.op.binary.f32(i32 36, float %1156, float 1.000000e+00)  ; FMin(a,b)
  %1161 = call float @dx.op.binary.f32(i32 36, float %1157, float 1.000000e+00)  ; FMin(a,b)
  %1162 = call float @dx.op.binary.f32(i32 36, float %1158, float 1.000000e+00)  ; FMin(a,b)
  %1163 = fcmp fast olt float %1159, 0x3FEFFF8020000000
  br i1 %1163, label %1164, label %1279, !dx.controlflow.hints !71

; <label>:1164                                    ; preds = %1132
  %1165 = extractvalue %dx.types.CBufRet.f32 %1127, 3
  %1166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1167 = extractvalue %dx.types.CBufRet.f32 %1166, 0
  %1168 = extractvalue %dx.types.CBufRet.f32 %1166, 1
  %1169 = extractvalue %dx.types.CBufRet.f32 %1166, 2
  %1170 = extractvalue %dx.types.CBufRet.f32 %1166, 3
  %1171 = fsub fast float %1167, %1159
  %1172 = fsub fast float %1168, %1160
  %1173 = fsub fast float %1169, %1161
  %1174 = fsub fast float %1170, %1162
  %1175 = fmul fast float %1171, %1165
  %1176 = fmul fast float %1172, %1165
  %1177 = fmul fast float %1173, %1165
  %1178 = fmul fast float %1174, %1165
  %1179 = fadd fast float %1175, %1159
  %1180 = fadd fast float %1176, %1160
  %1181 = fsub fast float -0.000000e+00, %1180
  %1182 = fadd fast float %1177, %1161
  %1183 = fadd fast float %1178, %1162
  %1184 = fmul fast float %1179, %1179
  %1185 = fsub fast float %1180, %1184
  %1186 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1185)  ; FMax(a,b)
  %1187 = fdiv fast float 1.000000e+00, %1186
  %1188 = fmul fast float %1180, %1179
  %1189 = fsub fast float %1182, %1188
  %1190 = fsub fast float %1139, %1179
  %1191 = fmul fast float %1139, %1139
  %1192 = fsub fast float %1191, %1180
  %1193 = fmul fast float %1190, %1187
  %1194 = fmul fast float %1193, %1189
  %1195 = fsub fast float %1192, %1194
  %1196 = fmul fast float %1180, %1180
  %1197 = fsub fast float %1183, %1196
  %1198 = fmul fast float %1189, %1189
  %1199 = fmul fast float %1198, %1187
  %1200 = fsub fast float %1197, %1199
  %1201 = fdiv fast float %1195, %1200
  %1202 = fmul fast float %1189, %1201
  %1203 = fsub fast float %1190, %1202
  %1204 = fmul fast float %1203, %1187
  %1205 = fmul fast float %1204, %1179
  %1206 = fsub fast float 1.000000e+00, %1205
  %1207 = fmul fast float %1180, %1201
  %1208 = fsub fast float %1206, %1207
  %1209 = fmul fast float %1204, %1204
  %1210 = fmul fast float %1201, 4.000000e+00
  %1211 = fmul fast float %1210, %1208
  %1212 = fsub fast float %1209, %1211
  %1213 = call float @dx.op.unary.f32(i32 24, float %1212)  ; Sqrt(value)
  %1214 = fcmp fast oge float %1204, 0.000000e+00
  %1215 = fsub fast float -0.000000e+00, %1213
  %1216 = select i1 %1214, float %1215, float %1213
  %1217 = fsub fast float %1216, %1204
  %1218 = fdiv fast float %1217, %1201
  %1219 = fdiv fast float %1208, %1217
  %1220 = fmul fast float %1218, 5.000000e-01
  %1221 = fmul fast float %1219, 2.000000e+00
  %1222 = select i1 %1214, float %1220, float %1221
  %1223 = select i1 %1214, float %1221, float %1220
  %1224 = call float @dx.op.binary.f32(i32 35, float %1222, float %1223)  ; FMax(a,b)
  %1225 = call float @dx.op.binary.f32(i32 36, float %1222, float %1223)  ; FMin(a,b)
  %1226 = fcmp fast ogt float %1139, %1225
  br i1 %1226, label %1227, label %1237

; <label>:1227                                    ; preds = %1164
  %1228 = fsub fast float %1139, %1225
  %1229 = fsub fast float %1224, %1225
  %1230 = fmul fast float %1228, %1229
  %1231 = fmul fast float %1224, %1139
  %1232 = fadd fast float %1224, %1139
  %1233 = fmul fast float %1232, %1179
  %1234 = fadd fast float %1231, %1180
  %1235 = fsub fast float %1234, %1233
  %1236 = fdiv fast float %1235, %1230
  br label %1237

; <label>:1237                                    ; preds = %1227, %1164
  %1238 = phi float [ %1236, %1227 ], [ 0.000000e+00, %1164 ]
  %1239 = fcmp fast ogt float %1139, %1224
  %1240 = fsub fast float %1139, %1224
  br i1 %1239, label %1241, label %1251

; <label>:1241                                    ; preds = %1237
  %1242 = fsub fast float %1224, %1225
  %1243 = fmul fast float %1242, %1240
  %1244 = fmul fast float %1225, %1139
  %1245 = fadd fast float %1225, %1139
  %1246 = fmul fast float %1245, %1179
  %1247 = fsub fast float %1181, %1244
  %1248 = fadd fast float %1247, %1246
  %1249 = fdiv fast float %1248, %1243
  %1250 = fadd fast float %1249, %1238
  br label %1251

; <label>:1251                                    ; preds = %1241, %1237
  %1252 = phi float [ %1250, %1241 ], [ %1238, %1237 ]
  %1253 = fsub fast float %1139, %1225
  %1254 = fmul fast float %1253, %1240
  %1255 = fmul fast float %1225, %1224
  %1256 = fadd fast float %1225, %1224
  %1257 = fmul fast float %1256, %1179
  %1258 = fadd fast float %1255, %1180
  %1259 = fsub fast float %1258, %1257
  %1260 = fdiv fast float %1259, %1254
  %1261 = call float @dx.op.unary.f32(i32 7, float %1252)  ; Saturate(value)
  %1262 = fcmp fast oeq float %920, 0.000000e+00
  %1263 = extractvalue %dx.types.CBufRet.f32 %1127, 0
  %1264 = fcmp fast oeq float %1263, 0.000000e+00
  %1265 = or i1 %1262, %1264
  %1266 = fmul fast float %1263, 2.000000e+00
  %1267 = fadd fast float %1128, %1129
  %1268 = fdiv fast float %1267, %1266
  %1269 = call float @dx.op.unary.f32(i32 7, float %1268)  ; Saturate(value)
  %1270 = fmul fast float %1269, 2.000000e+00
  %1271 = fsub fast float 3.000000e+00, %1270
  %1272 = fmul fast float %1269, %1269
  %1273 = fmul fast float %1272, %1271
  %1274 = select i1 %1265, float 1.000000e+00, float %1273
  %1275 = fmul fast float %1260, %920
  %1276 = fadd fast float %1261, %1275
  %1277 = call float @dx.op.unary.f32(i32 7, float %1276)  ; Saturate(value)
  %1278 = fmul fast float %1274, %1277
  br label %1279

; <label>:1279                                    ; preds = %1251, %1132
  %1280 = phi float [ %1278, %1251 ], [ 0.000000e+00, %1132 ]
  %1281 = fsub fast float 1.000000e+00, %1280
  %1282 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %19, float %1080, float %1081, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1283 = extractvalue %dx.types.ResRet.f32 %1282, 0
  %1284 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1285 = extractvalue %dx.types.CBufRet.i32 %1284, 2
  %1286 = icmp eq i32 %1285, 0
  br i1 %1286, label %1292, label %1287

; <label>:1287                                    ; preds = %1279
  %1288 = call float @dx.op.unary.f32(i32 7, float %1280)  ; Saturate(value)
  %1289 = fadd fast float %1283, -1.000000e+00
  %1290 = fmul fast float %1288, %1289
  %1291 = fadd fast float %1290, 1.000000e+00
  br label %1292

; <label>:1292                                    ; preds = %1287, %1279
  %1293 = phi float [ %1291, %1287 ], [ %1281, %1279 ]
  %1294 = call float @dx.op.binary.f32(i32 35, float %1283, float %1293)  ; FMax(a,b)
  %1295 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %1296 = extractvalue %dx.types.CBufRet.i32 %1295, 2
  %1297 = and i32 %1296, 1
  %1298 = icmp eq i32 %1297, 0
  %1299 = fcmp fast une float %1294, 1.000000e+00
  %1300 = and i1 %1299, %1298
  br i1 %1300, label %1301, label %1320

; <label>:1301                                    ; preds = %1292
  %1302 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %19, float %1080, float %1081, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1303 = extractvalue %dx.types.ResRet.f32 %1302, 0
  %1304 = extractvalue %dx.types.ResRet.f32 %1302, 1
  %1305 = extractvalue %dx.types.ResRet.f32 %1302, 2
  %1306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1307 = extractvalue %dx.types.CBufRet.f32 %1306, 1
  %1308 = fmul fast float %1307, %1303
  %1309 = fmul fast float %1307, %1304
  %1310 = fmul fast float %1307, %1305
  %1311 = fcmp fast ogt float %1283, 0x3FEFFF2E40000000
  %1312 = fsub fast float 1.000000e+00, %1294
  %1313 = fsub fast float 1.000000e+00, %1283
  %1314 = fdiv fast float %1312, %1313
  %1315 = call float @dx.op.unary.f32(i32 7, float %1314)  ; Saturate(value)
  %1316 = select i1 %1311, float 0.000000e+00, float %1315
  %1317 = fmul fast float %1308, %1316
  %1318 = fmul fast float %1309, %1316
  %1319 = fmul fast float %1310, %1316
  br label %1320

; <label>:1320                                    ; preds = %1301, %1292
  %1321 = phi float [ 0.000000e+00, %1292 ], [ %1317, %1301 ]
  %1322 = phi float [ 0.000000e+00, %1292 ], [ %1318, %1301 ]
  %1323 = phi float [ 0.000000e+00, %1292 ], [ %1319, %1301 ]
  %1324 = fmul fast float %1321, %804
  %1325 = fmul fast float %1322, %804
  %1326 = fmul fast float %1323, %804
  %1327 = fmul fast float %1294, %1055
  %1328 = call float @dx.op.dot3.f32(i32 55, float %1294, float %1294, float %1294, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1329 = call float @dx.op.dot3.f32(i32 55, float %1324, float %1325, float %1326, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1330 = select i1 %111, float %1328, float %1294
  %1331 = select i1 %111, float 1.000000e+00, float %1294
  %1332 = select i1 %111, float %1329, float %1324
  %1333 = select i1 %111, float 0.000000e+00, float %1325
  %1334 = select i1 %111, float 0.000000e+00, float %1326
  %1335 = fmul fast float %1330, %1067
  %1336 = fmul fast float %1330, %1068
  %1337 = fmul fast float %1331, %1069
  %1338 = fadd fast float %1335, %1332
  %1339 = fadd fast float %1336, %1333
  %1340 = fadd fast float %1334, %1337
  %1341 = fmul fast float %1330, %1070
  %1342 = fmul fast float %1330, %1071
  %1343 = fmul fast float %1331, %1072
  br label %1344

; <label>:1344                                    ; preds = %1320, %1076, %1043, %1034
  %1345 = phi float [ %1036, %1034 ], [ %1067, %1043 ], [ %1338, %1320 ], [ %1067, %1076 ]
  %1346 = phi float [ %1037, %1034 ], [ %1068, %1043 ], [ %1339, %1320 ], [ %1068, %1076 ]
  %1347 = phi float [ %1038, %1034 ], [ %1069, %1043 ], [ %1340, %1320 ], [ %1069, %1076 ]
  %1348 = phi float [ %1039, %1034 ], [ %1070, %1043 ], [ %1341, %1320 ], [ %1070, %1076 ]
  %1349 = phi float [ %1040, %1034 ], [ %1071, %1043 ], [ %1342, %1320 ], [ %1071, %1076 ]
  %1350 = phi float [ %1041, %1034 ], [ %1072, %1043 ], [ %1343, %1320 ], [ %1072, %1076 ]
  %1351 = phi float [ %1042, %1034 ], [ %1055, %1043 ], [ %1327, %1320 ], [ %1055, %1076 ]
  %1352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1353 = extractvalue %dx.types.CBufRet.f32 %1352, 2
  %1354 = extractvalue %dx.types.CBufRet.f32 %1352, 3
  %1355 = fmul fast float %1353, %53
  %1356 = fmul fast float %1354, %54
  %1357 = call float @dx.op.unary.f32(i32 7, float %1355)  ; Saturate(value)
  %1358 = call float @dx.op.unary.f32(i32 7, float %1356)  ; Saturate(value)
  %1359 = select i1 %782, i32 2, i32 0
  %1360 = or i32 %1359, 1
  %1361 = uitofp i32 %1360 to float
  %1362 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %1357, float %1358, float %1361, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1363 = extractvalue %dx.types.ResRet.f32 %1362, 0
  %1364 = extractvalue %dx.types.ResRet.f32 %1362, 1
  %1365 = extractvalue %dx.types.ResRet.f32 %1362, 2
  %1366 = extractvalue %dx.types.ResRet.f32 %1362, 3
  %1367 = add nuw nsw i32 %1359, 2
  %1368 = uitofp i32 %1367 to float
  %1369 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %1357, float %1358, float %1368, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1370 = extractvalue %dx.types.ResRet.f32 %1369, 0
  %1371 = extractvalue %dx.types.ResRet.f32 %1369, 1
  %1372 = extractvalue %dx.types.ResRet.f32 %1369, 2
  %1373 = extractvalue %dx.types.ResRet.f32 %1369, 3
  %1374 = call float @dx.op.binary.f32(i32 35, float %1364, float %1365)  ; FMax(a,b)
  %1375 = call float @dx.op.binary.f32(i32 35, float %1363, float %1374)  ; FMax(a,b)
  %1376 = call float @dx.op.binary.f32(i32 35, float %1375, float %1366)  ; FMax(a,b)
  %1377 = call float @dx.op.binary.f32(i32 36, float %1371, float %1372)  ; FMin(a,b)
  %1378 = call float @dx.op.binary.f32(i32 36, float %1370, float %1377)  ; FMin(a,b)
  %1379 = call float @dx.op.binary.f32(i32 36, float %1378, float %1373)  ; FMin(a,b)
  %1380 = fmul fast float %1376, 2.550000e+02
  %1381 = fadd fast float %1380, 0x3F70101020000000
  %1382 = fptoui float %1381 to i32
  %1383 = fmul fast float %1379, 2.550000e+02
  %1384 = fadd fast float %1383, 0x3F70101020000000
  %1385 = fptoui float %1384 to i32
  %1386 = icmp ult i32 %1382, %1385
  br i1 %1386, label %1387, label %1439

; <label>:1387                                    ; preds = %1344
  %1388 = fcmp fast ogt float %47, 9.843750e-01
  %1389 = fadd fast float %1035, -4.000000e+00
  %1390 = select i1 %1388, float -4.000000e+00, float %1389
  %1391 = call float @dx.op.binary.f32(i32 35, float %1390, float 0.000000e+00)  ; FMax(a,b)
  %1392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1393 = extractvalue %dx.types.CBufRet.f32 %1392, 0
  %1394 = fadd fast float %1393, %1391
  %1395 = extractvalue %dx.types.CBufRet.f32 %1392, 2
  %1396 = fmul fast float %1394, %1395
  %1397 = call float @dx.op.unary.f32(i32 23, float %1396)  ; Log(value)
  %1398 = extractvalue %dx.types.CBufRet.f32 %1392, 3
  %1399 = fmul fast float %1398, %1397
  %1400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1401 = extractvalue %dx.types.CBufRet.f32 %1400, 2
  %1402 = fmul fast float %1399, %1401
  %1403 = call float @dx.op.unary.f32(i32 7, float %1402)  ; Saturate(value)
  %1404 = uitofp i32 %1382 to float
  %1405 = uitofp i32 %1385 to float
  %1406 = fadd fast float %1404, 5.000000e-01
  %1407 = fadd fast float %1405, 5.000000e-01
  %1408 = fmul fast float %1401, %1406
  %1409 = fmul fast float %1401, %1407
  %1410 = fadd fast float %1408, 0x3F0FFB4800000000
  %1411 = fadd fast float %1409, 0xBF0FFB4800000000
  %1412 = call float @dx.op.binary.f32(i32 35, float %1403, float %1410)  ; FMax(a,b)
  %1413 = call float @dx.op.binary.f32(i32 36, float %1412, float %1411)  ; FMin(a,b)
  %1414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1415 = extractvalue %dx.types.CBufRet.f32 %1414, 1
  %1416 = extractvalue %dx.types.CBufRet.f32 %1414, 2
  %1417 = extractvalue %dx.types.CBufRet.f32 %1414, 0
  %1418 = select i1 %782, float %1417, float 0.000000e+00
  %1419 = fmul fast float %1415, %1413
  %1420 = fadd fast float %1418, %1419
  %1421 = fadd fast float %1418, %1416
  %1422 = fsub fast float %1415, %1416
  %1423 = fadd fast float %1422, %1418
  %1424 = call float @dx.op.binary.f32(i32 35, float %1420, float %1421)  ; FMax(a,b)
  %1425 = call float @dx.op.binary.f32(i32 36, float %1424, float %1423)  ; FMin(a,b)
  %1426 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %1357, float %1358, float %1425, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1427 = extractvalue %dx.types.ResRet.f32 %1426, 0
  %1428 = extractvalue %dx.types.ResRet.f32 %1426, 1
  %1429 = extractvalue %dx.types.ResRet.f32 %1426, 2
  %1430 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %1357, float %1358, float %1425, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1431 = extractvalue %dx.types.ResRet.f32 %1430, 0
  %1432 = extractvalue %dx.types.ResRet.f32 %1430, 1
  %1433 = extractvalue %dx.types.ResRet.f32 %1430, 2
  %1434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1435 = extractvalue %dx.types.CBufRet.f32 %1434, 1
  %1436 = fmul fast float %1435, %1431
  %1437 = fmul fast float %1435, %1432
  %1438 = fmul fast float %1435, %1433
  br label %1439

; <label>:1439                                    ; preds = %1387, %1344
  %1440 = phi float [ %1427, %1387 ], [ 1.000000e+00, %1344 ]
  %1441 = phi float [ %1428, %1387 ], [ 1.000000e+00, %1344 ]
  %1442 = phi float [ %1429, %1387 ], [ 1.000000e+00, %1344 ]
  %1443 = phi float [ %1436, %1387 ], [ 0.000000e+00, %1344 ]
  %1444 = phi float [ %1437, %1387 ], [ 0.000000e+00, %1344 ]
  %1445 = phi float [ %1438, %1387 ], [ 0.000000e+00, %1344 ]
  %1446 = fmul fast float %1443, %804
  %1447 = fmul fast float %1444, %804
  %1448 = fmul fast float %1445, %804
  %1449 = fmul fast float %1440, %1351
  %1450 = call float @dx.op.dot3.f32(i32 55, float %1440, float %1441, float %1442, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1451 = call float @dx.op.dot3.f32(i32 55, float %1446, float %1447, float %1448, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1452 = select i1 %111, float %1450, float %1440
  %1453 = select i1 %111, float %1450, float %1441
  %1454 = select i1 %111, float 1.000000e+00, float %1442
  %1455 = select i1 %111, float %1451, float %1446
  %1456 = select i1 %111, float 0.000000e+00, float %1447
  %1457 = select i1 %111, float 0.000000e+00, float %1448
  %1458 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1459 = extractvalue %dx.types.CBufRet.i32 %1458, 3
  %1460 = and i32 %1459, 3
  %1461 = icmp ne i32 %1460, 0
  %1462 = and i32 %1459, 4
  %1463 = icmp ne i32 %1462, 0
  %1464 = and i1 %1461, %1463
  %1465 = and i1 %111, %1464
  br i1 %1465, label %1466, label %1472

; <label>:1466                                    ; preds = %1439
  %1467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1468 = extractvalue %dx.types.CBufRet.f32 %1467, 1
  %1469 = fadd fast float %1449, -1.000000e+00
  %1470 = fmul fast float %1468, %1469
  %1471 = fadd fast float %1470, 1.000000e+00
  br label %1472

; <label>:1472                                    ; preds = %1466, %1439
  %1473 = phi float [ %1471, %1466 ], [ %1449, %1439 ]
  %1474 = fadd fast float %1348, %1345
  %1475 = fmul fast float %1452, %1474
  %1476 = fadd fast float %1475, %1455
  %1477 = fadd fast float %1349, %1346
  %1478 = fmul fast float %1453, %1477
  %1479 = fadd fast float %1478, %1456
  %1480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1481 = extractvalue %dx.types.CBufRet.f32 %1480, 0
  br i1 %111, label %1482, label %1504

; <label>:1482                                    ; preds = %1472
  %1483 = fadd fast float %1476, %1479
  %1484 = fmul fast float %1481, %1483
  %1485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1486 = extractvalue %dx.types.CBufRet.f32 %1485, 3
  %1487 = extractvalue %dx.types.CBufRet.f32 %809, 1
  %1488 = fsub fast float %812, %1487
  %1489 = extractvalue %dx.types.CBufRet.f32 %809, 2
  %1490 = fmul fast float %1488, %1489
  %1491 = call float @dx.op.unary.f32(i32 7, float %1490)  ; Saturate(value)
  %1492 = fsub fast float %1491, %1486
  %1493 = fmul fast float %1492, %1473
  %1494 = fadd fast float %1493, %1486
  %1495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1496 = extractvalue %dx.types.CBufRet.f32 %1495, 0
  %1497 = fsub fast float %1494, %1496
  %1498 = fmul fast float %1497, 1.000000e+01
  %1499 = call float @dx.op.unary.f32(i32 7, float %1498)  ; Saturate(value)
  %1500 = fsub fast float %758, %804
  %1501 = fmul fast float %1499, %1500
  %1502 = fadd fast float %1501, %804
  %1503 = fmul fast float %1502, %1494
  br label %1516

; <label>:1504                                    ; preds = %1472
  %1505 = fadd fast float %1350, %1347
  %1506 = fmul fast float %1454, %1505
  %1507 = fadd fast float %1506, %1457
  %1508 = fmul fast float %1481, %1476
  %1509 = fmul fast float %1481, %1479
  %1510 = fmul fast float %1481, %1507
  %1511 = call float @dx.op.binary.f32(i32 35, float %1509, float %1510)  ; FMax(a,b)
  %1512 = call float @dx.op.binary.f32(i32 35, float %1508, float %1511)  ; FMax(a,b)
  %1513 = call float @dx.op.binary.f32(i32 35, float %1512, float %804)  ; FMax(a,b)
  %1514 = fcmp fast ugt float %1513, 0x3F10000000000000
  br i1 %1514, label %1516, label %1515

; <label>:1515                                    ; preds = %1504
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1516

; <label>:1516                                    ; preds = %1515, %1504, %1482
  %1517 = phi float [ %1484, %1482 ], [ %1508, %1515 ], [ %1508, %1504 ]
  %1518 = phi float [ %1503, %1482 ], [ %1509, %1515 ], [ %1509, %1504 ]
  %1519 = phi float [ %1502, %1482 ], [ %1510, %1515 ], [ %1510, %1504 ]
  %1520 = phi float [ %1502, %1482 ], [ %804, %1515 ], [ %804, %1504 ]
  %1521 = fadd fast float %565, 0x3FE3C6EF40000000
  %1522 = call float @dx.op.unary.f32(i32 22, float %1521)  ; Frc(value)
  %1523 = call float @dx.op.unary.f32(i32 23, float %1517)  ; Log(value)
  %1524 = fadd fast float %1523, -7.000000e+00
  %1525 = call float @dx.op.unary.f32(i32 21, float %1524)  ; Exp(value)
  %1526 = fmul fast float %1522, 2.000000e+00
  %1527 = fadd fast float %1526, -1.000000e+00
  %1528 = fmul fast float %1525, %1527
  %1529 = fcmp fast ogt float %1517, 0.000000e+00
  %1530 = select i1 %1529, float %1528, float 0.000000e+00
  %1531 = fadd fast float %1530, %1517
  %1532 = fadd fast float %565, 0x3FF3C6EF40000000
  %1533 = call float @dx.op.unary.f32(i32 22, float %1532)  ; Frc(value)
  %1534 = call float @dx.op.unary.f32(i32 23, float %1518)  ; Log(value)
  %1535 = fadd fast float %1534, -7.000000e+00
  %1536 = call float @dx.op.unary.f32(i32 21, float %1535)  ; Exp(value)
  %1537 = fmul fast float %1533, 2.000000e+00
  %1538 = fadd fast float %1537, -1.000000e+00
  %1539 = fmul fast float %1536, %1538
  %1540 = fcmp fast ogt float %1518, 0.000000e+00
  %1541 = select i1 %1540, float %1539, float 0.000000e+00
  %1542 = fadd fast float %1541, %1518
  %1543 = fadd fast float %565, 0x3FFDAA66E0000000
  %1544 = call float @dx.op.unary.f32(i32 22, float %1543)  ; Frc(value)
  %1545 = call float @dx.op.unary.f32(i32 23, float %1519)  ; Log(value)
  %1546 = fadd fast float %1545, -6.000000e+00
  %1547 = call float @dx.op.unary.f32(i32 21, float %1546)  ; Exp(value)
  %1548 = fmul fast float %1544, 2.000000e+00
  %1549 = fadd fast float %1548, -1.000000e+00
  %1550 = fmul fast float %1547, %1549
  %1551 = fcmp fast ogt float %1519, 0.000000e+00
  %1552 = select i1 %1551, float %1550, float 0.000000e+00
  %1553 = fadd fast float %1552, %1519
  %1554 = select i1 %111, float %1518, float %1542
  %1555 = select i1 %111, float %1519, float %1553
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1556 = call float @dx.op.binary.f32(i32 36, float %1531, float 3.225500e+04)  ; FMin(a,b)
  %1557 = call float @dx.op.binary.f32(i32 36, float %1554, float 3.225500e+04)  ; FMin(a,b)
  %1558 = call float @dx.op.binary.f32(i32 36, float %1555, float 3.225500e+04)  ; FMin(a,b)
  %1559 = call float @dx.op.binary.f32(i32 36, float %1520, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1556)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1557)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1558)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1559)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1520)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1520)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1520)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1520)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!35 = !{[33 x i32] [i32 31, i32 8, i32 255, i32 255, i32 255, i32 255, i32 1, i32 3, i32 4, i32 255, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255, i32 255, i32 7, i32 255, i32 255, i32 0, i32 0, i32 3, i32 3, i32 7, i32 7, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 255]}
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

