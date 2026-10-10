;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float   xyzw
; TEXCOORD                 0   xy          2     NONE   float       
; TEXCOORD                 3   xyzw        3     NONE   float   xy w
; TEXCOORD                 5   xy          4     NONE   float   xy  
; TEXCOORD                 8   xyzw        5     NONE   float   xyzw
; COLOR                    3   xyz         6     NONE    uint   xy  
; COLOR                    4      w        6     NONE    uint      w
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
; shader hash: fad5c4bb1b564a363e1f15db2c0d2c5f
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
;                                   texture    byte         r/o     T17             t4     1
;                                   texture     f32          3d     T18     t46,space2     1
;
;
; ViewId state:
;
; Number of inputs: 28, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 7, 12, 13, 15, 16, 17, 20, 21, 22, 23, 24, 27 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 5, 7, 12, 13, 15, 16, 17, 20, 21, 22, 23, 24, 25, 27 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 6, 7, 12, 13, 15, 16, 17, 22, 23, 24, 25, 27 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 7, 12, 13, 16, 17, 24, 25, 27 }
;   output 4 depends on inputs: { 0, 1, 2, 3, 7, 12, 13, 16, 17, 24, 25, 27 }
;   output 5 depends on inputs: { 0, 1, 2, 3, 7, 12, 13, 16, 17, 24, 25, 27 }
;   output 6 depends on inputs: { 0, 1, 2, 3, 7, 12, 13, 16, 17, 24, 25, 27 }
;   output 7 depends on inputs: { 0, 1, 2, 3, 7, 12, 13, 16, 17, 24, 25, 27 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 77, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
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
  %46 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %47 = extractvalue %dx.types.CBufRet.f32 %46, 0
  %48 = fmul fast float %47, %40
  %49 = fmul fast float %47, %41
  %50 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %51 = extractvalue %dx.types.CBufRet.f32 %50, 2
  %52 = extractvalue %dx.types.CBufRet.f32 %50, 3
  %53 = fmul fast float %48, 2.000000e+00
  %54 = fmul fast float %53, %51
  %55 = fmul fast float %49, 2.000000e+00
  %56 = fmul fast float %55, %52
  %57 = fsub fast float 1.000000e+00, %54
  %58 = fsub fast float 1.000000e+00, %56
  %59 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %60 = extractvalue %dx.types.CBufRet.f32 %59, 0
  %61 = extractvalue %dx.types.CBufRet.f32 %59, 1
  %62 = extractvalue %dx.types.CBufRet.f32 %59, 2
  %63 = fmul fast float %57, %60
  %64 = fmul fast float %57, %61
  %65 = fmul fast float %57, %62
  %66 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %67 = extractvalue %dx.types.CBufRet.f32 %66, 0
  %68 = extractvalue %dx.types.CBufRet.f32 %66, 1
  %69 = extractvalue %dx.types.CBufRet.f32 %66, 2
  %70 = fmul fast float %58, %67
  %71 = fmul fast float %58, %68
  %72 = fmul fast float %58, %69
  %73 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
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
  %86 = bitcast i32 %26 to float
  %87 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %88 = extractvalue %dx.types.CBufRet.i32 %87, 3
  %89 = and i32 %88, 3
  %90 = icmp ne i32 %89, 0
  %91 = and i32 %88, 4
  %92 = icmp ne i32 %91, 0
  %93 = and i1 %90, %92
  br i1 %93, label %94, label %103

; <label>:94                                      ; preds = %0
  %95 = fmul fast float %52, %49
  %96 = fmul fast float %51, %48
  %97 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %20, float %96, float %95, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %98 = extractvalue %dx.types.ResRet.f32 %97, 0
  %99 = fsub fast float 1.000000e+00, %98
  %100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %101 = extractvalue %dx.types.CBufRet.f32 %100, 0
  %102 = fcmp fast olt float %99, %101
  br label %106

; <label>:103                                     ; preds = %0
  %104 = icmp eq i32 %91, 0
  %105 = and i1 %90, %104
  br label %106

; <label>:106                                     ; preds = %103, %94
  %107 = phi i1 [ %102, %94 ], [ %105, %103 ]
  %108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %109 = extractvalue %dx.types.CBufRet.f32 %108, 2
  %110 = extractvalue %dx.types.CBufRet.f32 %108, 3
  %111 = fmul fast float %109, %48
  %112 = fmul fast float %110, %49
  %113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %114 = extractvalue %dx.types.ResRet.i32 %113, 0
  %115 = and i32 %114, 114688
  %116 = icmp ne i32 %115, 0
  %117 = select i1 %116, float %111, float 0.000000e+00
  %118 = select i1 %116, float %112, float 0.000000e+00
  %119 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %21, float %117, float %118, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %120 = extractvalue %dx.types.ResRet.f32 %119, 0
  %121 = fmul fast float %120, 2.550000e+02
  %122 = fptoui float %121 to i32
  %123 = select i1 %116, i32 %122, i32 0
  %124 = mul i32 %25, 208
  %125 = add i32 %124, 188
  %126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %125, i32 undef)  ; BufferLoad(srv,index,wot)
  %127 = extractvalue %dx.types.ResRet.i32 %126, 0
  %128 = and i32 %88, 114688
  %129 = and i32 %88, 8
  %130 = icmp ne i32 %129, 0
  %131 = or i1 %107, %130
  %132 = select i1 %131, i32 %128, i32 16384
  %133 = and i32 %132, %127
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %136

; <label>:135                                     ; preds = %106
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %136

; <label>:136                                     ; preds = %135, %106
  %137 = shl i32 %24, 5
  %138 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %137, i32 undef)  ; BufferLoad(srv,index,wot)
  %139 = extractvalue %dx.types.ResRet.f32 %138, 0
  %140 = extractvalue %dx.types.ResRet.f32 %138, 1
  %141 = extractvalue %dx.types.ResRet.f32 %138, 2
  %142 = extractvalue %dx.types.ResRet.f32 %138, 3
  %143 = or i32 %137, 16
  %144 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %143, i32 undef)  ; BufferLoad(srv,index,wot)
  %145 = extractvalue %dx.types.ResRet.f32 %144, 0
  %146 = extractvalue %dx.types.ResRet.f32 %144, 1
  %147 = extractvalue %dx.types.ResRet.f32 %144, 2
  %148 = extractvalue %dx.types.ResRet.f32 %144, 3
  %149 = call float @dx.op.dot3.f32(i32 55, float %83, float %84, float %85, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %150 = call float @dx.op.unary.f32(i32 25, float %149)  ; Rsqrt(value)
  %151 = fmul fast float %150, %83
  %152 = fmul fast float %150, %84
  %153 = fmul fast float %150, %85
  %154 = fsub fast float -0.000000e+00, %151
  %155 = fsub fast float -0.000000e+00, %152
  %156 = fsub fast float -0.000000e+00, %153
  %157 = fsub fast float %145, %139
  %158 = fsub fast float %146, %140
  %159 = fsub fast float %147, %141
  %160 = call float @dx.op.dot3.f32(i32 55, float %157, float %158, float %159, float %157, float %158, float %159)  ; Dot3(ax,ay,az,bx,by,bz)
  %161 = fsub fast float %148, %142
  %162 = fmul fast float %161, %161
  %163 = fsub fast float %160, %162
  %164 = call float @dx.op.dot3.f32(i32 55, float %157, float %158, float %159, float %154, float %155, float %156)  ; Dot3(ax,ay,az,bx,by,bz)
  %165 = fmul fast float %164, %164
  %166 = fsub fast float %163, %165
  %167 = fadd fast float %166, 0x3EE4F8B580000000
  %168 = call float @dx.op.dot3.f32(i32 55, float %157, float %158, float %159, float %145, float %146, float %147)  ; Dot3(ax,ay,az,bx,by,bz)
  %169 = call float @dx.op.dot3.f32(i32 55, float %154, float %155, float %156, float %145, float %146, float %147)  ; Dot3(ax,ay,az,bx,by,bz)
  %170 = call float @dx.op.dot3.f32(i32 55, float %145, float %146, float %147, float %145, float %146, float %147)  ; Dot3(ax,ay,az,bx,by,bz)
  %171 = fmul fast float %169, %163
  %172 = fmul fast float %168, %164
  %173 = fsub fast float %171, %172
  %174 = fmul fast float %161, %148
  %175 = fmul fast float %174, %164
  %176 = fadd fast float %173, %175
  %177 = fmul fast float %170, %163
  %178 = fmul fast float %168, %168
  %179 = fmul fast float %148, 2.000000e+00
  %180 = fmul fast float %179, %161
  %181 = fmul fast float %180, %168
  %182 = fmul fast float %148, %148
  %183 = fmul fast float %182, %160
  %184 = fsub fast float -0.000000e+00, %183
  %185 = fsub fast float %184, %178
  %186 = fadd fast float %185, %177
  %187 = fadd fast float %186, %181
  %188 = fmul fast float %176, %176
  %189 = fmul fast float %187, %167
  %190 = fsub fast float %188, %189
  %191 = fcmp fast olt float %190, 0.000000e+00
  %192 = fsub fast float -0.000000e+00, %190
  %193 = select i1 %191, float -1.000000e+00, float 1.000000e+00
  %194 = select i1 %191, float %192, float %190
  %195 = call float @dx.op.unary.f32(i32 24, float %194)  ; Sqrt(value)
  %196 = fsub fast float -0.000000e+00, %195
  %197 = fsub fast float %196, %176
  %198 = fdiv fast float %197, %167
  %199 = fsub fast float %168, %174
  %200 = fmul fast float %198, %164
  %201 = fadd fast float %200, %199
  %202 = fcmp fast ogt float %201, 0.000000e+00
  %203 = fcmp fast olt float %201, %163
  %204 = and i1 %202, %203
  br i1 %204, label %205, label %227

; <label>:205                                     ; preds = %136
  %206 = fmul fast float %193, %198
  %207 = fmul fast float %198, %154
  %208 = fmul fast float %198, %155
  %209 = fmul fast float %198, %156
  %210 = fadd fast float %207, %145
  %211 = fadd fast float %208, %146
  %212 = fadd fast float %209, %147
  %213 = fmul fast float %210, %163
  %214 = fmul fast float %211, %163
  %215 = fmul fast float %212, %163
  %216 = fmul fast float %201, %157
  %217 = fmul fast float %201, %158
  %218 = fmul fast float %201, %159
  %219 = fsub fast float %213, %216
  %220 = fsub fast float %214, %217
  %221 = fsub fast float %215, %218
  %222 = call float @dx.op.dot3.f32(i32 55, float %219, float %220, float %221, float %219, float %220, float %221)  ; Dot3(ax,ay,az,bx,by,bz)
  %223 = call float @dx.op.unary.f32(i32 25, float %222)  ; Rsqrt(value)
  %224 = fmul fast float %223, %219
  %225 = fmul fast float %223, %220
  %226 = fmul fast float %223, %221
  br label %299

; <label>:227                                     ; preds = %136
  %228 = fmul fast float %169, %169
  %229 = fsub fast float %228, %170
  %230 = fadd fast float %229, %182
  %231 = call float @dx.op.dot3.f32(i32 55, float %139, float %140, float %141, float %154, float %155, float %156)  ; Dot3(ax,ay,az,bx,by,bz)
  %232 = fmul fast float %231, %231
  %233 = call float @dx.op.dot3.f32(i32 55, float %139, float %140, float %141, float %139, float %140, float %141)  ; Dot3(ax,ay,az,bx,by,bz)
  %234 = fsub fast float %232, %233
  %235 = fmul fast float %142, %142
  %236 = fadd fast float %234, %235
  %237 = call float @dx.op.binary.f32(i32 35, float %230, float %236)  ; FMax(a,b)
  %238 = fcmp fast olt float %237, 0.000000e+00
  br i1 %238, label %239, label %246

; <label>:239                                     ; preds = %227
  %240 = fcmp fast ogt float %236, %230
  %241 = fsub fast float -0.000000e+00, %236
  %242 = select i1 %240, float %241, float %236
  %243 = fcmp fast ogt float %230, %242
  %244 = fsub fast float -0.000000e+00, %230
  %245 = select i1 %243, float %244, float %230
  br label %246

; <label>:246                                     ; preds = %239, %227
  %247 = phi float [ -1.000000e+00, %239 ], [ %193, %227 ]
  %248 = phi float [ %245, %239 ], [ %230, %227 ]
  %249 = phi float [ %242, %239 ], [ %236, %227 ]
  %250 = fcmp fast ogt float %248, 0.000000e+00
  br i1 %250, label %251, label %271

; <label>:251                                     ; preds = %246
  %252 = fsub fast float -0.000000e+00, %169
  %253 = call float @dx.op.unary.f32(i32 24, float %248)  ; Sqrt(value)
  %254 = fsub fast float %252, %253
  %255 = fmul fast float %254, %247
  %256 = fmul fast float %254, %154
  %257 = fmul fast float %254, %155
  %258 = fmul fast float %254, %156
  %259 = fadd fast float %256, %145
  %260 = fadd fast float %257, %146
  %261 = fadd fast float %258, %147
  %262 = fadd fast float %148, 0x3EE4F8B580000000
  %263 = fdiv fast float %259, %262
  %264 = fdiv fast float %260, %262
  %265 = fdiv fast float %261, %262
  %266 = call float @dx.op.dot3.f32(i32 55, float %263, float %264, float %265, float %263, float %264, float %265)  ; Dot3(ax,ay,az,bx,by,bz)
  %267 = call float @dx.op.unary.f32(i32 25, float %266)  ; Rsqrt(value)
  %268 = fmul fast float %267, %263
  %269 = fmul fast float %267, %264
  %270 = fmul fast float %267, %265
  br label %271

; <label>:271                                     ; preds = %251, %246
  %272 = phi float [ %255, %251 ], [ 0x4415AF1D80000000, %246 ]
  %273 = phi float [ %268, %251 ], [ 0.000000e+00, %246 ]
  %274 = phi float [ %269, %251 ], [ 0.000000e+00, %246 ]
  %275 = phi float [ %270, %251 ], [ 0.000000e+00, %246 ]
  %276 = fcmp fast ogt float %249, 0.000000e+00
  br i1 %276, label %277, label %299

; <label>:277                                     ; preds = %271
  %278 = fsub fast float -0.000000e+00, %231
  %279 = call float @dx.op.unary.f32(i32 24, float %249)  ; Sqrt(value)
  %280 = fsub fast float %278, %279
  %281 = fcmp fast olt float %280, %272
  br i1 %281, label %282, label %299

; <label>:282                                     ; preds = %277
  %283 = fmul fast float %280, %247
  %284 = fmul fast float %280, %154
  %285 = fmul fast float %280, %155
  %286 = fmul fast float %280, %156
  %287 = fadd fast float %284, %139
  %288 = fadd fast float %285, %140
  %289 = fadd fast float %286, %141
  %290 = fadd fast float %142, 0x3EE4F8B580000000
  %291 = fdiv fast float %287, %290
  %292 = fdiv fast float %288, %290
  %293 = fdiv fast float %289, %290
  %294 = call float @dx.op.dot3.f32(i32 55, float %291, float %292, float %293, float %291, float %292, float %293)  ; Dot3(ax,ay,az,bx,by,bz)
  %295 = call float @dx.op.unary.f32(i32 25, float %294)  ; Rsqrt(value)
  %296 = fmul fast float %295, %291
  %297 = fmul fast float %295, %292
  %298 = fmul fast float %295, %293
  br label %299

; <label>:299                                     ; preds = %282, %277, %271, %205
  %300 = phi float [ %206, %205 ], [ %283, %282 ], [ %272, %277 ], [ %272, %271 ]
  %301 = phi float [ %224, %205 ], [ %296, %282 ], [ %273, %277 ], [ %273, %271 ]
  %302 = phi float [ %225, %205 ], [ %297, %282 ], [ %274, %277 ], [ %274, %271 ]
  %303 = phi float [ %226, %205 ], [ %298, %282 ], [ %275, %277 ], [ %275, %271 ]
  %304 = call float @dx.op.unary.f32(i32 6, float %300)  ; FAbs(value)
  %305 = fmul fast float %304, %151
  %306 = fmul fast float %304, %152
  %307 = fmul fast float %304, %153
  %308 = fsub fast float %139, %145
  %309 = fsub fast float %140, %146
  %310 = fsub fast float %141, %147
  %311 = call float @dx.op.dot3.f32(i32 55, float %308, float %309, float %310, float %308, float %309, float %310)  ; Dot3(ax,ay,az,bx,by,bz)
  %312 = call float @dx.op.unary.f32(i32 25, float %311)  ; Rsqrt(value)
  %313 = fmul fast float %312, %308
  %314 = fmul fast float %312, %309
  %315 = fmul fast float %312, %310
  %316 = call float @dx.op.dot3.f32(i32 55, float %139, float %140, float %141, float %308, float %309, float %310)  ; Dot3(ax,ay,az,bx,by,bz)
  %317 = fmul fast float %316, %145
  %318 = fmul fast float %316, %146
  %319 = fmul fast float %316, %147
  %320 = call float @dx.op.dot3.f32(i32 55, float %145, float %146, float %147, float %308, float %309, float %310)  ; Dot3(ax,ay,az,bx,by,bz)
  %321 = fmul fast float %320, %139
  %322 = fmul fast float %320, %140
  %323 = fmul fast float %320, %141
  %324 = fsub fast float %317, %321
  %325 = fsub fast float %318, %322
  %326 = fsub fast float %319, %323
  %327 = call float @dx.op.dot3.f32(i32 55, float %324, float %325, float %326, float %324, float %325, float %326)  ; Dot3(ax,ay,az,bx,by,bz)
  %328 = call float @dx.op.unary.f32(i32 25, float %327)  ; Rsqrt(value)
  %329 = fmul fast float %324, %328
  %330 = fmul fast float %325, %328
  %331 = fmul fast float %326, %328
  %332 = fmul fast float %331, %314
  %333 = fmul fast float %330, %315
  %334 = fsub fast float %332, %333
  %335 = fmul fast float %329, %315
  %336 = fmul fast float %331, %313
  %337 = fsub fast float %335, %336
  %338 = fmul fast float %330, %313
  %339 = fmul fast float %329, %314
  %340 = fsub fast float %338, %339
  %341 = fmul fast float %337, %315
  %342 = fmul fast float %340, %314
  %343 = fsub fast float %341, %342
  %344 = fmul fast float %340, %313
  %345 = fmul fast float %334, %315
  %346 = fsub fast float %344, %345
  %347 = fmul fast float %334, %314
  %348 = fmul fast float %337, %313
  %349 = fsub fast float %347, %348
  %350 = fsub fast float %305, %145
  %351 = fsub fast float %306, %146
  %352 = fsub fast float %307, %147
  %353 = fmul fast float %334, %350
  %354 = call float @dx.op.tertiary.f32(i32 46, float %337, float %351, float %353)  ; FMad(a,b,c)
  %355 = call float @dx.op.tertiary.f32(i32 46, float %340, float %352, float %354)  ; FMad(a,b,c)
  %356 = fmul fast float %343, %350
  %357 = call float @dx.op.tertiary.f32(i32 46, float %346, float %351, float %356)  ; FMad(a,b,c)
  %358 = call float @dx.op.tertiary.f32(i32 46, float %349, float %352, float %357)  ; FMad(a,b,c)
  %359 = fmul fast float %313, %350
  %360 = call float @dx.op.tertiary.f32(i32 46, float %314, float %351, float %359)  ; FMad(a,b,c)
  %361 = call float @dx.op.tertiary.f32(i32 46, float %315, float %352, float %360)  ; FMad(a,b,c)
  %362 = fmul fast float %157, %157
  %363 = fmul fast float %158, %158
  %364 = fadd fast float %362, %363
  %365 = fmul fast float %159, %159
  %366 = fadd fast float %364, %365
  %367 = call float @dx.op.unary.f32(i32 24, float %366)  ; Sqrt(value)
  %368 = fdiv fast float %361, %367
  %369 = fcmp fast olt float %368, 0.000000e+00
  %370 = uitofp i1 %369 to float
  %371 = fmul fast float %368, %367
  %372 = fdiv fast float %371, %148
  %373 = fadd fast float %372, 1.000000e+00
  %374 = fmul fast float %373, 2.500000e-01
  %375 = fmul fast float %374, %370
  %376 = fcmp fast oge float %368, 0.000000e+00
  %377 = uitofp i1 %376 to float
  %378 = fcmp fast olt float %368, 1.000000e+00
  %379 = uitofp i1 %378 to float
  %380 = fmul fast float %368, 5.000000e-01
  %381 = fadd fast float %380, 2.500000e-01
  %382 = fmul fast float %379, %381
  %383 = fcmp fast oge float %368, 1.000000e+00
  %384 = uitofp i1 %383 to float
  %385 = fadd fast float %368, -1.000000e+00
  %386 = fmul fast float %385, %367
  %387 = fdiv fast float %386, %142
  %388 = fmul fast float %387, 2.500000e-01
  %389 = fadd fast float %388, 7.500000e-01
  %390 = fmul fast float %389, %384
  %391 = fadd fast float %390, %382
  %392 = fmul fast float %391, %377
  %393 = fadd fast float %392, %375
  %394 = fdiv fast float %358, %355
  %395 = call float @dx.op.unary.f32(i32 17, float %394)  ; Atan(value)
  %396 = fadd fast float %395, 0x400921FB60000000
  %397 = fadd fast float %395, 0xC00921FB60000000
  %398 = fcmp fast olt float %355, 0.000000e+00
  %399 = fcmp fast oeq float %355, 0.000000e+00
  %400 = fcmp fast oge float %358, 0.000000e+00
  %401 = fcmp fast olt float %358, 0.000000e+00
  %402 = and i1 %398, %400
  %403 = select i1 %402, float %396, float %395
  %404 = and i1 %398, %401
  %405 = select i1 %404, float %397, float %403
  %406 = and i1 %399, %401
  %407 = and i1 %399, %400
  %408 = fadd fast float %405, 0x400921FB60000000
  %409 = fmul fast float %408, 0x3FC45F3060000000
  %410 = fadd fast float %409, 2.500000e-01
  %411 = select i1 %406, float 5.000000e-01, float %410
  %412 = select i1 %407, float 1.000000e+00, float %411
  %413 = fcmp fast ogt float %412, 1.000000e+00
  %414 = uitofp i1 %413 to float
  %415 = fsub fast float %412, %414
  %416 = fcmp fast ogt float %300, 0.000000e+00
  br i1 %416, label %418, label %417

; <label>:417                                     ; preds = %299
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %418

; <label>:418                                     ; preds = %417, %299
  %419 = fdiv fast float %33, %34
  %420 = fptoui float %419 to i32
  %421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %422 = extractvalue %dx.types.ResRet.i32 %421, 0
  %423 = and i32 %422, %420
  %424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 96, i32 undef)  ; BufferLoad(srv,index,wot)
  %425 = extractvalue %dx.types.ResRet.i32 %424, 0
  %426 = and i32 %425, 31
  %427 = lshr i32 %420, %426
  %428 = uitofp i32 %423 to float
  %429 = uitofp i32 %427 to float
  %430 = fadd fast float %393, %428
  %431 = fadd fast float %415, %429
  %432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %433 = extractvalue %dx.types.ResRet.i32 %432, 2
  %434 = extractvalue %dx.types.ResRet.i32 %432, 3
  %435 = bitcast i32 %433 to float
  %436 = bitcast i32 %434 to float
  %437 = fmul fast float %435, %430
  %438 = fmul fast float %431, %436
  %439 = and i32 %127, 512
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %465, label %441

