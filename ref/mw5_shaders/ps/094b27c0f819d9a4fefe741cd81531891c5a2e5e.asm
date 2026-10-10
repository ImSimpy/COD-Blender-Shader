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
; COLOR                    3   xyz         6     NONE    uint   x   
; COLOR                    4      w        6     NONE    uint       
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
; shader hash: 573d08d311499b545f7720198e4c07aa
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
; COLOR                    3        nointerpolation       
; COLOR                    4        nointerpolation       
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
;                                   texture    byte         r/o      T2             t0     1
;                                   texture     f32          2d      T3     t77,space2     1
;                                   texture     f32          2d      T4     t69,space2     1
;                                   texture     f32          2d      T5             t1     1
;                                   texture     f32          2d      T6     t57,space2     1
;                                   texture    byte         r/o      T7     t69,space1     1
;                                   texture     u32          2d      T8     t56,space2     1
;                                   texture     f32          3d      T9     t44,space2     1
;                                   texture     f32          3d     T10     t45,space2     1
;                                   texture     f32     2darray     T11     t47,space2     1
;                                   textureunorm_f32     2darray     T12     t85,space2     1
;                                   texture     f32          2d     T13     t83,space2     1
;                                   texture     f32          2d     T14     t86,space2     1
;                                   texture     f32     2darray     T15             t2     1
;                                   texture    byte         r/o     T16             t3     1
;                                   texture     f32          3d     T17     t46,space2     1
;
;
; ViewId state:
;
; Number of inputs: 28, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 7, 8, 9, 12, 13, 14, 15, 16, 17, 20, 21, 22, 23, 24 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 20, 21, 22, 23, 24 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 22, 23, 24 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 24 }
;   output 4 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 24 }
;   output 5 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 24 }
;   output 6 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 24 }
;   output 7 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 24 }
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
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 77, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %47 = extractvalue %dx.types.CBufRet.f32 %46, 0
  %48 = fmul fast float %47, %40
  %49 = fmul fast float %47, %41
  %50 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %51 = extractvalue %dx.types.CBufRet.f32 %50, 2
  %52 = extractvalue %dx.types.CBufRet.f32 %50, 3
  %53 = fmul fast float %48, 2.000000e+00
  %54 = fmul fast float %53, %51
  %55 = fmul fast float %49, 2.000000e+00
  %56 = fmul fast float %55, %52
  %57 = fsub fast float 1.000000e+00, %54
  %58 = fsub fast float 1.000000e+00, %56
  %59 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %60 = extractvalue %dx.types.CBufRet.f32 %59, 0
  %61 = extractvalue %dx.types.CBufRet.f32 %59, 1
  %62 = extractvalue %dx.types.CBufRet.f32 %59, 2
  %63 = fmul fast float %57, %60
  %64 = fmul fast float %57, %61
  %65 = fmul fast float %57, %62
  %66 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %67 = extractvalue %dx.types.CBufRet.f32 %66, 0
  %68 = extractvalue %dx.types.CBufRet.f32 %66, 1
  %69 = extractvalue %dx.types.CBufRet.f32 %66, 2
  %70 = fmul fast float %58, %67
  %71 = fmul fast float %58, %68
  %72 = fmul fast float %58, %69
  %73 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %74 = extractvalue %dx.types.CBufRet.f32 %73, 0
  %75 = extractvalue %dx.types.CBufRet.f32 %73, 1
  %76 = extractvalue %dx.types.CBufRet.f32 %73, 2
  %77 = fadd fast float %70, %74
  %78 = fadd fast float %77, %63
  %79 = fadd fast float %71, %75
  %80 = fadd fast float %79, %64
  %81 = fadd fast float %72, %76
  %82 = fadd fast float %81, %65
  %83 = fmul fast float %78, %43
  %84 = fmul fast float %80, %43
  %85 = fmul fast float %82, %43
  %86 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %87 = extractvalue %dx.types.CBufRet.i32 %86, 3
  %88 = and i32 %87, 3
  %89 = icmp ne i32 %88, 0
  %90 = and i32 %87, 4
  %91 = icmp ne i32 %90, 0
  %92 = and i1 %89, %91
  br i1 %92, label %93, label %102

; <label>:93                                      ; preds = %0
  %94 = fmul fast float %52, %49
  %95 = fmul fast float %51, %48
  %96 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %19, float %95, float %94, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %97 = extractvalue %dx.types.ResRet.f32 %96, 0
  %98 = fsub fast float 1.000000e+00, %97
  %99 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %100 = extractvalue %dx.types.CBufRet.f32 %99, 0
  %101 = fcmp fast olt float %98, %100
  br label %105

; <label>:102                                     ; preds = %0
  %103 = icmp eq i32 %90, 0
  %104 = and i1 %89, %103
  br label %105

; <label>:105                                     ; preds = %102, %93
  %106 = phi i1 [ %101, %93 ], [ %104, %102 ]
  %107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %108 = extractvalue %dx.types.CBufRet.f32 %107, 2
  %109 = extractvalue %dx.types.CBufRet.f32 %107, 3
  %110 = fmul fast float %108, %48
  %111 = fmul fast float %109, %49
  %112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %113 = extractvalue %dx.types.ResRet.i32 %112, 0
  %114 = and i32 %113, 114688
  %115 = icmp ne i32 %114, 0
  %116 = select i1 %115, float %110, float 0.000000e+00
  %117 = select i1 %115, float %111, float 0.000000e+00
  %118 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %20, float %116, float %117, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %119 = extractvalue %dx.types.ResRet.f32 %118, 0
  %120 = fmul fast float %119, 2.550000e+02
  %121 = fptoui float %120 to i32
  %122 = select i1 %115, i32 %121, i32 0
  %123 = mul i32 %23, 208
  %124 = add i32 %123, 188
  %125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %124, i32 undef)  ; BufferLoad(srv,index,wot)
  %126 = extractvalue %dx.types.ResRet.i32 %125, 0
  %127 = and i32 %87, 114688
  %128 = and i32 %87, 8
  %129 = icmp ne i32 %128, 0
  %130 = or i1 %106, %129
  %131 = select i1 %130, i32 %127, i32 16384
  %132 = and i32 %131, %126
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %135

; <label>:134                                     ; preds = %105
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %135

; <label>:135                                     ; preds = %134, %105
  %136 = and i32 %126, 512
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %162, label %138

; <label>:138                                     ; preds = %135
  %139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %140 = extractvalue %dx.types.CBufRet.f32 %139, 2
  %141 = extractvalue %dx.types.CBufRet.f32 %139, 3
  %142 = fmul fast float %140, %48
  %143 = fmul fast float %141, %49
  %144 = extractvalue %dx.types.CBufRet.f32 %139, 0
  %145 = extractvalue %dx.types.CBufRet.f32 %139, 1
  %146 = fdiv fast float %144, %145
  %147 = fcmp fast ogt float %146, 0x3FFC71C720000000
  br i1 %147, label %148, label %154

; <label>:148                                     ; preds = %138
  %149 = fdiv fast float 0x3FFC71C720000000, %146
  %150 = fmul fast float %149, %143
  %151 = fsub fast float 1.000000e+00, %149
  %152 = fmul fast float %151, 5.000000e-01
  %153 = fadd fast float %152, %150
  br label %162

; <label>:154                                     ; preds = %138
  %155 = fcmp fast olt float %146, 0x3FFC71C720000000
  br i1 %155, label %156, label %162

; <label>:156                                     ; preds = %154
  %157 = fmul fast float %142, 5.625000e-01
  %158 = fmul fast float %157, %146
  %159 = fmul fast float %146, 2.812500e-01
  %160 = fsub fast float 5.000000e-01, %159
  %161 = fadd fast float %160, %158
  br label %162

; <label>:162                                     ; preds = %156, %154, %148, %135
  %163 = phi float [ %34, %135 ], [ %142, %148 ], [ %161, %156 ], [ %142, %154 ]
  %164 = phi float [ %35, %135 ], [ %153, %148 ], [ %143, %156 ], [ %143, %154 ]
  %165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %166 = extractvalue %dx.types.ResRet.i32 %165, 0
  %167 = extractvalue %dx.types.ResRet.i32 %165, 1
  %168 = bitcast i32 %166 to float
  %169 = bitcast i32 %167 to float
  %170 = fmul fast float %168, %34
  %171 = fmul fast float %169, %35
  %172 = call float @dx.op.unary.f32(i32 22, float %170)  ; Frc(value)
  %173 = call float @dx.op.unary.f32(i32 22, float %171)  ; Frc(value)
  %174 = and i32 %126, 16
  %175 = icmp ne i32 %174, 0
  %176 = select i1 %175, float 1.000000e+00, float %39
  %177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 128, i32 undef)  ; BufferLoad(srv,index,wot)
  %178 = extractvalue %dx.types.ResRet.i32 %177, 0
  %179 = add i32 %178, 0
  %180 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %179, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %182 = extractvalue %dx.types.CBufRet.f32 %181, 2
  %183 = call %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32 61, %dx.types.Handle %180, %dx.types.Handle %45, float %163, float %164, float undef, float undef, i32 0, i32 0, i32 undef, float %182, float undef)  ; SampleBias(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,bias,clamp)
  %184 = extractvalue %dx.types.ResRet.f32 %183, 0
  %185 = fmul fast float %184, %176
  %186 = icmp eq i32 %174, 0
  br i1 %186, label %206, label %187, !dx.controlflow.hints !61

; <label>:187                                     ; preds = %162
  %188 = add i32 %123, 64
  %189 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %188, i32 undef)  ; BufferLoad(srv,index,wot)
  %190 = extractvalue %dx.types.ResRet.f32 %189, 0
  %191 = fadd fast float %190, 1.000000e+00
  %192 = fmul fast float %191, %39
  %193 = fsub fast float %192, %190
  %194 = fsub fast float %191, %193
  %195 = call float @dx.op.unary.f32(i32 7, float %194)  ; Saturate(value)
  %196 = fsub fast float 1.000000e+00, %192
  %197 = call float @dx.op.unary.f32(i32 7, float %196)  ; Saturate(value)
  %198 = fsub fast float %195, %197
  %199 = fsub fast float %185, %197
  %200 = fdiv fast float %199, %198
  %201 = call float @dx.op.unary.f32(i32 7, float %200)  ; Saturate(value)
  %202 = fmul fast float %201, 2.000000e+00
  %203 = fsub fast float 3.000000e+00, %202
  %204 = fmul fast float %201, %201
  %205 = fmul fast float %204, %203
  br label %206

; <label>:206                                     ; preds = %187, %162
  %207 = phi float [ %205, %187 ], [ %185, %162 ]
  %208 = fcmp fast ogt float %207, 0.000000e+00
  br i1 %208, label %210, label %209

; <label>:209                                     ; preds = %206
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %210

; <label>:210                                     ; preds = %209, %206
  %211 = call float @dx.op.unary.f32(i32 7, float %207)  ; Saturate(value)
  %212 = fmul fast float %48, 5.000000e-01
  %213 = fmul fast float %49, 5.000000e-01
  %214 = fptosi float %212 to i32
  %215 = fptosi float %213 to i32
  %216 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %214, i32 %215, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %217 = extractvalue %dx.types.ResRet.i32 %216, 0
  %218 = lshr i32 %217, 18
  %219 = uitofp i32 %218 to float
  %220 = fmul fast float %219, 0x3F4C00EBA0000000
  %221 = call float @dx.op.unary.f32(i32 21, float %220)  ; Exp(value)
  %222 = fadd fast float %221, -1.000000e+00
  %223 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %10, i32 0)  ; GetDimensions(handle,mipLevel)
  %224 = extractvalue %dx.types.Dimensions %223, 0
  %225 = sitofp i32 %224 to float
  %226 = extractvalue %dx.types.Dimensions %223, 1
  %227 = sitofp i32 %226 to float
  %228 = fcmp fast oge float %212, %225
  %229 = fcmp fast oge float %213, %227
  %230 = or i1 %228, %229
  %231 = select i1 %230, float 0x4197782600000000, float %222
  %232 = fsub fast float %231, %43
  %233 = fcmp fast ogt float %232, 0.000000e+00
  %234 = and i32 %122, -2
  %235 = icmp eq i32 %234, 2
  %236 = and i1 %235, %233
  %237 = xor i1 %233, true
  %238 = icmp eq i32 %122, 1
  %239 = and i1 %238, %237
  %240 = or i1 %236, %239
  %241 = and i32 %126, 262144
  %242 = icmp ne i32 %241, 0
  %243 = and i1 %242, %240
  %244 = xor i1 %240, true
  %245 = and i32 %126, 131072
  %246 = icmp ne i32 %245, 0
  %247 = and i1 %246, %244
  %248 = or i1 %243, %247
  br i1 %248, label %249, label %250

