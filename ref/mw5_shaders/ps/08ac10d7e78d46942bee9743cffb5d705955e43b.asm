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
; shader hash: 5d1e17359055a4149f6baf54883424b1
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
  %696 = add i32 %24, 48
  %697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %696, i32 undef)  ; BufferLoad(srv,index,wot)
  %698 = extractvalue %dx.types.ResRet.i32 %697, 0
  %699 = lshr i32 %698, 22
  %700 = shl nuw nsw i32 %699, 5
  %701 = call float @dx.op.legacyF16ToF32(i32 131, i32 %700)  ; LegacyF16ToF32(value)
  %702 = fmul fast float %701, %693
  %703 = select i1 %111, float %702, float %693
  %704 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %19, float %33, float %34, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %705 = extractvalue %dx.types.ResRet.f32 %704, 0
  %706 = extractvalue %dx.types.ResRet.f32 %704, 1
  %707 = extractvalue %dx.types.ResRet.f32 %704, 2
  %708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %709 = extractvalue %dx.types.CBufRet.f32 %708, 1
  %710 = fmul fast float %709, %705
  %711 = fmul fast float %709, %706
  %712 = fmul fast float %709, %707
  %713 = fadd fast float %657, 0xBFB99999A0000000
  %714 = call float @dx.op.unary.f32(i32 7, float %713)  ; Saturate(value)
  %715 = fmul fast float %714, 0x3FF1C71C80000000
  %716 = fsub fast float 1.000000e+00, %715
  %717 = call float @dx.op.unary.f32(i32 7, float %716)  ; Saturate(value)
  %718 = fmul fast float %646, %629
  %719 = fmul fast float %663, %663
  %720 = fmul fast float %719, %718
  %721 = fmul fast float %720, %717
  %722 = fmul fast float %647, %630
  %723 = fmul fast float %667, %667
  %724 = fmul fast float %723, %722
  %725 = fmul fast float %724, %717
  %726 = fmul fast float %648, %631
  %727 = fmul fast float %671, %671
  %728 = fmul fast float %727, %726
  %729 = fmul fast float %728, %717
  %730 = call float @dx.op.unary.f32(i32 7, float %721)  ; Saturate(value)
  %731 = call float @dx.op.unary.f32(i32 7, float %725)  ; Saturate(value)
  %732 = call float @dx.op.unary.f32(i32 7, float %729)  ; Saturate(value)
  %733 = fmul fast float %703, %634
  %734 = fmul fast float %694, %635
  %735 = fmul fast float %695, %636
  %736 = call float @dx.op.dot3.f32(i32 55, float %733, float %734, float %735, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %737 = select i1 %111, float 0.000000e+00, float %733
  %738 = select i1 %111, float %736, float %734
  %739 = select i1 %111, float 0.000000e+00, float %735
  %740 = fmul fast float %549, %703
  %741 = fmul fast float %550, %694
  %742 = fmul fast float %551, %695
  %743 = call float @dx.op.dot3.f32(i32 55, float %730, float %731, float %732, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %744 = add i32 %24, 32
  %745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %744, i32 undef)  ; BufferLoad(srv,index,wot)
  %746 = extractvalue %dx.types.ResRet.i32 %745, 0
  %747 = and i32 %746, 255
  %748 = uitofp i32 %747 to float
  %749 = lshr i32 %746, 8
  %750 = and i32 %749, 255
  %751 = uitofp i32 %750 to float
  %752 = fmul fast float %751, %743
  %753 = fadd fast float %752, %748
  %754 = fmul fast float %753, 0x3F70101020000000
  %755 = call float @dx.op.unary.f32(i32 7, float %754)  ; Saturate(value)
  %756 = and i32 %131, 8192
  %757 = icmp eq i32 %756, 0
  %758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %759 = extractvalue %dx.types.CBufRet.f32 %758, 0
  br i1 %757, label %766, label %760, !dx.controlflow.hints !66

; <label>:760                                     ; preds = %628
  %761 = add i32 %128, 176
  %762 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %761, i32 undef)  ; BufferLoad(srv,index,wot)
  %763 = extractvalue %dx.types.ResRet.f32 %762, 0
  %764 = fcmp fast oge float %763, 0.000000e+00
  %765 = select i1 %764, float %763, float %759
  br label %773

; <label>:766                                     ; preds = %628
  %767 = add i32 %24, 104
  %768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %767, i32 undef)  ; BufferLoad(srv,index,wot)
  %769 = extractvalue %dx.types.ResRet.i32 %768, 0
  %770 = bitcast i32 %769 to float
  %771 = fcmp fast oge float %770, 0.000000e+00
  %772 = select i1 %771, float %770, float %759
  br label %773