; <label>:441                                     ; preds = %418
  %442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %443 = extractvalue %dx.types.CBufRet.f32 %442, 2
  %444 = extractvalue %dx.types.CBufRet.f32 %442, 3
  %445 = fmul fast float %443, %48
  %446 = fmul fast float %444, %49
  %447 = extractvalue %dx.types.CBufRet.f32 %442, 0
  %448 = extractvalue %dx.types.CBufRet.f32 %442, 1
  %449 = fdiv fast float %447, %448
  %450 = fcmp fast ogt float %449, 0x3FFC71C720000000
  br i1 %450, label %451, label %457

; <label>:451                                     ; preds = %441
  %452 = fdiv fast float 0x3FFC71C720000000, %449
  %453 = fmul fast float %452, %446
  %454 = fsub fast float 1.000000e+00, %452
  %455 = fmul fast float %454, 5.000000e-01
  %456 = fadd fast float %455, %453
  br label %465

; <label>:457                                     ; preds = %441
  %458 = fcmp fast olt float %449, 0x3FFC71C720000000
  br i1 %458, label %459, label %465

; <label>:459                                     ; preds = %457
  %460 = fmul fast float %445, 5.625000e-01
  %461 = fmul fast float %460, %449
  %462 = fmul fast float %449, 2.812500e-01
  %463 = fsub fast float 5.000000e-01, %462
  %464 = fadd fast float %463, %461
  br label %465

; <label>:465                                     ; preds = %459, %457, %451, %418
  %466 = phi float [ %437, %418 ], [ %445, %451 ], [ %464, %459 ], [ %445, %457 ]
  %467 = phi float [ %438, %418 ], [ %456, %451 ], [ %446, %459 ], [ %446, %457 ]
  %468 = extractvalue %dx.types.ResRet.i32 %432, 0
  %469 = extractvalue %dx.types.ResRet.i32 %432, 1
  %470 = bitcast i32 %468 to float
  %471 = bitcast i32 %469 to float
  %472 = fmul fast float %470, %437
  %473 = fmul fast float %471, %438
  %474 = call float @dx.op.unary.f32(i32 22, float %472)  ; Frc(value)
  %475 = call float @dx.op.unary.f32(i32 22, float %473)  ; Frc(value)
  %476 = and i32 %127, 16
  %477 = icmp ne i32 %476, 0
  %478 = select i1 %477, float 1.000000e+00, float %39
  %479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 124, i32 undef)  ; BufferLoad(srv,index,wot)
  %480 = extractvalue %dx.types.ResRet.i32 %479, 0
  %481 = add i32 %480, 0
  %482 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %481, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %484 = extractvalue %dx.types.CBufRet.f32 %483, 2
  %485 = call %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32 61, %dx.types.Handle %482, %dx.types.Handle %45, float %466, float %467, float undef, float undef, i32 0, i32 0, i32 undef, float %484, float undef)  ; SampleBias(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,bias,clamp)
  %486 = extractvalue %dx.types.ResRet.f32 %485, 0
  %487 = fmul fast float %486, %478
  %488 = icmp eq i32 %476, 0
  br i1 %488, label %508, label %489, !dx.controlflow.hints !63

; <label>:489                                     ; preds = %465
  %490 = add i32 %124, 64
  %491 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %490, i32 undef)  ; BufferLoad(srv,index,wot)
  %492 = extractvalue %dx.types.ResRet.f32 %491, 0
  %493 = fadd fast float %492, 1.000000e+00
  %494 = fmul fast float %493, %39
  %495 = fsub fast float %494, %492
  %496 = fsub fast float %493, %495
  %497 = call float @dx.op.unary.f32(i32 7, float %496)  ; Saturate(value)
  %498 = fsub fast float 1.000000e+00, %494
  %499 = call float @dx.op.unary.f32(i32 7, float %498)  ; Saturate(value)
  %500 = fsub fast float %497, %499
  %501 = fsub fast float %487, %499
  %502 = fdiv fast float %501, %500
  %503 = call float @dx.op.unary.f32(i32 7, float %502)  ; Saturate(value)
  %504 = fmul fast float %503, 2.000000e+00
  %505 = fsub fast float 3.000000e+00, %504
  %506 = fmul fast float %503, %503
  %507 = fmul fast float %506, %505
  br label %508

; <label>:508                                     ; preds = %489, %465
  %509 = phi float [ %507, %489 ], [ %487, %465 ]
  %510 = fcmp fast ogt float %509, 0.000000e+00
  br i1 %510, label %512, label %511

; <label>:511                                     ; preds = %508
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %512

; <label>:512                                     ; preds = %511, %508
  %513 = call float @dx.op.unary.f32(i32 7, float %509)  ; Saturate(value)
  %514 = fmul fast float %48, 5.000000e-01
  %515 = fmul fast float %49, 5.000000e-01
  %516 = fptosi float %514 to i32
  %517 = fptosi float %515 to i32
  %518 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 0, i32 %516, i32 %517, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %519 = extractvalue %dx.types.ResRet.i32 %518, 0
  %520 = lshr i32 %519, 18
  %521 = uitofp i32 %520 to float
  %522 = fmul fast float %521, 0x3F4C00EBA0000000
  %523 = call float @dx.op.unary.f32(i32 21, float %522)  ; Exp(value)
  %524 = fadd fast float %523, -1.000000e+00
  %525 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %526 = extractvalue %dx.types.Dimensions %525, 0
  %527 = sitofp i32 %526 to float
  %528 = extractvalue %dx.types.Dimensions %525, 1
  %529 = sitofp i32 %528 to float
  %530 = fcmp fast oge float %514, %527
  %531 = fcmp fast oge float %515, %529
  %532 = or i1 %530, %531
  %533 = select i1 %532, float 0x4197782600000000, float %524
  %534 = fsub fast float %533, %43
  %535 = fcmp fast ogt float %534, 0.000000e+00
  %536 = and i32 %123, -2
  %537 = icmp eq i32 %536, 2
  %538 = and i1 %537, %535
  %539 = xor i1 %535, true
  %540 = icmp eq i32 %123, 1
  %541 = and i1 %540, %539
  %542 = or i1 %538, %541
  %543 = and i32 %127, 262144
  %544 = icmp ne i32 %543, 0
  %545 = and i1 %544, %542
  %546 = xor i1 %542, true
  %547 = and i32 %127, 131072
  %548 = icmp ne i32 %547, 0
  %549 = and i1 %548, %546
  %550 = or i1 %545, %549
  br i1 %550, label %551, label %552

