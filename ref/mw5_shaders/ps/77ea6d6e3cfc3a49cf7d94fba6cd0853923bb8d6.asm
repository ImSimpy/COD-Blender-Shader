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
; shader hash: 4b80e5eaf8b6e967ea5260b422df2ba8
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
  %183 = icmp eq i32 %180, 0
  br i1 %183, label %203, label %184, !dx.controlflow.hints !60

; <label>:184                                     ; preds = %167
  %185 = add i32 %128, 64
  %186 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %185, i32 undef)  ; BufferLoad(srv,index,wot)
  %187 = extractvalue %dx.types.ResRet.f32 %186, 0
  %188 = fadd fast float %187, 1.000000e+00
  %189 = fmul fast float %188, %44
  %190 = fsub fast float %189, %187
  %191 = fsub fast float %188, %190
  %192 = call float @dx.op.unary.f32(i32 7, float %191)  ; Saturate(value)
  %193 = fsub fast float 1.000000e+00, %189
  %194 = call float @dx.op.unary.f32(i32 7, float %193)  ; Saturate(value)
  %195 = fsub fast float %192, %194
  %196 = fsub fast float %182, %194
  %197 = fdiv fast float %196, %195
  %198 = call float @dx.op.unary.f32(i32 7, float %197)  ; Saturate(value)
  %199 = fmul fast float %198, 2.000000e+00
  %200 = fsub fast float 3.000000e+00, %199
  %201 = fmul fast float %198, %198
  %202 = fmul fast float %201, %200
  br label %203

; <label>:203                                     ; preds = %184, %167
  %204 = phi float [ %202, %184 ], [ %182, %167 ]
  %205 = fcmp fast ogt float %204, 0.000000e+00
  br i1 %205, label %207, label %206

; <label>:206                                     ; preds = %203
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %207

; <label>:207                                     ; preds = %206, %203
  %208 = call float @dx.op.unary.f32(i32 7, float %204)  ; Saturate(value)
  %209 = fmul fast float %53, 5.000000e-01
  %210 = fmul fast float %54, 5.000000e-01
  %211 = fptosi float %209 to i32
  %212 = fptosi float %210 to i32
  %213 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %211, i32 %212, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %214 = extractvalue %dx.types.ResRet.i32 %213, 0
  %215 = lshr i32 %214, 18
  %216 = uitofp i32 %215 to float
  %217 = fmul fast float %216, 0x3F4C00EBA0000000
  %218 = call float @dx.op.unary.f32(i32 21, float %217)  ; Exp(value)
  %219 = fadd fast float %218, -1.000000e+00
  %220 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %10, i32 0)  ; GetDimensions(handle,mipLevel)
  %221 = extractvalue %dx.types.Dimensions %220, 0
  %222 = sitofp i32 %221 to float
  %223 = extractvalue %dx.types.Dimensions %220, 1
  %224 = sitofp i32 %223 to float
  %225 = fcmp fast oge float %209, %222
  %226 = fcmp fast oge float %210, %224
  %227 = or i1 %225, %226
  %228 = select i1 %227, float 0x4197782600000000, float %219
  %229 = fsub fast float %228, %48
  %230 = fcmp fast ogt float %229, 0.000000e+00
  %231 = and i32 %127, -2
  %232 = icmp eq i32 %231, 2
  %233 = and i1 %232, %230
  %234 = xor i1 %230, true
  %235 = icmp eq i32 %127, 1
  %236 = and i1 %235, %234
  %237 = or i1 %233, %236
  %238 = and i32 %131, 262144
  %239 = icmp ne i32 %238, 0
  %240 = and i1 %239, %237
  %241 = xor i1 %237, true
  %242 = and i32 %131, 131072
  %243 = icmp ne i32 %242, 0
  %244 = and i1 %243, %241
  %245 = or i1 %240, %244
  br i1 %245, label %246, label %247

; <label>:246                                     ; preds = %207
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %247

; <label>:247                                     ; preds = %246, %207
  %248 = and i32 %131, 32
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %526, label %250, !dx.controlflow.hints !61

; <label>:250                                     ; preds = %247
  %251 = add i32 %128, 80
  %252 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %251, i32 undef)  ; BufferLoad(srv,index,wot)
  %253 = extractvalue %dx.types.ResRet.f32 %252, 0
  %254 = extractvalue %dx.types.ResRet.f32 %252, 1
  %255 = extractvalue %dx.types.ResRet.f32 %252, 2
  %256 = extractvalue %dx.types.ResRet.f32 %252, 3
  %257 = add i32 %128, 96
  %258 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %257, i32 undef)  ; BufferLoad(srv,index,wot)
  %259 = extractvalue %dx.types.ResRet.f32 %258, 0
  %260 = extractvalue %dx.types.ResRet.f32 %258, 1
  %261 = extractvalue %dx.types.ResRet.f32 %258, 2
  %262 = add i32 %128, 112
  %263 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %262, i32 undef)  ; BufferLoad(srv,index,wot)
  %264 = extractvalue %dx.types.ResRet.f32 %263, 0
  %265 = extractvalue %dx.types.ResRet.f32 %263, 1
  %266 = extractvalue %dx.types.ResRet.f32 %263, 2
  %267 = extractvalue %dx.types.ResRet.f32 %263, 3
  %268 = add i32 %128, 128
  %269 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %268, i32 undef)  ; BufferLoad(srv,index,wot)
  %270 = extractvalue %dx.types.ResRet.f32 %269, 0
  %271 = extractvalue %dx.types.ResRet.f32 %269, 1
  %272 = extractvalue %dx.types.ResRet.f32 %269, 2
  %273 = extractvalue %dx.types.ResRet.f32 %269, 3
  %274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %129, i32 undef)  ; BufferLoad(srv,index,wot)
  %275 = extractvalue %dx.types.ResRet.i32 %274, 0
  %276 = and i32 %275, 4096
  %277 = icmp ne i32 %276, 0
  %278 = fcmp fast une float %261, 0.000000e+00
  %279 = and i32 %275, 64
  %280 = icmp ne i32 %279, 0
  %281 = and i32 %275, 128
  %282 = icmp eq i32 %281, 0
  %283 = and i32 %275, 2048
  %284 = icmp eq i32 %283, 0
  %285 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %13, i32 0)  ; GetDimensions(handle,mipLevel)
  %286 = extractvalue %dx.types.Dimensions %285, 0
  %287 = sitofp i32 %286 to float
  %288 = extractvalue %dx.types.Dimensions %285, 1
  %289 = sitofp i32 %288 to float
  %290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %291 = extractvalue %dx.types.CBufRet.f32 %290, 2
  %292 = extractvalue %dx.types.CBufRet.f32 %290, 3
  %293 = fmul fast float %291, %53
  %294 = fmul fast float %292, %54
  %295 = fmul fast float %293, %287
  %296 = fmul fast float %294, %289
  %297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %298 = extractvalue %dx.types.CBufRet.f32 %297, 1
  %299 = fsub fast float -0.000000e+00, %298
  %300 = fptoui float %299 to i32
  %301 = fptoui float %295 to i32
  %302 = fptoui float %296 to i32
  %303 = and i32 %300, 31
  %304 = lshr i32 %301, %303
  %305 = lshr i32 %302, %303
  %306 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %13, i32 %300, i32 %304, i32 %305, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %307 = extractvalue %dx.types.ResRet.f32 %306, 0
  %308 = fcmp fast ogt float %307, -1.000000e+00
  %309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %310 = extractvalue %dx.types.CBufRet.f32 %309, 1
  %311 = select i1 %308, float %310, float 1.000000e+00
  %312 = fadd fast float %307, 1.000000e+00
  %313 = fmul fast float %311, %312
  %314 = call float @dx.op.unary.f32(i32 6, float %313)  ; FAbs(value)
  %315 = extractvalue %dx.types.CBufRet.f32 %309, 3
  %316 = fcmp fast oge float %314, %315
  %317 = select i1 %316, float 0x4197782600000000, float %314
  br i1 %284, label %407, label %318, !dx.controlflow.hints !62

; <label>:318                                     ; preds = %250
  %319 = fmul fast float %58, %291
  %320 = fmul fast float %60, %292
  %321 = fsub fast float 1.000000e+00, %319
  %322 = fsub fast float 1.000000e+00, %320
  %323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %324 = extractvalue %dx.types.CBufRet.f32 %323, 0
  %325 = extractvalue %dx.types.CBufRet.f32 %323, 1
  %326 = extractvalue %dx.types.CBufRet.f32 %323, 2
  %327 = fmul fast float %321, %324
  %328 = fmul fast float %321, %325
  %329 = fmul fast float %321, %326
  %330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %331 = extractvalue %dx.types.CBufRet.f32 %330, 0
  %332 = extractvalue %dx.types.CBufRet.f32 %330, 1
  %333 = extractvalue %dx.types.CBufRet.f32 %330, 2
  %334 = fmul fast float %322, %331
  %335 = fmul fast float %322, %332
  %336 = fmul fast float %322, %333
  %337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %338 = extractvalue %dx.types.CBufRet.f32 %337, 0
  %339 = extractvalue %dx.types.CBufRet.f32 %337, 1
  %340 = extractvalue %dx.types.CBufRet.f32 %337, 2
  %341 = fadd fast float %334, %338
  %342 = fadd fast float %341, %327
  %343 = fadd fast float %335, %339
  %344 = fadd fast float %343, %328
  %345 = fadd fast float %336, %340
  %346 = fadd fast float %345, %329
  %347 = fmul fast float %342, %317
  %348 = fmul fast float %344, %317
  %349 = fmul fast float %346, %317
  %350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %351 = extractvalue %dx.types.CBufRet.f32 %350, 0
  %352 = extractvalue %dx.types.CBufRet.f32 %350, 1
  %353 = extractvalue %dx.types.CBufRet.f32 %350, 2
  %354 = fsub fast float %351, %25
  %355 = fadd fast float %354, %347
  %356 = fsub fast float %352, %26
  %357 = fadd fast float %356, %348
  %358 = fsub fast float %353, %27
  %359 = fadd fast float %358, %349
  %360 = fmul fast float %28, %28
  %361 = call float @dx.op.dot3.f32(i32 55, float %355, float %357, float %359, float %355, float %357, float %359)  ; Dot3(ax,ay,az,bx,by,bz)
  %362 = fsub fast float %360, %361
  %363 = fmul fast float %260, %360
  %364 = fmul fast float %259, %360
  %365 = fcmp fast olt float %362, %363
  %366 = fcmp fast ogt float %362, %364
  %367 = or i1 %365, %366
  %368 = select i1 %367, float 0.000000e+00, float %362
  %369 = fsub fast float %259, %260
  %370 = fmul fast float %369, %360
  %371 = fsub fast float %368, %363
  %372 = fdiv fast float %371, %370
  %373 = call float @dx.op.unary.f32(i32 7, float %372)  ; Saturate(value)
  %374 = fmul fast float %373, 2.000000e+00
  %375 = fsub fast float 3.000000e+00, %374
  %376 = fmul fast float %373, %373
  %377 = fmul fast float %376, %375
  %378 = fmul fast float %264, %41
  %379 = fmul fast float %265, %42
  %380 = fmul fast float %266, %43
  %381 = fsub fast float %378, %270
  %382 = fsub fast float %379, %271
  %383 = fsub fast float %380, %272
  %384 = fsub fast float %267, %273
  %385 = fmul fast float %377, %381
  %386 = fmul fast float %377, %382
  %387 = fmul fast float %377, %383
  %388 = fmul fast float %377, %384
  %389 = fadd fast float %385, %270
  %390 = fadd fast float %386, %271
  %391 = fadd fast float %387, %272
  %392 = fadd fast float %388, %273
  %393 = fmul fast float %264, %29
  %394 = fmul fast float %265, %30
  %395 = fmul fast float %266, %31
  %396 = fsub fast float %393, %270
  %397 = fsub fast float %394, %271
  %398 = fsub fast float %395, %272
  %399 = fmul fast float %377, %396
  %400 = fmul fast float %377, %397
  %401 = fmul fast float %377, %398
  %402 = fadd fast float %399, %270
  %403 = fadd fast float %400, %271
  %404 = fadd fast float %401, %272
  %405 = fmul fast float %253, %253
  %406 = fmul fast float %405, %368
  br label %514