; <label>:249                                     ; preds = %210
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %250

; <label>:250                                     ; preds = %249, %210
  %251 = and i32 %126, 32
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %518, label %253, !dx.controlflow.hints !62

; <label>:253                                     ; preds = %250
  %254 = add i32 %123, 80
  %255 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %254, i32 undef)  ; BufferLoad(srv,index,wot)
  %256 = extractvalue %dx.types.ResRet.f32 %255, 0
  %257 = extractvalue %dx.types.ResRet.f32 %255, 1
  %258 = extractvalue %dx.types.ResRet.f32 %255, 2
  %259 = extractvalue %dx.types.ResRet.f32 %255, 3
  %260 = add i32 %123, 96
  %261 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %260, i32 undef)  ; BufferLoad(srv,index,wot)
  %262 = extractvalue %dx.types.ResRet.f32 %261, 0
  %263 = extractvalue %dx.types.ResRet.f32 %261, 1
  %264 = extractvalue %dx.types.ResRet.f32 %261, 2
  %265 = add i32 %123, 112
  %266 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %265, i32 undef)  ; BufferLoad(srv,index,wot)
  %267 = extractvalue %dx.types.ResRet.f32 %266, 0
  %268 = extractvalue %dx.types.ResRet.f32 %266, 1
  %269 = extractvalue %dx.types.ResRet.f32 %266, 2
  %270 = extractvalue %dx.types.ResRet.f32 %266, 3
  %271 = add i32 %123, 128
  %272 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %271, i32 undef)  ; BufferLoad(srv,index,wot)
  %273 = extractvalue %dx.types.ResRet.f32 %272, 0
  %274 = extractvalue %dx.types.ResRet.f32 %272, 1
  %275 = extractvalue %dx.types.ResRet.f32 %272, 2
  %276 = extractvalue %dx.types.ResRet.f32 %272, 3
  %277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %124, i32 undef)  ; BufferLoad(srv,index,wot)
  %278 = extractvalue %dx.types.ResRet.i32 %277, 0
  %279 = and i32 %278, 4096
  %280 = icmp ne i32 %279, 0
  %281 = fcmp fast une float %264, 0.000000e+00
  %282 = and i32 %278, 64
  %283 = icmp ne i32 %282, 0
  %284 = and i32 %278, 128
  %285 = icmp eq i32 %284, 0
  %286 = and i32 %278, 2048
  %287 = icmp eq i32 %286, 0
  %288 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %13, i32 0)  ; GetDimensions(handle,mipLevel)
  %289 = extractvalue %dx.types.Dimensions %288, 0
  %290 = sitofp i32 %289 to float
  %291 = extractvalue %dx.types.Dimensions %288, 1
  %292 = sitofp i32 %291 to float
  %293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %294 = extractvalue %dx.types.CBufRet.f32 %293, 2
  %295 = extractvalue %dx.types.CBufRet.f32 %293, 3
  %296 = fmul fast float %294, %48
  %297 = fmul fast float %295, %49
  %298 = fmul fast float %296, %290
  %299 = fmul fast float %297, %292
  %300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %301 = extractvalue %dx.types.CBufRet.f32 %300, 1
  %302 = fsub fast float -0.000000e+00, %301
  %303 = fptoui float %302 to i32
  %304 = fptoui float %298 to i32
  %305 = fptoui float %299 to i32
  %306 = and i32 %303, 31
  %307 = lshr i32 %304, %306
  %308 = lshr i32 %305, %306
  %309 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %13, i32 %303, i32 %307, i32 %308, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %310 = extractvalue %dx.types.ResRet.f32 %309, 0
  %311 = fcmp fast ogt float %310, -1.000000e+00
  %312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %313 = extractvalue %dx.types.CBufRet.f32 %312, 1
  %314 = select i1 %311, float %313, float 1.000000e+00
  %315 = fadd fast float %310, 1.000000e+00
  %316 = fmul fast float %314, %315
  %317 = call float @dx.op.unary.f32(i32 6, float %316)  ; FAbs(value)
  %318 = extractvalue %dx.types.CBufRet.f32 %312, 3
  %319 = fcmp fast oge float %317, %318
  %320 = select i1 %319, float 0x4197782600000000, float %317
  br i1 %287, label %403, label %321, !dx.controlflow.hints !63

; <label>:321                                     ; preds = %253
  %322 = fmul fast float %53, %294
  %323 = fmul fast float %55, %295
  %324 = fsub fast float 1.000000e+00, %322
  %325 = fsub fast float 1.000000e+00, %323
  %326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %327 = extractvalue %dx.types.CBufRet.f32 %326, 0
  %328 = extractvalue %dx.types.CBufRet.f32 %326, 1
  %329 = extractvalue %dx.types.CBufRet.f32 %326, 2
  %330 = fmul fast float %324, %327
  %331 = fmul fast float %324, %328
  %332 = fmul fast float %324, %329
  %333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %334 = extractvalue %dx.types.CBufRet.f32 %333, 0
  %335 = extractvalue %dx.types.CBufRet.f32 %333, 1
  %336 = extractvalue %dx.types.CBufRet.f32 %333, 2
  %337 = fmul fast float %325, %334
  %338 = fmul fast float %325, %335
  %339 = fmul fast float %325, %336
  %340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %341 = extractvalue %dx.types.CBufRet.f32 %340, 0
  %342 = extractvalue %dx.types.CBufRet.f32 %340, 1
  %343 = extractvalue %dx.types.CBufRet.f32 %340, 2
  %344 = fadd fast float %337, %341
  %345 = fadd fast float %344, %330
  %346 = fadd fast float %338, %342
  %347 = fadd fast float %346, %331
  %348 = fadd fast float %339, %343
  %349 = fadd fast float %348, %332
  %350 = fmul fast float %345, %320
  %351 = fmul fast float %347, %320
  %352 = fmul fast float %349, %320
  %353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %354 = extractvalue %dx.types.CBufRet.f32 %353, 0
  %355 = extractvalue %dx.types.CBufRet.f32 %353, 1
  %356 = extractvalue %dx.types.CBufRet.f32 %353, 2
  %357 = fadd fast float %350, %354
  %358 = fadd fast float %351, %355
  %359 = fadd fast float %352, %356
  %360 = call float @dx.op.dot3.f32(i32 55, float %357, float %358, float %359, float %357, float %358, float %359)  ; Dot3(ax,ay,az,bx,by,bz)
  %361 = fsub fast float 1.000000e+00, %360
  %362 = fcmp fast olt float %361, %263
  %363 = fcmp fast ogt float %361, %262
  %364 = or i1 %362, %363
  %365 = select i1 %364, float 0.000000e+00, float %361
  %366 = fsub fast float %262, %263
  %367 = fsub fast float %365, %263
  %368 = fdiv fast float %367, %366
  %369 = call float @dx.op.unary.f32(i32 7, float %368)  ; Saturate(value)
  %370 = fmul fast float %369, 2.000000e+00
  %371 = fsub fast float 3.000000e+00, %370
  %372 = fmul fast float %369, %369
  %373 = fmul fast float %372, %371
  %374 = fmul fast float %267, %36
  %375 = fmul fast float %268, %37
  %376 = fmul fast float %269, %38
  %377 = fsub fast float %374, %273
  %378 = fsub fast float %375, %274
  %379 = fsub fast float %376, %275
  %380 = fsub fast float %270, %276
  %381 = fmul fast float %373, %377
  %382 = fmul fast float %373, %378
  %383 = fmul fast float %373, %379
  %384 = fmul fast float %373, %380
  %385 = fadd fast float %381, %273
  %386 = fadd fast float %382, %274
  %387 = fadd fast float %383, %275
  %388 = fadd fast float %384, %276
  %389 = fmul fast float %267, %24
  %390 = fmul fast float %268, %25
  %391 = fmul fast float %269, %26
  %392 = fsub fast float %389, %273
  %393 = fsub fast float %390, %274
  %394 = fsub fast float %391, %275
  %395 = fmul fast float %373, %392
  %396 = fmul fast float %373, %393
  %397 = fmul fast float %373, %394
  %398 = fadd fast float %395, %273
  %399 = fadd fast float %396, %274
  %400 = fadd fast float %397, %275
  %401 = fmul fast float %256, %256
  %402 = fmul fast float %401, %365
  br label %506

; <label>:403                                     ; preds = %253
  %404 = and i32 %278, 256
  %405 = icmp eq i32 %404, 0
  %406 = fsub fast float %320, %43
  br i1 %405, label %467, label %407

; <label>:407                                     ; preds = %403
  %408 = fadd fast float %262, %43
  %409 = fcmp fast olt float %320, %43
  %410 = fcmp fast ogt float %320, %408
  %411 = or i1 %409, %410
  %412 = select i1 %411, float 0.000000e+00, float %406
  %413 = call float @dx.op.unary.f32(i32 83, float %320)  ; DerivCoarseX(value)
  %414 = call float @dx.op.unary.f32(i32 84, float %320)  ; DerivCoarseY(value)
  %415 = fmul fast float %413, %413
  %416 = fmul fast float %414, %414
  %417 = fadd fast float %416, %415
  %418 = call float @dx.op.unary.f32(i32 24, float %417)  ; Sqrt(value)
  %419 = extractvalue %dx.types.CBufRet.f32 %300, 2
  %420 = fmul fast float %419, %418
  %421 = call float @dx.op.unary.f32(i32 7, float %420)  ; Saturate(value)
  %422 = fmul fast float %421, %263
  %423 = fdiv fast float %406, %422
  %424 = call float @dx.op.unary.f32(i32 7, float %423)  ; Saturate(value)
  %425 = fmul fast float %424, 2.000000e+00
  %426 = fsub fast float 3.000000e+00, %425
  %427 = fmul fast float %424, %424
  %428 = fmul fast float %427, %426
  %429 = fsub fast float %320, %408
  %430 = fadd fast float %429, %422
  %431 = fdiv fast float %430, %422
  %432 = call float @dx.op.unary.f32(i32 7, float %431)  ; Saturate(value)
  %433 = fmul fast float %432, 2.000000e+00
  %434 = fsub fast float 3.000000e+00, %433
  %435 = fmul fast float %432, %432
  %436 = fmul fast float %435, %434
  %437 = fsub fast float %428, %436
  %438 = fmul fast float %267, %36
  %439 = fmul fast float %268, %37
  %440 = fmul fast float %269, %38
  %441 = fsub fast float %438, %273
  %442 = fsub fast float %439, %274
  %443 = fsub fast float %440, %275
  %444 = fsub fast float %270, %276
  %445 = fmul fast float %437, %441
  %446 = fmul fast float %437, %442
  %447 = fmul fast float %437, %443
  %448 = fmul fast float %437, %444
  %449 = fadd fast float %445, %273
  %450 = fadd fast float %446, %274
  %451 = fadd fast float %447, %275
  %452 = fadd fast float %448, %276
  %453 = fmul fast float %267, %24
  %454 = fmul fast float %268, %25
  %455 = fmul fast float %269, %26
  %456 = fsub fast float %453, %273
  %457 = fsub fast float %454, %274
  %458 = fsub fast float %455, %275
  %459 = fmul fast float %437, %456
  %460 = fmul fast float %437, %457
  %461 = fmul fast float %437, %458
  %462 = fadd fast float %459, %273
  %463 = fadd fast float %460, %274
  %464 = fadd fast float %461, %275
  %465 = fmul fast float %412, %256
  %466 = call float @dx.op.unary.f32(i32 6, float %465)  ; FAbs(value)
  br label %506

; <label>:467                                     ; preds = %403
  br i1 %281, label %468, label %479

; <label>:468                                     ; preds = %467
  %469 = select i1 %283, float 5.000000e+01, float 1.000000e+00
  %470 = fmul fast float %469, %256
  %471 = fmul fast float %172, 2.000000e+00
  %472 = fmul fast float %173, 2.000000e+00
  %473 = fadd fast float %471, -1.000000e+00
  %474 = fadd fast float %472, -1.000000e+00
  %475 = call float @dx.op.dot2.f32(i32 54, float %473, float %474, float %473, float %474)  ; Dot2(ax,ay,bx,by)
  %476 = fmul fast float %475, %264
  %477 = fsub fast float %406, %476
  %478 = fmul fast float %470, %477
  br label %506

; <label>:479                                     ; preds = %467
  br i1 %285, label %499, label %480