; <label>:551                                     ; preds = %512
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %552

; <label>:552                                     ; preds = %551, %512
  %553 = and i32 %127, 32
  %554 = icmp eq i32 %553, 0
  br i1 %554, label %821, label %555, !dx.controlflow.hints !64

; <label>:555                                     ; preds = %552
  %556 = add i32 %124, 80
  %557 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %556, i32 undef)  ; BufferLoad(srv,index,wot)
  %558 = extractvalue %dx.types.ResRet.f32 %557, 0
  %559 = extractvalue %dx.types.ResRet.f32 %557, 1
  %560 = extractvalue %dx.types.ResRet.f32 %557, 2
  %561 = extractvalue %dx.types.ResRet.f32 %557, 3
  %562 = add i32 %124, 96
  %563 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %562, i32 undef)  ; BufferLoad(srv,index,wot)
  %564 = extractvalue %dx.types.ResRet.f32 %563, 0
  %565 = extractvalue %dx.types.ResRet.f32 %563, 1
  %566 = extractvalue %dx.types.ResRet.f32 %563, 2
  %567 = add i32 %124, 112
  %568 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %567, i32 undef)  ; BufferLoad(srv,index,wot)
  %569 = extractvalue %dx.types.ResRet.f32 %568, 0
  %570 = extractvalue %dx.types.ResRet.f32 %568, 1
  %571 = extractvalue %dx.types.ResRet.f32 %568, 2
  %572 = extractvalue %dx.types.ResRet.f32 %568, 3
  %573 = add i32 %124, 128
  %574 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %573, i32 undef)  ; BufferLoad(srv,index,wot)
  %575 = extractvalue %dx.types.ResRet.f32 %574, 0
  %576 = extractvalue %dx.types.ResRet.f32 %574, 1
  %577 = extractvalue %dx.types.ResRet.f32 %574, 2
  %578 = extractvalue %dx.types.ResRet.f32 %574, 3
  %579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %125, i32 undef)  ; BufferLoad(srv,index,wot)
  %580 = extractvalue %dx.types.ResRet.i32 %579, 0
  %581 = and i32 %580, 4096
  %582 = icmp ne i32 %581, 0
  %583 = fcmp fast une float %566, 0.000000e+00
  %584 = and i32 %580, 64
  %585 = icmp ne i32 %584, 0
  %586 = and i32 %580, 128
  %587 = icmp eq i32 %586, 0
  %588 = and i32 %580, 2048
  %589 = icmp eq i32 %588, 0
  %590 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %14, i32 0)  ; GetDimensions(handle,mipLevel)
  %591 = extractvalue %dx.types.Dimensions %590, 0
  %592 = sitofp i32 %591 to float
  %593 = extractvalue %dx.types.Dimensions %590, 1
  %594 = sitofp i32 %593 to float
  %595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %596 = extractvalue %dx.types.CBufRet.f32 %595, 2
  %597 = extractvalue %dx.types.CBufRet.f32 %595, 3
  %598 = fmul fast float %596, %48
  %599 = fmul fast float %597, %49
  %600 = fmul fast float %598, %592
  %601 = fmul fast float %599, %594
  %602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %603 = extractvalue %dx.types.CBufRet.f32 %602, 1
  %604 = fsub fast float -0.000000e+00, %603
  %605 = fptoui float %604 to i32
  %606 = fptoui float %600 to i32
  %607 = fptoui float %601 to i32
  %608 = and i32 %605, 31
  %609 = lshr i32 %606, %608
  %610 = lshr i32 %607, %608
  %611 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %14, i32 %605, i32 %609, i32 %610, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %612 = extractvalue %dx.types.ResRet.f32 %611, 0
  %613 = fcmp fast ogt float %612, -1.000000e+00
  %614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %615 = extractvalue %dx.types.CBufRet.f32 %614, 1
  %616 = select i1 %613, float %615, float 1.000000e+00
  %617 = fadd fast float %612, 1.000000e+00
  %618 = fmul fast float %616, %617
  %619 = call float @dx.op.unary.f32(i32 6, float %618)  ; FAbs(value)
  %620 = extractvalue %dx.types.CBufRet.f32 %614, 3
  %621 = fcmp fast oge float %619, %620
  %622 = select i1 %621, float 0x4197782600000000, float %619
  br i1 %589, label %705, label %623, !dx.controlflow.hints !65

; <label>:623                                     ; preds = %555
  %624 = fmul fast float %53, %596
  %625 = fmul fast float %55, %597
  %626 = fsub fast float 1.000000e+00, %624
  %627 = fsub fast float 1.000000e+00, %625
  %628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %629 = extractvalue %dx.types.CBufRet.f32 %628, 0
  %630 = extractvalue %dx.types.CBufRet.f32 %628, 1
  %631 = extractvalue %dx.types.CBufRet.f32 %628, 2
  %632 = fmul fast float %626, %629
  %633 = fmul fast float %626, %630
  %634 = fmul fast float %626, %631
  %635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %636 = extractvalue %dx.types.CBufRet.f32 %635, 0
  %637 = extractvalue %dx.types.CBufRet.f32 %635, 1
  %638 = extractvalue %dx.types.CBufRet.f32 %635, 2
  %639 = fmul fast float %627, %636
  %640 = fmul fast float %627, %637
  %641 = fmul fast float %627, %638
  %642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %643 = extractvalue %dx.types.CBufRet.f32 %642, 0
  %644 = extractvalue %dx.types.CBufRet.f32 %642, 1
  %645 = extractvalue %dx.types.CBufRet.f32 %642, 2
  %646 = fadd fast float %639, %643
  %647 = fadd fast float %646, %632
  %648 = fadd fast float %640, %644
  %649 = fadd fast float %648, %633
  %650 = fadd fast float %641, %645
  %651 = fadd fast float %650, %634
  %652 = fmul fast float %647, %622
  %653 = fmul fast float %649, %622
  %654 = fmul fast float %651, %622
  %655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %656 = extractvalue %dx.types.CBufRet.f32 %655, 0
  %657 = extractvalue %dx.types.CBufRet.f32 %655, 1
  %658 = extractvalue %dx.types.CBufRet.f32 %655, 2
  %659 = fadd fast float %652, %656
  %660 = fadd fast float %653, %657
  %661 = fadd fast float %654, %658
  %662 = call float @dx.op.dot3.f32(i32 55, float %659, float %660, float %661, float %659, float %660, float %661)  ; Dot3(ax,ay,az,bx,by,bz)
  %663 = fsub fast float 1.000000e+00, %662
  %664 = fcmp fast olt float %663, %565
  %665 = fcmp fast ogt float %663, %564
  %666 = or i1 %664, %665
  %667 = select i1 %666, float 0.000000e+00, float %663
  %668 = fsub fast float %564, %565
  %669 = fsub fast float %667, %565
  %670 = fdiv fast float %669, %668
  %671 = call float @dx.op.unary.f32(i32 7, float %670)  ; Saturate(value)
  %672 = fmul fast float %671, 2.000000e+00
  %673 = fsub fast float 3.000000e+00, %672
  %674 = fmul fast float %671, %671
  %675 = fmul fast float %674, %673
  %676 = fmul fast float %569, %36
  %677 = fmul fast float %570, %37
  %678 = fmul fast float %571, %38
  %679 = fsub fast float %676, %575
  %680 = fsub fast float %677, %576
  %681 = fsub fast float %678, %577
  %682 = fsub fast float %572, %578
  %683 = fmul fast float %675, %679
  %684 = fmul fast float %675, %680
  %685 = fmul fast float %675, %681
  %686 = fmul fast float %675, %682
  %687 = fadd fast float %683, %575
  %688 = fadd fast float %684, %576
  %689 = fadd fast float %685, %577
  %690 = fadd fast float %686, %578
  %691 = fmul fast float %569, %27
  %692 = fmul fast float %570, %28
  %693 = fmul fast float %571, %29
  %694 = fsub fast float %691, %575
  %695 = fsub fast float %692, %576
  %696 = fsub fast float %693, %577
  %697 = fmul fast float %675, %694
  %698 = fmul fast float %675, %695
  %699 = fmul fast float %675, %696
  %700 = fadd fast float %697, %575
  %701 = fadd fast float %698, %576
  %702 = fadd fast float %699, %577
  %703 = fmul fast float %558, %558
  %704 = fmul fast float %703, %667
  br label %808

; <label>:705                                     ; preds = %555
  %706 = and i32 %580, 256
  %707 = icmp eq i32 %706, 0
  %708 = fsub fast float %622, %43
  br i1 %707, label %769, label %709

; <label>:709                                     ; preds = %705
  %710 = fadd fast float %564, %43
  %711 = fcmp fast olt float %622, %43
  %712 = fcmp fast ogt float %622, %710
  %713 = or i1 %711, %712
  %714 = select i1 %713, float 0.000000e+00, float %708
  %715 = call float @dx.op.unary.f32(i32 83, float %622)  ; DerivCoarseX(value)
  %716 = call float @dx.op.unary.f32(i32 84, float %622)  ; DerivCoarseY(value)
  %717 = fmul fast float %715, %715
  %718 = fmul fast float %716, %716
  %719 = fadd fast float %718, %717
  %720 = call float @dx.op.unary.f32(i32 24, float %719)  ; Sqrt(value)
  %721 = extractvalue %dx.types.CBufRet.f32 %602, 2
  %722 = fmul fast float %721, %720
  %723 = call float @dx.op.unary.f32(i32 7, float %722)  ; Saturate(value)
  %724 = fmul fast float %723, %565
  %725 = fdiv fast float %708, %724
  %726 = call float @dx.op.unary.f32(i32 7, float %725)  ; Saturate(value)
  %727 = fmul fast float %726, 2.000000e+00
  %728 = fsub fast float 3.000000e+00, %727
  %729 = fmul fast float %726, %726
  %730 = fmul fast float %729, %728
  %731 = fsub fast float %622, %710
  %732 = fadd fast float %731, %724
  %733 = fdiv fast float %732, %724
  %734 = call float @dx.op.unary.f32(i32 7, float %733)  ; Saturate(value)
  %735 = fmul fast float %734, 2.000000e+00
  %736 = fsub fast float 3.000000e+00, %735
  %737 = fmul fast float %734, %734
  %738 = fmul fast float %737, %736
  %739 = fsub fast float %730, %738
  %740 = fmul fast float %569, %36
  %741 = fmul fast float %570, %37
  %742 = fmul fast float %571, %38
  %743 = fsub fast float %740, %575
  %744 = fsub fast float %741, %576
  %745 = fsub fast float %742, %577
  %746 = fsub fast float %572, %578
  %747 = fmul fast float %739, %743
  %748 = fmul fast float %739, %744
  %749 = fmul fast float %739, %745
  %750 = fmul fast float %739, %746
  %751 = fadd fast float %747, %575
  %752 = fadd fast float %748, %576
  %753 = fadd fast float %749, %577
  %754 = fadd fast float %750, %578
  %755 = fmul fast float %569, %27
  %756 = fmul fast float %570, %28
  %757 = fmul fast float %571, %29
  %758 = fsub fast float %755, %575
  %759 = fsub fast float %756, %576
  %760 = fsub fast float %757, %577
  %761 = fmul fast float %739, %758
  %762 = fmul fast float %739, %759
  %763 = fmul fast float %739, %760
  %764 = fadd fast float %761, %575
  %765 = fadd fast float %762, %576
  %766 = fadd fast float %763, %577
  %767 = fmul fast float %714, %558
  %768 = call float @dx.op.unary.f32(i32 6, float %767)  ; FAbs(value)
  br label %808

; <label>:769                                     ; preds = %705
  br i1 %583, label %770, label %781

; <label>:770                                     ; preds = %769
  %771 = select i1 %585, float 5.000000e+01, float 1.000000e+00
  %772 = fmul fast float %771, %558
  %773 = fmul fast float %474, 2.000000e+00
  %774 = fmul fast float %475, 2.000000e+00
  %775 = fadd fast float %773, -1.000000e+00
  %776 = fadd fast float %774, -1.000000e+00
  %777 = call float @dx.op.dot2.f32(i32 54, float %775, float %776, float %775, float %776)  ; Dot2(ax,ay,bx,by)
  %778 = fmul fast float %777, %566
  %779 = fsub fast float %708, %778
  %780 = fmul fast float %772, %779
  br label %808

; <label>:781                                     ; preds = %769
  br i1 %587, label %801, label %782

; <label>:782                                     ; preds = %781
  %783 = select i1 %585, float 0x3F947AE140000000, float 1.000000e+00
  %784 = fdiv fast float 1.000000e+00, %783
  %785 = fmul fast float %783, %559
  %786 = fmul fast float %783, %560
  %787 = fmul fast float %784, %561
  %788 = call float @dx.op.unary.f32(i32 6, float %708)  ; FAbs(value)
  %789 = fcmp fast olt float %788, %785
  br i1 %789, label %790, label %794, !dx.controlflow.hints !66

; <label>:790                                     ; preds = %782
  %791 = fmul fast float %784, %558
  %792 = fmul fast float %791, %788
  %793 = call float @dx.op.unary.f32(i32 6, float %792)  ; FAbs(value)
  br label %808

; <label>:794                                     ; preds = %782
  %795 = fcmp fast ogt float %788, %786
  br i1 %795, label %796, label %808

; <label>:796                                     ; preds = %794
  %797 = fsub fast float %788, %786
  %798 = fmul fast float %787, %797
  %799 = call float @dx.op.unary.f32(i32 6, float %798)  ; FAbs(value)
  %800 = fsub fast float 1.000000e+00, %799
  br label %808

; <label>:801                                     ; preds = %781
  %802 = select i1 %585, float 5.000000e+01, float 1.000000e+00
  %803 = fmul fast float %802, %558
  %804 = call float @dx.op.unary.f32(i32 6, float %534)  ; FAbs(value)
  %805 = select i1 %582, float %804, float 0x47EFFFFFE0000000
  %806 = call float @dx.op.binary.f32(i32 36, float %708, float %805)  ; FMin(a,b)
  %807 = fmul fast float %803, %806
  br label %808