; <label>:407                                     ; preds = %250
  %408 = and i32 %275, 256
  %409 = icmp eq i32 %408, 0
  %410 = fsub fast float %317, %48
  br i1 %409, label %471, label %411

; <label>:411                                     ; preds = %407
  %412 = fadd fast float %259, %48
  %413 = fcmp fast olt float %317, %48
  %414 = fcmp fast ogt float %317, %412
  %415 = or i1 %413, %414
  %416 = select i1 %415, float 0.000000e+00, float %410
  %417 = call float @dx.op.unary.f32(i32 83, float %317)  ; DerivCoarseX(value)
  %418 = call float @dx.op.unary.f32(i32 84, float %317)  ; DerivCoarseY(value)
  %419 = fmul fast float %417, %417
  %420 = fmul fast float %418, %418
  %421 = fadd fast float %420, %419
  %422 = call float @dx.op.unary.f32(i32 24, float %421)  ; Sqrt(value)
  %423 = extractvalue %dx.types.CBufRet.f32 %297, 2
  %424 = fmul fast float %423, %422
  %425 = call float @dx.op.unary.f32(i32 7, float %424)  ; Saturate(value)
  %426 = fmul fast float %425, %260
  %427 = fdiv fast float %410, %426
  %428 = call float @dx.op.unary.f32(i32 7, float %427)  ; Saturate(value)
  %429 = fmul fast float %428, 2.000000e+00
  %430 = fsub fast float 3.000000e+00, %429
  %431 = fmul fast float %428, %428
  %432 = fmul fast float %431, %430
  %433 = fsub fast float %317, %412
  %434 = fadd fast float %433, %426
  %435 = fdiv fast float %434, %426
  %436 = call float @dx.op.unary.f32(i32 7, float %435)  ; Saturate(value)
  %437 = fmul fast float %436, 2.000000e+00
  %438 = fsub fast float 3.000000e+00, %437
  %439 = fmul fast float %436, %436
  %440 = fmul fast float %439, %438
  %441 = fsub fast float %432, %440
  %442 = fmul fast float %264, %41
  %443 = fmul fast float %265, %42
  %444 = fmul fast float %266, %43
  %445 = fsub fast float %442, %270
  %446 = fsub fast float %443, %271
  %447 = fsub fast float %444, %272
  %448 = fsub fast float %267, %273
  %449 = fmul fast float %441, %445
  %450 = fmul fast float %441, %446
  %451 = fmul fast float %441, %447
  %452 = fmul fast float %441, %448
  %453 = fadd fast float %449, %270
  %454 = fadd fast float %450, %271
  %455 = fadd fast float %451, %272
  %456 = fadd fast float %452, %273
  %457 = fmul fast float %264, %29
  %458 = fmul fast float %265, %30
  %459 = fmul fast float %266, %31
  %460 = fsub fast float %457, %270
  %461 = fsub fast float %458, %271
  %462 = fsub fast float %459, %272
  %463 = fmul fast float %441, %460
  %464 = fmul fast float %441, %461
  %465 = fmul fast float %441, %462
  %466 = fadd fast float %463, %270
  %467 = fadd fast float %464, %271
  %468 = fadd fast float %465, %272
  %469 = fmul fast float %416, %253
  %470 = call float @dx.op.unary.f32(i32 6, float %469)  ; FAbs(value)
  br label %514

; <label>:471                                     ; preds = %407
  br i1 %278, label %472, label %485

; <label>:472                                     ; preds = %471
  %473 = fdiv fast float 5.000000e+01, %28
  %474 = select i1 %280, float %473, float 1.000000e+00
  %475 = fmul fast float %474, %253
  %476 = fmul fast float %178, 2.000000e+00
  %477 = fmul fast float %179, 2.000000e+00
  %478 = fadd fast float %476, -1.000000e+00
  %479 = fadd fast float %477, -1.000000e+00
  %480 = call float @dx.op.dot2.f32(i32 54, float %478, float %479, float %478, float %479)  ; Dot2(ax,ay,bx,by)
  %481 = fmul fast float %261, %28
  %482 = fmul fast float %481, %480
  %483 = fsub fast float %410, %482
  %484 = fmul fast float %475, %483
  br label %514

; <label>:485                                     ; preds = %471
  br i1 %282, label %506, label %486

; <label>:486                                     ; preds = %485
  %487 = fmul fast float %28, 0x3F947AE140000000
  %488 = select i1 %280, float %487, float 1.000000e+00
  %489 = fdiv fast float 1.000000e+00, %488
  %490 = fmul fast float %488, %254
  %491 = fmul fast float %488, %255
  %492 = fmul fast float %489, %256
  %493 = call float @dx.op.unary.f32(i32 6, float %410)  ; FAbs(value)
  %494 = fcmp fast olt float %493, %490
  br i1 %494, label %495, label %499, !dx.controlflow.hints !63

; <label>:495                                     ; preds = %486
  %496 = fmul fast float %489, %253
  %497 = fmul fast float %496, %493
  %498 = call float @dx.op.unary.f32(i32 6, float %497)  ; FAbs(value)
  br label %514

; <label>:499                                     ; preds = %486
  %500 = fcmp fast ogt float %493, %491
  br i1 %500, label %501, label %514

; <label>:501                                     ; preds = %499
  %502 = fsub fast float %493, %491
  %503 = fmul fast float %492, %502
  %504 = call float @dx.op.unary.f32(i32 6, float %503)  ; FAbs(value)
  %505 = fsub fast float 1.000000e+00, %504
  br label %514

; <label>:506                                     ; preds = %485
  %507 = fdiv fast float 5.000000e+01, %28
  %508 = select i1 %280, float %507, float 1.000000e+00
  %509 = fmul fast float %508, %253
  %510 = call float @dx.op.unary.f32(i32 6, float %229)  ; FAbs(value)
  %511 = select i1 %277, float %510, float 0x47EFFFFFE0000000
  %512 = call float @dx.op.binary.f32(i32 36, float %410, float %511)  ; FMin(a,b)
  %513 = fmul fast float %509, %512
  br label %514

; <label>:514                                     ; preds = %506, %501, %499, %495, %472, %411, %318
  %515 = phi float [ %406, %318 ], [ %470, %411 ], [ %484, %472 ], [ %513, %506 ], [ %498, %495 ], [ %505, %501 ], [ %493, %499 ]
  %516 = phi float [ %402, %318 ], [ %466, %411 ], [ %29, %472 ], [ %29, %506 ], [ %29, %495 ], [ %29, %501 ], [ %29, %499 ]
  %517 = phi float [ %403, %318 ], [ %467, %411 ], [ %30, %472 ], [ %30, %506 ], [ %30, %495 ], [ %30, %501 ], [ %30, %499 ]
  %518 = phi float [ %404, %318 ], [ %468, %411 ], [ %31, %472 ], [ %31, %506 ], [ %31, %495 ], [ %31, %501 ], [ %31, %499 ]
  %519 = phi float [ %389, %318 ], [ %453, %411 ], [ %41, %472 ], [ %41, %506 ], [ %41, %495 ], [ %41, %501 ], [ %41, %499 ]
  %520 = phi float [ %390, %318 ], [ %454, %411 ], [ %42, %472 ], [ %42, %506 ], [ %42, %495 ], [ %42, %501 ], [ %42, %499 ]
  %521 = phi float [ %391, %318 ], [ %455, %411 ], [ %43, %472 ], [ %43, %506 ], [ %43, %495 ], [ %43, %501 ], [ %43, %499 ]
  %522 = phi float [ %392, %318 ], [ %456, %411 ], [ 1.000000e+00, %472 ], [ 1.000000e+00, %506 ], [ 1.000000e+00, %495 ], [ 1.000000e+00, %501 ], [ 1.000000e+00, %499 ]
  %523 = call float @dx.op.unary.f32(i32 7, float %515)  ; Saturate(value)
  %524 = fmul fast float %522, %208
  %525 = fmul fast float %524, %523
  br label %526

; <label>:526                                     ; preds = %514, %247
  %527 = phi float [ %519, %514 ], [ %41, %247 ]
  %528 = phi float [ %520, %514 ], [ %42, %247 ]
  %529 = phi float [ %521, %514 ], [ %43, %247 ]
  %530 = phi float [ %525, %514 ], [ %208, %247 ]
  %531 = phi float [ %516, %514 ], [ %29, %247 ]
  %532 = phi float [ %517, %514 ], [ %30, %247 ]
  %533 = phi float [ %518, %514 ], [ %31, %247 ]
  %534 = fmul fast float %531, %32
  %535 = fmul fast float %532, %32
  %536 = fmul fast float %533, %32
  %537 = fmul fast float %531, %38
  %538 = fmul fast float %532, %38
  %539 = fmul fast float %533, %38
  %540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %541 = extractvalue %dx.types.CBufRet.f32 %540, 2
  %542 = fptosi float %48 to i32
  %543 = sitofp i32 %542 to float
  %544 = fadd fast float %541, %543
  %545 = fmul fast float %544, 0x3FE3C6EF40000000
  %546 = frem fast float %53, 2.560000e+02
  %547 = frem fast float %54, 2.560000e+02
  %548 = fptoui float %546 to i32
  %549 = fptoui float %547 to i32
  %550 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %17, i32 0, i32 %548, i32 %549, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %551 = extractvalue %dx.types.ResRet.f32 %550, 0
  %552 = fadd fast float %551, %545
  %553 = call float @dx.op.unary.f32(i32 22, float %552)  ; Frc(value)
  %554 = and i32 %131, 1
  %555 = icmp eq i32 %554, 0
  br i1 %555, label %615, label %556, !dx.controlflow.hints !64

