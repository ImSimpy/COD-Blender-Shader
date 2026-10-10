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
; shader hash: 56a505d3d7180e997a594ea32c3cd58e
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
  %170 = and i32 %131, 16
  %171 = icmp ne i32 %170, 0
  %172 = select i1 %171, float 1.000000e+00, float %44
  %173 = add i32 %24, 92
  %174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %173, i32 undef)  ; BufferLoad(srv,index,wot)
  %175 = extractvalue %dx.types.ResRet.i32 %174, 0
  %176 = add i32 %175, 0
  %177 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %176, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %179 = extractvalue %dx.types.CBufRet.f32 %178, 2
  %180 = call %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32 61, %dx.types.Handle %177, %dx.types.Handle %50, float %168, float %169, float undef, float undef, i32 0, i32 0, i32 undef, float %179, float undef)  ; SampleBias(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,bias,clamp)
  %181 = extractvalue %dx.types.ResRet.f32 %180, 0
  %182 = fmul fast float %181, %172
  %183 = icmp eq i32 %170, 0
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
  br i1 %249, label %527, label %250, !dx.controlflow.hints !61

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
  %476 = fmul fast float %39, 2.000000e+00
  %477 = fmul fast float %40, 2.000000e+00
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
  %524 = fmul fast float %523, %44
  %525 = fmul fast float %522, %208
  %526 = fmul fast float %525, %523
  br label %527

; <label>:527                                     ; preds = %514, %247
  %528 = phi float [ %519, %514 ], [ %41, %247 ]
  %529 = phi float [ %520, %514 ], [ %42, %247 ]
  %530 = phi float [ %521, %514 ], [ %43, %247 ]
  %531 = phi float [ %526, %514 ], [ %208, %247 ]
  %532 = phi float [ %524, %514 ], [ %44, %247 ]
  %533 = phi float [ %516, %514 ], [ %29, %247 ]
  %534 = phi float [ %517, %514 ], [ %30, %247 ]
  %535 = phi float [ %518, %514 ], [ %31, %247 ]
  %536 = fmul fast float %533, %32
  %537 = fmul fast float %534, %32
  %538 = fmul fast float %535, %32
  %539 = fmul fast float %533, %38
  %540 = fmul fast float %534, %38
  %541 = fmul fast float %535, %38
  %542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %543 = extractvalue %dx.types.CBufRet.f32 %542, 2
  %544 = fptosi float %48 to i32
  %545 = sitofp i32 %544 to float
  %546 = fadd fast float %543, %545
  %547 = fmul fast float %546, 0x3FE3C6EF40000000
  %548 = frem fast float %53, 2.560000e+02
  %549 = frem fast float %54, 2.560000e+02
  %550 = fptoui float %548 to i32
  %551 = fptoui float %549 to i32
  %552 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %17, i32 0, i32 %550, i32 %551, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %553 = extractvalue %dx.types.ResRet.f32 %552, 0
  %554 = fadd fast float %553, %547
  %555 = call float @dx.op.unary.f32(i32 22, float %554)  ; Frc(value)
  %556 = and i32 %131, 1
  %557 = icmp eq i32 %556, 0
  br i1 %557, label %618, label %558, !dx.controlflow.hints !64

; <label>:558                                     ; preds = %527
  %559 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %128, i32 undef)  ; BufferLoad(srv,index,wot)
  %560 = extractvalue %dx.types.ResRet.f32 %559, 2
  %561 = extractvalue %dx.types.ResRet.f32 %559, 3
  %562 = add i32 %128, 16
  %563 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %562, i32 undef)  ; BufferLoad(srv,index,wot)
  %564 = extractvalue %dx.types.ResRet.f32 %563, 0
  %565 = extractvalue %dx.types.ResRet.f32 %563, 1
  %566 = extractvalue %dx.types.ResRet.f32 %563, 2
  %567 = add i32 %128, 32
  %568 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %567, i32 undef)  ; BufferLoad(srv,index,wot)
  %569 = extractvalue %dx.types.ResRet.f32 %568, 0
  %570 = extractvalue %dx.types.ResRet.f32 %568, 1
  %571 = extractvalue %dx.types.ResRet.f32 %568, 2
  %572 = and i32 %131, 2
  %573 = icmp eq i32 %572, 0
  %574 = call float @dx.op.dot3.f32(i32 55, float %35, float %36, float %37, float %35, float %36, float %37)  ; Dot3(ax,ay,az,bx,by,bz)
  %575 = call float @dx.op.unary.f32(i32 25, float %574)  ; Rsqrt(value)
  %576 = fmul fast float %575, %35
  %577 = fmul fast float %575, %36
  %578 = fmul fast float %575, %37
  %579 = call float @dx.op.dot3.f32(i32 55, float %88, float %89, float %90, float %88, float %89, float %90)  ; Dot3(ax,ay,az,bx,by,bz)
  %580 = call float @dx.op.unary.f32(i32 25, float %579)  ; Rsqrt(value)
  %581 = fmul fast float %580, %88
  %582 = fmul fast float %580, %89
  %583 = fmul fast float %580, %90
  %584 = call float @dx.op.dot3.f32(i32 55, float %581, float %582, float %583, float %576, float %577, float %578)  ; Dot3(ax,ay,az,bx,by,bz)
  %585 = fmul fast float %584, %584
  %586 = fmul fast float %585, %560
  %587 = fadd fast float %586, %561
  %588 = call float @dx.op.unary.f32(i32 7, float %587)  ; Saturate(value)
  br i1 %573, label %589, label %599, !dx.controlflow.hints !65

; <label>:589                                     ; preds = %558
  %590 = extractvalue %dx.types.ResRet.f32 %559, 1
  %591 = extractvalue %dx.types.ResRet.f32 %559, 0
  %592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %593 = extractvalue %dx.types.CBufRet.f32 %592, 3
  %594 = fmul fast float %593, %579
  %595 = fsub fast float %591, %594
  %596 = fmul fast float %595, %590
  %597 = call float @dx.op.unary.f32(i32 7, float %596)  ; Saturate(value)
  %598 = fmul fast float %597, %588
  br label %599

; <label>:599                                     ; preds = %589, %558
  %600 = phi float [ %598, %589 ], [ %588, %558 ]
  %601 = fsub fast float %564, %569
  %602 = fsub fast float %565, %570
  %603 = fsub fast float %566, %571
  %604 = fmul fast float %600, %601
  %605 = fmul fast float %600, %602
  %606 = fmul fast float %600, %603
  %607 = fadd fast float %604, %569
  %608 = fadd fast float %605, %570
  %609 = fadd fast float %606, %571
  %610 = fmul fast float %607, %528
  %611 = fmul fast float %608, %529
  %612 = fmul fast float %609, %530
  %613 = fmul fast float %607, %536
  %614 = fmul fast float %608, %537
  %615 = fmul fast float %609, %538
  %616 = fmul fast float %600, %531
  %617 = fmul fast float %600, %532
  br label %618

