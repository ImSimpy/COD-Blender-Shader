;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float   xyzw
; TEXCOORD                 0   xy          2     NONE   float   xy  
; TEXCOORD                 3   xyzw        3     NONE   float   xyzw
; TEXCOORD                 5   xyz         4     NONE   float   xyz 
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
; shader hash: d622421f7fd155598c6d55081154cec5
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
; TEXCOORD                 5                 linear       
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
;                                   texture     f32          2d      T3     t69,space2     1
;                                   texture     f32          2d      T4             t1     1
;                                   texture     f32          2d      T5     t57,space2     1
;                                   texture    byte         r/o      T6     t69,space1     1
;                                   texture     u32          2d      T7     t56,space2     1
;                                   texture     f32          1d      T8     t30,space2     1
;                                   texture     f32          3d      T9     t44,space2     1
;                                   texture     f32          3d     T10     t45,space2     1
;                                   texture     f32     2darray     T11     t47,space2     1
;                                   textureunorm_f32     2darray     T12     t85,space2     1
;                                   texture     f32          2d     T13     t83,space2     1
;                                   texture     f32          2d     T14     t86,space2     1
;                                   texture    byte         r/o     T15             t2     1
;                                   texture     f32          3d     T16     t46,space2     1
;
;
; ViewId state:
;
; Number of inputs: 28, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 7, 8, 9, 12, 13, 14, 15, 16, 17, 20, 21, 22, 23, 24 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 15, 17, 20, 21, 22, 23, 24 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 15, 18, 22, 23, 24 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 24 }
;   output 4 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 24 }
;   output 5 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 24 }
;   output 6 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 24 }
;   output 7 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 24 }
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
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
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
  %44 = alloca [3 x float], align 4
  %45 = alloca [3 x float], align 4
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %49 = extractvalue %dx.types.CBufRet.f32 %48, 0
  %50 = fmul fast float %49, %40
  %51 = fmul fast float %49, %41
  %52 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %53 = extractvalue %dx.types.CBufRet.f32 %52, 2
  %54 = extractvalue %dx.types.CBufRet.f32 %52, 3
  %55 = fmul fast float %50, 2.000000e+00
  %56 = fmul fast float %55, %53
  %57 = fmul fast float %51, 2.000000e+00
  %58 = fmul fast float %57, %54
  %59 = fsub fast float 1.000000e+00, %56
  %60 = fsub fast float 1.000000e+00, %58
  %61 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %62 = extractvalue %dx.types.CBufRet.f32 %61, 0
  %63 = extractvalue %dx.types.CBufRet.f32 %61, 1
  %64 = extractvalue %dx.types.CBufRet.f32 %61, 2
  %65 = fmul fast float %59, %62
  %66 = fmul fast float %59, %63
  %67 = fmul fast float %59, %64
  %68 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %69 = extractvalue %dx.types.CBufRet.f32 %68, 0
  %70 = extractvalue %dx.types.CBufRet.f32 %68, 1
  %71 = extractvalue %dx.types.CBufRet.f32 %68, 2
  %72 = fmul fast float %60, %69
  %73 = fmul fast float %60, %70
  %74 = fmul fast float %60, %71
  %75 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %76 = extractvalue %dx.types.CBufRet.f32 %75, 0
  %77 = extractvalue %dx.types.CBufRet.f32 %75, 1
  %78 = extractvalue %dx.types.CBufRet.f32 %75, 2
  %79 = fadd fast float %72, %76
  %80 = fadd fast float %79, %65
  %81 = fadd fast float %73, %77
  %82 = fadd fast float %81, %66
  %83 = fadd fast float %74, %78
  %84 = fadd fast float %83, %67
  %85 = fmul fast float %80, %43
  %86 = fmul fast float %82, %43
  %87 = fmul fast float %84, %43
  %88 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
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
  %98 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %97, float %96, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %99 = extractvalue %dx.types.ResRet.f32 %98, 0
  %100 = fsub fast float 1.000000e+00, %99
  %101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %102 = extractvalue %dx.types.CBufRet.f32 %101, 0
  %103 = fcmp fast olt float %100, %102
  br label %107

; <label>:104                                     ; preds = %0
  %105 = icmp eq i32 %92, 0
  %106 = and i1 %91, %105
  br label %107

; <label>:107                                     ; preds = %104, %95
  %108 = phi i1 [ %103, %95 ], [ %106, %104 ]
  %109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %110 = extractvalue %dx.types.CBufRet.f32 %109, 2
  %111 = extractvalue %dx.types.CBufRet.f32 %109, 3
  %112 = fmul fast float %110, %50
  %113 = fmul fast float %111, %51
  %114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %115 = extractvalue %dx.types.ResRet.i32 %114, 0
  %116 = and i32 %115, 114688
  %117 = icmp ne i32 %116, 0
  %118 = select i1 %117, float %112, float 0.000000e+00
  %119 = select i1 %117, float %113, float 0.000000e+00
  %120 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %19, float %118, float %119, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %121 = extractvalue %dx.types.ResRet.f32 %120, 0
  %122 = fmul fast float %121, 2.550000e+02
  %123 = fptoui float %122 to i32
  %124 = select i1 %117, i32 %123, i32 0
  %125 = mul i32 %22, 208
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
  %141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
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
  %165 = phi float [ %34, %137 ], [ %144, %150 ], [ %163, %158 ], [ %144, %156 ]
  %166 = phi float [ %35, %137 ], [ %155, %150 ], [ %145, %158 ], [ %145, %156 ]
  %167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %168 = extractvalue %dx.types.ResRet.i32 %167, 0
  %169 = extractvalue %dx.types.ResRet.i32 %167, 1
  %170 = bitcast i32 %168 to float
  %171 = bitcast i32 %169 to float
  %172 = fmul fast float %170, %34
  %173 = fmul fast float %171, %35
  %174 = call float @dx.op.unary.f32(i32 22, float %172)  ; Frc(value)
  %175 = call float @dx.op.unary.f32(i32 22, float %173)  ; Frc(value)
  %176 = and i32 %128, 16
  %177 = icmp ne i32 %176, 0
  %178 = select i1 %177, float 1.000000e+00, float %39
  %179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 128, i32 undef)  ; BufferLoad(srv,index,wot)
  %180 = extractvalue %dx.types.ResRet.i32 %179, 0
  %181 = add i32 %180, 0
  %182 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %181, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %184 = extractvalue %dx.types.CBufRet.f32 %183, 2
  %185 = call %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32 61, %dx.types.Handle %182, %dx.types.Handle %47, float %165, float %166, float undef, float undef, i32 0, i32 0, i32 undef, float %184, float undef)  ; SampleBias(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,bias,clamp)
  %186 = extractvalue %dx.types.ResRet.f32 %185, 0
  %187 = fmul fast float %186, %178
  %188 = icmp eq i32 %176, 0
  br i1 %188, label %208, label %189, !dx.controlflow.hints !61

; <label>:189                                     ; preds = %164
  %190 = add i32 %125, 64
  %191 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %190, i32 undef)  ; BufferLoad(srv,index,wot)
  %192 = extractvalue %dx.types.ResRet.f32 %191, 0
  %193 = fadd fast float %192, 1.000000e+00
  %194 = fmul fast float %193, %39
  %195 = fsub fast float %194, %192
  %196 = fsub fast float %193, %195
  %197 = call float @dx.op.unary.f32(i32 7, float %196)  ; Saturate(value)
  %198 = fsub fast float 1.000000e+00, %194
  %199 = call float @dx.op.unary.f32(i32 7, float %198)  ; Saturate(value)
  %200 = fsub fast float %197, %199
  %201 = fsub fast float %187, %199
  %202 = fdiv fast float %201, %200
  %203 = call float @dx.op.unary.f32(i32 7, float %202)  ; Saturate(value)
  %204 = fmul fast float %203, 2.000000e+00
  %205 = fsub fast float 3.000000e+00, %204
  %206 = fmul fast float %203, %203
  %207 = fmul fast float %206, %205
  br label %208

; <label>:208                                     ; preds = %189, %164
  %209 = phi float [ %207, %189 ], [ %187, %164 ]
  %210 = fcmp fast ogt float %209, 0.000000e+00
  br i1 %210, label %212, label %211

; <label>:211                                     ; preds = %208
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %212

; <label>:212                                     ; preds = %211, %208
  %213 = call float @dx.op.unary.f32(i32 7, float %209)  ; Saturate(value)
  %214 = fmul fast float %50, 5.000000e-01
  %215 = fmul fast float %51, 5.000000e-01
  %216 = fptosi float %214 to i32
  %217 = fptosi float %215 to i32
  %218 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %216, i32 %217, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %219 = extractvalue %dx.types.ResRet.i32 %218, 0
  %220 = lshr i32 %219, 18
  %221 = uitofp i32 %220 to float
  %222 = fmul fast float %221, 0x3F4C00EBA0000000
  %223 = call float @dx.op.unary.f32(i32 21, float %222)  ; Exp(value)
  %224 = fadd fast float %223, -1.000000e+00
  %225 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %10, i32 0)  ; GetDimensions(handle,mipLevel)
  %226 = extractvalue %dx.types.Dimensions %225, 0
  %227 = sitofp i32 %226 to float
  %228 = extractvalue %dx.types.Dimensions %225, 1
  %229 = sitofp i32 %228 to float
  %230 = fcmp fast oge float %214, %227
  %231 = fcmp fast oge float %215, %229
  %232 = or i1 %230, %231
  %233 = select i1 %232, float 0x4197782600000000, float %224
  %234 = fsub fast float %233, %43
  %235 = fcmp fast ogt float %234, 0.000000e+00
  %236 = and i32 %124, -2
  %237 = icmp eq i32 %236, 2
  %238 = and i1 %237, %235
  %239 = xor i1 %235, true
  %240 = icmp eq i32 %124, 1
  %241 = and i1 %240, %239
  %242 = or i1 %238, %241
  %243 = and i32 %128, 262144
  %244 = icmp ne i32 %243, 0
  %245 = and i1 %244, %242
  %246 = xor i1 %242, true
  %247 = and i32 %128, 131072
  %248 = icmp ne i32 %247, 0
  %249 = and i1 %248, %246
  %250 = or i1 %245, %249
  br i1 %250, label %251, label %252

; <label>:251                                     ; preds = %212
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %252

; <label>:252                                     ; preds = %251, %212
  %253 = and i32 %128, 32
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %520, label %255, !dx.controlflow.hints !62

; <label>:255                                     ; preds = %252
  %256 = add i32 %125, 80
  %257 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %256, i32 undef)  ; BufferLoad(srv,index,wot)
  %258 = extractvalue %dx.types.ResRet.f32 %257, 0
  %259 = extractvalue %dx.types.ResRet.f32 %257, 1
  %260 = extractvalue %dx.types.ResRet.f32 %257, 2
  %261 = extractvalue %dx.types.ResRet.f32 %257, 3
  %262 = add i32 %125, 96
  %263 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %262, i32 undef)  ; BufferLoad(srv,index,wot)
  %264 = extractvalue %dx.types.ResRet.f32 %263, 0
  %265 = extractvalue %dx.types.ResRet.f32 %263, 1
  %266 = extractvalue %dx.types.ResRet.f32 %263, 2
  %267 = add i32 %125, 112
  %268 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %267, i32 undef)  ; BufferLoad(srv,index,wot)
  %269 = extractvalue %dx.types.ResRet.f32 %268, 0
  %270 = extractvalue %dx.types.ResRet.f32 %268, 1
  %271 = extractvalue %dx.types.ResRet.f32 %268, 2
  %272 = extractvalue %dx.types.ResRet.f32 %268, 3
  %273 = add i32 %125, 128
  %274 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %273, i32 undef)  ; BufferLoad(srv,index,wot)
  %275 = extractvalue %dx.types.ResRet.f32 %274, 0
  %276 = extractvalue %dx.types.ResRet.f32 %274, 1
  %277 = extractvalue %dx.types.ResRet.f32 %274, 2
  %278 = extractvalue %dx.types.ResRet.f32 %274, 3
  %279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %126, i32 undef)  ; BufferLoad(srv,index,wot)
  %280 = extractvalue %dx.types.ResRet.i32 %279, 0
  %281 = and i32 %280, 4096
  %282 = icmp ne i32 %281, 0
  %283 = fcmp fast une float %266, 0.000000e+00
  %284 = and i32 %280, 64
  %285 = icmp ne i32 %284, 0
  %286 = and i32 %280, 128
  %287 = icmp eq i32 %286, 0
  %288 = and i32 %280, 2048
  %289 = icmp eq i32 %288, 0
  %290 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %13, i32 0)  ; GetDimensions(handle,mipLevel)
  %291 = extractvalue %dx.types.Dimensions %290, 0
  %292 = sitofp i32 %291 to float
  %293 = extractvalue %dx.types.Dimensions %290, 1
  %294 = sitofp i32 %293 to float
  %295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %296 = extractvalue %dx.types.CBufRet.f32 %295, 2
  %297 = extractvalue %dx.types.CBufRet.f32 %295, 3
  %298 = fmul fast float %296, %50
  %299 = fmul fast float %297, %51
  %300 = fmul fast float %298, %292
  %301 = fmul fast float %299, %294
  %302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %303 = extractvalue %dx.types.CBufRet.f32 %302, 1
  %304 = fsub fast float -0.000000e+00, %303
  %305 = fptoui float %304 to i32
  %306 = fptoui float %300 to i32
  %307 = fptoui float %301 to i32
  %308 = and i32 %305, 31
  %309 = lshr i32 %306, %308
  %310 = lshr i32 %307, %308
  %311 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %13, i32 %305, i32 %309, i32 %310, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %312 = extractvalue %dx.types.ResRet.f32 %311, 0
  %313 = fcmp fast ogt float %312, -1.000000e+00
  %314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %315 = extractvalue %dx.types.CBufRet.f32 %314, 1
  %316 = select i1 %313, float %315, float 1.000000e+00
  %317 = fadd fast float %312, 1.000000e+00
  %318 = fmul fast float %316, %317
  %319 = call float @dx.op.unary.f32(i32 6, float %318)  ; FAbs(value)
  %320 = extractvalue %dx.types.CBufRet.f32 %314, 3
  %321 = fcmp fast oge float %319, %320
  %322 = select i1 %321, float 0x4197782600000000, float %319
  br i1 %289, label %405, label %323, !dx.controlflow.hints !63

; <label>:323                                     ; preds = %255
  %324 = fmul fast float %55, %296
  %325 = fmul fast float %57, %297
  %326 = fsub fast float 1.000000e+00, %324
  %327 = fsub fast float 1.000000e+00, %325
  %328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %329 = extractvalue %dx.types.CBufRet.f32 %328, 0
  %330 = extractvalue %dx.types.CBufRet.f32 %328, 1
  %331 = extractvalue %dx.types.CBufRet.f32 %328, 2
  %332 = fmul fast float %326, %329
  %333 = fmul fast float %326, %330
  %334 = fmul fast float %326, %331
  %335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %336 = extractvalue %dx.types.CBufRet.f32 %335, 0
  %337 = extractvalue %dx.types.CBufRet.f32 %335, 1
  %338 = extractvalue %dx.types.CBufRet.f32 %335, 2
  %339 = fmul fast float %327, %336
  %340 = fmul fast float %327, %337
  %341 = fmul fast float %327, %338
  %342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %343 = extractvalue %dx.types.CBufRet.f32 %342, 0
  %344 = extractvalue %dx.types.CBufRet.f32 %342, 1
  %345 = extractvalue %dx.types.CBufRet.f32 %342, 2
  %346 = fadd fast float %339, %343
  %347 = fadd fast float %346, %332
  %348 = fadd fast float %340, %344
  %349 = fadd fast float %348, %333
  %350 = fadd fast float %341, %345
  %351 = fadd fast float %350, %334
  %352 = fmul fast float %347, %322
  %353 = fmul fast float %349, %322
  %354 = fmul fast float %351, %322
  %355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %356 = extractvalue %dx.types.CBufRet.f32 %355, 0
  %357 = extractvalue %dx.types.CBufRet.f32 %355, 1
  %358 = extractvalue %dx.types.CBufRet.f32 %355, 2
  %359 = fadd fast float %352, %356
  %360 = fadd fast float %353, %357
  %361 = fadd fast float %354, %358
  %362 = call float @dx.op.dot3.f32(i32 55, float %359, float %360, float %361, float %359, float %360, float %361)  ; Dot3(ax,ay,az,bx,by,bz)
  %363 = fsub fast float 1.000000e+00, %362
  %364 = fcmp fast olt float %363, %265
  %365 = fcmp fast ogt float %363, %264
  %366 = or i1 %364, %365
  %367 = select i1 %366, float 0.000000e+00, float %363
  %368 = fsub fast float %264, %265
  %369 = fsub fast float %367, %265
  %370 = fdiv fast float %369, %368
  %371 = call float @dx.op.unary.f32(i32 7, float %370)  ; Saturate(value)
  %372 = fmul fast float %371, 2.000000e+00
  %373 = fsub fast float 3.000000e+00, %372
  %374 = fmul fast float %371, %371
  %375 = fmul fast float %374, %373
  %376 = fmul fast float %269, %36
  %377 = fmul fast float %270, %37
  %378 = fmul fast float %271, %38
  %379 = fsub fast float %376, %275
  %380 = fsub fast float %377, %276
  %381 = fsub fast float %378, %277
  %382 = fsub fast float %272, %278
  %383 = fmul fast float %375, %379
  %384 = fmul fast float %375, %380
  %385 = fmul fast float %375, %381
  %386 = fmul fast float %375, %382
  %387 = fadd fast float %383, %275
  %388 = fadd fast float %384, %276
  %389 = fadd fast float %385, %277
  %390 = fadd fast float %386, %278
  %391 = fmul fast float %269, %23
  %392 = fmul fast float %270, %24
  %393 = fmul fast float %271, %25
  %394 = fsub fast float %391, %275
  %395 = fsub fast float %392, %276
  %396 = fsub fast float %393, %277
  %397 = fmul fast float %375, %394
  %398 = fmul fast float %375, %395
  %399 = fmul fast float %375, %396
  %400 = fadd fast float %397, %275
  %401 = fadd fast float %398, %276
  %402 = fadd fast float %399, %277
  %403 = fmul fast float %258, %258
  %404 = fmul fast float %403, %367
  br label %508

; <label>:405                                     ; preds = %255
  %406 = and i32 %280, 256
  %407 = icmp eq i32 %406, 0
  %408 = fsub fast float %322, %43
  br i1 %407, label %469, label %409

