;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float    y w
; TEXCOORD                 0   xy          2     NONE   float       
; TEXCOORD                 3   xyzw        3     NONE   float   xy w
; TEXCOORD                 5   xy          4     NONE   float   xy  
; TEXCOORD                 8   xyzw        5     NONE   float   x  w
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
; shader hash: 4682d36b2722f6d12b9dbe76a4c6ddd4
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
;                                   texture     f32          3d      T9     t45,space2     1
;                                   texture     f32     2darray     T10     t47,space2     1
;                                   textureunorm_f32     2darray     T11     t85,space2     1
;                                   texture     f32          2d     T12     t83,space2     1
;                                   texture     f32     2darray     T13             t2     1
;                                   texture    byte         r/o     T14             t3     1
;                                   texture    byte         r/o     T15             t4     1
;                                   texture     f32          3d     T16     t46,space2     1
;
;
; ViewId state:
;
; Number of inputs: 28, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 5, 7, 12, 13, 15, 16, 17, 20, 23, 24, 27 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 5, 7, 12, 13, 15, 16, 17, 20, 23, 24, 25, 27 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 5, 7, 12, 13, 15, 16, 17, 20, 23, 24, 25, 27 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 7, 12, 13, 16, 17, 20, 24, 25, 27 }
;   output 4 depends on inputs: { 0, 1, 2, 3, 7, 12, 13, 16, 17, 20, 24, 25, 27 }
;   output 5 depends on inputs: { 0, 1, 2, 3, 7, 12, 13, 16, 17, 20, 24, 25, 27 }
;   output 6 depends on inputs: { 0, 1, 2, 3, 7, 12, 13, 16, 17, 20, 24, 25, 27 }
;   output 7 depends on inputs: { 0, 1, 2, 3, 7, 12, 13, 16, 17, 20, 24, 25, 27 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 77, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %41 = extractvalue %dx.types.CBufRet.f32 %40, 0
  %42 = fmul fast float %41, %34
  %43 = fmul fast float %41, %35
  %44 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %45 = extractvalue %dx.types.CBufRet.f32 %44, 2
  %46 = extractvalue %dx.types.CBufRet.f32 %44, 3
  %47 = fmul fast float %42, 2.000000e+00
  %48 = fmul fast float %47, %45
  %49 = fmul fast float %43, 2.000000e+00
  %50 = fmul fast float %49, %46
  %51 = fsub fast float 1.000000e+00, %48
  %52 = fsub fast float 1.000000e+00, %50
  %53 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %54 = extractvalue %dx.types.CBufRet.f32 %53, 0
  %55 = extractvalue %dx.types.CBufRet.f32 %53, 1
  %56 = extractvalue %dx.types.CBufRet.f32 %53, 2
  %57 = fmul fast float %51, %54
  %58 = fmul fast float %51, %55
  %59 = fmul fast float %51, %56
  %60 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %61 = extractvalue %dx.types.CBufRet.f32 %60, 0
  %62 = extractvalue %dx.types.CBufRet.f32 %60, 1
  %63 = extractvalue %dx.types.CBufRet.f32 %60, 2
  %64 = fmul fast float %52, %61
  %65 = fmul fast float %52, %62
  %66 = fmul fast float %52, %63
  %67 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %68 = extractvalue %dx.types.CBufRet.f32 %67, 0
  %69 = extractvalue %dx.types.CBufRet.f32 %67, 1
  %70 = extractvalue %dx.types.CBufRet.f32 %67, 2
  %71 = fadd fast float %64, %68
  %72 = fadd fast float %71, %57
  %73 = fadd fast float %65, %69
  %74 = fadd fast float %73, %58
  %75 = fadd fast float %66, %70
  %76 = fadd fast float %75, %59
  %77 = fmul fast float %72, %37
  %78 = fmul fast float %74, %37
  %79 = fmul fast float %76, %37
  %80 = bitcast i32 %24 to float
  %81 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %82 = extractvalue %dx.types.CBufRet.i32 %81, 3
  %83 = and i32 %82, 3
  %84 = icmp ne i32 %83, 0
  %85 = and i32 %82, 4
  %86 = icmp ne i32 %85, 0
  %87 = and i1 %84, %86
  br i1 %87, label %88, label %97

; <label>:88                                      ; preds = %0
  %89 = fmul fast float %46, %43
  %90 = fmul fast float %45, %42
  %91 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %18, float %90, float %89, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %92 = extractvalue %dx.types.ResRet.f32 %91, 0
  %93 = fsub fast float 1.000000e+00, %92
  %94 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %95 = extractvalue %dx.types.CBufRet.f32 %94, 0
  %96 = fcmp fast olt float %93, %95
  br label %100

; <label>:97                                      ; preds = %0
  %98 = icmp eq i32 %85, 0
  %99 = and i1 %84, %98
  br label %100

; <label>:100                                     ; preds = %97, %88
  %101 = phi i1 [ %96, %88 ], [ %99, %97 ]
  %102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %103 = extractvalue %dx.types.CBufRet.f32 %102, 2
  %104 = extractvalue %dx.types.CBufRet.f32 %102, 3
  %105 = fmul fast float %103, %42
  %106 = fmul fast float %104, %43
  %107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %108 = extractvalue %dx.types.ResRet.i32 %107, 0
  %109 = and i32 %108, 114688
  %110 = icmp ne i32 %109, 0
  %111 = select i1 %110, float %105, float 0.000000e+00
  %112 = select i1 %110, float %106, float 0.000000e+00
  %113 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %19, float %111, float %112, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %114 = extractvalue %dx.types.ResRet.f32 %113, 0
  %115 = fmul fast float %114, 2.550000e+02
  %116 = fptoui float %115 to i32
  %117 = select i1 %110, i32 %116, i32 0
  %118 = mul i32 %23, 208
  %119 = add i32 %118, 188
  %120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %119, i32 undef)  ; BufferLoad(srv,index,wot)
  %121 = extractvalue %dx.types.ResRet.i32 %120, 0
  %122 = and i32 %82, 114688
  %123 = and i32 %82, 8
  %124 = icmp ne i32 %123, 0
  %125 = or i1 %101, %124
  %126 = select i1 %125, i32 %122, i32 16384
  %127 = and i32 %126, %121
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %130

; <label>:129                                     ; preds = %100
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %130

; <label>:130                                     ; preds = %129, %100
  %131 = shl i32 %22, 5
  %132 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %131, i32 undef)  ; BufferLoad(srv,index,wot)
  %133 = extractvalue %dx.types.ResRet.f32 %132, 0
  %134 = extractvalue %dx.types.ResRet.f32 %132, 1
  %135 = extractvalue %dx.types.ResRet.f32 %132, 2
  %136 = extractvalue %dx.types.ResRet.f32 %132, 3
  %137 = or i32 %131, 16
  %138 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %137, i32 undef)  ; BufferLoad(srv,index,wot)
  %139 = extractvalue %dx.types.ResRet.f32 %138, 0
  %140 = extractvalue %dx.types.ResRet.f32 %138, 1
  %141 = extractvalue %dx.types.ResRet.f32 %138, 2
  %142 = extractvalue %dx.types.ResRet.f32 %138, 3
  %143 = call float @dx.op.dot3.f32(i32 55, float %77, float %78, float %79, float %77, float %78, float %79)  ; Dot3(ax,ay,az,bx,by,bz)
  %144 = call float @dx.op.unary.f32(i32 25, float %143)  ; Rsqrt(value)
  %145 = fmul fast float %144, %77
  %146 = fmul fast float %144, %78
  %147 = fmul fast float %144, %79
  %148 = fsub fast float -0.000000e+00, %145
  %149 = fsub fast float -0.000000e+00, %146
  %150 = fsub fast float -0.000000e+00, %147
  %151 = fsub fast float %139, %133
  %152 = fsub fast float %140, %134
  %153 = fsub fast float %141, %135
  %154 = call float @dx.op.dot3.f32(i32 55, float %151, float %152, float %153, float %151, float %152, float %153)  ; Dot3(ax,ay,az,bx,by,bz)
  %155 = fsub fast float %142, %136
  %156 = fmul fast float %155, %155
  %157 = fsub fast float %154, %156
  %158 = call float @dx.op.dot3.f32(i32 55, float %151, float %152, float %153, float %148, float %149, float %150)  ; Dot3(ax,ay,az,bx,by,bz)
  %159 = fmul fast float %158, %158
  %160 = fsub fast float %157, %159
  %161 = fadd fast float %160, 0x3EE4F8B580000000
  %162 = call float @dx.op.dot3.f32(i32 55, float %151, float %152, float %153, float %139, float %140, float %141)  ; Dot3(ax,ay,az,bx,by,bz)
  %163 = call float @dx.op.dot3.f32(i32 55, float %148, float %149, float %150, float %139, float %140, float %141)  ; Dot3(ax,ay,az,bx,by,bz)
  %164 = call float @dx.op.dot3.f32(i32 55, float %139, float %140, float %141, float %139, float %140, float %141)  ; Dot3(ax,ay,az,bx,by,bz)
  %165 = fmul fast float %163, %157
  %166 = fmul fast float %162, %158
  %167 = fsub fast float %165, %166
  %168 = fmul fast float %155, %142
  %169 = fmul fast float %168, %158
  %170 = fadd fast float %167, %169
  %171 = fmul fast float %164, %157
  %172 = fmul fast float %162, %162
  %173 = fmul fast float %142, 2.000000e+00
  %174 = fmul fast float %173, %155
  %175 = fmul fast float %174, %162
  %176 = fmul fast float %142, %142
  %177 = fmul fast float %176, %154
  %178 = fsub fast float -0.000000e+00, %177
  %179 = fsub fast float %178, %172
  %180 = fadd fast float %179, %171
  %181 = fadd fast float %180, %175
  %182 = fmul fast float %170, %170
  %183 = fmul fast float %181, %161
  %184 = fsub fast float %182, %183
  %185 = fcmp fast olt float %184, 0.000000e+00
  %186 = fsub fast float -0.000000e+00, %184
  %187 = select i1 %185, float -1.000000e+00, float 1.000000e+00
  %188 = select i1 %185, float %186, float %184
  %189 = call float @dx.op.unary.f32(i32 24, float %188)  ; Sqrt(value)
  %190 = fsub fast float -0.000000e+00, %189
  %191 = fsub fast float %190, %170
  %192 = fdiv fast float %191, %161
  %193 = fsub fast float %162, %168
  %194 = fmul fast float %192, %158
  %195 = fadd fast float %194, %193
  %196 = fcmp fast ogt float %195, 0.000000e+00
  %197 = fcmp fast olt float %195, %157
  %198 = and i1 %196, %197
  br i1 %198, label %199, label %221

; <label>:199                                     ; preds = %130
  %200 = fmul fast float %187, %192
  %201 = fmul fast float %192, %148
  %202 = fmul fast float %192, %149
  %203 = fmul fast float %192, %150
  %204 = fadd fast float %201, %139
  %205 = fadd fast float %202, %140
  %206 = fadd fast float %203, %141
  %207 = fmul fast float %204, %157
  %208 = fmul fast float %205, %157
  %209 = fmul fast float %206, %157
  %210 = fmul fast float %195, %151
  %211 = fmul fast float %195, %152
  %212 = fmul fast float %195, %153
  %213 = fsub fast float %207, %210
  %214 = fsub fast float %208, %211
  %215 = fsub fast float %209, %212
  %216 = call float @dx.op.dot3.f32(i32 55, float %213, float %214, float %215, float %213, float %214, float %215)  ; Dot3(ax,ay,az,bx,by,bz)
  %217 = call float @dx.op.unary.f32(i32 25, float %216)  ; Rsqrt(value)
  %218 = fmul fast float %217, %213
  %219 = fmul fast float %217, %214
  %220 = fmul fast float %217, %215
  br label %293

; <label>:221                                     ; preds = %130
  %222 = fmul fast float %163, %163
  %223 = fsub fast float %222, %164
  %224 = fadd fast float %223, %176
  %225 = call float @dx.op.dot3.f32(i32 55, float %133, float %134, float %135, float %148, float %149, float %150)  ; Dot3(ax,ay,az,bx,by,bz)
  %226 = fmul fast float %225, %225
  %227 = call float @dx.op.dot3.f32(i32 55, float %133, float %134, float %135, float %133, float %134, float %135)  ; Dot3(ax,ay,az,bx,by,bz)
  %228 = fsub fast float %226, %227
  %229 = fmul fast float %136, %136
  %230 = fadd fast float %228, %229
  %231 = call float @dx.op.binary.f32(i32 35, float %224, float %230)  ; FMax(a,b)
  %232 = fcmp fast olt float %231, 0.000000e+00
  br i1 %232, label %233, label %240

; <label>:233                                     ; preds = %221
  %234 = fcmp fast ogt float %230, %224
  %235 = fsub fast float -0.000000e+00, %230
  %236 = select i1 %234, float %235, float %230
  %237 = fcmp fast ogt float %224, %236
  %238 = fsub fast float -0.000000e+00, %224
  %239 = select i1 %237, float %238, float %224
  br label %240

; <label>:240                                     ; preds = %233, %221
  %241 = phi float [ -1.000000e+00, %233 ], [ %187, %221 ]
  %242 = phi float [ %239, %233 ], [ %224, %221 ]
  %243 = phi float [ %236, %233 ], [ %230, %221 ]
  %244 = fcmp fast ogt float %242, 0.000000e+00
  br i1 %244, label %245, label %265

