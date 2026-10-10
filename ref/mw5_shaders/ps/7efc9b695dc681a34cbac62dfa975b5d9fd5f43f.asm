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
; shader hash: cc77a6d0a35ba5f629c02e0cac1075ef
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
;                                   texture     f32          3d      T9     t45,space2     1
;                                   texture     f32     2darray     T10     t47,space2     1
;                                   textureunorm_f32     2darray     T11     t85,space2     1
;                                   texture     f32          2d     T12     t83,space2     1
;                                   texture     f32     2darray     T13             t1     1
;                                   texture    byte         r/o     T14             t2     1
;                                   texture     f32          3d     T15     t46,space2     1
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
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 8, 9, 12, 13, 14, 16, 17, 24, 25, 26, 27, 28, 30 }
;   output 4 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 8, 9, 12, 13, 14, 16, 17, 24, 25, 26, 27, 28, 30 }
;   output 5 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 8, 9, 12, 13, 14, 16, 17, 24, 25, 26, 27, 28, 30 }
;   output 6 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 8, 9, 12, 13, 14, 16, 17, 24, 25, 26, 27, 28, 30 }
;   output 7 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 8, 9, 12, 13, 14, 16, 17, 24, 25, 26, 27, 28, 30 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 77, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %49 = extractvalue %dx.types.CBufRet.f32 %48, 0
  %50 = fmul fast float %49, %43
  %51 = fmul fast float %49, %44
  %52 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %53 = extractvalue %dx.types.CBufRet.f32 %52, 2
  %54 = extractvalue %dx.types.CBufRet.f32 %52, 3
  %55 = fmul fast float %50, 2.000000e+00
  %56 = fmul fast float %55, %53
  %57 = fmul fast float %51, 2.000000e+00
  %58 = fmul fast float %57, %54
  %59 = fsub fast float 1.000000e+00, %56
  %60 = fsub fast float 1.000000e+00, %58
  %61 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %62 = extractvalue %dx.types.CBufRet.f32 %61, 0
  %63 = extractvalue %dx.types.CBufRet.f32 %61, 1
  %64 = extractvalue %dx.types.CBufRet.f32 %61, 2
  %65 = fmul fast float %59, %62
  %66 = fmul fast float %59, %63
  %67 = fmul fast float %59, %64
  %68 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %69 = extractvalue %dx.types.CBufRet.f32 %68, 0
  %70 = extractvalue %dx.types.CBufRet.f32 %68, 1
  %71 = extractvalue %dx.types.CBufRet.f32 %68, 2
  %72 = fmul fast float %60, %69
  %73 = fmul fast float %60, %70
  %74 = fmul fast float %60, %71
  %75 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %76 = extractvalue %dx.types.CBufRet.f32 %75, 0
  %77 = extractvalue %dx.types.CBufRet.f32 %75, 1
  %78 = extractvalue %dx.types.CBufRet.f32 %75, 2
  %79 = fadd fast float %72, %76
  %80 = fadd fast float %79, %65
  %81 = fadd fast float %73, %77
  %82 = fadd fast float %81, %66
  %83 = fadd fast float %74, %78
  %84 = fadd fast float %83, %67
  %85 = fmul fast float %80, %46
  %86 = fmul fast float %82, %46
  %87 = fmul fast float %84, %46
  %88 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %89 = extractvalue %dx.types.CBufRet.i32 %88, 3
  %90 = and i32 %89, 3
  %91 = icmp ne i32 %90, 0
  %92 = and i32 %89, 4
  %93 = icmp ne i32 %92, 0
  %94 = and i1 %91, %93
  br i1 %94, label %95, label %104

; <label>:95                                      ; preds = %0
  %96 = fmul fast float %54, %51
  %97 = fmul fast float %53, %50
  %98 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %17, float %97, float %96, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %99 = extractvalue %dx.types.ResRet.f32 %98, 0
  %100 = fsub fast float 1.000000e+00, %99
  %101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %102 = extractvalue %dx.types.CBufRet.f32 %101, 0
  %103 = fcmp fast olt float %100, %102
  br label %107

; <label>:104                                     ; preds = %0
  %105 = icmp eq i32 %92, 0
  %106 = and i1 %91, %105
  br label %107

; <label>:107                                     ; preds = %104, %95
  %108 = phi i1 [ %103, %95 ], [ %106, %104 ]
  %109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %110 = extractvalue %dx.types.CBufRet.f32 %109, 2
  %111 = extractvalue %dx.types.CBufRet.f32 %109, 3
  %112 = fmul fast float %110, %50
  %113 = fmul fast float %111, %51
  %114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %115 = extractvalue %dx.types.ResRet.i32 %114, 0
  %116 = and i32 %115, 114688
  %117 = icmp ne i32 %116, 0
  %118 = select i1 %117, float %112, float 0.000000e+00
  %119 = select i1 %117, float %113, float 0.000000e+00
  %120 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %18, float %118, float %119, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %121 = extractvalue %dx.types.ResRet.f32 %120, 0
  %122 = fmul fast float %121, 2.550000e+02
  %123 = fptoui float %122 to i32
  %124 = select i1 %117, i32 %123, i32 0
  %125 = mul i32 %21, 208
  %126 = add i32 %125, 188
  %127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %126, i32 undef)  ; BufferLoad(srv,index,wot)
  %128 = extractvalue %dx.types.ResRet.i32 %127, 0
  %129 = and i32 %89, 114688
  %130 = and i32 %89, 8
  %131 = icmp ne i32 %130, 0
  %132 = or i1 %108, %131
  %133 = select i1 %132, i32 %129, i32 16384
  %134 = and i32 %133, %128
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %137

; <label>:136                                     ; preds = %107
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %137

; <label>:137                                     ; preds = %136, %107
  %138 = and i32 %128, 512
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %164, label %140

; <label>:140                                     ; preds = %137
  %141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %142 = extractvalue %dx.types.CBufRet.f32 %141, 2
  %143 = extractvalue %dx.types.CBufRet.f32 %141, 3
  %144 = fmul fast float %142, %50
  %145 = fmul fast float %143, %51
  %146 = extractvalue %dx.types.CBufRet.f32 %141, 0
  %147 = extractvalue %dx.types.CBufRet.f32 %141, 1
  %148 = fdiv fast float %146, %147
  %149 = fcmp fast ogt float %148, 0x3FFC71C720000000
  br i1 %149, label %150, label %156

; <label>:150                                     ; preds = %140
  %151 = fdiv fast float 0x3FFC71C720000000, %148
  %152 = fmul fast float %151, %145
  %153 = fsub fast float 1.000000e+00, %151
  %154 = fmul fast float %153, 5.000000e-01
  %155 = fadd fast float %154, %152
  br label %164

; <label>:156                                     ; preds = %140
  %157 = fcmp fast olt float %148, 0x3FFC71C720000000
  br i1 %157, label %158, label %164

; <label>:158                                     ; preds = %156
  %159 = fmul fast float %144, 5.625000e-01
  %160 = fmul fast float %159, %148
  %161 = fmul fast float %148, 2.812500e-01
  %162 = fsub fast float 5.000000e-01, %161
  %163 = fadd fast float %162, %160
  br label %164

; <label>:164                                     ; preds = %158, %156, %150, %137
  %165 = phi float [ %37, %137 ], [ %144, %150 ], [ %163, %158 ], [ %144, %156 ]
  %166 = phi float [ %38, %137 ], [ %155, %150 ], [ %145, %158 ], [ %145, %156 ]
  %167 = add i32 %22, 72
  %168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %167, i32 undef)  ; BufferLoad(srv,index,wot)
  %169 = extractvalue %dx.types.ResRet.i32 %168, 0
  %170 = extractvalue %dx.types.ResRet.i32 %168, 1
  %171 = bitcast i32 %169 to float
  %172 = bitcast i32 %170 to float
  %173 = fmul fast float %171, %37
  %174 = fmul fast float %172, %38
  %175 = call float @dx.op.unary.f32(i32 22, float %173)  ; Frc(value)
  %176 = call float @dx.op.unary.f32(i32 22, float %174)  ; Frc(value)
  %177 = and i32 %128, 16
  %178 = icmp ne i32 %177, 0
  %179 = select i1 %178, float 1.000000e+00, float %42
  %180 = icmp eq i32 %177, 0
  br i1 %180, label %200, label %181, !dx.controlflow.hints !58

; <label>:181                                     ; preds = %164
  %182 = add i32 %125, 64
  %183 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %182, i32 undef)  ; BufferLoad(srv,index,wot)
  %184 = extractvalue %dx.types.ResRet.f32 %183, 0
  %185 = fadd fast float %184, 1.000000e+00
  %186 = fmul fast float %185, %42
  %187 = fsub fast float %186, %184
  %188 = fsub fast float %185, %187
  %189 = call float @dx.op.unary.f32(i32 7, float %188)  ; Saturate(value)
  %190 = fsub fast float 1.000000e+00, %186
  %191 = call float @dx.op.unary.f32(i32 7, float %190)  ; Saturate(value)
  %192 = fsub fast float %189, %191
  %193 = fsub fast float %179, %191
  %194 = fdiv fast float %193, %192
  %195 = call float @dx.op.unary.f32(i32 7, float %194)  ; Saturate(value)
  %196 = fmul fast float %195, 2.000000e+00
  %197 = fsub fast float 3.000000e+00, %196
  %198 = fmul fast float %195, %195
  %199 = fmul fast float %198, %197
  br label %200

; <label>:200                                     ; preds = %181, %164
  %201 = phi float [ %199, %181 ], [ %179, %164 ]
  %202 = fcmp fast ogt float %201, 0.000000e+00
  br i1 %202, label %204, label %203

; <label>:203                                     ; preds = %200
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %204