; <label>:618                                     ; preds = %599, %527
  %619 = phi float [ %610, %599 ], [ %528, %527 ]
  %620 = phi float [ %611, %599 ], [ %529, %527 ]
  %621 = phi float [ %612, %599 ], [ %530, %527 ]
  %622 = phi float [ %616, %599 ], [ %531, %527 ]
  %623 = phi float [ %617, %599 ], [ %532, %527 ]
  %624 = phi float [ %613, %599 ], [ %536, %527 ]
  %625 = phi float [ %614, %599 ], [ %537, %527 ]
  %626 = phi float [ %615, %599 ], [ %538, %527 ]
  %627 = add i32 %24, 88
  %628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %627, i32 undef)  ; BufferLoad(srv,index,wot)
  %629 = extractvalue %dx.types.ResRet.i32 %628, 0
  %630 = add i32 %629, 0
  %631 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %630, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %632 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %631, %dx.types.Handle %49, float %168, float %169, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %633 = extractvalue %dx.types.ResRet.f32 %632, 0
  %634 = extractvalue %dx.types.ResRet.f32 %632, 1
  %635 = extractvalue %dx.types.ResRet.f32 %632, 2
  %636 = add i32 %24, 44
  %637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %636, i32 undef)  ; BufferLoad(srv,index,wot)
  %638 = extractvalue %dx.types.ResRet.i32 %637, 0
  %639 = shl i32 %638, 4
  %640 = and i32 %639, 32752
  %641 = call float @dx.op.legacyF16ToF32(i32 131, i32 %640)  ; LegacyF16ToF32(value)
  %642 = lshr i32 %638, 7
  %643 = and i32 %642, 32752
  %644 = call float @dx.op.legacyF16ToF32(i32 131, i32 %643)  ; LegacyF16ToF32(value)
  %645 = lshr i32 %638, 22
  %646 = shl nuw nsw i32 %645, 5
  %647 = call float @dx.op.legacyF16ToF32(i32 131, i32 %646)  ; LegacyF16ToF32(value)
  %648 = fmul fast float %641, %633
  %649 = fmul fast float %644, %634
  %650 = fmul fast float %647, %635
  %651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %652 = extractvalue %dx.types.CBufRet.f32 %651, 0
  %653 = fmul fast float %648, %652
  %654 = fmul fast float %649, %652
  %655 = fmul fast float %650, %652
  %656 = add i32 %24, 48
  %657 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %656, i32 undef)  ; BufferLoad(srv,index,wot)
  %658 = extractvalue %dx.types.ResRet.i32 %657, 0
  %659 = lshr i32 %658, 22
  %660 = shl nuw nsw i32 %659, 5
  %661 = call float @dx.op.legacyF16ToF32(i32 131, i32 %660)  ; LegacyF16ToF32(value)
  %662 = fmul fast float %661, %653
  %663 = select i1 %111, float %662, float %653
  %664 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %19, float %33, float %34, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %665 = extractvalue %dx.types.ResRet.f32 %664, 0
  %666 = extractvalue %dx.types.ResRet.f32 %664, 1
  %667 = extractvalue %dx.types.ResRet.f32 %664, 2
  %668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %669 = extractvalue %dx.types.CBufRet.f32 %668, 1
  %670 = fmul fast float %669, %665
  %671 = fmul fast float %669, %666
  %672 = fmul fast float %669, %667
  %673 = call float @dx.op.unary.f32(i32 7, float %619)  ; Saturate(value)
  %674 = call float @dx.op.unary.f32(i32 7, float %620)  ; Saturate(value)
  %675 = call float @dx.op.unary.f32(i32 7, float %621)  ; Saturate(value)
  %676 = fmul fast float %663, %624
  %677 = fmul fast float %654, %625
  %678 = fmul fast float %655, %626
  %679 = call float @dx.op.dot3.f32(i32 55, float %676, float %677, float %678, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %680 = select i1 %111, float 0.000000e+00, float %676
  %681 = select i1 %111, float %679, float %677
  %682 = select i1 %111, float 0.000000e+00, float %678
  %683 = fmul fast float %539, %663
  %684 = fmul fast float %540, %654
  %685 = fmul fast float %541, %655
  %686 = call float @dx.op.dot3.f32(i32 55, float %633, float %634, float %635, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %687 = add i32 %24, 32
  %688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %687, i32 undef)  ; BufferLoad(srv,index,wot)
  %689 = extractvalue %dx.types.ResRet.i32 %688, 0
  %690 = and i32 %689, 255
  %691 = uitofp i32 %690 to float
  %692 = lshr i32 %689, 8
  %693 = and i32 %692, 255
  %694 = uitofp i32 %693 to float
  %695 = fmul fast float %694, %686
  %696 = fadd fast float %695, %691
  %697 = fmul fast float %696, 0x3F70101020000000
  %698 = call float @dx.op.unary.f32(i32 7, float %697)  ; Saturate(value)
  %699 = and i32 %131, 8192
  %700 = icmp eq i32 %699, 0
  %701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %702 = extractvalue %dx.types.CBufRet.f32 %701, 0
  br i1 %700, label %709, label %703, !dx.controlflow.hints !66

; <label>:703                                     ; preds = %618
  %704 = add i32 %128, 176
  %705 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %704, i32 undef)  ; BufferLoad(srv,index,wot)
  %706 = extractvalue %dx.types.ResRet.f32 %705, 0
  %707 = fcmp fast oge float %706, 0.000000e+00
  %708 = select i1 %707, float %706, float %702
  br label %716

; <label>:709                                     ; preds = %618
  %710 = add i32 %24, 72
  %711 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %710, i32 undef)  ; BufferLoad(srv,index,wot)
  %712 = extractvalue %dx.types.ResRet.i32 %711, 0
  %713 = bitcast i32 %712 to float
  %714 = fcmp fast oge float %713, 0.000000e+00
  %715 = select i1 %714, float %713, float %702
  br label %716

