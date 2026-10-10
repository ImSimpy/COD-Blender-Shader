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
; shader hash: 3f2558470d45445043f7146a8fbf10d3
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
  %170 = and i32 %131, 16
  %171 = icmp ne i32 %170, 0
  %172 = select i1 %171, float 1.000000e+00, float %44
  %173 = add i32 %24, 96
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
  %623 = add i32 %24, 88
  %624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %623, i32 undef)  ; BufferLoad(srv,index,wot)
  %625 = extractvalue %dx.types.ResRet.i32 %624, 0
  %626 = add i32 %625, 0
  %627 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %626, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %628 = add i32 %24, 24
  %629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %628, i32 undef)  ; BufferLoad(srv,index,wot)
  %630 = extractvalue %dx.types.ResRet.i32 %629, 0
  %631 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %627, %dx.types.Handle %49, float %168, float %169, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %632 = extractvalue %dx.types.ResRet.f32 %631, 0
  %633 = extractvalue %dx.types.ResRet.f32 %631, 1
  %634 = extractvalue %dx.types.ResRet.f32 %631, 2
  %635 = extractvalue %dx.types.ResRet.f32 %631, 3
  %636 = and i32 %630, 255
  %637 = uitofp i32 %636 to float
  %638 = lshr i32 %630, 8
  %639 = and i32 %638, 255
  %640 = uitofp i32 %639 to float
  %641 = fmul fast float %635, %637
  %642 = fadd fast float %641, %640
  %643 = fmul fast float %642, 0x3F70101000000000
  %644 = add i32 %24, 56
  %645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %644, i32 undef)  ; BufferLoad(srv,index,wot)
  %646 = extractvalue %dx.types.ResRet.i32 %645, 0
  %647 = and i32 %646, 255
  %648 = uitofp i32 %647 to float
  %649 = fmul fast float %648, 0x3F70101020000000
  %650 = lshr i32 %646, 8
  %651 = and i32 %650, 255
  %652 = uitofp i32 %651 to float
  %653 = fmul fast float %652, 0x3F70101020000000
  %654 = lshr i32 %646, 16
  %655 = and i32 %654, 255
  %656 = uitofp i32 %655 to float
  %657 = fmul fast float %656, 0x3F70101020000000
  %658 = add i32 %24, 92
  %659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %658, i32 undef)  ; BufferLoad(srv,index,wot)
  %660 = extractvalue %dx.types.ResRet.i32 %659, 0
  %661 = add i32 %660, 0
  %662 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %661, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %663 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %662, %dx.types.Handle %49, float %168, float %169, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %664 = extractvalue %dx.types.ResRet.f32 %663, 0
  %665 = extractvalue %dx.types.ResRet.f32 %663, 1
  %666 = extractvalue %dx.types.ResRet.f32 %663, 2
  %667 = add i32 %24, 44
  %668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %667, i32 undef)  ; BufferLoad(srv,index,wot)
  %669 = extractvalue %dx.types.ResRet.i32 %668, 0
  %670 = shl i32 %669, 4
  %671 = and i32 %670, 32752
  %672 = call float @dx.op.legacyF16ToF32(i32 131, i32 %671)  ; LegacyF16ToF32(value)
  %673 = lshr i32 %669, 7
  %674 = and i32 %673, 32752
  %675 = call float @dx.op.legacyF16ToF32(i32 131, i32 %674)  ; LegacyF16ToF32(value)
  %676 = lshr i32 %669, 22
  %677 = shl nuw nsw i32 %676, 5
  %678 = call float @dx.op.legacyF16ToF32(i32 131, i32 %677)  ; LegacyF16ToF32(value)
  %679 = fmul fast float %672, %664
  %680 = fmul fast float %675, %665
  %681 = fmul fast float %678, %666
  %682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %683 = extractvalue %dx.types.CBufRet.f32 %682, 0
  %684 = fmul fast float %679, %683
  %685 = fmul fast float %680, %683
  %686 = fmul fast float %681, %683
  %687 = add i32 %24, 48
  %688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %687, i32 undef)  ; BufferLoad(srv,index,wot)
  %689 = extractvalue %dx.types.ResRet.i32 %688, 0
  %690 = lshr i32 %689, 22
  %691 = shl nuw nsw i32 %690, 5
  %692 = call float @dx.op.legacyF16ToF32(i32 131, i32 %691)  ; LegacyF16ToF32(value)
  %693 = fmul fast float %692, %684
  %694 = select i1 %111, float %693, float %684
  %695 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %19, float %33, float %34, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %696 = extractvalue %dx.types.ResRet.f32 %695, 0
  %697 = extractvalue %dx.types.ResRet.f32 %695, 1
  %698 = extractvalue %dx.types.ResRet.f32 %695, 2
  %699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %700 = extractvalue %dx.types.CBufRet.f32 %699, 1
  %701 = fmul fast float %700, %696
  %702 = fmul fast float %700, %697
  %703 = fmul fast float %700, %698
  %704 = fadd fast float %643, 0xBFB99999A0000000
  %705 = call float @dx.op.unary.f32(i32 7, float %704)  ; Saturate(value)
  %706 = fmul fast float %705, 0x3FF1C71C80000000
  %707 = fsub fast float 1.000000e+00, %706
  %708 = call float @dx.op.unary.f32(i32 7, float %707)  ; Saturate(value)
  %709 = fmul fast float %632, %616
  %710 = fmul fast float %649, %649
  %711 = fmul fast float %710, %709
  %712 = fmul fast float %711, %708
  %713 = fmul fast float %633, %617
  %714 = fmul fast float %653, %653
  %715 = fmul fast float %714, %713
  %716 = fmul fast float %715, %708
  %717 = fmul fast float %634, %618
  %718 = fmul fast float %657, %657
  %719 = fmul fast float %718, %717
  %720 = fmul fast float %719, %708
  %721 = call float @dx.op.unary.f32(i32 7, float %712)  ; Saturate(value)
  %722 = call float @dx.op.unary.f32(i32 7, float %716)  ; Saturate(value)
  %723 = call float @dx.op.unary.f32(i32 7, float %720)  ; Saturate(value)
  %724 = fmul fast float %694, %620
  %725 = fmul fast float %685, %621
  %726 = fmul fast float %686, %622
  %727 = call float @dx.op.dot3.f32(i32 55, float %724, float %725, float %726, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %728 = select i1 %111, float 0.000000e+00, float %724
  %729 = select i1 %111, float %727, float %725
  %730 = select i1 %111, float 0.000000e+00, float %726
  %731 = fmul fast float %537, %694
  %732 = fmul fast float %538, %685
  %733 = fmul fast float %539, %686
  %734 = call float @dx.op.dot3.f32(i32 55, float %721, float %722, float %723, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %735 = add i32 %24, 32
  %736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %735, i32 undef)  ; BufferLoad(srv,index,wot)
  %737 = extractvalue %dx.types.ResRet.i32 %736, 0
  %738 = and i32 %737, 255
  %739 = uitofp i32 %738 to float
  %740 = lshr i32 %737, 8
  %741 = and i32 %740, 255
  %742 = uitofp i32 %741 to float
  %743 = fmul fast float %742, %734
  %744 = fadd fast float %743, %739
  %745 = fmul fast float %744, 0x3F70101020000000
  %746 = call float @dx.op.unary.f32(i32 7, float %745)  ; Saturate(value)
  %747 = and i32 %131, 8192
  %748 = icmp eq i32 %747, 0
  %749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %750 = extractvalue %dx.types.CBufRet.f32 %749, 0
  br i1 %748, label %757, label %751, !dx.controlflow.hints !66

; <label>:751                                     ; preds = %615
  %752 = add i32 %128, 176
  %753 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %752, i32 undef)  ; BufferLoad(srv,index,wot)
  %754 = extractvalue %dx.types.ResRet.f32 %753, 0
  %755 = fcmp fast oge float %754, 0.000000e+00
  %756 = select i1 %755, float %754, float %750
  br label %764