; <label>:480                                     ; preds = %479
  %481 = select i1 %283, float 0x3F947AE140000000, float 1.000000e+00
  %482 = fdiv fast float 1.000000e+00, %481
  %483 = fmul fast float %481, %257
  %484 = fmul fast float %481, %258
  %485 = fmul fast float %482, %259
  %486 = call float @dx.op.unary.f32(i32 6, float %406)  ; FAbs(value)
  %487 = fcmp fast olt float %486, %483
  br i1 %487, label %488, label %492, !dx.controlflow.hints !64

; <label>:488                                     ; preds = %480
  %489 = fmul fast float %482, %256
  %490 = fmul fast float %489, %486
  %491 = call float @dx.op.unary.f32(i32 6, float %490)  ; FAbs(value)
  br label %506

; <label>:492                                     ; preds = %480
  %493 = fcmp fast ogt float %486, %484
  br i1 %493, label %494, label %506

; <label>:494                                     ; preds = %492
  %495 = fsub fast float %486, %484
  %496 = fmul fast float %485, %495
  %497 = call float @dx.op.unary.f32(i32 6, float %496)  ; FAbs(value)
  %498 = fsub fast float 1.000000e+00, %497
  br label %506

; <label>:499                                     ; preds = %479
  %500 = select i1 %283, float 5.000000e+01, float 1.000000e+00
  %501 = fmul fast float %500, %256
  %502 = call float @dx.op.unary.f32(i32 6, float %232)  ; FAbs(value)
  %503 = select i1 %280, float %502, float 0x47EFFFFFE0000000
  %504 = call float @dx.op.binary.f32(i32 36, float %406, float %503)  ; FMin(a,b)
  %505 = fmul fast float %501, %504
  br label %506

; <label>:506                                     ; preds = %499, %494, %492, %488, %468, %407, %321
  %507 = phi float [ %402, %321 ], [ %466, %407 ], [ %478, %468 ], [ %505, %499 ], [ %491, %488 ], [ %498, %494 ], [ %486, %492 ]
  %508 = phi float [ %398, %321 ], [ %462, %407 ], [ %24, %468 ], [ %24, %499 ], [ %24, %488 ], [ %24, %494 ], [ %24, %492 ]
  %509 = phi float [ %399, %321 ], [ %463, %407 ], [ %25, %468 ], [ %25, %499 ], [ %25, %488 ], [ %25, %494 ], [ %25, %492 ]
  %510 = phi float [ %400, %321 ], [ %464, %407 ], [ %26, %468 ], [ %26, %499 ], [ %26, %488 ], [ %26, %494 ], [ %26, %492 ]
  %511 = phi float [ %385, %321 ], [ %449, %407 ], [ %36, %468 ], [ %36, %499 ], [ %36, %488 ], [ %36, %494 ], [ %36, %492 ]
  %512 = phi float [ %386, %321 ], [ %450, %407 ], [ %37, %468 ], [ %37, %499 ], [ %37, %488 ], [ %37, %494 ], [ %37, %492 ]
  %513 = phi float [ %387, %321 ], [ %451, %407 ], [ %38, %468 ], [ %38, %499 ], [ %38, %488 ], [ %38, %494 ], [ %38, %492 ]
  %514 = phi float [ %388, %321 ], [ %452, %407 ], [ 1.000000e+00, %468 ], [ 1.000000e+00, %499 ], [ 1.000000e+00, %488 ], [ 1.000000e+00, %494 ], [ 1.000000e+00, %492 ]
  %515 = call float @dx.op.unary.f32(i32 7, float %507)  ; Saturate(value)
  %516 = fmul fast float %514, %211
  %517 = fmul fast float %516, %515
  br label %518

; <label>:518                                     ; preds = %506, %250
  %519 = phi float [ %511, %506 ], [ %36, %250 ]
  %520 = phi float [ %512, %506 ], [ %37, %250 ]
  %521 = phi float [ %513, %506 ], [ %38, %250 ]
  %522 = phi float [ %517, %506 ], [ %211, %250 ]
  %523 = phi float [ %508, %506 ], [ %24, %250 ]
  %524 = phi float [ %509, %506 ], [ %25, %250 ]
  %525 = phi float [ %510, %506 ], [ %26, %250 ]
  %526 = fmul fast float %523, %27
  %527 = fmul fast float %524, %27
  %528 = fmul fast float %525, %27
  %529 = fmul fast float %523, %33
  %530 = fmul fast float %524, %33
  %531 = fmul fast float %525, %33
  %532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %533 = extractvalue %dx.types.CBufRet.f32 %532, 2
  %534 = fptosi float %43 to i32
  %535 = sitofp i32 %534 to float
  %536 = fadd fast float %533, %535
  %537 = fmul fast float %536, 0x3FE3C6EF40000000
  %538 = frem fast float %48, 2.560000e+02
  %539 = frem fast float %49, 2.560000e+02
  %540 = fptoui float %538 to i32
  %541 = fptoui float %539 to i32
  %542 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %17, i32 0, i32 %540, i32 %541, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %543 = extractvalue %dx.types.ResRet.f32 %542, 0
  %544 = fadd fast float %543, %537
  %545 = call float @dx.op.unary.f32(i32 22, float %544)  ; Frc(value)
  %546 = and i32 %126, 1
  %547 = icmp eq i32 %546, 0
  br i1 %547, label %607, label %548, !dx.controlflow.hints !65

; <label>:548                                     ; preds = %518
  %549 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %123, i32 undef)  ; BufferLoad(srv,index,wot)
  %550 = extractvalue %dx.types.ResRet.f32 %549, 2
  %551 = extractvalue %dx.types.ResRet.f32 %549, 3
  %552 = add i32 %123, 16
  %553 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %552, i32 undef)  ; BufferLoad(srv,index,wot)
  %554 = extractvalue %dx.types.ResRet.f32 %553, 0
  %555 = extractvalue %dx.types.ResRet.f32 %553, 1
  %556 = extractvalue %dx.types.ResRet.f32 %553, 2
  %557 = add i32 %123, 32
  %558 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %557, i32 undef)  ; BufferLoad(srv,index,wot)
  %559 = extractvalue %dx.types.ResRet.f32 %558, 0
  %560 = extractvalue %dx.types.ResRet.f32 %558, 1
  %561 = extractvalue %dx.types.ResRet.f32 %558, 2
  %562 = and i32 %126, 2
  %563 = icmp eq i32 %562, 0
  %564 = call float @dx.op.dot3.f32(i32 55, float %30, float %31, float %32, float %30, float %31, float %32)  ; Dot3(ax,ay,az,bx,by,bz)
  %565 = call float @dx.op.unary.f32(i32 25, float %564)  ; Rsqrt(value)
  %566 = fmul fast float %565, %30
  %567 = fmul fast float %565, %31
  %568 = fmul fast float %565, %32
  %569 = call float @dx.op.dot3.f32(i32 55, float %83, float %84, float %85, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %570 = call float @dx.op.unary.f32(i32 25, float %569)  ; Rsqrt(value)
  %571 = fmul fast float %570, %83
  %572 = fmul fast float %570, %84
  %573 = fmul fast float %570, %85
  %574 = call float @dx.op.dot3.f32(i32 55, float %571, float %572, float %573, float %566, float %567, float %568)  ; Dot3(ax,ay,az,bx,by,bz)
  %575 = fmul fast float %574, %574
  %576 = fmul fast float %575, %550
  %577 = fadd fast float %576, %551
  %578 = call float @dx.op.unary.f32(i32 7, float %577)  ; Saturate(value)
  br i1 %563, label %579, label %589, !dx.controlflow.hints !66

; <label>:579                                     ; preds = %548
  %580 = extractvalue %dx.types.ResRet.f32 %549, 1
  %581 = extractvalue %dx.types.ResRet.f32 %549, 0
  %582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %583 = extractvalue %dx.types.CBufRet.f32 %582, 3
  %584 = fmul fast float %583, %569
  %585 = fsub fast float %581, %584
  %586 = fmul fast float %585, %580
  %587 = call float @dx.op.unary.f32(i32 7, float %586)  ; Saturate(value)
  %588 = fmul fast float %587, %578
  br label %589

; <label>:589                                     ; preds = %579, %548
  %590 = phi float [ %588, %579 ], [ %578, %548 ]
  %591 = fsub fast float %554, %559
  %592 = fsub fast float %555, %560
  %593 = fsub fast float %556, %561
  %594 = fmul fast float %590, %591
  %595 = fmul fast float %590, %592
  %596 = fmul fast float %590, %593
  %597 = fadd fast float %594, %559
  %598 = fadd fast float %595, %560
  %599 = fadd fast float %596, %561
  %600 = fmul fast float %597, %519
  %601 = fmul fast float %598, %520
  %602 = fmul fast float %599, %521
  %603 = fmul fast float %597, %526
  %604 = fmul fast float %598, %527
  %605 = fmul fast float %599, %528
  %606 = fmul fast float %590, %522
  br label %607

; <label>:607                                     ; preds = %589, %518
  %608 = phi float [ %600, %589 ], [ %519, %518 ]
  %609 = phi float [ %601, %589 ], [ %520, %518 ]
  %610 = phi float [ %602, %589 ], [ %521, %518 ]
  %611 = phi float [ %606, %589 ], [ %522, %518 ]
  %612 = phi float [ %603, %589 ], [ %526, %518 ]
  %613 = phi float [ %604, %589 ], [ %527, %518 ]
  %614 = phi float [ %605, %589 ], [ %528, %518 ]
  %615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 120, i32 undef)  ; BufferLoad(srv,index,wot)
  %616 = extractvalue %dx.types.ResRet.i32 %615, 0
  %617 = add i32 %616, 0
  %618 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %617, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %620 = extractvalue %dx.types.ResRet.i32 %619, 0
  %621 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %618, %dx.types.Handle %44, float %163, float %164, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %622 = extractvalue %dx.types.ResRet.f32 %621, 0
  %623 = extractvalue %dx.types.ResRet.f32 %621, 1
  %624 = extractvalue %dx.types.ResRet.f32 %621, 2
  %625 = extractvalue %dx.types.ResRet.f32 %621, 3
  %626 = and i32 %620, 255
  %627 = uitofp i32 %626 to float
  %628 = lshr i32 %620, 8
  %629 = and i32 %628, 255
  %630 = uitofp i32 %629 to float
  %631 = fmul fast float %625, %627
  %632 = fadd fast float %631, %630
  %633 = fmul fast float %632, 0x3F70101000000000
  %634 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %635 = extractvalue %dx.types.ResRet.i32 %634, 0
  %636 = and i32 %635, 255
  %637 = uitofp i32 %636 to float
  %638 = fmul fast float %637, 0x3F70101020000000
  %639 = lshr i32 %635, 8
  %640 = and i32 %639, 255
  %641 = uitofp i32 %640 to float
  %642 = fmul fast float %641, 0x3F70101020000000
  %643 = lshr i32 %635, 16
  %644 = and i32 %643, 255
  %645 = uitofp i32 %644 to float
  %646 = fmul fast float %645, 0x3F70101020000000
  %647 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 124, i32 undef)  ; BufferLoad(srv,index,wot)
  %648 = extractvalue %dx.types.ResRet.i32 %647, 0
  %649 = add i32 %648, 0
  %650 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %649, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %651 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %650, %dx.types.Handle %44, float %163, float %164, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %652 = extractvalue %dx.types.ResRet.f32 %651, 0
  %653 = extractvalue %dx.types.ResRet.f32 %651, 1
  %654 = extractvalue %dx.types.ResRet.f32 %651, 2
  %655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 44, i32 undef)  ; BufferLoad(srv,index,wot)
  %656 = extractvalue %dx.types.ResRet.i32 %655, 0
  %657 = shl i32 %656, 4
  %658 = and i32 %657, 32752
  %659 = call float @dx.op.legacyF16ToF32(i32 131, i32 %658)  ; LegacyF16ToF32(value)
  %660 = lshr i32 %656, 7
  %661 = and i32 %660, 32752
  %662 = call float @dx.op.legacyF16ToF32(i32 131, i32 %661)  ; LegacyF16ToF32(value)
  %663 = lshr i32 %656, 22
  %664 = shl nuw nsw i32 %663, 5
  %665 = call float @dx.op.legacyF16ToF32(i32 131, i32 %664)  ; LegacyF16ToF32(value)
  %666 = fmul fast float %659, %652
  %667 = fmul fast float %662, %653
  %668 = fmul fast float %665, %654
  %669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %670 = extractvalue %dx.types.CBufRet.f32 %669, 0
  %671 = fmul fast float %666, %670
  %672 = fmul fast float %667, %670
  %673 = fmul fast float %668, %670
  %674 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %675 = extractvalue %dx.types.ResRet.i32 %674, 0
  %676 = lshr i32 %675, 22
  %677 = shl nuw nsw i32 %676, 5
  %678 = call float @dx.op.legacyF16ToF32(i32 131, i32 %677)  ; LegacyF16ToF32(value)
  %679 = fmul fast float %678, %671
  %680 = select i1 %106, float %679, float %671
  %681 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %19, float %28, float %29, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %682 = extractvalue %dx.types.ResRet.f32 %681, 0
  %683 = extractvalue %dx.types.ResRet.f32 %681, 1
  %684 = extractvalue %dx.types.ResRet.f32 %681, 2
  %685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %686 = extractvalue %dx.types.CBufRet.f32 %685, 1
  %687 = fmul fast float %686, %682
  %688 = fmul fast float %686, %683
  %689 = fmul fast float %686, %684
  %690 = fadd fast float %633, 0xBFB99999A0000000
  %691 = call float @dx.op.unary.f32(i32 7, float %690)  ; Saturate(value)
  %692 = fmul fast float %691, 0x3FF1C71C80000000
  %693 = fsub fast float 1.000000e+00, %692
  %694 = call float @dx.op.unary.f32(i32 7, float %693)  ; Saturate(value)
  %695 = fmul fast float %622, %608
  %696 = fmul fast float %638, %638
  %697 = fmul fast float %696, %695
  %698 = fmul fast float %697, %694
  %699 = fmul fast float %623, %609
  %700 = fmul fast float %642, %642
  %701 = fmul fast float %700, %699
  %702 = fmul fast float %701, %694
  %703 = fmul fast float %624, %610
  %704 = fmul fast float %646, %646
  %705 = fmul fast float %704, %703
  %706 = fmul fast float %705, %694
  %707 = call float @dx.op.unary.f32(i32 7, float %698)  ; Saturate(value)
  %708 = call float @dx.op.unary.f32(i32 7, float %702)  ; Saturate(value)
  %709 = call float @dx.op.unary.f32(i32 7, float %706)  ; Saturate(value)
  %710 = fmul fast float %680, %612
  %711 = fmul fast float %672, %613
  %712 = fmul fast float %673, %614
  %713 = call float @dx.op.dot3.f32(i32 55, float %710, float %711, float %712, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %714 = select i1 %106, float 0.000000e+00, float %710
  %715 = select i1 %106, float %713, float %711
  %716 = select i1 %106, float 0.000000e+00, float %712
  %717 = fmul fast float %529, %680
  %718 = fmul fast float %530, %672
  %719 = fmul fast float %531, %673
  %720 = call float @dx.op.dot3.f32(i32 55, float %707, float %708, float %709, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %722 = extractvalue %dx.types.ResRet.i32 %721, 0
  %723 = and i32 %722, 255
  %724 = uitofp i32 %723 to float
  %725 = lshr i32 %722, 8
  %726 = and i32 %725, 255
  %727 = uitofp i32 %726 to float
  %728 = fmul fast float %727, %720
  %729 = fadd fast float %728, %724
  %730 = fmul fast float %729, 0x3F70101020000000
  %731 = call float @dx.op.unary.f32(i32 7, float %730)  ; Saturate(value)
  %732 = and i32 %126, 8192
  %733 = icmp eq i32 %732, 0
  %734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %735 = extractvalue %dx.types.CBufRet.f32 %734, 0
  br i1 %733, label %742, label %736, !dx.controlflow.hints !67

; <label>:736                                     ; preds = %607
  %737 = add i32 %123, 176
  %738 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %737, i32 undef)  ; BufferLoad(srv,index,wot)
  %739 = extractvalue %dx.types.ResRet.f32 %738, 0
  %740 = fcmp fast oge float %739, 0.000000e+00
  %741 = select i1 %740, float %739, float %735
  br label %748

; <label>:742                                     ; preds = %607
  %743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 104, i32 undef)  ; BufferLoad(srv,index,wot)
  %744 = extractvalue %dx.types.ResRet.i32 %743, 0
  %745 = bitcast i32 %744 to float
  %746 = fcmp fast oge float %745, 0.000000e+00
  %747 = select i1 %746, float %745, float %735
  br label %748