; <label>:773                                     ; preds = %766, %760
  %774 = phi float [ %765, %760 ], [ %772, %766 ]
  %775 = fmul fast float %633, %632
  %776 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %221, i32 %222, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %777 = extractvalue %dx.types.ResRet.i32 %776, 0
  %778 = lshr i32 %777, 18
  %779 = uitofp i32 %778 to float
  %780 = fmul fast float %779, 0x3F4C00EBA0000000
  %781 = call float @dx.op.unary.f32(i32 21, float %780)  ; Exp(value)
  %782 = fadd fast float %781, -1.000000e+00
  %783 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %10, i32 0)  ; GetDimensions(handle,mipLevel)
  %784 = extractvalue %dx.types.Dimensions %783, 0
  %785 = sitofp i32 %784 to float
  %786 = extractvalue %dx.types.Dimensions %783, 1
  %787 = sitofp i32 %786 to float
  %788 = fcmp fast oge float %219, %785
  %789 = fcmp fast oge float %220, %787
  %790 = or i1 %788, %789
  %791 = select i1 %790, float 0x4197782600000000, float %782
  %792 = icmp eq i32 %127, 3
  %793 = fcmp fast ogt float %48, %791
  %794 = and i1 %245, %793
  %795 = or i1 %792, %794
  %796 = icmp eq i32 %127, 2
  %797 = fcmp fast ole float %48, %791
  %798 = and i1 %796, %797
  %799 = or i1 %798, %795
  %800 = fmul fast float %740, %710
  %801 = fmul fast float %741, %711
  %802 = fmul fast float %742, %712
  %803 = fadd fast float %800, %737
  %804 = fadd fast float %738, %801
  %805 = fadd fast float %802, %739
  %806 = fmul fast float %803, %632
  %807 = fmul fast float %804, %632
  %808 = fmul fast float %805, %632
  %809 = fmul fast float %710, %632
  %810 = fmul fast float %711, %632
  %811 = fmul fast float %712, %632
  %812 = fsub fast float 1.000000e+00, %632
  %813 = call float @dx.op.dot3.f32(i32 55, float %812, float %812, float %812, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %814 = fsub fast float 1.000000e+00, %813
  %815 = fmul fast float %774, %755
  %816 = fsub fast float 1.000000e+00, %775
  %817 = fsub fast float %816, %755
  %818 = call float @dx.op.unary.f32(i32 7, float %817)  ; Saturate(value)
  %819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %820 = extractvalue %dx.types.CBufRet.f32 %819, 3
  %821 = fmul fast float %820, %818
  %822 = fadd fast float %821, %815
  %823 = and i32 %131, 1048576
  %824 = icmp eq i32 %823, 0
  br i1 %824, label %916, label %825, !dx.controlflow.hints !67

; <label>:825                                     ; preds = %773
  %826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %827 = extractvalue %dx.types.CBufRet.f32 %826, 2
  %828 = extractvalue %dx.types.CBufRet.f32 %826, 3
  %829 = fmul fast float %827, %53
  %830 = fmul fast float %828, %54
  %831 = call float @dx.op.unary.f32(i32 7, float %829)  ; Saturate(value)
  %832 = call float @dx.op.unary.f32(i32 7, float %830)  ; Saturate(value)
  %833 = select i1 %799, i32 2, i32 0
  %834 = or i32 %833, 1
  %835 = uitofp i32 %834 to float
  %836 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %831, float %832, float %835, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %837 = extractvalue %dx.types.ResRet.f32 %836, 0
  %838 = extractvalue %dx.types.ResRet.f32 %836, 1
  %839 = extractvalue %dx.types.ResRet.f32 %836, 2
  %840 = extractvalue %dx.types.ResRet.f32 %836, 3
  %841 = add nuw nsw i32 %833, 2
  %842 = uitofp i32 %841 to float
  %843 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %831, float %832, float %842, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %844 = extractvalue %dx.types.ResRet.f32 %843, 0
  %845 = extractvalue %dx.types.ResRet.f32 %843, 1
  %846 = extractvalue %dx.types.ResRet.f32 %843, 2
  %847 = extractvalue %dx.types.ResRet.f32 %843, 3
  %848 = call float @dx.op.binary.f32(i32 35, float %838, float %839)  ; FMax(a,b)
  %849 = call float @dx.op.binary.f32(i32 35, float %837, float %848)  ; FMax(a,b)
  %850 = call float @dx.op.binary.f32(i32 35, float %849, float %840)  ; FMax(a,b)
  %851 = call float @dx.op.binary.f32(i32 36, float %845, float %846)  ; FMin(a,b)
  %852 = call float @dx.op.binary.f32(i32 36, float %844, float %851)  ; FMin(a,b)
  %853 = call float @dx.op.binary.f32(i32 36, float %852, float %847)  ; FMin(a,b)
  %854 = fmul fast float %850, 2.550000e+02
  %855 = fadd fast float %854, 0x3F70101020000000
  %856 = fptoui float %855 to i32
  %857 = fmul fast float %853, 2.550000e+02
  %858 = fadd fast float %857, 0x3F70101020000000
  %859 = fptoui float %858 to i32
  %860 = icmp ult i32 %856, %859
  br i1 %860, label %861, label %909

; <label>:861                                     ; preds = %825
  %862 = fcmp fast ogt float %47, 9.843750e-01
  %863 = fadd fast float %48, -4.000000e+00
  %864 = select i1 %862, float -4.000000e+00, float %863
  %865 = call float @dx.op.binary.f32(i32 35, float %864, float 0.000000e+00)  ; FMax(a,b)
  %866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %867 = extractvalue %dx.types.CBufRet.f32 %866, 0
  %868 = fadd fast float %867, %865
  %869 = extractvalue %dx.types.CBufRet.f32 %866, 2
  %870 = fmul fast float %868, %869
  %871 = call float @dx.op.unary.f32(i32 23, float %870)  ; Log(value)
  %872 = extractvalue %dx.types.CBufRet.f32 %866, 3
  %873 = fmul fast float %872, %871
  %874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %875 = extractvalue %dx.types.CBufRet.f32 %874, 2
  %876 = fmul fast float %873, %875
  %877 = call float @dx.op.unary.f32(i32 7, float %876)  ; Saturate(value)
  %878 = uitofp i32 %856 to float
  %879 = uitofp i32 %859 to float
  %880 = fadd fast float %878, 5.000000e-01
  %881 = fadd fast float %879, 5.000000e-01
  %882 = fmul fast float %875, %880
  %883 = fmul fast float %875, %881
  %884 = fadd fast float %882, 0x3F0FFB4800000000
  %885 = fadd fast float %883, 0xBF0FFB4800000000
  %886 = call float @dx.op.binary.f32(i32 35, float %877, float %884)  ; FMax(a,b)
  %887 = call float @dx.op.binary.f32(i32 36, float %886, float %885)  ; FMin(a,b)
  %888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %889 = extractvalue %dx.types.CBufRet.f32 %888, 1
  %890 = extractvalue %dx.types.CBufRet.f32 %888, 2
  %891 = extractvalue %dx.types.CBufRet.f32 %888, 0
  %892 = select i1 %799, float %891, float 0.000000e+00
  %893 = fmul fast float %889, %887
  %894 = fadd fast float %892, %893
  %895 = fadd fast float %892, %890
  %896 = fsub fast float %889, %890
  %897 = fadd fast float %896, %892
  %898 = call float @dx.op.binary.f32(i32 35, float %894, float %895)  ; FMax(a,b)
  %899 = call float @dx.op.binary.f32(i32 36, float %898, float %897)  ; FMin(a,b)
  %900 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %18, float %831, float %832, float %899, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %901 = extractvalue %dx.types.ResRet.f32 %900, 0
  %902 = extractvalue %dx.types.ResRet.f32 %900, 1
  %903 = extractvalue %dx.types.ResRet.f32 %900, 2
  %904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %905 = extractvalue %dx.types.CBufRet.f32 %904, 1
  %906 = fmul fast float %905, %901
  %907 = fmul fast float %905, %902
  %908 = fmul fast float %905, %903
  br label %909

; <label>:909                                     ; preds = %861, %825
  %910 = phi float [ %906, %861 ], [ 1.000000e+00, %825 ]
  %911 = phi float [ %907, %861 ], [ 1.000000e+00, %825 ]
  %912 = phi float [ %908, %861 ], [ 1.000000e+00, %825 ]
  %913 = fmul fast float %910, %806
  %914 = fmul fast float %911, %807
  %915 = fmul fast float %912, %808
  br label %916

; <label>:916                                     ; preds = %909, %773
  %917 = phi float [ %913, %909 ], [ %806, %773 ]
  %918 = phi float [ %914, %909 ], [ %807, %773 ]
  %919 = phi float [ %915, %909 ], [ %808, %773 ]
  %920 = and i32 %131, 2097152
  %921 = icmp eq i32 %920, 0
  br i1 %921, label %926, label %922, !dx.controlflow.hints !68

; <label>:922                                     ; preds = %916
  %923 = add i32 %128, 192
  %924 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %923, i32 undef)  ; BufferLoad(srv,index,wot)
  %925 = extractvalue %dx.types.ResRet.f32 %924, 0
  br label %929

; <label>:926                                     ; preds = %916
  %927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %928 = extractvalue %dx.types.CBufRet.f32 %927, 3
  br label %929

; <label>:929                                     ; preds = %926, %922
  %930 = phi float [ %925, %922 ], [ %928, %926 ]
  %931 = fmul fast float %809, %730
  %932 = fmul fast float %810, %731
  %933 = fmul fast float %811, %732
  br i1 %794, label %934, label %1043