; <label>:716                                     ; preds = %709, %703
  %717 = phi float [ %708, %703 ], [ %715, %709 ]
  %718 = fmul fast float %623, %622
  %719 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %211, i32 %212, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %720 = extractvalue %dx.types.ResRet.i32 %719, 0
  %721 = lshr i32 %720, 18
  %722 = uitofp i32 %721 to float
  %723 = fmul fast float %722, 0x3F4C00EBA0000000
  %724 = call float @dx.op.unary.f32(i32 21, float %723)  ; Exp(value)
  %725 = fadd fast float %724, -1.000000e+00
  %726 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %10, i32 0)  ; GetDimensions(handle,mipLevel)
  %727 = extractvalue %dx.types.Dimensions %726, 0
  %728 = sitofp i32 %727 to float
  %729 = extractvalue %dx.types.Dimensions %726, 1
  %730 = sitofp i32 %729 to float
  %731 = fcmp fast oge float %209, %728
  %732 = fcmp fast oge float %210, %730
  %733 = or i1 %731, %732
  %734 = select i1 %733, float 0x4197782600000000, float %725
  %735 = icmp eq i32 %127, 3
  %736 = fcmp fast ogt float %48, %734
  %737 = and i1 %235, %736
  %738 = or i1 %735, %737
  %739 = icmp eq i32 %127, 2
  %740 = fcmp fast ole float %48, %734
  %741 = and i1 %739, %740
  %742 = or i1 %741, %738
  %743 = fmul fast float %683, %670
  %744 = fmul fast float %684, %671
  %745 = fmul fast float %685, %672
  %746 = fadd fast float %743, %680
  %747 = fadd fast float %681, %744
  %748 = fadd fast float %745, %682
  %749 = fmul fast float %746, %622
  %750 = fmul fast float %747, %622
  %751 = fmul fast float %748, %622
  %752 = fmul fast float %671, %622
  %753 = fmul fast float %672, %622
  %754 = fsub fast float 1.000000e+00, %622
  %755 = call float @dx.op.dot3.f32(i32 55, float %754, float %754, float %754, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %756 = fsub fast float 1.000000e+00, %755
  %757 = fmul fast float %717, %698
  %758 = fsub fast float 1.000000e+00, %718
  %759 = fsub fast float %758, %698
  %760 = call float @dx.op.unary.f32(i32 7, float %759)  ; Saturate(value)
  %761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %762 = extractvalue %dx.types.CBufRet.f32 %761, 3
  %763 = fmul fast float %762, %760
  %764 = fadd fast float %763, %757
  %765 = and i32 %131, 1048576
  %766 = icmp eq i32 %765, 0
  br i1 %766, label %858, label %767, !dx.controlflow.hints !67

; <label>:767                                     ; preds = %716
  %768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %769 = extractvalue %dx.types.CBufRet.f32 %768, 2
  %770 = extractvalue %dx.types.CBufRet.f32 %768, 3
  %771 = fmul fast float %769, %53
  %772 = fmul fast float %770, %54
  %773 = call float @dx.op.unary.f32(i32 7, float %771)  ; Saturate(value)
  %774 = call float @dx.op.unary.f32(i32 7, float %772)  ; Saturate(value)
  %775 = select i1 %742, i32 2, i32 0
  %776 = or i32 %775, 1
  %777 = uitofp i32 %776 to float
  %778 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %773, float %774, float %777, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %779 = extractvalue %dx.types.ResRet.f32 %778, 0
  %780 = extractvalue %dx.types.ResRet.f32 %778, 1
  %781 = extractvalue %dx.types.ResRet.f32 %778, 2
  %782 = extractvalue %dx.types.ResRet.f32 %778, 3
  %783 = add nuw nsw i32 %775, 2
  %784 = uitofp i32 %783 to float
  %785 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %773, float %774, float %784, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %786 = extractvalue %dx.types.ResRet.f32 %785, 0
  %787 = extractvalue %dx.types.ResRet.f32 %785, 1
  %788 = extractvalue %dx.types.ResRet.f32 %785, 2
  %789 = extractvalue %dx.types.ResRet.f32 %785, 3
  %790 = call float @dx.op.binary.f32(i32 35, float %780, float %781)  ; FMax(a,b)
  %791 = call float @dx.op.binary.f32(i32 35, float %779, float %790)  ; FMax(a,b)
  %792 = call float @dx.op.binary.f32(i32 35, float %791, float %782)  ; FMax(a,b)
  %793 = call float @dx.op.binary.f32(i32 36, float %787, float %788)  ; FMin(a,b)
  %794 = call float @dx.op.binary.f32(i32 36, float %786, float %793)  ; FMin(a,b)
  %795 = call float @dx.op.binary.f32(i32 36, float %794, float %789)  ; FMin(a,b)
  %796 = fmul fast float %792, 2.550000e+02
  %797 = fadd fast float %796, 0x3F70101020000000
  %798 = fptoui float %797 to i32
  %799 = fmul fast float %795, 2.550000e+02
  %800 = fadd fast float %799, 0x3F70101020000000
  %801 = fptoui float %800 to i32
  %802 = icmp ult i32 %798, %801
  br i1 %802, label %803, label %851

; <label>:803                                     ; preds = %767
  %804 = fcmp fast ogt float %47, 9.843750e-01
  %805 = fadd fast float %48, -4.000000e+00
  %806 = select i1 %804, float -4.000000e+00, float %805
  %807 = call float @dx.op.binary.f32(i32 35, float %806, float 0.000000e+00)  ; FMax(a,b)
  %808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %809 = extractvalue %dx.types.CBufRet.f32 %808, 0
  %810 = fadd fast float %809, %807
  %811 = extractvalue %dx.types.CBufRet.f32 %808, 2
  %812 = fmul fast float %810, %811
  %813 = call float @dx.op.unary.f32(i32 23, float %812)  ; Log(value)
  %814 = extractvalue %dx.types.CBufRet.f32 %808, 3
  %815 = fmul fast float %814, %813
  %816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %817 = extractvalue %dx.types.CBufRet.f32 %816, 2
  %818 = fmul fast float %815, %817
  %819 = call float @dx.op.unary.f32(i32 7, float %818)  ; Saturate(value)
  %820 = uitofp i32 %798 to float
  %821 = uitofp i32 %801 to float
  %822 = fadd fast float %820, 5.000000e-01
  %823 = fadd fast float %821, 5.000000e-01
  %824 = fmul fast float %817, %822
  %825 = fmul fast float %817, %823
  %826 = fadd fast float %824, 0x3F0FFB4800000000
  %827 = fadd fast float %825, 0xBF0FFB4800000000
  %828 = call float @dx.op.binary.f32(i32 35, float %819, float %826)  ; FMax(a,b)
  %829 = call float @dx.op.binary.f32(i32 36, float %828, float %827)  ; FMin(a,b)
  %830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %831 = extractvalue %dx.types.CBufRet.f32 %830, 1
  %832 = extractvalue %dx.types.CBufRet.f32 %830, 2
  %833 = extractvalue %dx.types.CBufRet.f32 %830, 0
  %834 = select i1 %742, float %833, float 0.000000e+00
  %835 = fmul fast float %831, %829
  %836 = fadd fast float %834, %835
  %837 = fadd fast float %834, %832
  %838 = fsub fast float %831, %832
  %839 = fadd fast float %838, %834
  %840 = call float @dx.op.binary.f32(i32 35, float %836, float %837)  ; FMax(a,b)
  %841 = call float @dx.op.binary.f32(i32 36, float %840, float %839)  ; FMin(a,b)
  %842 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %18, float %773, float %774, float %841, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %843 = extractvalue %dx.types.ResRet.f32 %842, 0
  %844 = extractvalue %dx.types.ResRet.f32 %842, 1
  %845 = extractvalue %dx.types.ResRet.f32 %842, 2
  %846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %847 = extractvalue %dx.types.CBufRet.f32 %846, 1
  %848 = fmul fast float %847, %843
  %849 = fmul fast float %847, %844
  %850 = fmul fast float %847, %845
  br label %851

; <label>:851                                     ; preds = %803, %767
  %852 = phi float [ %848, %803 ], [ 1.000000e+00, %767 ]
  %853 = phi float [ %849, %803 ], [ 1.000000e+00, %767 ]
  %854 = phi float [ %850, %803 ], [ 1.000000e+00, %767 ]
  %855 = fmul fast float %852, %749
  %856 = fmul fast float %853, %750
  %857 = fmul fast float %854, %751
  br label %858

; <label>:858                                     ; preds = %851, %716
  %859 = phi float [ %855, %851 ], [ %749, %716 ]
  %860 = phi float [ %856, %851 ], [ %750, %716 ]
  %861 = phi float [ %857, %851 ], [ %751, %716 ]
  %862 = and i32 %131, 2097152
  %863 = icmp eq i32 %862, 0
  br i1 %863, label %868, label %864, !dx.controlflow.hints !68

; <label>:864                                     ; preds = %858
  %865 = add i32 %128, 192
  %866 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %865, i32 undef)  ; BufferLoad(srv,index,wot)
  %867 = extractvalue %dx.types.ResRet.f32 %866, 0
  br label %871

; <label>:868                                     ; preds = %858
  %869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %870 = extractvalue %dx.types.CBufRet.f32 %869, 3
  br label %871

; <label>:871                                     ; preds = %868, %864
  %872 = phi float [ %867, %864 ], [ %870, %868 ]
  %873 = fmul fast float %673, %622
  %874 = fmul fast float %873, %670
  %875 = fmul fast float %752, %674
  %876 = fmul fast float %753, %675
  br i1 %737, label %877, label %986

; <label>:877                                     ; preds = %871
  %878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %879 = extractvalue %dx.types.CBufRet.f32 %878, 2
  %880 = extractvalue %dx.types.CBufRet.f32 %878, 3
  %881 = fmul fast float %879, %53
  %882 = fmul fast float %880, %54
  %883 = call float @dx.op.unary.f32(i32 7, float %881)  ; Saturate(value)
  %884 = call float @dx.op.unary.f32(i32 7, float %882)  ; Saturate(value)
  %885 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %883, float %884, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %886 = extractvalue %dx.types.ResRet.f32 %885, 0
  %887 = extractvalue %dx.types.ResRet.f32 %885, 1
  %888 = extractvalue %dx.types.ResRet.f32 %885, 2
  %889 = extractvalue %dx.types.ResRet.f32 %885, 3
  %890 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %883, float %884, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %891 = extractvalue %dx.types.ResRet.f32 %890, 0
  %892 = extractvalue %dx.types.ResRet.f32 %890, 1
  %893 = extractvalue %dx.types.ResRet.f32 %890, 2
  %894 = extractvalue %dx.types.ResRet.f32 %890, 3
  %895 = call float @dx.op.binary.f32(i32 35, float %887, float %888)  ; FMax(a,b)
  %896 = call float @dx.op.binary.f32(i32 35, float %886, float %895)  ; FMax(a,b)
  %897 = call float @dx.op.binary.f32(i32 35, float %896, float %889)  ; FMax(a,b)
  %898 = call float @dx.op.binary.f32(i32 36, float %892, float %893)  ; FMin(a,b)
  %899 = call float @dx.op.binary.f32(i32 36, float %891, float %898)  ; FMin(a,b)
  %900 = call float @dx.op.binary.f32(i32 36, float %899, float %894)  ; FMin(a,b)
  %901 = fmul fast float %897, 2.550000e+02
  %902 = fadd fast float %901, 0x3F70101020000000
  %903 = fptoui float %902 to i32
  %904 = fmul fast float %900, 2.550000e+02
  %905 = fadd fast float %904, 0x3F70101020000000
  %906 = fptoui float %905 to i32
  %907 = icmp ult i32 %903, %906
  br i1 %907, label %908, label %959

