;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float      w
; TEXCOORD                 0   xy          2     NONE   float   xy  
; TEXCOORD                 2   xyzw        3     NONE   float   xyz 
; TEXCOORD                 3   xyzw        4     NONE   float   xyzw
; TEXCOORD                 5   xy          5     NONE   float   xy  
; TEXCOORD                 8   xyzw        6     NONE   float   xyzw
; QUAD_POSITION            0   xyzw        7     NONE   float   xyzw
; COLOR                    3   xyz         8     NONE    uint   x z 
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
; shader hash: 5282c60d5b0965fd08339dac2d5ed889
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
; TEXCOORD                 2        nointerpolation       
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
; Number of inputs: 35, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 24, 25, 26, 27, 28, 29, 30, 31, 32, 34 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 24, 25, 26, 27, 28, 29, 30, 31, 32, 34 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 26, 27, 28, 29, 30, 31, 32, 34 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 28, 29, 30, 31, 32, 34 }
;   output 4 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 28, 29, 30, 31, 32, 34 }
;   output 5 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 28, 29, 30, 31, 32, 34 }
;   output 6 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 28, 29, 30, 31, 32, 34 }
;   output 7 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 28, 29, 30, 31, 32, 34 }
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
  %21 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
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
  %165 = phi float [ %40, %137 ], [ %144, %150 ], [ %163, %158 ], [ %144, %156 ]
  %166 = phi float [ %41, %137 ], [ %155, %150 ], [ %145, %158 ], [ %145, %156 ]
  %167 = fadd fast float %40, %37
  %168 = fadd fast float %41, %38
  %169 = add i32 %22, 72
  %170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %169, i32 undef)  ; BufferLoad(srv,index,wot)
  %171 = extractvalue %dx.types.ResRet.i32 %170, 0
  %172 = extractvalue %dx.types.ResRet.i32 %170, 1
  %173 = bitcast i32 %171 to float
  %174 = bitcast i32 %172 to float
  %175 = fmul fast float %173, %40
  %176 = fmul fast float %174, %41
  %177 = call float @dx.op.unary.f32(i32 22, float %175)  ; Frc(value)
  %178 = call float @dx.op.unary.f32(i32 22, float %176)  ; Frc(value)
  %179 = and i32 %128, 16
  %180 = icmp ne i32 %179, 0
  %181 = select i1 %180, float 1.000000e+00, float %42
  %182 = icmp eq i32 %179, 0
  br i1 %182, label %202, label %183, !dx.controlflow.hints !62

; <label>:183                                     ; preds = %164
  %184 = add i32 %125, 64
  %185 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %184, i32 undef)  ; BufferLoad(srv,index,wot)
  %186 = extractvalue %dx.types.ResRet.f32 %185, 0
  %187 = fadd fast float %186, 1.000000e+00
  %188 = fmul fast float %187, %42
  %189 = fsub fast float %188, %186
  %190 = fsub fast float %187, %189
  %191 = call float @dx.op.unary.f32(i32 7, float %190)  ; Saturate(value)
  %192 = fsub fast float 1.000000e+00, %188
  %193 = call float @dx.op.unary.f32(i32 7, float %192)  ; Saturate(value)
  %194 = fsub fast float %191, %193
  %195 = fsub fast float %181, %193
  %196 = fdiv fast float %195, %194
  %197 = call float @dx.op.unary.f32(i32 7, float %196)  ; Saturate(value)
  %198 = fmul fast float %197, 2.000000e+00
  %199 = fsub fast float 3.000000e+00, %198
  %200 = fmul fast float %197, %197
  %201 = fmul fast float %200, %199
  br label %202

; <label>:202                                     ; preds = %183, %164
  %203 = phi float [ %201, %183 ], [ %181, %164 ]
  %204 = fcmp fast ogt float %203, 0.000000e+00
  br i1 %204, label %206, label %205

; <label>:205                                     ; preds = %202
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %206

; <label>:206                                     ; preds = %205, %202
  %207 = call float @dx.op.unary.f32(i32 7, float %203)  ; Saturate(value)
  %208 = fmul fast float %50, 5.000000e-01
  %209 = fmul fast float %51, 5.000000e-01
  %210 = fptosi float %208 to i32
  %211 = fptosi float %209 to i32
  %212 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %8, i32 0, i32 %210, i32 %211, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %213 = extractvalue %dx.types.ResRet.i32 %212, 0
  %214 = lshr i32 %213, 18
  %215 = uitofp i32 %214 to float
  %216 = fmul fast float %215, 0x3F4C00EBA0000000
  %217 = call float @dx.op.unary.f32(i32 21, float %216)  ; Exp(value)
  %218 = fadd fast float %217, -1.000000e+00
  %219 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %8, i32 0)  ; GetDimensions(handle,mipLevel)
  %220 = extractvalue %dx.types.Dimensions %219, 0
  %221 = sitofp i32 %220 to float
  %222 = extractvalue %dx.types.Dimensions %219, 1
  %223 = sitofp i32 %222 to float
  %224 = fcmp fast oge float %208, %221
  %225 = fcmp fast oge float %209, %223
  %226 = or i1 %224, %225
  %227 = select i1 %226, float 0x4197782600000000, float %218
  %228 = fsub fast float %227, %46
  %229 = fcmp fast ogt float %228, 0.000000e+00
  %230 = and i32 %124, -2
  %231 = icmp eq i32 %230, 2
  %232 = and i1 %231, %229
  %233 = xor i1 %229, true
  %234 = icmp eq i32 %124, 1
  %235 = and i1 %234, %233
  %236 = or i1 %232, %235
  %237 = and i32 %128, 262144
  %238 = icmp ne i32 %237, 0
  %239 = and i1 %238, %236
  %240 = xor i1 %236, true
  %241 = and i32 %128, 131072
  %242 = icmp ne i32 %241, 0
  %243 = and i1 %242, %240
  %244 = or i1 %239, %243
  br i1 %244, label %245, label %246

; <label>:245                                     ; preds = %206
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %246

; <label>:246                                     ; preds = %245, %206
  %247 = and i32 %128, 32
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %499, label %249, !dx.controlflow.hints !63

; <label>:249                                     ; preds = %246
  %250 = add i32 %125, 80
  %251 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %250, i32 undef)  ; BufferLoad(srv,index,wot)
  %252 = extractvalue %dx.types.ResRet.f32 %251, 0
  %253 = extractvalue %dx.types.ResRet.f32 %251, 1
  %254 = extractvalue %dx.types.ResRet.f32 %251, 2
  %255 = extractvalue %dx.types.ResRet.f32 %251, 3
  %256 = add i32 %125, 96
  %257 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %256, i32 undef)  ; BufferLoad(srv,index,wot)
  %258 = extractvalue %dx.types.ResRet.f32 %257, 0
  %259 = extractvalue %dx.types.ResRet.f32 %257, 1
  %260 = extractvalue %dx.types.ResRet.f32 %257, 2
  %261 = add i32 %125, 112
  %262 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %261, i32 undef)  ; BufferLoad(srv,index,wot)
  %263 = extractvalue %dx.types.ResRet.f32 %262, 0
  %264 = extractvalue %dx.types.ResRet.f32 %262, 1
  %265 = extractvalue %dx.types.ResRet.f32 %262, 2
  %266 = extractvalue %dx.types.ResRet.f32 %262, 3
  %267 = add i32 %125, 128
  %268 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %267, i32 undef)  ; BufferLoad(srv,index,wot)
  %269 = extractvalue %dx.types.ResRet.f32 %268, 0
  %270 = extractvalue %dx.types.ResRet.f32 %268, 1
  %271 = extractvalue %dx.types.ResRet.f32 %268, 2
  %272 = extractvalue %dx.types.ResRet.f32 %268, 3
  %273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %126, i32 undef)  ; BufferLoad(srv,index,wot)
  %274 = extractvalue %dx.types.ResRet.i32 %273, 0
  %275 = and i32 %274, 4096
  %276 = icmp ne i32 %275, 0
  %277 = fcmp fast une float %260, 0.000000e+00
  %278 = and i32 %274, 64
  %279 = icmp ne i32 %278, 0
  %280 = and i32 %274, 128
  %281 = icmp eq i32 %280, 0
  %282 = and i32 %274, 2048
  %283 = icmp eq i32 %282, 0
  %284 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %285 = extractvalue %dx.types.Dimensions %284, 0
  %286 = sitofp i32 %285 to float
  %287 = extractvalue %dx.types.Dimensions %284, 1
  %288 = sitofp i32 %287 to float
  %289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %290 = extractvalue %dx.types.CBufRet.f32 %289, 2
  %291 = extractvalue %dx.types.CBufRet.f32 %289, 3
  %292 = fmul fast float %290, %50
  %293 = fmul fast float %291, %51
  %294 = fmul fast float %292, %286
  %295 = fmul fast float %293, %288
  %296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %297 = extractvalue %dx.types.CBufRet.f32 %296, 1
  %298 = fsub fast float -0.000000e+00, %297
  %299 = fptoui float %298 to i32
  %300 = fptoui float %294 to i32
  %301 = fptoui float %295 to i32
  %302 = and i32 %299, 31
  %303 = lshr i32 %300, %302
  %304 = lshr i32 %301, %302
  %305 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 %299, i32 %303, i32 %304, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %306 = extractvalue %dx.types.ResRet.f32 %305, 0
  %307 = fcmp fast ogt float %306, -1.000000e+00
  %308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %309 = extractvalue %dx.types.CBufRet.f32 %308, 1
  %310 = select i1 %307, float %309, float 1.000000e+00
  %311 = fadd fast float %306, 1.000000e+00
  %312 = fmul fast float %310, %311
  %313 = call float @dx.op.unary.f32(i32 6, float %312)  ; FAbs(value)
  %314 = extractvalue %dx.types.CBufRet.f32 %308, 3
  %315 = fcmp fast oge float %313, %314
  %316 = select i1 %315, float 0x4197782600000000, float %313
  br i1 %283, label %394, label %317, !dx.controlflow.hints !64