; <label>:748                                     ; preds = %742, %736
  %749 = phi float [ %741, %736 ], [ %747, %742 ]
  %750 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %214, i32 %215, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %751 = extractvalue %dx.types.ResRet.i32 %750, 0
  %752 = lshr i32 %751, 18
  %753 = uitofp i32 %752 to float
  %754 = fmul fast float %753, 0x3F4C00EBA0000000
  %755 = call float @dx.op.unary.f32(i32 21, float %754)  ; Exp(value)
  %756 = fadd fast float %755, -1.000000e+00
  %757 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %10, i32 0)  ; GetDimensions(handle,mipLevel)
  %758 = extractvalue %dx.types.Dimensions %757, 0
  %759 = sitofp i32 %758 to float
  %760 = extractvalue %dx.types.Dimensions %757, 1
  %761 = sitofp i32 %760 to float
  %762 = fcmp fast oge float %212, %759
  %763 = fcmp fast oge float %213, %761
  %764 = or i1 %762, %763
  %765 = select i1 %764, float 0x4197782600000000, float %756
  %766 = icmp eq i32 %122, 3
  %767 = fcmp fast ogt float %43, %765
  %768 = and i1 %238, %767
  %769 = or i1 %766, %768
  %770 = icmp eq i32 %122, 2
  %771 = fcmp fast ole float %43, %765
  %772 = and i1 %770, %771
  %773 = or i1 %772, %769
  %774 = fmul fast float %717, %687
  %775 = fmul fast float %718, %688
  %776 = fmul fast float %719, %689
  %777 = fadd fast float %774, %714
  %778 = fadd fast float %715, %775
  %779 = fadd fast float %776, %716
  %780 = fmul fast float %777, %611
  %781 = fmul fast float %778, %611
  %782 = fmul fast float %779, %611
  %783 = fmul fast float %687, %611
  %784 = fmul fast float %688, %611
  %785 = fmul fast float %689, %611
  %786 = fsub fast float 1.000000e+00, %611
  %787 = call float @dx.op.dot3.f32(i32 55, float %786, float %786, float %786, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %788 = fsub fast float 1.000000e+00, %787
  %789 = fmul fast float %749, %731
  %790 = fsub fast float 1.000000e+00, %731
  %791 = call float @dx.op.unary.f32(i32 7, float %790)  ; Saturate(value)
  %792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %793 = extractvalue %dx.types.CBufRet.f32 %792, 3
  %794 = fmul fast float %793, %791
  %795 = fadd fast float %794, %789
  %796 = and i32 %126, 1048576
  %797 = icmp eq i32 %796, 0
  br i1 %797, label %889, label %798, !dx.controlflow.hints !68

; <label>:798                                     ; preds = %748
  %799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %800 = extractvalue %dx.types.CBufRet.f32 %799, 2
  %801 = extractvalue %dx.types.CBufRet.f32 %799, 3
  %802 = fmul fast float %800, %48
  %803 = fmul fast float %801, %49
  %804 = call float @dx.op.unary.f32(i32 7, float %802)  ; Saturate(value)
  %805 = call float @dx.op.unary.f32(i32 7, float %803)  ; Saturate(value)
  %806 = select i1 %773, i32 2, i32 0
  %807 = or i32 %806, 1
  %808 = uitofp i32 %807 to float
  %809 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %804, float %805, float %808, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %810 = extractvalue %dx.types.ResRet.f32 %809, 0
  %811 = extractvalue %dx.types.ResRet.f32 %809, 1
  %812 = extractvalue %dx.types.ResRet.f32 %809, 2
  %813 = extractvalue %dx.types.ResRet.f32 %809, 3
  %814 = add nuw nsw i32 %806, 2
  %815 = uitofp i32 %814 to float
  %816 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %804, float %805, float %815, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %817 = extractvalue %dx.types.ResRet.f32 %816, 0
  %818 = extractvalue %dx.types.ResRet.f32 %816, 1
  %819 = extractvalue %dx.types.ResRet.f32 %816, 2
  %820 = extractvalue %dx.types.ResRet.f32 %816, 3
  %821 = call float @dx.op.binary.f32(i32 35, float %811, float %812)  ; FMax(a,b)
  %822 = call float @dx.op.binary.f32(i32 35, float %810, float %821)  ; FMax(a,b)
  %823 = call float @dx.op.binary.f32(i32 35, float %822, float %813)  ; FMax(a,b)
  %824 = call float @dx.op.binary.f32(i32 36, float %818, float %819)  ; FMin(a,b)
  %825 = call float @dx.op.binary.f32(i32 36, float %817, float %824)  ; FMin(a,b)
  %826 = call float @dx.op.binary.f32(i32 36, float %825, float %820)  ; FMin(a,b)
  %827 = fmul fast float %823, 2.550000e+02
  %828 = fadd fast float %827, 0x3F70101020000000
  %829 = fptoui float %828 to i32
  %830 = fmul fast float %826, 2.550000e+02
  %831 = fadd fast float %830, 0x3F70101020000000
  %832 = fptoui float %831 to i32
  %833 = icmp ult i32 %829, %832
  br i1 %833, label %834, label %882

; <label>:834                                     ; preds = %798
  %835 = fcmp fast ogt float %42, 9.843750e-01
  %836 = fadd fast float %43, -4.000000e+00
  %837 = select i1 %835, float -4.000000e+00, float %836
  %838 = call float @dx.op.binary.f32(i32 35, float %837, float 0.000000e+00)  ; FMax(a,b)
  %839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %840 = extractvalue %dx.types.CBufRet.f32 %839, 0
  %841 = fadd fast float %840, %838
  %842 = extractvalue %dx.types.CBufRet.f32 %839, 2
  %843 = fmul fast float %841, %842
  %844 = call float @dx.op.unary.f32(i32 23, float %843)  ; Log(value)
  %845 = extractvalue %dx.types.CBufRet.f32 %839, 3
  %846 = fmul fast float %845, %844
  %847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %848 = extractvalue %dx.types.CBufRet.f32 %847, 2
  %849 = fmul fast float %846, %848
  %850 = call float @dx.op.unary.f32(i32 7, float %849)  ; Saturate(value)
  %851 = uitofp i32 %829 to float
  %852 = uitofp i32 %832 to float
  %853 = fadd fast float %851, 5.000000e-01
  %854 = fadd fast float %852, 5.000000e-01
  %855 = fmul fast float %848, %853
  %856 = fmul fast float %848, %854
  %857 = fadd fast float %855, 0x3F0FFB4800000000
  %858 = fadd fast float %856, 0xBF0FFB4800000000
  %859 = call float @dx.op.binary.f32(i32 35, float %850, float %857)  ; FMax(a,b)
  %860 = call float @dx.op.binary.f32(i32 36, float %859, float %858)  ; FMin(a,b)
  %861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %862 = extractvalue %dx.types.CBufRet.f32 %861, 1
  %863 = extractvalue %dx.types.CBufRet.f32 %861, 2
  %864 = extractvalue %dx.types.CBufRet.f32 %861, 0
  %865 = select i1 %773, float %864, float 0.000000e+00
  %866 = fmul fast float %862, %860
  %867 = fadd fast float %865, %866
  %868 = fadd fast float %865, %863
  %869 = fsub fast float %862, %863
  %870 = fadd fast float %869, %865
  %871 = call float @dx.op.binary.f32(i32 35, float %867, float %868)  ; FMax(a,b)
  %872 = call float @dx.op.binary.f32(i32 36, float %871, float %870)  ; FMin(a,b)
  %873 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %18, float %804, float %805, float %872, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %874 = extractvalue %dx.types.ResRet.f32 %873, 0
  %875 = extractvalue %dx.types.ResRet.f32 %873, 1
  %876 = extractvalue %dx.types.ResRet.f32 %873, 2
  %877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %878 = extractvalue %dx.types.CBufRet.f32 %877, 1
  %879 = fmul fast float %878, %874
  %880 = fmul fast float %878, %875
  %881 = fmul fast float %878, %876
  br label %882

; <label>:882                                     ; preds = %834, %798
  %883 = phi float [ %879, %834 ], [ 1.000000e+00, %798 ]
  %884 = phi float [ %880, %834 ], [ 1.000000e+00, %798 ]
  %885 = phi float [ %881, %834 ], [ 1.000000e+00, %798 ]
  %886 = fmul fast float %883, %780
  %887 = fmul fast float %884, %781
  %888 = fmul fast float %885, %782
  br label %889

; <label>:889                                     ; preds = %882, %748
  %890 = phi float [ %886, %882 ], [ %780, %748 ]
  %891 = phi float [ %887, %882 ], [ %781, %748 ]
  %892 = phi float [ %888, %882 ], [ %782, %748 ]
  %893 = and i32 %126, 2097152
  %894 = icmp eq i32 %893, 0
  br i1 %894, label %899, label %895, !dx.controlflow.hints !69

; <label>:895                                     ; preds = %889
  %896 = add i32 %123, 192
  %897 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %896, i32 undef)  ; BufferLoad(srv,index,wot)
  %898 = extractvalue %dx.types.ResRet.f32 %897, 0
  br label %902