; <label>:757                                     ; preds = %615
  %758 = add i32 %24, 72
  %759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %758, i32 undef)  ; BufferLoad(srv,index,wot)
  %760 = extractvalue %dx.types.ResRet.i32 %759, 0
  %761 = bitcast i32 %760 to float
  %762 = fcmp fast oge float %761, 0.000000e+00
  %763 = select i1 %762, float %761, float %750
  br label %764

; <label>:764                                     ; preds = %757, %751
  %765 = phi float [ %756, %751 ], [ %763, %757 ]
  %766 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %211, i32 %212, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %767 = extractvalue %dx.types.ResRet.i32 %766, 0
  %768 = lshr i32 %767, 18
  %769 = uitofp i32 %768 to float
  %770 = fmul fast float %769, 0x3F4C00EBA0000000
  %771 = call float @dx.op.unary.f32(i32 21, float %770)  ; Exp(value)
  %772 = fadd fast float %771, -1.000000e+00
  %773 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %10, i32 0)  ; GetDimensions(handle,mipLevel)
  %774 = extractvalue %dx.types.Dimensions %773, 0
  %775 = sitofp i32 %774 to float
  %776 = extractvalue %dx.types.Dimensions %773, 1
  %777 = sitofp i32 %776 to float
  %778 = fcmp fast oge float %209, %775
  %779 = fcmp fast oge float %210, %777
  %780 = or i1 %778, %779
  %781 = select i1 %780, float 0x4197782600000000, float %772
  %782 = icmp eq i32 %127, 3
  %783 = fcmp fast ogt float %48, %781
  %784 = and i1 %235, %783
  %785 = or i1 %782, %784
  %786 = icmp eq i32 %127, 2
  %787 = fcmp fast ole float %48, %781
  %788 = and i1 %786, %787
  %789 = or i1 %788, %785
  %790 = fmul fast float %731, %701
  %791 = fmul fast float %732, %702
  %792 = fmul fast float %733, %703
  %793 = fadd fast float %790, %728
  %794 = fadd fast float %729, %791
  %795 = fadd fast float %792, %730
  %796 = fmul fast float %793, %619
  %797 = fmul fast float %794, %619
  %798 = fmul fast float %795, %619
  %799 = fmul fast float %701, %619
  %800 = fmul fast float %702, %619
  %801 = fmul fast float %703, %619
  %802 = fsub fast float 1.000000e+00, %619
  %803 = call float @dx.op.dot3.f32(i32 55, float %802, float %802, float %802, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %804 = fsub fast float 1.000000e+00, %803
  %805 = fmul fast float %765, %746
  %806 = fsub fast float 1.000000e+00, %746
  %807 = call float @dx.op.unary.f32(i32 7, float %806)  ; Saturate(value)
  %808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %809 = extractvalue %dx.types.CBufRet.f32 %808, 3
  %810 = fmul fast float %809, %807
  %811 = fadd fast float %810, %805
  %812 = and i32 %131, 1048576
  %813 = icmp eq i32 %812, 0
  br i1 %813, label %905, label %814, !dx.controlflow.hints !67

; <label>:814                                     ; preds = %764
  %815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %816 = extractvalue %dx.types.CBufRet.f32 %815, 2
  %817 = extractvalue %dx.types.CBufRet.f32 %815, 3
  %818 = fmul fast float %816, %53
  %819 = fmul fast float %817, %54
  %820 = call float @dx.op.unary.f32(i32 7, float %818)  ; Saturate(value)
  %821 = call float @dx.op.unary.f32(i32 7, float %819)  ; Saturate(value)
  %822 = select i1 %789, i32 2, i32 0
  %823 = or i32 %822, 1
  %824 = uitofp i32 %823 to float
  %825 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %820, float %821, float %824, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %826 = extractvalue %dx.types.ResRet.f32 %825, 0
  %827 = extractvalue %dx.types.ResRet.f32 %825, 1
  %828 = extractvalue %dx.types.ResRet.f32 %825, 2
  %829 = extractvalue %dx.types.ResRet.f32 %825, 3
  %830 = add nuw nsw i32 %822, 2
  %831 = uitofp i32 %830 to float
  %832 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %820, float %821, float %831, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %833 = extractvalue %dx.types.ResRet.f32 %832, 0
  %834 = extractvalue %dx.types.ResRet.f32 %832, 1
  %835 = extractvalue %dx.types.ResRet.f32 %832, 2
  %836 = extractvalue %dx.types.ResRet.f32 %832, 3
  %837 = call float @dx.op.binary.f32(i32 35, float %827, float %828)  ; FMax(a,b)
  %838 = call float @dx.op.binary.f32(i32 35, float %826, float %837)  ; FMax(a,b)
  %839 = call float @dx.op.binary.f32(i32 35, float %838, float %829)  ; FMax(a,b)
  %840 = call float @dx.op.binary.f32(i32 36, float %834, float %835)  ; FMin(a,b)
  %841 = call float @dx.op.binary.f32(i32 36, float %833, float %840)  ; FMin(a,b)
  %842 = call float @dx.op.binary.f32(i32 36, float %841, float %836)  ; FMin(a,b)
  %843 = fmul fast float %839, 2.550000e+02
  %844 = fadd fast float %843, 0x3F70101020000000
  %845 = fptoui float %844 to i32
  %846 = fmul fast float %842, 2.550000e+02
  %847 = fadd fast float %846, 0x3F70101020000000
  %848 = fptoui float %847 to i32
  %849 = icmp ult i32 %845, %848
  br i1 %849, label %850, label %898

; <label>:850                                     ; preds = %814
  %851 = fcmp fast ogt float %47, 9.843750e-01
  %852 = fadd fast float %48, -4.000000e+00
  %853 = select i1 %851, float -4.000000e+00, float %852
  %854 = call float @dx.op.binary.f32(i32 35, float %853, float 0.000000e+00)  ; FMax(a,b)
  %855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %856 = extractvalue %dx.types.CBufRet.f32 %855, 0
  %857 = fadd fast float %856, %854
  %858 = extractvalue %dx.types.CBufRet.f32 %855, 2
  %859 = fmul fast float %857, %858
  %860 = call float @dx.op.unary.f32(i32 23, float %859)  ; Log(value)
  %861 = extractvalue %dx.types.CBufRet.f32 %855, 3
  %862 = fmul fast float %861, %860
  %863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %864 = extractvalue %dx.types.CBufRet.f32 %863, 2
  %865 = fmul fast float %862, %864
  %866 = call float @dx.op.unary.f32(i32 7, float %865)  ; Saturate(value)
  %867 = uitofp i32 %845 to float
  %868 = uitofp i32 %848 to float
  %869 = fadd fast float %867, 5.000000e-01
  %870 = fadd fast float %868, 5.000000e-01
  %871 = fmul fast float %864, %869
  %872 = fmul fast float %864, %870
  %873 = fadd fast float %871, 0x3F0FFB4800000000
  %874 = fadd fast float %872, 0xBF0FFB4800000000
  %875 = call float @dx.op.binary.f32(i32 35, float %866, float %873)  ; FMax(a,b)
  %876 = call float @dx.op.binary.f32(i32 36, float %875, float %874)  ; FMin(a,b)
  %877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %878 = extractvalue %dx.types.CBufRet.f32 %877, 1
  %879 = extractvalue %dx.types.CBufRet.f32 %877, 2
  %880 = extractvalue %dx.types.CBufRet.f32 %877, 0
  %881 = select i1 %789, float %880, float 0.000000e+00
  %882 = fmul fast float %878, %876
  %883 = fadd fast float %881, %882
  %884 = fadd fast float %881, %879
  %885 = fsub fast float %878, %879
  %886 = fadd fast float %885, %881
  %887 = call float @dx.op.binary.f32(i32 35, float %883, float %884)  ; FMax(a,b)
  %888 = call float @dx.op.binary.f32(i32 36, float %887, float %886)  ; FMin(a,b)
  %889 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %18, float %820, float %821, float %888, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %890 = extractvalue %dx.types.ResRet.f32 %889, 0
  %891 = extractvalue %dx.types.ResRet.f32 %889, 1
  %892 = extractvalue %dx.types.ResRet.f32 %889, 2
  %893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %894 = extractvalue %dx.types.CBufRet.f32 %893, 1
  %895 = fmul fast float %894, %890
  %896 = fmul fast float %894, %891
  %897 = fmul fast float %894, %892
  br label %898

; <label>:898                                     ; preds = %850, %814
  %899 = phi float [ %895, %850 ], [ 1.000000e+00, %814 ]
  %900 = phi float [ %896, %850 ], [ 1.000000e+00, %814 ]
  %901 = phi float [ %897, %850 ], [ 1.000000e+00, %814 ]
  %902 = fmul fast float %899, %796
  %903 = fmul fast float %900, %797
  %904 = fmul fast float %901, %798
  br label %905

; <label>:905                                     ; preds = %898, %764
  %906 = phi float [ %902, %898 ], [ %796, %764 ]
  %907 = phi float [ %903, %898 ], [ %797, %764 ]
  %908 = phi float [ %904, %898 ], [ %798, %764 ]
  %909 = and i32 %131, 2097152
  %910 = icmp eq i32 %909, 0
  br i1 %910, label %915, label %911, !dx.controlflow.hints !68

; <label>:911                                     ; preds = %905
  %912 = add i32 %128, 192
  %913 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %912, i32 undef)  ; BufferLoad(srv,index,wot)
  %914 = extractvalue %dx.types.ResRet.f32 %913, 0
  br label %918