; <label>:204                                     ; preds = %203, %200
  %205 = call float @dx.op.unary.f32(i32 7, float %201)  ; Saturate(value)
  %206 = fmul fast float %50, 5.000000e-01
  %207 = fmul fast float %51, 5.000000e-01
  %208 = fptosi float %206 to i32
  %209 = fptosi float %207 to i32
  %210 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %8, i32 0, i32 %208, i32 %209, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %211 = extractvalue %dx.types.ResRet.i32 %210, 0
  %212 = lshr i32 %211, 18
  %213 = uitofp i32 %212 to float
  %214 = fmul fast float %213, 0x3F4C00EBA0000000
  %215 = call float @dx.op.unary.f32(i32 21, float %214)  ; Exp(value)
  %216 = fadd fast float %215, -1.000000e+00
  %217 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %8, i32 0)  ; GetDimensions(handle,mipLevel)
  %218 = extractvalue %dx.types.Dimensions %217, 0
  %219 = sitofp i32 %218 to float
  %220 = extractvalue %dx.types.Dimensions %217, 1
  %221 = sitofp i32 %220 to float
  %222 = fcmp fast oge float %206, %219
  %223 = fcmp fast oge float %207, %221
  %224 = or i1 %222, %223
  %225 = select i1 %224, float 0x4197782600000000, float %216
  %226 = fsub fast float %225, %46
  %227 = fcmp fast ogt float %226, 0.000000e+00
  %228 = and i32 %124, -2
  %229 = icmp eq i32 %228, 2
  %230 = and i1 %229, %227
  %231 = xor i1 %227, true
  %232 = icmp eq i32 %124, 1
  %233 = and i1 %232, %231
  %234 = or i1 %230, %233
  %235 = and i32 %128, 262144
  %236 = icmp ne i32 %235, 0
  %237 = and i1 %236, %234
  %238 = xor i1 %234, true
  %239 = and i32 %128, 131072
  %240 = icmp ne i32 %239, 0
  %241 = and i1 %240, %238
  %242 = or i1 %237, %241
  br i1 %242, label %243, label %244

; <label>:243                                     ; preds = %204
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %244

; <label>:244                                     ; preds = %243, %204
  %245 = and i32 %128, 32
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %523, label %247, !dx.controlflow.hints !59

; <label>:247                                     ; preds = %244
  %248 = add i32 %125, 80
  %249 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %248, i32 undef)  ; BufferLoad(srv,index,wot)
  %250 = extractvalue %dx.types.ResRet.f32 %249, 0
  %251 = extractvalue %dx.types.ResRet.f32 %249, 1
  %252 = extractvalue %dx.types.ResRet.f32 %249, 2
  %253 = extractvalue %dx.types.ResRet.f32 %249, 3
  %254 = add i32 %125, 96
  %255 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %254, i32 undef)  ; BufferLoad(srv,index,wot)
  %256 = extractvalue %dx.types.ResRet.f32 %255, 0
  %257 = extractvalue %dx.types.ResRet.f32 %255, 1
  %258 = extractvalue %dx.types.ResRet.f32 %255, 2
  %259 = add i32 %125, 112
  %260 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %259, i32 undef)  ; BufferLoad(srv,index,wot)
  %261 = extractvalue %dx.types.ResRet.f32 %260, 0
  %262 = extractvalue %dx.types.ResRet.f32 %260, 1
  %263 = extractvalue %dx.types.ResRet.f32 %260, 2
  %264 = extractvalue %dx.types.ResRet.f32 %260, 3
  %265 = add i32 %125, 128
  %266 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %265, i32 undef)  ; BufferLoad(srv,index,wot)
  %267 = extractvalue %dx.types.ResRet.f32 %266, 0
  %268 = extractvalue %dx.types.ResRet.f32 %266, 1
  %269 = extractvalue %dx.types.ResRet.f32 %266, 2
  %270 = extractvalue %dx.types.ResRet.f32 %266, 3
  %271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %126, i32 undef)  ; BufferLoad(srv,index,wot)
  %272 = extractvalue %dx.types.ResRet.i32 %271, 0
  %273 = and i32 %272, 4096
  %274 = icmp ne i32 %273, 0
  %275 = fcmp fast une float %258, 0.000000e+00
  %276 = and i32 %272, 64
  %277 = icmp ne i32 %276, 0
  %278 = and i32 %272, 128
  %279 = icmp eq i32 %278, 0
  %280 = and i32 %272, 2048
  %281 = icmp eq i32 %280, 0
  %282 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %283 = extractvalue %dx.types.Dimensions %282, 0
  %284 = sitofp i32 %283 to float
  %285 = extractvalue %dx.types.Dimensions %282, 1
  %286 = sitofp i32 %285 to float
  %287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %288 = extractvalue %dx.types.CBufRet.f32 %287, 2
  %289 = extractvalue %dx.types.CBufRet.f32 %287, 3
  %290 = fmul fast float %288, %50
  %291 = fmul fast float %289, %51
  %292 = fmul fast float %290, %284
  %293 = fmul fast float %291, %286
  %294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %295 = extractvalue %dx.types.CBufRet.f32 %294, 1
  %296 = fsub fast float -0.000000e+00, %295
  %297 = fptoui float %296 to i32
  %298 = fptoui float %292 to i32
  %299 = fptoui float %293 to i32
  %300 = and i32 %297, 31
  %301 = lshr i32 %298, %300
  %302 = lshr i32 %299, %300
  %303 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 %297, i32 %301, i32 %302, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %304 = extractvalue %dx.types.ResRet.f32 %303, 0
  %305 = fcmp fast ogt float %304, -1.000000e+00
  %306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %307 = extractvalue %dx.types.CBufRet.f32 %306, 1
  %308 = select i1 %305, float %307, float 1.000000e+00
  %309 = fadd fast float %304, 1.000000e+00
  %310 = fmul fast float %308, %309
  %311 = call float @dx.op.unary.f32(i32 6, float %310)  ; FAbs(value)
  %312 = extractvalue %dx.types.CBufRet.f32 %306, 3
  %313 = fcmp fast oge float %311, %312
  %314 = select i1 %313, float 0x4197782600000000, float %311
  br i1 %281, label %404, label %315, !dx.controlflow.hints !60

; <label>:315                                     ; preds = %247
  %316 = fmul fast float %55, %288
  %317 = fmul fast float %57, %289
  %318 = fsub fast float 1.000000e+00, %316
  %319 = fsub fast float 1.000000e+00, %317
  %320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %321 = extractvalue %dx.types.CBufRet.f32 %320, 0
  %322 = extractvalue %dx.types.CBufRet.f32 %320, 1
  %323 = extractvalue %dx.types.CBufRet.f32 %320, 2
  %324 = fmul fast float %318, %321
  %325 = fmul fast float %318, %322
  %326 = fmul fast float %318, %323
  %327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %328 = extractvalue %dx.types.CBufRet.f32 %327, 0
  %329 = extractvalue %dx.types.CBufRet.f32 %327, 1
  %330 = extractvalue %dx.types.CBufRet.f32 %327, 2
  %331 = fmul fast float %319, %328
  %332 = fmul fast float %319, %329
  %333 = fmul fast float %319, %330
  %334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %335 = extractvalue %dx.types.CBufRet.f32 %334, 0
  %336 = extractvalue %dx.types.CBufRet.f32 %334, 1
  %337 = extractvalue %dx.types.CBufRet.f32 %334, 2
  %338 = fadd fast float %331, %335
  %339 = fadd fast float %338, %324
  %340 = fadd fast float %332, %336
  %341 = fadd fast float %340, %325
  %342 = fadd fast float %333, %337
  %343 = fadd fast float %342, %326
  %344 = fmul fast float %339, %314
  %345 = fmul fast float %341, %314
  %346 = fmul fast float %343, %314
  %347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %348 = extractvalue %dx.types.CBufRet.f32 %347, 0
  %349 = extractvalue %dx.types.CBufRet.f32 %347, 1
  %350 = extractvalue %dx.types.CBufRet.f32 %347, 2
  %351 = fsub fast float %348, %23
  %352 = fadd fast float %351, %344
  %353 = fsub fast float %349, %24
  %354 = fadd fast float %353, %345
  %355 = fsub fast float %350, %25
  %356 = fadd fast float %355, %346
  %357 = fmul fast float %26, %26
  %358 = call float @dx.op.dot3.f32(i32 55, float %352, float %354, float %356, float %352, float %354, float %356)  ; Dot3(ax,ay,az,bx,by,bz)
  %359 = fsub fast float %357, %358
  %360 = fmul fast float %257, %357
  %361 = fmul fast float %256, %357
  %362 = fcmp fast olt float %359, %360
  %363 = fcmp fast ogt float %359, %361
  %364 = or i1 %362, %363
  %365 = select i1 %364, float 0.000000e+00, float %359
  %366 = fsub fast float %256, %257
  %367 = fmul fast float %366, %357
  %368 = fsub fast float %365, %360
  %369 = fdiv fast float %368, %367
  %370 = call float @dx.op.unary.f32(i32 7, float %369)  ; Saturate(value)
  %371 = fmul fast float %370, 2.000000e+00
  %372 = fsub fast float 3.000000e+00, %371
  %373 = fmul fast float %370, %370
  %374 = fmul fast float %373, %372
  %375 = fmul fast float %261, %39
  %376 = fmul fast float %262, %40
  %377 = fmul fast float %263, %41
  %378 = fsub fast float %375, %267
  %379 = fsub fast float %376, %268
  %380 = fsub fast float %377, %269
  %381 = fsub fast float %264, %270
  %382 = fmul fast float %374, %378
  %383 = fmul fast float %374, %379
  %384 = fmul fast float %374, %380
  %385 = fmul fast float %374, %381
  %386 = fadd fast float %382, %267
  %387 = fadd fast float %383, %268
  %388 = fadd fast float %384, %269
  %389 = fadd fast float %385, %270
  %390 = fmul fast float %261, %27
  %391 = fmul fast float %262, %28
  %392 = fmul fast float %263, %29
  %393 = fsub fast float %390, %267
  %394 = fsub fast float %391, %268
  %395 = fsub fast float %392, %269
  %396 = fmul fast float %374, %393
  %397 = fmul fast float %374, %394
  %398 = fmul fast float %374, %395
  %399 = fadd fast float %396, %267
  %400 = fadd fast float %397, %268
  %401 = fadd fast float %398, %269
  %402 = fmul fast float %250, %250
  %403 = fmul fast float %402, %365
  br label %511

; <label>:404                                     ; preds = %247
  %405 = and i32 %272, 256
  %406 = icmp eq i32 %405, 0
  %407 = fsub fast float %314, %46
  br i1 %406, label %468, label %408

