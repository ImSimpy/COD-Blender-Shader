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
; shader hash: 59ad8212fd1ba3ed2ae29cbb15382b6b
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
  %674 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %19, float %33, float %34, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %675 = extractvalue %dx.types.ResRet.f32 %674, 0
  %676 = extractvalue %dx.types.ResRet.f32 %674, 1
  %677 = extractvalue %dx.types.ResRet.f32 %674, 2
  %678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %679 = extractvalue %dx.types.CBufRet.f32 %678, 1
  %680 = fmul fast float %679, %675
  %681 = fmul fast float %679, %676
  %682 = fmul fast float %679, %677
  %683 = call float @dx.op.unary.f32(i32 7, float %629)  ; Saturate(value)
  %684 = call float @dx.op.unary.f32(i32 7, float %630)  ; Saturate(value)
  %685 = call float @dx.op.unary.f32(i32 7, float %631)  ; Saturate(value)
  %686 = fmul fast float %673, %634
  %687 = fmul fast float %664, %635
  %688 = fmul fast float %665, %636
  %689 = call float @dx.op.dot3.f32(i32 55, float %686, float %687, float %688, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %690 = select i1 %111, float 0.000000e+00, float %686
  %691 = select i1 %111, float %689, float %687
  %692 = select i1 %111, float 0.000000e+00, float %688
  %693 = fmul fast float %549, %673
  %694 = fmul fast float %550, %664
  %695 = fmul fast float %551, %665
  %696 = call float @dx.op.dot3.f32(i32 55, float %643, float %644, float %645, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %697 = add i32 %24, 32
  %698 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %697, i32 undef)  ; BufferLoad(srv,index,wot)
  %699 = extractvalue %dx.types.ResRet.i32 %698, 0
  %700 = and i32 %699, 255
  %701 = uitofp i32 %700 to float
  %702 = lshr i32 %699, 8
  %703 = and i32 %702, 255
  %704 = uitofp i32 %703 to float
  %705 = fmul fast float %704, %696
  %706 = fadd fast float %705, %701
  %707 = fmul fast float %706, 0x3F70101020000000
  %708 = call float @dx.op.unary.f32(i32 7, float %707)  ; Saturate(value)
  %709 = and i32 %131, 8192
  %710 = icmp eq i32 %709, 0
  %711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %712 = extractvalue %dx.types.CBufRet.f32 %711, 0
  br i1 %710, label %719, label %713, !dx.controlflow.hints !66

; <label>:713                                     ; preds = %628
  %714 = add i32 %128, 176
  %715 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %714, i32 undef)  ; BufferLoad(srv,index,wot)
  %716 = extractvalue %dx.types.ResRet.f32 %715, 0
  %717 = fcmp fast oge float %716, 0.000000e+00
  %718 = select i1 %717, float %716, float %712
  br label %726

; <label>:719                                     ; preds = %628
  %720 = add i32 %24, 104
  %721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %720, i32 undef)  ; BufferLoad(srv,index,wot)
  %722 = extractvalue %dx.types.ResRet.i32 %721, 0
  %723 = bitcast i32 %722 to float
  %724 = fcmp fast oge float %723, 0.000000e+00
  %725 = select i1 %724, float %723, float %712
  br label %726