; <label>:899                                     ; preds = %889
  %900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %901 = extractvalue %dx.types.CBufRet.f32 %900, 3
  br label %902

; <label>:902                                     ; preds = %899, %895
  %903 = phi float [ %898, %895 ], [ %901, %899 ]
  %904 = fmul fast float %783, %707
  %905 = fmul fast float %784, %708
  %906 = fmul fast float %785, %709
  br i1 %768, label %907, label %1016

; <label>:907                                     ; preds = %902
  %908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %909 = extractvalue %dx.types.CBufRet.f32 %908, 2
  %910 = extractvalue %dx.types.CBufRet.f32 %908, 3
  %911 = fmul fast float %909, %48
  %912 = fmul fast float %910, %49
  %913 = call float @dx.op.unary.f32(i32 7, float %911)  ; Saturate(value)
  %914 = call float @dx.op.unary.f32(i32 7, float %912)  ; Saturate(value)
  %915 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %913, float %914, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %916 = extractvalue %dx.types.ResRet.f32 %915, 0
  %917 = extractvalue %dx.types.ResRet.f32 %915, 1
  %918 = extractvalue %dx.types.ResRet.f32 %915, 2
  %919 = extractvalue %dx.types.ResRet.f32 %915, 3
  %920 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %913, float %914, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %921 = extractvalue %dx.types.ResRet.f32 %920, 0
  %922 = extractvalue %dx.types.ResRet.f32 %920, 1
  %923 = extractvalue %dx.types.ResRet.f32 %920, 2
  %924 = extractvalue %dx.types.ResRet.f32 %920, 3
  %925 = call float @dx.op.binary.f32(i32 35, float %917, float %918)  ; FMax(a,b)
  %926 = call float @dx.op.binary.f32(i32 35, float %916, float %925)  ; FMax(a,b)
  %927 = call float @dx.op.binary.f32(i32 35, float %926, float %919)  ; FMax(a,b)
  %928 = call float @dx.op.binary.f32(i32 36, float %922, float %923)  ; FMin(a,b)
  %929 = call float @dx.op.binary.f32(i32 36, float %921, float %928)  ; FMin(a,b)
  %930 = call float @dx.op.binary.f32(i32 36, float %929, float %924)  ; FMin(a,b)
  %931 = fmul fast float %927, 2.550000e+02
  %932 = fadd fast float %931, 0x3F70101020000000
  %933 = fptoui float %932 to i32
  %934 = fmul fast float %930, 2.550000e+02
  %935 = fadd fast float %934, 0x3F70101020000000
  %936 = fptoui float %935 to i32
  %937 = icmp ult i32 %933, %936
  br i1 %937, label %938, label %989

; <label>:938                                     ; preds = %907
  %939 = fcmp fast ogt float %42, 9.843750e-01
  %940 = fadd fast float %43, -4.000000e+00
  %941 = select i1 %939, float -4.000000e+00, float %940
  %942 = call float @dx.op.binary.f32(i32 35, float %941, float 0.000000e+00)  ; FMax(a,b)
  %943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %944 = extractvalue %dx.types.CBufRet.f32 %943, 0
  %945 = fadd fast float %944, %942
  %946 = extractvalue %dx.types.CBufRet.f32 %943, 2
  %947 = fmul fast float %945, %946
  %948 = call float @dx.op.unary.f32(i32 23, float %947)  ; Log(value)
  %949 = extractvalue %dx.types.CBufRet.f32 %943, 3
  %950 = fmul fast float %949, %948
  %951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %952 = extractvalue %dx.types.CBufRet.f32 %951, 2
  %953 = fmul fast float %950, %952
  %954 = call float @dx.op.unary.f32(i32 7, float %953)  ; Saturate(value)
  %955 = uitofp i32 %933 to float
  %956 = uitofp i32 %936 to float
  %957 = fadd fast float %955, 5.000000e-01
  %958 = fadd fast float %956, 5.000000e-01
  %959 = fmul fast float %952, %957
  %960 = fmul fast float %952, %958
  %961 = fadd fast float %959, 0x3F0FFB4800000000
  %962 = fadd fast float %960, 0xBF0FFB4800000000
  %963 = call float @dx.op.binary.f32(i32 35, float %954, float %961)  ; FMax(a,b)
  %964 = call float @dx.op.binary.f32(i32 36, float %963, float %962)  ; FMin(a,b)
  %965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %966 = extractvalue %dx.types.CBufRet.f32 %965, 1
  %967 = extractvalue %dx.types.CBufRet.f32 %965, 2
  %968 = extractvalue %dx.types.CBufRet.f32 %965, 0
  %969 = fmul fast float %966, %964
  %970 = fadd fast float %968, %969
  %971 = fadd fast float %968, %967
  %972 = fsub fast float %966, %967
  %973 = fadd fast float %972, %968
  %974 = call float @dx.op.binary.f32(i32 35, float %970, float %971)  ; FMax(a,b)
  %975 = call float @dx.op.binary.f32(i32 36, float %974, float %973)  ; FMin(a,b)
  %976 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %913, float %914, float %975, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %977 = extractvalue %dx.types.ResRet.f32 %976, 0
  %978 = extractvalue %dx.types.ResRet.f32 %976, 1
  %979 = extractvalue %dx.types.ResRet.f32 %976, 2
  %980 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %913, float %914, float %975, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %981 = extractvalue %dx.types.ResRet.f32 %980, 0
  %982 = extractvalue %dx.types.ResRet.f32 %980, 1
  %983 = extractvalue %dx.types.ResRet.f32 %980, 2
  %984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %985 = extractvalue %dx.types.CBufRet.f32 %984, 1
  %986 = fmul fast float %985, %981
  %987 = fmul fast float %985, %982
  %988 = fmul fast float %985, %983
  br label %989

