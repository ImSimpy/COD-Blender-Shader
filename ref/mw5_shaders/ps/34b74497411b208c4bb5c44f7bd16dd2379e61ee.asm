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
; shader hash: f203ad7f8dd1fea437a6682e1f269f64
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
  %183 = add i32 %24, 108
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
  br i1 %259, label %536, label %260, !dx.controlflow.hints !61

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
  %534 = fmul fast float %532, %218
  %535 = fmul fast float %534, %533
  br label %536

; <label>:536                                     ; preds = %524, %257
  %537 = phi float [ %529, %524 ], [ %41, %257 ]
  %538 = phi float [ %530, %524 ], [ %42, %257 ]
  %539 = phi float [ %531, %524 ], [ %43, %257 ]
  %540 = phi float [ %535, %524 ], [ %218, %257 ]
  %541 = phi float [ %526, %524 ], [ %29, %257 ]
  %542 = phi float [ %527, %524 ], [ %30, %257 ]
  %543 = phi float [ %528, %524 ], [ %31, %257 ]
  %544 = fmul fast float %541, %32
  %545 = fmul fast float %542, %32
  %546 = fmul fast float %543, %32
  %547 = fmul fast float %541, %38
  %548 = fmul fast float %542, %38
  %549 = fmul fast float %543, %38
  %550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %551 = extractvalue %dx.types.CBufRet.f32 %550, 2
  %552 = fptosi float %48 to i32
  %553 = sitofp i32 %552 to float
  %554 = fadd fast float %551, %553
  %555 = fmul fast float %554, 0x3FE3C6EF40000000
  %556 = frem fast float %53, 2.560000e+02
  %557 = frem fast float %54, 2.560000e+02
  %558 = fptoui float %556 to i32
  %559 = fptoui float %557 to i32
  %560 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %17, i32 0, i32 %558, i32 %559, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %561 = extractvalue %dx.types.ResRet.f32 %560, 0
  %562 = fadd fast float %561, %555
  %563 = call float @dx.op.unary.f32(i32 22, float %562)  ; Frc(value)
  %564 = and i32 %131, 1
  %565 = icmp eq i32 %564, 0
  br i1 %565, label %625, label %566, !dx.controlflow.hints !64

; <label>:566                                     ; preds = %536
  %567 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %128, i32 undef)  ; BufferLoad(srv,index,wot)
  %568 = extractvalue %dx.types.ResRet.f32 %567, 2
  %569 = extractvalue %dx.types.ResRet.f32 %567, 3
  %570 = add i32 %128, 16
  %571 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %570, i32 undef)  ; BufferLoad(srv,index,wot)
  %572 = extractvalue %dx.types.ResRet.f32 %571, 0
  %573 = extractvalue %dx.types.ResRet.f32 %571, 1
  %574 = extractvalue %dx.types.ResRet.f32 %571, 2
  %575 = add i32 %128, 32
  %576 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %575, i32 undef)  ; BufferLoad(srv,index,wot)
  %577 = extractvalue %dx.types.ResRet.f32 %576, 0
  %578 = extractvalue %dx.types.ResRet.f32 %576, 1
  %579 = extractvalue %dx.types.ResRet.f32 %576, 2
  %580 = and i32 %131, 2
  %581 = icmp eq i32 %580, 0
  %582 = call float @dx.op.dot3.f32(i32 55, float %35, float %36, float %37, float %35, float %36, float %37)  ; Dot3(ax,ay,az,bx,by,bz)
  %583 = call float @dx.op.unary.f32(i32 25, float %582)  ; Rsqrt(value)
  %584 = fmul fast float %583, %35
  %585 = fmul fast float %583, %36
  %586 = fmul fast float %583, %37
  %587 = call float @dx.op.dot3.f32(i32 55, float %88, float %89, float %90, float %88, float %89, float %90)  ; Dot3(ax,ay,az,bx,by,bz)
  %588 = call float @dx.op.unary.f32(i32 25, float %587)  ; Rsqrt(value)
  %589 = fmul fast float %588, %88
  %590 = fmul fast float %588, %89
  %591 = fmul fast float %588, %90
  %592 = call float @dx.op.dot3.f32(i32 55, float %589, float %590, float %591, float %584, float %585, float %586)  ; Dot3(ax,ay,az,bx,by,bz)
  %593 = fmul fast float %592, %592
  %594 = fmul fast float %593, %568
  %595 = fadd fast float %594, %569
  %596 = call float @dx.op.unary.f32(i32 7, float %595)  ; Saturate(value)
  br i1 %581, label %597, label %607, !dx.controlflow.hints !65

; <label>:597                                     ; preds = %566
  %598 = extractvalue %dx.types.ResRet.f32 %567, 1
  %599 = extractvalue %dx.types.ResRet.f32 %567, 0
  %600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %601 = extractvalue %dx.types.CBufRet.f32 %600, 3
  %602 = fmul fast float %601, %587
  %603 = fsub fast float %599, %602
  %604 = fmul fast float %603, %598
  %605 = call float @dx.op.unary.f32(i32 7, float %604)  ; Saturate(value)
  %606 = fmul fast float %605, %596
  br label %607

; <label>:607                                     ; preds = %597, %566
  %608 = phi float [ %606, %597 ], [ %596, %566 ]
  %609 = fsub fast float %572, %577
  %610 = fsub fast float %573, %578
  %611 = fsub fast float %574, %579
  %612 = fmul fast float %608, %609
  %613 = fmul fast float %608, %610
  %614 = fmul fast float %608, %611
  %615 = fadd fast float %612, %577
  %616 = fadd fast float %613, %578
  %617 = fadd fast float %614, %579
  %618 = fmul fast float %615, %537
  %619 = fmul fast float %616, %538
  %620 = fmul fast float %617, %539
  %621 = fmul fast float %615, %544
  %622 = fmul fast float %616, %545
  %623 = fmul fast float %617, %546
  %624 = fmul fast float %608, %540
  br label %625