; <label>:245                                     ; preds = %240
  %246 = fsub fast float -0.000000e+00, %163
  %247 = call float @dx.op.unary.f32(i32 24, float %242)  ; Sqrt(value)
  %248 = fsub fast float %246, %247
  %249 = fmul fast float %248, %241
  %250 = fmul fast float %248, %148
  %251 = fmul fast float %248, %149
  %252 = fmul fast float %248, %150
  %253 = fadd fast float %250, %139
  %254 = fadd fast float %251, %140
  %255 = fadd fast float %252, %141
  %256 = fadd fast float %142, 0x3EE4F8B580000000
  %257 = fdiv fast float %253, %256
  %258 = fdiv fast float %254, %256
  %259 = fdiv fast float %255, %256
  %260 = call float @dx.op.dot3.f32(i32 55, float %257, float %258, float %259, float %257, float %258, float %259)  ; Dot3(ax,ay,az,bx,by,bz)
  %261 = call float @dx.op.unary.f32(i32 25, float %260)  ; Rsqrt(value)
  %262 = fmul fast float %261, %257
  %263 = fmul fast float %261, %258
  %264 = fmul fast float %261, %259
  br label %265

; <label>:265                                     ; preds = %245, %240
  %266 = phi float [ %249, %245 ], [ 0x4415AF1D80000000, %240 ]
  %267 = phi float [ %262, %245 ], [ 0.000000e+00, %240 ]
  %268 = phi float [ %263, %245 ], [ 0.000000e+00, %240 ]
  %269 = phi float [ %264, %245 ], [ 0.000000e+00, %240 ]
  %270 = fcmp fast ogt float %243, 0.000000e+00
  br i1 %270, label %271, label %293

; <label>:271                                     ; preds = %265
  %272 = fsub fast float -0.000000e+00, %225
  %273 = call float @dx.op.unary.f32(i32 24, float %243)  ; Sqrt(value)
  %274 = fsub fast float %272, %273
  %275 = fcmp fast olt float %274, %266
  br i1 %275, label %276, label %293

; <label>:276                                     ; preds = %271
  %277 = fmul fast float %274, %241
  %278 = fmul fast float %274, %148
  %279 = fmul fast float %274, %149
  %280 = fmul fast float %274, %150
  %281 = fadd fast float %278, %133
  %282 = fadd fast float %279, %134
  %283 = fadd fast float %280, %135
  %284 = fadd fast float %136, 0x3EE4F8B580000000
  %285 = fdiv fast float %281, %284
  %286 = fdiv fast float %282, %284
  %287 = fdiv fast float %283, %284
  %288 = call float @dx.op.dot3.f32(i32 55, float %285, float %286, float %287, float %285, float %286, float %287)  ; Dot3(ax,ay,az,bx,by,bz)
  %289 = call float @dx.op.unary.f32(i32 25, float %288)  ; Rsqrt(value)
  %290 = fmul fast float %289, %285
  %291 = fmul fast float %289, %286
  %292 = fmul fast float %289, %287
  br label %293

; <label>:293                                     ; preds = %276, %271, %265, %199
  %294 = phi float [ %200, %199 ], [ %277, %276 ], [ %266, %271 ], [ %266, %265 ]
  %295 = phi float [ %218, %199 ], [ %290, %276 ], [ %267, %271 ], [ %267, %265 ]
  %296 = phi float [ %219, %199 ], [ %291, %276 ], [ %268, %271 ], [ %268, %265 ]
  %297 = phi float [ %220, %199 ], [ %292, %276 ], [ %269, %271 ], [ %269, %265 ]
  %298 = call float @dx.op.unary.f32(i32 6, float %294)  ; FAbs(value)
  %299 = fmul fast float %298, %145
  %300 = fmul fast float %298, %146
  %301 = fmul fast float %298, %147
  %302 = fsub fast float %133, %139
  %303 = fsub fast float %134, %140
  %304 = fsub fast float %135, %141
  %305 = call float @dx.op.dot3.f32(i32 55, float %302, float %303, float %304, float %302, float %303, float %304)  ; Dot3(ax,ay,az,bx,by,bz)
  %306 = call float @dx.op.unary.f32(i32 25, float %305)  ; Rsqrt(value)
  %307 = fmul fast float %306, %302
  %308 = fmul fast float %306, %303
  %309 = fmul fast float %306, %304
  %310 = call float @dx.op.dot3.f32(i32 55, float %133, float %134, float %135, float %302, float %303, float %304)  ; Dot3(ax,ay,az,bx,by,bz)
  %311 = fmul fast float %310, %139
  %312 = fmul fast float %310, %140
  %313 = fmul fast float %310, %141
  %314 = call float @dx.op.dot3.f32(i32 55, float %139, float %140, float %141, float %302, float %303, float %304)  ; Dot3(ax,ay,az,bx,by,bz)
  %315 = fmul fast float %314, %133
  %316 = fmul fast float %314, %134
  %317 = fmul fast float %314, %135
  %318 = fsub fast float %311, %315
  %319 = fsub fast float %312, %316
  %320 = fsub fast float %313, %317
  %321 = call float @dx.op.dot3.f32(i32 55, float %318, float %319, float %320, float %318, float %319, float %320)  ; Dot3(ax,ay,az,bx,by,bz)
  %322 = call float @dx.op.unary.f32(i32 25, float %321)  ; Rsqrt(value)
  %323 = fmul fast float %318, %322
  %324 = fmul fast float %319, %322
  %325 = fmul fast float %320, %322
  %326 = fmul fast float %325, %308
  %327 = fmul fast float %324, %309
  %328 = fsub fast float %326, %327
  %329 = fmul fast float %323, %309
  %330 = fmul fast float %325, %307
  %331 = fsub fast float %329, %330
  %332 = fmul fast float %324, %307
  %333 = fmul fast float %323, %308
  %334 = fsub fast float %332, %333
  %335 = fmul fast float %331, %309
  %336 = fmul fast float %334, %308
  %337 = fsub fast float %335, %336
  %338 = fmul fast float %334, %307
  %339 = fmul fast float %328, %309
  %340 = fsub fast float %338, %339
  %341 = fmul fast float %328, %308
  %342 = fmul fast float %331, %307
  %343 = fsub fast float %341, %342
  %344 = fsub fast float %299, %139
  %345 = fsub fast float %300, %140
  %346 = fsub fast float %301, %141
  %347 = fmul fast float %328, %344
  %348 = call float @dx.op.tertiary.f32(i32 46, float %331, float %345, float %347)  ; FMad(a,b,c)
  %349 = call float @dx.op.tertiary.f32(i32 46, float %334, float %346, float %348)  ; FMad(a,b,c)
  %350 = fmul fast float %337, %344
  %351 = call float @dx.op.tertiary.f32(i32 46, float %340, float %345, float %350)  ; FMad(a,b,c)
  %352 = call float @dx.op.tertiary.f32(i32 46, float %343, float %346, float %351)  ; FMad(a,b,c)
  %353 = fmul fast float %307, %344
  %354 = call float @dx.op.tertiary.f32(i32 46, float %308, float %345, float %353)  ; FMad(a,b,c)
  %355 = call float @dx.op.tertiary.f32(i32 46, float %309, float %346, float %354)  ; FMad(a,b,c)
  %356 = fmul fast float %151, %151
  %357 = fmul fast float %152, %152
  %358 = fadd fast float %356, %357
  %359 = fmul fast float %153, %153
  %360 = fadd fast float %358, %359
  %361 = call float @dx.op.unary.f32(i32 24, float %360)  ; Sqrt(value)
  %362 = fdiv fast float %355, %361
  %363 = fcmp fast olt float %362, 0.000000e+00
  %364 = uitofp i1 %363 to float
  %365 = fmul fast float %362, %361
  %366 = fdiv fast float %365, %142
  %367 = fadd fast float %366, 1.000000e+00
  %368 = fmul fast float %367, 2.500000e-01
  %369 = fmul fast float %368, %364
  %370 = fcmp fast oge float %362, 0.000000e+00
  %371 = uitofp i1 %370 to float
  %372 = fcmp fast olt float %362, 1.000000e+00
  %373 = uitofp i1 %372 to float
  %374 = fmul fast float %362, 5.000000e-01
  %375 = fadd fast float %374, 2.500000e-01
  %376 = fmul fast float %373, %375
  %377 = fcmp fast oge float %362, 1.000000e+00
  %378 = uitofp i1 %377 to float
  %379 = fadd fast float %362, -1.000000e+00
  %380 = fmul fast float %379, %361
  %381 = fdiv fast float %380, %136
  %382 = fmul fast float %381, 2.500000e-01
  %383 = fadd fast float %382, 7.500000e-01
  %384 = fmul fast float %383, %378
  %385 = fadd fast float %384, %376
  %386 = fmul fast float %385, %371
  %387 = fadd fast float %386, %369
  %388 = fdiv fast float %352, %349
  %389 = call float @dx.op.unary.f32(i32 17, float %388)  ; Atan(value)
  %390 = fadd fast float %389, 0x400921FB60000000
  %391 = fadd fast float %389, 0xC00921FB60000000
  %392 = fcmp fast olt float %349, 0.000000e+00
  %393 = fcmp fast oeq float %349, 0.000000e+00
  %394 = fcmp fast oge float %352, 0.000000e+00
  %395 = fcmp fast olt float %352, 0.000000e+00
  %396 = and i1 %392, %394
  %397 = select i1 %396, float %390, float %389
  %398 = and i1 %392, %395
  %399 = select i1 %398, float %391, float %397
  %400 = and i1 %393, %395
  %401 = and i1 %393, %394
  %402 = fadd fast float %399, 0x400921FB60000000
  %403 = fmul fast float %402, 0x3FC45F3060000000
  %404 = fadd fast float %403, 2.500000e-01
  %405 = select i1 %400, float 5.000000e-01, float %404
  %406 = select i1 %401, float 1.000000e+00, float %405
  %407 = fcmp fast ogt float %406, 1.000000e+00
  %408 = uitofp i1 %407 to float
  %409 = fsub fast float %406, %408
  %410 = fcmp fast ogt float %294, 0.000000e+00
  br i1 %410, label %412, label %411

; <label>:411                                     ; preds = %293
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %412

; <label>:412                                     ; preds = %411, %293
  %413 = fdiv fast float %29, %30
  %414 = fptoui float %413 to i32
  %415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %416 = extractvalue %dx.types.ResRet.i32 %415, 0
  %417 = and i32 %416, %414
  %418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 96, i32 undef)  ; BufferLoad(srv,index,wot)
  %419 = extractvalue %dx.types.ResRet.i32 %418, 0
  %420 = and i32 %419, 31
  %421 = lshr i32 %414, %420
  %422 = uitofp i32 %417 to float
  %423 = uitofp i32 %421 to float
  %424 = fadd fast float %387, %422
  %425 = fadd fast float %409, %423
  %426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %427 = extractvalue %dx.types.ResRet.i32 %426, 2
  %428 = extractvalue %dx.types.ResRet.i32 %426, 3
  %429 = bitcast i32 %427 to float
  %430 = bitcast i32 %428 to float
  %431 = fmul fast float %429, %424
  %432 = fmul fast float %425, %430
  %433 = and i32 %121, 512
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %459, label %435

; <label>:435                                     ; preds = %412
  %436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %437 = extractvalue %dx.types.CBufRet.f32 %436, 2
  %438 = extractvalue %dx.types.CBufRet.f32 %436, 3
  %439 = fmul fast float %437, %42
  %440 = fmul fast float %438, %43
  %441 = extractvalue %dx.types.CBufRet.f32 %436, 0
  %442 = extractvalue %dx.types.CBufRet.f32 %436, 1
  %443 = fdiv fast float %441, %442
  %444 = fcmp fast ogt float %443, 0x3FFC71C720000000
  br i1 %444, label %445, label %451

; <label>:445                                     ; preds = %435
  %446 = fdiv fast float 0x3FFC71C720000000, %443
  %447 = fmul fast float %446, %440
  %448 = fsub fast float 1.000000e+00, %446
  %449 = fmul fast float %448, 5.000000e-01
  %450 = fadd fast float %449, %447
  br label %459

; <label>:451                                     ; preds = %435
  %452 = fcmp fast olt float %443, 0x3FFC71C720000000
  br i1 %452, label %453, label %459

; <label>:453                                     ; preds = %451
  %454 = fmul fast float %439, 5.625000e-01
  %455 = fmul fast float %454, %443
  %456 = fmul fast float %443, 2.812500e-01
  %457 = fsub fast float 5.000000e-01, %456
  %458 = fadd fast float %457, %455
  br label %459

; <label>:459                                     ; preds = %453, %451, %445, %412
  %460 = phi float [ %431, %412 ], [ %439, %445 ], [ %458, %453 ], [ %439, %451 ]
  %461 = phi float [ %432, %412 ], [ %450, %445 ], [ %440, %453 ], [ %440, %451 ]
  %462 = extractvalue %dx.types.ResRet.i32 %426, 0
  %463 = extractvalue %dx.types.ResRet.i32 %426, 1
  %464 = bitcast i32 %462 to float
  %465 = bitcast i32 %463 to float
  %466 = fmul fast float %464, %431
  %467 = fmul fast float %465, %432
  %468 = call float @dx.op.unary.f32(i32 22, float %466)  ; Frc(value)
  %469 = call float @dx.op.unary.f32(i32 22, float %467)  ; Frc(value)
  %470 = and i32 %121, 16
  %471 = icmp eq i32 %470, 0
  br i1 %471, label %478, label %472, !dx.controlflow.hints !63