; <label>:408                                     ; preds = %404
  %409 = fadd fast float %256, %46
  %410 = fcmp fast olt float %314, %46
  %411 = fcmp fast ogt float %314, %409
  %412 = or i1 %410, %411
  %413 = select i1 %412, float 0.000000e+00, float %407
  %414 = call float @dx.op.unary.f32(i32 83, float %314)  ; DerivCoarseX(value)
  %415 = call float @dx.op.unary.f32(i32 84, float %314)  ; DerivCoarseY(value)
  %416 = fmul fast float %414, %414
  %417 = fmul fast float %415, %415
  %418 = fadd fast float %417, %416
  %419 = call float @dx.op.unary.f32(i32 24, float %418)  ; Sqrt(value)
  %420 = extractvalue %dx.types.CBufRet.f32 %294, 2
  %421 = fmul fast float %420, %419
  %422 = call float @dx.op.unary.f32(i32 7, float %421)  ; Saturate(value)
  %423 = fmul fast float %422, %257
  %424 = fdiv fast float %407, %423
  %425 = call float @dx.op.unary.f32(i32 7, float %424)  ; Saturate(value)
  %426 = fmul fast float %425, 2.000000e+00
  %427 = fsub fast float 3.000000e+00, %426
  %428 = fmul fast float %425, %425
  %429 = fmul fast float %428, %427
  %430 = fsub fast float %314, %409
  %431 = fadd fast float %430, %423
  %432 = fdiv fast float %431, %423
  %433 = call float @dx.op.unary.f32(i32 7, float %432)  ; Saturate(value)
  %434 = fmul fast float %433, 2.000000e+00
  %435 = fsub fast float 3.000000e+00, %434
  %436 = fmul fast float %433, %433
  %437 = fmul fast float %436, %435
  %438 = fsub fast float %429, %437
  %439 = fmul fast float %261, %39
  %440 = fmul fast float %262, %40
  %441 = fmul fast float %263, %41
  %442 = fsub fast float %439, %267
  %443 = fsub fast float %440, %268
  %444 = fsub fast float %441, %269
  %445 = fsub fast float %264, %270
  %446 = fmul fast float %438, %442
  %447 = fmul fast float %438, %443
  %448 = fmul fast float %438, %444
  %449 = fmul fast float %438, %445
  %450 = fadd fast float %446, %267
  %451 = fadd fast float %447, %268
  %452 = fadd fast float %448, %269
  %453 = fadd fast float %449, %270
  %454 = fmul fast float %261, %27
  %455 = fmul fast float %262, %28
  %456 = fmul fast float %263, %29
  %457 = fsub fast float %454, %267
  %458 = fsub fast float %455, %268
  %459 = fsub fast float %456, %269
  %460 = fmul fast float %438, %457
  %461 = fmul fast float %438, %458
  %462 = fmul fast float %438, %459
  %463 = fadd fast float %460, %267
  %464 = fadd fast float %461, %268
  %465 = fadd fast float %462, %269
  %466 = fmul fast float %413, %250
  %467 = call float @dx.op.unary.f32(i32 6, float %466)  ; FAbs(value)
  br label %511

; <label>:468                                     ; preds = %404
  br i1 %275, label %469, label %482

; <label>:469                                     ; preds = %468
  %470 = fdiv fast float 5.000000e+01, %26
  %471 = select i1 %277, float %470, float 1.000000e+00
  %472 = fmul fast float %471, %250
  %473 = fmul fast float %175, 2.000000e+00
  %474 = fmul fast float %176, 2.000000e+00
  %475 = fadd fast float %473, -1.000000e+00
  %476 = fadd fast float %474, -1.000000e+00
  %477 = call float @dx.op.dot2.f32(i32 54, float %475, float %476, float %475, float %476)  ; Dot2(ax,ay,bx,by)
  %478 = fmul fast float %258, %26
  %479 = fmul fast float %478, %477
  %480 = fsub fast float %407, %479
  %481 = fmul fast float %472, %480
  br label %511

; <label>:482                                     ; preds = %468
  br i1 %279, label %503, label %483

; <label>:483                                     ; preds = %482
  %484 = fmul fast float %26, 0x3F947AE140000000
  %485 = select i1 %277, float %484, float 1.000000e+00
  %486 = fdiv fast float 1.000000e+00, %485
  %487 = fmul fast float %485, %251
  %488 = fmul fast float %485, %252
  %489 = fmul fast float %486, %253
  %490 = call float @dx.op.unary.f32(i32 6, float %407)  ; FAbs(value)
  %491 = fcmp fast olt float %490, %487
  br i1 %491, label %492, label %496, !dx.controlflow.hints !61

; <label>:492                                     ; preds = %483
  %493 = fmul fast float %486, %250
  %494 = fmul fast float %493, %490
  %495 = call float @dx.op.unary.f32(i32 6, float %494)  ; FAbs(value)
  br label %511

; <label>:496                                     ; preds = %483
  %497 = fcmp fast ogt float %490, %488
  br i1 %497, label %498, label %511

; <label>:498                                     ; preds = %496
  %499 = fsub fast float %490, %488
  %500 = fmul fast float %489, %499
  %501 = call float @dx.op.unary.f32(i32 6, float %500)  ; FAbs(value)
  %502 = fsub fast float 1.000000e+00, %501
  br label %511

; <label>:503                                     ; preds = %482
  %504 = fdiv fast float 5.000000e+01, %26
  %505 = select i1 %277, float %504, float 1.000000e+00
  %506 = fmul fast float %505, %250
  %507 = call float @dx.op.unary.f32(i32 6, float %226)  ; FAbs(value)
  %508 = select i1 %274, float %507, float 0x47EFFFFFE0000000
  %509 = call float @dx.op.binary.f32(i32 36, float %407, float %508)  ; FMin(a,b)
  %510 = fmul fast float %506, %509
  br label %511

; <label>:511                                     ; preds = %503, %498, %496, %492, %469, %408, %315
  %512 = phi float [ %403, %315 ], [ %467, %408 ], [ %481, %469 ], [ %510, %503 ], [ %495, %492 ], [ %502, %498 ], [ %490, %496 ]
  %513 = phi float [ %399, %315 ], [ %463, %408 ], [ %27, %469 ], [ %27, %503 ], [ %27, %492 ], [ %27, %498 ], [ %27, %496 ]
  %514 = phi float [ %400, %315 ], [ %464, %408 ], [ %28, %469 ], [ %28, %503 ], [ %28, %492 ], [ %28, %498 ], [ %28, %496 ]
  %515 = phi float [ %401, %315 ], [ %465, %408 ], [ %29, %469 ], [ %29, %503 ], [ %29, %492 ], [ %29, %498 ], [ %29, %496 ]
  %516 = phi float [ %386, %315 ], [ %450, %408 ], [ %39, %469 ], [ %39, %503 ], [ %39, %492 ], [ %39, %498 ], [ %39, %496 ]
  %517 = phi float [ %387, %315 ], [ %451, %408 ], [ %40, %469 ], [ %40, %503 ], [ %40, %492 ], [ %40, %498 ], [ %40, %496 ]
  %518 = phi float [ %388, %315 ], [ %452, %408 ], [ %41, %469 ], [ %41, %503 ], [ %41, %492 ], [ %41, %498 ], [ %41, %496 ]
  %519 = phi float [ %389, %315 ], [ %453, %408 ], [ 1.000000e+00, %469 ], [ 1.000000e+00, %503 ], [ 1.000000e+00, %492 ], [ 1.000000e+00, %498 ], [ 1.000000e+00, %496 ]
  %520 = call float @dx.op.unary.f32(i32 7, float %512)  ; Saturate(value)
  %521 = fmul fast float %519, %205
  %522 = fmul fast float %521, %520
  br label %523

; <label>:523                                     ; preds = %511, %244
  %524 = phi float [ %516, %511 ], [ %39, %244 ]
  %525 = phi float [ %517, %511 ], [ %40, %244 ]
  %526 = phi float [ %518, %511 ], [ %41, %244 ]
  %527 = phi float [ %522, %511 ], [ %205, %244 ]
  %528 = phi float [ %513, %511 ], [ %27, %244 ]
  %529 = phi float [ %514, %511 ], [ %28, %244 ]
  %530 = phi float [ %515, %511 ], [ %29, %244 ]
  %531 = fmul fast float %528, %30
  %532 = fmul fast float %529, %30
  %533 = fmul fast float %530, %30
  %534 = fmul fast float %528, %36
  %535 = fmul fast float %529, %36
  %536 = fmul fast float %530, %36
  %537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %538 = extractvalue %dx.types.CBufRet.f32 %537, 2
  %539 = fptosi float %46 to i32
  %540 = sitofp i32 %539 to float
  %541 = fadd fast float %538, %540
  %542 = fmul fast float %541, 0x3FE3C6EF40000000
  %543 = frem fast float %50, 2.560000e+02
  %544 = frem fast float %51, 2.560000e+02
  %545 = fptoui float %543 to i32
  %546 = fptoui float %544 to i32
  %547 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %545, i32 %546, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %548 = extractvalue %dx.types.ResRet.f32 %547, 0
  %549 = fadd fast float %548, %542
  %550 = call float @dx.op.unary.f32(i32 22, float %549)  ; Frc(value)
  %551 = and i32 %128, 1
  %552 = icmp eq i32 %551, 0
  br i1 %552, label %612, label %553, !dx.controlflow.hints !62