; <label>:808                                     ; preds = %801, %796, %794, %790, %770, %709, %623
  %809 = phi float [ %704, %623 ], [ %768, %709 ], [ %780, %770 ], [ %807, %801 ], [ %793, %790 ], [ %800, %796 ], [ %788, %794 ]
  %810 = phi float [ %700, %623 ], [ %764, %709 ], [ %27, %770 ], [ %27, %801 ], [ %27, %790 ], [ %27, %796 ], [ %27, %794 ]
  %811 = phi float [ %701, %623 ], [ %765, %709 ], [ %28, %770 ], [ %28, %801 ], [ %28, %790 ], [ %28, %796 ], [ %28, %794 ]
  %812 = phi float [ %702, %623 ], [ %766, %709 ], [ %29, %770 ], [ %29, %801 ], [ %29, %790 ], [ %29, %796 ], [ %29, %794 ]
  %813 = phi float [ %687, %623 ], [ %751, %709 ], [ %36, %770 ], [ %36, %801 ], [ %36, %790 ], [ %36, %796 ], [ %36, %794 ]
  %814 = phi float [ %688, %623 ], [ %752, %709 ], [ %37, %770 ], [ %37, %801 ], [ %37, %790 ], [ %37, %796 ], [ %37, %794 ]
  %815 = phi float [ %689, %623 ], [ %753, %709 ], [ %38, %770 ], [ %38, %801 ], [ %38, %790 ], [ %38, %796 ], [ %38, %794 ]
  %816 = phi float [ %690, %623 ], [ %754, %709 ], [ 1.000000e+00, %770 ], [ 1.000000e+00, %801 ], [ 1.000000e+00, %790 ], [ 1.000000e+00, %796 ], [ 1.000000e+00, %794 ]
  %817 = call float @dx.op.unary.f32(i32 7, float %809)  ; Saturate(value)
  %818 = fmul fast float %817, %39
  %819 = fmul fast float %816, %513
  %820 = fmul fast float %819, %817
  br label %821

; <label>:821                                     ; preds = %808, %552
  %822 = phi float [ %813, %808 ], [ %36, %552 ]
  %823 = phi float [ %814, %808 ], [ %37, %552 ]
  %824 = phi float [ %815, %808 ], [ %38, %552 ]
  %825 = phi float [ %820, %808 ], [ %513, %552 ]
  %826 = phi float [ %818, %808 ], [ %39, %552 ]
  %827 = phi float [ %810, %808 ], [ %27, %552 ]
  %828 = phi float [ %811, %808 ], [ %28, %552 ]
  %829 = phi float [ %812, %808 ], [ %29, %552 ]
  %830 = fmul fast float %827, %30
  %831 = fmul fast float %828, %30
  %832 = fmul fast float %829, %30
  %833 = fmul fast float %827, %35
  %834 = fmul fast float %828, %35
  %835 = fmul fast float %829, %35
  %836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %837 = extractvalue %dx.types.CBufRet.f32 %836, 2
  %838 = fptosi float %43 to i32
  %839 = sitofp i32 %838 to float
  %840 = fadd fast float %837, %839
  %841 = fmul fast float %840, 0x3FE3C6EF40000000
  %842 = frem fast float %48, 2.560000e+02
  %843 = frem fast float %49, 2.560000e+02
  %844 = fptoui float %842 to i32
  %845 = fptoui float %843 to i32
  %846 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %18, i32 0, i32 %844, i32 %845, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %847 = extractvalue %dx.types.ResRet.f32 %846, 0
  %848 = fadd fast float %847, %841
  %849 = call float @dx.op.unary.f32(i32 22, float %848)  ; Frc(value)
  %850 = and i32 %127, 1
  %851 = icmp eq i32 %850, 0
  br i1 %851, label %907, label %852, !dx.controlflow.hints !67

; <label>:852                                     ; preds = %821
  %853 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %124, i32 undef)  ; BufferLoad(srv,index,wot)
  %854 = extractvalue %dx.types.ResRet.f32 %853, 2
  %855 = extractvalue %dx.types.ResRet.f32 %853, 3
  %856 = add i32 %124, 16
  %857 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %856, i32 undef)  ; BufferLoad(srv,index,wot)
  %858 = extractvalue %dx.types.ResRet.f32 %857, 0
  %859 = extractvalue %dx.types.ResRet.f32 %857, 1
  %860 = extractvalue %dx.types.ResRet.f32 %857, 2
  %861 = add i32 %124, 32
  %862 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %861, i32 undef)  ; BufferLoad(srv,index,wot)
  %863 = extractvalue %dx.types.ResRet.f32 %862, 0
  %864 = extractvalue %dx.types.ResRet.f32 %862, 1
  %865 = extractvalue %dx.types.ResRet.f32 %862, 2
  %866 = and i32 %127, 2
  %867 = icmp eq i32 %866, 0
  %868 = call float @dx.op.dot3.f32(i32 55, float %301, float %302, float %303, float %301, float %302, float %303)  ; Dot3(ax,ay,az,bx,by,bz)
  %869 = call float @dx.op.unary.f32(i32 25, float %868)  ; Rsqrt(value)
  %870 = fmul fast float %869, %301
  %871 = fmul fast float %869, %302
  %872 = fmul fast float %869, %303
  %873 = call float @dx.op.dot3.f32(i32 55, float %151, float %152, float %153, float %870, float %871, float %872)  ; Dot3(ax,ay,az,bx,by,bz)
  %874 = fmul fast float %873, %873
  %875 = fmul fast float %874, %854
  %876 = fadd fast float %875, %855
  %877 = call float @dx.op.unary.f32(i32 7, float %876)  ; Saturate(value)
  br i1 %867, label %878, label %888, !dx.controlflow.hints !68

; <label>:878                                     ; preds = %852
  %879 = extractvalue %dx.types.ResRet.f32 %853, 1
  %880 = extractvalue %dx.types.ResRet.f32 %853, 0
  %881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %882 = extractvalue %dx.types.CBufRet.f32 %881, 3
  %883 = fmul fast float %882, %149
  %884 = fsub fast float %880, %883
  %885 = fmul fast float %884, %879
  %886 = call float @dx.op.unary.f32(i32 7, float %885)  ; Saturate(value)
  %887 = fmul fast float %886, %877
  br label %888

; <label>:888                                     ; preds = %878, %852
  %889 = phi float [ %887, %878 ], [ %877, %852 ]
  %890 = fsub fast float %858, %863
  %891 = fsub fast float %859, %864
  %892 = fsub fast float %860, %865
  %893 = fmul fast float %889, %890
  %894 = fmul fast float %889, %891
  %895 = fmul fast float %889, %892
  %896 = fadd fast float %893, %863
  %897 = fadd fast float %894, %864
  %898 = fadd fast float %895, %865
  %899 = fmul fast float %896, %822
  %900 = fmul fast float %897, %823
  %901 = fmul fast float %898, %824
  %902 = fmul fast float %896, %830
  %903 = fmul fast float %897, %831
  %904 = fmul fast float %898, %832
  %905 = fmul fast float %889, %825
  %906 = fmul fast float %889, %826
  br label %907

; <label>:907                                     ; preds = %888, %821
  %908 = phi float [ %899, %888 ], [ %822, %821 ]
  %909 = phi float [ %900, %888 ], [ %823, %821 ]
  %910 = phi float [ %901, %888 ], [ %824, %821 ]
  %911 = phi float [ %905, %888 ], [ %825, %821 ]
  %912 = phi float [ %906, %888 ], [ %826, %821 ]
  %913 = phi float [ %902, %888 ], [ %830, %821 ]
  %914 = phi float [ %903, %888 ], [ %831, %821 ]
  %915 = phi float [ %904, %888 ], [ %832, %821 ]
  %916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 120, i32 undef)  ; BufferLoad(srv,index,wot)
  %917 = extractvalue %dx.types.ResRet.i32 %916, 0
  %918 = add i32 %917, 0
  %919 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %918, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %920 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %919, %dx.types.Handle %44, float %466, float %467, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %921 = extractvalue %dx.types.ResRet.f32 %920, 0
  %922 = extractvalue %dx.types.ResRet.f32 %920, 1
  %923 = extractvalue %dx.types.ResRet.f32 %920, 2
  %924 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 44, i32 undef)  ; BufferLoad(srv,index,wot)
  %925 = extractvalue %dx.types.ResRet.i32 %924, 0
  %926 = shl i32 %925, 4
  %927 = and i32 %926, 32752
  %928 = call float @dx.op.legacyF16ToF32(i32 131, i32 %927)  ; LegacyF16ToF32(value)
  %929 = lshr i32 %925, 7
  %930 = and i32 %929, 32752
  %931 = call float @dx.op.legacyF16ToF32(i32 131, i32 %930)  ; LegacyF16ToF32(value)
  %932 = lshr i32 %925, 22
  %933 = shl nuw nsw i32 %932, 5
  %934 = call float @dx.op.legacyF16ToF32(i32 131, i32 %933)  ; LegacyF16ToF32(value)
  %935 = fmul fast float %928, %921
  %936 = fmul fast float %931, %922
  %937 = fmul fast float %934, %923
  %938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %939 = extractvalue %dx.types.CBufRet.f32 %938, 0
  %940 = fmul fast float %935, %939
  %941 = fmul fast float %936, %939
  %942 = fmul fast float %937, %939
  %943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %944 = extractvalue %dx.types.ResRet.i32 %943, 0
  %945 = lshr i32 %944, 22
  %946 = shl nuw nsw i32 %945, 5
  %947 = call float @dx.op.legacyF16ToF32(i32 131, i32 %946)  ; LegacyF16ToF32(value)
  %948 = fmul fast float %947, %940
  %949 = select i1 %107, float %948, float %940
  %950 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %20, float %31, float %32, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %951 = extractvalue %dx.types.ResRet.f32 %950, 0
  %952 = extractvalue %dx.types.ResRet.f32 %950, 1
  %953 = extractvalue %dx.types.ResRet.f32 %950, 2
  %954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %955 = extractvalue %dx.types.CBufRet.f32 %954, 1
  %956 = fmul fast float %955, %951
  %957 = fmul fast float %955, %952
  %958 = fmul fast float %955, %953
  %959 = call float @dx.op.unary.f32(i32 7, float %908)  ; Saturate(value)
  %960 = call float @dx.op.unary.f32(i32 7, float %909)  ; Saturate(value)
  %961 = call float @dx.op.unary.f32(i32 7, float %910)  ; Saturate(value)
  %962 = fmul fast float %949, %913
  %963 = fmul fast float %941, %914
  %964 = fmul fast float %942, %915
  %965 = call float @dx.op.dot3.f32(i32 55, float %962, float %963, float %964, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %966 = select i1 %107, float 0.000000e+00, float %962
  %967 = select i1 %107, float %965, float %963
  %968 = select i1 %107, float 0.000000e+00, float %964
  %969 = fmul fast float %833, %949
  %970 = fmul fast float %834, %941
  %971 = fmul fast float %835, %942
  %972 = call float @dx.op.dot3.f32(i32 55, float %921, float %922, float %923, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %973 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %974 = extractvalue %dx.types.ResRet.i32 %973, 0
  %975 = and i32 %974, 255
  %976 = uitofp i32 %975 to float
  %977 = lshr i32 %974, 8
  %978 = and i32 %977, 255
  %979 = uitofp i32 %978 to float
  %980 = fmul fast float %979, %972
  %981 = fadd fast float %980, %976
  %982 = fmul fast float %981, 0x3F70101020000000
  %983 = call float @dx.op.unary.f32(i32 7, float %982)  ; Saturate(value)
  %984 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 128, i32 undef)  ; BufferLoad(srv,index,wot)
  %985 = extractvalue %dx.types.ResRet.i32 %984, 0
  %986 = add i32 %985, 0
  %987 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %986, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %988 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %987, %dx.types.Handle %45, float %466, float %467, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %989 = extractvalue %dx.types.ResRet.f32 %988, 0
  %990 = and i32 %127, 8192
  %991 = icmp eq i32 %990, 0
  %992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %993 = extractvalue %dx.types.CBufRet.f32 %992, 0
  br i1 %991, label %1004, label %994, !dx.controlflow.hints !69

; <label>:994                                     ; preds = %907
  %995 = add i32 %124, 176
  %996 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %995, i32 undef)  ; BufferLoad(srv,index,wot)
  %997 = extractvalue %dx.types.ResRet.f32 %996, 0
  %998 = extractvalue %dx.types.ResRet.f32 %996, 1
  %999 = fcmp fast oge float %997, 0.000000e+00
  %1000 = select i1 %999, float %997, float %993
  %1001 = fmul fast float %989, %86
  %1002 = fmul fast float %1001, %998
  %1003 = fadd fast float %1002, %1000
  br label %1014

; <label>:1004                                    ; preds = %907
  %1005 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 104, i32 undef)  ; BufferLoad(srv,index,wot)
  %1006 = extractvalue %dx.types.ResRet.i32 %1005, 0
  %1007 = extractvalue %dx.types.ResRet.i32 %1005, 1
  %1008 = bitcast i32 %1006 to float
  %1009 = bitcast i32 %1007 to float
  %1010 = fcmp fast oge float %1008, 0.000000e+00
  %1011 = select i1 %1010, float %1008, float %993
  %1012 = fmul fast float %1009, %989
  %1013 = fadd fast float %1011, %1012
  br label %1014