; <label>:472                                     ; preds = %459
  %473 = fsub fast float %33, %32
  %474 = fsub fast float 1.000000e+00, %32
  %475 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %474)  ; FMax(a,b)
  %476 = fdiv fast float %473, %475
  %477 = call float @dx.op.unary.f32(i32 7, float %476)  ; Saturate(value)
  br label %478

; <label>:478                                     ; preds = %472, %459
  %479 = phi float [ %477, %472 ], [ %33, %459 ]
  %480 = fcmp fast ogt float %479, 0.000000e+00
  br i1 %480, label %482, label %481

; <label>:481                                     ; preds = %478
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %482

; <label>:482                                     ; preds = %481, %478
  %483 = call float @dx.op.unary.f32(i32 7, float %479)  ; Saturate(value)
  %484 = fmul fast float %42, 5.000000e-01
  %485 = fmul fast float %43, 5.000000e-01
  %486 = fptosi float %484 to i32
  %487 = fptosi float %485 to i32
  %488 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %486, i32 %487, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %489 = extractvalue %dx.types.ResRet.i32 %488, 0
  %490 = lshr i32 %489, 18
  %491 = uitofp i32 %490 to float
  %492 = fmul fast float %491, 0x3F4C00EBA0000000
  %493 = call float @dx.op.unary.f32(i32 21, float %492)  ; Exp(value)
  %494 = fadd fast float %493, -1.000000e+00
  %495 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %9, i32 0)  ; GetDimensions(handle,mipLevel)
  %496 = extractvalue %dx.types.Dimensions %495, 0
  %497 = sitofp i32 %496 to float
  %498 = extractvalue %dx.types.Dimensions %495, 1
  %499 = sitofp i32 %498 to float
  %500 = fcmp fast oge float %484, %497
  %501 = fcmp fast oge float %485, %499
  %502 = or i1 %500, %501
  %503 = select i1 %502, float 0x4197782600000000, float %494
  %504 = fsub fast float %503, %37
  %505 = fcmp fast ogt float %504, 0.000000e+00
  %506 = and i32 %117, -2
  %507 = icmp eq i32 %506, 2
  %508 = and i1 %507, %505
  %509 = xor i1 %505, true
  %510 = icmp eq i32 %117, 1
  %511 = and i1 %510, %509
  %512 = or i1 %508, %511
  %513 = and i32 %121, 262144
  %514 = icmp ne i32 %513, 0
  %515 = and i1 %514, %512
  %516 = xor i1 %512, true
  %517 = and i32 %121, 131072
  %518 = icmp ne i32 %517, 0
  %519 = and i1 %518, %516
  %520 = or i1 %515, %519
  br i1 %520, label %521, label %522

; <label>:521                                     ; preds = %482
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %522

; <label>:522                                     ; preds = %521, %482
  %523 = and i32 %121, 32
  %524 = icmp eq i32 %523, 0
  br i1 %524, label %731, label %525, !dx.controlflow.hints !64

; <label>:525                                     ; preds = %522
  %526 = add i32 %118, 80
  %527 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %526, i32 undef)  ; BufferLoad(srv,index,wot)
  %528 = extractvalue %dx.types.ResRet.f32 %527, 0
  %529 = extractvalue %dx.types.ResRet.f32 %527, 1
  %530 = extractvalue %dx.types.ResRet.f32 %527, 2
  %531 = extractvalue %dx.types.ResRet.f32 %527, 3
  %532 = add i32 %118, 96
  %533 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %532, i32 undef)  ; BufferLoad(srv,index,wot)
  %534 = extractvalue %dx.types.ResRet.f32 %533, 0
  %535 = extractvalue %dx.types.ResRet.f32 %533, 1
  %536 = extractvalue %dx.types.ResRet.f32 %533, 2
  %537 = add i32 %118, 112
  %538 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %539 = extractvalue %dx.types.ResRet.f32 %538, 3
  %540 = add i32 %118, 128
  %541 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %540, i32 undef)  ; BufferLoad(srv,index,wot)
  %542 = extractvalue %dx.types.ResRet.f32 %541, 3
  %543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %119, i32 undef)  ; BufferLoad(srv,index,wot)
  %544 = extractvalue %dx.types.ResRet.i32 %543, 0
  %545 = and i32 %544, 4096
  %546 = icmp ne i32 %545, 0
  %547 = fcmp fast une float %536, 0.000000e+00
  %548 = and i32 %544, 64
  %549 = icmp ne i32 %548, 0
  %550 = and i32 %544, 128
  %551 = icmp eq i32 %550, 0
  %552 = and i32 %544, 2048
  %553 = icmp eq i32 %552, 0
  %554 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %12, i32 0)  ; GetDimensions(handle,mipLevel)
  %555 = extractvalue %dx.types.Dimensions %554, 0
  %556 = sitofp i32 %555 to float
  %557 = extractvalue %dx.types.Dimensions %554, 1
  %558 = sitofp i32 %557 to float
  %559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %560 = extractvalue %dx.types.CBufRet.f32 %559, 2
  %561 = extractvalue %dx.types.CBufRet.f32 %559, 3
  %562 = fmul fast float %560, %42
  %563 = fmul fast float %561, %43
  %564 = fmul fast float %562, %556
  %565 = fmul fast float %563, %558
  %566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %567 = extractvalue %dx.types.CBufRet.f32 %566, 1
  %568 = fsub fast float -0.000000e+00, %567
  %569 = fptoui float %568 to i32
  %570 = fptoui float %564 to i32
  %571 = fptoui float %565 to i32
  %572 = and i32 %569, 31
  %573 = lshr i32 %570, %572
  %574 = lshr i32 %571, %572
  %575 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 %569, i32 %573, i32 %574, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %576 = extractvalue %dx.types.ResRet.f32 %575, 0
  %577 = fcmp fast ogt float %576, -1.000000e+00
  %578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %579 = extractvalue %dx.types.CBufRet.f32 %578, 1
  %580 = select i1 %577, float %579, float 1.000000e+00
  %581 = fadd fast float %576, 1.000000e+00
  %582 = fmul fast float %580, %581
  %583 = call float @dx.op.unary.f32(i32 6, float %582)  ; FAbs(value)
  %584 = extractvalue %dx.types.CBufRet.f32 %578, 3
  %585 = fcmp fast oge float %583, %584
  %586 = select i1 %585, float 0x4197782600000000, float %583
  br i1 %553, label %645, label %587, !dx.controlflow.hints !65

; <label>:587                                     ; preds = %525
  %588 = fmul fast float %47, %560
  %589 = fmul fast float %49, %561
  %590 = fsub fast float 1.000000e+00, %588
  %591 = fsub fast float 1.000000e+00, %589
  %592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %593 = extractvalue %dx.types.CBufRet.f32 %592, 0
  %594 = extractvalue %dx.types.CBufRet.f32 %592, 1
  %595 = extractvalue %dx.types.CBufRet.f32 %592, 2
  %596 = fmul fast float %590, %593
  %597 = fmul fast float %590, %594
  %598 = fmul fast float %590, %595
  %599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %600 = extractvalue %dx.types.CBufRet.f32 %599, 0
  %601 = extractvalue %dx.types.CBufRet.f32 %599, 1
  %602 = extractvalue %dx.types.CBufRet.f32 %599, 2
  %603 = fmul fast float %591, %600
  %604 = fmul fast float %591, %601
  %605 = fmul fast float %591, %602
  %606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %607 = extractvalue %dx.types.CBufRet.f32 %606, 0
  %608 = extractvalue %dx.types.CBufRet.f32 %606, 1
  %609 = extractvalue %dx.types.CBufRet.f32 %606, 2
  %610 = fadd fast float %603, %607
  %611 = fadd fast float %610, %596
  %612 = fadd fast float %604, %608
  %613 = fadd fast float %612, %597
  %614 = fadd fast float %605, %609
  %615 = fadd fast float %614, %598
  %616 = fmul fast float %611, %586
  %617 = fmul fast float %613, %586
  %618 = fmul fast float %615, %586
  %619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %620 = extractvalue %dx.types.CBufRet.f32 %619, 0
  %621 = extractvalue %dx.types.CBufRet.f32 %619, 1
  %622 = extractvalue %dx.types.CBufRet.f32 %619, 2
  %623 = fadd fast float %616, %620
  %624 = fadd fast float %617, %621
  %625 = fadd fast float %618, %622
  %626 = call float @dx.op.dot3.f32(i32 55, float %623, float %624, float %625, float %623, float %624, float %625)  ; Dot3(ax,ay,az,bx,by,bz)
  %627 = fsub fast float 1.000000e+00, %626
  %628 = fcmp fast olt float %627, %535
  %629 = fcmp fast ogt float %627, %534
  %630 = or i1 %628, %629
  %631 = select i1 %630, float 0.000000e+00, float %627
  %632 = fsub fast float %534, %535
  %633 = fsub fast float %631, %535
  %634 = fdiv fast float %633, %632
  %635 = call float @dx.op.unary.f32(i32 7, float %634)  ; Saturate(value)
  %636 = fmul fast float %635, 2.000000e+00
  %637 = fsub fast float 3.000000e+00, %636
  %638 = fsub fast float %539, %542
  %639 = fmul fast float %635, %635
  %640 = fmul fast float %639, %638
  %641 = fmul fast float %640, %637
  %642 = fadd fast float %641, %542
  %643 = fmul fast float %528, %528
  %644 = fmul fast float %643, %631
  br label %724

; <label>:645                                     ; preds = %525
  %646 = and i32 %544, 256
  %647 = icmp eq i32 %646, 0
  %648 = fsub fast float %586, %37
  br i1 %647, label %685, label %649

; <label>:649                                     ; preds = %645
  %650 = fadd fast float %534, %37
  %651 = fcmp fast olt float %586, %37
  %652 = fcmp fast ogt float %586, %650
  %653 = or i1 %651, %652
  %654 = select i1 %653, float 0.000000e+00, float %648
  %655 = call float @dx.op.unary.f32(i32 83, float %586)  ; DerivCoarseX(value)
  %656 = call float @dx.op.unary.f32(i32 84, float %586)  ; DerivCoarseY(value)
  %657 = fmul fast float %655, %655
  %658 = fmul fast float %656, %656
  %659 = fadd fast float %658, %657
  %660 = call float @dx.op.unary.f32(i32 24, float %659)  ; Sqrt(value)
  %661 = extractvalue %dx.types.CBufRet.f32 %566, 2
  %662 = fmul fast float %661, %660
  %663 = call float @dx.op.unary.f32(i32 7, float %662)  ; Saturate(value)
  %664 = fmul fast float %663, %535
  %665 = fdiv fast float %648, %664
  %666 = call float @dx.op.unary.f32(i32 7, float %665)  ; Saturate(value)
  %667 = fmul fast float %666, 2.000000e+00
  %668 = fsub fast float 3.000000e+00, %667
  %669 = fmul fast float %666, %666
  %670 = fmul fast float %669, %668
  %671 = fsub fast float %586, %650
  %672 = fadd fast float %671, %664
  %673 = fdiv fast float %672, %664
  %674 = call float @dx.op.unary.f32(i32 7, float %673)  ; Saturate(value)
  %675 = fmul fast float %674, 2.000000e+00
  %676 = fsub fast float 3.000000e+00, %675
  %677 = fmul fast float %674, %674
  %678 = fmul fast float %677, %676
  %679 = fsub fast float %670, %678
  %680 = fsub fast float %539, %542
  %681 = fmul fast float %679, %680
  %682 = fadd fast float %681, %542
  %683 = fmul fast float %654, %528
  %684 = call float @dx.op.unary.f32(i32 6, float %683)  ; FAbs(value)
  br label %724

; <label>:685                                     ; preds = %645
  br i1 %547, label %686, label %697

; <label>:686                                     ; preds = %685
  %687 = select i1 %549, float 5.000000e+01, float 1.000000e+00
  %688 = fmul fast float %687, %528
  %689 = fmul fast float %468, 2.000000e+00
  %690 = fmul fast float %469, 2.000000e+00
  %691 = fadd fast float %689, -1.000000e+00
  %692 = fadd fast float %690, -1.000000e+00
  %693 = call float @dx.op.dot2.f32(i32 54, float %691, float %692, float %691, float %692)  ; Dot2(ax,ay,bx,by)
  %694 = fmul fast float %693, %536
  %695 = fsub fast float %648, %694
  %696 = fmul fast float %688, %695
  br label %724

; <label>:697                                     ; preds = %685
  br i1 %551, label %717, label %698

; <label>:698                                     ; preds = %697
  %699 = select i1 %549, float 0x3F947AE140000000, float 1.000000e+00
  %700 = fdiv fast float 1.000000e+00, %699
  %701 = fmul fast float %699, %529
  %702 = fmul fast float %699, %530
  %703 = fmul fast float %700, %531
  %704 = call float @dx.op.unary.f32(i32 6, float %648)  ; FAbs(value)
  %705 = fcmp fast olt float %704, %701
  br i1 %705, label %706, label %710, !dx.controlflow.hints !66