; <label>:556                                     ; preds = %526
  %557 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %128, i32 undef)  ; BufferLoad(srv,index,wot)
  %558 = extractvalue %dx.types.ResRet.f32 %557, 2
  %559 = extractvalue %dx.types.ResRet.f32 %557, 3
  %560 = add i32 %128, 16
  %561 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %560, i32 undef)  ; BufferLoad(srv,index,wot)
  %562 = extractvalue %dx.types.ResRet.f32 %561, 0
  %563 = extractvalue %dx.types.ResRet.f32 %561, 1
  %564 = extractvalue %dx.types.ResRet.f32 %561, 2
  %565 = add i32 %128, 32
  %566 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %565, i32 undef)  ; BufferLoad(srv,index,wot)
  %567 = extractvalue %dx.types.ResRet.f32 %566, 0
  %568 = extractvalue %dx.types.ResRet.f32 %566, 1
  %569 = extractvalue %dx.types.ResRet.f32 %566, 2
  %570 = and i32 %131, 2
  %571 = icmp eq i32 %570, 0
  %572 = call float @dx.op.dot3.f32(i32 55, float %35, float %36, float %37, float %35, float %36, float %37)  ; Dot3(ax,ay,az,bx,by,bz)
  %573 = call float @dx.op.unary.f32(i32 25, float %572)  ; Rsqrt(value)
  %574 = fmul fast float %573, %35
  %575 = fmul fast float %573, %36
  %576 = fmul fast float %573, %37
  %577 = call float @dx.op.dot3.f32(i32 55, float %88, float %89, float %90, float %88, float %89, float %90)  ; Dot3(ax,ay,az,bx,by,bz)
  %578 = call float @dx.op.unary.f32(i32 25, float %577)  ; Rsqrt(value)
  %579 = fmul fast float %578, %88
  %580 = fmul fast float %578, %89
  %581 = fmul fast float %578, %90
  %582 = call float @dx.op.dot3.f32(i32 55, float %579, float %580, float %581, float %574, float %575, float %576)  ; Dot3(ax,ay,az,bx,by,bz)
  %583 = fmul fast float %582, %582
  %584 = fmul fast float %583, %558
  %585 = fadd fast float %584, %559
  %586 = call float @dx.op.unary.f32(i32 7, float %585)  ; Saturate(value)
  br i1 %571, label %587, label %597, !dx.controlflow.hints !65

; <label>:587                                     ; preds = %556
  %588 = extractvalue %dx.types.ResRet.f32 %557, 1
  %589 = extractvalue %dx.types.ResRet.f32 %557, 0
  %590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %591 = extractvalue %dx.types.CBufRet.f32 %590, 3
  %592 = fmul fast float %591, %577
  %593 = fsub fast float %589, %592
  %594 = fmul fast float %593, %588
  %595 = call float @dx.op.unary.f32(i32 7, float %594)  ; Saturate(value)
  %596 = fmul fast float %595, %586
  br label %597

; <label>:597                                     ; preds = %587, %556
  %598 = phi float [ %596, %587 ], [ %586, %556 ]
  %599 = fsub fast float %562, %567
  %600 = fsub fast float %563, %568
  %601 = fsub fast float %564, %569
  %602 = fmul fast float %598, %599
  %603 = fmul fast float %598, %600
  %604 = fmul fast float %598, %601
  %605 = fadd fast float %602, %567
  %606 = fadd fast float %603, %568
  %607 = fadd fast float %604, %569
  %608 = fmul fast float %605, %527
  %609 = fmul fast float %606, %528
  %610 = fmul fast float %607, %529
  %611 = fmul fast float %605, %534
  %612 = fmul fast float %606, %535
  %613 = fmul fast float %607, %536
  %614 = fmul fast float %598, %530
  br label %615

; <label>:615                                     ; preds = %597, %526
  %616 = phi float [ %608, %597 ], [ %527, %526 ]
  %617 = phi float [ %609, %597 ], [ %528, %526 ]
  %618 = phi float [ %610, %597 ], [ %529, %526 ]
  %619 = phi float [ %614, %597 ], [ %530, %526 ]
  %620 = phi float [ %611, %597 ], [ %534, %526 ]
  %621 = phi float [ %612, %597 ], [ %535, %526 ]
  %622 = phi float [ %613, %597 ], [ %536, %526 ]
  %623 = add i32 %24, 104
  %624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %623, i32 undef)  ; BufferLoad(srv,index,wot)
  %625 = extractvalue %dx.types.ResRet.i32 %624, 0
  %626 = add i32 %625, 0
  %627 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %626, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %628 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %627, %dx.types.Handle %49, float %168, float %169, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %629 = extractvalue %dx.types.ResRet.f32 %628, 0
  %630 = extractvalue %dx.types.ResRet.f32 %628, 1
  %631 = extractvalue %dx.types.ResRet.f32 %628, 2
  %632 = add i32 %24, 56
  %633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %632, i32 undef)  ; BufferLoad(srv,index,wot)
  %634 = extractvalue %dx.types.ResRet.i32 %633, 0
  %635 = and i32 %634, 255
  %636 = uitofp i32 %635 to float
  %637 = fmul fast float %636, 0x3F70101020000000
  %638 = lshr i32 %634, 8
  %639 = and i32 %638, 255
  %640 = uitofp i32 %639 to float
  %641 = fmul fast float %640, 0x3F70101020000000
  %642 = lshr i32 %634, 16
  %643 = and i32 %642, 255
  %644 = uitofp i32 %643 to float
  %645 = fmul fast float %644, 0x3F70101020000000
  %646 = add i32 %24, 108
  %647 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %646, i32 undef)  ; BufferLoad(srv,index,wot)
  %648 = extractvalue %dx.types.ResRet.i32 %647, 0
  %649 = add i32 %648, 0
  %650 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %649, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %651 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %650, %dx.types.Handle %49, float %168, float %169, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %652 = extractvalue %dx.types.ResRet.f32 %651, 0
  %653 = extractvalue %dx.types.ResRet.f32 %651, 1
  %654 = extractvalue %dx.types.ResRet.f32 %651, 2
  %655 = add i32 %24, 44
  %656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %655, i32 undef)  ; BufferLoad(srv,index,wot)
  %657 = extractvalue %dx.types.ResRet.i32 %656, 0
  %658 = shl i32 %657, 4
  %659 = and i32 %658, 32752
  %660 = call float @dx.op.legacyF16ToF32(i32 131, i32 %659)  ; LegacyF16ToF32(value)
  %661 = lshr i32 %657, 7
  %662 = and i32 %661, 32752
  %663 = call float @dx.op.legacyF16ToF32(i32 131, i32 %662)  ; LegacyF16ToF32(value)
  %664 = lshr i32 %657, 22
  %665 = shl nuw nsw i32 %664, 5
  %666 = call float @dx.op.legacyF16ToF32(i32 131, i32 %665)  ; LegacyF16ToF32(value)
  %667 = fmul fast float %660, %652
  %668 = fmul fast float %663, %653
  %669 = fmul fast float %666, %654
  %670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %671 = extractvalue %dx.types.CBufRet.f32 %670, 0
  %672 = fmul fast float %667, %671
  %673 = fmul fast float %668, %671
  %674 = fmul fast float %669, %671
  %675 = add i32 %24, 48
  %676 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %675, i32 undef)  ; BufferLoad(srv,index,wot)
  %677 = extractvalue %dx.types.ResRet.i32 %676, 0
  %678 = lshr i32 %677, 22
  %679 = shl nuw nsw i32 %678, 5
  %680 = call float @dx.op.legacyF16ToF32(i32 131, i32 %679)  ; LegacyF16ToF32(value)
  %681 = fmul fast float %680, %672
  %682 = select i1 %111, float %681, float %672
  %683 = add i32 %24, 40
  %684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %683, i32 undef)  ; BufferLoad(srv,index,wot)
  %685 = extractvalue %dx.types.ResRet.i32 %684, 0
  %686 = and i32 %685, 255
  %687 = uitofp i32 %686 to float
  %688 = fmul fast float %687, 0x3F70101020000000
  %689 = fmul fast float %688, %688
  %690 = add i32 %24, 112
  %691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %690, i32 undef)  ; BufferLoad(srv,index,wot)
  %692 = extractvalue %dx.types.ResRet.i32 %691, 0
  %693 = add i32 %692, 0
  %694 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %693, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %695 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %694, %dx.types.Handle %50, float %168, float %169, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %696 = extractvalue %dx.types.ResRet.f32 %695, 0
  %697 = fmul fast float %689, %696
  %698 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %19, float %33, float %34, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %699 = extractvalue %dx.types.ResRet.f32 %698, 0
  %700 = extractvalue %dx.types.ResRet.f32 %698, 1
  %701 = extractvalue %dx.types.ResRet.f32 %698, 2
  %702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %703 = extractvalue %dx.types.CBufRet.f32 %702, 1
  %704 = fmul fast float %703, %699
  %705 = fmul fast float %703, %700
  %706 = fmul fast float %703, %701
  %707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %708 = extractvalue %dx.types.CBufRet.f32 %707, 0
  %709 = fmul fast float %629, %616
  %710 = fmul fast float %637, %637
  %711 = fmul fast float %710, %709
  %712 = fmul fast float %711, %708
  %713 = fmul fast float %630, %617
  %714 = fmul fast float %641, %641
  %715 = fmul fast float %714, %713
  %716 = fmul fast float %715, %708
  %717 = fmul fast float %631, %618
  %718 = fmul fast float %645, %645
  %719 = fmul fast float %718, %717
  %720 = fmul fast float %719, %708
  %721 = fmul fast float %682, %620
  %722 = fmul fast float %673, %621
  %723 = fmul fast float %674, %622
  %724 = call float @dx.op.dot3.f32(i32 55, float %721, float %722, float %723, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %725 = select i1 %111, float 0.000000e+00, float %721
  %726 = select i1 %111, float %724, float %722
  %727 = select i1 %111, float 0.000000e+00, float %723
  %728 = fmul fast float %537, %682
  %729 = fmul fast float %538, %673
  %730 = fmul fast float %539, %674
  %731 = call float @dx.op.dot3.f32(i32 55, float %712, float %716, float %720, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %732 = add i32 %24, 32
  %733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %732, i32 undef)  ; BufferLoad(srv,index,wot)
  %734 = extractvalue %dx.types.ResRet.i32 %733, 0
  %735 = and i32 %734, 255
  %736 = uitofp i32 %735 to float
  %737 = lshr i32 %734, 8
  %738 = and i32 %737, 255
  %739 = uitofp i32 %738 to float
  %740 = fmul fast float %739, %731
  %741 = fadd fast float %740, %736
  %742 = fmul fast float %741, 0x3F70101020000000
  %743 = call float @dx.op.unary.f32(i32 7, float %742)  ; Saturate(value)
  %744 = and i32 %131, 8192
  %745 = icmp eq i32 %744, 0
  %746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %747 = extractvalue %dx.types.CBufRet.f32 %746, 0
  br i1 %745, label %754, label %748, !dx.controlflow.hints !66

; <label>:748                                     ; preds = %615
  %749 = add i32 %128, 176
  %750 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %749, i32 undef)  ; BufferLoad(srv,index,wot)
  %751 = extractvalue %dx.types.ResRet.f32 %750, 0
  %752 = fcmp fast oge float %751, 0.000000e+00
  %753 = select i1 %752, float %751, float %747
  br label %754