; <label>:317                                     ; preds = %249
  %318 = fmul fast float %55, %290
  %319 = fmul fast float %57, %291
  %320 = fsub fast float 1.000000e+00, %318
  %321 = fsub fast float 1.000000e+00, %319
  %322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %323 = extractvalue %dx.types.CBufRet.f32 %322, 0
  %324 = extractvalue %dx.types.CBufRet.f32 %322, 1
  %325 = extractvalue %dx.types.CBufRet.f32 %322, 2
  %326 = fmul fast float %320, %323
  %327 = fmul fast float %320, %324
  %328 = fmul fast float %320, %325
  %329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %330 = extractvalue %dx.types.CBufRet.f32 %329, 0
  %331 = extractvalue %dx.types.CBufRet.f32 %329, 1
  %332 = extractvalue %dx.types.CBufRet.f32 %329, 2
  %333 = fmul fast float %321, %330
  %334 = fmul fast float %321, %331
  %335 = fmul fast float %321, %332
  %336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %337 = extractvalue %dx.types.CBufRet.f32 %336, 0
  %338 = extractvalue %dx.types.CBufRet.f32 %336, 1
  %339 = extractvalue %dx.types.CBufRet.f32 %336, 2
  %340 = fadd fast float %333, %337
  %341 = fadd fast float %340, %326
  %342 = fadd fast float %334, %338
  %343 = fadd fast float %342, %327
  %344 = fadd fast float %335, %339
  %345 = fadd fast float %344, %328
  %346 = fmul fast float %341, %316
  %347 = fmul fast float %343, %316
  %348 = fmul fast float %345, %316
  %349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %350 = extractvalue %dx.types.CBufRet.f32 %349, 0
  %351 = extractvalue %dx.types.CBufRet.f32 %349, 1
  %352 = extractvalue %dx.types.CBufRet.f32 %349, 2
  %353 = fsub fast float %350, %23
  %354 = fadd fast float %353, %346
  %355 = fsub fast float %351, %24
  %356 = fadd fast float %355, %347
  %357 = fsub fast float %352, %25
  %358 = fadd fast float %357, %348
  %359 = fmul fast float %26, %26
  %360 = call float @dx.op.dot3.f32(i32 55, float %354, float %356, float %358, float %354, float %356, float %358)  ; Dot3(ax,ay,az,bx,by,bz)
  %361 = fsub fast float %359, %360
  %362 = fmul fast float %259, %359
  %363 = fmul fast float %258, %359
  %364 = fcmp fast olt float %361, %362
  %365 = fcmp fast ogt float %361, %363
  %366 = or i1 %364, %365
  %367 = select i1 %366, float 0.000000e+00, float %361
  %368 = fsub fast float %258, %259
  %369 = fmul fast float %368, %359
  %370 = fsub fast float %367, %362
  %371 = fdiv fast float %370, %369
  %372 = call float @dx.op.unary.f32(i32 7, float %371)  ; Saturate(value)
  %373 = fmul fast float %372, 2.000000e+00
  %374 = fsub fast float 3.000000e+00, %373
  %375 = fmul fast float %372, %372
  %376 = fmul fast float %375, %374
  %377 = fsub fast float %266, %272
  %378 = fmul fast float %376, %377
  %379 = fadd fast float %378, %272
  %380 = fmul fast float %263, %27
  %381 = fmul fast float %264, %28
  %382 = fmul fast float %265, %29
  %383 = fsub fast float %380, %269
  %384 = fsub fast float %381, %270
  %385 = fsub fast float %382, %271
  %386 = fmul fast float %376, %383
  %387 = fmul fast float %376, %384
  %388 = fmul fast float %376, %385
  %389 = fadd fast float %386, %269
  %390 = fadd fast float %387, %270
  %391 = fadd fast float %388, %271
  %392 = fmul fast float %252, %252
  %393 = fmul fast float %392, %367
  br label %489

; <label>:394                                     ; preds = %249
  %395 = and i32 %274, 256
  %396 = icmp eq i32 %395, 0
  %397 = fsub fast float %316, %46
  br i1 %396, label %446, label %398

; <label>:398                                     ; preds = %394
  %399 = fadd fast float %258, %46
  %400 = fcmp fast olt float %316, %46
  %401 = fcmp fast ogt float %316, %399
  %402 = or i1 %400, %401
  %403 = select i1 %402, float 0.000000e+00, float %397
  %404 = call float @dx.op.unary.f32(i32 83, float %316)  ; DerivCoarseX(value)
  %405 = call float @dx.op.unary.f32(i32 84, float %316)  ; DerivCoarseY(value)
  %406 = fmul fast float %404, %404
  %407 = fmul fast float %405, %405
  %408 = fadd fast float %407, %406
  %409 = call float @dx.op.unary.f32(i32 24, float %408)  ; Sqrt(value)
  %410 = extractvalue %dx.types.CBufRet.f32 %296, 2
  %411 = fmul fast float %410, %409
  %412 = call float @dx.op.unary.f32(i32 7, float %411)  ; Saturate(value)
  %413 = fmul fast float %412, %259
  %414 = fdiv fast float %397, %413
  %415 = call float @dx.op.unary.f32(i32 7, float %414)  ; Saturate(value)
  %416 = fmul fast float %415, 2.000000e+00
  %417 = fsub fast float 3.000000e+00, %416
  %418 = fmul fast float %415, %415
  %419 = fmul fast float %418, %417
  %420 = fsub fast float %316, %399
  %421 = fadd fast float %420, %413
  %422 = fdiv fast float %421, %413
  %423 = call float @dx.op.unary.f32(i32 7, float %422)  ; Saturate(value)
  %424 = fmul fast float %423, 2.000000e+00
  %425 = fsub fast float 3.000000e+00, %424
  %426 = fmul fast float %423, %423
  %427 = fmul fast float %426, %425
  %428 = fsub fast float %419, %427
  %429 = fsub fast float %266, %272
  %430 = fmul fast float %428, %429
  %431 = fadd fast float %430, %272
  %432 = fmul fast float %263, %27
  %433 = fmul fast float %264, %28
  %434 = fmul fast float %265, %29
  %435 = fsub fast float %432, %269
  %436 = fsub fast float %433, %270
  %437 = fsub fast float %434, %271
  %438 = fmul fast float %428, %435
  %439 = fmul fast float %428, %436
  %440 = fmul fast float %428, %437
  %441 = fadd fast float %438, %269
  %442 = fadd fast float %439, %270
  %443 = fadd fast float %440, %271
  %444 = fmul fast float %403, %252
  %445 = call float @dx.op.unary.f32(i32 6, float %444)  ; FAbs(value)
  br label %489

; <label>:446                                     ; preds = %394
  br i1 %277, label %447, label %460

; <label>:447                                     ; preds = %446
  %448 = fdiv fast float 5.000000e+01, %26
  %449 = select i1 %279, float %448, float 1.000000e+00
  %450 = fmul fast float %449, %252
  %451 = fmul fast float %177, 2.000000e+00
  %452 = fmul fast float %178, 2.000000e+00
  %453 = fadd fast float %451, -1.000000e+00
  %454 = fadd fast float %452, -1.000000e+00
  %455 = call float @dx.op.dot2.f32(i32 54, float %453, float %454, float %453, float %454)  ; Dot2(ax,ay,bx,by)
  %456 = fmul fast float %260, %26
  %457 = fmul fast float %456, %455
  %458 = fsub fast float %397, %457
  %459 = fmul fast float %450, %458
  br label %489

; <label>:460                                     ; preds = %446
  br i1 %281, label %481, label %461

; <label>:461                                     ; preds = %460
  %462 = fmul fast float %26, 0x3F947AE140000000
  %463 = select i1 %279, float %462, float 1.000000e+00
  %464 = fdiv fast float 1.000000e+00, %463
  %465 = fmul fast float %463, %253
  %466 = fmul fast float %463, %254
  %467 = fmul fast float %464, %255
  %468 = call float @dx.op.unary.f32(i32 6, float %397)  ; FAbs(value)
  %469 = fcmp fast olt float %468, %465
  br i1 %469, label %470, label %474, !dx.controlflow.hints !65

; <label>:470                                     ; preds = %461
  %471 = fmul fast float %464, %252
  %472 = fmul fast float %471, %468
  %473 = call float @dx.op.unary.f32(i32 6, float %472)  ; FAbs(value)
  br label %489

; <label>:474                                     ; preds = %461
  %475 = fcmp fast ogt float %468, %466
  br i1 %475, label %476, label %489

; <label>:476                                     ; preds = %474
  %477 = fsub fast float %468, %466
  %478 = fmul fast float %467, %477
  %479 = call float @dx.op.unary.f32(i32 6, float %478)  ; FAbs(value)
  %480 = fsub fast float 1.000000e+00, %479
  br label %489

; <label>:481                                     ; preds = %460
  %482 = fdiv fast float 5.000000e+01, %26
  %483 = select i1 %279, float %482, float 1.000000e+00
  %484 = fmul fast float %483, %252
  %485 = call float @dx.op.unary.f32(i32 6, float %228)  ; FAbs(value)
  %486 = select i1 %276, float %485, float 0x47EFFFFFE0000000
  %487 = call float @dx.op.binary.f32(i32 36, float %397, float %486)  ; FMin(a,b)
  %488 = fmul fast float %484, %487
  br label %489

; <label>:489                                     ; preds = %481, %476, %474, %470, %447, %398, %317
  %490 = phi float [ %393, %317 ], [ %445, %398 ], [ %459, %447 ], [ %488, %481 ], [ %473, %470 ], [ %480, %476 ], [ %468, %474 ]
  %491 = phi float [ %389, %317 ], [ %441, %398 ], [ %27, %447 ], [ %27, %481 ], [ %27, %470 ], [ %27, %476 ], [ %27, %474 ]
  %492 = phi float [ %390, %317 ], [ %442, %398 ], [ %28, %447 ], [ %28, %481 ], [ %28, %470 ], [ %28, %476 ], [ %28, %474 ]
  %493 = phi float [ %391, %317 ], [ %443, %398 ], [ %29, %447 ], [ %29, %481 ], [ %29, %470 ], [ %29, %476 ], [ %29, %474 ]
  %494 = phi float [ %379, %317 ], [ %431, %398 ], [ 1.000000e+00, %447 ], [ 1.000000e+00, %481 ], [ 1.000000e+00, %470 ], [ 1.000000e+00, %476 ], [ 1.000000e+00, %474 ]
  %495 = call float @dx.op.unary.f32(i32 7, float %490)  ; Saturate(value)
  %496 = fmul fast float %495, %42
  %497 = fmul fast float %494, %207
  %498 = fmul fast float %497, %495
  br label %499