; <label>:726                                     ; preds = %719, %713
  %727 = phi float [ %718, %713 ], [ %725, %719 ]
  %728 = fmul fast float %633, %632
  %729 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %221, i32 %222, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %730 = extractvalue %dx.types.ResRet.i32 %729, 0
  %731 = lshr i32 %730, 18
  %732 = uitofp i32 %731 to float
  %733 = fmul fast float %732, 0x3F4C00EBA0000000
  %734 = call float @dx.op.unary.f32(i32 21, float %733)  ; Exp(value)
  %735 = fadd fast float %734, -1.000000e+00
  %736 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %10, i32 0)  ; GetDimensions(handle,mipLevel)
  %737 = extractvalue %dx.types.Dimensions %736, 0
  %738 = sitofp i32 %737 to float
  %739 = extractvalue %dx.types.Dimensions %736, 1
  %740 = sitofp i32 %739 to float
  %741 = fcmp fast oge float %219, %738
  %742 = fcmp fast oge float %220, %740
  %743 = or i1 %741, %742
  %744 = select i1 %743, float 0x4197782600000000, float %735
  %745 = icmp eq i32 %127, 3
  %746 = fcmp fast ogt float %48, %744
  %747 = and i1 %245, %746
  %748 = or i1 %745, %747
  %749 = icmp eq i32 %127, 2
  %750 = fcmp fast ole float %48, %744
  %751 = and i1 %749, %750
  %752 = or i1 %751, %748
  %753 = fmul fast float %693, %680
  %754 = fmul fast float %694, %681
  %755 = fmul fast float %695, %682
  %756 = fadd fast float %753, %690
  %757 = fadd fast float %691, %754
  %758 = fadd fast float %755, %692
  %759 = fmul fast float %756, %632
  %760 = fmul fast float %757, %632
  %761 = fmul fast float %758, %632
  %762 = fmul fast float %681, %632
  %763 = fmul fast float %682, %632
  %764 = fsub fast float 1.000000e+00, %632
  %765 = call float @dx.op.dot3.f32(i32 55, float %764, float %764, float %764, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %766 = fsub fast float 1.000000e+00, %765
  %767 = fmul fast float %727, %708
  %768 = fsub fast float 1.000000e+00, %728
  %769 = fsub fast float %768, %708
  %770 = call float @dx.op.unary.f32(i32 7, float %769)  ; Saturate(value)
  %771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %772 = extractvalue %dx.types.CBufRet.f32 %771, 3
  %773 = fmul fast float %772, %770
  %774 = fadd fast float %773, %767
  %775 = and i32 %131, 1048576
  %776 = icmp eq i32 %775, 0
  br i1 %776, label %868, label %777, !dx.controlflow.hints !67

; <label>:777                                     ; preds = %726
  %778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %779 = extractvalue %dx.types.CBufRet.f32 %778, 2
  %780 = extractvalue %dx.types.CBufRet.f32 %778, 3
  %781 = fmul fast float %779, %53
  %782 = fmul fast float %780, %54
  %783 = call float @dx.op.unary.f32(i32 7, float %781)  ; Saturate(value)
  %784 = call float @dx.op.unary.f32(i32 7, float %782)  ; Saturate(value)
  %785 = select i1 %752, i32 2, i32 0
  %786 = or i32 %785, 1
  %787 = uitofp i32 %786 to float
  %788 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %783, float %784, float %787, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %789 = extractvalue %dx.types.ResRet.f32 %788, 0
  %790 = extractvalue %dx.types.ResRet.f32 %788, 1
  %791 = extractvalue %dx.types.ResRet.f32 %788, 2
  %792 = extractvalue %dx.types.ResRet.f32 %788, 3
  %793 = add nuw nsw i32 %785, 2
  %794 = uitofp i32 %793 to float
  %795 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %783, float %784, float %794, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %796 = extractvalue %dx.types.ResRet.f32 %795, 0
  %797 = extractvalue %dx.types.ResRet.f32 %795, 1
  %798 = extractvalue %dx.types.ResRet.f32 %795, 2
  %799 = extractvalue %dx.types.ResRet.f32 %795, 3
  %800 = call float @dx.op.binary.f32(i32 35, float %790, float %791)  ; FMax(a,b)
  %801 = call float @dx.op.binary.f32(i32 35, float %789, float %800)  ; FMax(a,b)
  %802 = call float @dx.op.binary.f32(i32 35, float %801, float %792)  ; FMax(a,b)
  %803 = call float @dx.op.binary.f32(i32 36, float %797, float %798)  ; FMin(a,b)
  %804 = call float @dx.op.binary.f32(i32 36, float %796, float %803)  ; FMin(a,b)
  %805 = call float @dx.op.binary.f32(i32 36, float %804, float %799)  ; FMin(a,b)
  %806 = fmul fast float %802, 2.550000e+02
  %807 = fadd fast float %806, 0x3F70101020000000
  %808 = fptoui float %807 to i32
  %809 = fmul fast float %805, 2.550000e+02
  %810 = fadd fast float %809, 0x3F70101020000000
  %811 = fptoui float %810 to i32
  %812 = icmp ult i32 %808, %811
  br i1 %812, label %813, label %861

; <label>:813                                     ; preds = %777
  %814 = fcmp fast ogt float %47, 9.843750e-01
  %815 = fadd fast float %48, -4.000000e+00
  %816 = select i1 %814, float -4.000000e+00, float %815
  %817 = call float @dx.op.binary.f32(i32 35, float %816, float 0.000000e+00)  ; FMax(a,b)
  %818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %819 = extractvalue %dx.types.CBufRet.f32 %818, 0
  %820 = fadd fast float %819, %817
  %821 = extractvalue %dx.types.CBufRet.f32 %818, 2
  %822 = fmul fast float %820, %821
  %823 = call float @dx.op.unary.f32(i32 23, float %822)  ; Log(value)
  %824 = extractvalue %dx.types.CBufRet.f32 %818, 3
  %825 = fmul fast float %824, %823
  %826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %827 = extractvalue %dx.types.CBufRet.f32 %826, 2
  %828 = fmul fast float %825, %827
  %829 = call float @dx.op.unary.f32(i32 7, float %828)  ; Saturate(value)
  %830 = uitofp i32 %808 to float
  %831 = uitofp i32 %811 to float
  %832 = fadd fast float %830, 5.000000e-01
  %833 = fadd fast float %831, 5.000000e-01
  %834 = fmul fast float %827, %832
  %835 = fmul fast float %827, %833
  %836 = fadd fast float %834, 0x3F0FFB4800000000
  %837 = fadd fast float %835, 0xBF0FFB4800000000
  %838 = call float @dx.op.binary.f32(i32 35, float %829, float %836)  ; FMax(a,b)
  %839 = call float @dx.op.binary.f32(i32 36, float %838, float %837)  ; FMin(a,b)
  %840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %841 = extractvalue %dx.types.CBufRet.f32 %840, 1
  %842 = extractvalue %dx.types.CBufRet.f32 %840, 2
  %843 = extractvalue %dx.types.CBufRet.f32 %840, 0
  %844 = select i1 %752, float %843, float 0.000000e+00
  %845 = fmul fast float %841, %839
  %846 = fadd fast float %844, %845
  %847 = fadd fast float %844, %842
  %848 = fsub fast float %841, %842
  %849 = fadd fast float %848, %844
  %850 = call float @dx.op.binary.f32(i32 35, float %846, float %847)  ; FMax(a,b)
  %851 = call float @dx.op.binary.f32(i32 36, float %850, float %849)  ; FMin(a,b)
  %852 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %18, float %783, float %784, float %851, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %853 = extractvalue %dx.types.ResRet.f32 %852, 0
  %854 = extractvalue %dx.types.ResRet.f32 %852, 1
  %855 = extractvalue %dx.types.ResRet.f32 %852, 2
  %856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %857 = extractvalue %dx.types.CBufRet.f32 %856, 1
  %858 = fmul fast float %857, %853
  %859 = fmul fast float %857, %854
  %860 = fmul fast float %857, %855
  br label %861

; <label>:861                                     ; preds = %813, %777
  %862 = phi float [ %858, %813 ], [ 1.000000e+00, %777 ]
  %863 = phi float [ %859, %813 ], [ 1.000000e+00, %777 ]
  %864 = phi float [ %860, %813 ], [ 1.000000e+00, %777 ]
  %865 = fmul fast float %862, %759
  %866 = fmul fast float %863, %760
  %867 = fmul fast float %864, %761
  br label %868

; <label>:868                                     ; preds = %861, %726
  %869 = phi float [ %865, %861 ], [ %759, %726 ]
  %870 = phi float [ %866, %861 ], [ %760, %726 ]
  %871 = phi float [ %867, %861 ], [ %761, %726 ]
  %872 = and i32 %131, 2097152
  %873 = icmp eq i32 %872, 0
  br i1 %873, label %878, label %874, !dx.controlflow.hints !68

; <label>:874                                     ; preds = %868
  %875 = add i32 %128, 192
  %876 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %875, i32 undef)  ; BufferLoad(srv,index,wot)
  %877 = extractvalue %dx.types.ResRet.f32 %876, 0
  br label %881

; <label>:878                                     ; preds = %868
  %879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %880 = extractvalue %dx.types.CBufRet.f32 %879, 3
  br label %881

; <label>:881                                     ; preds = %878, %874
  %882 = phi float [ %877, %874 ], [ %880, %878 ]
  %883 = fmul fast float %683, %632
  %884 = fmul fast float %883, %680
  %885 = fmul fast float %762, %684
  %886 = fmul fast float %763, %685
  br i1 %747, label %887, label %996