; <label>:754                                     ; preds = %748, %615
  %755 = phi float [ %753, %748 ], [ %747, %615 ]
  %756 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %211, i32 %212, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %757 = extractvalue %dx.types.ResRet.i32 %756, 0
  %758 = lshr i32 %757, 18
  %759 = uitofp i32 %758 to float
  %760 = fmul fast float %759, 0x3F4C00EBA0000000
  %761 = call float @dx.op.unary.f32(i32 21, float %760)  ; Exp(value)
  %762 = fadd fast float %761, -1.000000e+00
  %763 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %10, i32 0)  ; GetDimensions(handle,mipLevel)
  %764 = extractvalue %dx.types.Dimensions %763, 0
  %765 = sitofp i32 %764 to float
  %766 = extractvalue %dx.types.Dimensions %763, 1
  %767 = sitofp i32 %766 to float
  %768 = fcmp fast oge float %209, %765
  %769 = fcmp fast oge float %210, %767
  %770 = or i1 %768, %769
  %771 = select i1 %770, float 0x4197782600000000, float %762
  %772 = icmp eq i32 %127, 3
  %773 = fcmp fast ogt float %48, %771
  %774 = and i1 %235, %773
  %775 = or i1 %772, %774
  %776 = icmp eq i32 %127, 2
  %777 = fcmp fast ole float %48, %771
  %778 = and i1 %776, %777
  %779 = or i1 %778, %775
  %780 = fmul fast float %728, %704
  %781 = fmul fast float %729, %705
  %782 = fmul fast float %730, %706
  %783 = fadd fast float %780, %725
  %784 = fadd fast float %726, %781
  %785 = fadd fast float %782, %727
  %786 = fmul fast float %783, %619
  %787 = fmul fast float %784, %619
  %788 = fmul fast float %785, %619
  %789 = fmul fast float %704, %619
  %790 = fmul fast float %705, %619
  %791 = fmul fast float %706, %619
  %792 = fadd fast float %697, -1.000000e+00
  %793 = fmul fast float %792, %619
  %794 = fadd fast float %793, 1.000000e+00
  %795 = call float @dx.op.dot3.f32(i32 55, float %794, float %794, float %794, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %796 = fsub fast float 1.000000e+00, %795
  %797 = fmul fast float %755, %743
  %798 = fsub fast float 1.000000e+00, %743
  %799 = call float @dx.op.unary.f32(i32 7, float %798)  ; Saturate(value)
  %800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %801 = extractvalue %dx.types.CBufRet.f32 %800, 3
  %802 = fmul fast float %801, %799
  %803 = fadd fast float %802, %797
  %804 = and i32 %131, 1048576
  %805 = icmp eq i32 %804, 0
  br i1 %805, label %897, label %806, !dx.controlflow.hints !67

; <label>:806                                     ; preds = %754
  %807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %808 = extractvalue %dx.types.CBufRet.f32 %807, 2
  %809 = extractvalue %dx.types.CBufRet.f32 %807, 3
  %810 = fmul fast float %808, %53
  %811 = fmul fast float %809, %54
  %812 = call float @dx.op.unary.f32(i32 7, float %810)  ; Saturate(value)
  %813 = call float @dx.op.unary.f32(i32 7, float %811)  ; Saturate(value)
  %814 = select i1 %779, i32 2, i32 0
  %815 = or i32 %814, 1
  %816 = uitofp i32 %815 to float
  %817 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %812, float %813, float %816, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %818 = extractvalue %dx.types.ResRet.f32 %817, 0
  %819 = extractvalue %dx.types.ResRet.f32 %817, 1
  %820 = extractvalue %dx.types.ResRet.f32 %817, 2
  %821 = extractvalue %dx.types.ResRet.f32 %817, 3
  %822 = add nuw nsw i32 %814, 2
  %823 = uitofp i32 %822 to float
  %824 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %812, float %813, float %823, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %825 = extractvalue %dx.types.ResRet.f32 %824, 0
  %826 = extractvalue %dx.types.ResRet.f32 %824, 1
  %827 = extractvalue %dx.types.ResRet.f32 %824, 2
  %828 = extractvalue %dx.types.ResRet.f32 %824, 3
  %829 = call float @dx.op.binary.f32(i32 35, float %819, float %820)  ; FMax(a,b)
  %830 = call float @dx.op.binary.f32(i32 35, float %818, float %829)  ; FMax(a,b)
  %831 = call float @dx.op.binary.f32(i32 35, float %830, float %821)  ; FMax(a,b)
  %832 = call float @dx.op.binary.f32(i32 36, float %826, float %827)  ; FMin(a,b)
  %833 = call float @dx.op.binary.f32(i32 36, float %825, float %832)  ; FMin(a,b)
  %834 = call float @dx.op.binary.f32(i32 36, float %833, float %828)  ; FMin(a,b)
  %835 = fmul fast float %831, 2.550000e+02
  %836 = fadd fast float %835, 0x3F70101020000000
  %837 = fptoui float %836 to i32
  %838 = fmul fast float %834, 2.550000e+02
  %839 = fadd fast float %838, 0x3F70101020000000
  %840 = fptoui float %839 to i32
  %841 = icmp ult i32 %837, %840
  br i1 %841, label %842, label %890

; <label>:842                                     ; preds = %806
  %843 = fcmp fast ogt float %47, 9.843750e-01
  %844 = fadd fast float %48, -4.000000e+00
  %845 = select i1 %843, float -4.000000e+00, float %844
  %846 = call float @dx.op.binary.f32(i32 35, float %845, float 0.000000e+00)  ; FMax(a,b)
  %847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %848 = extractvalue %dx.types.CBufRet.f32 %847, 0
  %849 = fadd fast float %848, %846
  %850 = extractvalue %dx.types.CBufRet.f32 %847, 2
  %851 = fmul fast float %849, %850
  %852 = call float @dx.op.unary.f32(i32 23, float %851)  ; Log(value)
  %853 = extractvalue %dx.types.CBufRet.f32 %847, 3
  %854 = fmul fast float %853, %852
  %855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %856 = extractvalue %dx.types.CBufRet.f32 %855, 2
  %857 = fmul fast float %854, %856
  %858 = call float @dx.op.unary.f32(i32 7, float %857)  ; Saturate(value)
  %859 = uitofp i32 %837 to float
  %860 = uitofp i32 %840 to float
  %861 = fadd fast float %859, 5.000000e-01
  %862 = fadd fast float %860, 5.000000e-01
  %863 = fmul fast float %856, %861
  %864 = fmul fast float %856, %862
  %865 = fadd fast float %863, 0x3F0FFB4800000000
  %866 = fadd fast float %864, 0xBF0FFB4800000000
  %867 = call float @dx.op.binary.f32(i32 35, float %858, float %865)  ; FMax(a,b)
  %868 = call float @dx.op.binary.f32(i32 36, float %867, float %866)  ; FMin(a,b)
  %869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %870 = extractvalue %dx.types.CBufRet.f32 %869, 1
  %871 = extractvalue %dx.types.CBufRet.f32 %869, 2
  %872 = extractvalue %dx.types.CBufRet.f32 %869, 0
  %873 = select i1 %779, float %872, float 0.000000e+00
  %874 = fmul fast float %870, %868
  %875 = fadd fast float %873, %874
  %876 = fadd fast float %873, %871
  %877 = fsub fast float %870, %871
  %878 = fadd fast float %877, %873
  %879 = call float @dx.op.binary.f32(i32 35, float %875, float %876)  ; FMax(a,b)
  %880 = call float @dx.op.binary.f32(i32 36, float %879, float %878)  ; FMin(a,b)
  %881 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %18, float %812, float %813, float %880, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %882 = extractvalue %dx.types.ResRet.f32 %881, 0
  %883 = extractvalue %dx.types.ResRet.f32 %881, 1
  %884 = extractvalue %dx.types.ResRet.f32 %881, 2
  %885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %886 = extractvalue %dx.types.CBufRet.f32 %885, 1
  %887 = fmul fast float %886, %882
  %888 = fmul fast float %886, %883
  %889 = fmul fast float %886, %884
  br label %890

; <label>:890                                     ; preds = %842, %806
  %891 = phi float [ %887, %842 ], [ 1.000000e+00, %806 ]
  %892 = phi float [ %888, %842 ], [ 1.000000e+00, %806 ]
  %893 = phi float [ %889, %842 ], [ 1.000000e+00, %806 ]
  %894 = fmul fast float %891, %786
  %895 = fmul fast float %892, %787
  %896 = fmul fast float %893, %788
  br label %897

; <label>:897                                     ; preds = %890, %754
  %898 = phi float [ %894, %890 ], [ %786, %754 ]
  %899 = phi float [ %895, %890 ], [ %787, %754 ]
  %900 = phi float [ %896, %890 ], [ %788, %754 ]
  %901 = and i32 %131, 2097152
  %902 = icmp eq i32 %901, 0
  br i1 %902, label %907, label %903, !dx.controlflow.hints !68

; <label>:903                                     ; preds = %897
  %904 = add i32 %128, 192
  %905 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %904, i32 undef)  ; BufferLoad(srv,index,wot)
  %906 = extractvalue %dx.types.ResRet.f32 %905, 0
  br label %910