; <label>:499                                     ; preds = %489, %246
  %500 = phi float [ %498, %489 ], [ %207, %246 ]
  %501 = phi float [ %496, %489 ], [ %42, %246 ]
  %502 = phi float [ %491, %489 ], [ %27, %246 ]
  %503 = phi float [ %492, %489 ], [ %28, %246 ]
  %504 = phi float [ %493, %489 ], [ %29, %246 ]
  %505 = fmul fast float %502, %30
  %506 = fmul fast float %503, %30
  %507 = fmul fast float %504, %30
  %508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %509 = extractvalue %dx.types.CBufRet.f32 %508, 2
  %510 = fptosi float %46 to i32
  %511 = sitofp i32 %510 to float
  %512 = fadd fast float %509, %511
  %513 = fmul fast float %512, 0x3FE3C6EF40000000
  %514 = frem fast float %50, 2.560000e+02
  %515 = frem fast float %51, 2.560000e+02
  %516 = fptoui float %514 to i32
  %517 = fptoui float %515 to i32
  %518 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %516, i32 %517, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %519 = extractvalue %dx.types.ResRet.f32 %518, 0
  %520 = fadd fast float %519, %513
  %521 = call float @dx.op.unary.f32(i32 22, float %520)  ; Frc(value)
  %522 = and i32 %128, 1
  %523 = icmp eq i32 %522, 0
  br i1 %523, label %581, label %524, !dx.controlflow.hints !66

; <label>:524                                     ; preds = %499
  %525 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %125, i32 undef)  ; BufferLoad(srv,index,wot)
  %526 = extractvalue %dx.types.ResRet.f32 %525, 2
  %527 = extractvalue %dx.types.ResRet.f32 %525, 3
  %528 = add i32 %125, 16
  %529 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %528, i32 undef)  ; BufferLoad(srv,index,wot)
  %530 = extractvalue %dx.types.ResRet.f32 %529, 0
  %531 = extractvalue %dx.types.ResRet.f32 %529, 1
  %532 = extractvalue %dx.types.ResRet.f32 %529, 2
  %533 = add i32 %125, 32
  %534 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %533, i32 undef)  ; BufferLoad(srv,index,wot)
  %535 = extractvalue %dx.types.ResRet.f32 %534, 0
  %536 = extractvalue %dx.types.ResRet.f32 %534, 1
  %537 = extractvalue %dx.types.ResRet.f32 %534, 2
  %538 = and i32 %128, 2
  %539 = icmp eq i32 %538, 0
  %540 = call float @dx.op.dot3.f32(i32 55, float %33, float %34, float %35, float %33, float %34, float %35)  ; Dot3(ax,ay,az,bx,by,bz)
  %541 = call float @dx.op.unary.f32(i32 25, float %540)  ; Rsqrt(value)
  %542 = fmul fast float %541, %33
  %543 = fmul fast float %541, %34
  %544 = fmul fast float %541, %35
  %545 = call float @dx.op.dot3.f32(i32 55, float %85, float %86, float %87, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %546 = call float @dx.op.unary.f32(i32 25, float %545)  ; Rsqrt(value)
  %547 = fmul fast float %546, %85
  %548 = fmul fast float %546, %86
  %549 = fmul fast float %546, %87
  %550 = call float @dx.op.dot3.f32(i32 55, float %547, float %548, float %549, float %542, float %543, float %544)  ; Dot3(ax,ay,az,bx,by,bz)
  %551 = fmul fast float %550, %550
  %552 = fmul fast float %551, %526
  %553 = fadd fast float %552, %527
  %554 = call float @dx.op.unary.f32(i32 7, float %553)  ; Saturate(value)
  br i1 %539, label %555, label %565, !dx.controlflow.hints !67

; <label>:555                                     ; preds = %524
  %556 = extractvalue %dx.types.ResRet.f32 %525, 1
  %557 = extractvalue %dx.types.ResRet.f32 %525, 0
  %558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %559 = extractvalue %dx.types.CBufRet.f32 %558, 3
  %560 = fmul fast float %559, %545
  %561 = fsub fast float %557, %560
  %562 = fmul fast float %561, %556
  %563 = call float @dx.op.unary.f32(i32 7, float %562)  ; Saturate(value)
  %564 = fmul fast float %563, %554
  br label %565

; <label>:565                                     ; preds = %555, %524
  %566 = phi float [ %564, %555 ], [ %554, %524 ]
  %567 = fsub fast float %530, %535
  %568 = fsub fast float %531, %536
  %569 = fsub fast float %532, %537
  %570 = fmul fast float %566, %567
  %571 = fmul fast float %566, %568
  %572 = fmul fast float %566, %569
  %573 = fadd fast float %570, %535
  %574 = fadd fast float %571, %536
  %575 = fadd fast float %572, %537
  %576 = fmul fast float %573, %505
  %577 = fmul fast float %574, %506
  %578 = fmul fast float %575, %507
  %579 = fmul fast float %566, %500
  %580 = fmul fast float %566, %501
  br label %581

; <label>:581                                     ; preds = %565, %499
  %582 = phi float [ %579, %565 ], [ %500, %499 ]
  %583 = phi float [ %580, %565 ], [ %501, %499 ]
  %584 = phi float [ %576, %565 ], [ %505, %499 ]
  %585 = phi float [ %577, %565 ], [ %506, %499 ]
  %586 = phi float [ %578, %565 ], [ %507, %499 ]
  %587 = add i32 %22, 120
  %588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %587, i32 undef)  ; BufferLoad(srv,index,wot)
  %589 = extractvalue %dx.types.ResRet.i32 %588, 0
  %590 = add i32 %589, 0
  %591 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %590, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %592 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %591, %dx.types.Handle %47, float %165, float %166, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %593 = extractvalue %dx.types.ResRet.f32 %592, 0
  %594 = extractvalue %dx.types.ResRet.f32 %592, 1
  %595 = extractvalue %dx.types.ResRet.f32 %592, 2
  %596 = add i32 %22, 44
  %597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %596, i32 undef)  ; BufferLoad(srv,index,wot)
  %598 = extractvalue %dx.types.ResRet.i32 %597, 0
  %599 = shl i32 %598, 4
  %600 = and i32 %599, 32752
  %601 = call float @dx.op.legacyF16ToF32(i32 131, i32 %600)  ; LegacyF16ToF32(value)
  %602 = lshr i32 %598, 7
  %603 = and i32 %602, 32752
  %604 = call float @dx.op.legacyF16ToF32(i32 131, i32 %603)  ; LegacyF16ToF32(value)
  %605 = lshr i32 %598, 22
  %606 = shl nuw nsw i32 %605, 5
  %607 = call float @dx.op.legacyF16ToF32(i32 131, i32 %606)  ; LegacyF16ToF32(value)
  %608 = fmul fast float %601, %593
  %609 = fmul fast float %604, %594
  %610 = fmul fast float %607, %595
  %611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %612 = extractvalue %dx.types.CBufRet.f32 %611, 0
  %613 = fmul fast float %608, %612
  %614 = fmul fast float %609, %612
  %615 = fmul fast float %610, %612
  %616 = add i32 %22, 48
  %617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %616, i32 undef)  ; BufferLoad(srv,index,wot)
  %618 = extractvalue %dx.types.ResRet.i32 %617, 0
  %619 = lshr i32 %618, 22
  %620 = shl nuw nsw i32 %619, 5
  %621 = call float @dx.op.legacyF16ToF32(i32 131, i32 %620)  ; LegacyF16ToF32(value)
  %622 = fmul fast float %621, %613
  %623 = select i1 %108, float %622, float %613
  %624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %587, i32 undef)  ; BufferLoad(srv,index,wot)
  %625 = extractvalue %dx.types.ResRet.i32 %624, 0
  %626 = add i32 %625, 0
  %627 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %626, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %628 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %627, %dx.types.Handle %47, float %167, float %168, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %629 = extractvalue %dx.types.ResRet.f32 %628, 0
  %630 = extractvalue %dx.types.ResRet.f32 %628, 1
  %631 = extractvalue %dx.types.ResRet.f32 %628, 2
  %632 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %596, i32 undef)  ; BufferLoad(srv,index,wot)
  %633 = extractvalue %dx.types.ResRet.i32 %632, 0
  %634 = shl i32 %633, 4
  %635 = and i32 %634, 32752
  %636 = call float @dx.op.legacyF16ToF32(i32 131, i32 %635)  ; LegacyF16ToF32(value)
  %637 = lshr i32 %633, 7
  %638 = and i32 %637, 32752
  %639 = call float @dx.op.legacyF16ToF32(i32 131, i32 %638)  ; LegacyF16ToF32(value)
  %640 = lshr i32 %633, 22
  %641 = shl nuw nsw i32 %640, 5
  %642 = call float @dx.op.legacyF16ToF32(i32 131, i32 %641)  ; LegacyF16ToF32(value)
  %643 = fmul fast float %636, %629
  %644 = fmul fast float %639, %630
  %645 = fmul fast float %642, %631
  %646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %647 = extractvalue %dx.types.CBufRet.f32 %646, 0
  %648 = fmul fast float %643, %647
  %649 = fmul fast float %644, %647
  %650 = fmul fast float %645, %647
  %651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %616, i32 undef)  ; BufferLoad(srv,index,wot)
  %652 = extractvalue %dx.types.ResRet.i32 %651, 0
  %653 = lshr i32 %652, 22
  %654 = shl nuw nsw i32 %653, 5
  %655 = call float @dx.op.legacyF16ToF32(i32 131, i32 %654)  ; LegacyF16ToF32(value)
  %656 = fmul fast float %655, %648
  %657 = select i1 %108, float %656, float %648
  %658 = fsub fast float %657, %623
  %659 = fsub fast float %649, %614
  %660 = fsub fast float %650, %615
  %661 = fmul fast float %658, %39
  %662 = fmul fast float %659, %39
  %663 = fmul fast float %660, %39
  %664 = fadd fast float %661, %623
  %665 = fadd fast float %662, %614
  %666 = fadd fast float %663, %615
  %667 = fsub fast float %629, %593
  %668 = fsub fast float %630, %594
  %669 = fsub fast float %631, %595
  %670 = fmul fast float %667, %39
  %671 = fmul fast float %668, %39
  %672 = fmul fast float %669, %39
  %673 = fadd fast float %670, %593
  %674 = fadd fast float %671, %594
  %675 = fadd fast float %672, %595
  %676 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %31, float %32, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %677 = extractvalue %dx.types.ResRet.f32 %676, 0
  %678 = extractvalue %dx.types.ResRet.f32 %676, 1
  %679 = extractvalue %dx.types.ResRet.f32 %676, 2
  %680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %681 = extractvalue %dx.types.CBufRet.f32 %680, 1
  %682 = fmul fast float %664, %584
  %683 = fmul fast float %665, %585
  %684 = fmul fast float %666, %586
  %685 = call float @dx.op.dot3.f32(i32 55, float %682, float %683, float %684, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %686 = select i1 %108, float 0.000000e+00, float %682
  %687 = select i1 %108, float %685, float %683
  %688 = select i1 %108, float 0.000000e+00, float %684
  %689 = call float @dx.op.dot3.f32(i32 55, float %673, float %674, float %675, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %690 = add i32 %22, 32
  %691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %690, i32 undef)  ; BufferLoad(srv,index,wot)
  %692 = extractvalue %dx.types.ResRet.i32 %691, 0
  %693 = and i32 %692, 255
  %694 = uitofp i32 %693 to float
  %695 = lshr i32 %692, 8
  %696 = and i32 %695, 255
  %697 = uitofp i32 %696 to float
  %698 = fmul fast float %697, %689
  %699 = fadd fast float %698, %694
  %700 = fmul fast float %699, 0x3F70101020000000
  %701 = call float @dx.op.unary.f32(i32 7, float %700)  ; Saturate(value)
  %702 = and i32 %128, 8192
  %703 = icmp eq i32 %702, 0
  %704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %705 = extractvalue %dx.types.CBufRet.f32 %704, 0
  br i1 %703, label %712, label %706, !dx.controlflow.hints !68

; <label>:706                                     ; preds = %581
  %707 = add i32 %125, 176
  %708 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %707, i32 undef)  ; BufferLoad(srv,index,wot)
  %709 = extractvalue %dx.types.ResRet.f32 %708, 0
  %710 = fcmp fast oge float %709, 0.000000e+00
  %711 = select i1 %710, float %709, float %705
  br label %719