; <label>:409                                     ; preds = %405
  %410 = fadd fast float %264, %43
  %411 = fcmp fast olt float %322, %43
  %412 = fcmp fast ogt float %322, %410
  %413 = or i1 %411, %412
  %414 = select i1 %413, float 0.000000e+00, float %408
  %415 = call float @dx.op.unary.f32(i32 83, float %322)  ; DerivCoarseX(value)
  %416 = call float @dx.op.unary.f32(i32 84, float %322)  ; DerivCoarseY(value)
  %417 = fmul fast float %415, %415
  %418 = fmul fast float %416, %416
  %419 = fadd fast float %418, %417
  %420 = call float @dx.op.unary.f32(i32 24, float %419)  ; Sqrt(value)
  %421 = extractvalue %dx.types.CBufRet.f32 %302, 2
  %422 = fmul fast float %421, %420
  %423 = call float @dx.op.unary.f32(i32 7, float %422)  ; Saturate(value)
  %424 = fmul fast float %423, %265
  %425 = fdiv fast float %408, %424
  %426 = call float @dx.op.unary.f32(i32 7, float %425)  ; Saturate(value)
  %427 = fmul fast float %426, 2.000000e+00
  %428 = fsub fast float 3.000000e+00, %427
  %429 = fmul fast float %426, %426
  %430 = fmul fast float %429, %428
  %431 = fsub fast float %322, %410
  %432 = fadd fast float %431, %424
  %433 = fdiv fast float %432, %424
  %434 = call float @dx.op.unary.f32(i32 7, float %433)  ; Saturate(value)
  %435 = fmul fast float %434, 2.000000e+00
  %436 = fsub fast float 3.000000e+00, %435
  %437 = fmul fast float %434, %434
  %438 = fmul fast float %437, %436
  %439 = fsub fast float %430, %438
  %440 = fmul fast float %269, %36
  %441 = fmul fast float %270, %37
  %442 = fmul fast float %271, %38
  %443 = fsub fast float %440, %275
  %444 = fsub fast float %441, %276
  %445 = fsub fast float %442, %277
  %446 = fsub fast float %272, %278
  %447 = fmul fast float %439, %443
  %448 = fmul fast float %439, %444
  %449 = fmul fast float %439, %445
  %450 = fmul fast float %439, %446
  %451 = fadd fast float %447, %275
  %452 = fadd fast float %448, %276
  %453 = fadd fast float %449, %277
  %454 = fadd fast float %450, %278
  %455 = fmul fast float %269, %23
  %456 = fmul fast float %270, %24
  %457 = fmul fast float %271, %25
  %458 = fsub fast float %455, %275
  %459 = fsub fast float %456, %276
  %460 = fsub fast float %457, %277
  %461 = fmul fast float %439, %458
  %462 = fmul fast float %439, %459
  %463 = fmul fast float %439, %460
  %464 = fadd fast float %461, %275
  %465 = fadd fast float %462, %276
  %466 = fadd fast float %463, %277
  %467 = fmul fast float %414, %258
  %468 = call float @dx.op.unary.f32(i32 6, float %467)  ; FAbs(value)
  br label %508

; <label>:469                                     ; preds = %405
  br i1 %283, label %470, label %481

; <label>:470                                     ; preds = %469
  %471 = select i1 %285, float 5.000000e+01, float 1.000000e+00
  %472 = fmul fast float %471, %258
  %473 = fmul fast float %174, 2.000000e+00
  %474 = fmul fast float %175, 2.000000e+00
  %475 = fadd fast float %473, -1.000000e+00
  %476 = fadd fast float %474, -1.000000e+00
  %477 = call float @dx.op.dot2.f32(i32 54, float %475, float %476, float %475, float %476)  ; Dot2(ax,ay,bx,by)
  %478 = fmul fast float %477, %266
  %479 = fsub fast float %408, %478
  %480 = fmul fast float %472, %479
  br label %508

; <label>:481                                     ; preds = %469
  br i1 %287, label %501, label %482

; <label>:482                                     ; preds = %481
  %483 = select i1 %285, float 0x3F947AE140000000, float 1.000000e+00
  %484 = fdiv fast float 1.000000e+00, %483
  %485 = fmul fast float %483, %259
  %486 = fmul fast float %483, %260
  %487 = fmul fast float %484, %261
  %488 = call float @dx.op.unary.f32(i32 6, float %408)  ; FAbs(value)
  %489 = fcmp fast olt float %488, %485
  br i1 %489, label %490, label %494, !dx.controlflow.hints !64

; <label>:490                                     ; preds = %482
  %491 = fmul fast float %484, %258
  %492 = fmul fast float %491, %488
  %493 = call float @dx.op.unary.f32(i32 6, float %492)  ; FAbs(value)
  br label %508

; <label>:494                                     ; preds = %482
  %495 = fcmp fast ogt float %488, %486
  br i1 %495, label %496, label %508

; <label>:496                                     ; preds = %494
  %497 = fsub fast float %488, %486
  %498 = fmul fast float %487, %497
  %499 = call float @dx.op.unary.f32(i32 6, float %498)  ; FAbs(value)
  %500 = fsub fast float 1.000000e+00, %499
  br label %508

; <label>:501                                     ; preds = %481
  %502 = select i1 %285, float 5.000000e+01, float 1.000000e+00
  %503 = fmul fast float %502, %258
  %504 = call float @dx.op.unary.f32(i32 6, float %234)  ; FAbs(value)
  %505 = select i1 %282, float %504, float 0x47EFFFFFE0000000
  %506 = call float @dx.op.binary.f32(i32 36, float %408, float %505)  ; FMin(a,b)
  %507 = fmul fast float %503, %506
  br label %508

; <label>:508                                     ; preds = %501, %496, %494, %490, %470, %409, %323
  %509 = phi float [ %404, %323 ], [ %468, %409 ], [ %480, %470 ], [ %507, %501 ], [ %493, %490 ], [ %500, %496 ], [ %488, %494 ]
  %510 = phi float [ %400, %323 ], [ %464, %409 ], [ %23, %470 ], [ %23, %501 ], [ %23, %490 ], [ %23, %496 ], [ %23, %494 ]
  %511 = phi float [ %401, %323 ], [ %465, %409 ], [ %24, %470 ], [ %24, %501 ], [ %24, %490 ], [ %24, %496 ], [ %24, %494 ]
  %512 = phi float [ %402, %323 ], [ %466, %409 ], [ %25, %470 ], [ %25, %501 ], [ %25, %490 ], [ %25, %496 ], [ %25, %494 ]
  %513 = phi float [ %387, %323 ], [ %451, %409 ], [ %36, %470 ], [ %36, %501 ], [ %36, %490 ], [ %36, %496 ], [ %36, %494 ]
  %514 = phi float [ %388, %323 ], [ %452, %409 ], [ %37, %470 ], [ %37, %501 ], [ %37, %490 ], [ %37, %496 ], [ %37, %494 ]
  %515 = phi float [ %389, %323 ], [ %453, %409 ], [ %38, %470 ], [ %38, %501 ], [ %38, %490 ], [ %38, %496 ], [ %38, %494 ]
  %516 = phi float [ %390, %323 ], [ %454, %409 ], [ 1.000000e+00, %470 ], [ 1.000000e+00, %501 ], [ 1.000000e+00, %490 ], [ 1.000000e+00, %496 ], [ 1.000000e+00, %494 ]
  %517 = call float @dx.op.unary.f32(i32 7, float %509)  ; Saturate(value)
  %518 = fmul fast float %516, %213
  %519 = fmul fast float %518, %517
  br label %520

; <label>:520                                     ; preds = %508, %252
  %521 = phi float [ %513, %508 ], [ %36, %252 ]
  %522 = phi float [ %514, %508 ], [ %37, %252 ]
  %523 = phi float [ %515, %508 ], [ %38, %252 ]
  %524 = phi float [ %519, %508 ], [ %213, %252 ]
  %525 = phi float [ %510, %508 ], [ %23, %252 ]
  %526 = phi float [ %511, %508 ], [ %24, %252 ]
  %527 = phi float [ %512, %508 ], [ %25, %252 ]
  %528 = fmul fast float %525, %26
  %529 = fmul fast float %526, %26
  %530 = fmul fast float %527, %26
  %531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %532 = extractvalue %dx.types.CBufRet.f32 %531, 2
  %533 = fptosi float %43 to i32
  %534 = sitofp i32 %533 to float
  %535 = fadd fast float %532, %534
  %536 = fmul fast float %535, 0x3FE3C6EF40000000
  %537 = frem fast float %50, 2.560000e+02
  %538 = frem fast float %51, 2.560000e+02
  %539 = fptoui float %537 to i32
  %540 = fptoui float %538 to i32
  %541 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %539, i32 %540, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %542 = extractvalue %dx.types.ResRet.f32 %541, 0
  %543 = fadd fast float %542, %536
  %544 = call float @dx.op.unary.f32(i32 22, float %543)  ; Frc(value)
  %545 = and i32 %128, 1
  %546 = icmp eq i32 %545, 0
  br i1 %546, label %606, label %547, !dx.controlflow.hints !65

; <label>:547                                     ; preds = %520
  %548 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %125, i32 undef)  ; BufferLoad(srv,index,wot)
  %549 = extractvalue %dx.types.ResRet.f32 %548, 2
  %550 = extractvalue %dx.types.ResRet.f32 %548, 3
  %551 = add i32 %125, 16
  %552 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %551, i32 undef)  ; BufferLoad(srv,index,wot)
  %553 = extractvalue %dx.types.ResRet.f32 %552, 0
  %554 = extractvalue %dx.types.ResRet.f32 %552, 1
  %555 = extractvalue %dx.types.ResRet.f32 %552, 2
  %556 = add i32 %125, 32
  %557 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %556, i32 undef)  ; BufferLoad(srv,index,wot)
  %558 = extractvalue %dx.types.ResRet.f32 %557, 0
  %559 = extractvalue %dx.types.ResRet.f32 %557, 1
  %560 = extractvalue %dx.types.ResRet.f32 %557, 2
  %561 = and i32 %128, 2
  %562 = icmp eq i32 %561, 0
  %563 = call float @dx.op.dot3.f32(i32 55, float %30, float %31, float %32, float %30, float %31, float %32)  ; Dot3(ax,ay,az,bx,by,bz)
  %564 = call float @dx.op.unary.f32(i32 25, float %563)  ; Rsqrt(value)
  %565 = fmul fast float %564, %30
  %566 = fmul fast float %564, %31
  %567 = fmul fast float %564, %32
  %568 = call float @dx.op.dot3.f32(i32 55, float %85, float %86, float %87, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %569 = call float @dx.op.unary.f32(i32 25, float %568)  ; Rsqrt(value)
  %570 = fmul fast float %569, %85
  %571 = fmul fast float %569, %86
  %572 = fmul fast float %569, %87
  %573 = call float @dx.op.dot3.f32(i32 55, float %570, float %571, float %572, float %565, float %566, float %567)  ; Dot3(ax,ay,az,bx,by,bz)
  %574 = fmul fast float %573, %573
  %575 = fmul fast float %574, %549
  %576 = fadd fast float %575, %550
  %577 = call float @dx.op.unary.f32(i32 7, float %576)  ; Saturate(value)
  br i1 %562, label %578, label %588, !dx.controlflow.hints !66

; <label>:578                                     ; preds = %547
  %579 = extractvalue %dx.types.ResRet.f32 %548, 1
  %580 = extractvalue %dx.types.ResRet.f32 %548, 0
  %581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %582 = extractvalue %dx.types.CBufRet.f32 %581, 3
  %583 = fmul fast float %582, %568
  %584 = fsub fast float %580, %583
  %585 = fmul fast float %584, %579
  %586 = call float @dx.op.unary.f32(i32 7, float %585)  ; Saturate(value)
  %587 = fmul fast float %586, %577
  br label %588

; <label>:588                                     ; preds = %578, %547
  %589 = phi float [ %587, %578 ], [ %577, %547 ]
  %590 = fsub fast float %553, %558
  %591 = fsub fast float %554, %559
  %592 = fsub fast float %555, %560
  %593 = fmul fast float %589, %590
  %594 = fmul fast float %589, %591
  %595 = fmul fast float %589, %592
  %596 = fadd fast float %593, %558
  %597 = fadd fast float %594, %559
  %598 = fadd fast float %595, %560
  %599 = fmul fast float %596, %521
  %600 = fmul fast float %597, %522
  %601 = fmul fast float %598, %523
  %602 = fmul fast float %596, %528
  %603 = fmul fast float %597, %529
  %604 = fmul fast float %598, %530
  %605 = fmul fast float %589, %524
  br label %606

; <label>:606                                     ; preds = %588, %520
  %607 = phi float [ %599, %588 ], [ %521, %520 ]
  %608 = phi float [ %600, %588 ], [ %522, %520 ]
  %609 = phi float [ %601, %588 ], [ %523, %520 ]
  %610 = phi float [ %605, %588 ], [ %524, %520 ]
  %611 = phi float [ %602, %588 ], [ %528, %520 ]
  %612 = phi float [ %603, %588 ], [ %529, %520 ]
  %613 = phi float [ %604, %588 ], [ %530, %520 ]
  %614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 120, i32 undef)  ; BufferLoad(srv,index,wot)
  %615 = extractvalue %dx.types.ResRet.i32 %614, 0
  %616 = add i32 %615, 0
  %617 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %616, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %619 = extractvalue %dx.types.ResRet.i32 %618, 0
  %620 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %617, %dx.types.Handle %46, float %165, float %166, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %621 = extractvalue %dx.types.ResRet.f32 %620, 0
  %622 = extractvalue %dx.types.ResRet.f32 %620, 1
  %623 = extractvalue %dx.types.ResRet.f32 %620, 2
  %624 = extractvalue %dx.types.ResRet.f32 %620, 3
  %625 = and i32 %619, 255
  %626 = uitofp i32 %625 to float
  %627 = lshr i32 %619, 8
  %628 = and i32 %627, 255
  %629 = uitofp i32 %628 to float
  %630 = fmul fast float %624, %626
  %631 = fadd fast float %630, %629
  %632 = fmul fast float %631, 0x3F70101000000000
  %633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %634 = extractvalue %dx.types.ResRet.i32 %633, 0
  %635 = and i32 %634, 255
  %636 = uitofp i32 %635 to float
  %637 = fmul fast float %636, 0x3F70101020000000
  %638 = lshr i32 %634, 8
  %639 = and i32 %638, 255
  %640 = uitofp i32 %639 to float
  %641 = fmul fast float %640, 0x3F70101020000000
  %642 = lshr i32 %634, 16
  %643 = and i32 %642, 255
  %644 = uitofp i32 %643 to float
  %645 = fmul fast float %644, 0x3F70101020000000
  %646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 124, i32 undef)  ; BufferLoad(srv,index,wot)
  %647 = extractvalue %dx.types.ResRet.i32 %646, 0
  %648 = add i32 %647, 0
  %649 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %648, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %650 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %649, %dx.types.Handle %46, float %165, float %166, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %651 = extractvalue %dx.types.ResRet.f32 %650, 0
  %652 = extractvalue %dx.types.ResRet.f32 %650, 1
  %653 = extractvalue %dx.types.ResRet.f32 %650, 2
  %654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 44, i32 undef)  ; BufferLoad(srv,index,wot)
  %655 = extractvalue %dx.types.ResRet.i32 %654, 0
  %656 = shl i32 %655, 4
  %657 = and i32 %656, 32752
  %658 = call float @dx.op.legacyF16ToF32(i32 131, i32 %657)  ; LegacyF16ToF32(value)
  %659 = lshr i32 %655, 7
  %660 = and i32 %659, 32752
  %661 = call float @dx.op.legacyF16ToF32(i32 131, i32 %660)  ; LegacyF16ToF32(value)
  %662 = lshr i32 %655, 22
  %663 = shl nuw nsw i32 %662, 5
  %664 = call float @dx.op.legacyF16ToF32(i32 131, i32 %663)  ; LegacyF16ToF32(value)
  %665 = fmul fast float %658, %651
  %666 = fmul fast float %661, %652
  %667 = fmul fast float %664, %653
  %668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %669 = extractvalue %dx.types.CBufRet.f32 %668, 0
  %670 = fmul fast float %665, %669
  %671 = fmul fast float %666, %669
  %672 = fmul fast float %667, %669
  %673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %674 = extractvalue %dx.types.ResRet.i32 %673, 0
  %675 = lshr i32 %674, 22
  %676 = shl nuw nsw i32 %675, 5
  %677 = call float @dx.op.legacyF16ToF32(i32 131, i32 %676)  ; LegacyF16ToF32(value)
  %678 = fmul fast float %677, %670
  %679 = select i1 %108, float %678, float %670
  %680 = fadd fast float %632, 0xBFB99999A0000000
  %681 = call float @dx.op.unary.f32(i32 7, float %680)  ; Saturate(value)
  %682 = fmul fast float %681, 0x3FF1C71C80000000
  %683 = fsub fast float 1.000000e+00, %682
  %684 = call float @dx.op.unary.f32(i32 7, float %683)  ; Saturate(value)
  %685 = fmul fast float %621, %607
  %686 = fmul fast float %637, %637
  %687 = fmul fast float %686, %685
  %688 = fmul fast float %687, %684
  %689 = fmul fast float %622, %608
  %690 = fmul fast float %641, %641
  %691 = fmul fast float %690, %689
  %692 = fmul fast float %691, %684
  %693 = fmul fast float %623, %609
  %694 = fmul fast float %645, %645
  %695 = fmul fast float %694, %693
  %696 = fmul fast float %695, %684
  %697 = call float @dx.op.unary.f32(i32 7, float %688)  ; Saturate(value)
  %698 = call float @dx.op.unary.f32(i32 7, float %692)  ; Saturate(value)
  %699 = call float @dx.op.unary.f32(i32 7, float %696)  ; Saturate(value)
  %700 = fmul fast float %679, %611
  %701 = fmul fast float %671, %612
  %702 = fmul fast float %672, %613
  %703 = call float @dx.op.dot3.f32(i32 55, float %700, float %701, float %702, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %704 = select i1 %108, float 0.000000e+00, float %700
  %705 = select i1 %108, float %703, float %701
  %706 = select i1 %108, float 0.000000e+00, float %702
  %707 = call float @dx.op.dot3.f32(i32 55, float %697, float %698, float %699, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %709 = extractvalue %dx.types.ResRet.i32 %708, 0
  %710 = and i32 %709, 255
  %711 = uitofp i32 %710 to float
  %712 = lshr i32 %709, 8
  %713 = and i32 %712, 255
  %714 = uitofp i32 %713 to float
  %715 = fmul fast float %714, %707
  %716 = fadd fast float %715, %711
  %717 = fmul fast float %716, 0x3F70101020000000
  %718 = call float @dx.op.unary.f32(i32 7, float %717)  ; Saturate(value)
  %719 = and i32 %128, 8192
  %720 = icmp eq i32 %719, 0
  %721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %722 = extractvalue %dx.types.CBufRet.f32 %721, 0
  br i1 %720, label %729, label %723, !dx.controlflow.hints !67

; <label>:723                                     ; preds = %606
  %724 = add i32 %125, 176
  %725 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %724, i32 undef)  ; BufferLoad(srv,index,wot)
  %726 = extractvalue %dx.types.ResRet.f32 %725, 0
  %727 = fcmp fast oge float %726, 0.000000e+00
  %728 = select i1 %727, float %726, float %722
  br label %735

; <label>:729                                     ; preds = %606
  %730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 104, i32 undef)  ; BufferLoad(srv,index,wot)
  %731 = extractvalue %dx.types.ResRet.i32 %730, 0
  %732 = bitcast i32 %731 to float
  %733 = fcmp fast oge float %732, 0.000000e+00
  %734 = select i1 %733, float %732, float %722
  br label %735