; <label>:907                                     ; preds = %897
  %908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %909 = extractvalue %dx.types.CBufRet.f32 %908, 3
  br label %910

; <label>:910                                     ; preds = %907, %903
  %911 = phi float [ %906, %903 ], [ %909, %907 ]
  %912 = fmul fast float %789, %712
  %913 = fmul fast float %790, %716
  %914 = fmul fast float %791, %720
  br i1 %774, label %915, label %1024

; <label>:915                                     ; preds = %910
  %916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %917 = extractvalue %dx.types.CBufRet.f32 %916, 2
  %918 = extractvalue %dx.types.CBufRet.f32 %916, 3
  %919 = fmul fast float %917, %53
  %920 = fmul fast float %918, %54
  %921 = call float @dx.op.unary.f32(i32 7, float %919)  ; Saturate(value)
  %922 = call float @dx.op.unary.f32(i32 7, float %920)  ; Saturate(value)
  %923 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %921, float %922, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %924 = extractvalue %dx.types.ResRet.f32 %923, 0
  %925 = extractvalue %dx.types.ResRet.f32 %923, 1
  %926 = extractvalue %dx.types.ResRet.f32 %923, 2
  %927 = extractvalue %dx.types.ResRet.f32 %923, 3
  %928 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %921, float %922, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %929 = extractvalue %dx.types.ResRet.f32 %928, 0
  %930 = extractvalue %dx.types.ResRet.f32 %928, 1
  %931 = extractvalue %dx.types.ResRet.f32 %928, 2
  %932 = extractvalue %dx.types.ResRet.f32 %928, 3
  %933 = call float @dx.op.binary.f32(i32 35, float %925, float %926)  ; FMax(a,b)
  %934 = call float @dx.op.binary.f32(i32 35, float %924, float %933)  ; FMax(a,b)
  %935 = call float @dx.op.binary.f32(i32 35, float %934, float %927)  ; FMax(a,b)
  %936 = call float @dx.op.binary.f32(i32 36, float %930, float %931)  ; FMin(a,b)
  %937 = call float @dx.op.binary.f32(i32 36, float %929, float %936)  ; FMin(a,b)
  %938 = call float @dx.op.binary.f32(i32 36, float %937, float %932)  ; FMin(a,b)
  %939 = fmul fast float %935, 2.550000e+02
  %940 = fadd fast float %939, 0x3F70101020000000
  %941 = fptoui float %940 to i32
  %942 = fmul fast float %938, 2.550000e+02
  %943 = fadd fast float %942, 0x3F70101020000000
  %944 = fptoui float %943 to i32
  %945 = icmp ult i32 %941, %944
  br i1 %945, label %946, label %997

; <label>:946                                     ; preds = %915
  %947 = fcmp fast ogt float %47, 9.843750e-01
  %948 = fadd fast float %48, -4.000000e+00
  %949 = select i1 %947, float -4.000000e+00, float %948
  %950 = call float @dx.op.binary.f32(i32 35, float %949, float 0.000000e+00)  ; FMax(a,b)
  %951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %952 = extractvalue %dx.types.CBufRet.f32 %951, 0
  %953 = fadd fast float %952, %950
  %954 = extractvalue %dx.types.CBufRet.f32 %951, 2
  %955 = fmul fast float %953, %954
  %956 = call float @dx.op.unary.f32(i32 23, float %955)  ; Log(value)
  %957 = extractvalue %dx.types.CBufRet.f32 %951, 3
  %958 = fmul fast float %957, %956
  %959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %960 = extractvalue %dx.types.CBufRet.f32 %959, 2
  %961 = fmul fast float %958, %960
  %962 = call float @dx.op.unary.f32(i32 7, float %961)  ; Saturate(value)
  %963 = uitofp i32 %941 to float
  %964 = uitofp i32 %944 to float
  %965 = fadd fast float %963, 5.000000e-01
  %966 = fadd fast float %964, 5.000000e-01
  %967 = fmul fast float %960, %965
  %968 = fmul fast float %960, %966
  %969 = fadd fast float %967, 0x3F0FFB4800000000
  %970 = fadd fast float %968, 0xBF0FFB4800000000
  %971 = call float @dx.op.binary.f32(i32 35, float %962, float %969)  ; FMax(a,b)
  %972 = call float @dx.op.binary.f32(i32 36, float %971, float %970)  ; FMin(a,b)
  %973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %974 = extractvalue %dx.types.CBufRet.f32 %973, 1
  %975 = extractvalue %dx.types.CBufRet.f32 %973, 2
  %976 = extractvalue %dx.types.CBufRet.f32 %973, 0
  %977 = fmul fast float %974, %972
  %978 = fadd fast float %976, %977
  %979 = fadd fast float %976, %975
  %980 = fsub fast float %974, %975
  %981 = fadd fast float %980, %976
  %982 = call float @dx.op.binary.f32(i32 35, float %978, float %979)  ; FMax(a,b)
  %983 = call float @dx.op.binary.f32(i32 36, float %982, float %981)  ; FMin(a,b)
  %984 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %921, float %922, float %983, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %985 = extractvalue %dx.types.ResRet.f32 %984, 0
  %986 = extractvalue %dx.types.ResRet.f32 %984, 1
  %987 = extractvalue %dx.types.ResRet.f32 %984, 2
  %988 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %921, float %922, float %983, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %989 = extractvalue %dx.types.ResRet.f32 %988, 0
  %990 = extractvalue %dx.types.ResRet.f32 %988, 1
  %991 = extractvalue %dx.types.ResRet.f32 %988, 2
  %992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %993 = extractvalue %dx.types.CBufRet.f32 %992, 1
  %994 = fmul fast float %993, %989
  %995 = fmul fast float %993, %990
  %996 = fmul fast float %993, %991
  br label %997