; <label>:934                                     ; preds = %929
  %935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %936 = extractvalue %dx.types.CBufRet.f32 %935, 2
  %937 = extractvalue %dx.types.CBufRet.f32 %935, 3
  %938 = fmul fast float %936, %53
  %939 = fmul fast float %937, %54
  %940 = call float @dx.op.unary.f32(i32 7, float %938)  ; Saturate(value)
  %941 = call float @dx.op.unary.f32(i32 7, float %939)  ; Saturate(value)
  %942 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %940, float %941, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %943 = extractvalue %dx.types.ResRet.f32 %942, 0
  %944 = extractvalue %dx.types.ResRet.f32 %942, 1
  %945 = extractvalue %dx.types.ResRet.f32 %942, 2
  %946 = extractvalue %dx.types.ResRet.f32 %942, 3
  %947 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %940, float %941, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %948 = extractvalue %dx.types.ResRet.f32 %947, 0
  %949 = extractvalue %dx.types.ResRet.f32 %947, 1
  %950 = extractvalue %dx.types.ResRet.f32 %947, 2
  %951 = extractvalue %dx.types.ResRet.f32 %947, 3
  %952 = call float @dx.op.binary.f32(i32 35, float %944, float %945)  ; FMax(a,b)
  %953 = call float @dx.op.binary.f32(i32 35, float %943, float %952)  ; FMax(a,b)
  %954 = call float @dx.op.binary.f32(i32 35, float %953, float %946)  ; FMax(a,b)
  %955 = call float @dx.op.binary.f32(i32 36, float %949, float %950)  ; FMin(a,b)
  %956 = call float @dx.op.binary.f32(i32 36, float %948, float %955)  ; FMin(a,b)
  %957 = call float @dx.op.binary.f32(i32 36, float %956, float %951)  ; FMin(a,b)
  %958 = fmul fast float %954, 2.550000e+02
  %959 = fadd fast float %958, 0x3F70101020000000
  %960 = fptoui float %959 to i32
  %961 = fmul fast float %957, 2.550000e+02
  %962 = fadd fast float %961, 0x3F70101020000000
  %963 = fptoui float %962 to i32
  %964 = icmp ult i32 %960, %963
  br i1 %964, label %965, label %1016

; <label>:965                                     ; preds = %934
  %966 = fcmp fast ogt float %47, 9.843750e-01
  %967 = fadd fast float %48, -4.000000e+00
  %968 = select i1 %966, float -4.000000e+00, float %967
  %969 = call float @dx.op.binary.f32(i32 35, float %968, float 0.000000e+00)  ; FMax(a,b)
  %970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %971 = extractvalue %dx.types.CBufRet.f32 %970, 0
  %972 = fadd fast float %971, %969
  %973 = extractvalue %dx.types.CBufRet.f32 %970, 2
  %974 = fmul fast float %972, %973
  %975 = call float @dx.op.unary.f32(i32 23, float %974)  ; Log(value)
  %976 = extractvalue %dx.types.CBufRet.f32 %970, 3
  %977 = fmul fast float %976, %975
  %978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %979 = extractvalue %dx.types.CBufRet.f32 %978, 2
  %980 = fmul fast float %977, %979
  %981 = call float @dx.op.unary.f32(i32 7, float %980)  ; Saturate(value)
  %982 = uitofp i32 %960 to float
  %983 = uitofp i32 %963 to float
  %984 = fadd fast float %982, 5.000000e-01
  %985 = fadd fast float %983, 5.000000e-01
  %986 = fmul fast float %979, %984
  %987 = fmul fast float %979, %985
  %988 = fadd fast float %986, 0x3F0FFB4800000000
  %989 = fadd fast float %987, 0xBF0FFB4800000000
  %990 = call float @dx.op.binary.f32(i32 35, float %981, float %988)  ; FMax(a,b)
  %991 = call float @dx.op.binary.f32(i32 36, float %990, float %989)  ; FMin(a,b)
  %992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %993 = extractvalue %dx.types.CBufRet.f32 %992, 1
  %994 = extractvalue %dx.types.CBufRet.f32 %992, 2
  %995 = extractvalue %dx.types.CBufRet.f32 %992, 0
  %996 = fmul fast float %993, %991
  %997 = fadd fast float %995, %996
  %998 = fadd fast float %995, %994
  %999 = fsub fast float %993, %994
  %1000 = fadd fast float %999, %995
  %1001 = call float @dx.op.binary.f32(i32 35, float %997, float %998)  ; FMax(a,b)
  %1002 = call float @dx.op.binary.f32(i32 36, float %1001, float %1000)  ; FMin(a,b)
  %1003 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %940, float %941, float %1002, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1004 = extractvalue %dx.types.ResRet.f32 %1003, 0
  %1005 = extractvalue %dx.types.ResRet.f32 %1003, 1
  %1006 = extractvalue %dx.types.ResRet.f32 %1003, 2
  %1007 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %940, float %941, float %1002, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1008 = extractvalue %dx.types.ResRet.f32 %1007, 0
  %1009 = extractvalue %dx.types.ResRet.f32 %1007, 1
  %1010 = extractvalue %dx.types.ResRet.f32 %1007, 2
  %1011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1012 = extractvalue %dx.types.CBufRet.f32 %1011, 1
  %1013 = fmul fast float %1012, %1008
  %1014 = fmul fast float %1012, %1009
  %1015 = fmul fast float %1012, %1010
  br label %1016