; <label>:915                                     ; preds = %905
  %916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %917 = extractvalue %dx.types.CBufRet.f32 %916, 3
  br label %918

; <label>:918                                     ; preds = %915, %911
  %919 = phi float [ %914, %911 ], [ %917, %915 ]
  %920 = fmul fast float %799, %721
  %921 = fmul fast float %800, %722
  %922 = fmul fast float %801, %723
  br i1 %784, label %923, label %1032

; <label>:923                                     ; preds = %918
  %924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %925 = extractvalue %dx.types.CBufRet.f32 %924, 2
  %926 = extractvalue %dx.types.CBufRet.f32 %924, 3
  %927 = fmul fast float %925, %53
  %928 = fmul fast float %926, %54
  %929 = call float @dx.op.unary.f32(i32 7, float %927)  ; Saturate(value)
  %930 = call float @dx.op.unary.f32(i32 7, float %928)  ; Saturate(value)
  %931 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %929, float %930, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %932 = extractvalue %dx.types.ResRet.f32 %931, 0
  %933 = extractvalue %dx.types.ResRet.f32 %931, 1
  %934 = extractvalue %dx.types.ResRet.f32 %931, 2
  %935 = extractvalue %dx.types.ResRet.f32 %931, 3
  %936 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %929, float %930, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %937 = extractvalue %dx.types.ResRet.f32 %936, 0
  %938 = extractvalue %dx.types.ResRet.f32 %936, 1
  %939 = extractvalue %dx.types.ResRet.f32 %936, 2
  %940 = extractvalue %dx.types.ResRet.f32 %936, 3
  %941 = call float @dx.op.binary.f32(i32 35, float %933, float %934)  ; FMax(a,b)
  %942 = call float @dx.op.binary.f32(i32 35, float %932, float %941)  ; FMax(a,b)
  %943 = call float @dx.op.binary.f32(i32 35, float %942, float %935)  ; FMax(a,b)
  %944 = call float @dx.op.binary.f32(i32 36, float %938, float %939)  ; FMin(a,b)
  %945 = call float @dx.op.binary.f32(i32 36, float %937, float %944)  ; FMin(a,b)
  %946 = call float @dx.op.binary.f32(i32 36, float %945, float %940)  ; FMin(a,b)
  %947 = fmul fast float %943, 2.550000e+02
  %948 = fadd fast float %947, 0x3F70101020000000
  %949 = fptoui float %948 to i32
  %950 = fmul fast float %946, 2.550000e+02
  %951 = fadd fast float %950, 0x3F70101020000000
  %952 = fptoui float %951 to i32
  %953 = icmp ult i32 %949, %952
  br i1 %953, label %954, label %1005

; <label>:954                                     ; preds = %923
  %955 = fcmp fast ogt float %47, 9.843750e-01
  %956 = fadd fast float %48, -4.000000e+00
  %957 = select i1 %955, float -4.000000e+00, float %956
  %958 = call float @dx.op.binary.f32(i32 35, float %957, float 0.000000e+00)  ; FMax(a,b)
  %959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %960 = extractvalue %dx.types.CBufRet.f32 %959, 0
  %961 = fadd fast float %960, %958
  %962 = extractvalue %dx.types.CBufRet.f32 %959, 2
  %963 = fmul fast float %961, %962
  %964 = call float @dx.op.unary.f32(i32 23, float %963)  ; Log(value)
  %965 = extractvalue %dx.types.CBufRet.f32 %959, 3
  %966 = fmul fast float %965, %964
  %967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %968 = extractvalue %dx.types.CBufRet.f32 %967, 2
  %969 = fmul fast float %966, %968
  %970 = call float @dx.op.unary.f32(i32 7, float %969)  ; Saturate(value)
  %971 = uitofp i32 %949 to float
  %972 = uitofp i32 %952 to float
  %973 = fadd fast float %971, 5.000000e-01
  %974 = fadd fast float %972, 5.000000e-01
  %975 = fmul fast float %968, %973
  %976 = fmul fast float %968, %974
  %977 = fadd fast float %975, 0x3F0FFB4800000000
  %978 = fadd fast float %976, 0xBF0FFB4800000000
  %979 = call float @dx.op.binary.f32(i32 35, float %970, float %977)  ; FMax(a,b)
  %980 = call float @dx.op.binary.f32(i32 36, float %979, float %978)  ; FMin(a,b)
  %981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %982 = extractvalue %dx.types.CBufRet.f32 %981, 1
  %983 = extractvalue %dx.types.CBufRet.f32 %981, 2
  %984 = extractvalue %dx.types.CBufRet.f32 %981, 0
  %985 = fmul fast float %982, %980
  %986 = fadd fast float %984, %985
  %987 = fadd fast float %984, %983
  %988 = fsub fast float %982, %983
  %989 = fadd fast float %988, %984
  %990 = call float @dx.op.binary.f32(i32 35, float %986, float %987)  ; FMax(a,b)
  %991 = call float @dx.op.binary.f32(i32 36, float %990, float %989)  ; FMin(a,b)
  %992 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %929, float %930, float %991, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %993 = extractvalue %dx.types.ResRet.f32 %992, 0
  %994 = extractvalue %dx.types.ResRet.f32 %992, 1
  %995 = extractvalue %dx.types.ResRet.f32 %992, 2
  %996 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %929, float %930, float %991, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %997 = extractvalue %dx.types.ResRet.f32 %996, 0
  %998 = extractvalue %dx.types.ResRet.f32 %996, 1
  %999 = extractvalue %dx.types.ResRet.f32 %996, 2
  %1000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1001 = extractvalue %dx.types.CBufRet.f32 %1000, 1
  %1002 = fmul fast float %1001, %997
  %1003 = fmul fast float %1001, %998
  %1004 = fmul fast float %1001, %999
  br label %1005