; <label>:1014                                    ; preds = %1004, %994
  %1015 = phi float [ %1003, %994 ], [ %1013, %1004 ]
  %1016 = fmul fast float %912, %911
  %1017 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 0, i32 %516, i32 %517, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1018 = extractvalue %dx.types.ResRet.i32 %1017, 0
  %1019 = lshr i32 %1018, 18
  %1020 = uitofp i32 %1019 to float
  %1021 = fmul fast float %1020, 0x3F4C00EBA0000000
  %1022 = call float @dx.op.unary.f32(i32 21, float %1021)  ; Exp(value)
  %1023 = fadd fast float %1022, -1.000000e+00
  %1024 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %1025 = extractvalue %dx.types.Dimensions %1024, 0
  %1026 = sitofp i32 %1025 to float
  %1027 = extractvalue %dx.types.Dimensions %1024, 1
  %1028 = sitofp i32 %1027 to float
  %1029 = fcmp fast oge float %514, %1026
  %1030 = fcmp fast oge float %515, %1028
  %1031 = or i1 %1029, %1030
  %1032 = select i1 %1031, float 0x4197782600000000, float %1023
  %1033 = icmp eq i32 %123, 3
  %1034 = fcmp fast ogt float %43, %1032
  %1035 = and i1 %540, %1034
  %1036 = or i1 %1033, %1035
  %1037 = icmp eq i32 %123, 2
  %1038 = fcmp fast ole float %43, %1032
  %1039 = and i1 %1037, %1038
  %1040 = or i1 %1039, %1036
  %1041 = fmul fast float %969, %956
  %1042 = fmul fast float %970, %957
  %1043 = fmul fast float %971, %958
  %1044 = fadd fast float %1041, %966
  %1045 = fadd fast float %967, %1042
  %1046 = fadd fast float %1043, %968
  %1047 = fmul fast float %1044, %911
  %1048 = fmul fast float %1045, %911
  %1049 = fmul fast float %1046, %911
  %1050 = fmul fast float %957, %911
  %1051 = fmul fast float %958, %911
  %1052 = fsub fast float 1.000000e+00, %911
  %1053 = call float @dx.op.dot3.f32(i32 55, float %1052, float %1052, float %1052, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1054 = fsub fast float 1.000000e+00, %1053
  %1055 = fmul fast float %1015, %983
  %1056 = fsub fast float 1.000000e+00, %1016
  %1057 = fsub fast float %1056, %983
  %1058 = call float @dx.op.unary.f32(i32 7, float %1057)  ; Saturate(value)
  %1059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1060 = extractvalue %dx.types.CBufRet.f32 %1059, 3
  %1061 = fmul fast float %1060, %1058
  %1062 = fadd fast float %1061, %1055
  %1063 = and i32 %127, 1048576
  %1064 = icmp eq i32 %1063, 0
  br i1 %1064, label %1156, label %1065, !dx.controlflow.hints !70

; <label>:1065                                    ; preds = %1014
  %1066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1067 = extractvalue %dx.types.CBufRet.f32 %1066, 2
  %1068 = extractvalue %dx.types.CBufRet.f32 %1066, 3
  %1069 = fmul fast float %1067, %48
  %1070 = fmul fast float %1068, %49
  %1071 = call float @dx.op.unary.f32(i32 7, float %1069)  ; Saturate(value)
  %1072 = call float @dx.op.unary.f32(i32 7, float %1070)  ; Saturate(value)
  %1073 = select i1 %1040, i32 2, i32 0
  %1074 = or i32 %1073, 1
  %1075 = uitofp i32 %1074 to float
  %1076 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %8, %dx.types.Handle %20, float %1071, float %1072, float %1075, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1077 = extractvalue %dx.types.ResRet.f32 %1076, 0
  %1078 = extractvalue %dx.types.ResRet.f32 %1076, 1
  %1079 = extractvalue %dx.types.ResRet.f32 %1076, 2
  %1080 = extractvalue %dx.types.ResRet.f32 %1076, 3
  %1081 = add nuw nsw i32 %1073, 2
  %1082 = uitofp i32 %1081 to float
  %1083 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %8, %dx.types.Handle %20, float %1071, float %1072, float %1082, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1084 = extractvalue %dx.types.ResRet.f32 %1083, 0
  %1085 = extractvalue %dx.types.ResRet.f32 %1083, 1
  %1086 = extractvalue %dx.types.ResRet.f32 %1083, 2
  %1087 = extractvalue %dx.types.ResRet.f32 %1083, 3
  %1088 = call float @dx.op.binary.f32(i32 35, float %1078, float %1079)  ; FMax(a,b)
  %1089 = call float @dx.op.binary.f32(i32 35, float %1077, float %1088)  ; FMax(a,b)
  %1090 = call float @dx.op.binary.f32(i32 35, float %1089, float %1080)  ; FMax(a,b)
  %1091 = call float @dx.op.binary.f32(i32 36, float %1085, float %1086)  ; FMin(a,b)
  %1092 = call float @dx.op.binary.f32(i32 36, float %1084, float %1091)  ; FMin(a,b)
  %1093 = call float @dx.op.binary.f32(i32 36, float %1092, float %1087)  ; FMin(a,b)
  %1094 = fmul fast float %1090, 2.550000e+02
  %1095 = fadd fast float %1094, 0x3F70101020000000
  %1096 = fptoui float %1095 to i32
  %1097 = fmul fast float %1093, 2.550000e+02
  %1098 = fadd fast float %1097, 0x3F70101020000000
  %1099 = fptoui float %1098 to i32
  %1100 = icmp ult i32 %1096, %1099
  br i1 %1100, label %1101, label %1149

; <label>:1101                                    ; preds = %1065
  %1102 = fcmp fast ogt float %42, 9.843750e-01
  %1103 = fadd fast float %43, -4.000000e+00
  %1104 = select i1 %1102, float -4.000000e+00, float %1103
  %1105 = call float @dx.op.binary.f32(i32 35, float %1104, float 0.000000e+00)  ; FMax(a,b)
  %1106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1107 = extractvalue %dx.types.CBufRet.f32 %1106, 0
  %1108 = fadd fast float %1107, %1105
  %1109 = extractvalue %dx.types.CBufRet.f32 %1106, 2
  %1110 = fmul fast float %1108, %1109
  %1111 = call float @dx.op.unary.f32(i32 23, float %1110)  ; Log(value)
  %1112 = extractvalue %dx.types.CBufRet.f32 %1106, 3
  %1113 = fmul fast float %1112, %1111
  %1114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1115 = extractvalue %dx.types.CBufRet.f32 %1114, 2
  %1116 = fmul fast float %1113, %1115
  %1117 = call float @dx.op.unary.f32(i32 7, float %1116)  ; Saturate(value)
  %1118 = uitofp i32 %1096 to float
  %1119 = uitofp i32 %1099 to float
  %1120 = fadd fast float %1118, 5.000000e-01
  %1121 = fadd fast float %1119, 5.000000e-01
  %1122 = fmul fast float %1115, %1120
  %1123 = fmul fast float %1115, %1121
  %1124 = fadd fast float %1122, 0x3F0FFB4800000000
  %1125 = fadd fast float %1123, 0xBF0FFB4800000000
  %1126 = call float @dx.op.binary.f32(i32 35, float %1117, float %1124)  ; FMax(a,b)
  %1127 = call float @dx.op.binary.f32(i32 36, float %1126, float %1125)  ; FMin(a,b)
  %1128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1129 = extractvalue %dx.types.CBufRet.f32 %1128, 1
  %1130 = extractvalue %dx.types.CBufRet.f32 %1128, 2
  %1131 = extractvalue %dx.types.CBufRet.f32 %1128, 0
  %1132 = select i1 %1040, float %1131, float 0.000000e+00
  %1133 = fmul fast float %1129, %1127
  %1134 = fadd fast float %1132, %1133
  %1135 = fadd fast float %1132, %1130
  %1136 = fsub fast float %1129, %1130
  %1137 = fadd fast float %1136, %1132
  %1138 = call float @dx.op.binary.f32(i32 35, float %1134, float %1135)  ; FMax(a,b)
  %1139 = call float @dx.op.binary.f32(i32 36, float %1138, float %1137)  ; FMin(a,b)
  %1140 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %19, float %1071, float %1072, float %1139, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1141 = extractvalue %dx.types.ResRet.f32 %1140, 0
  %1142 = extractvalue %dx.types.ResRet.f32 %1140, 1
  %1143 = extractvalue %dx.types.ResRet.f32 %1140, 2
  %1144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1145 = extractvalue %dx.types.CBufRet.f32 %1144, 1
  %1146 = fmul fast float %1145, %1141
  %1147 = fmul fast float %1145, %1142
  %1148 = fmul fast float %1145, %1143
  br label %1149

; <label>:1149                                    ; preds = %1101, %1065
  %1150 = phi float [ %1146, %1101 ], [ 1.000000e+00, %1065 ]
  %1151 = phi float [ %1147, %1101 ], [ 1.000000e+00, %1065 ]
  %1152 = phi float [ %1148, %1101 ], [ 1.000000e+00, %1065 ]
  %1153 = fmul fast float %1150, %1047
  %1154 = fmul fast float %1151, %1048
  %1155 = fmul fast float %1152, %1049
  br label %1156

; <label>:1156                                    ; preds = %1149, %1014
  %1157 = phi float [ %1153, %1149 ], [ %1047, %1014 ]
  %1158 = phi float [ %1154, %1149 ], [ %1048, %1014 ]
  %1159 = phi float [ %1155, %1149 ], [ %1049, %1014 ]
  %1160 = and i32 %127, 2097152
  %1161 = icmp eq i32 %1160, 0
  br i1 %1161, label %1166, label %1162, !dx.controlflow.hints !71

; <label>:1162                                    ; preds = %1156
  %1163 = add i32 %124, 192
  %1164 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %1163, i32 undef)  ; BufferLoad(srv,index,wot)
  %1165 = extractvalue %dx.types.ResRet.f32 %1164, 0
  br label %1169

; <label>:1166                                    ; preds = %1156
  %1167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1168 = extractvalue %dx.types.CBufRet.f32 %1167, 3
  br label %1169

; <label>:1169                                    ; preds = %1166, %1162
  %1170 = phi float [ %1165, %1162 ], [ %1168, %1166 ]
  %1171 = fmul fast float %959, %911
  %1172 = fmul fast float %1171, %956
  %1173 = fmul fast float %1050, %960
  %1174 = fmul fast float %1051, %961
  br i1 %1035, label %1175, label %1284

; <label>:1175                                    ; preds = %1169
  %1176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1177 = extractvalue %dx.types.CBufRet.f32 %1176, 2
  %1178 = extractvalue %dx.types.CBufRet.f32 %1176, 3
  %1179 = fmul fast float %1177, %48
  %1180 = fmul fast float %1178, %49
  %1181 = call float @dx.op.unary.f32(i32 7, float %1179)  ; Saturate(value)
  %1182 = call float @dx.op.unary.f32(i32 7, float %1180)  ; Saturate(value)
  %1183 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %8, %dx.types.Handle %20, float %1181, float %1182, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1184 = extractvalue %dx.types.ResRet.f32 %1183, 0
  %1185 = extractvalue %dx.types.ResRet.f32 %1183, 1
  %1186 = extractvalue %dx.types.ResRet.f32 %1183, 2
  %1187 = extractvalue %dx.types.ResRet.f32 %1183, 3
  %1188 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %8, %dx.types.Handle %20, float %1181, float %1182, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1189 = extractvalue %dx.types.ResRet.f32 %1188, 0
  %1190 = extractvalue %dx.types.ResRet.f32 %1188, 1
  %1191 = extractvalue %dx.types.ResRet.f32 %1188, 2
  %1192 = extractvalue %dx.types.ResRet.f32 %1188, 3
  %1193 = call float @dx.op.binary.f32(i32 35, float %1185, float %1186)  ; FMax(a,b)
  %1194 = call float @dx.op.binary.f32(i32 35, float %1184, float %1193)  ; FMax(a,b)
  %1195 = call float @dx.op.binary.f32(i32 35, float %1194, float %1187)  ; FMax(a,b)
  %1196 = call float @dx.op.binary.f32(i32 36, float %1190, float %1191)  ; FMin(a,b)
  %1197 = call float @dx.op.binary.f32(i32 36, float %1189, float %1196)  ; FMin(a,b)
  %1198 = call float @dx.op.binary.f32(i32 36, float %1197, float %1192)  ; FMin(a,b)
  %1199 = fmul fast float %1195, 2.550000e+02
  %1200 = fadd fast float %1199, 0x3F70101020000000
  %1201 = fptoui float %1200 to i32
  %1202 = fmul fast float %1198, 2.550000e+02
  %1203 = fadd fast float %1202, 0x3F70101020000000
  %1204 = fptoui float %1203 to i32
  %1205 = icmp ult i32 %1201, %1204
  br i1 %1205, label %1206, label %1257

; <label>:1206                                    ; preds = %1175
  %1207 = fcmp fast ogt float %42, 9.843750e-01
  %1208 = fadd fast float %43, -4.000000e+00
  %1209 = select i1 %1207, float -4.000000e+00, float %1208
  %1210 = call float @dx.op.binary.f32(i32 35, float %1209, float 0.000000e+00)  ; FMax(a,b)
  %1211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1212 = extractvalue %dx.types.CBufRet.f32 %1211, 0
  %1213 = fadd fast float %1212, %1210
  %1214 = extractvalue %dx.types.CBufRet.f32 %1211, 2
  %1215 = fmul fast float %1213, %1214
  %1216 = call float @dx.op.unary.f32(i32 23, float %1215)  ; Log(value)
  %1217 = extractvalue %dx.types.CBufRet.f32 %1211, 3
  %1218 = fmul fast float %1217, %1216
  %1219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1220 = extractvalue %dx.types.CBufRet.f32 %1219, 2
  %1221 = fmul fast float %1218, %1220
  %1222 = call float @dx.op.unary.f32(i32 7, float %1221)  ; Saturate(value)
  %1223 = uitofp i32 %1201 to float
  %1224 = uitofp i32 %1204 to float
  %1225 = fadd fast float %1223, 5.000000e-01
  %1226 = fadd fast float %1224, 5.000000e-01
  %1227 = fmul fast float %1220, %1225
  %1228 = fmul fast float %1220, %1226
  %1229 = fadd fast float %1227, 0x3F0FFB4800000000
  %1230 = fadd fast float %1228, 0xBF0FFB4800000000
  %1231 = call float @dx.op.binary.f32(i32 35, float %1222, float %1229)  ; FMax(a,b)
  %1232 = call float @dx.op.binary.f32(i32 36, float %1231, float %1230)  ; FMin(a,b)
  %1233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1234 = extractvalue %dx.types.CBufRet.f32 %1233, 1
  %1235 = extractvalue %dx.types.CBufRet.f32 %1233, 2
  %1236 = extractvalue %dx.types.CBufRet.f32 %1233, 0
  %1237 = fmul fast float %1234, %1232
  %1238 = fadd fast float %1236, %1237
  %1239 = fadd fast float %1236, %1235
  %1240 = fsub fast float %1234, %1235
  %1241 = fadd fast float %1240, %1236
  %1242 = call float @dx.op.binary.f32(i32 35, float %1238, float %1239)  ; FMax(a,b)
  %1243 = call float @dx.op.binary.f32(i32 36, float %1242, float %1241)  ; FMin(a,b)
  %1244 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %19, float %1181, float %1182, float %1243, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1245 = extractvalue %dx.types.ResRet.f32 %1244, 0
  %1246 = extractvalue %dx.types.ResRet.f32 %1244, 1
  %1247 = extractvalue %dx.types.ResRet.f32 %1244, 2
  %1248 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %19, float %1181, float %1182, float %1243, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1249 = extractvalue %dx.types.ResRet.f32 %1248, 0
  %1250 = extractvalue %dx.types.ResRet.f32 %1248, 1
  %1251 = extractvalue %dx.types.ResRet.f32 %1248, 2
  %1252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1253 = extractvalue %dx.types.CBufRet.f32 %1252, 1
  %1254 = fmul fast float %1253, %1249
  %1255 = fmul fast float %1253, %1250
  %1256 = fmul fast float %1253, %1251
  br label %1257

