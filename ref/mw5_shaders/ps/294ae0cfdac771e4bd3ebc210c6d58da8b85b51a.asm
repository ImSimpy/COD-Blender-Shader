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
; shader hash: 0b52602033cf62504b869279cc66ae04
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
  %183 = add i32 %24, 112
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
  %638 = add i32 %24, 24
  %639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %638, i32 undef)  ; BufferLoad(srv,index,wot)
  %640 = extractvalue %dx.types.ResRet.i32 %639, 0
  %641 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %637, %dx.types.Handle %49, float %168, float %169, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %642 = extractvalue %dx.types.ResRet.f32 %641, 0
  %643 = extractvalue %dx.types.ResRet.f32 %641, 1
  %644 = extractvalue %dx.types.ResRet.f32 %641, 2
  %645 = extractvalue %dx.types.ResRet.f32 %641, 3
  %646 = and i32 %640, 255
  %647 = uitofp i32 %646 to float
  %648 = lshr i32 %640, 8
  %649 = and i32 %648, 255
  %650 = uitofp i32 %649 to float
  %651 = fmul fast float %645, %647
  %652 = fadd fast float %651, %650
  %653 = fmul fast float %652, 0x3F70101000000000
  %654 = add i32 %24, 56
  %655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %654, i32 undef)  ; BufferLoad(srv,index,wot)
  %656 = extractvalue %dx.types.ResRet.i32 %655, 0
  %657 = and i32 %656, 255
  %658 = uitofp i32 %657 to float
  %659 = fmul fast float %658, 0x3F70101020000000
  %660 = lshr i32 %656, 8
  %661 = and i32 %660, 255
  %662 = uitofp i32 %661 to float
  %663 = fmul fast float %662, 0x3F70101020000000
  %664 = lshr i32 %656, 16
  %665 = and i32 %664, 255
  %666 = uitofp i32 %665 to float
  %667 = fmul fast float %666, 0x3F70101020000000
  %668 = add i32 %24, 108
  %669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %668, i32 undef)  ; BufferLoad(srv,index,wot)
  %670 = extractvalue %dx.types.ResRet.i32 %669, 0
  %671 = add i32 %670, 0
  %672 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %671, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %673 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %672, %dx.types.Handle %49, float %168, float %169, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %674 = extractvalue %dx.types.ResRet.f32 %673, 0
  %675 = extractvalue %dx.types.ResRet.f32 %673, 1
  %676 = extractvalue %dx.types.ResRet.f32 %673, 2
  %677 = add i32 %24, 44
  %678 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %677, i32 undef)  ; BufferLoad(srv,index,wot)
  %679 = extractvalue %dx.types.ResRet.i32 %678, 0
  %680 = shl i32 %679, 4
  %681 = and i32 %680, 32752
  %682 = call float @dx.op.legacyF16ToF32(i32 131, i32 %681)  ; LegacyF16ToF32(value)
  %683 = lshr i32 %679, 7
  %684 = and i32 %683, 32752
  %685 = call float @dx.op.legacyF16ToF32(i32 131, i32 %684)  ; LegacyF16ToF32(value)
  %686 = lshr i32 %679, 22
  %687 = shl nuw nsw i32 %686, 5
  %688 = call float @dx.op.legacyF16ToF32(i32 131, i32 %687)  ; LegacyF16ToF32(value)
  %689 = fmul fast float %682, %674
  %690 = fmul fast float %685, %675
  %691 = fmul fast float %688, %676
  %692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %693 = extractvalue %dx.types.CBufRet.f32 %692, 0
  %694 = fmul fast float %689, %693
  %695 = fmul fast float %690, %693
  %696 = fmul fast float %691, %693
  %697 = add i32 %24, 48
  %698 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %697, i32 undef)  ; BufferLoad(srv,index,wot)
  %699 = extractvalue %dx.types.ResRet.i32 %698, 0
  %700 = lshr i32 %699, 22
  %701 = shl nuw nsw i32 %700, 5
  %702 = call float @dx.op.legacyF16ToF32(i32 131, i32 %701)  ; LegacyF16ToF32(value)
  %703 = fmul fast float %702, %694
  %704 = select i1 %111, float %703, float %694
  %705 = add i32 %24, 40
  %706 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %705, i32 undef)  ; BufferLoad(srv,index,wot)
  %707 = extractvalue %dx.types.ResRet.i32 %706, 0
  %708 = and i32 %707, 255
  %709 = uitofp i32 %708 to float
  %710 = fmul fast float %709, 0x3F70101020000000
  %711 = lshr i32 %707, 8
  %712 = and i32 %711, 255
  %713 = uitofp i32 %712 to float
  %714 = fmul fast float %713, 0x3F70101020000000
  %715 = lshr i32 %707, 16
  %716 = and i32 %715, 255
  %717 = uitofp i32 %716 to float
  %718 = fmul fast float %717, 0x3F70101020000000
  %719 = fmul fast float %710, %710
  %720 = fmul fast float %714, %714
  %721 = fmul fast float %718, %718
  %722 = add i32 %24, 116
  %723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %722, i32 undef)  ; BufferLoad(srv,index,wot)
  %724 = extractvalue %dx.types.ResRet.i32 %723, 0
  %725 = add i32 %724, 0
  %726 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %725, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %727 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %726, %dx.types.Handle %50, float %168, float %169, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %728 = extractvalue %dx.types.ResRet.f32 %727, 0
  %729 = extractvalue %dx.types.ResRet.f32 %727, 1
  %730 = extractvalue %dx.types.ResRet.f32 %727, 2
  %731 = fmul fast float %719, %728
  %732 = fmul fast float %720, %729
  %733 = fmul fast float %721, %730
  %734 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %19, float %33, float %34, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %735 = extractvalue %dx.types.ResRet.f32 %734, 0
  %736 = extractvalue %dx.types.ResRet.f32 %734, 1
  %737 = extractvalue %dx.types.ResRet.f32 %734, 2
  %738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %739 = extractvalue %dx.types.CBufRet.f32 %738, 1
  %740 = fmul fast float %739, %735
  %741 = fmul fast float %739, %736
  %742 = fmul fast float %739, %737
  %743 = fadd fast float %653, 0xBFB99999A0000000
  %744 = call float @dx.op.unary.f32(i32 7, float %743)  ; Saturate(value)
  %745 = fmul fast float %744, 0x3FF1C71C80000000
  %746 = fsub fast float 1.000000e+00, %745
  %747 = call float @dx.op.unary.f32(i32 7, float %746)  ; Saturate(value)
  %748 = fmul fast float %642, %626
  %749 = fmul fast float %659, %659
  %750 = fmul fast float %749, %748
  %751 = fmul fast float %750, %747
  %752 = fmul fast float %643, %627
  %753 = fmul fast float %663, %663
  %754 = fmul fast float %753, %752
  %755 = fmul fast float %754, %747
  %756 = fmul fast float %644, %628
  %757 = fmul fast float %667, %667
  %758 = fmul fast float %757, %756
  %759 = fmul fast float %758, %747
  %760 = call float @dx.op.unary.f32(i32 7, float %751)  ; Saturate(value)
  %761 = call float @dx.op.unary.f32(i32 7, float %755)  ; Saturate(value)
  %762 = call float @dx.op.unary.f32(i32 7, float %759)  ; Saturate(value)
  %763 = fmul fast float %704, %630
  %764 = fmul fast float %695, %631
  %765 = fmul fast float %696, %632
  %766 = call float @dx.op.dot3.f32(i32 55, float %763, float %764, float %765, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %767 = select i1 %111, float 0.000000e+00, float %763
  %768 = select i1 %111, float %766, float %764
  %769 = select i1 %111, float 0.000000e+00, float %765
  %770 = fmul fast float %547, %704
  %771 = fmul fast float %548, %695
  %772 = fmul fast float %549, %696
  %773 = call float @dx.op.dot3.f32(i32 55, float %760, float %761, float %762, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %774 = add i32 %24, 32
  %775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %774, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %786 = and i32 %131, 8192
  %787 = icmp eq i32 %786, 0
  %788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %789 = extractvalue %dx.types.CBufRet.f32 %788, 0
  br i1 %787, label %796, label %790, !dx.controlflow.hints !66

; <label>:790                                     ; preds = %625
  %791 = add i32 %128, 176
  %792 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %791, i32 undef)  ; BufferLoad(srv,index,wot)
  %793 = extractvalue %dx.types.ResRet.f32 %792, 0
  %794 = fcmp fast oge float %793, 0.000000e+00
  %795 = select i1 %794, float %793, float %789
  br label %796

; <label>:796                                     ; preds = %790, %625
  %797 = phi float [ %795, %790 ], [ %789, %625 ]
  %798 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %221, i32 %222, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %799 = extractvalue %dx.types.ResRet.i32 %798, 0
  %800 = lshr i32 %799, 18
  %801 = uitofp i32 %800 to float
  %802 = fmul fast float %801, 0x3F4C00EBA0000000
  %803 = call float @dx.op.unary.f32(i32 21, float %802)  ; Exp(value)
  %804 = fadd fast float %803, -1.000000e+00
  %805 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %10, i32 0)  ; GetDimensions(handle,mipLevel)
  %806 = extractvalue %dx.types.Dimensions %805, 0
  %807 = sitofp i32 %806 to float
  %808 = extractvalue %dx.types.Dimensions %805, 1
  %809 = sitofp i32 %808 to float
  %810 = fcmp fast oge float %219, %807
  %811 = fcmp fast oge float %220, %809
  %812 = or i1 %810, %811
  %813 = select i1 %812, float 0x4197782600000000, float %804
  %814 = icmp eq i32 %127, 3
  %815 = fcmp fast ogt float %48, %813
  %816 = and i1 %245, %815
  %817 = or i1 %814, %816
  %818 = icmp eq i32 %127, 2
  %819 = fcmp fast ole float %48, %813
  %820 = and i1 %818, %819
  %821 = or i1 %820, %817
  %822 = fmul fast float %770, %740
  %823 = fmul fast float %771, %741
  %824 = fmul fast float %772, %742
  %825 = fadd fast float %822, %767
  %826 = fadd fast float %768, %823
  %827 = fadd fast float %824, %769
  %828 = fmul fast float %825, %629
  %829 = fmul fast float %826, %629
  %830 = fmul fast float %827, %629
  %831 = fmul fast float %740, %629
  %832 = fmul fast float %741, %629
  %833 = fmul fast float %742, %629
  %834 = fadd fast float %731, -1.000000e+00
  %835 = fadd fast float %732, -1.000000e+00
  %836 = fadd fast float %733, -1.000000e+00
  %837 = fmul fast float %834, %629
  %838 = fmul fast float %835, %629
  %839 = fmul fast float %836, %629
  %840 = fadd fast float %837, 1.000000e+00
  %841 = fadd fast float %838, 1.000000e+00
  %842 = fadd fast float %839, 1.000000e+00
  %843 = call float @dx.op.dot3.f32(i32 55, float %840, float %841, float %842, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %844 = fsub fast float 1.000000e+00, %843
  %845 = fmul fast float %797, %785
  %846 = fsub fast float 1.000000e+00, %785
  %847 = call float @dx.op.unary.f32(i32 7, float %846)  ; Saturate(value)
  %848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %849 = extractvalue %dx.types.CBufRet.f32 %848, 3
  %850 = fmul fast float %849, %847
  %851 = fadd fast float %850, %845
  %852 = and i32 %131, 1048576
  %853 = icmp eq i32 %852, 0
  br i1 %853, label %945, label %854, !dx.controlflow.hints !67

; <label>:854                                     ; preds = %796
  %855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %856 = extractvalue %dx.types.CBufRet.f32 %855, 2
  %857 = extractvalue %dx.types.CBufRet.f32 %855, 3
  %858 = fmul fast float %856, %53
  %859 = fmul fast float %857, %54
  %860 = call float @dx.op.unary.f32(i32 7, float %858)  ; Saturate(value)
  %861 = call float @dx.op.unary.f32(i32 7, float %859)  ; Saturate(value)
  %862 = select i1 %821, i32 2, i32 0
  %863 = or i32 %862, 1
  %864 = uitofp i32 %863 to float
  %865 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %860, float %861, float %864, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %866 = extractvalue %dx.types.ResRet.f32 %865, 0
  %867 = extractvalue %dx.types.ResRet.f32 %865, 1
  %868 = extractvalue %dx.types.ResRet.f32 %865, 2
  %869 = extractvalue %dx.types.ResRet.f32 %865, 3
  %870 = add nuw nsw i32 %862, 2
  %871 = uitofp i32 %870 to float
  %872 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %860, float %861, float %871, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %873 = extractvalue %dx.types.ResRet.f32 %872, 0
  %874 = extractvalue %dx.types.ResRet.f32 %872, 1
  %875 = extractvalue %dx.types.ResRet.f32 %872, 2
  %876 = extractvalue %dx.types.ResRet.f32 %872, 3
  %877 = call float @dx.op.binary.f32(i32 35, float %867, float %868)  ; FMax(a,b)
  %878 = call float @dx.op.binary.f32(i32 35, float %866, float %877)  ; FMax(a,b)
  %879 = call float @dx.op.binary.f32(i32 35, float %878, float %869)  ; FMax(a,b)
  %880 = call float @dx.op.binary.f32(i32 36, float %874, float %875)  ; FMin(a,b)
  %881 = call float @dx.op.binary.f32(i32 36, float %873, float %880)  ; FMin(a,b)
  %882 = call float @dx.op.binary.f32(i32 36, float %881, float %876)  ; FMin(a,b)
  %883 = fmul fast float %879, 2.550000e+02
  %884 = fadd fast float %883, 0x3F70101020000000
  %885 = fptoui float %884 to i32
  %886 = fmul fast float %882, 2.550000e+02
  %887 = fadd fast float %886, 0x3F70101020000000
  %888 = fptoui float %887 to i32
  %889 = icmp ult i32 %885, %888
  br i1 %889, label %890, label %938

; <label>:890                                     ; preds = %854
  %891 = fcmp fast ogt float %47, 9.843750e-01
  %892 = fadd fast float %48, -4.000000e+00
  %893 = select i1 %891, float -4.000000e+00, float %892
  %894 = call float @dx.op.binary.f32(i32 35, float %893, float 0.000000e+00)  ; FMax(a,b)
  %895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %896 = extractvalue %dx.types.CBufRet.f32 %895, 0
  %897 = fadd fast float %896, %894
  %898 = extractvalue %dx.types.CBufRet.f32 %895, 2
  %899 = fmul fast float %897, %898
  %900 = call float @dx.op.unary.f32(i32 23, float %899)  ; Log(value)
  %901 = extractvalue %dx.types.CBufRet.f32 %895, 3
  %902 = fmul fast float %901, %900
  %903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %904 = extractvalue %dx.types.CBufRet.f32 %903, 2
  %905 = fmul fast float %902, %904
  %906 = call float @dx.op.unary.f32(i32 7, float %905)  ; Saturate(value)
  %907 = uitofp i32 %885 to float
  %908 = uitofp i32 %888 to float
  %909 = fadd fast float %907, 5.000000e-01
  %910 = fadd fast float %908, 5.000000e-01
  %911 = fmul fast float %904, %909
  %912 = fmul fast float %904, %910
  %913 = fadd fast float %911, 0x3F0FFB4800000000
  %914 = fadd fast float %912, 0xBF0FFB4800000000
  %915 = call float @dx.op.binary.f32(i32 35, float %906, float %913)  ; FMax(a,b)
  %916 = call float @dx.op.binary.f32(i32 36, float %915, float %914)  ; FMin(a,b)
  %917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %918 = extractvalue %dx.types.CBufRet.f32 %917, 1
  %919 = extractvalue %dx.types.CBufRet.f32 %917, 2
  %920 = extractvalue %dx.types.CBufRet.f32 %917, 0
  %921 = select i1 %821, float %920, float 0.000000e+00
  %922 = fmul fast float %918, %916
  %923 = fadd fast float %921, %922
  %924 = fadd fast float %921, %919
  %925 = fsub fast float %918, %919
  %926 = fadd fast float %925, %921
  %927 = call float @dx.op.binary.f32(i32 35, float %923, float %924)  ; FMax(a,b)
  %928 = call float @dx.op.binary.f32(i32 36, float %927, float %926)  ; FMin(a,b)
  %929 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %18, float %860, float %861, float %928, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %930 = extractvalue %dx.types.ResRet.f32 %929, 0
  %931 = extractvalue %dx.types.ResRet.f32 %929, 1
  %932 = extractvalue %dx.types.ResRet.f32 %929, 2
  %933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %934 = extractvalue %dx.types.CBufRet.f32 %933, 1
  %935 = fmul fast float %934, %930
  %936 = fmul fast float %934, %931
  %937 = fmul fast float %934, %932
  br label %938

; <label>:938                                     ; preds = %890, %854
  %939 = phi float [ %935, %890 ], [ 1.000000e+00, %854 ]
  %940 = phi float [ %936, %890 ], [ 1.000000e+00, %854 ]
  %941 = phi float [ %937, %890 ], [ 1.000000e+00, %854 ]
  %942 = fmul fast float %939, %828
  %943 = fmul fast float %940, %829
  %944 = fmul fast float %941, %830
  br label %945

; <label>:945                                     ; preds = %938, %796
  %946 = phi float [ %942, %938 ], [ %828, %796 ]
  %947 = phi float [ %943, %938 ], [ %829, %796 ]
  %948 = phi float [ %944, %938 ], [ %830, %796 ]
  %949 = and i32 %131, 2097152
  %950 = icmp eq i32 %949, 0
  br i1 %950, label %955, label %951, !dx.controlflow.hints !68

; <label>:951                                     ; preds = %945
  %952 = add i32 %128, 192
  %953 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %952, i32 undef)  ; BufferLoad(srv,index,wot)
  %954 = extractvalue %dx.types.ResRet.f32 %953, 0
  br label %958