; <label>:712                                     ; preds = %581
  %713 = add i32 %22, 104
  %714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %713, i32 undef)  ; BufferLoad(srv,index,wot)
  %715 = extractvalue %dx.types.ResRet.i32 %714, 0
  %716 = bitcast i32 %715 to float
  %717 = fcmp fast oge float %716, 0.000000e+00
  %718 = select i1 %717, float %716, float %705
  br label %719

; <label>:719                                     ; preds = %712, %706
  %720 = phi float [ %711, %706 ], [ %718, %712 ]
  %721 = fmul fast float %689, %583
  %722 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %8, i32 0, i32 %210, i32 %211, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %723 = extractvalue %dx.types.ResRet.i32 %722, 0
  %724 = lshr i32 %723, 18
  %725 = uitofp i32 %724 to float
  %726 = fmul fast float %725, 0x3F4C00EBA0000000
  %727 = call float @dx.op.unary.f32(i32 21, float %726)  ; Exp(value)
  %728 = fadd fast float %727, -1.000000e+00
  %729 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %8, i32 0)  ; GetDimensions(handle,mipLevel)
  %730 = extractvalue %dx.types.Dimensions %729, 0
  %731 = sitofp i32 %730 to float
  %732 = extractvalue %dx.types.Dimensions %729, 1
  %733 = sitofp i32 %732 to float
  %734 = fcmp fast oge float %208, %731
  %735 = fcmp fast oge float %209, %733
  %736 = or i1 %734, %735
  %737 = select i1 %736, float 0x4197782600000000, float %728
  %738 = icmp eq i32 %124, 3
  %739 = fcmp fast ogt float %46, %737
  %740 = and i1 %234, %739
  %741 = or i1 %738, %740
  %742 = icmp eq i32 %124, 2
  %743 = fcmp fast ole float %46, %737
  %744 = and i1 %742, %743
  %745 = or i1 %744, %741
  %746 = fmul fast float %502, %36
  %747 = fmul fast float %746, %664
  %748 = fmul fast float %747, %677
  %749 = fmul fast float %748, %681
  %750 = fmul fast float %503, %36
  %751 = fmul fast float %750, %665
  %752 = fmul fast float %751, %678
  %753 = fmul fast float %752, %681
  %754 = fmul fast float %504, %36
  %755 = fmul fast float %754, %666
  %756 = fmul fast float %755, %679
  %757 = fmul fast float %756, %681
  %758 = fadd fast float %749, %686
  %759 = fadd fast float %687, %753
  %760 = fadd fast float %757, %688
  %761 = fmul fast float %758, %582
  %762 = fmul fast float %759, %582
  %763 = fmul fast float %760, %582
  %764 = fmul fast float %720, %701
  %765 = fsub fast float 1.000000e+00, %701
  %766 = fsub fast float %765, %721
  %767 = call float @dx.op.unary.f32(i32 7, float %766)  ; Saturate(value)
  %768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %769 = extractvalue %dx.types.CBufRet.f32 %768, 3
  %770 = fmul fast float %769, %767
  %771 = fadd fast float %770, %764
  %772 = and i32 %128, 1048576
  %773 = icmp eq i32 %772, 0
  br i1 %773, label %865, label %774, !dx.controlflow.hints !69

; <label>:774                                     ; preds = %719
  %775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %776 = extractvalue %dx.types.CBufRet.f32 %775, 2
  %777 = extractvalue %dx.types.CBufRet.f32 %775, 3
  %778 = fmul fast float %776, %50
  %779 = fmul fast float %777, %51
  %780 = call float @dx.op.unary.f32(i32 7, float %778)  ; Saturate(value)
  %781 = call float @dx.op.unary.f32(i32 7, float %779)  ; Saturate(value)
  %782 = select i1 %745, i32 2, i32 0
  %783 = or i32 %782, 1
  %784 = uitofp i32 %783 to float
  %785 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %780, float %781, float %784, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %786 = extractvalue %dx.types.ResRet.f32 %785, 0
  %787 = extractvalue %dx.types.ResRet.f32 %785, 1
  %788 = extractvalue %dx.types.ResRet.f32 %785, 2
  %789 = extractvalue %dx.types.ResRet.f32 %785, 3
  %790 = add nuw nsw i32 %782, 2
  %791 = uitofp i32 %790 to float
  %792 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %780, float %781, float %791, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %793 = extractvalue %dx.types.ResRet.f32 %792, 0
  %794 = extractvalue %dx.types.ResRet.f32 %792, 1
  %795 = extractvalue %dx.types.ResRet.f32 %792, 2
  %796 = extractvalue %dx.types.ResRet.f32 %792, 3
  %797 = call float @dx.op.binary.f32(i32 35, float %787, float %788)  ; FMax(a,b)
  %798 = call float @dx.op.binary.f32(i32 35, float %786, float %797)  ; FMax(a,b)
  %799 = call float @dx.op.binary.f32(i32 35, float %798, float %789)  ; FMax(a,b)
  %800 = call float @dx.op.binary.f32(i32 36, float %794, float %795)  ; FMin(a,b)
  %801 = call float @dx.op.binary.f32(i32 36, float %793, float %800)  ; FMin(a,b)
  %802 = call float @dx.op.binary.f32(i32 36, float %801, float %796)  ; FMin(a,b)
  %803 = fmul fast float %799, 2.550000e+02
  %804 = fadd fast float %803, 0x3F70101020000000
  %805 = fptoui float %804 to i32
  %806 = fmul fast float %802, 2.550000e+02
  %807 = fadd fast float %806, 0x3F70101020000000
  %808 = fptoui float %807 to i32
  %809 = icmp ult i32 %805, %808
  br i1 %809, label %810, label %858