; <label>:997                                     ; preds = %946, %915
  %998 = phi float [ %985, %946 ], [ 1.000000e+00, %915 ]
  %999 = phi float [ %986, %946 ], [ 1.000000e+00, %915 ]
  %1000 = phi float [ %987, %946 ], [ 1.000000e+00, %915 ]
  %1001 = phi float [ %994, %946 ], [ 0.000000e+00, %915 ]
  %1002 = phi float [ %995, %946 ], [ 0.000000e+00, %915 ]
  %1003 = phi float [ %996, %946 ], [ 0.000000e+00, %915 ]
  %1004 = fmul fast float %1001, %796
  %1005 = fmul fast float %1002, %796
  %1006 = fmul fast float %1003, %796
  %1007 = call float @dx.op.dot3.f32(i32 55, float %998, float %999, float %1000, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1008 = call float @dx.op.dot3.f32(i32 55, float %1004, float %1005, float %1006, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1009 = select i1 %111, float %1007, float %998
  %1010 = select i1 %111, float %1007, float %999
  %1011 = select i1 %111, float 1.000000e+00, float %1000
  %1012 = select i1 %111, float %1008, float %1004
  %1013 = select i1 %111, float 0.000000e+00, float %1005
  %1014 = select i1 %111, float 0.000000e+00, float %1006
  %1015 = fmul fast float %1009, %912
  %1016 = fmul fast float %1010, %913
  %1017 = fmul fast float %1011, %914
  %1018 = fadd fast float %1015, %1012
  %1019 = fadd fast float %1016, %1013
  %1020 = fadd fast float %1014, %1017
  %1021 = fmul fast float %1009, %898
  %1022 = fmul fast float %1010, %899
  %1023 = fmul fast float %1011, %900
  br label %1024

; <label>:1024                                    ; preds = %997, %910
  %1025 = phi float [ %771, %997 ], [ %48, %910 ]
  %1026 = phi float [ %1018, %997 ], [ %912, %910 ]
  %1027 = phi float [ %1019, %997 ], [ %913, %910 ]
  %1028 = phi float [ %1020, %997 ], [ %914, %910 ]
  %1029 = phi float [ %1021, %997 ], [ %898, %910 ]
  %1030 = phi float [ %1022, %997 ], [ %899, %910 ]
  %1031 = phi float [ %1023, %997 ], [ %900, %910 ]
  %1032 = phi float [ %998, %997 ], [ 1.000000e+00, %910 ]
  br i1 %779, label %1334, label %1033

; <label>:1033                                    ; preds = %1024
  %1034 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %19, float %33, float %34, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1035 = extractvalue %dx.types.ResRet.f32 %1034, 0
  %1036 = extractvalue %dx.types.ResRet.f32 %1034, 1
  %1037 = extractvalue %dx.types.ResRet.f32 %1034, 2
  %1038 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %19, float %33, float %34, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1039 = extractvalue %dx.types.ResRet.f32 %1038, 0
  %1040 = extractvalue %dx.types.ResRet.f32 %1038, 1
  %1041 = extractvalue %dx.types.ResRet.f32 %1038, 2
  %1042 = fmul fast float %1035, %796
  %1043 = fmul fast float %1036, %796
  %1044 = fmul fast float %1037, %796
  %1045 = fmul fast float %1039, %1032
  %1046 = call float @dx.op.dot3.f32(i32 55, float %1039, float %1040, float %1041, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1047 = call float @dx.op.dot3.f32(i32 55, float %1042, float %1043, float %1044, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1048 = select i1 %111, float %1046, float %1039
  %1049 = select i1 %111, float %1046, float %1040
  %1050 = select i1 %111, float 1.000000e+00, float %1041
  %1051 = select i1 %111, float %1047, float %1042
  %1052 = select i1 %111, float 0.000000e+00, float %1043
  %1053 = select i1 %111, float 0.000000e+00, float %1044
  %1054 = fmul fast float %1048, %1026
  %1055 = fmul fast float %1049, %1027
  %1056 = fmul fast float %1050, %1028
  %1057 = fadd fast float %1054, %1051
  %1058 = fadd fast float %1055, %1052
  %1059 = fadd fast float %1056, %1053
  %1060 = fmul fast float %1048, %1029
  %1061 = fmul fast float %1049, %1030
  %1062 = fmul fast float %1050, %1031
  %1063 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1064 = extractvalue %dx.types.CBufRet.i32 %1063, 0
  %1065 = icmp eq i32 %1064, 0
  br i1 %1065, label %1334, label %1066, !dx.controlflow.hints !69

; <label>:1066                                    ; preds = %1033
  %1067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1068 = extractvalue %dx.types.CBufRet.f32 %1067, 2
  %1069 = extractvalue %dx.types.CBufRet.f32 %1067, 3
  %1070 = fmul fast float %1068, %53
  %1071 = fmul fast float %1069, %54
  %1072 = fmul fast float %1070, 2.000000e+00
  %1073 = fmul fast float %1071, 2.000000e+00
  %1074 = fsub fast float 1.000000e+00, %1072
  %1075 = fsub fast float 1.000000e+00, %1073
  %1076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1077 = extractvalue %dx.types.CBufRet.f32 %1076, 0
  %1078 = extractvalue %dx.types.CBufRet.f32 %1076, 1
  %1079 = extractvalue %dx.types.CBufRet.f32 %1076, 2
  %1080 = fmul fast float %1074, %1077
  %1081 = fmul fast float %1074, %1078
  %1082 = fmul fast float %1074, %1079
  %1083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1084 = extractvalue %dx.types.CBufRet.f32 %1083, 0
  %1085 = extractvalue %dx.types.CBufRet.f32 %1083, 1
  %1086 = extractvalue %dx.types.CBufRet.f32 %1083, 2
  %1087 = fmul fast float %1075, %1084
  %1088 = fmul fast float %1075, %1085
  %1089 = fmul fast float %1075, %1086
  %1090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1091 = extractvalue %dx.types.CBufRet.f32 %1090, 0
  %1092 = extractvalue %dx.types.CBufRet.f32 %1090, 1
  %1093 = extractvalue %dx.types.CBufRet.f32 %1090, 2
  %1094 = fadd fast float %1087, %1091
  %1095 = fadd fast float %1094, %1080
  %1096 = fadd fast float %1088, %1092
  %1097 = fadd fast float %1096, %1081
  %1098 = fadd fast float %1089, %1093
  %1099 = fadd fast float %1098, %1082
  %1100 = fmul fast float %1095, %1025
  %1101 = fmul fast float %1097, %1025
  %1102 = fmul fast float %1099, %1025
  %1103 = fmul fast float %1100, %1100
  %1104 = fmul fast float %1101, %1101
  %1105 = fadd fast float %1103, %1104
  %1106 = fmul fast float %1102, %1102
  %1107 = fadd fast float %1105, %1106
  %1108 = call float @dx.op.unary.f32(i32 24, float %1107)  ; Sqrt(value)
  %1109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1110 = extractvalue %dx.types.CBufRet.f32 %1109, 0
  %1111 = fsub fast float %1108, %1110
  %1112 = extractvalue %dx.types.CBufRet.f32 %1109, 2
  %1113 = fmul fast float %1111, %1112
  %1114 = call float @dx.op.unary.f32(i32 7, float %1113)  ; Saturate(value)
  %1115 = fadd fast float %1114, -5.000000e-01
  %1116 = fmul fast float %1115, 2.000000e+00
  %1117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1118 = extractvalue %dx.types.CBufRet.f32 %1117, 2
  %1119 = call float @dx.op.binary.f32(i32 36, float %1118, float %1116)  ; FMin(a,b)
  %1120 = fsub fast float -0.000000e+00, %1118
  %1121 = fcmp fast ogt float %1119, %1120
  br i1 %1121, label %1122, label %1334, !dx.controlflow.hints !70

; <label>:1122                                    ; preds = %1066
  %1123 = fmul fast float %1119, 5.000000e-01
  %1124 = fadd fast float %1123, 5.000000e-01
  %1125 = call float @dx.op.unary.f32(i32 22, float %1124)  ; Frc(value)
  %1126 = call float @dx.op.unary.f32(i32 27, float %1125)  ; Round_ni(value)
  %1127 = call float @dx.op.unary.f32(i32 22, float %1125)  ; Frc(value)
  %1128 = fmul fast float %1127, 2.000000e+00
  %1129 = fadd fast float %1128, -1.000000e+00
  %1130 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %19, float %1070, float %1071, float %1126, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1131 = extractvalue %dx.types.ResRet.f32 %1130, 0
  %1132 = extractvalue %dx.types.ResRet.f32 %1130, 1
  %1133 = extractvalue %dx.types.ResRet.f32 %1130, 2
  %1134 = extractvalue %dx.types.ResRet.f32 %1130, 3
  %1135 = fadd fast float %1131, -5.000000e-01
  %1136 = fadd fast float %1133, -5.000000e-01
  %1137 = fmul fast float %1135, 0xBFD5555560000000
  %1138 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1136, float %1137)  ; FMad(a,b,c)
  %1139 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1132, float 0.000000e+00)  ; FMad(a,b,c)
  %1140 = fadd fast float %1139, %1134
  %1141 = fmul fast float %1135, -7.500000e-01
  %1142 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1136, float %1141)  ; FMad(a,b,c)
  %1143 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1132, float 0.000000e+00)  ; FMad(a,b,c)
  %1144 = fadd fast float %1143, %1134
  %1145 = call float @dx.op.binary.f32(i32 35, float %1138, float -1.000000e+00)  ; FMax(a,b)
  %1146 = call float @dx.op.binary.f32(i32 35, float %1140, float -1.000000e+00)  ; FMax(a,b)
  %1147 = call float @dx.op.binary.f32(i32 35, float %1142, float -1.000000e+00)  ; FMax(a,b)
  %1148 = call float @dx.op.binary.f32(i32 35, float %1144, float -1.000000e+00)  ; FMax(a,b)
  %1149 = call float @dx.op.binary.f32(i32 36, float %1145, float 1.000000e+00)  ; FMin(a,b)
  %1150 = call float @dx.op.binary.f32(i32 36, float %1146, float 1.000000e+00)  ; FMin(a,b)
  %1151 = call float @dx.op.binary.f32(i32 36, float %1147, float 1.000000e+00)  ; FMin(a,b)
  %1152 = call float @dx.op.binary.f32(i32 36, float %1148, float 1.000000e+00)  ; FMin(a,b)
  %1153 = fcmp fast olt float %1149, 0x3FEFFF8020000000
  br i1 %1153, label %1154, label %1269, !dx.controlflow.hints !71

; <label>:1154                                    ; preds = %1122
  %1155 = extractvalue %dx.types.CBufRet.f32 %1117, 3
  %1156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1157 = extractvalue %dx.types.CBufRet.f32 %1156, 0
  %1158 = extractvalue %dx.types.CBufRet.f32 %1156, 1
  %1159 = extractvalue %dx.types.CBufRet.f32 %1156, 2
  %1160 = extractvalue %dx.types.CBufRet.f32 %1156, 3
  %1161 = fsub fast float %1157, %1149
  %1162 = fsub fast float %1158, %1150
  %1163 = fsub fast float %1159, %1151
  %1164 = fsub fast float %1160, %1152
  %1165 = fmul fast float %1161, %1155
  %1166 = fmul fast float %1162, %1155
  %1167 = fmul fast float %1163, %1155
  %1168 = fmul fast float %1164, %1155
  %1169 = fadd fast float %1165, %1149
  %1170 = fadd fast float %1166, %1150
  %1171 = fsub fast float -0.000000e+00, %1170
  %1172 = fadd fast float %1167, %1151
  %1173 = fadd fast float %1168, %1152
  %1174 = fmul fast float %1169, %1169
  %1175 = fsub fast float %1170, %1174
  %1176 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1175)  ; FMax(a,b)
  %1177 = fdiv fast float 1.000000e+00, %1176
  %1178 = fmul fast float %1170, %1169
  %1179 = fsub fast float %1172, %1178
  %1180 = fsub fast float %1129, %1169
  %1181 = fmul fast float %1129, %1129
  %1182 = fsub fast float %1181, %1170
  %1183 = fmul fast float %1180, %1177
  %1184 = fmul fast float %1183, %1179
  %1185 = fsub fast float %1182, %1184
  %1186 = fmul fast float %1170, %1170
  %1187 = fsub fast float %1173, %1186
  %1188 = fmul fast float %1179, %1179
  %1189 = fmul fast float %1188, %1177
  %1190 = fsub fast float %1187, %1189
  %1191 = fdiv fast float %1185, %1190
  %1192 = fmul fast float %1179, %1191
  %1193 = fsub fast float %1180, %1192
  %1194 = fmul fast float %1193, %1177
  %1195 = fmul fast float %1194, %1169
  %1196 = fsub fast float 1.000000e+00, %1195
  %1197 = fmul fast float %1170, %1191
  %1198 = fsub fast float %1196, %1197
  %1199 = fmul fast float %1194, %1194
  %1200 = fmul fast float %1191, 4.000000e+00
  %1201 = fmul fast float %1200, %1198
  %1202 = fsub fast float %1199, %1201
  %1203 = call float @dx.op.unary.f32(i32 24, float %1202)  ; Sqrt(value)
  %1204 = fcmp fast oge float %1194, 0.000000e+00
  %1205 = fsub fast float -0.000000e+00, %1203
  %1206 = select i1 %1204, float %1205, float %1203
  %1207 = fsub fast float %1206, %1194
  %1208 = fdiv fast float %1207, %1191
  %1209 = fdiv fast float %1198, %1207
  %1210 = fmul fast float %1208, 5.000000e-01
  %1211 = fmul fast float %1209, 2.000000e+00
  %1212 = select i1 %1204, float %1210, float %1211
  %1213 = select i1 %1204, float %1211, float %1210
  %1214 = call float @dx.op.binary.f32(i32 35, float %1212, float %1213)  ; FMax(a,b)
  %1215 = call float @dx.op.binary.f32(i32 36, float %1212, float %1213)  ; FMin(a,b)
  %1216 = fcmp fast ogt float %1129, %1215
  br i1 %1216, label %1217, label %1227

; <label>:1217                                    ; preds = %1154
  %1218 = fsub fast float %1129, %1215
  %1219 = fsub fast float %1214, %1215
  %1220 = fmul fast float %1218, %1219
  %1221 = fmul fast float %1214, %1129
  %1222 = fadd fast float %1214, %1129
  %1223 = fmul fast float %1222, %1169
  %1224 = fadd fast float %1221, %1170
  %1225 = fsub fast float %1224, %1223
  %1226 = fdiv fast float %1225, %1220
  br label %1227

; <label>:1227                                    ; preds = %1217, %1154
  %1228 = phi float [ %1226, %1217 ], [ 0.000000e+00, %1154 ]
  %1229 = fcmp fast ogt float %1129, %1214
  %1230 = fsub fast float %1129, %1214
  br i1 %1229, label %1231, label %1241

; <label>:1231                                    ; preds = %1227
  %1232 = fsub fast float %1214, %1215
  %1233 = fmul fast float %1232, %1230
  %1234 = fmul fast float %1215, %1129
  %1235 = fadd fast float %1215, %1129
  %1236 = fmul fast float %1235, %1169
  %1237 = fsub fast float %1171, %1234
  %1238 = fadd fast float %1237, %1236
  %1239 = fdiv fast float %1238, %1233
  %1240 = fadd fast float %1239, %1228
  br label %1241