; <label>:955                                     ; preds = %945
  %956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %957 = extractvalue %dx.types.CBufRet.f32 %956, 3
  br label %958

; <label>:958                                     ; preds = %955, %951
  %959 = phi float [ %954, %951 ], [ %957, %955 ]
  %960 = fmul fast float %831, %760
  %961 = fmul fast float %832, %761
  %962 = fmul fast float %833, %762
  br i1 %816, label %963, label %1072

; <label>:963                                     ; preds = %958
  %964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %965 = extractvalue %dx.types.CBufRet.f32 %964, 2
  %966 = extractvalue %dx.types.CBufRet.f32 %964, 3
  %967 = fmul fast float %965, %53
  %968 = fmul fast float %966, %54
  %969 = call float @dx.op.unary.f32(i32 7, float %967)  ; Saturate(value)
  %970 = call float @dx.op.unary.f32(i32 7, float %968)  ; Saturate(value)
  %971 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %969, float %970, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %972 = extractvalue %dx.types.ResRet.f32 %971, 0
  %973 = extractvalue %dx.types.ResRet.f32 %971, 1
  %974 = extractvalue %dx.types.ResRet.f32 %971, 2
  %975 = extractvalue %dx.types.ResRet.f32 %971, 3
  %976 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %969, float %970, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %977 = extractvalue %dx.types.ResRet.f32 %976, 0
  %978 = extractvalue %dx.types.ResRet.f32 %976, 1
  %979 = extractvalue %dx.types.ResRet.f32 %976, 2
  %980 = extractvalue %dx.types.ResRet.f32 %976, 3
  %981 = call float @dx.op.binary.f32(i32 35, float %973, float %974)  ; FMax(a,b)
  %982 = call float @dx.op.binary.f32(i32 35, float %972, float %981)  ; FMax(a,b)
  %983 = call float @dx.op.binary.f32(i32 35, float %982, float %975)  ; FMax(a,b)
  %984 = call float @dx.op.binary.f32(i32 36, float %978, float %979)  ; FMin(a,b)
  %985 = call float @dx.op.binary.f32(i32 36, float %977, float %984)  ; FMin(a,b)
  %986 = call float @dx.op.binary.f32(i32 36, float %985, float %980)  ; FMin(a,b)
  %987 = fmul fast float %983, 2.550000e+02
  %988 = fadd fast float %987, 0x3F70101020000000
  %989 = fptoui float %988 to i32
  %990 = fmul fast float %986, 2.550000e+02
  %991 = fadd fast float %990, 0x3F70101020000000
  %992 = fptoui float %991 to i32
  %993 = icmp ult i32 %989, %992
  br i1 %993, label %994, label %1045