; <label>:1005                                    ; preds = %954, %923
  %1006 = phi float [ %993, %954 ], [ 1.000000e+00, %923 ]
  %1007 = phi float [ %994, %954 ], [ 1.000000e+00, %923 ]
  %1008 = phi float [ %995, %954 ], [ 1.000000e+00, %923 ]
  %1009 = phi float [ %1002, %954 ], [ 0.000000e+00, %923 ]
  %1010 = phi float [ %1003, %954 ], [ 0.000000e+00, %923 ]
  %1011 = phi float [ %1004, %954 ], [ 0.000000e+00, %923 ]
  %1012 = fmul fast float %1009, %804
  %1013 = fmul fast float %1010, %804
  %1014 = fmul fast float %1011, %804
  %1015 = call float @dx.op.dot3.f32(i32 55, float %1006, float %1007, float %1008, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1016 = call float @dx.op.dot3.f32(i32 55, float %1012, float %1013, float %1014, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1017 = select i1 %111, float %1015, float %1006
  %1018 = select i1 %111, float %1015, float %1007
  %1019 = select i1 %111, float 1.000000e+00, float %1008
  %1020 = select i1 %111, float %1016, float %1012
  %1021 = select i1 %111, float 0.000000e+00, float %1013
  %1022 = select i1 %111, float 0.000000e+00, float %1014
  %1023 = fmul fast float %1017, %920
  %1024 = fmul fast float %1018, %921
  %1025 = fmul fast float %1019, %922
  %1026 = fadd fast float %1023, %1020
  %1027 = fadd fast float %1024, %1021
  %1028 = fadd fast float %1022, %1025
  %1029 = fmul fast float %1017, %906
  %1030 = fmul fast float %1018, %907
  %1031 = fmul fast float %1019, %908
  br label %1032

; <label>:1032                                    ; preds = %1005, %918
  %1033 = phi float [ %781, %1005 ], [ %48, %918 ]
  %1034 = phi float [ %1026, %1005 ], [ %920, %918 ]
  %1035 = phi float [ %1027, %1005 ], [ %921, %918 ]
  %1036 = phi float [ %1028, %1005 ], [ %922, %918 ]
  %1037 = phi float [ %1029, %1005 ], [ %906, %918 ]
  %1038 = phi float [ %1030, %1005 ], [ %907, %918 ]
  %1039 = phi float [ %1031, %1005 ], [ %908, %918 ]
  %1040 = phi float [ %1006, %1005 ], [ 1.000000e+00, %918 ]
  br i1 %789, label %1342, label %1041

; <label>:1041                                    ; preds = %1032
  %1042 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %19, float %33, float %34, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1043 = extractvalue %dx.types.ResRet.f32 %1042, 0
  %1044 = extractvalue %dx.types.ResRet.f32 %1042, 1
  %1045 = extractvalue %dx.types.ResRet.f32 %1042, 2
  %1046 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %19, float %33, float %34, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1047 = extractvalue %dx.types.ResRet.f32 %1046, 0
  %1048 = extractvalue %dx.types.ResRet.f32 %1046, 1
  %1049 = extractvalue %dx.types.ResRet.f32 %1046, 2
  %1050 = fmul fast float %1043, %804
  %1051 = fmul fast float %1044, %804
  %1052 = fmul fast float %1045, %804
  %1053 = fmul fast float %1047, %1040
  %1054 = call float @dx.op.dot3.f32(i32 55, float %1047, float %1048, float %1049, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1055 = call float @dx.op.dot3.f32(i32 55, float %1050, float %1051, float %1052, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1056 = select i1 %111, float %1054, float %1047
  %1057 = select i1 %111, float %1054, float %1048
  %1058 = select i1 %111, float 1.000000e+00, float %1049
  %1059 = select i1 %111, float %1055, float %1050
  %1060 = select i1 %111, float 0.000000e+00, float %1051
  %1061 = select i1 %111, float 0.000000e+00, float %1052
  %1062 = fmul fast float %1056, %1034
  %1063 = fmul fast float %1057, %1035
  %1064 = fmul fast float %1058, %1036
  %1065 = fadd fast float %1062, %1059
  %1066 = fadd fast float %1063, %1060
  %1067 = fadd fast float %1064, %1061
  %1068 = fmul fast float %1056, %1037
  %1069 = fmul fast float %1057, %1038
  %1070 = fmul fast float %1058, %1039
  %1071 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1072 = extractvalue %dx.types.CBufRet.i32 %1071, 0
  %1073 = icmp eq i32 %1072, 0
  br i1 %1073, label %1342, label %1074, !dx.controlflow.hints !69

; <label>:1074                                    ; preds = %1041
  %1075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1076 = extractvalue %dx.types.CBufRet.f32 %1075, 2
  %1077 = extractvalue %dx.types.CBufRet.f32 %1075, 3
  %1078 = fmul fast float %1076, %53
  %1079 = fmul fast float %1077, %54
  %1080 = fmul fast float %1078, 2.000000e+00
  %1081 = fmul fast float %1079, 2.000000e+00
  %1082 = fsub fast float 1.000000e+00, %1080
  %1083 = fsub fast float 1.000000e+00, %1081
  %1084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1085 = extractvalue %dx.types.CBufRet.f32 %1084, 0
  %1086 = extractvalue %dx.types.CBufRet.f32 %1084, 1
  %1087 = extractvalue %dx.types.CBufRet.f32 %1084, 2
  %1088 = fmul fast float %1082, %1085
  %1089 = fmul fast float %1082, %1086
  %1090 = fmul fast float %1082, %1087
  %1091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1092 = extractvalue %dx.types.CBufRet.f32 %1091, 0
  %1093 = extractvalue %dx.types.CBufRet.f32 %1091, 1
  %1094 = extractvalue %dx.types.CBufRet.f32 %1091, 2
  %1095 = fmul fast float %1083, %1092
  %1096 = fmul fast float %1083, %1093
  %1097 = fmul fast float %1083, %1094
  %1098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1099 = extractvalue %dx.types.CBufRet.f32 %1098, 0
  %1100 = extractvalue %dx.types.CBufRet.f32 %1098, 1
  %1101 = extractvalue %dx.types.CBufRet.f32 %1098, 2
  %1102 = fadd fast float %1095, %1099
  %1103 = fadd fast float %1102, %1088
  %1104 = fadd fast float %1096, %1100
  %1105 = fadd fast float %1104, %1089
  %1106 = fadd fast float %1097, %1101
  %1107 = fadd fast float %1106, %1090
  %1108 = fmul fast float %1103, %1033
  %1109 = fmul fast float %1105, %1033
  %1110 = fmul fast float %1107, %1033
  %1111 = fmul fast float %1108, %1108
  %1112 = fmul fast float %1109, %1109
  %1113 = fadd fast float %1111, %1112
  %1114 = fmul fast float %1110, %1110
  %1115 = fadd fast float %1113, %1114
  %1116 = call float @dx.op.unary.f32(i32 24, float %1115)  ; Sqrt(value)
  %1117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1118 = extractvalue %dx.types.CBufRet.f32 %1117, 0
  %1119 = fsub fast float %1116, %1118
  %1120 = extractvalue %dx.types.CBufRet.f32 %1117, 2
  %1121 = fmul fast float %1119, %1120
  %1122 = call float @dx.op.unary.f32(i32 7, float %1121)  ; Saturate(value)
  %1123 = fadd fast float %1122, -5.000000e-01
  %1124 = fmul fast float %1123, 2.000000e+00
  %1125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1126 = extractvalue %dx.types.CBufRet.f32 %1125, 2
  %1127 = call float @dx.op.binary.f32(i32 36, float %1126, float %1124)  ; FMin(a,b)
  %1128 = fsub fast float -0.000000e+00, %1126
  %1129 = fcmp fast ogt float %1127, %1128
  br i1 %1129, label %1130, label %1342, !dx.controlflow.hints !70

; <label>:1130                                    ; preds = %1074
  %1131 = fmul fast float %1127, 5.000000e-01
  %1132 = fadd fast float %1131, 5.000000e-01
  %1133 = call float @dx.op.unary.f32(i32 22, float %1132)  ; Frc(value)
  %1134 = call float @dx.op.unary.f32(i32 27, float %1133)  ; Round_ni(value)
  %1135 = call float @dx.op.unary.f32(i32 22, float %1133)  ; Frc(value)
  %1136 = fmul fast float %1135, 2.000000e+00
  %1137 = fadd fast float %1136, -1.000000e+00
  %1138 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %19, float %1078, float %1079, float %1134, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1139 = extractvalue %dx.types.ResRet.f32 %1138, 0
  %1140 = extractvalue %dx.types.ResRet.f32 %1138, 1
  %1141 = extractvalue %dx.types.ResRet.f32 %1138, 2
  %1142 = extractvalue %dx.types.ResRet.f32 %1138, 3
  %1143 = fadd fast float %1139, -5.000000e-01
  %1144 = fadd fast float %1141, -5.000000e-01
  %1145 = fmul fast float %1143, 0xBFD5555560000000
  %1146 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1144, float %1145)  ; FMad(a,b,c)
  %1147 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1140, float 0.000000e+00)  ; FMad(a,b,c)
  %1148 = fadd fast float %1147, %1142
  %1149 = fmul fast float %1143, -7.500000e-01
  %1150 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1144, float %1149)  ; FMad(a,b,c)
  %1151 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1140, float 0.000000e+00)  ; FMad(a,b,c)
  %1152 = fadd fast float %1151, %1142
  %1153 = call float @dx.op.binary.f32(i32 35, float %1146, float -1.000000e+00)  ; FMax(a,b)
  %1154 = call float @dx.op.binary.f32(i32 35, float %1148, float -1.000000e+00)  ; FMax(a,b)
  %1155 = call float @dx.op.binary.f32(i32 35, float %1150, float -1.000000e+00)  ; FMax(a,b)
  %1156 = call float @dx.op.binary.f32(i32 35, float %1152, float -1.000000e+00)  ; FMax(a,b)
  %1157 = call float @dx.op.binary.f32(i32 36, float %1153, float 1.000000e+00)  ; FMin(a,b)
  %1158 = call float @dx.op.binary.f32(i32 36, float %1154, float 1.000000e+00)  ; FMin(a,b)
  %1159 = call float @dx.op.binary.f32(i32 36, float %1155, float 1.000000e+00)  ; FMin(a,b)
  %1160 = call float @dx.op.binary.f32(i32 36, float %1156, float 1.000000e+00)  ; FMin(a,b)
  %1161 = fcmp fast olt float %1157, 0x3FEFFF8020000000
  br i1 %1161, label %1162, label %1277, !dx.controlflow.hints !71