; <label>:1257                                    ; preds = %1206, %1175
  %1258 = phi float [ %1245, %1206 ], [ 1.000000e+00, %1175 ]
  %1259 = phi float [ %1246, %1206 ], [ 1.000000e+00, %1175 ]
  %1260 = phi float [ %1247, %1206 ], [ 1.000000e+00, %1175 ]
  %1261 = phi float [ %1254, %1206 ], [ 0.000000e+00, %1175 ]
  %1262 = phi float [ %1255, %1206 ], [ 0.000000e+00, %1175 ]
  %1263 = phi float [ %1256, %1206 ], [ 0.000000e+00, %1175 ]
  %1264 = fmul fast float %1261, %1054
  %1265 = fmul fast float %1262, %1054
  %1266 = fmul fast float %1263, %1054
  %1267 = call float @dx.op.dot3.f32(i32 55, float %1258, float %1259, float %1260, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1268 = call float @dx.op.dot3.f32(i32 55, float %1264, float %1265, float %1266, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1269 = select i1 %107, float %1267, float %1258
  %1270 = select i1 %107, float %1267, float %1259
  %1271 = select i1 %107, float 1.000000e+00, float %1260
  %1272 = select i1 %107, float %1268, float %1264
  %1273 = select i1 %107, float 0.000000e+00, float %1265
  %1274 = select i1 %107, float 0.000000e+00, float %1266
  %1275 = fmul fast float %1269, %1172
  %1276 = fmul fast float %1270, %1173
  %1277 = fmul fast float %1271, %1174
  %1278 = fadd fast float %1275, %1272
  %1279 = fadd fast float %1276, %1273
  %1280 = fadd fast float %1274, %1277
  %1281 = fmul fast float %1269, %1157
  %1282 = fmul fast float %1270, %1158
  %1283 = fmul fast float %1271, %1159
  br label %1284

; <label>:1284                                    ; preds = %1257, %1169
  %1285 = phi float [ %1032, %1257 ], [ %43, %1169 ]
  %1286 = phi float [ %1278, %1257 ], [ %1172, %1169 ]
  %1287 = phi float [ %1279, %1257 ], [ %1173, %1169 ]
  %1288 = phi float [ %1280, %1257 ], [ %1174, %1169 ]
  %1289 = phi float [ %1281, %1257 ], [ %1157, %1169 ]
  %1290 = phi float [ %1282, %1257 ], [ %1158, %1169 ]
  %1291 = phi float [ %1283, %1257 ], [ %1159, %1169 ]
  %1292 = phi float [ %1258, %1257 ], [ 1.000000e+00, %1169 ]
  br i1 %1040, label %1694, label %1293

; <label>:1293                                    ; preds = %1284
  %1294 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %20, float %31, float %32, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1295 = extractvalue %dx.types.ResRet.f32 %1294, 0
  %1296 = extractvalue %dx.types.ResRet.f32 %1294, 1
  %1297 = extractvalue %dx.types.ResRet.f32 %1294, 2
  %1298 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %20, float %31, float %32, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1299 = extractvalue %dx.types.ResRet.f32 %1298, 0
  %1300 = extractvalue %dx.types.ResRet.f32 %1298, 1
  %1301 = extractvalue %dx.types.ResRet.f32 %1298, 2
  %1302 = fmul fast float %1295, %1054
  %1303 = fmul fast float %1296, %1054
  %1304 = fmul fast float %1297, %1054
  %1305 = fmul fast float %1299, %1292
  %1306 = call float @dx.op.dot3.f32(i32 55, float %1299, float %1300, float %1301, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1307 = call float @dx.op.dot3.f32(i32 55, float %1302, float %1303, float %1304, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1308 = select i1 %107, float %1306, float %1299
  %1309 = select i1 %107, float %1306, float %1300
  %1310 = select i1 %107, float 1.000000e+00, float %1301
  %1311 = select i1 %107, float %1307, float %1302
  %1312 = select i1 %107, float 0.000000e+00, float %1303
  %1313 = select i1 %107, float 0.000000e+00, float %1304
  %1314 = fmul fast float %1308, %1286
  %1315 = fmul fast float %1309, %1287
  %1316 = fmul fast float %1310, %1288
  %1317 = fadd fast float %1314, %1311
  %1318 = fadd fast float %1315, %1312
  %1319 = fadd fast float %1316, %1313
  %1320 = fmul fast float %1308, %1289
  %1321 = fmul fast float %1309, %1290
  %1322 = fmul fast float %1310, %1291
  %1323 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1324 = extractvalue %dx.types.CBufRet.i32 %1323, 0
  %1325 = icmp eq i32 %1324, 0
  br i1 %1325, label %1694, label %1326, !dx.controlflow.hints !72

; <label>:1326                                    ; preds = %1293
  %1327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1328 = extractvalue %dx.types.CBufRet.f32 %1327, 2
  %1329 = extractvalue %dx.types.CBufRet.f32 %1327, 3
  %1330 = fmul fast float %1328, %48
  %1331 = fmul fast float %1329, %49
  %1332 = fmul fast float %1330, 2.000000e+00
  %1333 = fmul fast float %1331, 2.000000e+00
  %1334 = fsub fast float 1.000000e+00, %1332
  %1335 = fsub fast float 1.000000e+00, %1333
  %1336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1337 = extractvalue %dx.types.CBufRet.f32 %1336, 0
  %1338 = extractvalue %dx.types.CBufRet.f32 %1336, 1
  %1339 = extractvalue %dx.types.CBufRet.f32 %1336, 2
  %1340 = fmul fast float %1334, %1337
  %1341 = fmul fast float %1334, %1338
  %1342 = fmul fast float %1334, %1339
  %1343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1344 = extractvalue %dx.types.CBufRet.f32 %1343, 0
  %1345 = extractvalue %dx.types.CBufRet.f32 %1343, 1
  %1346 = extractvalue %dx.types.CBufRet.f32 %1343, 2
  %1347 = fmul fast float %1335, %1344
  %1348 = fmul fast float %1335, %1345
  %1349 = fmul fast float %1335, %1346
  %1350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1351 = extractvalue %dx.types.CBufRet.f32 %1350, 0
  %1352 = extractvalue %dx.types.CBufRet.f32 %1350, 1
  %1353 = extractvalue %dx.types.CBufRet.f32 %1350, 2
  %1354 = fadd fast float %1347, %1351
  %1355 = fadd fast float %1354, %1340
  %1356 = fadd fast float %1348, %1352
  %1357 = fadd fast float %1356, %1341
  %1358 = fadd fast float %1349, %1353
  %1359 = fadd fast float %1358, %1342
  %1360 = fmul fast float %1355, %1285
  %1361 = fmul fast float %1357, %1285
  %1362 = fmul fast float %1359, %1285
  %1363 = fmul fast float %1360, %1360
  %1364 = fmul fast float %1361, %1361
  %1365 = fadd fast float %1363, %1364
  %1366 = fmul fast float %1362, %1362
  %1367 = fadd fast float %1365, %1366
  %1368 = call float @dx.op.unary.f32(i32 24, float %1367)  ; Sqrt(value)
  %1369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1370 = extractvalue %dx.types.CBufRet.f32 %1369, 0
  %1371 = fsub fast float %1368, %1370
  %1372 = extractvalue %dx.types.CBufRet.f32 %1369, 2
  %1373 = fmul fast float %1371, %1372
  %1374 = call float @dx.op.unary.f32(i32 7, float %1373)  ; Saturate(value)
  %1375 = fadd fast float %1374, -5.000000e-01
  %1376 = fmul fast float %1375, 2.000000e+00
  %1377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1378 = extractvalue %dx.types.CBufRet.f32 %1377, 2
  %1379 = call float @dx.op.binary.f32(i32 36, float %1378, float %1376)  ; FMin(a,b)
  %1380 = fsub fast float -0.000000e+00, %1378
  %1381 = fcmp fast ogt float %1379, %1380
  br i1 %1381, label %1382, label %1694, !dx.controlflow.hints !73

; <label>:1382                                    ; preds = %1326
  %1383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %1384 = extractvalue %dx.types.CBufRet.f32 %1383, 3
  %1385 = fcmp fast ogt float %1384, 0.000000e+00
  br i1 %1385, label %1386, label %1461, !dx.controlflow.hints !74

; <label>:1386                                    ; preds = %1382
  %1387 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %14, i32 0)  ; GetDimensions(handle,mipLevel)
  %1388 = extractvalue %dx.types.Dimensions %1387, 0
  %1389 = sitofp i32 %1388 to float
  %1390 = extractvalue %dx.types.Dimensions %1387, 1
  %1391 = sitofp i32 %1390 to float
  %1392 = fmul fast float %1330, %1389
  %1393 = fmul fast float %1331, %1391
  %1394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1395 = extractvalue %dx.types.CBufRet.f32 %1394, 1
  %1396 = fsub fast float -0.000000e+00, %1395
  %1397 = fptoui float %1396 to i32
  %1398 = fptoui float %1392 to i32
  %1399 = fptoui float %1393 to i32
  %1400 = and i32 %1397, 31
  %1401 = lshr i32 %1398, %1400
  %1402 = lshr i32 %1399, %1400
  %1403 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %14, i32 %1397, i32 %1401, i32 %1402, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1404 = extractvalue %dx.types.ResRet.f32 %1403, 0
  %1405 = fcmp fast olt float %1404, -1.000000e+00
  %1406 = fcmp fast ogt float %1404, -1.000000e+00
  %1407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1408 = extractvalue %dx.types.CBufRet.f32 %1407, 1
  %1409 = select i1 %1406, float %1408, float 1.000000e+00
  %1410 = fadd fast float %1404, 1.000000e+00
  %1411 = fmul fast float %1409, %1410
  %1412 = call float @dx.op.unary.f32(i32 6, float %1411)  ; FAbs(value)
  %1413 = extractvalue %dx.types.CBufRet.f32 %1407, 3
  %1414 = fcmp fast oge float %1412, %1413
  %1415 = select i1 %1414, float 0x4197782600000000, float %1412
  %1416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %1417 = extractvalue %dx.types.CBufRet.f32 %1416, 0
  %1418 = extractvalue %dx.types.CBufRet.f32 %1416, 1
  %1419 = extractvalue %dx.types.CBufRet.f32 %1416, 2
  %1420 = select i1 %1405, float %1417, float %1337
  %1421 = select i1 %1405, float %1418, float %1338
  %1422 = select i1 %1405, float %1419, float %1339
  %1423 = fmul fast float %1420, %1334
  %1424 = fmul fast float %1421, %1334
  %1425 = fmul fast float %1422, %1334
  %1426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %1427 = extractvalue %dx.types.CBufRet.f32 %1426, 0
  %1428 = extractvalue %dx.types.CBufRet.f32 %1426, 1
  %1429 = extractvalue %dx.types.CBufRet.f32 %1426, 2
  %1430 = select i1 %1405, float %1427, float %1344
  %1431 = select i1 %1405, float %1428, float %1345
  %1432 = select i1 %1405, float %1429, float %1346
  %1433 = fmul fast float %1430, %1335
  %1434 = fmul fast float %1431, %1335
  %1435 = fmul fast float %1432, %1335
  %1436 = fadd fast float %1433, %1423
  %1437 = fadd fast float %1434, %1424
  %1438 = fadd fast float %1435, %1425
  %1439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %1440 = extractvalue %dx.types.CBufRet.f32 %1439, 0
  %1441 = extractvalue %dx.types.CBufRet.f32 %1439, 1
  %1442 = extractvalue %dx.types.CBufRet.f32 %1439, 2
  %1443 = select i1 %1405, float %1440, float %1351
  %1444 = select i1 %1405, float %1441, float %1352
  %1445 = select i1 %1405, float %1442, float %1353
  %1446 = fadd fast float %1436, %1443
  %1447 = fadd fast float %1437, %1444
  %1448 = fadd fast float %1438, %1445
  %1449 = fmul fast float %1446, %1415
  %1450 = fmul fast float %1447, %1415
  %1451 = fmul fast float %1448, %1415
  %1452 = fmul fast float %1449, %1449
  %1453 = fmul fast float %1450, %1450
  %1454 = fadd fast float %1452, %1453
  %1455 = fmul fast float %1451, %1451
  %1456 = fadd fast float %1454, %1455
  %1457 = call float @dx.op.unary.f32(i32 24, float %1456)  ; Sqrt(value)
  %1458 = fsub fast float %1457, %1370
  %1459 = fmul fast float %1458, %1372
  %1460 = call float @dx.op.unary.f32(i32 7, float %1459)  ; Saturate(value)
  br label %1461

; <label>:1461                                    ; preds = %1386, %1382
  %1462 = phi float [ %1460, %1386 ], [ 1.000000e+00, %1382 ]
  %1463 = fmul fast float %1379, 5.000000e-01
  %1464 = fadd fast float %1463, 5.000000e-01
  %1465 = call float @dx.op.unary.f32(i32 22, float %1464)  ; Frc(value)
  %1466 = call float @dx.op.unary.f32(i32 27, float %1465)  ; Round_ni(value)
  %1467 = call float @dx.op.unary.f32(i32 22, float %1465)  ; Frc(value)
  %1468 = fmul fast float %1467, 2.000000e+00
  %1469 = fadd fast float %1468, -1.000000e+00
  %1470 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %20, float %1330, float %1331, float %1466, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1471 = extractvalue %dx.types.ResRet.f32 %1470, 0
  %1472 = extractvalue %dx.types.ResRet.f32 %1470, 1
  %1473 = extractvalue %dx.types.ResRet.f32 %1470, 2
  %1474 = extractvalue %dx.types.ResRet.f32 %1470, 3
  %1475 = fadd fast float %1471, -5.000000e-01
  %1476 = fadd fast float %1473, -5.000000e-01
  %1477 = fmul fast float %1475, 0xBFD5555560000000
  %1478 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1476, float %1477)  ; FMad(a,b,c)
  %1479 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1472, float 0.000000e+00)  ; FMad(a,b,c)
  %1480 = fadd fast float %1479, %1474
  %1481 = fmul fast float %1475, -7.500000e-01
  %1482 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1476, float %1481)  ; FMad(a,b,c)
  %1483 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1472, float 0.000000e+00)  ; FMad(a,b,c)
  %1484 = fadd fast float %1483, %1474
  %1485 = call float @dx.op.binary.f32(i32 35, float %1478, float -1.000000e+00)  ; FMax(a,b)
  %1486 = call float @dx.op.binary.f32(i32 35, float %1480, float -1.000000e+00)  ; FMax(a,b)
  %1487 = call float @dx.op.binary.f32(i32 35, float %1482, float -1.000000e+00)  ; FMax(a,b)
  %1488 = call float @dx.op.binary.f32(i32 35, float %1484, float -1.000000e+00)  ; FMax(a,b)
  %1489 = call float @dx.op.binary.f32(i32 36, float %1485, float 1.000000e+00)  ; FMin(a,b)
  %1490 = call float @dx.op.binary.f32(i32 36, float %1486, float 1.000000e+00)  ; FMin(a,b)
  %1491 = call float @dx.op.binary.f32(i32 36, float %1487, float 1.000000e+00)  ; FMin(a,b)
  %1492 = call float @dx.op.binary.f32(i32 36, float %1488, float 1.000000e+00)  ; FMin(a,b)
  %1493 = fcmp fast olt float %1489, 0x3FEFFF8020000000
  br i1 %1493, label %1494, label %1609, !dx.controlflow.hints !75