; <label>:908                                     ; preds = %877
  %909 = fcmp fast ogt float %47, 9.843750e-01
  %910 = fadd fast float %48, -4.000000e+00
  %911 = select i1 %909, float -4.000000e+00, float %910
  %912 = call float @dx.op.binary.f32(i32 35, float %911, float 0.000000e+00)  ; FMax(a,b)
  %913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %914 = extractvalue %dx.types.CBufRet.f32 %913, 0
  %915 = fadd fast float %914, %912
  %916 = extractvalue %dx.types.CBufRet.f32 %913, 2
  %917 = fmul fast float %915, %916
  %918 = call float @dx.op.unary.f32(i32 23, float %917)  ; Log(value)
  %919 = extractvalue %dx.types.CBufRet.f32 %913, 3
  %920 = fmul fast float %919, %918
  %921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %922 = extractvalue %dx.types.CBufRet.f32 %921, 2
  %923 = fmul fast float %920, %922
  %924 = call float @dx.op.unary.f32(i32 7, float %923)  ; Saturate(value)
  %925 = uitofp i32 %903 to float
  %926 = uitofp i32 %906 to float
  %927 = fadd fast float %925, 5.000000e-01
  %928 = fadd fast float %926, 5.000000e-01
  %929 = fmul fast float %922, %927
  %930 = fmul fast float %922, %928
  %931 = fadd fast float %929, 0x3F0FFB4800000000
  %932 = fadd fast float %930, 0xBF0FFB4800000000
  %933 = call float @dx.op.binary.f32(i32 35, float %924, float %931)  ; FMax(a,b)
  %934 = call float @dx.op.binary.f32(i32 36, float %933, float %932)  ; FMin(a,b)
  %935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %936 = extractvalue %dx.types.CBufRet.f32 %935, 1
  %937 = extractvalue %dx.types.CBufRet.f32 %935, 2
  %938 = extractvalue %dx.types.CBufRet.f32 %935, 0
  %939 = fmul fast float %936, %934
  %940 = fadd fast float %938, %939
  %941 = fadd fast float %938, %937
  %942 = fsub fast float %936, %937
  %943 = fadd fast float %942, %938
  %944 = call float @dx.op.binary.f32(i32 35, float %940, float %941)  ; FMax(a,b)
  %945 = call float @dx.op.binary.f32(i32 36, float %944, float %943)  ; FMin(a,b)
  %946 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %883, float %884, float %945, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %947 = extractvalue %dx.types.ResRet.f32 %946, 0
  %948 = extractvalue %dx.types.ResRet.f32 %946, 1
  %949 = extractvalue %dx.types.ResRet.f32 %946, 2
  %950 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %883, float %884, float %945, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %951 = extractvalue %dx.types.ResRet.f32 %950, 0
  %952 = extractvalue %dx.types.ResRet.f32 %950, 1
  %953 = extractvalue %dx.types.ResRet.f32 %950, 2
  %954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %955 = extractvalue %dx.types.CBufRet.f32 %954, 1
  %956 = fmul fast float %955, %951
  %957 = fmul fast float %955, %952
  %958 = fmul fast float %955, %953
  br label %959