; <label>:989                                     ; preds = %938, %907
  %990 = phi float [ %977, %938 ], [ 1.000000e+00, %907 ]
  %991 = phi float [ %978, %938 ], [ 1.000000e+00, %907 ]
  %992 = phi float [ %979, %938 ], [ 1.000000e+00, %907 ]
  %993 = phi float [ %986, %938 ], [ 0.000000e+00, %907 ]
  %994 = phi float [ %987, %938 ], [ 0.000000e+00, %907 ]
  %995 = phi float [ %988, %938 ], [ 0.000000e+00, %907 ]
  %996 = fmul fast float %993, %788
  %997 = fmul fast float %994, %788
  %998 = fmul fast float %995, %788
  %999 = call float @dx.op.dot3.f32(i32 55, float %990, float %991, float %992, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1000 = call float @dx.op.dot3.f32(i32 55, float %996, float %997, float %998, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1001 = select i1 %106, float %999, float %990
  %1002 = select i1 %106, float %999, float %991
  %1003 = select i1 %106, float 1.000000e+00, float %992
  %1004 = select i1 %106, float %1000, float %996
  %1005 = select i1 %106, float 0.000000e+00, float %997
  %1006 = select i1 %106, float 0.000000e+00, float %998
  %1007 = fmul fast float %1001, %904
  %1008 = fmul fast float %1002, %905
  %1009 = fmul fast float %1003, %906
  %1010 = fadd fast float %1007, %1004
  %1011 = fadd fast float %1008, %1005
  %1012 = fadd fast float %1006, %1009
  %1013 = fmul fast float %1001, %890
  %1014 = fmul fast float %1002, %891
  %1015 = fmul fast float %1003, %892
  br label %1016

; <label>:1016                                    ; preds = %989, %902
  %1017 = phi float [ %765, %989 ], [ %43, %902 ]
  %1018 = phi float [ %1010, %989 ], [ %904, %902 ]
  %1019 = phi float [ %1011, %989 ], [ %905, %902 ]
  %1020 = phi float [ %1012, %989 ], [ %906, %902 ]
  %1021 = phi float [ %1013, %989 ], [ %890, %902 ]
  %1022 = phi float [ %1014, %989 ], [ %891, %902 ]
  %1023 = phi float [ %1015, %989 ], [ %892, %902 ]
  %1024 = phi float [ %990, %989 ], [ 1.000000e+00, %902 ]
  br i1 %773, label %1426, label %1025

; <label>:1025                                    ; preds = %1016
  %1026 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %19, float %28, float %29, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1027 = extractvalue %dx.types.ResRet.f32 %1026, 0
  %1028 = extractvalue %dx.types.ResRet.f32 %1026, 1
  %1029 = extractvalue %dx.types.ResRet.f32 %1026, 2
  %1030 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %19, float %28, float %29, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1031 = extractvalue %dx.types.ResRet.f32 %1030, 0
  %1032 = extractvalue %dx.types.ResRet.f32 %1030, 1
  %1033 = extractvalue %dx.types.ResRet.f32 %1030, 2
  %1034 = fmul fast float %1027, %788
  %1035 = fmul fast float %1028, %788
  %1036 = fmul fast float %1029, %788
  %1037 = fmul fast float %1031, %1024
  %1038 = call float @dx.op.dot3.f32(i32 55, float %1031, float %1032, float %1033, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1039 = call float @dx.op.dot3.f32(i32 55, float %1034, float %1035, float %1036, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1040 = select i1 %106, float %1038, float %1031
  %1041 = select i1 %106, float %1038, float %1032
  %1042 = select i1 %106, float 1.000000e+00, float %1033
  %1043 = select i1 %106, float %1039, float %1034
  %1044 = select i1 %106, float 0.000000e+00, float %1035
  %1045 = select i1 %106, float 0.000000e+00, float %1036
  %1046 = fmul fast float %1040, %1018
  %1047 = fmul fast float %1041, %1019
  %1048 = fmul fast float %1042, %1020
  %1049 = fadd fast float %1046, %1043
  %1050 = fadd fast float %1047, %1044
  %1051 = fadd fast float %1048, %1045
  %1052 = fmul fast float %1040, %1021
  %1053 = fmul fast float %1041, %1022
  %1054 = fmul fast float %1042, %1023
  %1055 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1056 = extractvalue %dx.types.CBufRet.i32 %1055, 0
  %1057 = icmp eq i32 %1056, 0
  br i1 %1057, label %1426, label %1058, !dx.controlflow.hints !70

; <label>:1058                                    ; preds = %1025
  %1059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1060 = extractvalue %dx.types.CBufRet.f32 %1059, 2
  %1061 = extractvalue %dx.types.CBufRet.f32 %1059, 3
  %1062 = fmul fast float %1060, %48
  %1063 = fmul fast float %1061, %49
  %1064 = fmul fast float %1062, 2.000000e+00
  %1065 = fmul fast float %1063, 2.000000e+00
  %1066 = fsub fast float 1.000000e+00, %1064
  %1067 = fsub fast float 1.000000e+00, %1065
  %1068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1069 = extractvalue %dx.types.CBufRet.f32 %1068, 0
  %1070 = extractvalue %dx.types.CBufRet.f32 %1068, 1
  %1071 = extractvalue %dx.types.CBufRet.f32 %1068, 2
  %1072 = fmul fast float %1066, %1069
  %1073 = fmul fast float %1066, %1070
  %1074 = fmul fast float %1066, %1071
  %1075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1076 = extractvalue %dx.types.CBufRet.f32 %1075, 0
  %1077 = extractvalue %dx.types.CBufRet.f32 %1075, 1
  %1078 = extractvalue %dx.types.CBufRet.f32 %1075, 2
  %1079 = fmul fast float %1067, %1076
  %1080 = fmul fast float %1067, %1077
  %1081 = fmul fast float %1067, %1078
  %1082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1083 = extractvalue %dx.types.CBufRet.f32 %1082, 0
  %1084 = extractvalue %dx.types.CBufRet.f32 %1082, 1
  %1085 = extractvalue %dx.types.CBufRet.f32 %1082, 2
  %1086 = fadd fast float %1079, %1083
  %1087 = fadd fast float %1086, %1072
  %1088 = fadd fast float %1080, %1084
  %1089 = fadd fast float %1088, %1073
  %1090 = fadd fast float %1081, %1085
  %1091 = fadd fast float %1090, %1074
  %1092 = fmul fast float %1087, %1017
  %1093 = fmul fast float %1089, %1017
  %1094 = fmul fast float %1091, %1017
  %1095 = fmul fast float %1092, %1092
  %1096 = fmul fast float %1093, %1093
  %1097 = fadd fast float %1095, %1096
  %1098 = fmul fast float %1094, %1094
  %1099 = fadd fast float %1097, %1098
  %1100 = call float @dx.op.unary.f32(i32 24, float %1099)  ; Sqrt(value)
  %1101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1102 = extractvalue %dx.types.CBufRet.f32 %1101, 0
  %1103 = fsub fast float %1100, %1102
  %1104 = extractvalue %dx.types.CBufRet.f32 %1101, 2
  %1105 = fmul fast float %1103, %1104
  %1106 = call float @dx.op.unary.f32(i32 7, float %1105)  ; Saturate(value)
  %1107 = fadd fast float %1106, -5.000000e-01
  %1108 = fmul fast float %1107, 2.000000e+00
  %1109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1110 = extractvalue %dx.types.CBufRet.f32 %1109, 2
  %1111 = call float @dx.op.binary.f32(i32 36, float %1110, float %1108)  ; FMin(a,b)
  %1112 = fsub fast float -0.000000e+00, %1110
  %1113 = fcmp fast ogt float %1111, %1112
  br i1 %1113, label %1114, label %1426, !dx.controlflow.hints !71

; <label>:1114                                    ; preds = %1058
  %1115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %1116 = extractvalue %dx.types.CBufRet.f32 %1115, 3
  %1117 = fcmp fast ogt float %1116, 0.000000e+00
  br i1 %1117, label %1118, label %1193, !dx.controlflow.hints !72

; <label>:1118                                    ; preds = %1114
  %1119 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %13, i32 0)  ; GetDimensions(handle,mipLevel)
  %1120 = extractvalue %dx.types.Dimensions %1119, 0
  %1121 = sitofp i32 %1120 to float
  %1122 = extractvalue %dx.types.Dimensions %1119, 1
  %1123 = sitofp i32 %1122 to float
  %1124 = fmul fast float %1062, %1121
  %1125 = fmul fast float %1063, %1123
  %1126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1127 = extractvalue %dx.types.CBufRet.f32 %1126, 1
  %1128 = fsub fast float -0.000000e+00, %1127
  %1129 = fptoui float %1128 to i32
  %1130 = fptoui float %1124 to i32
  %1131 = fptoui float %1125 to i32
  %1132 = and i32 %1129, 31
  %1133 = lshr i32 %1130, %1132
  %1134 = lshr i32 %1131, %1132
  %1135 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %13, i32 %1129, i32 %1133, i32 %1134, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1136 = extractvalue %dx.types.ResRet.f32 %1135, 0
  %1137 = fcmp fast olt float %1136, -1.000000e+00
  %1138 = fcmp fast ogt float %1136, -1.000000e+00
  %1139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1140 = extractvalue %dx.types.CBufRet.f32 %1139, 1
  %1141 = select i1 %1138, float %1140, float 1.000000e+00
  %1142 = fadd fast float %1136, 1.000000e+00
  %1143 = fmul fast float %1141, %1142
  %1144 = call float @dx.op.unary.f32(i32 6, float %1143)  ; FAbs(value)
  %1145 = extractvalue %dx.types.CBufRet.f32 %1139, 3
  %1146 = fcmp fast oge float %1144, %1145
  %1147 = select i1 %1146, float 0x4197782600000000, float %1144
  %1148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %1149 = extractvalue %dx.types.CBufRet.f32 %1148, 0
  %1150 = extractvalue %dx.types.CBufRet.f32 %1148, 1
  %1151 = extractvalue %dx.types.CBufRet.f32 %1148, 2
  %1152 = select i1 %1137, float %1149, float %1069
  %1153 = select i1 %1137, float %1150, float %1070
  %1154 = select i1 %1137, float %1151, float %1071
  %1155 = fmul fast float %1152, %1066
  %1156 = fmul fast float %1153, %1066
  %1157 = fmul fast float %1154, %1066
  %1158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %1159 = extractvalue %dx.types.CBufRet.f32 %1158, 0
  %1160 = extractvalue %dx.types.CBufRet.f32 %1158, 1
  %1161 = extractvalue %dx.types.CBufRet.f32 %1158, 2
  %1162 = select i1 %1137, float %1159, float %1076
  %1163 = select i1 %1137, float %1160, float %1077
  %1164 = select i1 %1137, float %1161, float %1078
  %1165 = fmul fast float %1162, %1067
  %1166 = fmul fast float %1163, %1067
  %1167 = fmul fast float %1164, %1067
  %1168 = fadd fast float %1165, %1155
  %1169 = fadd fast float %1166, %1156
  %1170 = fadd fast float %1167, %1157
  %1171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %1172 = extractvalue %dx.types.CBufRet.f32 %1171, 0
  %1173 = extractvalue %dx.types.CBufRet.f32 %1171, 1
  %1174 = extractvalue %dx.types.CBufRet.f32 %1171, 2
  %1175 = select i1 %1137, float %1172, float %1083
  %1176 = select i1 %1137, float %1173, float %1084
  %1177 = select i1 %1137, float %1174, float %1085
  %1178 = fadd fast float %1168, %1175
  %1179 = fadd fast float %1169, %1176
  %1180 = fadd fast float %1170, %1177
  %1181 = fmul fast float %1178, %1147
  %1182 = fmul fast float %1179, %1147
  %1183 = fmul fast float %1180, %1147
  %1184 = fmul fast float %1181, %1181
  %1185 = fmul fast float %1182, %1182
  %1186 = fadd fast float %1184, %1185
  %1187 = fmul fast float %1183, %1183
  %1188 = fadd fast float %1186, %1187
  %1189 = call float @dx.op.unary.f32(i32 24, float %1188)  ; Sqrt(value)
  %1190 = fsub fast float %1189, %1102
  %1191 = fmul fast float %1190, %1104
  %1192 = call float @dx.op.unary.f32(i32 7, float %1191)  ; Saturate(value)
  br label %1193

; <label>:1193                                    ; preds = %1118, %1114
  %1194 = phi float [ %1192, %1118 ], [ 1.000000e+00, %1114 ]
  %1195 = fmul fast float %1111, 5.000000e-01
  %1196 = fadd fast float %1195, 5.000000e-01
  %1197 = call float @dx.op.unary.f32(i32 22, float %1196)  ; Frc(value)
  %1198 = call float @dx.op.unary.f32(i32 27, float %1197)  ; Round_ni(value)
  %1199 = call float @dx.op.unary.f32(i32 22, float %1197)  ; Frc(value)
  %1200 = fmul fast float %1199, 2.000000e+00
  %1201 = fadd fast float %1200, -1.000000e+00
  %1202 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %19, float %1062, float %1063, float %1198, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1203 = extractvalue %dx.types.ResRet.f32 %1202, 0
  %1204 = extractvalue %dx.types.ResRet.f32 %1202, 1
  %1205 = extractvalue %dx.types.ResRet.f32 %1202, 2
  %1206 = extractvalue %dx.types.ResRet.f32 %1202, 3
  %1207 = fadd fast float %1203, -5.000000e-01
  %1208 = fadd fast float %1205, -5.000000e-01
  %1209 = fmul fast float %1207, 0xBFD5555560000000
  %1210 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1208, float %1209)  ; FMad(a,b,c)
  %1211 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1204, float 0.000000e+00)  ; FMad(a,b,c)
  %1212 = fadd fast float %1211, %1206
  %1213 = fmul fast float %1207, -7.500000e-01
  %1214 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1208, float %1213)  ; FMad(a,b,c)
  %1215 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1204, float 0.000000e+00)  ; FMad(a,b,c)
  %1216 = fadd fast float %1215, %1206
  %1217 = call float @dx.op.binary.f32(i32 35, float %1210, float -1.000000e+00)  ; FMax(a,b)
  %1218 = call float @dx.op.binary.f32(i32 35, float %1212, float -1.000000e+00)  ; FMax(a,b)
  %1219 = call float @dx.op.binary.f32(i32 35, float %1214, float -1.000000e+00)  ; FMax(a,b)
  %1220 = call float @dx.op.binary.f32(i32 35, float %1216, float -1.000000e+00)  ; FMax(a,b)
  %1221 = call float @dx.op.binary.f32(i32 36, float %1217, float 1.000000e+00)  ; FMin(a,b)
  %1222 = call float @dx.op.binary.f32(i32 36, float %1218, float 1.000000e+00)  ; FMin(a,b)
  %1223 = call float @dx.op.binary.f32(i32 36, float %1219, float 1.000000e+00)  ; FMin(a,b)
  %1224 = call float @dx.op.binary.f32(i32 36, float %1220, float 1.000000e+00)  ; FMin(a,b)
  %1225 = fcmp fast olt float %1221, 0x3FEFFF8020000000
  br i1 %1225, label %1226, label %1341, !dx.controlflow.hints !73

; <label>:1226                                    ; preds = %1193
  %1227 = extractvalue %dx.types.CBufRet.f32 %1109, 3
  %1228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1229 = extractvalue %dx.types.CBufRet.f32 %1228, 0
  %1230 = extractvalue %dx.types.CBufRet.f32 %1228, 1
  %1231 = extractvalue %dx.types.CBufRet.f32 %1228, 2
  %1232 = extractvalue %dx.types.CBufRet.f32 %1228, 3
  %1233 = fsub fast float %1229, %1221
  %1234 = fsub fast float %1230, %1222
  %1235 = fsub fast float %1231, %1223
  %1236 = fsub fast float %1232, %1224
  %1237 = fmul fast float %1233, %1227
  %1238 = fmul fast float %1234, %1227
  %1239 = fmul fast float %1235, %1227
  %1240 = fmul fast float %1236, %1227
  %1241 = fadd fast float %1237, %1221
  %1242 = fadd fast float %1238, %1222
  %1243 = fsub fast float -0.000000e+00, %1242
  %1244 = fadd fast float %1239, %1223
  %1245 = fadd fast float %1240, %1224
  %1246 = fmul fast float %1241, %1241
  %1247 = fsub fast float %1242, %1246
  %1248 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1247)  ; FMax(a,b)
  %1249 = fdiv fast float 1.000000e+00, %1248
  %1250 = fmul fast float %1242, %1241
  %1251 = fsub fast float %1244, %1250
  %1252 = fsub fast float %1201, %1241
  %1253 = fmul fast float %1201, %1201
  %1254 = fsub fast float %1253, %1242
  %1255 = fmul fast float %1252, %1249
  %1256 = fmul fast float %1255, %1251
  %1257 = fsub fast float %1254, %1256
  %1258 = fmul fast float %1242, %1242
  %1259 = fsub fast float %1245, %1258
  %1260 = fmul fast float %1251, %1251
  %1261 = fmul fast float %1260, %1249
  %1262 = fsub fast float %1259, %1261
  %1263 = fdiv fast float %1257, %1262
  %1264 = fmul fast float %1251, %1263
  %1265 = fsub fast float %1252, %1264
  %1266 = fmul fast float %1265, %1249
  %1267 = fmul fast float %1266, %1241
  %1268 = fsub fast float 1.000000e+00, %1267
  %1269 = fmul fast float %1242, %1263
  %1270 = fsub fast float %1268, %1269
  %1271 = fmul fast float %1266, %1266
  %1272 = fmul fast float %1263, 4.000000e+00
  %1273 = fmul fast float %1272, %1270
  %1274 = fsub fast float %1271, %1273
  %1275 = call float @dx.op.unary.f32(i32 24, float %1274)  ; Sqrt(value)
  %1276 = fcmp fast oge float %1266, 0.000000e+00
  %1277 = fsub fast float -0.000000e+00, %1275
  %1278 = select i1 %1276, float %1277, float %1275
  %1279 = fsub fast float %1278, %1266
  %1280 = fdiv fast float %1279, %1263
  %1281 = fdiv fast float %1270, %1279
  %1282 = fmul fast float %1280, 5.000000e-01
  %1283 = fmul fast float %1281, 2.000000e+00
  %1284 = select i1 %1276, float %1282, float %1283
  %1285 = select i1 %1276, float %1283, float %1282
  %1286 = call float @dx.op.binary.f32(i32 35, float %1284, float %1285)  ; FMax(a,b)
  %1287 = call float @dx.op.binary.f32(i32 36, float %1284, float %1285)  ; FMin(a,b)
  %1288 = fcmp fast ogt float %1201, %1287
  br i1 %1288, label %1289, label %1299

; <label>:1289                                    ; preds = %1226
  %1290 = fsub fast float %1201, %1287
  %1291 = fsub fast float %1286, %1287
  %1292 = fmul fast float %1290, %1291
  %1293 = fmul fast float %1286, %1201
  %1294 = fadd fast float %1286, %1201
  %1295 = fmul fast float %1294, %1241
  %1296 = fadd fast float %1293, %1242
  %1297 = fsub fast float %1296, %1295
  %1298 = fdiv fast float %1297, %1292
  br label %1299