; <label>:1162                                    ; preds = %1130
  %1163 = extractvalue %dx.types.CBufRet.f32 %1125, 3
  %1164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1165 = extractvalue %dx.types.CBufRet.f32 %1164, 0
  %1166 = extractvalue %dx.types.CBufRet.f32 %1164, 1
  %1167 = extractvalue %dx.types.CBufRet.f32 %1164, 2
  %1168 = extractvalue %dx.types.CBufRet.f32 %1164, 3
  %1169 = fsub fast float %1165, %1157
  %1170 = fsub fast float %1166, %1158
  %1171 = fsub fast float %1167, %1159
  %1172 = fsub fast float %1168, %1160
  %1173 = fmul fast float %1169, %1163
  %1174 = fmul fast float %1170, %1163
  %1175 = fmul fast float %1171, %1163
  %1176 = fmul fast float %1172, %1163
  %1177 = fadd fast float %1173, %1157
  %1178 = fadd fast float %1174, %1158
  %1179 = fsub fast float -0.000000e+00, %1178
  %1180 = fadd fast float %1175, %1159
  %1181 = fadd fast float %1176, %1160
  %1182 = fmul fast float %1177, %1177
  %1183 = fsub fast float %1178, %1182
  %1184 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1183)  ; FMax(a,b)
  %1185 = fdiv fast float 1.000000e+00, %1184
  %1186 = fmul fast float %1178, %1177
  %1187 = fsub fast float %1180, %1186
  %1188 = fsub fast float %1137, %1177
  %1189 = fmul fast float %1137, %1137
  %1190 = fsub fast float %1189, %1178
  %1191 = fmul fast float %1188, %1185
  %1192 = fmul fast float %1191, %1187
  %1193 = fsub fast float %1190, %1192
  %1194 = fmul fast float %1178, %1178
  %1195 = fsub fast float %1181, %1194
  %1196 = fmul fast float %1187, %1187
  %1197 = fmul fast float %1196, %1185
  %1198 = fsub fast float %1195, %1197
  %1199 = fdiv fast float %1193, %1198
  %1200 = fmul fast float %1187, %1199
  %1201 = fsub fast float %1188, %1200
  %1202 = fmul fast float %1201, %1185
  %1203 = fmul fast float %1202, %1177
  %1204 = fsub fast float 1.000000e+00, %1203
  %1205 = fmul fast float %1178, %1199
  %1206 = fsub fast float %1204, %1205
  %1207 = fmul fast float %1202, %1202
  %1208 = fmul fast float %1199, 4.000000e+00
  %1209 = fmul fast float %1208, %1206
  %1210 = fsub fast float %1207, %1209
  %1211 = call float @dx.op.unary.f32(i32 24, float %1210)  ; Sqrt(value)
  %1212 = fcmp fast oge float %1202, 0.000000e+00
  %1213 = fsub fast float -0.000000e+00, %1211
  %1214 = select i1 %1212, float %1213, float %1211
  %1215 = fsub fast float %1214, %1202
  %1216 = fdiv fast float %1215, %1199
  %1217 = fdiv fast float %1206, %1215
  %1218 = fmul fast float %1216, 5.000000e-01
  %1219 = fmul fast float %1217, 2.000000e+00
  %1220 = select i1 %1212, float %1218, float %1219
  %1221 = select i1 %1212, float %1219, float %1218
  %1222 = call float @dx.op.binary.f32(i32 35, float %1220, float %1221)  ; FMax(a,b)
  %1223 = call float @dx.op.binary.f32(i32 36, float %1220, float %1221)  ; FMin(a,b)
  %1224 = fcmp fast ogt float %1137, %1223
  br i1 %1224, label %1225, label %1235