; <label>:706                                     ; preds = %698
  %707 = fmul fast float %700, %528
  %708 = fmul fast float %707, %704
  %709 = call float @dx.op.unary.f32(i32 6, float %708)  ; FAbs(value)
  br label %724

; <label>:710                                     ; preds = %698
  %711 = fcmp fast ogt float %704, %702
  br i1 %711, label %712, label %724

; <label>:712                                     ; preds = %710
  %713 = fsub fast float %704, %702
  %714 = fmul fast float %703, %713
  %715 = call float @dx.op.unary.f32(i32 6, float %714)  ; FAbs(value)
  %716 = fsub fast float 1.000000e+00, %715
  br label %724

; <label>:717                                     ; preds = %697
  %718 = select i1 %549, float 5.000000e+01, float 1.000000e+00
  %719 = fmul fast float %718, %528
  %720 = call float @dx.op.unary.f32(i32 6, float %504)  ; FAbs(value)
  %721 = select i1 %546, float %720, float 0x47EFFFFFE0000000
  %722 = call float @dx.op.binary.f32(i32 36, float %648, float %721)  ; FMin(a,b)
  %723 = fmul fast float %719, %722
  br label %724

; <label>:724                                     ; preds = %717, %712, %710, %706, %686, %649, %587
  %725 = phi float [ %644, %587 ], [ %684, %649 ], [ %696, %686 ], [ %723, %717 ], [ %709, %706 ], [ %716, %712 ], [ %704, %710 ]
  %726 = phi float [ %642, %587 ], [ %682, %649 ], [ 1.000000e+00, %686 ], [ 1.000000e+00, %717 ], [ 1.000000e+00, %706 ], [ 1.000000e+00, %712 ], [ 1.000000e+00, %710 ]
  %727 = call float @dx.op.unary.f32(i32 7, float %725)  ; Saturate(value)
  %728 = fmul fast float %727, %33
  %729 = fmul fast float %726, %483
  %730 = fmul fast float %729, %727
  br label %731

; <label>:731                                     ; preds = %724, %522
  %732 = phi float [ %730, %724 ], [ %483, %522 ]
  %733 = phi float [ %728, %724 ], [ %33, %522 ]
  %734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %735 = extractvalue %dx.types.CBufRet.f32 %734, 2
  %736 = fptosi float %37 to i32
  %737 = sitofp i32 %736 to float
  %738 = fadd fast float %735, %737
  %739 = fmul fast float %738, 0x3FE3C6EF40000000
  %740 = frem fast float %42, 2.560000e+02
  %741 = frem fast float %43, 2.560000e+02
  %742 = fptoui float %740 to i32
  %743 = fptoui float %741 to i32
  %744 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %742, i32 %743, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %745 = extractvalue %dx.types.ResRet.f32 %744, 0
  %746 = fadd fast float %745, %739
  %747 = call float @dx.op.unary.f32(i32 22, float %746)  ; Frc(value)
  %748 = and i32 %121, 1
  %749 = icmp eq i32 %748, 0
  br i1 %749, label %802, label %750, !dx.controlflow.hints !67

; <label>:750                                     ; preds = %731
  %751 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %118, i32 undef)  ; BufferLoad(srv,index,wot)
  %752 = extractvalue %dx.types.ResRet.f32 %751, 2
  %753 = extractvalue %dx.types.ResRet.f32 %751, 3
  %754 = add i32 %118, 16
  %755 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %754, i32 undef)  ; BufferLoad(srv,index,wot)
  %756 = extractvalue %dx.types.ResRet.f32 %755, 0
  %757 = extractvalue %dx.types.ResRet.f32 %755, 1
  %758 = extractvalue %dx.types.ResRet.f32 %755, 2
  %759 = add i32 %118, 32
  %760 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %759, i32 undef)  ; BufferLoad(srv,index,wot)
  %761 = extractvalue %dx.types.ResRet.f32 %760, 0
  %762 = extractvalue %dx.types.ResRet.f32 %760, 1
  %763 = extractvalue %dx.types.ResRet.f32 %760, 2
  %764 = and i32 %121, 2
  %765 = icmp eq i32 %764, 0
  %766 = call float @dx.op.dot3.f32(i32 55, float %295, float %296, float %297, float %295, float %296, float %297)  ; Dot3(ax,ay,az,bx,by,bz)
  %767 = call float @dx.op.unary.f32(i32 25, float %766)  ; Rsqrt(value)
  %768 = fmul fast float %767, %295
  %769 = fmul fast float %767, %296
  %770 = fmul fast float %767, %297
  %771 = call float @dx.op.dot3.f32(i32 55, float %145, float %146, float %147, float %768, float %769, float %770)  ; Dot3(ax,ay,az,bx,by,bz)
  %772 = fmul fast float %771, %771
  %773 = fmul fast float %772, %752
  %774 = fadd fast float %773, %753
  %775 = call float @dx.op.unary.f32(i32 7, float %774)  ; Saturate(value)
  br i1 %765, label %776, label %786, !dx.controlflow.hints !68

; <label>:776                                     ; preds = %750
  %777 = extractvalue %dx.types.ResRet.f32 %751, 1
  %778 = extractvalue %dx.types.ResRet.f32 %751, 0
  %779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %780 = extractvalue %dx.types.CBufRet.f32 %779, 3
  %781 = fmul fast float %780, %143
  %782 = fsub fast float %778, %781
  %783 = fmul fast float %782, %777
  %784 = call float @dx.op.unary.f32(i32 7, float %783)  ; Saturate(value)
  %785 = fmul fast float %784, %775
  br label %786

; <label>:786                                     ; preds = %776, %750
  %787 = phi float [ %785, %776 ], [ %775, %750 ]
  %788 = fsub fast float %756, %761
  %789 = fsub fast float %757, %762
  %790 = fsub fast float %758, %763
  %791 = fmul fast float %787, %788
  %792 = fmul fast float %787, %789
  %793 = fmul fast float %787, %790
  %794 = fadd fast float %791, %761
  %795 = fadd fast float %792, %762
  %796 = fadd fast float %793, %763
  %797 = fmul fast float %794, %26
  %798 = fmul fast float %795, %26
  %799 = fmul fast float %796, %26
  %800 = fmul fast float %787, %732
  %801 = fmul fast float %787, %733
  br label %802

; <label>:802                                     ; preds = %786, %731
  %803 = phi float [ %800, %786 ], [ %732, %731 ]
  %804 = phi float [ %801, %786 ], [ %733, %731 ]
  %805 = phi float [ %797, %786 ], [ %26, %731 ]
  %806 = phi float [ %798, %786 ], [ %26, %731 ]
  %807 = phi float [ %799, %786 ], [ %26, %731 ]
  %808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 120, i32 undef)  ; BufferLoad(srv,index,wot)
  %809 = extractvalue %dx.types.ResRet.i32 %808, 0
  %810 = add i32 %809, 0
  %811 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %810, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %812 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %811, %dx.types.Handle %38, float %460, float %461, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %813 = extractvalue %dx.types.ResRet.f32 %812, 0
  %814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 128, i32 undef)  ; BufferLoad(srv,index,wot)
  %815 = extractvalue %dx.types.ResRet.i32 %814, 0
  %816 = add i32 %815, 0
  %817 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %816, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %818 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %817, %dx.types.Handle %17, float %813, float %25, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %819 = extractvalue %dx.types.ResRet.f32 %818, 0
  %820 = extractvalue %dx.types.ResRet.f32 %818, 1
  %821 = extractvalue %dx.types.ResRet.f32 %818, 2
  %822 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 44, i32 undef)  ; BufferLoad(srv,index,wot)
  %823 = extractvalue %dx.types.ResRet.i32 %822, 0
  %824 = shl i32 %823, 4
  %825 = and i32 %824, 32752
  %826 = call float @dx.op.legacyF16ToF32(i32 131, i32 %825)  ; LegacyF16ToF32(value)
  %827 = lshr i32 %823, 7
  %828 = and i32 %827, 32752
  %829 = call float @dx.op.legacyF16ToF32(i32 131, i32 %828)  ; LegacyF16ToF32(value)
  %830 = lshr i32 %823, 22
  %831 = shl nuw nsw i32 %830, 5
  %832 = call float @dx.op.legacyF16ToF32(i32 131, i32 %831)  ; LegacyF16ToF32(value)
  %833 = fmul fast float %826, %819
  %834 = fmul fast float %829, %820
  %835 = fmul fast float %832, %821
  %836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %837 = extractvalue %dx.types.CBufRet.f32 %836, 0
  %838 = fmul fast float %833, %837
  %839 = fmul fast float %834, %837
  %840 = fmul fast float %835, %837
  %841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %842 = extractvalue %dx.types.ResRet.i32 %841, 0
  %843 = lshr i32 %842, 22
  %844 = shl nuw nsw i32 %843, 5
  %845 = call float @dx.op.legacyF16ToF32(i32 131, i32 %844)  ; LegacyF16ToF32(value)
  %846 = fmul fast float %845, %838
  %847 = select i1 %101, float %846, float %838
  %848 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %27, float %28, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %849 = extractvalue %dx.types.ResRet.f32 %848, 0
  %850 = extractvalue %dx.types.ResRet.f32 %848, 1
  %851 = extractvalue %dx.types.ResRet.f32 %848, 2
  %852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %853 = extractvalue %dx.types.CBufRet.f32 %852, 1
  %854 = fmul fast float %847, %805
  %855 = fmul fast float %839, %806
  %856 = fmul fast float %840, %807
  %857 = call float @dx.op.dot3.f32(i32 55, float %854, float %855, float %856, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %858 = select i1 %101, float 0.000000e+00, float %854
  %859 = select i1 %101, float %857, float %855
  %860 = select i1 %101, float 0.000000e+00, float %856
  %861 = call float @dx.op.dot3.f32(i32 55, float %819, float %820, float %821, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %863 = extractvalue %dx.types.ResRet.i32 %862, 0
  %864 = and i32 %863, 255
  %865 = uitofp i32 %864 to float
  %866 = lshr i32 %863, 8
  %867 = and i32 %866, 255
  %868 = uitofp i32 %867 to float
  %869 = fmul fast float %868, %861
  %870 = fadd fast float %869, %865
  %871 = fmul fast float %870, 0x3F70101020000000
  %872 = call float @dx.op.unary.f32(i32 7, float %871)  ; Saturate(value)
  %873 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 124, i32 undef)  ; BufferLoad(srv,index,wot)
  %874 = extractvalue %dx.types.ResRet.i32 %873, 0
  %875 = add i32 %874, 0
  %876 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %875, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %877 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %876, %dx.types.Handle %39, float %460, float %461, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %878 = extractvalue %dx.types.ResRet.f32 %877, 0
  %879 = and i32 %121, 8192
  %880 = icmp eq i32 %879, 0
  %881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %882 = extractvalue %dx.types.CBufRet.f32 %881, 0
  br i1 %880, label %893, label %883, !dx.controlflow.hints !69

; <label>:883                                     ; preds = %802
  %884 = add i32 %118, 176
  %885 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %884, i32 undef)  ; BufferLoad(srv,index,wot)
  %886 = extractvalue %dx.types.ResRet.f32 %885, 0
  %887 = extractvalue %dx.types.ResRet.f32 %885, 1
  %888 = fcmp fast oge float %886, 0.000000e+00
  %889 = select i1 %888, float %886, float %882
  %890 = fmul fast float %878, %80
  %891 = fmul fast float %890, %887
  %892 = fadd fast float %891, %889
  br label %903

; <label>:893                                     ; preds = %802
  %894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 104, i32 undef)  ; BufferLoad(srv,index,wot)
  %895 = extractvalue %dx.types.ResRet.i32 %894, 0
  %896 = extractvalue %dx.types.ResRet.i32 %894, 1
  %897 = bitcast i32 %895 to float
  %898 = bitcast i32 %896 to float
  %899 = fcmp fast oge float %897, 0.000000e+00
  %900 = select i1 %899, float %897, float %882
  %901 = fmul fast float %898, %878
  %902 = fadd fast float %900, %901
  br label %903