; <label>:553                                     ; preds = %523
  %554 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %125, i32 undef)  ; BufferLoad(srv,index,wot)
  %555 = extractvalue %dx.types.ResRet.f32 %554, 2
  %556 = extractvalue %dx.types.ResRet.f32 %554, 3
  %557 = add i32 %125, 16
  %558 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %557, i32 undef)  ; BufferLoad(srv,index,wot)
  %559 = extractvalue %dx.types.ResRet.f32 %558, 0
  %560 = extractvalue %dx.types.ResRet.f32 %558, 1
  %561 = extractvalue %dx.types.ResRet.f32 %558, 2
  %562 = add i32 %125, 32
  %563 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %562, i32 undef)  ; BufferLoad(srv,index,wot)
  %564 = extractvalue %dx.types.ResRet.f32 %563, 0
  %565 = extractvalue %dx.types.ResRet.f32 %563, 1
  %566 = extractvalue %dx.types.ResRet.f32 %563, 2
  %567 = and i32 %128, 2
  %568 = icmp eq i32 %567, 0
  %569 = call float @dx.op.dot3.f32(i32 55, float %33, float %34, float %35, float %33, float %34, float %35)  ; Dot3(ax,ay,az,bx,by,bz)
  %570 = call float @dx.op.unary.f32(i32 25, float %569)  ; Rsqrt(value)
  %571 = fmul fast float %570, %33
  %572 = fmul fast float %570, %34
  %573 = fmul fast float %570, %35
  %574 = call float @dx.op.dot3.f32(i32 55, float %85, float %86, float %87, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %575 = call float @dx.op.unary.f32(i32 25, float %574)  ; Rsqrt(value)
  %576 = fmul fast float %575, %85
  %577 = fmul fast float %575, %86
  %578 = fmul fast float %575, %87
  %579 = call float @dx.op.dot3.f32(i32 55, float %576, float %577, float %578, float %571, float %572, float %573)  ; Dot3(ax,ay,az,bx,by,bz)
  %580 = fmul fast float %579, %579
  %581 = fmul fast float %580, %555
  %582 = fadd fast float %581, %556
  %583 = call float @dx.op.unary.f32(i32 7, float %582)  ; Saturate(value)
  br i1 %568, label %584, label %594, !dx.controlflow.hints !63

; <label>:584                                     ; preds = %553
  %585 = extractvalue %dx.types.ResRet.f32 %554, 1
  %586 = extractvalue %dx.types.ResRet.f32 %554, 0
  %587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %588 = extractvalue %dx.types.CBufRet.f32 %587, 3
  %589 = fmul fast float %588, %574
  %590 = fsub fast float %586, %589
  %591 = fmul fast float %590, %585
  %592 = call float @dx.op.unary.f32(i32 7, float %591)  ; Saturate(value)
  %593 = fmul fast float %592, %583
  br label %594

; <label>:594                                     ; preds = %584, %553
  %595 = phi float [ %593, %584 ], [ %583, %553 ]
  %596 = fsub fast float %559, %564
  %597 = fsub fast float %560, %565
  %598 = fsub fast float %561, %566
  %599 = fmul fast float %595, %596
  %600 = fmul fast float %595, %597
  %601 = fmul fast float %595, %598
  %602 = fadd fast float %599, %564
  %603 = fadd fast float %600, %565
  %604 = fadd fast float %601, %566
  %605 = fmul fast float %602, %524
  %606 = fmul fast float %603, %525
  %607 = fmul fast float %604, %526
  %608 = fmul fast float %602, %531
  %609 = fmul fast float %603, %532
  %610 = fmul fast float %604, %533
  %611 = fmul fast float %595, %527
  br label %612

; <label>:612                                     ; preds = %594, %523
  %613 = phi float [ %605, %594 ], [ %524, %523 ]
  %614 = phi float [ %606, %594 ], [ %525, %523 ]
  %615 = phi float [ %607, %594 ], [ %526, %523 ]
  %616 = phi float [ %611, %594 ], [ %527, %523 ]
  %617 = phi float [ %608, %594 ], [ %531, %523 ]
  %618 = phi float [ %609, %594 ], [ %532, %523 ]
  %619 = phi float [ %610, %594 ], [ %533, %523 ]
  %620 = add i32 %22, 104
  %621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %620, i32 undef)  ; BufferLoad(srv,index,wot)
  %622 = extractvalue %dx.types.ResRet.i32 %621, 0
  %623 = add i32 %622, 0
  %624 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %623, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %625 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %624, %dx.types.Handle %47, float %165, float %166, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %626 = extractvalue %dx.types.ResRet.f32 %625, 0
  %627 = extractvalue %dx.types.ResRet.f32 %625, 1
  %628 = extractvalue %dx.types.ResRet.f32 %625, 2
  %629 = add i32 %22, 56
  %630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %629, i32 undef)  ; BufferLoad(srv,index,wot)
  %631 = extractvalue %dx.types.ResRet.i32 %630, 0
  %632 = and i32 %631, 255
  %633 = uitofp i32 %632 to float
  %634 = fmul fast float %633, 0x3F70101020000000
  %635 = lshr i32 %631, 8
  %636 = and i32 %635, 255
  %637 = uitofp i32 %636 to float
  %638 = fmul fast float %637, 0x3F70101020000000
  %639 = lshr i32 %631, 16
  %640 = and i32 %639, 255
  %641 = uitofp i32 %640 to float
  %642 = fmul fast float %641, 0x3F70101020000000
  %643 = add i32 %22, 108
  %644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %643, i32 undef)  ; BufferLoad(srv,index,wot)
  %645 = extractvalue %dx.types.ResRet.i32 %644, 0
  %646 = add i32 %645, 0
  %647 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %646, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %648 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %647, %dx.types.Handle %47, float %165, float %166, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %649 = extractvalue %dx.types.ResRet.f32 %648, 0
  %650 = extractvalue %dx.types.ResRet.f32 %648, 1
  %651 = extractvalue %dx.types.ResRet.f32 %648, 2
  %652 = add i32 %22, 44
  %653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %652, i32 undef)  ; BufferLoad(srv,index,wot)
  %654 = extractvalue %dx.types.ResRet.i32 %653, 0
  %655 = shl i32 %654, 4
  %656 = and i32 %655, 32752
  %657 = call float @dx.op.legacyF16ToF32(i32 131, i32 %656)  ; LegacyF16ToF32(value)
  %658 = lshr i32 %654, 7
  %659 = and i32 %658, 32752
  %660 = call float @dx.op.legacyF16ToF32(i32 131, i32 %659)  ; LegacyF16ToF32(value)
  %661 = lshr i32 %654, 22
  %662 = shl nuw nsw i32 %661, 5
  %663 = call float @dx.op.legacyF16ToF32(i32 131, i32 %662)  ; LegacyF16ToF32(value)
  %664 = fmul fast float %657, %649
  %665 = fmul fast float %660, %650
  %666 = fmul fast float %663, %651
  %667 = add i32 %22, 48
  %668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %667, i32 undef)  ; BufferLoad(srv,index,wot)
  %669 = extractvalue %dx.types.ResRet.i32 %668, 0
  %670 = lshr i32 %669, 22
  %671 = shl nuw nsw i32 %670, 5
  %672 = call float @dx.op.legacyF16ToF32(i32 131, i32 %671)  ; LegacyF16ToF32(value)
  %673 = fmul fast float %672, %664
  %674 = select i1 %108, float %673, float %664
  %675 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %31, float %32, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %676 = extractvalue %dx.types.ResRet.f32 %675, 0
  %677 = extractvalue %dx.types.ResRet.f32 %675, 1
  %678 = extractvalue %dx.types.ResRet.f32 %675, 2
  %679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %680 = extractvalue %dx.types.CBufRet.f32 %679, 1
  %681 = fmul fast float %680, %676
  %682 = fmul fast float %680, %677
  %683 = fmul fast float %680, %678
  %684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %685 = extractvalue %dx.types.CBufRet.f32 %684, 0
  %686 = fmul fast float %626, %613
  %687 = fmul fast float %634, %634
  %688 = fmul fast float %687, %686
  %689 = fmul fast float %688, %685
  %690 = fmul fast float %627, %614
  %691 = fmul fast float %638, %638
  %692 = fmul fast float %691, %690
  %693 = fmul fast float %692, %685
  %694 = fmul fast float %628, %615
  %695 = fmul fast float %642, %642
  %696 = fmul fast float %695, %694
  %697 = fmul fast float %696, %685
  %698 = fmul fast float %674, %617
  %699 = fmul fast float %665, %618
  %700 = fmul fast float %666, %619
  %701 = call float @dx.op.dot3.f32(i32 55, float %698, float %699, float %700, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %702 = select i1 %108, float 0.000000e+00, float %698
  %703 = select i1 %108, float %701, float %699
  %704 = select i1 %108, float 0.000000e+00, float %700
  %705 = fmul fast float %534, %674
  %706 = fmul fast float %535, %665
  %707 = fmul fast float %536, %666
  %708 = call float @dx.op.dot3.f32(i32 55, float %689, float %693, float %697, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %709 = add i32 %22, 32
  %710 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %709, i32 undef)  ; BufferLoad(srv,index,wot)
  %711 = extractvalue %dx.types.ResRet.i32 %710, 0
  %712 = and i32 %711, 255
  %713 = uitofp i32 %712 to float
  %714 = lshr i32 %711, 8
  %715 = and i32 %714, 255
  %716 = uitofp i32 %715 to float
  %717 = fmul fast float %716, %708
  %718 = fadd fast float %717, %713
  %719 = fmul fast float %718, 0x3F70101020000000
  %720 = call float @dx.op.unary.f32(i32 7, float %719)  ; Saturate(value)
  %721 = and i32 %128, 8192
  %722 = icmp eq i32 %721, 0
  %723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %724 = extractvalue %dx.types.CBufRet.f32 %723, 0
  br i1 %722, label %731, label %725, !dx.controlflow.hints !64

; <label>:725                                     ; preds = %612
  %726 = add i32 %125, 176
  %727 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %726, i32 undef)  ; BufferLoad(srv,index,wot)
  %728 = extractvalue %dx.types.ResRet.f32 %727, 0
  %729 = fcmp fast oge float %728, 0.000000e+00
  %730 = select i1 %729, float %728, float %724
  br label %731

; <label>:731                                     ; preds = %725, %612
  %732 = phi float [ %730, %725 ], [ %724, %612 ]
  %733 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %8, i32 0, i32 %208, i32 %209, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %734 = extractvalue %dx.types.ResRet.i32 %733, 0
  %735 = lshr i32 %734, 18
  %736 = uitofp i32 %735 to float
  %737 = fmul fast float %736, 0x3F4C00EBA0000000
  %738 = call float @dx.op.unary.f32(i32 21, float %737)  ; Exp(value)
  %739 = fadd fast float %738, -1.000000e+00
  %740 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %8, i32 0)  ; GetDimensions(handle,mipLevel)
  %741 = extractvalue %dx.types.Dimensions %740, 0
  %742 = sitofp i32 %741 to float
  %743 = extractvalue %dx.types.Dimensions %740, 1
  %744 = sitofp i32 %743 to float
  %745 = fcmp fast oge float %206, %742
  %746 = fcmp fast oge float %207, %744
  %747 = or i1 %745, %746
  %748 = select i1 %747, float 0x4197782600000000, float %739
  %749 = icmp eq i32 %124, 3
  %750 = fcmp fast ogt float %46, %748
  %751 = and i1 %232, %750
  %752 = or i1 %749, %751
  %753 = icmp eq i32 %124, 2
  %754 = fcmp fast ole float %46, %748
  %755 = and i1 %753, %754
  %756 = or i1 %755, %752
  %757 = fmul fast float %705, %681
  %758 = fmul fast float %706, %682
  %759 = fmul fast float %707, %683
  %760 = fadd fast float %757, %702
  %761 = fadd fast float %703, %758
  %762 = fadd fast float %759, %704
  %763 = fmul fast float %760, %616
  %764 = fmul fast float %761, %616
  %765 = fmul fast float %762, %616
  %766 = fmul fast float %681, %616
  %767 = fmul fast float %682, %616
  %768 = fmul fast float %683, %616
  %769 = fmul fast float %732, %720
  %770 = fsub fast float -0.000000e+00, %720
  %771 = call float @dx.op.unary.f32(i32 7, float %770)  ; Saturate(value)
  %772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %773 = extractvalue %dx.types.CBufRet.f32 %772, 3
  %774 = fmul fast float %773, %771
  %775 = fadd fast float %774, %769
  %776 = and i32 %128, 1048576
  %777 = icmp eq i32 %776, 0
  br i1 %777, label %869, label %778, !dx.controlflow.hints !65