; <label>:1225                                    ; preds = %1162
  %1226 = fsub fast float %1137, %1223
  %1227 = fsub fast float %1222, %1223
  %1228 = fmul fast float %1226, %1227
  %1229 = fmul fast float %1222, %1137
  %1230 = fadd fast float %1222, %1137
  %1231 = fmul fast float %1230, %1177
  %1232 = fadd fast float %1229, %1178
  %1233 = fsub fast float %1232, %1231
  %1234 = fdiv fast float %1233, %1228
  br label %1235

; <label>:1235                                    ; preds = %1225, %1162
  %1236 = phi float [ %1234, %1225 ], [ 0.000000e+00, %1162 ]
  %1237 = fcmp fast ogt float %1137, %1222
  %1238 = fsub fast float %1137, %1222
  br i1 %1237, label %1239, label %1249

; <label>:1239                                    ; preds = %1235
  %1240 = fsub fast float %1222, %1223
  %1241 = fmul fast float %1240, %1238
  %1242 = fmul fast float %1223, %1137
  %1243 = fadd fast float %1223, %1137
  %1244 = fmul fast float %1243, %1177
  %1245 = fsub fast float %1179, %1242
  %1246 = fadd fast float %1245, %1244
  %1247 = fdiv fast float %1246, %1241
  %1248 = fadd fast float %1247, %1236
  br label %1249

; <label>:1249                                    ; preds = %1239, %1235
  %1250 = phi float [ %1248, %1239 ], [ %1236, %1235 ]
  %1251 = fsub fast float %1137, %1223
  %1252 = fmul fast float %1251, %1238
  %1253 = fmul fast float %1223, %1222
  %1254 = fadd fast float %1223, %1222
  %1255 = fmul fast float %1254, %1177
  %1256 = fadd fast float %1253, %1178
  %1257 = fsub fast float %1256, %1255
  %1258 = fdiv fast float %1257, %1252
  %1259 = call float @dx.op.unary.f32(i32 7, float %1250)  ; Saturate(value)
  %1260 = fcmp fast oeq float %919, 0.000000e+00
  %1261 = extractvalue %dx.types.CBufRet.f32 %1125, 0
  %1262 = fcmp fast oeq float %1261, 0.000000e+00
  %1263 = or i1 %1260, %1262
  %1264 = fmul fast float %1261, 2.000000e+00
  %1265 = fadd fast float %1126, %1127
  %1266 = fdiv fast float %1265, %1264
  %1267 = call float @dx.op.unary.f32(i32 7, float %1266)  ; Saturate(value)
  %1268 = fmul fast float %1267, 2.000000e+00
  %1269 = fsub fast float 3.000000e+00, %1268
  %1270 = fmul fast float %1267, %1267
  %1271 = fmul fast float %1270, %1269
  %1272 = select i1 %1263, float 1.000000e+00, float %1271
  %1273 = fmul fast float %1258, %919
  %1274 = fadd fast float %1259, %1273
  %1275 = call float @dx.op.unary.f32(i32 7, float %1274)  ; Saturate(value)
  %1276 = fmul fast float %1272, %1275
  br label %1277

; <label>:1277                                    ; preds = %1249, %1130
  %1278 = phi float [ %1276, %1249 ], [ 0.000000e+00, %1130 ]
  %1279 = fsub fast float 1.000000e+00, %1278
  %1280 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %19, float %1078, float %1079, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1281 = extractvalue %dx.types.ResRet.f32 %1280, 0
  %1282 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1283 = extractvalue %dx.types.CBufRet.i32 %1282, 2
  %1284 = icmp eq i32 %1283, 0
  br i1 %1284, label %1290, label %1285

; <label>:1285                                    ; preds = %1277
  %1286 = call float @dx.op.unary.f32(i32 7, float %1278)  ; Saturate(value)
  %1287 = fadd fast float %1281, -1.000000e+00
  %1288 = fmul fast float %1286, %1287
  %1289 = fadd fast float %1288, 1.000000e+00
  br label %1290

; <label>:1290                                    ; preds = %1285, %1277
  %1291 = phi float [ %1289, %1285 ], [ %1279, %1277 ]
  %1292 = call float @dx.op.binary.f32(i32 35, float %1281, float %1291)  ; FMax(a,b)
  %1293 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %1294 = extractvalue %dx.types.CBufRet.i32 %1293, 2
  %1295 = and i32 %1294, 1
  %1296 = icmp eq i32 %1295, 0
  %1297 = fcmp fast une float %1292, 1.000000e+00
  %1298 = and i1 %1297, %1296
  br i1 %1298, label %1299, label %1318

; <label>:1299                                    ; preds = %1290
  %1300 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %19, float %1078, float %1079, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1301 = extractvalue %dx.types.ResRet.f32 %1300, 0
  %1302 = extractvalue %dx.types.ResRet.f32 %1300, 1
  %1303 = extractvalue %dx.types.ResRet.f32 %1300, 2
  %1304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1305 = extractvalue %dx.types.CBufRet.f32 %1304, 1
  %1306 = fmul fast float %1305, %1301
  %1307 = fmul fast float %1305, %1302
  %1308 = fmul fast float %1305, %1303
  %1309 = fcmp fast ogt float %1281, 0x3FEFFF2E40000000
  %1310 = fsub fast float 1.000000e+00, %1292
  %1311 = fsub fast float 1.000000e+00, %1281
  %1312 = fdiv fast float %1310, %1311
  %1313 = call float @dx.op.unary.f32(i32 7, float %1312)  ; Saturate(value)
  %1314 = select i1 %1309, float 0.000000e+00, float %1313
  %1315 = fmul fast float %1306, %1314
  %1316 = fmul fast float %1307, %1314
  %1317 = fmul fast float %1308, %1314
  br label %1318