; <label>:903                                     ; preds = %893, %883
  %904 = phi float [ %892, %883 ], [ %902, %893 ]
  %905 = fmul fast float %861, %804
  %906 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %486, i32 %487, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %907 = extractvalue %dx.types.ResRet.i32 %906, 0
  %908 = lshr i32 %907, 18
  %909 = uitofp i32 %908 to float
  %910 = fmul fast float %909, 0x3F4C00EBA0000000
  %911 = call float @dx.op.unary.f32(i32 21, float %910)  ; Exp(value)
  %912 = fadd fast float %911, -1.000000e+00
  %913 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %9, i32 0)  ; GetDimensions(handle,mipLevel)
  %914 = extractvalue %dx.types.Dimensions %913, 0
  %915 = sitofp i32 %914 to float
  %916 = extractvalue %dx.types.Dimensions %913, 1
  %917 = sitofp i32 %916 to float
  %918 = fcmp fast oge float %484, %915
  %919 = fcmp fast oge float %485, %917
  %920 = or i1 %918, %919
  %921 = select i1 %920, float 0x4197782600000000, float %912
  %922 = icmp eq i32 %117, 3
  %923 = fcmp fast ogt float %37, %921
  %924 = and i1 %510, %923
  %925 = or i1 %922, %924
  %926 = icmp eq i32 %117, 2
  %927 = fcmp fast ole float %37, %921
  %928 = and i1 %926, %927
  %929 = or i1 %928, %925
  %930 = fmul fast float %847, %31
  %931 = fmul fast float %930, %849
  %932 = fmul fast float %931, %853
  %933 = fmul fast float %839, %31
  %934 = fmul fast float %933, %850
  %935 = fmul fast float %934, %853
  %936 = fmul fast float %840, %31
  %937 = fmul fast float %936, %851
  %938 = fmul fast float %937, %853
  %939 = fadd fast float %932, %858
  %940 = fadd fast float %859, %935
  %941 = fadd fast float %938, %860
  %942 = fmul fast float %939, %803
  %943 = fmul fast float %940, %803
  %944 = fmul fast float %941, %803
  %945 = fmul fast float %904, %872
  %946 = fsub fast float 1.000000e+00, %872
  %947 = fsub fast float %946, %905
  %948 = call float @dx.op.unary.f32(i32 7, float %947)  ; Saturate(value)
  %949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %950 = extractvalue %dx.types.CBufRet.f32 %949, 3
  %951 = fmul fast float %950, %948
  %952 = fadd fast float %951, %945
  %953 = and i32 %121, 1048576
  %954 = icmp eq i32 %953, 0
  br i1 %954, label %1046, label %955, !dx.controlflow.hints !70

; <label>:955                                     ; preds = %903
  %956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %957 = extractvalue %dx.types.CBufRet.f32 %956, 2
  %958 = extractvalue %dx.types.CBufRet.f32 %956, 3
  %959 = fmul fast float %957, %42
  %960 = fmul fast float %958, %43
  %961 = call float @dx.op.unary.f32(i32 7, float %959)  ; Saturate(value)
  %962 = call float @dx.op.unary.f32(i32 7, float %960)  ; Saturate(value)
  %963 = select i1 %929, i32 2, i32 0
  %964 = or i32 %963, 1
  %965 = uitofp i32 %964 to float
  %966 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %18, float %961, float %962, float %965, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %967 = extractvalue %dx.types.ResRet.f32 %966, 0
  %968 = extractvalue %dx.types.ResRet.f32 %966, 1
  %969 = extractvalue %dx.types.ResRet.f32 %966, 2
  %970 = extractvalue %dx.types.ResRet.f32 %966, 3
  %971 = add nuw nsw i32 %963, 2
  %972 = uitofp i32 %971 to float
  %973 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %18, float %961, float %962, float %972, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %974 = extractvalue %dx.types.ResRet.f32 %973, 0
  %975 = extractvalue %dx.types.ResRet.f32 %973, 1
  %976 = extractvalue %dx.types.ResRet.f32 %973, 2
  %977 = extractvalue %dx.types.ResRet.f32 %973, 3
  %978 = call float @dx.op.binary.f32(i32 35, float %968, float %969)  ; FMax(a,b)
  %979 = call float @dx.op.binary.f32(i32 35, float %967, float %978)  ; FMax(a,b)
  %980 = call float @dx.op.binary.f32(i32 35, float %979, float %970)  ; FMax(a,b)
  %981 = call float @dx.op.binary.f32(i32 36, float %975, float %976)  ; FMin(a,b)
  %982 = call float @dx.op.binary.f32(i32 36, float %974, float %981)  ; FMin(a,b)
  %983 = call float @dx.op.binary.f32(i32 36, float %982, float %977)  ; FMin(a,b)
  %984 = fmul fast float %980, 2.550000e+02
  %985 = fadd fast float %984, 0x3F70101020000000
  %986 = fptoui float %985 to i32
  %987 = fmul fast float %983, 2.550000e+02
  %988 = fadd fast float %987, 0x3F70101020000000
  %989 = fptoui float %988 to i32
  %990 = icmp ult i32 %986, %989
  br i1 %990, label %991, label %1039

; <label>:991                                     ; preds = %955
  %992 = fcmp fast ogt float %36, 9.843750e-01
  %993 = fadd fast float %37, -4.000000e+00
  %994 = select i1 %992, float -4.000000e+00, float %993
  %995 = call float @dx.op.binary.f32(i32 35, float %994, float 0.000000e+00)  ; FMax(a,b)
  %996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %997 = extractvalue %dx.types.CBufRet.f32 %996, 0
  %998 = fadd fast float %997, %995
  %999 = extractvalue %dx.types.CBufRet.f32 %996, 2
  %1000 = fmul fast float %998, %999
  %1001 = call float @dx.op.unary.f32(i32 23, float %1000)  ; Log(value)
  %1002 = extractvalue %dx.types.CBufRet.f32 %996, 3
  %1003 = fmul fast float %1002, %1001
  %1004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1005 = extractvalue %dx.types.CBufRet.f32 %1004, 2
  %1006 = fmul fast float %1003, %1005
  %1007 = call float @dx.op.unary.f32(i32 7, float %1006)  ; Saturate(value)
  %1008 = uitofp i32 %986 to float
  %1009 = uitofp i32 %989 to float
  %1010 = fadd fast float %1008, 5.000000e-01
  %1011 = fadd fast float %1009, 5.000000e-01
  %1012 = fmul fast float %1005, %1010
  %1013 = fmul fast float %1005, %1011
  %1014 = fadd fast float %1012, 0x3F0FFB4800000000
  %1015 = fadd fast float %1013, 0xBF0FFB4800000000
  %1016 = call float @dx.op.binary.f32(i32 35, float %1007, float %1014)  ; FMax(a,b)
  %1017 = call float @dx.op.binary.f32(i32 36, float %1016, float %1015)  ; FMin(a,b)
  %1018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1019 = extractvalue %dx.types.CBufRet.f32 %1018, 1
  %1020 = extractvalue %dx.types.CBufRet.f32 %1018, 2
  %1021 = extractvalue %dx.types.CBufRet.f32 %1018, 0
  %1022 = select i1 %929, float %1021, float 0.000000e+00
  %1023 = fmul fast float %1019, %1017
  %1024 = fadd fast float %1022, %1023
  %1025 = fadd fast float %1022, %1020
  %1026 = fsub fast float %1019, %1020
  %1027 = fadd fast float %1026, %1022
  %1028 = call float @dx.op.binary.f32(i32 35, float %1024, float %1025)  ; FMax(a,b)
  %1029 = call float @dx.op.binary.f32(i32 36, float %1028, float %1027)  ; FMin(a,b)
  %1030 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %17, float %961, float %962, float %1029, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1031 = extractvalue %dx.types.ResRet.f32 %1030, 0
  %1032 = extractvalue %dx.types.ResRet.f32 %1030, 1
  %1033 = extractvalue %dx.types.ResRet.f32 %1030, 2
  %1034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1035 = extractvalue %dx.types.CBufRet.f32 %1034, 1
  %1036 = fmul fast float %1035, %1031
  %1037 = fmul fast float %1035, %1032
  %1038 = fmul fast float %1035, %1033
  br label %1039

; <label>:1039                                    ; preds = %991, %955
  %1040 = phi float [ %1036, %991 ], [ 1.000000e+00, %955 ]
  %1041 = phi float [ %1037, %991 ], [ 1.000000e+00, %955 ]
  %1042 = phi float [ %1038, %991 ], [ 1.000000e+00, %955 ]
  %1043 = fmul fast float %1040, %942
  %1044 = fmul fast float %1041, %943
  %1045 = fmul fast float %1042, %944
  br label %1046

; <label>:1046                                    ; preds = %1039, %903
  %1047 = phi float [ %1043, %1039 ], [ %942, %903 ]
  %1048 = phi float [ %1044, %1039 ], [ %943, %903 ]
  %1049 = phi float [ %1045, %1039 ], [ %944, %903 ]
  %1050 = and i32 %121, 2097152
  %1051 = icmp eq i32 %1050, 0
  br i1 %1051, label %1056, label %1052, !dx.controlflow.hints !71

; <label>:1052                                    ; preds = %1046
  %1053 = add i32 %118, 192
  %1054 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %1053, i32 undef)  ; BufferLoad(srv,index,wot)
  %1055 = extractvalue %dx.types.ResRet.f32 %1054, 0
  br label %1059

; <label>:1056                                    ; preds = %1046
  %1057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1058 = extractvalue %dx.types.CBufRet.f32 %1057, 3
  br label %1059

; <label>:1059                                    ; preds = %1056, %1052
  %1060 = phi float [ %1055, %1052 ], [ %1058, %1056 ]
  br i1 %924, label %1061, label %1145

; <label>:1061                                    ; preds = %1059
  %1062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1063 = extractvalue %dx.types.CBufRet.f32 %1062, 2
  %1064 = extractvalue %dx.types.CBufRet.f32 %1062, 3
  %1065 = fmul fast float %1063, %42
  %1066 = fmul fast float %1064, %43
  %1067 = call float @dx.op.unary.f32(i32 7, float %1065)  ; Saturate(value)
  %1068 = call float @dx.op.unary.f32(i32 7, float %1066)  ; Saturate(value)
  %1069 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %18, float %1067, float %1068, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1070 = extractvalue %dx.types.ResRet.f32 %1069, 0
  %1071 = extractvalue %dx.types.ResRet.f32 %1069, 1
  %1072 = extractvalue %dx.types.ResRet.f32 %1069, 2
  %1073 = extractvalue %dx.types.ResRet.f32 %1069, 3
  %1074 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %18, float %1067, float %1068, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1075 = extractvalue %dx.types.ResRet.f32 %1074, 0
  %1076 = extractvalue %dx.types.ResRet.f32 %1074, 1
  %1077 = extractvalue %dx.types.ResRet.f32 %1074, 2
  %1078 = extractvalue %dx.types.ResRet.f32 %1074, 3
  %1079 = call float @dx.op.binary.f32(i32 35, float %1071, float %1072)  ; FMax(a,b)
  %1080 = call float @dx.op.binary.f32(i32 35, float %1070, float %1079)  ; FMax(a,b)
  %1081 = call float @dx.op.binary.f32(i32 35, float %1080, float %1073)  ; FMax(a,b)
  %1082 = call float @dx.op.binary.f32(i32 36, float %1076, float %1077)  ; FMin(a,b)
  %1083 = call float @dx.op.binary.f32(i32 36, float %1075, float %1082)  ; FMin(a,b)
  %1084 = call float @dx.op.binary.f32(i32 36, float %1083, float %1078)  ; FMin(a,b)
  %1085 = fmul fast float %1081, 2.550000e+02
  %1086 = fadd fast float %1085, 0x3F70101020000000
  %1087 = fptoui float %1086 to i32
  %1088 = fmul fast float %1084, 2.550000e+02
  %1089 = fadd fast float %1088, 0x3F70101020000000
  %1090 = fptoui float %1089 to i32
  %1091 = icmp ult i32 %1087, %1090
  br i1 %1091, label %1092, label %1134

; <label>:1092                                    ; preds = %1061
  %1093 = fcmp fast ogt float %36, 9.843750e-01
  %1094 = fadd fast float %37, -4.000000e+00
  %1095 = select i1 %1093, float -4.000000e+00, float %1094
  %1096 = call float @dx.op.binary.f32(i32 35, float %1095, float 0.000000e+00)  ; FMax(a,b)
  %1097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1098 = extractvalue %dx.types.CBufRet.f32 %1097, 0
  %1099 = fadd fast float %1098, %1096
  %1100 = extractvalue %dx.types.CBufRet.f32 %1097, 2
  %1101 = fmul fast float %1099, %1100
  %1102 = call float @dx.op.unary.f32(i32 23, float %1101)  ; Log(value)
  %1103 = extractvalue %dx.types.CBufRet.f32 %1097, 3
  %1104 = fmul fast float %1103, %1102
  %1105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1106 = extractvalue %dx.types.CBufRet.f32 %1105, 2
  %1107 = fmul fast float %1104, %1106
  %1108 = call float @dx.op.unary.f32(i32 7, float %1107)  ; Saturate(value)
  %1109 = uitofp i32 %1087 to float
  %1110 = uitofp i32 %1090 to float
  %1111 = fadd fast float %1109, 5.000000e-01
  %1112 = fadd fast float %1110, 5.000000e-01
  %1113 = fmul fast float %1106, %1111
  %1114 = fmul fast float %1106, %1112
  %1115 = fadd fast float %1113, 0x3F0FFB4800000000
  %1116 = fadd fast float %1114, 0xBF0FFB4800000000
  %1117 = call float @dx.op.binary.f32(i32 35, float %1108, float %1115)  ; FMax(a,b)
  %1118 = call float @dx.op.binary.f32(i32 36, float %1117, float %1116)  ; FMin(a,b)
  %1119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1120 = extractvalue %dx.types.CBufRet.f32 %1119, 1
  %1121 = extractvalue %dx.types.CBufRet.f32 %1119, 2
  %1122 = extractvalue %dx.types.CBufRet.f32 %1119, 0
  %1123 = fmul fast float %1120, %1118
  %1124 = fadd fast float %1122, %1123
  %1125 = fadd fast float %1122, %1121
  %1126 = fsub fast float %1120, %1121
  %1127 = fadd fast float %1126, %1122
  %1128 = call float @dx.op.binary.f32(i32 35, float %1124, float %1125)  ; FMax(a,b)
  %1129 = call float @dx.op.binary.f32(i32 36, float %1128, float %1127)  ; FMin(a,b)
  %1130 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %1067, float %1068, float %1129, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1131 = extractvalue %dx.types.ResRet.f32 %1130, 0
  %1132 = extractvalue %dx.types.ResRet.f32 %1130, 1
  %1133 = extractvalue %dx.types.ResRet.f32 %1130, 2
  br label %1134