; <label>:810                                     ; preds = %774
  %811 = fcmp fast ogt float %45, 9.843750e-01
  %812 = fadd fast float %46, -4.000000e+00
  %813 = select i1 %811, float -4.000000e+00, float %812
  %814 = call float @dx.op.binary.f32(i32 35, float %813, float 0.000000e+00)  ; FMax(a,b)
  %815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %816 = extractvalue %dx.types.CBufRet.f32 %815, 0
  %817 = fadd fast float %816, %814
  %818 = extractvalue %dx.types.CBufRet.f32 %815, 2
  %819 = fmul fast float %817, %818
  %820 = call float @dx.op.unary.f32(i32 23, float %819)  ; Log(value)
  %821 = extractvalue %dx.types.CBufRet.f32 %815, 3
  %822 = fmul fast float %821, %820
  %823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %824 = extractvalue %dx.types.CBufRet.f32 %823, 2
  %825 = fmul fast float %822, %824
  %826 = call float @dx.op.unary.f32(i32 7, float %825)  ; Saturate(value)
  %827 = uitofp i32 %805 to float
  %828 = uitofp i32 %808 to float
  %829 = fadd fast float %827, 5.000000e-01
  %830 = fadd fast float %828, 5.000000e-01
  %831 = fmul fast float %824, %829
  %832 = fmul fast float %824, %830
  %833 = fadd fast float %831, 0x3F0FFB4800000000
  %834 = fadd fast float %832, 0xBF0FFB4800000000
  %835 = call float @dx.op.binary.f32(i32 35, float %826, float %833)  ; FMax(a,b)
  %836 = call float @dx.op.binary.f32(i32 36, float %835, float %834)  ; FMin(a,b)
  %837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %838 = extractvalue %dx.types.CBufRet.f32 %837, 1
  %839 = extractvalue %dx.types.CBufRet.f32 %837, 2
  %840 = extractvalue %dx.types.CBufRet.f32 %837, 0
  %841 = select i1 %745, float %840, float 0.000000e+00
  %842 = fmul fast float %838, %836
  %843 = fadd fast float %841, %842
  %844 = fadd fast float %841, %839
  %845 = fsub fast float %838, %839
  %846 = fadd fast float %845, %841
  %847 = call float @dx.op.binary.f32(i32 35, float %843, float %844)  ; FMax(a,b)
  %848 = call float @dx.op.binary.f32(i32 36, float %847, float %846)  ; FMin(a,b)
  %849 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %16, float %780, float %781, float %848, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %850 = extractvalue %dx.types.ResRet.f32 %849, 0
  %851 = extractvalue %dx.types.ResRet.f32 %849, 1
  %852 = extractvalue %dx.types.ResRet.f32 %849, 2
  %853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %854 = extractvalue %dx.types.CBufRet.f32 %853, 1
  %855 = fmul fast float %854, %850
  %856 = fmul fast float %854, %851
  %857 = fmul fast float %854, %852
  br label %858

; <label>:858                                     ; preds = %810, %774
  %859 = phi float [ %855, %810 ], [ 1.000000e+00, %774 ]
  %860 = phi float [ %856, %810 ], [ 1.000000e+00, %774 ]
  %861 = phi float [ %857, %810 ], [ 1.000000e+00, %774 ]
  %862 = fmul fast float %859, %761
  %863 = fmul fast float %860, %762
  %864 = fmul fast float %861, %763
  br label %865

; <label>:865                                     ; preds = %858, %719
  %866 = phi float [ %862, %858 ], [ %761, %719 ]
  %867 = phi float [ %863, %858 ], [ %762, %719 ]
  %868 = phi float [ %864, %858 ], [ %763, %719 ]
  %869 = and i32 %128, 2097152
  %870 = icmp eq i32 %869, 0
  br i1 %870, label %875, label %871, !dx.controlflow.hints !70

; <label>:871                                     ; preds = %865
  %872 = add i32 %125, 192
  %873 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %872, i32 undef)  ; BufferLoad(srv,index,wot)
  %874 = extractvalue %dx.types.ResRet.f32 %873, 0
  br label %878

; <label>:875                                     ; preds = %865
  %876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %877 = extractvalue %dx.types.CBufRet.f32 %876, 3
  br label %878

; <label>:878                                     ; preds = %875, %871
  %879 = phi float [ %874, %871 ], [ %877, %875 ]
  br i1 %740, label %880, label %964

; <label>:880                                     ; preds = %878
  %881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %882 = extractvalue %dx.types.CBufRet.f32 %881, 2
  %883 = extractvalue %dx.types.CBufRet.f32 %881, 3
  %884 = fmul fast float %882, %50
  %885 = fmul fast float %883, %51
  %886 = call float @dx.op.unary.f32(i32 7, float %884)  ; Saturate(value)
  %887 = call float @dx.op.unary.f32(i32 7, float %885)  ; Saturate(value)
  %888 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %886, float %887, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %889 = extractvalue %dx.types.ResRet.f32 %888, 0
  %890 = extractvalue %dx.types.ResRet.f32 %888, 1
  %891 = extractvalue %dx.types.ResRet.f32 %888, 2
  %892 = extractvalue %dx.types.ResRet.f32 %888, 3
  %893 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %886, float %887, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %894 = extractvalue %dx.types.ResRet.f32 %893, 0
  %895 = extractvalue %dx.types.ResRet.f32 %893, 1
  %896 = extractvalue %dx.types.ResRet.f32 %893, 2
  %897 = extractvalue %dx.types.ResRet.f32 %893, 3
  %898 = call float @dx.op.binary.f32(i32 35, float %890, float %891)  ; FMax(a,b)
  %899 = call float @dx.op.binary.f32(i32 35, float %889, float %898)  ; FMax(a,b)
  %900 = call float @dx.op.binary.f32(i32 35, float %899, float %892)  ; FMax(a,b)
  %901 = call float @dx.op.binary.f32(i32 36, float %895, float %896)  ; FMin(a,b)
  %902 = call float @dx.op.binary.f32(i32 36, float %894, float %901)  ; FMin(a,b)
  %903 = call float @dx.op.binary.f32(i32 36, float %902, float %897)  ; FMin(a,b)
  %904 = fmul fast float %900, 2.550000e+02
  %905 = fadd fast float %904, 0x3F70101020000000
  %906 = fptoui float %905 to i32
  %907 = fmul fast float %903, 2.550000e+02
  %908 = fadd fast float %907, 0x3F70101020000000
  %909 = fptoui float %908 to i32
  %910 = icmp ult i32 %906, %909
  br i1 %910, label %911, label %953

; <label>:911                                     ; preds = %880
  %912 = fcmp fast ogt float %45, 9.843750e-01
  %913 = fadd fast float %46, -4.000000e+00
  %914 = select i1 %912, float -4.000000e+00, float %913
  %915 = call float @dx.op.binary.f32(i32 35, float %914, float 0.000000e+00)  ; FMax(a,b)
  %916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %917 = extractvalue %dx.types.CBufRet.f32 %916, 0
  %918 = fadd fast float %917, %915
  %919 = extractvalue %dx.types.CBufRet.f32 %916, 2
  %920 = fmul fast float %918, %919
  %921 = call float @dx.op.unary.f32(i32 23, float %920)  ; Log(value)
  %922 = extractvalue %dx.types.CBufRet.f32 %916, 3
  %923 = fmul fast float %922, %921
  %924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %925 = extractvalue %dx.types.CBufRet.f32 %924, 2
  %926 = fmul fast float %923, %925
  %927 = call float @dx.op.unary.f32(i32 7, float %926)  ; Saturate(value)
  %928 = uitofp i32 %906 to float
  %929 = uitofp i32 %909 to float
  %930 = fadd fast float %928, 5.000000e-01
  %931 = fadd fast float %929, 5.000000e-01
  %932 = fmul fast float %925, %930
  %933 = fmul fast float %925, %931
  %934 = fadd fast float %932, 0x3F0FFB4800000000
  %935 = fadd fast float %933, 0xBF0FFB4800000000
  %936 = call float @dx.op.binary.f32(i32 35, float %927, float %934)  ; FMax(a,b)
  %937 = call float @dx.op.binary.f32(i32 36, float %936, float %935)  ; FMin(a,b)
  %938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %939 = extractvalue %dx.types.CBufRet.f32 %938, 1
  %940 = extractvalue %dx.types.CBufRet.f32 %938, 2
  %941 = extractvalue %dx.types.CBufRet.f32 %938, 0
  %942 = fmul fast float %939, %937
  %943 = fadd fast float %941, %942
  %944 = fadd fast float %941, %940
  %945 = fsub fast float %939, %940
  %946 = fadd fast float %945, %941
  %947 = call float @dx.op.binary.f32(i32 35, float %943, float %944)  ; FMax(a,b)
  %948 = call float @dx.op.binary.f32(i32 36, float %947, float %946)  ; FMin(a,b)
  %949 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %886, float %887, float %948, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %950 = extractvalue %dx.types.ResRet.f32 %949, 0
  %951 = extractvalue %dx.types.ResRet.f32 %949, 1
  %952 = extractvalue %dx.types.ResRet.f32 %949, 2
  br label %953