; <label>:994                                     ; preds = %963
  %995 = fcmp fast ogt float %47, 9.843750e-01
  %996 = fadd fast float %48, -4.000000e+00
  %997 = select i1 %995, float -4.000000e+00, float %996
  %998 = call float @dx.op.binary.f32(i32 35, float %997, float 0.000000e+00)  ; FMax(a,b)
  %999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1000 = extractvalue %dx.types.CBufRet.f32 %999, 0
  %1001 = fadd fast float %1000, %998
  %1002 = extractvalue %dx.types.CBufRet.f32 %999, 2
  %1003 = fmul fast float %1001, %1002
  %1004 = call float @dx.op.unary.f32(i32 23, float %1003)  ; Log(value)
  %1005 = extractvalue %dx.types.CBufRet.f32 %999, 3
  %1006 = fmul fast float %1005, %1004
  %1007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1008 = extractvalue %dx.types.CBufRet.f32 %1007, 2
  %1009 = fmul fast float %1006, %1008
  %1010 = call float @dx.op.unary.f32(i32 7, float %1009)  ; Saturate(value)
  %1011 = uitofp i32 %989 to float
  %1012 = uitofp i32 %992 to float
  %1013 = fadd fast float %1011, 5.000000e-01
  %1014 = fadd fast float %1012, 5.000000e-01
  %1015 = fmul fast float %1008, %1013
  %1016 = fmul fast float %1008, %1014
  %1017 = fadd fast float %1015, 0x3F0FFB4800000000
  %1018 = fadd fast float %1016, 0xBF0FFB4800000000
  %1019 = call float @dx.op.binary.f32(i32 35, float %1010, float %1017)  ; FMax(a,b)
  %1020 = call float @dx.op.binary.f32(i32 36, float %1019, float %1018)  ; FMin(a,b)
  %1021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1022 = extractvalue %dx.types.CBufRet.f32 %1021, 1
  %1023 = extractvalue %dx.types.CBufRet.f32 %1021, 2
  %1024 = extractvalue %dx.types.CBufRet.f32 %1021, 0
  %1025 = fmul fast float %1022, %1020
  %1026 = fadd fast float %1024, %1025
  %1027 = fadd fast float %1024, %1023
  %1028 = fsub fast float %1022, %1023
  %1029 = fadd fast float %1028, %1024
  %1030 = call float @dx.op.binary.f32(i32 35, float %1026, float %1027)  ; FMax(a,b)
  %1031 = call float @dx.op.binary.f32(i32 36, float %1030, float %1029)  ; FMin(a,b)
  %1032 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %969, float %970, float %1031, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1033 = extractvalue %dx.types.ResRet.f32 %1032, 0
  %1034 = extractvalue %dx.types.ResRet.f32 %1032, 1
  %1035 = extractvalue %dx.types.ResRet.f32 %1032, 2
  %1036 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %969, float %970, float %1031, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1037 = extractvalue %dx.types.ResRet.f32 %1036, 0
  %1038 = extractvalue %dx.types.ResRet.f32 %1036, 1
  %1039 = extractvalue %dx.types.ResRet.f32 %1036, 2
  %1040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1041 = extractvalue %dx.types.CBufRet.f32 %1040, 1
  %1042 = fmul fast float %1041, %1037
  %1043 = fmul fast float %1041, %1038
  %1044 = fmul fast float %1041, %1039
  br label %1045