; <label>:625                                     ; preds = %607, %536
  %626 = phi float [ %618, %607 ], [ %537, %536 ]
  %627 = phi float [ %619, %607 ], [ %538, %536 ]
  %628 = phi float [ %620, %607 ], [ %539, %536 ]
  %629 = phi float [ %624, %607 ], [ %540, %536 ]
  %630 = phi float [ %621, %607 ], [ %544, %536 ]
  %631 = phi float [ %622, %607 ], [ %545, %536 ]
  %632 = phi float [ %623, %607 ], [ %546, %536 ]
  %633 = add i32 %24, 104
  %634 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %633, i32 undef)  ; BufferLoad(srv,index,wot)
  %635 = extractvalue %dx.types.ResRet.i32 %634, 0
  %636 = add i32 %635, 0
  %637 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %636, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %638 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %637, %dx.types.Handle %49, float %168, float %169, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %639 = extractvalue %dx.types.ResRet.f32 %638, 0
  %640 = extractvalue %dx.types.ResRet.f32 %638, 1
  %641 = extractvalue %dx.types.ResRet.f32 %638, 2
  %642 = add i32 %24, 44
  %643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %642, i32 undef)  ; BufferLoad(srv,index,wot)
  %644 = extractvalue %dx.types.ResRet.i32 %643, 0
  %645 = shl i32 %644, 4
  %646 = and i32 %645, 32752
  %647 = call float @dx.op.legacyF16ToF32(i32 131, i32 %646)  ; LegacyF16ToF32(value)
  %648 = lshr i32 %644, 7
  %649 = and i32 %648, 32752
  %650 = call float @dx.op.legacyF16ToF32(i32 131, i32 %649)  ; LegacyF16ToF32(value)
  %651 = lshr i32 %644, 22
  %652 = shl nuw nsw i32 %651, 5
  %653 = call float @dx.op.legacyF16ToF32(i32 131, i32 %652)  ; LegacyF16ToF32(value)
  %654 = fmul fast float %647, %639
  %655 = fmul fast float %650, %640
  %656 = fmul fast float %653, %641
  %657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %658 = extractvalue %dx.types.CBufRet.f32 %657, 0
  %659 = fmul fast float %654, %658
  %660 = fmul fast float %655, %658
  %661 = fmul fast float %656, %658
  %662 = add i32 %24, 48
  %663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %662, i32 undef)  ; BufferLoad(srv,index,wot)
  %664 = extractvalue %dx.types.ResRet.i32 %663, 0
  %665 = lshr i32 %664, 22
  %666 = shl nuw nsw i32 %665, 5
  %667 = call float @dx.op.legacyF16ToF32(i32 131, i32 %666)  ; LegacyF16ToF32(value)
  %668 = fmul fast float %667, %659
  %669 = select i1 %111, float %668, float %659
  %670 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %19, float %33, float %34, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %671 = extractvalue %dx.types.ResRet.f32 %670, 0
  %672 = extractvalue %dx.types.ResRet.f32 %670, 1
  %673 = extractvalue %dx.types.ResRet.f32 %670, 2
  %674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %675 = extractvalue %dx.types.CBufRet.f32 %674, 1
  %676 = fmul fast float %675, %671
  %677 = fmul fast float %675, %672
  %678 = fmul fast float %675, %673
  %679 = call float @dx.op.unary.f32(i32 7, float %626)  ; Saturate(value)
  %680 = call float @dx.op.unary.f32(i32 7, float %627)  ; Saturate(value)
  %681 = call float @dx.op.unary.f32(i32 7, float %628)  ; Saturate(value)
  %682 = fmul fast float %669, %630
  %683 = fmul fast float %660, %631
  %684 = fmul fast float %661, %632
  %685 = call float @dx.op.dot3.f32(i32 55, float %682, float %683, float %684, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %686 = select i1 %111, float 0.000000e+00, float %682
  %687 = select i1 %111, float %685, float %683
  %688 = select i1 %111, float 0.000000e+00, float %684
  %689 = fmul fast float %547, %669
  %690 = fmul fast float %548, %660
  %691 = fmul fast float %549, %661
  %692 = call float @dx.op.dot3.f32(i32 55, float %639, float %640, float %641, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %693 = add i32 %24, 32
  %694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %693, i32 undef)  ; BufferLoad(srv,index,wot)
  %695 = extractvalue %dx.types.ResRet.i32 %694, 0
  %696 = and i32 %695, 255
  %697 = uitofp i32 %696 to float
  %698 = lshr i32 %695, 8
  %699 = and i32 %698, 255
  %700 = uitofp i32 %699 to float
  %701 = fmul fast float %700, %692
  %702 = fadd fast float %701, %697
  %703 = fmul fast float %702, 0x3F70101020000000
  %704 = call float @dx.op.unary.f32(i32 7, float %703)  ; Saturate(value)
  %705 = and i32 %131, 8192
  %706 = icmp eq i32 %705, 0
  %707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %708 = extractvalue %dx.types.CBufRet.f32 %707, 0
  br i1 %706, label %715, label %709, !dx.controlflow.hints !66

; <label>:709                                     ; preds = %625
  %710 = add i32 %128, 176
  %711 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %710, i32 undef)  ; BufferLoad(srv,index,wot)
  %712 = extractvalue %dx.types.ResRet.f32 %711, 0
  %713 = fcmp fast oge float %712, 0.000000e+00
  %714 = select i1 %713, float %712, float %708
  br label %715