; <label>:1241                                    ; preds = %1231, %1227
  %1242 = phi float [ %1240, %1231 ], [ %1228, %1227 ]
  %1243 = fsub fast float %1129, %1215
  %1244 = fmul fast float %1243, %1230
  %1245 = fmul fast float %1215, %1214
  %1246 = fadd fast float %1215, %1214
  %1247 = fmul fast float %1246, %1169
  %1248 = fadd fast float %1245, %1170
  %1249 = fsub fast float %1248, %1247
  %1250 = fdiv fast float %1249, %1244
  %1251 = call float @dx.op.unary.f32(i32 7, float %1242)  ; Saturate(value)
  %1252 = fcmp fast oeq float %911, 0.000000e+00
  %1253 = extractvalue %dx.types.CBufRet.f32 %1117, 0
  %1254 = fcmp fast oeq float %1253, 0.000000e+00
  %1255 = or i1 %1252, %1254
  %1256 = fmul fast float %1253, 2.000000e+00
  %1257 = fadd fast float %1118, %1119
  %1258 = fdiv fast float %1257, %1256
  %1259 = call float @dx.op.unary.f32(i32 7, float %1258)  ; Saturate(value)
  %1260 = fmul fast float %1259, 2.000000e+00
  %1261 = fsub fast float 3.000000e+00, %1260
  %1262 = fmul fast float %1259, %1259
  %1263 = fmul fast float %1262, %1261
  %1264 = select i1 %1255, float 1.000000e+00, float %1263
  %1265 = fmul fast float %1250, %911
  %1266 = fadd fast float %1251, %1265
  %1267 = call float @dx.op.unary.f32(i32 7, float %1266)  ; Saturate(value)
  %1268 = fmul fast float %1264, %1267
  br label %1269

; <label>:1269                                    ; preds = %1241, %1122
  %1270 = phi float [ %1268, %1241 ], [ 0.000000e+00, %1122 ]
  %1271 = fsub fast float 1.000000e+00, %1270
  %1272 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %19, float %1070, float %1071, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1273 = extractvalue %dx.types.ResRet.f32 %1272, 0
  %1274 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1275 = extractvalue %dx.types.CBufRet.i32 %1274, 2
  %1276 = icmp eq i32 %1275, 0
  br i1 %1276, label %1282, label %1277

; <label>:1277                                    ; preds = %1269
  %1278 = call float @dx.op.unary.f32(i32 7, float %1270)  ; Saturate(value)
  %1279 = fadd fast float %1273, -1.000000e+00
  %1280 = fmul fast float %1278, %1279
  %1281 = fadd fast float %1280, 1.000000e+00
  br label %1282

; <label>:1282                                    ; preds = %1277, %1269
  %1283 = phi float [ %1281, %1277 ], [ %1271, %1269 ]
  %1284 = call float @dx.op.binary.f32(i32 35, float %1273, float %1283)  ; FMax(a,b)
  %1285 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %1286 = extractvalue %dx.types.CBufRet.i32 %1285, 2
  %1287 = and i32 %1286, 1
  %1288 = icmp eq i32 %1287, 0
  %1289 = fcmp fast une float %1284, 1.000000e+00
  %1290 = and i1 %1289, %1288
  br i1 %1290, label %1291, label %1310

; <label>:1291                                    ; preds = %1282
  %1292 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %19, float %1070, float %1071, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1293 = extractvalue %dx.types.ResRet.f32 %1292, 0
  %1294 = extractvalue %dx.types.ResRet.f32 %1292, 1
  %1295 = extractvalue %dx.types.ResRet.f32 %1292, 2
  %1296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1297 = extractvalue %dx.types.CBufRet.f32 %1296, 1
  %1298 = fmul fast float %1297, %1293
  %1299 = fmul fast float %1297, %1294
  %1300 = fmul fast float %1297, %1295
  %1301 = fcmp fast ogt float %1273, 0x3FEFFF2E40000000
  %1302 = fsub fast float 1.000000e+00, %1284
  %1303 = fsub fast float 1.000000e+00, %1273
  %1304 = fdiv fast float %1302, %1303
  %1305 = call float @dx.op.unary.f32(i32 7, float %1304)  ; Saturate(value)
  %1306 = select i1 %1301, float 0.000000e+00, float %1305
  %1307 = fmul fast float %1298, %1306
  %1308 = fmul fast float %1299, %1306
  %1309 = fmul fast float %1300, %1306
  br label %1310