; <label>:1318                                    ; preds = %1299, %1290
  %1319 = phi float [ 0.000000e+00, %1290 ], [ %1315, %1299 ]
  %1320 = phi float [ 0.000000e+00, %1290 ], [ %1316, %1299 ]
  %1321 = phi float [ 0.000000e+00, %1290 ], [ %1317, %1299 ]
  %1322 = fmul fast float %1319, %804
  %1323 = fmul fast float %1320, %804
  %1324 = fmul fast float %1321, %804
  %1325 = fmul fast float %1292, %1053
  %1326 = call float @dx.op.dot3.f32(i32 55, float %1292, float %1292, float %1292, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1327 = call float @dx.op.dot3.f32(i32 55, float %1322, float %1323, float %1324, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1328 = select i1 %111, float %1326, float %1292
  %1329 = select i1 %111, float 1.000000e+00, float %1292
  %1330 = select i1 %111, float %1327, float %1322
  %1331 = select i1 %111, float 0.000000e+00, float %1323
  %1332 = select i1 %111, float 0.000000e+00, float %1324
  %1333 = fmul fast float %1328, %1065
  %1334 = fmul fast float %1328, %1066
  %1335 = fmul fast float %1329, %1067
  %1336 = fadd fast float %1333, %1330
  %1337 = fadd fast float %1334, %1331
  %1338 = fadd fast float %1332, %1335
  %1339 = fmul fast float %1328, %1068
  %1340 = fmul fast float %1328, %1069
  %1341 = fmul fast float %1329, %1070
  br label %1342

; <label>:1342                                    ; preds = %1318, %1074, %1041, %1032
  %1343 = phi float [ %1034, %1032 ], [ %1065, %1041 ], [ %1336, %1318 ], [ %1065, %1074 ]
  %1344 = phi float [ %1035, %1032 ], [ %1066, %1041 ], [ %1337, %1318 ], [ %1066, %1074 ]
  %1345 = phi float [ %1036, %1032 ], [ %1067, %1041 ], [ %1338, %1318 ], [ %1067, %1074 ]
  %1346 = phi float [ %1037, %1032 ], [ %1068, %1041 ], [ %1339, %1318 ], [ %1068, %1074 ]
  %1347 = phi float [ %1038, %1032 ], [ %1069, %1041 ], [ %1340, %1318 ], [ %1069, %1074 ]
  %1348 = phi float [ %1039, %1032 ], [ %1070, %1041 ], [ %1341, %1318 ], [ %1070, %1074 ]
  %1349 = phi float [ %1040, %1032 ], [ %1053, %1041 ], [ %1325, %1318 ], [ %1053, %1074 ]
  %1350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1351 = extractvalue %dx.types.CBufRet.f32 %1350, 2
  %1352 = extractvalue %dx.types.CBufRet.f32 %1350, 3
  %1353 = fmul fast float %1351, %53
  %1354 = fmul fast float %1352, %54
  %1355 = call float @dx.op.unary.f32(i32 7, float %1353)  ; Saturate(value)
  %1356 = call float @dx.op.unary.f32(i32 7, float %1354)  ; Saturate(value)
  %1357 = select i1 %789, i32 2, i32 0
  %1358 = or i32 %1357, 1
  %1359 = uitofp i32 %1358 to float
  %1360 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %1355, float %1356, float %1359, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1361 = extractvalue %dx.types.ResRet.f32 %1360, 0
  %1362 = extractvalue %dx.types.ResRet.f32 %1360, 1
  %1363 = extractvalue %dx.types.ResRet.f32 %1360, 2
  %1364 = extractvalue %dx.types.ResRet.f32 %1360, 3
  %1365 = add nuw nsw i32 %1357, 2
  %1366 = uitofp i32 %1365 to float
  %1367 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %1355, float %1356, float %1366, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1368 = extractvalue %dx.types.ResRet.f32 %1367, 0
  %1369 = extractvalue %dx.types.ResRet.f32 %1367, 1
  %1370 = extractvalue %dx.types.ResRet.f32 %1367, 2
  %1371 = extractvalue %dx.types.ResRet.f32 %1367, 3
  %1372 = call float @dx.op.binary.f32(i32 35, float %1362, float %1363)  ; FMax(a,b)
  %1373 = call float @dx.op.binary.f32(i32 35, float %1361, float %1372)  ; FMax(a,b)
  %1374 = call float @dx.op.binary.f32(i32 35, float %1373, float %1364)  ; FMax(a,b)
  %1375 = call float @dx.op.binary.f32(i32 36, float %1369, float %1370)  ; FMin(a,b)
  %1376 = call float @dx.op.binary.f32(i32 36, float %1368, float %1375)  ; FMin(a,b)
  %1377 = call float @dx.op.binary.f32(i32 36, float %1376, float %1371)  ; FMin(a,b)
  %1378 = fmul fast float %1374, 2.550000e+02
  %1379 = fadd fast float %1378, 0x3F70101020000000
  %1380 = fptoui float %1379 to i32
  %1381 = fmul fast float %1377, 2.550000e+02
  %1382 = fadd fast float %1381, 0x3F70101020000000
  %1383 = fptoui float %1382 to i32
  %1384 = icmp ult i32 %1380, %1383
  br i1 %1384, label %1385, label %1437

; <label>:1385                                    ; preds = %1342
  %1386 = fcmp fast ogt float %47, 9.843750e-01
  %1387 = fadd fast float %1033, -4.000000e+00
  %1388 = select i1 %1386, float -4.000000e+00, float %1387
  %1389 = call float @dx.op.binary.f32(i32 35, float %1388, float 0.000000e+00)  ; FMax(a,b)
  %1390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1391 = extractvalue %dx.types.CBufRet.f32 %1390, 0
  %1392 = fadd fast float %1391, %1389
  %1393 = extractvalue %dx.types.CBufRet.f32 %1390, 2
  %1394 = fmul fast float %1392, %1393
  %1395 = call float @dx.op.unary.f32(i32 23, float %1394)  ; Log(value)
  %1396 = extractvalue %dx.types.CBufRet.f32 %1390, 3
  %1397 = fmul fast float %1396, %1395
  %1398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1399 = extractvalue %dx.types.CBufRet.f32 %1398, 2
  %1400 = fmul fast float %1397, %1399
  %1401 = call float @dx.op.unary.f32(i32 7, float %1400)  ; Saturate(value)
  %1402 = uitofp i32 %1380 to float
  %1403 = uitofp i32 %1383 to float
  %1404 = fadd fast float %1402, 5.000000e-01
  %1405 = fadd fast float %1403, 5.000000e-01
  %1406 = fmul fast float %1399, %1404
  %1407 = fmul fast float %1399, %1405
  %1408 = fadd fast float %1406, 0x3F0FFB4800000000
  %1409 = fadd fast float %1407, 0xBF0FFB4800000000
  %1410 = call float @dx.op.binary.f32(i32 35, float %1401, float %1408)  ; FMax(a,b)
  %1411 = call float @dx.op.binary.f32(i32 36, float %1410, float %1409)  ; FMin(a,b)
  %1412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1413 = extractvalue %dx.types.CBufRet.f32 %1412, 1
  %1414 = extractvalue %dx.types.CBufRet.f32 %1412, 2
  %1415 = extractvalue %dx.types.CBufRet.f32 %1412, 0
  %1416 = select i1 %789, float %1415, float 0.000000e+00
  %1417 = fmul fast float %1413, %1411
  %1418 = fadd fast float %1416, %1417
  %1419 = fadd fast float %1416, %1414
  %1420 = fsub fast float %1413, %1414
  %1421 = fadd fast float %1420, %1416
  %1422 = call float @dx.op.binary.f32(i32 35, float %1418, float %1419)  ; FMax(a,b)
  %1423 = call float @dx.op.binary.f32(i32 36, float %1422, float %1421)  ; FMin(a,b)
  %1424 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %1355, float %1356, float %1423, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1425 = extractvalue %dx.types.ResRet.f32 %1424, 0
  %1426 = extractvalue %dx.types.ResRet.f32 %1424, 1
  %1427 = extractvalue %dx.types.ResRet.f32 %1424, 2
  %1428 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %1355, float %1356, float %1423, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1429 = extractvalue %dx.types.ResRet.f32 %1428, 0
  %1430 = extractvalue %dx.types.ResRet.f32 %1428, 1
  %1431 = extractvalue %dx.types.ResRet.f32 %1428, 2
  %1432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1433 = extractvalue %dx.types.CBufRet.f32 %1432, 1
  %1434 = fmul fast float %1433, %1429
  %1435 = fmul fast float %1433, %1430
  %1436 = fmul fast float %1433, %1431
  br label %1437

; <label>:1437                                    ; preds = %1385, %1342
  %1438 = phi float [ %1425, %1385 ], [ 1.000000e+00, %1342 ]
  %1439 = phi float [ %1426, %1385 ], [ 1.000000e+00, %1342 ]
  %1440 = phi float [ %1427, %1385 ], [ 1.000000e+00, %1342 ]
  %1441 = phi float [ %1434, %1385 ], [ 0.000000e+00, %1342 ]
  %1442 = phi float [ %1435, %1385 ], [ 0.000000e+00, %1342 ]
  %1443 = phi float [ %1436, %1385 ], [ 0.000000e+00, %1342 ]
  %1444 = fmul fast float %1441, %804
  %1445 = fmul fast float %1442, %804
  %1446 = fmul fast float %1443, %804
  %1447 = fmul fast float %1438, %1349
  %1448 = call float @dx.op.dot3.f32(i32 55, float %1438, float %1439, float %1440, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1449 = call float @dx.op.dot3.f32(i32 55, float %1444, float %1445, float %1446, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1450 = select i1 %111, float %1448, float %1438
  %1451 = select i1 %111, float %1448, float %1439
  %1452 = select i1 %111, float 1.000000e+00, float %1440
  %1453 = select i1 %111, float %1449, float %1444
  %1454 = select i1 %111, float 0.000000e+00, float %1445
  %1455 = select i1 %111, float 0.000000e+00, float %1446
  %1456 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1457 = extractvalue %dx.types.CBufRet.i32 %1456, 3
  %1458 = and i32 %1457, 3
  %1459 = icmp ne i32 %1458, 0
  %1460 = and i32 %1457, 4
  %1461 = icmp ne i32 %1460, 0
  %1462 = and i1 %1459, %1461
  %1463 = and i1 %111, %1462
  br i1 %1463, label %1464, label %1470

; <label>:1464                                    ; preds = %1437
  %1465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1466 = extractvalue %dx.types.CBufRet.f32 %1465, 1
  %1467 = fadd fast float %1447, -1.000000e+00
  %1468 = fmul fast float %1466, %1467
  %1469 = fadd fast float %1468, 1.000000e+00
  br label %1470

; <label>:1470                                    ; preds = %1464, %1437
  %1471 = phi float [ %1469, %1464 ], [ %1447, %1437 ]
  %1472 = fadd fast float %1346, %1343
  %1473 = fmul fast float %1450, %1472
  %1474 = fadd fast float %1473, %1453
  %1475 = fadd fast float %1347, %1344
  %1476 = fmul fast float %1451, %1475
  %1477 = fadd fast float %1476, %1454
  %1478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1479 = extractvalue %dx.types.CBufRet.f32 %1478, 0
  br i1 %111, label %1480, label %1501

; <label>:1480                                    ; preds = %1470
  %1481 = fadd fast float %1474, %1477
  %1482 = fmul fast float %1479, %1481
  %1483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1484 = extractvalue %dx.types.CBufRet.f32 %1483, 3
  %1485 = extractvalue %dx.types.CBufRet.f32 %808, 1
  %1486 = fsub fast float %811, %1485
  %1487 = extractvalue %dx.types.CBufRet.f32 %808, 2
  %1488 = fmul fast float %1486, %1487
  %1489 = call float @dx.op.unary.f32(i32 7, float %1488)  ; Saturate(value)
  %1490 = fsub fast float %1489, %1484
  %1491 = fmul fast float %1490, %1471
  %1492 = fadd fast float %1491, %1484
  %1493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1494 = extractvalue %dx.types.CBufRet.f32 %1493, 0
  %1495 = fsub fast float %1492, %1494
  %1496 = fmul fast float %1495, 1.000000e+01
  %1497 = call float @dx.op.unary.f32(i32 7, float %1496)  ; Saturate(value)
  %1498 = fmul fast float %1497, %804
  %1499 = fsub fast float %804, %1498
  %1500 = fmul fast float %1499, %1492
  br label %1513

; <label>:1501                                    ; preds = %1470
  %1502 = fadd fast float %1348, %1345
  %1503 = fmul fast float %1452, %1502
  %1504 = fadd fast float %1503, %1455
  %1505 = fmul fast float %1479, %1474
  %1506 = fmul fast float %1479, %1477
  %1507 = fmul fast float %1479, %1504
  %1508 = call float @dx.op.binary.f32(i32 35, float %1506, float %1507)  ; FMax(a,b)
  %1509 = call float @dx.op.binary.f32(i32 35, float %1505, float %1508)  ; FMax(a,b)
  %1510 = call float @dx.op.binary.f32(i32 35, float %1509, float %804)  ; FMax(a,b)
  %1511 = fcmp fast ugt float %1510, 0x3F10000000000000
  br i1 %1511, label %1513, label %1512

; <label>:1512                                    ; preds = %1501
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1513

; <label>:1513                                    ; preds = %1512, %1501, %1480
  %1514 = phi float [ %1482, %1480 ], [ %1505, %1512 ], [ %1505, %1501 ]
  %1515 = phi float [ %1500, %1480 ], [ %1506, %1512 ], [ %1506, %1501 ]
  %1516 = phi float [ %1499, %1480 ], [ %1507, %1512 ], [ %1507, %1501 ]
  %1517 = phi float [ %1499, %1480 ], [ %804, %1512 ], [ %804, %1501 ]
  %1518 = fadd fast float %553, 0x3FE3C6EF40000000
  %1519 = call float @dx.op.unary.f32(i32 22, float %1518)  ; Frc(value)
  %1520 = call float @dx.op.unary.f32(i32 23, float %1514)  ; Log(value)
  %1521 = fadd fast float %1520, -7.000000e+00
  %1522 = call float @dx.op.unary.f32(i32 21, float %1521)  ; Exp(value)
  %1523 = fmul fast float %1519, 2.000000e+00
  %1524 = fadd fast float %1523, -1.000000e+00
  %1525 = fmul fast float %1522, %1524
  %1526 = fcmp fast ogt float %1514, 0.000000e+00
  %1527 = select i1 %1526, float %1525, float 0.000000e+00
  %1528 = fadd fast float %1527, %1514
  %1529 = fadd fast float %553, 0x3FF3C6EF40000000
  %1530 = call float @dx.op.unary.f32(i32 22, float %1529)  ; Frc(value)
  %1531 = call float @dx.op.unary.f32(i32 23, float %1515)  ; Log(value)
  %1532 = fadd fast float %1531, -7.000000e+00
  %1533 = call float @dx.op.unary.f32(i32 21, float %1532)  ; Exp(value)
  %1534 = fmul fast float %1530, 2.000000e+00
  %1535 = fadd fast float %1534, -1.000000e+00
  %1536 = fmul fast float %1533, %1535
  %1537 = fcmp fast ogt float %1515, 0.000000e+00
  %1538 = select i1 %1537, float %1536, float 0.000000e+00
  %1539 = fadd fast float %1538, %1515
  %1540 = fadd fast float %553, 0x3FFDAA66E0000000
  %1541 = call float @dx.op.unary.f32(i32 22, float %1540)  ; Frc(value)
  %1542 = call float @dx.op.unary.f32(i32 23, float %1516)  ; Log(value)
  %1543 = fadd fast float %1542, -6.000000e+00
  %1544 = call float @dx.op.unary.f32(i32 21, float %1543)  ; Exp(value)
  %1545 = fmul fast float %1541, 2.000000e+00
  %1546 = fadd fast float %1545, -1.000000e+00
  %1547 = fmul fast float %1544, %1546
  %1548 = fcmp fast ogt float %1516, 0.000000e+00
  %1549 = select i1 %1548, float %1547, float 0.000000e+00
  %1550 = fadd fast float %1549, %1516
  %1551 = select i1 %111, float %1515, float %1539
  %1552 = select i1 %111, float %1516, float %1550
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1553 = call float @dx.op.binary.f32(i32 36, float %1528, float 3.225500e+04)  ; FMin(a,b)
  %1554 = call float @dx.op.binary.f32(i32 36, float %1551, float 3.225500e+04)  ; FMin(a,b)
  %1555 = call float @dx.op.binary.f32(i32 36, float %1552, float 3.225500e+04)  ; FMin(a,b)
  %1556 = call float @dx.op.binary.f32(i32 36, float %1517, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1553)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1554)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1555)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1556)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1517)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1517)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1517)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1517)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