; <label>:959                                     ; preds = %908, %877
  %960 = phi float [ %947, %908 ], [ 1.000000e+00, %877 ]
  %961 = phi float [ %948, %908 ], [ 1.000000e+00, %877 ]
  %962 = phi float [ %949, %908 ], [ 1.000000e+00, %877 ]
  %963 = phi float [ %956, %908 ], [ 0.000000e+00, %877 ]
  %964 = phi float [ %957, %908 ], [ 0.000000e+00, %877 ]
  %965 = phi float [ %958, %908 ], [ 0.000000e+00, %877 ]
  %966 = fmul fast float %963, %756
  %967 = fmul fast float %964, %756
  %968 = fmul fast float %965, %756
  %969 = call float @dx.op.dot3.f32(i32 55, float %960, float %961, float %962, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %970 = call float @dx.op.dot3.f32(i32 55, float %966, float %967, float %968, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %971 = select i1 %111, float %969, float %960
  %972 = select i1 %111, float %969, float %961
  %973 = select i1 %111, float 1.000000e+00, float %962
  %974 = select i1 %111, float %970, float %966
  %975 = select i1 %111, float 0.000000e+00, float %967
  %976 = select i1 %111, float 0.000000e+00, float %968
  %977 = fmul fast float %971, %874
  %978 = fmul fast float %972, %875
  %979 = fmul fast float %973, %876
  %980 = fadd fast float %977, %974
  %981 = fadd fast float %978, %975
  %982 = fadd fast float %976, %979
  %983 = fmul fast float %971, %859
  %984 = fmul fast float %972, %860
  %985 = fmul fast float %973, %861
  br label %986

; <label>:986                                     ; preds = %959, %871
  %987 = phi float [ %734, %959 ], [ %48, %871 ]
  %988 = phi float [ %980, %959 ], [ %874, %871 ]
  %989 = phi float [ %981, %959 ], [ %875, %871 ]
  %990 = phi float [ %982, %959 ], [ %876, %871 ]
  %991 = phi float [ %983, %959 ], [ %859, %871 ]
  %992 = phi float [ %984, %959 ], [ %860, %871 ]
  %993 = phi float [ %985, %959 ], [ %861, %871 ]
  %994 = phi float [ %960, %959 ], [ 1.000000e+00, %871 ]
  br i1 %742, label %1296, label %995

; <label>:995                                     ; preds = %986
  %996 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %19, float %33, float %34, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %997 = extractvalue %dx.types.ResRet.f32 %996, 0
  %998 = extractvalue %dx.types.ResRet.f32 %996, 1
  %999 = extractvalue %dx.types.ResRet.f32 %996, 2
  %1000 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %19, float %33, float %34, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1001 = extractvalue %dx.types.ResRet.f32 %1000, 0
  %1002 = extractvalue %dx.types.ResRet.f32 %1000, 1
  %1003 = extractvalue %dx.types.ResRet.f32 %1000, 2
  %1004 = fmul fast float %997, %756
  %1005 = fmul fast float %998, %756
  %1006 = fmul fast float %999, %756
  %1007 = fmul fast float %1001, %994
  %1008 = call float @dx.op.dot3.f32(i32 55, float %1001, float %1002, float %1003, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1009 = call float @dx.op.dot3.f32(i32 55, float %1004, float %1005, float %1006, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1010 = select i1 %111, float %1008, float %1001
  %1011 = select i1 %111, float %1008, float %1002
  %1012 = select i1 %111, float 1.000000e+00, float %1003
  %1013 = select i1 %111, float %1009, float %1004
  %1014 = select i1 %111, float 0.000000e+00, float %1005
  %1015 = select i1 %111, float 0.000000e+00, float %1006
  %1016 = fmul fast float %1010, %988
  %1017 = fmul fast float %1011, %989
  %1018 = fmul fast float %1012, %990
  %1019 = fadd fast float %1016, %1013
  %1020 = fadd fast float %1017, %1014
  %1021 = fadd fast float %1018, %1015
  %1022 = fmul fast float %1010, %991
  %1023 = fmul fast float %1011, %992
  %1024 = fmul fast float %1012, %993
  %1025 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1026 = extractvalue %dx.types.CBufRet.i32 %1025, 0
  %1027 = icmp eq i32 %1026, 0
  br i1 %1027, label %1296, label %1028, !dx.controlflow.hints !69

; <label>:1028                                    ; preds = %995
  %1029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1030 = extractvalue %dx.types.CBufRet.f32 %1029, 2
  %1031 = extractvalue %dx.types.CBufRet.f32 %1029, 3
  %1032 = fmul fast float %1030, %53
  %1033 = fmul fast float %1031, %54
  %1034 = fmul fast float %1032, 2.000000e+00
  %1035 = fmul fast float %1033, 2.000000e+00
  %1036 = fsub fast float 1.000000e+00, %1034
  %1037 = fsub fast float 1.000000e+00, %1035
  %1038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1039 = extractvalue %dx.types.CBufRet.f32 %1038, 0
  %1040 = extractvalue %dx.types.CBufRet.f32 %1038, 1
  %1041 = extractvalue %dx.types.CBufRet.f32 %1038, 2
  %1042 = fmul fast float %1036, %1039
  %1043 = fmul fast float %1036, %1040
  %1044 = fmul fast float %1036, %1041
  %1045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1046 = extractvalue %dx.types.CBufRet.f32 %1045, 0
  %1047 = extractvalue %dx.types.CBufRet.f32 %1045, 1
  %1048 = extractvalue %dx.types.CBufRet.f32 %1045, 2
  %1049 = fmul fast float %1037, %1046
  %1050 = fmul fast float %1037, %1047
  %1051 = fmul fast float %1037, %1048
  %1052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1053 = extractvalue %dx.types.CBufRet.f32 %1052, 0
  %1054 = extractvalue %dx.types.CBufRet.f32 %1052, 1
  %1055 = extractvalue %dx.types.CBufRet.f32 %1052, 2
  %1056 = fadd fast float %1049, %1053
  %1057 = fadd fast float %1056, %1042
  %1058 = fadd fast float %1050, %1054
  %1059 = fadd fast float %1058, %1043
  %1060 = fadd fast float %1051, %1055
  %1061 = fadd fast float %1060, %1044
  %1062 = fmul fast float %1057, %987
  %1063 = fmul fast float %1059, %987
  %1064 = fmul fast float %1061, %987
  %1065 = fmul fast float %1062, %1062
  %1066 = fmul fast float %1063, %1063
  %1067 = fadd fast float %1065, %1066
  %1068 = fmul fast float %1064, %1064
  %1069 = fadd fast float %1067, %1068
  %1070 = call float @dx.op.unary.f32(i32 24, float %1069)  ; Sqrt(value)
  %1071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1072 = extractvalue %dx.types.CBufRet.f32 %1071, 0
  %1073 = fsub fast float %1070, %1072
  %1074 = extractvalue %dx.types.CBufRet.f32 %1071, 2
  %1075 = fmul fast float %1073, %1074
  %1076 = call float @dx.op.unary.f32(i32 7, float %1075)  ; Saturate(value)
  %1077 = fadd fast float %1076, -5.000000e-01
  %1078 = fmul fast float %1077, 2.000000e+00
  %1079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1080 = extractvalue %dx.types.CBufRet.f32 %1079, 2
  %1081 = call float @dx.op.binary.f32(i32 36, float %1080, float %1078)  ; FMin(a,b)
  %1082 = fsub fast float -0.000000e+00, %1080
  %1083 = fcmp fast ogt float %1081, %1082
  br i1 %1083, label %1084, label %1296, !dx.controlflow.hints !70

; <label>:1084                                    ; preds = %1028
  %1085 = fmul fast float %1081, 5.000000e-01
  %1086 = fadd fast float %1085, 5.000000e-01
  %1087 = call float @dx.op.unary.f32(i32 22, float %1086)  ; Frc(value)
  %1088 = call float @dx.op.unary.f32(i32 27, float %1087)  ; Round_ni(value)
  %1089 = call float @dx.op.unary.f32(i32 22, float %1087)  ; Frc(value)
  %1090 = fmul fast float %1089, 2.000000e+00
  %1091 = fadd fast float %1090, -1.000000e+00
  %1092 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %19, float %1032, float %1033, float %1088, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1093 = extractvalue %dx.types.ResRet.f32 %1092, 0
  %1094 = extractvalue %dx.types.ResRet.f32 %1092, 1
  %1095 = extractvalue %dx.types.ResRet.f32 %1092, 2
  %1096 = extractvalue %dx.types.ResRet.f32 %1092, 3
  %1097 = fadd fast float %1093, -5.000000e-01
  %1098 = fadd fast float %1095, -5.000000e-01
  %1099 = fmul fast float %1097, 0xBFD5555560000000
  %1100 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1098, float %1099)  ; FMad(a,b,c)
  %1101 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1094, float 0.000000e+00)  ; FMad(a,b,c)
  %1102 = fadd fast float %1101, %1096
  %1103 = fmul fast float %1097, -7.500000e-01
  %1104 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1098, float %1103)  ; FMad(a,b,c)
  %1105 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1094, float 0.000000e+00)  ; FMad(a,b,c)
  %1106 = fadd fast float %1105, %1096
  %1107 = call float @dx.op.binary.f32(i32 35, float %1100, float -1.000000e+00)  ; FMax(a,b)
  %1108 = call float @dx.op.binary.f32(i32 35, float %1102, float -1.000000e+00)  ; FMax(a,b)
  %1109 = call float @dx.op.binary.f32(i32 35, float %1104, float -1.000000e+00)  ; FMax(a,b)
  %1110 = call float @dx.op.binary.f32(i32 35, float %1106, float -1.000000e+00)  ; FMax(a,b)
  %1111 = call float @dx.op.binary.f32(i32 36, float %1107, float 1.000000e+00)  ; FMin(a,b)
  %1112 = call float @dx.op.binary.f32(i32 36, float %1108, float 1.000000e+00)  ; FMin(a,b)
  %1113 = call float @dx.op.binary.f32(i32 36, float %1109, float 1.000000e+00)  ; FMin(a,b)
  %1114 = call float @dx.op.binary.f32(i32 36, float %1110, float 1.000000e+00)  ; FMin(a,b)
  %1115 = fcmp fast olt float %1111, 0x3FEFFF8020000000
  br i1 %1115, label %1116, label %1231, !dx.controlflow.hints !71

; <label>:1116                                    ; preds = %1084
  %1117 = extractvalue %dx.types.CBufRet.f32 %1079, 3
  %1118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1119 = extractvalue %dx.types.CBufRet.f32 %1118, 0
  %1120 = extractvalue %dx.types.CBufRet.f32 %1118, 1
  %1121 = extractvalue %dx.types.CBufRet.f32 %1118, 2
  %1122 = extractvalue %dx.types.CBufRet.f32 %1118, 3
  %1123 = fsub fast float %1119, %1111
  %1124 = fsub fast float %1120, %1112
  %1125 = fsub fast float %1121, %1113
  %1126 = fsub fast float %1122, %1114
  %1127 = fmul fast float %1123, %1117
  %1128 = fmul fast float %1124, %1117
  %1129 = fmul fast float %1125, %1117
  %1130 = fmul fast float %1126, %1117
  %1131 = fadd fast float %1127, %1111
  %1132 = fadd fast float %1128, %1112
  %1133 = fsub fast float -0.000000e+00, %1132
  %1134 = fadd fast float %1129, %1113
  %1135 = fadd fast float %1130, %1114
  %1136 = fmul fast float %1131, %1131
  %1137 = fsub fast float %1132, %1136
  %1138 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1137)  ; FMax(a,b)
  %1139 = fdiv fast float 1.000000e+00, %1138
  %1140 = fmul fast float %1132, %1131
  %1141 = fsub fast float %1134, %1140
  %1142 = fsub fast float %1091, %1131
  %1143 = fmul fast float %1091, %1091
  %1144 = fsub fast float %1143, %1132
  %1145 = fmul fast float %1142, %1139
  %1146 = fmul fast float %1145, %1141
  %1147 = fsub fast float %1144, %1146
  %1148 = fmul fast float %1132, %1132
  %1149 = fsub fast float %1135, %1148
  %1150 = fmul fast float %1141, %1141
  %1151 = fmul fast float %1150, %1139
  %1152 = fsub fast float %1149, %1151
  %1153 = fdiv fast float %1147, %1152
  %1154 = fmul fast float %1141, %1153
  %1155 = fsub fast float %1142, %1154
  %1156 = fmul fast float %1155, %1139
  %1157 = fmul fast float %1156, %1131
  %1158 = fsub fast float 1.000000e+00, %1157
  %1159 = fmul fast float %1132, %1153
  %1160 = fsub fast float %1158, %1159
  %1161 = fmul fast float %1156, %1156
  %1162 = fmul fast float %1153, 4.000000e+00
  %1163 = fmul fast float %1162, %1160
  %1164 = fsub fast float %1161, %1163
  %1165 = call float @dx.op.unary.f32(i32 24, float %1164)  ; Sqrt(value)
  %1166 = fcmp fast oge float %1156, 0.000000e+00
  %1167 = fsub fast float -0.000000e+00, %1165
  %1168 = select i1 %1166, float %1167, float %1165
  %1169 = fsub fast float %1168, %1156
  %1170 = fdiv fast float %1169, %1153
  %1171 = fdiv fast float %1160, %1169
  %1172 = fmul fast float %1170, 5.000000e-01
  %1173 = fmul fast float %1171, 2.000000e+00
  %1174 = select i1 %1166, float %1172, float %1173
  %1175 = select i1 %1166, float %1173, float %1172
  %1176 = call float @dx.op.binary.f32(i32 35, float %1174, float %1175)  ; FMax(a,b)
  %1177 = call float @dx.op.binary.f32(i32 36, float %1174, float %1175)  ; FMin(a,b)
  %1178 = fcmp fast ogt float %1091, %1177
  br i1 %1178, label %1179, label %1189