; <label>:1134                                    ; preds = %1092, %1061
  %1135 = phi float [ %1131, %1092 ], [ 1.000000e+00, %1061 ]
  %1136 = phi float [ %1132, %1092 ], [ 1.000000e+00, %1061 ]
  %1137 = phi float [ %1133, %1092 ], [ 1.000000e+00, %1061 ]
  %1138 = call float @dx.op.dot3.f32(i32 55, float %1135, float %1136, float %1137, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1139 = select i1 %101, float %1138, float %1135
  %1140 = select i1 %101, float %1138, float %1136
  %1141 = select i1 %101, float 1.000000e+00, float %1137
  %1142 = fmul fast float %1139, %1047
  %1143 = fmul fast float %1140, %1048
  %1144 = fmul fast float %1141, %1049
  br label %1145

; <label>:1145                                    ; preds = %1134, %1059
  %1146 = phi float [ %921, %1134 ], [ %37, %1059 ]
  %1147 = phi float [ %1142, %1134 ], [ %1047, %1059 ]
  %1148 = phi float [ %1143, %1134 ], [ %1048, %1059 ]
  %1149 = phi float [ %1144, %1134 ], [ %1049, %1059 ]
  %1150 = phi float [ %1135, %1134 ], [ 1.000000e+00, %1059 ]
  br i1 %929, label %1493, label %1151

; <label>:1151                                    ; preds = %1145
  %1152 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %18, float %27, float %28, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1153 = extractvalue %dx.types.ResRet.f32 %1152, 0
  %1154 = extractvalue %dx.types.ResRet.f32 %1152, 1
  %1155 = extractvalue %dx.types.ResRet.f32 %1152, 2
  %1156 = fmul fast float %1153, %1150
  %1157 = call float @dx.op.dot3.f32(i32 55, float %1153, float %1154, float %1155, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1158 = select i1 %101, float %1157, float %1153
  %1159 = select i1 %101, float %1157, float %1154
  %1160 = select i1 %101, float 1.000000e+00, float %1155
  %1161 = fmul fast float %1158, %1147
  %1162 = fmul fast float %1159, %1148
  %1163 = fmul fast float %1160, %1149
  %1164 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1165 = extractvalue %dx.types.CBufRet.i32 %1164, 0
  %1166 = icmp eq i32 %1165, 0
  br i1 %1166, label %1493, label %1167, !dx.controlflow.hints !72

; <label>:1167                                    ; preds = %1151
  %1168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1169 = extractvalue %dx.types.CBufRet.f32 %1168, 2
  %1170 = extractvalue %dx.types.CBufRet.f32 %1168, 3
  %1171 = fmul fast float %1169, %42
  %1172 = fmul fast float %1170, %43
  %1173 = fmul fast float %1171, 2.000000e+00
  %1174 = fmul fast float %1172, 2.000000e+00
  %1175 = fsub fast float 1.000000e+00, %1173
  %1176 = fsub fast float 1.000000e+00, %1174
  %1177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1178 = extractvalue %dx.types.CBufRet.f32 %1177, 0
  %1179 = extractvalue %dx.types.CBufRet.f32 %1177, 1
  %1180 = extractvalue %dx.types.CBufRet.f32 %1177, 2
  %1181 = fmul fast float %1175, %1178
  %1182 = fmul fast float %1175, %1179
  %1183 = fmul fast float %1175, %1180
  %1184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1185 = extractvalue %dx.types.CBufRet.f32 %1184, 0
  %1186 = extractvalue %dx.types.CBufRet.f32 %1184, 1
  %1187 = extractvalue %dx.types.CBufRet.f32 %1184, 2
  %1188 = fmul fast float %1176, %1185
  %1189 = fmul fast float %1176, %1186
  %1190 = fmul fast float %1176, %1187
  %1191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1192 = extractvalue %dx.types.CBufRet.f32 %1191, 0
  %1193 = extractvalue %dx.types.CBufRet.f32 %1191, 1
  %1194 = extractvalue %dx.types.CBufRet.f32 %1191, 2
  %1195 = fadd fast float %1188, %1192
  %1196 = fadd fast float %1195, %1181
  %1197 = fadd fast float %1189, %1193
  %1198 = fadd fast float %1197, %1182
  %1199 = fadd fast float %1190, %1194
  %1200 = fadd fast float %1199, %1183
  %1201 = fmul fast float %1196, %1146
  %1202 = fmul fast float %1198, %1146
  %1203 = fmul fast float %1200, %1146
  %1204 = fmul fast float %1201, %1201
  %1205 = fmul fast float %1202, %1202
  %1206 = fadd fast float %1204, %1205
  %1207 = fmul fast float %1203, %1203
  %1208 = fadd fast float %1206, %1207
  %1209 = call float @dx.op.unary.f32(i32 24, float %1208)  ; Sqrt(value)
  %1210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1211 = extractvalue %dx.types.CBufRet.f32 %1210, 0
  %1212 = fsub fast float %1209, %1211
  %1213 = extractvalue %dx.types.CBufRet.f32 %1210, 2
  %1214 = fmul fast float %1212, %1213
  %1215 = call float @dx.op.unary.f32(i32 7, float %1214)  ; Saturate(value)
  %1216 = fadd fast float %1215, -5.000000e-01
  %1217 = fmul fast float %1216, 2.000000e+00
  %1218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1219 = extractvalue %dx.types.CBufRet.f32 %1218, 2
  %1220 = call float @dx.op.binary.f32(i32 36, float %1219, float %1217)  ; FMin(a,b)
  %1221 = fsub fast float -0.000000e+00, %1219
  %1222 = fcmp fast ogt float %1220, %1221
  br i1 %1222, label %1223, label %1493, !dx.controlflow.hints !73

; <label>:1223                                    ; preds = %1167
  %1224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %1225 = extractvalue %dx.types.CBufRet.f32 %1224, 3
  %1226 = fcmp fast ogt float %1225, 0.000000e+00
  br i1 %1226, label %1227, label %1302, !dx.controlflow.hints !74

; <label>:1227                                    ; preds = %1223
  %1228 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %12, i32 0)  ; GetDimensions(handle,mipLevel)
  %1229 = extractvalue %dx.types.Dimensions %1228, 0
  %1230 = sitofp i32 %1229 to float
  %1231 = extractvalue %dx.types.Dimensions %1228, 1
  %1232 = sitofp i32 %1231 to float
  %1233 = fmul fast float %1171, %1230
  %1234 = fmul fast float %1172, %1232
  %1235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1236 = extractvalue %dx.types.CBufRet.f32 %1235, 1
  %1237 = fsub fast float -0.000000e+00, %1236
  %1238 = fptoui float %1237 to i32
  %1239 = fptoui float %1233 to i32
  %1240 = fptoui float %1234 to i32
  %1241 = and i32 %1238, 31
  %1242 = lshr i32 %1239, %1241
  %1243 = lshr i32 %1240, %1241
  %1244 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 %1238, i32 %1242, i32 %1243, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1245 = extractvalue %dx.types.ResRet.f32 %1244, 0
  %1246 = fcmp fast olt float %1245, -1.000000e+00
  %1247 = fcmp fast ogt float %1245, -1.000000e+00
  %1248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1249 = extractvalue %dx.types.CBufRet.f32 %1248, 1
  %1250 = select i1 %1247, float %1249, float 1.000000e+00
  %1251 = fadd fast float %1245, 1.000000e+00
  %1252 = fmul fast float %1250, %1251
  %1253 = call float @dx.op.unary.f32(i32 6, float %1252)  ; FAbs(value)
  %1254 = extractvalue %dx.types.CBufRet.f32 %1248, 3
  %1255 = fcmp fast oge float %1253, %1254
  %1256 = select i1 %1255, float 0x4197782600000000, float %1253
  %1257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %1258 = extractvalue %dx.types.CBufRet.f32 %1257, 0
  %1259 = extractvalue %dx.types.CBufRet.f32 %1257, 1
  %1260 = extractvalue %dx.types.CBufRet.f32 %1257, 2
  %1261 = select i1 %1246, float %1258, float %1178
  %1262 = select i1 %1246, float %1259, float %1179
  %1263 = select i1 %1246, float %1260, float %1180
  %1264 = fmul fast float %1261, %1175
  %1265 = fmul fast float %1262, %1175
  %1266 = fmul fast float %1263, %1175
  %1267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %1268 = extractvalue %dx.types.CBufRet.f32 %1267, 0
  %1269 = extractvalue %dx.types.CBufRet.f32 %1267, 1
  %1270 = extractvalue %dx.types.CBufRet.f32 %1267, 2
  %1271 = select i1 %1246, float %1268, float %1185
  %1272 = select i1 %1246, float %1269, float %1186
  %1273 = select i1 %1246, float %1270, float %1187
  %1274 = fmul fast float %1271, %1176
  %1275 = fmul fast float %1272, %1176
  %1276 = fmul fast float %1273, %1176
  %1277 = fadd fast float %1274, %1264
  %1278 = fadd fast float %1275, %1265
  %1279 = fadd fast float %1276, %1266
  %1280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %1281 = extractvalue %dx.types.CBufRet.f32 %1280, 0
  %1282 = extractvalue %dx.types.CBufRet.f32 %1280, 1
  %1283 = extractvalue %dx.types.CBufRet.f32 %1280, 2
  %1284 = select i1 %1246, float %1281, float %1192
  %1285 = select i1 %1246, float %1282, float %1193
  %1286 = select i1 %1246, float %1283, float %1194
  %1287 = fadd fast float %1277, %1284
  %1288 = fadd fast float %1278, %1285
  %1289 = fadd fast float %1279, %1286
  %1290 = fmul fast float %1287, %1256
  %1291 = fmul fast float %1288, %1256
  %1292 = fmul fast float %1289, %1256
  %1293 = fmul fast float %1290, %1290
  %1294 = fmul fast float %1291, %1291
  %1295 = fadd fast float %1293, %1294
  %1296 = fmul fast float %1292, %1292
  %1297 = fadd fast float %1295, %1296
  %1298 = call float @dx.op.unary.f32(i32 24, float %1297)  ; Sqrt(value)
  %1299 = fsub fast float %1298, %1211
  %1300 = fmul fast float %1299, %1213
  %1301 = call float @dx.op.unary.f32(i32 7, float %1300)  ; Saturate(value)
  br label %1302

; <label>:1302                                    ; preds = %1227, %1223
  %1303 = phi float [ %1301, %1227 ], [ 1.000000e+00, %1223 ]
  %1304 = fmul fast float %1220, 5.000000e-01
  %1305 = fadd fast float %1304, 5.000000e-01
  %1306 = call float @dx.op.unary.f32(i32 22, float %1305)  ; Frc(value)
  %1307 = call float @dx.op.unary.f32(i32 27, float %1306)  ; Round_ni(value)
  %1308 = call float @dx.op.unary.f32(i32 22, float %1306)  ; Frc(value)
  %1309 = fmul fast float %1308, 2.000000e+00
  %1310 = fadd fast float %1309, -1.000000e+00
  %1311 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %18, float %1171, float %1172, float %1307, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1312 = extractvalue %dx.types.ResRet.f32 %1311, 0
  %1313 = extractvalue %dx.types.ResRet.f32 %1311, 1
  %1314 = extractvalue %dx.types.ResRet.f32 %1311, 2
  %1315 = extractvalue %dx.types.ResRet.f32 %1311, 3
  %1316 = fadd fast float %1312, -5.000000e-01
  %1317 = fadd fast float %1314, -5.000000e-01
  %1318 = fmul fast float %1316, 0xBFD5555560000000
  %1319 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1317, float %1318)  ; FMad(a,b,c)
  %1320 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1313, float 0.000000e+00)  ; FMad(a,b,c)
  %1321 = fadd fast float %1320, %1315
  %1322 = fmul fast float %1316, -7.500000e-01
  %1323 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1317, float %1322)  ; FMad(a,b,c)
  %1324 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1313, float 0.000000e+00)  ; FMad(a,b,c)
  %1325 = fadd fast float %1324, %1315
  %1326 = call float @dx.op.binary.f32(i32 35, float %1319, float -1.000000e+00)  ; FMax(a,b)
  %1327 = call float @dx.op.binary.f32(i32 35, float %1321, float -1.000000e+00)  ; FMax(a,b)
  %1328 = call float @dx.op.binary.f32(i32 35, float %1323, float -1.000000e+00)  ; FMax(a,b)
  %1329 = call float @dx.op.binary.f32(i32 35, float %1325, float -1.000000e+00)  ; FMax(a,b)
  %1330 = call float @dx.op.binary.f32(i32 36, float %1326, float 1.000000e+00)  ; FMin(a,b)
  %1331 = call float @dx.op.binary.f32(i32 36, float %1327, float 1.000000e+00)  ; FMin(a,b)
  %1332 = call float @dx.op.binary.f32(i32 36, float %1328, float 1.000000e+00)  ; FMin(a,b)
  %1333 = call float @dx.op.binary.f32(i32 36, float %1329, float 1.000000e+00)  ; FMin(a,b)
  %1334 = fcmp fast olt float %1330, 0x3FEFFF8020000000
  br i1 %1334, label %1335, label %1450, !dx.controlflow.hints !75