; <label>:1045                                    ; preds = %994, %963
  %1046 = phi float [ %1033, %994 ], [ 1.000000e+00, %963 ]
  %1047 = phi float [ %1034, %994 ], [ 1.000000e+00, %963 ]
  %1048 = phi float [ %1035, %994 ], [ 1.000000e+00, %963 ]
  %1049 = phi float [ %1042, %994 ], [ 0.000000e+00, %963 ]
  %1050 = phi float [ %1043, %994 ], [ 0.000000e+00, %963 ]
  %1051 = phi float [ %1044, %994 ], [ 0.000000e+00, %963 ]
  %1052 = fmul fast float %1049, %844
  %1053 = fmul fast float %1050, %844
  %1054 = fmul fast float %1051, %844
  %1055 = call float @dx.op.dot3.f32(i32 55, float %1046, float %1047, float %1048, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1056 = call float @dx.op.dot3.f32(i32 55, float %1052, float %1053, float %1054, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1057 = select i1 %111, float %1055, float %1046
  %1058 = select i1 %111, float %1055, float %1047
  %1059 = select i1 %111, float 1.000000e+00, float %1048
  %1060 = select i1 %111, float %1056, float %1052
  %1061 = select i1 %111, float 0.000000e+00, float %1053
  %1062 = select i1 %111, float 0.000000e+00, float %1054
  %1063 = fmul fast float %1057, %960
  %1064 = fmul fast float %1058, %961
  %1065 = fmul fast float %1059, %962
  %1066 = fadd fast float %1063, %1060
  %1067 = fadd fast float %1064, %1061
  %1068 = fadd fast float %1062, %1065
  %1069 = fmul fast float %1057, %946
  %1070 = fmul fast float %1058, %947
  %1071 = fmul fast float %1059, %948
  br label %1072

; <label>:1072                                    ; preds = %1045, %958
  %1073 = phi float [ %813, %1045 ], [ %48, %958 ]
  %1074 = phi float [ %1066, %1045 ], [ %960, %958 ]
  %1075 = phi float [ %1067, %1045 ], [ %961, %958 ]
  %1076 = phi float [ %1068, %1045 ], [ %962, %958 ]
  %1077 = phi float [ %1069, %1045 ], [ %946, %958 ]
  %1078 = phi float [ %1070, %1045 ], [ %947, %958 ]
  %1079 = phi float [ %1071, %1045 ], [ %948, %958 ]
  %1080 = phi float [ %1046, %1045 ], [ 1.000000e+00, %958 ]
  br i1 %821, label %1382, label %1081

; <label>:1081                                    ; preds = %1072
  %1082 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %19, float %33, float %34, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1083 = extractvalue %dx.types.ResRet.f32 %1082, 0
  %1084 = extractvalue %dx.types.ResRet.f32 %1082, 1
  %1085 = extractvalue %dx.types.ResRet.f32 %1082, 2
  %1086 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %19, float %33, float %34, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1087 = extractvalue %dx.types.ResRet.f32 %1086, 0
  %1088 = extractvalue %dx.types.ResRet.f32 %1086, 1
  %1089 = extractvalue %dx.types.ResRet.f32 %1086, 2
  %1090 = fmul fast float %1083, %844
  %1091 = fmul fast float %1084, %844
  %1092 = fmul fast float %1085, %844
  %1093 = fmul fast float %1087, %1080
  %1094 = call float @dx.op.dot3.f32(i32 55, float %1087, float %1088, float %1089, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1095 = call float @dx.op.dot3.f32(i32 55, float %1090, float %1091, float %1092, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1096 = select i1 %111, float %1094, float %1087
  %1097 = select i1 %111, float %1094, float %1088
  %1098 = select i1 %111, float 1.000000e+00, float %1089
  %1099 = select i1 %111, float %1095, float %1090
  %1100 = select i1 %111, float 0.000000e+00, float %1091
  %1101 = select i1 %111, float 0.000000e+00, float %1092
  %1102 = fmul fast float %1096, %1074
  %1103 = fmul fast float %1097, %1075
  %1104 = fmul fast float %1098, %1076
  %1105 = fadd fast float %1102, %1099
  %1106 = fadd fast float %1103, %1100
  %1107 = fadd fast float %1104, %1101
  %1108 = fmul fast float %1096, %1077
  %1109 = fmul fast float %1097, %1078
  %1110 = fmul fast float %1098, %1079
  %1111 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1112 = extractvalue %dx.types.CBufRet.i32 %1111, 0
  %1113 = icmp eq i32 %1112, 0
  br i1 %1113, label %1382, label %1114, !dx.controlflow.hints !69

; <label>:1114                                    ; preds = %1081
  %1115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1116 = extractvalue %dx.types.CBufRet.f32 %1115, 2
  %1117 = extractvalue %dx.types.CBufRet.f32 %1115, 3
  %1118 = fmul fast float %1116, %53
  %1119 = fmul fast float %1117, %54
  %1120 = fmul fast float %1118, 2.000000e+00
  %1121 = fmul fast float %1119, 2.000000e+00
  %1122 = fsub fast float 1.000000e+00, %1120
  %1123 = fsub fast float 1.000000e+00, %1121
  %1124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1125 = extractvalue %dx.types.CBufRet.f32 %1124, 0
  %1126 = extractvalue %dx.types.CBufRet.f32 %1124, 1
  %1127 = extractvalue %dx.types.CBufRet.f32 %1124, 2
  %1128 = fmul fast float %1122, %1125
  %1129 = fmul fast float %1122, %1126
  %1130 = fmul fast float %1122, %1127
  %1131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1132 = extractvalue %dx.types.CBufRet.f32 %1131, 0
  %1133 = extractvalue %dx.types.CBufRet.f32 %1131, 1
  %1134 = extractvalue %dx.types.CBufRet.f32 %1131, 2
  %1135 = fmul fast float %1123, %1132
  %1136 = fmul fast float %1123, %1133
  %1137 = fmul fast float %1123, %1134
  %1138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1139 = extractvalue %dx.types.CBufRet.f32 %1138, 0
  %1140 = extractvalue %dx.types.CBufRet.f32 %1138, 1
  %1141 = extractvalue %dx.types.CBufRet.f32 %1138, 2
  %1142 = fadd fast float %1135, %1139
  %1143 = fadd fast float %1142, %1128
  %1144 = fadd fast float %1136, %1140
  %1145 = fadd fast float %1144, %1129
  %1146 = fadd fast float %1137, %1141
  %1147 = fadd fast float %1146, %1130
  %1148 = fmul fast float %1143, %1073
  %1149 = fmul fast float %1145, %1073
  %1150 = fmul fast float %1147, %1073
  %1151 = fmul fast float %1148, %1148
  %1152 = fmul fast float %1149, %1149
  %1153 = fadd fast float %1151, %1152
  %1154 = fmul fast float %1150, %1150
  %1155 = fadd fast float %1153, %1154
  %1156 = call float @dx.op.unary.f32(i32 24, float %1155)  ; Sqrt(value)
  %1157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1158 = extractvalue %dx.types.CBufRet.f32 %1157, 0
  %1159 = fsub fast float %1156, %1158
  %1160 = extractvalue %dx.types.CBufRet.f32 %1157, 2
  %1161 = fmul fast float %1159, %1160
  %1162 = call float @dx.op.unary.f32(i32 7, float %1161)  ; Saturate(value)
  %1163 = fadd fast float %1162, -5.000000e-01
  %1164 = fmul fast float %1163, 2.000000e+00
  %1165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1166 = extractvalue %dx.types.CBufRet.f32 %1165, 2
  %1167 = call float @dx.op.binary.f32(i32 36, float %1166, float %1164)  ; FMin(a,b)
  %1168 = fsub fast float -0.000000e+00, %1166
  %1169 = fcmp fast ogt float %1167, %1168
  br i1 %1169, label %1170, label %1382, !dx.controlflow.hints !70

; <label>:1170                                    ; preds = %1114
  %1171 = fmul fast float %1167, 5.000000e-01
  %1172 = fadd fast float %1171, 5.000000e-01
  %1173 = call float @dx.op.unary.f32(i32 22, float %1172)  ; Frc(value)
  %1174 = call float @dx.op.unary.f32(i32 27, float %1173)  ; Round_ni(value)
  %1175 = call float @dx.op.unary.f32(i32 22, float %1173)  ; Frc(value)
  %1176 = fmul fast float %1175, 2.000000e+00
  %1177 = fadd fast float %1176, -1.000000e+00
  %1178 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %19, float %1118, float %1119, float %1174, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1179 = extractvalue %dx.types.ResRet.f32 %1178, 0
  %1180 = extractvalue %dx.types.ResRet.f32 %1178, 1
  %1181 = extractvalue %dx.types.ResRet.f32 %1178, 2
  %1182 = extractvalue %dx.types.ResRet.f32 %1178, 3
  %1183 = fadd fast float %1179, -5.000000e-01
  %1184 = fadd fast float %1181, -5.000000e-01
  %1185 = fmul fast float %1183, 0xBFD5555560000000
  %1186 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1184, float %1185)  ; FMad(a,b,c)
  %1187 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1180, float 0.000000e+00)  ; FMad(a,b,c)
  %1188 = fadd fast float %1187, %1182
  %1189 = fmul fast float %1183, -7.500000e-01
  %1190 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1184, float %1189)  ; FMad(a,b,c)
  %1191 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1180, float 0.000000e+00)  ; FMad(a,b,c)
  %1192 = fadd fast float %1191, %1182
  %1193 = call float @dx.op.binary.f32(i32 35, float %1186, float -1.000000e+00)  ; FMax(a,b)
  %1194 = call float @dx.op.binary.f32(i32 35, float %1188, float -1.000000e+00)  ; FMax(a,b)
  %1195 = call float @dx.op.binary.f32(i32 35, float %1190, float -1.000000e+00)  ; FMax(a,b)
  %1196 = call float @dx.op.binary.f32(i32 35, float %1192, float -1.000000e+00)  ; FMax(a,b)
  %1197 = call float @dx.op.binary.f32(i32 36, float %1193, float 1.000000e+00)  ; FMin(a,b)
  %1198 = call float @dx.op.binary.f32(i32 36, float %1194, float 1.000000e+00)  ; FMin(a,b)
  %1199 = call float @dx.op.binary.f32(i32 36, float %1195, float 1.000000e+00)  ; FMin(a,b)
  %1200 = call float @dx.op.binary.f32(i32 36, float %1196, float 1.000000e+00)  ; FMin(a,b)
  %1201 = fcmp fast olt float %1197, 0x3FEFFF8020000000
  br i1 %1201, label %1202, label %1317, !dx.controlflow.hints !71