; <label>:778                                     ; preds = %731
  %779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %780 = extractvalue %dx.types.CBufRet.f32 %779, 2
  %781 = extractvalue %dx.types.CBufRet.f32 %779, 3
  %782 = fmul fast float %780, %50
  %783 = fmul fast float %781, %51
  %784 = call float @dx.op.unary.f32(i32 7, float %782)  ; Saturate(value)
  %785 = call float @dx.op.unary.f32(i32 7, float %783)  ; Saturate(value)
  %786 = select i1 %756, i32 2, i32 0
  %787 = or i32 %786, 1
  %788 = uitofp i32 %787 to float
  %789 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %784, float %785, float %788, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %790 = extractvalue %dx.types.ResRet.f32 %789, 0
  %791 = extractvalue %dx.types.ResRet.f32 %789, 1
  %792 = extractvalue %dx.types.ResRet.f32 %789, 2
  %793 = extractvalue %dx.types.ResRet.f32 %789, 3
  %794 = add nuw nsw i32 %786, 2
  %795 = uitofp i32 %794 to float
  %796 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %784, float %785, float %795, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %797 = extractvalue %dx.types.ResRet.f32 %796, 0
  %798 = extractvalue %dx.types.ResRet.f32 %796, 1
  %799 = extractvalue %dx.types.ResRet.f32 %796, 2
  %800 = extractvalue %dx.types.ResRet.f32 %796, 3
  %801 = call float @dx.op.binary.f32(i32 35, float %791, float %792)  ; FMax(a,b)
  %802 = call float @dx.op.binary.f32(i32 35, float %790, float %801)  ; FMax(a,b)
  %803 = call float @dx.op.binary.f32(i32 35, float %802, float %793)  ; FMax(a,b)
  %804 = call float @dx.op.binary.f32(i32 36, float %798, float %799)  ; FMin(a,b)
  %805 = call float @dx.op.binary.f32(i32 36, float %797, float %804)  ; FMin(a,b)
  %806 = call float @dx.op.binary.f32(i32 36, float %805, float %800)  ; FMin(a,b)
  %807 = fmul fast float %803, 2.550000e+02
  %808 = fadd fast float %807, 0x3F70101020000000
  %809 = fptoui float %808 to i32
  %810 = fmul fast float %806, 2.550000e+02
  %811 = fadd fast float %810, 0x3F70101020000000
  %812 = fptoui float %811 to i32
  %813 = icmp ult i32 %809, %812
  br i1 %813, label %814, label %862

; <label>:814                                     ; preds = %778
  %815 = fcmp fast ogt float %45, 9.843750e-01
  %816 = fadd fast float %46, -4.000000e+00
  %817 = select i1 %815, float -4.000000e+00, float %816
  %818 = call float @dx.op.binary.f32(i32 35, float %817, float 0.000000e+00)  ; FMax(a,b)
  %819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %820 = extractvalue %dx.types.CBufRet.f32 %819, 0
  %821 = fadd fast float %820, %818
  %822 = extractvalue %dx.types.CBufRet.f32 %819, 2
  %823 = fmul fast float %821, %822
  %824 = call float @dx.op.unary.f32(i32 23, float %823)  ; Log(value)
  %825 = extractvalue %dx.types.CBufRet.f32 %819, 3
  %826 = fmul fast float %825, %824
  %827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %828 = extractvalue %dx.types.CBufRet.f32 %827, 2
  %829 = fmul fast float %826, %828
  %830 = call float @dx.op.unary.f32(i32 7, float %829)  ; Saturate(value)
  %831 = uitofp i32 %809 to float
  %832 = uitofp i32 %812 to float
  %833 = fadd fast float %831, 5.000000e-01
  %834 = fadd fast float %832, 5.000000e-01
  %835 = fmul fast float %828, %833
  %836 = fmul fast float %828, %834
  %837 = fadd fast float %835, 0x3F0FFB4800000000
  %838 = fadd fast float %836, 0xBF0FFB4800000000
  %839 = call float @dx.op.binary.f32(i32 35, float %830, float %837)  ; FMax(a,b)
  %840 = call float @dx.op.binary.f32(i32 36, float %839, float %838)  ; FMin(a,b)
  %841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %842 = extractvalue %dx.types.CBufRet.f32 %841, 1
  %843 = extractvalue %dx.types.CBufRet.f32 %841, 2
  %844 = extractvalue %dx.types.CBufRet.f32 %841, 0
  %845 = select i1 %756, float %844, float 0.000000e+00
  %846 = fmul fast float %842, %840
  %847 = fadd fast float %845, %846
  %848 = fadd fast float %845, %843
  %849 = fsub fast float %842, %843
  %850 = fadd fast float %849, %845
  %851 = call float @dx.op.binary.f32(i32 35, float %847, float %848)  ; FMax(a,b)
  %852 = call float @dx.op.binary.f32(i32 36, float %851, float %850)  ; FMin(a,b)
  %853 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %16, float %784, float %785, float %852, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %854 = extractvalue %dx.types.ResRet.f32 %853, 0
  %855 = extractvalue %dx.types.ResRet.f32 %853, 1
  %856 = extractvalue %dx.types.ResRet.f32 %853, 2
  %857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %858 = extractvalue %dx.types.CBufRet.f32 %857, 1
  %859 = fmul fast float %858, %854
  %860 = fmul fast float %858, %855
  %861 = fmul fast float %858, %856
  br label %862

; <label>:862                                     ; preds = %814, %778
  %863 = phi float [ %859, %814 ], [ 1.000000e+00, %778 ]
  %864 = phi float [ %860, %814 ], [ 1.000000e+00, %778 ]
  %865 = phi float [ %861, %814 ], [ 1.000000e+00, %778 ]
  %866 = fmul fast float %863, %763
  %867 = fmul fast float %864, %764
  %868 = fmul fast float %865, %765
  br label %869

; <label>:869                                     ; preds = %862, %731
  %870 = phi float [ %866, %862 ], [ %763, %731 ]
  %871 = phi float [ %867, %862 ], [ %764, %731 ]
  %872 = phi float [ %868, %862 ], [ %765, %731 ]
  %873 = and i32 %128, 2097152
  %874 = icmp eq i32 %873, 0
  br i1 %874, label %879, label %875, !dx.controlflow.hints !66

; <label>:875                                     ; preds = %869
  %876 = add i32 %125, 192
  %877 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %876, i32 undef)  ; BufferLoad(srv,index,wot)
  %878 = extractvalue %dx.types.ResRet.f32 %877, 0
  br label %882

; <label>:879                                     ; preds = %869
  %880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %881 = extractvalue %dx.types.CBufRet.f32 %880, 3
  br label %882

; <label>:882                                     ; preds = %879, %875
  %883 = phi float [ %878, %875 ], [ %881, %879 ]
  %884 = fmul fast float %766, %689
  %885 = fmul fast float %767, %693
  %886 = fmul fast float %768, %697
  br i1 %751, label %887, label %974

; <label>:887                                     ; preds = %882
  %888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %889 = extractvalue %dx.types.CBufRet.f32 %888, 2
  %890 = extractvalue %dx.types.CBufRet.f32 %888, 3
  %891 = fmul fast float %889, %50
  %892 = fmul fast float %890, %51
  %893 = call float @dx.op.unary.f32(i32 7, float %891)  ; Saturate(value)
  %894 = call float @dx.op.unary.f32(i32 7, float %892)  ; Saturate(value)
  %895 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %893, float %894, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %896 = extractvalue %dx.types.ResRet.f32 %895, 0
  %897 = extractvalue %dx.types.ResRet.f32 %895, 1
  %898 = extractvalue %dx.types.ResRet.f32 %895, 2
  %899 = extractvalue %dx.types.ResRet.f32 %895, 3
  %900 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %893, float %894, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
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
  br i1 %917, label %918, label %960

; <label>:918                                     ; preds = %887
  %919 = fcmp fast ogt float %45, 9.843750e-01
  %920 = fadd fast float %46, -4.000000e+00
  %921 = select i1 %919, float -4.000000e+00, float %920
  %922 = call float @dx.op.binary.f32(i32 35, float %921, float 0.000000e+00)  ; FMax(a,b)
  %923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %924 = extractvalue %dx.types.CBufRet.f32 %923, 0
  %925 = fadd fast float %924, %922
  %926 = extractvalue %dx.types.CBufRet.f32 %923, 2
  %927 = fmul fast float %925, %926
  %928 = call float @dx.op.unary.f32(i32 23, float %927)  ; Log(value)
  %929 = extractvalue %dx.types.CBufRet.f32 %923, 3
  %930 = fmul fast float %929, %928
  %931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
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
  %945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
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
  %956 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %893, float %894, float %955, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %957 = extractvalue %dx.types.ResRet.f32 %956, 0
  %958 = extractvalue %dx.types.ResRet.f32 %956, 1
  %959 = extractvalue %dx.types.ResRet.f32 %956, 2
  br label %960