; <label>:1016                                    ; preds = %965, %934
  %1017 = phi float [ %1004, %965 ], [ 1.000000e+00, %934 ]
  %1018 = phi float [ %1005, %965 ], [ 1.000000e+00, %934 ]
  %1019 = phi float [ %1006, %965 ], [ 1.000000e+00, %934 ]
  %1020 = phi float [ %1013, %965 ], [ 0.000000e+00, %934 ]
  %1021 = phi float [ %1014, %965 ], [ 0.000000e+00, %934 ]
  %1022 = phi float [ %1015, %965 ], [ 0.000000e+00, %934 ]
  %1023 = fmul fast float %1020, %814
  %1024 = fmul fast float %1021, %814
  %1025 = fmul fast float %1022, %814
  %1026 = call float @dx.op.dot3.f32(i32 55, float %1017, float %1018, float %1019, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1027 = call float @dx.op.dot3.f32(i32 55, float %1023, float %1024, float %1025, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1028 = select i1 %111, float %1026, float %1017
  %1029 = select i1 %111, float %1026, float %1018
  %1030 = select i1 %111, float 1.000000e+00, float %1019
  %1031 = select i1 %111, float %1027, float %1023
  %1032 = select i1 %111, float 0.000000e+00, float %1024
  %1033 = select i1 %111, float 0.000000e+00, float %1025
  %1034 = fmul fast float %1028, %931
  %1035 = fmul fast float %1029, %932
  %1036 = fmul fast float %1030, %933
  %1037 = fadd fast float %1034, %1031
  %1038 = fadd fast float %1035, %1032
  %1039 = fadd fast float %1033, %1036
  %1040 = fmul fast float %1028, %917
  %1041 = fmul fast float %1029, %918
  %1042 = fmul fast float %1030, %919
  br label %1043

; <label>:1043                                    ; preds = %1016, %929
  %1044 = phi float [ %791, %1016 ], [ %48, %929 ]
  %1045 = phi float [ %1037, %1016 ], [ %931, %929 ]
  %1046 = phi float [ %1038, %1016 ], [ %932, %929 ]
  %1047 = phi float [ %1039, %1016 ], [ %933, %929 ]
  %1048 = phi float [ %1040, %1016 ], [ %917, %929 ]
  %1049 = phi float [ %1041, %1016 ], [ %918, %929 ]
  %1050 = phi float [ %1042, %1016 ], [ %919, %929 ]
  %1051 = phi float [ %1017, %1016 ], [ 1.000000e+00, %929 ]
  br i1 %799, label %1353, label %1052

; <label>:1052                                    ; preds = %1043
  %1053 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %19, float %33, float %34, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1054 = extractvalue %dx.types.ResRet.f32 %1053, 0
  %1055 = extractvalue %dx.types.ResRet.f32 %1053, 1
  %1056 = extractvalue %dx.types.ResRet.f32 %1053, 2
  %1057 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %19, float %33, float %34, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1058 = extractvalue %dx.types.ResRet.f32 %1057, 0
  %1059 = extractvalue %dx.types.ResRet.f32 %1057, 1
  %1060 = extractvalue %dx.types.ResRet.f32 %1057, 2
  %1061 = fmul fast float %1054, %814
  %1062 = fmul fast float %1055, %814
  %1063 = fmul fast float %1056, %814
  %1064 = fmul fast float %1058, %1051
  %1065 = call float @dx.op.dot3.f32(i32 55, float %1058, float %1059, float %1060, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1066 = call float @dx.op.dot3.f32(i32 55, float %1061, float %1062, float %1063, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1067 = select i1 %111, float %1065, float %1058
  %1068 = select i1 %111, float %1065, float %1059
  %1069 = select i1 %111, float 1.000000e+00, float %1060
  %1070 = select i1 %111, float %1066, float %1061
  %1071 = select i1 %111, float 0.000000e+00, float %1062
  %1072 = select i1 %111, float 0.000000e+00, float %1063
  %1073 = fmul fast float %1067, %1045
  %1074 = fmul fast float %1068, %1046
  %1075 = fmul fast float %1069, %1047
  %1076 = fadd fast float %1073, %1070
  %1077 = fadd fast float %1074, %1071
  %1078 = fadd fast float %1075, %1072
  %1079 = fmul fast float %1067, %1048
  %1080 = fmul fast float %1068, %1049
  %1081 = fmul fast float %1069, %1050
  %1082 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1083 = extractvalue %dx.types.CBufRet.i32 %1082, 0
  %1084 = icmp eq i32 %1083, 0
  br i1 %1084, label %1353, label %1085, !dx.controlflow.hints !69

; <label>:1085                                    ; preds = %1052
  %1086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1087 = extractvalue %dx.types.CBufRet.f32 %1086, 2
  %1088 = extractvalue %dx.types.CBufRet.f32 %1086, 3
  %1089 = fmul fast float %1087, %53
  %1090 = fmul fast float %1088, %54
  %1091 = fmul fast float %1089, 2.000000e+00
  %1092 = fmul fast float %1090, 2.000000e+00
  %1093 = fsub fast float 1.000000e+00, %1091
  %1094 = fsub fast float 1.000000e+00, %1092
  %1095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1096 = extractvalue %dx.types.CBufRet.f32 %1095, 0
  %1097 = extractvalue %dx.types.CBufRet.f32 %1095, 1
  %1098 = extractvalue %dx.types.CBufRet.f32 %1095, 2
  %1099 = fmul fast float %1093, %1096
  %1100 = fmul fast float %1093, %1097
  %1101 = fmul fast float %1093, %1098
  %1102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1103 = extractvalue %dx.types.CBufRet.f32 %1102, 0
  %1104 = extractvalue %dx.types.CBufRet.f32 %1102, 1
  %1105 = extractvalue %dx.types.CBufRet.f32 %1102, 2
  %1106 = fmul fast float %1094, %1103
  %1107 = fmul fast float %1094, %1104
  %1108 = fmul fast float %1094, %1105
  %1109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1110 = extractvalue %dx.types.CBufRet.f32 %1109, 0
  %1111 = extractvalue %dx.types.CBufRet.f32 %1109, 1
  %1112 = extractvalue %dx.types.CBufRet.f32 %1109, 2
  %1113 = fadd fast float %1106, %1110
  %1114 = fadd fast float %1113, %1099
  %1115 = fadd fast float %1107, %1111
  %1116 = fadd fast float %1115, %1100
  %1117 = fadd fast float %1108, %1112
  %1118 = fadd fast float %1117, %1101
  %1119 = fmul fast float %1114, %1044
  %1120 = fmul fast float %1116, %1044
  %1121 = fmul fast float %1118, %1044
  %1122 = fmul fast float %1119, %1119
  %1123 = fmul fast float %1120, %1120
  %1124 = fadd fast float %1122, %1123
  %1125 = fmul fast float %1121, %1121
  %1126 = fadd fast float %1124, %1125
  %1127 = call float @dx.op.unary.f32(i32 24, float %1126)  ; Sqrt(value)
  %1128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1129 = extractvalue %dx.types.CBufRet.f32 %1128, 0
  %1130 = fsub fast float %1127, %1129
  %1131 = extractvalue %dx.types.CBufRet.f32 %1128, 2
  %1132 = fmul fast float %1130, %1131
  %1133 = call float @dx.op.unary.f32(i32 7, float %1132)  ; Saturate(value)
  %1134 = fadd fast float %1133, -5.000000e-01
  %1135 = fmul fast float %1134, 2.000000e+00
  %1136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1137 = extractvalue %dx.types.CBufRet.f32 %1136, 2
  %1138 = call float @dx.op.binary.f32(i32 36, float %1137, float %1135)  ; FMin(a,b)
  %1139 = fsub fast float -0.000000e+00, %1137
  %1140 = fcmp fast ogt float %1138, %1139
  br i1 %1140, label %1141, label %1353, !dx.controlflow.hints !70

; <label>:1141                                    ; preds = %1085
  %1142 = fmul fast float %1138, 5.000000e-01
  %1143 = fadd fast float %1142, 5.000000e-01
  %1144 = call float @dx.op.unary.f32(i32 22, float %1143)  ; Frc(value)
  %1145 = call float @dx.op.unary.f32(i32 27, float %1144)  ; Round_ni(value)
  %1146 = call float @dx.op.unary.f32(i32 22, float %1144)  ; Frc(value)
  %1147 = fmul fast float %1146, 2.000000e+00
  %1148 = fadd fast float %1147, -1.000000e+00
  %1149 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %19, float %1089, float %1090, float %1145, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1150 = extractvalue %dx.types.ResRet.f32 %1149, 0
  %1151 = extractvalue %dx.types.ResRet.f32 %1149, 1
  %1152 = extractvalue %dx.types.ResRet.f32 %1149, 2
  %1153 = extractvalue %dx.types.ResRet.f32 %1149, 3
  %1154 = fadd fast float %1150, -5.000000e-01
  %1155 = fadd fast float %1152, -5.000000e-01
  %1156 = fmul fast float %1154, 0xBFD5555560000000
  %1157 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1155, float %1156)  ; FMad(a,b,c)
  %1158 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1151, float 0.000000e+00)  ; FMad(a,b,c)
  %1159 = fadd fast float %1158, %1153
  %1160 = fmul fast float %1154, -7.500000e-01
  %1161 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1155, float %1160)  ; FMad(a,b,c)
  %1162 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1151, float 0.000000e+00)  ; FMad(a,b,c)
  %1163 = fadd fast float %1162, %1153
  %1164 = call float @dx.op.binary.f32(i32 35, float %1157, float -1.000000e+00)  ; FMax(a,b)
  %1165 = call float @dx.op.binary.f32(i32 35, float %1159, float -1.000000e+00)  ; FMax(a,b)
  %1166 = call float @dx.op.binary.f32(i32 35, float %1161, float -1.000000e+00)  ; FMax(a,b)
  %1167 = call float @dx.op.binary.f32(i32 35, float %1163, float -1.000000e+00)  ; FMax(a,b)
  %1168 = call float @dx.op.binary.f32(i32 36, float %1164, float 1.000000e+00)  ; FMin(a,b)
  %1169 = call float @dx.op.binary.f32(i32 36, float %1165, float 1.000000e+00)  ; FMin(a,b)
  %1170 = call float @dx.op.binary.f32(i32 36, float %1166, float 1.000000e+00)  ; FMin(a,b)
  %1171 = call float @dx.op.binary.f32(i32 36, float %1167, float 1.000000e+00)  ; FMin(a,b)
  %1172 = fcmp fast olt float %1168, 0x3FEFFF8020000000
  br i1 %1172, label %1173, label %1288, !dx.controlflow.hints !71