; <label>:735                                     ; preds = %729, %723
  %736 = phi float [ %728, %723 ], [ %734, %729 ]
  %737 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %216, i32 %217, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %738 = extractvalue %dx.types.ResRet.i32 %737, 0
  %739 = lshr i32 %738, 18
  %740 = uitofp i32 %739 to float
  %741 = fmul fast float %740, 0x3F4C00EBA0000000
  %742 = call float @dx.op.unary.f32(i32 21, float %741)  ; Exp(value)
  %743 = fadd fast float %742, -1.000000e+00
  %744 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %10, i32 0)  ; GetDimensions(handle,mipLevel)
  %745 = extractvalue %dx.types.Dimensions %744, 0
  %746 = sitofp i32 %745 to float
  %747 = extractvalue %dx.types.Dimensions %744, 1
  %748 = sitofp i32 %747 to float
  %749 = fcmp fast oge float %214, %746
  %750 = fcmp fast oge float %215, %748
  %751 = or i1 %749, %750
  %752 = select i1 %751, float 0x4197782600000000, float %743
  %753 = icmp eq i32 %124, 3
  %754 = fcmp fast ogt float %43, %752
  %755 = and i1 %240, %754
  %756 = or i1 %753, %755
  %757 = icmp eq i32 %124, 2
  %758 = fcmp fast ole float %43, %752
  %759 = and i1 %757, %758
  %760 = or i1 %759, %756
  %761 = fmul fast float %33, %27
  %762 = fmul fast float %761, %525
  %763 = fmul fast float %762, %679
  %764 = fmul fast float %33, %28
  %765 = fmul fast float %764, %526
  %766 = fmul fast float %765, %671
  %767 = fmul fast float %33, %29
  %768 = fmul fast float %767, %527
  %769 = fmul fast float %768, %672
  %770 = fadd fast float %704, %763
  %771 = fadd fast float %705, %766
  %772 = fadd fast float %706, %769
  %773 = fmul fast float %770, %610
  %774 = fmul fast float %771, %610
  %775 = fmul fast float %772, %610
  %776 = fmul fast float %610, %27
  %777 = fmul fast float %610, %28
  %778 = fmul fast float %610, %29
  %779 = fsub fast float 1.000000e+00, %610
  %780 = call float @dx.op.dot3.f32(i32 55, float %779, float %779, float %779, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %781 = fsub fast float 1.000000e+00, %780
  %782 = fmul fast float %736, %718
  %783 = fsub fast float 1.000000e+00, %718
  %784 = call float @dx.op.unary.f32(i32 7, float %783)  ; Saturate(value)
  %785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %786 = extractvalue %dx.types.CBufRet.f32 %785, 3
  %787 = fmul fast float %786, %784
  %788 = fadd fast float %787, %782
  %789 = and i32 %128, 1048576
  %790 = icmp eq i32 %789, 0
  br i1 %790, label %882, label %791, !dx.controlflow.hints !68

; <label>:791                                     ; preds = %735
  %792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %793 = extractvalue %dx.types.CBufRet.f32 %792, 2
  %794 = extractvalue %dx.types.CBufRet.f32 %792, 3
  %795 = fmul fast float %793, %50
  %796 = fmul fast float %794, %51
  %797 = call float @dx.op.unary.f32(i32 7, float %795)  ; Saturate(value)
  %798 = call float @dx.op.unary.f32(i32 7, float %796)  ; Saturate(value)
  %799 = select i1 %760, i32 2, i32 0
  %800 = or i32 %799, 1
  %801 = uitofp i32 %800 to float
  %802 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %797, float %798, float %801, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %803 = extractvalue %dx.types.ResRet.f32 %802, 0
  %804 = extractvalue %dx.types.ResRet.f32 %802, 1
  %805 = extractvalue %dx.types.ResRet.f32 %802, 2
  %806 = extractvalue %dx.types.ResRet.f32 %802, 3
  %807 = add nuw nsw i32 %799, 2
  %808 = uitofp i32 %807 to float
  %809 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %797, float %798, float %808, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %810 = extractvalue %dx.types.ResRet.f32 %809, 0
  %811 = extractvalue %dx.types.ResRet.f32 %809, 1
  %812 = extractvalue %dx.types.ResRet.f32 %809, 2
  %813 = extractvalue %dx.types.ResRet.f32 %809, 3
  %814 = call float @dx.op.binary.f32(i32 35, float %804, float %805)  ; FMax(a,b)
  %815 = call float @dx.op.binary.f32(i32 35, float %803, float %814)  ; FMax(a,b)
  %816 = call float @dx.op.binary.f32(i32 35, float %815, float %806)  ; FMax(a,b)
  %817 = call float @dx.op.binary.f32(i32 36, float %811, float %812)  ; FMin(a,b)
  %818 = call float @dx.op.binary.f32(i32 36, float %810, float %817)  ; FMin(a,b)
  %819 = call float @dx.op.binary.f32(i32 36, float %818, float %813)  ; FMin(a,b)
  %820 = fmul fast float %816, 2.550000e+02
  %821 = fadd fast float %820, 0x3F70101020000000
  %822 = fptoui float %821 to i32
  %823 = fmul fast float %819, 2.550000e+02
  %824 = fadd fast float %823, 0x3F70101020000000
  %825 = fptoui float %824 to i32
  %826 = icmp ult i32 %822, %825
  br i1 %826, label %827, label %875

; <label>:827                                     ; preds = %791
  %828 = fcmp fast ogt float %42, 9.843750e-01
  %829 = fadd fast float %43, -4.000000e+00
  %830 = select i1 %828, float -4.000000e+00, float %829
  %831 = call float @dx.op.binary.f32(i32 35, float %830, float 0.000000e+00)  ; FMax(a,b)
  %832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %833 = extractvalue %dx.types.CBufRet.f32 %832, 0
  %834 = fadd fast float %833, %831
  %835 = extractvalue %dx.types.CBufRet.f32 %832, 2
  %836 = fmul fast float %834, %835
  %837 = call float @dx.op.unary.f32(i32 23, float %836)  ; Log(value)
  %838 = extractvalue %dx.types.CBufRet.f32 %832, 3
  %839 = fmul fast float %838, %837
  %840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %841 = extractvalue %dx.types.CBufRet.f32 %840, 2
  %842 = fmul fast float %839, %841
  %843 = call float @dx.op.unary.f32(i32 7, float %842)  ; Saturate(value)
  %844 = uitofp i32 %822 to float
  %845 = uitofp i32 %825 to float
  %846 = fadd fast float %844, 5.000000e-01
  %847 = fadd fast float %845, 5.000000e-01
  %848 = fmul fast float %841, %846
  %849 = fmul fast float %841, %847
  %850 = fadd fast float %848, 0x3F0FFB4800000000
  %851 = fadd fast float %849, 0xBF0FFB4800000000
  %852 = call float @dx.op.binary.f32(i32 35, float %843, float %850)  ; FMax(a,b)
  %853 = call float @dx.op.binary.f32(i32 36, float %852, float %851)  ; FMin(a,b)
  %854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %855 = extractvalue %dx.types.CBufRet.f32 %854, 1
  %856 = extractvalue %dx.types.CBufRet.f32 %854, 2
  %857 = extractvalue %dx.types.CBufRet.f32 %854, 0
  %858 = select i1 %760, float %857, float 0.000000e+00
  %859 = fmul fast float %855, %853
  %860 = fadd fast float %858, %859
  %861 = fadd fast float %858, %856
  %862 = fsub fast float %855, %856
  %863 = fadd fast float %862, %858
  %864 = call float @dx.op.binary.f32(i32 35, float %860, float %861)  ; FMax(a,b)
  %865 = call float @dx.op.binary.f32(i32 36, float %864, float %863)  ; FMin(a,b)
  %866 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %17, float %797, float %798, float %865, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %867 = extractvalue %dx.types.ResRet.f32 %866, 0
  %868 = extractvalue %dx.types.ResRet.f32 %866, 1
  %869 = extractvalue %dx.types.ResRet.f32 %866, 2
  %870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %871 = extractvalue %dx.types.CBufRet.f32 %870, 1
  %872 = fmul fast float %871, %867
  %873 = fmul fast float %871, %868
  %874 = fmul fast float %871, %869
  br label %875

; <label>:875                                     ; preds = %827, %791
  %876 = phi float [ %872, %827 ], [ 1.000000e+00, %791 ]
  %877 = phi float [ %873, %827 ], [ 1.000000e+00, %791 ]
  %878 = phi float [ %874, %827 ], [ 1.000000e+00, %791 ]
  %879 = fmul fast float %876, %773
  %880 = fmul fast float %877, %774
  %881 = fmul fast float %878, %775
  br label %882

; <label>:882                                     ; preds = %875, %735
  %883 = phi float [ %879, %875 ], [ %773, %735 ]
  %884 = phi float [ %880, %875 ], [ %774, %735 ]
  %885 = phi float [ %881, %875 ], [ %775, %735 ]
  %886 = and i32 %128, 2097152
  %887 = icmp eq i32 %886, 0
  br i1 %887, label %892, label %888, !dx.controlflow.hints !69

; <label>:888                                     ; preds = %882
  %889 = add i32 %125, 192
  %890 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %889, i32 undef)  ; BufferLoad(srv,index,wot)
  %891 = extractvalue %dx.types.ResRet.f32 %890, 0
  br label %895

; <label>:892                                     ; preds = %882
  %893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %894 = extractvalue %dx.types.CBufRet.f32 %893, 3
  br label %895

; <label>:895                                     ; preds = %892, %888
  %896 = phi float [ %891, %888 ], [ %894, %892 ]
  %897 = fmul fast float %776, %697
  %898 = fmul fast float %777, %698
  %899 = fmul fast float %778, %699
  br i1 %755, label %900, label %1040

; <label>:900                                     ; preds = %895
  %901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %902 = extractvalue %dx.types.CBufRet.f32 %901, 2
  %903 = extractvalue %dx.types.CBufRet.f32 %901, 3
  %904 = fmul fast float %902, %50
  %905 = fmul fast float %903, %51
  %906 = call float @dx.op.unary.f32(i32 7, float %904)  ; Saturate(value)
  %907 = call float @dx.op.unary.f32(i32 7, float %905)  ; Saturate(value)
  %908 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %906, float %907, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %909 = extractvalue %dx.types.ResRet.f32 %908, 0
  %910 = extractvalue %dx.types.ResRet.f32 %908, 1
  %911 = extractvalue %dx.types.ResRet.f32 %908, 2
  %912 = extractvalue %dx.types.ResRet.f32 %908, 3
  %913 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %906, float %907, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %914 = extractvalue %dx.types.ResRet.f32 %913, 0
  %915 = extractvalue %dx.types.ResRet.f32 %913, 1
  %916 = extractvalue %dx.types.ResRet.f32 %913, 2
  %917 = extractvalue %dx.types.ResRet.f32 %913, 3
  %918 = call float @dx.op.binary.f32(i32 35, float %910, float %911)  ; FMax(a,b)
  %919 = call float @dx.op.binary.f32(i32 35, float %909, float %918)  ; FMax(a,b)
  %920 = call float @dx.op.binary.f32(i32 35, float %919, float %912)  ; FMax(a,b)
  %921 = call float @dx.op.binary.f32(i32 36, float %915, float %916)  ; FMin(a,b)
  %922 = call float @dx.op.binary.f32(i32 36, float %914, float %921)  ; FMin(a,b)
  %923 = call float @dx.op.binary.f32(i32 36, float %922, float %917)  ; FMin(a,b)
  %924 = fmul fast float %920, 2.550000e+02
  %925 = fadd fast float %924, 0x3F70101020000000
  %926 = fptoui float %925 to i32
  %927 = fmul fast float %923, 2.550000e+02
  %928 = fadd fast float %927, 0x3F70101020000000
  %929 = fptoui float %928 to i32
  %930 = icmp ult i32 %926, %929
  br i1 %930, label %931, label %982

; <label>:931                                     ; preds = %900
  %932 = fcmp fast ogt float %42, 9.843750e-01
  %933 = fadd fast float %43, -4.000000e+00
  %934 = select i1 %932, float -4.000000e+00, float %933
  %935 = call float @dx.op.binary.f32(i32 35, float %934, float 0.000000e+00)  ; FMax(a,b)
  %936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %937 = extractvalue %dx.types.CBufRet.f32 %936, 0
  %938 = fadd fast float %937, %935
  %939 = extractvalue %dx.types.CBufRet.f32 %936, 2
  %940 = fmul fast float %938, %939
  %941 = call float @dx.op.unary.f32(i32 23, float %940)  ; Log(value)
  %942 = extractvalue %dx.types.CBufRet.f32 %936, 3
  %943 = fmul fast float %942, %941
  %944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %945 = extractvalue %dx.types.CBufRet.f32 %944, 2
  %946 = fmul fast float %943, %945
  %947 = call float @dx.op.unary.f32(i32 7, float %946)  ; Saturate(value)
  %948 = uitofp i32 %926 to float
  %949 = uitofp i32 %929 to float
  %950 = fadd fast float %948, 5.000000e-01
  %951 = fadd fast float %949, 5.000000e-01
  %952 = fmul fast float %945, %950
  %953 = fmul fast float %945, %951
  %954 = fadd fast float %952, 0x3F0FFB4800000000
  %955 = fadd fast float %953, 0xBF0FFB4800000000
  %956 = call float @dx.op.binary.f32(i32 35, float %947, float %954)  ; FMax(a,b)
  %957 = call float @dx.op.binary.f32(i32 36, float %956, float %955)  ; FMin(a,b)
  %958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %959 = extractvalue %dx.types.CBufRet.f32 %958, 1
  %960 = extractvalue %dx.types.CBufRet.f32 %958, 2
  %961 = extractvalue %dx.types.CBufRet.f32 %958, 0
  %962 = fmul fast float %959, %957
  %963 = fadd fast float %961, %962
  %964 = fadd fast float %961, %960
  %965 = fsub fast float %959, %960
  %966 = fadd fast float %965, %961
  %967 = call float @dx.op.binary.f32(i32 35, float %963, float %964)  ; FMax(a,b)
  %968 = call float @dx.op.binary.f32(i32 36, float %967, float %966)  ; FMin(a,b)
  %969 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %17, float %906, float %907, float %968, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %970 = extractvalue %dx.types.ResRet.f32 %969, 0
  %971 = extractvalue %dx.types.ResRet.f32 %969, 1
  %972 = extractvalue %dx.types.ResRet.f32 %969, 2
  %973 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %906, float %907, float %968, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %974 = extractvalue %dx.types.ResRet.f32 %973, 0
  %975 = extractvalue %dx.types.ResRet.f32 %973, 1
  %976 = extractvalue %dx.types.ResRet.f32 %973, 2
  %977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %978 = extractvalue %dx.types.CBufRet.f32 %977, 1
  %979 = fmul fast float %978, %974
  %980 = fmul fast float %978, %975
  %981 = fmul fast float %978, %976
  br label %982