; <label>:960                                     ; preds = %918, %887
  %961 = phi float [ %957, %918 ], [ 1.000000e+00, %887 ]
  %962 = phi float [ %958, %918 ], [ 1.000000e+00, %887 ]
  %963 = phi float [ %959, %918 ], [ 1.000000e+00, %887 ]
  %964 = call float @dx.op.dot3.f32(i32 55, float %961, float %962, float %963, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %965 = select i1 %108, float %964, float %961
  %966 = select i1 %108, float %964, float %962
  %967 = select i1 %108, float 1.000000e+00, float %963
  %968 = fmul fast float %965, %884
  %969 = fmul fast float %966, %885
  %970 = fmul fast float %967, %886
  %971 = fmul fast float %965, %870
  %972 = fmul fast float %966, %871
  %973 = fmul fast float %967, %872
  br label %974

; <label>:974                                     ; preds = %960, %882
  %975 = phi float [ %748, %960 ], [ %46, %882 ]
  %976 = phi float [ %968, %960 ], [ %884, %882 ]
  %977 = phi float [ %969, %960 ], [ %885, %882 ]
  %978 = phi float [ %970, %960 ], [ %886, %882 ]
  %979 = phi float [ %971, %960 ], [ %870, %882 ]
  %980 = phi float [ %972, %960 ], [ %871, %882 ]
  %981 = phi float [ %973, %960 ], [ %872, %882 ]
  %982 = phi float [ %961, %960 ], [ 1.000000e+00, %882 ]
  br i1 %756, label %1231, label %983

; <label>:983                                     ; preds = %974
  %984 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %17, float %31, float %32, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %985 = extractvalue %dx.types.ResRet.f32 %984, 0
  %986 = extractvalue %dx.types.ResRet.f32 %984, 1
  %987 = extractvalue %dx.types.ResRet.f32 %984, 2
  %988 = fmul fast float %985, %982
  %989 = call float @dx.op.dot3.f32(i32 55, float %985, float %986, float %987, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %990 = select i1 %108, float %989, float %985
  %991 = select i1 %108, float %989, float %986
  %992 = select i1 %108, float 1.000000e+00, float %987
  %993 = fmul fast float %990, %976
  %994 = fmul fast float %991, %977
  %995 = fmul fast float %992, %978
  %996 = fmul fast float %990, %979
  %997 = fmul fast float %991, %980
  %998 = fmul fast float %992, %981
  %999 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1000 = extractvalue %dx.types.CBufRet.i32 %999, 0
  %1001 = icmp eq i32 %1000, 0
  br i1 %1001, label %1231, label %1002, !dx.controlflow.hints !67

; <label>:1002                                    ; preds = %983
  %1003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1004 = extractvalue %dx.types.CBufRet.f32 %1003, 2
  %1005 = extractvalue %dx.types.CBufRet.f32 %1003, 3
  %1006 = fmul fast float %1004, %50
  %1007 = fmul fast float %1005, %51
  %1008 = fmul fast float %1006, 2.000000e+00
  %1009 = fmul fast float %1007, 2.000000e+00
  %1010 = fsub fast float 1.000000e+00, %1008
  %1011 = fsub fast float 1.000000e+00, %1009
  %1012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1013 = extractvalue %dx.types.CBufRet.f32 %1012, 0
  %1014 = extractvalue %dx.types.CBufRet.f32 %1012, 1
  %1015 = extractvalue %dx.types.CBufRet.f32 %1012, 2
  %1016 = fmul fast float %1010, %1013
  %1017 = fmul fast float %1010, %1014
  %1018 = fmul fast float %1010, %1015
  %1019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1020 = extractvalue %dx.types.CBufRet.f32 %1019, 0
  %1021 = extractvalue %dx.types.CBufRet.f32 %1019, 1
  %1022 = extractvalue %dx.types.CBufRet.f32 %1019, 2
  %1023 = fmul fast float %1011, %1020
  %1024 = fmul fast float %1011, %1021
  %1025 = fmul fast float %1011, %1022
  %1026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1027 = extractvalue %dx.types.CBufRet.f32 %1026, 0
  %1028 = extractvalue %dx.types.CBufRet.f32 %1026, 1
  %1029 = extractvalue %dx.types.CBufRet.f32 %1026, 2
  %1030 = fadd fast float %1023, %1027
  %1031 = fadd fast float %1030, %1016
  %1032 = fadd fast float %1024, %1028
  %1033 = fadd fast float %1032, %1017
  %1034 = fadd fast float %1025, %1029
  %1035 = fadd fast float %1034, %1018
  %1036 = fmul fast float %1031, %975
  %1037 = fmul fast float %1033, %975
  %1038 = fmul fast float %1035, %975
  %1039 = fmul fast float %1036, %1036
  %1040 = fmul fast float %1037, %1037
  %1041 = fadd fast float %1039, %1040
  %1042 = fmul fast float %1038, %1038
  %1043 = fadd fast float %1041, %1042
  %1044 = call float @dx.op.unary.f32(i32 24, float %1043)  ; Sqrt(value)
  %1045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1046 = extractvalue %dx.types.CBufRet.f32 %1045, 0
  %1047 = fsub fast float %1044, %1046
  %1048 = extractvalue %dx.types.CBufRet.f32 %1045, 2
  %1049 = fmul fast float %1047, %1048
  %1050 = call float @dx.op.unary.f32(i32 7, float %1049)  ; Saturate(value)
  %1051 = fadd fast float %1050, -5.000000e-01
  %1052 = fmul fast float %1051, 2.000000e+00
  %1053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1054 = extractvalue %dx.types.CBufRet.f32 %1053, 2
  %1055 = call float @dx.op.binary.f32(i32 36, float %1054, float %1052)  ; FMin(a,b)
  %1056 = fsub fast float -0.000000e+00, %1054
  %1057 = fcmp fast ogt float %1055, %1056
  br i1 %1057, label %1058, label %1231, !dx.controlflow.hints !68

; <label>:1058                                    ; preds = %1002
  %1059 = fmul fast float %1055, 5.000000e-01
  %1060 = fadd fast float %1059, 5.000000e-01
  %1061 = call float @dx.op.unary.f32(i32 22, float %1060)  ; Frc(value)
  %1062 = call float @dx.op.unary.f32(i32 27, float %1061)  ; Round_ni(value)
  %1063 = call float @dx.op.unary.f32(i32 22, float %1061)  ; Frc(value)
  %1064 = fmul fast float %1063, 2.000000e+00
  %1065 = fadd fast float %1064, -1.000000e+00
  %1066 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %17, float %1006, float %1007, float %1062, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1067 = extractvalue %dx.types.ResRet.f32 %1066, 0
  %1068 = extractvalue %dx.types.ResRet.f32 %1066, 1
  %1069 = extractvalue %dx.types.ResRet.f32 %1066, 2
  %1070 = extractvalue %dx.types.ResRet.f32 %1066, 3
  %1071 = fadd fast float %1067, -5.000000e-01
  %1072 = fadd fast float %1069, -5.000000e-01
  %1073 = fmul fast float %1071, 0xBFD5555560000000
  %1074 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1072, float %1073)  ; FMad(a,b,c)
  %1075 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1068, float 0.000000e+00)  ; FMad(a,b,c)
  %1076 = fadd fast float %1075, %1070
  %1077 = fmul fast float %1071, -7.500000e-01
  %1078 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1072, float %1077)  ; FMad(a,b,c)
  %1079 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1068, float 0.000000e+00)  ; FMad(a,b,c)
  %1080 = fadd fast float %1079, %1070
  %1081 = call float @dx.op.binary.f32(i32 35, float %1074, float -1.000000e+00)  ; FMax(a,b)
  %1082 = call float @dx.op.binary.f32(i32 35, float %1076, float -1.000000e+00)  ; FMax(a,b)
  %1083 = call float @dx.op.binary.f32(i32 35, float %1078, float -1.000000e+00)  ; FMax(a,b)
  %1084 = call float @dx.op.binary.f32(i32 35, float %1080, float -1.000000e+00)  ; FMax(a,b)
  %1085 = call float @dx.op.binary.f32(i32 36, float %1081, float 1.000000e+00)  ; FMin(a,b)
  %1086 = call float @dx.op.binary.f32(i32 36, float %1082, float 1.000000e+00)  ; FMin(a,b)
  %1087 = call float @dx.op.binary.f32(i32 36, float %1083, float 1.000000e+00)  ; FMin(a,b)
  %1088 = call float @dx.op.binary.f32(i32 36, float %1084, float 1.000000e+00)  ; FMin(a,b)
  %1089 = fcmp fast olt float %1085, 0x3FEFFF8020000000
  br i1 %1089, label %1090, label %1205, !dx.controlflow.hints !69

; <label>:1090                                    ; preds = %1058
  %1091 = extractvalue %dx.types.CBufRet.f32 %1053, 3
  %1092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1093 = extractvalue %dx.types.CBufRet.f32 %1092, 0
  %1094 = extractvalue %dx.types.CBufRet.f32 %1092, 1
  %1095 = extractvalue %dx.types.CBufRet.f32 %1092, 2
  %1096 = extractvalue %dx.types.CBufRet.f32 %1092, 3
  %1097 = fsub fast float %1093, %1085
  %1098 = fsub fast float %1094, %1086
  %1099 = fsub fast float %1095, %1087
  %1100 = fsub fast float %1096, %1088
  %1101 = fmul fast float %1097, %1091
  %1102 = fmul fast float %1098, %1091
  %1103 = fmul fast float %1099, %1091
  %1104 = fmul fast float %1100, %1091
  %1105 = fadd fast float %1101, %1085
  %1106 = fadd fast float %1102, %1086
  %1107 = fsub fast float -0.000000e+00, %1106
  %1108 = fadd fast float %1103, %1087
  %1109 = fadd fast float %1104, %1088
  %1110 = fmul fast float %1105, %1105
  %1111 = fsub fast float %1106, %1110
  %1112 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1111)  ; FMax(a,b)
  %1113 = fdiv fast float 1.000000e+00, %1112
  %1114 = fmul fast float %1106, %1105
  %1115 = fsub fast float %1108, %1114
  %1116 = fsub fast float %1065, %1105
  %1117 = fmul fast float %1065, %1065
  %1118 = fsub fast float %1117, %1106
  %1119 = fmul fast float %1116, %1113
  %1120 = fmul fast float %1119, %1115
  %1121 = fsub fast float %1118, %1120
  %1122 = fmul fast float %1106, %1106
  %1123 = fsub fast float %1109, %1122
  %1124 = fmul fast float %1115, %1115
  %1125 = fmul fast float %1124, %1113
  %1126 = fsub fast float %1123, %1125
  %1127 = fdiv fast float %1121, %1126
  %1128 = fmul fast float %1115, %1127
  %1129 = fsub fast float %1116, %1128
  %1130 = fmul fast float %1129, %1113
  %1131 = fmul fast float %1130, %1105
  %1132 = fsub fast float 1.000000e+00, %1131
  %1133 = fmul fast float %1106, %1127
  %1134 = fsub fast float %1132, %1133
  %1135 = fmul fast float %1130, %1130
  %1136 = fmul fast float %1127, 4.000000e+00
  %1137 = fmul fast float %1136, %1134
  %1138 = fsub fast float %1135, %1137
  %1139 = call float @dx.op.unary.f32(i32 24, float %1138)  ; Sqrt(value)
  %1140 = fcmp fast oge float %1130, 0.000000e+00
  %1141 = fsub fast float -0.000000e+00, %1139
  %1142 = select i1 %1140, float %1141, float %1139
  %1143 = fsub fast float %1142, %1130
  %1144 = fdiv fast float %1143, %1127
  %1145 = fdiv fast float %1134, %1143
  %1146 = fmul fast float %1144, 5.000000e-01
  %1147 = fmul fast float %1145, 2.000000e+00
  %1148 = select i1 %1140, float %1146, float %1147
  %1149 = select i1 %1140, float %1147, float %1146
  %1150 = call float @dx.op.binary.f32(i32 35, float %1148, float %1149)  ; FMax(a,b)
  %1151 = call float @dx.op.binary.f32(i32 36, float %1148, float %1149)  ; FMin(a,b)
  %1152 = fcmp fast ogt float %1065, %1151
  br i1 %1152, label %1153, label %1163