; <label>:715                                     ; preds = %709, %625
  %716 = phi float [ %714, %709 ], [ %708, %625 ]
  %717 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %221, i32 %222, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %718 = extractvalue %dx.types.ResRet.i32 %717, 0
  %719 = lshr i32 %718, 18
  %720 = uitofp i32 %719 to float
  %721 = fmul fast float %720, 0x3F4C00EBA0000000
  %722 = call float @dx.op.unary.f32(i32 21, float %721)  ; Exp(value)
  %723 = fadd fast float %722, -1.000000e+00
  %724 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %10, i32 0)  ; GetDimensions(handle,mipLevel)
  %725 = extractvalue %dx.types.Dimensions %724, 0
  %726 = sitofp i32 %725 to float
  %727 = extractvalue %dx.types.Dimensions %724, 1
  %728 = sitofp i32 %727 to float
  %729 = fcmp fast oge float %219, %726
  %730 = fcmp fast oge float %220, %728
  %731 = or i1 %729, %730
  %732 = select i1 %731, float 0x4197782600000000, float %723
  %733 = icmp eq i32 %127, 3
  %734 = fcmp fast ogt float %48, %732
  %735 = and i1 %245, %734
  %736 = or i1 %733, %735
  %737 = icmp eq i32 %127, 2
  %738 = fcmp fast ole float %48, %732
  %739 = and i1 %737, %738
  %740 = or i1 %739, %736
  %741 = fmul fast float %689, %676
  %742 = fmul fast float %690, %677
  %743 = fmul fast float %691, %678
  %744 = fadd fast float %741, %686
  %745 = fadd fast float %687, %742
  %746 = fadd fast float %743, %688
  %747 = fmul fast float %744, %629
  %748 = fmul fast float %745, %629
  %749 = fmul fast float %746, %629
  %750 = fmul fast float %677, %629
  %751 = fmul fast float %678, %629
  %752 = fsub fast float 1.000000e+00, %629
  %753 = call float @dx.op.dot3.f32(i32 55, float %752, float %752, float %752, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %754 = fsub fast float 1.000000e+00, %753
  %755 = fmul fast float %716, %704
  %756 = fsub fast float 1.000000e+00, %704
  %757 = call float @dx.op.unary.f32(i32 7, float %756)  ; Saturate(value)
  %758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %759 = extractvalue %dx.types.CBufRet.f32 %758, 3
  %760 = fmul fast float %759, %757
  %761 = fadd fast float %760, %755
  %762 = and i32 %131, 1048576
  %763 = icmp eq i32 %762, 0
  br i1 %763, label %855, label %764, !dx.controlflow.hints !67

; <label>:764                                     ; preds = %715
  %765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %766 = extractvalue %dx.types.CBufRet.f32 %765, 2
  %767 = extractvalue %dx.types.CBufRet.f32 %765, 3
  %768 = fmul fast float %766, %53
  %769 = fmul fast float %767, %54
  %770 = call float @dx.op.unary.f32(i32 7, float %768)  ; Saturate(value)
  %771 = call float @dx.op.unary.f32(i32 7, float %769)  ; Saturate(value)
  %772 = select i1 %740, i32 2, i32 0
  %773 = or i32 %772, 1
  %774 = uitofp i32 %773 to float
  %775 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %770, float %771, float %774, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %776 = extractvalue %dx.types.ResRet.f32 %775, 0
  %777 = extractvalue %dx.types.ResRet.f32 %775, 1
  %778 = extractvalue %dx.types.ResRet.f32 %775, 2
  %779 = extractvalue %dx.types.ResRet.f32 %775, 3
  %780 = add nuw nsw i32 %772, 2
  %781 = uitofp i32 %780 to float
  %782 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %770, float %771, float %781, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %783 = extractvalue %dx.types.ResRet.f32 %782, 0
  %784 = extractvalue %dx.types.ResRet.f32 %782, 1
  %785 = extractvalue %dx.types.ResRet.f32 %782, 2
  %786 = extractvalue %dx.types.ResRet.f32 %782, 3
  %787 = call float @dx.op.binary.f32(i32 35, float %777, float %778)  ; FMax(a,b)
  %788 = call float @dx.op.binary.f32(i32 35, float %776, float %787)  ; FMax(a,b)
  %789 = call float @dx.op.binary.f32(i32 35, float %788, float %779)  ; FMax(a,b)
  %790 = call float @dx.op.binary.f32(i32 36, float %784, float %785)  ; FMin(a,b)
  %791 = call float @dx.op.binary.f32(i32 36, float %783, float %790)  ; FMin(a,b)
  %792 = call float @dx.op.binary.f32(i32 36, float %791, float %786)  ; FMin(a,b)
  %793 = fmul fast float %789, 2.550000e+02
  %794 = fadd fast float %793, 0x3F70101020000000
  %795 = fptoui float %794 to i32
  %796 = fmul fast float %792, 2.550000e+02
  %797 = fadd fast float %796, 0x3F70101020000000
  %798 = fptoui float %797 to i32
  %799 = icmp ult i32 %795, %798
  br i1 %799, label %800, label %848

; <label>:800                                     ; preds = %764
  %801 = fcmp fast ogt float %47, 9.843750e-01
  %802 = fadd fast float %48, -4.000000e+00
  %803 = select i1 %801, float -4.000000e+00, float %802
  %804 = call float @dx.op.binary.f32(i32 35, float %803, float 0.000000e+00)  ; FMax(a,b)
  %805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %806 = extractvalue %dx.types.CBufRet.f32 %805, 0
  %807 = fadd fast float %806, %804
  %808 = extractvalue %dx.types.CBufRet.f32 %805, 2
  %809 = fmul fast float %807, %808
  %810 = call float @dx.op.unary.f32(i32 23, float %809)  ; Log(value)
  %811 = extractvalue %dx.types.CBufRet.f32 %805, 3
  %812 = fmul fast float %811, %810
  %813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %814 = extractvalue %dx.types.CBufRet.f32 %813, 2
  %815 = fmul fast float %812, %814
  %816 = call float @dx.op.unary.f32(i32 7, float %815)  ; Saturate(value)
  %817 = uitofp i32 %795 to float
  %818 = uitofp i32 %798 to float
  %819 = fadd fast float %817, 5.000000e-01
  %820 = fadd fast float %818, 5.000000e-01
  %821 = fmul fast float %814, %819
  %822 = fmul fast float %814, %820
  %823 = fadd fast float %821, 0x3F0FFB4800000000
  %824 = fadd fast float %822, 0xBF0FFB4800000000
  %825 = call float @dx.op.binary.f32(i32 35, float %816, float %823)  ; FMax(a,b)
  %826 = call float @dx.op.binary.f32(i32 36, float %825, float %824)  ; FMin(a,b)
  %827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %828 = extractvalue %dx.types.CBufRet.f32 %827, 1
  %829 = extractvalue %dx.types.CBufRet.f32 %827, 2
  %830 = extractvalue %dx.types.CBufRet.f32 %827, 0
  %831 = select i1 %740, float %830, float 0.000000e+00
  %832 = fmul fast float %828, %826
  %833 = fadd fast float %831, %832
  %834 = fadd fast float %831, %829
  %835 = fsub fast float %828, %829
  %836 = fadd fast float %835, %831
  %837 = call float @dx.op.binary.f32(i32 35, float %833, float %834)  ; FMax(a,b)
  %838 = call float @dx.op.binary.f32(i32 36, float %837, float %836)  ; FMin(a,b)
  %839 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %18, float %770, float %771, float %838, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %840 = extractvalue %dx.types.ResRet.f32 %839, 0
  %841 = extractvalue %dx.types.ResRet.f32 %839, 1
  %842 = extractvalue %dx.types.ResRet.f32 %839, 2
  %843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %844 = extractvalue %dx.types.CBufRet.f32 %843, 1
  %845 = fmul fast float %844, %840
  %846 = fmul fast float %844, %841
  %847 = fmul fast float %844, %842
  br label %848

; <label>:848                                     ; preds = %800, %764
  %849 = phi float [ %845, %800 ], [ 1.000000e+00, %764 ]
  %850 = phi float [ %846, %800 ], [ 1.000000e+00, %764 ]
  %851 = phi float [ %847, %800 ], [ 1.000000e+00, %764 ]
  %852 = fmul fast float %849, %747
  %853 = fmul fast float %850, %748
  %854 = fmul fast float %851, %749
  br label %855

; <label>:855                                     ; preds = %848, %715
  %856 = phi float [ %852, %848 ], [ %747, %715 ]
  %857 = phi float [ %853, %848 ], [ %748, %715 ]
  %858 = phi float [ %854, %848 ], [ %749, %715 ]
  %859 = and i32 %131, 2097152
  %860 = icmp eq i32 %859, 0
  br i1 %860, label %865, label %861, !dx.controlflow.hints !68

; <label>:861                                     ; preds = %855
  %862 = add i32 %128, 192
  %863 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %862, i32 undef)  ; BufferLoad(srv,index,wot)
  %864 = extractvalue %dx.types.ResRet.f32 %863, 0
  br label %868

; <label>:865                                     ; preds = %855
  %866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %867 = extractvalue %dx.types.CBufRet.f32 %866, 3
  br label %868

; <label>:868                                     ; preds = %865, %861
  %869 = phi float [ %864, %861 ], [ %867, %865 ]
  %870 = fmul fast float %679, %629
  %871 = fmul fast float %870, %676
  %872 = fmul fast float %750, %680
  %873 = fmul fast float %751, %681
  br i1 %735, label %874, label %983

; <label>:874                                     ; preds = %868
  %875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %876 = extractvalue %dx.types.CBufRet.f32 %875, 2
  %877 = extractvalue %dx.types.CBufRet.f32 %875, 3
  %878 = fmul fast float %876, %53
  %879 = fmul fast float %877, %54
  %880 = call float @dx.op.unary.f32(i32 7, float %878)  ; Saturate(value)
  %881 = call float @dx.op.unary.f32(i32 7, float %879)  ; Saturate(value)
  %882 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %880, float %881, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %883 = extractvalue %dx.types.ResRet.f32 %882, 0
  %884 = extractvalue %dx.types.ResRet.f32 %882, 1
  %885 = extractvalue %dx.types.ResRet.f32 %882, 2
  %886 = extractvalue %dx.types.ResRet.f32 %882, 3
  %887 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %880, float %881, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %888 = extractvalue %dx.types.ResRet.f32 %887, 0
  %889 = extractvalue %dx.types.ResRet.f32 %887, 1
  %890 = extractvalue %dx.types.ResRet.f32 %887, 2
  %891 = extractvalue %dx.types.ResRet.f32 %887, 3
  %892 = call float @dx.op.binary.f32(i32 35, float %884, float %885)  ; FMax(a,b)
  %893 = call float @dx.op.binary.f32(i32 35, float %883, float %892)  ; FMax(a,b)
  %894 = call float @dx.op.binary.f32(i32 35, float %893, float %886)  ; FMax(a,b)
  %895 = call float @dx.op.binary.f32(i32 36, float %889, float %890)  ; FMin(a,b)
  %896 = call float @dx.op.binary.f32(i32 36, float %888, float %895)  ; FMin(a,b)
  %897 = call float @dx.op.binary.f32(i32 36, float %896, float %891)  ; FMin(a,b)
  %898 = fmul fast float %894, 2.550000e+02
  %899 = fadd fast float %898, 0x3F70101020000000
  %900 = fptoui float %899 to i32
  %901 = fmul fast float %897, 2.550000e+02
  %902 = fadd fast float %901, 0x3F70101020000000
  %903 = fptoui float %902 to i32
  %904 = icmp ult i32 %900, %903
  br i1 %904, label %905, label %956