; <label>:982                                     ; preds = %931, %900
  %983 = phi float [ %970, %931 ], [ 1.000000e+00, %900 ]
  %984 = phi float [ %971, %931 ], [ 1.000000e+00, %900 ]
  %985 = phi float [ %972, %931 ], [ 1.000000e+00, %900 ]
  %986 = phi float [ %979, %931 ], [ 0.000000e+00, %900 ]
  %987 = phi float [ %980, %931 ], [ 0.000000e+00, %900 ]
  %988 = phi float [ %981, %931 ], [ 0.000000e+00, %900 ]
  %989 = fmul fast float %986, %781
  %990 = fmul fast float %987, %781
  %991 = fmul fast float %988, %781
  %992 = call float @dx.op.dot3.f32(i32 55, float %983, float %984, float %985, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %993 = call float @dx.op.dot3.f32(i32 55, float %989, float %990, float %991, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %994 = select i1 %108, float %992, float %983
  %995 = select i1 %108, float %992, float %984
  %996 = select i1 %108, float 1.000000e+00, float %985
  %997 = select i1 %108, float %993, float %989
  %998 = select i1 %108, float 0.000000e+00, float %990
  %999 = select i1 %108, float 0.000000e+00, float %991
  %1000 = fmul fast float %994, %897
  %1001 = fmul fast float %995, %898
  %1002 = fmul fast float %996, %899
  %1003 = fadd fast float %1000, %997
  %1004 = fadd fast float %1001, %998
  %1005 = fadd fast float %999, %1002
  %1006 = fmul fast float %994, %883
  %1007 = fmul fast float %995, %884
  %1008 = fmul fast float %996, %885
  %1009 = fmul fast float %55, %902
  %1010 = fmul fast float %57, %903
  %1011 = fsub fast float 1.000000e+00, %1009
  %1012 = fsub fast float 1.000000e+00, %1010
  %1013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1014 = extractvalue %dx.types.CBufRet.f32 %1013, 0
  %1015 = extractvalue %dx.types.CBufRet.f32 %1013, 1
  %1016 = extractvalue %dx.types.CBufRet.f32 %1013, 2
  %1017 = fmul fast float %1011, %1014
  %1018 = fmul fast float %1011, %1015
  %1019 = fmul fast float %1011, %1016
  %1020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1021 = extractvalue %dx.types.CBufRet.f32 %1020, 0
  %1022 = extractvalue %dx.types.CBufRet.f32 %1020, 1
  %1023 = extractvalue %dx.types.CBufRet.f32 %1020, 2
  %1024 = fmul fast float %1012, %1021
  %1025 = fmul fast float %1012, %1022
  %1026 = fmul fast float %1012, %1023
  %1027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1028 = extractvalue %dx.types.CBufRet.f32 %1027, 0
  %1029 = extractvalue %dx.types.CBufRet.f32 %1027, 1
  %1030 = extractvalue %dx.types.CBufRet.f32 %1027, 2
  %1031 = fadd fast float %1024, %1028
  %1032 = fadd fast float %1031, %1017
  %1033 = fadd fast float %1025, %1029
  %1034 = fadd fast float %1033, %1018
  %1035 = fadd fast float %1026, %1030
  %1036 = fadd fast float %1035, %1019
  %1037 = fmul fast float %1032, %752
  %1038 = fmul fast float %1034, %752
  %1039 = fmul fast float %1036, %752
  br label %1040

; <label>:1040                                    ; preds = %982, %895
  %1041 = phi float [ %1037, %982 ], [ %85, %895 ]
  %1042 = phi float [ %1038, %982 ], [ %86, %895 ]
  %1043 = phi float [ %1039, %982 ], [ %87, %895 ]
  %1044 = phi float [ %752, %982 ], [ %43, %895 ]
  %1045 = phi float [ %1003, %982 ], [ %897, %895 ]
  %1046 = phi float [ %1004, %982 ], [ %898, %895 ]
  %1047 = phi float [ %1005, %982 ], [ %899, %895 ]
  %1048 = phi float [ %1006, %982 ], [ %883, %895 ]
  %1049 = phi float [ %1007, %982 ], [ %884, %895 ]
  %1050 = phi float [ %1008, %982 ], [ %885, %895 ]
  %1051 = phi float [ %983, %982 ], [ 1.000000e+00, %895 ]
  br i1 %760, label %2207, label %1052

; <label>:1052                                    ; preds = %1040
  %1053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %1054 = extractvalue %dx.types.CBufRet.f32 %1053, 0
  %1055 = extractvalue %dx.types.CBufRet.f32 %1053, 1
  %1056 = extractvalue %dx.types.CBufRet.f32 %1053, 2
  %1057 = extractvalue %dx.types.CBufRet.f32 %1053, 3
  %1058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %1059 = extractvalue %dx.types.CBufRet.f32 %1058, 0
  %1060 = extractvalue %dx.types.CBufRet.f32 %1058, 1
  %1061 = extractvalue %dx.types.CBufRet.f32 %1058, 2
  %1062 = extractvalue %dx.types.CBufRet.f32 %1058, 3
  %1063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %1064 = extractvalue %dx.types.CBufRet.f32 %1063, 0
  %1065 = extractvalue %dx.types.CBufRet.f32 %1063, 1
  %1066 = extractvalue %dx.types.CBufRet.f32 %1063, 2
  %1067 = extractvalue %dx.types.CBufRet.f32 %1063, 3
  %1068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %1069 = extractvalue %dx.types.CBufRet.f32 %1068, 0
  %1070 = extractvalue %dx.types.CBufRet.f32 %1068, 1
  %1071 = extractvalue %dx.types.CBufRet.f32 %1068, 2
  %1072 = extractvalue %dx.types.CBufRet.f32 %1068, 3
  %1073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %1074 = extractvalue %dx.types.CBufRet.f32 %1073, 3
  %1075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %1076 = extractvalue %dx.types.CBufRet.f32 %1075, 3
  %1077 = extractvalue %dx.types.CBufRet.f32 %1075, 0
  %1078 = extractvalue %dx.types.CBufRet.f32 %1075, 1
  %1079 = extractvalue %dx.types.CBufRet.f32 %1075, 2
  %1080 = fcmp fast olt float %1079, -5.000000e-01
  %1081 = call float @dx.op.dot3.f32(i32 55, float %1041, float %1042, float %1043, float %1041, float %1042, float %1043)  ; Dot3(ax,ay,az,bx,by,bz)
  %1082 = call float @dx.op.unary.f32(i32 25, float %1081)  ; Rsqrt(value)
  %1083 = fmul fast float %1082, %1081
  %1084 = fmul fast float %1082, %1041
  %1085 = fmul fast float %1082, %1042
  %1086 = fmul fast float %1082, %1043
  %1087 = fadd fast float %1083, %1057
  %1088 = call float @dx.op.dot3.f32(i32 55, float %1084, float %1085, float %1086, float %1054, float %1055, float %1056)  ; Dot3(ax,ay,az,bx,by,bz)
  %1089 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1090 = extractvalue %dx.types.CBufRet.i32 %1089, 1
  %1091 = and i32 %1090, 1
  %1092 = icmp ne i32 %1091, 0
  %1093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1094 = extractvalue %dx.types.CBufRet.f32 %1093, 2
  %1095 = fcmp fast ogt float %1094, 0.000000e+00
  %1096 = and i1 %1092, %1095
  br i1 %1096, label %1097, label %1503, !dx.controlflow.hints !70

; <label>:1097                                    ; preds = %1052
  %1098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %1099 = extractvalue %dx.types.CBufRet.f32 %1098, 3
  %1100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1101 = extractvalue %dx.types.CBufRet.f32 %1100, 2
  %1102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1103 = extractvalue %dx.types.CBufRet.f32 %1102, 2
  %1104 = fsub fast float %1101, %1103
  %1105 = and i32 %1090, 2
  %1106 = extractvalue %dx.types.CBufRet.i32 %1089, 0
  %1107 = call i32 @dx.op.binary.i32(i32 40, i32 %1106, i32 3)  ; UMin(a,b)
  %1108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1109 = extractvalue %dx.types.CBufRet.f32 %1108, 0
  %1110 = extractvalue %dx.types.CBufRet.f32 %1108, 1
  %1111 = extractvalue %dx.types.CBufRet.f32 %1102, 0
  %1112 = extractvalue %dx.types.CBufRet.f32 %1102, 1
  %1113 = fsub fast float %1109, %1111
  %1114 = fsub fast float %1110, %1112
  %1115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1116 = extractvalue %dx.types.CBufRet.f32 %1115, 0
  %1117 = fcmp fast ogt float %1116, 0.000000e+00
  %1118 = fsub fast float -0.000000e+00, %1113
  %1119 = fsub fast float -0.000000e+00, %1114
  %1120 = call float @dx.op.dot2.f32(i32 54, float %1084, float %1085, float %1084, float %1085)  ; Dot2(ax,ay,bx,by)
  %1121 = call float @dx.op.dot2.f32(i32 54, float %1084, float %1085, float %1118, float %1119)  ; Dot2(ax,ay,bx,by)
  %1122 = fmul fast float %1121, 2.000000e+00
  %1123 = call float @dx.op.dot2.f32(i32 54, float %1118, float %1119, float %1118, float %1119)  ; Dot2(ax,ay,bx,by)
  %1124 = fmul fast float %1116, %1116
  %1125 = fsub fast float %1123, %1124
  %1126 = fmul fast float %1122, %1122
  %1127 = fmul fast float %1120, 4.000000e+00
  %1128 = fmul fast float %1127, %1125
  %1129 = fsub fast float %1126, %1128
  %1130 = fcmp fast ogt float %1129, 0.000000e+00
  br i1 %1130, label %1131, label %1146

; <label>:1131                                    ; preds = %1097
  %1132 = fcmp fast ogt float %1122, 0.000000e+00
  %1133 = call float @dx.op.unary.f32(i32 24, float %1129)  ; Sqrt(value)
  %1134 = fsub fast float -0.000000e+00, %1133
  %1135 = select i1 %1132, float %1133, float %1134
  %1136 = fadd fast float %1135, %1122
  %1137 = fmul float %1136, -5.000000e-01
  %1138 = fdiv fast float %1137, %1120
  %1139 = call float @dx.op.binary.f32(i32 35, float %1138, float 0.000000e+00)  ; FMax(a,b)
  %1140 = call float @dx.op.binary.f32(i32 36, float %1083, float %1139)  ; FMin(a,b)
  %1141 = fdiv fast float %1125, %1137
  %1142 = call float @dx.op.binary.f32(i32 35, float %1141, float 0.000000e+00)  ; FMax(a,b)
  %1143 = call float @dx.op.binary.f32(i32 36, float %1083, float %1142)  ; FMin(a,b)
  %1144 = call float @dx.op.binary.f32(i32 36, float %1140, float %1143)  ; FMin(a,b)
  %1145 = call float @dx.op.binary.f32(i32 35, float %1140, float %1143)  ; FMax(a,b)
  br label %1146

; <label>:1146                                    ; preds = %1131, %1097
  %1147 = phi float [ %1145, %1131 ], [ -1.000000e+00, %1097 ]
  %1148 = phi float [ %1144, %1131 ], [ -1.000000e+00, %1097 ]
  %1149 = phi i1 [ true, %1131 ], [ false, %1097 ]
  %1150 = and i1 %1117, %1149
  br i1 %1150, label %1151, label %1153

; <label>:1151                                    ; preds = %1146
  %1152 = fcmp fast oeq float %1148, %1147
  br i1 %1152, label %1456, label %1154

; <label>:1153                                    ; preds = %1146
  br i1 %1117, label %1456, label %1154

; <label>:1154                                    ; preds = %1153, %1151
  %1155 = phi float [ %1083, %1153 ], [ %1147, %1151 ]
  %1156 = phi float [ 0.000000e+00, %1153 ], [ %1148, %1151 ]
  %1157 = icmp ne i32 %1105, 0
  %1158 = fmul fast float %1155, %1086
  %1159 = fadd fast float %1158, %1099
  %1160 = fmul fast float %1159, %1155
  %1161 = select i1 %1157, float 0.000000e+00, float %1160
  %1162 = fcmp fast oeq float %1086, 0.000000e+00
  %1163 = fdiv fast float %1104, %1086
  %1164 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1163)  ; FMax(a,b)
  %1165 = select i1 %1162, float %1155, float %1164
  %1166 = call float @dx.op.binary.f32(i32 36, float %1155, float %1165)  ; FMin(a,b)
  %1167 = fcmp fast ogt float %1086, 0.000000e+00
  %1168 = fcmp fast olt float %1104, 0.000000e+00
  br i1 %1167, label %1169, label %1226

; <label>:1169                                    ; preds = %1154
  %1170 = icmp eq i32 %1105, 0
  br i1 %1168, label %1171, label %1215

; <label>:1171                                    ; preds = %1169
  %1172 = select i1 %1170, float %1155, float 0.000000e+00
  %1173 = fsub fast float -0.000000e+00, %1172
  %1174 = call float @dx.op.unary.f32(i32 6, float %1173)  ; FAbs(value)
  %1175 = fmul fast float %1172, %1086
  %1176 = fadd fast float %1175, %1099
  %1177 = fmul fast float %1174, %1176
  %1178 = fsub fast float %1161, %1177
  %1179 = fsub fast float %1155, %1174
  %1180 = select i1 %1170, float %1179, float 0.000000e+00
  %1181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1182 = extractvalue %dx.types.CBufRet.f32 %1181, 0
  %1183 = extractvalue %dx.types.CBufRet.f32 %1181, 1
  %1184 = extractvalue %dx.types.CBufRet.f32 %1181, 2
  %1185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1186 = extractvalue %dx.types.CBufRet.f32 %1185, 0
  %1187 = extractvalue %dx.types.CBufRet.f32 %1185, 1
  %1188 = extractvalue %dx.types.CBufRet.f32 %1185, 2
  %1189 = extractvalue %dx.types.CBufRet.f32 %1185, 3
  %1190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1191 = extractvalue %dx.types.CBufRet.f32 %1190, 3
  %1192 = call float @dx.op.binary.f32(i32 36, float %1178, float %1191)  ; FMin(a,b)
  %1193 = fmul fast float %1189, %1180
  %1194 = call float @dx.op.unary.f32(i32 7, float %1193)  ; Saturate(value)
  %1195 = fsub fast float %1186, %1182
  %1196 = fsub fast float %1187, %1183
  %1197 = fsub fast float %1188, %1184
  %1198 = fmul fast float %1194, %1195
  %1199 = fmul fast float %1194, %1196
  %1200 = fmul fast float %1194, %1197
  %1201 = fadd fast float %1198, %1182
  %1202 = fadd fast float %1199, %1183
  %1203 = fadd fast float %1200, %1184
  %1204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1205 = extractvalue %dx.types.CBufRet.f32 %1204, 0
  %1206 = extractvalue %dx.types.CBufRet.f32 %1204, 1
  %1207 = fadd fast float %1206, %1205
  %1208 = call float @dx.op.unary.f32(i32 7, float %1207)  ; Saturate(value)
  %1209 = extractvalue %dx.types.CBufRet.f32 %1204, 2
  %1210 = extractvalue %dx.types.CBufRet.f32 %1204, 3
  %1211 = fadd fast float %1210, %1209
  %1212 = call float @dx.op.unary.f32(i32 7, float %1211)  ; Saturate(value)
  %1213 = fmul fast float %1208, %1192
  %1214 = fmul fast float %1213, %1212
  br label %1456

; <label>:1215                                    ; preds = %1169
  br i1 %1170, label %1216, label %1237

; <label>:1216                                    ; preds = %1215
  %1217 = call float @dx.op.binary.f32(i32 36, float %1166, float %1156)  ; FMin(a,b)
  %1218 = fsub fast float %1166, %1217
  %1219 = fsub fast float %1218, %1155
  %1220 = call float @dx.op.unary.f32(i32 6, float %1219)  ; FAbs(value)
  %1221 = fadd fast float %1218, %1155
  %1222 = fmul fast float %1221, %1086
  %1223 = fadd fast float %1222, %1099
  %1224 = fmul fast float %1223, %1220
  %1225 = fsub fast float %1161, %1224
  br label %1237

; <label>:1226                                    ; preds = %1154
  br i1 %1168, label %1227, label %1237

; <label>:1227                                    ; preds = %1226
  %1228 = call float @dx.op.binary.f32(i32 35, float %1156, float %1166)  ; FMax(a,b)
  %1229 = icmp eq i32 %1105, 0
  %1230 = select i1 %1229, float %1166, float 0.000000e+00
  %1231 = fsub fast float -0.000000e+00, %1230
  %1232 = call float @dx.op.unary.f32(i32 6, float %1231)  ; FAbs(value)
  %1233 = fmul fast float %1230, %1086
  %1234 = fadd fast float %1233, %1099
  %1235 = fmul fast float %1232, %1234
  %1236 = fsub fast float %1161, %1235
  br label %1237

; <label>:1237                                    ; preds = %1227, %1226, %1216, %1215
  %1238 = phi float [ %1156, %1215 ], [ %1156, %1216 ], [ %1228, %1227 ], [ %1156, %1226 ]
  %1239 = phi float [ 0.000000e+00, %1215 ], [ %1220, %1216 ], [ %1232, %1227 ], [ 0.000000e+00, %1226 ]
  %1240 = phi float [ %1161, %1215 ], [ %1225, %1216 ], [ %1236, %1227 ], [ %1161, %1226 ]
  %1241 = phi float [ %1166, %1215 ], [ %1166, %1216 ], [ %1155, %1227 ], [ %1155, %1226 ]
  %1242 = getelementptr inbounds [3 x float], [3 x float]* %44, i32 0, i32 0
  store float -1.000000e+00, float* %1242, align 4, !tbaa !71, !noalias !75
  %1243 = getelementptr inbounds [3 x float], [3 x float]* %44, i32 0, i32 1
  store float -1.000000e+00, float* %1243, align 4, !tbaa !71, !noalias !75
  %1244 = getelementptr inbounds [3 x float], [3 x float]* %44, i32 0, i32 2
  store float -1.000000e+00, float* %1244, align 4, !tbaa !71, !noalias !75
  %1245 = getelementptr inbounds [3 x float], [3 x float]* %45, i32 0, i32 0
  store float -1.000000e+00, float* %1245, align 4, !tbaa !71, !noalias !75
  %1246 = getelementptr inbounds [3 x float], [3 x float]* %45, i32 0, i32 1
  store float -1.000000e+00, float* %1246, align 4, !tbaa !71, !noalias !75
  %1247 = getelementptr inbounds [3 x float], [3 x float]* %45, i32 0, i32 2
  store float -1.000000e+00, float* %1247, align 4, !tbaa !71, !noalias !75
  %1248 = icmp sgt i32 %1107, 0
  br i1 %1248, label %1249, label %1310

; <label>:1249                                    ; preds = %1237
  br label %1250

; <label>:1250                                    ; preds = %1299, %1249
  %1251 = phi i32 [ %1300, %1299 ], [ 0, %1249 ]
  %1252 = phi i32 [ %1301, %1299 ], [ 0, %1249 ]
  %1253 = add nuw i32 %1252, 171
  %1254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 %1253)  ; CBufferLoadLegacy(handle,regIndex)
  %1255 = extractvalue %dx.types.CBufRet.f32 %1254, 0
  %1256 = extractvalue %dx.types.CBufRet.f32 %1254, 1
  %1257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1258 = extractvalue %dx.types.CBufRet.f32 %1257, 0
  %1259 = extractvalue %dx.types.CBufRet.f32 %1257, 1
  %1260 = fsub fast float %1255, %1258
  %1261 = fsub fast float %1256, %1259
  %1262 = extractvalue %dx.types.CBufRet.f32 %1254, 2
  %1263 = fsub fast float -0.000000e+00, %1260
  %1264 = fsub fast float -0.000000e+00, %1261
  %1265 = call float @dx.op.dot2.f32(i32 54, float %1084, float %1085, float %1263, float %1264)  ; Dot2(ax,ay,bx,by)
  %1266 = fmul fast float %1265, 2.000000e+00
  %1267 = call float @dx.op.dot2.f32(i32 54, float %1263, float %1264, float %1263, float %1264)  ; Dot2(ax,ay,bx,by)
  %1268 = fmul fast float %1262, %1262
  %1269 = fsub fast float %1267, %1268
  %1270 = fmul fast float %1266, %1266
  %1271 = fmul fast float %1127, %1269
  %1272 = fsub fast float %1270, %1271
  %1273 = fcmp fast ogt float %1272, 0.000000e+00
  br i1 %1273, label %1274, label %1289

; <label>:1274                                    ; preds = %1250
  %1275 = fcmp fast ogt float %1266, 0.000000e+00
  %1276 = call float @dx.op.unary.f32(i32 24, float %1272)  ; Sqrt(value)
  %1277 = fsub fast float -0.000000e+00, %1276
  %1278 = select i1 %1275, float %1276, float %1277
  %1279 = fadd fast float %1278, %1266
  %1280 = fmul float %1279, -5.000000e-01
  %1281 = fdiv fast float %1280, %1120
  %1282 = call float @dx.op.binary.f32(i32 35, float %1281, float 0.000000e+00)  ; FMax(a,b)
  %1283 = call float @dx.op.binary.f32(i32 36, float %1155, float %1282)  ; FMin(a,b)
  %1284 = fdiv fast float %1269, %1280
  %1285 = call float @dx.op.binary.f32(i32 35, float %1284, float 0.000000e+00)  ; FMax(a,b)
  %1286 = call float @dx.op.binary.f32(i32 36, float %1155, float %1285)  ; FMin(a,b)
  %1287 = call float @dx.op.binary.f32(i32 36, float %1283, float %1286)  ; FMin(a,b)
  %1288 = call float @dx.op.binary.f32(i32 35, float %1283, float %1286)  ; FMax(a,b)
  br label %1289

; <label>:1289                                    ; preds = %1274, %1250
  %1290 = phi float [ %1288, %1274 ], [ -1.000000e+00, %1250 ]
  %1291 = phi float [ %1287, %1274 ], [ -1.000000e+00, %1250 ]
  %1292 = phi i1 [ true, %1274 ], [ false, %1250 ]
  br i1 %1292, label %1293, label %1299

; <label>:1293                                    ; preds = %1289
  %1294 = call float @dx.op.binary.f32(i32 35, float %1238, float %1291)  ; FMax(a,b)
  %1295 = getelementptr inbounds [3 x float], [3 x float]* %44, i32 0, i32 %1252
  store float %1294, float* %1295, align 4, !tbaa !71, !noalias !75
  %1296 = call float @dx.op.binary.f32(i32 35, float %1238, float %1290)  ; FMax(a,b)
  %1297 = getelementptr inbounds [3 x float], [3 x float]* %45, i32 0, i32 %1252
  store float %1296, float* %1297, align 4, !tbaa !71, !noalias !75
  %1298 = add nsw i32 %1251, 1
  br label %1299

; <label>:1299                                    ; preds = %1293, %1289
  %1300 = phi i32 [ %1298, %1293 ], [ %1251, %1289 ]
  %1301 = add nuw nsw i32 %1252, 1
  %1302 = icmp eq i32 %1301, %1107
  br i1 %1302, label %1303, label %1250

; <label>:1303                                    ; preds = %1299
  %1304 = load float, float* %1244, align 4, !tbaa !71, !alias.scope !91, !noalias !94
  %1305 = load float, float* %1243, align 4, !tbaa !71, !alias.scope !97, !noalias !98
  %1306 = load float, float* %1242, align 4, !tbaa !71, !alias.scope !99, !noalias !100
  %1307 = load float, float* %1247, align 4, !tbaa !71, !alias.scope !101, !noalias !104
  %1308 = load float, float* %1246, align 4, !tbaa !71, !alias.scope !107, !noalias !108
  %1309 = load float, float* %1245, align 4, !tbaa !71, !alias.scope !109, !noalias !110
  br label %1310

; <label>:1310                                    ; preds = %1303, %1237
  %1311 = phi float [ -1.000000e+00, %1237 ], [ %1309, %1303 ]
  %1312 = phi float [ -1.000000e+00, %1237 ], [ %1308, %1303 ]
  %1313 = phi float [ -1.000000e+00, %1237 ], [ %1307, %1303 ]
  %1314 = phi float [ -1.000000e+00, %1237 ], [ %1306, %1303 ]
  %1315 = phi float [ -1.000000e+00, %1237 ], [ %1305, %1303 ]
  %1316 = phi float [ -1.000000e+00, %1237 ], [ %1304, %1303 ]
  %1317 = phi i32 [ 0, %1237 ], [ %1300, %1303 ]
  %1318 = call float @dx.op.binary.f32(i32 36, float %1315, float %1316)  ; FMin(a,b)
  %1319 = call float @dx.op.binary.f32(i32 36, float %1314, float %1318)  ; FMin(a,b)
  %1320 = call float @dx.op.binary.f32(i32 35, float %1314, float %1315)  ; FMax(a,b)
  %1321 = call float @dx.op.binary.f32(i32 36, float %1320, float %1316)  ; FMin(a,b)
  %1322 = call float @dx.op.binary.f32(i32 36, float %1314, float %1315)  ; FMin(a,b)
  %1323 = call float @dx.op.binary.f32(i32 35, float %1322, float %1321)  ; FMax(a,b)
  %1324 = call float @dx.op.binary.f32(i32 35, float %1315, float %1316)  ; FMax(a,b)
  %1325 = call float @dx.op.binary.f32(i32 35, float %1314, float %1324)  ; FMax(a,b)
  store float %1319, float* %1242, align 4, !tbaa !71, !alias.scope !99, !noalias !100
  store float %1323, float* %1243, align 4, !tbaa !71, !alias.scope !97, !noalias !98
  store float %1325, float* %1244, align 4, !tbaa !71, !alias.scope !91, !noalias !94
  %1326 = call float @dx.op.binary.f32(i32 36, float %1312, float %1313)  ; FMin(a,b)
  %1327 = call float @dx.op.binary.f32(i32 36, float %1311, float %1326)  ; FMin(a,b)
  %1328 = call float @dx.op.binary.f32(i32 35, float %1311, float %1312)  ; FMax(a,b)
  %1329 = call float @dx.op.binary.f32(i32 36, float %1328, float %1313)  ; FMin(a,b)
  %1330 = call float @dx.op.binary.f32(i32 36, float %1311, float %1312)  ; FMin(a,b)
  %1331 = call float @dx.op.binary.f32(i32 35, float %1330, float %1329)  ; FMax(a,b)
  %1332 = call float @dx.op.binary.f32(i32 35, float %1312, float %1313)  ; FMax(a,b)
  %1333 = call float @dx.op.binary.f32(i32 35, float %1311, float %1332)  ; FMax(a,b)
  store float %1327, float* %1245, align 4, !tbaa !71, !alias.scope !109, !noalias !110
  store float %1331, float* %1246, align 4, !tbaa !71, !alias.scope !107, !noalias !108
  store float %1333, float* %1247, align 4, !tbaa !71, !alias.scope !101, !noalias !104
  %1334 = sub nsw i32 3, %1317
  %1335 = icmp sgt i32 %1334, 2
  br i1 %1335, label %1336, label %1374