; <label>:1335                                    ; preds = %1302
  %1336 = extractvalue %dx.types.CBufRet.f32 %1218, 3
  %1337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1338 = extractvalue %dx.types.CBufRet.f32 %1337, 0
  %1339 = extractvalue %dx.types.CBufRet.f32 %1337, 1
  %1340 = extractvalue %dx.types.CBufRet.f32 %1337, 2
  %1341 = extractvalue %dx.types.CBufRet.f32 %1337, 3
  %1342 = fsub fast float %1338, %1330
  %1343 = fsub fast float %1339, %1331
  %1344 = fsub fast float %1340, %1332
  %1345 = fsub fast float %1341, %1333
  %1346 = fmul fast float %1342, %1336
  %1347 = fmul fast float %1343, %1336
  %1348 = fmul fast float %1344, %1336
  %1349 = fmul fast float %1345, %1336
  %1350 = fadd fast float %1346, %1330
  %1351 = fadd fast float %1347, %1331
  %1352 = fsub fast float -0.000000e+00, %1351
  %1353 = fadd fast float %1348, %1332
  %1354 = fadd fast float %1349, %1333
  %1355 = fmul fast float %1350, %1350
  %1356 = fsub fast float %1351, %1355
  %1357 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1356)  ; FMax(a,b)
  %1358 = fdiv fast float 1.000000e+00, %1357
  %1359 = fmul fast float %1351, %1350
  %1360 = fsub fast float %1353, %1359
  %1361 = fsub fast float %1310, %1350
  %1362 = fmul fast float %1310, %1310
  %1363 = fsub fast float %1362, %1351
  %1364 = fmul fast float %1361, %1358
  %1365 = fmul fast float %1364, %1360
  %1366 = fsub fast float %1363, %1365
  %1367 = fmul fast float %1351, %1351
  %1368 = fsub fast float %1354, %1367
  %1369 = fmul fast float %1360, %1360
  %1370 = fmul fast float %1369, %1358
  %1371 = fsub fast float %1368, %1370
  %1372 = fdiv fast float %1366, %1371
  %1373 = fmul fast float %1360, %1372
  %1374 = fsub fast float %1361, %1373
  %1375 = fmul fast float %1374, %1358
  %1376 = fmul fast float %1375, %1350
  %1377 = fsub fast float 1.000000e+00, %1376
  %1378 = fmul fast float %1351, %1372
  %1379 = fsub fast float %1377, %1378
  %1380 = fmul fast float %1375, %1375
  %1381 = fmul fast float %1372, 4.000000e+00
  %1382 = fmul fast float %1381, %1379
  %1383 = fsub fast float %1380, %1382
  %1384 = call float @dx.op.unary.f32(i32 24, float %1383)  ; Sqrt(value)
  %1385 = fcmp fast oge float %1375, 0.000000e+00
  %1386 = fsub fast float -0.000000e+00, %1384
  %1387 = select i1 %1385, float %1386, float %1384
  %1388 = fsub fast float %1387, %1375
  %1389 = fdiv fast float %1388, %1372
  %1390 = fdiv fast float %1379, %1388
  %1391 = fmul fast float %1389, 5.000000e-01
  %1392 = fmul fast float %1390, 2.000000e+00
  %1393 = select i1 %1385, float %1391, float %1392
  %1394 = select i1 %1385, float %1392, float %1391
  %1395 = call float @dx.op.binary.f32(i32 35, float %1393, float %1394)  ; FMax(a,b)
  %1396 = call float @dx.op.binary.f32(i32 36, float %1393, float %1394)  ; FMin(a,b)
  %1397 = fcmp fast ogt float %1310, %1396
  br i1 %1397, label %1398, label %1408

; <label>:1398                                    ; preds = %1335
  %1399 = fsub fast float %1310, %1396
  %1400 = fsub fast float %1395, %1396
  %1401 = fmul fast float %1399, %1400
  %1402 = fmul fast float %1395, %1310
  %1403 = fadd fast float %1395, %1310
  %1404 = fmul fast float %1403, %1350
  %1405 = fadd fast float %1402, %1351
  %1406 = fsub fast float %1405, %1404
  %1407 = fdiv fast float %1406, %1401
  br label %1408

; <label>:1408                                    ; preds = %1398, %1335
  %1409 = phi float [ %1407, %1398 ], [ 0.000000e+00, %1335 ]
  %1410 = fcmp fast ogt float %1310, %1395
  %1411 = fsub fast float %1310, %1395
  br i1 %1410, label %1412, label %1422

; <label>:1412                                    ; preds = %1408
  %1413 = fsub fast float %1395, %1396
  %1414 = fmul fast float %1413, %1411
  %1415 = fmul fast float %1396, %1310
  %1416 = fadd fast float %1396, %1310
  %1417 = fmul fast float %1416, %1350
  %1418 = fsub fast float %1352, %1415
  %1419 = fadd fast float %1418, %1417
  %1420 = fdiv fast float %1419, %1414
  %1421 = fadd fast float %1420, %1409
  br label %1422

; <label>:1422                                    ; preds = %1412, %1408
  %1423 = phi float [ %1421, %1412 ], [ %1409, %1408 ]
  %1424 = fsub fast float %1310, %1396
  %1425 = fmul fast float %1424, %1411
  %1426 = fmul fast float %1396, %1395
  %1427 = fadd fast float %1396, %1395
  %1428 = fmul fast float %1427, %1350
  %1429 = fadd fast float %1426, %1351
  %1430 = fsub fast float %1429, %1428
  %1431 = fdiv fast float %1430, %1425
  %1432 = call float @dx.op.unary.f32(i32 7, float %1423)  ; Saturate(value)
  %1433 = fcmp fast oeq float %1060, 0.000000e+00
  %1434 = extractvalue %dx.types.CBufRet.f32 %1218, 0
  %1435 = fcmp fast oeq float %1434, 0.000000e+00
  %1436 = or i1 %1433, %1435
  %1437 = fmul fast float %1434, 2.000000e+00
  %1438 = fadd fast float %1219, %1220
  %1439 = fdiv fast float %1438, %1437
  %1440 = call float @dx.op.unary.f32(i32 7, float %1439)  ; Saturate(value)
  %1441 = fmul fast float %1440, 2.000000e+00
  %1442 = fsub fast float 3.000000e+00, %1441
  %1443 = fmul fast float %1440, %1440
  %1444 = fmul fast float %1443, %1442
  %1445 = select i1 %1436, float 1.000000e+00, float %1444
  %1446 = fmul fast float %1431, %1060
  %1447 = fadd fast float %1432, %1446
  %1448 = call float @dx.op.unary.f32(i32 7, float %1447)  ; Saturate(value)
  %1449 = fmul fast float %1445, %1448
  br label %1450

; <label>:1450                                    ; preds = %1422, %1302
  %1451 = phi float [ %1449, %1422 ], [ 0.000000e+00, %1302 ]
  %1452 = fsub fast float 1.000000e+00, %1451
  %1453 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %18, float %1171, float %1172, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1454 = extractvalue %dx.types.ResRet.f32 %1453, 0
  %1455 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1456 = extractvalue %dx.types.CBufRet.i32 %1455, 2
  %1457 = icmp eq i32 %1456, 0
  br i1 %1457, label %1463, label %1458

; <label>:1458                                    ; preds = %1450
  %1459 = call float @dx.op.unary.f32(i32 7, float %1451)  ; Saturate(value)
  %1460 = fadd fast float %1454, -1.000000e+00
  %1461 = fmul fast float %1459, %1460
  %1462 = fadd fast float %1461, 1.000000e+00
  br label %1463

; <label>:1463                                    ; preds = %1458, %1450
  %1464 = phi float [ %1462, %1458 ], [ %1452, %1450 ]
  br i1 %1226, label %1465, label %1483

; <label>:1465                                    ; preds = %1463
  %1466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1467 = extractvalue %dx.types.CBufRet.f32 %1466, 1
  %1468 = fsub fast float %1303, %1467
  %1469 = call float @dx.op.unary.f32(i32 7, float %1468)  ; Saturate(value)
  %1470 = fsub fast float %1303, %1225
  %1471 = call float @dx.op.unary.f32(i32 7, float %1470)  ; Saturate(value)
  %1472 = fsub fast float %1469, %1471
  %1473 = fsub fast float %1305, %1471
  %1474 = fdiv fast float %1473, %1472
  %1475 = call float @dx.op.unary.f32(i32 7, float %1474)  ; Saturate(value)
  %1476 = fmul fast float %1475, 2.000000e+00
  %1477 = fsub fast float 3.000000e+00, %1476
  %1478 = fsub fast float %1454, %1464
  %1479 = fmul fast float %1475, %1475
  %1480 = fmul fast float %1479, %1478
  %1481 = fmul fast float %1480, %1477
  %1482 = fadd fast float %1481, %1464
  br label %1483