; <label>:905                                     ; preds = %874
  %906 = fcmp fast ogt float %47, 9.843750e-01
  %907 = fadd fast float %48, -4.000000e+00
  %908 = select i1 %906, float -4.000000e+00, float %907
  %909 = call float @dx.op.binary.f32(i32 35, float %908, float 0.000000e+00)  ; FMax(a,b)
  %910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %911 = extractvalue %dx.types.CBufRet.f32 %910, 0
  %912 = fadd fast float %911, %909
  %913 = extractvalue %dx.types.CBufRet.f32 %910, 2
  %914 = fmul fast float %912, %913
  %915 = call float @dx.op.unary.f32(i32 23, float %914)  ; Log(value)
  %916 = extractvalue %dx.types.CBufRet.f32 %910, 3
  %917 = fmul fast float %916, %915
  %918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %919 = extractvalue %dx.types.CBufRet.f32 %918, 2
  %920 = fmul fast float %917, %919
  %921 = call float @dx.op.unary.f32(i32 7, float %920)  ; Saturate(value)
  %922 = uitofp i32 %900 to float
  %923 = uitofp i32 %903 to float
  %924 = fadd fast float %922, 5.000000e-01
  %925 = fadd fast float %923, 5.000000e-01
  %926 = fmul fast float %919, %924
  %927 = fmul fast float %919, %925
  %928 = fadd fast float %926, 0x3F0FFB4800000000
  %929 = fadd fast float %927, 0xBF0FFB4800000000
  %930 = call float @dx.op.binary.f32(i32 35, float %921, float %928)  ; FMax(a,b)
  %931 = call float @dx.op.binary.f32(i32 36, float %930, float %929)  ; FMin(a,b)
  %932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %933 = extractvalue %dx.types.CBufRet.f32 %932, 1
  %934 = extractvalue %dx.types.CBufRet.f32 %932, 2
  %935 = extractvalue %dx.types.CBufRet.f32 %932, 0
  %936 = fmul fast float %933, %931
  %937 = fadd fast float %935, %936
  %938 = fadd fast float %935, %934
  %939 = fsub fast float %933, %934
  %940 = fadd fast float %939, %935
  %941 = call float @dx.op.binary.f32(i32 35, float %937, float %938)  ; FMax(a,b)
  %942 = call float @dx.op.binary.f32(i32 36, float %941, float %940)  ; FMin(a,b)
  %943 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %880, float %881, float %942, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %944 = extractvalue %dx.types.ResRet.f32 %943, 0
  %945 = extractvalue %dx.types.ResRet.f32 %943, 1
  %946 = extractvalue %dx.types.ResRet.f32 %943, 2
  %947 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %880, float %881, float %942, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %948 = extractvalue %dx.types.ResRet.f32 %947, 0
  %949 = extractvalue %dx.types.ResRet.f32 %947, 1
  %950 = extractvalue %dx.types.ResRet.f32 %947, 2
  %951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %952 = extractvalue %dx.types.CBufRet.f32 %951, 1
  %953 = fmul fast float %952, %948
  %954 = fmul fast float %952, %949
  %955 = fmul fast float %952, %950
  br label %956

; <label>:956                                     ; preds = %905, %874
  %957 = phi float [ %944, %905 ], [ 1.000000e+00, %874 ]
  %958 = phi float [ %945, %905 ], [ 1.000000e+00, %874 ]
  %959 = phi float [ %946, %905 ], [ 1.000000e+00, %874 ]
  %960 = phi float [ %953, %905 ], [ 0.000000e+00, %874 ]
  %961 = phi float [ %954, %905 ], [ 0.000000e+00, %874 ]
  %962 = phi float [ %955, %905 ], [ 0.000000e+00, %874 ]
  %963 = fmul fast float %960, %754
  %964 = fmul fast float %961, %754
  %965 = fmul fast float %962, %754
  %966 = call float @dx.op.dot3.f32(i32 55, float %957, float %958, float %959, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %967 = call float @dx.op.dot3.f32(i32 55, float %963, float %964, float %965, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %968 = select i1 %111, float %966, float %957
  %969 = select i1 %111, float %966, float %958
  %970 = select i1 %111, float 1.000000e+00, float %959
  %971 = select i1 %111, float %967, float %963
  %972 = select i1 %111, float 0.000000e+00, float %964
  %973 = select i1 %111, float 0.000000e+00, float %965
  %974 = fmul fast float %968, %871
  %975 = fmul fast float %969, %872
  %976 = fmul fast float %970, %873
  %977 = fadd fast float %974, %971
  %978 = fadd fast float %975, %972
  %979 = fadd fast float %973, %976
  %980 = fmul fast float %968, %856
  %981 = fmul fast float %969, %857
  %982 = fmul fast float %970, %858
  br label %983

; <label>:983                                     ; preds = %956, %868
  %984 = phi float [ %732, %956 ], [ %48, %868 ]
  %985 = phi float [ %977, %956 ], [ %871, %868 ]
  %986 = phi float [ %978, %956 ], [ %872, %868 ]
  %987 = phi float [ %979, %956 ], [ %873, %868 ]
  %988 = phi float [ %980, %956 ], [ %856, %868 ]
  %989 = phi float [ %981, %956 ], [ %857, %868 ]
  %990 = phi float [ %982, %956 ], [ %858, %868 ]
  %991 = phi float [ %957, %956 ], [ 1.000000e+00, %868 ]
  br i1 %740, label %1293, label %992

; <label>:992                                     ; preds = %983
  %993 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %19, float %33, float %34, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %994 = extractvalue %dx.types.ResRet.f32 %993, 0
  %995 = extractvalue %dx.types.ResRet.f32 %993, 1
  %996 = extractvalue %dx.types.ResRet.f32 %993, 2
  %997 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %19, float %33, float %34, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %998 = extractvalue %dx.types.ResRet.f32 %997, 0
  %999 = extractvalue %dx.types.ResRet.f32 %997, 1
  %1000 = extractvalue %dx.types.ResRet.f32 %997, 2
  %1001 = fmul fast float %994, %754
  %1002 = fmul fast float %995, %754
  %1003 = fmul fast float %996, %754
  %1004 = fmul fast float %998, %991
  %1005 = call float @dx.op.dot3.f32(i32 55, float %998, float %999, float %1000, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1006 = call float @dx.op.dot3.f32(i32 55, float %1001, float %1002, float %1003, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1007 = select i1 %111, float %1005, float %998
  %1008 = select i1 %111, float %1005, float %999
  %1009 = select i1 %111, float 1.000000e+00, float %1000
  %1010 = select i1 %111, float %1006, float %1001
  %1011 = select i1 %111, float 0.000000e+00, float %1002
  %1012 = select i1 %111, float 0.000000e+00, float %1003
  %1013 = fmul fast float %1007, %985
  %1014 = fmul fast float %1008, %986
  %1015 = fmul fast float %1009, %987
  %1016 = fadd fast float %1013, %1010
  %1017 = fadd fast float %1014, %1011
  %1018 = fadd fast float %1015, %1012
  %1019 = fmul fast float %1007, %988
  %1020 = fmul fast float %1008, %989
  %1021 = fmul fast float %1009, %990
  %1022 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1023 = extractvalue %dx.types.CBufRet.i32 %1022, 0
  %1024 = icmp eq i32 %1023, 0
  br i1 %1024, label %1293, label %1025, !dx.controlflow.hints !69

; <label>:1025                                    ; preds = %992
  %1026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1027 = extractvalue %dx.types.CBufRet.f32 %1026, 2
  %1028 = extractvalue %dx.types.CBufRet.f32 %1026, 3
  %1029 = fmul fast float %1027, %53
  %1030 = fmul fast float %1028, %54
  %1031 = fmul fast float %1029, 2.000000e+00
  %1032 = fmul fast float %1030, 2.000000e+00
  %1033 = fsub fast float 1.000000e+00, %1031
  %1034 = fsub fast float 1.000000e+00, %1032
  %1035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1036 = extractvalue %dx.types.CBufRet.f32 %1035, 0
  %1037 = extractvalue %dx.types.CBufRet.f32 %1035, 1
  %1038 = extractvalue %dx.types.CBufRet.f32 %1035, 2
  %1039 = fmul fast float %1033, %1036
  %1040 = fmul fast float %1033, %1037
  %1041 = fmul fast float %1033, %1038
  %1042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1043 = extractvalue %dx.types.CBufRet.f32 %1042, 0
  %1044 = extractvalue %dx.types.CBufRet.f32 %1042, 1
  %1045 = extractvalue %dx.types.CBufRet.f32 %1042, 2
  %1046 = fmul fast float %1034, %1043
  %1047 = fmul fast float %1034, %1044
  %1048 = fmul fast float %1034, %1045
  %1049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1050 = extractvalue %dx.types.CBufRet.f32 %1049, 0
  %1051 = extractvalue %dx.types.CBufRet.f32 %1049, 1
  %1052 = extractvalue %dx.types.CBufRet.f32 %1049, 2
  %1053 = fadd fast float %1046, %1050
  %1054 = fadd fast float %1053, %1039
  %1055 = fadd fast float %1047, %1051
  %1056 = fadd fast float %1055, %1040
  %1057 = fadd fast float %1048, %1052
  %1058 = fadd fast float %1057, %1041
  %1059 = fmul fast float %1054, %984
  %1060 = fmul fast float %1056, %984
  %1061 = fmul fast float %1058, %984
  %1062 = fmul fast float %1059, %1059
  %1063 = fmul fast float %1060, %1060
  %1064 = fadd fast float %1062, %1063
  %1065 = fmul fast float %1061, %1061
  %1066 = fadd fast float %1064, %1065
  %1067 = call float @dx.op.unary.f32(i32 24, float %1066)  ; Sqrt(value)
  %1068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1069 = extractvalue %dx.types.CBufRet.f32 %1068, 0
  %1070 = fsub fast float %1067, %1069
  %1071 = extractvalue %dx.types.CBufRet.f32 %1068, 2
  %1072 = fmul fast float %1070, %1071
  %1073 = call float @dx.op.unary.f32(i32 7, float %1072)  ; Saturate(value)
  %1074 = fadd fast float %1073, -5.000000e-01
  %1075 = fmul fast float %1074, 2.000000e+00
  %1076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1077 = extractvalue %dx.types.CBufRet.f32 %1076, 2
  %1078 = call float @dx.op.binary.f32(i32 36, float %1077, float %1075)  ; FMin(a,b)
  %1079 = fsub fast float -0.000000e+00, %1077
  %1080 = fcmp fast ogt float %1078, %1079
  br i1 %1080, label %1081, label %1293, !dx.controlflow.hints !70

; <label>:1081                                    ; preds = %1025
  %1082 = fmul fast float %1078, 5.000000e-01
  %1083 = fadd fast float %1082, 5.000000e-01
  %1084 = call float @dx.op.unary.f32(i32 22, float %1083)  ; Frc(value)
  %1085 = call float @dx.op.unary.f32(i32 27, float %1084)  ; Round_ni(value)
  %1086 = call float @dx.op.unary.f32(i32 22, float %1084)  ; Frc(value)
  %1087 = fmul fast float %1086, 2.000000e+00
  %1088 = fadd fast float %1087, -1.000000e+00
  %1089 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %19, float %1029, float %1030, float %1085, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1090 = extractvalue %dx.types.ResRet.f32 %1089, 0
  %1091 = extractvalue %dx.types.ResRet.f32 %1089, 1
  %1092 = extractvalue %dx.types.ResRet.f32 %1089, 2
  %1093 = extractvalue %dx.types.ResRet.f32 %1089, 3
  %1094 = fadd fast float %1090, -5.000000e-01
  %1095 = fadd fast float %1092, -5.000000e-01
  %1096 = fmul fast float %1094, 0xBFD5555560000000
  %1097 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1095, float %1096)  ; FMad(a,b,c)
  %1098 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1091, float 0.000000e+00)  ; FMad(a,b,c)
  %1099 = fadd fast float %1098, %1093
  %1100 = fmul fast float %1094, -7.500000e-01
  %1101 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1095, float %1100)  ; FMad(a,b,c)
  %1102 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1091, float 0.000000e+00)  ; FMad(a,b,c)
  %1103 = fadd fast float %1102, %1093
  %1104 = call float @dx.op.binary.f32(i32 35, float %1097, float -1.000000e+00)  ; FMax(a,b)
  %1105 = call float @dx.op.binary.f32(i32 35, float %1099, float -1.000000e+00)  ; FMax(a,b)
  %1106 = call float @dx.op.binary.f32(i32 35, float %1101, float -1.000000e+00)  ; FMax(a,b)
  %1107 = call float @dx.op.binary.f32(i32 35, float %1103, float -1.000000e+00)  ; FMax(a,b)
  %1108 = call float @dx.op.binary.f32(i32 36, float %1104, float 1.000000e+00)  ; FMin(a,b)
  %1109 = call float @dx.op.binary.f32(i32 36, float %1105, float 1.000000e+00)  ; FMin(a,b)
  %1110 = call float @dx.op.binary.f32(i32 36, float %1106, float 1.000000e+00)  ; FMin(a,b)
  %1111 = call float @dx.op.binary.f32(i32 36, float %1107, float 1.000000e+00)  ; FMin(a,b)
  %1112 = fcmp fast olt float %1108, 0x3FEFFF8020000000
  br i1 %1112, label %1113, label %1228, !dx.controlflow.hints !71