; <label>:953                                     ; preds = %911, %880
  %954 = phi float [ %950, %911 ], [ 1.000000e+00, %880 ]
  %955 = phi float [ %951, %911 ], [ 1.000000e+00, %880 ]
  %956 = phi float [ %952, %911 ], [ 1.000000e+00, %880 ]
  %957 = call float @dx.op.dot3.f32(i32 55, float %954, float %955, float %956, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %958 = select i1 %108, float %957, float %954
  %959 = select i1 %108, float %957, float %955
  %960 = select i1 %108, float 1.000000e+00, float %956
  %961 = fmul fast float %958, %866
  %962 = fmul fast float %959, %867
  %963 = fmul fast float %960, %868
  br label %964

; <label>:964                                     ; preds = %953, %878
  %965 = phi float [ %737, %953 ], [ %46, %878 ]
  %966 = phi float [ %961, %953 ], [ %866, %878 ]
  %967 = phi float [ %962, %953 ], [ %867, %878 ]
  %968 = phi float [ %963, %953 ], [ %868, %878 ]
  %969 = phi float [ %954, %953 ], [ 1.000000e+00, %878 ]
  br i1 %745, label %1212, label %970

; <label>:970                                     ; preds = %964
  %971 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %17, float %31, float %32, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %972 = extractvalue %dx.types.ResRet.f32 %971, 0
  %973 = extractvalue %dx.types.ResRet.f32 %971, 1
  %974 = extractvalue %dx.types.ResRet.f32 %971, 2
  %975 = fmul fast float %972, %969
  %976 = call float @dx.op.dot3.f32(i32 55, float %972, float %973, float %974, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %977 = select i1 %108, float %976, float %972
  %978 = select i1 %108, float %976, float %973
  %979 = select i1 %108, float 1.000000e+00, float %974
  %980 = fmul fast float %977, %966
  %981 = fmul fast float %978, %967
  %982 = fmul fast float %979, %968
  %983 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %984 = extractvalue %dx.types.CBufRet.i32 %983, 0
  %985 = icmp eq i32 %984, 0
  br i1 %985, label %1212, label %986, !dx.controlflow.hints !71

; <label>:986                                     ; preds = %970
  %987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %988 = extractvalue %dx.types.CBufRet.f32 %987, 2
  %989 = extractvalue %dx.types.CBufRet.f32 %987, 3
  %990 = fmul fast float %988, %50
  %991 = fmul fast float %989, %51
  %992 = fmul fast float %990, 2.000000e+00
  %993 = fmul fast float %991, 2.000000e+00
  %994 = fsub fast float 1.000000e+00, %992
  %995 = fsub fast float 1.000000e+00, %993
  %996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %997 = extractvalue %dx.types.CBufRet.f32 %996, 0
  %998 = extractvalue %dx.types.CBufRet.f32 %996, 1
  %999 = extractvalue %dx.types.CBufRet.f32 %996, 2
  %1000 = fmul fast float %994, %997
  %1001 = fmul fast float %994, %998
  %1002 = fmul fast float %994, %999
  %1003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1004 = extractvalue %dx.types.CBufRet.f32 %1003, 0
  %1005 = extractvalue %dx.types.CBufRet.f32 %1003, 1
  %1006 = extractvalue %dx.types.CBufRet.f32 %1003, 2
  %1007 = fmul fast float %995, %1004
  %1008 = fmul fast float %995, %1005
  %1009 = fmul fast float %995, %1006
  %1010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1011 = extractvalue %dx.types.CBufRet.f32 %1010, 0
  %1012 = extractvalue %dx.types.CBufRet.f32 %1010, 1
  %1013 = extractvalue %dx.types.CBufRet.f32 %1010, 2
  %1014 = fadd fast float %1007, %1011
  %1015 = fadd fast float %1014, %1000
  %1016 = fadd fast float %1008, %1012
  %1017 = fadd fast float %1016, %1001
  %1018 = fadd fast float %1009, %1013
  %1019 = fadd fast float %1018, %1002
  %1020 = fmul fast float %1015, %965
  %1021 = fmul fast float %1017, %965
  %1022 = fmul fast float %1019, %965
  %1023 = fmul fast float %1020, %1020
  %1024 = fmul fast float %1021, %1021
  %1025 = fadd fast float %1023, %1024
  %1026 = fmul fast float %1022, %1022
  %1027 = fadd fast float %1025, %1026
  %1028 = call float @dx.op.unary.f32(i32 24, float %1027)  ; Sqrt(value)
  %1029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1030 = extractvalue %dx.types.CBufRet.f32 %1029, 0
  %1031 = fsub fast float %1028, %1030
  %1032 = extractvalue %dx.types.CBufRet.f32 %1029, 2
  %1033 = fmul fast float %1031, %1032
  %1034 = call float @dx.op.unary.f32(i32 7, float %1033)  ; Saturate(value)
  %1035 = fadd fast float %1034, -5.000000e-01
  %1036 = fmul fast float %1035, 2.000000e+00
  %1037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1038 = extractvalue %dx.types.CBufRet.f32 %1037, 2
  %1039 = call float @dx.op.binary.f32(i32 36, float %1038, float %1036)  ; FMin(a,b)
  %1040 = fsub fast float -0.000000e+00, %1038
  %1041 = fcmp fast ogt float %1039, %1040
  br i1 %1041, label %1042, label %1212, !dx.controlflow.hints !72

; <label>:1042                                    ; preds = %986
  %1043 = fmul fast float %1039, 5.000000e-01
  %1044 = fadd fast float %1043, 5.000000e-01
  %1045 = call float @dx.op.unary.f32(i32 22, float %1044)  ; Frc(value)
  %1046 = call float @dx.op.unary.f32(i32 27, float %1045)  ; Round_ni(value)
  %1047 = call float @dx.op.unary.f32(i32 22, float %1045)  ; Frc(value)
  %1048 = fmul fast float %1047, 2.000000e+00
  %1049 = fadd fast float %1048, -1.000000e+00
  %1050 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %17, float %990, float %991, float %1046, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1051 = extractvalue %dx.types.ResRet.f32 %1050, 0
  %1052 = extractvalue %dx.types.ResRet.f32 %1050, 1
  %1053 = extractvalue %dx.types.ResRet.f32 %1050, 2
  %1054 = extractvalue %dx.types.ResRet.f32 %1050, 3
  %1055 = fadd fast float %1051, -5.000000e-01
  %1056 = fadd fast float %1053, -5.000000e-01
  %1057 = fmul fast float %1055, 0xBFD5555560000000
  %1058 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1056, float %1057)  ; FMad(a,b,c)
  %1059 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1052, float 0.000000e+00)  ; FMad(a,b,c)
  %1060 = fadd fast float %1059, %1054
  %1061 = fmul fast float %1055, -7.500000e-01
  %1062 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1056, float %1061)  ; FMad(a,b,c)
  %1063 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1052, float 0.000000e+00)  ; FMad(a,b,c)
  %1064 = fadd fast float %1063, %1054
  %1065 = call float @dx.op.binary.f32(i32 35, float %1058, float -1.000000e+00)  ; FMax(a,b)
  %1066 = call float @dx.op.binary.f32(i32 35, float %1060, float -1.000000e+00)  ; FMax(a,b)
  %1067 = call float @dx.op.binary.f32(i32 35, float %1062, float -1.000000e+00)  ; FMax(a,b)
  %1068 = call float @dx.op.binary.f32(i32 35, float %1064, float -1.000000e+00)  ; FMax(a,b)
  %1069 = call float @dx.op.binary.f32(i32 36, float %1065, float 1.000000e+00)  ; FMin(a,b)
  %1070 = call float @dx.op.binary.f32(i32 36, float %1066, float 1.000000e+00)  ; FMin(a,b)
  %1071 = call float @dx.op.binary.f32(i32 36, float %1067, float 1.000000e+00)  ; FMin(a,b)
  %1072 = call float @dx.op.binary.f32(i32 36, float %1068, float 1.000000e+00)  ; FMin(a,b)
  %1073 = fcmp fast olt float %1069, 0x3FEFFF8020000000
  br i1 %1073, label %1074, label %1189, !dx.controlflow.hints !73

; <label>:1074                                    ; preds = %1042
  %1075 = extractvalue %dx.types.CBufRet.f32 %1037, 3
  %1076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1077 = extractvalue %dx.types.CBufRet.f32 %1076, 0
  %1078 = extractvalue %dx.types.CBufRet.f32 %1076, 1
  %1079 = extractvalue %dx.types.CBufRet.f32 %1076, 2
  %1080 = extractvalue %dx.types.CBufRet.f32 %1076, 3
  %1081 = fsub fast float %1077, %1069
  %1082 = fsub fast float %1078, %1070
  %1083 = fsub fast float %1079, %1071
  %1084 = fsub fast float %1080, %1072
  %1085 = fmul fast float %1081, %1075
  %1086 = fmul fast float %1082, %1075
  %1087 = fmul fast float %1083, %1075
  %1088 = fmul fast float %1084, %1075
  %1089 = fadd fast float %1085, %1069
  %1090 = fadd fast float %1086, %1070
  %1091 = fsub fast float -0.000000e+00, %1090
  %1092 = fadd fast float %1087, %1071
  %1093 = fadd fast float %1088, %1072
  %1094 = fmul fast float %1089, %1089
  %1095 = fsub fast float %1090, %1094
  %1096 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1095)  ; FMax(a,b)
  %1097 = fdiv fast float 1.000000e+00, %1096
  %1098 = fmul fast float %1090, %1089
  %1099 = fsub fast float %1092, %1098
  %1100 = fsub fast float %1049, %1089
  %1101 = fmul fast float %1049, %1049
  %1102 = fsub fast float %1101, %1090
  %1103 = fmul fast float %1100, %1097
  %1104 = fmul fast float %1103, %1099
  %1105 = fsub fast float %1102, %1104
  %1106 = fmul fast float %1090, %1090
  %1107 = fsub fast float %1093, %1106
  %1108 = fmul fast float %1099, %1099
  %1109 = fmul fast float %1108, %1097
  %1110 = fsub fast float %1107, %1109
  %1111 = fdiv fast float %1105, %1110
  %1112 = fmul fast float %1099, %1111
  %1113 = fsub fast float %1100, %1112
  %1114 = fmul fast float %1113, %1097
  %1115 = fmul fast float %1114, %1089
  %1116 = fsub fast float 1.000000e+00, %1115
  %1117 = fmul fast float %1090, %1111
  %1118 = fsub fast float %1116, %1117
  %1119 = fmul fast float %1114, %1114
  %1120 = fmul fast float %1111, 4.000000e+00
  %1121 = fmul fast float %1120, %1118
  %1122 = fsub fast float %1119, %1121
  %1123 = call float @dx.op.unary.f32(i32 24, float %1122)  ; Sqrt(value)
  %1124 = fcmp fast oge float %1114, 0.000000e+00
  %1125 = fsub fast float -0.000000e+00, %1123
  %1126 = select i1 %1124, float %1125, float %1123
  %1127 = fsub fast float %1126, %1114
  %1128 = fdiv fast float %1127, %1111
  %1129 = fdiv fast float %1118, %1127
  %1130 = fmul fast float %1128, 5.000000e-01
  %1131 = fmul fast float %1129, 2.000000e+00
  %1132 = select i1 %1124, float %1130, float %1131
  %1133 = select i1 %1124, float %1131, float %1130
  %1134 = call float @dx.op.binary.f32(i32 35, float %1132, float %1133)  ; FMax(a,b)
  %1135 = call float @dx.op.binary.f32(i32 36, float %1132, float %1133)  ; FMin(a,b)
  %1136 = fcmp fast ogt float %1049, %1135
  br i1 %1136, label %1137, label %1147

; <label>:1137                                    ; preds = %1074
  %1138 = fsub fast float %1049, %1135
  %1139 = fsub fast float %1134, %1135
  %1140 = fmul fast float %1138, %1139
  %1141 = fmul fast float %1134, %1049
  %1142 = fadd fast float %1134, %1049
  %1143 = fmul fast float %1142, %1089
  %1144 = fadd fast float %1141, %1090
  %1145 = fsub fast float %1144, %1143
  %1146 = fdiv fast float %1145, %1140
  br label %1147