; <label>:1494                                    ; preds = %1461
  %1495 = extractvalue %dx.types.CBufRet.f32 %1377, 3
  %1496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1497 = extractvalue %dx.types.CBufRet.f32 %1496, 0
  %1498 = extractvalue %dx.types.CBufRet.f32 %1496, 1
  %1499 = extractvalue %dx.types.CBufRet.f32 %1496, 2
  %1500 = extractvalue %dx.types.CBufRet.f32 %1496, 3
  %1501 = fsub fast float %1497, %1489
  %1502 = fsub fast float %1498, %1490
  %1503 = fsub fast float %1499, %1491
  %1504 = fsub fast float %1500, %1492
  %1505 = fmul fast float %1501, %1495
  %1506 = fmul fast float %1502, %1495
  %1507 = fmul fast float %1503, %1495
  %1508 = fmul fast float %1504, %1495
  %1509 = fadd fast float %1505, %1489
  %1510 = fadd fast float %1506, %1490
  %1511 = fsub fast float -0.000000e+00, %1510
  %1512 = fadd fast float %1507, %1491
  %1513 = fadd fast float %1508, %1492
  %1514 = fmul fast float %1509, %1509
  %1515 = fsub fast float %1510, %1514
  %1516 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1515)  ; FMax(a,b)
  %1517 = fdiv fast float 1.000000e+00, %1516
  %1518 = fmul fast float %1510, %1509
  %1519 = fsub fast float %1512, %1518
  %1520 = fsub fast float %1469, %1509
  %1521 = fmul fast float %1469, %1469
  %1522 = fsub fast float %1521, %1510
  %1523 = fmul fast float %1520, %1517
  %1524 = fmul fast float %1523, %1519
  %1525 = fsub fast float %1522, %1524
  %1526 = fmul fast float %1510, %1510
  %1527 = fsub fast float %1513, %1526
  %1528 = fmul fast float %1519, %1519
  %1529 = fmul fast float %1528, %1517
  %1530 = fsub fast float %1527, %1529
  %1531 = fdiv fast float %1525, %1530
  %1532 = fmul fast float %1519, %1531
  %1533 = fsub fast float %1520, %1532
  %1534 = fmul fast float %1533, %1517
  %1535 = fmul fast float %1534, %1509
  %1536 = fsub fast float 1.000000e+00, %1535
  %1537 = fmul fast float %1510, %1531
  %1538 = fsub fast float %1536, %1537
  %1539 = fmul fast float %1534, %1534
  %1540 = fmul fast float %1531, 4.000000e+00
  %1541 = fmul fast float %1540, %1538
  %1542 = fsub fast float %1539, %1541
  %1543 = call float @dx.op.unary.f32(i32 24, float %1542)  ; Sqrt(value)
  %1544 = fcmp fast oge float %1534, 0.000000e+00
  %1545 = fsub fast float -0.000000e+00, %1543
  %1546 = select i1 %1544, float %1545, float %1543
  %1547 = fsub fast float %1546, %1534
  %1548 = fdiv fast float %1547, %1531
  %1549 = fdiv fast float %1538, %1547
  %1550 = fmul fast float %1548, 5.000000e-01
  %1551 = fmul fast float %1549, 2.000000e+00
  %1552 = select i1 %1544, float %1550, float %1551
  %1553 = select i1 %1544, float %1551, float %1550
  %1554 = call float @dx.op.binary.f32(i32 35, float %1552, float %1553)  ; FMax(a,b)
  %1555 = call float @dx.op.binary.f32(i32 36, float %1552, float %1553)  ; FMin(a,b)
  %1556 = fcmp fast ogt float %1469, %1555
  br i1 %1556, label %1557, label %1567

; <label>:1557                                    ; preds = %1494
  %1558 = fsub fast float %1469, %1555
  %1559 = fsub fast float %1554, %1555
  %1560 = fmul fast float %1558, %1559
  %1561 = fmul fast float %1554, %1469
  %1562 = fadd fast float %1554, %1469
  %1563 = fmul fast float %1562, %1509
  %1564 = fadd fast float %1561, %1510
  %1565 = fsub fast float %1564, %1563
  %1566 = fdiv fast float %1565, %1560
  br label %1567

; <label>:1567                                    ; preds = %1557, %1494
  %1568 = phi float [ %1566, %1557 ], [ 0.000000e+00, %1494 ]
  %1569 = fcmp fast ogt float %1469, %1554
  %1570 = fsub fast float %1469, %1554
  br i1 %1569, label %1571, label %1581

; <label>:1571                                    ; preds = %1567
  %1572 = fsub fast float %1554, %1555
  %1573 = fmul fast float %1572, %1570
  %1574 = fmul fast float %1555, %1469
  %1575 = fadd fast float %1555, %1469
  %1576 = fmul fast float %1575, %1509
  %1577 = fsub fast float %1511, %1574
  %1578 = fadd fast float %1577, %1576
  %1579 = fdiv fast float %1578, %1573
  %1580 = fadd fast float %1579, %1568
  br label %1581

; <label>:1581                                    ; preds = %1571, %1567
  %1582 = phi float [ %1580, %1571 ], [ %1568, %1567 ]
  %1583 = fsub fast float %1469, %1555
  %1584 = fmul fast float %1583, %1570
  %1585 = fmul fast float %1555, %1554
  %1586 = fadd fast float %1555, %1554
  %1587 = fmul fast float %1586, %1509
  %1588 = fadd fast float %1585, %1510
  %1589 = fsub fast float %1588, %1587
  %1590 = fdiv fast float %1589, %1584
  %1591 = call float @dx.op.unary.f32(i32 7, float %1582)  ; Saturate(value)
  %1592 = fcmp fast oeq float %1170, 0.000000e+00
  %1593 = extractvalue %dx.types.CBufRet.f32 %1377, 0
  %1594 = fcmp fast oeq float %1593, 0.000000e+00
  %1595 = or i1 %1592, %1594
  %1596 = fmul fast float %1593, 2.000000e+00
  %1597 = fadd fast float %1378, %1379
  %1598 = fdiv fast float %1597, %1596
  %1599 = call float @dx.op.unary.f32(i32 7, float %1598)  ; Saturate(value)
  %1600 = fmul fast float %1599, 2.000000e+00
  %1601 = fsub fast float 3.000000e+00, %1600
  %1602 = fmul fast float %1599, %1599
  %1603 = fmul fast float %1602, %1601
  %1604 = select i1 %1595, float 1.000000e+00, float %1603
  %1605 = fmul fast float %1590, %1170
  %1606 = fadd fast float %1591, %1605
  %1607 = call float @dx.op.unary.f32(i32 7, float %1606)  ; Saturate(value)
  %1608 = fmul fast float %1604, %1607
  br label %1609

; <label>:1609                                    ; preds = %1581, %1461
  %1610 = phi float [ %1608, %1581 ], [ 0.000000e+00, %1461 ]
  %1611 = fsub fast float 1.000000e+00, %1610
  %1612 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %20, float %1330, float %1331, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1613 = extractvalue %dx.types.ResRet.f32 %1612, 0
  %1614 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1615 = extractvalue %dx.types.CBufRet.i32 %1614, 2
  %1616 = icmp eq i32 %1615, 0
  br i1 %1616, label %1622, label %1617

; <label>:1617                                    ; preds = %1609
  %1618 = call float @dx.op.unary.f32(i32 7, float %1610)  ; Saturate(value)
  %1619 = fadd fast float %1613, -1.000000e+00
  %1620 = fmul fast float %1618, %1619
  %1621 = fadd fast float %1620, 1.000000e+00
  br label %1622

; <label>:1622                                    ; preds = %1617, %1609
  %1623 = phi float [ %1621, %1617 ], [ %1611, %1609 ]
  br i1 %1385, label %1624, label %1642

; <label>:1624                                    ; preds = %1622
  %1625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1626 = extractvalue %dx.types.CBufRet.f32 %1625, 1
  %1627 = fsub fast float %1462, %1626
  %1628 = call float @dx.op.unary.f32(i32 7, float %1627)  ; Saturate(value)
  %1629 = fsub fast float %1462, %1384
  %1630 = call float @dx.op.unary.f32(i32 7, float %1629)  ; Saturate(value)
  %1631 = fsub fast float %1628, %1630
  %1632 = fsub fast float %1464, %1630
  %1633 = fdiv fast float %1632, %1631
  %1634 = call float @dx.op.unary.f32(i32 7, float %1633)  ; Saturate(value)
  %1635 = fmul fast float %1634, 2.000000e+00
  %1636 = fsub fast float 3.000000e+00, %1635
  %1637 = fsub fast float %1613, %1623
  %1638 = fmul fast float %1634, %1634
  %1639 = fmul fast float %1638, %1637
  %1640 = fmul fast float %1639, %1636
  %1641 = fadd fast float %1640, %1623
  br label %1642

; <label>:1642                                    ; preds = %1624, %1622
  %1643 = phi float [ %1641, %1624 ], [ %1623, %1622 ]
  %1644 = call float @dx.op.binary.f32(i32 35, float %1613, float %1643)  ; FMax(a,b)
  %1645 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %1646 = extractvalue %dx.types.CBufRet.i32 %1645, 2
  %1647 = and i32 %1646, 1
  %1648 = icmp eq i32 %1647, 0
  %1649 = fcmp fast une float %1644, 1.000000e+00
  %1650 = and i1 %1649, %1648
  br i1 %1650, label %1651, label %1670

; <label>:1651                                    ; preds = %1642
  %1652 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %20, float %1330, float %1331, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1653 = extractvalue %dx.types.ResRet.f32 %1652, 0
  %1654 = extractvalue %dx.types.ResRet.f32 %1652, 1
  %1655 = extractvalue %dx.types.ResRet.f32 %1652, 2
  %1656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1657 = extractvalue %dx.types.CBufRet.f32 %1656, 1
  %1658 = fmul fast float %1657, %1653
  %1659 = fmul fast float %1657, %1654
  %1660 = fmul fast float %1657, %1655
  %1661 = fcmp fast ogt float %1613, 0x3FEFFF2E40000000
  %1662 = fsub fast float 1.000000e+00, %1644
  %1663 = fsub fast float 1.000000e+00, %1613
  %1664 = fdiv fast float %1662, %1663
  %1665 = call float @dx.op.unary.f32(i32 7, float %1664)  ; Saturate(value)
  %1666 = select i1 %1661, float 0.000000e+00, float %1665
  %1667 = fmul fast float %1658, %1666
  %1668 = fmul fast float %1659, %1666
  %1669 = fmul fast float %1660, %1666
  br label %1670