; <label>:1113                                    ; preds = %1081
  %1114 = extractvalue %dx.types.CBufRet.f32 %1076, 3
  %1115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1116 = extractvalue %dx.types.CBufRet.f32 %1115, 0
  %1117 = extractvalue %dx.types.CBufRet.f32 %1115, 1
  %1118 = extractvalue %dx.types.CBufRet.f32 %1115, 2
  %1119 = extractvalue %dx.types.CBufRet.f32 %1115, 3
  %1120 = fsub fast float %1116, %1108
  %1121 = fsub fast float %1117, %1109
  %1122 = fsub fast float %1118, %1110
  %1123 = fsub fast float %1119, %1111
  %1124 = fmul fast float %1120, %1114
  %1125 = fmul fast float %1121, %1114
  %1126 = fmul fast float %1122, %1114
  %1127 = fmul fast float %1123, %1114
  %1128 = fadd fast float %1124, %1108
  %1129 = fadd fast float %1125, %1109
  %1130 = fsub fast float -0.000000e+00, %1129
  %1131 = fadd fast float %1126, %1110
  %1132 = fadd fast float %1127, %1111
  %1133 = fmul fast float %1128, %1128
  %1134 = fsub fast float %1129, %1133
  %1135 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1134)  ; FMax(a,b)
  %1136 = fdiv fast float 1.000000e+00, %1135
  %1137 = fmul fast float %1129, %1128
  %1138 = fsub fast float %1131, %1137
  %1139 = fsub fast float %1088, %1128
  %1140 = fmul fast float %1088, %1088
  %1141 = fsub fast float %1140, %1129
  %1142 = fmul fast float %1139, %1136
  %1143 = fmul fast float %1142, %1138
  %1144 = fsub fast float %1141, %1143
  %1145 = fmul fast float %1129, %1129
  %1146 = fsub fast float %1132, %1145
  %1147 = fmul fast float %1138, %1138
  %1148 = fmul fast float %1147, %1136
  %1149 = fsub fast float %1146, %1148
  %1150 = fdiv fast float %1144, %1149
  %1151 = fmul fast float %1138, %1150
  %1152 = fsub fast float %1139, %1151
  %1153 = fmul fast float %1152, %1136
  %1154 = fmul fast float %1153, %1128
  %1155 = fsub fast float 1.000000e+00, %1154
  %1156 = fmul fast float %1129, %1150
  %1157 = fsub fast float %1155, %1156
  %1158 = fmul fast float %1153, %1153
  %1159 = fmul fast float %1150, 4.000000e+00
  %1160 = fmul fast float %1159, %1157
  %1161 = fsub fast float %1158, %1160
  %1162 = call float @dx.op.unary.f32(i32 24, float %1161)  ; Sqrt(value)
  %1163 = fcmp fast oge float %1153, 0.000000e+00
  %1164 = fsub fast float -0.000000e+00, %1162
  %1165 = select i1 %1163, float %1164, float %1162
  %1166 = fsub fast float %1165, %1153
  %1167 = fdiv fast float %1166, %1150
  %1168 = fdiv fast float %1157, %1166
  %1169 = fmul fast float %1167, 5.000000e-01
  %1170 = fmul fast float %1168, 2.000000e+00
  %1171 = select i1 %1163, float %1169, float %1170
  %1172 = select i1 %1163, float %1170, float %1169
  %1173 = call float @dx.op.binary.f32(i32 35, float %1171, float %1172)  ; FMax(a,b)
  %1174 = call float @dx.op.binary.f32(i32 36, float %1171, float %1172)  ; FMin(a,b)
  %1175 = fcmp fast ogt float %1088, %1174
  br i1 %1175, label %1176, label %1186