; <label>:1147                                    ; preds = %1137, %1074
  %1148 = phi float [ %1146, %1137 ], [ 0.000000e+00, %1074 ]
  %1149 = fcmp fast ogt float %1049, %1134
  %1150 = fsub fast float %1049, %1134
  br i1 %1149, label %1151, label %1161

; <label>:1151                                    ; preds = %1147
  %1152 = fsub fast float %1134, %1135
  %1153 = fmul fast float %1152, %1150
  %1154 = fmul fast float %1135, %1049
  %1155 = fadd fast float %1135, %1049
  %1156 = fmul fast float %1155, %1089
  %1157 = fsub fast float %1091, %1154
  %1158 = fadd fast float %1157, %1156
  %1159 = fdiv fast float %1158, %1153
  %1160 = fadd fast float %1159, %1148
  br label %1161

; <label>:1161                                    ; preds = %1151, %1147
  %1162 = phi float [ %1160, %1151 ], [ %1148, %1147 ]
  %1163 = fsub fast float %1049, %1135
  %1164 = fmul fast float %1163, %1150
  %1165 = fmul fast float %1135, %1134
  %1166 = fadd fast float %1135, %1134
  %1167 = fmul fast float %1166, %1089
  %1168 = fadd fast float %1165, %1090
  %1169 = fsub fast float %1168, %1167
  %1170 = fdiv fast float %1169, %1164
  %1171 = call float @dx.op.unary.f32(i32 7, float %1162)  ; Saturate(value)
  %1172 = fcmp fast oeq float %879, 0.000000e+00
  %1173 = extractvalue %dx.types.CBufRet.f32 %1037, 0
  %1174 = fcmp fast oeq float %1173, 0.000000e+00
  %1175 = or i1 %1172, %1174
  %1176 = fmul fast float %1173, 2.000000e+00
  %1177 = fadd fast float %1038, %1039
  %1178 = fdiv fast float %1177, %1176
  %1179 = call float @dx.op.unary.f32(i32 7, float %1178)  ; Saturate(value)
  %1180 = fmul fast float %1179, 2.000000e+00
  %1181 = fsub fast float 3.000000e+00, %1180
  %1182 = fmul fast float %1179, %1179
  %1183 = fmul fast float %1182, %1181
  %1184 = select i1 %1175, float 1.000000e+00, float %1183
  %1185 = fmul fast float %1170, %879
  %1186 = fadd fast float %1171, %1185
  %1187 = call float @dx.op.unary.f32(i32 7, float %1186)  ; Saturate(value)
  %1188 = fmul fast float %1184, %1187
  br label %1189

; <label>:1189                                    ; preds = %1161, %1042
  %1190 = phi float [ %1188, %1161 ], [ 0.000000e+00, %1042 ]
  %1191 = fsub fast float 1.000000e+00, %1190
  %1192 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %17, float %990, float %991, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1193 = extractvalue %dx.types.ResRet.f32 %1192, 0
  %1194 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1195 = extractvalue %dx.types.CBufRet.i32 %1194, 2
  %1196 = icmp eq i32 %1195, 0
  br i1 %1196, label %1202, label %1197

; <label>:1197                                    ; preds = %1189
  %1198 = call float @dx.op.unary.f32(i32 7, float %1190)  ; Saturate(value)
  %1199 = fadd fast float %1193, -1.000000e+00
  %1200 = fmul fast float %1198, %1199
  %1201 = fadd fast float %1200, 1.000000e+00
  br label %1202