; <label>:1153                                    ; preds = %1090
  %1154 = fsub fast float %1065, %1151
  %1155 = fsub fast float %1150, %1151
  %1156 = fmul fast float %1154, %1155
  %1157 = fmul fast float %1150, %1065
  %1158 = fadd fast float %1150, %1065
  %1159 = fmul fast float %1158, %1105
  %1160 = fadd fast float %1157, %1106
  %1161 = fsub fast float %1160, %1159
  %1162 = fdiv fast float %1161, %1156
  br label %1163

; <label>:1163                                    ; preds = %1153, %1090
  %1164 = phi float [ %1162, %1153 ], [ 0.000000e+00, %1090 ]
  %1165 = fcmp fast ogt float %1065, %1150
  %1166 = fsub fast float %1065, %1150
  br i1 %1165, label %1167, label %1177

; <label>:1167                                    ; preds = %1163
  %1168 = fsub fast float %1150, %1151
  %1169 = fmul fast float %1168, %1166
  %1170 = fmul fast float %1151, %1065
  %1171 = fadd fast float %1151, %1065
  %1172 = fmul fast float %1171, %1105
  %1173 = fsub fast float %1107, %1170
  %1174 = fadd fast float %1173, %1172
  %1175 = fdiv fast float %1174, %1169
  %1176 = fadd fast float %1175, %1164
  br label %1177

; <label>:1177                                    ; preds = %1167, %1163
  %1178 = phi float [ %1176, %1167 ], [ %1164, %1163 ]
  %1179 = fsub fast float %1065, %1151
  %1180 = fmul fast float %1179, %1166
  %1181 = fmul fast float %1151, %1150
  %1182 = fadd fast float %1151, %1150
  %1183 = fmul fast float %1182, %1105
  %1184 = fadd fast float %1181, %1106
  %1185 = fsub fast float %1184, %1183
  %1186 = fdiv fast float %1185, %1180
  %1187 = call float @dx.op.unary.f32(i32 7, float %1178)  ; Saturate(value)
  %1188 = fcmp fast oeq float %883, 0.000000e+00
  %1189 = extractvalue %dx.types.CBufRet.f32 %1053, 0
  %1190 = fcmp fast oeq float %1189, 0.000000e+00
  %1191 = or i1 %1188, %1190
  %1192 = fmul fast float %1189, 2.000000e+00
  %1193 = fadd fast float %1054, %1055
  %1194 = fdiv fast float %1193, %1192
  %1195 = call float @dx.op.unary.f32(i32 7, float %1194)  ; Saturate(value)
  %1196 = fmul fast float %1195, 2.000000e+00
  %1197 = fsub fast float 3.000000e+00, %1196
  %1198 = fmul fast float %1195, %1195
  %1199 = fmul fast float %1198, %1197
  %1200 = select i1 %1191, float 1.000000e+00, float %1199
  %1201 = fmul fast float %1186, %883
  %1202 = fadd fast float %1187, %1201
  %1203 = call float @dx.op.unary.f32(i32 7, float %1202)  ; Saturate(value)
  %1204 = fmul fast float %1200, %1203
  br label %1205

; <label>:1205                                    ; preds = %1177, %1058
  %1206 = phi float [ %1204, %1177 ], [ 0.000000e+00, %1058 ]
  %1207 = fsub fast float 1.000000e+00, %1206
  %1208 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %17, float %1006, float %1007, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1209 = extractvalue %dx.types.ResRet.f32 %1208, 0
  %1210 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1211 = extractvalue %dx.types.CBufRet.i32 %1210, 2
  %1212 = icmp eq i32 %1211, 0
  br i1 %1212, label %1218, label %1213

; <label>:1213                                    ; preds = %1205
  %1214 = call float @dx.op.unary.f32(i32 7, float %1206)  ; Saturate(value)
  %1215 = fadd fast float %1209, -1.000000e+00
  %1216 = fmul fast float %1214, %1215
  %1217 = fadd fast float %1216, 1.000000e+00
  br label %1218