; <label>:1176                                    ; preds = %1113
  %1177 = fsub fast float %1088, %1174
  %1178 = fsub fast float %1173, %1174
  %1179 = fmul fast float %1177, %1178
  %1180 = fmul fast float %1173, %1088
  %1181 = fadd fast float %1173, %1088
  %1182 = fmul fast float %1181, %1128
  %1183 = fadd fast float %1180, %1129
  %1184 = fsub fast float %1183, %1182
  %1185 = fdiv fast float %1184, %1179
  br label %1186

; <label>:1186                                    ; preds = %1176, %1113
  %1187 = phi float [ %1185, %1176 ], [ 0.000000e+00, %1113 ]
  %1188 = fcmp fast ogt float %1088, %1173
  %1189 = fsub fast float %1088, %1173
  br i1 %1188, label %1190, label %1200

; <label>:1190                                    ; preds = %1186
  %1191 = fsub fast float %1173, %1174
  %1192 = fmul fast float %1191, %1189
  %1193 = fmul fast float %1174, %1088
  %1194 = fadd fast float %1174, %1088
  %1195 = fmul fast float %1194, %1128
  %1196 = fsub fast float %1130, %1193
  %1197 = fadd fast float %1196, %1195
  %1198 = fdiv fast float %1197, %1192
  %1199 = fadd fast float %1198, %1187
  br label %1200

; <label>:1200                                    ; preds = %1190, %1186
  %1201 = phi float [ %1199, %1190 ], [ %1187, %1186 ]
  %1202 = fsub fast float %1088, %1174
  %1203 = fmul fast float %1202, %1189
  %1204 = fmul fast float %1174, %1173
  %1205 = fadd fast float %1174, %1173
  %1206 = fmul fast float %1205, %1128
  %1207 = fadd fast float %1204, %1129
  %1208 = fsub fast float %1207, %1206
  %1209 = fdiv fast float %1208, %1203
  %1210 = call float @dx.op.unary.f32(i32 7, float %1201)  ; Saturate(value)
  %1211 = fcmp fast oeq float %869, 0.000000e+00
  %1212 = extractvalue %dx.types.CBufRet.f32 %1076, 0
  %1213 = fcmp fast oeq float %1212, 0.000000e+00
  %1214 = or i1 %1211, %1213
  %1215 = fmul fast float %1212, 2.000000e+00
  %1216 = fadd fast float %1077, %1078
  %1217 = fdiv fast float %1216, %1215
  %1218 = call float @dx.op.unary.f32(i32 7, float %1217)  ; Saturate(value)
  %1219 = fmul fast float %1218, 2.000000e+00
  %1220 = fsub fast float 3.000000e+00, %1219
  %1221 = fmul fast float %1218, %1218
  %1222 = fmul fast float %1221, %1220
  %1223 = select i1 %1214, float 1.000000e+00, float %1222
  %1224 = fmul fast float %1209, %869
  %1225 = fadd fast float %1210, %1224
  %1226 = call float @dx.op.unary.f32(i32 7, float %1225)  ; Saturate(value)
  %1227 = fmul fast float %1223, %1226
  br label %1228

; <label>:1228                                    ; preds = %1200, %1081
  %1229 = phi float [ %1227, %1200 ], [ 0.000000e+00, %1081 ]
  %1230 = fsub fast float 1.000000e+00, %1229
  %1231 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %19, float %1029, float %1030, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1232 = extractvalue %dx.types.ResRet.f32 %1231, 0
  %1233 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1234 = extractvalue %dx.types.CBufRet.i32 %1233, 2
  %1235 = icmp eq i32 %1234, 0
  br i1 %1235, label %1241, label %1236

; <label>:1236                                    ; preds = %1228
  %1237 = call float @dx.op.unary.f32(i32 7, float %1229)  ; Saturate(value)
  %1238 = fadd fast float %1232, -1.000000e+00
  %1239 = fmul fast float %1237, %1238
  %1240 = fadd fast float %1239, 1.000000e+00
  br label %1241

; <label>:1241                                    ; preds = %1236, %1228
  %1242 = phi float [ %1240, %1236 ], [ %1230, %1228 ]
  %1243 = call float @dx.op.binary.f32(i32 35, float %1232, float %1242)  ; FMax(a,b)
  %1244 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %1245 = extractvalue %dx.types.CBufRet.i32 %1244, 2
  %1246 = and i32 %1245, 1
  %1247 = icmp eq i32 %1246, 0
  %1248 = fcmp fast une float %1243, 1.000000e+00
  %1249 = and i1 %1248, %1247
  br i1 %1249, label %1250, label %1269

; <label>:1250                                    ; preds = %1241
  %1251 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %19, float %1029, float %1030, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1252 = extractvalue %dx.types.ResRet.f32 %1251, 0
  %1253 = extractvalue %dx.types.ResRet.f32 %1251, 1
  %1254 = extractvalue %dx.types.ResRet.f32 %1251, 2
  %1255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1256 = extractvalue %dx.types.CBufRet.f32 %1255, 1
  %1257 = fmul fast float %1256, %1252
  %1258 = fmul fast float %1256, %1253
  %1259 = fmul fast float %1256, %1254
  %1260 = fcmp fast ogt float %1232, 0x3FEFFF2E40000000
  %1261 = fsub fast float 1.000000e+00, %1243
  %1262 = fsub fast float 1.000000e+00, %1232
  %1263 = fdiv fast float %1261, %1262
  %1264 = call float @dx.op.unary.f32(i32 7, float %1263)  ; Saturate(value)
  %1265 = select i1 %1260, float 0.000000e+00, float %1264
  %1266 = fmul fast float %1257, %1265
  %1267 = fmul fast float %1258, %1265
  %1268 = fmul fast float %1259, %1265
  br label %1269