; <label>:1336                                    ; preds = %1310
  %1337 = icmp eq i32 %1105, 0
  %1338 = fsub fast float %1155, %1239
  %1339 = select i1 %1337, float %1338, float %1239
  %1340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1341 = extractvalue %dx.types.CBufRet.f32 %1340, 0
  %1342 = extractvalue %dx.types.CBufRet.f32 %1340, 1
  %1343 = extractvalue %dx.types.CBufRet.f32 %1340, 2
  %1344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1345 = extractvalue %dx.types.CBufRet.f32 %1344, 0
  %1346 = extractvalue %dx.types.CBufRet.f32 %1344, 1
  %1347 = extractvalue %dx.types.CBufRet.f32 %1344, 2
  %1348 = extractvalue %dx.types.CBufRet.f32 %1344, 3
  %1349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1350 = extractvalue %dx.types.CBufRet.f32 %1349, 3
  %1351 = call float @dx.op.binary.f32(i32 36, float %1240, float %1350)  ; FMin(a,b)
  %1352 = fmul fast float %1348, %1339
  %1353 = call float @dx.op.unary.f32(i32 7, float %1352)  ; Saturate(value)
  %1354 = fsub fast float %1345, %1341
  %1355 = fsub fast float %1346, %1342
  %1356 = fsub fast float %1347, %1343
  %1357 = fmul fast float %1353, %1354
  %1358 = fmul fast float %1353, %1355
  %1359 = fmul fast float %1353, %1356
  %1360 = fadd fast float %1357, %1341
  %1361 = fadd fast float %1358, %1342
  %1362 = fadd fast float %1359, %1343
  %1363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1364 = extractvalue %dx.types.CBufRet.f32 %1363, 0
  %1365 = extractvalue %dx.types.CBufRet.f32 %1363, 1
  %1366 = fadd fast float %1365, %1364
  %1367 = call float @dx.op.unary.f32(i32 7, float %1366)  ; Saturate(value)
  %1368 = extractvalue %dx.types.CBufRet.f32 %1363, 2
  %1369 = extractvalue %dx.types.CBufRet.f32 %1363, 3
  %1370 = fadd fast float %1369, %1368
  %1371 = call float @dx.op.unary.f32(i32 7, float %1370)  ; Saturate(value)
  %1372 = fmul fast float %1367, %1351
  %1373 = fmul fast float %1372, %1371
  br label %1456

; <label>:1374                                    ; preds = %1310
  %1375 = getelementptr inbounds [3 x float], [3 x float]* %44, i32 0, i32 %1334
  %1376 = load float, float* %1375, align 4, !tbaa !71, !noalias !75
  %1377 = fcmp fast olt float %1376, %1241
  %1378 = icmp sgt i32 %1317, 0
  %1379 = and i1 %1378, %1377
  br i1 %1379, label %1380, label %1417

; <label>:1380                                    ; preds = %1374
  br label %1381

; <label>:1381                                    ; preds = %1410, %1380
  %1382 = phi float [ %1411, %1410 ], [ %1239, %1380 ]
  %1383 = phi float [ %1412, %1410 ], [ %1240, %1380 ]
  %1384 = phi float [ %1392, %1410 ], [ %1376, %1380 ]
  %1385 = phi i32 [ %1389, %1410 ], [ %1334, %1380 ]
  %1386 = getelementptr inbounds [3 x float], [3 x float]* %45, i32 0, i32 %1385
  %1387 = load float, float* %1386, align 4, !tbaa !71, !noalias !75
  %1388 = icmp slt i32 %1385, 2
  %1389 = add nsw i32 %1385, 1
  %1390 = getelementptr inbounds [3 x float], [3 x float]* %44, i32 0, i32 %1389
  %1391 = load float, float* %1390, align 4, !tbaa !71, !noalias !75
  %1392 = select i1 %1388, float %1391, float %1155
  %1393 = call float @dx.op.binary.f32(i32 36, float %1392, float %1387)  ; FMin(a,b)
  %1394 = call float @dx.op.binary.f32(i32 36, float %1241, float %1393)  ; FMin(a,b)
  %1395 = icmp eq i32 %1105, 0
  %1396 = fadd fast float %1394, %1384
  %1397 = fmul fast float %1396, %1086
  %1398 = fadd fast float %1397, %1099
  br i1 %1395, label %1404, label %1399

; <label>:1399                                    ; preds = %1381
  %1400 = fsub fast float %1394, %1384
  %1401 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1400)  ; FMax(a,b)
  %1402 = fmul fast float %1401, %1398
  %1403 = fadd fast float %1402, %1383
  br label %1410

; <label>:1404                                    ; preds = %1381
  %1405 = fsub fast float %1384, %1394
  %1406 = call float @dx.op.unary.f32(i32 6, float %1405)  ; FAbs(value)
  %1407 = fadd fast float %1406, %1382
  %1408 = fmul fast float %1406, %1398
  %1409 = fsub fast float %1383, %1408
  br label %1410

; <label>:1410                                    ; preds = %1404, %1399
  %1411 = phi float [ %1401, %1399 ], [ %1407, %1404 ]
  %1412 = phi float [ %1403, %1399 ], [ %1409, %1404 ]
  %1413 = fcmp fast olt float %1392, %1241
  %1414 = icmp slt i32 %1389, 3
  %1415 = and i1 %1414, %1413
  br i1 %1415, label %1381, label %1416

; <label>:1416                                    ; preds = %1410
  br label %1417

; <label>:1417                                    ; preds = %1416, %1374
  %1418 = phi float [ %1239, %1374 ], [ %1411, %1416 ]
  %1419 = phi float [ %1240, %1374 ], [ %1412, %1416 ]
  %1420 = fsub fast float %1155, %1418
  %1421 = select i1 %1157, float %1418, float %1420
  %1422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1423 = extractvalue %dx.types.CBufRet.f32 %1422, 0
  %1424 = extractvalue %dx.types.CBufRet.f32 %1422, 1
  %1425 = extractvalue %dx.types.CBufRet.f32 %1422, 2
  %1426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1427 = extractvalue %dx.types.CBufRet.f32 %1426, 0
  %1428 = extractvalue %dx.types.CBufRet.f32 %1426, 1
  %1429 = extractvalue %dx.types.CBufRet.f32 %1426, 2
  %1430 = extractvalue %dx.types.CBufRet.f32 %1426, 3
  %1431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1432 = extractvalue %dx.types.CBufRet.f32 %1431, 3
  %1433 = call float @dx.op.binary.f32(i32 36, float %1419, float %1432)  ; FMin(a,b)
  %1434 = fmul fast float %1430, %1421
  %1435 = call float @dx.op.unary.f32(i32 7, float %1434)  ; Saturate(value)
  %1436 = fsub fast float %1427, %1423
  %1437 = fsub fast float %1428, %1424
  %1438 = fsub fast float %1429, %1425
  %1439 = fmul fast float %1435, %1436
  %1440 = fmul fast float %1435, %1437
  %1441 = fmul fast float %1435, %1438
  %1442 = fadd fast float %1439, %1423
  %1443 = fadd fast float %1440, %1424
  %1444 = fadd fast float %1441, %1425
  %1445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1446 = extractvalue %dx.types.CBufRet.f32 %1445, 0
  %1447 = extractvalue %dx.types.CBufRet.f32 %1445, 1
  %1448 = fadd fast float %1447, %1446
  %1449 = call float @dx.op.unary.f32(i32 7, float %1448)  ; Saturate(value)
  %1450 = extractvalue %dx.types.CBufRet.f32 %1445, 2
  %1451 = extractvalue %dx.types.CBufRet.f32 %1445, 3
  %1452 = fadd fast float %1451, %1450
  %1453 = call float @dx.op.unary.f32(i32 7, float %1452)  ; Saturate(value)
  %1454 = fmul fast float %1449, %1433
  %1455 = fmul fast float %1454, %1453
  br label %1456

; <label>:1456                                    ; preds = %1417, %1336, %1171, %1153, %1151
  %1457 = phi float [ %1180, %1171 ], [ %1339, %1336 ], [ %1421, %1417 ], [ 0.000000e+00, %1151 ], [ 0.000000e+00, %1153 ]
  %1458 = phi float [ %1214, %1171 ], [ %1373, %1336 ], [ %1455, %1417 ], [ 0.000000e+00, %1151 ], [ 0.000000e+00, %1153 ]
  %1459 = phi float [ %1201, %1171 ], [ %1360, %1336 ], [ %1442, %1417 ], [ 0.000000e+00, %1151 ], [ 0.000000e+00, %1153 ]
  %1460 = phi float [ %1202, %1171 ], [ %1361, %1336 ], [ %1443, %1417 ], [ 0.000000e+00, %1151 ], [ 0.000000e+00, %1153 ]
  %1461 = phi float [ %1203, %1171 ], [ %1362, %1336 ], [ %1444, %1417 ], [ 0.000000e+00, %1151 ], [ 0.000000e+00, %1153 ]
  %1462 = fmul fast float %1094, %1458
  %1463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1464 = extractvalue %dx.types.CBufRet.f32 %1463, 2
  %1465 = fsub fast float %1101, %1464
  %1466 = fcmp fast olt float %1462, -2.000000e+01
  %1467 = call float @dx.op.unary.f32(i32 21, float %1462)  ; Exp(value)
  %1468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %1469 = extractvalue %dx.types.CBufRet.f32 %1468, 2
  %1470 = extractvalue %dx.types.CBufRet.f32 %1468, 3
  %1471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %1472 = extractvalue %dx.types.CBufRet.f32 %1471, 2
  %1473 = fmul fast float %1470, %1465
  %1474 = call float @dx.op.unary.f32(i32 7, float %1473)  ; Saturate(value)
  %1475 = fsub fast float 1.000000e+00, %1474
  %1476 = fmul fast float %1086, 5.000000e-01
  %1477 = fadd fast float %1476, 5.000000e-01
  %1478 = call float @dx.op.unary.f32(i32 7, float %1477)  ; Saturate(value)
  %1479 = fsub fast float 1.000000e+00, %1478
  %1480 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1475)  ; FMax(a,b)
  %1481 = fdiv fast float %1479, %1480
  %1482 = fsub fast float %1465, %1043
  %1483 = call float @dx.op.unary.f32(i32 6, float %1482)  ; FAbs(value)
  %1484 = fmul fast float %1483, %1469
  %1485 = call float @dx.op.unary.f32(i32 7, float %1481)  ; Saturate(value)
  %1486 = fsub fast float 1.000000e+00, %1484
  %1487 = fmul fast float %1486, %1485
  %1488 = fadd fast float %1487, %1484
  %1489 = fmul fast float %1472, %1465
  %1490 = call float @dx.op.unary.f32(i32 7, float %1489)  ; Saturate(value)
  %1491 = fsub fast float 1.000000e+00, %1488
  %1492 = fmul fast float %1491, %1490
  %1493 = fadd fast float %1492, %1488
  %1494 = call float @dx.op.unary.f32(i32 7, float %1493)  ; Saturate(value)
  %1495 = fadd fast float %1467, -1.000000e+00
  %1496 = select i1 %1466, float -1.000000e+00, float %1495
  %1497 = fmul fast float %1494, %1496
  %1498 = fadd fast float %1497, 1.000000e+00
  %1499 = fsub fast float -0.000000e+00, %1497
  %1500 = fmul fast float %1459, %1499
  %1501 = fmul fast float %1460, %1499
  %1502 = fmul fast float %1461, %1499
  br label %1503

; <label>:1503                                    ; preds = %1456, %1052
  %1504 = phi float [ %1457, %1456 ], [ 0.000000e+00, %1052 ]
  %1505 = phi float [ %1498, %1456 ], [ 1.000000e+00, %1052 ]
  %1506 = phi float [ %1500, %1456 ], [ 0.000000e+00, %1052 ]
  %1507 = phi float [ %1501, %1456 ], [ 0.000000e+00, %1052 ]
  %1508 = phi float [ %1502, %1456 ], [ 0.000000e+00, %1052 ]
  %1509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %1510 = extractvalue %dx.types.CBufRet.f32 %1509, 1
  %1511 = fsub fast float 1.000000e+00, %1505
  %1512 = fmul fast float %1511, %1087
  %1513 = fmul fast float %1512, %1510
  %1514 = fsub fast float %1087, %1513
  br i1 %1080, label %1515, label %1544, !dx.controlflow.hints !111

; <label>:1515                                    ; preds = %1503
  %1516 = fmul fast float %1088, %1077
  %1517 = fadd fast float %1516, %1078
  %1518 = call float @dx.op.unary.f32(i32 7, float %1517)  ; Saturate(value)
  %1519 = fmul fast float %1059, %1514
  %1520 = fsub fast float -0.000000e+00, %1519
  %1521 = fmul fast float %1060, %1514
  %1522 = fsub fast float -0.000000e+00, %1521
  %1523 = call float @dx.op.unary.f32(i32 21, float %1520)  ; Exp(value)
  %1524 = call float @dx.op.unary.f32(i32 21, float %1522)  ; Exp(value)
  %1525 = call float @dx.op.binary.f32(i32 35, float %1067, float %1523)  ; FMax(a,b)
  %1526 = call float @dx.op.binary.f32(i32 35, float %1067, float %1524)  ; FMax(a,b)
  %1527 = fsub fast float %1526, %1525
  %1528 = fmul fast float %1527, %1518
  %1529 = fadd fast float %1528, %1525
  %1530 = call float @dx.op.unary.f32(i32 7, float %1529)  ; Saturate(value)
  %1531 = fsub fast float %1064, %1069
  %1532 = fsub fast float %1065, %1070
  %1533 = fsub fast float %1066, %1071
  %1534 = fmul fast float %1518, %1531
  %1535 = fmul fast float %1518, %1532
  %1536 = fmul fast float %1518, %1533
  %1537 = fadd fast float %1534, %1069
  %1538 = fadd fast float %1535, %1070
  %1539 = fadd fast float %1536, %1071
  %1540 = fsub fast float 1.000000e+00, %1530
  %1541 = fmul fast float %1540, %1537
  %1542 = fmul fast float %1540, %1538
  %1543 = fmul fast float %1540, %1539
  br label %1603

; <label>:1544                                    ; preds = %1503
  %1545 = fmul fast float %1514, %1076
  %1546 = call float @dx.op.unary.f32(i32 7, float %1545)  ; Saturate(value)
  %1547 = fsub fast float 2.000000e+00, %1546
  %1548 = fmul fast float %1546, 9.921875e-01
  %1549 = fmul fast float %1548, %1547
  %1550 = fadd fast float %1549, 3.906250e-03
  %1551 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %1550, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1552 = extractvalue %dx.types.ResRet.f32 %1551, 0
  %1553 = fsub fast float %1546, %1552
  %1554 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1553)  ; FMax(a,b)
  %1555 = fmul fast float %1062, %1043
  %1556 = call float @dx.op.unary.f32(i32 6, float %1555)  ; FAbs(value)
  %1557 = fcmp fast ogt float %1556, 0x3EB0C6F7A0000000
  br i1 %1557, label %1558, label %1564, !dx.controlflow.hints !112

; <label>:1558                                    ; preds = %1544
  %1559 = fmul fast float %1555, 0xBFF7154760000000
  %1560 = call float @dx.op.unary.f32(i32 21, float %1559)  ; Exp(value)
  %1561 = fsub fast float 1.000000e+00, %1560
  %1562 = fdiv fast float %1561, %1555
  %1563 = fmul fast float %1562, %1072
  br label %1564

; <label>:1564                                    ; preds = %1558, %1544
  %1565 = phi float [ %1563, %1558 ], [ %1072, %1544 ]
  %1566 = fadd fast float %1565, %1074
  %1567 = fmul fast float %1566, %1554
  %1568 = fmul fast float %1059, %1567
  %1569 = fsub fast float -0.000000e+00, %1568
  %1570 = fmul fast float %1060, %1567
  %1571 = fsub fast float -0.000000e+00, %1570
  %1572 = fmul fast float %1061, %1567
  %1573 = fsub fast float -0.000000e+00, %1572
  %1574 = call float @dx.op.unary.f32(i32 21, float %1569)  ; Exp(value)
  %1575 = call float @dx.op.unary.f32(i32 21, float %1571)  ; Exp(value)
  %1576 = call float @dx.op.unary.f32(i32 21, float %1573)  ; Exp(value)
  %1577 = fmul fast float %1088, %1088
  %1578 = fadd fast float %1577, 1.000000e+00
  %1579 = fmul fast float %1578, 0x3FAE8EC8A0000000
  %1580 = fmul fast float %1579, %1069
  %1581 = fmul fast float %1579, %1070
  %1582 = fmul fast float %1579, %1071
  %1583 = fmul fast float %1088, %1067
  %1584 = fsub fast float 1.000000e+00, %1583
  %1585 = fmul fast float %1067, %1067
  %1586 = fsub fast float 1.000000e+00, %1585
  %1587 = fmul fast float %1586, 0x3FB45F3060000000
  %1588 = fmul fast float %1584, %1584
  %1589 = fdiv fast float 1.000000e+00, %1588
  %1590 = fmul fast float %1587, %1589
  %1591 = fmul fast float %1590, %1064
  %1592 = fmul fast float %1590, %1065
  %1593 = fmul fast float %1590, %1066
  %1594 = fadd fast float %1591, %1580
  %1595 = fadd fast float %1592, %1581
  %1596 = fadd fast float %1593, %1582
  %1597 = fsub fast float 1.000000e+00, %1574
  %1598 = fsub fast float 1.000000e+00, %1575
  %1599 = fsub fast float 1.000000e+00, %1576
  %1600 = fmul fast float %1594, %1597
  %1601 = fmul fast float %1595, %1598
  %1602 = fmul fast float %1596, %1599
  br label %1603

; <label>:1603                                    ; preds = %1564, %1515
  %1604 = phi float [ %1541, %1515 ], [ %1600, %1564 ]
  %1605 = phi float [ %1542, %1515 ], [ %1601, %1564 ]
  %1606 = phi float [ %1543, %1515 ], [ %1602, %1564 ]
  %1607 = phi float [ %1530, %1515 ], [ %1574, %1564 ]
  %1608 = phi float [ %1530, %1515 ], [ %1575, %1564 ]
  %1609 = phi float [ %1530, %1515 ], [ %1576, %1564 ]
  br i1 %1096, label %1610, label %1808, !dx.controlflow.hints !113