; <label>:1670                                    ; preds = %1651, %1642
  %1671 = phi float [ 0.000000e+00, %1642 ], [ %1667, %1651 ]
  %1672 = phi float [ 0.000000e+00, %1642 ], [ %1668, %1651 ]
  %1673 = phi float [ 0.000000e+00, %1642 ], [ %1669, %1651 ]
  %1674 = fmul fast float %1671, %1054
  %1675 = fmul fast float %1672, %1054
  %1676 = fmul fast float %1673, %1054
  %1677 = fmul fast float %1644, %1305
  %1678 = call float @dx.op.dot3.f32(i32 55, float %1644, float %1644, float %1644, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1679 = call float @dx.op.dot3.f32(i32 55, float %1674, float %1675, float %1676, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1680 = select i1 %107, float %1678, float %1644
  %1681 = select i1 %107, float 1.000000e+00, float %1644
  %1682 = select i1 %107, float %1679, float %1674
  %1683 = select i1 %107, float 0.000000e+00, float %1675
  %1684 = select i1 %107, float 0.000000e+00, float %1676
  %1685 = fmul fast float %1680, %1317
  %1686 = fmul fast float %1680, %1318
  %1687 = fmul fast float %1681, %1319
  %1688 = fadd fast float %1685, %1682
  %1689 = fadd fast float %1686, %1683
  %1690 = fadd fast float %1684, %1687
  %1691 = fmul fast float %1680, %1320
  %1692 = fmul fast float %1680, %1321
  %1693 = fmul fast float %1681, %1322
  br label %1694

; <label>:1694                                    ; preds = %1670, %1326, %1293, %1284
  %1695 = phi float [ %1286, %1284 ], [ %1317, %1293 ], [ %1688, %1670 ], [ %1317, %1326 ]
  %1696 = phi float [ %1287, %1284 ], [ %1318, %1293 ], [ %1689, %1670 ], [ %1318, %1326 ]
  %1697 = phi float [ %1288, %1284 ], [ %1319, %1293 ], [ %1690, %1670 ], [ %1319, %1326 ]
  %1698 = phi float [ %1289, %1284 ], [ %1320, %1293 ], [ %1691, %1670 ], [ %1320, %1326 ]
  %1699 = phi float [ %1290, %1284 ], [ %1321, %1293 ], [ %1692, %1670 ], [ %1321, %1326 ]
  %1700 = phi float [ %1291, %1284 ], [ %1322, %1293 ], [ %1693, %1670 ], [ %1322, %1326 ]
  %1701 = phi float [ %1292, %1284 ], [ %1305, %1293 ], [ %1677, %1670 ], [ %1305, %1326 ]
  %1702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1703 = extractvalue %dx.types.CBufRet.f32 %1702, 2
  %1704 = extractvalue %dx.types.CBufRet.f32 %1702, 3
  %1705 = fmul fast float %1703, %48
  %1706 = fmul fast float %1704, %49
  %1707 = call float @dx.op.unary.f32(i32 7, float %1705)  ; Saturate(value)
  %1708 = call float @dx.op.unary.f32(i32 7, float %1706)  ; Saturate(value)
  %1709 = select i1 %1040, i32 2, i32 0
  %1710 = or i32 %1709, 1
  %1711 = uitofp i32 %1710 to float
  %1712 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %8, %dx.types.Handle %20, float %1707, float %1708, float %1711, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1713 = extractvalue %dx.types.ResRet.f32 %1712, 0
  %1714 = extractvalue %dx.types.ResRet.f32 %1712, 1
  %1715 = extractvalue %dx.types.ResRet.f32 %1712, 2
  %1716 = extractvalue %dx.types.ResRet.f32 %1712, 3
  %1717 = add nuw nsw i32 %1709, 2
  %1718 = uitofp i32 %1717 to float
  %1719 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %8, %dx.types.Handle %20, float %1707, float %1708, float %1718, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1720 = extractvalue %dx.types.ResRet.f32 %1719, 0
  %1721 = extractvalue %dx.types.ResRet.f32 %1719, 1
  %1722 = extractvalue %dx.types.ResRet.f32 %1719, 2
  %1723 = extractvalue %dx.types.ResRet.f32 %1719, 3
  %1724 = call float @dx.op.binary.f32(i32 35, float %1714, float %1715)  ; FMax(a,b)
  %1725 = call float @dx.op.binary.f32(i32 35, float %1713, float %1724)  ; FMax(a,b)
  %1726 = call float @dx.op.binary.f32(i32 35, float %1725, float %1716)  ; FMax(a,b)
  %1727 = call float @dx.op.binary.f32(i32 36, float %1721, float %1722)  ; FMin(a,b)
  %1728 = call float @dx.op.binary.f32(i32 36, float %1720, float %1727)  ; FMin(a,b)
  %1729 = call float @dx.op.binary.f32(i32 36, float %1728, float %1723)  ; FMin(a,b)
  %1730 = fmul fast float %1726, 2.550000e+02
  %1731 = fadd fast float %1730, 0x3F70101020000000
  %1732 = fptoui float %1731 to i32
  %1733 = fmul fast float %1729, 2.550000e+02
  %1734 = fadd fast float %1733, 0x3F70101020000000
  %1735 = fptoui float %1734 to i32
  %1736 = icmp ult i32 %1732, %1735
  br i1 %1736, label %1737, label %1789

; <label>:1737                                    ; preds = %1694
  %1738 = fcmp fast ogt float %42, 9.843750e-01
  %1739 = fadd fast float %1285, -4.000000e+00
  %1740 = select i1 %1738, float -4.000000e+00, float %1739
  %1741 = call float @dx.op.binary.f32(i32 35, float %1740, float 0.000000e+00)  ; FMax(a,b)
  %1742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1743 = extractvalue %dx.types.CBufRet.f32 %1742, 0
  %1744 = fadd fast float %1743, %1741
  %1745 = extractvalue %dx.types.CBufRet.f32 %1742, 2
  %1746 = fmul fast float %1744, %1745
  %1747 = call float @dx.op.unary.f32(i32 23, float %1746)  ; Log(value)
  %1748 = extractvalue %dx.types.CBufRet.f32 %1742, 3
  %1749 = fmul fast float %1748, %1747
  %1750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1751 = extractvalue %dx.types.CBufRet.f32 %1750, 2
  %1752 = fmul fast float %1749, %1751
  %1753 = call float @dx.op.unary.f32(i32 7, float %1752)  ; Saturate(value)
  %1754 = uitofp i32 %1732 to float
  %1755 = uitofp i32 %1735 to float
  %1756 = fadd fast float %1754, 5.000000e-01
  %1757 = fadd fast float %1755, 5.000000e-01
  %1758 = fmul fast float %1751, %1756
  %1759 = fmul fast float %1751, %1757
  %1760 = fadd fast float %1758, 0x3F0FFB4800000000
  %1761 = fadd fast float %1759, 0xBF0FFB4800000000
  %1762 = call float @dx.op.binary.f32(i32 35, float %1753, float %1760)  ; FMax(a,b)
  %1763 = call float @dx.op.binary.f32(i32 36, float %1762, float %1761)  ; FMin(a,b)
  %1764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1765 = extractvalue %dx.types.CBufRet.f32 %1764, 1
  %1766 = extractvalue %dx.types.CBufRet.f32 %1764, 2
  %1767 = extractvalue %dx.types.CBufRet.f32 %1764, 0
  %1768 = select i1 %1040, float %1767, float 0.000000e+00
  %1769 = fmul fast float %1765, %1763
  %1770 = fadd fast float %1768, %1769
  %1771 = fadd fast float %1768, %1766
  %1772 = fsub fast float %1765, %1766
  %1773 = fadd fast float %1772, %1768
  %1774 = call float @dx.op.binary.f32(i32 35, float %1770, float %1771)  ; FMax(a,b)
  %1775 = call float @dx.op.binary.f32(i32 36, float %1774, float %1773)  ; FMin(a,b)
  %1776 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %19, float %1707, float %1708, float %1775, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1777 = extractvalue %dx.types.ResRet.f32 %1776, 0
  %1778 = extractvalue %dx.types.ResRet.f32 %1776, 1
  %1779 = extractvalue %dx.types.ResRet.f32 %1776, 2
  %1780 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %19, float %1707, float %1708, float %1775, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1781 = extractvalue %dx.types.ResRet.f32 %1780, 0
  %1782 = extractvalue %dx.types.ResRet.f32 %1780, 1
  %1783 = extractvalue %dx.types.ResRet.f32 %1780, 2
  %1784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1785 = extractvalue %dx.types.CBufRet.f32 %1784, 1
  %1786 = fmul fast float %1785, %1781
  %1787 = fmul fast float %1785, %1782
  %1788 = fmul fast float %1785, %1783
  br label %1789

; <label>:1789                                    ; preds = %1737, %1694
  %1790 = phi float [ %1777, %1737 ], [ 1.000000e+00, %1694 ]
  %1791 = phi float [ %1778, %1737 ], [ 1.000000e+00, %1694 ]
  %1792 = phi float [ %1779, %1737 ], [ 1.000000e+00, %1694 ]
  %1793 = phi float [ %1786, %1737 ], [ 0.000000e+00, %1694 ]
  %1794 = phi float [ %1787, %1737 ], [ 0.000000e+00, %1694 ]
  %1795 = phi float [ %1788, %1737 ], [ 0.000000e+00, %1694 ]
  %1796 = fmul fast float %1793, %1054
  %1797 = fmul fast float %1794, %1054
  %1798 = fmul fast float %1795, %1054
  %1799 = fmul fast float %1790, %1701
  %1800 = call float @dx.op.dot3.f32(i32 55, float %1790, float %1791, float %1792, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1801 = call float @dx.op.dot3.f32(i32 55, float %1796, float %1797, float %1798, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1802 = select i1 %107, float %1800, float %1790
  %1803 = select i1 %107, float %1800, float %1791
  %1804 = select i1 %107, float 1.000000e+00, float %1792
  %1805 = select i1 %107, float %1801, float %1796
  %1806 = select i1 %107, float 0.000000e+00, float %1797
  %1807 = select i1 %107, float 0.000000e+00, float %1798
  %1808 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1809 = extractvalue %dx.types.CBufRet.i32 %1808, 3
  %1810 = and i32 %1809, 3
  %1811 = icmp ne i32 %1810, 0
  %1812 = and i32 %1809, 4
  %1813 = icmp ne i32 %1812, 0
  %1814 = and i1 %1811, %1813
  %1815 = and i1 %107, %1814
  br i1 %1815, label %1816, label %1822

; <label>:1816                                    ; preds = %1789
  %1817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1818 = extractvalue %dx.types.CBufRet.f32 %1817, 1
  %1819 = fadd fast float %1799, -1.000000e+00
  %1820 = fmul fast float %1818, %1819
  %1821 = fadd fast float %1820, 1.000000e+00
  br label %1822

; <label>:1822                                    ; preds = %1816, %1789
  %1823 = phi float [ %1821, %1816 ], [ %1799, %1789 ]
  %1824 = fadd fast float %1698, %1695
  %1825 = fmul fast float %1802, %1824
  %1826 = fadd fast float %1825, %1805
  %1827 = fadd fast float %1699, %1696
  %1828 = fmul fast float %1803, %1827
  %1829 = fadd fast float %1828, %1806
  %1830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1831 = extractvalue %dx.types.CBufRet.f32 %1830, 0
  br i1 %107, label %1832, label %1854

; <label>:1832                                    ; preds = %1822
  %1833 = fadd fast float %1826, %1829
  %1834 = fmul fast float %1831, %1833
  %1835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1836 = extractvalue %dx.types.CBufRet.f32 %1835, 3
  %1837 = extractvalue %dx.types.CBufRet.f32 %1059, 1
  %1838 = fsub fast float %1062, %1837
  %1839 = extractvalue %dx.types.CBufRet.f32 %1059, 2
  %1840 = fmul fast float %1838, %1839
  %1841 = call float @dx.op.unary.f32(i32 7, float %1840)  ; Saturate(value)
  %1842 = fsub fast float %1841, %1836
  %1843 = fmul fast float %1842, %1823
  %1844 = fadd fast float %1843, %1836
  %1845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1846 = extractvalue %dx.types.CBufRet.f32 %1845, 0
  %1847 = fsub fast float %1844, %1846
  %1848 = fmul fast float %1847, 1.000000e+01
  %1849 = call float @dx.op.unary.f32(i32 7, float %1848)  ; Saturate(value)
  %1850 = fsub fast float %1016, %1054
  %1851 = fmul fast float %1849, %1850
  %1852 = fadd fast float %1851, %1054
  %1853 = fmul fast float %1852, %1844
  br label %1866

; <label>:1854                                    ; preds = %1822
  %1855 = fadd fast float %1700, %1697
  %1856 = fmul fast float %1804, %1855
  %1857 = fadd fast float %1856, %1807
  %1858 = fmul fast float %1831, %1826
  %1859 = fmul fast float %1831, %1829
  %1860 = fmul fast float %1831, %1857
  %1861 = call float @dx.op.binary.f32(i32 35, float %1859, float %1860)  ; FMax(a,b)
  %1862 = call float @dx.op.binary.f32(i32 35, float %1858, float %1861)  ; FMax(a,b)
  %1863 = call float @dx.op.binary.f32(i32 35, float %1862, float %1054)  ; FMax(a,b)
  %1864 = fcmp fast ugt float %1863, 0x3F10000000000000
  br i1 %1864, label %1866, label %1865

; <label>:1865                                    ; preds = %1854
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1866

; <label>:1866                                    ; preds = %1865, %1854, %1832
  %1867 = phi float [ %1834, %1832 ], [ %1858, %1865 ], [ %1858, %1854 ]
  %1868 = phi float [ %1853, %1832 ], [ %1859, %1865 ], [ %1859, %1854 ]
  %1869 = phi float [ %1852, %1832 ], [ %1860, %1865 ], [ %1860, %1854 ]
  %1870 = phi float [ %1852, %1832 ], [ %1054, %1865 ], [ %1054, %1854 ]
  %1871 = fadd fast float %849, 0x3FE3C6EF40000000
  %1872 = call float @dx.op.unary.f32(i32 22, float %1871)  ; Frc(value)
  %1873 = call float @dx.op.unary.f32(i32 23, float %1867)  ; Log(value)
  %1874 = fadd fast float %1873, -7.000000e+00
  %1875 = call float @dx.op.unary.f32(i32 21, float %1874)  ; Exp(value)
  %1876 = fmul fast float %1872, 2.000000e+00
  %1877 = fadd fast float %1876, -1.000000e+00
  %1878 = fmul fast float %1875, %1877
  %1879 = fcmp fast ogt float %1867, 0.000000e+00
  %1880 = select i1 %1879, float %1878, float 0.000000e+00
  %1881 = fadd fast float %1880, %1867
  %1882 = fadd fast float %849, 0x3FF3C6EF40000000
  %1883 = call float @dx.op.unary.f32(i32 22, float %1882)  ; Frc(value)
  %1884 = call float @dx.op.unary.f32(i32 23, float %1868)  ; Log(value)
  %1885 = fadd fast float %1884, -7.000000e+00
  %1886 = call float @dx.op.unary.f32(i32 21, float %1885)  ; Exp(value)
  %1887 = fmul fast float %1883, 2.000000e+00
  %1888 = fadd fast float %1887, -1.000000e+00
  %1889 = fmul fast float %1886, %1888
  %1890 = fcmp fast ogt float %1868, 0.000000e+00
  %1891 = select i1 %1890, float %1889, float 0.000000e+00
  %1892 = fadd fast float %1891, %1868
  %1893 = fadd fast float %849, 0x3FFDAA66E0000000
  %1894 = call float @dx.op.unary.f32(i32 22, float %1893)  ; Frc(value)
  %1895 = call float @dx.op.unary.f32(i32 23, float %1869)  ; Log(value)
  %1896 = fadd fast float %1895, -6.000000e+00
  %1897 = call float @dx.op.unary.f32(i32 21, float %1896)  ; Exp(value)
  %1898 = fmul fast float %1894, 2.000000e+00
  %1899 = fadd fast float %1898, -1.000000e+00
  %1900 = fmul fast float %1897, %1899
  %1901 = fcmp fast ogt float %1869, 0.000000e+00
  %1902 = select i1 %1901, float %1900, float 0.000000e+00
  %1903 = fadd fast float %1902, %1869
  %1904 = select i1 %107, float %1868, float %1892
  %1905 = select i1 %107, float %1869, float %1903
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1906 = call float @dx.op.binary.f32(i32 36, float %1881, float 3.225500e+04)  ; FMin(a,b)
  %1907 = call float @dx.op.binary.f32(i32 36, float %1904, float 3.225500e+04)  ; FMin(a,b)
  %1908 = call float @dx.op.binary.f32(i32 36, float %1905, float 3.225500e+04)  ; FMin(a,b)
  %1909 = call float @dx.op.binary.f32(i32 36, float %1870, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1906)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1907)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1908)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1909)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1870)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1870)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1870)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1870)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
!dx.viewIdState = !{!36}
!dx.entryPoints = !{!37}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !28, !31}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !17, !18, !19, !20, !22, !23, !24, !25, !26, !27}
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
!26 = !{i32 17, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 4, i32 1, i32 11, i32 0, null}
!27 = !{i32 18, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 46, i32 1, i32 4, i32 0, !7}
!28 = !{!29, !30}
!29 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!30 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!31 = !{!32, !33, !34, !35}
!32 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!33 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!34 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!35 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!36 = !{[30 x i32] [i32 28, i32 8, i32 255, i32 255, i32 255, i32 255, i32 1, i32 3, i32 4, i32 255, i32 0, i32 0, i32 0, i32 0, i32 255, i32 255, i32 0, i32 7, i32 255, i32 255, i32 0, i32 0, i32 3, i32 3, i32 7, i32 7, i32 255, i32 254, i32 0, i32 255]}
!37 = !{void ()* @ps_main, !"ps_main", !38, !4, !62}
!38 = !{!39, !58, null}
!39 = !{!40, !43, !44, !45, !48, !51, !53, !54, !57}
!40 = !{i32 0, !"SV_Position", i8 9, i8 3, !41, i8 4, i32 1, i8 4, i32 0, i8 0, !42}
!41 = !{i32 0}
!42 = !{i32 3, i32 15}
!43 = !{i32 1, !"COLOR", i8 9, i8 0, !41, i8 2, i32 1, i8 4, i32 1, i8 0, !42}
!44 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !41, i8 2, i32 1, i8 2, i32 2, i8 0, null}
!45 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !46, i8 2, i32 1, i8 4, i32 3, i8 0, !47}
!46 = !{i32 3}
!47 = !{i32 3, i32 11}
!48 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !49, i8 3, i32 1, i8 2, i32 4, i8 0, !50}
!49 = !{i32 5}
!50 = !{i32 3, i32 3}
!51 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 5, i8 0, !42}
!52 = !{i32 8}
!53 = !{i32 6, !"COLOR", i8 5, i8 0, !46, i8 1, i32 1, i8 3, i32 6, i8 0, !50}
!54 = !{i32 7, !"COLOR", i8 5, i8 0, !55, i8 1, i32 1, i8 1, i32 6, i8 3, !56}
!55 = !{i32 4}
!56 = !{i32 3, i32 1}
!57 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !41, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!58 = !{!59, !60}
!59 = !{i32 0, !"SV_Target", i8 9, i8 16, !41, i8 0, i32 1, i8 4, i32 0, i8 0, !42}
!60 = !{i32 1, !"SV_Target", i8 9, i8 16, !61, i8 0, i32 1, i8 4, i32 1, i8 0, !42}
!61 = !{i32 1}
!62 = !{i32 0, i64 24}
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
!74 = distinct !{!74, !"dx.controlflow.hints", i32 1}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 1}