; <label>:887                                     ; preds = %881
  %888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %889 = extractvalue %dx.types.CBufRet.f32 %888, 2
  %890 = extractvalue %dx.types.CBufRet.f32 %888, 3
  %891 = fmul fast float %889, %53
  %892 = fmul fast float %890, %54
  %893 = call float @dx.op.unary.f32(i32 7, float %891)  ; Saturate(value)
  %894 = call float @dx.op.unary.f32(i32 7, float %892)  ; Saturate(value)
  %895 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %893, float %894, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %896 = extractvalue %dx.types.ResRet.f32 %895, 0
  %897 = extractvalue %dx.types.ResRet.f32 %895, 1
  %898 = extractvalue %dx.types.ResRet.f32 %895, 2
  %899 = extractvalue %dx.types.ResRet.f32 %895, 3
  %900 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %893, float %894, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %901 = extractvalue %dx.types.ResRet.f32 %900, 0
  %902 = extractvalue %dx.types.ResRet.f32 %900, 1
  %903 = extractvalue %dx.types.ResRet.f32 %900, 2
  %904 = extractvalue %dx.types.ResRet.f32 %900, 3
  %905 = call float @dx.op.binary.f32(i32 35, float %897, float %898)  ; FMax(a,b)
  %906 = call float @dx.op.binary.f32(i32 35, float %896, float %905)  ; FMax(a,b)
  %907 = call float @dx.op.binary.f32(i32 35, float %906, float %899)  ; FMax(a,b)
  %908 = call float @dx.op.binary.f32(i32 36, float %902, float %903)  ; FMin(a,b)
  %909 = call float @dx.op.binary.f32(i32 36, float %901, float %908)  ; FMin(a,b)
  %910 = call float @dx.op.binary.f32(i32 36, float %909, float %904)  ; FMin(a,b)
  %911 = fmul fast float %907, 2.550000e+02
  %912 = fadd fast float %911, 0x3F70101020000000
  %913 = fptoui float %912 to i32
  %914 = fmul fast float %910, 2.550000e+02
  %915 = fadd fast float %914, 0x3F70101020000000
  %916 = fptoui float %915 to i32
  %917 = icmp ult i32 %913, %916
  br i1 %917, label %918, label %969

; <label>:918                                     ; preds = %887
  %919 = fcmp fast ogt float %47, 9.843750e-01
  %920 = fadd fast float %48, -4.000000e+00
  %921 = select i1 %919, float -4.000000e+00, float %920
  %922 = call float @dx.op.binary.f32(i32 35, float %921, float 0.000000e+00)  ; FMax(a,b)
  %923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %924 = extractvalue %dx.types.CBufRet.f32 %923, 0
  %925 = fadd fast float %924, %922
  %926 = extractvalue %dx.types.CBufRet.f32 %923, 2
  %927 = fmul fast float %925, %926
  %928 = call float @dx.op.unary.f32(i32 23, float %927)  ; Log(value)
  %929 = extractvalue %dx.types.CBufRet.f32 %923, 3
  %930 = fmul fast float %929, %928
  %931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %932 = extractvalue %dx.types.CBufRet.f32 %931, 2
  %933 = fmul fast float %930, %932
  %934 = call float @dx.op.unary.f32(i32 7, float %933)  ; Saturate(value)
  %935 = uitofp i32 %913 to float
  %936 = uitofp i32 %916 to float
  %937 = fadd fast float %935, 5.000000e-01
  %938 = fadd fast float %936, 5.000000e-01
  %939 = fmul fast float %932, %937
  %940 = fmul fast float %932, %938
  %941 = fadd fast float %939, 0x3F0FFB4800000000
  %942 = fadd fast float %940, 0xBF0FFB4800000000
  %943 = call float @dx.op.binary.f32(i32 35, float %934, float %941)  ; FMax(a,b)
  %944 = call float @dx.op.binary.f32(i32 36, float %943, float %942)  ; FMin(a,b)
  %945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %946 = extractvalue %dx.types.CBufRet.f32 %945, 1
  %947 = extractvalue %dx.types.CBufRet.f32 %945, 2
  %948 = extractvalue %dx.types.CBufRet.f32 %945, 0
  %949 = fmul fast float %946, %944
  %950 = fadd fast float %948, %949
  %951 = fadd fast float %948, %947
  %952 = fsub fast float %946, %947
  %953 = fadd fast float %952, %948
  %954 = call float @dx.op.binary.f32(i32 35, float %950, float %951)  ; FMax(a,b)
  %955 = call float @dx.op.binary.f32(i32 36, float %954, float %953)  ; FMin(a,b)
  %956 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %893, float %894, float %955, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %957 = extractvalue %dx.types.ResRet.f32 %956, 0
  %958 = extractvalue %dx.types.ResRet.f32 %956, 1
  %959 = extractvalue %dx.types.ResRet.f32 %956, 2
  %960 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %893, float %894, float %955, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %961 = extractvalue %dx.types.ResRet.f32 %960, 0
  %962 = extractvalue %dx.types.ResRet.f32 %960, 1
  %963 = extractvalue %dx.types.ResRet.f32 %960, 2
  %964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %965 = extractvalue %dx.types.CBufRet.f32 %964, 1
  %966 = fmul fast float %965, %961
  %967 = fmul fast float %965, %962
  %968 = fmul fast float %965, %963
  br label %969