; <label>:1269                                    ; preds = %1250, %1241
  %1270 = phi float [ 0.000000e+00, %1241 ], [ %1266, %1250 ]
  %1271 = phi float [ 0.000000e+00, %1241 ], [ %1267, %1250 ]
  %1272 = phi float [ 0.000000e+00, %1241 ], [ %1268, %1250 ]
  %1273 = fmul fast float %1270, %754
  %1274 = fmul fast float %1271, %754
  %1275 = fmul fast float %1272, %754
  %1276 = fmul fast float %1243, %1004
  %1277 = call float @dx.op.dot3.f32(i32 55, float %1243, float %1243, float %1243, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1278 = call float @dx.op.dot3.f32(i32 55, float %1273, float %1274, float %1275, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1279 = select i1 %111, float %1277, float %1243
  %1280 = select i1 %111, float 1.000000e+00, float %1243
  %1281 = select i1 %111, float %1278, float %1273
  %1282 = select i1 %111, float 0.000000e+00, float %1274
  %1283 = select i1 %111, float 0.000000e+00, float %1275
  %1284 = fmul fast float %1279, %1016
  %1285 = fmul fast float %1279, %1017
  %1286 = fmul fast float %1280, %1018
  %1287 = fadd fast float %1284, %1281
  %1288 = fadd fast float %1285, %1282
  %1289 = fadd fast float %1283, %1286
  %1290 = fmul fast float %1279, %1019
  %1291 = fmul fast float %1279, %1020
  %1292 = fmul fast float %1280, %1021
  br label %1293

; <label>:1293                                    ; preds = %1269, %1025, %992, %983
  %1294 = phi float [ %985, %983 ], [ %1016, %992 ], [ %1287, %1269 ], [ %1016, %1025 ]
  %1295 = phi float [ %986, %983 ], [ %1017, %992 ], [ %1288, %1269 ], [ %1017, %1025 ]
  %1296 = phi float [ %987, %983 ], [ %1018, %992 ], [ %1289, %1269 ], [ %1018, %1025 ]
  %1297 = phi float [ %988, %983 ], [ %1019, %992 ], [ %1290, %1269 ], [ %1019, %1025 ]
  %1298 = phi float [ %989, %983 ], [ %1020, %992 ], [ %1291, %1269 ], [ %1020, %1025 ]
  %1299 = phi float [ %990, %983 ], [ %1021, %992 ], [ %1292, %1269 ], [ %1021, %1025 ]
  %1300 = phi float [ %991, %983 ], [ %1004, %992 ], [ %1276, %1269 ], [ %1004, %1025 ]
  %1301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1302 = extractvalue %dx.types.CBufRet.f32 %1301, 2
  %1303 = extractvalue %dx.types.CBufRet.f32 %1301, 3
  %1304 = fmul fast float %1302, %53
  %1305 = fmul fast float %1303, %54
  %1306 = call float @dx.op.unary.f32(i32 7, float %1304)  ; Saturate(value)
  %1307 = call float @dx.op.unary.f32(i32 7, float %1305)  ; Saturate(value)
  %1308 = select i1 %740, i32 2, i32 0
  %1309 = or i32 %1308, 1
  %1310 = uitofp i32 %1309 to float
  %1311 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %1306, float %1307, float %1310, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1312 = extractvalue %dx.types.ResRet.f32 %1311, 0
  %1313 = extractvalue %dx.types.ResRet.f32 %1311, 1
  %1314 = extractvalue %dx.types.ResRet.f32 %1311, 2
  %1315 = extractvalue %dx.types.ResRet.f32 %1311, 3
  %1316 = add nuw nsw i32 %1308, 2
  %1317 = uitofp i32 %1316 to float
  %1318 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %1306, float %1307, float %1317, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1319 = extractvalue %dx.types.ResRet.f32 %1318, 0
  %1320 = extractvalue %dx.types.ResRet.f32 %1318, 1
  %1321 = extractvalue %dx.types.ResRet.f32 %1318, 2
  %1322 = extractvalue %dx.types.ResRet.f32 %1318, 3
  %1323 = call float @dx.op.binary.f32(i32 35, float %1313, float %1314)  ; FMax(a,b)
  %1324 = call float @dx.op.binary.f32(i32 35, float %1312, float %1323)  ; FMax(a,b)
  %1325 = call float @dx.op.binary.f32(i32 35, float %1324, float %1315)  ; FMax(a,b)
  %1326 = call float @dx.op.binary.f32(i32 36, float %1320, float %1321)  ; FMin(a,b)
  %1327 = call float @dx.op.binary.f32(i32 36, float %1319, float %1326)  ; FMin(a,b)
  %1328 = call float @dx.op.binary.f32(i32 36, float %1327, float %1322)  ; FMin(a,b)
  %1329 = fmul fast float %1325, 2.550000e+02
  %1330 = fadd fast float %1329, 0x3F70101020000000
  %1331 = fptoui float %1330 to i32
  %1332 = fmul fast float %1328, 2.550000e+02
  %1333 = fadd fast float %1332, 0x3F70101020000000
  %1334 = fptoui float %1333 to i32
  %1335 = icmp ult i32 %1331, %1334
  br i1 %1335, label %1336, label %1388

; <label>:1336                                    ; preds = %1293
  %1337 = fcmp fast ogt float %47, 9.843750e-01
  %1338 = fadd fast float %984, -4.000000e+00
  %1339 = select i1 %1337, float -4.000000e+00, float %1338
  %1340 = call float @dx.op.binary.f32(i32 35, float %1339, float 0.000000e+00)  ; FMax(a,b)
  %1341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1342 = extractvalue %dx.types.CBufRet.f32 %1341, 0
  %1343 = fadd fast float %1342, %1340
  %1344 = extractvalue %dx.types.CBufRet.f32 %1341, 2
  %1345 = fmul fast float %1343, %1344
  %1346 = call float @dx.op.unary.f32(i32 23, float %1345)  ; Log(value)
  %1347 = extractvalue %dx.types.CBufRet.f32 %1341, 3
  %1348 = fmul fast float %1347, %1346
  %1349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1350 = extractvalue %dx.types.CBufRet.f32 %1349, 2
  %1351 = fmul fast float %1348, %1350
  %1352 = call float @dx.op.unary.f32(i32 7, float %1351)  ; Saturate(value)
  %1353 = uitofp i32 %1331 to float
  %1354 = uitofp i32 %1334 to float
  %1355 = fadd fast float %1353, 5.000000e-01
  %1356 = fadd fast float %1354, 5.000000e-01
  %1357 = fmul fast float %1350, %1355
  %1358 = fmul fast float %1350, %1356
  %1359 = fadd fast float %1357, 0x3F0FFB4800000000
  %1360 = fadd fast float %1358, 0xBF0FFB4800000000
  %1361 = call float @dx.op.binary.f32(i32 35, float %1352, float %1359)  ; FMax(a,b)
  %1362 = call float @dx.op.binary.f32(i32 36, float %1361, float %1360)  ; FMin(a,b)
  %1363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1364 = extractvalue %dx.types.CBufRet.f32 %1363, 1
  %1365 = extractvalue %dx.types.CBufRet.f32 %1363, 2
  %1366 = extractvalue %dx.types.CBufRet.f32 %1363, 0
  %1367 = select i1 %740, float %1366, float 0.000000e+00
  %1368 = fmul fast float %1364, %1362
  %1369 = fadd fast float %1367, %1368
  %1370 = fadd fast float %1367, %1365
  %1371 = fsub fast float %1364, %1365
  %1372 = fadd fast float %1371, %1367
  %1373 = call float @dx.op.binary.f32(i32 35, float %1369, float %1370)  ; FMax(a,b)
  %1374 = call float @dx.op.binary.f32(i32 36, float %1373, float %1372)  ; FMin(a,b)
  %1375 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %1306, float %1307, float %1374, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1376 = extractvalue %dx.types.ResRet.f32 %1375, 0
  %1377 = extractvalue %dx.types.ResRet.f32 %1375, 1
  %1378 = extractvalue %dx.types.ResRet.f32 %1375, 2
  %1379 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %1306, float %1307, float %1374, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1380 = extractvalue %dx.types.ResRet.f32 %1379, 0
  %1381 = extractvalue %dx.types.ResRet.f32 %1379, 1
  %1382 = extractvalue %dx.types.ResRet.f32 %1379, 2
  %1383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1384 = extractvalue %dx.types.CBufRet.f32 %1383, 1
  %1385 = fmul fast float %1384, %1380
  %1386 = fmul fast float %1384, %1381
  %1387 = fmul fast float %1384, %1382
  br label %1388

; <label>:1388                                    ; preds = %1336, %1293
  %1389 = phi float [ %1376, %1336 ], [ 1.000000e+00, %1293 ]
  %1390 = phi float [ %1377, %1336 ], [ 1.000000e+00, %1293 ]
  %1391 = phi float [ %1378, %1336 ], [ 1.000000e+00, %1293 ]
  %1392 = phi float [ %1385, %1336 ], [ 0.000000e+00, %1293 ]
  %1393 = phi float [ %1386, %1336 ], [ 0.000000e+00, %1293 ]
  %1394 = phi float [ %1387, %1336 ], [ 0.000000e+00, %1293 ]
  %1395 = fmul fast float %1392, %754
  %1396 = fmul fast float %1393, %754
  %1397 = fmul fast float %1394, %754
  %1398 = fmul fast float %1389, %1300
  %1399 = call float @dx.op.dot3.f32(i32 55, float %1389, float %1390, float %1391, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1400 = call float @dx.op.dot3.f32(i32 55, float %1395, float %1396, float %1397, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1401 = select i1 %111, float %1399, float %1389
  %1402 = select i1 %111, float %1399, float %1390
  %1403 = select i1 %111, float 1.000000e+00, float %1391
  %1404 = select i1 %111, float %1400, float %1395
  %1405 = select i1 %111, float 0.000000e+00, float %1396
  %1406 = select i1 %111, float 0.000000e+00, float %1397
  %1407 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1408 = extractvalue %dx.types.CBufRet.i32 %1407, 3
  %1409 = and i32 %1408, 3
  %1410 = icmp ne i32 %1409, 0
  %1411 = and i32 %1408, 4
  %1412 = icmp ne i32 %1411, 0
  %1413 = and i1 %1410, %1412
  %1414 = and i1 %111, %1413
  br i1 %1414, label %1415, label %1421

; <label>:1415                                    ; preds = %1388
  %1416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1417 = extractvalue %dx.types.CBufRet.f32 %1416, 1
  %1418 = fadd fast float %1398, -1.000000e+00
  %1419 = fmul fast float %1417, %1418
  %1420 = fadd fast float %1419, 1.000000e+00
  br label %1421

; <label>:1421                                    ; preds = %1415, %1388
  %1422 = phi float [ %1420, %1415 ], [ %1398, %1388 ]
  %1423 = fadd fast float %1297, %1294
  %1424 = fmul fast float %1401, %1423
  %1425 = fadd fast float %1424, %1404
  %1426 = fadd fast float %1298, %1295
  %1427 = fmul fast float %1402, %1426
  %1428 = fadd fast float %1427, %1405
  %1429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1430 = extractvalue %dx.types.CBufRet.f32 %1429, 0
  br i1 %111, label %1431, label %1452

; <label>:1431                                    ; preds = %1421
  %1432 = fadd fast float %1425, %1428
  %1433 = fmul fast float %1430, %1432
  %1434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1435 = extractvalue %dx.types.CBufRet.f32 %1434, 3
  %1436 = extractvalue %dx.types.CBufRet.f32 %758, 1
  %1437 = fsub fast float %761, %1436
  %1438 = extractvalue %dx.types.CBufRet.f32 %758, 2
  %1439 = fmul fast float %1437, %1438
  %1440 = call float @dx.op.unary.f32(i32 7, float %1439)  ; Saturate(value)
  %1441 = fsub fast float %1440, %1435
  %1442 = fmul fast float %1441, %1422
  %1443 = fadd fast float %1442, %1435
  %1444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1445 = extractvalue %dx.types.CBufRet.f32 %1444, 0
  %1446 = fsub fast float %1443, %1445
  %1447 = fmul fast float %1446, 1.000000e+01
  %1448 = call float @dx.op.unary.f32(i32 7, float %1447)  ; Saturate(value)
  %1449 = fmul fast float %1448, %754
  %1450 = fsub fast float %754, %1449
  %1451 = fmul fast float %1450, %1443
  br label %1464

; <label>:1452                                    ; preds = %1421
  %1453 = fadd fast float %1299, %1296
  %1454 = fmul fast float %1403, %1453
  %1455 = fadd fast float %1454, %1406
  %1456 = fmul fast float %1430, %1425
  %1457 = fmul fast float %1430, %1428
  %1458 = fmul fast float %1430, %1455
  %1459 = call float @dx.op.binary.f32(i32 35, float %1457, float %1458)  ; FMax(a,b)
  %1460 = call float @dx.op.binary.f32(i32 35, float %1456, float %1459)  ; FMax(a,b)
  %1461 = call float @dx.op.binary.f32(i32 35, float %1460, float %754)  ; FMax(a,b)
  %1462 = fcmp fast ugt float %1461, 0x3F10000000000000
  br i1 %1462, label %1464, label %1463

; <label>:1463                                    ; preds = %1452
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1464

; <label>:1464                                    ; preds = %1463, %1452, %1431
  %1465 = phi float [ %1433, %1431 ], [ %1456, %1463 ], [ %1456, %1452 ]
  %1466 = phi float [ %1451, %1431 ], [ %1457, %1463 ], [ %1457, %1452 ]
  %1467 = phi float [ %1450, %1431 ], [ %1458, %1463 ], [ %1458, %1452 ]
  %1468 = phi float [ %1450, %1431 ], [ %754, %1463 ], [ %754, %1452 ]
  %1469 = fadd fast float %563, 0x3FE3C6EF40000000
  %1470 = call float @dx.op.unary.f32(i32 22, float %1469)  ; Frc(value)
  %1471 = call float @dx.op.unary.f32(i32 23, float %1465)  ; Log(value)
  %1472 = fadd fast float %1471, -7.000000e+00
  %1473 = call float @dx.op.unary.f32(i32 21, float %1472)  ; Exp(value)
  %1474 = fmul fast float %1470, 2.000000e+00
  %1475 = fadd fast float %1474, -1.000000e+00
  %1476 = fmul fast float %1473, %1475
  %1477 = fcmp fast ogt float %1465, 0.000000e+00
  %1478 = select i1 %1477, float %1476, float 0.000000e+00
  %1479 = fadd fast float %1478, %1465
  %1480 = fadd fast float %563, 0x3FF3C6EF40000000
  %1481 = call float @dx.op.unary.f32(i32 22, float %1480)  ; Frc(value)
  %1482 = call float @dx.op.unary.f32(i32 23, float %1466)  ; Log(value)
  %1483 = fadd fast float %1482, -7.000000e+00
  %1484 = call float @dx.op.unary.f32(i32 21, float %1483)  ; Exp(value)
  %1485 = fmul fast float %1481, 2.000000e+00
  %1486 = fadd fast float %1485, -1.000000e+00
  %1487 = fmul fast float %1484, %1486
  %1488 = fcmp fast ogt float %1466, 0.000000e+00
  %1489 = select i1 %1488, float %1487, float 0.000000e+00
  %1490 = fadd fast float %1489, %1466
  %1491 = fadd fast float %563, 0x3FFDAA66E0000000
  %1492 = call float @dx.op.unary.f32(i32 22, float %1491)  ; Frc(value)
  %1493 = call float @dx.op.unary.f32(i32 23, float %1467)  ; Log(value)
  %1494 = fadd fast float %1493, -6.000000e+00
  %1495 = call float @dx.op.unary.f32(i32 21, float %1494)  ; Exp(value)
  %1496 = fmul fast float %1492, 2.000000e+00
  %1497 = fadd fast float %1496, -1.000000e+00
  %1498 = fmul fast float %1495, %1497
  %1499 = fcmp fast ogt float %1467, 0.000000e+00
  %1500 = select i1 %1499, float %1498, float 0.000000e+00
  %1501 = fadd fast float %1500, %1467
  %1502 = select i1 %111, float %1466, float %1490
  %1503 = select i1 %111, float %1467, float %1501
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1504 = call float @dx.op.binary.f32(i32 36, float %1479, float 3.225500e+04)  ; FMin(a,b)
  %1505 = call float @dx.op.binary.f32(i32 36, float %1502, float 3.225500e+04)  ; FMin(a,b)
  %1506 = call float @dx.op.binary.f32(i32 36, float %1503, float 3.225500e+04)  ; FMin(a,b)
  %1507 = call float @dx.op.binary.f32(i32 36, float %1468, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1504)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1505)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1506)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1507)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1468)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1468)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1468)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1468)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