; <label>:1202                                    ; preds = %1170
  %1203 = extractvalue %dx.types.CBufRet.f32 %1165, 3
  %1204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1205 = extractvalue %dx.types.CBufRet.f32 %1204, 0
  %1206 = extractvalue %dx.types.CBufRet.f32 %1204, 1
  %1207 = extractvalue %dx.types.CBufRet.f32 %1204, 2
  %1208 = extractvalue %dx.types.CBufRet.f32 %1204, 3
  %1209 = fsub fast float %1205, %1197
  %1210 = fsub fast float %1206, %1198
  %1211 = fsub fast float %1207, %1199
  %1212 = fsub fast float %1208, %1200
  %1213 = fmul fast float %1209, %1203
  %1214 = fmul fast float %1210, %1203
  %1215 = fmul fast float %1211, %1203
  %1216 = fmul fast float %1212, %1203
  %1217 = fadd fast float %1213, %1197
  %1218 = fadd fast float %1214, %1198
  %1219 = fsub fast float -0.000000e+00, %1218
  %1220 = fadd fast float %1215, %1199
  %1221 = fadd fast float %1216, %1200
  %1222 = fmul fast float %1217, %1217
  %1223 = fsub fast float %1218, %1222
  %1224 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1223)  ; FMax(a,b)
  %1225 = fdiv fast float 1.000000e+00, %1224
  %1226 = fmul fast float %1218, %1217
  %1227 = fsub fast float %1220, %1226
  %1228 = fsub fast float %1177, %1217
  %1229 = fmul fast float %1177, %1177
  %1230 = fsub fast float %1229, %1218
  %1231 = fmul fast float %1228, %1225
  %1232 = fmul fast float %1231, %1227
  %1233 = fsub fast float %1230, %1232
  %1234 = fmul fast float %1218, %1218
  %1235 = fsub fast float %1221, %1234
  %1236 = fmul fast float %1227, %1227
  %1237 = fmul fast float %1236, %1225
  %1238 = fsub fast float %1235, %1237
  %1239 = fdiv fast float %1233, %1238
  %1240 = fmul fast float %1227, %1239
  %1241 = fsub fast float %1228, %1240
  %1242 = fmul fast float %1241, %1225
  %1243 = fmul fast float %1242, %1217
  %1244 = fsub fast float 1.000000e+00, %1243
  %1245 = fmul fast float %1218, %1239
  %1246 = fsub fast float %1244, %1245
  %1247 = fmul fast float %1242, %1242
  %1248 = fmul fast float %1239, 4.000000e+00
  %1249 = fmul fast float %1248, %1246
  %1250 = fsub fast float %1247, %1249
  %1251 = call float @dx.op.unary.f32(i32 24, float %1250)  ; Sqrt(value)
  %1252 = fcmp fast oge float %1242, 0.000000e+00
  %1253 = fsub fast float -0.000000e+00, %1251
  %1254 = select i1 %1252, float %1253, float %1251
  %1255 = fsub fast float %1254, %1242
  %1256 = fdiv fast float %1255, %1239
  %1257 = fdiv fast float %1246, %1255
  %1258 = fmul fast float %1256, 5.000000e-01
  %1259 = fmul fast float %1257, 2.000000e+00
  %1260 = select i1 %1252, float %1258, float %1259
  %1261 = select i1 %1252, float %1259, float %1258
  %1262 = call float @dx.op.binary.f32(i32 35, float %1260, float %1261)  ; FMax(a,b)
  %1263 = call float @dx.op.binary.f32(i32 36, float %1260, float %1261)  ; FMin(a,b)
  %1264 = fcmp fast ogt float %1177, %1263
  br i1 %1264, label %1265, label %1275