; <label>:1179                                    ; preds = %1116
  %1180 = fsub fast float %1091, %1177
  %1181 = fsub fast float %1176, %1177
  %1182 = fmul fast float %1180, %1181
  %1183 = fmul fast float %1176, %1091
  %1184 = fadd fast float %1176, %1091
  %1185 = fmul fast float %1184, %1131
  %1186 = fadd fast float %1183, %1132
  %1187 = fsub fast float %1186, %1185
  %1188 = fdiv fast float %1187, %1182
  br label %1189

; <label>:1189                                    ; preds = %1179, %1116
  %1190 = phi float [ %1188, %1179 ], [ 0.000000e+00, %1116 ]
  %1191 = fcmp fast ogt float %1091, %1176
  %1192 = fsub fast float %1091, %1176
  br i1 %1191, label %1193, label %1203

; <label>:1193                                    ; preds = %1189
  %1194 = fsub fast float %1176, %1177
  %1195 = fmul fast float %1194, %1192
  %1196 = fmul fast float %1177, %1091
  %1197 = fadd fast float %1177, %1091
  %1198 = fmul fast float %1197, %1131
  %1199 = fsub fast float %1133, %1196
  %1200 = fadd fast float %1199, %1198
  %1201 = fdiv fast float %1200, %1195
  %1202 = fadd fast float %1201, %1190
  br label %1203

; <label>:1203                                    ; preds = %1193, %1189
  %1204 = phi float [ %1202, %1193 ], [ %1190, %1189 ]
  %1205 = fsub fast float %1091, %1177
  %1206 = fmul fast float %1205, %1192
  %1207 = fmul fast float %1177, %1176
  %1208 = fadd fast float %1177, %1176
  %1209 = fmul fast float %1208, %1131
  %1210 = fadd fast float %1207, %1132
  %1211 = fsub fast float %1210, %1209
  %1212 = fdiv fast float %1211, %1206
  %1213 = call float @dx.op.unary.f32(i32 7, float %1204)  ; Saturate(value)
  %1214 = fcmp fast oeq float %872, 0.000000e+00
  %1215 = extractvalue %dx.types.CBufRet.f32 %1079, 0
  %1216 = fcmp fast oeq float %1215, 0.000000e+00
  %1217 = or i1 %1214, %1216
  %1218 = fmul fast float %1215, 2.000000e+00
  %1219 = fadd fast float %1080, %1081
  %1220 = fdiv fast float %1219, %1218
  %1221 = call float @dx.op.unary.f32(i32 7, float %1220)  ; Saturate(value)
  %1222 = fmul fast float %1221, 2.000000e+00
  %1223 = fsub fast float 3.000000e+00, %1222
  %1224 = fmul fast float %1221, %1221
  %1225 = fmul fast float %1224, %1223
  %1226 = select i1 %1217, float 1.000000e+00, float %1225
  %1227 = fmul fast float %1212, %872
  %1228 = fadd fast float %1213, %1227
  %1229 = call float @dx.op.unary.f32(i32 7, float %1228)  ; Saturate(value)
  %1230 = fmul fast float %1226, %1229
  br label %1231

; <label>:1231                                    ; preds = %1203, %1084
  %1232 = phi float [ %1230, %1203 ], [ 0.000000e+00, %1084 ]
  %1233 = fsub fast float 1.000000e+00, %1232
  %1234 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %19, float %1032, float %1033, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1235 = extractvalue %dx.types.ResRet.f32 %1234, 0
  %1236 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1237 = extractvalue %dx.types.CBufRet.i32 %1236, 2
  %1238 = icmp eq i32 %1237, 0
  br i1 %1238, label %1244, label %1239

; <label>:1239                                    ; preds = %1231
  %1240 = call float @dx.op.unary.f32(i32 7, float %1232)  ; Saturate(value)
  %1241 = fadd fast float %1235, -1.000000e+00
  %1242 = fmul fast float %1240, %1241
  %1243 = fadd fast float %1242, 1.000000e+00
  br label %1244

; <label>:1244                                    ; preds = %1239, %1231
  %1245 = phi float [ %1243, %1239 ], [ %1233, %1231 ]
  %1246 = call float @dx.op.binary.f32(i32 35, float %1235, float %1245)  ; FMax(a,b)
  %1247 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %1248 = extractvalue %dx.types.CBufRet.i32 %1247, 2
  %1249 = and i32 %1248, 1
  %1250 = icmp eq i32 %1249, 0
  %1251 = fcmp fast une float %1246, 1.000000e+00
  %1252 = and i1 %1251, %1250
  br i1 %1252, label %1253, label %1272

; <label>:1253                                    ; preds = %1244
  %1254 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %19, float %1032, float %1033, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1255 = extractvalue %dx.types.ResRet.f32 %1254, 0
  %1256 = extractvalue %dx.types.ResRet.f32 %1254, 1
  %1257 = extractvalue %dx.types.ResRet.f32 %1254, 2
  %1258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1259 = extractvalue %dx.types.CBufRet.f32 %1258, 1
  %1260 = fmul fast float %1259, %1255
  %1261 = fmul fast float %1259, %1256
  %1262 = fmul fast float %1259, %1257
  %1263 = fcmp fast ogt float %1235, 0x3FEFFF2E40000000
  %1264 = fsub fast float 1.000000e+00, %1246
  %1265 = fsub fast float 1.000000e+00, %1235
  %1266 = fdiv fast float %1264, %1265
  %1267 = call float @dx.op.unary.f32(i32 7, float %1266)  ; Saturate(value)
  %1268 = select i1 %1263, float 0.000000e+00, float %1267
  %1269 = fmul fast float %1260, %1268
  %1270 = fmul fast float %1261, %1268
  %1271 = fmul fast float %1262, %1268
  br label %1272