; <label>:969                                     ; preds = %918, %887
  %970 = phi float [ %957, %918 ], [ 1.000000e+00, %887 ]
  %971 = phi float [ %958, %918 ], [ 1.000000e+00, %887 ]
  %972 = phi float [ %959, %918 ], [ 1.000000e+00, %887 ]
  %973 = phi float [ %966, %918 ], [ 0.000000e+00, %887 ]
  %974 = phi float [ %967, %918 ], [ 0.000000e+00, %887 ]
  %975 = phi float [ %968, %918 ], [ 0.000000e+00, %887 ]
  %976 = fmul fast float %973, %766
  %977 = fmul fast float %974, %766
  %978 = fmul fast float %975, %766
  %979 = call float @dx.op.dot3.f32(i32 55, float %970, float %971, float %972, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %980 = call float @dx.op.dot3.f32(i32 55, float %976, float %977, float %978, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %981 = select i1 %111, float %979, float %970
  %982 = select i1 %111, float %979, float %971
  %983 = select i1 %111, float 1.000000e+00, float %972
  %984 = select i1 %111, float %980, float %976
  %985 = select i1 %111, float 0.000000e+00, float %977
  %986 = select i1 %111, float 0.000000e+00, float %978
  %987 = fmul fast float %981, %884
  %988 = fmul fast float %982, %885
  %989 = fmul fast float %983, %886
  %990 = fadd fast float %987, %984
  %991 = fadd fast float %988, %985
  %992 = fadd fast float %986, %989
  %993 = fmul fast float %981, %869
  %994 = fmul fast float %982, %870
  %995 = fmul fast float %983, %871
  br label %996

; <label>:996                                     ; preds = %969, %881
  %997 = phi float [ %744, %969 ], [ %48, %881 ]
  %998 = phi float [ %990, %969 ], [ %884, %881 ]
  %999 = phi float [ %991, %969 ], [ %885, %881 ]
  %1000 = phi float [ %992, %969 ], [ %886, %881 ]
  %1001 = phi float [ %993, %969 ], [ %869, %881 ]
  %1002 = phi float [ %994, %969 ], [ %870, %881 ]
  %1003 = phi float [ %995, %969 ], [ %871, %881 ]
  %1004 = phi float [ %970, %969 ], [ 1.000000e+00, %881 ]
  br i1 %752, label %1306, label %1005

; <label>:1005                                    ; preds = %996
  %1006 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %19, float %33, float %34, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1007 = extractvalue %dx.types.ResRet.f32 %1006, 0
  %1008 = extractvalue %dx.types.ResRet.f32 %1006, 1
  %1009 = extractvalue %dx.types.ResRet.f32 %1006, 2
  %1010 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %19, float %33, float %34, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1011 = extractvalue %dx.types.ResRet.f32 %1010, 0
  %1012 = extractvalue %dx.types.ResRet.f32 %1010, 1
  %1013 = extractvalue %dx.types.ResRet.f32 %1010, 2
  %1014 = fmul fast float %1007, %766
  %1015 = fmul fast float %1008, %766
  %1016 = fmul fast float %1009, %766
  %1017 = fmul fast float %1011, %1004
  %1018 = call float @dx.op.dot3.f32(i32 55, float %1011, float %1012, float %1013, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1019 = call float @dx.op.dot3.f32(i32 55, float %1014, float %1015, float %1016, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1020 = select i1 %111, float %1018, float %1011
  %1021 = select i1 %111, float %1018, float %1012
  %1022 = select i1 %111, float 1.000000e+00, float %1013
  %1023 = select i1 %111, float %1019, float %1014
  %1024 = select i1 %111, float 0.000000e+00, float %1015
  %1025 = select i1 %111, float 0.000000e+00, float %1016
  %1026 = fmul fast float %1020, %998
  %1027 = fmul fast float %1021, %999
  %1028 = fmul fast float %1022, %1000
  %1029 = fadd fast float %1026, %1023
  %1030 = fadd fast float %1027, %1024
  %1031 = fadd fast float %1028, %1025
  %1032 = fmul fast float %1020, %1001
  %1033 = fmul fast float %1021, %1002
  %1034 = fmul fast float %1022, %1003
  %1035 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1036 = extractvalue %dx.types.CBufRet.i32 %1035, 0
  %1037 = icmp eq i32 %1036, 0
  br i1 %1037, label %1306, label %1038, !dx.controlflow.hints !69

; <label>:1038                                    ; preds = %1005
  %1039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1040 = extractvalue %dx.types.CBufRet.f32 %1039, 2
  %1041 = extractvalue %dx.types.CBufRet.f32 %1039, 3
  %1042 = fmul fast float %1040, %53
  %1043 = fmul fast float %1041, %54
  %1044 = fmul fast float %1042, 2.000000e+00
  %1045 = fmul fast float %1043, 2.000000e+00
  %1046 = fsub fast float 1.000000e+00, %1044
  %1047 = fsub fast float 1.000000e+00, %1045
  %1048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1049 = extractvalue %dx.types.CBufRet.f32 %1048, 0
  %1050 = extractvalue %dx.types.CBufRet.f32 %1048, 1
  %1051 = extractvalue %dx.types.CBufRet.f32 %1048, 2
  %1052 = fmul fast float %1046, %1049
  %1053 = fmul fast float %1046, %1050
  %1054 = fmul fast float %1046, %1051
  %1055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1056 = extractvalue %dx.types.CBufRet.f32 %1055, 0
  %1057 = extractvalue %dx.types.CBufRet.f32 %1055, 1
  %1058 = extractvalue %dx.types.CBufRet.f32 %1055, 2
  %1059 = fmul fast float %1047, %1056
  %1060 = fmul fast float %1047, %1057
  %1061 = fmul fast float %1047, %1058
  %1062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1063 = extractvalue %dx.types.CBufRet.f32 %1062, 0
  %1064 = extractvalue %dx.types.CBufRet.f32 %1062, 1
  %1065 = extractvalue %dx.types.CBufRet.f32 %1062, 2
  %1066 = fadd fast float %1059, %1063
  %1067 = fadd fast float %1066, %1052
  %1068 = fadd fast float %1060, %1064
  %1069 = fadd fast float %1068, %1053
  %1070 = fadd fast float %1061, %1065
  %1071 = fadd fast float %1070, %1054
  %1072 = fmul fast float %1067, %997
  %1073 = fmul fast float %1069, %997
  %1074 = fmul fast float %1071, %997
  %1075 = fmul fast float %1072, %1072
  %1076 = fmul fast float %1073, %1073
  %1077 = fadd fast float %1075, %1076
  %1078 = fmul fast float %1074, %1074
  %1079 = fadd fast float %1077, %1078
  %1080 = call float @dx.op.unary.f32(i32 24, float %1079)  ; Sqrt(value)
  %1081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1082 = extractvalue %dx.types.CBufRet.f32 %1081, 0
  %1083 = fsub fast float %1080, %1082
  %1084 = extractvalue %dx.types.CBufRet.f32 %1081, 2
  %1085 = fmul fast float %1083, %1084
  %1086 = call float @dx.op.unary.f32(i32 7, float %1085)  ; Saturate(value)
  %1087 = fadd fast float %1086, -5.000000e-01
  %1088 = fmul fast float %1087, 2.000000e+00
  %1089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1090 = extractvalue %dx.types.CBufRet.f32 %1089, 2
  %1091 = call float @dx.op.binary.f32(i32 36, float %1090, float %1088)  ; FMin(a,b)
  %1092 = fsub fast float -0.000000e+00, %1090
  %1093 = fcmp fast ogt float %1091, %1092
  br i1 %1093, label %1094, label %1306, !dx.controlflow.hints !70

; <label>:1094                                    ; preds = %1038
  %1095 = fmul fast float %1091, 5.000000e-01
  %1096 = fadd fast float %1095, 5.000000e-01
  %1097 = call float @dx.op.unary.f32(i32 22, float %1096)  ; Frc(value)
  %1098 = call float @dx.op.unary.f32(i32 27, float %1097)  ; Round_ni(value)
  %1099 = call float @dx.op.unary.f32(i32 22, float %1097)  ; Frc(value)
  %1100 = fmul fast float %1099, 2.000000e+00
  %1101 = fadd fast float %1100, -1.000000e+00
  %1102 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %19, float %1042, float %1043, float %1098, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1103 = extractvalue %dx.types.ResRet.f32 %1102, 0
  %1104 = extractvalue %dx.types.ResRet.f32 %1102, 1
  %1105 = extractvalue %dx.types.ResRet.f32 %1102, 2
  %1106 = extractvalue %dx.types.ResRet.f32 %1102, 3
  %1107 = fadd fast float %1103, -5.000000e-01
  %1108 = fadd fast float %1105, -5.000000e-01
  %1109 = fmul fast float %1107, 0xBFD5555560000000
  %1110 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1108, float %1109)  ; FMad(a,b,c)
  %1111 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1104, float 0.000000e+00)  ; FMad(a,b,c)
  %1112 = fadd fast float %1111, %1106
  %1113 = fmul fast float %1107, -7.500000e-01
  %1114 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1108, float %1113)  ; FMad(a,b,c)
  %1115 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1104, float 0.000000e+00)  ; FMad(a,b,c)
  %1116 = fadd fast float %1115, %1106
  %1117 = call float @dx.op.binary.f32(i32 35, float %1110, float -1.000000e+00)  ; FMax(a,b)
  %1118 = call float @dx.op.binary.f32(i32 35, float %1112, float -1.000000e+00)  ; FMax(a,b)
  %1119 = call float @dx.op.binary.f32(i32 35, float %1114, float -1.000000e+00)  ; FMax(a,b)
  %1120 = call float @dx.op.binary.f32(i32 35, float %1116, float -1.000000e+00)  ; FMax(a,b)
  %1121 = call float @dx.op.binary.f32(i32 36, float %1117, float 1.000000e+00)  ; FMin(a,b)
  %1122 = call float @dx.op.binary.f32(i32 36, float %1118, float 1.000000e+00)  ; FMin(a,b)
  %1123 = call float @dx.op.binary.f32(i32 36, float %1119, float 1.000000e+00)  ; FMin(a,b)
  %1124 = call float @dx.op.binary.f32(i32 36, float %1120, float 1.000000e+00)  ; FMin(a,b)
  %1125 = fcmp fast olt float %1121, 0x3FEFFF8020000000
  br i1 %1125, label %1126, label %1241, !dx.controlflow.hints !71