; <label>:1173                                    ; preds = %1141
  %1174 = extractvalue %dx.types.CBufRet.f32 %1136, 3
  %1175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1176 = extractvalue %dx.types.CBufRet.f32 %1175, 0
  %1177 = extractvalue %dx.types.CBufRet.f32 %1175, 1
  %1178 = extractvalue %dx.types.CBufRet.f32 %1175, 2
  %1179 = extractvalue %dx.types.CBufRet.f32 %1175, 3
  %1180 = fsub fast float %1176, %1168
  %1181 = fsub fast float %1177, %1169
  %1182 = fsub fast float %1178, %1170
  %1183 = fsub fast float %1179, %1171
  %1184 = fmul fast float %1180, %1174
  %1185 = fmul fast float %1181, %1174
  %1186 = fmul fast float %1182, %1174
  %1187 = fmul fast float %1183, %1174
  %1188 = fadd fast float %1184, %1168
  %1189 = fadd fast float %1185, %1169
  %1190 = fsub fast float -0.000000e+00, %1189
  %1191 = fadd fast float %1186, %1170
  %1192 = fadd fast float %1187, %1171
  %1193 = fmul fast float %1188, %1188
  %1194 = fsub fast float %1189, %1193
  %1195 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1194)  ; FMax(a,b)
  %1196 = fdiv fast float 1.000000e+00, %1195
  %1197 = fmul fast float %1189, %1188
  %1198 = fsub fast float %1191, %1197
  %1199 = fsub fast float %1148, %1188
  %1200 = fmul fast float %1148, %1148
  %1201 = fsub fast float %1200, %1189
  %1202 = fmul fast float %1199, %1196
  %1203 = fmul fast float %1202, %1198
  %1204 = fsub fast float %1201, %1203
  %1205 = fmul fast float %1189, %1189
  %1206 = fsub fast float %1192, %1205
  %1207 = fmul fast float %1198, %1198
  %1208 = fmul fast float %1207, %1196
  %1209 = fsub fast float %1206, %1208
  %1210 = fdiv fast float %1204, %1209
  %1211 = fmul fast float %1198, %1210
  %1212 = fsub fast float %1199, %1211
  %1213 = fmul fast float %1212, %1196
  %1214 = fmul fast float %1213, %1188
  %1215 = fsub fast float 1.000000e+00, %1214
  %1216 = fmul fast float %1189, %1210
  %1217 = fsub fast float %1215, %1216
  %1218 = fmul fast float %1213, %1213
  %1219 = fmul fast float %1210, 4.000000e+00
  %1220 = fmul fast float %1219, %1217
  %1221 = fsub fast float %1218, %1220
  %1222 = call float @dx.op.unary.f32(i32 24, float %1221)  ; Sqrt(value)
  %1223 = fcmp fast oge float %1213, 0.000000e+00
  %1224 = fsub fast float -0.000000e+00, %1222
  %1225 = select i1 %1223, float %1224, float %1222
  %1226 = fsub fast float %1225, %1213
  %1227 = fdiv fast float %1226, %1210
  %1228 = fdiv fast float %1217, %1226
  %1229 = fmul fast float %1227, 5.000000e-01
  %1230 = fmul fast float %1228, 2.000000e+00
  %1231 = select i1 %1223, float %1229, float %1230
  %1232 = select i1 %1223, float %1230, float %1229
  %1233 = call float @dx.op.binary.f32(i32 35, float %1231, float %1232)  ; FMax(a,b)
  %1234 = call float @dx.op.binary.f32(i32 36, float %1231, float %1232)  ; FMin(a,b)
  %1235 = fcmp fast ogt float %1148, %1234
  br i1 %1235, label %1236, label %1246

; <label>:1236                                    ; preds = %1173
  %1237 = fsub fast float %1148, %1234
  %1238 = fsub fast float %1233, %1234
  %1239 = fmul fast float %1237, %1238
  %1240 = fmul fast float %1233, %1148
  %1241 = fadd fast float %1233, %1148
  %1242 = fmul fast float %1241, %1188
  %1243 = fadd fast float %1240, %1189
  %1244 = fsub fast float %1243, %1242
  %1245 = fdiv fast float %1244, %1239
  br label %1246

; <label>:1246                                    ; preds = %1236, %1173
  %1247 = phi float [ %1245, %1236 ], [ 0.000000e+00, %1173 ]
  %1248 = fcmp fast ogt float %1148, %1233
  %1249 = fsub fast float %1148, %1233
  br i1 %1248, label %1250, label %1260

; <label>:1250                                    ; preds = %1246
  %1251 = fsub fast float %1233, %1234
  %1252 = fmul fast float %1251, %1249
  %1253 = fmul fast float %1234, %1148
  %1254 = fadd fast float %1234, %1148
  %1255 = fmul fast float %1254, %1188
  %1256 = fsub fast float %1190, %1253
  %1257 = fadd fast float %1256, %1255
  %1258 = fdiv fast float %1257, %1252
  %1259 = fadd fast float %1258, %1247
  br label %1260