; <label>:1610                                    ; preds = %1603
  %1611 = extractvalue %dx.types.CBufRet.f32 %1509, 0
  %1612 = fmul fast float %1611, %1511
  %1613 = fsub fast float %1506, %1604
  %1614 = fsub fast float %1507, %1605
  %1615 = fsub fast float %1508, %1606
  %1616 = fmul fast float %1612, %1613
  %1617 = fmul fast float %1612, %1614
  %1618 = fmul fast float %1612, %1615
  %1619 = fadd fast float %1616, %1604
  %1620 = fadd fast float %1617, %1605
  %1621 = fadd fast float %1618, %1606
  %1622 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1607)  ; FMax(a,b)
  %1623 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1608)  ; FMax(a,b)
  %1624 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1609)  ; FMax(a,b)
  %1625 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1505)  ; FMax(a,b)
  %1626 = call float @dx.op.binary.f32(i32 35, float %1504, float %1514)  ; FMax(a,b)
  %1627 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1626)  ; FMax(a,b)
  %1628 = fdiv fast float %1504, %1627
  %1629 = call float @dx.op.unary.f32(i32 7, float %1628)  ; Saturate(value)
  %1630 = fdiv fast float %1514, %1627
  %1631 = call float @dx.op.unary.f32(i32 7, float %1630)  ; Saturate(value)
  %1632 = fcmp fast une float %1625, 1.000000e+00
  br i1 %1632, label %1633, label %1646, !dx.controlflow.hints !114

; <label>:1633                                    ; preds = %1610
  %1634 = call float @dx.op.unary.f32(i32 23, float %1625)  ; Log(value)
  %1635 = fmul fast float %1634, 0x3FE62E4300000000
  %1636 = fmul fast float %1506, %1635
  %1637 = fsub fast float -0.000000e+00, %1636
  %1638 = fmul fast float %1507, %1635
  %1639 = fsub fast float -0.000000e+00, %1638
  %1640 = fmul fast float %1508, %1635
  %1641 = fsub fast float -0.000000e+00, %1640
  %1642 = fsub fast float 1.000000e+00, %1625
  %1643 = fdiv fast float %1637, %1642
  %1644 = fdiv fast float %1639, %1642
  %1645 = fdiv fast float %1641, %1642
  br label %1646

; <label>:1646                                    ; preds = %1633, %1610
  %1647 = phi float [ %1643, %1633 ], [ %1506, %1610 ]
  %1648 = phi float [ %1644, %1633 ], [ %1507, %1610 ]
  %1649 = phi float [ %1645, %1633 ], [ %1508, %1610 ]
  %1650 = phi float [ %1635, %1633 ], [ 0.000000e+00, %1610 ]
  %1651 = fcmp fast une float %1622, 1.000000e+00
  br i1 %1651, label %1652, label %1659, !dx.controlflow.hints !115

; <label>:1652                                    ; preds = %1646
  %1653 = call float @dx.op.unary.f32(i32 23, float %1622)  ; Log(value)
  %1654 = fmul fast float %1653, 0x3FE62E4300000000
  %1655 = fmul fast float %1619, %1654
  %1656 = fsub fast float -0.000000e+00, %1655
  %1657 = fsub fast float 1.000000e+00, %1622
  %1658 = fdiv fast float %1656, %1657
  br label %1659

; <label>:1659                                    ; preds = %1652, %1646
  %1660 = phi float [ %1658, %1652 ], [ %1619, %1646 ]
  %1661 = phi float [ %1654, %1652 ], [ 0.000000e+00, %1646 ]
  %1662 = fcmp fast une float %1623, 1.000000e+00
  br i1 %1662, label %1663, label %1670, !dx.controlflow.hints !115

; <label>:1663                                    ; preds = %1659
  %1664 = call float @dx.op.unary.f32(i32 23, float %1623)  ; Log(value)
  %1665 = fmul fast float %1664, 0x3FE62E4300000000
  %1666 = fmul fast float %1620, %1665
  %1667 = fsub fast float -0.000000e+00, %1666
  %1668 = fsub fast float 1.000000e+00, %1623
  %1669 = fdiv fast float %1667, %1668
  br label %1670

; <label>:1670                                    ; preds = %1663, %1659
  %1671 = phi float [ %1669, %1663 ], [ %1620, %1659 ]
  %1672 = phi float [ %1665, %1663 ], [ 0.000000e+00, %1659 ]
  %1673 = fcmp fast une float %1624, 1.000000e+00
  br i1 %1673, label %1674, label %1681, !dx.controlflow.hints !115

; <label>:1674                                    ; preds = %1670
  %1675 = call float @dx.op.unary.f32(i32 23, float %1624)  ; Log(value)
  %1676 = fmul fast float %1675, 0x3FE62E4300000000
  %1677 = fmul fast float %1621, %1676
  %1678 = fsub fast float -0.000000e+00, %1677
  %1679 = fsub fast float 1.000000e+00, %1624
  %1680 = fdiv fast float %1678, %1679
  br label %1681

; <label>:1681                                    ; preds = %1674, %1670
  %1682 = phi float [ %1680, %1674 ], [ %1621, %1670 ]
  %1683 = phi float [ %1676, %1674 ], [ 0.000000e+00, %1670 ]
  %1684 = fmul fast float %1647, %1631
  %1685 = fmul fast float %1648, %1631
  %1686 = fmul fast float %1649, %1631
  %1687 = fmul fast float %1650, %1631
  %1688 = fmul fast float %1660, %1629
  %1689 = fmul fast float %1671, %1629
  %1690 = fmul fast float %1682, %1629
  %1691 = fmul fast float %1661, %1629
  %1692 = fmul fast float %1672, %1629
  %1693 = fmul fast float %1683, %1629
  %1694 = fadd fast float %1688, %1684
  %1695 = fadd fast float %1689, %1685
  %1696 = fadd fast float %1690, %1686
  %1697 = fadd fast float %1691, %1687
  %1698 = fadd fast float %1692, %1687
  %1699 = fadd fast float %1693, %1687
  %1700 = fcmp fast une float %1697, 0.000000e+00
  br i1 %1700, label %1701, label %1708, !dx.controlflow.hints !116

; <label>:1701                                    ; preds = %1681
  %1702 = fmul fast float %1697, 0x3FF7154760000000
  %1703 = call float @dx.op.unary.f32(i32 21, float %1702)  ; Exp(value)
  %1704 = fsub fast float 1.000000e+00, %1703
  %1705 = fmul fast float %1694, %1704
  %1706 = fsub fast float -0.000000e+00, %1705
  %1707 = fdiv fast float %1706, %1697
  br label %1708

; <label>:1708                                    ; preds = %1701, %1681
  %1709 = phi float [ %1703, %1701 ], [ 1.000000e+00, %1681 ]
  %1710 = phi float [ %1707, %1701 ], [ %1694, %1681 ]
  %1711 = fcmp fast une float %1698, 0.000000e+00
  br i1 %1711, label %1712, label %1719, !dx.controlflow.hints !116

; <label>:1712                                    ; preds = %1708
  %1713 = fmul fast float %1698, 0x3FF7154760000000
  %1714 = call float @dx.op.unary.f32(i32 21, float %1713)  ; Exp(value)
  %1715 = fsub fast float 1.000000e+00, %1714
  %1716 = fmul fast float %1695, %1715
  %1717 = fsub fast float -0.000000e+00, %1716
  %1718 = fdiv fast float %1717, %1698
  br label %1719

; <label>:1719                                    ; preds = %1712, %1708
  %1720 = phi float [ %1714, %1712 ], [ 1.000000e+00, %1708 ]
  %1721 = phi float [ %1718, %1712 ], [ %1695, %1708 ]
  %1722 = fcmp fast une float %1699, 0.000000e+00
  br i1 %1722, label %1723, label %1730, !dx.controlflow.hints !116

; <label>:1723                                    ; preds = %1719
  %1724 = fmul fast float %1699, 0x3FF7154760000000
  %1725 = call float @dx.op.unary.f32(i32 21, float %1724)  ; Exp(value)
  %1726 = fsub fast float 1.000000e+00, %1725
  %1727 = fmul fast float %1696, %1726
  %1728 = fsub fast float -0.000000e+00, %1727
  %1729 = fdiv fast float %1728, %1699
  br label %1730

; <label>:1730                                    ; preds = %1723, %1719
  %1731 = phi float [ %1725, %1723 ], [ 1.000000e+00, %1719 ]
  %1732 = phi float [ %1729, %1723 ], [ %1696, %1719 ]
  %1733 = fcmp fast ogt float %1629, %1631
  br i1 %1733, label %1734, label %1754

; <label>:1734                                    ; preds = %1730
  %1735 = fsub fast float 1.000000e+00, %1631
  %1736 = fmul fast float %1647, %1735
  %1737 = fmul fast float %1648, %1735
  %1738 = fmul fast float %1649, %1735
  %1739 = fmul fast float %1650, %1735
  %1740 = fcmp fast une float %1739, 0.000000e+00
  br i1 %1740, label %1741, label %1792, !dx.controlflow.hints !117

; <label>:1741                                    ; preds = %1734
  %1742 = fmul fast float %1739, 0x3FF7154760000000
  %1743 = call float @dx.op.unary.f32(i32 21, float %1742)  ; Exp(value)
  %1744 = fsub fast float 1.000000e+00, %1743
  %1745 = fmul fast float %1736, %1744
  %1746 = fsub fast float -0.000000e+00, %1745
  %1747 = fmul fast float %1737, %1744
  %1748 = fsub fast float -0.000000e+00, %1747
  %1749 = fmul fast float %1738, %1744
  %1750 = fsub fast float -0.000000e+00, %1749
  %1751 = fdiv fast float %1746, %1739
  %1752 = fdiv fast float %1748, %1739
  %1753 = fdiv fast float %1750, %1739
  br label %1792

; <label>:1754                                    ; preds = %1730
  %1755 = fsub fast float 1.000000e+00, %1629
  %1756 = fmul fast float %1660, %1755
  %1757 = fmul fast float %1671, %1755
  %1758 = fmul fast float %1682, %1755
  %1759 = fmul fast float %1661, %1755
  %1760 = fmul fast float %1672, %1755
  %1761 = fmul fast float %1683, %1755
  %1762 = fcmp fast une float %1759, 0.000000e+00
  br i1 %1762, label %1763, label %1770, !dx.controlflow.hints !116

; <label>:1763                                    ; preds = %1754
  %1764 = fmul fast float %1759, 0x3FF7154760000000
  %1765 = call float @dx.op.unary.f32(i32 21, float %1764)  ; Exp(value)
  %1766 = fsub fast float 1.000000e+00, %1765
  %1767 = fmul fast float %1756, %1766
  %1768 = fsub fast float -0.000000e+00, %1767
  %1769 = fdiv fast float %1768, %1759
  br label %1770

; <label>:1770                                    ; preds = %1763, %1754
  %1771 = phi float [ %1769, %1763 ], [ %1756, %1754 ]
  %1772 = phi float [ %1765, %1763 ], [ 1.000000e+00, %1754 ]
  %1773 = fcmp fast une float %1760, 0.000000e+00
  br i1 %1773, label %1774, label %1781, !dx.controlflow.hints !116

; <label>:1774                                    ; preds = %1770
  %1775 = fmul fast float %1760, 0x3FF7154760000000
  %1776 = call float @dx.op.unary.f32(i32 21, float %1775)  ; Exp(value)
  %1777 = fsub fast float 1.000000e+00, %1776
  %1778 = fmul fast float %1757, %1777
  %1779 = fsub fast float -0.000000e+00, %1778
  %1780 = fdiv fast float %1779, %1760
  br label %1781

; <label>:1781                                    ; preds = %1774, %1770
  %1782 = phi float [ %1780, %1774 ], [ %1757, %1770 ]
  %1783 = phi float [ %1776, %1774 ], [ 1.000000e+00, %1770 ]
  %1784 = fcmp fast une float %1761, 0.000000e+00
  br i1 %1784, label %1785, label %1792, !dx.controlflow.hints !116

; <label>:1785                                    ; preds = %1781
  %1786 = fmul fast float %1761, 0x3FF7154760000000
  %1787 = call float @dx.op.unary.f32(i32 21, float %1786)  ; Exp(value)
  %1788 = fsub fast float 1.000000e+00, %1787
  %1789 = fmul fast float %1758, %1788
  %1790 = fsub fast float -0.000000e+00, %1789
  %1791 = fdiv fast float %1790, %1761
  br label %1792

; <label>:1792                                    ; preds = %1785, %1781, %1741, %1734
  %1793 = phi float [ %1791, %1785 ], [ %1753, %1741 ], [ %1738, %1734 ], [ %1758, %1781 ]
  %1794 = phi float [ %1782, %1785 ], [ %1752, %1741 ], [ %1737, %1734 ], [ %1782, %1781 ]
  %1795 = phi float [ %1771, %1785 ], [ %1751, %1741 ], [ %1736, %1734 ], [ %1771, %1781 ]
  %1796 = phi float [ %1787, %1785 ], [ %1743, %1741 ], [ 1.000000e+00, %1734 ], [ 1.000000e+00, %1781 ]
  %1797 = phi float [ %1783, %1785 ], [ %1743, %1741 ], [ 1.000000e+00, %1734 ], [ %1783, %1781 ]
  %1798 = phi float [ %1772, %1785 ], [ %1743, %1741 ], [ 1.000000e+00, %1734 ], [ %1772, %1781 ]
  %1799 = fmul fast float %1798, %1710
  %1800 = fmul fast float %1797, %1721
  %1801 = fmul fast float %1796, %1732
  %1802 = fadd fast float %1799, %1795
  %1803 = fadd fast float %1800, %1794
  %1804 = fadd fast float %1801, %1793
  %1805 = fmul fast float %1798, %1709
  %1806 = fmul fast float %1797, %1720
  %1807 = fmul fast float %1796, %1731
  br label %1808