; <label>:1126                                    ; preds = %1094
  %1127 = extractvalue %dx.types.CBufRet.f32 %1089, 3
  %1128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1129 = extractvalue %dx.types.CBufRet.f32 %1128, 0
  %1130 = extractvalue %dx.types.CBufRet.f32 %1128, 1
  %1131 = extractvalue %dx.types.CBufRet.f32 %1128, 2
  %1132 = extractvalue %dx.types.CBufRet.f32 %1128, 3
  %1133 = fsub fast float %1129, %1121
  %1134 = fsub fast float %1130, %1122
  %1135 = fsub fast float %1131, %1123
  %1136 = fsub fast float %1132, %1124
  %1137 = fmul fast float %1133, %1127
  %1138 = fmul fast float %1134, %1127
  %1139 = fmul fast float %1135, %1127
  %1140 = fmul fast float %1136, %1127
  %1141 = fadd fast float %1137, %1121
  %1142 = fadd fast float %1138, %1122
  %1143 = fsub fast float -0.000000e+00, %1142
  %1144 = fadd fast float %1139, %1123
  %1145 = fadd fast float %1140, %1124
  %1146 = fmul fast float %1141, %1141
  %1147 = fsub fast float %1142, %1146
  %1148 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1147)  ; FMax(a,b)
  %1149 = fdiv fast float 1.000000e+00, %1148
  %1150 = fmul fast float %1142, %1141
  %1151 = fsub fast float %1144, %1150
  %1152 = fsub fast float %1101, %1141
  %1153 = fmul fast float %1101, %1101
  %1154 = fsub fast float %1153, %1142
  %1155 = fmul fast float %1152, %1149
  %1156 = fmul fast float %1155, %1151
  %1157 = fsub fast float %1154, %1156
  %1158 = fmul fast float %1142, %1142
  %1159 = fsub fast float %1145, %1158
  %1160 = fmul fast float %1151, %1151
  %1161 = fmul fast float %1160, %1149
  %1162 = fsub fast float %1159, %1161
  %1163 = fdiv fast float %1157, %1162
  %1164 = fmul fast float %1151, %1163
  %1165 = fsub fast float %1152, %1164
  %1166 = fmul fast float %1165, %1149
  %1167 = fmul fast float %1166, %1141
  %1168 = fsub fast float 1.000000e+00, %1167
  %1169 = fmul fast float %1142, %1163
  %1170 = fsub fast float %1168, %1169
  %1171 = fmul fast float %1166, %1166
  %1172 = fmul fast float %1163, 4.000000e+00
  %1173 = fmul fast float %1172, %1170
  %1174 = fsub fast float %1171, %1173
  %1175 = call float @dx.op.unary.f32(i32 24, float %1174)  ; Sqrt(value)
  %1176 = fcmp fast oge float %1166, 0.000000e+00
  %1177 = fsub fast float -0.000000e+00, %1175
  %1178 = select i1 %1176, float %1177, float %1175
  %1179 = fsub fast float %1178, %1166
  %1180 = fdiv fast float %1179, %1163
  %1181 = fdiv fast float %1170, %1179
  %1182 = fmul fast float %1180, 5.000000e-01
  %1183 = fmul fast float %1181, 2.000000e+00
  %1184 = select i1 %1176, float %1182, float %1183
  %1185 = select i1 %1176, float %1183, float %1182
  %1186 = call float @dx.op.binary.f32(i32 35, float %1184, float %1185)  ; FMax(a,b)
  %1187 = call float @dx.op.binary.f32(i32 36, float %1184, float %1185)  ; FMin(a,b)
  %1188 = fcmp fast ogt float %1101, %1187
  br i1 %1188, label %1189, label %1199

; <label>:1189                                    ; preds = %1126
  %1190 = fsub fast float %1101, %1187
  %1191 = fsub fast float %1186, %1187
  %1192 = fmul fast float %1190, %1191
  %1193 = fmul fast float %1186, %1101
  %1194 = fadd fast float %1186, %1101
  %1195 = fmul fast float %1194, %1141
  %1196 = fadd fast float %1193, %1142
  %1197 = fsub fast float %1196, %1195
  %1198 = fdiv fast float %1197, %1192
  br label %1199

; <label>:1199                                    ; preds = %1189, %1126
  %1200 = phi float [ %1198, %1189 ], [ 0.000000e+00, %1126 ]
  %1201 = fcmp fast ogt float %1101, %1186
  %1202 = fsub fast float %1101, %1186
  br i1 %1201, label %1203, label %1213

; <label>:1203                                    ; preds = %1199
  %1204 = fsub fast float %1186, %1187
  %1205 = fmul fast float %1204, %1202
  %1206 = fmul fast float %1187, %1101
  %1207 = fadd fast float %1187, %1101
  %1208 = fmul fast float %1207, %1141
  %1209 = fsub fast float %1143, %1206
  %1210 = fadd fast float %1209, %1208
  %1211 = fdiv fast float %1210, %1205
  %1212 = fadd fast float %1211, %1200
  br label %1213