; <label>:1202                                    ; preds = %1197, %1189
  %1203 = phi float [ %1201, %1197 ], [ %1191, %1189 ]
  %1204 = call float @dx.op.binary.f32(i32 35, float %1193, float %1203)  ; FMax(a,b)
  %1205 = fmul fast float %1204, %975
  %1206 = call float @dx.op.dot3.f32(i32 55, float %1204, float %1204, float %1204, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1207 = select i1 %108, float %1206, float %1204
  %1208 = select i1 %108, float 1.000000e+00, float %1204
  %1209 = fmul fast float %1207, %980
  %1210 = fmul fast float %1207, %981
  %1211 = fmul fast float %1208, %982
  br label %1212

; <label>:1212                                    ; preds = %1202, %986, %970, %964
  %1213 = phi float [ %966, %964 ], [ %980, %970 ], [ %1209, %1202 ], [ %980, %986 ]
  %1214 = phi float [ %967, %964 ], [ %981, %970 ], [ %1210, %1202 ], [ %981, %986 ]
  %1215 = phi float [ %968, %964 ], [ %982, %970 ], [ %1211, %1202 ], [ %982, %986 ]
  %1216 = phi float [ %969, %964 ], [ %975, %970 ], [ %1205, %1202 ], [ %975, %986 ]
  %1217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1218 = extractvalue %dx.types.CBufRet.f32 %1217, 2
  %1219 = extractvalue %dx.types.CBufRet.f32 %1217, 3
  %1220 = fmul fast float %1218, %50
  %1221 = fmul fast float %1219, %51
  %1222 = call float @dx.op.unary.f32(i32 7, float %1220)  ; Saturate(value)
  %1223 = call float @dx.op.unary.f32(i32 7, float %1221)  ; Saturate(value)
  %1224 = select i1 %745, i32 2, i32 0
  %1225 = or i32 %1224, 1
  %1226 = uitofp i32 %1225 to float
  %1227 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %1222, float %1223, float %1226, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1228 = extractvalue %dx.types.ResRet.f32 %1227, 0
  %1229 = extractvalue %dx.types.ResRet.f32 %1227, 1
  %1230 = extractvalue %dx.types.ResRet.f32 %1227, 2
  %1231 = extractvalue %dx.types.ResRet.f32 %1227, 3
  %1232 = add nuw nsw i32 %1224, 2
  %1233 = uitofp i32 %1232 to float
  %1234 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %1222, float %1223, float %1233, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1235 = extractvalue %dx.types.ResRet.f32 %1234, 0
  %1236 = extractvalue %dx.types.ResRet.f32 %1234, 1
  %1237 = extractvalue %dx.types.ResRet.f32 %1234, 2
  %1238 = extractvalue %dx.types.ResRet.f32 %1234, 3
  %1239 = call float @dx.op.binary.f32(i32 35, float %1229, float %1230)  ; FMax(a,b)
  %1240 = call float @dx.op.binary.f32(i32 35, float %1228, float %1239)  ; FMax(a,b)
  %1241 = call float @dx.op.binary.f32(i32 35, float %1240, float %1231)  ; FMax(a,b)
  %1242 = call float @dx.op.binary.f32(i32 36, float %1236, float %1237)  ; FMin(a,b)
  %1243 = call float @dx.op.binary.f32(i32 36, float %1235, float %1242)  ; FMin(a,b)
  %1244 = call float @dx.op.binary.f32(i32 36, float %1243, float %1238)  ; FMin(a,b)
  %1245 = fmul fast float %1241, 2.550000e+02
  %1246 = fadd fast float %1245, 0x3F70101020000000
  %1247 = fptoui float %1246 to i32
  %1248 = fmul fast float %1244, 2.550000e+02
  %1249 = fadd fast float %1248, 0x3F70101020000000
  %1250 = fptoui float %1249 to i32
  %1251 = icmp ult i32 %1247, %1250
  br i1 %1251, label %1252, label %1295

; <label>:1252                                    ; preds = %1212
  %1253 = fcmp fast ogt float %45, 9.843750e-01
  %1254 = fadd fast float %965, -4.000000e+00
  %1255 = select i1 %1253, float -4.000000e+00, float %1254
  %1256 = call float @dx.op.binary.f32(i32 35, float %1255, float 0.000000e+00)  ; FMax(a,b)
  %1257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1258 = extractvalue %dx.types.CBufRet.f32 %1257, 0
  %1259 = fadd fast float %1258, %1256
  %1260 = extractvalue %dx.types.CBufRet.f32 %1257, 2
  %1261 = fmul fast float %1259, %1260
  %1262 = call float @dx.op.unary.f32(i32 23, float %1261)  ; Log(value)
  %1263 = extractvalue %dx.types.CBufRet.f32 %1257, 3
  %1264 = fmul fast float %1263, %1262
  %1265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1266 = extractvalue %dx.types.CBufRet.f32 %1265, 2
  %1267 = fmul fast float %1264, %1266
  %1268 = call float @dx.op.unary.f32(i32 7, float %1267)  ; Saturate(value)
  %1269 = uitofp i32 %1247 to float
  %1270 = uitofp i32 %1250 to float
  %1271 = fadd fast float %1269, 5.000000e-01
  %1272 = fadd fast float %1270, 5.000000e-01
  %1273 = fmul fast float %1266, %1271
  %1274 = fmul fast float %1266, %1272
  %1275 = fadd fast float %1273, 0x3F0FFB4800000000
  %1276 = fadd fast float %1274, 0xBF0FFB4800000000
  %1277 = call float @dx.op.binary.f32(i32 35, float %1268, float %1275)  ; FMax(a,b)
  %1278 = call float @dx.op.binary.f32(i32 36, float %1277, float %1276)  ; FMin(a,b)
  %1279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1280 = extractvalue %dx.types.CBufRet.f32 %1279, 1
  %1281 = extractvalue %dx.types.CBufRet.f32 %1279, 2
  %1282 = extractvalue %dx.types.CBufRet.f32 %1279, 0
  %1283 = select i1 %745, float %1282, float 0.000000e+00
  %1284 = fmul fast float %1280, %1278
  %1285 = fadd fast float %1283, %1284
  %1286 = fadd fast float %1283, %1281
  %1287 = fsub fast float %1280, %1281
  %1288 = fadd fast float %1287, %1283
  %1289 = call float @dx.op.binary.f32(i32 35, float %1285, float %1286)  ; FMax(a,b)
  %1290 = call float @dx.op.binary.f32(i32 36, float %1289, float %1288)  ; FMin(a,b)
  %1291 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %1222, float %1223, float %1290, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1292 = extractvalue %dx.types.ResRet.f32 %1291, 0
  %1293 = extractvalue %dx.types.ResRet.f32 %1291, 1
  %1294 = extractvalue %dx.types.ResRet.f32 %1291, 2
  br label %1295

; <label>:1295                                    ; preds = %1252, %1212
  %1296 = phi float [ %1292, %1252 ], [ 1.000000e+00, %1212 ]
  %1297 = phi float [ %1293, %1252 ], [ 1.000000e+00, %1212 ]
  %1298 = phi float [ %1294, %1252 ], [ 1.000000e+00, %1212 ]
  %1299 = fmul fast float %1296, %1216
  %1300 = call float @dx.op.dot3.f32(i32 55, float %1296, float %1297, float %1298, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1301 = select i1 %108, float %1300, float %1296
  %1302 = select i1 %108, float %1300, float %1297
  %1303 = select i1 %108, float 1.000000e+00, float %1298
  %1304 = fmul fast float %1301, %1213
  %1305 = fmul fast float %1302, %1214
  %1306 = fmul fast float %1303, %1215
  %1307 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1308 = extractvalue %dx.types.CBufRet.i32 %1307, 3
  %1309 = and i32 %1308, 3
  %1310 = icmp ne i32 %1309, 0
  %1311 = and i32 %1308, 4
  %1312 = icmp ne i32 %1311, 0
  %1313 = and i1 %1310, %1312
  %1314 = and i1 %108, %1313
  br i1 %1314, label %1315, label %1321

; <label>:1315                                    ; preds = %1295
  %1316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1317 = extractvalue %dx.types.CBufRet.f32 %1316, 1
  %1318 = fadd fast float %1299, -1.000000e+00
  %1319 = fmul fast float %1317, %1318
  %1320 = fadd fast float %1319, 1.000000e+00
  br label %1321

; <label>:1321                                    ; preds = %1315, %1295
  %1322 = phi float [ %1320, %1315 ], [ %1299, %1295 ]
  %1323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1324 = extractvalue %dx.types.CBufRet.f32 %1323, 0
  br i1 %108, label %1325, label %1345

; <label>:1325                                    ; preds = %1321
  %1326 = fadd fast float %1304, %1305
  %1327 = fmul fast float %1324, %1326
  %1328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1329 = extractvalue %dx.types.CBufRet.f32 %1328, 3
  %1330 = extractvalue %dx.types.CBufRet.f32 %768, 1
  %1331 = fsub fast float %771, %1330
  %1332 = extractvalue %dx.types.CBufRet.f32 %768, 2
  %1333 = fmul fast float %1331, %1332
  %1334 = call float @dx.op.unary.f32(i32 7, float %1333)  ; Saturate(value)
  %1335 = fsub fast float %1334, %1329
  %1336 = fmul fast float %1335, %1322
  %1337 = fadd fast float %1336, %1329
  %1338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1339 = extractvalue %dx.types.CBufRet.f32 %1338, 0
  %1340 = fsub fast float %1337, %1339
  %1341 = fmul fast float %1340, 1.000000e+01
  %1342 = call float @dx.op.unary.f32(i32 7, float %1341)  ; Saturate(value)
  %1343 = fmul fast float %1342, %721
  %1344 = fmul fast float %1337, %1343
  br label %1354

; <label>:1345                                    ; preds = %1321
  %1346 = fmul fast float %1324, %1304
  %1347 = fmul fast float %1324, %1305
  %1348 = fmul fast float %1306, %1324
  %1349 = call float @dx.op.binary.f32(i32 35, float %1347, float %1348)  ; FMax(a,b)
  %1350 = call float @dx.op.binary.f32(i32 35, float %1346, float %1349)  ; FMax(a,b)
  %1351 = call float @dx.op.binary.f32(i32 35, float %1350, float 0.000000e+00)  ; FMax(a,b)
  %1352 = fcmp fast ugt float %1351, 0x3F10000000000000
  br i1 %1352, label %1354, label %1353

; <label>:1353                                    ; preds = %1345
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1354

; <label>:1354                                    ; preds = %1353, %1345, %1325
  %1355 = phi float [ %1327, %1325 ], [ %1346, %1353 ], [ %1346, %1345 ]
  %1356 = phi float [ %1344, %1325 ], [ %1347, %1353 ], [ %1347, %1345 ]
  %1357 = phi float [ %1343, %1325 ], [ %1348, %1353 ], [ %1348, %1345 ]
  %1358 = phi float [ %1343, %1325 ], [ 0.000000e+00, %1353 ], [ 0.000000e+00, %1345 ]
  %1359 = fadd fast float %521, 0x3FE3C6EF40000000
  %1360 = call float @dx.op.unary.f32(i32 22, float %1359)  ; Frc(value)
  %1361 = call float @dx.op.unary.f32(i32 23, float %1355)  ; Log(value)
  %1362 = fadd fast float %1361, -7.000000e+00
  %1363 = call float @dx.op.unary.f32(i32 21, float %1362)  ; Exp(value)
  %1364 = fmul fast float %1360, 2.000000e+00
  %1365 = fadd fast float %1364, -1.000000e+00
  %1366 = fmul fast float %1363, %1365
  %1367 = fcmp fast ogt float %1355, 0.000000e+00
  %1368 = select i1 %1367, float %1366, float 0.000000e+00
  %1369 = fadd fast float %1368, %1355
  %1370 = fadd fast float %521, 0x3FF3C6EF40000000
  %1371 = call float @dx.op.unary.f32(i32 22, float %1370)  ; Frc(value)
  %1372 = call float @dx.op.unary.f32(i32 23, float %1356)  ; Log(value)
  %1373 = fadd fast float %1372, -7.000000e+00
  %1374 = call float @dx.op.unary.f32(i32 21, float %1373)  ; Exp(value)
  %1375 = fmul fast float %1371, 2.000000e+00
  %1376 = fadd fast float %1375, -1.000000e+00
  %1377 = fmul fast float %1374, %1376
  %1378 = fcmp fast ogt float %1356, 0.000000e+00
  %1379 = select i1 %1378, float %1377, float 0.000000e+00
  %1380 = fadd fast float %1379, %1356
  %1381 = fadd fast float %521, 0x3FFDAA66E0000000
  %1382 = call float @dx.op.unary.f32(i32 22, float %1381)  ; Frc(value)
  %1383 = call float @dx.op.unary.f32(i32 23, float %1357)  ; Log(value)
  %1384 = fadd fast float %1383, -6.000000e+00
  %1385 = call float @dx.op.unary.f32(i32 21, float %1384)  ; Exp(value)
  %1386 = fmul fast float %1382, 2.000000e+00
  %1387 = fadd fast float %1386, -1.000000e+00
  %1388 = fmul fast float %1385, %1387
  %1389 = fcmp fast ogt float %1357, 0.000000e+00
  %1390 = select i1 %1389, float %1388, float 0.000000e+00
  %1391 = fadd fast float %1390, %1357
  %1392 = select i1 %108, float %1356, float %1380
  %1393 = select i1 %108, float %1357, float %1391
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1394 = call float @dx.op.binary.f32(i32 36, float %1369, float 3.225500e+04)  ; FMin(a,b)
  %1395 = call float @dx.op.binary.f32(i32 36, float %1392, float 3.225500e+04)  ; FMin(a,b)
  %1396 = call float @dx.op.binary.f32(i32 36, float %1393, float 3.225500e+04)  ; FMin(a,b)
  %1397 = call float @dx.op.binary.f32(i32 36, float %1358, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1394)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1395)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1396)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1397)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1358)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1358)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1358)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1358)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!33 = !{[37 x i32] [i32 35, i32 8, i32 255, i32 255, i32 255, i32 255, i32 0, i32 0, i32 0, i32 255, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255, i32 255, i32 0, i32 255, i32 255, i32 255, i32 7, i32 255, i32 255, i32 0, i32 0, i32 3, i32 3, i32 7, i32 7, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 255]}
!34 = !{void ()* @ps_main, !"ps_main", !35, !4, !61}
!35 = !{!36, !57, null}
!36 = !{!37, !40, !42, !44, !47, !49, !51, !53, !54, !56}
!37 = !{i32 0, !"SV_Position", i8 9, i8 3, !38, i8 4, i32 1, i8 4, i32 0, i8 0, !39}
!38 = !{i32 0}
!39 = !{i32 3, i32 15}
!40 = !{i32 1, !"COLOR", i8 9, i8 0, !38, i8 2, i32 1, i8 4, i32 1, i8 0, !41}
!41 = !{i32 3, i32 8}
!42 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !38, i8 2, i32 1, i8 2, i32 2, i8 0, !43}
!43 = !{i32 3, i32 3}
!44 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !45, i8 1, i32 1, i8 4, i32 3, i8 0, !46}
!45 = !{i32 2}
!46 = !{i32 3, i32 7}
!47 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !48, i8 2, i32 1, i8 4, i32 4, i8 0, !39}
!48 = !{i32 3}
!49 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !50, i8 3, i32 1, i8 2, i32 5, i8 0, !43}
!50 = !{i32 5}
!51 = !{i32 6, !"TEXCOORD", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 6, i8 0, !39}
!52 = !{i32 8}
!53 = !{i32 7, !"QUAD_POSITION", i8 9, i8 0, !38, i8 1, i32 1, i8 4, i32 7, i8 0, !39}
!54 = !{i32 8, !"COLOR", i8 5, i8 0, !48, i8 1, i32 1, i8 3, i32 8, i8 0, !55}
!55 = !{i32 3, i32 5}
!56 = !{i32 9, !"SV_SampleIndex", i8 5, i8 12, !38, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!57 = !{!58, !59}
!58 = !{i32 0, !"SV_Target", i8 9, i8 16, !38, i8 0, i32 1, i8 4, i32 0, i8 0, !39}
!59 = !{i32 1, !"SV_Target", i8 9, i8 16, !60, i8 0, i32 1, i8 4, i32 1, i8 0, !39}
!60 = !{i32 1}
!61 = !{i32 0, i64 24}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 1}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 1}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 1}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 1}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 1}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 1}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 1}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 1}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}