; <label>:1808                                    ; preds = %1792, %1603
  %1809 = phi float [ %1807, %1792 ], [ %1609, %1603 ]
  %1810 = phi float [ %1806, %1792 ], [ %1608, %1603 ]
  %1811 = phi float [ %1805, %1792 ], [ %1607, %1603 ]
  %1812 = phi float [ %1804, %1792 ], [ %1606, %1603 ]
  %1813 = phi float [ %1803, %1792 ], [ %1605, %1603 ]
  %1814 = phi float [ %1802, %1792 ], [ %1604, %1603 ]
  %1815 = fmul fast float %1814, %781
  %1816 = fmul fast float %1813, %781
  %1817 = fmul fast float %1812, %781
  %1818 = fmul fast float %1811, %1051
  %1819 = call float @dx.op.dot3.f32(i32 55, float %1811, float %1810, float %1809, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1820 = call float @dx.op.dot3.f32(i32 55, float %1815, float %1816, float %1817, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1821 = select i1 %108, float %1819, float %1811
  %1822 = select i1 %108, float %1819, float %1810
  %1823 = select i1 %108, float 1.000000e+00, float %1809
  %1824 = select i1 %108, float %1820, float %1815
  %1825 = select i1 %108, float 0.000000e+00, float %1816
  %1826 = select i1 %108, float 0.000000e+00, float %1817
  %1827 = fmul fast float %1821, %1045
  %1828 = fmul fast float %1822, %1046
  %1829 = fmul fast float %1823, %1047
  %1830 = fadd fast float %1827, %1824
  %1831 = fadd fast float %1828, %1825
  %1832 = fadd fast float %1826, %1829
  %1833 = fmul fast float %1821, %1048
  %1834 = fmul fast float %1822, %1049
  %1835 = fmul fast float %1823, %1050
  %1836 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1837 = extractvalue %dx.types.CBufRet.i32 %1836, 0
  %1838 = icmp eq i32 %1837, 0
  br i1 %1838, label %2207, label %1839, !dx.controlflow.hints !118

; <label>:1839                                    ; preds = %1808
  %1840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1841 = extractvalue %dx.types.CBufRet.f32 %1840, 2
  %1842 = extractvalue %dx.types.CBufRet.f32 %1840, 3
  %1843 = fmul fast float %1841, %50
  %1844 = fmul fast float %1842, %51
  %1845 = fmul fast float %1843, 2.000000e+00
  %1846 = fmul fast float %1844, 2.000000e+00
  %1847 = fsub fast float 1.000000e+00, %1845
  %1848 = fsub fast float 1.000000e+00, %1846
  %1849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1850 = extractvalue %dx.types.CBufRet.f32 %1849, 0
  %1851 = extractvalue %dx.types.CBufRet.f32 %1849, 1
  %1852 = extractvalue %dx.types.CBufRet.f32 %1849, 2
  %1853 = fmul fast float %1847, %1850
  %1854 = fmul fast float %1847, %1851
  %1855 = fmul fast float %1847, %1852
  %1856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1857 = extractvalue %dx.types.CBufRet.f32 %1856, 0
  %1858 = extractvalue %dx.types.CBufRet.f32 %1856, 1
  %1859 = extractvalue %dx.types.CBufRet.f32 %1856, 2
  %1860 = fmul fast float %1848, %1857
  %1861 = fmul fast float %1848, %1858
  %1862 = fmul fast float %1848, %1859
  %1863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1864 = extractvalue %dx.types.CBufRet.f32 %1863, 0
  %1865 = extractvalue %dx.types.CBufRet.f32 %1863, 1
  %1866 = extractvalue %dx.types.CBufRet.f32 %1863, 2
  %1867 = fadd fast float %1860, %1864
  %1868 = fadd fast float %1867, %1853
  %1869 = fadd fast float %1861, %1865
  %1870 = fadd fast float %1869, %1854
  %1871 = fadd fast float %1862, %1866
  %1872 = fadd fast float %1871, %1855
  %1873 = fmul fast float %1868, %1044
  %1874 = fmul fast float %1870, %1044
  %1875 = fmul fast float %1872, %1044
  %1876 = fmul fast float %1873, %1873
  %1877 = fmul fast float %1874, %1874
  %1878 = fadd fast float %1876, %1877
  %1879 = fmul fast float %1875, %1875
  %1880 = fadd fast float %1878, %1879
  %1881 = call float @dx.op.unary.f32(i32 24, float %1880)  ; Sqrt(value)
  %1882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1883 = extractvalue %dx.types.CBufRet.f32 %1882, 0
  %1884 = fsub fast float %1881, %1883
  %1885 = extractvalue %dx.types.CBufRet.f32 %1882, 2
  %1886 = fmul fast float %1884, %1885
  %1887 = call float @dx.op.unary.f32(i32 7, float %1886)  ; Saturate(value)
  %1888 = fadd fast float %1887, -5.000000e-01
  %1889 = fmul fast float %1888, 2.000000e+00
  %1890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1891 = extractvalue %dx.types.CBufRet.f32 %1890, 2
  %1892 = call float @dx.op.binary.f32(i32 36, float %1891, float %1889)  ; FMin(a,b)
  %1893 = fsub fast float -0.000000e+00, %1891
  %1894 = fcmp fast ogt float %1892, %1893
  br i1 %1894, label %1895, label %2207, !dx.controlflow.hints !119

; <label>:1895                                    ; preds = %1839
  %1896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %1897 = extractvalue %dx.types.CBufRet.f32 %1896, 3
  %1898 = fcmp fast ogt float %1897, 0.000000e+00
  br i1 %1898, label %1899, label %1974, !dx.controlflow.hints !120

; <label>:1899                                    ; preds = %1895
  %1900 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %13, i32 0)  ; GetDimensions(handle,mipLevel)
  %1901 = extractvalue %dx.types.Dimensions %1900, 0
  %1902 = sitofp i32 %1901 to float
  %1903 = extractvalue %dx.types.Dimensions %1900, 1
  %1904 = sitofp i32 %1903 to float
  %1905 = fmul fast float %1843, %1902
  %1906 = fmul fast float %1844, %1904
  %1907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1908 = extractvalue %dx.types.CBufRet.f32 %1907, 1
  %1909 = fsub fast float -0.000000e+00, %1908
  %1910 = fptoui float %1909 to i32
  %1911 = fptoui float %1905 to i32
  %1912 = fptoui float %1906 to i32
  %1913 = and i32 %1910, 31
  %1914 = lshr i32 %1911, %1913
  %1915 = lshr i32 %1912, %1913
  %1916 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %13, i32 %1910, i32 %1914, i32 %1915, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1917 = extractvalue %dx.types.ResRet.f32 %1916, 0
  %1918 = fcmp fast olt float %1917, -1.000000e+00
  %1919 = fcmp fast ogt float %1917, -1.000000e+00
  %1920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1921 = extractvalue %dx.types.CBufRet.f32 %1920, 1
  %1922 = select i1 %1919, float %1921, float 1.000000e+00
  %1923 = fadd fast float %1917, 1.000000e+00
  %1924 = fmul fast float %1922, %1923
  %1925 = call float @dx.op.unary.f32(i32 6, float %1924)  ; FAbs(value)
  %1926 = extractvalue %dx.types.CBufRet.f32 %1920, 3
  %1927 = fcmp fast oge float %1925, %1926
  %1928 = select i1 %1927, float 0x4197782600000000, float %1925
  %1929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %1930 = extractvalue %dx.types.CBufRet.f32 %1929, 0
  %1931 = extractvalue %dx.types.CBufRet.f32 %1929, 1
  %1932 = extractvalue %dx.types.CBufRet.f32 %1929, 2
  %1933 = select i1 %1918, float %1930, float %1850
  %1934 = select i1 %1918, float %1931, float %1851
  %1935 = select i1 %1918, float %1932, float %1852
  %1936 = fmul fast float %1933, %1847
  %1937 = fmul fast float %1934, %1847
  %1938 = fmul fast float %1935, %1847
  %1939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %1940 = extractvalue %dx.types.CBufRet.f32 %1939, 0
  %1941 = extractvalue %dx.types.CBufRet.f32 %1939, 1
  %1942 = extractvalue %dx.types.CBufRet.f32 %1939, 2
  %1943 = select i1 %1918, float %1940, float %1857
  %1944 = select i1 %1918, float %1941, float %1858
  %1945 = select i1 %1918, float %1942, float %1859
  %1946 = fmul fast float %1943, %1848
  %1947 = fmul fast float %1944, %1848
  %1948 = fmul fast float %1945, %1848
  %1949 = fadd fast float %1946, %1936
  %1950 = fadd fast float %1947, %1937
  %1951 = fadd fast float %1948, %1938
  %1952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %1953 = extractvalue %dx.types.CBufRet.f32 %1952, 0
  %1954 = extractvalue %dx.types.CBufRet.f32 %1952, 1
  %1955 = extractvalue %dx.types.CBufRet.f32 %1952, 2
  %1956 = select i1 %1918, float %1953, float %1864
  %1957 = select i1 %1918, float %1954, float %1865
  %1958 = select i1 %1918, float %1955, float %1866
  %1959 = fadd fast float %1949, %1956
  %1960 = fadd fast float %1950, %1957
  %1961 = fadd fast float %1951, %1958
  %1962 = fmul fast float %1959, %1928
  %1963 = fmul fast float %1960, %1928
  %1964 = fmul fast float %1961, %1928
  %1965 = fmul fast float %1962, %1962
  %1966 = fmul fast float %1963, %1963
  %1967 = fadd fast float %1965, %1966
  %1968 = fmul fast float %1964, %1964
  %1969 = fadd fast float %1967, %1968
  %1970 = call float @dx.op.unary.f32(i32 24, float %1969)  ; Sqrt(value)
  %1971 = fsub fast float %1970, %1883
  %1972 = fmul fast float %1971, %1885
  %1973 = call float @dx.op.unary.f32(i32 7, float %1972)  ; Saturate(value)
  br label %1974

; <label>:1974                                    ; preds = %1899, %1895
  %1975 = phi float [ %1973, %1899 ], [ 1.000000e+00, %1895 ]
  %1976 = fmul fast float %1892, 5.000000e-01
  %1977 = fadd fast float %1976, 5.000000e-01
  %1978 = call float @dx.op.unary.f32(i32 22, float %1977)  ; Frc(value)
  %1979 = call float @dx.op.unary.f32(i32 27, float %1978)  ; Round_ni(value)
  %1980 = call float @dx.op.unary.f32(i32 22, float %1978)  ; Frc(value)
  %1981 = fmul fast float %1980, 2.000000e+00
  %1982 = fadd fast float %1981, -1.000000e+00
  %1983 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %18, float %1843, float %1844, float %1979, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1984 = extractvalue %dx.types.ResRet.f32 %1983, 0
  %1985 = extractvalue %dx.types.ResRet.f32 %1983, 1
  %1986 = extractvalue %dx.types.ResRet.f32 %1983, 2
  %1987 = extractvalue %dx.types.ResRet.f32 %1983, 3
  %1988 = fadd fast float %1984, -5.000000e-01
  %1989 = fadd fast float %1986, -5.000000e-01
  %1990 = fmul fast float %1988, 0xBFD5555560000000
  %1991 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1989, float %1990)  ; FMad(a,b,c)
  %1992 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1985, float 0.000000e+00)  ; FMad(a,b,c)
  %1993 = fadd fast float %1992, %1987
  %1994 = fmul fast float %1988, -7.500000e-01
  %1995 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1989, float %1994)  ; FMad(a,b,c)
  %1996 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1985, float 0.000000e+00)  ; FMad(a,b,c)
  %1997 = fadd fast float %1996, %1987
  %1998 = call float @dx.op.binary.f32(i32 35, float %1991, float -1.000000e+00)  ; FMax(a,b)
  %1999 = call float @dx.op.binary.f32(i32 35, float %1993, float -1.000000e+00)  ; FMax(a,b)
  %2000 = call float @dx.op.binary.f32(i32 35, float %1995, float -1.000000e+00)  ; FMax(a,b)
  %2001 = call float @dx.op.binary.f32(i32 35, float %1997, float -1.000000e+00)  ; FMax(a,b)
  %2002 = call float @dx.op.binary.f32(i32 36, float %1998, float 1.000000e+00)  ; FMin(a,b)
  %2003 = call float @dx.op.binary.f32(i32 36, float %1999, float 1.000000e+00)  ; FMin(a,b)
  %2004 = call float @dx.op.binary.f32(i32 36, float %2000, float 1.000000e+00)  ; FMin(a,b)
  %2005 = call float @dx.op.binary.f32(i32 36, float %2001, float 1.000000e+00)  ; FMin(a,b)
  %2006 = fcmp fast olt float %2002, 0x3FEFFF8020000000
  br i1 %2006, label %2007, label %2122, !dx.controlflow.hints !121

; <label>:2007                                    ; preds = %1974
  %2008 = extractvalue %dx.types.CBufRet.f32 %1890, 3
  %2009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %2010 = extractvalue %dx.types.CBufRet.f32 %2009, 0
  %2011 = extractvalue %dx.types.CBufRet.f32 %2009, 1
  %2012 = extractvalue %dx.types.CBufRet.f32 %2009, 2
  %2013 = extractvalue %dx.types.CBufRet.f32 %2009, 3
  %2014 = fsub fast float %2010, %2002
  %2015 = fsub fast float %2011, %2003
  %2016 = fsub fast float %2012, %2004
  %2017 = fsub fast float %2013, %2005
  %2018 = fmul fast float %2014, %2008
  %2019 = fmul fast float %2015, %2008
  %2020 = fmul fast float %2016, %2008
  %2021 = fmul fast float %2017, %2008
  %2022 = fadd fast float %2018, %2002
  %2023 = fadd fast float %2019, %2003
  %2024 = fsub fast float -0.000000e+00, %2023
  %2025 = fadd fast float %2020, %2004
  %2026 = fadd fast float %2021, %2005
  %2027 = fmul fast float %2022, %2022
  %2028 = fsub fast float %2023, %2027
  %2029 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %2028)  ; FMax(a,b)
  %2030 = fdiv fast float 1.000000e+00, %2029
  %2031 = fmul fast float %2023, %2022
  %2032 = fsub fast float %2025, %2031
  %2033 = fsub fast float %1982, %2022
  %2034 = fmul fast float %1982, %1982
  %2035 = fsub fast float %2034, %2023
  %2036 = fmul fast float %2033, %2030
  %2037 = fmul fast float %2036, %2032
  %2038 = fsub fast float %2035, %2037
  %2039 = fmul fast float %2023, %2023
  %2040 = fsub fast float %2026, %2039
  %2041 = fmul fast float %2032, %2032
  %2042 = fmul fast float %2041, %2030
  %2043 = fsub fast float %2040, %2042
  %2044 = fdiv fast float %2038, %2043
  %2045 = fmul fast float %2032, %2044
  %2046 = fsub fast float %2033, %2045
  %2047 = fmul fast float %2046, %2030
  %2048 = fmul fast float %2047, %2022
  %2049 = fsub fast float 1.000000e+00, %2048
  %2050 = fmul fast float %2023, %2044
  %2051 = fsub fast float %2049, %2050
  %2052 = fmul fast float %2047, %2047
  %2053 = fmul fast float %2044, 4.000000e+00
  %2054 = fmul fast float %2053, %2051
  %2055 = fsub fast float %2052, %2054
  %2056 = call float @dx.op.unary.f32(i32 24, float %2055)  ; Sqrt(value)
  %2057 = fcmp fast oge float %2047, 0.000000e+00
  %2058 = fsub fast float -0.000000e+00, %2056
  %2059 = select i1 %2057, float %2058, float %2056
  %2060 = fsub fast float %2059, %2047
  %2061 = fdiv fast float %2060, %2044
  %2062 = fdiv fast float %2051, %2060
  %2063 = fmul fast float %2061, 5.000000e-01
  %2064 = fmul fast float %2062, 2.000000e+00
  %2065 = select i1 %2057, float %2063, float %2064
  %2066 = select i1 %2057, float %2064, float %2063
  %2067 = call float @dx.op.binary.f32(i32 35, float %2065, float %2066)  ; FMax(a,b)
  %2068 = call float @dx.op.binary.f32(i32 36, float %2065, float %2066)  ; FMin(a,b)
  %2069 = fcmp fast ogt float %1982, %2068
  br i1 %2069, label %2070, label %2080

; <label>:2070                                    ; preds = %2007
  %2071 = fsub fast float %1982, %2068
  %2072 = fsub fast float %2067, %2068
  %2073 = fmul fast float %2071, %2072
  %2074 = fmul fast float %2067, %1982
  %2075 = fadd fast float %2067, %1982
  %2076 = fmul fast float %2075, %2022
  %2077 = fadd fast float %2074, %2023
  %2078 = fsub fast float %2077, %2076
  %2079 = fdiv fast float %2078, %2073
  br label %2080

; <label>:2080                                    ; preds = %2070, %2007
  %2081 = phi float [ %2079, %2070 ], [ 0.000000e+00, %2007 ]
  %2082 = fcmp fast ogt float %1982, %2067
  %2083 = fsub fast float %1982, %2067
  br i1 %2082, label %2084, label %2094

; <label>:2084                                    ; preds = %2080
  %2085 = fsub fast float %2067, %2068
  %2086 = fmul fast float %2085, %2083
  %2087 = fmul fast float %2068, %1982
  %2088 = fadd fast float %2068, %1982
  %2089 = fmul fast float %2088, %2022
  %2090 = fsub fast float %2024, %2087
  %2091 = fadd fast float %2090, %2089
  %2092 = fdiv fast float %2091, %2086
  %2093 = fadd fast float %2092, %2081
  br label %2094

; <label>:2094                                    ; preds = %2084, %2080
  %2095 = phi float [ %2093, %2084 ], [ %2081, %2080 ]
  %2096 = fsub fast float %1982, %2068
  %2097 = fmul fast float %2096, %2083
  %2098 = fmul fast float %2068, %2067
  %2099 = fadd fast float %2068, %2067
  %2100 = fmul fast float %2099, %2022
  %2101 = fadd fast float %2098, %2023
  %2102 = fsub fast float %2101, %2100
  %2103 = fdiv fast float %2102, %2097
  %2104 = call float @dx.op.unary.f32(i32 7, float %2095)  ; Saturate(value)
  %2105 = fcmp fast oeq float %896, 0.000000e+00
  %2106 = extractvalue %dx.types.CBufRet.f32 %1890, 0
  %2107 = fcmp fast oeq float %2106, 0.000000e+00
  %2108 = or i1 %2105, %2107
  %2109 = fmul fast float %2106, 2.000000e+00
  %2110 = fadd fast float %1891, %1892
  %2111 = fdiv fast float %2110, %2109
  %2112 = call float @dx.op.unary.f32(i32 7, float %2111)  ; Saturate(value)
  %2113 = fmul fast float %2112, 2.000000e+00
  %2114 = fsub fast float 3.000000e+00, %2113
  %2115 = fmul fast float %2112, %2112
  %2116 = fmul fast float %2115, %2114
  %2117 = select i1 %2108, float 1.000000e+00, float %2116
  %2118 = fmul fast float %2103, %896
  %2119 = fadd fast float %2104, %2118
  %2120 = call float @dx.op.unary.f32(i32 7, float %2119)  ; Saturate(value)
  %2121 = fmul fast float %2117, %2120
  br label %2122

; <label>:2122                                    ; preds = %2094, %1974
  %2123 = phi float [ %2121, %2094 ], [ 0.000000e+00, %1974 ]
  %2124 = fsub fast float 1.000000e+00, %2123
  %2125 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %18, float %1843, float %1844, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2126 = extractvalue %dx.types.ResRet.f32 %2125, 0
  %2127 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %2128 = extractvalue %dx.types.CBufRet.i32 %2127, 2
  %2129 = icmp eq i32 %2128, 0
  br i1 %2129, label %2135, label %2130

; <label>:2130                                    ; preds = %2122
  %2131 = call float @dx.op.unary.f32(i32 7, float %2123)  ; Saturate(value)
  %2132 = fadd fast float %2126, -1.000000e+00
  %2133 = fmul fast float %2131, %2132
  %2134 = fadd fast float %2133, 1.000000e+00
  br label %2135

; <label>:2135                                    ; preds = %2130, %2122
  %2136 = phi float [ %2134, %2130 ], [ %2124, %2122 ]
  br i1 %1898, label %2137, label %2155

; <label>:2137                                    ; preds = %2135
  %2138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2139 = extractvalue %dx.types.CBufRet.f32 %2138, 1
  %2140 = fsub fast float %1975, %2139
  %2141 = call float @dx.op.unary.f32(i32 7, float %2140)  ; Saturate(value)
  %2142 = fsub fast float %1975, %1897
  %2143 = call float @dx.op.unary.f32(i32 7, float %2142)  ; Saturate(value)
  %2144 = fsub fast float %2141, %2143
  %2145 = fsub fast float %1977, %2143
  %2146 = fdiv fast float %2145, %2144
  %2147 = call float @dx.op.unary.f32(i32 7, float %2146)  ; Saturate(value)
  %2148 = fmul fast float %2147, 2.000000e+00
  %2149 = fsub fast float 3.000000e+00, %2148
  %2150 = fsub fast float %2126, %2136
  %2151 = fmul fast float %2147, %2147
  %2152 = fmul fast float %2151, %2150
  %2153 = fmul fast float %2152, %2149
  %2154 = fadd fast float %2153, %2136
  br label %2155

; <label>:2155                                    ; preds = %2137, %2135
  %2156 = phi float [ %2154, %2137 ], [ %2136, %2135 ]
  %2157 = call float @dx.op.binary.f32(i32 35, float %2126, float %2156)  ; FMax(a,b)
  %2158 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %2159 = extractvalue %dx.types.CBufRet.i32 %2158, 2
  %2160 = and i32 %2159, 1
  %2161 = icmp eq i32 %2160, 0
  %2162 = fcmp fast une float %2157, 1.000000e+00
  %2163 = and i1 %2162, %2161
  br i1 %2163, label %2164, label %2183

; <label>:2164                                    ; preds = %2155
  %2165 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %18, float %1843, float %1844, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2166 = extractvalue %dx.types.ResRet.f32 %2165, 0
  %2167 = extractvalue %dx.types.ResRet.f32 %2165, 1
  %2168 = extractvalue %dx.types.ResRet.f32 %2165, 2
  %2169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2170 = extractvalue %dx.types.CBufRet.f32 %2169, 1
  %2171 = fmul fast float %2170, %2166
  %2172 = fmul fast float %2170, %2167
  %2173 = fmul fast float %2170, %2168
  %2174 = fcmp fast ogt float %2126, 0x3FEFFF2E40000000
  %2175 = fsub fast float 1.000000e+00, %2157
  %2176 = fsub fast float 1.000000e+00, %2126
  %2177 = fdiv fast float %2175, %2176
  %2178 = call float @dx.op.unary.f32(i32 7, float %2177)  ; Saturate(value)
  %2179 = select i1 %2174, float 0.000000e+00, float %2178
  %2180 = fmul fast float %2171, %2179
  %2181 = fmul fast float %2172, %2179
  %2182 = fmul fast float %2173, %2179
  br label %2183