; <label>:1218                                    ; preds = %1213, %1205
  %1219 = phi float [ %1217, %1213 ], [ %1207, %1205 ]
  %1220 = call float @dx.op.binary.f32(i32 35, float %1209, float %1219)  ; FMax(a,b)
  %1221 = fmul fast float %1220, %988
  %1222 = call float @dx.op.dot3.f32(i32 55, float %1220, float %1220, float %1220, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1223 = select i1 %108, float %1222, float %1220
  %1224 = select i1 %108, float 1.000000e+00, float %1220
  %1225 = fmul fast float %1223, %993
  %1226 = fmul fast float %1223, %994
  %1227 = fmul fast float %1224, %995
  %1228 = fmul fast float %1223, %996
  %1229 = fmul fast float %1223, %997
  %1230 = fmul fast float %1224, %998
  br label %1231

; <label>:1231                                    ; preds = %1218, %1002, %983, %974
  %1232 = phi float [ %976, %974 ], [ %993, %983 ], [ %1225, %1218 ], [ %993, %1002 ]
  %1233 = phi float [ %977, %974 ], [ %994, %983 ], [ %1226, %1218 ], [ %994, %1002 ]
  %1234 = phi float [ %978, %974 ], [ %995, %983 ], [ %1227, %1218 ], [ %995, %1002 ]
  %1235 = phi float [ %979, %974 ], [ %996, %983 ], [ %1228, %1218 ], [ %996, %1002 ]
  %1236 = phi float [ %980, %974 ], [ %997, %983 ], [ %1229, %1218 ], [ %997, %1002 ]
  %1237 = phi float [ %981, %974 ], [ %998, %983 ], [ %1230, %1218 ], [ %998, %1002 ]
  %1238 = phi float [ %982, %974 ], [ %988, %983 ], [ %1221, %1218 ], [ %988, %1002 ]
  %1239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1240 = extractvalue %dx.types.CBufRet.f32 %1239, 2
  %1241 = extractvalue %dx.types.CBufRet.f32 %1239, 3
  %1242 = fmul fast float %1240, %50
  %1243 = fmul fast float %1241, %51
  %1244 = call float @dx.op.unary.f32(i32 7, float %1242)  ; Saturate(value)
  %1245 = call float @dx.op.unary.f32(i32 7, float %1243)  ; Saturate(value)
  %1246 = select i1 %756, i32 2, i32 0
  %1247 = or i32 %1246, 1
  %1248 = uitofp i32 %1247 to float
  %1249 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %1244, float %1245, float %1248, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1250 = extractvalue %dx.types.ResRet.f32 %1249, 0
  %1251 = extractvalue %dx.types.ResRet.f32 %1249, 1
  %1252 = extractvalue %dx.types.ResRet.f32 %1249, 2
  %1253 = extractvalue %dx.types.ResRet.f32 %1249, 3
  %1254 = add nuw nsw i32 %1246, 2
  %1255 = uitofp i32 %1254 to float
  %1256 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %1244, float %1245, float %1255, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1257 = extractvalue %dx.types.ResRet.f32 %1256, 0
  %1258 = extractvalue %dx.types.ResRet.f32 %1256, 1
  %1259 = extractvalue %dx.types.ResRet.f32 %1256, 2
  %1260 = extractvalue %dx.types.ResRet.f32 %1256, 3
  %1261 = call float @dx.op.binary.f32(i32 35, float %1251, float %1252)  ; FMax(a,b)
  %1262 = call float @dx.op.binary.f32(i32 35, float %1250, float %1261)  ; FMax(a,b)
  %1263 = call float @dx.op.binary.f32(i32 35, float %1262, float %1253)  ; FMax(a,b)
  %1264 = call float @dx.op.binary.f32(i32 36, float %1258, float %1259)  ; FMin(a,b)
  %1265 = call float @dx.op.binary.f32(i32 36, float %1257, float %1264)  ; FMin(a,b)
  %1266 = call float @dx.op.binary.f32(i32 36, float %1265, float %1260)  ; FMin(a,b)
  %1267 = fmul fast float %1263, 2.550000e+02
  %1268 = fadd fast float %1267, 0x3F70101020000000
  %1269 = fptoui float %1268 to i32
  %1270 = fmul fast float %1266, 2.550000e+02
  %1271 = fadd fast float %1270, 0x3F70101020000000
  %1272 = fptoui float %1271 to i32
  %1273 = icmp ult i32 %1269, %1272
  br i1 %1273, label %1274, label %1317

; <label>:1274                                    ; preds = %1231
  %1275 = fcmp fast ogt float %45, 9.843750e-01
  %1276 = fadd fast float %975, -4.000000e+00
  %1277 = select i1 %1275, float -4.000000e+00, float %1276
  %1278 = call float @dx.op.binary.f32(i32 35, float %1277, float 0.000000e+00)  ; FMax(a,b)
  %1279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1280 = extractvalue %dx.types.CBufRet.f32 %1279, 0
  %1281 = fadd fast float %1280, %1278
  %1282 = extractvalue %dx.types.CBufRet.f32 %1279, 2
  %1283 = fmul fast float %1281, %1282
  %1284 = call float @dx.op.unary.f32(i32 23, float %1283)  ; Log(value)
  %1285 = extractvalue %dx.types.CBufRet.f32 %1279, 3
  %1286 = fmul fast float %1285, %1284
  %1287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1288 = extractvalue %dx.types.CBufRet.f32 %1287, 2
  %1289 = fmul fast float %1286, %1288
  %1290 = call float @dx.op.unary.f32(i32 7, float %1289)  ; Saturate(value)
  %1291 = uitofp i32 %1269 to float
  %1292 = uitofp i32 %1272 to float
  %1293 = fadd fast float %1291, 5.000000e-01
  %1294 = fadd fast float %1292, 5.000000e-01
  %1295 = fmul fast float %1288, %1293
  %1296 = fmul fast float %1288, %1294
  %1297 = fadd fast float %1295, 0x3F0FFB4800000000
  %1298 = fadd fast float %1296, 0xBF0FFB4800000000
  %1299 = call float @dx.op.binary.f32(i32 35, float %1290, float %1297)  ; FMax(a,b)
  %1300 = call float @dx.op.binary.f32(i32 36, float %1299, float %1298)  ; FMin(a,b)
  %1301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1302 = extractvalue %dx.types.CBufRet.f32 %1301, 1
  %1303 = extractvalue %dx.types.CBufRet.f32 %1301, 2
  %1304 = extractvalue %dx.types.CBufRet.f32 %1301, 0
  %1305 = select i1 %756, float %1304, float 0.000000e+00
  %1306 = fmul fast float %1302, %1300
  %1307 = fadd fast float %1305, %1306
  %1308 = fadd fast float %1305, %1303
  %1309 = fsub fast float %1302, %1303
  %1310 = fadd fast float %1309, %1305
  %1311 = call float @dx.op.binary.f32(i32 35, float %1307, float %1308)  ; FMax(a,b)
  %1312 = call float @dx.op.binary.f32(i32 36, float %1311, float %1310)  ; FMin(a,b)
  %1313 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %1244, float %1245, float %1312, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1314 = extractvalue %dx.types.ResRet.f32 %1313, 0
  %1315 = extractvalue %dx.types.ResRet.f32 %1313, 1
  %1316 = extractvalue %dx.types.ResRet.f32 %1313, 2
  br label %1317

; <label>:1317                                    ; preds = %1274, %1231
  %1318 = phi float [ %1314, %1274 ], [ 1.000000e+00, %1231 ]
  %1319 = phi float [ %1315, %1274 ], [ 1.000000e+00, %1231 ]
  %1320 = phi float [ %1316, %1274 ], [ 1.000000e+00, %1231 ]
  %1321 = fmul fast float %1318, %1238
  %1322 = call float @dx.op.dot3.f32(i32 55, float %1318, float %1319, float %1320, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1323 = select i1 %108, float %1322, float %1318
  %1324 = select i1 %108, float %1322, float %1319
  %1325 = select i1 %108, float 1.000000e+00, float %1320
  %1326 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1327 = extractvalue %dx.types.CBufRet.i32 %1326, 3
  %1328 = and i32 %1327, 3
  %1329 = icmp ne i32 %1328, 0
  %1330 = and i32 %1327, 4
  %1331 = icmp ne i32 %1330, 0
  %1332 = and i1 %1329, %1331
  %1333 = and i1 %108, %1332
  br i1 %1333, label %1334, label %1340

; <label>:1334                                    ; preds = %1317
  %1335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1336 = extractvalue %dx.types.CBufRet.f32 %1335, 1
  %1337 = fadd fast float %1321, -1.000000e+00
  %1338 = fmul fast float %1336, %1337
  %1339 = fadd fast float %1338, 1.000000e+00
  br label %1340

; <label>:1340                                    ; preds = %1334, %1317
  %1341 = phi float [ %1339, %1334 ], [ %1321, %1317 ]
  %1342 = fadd fast float %1235, %1232
  %1343 = fmul fast float %1323, %1342
  %1344 = fadd fast float %1236, %1233
  %1345 = fmul fast float %1324, %1344
  %1346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1347 = extractvalue %dx.types.CBufRet.f32 %1346, 0
  br i1 %108, label %1348, label %1367

; <label>:1348                                    ; preds = %1340
  %1349 = fadd fast float %1343, %1345
  %1350 = fmul fast float %1347, %1349
  %1351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1352 = extractvalue %dx.types.CBufRet.f32 %1351, 3
  %1353 = extractvalue %dx.types.CBufRet.f32 %772, 1
  %1354 = fsub fast float %775, %1353
  %1355 = extractvalue %dx.types.CBufRet.f32 %772, 2
  %1356 = fmul fast float %1354, %1355
  %1357 = call float @dx.op.unary.f32(i32 7, float %1356)  ; Saturate(value)
  %1358 = fsub fast float %1357, %1352
  %1359 = fmul fast float %1358, %1341
  %1360 = fadd fast float %1359, %1352
  %1361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1362 = extractvalue %dx.types.CBufRet.f32 %1361, 0
  %1363 = fsub fast float %1360, %1362
  %1364 = fmul fast float %1363, 1.000000e+01
  %1365 = call float @dx.op.unary.f32(i32 7, float %1364)  ; Saturate(value)
  %1366 = fmul fast float %1360, %1365
  br label %1378

; <label>:1367                                    ; preds = %1340
  %1368 = fadd fast float %1237, %1234
  %1369 = fmul fast float %1325, %1368
  %1370 = fmul fast float %1347, %1343
  %1371 = fmul fast float %1347, %1345
  %1372 = fmul fast float %1369, %1347
  %1373 = call float @dx.op.binary.f32(i32 35, float %1371, float %1372)  ; FMax(a,b)
  %1374 = call float @dx.op.binary.f32(i32 35, float %1370, float %1373)  ; FMax(a,b)
  %1375 = call float @dx.op.binary.f32(i32 35, float %1374, float 0.000000e+00)  ; FMax(a,b)
  %1376 = fcmp fast ugt float %1375, 0x3F10000000000000
  br i1 %1376, label %1378, label %1377

; <label>:1377                                    ; preds = %1367
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1378

; <label>:1378                                    ; preds = %1377, %1367, %1348
  %1379 = phi float [ %1350, %1348 ], [ %1370, %1377 ], [ %1370, %1367 ]
  %1380 = phi float [ %1366, %1348 ], [ %1371, %1377 ], [ %1371, %1367 ]
  %1381 = phi float [ %1365, %1348 ], [ %1372, %1377 ], [ %1372, %1367 ]
  %1382 = phi float [ %1365, %1348 ], [ 0.000000e+00, %1377 ], [ 0.000000e+00, %1367 ]
  %1383 = fadd fast float %550, 0x3FE3C6EF40000000
  %1384 = call float @dx.op.unary.f32(i32 22, float %1383)  ; Frc(value)
  %1385 = call float @dx.op.unary.f32(i32 23, float %1379)  ; Log(value)
  %1386 = fadd fast float %1385, -7.000000e+00
  %1387 = call float @dx.op.unary.f32(i32 21, float %1386)  ; Exp(value)
  %1388 = fmul fast float %1384, 2.000000e+00
  %1389 = fadd fast float %1388, -1.000000e+00
  %1390 = fmul fast float %1387, %1389
  %1391 = fcmp fast ogt float %1379, 0.000000e+00
  %1392 = select i1 %1391, float %1390, float 0.000000e+00
  %1393 = fadd fast float %1392, %1379
  %1394 = fadd fast float %550, 0x3FF3C6EF40000000
  %1395 = call float @dx.op.unary.f32(i32 22, float %1394)  ; Frc(value)
  %1396 = call float @dx.op.unary.f32(i32 23, float %1380)  ; Log(value)
  %1397 = fadd fast float %1396, -7.000000e+00
  %1398 = call float @dx.op.unary.f32(i32 21, float %1397)  ; Exp(value)
  %1399 = fmul fast float %1395, 2.000000e+00
  %1400 = fadd fast float %1399, -1.000000e+00
  %1401 = fmul fast float %1398, %1400
  %1402 = fcmp fast ogt float %1380, 0.000000e+00
  %1403 = select i1 %1402, float %1401, float 0.000000e+00
  %1404 = fadd fast float %1403, %1380
  %1405 = fadd fast float %550, 0x3FFDAA66E0000000
  %1406 = call float @dx.op.unary.f32(i32 22, float %1405)  ; Frc(value)
  %1407 = call float @dx.op.unary.f32(i32 23, float %1381)  ; Log(value)
  %1408 = fadd fast float %1407, -6.000000e+00
  %1409 = call float @dx.op.unary.f32(i32 21, float %1408)  ; Exp(value)
  %1410 = fmul fast float %1406, 2.000000e+00
  %1411 = fadd fast float %1410, -1.000000e+00
  %1412 = fmul fast float %1409, %1411
  %1413 = fcmp fast ogt float %1381, 0.000000e+00
  %1414 = select i1 %1413, float %1412, float 0.000000e+00
  %1415 = fadd fast float %1414, %1381
  %1416 = select i1 %108, float %1380, float %1404
  %1417 = select i1 %108, float %1381, float %1415
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1418 = call float @dx.op.binary.f32(i32 36, float %1393, float 3.225500e+04)  ; FMin(a,b)
  %1419 = call float @dx.op.binary.f32(i32 36, float %1416, float 3.225500e+04)  ; FMin(a,b)
  %1420 = call float @dx.op.binary.f32(i32 36, float %1417, float 3.225500e+04)  ; FMin(a,b)
  %1421 = call float @dx.op.binary.f32(i32 36, float %1382, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1418)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1419)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1420)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1421)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1382)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1382)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1382)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1382)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!33}
!dx.entryPoints = !{!34}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !25, !28}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !17, !18, !19, !21, !22, !23, !24}
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
!17 = !{i32 9, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!18 = !{i32 10, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!19 = !{i32 11, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !20}
!20 = !{i32 0, i32 14}
!21 = !{i32 12, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!22 = !{i32 13, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 7, i32 0, !7}
!23 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!24 = !{i32 15, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 46, i32 1, i32 4, i32 0, !7}
!25 = !{!26, !27}
!26 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!27 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!28 = !{!29, !30, !31, !32}
!29 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!30 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!31 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!32 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!33 = !{[33 x i32] [i32 31, i32 8, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 254, i32 7, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255, i32 255, i32 7, i32 255, i32 255, i32 0, i32 0, i32 3, i32 3, i32 7, i32 7, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 255]}
!34 = !{void ()* @ps_main, !"ps_main", !35, !4, !57}
!35 = !{!36, !53, null}
!36 = !{!37, !40, !41, !43, !45, !47, !49, !50, !52}
!37 = !{i32 0, !"SV_Position", i8 9, i8 3, !38, i8 4, i32 1, i8 4, i32 0, i8 0, !39}
!38 = !{i32 0}
!39 = !{i32 3, i32 15}
!40 = !{i32 1, !"COLOR", i8 9, i8 0, !38, i8 2, i32 1, i8 4, i32 1, i8 0, !39}
!41 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !38, i8 2, i32 1, i8 2, i32 2, i8 0, !42}
!42 = !{i32 3, i32 3}
!43 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !44, i8 2, i32 1, i8 4, i32 3, i8 0, !39}
!44 = !{i32 3}
!45 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !46, i8 3, i32 1, i8 2, i32 4, i8 0, !42}
!46 = !{i32 5}
!47 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !48, i8 2, i32 1, i8 4, i32 5, i8 0, !39}
!48 = !{i32 8}
!49 = !{i32 6, !"QUAD_POSITION", i8 9, i8 0, !38, i8 1, i32 1, i8 4, i32 6, i8 0, !39}
!50 = !{i32 7, !"COLOR", i8 5, i8 0, !44, i8 1, i32 1, i8 3, i32 7, i8 0, !51}
!51 = !{i32 3, i32 5}
!52 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !38, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!53 = !{!54, !55}
!54 = !{i32 0, !"SV_Target", i8 9, i8 16, !38, i8 0, i32 1, i8 4, i32 0, i8 0, !39}
!55 = !{i32 1, !"SV_Target", i8 9, i8 16, !56, i8 0, i32 1, i8 4, i32 1, i8 0, !39}
!56 = !{i32 1}
!57 = !{i32 0, i64 24}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 1}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 1}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 1}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 1}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 1}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 1}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 1}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 1}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 1}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 1}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 1}