; <label>:1272                                    ; preds = %1253, %1244
  %1273 = phi float [ 0.000000e+00, %1244 ], [ %1269, %1253 ]
  %1274 = phi float [ 0.000000e+00, %1244 ], [ %1270, %1253 ]
  %1275 = phi float [ 0.000000e+00, %1244 ], [ %1271, %1253 ]
  %1276 = fmul fast float %1273, %756
  %1277 = fmul fast float %1274, %756
  %1278 = fmul fast float %1275, %756
  %1279 = fmul fast float %1246, %1007
  %1280 = call float @dx.op.dot3.f32(i32 55, float %1246, float %1246, float %1246, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1281 = call float @dx.op.dot3.f32(i32 55, float %1276, float %1277, float %1278, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1282 = select i1 %111, float %1280, float %1246
  %1283 = select i1 %111, float 1.000000e+00, float %1246
  %1284 = select i1 %111, float %1281, float %1276
  %1285 = select i1 %111, float 0.000000e+00, float %1277
  %1286 = select i1 %111, float 0.000000e+00, float %1278
  %1287 = fmul fast float %1282, %1019
  %1288 = fmul fast float %1282, %1020
  %1289 = fmul fast float %1283, %1021
  %1290 = fadd fast float %1287, %1284
  %1291 = fadd fast float %1288, %1285
  %1292 = fadd fast float %1286, %1289
  %1293 = fmul fast float %1282, %1022
  %1294 = fmul fast float %1282, %1023
  %1295 = fmul fast float %1283, %1024
  br label %1296

; <label>:1296                                    ; preds = %1272, %1028, %995, %986
  %1297 = phi float [ %988, %986 ], [ %1019, %995 ], [ %1290, %1272 ], [ %1019, %1028 ]
  %1298 = phi float [ %989, %986 ], [ %1020, %995 ], [ %1291, %1272 ], [ %1020, %1028 ]
  %1299 = phi float [ %990, %986 ], [ %1021, %995 ], [ %1292, %1272 ], [ %1021, %1028 ]
  %1300 = phi float [ %991, %986 ], [ %1022, %995 ], [ %1293, %1272 ], [ %1022, %1028 ]
  %1301 = phi float [ %992, %986 ], [ %1023, %995 ], [ %1294, %1272 ], [ %1023, %1028 ]
  %1302 = phi float [ %993, %986 ], [ %1024, %995 ], [ %1295, %1272 ], [ %1024, %1028 ]
  %1303 = phi float [ %994, %986 ], [ %1007, %995 ], [ %1279, %1272 ], [ %1007, %1028 ]
  %1304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1305 = extractvalue %dx.types.CBufRet.f32 %1304, 2
  %1306 = extractvalue %dx.types.CBufRet.f32 %1304, 3
  %1307 = fmul fast float %1305, %53
  %1308 = fmul fast float %1306, %54
  %1309 = call float @dx.op.unary.f32(i32 7, float %1307)  ; Saturate(value)
  %1310 = call float @dx.op.unary.f32(i32 7, float %1308)  ; Saturate(value)
  %1311 = select i1 %742, i32 2, i32 0
  %1312 = or i32 %1311, 1
  %1313 = uitofp i32 %1312 to float
  %1314 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %1309, float %1310, float %1313, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1315 = extractvalue %dx.types.ResRet.f32 %1314, 0
  %1316 = extractvalue %dx.types.ResRet.f32 %1314, 1
  %1317 = extractvalue %dx.types.ResRet.f32 %1314, 2
  %1318 = extractvalue %dx.types.ResRet.f32 %1314, 3
  %1319 = add nuw nsw i32 %1311, 2
  %1320 = uitofp i32 %1319 to float
  %1321 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %1309, float %1310, float %1320, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1322 = extractvalue %dx.types.ResRet.f32 %1321, 0
  %1323 = extractvalue %dx.types.ResRet.f32 %1321, 1
  %1324 = extractvalue %dx.types.ResRet.f32 %1321, 2
  %1325 = extractvalue %dx.types.ResRet.f32 %1321, 3
  %1326 = call float @dx.op.binary.f32(i32 35, float %1316, float %1317)  ; FMax(a,b)
  %1327 = call float @dx.op.binary.f32(i32 35, float %1315, float %1326)  ; FMax(a,b)
  %1328 = call float @dx.op.binary.f32(i32 35, float %1327, float %1318)  ; FMax(a,b)
  %1329 = call float @dx.op.binary.f32(i32 36, float %1323, float %1324)  ; FMin(a,b)
  %1330 = call float @dx.op.binary.f32(i32 36, float %1322, float %1329)  ; FMin(a,b)
  %1331 = call float @dx.op.binary.f32(i32 36, float %1330, float %1325)  ; FMin(a,b)
  %1332 = fmul fast float %1328, 2.550000e+02
  %1333 = fadd fast float %1332, 0x3F70101020000000
  %1334 = fptoui float %1333 to i32
  %1335 = fmul fast float %1331, 2.550000e+02
  %1336 = fadd fast float %1335, 0x3F70101020000000
  %1337 = fptoui float %1336 to i32
  %1338 = icmp ult i32 %1334, %1337
  br i1 %1338, label %1339, label %1391

; <label>:1339                                    ; preds = %1296
  %1340 = fcmp fast ogt float %47, 9.843750e-01
  %1341 = fadd fast float %987, -4.000000e+00
  %1342 = select i1 %1340, float -4.000000e+00, float %1341
  %1343 = call float @dx.op.binary.f32(i32 35, float %1342, float 0.000000e+00)  ; FMax(a,b)
  %1344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1345 = extractvalue %dx.types.CBufRet.f32 %1344, 0
  %1346 = fadd fast float %1345, %1343
  %1347 = extractvalue %dx.types.CBufRet.f32 %1344, 2
  %1348 = fmul fast float %1346, %1347
  %1349 = call float @dx.op.unary.f32(i32 23, float %1348)  ; Log(value)
  %1350 = extractvalue %dx.types.CBufRet.f32 %1344, 3
  %1351 = fmul fast float %1350, %1349
  %1352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1353 = extractvalue %dx.types.CBufRet.f32 %1352, 2
  %1354 = fmul fast float %1351, %1353
  %1355 = call float @dx.op.unary.f32(i32 7, float %1354)  ; Saturate(value)
  %1356 = uitofp i32 %1334 to float
  %1357 = uitofp i32 %1337 to float
  %1358 = fadd fast float %1356, 5.000000e-01
  %1359 = fadd fast float %1357, 5.000000e-01
  %1360 = fmul fast float %1353, %1358
  %1361 = fmul fast float %1353, %1359
  %1362 = fadd fast float %1360, 0x3F0FFB4800000000
  %1363 = fadd fast float %1361, 0xBF0FFB4800000000
  %1364 = call float @dx.op.binary.f32(i32 35, float %1355, float %1362)  ; FMax(a,b)
  %1365 = call float @dx.op.binary.f32(i32 36, float %1364, float %1363)  ; FMin(a,b)
  %1366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1367 = extractvalue %dx.types.CBufRet.f32 %1366, 1
  %1368 = extractvalue %dx.types.CBufRet.f32 %1366, 2
  %1369 = extractvalue %dx.types.CBufRet.f32 %1366, 0
  %1370 = select i1 %742, float %1369, float 0.000000e+00
  %1371 = fmul fast float %1367, %1365
  %1372 = fadd fast float %1370, %1371
  %1373 = fadd fast float %1370, %1368
  %1374 = fsub fast float %1367, %1368
  %1375 = fadd fast float %1374, %1370
  %1376 = call float @dx.op.binary.f32(i32 35, float %1372, float %1373)  ; FMax(a,b)
  %1377 = call float @dx.op.binary.f32(i32 36, float %1376, float %1375)  ; FMin(a,b)
  %1378 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %1309, float %1310, float %1377, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1379 = extractvalue %dx.types.ResRet.f32 %1378, 0
  %1380 = extractvalue %dx.types.ResRet.f32 %1378, 1
  %1381 = extractvalue %dx.types.ResRet.f32 %1378, 2
  %1382 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %1309, float %1310, float %1377, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1383 = extractvalue %dx.types.ResRet.f32 %1382, 0
  %1384 = extractvalue %dx.types.ResRet.f32 %1382, 1
  %1385 = extractvalue %dx.types.ResRet.f32 %1382, 2
  %1386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1387 = extractvalue %dx.types.CBufRet.f32 %1386, 1
  %1388 = fmul fast float %1387, %1383
  %1389 = fmul fast float %1387, %1384
  %1390 = fmul fast float %1387, %1385
  br label %1391

; <label>:1391                                    ; preds = %1339, %1296
  %1392 = phi float [ %1379, %1339 ], [ 1.000000e+00, %1296 ]
  %1393 = phi float [ %1380, %1339 ], [ 1.000000e+00, %1296 ]
  %1394 = phi float [ %1381, %1339 ], [ 1.000000e+00, %1296 ]
  %1395 = phi float [ %1388, %1339 ], [ 0.000000e+00, %1296 ]
  %1396 = phi float [ %1389, %1339 ], [ 0.000000e+00, %1296 ]
  %1397 = phi float [ %1390, %1339 ], [ 0.000000e+00, %1296 ]
  %1398 = fmul fast float %1395, %756
  %1399 = fmul fast float %1396, %756
  %1400 = fmul fast float %1397, %756
  %1401 = fmul fast float %1392, %1303
  %1402 = call float @dx.op.dot3.f32(i32 55, float %1392, float %1393, float %1394, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1403 = call float @dx.op.dot3.f32(i32 55, float %1398, float %1399, float %1400, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1404 = select i1 %111, float %1402, float %1392
  %1405 = select i1 %111, float %1402, float %1393
  %1406 = select i1 %111, float 1.000000e+00, float %1394
  %1407 = select i1 %111, float %1403, float %1398
  %1408 = select i1 %111, float 0.000000e+00, float %1399
  %1409 = select i1 %111, float 0.000000e+00, float %1400
  %1410 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1411 = extractvalue %dx.types.CBufRet.i32 %1410, 3
  %1412 = and i32 %1411, 3
  %1413 = icmp ne i32 %1412, 0
  %1414 = and i32 %1411, 4
  %1415 = icmp ne i32 %1414, 0
  %1416 = and i1 %1413, %1415
  %1417 = and i1 %111, %1416
  br i1 %1417, label %1418, label %1424

; <label>:1418                                    ; preds = %1391
  %1419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1420 = extractvalue %dx.types.CBufRet.f32 %1419, 1
  %1421 = fadd fast float %1401, -1.000000e+00
  %1422 = fmul fast float %1420, %1421
  %1423 = fadd fast float %1422, 1.000000e+00
  br label %1424

; <label>:1424                                    ; preds = %1418, %1391
  %1425 = phi float [ %1423, %1418 ], [ %1401, %1391 ]
  %1426 = fadd fast float %1300, %1297
  %1427 = fmul fast float %1404, %1426
  %1428 = fadd fast float %1427, %1407
  %1429 = fadd fast float %1301, %1298
  %1430 = fmul fast float %1405, %1429
  %1431 = fadd fast float %1430, %1408
  %1432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1433 = extractvalue %dx.types.CBufRet.f32 %1432, 0
  br i1 %111, label %1434, label %1456

; <label>:1434                                    ; preds = %1424
  %1435 = fadd fast float %1428, %1431
  %1436 = fmul fast float %1433, %1435
  %1437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1438 = extractvalue %dx.types.CBufRet.f32 %1437, 3
  %1439 = extractvalue %dx.types.CBufRet.f32 %761, 1
  %1440 = fsub fast float %764, %1439
  %1441 = extractvalue %dx.types.CBufRet.f32 %761, 2
  %1442 = fmul fast float %1440, %1441
  %1443 = call float @dx.op.unary.f32(i32 7, float %1442)  ; Saturate(value)
  %1444 = fsub fast float %1443, %1438
  %1445 = fmul fast float %1444, %1425
  %1446 = fadd fast float %1445, %1438
  %1447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1448 = extractvalue %dx.types.CBufRet.f32 %1447, 0
  %1449 = fsub fast float %1446, %1448
  %1450 = fmul fast float %1449, 1.000000e+01
  %1451 = call float @dx.op.unary.f32(i32 7, float %1450)  ; Saturate(value)
  %1452 = fsub fast float %718, %756
  %1453 = fmul fast float %1451, %1452
  %1454 = fadd fast float %1453, %756
  %1455 = fmul fast float %1454, %1446
  br label %1468

; <label>:1456                                    ; preds = %1424
  %1457 = fadd fast float %1302, %1299
  %1458 = fmul fast float %1406, %1457
  %1459 = fadd fast float %1458, %1409
  %1460 = fmul fast float %1433, %1428
  %1461 = fmul fast float %1433, %1431
  %1462 = fmul fast float %1433, %1459
  %1463 = call float @dx.op.binary.f32(i32 35, float %1461, float %1462)  ; FMax(a,b)
  %1464 = call float @dx.op.binary.f32(i32 35, float %1460, float %1463)  ; FMax(a,b)
  %1465 = call float @dx.op.binary.f32(i32 35, float %1464, float %756)  ; FMax(a,b)
  %1466 = fcmp fast ugt float %1465, 0x3F10000000000000
  br i1 %1466, label %1468, label %1467

; <label>:1467                                    ; preds = %1456
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1468

; <label>:1468                                    ; preds = %1467, %1456, %1434
  %1469 = phi float [ %1436, %1434 ], [ %1460, %1467 ], [ %1460, %1456 ]
  %1470 = phi float [ %1455, %1434 ], [ %1461, %1467 ], [ %1461, %1456 ]
  %1471 = phi float [ %1454, %1434 ], [ %1462, %1467 ], [ %1462, %1456 ]
  %1472 = phi float [ %1454, %1434 ], [ %756, %1467 ], [ %756, %1456 ]
  %1473 = fadd fast float %555, 0x3FE3C6EF40000000
  %1474 = call float @dx.op.unary.f32(i32 22, float %1473)  ; Frc(value)
  %1475 = call float @dx.op.unary.f32(i32 23, float %1469)  ; Log(value)
  %1476 = fadd fast float %1475, -7.000000e+00
  %1477 = call float @dx.op.unary.f32(i32 21, float %1476)  ; Exp(value)
  %1478 = fmul fast float %1474, 2.000000e+00
  %1479 = fadd fast float %1478, -1.000000e+00
  %1480 = fmul fast float %1477, %1479
  %1481 = fcmp fast ogt float %1469, 0.000000e+00
  %1482 = select i1 %1481, float %1480, float 0.000000e+00
  %1483 = fadd fast float %1482, %1469
  %1484 = fadd fast float %555, 0x3FF3C6EF40000000
  %1485 = call float @dx.op.unary.f32(i32 22, float %1484)  ; Frc(value)
  %1486 = call float @dx.op.unary.f32(i32 23, float %1470)  ; Log(value)
  %1487 = fadd fast float %1486, -7.000000e+00
  %1488 = call float @dx.op.unary.f32(i32 21, float %1487)  ; Exp(value)
  %1489 = fmul fast float %1485, 2.000000e+00
  %1490 = fadd fast float %1489, -1.000000e+00
  %1491 = fmul fast float %1488, %1490
  %1492 = fcmp fast ogt float %1470, 0.000000e+00
  %1493 = select i1 %1492, float %1491, float 0.000000e+00
  %1494 = fadd fast float %1493, %1470
  %1495 = fadd fast float %555, 0x3FFDAA66E0000000
  %1496 = call float @dx.op.unary.f32(i32 22, float %1495)  ; Frc(value)
  %1497 = call float @dx.op.unary.f32(i32 23, float %1471)  ; Log(value)
  %1498 = fadd fast float %1497, -6.000000e+00
  %1499 = call float @dx.op.unary.f32(i32 21, float %1498)  ; Exp(value)
  %1500 = fmul fast float %1496, 2.000000e+00
  %1501 = fadd fast float %1500, -1.000000e+00
  %1502 = fmul fast float %1499, %1501
  %1503 = fcmp fast ogt float %1471, 0.000000e+00
  %1504 = select i1 %1503, float %1502, float 0.000000e+00
  %1505 = fadd fast float %1504, %1471
  %1506 = select i1 %111, float %1470, float %1494
  %1507 = select i1 %111, float %1471, float %1505
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1508 = call float @dx.op.binary.f32(i32 36, float %1483, float 3.225500e+04)  ; FMin(a,b)
  %1509 = call float @dx.op.binary.f32(i32 36, float %1506, float 3.225500e+04)  ; FMin(a,b)
  %1510 = call float @dx.op.binary.f32(i32 36, float %1507, float 3.225500e+04)  ; FMin(a,b)
  %1511 = call float @dx.op.binary.f32(i32 36, float %1472, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1508)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1509)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1510)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1511)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1472)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1472)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1472)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1472)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