; <label>:2183                                    ; preds = %2164, %2155
  %2184 = phi float [ 0.000000e+00, %2155 ], [ %2180, %2164 ]
  %2185 = phi float [ 0.000000e+00, %2155 ], [ %2181, %2164 ]
  %2186 = phi float [ 0.000000e+00, %2155 ], [ %2182, %2164 ]
  %2187 = fmul fast float %2184, %781
  %2188 = fmul fast float %2185, %781
  %2189 = fmul fast float %2186, %781
  %2190 = fmul fast float %2157, %1818
  %2191 = call float @dx.op.dot3.f32(i32 55, float %2157, float %2157, float %2157, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2192 = call float @dx.op.dot3.f32(i32 55, float %2187, float %2188, float %2189, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2193 = select i1 %108, float %2191, float %2157
  %2194 = select i1 %108, float 1.000000e+00, float %2157
  %2195 = select i1 %108, float %2192, float %2187
  %2196 = select i1 %108, float 0.000000e+00, float %2188
  %2197 = select i1 %108, float 0.000000e+00, float %2189
  %2198 = fmul fast float %2193, %1830
  %2199 = fmul fast float %2193, %1831
  %2200 = fmul fast float %2194, %1832
  %2201 = fadd fast float %2198, %2195
  %2202 = fadd fast float %2199, %2196
  %2203 = fadd fast float %2197, %2200
  %2204 = fmul fast float %2193, %1833
  %2205 = fmul fast float %2193, %1834
  %2206 = fmul fast float %2194, %1835
  br label %2207

; <label>:2207                                    ; preds = %2183, %1839, %1808, %1040
  %2208 = phi float [ %1045, %1040 ], [ %1830, %1808 ], [ %2201, %2183 ], [ %1830, %1839 ]
  %2209 = phi float [ %1046, %1040 ], [ %1831, %1808 ], [ %2202, %2183 ], [ %1831, %1839 ]
  %2210 = phi float [ %1047, %1040 ], [ %1832, %1808 ], [ %2203, %2183 ], [ %1832, %1839 ]
  %2211 = phi float [ %1048, %1040 ], [ %1833, %1808 ], [ %2204, %2183 ], [ %1833, %1839 ]
  %2212 = phi float [ %1049, %1040 ], [ %1834, %1808 ], [ %2205, %2183 ], [ %1834, %1839 ]
  %2213 = phi float [ %1050, %1040 ], [ %1835, %1808 ], [ %2206, %2183 ], [ %1835, %1839 ]
  %2214 = phi float [ %1051, %1040 ], [ %1818, %1808 ], [ %2190, %2183 ], [ %1818, %1839 ]
  %2215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %2216 = extractvalue %dx.types.CBufRet.f32 %2215, 2
  %2217 = extractvalue %dx.types.CBufRet.f32 %2215, 3
  %2218 = fmul fast float %2216, %50
  %2219 = fmul fast float %2217, %51
  %2220 = call float @dx.op.unary.f32(i32 7, float %2218)  ; Saturate(value)
  %2221 = call float @dx.op.unary.f32(i32 7, float %2219)  ; Saturate(value)
  %2222 = select i1 %760, i32 2, i32 0
  %2223 = or i32 %2222, 1
  %2224 = uitofp i32 %2223 to float
  %2225 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %2220, float %2221, float %2224, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2226 = extractvalue %dx.types.ResRet.f32 %2225, 0
  %2227 = extractvalue %dx.types.ResRet.f32 %2225, 1
  %2228 = extractvalue %dx.types.ResRet.f32 %2225, 2
  %2229 = extractvalue %dx.types.ResRet.f32 %2225, 3
  %2230 = add nuw nsw i32 %2222, 2
  %2231 = uitofp i32 %2230 to float
  %2232 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %2220, float %2221, float %2231, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2233 = extractvalue %dx.types.ResRet.f32 %2232, 0
  %2234 = extractvalue %dx.types.ResRet.f32 %2232, 1
  %2235 = extractvalue %dx.types.ResRet.f32 %2232, 2
  %2236 = extractvalue %dx.types.ResRet.f32 %2232, 3
  %2237 = call float @dx.op.binary.f32(i32 35, float %2227, float %2228)  ; FMax(a,b)
  %2238 = call float @dx.op.binary.f32(i32 35, float %2226, float %2237)  ; FMax(a,b)
  %2239 = call float @dx.op.binary.f32(i32 35, float %2238, float %2229)  ; FMax(a,b)
  %2240 = call float @dx.op.binary.f32(i32 36, float %2234, float %2235)  ; FMin(a,b)
  %2241 = call float @dx.op.binary.f32(i32 36, float %2233, float %2240)  ; FMin(a,b)
  %2242 = call float @dx.op.binary.f32(i32 36, float %2241, float %2236)  ; FMin(a,b)
  %2243 = fmul fast float %2239, 2.550000e+02
  %2244 = fadd fast float %2243, 0x3F70101020000000
  %2245 = fptoui float %2244 to i32
  %2246 = fmul fast float %2242, 2.550000e+02
  %2247 = fadd fast float %2246, 0x3F70101020000000
  %2248 = fptoui float %2247 to i32
  %2249 = icmp ult i32 %2245, %2248
  br i1 %2249, label %2250, label %2302

; <label>:2250                                    ; preds = %2207
  %2251 = fcmp fast ogt float %42, 9.843750e-01
  %2252 = fadd fast float %1044, -4.000000e+00
  %2253 = select i1 %2251, float -4.000000e+00, float %2252
  %2254 = call float @dx.op.binary.f32(i32 35, float %2253, float 0.000000e+00)  ; FMax(a,b)
  %2255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %2256 = extractvalue %dx.types.CBufRet.f32 %2255, 0
  %2257 = fadd fast float %2256, %2254
  %2258 = extractvalue %dx.types.CBufRet.f32 %2255, 2
  %2259 = fmul fast float %2257, %2258
  %2260 = call float @dx.op.unary.f32(i32 23, float %2259)  ; Log(value)
  %2261 = extractvalue %dx.types.CBufRet.f32 %2255, 3
  %2262 = fmul fast float %2261, %2260
  %2263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2264 = extractvalue %dx.types.CBufRet.f32 %2263, 2
  %2265 = fmul fast float %2262, %2264
  %2266 = call float @dx.op.unary.f32(i32 7, float %2265)  ; Saturate(value)
  %2267 = uitofp i32 %2245 to float
  %2268 = uitofp i32 %2248 to float
  %2269 = fadd fast float %2267, 5.000000e-01
  %2270 = fadd fast float %2268, 5.000000e-01
  %2271 = fmul fast float %2264, %2269
  %2272 = fmul fast float %2264, %2270
  %2273 = fadd fast float %2271, 0x3F0FFB4800000000
  %2274 = fadd fast float %2272, 0xBF0FFB4800000000
  %2275 = call float @dx.op.binary.f32(i32 35, float %2266, float %2273)  ; FMax(a,b)
  %2276 = call float @dx.op.binary.f32(i32 36, float %2275, float %2274)  ; FMin(a,b)
  %2277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %2278 = extractvalue %dx.types.CBufRet.f32 %2277, 1
  %2279 = extractvalue %dx.types.CBufRet.f32 %2277, 2
  %2280 = extractvalue %dx.types.CBufRet.f32 %2277, 0
  %2281 = select i1 %760, float %2280, float 0.000000e+00
  %2282 = fmul fast float %2278, %2276
  %2283 = fadd fast float %2281, %2282
  %2284 = fadd fast float %2281, %2279
  %2285 = fsub fast float %2278, %2279
  %2286 = fadd fast float %2285, %2281
  %2287 = call float @dx.op.binary.f32(i32 35, float %2283, float %2284)  ; FMax(a,b)
  %2288 = call float @dx.op.binary.f32(i32 36, float %2287, float %2286)  ; FMin(a,b)
  %2289 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %17, float %2220, float %2221, float %2288, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2290 = extractvalue %dx.types.ResRet.f32 %2289, 0
  %2291 = extractvalue %dx.types.ResRet.f32 %2289, 1
  %2292 = extractvalue %dx.types.ResRet.f32 %2289, 2
  %2293 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %2220, float %2221, float %2288, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2294 = extractvalue %dx.types.ResRet.f32 %2293, 0
  %2295 = extractvalue %dx.types.ResRet.f32 %2293, 1
  %2296 = extractvalue %dx.types.ResRet.f32 %2293, 2
  %2297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2298 = extractvalue %dx.types.CBufRet.f32 %2297, 1
  %2299 = fmul fast float %2298, %2294
  %2300 = fmul fast float %2298, %2295
  %2301 = fmul fast float %2298, %2296
  br label %2302

; <label>:2302                                    ; preds = %2250, %2207
  %2303 = phi float [ %2290, %2250 ], [ 1.000000e+00, %2207 ]
  %2304 = phi float [ %2291, %2250 ], [ 1.000000e+00, %2207 ]
  %2305 = phi float [ %2292, %2250 ], [ 1.000000e+00, %2207 ]
  %2306 = phi float [ %2299, %2250 ], [ 0.000000e+00, %2207 ]
  %2307 = phi float [ %2300, %2250 ], [ 0.000000e+00, %2207 ]
  %2308 = phi float [ %2301, %2250 ], [ 0.000000e+00, %2207 ]
  %2309 = fmul fast float %2306, %781
  %2310 = fmul fast float %2307, %781
  %2311 = fmul fast float %2308, %781
  %2312 = fmul fast float %2303, %2214
  %2313 = call float @dx.op.dot3.f32(i32 55, float %2303, float %2304, float %2305, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2314 = call float @dx.op.dot3.f32(i32 55, float %2309, float %2310, float %2311, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2315 = select i1 %108, float %2313, float %2303
  %2316 = select i1 %108, float %2313, float %2304
  %2317 = select i1 %108, float 1.000000e+00, float %2305
  %2318 = select i1 %108, float %2314, float %2309
  %2319 = select i1 %108, float 0.000000e+00, float %2310
  %2320 = select i1 %108, float 0.000000e+00, float %2311
  %2321 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2322 = extractvalue %dx.types.CBufRet.i32 %2321, 3
  %2323 = and i32 %2322, 3
  %2324 = icmp ne i32 %2323, 0
  %2325 = and i32 %2322, 4
  %2326 = icmp ne i32 %2325, 0
  %2327 = and i1 %2324, %2326
  %2328 = and i1 %108, %2327
  br i1 %2328, label %2329, label %2335

; <label>:2329                                    ; preds = %2302
  %2330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %2331 = extractvalue %dx.types.CBufRet.f32 %2330, 1
  %2332 = fadd fast float %2312, -1.000000e+00
  %2333 = fmul fast float %2331, %2332
  %2334 = fadd fast float %2333, 1.000000e+00
  br label %2335

; <label>:2335                                    ; preds = %2329, %2302
  %2336 = phi float [ %2334, %2329 ], [ %2312, %2302 ]
  %2337 = fadd fast float %2211, %2208
  %2338 = fmul fast float %2315, %2337
  %2339 = fadd fast float %2338, %2318
  %2340 = fadd fast float %2212, %2209
  %2341 = fmul fast float %2316, %2340
  %2342 = fadd fast float %2341, %2319
  %2343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2344 = extractvalue %dx.types.CBufRet.f32 %2343, 0
  br i1 %108, label %2345, label %2366

; <label>:2345                                    ; preds = %2335
  %2346 = fadd fast float %2339, %2342
  %2347 = fmul fast float %2344, %2346
  %2348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %2349 = extractvalue %dx.types.CBufRet.f32 %2348, 3
  %2350 = extractvalue %dx.types.CBufRet.f32 %785, 1
  %2351 = fsub fast float %788, %2350
  %2352 = extractvalue %dx.types.CBufRet.f32 %785, 2
  %2353 = fmul fast float %2351, %2352
  %2354 = call float @dx.op.unary.f32(i32 7, float %2353)  ; Saturate(value)
  %2355 = fsub fast float %2354, %2349
  %2356 = fmul fast float %2355, %2336
  %2357 = fadd fast float %2356, %2349
  %2358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %2359 = extractvalue %dx.types.CBufRet.f32 %2358, 0
  %2360 = fsub fast float %2357, %2359
  %2361 = fmul fast float %2360, 1.000000e+01
  %2362 = call float @dx.op.unary.f32(i32 7, float %2361)  ; Saturate(value)
  %2363 = fmul fast float %2362, %781
  %2364 = fsub fast float %781, %2363
  %2365 = fmul fast float %2364, %2357
  br label %2378

; <label>:2366                                    ; preds = %2335
  %2367 = fadd fast float %2213, %2210
  %2368 = fmul fast float %2317, %2367
  %2369 = fadd fast float %2368, %2320
  %2370 = fmul fast float %2344, %2339
  %2371 = fmul fast float %2344, %2342
  %2372 = fmul fast float %2344, %2369
  %2373 = call float @dx.op.binary.f32(i32 35, float %2371, float %2372)  ; FMax(a,b)
  %2374 = call float @dx.op.binary.f32(i32 35, float %2370, float %2373)  ; FMax(a,b)
  %2375 = call float @dx.op.binary.f32(i32 35, float %2374, float %781)  ; FMax(a,b)
  %2376 = fcmp fast ugt float %2375, 0x3F10000000000000
  br i1 %2376, label %2378, label %2377

; <label>:2377                                    ; preds = %2366
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %2378

; <label>:2378                                    ; preds = %2377, %2366, %2345
  %2379 = phi float [ %2347, %2345 ], [ %2370, %2377 ], [ %2370, %2366 ]
  %2380 = phi float [ %2365, %2345 ], [ %2371, %2377 ], [ %2371, %2366 ]
  %2381 = phi float [ %2364, %2345 ], [ %2372, %2377 ], [ %2372, %2366 ]
  %2382 = phi float [ %2364, %2345 ], [ %781, %2377 ], [ %781, %2366 ]
  %2383 = fadd fast float %544, 0x3FE3C6EF40000000
  %2384 = call float @dx.op.unary.f32(i32 22, float %2383)  ; Frc(value)
  %2385 = call float @dx.op.unary.f32(i32 23, float %2379)  ; Log(value)
  %2386 = fadd fast float %2385, -7.000000e+00
  %2387 = call float @dx.op.unary.f32(i32 21, float %2386)  ; Exp(value)
  %2388 = fmul fast float %2384, 2.000000e+00
  %2389 = fadd fast float %2388, -1.000000e+00
  %2390 = fmul fast float %2387, %2389
  %2391 = fcmp fast ogt float %2379, 0.000000e+00
  %2392 = select i1 %2391, float %2390, float 0.000000e+00
  %2393 = fadd fast float %2392, %2379
  %2394 = fadd fast float %544, 0x3FF3C6EF40000000
  %2395 = call float @dx.op.unary.f32(i32 22, float %2394)  ; Frc(value)
  %2396 = call float @dx.op.unary.f32(i32 23, float %2380)  ; Log(value)
  %2397 = fadd fast float %2396, -7.000000e+00
  %2398 = call float @dx.op.unary.f32(i32 21, float %2397)  ; Exp(value)
  %2399 = fmul fast float %2395, 2.000000e+00
  %2400 = fadd fast float %2399, -1.000000e+00
  %2401 = fmul fast float %2398, %2400
  %2402 = fcmp fast ogt float %2380, 0.000000e+00
  %2403 = select i1 %2402, float %2401, float 0.000000e+00
  %2404 = fadd fast float %2403, %2380
  %2405 = fadd fast float %544, 0x3FFDAA66E0000000
  %2406 = call float @dx.op.unary.f32(i32 22, float %2405)  ; Frc(value)
  %2407 = call float @dx.op.unary.f32(i32 23, float %2381)  ; Log(value)
  %2408 = fadd fast float %2407, -6.000000e+00
  %2409 = call float @dx.op.unary.f32(i32 21, float %2408)  ; Exp(value)
  %2410 = fmul fast float %2406, 2.000000e+00
  %2411 = fadd fast float %2410, -1.000000e+00
  %2412 = fmul fast float %2409, %2411
  %2413 = fcmp fast ogt float %2381, 0.000000e+00
  %2414 = select i1 %2413, float %2412, float 0.000000e+00
  %2415 = fadd fast float %2414, %2381
  %2416 = select i1 %108, float %2380, float %2404
  %2417 = select i1 %108, float %2381, float %2415
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %2418 = call float @dx.op.binary.f32(i32 36, float %2393, float 3.225500e+04)  ; FMin(a,b)
  %2419 = call float @dx.op.binary.f32(i32 36, float %2416, float 3.225500e+04)  ; FMin(a,b)
  %2420 = call float @dx.op.binary.f32(i32 36, float %2417, float 3.225500e+04)  ; FMin(a,b)
  %2421 = call float @dx.op.binary.f32(i32 36, float %2382, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %2418)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %2419)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %2420)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %2421)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %2382)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %2382)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %2382)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %2382)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

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
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !19, !20, !22, !23, !24, !25}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!14 = !{i32 7, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !15}
!15 = !{i32 0, i32 5}
!16 = !{i32 8, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!17 = !{i32 9, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!18 = !{i32 10, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!19 = !{i32 11, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!20 = !{i32 12, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !21}
!21 = !{i32 0, i32 14}
!22 = !{i32 13, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!23 = !{i32 14, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!24 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!25 = !{i32 16, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 46, i32 1, i32 4, i32 0, !7}
!26 = !{!27, !28}
!27 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!28 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!29 = !{!30, !31, !32, !33}
!30 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!31 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!32 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!33 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!34 = !{[30 x i32] [i32 28, i32 8, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 254, i32 255, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255, i32 255, i32 7, i32 1, i32 3, i32 4, i32 0, i32 3, i32 3, i32 7, i32 7, i32 255, i32 0, i32 0, i32 0]}
!35 = !{void ()* @ps_main, !"ps_main", !36, !4, !60}
!36 = !{!37, !56, null}
!37 = !{!38, !41, !42, !44, !46, !49, !51, !53, !55}
!38 = !{i32 0, !"SV_Position", i8 9, i8 3, !39, i8 4, i32 1, i8 4, i32 0, i8 0, !40}
!39 = !{i32 0}
!40 = !{i32 3, i32 15}
!41 = !{i32 1, !"COLOR", i8 9, i8 0, !39, i8 2, i32 1, i8 4, i32 1, i8 0, !40}
!42 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !39, i8 2, i32 1, i8 2, i32 2, i8 0, !43}
!43 = !{i32 3, i32 3}
!44 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !45, i8 2, i32 1, i8 4, i32 3, i8 0, !40}
!45 = !{i32 3}
!46 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !47, i8 2, i32 1, i8 3, i32 4, i8 0, !48}
!47 = !{i32 5}
!48 = !{i32 3, i32 7}
!49 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !50, i8 2, i32 1, i8 4, i32 5, i8 0, !40}
!50 = !{i32 8}
!51 = !{i32 6, !"COLOR", i8 5, i8 0, !45, i8 1, i32 1, i8 3, i32 6, i8 0, !52}
!52 = !{i32 3, i32 1}
!53 = !{i32 7, !"COLOR", i8 5, i8 0, !54, i8 1, i32 1, i8 1, i32 6, i8 3, null}
!54 = !{i32 4}
!55 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !39, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!56 = !{!57, !58}
!57 = !{i32 0, !"SV_Target", i8 9, i8 16, !39, i8 0, i32 1, i8 4, i32 0, i8 0, !40}
!58 = !{i32 1, !"SV_Target", i8 9, i8 16, !59, i8 0, i32 1, i8 4, i32 1, i8 0, !40}
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
!71 = !{!72, !72, i64 0}
!72 = !{!"float", !73, i64 0}
!73 = !{!"omnipotent char", !74, i64 0}
!74 = !{!"Simple C/C++ TBAA"}
!75 = !{!76, !78, !80, !81, !83, !84, !85, !87, !88, !89}
!76 = distinct !{!76, !77, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!77 = distinct !{!77, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!78 = distinct !{!78, !79, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!79 = distinct !{!79, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!80 = distinct !{!80, !79, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!81 = distinct !{!81, !82, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!82 = distinct !{!82, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!83 = distinct !{!83, !82, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!84 = distinct !{!84, !82, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!85 = distinct !{!85, !86, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!86 = distinct !{!86, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!87 = distinct !{!87, !86, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!88 = distinct !{!88, !86, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!89 = distinct !{!89, !90, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!90 = distinct !{!90, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!91 = !{!92}
!92 = distinct !{!92, !93, !"\01?sort@@YAXAIAM00@Z: %c"}
!93 = distinct !{!93, !"\01?sort@@YAXAIAM00@Z"}
!94 = !{!95, !96, !76, !78, !80, !81, !83, !84, !85, !87, !88, !89}
!95 = distinct !{!95, !93, !"\01?sort@@YAXAIAM00@Z: %a"}
!96 = distinct !{!96, !93, !"\01?sort@@YAXAIAM00@Z: %b"}
!97 = !{!96}
!98 = !{!95, !92, !76, !78, !80, !81, !83, !84, !85, !87, !88, !89}
!99 = !{!95}
!100 = !{!96, !92, !76, !78, !80, !81, !83, !84, !85, !87, !88, !89}
!101 = !{!102}
!102 = distinct !{!102, !103, !"\01?sort@@YAXAIAM00@Z: %c"}
!103 = distinct !{!103, !"\01?sort@@YAXAIAM00@Z"}
!104 = !{!105, !106, !76, !78, !80, !81, !83, !84, !85, !87, !88, !89}
!105 = distinct !{!105, !103, !"\01?sort@@YAXAIAM00@Z: %a"}
!106 = distinct !{!106, !103, !"\01?sort@@YAXAIAM00@Z: %b"}
!107 = !{!106}
!108 = !{!105, !102, !76, !78, !80, !81, !83, !84, !85, !87, !88, !89}
!109 = !{!105}
!110 = !{!106, !102, !76, !78, !80, !81, !83, !84, !85, !87, !88, !89}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 1}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 2}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 1}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 1}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 1}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 1}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 1}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 1}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 1}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 1}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 1}