; <label>:1299                                    ; preds = %1289, %1226
  %1300 = phi float [ %1298, %1289 ], [ 0.000000e+00, %1226 ]
  %1301 = fcmp fast ogt float %1201, %1286
  %1302 = fsub fast float %1201, %1286
  br i1 %1301, label %1303, label %1313

; <label>:1303                                    ; preds = %1299
  %1304 = fsub fast float %1286, %1287
  %1305 = fmul fast float %1304, %1302
  %1306 = fmul fast float %1287, %1201
  %1307 = fadd fast float %1287, %1201
  %1308 = fmul fast float %1307, %1241
  %1309 = fsub fast float %1243, %1306
  %1310 = fadd fast float %1309, %1308
  %1311 = fdiv fast float %1310, %1305
  %1312 = fadd fast float %1311, %1300
  br label %1313

; <label>:1313                                    ; preds = %1303, %1299
  %1314 = phi float [ %1312, %1303 ], [ %1300, %1299 ]
  %1315 = fsub fast float %1201, %1287
  %1316 = fmul fast float %1315, %1302
  %1317 = fmul fast float %1287, %1286
  %1318 = fadd fast float %1287, %1286
  %1319 = fmul fast float %1318, %1241
  %1320 = fadd fast float %1317, %1242
  %1321 = fsub fast float %1320, %1319
  %1322 = fdiv fast float %1321, %1316
  %1323 = call float @dx.op.unary.f32(i32 7, float %1314)  ; Saturate(value)
  %1324 = fcmp fast oeq float %903, 0.000000e+00
  %1325 = extractvalue %dx.types.CBufRet.f32 %1109, 0
  %1326 = fcmp fast oeq float %1325, 0.000000e+00
  %1327 = or i1 %1324, %1326
  %1328 = fmul fast float %1325, 2.000000e+00
  %1329 = fadd fast float %1110, %1111
  %1330 = fdiv fast float %1329, %1328
  %1331 = call float @dx.op.unary.f32(i32 7, float %1330)  ; Saturate(value)
  %1332 = fmul fast float %1331, 2.000000e+00
  %1333 = fsub fast float 3.000000e+00, %1332
  %1334 = fmul fast float %1331, %1331
  %1335 = fmul fast float %1334, %1333
  %1336 = select i1 %1327, float 1.000000e+00, float %1335
  %1337 = fmul fast float %1322, %903
  %1338 = fadd fast float %1323, %1337
  %1339 = call float @dx.op.unary.f32(i32 7, float %1338)  ; Saturate(value)
  %1340 = fmul fast float %1336, %1339
  br label %1341

; <label>:1341                                    ; preds = %1313, %1193
  %1342 = phi float [ %1340, %1313 ], [ 0.000000e+00, %1193 ]
  %1343 = fsub fast float 1.000000e+00, %1342
  %1344 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %19, float %1062, float %1063, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1345 = extractvalue %dx.types.ResRet.f32 %1344, 0
  %1346 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1347 = extractvalue %dx.types.CBufRet.i32 %1346, 2
  %1348 = icmp eq i32 %1347, 0
  br i1 %1348, label %1354, label %1349

; <label>:1349                                    ; preds = %1341
  %1350 = call float @dx.op.unary.f32(i32 7, float %1342)  ; Saturate(value)
  %1351 = fadd fast float %1345, -1.000000e+00
  %1352 = fmul fast float %1350, %1351
  %1353 = fadd fast float %1352, 1.000000e+00
  br label %1354

; <label>:1354                                    ; preds = %1349, %1341
  %1355 = phi float [ %1353, %1349 ], [ %1343, %1341 ]
  br i1 %1117, label %1356, label %1374

; <label>:1356                                    ; preds = %1354
  %1357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1358 = extractvalue %dx.types.CBufRet.f32 %1357, 1
  %1359 = fsub fast float %1194, %1358
  %1360 = call float @dx.op.unary.f32(i32 7, float %1359)  ; Saturate(value)
  %1361 = fsub fast float %1194, %1116
  %1362 = call float @dx.op.unary.f32(i32 7, float %1361)  ; Saturate(value)
  %1363 = fsub fast float %1360, %1362
  %1364 = fsub fast float %1196, %1362
  %1365 = fdiv fast float %1364, %1363
  %1366 = call float @dx.op.unary.f32(i32 7, float %1365)  ; Saturate(value)
  %1367 = fmul fast float %1366, 2.000000e+00
  %1368 = fsub fast float 3.000000e+00, %1367
  %1369 = fsub fast float %1345, %1355
  %1370 = fmul fast float %1366, %1366
  %1371 = fmul fast float %1370, %1369
  %1372 = fmul fast float %1371, %1368
  %1373 = fadd fast float %1372, %1355
  br label %1374

; <label>:1374                                    ; preds = %1356, %1354
  %1375 = phi float [ %1373, %1356 ], [ %1355, %1354 ]
  %1376 = call float @dx.op.binary.f32(i32 35, float %1345, float %1375)  ; FMax(a,b)
  %1377 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %1378 = extractvalue %dx.types.CBufRet.i32 %1377, 2
  %1379 = and i32 %1378, 1
  %1380 = icmp eq i32 %1379, 0
  %1381 = fcmp fast une float %1376, 1.000000e+00
  %1382 = and i1 %1381, %1380
  br i1 %1382, label %1383, label %1402

; <label>:1383                                    ; preds = %1374
  %1384 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %19, float %1062, float %1063, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1385 = extractvalue %dx.types.ResRet.f32 %1384, 0
  %1386 = extractvalue %dx.types.ResRet.f32 %1384, 1
  %1387 = extractvalue %dx.types.ResRet.f32 %1384, 2
  %1388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1389 = extractvalue %dx.types.CBufRet.f32 %1388, 1
  %1390 = fmul fast float %1389, %1385
  %1391 = fmul fast float %1389, %1386
  %1392 = fmul fast float %1389, %1387
  %1393 = fcmp fast ogt float %1345, 0x3FEFFF2E40000000
  %1394 = fsub fast float 1.000000e+00, %1376
  %1395 = fsub fast float 1.000000e+00, %1345
  %1396 = fdiv fast float %1394, %1395
  %1397 = call float @dx.op.unary.f32(i32 7, float %1396)  ; Saturate(value)
  %1398 = select i1 %1393, float 0.000000e+00, float %1397
  %1399 = fmul fast float %1390, %1398
  %1400 = fmul fast float %1391, %1398
  %1401 = fmul fast float %1392, %1398
  br label %1402