; <label>:1260                                    ; preds = %1250, %1246
  %1261 = phi float [ %1259, %1250 ], [ %1247, %1246 ]
  %1262 = fsub fast float %1148, %1234
  %1263 = fmul fast float %1262, %1249
  %1264 = fmul fast float %1234, %1233
  %1265 = fadd fast float %1234, %1233
  %1266 = fmul fast float %1265, %1188
  %1267 = fadd fast float %1264, %1189
  %1268 = fsub fast float %1267, %1266
  %1269 = fdiv fast float %1268, %1263
  %1270 = call float @dx.op.unary.f32(i32 7, float %1261)  ; Saturate(value)
  %1271 = fcmp fast oeq float %930, 0.000000e+00
  %1272 = extractvalue %dx.types.CBufRet.f32 %1136, 0
  %1273 = fcmp fast oeq float %1272, 0.000000e+00
  %1274 = or i1 %1271, %1273
  %1275 = fmul fast float %1272, 2.000000e+00
  %1276 = fadd fast float %1137, %1138
  %1277 = fdiv fast float %1276, %1275
  %1278 = call float @dx.op.unary.f32(i32 7, float %1277)  ; Saturate(value)
  %1279 = fmul fast float %1278, 2.000000e+00
  %1280 = fsub fast float 3.000000e+00, %1279
  %1281 = fmul fast float %1278, %1278
  %1282 = fmul fast float %1281, %1280
  %1283 = select i1 %1274, float 1.000000e+00, float %1282
  %1284 = fmul fast float %1269, %930
  %1285 = fadd fast float %1270, %1284
  %1286 = call float @dx.op.unary.f32(i32 7, float %1285)  ; Saturate(value)
  %1287 = fmul fast float %1283, %1286
  br label %1288

; <label>:1288                                    ; preds = %1260, %1141
  %1289 = phi float [ %1287, %1260 ], [ 0.000000e+00, %1141 ]
  %1290 = fsub fast float 1.000000e+00, %1289
  %1291 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %19, float %1089, float %1090, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1292 = extractvalue %dx.types.ResRet.f32 %1291, 0
  %1293 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1294 = extractvalue %dx.types.CBufRet.i32 %1293, 2
  %1295 = icmp eq i32 %1294, 0
  br i1 %1295, label %1301, label %1296

; <label>:1296                                    ; preds = %1288
  %1297 = call float @dx.op.unary.f32(i32 7, float %1289)  ; Saturate(value)
  %1298 = fadd fast float %1292, -1.000000e+00
  %1299 = fmul fast float %1297, %1298
  %1300 = fadd fast float %1299, 1.000000e+00
  br label %1301

; <label>:1301                                    ; preds = %1296, %1288
  %1302 = phi float [ %1300, %1296 ], [ %1290, %1288 ]
  %1303 = call float @dx.op.binary.f32(i32 35, float %1292, float %1302)  ; FMax(a,b)
  %1304 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %1305 = extractvalue %dx.types.CBufRet.i32 %1304, 2
  %1306 = and i32 %1305, 1
  %1307 = icmp eq i32 %1306, 0
  %1308 = fcmp fast une float %1303, 1.000000e+00
  %1309 = and i1 %1308, %1307
  br i1 %1309, label %1310, label %1329

; <label>:1310                                    ; preds = %1301
  %1311 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %19, float %1089, float %1090, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1312 = extractvalue %dx.types.ResRet.f32 %1311, 0
  %1313 = extractvalue %dx.types.ResRet.f32 %1311, 1
  %1314 = extractvalue %dx.types.ResRet.f32 %1311, 2
  %1315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1316 = extractvalue %dx.types.CBufRet.f32 %1315, 1
  %1317 = fmul fast float %1316, %1312
  %1318 = fmul fast float %1316, %1313
  %1319 = fmul fast float %1316, %1314
  %1320 = fcmp fast ogt float %1292, 0x3FEFFF2E40000000
  %1321 = fsub fast float 1.000000e+00, %1303
  %1322 = fsub fast float 1.000000e+00, %1292
  %1323 = fdiv fast float %1321, %1322
  %1324 = call float @dx.op.unary.f32(i32 7, float %1323)  ; Saturate(value)
  %1325 = select i1 %1320, float 0.000000e+00, float %1324
  %1326 = fmul fast float %1317, %1325
  %1327 = fmul fast float %1318, %1325
  %1328 = fmul fast float %1319, %1325
  br label %1329