; <label>:1265                                    ; preds = %1202
  %1266 = fsub fast float %1177, %1263
  %1267 = fsub fast float %1262, %1263
  %1268 = fmul fast float %1266, %1267
  %1269 = fmul fast float %1262, %1177
  %1270 = fadd fast float %1262, %1177
  %1271 = fmul fast float %1270, %1217
  %1272 = fadd fast float %1269, %1218
  %1273 = fsub fast float %1272, %1271
  %1274 = fdiv fast float %1273, %1268
  br label %1275

; <label>:1275                                    ; preds = %1265, %1202
  %1276 = phi float [ %1274, %1265 ], [ 0.000000e+00, %1202 ]
  %1277 = fcmp fast ogt float %1177, %1262
  %1278 = fsub fast float %1177, %1262
  br i1 %1277, label %1279, label %1289

; <label>:1279                                    ; preds = %1275
  %1280 = fsub fast float %1262, %1263
  %1281 = fmul fast float %1280, %1278
  %1282 = fmul fast float %1263, %1177
  %1283 = fadd fast float %1263, %1177
  %1284 = fmul fast float %1283, %1217
  %1285 = fsub fast float %1219, %1282
  %1286 = fadd fast float %1285, %1284
  %1287 = fdiv fast float %1286, %1281
  %1288 = fadd fast float %1287, %1276
  br label %1289

; <label>:1289                                    ; preds = %1279, %1275
  %1290 = phi float [ %1288, %1279 ], [ %1276, %1275 ]
  %1291 = fsub fast float %1177, %1263
  %1292 = fmul fast float %1291, %1278
  %1293 = fmul fast float %1263, %1262
  %1294 = fadd fast float %1263, %1262
  %1295 = fmul fast float %1294, %1217
  %1296 = fadd fast float %1293, %1218
  %1297 = fsub fast float %1296, %1295
  %1298 = fdiv fast float %1297, %1292
  %1299 = call float @dx.op.unary.f32(i32 7, float %1290)  ; Saturate(value)
  %1300 = fcmp fast oeq float %959, 0.000000e+00
  %1301 = extractvalue %dx.types.CBufRet.f32 %1165, 0
  %1302 = fcmp fast oeq float %1301, 0.000000e+00
  %1303 = or i1 %1300, %1302
  %1304 = fmul fast float %1301, 2.000000e+00
  %1305 = fadd fast float %1166, %1167
  %1306 = fdiv fast float %1305, %1304
  %1307 = call float @dx.op.unary.f32(i32 7, float %1306)  ; Saturate(value)
  %1308 = fmul fast float %1307, 2.000000e+00
  %1309 = fsub fast float 3.000000e+00, %1308
  %1310 = fmul fast float %1307, %1307
  %1311 = fmul fast float %1310, %1309
  %1312 = select i1 %1303, float 1.000000e+00, float %1311
  %1313 = fmul fast float %1298, %959
  %1314 = fadd fast float %1299, %1313
  %1315 = call float @dx.op.unary.f32(i32 7, float %1314)  ; Saturate(value)
  %1316 = fmul fast float %1312, %1315
  br label %1317

; <label>:1317                                    ; preds = %1289, %1170
  %1318 = phi float [ %1316, %1289 ], [ 0.000000e+00, %1170 ]
  %1319 = fsub fast float 1.000000e+00, %1318
  %1320 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %19, float %1118, float %1119, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1321 = extractvalue %dx.types.ResRet.f32 %1320, 0
  %1322 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1323 = extractvalue %dx.types.CBufRet.i32 %1322, 2
  %1324 = icmp eq i32 %1323, 0
  br i1 %1324, label %1330, label %1325

; <label>:1325                                    ; preds = %1317
  %1326 = call float @dx.op.unary.f32(i32 7, float %1318)  ; Saturate(value)
  %1327 = fadd fast float %1321, -1.000000e+00
  %1328 = fmul fast float %1326, %1327
  %1329 = fadd fast float %1328, 1.000000e+00
  br label %1330

; <label>:1330                                    ; preds = %1325, %1317
  %1331 = phi float [ %1329, %1325 ], [ %1319, %1317 ]
  %1332 = call float @dx.op.binary.f32(i32 35, float %1321, float %1331)  ; FMax(a,b)
  %1333 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %1334 = extractvalue %dx.types.CBufRet.i32 %1333, 2
  %1335 = and i32 %1334, 1
  %1336 = icmp eq i32 %1335, 0
  %1337 = fcmp fast une float %1332, 1.000000e+00
  %1338 = and i1 %1337, %1336
  br i1 %1338, label %1339, label %1358

; <label>:1339                                    ; preds = %1330
  %1340 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %19, float %1118, float %1119, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1341 = extractvalue %dx.types.ResRet.f32 %1340, 0
  %1342 = extractvalue %dx.types.ResRet.f32 %1340, 1
  %1343 = extractvalue %dx.types.ResRet.f32 %1340, 2
  %1344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1345 = extractvalue %dx.types.CBufRet.f32 %1344, 1
  %1346 = fmul fast float %1345, %1341
  %1347 = fmul fast float %1345, %1342
  %1348 = fmul fast float %1345, %1343
  %1349 = fcmp fast ogt float %1321, 0x3FEFFF2E40000000
  %1350 = fsub fast float 1.000000e+00, %1332
  %1351 = fsub fast float 1.000000e+00, %1321
  %1352 = fdiv fast float %1350, %1351
  %1353 = call float @dx.op.unary.f32(i32 7, float %1352)  ; Saturate(value)
  %1354 = select i1 %1349, float 0.000000e+00, float %1353
  %1355 = fmul fast float %1346, %1354
  %1356 = fmul fast float %1347, %1354
  %1357 = fmul fast float %1348, %1354
  br label %1358