; <label>:1402                                    ; preds = %1383, %1374
  %1403 = phi float [ 0.000000e+00, %1374 ], [ %1399, %1383 ]
  %1404 = phi float [ 0.000000e+00, %1374 ], [ %1400, %1383 ]
  %1405 = phi float [ 0.000000e+00, %1374 ], [ %1401, %1383 ]
  %1406 = fmul fast float %1403, %788
  %1407 = fmul fast float %1404, %788
  %1408 = fmul fast float %1405, %788
  %1409 = fmul fast float %1376, %1037
  %1410 = call float @dx.op.dot3.f32(i32 55, float %1376, float %1376, float %1376, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1411 = call float @dx.op.dot3.f32(i32 55, float %1406, float %1407, float %1408, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1412 = select i1 %106, float %1410, float %1376
  %1413 = select i1 %106, float 1.000000e+00, float %1376
  %1414 = select i1 %106, float %1411, float %1406
  %1415 = select i1 %106, float 0.000000e+00, float %1407
  %1416 = select i1 %106, float 0.000000e+00, float %1408
  %1417 = fmul fast float %1412, %1049
  %1418 = fmul fast float %1412, %1050
  %1419 = fmul fast float %1413, %1051
  %1420 = fadd fast float %1417, %1414
  %1421 = fadd fast float %1418, %1415
  %1422 = fadd fast float %1416, %1419
  %1423 = fmul fast float %1412, %1052
  %1424 = fmul fast float %1412, %1053
  %1425 = fmul fast float %1413, %1054
  br label %1426

; <label>:1426                                    ; preds = %1402, %1058, %1025, %1016
  %1427 = phi float [ %1018, %1016 ], [ %1049, %1025 ], [ %1420, %1402 ], [ %1049, %1058 ]
  %1428 = phi float [ %1019, %1016 ], [ %1050, %1025 ], [ %1421, %1402 ], [ %1050, %1058 ]
  %1429 = phi float [ %1020, %1016 ], [ %1051, %1025 ], [ %1422, %1402 ], [ %1051, %1058 ]
  %1430 = phi float [ %1021, %1016 ], [ %1052, %1025 ], [ %1423, %1402 ], [ %1052, %1058 ]
  %1431 = phi float [ %1022, %1016 ], [ %1053, %1025 ], [ %1424, %1402 ], [ %1053, %1058 ]
  %1432 = phi float [ %1023, %1016 ], [ %1054, %1025 ], [ %1425, %1402 ], [ %1054, %1058 ]
  %1433 = phi float [ %1024, %1016 ], [ %1037, %1025 ], [ %1409, %1402 ], [ %1037, %1058 ]
  %1434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1435 = extractvalue %dx.types.CBufRet.f32 %1434, 2
  %1436 = extractvalue %dx.types.CBufRet.f32 %1434, 3
  %1437 = fmul fast float %1435, %48
  %1438 = fmul fast float %1436, %49
  %1439 = call float @dx.op.unary.f32(i32 7, float %1437)  ; Saturate(value)
  %1440 = call float @dx.op.unary.f32(i32 7, float %1438)  ; Saturate(value)
  %1441 = select i1 %773, i32 2, i32 0
  %1442 = or i32 %1441, 1
  %1443 = uitofp i32 %1442 to float
  %1444 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %1439, float %1440, float %1443, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1445 = extractvalue %dx.types.ResRet.f32 %1444, 0
  %1446 = extractvalue %dx.types.ResRet.f32 %1444, 1
  %1447 = extractvalue %dx.types.ResRet.f32 %1444, 2
  %1448 = extractvalue %dx.types.ResRet.f32 %1444, 3
  %1449 = add nuw nsw i32 %1441, 2
  %1450 = uitofp i32 %1449 to float
  %1451 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %1439, float %1440, float %1450, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1452 = extractvalue %dx.types.ResRet.f32 %1451, 0
  %1453 = extractvalue %dx.types.ResRet.f32 %1451, 1
  %1454 = extractvalue %dx.types.ResRet.f32 %1451, 2
  %1455 = extractvalue %dx.types.ResRet.f32 %1451, 3
  %1456 = call float @dx.op.binary.f32(i32 35, float %1446, float %1447)  ; FMax(a,b)
  %1457 = call float @dx.op.binary.f32(i32 35, float %1445, float %1456)  ; FMax(a,b)
  %1458 = call float @dx.op.binary.f32(i32 35, float %1457, float %1448)  ; FMax(a,b)
  %1459 = call float @dx.op.binary.f32(i32 36, float %1453, float %1454)  ; FMin(a,b)
  %1460 = call float @dx.op.binary.f32(i32 36, float %1452, float %1459)  ; FMin(a,b)
  %1461 = call float @dx.op.binary.f32(i32 36, float %1460, float %1455)  ; FMin(a,b)
  %1462 = fmul fast float %1458, 2.550000e+02
  %1463 = fadd fast float %1462, 0x3F70101020000000
  %1464 = fptoui float %1463 to i32
  %1465 = fmul fast float %1461, 2.550000e+02
  %1466 = fadd fast float %1465, 0x3F70101020000000
  %1467 = fptoui float %1466 to i32
  %1468 = icmp ult i32 %1464, %1467
  br i1 %1468, label %1469, label %1521

; <label>:1469                                    ; preds = %1426
  %1470 = fcmp fast ogt float %42, 9.843750e-01
  %1471 = fadd fast float %1017, -4.000000e+00
  %1472 = select i1 %1470, float -4.000000e+00, float %1471
  %1473 = call float @dx.op.binary.f32(i32 35, float %1472, float 0.000000e+00)  ; FMax(a,b)
  %1474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1475 = extractvalue %dx.types.CBufRet.f32 %1474, 0
  %1476 = fadd fast float %1475, %1473
  %1477 = extractvalue %dx.types.CBufRet.f32 %1474, 2
  %1478 = fmul fast float %1476, %1477
  %1479 = call float @dx.op.unary.f32(i32 23, float %1478)  ; Log(value)
  %1480 = extractvalue %dx.types.CBufRet.f32 %1474, 3
  %1481 = fmul fast float %1480, %1479
  %1482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1483 = extractvalue %dx.types.CBufRet.f32 %1482, 2
  %1484 = fmul fast float %1481, %1483
  %1485 = call float @dx.op.unary.f32(i32 7, float %1484)  ; Saturate(value)
  %1486 = uitofp i32 %1464 to float
  %1487 = uitofp i32 %1467 to float
  %1488 = fadd fast float %1486, 5.000000e-01
  %1489 = fadd fast float %1487, 5.000000e-01
  %1490 = fmul fast float %1483, %1488
  %1491 = fmul fast float %1483, %1489
  %1492 = fadd fast float %1490, 0x3F0FFB4800000000
  %1493 = fadd fast float %1491, 0xBF0FFB4800000000
  %1494 = call float @dx.op.binary.f32(i32 35, float %1485, float %1492)  ; FMax(a,b)
  %1495 = call float @dx.op.binary.f32(i32 36, float %1494, float %1493)  ; FMin(a,b)
  %1496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1497 = extractvalue %dx.types.CBufRet.f32 %1496, 1
  %1498 = extractvalue %dx.types.CBufRet.f32 %1496, 2
  %1499 = extractvalue %dx.types.CBufRet.f32 %1496, 0
  %1500 = select i1 %773, float %1499, float 0.000000e+00
  %1501 = fmul fast float %1497, %1495
  %1502 = fadd fast float %1500, %1501
  %1503 = fadd fast float %1500, %1498
  %1504 = fsub fast float %1497, %1498
  %1505 = fadd fast float %1504, %1500
  %1506 = call float @dx.op.binary.f32(i32 35, float %1502, float %1503)  ; FMax(a,b)
  %1507 = call float @dx.op.binary.f32(i32 36, float %1506, float %1505)  ; FMin(a,b)
  %1508 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %1439, float %1440, float %1507, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1509 = extractvalue %dx.types.ResRet.f32 %1508, 0
  %1510 = extractvalue %dx.types.ResRet.f32 %1508, 1
  %1511 = extractvalue %dx.types.ResRet.f32 %1508, 2
  %1512 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %1439, float %1440, float %1507, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1513 = extractvalue %dx.types.ResRet.f32 %1512, 0
  %1514 = extractvalue %dx.types.ResRet.f32 %1512, 1
  %1515 = extractvalue %dx.types.ResRet.f32 %1512, 2
  %1516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1517 = extractvalue %dx.types.CBufRet.f32 %1516, 1
  %1518 = fmul fast float %1517, %1513
  %1519 = fmul fast float %1517, %1514
  %1520 = fmul fast float %1517, %1515
  br label %1521

; <label>:1521                                    ; preds = %1469, %1426
  %1522 = phi float [ %1509, %1469 ], [ 1.000000e+00, %1426 ]
  %1523 = phi float [ %1510, %1469 ], [ 1.000000e+00, %1426 ]
  %1524 = phi float [ %1511, %1469 ], [ 1.000000e+00, %1426 ]
  %1525 = phi float [ %1518, %1469 ], [ 0.000000e+00, %1426 ]
  %1526 = phi float [ %1519, %1469 ], [ 0.000000e+00, %1426 ]
  %1527 = phi float [ %1520, %1469 ], [ 0.000000e+00, %1426 ]
  %1528 = fmul fast float %1525, %788
  %1529 = fmul fast float %1526, %788
  %1530 = fmul fast float %1527, %788
  %1531 = fmul fast float %1522, %1433
  %1532 = call float @dx.op.dot3.f32(i32 55, float %1522, float %1523, float %1524, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1533 = call float @dx.op.dot3.f32(i32 55, float %1528, float %1529, float %1530, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1534 = select i1 %106, float %1532, float %1522
  %1535 = select i1 %106, float %1532, float %1523
  %1536 = select i1 %106, float 1.000000e+00, float %1524
  %1537 = select i1 %106, float %1533, float %1528
  %1538 = select i1 %106, float 0.000000e+00, float %1529
  %1539 = select i1 %106, float 0.000000e+00, float %1530
  %1540 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1541 = extractvalue %dx.types.CBufRet.i32 %1540, 3
  %1542 = and i32 %1541, 3
  %1543 = icmp ne i32 %1542, 0
  %1544 = and i32 %1541, 4
  %1545 = icmp ne i32 %1544, 0
  %1546 = and i1 %1543, %1545
  %1547 = and i1 %106, %1546
  br i1 %1547, label %1548, label %1554

; <label>:1548                                    ; preds = %1521
  %1549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1550 = extractvalue %dx.types.CBufRet.f32 %1549, 1
  %1551 = fadd fast float %1531, -1.000000e+00
  %1552 = fmul fast float %1550, %1551
  %1553 = fadd fast float %1552, 1.000000e+00
  br label %1554

; <label>:1554                                    ; preds = %1548, %1521
  %1555 = phi float [ %1553, %1548 ], [ %1531, %1521 ]
  %1556 = fadd fast float %1430, %1427
  %1557 = fmul fast float %1534, %1556
  %1558 = fadd fast float %1557, %1537
  %1559 = fadd fast float %1431, %1428
  %1560 = fmul fast float %1535, %1559
  %1561 = fadd fast float %1560, %1538
  %1562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1563 = extractvalue %dx.types.CBufRet.f32 %1562, 0
  br i1 %106, label %1564, label %1585

; <label>:1564                                    ; preds = %1554
  %1565 = fadd fast float %1558, %1561
  %1566 = fmul fast float %1563, %1565
  %1567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1568 = extractvalue %dx.types.CBufRet.f32 %1567, 3
  %1569 = extractvalue %dx.types.CBufRet.f32 %792, 1
  %1570 = fsub fast float %795, %1569
  %1571 = extractvalue %dx.types.CBufRet.f32 %792, 2
  %1572 = fmul fast float %1570, %1571
  %1573 = call float @dx.op.unary.f32(i32 7, float %1572)  ; Saturate(value)
  %1574 = fsub fast float %1573, %1568
  %1575 = fmul fast float %1574, %1555
  %1576 = fadd fast float %1575, %1568
  %1577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1578 = extractvalue %dx.types.CBufRet.f32 %1577, 0
  %1579 = fsub fast float %1576, %1578
  %1580 = fmul fast float %1579, 1.000000e+01
  %1581 = call float @dx.op.unary.f32(i32 7, float %1580)  ; Saturate(value)
  %1582 = fmul fast float %1581, %788
  %1583 = fsub fast float %788, %1582
  %1584 = fmul fast float %1583, %1576
  br label %1597

; <label>:1585                                    ; preds = %1554
  %1586 = fadd fast float %1432, %1429
  %1587 = fmul fast float %1536, %1586
  %1588 = fadd fast float %1587, %1539
  %1589 = fmul fast float %1563, %1558
  %1590 = fmul fast float %1563, %1561
  %1591 = fmul fast float %1563, %1588
  %1592 = call float @dx.op.binary.f32(i32 35, float %1590, float %1591)  ; FMax(a,b)
  %1593 = call float @dx.op.binary.f32(i32 35, float %1589, float %1592)  ; FMax(a,b)
  %1594 = call float @dx.op.binary.f32(i32 35, float %1593, float %788)  ; FMax(a,b)
  %1595 = fcmp fast ugt float %1594, 0x3F10000000000000
  br i1 %1595, label %1597, label %1596

; <label>:1596                                    ; preds = %1585
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1597

; <label>:1597                                    ; preds = %1596, %1585, %1564
  %1598 = phi float [ %1566, %1564 ], [ %1589, %1596 ], [ %1589, %1585 ]
  %1599 = phi float [ %1584, %1564 ], [ %1590, %1596 ], [ %1590, %1585 ]
  %1600 = phi float [ %1583, %1564 ], [ %1591, %1596 ], [ %1591, %1585 ]
  %1601 = phi float [ %1583, %1564 ], [ %788, %1596 ], [ %788, %1585 ]
  %1602 = fadd fast float %545, 0x3FE3C6EF40000000
  %1603 = call float @dx.op.unary.f32(i32 22, float %1602)  ; Frc(value)
  %1604 = call float @dx.op.unary.f32(i32 23, float %1598)  ; Log(value)
  %1605 = fadd fast float %1604, -7.000000e+00
  %1606 = call float @dx.op.unary.f32(i32 21, float %1605)  ; Exp(value)
  %1607 = fmul fast float %1603, 2.000000e+00
  %1608 = fadd fast float %1607, -1.000000e+00
  %1609 = fmul fast float %1606, %1608
  %1610 = fcmp fast ogt float %1598, 0.000000e+00
  %1611 = select i1 %1610, float %1609, float 0.000000e+00
  %1612 = fadd fast float %1611, %1598
  %1613 = fadd fast float %545, 0x3FF3C6EF40000000
  %1614 = call float @dx.op.unary.f32(i32 22, float %1613)  ; Frc(value)
  %1615 = call float @dx.op.unary.f32(i32 23, float %1599)  ; Log(value)
  %1616 = fadd fast float %1615, -7.000000e+00
  %1617 = call float @dx.op.unary.f32(i32 21, float %1616)  ; Exp(value)
  %1618 = fmul fast float %1614, 2.000000e+00
  %1619 = fadd fast float %1618, -1.000000e+00
  %1620 = fmul fast float %1617, %1619
  %1621 = fcmp fast ogt float %1599, 0.000000e+00
  %1622 = select i1 %1621, float %1620, float 0.000000e+00
  %1623 = fadd fast float %1622, %1599
  %1624 = fadd fast float %545, 0x3FFDAA66E0000000
  %1625 = call float @dx.op.unary.f32(i32 22, float %1624)  ; Frc(value)
  %1626 = call float @dx.op.unary.f32(i32 23, float %1600)  ; Log(value)
  %1627 = fadd fast float %1626, -6.000000e+00
  %1628 = call float @dx.op.unary.f32(i32 21, float %1627)  ; Exp(value)
  %1629 = fmul fast float %1625, 2.000000e+00
  %1630 = fadd fast float %1629, -1.000000e+00
  %1631 = fmul fast float %1628, %1630
  %1632 = fcmp fast ogt float %1600, 0.000000e+00
  %1633 = select i1 %1632, float %1631, float 0.000000e+00
  %1634 = fadd fast float %1633, %1600
  %1635 = select i1 %106, float %1599, float %1623
  %1636 = select i1 %106, float %1600, float %1634
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1637 = call float @dx.op.binary.f32(i32 36, float %1612, float 3.225500e+04)  ; FMin(a,b)
  %1638 = call float @dx.op.binary.f32(i32 36, float %1635, float 3.225500e+04)  ; FMin(a,b)
  %1639 = call float @dx.op.binary.f32(i32 36, float %1636, float 3.225500e+04)  ; FMin(a,b)
  %1640 = call float @dx.op.binary.f32(i32 36, float %1601, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1637)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1638)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1639)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1640)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1601)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1601)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1601)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1601)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 77, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
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
!24 = !{i32 15, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 7, i32 0, !7}
!25 = !{i32 16, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 3, i32 1, i32 11, i32 0, null}
!26 = !{i32 17, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 46, i32 1, i32 4, i32 0, !7}
!27 = !{!28, !29}
!28 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!29 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!30 = !{!31, !32, !33, !34}
!31 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!32 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!33 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!34 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!35 = !{[30 x i32] [i32 28, i32 8, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 254, i32 255, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255, i32 255, i32 7, i32 255, i32 255, i32 0, i32 0, i32 3, i32 3, i32 7, i32 7, i32 255, i32 0, i32 0, i32 0]}
!36 = !{void ()* @ps_main, !"ps_main", !37, !4, !60}
!37 = !{!38, !56, null}
!38 = !{!39, !42, !43, !45, !47, !49, !51, !53, !55}
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
!51 = !{i32 6, !"COLOR", i8 5, i8 0, !46, i8 1, i32 1, i8 3, i32 6, i8 0, !52}
!52 = !{i32 3, i32 1}
!53 = !{i32 7, !"COLOR", i8 5, i8 0, !54, i8 1, i32 1, i8 1, i32 6, i8 3, null}
!54 = !{i32 4}
!55 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !40, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!56 = !{!57, !58}
!57 = !{i32 0, !"SV_Target", i8 9, i8 16, !40, i8 0, i32 1, i8 4, i32 0, i8 0, !41}
!58 = !{i32 1, !"SV_Target", i8 9, i8 16, !59, i8 0, i32 1, i8 4, i32 1, i8 0, !41}
!59 = !{i32 1}
!60 = !{i32 0, i64 24}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 1}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 1}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 1}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 1}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 1}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 1}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 1}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 1}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 1}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}