; <label>:1483                                    ; preds = %1465, %1463
  %1484 = phi float [ %1482, %1465 ], [ %1464, %1463 ]
  %1485 = call float @dx.op.binary.f32(i32 35, float %1454, float %1484)  ; FMax(a,b)
  %1486 = fmul fast float %1485, %1156
  %1487 = call float @dx.op.dot3.f32(i32 55, float %1485, float %1485, float %1485, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1488 = select i1 %101, float %1487, float %1485
  %1489 = select i1 %101, float 1.000000e+00, float %1485
  %1490 = fmul fast float %1488, %1161
  %1491 = fmul fast float %1488, %1162
  %1492 = fmul fast float %1489, %1163
  br label %1493

; <label>:1493                                    ; preds = %1483, %1167, %1151, %1145
  %1494 = phi float [ %1147, %1145 ], [ %1161, %1151 ], [ %1490, %1483 ], [ %1161, %1167 ]
  %1495 = phi float [ %1148, %1145 ], [ %1162, %1151 ], [ %1491, %1483 ], [ %1162, %1167 ]
  %1496 = phi float [ %1149, %1145 ], [ %1163, %1151 ], [ %1492, %1483 ], [ %1163, %1167 ]
  %1497 = phi float [ %1150, %1145 ], [ %1156, %1151 ], [ %1486, %1483 ], [ %1156, %1167 ]
  %1498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1499 = extractvalue %dx.types.CBufRet.f32 %1498, 2
  %1500 = extractvalue %dx.types.CBufRet.f32 %1498, 3
  %1501 = fmul fast float %1499, %42
  %1502 = fmul fast float %1500, %43
  %1503 = call float @dx.op.unary.f32(i32 7, float %1501)  ; Saturate(value)
  %1504 = call float @dx.op.unary.f32(i32 7, float %1502)  ; Saturate(value)
  %1505 = select i1 %929, i32 2, i32 0
  %1506 = or i32 %1505, 1
  %1507 = uitofp i32 %1506 to float
  %1508 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %18, float %1503, float %1504, float %1507, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1509 = extractvalue %dx.types.ResRet.f32 %1508, 0
  %1510 = extractvalue %dx.types.ResRet.f32 %1508, 1
  %1511 = extractvalue %dx.types.ResRet.f32 %1508, 2
  %1512 = extractvalue %dx.types.ResRet.f32 %1508, 3
  %1513 = add nuw nsw i32 %1505, 2
  %1514 = uitofp i32 %1513 to float
  %1515 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %18, float %1503, float %1504, float %1514, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1516 = extractvalue %dx.types.ResRet.f32 %1515, 0
  %1517 = extractvalue %dx.types.ResRet.f32 %1515, 1
  %1518 = extractvalue %dx.types.ResRet.f32 %1515, 2
  %1519 = extractvalue %dx.types.ResRet.f32 %1515, 3
  %1520 = call float @dx.op.binary.f32(i32 35, float %1510, float %1511)  ; FMax(a,b)
  %1521 = call float @dx.op.binary.f32(i32 35, float %1509, float %1520)  ; FMax(a,b)
  %1522 = call float @dx.op.binary.f32(i32 35, float %1521, float %1512)  ; FMax(a,b)
  %1523 = call float @dx.op.binary.f32(i32 36, float %1517, float %1518)  ; FMin(a,b)
  %1524 = call float @dx.op.binary.f32(i32 36, float %1516, float %1523)  ; FMin(a,b)
  %1525 = call float @dx.op.binary.f32(i32 36, float %1524, float %1519)  ; FMin(a,b)
  %1526 = fmul fast float %1522, 2.550000e+02
  %1527 = fadd fast float %1526, 0x3F70101020000000
  %1528 = fptoui float %1527 to i32
  %1529 = fmul fast float %1525, 2.550000e+02
  %1530 = fadd fast float %1529, 0x3F70101020000000
  %1531 = fptoui float %1530 to i32
  %1532 = icmp ult i32 %1528, %1531
  br i1 %1532, label %1533, label %1576

; <label>:1533                                    ; preds = %1493
  %1534 = fcmp fast ogt float %36, 9.843750e-01
  %1535 = fadd fast float %1146, -4.000000e+00
  %1536 = select i1 %1534, float -4.000000e+00, float %1535
  %1537 = call float @dx.op.binary.f32(i32 35, float %1536, float 0.000000e+00)  ; FMax(a,b)
  %1538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1539 = extractvalue %dx.types.CBufRet.f32 %1538, 0
  %1540 = fadd fast float %1539, %1537
  %1541 = extractvalue %dx.types.CBufRet.f32 %1538, 2
  %1542 = fmul fast float %1540, %1541
  %1543 = call float @dx.op.unary.f32(i32 23, float %1542)  ; Log(value)
  %1544 = extractvalue %dx.types.CBufRet.f32 %1538, 3
  %1545 = fmul fast float %1544, %1543
  %1546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1547 = extractvalue %dx.types.CBufRet.f32 %1546, 2
  %1548 = fmul fast float %1545, %1547
  %1549 = call float @dx.op.unary.f32(i32 7, float %1548)  ; Saturate(value)
  %1550 = uitofp i32 %1528 to float
  %1551 = uitofp i32 %1531 to float
  %1552 = fadd fast float %1550, 5.000000e-01
  %1553 = fadd fast float %1551, 5.000000e-01
  %1554 = fmul fast float %1547, %1552
  %1555 = fmul fast float %1547, %1553
  %1556 = fadd fast float %1554, 0x3F0FFB4800000000
  %1557 = fadd fast float %1555, 0xBF0FFB4800000000
  %1558 = call float @dx.op.binary.f32(i32 35, float %1549, float %1556)  ; FMax(a,b)
  %1559 = call float @dx.op.binary.f32(i32 36, float %1558, float %1557)  ; FMin(a,b)
  %1560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1561 = extractvalue %dx.types.CBufRet.f32 %1560, 1
  %1562 = extractvalue %dx.types.CBufRet.f32 %1560, 2
  %1563 = extractvalue %dx.types.CBufRet.f32 %1560, 0
  %1564 = select i1 %929, float %1563, float 0.000000e+00
  %1565 = fmul fast float %1561, %1559
  %1566 = fadd fast float %1564, %1565
  %1567 = fadd fast float %1564, %1562
  %1568 = fsub fast float %1561, %1562
  %1569 = fadd fast float %1568, %1564
  %1570 = call float @dx.op.binary.f32(i32 35, float %1566, float %1567)  ; FMax(a,b)
  %1571 = call float @dx.op.binary.f32(i32 36, float %1570, float %1569)  ; FMin(a,b)
  %1572 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %1503, float %1504, float %1571, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1573 = extractvalue %dx.types.ResRet.f32 %1572, 0
  %1574 = extractvalue %dx.types.ResRet.f32 %1572, 1
  %1575 = extractvalue %dx.types.ResRet.f32 %1572, 2
  br label %1576

; <label>:1576                                    ; preds = %1533, %1493
  %1577 = phi float [ %1573, %1533 ], [ 1.000000e+00, %1493 ]
  %1578 = phi float [ %1574, %1533 ], [ 1.000000e+00, %1493 ]
  %1579 = phi float [ %1575, %1533 ], [ 1.000000e+00, %1493 ]
  %1580 = fmul fast float %1577, %1497
  %1581 = call float @dx.op.dot3.f32(i32 55, float %1577, float %1578, float %1579, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1582 = select i1 %101, float %1581, float %1577
  %1583 = select i1 %101, float %1581, float %1578
  %1584 = select i1 %101, float 1.000000e+00, float %1579
  %1585 = fmul fast float %1582, %1494
  %1586 = fmul fast float %1583, %1495
  %1587 = fmul fast float %1584, %1496
  %1588 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1589 = extractvalue %dx.types.CBufRet.i32 %1588, 3
  %1590 = and i32 %1589, 3
  %1591 = icmp ne i32 %1590, 0
  %1592 = and i32 %1589, 4
  %1593 = icmp ne i32 %1592, 0
  %1594 = and i1 %1591, %1593
  %1595 = and i1 %101, %1594
  br i1 %1595, label %1596, label %1602

; <label>:1596                                    ; preds = %1576
  %1597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1598 = extractvalue %dx.types.CBufRet.f32 %1597, 1
  %1599 = fadd fast float %1580, -1.000000e+00
  %1600 = fmul fast float %1598, %1599
  %1601 = fadd fast float %1600, 1.000000e+00
  br label %1602

; <label>:1602                                    ; preds = %1596, %1576
  %1603 = phi float [ %1601, %1596 ], [ %1580, %1576 ]
  %1604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1605 = extractvalue %dx.types.CBufRet.f32 %1604, 0
  br i1 %101, label %1606, label %1626

; <label>:1606                                    ; preds = %1602
  %1607 = fadd fast float %1585, %1586
  %1608 = fmul fast float %1605, %1607
  %1609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1610 = extractvalue %dx.types.CBufRet.f32 %1609, 3
  %1611 = extractvalue %dx.types.CBufRet.f32 %949, 1
  %1612 = fsub fast float %952, %1611
  %1613 = extractvalue %dx.types.CBufRet.f32 %949, 2
  %1614 = fmul fast float %1612, %1613
  %1615 = call float @dx.op.unary.f32(i32 7, float %1614)  ; Saturate(value)
  %1616 = fsub fast float %1615, %1610
  %1617 = fmul fast float %1616, %1603
  %1618 = fadd fast float %1617, %1610
  %1619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1620 = extractvalue %dx.types.CBufRet.f32 %1619, 0
  %1621 = fsub fast float %1618, %1620
  %1622 = fmul fast float %1621, 1.000000e+01
  %1623 = call float @dx.op.unary.f32(i32 7, float %1622)  ; Saturate(value)
  %1624 = fmul fast float %1623, %905
  %1625 = fmul fast float %1618, %1624
  br label %1635

; <label>:1626                                    ; preds = %1602
  %1627 = fmul fast float %1605, %1585
  %1628 = fmul fast float %1605, %1586
  %1629 = fmul fast float %1587, %1605
  %1630 = call float @dx.op.binary.f32(i32 35, float %1628, float %1629)  ; FMax(a,b)
  %1631 = call float @dx.op.binary.f32(i32 35, float %1627, float %1630)  ; FMax(a,b)
  %1632 = call float @dx.op.binary.f32(i32 35, float %1631, float 0.000000e+00)  ; FMax(a,b)
  %1633 = fcmp fast ugt float %1632, 0x3F10000000000000
  br i1 %1633, label %1635, label %1634

; <label>:1634                                    ; preds = %1626
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1635

; <label>:1635                                    ; preds = %1634, %1626, %1606
  %1636 = phi float [ %1608, %1606 ], [ %1627, %1634 ], [ %1627, %1626 ]
  %1637 = phi float [ %1625, %1606 ], [ %1628, %1634 ], [ %1628, %1626 ]
  %1638 = phi float [ %1624, %1606 ], [ %1629, %1634 ], [ %1629, %1626 ]
  %1639 = phi float [ %1624, %1606 ], [ 0.000000e+00, %1634 ], [ 0.000000e+00, %1626 ]
  %1640 = fadd fast float %747, 0x3FE3C6EF40000000
  %1641 = call float @dx.op.unary.f32(i32 22, float %1640)  ; Frc(value)
  %1642 = call float @dx.op.unary.f32(i32 23, float %1636)  ; Log(value)
  %1643 = fadd fast float %1642, -7.000000e+00
  %1644 = call float @dx.op.unary.f32(i32 21, float %1643)  ; Exp(value)
  %1645 = fmul fast float %1641, 2.000000e+00
  %1646 = fadd fast float %1645, -1.000000e+00
  %1647 = fmul fast float %1644, %1646
  %1648 = fcmp fast ogt float %1636, 0.000000e+00
  %1649 = select i1 %1648, float %1647, float 0.000000e+00
  %1650 = fadd fast float %1649, %1636
  %1651 = fadd fast float %747, 0x3FF3C6EF40000000
  %1652 = call float @dx.op.unary.f32(i32 22, float %1651)  ; Frc(value)
  %1653 = call float @dx.op.unary.f32(i32 23, float %1637)  ; Log(value)
  %1654 = fadd fast float %1653, -7.000000e+00
  %1655 = call float @dx.op.unary.f32(i32 21, float %1654)  ; Exp(value)
  %1656 = fmul fast float %1652, 2.000000e+00
  %1657 = fadd fast float %1656, -1.000000e+00
  %1658 = fmul fast float %1655, %1657
  %1659 = fcmp fast ogt float %1637, 0.000000e+00
  %1660 = select i1 %1659, float %1658, float 0.000000e+00
  %1661 = fadd fast float %1660, %1637
  %1662 = fadd fast float %747, 0x3FFDAA66E0000000
  %1663 = call float @dx.op.unary.f32(i32 22, float %1662)  ; Frc(value)
  %1664 = call float @dx.op.unary.f32(i32 23, float %1638)  ; Log(value)
  %1665 = fadd fast float %1664, -6.000000e+00
  %1666 = call float @dx.op.unary.f32(i32 21, float %1665)  ; Exp(value)
  %1667 = fmul fast float %1663, 2.000000e+00
  %1668 = fadd fast float %1667, -1.000000e+00
  %1669 = fmul fast float %1666, %1668
  %1670 = fcmp fast ogt float %1638, 0.000000e+00
  %1671 = select i1 %1670, float %1669, float 0.000000e+00
  %1672 = fadd fast float %1671, %1638
  %1673 = select i1 %101, float %1637, float %1661
  %1674 = select i1 %101, float %1638, float %1672
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1675 = call float @dx.op.binary.f32(i32 36, float %1650, float 3.225500e+04)  ; FMin(a,b)
  %1676 = call float @dx.op.binary.f32(i32 36, float %1673, float 3.225500e+04)  ; FMin(a,b)
  %1677 = call float @dx.op.binary.f32(i32 36, float %1674, float 3.225500e+04)  ; FMin(a,b)
  %1678 = call float @dx.op.binary.f32(i32 36, float %1639, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1675)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1676)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1677)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1678)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1639)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1639)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1639)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1639)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

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
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

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
!dx.viewIdState = !{!34}
!dx.entryPoints = !{!35}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !26, !29}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !17, !18, !19, !21, !22, !23, !24, !25}
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
!17 = !{i32 9, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!18 = !{i32 10, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!19 = !{i32 11, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !20}
!20 = !{i32 0, i32 14}
!21 = !{i32 12, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!22 = !{i32 13, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 7, i32 0, !7}
!23 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 3, i32 1, i32 11, i32 0, null}
!24 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 4, i32 1, i32 11, i32 0, null}
!25 = !{i32 16, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 46, i32 1, i32 4, i32 0, !7}
!26 = !{!27, !28}
!27 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!28 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!29 = !{!30, !31, !32, !33}
!30 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!31 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!32 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!33 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!34 = !{[30 x i32] [i32 28, i32 8, i32 255, i32 255, i32 255, i32 255, i32 0, i32 7, i32 0, i32 255, i32 0, i32 0, i32 0, i32 0, i32 255, i32 255, i32 0, i32 7, i32 255, i32 255, i32 0, i32 0, i32 255, i32 0, i32 0, i32 7, i32 255, i32 254, i32 0, i32 255]}
!35 = !{void ()* @ps_main, !"ps_main", !36, !4, !62}
!36 = !{!37, !58, null}
!37 = !{!38, !41, !43, !44, !47, !50, !53, !54, !57}
!38 = !{i32 0, !"SV_Position", i8 9, i8 3, !39, i8 4, i32 1, i8 4, i32 0, i8 0, !40}
!39 = !{i32 0}
!40 = !{i32 3, i32 15}
!41 = !{i32 1, !"COLOR", i8 9, i8 0, !39, i8 2, i32 1, i8 4, i32 1, i8 0, !42}
!42 = !{i32 3, i32 10}
!43 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !39, i8 2, i32 1, i8 2, i32 2, i8 0, null}
!44 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !45, i8 2, i32 1, i8 4, i32 3, i8 0, !46}
!45 = !{i32 3}
!46 = !{i32 3, i32 11}
!47 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !48, i8 3, i32 1, i8 2, i32 4, i8 0, !49}
!48 = !{i32 5}
!49 = !{i32 3, i32 3}
!50 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !51, i8 2, i32 1, i8 4, i32 5, i8 0, !52}
!51 = !{i32 8}
!52 = !{i32 3, i32 9}
!53 = !{i32 6, !"COLOR", i8 5, i8 0, !45, i8 1, i32 1, i8 3, i32 6, i8 0, !49}
!54 = !{i32 7, !"COLOR", i8 5, i8 0, !55, i8 1, i32 1, i8 1, i32 6, i8 3, !56}
!55 = !{i32 4}
!56 = !{i32 3, i32 1}
!57 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !39, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!58 = !{!59, !60}
!59 = !{i32 0, !"SV_Target", i8 9, i8 16, !39, i8 0, i32 1, i8 4, i32 0, i8 0, !40}
!60 = !{i32 1, !"SV_Target", i8 9, i8 16, !61, i8 0, i32 1, i8 4, i32 1, i8 0, !40}
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