; <label>:1310                                    ; preds = %1291, %1282
  %1311 = phi float [ 0.000000e+00, %1282 ], [ %1307, %1291 ]
  %1312 = phi float [ 0.000000e+00, %1282 ], [ %1308, %1291 ]
  %1313 = phi float [ 0.000000e+00, %1282 ], [ %1309, %1291 ]
  %1314 = fmul fast float %1311, %796
  %1315 = fmul fast float %1312, %796
  %1316 = fmul fast float %1313, %796
  %1317 = fmul fast float %1284, %1045
  %1318 = call float @dx.op.dot3.f32(i32 55, float %1284, float %1284, float %1284, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1319 = call float @dx.op.dot3.f32(i32 55, float %1314, float %1315, float %1316, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1320 = select i1 %111, float %1318, float %1284
  %1321 = select i1 %111, float 1.000000e+00, float %1284
  %1322 = select i1 %111, float %1319, float %1314
  %1323 = select i1 %111, float 0.000000e+00, float %1315
  %1324 = select i1 %111, float 0.000000e+00, float %1316
  %1325 = fmul fast float %1320, %1057
  %1326 = fmul fast float %1320, %1058
  %1327 = fmul fast float %1321, %1059
  %1328 = fadd fast float %1325, %1322
  %1329 = fadd fast float %1326, %1323
  %1330 = fadd fast float %1324, %1327
  %1331 = fmul fast float %1320, %1060
  %1332 = fmul fast float %1320, %1061
  %1333 = fmul fast float %1321, %1062
  br label %1334

; <label>:1334                                    ; preds = %1310, %1066, %1033, %1024
  %1335 = phi float [ %1026, %1024 ], [ %1057, %1033 ], [ %1328, %1310 ], [ %1057, %1066 ]
  %1336 = phi float [ %1027, %1024 ], [ %1058, %1033 ], [ %1329, %1310 ], [ %1058, %1066 ]
  %1337 = phi float [ %1028, %1024 ], [ %1059, %1033 ], [ %1330, %1310 ], [ %1059, %1066 ]
  %1338 = phi float [ %1029, %1024 ], [ %1060, %1033 ], [ %1331, %1310 ], [ %1060, %1066 ]
  %1339 = phi float [ %1030, %1024 ], [ %1061, %1033 ], [ %1332, %1310 ], [ %1061, %1066 ]
  %1340 = phi float [ %1031, %1024 ], [ %1062, %1033 ], [ %1333, %1310 ], [ %1062, %1066 ]
  %1341 = phi float [ %1032, %1024 ], [ %1045, %1033 ], [ %1317, %1310 ], [ %1045, %1066 ]
  %1342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1343 = extractvalue %dx.types.CBufRet.f32 %1342, 2
  %1344 = extractvalue %dx.types.CBufRet.f32 %1342, 3
  %1345 = fmul fast float %1343, %53
  %1346 = fmul fast float %1344, %54
  %1347 = call float @dx.op.unary.f32(i32 7, float %1345)  ; Saturate(value)
  %1348 = call float @dx.op.unary.f32(i32 7, float %1346)  ; Saturate(value)
  %1349 = select i1 %779, i32 2, i32 0
  %1350 = or i32 %1349, 1
  %1351 = uitofp i32 %1350 to float
  %1352 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %1347, float %1348, float %1351, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1353 = extractvalue %dx.types.ResRet.f32 %1352, 0
  %1354 = extractvalue %dx.types.ResRet.f32 %1352, 1
  %1355 = extractvalue %dx.types.ResRet.f32 %1352, 2
  %1356 = extractvalue %dx.types.ResRet.f32 %1352, 3
  %1357 = add nuw nsw i32 %1349, 2
  %1358 = uitofp i32 %1357 to float
  %1359 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %1347, float %1348, float %1358, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1360 = extractvalue %dx.types.ResRet.f32 %1359, 0
  %1361 = extractvalue %dx.types.ResRet.f32 %1359, 1
  %1362 = extractvalue %dx.types.ResRet.f32 %1359, 2
  %1363 = extractvalue %dx.types.ResRet.f32 %1359, 3
  %1364 = call float @dx.op.binary.f32(i32 35, float %1354, float %1355)  ; FMax(a,b)
  %1365 = call float @dx.op.binary.f32(i32 35, float %1353, float %1364)  ; FMax(a,b)
  %1366 = call float @dx.op.binary.f32(i32 35, float %1365, float %1356)  ; FMax(a,b)
  %1367 = call float @dx.op.binary.f32(i32 36, float %1361, float %1362)  ; FMin(a,b)
  %1368 = call float @dx.op.binary.f32(i32 36, float %1360, float %1367)  ; FMin(a,b)
  %1369 = call float @dx.op.binary.f32(i32 36, float %1368, float %1363)  ; FMin(a,b)
  %1370 = fmul fast float %1366, 2.550000e+02
  %1371 = fadd fast float %1370, 0x3F70101020000000
  %1372 = fptoui float %1371 to i32
  %1373 = fmul fast float %1369, 2.550000e+02
  %1374 = fadd fast float %1373, 0x3F70101020000000
  %1375 = fptoui float %1374 to i32
  %1376 = icmp ult i32 %1372, %1375
  br i1 %1376, label %1377, label %1429

; <label>:1377                                    ; preds = %1334
  %1378 = fcmp fast ogt float %47, 9.843750e-01
  %1379 = fadd fast float %1025, -4.000000e+00
  %1380 = select i1 %1378, float -4.000000e+00, float %1379
  %1381 = call float @dx.op.binary.f32(i32 35, float %1380, float 0.000000e+00)  ; FMax(a,b)
  %1382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1383 = extractvalue %dx.types.CBufRet.f32 %1382, 0
  %1384 = fadd fast float %1383, %1381
  %1385 = extractvalue %dx.types.CBufRet.f32 %1382, 2
  %1386 = fmul fast float %1384, %1385
  %1387 = call float @dx.op.unary.f32(i32 23, float %1386)  ; Log(value)
  %1388 = extractvalue %dx.types.CBufRet.f32 %1382, 3
  %1389 = fmul fast float %1388, %1387
  %1390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1391 = extractvalue %dx.types.CBufRet.f32 %1390, 2
  %1392 = fmul fast float %1389, %1391
  %1393 = call float @dx.op.unary.f32(i32 7, float %1392)  ; Saturate(value)
  %1394 = uitofp i32 %1372 to float
  %1395 = uitofp i32 %1375 to float
  %1396 = fadd fast float %1394, 5.000000e-01
  %1397 = fadd fast float %1395, 5.000000e-01
  %1398 = fmul fast float %1391, %1396
  %1399 = fmul fast float %1391, %1397
  %1400 = fadd fast float %1398, 0x3F0FFB4800000000
  %1401 = fadd fast float %1399, 0xBF0FFB4800000000
  %1402 = call float @dx.op.binary.f32(i32 35, float %1393, float %1400)  ; FMax(a,b)
  %1403 = call float @dx.op.binary.f32(i32 36, float %1402, float %1401)  ; FMin(a,b)
  %1404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1405 = extractvalue %dx.types.CBufRet.f32 %1404, 1
  %1406 = extractvalue %dx.types.CBufRet.f32 %1404, 2
  %1407 = extractvalue %dx.types.CBufRet.f32 %1404, 0
  %1408 = select i1 %779, float %1407, float 0.000000e+00
  %1409 = fmul fast float %1405, %1403
  %1410 = fadd fast float %1408, %1409
  %1411 = fadd fast float %1408, %1406
  %1412 = fsub fast float %1405, %1406
  %1413 = fadd fast float %1412, %1408
  %1414 = call float @dx.op.binary.f32(i32 35, float %1410, float %1411)  ; FMax(a,b)
  %1415 = call float @dx.op.binary.f32(i32 36, float %1414, float %1413)  ; FMin(a,b)
  %1416 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %1347, float %1348, float %1415, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1417 = extractvalue %dx.types.ResRet.f32 %1416, 0
  %1418 = extractvalue %dx.types.ResRet.f32 %1416, 1
  %1419 = extractvalue %dx.types.ResRet.f32 %1416, 2
  %1420 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %1347, float %1348, float %1415, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1421 = extractvalue %dx.types.ResRet.f32 %1420, 0
  %1422 = extractvalue %dx.types.ResRet.f32 %1420, 1
  %1423 = extractvalue %dx.types.ResRet.f32 %1420, 2
  %1424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1425 = extractvalue %dx.types.CBufRet.f32 %1424, 1
  %1426 = fmul fast float %1425, %1421
  %1427 = fmul fast float %1425, %1422
  %1428 = fmul fast float %1425, %1423
  br label %1429

; <label>:1429                                    ; preds = %1377, %1334
  %1430 = phi float [ %1417, %1377 ], [ 1.000000e+00, %1334 ]
  %1431 = phi float [ %1418, %1377 ], [ 1.000000e+00, %1334 ]
  %1432 = phi float [ %1419, %1377 ], [ 1.000000e+00, %1334 ]
  %1433 = phi float [ %1426, %1377 ], [ 0.000000e+00, %1334 ]
  %1434 = phi float [ %1427, %1377 ], [ 0.000000e+00, %1334 ]
  %1435 = phi float [ %1428, %1377 ], [ 0.000000e+00, %1334 ]
  %1436 = fmul fast float %1433, %796
  %1437 = fmul fast float %1434, %796
  %1438 = fmul fast float %1435, %796
  %1439 = fmul fast float %1430, %1341
  %1440 = call float @dx.op.dot3.f32(i32 55, float %1430, float %1431, float %1432, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1441 = call float @dx.op.dot3.f32(i32 55, float %1436, float %1437, float %1438, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1442 = select i1 %111, float %1440, float %1430
  %1443 = select i1 %111, float %1440, float %1431
  %1444 = select i1 %111, float 1.000000e+00, float %1432
  %1445 = select i1 %111, float %1441, float %1436
  %1446 = select i1 %111, float 0.000000e+00, float %1437
  %1447 = select i1 %111, float 0.000000e+00, float %1438
  %1448 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1449 = extractvalue %dx.types.CBufRet.i32 %1448, 3
  %1450 = and i32 %1449, 3
  %1451 = icmp ne i32 %1450, 0
  %1452 = and i32 %1449, 4
  %1453 = icmp ne i32 %1452, 0
  %1454 = and i1 %1451, %1453
  %1455 = and i1 %111, %1454
  br i1 %1455, label %1456, label %1462

; <label>:1456                                    ; preds = %1429
  %1457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1458 = extractvalue %dx.types.CBufRet.f32 %1457, 1
  %1459 = fadd fast float %1439, -1.000000e+00
  %1460 = fmul fast float %1458, %1459
  %1461 = fadd fast float %1460, 1.000000e+00
  br label %1462

; <label>:1462                                    ; preds = %1456, %1429
  %1463 = phi float [ %1461, %1456 ], [ %1439, %1429 ]
  %1464 = fadd fast float %1338, %1335
  %1465 = fmul fast float %1442, %1464
  %1466 = fadd fast float %1465, %1445
  %1467 = fadd fast float %1339, %1336
  %1468 = fmul fast float %1443, %1467
  %1469 = fadd fast float %1468, %1446
  %1470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1471 = extractvalue %dx.types.CBufRet.f32 %1470, 0
  br i1 %111, label %1472, label %1493

; <label>:1472                                    ; preds = %1462
  %1473 = fadd fast float %1466, %1469
  %1474 = fmul fast float %1471, %1473
  %1475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1476 = extractvalue %dx.types.CBufRet.f32 %1475, 3
  %1477 = extractvalue %dx.types.CBufRet.f32 %800, 1
  %1478 = fsub fast float %803, %1477
  %1479 = extractvalue %dx.types.CBufRet.f32 %800, 2
  %1480 = fmul fast float %1478, %1479
  %1481 = call float @dx.op.unary.f32(i32 7, float %1480)  ; Saturate(value)
  %1482 = fsub fast float %1481, %1476
  %1483 = fmul fast float %1482, %1463
  %1484 = fadd fast float %1483, %1476
  %1485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1486 = extractvalue %dx.types.CBufRet.f32 %1485, 0
  %1487 = fsub fast float %1484, %1486
  %1488 = fmul fast float %1487, 1.000000e+01
  %1489 = call float @dx.op.unary.f32(i32 7, float %1488)  ; Saturate(value)
  %1490 = fmul fast float %1489, %796
  %1491 = fsub fast float %796, %1490
  %1492 = fmul fast float %1491, %1484
  br label %1505

; <label>:1493                                    ; preds = %1462
  %1494 = fadd fast float %1340, %1337
  %1495 = fmul fast float %1444, %1494
  %1496 = fadd fast float %1495, %1447
  %1497 = fmul fast float %1471, %1466
  %1498 = fmul fast float %1471, %1469
  %1499 = fmul fast float %1471, %1496
  %1500 = call float @dx.op.binary.f32(i32 35, float %1498, float %1499)  ; FMax(a,b)
  %1501 = call float @dx.op.binary.f32(i32 35, float %1497, float %1500)  ; FMax(a,b)
  %1502 = call float @dx.op.binary.f32(i32 35, float %1501, float %796)  ; FMax(a,b)
  %1503 = fcmp fast ugt float %1502, 0x3F10000000000000
  br i1 %1503, label %1505, label %1504

; <label>:1504                                    ; preds = %1493
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1505

; <label>:1505                                    ; preds = %1504, %1493, %1472
  %1506 = phi float [ %1474, %1472 ], [ %1497, %1504 ], [ %1497, %1493 ]
  %1507 = phi float [ %1492, %1472 ], [ %1498, %1504 ], [ %1498, %1493 ]
  %1508 = phi float [ %1491, %1472 ], [ %1499, %1504 ], [ %1499, %1493 ]
  %1509 = phi float [ %1491, %1472 ], [ %796, %1504 ], [ %796, %1493 ]
  %1510 = fadd fast float %553, 0x3FE3C6EF40000000
  %1511 = call float @dx.op.unary.f32(i32 22, float %1510)  ; Frc(value)
  %1512 = call float @dx.op.unary.f32(i32 23, float %1506)  ; Log(value)
  %1513 = fadd fast float %1512, -7.000000e+00
  %1514 = call float @dx.op.unary.f32(i32 21, float %1513)  ; Exp(value)
  %1515 = fmul fast float %1511, 2.000000e+00
  %1516 = fadd fast float %1515, -1.000000e+00
  %1517 = fmul fast float %1514, %1516
  %1518 = fcmp fast ogt float %1506, 0.000000e+00
  %1519 = select i1 %1518, float %1517, float 0.000000e+00
  %1520 = fadd fast float %1519, %1506
  %1521 = fadd fast float %553, 0x3FF3C6EF40000000
  %1522 = call float @dx.op.unary.f32(i32 22, float %1521)  ; Frc(value)
  %1523 = call float @dx.op.unary.f32(i32 23, float %1507)  ; Log(value)
  %1524 = fadd fast float %1523, -7.000000e+00
  %1525 = call float @dx.op.unary.f32(i32 21, float %1524)  ; Exp(value)
  %1526 = fmul fast float %1522, 2.000000e+00
  %1527 = fadd fast float %1526, -1.000000e+00
  %1528 = fmul fast float %1525, %1527
  %1529 = fcmp fast ogt float %1507, 0.000000e+00
  %1530 = select i1 %1529, float %1528, float 0.000000e+00
  %1531 = fadd fast float %1530, %1507
  %1532 = fadd fast float %553, 0x3FFDAA66E0000000
  %1533 = call float @dx.op.unary.f32(i32 22, float %1532)  ; Frc(value)
  %1534 = call float @dx.op.unary.f32(i32 23, float %1508)  ; Log(value)
  %1535 = fadd fast float %1534, -6.000000e+00
  %1536 = call float @dx.op.unary.f32(i32 21, float %1535)  ; Exp(value)
  %1537 = fmul fast float %1533, 2.000000e+00
  %1538 = fadd fast float %1537, -1.000000e+00
  %1539 = fmul fast float %1536, %1538
  %1540 = fcmp fast ogt float %1508, 0.000000e+00
  %1541 = select i1 %1540, float %1539, float 0.000000e+00
  %1542 = fadd fast float %1541, %1508
  %1543 = select i1 %111, float %1507, float %1531
  %1544 = select i1 %111, float %1508, float %1542
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1545 = call float @dx.op.binary.f32(i32 36, float %1520, float 3.225500e+04)  ; FMin(a,b)
  %1546 = call float @dx.op.binary.f32(i32 36, float %1543, float 3.225500e+04)  ; FMin(a,b)
  %1547 = call float @dx.op.binary.f32(i32 36, float %1544, float 3.225500e+04)  ; FMin(a,b)
  %1548 = call float @dx.op.binary.f32(i32 36, float %1509, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1545)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1546)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1547)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1548)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1509)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1509)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1509)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1509)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