; <label>:1213                                    ; preds = %1203, %1199
  %1214 = phi float [ %1212, %1203 ], [ %1200, %1199 ]
  %1215 = fsub fast float %1101, %1187
  %1216 = fmul fast float %1215, %1202
  %1217 = fmul fast float %1187, %1186
  %1218 = fadd fast float %1187, %1186
  %1219 = fmul fast float %1218, %1141
  %1220 = fadd fast float %1217, %1142
  %1221 = fsub fast float %1220, %1219
  %1222 = fdiv fast float %1221, %1216
  %1223 = call float @dx.op.unary.f32(i32 7, float %1214)  ; Saturate(value)
  %1224 = fcmp fast oeq float %882, 0.000000e+00
  %1225 = extractvalue %dx.types.CBufRet.f32 %1089, 0
  %1226 = fcmp fast oeq float %1225, 0.000000e+00
  %1227 = or i1 %1224, %1226
  %1228 = fmul fast float %1225, 2.000000e+00
  %1229 = fadd fast float %1090, %1091
  %1230 = fdiv fast float %1229, %1228
  %1231 = call float @dx.op.unary.f32(i32 7, float %1230)  ; Saturate(value)
  %1232 = fmul fast float %1231, 2.000000e+00
  %1233 = fsub fast float 3.000000e+00, %1232
  %1234 = fmul fast float %1231, %1231
  %1235 = fmul fast float %1234, %1233
  %1236 = select i1 %1227, float 1.000000e+00, float %1235
  %1237 = fmul fast float %1222, %882
  %1238 = fadd fast float %1223, %1237
  %1239 = call float @dx.op.unary.f32(i32 7, float %1238)  ; Saturate(value)
  %1240 = fmul fast float %1236, %1239
  br label %1241

; <label>:1241                                    ; preds = %1213, %1094
  %1242 = phi float [ %1240, %1213 ], [ 0.000000e+00, %1094 ]
  %1243 = fsub fast float 1.000000e+00, %1242
  %1244 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %19, float %1042, float %1043, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1245 = extractvalue %dx.types.ResRet.f32 %1244, 0
  %1246 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1247 = extractvalue %dx.types.CBufRet.i32 %1246, 2
  %1248 = icmp eq i32 %1247, 0
  br i1 %1248, label %1254, label %1249

; <label>:1249                                    ; preds = %1241
  %1250 = call float @dx.op.unary.f32(i32 7, float %1242)  ; Saturate(value)
  %1251 = fadd fast float %1245, -1.000000e+00
  %1252 = fmul fast float %1250, %1251
  %1253 = fadd fast float %1252, 1.000000e+00
  br label %1254

; <label>:1254                                    ; preds = %1249, %1241
  %1255 = phi float [ %1253, %1249 ], [ %1243, %1241 ]
  %1256 = call float @dx.op.binary.f32(i32 35, float %1245, float %1255)  ; FMax(a,b)
  %1257 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %1258 = extractvalue %dx.types.CBufRet.i32 %1257, 2
  %1259 = and i32 %1258, 1
  %1260 = icmp eq i32 %1259, 0
  %1261 = fcmp fast une float %1256, 1.000000e+00
  %1262 = and i1 %1261, %1260
  br i1 %1262, label %1263, label %1282

; <label>:1263                                    ; preds = %1254
  %1264 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %19, float %1042, float %1043, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1265 = extractvalue %dx.types.ResRet.f32 %1264, 0
  %1266 = extractvalue %dx.types.ResRet.f32 %1264, 1
  %1267 = extractvalue %dx.types.ResRet.f32 %1264, 2
  %1268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1269 = extractvalue %dx.types.CBufRet.f32 %1268, 1
  %1270 = fmul fast float %1269, %1265
  %1271 = fmul fast float %1269, %1266
  %1272 = fmul fast float %1269, %1267
  %1273 = fcmp fast ogt float %1245, 0x3FEFFF2E40000000
  %1274 = fsub fast float 1.000000e+00, %1256
  %1275 = fsub fast float 1.000000e+00, %1245
  %1276 = fdiv fast float %1274, %1275
  %1277 = call float @dx.op.unary.f32(i32 7, float %1276)  ; Saturate(value)
  %1278 = select i1 %1273, float 0.000000e+00, float %1277
  %1279 = fmul fast float %1270, %1278
  %1280 = fmul fast float %1271, %1278
  %1281 = fmul fast float %1272, %1278
  br label %1282