; <label>:1329                                    ; preds = %1310, %1301
  %1330 = phi float [ 0.000000e+00, %1301 ], [ %1326, %1310 ]
  %1331 = phi float [ 0.000000e+00, %1301 ], [ %1327, %1310 ]
  %1332 = phi float [ 0.000000e+00, %1301 ], [ %1328, %1310 ]
  %1333 = fmul fast float %1330, %814
  %1334 = fmul fast float %1331, %814
  %1335 = fmul fast float %1332, %814
  %1336 = fmul fast float %1303, %1064
  %1337 = call float @dx.op.dot3.f32(i32 55, float %1303, float %1303, float %1303, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1338 = call float @dx.op.dot3.f32(i32 55, float %1333, float %1334, float %1335, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1339 = select i1 %111, float %1337, float %1303
  %1340 = select i1 %111, float 1.000000e+00, float %1303
  %1341 = select i1 %111, float %1338, float %1333
  %1342 = select i1 %111, float 0.000000e+00, float %1334
  %1343 = select i1 %111, float 0.000000e+00, float %1335
  %1344 = fmul fast float %1339, %1076
  %1345 = fmul fast float %1339, %1077
  %1346 = fmul fast float %1340, %1078
  %1347 = fadd fast float %1344, %1341
  %1348 = fadd fast float %1345, %1342
  %1349 = fadd fast float %1343, %1346
  %1350 = fmul fast float %1339, %1079
  %1351 = fmul fast float %1339, %1080
  %1352 = fmul fast float %1340, %1081
  br label %1353

; <label>:1353                                    ; preds = %1329, %1085, %1052, %1043
  %1354 = phi float [ %1045, %1043 ], [ %1076, %1052 ], [ %1347, %1329 ], [ %1076, %1085 ]
  %1355 = phi float [ %1046, %1043 ], [ %1077, %1052 ], [ %1348, %1329 ], [ %1077, %1085 ]
  %1356 = phi float [ %1047, %1043 ], [ %1078, %1052 ], [ %1349, %1329 ], [ %1078, %1085 ]
  %1357 = phi float [ %1048, %1043 ], [ %1079, %1052 ], [ %1350, %1329 ], [ %1079, %1085 ]
  %1358 = phi float [ %1049, %1043 ], [ %1080, %1052 ], [ %1351, %1329 ], [ %1080, %1085 ]
  %1359 = phi float [ %1050, %1043 ], [ %1081, %1052 ], [ %1352, %1329 ], [ %1081, %1085 ]
  %1360 = phi float [ %1051, %1043 ], [ %1064, %1052 ], [ %1336, %1329 ], [ %1064, %1085 ]
  %1361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1362 = extractvalue %dx.types.CBufRet.f32 %1361, 2
  %1363 = extractvalue %dx.types.CBufRet.f32 %1361, 3
  %1364 = fmul fast float %1362, %53
  %1365 = fmul fast float %1363, %54
  %1366 = call float @dx.op.unary.f32(i32 7, float %1364)  ; Saturate(value)
  %1367 = call float @dx.op.unary.f32(i32 7, float %1365)  ; Saturate(value)
  %1368 = select i1 %799, i32 2, i32 0
  %1369 = or i32 %1368, 1
  %1370 = uitofp i32 %1369 to float
  %1371 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %1366, float %1367, float %1370, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1372 = extractvalue %dx.types.ResRet.f32 %1371, 0
  %1373 = extractvalue %dx.types.ResRet.f32 %1371, 1
  %1374 = extractvalue %dx.types.ResRet.f32 %1371, 2
  %1375 = extractvalue %dx.types.ResRet.f32 %1371, 3
  %1376 = add nuw nsw i32 %1368, 2
  %1377 = uitofp i32 %1376 to float
  %1378 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %1366, float %1367, float %1377, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1379 = extractvalue %dx.types.ResRet.f32 %1378, 0
  %1380 = extractvalue %dx.types.ResRet.f32 %1378, 1
  %1381 = extractvalue %dx.types.ResRet.f32 %1378, 2
  %1382 = extractvalue %dx.types.ResRet.f32 %1378, 3
  %1383 = call float @dx.op.binary.f32(i32 35, float %1373, float %1374)  ; FMax(a,b)
  %1384 = call float @dx.op.binary.f32(i32 35, float %1372, float %1383)  ; FMax(a,b)
  %1385 = call float @dx.op.binary.f32(i32 35, float %1384, float %1375)  ; FMax(a,b)
  %1386 = call float @dx.op.binary.f32(i32 36, float %1380, float %1381)  ; FMin(a,b)
  %1387 = call float @dx.op.binary.f32(i32 36, float %1379, float %1386)  ; FMin(a,b)
  %1388 = call float @dx.op.binary.f32(i32 36, float %1387, float %1382)  ; FMin(a,b)
  %1389 = fmul fast float %1385, 2.550000e+02
  %1390 = fadd fast float %1389, 0x3F70101020000000
  %1391 = fptoui float %1390 to i32
  %1392 = fmul fast float %1388, 2.550000e+02
  %1393 = fadd fast float %1392, 0x3F70101020000000
  %1394 = fptoui float %1393 to i32
  %1395 = icmp ult i32 %1391, %1394
  br i1 %1395, label %1396, label %1448

; <label>:1396                                    ; preds = %1353
  %1397 = fcmp fast ogt float %47, 9.843750e-01
  %1398 = fadd fast float %1044, -4.000000e+00
  %1399 = select i1 %1397, float -4.000000e+00, float %1398
  %1400 = call float @dx.op.binary.f32(i32 35, float %1399, float 0.000000e+00)  ; FMax(a,b)
  %1401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1402 = extractvalue %dx.types.CBufRet.f32 %1401, 0
  %1403 = fadd fast float %1402, %1400
  %1404 = extractvalue %dx.types.CBufRet.f32 %1401, 2
  %1405 = fmul fast float %1403, %1404
  %1406 = call float @dx.op.unary.f32(i32 23, float %1405)  ; Log(value)
  %1407 = extractvalue %dx.types.CBufRet.f32 %1401, 3
  %1408 = fmul fast float %1407, %1406
  %1409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1410 = extractvalue %dx.types.CBufRet.f32 %1409, 2
  %1411 = fmul fast float %1408, %1410
  %1412 = call float @dx.op.unary.f32(i32 7, float %1411)  ; Saturate(value)
  %1413 = uitofp i32 %1391 to float
  %1414 = uitofp i32 %1394 to float
  %1415 = fadd fast float %1413, 5.000000e-01
  %1416 = fadd fast float %1414, 5.000000e-01
  %1417 = fmul fast float %1410, %1415
  %1418 = fmul fast float %1410, %1416
  %1419 = fadd fast float %1417, 0x3F0FFB4800000000
  %1420 = fadd fast float %1418, 0xBF0FFB4800000000
  %1421 = call float @dx.op.binary.f32(i32 35, float %1412, float %1419)  ; FMax(a,b)
  %1422 = call float @dx.op.binary.f32(i32 36, float %1421, float %1420)  ; FMin(a,b)
  %1423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1424 = extractvalue %dx.types.CBufRet.f32 %1423, 1
  %1425 = extractvalue %dx.types.CBufRet.f32 %1423, 2
  %1426 = extractvalue %dx.types.CBufRet.f32 %1423, 0
  %1427 = select i1 %799, float %1426, float 0.000000e+00
  %1428 = fmul fast float %1424, %1422
  %1429 = fadd fast float %1427, %1428
  %1430 = fadd fast float %1427, %1425
  %1431 = fsub fast float %1424, %1425
  %1432 = fadd fast float %1431, %1427
  %1433 = call float @dx.op.binary.f32(i32 35, float %1429, float %1430)  ; FMax(a,b)
  %1434 = call float @dx.op.binary.f32(i32 36, float %1433, float %1432)  ; FMin(a,b)
  %1435 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %1366, float %1367, float %1434, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1436 = extractvalue %dx.types.ResRet.f32 %1435, 0
  %1437 = extractvalue %dx.types.ResRet.f32 %1435, 1
  %1438 = extractvalue %dx.types.ResRet.f32 %1435, 2
  %1439 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %1366, float %1367, float %1434, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1440 = extractvalue %dx.types.ResRet.f32 %1439, 0
  %1441 = extractvalue %dx.types.ResRet.f32 %1439, 1
  %1442 = extractvalue %dx.types.ResRet.f32 %1439, 2
  %1443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1444 = extractvalue %dx.types.CBufRet.f32 %1443, 1
  %1445 = fmul fast float %1444, %1440
  %1446 = fmul fast float %1444, %1441
  %1447 = fmul fast float %1444, %1442
  br label %1448

; <label>:1448                                    ; preds = %1396, %1353
  %1449 = phi float [ %1436, %1396 ], [ 1.000000e+00, %1353 ]
  %1450 = phi float [ %1437, %1396 ], [ 1.000000e+00, %1353 ]
  %1451 = phi float [ %1438, %1396 ], [ 1.000000e+00, %1353 ]
  %1452 = phi float [ %1445, %1396 ], [ 0.000000e+00, %1353 ]
  %1453 = phi float [ %1446, %1396 ], [ 0.000000e+00, %1353 ]
  %1454 = phi float [ %1447, %1396 ], [ 0.000000e+00, %1353 ]
  %1455 = fmul fast float %1452, %814
  %1456 = fmul fast float %1453, %814
  %1457 = fmul fast float %1454, %814
  %1458 = fmul fast float %1449, %1360
  %1459 = call float @dx.op.dot3.f32(i32 55, float %1449, float %1450, float %1451, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1460 = call float @dx.op.dot3.f32(i32 55, float %1455, float %1456, float %1457, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1461 = select i1 %111, float %1459, float %1449
  %1462 = select i1 %111, float %1459, float %1450
  %1463 = select i1 %111, float 1.000000e+00, float %1451
  %1464 = select i1 %111, float %1460, float %1455
  %1465 = select i1 %111, float 0.000000e+00, float %1456
  %1466 = select i1 %111, float 0.000000e+00, float %1457
  %1467 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1468 = extractvalue %dx.types.CBufRet.i32 %1467, 3
  %1469 = and i32 %1468, 3
  %1470 = icmp ne i32 %1469, 0
  %1471 = and i32 %1468, 4
  %1472 = icmp ne i32 %1471, 0
  %1473 = and i1 %1470, %1472
  %1474 = and i1 %111, %1473
  br i1 %1474, label %1475, label %1481

; <label>:1475                                    ; preds = %1448
  %1476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1477 = extractvalue %dx.types.CBufRet.f32 %1476, 1
  %1478 = fadd fast float %1458, -1.000000e+00
  %1479 = fmul fast float %1477, %1478
  %1480 = fadd fast float %1479, 1.000000e+00
  br label %1481

; <label>:1481                                    ; preds = %1475, %1448
  %1482 = phi float [ %1480, %1475 ], [ %1458, %1448 ]
  %1483 = fadd fast float %1357, %1354
  %1484 = fmul fast float %1461, %1483
  %1485 = fadd fast float %1484, %1464
  %1486 = fadd fast float %1358, %1355
  %1487 = fmul fast float %1462, %1486
  %1488 = fadd fast float %1487, %1465
  %1489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1490 = extractvalue %dx.types.CBufRet.f32 %1489, 0
  br i1 %111, label %1491, label %1513

; <label>:1491                                    ; preds = %1481
  %1492 = fadd fast float %1485, %1488
  %1493 = fmul fast float %1490, %1492
  %1494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1495 = extractvalue %dx.types.CBufRet.f32 %1494, 3
  %1496 = extractvalue %dx.types.CBufRet.f32 %819, 1
  %1497 = fsub fast float %822, %1496
  %1498 = extractvalue %dx.types.CBufRet.f32 %819, 2
  %1499 = fmul fast float %1497, %1498
  %1500 = call float @dx.op.unary.f32(i32 7, float %1499)  ; Saturate(value)
  %1501 = fsub fast float %1500, %1495
  %1502 = fmul fast float %1501, %1482
  %1503 = fadd fast float %1502, %1495
  %1504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1505 = extractvalue %dx.types.CBufRet.f32 %1504, 0
  %1506 = fsub fast float %1503, %1505
  %1507 = fmul fast float %1506, 1.000000e+01
  %1508 = call float @dx.op.unary.f32(i32 7, float %1507)  ; Saturate(value)
  %1509 = fsub fast float %775, %814
  %1510 = fmul fast float %1508, %1509
  %1511 = fadd fast float %1510, %814
  %1512 = fmul fast float %1511, %1503
  br label %1525

; <label>:1513                                    ; preds = %1481
  %1514 = fadd fast float %1359, %1356
  %1515 = fmul fast float %1463, %1514
  %1516 = fadd fast float %1515, %1466
  %1517 = fmul fast float %1490, %1485
  %1518 = fmul fast float %1490, %1488
  %1519 = fmul fast float %1490, %1516
  %1520 = call float @dx.op.binary.f32(i32 35, float %1518, float %1519)  ; FMax(a,b)
  %1521 = call float @dx.op.binary.f32(i32 35, float %1517, float %1520)  ; FMax(a,b)
  %1522 = call float @dx.op.binary.f32(i32 35, float %1521, float %814)  ; FMax(a,b)
  %1523 = fcmp fast ugt float %1522, 0x3F10000000000000
  br i1 %1523, label %1525, label %1524

; <label>:1524                                    ; preds = %1513
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1525

; <label>:1525                                    ; preds = %1524, %1513, %1491
  %1526 = phi float [ %1493, %1491 ], [ %1517, %1524 ], [ %1517, %1513 ]
  %1527 = phi float [ %1512, %1491 ], [ %1518, %1524 ], [ %1518, %1513 ]
  %1528 = phi float [ %1511, %1491 ], [ %1519, %1524 ], [ %1519, %1513 ]
  %1529 = phi float [ %1511, %1491 ], [ %814, %1524 ], [ %814, %1513 ]
  %1530 = fadd fast float %565, 0x3FE3C6EF40000000
  %1531 = call float @dx.op.unary.f32(i32 22, float %1530)  ; Frc(value)
  %1532 = call float @dx.op.unary.f32(i32 23, float %1526)  ; Log(value)
  %1533 = fadd fast float %1532, -7.000000e+00
  %1534 = call float @dx.op.unary.f32(i32 21, float %1533)  ; Exp(value)
  %1535 = fmul fast float %1531, 2.000000e+00
  %1536 = fadd fast float %1535, -1.000000e+00
  %1537 = fmul fast float %1534, %1536
  %1538 = fcmp fast ogt float %1526, 0.000000e+00
  %1539 = select i1 %1538, float %1537, float 0.000000e+00
  %1540 = fadd fast float %1539, %1526
  %1541 = fadd fast float %565, 0x3FF3C6EF40000000
  %1542 = call float @dx.op.unary.f32(i32 22, float %1541)  ; Frc(value)
  %1543 = call float @dx.op.unary.f32(i32 23, float %1527)  ; Log(value)
  %1544 = fadd fast float %1543, -7.000000e+00
  %1545 = call float @dx.op.unary.f32(i32 21, float %1544)  ; Exp(value)
  %1546 = fmul fast float %1542, 2.000000e+00
  %1547 = fadd fast float %1546, -1.000000e+00
  %1548 = fmul fast float %1545, %1547
  %1549 = fcmp fast ogt float %1527, 0.000000e+00
  %1550 = select i1 %1549, float %1548, float 0.000000e+00
  %1551 = fadd fast float %1550, %1527
  %1552 = fadd fast float %565, 0x3FFDAA66E0000000
  %1553 = call float @dx.op.unary.f32(i32 22, float %1552)  ; Frc(value)
  %1554 = call float @dx.op.unary.f32(i32 23, float %1528)  ; Log(value)
  %1555 = fadd fast float %1554, -6.000000e+00
  %1556 = call float @dx.op.unary.f32(i32 21, float %1555)  ; Exp(value)
  %1557 = fmul fast float %1553, 2.000000e+00
  %1558 = fadd fast float %1557, -1.000000e+00
  %1559 = fmul fast float %1556, %1558
  %1560 = fcmp fast ogt float %1528, 0.000000e+00
  %1561 = select i1 %1560, float %1559, float 0.000000e+00
  %1562 = fadd fast float %1561, %1528
  %1563 = select i1 %111, float %1527, float %1551
  %1564 = select i1 %111, float %1528, float %1562
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1565 = call float @dx.op.binary.f32(i32 36, float %1540, float 3.225500e+04)  ; FMin(a,b)
  %1566 = call float @dx.op.binary.f32(i32 36, float %1563, float 3.225500e+04)  ; FMin(a,b)
  %1567 = call float @dx.op.binary.f32(i32 36, float %1564, float 3.225500e+04)  ; FMin(a,b)
  %1568 = call float @dx.op.binary.f32(i32 36, float %1529, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1565)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1566)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1567)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1568)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1529)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1529)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1529)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1529)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