; <label>:1358                                    ; preds = %1339, %1330
  %1359 = phi float [ 0.000000e+00, %1330 ], [ %1355, %1339 ]
  %1360 = phi float [ 0.000000e+00, %1330 ], [ %1356, %1339 ]
  %1361 = phi float [ 0.000000e+00, %1330 ], [ %1357, %1339 ]
  %1362 = fmul fast float %1359, %844
  %1363 = fmul fast float %1360, %844
  %1364 = fmul fast float %1361, %844
  %1365 = fmul fast float %1332, %1093
  %1366 = call float @dx.op.dot3.f32(i32 55, float %1332, float %1332, float %1332, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1367 = call float @dx.op.dot3.f32(i32 55, float %1362, float %1363, float %1364, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1368 = select i1 %111, float %1366, float %1332
  %1369 = select i1 %111, float 1.000000e+00, float %1332
  %1370 = select i1 %111, float %1367, float %1362
  %1371 = select i1 %111, float 0.000000e+00, float %1363
  %1372 = select i1 %111, float 0.000000e+00, float %1364
  %1373 = fmul fast float %1368, %1105
  %1374 = fmul fast float %1368, %1106
  %1375 = fmul fast float %1369, %1107
  %1376 = fadd fast float %1373, %1370
  %1377 = fadd fast float %1374, %1371
  %1378 = fadd fast float %1372, %1375
  %1379 = fmul fast float %1368, %1108
  %1380 = fmul fast float %1368, %1109
  %1381 = fmul fast float %1369, %1110
  br label %1382

; <label>:1382                                    ; preds = %1358, %1114, %1081, %1072
  %1383 = phi float [ %1074, %1072 ], [ %1105, %1081 ], [ %1376, %1358 ], [ %1105, %1114 ]
  %1384 = phi float [ %1075, %1072 ], [ %1106, %1081 ], [ %1377, %1358 ], [ %1106, %1114 ]
  %1385 = phi float [ %1076, %1072 ], [ %1107, %1081 ], [ %1378, %1358 ], [ %1107, %1114 ]
  %1386 = phi float [ %1077, %1072 ], [ %1108, %1081 ], [ %1379, %1358 ], [ %1108, %1114 ]
  %1387 = phi float [ %1078, %1072 ], [ %1109, %1081 ], [ %1380, %1358 ], [ %1109, %1114 ]
  %1388 = phi float [ %1079, %1072 ], [ %1110, %1081 ], [ %1381, %1358 ], [ %1110, %1114 ]
  %1389 = phi float [ %1080, %1072 ], [ %1093, %1081 ], [ %1365, %1358 ], [ %1093, %1114 ]
  %1390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1391 = extractvalue %dx.types.CBufRet.f32 %1390, 2
  %1392 = extractvalue %dx.types.CBufRet.f32 %1390, 3
  %1393 = fmul fast float %1391, %53
  %1394 = fmul fast float %1392, %54
  %1395 = call float @dx.op.unary.f32(i32 7, float %1393)  ; Saturate(value)
  %1396 = call float @dx.op.unary.f32(i32 7, float %1394)  ; Saturate(value)
  %1397 = select i1 %821, i32 2, i32 0
  %1398 = or i32 %1397, 1
  %1399 = uitofp i32 %1398 to float
  %1400 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %1395, float %1396, float %1399, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1401 = extractvalue %dx.types.ResRet.f32 %1400, 0
  %1402 = extractvalue %dx.types.ResRet.f32 %1400, 1
  %1403 = extractvalue %dx.types.ResRet.f32 %1400, 2
  %1404 = extractvalue %dx.types.ResRet.f32 %1400, 3
  %1405 = add nuw nsw i32 %1397, 2
  %1406 = uitofp i32 %1405 to float
  %1407 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %1395, float %1396, float %1406, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1408 = extractvalue %dx.types.ResRet.f32 %1407, 0
  %1409 = extractvalue %dx.types.ResRet.f32 %1407, 1
  %1410 = extractvalue %dx.types.ResRet.f32 %1407, 2
  %1411 = extractvalue %dx.types.ResRet.f32 %1407, 3
  %1412 = call float @dx.op.binary.f32(i32 35, float %1402, float %1403)  ; FMax(a,b)
  %1413 = call float @dx.op.binary.f32(i32 35, float %1401, float %1412)  ; FMax(a,b)
  %1414 = call float @dx.op.binary.f32(i32 35, float %1413, float %1404)  ; FMax(a,b)
  %1415 = call float @dx.op.binary.f32(i32 36, float %1409, float %1410)  ; FMin(a,b)
  %1416 = call float @dx.op.binary.f32(i32 36, float %1408, float %1415)  ; FMin(a,b)
  %1417 = call float @dx.op.binary.f32(i32 36, float %1416, float %1411)  ; FMin(a,b)
  %1418 = fmul fast float %1414, 2.550000e+02
  %1419 = fadd fast float %1418, 0x3F70101020000000
  %1420 = fptoui float %1419 to i32
  %1421 = fmul fast float %1417, 2.550000e+02
  %1422 = fadd fast float %1421, 0x3F70101020000000
  %1423 = fptoui float %1422 to i32
  %1424 = icmp ult i32 %1420, %1423
  br i1 %1424, label %1425, label %1477

; <label>:1425                                    ; preds = %1382
  %1426 = fcmp fast ogt float %47, 9.843750e-01
  %1427 = fadd fast float %1073, -4.000000e+00
  %1428 = select i1 %1426, float -4.000000e+00, float %1427
  %1429 = call float @dx.op.binary.f32(i32 35, float %1428, float 0.000000e+00)  ; FMax(a,b)
  %1430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1431 = extractvalue %dx.types.CBufRet.f32 %1430, 0
  %1432 = fadd fast float %1431, %1429
  %1433 = extractvalue %dx.types.CBufRet.f32 %1430, 2
  %1434 = fmul fast float %1432, %1433
  %1435 = call float @dx.op.unary.f32(i32 23, float %1434)  ; Log(value)
  %1436 = extractvalue %dx.types.CBufRet.f32 %1430, 3
  %1437 = fmul fast float %1436, %1435
  %1438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1439 = extractvalue %dx.types.CBufRet.f32 %1438, 2
  %1440 = fmul fast float %1437, %1439
  %1441 = call float @dx.op.unary.f32(i32 7, float %1440)  ; Saturate(value)
  %1442 = uitofp i32 %1420 to float
  %1443 = uitofp i32 %1423 to float
  %1444 = fadd fast float %1442, 5.000000e-01
  %1445 = fadd fast float %1443, 5.000000e-01
  %1446 = fmul fast float %1439, %1444
  %1447 = fmul fast float %1439, %1445
  %1448 = fadd fast float %1446, 0x3F0FFB4800000000
  %1449 = fadd fast float %1447, 0xBF0FFB4800000000
  %1450 = call float @dx.op.binary.f32(i32 35, float %1441, float %1448)  ; FMax(a,b)
  %1451 = call float @dx.op.binary.f32(i32 36, float %1450, float %1449)  ; FMin(a,b)
  %1452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1453 = extractvalue %dx.types.CBufRet.f32 %1452, 1
  %1454 = extractvalue %dx.types.CBufRet.f32 %1452, 2
  %1455 = extractvalue %dx.types.CBufRet.f32 %1452, 0
  %1456 = select i1 %821, float %1455, float 0.000000e+00
  %1457 = fmul fast float %1453, %1451
  %1458 = fadd fast float %1456, %1457
  %1459 = fadd fast float %1456, %1454
  %1460 = fsub fast float %1453, %1454
  %1461 = fadd fast float %1460, %1456
  %1462 = call float @dx.op.binary.f32(i32 35, float %1458, float %1459)  ; FMax(a,b)
  %1463 = call float @dx.op.binary.f32(i32 36, float %1462, float %1461)  ; FMin(a,b)
  %1464 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %1395, float %1396, float %1463, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1465 = extractvalue %dx.types.ResRet.f32 %1464, 0
  %1466 = extractvalue %dx.types.ResRet.f32 %1464, 1
  %1467 = extractvalue %dx.types.ResRet.f32 %1464, 2
  %1468 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %1395, float %1396, float %1463, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1469 = extractvalue %dx.types.ResRet.f32 %1468, 0
  %1470 = extractvalue %dx.types.ResRet.f32 %1468, 1
  %1471 = extractvalue %dx.types.ResRet.f32 %1468, 2
  %1472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1473 = extractvalue %dx.types.CBufRet.f32 %1472, 1
  %1474 = fmul fast float %1473, %1469
  %1475 = fmul fast float %1473, %1470
  %1476 = fmul fast float %1473, %1471
  br label %1477

; <label>:1477                                    ; preds = %1425, %1382
  %1478 = phi float [ %1465, %1425 ], [ 1.000000e+00, %1382 ]
  %1479 = phi float [ %1466, %1425 ], [ 1.000000e+00, %1382 ]
  %1480 = phi float [ %1467, %1425 ], [ 1.000000e+00, %1382 ]
  %1481 = phi float [ %1474, %1425 ], [ 0.000000e+00, %1382 ]
  %1482 = phi float [ %1475, %1425 ], [ 0.000000e+00, %1382 ]
  %1483 = phi float [ %1476, %1425 ], [ 0.000000e+00, %1382 ]
  %1484 = fmul fast float %1481, %844
  %1485 = fmul fast float %1482, %844
  %1486 = fmul fast float %1483, %844
  %1487 = fmul fast float %1478, %1389
  %1488 = call float @dx.op.dot3.f32(i32 55, float %1478, float %1479, float %1480, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1489 = call float @dx.op.dot3.f32(i32 55, float %1484, float %1485, float %1486, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1490 = select i1 %111, float %1488, float %1478
  %1491 = select i1 %111, float %1488, float %1479
  %1492 = select i1 %111, float 1.000000e+00, float %1480
  %1493 = select i1 %111, float %1489, float %1484
  %1494 = select i1 %111, float 0.000000e+00, float %1485
  %1495 = select i1 %111, float 0.000000e+00, float %1486
  %1496 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1497 = extractvalue %dx.types.CBufRet.i32 %1496, 3
  %1498 = and i32 %1497, 3
  %1499 = icmp ne i32 %1498, 0
  %1500 = and i32 %1497, 4
  %1501 = icmp ne i32 %1500, 0
  %1502 = and i1 %1499, %1501
  %1503 = and i1 %111, %1502
  br i1 %1503, label %1504, label %1510

; <label>:1504                                    ; preds = %1477
  %1505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1506 = extractvalue %dx.types.CBufRet.f32 %1505, 1
  %1507 = fadd fast float %1487, -1.000000e+00
  %1508 = fmul fast float %1506, %1507
  %1509 = fadd fast float %1508, 1.000000e+00
  br label %1510

; <label>:1510                                    ; preds = %1504, %1477
  %1511 = phi float [ %1509, %1504 ], [ %1487, %1477 ]
  %1512 = fadd fast float %1386, %1383
  %1513 = fmul fast float %1490, %1512
  %1514 = fadd fast float %1513, %1493
  %1515 = fadd fast float %1387, %1384
  %1516 = fmul fast float %1491, %1515
  %1517 = fadd fast float %1516, %1494
  %1518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1519 = extractvalue %dx.types.CBufRet.f32 %1518, 0
  br i1 %111, label %1520, label %1541

; <label>:1520                                    ; preds = %1510
  %1521 = fadd fast float %1514, %1517
  %1522 = fmul fast float %1519, %1521
  %1523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1524 = extractvalue %dx.types.CBufRet.f32 %1523, 3
  %1525 = extractvalue %dx.types.CBufRet.f32 %848, 1
  %1526 = fsub fast float %851, %1525
  %1527 = extractvalue %dx.types.CBufRet.f32 %848, 2
  %1528 = fmul fast float %1526, %1527
  %1529 = call float @dx.op.unary.f32(i32 7, float %1528)  ; Saturate(value)
  %1530 = fsub fast float %1529, %1524
  %1531 = fmul fast float %1530, %1511
  %1532 = fadd fast float %1531, %1524
  %1533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1534 = extractvalue %dx.types.CBufRet.f32 %1533, 0
  %1535 = fsub fast float %1532, %1534
  %1536 = fmul fast float %1535, 1.000000e+01
  %1537 = call float @dx.op.unary.f32(i32 7, float %1536)  ; Saturate(value)
  %1538 = fmul fast float %1537, %844
  %1539 = fsub fast float %844, %1538
  %1540 = fmul fast float %1539, %1532
  br label %1553

; <label>:1541                                    ; preds = %1510
  %1542 = fadd fast float %1388, %1385
  %1543 = fmul fast float %1492, %1542
  %1544 = fadd fast float %1543, %1495
  %1545 = fmul fast float %1519, %1514
  %1546 = fmul fast float %1519, %1517
  %1547 = fmul fast float %1519, %1544
  %1548 = call float @dx.op.binary.f32(i32 35, float %1546, float %1547)  ; FMax(a,b)
  %1549 = call float @dx.op.binary.f32(i32 35, float %1545, float %1548)  ; FMax(a,b)
  %1550 = call float @dx.op.binary.f32(i32 35, float %1549, float %844)  ; FMax(a,b)
  %1551 = fcmp fast ugt float %1550, 0x3F10000000000000
  br i1 %1551, label %1553, label %1552

; <label>:1552                                    ; preds = %1541
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1553

; <label>:1553                                    ; preds = %1552, %1541, %1520
  %1554 = phi float [ %1522, %1520 ], [ %1545, %1552 ], [ %1545, %1541 ]
  %1555 = phi float [ %1540, %1520 ], [ %1546, %1552 ], [ %1546, %1541 ]
  %1556 = phi float [ %1539, %1520 ], [ %1547, %1552 ], [ %1547, %1541 ]
  %1557 = phi float [ %1539, %1520 ], [ %844, %1552 ], [ %844, %1541 ]
  %1558 = fadd fast float %563, 0x3FE3C6EF40000000
  %1559 = call float @dx.op.unary.f32(i32 22, float %1558)  ; Frc(value)
  %1560 = call float @dx.op.unary.f32(i32 23, float %1554)  ; Log(value)
  %1561 = fadd fast float %1560, -7.000000e+00
  %1562 = call float @dx.op.unary.f32(i32 21, float %1561)  ; Exp(value)
  %1563 = fmul fast float %1559, 2.000000e+00
  %1564 = fadd fast float %1563, -1.000000e+00
  %1565 = fmul fast float %1562, %1564
  %1566 = fcmp fast ogt float %1554, 0.000000e+00
  %1567 = select i1 %1566, float %1565, float 0.000000e+00
  %1568 = fadd fast float %1567, %1554
  %1569 = fadd fast float %563, 0x3FF3C6EF40000000
  %1570 = call float @dx.op.unary.f32(i32 22, float %1569)  ; Frc(value)
  %1571 = call float @dx.op.unary.f32(i32 23, float %1555)  ; Log(value)
  %1572 = fadd fast float %1571, -7.000000e+00
  %1573 = call float @dx.op.unary.f32(i32 21, float %1572)  ; Exp(value)
  %1574 = fmul fast float %1570, 2.000000e+00
  %1575 = fadd fast float %1574, -1.000000e+00
  %1576 = fmul fast float %1573, %1575
  %1577 = fcmp fast ogt float %1555, 0.000000e+00
  %1578 = select i1 %1577, float %1576, float 0.000000e+00
  %1579 = fadd fast float %1578, %1555
  %1580 = fadd fast float %563, 0x3FFDAA66E0000000
  %1581 = call float @dx.op.unary.f32(i32 22, float %1580)  ; Frc(value)
  %1582 = call float @dx.op.unary.f32(i32 23, float %1556)  ; Log(value)
  %1583 = fadd fast float %1582, -6.000000e+00
  %1584 = call float @dx.op.unary.f32(i32 21, float %1583)  ; Exp(value)
  %1585 = fmul fast float %1581, 2.000000e+00
  %1586 = fadd fast float %1585, -1.000000e+00
  %1587 = fmul fast float %1584, %1586
  %1588 = fcmp fast ogt float %1556, 0.000000e+00
  %1589 = select i1 %1588, float %1587, float 0.000000e+00
  %1590 = fadd fast float %1589, %1556
  %1591 = select i1 %111, float %1555, float %1579
  %1592 = select i1 %111, float %1556, float %1590
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1593 = call float @dx.op.binary.f32(i32 36, float %1568, float 3.225500e+04)  ; FMin(a,b)
  %1594 = call float @dx.op.binary.f32(i32 36, float %1591, float 3.225500e+04)  ; FMin(a,b)
  %1595 = call float @dx.op.binary.f32(i32 36, float %1592, float 3.225500e+04)  ; FMin(a,b)
  %1596 = call float @dx.op.binary.f32(i32 36, float %1557, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1593)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1594)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1595)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1596)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1557)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1557)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1557)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1557)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