; <label>:1282                                    ; preds = %1263, %1254
  %1283 = phi float [ 0.000000e+00, %1254 ], [ %1279, %1263 ]
  %1284 = phi float [ 0.000000e+00, %1254 ], [ %1280, %1263 ]
  %1285 = phi float [ 0.000000e+00, %1254 ], [ %1281, %1263 ]
  %1286 = fmul fast float %1283, %766
  %1287 = fmul fast float %1284, %766
  %1288 = fmul fast float %1285, %766
  %1289 = fmul fast float %1256, %1017
  %1290 = call float @dx.op.dot3.f32(i32 55, float %1256, float %1256, float %1256, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1291 = call float @dx.op.dot3.f32(i32 55, float %1286, float %1287, float %1288, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1292 = select i1 %111, float %1290, float %1256
  %1293 = select i1 %111, float 1.000000e+00, float %1256
  %1294 = select i1 %111, float %1291, float %1286
  %1295 = select i1 %111, float 0.000000e+00, float %1287
  %1296 = select i1 %111, float 0.000000e+00, float %1288
  %1297 = fmul fast float %1292, %1029
  %1298 = fmul fast float %1292, %1030
  %1299 = fmul fast float %1293, %1031
  %1300 = fadd fast float %1297, %1294
  %1301 = fadd fast float %1298, %1295
  %1302 = fadd fast float %1296, %1299
  %1303 = fmul fast float %1292, %1032
  %1304 = fmul fast float %1292, %1033
  %1305 = fmul fast float %1293, %1034
  br label %1306

; <label>:1306                                    ; preds = %1282, %1038, %1005, %996
  %1307 = phi float [ %998, %996 ], [ %1029, %1005 ], [ %1300, %1282 ], [ %1029, %1038 ]
  %1308 = phi float [ %999, %996 ], [ %1030, %1005 ], [ %1301, %1282 ], [ %1030, %1038 ]
  %1309 = phi float [ %1000, %996 ], [ %1031, %1005 ], [ %1302, %1282 ], [ %1031, %1038 ]
  %1310 = phi float [ %1001, %996 ], [ %1032, %1005 ], [ %1303, %1282 ], [ %1032, %1038 ]
  %1311 = phi float [ %1002, %996 ], [ %1033, %1005 ], [ %1304, %1282 ], [ %1033, %1038 ]
  %1312 = phi float [ %1003, %996 ], [ %1034, %1005 ], [ %1305, %1282 ], [ %1034, %1038 ]
  %1313 = phi float [ %1004, %996 ], [ %1017, %1005 ], [ %1289, %1282 ], [ %1017, %1038 ]
  %1314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1315 = extractvalue %dx.types.CBufRet.f32 %1314, 2
  %1316 = extractvalue %dx.types.CBufRet.f32 %1314, 3
  %1317 = fmul fast float %1315, %53
  %1318 = fmul fast float %1316, %54
  %1319 = call float @dx.op.unary.f32(i32 7, float %1317)  ; Saturate(value)
  %1320 = call float @dx.op.unary.f32(i32 7, float %1318)  ; Saturate(value)
  %1321 = select i1 %752, i32 2, i32 0
  %1322 = or i32 %1321, 1
  %1323 = uitofp i32 %1322 to float
  %1324 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %1319, float %1320, float %1323, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1325 = extractvalue %dx.types.ResRet.f32 %1324, 0
  %1326 = extractvalue %dx.types.ResRet.f32 %1324, 1
  %1327 = extractvalue %dx.types.ResRet.f32 %1324, 2
  %1328 = extractvalue %dx.types.ResRet.f32 %1324, 3
  %1329 = add nuw nsw i32 %1321, 2
  %1330 = uitofp i32 %1329 to float
  %1331 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %1319, float %1320, float %1330, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1332 = extractvalue %dx.types.ResRet.f32 %1331, 0
  %1333 = extractvalue %dx.types.ResRet.f32 %1331, 1
  %1334 = extractvalue %dx.types.ResRet.f32 %1331, 2
  %1335 = extractvalue %dx.types.ResRet.f32 %1331, 3
  %1336 = call float @dx.op.binary.f32(i32 35, float %1326, float %1327)  ; FMax(a,b)
  %1337 = call float @dx.op.binary.f32(i32 35, float %1325, float %1336)  ; FMax(a,b)
  %1338 = call float @dx.op.binary.f32(i32 35, float %1337, float %1328)  ; FMax(a,b)
  %1339 = call float @dx.op.binary.f32(i32 36, float %1333, float %1334)  ; FMin(a,b)
  %1340 = call float @dx.op.binary.f32(i32 36, float %1332, float %1339)  ; FMin(a,b)
  %1341 = call float @dx.op.binary.f32(i32 36, float %1340, float %1335)  ; FMin(a,b)
  %1342 = fmul fast float %1338, 2.550000e+02
  %1343 = fadd fast float %1342, 0x3F70101020000000
  %1344 = fptoui float %1343 to i32
  %1345 = fmul fast float %1341, 2.550000e+02
  %1346 = fadd fast float %1345, 0x3F70101020000000
  %1347 = fptoui float %1346 to i32
  %1348 = icmp ult i32 %1344, %1347
  br i1 %1348, label %1349, label %1401

; <label>:1349                                    ; preds = %1306
  %1350 = fcmp fast ogt float %47, 9.843750e-01
  %1351 = fadd fast float %997, -4.000000e+00
  %1352 = select i1 %1350, float -4.000000e+00, float %1351
  %1353 = call float @dx.op.binary.f32(i32 35, float %1352, float 0.000000e+00)  ; FMax(a,b)
  %1354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1355 = extractvalue %dx.types.CBufRet.f32 %1354, 0
  %1356 = fadd fast float %1355, %1353
  %1357 = extractvalue %dx.types.CBufRet.f32 %1354, 2
  %1358 = fmul fast float %1356, %1357
  %1359 = call float @dx.op.unary.f32(i32 23, float %1358)  ; Log(value)
  %1360 = extractvalue %dx.types.CBufRet.f32 %1354, 3
  %1361 = fmul fast float %1360, %1359
  %1362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1363 = extractvalue %dx.types.CBufRet.f32 %1362, 2
  %1364 = fmul fast float %1361, %1363
  %1365 = call float @dx.op.unary.f32(i32 7, float %1364)  ; Saturate(value)
  %1366 = uitofp i32 %1344 to float
  %1367 = uitofp i32 %1347 to float
  %1368 = fadd fast float %1366, 5.000000e-01
  %1369 = fadd fast float %1367, 5.000000e-01
  %1370 = fmul fast float %1363, %1368
  %1371 = fmul fast float %1363, %1369
  %1372 = fadd fast float %1370, 0x3F0FFB4800000000
  %1373 = fadd fast float %1371, 0xBF0FFB4800000000
  %1374 = call float @dx.op.binary.f32(i32 35, float %1365, float %1372)  ; FMax(a,b)
  %1375 = call float @dx.op.binary.f32(i32 36, float %1374, float %1373)  ; FMin(a,b)
  %1376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1377 = extractvalue %dx.types.CBufRet.f32 %1376, 1
  %1378 = extractvalue %dx.types.CBufRet.f32 %1376, 2
  %1379 = extractvalue %dx.types.CBufRet.f32 %1376, 0
  %1380 = select i1 %752, float %1379, float 0.000000e+00
  %1381 = fmul fast float %1377, %1375
  %1382 = fadd fast float %1380, %1381
  %1383 = fadd fast float %1380, %1378
  %1384 = fsub fast float %1377, %1378
  %1385 = fadd fast float %1384, %1380
  %1386 = call float @dx.op.binary.f32(i32 35, float %1382, float %1383)  ; FMax(a,b)
  %1387 = call float @dx.op.binary.f32(i32 36, float %1386, float %1385)  ; FMin(a,b)
  %1388 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %1319, float %1320, float %1387, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1389 = extractvalue %dx.types.ResRet.f32 %1388, 0
  %1390 = extractvalue %dx.types.ResRet.f32 %1388, 1
  %1391 = extractvalue %dx.types.ResRet.f32 %1388, 2
  %1392 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %1319, float %1320, float %1387, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1393 = extractvalue %dx.types.ResRet.f32 %1392, 0
  %1394 = extractvalue %dx.types.ResRet.f32 %1392, 1
  %1395 = extractvalue %dx.types.ResRet.f32 %1392, 2
  %1396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1397 = extractvalue %dx.types.CBufRet.f32 %1396, 1
  %1398 = fmul fast float %1397, %1393
  %1399 = fmul fast float %1397, %1394
  %1400 = fmul fast float %1397, %1395
  br label %1401

; <label>:1401                                    ; preds = %1349, %1306
  %1402 = phi float [ %1389, %1349 ], [ 1.000000e+00, %1306 ]
  %1403 = phi float [ %1390, %1349 ], [ 1.000000e+00, %1306 ]
  %1404 = phi float [ %1391, %1349 ], [ 1.000000e+00, %1306 ]
  %1405 = phi float [ %1398, %1349 ], [ 0.000000e+00, %1306 ]
  %1406 = phi float [ %1399, %1349 ], [ 0.000000e+00, %1306 ]
  %1407 = phi float [ %1400, %1349 ], [ 0.000000e+00, %1306 ]
  %1408 = fmul fast float %1405, %766
  %1409 = fmul fast float %1406, %766
  %1410 = fmul fast float %1407, %766
  %1411 = fmul fast float %1402, %1313
  %1412 = call float @dx.op.dot3.f32(i32 55, float %1402, float %1403, float %1404, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1413 = call float @dx.op.dot3.f32(i32 55, float %1408, float %1409, float %1410, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1414 = select i1 %111, float %1412, float %1402
  %1415 = select i1 %111, float %1412, float %1403
  %1416 = select i1 %111, float 1.000000e+00, float %1404
  %1417 = select i1 %111, float %1413, float %1408
  %1418 = select i1 %111, float 0.000000e+00, float %1409
  %1419 = select i1 %111, float 0.000000e+00, float %1410
  %1420 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1421 = extractvalue %dx.types.CBufRet.i32 %1420, 3
  %1422 = and i32 %1421, 3
  %1423 = icmp ne i32 %1422, 0
  %1424 = and i32 %1421, 4
  %1425 = icmp ne i32 %1424, 0
  %1426 = and i1 %1423, %1425
  %1427 = and i1 %111, %1426
  br i1 %1427, label %1428, label %1434

; <label>:1428                                    ; preds = %1401
  %1429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1430 = extractvalue %dx.types.CBufRet.f32 %1429, 1
  %1431 = fadd fast float %1411, -1.000000e+00
  %1432 = fmul fast float %1430, %1431
  %1433 = fadd fast float %1432, 1.000000e+00
  br label %1434

; <label>:1434                                    ; preds = %1428, %1401
  %1435 = phi float [ %1433, %1428 ], [ %1411, %1401 ]
  %1436 = fadd fast float %1310, %1307
  %1437 = fmul fast float %1414, %1436
  %1438 = fadd fast float %1437, %1417
  %1439 = fadd fast float %1311, %1308
  %1440 = fmul fast float %1415, %1439
  %1441 = fadd fast float %1440, %1418
  %1442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1443 = extractvalue %dx.types.CBufRet.f32 %1442, 0
  br i1 %111, label %1444, label %1466

; <label>:1444                                    ; preds = %1434
  %1445 = fadd fast float %1438, %1441
  %1446 = fmul fast float %1443, %1445
  %1447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1448 = extractvalue %dx.types.CBufRet.f32 %1447, 3
  %1449 = extractvalue %dx.types.CBufRet.f32 %771, 1
  %1450 = fsub fast float %774, %1449
  %1451 = extractvalue %dx.types.CBufRet.f32 %771, 2
  %1452 = fmul fast float %1450, %1451
  %1453 = call float @dx.op.unary.f32(i32 7, float %1452)  ; Saturate(value)
  %1454 = fsub fast float %1453, %1448
  %1455 = fmul fast float %1454, %1435
  %1456 = fadd fast float %1455, %1448
  %1457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1458 = extractvalue %dx.types.CBufRet.f32 %1457, 0
  %1459 = fsub fast float %1456, %1458
  %1460 = fmul fast float %1459, 1.000000e+01
  %1461 = call float @dx.op.unary.f32(i32 7, float %1460)  ; Saturate(value)
  %1462 = fsub fast float %728, %766
  %1463 = fmul fast float %1461, %1462
  %1464 = fadd fast float %1463, %766
  %1465 = fmul fast float %1464, %1456
  br label %1478

; <label>:1466                                    ; preds = %1434
  %1467 = fadd fast float %1312, %1309
  %1468 = fmul fast float %1416, %1467
  %1469 = fadd fast float %1468, %1419
  %1470 = fmul fast float %1443, %1438
  %1471 = fmul fast float %1443, %1441
  %1472 = fmul fast float %1443, %1469
  %1473 = call float @dx.op.binary.f32(i32 35, float %1471, float %1472)  ; FMax(a,b)
  %1474 = call float @dx.op.binary.f32(i32 35, float %1470, float %1473)  ; FMax(a,b)
  %1475 = call float @dx.op.binary.f32(i32 35, float %1474, float %766)  ; FMax(a,b)
  %1476 = fcmp fast ugt float %1475, 0x3F10000000000000
  br i1 %1476, label %1478, label %1477

; <label>:1477                                    ; preds = %1466
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1478

; <label>:1478                                    ; preds = %1477, %1466, %1444
  %1479 = phi float [ %1446, %1444 ], [ %1470, %1477 ], [ %1470, %1466 ]
  %1480 = phi float [ %1465, %1444 ], [ %1471, %1477 ], [ %1471, %1466 ]
  %1481 = phi float [ %1464, %1444 ], [ %1472, %1477 ], [ %1472, %1466 ]
  %1482 = phi float [ %1464, %1444 ], [ %766, %1477 ], [ %766, %1466 ]
  %1483 = fadd fast float %565, 0x3FE3C6EF40000000
  %1484 = call float @dx.op.unary.f32(i32 22, float %1483)  ; Frc(value)
  %1485 = call float @dx.op.unary.f32(i32 23, float %1479)  ; Log(value)
  %1486 = fadd fast float %1485, -7.000000e+00
  %1487 = call float @dx.op.unary.f32(i32 21, float %1486)  ; Exp(value)
  %1488 = fmul fast float %1484, 2.000000e+00
  %1489 = fadd fast float %1488, -1.000000e+00
  %1490 = fmul fast float %1487, %1489
  %1491 = fcmp fast ogt float %1479, 0.000000e+00
  %1492 = select i1 %1491, float %1490, float 0.000000e+00
  %1493 = fadd fast float %1492, %1479
  %1494 = fadd fast float %565, 0x3FF3C6EF40000000
  %1495 = call float @dx.op.unary.f32(i32 22, float %1494)  ; Frc(value)
  %1496 = call float @dx.op.unary.f32(i32 23, float %1480)  ; Log(value)
  %1497 = fadd fast float %1496, -7.000000e+00
  %1498 = call float @dx.op.unary.f32(i32 21, float %1497)  ; Exp(value)
  %1499 = fmul fast float %1495, 2.000000e+00
  %1500 = fadd fast float %1499, -1.000000e+00
  %1501 = fmul fast float %1498, %1500
  %1502 = fcmp fast ogt float %1480, 0.000000e+00
  %1503 = select i1 %1502, float %1501, float 0.000000e+00
  %1504 = fadd fast float %1503, %1480
  %1505 = fadd fast float %565, 0x3FFDAA66E0000000
  %1506 = call float @dx.op.unary.f32(i32 22, float %1505)  ; Frc(value)
  %1507 = call float @dx.op.unary.f32(i32 23, float %1481)  ; Log(value)
  %1508 = fadd fast float %1507, -6.000000e+00
  %1509 = call float @dx.op.unary.f32(i32 21, float %1508)  ; Exp(value)
  %1510 = fmul fast float %1506, 2.000000e+00
  %1511 = fadd fast float %1510, -1.000000e+00
  %1512 = fmul fast float %1509, %1511
  %1513 = fcmp fast ogt float %1481, 0.000000e+00
  %1514 = select i1 %1513, float %1512, float 0.000000e+00
  %1515 = fadd fast float %1514, %1481
  %1516 = select i1 %111, float %1480, float %1504
  %1517 = select i1 %111, float %1481, float %1515
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1518 = call float @dx.op.binary.f32(i32 36, float %1493, float 3.225500e+04)  ; FMin(a,b)
  %1519 = call float @dx.op.binary.f32(i32 36, float %1516, float 3.225500e+04)  ; FMin(a,b)
  %1520 = call float @dx.op.binary.f32(i32 36, float %1517, float 3.225500e+04)  ; FMin(a,b)
  %1521 = call float @dx.op.binary.f32(i32 36, float %1482, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1518)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1519)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1520)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1521)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1482)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1482)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1482)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1482)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

